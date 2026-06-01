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

    [Header("Componentes Visuales y Sonoros (Hijos)")]
    [SerializeField] private Light torchLight;
    [SerializeField] private AudioSource torchAudio;

    // Arreglo dinámico para controlar de golpe las 9 partículas hijas (Flames, Smoke, Ashes, etc.)
    private ParticleSystem[] allFireParticles;
    private bool isLit = false;

    void Start()
    {
        currentFuel = maxFuel;
        
        // Buscamos automáticamente todas las partículas en los objetos hijos
        allFireParticles = GetComponentsInChildren<ParticleSystem>(true);
        
        // Si no arrastraste el AudioSource, el script intentará buscarlo solo en los hijos
        if (torchAudio == null)
        {
            torchAudio = GetComponentInChildren<AudioSource>();
        }

        // Iniciamos encendidos
        EncenderAntorcha();
    }

    void Update()
    {
        // Control manual con F
        if (Input.GetKeyDown(toggleKey))
        {
            ToggleTorch();
        }

        // Consumo de combustible en tiempo real
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

    private void ConsumirCombustible()
    {
        if (currentFuel > 0)
        {
            currentFuel -= Time.deltaTime;

            // La intensidad de la luz disminuye de acuerdo al combustible restante
            if (torchLight != null)
            {
                torchLight.intensity = Mathf.Lerp(0f, 2f, currentFuel / maxFuel);
            }
        }
        else
        {
            currentFuel = 0;
            ApagarAntorcha(); // Aquí el contador apagará TODO automáticamente
        }
    }

    public void EncenderAntorcha()
    {
        if (currentFuel > 0)
        {
            isLit = true;
            
            // Encendemos CADA UNO de los 9 sistemas de partículas hijos
            if (allFireParticles != null)
            {
                foreach (ParticleSystem ps in allFireParticles)
                {
                    if (ps != null) ps.Play(true);
                }
            }
                
            if (torchLight != null) 
                torchLight.enabled = true;

            if (torchAudio != null && !torchAudio.isPlaying)
                torchAudio.Play();
                
            Debug.Log("Antorcha Encendida - Todos los sistemas activos");
        }
    }

    public void ApagarAntorcha()
    {
        isLit = false;

        // Forzamos el apagado inmediato y limpiamos los residuos de CADA partícula hija
        if (allFireParticles != null)
        {
            foreach (ParticleSystem ps in allFireParticles)
            {
                if (ps != null)
                {
                    // StopEmittingAndClear elimina las partículas viejas flotando al instante
                    ps.Stop(true, ParticleSystemStopBehavior.StopEmittingAndClear);
                }
            }
        }

        if (torchLight != null) 
            torchLight.enabled = false;

        // Detenemos el sonido por completo
        if (torchAudio != null && torchAudio.isPlaying)
            torchAudio.Stop();

        Debug.Log("Antorcha Apagada - Silenciada y limpia");
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