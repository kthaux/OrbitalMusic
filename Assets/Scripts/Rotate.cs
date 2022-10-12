using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Rotate : MonoBehaviour
{

    public Transform target;
    //public float speed;
    //public float distance;

    //public float mult;
    public float minDist = 0.5f;
    public float maxDist = 10.0f;
    public float minRot = 0.05f;
    public float maxRot = 1.5f;


    // Update is called once per frame
    void Update()
    {
        //speed of rotation
        float distance = Vector3.Distance(gameObject.transform.position, target.transform.position);
        
        float mult = 1.0f - ((Mathf.Clamp(Mathf.Abs(distance), minDist, maxDist) - minDist) / (maxDist - minDist));
        mult *= mult;
        // mult = 1.0f / (Mathf.Clamp(Mathf.Abs(distance), 0.01f, 10f) / 10.0f);

        float speed = (minRot + ((maxRot - minRot) * mult)) * 360.0f;
        //the rotation
        transform.RotateAround(target.transform.position, target.transform.up, speed*Time.deltaTime);
    }
}
