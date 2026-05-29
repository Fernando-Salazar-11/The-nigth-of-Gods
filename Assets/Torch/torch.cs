using UnityEngine;

public class SimpleTorch : MonoBehaviour
{
    [Header("Configuración de Combustible")]
    [Tooltip("Duración máxima de la antorcha en segundos (3 minutos = 180s)")]
    [SerializeField] private float maxFuel = 180f; 
    [SerializeField] private float currentFuel;

    [Header("Controles")]
    [Tooltip("Tecla para encender/apagar la antorcha")]
    [SerializeField] private KeyCode toggleKey = KeyCode.F;

    [Header("Componentes Visuales (Hijos)")]
    [SerializeField] private ParticleSystem fireParticles;
    [SerializeField] private Light torchLight;

    private bool isLit = false;

    void Start()
    {
        // Inicializamos la antorcha completamente llena al empezar
        currentFuel = maxFuel;
        
        // Por defecto empezamos con la antorcha encendida al caer la noche
        EncenderAntorcha();
    }

    void Update()
    {
        // Detecta si el jugador presiona la tecla F
        if (Input.GetKeyDown(toggleKey))
        {
            ToggleTorch();
        }

        // Si está encendida, consume combustible con el tiempo
        if (isLit)
        {
            ConsumirCombustible();
        }
    }

    private void ToggleTorch()
    {
        if (isLit)
        {
            ApagarAntorcha();
        }
        else
        {
            // Solo permite encenderla si le queda resina/combustible
            if (currentFuel > 0)
            {
                EncenderAntorcha();
            }
            else
            {
                Debug.Log("No puedes encender la antorcha, te quedaste sin resina.");
            }
        }
    }

    public void EncenderAntorcha()
    {
        if (currentFuel > 0)
        {
            isLit = true;
            
            if (fireParticles != null && !fireParticles.isPlaying) 
                fireParticles.Play();
                
            if (torchLight != null) 
                torchLight.enabled = true;
                
            Debug.Log("Antorcha Encendida");
        }
    }

    public void ApagarAntorcha()
    {
        isLit = false;

        if (fireParticles != null && fireParticles.isPlaying) 
            fireParticles.Stop();

        if (torchLight != null) 
            torchLight.enabled = false;

        Debug.Log("Antorcha Apagada");
    }

    private void ConsumirCombustible()
    {
        if (currentFuel > 0)
        {
            currentFuel -= Time.deltaTime;

            // Opcional: Hacer que la intensidad de la luz disminuya levemente si queda poca resina
            if (torchLight != null)
            {
                torchLight.intensity = Mathf.Lerp(0f, 2f, currentFuel / maxFuel);
            }
        }
        else
        {
            ApagarAntorcha();
        }
    }

    public void RellenarCombustible()
    {
        currentFuel = maxFuel;
        if (!isLit)
        {
            EncenderAntorcha();
        }
        Debug.Log("Antorcha rellenada al 100% con resina.");
    }

    public bool IsLit()
    {
        return isLit;
    }

    public float GetFuelPercentage()
    {
        return currentFuel / maxFuel;
    }
}