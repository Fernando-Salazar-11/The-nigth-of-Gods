using UnityEngine;
using UnityEngine.AI;

public class AztecWarriorAI : MonoBehaviour
{
    public NavMeshAgent agent;

    public Transform[] patrolPoints;

    public Transform player;

    public SimpleTorch torch;

   [SerializeField] public float visionRange = 100f;

    public float attackRange = 2f;

    int currentPoint;

    bool chasingPlayer;

    void Start()
    {
        agent = GetComponent<NavMeshAgent>();

        agent.SetDestination(
            patrolPoints[currentPoint].position
        );
    }

    void Update()
    {
        DetectPlayer();

        if(chasingPlayer)
        {
            agent.SetDestination(player.position);

            float dist = Vector3.Distance(
                transform.position,
                player.position
            );

            if(dist < attackRange){
                Debug.Log("Jugador atrapado");
            }
        }
        else
        {
            Patrol();
        }
    }

    void Patrol()
    {
        float dist = Vector3.Distance(
            transform.position,
            patrolPoints[currentPoint].position
        );

        if(dist < 2f)
        {
            currentPoint++;

            if(currentPoint >= patrolPoints.Length)
            {
                currentPoint = 0;
            }

            agent.SetDestination(
                patrolPoints[currentPoint].position
            );
        }
    }

    void DetectPlayer()
    {
        float currentVision = visionRange;

        if(torch != null && torch.IsLit())
        {
            currentVision *= 3f;
        }

        float dist = Vector3.Distance(
            transform.position,
            player.position
        );

        if(dist < currentVision)
        {
            chasingPlayer = true;
        }
        else
        {
            chasingPlayer = false;
        }
    }
}