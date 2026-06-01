using UnityEngine;

public class Escondite : MonoBehaviour
{
    [Header("Configuración")]
    [SerializeField] private KeyCode hideKey = KeyCode.E;
    [SerializeField] private GameObject uiPrompt; 

    [Tooltip("Opcional: Arrastra un Empty GameObject aquí si el centro del arbusto no coincide con el suelo.")]
    [SerializeField] private Transform customCenterPoint;

    private bool playerInside = false;
    private GameObject playerObject;
    private ControlEspanol playerController; // Referencia directa a tu script
    private bool isPlayerHiddenHere = false;

    private void Start()
    {
        if (uiPrompt != null) uiPrompt.SetActive(false);
    }

    private void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Player"))
        {
            playerObject = other.gameObject;
            // Buscamos tu script de control en el jugador
            playerController = other.GetComponent<ControlEspanol>();
            
            if (playerController != null)
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
            if (isPlayerHiddenHere)
            {
                SalirDeEscondite();
            }
            playerInside = false;
            if (uiPrompt != null) uiPrompt.SetActive(false);
        }
    }

    private void Update()
    {
        if (playerInside && Input.GetKeyDown(hideKey))
        {
            if (!isPlayerHiddenHere)
            {
                EntrarEnEscondite();
            }
            else
            {
                SalirDeEscondite();
            }
        }
    }

    private void EntrarEnEscondite()
    {
        isPlayerHiddenHere = true;
        if (uiPrompt != null) uiPrompt.SetActive(false);
        
        // 1. Cambiamos la variable interna de tu script a TRUE
        playerController.setEscondido(true);

        // 2. Centramos al jugador en el arbusto (manteniendo su altura Y actual)
        Vector3 targetPosition = customCenterPoint != null ? customCenterPoint.position : transform.position;
        playerObject.transform.position = new Vector3(targetPosition.x, playerObject.transform.position.y, targetPosition.z);

        Debug.Log("El español se ocultó. WASD bloqueado. Cámara libre.");
    }

    private void SalirDeEscondite()
    {
        isPlayerHiddenHere = false;
        
        // 3. Devolvemos el control al jugador cambiando la variable a FALSE
        playerController.setEscondido(false);

        Debug.Log("El español salió del arbusto. WASD reactivado.");
    }
}