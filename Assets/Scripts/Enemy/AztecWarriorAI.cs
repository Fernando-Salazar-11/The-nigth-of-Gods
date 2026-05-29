using UnityEngine;
using UnityEngine.AI;

public class AztecWarriorAI : MonoBehaviour
{
    public NavMeshAgent agent;

    void Start()
    {
        agent = GetComponent<NavMeshAgent>();
    }

    void Update()
    {
        agent.SetDestination(new Vector3(0, 0, 0));
    }
}