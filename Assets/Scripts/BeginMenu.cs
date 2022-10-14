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
    }

    // Update is called once per frame
    void Update()
    {
        if (Input.GetKeyDown(KeyCode.Escape) || Input.GetKeyDown(KeyCode.Space))
        {
            if (!Started)
            {
                StartGame();
            }
        }
    }

    public void StartGame()
    {
        beginMenuUI.SetActive(false);
        Started = true;
    }
}
