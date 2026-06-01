using UnityEngine;

public class ResinPickup : MonoBehaviour
{
    [Header("Configuración")]
    [SerializeField] private KeyCode pickupKey = KeyCode.X;
    
    [Header("Componentes Visuales (Arrastrar aquí)")]
    [SerializeField] private GameObject glowVisual; // Tu luz o brillo de la resina
    [SerializeField] private GameObject uiPrompt;   // El objeto Canvas o Msg que se va a encender/apagar

    private bool playerInside = false;
    private SimpleTorch playerTorch;

    private void Start()
    {
        // CORRECCIÓN: Nos aseguramos de que el texto inicie invisible al empezar la partida
        if (uiPrompt != null) 
        {
            uiPrompt.SetActive(false);
        }
    }

    private void OnTriggerEnter(Collider other)
    {
        // Al detectar al jugador, busca su antorcha
        if (other.CompareTag("Player"))
        {
            playerTorch = other.GetComponentInChildren<SimpleTorch>();
            if (playerTorch != null)
            {
                playerInside = true;
                if (uiPrompt != null) uiPrompt.SetActive(true);
            }
        }
    }

    private void OnTriggerExit(Collider other)
    {
        if (other.CompareTag("Player"))
        {
            playerInside = false;
            if (uiPrompt != null) uiPrompt.SetActive(false);
        }
    }

    private void Update()
    {
        // Si el jugador está cerca y presiona X
        if (playerInside && Input.GetKeyDown(pickupKey))
        {
            RecogerResina();
        }
    }

    private void RecogerResina()
    {
        // Rellena la antorcha al 100% usando el script que ya teníamos
        playerTorch.RellenarCombustible();

        if (uiPrompt != null) uiPrompt.SetActive(false);

        // Al destruir "gameObject" (la esfera de la resina), automáticamente
        // se destruye también su Canvas e hijo Msg, limpiando la escena.
        Destroy(gameObject);
    }
}