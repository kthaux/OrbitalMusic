using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlanetRotate : MonoBehaviour
{
    // how long a cycle is, in seconds
    [SerializeField]
    private float CycleTime = 4;

    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        float degreesPerSecond = 360.0f / CycleTime;
        transform.Rotate(0, degreesPerSecond * Time.deltaTime, 0);
    }
}