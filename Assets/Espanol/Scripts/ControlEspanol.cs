using UnityEngine;

public class ControlEspanol : MonoBehaviour
{
    [Header("Movimiento")]
    public CharacterController controller;
    public Animator animator;
    public float velocidadCaminar = 4f;
    public float velocidadCorrer = 7f;
    public float gravedad = -9.81f;
    private Vector3 velocidadVertical;
    private float velocidadActual;

    [Header("Cámara (Primera Persona)")]
    public Transform camaraTransform;
    public float sensibilidadMouse = 350f;
    private float rotacionX = 0f; // Guarda la rotación arriba/abajo


    [Header("Efecto Sprint Cámara")]
    private Vector3 posicionInicialCamara;
    public float desplazamientoSprint = 0.25f;
    public float suavizadoCamara = 8f;

    [Header("Sistema de Estamina")]
    public float estaminaMaxima = 100f;
    public float estaminaActual;
    
    [Tooltip("Tiempo en segundos que tarda en regenerarse por completo estando QUIETO (el doble del sprint)")]
    public float tiempoRegenQuieto = 20f; 
    
    [Tooltip("Tiempo en segundos que tarda en regenerarse por completo estando CAMINANDO (el triple del sprint)")]
    public float tiempoRegenCaminando = 30f;

    private bool puedeCorrer = true;

    [Header("Escondite")]
    [SerializeField] private bool estaEscondido = false;

    void Start()
    {
        if (controller == null)
        {
            controller = GetComponent<CharacterController>();
        }

        if (animator == null)
        {
            animator = GetComponent<Animator>();
        }
        
        // Inicializar la estamina al máximo
        estaminaActual = estaminaMaxima;

        // Bloquear el puntero del mouse en el centro de la pantalla y ocultarlo para que no estorbe al girar
        Cursor.lockState = CursorLockMode.Locked;
        Cursor.visible = false;

        if (camaraTransform != null)
        {
            posicionInicialCamara = camaraTransform.localPosition;
        }
    }

    void Update()
    {
        // La cámara SIEMPRE se va a mover, incluso dentro del arbusto
        ManejarRotacion();

        // El movimiento y gasto de estamina SOLO funcionan si NO está escondido
        if (!estaEscondido)
        {
            ManejarMovimientoYEstamina();
        }
        else
        {
            // Si entra al arbusto, apagamos en seco las animaciones de caminado/sprint
            if (animator != null)
            {
                animator.SetBool("caminando", false);
                animator.SetBool("corriendo", false);
            }
            ManejarCamaraSprint(false);
        }
    }

    void ManejarRotacion()
    {
        // 1. Capturar el movimiento del ratón
        float mouseX = Input.GetAxis("Mouse X") * sensibilidadMouse * Time.deltaTime;
        float mouseY = Input.GetAxis("Mouse Y") * sensibilidadMouse * Time.deltaTime;

        // 2. Rotar el cuerpo entero del personaje de izquierda a derecha (Eje Y)
        transform.Rotate(Vector3.up * mouseX);

        // 3. Calcular la rotación de la mirada de arriba a abajo (Eje X)
        rotacionX -= mouseY;
        
        // Clamping (limitar un valor entre un mínimo y un máximo) para que el jugador no pueda dar una voltereta con la mirada
        rotacionX = Mathf.Clamp(rotacionX, -85f, 85f);

        // 4. Aplicar la rotación solo a la cámara para que el cuerpo no se incline hacia el suelo
        if (camaraTransform != null)
        {
            camaraTransform.localRotation = Quaternion.Euler(rotacionX, 0f, 0f);
        }
    }

    void ManejarCamaraSprint(bool corriendo)
    {
        if (camaraTransform == null) return;

        Vector3 posicionObjetivo = posicionInicialCamara;

        if (corriendo)
        {
            posicionObjetivo += new Vector3(0f, 0f, desplazamientoSprint);
        }

        camaraTransform.localPosition = Vector3.Lerp(
            camaraTransform.localPosition,
            posicionObjetivo,
            suavizadoCamara * Time.deltaTime
        );
    }
    void ManejarMovimientoYEstamina()
    {
        float x = Input.GetAxis("Horizontal");
        float z = Input.GetAxis("Vertical");
        Vector3 mover = transform.right * x + transform.forward * z;

        // Verificar si el jugador se está moviendo intencionalmente (magnitud mayor a cero)
        bool seEstaMoviendo = mover.magnitude > 0.1f;      
        
        // Condición para correr: Presiona Shift, se está moviendo y no está exhausto
        bool intentaCorrer = Input.GetKey(KeyCode.LeftShift) && seEstaMoviendo && puedeCorrer;

        animator.SetBool("caminando", seEstaMoviendo);
        animator.SetBool("corriendo", intentaCorrer);
        ManejarCamaraSprint(intentaCorrer);

        if (intentaCorrer)
        {
            velocidadActual = velocidadCorrer;
            
            // Gasta estamina para que dure exactamente 10 segundos (100 de estamina / 10s = gastar 10 por segundo)
            estaminaActual -= (estaminaMaxima / 10f) * Time.deltaTime;
            
            if (estaminaActual <= 0)
            {
                estaminaActual = 0;
                puedeCorrer = false; // Fatiga total, se ve obligado a caminar
            }
        }
        else
        {
            velocidadActual = velocidadCaminar;

            // Lógica matemática de regeneración basada en tus reglas de diseño:
            if (!seEstaMoviendo)
            {
                // Tarda el doble (20s): Recupera (100 / 20) unidades por segundo
                estaminaActual += (estaminaMaxima / tiempoRegenQuieto) * Time.deltaTime;
            }
            else
            {
                // Tarda el triple (30s): Recupera (100 / 30) unidades por segundo
                estaminaActual += (estaminaMaxima / tiempoRegenCaminando) * Time.deltaTime;
            }

            // Asegurar que la estamina no pase del tope máximo
            estaminaActual = Mathf.Clamp(estaminaActual, 0f, estaminaMaxima);

            // Una regla de comodidad (Quality of Life): No dejarlo correr de inmediato al recuperar 1% 
            // de estamina para evitar el molesto "tartamudeo" de correr/parar si dejas Shift presionado.
            if (estaminaActual >= 15f)
            {
                puedeCorrer = true;
            }
        }

        // Aplicar el desplazamiento horizontal final
        controller.Move(mover * velocidadActual * Time.deltaTime);

        // Gravedad acumulada
        if (controller.isGrounded && velocidadVertical.y < 0)
        {
            velocidadVertical.y = -2f; 
        }
        else
        {
            velocidadVertical.y += gravedad * Time.deltaTime;
        }
        controller.Move(velocidadVertical * Time.deltaTime);
    }

    public bool getEscondido()
    {
        return estaEscondido;
    }

    public void setEscondido(bool estado)
    {
        estaEscondido = estado;
    }
}