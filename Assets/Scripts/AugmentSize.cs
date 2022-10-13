using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AugmentSize : MonoBehaviour
{
    //reference to the position of planet
    public Transform Anchor; 
    //start function
    private float CameraZDistance;
    private Vector3 initialScale;
    private Camera mainCam;

    private bool isMouseDragging;
    public float minSize = 0.2f;
    public float maxSize = 6.0f;

    private Vector3 MouseScreenPosition;
    private Vector3 MouseWorldPosition;

    private void Start(){
        initialScale = transform.localScale;
        mainCam = Camera.main;
        CameraZDistance = mainCam.WorldToScreenPoint(transform.position).z;
    }

    
    
    private void OnMouseOver(){
        if(Input.GetMouseButtonDown(1)){
            GetComponent<Rotate>().enabled = false;
            Debug.Log("right mouse button pressed");

            isMouseDragging = true;
        }
    }
    

    
    // Update is called once per frame
    void Update()
    {
        /*
        if(Input.GetMouseButtonDown(1)){
            //Debug.Log("right click");
            // GetComponent<Rotate>().enabled = false;
            isMouseDragging = true;
            //scaleDistance = Vector3.Distance(initialScale, GetMouseWorldPosition());
        }
        */

        if(Input.GetMouseButtonUp(1)){
            Debug.Log("right click up");
            isMouseDragging = false;
            GetComponent<Rotate>().enabled = true;
        }

        if(isMouseDragging){

            MouseScreenPosition = new Vector3(Input.mousePosition.x, Input.mousePosition.y, CameraZDistance);
            MouseWorldPosition = mainCam.ScreenToWorldPoint(MouseScreenPosition);

            Debug.Log("right click dragging");

            // this is the code for resizing via world coordinates and not just y 
            //float distance = Mathf.Clamp(Vector3.Distance(Anchor.position, MouseWorldPosition), min, max);
            //float distance = Vector3.Distance(Anchor.position, MouseWorldPosition);
            Debug.Log(MouseWorldPosition);

            //the absolute value makes the size augmentable both ways
            //take it off if you want one way resizing
            float sizeScale = Mathf.Clamp(Mathf.Abs(MouseWorldPosition.y), minSize, maxSize);


            //this changes size
            transform.localScale = new Vector3(sizeScale, sizeScale, sizeScale);

        }
    }
}
