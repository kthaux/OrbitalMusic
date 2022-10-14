using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[RequireComponent(typeof(FMODUnity.StudioEventEmitter))]
[RequireComponent(typeof(Rotate))]
[RequireComponent(typeof(AugmentSize))]
public class PlanetSoundController : MonoBehaviour
{
    public enum ParamMappingSource
    {
        None,
        Distance,
        CameraProximity,
        Size
    }

    private FMODUnity.StudioEventEmitter emitter;
    private Rotate rotater;
    private AugmentSize sizer;
    private Renderer renderer;
    private Draggable dragger;
    Color originalColor;
    public bool flashOnTrigger = true;

    private float overrideSampleID = -1;

    public bool isSample = true;
    public bool onlyTriggerInFront = true;

    private Vector3 lastPos;

    public ParamMappingSource pitchMapping = ParamMappingSource.Distance;
    public ParamMappingSource volumeMapping = ParamMappingSource.Size;
    public ParamMappingSource cutoffMapping = ParamMappingSource.None;

    public void PlaySound()
    {
        emitter.Play();
        if (overrideSampleID != -1)
            emitter.EventInstance.setParameterByName("SoundID", overrideSampleID);
        // trigger some sort of flash for the planet visually
        if (flashOnTrigger) Flash();
    }

    public void Pause() { emitter.EventInstance.setPaused(true); }
    public void Unpause() { emitter.EventInstance.setPaused(false); }

    bool IsNegative(float x) { return x != Mathf.Abs(x); }
    bool ShouldTriggerSample()
    {
        Vector3 newPos = gameObject.transform.position;
        Vector3 camPos = Camera.main.transform.position;
        Vector3 camVec = camPos - rotater.target.transform.position;
        Vector3 dotVec = Vector3.Cross(camVec, new Vector3(0f, 1f, 0f));
        float lastDot = Vector3.Dot(dotVec, lastPos);
        float newDot = Vector3.Dot(dotVec, newPos);
        lastPos = newPos;

        if (IsNegative(lastDot) != IsNegative(newDot))
        {
            return (!onlyTriggerInFront) || (Mathf.Abs(Vector3.Distance(newPos, camPos)) < Mathf.Abs(Vector3.Distance(rotater.target.transform.position, camPos)));
        }

        return false;
    }

    // Start is called before the first frame update
    void Start()
    {
        emitter = GetComponent<FMODUnity.StudioEventEmitter>();
        rotater = GetComponent<Rotate>();
        sizer = GetComponent<AugmentSize>();
        dragger = GetComponent<Draggable>();
        lastPos = gameObject.transform.position;

        renderer = GetComponent<Renderer>();
        originalColor = renderer.material.GetColor("_Color");

        AudioManager.instance.planetSounds.Add(this);
    }

    void Flash()
    {
        renderer.material.SetColor("_Color", Color.white);
        StartCoroutine(EndFlash());
    }

    IEnumerator EndFlash()
    {
        yield return new WaitForSeconds(0.25f);
        renderer.material.SetColor("_Color", originalColor);
    }

    // Update is called once per frame
    void Update()
    {
        if (dragger.IsHeld())
        {
            const int nSounds = 18;

            if (Input.GetKeyDown(KeyCode.UpArrow))
            {
                float curID;
                emitter.EventInstance.getParameterByName("SoundID", out curID);
                float newID = 1;
                if (curID >= nSounds)
                    newID = 1;
                else
                    newID = curID + 1;
                overrideSampleID = newID;
                if (emitter.IsPlaying()) emitter.Stop();
                PlaySound();
                if (overrideSampleID > 3)
                    isSample = true;
                else
                    isSample = false;
            }
            if (Input.GetKeyDown(KeyCode.DownArrow))
            {
                float curID;
                emitter.EventInstance.getParameterByName("SoundID", out curID);
                float newID = 1;
                if (curID <= 1)
                    newID = nSounds;
                else
                    newID = curID - 1;
                overrideSampleID = newID;
                if (emitter.IsPlaying()) emitter.Stop();
                PlaySound();
                if (overrideSampleID > 3)
                    isSample = true;
                else
                    isSample = false;
            }
        }

        // calculate values and compute mappings
        float minDist = rotater.minDist;
        float maxDist = rotater.maxDist;
        float minSize = sizer.minSize;
        float maxSize = sizer.maxSize;
        float minCamProx;
        float maxCamProx;
        emitter.EventInstance.getMinMaxDistance(out minCamProx, out maxCamProx);

        // distance
        float distance = Vector3.Distance(gameObject.transform.position, rotater.target.transform.position);
        float distInverted0To1 = 1.0f - ((Mathf.Clamp(Mathf.Abs(distance), minDist, maxDist) - minDist) / (maxDist - minDist));
        float distInverted0To1Exp = distInverted0To1 * distInverted0To1;

        // size
        float size = gameObject.transform.localScale.x;
        float size0To1 = ((size - minSize) / (maxSize - minSize));
        float size0To1Inverted = 1.0f - size0To1;

        // camera proximity
        float camProx = Mathf.Abs(Vector3.Distance(Camera.main.transform.position, gameObject.transform.position));
        float camProx0To1 = ((camProx - minCamProx) / (maxCamProx - minCamProx));
        float camProx0To1Inverted = 1.0f - camProx0To1;


        // pitch
        float pitch = 0f;
        switch (pitchMapping)
        {
            default:
            case ParamMappingSource.None:
                emitter.EventInstance.getParameterByName("Pitch", out pitch);
                break;
            case ParamMappingSource.Distance:
                pitch = (distInverted0To1 - 0.5f) * 2.0f;
                break;
            case ParamMappingSource.Size:
                pitch = size0To1Inverted;
                break;
            case ParamMappingSource.CameraProximity:
                pitch = (camProx0To1Inverted - 0.5f) * 2.0f;
                break;
        }
        emitter.EventInstance.setParameterByName("Pitch", pitch);

        // volume
        float volume = 0f;
        switch (volumeMapping)
        {
            default:
            case ParamMappingSource.None:
                emitter.EventInstance.getParameterByName("Volume", out volume);
                break;
            case ParamMappingSource.Distance:
                volume = distInverted0To1;
                break;
            case ParamMappingSource.Size:
                volume = size0To1;
                break;
            case ParamMappingSource.CameraProximity:
                volume = camProx0To1Inverted;
                break;
        }
        emitter.EventInstance.setParameterByName("Volume", volume);

        // filter cutoff
        float cutoff = 1.0f;
        switch (cutoffMapping)
        {
            default:
            case ParamMappingSource.None:
                emitter.EventInstance.getParameterByName("FilterCutoff", out cutoff);
                break;
            case ParamMappingSource.Distance:
                cutoff = distInverted0To1;
                break;
            case ParamMappingSource.Size:
                cutoff = size0To1;
                break;
            case ParamMappingSource.CameraProximity:
                cutoff = camProx0To1Inverted;
                break;
        }
        emitter.EventInstance.setParameterByName("FilterCutoff", cutoff);

        // play sounds
        if (isSample)
        {
            // play sample based on when the planet crosses you
            if (ShouldTriggerSample())
            {
                //emitter.Play();
                PlaySound();
            }
        }
        else
        {
            // loop sound indefinitely
            if (!emitter.IsPlaying())
            {
                //emitter.Play();
                PlaySound();
            }
        }
    }
}
