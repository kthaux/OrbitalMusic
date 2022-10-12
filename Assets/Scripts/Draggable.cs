using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Draggable : MonoBehaviour
{
    Vector3 mousePosOffset;
    private float mouseZCoordinate;
    private Vector3 pos;

    //utility function to translate mouse postion to world position
    private Vector3 GetMouseWorldPosition(){
      Vector3 mousePoint = Input.mousePosition;
      mousePoint.z = mouseZCoordinate;
      return Camera.main.ScreenToWorldPoint(mousePoint);
    }


    private void OnMouseDown(){
      GetComponent<Rotate>().enabled = false;
        mouseZCoordinate = Camera.main.WorldToScreenPoint(gameObject.transform.position).z;
        //captures mouse offset so player can click on any part of the planet body
        mousePosOffset = gameObject.transform.position - GetMouseWorldPosition();
        
    }


    private void OnMouseDrag(){
      pos = GetMouseWorldPosition() + mousePosOffset;
      pos.y = 0;
      gameObject.transform.position = pos;
    }

    private void OnMouseUp(){
      GetComponent<Rotate>().enabled = true;
    }
}
