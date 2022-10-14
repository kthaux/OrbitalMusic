using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BeginMenu : MonoBehaviour
{
    public static bool Started = false;
    public GameObject beginMenuUI;


    // Start is called before the first frame update
    void Start()
    {
        beginMenuUI.SetActive(true);
        GameStarted();
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    public void GameStarted()
    {
        Started = true;
    }
}
