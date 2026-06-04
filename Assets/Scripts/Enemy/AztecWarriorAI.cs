using UnityEngine;
using UnityEngine.AI;

public class AztecWarriorAI : MonoBehaviour
{
    Vector3 ultimaPosicionJugador;

    bool searching;

    float tiempoBusqueda;

    public float searchDuration = 5f;

    public NavMeshAgent agent;

    public Transform[] patrolPoints;

    public Transform player;

    public SimpleTorch torch;

    public ControlEspanol controlEspanol;

    public float visionRange = 10f;
    public float attackRange = 2f;

    int currentPoint;

    bool chasingPlayer;

    void Start()
    {
        agent = GetComponent<NavMeshAgent>();

        if (patrolPoints.Length > 0)
        {
            bool resultado = agent.SetDestination(
                patrolPoints[currentPoint].position
            );

            Debug.Log("Primer destino: " + patrolPoints[currentPoint].name);
            Debug.Log("Ruta encontrada: " + resultado);
        }
    }

    void Update()
    {

    Debug.Log(
        "CHASE: " + chasingPlayer +
        " SEARCH: " + searching
    );
        DetectPlayer();

        if(chasingPlayer)
    {
        agent.SetDestination(player.position);

        float dist = Vector3.Distance(
            transform.position,
            player.position
        );

        if(dist < attackRange)
        {
            Debug.Log("Jugador atrapado");
        }
    }
    else if(searching)
    {
        SearchPlayer();
    }
    else
    {
        Patrol();
    }
    }

    void Patrol()
{
    if (!agent.pathPending &&
        agent.remainingDistance <= agent.stoppingDistance)
    {
        Debug.Log("Llegó a: " + patrolPoints[currentPoint].name);

        currentPoint++;

        if (currentPoint >= patrolPoints.Length)
        {
            currentPoint = 0;
        }

        Debug.Log("Nuevo objetivo: " + patrolPoints[currentPoint].name);

        bool resultado = agent.SetDestination(
            patrolPoints[currentPoint].position
        );

        Debug.Log("Ruta encontrada: " + resultado);
    }
}

    void SearchPlayer()
{
    agent.SetDestination(
        ultimaPosicionJugador
    );

    tiempoBusqueda -= Time.deltaTime;

    Debug.Log(
        "Buscando jugador: " + tiempoBusqueda
    );


    if(tiempoBusqueda <= 0)
    {
        searching = false;

        chasingPlayer = false;

        agent.SetDestination(
            patrolPoints[currentPoint].position
        );

        Debug.Log(
            "Jugador perdido, regreso a patrulla"
        );

        chasingPlayer = false;
    }
}  

    void DetectPlayer()
{
    if(player == null)
        return;

    float currentVision = visionRange;

    if(torch != null && torch.IsLit())
    {
        currentVision *= 3f;
    }

    if(torch != null)
    {
        Debug.Log("Torch asignada");
    }
    else
    {
        Debug.Log("Torch NO asignada");
    }

    if(controlEspanol != null)
{
    Debug.Log("Escondido: " + controlEspanol.getEscondido());

    if(controlEspanol.getEscondido())
    {
    if(chasingPlayer)
    {
        searching = true;

        tiempoBusqueda = searchDuration;

        Debug.Log("Jugador escondido, iniciando búsqueda");
    }

    chasingPlayer = false;

    return;
    }
}

    float dist = Vector3.Distance(
        transform.position,
        player.position
    );

    Debug.Log("Distancia al jugador: " + dist);
    if(dist <= currentVision)
    {
    Debug.Log("Jugador detectado");

    ultimaPosicionJugador = player.position;

    chasingPlayer = true;

    searching = false;
    }
    else
    {
        chasingPlayer = false;
    }

}
}