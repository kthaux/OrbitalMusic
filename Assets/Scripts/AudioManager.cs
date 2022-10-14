using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AudioManager : MonoBehaviour
{
    public static AudioManager instance = null;

    public List<PlanetSoundController> planetSounds = new List<PlanetSoundController>();

    string masterBusString = "bus:/";

    // Start is called before the first frame update
    void Awake()
    {
        if (instance == null)
        {
            instance = this;
        }
        else if (instance != this)
        {
            Destroy(gameObject);
        }
    }

    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    public void PauseAllPlanets()
    {
        foreach (PlanetSoundController planet in planetSounds)
        {
            planet.Pause();
        }
    }
    public void UnpauseAllPlanets()
    {
        foreach (PlanetSoundController planet in planetSounds)
        {
            planet.Unpause();
        }
    }

    public void SetMasterVolume(float volume)
    {
        SetBusVolume(masterBusString, volume);
    }

    private void SetBusVolume(string busString, float volume)
    {
        FMOD.Studio.Bus bus;
        bus = FMODUnity.RuntimeManager.GetBus(busString);
        bus.setVolume(volume);
    }
}
