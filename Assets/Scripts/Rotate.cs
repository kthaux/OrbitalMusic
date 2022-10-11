using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Rotate : MonoBehaviour
{

    public Transform target;
    public float speed;
    public float distance;



    // Update is called once per frame
    void Update()
    {
        //speed of rotation
        distance = Vector3.Distance(gameObject.transform.position, target.transform.position);
        speed = 100 - (distance*3);
        //the rotation
        transform.RotateAround(target.transform.position, target.transform.up, speed*Time.deltaTime);
    }
}
