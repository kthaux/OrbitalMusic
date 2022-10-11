using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Draggable : MonoBehaviour
{
    Vector3 mousePosOffset;
    private float mouseZCoordinate;

    //utility function to translate mouse postion to world position
    private Vector3 GetMouseWorldPosition(){
      Vector3 mousePoint = Input.mousePosition;
      mousePoint.z = mouseZCoordinate;
      return Camera.main.ScreenToWorldPoint(mousePoint);
    }


    private void OnMouseDown(){
      mouseZCoordinate = Camera.main.WorldToScreenPoint(gameObject.transform.position).z;
      //captures mouse offset so player can click on any part of the planet body
      mousePosOffset = gameObject.transform.position - GetMouseWorldPosition();
      GetComponent<Rotate>().enabled = false;
    }


    private void OnMouseDrag(){
      gameObject.transform.position = GetMouseWorldPosition() + mousePosOffset;
      Debug.Log(gameObject.transform.position);
    }

    private void OnMouseUp(){
      GetComponent<Rotate>().enabled = true;
    }
}
