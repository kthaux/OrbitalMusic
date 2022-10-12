Shader ".poiyomi/V8.0/Pro"
{
	Properties
	{
		[HideInInspector] shader_master_label ("<color=#E75898ff>Poiyomi Pro V8α</color>", Float) = 0
		[HideInInspector] shader_is_using_thry_editor ("", Float) = 0
		[HideInInspector] footer_youtube ("{texture:{name:icon-youtube,height:32},action:{type:URL,data:https://www.youtube.com/poiyomi},hover:YOUTUBE}", Float) = 0
		[HideInInspector] footer_twitter ("{texture:{name:icon-twitter,height:32},action:{type:URL,data:https://twitter.com/poiyomi},hover:TWITTER}", Float) = 0
		[HideInInspector] footer_patreon ("{texture:{name:icon-patreon,height:32},action:{type:URL,data:https://www.patreon.com/poiyomi},hover:PATREON}", Float) = 0
		[HideInInspector] footer_discord ("{texture:{name:icon-discord,height:32},action:{type:URL,data:https://discord.gg/Ays52PY},hover:DISCORD}", Float) = 0
		[HideInInspector] footer_github ("{texture:{name:icon-github,height:32},action:{type:URL,data:https://github.com/poiyomi/PoiyomiToonShader},hover:GITHUB}", Float) = 0
		
		// Keyword to remind users in the VRChat SDK that this material hasn't been locked.  Inelegant but it works.
		[HideInInspector] _ForgotToLockMaterial (";;YOU_FORGOT_TO_LOCK_THIS_MATERIAL;", Int) = 1
		[ThryShaderOptimizerLockButton] _ShaderOptimizerEnabled ("", Int) = 0
		[Helpbox(1)] _LockTooltip ("Animations don't work by default when locked in. Right click a property if you want to animate it. The shader will lock in automatically at upload time.", Int) = 0
		
		[ThryWideEnum(Opaque, 0, Cutout, 1, TransClipping, 9, Fade, 2, Transparent, 3, Additive, 4, Soft Additive, 5, Multiplicative, 6, 2x Multiplicative, 7)]_Mode("Rendering Preset--{on_value_actions:[
		{value:0,actions:[{type:SET_PROPERTY,data:render_queue=2000}, {type:SET_PROPERTY,data:render_type=Opaque},            {type:SET_PROPERTY,data:_BlendOp=0}, {type:SET_PROPERTY,data:_BlendOpAlpha=0}, {type:SET_PROPERTY,data:_Cutoff=0},  {type:SET_PROPERTY,data:_SrcBlend=1}, {type:SET_PROPERTY,data:_DstBlend=0},  {type:SET_PROPERTY,data:_AlphaToMask=0},  {type:SET_PROPERTY,data:_ZWrite=1}, {type:SET_PROPERTY,data:_ZTest=4},   {type:SET_PROPERTY,data:_AlphaPremultiply=0}]},
		{value:1,actions:[{type:SET_PROPERTY,data:render_queue=2450}, {type:SET_PROPERTY,data:render_type=TransparentCutout}, {type:SET_PROPERTY,data:_BlendOp=0}, {type:SET_PROPERTY,data:_BlendOpAlpha=0}, {type:SET_PROPERTY,data:_Cutoff=.5}, {type:SET_PROPERTY,data:_SrcBlend=1}, {type:SET_PROPERTY,data:_DstBlend=0},  {type:SET_PROPERTY,data:_AlphaToMask=1},  {type:SET_PROPERTY,data:_ZWrite=1}, {type:SET_PROPERTY,data:_ZTest=4},   {type:SET_PROPERTY,data:_AlphaPremultiply=0}]},
		{value:9,actions:[{type:SET_PROPERTY,data:render_queue=2450}, {type:SET_PROPERTY,data:render_type=TransparentCutout}, {type:SET_PROPERTY,data:_BlendOp=0}, {type:SET_PROPERTY,data:_BlendOpAlpha=0}, {type:SET_PROPERTY,data:_Cutoff=0},  {type:SET_PROPERTY,data:_SrcBlend=5}, {type:SET_PROPERTY,data:_DstBlend=10}, {type:SET_PROPERTY,data:_AlphaToMask=0},  {type:SET_PROPERTY,data:_ZWrite=1}, {type:SET_PROPERTY,data:_ZTest=4},   {type:SET_PROPERTY,data:_AlphaPremultiply=0}]},
		{value:2,actions:[{type:SET_PROPERTY,data:render_queue=3000}, {type:SET_PROPERTY,data:render_type=Transparent},       {type:SET_PROPERTY,data:_BlendOp=0}, {type:SET_PROPERTY,data:_BlendOpAlpha=0}, {type:SET_PROPERTY,data:_Cutoff=0},  {type:SET_PROPERTY,data:_SrcBlend=5}, {type:SET_PROPERTY,data:_DstBlend=10}, {type:SET_PROPERTY,data:_AlphaToMask=0},  {type:SET_PROPERTY,data:_ZWrite=0}, {type:SET_PROPERTY,data:_ZTest=4},   {type:SET_PROPERTY,data:_AlphaPremultiply=0}]},
		{value:3,actions:[{type:SET_PROPERTY,data:render_queue=3000}, {type:SET_PROPERTY,data:render_type=Transparent},       {type:SET_PROPERTY,data:_BlendOp=0}, {type:SET_PROPERTY,data:_BlendOpAlpha=0}, {type:SET_PROPERTY,data:_Cutoff=0},  {type:SET_PROPERTY,data:_SrcBlend=1}, {type:SET_PROPERTY,data:_DstBlend=10}, {type:SET_PROPERTY,data:_AlphaToMask=0},  {type:SET_PROPERTY,data:_ZWrite=0}, {type:SET_PROPERTY,data:_ZTest=4},   {type:SET_PROPERTY,data:_AlphaPremultiply=1}]},
		{value:4,actions:[{type:SET_PROPERTY,data:render_queue=3000}, {type:SET_PROPERTY,data:render_type=Transparent},       {type:SET_PROPERTY,data:_BlendOp=0}, {type:SET_PROPERTY,data:_BlendOpAlpha=0}, {type:SET_PROPERTY,data:_Cutoff=0},  {type:SET_PROPERTY,data:_SrcBlend=1}, {type:SET_PROPERTY,data:_DstBlend=1},  {type:SET_PROPERTY,data:_AlphaToMask=0},  {type:SET_PROPERTY,data:_ZWrite=0}, {type:SET_PROPERTY,data:_ZTest=4},   {type:SET_PROPERTY,data:_AlphaPremultiply=0}]},
		{value:5,actions:[{type:SET_PROPERTY,data:render_queue=3000}, {type:SET_PROPERTY,data:RenderType=Transparent},        {type:SET_PROPERTY,data:_BlendOp=0}, {type:SET_PROPERTY,data:_BlendOpAlpha=0}, {type:SET_PROPERTY,data:_Cutoff=0},  {type:SET_PROPERTY,data:_SrcBlend=4}, {type:SET_PROPERTY,data:_DstBlend=1},  {type:SET_PROPERTY,data:_AlphaToMask=0},  {type:SET_PROPERTY,data:_ZWrite=0}, {type:SET_PROPERTY,data:_ZTest=4},   {type:SET_PROPERTY,data:_AlphaPremultiply=0}]},
		{value:6,actions:[{type:SET_PROPERTY,data:render_queue=3000}, {type:SET_PROPERTY,data:render_type=Transparent},       {type:SET_PROPERTY,data:_BlendOp=0}, {type:SET_PROPERTY,data:_BlendOpAlpha=0}, {type:SET_PROPERTY,data:_Cutoff=0},  {type:SET_PROPERTY,data:_SrcBlend=2}, {type:SET_PROPERTY,data:_DstBlend=0},  {type:SET_PROPERTY,data:_AlphaToMask=0},  {type:SET_PROPERTY,data:_ZWrite=0}, {type:SET_PROPERTY,data:_ZTest=4},   {type:SET_PROPERTY,data:_AlphaPremultiply=0}]},
		{value:7,actions:[{type:SET_PROPERTY,data:render_queue=3000}, {type:SET_PROPERTY,data:render_type=Transparent},       {type:SET_PROPERTY,data:_BlendOp=0}, {type:SET_PROPERTY,data:_BlendOpAlpha=0}, {type:SET_PROPERTY,data:_Cutoff=0},  {type:SET_PROPERTY,data:_SrcBlend=2}, {type:SET_PROPERTY,data:_DstBlend=3},  {type:SET_PROPERTY,data:_AlphaToMask=0},  {type:SET_PROPERTY,data:_ZWrite=0}, {type:SET_PROPERTY,data:_ZTest=4},   {type:SET_PROPERTY,data:_AlphaPremultiply=0}]}
		}]}]}", Int) = 0
		
		// Main
		[HideInInspector] m_mainCategory ("Color & Normals", Float) = 0
		//Main-main
		_Color ("Color & Alpha--{reference_property:_ColorThemeIndex}", Color) = (1, 1, 1, 1)
		[HideInInspector][ThryWideEnum(Off, 0, Theme Color 0, 1, Theme Color 1, 2, Theme Color 2, 3, Theme Color 3, 4, ColorChord 0, 5, ColorChord 1, 6, ColorChord 2, 7, ColorChord 3, 8, AL Theme 0, 9, AL Theme 1, 10, AL Theme 2, 11, AL Theme 3, 12)] _ColorThemeIndex ("", Int) = 0
		_MainTex ("Texture--{reference_properties:[_MainTexPan, _MainTexUV]}", 2D) = "white" { }
		[HideInInspector][ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3, Panosphere, 4, World Pos XZ, 5, Polar UV, 6, Distorted UV, 7)] _MainTexUV ("UV", Int) = 0
		[HideInInspector][Vector2]_MainTexPan ("Panning", Vector) = (0, 0, 0, 0)
		[Normal]_BumpMap ("Normal Map--{reference_properties:[_BumpMapPan, _BumpMapUV, _BumpScale]}", 2D) = "bump" { }
		[HideInInspector][Vector2]_BumpMapPan ("Panning", Vector) = (0, 0, 0, 0)
		[HideInInspector][ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3, Panosphere, 4, World Pos XZ, 5, Polar UV, 6, Distorted UV, 7)] _BumpMapUV ("UV", Int) = 0
		[HideInInspector]_BumpScale ("Intensity", Range(0, 10)) = 1
		_ClippingMask ("Alpha Map--{reference_properties:[_ClippingMaskPan, _ClippingMaskUV, _Inverse_Clipping]}", 2D) = "white" { }
		[HideInInspector][Vector2]_ClippingMaskPan ("Panning", Vector) = (0, 0, 0, 0)
		[HideInInspector][ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3, Panosphere, 4, World Pos XZ, 5, Polar UV, 6, Distorted UV, 7)] _ClippingMaskUV ("UV", Int) = 0
		[HideInInspector][ToggleUI]_Inverse_Clipping ("Invert", Float) = 0
		_Cutoff ("Alpha Cuttoff--{condition_showS:(_Mode==1)}", Range(0, 1.001)) = 0.5
		
		[HideInInspector] m_start_MainHueShift ("Color Adjust--{reference_property:_MainColorAdjustToggle}", Float) = 0
		[HideInInspector][ThryToggle(COLOR_GRADING_HDR)] _MainColorAdjustToggle ("Adjust Colors", Float) = 0
		_MainColorAdjustTexture ("Mask R(H) G(B) B(S)--{reference_properties:[_MainColorAdjustTexturePan, _MainColorAdjustTextureUV]}", 2D) = "white" { }
		[HideInInspector][Vector2]_MainColorAdjustTexturePan ("Panning", Vector) = (0, 0, 0, 0)
		[HideInInspector][ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3, Panosphere, 4, World Pos XZ, 5, Polar UV, 6, Distorted UV, 7)] _MainColorAdjustTextureUV ("UV", Int) = 0
		_Saturation ("Saturation", Range(-1, 10)) = 0
		_MainBrightness ("Brightness", Range(-1, 1)) = 0
		[ThryToggleUI(true)] _MainHueShiftToggle ("<size=13><b>  Hue Shift</b></size>", Float) = 0
		[ToggleUI]_MainHueShiftReplace ("Hue Replace?--{condition_showS:(_MainHueShiftToggle==1)}", Float) = 1
		_MainHueShift ("Hue Shift--{condition_showS:(_MainHueShiftToggle==1)}", Range(0, 1)) = 0
		_MainHueShiftSpeed ("Hue Shift Speed--{condition_showS:(_MainHueShiftToggle==1)}", Float) = 0
		
		[Space(4)]
		[ThryToggleUI(true)]_MainHueALCTEnabled ("<size=13><b>  Hue Shift Audio Link</b></size>--{condition_showS:(_MainHueShiftToggle==1 && _EnableAudioLink==1)}", Float) = 0
		[Enum(Bass, 0, Low Mid, 1, High Mid, 2, Treble, 3)]_MainALHueShiftBand ("Band--{condition_showS:(_MainHueShiftToggle==1 && _EnableAudioLink==1 && _MainHueALCTEnabled==1)}", Int) = 0
		[ThryWideEnum(Motion increases as intensity of band increases, 0, Above but Smooth, 1, Motion moves back and forth as a function of intensity, 2, Above but Smoooth, 3, Fixed speed increase when the band is dark Stationary when light, 4, Above but Smooooth, 5, Fixed speed increase when the band is dark Fixed speed decrease when light, 6, Above but Smoooooth, 7)]_MainALHueShiftCTIndex ("Motion Type--{condition_showS:(_MainHueShiftToggle==1 && _EnableAudioLink==1 && _MainHueALCTEnabled==1)}", Int) = 0
		_MainHueALMotionSpeed ("Motion Speed--{condition_showS:(_MainHueShiftToggle==1 && _EnableAudioLink==1 && _MainHueALCTEnabled==1)}", Float) = 1
		[HideInInspector] m_end_MainHueShift ("Hue Shift", Float) = 0
		
		[HideInInspector] m_start_Alpha ("Alpha Options", Float) = 0
		[ToggleUI]_AlphaForceOpaque ("Force Opaque", Float) = 0
		_AlphaMod ("Alpha Mod", Range(-1, 1)) = 0.0
		[ToggleUI]_AlphaPremultiply ("Alpha Premultiply", Float) = 0
		
		[Space(4)]
		[ThryToggleUI(true)] _AlphaToCoverage ("<size=13><b>  Alpha To Coverage</b></size>", Float) = 0
		[ToggleUI]_AlphasharpenedA2C ("sharpened  A2C--{condition_showS:(_AlphaToCoverage==1)}", Float) = 0
		_AlphaMipScale ("Mip Level Alpha Scale--{condition_showS:(_AlphaToCoverage==1)}", Range(0, 1)) = 0.25
		
		[Space(4)]
		[ThryToggleUI(true)] _AlphaDithering ("<size=13><b>  Dithering</b></size>", Float) = 0
		_AlphaDitherGradient ("Dither Gradient--{condition_showS:(_AlphaDithering==1)}", Range(0, 1)) = .1
		
		[Space(4)]
		[ThryToggleUI(true)] _AlphaDistanceFade ("<size=13><b>  Distance Alpha</b></size>", Float) = 0
		[Enum(Object Position, 0, Pixel Position, 1)] _AlphaDistanceFadeType ("Pos To Use--{condition_showS:(_AlphaDistanceFade==1)}", Int) = 1
		_AlphaDistanceFadeMinAlpha ("Min Distance Alpha--{condition_showS:(_AlphaDistanceFade==1)}", Range(0, 1)) = 0
		_AlphaDistanceFadeMaxAlpha ("Max Distance Alpha--{condition_showS:(_AlphaDistanceFade==1)}", Range(0, 1)) = 1
		_AlphaDistanceFadeMin ("Min Distance--{condition_showS:(_AlphaDistanceFade==1)}", Float) = 0
		_AlphaDistanceFadeMax ("Max Distance--{condition_showS:(_AlphaDistanceFade==1)}", Float) = 0
		
		[Space(4)]
		[ThryToggleUI(true)] _AlphaFresnel ("<size=13><b>  Fresnel Alpha</b></size>", Float) = 0
		_AlphaFresnelAlpha ("Intensity--{condition_showS:(_AlphaFresnel==1)}", Range(0, 1)) = 0
		_AlphaFresnelSharpness ("Sharpness--{condition_showS:(_AlphaFresnel==1)}", Range(0, 1)) = .5
		_AlphaFresnelWidth ("Width--{condition_showS:(_AlphaFresnel==1)}", Range(0, 1)) = .5
		[ToggleUI]_AlphaFresnelInvert ("Invert--{condition_showS:(_AlphaFresnel==1)}", Float) = 0
		
		[Space(4)]
		[ThryToggleUI(true)] _AlphaAngular ("<size=13><b>  Angular Alpha</b></size>", Float) = 0
		[Enum(Camera Face Model, 0, Model Face Camera, 1, Face Each Other, 2)] _AngleType ("Angle Type--{condition_showS:(_AlphaAngular==1)}", Int) = 0
		[Enum(Model, 0, Vertex, 1)] _AngleCompareTo ("Model or Vert Positon--{condition_showS:(_AlphaAngular==1)}", Int) = 0
		[Vector3]_AngleForwardDirection ("Forward Direction--{condition_showS:(_AlphaAngular==1)}", Vector) = (0, 0, 1)
		_CameraAngleMin ("Camera Angle Min--{condition_showS:(_AlphaAngular==1)}", Range(0, 180)) = 45
		_CameraAngleMax ("Camera Angle Max--{condition_showS:(_AlphaAngular==1)}", Range(0, 180)) = 90
		_ModelAngleMin ("Model Angle Min--{condition_showS:(_AlphaAngular==1)}", Range(0, 180)) = 45
		_ModelAngleMax ("Model Angle Max--{condition_showS:(_AlphaAngular==1)}", Range(0, 180)) = 90
		_AngleMinAlpha ("Min Alpha--{condition_showS:(_AlphaAngular==1)}", Range(0, 1)) = 0
		
		[Space(4)]
		[ThryToggleUI(true)]_AlphaAudioLinkEnabled ("<size=13><b>  Alpha Audio Link</b></size>--{condition_showS:(_EnableAudioLink==1)}", Float) = 0
		[Vector2]_AlphaAudioLinkAddRange ("Add Range--{ condition_showS:(_AlphaAudioLinkEnabled==1 && _EnableAudioLink==1)}", Vector) = (0, 0, 0, 0)
		[Enum(Bass, 0, Low Mid, 1, High Mid, 2, Treble, 3)] _AlphaAudioLinkAddBand ("Emission Add Band--{ condition_showS:(_AlphaAudioLinkEnabled==1 && _EnableAudioLink==1)}", Int) = 0
		[HideInInspector] m_end_Alpha ("Alpha Options", Float) = 0
		
		[HideInInspector] m_start_DetailOptions ("Details--{reference_property:_DetailEnabled}", Float) = 0
		[HideInInspector][ThryToggle(FINALPASS)]_DetailEnabled ("Enable", Float) = 0
		_DetailMask ("Detail Mask (R:Texture, G:Normal)--{reference_properties:[_DetailMaskPan, _DetailMaskUV]}", 2D) = "white" { }
		[HideInInspector][Vector2]_DetailMaskPan ("Panning", Vector) = (0, 0, 0, 0)
		[HideInInspector][ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3, Panosphere, 4, World Pos XZ, 5, Polar UV, 6, Distorted UV, 7)] _DetailMaskUV ("UV", Int) = 0
		_DetailTint ("Detail Texture Tint--{reference_property:_DetailTintThemeIndex}", Color) = (1, 1, 1)
		[HideInInspector][ThryWideEnum(Off, 0, Theme Color 0, 1, Theme Color 1, 2, Theme Color 2, 3, Theme Color 3, 4, ColorChord 0, 5, ColorChord 1, 6, ColorChord 2, 7, ColorChord 3, 8, AL Theme 0, 9, AL Theme 1, 10, AL Theme 2, 11, AL Theme 3, 12)] _DetailTintThemeIndex ("", Int) = 0
		_DetailTex ("Detail Texture--{reference_properties:[_DetailTexPan, _DetailTexUV]}", 2D) = "gray" { }
		[HideInInspector][Vector2]_DetailTexPan ("Panning", Vector) = (0, 0, 0, 0)
		[HideInInspector][ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3, Panosphere, 4, World Pos XZ, 5, Polar UV, 6, Distorted UV, 7)] _DetailTexUV ("UV", Int) = 0
		_DetailTexIntensity ("Detail Tex Intensity", Range(0, 10)) = 1
		_DetailBrightness ("Detail Brightness:", Range(0, 2)) = 1
		[Normal]_DetailNormalMap ("Detail Normal--{reference_properties:[_DetailNormalMapPan, _DetailNormalMapUV, _DetailNormalMapScale]}", 2D) = "bump" { }
		[HideInInspector]_DetailNormalMapScale ("Detail Normal Intensity", Range(0, 10)) = 1
		[HideInInspector][Vector2]_DetailNormalMapPan ("Panning", Vector) = (0, 0, 0, 0)
		[HideInInspector][ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3, Panosphere, 4, World Pos XZ, 5, Polar UV, 6, Distorted UV, 7)] _DetailNormalMapUV ("UV", Int) = 0
		[HideInInspector] m_end_DetailOptions ("Details", Float) = 0
		
		[HideInInspector] m_start_vertexManipulation ("Vertex Options--{reference_property:_VertexManipulationsEnabled, button_help:{text:Tutorial,action:{type:URL,data:https://www.youtube.com/watch?v=x728WN50JeA&list=PL4_Gy3VRJSmbXfQSldzUiChgABQsoBlLw},hover:YouTube}}", Float) = 0
		[HideInInspector][ThryToggle(AUTO_EXPOSURE)]_VertexManipulationsEnabled ("Enabled", Float) = 0
		[Vector3]_VertexManipulationLocalTranslation ("Local Translation", Vector) = (0, 0, 0, 1)
		[Vector3]_VertexManipulationLocalRotation ("Local Rotation", Vector) = (0, 0, 0, 1)
		[Vector3]_VertexManipulationLocalRotationSpeed ("Local Rotation Speed", Vector) = (0, 0, 0, 1)
		_VertexManipulationLocalScale ("Local Scale", Vector) = (1, 1, 1, 1)
		[Vector3]_VertexManipulationWorldTranslation ("World Translation", Vector) = (0, 0, 0, 1)
		_VertexManipulationHeight ("Vertex Height", Float) = 0
		_VertexManipulationHeightMask ("Height Map--{reference_properties:[_VertexManipulationHeightMaskPan, _VertexManipulationHeightMaskUV]}", 2D) = "white" { }
		[HideInInspector][Vector2]_VertexManipulationHeightMaskPan ("Panning", Vector) = (0, 0, 0, 0)
		[HideInInspector][Enum(UV0, 0, UV1, 1, UV2, 2, UV3, 3)] _VertexManipulationHeightMaskUV ("UV", Int) = 0
		_VertexManipulationHeightBias ("Mask Bias", Range(0, 1)) = 0
		[ToggleUI]_VertexRoundingEnabled ("Rounding Enabled", Float) = 0
		_VertexRoundingDivision ("Division Amount", Float) = 500
		
		[Space(10)]
		[ThryToggleUI(true)]_VertexAudioLinkEnabled ("<size=13><b>  Audio Link</b></size>--{condition_showS:(_EnableAudioLink==1)}", Float) = 0
		[Enum(Bass, 0, Low Mid, 1, High Mid, 2, Treble, 3)] _VertexLocalTranslationALBand ("Local Translate Band--{ condition_showS:(_EnableAudioLink==1 && _VertexAudioLinkEnabled==1)}", Int) = 0
		[Vector3]_VertexLocalTranslationALMin ("Local Translate Min--{ condition_showS:(_EnableAudioLink==1 && _VertexAudioLinkEnabled==1)}", Vector) = (0,0,0)
		[Vector3]_VertexLocalTranslationALMax ("Local Translate Max--{ condition_showS:(_EnableAudioLink==1 && _VertexAudioLinkEnabled==1)}", Vector) = (0,0,0)
		[Space(10)]
		[Enum(Bass, 0, Low Mid, 1, High Mid, 2, Treble, 3)] _VertexLocalRotationALBandX("Rotation Band X--{ condition_showS:(_EnableAudioLink==1 && _VertexAudioLinkEnabled==1)}", Int) = 0
		[Enum(Bass, 0, Low Mid, 1, High Mid, 2, Treble, 3)] _VertexLocalRotationALBandY ("Rotation Band Y--{ condition_showS:(_EnableAudioLink==1 && _VertexAudioLinkEnabled==1)}", Int) = 0
		[Enum(Bass, 0, Low Mid, 1, High Mid, 2, Treble, 3)] _VertexLocalRotationALBandZ ("Rotation Band Z--{ condition_showS:(_EnableAudioLink==1 && _VertexAudioLinkEnabled==1)}", Int) = 0
		[Vector3]_VertexLocalRotationAL ("Rotation--{ condition_showS:(_EnableAudioLink==1 && _VertexAudioLinkEnabled==1)}", Vector) = (0,0,0)
		[Space(10)]
		[Enum(Bass, 0, Low Mid, 1, High Mid, 2, Treble, 3)] _VertexLocalRotationCTALBandX ("Band X--{ condition_showS:(_EnableAudioLink==1 && _VertexAudioLinkEnabled==1)}", Int) = 0
		[ThryWideEnum(Motion increases as intensity of band increases, 0, Above but Smooth, 1, Motion moves back and forth as a function of intensity, 2, Above but Smoooth, 3, Fixed speed increase when the band is dark Stationary when light, 4, Above but Smooooth, 5, Fixed speed increase when the band is dark Fixed speed decrease when light, 6, Above but Smoooooth, 7)]_VertexLocalRotationCTALTypeX ("Motion Type X--{ condition_showS:(_EnableAudioLink==1 && _VertexAudioLinkEnabled==1)}", Int) = 0
		[Enum(Bass, 0, Low Mid, 1, High Mid, 2, Treble, 3)] _VertexLocalRotationCTALBandY ("Band Y--{ condition_showS:(_EnableAudioLink==1 && _VertexAudioLinkEnabled==1)}", Int) = 0
		[ThryWideEnum(Motion increases as intensity of band increases, 0, Above but Smooth, 1, Motion moves back and forth as a function of intensity, 2, Above but Smoooth, 3, Fixed speed increase when the band is dark Stationary when light, 4, Above but Smooooth, 5, Fixed speed increase when the band is dark Fixed speed decrease when light, 6, Above but Smoooooth, 7)]_VertexLocalRotationCTALTypeY ("Motion Type Y--{ condition_showS:(_EnableAudioLink==1 && _VertexAudioLinkEnabled==1)}", Int) = 0
		[Enum(Bass, 0, Low Mid, 1, High Mid, 2, Treble, 3)] _VertexLocalRotationCTALBandZ ("Band Z--{ condition_showS:(_EnableAudioLink==1 && _VertexAudioLinkEnabled==1)}", Int) = 0
		[ThryWideEnum(Motion increases as intensity of band increases, 0, Above but Smooth, 1, Motion moves back and forth as a function of intensity, 2, Above but Smoooth, 3, Fixed speed increase when the band is dark Stationary when light, 4, Above but Smooooth, 5, Fixed speed increase when the band is dark Fixed speed decrease when light, 6, Above but Smoooooth, 7)]_VertexLocalRotationCTALTypeZ ("Motion Type Z--{ condition_showS:(_EnableAudioLink==1 && _VertexAudioLinkEnabled==1)}", Int) = 0
		[Vector3]_VertexLocalRotationCTALSpeed ("Rotation Speed--{ condition_showS:(_EnableAudioLink==1 && _VertexAudioLinkEnabled==1)}", Vector) = (0,0,0)
		[Space(10)]
		[Enum(Bass, 0, Low Mid, 1, High Mid, 2, Treble, 3)] _VertexLocalScaleALBand ("Scale Band--{ condition_showS:(_EnableAudioLink==1 && _VertexAudioLinkEnabled==1)}", Int) = 0
		_VertexLocalScaleALMin ("Scale Min--{ condition_showS:(_EnableAudioLink==1 && _VertexAudioLinkEnabled==1)}", Vector) = (0,0,0,0)
		_VertexLocalScaleALMax ("Scale Max--{ condition_showS:(_EnableAudioLink==1 && _VertexAudioLinkEnabled==1)}", Vector) = (0,0,0,0)
		[Space(10)]
		[Enum(Bass, 0, Low Mid, 1, High Mid, 2, Treble, 3)] _VertexWorldTranslationALBand ("World Translation Band--{ condition_showS:(_EnableAudioLink==1 && _VertexAudioLinkEnabled==1)}", Int) = 0
		[Vector3]_VertexWorldTranslationALMin ("World Translation--{ condition_showS:(_EnableAudioLink==1 && _VertexAudioLinkEnabled==1)}", Vector) = (0,0,0)
		[Vector3]_VertexWorldTranslationALMax ("World Translation--{ condition_showS:(_EnableAudioLink==1 && _VertexAudioLinkEnabled==1)}", Vector) = (0,0,0)
		[Space(10)]
		[Enum(Bass, 0, Low Mid, 1, High Mid, 2, Treble, 3)] _VertexManipulationHeightBand ("Vertex Height Band--{ condition_showS:(_EnableAudioLink==1 && _VertexAudioLinkEnabled==1)}", Int) = 0
		[Vector2]_VertexManipulationHeightAL ("Vertex Height--{ condition_showS:(_EnableAudioLink==1 && _VertexAudioLinkEnabled==1)}", Vector) = (0,0,0)
		[Space(10)]
		[Enum(Bass, 0, Low Mid, 1, High Mid, 2, Treble, 3)] _VertexRoundingRangeBand ("Rounding Band--{ condition_showS:(_EnableAudioLink==1 && _VertexAudioLinkEnabled==1)}", Int) = 0
		[Vector2]_VertexRoundingRangeAL ("Rounding Range--{ condition_showS:(_EnableAudioLink==1 && _VertexAudioLinkEnabled==1)}", Vector) = (0,0,0)
		[HideInInspector] m_end_vertexManipulation ("Vertex Offset", Float) = 0
		
		[HideInInspector] m_start_MainVertexColors ("Vertex Colors", Float) = 0
		[ToggleUI]_MainVertexColoringLinearSpace ("Linear Colors", Float) = 1
		_MainVertexColoring ("Use Vertex Color", Range(0, 1)) = 0
		_MainUseVertexColorAlpha ("Use Vertex Color Alpha", Range(0, 1)) = 0
		[HideInInspector] m_end_MainVertexColors ("Vertex Colors", Float) = 0
		
		// Back Face Textures and Emission
		[HideInInspector] m_start_backFace ("Back Face--{reference_property:_BackFaceEnabled}", Float) = 0
		[HideInInspector][ThryToggle(POI_BACKFACE)]_BackFaceEnabled ("Backface Enabled", Float) = 0
		_BackFaceColor ("Color--{reference_property:_BackFaceColorThemeIndex}", Color) = (1, 1, 1, 1)
		[HideInInspector][ThryWideEnum(Off, 0, Theme Color 0, 1, Theme Color 1, 2, Theme Color 2, 3, Theme Color 3, 4, ColorChord 0, 5, ColorChord 1, 6, ColorChord 2, 7, ColorChord 3, 8, AL Theme 0, 9, AL Theme 1, 10, AL Theme 2, 11, AL Theme 3, 12)] _BackFaceColorThemeIndex ("", Int) = 0
		_BackFaceEmissionStrength ("Emission Strength", Range(0, 20)) = 0
		_BackFaceAlpha ("Alpha", Range(0,1)) = 1
		_BackFaceTexture ("Texture--{reference_properties:[_BackFaceTexturePan, _BackFaceTextureUV]}", 2D) = "white" { }
		[HideInInspector][Vector2]_BackFaceTexturePan ("Panning", Vector) = (0, 0, 0, 0)
		[HideInInspector][ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3, Panosphere, 4, World Pos XZ, 5, Polar UV, 6, Distorted UV, 7)]_BackFaceTextureUV ("UV#", Int) = 0
		_BackFaceMask ("Mask--{reference_properties:[_BackFaceMaskPan, _BackFaceMaskUV]}", 2D) = "white" { }
		[HideInInspector][Vector2]_BackFaceMaskPan ("Panning", Vector) = (0, 0, 0, 0)
		[HideInInspector][ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3, Panosphere, 4, World Pos XZ, 5, Polar UV, 6, Distorted UV, 7)]_BackFaceMaskUV ("UV#", Int) = 0
		_BackFaceDetailIntensity ("Detail Intensity", Range(0, 5)) = 1
		[ToggleUI]_BackFaceReplaceAlpha ("Replace Alpha", Float) = 0
		[Space(10)]
		[ThryToggleUI(true)]_BackFaceHueShiftEnabled ("<size=13><b>  Hue Shift</b></size>", Float) = 0
		_BackFaceHueShift ("Hue Shift--{condition_showS:(_BackFaceHueShiftEnabled==1)}", Range(0, 1)) = 0
		_BackFaceHueShiftSpeed ("Hue Shift Speed--{condition_showS:(_BackFaceHueShiftEnabled==1)}", Float) = 0
		[HideInInspector] m_end_backFace ("Back Face", Float) = 0
		
		// RGBA Masking
		[HideInInspector] m_start_RGBMask ("RGBA Color Masking--{reference_property:_RGBMaskEnabled}", Float) = 0
		[HideInInspector][ThryToggle(VIGNETTE)]_RGBMaskEnabled ("RGB Mask Enabled", Float) = 0
		[ToggleUI]_RGBUseVertexColors ("Use Vertex Colors", Float) = 0
		[ToggleUI]_RGBBlendMultiplicative ("Multiplicative?", Float) = 0
		[RGBAAtlas(R Mask,G Mask,B Mask,A Mask)]_RGBMask ("Mask--{reference_properties:[_RGBMaskPan, _RGBMaskUV]}", 2D) = "white" { }
		[HideInInspector][Vector2]_RGBMaskPan ("Panning", Vector) = (0, 0, 0, 0)
		[HideInInspector][ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3, Panosphere, 4, World Pos XZ, 5, Polar UV, 6, Distorted UV, 7)]_RGBMaskUV ("UV", int) = 0
		_RedColor ("R Color--{reference_property:_RedColorThemeIndex}", Color) = (1, 1, 1, 1)
		[HideInInspector][ThryWideEnum(Off, 0, Theme Color 0, 1, Theme Color 1, 2, Theme Color 2, 3, Theme Color 3, 4, ColorChord 0, 5, ColorChord 1, 6, ColorChord 2, 7, ColorChord 3, 8, AL Theme 0, 9, AL Theme 1, 10, AL Theme 2, 11, AL Theme 3, 12)] _RedColorThemeIndex ("", Int) = 0
		_RedTexure ("R Texture--{reference_properties:[_RedTexurePan, _RedTexureUV]}", 2D) = "white" { }
		[HideInInspector][Vector2]_RedTexurePan ("Panning", Vector) = (0, 0, 0, 0)
		[HideInInspector][ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3, Panosphere, 4, World Pos XZ, 5, Polar UV, 6, Distorted UV, 7)]_RedTexureUV ("UV", int) = 0
		_GreenColor ("G Color--{reference_property:_GreenColorThemeIndex}", Color) = (1, 1, 1, 1)
		[HideInInspector][ThryWideEnum(Off, 0, Theme Color 0, 1, Theme Color 1, 2, Theme Color 2, 3, Theme Color 3, 4, ColorChord 0, 5, ColorChord 1, 6, ColorChord 2, 7, ColorChord 3, 8, AL Theme 0, 9, AL Theme 1, 10, AL Theme 2, 11, AL Theme 3, 12)] _GreenColorThemeIndex ("", Int) = 0
		_GreenTexture ("G Texture--{reference_properties:[_GreenTexturePan, _GreenTextureUV]}", 2D) = "white" { }
		[HideInInspector][Vector2]_GreenTexturePan ("Panning", Vector) = (0, 0, 0, 0)
		[HideInInspector][ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3, Panosphere, 4, World Pos XZ, 5, Polar UV, 6, Distorted UV, 7)]_GreenTextureUV ("UV", int) = 0
		_BlueColor ("B Color--{reference_property:_BlueColorThemeIndex}", Color) = (1, 1, 1, 1)
		[HideInInspector][ThryWideEnum(Off, 0, Theme Color 0, 1, Theme Color 1, 2, Theme Color 2, 3, Theme Color 3, 4, ColorChord 0, 5, ColorChord 1, 6, ColorChord 2, 7, ColorChord 3, 8, AL Theme 0, 9, AL Theme 1, 10, AL Theme 2, 11, AL Theme 3, 12)] _BlueColorThemeIndex ("", Int) = 0
		_BlueTexture ("B Texture--{reference_properties:[_BlueTexturePan, _BlueTextureUV]}", 2D) = "white" { }
		[HideInInspector][Vector2]_BlueTexturePan ("Panning", Vector) = (0, 0, 0, 0)
		[HideInInspector][ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3, Panosphere, 4, World Pos XZ, 5, Polar UV, 6, Distorted UV, 7)]_BlueTextureUV ("UV", int) = 0
		_AlphaColor ("A Color--{reference_property:_AlphaColorThemeIndex}", Color) = (1, 1, 1, 1)
		[HideInInspector][ThryWideEnum(Off, 0, Theme Color 0, 1, Theme Color 1, 2, Theme Color 2, 3, Theme Color 3, 4, ColorChord 0, 5, ColorChord 1, 6, ColorChord 2, 7, ColorChord 3, 8, AL Theme 0, 9, AL Theme 1, 10, AL Theme 2, 11, AL Theme 3, 12)] _AlphaColorThemeIndex ("", Int) = 0
		_AlphaTexture ("A Texture--{reference_properties:[_AlphaTexturePan, _AlphaTextureUV]}", 2D) = "white" { }
		[HideInInspector][Vector2]_AlphaTexturePan ("Panning", Vector) = (0, 0, 0, 0)
		[HideInInspector][ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3, Panosphere, 4, World Pos XZ, 5, Polar UV, 6, Distorted UV, 7)]_AlphaTextureUV ("UV", int) = 0
		
		// RGB MASKED NORMALS
		[ThryToggle(GEOM_TYPE_MESH)]_RgbNormalsEnabled ("Enable Normals", Float) = 0
		[ToggleUI]_RGBNormalBlend ("Blend with Base--{condition_show:{type:PROPERTY_BOOL,data:_RgbNormalsEnabled==1}}", Float) = 0
		[Normal]_RgbNormalR ("R Normal--{reference_properties:[_RgbNormalRPan, _RgbNormalRUV],condition_show:{type:PROPERTY_BOOL,data:_RgbNormalsEnabled==1}}", 2D) = "bump" { }
		[HideInInspector][Vector2]_RgbNormalRPan ("Pan", Vector) = (0, 0, 0, 0)
		[HideInInspector][ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3, Panosphere, 4, World Pos XZ, 5, Polar UV, 6, Distorted UV, 7)]_RgbNormalRUV ("UV", int) = 0
		_RgbNormalRScale ("Intensity--{condition_show:{type:PROPERTY_BOOL,data:_RgbNormalsEnabled==1}}", Range(0, 10)) = 0
		[Normal]_RgbNormalG ("G Normal--{reference_properties:[_RgbNormalGPan, _RgbNormalGUV],condition_show:{type:PROPERTY_BOOL,data:_RgbNormalsEnabled==1}}", 2D) = "bump" { }
		[HideInInspector][Vector2]_RgbNormalGPan ("Pan", Vector) = (0, 0, 0, 0)
		[HideInInspector][ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3, Panosphere, 4, World Pos XZ, 5, Polar UV, 6, Distorted UV, 7)]_RgbNormalGUV ("UV", int) = 0
		_RgbNormalGScale ("Intensity--{condition_show:{type:PROPERTY_BOOL,data:_RgbNormalsEnabled==1}}", Range(0, 10)) = 0
		[Normal]_RgbNormalB ("B Normal--{reference_properties:[_RgbNormalBPan, _RgbNormalBUV],condition_show:{type:PROPERTY_BOOL,data:_RgbNormalsEnabled==1}}", 2D) = "bump" { }
		[HideInInspector][Vector2]_RgbNormalBPan ("Pan", Vector) = (0, 0, 0, 0)
		[HideInInspector][ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3, Panosphere, 4, World Pos XZ, 5, Polar UV, 6, Distorted UV, 7)]_RgbNormalBUV ("UV", int) = 0
		_RgbNormalBScale ("Intensity--{condition_show:{type:PROPERTY_BOOL,data:_RgbNormalsEnabled==1}}", Range(0, 10)) = 0
		[Normal]_RgbNormalA ("A Normal--{reference_properties:[_RgbNormalAPan, _RgbNormalAUV],condition_show:{type:PROPERTY_BOOL,data:_RgbNormalsEnabled==1}}", 2D) = "bump" { }
		[HideInInspector][Vector2]_RgbNormalAPan ("Pan", Vector) = (0, 0, 0, 0)
		[HideInInspector][ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3, Panosphere, 4, World Pos XZ, 5, Polar UV, 6, Distorted UV, 7)]_RgbNormalAUV ("UV", int) = 0
		_RgbNormalAScale ("Intensity--{condition_show:{type:PROPERTY_BOOL,data:_RgbNormalsEnabled==1}}", Range(0, 10)) = 0
		[HideInInspector] m_end_RGBMask ("RGB Color Masking", Float) = 0
		
		// Decal Texture
		[HideInInspector] m_start_DecalSection ("Decals--{button_help:{text:Tutorial,action:{type:URL,data:https://www.youtube.com/watch?v=xHoQVN_F7JE&list=PL4_Gy3VRJSmbXfQSldzUiChgABQsoBlLw},hover:YouTube},reference_property:_DecalEnabled}", Float) = 0
		[RGBAAtlas(Decal1Mask,Decal2Mask,Decal3Mask,Decal4Mask)]_DecalMask ("Decal RGBA Mask--{reference_properties:[_DecalMaskPan, _DecalMaskUV]}", 2D) = "white" { }
		[HideInInspector][Vector2]_DecalMaskPan ("Panning", Vector) = (0, 0, 0, 0)
		[HideInInspector][ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3, Panosphere, 4, World Pos XZ, 5, Polar UV, 6, Distorted UV, 7)] _DecalMaskUV ("UV", Int) = 0
		// Decal 0
		[HideInInspector] m_start_Decal0 ("Decal 0", Float) = 0
		[HideInInspector][ThryToggle(GEOM_TYPE_BRANCH)]_DecalEnabled ("Enable", Float) = 0
		[Enum(R, 0, G, 1, B, 2, A, 3)] _Decal0MaskChannel ("Mask Channel", Int) = 0
		_DecalColor ("Color--{reference_property:_DecalColorThemeIndex}", Color) = (1, 1, 1, 1)
		[HideInInspector][ThryWideEnum(Off, 0, Theme Color 0, 1, Theme Color 1, 2, Theme Color 2, 3, Theme Color 3, 4, ColorChord 0, 5, ColorChord 1, 6, ColorChord 2, 7, ColorChord 3, 8, AL Theme 0, 9, AL Theme 1, 10, AL Theme 2, 11, AL Theme 3, 12)] _DecalColorThemeIndex ("", Int) = 0
		_DecalEmissionStrength ("Emission Strength", Range(0, 20)) = 0
		_DecalTexture ("Decal--{reference_properties:[_DecalTexturePan, _DecalTextureUV]}", 2D) = "white" { }
		[HideInInspector][Vector2]_DecalTexturePan ("Panning", Vector) = (0, 0, 0, 0)
		[HideInInspector][ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3, Panosphere, 4, World Pos XZ, 5, Polar UV, 6, Distorted UV, 7)] _DecalTextureUV ("UV", Int) = 0
		[ToggleUI]_DecalTiled ("Tiled?", Float) = 0
		_Decal0Depth ("Depth", Float) = 0
		[Vector2]_DecalScale ("Scale", Vector) = (1, 1, 0, 0)
		_DecalSideOffset ("Side Offset ←→↓↑", Vector) = (0, 0, 0, 0)
		[Vector2]_DecalPosition ("Position", Vector) = (.5, .5, 0, 0)
		_DecalRotation ("Rotation", Range(0, 360)) = 0
		_DecalRotationSpeed ("Rotation Speed", Float) = 0
		[ThryWideEnum(Replace, 0, Darken, 1, Multiply, 2, Color Burn, 3, Linear Burn, 4, Lighten, 5, Screen, 6, Color Dodge, 7, Linear Dodge (Add), 8, Overlay, 9, Soft Lighten, 10, Hard Light, 11, Vivid Light, 12, Linear Light, 13, Pin Light, 14, Hard Mix, 15, Difference, 16, Exclusion, 17, Subtract, 18, Divide, 19)]_DecalBlendType ("Blending", Range(0, 1)) = 0
		_DecalBlendAlpha ("Alpha", Range(0,1)) = 1
		[ToggleUI]_DecalOverideAlpha ("Override Alpha", Float) = 0
		[ToggleUI]_DecalHueShiftEnabled ("Hue Shift Enabled", Float) = 0
		_DecalHueShiftSpeed ("Shift Speed", Float) = 0
		_DecalHueShift ("Hue Shift", Range(0,1)) = 0
		_Decal0HueAngleStrength ("Hue Angle Power", Float) = 0
		// Decal 0 Audio Link
		[HideInInspector] m_start_Decal0AudioLink ("Audio Link ♫--{ condition_showS:_EnableAudioLink==1}", Float) = 0
		[Enum(Bass, 0, Low Mid, 1, High Mid, 2, Treble, 3)] _AudioLinkDecal0ScaleBand ("Scale Band", Int) = 0
		_AudioLinkDecal0Scale ("Scale Mod", Vector) = (0,0,0,0)
		[Enum(Bass, 0, Low Mid, 1, High Mid, 2, Treble, 3)] _AudioLinkDecal0RotationBand ("Rotation Band", Int) = 0
		[Vector2]_AudioLinkDecal0Rotation ("Rotation Mod", Vector) = (0,0,0,0)
		[Enum(Bass, 0, Low Mid, 1, High Mid, 2, Treble, 3)] _AudioLinkDecal0AlphaBand ("Alpha Band", Int) = 0
		[Vector2]_AudioLinkDecal0Alpha ("Alpha Mod", Vector) = (0,0,0,0)
		[Enum(Bass, 0, Low Mid, 1, High Mid, 2, Treble, 3)] _AudioLinkDecal0EmissionBand ("Emission Band", Int) = 0
		[Vector2]_AudioLinkDecal0Emission ("Emission Mod", Vector) = (0,0,0,0)
		[HideInInspector] m_end_Decal0AudioLink ("Audio Link", Float) = 0
		[HideInInspector] m_end_Decal0 ("Decal 0", Float) = 0
		// Decal 1
		//"GEOM_TYPE_FROND"
		//"DEPTH_OF_FIELD_COC_VIEW"
		[HideInInspector] m_start_Decal1 ("Decal 1--{reference_property:_DecalEnabled1}", Float) = 0
		[HideInInspector][ThryToggle(GEOM_TYPE_BRANCH_DETAIL)]_DecalEnabled1 ("Enable", Float) = 0
		[Enum(R, 0, G, 1, B, 2, A, 3)] _Decal1MaskChannel ("Mask Channel", Int) = 1
		_DecalColor1 ("Color--{reference_property:_DecalColor1ThemeIndex}", Color) = (1, 1, 1, 1)
		[HideInInspector][ThryWideEnum(Off, 0, Theme Color 0, 1, Theme Color 1, 2, Theme Color 2, 3, Theme Color 3, 4, ColorChord 0, 5, ColorChord 1, 6, ColorChord 2, 7, ColorChord 3, 8, AL Theme 0, 9, AL Theme 1, 10, AL Theme 2, 11, AL Theme 3, 12)] _DecalColor1ThemeIndex ("", Int) = 0
		_DecalEmissionStrength1 ("Emission Strength", Range(0, 20)) = 0
		_DecalTexture1 ("Decal--{reference_properties:[_DecalTexture1Pan, _DecalTexture1UV]}", 2D) = "white" { }
		[HideInInspector][Vector2]_DecalTexture1Pan ("Panning", Vector) = (0, 0, 0, 0)
		[HideInInspector][ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3, Panosphere, 4, World Pos XZ, 5, Polar UV, 6, Distorted UV, 7)] _DecalTexture1UV ("UV", Int) = 0
		[ToggleUI]_DecalTiled1 ("Tiled?", Float) = 0
		_Decal1Depth ("Depth", Float) = 0
		[Vector2]_DecalScale1 ("Scale", Vector) = (1, 1, 0, 0)
		_DecalSideOffset1 ("Side Offset ←→↓↑", Vector) = (0, 0, 0, 0)
		[Vector2]_DecalPosition1 ("Position", Vector) = (.5, .5, 0, 0)
		_DecalRotation1 ("Rotation", Range(0, 360)) = 0
		_DecalRotationSpeed1 ("Rotation Speed", Float) = 0
		[ThryWideEnum(Replace, 0, Darken, 1, Multiply, 2, Color Burn, 3, Linear Burn, 4, Lighten, 5, Screen, 6, Color Dodge, 7, Linear Dodge (Add), 8, Overlay, 9, Soft Lighten, 10, Hard Light, 11, Vivid Light, 12, Linear Light, 13, Pin Light, 14, Hard Mix, 15, Difference, 16, Exclusion, 17, Subtract, 18, Divide, 19)]_DecalBlendType1 ("Blending", Range(0, 1)) = 0
		_DecalBlendAlpha1 ("Alpha", Range(0,1)) = 1
		[ToggleUI]_DecalOverideAlpha1 ("Override Alpha", Float) = 0
		[ToggleUI]_DecalHueShiftEnabled1 ("Hue Shift Enabled", Float) = 0
		_DecalHueShiftSpeed1 ("Shift Speed", Float) = 0
		_DecalHueShift1 ("Hue Shift", Range(0,1)) = 0
		_Decal1HueAngleStrength ("Hue Angle Power", Float) = 0
		// Decal 1 Audio Link
		[HideInInspector] m_start_Decal1AudioLink ("Audio Link ♫--{ condition_showS:_EnableAudioLink==1}", Float) = 0
		[Enum(Bass, 0, Low Mid, 1, High Mid, 2, Treble, 3)] _AudioLinkDecal1ScaleBand ("Scale Band", Int) = 0
		_AudioLinkDecal1Scale ("Scale Mod", Vector) = (0,0,0,0)
		[Enum(Bass, 0, Low Mid, 1, High Mid, 2, Treble, 3)] _AudioLinkDecal1RotationBand ("Rotation Band", Int) = 0
		[Vector2]_AudioLinkDecal1Rotation ("Rotation Mod", Vector) = (0,0,0,0)
		[Enum(Bass, 0, Low Mid, 1, High Mid, 2, Treble, 3)] _AudioLinkDecal1AlphaBand ("Alpha Band", Int) = 0
		[Vector2]_AudioLinkDecal1Alpha ("Alpha Mod", Vector) = (0,0,0,0)
		[Enum(Bass, 0, Low Mid, 1, High Mid, 2, Treble, 3)] _AudioLinkDecal1EmissionBand ("Emission Band", Int) = 0
		[Vector2]_AudioLinkDecal1Emission ("Emission Mod", Vector) = (0,0,0,0)
		[HideInInspector] m_end_Decal1AudioLink ("Audio Link", Float) = 0
		[HideInInspector] m_end_Decal1 ("Decal 0", Float) = 0
		// Decal 2
		[HideInInspector] m_start_Decal2 ("Decal 2--{reference_property:_DecalEnabled2}", Float) = 0
		[HideInInspector][ThryToggle(GEOM_TYPE_FROND)]_DecalEnabled2 ("Enable", Float) = 0
		[Enum(R, 0, G, 1, B, 2, A, 3)] _Decal2MaskChannel ("Mask Channel", Int) = 2
		_DecalColor2 ("Color--{reference_property:_DecalColor2ThemeIndex}", Color) = (1, 1, 1, 1)
		[HideInInspector][ThryWideEnum(Off, 0, Theme Color 0, 1, Theme Color 1, 2, Theme Color 2, 3, Theme Color 3, 4, ColorChord 0, 5, ColorChord 1, 6, ColorChord 2, 7, ColorChord 3, 8, AL Theme 0, 9, AL Theme 1, 10, AL Theme 2, 11, AL Theme 3, 12)] _DecalColor2ThemeIndex ("", Int) = 0
		_DecalEmissionStrength2 ("Emission Strength", Range(0, 20)) = 0
		_DecalTexture2 ("Decal--{reference_properties:[_DecalTexture2Pan, _DecalTexture2UV]}", 2D) = "white" { }
		[HideInInspector][Vector2]_DecalTexture2Pan ("Panning", Vector) = (0, 0, 0, 0)
		[HideInInspector][ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3, Panosphere, 4, World Pos XZ, 5, Polar UV, 6, Distorted UV, 7)] _DecalTexture2UV ("UV", Int) = 0
		[ToggleUI]_DecalTiled2 ("Tiled?", Float) = 0
		_Decal2Depth ("Depth", Float) = 0
		[Vector2]_DecalScale2 ("Scale", Vector) = (1, 1, 0, 0)
		_DecalSideOffset2 ("Side Offset ←→↓↑", Vector) = (0, 0, 0, 0)
		[Vector2]_DecalPosition2 ("Position", Vector) = (.5, .5, 0, 0)
		_DecalRotation2 ("Rotation", Range(0, 360)) = 0
		_DecalRotationSpeed2 ("Rotation Speed", Float) = 0
		[ThryWideEnum(Replace, 0, Darken, 1, Multiply, 2, Color Burn, 3, Linear Burn, 4, Lighten, 5, Screen, 6, Color Dodge, 7, Linear Dodge (Add), 8, Overlay, 9, Soft Lighten, 10, Hard Light, 11, Vivid Light, 12, Linear Light, 13, Pin Light, 14, Hard Mix, 15, Difference, 16, Exclusion, 17, Subtract, 18, Divide, 19)]_DecalBlendType2 ("Blending", Range(0, 1)) = 0
		_DecalBlendAlpha2 ("Alpha", Range(0,1)) = 1
		[ToggleUI]_DecalOverideAlpha2 ("Override Alpha", Float) = 0
		[ToggleUI]_DecalHueShiftEnabled2 ("Hue Shift Enabled", Float) = 0
		_DecalHueShiftSpeed2 ("Shift Speed", Float) = 0
		_DecalHueShift2 ("Hue Shift", Range(0,1)) = 0
		_Decal2HueAngleStrength ("Hue Angle Power", Float) = 0
		// Decal 2 Audio Link
		[HideInInspector] m_start_Decal2AudioLink ("Audio Link ♫--{ condition_showS:_EnableAudioLink==1}", Float) = 0
		[Enum(Bass, 0, Low Mid, 1, High Mid, 2, Treble, 3)] _AudioLinkDecal2ScaleBand ("Scale Band", Int) = 0
		_AudioLinkDecal2Scale ("Scale Mod", Vector) = (0,0,0,0)
		[Enum(Bass, 0, Low Mid, 1, High Mid, 2, Treble, 3)] _AudioLinkDecal2RotationBand ("Rotation Band", Int) = 0
		[Vector2]_AudioLinkDecal2Rotation ("Rotation Mod", Vector) = (0,0,0,0)
		[Enum(Bass, 0, Low Mid, 1, High Mid, 2, Treble, 3)] _AudioLinkDecal2AlphaBand ("Alpha Band", Int) = 0
		[Vector2]_AudioLinkDecal2Alpha ("Alpha Mod", Vector) = (0,0,0,0)
		[Enum(Bass, 0, Low Mid, 1, High Mid, 2, Treble, 3)] _AudioLinkDecal2EmissionBand ("Emission Band", Int) = 0
		[Vector2]_AudioLinkDecal2Emission ("Emission Mod", Vector) = (0,0,0,0)
		[HideInInspector] m_end_Decal2AudioLink ("Audio Link", Float) = 0
		[HideInInspector] m_end_Decal2 ("Decal 0", Float) = 0
		// Decal 3
		[HideInInspector] m_start_Decal3 ("Decal 3--{reference_property:_DecalEnabled3}", Float) = 0
		[HideInInspector][ThryToggle(DEPTH_OF_FIELD_COC_VIEW)]_DecalEnabled3 ("Enable", Float) = 0
		[Enum(R, 0, G, 1, B, 2, A, 3)] _Decal3MaskChannel ("Mask Channel", Int) = 3
		_DecalColor3 ("Color--{reference_property:_DecalColor3ThemeIndex}", Color) = (1, 1, 1, 1)
		[HideInInspector][ThryWideEnum(Off, 0, Theme Color 0, 1, Theme Color 1, 2, Theme Color 2, 3, Theme Color 3, 4, ColorChord 0, 5, ColorChord 1, 6, ColorChord 2, 7, ColorChord 3, 8, AL Theme 0, 9, AL Theme 1, 10, AL Theme 2, 11, AL Theme 3, 12)] _DecalColor3ThemeIndex ("", Int) = 0
		_DecalEmissionStrength3 ("Emission Strength", Range(0, 20)) = 0
		_DecalTexture3 ("Decal--{reference_properties:[_DecalTexture3Pan, _DecalTexture3UV]}", 2D) = "white" { }
		[HideInInspector][Vector2]_DecalTexture3Pan ("Panning", Vector) = (0, 0, 0, 0)
		[HideInInspector][ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3, Panosphere, 4, World Pos XZ, 5, Polar UV, 6, Distorted UV, 7)] _DecalTexture3UV ("UV", Int) = 0
		[ToggleUI]_DecalTiled3 ("Tiled?", Float) = 0
		_Decal3Depth ("Depth", Float) = 0
		[Vector2]_DecalScale3 ("Scale", Vector) = (1, 1, 0, 0)
		_DecalSideOffset3 ("Side Offset ←→↓↑", Vector) = (0, 0, 0, 0)
		[Vector2]_DecalPosition3 ("Position", Vector) = (.5, .5, 0, 0)
		_DecalRotation3 ("Rotation", Range(0, 360)) = 0
		_DecalRotationSpeed3 ("Rotation Speed", Float) = 0
		[ThryWideEnum(Replace, 0, Darken, 1, Multiply, 2, Color Burn, 3, Linear Burn, 4, Lighten, 5, Screen, 6, Color Dodge, 7, Linear Dodge (Add), 8, Overlay, 9, Soft Lighten, 10, Hard Light, 11, Vivid Light, 12, Linear Light, 13, Pin Light, 14, Hard Mix, 15, Difference, 16, Exclusion, 17, Subtract, 18, Divide, 19)]_DecalBlendType3 ("Blending", Range(0, 1)) = 0
		_DecalBlendAlpha3 ("Alpha", Range(0,1)) = 1
		[ToggleUI]_DecalOverideAlpha3 ("Override Alpha", Float) = 0
		[ToggleUI]_DecalHueShiftEnabled3 ("Hue Shift Enabled", Float) = 0
		_DecalHueShiftSpeed3 ("Shift Speed", Float) = 0
		_DecalHueShift3 ("Hue Shift", Range(0,1)) = 0
		_Decal3HueAngleStrength ("Hue Angle Power", Float) = 0
		// Decal 3 Audio Link
		[HideInInspector] m_start_Decal3AudioLink ("Audio Link ♫--{ condition_showS:_EnableAudioLink==1}", Float) = 0
		[Enum(Bass, 0, Low Mid, 1, High Mid, 2, Treble, 3)] _AudioLinkDecal3ScaleBand ("Scale Band", Int) = 0
		_AudioLinkDecal3Scale ("Scale Mod", Vector) = (0,0,0,0)
		[Enum(Bass, 0, Low Mid, 1, High Mid, 2, Treble, 3)] _AudioLinkDecal3SideBand ("Scale Band", Int) = 0
		_AudioLinkDecal3SideMin ("Side Mod Min", Vector) = (0,0,0,0)
		_AudioLinkDecal3SideMax ("Side Mod Max", Vector) = (0,0,0,0)
		[Enum(Bass, 0, Low Mid, 1, High Mid, 2, Treble, 3)] _AudioLinkDecal3RotationBand ("Rotation Band", Int) = 0
		[Vector2]_AudioLinkDecal3Rotation ("Rotation Mod", Vector) = (0,0,0,0)
		[Enum(Bass, 0, Low Mid, 1, High Mid, 2, Treble, 3)] _AudioLinkDecal3AlphaBand ("Alpha Band", Int) = 0
		[Vector2]_AudioLinkDecal3Alpha ("Alpha Mod", Vector) = (0,0,0,0)
		[Enum(Bass, 0, Low Mid, 1, High Mid, 2, Treble, 3)] _AudioLinkDecal3EmissionBand ("Emission Band", Int) = 0
		[Vector2]_AudioLinkDecal3Emission ("Emission Mod", Vector) = (0,0,0,0)
		[ToggleUI]_AudioLinkDecalX("CC Strip X", Float) = 0
		[HideInInspector] m_end_Decal3AudioLink ("Audio Link", Float) = 0
		[HideInInspector] m_end_Decal3 ("Decal 0", Float) = 0
		[HideInInspector] m_end_DecalSection ("Decal", Float) = 0
		
		[HideInInspector] m_start_GlobalThemes ("Global Themes", Float) = 0
		_GlobalThemeColor0 ("Color 0", Color) = (1, 1, 1, 1)
		_GlobalThemeColor1 ("Color 1", Color) = (1, 1, 1, 1)
		_GlobalThemeColor2 ("Color 2", Color) = (1, 1, 1, 1)
		_GlobalThemeColor3 ("Color 3", Color) = (1, 1, 1, 1)
		[HideInInspector] m_end_GlobalThemes ("Global Themes", Float) = 0
		
		// Lighting
		[HideInInspector] m_lightingCategory ("Shading", Float) = 0
		
		[HideInInspector] m_start_PoiLightData ("Light Data ", Float) = 0
		// Lighting Data
		_LightingAOMaps ("AO Maps (expand)--{reference_properties:[_LightingAOMapsPan, _LightingAOMapsUV,_LightDataAOStrengthR,_LightDataAOStrengthG,_LightDataAOStrengthB,_LightDataAOStrengthA]}", 2D) = "white" { }
		[HideInInspector][Vector2]_LightingAOMapsPan ("Panning", Vector) = (0, 0, 0, 0)
		[HideInInspector][ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3, Panosphere, 4, World Pos XZ, 5, Polar UV, 6, Distorted UV, 7)] _LightingAOMapsUV ("UV", Int) = 0
		[HideInInspector]_LightDataAOStrengthR ("R Strength", Range(0, 1)) = 1
		[HideInInspector]_LightDataAOStrengthG ("G Strength", Range(0, 1)) = 0
		[HideInInspector]_LightDataAOStrengthB ("B Strength", Range(0, 1)) = 0
		[HideInInspector]_LightDataAOStrengthA ("A Strength", Range(0, 1)) = 0
		_LightingDetailShadowMaps ("Detail Shadows (expand)--{reference_properties:[_LightingDetailShadowMapsPan, _LightingDetailShadowMapsUV,_LightingDetailShadowStrengthR,_LightingDetailShadowStrengthG,_LightingDetailShadowStrengthB,_LightingDetailShadowStrengthA]}", 2D) = "white" { }
		[HideInInspector][Vector2]_LightingDetailShadowMapsPan ("Panning", Vector) = (0, 0, 0, 0)
		[HideInInspector][ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3, Panosphere, 4, World Pos XZ, 5, Polar UV, 6, Distorted UV, 7)] _LightingDetailShadowMapsUV ("UV", Int) = 0
		[HideInInspector]_LightingDetailShadowStrengthR ("R Strength", Range(0, 1)) = 1
		[HideInInspector]_LightingDetailShadowStrengthG ("G Strength", Range(0, 1)) = 0
		[HideInInspector]_LightingDetailShadowStrengthB ("B Strength", Range(0, 1)) = 0
		[HideInInspector]_LightingDetailShadowStrengthA ("A Strength", Range(0, 1)) = 0
		_LightingShadowMasks ("Shadow Masks (expand)--{reference_properties:[_LightingShadowMasksPan, _LightingShadowMasksUV,_LightingShadowMaskStrengthR,_LightingShadowMaskStrengthG,_LightingShadowMaskStrengthB,_LightingShadowMaskStrengthA]}", 2D) = "white" { }
		[HideInInspector][Vector2]_LightingShadowMasksPan ("Panning", Vector) = (0, 0, 0, 0)
		[HideInInspector][ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3, Panosphere, 4, World Pos XZ, 5, Polar UV, 6, Distorted UV, 7)] _LightingShadowMasksUV ("UV", Int) = 0
		[HideInInspector]_LightingShadowMaskStrengthR ("R Strength", Range(0, 1)) = 1
		[HideInInspector]_LightingShadowMaskStrengthG ("G Strength", Range(0, 1)) = 0
		[HideInInspector]_LightingShadowMaskStrengthB ("B Strength", Range(0, 1)) = 0
		[HideInInspector]_LightingShadowMaskStrengthA ("A Strength", Range(0, 1)) = 0
		// Base Pass
		[Space(15)]
		[ThryHeaderLabel(Base Pass Lighting, 13)]
		[Space(4)]
		[Enum(Poi Custom, 0, Standard, 1, UTS2, 2)] _LightingColorMode ("Light Color Mode", Int) = 0
		[Enum(Poi Custom, 0, Normalized NDotL, 1, Saturated NDotL, 2)] _LightingMapMode ("Light Map Mode", Int) = 0
		[Enum(Poi Custom, 0, Forced Local Direction, 1, Forced World Direction, 2, UTS2, 3)] _LightingDirectionMode ("Light Direction Mode", Int) = 0
		[Vector3]_LightngForcedDirection ("Forced Direction--{condition_showS:(_LightingDirectionMode==1)}", Vector) = (0, 0, 0)
		[ToggleUI]_LightingForceColorEnabled ("Force Light Color", Float) = 0
		_LightingForcedColor ("Forced Color--{condition_showS:(_LightingForceColorEnabled==1), reference_property:_LightingForcedColorThemeIndex}", Color) = (1, 1, 1)
		[HideInInspector][ThryWideEnum(Off, 0, Theme Color 0, 1, Theme Color 1, 2, Theme Color 2, 3, Theme Color 3, 4, ColorChord 0, 5, ColorChord 1, 6, ColorChord 2, 7, ColorChord 3, 8, AL Theme 0, 9, AL Theme 1, 10, AL Theme 2, 11, AL Theme 3, 12)] _LightingForcedColorThemeIndex ("", Int) = 0
		_Unlit_Intensity ("Unlit_Intensity--{condition_showS:(_LightingColorMode==2)}", Range(0.001, 4)) = 1
		[ToggleUI]_LightingCapEnabled ("Limit Brightness", Float) = 1
		_LightingCap ("Max Brightness--{condition_showS:(_LightingCapEnabled==1)}", Range(0, 10)) = 1
		_LightingMinLightBrightness ("Min Direct Brightness", Range(0, 1)) = 0
		_LightingMinLightIndiBrightness ("Min Indirect Brightness", Range(0, 1)) = 0
		_LightingIndirectUsesNormals ("Indirect Uses Normals--{condition_showS:(_LightingColorMode==0)}", Range(0, 1)) = 0
		_LightingCastedShadows ("Receive Casted Shadows", Range(0, 1)) = 0
		_LightingMonochromatic ("Grayscale Lighting?", Range(0, 1)) = 0
		// Lighting Additive
		[Space(15)]
		[ThryHeaderLabel(Add Pass Lighting, 13)]
		[Space(4)]
		[ThryToggle(POI_LIGHT_DATA_ADDITIVE_ENABLE)]_LightingAdditiveEnable ("Enable Additive", Float) = 1
		[ThryToggle(POI_LIGHT_DATA_ADDITIVE_DIRECTIONAL_ENABLE)]_DisableDirectionalInAdd ("Ignore Directional--{condition_showS:(_LightingAdditiveEnable==1)}", Float) = 1
		[ToggleUI]_LightingAdditiveLimited ("Limit Brightness?--{condition_showS:(_LightingAdditiveEnable==1)}", Float) = 0
		_LightingAdditiveLimit ("Max Brightness--{ condition_showS:(_LightingAdditiveLimited==1&&_LightingAdditiveEnable==1)}", Range(0, 10)) = 1
		_LightingAdditiveMonochromatic ("Grayscale Lighting?", Range(0, 1)) = 0
		_LightingAdditivePassthrough ("Point Light Passthrough--{condition_showS:(_LightingAdditiveEnable==1)}", Range(0, 1)) = .5
		// Vertex Lighting
		[Space(15)]
		[ThryHeaderLabel(Vertex Lighting, 13)]
		[Space(4)]
		[ThryToggle(POI_VERTEXLIGHT_ON)]_LightingVertexLightingEnabled ("Enabled", Float) = 1
		// Lighting Data Debug
		[Space(15)]
		[ThryHeaderLabel(Debug Visualization, 13)]
		[Space(4)]
		[ThryToggle(POI_LIGHT_DATA_DEBUG)]_LightDataDebugEnabled ("Debug", Float) = 0
		[ThryWideEnum(Direct Color, 0, Indirect Color, 1, Light Map, 2, Attenuation, 3, N Dot L, 4, Half Dir, 5, Direction, 6, Add Color, 7, Add Attenuation, 8, Add Shadow, 9, Add N Dot L, 10)] _LightingDebugVisualize ("Visualize--{condition_showS:(_LightDataDebugEnabled==1)}", Int) = 0
		
		[HideInInspector] m_end_PoiLightData ("Light Data", Float) = 0
		
		[HideInInspector] m_start_PoiShading (" Shading--{reference_property:_ShadingEnabled}", Float) = 0
		[HideInInspector][ThryToggle(VIGNETTE_MASKED)]_ShadingEnabled ("Enable Shading", Float) = 1
		[ThryHeaderLabel(Base Pass Shading, 13)]
		[Space(4)]
		[KeywordEnum(TextureRamp, MathRamp, Wrapped, Skin, ShadeMap, Flat, Realistic, Cloth, )] _LightingMode ("Lighting Type", Float) = 5
		_LightingShadowColor ("Shadow Tint--{condition_showS:(_LightingMode!=4)}", Color) = (1, 1, 1)
		[Gradient]_ToonRamp ("Lighting Ramp--{texture:{width:512,height:4,filterMode:Bilinear,wrapMode:Clamp},force_texture_options:true,condition_showS:(_LightingMode==0)}", 2D) = "white" { }
		_ShadowOffset ("Ramp Offset--{condition_showS:(_LightingMode==0)}", Range(-1, 1)) = 0
		_LightingGradientStart ("Gradient Start--{condition_showS:(_LightingMode==1)}", Range(0, 1)) = 0
		_LightingGradientEnd ("Gradient End--{condition_showS:(_LightingMode==1)}", Range(0, 1)) = .5
		_LightingGradientStartWrap ("Gradient Start--{condition_showS:(_LightingMode==2)}", Range(0, 1)) = 0
		_LightingGradientEndWrap ("Gradient End--{condition_showS:(_LightingMode==2)}", Range(0, 1)) = .5
		
		// Shade Maps
		_1st_ShadeColor ("1st ShadeColor--{condition_showS:(_LightingMode==4)}", Color) = (1, 1, 1)
		_1st_ShadeMap ("1st ShadeMap--{reference_properties:[_1st_ShadeMapPan, _1st_ShadeMapUV, _Use_1stShadeMapAlpha_As_ShadowMask, _1stShadeMapMask_Inverse],condition_showS:(_LightingMode==4)}", 2D) = "white" { }
		[HideInInspector][Vector2]_1st_ShadeMapPan ("Panning", Vector) = (0, 0, 0, 0)
		[HideInInspector][ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3, Panosphere, 4, World Pos XZ, 5, Polar UV, 6, Distorted UV, 7)] _1st_ShadeMapUV ("UV", Int) = 0
		[HideInInspector][ToggleUI]_Use_1stShadeMapAlpha_As_ShadowMask ("1st ShadeMap.a As ShadowMask", Float) = 0
		[HideInInspector][ToggleUI]_1stShadeMapMask_Inverse ("1st ShadeMapMask Inverse", Float) = 0
		[ToggleUI] _Use_BaseAs1st ("Use BaseMap as 1st ShadeMap--{condition_showS:(_LightingMode==4)}", Float) = 0
		_2nd_ShadeColor ("2nd ShadeColor--{condition_showS:(_LightingMode==4)}", Color) = (1, 1, 1, 1)
		_2nd_ShadeMap ("2nd ShadeMap--{reference_properties:[_2nd_ShadeMapPan, _2nd_ShadeMapUV, _Use_2ndShadeMapAlpha_As_ShadowMask, _2ndShadeMapMask_Inverse],condition_showS:(_LightingMode==4)}", 2D) = "white" { }
		[HideInInspector][Vector2]_2nd_ShadeMapPan ("Panning", Vector) = (0, 0, 0, 0)
		[HideInInspector][ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3, Panosphere, 4, World Pos XZ, 5, Polar UV, 6, Distorted UV, 7)] _2nd_ShadeMapUV ("UV", Int) = 0
		[HideInInspector][ToggleUI]_Use_2ndShadeMapAlpha_As_ShadowMask ("2nd ShadeMap.a As ShadowMask", Float) = 0
		[HideInInspector][ToggleUI]_2ndShadeMapMask_Inverse ("2nd ShadeMapMask Inverse", Float) = 0
		[ToggleUI] _Use_1stAs2nd ("Use 1st ShadeMap as 2nd_ShadeMap--{condition_showS:(_LightingMode==4)}", Float) = 0
		_BaseColor_Step ("BaseColor_Step--{condition_showS:(_LightingMode==4)}", Range(0.01, 1)) = 0.5
		_BaseShade_Feather ("Base/Shade_Feather--{condition_showS:(_LightingMode==4)}", Range(0.0001, 1)) = 0.0001
		_ShadeColor_Step ("ShadeColor_Step--{condition_showS:(_LightingMode==4)}", Range(0, 1)) = 0
		_1st2nd_Shades_Feather ("1st/2nd_Shades_Feather--{condition_showS:(_LightingMode==4)}", Range(0.0001, 1)) = 0.0001
		[Enum(Replace, 0, Multiply, 1)]_ShadingShadeMapBlendType ("Blend Mode--{condition_showS:(_LightingMode==4)}", Int) = 0
		//DJ Wrapped
		_LightingWrappedWrap ("Wrap--{condition_showS:(_LightingMode==2)}", Range(0, 2)) = 0
		_LightingWrappedNormalization ("Normalization--{condition_showS:(_LightingMode==2)}", Range(0, 1)) = 0
		// Realistic
		_LightingStandardSmoothness ("Smoothness--{condition_showS:(_LightingMode==6)}", Range(0, 1)) = 0
		// Skin Shading
		_SkinLUT ("LUT--{condition_showS:(_LightingMode==3)}", 2D) = "white" { }
		_SssScale ("Scale--{condition_showS:(_LightingMode==3)}", Range(0, 1)) = 1
		[HideInInspector]_SssBumpBlur ("Bump Blur--{condition_showS:(_LightingMode==3)}", Range(0, 1)) = 0.7
		[HideInInspector][Vector3]_SssTransmissionAbsorption ("Absorption--{condition_showS:(_LightingMode==3)}", Vector) = (-8, -40, -64, 0)
		[HideInInspector][Vector3]_SssColorBleedAoWeights ("AO Color Bleed--{condition_showS:(_LightingMode==3)}", Vector) = (0.4, 0.15, 0.13, 0)
		// Cloth
		[NonModifiableTextureData] [NoScaleOffset] _ClothDFG ("MultiScatter Cloth DFG--{condition_showS:(_LightingMode==7)}", 2D) = "black" { }
		[ThryTexture] _ClothMetallicSmoothnessMap ("Metallic (R) ClothMask (G) Reflectance (B) Smoothness (A) Map--{reference_properties:[_ClothMetallicSmoothnessMapPan, _ClothMetallicSmoothnessMapUV, _ClothMetallicSmoothnessMapInvert],condition_showS:(_LightingMode==7)}", 2D) = "white" { }
		[HideInInspector][Vector2] _ClothMetallicSmoothnessMapPan ("Panning", Vector) = (0, 0, 0, 0)
		[HideInInspector][ToggleUI] _ClothMetallicSmoothnessMapInvert ("Invert Smoothness", Float) = 0
		[HideInInspector][ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3, Panosphere, 4, World Pos XZ, 5, Polar UV, 6, Distorted UV, 7)] _ClothMetallicSmoothnessMapUV ("UV", Int) = 0
		[ThryToggle(POI_CLOTHLERP)] _ClothLerp ("Clothmask Lerp--{condition_showS:(_LightingMode==7)}", Float) = 0
		[Gamma] _ClothMetallic ("Metallic--{condition_showS:(_LightingMode==7)}", Range(0, 1)) = 0
		_ClothReflectance ("Reflectance--{condition_showS:(_LightingMode==7)}", Range(0.35, 1)) = 0.5
		_ClothSmoothness ("Smoothness--{condition_showS:(_LightingMode==7)}", Range(0, 1)) = 0.5
		
		// Generic
		_ShadowStrength ("Shadow Strength--{condition_showS:(_LightingMode<=4)}", Range(0, 1)) = 1
		_LightingIgnoreAmbientColor ("Ignore Ambient Color--{condition_showS:(_LightingMode<=3)}", Range(0, 1)) = 0
		
		// Additive
		[Space(15)]
		[ThryHeaderLabel(Add Pass Shading, 13)]
		[Space(4)]
		[Enum(Realistic, 0, Toon, 1, Wrapped soon.jpg, 2)] _LightingAdditiveType ("Lighting Type", Int) = 1
		_LightingAdditiveGradientStart ("Gradient Start", Range(0, 1)) = 0
		_LightingAdditiveGradientEnd ("Gradient End", Range(0, 1)) = .5
		//_LightingAdditiveDetailStrength ("Detail Shadow Strength", Range(0, 1)) = 1 //TODO-implement this
		[ToggleUI]_LightingAdditiveLimitIntensity ("Limit Intensity", Float) = 0
		_LightingAdditiveMaxIntensity ("Max Intensity--{condition_show:{type:PROPERTY_BOOL,data:_LightingAdditiveLimitIntensity==1}}", Range(0, 10)) = 1
		
		[HideInInspector] m_end_PoiShading ("Shading", Float) = 0
		
		// First Matcap
		[HideInInspector] m_start_matcap ("Matcap / Sphere Textures--{reference_property:_MatcapEnable}", Float) = 0
		[HideInInspector][ThryToggle(POI_MATCAP0)]_MatcapEnable ("Enable Matcap", Float) = 0
		[ThryWideEnum(UTS Style, 0, Top Pinch, 1, Double Sided, 2)] _MatcapUVMode ("UV Mode", Int) = 1
		_MatcapColor ("Color--{reference_property:_MatcapColorThemeIndex}", Color) = (1, 1, 1, 1)
		[HideInInspector][ThryWideEnum(Off, 0, Theme Color 0, 1, Theme Color 1, 2, Theme Color 2, 3, Theme Color 3, 4, ColorChord 0, 5, ColorChord 1, 6, ColorChord 2, 7, ColorChord 3, 8, AL Theme 0, 9, AL Theme 1, 10, AL Theme 2, 11, AL Theme 3, 12)] _MatcapColorThemeIndex ("", Int) = 0
		[TextureNoSO]_Matcap ("Matcap", 2D) = "white" { }
		_MatcapBorder ("Border", Range(0, .5)) = 0.43
		_MatcapMask ("Mask--{reference_properties:[_MatcapMaskPan, _MatcapMaskUV, _MatcapMaskInvert]}", 2D) = "white" { }
		[HideInInspector][Vector2]_MatcapMaskPan ("Panning", Vector) = (0, 0, 0, 0)
		[HideInInspector][ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3, Panosphere, 4, World Pos XZ, 5, Polar UV, 6, Distorted UV, 7)] _MatcapMaskUV ("UV", Int) = 0
		[HideInInspector][ToggleUI]_MatcapMaskInvert ("Invert", Float) = 0
		_MatcapEmissionStrength ("Emission Strength", Range(0, 20)) = 0
		_MatcapIntensity ("Intensity", Range(0, 5)) = 1
		_MatcapLightMask ("Hide in Shadow", Range(0, 1)) = 0
		_MatcapReplace ("Replace With Matcap", Range(0, 1)) = 1
		_MatcapMultiply ("Multiply Matcap", Range(0, 1)) = 0
		_MatcapAdd ("Add Matcap", Range(0, 1)) = 0
		_MatcapAlphaOverride ("Override Alpha", Range(0, 1)) = 0
		[Enum(Vertex, 0, Pixel, 1)] _MatcapNormal ("Normal to use", Int) = 1
		
		[Space(10)]
		[ThryHeaderLabel(Custom Normal, 13)]
		[Space(4)]
		[ThryToggle(POI_MATCAP0_CUSTOM_NORMAL)]_Matcap0CustomNormal ("Custom Normal", Float) = 0
		[Normal]_Matcap0NormalMap ("Normal Map--{reference_properties:[_Matcap0NormalMapPan, _Matcap0NormalMapUV, _Matcap0NormalMapScale]}", 2D) = "bump" { }
		[HideInInspector][Vector2]_Matcap0NormalMapPan ("Panning", Vector) = (0, 0, 0, 0)
		[HideInInspector][ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3, Panosphere, 4, World Pos XZ, 5, Polar UV, 6, Distorted UV, 7)] _Matcap0NormalMapUV ("UV", Int) = 0
		[HideInInspector]_Matcap0NormalMapScale ("Intensity", Range(0, 10)) = 1
		
		[Space(10)]
		[ThryHeaderLabel(Hue Shift, 13)]
		[Space(4)]
		[ToggleUI]_MatcapHueShiftEnabled ("Enabled", Float) = 0
		_MatcapHueShiftSpeed ("Shift Speed", Float) = 0
		_MatcapHueShift ("Hue Shift", Range(0, 1)) = 0
		[HideInInspector] m_end_matcap ("Matcap", Float) = 0
		
		// Second Matcap
		[HideInInspector] m_start_Matcap2 ("Matcap 2--{reference_property:_Matcap2Enable}", Float) = 0
		[HideInInspector][ThryToggle(COLOR_GRADING_HDR_3D)]_Matcap2Enable ("Enable Matcap 2", Float) = 0
		[ThryWideEnum(UTS Style, 0, Top Pinch, 1, Double Sided, 2)] _Matcap2UVMode ("UV Mode", Int) = 1
		_Matcap2Color ("Color--{reference_property:_Matcap2ColorThemeIndex}", Color) = (1, 1, 1, 1)
		[HideInInspector][ThryWideEnum(Off, 0, Theme Color 0, 1, Theme Color 1, 2, Theme Color 2, 3, Theme Color 3, 4, ColorChord 0, 5, ColorChord 1, 6, ColorChord 2, 7, ColorChord 3, 8, AL Theme 0, 9, AL Theme 1, 10, AL Theme 2, 11, AL Theme 3, 12)] _Matcap2ColorThemeIndex ("", Int) = 0
		[TextureNoSO]_Matcap2 ("Matcap", 2D) = "white" { }
		_Matcap2Border ("Border", Range(0, .5)) = 0.43
		_Matcap2Mask ("Mask--{reference_properties:[_Matcap2MaskPan, _Matcap2MaskUV, _Matcap2MaskInvert]}", 2D) = "white" { }
		[HideInInspector][Vector2]_Matcap2MaskPan ("Panning", Vector) = (0, 0, 0, 0)
		[HideInInspector][ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3, Panosphere, 4, World Pos XZ, 5, Polar UV, 6, Distorted UV, 7)] _Matcap2MaskUV ("UV", Int) = 0
		[HideInInspector][ToggleUI]_Matcap2MaskInvert ("Invert", Float) = 0
		_Matcap2EmissionStrength ("Emission Strength", Range(0, 20)) = 0
		_Matcap2Intensity ("Intensity", Range(0, 5)) = 1
		_Matcap2LightMask ("Hide in Shadow", Range(0, 1)) = 0
		_Matcap2Replace ("Replace With Matcap", Range(0, 1)) = 0
		_Matcap2Multiply ("Multiply Matcap", Range(0, 1)) = 0
		_Matcap2Add ("Add Matcap", Range(0, 1)) = 0
		_Matcap2AlphaOverride ("Override Alpha", Range(0, 1)) = 0
		[Enum(Vertex, 0, Pixel, 1)] _Matcap2Normal ("Normal to use", Int) = 1
		
		[Space(10)]
		[ThryHeaderLabel(Custom Normal, 13)]
		[Space(4)]
		[ThryToggle(POI_MATCAP1_CUSTOM_NORMAL)]_Matcap1CustomNormal ("Custom Normal", Float) = 0
		[Normal]_Matcap1NormalMap ("Normal Map--{reference_properties:[_Matcap1NormalMapPan, _Matcap1NormalMapUV, _Matcap1NormalMapScale]}", 2D) = "bump" { }
		[HideInInspector][Vector2]_Matcap1NormalMapPan ("Panning", Vector) = (0, 0, 0, 0)
		[HideInInspector][ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3, Panosphere, 4, World Pos XZ, 5, Polar UV, 6, Distorted UV, 7)] _Matcap1NormalMapUV ("UV", Int) = 0
		[HideInInspector]_Matcap1NormalMapScale ("Intensity", Range(0, 10)) = 1
		
		[Space(10)]
		[ThryHeaderLabel(Hue Shift, 13)]
		[Space(4)]
		[ToggleUI]_Matcap2HueShiftEnabled ("Enabled", Float) = 0
		_Matcap2HueShiftSpeed ("Shift Speed", Float) = 0
		_Matcap2HueShift ("Hue Shift", Range(0, 1)) = 0
		[HideInInspector] m_end_Matcap2 ("Matcap 2", Float) = 0
		
		// First CubeMap
		[HideInInspector] m_start_CubeMap ("CubeMap--{reference_property:_CubeMapEnabled}", Float) = 0
		[HideInInspector][ThryToggle(_CUBEMAP)]_CubeMapEnabled ("Enable CubeMap", Float) = 0
		[ThryWideEnum(Skybox, 0, Reflection, 1)] _CubeMapUVMode ("UV Mode", Int) = 1
		_CubeMapColor ("Color--{reference_property:_CubeMapColorThemeIndex}", Color) = (1, 1, 1, 1)
		[HideInInspector][ThryWideEnum(Off, 0, Theme Color 0, 1, Theme Color 1, 2, Theme Color 2, 3, Theme Color 3, 4, ColorChord 0, 5, ColorChord 1, 6, ColorChord 2, 7, ColorChord 3, 8, AL Theme 0, 9, AL Theme 1, 10, AL Theme 2, 11, AL Theme 3, 12)] _CubeMapColorThemeIndex ("", Int) = 0
		[TextureNoSO]_CubeMap ("CubeMap", Cube) = "" { }
		_CubeMapMask ("Mask--{reference_properties:[_CubeMapMaskPan, _CubeMapMaskUV, _CubeMapMaskInvert]}", 2D) = "white" { }
		[HideInInspector][Vector2]_CubeMapMaskPan ("Panning", Vector) = (0, 0, 0, 0)
		[HideInInspector][ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3, Panosphere, 4, World Pos XZ, 5, Polar UV, 6, Distorted UV, 7)] _CubeMapMaskUV ("UV", Int) = 0
		[HideInInspector][ToggleUI]_CubeMapMaskInvert ("Invert", Float) = 0
		_CubeMapEmissionStrength ("Emission Strength", Range(0, 20)) = 0
		_CubeMapIntensity ("Color Strength", Range(0, 5)) = 1
		_CubeMapLightMask ("Hide in Shadow", Range(0, 1)) = 0
		_CubeMapReplace ("Replace With CubeMap", Range(0, 1)) = 1
		_CubeMapMultiply ("Multiply CubeMap", Range(0, 1)) = 0
		_CubeMapAdd ("Add CubeMap", Range(0, 1)) = 0
		[Enum(Vertex, 0, Pixel, 1)] _CubeMapNormal ("Normal to use", Int) = 1
		
		[Space(10)]
		[ThryHeaderLabel(Hue Shift, 13)]
		[Space(4)]
		[ToggleUI]_CubeMapHueShiftEnabled ("Enabled", Float) = 0
		_CubeMapHueShiftSpeed ("Shift Speed--{condition_showS:(_CubeMapHueShiftEnabled==1)}", Float) = 0
		_CubeMapHueShift ("Hue Shift--{condition_showS:(_CubeMapHueShiftEnabled==1)}", Range(0, 1)) = 0
		[HideInInspector] m_end_CubeMap ("CubeMap", Float) = 0
		
		// Rim Lighting
		[HideInInspector] m_start_rimLightOptions ("Rim Lighting--{reference_property:_EnableRimLighting}", Float) = 0
		[HideInInspector][ThryToggle(_GLOSSYREFLECTIONS_OFF)]_EnableRimLighting ("Enable Rim Lighting", Float) = 0
		[Enum(vertex, 0, pixel, 1)] _RimLightNormal ("Normal Select", Int) = 1
		[ToggleUI]_RimLightingInvert ("Invert Rim Lighting", Float) = 0
		_RimLightColor ("Rim Color--{reference_property:_RimLightColorThemeIndex}", Color) = (1, 1, 1, 1)
		[HideInInspector][ThryWideEnum(Off, 0, Theme Color 0, 1, Theme Color 1, 2, Theme Color 2, 3, Theme Color 3, 4, ColorChord 0, 5, ColorChord 1, 6, ColorChord 2, 7, ColorChord 3, 8, AL Theme 0, 9, AL Theme 1, 10, AL Theme 2, 11, AL Theme 3, 12)] _RimLightColorThemeIndex ("", Int) = 0
		_RimWidth ("Rim Width", Range(0, 1)) = 0.8
		_RimSharpness ("Rim Sharpness", Range(0, 1)) = .25
		_RimStrength ("Rim Emission", Range(0, 20)) = 0
		_RimBrighten ("Rim Color Brighten", Range(0, 3)) = 0
		_RimLightColorBias ("Rim Color Bias", Range(0, 1)) = 1
		_RimTex ("Rim Texture--{reference_properties:[_RimTexPan, _RimTexUV]}", 2D) = "white" { }
		[HideInInspector][Vector2]_RimTexPan ("Panning", Vector) = (0, 0, 0, 0)
		[HideInInspector][ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3, Panosphere, 4, World Pos XZ, 5, Polar UV, 6, Distorted UV, 7)] _RimTexUV ("UV", Int) = 0
		_RimMask ("Rim Mask--{reference_properties:[_RimMaskPan, _RimMaskUV]}", 2D) = "white" { }
		[HideInInspector][Vector2]_RimMaskPan ("Panning", Vector) = (0, 0, 0, 0)
		[HideInInspector][ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3, Panosphere, 4, World Pos XZ, 5, Polar UV, 6, Distorted UV, 7)] _RimMaskUV ("UV", Int) = 0
		
		[Space(10)]
		[ThryToggleUI(true)] _RimHueShiftEnabled ("<size=13><b>  Hue Shift</b></size>", Float) = 0
		_RimHueShiftSpeed ("Shift Speed--{condition_showS:(_RimHueShiftEnabled==1)}", Float) = 0
		_RimHueShift ("Hue Shift--{condition_showS:(_RimHueShiftEnabled==1)}", Range(0, 1)) = 0
		[HideInInspector] m_end_rimLightOptions ("Rim Lighting", Float) = 0
		
		[HideInInspector] m_start_brdf ("Reflections & Specular--{reference_property:_MochieBRDF}", Float) = 0
		[HideInInspector][ThryToggle(MOCHIE_PBR)]_MochieBRDF ("Enable", Float) = 0
		
		_MochieReflectionStrength ("Reflections", Range(0, 1)) = 1
		_MochieSpecularStrength ("Specular", Range(0, 1)) = 1
		_MochieMetallicMultiplier ("Metallic", Range(0, 1)) = 0
		_MochieRoughnessMultiplier ("Smoothness", Range(0, 1)) = 1
		
		_MochieReflectionTint ("Reflection Tint--{reference_property:_MochieReflectionTintThemeIndex}", Color) = (1, 1, 1, 1)
		[HideInInspector][ThryWideEnum(Off, 0, Theme Color 0, 1, Theme Color 1, 2, Theme Color 2, 3, Theme Color 3, 4, ColorChord 0, 5, ColorChord 1, 6, ColorChord 2, 7, ColorChord 3, 8, AL Theme 0, 9, AL Theme 1, 10, AL Theme 2, 11, AL Theme 3, 12)] _MochieReflectionTintThemeIndex ("", Int) = 0
		_MochieSpecularTint ("Specular Tint--{reference_property:_MochieSpecularTintThemeIndex}", Color) = (1, 1, 1, 1)
		[HideInInspector][ThryWideEnum(Off, 0, Theme Color 0, 1, Theme Color 1, 2, Theme Color 2, 3, Theme Color 3, 4, ColorChord 0, 5, ColorChord 1, 6, ColorChord 2, 7, ColorChord 3, 8, AL Theme 0, 9, AL Theme 1, 10, AL Theme 2, 11, AL Theme 3, 12)] _MochieSpecularTintThemeIndex ("", Int) = 0
		[Space(8)]
		
		[RGBAAtlas(Metallic Map, Smoothness Map, Reflection Mask, Specular Mask)]_MochieMetallicMaps ("Maps [Expand]--{reference_properties:[_MochieMetallicMapsPan, _MochieMetallicMapsUV, _MochieMetallicMapInvert, _MochieRoughnessMapInvert, _MochieReflectionMaskInvert, _MochieSpecularMaskInvert]}", 2D) = "white" { }
		[HideInInspector][Vector2]_MochieMetallicMapsPan ("Panning", Vector) = (0, 0, 0, 0)
		[HideInInspector][ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3, Panosphere, 4, World Pos XZ, 5, Polar UV, 6, Distorted UV, 7)]_MochieMetallicMapsUV ("UV", Int) = 0
		[HideInInspector][ToggleUI]_MochieMetallicMapInvert ("Invert Metallic", Float) = 0
		[HideInInspector][ToggleUI]_MochieRoughnessMapInvert ("Invert Smoothness", Float) = 0
		[HideInInspector][ToggleUI]_MochieReflectionMaskInvert ("Invert Reflection Mask", Float) = 0
		[HideInInspector][ToggleUI]_MochieSpecularMaskInvert ("Invert Specular Mask", Float) = 0
		[Space(8)]
		
		[ThryTexture][NoScaleOffset]_MochieReflCube ("Fallback Cubemap", Cube) = "" { }
		[ToggleUI]_MochieForceFallback ("Force Fallback", Int) = 0
		[ToggleUI]_MochieLitFallback ("Lit Fallback", Float) = 0
		
		[HideInInspector] m_end_brdf ("", Float) = 0
		
		[HideInInspector] m_start_clearCoat ("Clear Coat--{reference_property:_EnableClearCoat}", Float) = 0
		[HideInInspector][ThryToggle(_COLORCOLOR_ON)]_EnableClearCoat ("Enable Clear Coat", Float) = 0
		_ClearCoatSmoothnessMap ("Smoothness Map--{reference_properties:[_ClearCoatSmoothnessMapPan, _ClearCoatSmoothnessMapUV, _ClearCoatInvertSmoothness]}", 2D) = "white" { }
		[HideInInspector][Vector2]_ClearCoatSmoothnessMapPan ("Panning", Vector) = (0, 0, 0, 0)
		[HideInInspector][ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3, Panosphere, 4, World Pos XZ, 5, Polar UV, 6, Distorted UV, 7)]_ClearCoatSmoothnessMapUV ("UV", Int) = 0
		[HideInInspector][ToggleUI]_ClearCoatInvertSmoothness ("Invert Smoothness", Range(0, 1)) = 0
		
		_ClearCoatMask ("Mask--{reference_properties:[_ClearCoatMaskPan, _ClearCoatMaskUV]}", 2D) = "white" { }
		[HideInInspector][Vector2]_ClearCoatMaskPan ("Panning", Vector) = (0, 0, 0, 0)
		[HideInInspector][ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3, Panosphere, 4, World Pos XZ, 5, Polar UV, 6, Distorted UV, 7)]_ClearCoatMaskUV ("UV", Int) = 0
		
		[NoScaleOffset]_ClearCoatCubeMap ("Fallback Cubemap", Cube) = "" { }
		
		[ThryWideEnum(Vertex, 0, Pixel, 1)]_ClearCoatNormal("Normal Select", Int) = 0
		
		_ClearCoatTint ("Reflection Tint--{reference_property:_ClearCoatTintThemeIndex}", Color) = (1, 1, 1)
		[HideInInspector][ThryWideEnum(Off, 0, Theme Color 0, 1, Theme Color 1, 2, Theme Color 2, 3, Theme Color 3, 4, ColorChord 0, 5, ColorChord 1, 6, ColorChord 2, 7, ColorChord 3, 8, AL Theme 0, 9, AL Theme 1, 10, AL Theme 2, 11, AL Theme 3, 12)] _ClearCoatTintThemeIndex ("", Int) = 0
		_ClearCoat ("Clear Coat", Range(0, 1)) = 1
		_ClearCoatSmoothness ("Smoothness", Range(0, 1)) = 0
		[ToggleUI]_ClearCoatSampleWorld ("World Reflections", Int) = 1
		[ToggleUI]_ClearCoatForceLighting ("Force Lighting", Int) = 0
		[HideInInspector] m_end_clearCoat ("Clear Coat", Float) = 0
		
		[HideInInspector] m_start_reflectionRim ("Environmental Rim--{reference_property:_EnableEnvironmentalRim}", Float) = 0
		[HideInInspector][ThryToggle(POI_ENVIRORIM)]_EnableEnvironmentalRim ("Enable", Float) = 0
		_RimEnviroMask ("Mask--{reference_properties:[_RimEnviroMaskPan, _RimEnviroMaskUV]}", 2D) = "white" { }
		[HideInInspector][Vector2]_RimEnviroMaskPan ("Panning", Vector) = (0, 0, 0, 0)
		[HideInInspector][ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3, Panosphere, 4, World Pos XZ, 5, Polar UV, 6, Distorted UV, 7)]_RimEnviroMaskUV ("UV", Int) = 0
		_RimEnviroBlur ("Blur", Range(0, 1)) = 0.7
		_RimEnviroWidth ("Rim Width", Range(0, 1)) = 0.45
		_RimEnviroSharpness ("Rim Sharpness", Range(0, 1)) = 0
		_RimEnviroMinBrightness ("Min Brightness Threshold", Range(0, 2)) = 0
		_RimEnviroIntensity ("Intensity", Range(0, 1)) = 1
		[HideInInspector] m_end_reflectionRim ("", Float) = 0
		
		[HideInInspector] m_start_stylizedSpec (" Stylized Specular--{reference_property:_StylizedSpecular}", Float) = 0
		[HideInInspector][ThryToggle(POI_STYLIZED_StylizedSpecular)]_StylizedSpecular ("Enable", Float) = 0
		
		[ThryTexture]_HighColor_Tex ("Specular Map--{reference_properties:[_HighColor_TexPan, _HighColor_TexUV]}", 2D) = "white" { }
		[HideInInspector][Vector2]_HighColor_TexPan ("Panning", Vector) = (0, 0, 0, 0)
		[HideInInspector][ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3, Panosphere, 4, World Pos XZ, 5, Polar UV, 6, Distorted UV, 7)]_HighColor_TexUV ("UV", Int) = 0
		_HighColor ("Tint--{reference_property:_HighColorThemeIndex}", Color) = (1, 1, 1, 1)
		[HideInInspector][ThryWideEnum(Off, 0, Theme Color 0, 1, Theme Color 1, 2, Theme Color 2, 3, Theme Color 3, 4, ColorChord 0, 5, ColorChord 1, 6, ColorChord 2, 7, ColorChord 3, 8, AL Theme 0, 9, AL Theme 1, 10, AL Theme 2, 11, AL Theme 3, 12)] _HighColorThemeIndex ("", Int) = 0
		_Set_HighColorMask ("Mask--{reference_properties:[_Set_HighColorMaskPan, _Set_HighColorMaskUV, _Tweak_HighColorMaskLevel]}", 2D) = "white" { }
		[HideInInspector][Vector2]_Set_HighColorMaskPan ("Panning", Vector) = (0, 0, 0, 0)
		[HideInInspector][ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3, Panosphere, 4, World Pos XZ, 5, Polar UV, 6, Distorted UV, 7)]_Set_HighColorMaskUV ("UV", Int) = 0
		[HideInInspector]_Tweak_HighColorMaskLevel ("Mask Level", Range(-1, 1)) = 0
		[ThryWideEnum(Toon, 0, Realistic, 1)]_Is_SpecularToHighColor ("Specular Mode", Float) = 0
		[ThryWideEnum(Replace, 0, Add, 1)]_Is_BlendAddToHiColor ("Color Blend Mode", Int) = 0
		
		_StylizedSpecularStrength ("Strength", Float) = 1
		[ToggleUI] _UseLightColor ("Use Light Color", Float) = 1
		[Space(8)]
		
		[ThryHeaderLabel(Layer 1, 13)]
		_HighColor_Power ("Size", Range(0, 1)) = 0.2
		_StylizedSpecularFeather ("Feather", Range(0, 1)) = 0
		_Layer1Strength ("Strength", Range(0, 1)) = 1
		[Space(8)]
		
		[ThryHeaderLabel(Layer 2, 13)]
		_Layer2Size ("Size", Range(0, 1)) = 0
		_StylizedSpecular2Feather ("Feather", Range(0, 1)) = 0
		_Layer2Strength ("Strength", Range(0, 1)) = 0
		[HideInInspector] m_end_stylizedSpec ("", Float) = 0
		
		// Rendering Options
		[HideInInspector] m_specialFXCategory ("Special FX", Float) = 0
		// SPECIALFX_PROPERTIES
		
		// UDIM Discard
		[HideInInspector] m_start_udimdiscardOptions ("UDIM Discard--{reference_property:_EnableUDIMDiscardOptions}", Float) = 0
		[HideInInspector][ThryToggle(POI_UDIMDISCARD)]_EnableUDIMDiscardOptions ("Enable UDIM Discard Options", Float) = 0
		[ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3)]_UDIMDiscardUV ("Discard UV", Int) = 0
		[Enum(Vertex, 0, Pixel, 1)] _UDIMDiscardMode ("Discard Mode", Int) = 1
		[Vector4Toggles]_UDIMDiscardRow3 ("y = 3", Vector) = (1,1,1,1)
		[Vector4Toggles]_UDIMDiscardRow2 ("y = 2", Vector) = (1,1,1,1)
		[Vector4Toggles]_UDIMDiscardRow1 ("y = 1", Vector) = (1,1,1,1)
		[Vector4Toggles]_UDIMDiscardRow0 ("y = 0", Vector) = (1,1,1,1)
		[HideInInspector] m_end_udimdiscardOptions ("UDIM Discard", Float) = 0
		
		// Dissolve
		[HideInInspector] m_start_dissolve ("Dissolve--{reference_property:_EnableDissolve}", Float) = 0
		[HideInInspector][ThryToggle(DISTORT)]_EnableDissolve ("Enable Dissolve", Float) = 0
		[Enum(Basic, 1, Point2Point, 2)] _DissolveType ("Dissolve Type", Int) = 1
		_DissolveEdgeWidth ("Edge Width", Range(0, .5)) = 0.025
		_DissolveEdgeHardness ("Edge Hardness", Range(0, 1)) = 0.5
		_DissolveEdgeColor ("Edge Color--{reference_property:_DissolveEdgeColorThemeIndex}", Color) = (1, 1, 1, 1)
		[HideInInspector][ThryWideEnum(Off, 0, Theme Color 0, 1, Theme Color 1, 2, Theme Color 2, 3, Theme Color 3, 4, ColorChord 0, 5, ColorChord 1, 6, ColorChord 2, 7, ColorChord 3, 8, AL Theme 0, 9, AL Theme 1, 10, AL Theme 2, 11, AL Theme 3, 12)] _DissolveEdgeColorThemeIndex ("", Int) = 0
		[Gradient]_DissolveEdgeGradient ("Edge Gradient", 2D) = "white" { }
		_DissolveEdgeEmission ("Edge Emission", Range(0, 20)) = 0
		_DissolveTextureColor ("Dissolved Color--{reference_property:_DissolveTextureColorThemeIndex}", Color) = (1, 1, 1, 1)
		[HideInInspector][ThryWideEnum(Off, 0, Theme Color 0, 1, Theme Color 1, 2, Theme Color 2, 3, Theme Color 3, 4, ColorChord 0, 5, ColorChord 1, 6, ColorChord 2, 7, ColorChord 3, 8, AL Theme 0, 9, AL Theme 1, 10, AL Theme 2, 11, AL Theme 3, 12)] _DissolveTextureColorThemeIndex ("", Int) = 0
		_DissolveToTexture ("Dissolved Texture--{reference_properties:[_DissolveToTexturePan, _DissolveToTextureUV]}", 2D) = "white" { }
		[HideInInspector][Vector2]_DissolveToTexturePan ("Panning", Vector) = (0, 0, 0, 0)
		[HideInInspector][ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3, Panosphere, 4, World Pos XZ, 5, Polar UV, 6, Distorted UV, 7)] _DissolveToTextureUV ("UV", Int) = 0
		_DissolveToEmissionStrength ("Dissolved Emission Strength", Range(0, 20)) = 0
		_DissolveNoiseTexture ("Dissolve Gradient--{reference_properties:[_DissolveNoiseTexturePan, _DissolveNoiseTextureUV]}", 2D) = "white" { }
		[HideInInspector][Vector2]_DissolveNoiseTexturePan ("Panning", Vector) = (0, 0, 0, 0)
		[HideInInspector][ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3, Panosphere, 4, World Pos XZ, 5, Polar UV, 6, Distorted UV, 7)] _DissolveNoiseTextureUV ("UV", Int) = 0
		[HideInInspector][ToggleUI]_DissolveInvertNoise ("Invert?", Float) = 0
		_DissolveDetailNoise ("Dissolve Noise--{reference_properties:[_DissolveDetailNoisePan, _DissolveDetailNoiseUV]}", 2D) = "black" { }
		[HideInInspector][Vector2]_DissolveDetailNoisePan ("Panning", Vector) = (0, 0, 0, 0)
		[HideInInspector][ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3, Panosphere, 4, World Pos XZ, 5, Polar UV, 6, Distorted UV, 7)] _DissolveDetailNoiseUV ("UV", Int) = 0
		[HideInInspector][ToggleUI]_DissolveInvertDetailNoise ("Invert?", Float) = 0
		_DissolveDetailStrength ("Dissolve Detail Strength", Range(0, 1)) = 0.1
		_DissolveAlpha ("Dissolve Alpha", Range(0, 1)) = 0
		_DissolveMask ("Dissolve Mask--{reference_properties:[_DissolveMaskPan, _DissolveMaskUV]}", 2D) = "white" { }
		[HideInInspector][Vector2]_DissolveMaskPan ("Panning", Vector) = (0, 0, 0, 0)
		[HideInInspector][ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3, Panosphere, 4, World Pos XZ, 5, Polar UV, 6, Distorted UV, 7)] _DissolveMaskUV ("UV", Int) = 0
		[ToggleUI]_DissolveUseVertexColors ("VertexColor.g Mask", Float) = 0
		[HideInInspector][ToggleUI]_DissolveMaskInvert ("Invert?", Float) = 0
		_ContinuousDissolve ("Continuous Dissolve Speed", Float) = 0
		
		[Space(10)]
		[ThryToggleUI(true)] _EnableDissolveAudioLink ("<size=13><b>  Audio Link</b></size>--{ condition_showS:_EnableAudioLink==1}", Float) = 0
		[Enum(Bass, 0, Low Mid, 1, High Mid, 2, Treble, 3)] _AudioLinkDissolveAlphaBand ("Dissolve Alpha Band--{ condition_showS:(_EnableDissolveAudioLink==1 && _EnableAudioLink==1)}", Int) = 0
		[Vector2]_AudioLinkDissolveAlpha ("Dissolve Alpha Mod--{ condition_showS:(_EnableDissolveAudioLink==1 && _EnableAudioLink==1)}", Vector) = (0, 0, 0, 0)
		[Enum(Bass, 0, Low Mid, 1, High Mid, 2, Treble, 3)] _AudioLinkDissolveDetailBand ("Dissolve Detail Band--{ condition_showS:(_EnableDissolveAudioLink==1 && _EnableAudioLink==1)}", Int) = 0
		[Vector2]_AudioLinkDissolveDetail ("Dissolve Detail Mod--{ condition_showS:(_EnableDissolveAudioLink==1 && _EnableAudioLink==1)}", Vector) = (0, 0, 0, 0)
		
		// Point to Point Dissolve
		[HideInInspector] m_start_pointToPoint ("point to point--{condition_showS:(_DissolveType==2)}", Float) = 0
		[Enum(Local, 0, World, 1, Vertex Colors, 2)] _DissolveP2PWorldLocal ("World/Local", Int) = 0
		_DissolveP2PEdgeLength ("Edge Length", Float) = 0.1
		[Vector3]_DissolveStartPoint ("Start Point", Vector) = (0, -1, 0, 0)
		[Vector3]_DissolveEndPoint ("End Point", Vector) = (0, 1, 0, 0)
		[HideInInspector] m_end_pointToPoint ("Point To Point", Float) = 0
		
		[HideInInspector] m_start_dissolveHueShift ("Hue Shift--{reference_property:_DissolveHueShiftEnabled}", Float) = 0
		[HideInInspector][ToggleUI]_DissolveHueShiftEnabled ("Dissolved Enabled", Float) = 0
		_DissolveHueShiftSpeed ("Dissolved Speed", Float) = 0
		_DissolveHueShift ("Dissolved Shift", Range(0, 1)) = 0
		[ToggleUI]_DissolveEdgeHueShiftEnabled ("Edge Enabled", Float) = 0
		_DissolveEdgeHueShiftSpeed ("Edge Speed", Float) = 0
		_DissolveEdgeHueShift ("Edge Shift", Range(0, 1)) = 0
		[HideInInspector] m_end_dissolveHueShift ("Hue Shift", Float) = 0
		
		// Locked in anim sldiers
		[HideInInspector] m_start_BonusSliders ("Locked In Anim Sliders", Float) = 0
		_DissolveAlpha0 ("Dissolve Alpha 0", Range(-1, 1)) = 0
		_DissolveAlpha1 ("Dissolve Alpha 1", Range(-1, 1)) = 0
		_DissolveAlpha2 ("Dissolve Alpha 2", Range(-1, 1)) = 0
		_DissolveAlpha3 ("Dissolve Alpha 3", Range(-1, 1)) = 0
		_DissolveAlpha4 ("Dissolve Alpha 4", Range(-1, 1)) = 0
		_DissolveAlpha5 ("Dissolve Alpha 5", Range(-1, 1)) = 0
		_DissolveAlpha6 ("Dissolve Alpha 6", Range(-1, 1)) = 0
		_DissolveAlpha7 ("Dissolve Alpha 7", Range(-1, 1)) = 0
		_DissolveAlpha8 ("Dissolve Alpha 8", Range(-1, 1)) = 0
		_DissolveAlpha9 ("Dissolve Alpha 9", Range(-1, 1)) = 0
		[HideInInspector] m_end_BonusSliders ("Locked In Sliders", Float) = 0
		[HideInInspector] m_end_dissolve ("Dissolve", Float) = 0
		
		// Flipbook
		[HideInInspector] m_start_flipBook ("Flipbook--{reference_property:_EnableFlipbook}", Float) = 0
		[HideInInspector][ThryToggle(_SUNDISK_HIGH_QUALITY)]_EnableFlipbook ("Enable Flipbook", Float) = 0
		[ToggleUI]_FlipbookAlphaControlsFinalAlpha ("Flipbook Controls Alpha?", Float) = 0
		[ToggleUI]_FlipbookIntensityControlsAlpha ("Intensity Controls Alpha?", Float) = 0
		[ToggleUI]_FlipbookColorReplaces ("Color Replaces Flipbook", Float) = 0
		[TextureArray]_FlipbookTexArray ("Texture Array--{reference_properties:[_FlipbookTexArrayPan, _FlipbookTexArrayUV]}", 2DArray) = "" { }
		[HideInInspector][Vector2]_FlipbookTexArrayPan ("Panning", Vector) = (0, 0, 0, 0)
		[HideInInspector][ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3, Panosphere, 4, World Pos XZ, 5, Polar UV, 6, Distorted UV, 7)] _FlipbookTexArrayUV ("UV", Int) = 0
		_FlipbookMask ("Mask--{reference_properties:[_FlipbookMaskPan, _FlipbookMaskUV]}", 2D) = "white" { }
		[HideInInspector][Vector2]_FlipbookMaskPan ("Panning", Vector) = (0, 0, 0, 0)
		[HideInInspector][ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3, Panosphere, 4, World Pos XZ, 5, Polar UV, 6, Distorted UV, 7)] _FlipbookMaskUV ("UV", Int) = 0
		_FlipbookColor ("Color & alpha--{reference_property:_FlipbookColorThemeIndex}", Color) = (1, 1, 1, 1)
		[HideInInspector][ThryWideEnum(Off, 0, Theme Color 0, 1, Theme Color 1, 2, Theme Color 2, 3, Theme Color 3, 4, ColorChord 0, 5, ColorChord 1, 6, ColorChord 2, 7, ColorChord 3, 8, AL Theme 0, 9, AL Theme 1, 10, AL Theme 2, 11, AL Theme 3, 12)] _FlipbookColorThemeIndex ("", Int) = 0
		_FlipbookTotalFrames ("Total Frames", Float) = 1
		_FlipbookFPS ("FPS", Float) = 30.0
		_FlipbookScaleOffset ("Scale | Offset", Vector) = (1, 1, 0, 0)
		_FlipbookSideOffset ("Side Offset ←→↓↑", Vector) = (0, 0, 0, 0)
		[ToggleUI]_FlipbookTiled ("Tiled?", Float) = 0
		_FlipbookEmissionStrength ("Emission Strength", Range(0, 20)) = 0
		_FlipbookRotation ("Rotation", Range(0, 360)) = 0
		_FlipbookRotationSpeed ("Rotation Speed", Float) = 0
		_FlipbookReplace ("Replace", Range(0, 1)) = 1
		_FlipbookMultiply ("Multiply", Range(0, 1)) = 0
		_FlipbookAdd ("Add", Range(0, 1)) = 0
		
		//Flipbook audio link
		[HideInInspector] m_start_FlipbookAudioLink ("Audio Link ♫--{ condition_showS:_EnableAudioLink==1}", Float) = 0
		[ToggleUI]_FlipbookChronotensityEnabled ("Chronotensity?", Float) = 0
		[Enum(Bass, 0, Low Mid, 1, High Mid, 2, Treble, 3)] _FlipbookChronotensityBand ("Band", Int) = 0
		_FlipbookChronotensitySpeed ("Chrono Speed", Range(0,1)) = 1
		[HideInInspector] m_end_FlipbookAudioLink ("Audio Link", Float) = 0
		
		// Flipbook Manual Control
		[HideInInspector] m_start_manualFlipbookControl ("Manual Control", Float) = 0
		_FlipbookCurrentFrame ("Current Frame", Float) = -1
		[HideInInspector] m_end_manualFlipbookControl ("Manual Control", Float) = 0
		
		[HideInInspector] m_start_crossfade ("Crossfade", Float) = 0
		[ToggleUI]_FlipbookCrossfadeEnabled ("Enable Crossfade?", Float) = 0
		[MultiSlider]_FlipbookCrossfadeRange ("Fade Range", Vector) = (0.75, 1, 0, 1)
		[HideInInspector] m_end_crossfade ("Crossfade", Float) = 0
		
		[HideInInspector] m_start_flipbookHueShift ("Hue Shift", Float) = 0
		[ToggleUI]_FlipbookHueShiftEnabled ("Enabled", Float) = 0
		_FlipbookHueShiftSpeed ("Shift Speed", Float) = 0
		_FlipbookHueShift ("Hue Shift", Range(0, 1)) = 0
		[HideInInspector] m_end_flipbookHueShift ("Hue Shift", Float) = 0
		[HideInInspector] m_end_flipBook ("Flipbook", Float) = 0
		
		//TODO Add inverts to the masks
		//Emission 1
		[HideInInspector] m_start_emissions ("Emissions", Float) = 0
		[HideInInspector] m_start_emissionOptions ("Emission 0--{reference_property:_EnableEmission}", Float) = 0
		[HideInInspector][ThryToggle(_EMISSION)]_EnableEmission ("Enable Emission", Float) = 0
		[ToggleUI]_EmissionReplace0 ("Replace Base Color", Float) = 0
		[HDR]_EmissionColor ("Emission Color--{reference_property:_EmissionColorThemeIndex}", Color) = (1, 1, 1, 1)
		[HideInInspector][ThryWideEnum(Off, 0, Theme Color 0, 1, Theme Color 1, 2, Theme Color 2, 3, Theme Color 3, 4, ColorChord 0, 5, ColorChord 1, 6, ColorChord 2, 7, ColorChord 3, 8, AL Theme 0, 9, AL Theme 1, 10, AL Theme 2, 11, AL Theme 3, 12)] _EmissionColorThemeIndex ("", Int) = 0
		[Gradient]_EmissionMap ("Emission Map--{reference_properties:[_EmissionMapPan, _EmissionMapUV]}", 2D) = "white" { }
		[HideInInspector][Vector2]_EmissionMapPan ("Panning", Vector) = (0, 0, 0, 0)
		[HideInInspector][ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3, Panosphere, 4, World Pos XZ, 5, Polar UV, 6, Distorted UV, 7)] _EmissionMapUV ("UV", Int) = 0
		[ToggleUI]_EmissionBaseColorAsMap ("Base Color as Map?", Float) = 0
		_EmissionMask ("Emission Mask--{reference_properties:[_EmissionMaskPan, _EmissionMaskUV]}", 2D) = "white" { }
		[HideInInspector][Vector2]_EmissionMaskPan ("Panning", Vector) = (0, 0, 0, 0)
		[HideInInspector][ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3, Panosphere, 4, World Pos XZ, 5, Polar UV, 6, Distorted UV, 7)] _EmissionMaskUV ("UV", Int) = 0
		_EmissionStrength ("Emission Strength", Range(0, 20)) = 0
		
		[Space(10)]
		[ThryToggleUI(true)]_EmissionHueShiftEnabled ("<size=13><b>  Hue Shift</b></size>", Float) = 0
		_EmissionHueShift ("Hue Shift--{condition_showS:(_EmissionHueShiftEnabled==1)}", Range(0, 1)) = 0
		_EmissionHueShiftSpeed ("Hue Shift Speed--{condition_showS:(_EmissionHueShiftEnabled==1)}", Float) = 0
		
		// Center out emission
		[Space(10)]
		[ThryToggleUI(true)]_EmissionCenterOutEnabled ("<size=13><b>  Center Out</b></size>", Float) = 0
		_EmissionCenterOutSpeed ("Flow Speed--{condition_showS:(_EmissionCenterOutEnabled==1)}", Float) = 5
		
		// Glow in the dark Emission
		[Space(10)]
		[ThryToggleUI(true)]_EnableGITDEmission ("<size=13><b>  Light Based</b></size>", Float) = 0
		[Enum(World, 0, Mesh, 1)] _GITDEWorldOrMesh ("Lighting Type--{condition_showS:(_EnableGITDEmission==1)}", Int) = 0
		_GITDEMinEmissionMultiplier ("Min Emission Multiplier--{condition_showS:(_EnableGITDEmission==1)}", Range(0, 1)) = 1
		_GITDEMaxEmissionMultiplier ("Max Emission Multiplier--{condition_showS:(_EnableGITDEmission==1)}", Range(0, 1)) = 0
		_GITDEMinLight ("Min Lighting--{condition_showS:(_EnableGITDEmission==1)}", Range(0, 1)) = 0
		_GITDEMaxLight ("Max Lighting--{condition_showS:(_EnableGITDEmission==1)}", Range(0, 1)) = 1
		
		// Blinking Emission
		[Space(10)]
		[ThryToggleUI(true)]_EmissionBlinkingEnabled ("<size=13><b>  Blinking</b></size>", Float) = 0
		_EmissiveBlink_Min ("Emissive Blink Min--{condition_showS:(_EmissionBlinkingEnabled==1)}", Float) = 0
		_EmissiveBlink_Max ("Emissive Blink Max--{condition_showS:(_EmissionBlinkingEnabled==1)}", Float) = 1
		_EmissiveBlink_Velocity ("Emissive Blink Velocity--{condition_showS:(_EmissionBlinkingEnabled==1)}", Float) = 4
		_EmissionBlinkingOffset ("Offset--{condition_showS:(_EmissionBlinkingEnabled==1)}", Float) = 0
		
		// Scrolling Emission
		[Space(10)]
		[ThryToggleUI(true)] _ScrollingEmission ("<size=13><b>  Scrolling</b></size>", Float) = 0
		[ToggleUI]_EmissionScrollingUseCurve ("Use Curve--{condition_showS:(_ScrollingEmission==1)}", float) = 0
		[Curve]_EmissionScrollingCurve ("Curve--{condition_showS:(_ScrollingEmission==1&&_EmissionScrollingUseCurve==1)}", 2D) = "white" { }
		[ToggleUI]_EmissionScrollingVertexColor ("VColor as position--{condition_showS:(_ScrollingEmission==1)}", float) = 0
		_EmissiveScroll_Direction ("Direction--{condition_showS:(_ScrollingEmission==1)}", Vector) = (0, -10, 0, 0)
		_EmissiveScroll_Width ("Width--{condition_showS:(_ScrollingEmission==1)}", Float) = 10
		_EmissiveScroll_Velocity ("Velocity--{condition_showS:(_ScrollingEmission==1)}", Float) = 10
		_EmissiveScroll_Interval ("Interval--{condition_showS:(_ScrollingEmission==1)}", Float) = 20
		_EmissionScrollingOffset ("Offset--{condition_showS:(_ScrollingEmission==1)}", Float) = 0
		
		[Space(10)]
		[ThryToggleUI(true)] _EmissionAL0Enabled ("<size=13><b>  Audio Link</b></size>--{ condition_showS:_EnableAudioLink==1}", Float) = 0
		[Vector2]_EmissionAL0StrengthMod ("Emission Strength Add--{ condition_showS:(_EmissionAL0Enabled==1 && _EnableAudioLink==1)}", Vector) = (0, 0, 0, 0)
		[Enum(Bass, 0, Low Mid, 1, High Mid, 2, Treble, 3)] _EmissionAL0StrengthBand ("Emission Add Band--{ condition_showS:(_EmissionAL0Enabled==1 && _EnableAudioLink==1)}", Int) = 0
		[Vector2] _AudioLinkEmission0CenterOut ("Center Out--{ condition_showS:(_EmissionAL0Enabled==1 && _EnableAudioLink==1)}", Vector) = (0, 0, 0, 0)
		_AudioLinkEmission0CenterOutwidth ("Center Out Duration--{ condition_showS:(_EmissionAL0Enabled==1 && _EnableAudioLink==1)}", Range(0, 1)) = 1
		_AudioLinkEmission0CenterOutSize ("Intensity Threshold--{ condition_showS:(_EmissionAL0Enabled==1 && _EnableAudioLink==1)}", Range(0, 1)) = 0
		[Enum(Bass, 0, Low Mid, 1, High Mid, 2, Treble, 3)] _AudioLinkEmission0CenterOutBand ("Center Out Band--{ condition_showS:(_EmissionAL0Enabled==1 && _EnableAudioLink==1)}", Int) = 0
		[HideInInspector] m_end_emissionOptions ("", Float) = 0
		
		// Second Emission
		[HideInInspector] m_start_emission1Options ("Emission 1--{reference_property:_EnableEmission1}", Float) = 0
		[HideInInspector][ThryToggle(POI_EMISSION_1)]_EnableEmission1 ("Enable Emission 2", Float) = 0
		[ToggleUI]_EmissionReplace1 ("Replace Base Color", Float) = 0
		[HDR]_EmissionColor1 ("Emission Color--{reference_property:_EmissionColor1ThemeIndex}", Color) = (1, 1, 1, 1)
		[HideInInspector][ThryWideEnum(Off, 0, Theme Color 0, 1, Theme Color 1, 2, Theme Color 2, 3, Theme Color 3, 4, ColorChord 0, 5, ColorChord 1, 6, ColorChord 2, 7, ColorChord 3, 8, AL Theme 0, 9, AL Theme 1, 10, AL Theme 2, 11, AL Theme 3, 12)] _EmissionColor1ThemeIndex ("", Int) = 0
		[Gradient]_EmissionMap1 ("Emission Map--{reference_properties:[_EmissionMap1Pan, _EmissionMap1UV]}", 2D) = "white" { }
		[HideInInspector][Vector2]_EmissionMap1Pan ("Panning", Vector) = (0, 0, 0, 0)
		[HideInInspector][ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3, Panosphere, 4, World Pos XZ, 5, Polar UV, 6, Distorted UV, 7)] _EmissionMap1UV ("UV", Int) = 0
		[ToggleUI]_EmissionBaseColorAsMap1 ("Base Color as Map?", Float) = 0
		_EmissionMask1 ("Emission Mask--{reference_properties:[_EmissionMask1Pan, _EmissionMask1UV]}", 2D) = "white" { }
		[HideInInspector][Vector2]_EmissionMask1Pan ("Panning", Vector) = (0, 0, 0, 0)
		[HideInInspector][ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3, Panosphere, 4, World Pos XZ, 5, Polar UV, 6, Distorted UV, 7)] _EmissionMask1UV ("UV", Int) = 0
		_EmissionStrength1 ("Emission Strength", Range(0, 20)) = 0
		
		[Space(10)]
		[ThryToggleUI(true)]_EmissionHueShiftEnabled1 ("<size=13><b>  Hue Shift</b></size>", Float) = 0
		_EmissionHueShift1 ("Hue Shift--{condition_showS:(_EmissionHueShiftEnabled1==1)}", Range(0, 1)) = 0
		_EmissionHueShiftSpeed1 ("Hue Shift Speed--{condition_showS:(_EmissionHueShiftEnabled1==1)}", Float) = 0
		
		// Second Center Out Enission
		[Space(10)]
		[ThryToggleUI(true)]_EmissionCenterOutEnabled1 ("<size=13><b>  Center Out</b></size>", Float) = 0
		_EmissionCenterOutSpeed1 ("Flow Speed--{condition_showS:(_EmissionCenterOutEnabled1==1)}", Float) = 5
		
		// Second Glow In The Dark Emission
		[Space(10)]
		[ThryToggleUI(true)]_EnableGITDEmission1 ("<size=13><b>  Light Based</b></size>", Float) = 0
		[Enum(World, 0, Mesh, 1)] _GITDEWorldOrMesh1 ("Lighting Type--{condition_showS:(_EnableGITDEmission1==1)}", Int) = 0
		_GITDEMinEmissionMultiplier1 ("Min Emission Multiplier--{condition_showS:(_EnableGITDEmission1==1)}", Range(0, 1)) = 1
		_GITDEMaxEmissionMultiplier1 ("Max Emission Multiplier--{condition_showS:(_EnableGITDEmission1==1)}", Range(0, 1)) = 0
		_GITDEMinLight1 ("Min Lighting--{condition_showS:(_EnableGITDEmission1==1)}", Range(0, 1)) = 0
		_GITDEMaxLight1 ("Max Lighting--{condition_showS:(_EnableGITDEmission1==1)}", Range(0, 1)) = 1
		
		// Second Blinking Emission
		[Space(10)]
		[ThryToggleUI(true)]_EmissionBlinkingEnabled1 ("<size=13><b>  Blinking</b></size>", Float) = 0
		_EmissiveBlink_Min1 ("Emissive Blink Min--{condition_showS:(_EmissionBlinkingEnabled1==1)}", Float) = 0
		_EmissiveBlink_Max1 ("Emissive Blink Max--{condition_showS:(_EmissionBlinkingEnabled1==1)}", Float) = 1
		_EmissiveBlink_Velocity1 ("Emissive Blink Velocity--{condition_showS:(_EmissionBlinkingEnabled1==1)}", Float) = 4
		_EmissionBlinkingOffset1 ("Offset--{condition_showS:(_EmissionBlinkingEnabled1==1)}", Float) = 0
		
		// Second Scrolling Emission
		[Space(10)]
		[ThryToggleUI(true)] _ScrollingEmission1 ("<size=13><b>  Scrolling</b></size>", Float) = 0
		[ToggleUI]_EmissionScrollingUseCurve1 ("Use Curve--{condition_showS:(_ScrollingEmission1==1)}", float) = 0
		[Curve]_EmissionScrollingCurve1 ("Curve--{condition_showS:(_ScrollingEmission1==1&&_EmissionScrollingUseCurve1==1)}", 2D) = "white" { }
		[ToggleUI]_EmissionScrollingVertexColor1 ("VColor as position--{condition_showS:(_ScrollingEmission1==1)}", float) = 0
		_EmissiveScroll_Direction1 ("Direction--{condition_showS:(_ScrollingEmission1==1)}", Vector) = (0, -10, 0, 0)
		_EmissiveScroll_Width1 ("Width--{condition_showS:(_ScrollingEmission1==1)}", Float) = 10
		_EmissiveScroll_Velocity1 ("Velocity--{condition_showS:(_ScrollingEmission1==1)}", Float) = 10
		_EmissiveScroll_Interval1 ("Interval--{condition_showS:(_ScrollingEmission1==1)}", Float) = 20
		_EmissionScrollingOffset1 ("Offset--{condition_showS:(_ScrollingEmission1==1)}", Float) = 0
		
		[Space(10)]
		[ThryToggleUI(true)] _EmissionAL1Enabled ("<size=13><b>  Audio Link</b></size>--{ condition_showS:_EnableAudioLink==1}", Float) = 0
		[Vector2]_EmissionAL1StrengthMod ("Emission Strength Add--{ condition_showS:(_EmissionAL1Enabled==1 && _EnableAudioLink==1)}", Vector) = (0, 0, 0, 0)
		[Enum(Bass, 0, Low Mid, 1, High Mid, 2, Treble, 3)] _EmissionAL1StrengthBand ("Emission Add Band--{ condition_showS:(_EmissionAL1Enabled==1 && _EnableAudioLink==1)}", Int) = 0
		[Vector2] _AudioLinkEmission1CenterOut ("Center Out--{ condition_showS:(_EmissionAL1Enabled==1 && _EnableAudioLink==1)}", Vector) = (0, 0, 0, 0)
		_AudioLinkEmission1CenterOutwidth ("Center Out Duration--{ condition_showS:(_EmissionAL1Enabled==1 && _EnableAudioLink==1)}", Range(0, 1)) = 1
		_AudioLinkEmission1CenterOutSize ("Intensity Threshold--{ condition_showS:(_EmissionAL1Enabled==1 && _EnableAudioLink==1)}", Range(0, 1)) = 0
		[Enum(Bass, 0, Low Mid, 1, High Mid, 2, Treble, 3)] _AudioLinkEmission1CenterOutBand ("Center Out Band--{ condition_showS:(_EmissionAL1Enabled==1 && _EnableAudioLink==1)}", Int) = 0
		[HideInInspector] m_end_emission1Options ("", Float) = 0
		
		// Third Emission
		[HideInInspector] m_start_emission2Options ("Emission 2--{reference_property:_EnableEmission2}", Float) = 0
		[HideInInspector][ThryToggle(POI_EMISSION_2)]_EnableEmission2 ("Enable Emission 2", Float) = 0
		[ToggleUI]_EmissionReplace2 ("Replace Base Color", Float) = 0
		[HDR]_EmissionColor2 ("Emission Color--{reference_property:_EmissionColor2ThemeIndex}", Color) = (1, 1, 1, 1)
		[HideInInspector][ThryWideEnum(Off, 0, Theme Color 0, 1, Theme Color 1, 2, Theme Color 2, 3, Theme Color 3, 4, ColorChord 0, 5, ColorChord 1, 6, ColorChord 2, 7, ColorChord 3, 8, AL Theme 0, 9, AL Theme 1, 10, AL Theme 2, 11, AL Theme 3, 12)] _EmissionColor2ThemeIndex ("", Int) = 0
		[Gradient]_EmissionMap2 ("Emission Map--{reference_properties:[_EmissionMap2Pan, _EmissionMap2UV]}", 2D) = "white" { }
		[HideInInspector][Vector2]_EmissionMap2Pan ("Panning", Vector) = (0, 0, 0, 0)
		[HideInInspector][ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3, Panosphere, 4, World Pos XZ, 5, Polar UV, 6, Distorted UV, 7)] _EmissionMap2UV ("UV", Int) = 0
		[ToggleUI]_EmissionBaseColorAsMap2 ("Base Color as Map?", Float) = 0
		_EmissionMask2 ("Emission Mask--{reference_properties:[_EmissionMask2Pan, _EmissionMask2UV]}", 2D) = "white" { }
		[HideInInspector][Vector2]_EmissionMask2Pan ("Panning", Vector) = (0, 0, 0, 0)
		[HideInInspector][ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3, Panosphere, 4, World Pos XZ, 5, Polar UV, 6, Distorted UV, 7)] _EmissionMask2UV ("UV", Int) = 0
		_EmissionStrength2 ("Emission Strength", Range(0, 20)) = 0
		
		[Space(10)]
		[ThryToggleUI(true)]_EmissionHueShiftEnabled2 ("<size=13><b>  Hue Shift</b></size>", Float) = 0
		_EmissionHueShift2 ("Hue Shift--{condition_showS:(_EmissionHueShiftEnabled2==1)}", Range(0, 1)) = 0
		_EmissionHueShiftSpeed2 ("Hue Shift Speed--{condition_showS:(_EmissionHueShiftEnabled2==1)}", Float) = 0
		
		// Third Center Out Enission
		[Space(10)]
		[ThryToggleUI(true)]_EmissionCenterOutEnabled2 ("<size=13><b>  Center Out</b></size>", Float) = 0
		_EmissionCenterOutSpeed2 ("Flow Speed--{condition_showS:(_EmissionCenterOutEnabled2==1)}", Float) = 5
		
		// Third Glow In The Dark Emission
		[Space(10)]
		[ThryToggleUI(true)]_EnableGITDEmission2 ("<size=13><b>  Light Based</b></size>", Float) = 0
		[Enum(World, 0, Mesh, 1)] _GITDEWorldOrMesh2 ("Lighting Type--{condition_showS:(_EnableGITDEmission2==1)}", Int) = 0
		_GITDEMinEmissionMultiplier2 ("Min Emission Multiplier--{condition_showS:(_EnableGITDEmission2==1)}", Range(0, 1)) = 1
		_GITDEMaxEmissionMultiplier2 ("Max Emission Multiplier--{condition_showS:(_EnableGITDEmission2==1)}", Range(0, 1)) = 0
		_GITDEMinLight2 ("Min Lighting--{condition_showS:(_EnableGITDEmission2==1)}", Range(0, 1)) = 0
		_GITDEMaxLight2 ("Max Lighting--{condition_showS:(_EnableGITDEmission2==1)}", Range(0, 1)) = 1
		
		// Third Blinking Emission
		[Space(10)]
		[ThryToggleUI(true)]_EmissionBlinkingEnabled2 ("<size=13><b>  Blinking</b></size>", Float) = 0
		_EmissiveBlink_Min2 ("Emissive Blink Min--{condition_showS:(_EmissionBlinkingEnabled2==1)}", Float) = 0
		_EmissiveBlink_Max2 ("Emissive Blink Max--{condition_showS:(_EmissionBlinkingEnabled2==1)}", Float) = 1
		_EmissiveBlink_Velocity2 ("Emissive Blink Velocity--{condition_showS:(_EmissionBlinkingEnabled2==1)}", Float) = 4
		_EmissionBlinkingOffset2 ("Offset--{condition_showS:(_EmissionBlinkingEnabled2==1)}", Float) = 0
		
		// Third Scrolling Emission
		[Space(10)]
		[ThryToggleUI(true)] _ScrollingEmission2 ("<size=13><b>  Scrolling</b></size>", Float) = 0
		[ToggleUI]_EmissionScrollingUseCurve2 ("Use Curve--{condition_showS:(_ScrollingEmission2==1)}", float) = 0
		[Curve]_EmissionScrollingCurve2 ("Curve--{condition_showS:(_ScrollingEmission1==1&&_EmissionScrollingUseCurve2==1)}", 2D) = "white" { }
		[ToggleUI]_EmissionScrollingVertexColor2 ("VColor as position--{condition_showS:(_ScrollingEmission2==1)}", float) = 0
		_EmissiveScroll_Direction2 ("Direction--{condition_showS:(_ScrollingEmission2==1)}", Vector) = (0, -10, 0, 0)
		_EmissiveScroll_Width2 ("Width--{condition_showS:(_ScrollingEmission2==1)}", Float) = 10
		_EmissiveScroll_Velocity2 ("Velocity--{condition_showS:(_ScrollingEmission2==1)}", Float) = 10
		_EmissiveScroll_Interval2 ("Interval--{condition_showS:(_ScrollingEmission2==1)}", Float) = 20
		
		[Space(10)]
		[ThryToggleUI(true)] _EmissionAL2Enabled ("<size=13><b>  Audio Link</b></size>--{ condition_showS:_EnableAudioLink==1}", Float) = 0
		[Vector2]_EmissionAL2StrengthMod ("Emission Strength Add--{ condition_showS:(_EmissionAL2Enabled==1 && _EnableAudioLink==1)}", Vector) = (0, 0, 0, 0)
		[Enum(Bass, 0, Low Mid, 1, High Mid, 2, Treble, 3)] _EmissionAL2StrengthBand ("Emission Add Band--{ condition_showS:(_EmissionAL2Enabled==1 && _EnableAudioLink==1)}", Int) = 0
		[Vector2] _AudioLinkEmission2CenterOut ("Center Out--{ condition_showS:(_EmissionAL2Enabled==1 && _EnableAudioLink==1)}", Vector) = (0, 0, 0, 0)
		_AudioLinkEmission2CenterOutwidth ("Center Out Duration--{ condition_showS:(_EmissionAL2Enabled==1 && _EnableAudioLink==1)}", Range(0, 1)) = 1
		_AudioLinkEmission2CenterOutSize ("Intensity Threshold--{ condition_showS:(_EmissionAL2Enabled==1 && _EnableAudioLink==1)}", Range(0, 1)) = 0
		[Enum(Bass, 0, Low Mid, 1, High Mid, 2, Treble, 3)] _AudioLinkEmission2CenterOutBand ("Center Out Band--{ condition_showS:(_EmissionAL2Enabled==1 && _EnableAudioLink==1)}", Int) = 0
		[HideInInspector] m_end_emission2Options ("", Float) = 0
		
		// Fourth Emission
		[HideInInspector] m_start_emission3Options ("Emission 3--{reference_property:_EnableEmission3}", Float) = 0
		[HideInInspector][ThryToggle(POI_EMISSION_3)]_EnableEmission3 ("Enable Emission 3", Float) = 0
		[ToggleUI]_EmissionReplace3 ("Replace Base Color", Float) = 0
		[HDR]_EmissionColor3 ("Emission Color--{reference_property:_EmissionColor3ThemeIndex}", Color) = (1, 1, 1, 1)
		[HideInInspector][ThryWideEnum(Off, 0, Theme Color 0, 1, Theme Color 1, 2, Theme Color 2, 3, Theme Color 3, 4, ColorChord 0, 5, ColorChord 1, 6, ColorChord 2, 7, ColorChord 3, 8, AL Theme 0, 9, AL Theme 1, 10, AL Theme 2, 11, AL Theme 3, 12)] _EmissionColor3ThemeIndex ("", Int) = 0
		[Gradient]_EmissionMap3 ("Emission Map--{reference_properties:[_EmissionMap3Pan, _EmissionMap3UV]}", 2D) = "white" { }
		[HideInInspector][Vector2]_EmissionMap3Pan ("Panning", Vector) = (0, 0, 0, 0)
		[HideInInspector][ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3, Panosphere, 4, World Pos XZ, 5, Polar UV, 6, Distorted UV, 7)] _EmissionMap3UV ("UV", Int) = 0
		[ToggleUI]_EmissionBaseColorAsMap3 ("Base Color as Map?", Float) = 0
		_EmissionMask3 ("Emission Mask--{reference_properties:[_EmissionMask3Pan, _EmissionMask3UV]}", 2D) = "white" { }
		[HideInInspector][Vector2]_EmissionMask3Pan ("Panning", Vector) = (0, 0, 0, 0)
		[HideInInspector][ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3, Panosphere, 4, World Pos XZ, 5, Polar UV, 6, Distorted UV, 7)] _EmissionMask3UV ("UV", Int) = 0
		_EmissionStrength3 ("Emission Strength", Range(0, 20)) = 0
		
		[Space(10)]
		[ThryToggleUI(true)]_EmissionHueShiftEnabled3 ("<size=13><b>  Hue Shift</b></size>", Float) = 0
		_EmissionHueShift3 ("Hue Shift--{condition_showS:(_EmissionHueShiftEnabled3==1)}", Range(0, 1)) = 0
		_EmissionHueShiftSpeed3 ("Hue Shift Speed--{condition_showS:(_EmissionHueShiftEnabled3==1)}", Float) = 0
		
		// Fourth Center Out Enission
		[Space(10)]
		[ThryToggleUI(true)]_EmissionCenterOutEnabled3 ("<size=13><b>  Center Out</b></size>", Float) = 0
		_EmissionCenterOutSpeed3 ("Flow Speed--{condition_showS:(_EmissionCenterOutEnabled3==1)}", Float) = 5
		
		// Fourth Glow In The Dark Emission
		[Space(10)]
		[ThryToggleUI(true)]_EnableGITDEmission3 ("<size=13><b>  Light Based</b></size>", Float) = 0
		[Enum(World, 0, Mesh, 1)] _GITDEWorldOrMesh3 ("Lighting Type--{condition_showS:(_EnableGITDEmission3==1)}", Int) = 0
		_GITDEMinEmissionMultiplier3 ("Min Emission Multiplier--{condition_showS:(_EnableGITDEmission3==1)}", Range(0, 1)) = 1
		_GITDEMaxEmissionMultiplier3 ("Max Emission Multiplier--{condition_showS:(_EnableGITDEmission3==1)}", Range(0, 1)) = 0
		_GITDEMinLight3 ("Min Lighting--{condition_showS:(_EnableGITDEmission3==1)}", Range(0, 1)) = 0
		_GITDEMaxLight3 ("Max Lighting--{condition_showS:(_EnableGITDEmission3==1)}", Range(0, 1)) = 1
		
		// Fourth Blinking Emission
		[Space(10)]
		[ThryToggleUI(true)]_EmissionBlinkingEnabled3 ("<size=13><b>  Blinking</b></size>", Float) = 0
		_EmissiveBlink_Min3 ("Emissive Blink Min--{condition_showS:(_EmissionBlinkingEnabled3==1)}", Float) = 0
		_EmissiveBlink_Max3 ("Emissive Blink Max--{condition_showS:(_EmissionBlinkingEnabled3==1)}", Float) = 1
		_EmissiveBlink_Velocity3 ("Emissive Blink Velocity--{condition_showS:(_EmissionBlinkingEnabled3==1)}", Float) = 4
		_EmissionBlinkingOffset3 ("Offset--{condition_showS:(_EmissionBlinkingEnabled3==1)}", Float) = 0
		
		// Fourth Scrolling Emission
		[Space(10)]
		[ThryToggleUI(true)] _ScrollingEmission3 ("<size=13><b>  Scrolling</b></size>", Float) = 0
		[ToggleUI]_EmissionScrollingUseCurve3 ("Use Curve--{condition_showS:(_ScrollingEmission3==1)}", float) = 0
		[Curve]_EmissionScrollingCurve3 ("Curve--{condition_showS:(_ScrollingEmission1==1&&_EmissionScrollingUseCurve3==1)}", 2D) = "white" { }
		[ToggleUI]_EmissionScrollingVertexColor3 ("VColor as position--{condition_showS:(_ScrollingEmission3==1)}", float) = 0
		_EmissiveScroll_Direction3 ("Direction--{condition_showS:(_ScrollingEmission3==1)}", Vector) = (0, -10, 0, 0)
		_EmissiveScroll_Width3 ("Width--{condition_showS:(_ScrollingEmission3==1)}", Float) = 10
		_EmissiveScroll_Velocity3 ("Velocity--{condition_showS:(_ScrollingEmission3==1)}", Float) = 10
		_EmissiveScroll_Interval3 ("Interval--{condition_showS:(_ScrollingEmission3==1)}", Float) = 20
		
		[Space(10)]
		[ThryToggleUI(true)] _EmissionAL3Enabled ("<size=13><b>  Audio Link</b></size>--{ condition_showS:_EnableAudioLink==1}", Float) = 0
		[Vector2]_EmissionAL3StrengthMod ("Emission Strength Add--{ condition_showS:(_EmissionAL3Enabled==1 && _EnableAudioLink==1)}", Vector) = (0, 0, 0, 0)
		[Enum(Bass, 0, Low Mid, 1, High Mid, 2, Treble, 3)] _EmissionAL3StrengthBand ("Emission Add Band--{ condition_showS:(_EmissionAL3Enabled==1 && _EnableAudioLink==1)}", Int) = 0
		[Vector2] _AudioLinkEmission3CenterOut ("Center Out--{ condition_showS:(_EmissionAL3Enabled==1 && _EnableAudioLink==1)}", Vector) = (0, 0, 0, 0)
		_AudioLinkEmission3CenterOutwidth ("Center Out Duration--{ condition_showS:(_EmissionAL3Enabled==1 && _EnableAudioLink==1)}", Range(0, 1)) = 1
		_AudioLinkEmission3CenterOutSize ("Intensity Threshold--{ condition_showS:(_EmissionAL3Enabled==1 && _EnableAudioLink==1)}", Range(0, 1)) = 0
		[Enum(Bass, 0, Low Mid, 1, High Mid, 2, Treble, 3)] _AudioLinkEmission3CenterOutBand ("Center Out Band--{ condition_showS:(_EmissionAL3Enabled==1 && _EnableAudioLink==1)}", Int) = 0
		[HideInInspector] m_end_emission3Options ("", Float) = 0
		[HideInInspector] m_end_emissions ("Emissions", Float) = 0
		
		// Glitter
		[HideInInspector] m_start_glitter ("Glitter / Sparkle--{reference_property:_GlitterEnable}", Float) = 0
		[HideInInspector][ThryToggle(_SUNDISK_SIMPLE)]_GlitterEnable ("Enable Glitter?", Float) = 0
		[ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3, Panosphere, 4, World Pos XZ, 5, Polar UV, 6, Distorted UV, 7)] _GlitterUV ("UV", Int) = 0
		[Enum(Angle, 0, Linear Emission, 1, Light Reflections, 2)]_GlitterMode ("Mode", Int) = 0
		[Enum(Circle, 0, Square, 1)]_GlitterShape ("Shape", Int) = 0
		[Enum(Add, 0, Replace, 1)] _GlitterBlendType ("Blend Mode", Int) = 0
		[HDR]_GlitterColor ("Color--{reference_property:_GlitterColorThemeIndex}", Color) = (1, 1, 1)
		[HideInInspector][ThryWideEnum(Off, 0, Theme Color 0, 1, Theme Color 1, 2, Theme Color 2, 3, Theme Color 3, 4, ColorChord 0, 5, ColorChord 1, 6, ColorChord 2, 7, ColorChord 3, 8, AL Theme 0, 9, AL Theme 1, 10, AL Theme 2, 11, AL Theme 3, 12)] _GlitterColorThemeIndex ("", Int) = 0
		_GlitterUseSurfaceColor ("Use Surface Color", Range(0, 1)) = 0
		_GlitterColorMap ("Glitter Color Map--{reference_properties:[_GlitterColorMapPan, _GlitterColorMapUV]}", 2D) = "white" { }
		[HideInInspector][Vector2]_GlitterColorMapPan ("Panning", Vector) = (0, 0, 0, 0)
		[HideInInspector][ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3, Panosphere, 4, World Pos XZ, 5, Polar UV, 6, Distorted UV, 7)] _GlitterColorMapUV ("UV", Int) = 0
		[HideInInspector][Vector2]_GlitterPan ("Panning", Vector) = (0, 0, 0, 0)
		_GlitterMask ("Glitter Mask--{reference_properties:[_GlitterMaskPan, _GlitterMaskUV]}", 2D) = "white" { }
		[HideInInspector][Vector2]_GlitterMaskPan ("Panning", Vector) = (0, 0, 0, 0)
		[HideInInspector][ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3, Panosphere, 4, World Pos XZ, 5, Polar UV, 6, Distorted UV, 7)] _GlitterMaskUV ("UV", Int) = 0
		_GlitterTexture ("Glitter Texture--{reference_properties:[_GlitterTexturePan]}", 2D) = "white" { }
		[HideInInspector][Vector2]_GlitterTexturePan ("Panning", Vector) = (0, 0, 0, 0)
		[Vector2]_GlitterUVPanning ("Panning Speed", Vector) = (0, 0, 0, 0)
		_GlitterTextureRotation ("Rotation Speed", Float) = 0
		_GlitterFrequency ("Glitter Density", Float) = 300.0
		_GlitterJitter ("Glitter Jitter", Range(0, 1)) = 1.0
		_GlitterSpeed ("Glitter Speed", Float) = 10.0
		_GlitterSize ("Glitter Size", Range(0, 1)) = .3
		_GlitterContrast ("Glitter Contrast--{condition_showS:(_GlitterMode==0||_GlitterMode==2)}", Range(1, 1000)) = 300
		_GlitterAngleRange ("Glitter Angle Range--{condition_showS:(_GlitterMode==0||_GlitterMode==2)}", Range(0, 90)) = 90
		_GlitterMinBrightness ("Glitter Min Brightness", Range(0, 1)) = 0
		_GlitterBrightness ("Glitter Max Brightness", Range(0, 40)) = 3
		_GlitterBias ("Glitter Bias--{condition_show:(_GlitterMode==0)}", Range(0, 1)) = .8
		_GlitterHideInShadow ("Hide in shadow", Range(0, 1)) = 0
		_GlitterCenterSize ("dim light--{condition_show:{type:AND,condition1:{type:PROPERTY_BOOL,data:_GlitterMode==1},condition2:{type:PROPERTY_BOOL,data:_GlitterShape==1}}}", Range(0, 1)) = .08
		_glitterFrequencyLinearEmissive ("Frequency--{condition_show:{type:PROPERTY_BOOL,data:_GlitterMode==1}}", Range(0, 100)) = 20
		_GlitterJaggyFix ("Jaggy Fix--{condition_show:{type:PROPERTY_BOOL,data:_GlitterShape==1}}", Range(0, .1)) = .0
		
		[Space(10)]
		[ThryToggleUI(true)]_GlitterHueShiftEnabled ("<size=13><b>  Hue Shift</b></size>", Float) = 0
		_GlitterHueShiftSpeed ("Shift Speed--{condition_showS:(_GlitterHueShiftEnabled==1)}", Float) = 0
		_GlitterHueShift ("Hue Shift--{condition_showS:(_GlitterHueShiftEnabled==1)}", Range(0, 1)) = 0
		
		[Space(10)]
		[ThryToggleUI(true)]_GlitterRandomColors ("<size=13><b>  Random Stuff</b></size>", Float) = 0
		[MultiSlider]_GlitterMinMaxSaturation ("Saturation Range--{condition_showS:(_GlitterRandomColors==1)}", Vector) = (0.8, 1, 0, 1)
		[MultiSlider]_GlitterMinMaxBrightness ("Brightness Range--{condition_showS:(_GlitterRandomColors==1)}", Vector) = (0.8, 1, 0, 1)
		[ToggleUI]_GlitterRandomSize ("Random Size?--{condition_showS:(_GlitterRandomColors==1)}", Float) = 0
		[MultiSlider]_GlitterMinMaxSize ("Size Range--{condition_showS:(_GlitterRandomColors==1)}", Vector) = (0.1, 0.5, 0, 1)
		[ToggleUI]_GlitterRandomRotation ("Random Tex Rotation--{condition_showS:(_GlitterRandomColors==1)}", Float) = 0
		
		[HideInInspector] m_end_glitter ("Glitter / Sparkle--{condition_showS:(_GlitterRandomColors==1)}", Float) = 0
		
		[HideInInspector] m_start_pathing ("Pathing--{reference_property: _EnablePathing}", Float) = 0
		[HideInInspector][ThryToggle(POI_PATHING)] _EnablePathing ("Enable Pathing", Float) = 0
		[ThryExternalTextureToolDrawer(Flood Tool,DreadScripts.GradientFlood)]_PathingMap ("RGB Path Map | A Mask--{reference_properties:[_PathingMapPan, _PathingMapUV]}", 2D) = "white" { }
		[HideInInspector][ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3, Panosphere, 4, World Pos XZ, 5, Polar UV, 6, Distorted UV, 7)]_PathingMapUV ("UV", Int) = 0
		[HideInInspector][Vector2]_PathingMapPan ("Panning", Vector) = (0, 0, 0, 0)
		_PathingColorMap ("RGB Color | A Mask--{reference_properties:[_PathingColorMapPan, _PathingColorMapUV]}", 2D) = "white" { }
		[HideInInspector][ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3, Panosphere, 4, World Pos XZ, 5, Polar UV, 6, Distorted UV, 7)]_PathingColorMapUV ("UV", Int) = 0
		[HideInInspector][Vector2]_PathingColorMapPan ("Panning", Vector) = (0, 0, 0, 0)
		[Enum(Fill, 0, Path, 1, Loop, 2)]_PathTypeR ("R Path Type", Float) = 0
		[Enum(Fill, 0, Path, 1, Loop, 2)]_PathTypeG ("G Path Type", Float) = 0
		[Enum(Fill, 0, Path, 1, Loop, 2)]_PathTypeB ("B Path Type", Float) = 0
		[HDR]_PathColorR ("R Color--{reference_property:_PathColorRThemeIndex}", Color) = (1, 1, 1)
		[HideInInspector][ThryWideEnum(Off, 0, Theme Color 0, 1, Theme Color 1, 2, Theme Color 2, 3, Theme Color 3, 4, ColorChord 0, 5, ColorChord 1, 6, ColorChord 2, 7, ColorChord 3, 8, AL Theme 0, 9, AL Theme 1, 10, AL Theme 2, 11, AL Theme 3, 12)] _PathColorRThemeIndex ("", Int) = 0
		[HDR]_PathColorG ("G Color--{reference_property:_PathColorGThemeIndex}", Color) = (1, 1, 1)
		[HideInInspector][ThryWideEnum(Off, 0, Theme Color 0, 1, Theme Color 1, 2, Theme Color 2, 3, Theme Color 3, 4, ColorChord 0, 5, ColorChord 1, 6, ColorChord 2, 7, ColorChord 3, 8, AL Theme 0, 9, AL Theme 1, 10, AL Theme 2, 11, AL Theme 3, 12)] _PathColorGThemeIndex ("", Int) = 0
		[HDR]_PathColorB ("B Color--{reference_property:_PathColorBThemeIndex}", Color) = (1, 1, 1)
		[HideInInspector][ThryWideEnum(Off, 0, Theme Color 0, 1, Theme Color 1, 2, Theme Color 2, 3, Theme Color 3, 4, ColorChord 0, 5, ColorChord 1, 6, ColorChord 2, 7, ColorChord 3, 8, AL Theme 0, 9, AL Theme 1, 10, AL Theme 2, 11, AL Theme 3, 12)] _PathColorBThemeIndex ("", Int) = 0
		[Vector3]_PathEmissionStrength ("Emission Strength", Vector) = (0.0, 0.0, 0.0, 1)
		[Vector3]_PathSoftness ("Softness", Vector) = (1, 1, 1, 1)
		[Vector3]_PathSpeed ("Speed", Vector) = (1.0, 1.0, 1.0, 1)
		[Vector3]_PathWidth ("Length", Vector) = (0.03, 0.03, 0.03, 1)
		
		[Header(Timing Options)]
		[Vector3]_PathTime ("Manual Timing", Vector) = (-999.0, -999.0, -999.0, 1)
		[Vector3]_PathOffset ("Timing Offset", Vector) = (0.0, 0.0, 0.0, 1)
		[Vector3]_PathSegments ("Path Segments", Vector) = (0.0, 0.0, 0.0, 1)
		
		[HideInInspector] m_start_PathAudioLink ("Audio Link ♫--{ condition_showS:_EnableAudioLink==1}", Float) = 0
		// Time Offsets
		[Header(Time Offset)]
		[Enum(Bass, 0, Low Mid, 1, High Mid, 2, Treble, 3)] _AudioLinkPathTimeOffsetBandR ("Band	R", Int) = 0
		[Vector2]_AudioLinkPathTimeOffsetR ("Offset	R", Vector) = (0, 0, 0)
		[Enum(Bass, 0, Low Mid, 1, High Mid, 2, Treble, 3)] _AudioLinkPathTimeOffsetBandG ("Band	G", Int) = 0
		[Vector2]_AudioLinkPathTimeOffsetG ("Offset	G", Vector) = (0, 0, 0)
		[Enum(Bass, 0, Low Mid, 1, High Mid, 2, Treble, 3)] _AudioLinkPathTimeOffsetBandB ("Band	B", Int) = 0
		
		[Vector2]_AudioLinkPathTimeOffsetB ("Offset	B", Vector) = (0, 0, 0)
		[HideInInspector] m_end_PathAudioLink ("", Float) = 0
		[HideInInspector] m_end_pathing ("", Float) = 0
		
		// Mirror Rendering
		[HideInInspector] m_start_mirrorOptions ("Mirror--{reference_property:_EnableMirrorOptions}", Float) = 0
		[HideInInspector][ThryToggle(POI_MIRROR)]_EnableMirrorOptions ("Enable Mirror Options", Float) = 0
		[ThryWideEnum(Show In Both, 0, Show Only In Mirror, 1, Dont Show In Mirror, 2)] _Mirror ("Show in mirror", Int) = 0
		_MirrorTexture ("Mirror Texture--{reference_properties:[_MirrorTexturePan, _MirrorTextureUV]},", 2D) = "white" { }
		[HideInInspector][Vector2]_MirrorTexturePan ("Panning", Vector) = (0, 0, 0, 0)
		[HideInInspector][ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3, Panosphere, 4, World Pos XZ, 5, Polar UV, 6, Distorted UV, 7)] _MirrorTextureUV("UV", Int) = 0
		[HideInInspector] m_end_mirrorOptions ("Mirror", Float) = 0
		
		[HideInInspector] m_start_depthFX ("Depth FX--{reference_property:_EnableTouchGlow}", Float) = 0
		[HideInInspector][ThryToggle(GRAIN)]_EnableTouchGlow ("Enable Depth FX", Float) = 0
		_DepthMask ("Mask--{reference_properties:[_DepthMaskPan, _DepthMaskUV]}", 2D) = "white" { }
		[HideInInspector][Vector2]_DepthMaskPan ("Panning", Vector) = (0, 0, 0, 0)
		[HideInInspector][ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3, Panosphere, 4, World Pos XZ, 5, Polar UV, 6, Distorted UV, 7)] _DepthMaskUV ("UV", Int) = 0
		
		[Space(10)]
		[ThryToggleUI(true)]_DepthColorToggle ("<size=13><b>  Color & Emission</b></size>", Float) = 0
		[ThryWideEnum(Replace, 0, Multiply, 1, Add, 2)] _DepthColorBlendMode ("Blend Type--{condition_showS:(_DepthColorToggle==1)}", Int) = 0
		_DepthTexture ("Depth Texture--{reference_properties:[_DepthTexturePan, _DepthTextureUV], condition_showS:(_DepthColorToggle==1)}", 2D) = "white" { }
		[HideInInspector][Vector2]_DepthTexturePan ("Panning", Vector) = (0, 0, 0, 0)
		[HideInInspector][ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3, Panosphere, 4, World Pos XZ, 5, Polar UV, 6, Distorted UV, 7)] _DepthTextureUV ("UV", Int) = 0
		_DepthColor ("Color--{condition_showS:(_DepthColorToggle==1), reference_property:_DepthColorThemeIndex}", Color) = (1, 1, 1)
		[HideInInspector][ThryWideEnum(Off, 0, Theme Color 0, 1, Theme Color 1, 2, Theme Color 2, 3, Theme Color 3, 4, ColorChord 0, 5, ColorChord 1, 6, ColorChord 2, 7, ColorChord 3, 8, AL Theme 0, 9, AL Theme 1, 10, AL Theme 2, 11, AL Theme 3, 12)] _DepthColorThemeIndex ("", Int) = 0
		_DepthEmissionStrength ("Emission Strength", Range(0, 20)) = 0
		_DepthColorMinDepth ("Min Depth--{condition_showS:(_DepthColorToggle==1)}", Float) = 0
		_DepthColorMaxDepth ("Max Depth--{condition_showS:(_DepthColorToggle==1)}", Float) = 1
		_DepthColorMinValue ("Min Color Blend--{condition_showS:(_DepthColorToggle==1)}", Range(0, 1)) = 0
		_DepthColorMaxValue ("Max Color Blend--{condition_showS:(_DepthColorToggle==1)}", Range(0, 1)) = 1
		
		[Space(10)]
		[ThryToggleUI(true)]_DepthAlphaToggle ("<size=13><b>  Alpha</b></size>", Float) = 0
		_DepthAlphaMinDepth ("Min Depth--{condition_showS:(_DepthAlphaToggle==1)}", Float) = 0
		_DepthAlphaMaxDepth ("Max Depth--{condition_showS:(_DepthAlphaToggle==1)}", Float) = 1
		_DepthAlphaMinValue ("Min Alpha--{condition_showS:(_DepthAlphaToggle==1)}", Range(0, 1)) = 0
		_DepthAlphaMaxValue ("Max Alpha--{condition_showS:(_DepthAlphaToggle==1)}", Range(0, 1)) = 1
		[HideInInspector] m_end_depthFX ("Depth FX", Float) = 0
		
		[HideInInspector] m_start_Iridescence ("Iridescence--{reference_property:_EnableIridescence}", Float) = 0
		[HideInInspector][ThryToggle(POI_IRIDESCENCE)]_EnableIridescence ("Enable Iridescence", Float) = 0
		[Gradient]_IridescenceRamp ("Ramp--{reference_properties:[_IridescenceRampPan]}", 2D) = "white" { }
		[HideInInspector][Vector2]_IridescenceRampPan ("Panning", Vector) = (0, 0, 0, 0)
		
		_IridescenceMask ("Mask--{reference_properties:[_IridescenceMaskPan, _IridescenceMaskUV]}", 2D) = "white" { }
		[HideInInspector][Vector2]_IridescenceMaskPan("Panning", Vector) = (0, 0, 0, 0)
		[HideInInspector][ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3, Panosphere, 4, World Pos XZ, 5, Polar UV, 6, Distorted UV, 7)]_IridescenceMaskUV ("Mask UV", Int) = 0
		
		[ToggleUI]_IridescenceNormalToggle ("Custom Normals?", Float) = 0
		[Normal]_IridescenceNormalMap ("Normal Map--{reference_properties:[_IridescenceNormalIntensity, _IridescenceNormalMapPan, _IridescenceNormalMapUV]}", 2D) = "bump" { }
		[HideInInspector]_IridescenceNormalIntensity ("Normal Intensity", Range(0, 10)) = 1
		[HideInInspector][Vector2]_IridescenceNormalMapPan ("Panning", Vector) = (0, 0, 0, 0)
		[HideInInspector][ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3, Panosphere, 4, World Pos XZ, 5, Polar UV, 6, Distorted UV, 7)]_IridescenceNormalMapUV ("Normal UV", Int) = 0
		[Enum(Vertex, 0, Pixel, 1)] _IridescenceNormalSelection ("Normal Select", Int) = 1
		_IridescenceIntensity ("Intensity", Range(0, 10)) = 1
		_IridescenceAddBlend ("Blend Add", Range(0, 1)) = 0
		_IridescenceReplaceBlend ("Blend Replace", Range(0, 1)) = 0
		_IridescenceMultiplyBlend ("Blend Multiply", Range(0, 1)) = 0
		_IridescenceEmissionStrength ("Emission Strength", Range(0, 20)) = 0
		[Enum(Run Early, 0, Run Late, 1)] _IridescenceTime ("When To Run", Int) = 0
		[Header(Hue Shift)]
		[ToggleUI]_IridescenceHueShiftEnabled ("Enable", Float) = 0
		_IridescenceHueShiftSpeed ("Speed", Float) = 0
		_IridescenceHueShift ("Shift", Range(0,1)) = 0
		
		// Iridescence Audio Link
		[HideInInspector] m_start_IridescenceAudioLink ("Audio Link ♫--{ condition_showS:_EnableAudioLink==1}", Float) = 0
		[Enum(Bass, 0, Low Mid, 1, High Mid, 2, Treble, 3)] _IridescenceAudioLinkEmissionBand ("Scale Band", Int) = 0
		[Vector2]_IridescenceAudioLinkEmission("Scale Mod", Vector) = (0,0,0,0)
		[HideInInspector] m_end_IridescenceAudioLink ("Audio Link", Float) = 0
		[HideInInspector] m_end_Iridescence ("Iridescence", Float) = 0
		
		// MSDF OVERLAY
		[HideInInspector] m_start_Text ("Stats Overlay--{reference_property:_TextEnabled}", Float) = 0
		_TextGlyphs ("Font Array", 2D) = "black" { }
		_TextPixelRange ("Pixel Range", Float) = 4.0
		[HideInInspector][ThryToggle(EFFECT_BUMP)]_TextEnabled ("Text?", Float) = 0
		
		// FPS
		[HideInInspector] m_start_TextFPS ("FPS--{reference_property:_TextFPSEnabled}", Float) = 0
		[HideInInspector][ToggleUI]_TextFPSEnabled ("FPS Text?", Float) = 0
		[ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3, Panosphere, 4, World Pos XZ, 5, Polar UV, 6, Distorted UV, 7)] _TextFPSUV ("FPS UV", Int) = 0
		_TextFPSColor ("Color--{reference_property:_TextFPSColorThemeIndex}", Color) = (1, 1, 1, 1)
		[HideInInspector][ThryWideEnum(Off, 0, Theme Color 0, 1, Theme Color 1, 2, Theme Color 2, 3, Theme Color 3, 4, ColorChord 0, 5, ColorChord 1, 6, ColorChord 2, 7, ColorChord 3, 8, AL Theme 0, 9, AL Theme 1, 10, AL Theme 2, 11, AL Theme 3, 12)] _TextFPSColorThemeIndex ("", Int) = 0
		_TextFPSEmissionStrength ("Emission Strength", Range(0, 20)) = 0
		[Vector2]_TextFPSOffset ("Offset", Vector) = (0, 0, 0, 0)
		_TextFPSRotation ("Rotation", Range(0, 360)) = 0
		[Vector2]_TextFPSScale ("Scale", Vector) = (1, 1, 1, 1)
		_TextFPSPadding ("Padding Reduction", Vector) = (0, 0, 0, 0)
		[HideInInspector] m_end_TextFPS ("FPS", Float) = 0
		
		// POSITION
		[HideInInspector] m_start_TextPosition ("Position--{reference_property:_TextPositionEnabled}", Float) = 0
		[HideInInspector][ToggleUI]_TextPositionEnabled ("Position Text?", Float) = 0
		[ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3, Panosphere, 4, World Pos XZ, 5, Polar UV, 6, Distorted UV, 7)] _TextPositionUV ("Position UV", Int) = 0
		//[ToggleUI]_TextPositionVertical ("Vertical?", Float) = 0
		_TextPositionColor ("Color--{reference_property:_TextPositionColorThemeIndex}", Color) = (1, 0, 1, 1)
		[HideInInspector][ThryWideEnum(Off, 0, Theme Color 0, 1, Theme Color 1, 2, Theme Color 2, 3, Theme Color 3, 4, ColorChord 0, 5, ColorChord 1, 6, ColorChord 2, 7, ColorChord 3, 8, AL Theme 0, 9, AL Theme 1, 10, AL Theme 2, 11, AL Theme 3, 12)] _TextPositionColorThemeIndex ("", Int) = 0
		_TextPositionEmissionStrength ("Emission Strength", Range(0, 20)) = 0
		[Vector2]_TextPositionOffset ("Offset", Vector) = (0, 0, 0, 0)
		_TextPositionRotation ("Rotation", Range(0, 360)) = 0
		[Vector2]_TextPositionScale ("Scale", Vector) = (1, 1, 1, 1)
		_TextPositionPadding ("Padding Reduction", Vector) = (0, 0, 0, 0)
		[HideInInspector] m_end_TextPosition ("Position", Float) = 0
		
		// INSTANCE TIME
		[HideInInspector] m_start_TextInstanceTime ("Instance Time--{reference_property:_TextTimeEnabled}", Float) = 0
		[HideInInspector][ToggleUI]_TextTimeEnabled ("Time Text?", Float) = 0
		[ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3, Panosphere, 4, World Pos XZ, 5, Polar UV, 6, Distorted UV, 7)] _TextTimeUV ("Time UV", Int) = 0
		_TextTimeColor ("Color--{reference_property:_TextTimeColorThemeIndex}", Color) = (1, 0, 1, 1)
		[HideInInspector][ThryWideEnum(Off, 0, Theme Color 0, 1, Theme Color 1, 2, Theme Color 2, 3, Theme Color 3, 4, ColorChord 0, 5, ColorChord 1, 6, ColorChord 2, 7, ColorChord 3, 8, AL Theme 0, 9, AL Theme 1, 10, AL Theme 2, 11, AL Theme 3, 12)] _TextTimeColorThemeIndex ("", Int) = 0
		_TextTimeEmissionStrength ("Emission Strength", Range(0, 20)) = 0
		[Vector2]_TextTimeOffset ("Offset", Vector) = (0, 0, 0, 0)
		_TextTimeRotation ("Rotation", Range(0, 360)) = 0
		[Vector2]_TextTimeScale ("Scale", Vector) = (1, 1, 1, 1)
		_TextTimePadding ("Padding Reduction", Vector) = (0, 0, 0, 0)
		[HideInInspector] m_end_TextInstanceTime ("Instance Time", Float) = 0
		[HideInInspector] m_end_Text ("MSDF Text Overlay", Float) = 0
		
		// Poi Extras
		// Audio link
		[HideInInspector] m_AudioLinkCategory (" Audio Link--{reference_property:_EnableAudioLink}", Float) = 0
		[HideInInspector] m_start_audioLink ("Audio Link", Float) = 0
		[HideInInspector][ThryToggle(COLOR_GRADING_LOG_VIEW)] _EnableAudioLink ("Enabled?", Float) = 0
		[Helpbox(1)] _AudioLinkHelp ("This section houses the global controls for audio link. Controls for individual features are in their respective sections. (Emission, Dissolve, etc...)", Int) = 0
		[ToggleUI] _AudioLinkAnimToggle ("Anim Toggle", Float) = 1
		/*
		_AudioLinkDelay ("Delay", Range(0, 1)) = 0
		[ToggleUI]_AudioLinkCCStripY("CC Strip Y UV", Float) = 0
		*/
		//[ToggleUI]_AudioLinkAveraging ("Enable averaging", Float) = 0
		//_AudioLinkAverageRange ("Average Sampling Range", Range(0, 1)) = .5
		[ThryHeaderLabel(Debug Visualizer, 13)]
		[ToggleUI]_DebugWaveform("Waveform", Float) = 0
		[ToggleUI]_DebugDFT("DFT", Float) = 0
		[ToggleUI]_DebugBass("Bass", Float) = 0
		[ToggleUI]_DebugLowMids("Low Mids", Float) = 0
		[ToggleUI]_DebugHighMids("High Mids", Float) = 0
		[ToggleUI]_DebugTreble("Treble", Float) = 0
		[ToggleUI]_DebugCCColors("Colorchord Colors", Float) = 0
		[ToggleUI]_DebugCCStrip("Colorchord Strip", Float) = 0
		[ToggleUI]_DebugCCLights("Colorchord Lights", Float) = 0
		[ToggleUI]_DebugAutocorrelator("Autocorrelator", Float) = 0
		[ToggleUI]_DebugChronotensity("Chronotensity", Float) = 0
		[Helpbox(1)]_DebugVisualizerHelpbox ("Debug examples are best viewed on a flat surface with simple uvs like a default unity quad.", Int) = 0
		
		[HideInInspector] m_end_audioLink ("Audio Link", Float) = 0
		
		[HideInInspector] m_start_ALDecalSpectrum ("AL ♫ Spectrum--{  reference_property:_EnableALDecal}", Float) = 0
		[HideInInspector][ThryToggle(POI_AL_DECAL)]_EnableALDecal ("Enable AL Decal", Float) = 0
		[HideInInspector][ThryWideEnum(lil Spectrum, 0)] _ALDecalType ("AL Type--{ condition_showS:_EnableAudioLink==1}", Int) = 0
		
		[ThryHeaderLabel(Transform, 13)]
		[Space(4)]
		[Enum(Normal, 0, Circle, 1)] _ALDecalUVMode ("UV Mode", Float) = 0
		[ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3, Panosphere, 4, World Pos XZ, 5, Polar UV, 6, Distorted UV, 7)] _ALDecalUV ("UV", Int) = 0
		[Vector2]_ALUVPosition ("Position", Vector) = (.5, .5, 1)
		_ALUVScale ("Scale", Vector) = (1, 1, 1, 1)
		_ALUVRotation ("Rotation", Range(0, 360)) = 0
		_ALUVRotationSpeed ("Rotation Speed", Float) = 0
		_ALDecalLineWidth ("Line Width", Range(0, 1)) = 1.0
		_ALDecaldCircleDimensions ("Cirlce Dimensions--{ condition_showS:_ALDecalUVMode==1}", Vector) = (0, 1, 0, 1)
		
		[Space][ThryHeaderLabel(Volume, 13)]
		[Space(4)]
		_ALDecalVolumeStep ("Volume Step Num (0 = Off)", Float) = 0.0
		_ALDecalVolumeClipMin ("Volume Clip Min", Range(0, 1)) = 0.0
		_ALDecalVolumeClipMax ("Volume Clip Max", Range(0, 1)) = 1.0
		
		[Space][ThryHeaderLabel(Band, 13)]
		[Space(4)]
		_ALDecalBandStep ("Band Step Num (0 = Off)", Float) = 0.0
		_ALDecalBandClipMin ("Band Clip Min", Range(0, 1)) = 0.0
		_ALDecalBandClipMax ("Band Clip Max", Range(0, 1)) = 1.0
		
		[Space][ThryToggleUI(true)]_ALDecalShapeClip ("<size=13><b>  Shape Clip</b></size>", Float) = 0
		_ALDecalShapeClipVolumeWidth ("Volume Width--{ condition_showS:_ALDecalShapeClip==1}", Range(0, 1)) = 0.5
		_ALDecalShapeClipBandWidth ("Band Width--{ condition_showS:_ALDecalShapeClip==1}", Range(0, 1)) = 0.5
		
		[Space][ThryHeaderLabel(Audio Mods, 13)]
		[Space(4)]
		_ALDecalVolume ("Volume", Int) = 0.5
		_ALDecalBaseBoost ("Bass Boost", Float) = 5.0
		_ALDecalTrebleBoost ("Treble Boost", Float) = 1.0
		
		[Space][ThryHeaderLabel(Colors and Blending, 13)]
		[Space(4)]
		[Enum(UVX, 0, UVY, 1, Volume, 2)] _ALDecalVolumeColorSource ("Source", Int) = 1
		_ALDecalVolumeColorLow ("Volume Color Low", Color) = (0, 0, 1)
		_ALDecalLowEmission ("Low Emission", Range(0, 20)) = 0
		_ALDecalVolumeColorMid ("Volume Color Mid", Color) = (0, 1, 0)
		_ALDecalMidEmission ("Mid Emission", Range(0, 20)) = 0
		_ALDecalVolumeColorHigh ("Volume Color High", Color) = (1, 0, 0)
		_ALDecalHighEmission ("High Emission", Range(0, 20)) = 0
		[ThryWideEnum(Replace, 0, Darken, 1, Multiply, 2, Color Burn, 3, Linear Burn, 4, Lighten, 5, Screen, 6, Color Dodge, 7, Linear Dodge(Add), 8, Overlay, 9, Soft Lighten, 10, Hard Light, 11, Vivid Light, 12, Linear Light, 13, Pin Light, 14, Hard Mix, 15, Difference, 16, Exclusion, 17, Subtract, 18, Divide, 19)]_ALDecalBlendType ("Blend Type", Range(0, 1)) = 0
		_ALDecalBlendAlpha ("Alpha", Range(0, 1)) = 1
		_ALDecalControlsAlpha ("Override Alpha", Range(0, 1)) = 0
		
		[HideInInspector] m_end_ALDecalSpectrum ("AL ♫ Spectrum", Float) = 0
		
		// Rendering Options
		[HideInInspector] m_modifierCategory ("Modifiers", Float) = 0
		[HideInInspector] m_start_uvDistortion (" Distortion UV--{reference_property:_EnableDistortion}", Float) = 0
		[HideInInspector][ThryToggle(USER_LUT)] _EnableDistortion ("Enabled?", Float) = 0
		[ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3, Panosphere, 4, World Pos XZ, 5, Polar UV, 6)] _DistortionUvToDistort ("Distorted UV", Int) = 0
		_DistortionMask ("Mask--{reference_properties:[_DistortionMaskPan, _DistortionMaskUV]}", 2D) = "white" { }
		[HideInInspector][Vector2]_DistortionMaskPan ("Panning", Vector) = (0, 0, 0, 0)
		[HideInInspector][ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3, Panosphere, 4, World Pos XZ, 5, Polar UV, 6)] _DistortionMaskUV ("UV", Int) = 0
		_DistortionFlowTexture ("Distortion Texture 1--{reference_properties:[_DistortionFlowTexturePan, _DistortionFlowTextureUV]}", 2D) = "black" { }
		[HideInInspector][Vector2]_DistortionFlowTexturePan ("Panning", Vector) = (0, 0, 0, 0)
		[HideInInspector][ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3, Panosphere, 4, World Pos XZ, 5, Polar UV, 6)] _DistortionFlowTextureUV ("UV", Int) = 0
		_DistortionFlowTexture1 ("Distortion Texture 2--{reference_properties:[_DistortionFlowTexture1Pan, _DistortionFlowTexture1UV]}", 2D) = "black" { }
		[HideInInspector][Vector2]_DistortionFlowTexture1Pan ("Panning", Vector) = (0, 0, 0, 0)
		[HideInInspector][ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3, Panosphere, 4, World Pos XZ, 5, Polar UV, 6)] _DistortionFlowTexture1UV ("UV", Int) = 0
		_DistortionStrength ("Strength1", Float) = 0.03
		_DistortionStrength1 ("Strength2", Float) = 0.01
		[HideInInspector] m_end_uvDistortion ("Distortion UV", Float) = 0
		
		[HideInInspector] m_start_uvPanosphere ("Panosphere UV", Float) = 0
		[ToggleUI] _StereoEnabled ("Stereo Enabled", Float) = 0
		[ToggleUI] _PanoUseBothEyes ("Perspective Correct (VR)", Float) = 1
		[HideInInspector] m_end_uvPanosphere ("Panosphere UV", Float) = 0
		
		[HideInInspector] m_start_uvPolar ("Polar UV", Float) = 0
		[ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3, Panosphere, 4, World Pos XZ, 5)] _PolarUV ("UV", Int) = 0
		[Vector2]_PolarCenter ("Center Coordinate", Vector) = (.5, .5, 0, 0)
		_PolarRadialScale ("Radial Scale", Float) = 1
		_PolarLengthScale ("Length Scale", Float) = 1
		_PolarSpiralPower ("Spiral Power", Float) = 0
		[HideInInspector] m_end_uvPolar ("Polar UV", Float) = 0
		
		[HideInInspector] m_start_parallax (" Parallax Heightmapping--{reference_property:_PoiParallax}", Float) = 0
		[HideInInspector][ThryToggle(POI_PARALLAX)]_PoiParallax ("Enable", Float) = 0
		[ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3, Panosphere, 4, World Pos XZ, 5, Polar UV, 6, Distorted UV, 7)]_ParallaxUV ("Applies To: ", Int) = 0
		
		[ThryTexture]_HeightMap ("Heightmap--{reference_properties:[_HeightMapPan, _HeightMapUV]}", 2D) = "white" { }
		[HideInInspector][Vector2]_HeightMapPan ("Panning", Vector) = (0, 0, 0, 0)
		[HideInInspector][ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3, Panosphere, 4, World Pos XZ, 5, Polar UV, 6, Distorted UV, 7)]_HeightMapUV ("UV", Int) = 0
		
		/*
		[ThryTexture]_Heightmask ("Mask--{reference_properties:[_HeightmaskPan, _HeightmaskUV, _HeightmaskInvert]}", 2D) = "white" { }
		[HideInInspector][Vector2]_HeightmaskPan ("Panning", Vector) = (0, 0, 0, 0)
		[HideInInspector][ToggleUI]_HeightmaskInvert ("Invert", Float) = 0
		[HideInInspector][ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3, Panosphere, 4, World Pos XZ, 5, Polar UV, 6, Distorted UV, 7)]_HeightmaskUV ("UV", Int) = 0
		*/
		
		_HeightStrength ("Strength", Range(0, 1)) = 0.4247461
		//_HeightOffset ("Offset", Range(-1, 1)) = 0
		_CurvatureU ("Curvature U", Range(0, 100)) = 0
		_CurvatureV ("Curvature V", Range(0, 30)) = 0
		[IntRange]_HeightStepsMin ("Steps Min", Range(0, 128)) = 10
		[IntRange]_HeightStepsMax ("Steps Max", Range(0, 128)) = 128
		_CurvFix ("Curvature Bias", Range(0, 1)) = 1
		// [ThryToggle]_ParallaxUV0 ("UV0", Float) = 0
		// [ThryToggle]_ParallaxUV1 ("UV1", Float) = 0
		// [ThryToggle]_ParallaxUV2 ("UV2", Float) = 0
		// [ThryToggle]_ParallaxUV3 ("UV3", Float) = 0
		// [ThryToggle]_ParallaxPano ("Panosphere", Float) = 0
		// [ThryToggle]_ParallaxWorldPos ("World Pos", Float) = 0
		// [ThryToggle]_ParallaxPolar ("Polar", Float) = 0
		// [ThryToggle]_ParallaxDist ("Distorted UV", Float) = 0
		
		[HideInInspector] m_end_parallax ("Parallax Heightmapping", Float) = 0
		
		//Third party
		[HideInInspector] m_thirdpartyCategory ("Third Party", Float) = 0
		
		// Rendering Options
		[HideInInspector] m_postprocessing ("Post Processing", Float) = 0
		[HideInInspector] m_start_PoiLightData ("PP Animations ", Float) = 0
		[Helpbox(1)] _PPHelp ("This section meant for rael time adjustments through animations and not to be changed in unity", Int) = 0
		_PPLightingMultiplier ("Lighting Mulitplier", Float) = 1
		_PPLightingAddition ("Lighting Add", Float) = 0
		_PPEmissionMultiplier ("Emission Multiplier", Float) = 1
		_PPFinalColorMultiplier ("Final Color Multiplier", Float) = 1
		[HideInInspector] m_end_PoiLightData ("PP Animations ", Float) = 0
		
		[HideInInspector] m_start_postprocess ("Post Processing--{reference_property:_PostProcess}", Float) = 0
		[HideInInspector][ThryToggle(MOCHIE_POSTPROCESS)]_PostProcess ("Enable", Float) = 0
		[ThryTexture] _PPMask("Mask--{reference_properties:[_PPMaskPan, _PPMaskUV, _PPMaskInvert]}", 2D) = "white" { }
		[HideInInspector][Vector2]_PPMaskPan ("Panning", Vector) = (0, 0, 0, 0)
		[HideInInspector][ToggleUI]_PPMaskInvert ("Invert", Float) = 0
		[HideInInspector][ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3, Panosphere, 4, World Pos XZ, 5, Polar UV, 6, Distorted UV, 7)]_PPMaskUV ("UV", Int) = 0
		
		[NoScaleOffset][ThryTexture] _PPLUT("LUT", 2D) = "white" {}
		_PPLUTStrength("LUT Strength", Range(0,1)) = 0
		_PPHue("Hue", Range(0,1)) = 0
		[HDR]_PPTint("Tint", Color) = (1,1,1,1)
		[Vector3]_PPRGB("RGB", Vector) = (1,1,1,1)
		_PPContrast("Contrast", Float) = 1
		_PPSaturation("Saturation", Float) = 1
		_PPBrightness("Brightness", Float) = 1
		_PPLightness("Lightness", Float) = 0
		_PPHDR("HDR", Float) = 0
		
		[HideInInspector] m_end_postprocess ("", Float) = 0
		
		// Rendering Options
		[HideInInspector] m_renderingCategory ("Rendering", Float) = 0
		[Enum(UnityEngine.Rendering.CullMode)] _Cull ("Cull", Float) = 2
		[Enum(UnityEngine.Rendering.CompareFunction)] _ZTest ("ZTest", Float) = 4
		[Enum(Off, 0, On, 1)] _ZWrite ("ZWrite", Int) = 1
		[Enum(Thry.ColorMask)] _ColorMask ("Color Mask", Int) = 15
		_OffsetFactor ("Offset Factor", Float) = 0.0
		_OffsetUnits ("Offset Units", Float) = 0.0
		[ToggleUI]_RenderingReduceClipDistance ("Reduce Clip Distance", Float) = 0
		[ToggleUI]_IgnoreFog ("Ignore Fog", Float) = 0
		[HideInInspector] Instancing ("Instancing", Float) = 0 //add this property for instancing variants settings to be shown
		
		// Blending Options
		[HideInInspector] m_start_blending ("Blending", Float) = 0
		[Enum(Thry.BlendOp)]_BlendOp ("RGB Blend Op", Int) = 0
		[Enum(Thry.BlendOp)]_BlendOpAlpha ("Alpha Blend Op", Int) = 0
		[Enum(UnityEngine.Rendering.BlendMode)] _SrcBlend ("Source Blend", Int) = 1
		[Enum(UnityEngine.Rendering.BlendMode)] _DstBlend ("Destination Blend", Int) = 0
		[HideInInspector] m_end_blending ("Blending", Float) = 0
		
		// Stencils
		[HideInInspector] m_start_StencilPassOptions ("Stencil", Float) = 0
		[IntRange] _StencilRef ("Stencil Reference Value", Range(0, 255)) = 0
		[IntRange] _StencilReadMask ("Stencil ReadMask Value", Range(0, 255)) = 255
		[IntRange] _StencilWriteMask ("Stencil WriteMask Value", Range(0, 255)) = 255
		[Enum(UnityEngine.Rendering.StencilOp)] _StencilPassOp ("Stencil Pass Op", Float) = 0
		[Enum(UnityEngine.Rendering.StencilOp)] _StencilFailOp ("Stencil Fail Op", Float) = 0
		[Enum(UnityEngine.Rendering.StencilOp)] _StencilZFailOp ("Stencil ZFail Op", Float) = 0
		[Enum(UnityEngine.Rendering.CompareFunction)] _StencilCompareFunction ("Stencil Compare Function", Float) = 8
		[HideInInspector] m_end_StencilPassOptions ("Stencil", Float) = 0
		
	}
	SubShader
	{
		Tags { "RenderType" = "Opaque" "Queue" = "Geometry" "VRCFallback" = "Standard" }
		
		Pass
		{
			Tags { "LightMode" = "ForwardBase" }
			
			Stencil
			{
				Ref [_StencilRef]
				ReadMask [_StencilReadMask]
				WriteMask [_StencilWriteMask]
				Comp [_StencilCompareFunction]
				Pass [_StencilPassOp]
				Fail [_StencilFailOp]
				ZFail [_StencilZFailOp]
			}
			
			ZWrite [_ZWrite]
			Cull [_Cull]
			AlphaToMask [_AlphaToCoverage]
			ZTest [_ZTest]
			ColorMask [_ColorMask]
			Offset [_OffsetFactor], [_OffsetUnits]
			
			BlendOp [_BlendOp], [_BlendOpAlpha]
			Blend [_SrcBlend] [_DstBlend]
			
			CGPROGRAM
			
			#pragma target 5.0
			
			#pragma shader_feature_local POI_UDIMDISCARD
			
			#pragma shader_feature USER_LUT
			
			#pragma shader_feature_local POI_PARALLAX
			
			#pragma shader_feature COLOR_GRADING_LOG_VIEW
			
			#pragma shader_feature_local POI_LIGHT_DATA_DEBUG
			#pragma shader_feature_local POI_LIGHT_DATA_ADDITIVE_ENABLE
			#pragma shader_feature_local POI_LIGHT_DATA_ADDITIVE_DIRECTIONAL_ENABLE
			#pragma shader_feature_local POI_VERTEXLIGHT_ON
			
			#pragma shader_feature COLOR_GRADING_HDR
			
			//#pragma shader_feature KEYWORD
			
			#pragma shader_feature FINALPASS
			
			#pragma shader_feature AUTO_EXPOSURE
			
			#pragma shader_feature_local POI_BACKFACE
			
			#pragma shader_feature VIGNETTE
			#pragma shader_feature GEOM_TYPE_MESH
			
			#pragma shader_feature GEOM_TYPE_BRANCH
			#pragma shader_feature GEOM_TYPE_BRANCH_DETAIL
			#pragma shader_feature GEOM_TYPE_FROND
			#pragma shader_feature DEPTH_OF_FIELD_COC_VIEW
			
			#pragma shader_feature DISTORT
			
			#pragma shader_feature VIGNETTE_MASKED
			#pragma shader_feature_local _LIGHTINGMODE_TEXTURERAMP _LIGHTINGMODE_MATHRAMP _LIGHTINGMODE_SHADEMAP _LIGHTINGMODE_REALISTIC _LIGHTINGMODE_WRAPPED _LIGHTINGMODE_SKIN _LIGHTINGMODE_FLAT _LIGHTINGMODE_CLOTH
			#pragma shader_feature_local POI_CLOTHLERP
			
			#pragma shader_feature COLOR_GRADING_HDR_3D
			#pragma shader_feature_local POI_MATCAP0
			#pragma shader_feature_local POI_MATCAP0_CUSTOM_NORMAL
			#pragma shader_feature_local POI_MATCAP1_CUSTOM_NORMAL
			
			#pragma shader_feature_local _CUBEMAP
			
			#pragma shader_feature_local POI_AL_DECAL
			
			#pragma shader_feature _SUNDISK_HIGH_QUALITY
			
			#pragma shader_feature _EMISSION
			#pragma shader_feature_local POI_EMISSION_1
			#pragma shader_feature_local POI_EMISSION_2
			#pragma shader_feature_local POI_EMISSION_3
			
			#pragma shader_feature _GLOSSYREFLECTIONS_OFF
			
			#pragma shader_feature _SUNDISK_SIMPLE
			
			#pragma shader_feature_local MOCHIE_PBR
			
			#pragma shader_feature_local _COLORCOLOR_ON
			
			#pragma shader_feature_local POI_ENVIRORIM
			
			#pragma shader_feature_local POI_STYLIZED_StylizedSpecular
			
			#pragma shader_feature_local POI_PATHING
			
			#pragma shader_feature_local POI_MIRROR
			
			#pragma shader_feature GRAIN
			
			#pragma shader_feature_local POI_IRIDESCENCE
			
			#pragma shader_feature EFFECT_BUMP
			
			#pragma shader_feature_local MOCHIE_POSTPROCESS
			
			#pragma shader_feature VERTEXLIGHT_ON
			#pragma multi_compile_fwdbase
			#pragma multi_compile_instancing
			#pragma multi_compile_fog
			#pragma multi_compile _ VERTEXLIGHT_ON
			#define POI_PASS_BASE
			
			// UNITY Includes
			#include "UnityCG.cginc"
			#include "UnityStandardUtils.cginc"
			#include "AutoLight.cginc"
			#include "UnityLightingCommon.cginc"
			#include "UnityPBSLighting.cginc"
			#pragma vertex vert
			#pragma fragment frag
			
			#define DielectricSpec float4(0.04, 0.04, 0.04, 1.0 - 0.04)
			#define pi float(3.14159265359)
			
			#define POI2D_SAMPLER_PAN(tex, texSampler, uv, pan) (UNITY_SAMPLE_TEX2D_SAMPLER(tex, texSampler, uv + _Time.x * pan))
			#define POI2D_SAMPLER_PANGRAD(tex, texSampler, uv, pan, ddx, ddy) (UNITY_SAMPLE_TEX2D_SAMPLER(tex, texSampler, uv + _Time.x * pan, ddx, ddy))
			#define POI2D_SAMPLER(tex, texSampler, uv) (UNITY_SAMPLE_TEX2D_SAMPLER(tex, texSampler, uv))
			#define POI2D_PAN(tex, uv, pan) (tex2D(tex, uv + _Time.x * pan))
			#define POI2D(tex, uv) (tex2D(tex, uv))
			#define POI_SAMPLE_TEX2D(tex, uv) (UNITY_SAMPLE_TEX2D(tex, uv))
			#define POI_SAMPLE_TEX2D_PAN(tex, uv, pan) (UNITY_SAMPLE_TEX2D(tex, uv + _Time.x * pan))
			
			#define POI2D_MAINTEX_SAMPLER_PAN_INLINED(tex, poiMesh) (POI2D_SAMPLER_PAN(tex, _MainTex, poiUV(poiMesh.uv[tex##UV], tex##_ST), tex##Pan))
			
			#define POI_SAFE_RGB1 float4(mainTexture.rgb * .0001, 1)
			#define POI_SAFE_RGBA mainTexture
			
			#if defined(UNITY_COMPILER_HLSL)
			#define PoiInitStruct(type, name) name = (type)0;
			#else
			#define PoiInitStruct(type, name)
			#endif
			
			#define POI_ERROR(poiMesh, gridSize) lerp(float3(1, 0, 1), float3(0, 0, 0), fmod(floor((poiMesh.worldPos.x) * gridSize) + floor((poiMesh.worldPos.y) * gridSize) + floor((poiMesh.worldPos.z) * gridSize), 2) == 0)
			
			#define POI_MODE_OPAQUE 0
			#define POI_MODE_CUTOUT 1
			#define POI_MODE_FADE 2
			#define POI_MODE_TRANSPARENT 3
			#define POI_MODE_ADDITIVE 4
			#define POI_MODE_SOFTADDITIVE 5
			#define POI_MODE_MULTIPLICATIVE 6
			#define POI_MODE_2XMULTIPLICATIVE 7
			#define POI_MODE_TRANSCLIPPING 9
			
			/*
			Texture2D ;
			float4 _ST;
			float2 Pan;
			float UV;
			
			[HideInInspector][ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3, Panosphere, 4, World Pos XZ, 5, Polar UV, 6, Distorted UV, 7 )]
			*/
			// Map of where features in AudioLink are.
			#define ALPASS_DFT                      uint2(0,4)   //Size: 128, 2
			#define ALPASS_WAVEFORM                 uint2(0,6)   //Size: 128, 16
			#define ALPASS_AUDIOLINK                uint2(0,0)   //Size: 128, 4
			#define ALPASS_AUDIOBASS                uint2(0,0)   //Size: 128, 1
			#define ALPASS_AUDIOLOWMIDS             uint2(0,1)   //Size: 128, 1
			#define ALPASS_AUDIOHIGHMIDS            uint2(0,2)   //Size: 128, 1
			#define ALPASS_AUDIOTREBLE              uint2(0,3)   //Size: 128, 1
			#define ALPASS_AUDIOLINKHISTORY         uint2(1,0)   //Size: 127, 4
			#define ALPASS_GENERALVU                uint2(0,22)  //Size: 12, 1
			#define ALPASS_CCINTERNAL               uint2(12,22) //Size: 12, 2
			#define ALPASS_CCCOLORS                 uint2(25,22) //Size: 11, 1
			#define ALPASS_CCSTRIP                  uint2(0,24)  //Size: 128, 1
			#define ALPASS_CCLIGHTS                 uint2(0,25)  //Size: 128, 2
			#define ALPASS_AUTOCORRELATOR           uint2(0,27)  //Size: 128, 1
			#define ALPASS_GENERALVU_INSTANCE_TIME  uint2(2,22)
			#define ALPASS_GENERALVU_LOCAL_TIME     uint2(3,22)
			#define ALPASS_GENERALVU_NETWORK_TIME   uint2(4,22)
			#define ALPASS_GENERALVU_PLAYERINFO     uint2(6,22)
			// Added in version 2.5
			#define ALPASS_FILTEREDAUDIOLINK        uint2(0,28)  //Size: 16, 4
			// Added in version 2.6
			#define ALPASS_CHRONOTENSITY            uint2(16,28) //Size: 8, 4
			#define ALPASS_THEME_COLOR0             uint2(0,23)
			#define ALPASS_THEME_COLOR1             uint2(1,23)
			#define ALPASS_THEME_COLOR2             uint2(2,23)
			#define ALPASS_THEME_COLOR3             uint2(3,23)
			#define ALPASS_FILTEREDVU               uint2(24,28) //Size: 4, 4
			#define ALPASS_FILTEREDVU_INTENSITY     uint2(24,28) //Size: 4, 1
			#define ALPASS_FILTEREDVU_MARKER        uint2(24,29) //Size: 4, 1
			
			// Some basic constants to use (Note, these should be compatible with
			// future version of AudioLink, but may change.
			#define AUDIOLINK_SAMPHIST              3069        // Internal use for algos, do not change.
			#define AUDIOLINK_SAMPLEDATA24          2046
			#define AUDIOLINK_EXPBINS               24
			#define AUDIOLINK_EXPOCT                10
			#define AUDIOLINK_ETOTALBINS (AUDIOLINK_EXPBINS * AUDIOLINK_EXPOCT)
			#define AUDIOLINK_WIDTH                 128
			#define AUDIOLINK_SPS                   48000       // Samples per second
			#define AUDIOLINK_ROOTNOTE              0
			#define AUDIOLINK_4BAND_FREQFLOOR       0.123
			#define AUDIOLINK_4BAND_FREQCEILING     1
			#define AUDIOLINK_BOTTOM_FREQUENCY      13.75
			#define AUDIOLINK_BASE_AMPLITUDE        2.5
			#define AUDIOLINK_DELAY_COEFFICIENT_MIN 0.3
			#define AUDIOLINK_DELAY_COEFFICIENT_MAX 0.9
			#define AUDIOLINK_DFT_Q                 4.0
			#define AUDIOLINK_TREBLE_CORRECTION     5.0
			
			// ColorChord constants
			#define COLORCHORD_EMAXBIN              192
			#define COLORCHORD_IIR_DECAY_1          0.90
			#define COLORCHORD_IIR_DECAY_2          0.85
			#define COLORCHORD_CONSTANT_DECAY_1     0.01
			#define COLORCHORD_CONSTANT_DECAY_2     0.0
			#define COLORCHORD_NOTE_CLOSEST         3.0
			#define COLORCHORD_NEW_NOTE_GAIN        8.0
			#define COLORCHORD_MAX_NOTES            10
			
			// We use glsl_mod for most calculations because it behaves better
			// on negative numbers, and in some situations actually outperforms
			// HLSL's modf().
			#ifndef glsl_mod
			#define glsl_mod(x, y) (((x) - (y) * floor((x) / (y))))
			#endif
			
			uniform float4               _AudioTexture_TexelSize;
			
			#ifdef SHADER_TARGET_SURFACE_ANALYSIS
			#define AUDIOLINK_STANDARD_INDEXING
			#endif
			
			// Mechanism to index into texture.
			#ifdef AUDIOLINK_STANDARD_INDEXING
			sampler2D _AudioTexture;
			#define AudioLinkData(xycoord) tex2Dlod(_AudioTexture, float4(uint2(xycoord) * _AudioTexture_TexelSize.xy, 0, 0))
			#else
			uniform Texture2D<float4> _AudioTexture;
			SamplerState sampler_AudioTexture;
			#define AudioLinkData(xycoord) _AudioTexture[uint2(xycoord)]
			#endif
			
			float _Mode;
			
			float4 _GlobalThemeColor0;
			float4 _GlobalThemeColor1;
			float4 _GlobalThemeColor2;
			float4 _GlobalThemeColor3;
			
			#ifdef POI_UDIMDISCARD
			float _UDIMDiscardMode;
			float _UDIMDiscardUV;
			float4 _UDIMDiscardRow3;
			float4 _UDIMDiscardRow2;
			float4 _UDIMDiscardRow1;
			float4 _UDIMDiscardRow0;
			#endif
			
			#ifdef USER_LUT
			#if defined(PROP_DISTORTIONFLOWTEXTURE) || !defined(OPTIMIZER_ENABLED)
			Texture2D _DistortionFlowTexture;
			float4 _DistortionFlowTexture_ST;
			float2 _DistortionFlowTexturePan;
			float _DistortionFlowTextureUV;
			#endif
			
			#if defined(PROP_DISTORTIONFLOWTEXTURE1) || !defined(OPTIMIZER_ENABLED)
			Texture2D _DistortionFlowTexture1;
			float4 _DistortionFlowTexture1_ST;
			float2 _DistortionFlowTexture1Pan;
			float _DistortionFlowTexture1UV;
			#endif
			
			#if defined(PROP_DISTORTIONMASK) || !defined(OPTIMIZER_ENABLED)
			Texture2D _DistortionMask;
			float4 _DistortionMask_ST;
			float2 _DistortionMaskPan;
			float _DistortionMaskUV;
			#endif
			
			float _DistortionUvToDistort;
			float _DistortionStrength;
			float _DistortionStrength1;
			#endif
			float _StereoEnabled;
			float _PolarUV;
			float2 _PolarCenter;
			float _PolarRadialScale;
			float _PolarLengthScale;
			float _PolarSpiralPower;
			float _PanoUseBothEyes;
			
			#ifdef POI_PARALLAX
			
			sampler2D _HeightMap;
			float4 _HeightMap_ST;
			float2 _HeightMapPan;
			float _HeightMapUV;
			
			#if defined(PROP_HEIGHTMASK) || !defined(OPTIMIZER_ENABLED)
			Texture2D _Heightmask;
			#endif
			float4 _Heightmask_ST;
			float2 _HeightmaskPan;
			float _HeightmaskUV;
			float _HeightmaskInvert;
			
			float _ParallaxUV;
			float _HeightStrength;
			float _HeightOffset;
			float _HeightStepsMin;
			float _HeightStepsMax;
			
			float _CurvatureU;
			float _CurvatureV;
			float _CurvFix;
			/*
			*/
			#endif
			
			#ifdef COLOR_GRADING_LOG_VIEW
			float _AudioLinkDelay;
			float _AudioLinkAnimToggle;
			float _DebugWaveform;
			float _DebugDFT;
			float _DebugBass;
			float _DebugLowMids;
			float _DebugHighMids;
			float _DebugTreble;
			float _DebugCCColors;
			float _DebugCCStrip;
			float _DebugCCLights;
			float _DebugAutocorrelator;
			float _DebugChronotensity;
			float _AudioLinkCCStripY;
			#endif
			
			#if defined(PROP_LIGHTINGAOMAPS) || !defined(OPTIMIZER_ENABLED)
			Texture2D _LightingAOMaps;
			#endif
			float4 _LightingAOMaps_ST;
			float2 _LightingAOMapsPan;
			float _LightingAOMapsUV;
			float _LightDataAOStrengthR;
			float _LightDataAOStrengthG;
			float _LightDataAOStrengthB;
			float _LightDataAOStrengthA;
			
			#if defined(PROP_LIGHTINGDETAILSHADOWMAPS) || !defined(OPTIMIZER_ENABLED)
			Texture2D _LightingDetailShadowMaps;
			#endif
			float4 _LightingDetailShadowMaps_ST;
			float2 _LightingDetailShadowMapsPan;
			float _LightingDetailShadowMapsUV;
			float _LightingDetailShadowStrengthR;
			float _LightingDetailShadowStrengthG;
			float _LightingDetailShadowStrengthB;
			float _LightingDetailShadowStrengthA;
			
			#if defined(PROP_LIGHTINGSHADOWMASKS) || !defined(OPTIMIZER_ENABLED)
			Texture2D _LightingShadowMasks;
			#endif
			float4 _LightingShadowMasks_ST;
			float2 _LightingShadowMasksPan;
			float _LightingShadowMasksUV;
			float _LightingShadowMaskStrengthR;
			float _LightingShadowMaskStrengthG;
			float _LightingShadowMaskStrengthB;
			float _LightingShadowMaskStrengthA;
			
			// Lighting Data
			float _Unlit_Intensity;
			float _LightingColorMode;
			float _LightingMapMode;
			float _LightingDirectionMode;
			float3 _LightngForcedDirection;
			float _LightingIndirectUsesNormals;
			float _LightingCapEnabled;
			float _LightingCap;
			float _LightingForceColorEnabled;
			float3 _LightingForcedColor;
			float _LightingForcedColorThemeIndex;
			float _LightingCastedShadows;
			float _LightingMonochromatic;
			float _LightingAdditiveMonochromatic;
			float _LightingMinLightBrightness;
			// Additive Lighting Data
			float _LightingAdditiveLimited;
			float _LightingAdditiveLimit;
			float _LightingAdditivePassthrough;
			// Lighting Data Debug
			float _LightingDebugVisualize;
			
			float _IgnoreFog;
			float _RenderingReduceClipDistance;
			
			float4 _Color;
			float _ColorThemeIndex;
			UNITY_DECLARE_TEX2D(_MainTex);
			float4 _MainTex_ST;
			float2 _MainTexPan;
			float _MainTexUV;
			float4 _MainTex_TexelSize;
			Texture2D _BumpMap;
			float4 _BumpMap_ST;
			float2 _BumpMapPan;
			float _BumpMapUV;
			float _BumpScale;
			Texture2D _ClippingMask;
			float4 _ClippingMask_ST;
			float2 _ClippingMaskPan;
			float _ClippingMaskUV;
			float _Inverse_Clipping;
			float _Cutoff;
			
			float _MainColorAdjustToggle;
			#if defined(PROP_MAINCOLORADJUSTTEXTURE) || !defined(OPTIMIZER_ENABLED)
			Texture2D _MainColorAdjustTexture;
			#endif
			float4 _MainColorAdjustTexture_ST;
			float2 _MainColorAdjustTexturePan;
			float _MainColorAdjustTextureUV;
			float _MainHueShiftToggle;
			float _MainHueShiftReplace;
			float _MainHueShift;
			float _MainHueShiftSpeed;
			float _Saturation;
			float _MainBrightness;
			
			float _MainHueALCTEnabled;
			float _MainALHueShiftBand;
			float _MainALHueShiftCTIndex;
			float _MainHueALMotionSpeed;
			
			SamplerState sampler_linear_clamp;
			SamplerState sampler_linear_repeat;
			
			float _AlphaForceOpaque;
			float _AlphaMod;
			float _AlphaPremultiply;
			
			float _AlphaToCoverage;
			float _AlphasharpenedA2C;
			float _AlphaMipScale;
			
			float _AlphaDithering;
			float _AlphaDitherGradient;
			
			float _AlphaDistanceFade;
			float _AlphaDistanceFadeType;
			float _AlphaDistanceFadeMinAlpha;
			float _AlphaDistanceFadeMaxAlpha;
			float _AlphaDistanceFadeMin;
			float _AlphaDistanceFadeMax;
			
			float _AlphaFresnel;
			float _AlphaFresnelAlpha;
			float _AlphaFresnelSharpness;
			float _AlphaFresnelWidth;
			float _AlphaFresnelInvert;
			
			float _AlphaAngular;
			float _AngleType;
			float _AngleCompareTo;
			float3 _AngleForwardDirection;
			float _CameraAngleMin;
			float _CameraAngleMax;
			float _ModelAngleMin;
			float _ModelAngleMax;
			float _AngleMinAlpha;
			
			float _AlphaAudioLinkEnabled;
			float2 _AlphaAudioLinkAddRange;
			float _AlphaAudioLinkAddBand;
			/*
			Texture2D ;
			float4 _ST;
			float2 Pan;
			float UV;
			*/
			
			#ifdef FINALPASS
			#if defined(PROP_DETAILMASK) || !defined(OPTIMIZER_ENABLED)
			Texture2D _DetailMask;
			#endif
			float4 _DetailMask_ST;
			float2 _DetailMaskPan;
			float _DetailMaskUV;
			#if defined(PROP_DETAILNORMALMAP) || !defined(OPTIMIZER_ENABLED)
			Texture2D _DetailNormalMap;
			#endif
			float4 _DetailNormalMap_ST;
			float2 _DetailNormalMapPan;
			float _DetailNormalMapUV;
			#if defined(PROP_DETAILTEX) || !defined(OPTIMIZER_ENABLED)
			Texture2D _DetailTex;
			#endif
			float4 _DetailTex_ST;
			float2 _DetailTexPan;
			float _DetailTexUV;
			
			float3 _DetailTint;
			float _DetailTintThemeIndex;
			float _DetailTexIntensity;
			float _DetailBrightness;
			float _DetailNormalMapScale;
			#endif
			
			#ifdef AUTO_EXPOSURE
			float4 _VertexManipulationLocalTranslation;
			float4 _VertexManipulationLocalRotation;
			float3 _VertexManipulationLocalRotationSpeed;
			float4 _VertexManipulationLocalScale;
			float4 _VertexManipulationWorldTranslation;
			float _VertexManipulationHeight;
			sampler2D _VertexManipulationHeightMask;
			float4 _VertexManipulationHeightMask_ST;
			float2 _VertexManipulationHeightMaskPan;
			float _VertexManipulationHeightMaskUV;
			float _VertexManipulationHeightBias;
			float _VertexRoundingEnabled;
			float _VertexRoundingDivision;
			
			//AL
			float3 _VertexLocalTranslationALMin;
			float3 _VertexLocalTranslationALMax;
			float _VertexLocalTranslationALBand;
			
			float3 _VertexLocalRotationAL;
			float _VertexLocalRotationALBand;
			
			float3 _VertexLocalRotationCTALSpeed;
			float _VertexLocalRotationCTALBand;
			float _VertexLocalRotationCTALType;
			
			float4 _VertexLocalScaleALMin;
			float4 _VertexLocalScaleALMax;
			float _VertexLocalScaleALBand;
			
			float3 _VertexWorldTranslationALMin;
			float3 _VertexWorldTranslationALMax;
			float _VertexWorldTranslationALBand;
			
			float2 _VertexManipulationHeightAL;
			float _VertexManipulationHeightBand;
			
			float2 _VertexRoundingRangeAL;
			float _VertexRoundingRangeBand;
			#endif
			
			/*
			Texture2D ;
			float4 _ST;
			float2 Pan;
			float UV;
			*/
			
			float _MainVertexColoringLinearSpace;
			float _MainVertexColoring;
			float _MainUseVertexColorAlpha;
			
			#ifdef POI_BACKFACE
			float _BackFaceEnabled;
			float _BackFaceDetailIntensity;
			float _BackFaceEmissionStrength;
			float2 _BackFacePanning;
			float4 _BackFaceColor;
			float _BackFaceColorThemeIndex;
			float _BackFaceReplaceAlpha;
			float _BackFaceAlpha;
			
			#if defined(PROP_BACKFACETEXTURE) || !defined(OPTIMIZER_ENABLED)
			Texture2D _BackFaceTexture;
			#endif
			float4 _BackFaceTexture_ST;
			float2 _BackFaceTexturePan;
			float _BackFaceTextureUV;
			
			#if defined(PROP_BACKFACEMASK) || !defined(OPTIMIZER_ENABLED)
			Texture2D _BackFaceMask;
			#endif
			float4 _BackFaceMask_ST;
			float2 _BackFaceMaskPan;
			float _BackFaceMaskUV;
			
			float _BackFaceHueShiftEnabled;
			float _BackFaceHueShift;
			float _BackFaceHueShiftSpeed;
			#endif
			
			//TODO detail strength stuff
			
			#ifdef VIGNETTE
			#if defined(PROP_RGBMASK) || !defined(OPTIMIZER_ENABLED)
			Texture2D _RGBMask;
			#endif
			float4 _RGBMask_ST;
			float2 _RGBMaskPan;
			float _RGBMaskUV;
			
			#if defined(PROP_REDTEXURE) || !defined(OPTIMIZER_ENABLED)
			Texture2D _RedTexure;
			#endif
			float4 _RedTexure_ST;
			float2 _RedTexurePan;
			float _RedTexureUV;
			
			#if defined(PROP_GREENTEXTURE) || !defined(OPTIMIZER_ENABLED)
			Texture2D _GreenTexture;
			#endif
			float4 _GreenTexture_ST;
			float2 _GreenTexturePan;
			float _GreenTextureUV;
			
			#if defined(PROP_BLUETEXTURE) || !defined(OPTIMIZER_ENABLED)
			Texture2D _BlueTexture;
			#endif
			float4 _BlueTexture_ST;
			float2 _BlueTexturePan;
			float _BlueTextureUV;
			
			#if defined(PROP_ALPHATEXTURE) || !defined(OPTIMIZER_ENABLED)
			Texture2D _AlphaTexture;
			#endif
			float4 _AlphaTexture_ST;
			float2 _AlphaTexturePan;
			float _AlphaTextureUV;
			
			#ifdef GEOM_TYPE_MESH
			#if defined(PROP_RGBNORMALR) || !defined(OPTIMIZER_ENABLED)
			#endif
			Texture2D _RgbNormalR;
			float4 _RgbNormalR_ST;
			float2 _RgbNormalRPan;
			float _RgbNormalRUV;
			float _RgbNormalRScale;
			
			#if defined(PROP_RGBNORMALG) || !defined(OPTIMIZER_ENABLED)
			#endif
			Texture2D _RgbNormalG;
			float4 _RgbNormalG_ST;
			float2 _RgbNormalGPan;
			float _RgbNormalGUV;
			float _RgbNormalGScale;
			
			#if defined(PROP_RGBNORMALB) || !defined(OPTIMIZER_ENABLED)
			#endif
			Texture2D _RgbNormalB;
			float4 _RgbNormalB_ST;
			float2 _RgbNormalBPan;
			float _RgbNormalBUV;
			float _RgbNormalBScale;
			
			#if defined(PROP_RGBNORMALA) || !defined(OPTIMIZER_ENABLED)
			#endif
			Texture2D _RgbNormalA;
			float4 _RgbNormalA_ST;
			float2 _RgbNormalAPan;
			float _RgbNormalAUV;
			float _RgbNormalAScale;
			
			float _RgbNormalsEnabled;
			#endif
			
			float4 _RedColor;
			float4 _GreenColor;
			float4 _BlueColor;
			float4 _AlphaColor;
			
			float _RedColorThemeIndex;
			float _GreenColorThemeIndex;
			float _BlueColorThemeIndex;
			float _AlphaColorThemeIndex;
			
			float _RGBBlendMultiplicative;
			float _RGBUseVertexColors;
			float _RGBNormalBlend;
			#endif
			
			/*
			Texture2D ;
			float4 _ST;
			float2 Pan;
			float UV;
			*/
			
			Texture2D _DecalMask;
			float4 _DecalMask_ST;
			float2 _DecalMaskPan;
			float _DecalMaskUV;
			
			#ifdef COLOR_GRADING_LOG_VIEW
			// Audio Link
			half _AudioLinkDecal0ScaleBand;
			float4 _AudioLinkDecal0Scale;
			half _AudioLinkDecal0RotationBand;
			float2 _AudioLinkDecal0Rotation;
			half _AudioLinkDecal0AlphaBand;
			float2 _AudioLinkDecal0Alpha;
			half _AudioLinkDecal0EmissionBand;
			float2 _AudioLinkDecal0Emission;
			
			half _AudioLinkDecal1ScaleBand;
			float4 _AudioLinkDecal1Scale;
			half _AudioLinkDecal1RotationBand;
			float2 _AudioLinkDecal1Rotation;
			half _AudioLinkDecal1AlphaBand;
			float2 _AudioLinkDecal1Alpha;
			half _AudioLinkDecal1EmissionBand;
			float2 _AudioLinkDecal1Emission;
			
			half _AudioLinkDecal2ScaleBand;
			float4 _AudioLinkDecal2Scale;
			half _AudioLinkDecal2RotationBand;
			float2 _AudioLinkDecal2Rotation;
			half _AudioLinkDecal2AlphaBand;
			float2 _AudioLinkDecal2Alpha;
			half _AudioLinkDecal2EmissionBand;
			float2 _AudioLinkDecal2Emission;
			
			half _AudioLinkDecal3ScaleBand;
			float4 _AudioLinkDecal3Scale;
			half _AudioLinkDecal3RotationBand;
			float2 _AudioLinkDecal3Rotation;
			half _AudioLinkDecal3AlphaBand;
			float2 _AudioLinkDecal3Alpha;
			half _AudioLinkDecal3EmissionBand;
			float2 _AudioLinkDecal3Emission;
			float _AudioLinkDecalX;
			float _AudioLinkDecal3SideBand;
			float4 _AudioLinkDecal3SideMin;
			float4 _AudioLinkDecal3SideMax;
			#endif
			
			#ifdef GEOM_TYPE_BRANCH
			float _Decal0MaskChannel;
			sampler2D _DecalTexture;
			float4 _DecalTexture_ST;
			float2 _DecalTexturePan;
			float _DecalTextureUV;
			
			float4 _DecalColor;
			float _DecalColorThemeIndex;
			fixed _DecalTiled;
			float _DecalBlendType;
			half _DecalRotation;
			half2 _DecalScale;
			float4 _DecalSideOffset;
			half2 _DecalPosition;
			half _DecalRotationSpeed;
			float _DecalEmissionStrength;
			float _DecalBlendAlpha;
			float _DecalOverideAlpha;
			float _DecalHueShiftEnabled;
			float _DecalHueShift;
			float _DecalHueShiftSpeed;
			float _Decal0Depth;
			float _Decal0HueAngleStrength;
			#endif
			
			#ifdef GEOM_TYPE_BRANCH_DETAIL
			float _Decal1MaskChannel;
			sampler2D _DecalTexture1;
			float4 _DecalTexture1_ST;
			float2 _DecalTexture1Pan;
			float _DecalTexture1UV;
			
			float4 _DecalColor1;
			float _DecalColor1ThemeIndex;
			fixed _DecalTiled1;
			float _DecalBlendType1;
			half _DecalRotation1;
			half2 _DecalScale1;
			float4 _DecalSideOffset1;
			half2 _DecalPosition1;
			half _DecalRotationSpeed1;
			float _DecalEmissionStrength1;
			float _DecalBlendAlpha1;
			float _DecalOverideAlpha1;
			float _DecalHueShiftEnabled1;
			float _DecalHueShift1;
			float _DecalHueShiftSpeed1;
			float _Decal1Depth;
			float _Decal1HueAngleStrength;
			#endif
			
			#ifdef GEOM_TYPE_FROND
			float _Decal2MaskChannel;
			sampler2D _DecalTexture2;
			float4 _DecalTexture2_ST;
			float2 _DecalTexture2Pan;
			float _DecalTexture2UV;
			float4 _DecalColor2;
			float _DecalColor2ThemeIndex;
			fixed _DecalTiled2;
			float _DecalBlendType2;
			half _DecalRotation2;
			half2 _DecalScale2;
			float4 _DecalSideOffset2;
			half2 _DecalPosition2;
			half _DecalRotationSpeed2;
			float _DecalEmissionStrength2;
			float _DecalBlendAlpha2;
			float _DecalOverideAlpha2;
			float _DecalHueShiftEnabled2;
			float _DecalHueShift2;
			float _DecalHueShiftSpeed2;
			float _Decal2Depth;
			float _Decal2HueAngleStrength;
			#endif
			
			#ifdef DEPTH_OF_FIELD_COC_VIEW
			float _Decal3MaskChannel;
			sampler2D _DecalTexture3;
			float4 _DecalTexture3_ST;
			float2 _DecalTexture3Pan;
			float _DecalTexture3UV;
			float4 _DecalColor3;
			float _DecalColor3ThemeIndex;
			fixed _DecalTiled3;
			float _DecalBlendType3;
			half _DecalRotation3;
			half2 _DecalScale3;
			float4 _DecalSideOffset3;
			half2 _DecalPosition3;
			half _DecalRotationSpeed3;
			float _DecalEmissionStrength3;
			float _DecalBlendAlpha3;
			float _DecalOverideAlpha3;
			float _DecalHueShiftEnabled3;
			float _DecalHueShift3;
			float _DecalHueShiftSpeed3;
			float _Decal3Depth;
			float _Decal3HueAngleStrength;
			#endif
			
			/*
			Texture2D ;
			float4 _ST;
			float2 Pan;
			float UV;
			*/
			
			#ifdef DISTORT
			float _DissolveType;
			float _DissolveEdgeWidth;
			float4 _DissolveEdgeColor;
			sampler2D _DissolveEdgeGradient;
			float4 _DissolveEdgeGradient_ST;
			float2 _DissolveEdgeGradientPan;
			float _DissolveEdgeGradientUV;
			float _DissolveEdgeEmission;
			float4 _DissolveTextureColor;
			float _DissolveEdgeColorThemeIndex;
			float _DissolveTextureColorThemeIndex;
			
			#if defined(PROP_DISSOLVETOTEXTURE) || !defined(OPTIMIZER_ENABLED)
			Texture2D _DissolveToTexture;
			#endif
			float4 _DissolveToTexture_ST;
			float2 _DissolveToTexturePan;
			float _DissolveToTextureUV;
			
			#if defined(PROP_DISSOLVENOISETEXTURE) || !defined(OPTIMIZER_ENABLED)
			Texture2D _DissolveNoiseTexture;
			#endif
			float4 _DissolveNoiseTexture_ST;
			float2 _DissolveNoiseTexturePan;
			float _DissolveNoiseTextureUV;
			
			#if defined(PROP_DISSOLVEDETAILNOISE) || !defined(OPTIMIZER_ENABLED)
			Texture2D _DissolveDetailNoise;
			#endif
			float4 _DissolveDetailNoise_ST;
			float2 _DissolveDetailNoisePan;
			float _DissolveDetailNoiseUV;
			
			#if defined(PROP_DISSOLVEMASK) || !defined(OPTIMIZER_ENABLED)
			Texture2D _DissolveMask;
			#endif
			float4 _DissolveMask_ST;
			float2 _DissolveMaskPan;
			float _DissolveMaskUV;
			
			float _DissolveMaskInvert;
			float _DissolveAlpha;
			float _ContinuousDissolve;
			float _DissolveDetailStrength;
			float _DissolveEdgeHardness;
			float _DissolveInvertNoise;
			float _DissolveInvertDetailNoise;
			float _DissolveToEmissionStrength;
			
			// Point to Point
			float _DissolveP2PWorldLocal;
			float _DissolveP2PEdgeLength;
			float4 _DissolveStartPoint;
			float4 _DissolveEndPoint;
			
			// World Dissolve
			float _DissolveWorldShape;
			float4 _DissolveShapePosition;
			float4 _DissolveShapeRotation;
			float _DissolveShapeScale;
			float _DissolveInvertShape;
			float _DissolveShapeEdgeLength;
			
			float _DissolveAlpha0;
			float _DissolveAlpha1;
			float _DissolveAlpha2;
			float _DissolveAlpha3;
			float _DissolveAlpha4;
			float _DissolveAlpha5;
			float _DissolveAlpha6;
			float _DissolveAlpha7;
			float _DissolveAlpha8;
			float _DissolveAlpha9;
			// Masking
			float _DissolveEmissionSide;
			float _DissolveEmission1Side;
			float _DissolveUseVertexColors;
			
			float4 edgeColor;
			float edgeAlpha;
			float dissolveAlpha;
			float4 dissolveToTexture;
			
			float _DissolveHueShiftEnabled;
			float _DissolveHueShiftSpeed;
			float _DissolveHueShift;
			float _DissolveEdgeHueShiftEnabled;
			float _DissolveEdgeHueShiftSpeed;
			float _DissolveEdgeHueShift;
			
			// Audio Link
			#ifdef COLOR_GRADING_LOG_VIEW
			fixed _EnableDissolveAudioLink;
			half _AudioLinkDissolveAlphaBand;
			float2 _AudioLinkDissolveAlpha;
			half _AudioLinkDissolveDetailBand;
			float2 _AudioLinkDissolveDetail;
			#endif
			#endif
			
			/*
			Texture2D ;
			float4 _ST;
			float2 Pan;
			float UV;
			*/
			
			// Toon Lighting
			UNITY_DECLARE_TEX2D(_ToonRamp);
			float _ShadowOffset;
			float _ShadowStrength;
			float _LightingIgnoreAmbientColor;
			// Math Toon Lighting
			float _LightingGradientStart;
			float _LightingGradientEnd;
			float3 _LightingShadowColor;
			float _LightingGradientStartWrap;
			float _LightingGradientEndWrap;
			// ShadeMap Lighting
			float3 _1st_ShadeColor;
			Texture2D _1st_ShadeMap;
			float4 _1st_ShadeMap_ST;
			float2 _1st_ShadeMapPan;
			float _1st_ShadeMapUV;
			float _Use_1stShadeMapAlpha_As_ShadowMask;
			float _1stShadeMapMask_Inverse;
			float _Use_BaseAs1st;
			float3 _2nd_ShadeColor;
			Texture2D _2nd_ShadeMap;
			float4 _2nd_ShadeMap_ST;
			float2 _2nd_ShadeMapPan;
			float _2nd_ShadeMapUV;
			float _Use_2ndShadeMapAlpha_As_ShadowMask;
			float _2ndShadeMapMask_Inverse;
			float _Use_1stAs2nd;
			float _BaseColor_Step;
			float _BaseShade_Feather;
			float _ShadeColor_Step;
			float _1st2nd_Shades_Feather;
			float _ShadingShadeMapBlendType;
			// Realistic Lighting
			float _LightingStandardSmoothness;
			// Skin
			sampler2D _SkinLUT;
			float _SssScale;
			float _SssBumpBlur;
			float3 _SssTransmissionAbsorption;
			float3 _SssColorBleedAoWeights;
			
			// Cloth
			#ifdef _LIGHTINGMODE_CLOTH
			Texture2D_float _ClothDFG;
			SamplerState sampler_ClothDFG;
			
			#if defined(PROP_CLOTHMETALLICSMOOTHNESSMAP) || !defined(OPTIMIZER_ENABLED)
			Texture2D _ClothMetallicSmoothnessMap;
			#endif
			
			float4 _ClothMetallicSmoothnessMap_ST;
			float2 _ClothMetallicSmoothnessMapPan;
			float _ClothMetallicSmoothnessMapUV;
			float _ClothMetallicSmoothnessMapInvert;
			
			float _ClothMetallic;
			float _ClothReflectance;
			float _ClothSmoothness;
			#endif
			
			// Additive
			float _LightingAdditiveType;
			float _LightingAdditiveGradientStart;
			float _LightingAdditiveGradientEnd;
			float _LightingAdditiveDetailStrength;
			float _LightingAdditiveLimitIntensity;
			float _LightingAdditiveMaxIntensity;
			
			#ifdef POI_MATCAP0
			#if defined(PROP_MATCAP) || !defined(OPTIMIZER_ENABLED)
			Texture2D _Matcap;
			float4 _Matcap_ST;
			float2 _MatcapPan;
			float _MatcapUV;
			#endif
			#if defined(PROP_MATCAPMASK) || !defined(OPTIMIZER_ENABLED)
			Texture2D _MatcapMask;
			float4 _MatcapMask_ST;
			float2 _MatcapMaskPan;
			float _MatcapMaskUV;
			#endif
			#ifdef POI_MATCAP0_CUSTOM_NORMAL
			#if defined(PROP_MATCAP0NORMALMAP) || !defined(OPTIMIZER_ENABLED)
			Texture2D _Matcap0NormalMap;
			#endif
			float4 _Matcap0NormalMap_ST;
			float2 _Matcap0NormalMapPan;
			float _Matcap0NormalMapUV;
			float _Matcap0NormalMapScale;
			#endif
			float _MatcapUVMode;
			float _MatcapMaskInvert;
			float _MatcapBorder;
			float4 _MatcapColor;
			float _MatcapColorThemeIndex;
			float _MatcapIntensity;
			float _MatcapReplace;
			float _MatcapMultiply;
			float _MatcapAdd;
			float _MatcapAlphaOverride;
			float _MatcapEnable;
			float _MatcapLightMask;
			float _MatcapEmissionStrength;
			float _MatcapNormal;
			float _MatcapHueShiftEnabled;
			float _MatcapHueShiftSpeed;
			float _MatcapHueShift;
			#endif
			
			#ifdef COLOR_GRADING_HDR_3D
			#if defined(PROP_MATCAP2) || !defined(OPTIMIZER_ENABLED)
			Texture2D _Matcap2;
			float4 _Matcap2_ST;
			float2 _Matcap2Pan;
			float _Matcap2UV;
			#endif
			#if defined(PROP_MATCAP2MASK) || !defined(OPTIMIZER_ENABLED)
			Texture2D _Matcap2Mask;
			float4 _Matcap2Mask_ST;
			float2 _Matcap2MaskPan;
			float _Matcap2MaskUV;
			#endif
			#ifdef POI_MATCAP1_CUSTOM_NORMAL
			#if defined(PROP_MATCAP1NORMALMAP) || !defined(OPTIMIZER_ENABLED)
			Texture2D _Matcap1NormalMap;
			#endif
			float4 _Matcap1NormalMap_ST;
			float2 _Matcap1NormalMapPan;
			float _Matcap1NormalMapUV;
			float _Matcap1NormalMapScale;
			#endif
			float _Matcap2UVMode;
			float _Matcap2MaskInvert;
			float _Matcap2Border;
			float4 _Matcap2Color;
			float _Matcap2ColorThemeIndex;
			float _Matcap2Intensity;
			float _Matcap2Replace;
			float _Matcap2Multiply;
			float _Matcap2Add;
			float _Matcap2AlphaOverride;
			float _Matcap2Enable;
			float _Matcap2LightMask;
			float _Matcap2EmissionStrength;
			float _Matcap2Normal;
			float _Matcap2HueShiftEnabled;
			float _Matcap2HueShiftSpeed;
			float _Matcap2HueShift;
			#endif
			
			#ifdef _CUBEMAP
			#if defined(PROP_CUBEMAP) || !defined(OPTIMIZER_ENABLED)
			samplerCUBE _CubeMap;
			#endif
			#if defined(PROP_CUBEMAPMASK) || !defined(OPTIMIZER_ENABLED)
			Texture2D _CubeMapMask;
			float4 _CubeMapMask_ST;
			float2 _CubeMapMaskPan;
			float _CubeMapMaskUV;
			#endif
			float _CubeMapUVMode;
			float _CubeMapMaskInvert;
			float4 _CubeMapColor;
			float _CubeMapColorThemeIndex;
			float _CubeMapIntensity;
			float _CubeMapReplace;
			float _CubeMapMultiply;
			float _CubeMapAdd;
			float _CubeMapEnable;
			float _CubeMapLightMask;
			float _CubeMapEmissionStrength;
			float _CubeMapNormal;
			float _CubeMapHueShiftEnabled;
			float _CubeMapHueShiftSpeed;
			float _CubeMapHueShift;
			#endif
			
			/*
			Texture2D ;
			float4 _ST;
			float2 Pan;
			float UV;
			*/
			
			#ifdef COLOR_GRADING_LOG_VIEW
			#ifdef POI_AL_DECAL
			float _ALDecalUV;
			float4 _ALUVScale;
			float2 _ALUVPosition;
			float _ALUVRotation;
			float _ALUVRotationSpeed;
			float4 _ALDecaldCircleDimensions;
			
			float _ALDecalUVMode;
			
			float _ALDecalVolumeStep;
			float _ALDecalVolumeClipMin;
			float _ALDecalVolumeClipMax;
			
			float _ALDecalBandStep;
			float _ALDecalBandClipMin;
			float _ALDecalBandClipMax;
			
			float _ALDecalShapeClip;
			float _ALDecalShapeClipVolumeWidth;
			float _ALDecalShapeClipBandWidth;
			
			float _ALDecalVolume;
			float _ALDecalBaseBoost;
			float _ALDecalTrebleBoost;
			float _ALDecalLineWidth;
			float _ALDecalVolumeColorSource;
			float3 _ALDecalVolumeColorLow;
			float3 _ALDecalVolumeColorMid;
			float3 _ALDecalVolumeColorHigh;
			float _ALDecalLowEmission;
			float _ALDecalMidEmission;
			float _ALDecalHighEmission;
			float _ALDecalBlendType;
			float _ALDecalBlendAlpha;
			float _ALDecalControlsAlpha;
			#endif
			#endif
			/*
			Texture2D ;
			float4 _ST;
			float2 Pan;
			float UV;
			*/
			
			#ifdef _SUNDISK_HIGH_QUALITY
			
			UNITY_DECLARE_TEX2DARRAY(_FlipbookTexArray);
			float4 _FlipbookTexArray_ST;
			
			float4 _FlipbookColor;
			float _FlipbookColorThemeIndex;
			float _FlipbookFPS;
			float _FlipbookTotalFrames;
			float4 _FlipbookScaleOffset;
			float4 _FlipbookSideOffset;
			float _FlipbookTiled;
			float _FlipbookCurrentFrame;
			float _FlipbookEmissionStrength;
			float _FlipbookRotation;
			float _EnableFlipbook;
			float _FlipbookTexArrayUV;
			float _FlipbookAlphaControlsFinalAlpha;
			float _FlipbookRotationSpeed;
			float _FlipbookIntensityControlsAlpha;
			float _FlipbookColorReplaces;
			float2 _FlipbookTexArrayPan;
			
			// blending
			float _FlipbookReplace;
			float _FlipbookMultiply;
			float _FlipbookAdd;
			
			#if defined(PROP_FLIPBOOKMASSK) || !defined(OPTIMIZED_ENABLED)
			Texture2D _FlipbookMask;
			#endif
			float4 _FlipbookMask_ST;
			float2 _FlipbookMaskPan;
			float _FlipbookMaskUV;
			
			// anim
			float _FlipbookMovementType;
			float4 _FlipbookStartEndOffset;
			float _FlipbookMovementSpeed;
			
			// Crossfade
			float _FlipbookCrossfadeEnabled;
			float2 _FlipbookCrossfadeRange;
			
			// Hueshift
			float _FlipbookHueShiftEnabled;
			float _FlipbookHueShiftSpeed;
			float _FlipbookHueShift;
			
			#ifdef COLOR_GRADING_LOG_VIEW
			float _FlipbookChronotensityEnabled;
			float _FlipbookChronotensityBand;
			float _FlipbookChronotensitySpeed;
			#endif
			#endif
			
			#ifdef _EMISSION
			
			#if defined(PROP_EMISSIONMAP) || !defined(OPTIMIZER_ENABLED)
			Texture2D _EmissionMap;
			#endif
			float4 _EmissionMap_ST;
			float2 _EmissionMapPan;
			float _EmissionMapUV;
			#if defined(PROP_EMISSIONMASK) || !defined(OPTIMIZER_ENABLED)
			Texture2D _EmissionMask;
			#endif
			float4 _EmissionMask_ST;
			float2 _EmissionMaskPan;
			float _EmissionMaskUV;
			#if defined(PROP_EMISSIONSCROLLINGCURVE) || !defined(OPTIMIZER_ENABLED)
			Texture2D _EmissionScrollingCurve;
			#endif
			float4 _EmissionScrollingCurve_ST;
			
			float4 _EmissionColor;
			float _EmissionBaseColorAsMap;
			float _EmissionStrength;
			float _EmissionHueShiftEnabled;
			float _EmissionHueShift;
			float _EmissionHueShiftSpeed;
			float _EmissionCenterOutEnabled;
			float _EmissionCenterOutSpeed;
			float _EnableGITDEmission;
			float _GITDEWorldOrMesh;
			float _GITDEMinEmissionMultiplier;
			float _GITDEMaxEmissionMultiplier;
			float _GITDEMinLight;
			float _GITDEMaxLight;
			float _EmissionBlinkingEnabled;
			float _EmissiveBlink_Min;
			float _EmissiveBlink_Max;
			float _EmissiveBlink_Velocity;
			float _EmissionBlinkingOffset;
			float _ScrollingEmission;
			float4 _EmissiveScroll_Direction;
			float _EmissiveScroll_Width;
			float _EmissiveScroll_Velocity;
			float _EmissiveScroll_Interval;
			float _EmissionScrollingOffset;
			
			float _EmissionReplace0;
			float _EmissionScrollingVertexColor;
			float _EmissionScrollingUseCurve;
			float _EmissionColorThemeIndex;
			
			// Audio Link
			float _EmissionAL0Enabled;
			float2 _EmissionAL0StrengthMod;
			float _EmissionAL0StrengthBand;
			float2 _AudioLinkEmission0CenterOut;
			float _AudioLinkEmission0CenterOutwidth;
			float _AudioLinkEmission0CenterOutSize;
			float _AudioLinkEmission0CenterOutBand;
			#endif
			
			#ifdef POI_EMISSION_1
			
			#if defined(PROP_EMISSIONMAP1) || !defined(OPTIMIZER_ENABLED)
			Texture2D _EmissionMap1;
			#endif
			float4 _EmissionMap1_ST;
			float2 _EmissionMap1Pan;
			float _EmissionMap1UV;
			#if defined(PROP_EMISSIONMASK1) || !defined(OPTIMIZER_ENABLED)
			Texture2D _EmissionMask1;
			#endif
			float4 _EmissionMask1_ST;
			float2 _EmissionMask1Pan;
			float _EmissionMask1UV;
			#if defined(PROP_EMISSIONSCROLLINGCURVE1) || !defined(OPTIMIZER_ENABLED)
			Texture2D _EmissionScrollingCurve1;
			#endif
			float4 _EmissionScrollingCurve1_ST;
			
			float4 _EmissionColor1;
			float _EmissionBaseColorAsMap1;
			float _EmissionStrength1;
			float _EnableEmission1;
			float _EmissionHueShift1;
			float _EmissionHueShiftSpeed1;
			float4 _EmissiveScroll_Direction1;
			float _EmissiveScroll_Width1;
			float _EmissiveScroll_Velocity1;
			float _EmissiveScroll_Interval1;
			float _EmissionBlinkingEnabled1;
			float _EmissiveBlink_Min1;
			float _EmissiveBlink_Max1;
			float _EmissiveBlink_Velocity1;
			float _ScrollingEmission1;
			float _EnableGITDEmission1;
			float _GITDEMinEmissionMultiplier1;
			float _GITDEMaxEmissionMultiplier1;
			float _GITDEMinLight1;
			float _GITDEMaxLight1;
			float _GITDEWorldOrMesh1;
			float _EmissionCenterOutEnabled1;
			float _EmissionCenterOutSpeed1;
			float _EmissionHueShiftEnabled1;
			float _EmissionBlinkingOffset1;
			float _EmissionScrollingOffset1;
			float _EmissionScrollingVertexColor1;
			float _EmissionScrollingUseCurve1;
			float _EmissionReplace1;
			float _EmissionColor1ThemeIndex;
			
			// Audio Link
			float _EmissionAL1Enabled;
			float2 _EmissionAL1StrengthMod;
			float _EmissionAL1StrengthBand;
			float2 _AudioLinkEmission1CenterOut;
			float _AudioLinkEmission1CenterOutwidth;
			float _AudioLinkEmission1CenterOutSize;
			float _AudioLinkEmission1CenterOutBand;
			#endif
			
			#ifdef POI_EMISSION_2
			
			#if defined(PROP_EMISSIONMAP2) || !defined(OPTIMIZER_ENABLED)
			Texture2D _EmissionMap2;
			#endif
			float4 _EmissionMap2_ST;
			float2 _EmissionMap2Pan;
			float _EmissionMap2UV;
			#if defined(PROP_EMISSIONMASK2) || !defined(OPTIMIZER_ENABLED)
			Texture2D _EmissionMask2;
			#endif
			float4 _EmissionMask2_ST;
			float2 _EmissionMask2Pan;
			float _EmissionMask2UV;
			#if defined(PROP_EMISSIONSCROLLINGCURVE2) || !defined(OPTIMIZER_ENABLED)
			Texture2D _EmissionScrollingCurve2;
			#endif
			float4 _EmissionScrollingCurve2_ST;
			
			float4 _EmissionColor2;
			float _EmissionBaseColorAsMap2;
			float _EmissionStrength2;
			float _EnableEmission2;
			float _EmissionHueShift2;
			float _EmissionHueShiftSpeed2;
			float4 _EmissiveScroll_Direction2;
			float _EmissiveScroll_Width2;
			float _EmissiveScroll_Velocity2;
			float _EmissiveScroll_Interval2;
			float _EmissionBlinkingEnabled2;
			float _EmissiveBlink_Min2;
			float _EmissiveBlink_Max2;
			float _EmissiveBlink_Velocity2;
			float _ScrollingEmission2;
			float _EnableGITDEmission2;
			float _GITDEMinEmissionMultiplier2;
			float _GITDEMaxEmissionMultiplier2;
			float _GITDEMinLight2;
			float _GITDEMaxLight2;
			float _GITDEWorldOrMesh2;
			float _EmissionCenterOutEnabled2;
			float _EmissionCenterOutSpeed2;
			float _EmissionHueShiftEnabled2;
			float _EmissionBlinkingOffset2;
			float _EmissionScrollingOffset2;
			float _EmissionScrollingVertexColor2;
			float _EmissionScrollingUseCurve2;
			float _EmissionReplace2;
			float _EmissionColor2ThemeIndex;
			
			// Audio Link
			float _EmissionAL2Enabled;
			float2 _EmissionAL2StrengthMod;
			float _EmissionAL2StrengthBand;
			float2 _AudioLinkEmission2CenterOut;
			float _AudioLinkEmission2CenterOutwidth;
			float _AudioLinkEmission2CenterOutSize;
			float _AudioLinkEmission2CenterOutBand;
			#endif
			
			#ifdef POI_EMISSION_3
			
			#if defined(PROP_EMISSIONMAP3) || !defined(OPTIMIZER_ENABLED)
			Texture2D _EmissionMap3;
			#endif
			float4 _EmissionMap3_ST;
			float2 _EmissionMap3Pan;
			float _EmissionMap3UV;
			#if defined(PROP_EMISSIONMASK3) || !defined(OPTIMIZER_ENABLED)
			Texture2D _EmissionMask3;
			#endif
			float4 _EmissionMask3_ST;
			float2 _EmissionMask3Pan;
			float _EmissionMask3UV;
			#if defined(PROP_EMISSIONSCROLLINGCURVE3) || !defined(OPTIMIZER_ENABLED)
			Texture2D _EmissionScrollingCurve3;
			#endif
			float4 _EmissionScrollingCurve3_ST;
			
			float4 _EmissionColor3;
			float _EmissionBaseColorAsMap3;
			float _EmissionStrength3;
			float _EnableEmission3;
			float _EmissionHueShift3;
			float _EmissionHueShiftSpeed3;
			float4 _EmissiveScroll_Direction3;
			float _EmissiveScroll_Width3;
			float _EmissiveScroll_Velocity3;
			float _EmissiveScroll_Interval3;
			float _EmissionBlinkingEnabled3;
			float _EmissiveBlink_Min3;
			float _EmissiveBlink_Max3;
			float _EmissiveBlink_Velocity3;
			float _ScrollingEmission3;
			float _EnableGITDEmission3;
			float _GITDEMinEmissionMultiplier3;
			float _GITDEMaxEmissionMultiplier3;
			float _GITDEMinLight3;
			float _GITDEMaxLight3;
			float _GITDEWorldOrMesh3;
			float _EmissionCenterOutEnabled3;
			float _EmissionCenterOutSpeed3;
			float _EmissionHueShiftEnabled3;
			float _EmissionBlinkingOffset3;
			float _EmissionScrollingOffset3;
			float _EmissionScrollingVertexColor3;
			float _EmissionScrollingUseCurve3;
			float _EmissionReplace3;
			float _EmissionColor3ThemeIndex;
			
			// Audio Link
			float _EmissionAL3Enabled;
			float2 _EmissionAL3StrengthMod;
			float _EmissionAL3StrengthBand;
			float2 _AudioLinkEmission3CenterOut;
			float _AudioLinkEmission3CenterOutwidth;
			float _AudioLinkEmission3CenterOutSize;
			float _AudioLinkEmission3CenterOutBand;
			#endif
			
			#ifdef _GLOSSYREFLECTIONS_OFF
			float4 _RimLightColor;
			float _RimLightingInvert;
			float _RimWidth;
			float _RimStrength;
			float _RimSharpness;
			float _RimLightColorBias;
			float _ShadowMix;
			float _ShadowMixThreshold;
			float _ShadowMixWidthMod;
			float _EnableRimLighting;
			float _RimBrighten;
			float _RimLightNormal;
			float _RimHueShiftEnabled;
			float _RimHueShiftSpeed;
			float _RimHueShift;
			float _RimWidthNoiseStrength;
			float _RimLightColorThemeIndex;
			
			#if defined(PROP_RIMTEX) || !defined(OPTIMIZER_ENABLED)
			Texture2D _RimTex;
			#endif
			float4 _RimTex_ST;
			float2 _RimTexPan;
			float _RimTexUV;
			#if defined(PROP_RIMMASK) || !defined(OPTIMIZER_ENABLED)
			Texture2D _RimMask;
			#endif
			float4 _RimMask_ST;
			float2 _RimMaskPan;
			float _RimMaskUV;
			#if defined(PROP_RIMWIDTHNOISETEXTURE) || !defined(OPTIMIZER_ENABLED)
			Texture2D _RimWidthNoiseTexture;
			#endif
			float4 _RimWidthNoiseTexture_ST;
			float2 _RimWidthNoiseTexturePan;
			float _RimWidthNoiseTextureUV;
			
			#endif
			
			/*
			Texture2D ;
			float4 _ST;
			float2 Pan;
			float UV;
			*/
			
			#ifdef _SUNDISK_SIMPLE
			float _GlitterUV;
			half3 _GlitterColor;
			float _GlitterColorThemeIndex;
			float2 _GlitterPan;
			half _GlitterSpeed;
			half _GlitterBrightness;
			float _GlitterFrequency;
			float _GlitterJitter;
			half _GlitterSize;
			half _GlitterContrast;
			half _GlitterAngleRange;
			half _GlitterMinBrightness;
			half _GlitterBias;
			fixed _GlitterUseSurfaceColor;
			float _GlitterBlendType;
			float _GlitterMode;
			float _GlitterShape;
			float _GlitterCenterSize;
			float _glitterFrequencyLinearEmissive;
			float _GlitterJaggyFix;
			float _GlitterTextureRotation;
			float2 _GlitterUVPanning;
			
			float _GlitterHueShiftEnabled;
			float _GlitterHueShiftSpeed;
			float _GlitterHueShift;
			float _GlitterHideInShadow;
			
			float _GlitterRandomColors;
			float2 _GlitterMinMaxSaturation;
			float2 _GlitterMinMaxBrightness;
			float _GlitterRandomSize;
			float4 _GlitterMinMaxSize;
			float _GlitterRandomRotation;
			
			#if defined(PROP_GLITTERMASK) || !defined(OPTIMIZER_ENABLED)
			Texture2D _GlitterMask;
			#endif
			float4 _GlitterMask_ST;
			float2 _GlitterMaskPan;
			float _GlitterMaskUV;
			#if defined(PROP_GLITTERCOLORMAP) || !defined(OPTIMIZER_ENABLED)
			Texture2D _GlitterColorMap;
			#endif
			float4 _GlitterColorMap_ST;
			float2 _GlitterColorMapPan;
			float _GlitterColorMapUV;
			#if defined(PROP_GLITTERTEXTURE) || !defined(OPTIMIZER_ENABLED)
			Texture2D _GlitterTexture;
			#endif
			float4 _GlitterTexture_ST;
			float2 _GlitterTexturePan;
			float _GlitterTextureUV;
			#endif
			
			/*
			Texture2D ;
			float4 _ST;
			float2 Pan;
			float UV;
			*/
			
			#ifdef MOCHIE_PBR
			#if defined(PROP_MOCHIEMETALLICMAPS) || !defined(OPTIMIZER_ENABLED)
			Texture2D _MochieMetallicMaps;
			#endif
			float4 _MochieMetallicMaps_ST;
			float2 _MochieMetallicMapsPan;
			float _MochieMetallicMapsUV;
			float _MochieMetallicMapInvert;
			float _MochieRoughnessMapInvert;
			float _MochieReflectionMaskInvert;
			float _MochieSpecularMaskInvert;
			
			float _MochieReflectionTintThemeIndex;
			float _MochieSpecularTintThemeIndex;
			
			float _MochieRoughnessMultiplier;
			float _MochieMetallicMultiplier;
			float _MochieReflectionStrength;
			float _MochieSpecularStrength;
			float4 _MochieSpecularTint;
			float4 _MochieReflectionTint;
			float _MochieLitFallback;
			
			samplerCUBE _MochieReflCube;
			float4 _MochieReflCube_HDR;
			float _MochieForceFallback;
			
			#endif
			
			#ifdef _COLORCOLOR_ON
			samplerCUBE _ClearCoatCubeMap;
			float _ClearCoatSampleWorld;
			#if defined(PROP_CLEARCOATMASK) || !defined(OPTIMIZER_ENABLED)
			Texture2D _ClearCoatMask;
			#endif
			float4 _ClearCoatMask_ST;
			float2 _ClearCoatMaskPan;
			float _ClearCoatMaskUV;
			#if defined(PROP_CLEARCOATSMOOTHNESSMAP) || !defined(OPTIMIZER_ENABLED)
			Texture2D _ClearCoatSmoothnessMap;
			#endif
			float _ClearCoatNormal;
			float4 _ClearCoatSmoothnessMap_ST;
			float2 _ClearCoatSmoothnessMapPan;
			float _ClearCoatSmoothnessMapUV;
			float _ClearCoatInvertSmoothness;
			float _ClearCoat;
			float _ClearCoatSmoothness;
			float3 _ClearCoatTint;
			float _ClearCoatTintThemeIndex;
			float _ClearCoatForceLighting;
			float lighty_clear_boy_uwu_var;
			#endif
			
			#ifdef POI_ENVIRORIM
			
			#if defined(PROP_RIMENVIROMASK) || !defined(OPTIMIZER_ENABLED)
			Texture2D _RimEnviroMask;
			#endif
			float4 _RimEnviroMask_ST;
			float2 _RimEnviroMaskPan;
			float _RimEnviroMaskUV;
			
			float _RimEnviroBlur;
			float _RimEnviroMinBrightness;
			float _RimEnviroWidth;
			float _RimEnviroSharpness;
			float _RimEnviroIntensity;
			#endif
			
			#ifdef POI_STYLIZED_StylizedSpecular
			#if defined(PROP_HIGHCOLOR_TEX) || !defined(OPTIMIZER_ENABLED)
			Texture2D _HighColor_Tex;
			#endif
			float4 _HighColor_Tex_ST;
			float2 _HighColor_TexPan;
			float _HighColor_TexUV;
			
			#if defined(PROP_SET_HIGHCOLORMASK) || !defined(OPTIMIZER_ENABLED)
			Texture2D _Set_HighColorMask;
			#endif
			float4 _Set_HighColorMask_ST;
			float2 _Set_HighColorMaskPan;
			float _Set_HighColorMaskUV;
			float _Tweak_HighColorMaskLevel;
			
			/*
			#if defined(PROP_StylizedSpecularOPTMAP1) || !defined(OPTIMIZER_ENABLED)
			Texture2D _StylizedSpecularOptMap1;
			#endif
			float4 _StylizedSpecularOptMap1_ST;
			float2 _StylizedSpecularOptMap1Pan;
			float _StylizedSpecularOptMap1UV;
			
			#if defined(PROP_StylizedSpecularOPTMAP2) || !defined(OPTIMIZER_ENABLED)
			Texture2D _StylizedSpecularOptMap2;
			#endif
			float4 _StylizedSpecularOptMap2_ST;
			float2 _StylizedSpecularOptMap2Pan;
			float _StylizedSpecularOptMap2UV;
			*/
			
			float4 _HighColor;
			float _UseLightColor;
			
			float _HighColor_Power;
			float _StylizedSpecularFeather;
			float _Layer1Strength;
			
			float _Layer2Size;
			float _StylizedSpecular2Feather;
			float _Layer2Strength;
			
			float _StylizedSpecularStrength;
			float _UseSpecularOptMap2;
			float _HighColorThemeIndex;
			float _Is_BlendAddToHiColor;
			float _Is_SpecularToHighColor;
			#endif
			
			#ifdef POI_PATHING
			
			#if defined(PROP_PATHINGMAP) || !defined(OPTIMIZER_ENABLED)
			Texture2D _PathingMap;
			SamplerState SmpRepeatPoint;
			#endif
			float4 _PathingMap_ST;
			float2 _PathingMapPan;
			float _PathingMapUV;
			
			#if defined(PROP_PATHINGCOLORMAP) || !defined(OPTIMIZER_ENABLED)
			Texture2D _PathingColorMap;
			#endif
			float4 _PathingColorMap_ST;
			float2 _PathingColorMapPan;
			float _PathingColorMapUV;
			
			// Fill, 0, Path, 1, Loop, 2
			half _PathTypeR;
			half _PathTypeG;
			half _PathTypeB;
			half3 _PathWidth;
			float3 _PathTime;
			float3 _PathOffset;
			float3 _PathSpeed;
			float4 _PathColorR;
			float4 _PathColorG;
			float4 _PathColorB;
			float3 _PathEmissionStrength;
			float3 _PathSoftness;
			float3 _PathSegments;
			float3 _PathAlpha;
			
			float _PathColorRThemeIndex;
			float _PathColorGThemeIndex;
			float _PathColorBThemeIndex;
			
			#ifdef COLOR_GRADING_LOG_VIEW
			// Time Offset
			half _AudioLinkPathTimeOffsetBandR;
			half2 _AudioLinkPathTimeOffsetR;
			half _AudioLinkPathTimeOffsetBandG;
			half2 _AudioLinkPathTimeOffsetG;
			half _AudioLinkPathTimeOffsetBandB;
			half2 _AudioLinkPathTimeOffsetB;
			
			// Emission Offset
			half _AudioLinkPathEmissionAddBandR;
			half2 _AudioLinkPathEmissionAddR;
			half _AudioLinkPathEmissionAddBandG;
			half2 _AudioLinkPathEmissionAddG;
			half _AudioLinkPathEmissionAddBandB;
			half2 _AudioLinkPathEmissionAddB;
			
			// Length Offset
			half _AudioLinkPathWidthOffsetBandR;
			half2 _AudioLinkPathWidthOffsetR;
			half _AudioLinkPathWidthOffsetBandG;
			half2 _AudioLinkPathWidthOffsetG;
			half _AudioLinkPathWidthOffsetBandB;
			half2 _AudioLinkPathWidthOffsetB;
			#endif
			#endif
			
			#ifdef POI_MIRROR
			float _Mirror;
			#if defined(PROP_MIRRORTEXTURE) || !defined(OPTIMIZER_ENABLED)
			Texture2D _MirrorTexture;
			#endif
			float4 _MirrorTexture_ST;
			float2 _MirrorTexturePan;
			float _MirrorTextureUV;
			#endif
			
			#ifdef GRAIN
			sampler2D _CameraDepthTexture;
			#endif
			
			#if defined(PROP_DEPTHMASK) || !defined(OPTIMIZER_ENABLED)
			Texture2D _DepthMask;
			#endif
			float4 _DepthMask_ST;
			float2 _DepthMaskPan;
			float _DepthMaskUV;
			
			// Color
			float _DepthColorToggle;
			float _DepthColorBlendMode;
			#if defined(PROP_DEPTHTEXTURE) || !defined(OPTIMIZER_ENABLED)
			Texture2D _DepthTexture;
			#endif
			float4 _DepthTexture_ST;
			float2 _DepthTexturePan;
			float _DepthTextureUV;
			
			float3 _DepthColor;
			float _DepthColorThemeIndex;
			float _DepthColorMinDepth;
			float _DepthColorMaxDepth;
			float _DepthColorMinValue;
			float _DepthColorMaxValue;
			float _DepthEmissionStrength;
			
			// Emission
			
			// Alpha
			float _DepthAlphaToggle;
			float _DepthAlphaMinValue;
			float _DepthAlphaMaxValue;
			float _DepthAlphaMinDepth;
			float _DepthAlphaMaxDepth;
			
			/*
			Texture2D ;
			float4 _ST;
			float2 Pan;
			float UV;
			*/
			
			#ifdef POI_IRIDESCENCE
			#if defined(PROP_IRIDESCENCERAMP) || !defined(OPTIMIZER_ENABLED)
			Texture2D _IridescenceRamp;
			#endif
			float4 _IridescenceRamp_ST;
			float2 _IridescenceRampPan;
			
			#if defined(PROP_IRIDESCENCEMASK) || !defined(OPTIMIZER_ENABLED)
			Texture2D _IridescenceMask;
			#endif
			float4 _IridescenceMask_ST;
			float2 _IridescenceMaskPan;
			float _IridescenceMaskUV;
			
			#if defined(PROP_IRIDESCENCENORMALMAP) || !defined(OPTIMIZER_ENABLED)
			Texture2D _IridescenceNormalMap;
			#endif
			float4 _IridescenceNormalMap_ST;
			float2 _IridescenceNormalMapPan;
			float _IridescenceNormalMapUV;
			
			float _IridescenceTime;
			float _IridescenceIntensity;
			float _IridescenceHueShiftEnabled;
			float _IridescenceHueShiftSpeed;
			float _IridescenceHueShift;
			float2 _IridescenceAudioLinkEmission;
			float _IridescenceAudioLinkEmissionBand;
			float _IridescenceNormalSelection;
			float _IridescenceNormalIntensity;
			float _IridescenceNormalToggle;
			float _IridescenceAddBlend;
			float _IridescenceReplaceBlend;
			float _IridescenceMultiplyBlend;
			float _IridescenceEmissionStrength;
			#endif
			
			float _PPLightingMultiplier;
			float _PPLightingAddition;
			float _PPEmissionMultiplier;
			float _PPFinalColorMultiplier;
			
			#ifdef EFFECT_BUMP
			sampler2D _TextGlyphs;
			float4 _TextGlyphs_ST;
			float4 _TextGlyphs_TexelSize;
			float _TextFPSUV;
			float _TextTimeUV;
			float _TextPositionUV;
			float _TextPixelRange;
			
			float _TextFPSEnabled;
			float _TextPositionEnabled;
			float _TextTimeEnabled;
			
			float4 _TextFPSColor;
			float _TextFPSEmissionStrength;
			fixed4 _TextFPSPadding;
			float2 _TextFPSOffset;
			float2 _TextFPSScale;
			float _TextFPSRotation;
			
			fixed _TextPositionVertical;
			float4 _TextPositionColor;
			float _TextPositionEmissionStrength;
			fixed4 _TextPositionPadding;
			float2 _TextPositionOffset;
			float2 _TextPositionScale;
			float _TextPositionRotation;
			
			float4 _TextTimeColor;
			float _TextTimeEmissionStrength;
			fixed4 _TextTimePadding;
			float2 _TextTimeOffset;
			float2 _TextTimeScale;
			float _TextTimeRotation;
			
			float _TextFPSColorThemeIndex;
			float _TextPositionColorThemeIndex;
			float _TextTimeColorThemeIndex;
			
			float3 globalTextEmission;
			
			#define ASCII_LEFT_PARENTHESIS 40
			#define ASCII_RIGHT_PARENTHESIS 41
			#define ASCII_POSITIVE 43
			#define ASCII_PERIOD 46
			#define ASCII_NEGATIVE 45
			#define ASCII_COMMA 44
			#define ASCII_E 69
			#define ASCII_F 70
			#define ASCII_I 73
			#define ASCII_M 77
			#define ASCII_O 79
			#define ASCII_P 80
			#define ASCII_S 83
			#define ASCII_T 54
			#define ASCII_SEMICOLON 58
			#define glyphWidth 0.0625
			
			#endif
			
			#ifdef MOCHIE_POSTPROCESS
			#if defined(PROP_PPLUT) || !defined(OPTIMIZER_ENABLED)
			Texture2D _PPLUT;
			SamplerState sampler_PPLUT;
			#endif
			float4 _PPLUT_TexelSize;
			float _PPLUTStrength;
			
			#if defined(PROP_PPMASK) || !defined(OPTIMIZER_ENABLED)
			Texture2D _PPMask;
			#endif
			float4 _PPMask_ST;
			float2 _PPMaskPan;
			float _PPMaskUV;
			float _PPMaskInvert;
			
			float3 _PPTint;
			float3 _PPRGB;
			float _PPHue;
			float _PPContrast;
			float _PPSaturation;
			float _PPBrightness;
			float _PPLightness;
			float _PPHDR;
			const static float COLORS = 32;
			
			#endif
			
			//Structs
			struct appdata
			{
				float4 vertex : POSITION;
				float3 normal : NORMAL;
				float4 tangent : TANGENT;
				float4 color : COLOR;
				float2 uv0 : TEXCOORD0;
				float2 uv1 : TEXCOORD1;
				float2 uv2 : TEXCOORD2;
				float2 uv3 : TEXCOORD3;
				uint vertexId : SV_VertexID;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};
			
			struct v2f
			{
				float4 pos : SV_POSITION;
				float2 uv[4] : TEXCOORD0;
				float3 objNormal : TEXCOORD4;
				float3 normal : TEXCOORD5;
				float3 tangent : TEXCOORD6;
				float3 binormal : TEXCOORD7;
				float4 worldPos : TEXCOORD8;
				float4 localPos : TEXCOORD9;
				float3 objectPos : TEXCOORD10;
				float4 vertexColor : TEXCOORD11;
				float4 lightmapUV : TEXCOORD12;
				float4 grabPos: TEXCOORD13;
				float4 worldDirection: TEXCOORD14;
				UNITY_SHADOW_COORDS(15)
				UNITY_FOG_COORDS(16)
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};
			
			struct PoiMesh
			{
				
				// 0 Vertex normal
				// 1 Fragment normal
				float3 normals[2];
				float3 objNormal;
				float3 tangentSpaceNormal;
				float3 binormal;
				float3 tangent;
				float3 worldPos;
				float3 localPos;
				float3 objectPosition;
				float isFrontFace;
				float4 vertexColor;
				float4 lightmapUV;
				// 0-3 UV0-UV3
				// 4 Panosphere UV
				// 5 world pos xz
				// 6 Polar UV
				// 7 Distorted UV
				float2 uv[8];
				float2 parallaxUV;
			};
			
			struct PoiCam
			{
				float3 viewDir;
				float3 forwardDir;
				float3 worldPos;
				float distanceToVert;
				float4 clipPos;
				float3 reflectionDir;
				float3 tangentViewDir;
				float4 grabPos;
				float2 screenUV;
				float vDotN;
				float4 worldDirection;
				
			};
			
			struct PoiMods
			{
				float4 Mask;
				float4 audioLink;
				float audioLinkAvailable;
				float audioLinkVersion;
				float4 audioLinkTexture;
				float2 detailMask;
				float2 backFaceDetailIntensity;
				float4 globalColorTheme[12];
				float ALTime[8];
			};
			
			struct PoiLight
			{
				
				float3 direction;
				float attenuation;
				float attenuationStrength;
				float3 directColor;
				float3 indirectColor;
				float occlusion;
				float shadowMask;
				float detailShadow;
				float3 halfDir;
				float lightMap;
				float3 rampedLightMap;
				float nDotL;
				float nDotV;
				float nDotH;
				float lDotv;
				float lDotH;
				float nDotLSaturated;
				float nDotLNormalized;
				#ifdef UNITY_PASS_FORWARDADD
				float additiveShadow;
				#endif
				float3 finalLighting;
				float3 finalLightAdd;
				
				#if defined(VERTEXLIGHT_ON) && defined(POI_VERTEXLIGHT_ON)
				// Non Important Lights
				float4 vDotNL;
				float3 vColor[4];
				float4 vCorrectedDotNL;
				float4 vAttenuation;
				float4 vAttenuationDotNL;
				float3 vPosition[4];
				float3 vDirection[4];
				float3 vFinalLighting;
				float3 vHalfDir[4];
				half4 vDotNH;
				half4 vDotLH;
				#endif
				
			};
			
			struct PoiVertexLights
			{
				
				float3 direction;
				float3 color;
				float attenuation;
			};
			
			struct PoiFragData
			{
				float3 baseColor;
				float3 finalColor;
				float alpha;
				float3 emission;
			};
			
			float2 poiUV(float2 uv, float4 tex_st)
			{
				return uv * tex_st.xy + tex_st.zw;
			}
			
			//Lighting Helpers
			float calculateluminance(float3 color)
			{
				return color.r * 0.299 + color.g * 0.587 + color.b * 0.114;
			}
			
			bool IsInMirror()
			{
				return unity_CameraProjection[2][0] != 0.f || unity_CameraProjection[2][1] != 0.f;
			}
			
			bool IsOrthographicCamera()
			{
				return unity_OrthoParams.w == 1 || UNITY_MATRIX_P[3][3] == 1;
			}
			
			/*
			* MIT License
			*
			* Copyright (c) 2018 s-ilent
			*
			* Permission is hereby granted, free of charge, to any person obtaining a copy
			* of this software and associated documentation files (the "Software"), to deal
			* in the Software without restriction, including without limitation the rights
			* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
			* copies of the Software, and to permit persons to whom the Software is
			* furnished to do so, subject to the following conditions:
			*
			* The above copyright notice and this permission notice shall be included in all
			* copies or substantial portions of the Software.
			*
			* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
			* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
			* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
			* AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
			* LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
			* OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
			* SOFTWARE.
			*/
			
			float shEvaluateDiffuseL1Geomerics_local(float L0, float3 L1, float3 n)
			{
				// average energy
				float R0 = max(0, L0);
				
				// avg direction of incoming light
				float3 R1 = 0.5f * L1;
				
				// directional brightness
				float lenR1 = length(R1);
				
				// linear angle between normal and direction 0-1
				//float q = 0.5f * (1.0f + dot(R1 / lenR1, n));
				//float q = dot(R1 / lenR1, n) * 0.5 + 0.5;
				float q = dot(normalize(R1), n) * 0.5 + 0.5;
				q = saturate(q); // Thanks to ScruffyRuffles for the bug identity.
				
				// power for q
				// lerps from 1 (linear) to 3 (cubic) based on directionality
				float p = 1.0f + 2.0f * lenR1 / R0;
				
				// dynamic range constant
				// should vary between 4 (highly directional) and 0 (ambient)
				float a = (1.0f - lenR1 / R0) / (1.0f + lenR1 / R0);
				
				return R0 * (a + (1.0f - a) * (p + 1.0f) * pow(q, p));
			}
			
			half3 BetterSH9(half4 normal)
			{
				float3 indirect;
				float3 L0 = float3(unity_SHAr.w, unity_SHAg.w, unity_SHAb.w) + float3(unity_SHBr.z, unity_SHBg.z, unity_SHBb.z) / 3.0;
				indirect.r = shEvaluateDiffuseL1Geomerics_local(L0.r, unity_SHAr.xyz, normal.xyz);
				indirect.g = shEvaluateDiffuseL1Geomerics_local(L0.g, unity_SHAg.xyz, normal.xyz);
				indirect.b = shEvaluateDiffuseL1Geomerics_local(L0.b, unity_SHAb.xyz, normal.xyz);
				indirect = max(0, indirect);
				indirect += SHEvalLinearL2(normal);
				return indirect;
			}
			
			// Silent's code ends here
			
			float3 getCameraForward()
			{
				#if UNITY_SINGLE_PASS_STEREO
				float3 p1 = mul(unity_StereoCameraToWorld[0], float4(0, 0, 1, 1));
				float3 p2 = mul(unity_StereoCameraToWorld[0], float4(0, 0, 0, 1));
				#else
				float3 p1 = mul(unity_CameraToWorld, float4(0, 0, 1, 1)).xyz;
				float3 p2 = mul(unity_CameraToWorld, float4(0, 0, 0, 1)).xyz;
				#endif
				return normalize(p2 - p1);
			}
			
			half3 GetSHLength()
			{
				half3 x, x1;
				x.r = length(unity_SHAr);
				x.g = length(unity_SHAg);
				x.b = length(unity_SHAb);
				x1.r = length(unity_SHBr);
				x1.g = length(unity_SHBg);
				x1.b = length(unity_SHBb);
				return x + x1;
			}
			
			float3 BoxProjection(float3 direction, float3 position, float4 cubemapPosition, float3 boxMin, float3 boxMax)
			{
				#if UNITY_SPECCUBE_BOX_PROJECTION
				//UNITY_BRANCH
				if (cubemapPosition.w > 0)
				{
					float3 factors = ((direction > 0 ? boxMax : boxMin) - position) / direction;
					float scalar = min(min(factors.x, factors.y), factors.z);
					direction = direction * scalar + (position - cubemapPosition.xyz);
				}
				#endif
				return direction;
			}
			
			float poiMax(float2 i)
			{
				return max(i.x, i.y);
			}
			
			float poiMax(float3 i)
			{
				return max(max(i.x, i.y), i.z);
			}
			
			float poiMax(float4 i)
			{
				return max(max(max(i.x, i.y), i.z), i.w);
			}
			
			float3 calculateNormal(in float3 baseNormal, in PoiMesh poiMesh, in Texture2D normalTexture, in float4 normal_ST, in float2 normalPan, in float normalUV, in float normalIntensity)
			{
				float3 normal = UnpackScaleNormal(POI2D_SAMPLER_PAN(normalTexture, _MainTex, poiUV(poiMesh.uv[normalUV], normal_ST), normalPan), normalIntensity);
				return normalize(
				normal.x * poiMesh.tangent +
				normal.y * poiMesh.binormal +
				normal.z * baseNormal
				);
			}
			
			float remap(float x, float minOld, float maxOld, float minNew = 0, float maxNew = 1)
			{
				return minNew + (x - minOld) * (maxNew - minNew) / (maxOld - minOld);
			}
			
			float2 remap(float2 x, float2 minOld, float2 maxOld, float2 minNew = 0, float2 maxNew = 1)
			{
				return minNew + (x - minOld) * (maxNew - minNew) / (maxOld - minOld);
			}
			
			float3 remap(float3 x, float3 minOld, float3 maxOld, float3 minNew = 0, float3 maxNew = 1)
			{
				return minNew + (x - minOld) * (maxNew - minNew) / (maxOld - minOld);
			}
			
			float4 remap(float4 x, float4 minOld, float4 maxOld, float4 minNew = 0, float4 maxNew = 1)
			{
				return minNew + (x - minOld) * (maxNew - minNew) / (maxOld - minOld);
			}
			
			float remapClamped(float minOld, float maxOld, float x, float minNew = 0, float maxNew = 1)
			{
				return clamp(minNew + (x - minOld) * (maxNew - minNew) / (maxOld - minOld), minNew, maxNew);
			}
			
			float2 remapClamped(float2 minOld, float2 maxOld, float2 x, float2 minNew, float2 maxNew)
			{
				return clamp(minNew + (x - minOld) * (maxNew - minNew) / (maxOld - minOld), minNew, maxNew);
			}
			
			float3 remapClamped(float3 minOld, float3 maxOld, float3 x, float3 minNew, float3 maxNew)
			{
				return clamp(minNew + (x - minOld) * (maxNew - minNew) / (maxOld - minOld), minNew, maxNew);
			}
			
			float4 remapClamped(float4 minOld, float4 maxOld, float4 x, float4 minNew, float4 maxNew)
			{
				return clamp(minNew + (x - minOld) * (maxNew - minNew) / (maxOld - minOld), minNew, maxNew);
			}
			float2 calcParallax(in float height, in PoiCam poiCam)
			{
				return((height * - 1) + 1) * (poiCam.tangentViewDir.xy / poiCam.tangentViewDir.z);
			}
			
			/*
			0: Zero	                float4(0.0, 0.0, 0.0, 0.0),
			1: One	                float4(1.0, 1.0, 1.0, 1.0),
			2: DstColor	            destinationColor,
			3: SrcColor	            sourceColor,
			4: OneMinusDstColor	    float4(1.0, 1.0, 1.0, 1.0) - destinationColor,
			5: SrcAlpha	            sourceColor.aaaa,
			6: OneMinusSrcColor	    float4(1.0, 1.0, 1.0, 1.0) - sourceColor,
			7: DstAlpha	            destinationColor.aaaa,
			8: OneMinusDstAlpha	    float4(1.0, 1.0, 1.0, 1.0) - destinationColor.,
			9: SrcAlphaSaturate     saturate(sourceColor.aaaa),
			10: OneMinusSrcAlpha	float4(1.0, 1.0, 1.0, 1.0) - sourceColor.aaaa,
			*/
			
			float4 poiBlend(const float sourceFactor, const  float4 sourceColor, const  float destinationFactor, const  float4 destinationColor, const float4 blendFactor)
			{
				float4 sA = 1 - blendFactor;
				const float4 blendData[11] = {
					float4(0.0, 0.0, 0.0, 0.0),
					float4(1.0, 1.0, 1.0, 1.0),
					destinationColor,
					sourceColor,
					float4(1.0, 1.0, 1.0, 1.0) - destinationColor,
					sA,
					float4(1.0, 1.0, 1.0, 1.0) - sourceColor,
					sA,
					float4(1.0, 1.0, 1.0, 1.0) - sA,
					saturate(sourceColor.aaaa),
					1 - sA,
				};
				
				return lerp(blendData[sourceFactor] * sourceColor + blendData[destinationFactor] * destinationColor, sourceColor, sA);
			}
			
			// Average
			float3 blendAverage(float3 base, float3 blend)
			{
				return(base + blend) / 2.0;
			}
			
			// Color burn
			float blendColorBurn(float base, float blend)
			{
				return(blend == 0.0)?blend : max((1.0 - ((1.0 - base) / blend)), 0.0);
			}
			
			float3 blendColorBurn(float3 base, float3 blend)
			{
				return float3(blendColorBurn(base.r, blend.r), blendColorBurn(base.g, blend.g), blendColorBurn(base.b, blend.b));
			}
			
			// Color Dodge
			float blendColorDodge(float base, float blend)
			{
				return(blend == 1.0)?blend : min(base / (1.0 - blend), 1.0);
			}
			
			float3 blendColorDodge(float3 base, float3 blend)
			{
				return float3(blendColorDodge(base.r, blend.r), blendColorDodge(base.g, blend.g), blendColorDodge(base.b, blend.b));
			}
			
			// Darken
			float blendDarken(float base, float blend)
			{
				return min(blend, base);
			}
			
			float3 blendDarken(float3 base, float3 blend)
			{
				return float3(blendDarken(base.r, blend.r), blendDarken(base.g, blend.g), blendDarken(base.b, blend.b));
			}
			
			// Exclusion
			float3 blendExclusion(float3 base, float3 blend)
			{
				return base + blend - 2.0 * base * blend;
			}
			
			// Reflect
			float blendReflect(float base, float blend)
			{
				return(blend == 1.0)?blend : min(base * base / (1.0 - blend), 1.0);
			}
			
			float3 blendReflect(float3 base, float3 blend)
			{
				return float3(blendReflect(base.r, blend.r), blendReflect(base.g, blend.g), blendReflect(base.b, blend.b));
			}
			
			// Glow
			float3 blendGlow(float3 base, float3 blend)
			{
				return blendReflect(blend, base);
			}
			
			// Overlay
			float blendOverlay(float base, float blend)
			{
				return base < 0.5?(2.0 * base * blend) : (1.0 - 2.0 * (1.0 - base) * (1.0 - blend));
			}
			
			float3 blendOverlay(float3 base, float3 blend)
			{
				return float3(blendOverlay(base.r, blend.r), blendOverlay(base.g, blend.g), blendOverlay(base.b, blend.b));
			}
			
			// Hard Light
			float3 blendHardLight(float3 base, float3 blend)
			{
				return blendOverlay(blend, base);
			}
			
			// Vivid light
			float blendVividLight(float base, float blend)
			{
				return(blend < 0.5)?blendColorBurn(base, (2.0 * blend)) : blendColorDodge(base, (2.0 * (blend - 0.5)));
			}
			
			float3 blendVividLight(float3 base, float3 blend)
			{
				return float3(blendVividLight(base.r, blend.r), blendVividLight(base.g, blend.g), blendVividLight(base.b, blend.b));
			}
			
			// Hard mix
			float blendHardMix(float base, float blend)
			{
				return(blendVividLight(base, blend) < 0.5)?0.0 : 1.0;
			}
			
			float3 blendHardMix(float3 base, float3 blend)
			{
				return float3(blendHardMix(base.r, blend.r), blendHardMix(base.g, blend.g), blendHardMix(base.b, blend.b));
			}
			
			// Lighten
			float blendLighten(float base, float blend)
			{
				return max(blend, base);
			}
			
			float3 blendLighten(float3 base, float3 blend)
			{
				return float3(blendLighten(base.r, blend.r), blendLighten(base.g, blend.g), blendLighten(base.b, blend.b));
			}
			
			// Linear Burn
			float blendLinearBurn(float base, float blend)
			{
				// Note : Same implementation as BlendSubtractf
				return max(base + blend - 1.0, 0.0);
			}
			
			float3 blendLinearBurn(float3 base, float3 blend)
			{
				// Note : Same implementation as BlendSubtract
				return max(base + blend - float3(1.0, 1.0, 1.0), float3(0.0, 0.0, 0.0));
			}
			
			// Linear Dodge
			float blendLinearDodge(float base, float blend)
			{
				// Note : Same implementation as BlendAddf
				return min(base + blend, 1.0);
			}
			
			float3 blendLinearDodge(float3 base, float3 blend)
			{
				// Note : Same implementation as BlendAdd
				return min(base + blend, float3(1.0, 1.0, 1.0));
			}
			
			// Linear light
			float blendLinearLight(float base, float blend)
			{
				return blend < 0.5?blendLinearBurn(base, (2.0 * blend)) : blendLinearDodge(base, (2.0 * (blend - 0.5)));
			}
			
			float3 blendLinearLight(float3 base, float3 blend)
			{
				return float3(blendLinearLight(base.r, blend.r), blendLinearLight(base.g, blend.g), blendLinearLight(base.b, blend.b));
			}
			
			// Multiply
			float3 blendMultiply(float3 base, float3 blend)
			{
				return base * blend;
			}
			
			// Negation
			float3 blendNegation(float3 base, float3 blend)
			{
				return float3(1.0, 1.0, 1.0) - abs(float3(1.0, 1.0, 1.0) - base - blend);
			}
			
			// Normal
			float3 blendNormal(float3 base, float3 blend)
			{
				return blend;
			}
			
			// Phoenix
			float3 blendPhoenix(float3 base, float3 blend)
			{
				return min(base, blend) - max(base, blend) + float3(1.0, 1.0, 1.0);
			}
			
			// Pin light
			float blendPinLight(float base, float blend)
			{
				return(blend < 0.5)?blendDarken(base, (2.0 * blend)) : blendLighten(base, (2.0 * (blend - 0.5)));
			}
			
			float3 blendPinLight(float3 base, float3 blend)
			{
				return float3(blendPinLight(base.r, blend.r), blendPinLight(base.g, blend.g), blendPinLight(base.b, blend.b));
			}
			
			// Screen
			float blendScreen(float base, float blend)
			{
				return 1.0 - ((1.0 - base) * (1.0 - blend));
			}
			
			float3 blendScreen(float3 base, float3 blend)
			{
				return float3(blendScreen(base.r, blend.r), blendScreen(base.g, blend.g), blendScreen(base.b, blend.b));
			}
			
			// Soft Light
			float blendSoftLight(float base, float blend)
			{
				return(blend < 0.5)?(2.0 * base * blend + base * base * (1.0 - 2.0 * blend)) : (sqrt(base) * (2.0 * blend - 1.0) + 2.0 * base * (1.0 - blend));
			}
			
			float3 blendSoftLight(float3 base, float3 blend)
			{
				return float3(blendSoftLight(base.r, blend.r), blendSoftLight(base.g, blend.g), blendSoftLight(base.b, blend.b));
			}
			
			// Subtract
			float blendSubtract(float base, float blend)
			{
				return max(base - blend, 0.0);
			}
			
			float3 blendSubtract(float3 base, float3 blend)
			{
				return max(base - blend, 0.0);
			}
			
			// Difference
			float blendDifference(float base, float blend)
			{
				return abs(base - blend);
			}
			
			float3 blendDifference(float3 base, float3 blend)
			{
				return abs(base - blend);
			}
			
			// Divide
			float blendDivide(float base, float blend)
			{
				return base / max(blend, 0.0001);
			}
			
			float3 blendDivide(float3 base, float3 blend)
			{
				return base / max(blend, 0.0001);
			}
			
			float3 customBlend(float3 base, float3 blend, float blendType)
			{
				float3 ret = 0;
				switch(blendType)
				{
					case 0:
					{
						ret = blendNormal(base, blend);
						break;
					}
					case 1:
					{
						ret = blendDarken(base, blend);
						break;
					}
					case 2:
					{
						ret = blendMultiply(base, blend);
						break;
					}
					case 3:
					{
						ret = blendColorBurn(base, blend);
						break;
					}
					case 4:
					{
						ret = blendLinearBurn(base, blend);
						break;
					}
					case 5:
					{
						ret = blendLighten(base, blend);
						break;
					}
					case 6:
					{
						ret = blendScreen(base, blend);
						break;
					}
					case 7:
					{
						ret = blendColorDodge(base, blend);
						break;
					}
					case 8:
					{
						ret = blendLinearDodge(base, blend);
						break;
					}
					case 9:
					{
						ret = blendOverlay(base, blend);
						break;
					}
					case 10:
					{
						ret = blendSoftLight(base, blend);
						break;
					}
					case 11:
					{
						ret = blendHardLight(base, blend);
						break;
					}
					case 12:
					{
						ret = blendVividLight(base, blend);
						break;
					}
					case 13:
					{
						ret = blendLinearLight(base, blend);
						break;
					}
					case 14:
					{
						ret = blendPinLight(base, blend);
						break;
					}
					case 15:
					{
						ret = blendHardMix(base, blend);
						break;
					}
					case 16:
					{
						ret = blendDifference(base, blend);
						break;
					}
					case 17:
					{
						ret = blendExclusion(base, blend);
						break;
					}
					case 18:
					{
						ret = blendSubtract(base, blend);
						break;
					}
					case 19:
					{
						ret = blendDivide(base, blend);
						break;
					}
				}
				return ret;
			}
			
			float random(float2 p)
			{
				return frac(sin(dot(p, float2(12.9898, 78.2383))) * 43758.5453123);
			}
			
			float2 random2(float2 p)
			{
				return frac(sin(float2(dot(p, float2(127.1, 311.7)), dot(p, float2(269.5, 183.3)))) * 43758.5453);
			}
			
			float3 random3(float3 p)
			{
				return frac(sin(float3(dot(p, float3(127.1, 311.7, 248.6)), dot(p, float3(269.5, 183.3, 423.3)), dot(p, float3(248.3, 315.9, 184.2)))) * 43758.5453);
			}
			
			float3 randomFloat3(float2 Seed, float maximum)
			{
				return(.5 + float3(
				frac(sin(dot(Seed.xy, float2(12.9898, 78.233))) * 43758.5453),
				frac(sin(dot(Seed.yx, float2(12.9898, 78.233))) * 43758.5453),
				frac(sin(dot(float2(Seed), float2(12.9898, 78.233))) * 43758.5453)
				) * .5) * (maximum);
			}
			
			float3 randomFloat3Range(float2 Seed, float Range)
			{
				return(float3(
				frac(sin(dot(Seed.xy, float2(12.9898, 78.233))) * 43758.5453),
				frac(sin(dot(Seed.yx, float2(12.9898, 78.233))) * 43758.5453),
				frac(sin(dot(float2(Seed.x * Seed.y, Seed.y + Seed.x), float2(12.9898, 78.233))) * 43758.5453)
				) * 2 - 1) * Range;
			}
			
			float3 randomFloat3WiggleRange(float2 Seed, float Range, float wiggleSpeed)
			{
				float3 rando = (float3(
				frac(sin(dot(Seed.xy, float2(12.9898, 78.233))) * 43758.5453),
				frac(sin(dot(Seed.yx, float2(12.9898, 78.233))) * 43758.5453),
				frac(sin(dot(float2(Seed.x * Seed.y, Seed.y + Seed.x), float2(12.9898, 78.233))) * 43758.5453)
				) * 2 - 1);
				float speed = 1 + wiggleSpeed;
				return float3(sin((_Time.x + rando.x * pi) * speed), sin((_Time.x + rando.y * pi) * speed), sin((_Time.x + rando.z * pi) * speed)) * Range;
			}
			
			void Unity_RandomRange_float(float2 Seed, float Min, float Max, out float Out)
			{
				float randomno = frac(sin(dot(Seed, float2(12.9898, 78.233))) * 43758.5453);
				Out = lerp(Min, Max, randomno);
			}
			
			//art
			
			// Based on unity shader graph code
			
			// * Adjustments * //
			
			/*
			* Channel Mixer
			*
			* Controls the amount each of the channels of input In contribute to each of the channels of output Out. The slider
			* parameters on the node control the contribution of each of the input channels. The toggle button parameters control
			* which of the output channels is currently being edited. Slider controls for editing the contribution of each input
			* channnel range between -2 and 2.
			*/
			void poiChannelMixer(float3 In, float3 _ChannelMixer_Red, float3 _ChannelMixer_Green, float3 _ChannelMixer_Blue, out float3 Out)
			{
				Out = float3(dot(In, _ChannelMixer_Red), dot(In, _ChannelMixer_Green), dot(In, _ChannelMixer_Blue));
			}
			
			/*
			* Contrast
			*
			* Adjusts the contrast of input In by the amount of input Contrast. A Contrast value of 1 will return the input
			* unaltered. A Contrast value of 0 will return the midpoint of the input
			*/
			void poiContrast(float3 In, float Contrast, out float3 Out)
			{
				float midpoint = pow(0.5, 2.2);
				Out = (In - midpoint) * Contrast + midpoint;
			}
			
			/*
			* Invert Colors
			*
			* Inverts the colors of input In on a per channel basis. This Node assumes all input values are in the range 0 - 1.
			*/
			void poiInvertColors(float4 In, float4 InvertColors, out float4 Out)
			{
				Out = abs(InvertColors - In);
			}
			
			/*
			* Replace Color
			*
			* Replaces values in input In equal to input From to the value of input To. Input Range can be used to define a
			* wider range of values around input From to replace. Input Fuzziness can be used to soften the edges around the
			* selection similar to anti-aliasing.
			*/
			void poiReplaceColor(float3 In, float3 From, float3 To, float Range, float Fuzziness, out float3 Out)
			{
				float Distance = distance(From, In);
				Out = lerp(To, In, saturate((Distance - Range) / max(Fuzziness, 0.00001)));
			}
			
			/*
			* Saturation
			*
			* Adjusts the saturation of input In by the amount of input Saturation. A Saturation value of 1 will return the input
			* unaltered. A Saturation value of 0 will return the input completely desaturated.
			*/
			void poiSaturation(float3 In, float Saturation, out float3 Out)
			{
				float luma = dot(In, float3(0.2126729, 0.7151522, 0.0721750));
				Out = luma.xxx + Saturation.xxx * (In - luma.xxx);
			}
			
			/*
			* Dither Node
			*
			* Dither is an intentional form of noise used to randomize quantization error. It is used to prevent large-scale
			* patterns such as color banding in images. The Dither node applies dithering in screen-space to ensure a uniform
			* distribution of the pattern. This can be adjusted by connecting another node to input Screen Position.
			*
			* This Node is commonly used as an input to Alpha Clip Threshold on a Master Node to give the appearance of
			* transparency to an opaque object. This is useful for creating objects that appear to be transparent but have
			* the advantages of rendering as opaque, such as writing depth and/or being rendered in deferred.
			*/
			void poiDither(float4 In, float4 ScreenPosition, out float4 Out)
			{
				float2 uv = ScreenPosition.xy * _ScreenParams.xy;
				float DITHER_THRESHOLDS[16] = {
					1.0 / 17.0, 9.0 / 17.0, 3.0 / 17.0, 11.0 / 17.0,
					13.0 / 17.0, 5.0 / 17.0, 15.0 / 17.0, 7.0 / 17.0,
					4.0 / 17.0, 12.0 / 17.0, 2.0 / 17.0, 10.0 / 17.0,
					16.0 / 17.0, 8.0 / 17.0, 14.0 / 17.0, 6.0 / 17.0
				};
				uint index = (uint(uv.x) % 4) * 4 + uint(uv.y) % 4;
				Out = In - DITHER_THRESHOLDS[index];
			}
			
			/*
			* Color Mask
			*
			* Creates a mask from values in input In equal to input Mask Color. Input Range can be used to define a wider
			* range of values around input Mask Color to create the mask. Colors within this range will return 1,
			* otherwise the node will return 0. Input Fuzziness can be used to soften the edges around the selection
			* similar to anti-aliasing.
			*/
			void poiColorMask(float3 In, float3 MaskColor, float Range, float Fuzziness, out float4 Out)
			{
				float Distance = distance(MaskColor, In);
				Out = saturate(1 - (Distance - Range) / max(Fuzziness, 0.00001));
			}
			
			float3 hueShift(float3 color, float Offset)
			{
				float4 K = float4(0.0, -1.0 / 3.0, 2.0 / 3.0, -1.0);
				float4 P = lerp(float4(color.bg, K.wz), float4(color.gb, K.xy), step(color.b, color.g));
				float4 Q = lerp(float4(P.xyw, color.r), float4(color.r, P.yzx), step(P.x, color.r));
				float D = Q.x - min(Q.w, Q.y);
				float E = 0.0000000001;
				float3 hsv = float3(abs(Q.z + (Q.w - Q.y) / (6.0 * D + E)), D / (Q.x + E), Q.x);
				
				float hue = hsv.x + Offset;
				hsv.x = frac(hue);
				
				float4 K2 = float4(1.0, 2.0 / 3.0, 1.0 / 3.0, 3.0);
				float3 P2 = abs(frac(hsv.xxx + K2.xyz) * 6.0 - K2.www);
				return hsv.z * lerp(K2.xxx, saturate(P2 - K2.xxx), hsv.y);
			}
			
			static const float Epsilon = 1e-10;
			// The weights of RGB contributions to luminance.
			// Should sum to unity.
			static const float3 HCYwts = float3(0.299, 0.587, 0.114);
			static const float HCLgamma = 3;
			static const float HCLy0 = 100;
			static const float HCLmaxL = 0.530454533953517; // == exp(HCLgamma / HCLy0) - 0.5
			static const float3 wref = float3(1.0, 1.0, 1.0);
			#define TAU 6.28318531
			
			float3 HUEtoRGB(in float H)
			{
				float R = abs(H * 6 - 3) - 1;
				float G = 2 - abs(H * 6 - 2);
				float B = 2 - abs(H * 6 - 4);
				return saturate(float3(R, G, B));
			}
			
			float3 RGBtoHCV(in float3 RGB)
			{
				// Based on work by Sam Hocevar and Emil Persson
				float4 P = (RGB.g < RGB.b) ? float4(RGB.bg, -1.0, 2.0 / 3.0) : float4(RGB.gb, 0.0, -1.0 / 3.0);
				float4 Q = (RGB.r < P.x) ? float4(P.xyw, RGB.r) : float4(RGB.r, P.yzx);
				float C = Q.x - min(Q.w, Q.y);
				float H = abs((Q.w - Q.y) / (6 * C + Epsilon) + Q.z);
				return float3(H, C, Q.x);
			}
			
			float3 HSVtoRGB(in float3 HSV)
			{
				float3 RGB = HUEtoRGB(HSV.x);
				return((RGB - 1) * HSV.y + 1) * HSV.z;
			}
			
			float3 RGBtoHSV(in float3 RGB)
			{
				float3 HCV = RGBtoHCV(RGB);
				float S = HCV.y / (HCV.z + Epsilon);
				return float3(HCV.x, S, HCV.z);
			}
			
			float3 HSLtoRGB(in float3 HSL)
			{
				float3 RGB = HUEtoRGB(HSL.x);
				float C = (1 - abs(2 * HSL.z - 1)) * HSL.y;
				return(RGB - 0.5) * C + HSL.z;
			}
			
			float3 RGBtoHSL(in float3 RGB)
			{
				float3 HCV = RGBtoHCV(RGB);
				float L = HCV.z - HCV.y * 0.5;
				float S = HCV.y / (1 - abs(L * 2 - 1) + Epsilon);
				return float3(HCV.x, S, L);
			}
			
			float3 HCYtoRGB(in float3 HCY)
			{
				
				float3 RGB = HUEtoRGB(HCY.x);
				float Z = dot(RGB, HCYwts);
				if (HCY.z < Z)
				{
					HCY.y *= HCY.z / Z;
				}
				else if (Z < 1)
				{
					HCY.y *= (1 - HCY.z) / (1 - Z);
				}
				return(RGB - Z) * HCY.y + HCY.z;
			}
			
			float3 RGBtoHCY(in float3 RGB)
			{
				// Corrected by David Schaeffer
				float3 HCV = RGBtoHCV(RGB);
				float Y = dot(RGB, HCYwts);
				float Z = dot(HUEtoRGB(HCV.x), HCYwts);
				if (Y < Z)
				{
					HCV.y *= Z / (Epsilon + Y);
				}
				else
				{
					HCV.y *= (1 - Z) / (Epsilon + 1 - Y);
				}
				return float3(HCV.x, HCV.y, Y);
			}
			
			float3 HCLtoRGB(in float3 HCL)
			{
				float3 RGB = 0;
				if (HCL.z != 0)
				{
					float H = HCL.x;
					float C = HCL.y;
					float L = HCL.z * HCLmaxL;
					float Q = exp((1 - C / (2 * L)) * (HCLgamma / HCLy0));
					float U = (2 * L - C) / (2 * Q - 1);
					float V = C / Q;
					float A = (H + min(frac(2 * H) / 4, frac(-2 * H) / 8)) * pi * 2;
					float T;
					H *= 6;
					if (H <= 0.999)
					{
						T = tan(A);
						RGB.r = 1;
						RGB.g = T / (1 + T);
					}
					else if (H <= 1.001)
					{
						RGB.r = 1;
						RGB.g = 1;
					}
					else if (H <= 2)
					{
						T = tan(A);
						RGB.r = (1 + T) / T;
						RGB.g = 1;
					}
					else if (H <= 3)
					{
						T = tan(A);
						RGB.g = 1;
						RGB.b = 1 + T;
					}
					else if (H <= 3.999)
					{
						T = tan(A);
						RGB.g = 1 / (1 + T);
						RGB.b = 1;
					}
					else if (H <= 4.001)
					{
						RGB.g = 0;
						RGB.b = 1;
					}
					else if (H <= 5)
					{
						T = tan(A);
						RGB.r = -1 / T;
						RGB.b = 1;
					}
					else
					{
						T = tan(A);
						RGB.r = 1;
						RGB.b = -T;
					}
					RGB = RGB * V + U;
				}
				return RGB;
			}
			
			float3 RGBtoHCL(in float3 RGB)
			{
				float3 HCL;
				float H = 0;
				float U = min(RGB.r, min(RGB.g, RGB.b));
				float V = max(RGB.r, max(RGB.g, RGB.b));
				float Q = HCLgamma / HCLy0;
				HCL.y = V - U;
				if (HCL.y != 0)
				{
					H = atan2(RGB.g - RGB.b, RGB.r - RGB.g) / pi;
					Q *= U / V;
				}
				Q = exp(Q);
				HCL.x = frac(H / 2 - min(frac(H), frac(-H)) / 6);
				HCL.y *= Q;
				HCL.z = lerp(-U, V, Q) / (HCLmaxL * 2);
				return HCL;
			}
			
			//HSL MODIFT
			float3 ModifyViaHSL(float3 color, float3 HSLMod)
			{
				float3 colorHSL = RGBtoHSL(color);
				colorHSL.r = frac(colorHSL.r + HSLMod.r);
				colorHSL.g = saturate(colorHSL.g + HSLMod.g);
				colorHSL.b = saturate(colorHSL.b + HSLMod.b);
				return HSLtoRGB(colorHSL);
			}
			
			float3 poiSaturation(float3 In, float Saturation)
			{
				float luma = dot(In, float3(0.2126729, 0.7151522, 0.0721750));
				return luma.xxx + Saturation.xxx * (In - luma.xxx);
			}
			// LCH
			float xyzF(float t)
			{
				return lerp(pow(t, 1. / 3.), 7.787037 * t + 0.139731, step(t, 0.00885645));
			}
			float xyzR(float t)
			{
				return lerp(t * t * t, 0.1284185 * (t - 0.139731), step(t, 0.20689655));
			}
			float3 rgb2lch(in float3 c)
			{
				c = mul(float3x3(0.4124, 0.3576, 0.1805,
				0.2126, 0.7152, 0.0722,
				0.0193, 0.1192, 0.9505), c);
				c.x = xyzF(c.x / wref.x);
				c.y = xyzF(c.y / wref.y);
				c.z = xyzF(c.z / wref.z);
				float3 lab = float3(max(0., 116.0 * c.y - 16.0), 500.0 * (c.x - c.y), 200.0 * (c.y - c.z));
				return float3(lab.x, length(float2(lab.y, lab.z)), atan2(lab.z, lab.y));
			}
			
			float3 lch2rgb(in float3 c)
			{
				c = float3(c.x, cos(c.z) * c.y, sin(c.z) * c.y);
				
				float lg = 1. / 116. * (c.x + 16.);
				float3 xyz = float3(wref.x * xyzR(lg + 0.002 * c.y),
				wref.y * xyzR(lg),
				wref.z * xyzR(lg - 0.005 * c.z));
				
				float3 rgb = mul(float3x3(3.2406, -1.5372, -0.4986,
				- 0.9689, 1.8758, 0.0415,
				0.0557, -0.2040, 1.0570), xyz);
				
				return rgb;
			}
			
			//cheaply lerp around a circle
			float lerpAng(in float a, in float b, in float x)
			{
				float ang = fmod(fmod((a - b), TAU) + pi * 3., TAU) - pi;
				return ang * x + b;
			}
			
			//Linear interpolation between two colors in Lch space
			float3 lerpLch(in float3 a, in float3 b, in float x)
			{
				float hue = lerpAng(a.z, b.z, x);
				return float3(lerp(b.xy, a.xy, x), hue);
			}
			
			float3 poiExpensiveColorBlend(float3 col1, float3 col2, float alpha)
			{
				return lch2rgb(lerpLch(rgb2lch(col1), rgb2lch(col2), alpha));
			}
			
			float4x4 poiAngleAxisRotationMatrix(float angle, float3 axis)
			{
				axis = normalize(axis);
				float s = sin(angle);
				float c = cos(angle);
				float oc = 1.0 - c;
				
				return float4x4(oc * axis.x * axis.x + c, oc * axis.x * axis.y - axis.z * s, oc * axis.z * axis.x + axis.y * s, 0.0,
				oc * axis.x * axis.y + axis.z * s, oc * axis.y * axis.y + c, oc * axis.y * axis.z - axis.x * s, 0.0,
				oc * axis.z * axis.x - axis.y * s, oc * axis.y * axis.z + axis.x * s, oc * axis.z * axis.z + c, 0.0,
				0.0, 0.0, 0.0, 1.0);
			}
			
			float4x4 poiRotationMatrixFromAngles(float x, float y, float z)
			{
				float angleX = radians(x);
				float c = cos(angleX);
				float s = sin(angleX);
				float4x4 rotateXMatrix = float4x4(1, 0, 0, 0,
				0, c, -s, 0,
				0, s, c, 0,
				0, 0, 0, 1);
				
				float angleY = radians(y);
				c = cos(angleY);
				s = sin(angleY);
				float4x4 rotateYMatrix = float4x4(c, 0, s, 0,
				0, 1, 0, 0,
				- s, 0, c, 0,
				0, 0, 0, 1);
				
				float angleZ = radians(z);
				c = cos(angleZ);
				s = sin(angleZ);
				float4x4 rotateZMatrix = float4x4(c, -s, 0, 0,
				s, c, 0, 0,
				0, 0, 1, 0,
				0, 0, 0, 1);
				
				return mul(mul(rotateXMatrix, rotateYMatrix), rotateZMatrix);
			}
			
			float4x4 poiRotationMatrixFromAngles(float3 angles)
			{
				float angleX = radians(angles.x);
				float c = cos(angleX);
				float s = sin(angleX);
				float4x4 rotateXMatrix = float4x4(1, 0, 0, 0,
				0, c, -s, 0,
				0, s, c, 0,
				0, 0, 0, 1);
				
				float angleY = radians(angles.y);
				c = cos(angleY);
				s = sin(angleY);
				float4x4 rotateYMatrix = float4x4(c, 0, s, 0,
				0, 1, 0, 0,
				- s, 0, c, 0,
				0, 0, 0, 1);
				
				float angleZ = radians(angles.z);
				c = cos(angleZ);
				s = sin(angleZ);
				float4x4 rotateZMatrix = float4x4(c, -s, 0, 0,
				s, c, 0, 0,
				0, 0, 1, 0,
				0, 0, 0, 1);
				
				return mul(mul(rotateXMatrix, rotateYMatrix), rotateZMatrix);
			}
			
			float3 getCameraPosition()
			{
				#ifdef USING_STEREO_MATRICES
				return lerp(unity_StereoWorldSpaceCameraPos[0], unity_StereoWorldSpaceCameraPos[1], 0.5);
				#endif
				return _WorldSpaceCameraPos;
			}
			
			half2 calcScreenUVs(half4 grabPos)
			{
				half2 uv = grabPos.xy / (grabPos.w + 0.0000000001);
				#if UNITY_SINGLE_PASS_STEREO
				uv.xy *= half2(_ScreenParams.x * 2, _ScreenParams.y);
				#else
				uv.xy *= _ScreenParams.xy;
				#endif
				
				return uv;
			}
			
			float CalcMipLevel(float2 texture_coord)
			{
				float2 dx = ddx(texture_coord);
				float2 dy = ddy(texture_coord);
				float delta_max_sqr = max(dot(dx, dx), dot(dy, dy));
				
				return 0.5 * log2(delta_max_sqr);
			}
			
			inline float4 CalculateFrustumCorrection()
			{
				float x1 = -UNITY_MATRIX_P._31 / (UNITY_MATRIX_P._11 * UNITY_MATRIX_P._34);
				float x2 = -UNITY_MATRIX_P._32 / (UNITY_MATRIX_P._22 * UNITY_MATRIX_P._34);
				return float4(x1, x2, 0, UNITY_MATRIX_P._33 / UNITY_MATRIX_P._34 + x1 * UNITY_MATRIX_P._13 + x2 * UNITY_MATRIX_P._23);
			}
			
			float inverseLerp(float A, float B, float T)
			{
				return(T - A) / (B - A);
			}
			
			float inverseLerp2(float2 a, float2 b, float2 value)
			{
				float2 AB = b - a;
				float2 AV = value - a;
				return dot(AV, AB) / dot(AB, AB);
			}
			
			float inverseLerp3(float3 a, float3 b, float3 value)
			{
				float3 AB = b - a;
				float3 AV = value - a;
				return dot(AV, AB) / dot(AB, AB);
			}
			
			float inverseLerp4(float4 a, float4 b, float4 value)
			{
				float4 AB = b - a;
				float4 AV = value - a;
				return dot(AV, AB) / dot(AB, AB);
			}
			
			/*
			MIT License
			
			Copyright (c) 2019 wraikny
			
			Permission is hereby granted, free of charge, to any person obtaining a copy
			of this software and associated documentation files (the "Software"), to deal
			in the Software without restriction, including without limitation the rights
			to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
			copies of the Software, and to permit persons to whom the Software is
			furnished to do so, subject to the following conditions:
			
			The above copyright notice and this permission notice shall be included in all
			copies or substantial portions of the Software.
			
			THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
			IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
			FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
			AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
			LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
			OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
			SOFTWARE.
			
			VertexTransformShader is dependent on:
			*/
			
			float4 quaternion_conjugate(float4 v)
			{
				return float4(
				v.x, -v.yzw
				);
			}
			
			float4 quaternion_mul(float4 v1, float4 v2)
			{
				float4 result1 = (v1.x * v2 + v1 * v2.x);
				
				float4 result2 = float4(
				- dot(v1.yzw, v2.yzw),
				cross(v1.yzw, v2.yzw)
				);
				
				return float4(result1 + result2);
			}
			
			// angle : radians
			float4 get_quaternion_from_angle(float3 axis, float angle)
			{
				float sn = sin(angle * 0.5);
				float cs = cos(angle * 0.5);
				return float4(axis * sn, cs);
			}
			
			float4 quaternion_from_vector(float3 inVec)
			{
				return float4(0.0, inVec);
			}
			
			float degree_to_radius(float degree)
			{
				return(
				degree / 180.0 * pi
				);
			}
			
			float3 rotate_with_quaternion(float3 inVec, float3 rotation)
			{
				float4 qx = get_quaternion_from_angle(float3(1, 0, 0), radians(rotation.x));
				float4 qy = get_quaternion_from_angle(float3(0, 1, 0), radians(rotation.y));
				float4 qz = get_quaternion_from_angle(float3(0, 0, 1), radians(rotation.z));
				
				#define MUL3(A, B, C) quaternion_mul(quaternion_mul((A), (B)), (C))
				float4 quaternion = normalize(MUL3(qx, qy, qz));
				float4 conjugate = quaternion_conjugate(quaternion);
				
				float4 inVecQ = quaternion_from_vector(inVec);
				
				float3 rotated = (
				MUL3(quaternion, inVecQ, conjugate)
				).yzw;
				
				return rotated;
			}
			
			float4 transform(float4 input, float4 pos, float4 rotation, float4 scale)
			{
				input.rgb *= (scale.xyz * scale.w);
				input = float4(rotate_with_quaternion(input.xyz, rotation.xyz * rotation.w) + (pos.xyz * pos.w), input.w);
				return input;
			}
			
			/*
			MIT END
			*/
			
			float aaBlurStep(float gradient, float edge, float blur)
			{
				float edgeMin = saturate(edge);
				float edgeMax = saturate(edge + blur * (1 - edge));
				return smoothstep(0, 1, saturate((gradient - edgeMin) / saturate(edgeMax - edgeMin + fwidth(gradient))));
			}
			
			float3 poiThemeColor(in PoiMods poiMods, in float3 srcColor, in float themeIndex)
			{
				if (themeIndex == 0) return srcColor;
				themeIndex -= 1;
				
				if (themeIndex <= 3)
				{
					return poiMods.globalColorTheme[themeIndex];
				}
				
				#ifdef COLOR_GRADING_LOG_VIEW
				if (poiMods.audioLinkAvailable)
				{
					return poiMods.globalColorTheme[themeIndex];
				}
				#endif
				
				return srcColor;
			}
			#ifdef COLOR_GRADING_LOG_VIEW
			
			// Convenient mechanism to read from the AudioLink texture that handles reading off the end of one line and onto the next above it.
			float4 AudioLinkDataMultiline(uint2 xycoord) { return AudioLinkData(uint2(xycoord.x % AUDIOLINK_WIDTH, xycoord.y + xycoord.x/AUDIOLINK_WIDTH)); }
			
			// Mechanism to sample between two adjacent pixels and lerp between them, like "linear" supesampling
			float4 AudioLinkLerp(float2 xy) { return lerp( AudioLinkData(xy), AudioLinkData(xy+int2(1,0)), frac( xy.x ) ); }
			
			// Same as AudioLinkLerp but properly handles multiline reading.
			float4 AudioLinkLerpMultiline(float2 xy) { return lerp(AudioLinkDataMultiline(xy), AudioLinkDataMultiline(xy+float2(1,0)), frac(xy.x)); }
			
			//Tests to see if Audio Link texture is available
			bool AudioLinkIsAvailable()
			{
				#if !defined(AUDIOLINK_STANDARD_INDEXING)
				int width, height;
				_AudioTexture.GetDimensions(width, height);
				return width > 16;
				#else
				return _AudioTexture_TexelSize.z > 16;
				#endif
			}
			
			//Get version of audiolink present in the world, 0 if no audiolink is present
			float AudioLinkGetVersion()
			{
				int2 dims;
				#if !defined(AUDIOLINK_STANDARD_INDEXING)
				_AudioTexture.GetDimensions(dims.x, dims.y);
				#else
				dims = _AudioTexture_TexelSize.zw;
				#endif
				
				if (dims.x >= 128)
				return AudioLinkData(ALPASS_GENERALVU).x;
				else if (dims.x > 16)
				return 1;
				else
				return 0;
			}
			
			// This pulls data from this texture.
			#define AudioLinkGetSelfPixelData(xy) _SelfTexture2D[xy]
			
			// Extra utility functions for time.
			uint AudioLinkDecodeDataAsUInt(uint2 indexloc)
			{
				uint4 rpx = AudioLinkData(indexloc);
				return rpx.r + rpx.g*1024 + rpx.b * 1048576 + rpx.a * 1073741824;
			}
			
			//Note: This will truncate time to every 134,217.728 seconds (~1.5 days of an instance being up) to prevent floating point aliasing.
			// if your code will alias sooner, you will need to use a different function.  It should be safe to use this on all times.
			float AudioLinkDecodeDataAsSeconds(uint2 indexloc)
			{
				uint time = AudioLinkDecodeDataAsUInt(indexloc) & 0x7ffffff;
				//Can't just divide by float.  Bug in Unity's HLSL compiler.
				return float(time / 1000) + float( time % 1000 ) / 1000.;
			}
			
			#define ALDecodeDataAsSeconds( x ) AudioLinkDecodeDataAsSeconds( x )
			#define ALDecodeDataAsUInt( x ) AudioLinkDecodeDataAsUInt( x )
			
			float AudioLinkRemap(float t, float a, float b, float u, float v) { return ((t-a) / (b-a)) * (v-u) + u; }
			
			float3 AudioLinkHSVtoRGB(float3 HSV)
			{
				float3 RGB = 0;
				float C = HSV.z * HSV.y;
				float H = HSV.x * 6;
				float X = C * (1 - abs(fmod(H, 2) - 1));
				if (HSV.y != 0)
				{
					float I = floor(H);
					if (I == 0) { RGB = float3(C, X, 0); }
					else if (I == 1) { RGB = float3(X, C, 0); }
					else if (I == 2) { RGB = float3(0, C, X); }
					else if (I == 3) { RGB = float3(0, X, C); }
					else if (I == 4) { RGB = float3(X, 0, C); }
					else { RGB = float3(C, 0, X); }
				}
				float M = HSV.z - C;
				return RGB + M;
			}
			
			float3 AudioLinkCCtoRGB(float bin, float intensity, int rootNote)
			{
				float note = bin / AUDIOLINK_EXPBINS;
				
				float hue = 0.0;
				note *= 12.0;
				note = glsl_mod(4. - note + rootNote, 12.0);
				{
					if(note < 4.0)
					{
						//Needs to be YELLOW->RED
						hue = (note) / 24.0;
					}
					else if(note < 8.0)
					{
						//            [4]  [8]
						//Needs to be RED->BLUE
						hue = (note-2.0) / 12.0;
					}
					else
					{
						//             [8] [12]
						//Needs to be BLUE->YELLOW
						hue = (note - 4.0) / 8.0;
					}
				}
				float val = intensity - 0.1;
				return AudioLinkHSVtoRGB(float3(fmod(hue, 1.0), 1.0, clamp(val, 0.0, 1.0)));
			}
			
			// Sample the amplitude of a given frequency in the DFT, supports frequencies in [13.75; 14080].
			float4 AudioLinkGetAmplitudeAtFrequency(float hertz)
			{
				float note = AUDIOLINK_EXPBINS * log2(hertz / AUDIOLINK_BOTTOM_FREQUENCY);
				return AudioLinkLerpMultiline(ALPASS_DFT + float2(note, 0));
			}
			
			// Sample the amplitude of a given semitone in an octave. Octave is in [0; 9] while note is [0; 11].
			float AudioLinkGetAmplitudeAtNote(float octave, float note)
			{
				float quarter = note * 2.0;
				return AudioLinkLerpMultiline(ALPASS_DFT + float2(octave * AUDIOLINK_EXPBINS + quarter, 0));
			}
			
			// Get a reasonable drop-in replacement time value for _Time.y with the
			// given chronotensity index [0; 7] and AudioLink band [0; 3].
			float AudioLinkGetChronoTime(uint index, uint band)
			{
				return (AudioLinkDecodeDataAsUInt(ALPASS_CHRONOTENSITY + uint2(index, band))) / 100000.0;
			}
			
			// Get a chronotensity value in the interval [0; 1], modulated by the speed input,
			// with the given chronotensity index [0; 7] and AudioLink band [0; 3].
			float AudioLinkGetChronoTimeNormalized(uint index, uint band, float speed)
			{
				return frac(AudioLinkGetChronoTime(index, band) * speed);
			}
			
			// Get a chronotensity value in the interval [0; interval], modulated by the speed input,
			// with the given chronotensity index [0; 7] and AudioLink band [0; 3].
			float AudioLinkGetChronoTimeInterval(uint index, uint band, float speed, float interval)
			{
				return AudioLinkGetChronoTimeNormalized(index, band, speed) * interval;
			}
			
			float getBandAtTime(float band, float time, float width, float size = 1.0f)
			{
				//return remap(UNITY_SAMPLE_TEX2D(_AudioTexture, float2(time * width, band/128.0)).r, min(size,.9999), 1);
				return remapClamped(min(size,.9999), 1, AudioLinkData(ALPASS_AUDIOBASS + uint2(time * AUDIOLINK_WIDTH,band)).r);
			}
			
			fixed3 maximize(fixed3 c) {
				if (c.x == 0 && c.y == 0 && c.z == 0)
				return fixed3(1.0, 1.0, 1.0);
				else
				return c / max(c.r, max(c.g, c.b));
			}
			
			void initPoiAudioLink(inout PoiMods poiMods)
			{
				poiMods.audioLinkAvailable = AudioLinkIsAvailable();
				poiMods.audioLinkAvailable *= _AudioLinkAnimToggle;
				
				if (poiMods.audioLinkAvailable)
				{
					poiMods.audioLinkVersion = AudioLinkGetVersion();
					poiMods.audioLink.x = AudioLinkData(ALPASS_AUDIOBASS).r;
					poiMods.audioLink.y = AudioLinkData(ALPASS_AUDIOLOWMIDS).r;
					poiMods.audioLink.z = AudioLinkData(ALPASS_AUDIOHIGHMIDS).r;
					poiMods.audioLink.w = AudioLinkData(ALPASS_AUDIOTREBLE).r;
					
					/*
					poiMods.globalColorTheme[4] = AudioLinkData( ALPASS_CCCOLORS + uint2( 0, 0 ) );
					poiMods.globalColorTheme[5] = AudioLinkData( ALPASS_CCCOLORS + uint2( 1, 0 ) );
					poiMods.globalColorTheme[6] = AudioLinkData( ALPASS_CCCOLORS + uint2( 2, 0 ) );
					poiMods.globalColorTheme[7] = AudioLinkData( ALPASS_CCCOLORS + uint2( 3, 0 ) );
					
					poiMods.globalColorTheme[4] =  float4(maximize(AudioLinkData( ALPASS_CCCOLORS + uint2( 0, 0 ) )),1.0);
					poiMods.globalColorTheme[5] =  float4(maximize(AudioLinkData( ALPASS_CCCOLORS + uint2( 1, 0 ) )),1.0);
					poiMods.globalColorTheme[6] =  float4(maximize(AudioLinkData( ALPASS_CCCOLORS + uint2( 2, 0 ) )),1.0);
					poiMods.globalColorTheme[7] =  float4(maximize(AudioLinkData( ALPASS_CCCOLORS + uint2( 3, 0 ) )),1.0);
					*/
					
					poiMods.globalColorTheme[4] =  float4(AudioLinkCCtoRGB(glsl_mod(AudioLinkData(ALPASS_CCINTERNAL + uint2(2, 0)).x, AUDIOLINK_EXPBINS), 1, AUDIOLINK_ROOTNOTE), 1.0);
					poiMods.globalColorTheme[5] =  float4(AudioLinkCCtoRGB(glsl_mod(AudioLinkData(ALPASS_CCINTERNAL + uint2(3, 0)).x, AUDIOLINK_EXPBINS), 1, AUDIOLINK_ROOTNOTE), 1.0);
					poiMods.globalColorTheme[6] =  float4(AudioLinkCCtoRGB(glsl_mod(AudioLinkData(ALPASS_CCINTERNAL + uint2(4, 0)).x, AUDIOLINK_EXPBINS), 1, AUDIOLINK_ROOTNOTE), 1.0);
					poiMods.globalColorTheme[7] =  float4(AudioLinkCCtoRGB(glsl_mod(AudioLinkData(ALPASS_CCINTERNAL + uint2(5, 0)).x, AUDIOLINK_EXPBINS), 1, AUDIOLINK_ROOTNOTE), 1.0);
					
					poiMods.globalColorTheme[8] = AudioLinkData(ALPASS_THEME_COLOR0);
					poiMods.globalColorTheme[9] = AudioLinkData(ALPASS_THEME_COLOR1);
					poiMods.globalColorTheme[10] = AudioLinkData(ALPASS_THEME_COLOR2);
					poiMods.globalColorTheme[11] = AudioLinkData(ALPASS_THEME_COLOR3);
				}
			}
			
			void DebugVisualizer(inout PoiFragData poiFragData, in PoiMesh poiMesh, in PoiMods poiMods){
				if (_DebugWaveform){
					float waveform = AudioLinkLerpMultiline(ALPASS_WAVEFORM + float2( 500. * poiMesh.uv[0].x, 0)).r;
					poiFragData.emission += clamp(1 - 50 * abs(waveform - poiMesh.uv[0].y * 2. + 1), 0, 1);
				}
				if (_DebugDFT){
					poiFragData.emission += AudioLinkLerpMultiline(ALPASS_DFT + uint2(poiMesh.uv[0].x * AUDIOLINK_ETOTALBINS, 0)).rrr;
				}
				if (_DebugBass){
					poiFragData.emission += poiMods.audioLink.x;
				}
				if (_DebugLowMids){
					poiFragData.emission += poiMods.audioLink.y;
				}
				if (_DebugHighMids){
					poiFragData.emission += poiMods.audioLink.z;
				}
				if (_DebugTreble){
					poiFragData.emission += poiMods.audioLink.w;
				}
				if (_DebugCCColors){
					poiFragData.emission += AudioLinkData(ALPASS_CCCOLORS + uint2(3 + 1, 0));
				}
				if (_DebugCCStrip){
					poiFragData.emission += AudioLinkLerp(ALPASS_CCSTRIP + float2(poiMesh.uv[0].x * AUDIOLINK_WIDTH, 0));
				}
				if (_DebugCCLights){
					poiFragData.emission += AudioLinkData(ALPASS_CCLIGHTS + uint2(uint(poiMesh.uv[0].x * 8) + uint(poiMesh.uv[0].y * 16) * 8, 0));
				}
				if (_DebugAutocorrelator){
					poiFragData.emission += saturate(AudioLinkLerp(ALPASS_AUTOCORRELATOR + float2((abs(1. - poiMesh.uv[0].x * 2.)) * AUDIOLINK_WIDTH, 0)).rrr);
				}
				if (_DebugChronotensity){
					poiFragData.emission += (AudioLinkDecodeDataAsUInt(ALPASS_CHRONOTENSITY  + uint2(1, 0)) % 1000000) / 1000000.0;
				}
			}
			
			void SetupAudioLink(inout PoiFragData poiFragData, inout PoiMods poiMods, in PoiMesh poiMesh){
				initPoiAudioLink(poiMods);
				DebugVisualizer(poiFragData, poiMesh, poiMods);
				
				if(_AudioLinkCCStripY)
				{
					poiFragData.emission += AudioLinkLerp( ALPASS_CCSTRIP + float2( poiMesh.uv[0].y * AUDIOLINK_WIDTH, 0 ) ).rgb * .5;
				}
			}
			
			#endif
			
			v2f vert(appdata v)
			{
				UNITY_SETUP_INSTANCE_ID(v);
				v2f o;
				PoiInitStruct(v2f, o);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);
				
				#ifdef POI_UDIMDISCARD
				UNITY_BRANCH
				if(_UDIMDiscardMode == 0) // Discard Vertices instead of just pixels
				{
					// Branchless (inspired by s-ilent)
					float2 udim = 0;
					// Select UV
					udim += (v.uv0.xy * (_UDIMDiscardUV == 0));
					udim += (v.uv1.xy * (_UDIMDiscardUV == 1));
					udim += (v.uv2.xy * (_UDIMDiscardUV == 2));
					udim += (v.uv3.xy * (_UDIMDiscardUV == 3));
					
					float isRendered = 0;
					float4 xMask = float4(  (udim.x >= 0 && udim.x < 1),
					(udim.x >= 1 && udim.x < 2),
					(udim.x >= 2 && udim.x < 3),
					(udim.x >= 3 && udim.x < 4));
					
					isRendered += (udim.y >= 0 && udim.y < 1) * dot(_UDIMDiscardRow0, xMask);
					isRendered += (udim.y >= 1 && udim.y < 2) * dot(_UDIMDiscardRow1, xMask);
					isRendered += (udim.y >= 2 && udim.y < 3) * dot(_UDIMDiscardRow2, xMask);
					isRendered += (udim.y >= 3 && udim.y < 4) * dot(_UDIMDiscardRow3, xMask);
					isRendered += (udim.y < 0 || udim.y >= 4) + (udim.x < 0 || udim.x >= 4); // never discard outside 4x4 grid in pos coords
					
					if(!isRendered) v.vertex = 0.0/0.0; // NaN position to discard; GPU discards degenerate geometry. thanks bgolus
				}
				#endif
				
				#ifdef AUTO_EXPOSURE
				float4 audioLinkBands = 0;
				float3 ALrotation = 0;
				float3 ALLocalTranslation = 0;
				float3 CTALRotation = 0;
				float3 ALScale = 0;
				float3 ALWorldTranslation = 0;
				float ALHeight = 0;
				float ALRoundingAmount = 0;
				#ifdef COLOR_GRADING_LOG_VIEW
				if (AudioLinkIsAvailable())
				{
					audioLinkBands.x = AudioLinkData(ALPASS_AUDIOBASS).r;
					audioLinkBands.y = AudioLinkData(ALPASS_AUDIOLOWMIDS).r;
					audioLinkBands.z = AudioLinkData(ALPASS_AUDIOHIGHMIDS).r;
					audioLinkBands.w = AudioLinkData(ALPASS_AUDIOTREBLE).r;
					
					if(any(_VertexLocalTranslationALMin) || any(_VertexLocalTranslationALMax))
					{
						ALLocalTranslation = lerp(_VertexLocalTranslationALMin, _VertexLocalTranslationALMax, audioLinkBands[_VertexLocalTranslationALBand]);
					}
					if(any(_VertexLocalRotationAL))
					{
						ALrotation = audioLinkBands[_VertexLocalRotationALBand] * _VertexLocalRotationAL;
					}
					if(any(_VertexLocalRotationCTALSpeed))
					{
						CTALRotation = AudioLinkGetChronoTime(_VertexLocalRotationCTALType, _VertexLocalRotationCTALBand) * _VertexLocalRotationCTALSpeed * 360;
					}
					if(any(_VertexLocalScaleALMin) || any(_VertexLocalScaleALMax))
					{
						ALScale = lerp(_VertexLocalScaleALMin.xyz + _VertexLocalScaleALMin.w, _VertexLocalScaleALMax.xyz + _VertexLocalScaleALMax.w, audioLinkBands[_VertexLocalScaleALBand]);
					}
					if(any(_VertexWorldTranslationALMin) || any(_VertexWorldTranslationALMax))
					{
						ALWorldTranslation = lerp(_VertexWorldTranslationALMin, _VertexWorldTranslationALMax, audioLinkBands[_VertexWorldTranslationALBand]);
					}
					if(any(_VertexManipulationHeightAL))
					{
						ALHeight = lerp(_VertexManipulationHeightAL.x , _VertexManipulationHeightAL.y, audioLinkBands[_VertexManipulationHeightBand]);
					}
					if(any(_VertexRoundingRangeAL))
					{
						ALRoundingAmount = lerp(_VertexRoundingRangeAL.x, _VertexRoundingRangeAL.y, audioLinkBands[_VertexRoundingRangeBand]);
					}
				}
				#endif
				
				// Local Transformation
				float4 rotation = float4(_VertexManipulationLocalRotation.xyz + float3(180,0,0) + _VertexManipulationLocalRotationSpeed * _Time.x + ALrotation + CTALRotation, _VertexManipulationLocalRotation.w);
				v.normal = rotate_with_quaternion(v.normal, rotation.xyz);
				v.tangent.xyz = rotate_with_quaternion(v.tangent.xyz, rotation.xyz);
				v.vertex = transform(v.vertex, _VertexManipulationLocalTranslation + float4(ALLocalTranslation,0), rotation, _VertexManipulationLocalScale + float4(ALScale,0));
				o.normal = UnityObjectToWorldNormal(v.normal);
				
				#if defined(PROP_VERTEXMANIPULATIONHEIGHTMASK) || !defined(OPTIMIZER_ENABLED)
				float3 heightOffset = (tex2Dlod(_VertexManipulationHeightMask, float4(poiUV(v.uv0, _VertexManipulationHeightMask_ST) + _VertexManipulationHeightMaskPan * _Time.x, 0, 0)).r - _VertexManipulationHeightBias) * (_VertexManipulationHeight + ALHeight) * o.normal;
				#else
				float3 heightOffset = (_VertexManipulationHeight + ALHeight) * o.normal;
				#endif
				
				v.vertex.xyz += mul(unity_WorldToObject, _VertexManipulationWorldTranslation.xyz + ALWorldTranslation + heightOffset).xyz;
				
				// rounding
				UNITY_BRANCH
				if (_VertexRoundingEnabled)
				{
					float divisionAmount = _VertexRoundingDivision + ALRoundingAmount;
					float3 worldRoundPosition = (ceil(mul(unity_ObjectToWorld, v.vertex.xyz) * divisionAmount) / divisionAmount) - 1 / divisionAmount * .5;
					v.vertex = mul(unity_WorldToObject, worldRoundPosition);
				}
				#endif
				
				o.objectPos = mul(unity_ObjectToWorld, float4(0, 0, 0, 1)).xyz;
				o.objNormal = v.normal;
				o.normal = UnityObjectToWorldNormal(v.normal);
				o.tangent = UnityObjectToWorldDir(v.tangent);
				
				o.binormal = cross(o.normal, o.tangent) * (v.tangent.w * unity_WorldTransformParams.w);
				o.vertexColor = v.color;
				
				o.uv[0] = v.uv0;
				o.uv[1] = v.uv1;
				o.uv[2] = v.uv2;
				o.uv[3] = v.uv3;
				
				#if defined(LIGHTMAP_ON)
				o.lightmapUV.xy = v.uv1.xy * unity_LightmapST.xy + unity_LightmapST.zw;
				#endif
				#ifdef DYNAMICLIGHTMAP_ON
				o.lightmapUV.zw = v.uv2.xy * unity_DynamicLightmapST.xy + unity_DynamicLightmapST.zw;
				#endif
				
				o.localPos = v.vertex;
				o.worldPos = mul(unity_ObjectToWorld, o.localPos);
				
				float3 localOffset = float3(0, 0, 0);
				float3 worldOffset = float3(0, 0, 0);
				
				o.localPos.rgb += localOffset;
				o.worldPos.rgb += worldOffset;
				
				o.pos = UnityObjectToClipPos(o.localPos);
				#ifdef POI_PASS_OUTLINE
				#if defined(UNITY_REVERSED_Z)
				//DX
				o.pos.z += _Offset_Z * - 0.01;
				#else
				//OpenGL
				o.pos.z += _Offset_Z * 0.01;
				#endif
				#endif
				o.grabPos = ComputeGrabScreenPos(o.pos);
				
				if (_RenderingReduceClipDistance)
				{
					if (o.pos.w < _ProjectionParams.y * 1.01 && o.pos.w > 0)
					{
						o.pos.z = o.pos.z * 0.0001 + o.pos.w * 0.999;
					}
				}
				
				#ifndef FORWARD_META_PASS
				#if !defined(UNITY_PASS_SHADOWCASTER)
				UNITY_TRANSFER_SHADOW(o, o.uv[0].xy);
				#else
				TRANSFER_SHADOW_CASTER_NOPOS(o, o.pos);
				#endif
				#endif
				UNITY_TRANSFER_FOG(o, o.pos);
				
				#if defined(GRAIN)
				float4 worldDirection;
				
				worldDirection.xyz = o.worldPos.xyz - _WorldSpaceCameraPos;
				worldDirection.w = dot(o.pos, CalculateFrustumCorrection());
				o.worldDirection = worldDirection;
				#endif
				return o;
			}
			
			void calculateGlobalThemes(inout PoiMods poiMods)
			{
				poiMods.globalColorTheme[0] = _GlobalThemeColor0;
				poiMods.globalColorTheme[1] = _GlobalThemeColor1;
				poiMods.globalColorTheme[2] = _GlobalThemeColor2;
				poiMods.globalColorTheme[3] = _GlobalThemeColor3;
			}
			
			#ifdef POI_UDIMDISCARD
			void applyUDIMDiscard(inout PoiFragData poiFragData, in PoiMesh poiMesh)
			{
				float2 udim = floor(poiMesh.uv[_UDIMDiscardUV].xy);
				
				float isRendered = 0;
				float4 xMask = float4(  (udim.x >= 0 && udim.x < 1),
				(udim.x >= 1 && udim.x < 2),
				(udim.x >= 2 && udim.x < 3),
				(udim.x >= 3 && udim.x < 4));
				
				isRendered += (udim.y >= 0 && udim.y < 1) * dot(_UDIMDiscardRow0, xMask);
				isRendered += (udim.y >= 1 && udim.y < 2) * dot(_UDIMDiscardRow1, xMask);
				isRendered += (udim.y >= 2 && udim.y < 3) * dot(_UDIMDiscardRow2, xMask);
				isRendered += (udim.y >= 3 && udim.y < 4) * dot(_UDIMDiscardRow3, xMask);
				isRendered += (udim.y < 0 || udim.y >= 4) + (udim.x < 0 || udim.x >= 4); // never discard outside 4x4 grid in pos coords
				
				if(!isRendered) discard;
				
				return;
			}
			#endif
			
			float2 calculatePolarCoordinate(in PoiMesh poiMesh)
			{
				float2 delta = poiMesh.uv[_PolarUV] - _PolarCenter;
				float radius = length(delta) * 2 * _PolarRadialScale;
				float angle = atan2(delta.x, delta.y) * 1.0 / 6.28 * _PolarLengthScale;
				return float2(radius, angle + distance(poiMesh.uv[_PolarUV], _PolarCenter) * _PolarSpiralPower);
			}
			
			float2 MonoPanoProjection(float3 coords)
			{
				float3 normalizedCoords = normalize(coords);
				float latitude = acos(normalizedCoords.y);
				float longitude = atan2(normalizedCoords.z, normalizedCoords.x);
				float2 sphereCoords = float2(longitude, latitude) * float2(1.0 / UNITY_PI, 1.0 / UNITY_PI);
				sphereCoords = float2(1.0, 1.0) - sphereCoords;
				return(sphereCoords + float4(0, 1 - unity_StereoEyeIndex, 1, 1.0).xy) * float4(0, 1 - unity_StereoEyeIndex, 1, 1.0).zw;
			}
			
			float2 StereoPanoProjection(float3 coords)
			{
				float3 normalizedCoords = normalize(coords);
				float latitude = acos(normalizedCoords.y);
				float longitude = atan2(normalizedCoords.z, normalizedCoords.x);
				float2 sphereCoords = float2(longitude, latitude) * float2(0.5 / UNITY_PI, 1.0 / UNITY_PI);
				sphereCoords = float2(0.5, 1.0) - sphereCoords;
				return(sphereCoords + float4(0, 1 - unity_StereoEyeIndex, 1, 0.5).xy) * float4(0, 1 - unity_StereoEyeIndex, 1, 0.5).zw;
			}
			
			float2 calculatePanosphereUV(in PoiMesh poiMesh)
			{
				float3 viewDirection = normalize(lerp(getCameraPosition().xyz, _WorldSpaceCameraPos.xyz, _PanoUseBothEyes) - poiMesh.worldPos.xyz) * - 1;
				return lerp(MonoPanoProjection(viewDirection), StereoPanoProjection(viewDirection), _StereoEnabled);
			}
			
			#ifdef USER_LUT
			float2 distortedUV(in PoiMesh poiMesh)
			{
				#if defined(PROP_DISTORTIONFLOWTEXTURE) || !defined(OPTIMIZER_ENABLED)
				float4 flowVector = POI2D_SAMPLER_PAN(_DistortionFlowTexture, _MainTex, poiUV(poiMesh.uv[_DistortionFlowTextureUV], _DistortionFlowTexture_ST), _DistortionFlowTexturePan) * 2 - 1;
				#else
				float4 flowVector = 0;
				#endif
				
				#if defined(PROP_DISTORTIONFLOWTEXTURE1) || !defined(OPTIMIZER_ENABLED)
				float4 flowVector1 = POI2D_SAMPLER_PAN(_DistortionFlowTexture1, _MainTex, poiUV(poiMesh.uv[_DistortionFlowTexture1UV], _DistortionFlowTexture1_ST), _DistortionFlowTexture1Pan) * 2 - 1;
				#else
				float4 flowVector1 = 0;
				#endif
				
				#if defined(PROP_DISTORTIONMASK) || !defined(OPTIMIZER_ENABLED)
				half distortionMask = POI2D_SAMPLER_PAN(_DistortionMask, _MainTex, poiMesh.uv[_DistortionMaskUV], _DistortionMaskPan).r;
				#else
				half distortionMask = 1;
				#endif
				
				half distortionStrength = _DistortionStrength;
				half distortionStrength1 = _DistortionStrength1;
				
				flowVector *= distortionStrength;
				flowVector1 *= distortionStrength1;
				return poiMesh.uv[_DistortionUvToDistort] + ((flowVector.xy + flowVector1.xy) / 2) * distortionMask;
			}
			#endif
			
			#ifdef POI_PARALLAX
			inline float2 POM(in PoiLight poiLight, sampler2D heightMap, in PoiMesh poiMesh, float3 worldViewDir, float3 viewDirTan, int minSamples, int maxSamples, float parallax, float refPlane, float2 tilling, float2 curv)
			{
				float2 uvs = poiUV(poiMesh.uv[_HeightMapUV], _HeightMap_ST);
				float2 dx = ddx(uvs);
				float2 dy = ddy(uvs);
				float3 result = 0;
				int stepIndex = 0;
				int numSteps = (int)lerp(maxSamples, minSamples, saturate(dot(poiMesh.normals[0], worldViewDir)));
				float layerHeight = 1.0 / numSteps;
				float2 plane = parallax * (viewDirTan.xy / viewDirTan.z);
				uvs += refPlane * plane;
				float2 deltaTex = -plane * layerHeight;
				float2 prevTexOffset = 0;
				float prevRayZ = 1.0f;
				float prevHeight = 0.0f;
				float2 currTexOffset = deltaTex;
				float currRayZ = 1.0f - layerHeight;
				float currHeight = 0.0f;
				float intersection = 0;
				float2 finalTexOffset = 0;
				while (stepIndex < numSteps + 1)
				{
					result.z = dot(curv, currTexOffset * currTexOffset);
					currHeight = tex2Dgrad(heightMap, uvs + currTexOffset, dx, dy).r * (1 - result.z);
					if (currHeight > currRayZ)
					{
						stepIndex = numSteps + 1;
					}
					else
					{
						stepIndex++;
						prevTexOffset = currTexOffset;
						prevRayZ = currRayZ;
						prevHeight = currHeight;
						currTexOffset += deltaTex;
						currRayZ -= layerHeight * (1 - result.z) * (1 + _CurvFix);
					}
				}
				int sectionSteps = 10;
				int sectionIndex = 0;
				float newZ = 0;
				float newHeight = 0;
				while (sectionIndex < sectionSteps)
				{
					intersection = (prevHeight - prevRayZ) / (prevHeight - currHeight + currRayZ - prevRayZ);
					finalTexOffset = prevTexOffset +intersection * deltaTex;
					newZ = prevRayZ - intersection * layerHeight;
					newHeight = tex2Dgrad(heightMap, uvs + finalTexOffset, dx, dy).r;
					if (newHeight > newZ)
					{
						currTexOffset = finalTexOffset;
						currHeight = newHeight;
						currRayZ = newZ;
						deltaTex = intersection * deltaTex;
						layerHeight = intersection * layerHeight;
					}
					else
					{
						prevTexOffset = finalTexOffset;
						prevHeight = newHeight;
						prevRayZ = newZ;
						deltaTex = (1 - intersection) * deltaTex;
						layerHeight = (1 - intersection) * layerHeight;
					}
					sectionIndex++;
				}
				#ifdef UNITY_PASS_SHADOWCASTER
				if (unity_LightShadowBias.z == 0.0)
				{
					#endif
					if (result.z > 1)
					clip(-1);
					#ifdef UNITY_PASS_SHADOWCASTER
				}
				#endif
				return uvs + finalTexOffset;
			}
			/*
			float2 ParallaxOffsetMultiStep(float surfaceHeight, float strength, float2 uv, float3 tangentViewDir)
			{
				float2 uvOffset = 0;
				float2 prevUVOffset = 0;
				float stepSize = 1.0 / _HeightSteps;
				float stepHeight = 1;
				float2 uvDelta = tangentViewDir.xy * (stepSize * strength);
				float prevStepHeight = stepHeight;
				float prevSurfaceHeight = surfaceHeight;
				
				[unroll(20)]
				for (int j = 1; j <= _HeightSteps && stepHeight > surfaceHeight; j++)
				{
					prevUVOffset = uvOffset;
					prevStepHeight = stepHeight;
					prevSurfaceHeight = surfaceHeight;
					uvOffset -= uvDelta;
					stepHeight -= stepSize;
					surfaceHeight = POI2D_SAMPLER_PAN(_Heightmap, _MainTex, poiUV(uv + uvOffset, _Heightmap_ST), _HeightmapPan) + _HeightOffset;
				}
				
				[unroll(3)]
				for (int k = 0; k < 3; k++)
				{
					uvDelta *= 0.5;
					stepSize *= 0.5;
					
					if (stepHeight < surfaceHeight)
					{
						uvOffset += uvDelta;
						stepHeight += stepSize;
					}
					else
					{
						uvOffset -= uvDelta;
						stepHeight -= stepSize;
					}
					surfaceHeight = POI2D_SAMPLER_PAN(_Heightmap, _MainTex, poiUV(uv + uvOffset, _Heightmap_ST), _HeightmapPan) + _HeightOffset;
				}
				return uvOffset;
			}
			*/
			void applyParallax(inout PoiMesh poiMesh, in PoiLight poiLight, in PoiCam poiCam)
			{
				/*
				half h = POI2D_SAMPLER_PAN(_Heightmap, _linear_repeat, poiUV(poiMesh.uv[_HeightmaskUV], _Heightmap_ST), _HeightmapPan).r + _HeightOffset;
				#if defined(PROP_HEIGHTMASK) || !defined(OPTIMIZER_ENABLED)
				half m = POI2D_SAMPLER_PAN(_Heightmask, _linear_repeat, poiUV(poiMesh.uv[_HeightmaskUV], _Heightmask_ST), _HeightmaskPan).r + _HeightOffset;
				#else
				half m = 1 + _HeightOffset;
				#endif
				h = clamp(h, 0, 0.999);
				m = lerp(m, 1 - m, _HeightmaskInvert);
				#if defined(OPTIMIZER_ENABLED)das
				poiMesh.uv[_ParallaxUV] += ParallaxOffsetMultiStep(h, _HeightStrength * m, poiMesh.uv[_HeightmapUV], tangentViewDir / tangentViewDir.z);
				#else
				float2 offset = ParallaxOffsetMultiStep(h, _HeightStrength * m, poiMesh.uv[_HeightmapUV], tangentViewDir / tangentViewDir.z);
				if (_ParallaxUV == 0)       poiMesh.uv[0] += offset;
				if (_ParallaxUV == 1)       poiMesh.uv[1] += offset;
				if (_ParallaxUV == 2)       poiMesh.uv[2] += offset;
				if (_ParallaxUV == 3)       poiMesh.uv[3] += offset;
				if (_ParallaxUV == 4)       poiMesh.uv[4] += offset;
				if (_ParallaxUV == 5)       poiMesh.uv[5] += offset;
				if (_ParallaxUV == 6)       poiMesh.uv[6] += offset;
				if (_ParallaxUV == 7)       poiMesh.uv[7] += offset;
				#endif
				*/
				
				#if defined(OPTIMIZER_ENABLED)
				poiMesh.uv[_ParallaxUV] = POM(poiLight, _HeightMap, poiMesh, poiCam.viewDir, poiCam.tangentViewDir, _HeightStepsMin, _HeightStepsMax, _HeightStrength, 0, _HeightMap_ST.xy, float2(_CurvatureU, _CurvatureV));
				#else
				float2 offset = POM(poiLight, _HeightMap, poiMesh, poiCam.viewDir, poiCam.tangentViewDir, _HeightStepsMin, _HeightStepsMax, _HeightStrength, 0, _HeightMap_ST.xy, float2(_CurvatureU, _CurvatureV));
				if (_ParallaxUV == 0)       poiMesh.uv[0] = offset;
				if (_ParallaxUV == 1)       poiMesh.uv[1] = offset;
				if (_ParallaxUV == 2)       poiMesh.uv[2] = offset;
				if (_ParallaxUV == 3)       poiMesh.uv[3] = offset;
				if (_ParallaxUV == 4)       poiMesh.uv[4] = offset;
				if (_ParallaxUV == 5)       poiMesh.uv[5] = offset;
				if (_ParallaxUV == 6)       poiMesh.uv[6] = offset;
				if (_ParallaxUV == 7)       poiMesh.uv[7] = offset;
				#endif
			}
			#endif
			
			void applyAlphaOptions(inout PoiFragData poiFragData, in PoiMesh poiMesh, in PoiCam poiCam, in PoiMods poiMods)
			{
				poiFragData.alpha = saturate(poiFragData.alpha + _AlphaMod);
				
				// Distance Fade
				if (_AlphaDistanceFade)
				{
					float3 position = _AlphaDistanceFadeType ? poiMesh.worldPos : poiMesh.objectPosition;
					poiFragData.alpha *= lerp(_AlphaDistanceFadeMinAlpha, _AlphaDistanceFadeMaxAlpha, smoothstep(_AlphaDistanceFadeMin, _AlphaDistanceFadeMax, distance(position, poiCam.worldPos)));
				}
				
				// Fresnel Alpha
				if (_AlphaFresnel)
				{
					float holoRim = saturate(1 - smoothstep(min(_AlphaFresnelSharpness, _AlphaFresnelWidth), _AlphaFresnelWidth, poiCam.vDotN));
					holoRim = abs(lerp(1, holoRim, _AlphaFresnelAlpha));
					poiFragData.alpha *= _AlphaFresnelInvert ?1 - holoRim : holoRim;
				}
				
				if (_AlphaAngular)
				{
					half cameraAngleMin = _CameraAngleMin / 180;
					half cameraAngleMax = _CameraAngleMax / 180;
					half modelAngleMin = _ModelAngleMin / 180;
					half modelAngleMax = _ModelAngleMax / 180;
					float3 pos = _AngleCompareTo == 0 ? poiMesh.objectPosition : poiMesh.worldPos;
					half3 cameraToModelDirection = normalize(pos - getCameraPosition());
					half3 modelForwardDirection = normalize(mul(unity_ObjectToWorld, normalize(_AngleForwardDirection)));
					half cameraLookAtModel = remapClamped(cameraAngleMax, cameraAngleMin, .5 * dot(cameraToModelDirection, getCameraForward()) + .5);
					half modelLookAtCamera = remapClamped(modelAngleMax, modelAngleMin, .5 * dot(-cameraToModelDirection, modelForwardDirection) + .5);
					if (_AngleType == 0)
					{
						poiFragData.alpha *= max(cameraLookAtModel, _AngleMinAlpha);
					}
					else if (_AngleType == 1)
					{
						poiFragData.alpha *= max(modelLookAtCamera, _AngleMinAlpha);
					}
					else if (_AngleType == 2)
					{
						poiFragData.alpha *= max(cameraLookAtModel * modelLookAtCamera, _AngleMinAlpha);
					}
				}
				
				#ifdef COLOR_GRADING_LOG_VIEW
				if (poiMods.audioLinkAvailable && _AlphaAudioLinkEnabled)
				{
					poiFragData.alpha = saturate(poiFragData.alpha + lerp(_AlphaAudioLinkAddRange.x, _AlphaAudioLinkAddRange.y, poiMods.audioLink[_AlphaAudioLinkAddBand]));
				}
				#endif
			}
			
			inline half Dither8x8Bayer(int x, int y)
			{
				const half dither[ 64 ] = {
					1, 49, 13, 61, 4, 52, 16, 64,
					33, 17, 45, 29, 36, 20, 48, 32,
					9, 57, 5, 53, 12, 60, 8, 56,
					41, 25, 37, 21, 44, 28, 40, 24,
					3, 51, 15, 63, 2, 50, 14, 62,
					35, 19, 47, 31, 34, 18, 46, 30,
					11, 59, 7, 55, 10, 58, 6, 54,
					43, 27, 39, 23, 42, 26, 38, 22
				};
				int r = y * 8 + x;
				return dither[r] / 64;
			}
			
			half calcDither(half2 grabPos)
			{
				half dither = Dither8x8Bayer(fmod(grabPos.x, 8), fmod(grabPos.y, 8));
				return dither;
			}
			
			void applyDithering(inout PoiFragData poiFragData, in PoiCam poiCam)
			{
				if (_AlphaDithering)
				{
					poiFragData.alpha = poiFragData.alpha - (calcDither(poiCam.screenUV) * (1 - poiFragData.alpha) * _AlphaDitherGradient);
				}
			}
			
			void ApplyAlphaToCoverage(inout PoiFragData poiFragData, in PoiMesh poiMesh)
			{
				// Force Model Opacity to 1 if desired
				UNITY_BRANCH
				if (_Mode == 1)
				{
					UNITY_BRANCH
					if (_AlphasharpenedA2C)
					{
						// rescale alpha by mip level
						poiFragData.alpha *= 1 + max(0, CalcMipLevel(poiMesh.uv[0] * _MainTex_TexelSize.zw)) * _AlphaMipScale;
						// rescale alpha by partial derivative
						poiFragData.alpha = (poiFragData.alpha - _Cutoff) / max(fwidth(poiFragData.alpha), 0.0001) + _Cutoff;
					}
				}
			}
			
			#ifdef FINALPASS
			void ApplyDetailColor(inout PoiFragData poiFragData, in PoiMesh poiMesh, in PoiMods poiMods)
			{
				#if defined(PROP_DETAILTEX) || !defined(OPTIMIZER_ENABLED)
				half3 detailTexture = POI2D_SAMPLER_PAN(_DetailTex, _MainTex, poiUV(poiMesh.uv[_DetailTexUV], _DetailTex_ST), _DetailTexPan).rgb * poiThemeColor(poiMods, _DetailTint, _DetailTintThemeIndex);
				#else
				half3 detailTexture = 0.21763764082 * poiThemeColor(poiMods, _DetailTint, _DetailTintThemeIndex);
				#endif
				
				poiFragData.baseColor.rgb *= LerpWhiteTo(detailTexture * _DetailBrightness * unity_ColorSpaceDouble.rgb, poiMods.detailMask.r * _DetailTexIntensity);
			}
			
			void ApplyDetailNormal(inout PoiMods poiMods, inout PoiMesh poiMesh)
			{
				#if defined(PROP_DETAILMASK) || !defined(OPTIMIZER_ENABLED)
				poiMods.detailMask = POI2D_SAMPLER_PAN(_DetailMask, _MainTex, poiUV(poiMesh.uv[_DetailMaskUV], _DetailMask_ST), _DetailMaskPan).rg;
				#else
				poiMods.detailMask = 1;
				#endif
				
				#ifdef POI_BACKFACE
				if (!poiMesh.isFrontFace)
				{
					poiMods.detailMask.g *= _BackFaceDetailIntensity;
				}
				#endif
				
				#if defined(PROP_DETAILNORMALMAP) || !defined(OPTIMIZER_ENABLED)
				half3 detailNormal = UnpackScaleNormal(POI2D_SAMPLER_PAN(_DetailNormalMap, _MainTex, poiUV(poiMesh.uv[_DetailNormalMapUV], _DetailNormalMap_ST), _DetailNormalMapPan), _DetailNormalMapScale * poiMods.detailMask.g);
				poiMesh.tangentSpaceNormal = BlendNormals(detailNormal, poiMesh.tangentSpaceNormal);
				#endif
			}
			#endif
			
			void applyVertexColor(inout PoiFragData poiFragData, PoiMesh poiMesh)
			{
				#ifndef POI_PASS_OUTLINE
				float3 vertCol = lerp(poiMesh.vertexColor.rgb, GammaToLinearSpace(poiMesh.vertexColor.rgb), _MainVertexColoringLinearSpace);
				poiFragData.baseColor *= lerp(1, vertCol, _MainVertexColoring);
				#endif
				poiFragData.alpha *= lerp(1, poiMesh.vertexColor.a, _MainUseVertexColorAlpha);
			}
			
			#ifdef POI_BACKFACE
			void ApplyBackFaceColor(inout PoiFragData poiFragData, in PoiMesh poiMesh, inout PoiMods poiMods)
			{
				if (!poiMesh.isFrontFace)
				{
					float4 backFaceColor = _BackFaceColor;
					backFaceColor.rgb = poiThemeColor(poiMods, backFaceColor.rgb, _BackFaceColorThemeIndex);
					#if defined(PROP_BACKFACETEXTURE) || !defined(OPTIMIZER_ENABLED)
					backFaceColor *= POI2D_SAMPLER_PAN(_BackFaceTexture, _MainTex, poiUV(poiMesh.uv[_BackFaceTextureUV], _BackFaceTexture_ST), _BackFaceTexturePan);
					#endif
					backFaceColor.rgb = hueShift(backFaceColor.rgb, frac(_BackFaceHueShift + _BackFaceHueShiftSpeed * _Time.x) * _BackFaceHueShiftEnabled);
					
					float backFaceMask = 1;
					#if defined(PROP_BACKFACEMASK) || !defined(OPTIMIZER_ENABLED)
					backFaceMask *= POI2D_SAMPLER_PAN(_BackFaceMask, _MainTex, poiUV(poiMesh.uv[_BackFaceMaskUV], _BackFaceMask_ST), _BackFaceMaskPan).r * _BackFaceAlpha * backFaceColor.a;
					#endif
					
					poiFragData.baseColor = lerp(poiFragData.baseColor, backFaceColor.rgb, backFaceMask);
					
					UNITY_BRANCH
					if (_BackFaceReplaceAlpha)
					{
						poiFragData.alpha = lerp(backFaceColor.a, poiFragData.alpha, backFaceMask);
					}
					
					poiFragData.emission += backFaceColor.rgb * _BackFaceEmissionStrength * backFaceMask;
				}
			}
			#endif
			
			#ifdef VIGNETTE
			#if defined(GEOM_TYPE_MESH) && !defined(UNITY_PASS_SHADOWCASTER) && !defined(POI_PASS_OUTLINE)
			void calculateRGBNormals(inout PoiMesh poiMesh)
			{
				float4 rgbMask;
				//UNITY_BRANCH
				if (_RGBUseVertexColors)
				{
					rgbMask = poiMesh.vertexColor;
				}
				else
				{
					#if defined(PROP_RGBMASK) || !defined(OPTIMIZER_ENABLED)
					rgbMask = POI2D_SAMPLER_PAN(_RGBMask, _MainTex, poiUV(poiMesh.uv[_RGBMaskUV], _RGBMask_ST), _RGBMaskPan);
					#else
					rgbMask = 1;
					#endif
				}
				
				//UNITY_BRANCH
				if (_RgbNormalsEnabled)
				{
					//UNITY_BRANCH
					if (_RGBNormalBlend == 0)
					{
						//UNITY_BRANCH
						if (_RgbNormalRScale > 0)
						{
							half3 normalToBlendWith = UnpackScaleNormal(POI2D_SAMPLER_PAN(_RgbNormalR, _MainTex, poiUV(poiMesh.uv[_RgbNormalRUV], _RgbNormalR_ST), _RgbNormalRPan), _RgbNormalRScale);
							poiMesh.tangentSpaceNormal = lerp(poiMesh.tangentSpaceNormal, normalToBlendWith, rgbMask.r);
						}
						
						//UNITY_BRANCH
						if (_RgbNormalGScale > 0)
						{
							half3 normalToBlendWith = UnpackScaleNormal(POI2D_SAMPLER_PAN(_RgbNormalG, _MainTex, poiUV(poiMesh.uv[_RgbNormalGUV], _RgbNormalG_ST), _RgbNormalGPan), _RgbNormalGScale);
							poiMesh.tangentSpaceNormal = lerp(poiMesh.tangentSpaceNormal, normalToBlendWith, rgbMask.g);
						}
						
						//UNITY_BRANCH
						if (_RgbNormalBScale > 0)
						{
							half3 normalToBlendWith = UnpackScaleNormal(POI2D_SAMPLER_PAN(_RgbNormalB, _MainTex, poiUV(poiMesh.uv[_RgbNormalBUV], _RgbNormalB_ST), _RgbNormalBPan), _RgbNormalBScale);
							poiMesh.tangentSpaceNormal = lerp(poiMesh.tangentSpaceNormal, normalToBlendWith, rgbMask.b);
						}
						
						//UNITY_BRANCH
						if (_RgbNormalAScale > 0)
						{
							half3 normalToBlendWith = UnpackScaleNormal(POI2D_SAMPLER_PAN(_RgbNormalA, _MainTex, poiUV(poiMesh.uv[_RgbNormalAUV], _RgbNormalA_ST), _RgbNormalAPan), _RgbNormalAScale);
							poiMesh.tangentSpaceNormal = lerp(poiMesh.tangentSpaceNormal, normalToBlendWith, rgbMask.a);
						}
					}
					else
					{
						half3 newNormal = UnpackScaleNormal(POI2D_SAMPLER_PAN(_RgbNormalR, _MainTex, poiUV(poiMesh.uv[_RgbNormalRUV], _RgbNormalR_ST), _RgbNormalRPan), _RgbNormalRScale * rgbMask.r);
						half3 normalToBlendWith = UnpackScaleNormal(POI2D_SAMPLER_PAN(_RgbNormalG, _MainTex, poiUV(poiMesh.uv[_RgbNormalGUV], _RgbNormalG_ST), _RgbNormalGPan), _RgbNormalGScale * rgbMask.g);
						newNormal = BlendNormals(newNormal, normalToBlendWith);
						normalToBlendWith = UnpackScaleNormal(POI2D_SAMPLER_PAN(_RgbNormalB, _MainTex, poiUV(poiMesh.uv[_RgbNormalBUV], _RgbNormalB_ST), _RgbNormalBPan), _RgbNormalBScale * rgbMask.b);
						newNormal = BlendNormals(newNormal, normalToBlendWith);
						normalToBlendWith = UnpackScaleNormal(POI2D_SAMPLER_PAN(_RgbNormalA, _MainTex, poiUV(poiMesh.uv[_RgbNormalAUV], _RgbNormalA_ST), _RgbNormalAPan), _RgbNormalAScale * rgbMask.a);
						newNormal = BlendNormals(newNormal, normalToBlendWith);
						poiMesh.tangentSpaceNormal = BlendNormals(newNormal, poiMesh.tangentSpaceNormal);
					}
				}
			}
			#endif
			void calculateRGBMask(inout PoiFragData poiFragData, in PoiMesh poiMesh, in PoiMods poiMods)
			{
				//If RGB normals are in use this data will already exist
				float4 rgbMask = float4(1, 1, 1, 1);
				//UNITY_BRANCH
				if (_RGBUseVertexColors)
				{
					rgbMask = poiMesh.vertexColor;
				}
				else
				{
					#if defined(PROP_RGBMASK) || !defined(OPTIMIZER_ENABLED)
					rgbMask = POI2D_SAMPLER_PAN(_RGBMask, _MainTex, poiUV(poiMesh.uv[_RGBMaskUV], _RGBMask_ST), _RGBMaskPan);
					#else
					rgbMask = 1;
					#endif
				}
				
				#if defined(PROP_REDTEXURE) || !defined(OPTIMIZER_ENABLED)
				float4 red = POI2D_SAMPLER_PAN(_RedTexure, _MainTex, poiUV(poiMesh.uv[_RedTexureUV], _RedTexure_ST), _RedTexurePan);
				#else
				float4 red = 1;
				#endif
				#if defined(PROP_GREENTEXTURE) || !defined(OPTIMIZER_ENABLED)
				float4 green = POI2D_SAMPLER_PAN(_GreenTexture, _MainTex, poiUV(poiMesh.uv[_GreenTextureUV], _GreenTexture_ST), _GreenTexturePan);
				#else
				float4 green = 1;
				#endif
				#if defined(PROP_BLUETEXTURE) || !defined(OPTIMIZER_ENABLED)
				float4 blue = POI2D_SAMPLER_PAN(_BlueTexture, _MainTex, poiUV(poiMesh.uv[_BlueTextureUV], _BlueTexture_ST), _BlueTexturePan);
				#else
				float4 blue = 1;
				#endif
				#if defined(PROP_ALPHATEXTURE) || !defined(OPTIMIZER_ENABLED)
				float4 alpha = POI2D_SAMPLER_PAN(_AlphaTexture, _MainTex, poiUV(poiMesh.uv[_AlphaTextureUV], _AlphaTexture_ST), _AlphaTexturePan);
				#else
				float4 alpha = 1;
				#endif
				
				//UNITY_BRANCH
				if (_RGBBlendMultiplicative)
				{
					float3 RGBColor = 1;
					RGBColor = lerp(RGBColor, red.rgb * poiThemeColor(poiMods, _RedColor.rgb, _RedColorThemeIndex), rgbMask.r * red.a * _RedColor.a);
					RGBColor = lerp(RGBColor, green.rgb * poiThemeColor(poiMods, _GreenColor.rgb, _GreenColorThemeIndex), rgbMask.g * green.a * _GreenColor.a);
					RGBColor = lerp(RGBColor, blue.rgb * poiThemeColor(poiMods, _BlueColor.rgb, _BlueColorThemeIndex), rgbMask.b * blue.a * _BlueColor.a);
					RGBColor = lerp(RGBColor, alpha.rgb * poiThemeColor(poiMods, _AlphaColor.rgb, _AlphaColorThemeIndex), rgbMask.a * alpha.a * _AlphaColor.a);
					
					poiFragData.baseColor *= RGBColor;
				}
				else
				{
					poiFragData.baseColor = lerp(poiFragData.baseColor, red.rgb * poiThemeColor(poiMods, _RedColor.rgb, _RedColorThemeIndex), rgbMask.r * red.a * _RedColor.a);
					poiFragData.baseColor = lerp(poiFragData.baseColor, green.rgb * poiThemeColor(poiMods, _GreenColor.rgb, _GreenColorThemeIndex), rgbMask.g * green.a * _GreenColor.a);
					poiFragData.baseColor = lerp(poiFragData.baseColor, blue.rgb * poiThemeColor(poiMods, _BlueColor.rgb, _BlueColorThemeIndex), rgbMask.b * blue.a * _BlueColor.a);
					poiFragData.baseColor = lerp(poiFragData.baseColor, alpha.rgb * poiThemeColor(poiMods, _AlphaColor.rgb, _AlphaColorThemeIndex), rgbMask.a * alpha.a * _AlphaColor.a);
				}
			}
			#endif
			
			#ifdef GEOM_TYPE_BRANCH
			
			float2 decalUV(float uvNumber, float4 uv_st,  float2 position, half rotation, half rotationSpeed, half2 scale, float4 scaleOffset, float depth, in PoiMesh poiMesh, in PoiCam poiCam)
			{
				scaleOffset = float4(-scaleOffset.x, scaleOffset.y, -scaleOffset.z, scaleOffset.w);
				float2 uv = poiUV(poiMesh.uv[uvNumber], uv_st) + calcParallax(depth + 1, poiCam);
				float2 decalCenter = position;
				float theta = radians(rotation + _Time.z * rotationSpeed);
				float cs = cos(theta);
				float sn = sin(theta);
				uv = float2((uv.x - decalCenter.x) * cs - (uv.y - decalCenter.y) * sn + decalCenter.x, (uv.x - decalCenter.x) * sn + (uv.y - decalCenter.y) * cs + decalCenter.y);
				uv = remap(uv, float2(0, 0) - scale / 2 + position + scaleOffset.xz, scale / 2 + position + scaleOffset.yw, float2(0, 0), float2(1, 1));
				return uv;
			}
			
			inline float3 decalHueShift(float enabled, float3 color, float shift, float shiftSpeed)
			{
				//UNITY_BRANCH
				if (enabled)
				{
					color = hueShift(color, shift + _Time.x * shiftSpeed);
				}
				return color;
			}
			
			inline float applyTilingClipping(float enabled, float2 uv)
			{
				float ret = 1;
				//UNITY_BRANCH
				if (!enabled)
				{
					if (uv.x > 1 || uv.y > 1 || uv.x < 0 || uv.y < 0)
					{
						ret = 0;
					}
				}
				return ret;
			}
			
			void applyDecals(inout PoiFragData poiFragData, in PoiMesh poiMesh, in PoiCam poiCam, in PoiMods poiMods, in PoiLight poiLight)
			{
				float decalAlpha = 0;
				float alphaOverride = 0;
				#if defined(PROP_DECALMASK) || !defined(OPTIMIZER_ENABLED)
				float4 decalMask = POI2D_SAMPLER_PAN(_DecalMask, _MainTex, poiUV(poiMesh.uv[_DecalMaskUV], _DecalMask_ST), _DecalMaskPan);
				#else
				float4 decalMask = 1;
				#endif
				
				float4 decalColor = 1;
				float2 uv = 0;
				
				// Decal 0
				float2 decalScale = float2(1, 1);
				float decalRotation = 0;
				decalScale = _DecalScale;
				float2 ddxuv = 0;
				float2 ddyuv = 0;
				#if defined(PROP_DECALTEXTURE) || !defined(OPTIMIZER_ENABLED)
				#ifdef COLOR_GRADING_LOG_VIEW
				//UNITY_BRANCH
				if (poiMods.audioLinkAvailable)
				{
					decalScale += lerp(_AudioLinkDecal0Scale.xy, _AudioLinkDecal0Scale.zw, poiMods.audioLink[_AudioLinkDecal0ScaleBand]);
					decalRotation += lerp(_AudioLinkDecal0Rotation.x, _AudioLinkDecal0Rotation.y, poiMods.audioLink[_AudioLinkDecal0RotationBand]);
				}
				#endif
				uv = decalUV(_DecalTextureUV, _DecalTexture_ST, _DecalPosition, _DecalRotation + decalRotation, _DecalRotationSpeed, decalScale, _DecalSideOffset, _Decal0Depth, poiMesh, poiCam);
				ddxuv = ddx(uv);
				ddyuv = ddy(uv);
				if(any(fwidth(uv) > .5))
				{
					ddxuv = ddyuv = 0.001;
				}
				decalColor = tex2D(_DecalTexture, uv + _DecalTexturePan * _Time.x, ddxuv, ddyuv) * float4(poiThemeColor(poiMods, _DecalColor.rgb, _DecalColorThemeIndex), _DecalColor.a);
				#else
				uv = decalUV(_DecalTextureUV, _DecalTexture_ST, _DecalPosition, _DecalRotation + decalRotation, _DecalRotationSpeed, decalScale, _DecalSideOffset, _Decal0Depth, poiMesh, poiCam);
				decalColor = float4(poiThemeColor(poiMods, _DecalColor.rgb, _DecalColorThemeIndex), _DecalColor.a);
				#endif
				decalColor.rgb = decalHueShift(_DecalHueShiftEnabled, decalColor.rgb, _DecalHueShift + poiLight.nDotV * _Decal0HueAngleStrength, _DecalHueShiftSpeed);
				decalColor.a *= applyTilingClipping(_DecalTiled, uv) * decalMask[_Decal0MaskChannel];
				
				float audioLinkDecalAlpha0 = 0;
				#ifdef COLOR_GRADING_LOG_VIEW
				audioLinkDecalAlpha0 = lerp(_AudioLinkDecal0Alpha.x, _AudioLinkDecal0Alpha.y, poiMods.audioLink[_AudioLinkDecal0AlphaBand]) * poiMods.audioLinkAvailable;
				#endif
				
				poiFragData.baseColor.rgb = lerp(poiFragData.baseColor.rgb, customBlend(poiFragData.baseColor.rgb, decalColor.rgb, _DecalBlendType), decalColor.a * saturate(_DecalBlendAlpha + audioLinkDecalAlpha0));
				if(_DecalOverideAlpha)
				{
					alphaOverride+=1;
					decalAlpha = max(decalAlpha, decalColor.a);
				}
				float audioLinkDecalEmission0 = 0;
				#ifdef COLOR_GRADING_LOG_VIEW
				audioLinkDecalEmission0 = lerp(_AudioLinkDecal0Emission.x, _AudioLinkDecal0Emission.y, poiMods.audioLink[_AudioLinkDecal0EmissionBand]) * poiMods.audioLinkAvailable;
				#endif
				
				poiFragData.emission += decalColor.rgb * decalColor.a * max(_DecalEmissionStrength + audioLinkDecalEmission0, 0);
				
				#ifdef GEOM_TYPE_BRANCH_DETAIL
				// Decal 1
				decalScale = _DecalScale1;
				decalRotation = 0;
				#if defined(PROP_DECALTEXTURE1) || !defined(OPTIMIZER_ENABLED)
				#ifdef COLOR_GRADING_LOG_VIEW
				//UNITY_BRANCH
				if (poiMods.audioLinkAvailable)
				{
					decalScale += lerp(_AudioLinkDecal1Scale.xy, _AudioLinkDecal1Scale.zw, poiMods.audioLink[_AudioLinkDecal1ScaleBand]);
					decalRotation += lerp(_AudioLinkDecal1Rotation.x, _AudioLinkDecal1Rotation.y, poiMods.audioLink[_AudioLinkDecal1RotationBand]);
				}
				#endif
				uv = decalUV(_DecalTexture1UV, _DecalTexture1_ST, _DecalPosition1, _DecalRotation1 + decalRotation, _DecalRotationSpeed1, decalScale, _DecalSideOffset1, _Decal1Depth, poiMesh, poiCam);
				ddxuv = ddx(uv);
				ddyuv = ddy(uv);
				if(any(fwidth(uv) > .5))
				{
					ddxuv = ddyuv = 0.001;
				}
				decalColor = tex2D(_DecalTexture1, uv + _DecalTexture1Pan * _Time.x, ddxuv, ddyuv) * float4(poiThemeColor(poiMods, _DecalColor1.rgb, _DecalColor1ThemeIndex), _DecalColor1.a);
				#else
				uv = decalUV(_DecalTexture1UV, _DecalTexture1_ST, _DecalPosition1, _DecalRotation1 + decalRotation, _DecalRotationSpeed1, decalScale, _DecalSideOffset1, _Decal1Depth, poiMesh, poiCam);
				decalColor = float4(poiThemeColor(poiMods, _DecalColor1.rgb, _DecalColor1ThemeIndex), _DecalColor1.a);
				#endif
				decalColor.rgb = decalHueShift(_DecalHueShiftEnabled1, decalColor.rgb, _DecalHueShift1 + poiLight.nDotV * _Decal1HueAngleStrength, _DecalHueShiftSpeed1);
				decalColor.a *= applyTilingClipping(_DecalTiled1, uv) * decalMask[_Decal1MaskChannel];
				
				float audioLinkDecalAlpha1 = 0;
				#ifdef COLOR_GRADING_LOG_VIEW
				audioLinkDecalAlpha1 = lerp(_AudioLinkDecal1Alpha.x, _AudioLinkDecal1Alpha.y, poiMods.audioLink[_AudioLinkDecal1AlphaBand]) * poiMods.audioLinkAvailable;
				#endif
				
				poiFragData.baseColor.rgb = lerp(poiFragData.baseColor.rgb, customBlend(poiFragData.baseColor.rgb, decalColor.rgb, _DecalBlendType1), decalColor.a * saturate(_DecalBlendAlpha1 + audioLinkDecalAlpha1));
				if(_DecalOverideAlpha1)
				{
					alphaOverride+=1;
					decalAlpha = max(decalAlpha, decalColor.a);
				}
				float audioLinkDecalEmission1 = 0;
				#ifdef COLOR_GRADING_LOG_VIEW
				audioLinkDecalEmission1 = lerp(_AudioLinkDecal1Emission.x, _AudioLinkDecal1Emission.y, poiMods.audioLink[_AudioLinkDecal1EmissionBand]) * poiMods.audioLinkAvailable;
				#endif
				
				poiFragData.emission += decalColor.rgb * decalColor.a * max(_DecalEmissionStrength1 + audioLinkDecalEmission1, 0);
				#endif
				#ifdef GEOM_TYPE_FROND
				// Decal 2
				decalScale = _DecalScale2;
				decalRotation = 0;
				#if defined(PROP_DECALTEXTURE2) || !defined(OPTIMIZER_ENABLED)
				#ifdef COLOR_GRADING_LOG_VIEW
				//UNITY_BRANCH
				if (poiMods.audioLinkAvailable)
				{
					decalScale += lerp(_AudioLinkDecal2Scale.xy, _AudioLinkDecal2Scale.zw, poiMods.audioLink[_AudioLinkDecal2ScaleBand]);
					decalRotation += lerp(_AudioLinkDecal2Rotation.x, _AudioLinkDecal2Rotation.y, poiMods.audioLink[_AudioLinkDecal2RotationBand]);
				}
				#endif
				uv = decalUV(_DecalTexture2UV, _DecalTexture2_ST, _DecalPosition2, _DecalRotation2 + decalRotation, _DecalRotationSpeed2, decalScale, _DecalSideOffset2, _Decal2Depth, poiMesh, poiCam);
				ddxuv = ddx(uv);
				ddyuv = ddy(uv);
				if(any(fwidth(uv) > .5))
				{
					ddxuv = ddyuv = 0.001;
				}
				decalColor = tex2D(_DecalTexture2, uv + _DecalTexture2Pan * _Time.x, ddxuv, ddyuv) * float4(poiThemeColor(poiMods, _DecalColor2.rgb, _DecalColor2ThemeIndex), _DecalColor2.a);
				#else
				uv = decalUV(_DecalTexture2UV, _DecalTexture2_ST, _DecalPosition2, _DecalRotation2 + decalRotation, _DecalRotationSpeed2, decalScale, _DecalSideOffset2, _Decal2Depth, poiMesh, poiCam);
				decalColor = float4(poiThemeColor(poiMods, _DecalColor2.rgb, _DecalColor2ThemeIndex), _DecalColor2.a);
				#endif
				decalColor.rgb = decalHueShift(_DecalHueShiftEnabled2, decalColor.rgb, _DecalHueShift2 + poiLight.nDotV * _Decal2HueAngleStrength, _DecalHueShiftSpeed2);
				decalColor.a *= applyTilingClipping(_DecalTiled2, uv) * decalMask[_Decal2MaskChannel];
				
				float audioLinkDecalAlpha2 = 0;
				#ifdef COLOR_GRADING_LOG_VIEW
				audioLinkDecalAlpha2 = lerp(_AudioLinkDecal2Alpha.x, _AudioLinkDecal2Alpha.y, poiMods.audioLink[_AudioLinkDecal2AlphaBand]) * poiMods.audioLinkAvailable;
				#endif
				
				poiFragData.baseColor.rgb = lerp(poiFragData.baseColor.rgb, customBlend(poiFragData.baseColor.rgb, decalColor.rgb, _DecalBlendType2), decalColor.a * saturate(_DecalBlendAlpha2 + audioLinkDecalAlpha2));
				if(_DecalOverideAlpha2)
				{
					alphaOverride+=1;
					decalAlpha = max(decalAlpha, decalColor.a);
				}
				float audioLinkDecalEmission2 = 0;
				#ifdef COLOR_GRADING_LOG_VIEW
				audioLinkDecalEmission2 = lerp(_AudioLinkDecal2Emission.x, _AudioLinkDecal2Emission.y, poiMods.audioLink[_AudioLinkDecal2EmissionBand]) * poiMods.audioLinkAvailable;
				#endif
				
				poiFragData.emission += decalColor.rgb * decalColor.a * max(_DecalEmissionStrength2 + audioLinkDecalEmission2, 0);
				#endif
				#ifdef DEPTH_OF_FIELD_COC_VIEW
				// Decal 3
				decalScale = _DecalScale3;
				decalRotation = 0;
				float4 sideMod = 0;
				#if defined(PROP_DECALTEXTURE3) || !defined(OPTIMIZER_ENABLED)
				#ifdef COLOR_GRADING_LOG_VIEW
				//UNITY_BRANCH
				if (poiMods.audioLinkAvailable)
				{
					decalScale += lerp(_AudioLinkDecal3Scale.xy, _AudioLinkDecal3Scale.zw, poiMods.audioLink[_AudioLinkDecal3ScaleBand]);
					sideMod += lerp(_AudioLinkDecal3SideMin, _AudioLinkDecal3SideMax, poiMods.audioLink[_AudioLinkDecal3SideBand]);
					decalRotation += lerp(_AudioLinkDecal3Rotation.x, _AudioLinkDecal3Rotation.y, poiMods.audioLink[_AudioLinkDecal3RotationBand]);
				}
				#endif
				uv = decalUV(_DecalTexture3UV, _DecalTexture3_ST, _DecalPosition3, _DecalRotation3 + decalRotation, _DecalRotationSpeed3, decalScale, _DecalSideOffset3 + sideMod, _Decal3Depth, poiMesh, poiCam);
				ddxuv = ddx(uv);
				ddyuv = ddy(uv);
				if(any(fwidth(uv) > .5))
				{
					ddxuv = ddyuv = 0.001;
				}
				decalColor = tex2D(_DecalTexture3, uv + _DecalTexture3Pan * _Time.x, ddxuv, ddyuv) * float4(poiThemeColor(poiMods, _DecalColor3.rgb, _DecalColor3ThemeIndex), _DecalColor3.a);
				#else
				uv = decalUV(_DecalTexture3UV, _DecalTexture3_ST, _DecalPosition3, _DecalRotation3 + decalRotation, _DecalRotationSpeed3, decalScale, _DecalSideOffset3 + sideMod, _Decal3Depth, poiMesh, poiCam);
				decalColor = float4(poiThemeColor(poiMods, _DecalColor3.rgb, _DecalColor3ThemeIndex), _DecalColor3.a);
				#endif
				decalColor.rgb = decalHueShift(_DecalHueShiftEnabled3, decalColor.rgb, _DecalHueShift3 + poiLight.nDotV * _Decal3HueAngleStrength, _DecalHueShiftSpeed3);
				decalColor.a *= applyTilingClipping(_DecalTiled3, uv) * decalMask[_Decal3MaskChannel];
				
				float audioLinkDecalAlpha3 = 0;
				#ifdef COLOR_GRADING_LOG_VIEW
				if(_AudioLinkDecalX && poiMods.audioLinkAvailable)
				{
					decalColor.rgb = AudioLinkLerp( ALPASS_CCSTRIP + float2( uv.x * AUDIOLINK_WIDTH, 0 ) ).rgb;
				}
				audioLinkDecalAlpha3 = lerp(_AudioLinkDecal3Alpha.x, _AudioLinkDecal3Alpha.y, poiMods.audioLink[_AudioLinkDecal3AlphaBand]) * poiMods.audioLinkAvailable;
				#endif
				
				poiFragData.baseColor.rgb = lerp(poiFragData.baseColor.rgb, customBlend(poiFragData.baseColor.rgb, decalColor.rgb, _DecalBlendType3), decalColor.a * saturate(_DecalBlendAlpha3 + audioLinkDecalAlpha3));
				if(_DecalOverideAlpha3)
				{
					alphaOverride+=1;
					decalAlpha = max(decalAlpha, decalColor.a);
				}
				float audioLinkDecalEmission3 = 0;
				#ifdef COLOR_GRADING_LOG_VIEW
				audioLinkDecalEmission3 = lerp(_AudioLinkDecal3Emission.x, _AudioLinkDecal3Emission.y, poiMods.audioLink[_AudioLinkDecal3EmissionBand]) * poiMods.audioLinkAvailable;
				#endif
				
				poiFragData.emission += decalColor.rgb * decalColor.a * max(_DecalEmissionStrength3 + audioLinkDecalEmission3, 0);
				#endif
				if(alphaOverride)
				{
					poiFragData.alpha *= decalAlpha;
				}
				poiFragData.baseColor = saturate(poiFragData.baseColor);
			}
			#endif
			
			#ifdef DISTORT
			void applyDissolve(inout PoiFragData poiFragData, in PoiMesh poiMesh, in PoiMods poiMods)
			{
				#if defined(PROP_DISSOLVEMASK) || !defined(OPTIMIZER_ENABLED)
				float dissolveMask = POI2D_SAMPLER_PAN(_DissolveMask, _MainTex, poiUV(poiMesh.uv[_DissolveMaskUV], _DissolveMask_ST), _DissolveMaskPan).r;
				#else
				float dissolveMask = 1;
				#endif
				UNITY_BRANCH
				if (_DissolveUseVertexColors)
				{
					// Vertex Color Imprecision hype
					dissolveMask = ceil(poiMesh.vertexColor.g * 100000) / 100000;
				}
				
				#if defined(PROP_DISSOLVETOTEXTURE) || !defined(OPTIMIZER_ENABLED)
				dissolveToTexture = POI2D_SAMPLER_PAN(_DissolveToTexture, _MainTex, poiUV(poiMesh.uv[_DissolveToTextureUV], _DissolveToTexture_ST), _DissolveToTexturePan) * float4(poiThemeColor(poiMods, _DissolveTextureColor.rgb, _DissolveTextureColorThemeIndex), _DissolveTextureColor.a);
				#else
				dissolveToTexture = _DissolveTextureColor;
				#endif
				
				#if defined(PROP_DISSOLVENOISETEXTURE) || !defined(OPTIMIZER_ENABLED)
				float dissolveNoiseTexture = POI2D_SAMPLER_PAN(_DissolveNoiseTexture, _MainTex, poiUV(poiMesh.uv[_DissolveNoiseTextureUV], _DissolveNoiseTexture_ST), _DissolveNoiseTexturePan).r;
				#else
				float dissolveNoiseTexture = 1;
				#endif
				
				float da = _DissolveAlpha
				+ _DissolveAlpha0
				+ _DissolveAlpha1
				+ _DissolveAlpha2
				+ _DissolveAlpha3
				+ _DissolveAlpha4
				+ _DissolveAlpha5
				+ _DissolveAlpha6
				+ _DissolveAlpha7
				+ _DissolveAlpha8
				+ _DissolveAlpha9;
				float dds = _DissolveDetailStrength;
				
				#ifdef COLOR_GRADING_LOG_VIEW
				UNITY_BRANCH
				if (_EnableDissolveAudioLink && poiMods.audioLinkAvailable)
				{
					da += lerp(_AudioLinkDissolveAlpha.x, _AudioLinkDissolveAlpha.y, poiMods.audioLink[_AudioLinkDissolveAlphaBand]);
					dds += lerp(_AudioLinkDissolveDetail.x, _AudioLinkDissolveDetail.y, poiMods.audioLink[_AudioLinkDissolveDetailBand]);
				}
				#endif
				
				da = saturate(da);
				dds = saturate(dds);
				
				#ifdef POI_BLACKLIGHT
				if (_BlackLightMaskDissolve != 4)
				{
					dissolveMask *= blackLightMask[_BlackLightMaskDissolve];
				}
				#endif
				
				if (_DissolveMaskInvert)
				{
					dissolveMask = 1 - dissolveMask;
				}
				#if defined(PROP_DISSOLVEDETAILNOISE) || !defined(OPTIMIZER_ENABLED)
				float dissolveDetailNoise = POI2D_SAMPLER_PAN(_DissolveDetailNoise, _MainTex, poiUV(poiMesh.uv[_DissolveDetailNoiseUV], _DissolveDetailNoise_ST), _DissolveDetailNoisePan);
				#else
				float dissolveDetailNoise = 0;
				#endif
				if (_DissolveInvertNoise)
				{
					dissolveNoiseTexture = 1 - dissolveNoiseTexture;
				}
				if (_DissolveInvertDetailNoise)
				{
					dissolveDetailNoise = 1 - dissolveDetailNoise;
				}
				if (_ContinuousDissolve != 0)
				{
					da = sin(_Time.x * _ContinuousDissolve) * .5 + .5;
				}
				da *= dissolveMask;
				dissolveAlpha = da;
				edgeAlpha = 0;
				
				if (_DissolveType == 1) // Basic
				
				{
					da = remap(da, 0, 1, -_DissolveEdgeWidth, 1);
					dissolveAlpha = da;
					//Adjust detail strength to avoid artifacts
					dds *= smoothstep(1, .99, da);
					float noise = saturate(dissolveNoiseTexture - dissolveDetailNoise * dds);
					
					noise = saturate(noise * 0.998 + 0.001);
					//noise = remap(noise, 0, 1, _DissolveEdgeWidth, 1 - _DissolveEdgeWidth);
					dissolveAlpha = dissolveAlpha >= noise;
					edgeAlpha = remapClamped(da + _DissolveEdgeWidth, da, noise) * (1 - dissolveAlpha);
				}
				else if (_DissolveType == 2) // Point to Point
				
				{
					float3 direction;
					float3 currentPos;
					float distanceTo = 0;
					direction = normalize(_DissolveEndPoint - _DissolveStartPoint);
					currentPos = lerp(_DissolveStartPoint, _DissolveEndPoint, dissolveAlpha);
					
					UNITY_BRANCH
					if (_DissolveP2PWorldLocal != 1)
					{
						float3 pos = _DissolveP2PWorldLocal == 0 ? poiMesh.localPos.rgb : poiMesh.vertexColor.rgb;
						distanceTo = dot(pos - currentPos, direction) - dissolveDetailNoise * dds;
						edgeAlpha = smoothstep(_DissolveP2PEdgeLength + .00001, 0, distanceTo);
						dissolveAlpha = step(distanceTo, 0);
						edgeAlpha *= 1 - dissolveAlpha;
					}
					else
					{
						distanceTo = dot(poiMesh.worldPos - currentPos, direction) - dissolveDetailNoise * dds;
						edgeAlpha = smoothstep(_DissolveP2PEdgeLength + .00001, 0, distanceTo);
						dissolveAlpha = step(distanceTo, 0);
						edgeAlpha *= 1 - dissolveAlpha;
					}
				}
				
				#ifndef POI_SHADOW
				UNITY_BRANCH
				if (_DissolveHueShiftEnabled)
				{
					dissolveToTexture.rgb = hueShift(dissolveToTexture.rgb, _DissolveHueShift + _Time.x * _DissolveHueShiftSpeed);
				}
				#endif
				
				poiFragData.alpha = lerp(poiFragData.alpha, dissolveToTexture.a, dissolveAlpha * .999999);
				
				#if !defined(POI_PASS_OUTLINE) && !defined(UNITY_PASS_SHADOWCASTER)
				poiFragData.baseColor = lerp(poiFragData.baseColor, dissolveToTexture.rgb, dissolveAlpha * .999999);
				
				UNITY_BRANCH
				if (_DissolveEdgeWidth)
				{
					edgeColor = tex2D(_DissolveEdgeGradient, poiUV(float2(edgeAlpha, edgeAlpha), _DissolveEdgeGradient_ST)) * float4(poiThemeColor(poiMods, _DissolveEdgeColor.rgb, _DissolveEdgeColorThemeIndex), _DissolveEdgeColor.a);
					#ifndef POI_SHADOW
					UNITY_BRANCH
					if (_DissolveEdgeHueShiftEnabled)
					{
						edgeColor.rgb = hueShift(edgeColor.rgb, _DissolveEdgeHueShift + _Time.x * _DissolveEdgeHueShiftSpeed);
					}
					#endif
					poiFragData.baseColor = lerp(poiFragData.baseColor, edgeColor.rgb, smoothstep(0, 1 - _DissolveEdgeHardness * .99999999999, edgeAlpha));
				}
				
				poiFragData.emission += lerp(0, dissolveToTexture * _DissolveToEmissionStrength, dissolveAlpha) + lerp(0, edgeColor.rgb * _DissolveEdgeEmission, smoothstep(0, 1 - _DissolveEdgeHardness * .99999999999, edgeAlpha));
				#endif
			}
			#endif
			
			#ifdef VIGNETTE_MASKED
			
			//CLOTH
			#ifdef _LIGHTINGMODE_CLOTH
			#define HARD 0
			#define LERP 1
			#ifdef POI_CLOTHLERP
			#define CLOTHMODE LERP
			#else
			#define CLOTHMODE HARD
			#endif
			float V_SmithGGXCorrelated(float roughness, float NoV, float NoL)
			{
				// Heitz 2014, "Understanding the Masking-Shadowing Function in Microfacet-Based BRDFs"
				float a2 = roughness * roughness;
				// TODO: lambdaV can be pre-computed for all the lights, it should be moved out of this function
				float lambdaV = NoL * sqrt((NoV - a2 * NoV) * NoV + a2);
				float lambdaL = NoV * sqrt((NoL - a2 * NoL) * NoL + a2);
				float v = 0.5 / (lambdaV + lambdaL);
				// a2=0 => v = 1 / 4*NoL*NoV   => min=1/4, max=+inf
				// a2=1 => v = 1 / 2*(NoL+NoV) => min=1/4, max=+inf
				// clamp to the maximum value representable in mediump
				return v;
			}
			
			float D_GGX(float roughness, float NoH)
			{
				// Walter et al. 2007, "Microfacet Models for Refraction through Rough Surfaces"
				
				// In mediump, there are two problems computing 1.0 - NoH^2
				// 1) 1.0 - NoH^2 suffers floating point cancellation when NoH^2 is close to 1 (highlights)
				// 2) NoH doesn't have enough precision around 1.0
				// Both problem can be fixed by computing 1-NoH^2 in highp and providing NoH in highp as well
				
				// However, we can do better using Lagrange's identity:
				//      ||a x b||^2 = ||a||^2 ||b||^2 - (a . b)^2
				// since N and H are unit vectors: ||N x H||^2 = 1.0 - NoH^2
				// This computes 1.0 - NoH^2 directly (which is close to zero in the highlights and has
				// enough precision).
				// Overall this yields better performance, keeping all computations in mediump
				float oneMinusNoHSquared = 1.0 - NoH * NoH;
				
				float a = NoH * roughness;
				float k = roughness / (oneMinusNoHSquared + a * a);
				float d = k * k * (1.0 / UNITY_PI);
				return d;
			}
			
			// https://github.com/google/filament/blob/main/shaders/src/brdf.fs#L94-L100
			float D_Charlie(float roughness, float NoH)
			{
				// Estevez and Kulla 2017, "Production Friendly Microfacet Sheen BRDF"
				float invAlpha = 1.0 / roughness;
				float cos2h = NoH * NoH;
				float sin2h = max(1.0 - cos2h, 0.0078125); // 0.0078125 = 2^(-14/2), so sin2h^2 > 0 in fp16
				return(2.0 + invAlpha) * pow(sin2h, invAlpha * 0.5) / (2.0 * UNITY_PI);
			}
			
			// https://github.com/google/filament/blob/main/shaders/src/brdf.fs#L136-L139
			float V_Neubelt(float NoV, float NoL)
			{
				// Neubelt and Pettineo 2013, "Crafting a Next-gen Material Pipeline for The Order: 1886"
				return 1.0 / (4.0 * (NoL + NoV - NoL * NoV));
			}
			
			float Distribution(float roughness, float NoH, float cloth)
			{
				#if CLOTHMODE == LERP
				return lerp(GGXTerm(roughness, NoH), D_Charlie(roughness, NoH), cloth);
				#elif CLOTHMODE == HARD
				return cloth <= 0.5 ? GGXTerm(roughness, NoH) : D_Charlie(roughness, NoH);
				#endif
			}
			
			float Visibility(float roughness, float NoV, float NoL, float cloth)
			{
				#if CLOTHMODE == LERP
				return lerp(V_SmithGGXCorrelated(roughness, NoV, NoL), V_Neubelt(NoV, NoL), cloth);
				#elif CLOTHMODE == HARD
				return cloth <= 0.5 ? V_SmithGGXCorrelated(roughness, NoV, NoL) : V_Neubelt(NoV, NoL);
				#endif
			}
			
			float F_Schlick(float3 f0, float f90, float VoH)
			{
				// Schlick 1994, "An Inexpensive BRDF Model for Physically-Based Rendering"
				return f0 + (f90 - f0) * pow(1.0 - VoH, 5);
			}
			
			float F_Schlick(float3 f0, float VoH)
			{
				float f = pow(1.0 - VoH, 5.0);
				return f + f0 * (1.0 - f);
			}
			
			float Fresnel(float3 f0, float LoH)
			{
				float f90 = saturate(dot(f0, float(50.0 * 0.33).xxx));
				return F_Schlick(f0, f90, LoH);
			}
			
			float Fd_Burley(float roughness, float NoV, float NoL, float LoH)
			{
				// Burley 2012, "Physically-Based Shading at Disney"
				float f90 = 0.5 + 2.0 * roughness * LoH * LoH;
				float lightScatter = F_Schlick(1.0, f90, NoL);
				float viewScatter = F_Schlick(1.0, f90, NoV);
				return lightScatter * viewScatter;
			}
			
			// Energy conserving wrap diffuse term, does *not* include the divide by pi
			float Fd_Wrap(float NoL, float w)
			{
				return saturate((NoL + w) / pow(1.0 + w, 2));
			}
			
			float4 SampleDFG(float NoV, float perceptualRoughness)
			{
				return _ClothDFG.Sample(sampler_ClothDFG, float3(NoV, perceptualRoughness, 0));
			}
			
			float3 EnvBRDF(float2 dfg, float3 f0)
			{
				return f0 * dfg.x + dfg.y;
			}
			
			float3 EnvBRDFMultiscatter(float3 dfg, float3 f0, float cloth)
			{
				#if CLOTHMODE == LERP
				return lerp(lerp(dfg.xxx, dfg.yyy, f0), f0 * dfg.z, cloth);
				#elif CLOTHMODE == HARD
				return cloth <= 0.5 ? lerp(dfg.xxx, dfg.yyy, f0) : f0 * dfg.z;
				#endif
			}
			
			float3 EnvBRDFEnergyCompensation(float3 dfg, float3 f0, float cloth)
			{
				#if CLOTHMODE == LERP
				return lerp(1.0 + f0 * (1.0 / dfg.y - 1.0), 1, cloth);
				#elif CLOTHMODE == HARD
				return cloth <= 0.5 ? 1.0 + f0 * (1.0 / dfg.y - 1.0) : 1;
				#endif
			}
			
			//
			float ClothMetallic(float cloth)
			{
				#if CLOTHMODE == LERP
				return cloth;
				#elif CLOTHMODE == HARD
				return cloth <= 0.5 ? 1 : 0;
				#endif
			}
			
			float3 Specular(float roughness, PoiLight poiLight, float f0, float3 normal, float cloth)
			{
				float NoL = poiLight.nDotLSaturated;
				float NoH = poiLight.nDotH;
				float LoH = poiLight.lDotH;
				float NoV = poiLight.nDotV;
				
				float D = Distribution(roughness, NoH, cloth);
				float V = Visibility(roughness, NoV, NoL, cloth);
				float3 F = Fresnel(f0, LoH);
				
				return(D * V) * F;
			}
			
			float3 getBoxProjection(float3 direction, float3 position, float4 cubemapPosition, float3 boxMin, float3 boxMax)
			{
				#if UNITY_SPECCUBE_BOX_PROJECTION
				if (cubemapPosition.w > 0)
				{
					float3 factors = ((direction > 0 ? boxMax : boxMin) - position) / direction;
					float scalar = min(min(factors.x, factors.y), factors.z);
					direction = direction * scalar + (position - cubemapPosition.xyz);
				}
				#endif
				
				return direction;
			}
			
			float SpecularAO(float NoV, float ao, float roughness)
			{
				return clamp(pow(NoV + ao, exp2(-16.0 * roughness - 1.0)) - 1.0 + ao, 0.0, 1.0);
			}
			
			float3 IndirectSpecular(float3 dfg, float roughness, float occlusion, float energyCompensation, float cloth, float3 indirectDiffuse, float f0, PoiLight poiLight, PoiFragData poiFragData, PoiCam poiCam, PoiMesh poiMesh)
			{
				float3 normal = poiMesh.normals[1];
				
				float3 reflDir = reflect(-poiCam.viewDir, normal);
				
				Unity_GlossyEnvironmentData envData;
				envData.roughness = roughness;
				envData.reflUVW = getBoxProjection(reflDir, poiMesh.worldPos, unity_SpecCube0_ProbePosition,
				unity_SpecCube0_BoxMin.xyz, unity_SpecCube0_BoxMax.xyz);
				
				float3 probe0 = Unity_GlossyEnvironment(UNITY_PASS_TEXCUBE(unity_SpecCube0), unity_SpecCube0_HDR, envData);
				float3 indirectSpecular = probe0;
				
				#if UNITY_SPECCUBE_BLENDING
				UNITY_BRANCH
				if (unity_SpecCube0_BoxMin.w < 0.99999)
				{
					envData.reflUVW = getBoxProjection(reflDir, poiMesh.worldPos, unity_SpecCube1_ProbePosition, unity_SpecCube1_BoxMin.xyz, unity_SpecCube1_BoxMax.xyz);
					float3 probe1 = Unity_GlossyEnvironment(UNITY_PASS_TEXCUBE_SAMPLER(unity_SpecCube1, unity_SpecCube0), unity_SpecCube1_HDR, envData);
					indirectSpecular = lerp(probe1, probe0, unity_SpecCube0_BoxMin.w);
				}
				#endif
				
				float horizon = min(1 + dot(reflDir, normal), 1);
				indirectSpecular = indirectSpecular * horizon * horizon * energyCompensation * EnvBRDFMultiscatter(dfg, f0, cloth);
				
				indirectSpecular *= SpecularAO(poiLight.nDotV, occlusion, roughness);
				return indirectSpecular;
			};
			#undef LERP
			#undef HARD
			#undef CLOTHMODE
			#endif
			// CLOTH END
			float _LightingWrappedWrap;
			float _LightingWrappedNormalization;
			// Green’s model with adjustable energy
			// http://blog.stevemcauley.com/2011/12/03/energy-conserving-wrapped-diffuse/
			// Modified for adjustable conservation ratio and over-wrap to directionless
			float RTWrapFunc(in float dt, in float w, in float norm)
			{
				float cw = saturate(w);
				
				float o = (dt + cw) / ((1.0 + cw) * (1.0 + cw * norm));
				float flt = 1.0 - 0.85 * norm;
				if (w > 1.0)
				{
					o = lerp(o, flt, w - 1.0);
				}
				return o;
			}
			
			float3 GreenWrapSH(float fA) // Greens unoptimized and non-normalized
			
			{
				float fAs = saturate(fA);
				float4 t = float4(fA + 1, fAs - 1, fA - 2, fAs + 1); // DJL edit: allow wrapping to L0-only at w=2
				return float3(t.x, -t.z * t.x / 3, 0.25 * t.y * t.y * t.w);
			}
			float3 GreenWrapSHOpt(float fW) // optimised and normalized https://blog.selfshadow.com/2012/01/07/righting-wrap-part-2/
			
			{
				const float4 t0 = float4(0.0, 1.0 / 4.0, -1.0 / 3.0, -1.0 / 2.0);
				const float4 t1 = float4(1.0, 2.0 / 3.0, 1.0 / 4.0, 0.0);
				float3 fWs = float3(fW, fW, saturate(fW)); // DJL edit: allow wrapping to L0-only at w=2
				
				float3 r;
				r.xyz = t0.xxy * fWs + t0.xzw;
				r.xyz = r.xyz * fWs + t1.xyz;
				return r;
			}
			float3 ShadeSH9_wrapped(float3 normal, float wrap)
			{
				float3 x0, x1, x2;
				float3 conv = lerp(GreenWrapSH(wrap), GreenWrapSHOpt(wrap), _LightingWrappedNormalization); // Should try optimizing this...
				conv *= float3(1, 1.5, 4); // Undo pre-applied cosine convolution by using the inverse
				
				// Constant (L0)
				x0 = float3(unity_SHAr.w, unity_SHAg.w, unity_SHAb.w);
				// Remove pre-applied constant part from L(2,0) to apply correct convolution
				float3 L2_0 = float3(unity_SHBr.z, unity_SHBg.z, unity_SHBb.z) / - 3.0;
				x0 -= L2_0;
				
				// Linear (L1) polynomial terms
				x1.r = dot(unity_SHAr.xyz, normal);
				x1.g = dot(unity_SHAg.xyz, normal);
				x1.b = dot(unity_SHAb.xyz, normal);
				
				// 4 of the quadratic (L2) polynomials
				float4 vB = normal.xyzz * normal.yzzx;
				x2.r = dot(unity_SHBr, vB);
				x2.g = dot(unity_SHBg, vB);
				x2.b = dot(unity_SHBb, vB);
				
				// Final (5th) quadratic (L2) polynomial
				float vC = normal.x * normal.x - normal.y * normal.y;
				x2 += unity_SHC.rgb * vC;
				// Move back the constant part of L(2,0)
				x2 += L2_0;
				
				return x0 * conv.x + x1 * conv.y + x2 * conv.z;
			}
			
			float3 GetSHDirectionL1()
			{
				// For efficiency, we only get the direction from L1.
				// Because getting it from L2 would be too hard!
				return Unity_SafeNormalize((unity_SHAr.xyz + unity_SHAg.xyz + unity_SHAb.xyz));
			}
			// Returns the value from SH in the lighting direction with the
			// brightest intensity.
			half3 GetSHMaxL1()
			{
				float3 maxDirection = GetSHDirectionL1();
				return ShadeSH9_wrapped(maxDirection, 0);
			}
			
			void applyShadeMapping(inout PoiFragData poiFragData, PoiMesh poiMesh, inout PoiLight poiLight)
			{
				float MainColorFeatherStep = _BaseColor_Step - _BaseShade_Feather;
				float firstColorFeatherStep = _ShadeColor_Step - _1st2nd_Shades_Feather;
				
				#if defined(PROP_1ST_SHADEMAP) || !defined(OPTIMIZER_ENABLED)
				float4 firstShadeMap = POI2D_SAMPLER_PAN(_1st_ShadeMap, _MainTex, poiUV(poiMesh.uv[_1st_ShadeMapUV], _1st_ShadeMap_ST), _1st_ShadeMapPan);
				#else
				float4 firstShadeMap = float4(1, 1, 1, 1);
				#endif
				firstShadeMap = lerp(firstShadeMap, float4(poiFragData.baseColor, 1), _Use_BaseAs1st);
				
				#if defined(PROP_2ND_SHADEMAP) || !defined(OPTIMIZER_ENABLED)
				float4 secondShadeMap = POI2D_SAMPLER_PAN(_2nd_ShadeMap, _MainTex, poiUV(poiMesh.uv[_2nd_ShadeMapUV], _2nd_ShadeMap_ST), _2nd_ShadeMapPan);
				#else
				float4 secondShadeMap = float4(1, 1, 1, 1);
				#endif
				secondShadeMap = lerp(secondShadeMap, firstShadeMap, _Use_1stAs2nd);
				
				firstShadeMap.rgb *= _1st_ShadeColor.rgb; //* lighColor
				secondShadeMap.rgb *= _2nd_ShadeColor.rgb; //* LightColor;
				
				float shadowMask = 1;
				shadowMask *= _Use_1stShadeMapAlpha_As_ShadowMask ?(_1stShadeMapMask_Inverse ?(1.0 - firstShadeMap.a) : firstShadeMap.a) : 1;
				shadowMask *= _Use_2ndShadeMapAlpha_As_ShadowMask ?(_2ndShadeMapMask_Inverse ?(1.0 - secondShadeMap.a) : secondShadeMap.a) : 1;
				
				float mainShadowMask = saturate(1 - ((poiLight.lightMap) - MainColorFeatherStep) / (_BaseColor_Step - MainColorFeatherStep) * (shadowMask));
				float firstSecondShadowMask = saturate(1 - ((poiLight.lightMap) - firstColorFeatherStep) / (_ShadeColor_Step - firstColorFeatherStep) * (shadowMask));
				
				mainShadowMask *= poiLight.shadowMask * _ShadowStrength;
				firstSecondShadowMask *= poiLight.shadowMask * _ShadowStrength;
				
				// 0 lerp | 1 multiply
				if (_ShadingShadeMapBlendType == 0)
				{
					poiFragData.baseColor.rgb = lerp(poiFragData.baseColor.rgb, lerp(firstShadeMap.rgb, secondShadeMap.rgb, firstSecondShadowMask), mainShadowMask);
				}
				else
				{
					poiFragData.baseColor.rgb *= lerp(1, lerp(firstShadeMap.rgb, secondShadeMap.rgb, firstSecondShadowMask), mainShadowMask);
				}
				poiLight.rampedLightMap = 1 - mainShadowMask;
			}
			
			void ApplySubtractiveLighting(inout UnityIndirect indirectLight)
			{
				#if SUBTRACTIVE_LIGHTING
				poiLight.attenuation = FadeShadows(lerp(1, poiLight.attenuation, _AttenuationMultiplier));
				
				float ndotl = saturate(dot(i.normal, _WorldSpaceLightPos0.xyz));
				float3 shadowedLightEstimate = ndotl * (1 - poiLight.attenuation) * _LightColor0.rgb;
				float3 subtractedLight = indirectLight.diffuse - shadowedLightEstimate;
				subtractedLight = max(subtractedLight, unity_ShadowColor.rgb);
				subtractedLight = lerp(subtractedLight, indirectLight.diffuse, _LightShadowData.x);
				indirectLight.diffuse = min(subtractedLight, indirectLight.diffuse);
				#endif
			}
			
			UnityIndirect CreateIndirectLight(in PoiMesh poiMesh, in PoiCam poiCam, in PoiLight poiLight)
			{
				UnityIndirect indirectLight;
				indirectLight.diffuse = 0;
				indirectLight.specular = 0;
				
				#if defined(LIGHTMAP_ON)
				indirectLight.diffuse = DecodeLightmap(UNITY_SAMPLE_TEX2D(unity_Lightmap, poiMesh.lightmapUV.xy));
				
				#if defined(DIRLIGHTMAP_COMBINED)
				float4 lightmapDirection = UNITY_SAMPLE_TEX2D_SAMPLER(
				unity_LightmapInd, unity_Lightmap, poiMesh.lightmapUV.xy
				);
				indirectLight.diffuse = DecodeDirectionalLightmap(
				indirectLight.diffuse, lightmapDirection, poiMesh.normals[1]
				);
				#endif
				ApplySubtractiveLighting(indirectLight);
				#endif
				
				#if defined(DYNAMICLIGHTMAP_ON)
				float3 dynamicLightDiffuse = DecodeRealtimeLightmap(
				UNITY_SAMPLE_TEX2D(unity_DynamicLightmap, poiMesh.lightmapUV.zw)
				);
				
				#if defined(DIRLIGHTMAP_COMBINED)
				float4 dynamicLightmapDirection = UNITY_SAMPLE_TEX2D_SAMPLER(
				unity_DynamicDirectionality, unity_DynamicLightmap,
				poiMesh.lightmapUV.zw
				);
				indirectLight.diffuse += DecodeDirectionalLightmap(
				dynamicLightDiffuse, dynamicLightmapDirection, poiMesh.normals[1]
				);
				#else
				indirectLight.diffuse += dynamicLightDiffuse;
				#endif
				#endif
				
				#if !defined(LIGHTMAP_ON) && !defined(DYNAMICLIGHTMAP_ON)
				#if UNITY_LIGHT_PROBE_PROXY_VOLUME
				if (unity_ProbeVolumeParams.x == 1)
				{
					indirectLight.diffuse = SHEvalLinearL0L1_SampleProbeVolume(
					float4(poiMesh.normals[1], 1), poiMesh.worldPos
					);
					indirectLight.diffuse = max(0, indirectLight.diffuse);
					#if defined(UNITY_COLORSPACE_GAMMA)
					indirectLight.diffuse = LinearToGammaSpace(indirectLight.diffuse);
					#endif
				}
				else
				{
					indirectLight.diffuse += max(0, ShadeSH9(float4(poiMesh.normals[1], 1)));
				}
				#else
				indirectLight.diffuse += max(0, ShadeSH9(float4(poiMesh.normals[1], 1)));
				#endif
				#endif
				
				float3 reflectionDir = reflect(-poiCam.viewDir, poiMesh.normals[1]);
				Unity_GlossyEnvironmentData envData;
				envData.roughness = 1 - _LightingStandardSmoothness;
				envData.reflUVW = BoxProjection(
				reflectionDir, poiMesh.worldPos.xyz,
				unity_SpecCube0_ProbePosition,
				unity_SpecCube0_BoxMin.xyz, unity_SpecCube0_BoxMax.xyz
				);
				float3 probe0 = Unity_GlossyEnvironment(
				UNITY_PASS_TEXCUBE(unity_SpecCube0), unity_SpecCube0_HDR, envData
				);
				envData.reflUVW = BoxProjection(
				reflectionDir, poiMesh.worldPos.xyz,
				unity_SpecCube1_ProbePosition,
				unity_SpecCube1_BoxMin.xyz, unity_SpecCube1_BoxMax.xyz
				);
				#if UNITY_SPECCUBE_BLENDING
				float interpolator = unity_SpecCube0_BoxMin.w;
				//UNITY_BRANCH
				if (interpolator < 0.99999)
				{
					float3 probe1 = Unity_GlossyEnvironment(
					UNITY_PASS_TEXCUBE_SAMPLER(unity_SpecCube1, unity_SpecCube0),
					unity_SpecCube0_HDR, envData
					);
					indirectLight.specular = lerp(probe1, probe0, interpolator);
				}
				else
				{
					indirectLight.specular = probe0;
				}
				#else
				indirectLight.specular = probe0;
				#endif
				
				indirectLight.diffuse *= poiLight.occlusion;
				indirectLight.specular *= poiLight.occlusion;
				
				return indirectLight;
			}
			
			void calculateShading(inout PoiLight poiLight, inout PoiFragData poiFragData, in PoiMesh poiMesh, in PoiCam poiCam)
			{
				#ifdef UNITY_PASS_FORWARDBASE
				
				float shadowStrength = _ShadowStrength * poiLight.shadowMask;
				
				#ifdef POI_PASS_OUTLINE
				shadowStrength = lerp(0, shadowStrength, _OutlineShadowStrength);
				#endif
				
				#ifdef _LIGHTINGMODE_FLAT
				poiLight.finalLighting = poiLight.directColor;
				poiLight.rampedLightMap = poiLight.nDotLSaturated;
				#endif
				
				#ifdef _LIGHTINGMODE_TEXTURERAMP
				poiLight.rampedLightMap = lerp(1, UNITY_SAMPLE_TEX2D(_ToonRamp, poiLight.lightMap + _ShadowOffset).rgb, shadowStrength);
				poiLight.finalLighting = lerp(_LightingShadowColor * lerp(poiLight.indirectColor, poiLight.rampedLightMap * poiLight.directColor, _LightingIgnoreAmbientColor) * poiLight.occlusion, poiLight.directColor, poiLight.rampedLightMap);
				#endif
				
				#ifdef _LIGHTINGMODE_MATHRAMP
				poiLight.rampedLightMap = saturate((poiLight.lightMap - _LightingGradientStart) / saturate(_LightingGradientEnd - _LightingGradientStart + fwidth(poiLight.lightMap)));
				
				poiLight.finalLighting = lerp((_LightingShadowColor * lerp(poiLight.indirectColor, poiLight.directColor, _LightingIgnoreAmbientColor) * poiLight.occlusion), (poiLight.directColor), saturate(poiLight.rampedLightMap + 1 - shadowStrength));
				#endif
				
				#ifdef _LIGHTINGMODE_SHADEMAP
				poiLight.finalLighting = poiLight.directColor;
				#endif
				
				#ifdef _LIGHTINGMODE_REALISTIC
				UnityLight light;
				light.dir = poiLight.direction;
				light.color = saturate(_LightColor0.rgb * lerp(1, poiLight.attenuation, poiLight.attenuationStrength) * poiLight.detailShadow);
				light.ndotl = poiLight.nDotLSaturated;
				poiLight.rampedLightMap = poiLight.nDotLSaturated;
				poiLight.finalLighting = UNITY_BRDF_PBS(1, 0, 0, _LightingStandardSmoothness, poiMesh.normals[1], poiCam.viewDir, light, CreateIndirectLight(poiMesh, poiCam, poiLight)).xyz;
				#endif
				
				#ifdef _LIGHTINGMODE_CLOTH
				
				#if defined(PROP_MOCHIEMETALLICMAP) || !defined(OPTIMIZER_ENABLED)
				float4 clothmapsample = POI2D_MAINTEX_SAMPLER_PAN_INLINED(_ClothMetallicSmoothnessMap, poiMesh);
				float roughness = 1 - (clothmapsample.a * _ClothSmoothness);
				float reflectance = _ClothReflectance * clothmapsample.b;
				float clothmask = clothmapsample.g;
				float metallic = pow(clothmapsample.r * _ClothMetallic, 2) * ClothMetallic(clothmask);
				roughness = _ClothMetallicSmoothnessMapInvert == 1 ? 1 - roughness : roughness;
				#else
				float roughness = 1 - (_ClothSmoothness);
				float metallic = pow(_ClothMetallic, 2);
				float reflectance = _ClothReflectance;
				float clothmask = 1;
				#endif
				
				float perceptualRoughness = pow(roughness, 2);
				float clampedRoughness = max(0.002, perceptualRoughness);
				
				float f0 = 0.16 * reflectance * reflectance * (1 - metallic) + poiFragData.baseColor * metallic;
				float3 fresnel = Fresnel(f0, poiLight.nDotV);
				
				float3 dfg = SampleDFG(poiLight.nDotV, perceptualRoughness);
				
				float energyCompensation = EnvBRDFEnergyCompensation(dfg, f0, clothmask);
				
				poiLight.finalLighting = Fd_Burley(perceptualRoughness, poiLight.nDotV, poiLight.nDotLSaturated, poiLight.lDotH);
				poiLight.finalLighting *= _LightColor0 * poiLight.attenuation * poiLight.nDotLSaturated;
				float3 specular = max(0, Specular(clampedRoughness, poiLight, f0, poiMesh.normals[1], clothmask) * poiLight.finalLighting * energyCompensation * UNITY_PI); // (D * V) * F
				
				float3 L0 = float3(unity_SHAr.w, unity_SHAg.w, unity_SHAb.w);
				float3 indirectDiffuse;
				indirectDiffuse.r = shEvaluateDiffuseL1Geomerics_local(L0.r, unity_SHAr.xyz, poiMesh.normals[1]);
				indirectDiffuse.g = shEvaluateDiffuseL1Geomerics_local(L0.g, unity_SHAg.xyz, poiMesh.normals[1]);
				indirectDiffuse.b = shEvaluateDiffuseL1Geomerics_local(L0.b, unity_SHAb.xyz, poiMesh.normals[1]);
				indirectDiffuse = max(0, indirectDiffuse);
				
				float3 indirectSpecular = IndirectSpecular(dfg, roughness, poiLight.occlusion, energyCompensation, clothmask, indirectDiffuse, f0, poiLight, poiFragData, poiCam, poiMesh);
				poiLight.finalLightAdd = specular + indirectSpecular;
				poiLight.finalLighting += indirectDiffuse * poiLight.occlusion;
				
				poiFragData.baseColor.xyz *= (1 - metallic);
				#endif
				
				#ifdef _LIGHTINGMODE_WRAPPED
				#define grayscale_vector float3(0.3, 0.59, 0.11)
				float wrap = _LightingWrappedWrap;
				float3 directcolor = (_LightColor0.rgb) * saturate(RTWrapFunc(poiLight.nDotL, wrap, _LightingWrappedNormalization));
				float directatten = poiLight.attenuation;
				float3 envlight = ShadeSH9_wrapped(poiMesh.normals[1], wrap);
				envlight *= poiLight.occlusion;
				
				poiLight.directColor = directcolor * poiLight.detailShadow * directatten;
				poiLight.indirectColor = envlight;
				
				float3 ShadeSH9Plus_2 = GetSHMaxL1();
				float bw_topDirectLighting_2 = dot(_LightColor0.rgb, grayscale_vector);
				float bw_directLighting = dot(poiLight.directColor, grayscale_vector);
				float bw_indirectLighting = dot(poiLight.indirectColor, grayscale_vector);
				float bw_topIndirectLighting = dot(ShadeSH9Plus_2, grayscale_vector);
				
				poiLight.lightMap = smoothstep(0, bw_topIndirectLighting + bw_topDirectLighting_2, bw_indirectLighting + bw_directLighting);
				poiLight.rampedLightMap = saturate((poiLight.lightMap - _LightingGradientStart) / saturate(_LightingGradientEnd - _LightingGradientStart + fwidth(poiLight.lightMap)));
				// poiLight.rampedLightMap = 1;
				// UNITY_BRANCH
				// if (_LightingRampType == 0) // Ramp Texture
				// {
				// 	poiLight.rampedLightMap = lerp(1, UNITY_SAMPLE_TEX2D(_ToonRamp, poiLight.lightMap + _ShadowOffset).rgb, shadowStrength.r);
				// }
				// else if (_LightingRampType == 1) // Math Gradient
				// {
				poiLight.rampedLightMap = lerp(_LightingShadowColor * lerp(poiLight.indirectColor, 1, _LightingIgnoreAmbientColor), float3(1, 1, 1), saturate(1 - smoothstep(_LightingGradientStartWrap - .000001, _LightingGradientEndWrap, 1 - poiLight.lightMap)));
				poiLight.rampedLightMap = lerp(float3(1, 1, 1), poiLight.rampedLightMap, shadowStrength.r);
				// }
				
				poiLight.finalLighting = (poiLight.indirectColor + poiLight.directColor) * saturate(poiLight.rampedLightMap + 1 - _ShadowStrength);
				#endif
				
				#ifdef _LIGHTINGMODE_SKIN
				float3 ambientNormalWorld = poiMesh.normals[1];//aTangentToWorld(s, s.blurredNormalTangent);
				poiLight.rampedLightMap = poiLight.nDotLSaturated;
				// Scattering mask.
				float subsurface = 1;
				float skinScattering = saturate(subsurface * _SssScale * 2);
				
				// Skin subsurface depth absorption tint.
				// cf http://www.crytek.com/download/2014_03_25_CRYENGINE_GDC_Schultz.pdf pg 35
				half3 absorption = exp((1.0h - subsurface) * _SssTransmissionAbsorption.rgb);
				
				// Albedo scale for absorption assumes ~0.5 luminance for Caucasian skin.
				absorption *= saturate(poiFragData.baseColor * unity_ColorSpaceDouble.rgb);
				
				// Blurred normals for indirect diffuse and direct scattering.
				ambientNormalWorld = normalize(lerp(poiMesh.normals[1], ambientNormalWorld, _SssBumpBlur));
				
				float ndlBlur = dot(poiMesh.normals[1], poiLight.direction) * 0.5h + 0.5h;
				float lumi = dot(poiLight.directColor, half3(0.2126h, 0.7152h, 0.0722h));
				float4 sssLookupUv = float4(ndlBlur, skinScattering * lumi, 0.0f, 0.0f);
				half3 sss = poiLight.lightMap * poiLight.attenuation * tex2Dlod(_SkinLUT, sssLookupUv).rgb;
				poiLight.finalLighting = min(lerp(poiLight.indirectColor * _LightingShadowColor, _LightingShadowColor, _LightingIgnoreAmbientColor) + (sss * poiLight.directColor), poiLight.directColor);
				#endif
				
				#endif
				
				#ifdef UNITY_PASS_FORWARDADD
				//UNITY_BRANCH
				if (_LightingAdditiveType == 0) // Realistic
				
				{
					poiLight.finalLighting = poiLight.directColor * poiLight.attenuation * max(0, poiLight.nDotL) * poiLight.detailShadow * poiLight.additiveShadow;
				}
				else if (_LightingAdditiveType == 1) // Toon
				
				{
					#if defined(POINT_COOKIE) || defined(DIRECTIONAL_COOKIE)
					float passthrough = 0;
					#else
					float passthrough = _LightingAdditivePassthrough;
					#endif
					
					#if defined(POINT) || defined(SPOT)
					poiLight.finalLighting = lerp(poiLight.directColor * max(poiLight.additiveShadow, passthrough), poiLight.indirectColor, smoothstep(_LightingAdditiveGradientStart, _LightingAdditiveGradientEnd, 1 - (.5 * poiLight.nDotL + .5))) * poiLight.attenuation * poiLight.detailShadow;
					#else
					poiLight.finalLighting = lerp(poiLight.directColor * max(poiLight.attenuation, passthrough), poiLight.indirectColor, smoothstep(_LightingAdditiveGradientStart, _LightingAdditiveGradientEnd, 1 - (.5 * poiLight.nDotL + .5))) * poiLight.detailShadow;
					#endif
				}
				/*
				else //if(_LightingAdditiveType == 2) // Wrapped
				{
					float uv = saturate(RTWrapFunc(poiLight.nDotL, _LightingWrappedWrap, _LightingWrappedNormalization)) * detailShadow;
					
					poiLight.rampedLightMap = 1;
					//UNITY_BRANCH
					if (_LightingRampType == 1) // Math Gradient
					poiLight.rampedLightMap = lerp(_LightingShadowColor, float3(1, 1, 1), saturate(1 - smoothstep(_LightingGradientStart - .000001, _LightingGradientEnd, 1 - uv)));
					// TODO: ramp texture or full shade/tint map for atlasing
					//poiLight.rampedLightMap = lerp(1, UNITY_SAMPLE_TEX2D(_ToonRamp, float2(uv + _ShadowOffset, 1)), shadowStrength.r);
					
					float shadowatten = max(poiLight.additiveShadow, _LightingAdditivePassthrough);
					return poiLight.color * poiLight.rampedLightMap * saturate(poiLight.attenuation * uv * shadowatten);
				}
				*/
				#endif
				
				#if defined(VERTEXLIGHT_ON) && defined(POI_VERTEXLIGHT_ON)
				float3 vertexLighting = float3(0, 0, 0);
				for (int index = 0; index < 4; index++)
				{
					//UNITY_BRANCH
					if (_LightingAdditiveType == 0)
					{
						vertexLighting += poiLight.vColor[index] * poiLight.vAttenuationDotNL[index] * poiLight.detailShadow; // Realistic
						
					}
					
					//UNITY_BRANCH
					if (_LightingAdditiveType == 1) // Toon
					
					{
						vertexLighting += lerp(poiLight.vColor[index] * poiLight.vAttenuation[index], poiLight.vColor[index] * _LightingAdditivePassthrough * poiLight.vAttenuation[index], smoothstep(_LightingAdditiveGradientStart, _LightingAdditiveGradientEnd, poiLight.vDotNL[index])) * poiLight.detailShadow;
					}
					
					//UNITY_BRANCH
					if (_LightingAdditiveType == 2) //if(_LightingAdditiveType == 2) // Wrapped
					
					{
						//TODO wrapped vertex lighting
						vertexLighting += lerp(poiLight.vColor[index] * poiLight.vAttenuation[index], poiLight.vColor[index] * _LightingAdditivePassthrough * poiLight.vAttenuation[index], smoothstep(_LightingAdditiveGradientStart, _LightingAdditiveGradientEnd, poiLight.vDotNL[index])) * poiLight.detailShadow;
						/*
						float uv = saturate(RTWrapFunc(-poiLight.vDotNL[index], _LightingWrappedWrap, _LightingWrappedNormalization)) * poiLight.detailShadow;
						
						poiLight.rampedLightMap = 1;
						if (_LightingRampType == 1) // Math Gradient
						poiLight.rampedLightMap = lerp(_LightingShadowColor, float3(1, 1, 1), saturate(1 - smoothstep(_LightingGradientStart - .000001, _LightingGradientEnd, 1 - uv)));
						
						vertexLighting += poiLight.vColor[index] * poiLight.rampedLightMap * saturate(poiLight.vAttenuation[index] * uv);
						*/
					}
				}
				float3 mixedLight = poiLight.finalLighting;
				poiLight.finalLighting = vertexLighting + poiLight.finalLighting;
				#endif
			}
			#endif
			
			void blendMatcap(in PoiLight poiLight, inout PoiFragData poiFragData, float add, float multiply, float replace, float4 matcapColor, float matcapMask, float emissionStrength, float matcapLightMask
			#ifdef POI_BLACKLIGHT
			, uint blackLightMaskIndex
			#endif
			)
			{
				if (matcapLightMask)
				{
					//todo ramped lightmap is hecked
					matcapMask *= lerp(1, poiLight.rampedLightMap, matcapLightMask);
				}
				#ifdef POI_BLACKLIGHT
				if (blackLightMaskIndex != 4)
				{
					matcapMask *= blackLightMask[blackLightMaskIndex];
				}
				#endif
				
				poiFragData.baseColor.rgb = lerp(poiFragData.baseColor.rgb, matcapColor.rgb, replace * matcapMask * matcapColor.a * .999999);
				poiFragData.baseColor.rgb *= lerp(1, matcapColor.rgb, multiply * matcapMask * matcapColor.a);
				poiFragData.baseColor.rgb += matcapColor.rgb * add * matcapMask * matcapColor.a;
				poiFragData.emission += matcapColor.rgb * emissionStrength * matcapMask * matcapColor.a;
			}
			
			#if defined(POI_MATCAP0) || defined(COLOR_GRADING_HDR_3D)
			void applyMatcap(inout PoiFragData poiFragData, in PoiCam poiCam, in PoiMesh poiMesh, in PoiLight poiLight, in PoiMods poiMods)
			{
				float4 matcap = 0;
				float matcapMask = 0;
				float4 matcap2 = 0;
				float matcap2Mask = 0;
				float2 matcapUV = 0;
				
				// Matcap 1
				#ifdef POI_MATCAP0
				float3 normal0 = poiMesh.normals[_MatcapNormal];
				#ifdef POI_MATCAP0_CUSTOM_NORMAL
				#if defined(PROP_MATCAP0NORMALMAP) || !defined(OPTIMIZER_ENABLED)
				normal0 = calculateNormal(poiMesh.normals[_MatcapNormal], poiMesh, _Matcap0NormalMap, _Matcap0NormalMap_ST, _Matcap0NormalMapPan, _Matcap0NormalMapUV, _Matcap0NormalMapScale);
				#endif
				#endif
				
				switch(_MatcapUVMode)
				{
					// Normal / UTS
					case 0:
					{
						float3 viewNormal = (mul(UNITY_MATRIX_V, float4(normal0, 0))).rgb;
						float3 NormalBlend_MatCapUV_Detail = viewNormal.rgb * float3(-1, -1, 1);
						float3 NormalBlend_MatCapUV_Base = (mul(UNITY_MATRIX_V, float4(poiCam.viewDir, 0)).rgb * float3(-1, -1, 1)) + float3(0, 0, 1);
						float3 noSknewViewNormal = NormalBlend_MatCapUV_Base * dot(NormalBlend_MatCapUV_Base, NormalBlend_MatCapUV_Detail) / NormalBlend_MatCapUV_Base.b - NormalBlend_MatCapUV_Detail;
						
						matcapUV = noSknewViewNormal.rg * _MatcapBorder + 0.5;
						break;
					}
					// Top Pinch
					case 1:
					{
						float3 worldViewUp = normalize(float3(0, 1, 0) - poiCam.viewDir * dot(poiCam.viewDir, float3(0, 1, 0)));
						float3 worldViewRight = normalize(cross(poiCam.viewDir, worldViewUp));
						matcapUV = float2(dot(worldViewRight, normal0), dot(worldViewUp, normal0)) * _MatcapBorder + 0.5;
						break;
					}
					// Custom Double Sided
					case 2:
					{
						float3 reflection = reflect(-poiCam.viewDir, normal0);
						float2 uv = float2(dot(reflection, float3(1, 0, 0)), dot(reflection, float3(0, 1, 0)));
						matcapUV = uv * _MatcapBorder + 0.5;
						break;
					}
				}
				if (IsInMirror())
				{
					matcapUV.x = 1 - matcapUV.x;
				}
				
				#if defined(PROP_MATCAP) || !defined(OPTIMIZER_ENABLED)
				matcap = UNITY_SAMPLE_TEX2D_SAMPLER(_Matcap, _MainTex, TRANSFORM_TEX(matcapUV, _Matcap)) * float4(poiThemeColor(poiMods, _MatcapColor.rgb, _MatcapColorThemeIndex), _MatcapColor.a);
				#else
				matcap = float4(poiThemeColor(poiMods, _MatcapColor.rgb, _MatcapColorThemeIndex), _MatcapColor.a);
				#endif
				
				matcap.rgb *= _MatcapIntensity;
				#if defined(PROP_MATCAPMASK) || !defined(OPTIMIZER_ENABLED)
				matcapMask = POI2D_SAMPLER_PAN(_MatcapMask, _MainTex, poiUV(poiMesh.uv[_MatcapMaskUV], _MatcapMask_ST), _MatcapMaskPan);
				#else
				matcapMask = 1;
				#endif
				
				if (_MatcapMaskInvert)
				{
					matcapMask = 1 - matcapMask;
				}
				
				poiFragData.alpha *= lerp(1, matcap.a, matcapMask * _MatcapAlphaOverride);
				
				//UNITY_BRANCH
				if (_MatcapHueShiftEnabled)
				{
					matcap.rgb = hueShift(matcap.rgb, _MatcapHueShift + _Time.x * _MatcapHueShiftSpeed);
				}
				
				blendMatcap(poiLight, poiFragData, _MatcapAdd, _MatcapMultiply, _MatcapReplace, matcap, matcapMask, _MatcapEmissionStrength, _MatcapLightMask
				#ifdef POI_BLACKLIGHT
				, _BlackLightMaskMatcap
				#endif
				);
				#endif
				
				// Matcap 2
				#ifdef COLOR_GRADING_HDR_3D
				
				float3 normal1 = poiMesh.normals[_Matcap2Normal];
				#ifdef POI_MATCAP1_CUSTOM_NORMAL
				#if defined(PROP_MATCAP1NORMALMAP) || !defined(OPTIMIZER_ENABLED)
				normal1 = calculateNormal(poiMesh.normals[_Matcap2Normal], poiMesh, _Matcap1NormalMap, _Matcap1NormalMap_ST, _Matcap1NormalMapPan, _Matcap1NormalMapUV, _Matcap1NormalMapScale);
				#endif
				#endif
				
				matcapUV = 0;
				
				switch(_Matcap2UVMode)
				{
					// Normal / UTS
					case 0:
					{
						float3 viewNormal = (mul(UNITY_MATRIX_V, float4(normal1, 0))).rgb;
						float3 NormalBlend_MatCapUV_Detail = viewNormal.rgb * float3(-1, -1, 1);
						float3 NormalBlend_MatCapUV_Base = (mul(UNITY_MATRIX_V, float4(poiCam.viewDir, 0)).rgb * float3(-1, -1, 1)) + float3(0, 0, 1);
						float3 noSknewViewNormal = NormalBlend_MatCapUV_Base * dot(NormalBlend_MatCapUV_Base, NormalBlend_MatCapUV_Detail) / NormalBlend_MatCapUV_Base.b - NormalBlend_MatCapUV_Detail;
						
						matcapUV = noSknewViewNormal.rg * _Matcap2Border + 0.5;
						break;
					}
					// Top Pinch
					case 1:
					{
						float3 worldViewUp = normalize(float3(0, 1, 0) - poiCam.viewDir * dot(poiCam.viewDir, float3(0, 1, 0)));
						float3 worldViewRight = normalize(cross(poiCam.viewDir, worldViewUp));
						matcapUV = float2(dot(worldViewRight, normal1), dot(worldViewUp, normal1)) * _Matcap2Border + 0.5;
						break;
					}
					// Custom Double Sided
					case 2:
					{
						float3 reflection = reflect(-poiCam.viewDir, normal1);
						float2 uv = float2(dot(reflection, float3(1, 0, 0)), dot(reflection, float3(0, 1, 0)));
						matcapUV = uv * _Matcap2Border + 0.5;
						break;
					}
				}
				if (IsInMirror())
				{
					matcapUV.x = 1 - matcapUV.x;
				}
				
				#if defined(PROP_MATCAP2) || !defined(OPTIMIZER_ENABLED)
				matcap2 = UNITY_SAMPLE_TEX2D_SAMPLER(_Matcap2, _MainTex, TRANSFORM_TEX(matcapUV, _Matcap2)) * float4(poiThemeColor(poiMods, _Matcap2Color.rgb, _Matcap2ColorThemeIndex), _Matcap2Color.a);
				#else
				matcap2 = float4(poiThemeColor(poiMods, _Matcap2Color.rgb, _Matcap2ColorThemeIndex), _Matcap2Color.a);
				#endif
				matcap2.rgb *= _Matcap2Intensity;
				#if defined(PROP_MATCAP2MASK) || !defined(OPTIMIZER_ENABLED)
				matcap2Mask = POI2D_SAMPLER_PAN(_Matcap2Mask, _MainTex, poiUV(poiMesh.uv[_Matcap2MaskUV], _Matcap2Mask_ST), _Matcap2MaskPan);
				#else
				matcap2Mask = 1;
				#endif
				if (_Matcap2MaskInvert)
				{
					matcap2Mask = 1 - matcap2Mask;
				}
				
				poiFragData.alpha *= lerp(1, matcap2.a, matcap2Mask * _Matcap2AlphaOverride);
				
				//UNITY_BRANCH
				if (_Matcap2HueShiftEnabled)
				{
					matcap2.rgb = hueShift(matcap2.rgb, _Matcap2HueShift + _Time.x * _Matcap2HueShiftSpeed);
				}
				
				blendMatcap(poiLight, poiFragData, _Matcap2Add, _Matcap2Multiply, _Matcap2Replace, matcap2, matcap2Mask, _Matcap2EmissionStrength, _Matcap2LightMask
				#ifdef POI_BLACKLIGHT
				, _BlackLightMaskMatcap2
				#endif
				);
				#endif
			}
			#endif
			
			#ifdef _CUBEMAP
			void applyCubemap(inout PoiFragData poiFragData, in PoiCam poiCam, in PoiMesh poiMesh, in PoiLight poiLight, in PoiMods poiMods)
			{
				float3 CubeMapUV = 0;
				
				switch(_CubeMapUVMode)
				{
					// Skybox
					case 0:
					{
						CubeMapUV = -poiCam.viewDir;
						break;
					}
					// Reflection
					case 1:
					{
						CubeMapUV = poiCam.reflectionDir;
						break;
					}
				}
				
				#if defined(PROP_CUBEMAP) || !defined(OPTIMIZER_ENABLED)
				float4 cubeMap = texCUBE(_CubeMap, CubeMapUV);
				cubeMap.rgb *= poiThemeColor(poiMods, _CubeMapColor, _CubeMapColorThemeIndex);
				#else
				float4 cubeMap = float4(poiThemeColor(poiMods, _CubeMapColor, _CubeMapColorThemeIndex), 1);
				#endif
				
				cubeMap.rgb *= _CubeMapIntensity;
				#if defined(PROP_CUBEMAPMASK) || !defined(OPTIMIZER_ENABLED)
				float CubeMapMask = POI2D_SAMPLER_PAN(_CubeMapMask, _MainTex, poiUV(poiMesh.uv[_CubeMapMaskUV], _CubeMapMask_ST), _CubeMapMaskPan);
				#else
				float CubeMapMask = 1;
				#endif
				
				if (_CubeMapMaskInvert)
				{
					CubeMapMask = 1 - CubeMapMask;
				}
				
				//UNITY_BRANCH
				if (_CubeMapHueShiftEnabled)
				{
					cubeMap.rgb = hueShift(cubeMap.rgb, _CubeMapHueShift + _Time.x * _CubeMapHueShiftSpeed);
				}
				
				poiFragData.baseColor.rgb = lerp(poiFragData.baseColor.rgb, cubeMap.rgb, _CubeMapReplace * CubeMapMask * cubeMap.a);
				poiFragData.baseColor.rgb *= lerp(1, cubeMap.rgb, _CubeMapMultiply * CubeMapMask * cubeMap.a);
				poiFragData.baseColor.rgb += cubeMap.rgb * _CubeMapAdd * CubeMapMask * cubeMap.a;
				poiFragData.emission += cubeMap.rgb * _CubeMapEmissionStrength * CubeMapMask * cubeMap.a;
			}
			#endif
			
			/*
			Liltoon made most of this and it looked really good so I modified it to be a little more poi
			
			MIT License
			
			Copyright (c) 2020-2021 lilxyzw
			
			Permission is hereby granted, free of charge, to any person obtaining a copy
			of this software and associated documentation files (the "Software"), to deal
			in the Software without restriction, including without limitation the rights
			to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
			copies of the Software, and to permit persons to whom the Software is
			furnished to do so, subject to the following conditions:
			
			The above copyright notice and this permission notice shall be included in all
			copies or substantial portions of the Software.
			
			THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
			IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
			FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
			AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
			LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
			OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
			SOFTWARE.
			*/
			
			#ifdef COLOR_GRADING_LOG_VIEW
			#ifdef POI_AL_DECAL
			void ApplyAudioLinkDecal(in PoiMesh poiMesh, inout PoiFragData poiFragData, in PoiMods poiMods)
			{
				float2 uv = poiMesh.uv[_ALDecalUV];
				float2 decalCenter = _ALUVPosition;
				float theta = radians(_ALUVRotation + _Time.z * _ALUVRotationSpeed);
				float cs = cos(theta);
				float sn = sin(theta);
				uv = float2((uv.x - decalCenter.x) * cs - (uv.y - decalCenter.y) * sn + decalCenter.x, (uv.x - decalCenter.x) * sn + (uv.y - decalCenter.y) * cs + decalCenter.y);
				uv = remap(uv, float2(0, 0) - _ALUVScale.xz / 2 + _ALUVPosition, _ALUVScale.yw / 2 + _ALUVPosition, float2(0, 0), float2(1, 1));
				
				// Mask
				float4 audioLinkMask = 1.0;
				
				// UV
				float2 aluv = uv;
				if (_ALDecalUVMode == 1)
				{
					float2 uvdir = uv * 2 - 1;
					aluv.x = frac(atan2(uvdir.y, uvdir.x) * UNITY_INV_TWO_PI);
					aluv.y = length(uvdir);
				}
				
				// Scale / Offset / Step
				float maskY = aluv.y;
				if (_ALDecalUVMode == 1)
				{
					maskY = remap(maskY, _ALDecaldCircleDimensions.x, _ALDecaldCircleDimensions.y, 0, 1);
				}
				float maskX = aluv.x;
				if (_ALDecalUVMode == 1)
				{
					maskX = remap(maskX, _ALDecaldCircleDimensions.z, _ALDecaldCircleDimensions.w, 0, 1);
				}
				
				float maskVolume = _ALDecalVolumeStep != 0.0 ? floor(maskY * _ALDecalVolumeStep) / _ALDecalVolumeStep : maskY;
				float maskBand = _ALDecalBandStep != 0.0 ? floor(maskX * _ALDecalBandStep) / _ALDecalBandStep : maskX;
				
				// Copy
				audioLinkMask.r = maskVolume;
				audioLinkMask.g = maskBand;
				
				// Clip
				audioLinkMask.b = maskVolume < _ALDecalVolumeClipMin || maskVolume > _ALDecalVolumeClipMax ? 0.0 : audioLinkMask.b;
				audioLinkMask.b = maskBand < _ALDecalBandClipMin || maskBand > _ALDecalBandClipMax ? 0.0 : audioLinkMask.b;
				
				// Shape Clip
				if (_ALDecalShapeClip)
				{
					float volumeth = _ALDecalShapeClipVolumeWidth;
					if (_ALDecalVolumeStep != 0.0) audioLinkMask.b = frac(maskY * _ALDecalVolumeStep) > volumeth ? 0.0 : audioLinkMask.b;
					
					float bandwidth = _ALDecalUVMode == 1 ? _ALDecalShapeClipBandWidth / aluv.y : _ALDecalShapeClipBandWidth;
					float bandth = 1.0 - bandwidth;
					if (_ALDecalBandStep != 0.0) audioLinkMask.b = frac(maskX * _ALDecalBandStep + bandth * 0.5) < bandth ? 0.0 : audioLinkMask.b;
				}
				
				// AudioLink
				float2 audioLinkUV = float2(frac(audioLinkMask.g * 2.0), 4.5 / 4.0 + floor(audioLinkMask.g * 2.0) / 4.0);
				audioLinkUV.y *= 0.0625;
				float4 audioTexture = _AudioTexture.Sample(sampler_linear_clamp, audioLinkUV);
				float audioVal = audioTexture.b * _ALDecalVolume * lerp(_ALDecalBaseBoost, _ALDecalTrebleBoost, audioLinkMask.g);
				float audioLinkValue = _ALDecalLineWidth < 1.0 ? abs(audioVal - audioLinkMask.r) < _ALDecalLineWidth : audioVal > audioLinkMask.r * 2.0;
				audioLinkValue = saturate(audioLinkValue) * audioLinkMask.b;
				//clip(audioLinkValue - .5);
				
				if (!poiMods.audioLinkAvailable)
				{
					audioLinkValue = 0;
				}
				
				float3 alColorChord = _AudioTexture.Sample(sampler_linear_clamp, float2(maskX, 24.5 / 64.0)).rgb;
				float volumeColorSrc = audioLinkMask.g;
				if (_ALDecalVolumeColorSource == 1) volumeColorSrc = audioLinkMask.r;
				if (_ALDecalVolumeColorSource == 2) volumeColorSrc = audioVal;
				
				float3 volumeColor = lerp(_ALDecalVolumeColorLow.rgb, _ALDecalVolumeColorMid.rgb, saturate(volumeColorSrc * 2));
				volumeColor = lerp(volumeColor, _ALDecalVolumeColorHigh.rgb, saturate(volumeColorSrc * 2 - 1));
				
				float3 emissionColor = lerp(_ALDecalVolumeColorLow.rgb * _ALDecalLowEmission, _ALDecalVolumeColorMid.rgb * _ALDecalMidEmission, saturate(volumeColorSrc * 2));
				emissionColor = lerp(emissionColor, _ALDecalVolumeColorHigh.rgb * _ALDecalHighEmission, saturate(volumeColorSrc * 2 - 1));
				
				//poiFragData.baseColor = lerp(poiFragData.baseColor, volumeColor, audioLinkValue);
				#if defined(POI_PASS_BASE) || defined(POI_PASS_ADD)
				poiFragData.emission += emissionColor * audioLinkValue;
				poiFragData.baseColor.rgb = lerp(poiFragData.baseColor, customBlend(poiFragData.baseColor, volumeColor, _ALDecalBlendType), saturate(_ALDecalBlendAlpha * audioLinkValue));
				#endif
				poiFragData.alpha = lerp(poiFragData.alpha, poiFragData.alpha * audioLinkValue, _ALDecalControlsAlpha);
			}
			#endif
			#endif
			
			#ifdef _SUNDISK_HIGH_QUALITY
			
			void applyFlipbook(inout PoiFragData poiFragData, in PoiMesh poiMesh, in PoiMods poiMods)
			{
				float4 flipBookPixel = float4(0, 0, 0, 0);
				#if defined(PROP_FLIPBOOKMASK) || !defined(OPTIMIZER_ENABLED)
				float flipBookMask = POI2D_SAMPLER_PAN(_FlipbookMask, _MainTex, poiMesh.uv[_FlipbookMaskUV], _FlipbookMaskPan).r;
				#else
				float flipBookMask = 1;
				#endif
				float4 flipbookScaleOffset = _FlipbookScaleOffset;
				
				#ifdef COLOR_GRADING_LOG_VIEW
				//flipbookScaleOffset.xy += lerp(_AudioLinkFlipbookScale.xy, _AudioLinkFlipbookScale.zw, poiMods.audioLink[_AudioLinkFlipbookScaleBand]);
				#endif
				
				flipbookScaleOffset.xy = 1 - flipbookScaleOffset.xy;
				float2 uv = frac(poiMesh.uv[_FlipbookTexArrayUV]);
				float theta = radians(_FlipbookRotation + _Time.z * _FlipbookRotationSpeed);
				float cs = cos(theta);
				float sn = sin(theta);
				float2 spriteCenter = flipbookScaleOffset.zw + .5;
				// 2d rotation
				uv = float2((uv.x - spriteCenter.x) * cs - (uv.y - spriteCenter.y) * sn + spriteCenter.x, (uv.x - spriteCenter.x) * sn + (uv.y - spriteCenter.y) * cs + spriteCenter.y);
				float4 sideOffset = float4(-_FlipbookSideOffset.x, _FlipbookSideOffset.y, -_FlipbookSideOffset.z, _FlipbookSideOffset.w);
				float2 newUV = remap(uv, float2(0, 0) + flipbookScaleOffset.xy / 2 + flipbookScaleOffset.zw + sideOffset.xz, float2(1, 1) - flipbookScaleOffset.xy / 2 + flipbookScaleOffset.zw + sideOffset.yw, float2(0, 0), float2(1, 1));
				
				UNITY_BRANCH
				if (_FlipbookTiled == 0)
				{
					if (max(newUV.x, newUV.y) > 1 || min(newUV.x, newUV.y) < 0)
					{
						return;
					}
				}
				#if defined(PROP_FLIPBOOKTEXARRAY) || !defined(OPTIMIZER_ENABLED)
				float currentFrame = fmod(_FlipbookCurrentFrame, _FlipbookTotalFrames);
				if (_FlipbookCurrentFrame < 0)
				{
					currentFrame = (_Time.y / (1 / _FlipbookFPS)) % _FlipbookTotalFrames;
				}
				#ifdef COLOR_GRADING_LOG_VIEW
				if (_FlipbookChronotensityEnabled)
				{
					currentFrame = (AudioLinkDecodeDataAsUInt(ALPASS_CHRONOTENSITY + uint2(0, _FlipbookChronotensityBand)) % (_FlipbookChronotensitySpeed * 1000000)) / (_FlipbookChronotensitySpeed * 1000000.0) * _FlipbookTotalFrames;
					
				}
				//currentFrame += lerp(_AudioLinkFlipbookFrame.x, _AudioLinkFlipbookFrame.y, poiMods.audioLink[_AudioLinkFlipbookFrameBand]);
				#endif
				flipBookPixel = UNITY_SAMPLE_TEX2DARRAY(_FlipbookTexArray, float3(TRANSFORM_TEX(newUV, _FlipbookTexArray) + _Time.x * _FlipbookTexArrayPan, floor(currentFrame)));
				UNITY_BRANCH
				if (_FlipbookCrossfadeEnabled)
				{
					float4 flipbookNextPixel = UNITY_SAMPLE_TEX2DARRAY(_FlipbookTexArray, float3(TRANSFORM_TEX(newUV, _FlipbookTexArray) + _Time.x * _FlipbookTexArrayPan, floor((currentFrame + 1) % _FlipbookTotalFrames)));
					flipBookPixel = lerp(flipBookPixel, flipbookNextPixel, smoothstep(_FlipbookCrossfadeRange.x, _FlipbookCrossfadeRange.y, frac(currentFrame)));
				}
				#else
				flipBookPixel = 1;
				#endif
				
				UNITY_BRANCH
				if (_FlipbookIntensityControlsAlpha)
				{
					flipBookPixel.a = poiMax(flipBookPixel.rgb);
				}
				UNITY_BRANCH
				if (_FlipbookColorReplaces)
				{
					flipBookPixel.rgb = poiThemeColor(poiMods, _FlipbookColor.rgb, _FlipbookColorThemeIndex);
				}
				else
				{
					flipBookPixel.rgb *= poiThemeColor(poiMods, _FlipbookColor.rgb, _FlipbookColorThemeIndex);
				}
				
				#ifdef POI_BLACKLIGHT
				UNITY_BRANCH
				if (_BlackLightMaskFlipbook != 4)
				{
					flipBookMask *= blackLightMask[_BlackLightMaskFlipbook];
				}
				#endif
				
				UNITY_BRANCH
				if (_FlipbookHueShiftEnabled)
				{
					flipBookPixel.rgb = hueShift(flipBookPixel.rgb, _FlipbookHueShift + _Time.x * _FlipbookHueShiftSpeed);
				}
				half flipbookAlpha = 1;
				#ifdef COLOR_GRADING_LOG_VIEW
				//flipbookAlpha = saturate(lerp(_AudioLinkFlipbookAlpha.x, _AudioLinkFlipbookAlpha.y, poiMods.audioLink[_AudioLinkFlipbookAlphaBand]));
				#endif
				
				#if !defined(POI_PASS_OUTLINE) && !defined(UNITY_PASS_SHADOWCASTER)
				
				poiFragData.baseColor = lerp(poiFragData.baseColor, flipBookPixel.rgb, flipBookPixel.a * _FlipbookColor.a * _FlipbookReplace * flipBookMask * flipbookAlpha);
				poiFragData.baseColor = poiFragData.baseColor + flipBookPixel.rgb * _FlipbookAdd * flipBookMask * flipbookAlpha;
				poiFragData.baseColor = poiFragData.baseColor * lerp(1, flipBookPixel.rgb, flipBookPixel.a * _FlipbookColor.a * flipBookMask * _FlipbookMultiply * flipbookAlpha);
				
				float flipbookEmissionStrength = _FlipbookEmissionStrength;
				#ifdef COLOR_GRADING_LOG_VIEW
				//flipbookEmissionStrength += max(lerp(_AudioLinkFlipbookEmission.x, _AudioLinkFlipbookEmission.y, poiMods.audioLink[_AudioLinkFlipbookEmissionBand]), 0);
				#endif
				
				poiFragData.emission += lerp(0, flipBookPixel.rgb * flipbookEmissionStrength, flipBookPixel.a * _FlipbookColor.a * flipBookMask * flipbookAlpha);
				
				#endif
				
				UNITY_BRANCH
				if (_FlipbookAlphaControlsFinalAlpha)
				{
					poiFragData.alpha = lerp(poiFragData.alpha, flipBookPixel.a * _FlipbookColor.a, flipBookMask);
				}
			}
			
			#endif
			
			float calculateGlowInTheDark(in float minLight, in float maxLight, in float minEmissionMultiplier, in float maxEmissionMultiplier, in float enabled, in float worldOrMesh, in PoiLight poiLight)
			{
				float glowInTheDarkMultiplier = 1;
				//UNITY_BRANCH
				if (enabled)
				{
					#ifdef POI_LIGHTING
					float3 lightValue = worldOrMesh ? calculateluminance(poiLight.finalLighting.rgb) : calculateluminance(poiLight.directLighting.rgb);
					float gitdeAlpha = saturate(inverseLerp(minLight, maxLight, lightValue));
					glowInTheDarkMultiplier = lerp(minEmissionMultiplier, maxEmissionMultiplier, gitdeAlpha);
					#endif
				}
				return glowInTheDarkMultiplier;
			}
			
			float calculateScrollingEmission(in float3 direction, in float velocity, in float interval, in float scrollWidth, float offset, float3 position)
			{
				float phase = 0;
				phase = dot(position, direction);
				phase -= (_Time.y + offset) * velocity;
				phase /= interval;
				phase -= floor(phase);
				phase = saturate(phase);
				return(pow(phase, scrollWidth) + pow(1 - phase, scrollWidth * 4)) * 0.5;
			}
			
			float calculateBlinkingEmission(in float blinkMin, in float blinkMax, in float blinkVelocity, float offset)
			{
				float amplitude = (blinkMax - blinkMin) * 0.5f;
				float base = blinkMin + amplitude;
				return sin((_Time.y + offset) * blinkVelocity) * amplitude + base;
			}
			
			void applyALEmmissionStrength(in PoiMods poiMods, inout float emissionStrength, in float2 emissionStrengthMod, in float emissionStrengthBand, in float enabled)
			{
				#ifdef COLOR_GRADING_LOG_VIEW
				if (poiMods.audioLinkAvailable && enabled)
				{
					emissionStrength += lerp(emissionStrengthMod.x, emissionStrengthMod.y, poiMods.audioLink[emissionStrengthBand]);
				}
				#endif
			}
			
			void applyALCenterOutEmission(in PoiMods poiMods, in float nDotV, inout float emissionStrength, in float width, in float size, in float band, in float2 emissionToAdd, in float enabled)
			{
				#ifdef COLOR_GRADING_LOG_VIEW
				if (poiMods.audioLinkAvailable && enabled)
				{
					emissionStrength += lerp(emissionToAdd.x, emissionToAdd.y, getBandAtTime(band, saturate(1 - nDotV), width, size));
				}
				#endif
			}
			
			#ifdef _EMISSION
			float3 applyEmission(inout PoiFragData poiFragData, in PoiMesh poiMesh, in PoiLight poiLight, in PoiCam poiCam, in PoiMods poiMods)
			{
				
				// First Emission
				float3 emission0 = 0;
				float emissionStrength0 = _EmissionStrength;
				float3 emissionColor0 = 0;
				
				float glowInTheDarkMultiplier0 = calculateGlowInTheDark(_GITDEMinLight, _GITDEMaxLight, _GITDEMinEmissionMultiplier, _GITDEMaxEmissionMultiplier, _EnableGITDEmission, _GITDEWorldOrMesh, poiLight);
				
				#if defined(PROP_EMISSIONMAP) || !defined(OPTIMIZER_ENABLED)
				//UNITY_BRANCH
				if (!_EmissionCenterOutEnabled)
				{
					emissionColor0 = POI2D_SAMPLER_PAN(_EmissionMap, _MainTex, poiUV(poiMesh.uv[_EmissionMapUV], _EmissionMap_ST), _EmissionMapPan).rgb * lerp(1, poiFragData.baseColor, _EmissionBaseColorAsMap).rgb * poiThemeColor(poiMods, _EmissionColor.rgb, _EmissionColorThemeIndex);
				}
				else
				{
					emissionColor0 = UNITY_SAMPLE_TEX2D_SAMPLER(_EmissionMap, _MainTex, ((.5 + poiLight.nDotV * .5) * _EmissionMap_ST.xy) + _Time.x * _EmissionCenterOutSpeed).rgb * lerp(1, poiFragData.baseColor, _EmissionBaseColorAsMap).rgb * poiThemeColor(poiMods, _EmissionColor.rgb, _EmissionColorThemeIndex);
				}
				#else
				emissionColor0 = lerp(1, poiFragData.baseColor, _EmissionBaseColorAsMap).rgb * poiThemeColor(poiMods, _EmissionColor.rgb, _EmissionColorThemeIndex);
				#endif
				
				//UNITY_BRANCH
				if (_ScrollingEmission)
				{
					float3 pos = poiMesh.localPos;
					//UNITY_BRANCH
					if (_EmissionScrollingVertexColor)
					{
						pos = poiMesh.vertexColor.rgb;
					}
					
					//UNITY_BRANCH
					if (_EmissionScrollingUseCurve)
					{
						#if defined(PROP_EMISSIONSCROLLINGCURVE) || !defined(OPTIMIZER_ENABLED)
						emissionStrength0 *= UNITY_SAMPLE_TEX2D_SAMPLER(_EmissionScrollingCurve, _MainTex, poiUV(poiMesh.uv[_EmissionMapUV], _EmissionScrollingCurve_ST) + (dot(pos, _EmissiveScroll_Direction.xyz) * _EmissiveScroll_Interval) + _Time.x * _EmissiveScroll_Velocity).r;
						#endif
					}
					else
					{
						emissionStrength0 *= calculateScrollingEmission(_EmissiveScroll_Direction.xyz, _EmissiveScroll_Velocity, _EmissiveScroll_Interval, _EmissiveScroll_Width, _EmissionScrollingOffset, pos);
					}
				}
				
				//UNITY_BRANCH
				if (_EmissionBlinkingEnabled)
				{
					emissionStrength0 *= calculateBlinkingEmission(_EmissiveBlink_Min, _EmissiveBlink_Max, _EmissiveBlink_Velocity, _EmissionBlinkingOffset);
				}
				
				emissionColor0 = hueShift(emissionColor0, frac(_EmissionHueShift + _EmissionHueShiftSpeed * _Time.x) * _EmissionHueShiftEnabled);
				
				#if defined(PROP_EMISSIONMASK) || !defined(OPTIMIZER_ENABLED)
				float emissionMask0 = UNITY_SAMPLE_TEX2D_SAMPLER(_EmissionMask, _MainTex, poiUV(poiMesh.uv[_EmissionMaskUV], _EmissionMask_ST) + _Time.x * _EmissionMaskPan).r;
				#else
				float emissionMask0 = 1;
				#endif
				
				#ifdef POI_BLACKLIGHT
				if (_BlackLightMaskEmission != 4)
				{
					emissionMask0 *= blackLightMask[_BlackLightMaskEmission];
				}
				#endif
				
				applyALEmmissionStrength(poiMods, emissionStrength0, _EmissionAL0StrengthMod, _EmissionAL0StrengthBand, _EmissionAL0Enabled);
				applyALCenterOutEmission(poiMods, poiLight.nDotV, emissionStrength0, _AudioLinkEmission0CenterOutwidth, _AudioLinkEmission0CenterOutSize, _AudioLinkEmission0CenterOutBand, _AudioLinkEmission0CenterOut, _EmissionAL0Enabled);
				
				emissionStrength0 *= glowInTheDarkMultiplier0 * emissionMask0;
				emission0 = max(emissionStrength0 * emissionColor0, 0);
				
				#ifdef POI_DISSOLVE
				//UNITY_BRANCH
				if (_DissolveEmissionSide != 2)
				{
					emission0 *= lerp(1 - dissolveAlpha, dissolveAlpha, _DissolveEmissionSide);
				}
				#endif
				
				// poiFragData.finalColor.rgb = lerp(poiFragData.finalColor.rgb, saturate(emission0 + emission1), _EmissionReplace * poiMax(emission0 + emission1));
				
				poiFragData.emission += emission0;
				return emission0 * _EmissionReplace0;
			}
			#endif
			
			#ifdef POI_EMISSION_1
			float3 applyEmission1(inout PoiFragData poiFragData, in PoiMesh poiMesh, in PoiLight poiLight, in PoiCam poiCam, in PoiMods poiMods)
			{
				
				// Second Emission
				float3 emission1 = 0;
				float emissionStrength1 = 0;
				float3 emissionColor1 = 0;
				
				emissionStrength1 = _EmissionStrength1;
				
				float glowInTheDarkMultiplier1 = calculateGlowInTheDark(_GITDEMinLight1, _GITDEMaxLight1, _GITDEMinEmissionMultiplier1, _GITDEMaxEmissionMultiplier1, _EnableGITDEmission1, _GITDEWorldOrMesh1, poiLight);
				#if defined(PROP_EMISSIONMAP1) || !defined(OPTIMIZER_ENABLED)
				
				//UNITY_BRANCH
				if (!_EmissionCenterOutEnabled1)
				{
					emissionColor1 = POI2D_SAMPLER_PAN(_EmissionMap1, _MainTex, poiUV(poiMesh.uv[_EmissionMap1UV], _EmissionMap1_ST), _EmissionMap1Pan) * lerp(1, poiFragData.baseColor, _EmissionBaseColorAsMap1).rgb * poiThemeColor(poiMods, _EmissionColor1.rgb, _EmissionColor1ThemeIndex);
				}
				else
				{
					emissionColor1 = UNITY_SAMPLE_TEX2D_SAMPLER(_EmissionMap1, _MainTex, ((.5 + poiLight.nDotV * .5) * _EmissionMap1_ST.xy) + _Time.x * _EmissionCenterOutSpeed1).rgb * lerp(1, poiFragData.baseColor, _EmissionBaseColorAsMap1).rgb * poiThemeColor(poiMods, _EmissionColor1.rgb, _EmissionColor1ThemeIndex);
				}
				#else
				emissionColor1 = lerp(1, poiFragData.baseColor, _EmissionBaseColorAsMap1).rgb * poiThemeColor(poiMods, _EmissionColor1.rgb, _EmissionColor1ThemeIndex);
				#endif
				//UNITY_BRANCH
				if (_ScrollingEmission1)
				{
					float3 pos1 = poiMesh.localPos;
					//UNITY_BRANCH
					if (_EmissionScrollingVertexColor1)
					{
						pos1 = poiMesh.vertexColor.rgb;
					}
					
					//UNITY_BRANCH
					if (_EmissionScrollingUseCurve1)
					{
						#if defined(PROP_EMISSIONSCROLLINGCURVE1) || !defined(OPTIMIZER_ENABLED)
						emissionStrength1 *= UNITY_SAMPLE_TEX2D_SAMPLER(_EmissionScrollingCurve1, _MainTex, poiUV(poiMesh.uv[_EmissionMap1UV], _EmissionScrollingCurve1_ST) + (dot(pos1, _EmissiveScroll_Direction1) * _EmissiveScroll_Interval1) + _Time.x * _EmissiveScroll_Velocity1);
						#endif
					}
					else
					{
						emissionStrength1 *= calculateScrollingEmission(_EmissiveScroll_Direction1, _EmissiveScroll_Velocity1, _EmissiveScroll_Interval1, _EmissiveScroll_Width1, _EmissionScrollingOffset1, pos1);
					}
				}
				//UNITY_BRANCH
				if (_EmissionBlinkingEnabled1)
				{
					emissionStrength1 *= calculateBlinkingEmission(_EmissiveBlink_Min1, _EmissiveBlink_Max1, _EmissiveBlink_Velocity1, _EmissionBlinkingOffset1);
				}
				
				emissionColor1 = hueShift(emissionColor1, frac(_EmissionHueShift1 + _EmissionHueShiftSpeed1 * _Time.x) * _EmissionHueShiftEnabled1);
				#if defined(PROP_EMISSIONMASK1) || !defined(OPTIMIZER_ENABLED)
				float emissionMask1 = UNITY_SAMPLE_TEX2D_SAMPLER(_EmissionMask1, _MainTex, poiUV(poiMesh.uv[_EmissionMask1UV], _EmissionMask1_ST) + _Time.x * _EmissionMask1Pan);
				#else
				float emissionMask1 = 1;
				#endif
				
				#ifdef POI_BLACKLIGHT
				if (_BlackLightMaskEmission2 != 4)
				{
					emissionMask1 *= blackLightMask[_BlackLightMaskEmission2];
				}
				#endif
				applyALEmmissionStrength(poiMods, emissionStrength1, _EmissionAL1StrengthMod, _EmissionAL1StrengthBand, _EmissionAL1Enabled);
				applyALCenterOutEmission(poiMods, poiLight.nDotV, emissionStrength1, _AudioLinkEmission1CenterOutwidth, _AudioLinkEmission1CenterOutSize, _AudioLinkEmission1CenterOutBand, _AudioLinkEmission1CenterOut, _EmissionAL1Enabled);
				
				emissionStrength1 *= glowInTheDarkMultiplier1 * emissionMask1;
				emission1 = max(emissionStrength1 * emissionColor1, 0);
				
				poiFragData.emission += emission1;
				return emission1 * _EmissionReplace1;
			}
			#endif
			
			#ifdef POI_EMISSION_2
			float3 applyEmission2(inout PoiFragData poiFragData, in PoiMesh poiMesh, in PoiLight poiLight, in PoiCam poiCam, in PoiMods poiMods)
			{
				
				// Second Emission
				float3 emission2 = 0;
				float emissionStrength2 = 0;
				float3 emissionColor2 = 0;
				
				emissionStrength2 = _EmissionStrength2;
				
				float glowInTheDarkMultiplier2 = calculateGlowInTheDark(_GITDEMinLight2, _GITDEMaxLight2, _GITDEMinEmissionMultiplier2, _GITDEMaxEmissionMultiplier2, _EnableGITDEmission2, _GITDEWorldOrMesh2, poiLight);
				#if defined(PROP_EMISSIONMAP2) || !defined(OPTIMIZER_ENABLED)
				
				//UNITY_BRANCH
				if (!_EmissionCenterOutEnabled2)
				{
					emissionColor2 = POI2D_SAMPLER_PAN(_EmissionMap2, _MainTex, poiUV(poiMesh.uv[_EmissionMap2UV], _EmissionMap2_ST), _EmissionMap2Pan) * lerp(1, poiFragData.baseColor, _EmissionBaseColorAsMap2).rgb * poiThemeColor(poiMods, _EmissionColor2.rgb, _EmissionColor2ThemeIndex);
				}
				else
				{
					emissionColor2 = UNITY_SAMPLE_TEX2D_SAMPLER(_EmissionMap2, _MainTex, ((.5 + poiLight.nDotV * .5) * _EmissionMap2_ST.xy) + _Time.x * _EmissionCenterOutSpeed2).rgb * lerp(1, poiFragData.baseColor, _EmissionBaseColorAsMap2).rgb * poiThemeColor(poiMods, _EmissionColor2.rgb, _EmissionColor2ThemeIndex);
				}
				#else
				emissionColor2 = lerp(1, poiFragData.baseColor, _EmissionBaseColorAsMap2).rgb * poiThemeColor(poiMods, _EmissionColor2.rgb, _EmissionColor2ThemeIndex);
				#endif
				//UNITY_BRANCH
				if (_ScrollingEmission2)
				{
					float3 pos2 = poiMesh.localPos;
					//UNITY_BRANCH
					if (_EmissionScrollingVertexColor2)
					{
						pos2 = poiMesh.vertexColor.rgb;
					}
					
					//UNITY_BRANCH
					if (_EmissionScrollingUseCurve2)
					{
						#if defined(PROP_EMISSIONSCROLLINGCURVE2) || !defined(OPTIMIZER_ENABLED)
						emissionStrength2 *= UNITY_SAMPLE_TEX2D_SAMPLER(_EmissionScrollingCurve2, _MainTex, poiUV(poiMesh.uv[_EmissionMap2UV], _EmissionScrollingCurve2_ST) + (dot(pos2, _EmissiveScroll_Direction2) * _EmissiveScroll_Interval2) + _Time.x * _EmissiveScroll_Velocity2);
						#endif
					}
					else
					{
						emissionStrength2 *= calculateScrollingEmission(_EmissiveScroll_Direction2, _EmissiveScroll_Velocity2, _EmissiveScroll_Interval2, _EmissiveScroll_Width2, _EmissionScrollingOffset2, pos2);
					}
				}
				//UNITY_BRANCH
				if (_EmissionBlinkingEnabled2)
				{
					emissionStrength2 *= calculateBlinkingEmission(_EmissiveBlink_Min2, _EmissiveBlink_Max2, _EmissiveBlink_Velocity2, _EmissionBlinkingOffset2);
				}
				
				emissionColor2 = hueShift(emissionColor2, frac(_EmissionHueShift2 + _EmissionHueShiftSpeed2 * _Time.x) * _EmissionHueShiftEnabled2);
				#if defined(PROP_EMISSIONMASK2) || !defined(OPTIMIZER_ENABLED)
				float emissionMask2 = UNITY_SAMPLE_TEX2D_SAMPLER(_EmissionMask2, _MainTex, poiUV(poiMesh.uv[_EmissionMask2UV], _EmissionMask2_ST) + _Time.x * _EmissionMask2Pan);
				#else
				float emissionMask2 = 1;
				#endif
				
				// #ifdef POI_BLACKLIGHT
				// 	if (_BlackLightMaskEmission3 != 4)
				// 	{
				// 		emissionMask2 *= blackLightMask[_BlackLightMaskEmission2];
				// 	}
				// #endif
				applyALEmmissionStrength(poiMods, emissionStrength2, _EmissionAL2StrengthMod, _EmissionAL2StrengthBand, _EmissionAL2Enabled);
				applyALCenterOutEmission(poiMods, poiLight.nDotV, emissionStrength2, _AudioLinkEmission2CenterOutwidth, _AudioLinkEmission2CenterOutSize, _AudioLinkEmission2CenterOutBand, _AudioLinkEmission2CenterOut, _EmissionAL2Enabled);
				emissionStrength2 *= glowInTheDarkMultiplier2 * emissionMask2;
				emission2 = max(emissionStrength2 * emissionColor2, 0);
				
				poiFragData.emission += emission2;
				return emission2 * _EmissionReplace2;
			}
			#endif
			
			#ifdef POI_EMISSION_3
			float3 applyEmission3(inout PoiFragData poiFragData, in PoiMesh poiMesh, in PoiLight poiLight, in PoiCam poiCam, in PoiMods poiMods)
			{
				
				// Second Emission
				float3 emission3 = 0;
				float emissionStrength3 = 0;
				float3 emissionColor3 = 0;
				
				emissionStrength3 = _EmissionStrength3;
				
				float glowInTheDarkMultiplier3 = calculateGlowInTheDark(_GITDEMinLight3, _GITDEMaxLight3, _GITDEMinEmissionMultiplier3, _GITDEMaxEmissionMultiplier3, _EnableGITDEmission3, _GITDEWorldOrMesh3, poiLight);
				#if defined(PROP_EMISSIONMAP3) || !defined(OPTIMIZER_ENABLED)
				
				//UNITY_BRANCH
				if (!_EmissionCenterOutEnabled3)
				{
					emissionColor3 = POI2D_SAMPLER_PAN(_EmissionMap3, _MainTex, poiUV(poiMesh.uv[_EmissionMap3UV], _EmissionMap3_ST), _EmissionMap3Pan) * lerp(1, poiFragData.baseColor, _EmissionBaseColorAsMap3).rgb * poiThemeColor(poiMods, _EmissionColor3.rgb, _EmissionColor3ThemeIndex);
				}
				else
				{
					emissionColor3 = UNITY_SAMPLE_TEX2D_SAMPLER(_EmissionMap3, _MainTex, ((.5 + poiLight.nDotV * .5) * _EmissionMap3_ST.xy) + _Time.x * _EmissionCenterOutSpeed3).rgb * lerp(1, poiFragData.baseColor, _EmissionBaseColorAsMap3).rgb * poiThemeColor(poiMods, _EmissionColor3.rgb, _EmissionColor3ThemeIndex);
				}
				#else
				emissionColor3 = lerp(1, poiFragData.baseColor, _EmissionBaseColorAsMap3).rgb * poiThemeColor(poiMods, _EmissionColor3.rgb, _EmissionColor3ThemeIndex);
				#endif
				//UNITY_BRANCH
				if (_ScrollingEmission3)
				{
					float3 pos3 = poiMesh.localPos;
					//UNITY_BRANCH
					if (_EmissionScrollingVertexColor3)
					{
						pos3 = poiMesh.vertexColor.rgb;
					}
					
					//UNITY_BRANCH
					if (_EmissionScrollingUseCurve3)
					{
						#if defined(PROP_EMISSIONSCROLLINGCURVE3) || !defined(OPTIMIZER_ENABLED)
						emissionStrength3 *= UNITY_SAMPLE_TEX2D_SAMPLER(_EmissionScrollingCurve3, _MainTex, poiUV(poiMesh.uv[_EmissionMap3UV], _EmissionScrollingCurve3_ST) + (dot(pos3, _EmissiveScroll_Direction3) * _EmissiveScroll_Interval3) + _Time.x * _EmissiveScroll_Velocity3);
						#endif
					}
					else
					{
						emissionStrength3 *= calculateScrollingEmission(_EmissiveScroll_Direction3, _EmissiveScroll_Velocity3, _EmissiveScroll_Interval3, _EmissiveScroll_Width3, _EmissionScrollingOffset3, pos3);
					}
				}
				//UNITY_BRANCH
				if (_EmissionBlinkingEnabled3)
				{
					emissionStrength3 *= calculateBlinkingEmission(_EmissiveBlink_Min3, _EmissiveBlink_Max3, _EmissiveBlink_Velocity3, _EmissionBlinkingOffset3);
				}
				
				emissionColor3 = hueShift(emissionColor3, frac(_EmissionHueShift3 + _EmissionHueShiftSpeed3 * _Time.x) * _EmissionHueShiftEnabled3);
				#if defined(PROP_EMISSIONMASK3) || !defined(OPTIMIZER_ENABLED)
				float emissionMask3 = UNITY_SAMPLE_TEX2D_SAMPLER(_EmissionMask3, _MainTex, poiUV(poiMesh.uv[_EmissionMask3UV], _EmissionMask3_ST) + _Time.x * _EmissionMask3Pan);
				#else
				float emissionMask3 = 1;
				#endif
				
				// #ifdef POI_BLACKLIGHT
				// 	if (_BlackLightMaskEmission3 != 4)
				// 	{
				// 		emissionMask3 *= blackLightMask[_BlackLightMaskEmission3];
				// 	}
				// #endif
				applyALEmmissionStrength(poiMods, emissionStrength3, _EmissionAL3StrengthMod, _EmissionAL3StrengthBand, _EmissionAL3Enabled);
				applyALCenterOutEmission(poiMods, poiLight.nDotV, emissionStrength3, _AudioLinkEmission3CenterOutwidth, _AudioLinkEmission3CenterOutSize, _AudioLinkEmission3CenterOutBand, _AudioLinkEmission3CenterOut, _EmissionAL3Enabled);
				emissionStrength3 *= glowInTheDarkMultiplier3 * emissionMask3;
				emission3 = max(emissionStrength3 * emissionColor3, 0);
				
				poiFragData.emission += emission3;
				return emission3 * _EmissionReplace3;
			}
			#endif
			
			#ifdef _GLOSSYREFLECTIONS_OFF
			void ApplyRimLighting(inout PoiFragData poiFragData, in PoiMesh poiMesh, in PoiCam poiCam, in PoiLight poiLight, in PoiMods poiMods)
			{
				#if defined(PROP_RIMWIDTHNOISETEXTURE) || !defined(OPTIMIZER_ENABLED)
				float rimNoise = POI2D_SAMPLER_PAN(_RimWidthNoiseTexture, _MainTex, poiUV(poiMesh.uv[_RimWidthNoiseTextureUV], _RimWidthNoiseTexture_ST), _RimWidthNoiseTexturePan);
				#else
				float rimNoise = 0;
				#endif
				
				rimNoise = (rimNoise - .5) * _RimWidthNoiseStrength;
				
				float viewDotNormal = saturate(abs(dot(poiCam.viewDir, poiMesh.normals[_RimLightNormal])));
				
				UNITY_BRANCH
				if (_RimLightingInvert)
				{
					viewDotNormal = 1 - viewDotNormal;
				}
				float rimStrength = _RimStrength;
				float rimBrighten = _RimBrighten;
				
				float rimWidth = lerp( - .05, 1, _RimWidth);
				/*
				#ifdef COLOR_GRADING_LOG_VIEW
				UNITY_BRANCH
				if (poiMods.audioLinkAvailable)
				{
					rimWidth = clamp(rimWidth + lerp(_AudioLinkRimWidthAdd.x, _AudioLinkRimWidthAdd.y, poiMods.audioLink[_AudioLinkRimWidthBand]), - .05, 1);
					rimStrength += lerp(_AudioLinkRimEmissionAdd.x, _AudioLinkRimEmissionAdd.y, poiMods.audioLink[_AudioLinkRimEmissionBand]);
					rimBrighten += lerp(_AudioLinkRimBrightnessAdd.x, _AudioLinkRimBrightnessAdd.y, poiMods.audioLink[_AudioLinkRimBrightnessBand]);
				}
				#endif
				*/
				
				rimWidth -= rimNoise;
				#if defined(PROP_RIMMASK) || !defined(OPTIMIZER_ENABLED)
				float rimMask = POI2D_SAMPLER_PAN(_RimMask, _MainTex, poiUV(poiMesh.uv[_RimMaskUV], _RimMask_ST), _RimMaskPan);
				#else
				float rimMask = 1;
				#endif
				
				#if defined(PROP_RIMTEX) || !defined(OPTIMIZER_ENABLED)
				float4 rimColor = POI2D_SAMPLER_PAN(_RimTex, _MainTex, poiUV(poiMesh.uv[_RimTexUV], _RimTex_ST), _RimTexPan) * float4(poiThemeColor(poiMods, _RimLightColor.rgb, _RimLightColorThemeIndex), _RimLightColor.a);
				#else
				float4 rimColor = float4(poiThemeColor(poiMods, _RimLightColor.rgb, _RimLightColorThemeIndex), _RimLightColor.a);
				#endif
				
				UNITY_BRANCH
				if (_RimHueShiftEnabled)
				{
					rimColor.rgb = hueShift(rimColor.rgb, _RimHueShift + _Time.x * _RimHueShiftSpeed);
				}
				
				rimWidth = max(lerp(rimWidth, rimWidth * lerp(0, 1, poiLight.lightMap - _ShadowMixThreshold) * _ShadowMixWidthMod, _ShadowMix), 0);
				float rim = 1 - smoothstep(min(_RimSharpness, rimWidth), rimWidth, viewDotNormal);
				rim *= _RimLightColor.a * rimColor.a * rimMask;
				poiFragData.emission += rim * lerp(poiFragData.baseColor, rimColor, _RimLightColorBias) * rimStrength;
				poiFragData.baseColor = lerp(poiFragData.baseColor, lerp(poiFragData.baseColor, rimColor, _RimLightColorBias) + lerp(poiFragData.baseColor, rimColor, _RimLightColorBias) * rimBrighten, rim);
			}
			#endif
			
			#ifdef _SUNDISK_SIMPLE
			
			float3 RandomColorFromPoint(float2 rando)
			{
				fixed hue = random2(rando.x + rando.y).x;
				fixed saturation = lerp(_GlitterMinMaxSaturation.x, _GlitterMinMaxSaturation.y, rando.x);
				fixed value = lerp(_GlitterMinMaxBrightness.x, _GlitterMinMaxBrightness.y, rando.y);
				float3 hsv = float3(hue, saturation, value);
				return HSVtoRGB(hsv);
			}
			
			void applyGlitter(inout PoiFragData poiFragData, in PoiMesh poiMesh, in PoiCam poiCam, in PoiLight poiLight, in PoiMods poiMods)
			{
				// Scale
				float2 st = frac(poiMesh.uv[_GlitterUV] + _GlitterUVPanning.xy * _Time.x) * _GlitterFrequency;
				
				// Tile the space
				float2 i_st = floor(st);
				float2 f_st = frac(st);
				
				float m_dist = 10.;  // minimun distance
				float2 m_point = 0;        // minimum point
				float2 randoPoint = 0;
				float2 dank;
				for (int j = -1; j <= 1; j++)
				{
					for (int i = -1; i <= 1; i++)
					{
						float2 neighbor = float2(i, j);
						float2 pos = random2(i_st + neighbor);
						float2 rando = pos;
						pos = 0.5 + 0.5 * sin(_GlitterJitter * 6.2831 * pos);
						float2 diff = neighbor + pos - f_st;
						float dist = length(diff);
						
						if (dist < m_dist)
						{
							dank = diff;
							m_dist = dist;
							m_point = pos;
							randoPoint = rando;
						}
					}
				}
				
				float randomFromPoint = random(randoPoint);
				
				float size = _GlitterSize;
				UNITY_BRANCH
				if (_GlitterRandomSize)
				{
					size = remapClamped(0, 1, randomFromPoint, _GlitterMinMaxSize.x, _GlitterMinMaxSize.y);
				}
				
				// Assign a color using the closest point position
				//color += dot(m_point, float2(.3, .6));
				
				// Add distance field to closest point center
				// color.g = m_dist;
				
				// Show isolines
				//color -= abs(sin(40.0 * m_dist)) * 0.07;
				
				// Draw cell center
				half glitterAlpha = 1;
				switch(_GlitterShape)
				{
					case 0: //circle
					glitterAlpha = 1 - saturate((m_dist - size) / clamp(fwidth(m_dist), 0.0001, 1.0));
					break;
					case 1: //sqaure
					float jaggyFix = pow(poiCam.distanceToVert, 2) * _GlitterJaggyFix;
					
					UNITY_BRANCH
					if (_GlitterRandomRotation == 1 || _GlitterTextureRotation != 0)
					{
						float2 center = float2(0, 0);
						float randomBoy = 0;
						UNITY_BRANCH
						if (_GlitterRandomRotation)
						{
							randomBoy = random(randoPoint);
						}
						float theta = radians((randomBoy + _Time.x * _GlitterTextureRotation) * 360);
						float cs = cos(theta);
						float sn = sin(theta);
						dank = float2((dank.x - center.x) * cs - (dank.y - center.y) * sn + center.x, (dank.x - center.x) * sn + (dank.y - center.y) * cs + center.y);
						glitterAlpha = (1. - smoothstep(size - .1 * jaggyFix, size, abs(dank.x))) * (1. - smoothstep(size - .1 * jaggyFix, size, abs(dank.y)));
					}
					else
					{
						glitterAlpha = (1. - smoothstep(size - .1 * jaggyFix, size, abs(dank.x))) * (1. - smoothstep(size - .1 * jaggyFix, size, abs(dank.y)));
					}
					break;
				}
				
				float3 finalGlitter = 0;
				
				half3 glitterColor = poiThemeColor(poiMods, _GlitterColor, _GlitterColorThemeIndex);
				
				float3 norm = poiMesh.normals[1];
				float3 randomRotation = 0;
				switch(_GlitterMode)
				{
					case 0:
					UNITY_BRANCH
					if (_GlitterSpeed > 0)
					{
						randomRotation = randomFloat3WiggleRange(randoPoint, _GlitterAngleRange, _GlitterSpeed);
					}
					else
					{
						randomRotation = randomFloat3Range(randoPoint, _GlitterAngleRange);
					}
					
					float3 glitterReflectionDirection = normalize(mul(poiRotationMatrixFromAngles(randomRotation), norm));
					finalGlitter = lerp(0, _GlitterMinBrightness * glitterAlpha, glitterAlpha) + max(pow(saturate(dot(lerp(glitterReflectionDirection, poiCam.viewDir, _GlitterBias), poiCam.viewDir)), _GlitterContrast), 0);
					finalGlitter *= glitterAlpha;
					break;
					case 1:
					float offset = random(randoPoint);
					float brightness = sin((_Time.x + offset) * _GlitterSpeed) * _glitterFrequencyLinearEmissive - (_glitterFrequencyLinearEmissive - 1);
					finalGlitter = max(_GlitterMinBrightness * glitterAlpha, brightness * glitterAlpha * smoothstep(0, 1, 1 - m_dist * _GlitterCenterSize * 10));
					break;
					case 2:
					if (_GlitterSpeed > 0)
					{
						randomRotation = randomFloat3WiggleRange(randoPoint, _GlitterAngleRange, _GlitterSpeed);
					}
					else
					{
						randomRotation = randomFloat3Range(randoPoint, _GlitterAngleRange);
					}
					
					float3 glitterLightReflectionDirection = normalize(mul(poiRotationMatrixFromAngles(randomRotation), norm));
					
					#ifdef UNITY_PASS_FORWARDADD
					glitterAlpha *= poiLight.nDotLSaturated * poiLight.attenuation;
					#endif
					#ifdef UNITY_PASS_FORWARDBASE
					glitterAlpha *= poiLight.nDotLSaturated;
					#endif
					
					float3 halfDir = normalize(poiLight.direction + poiCam.viewDir);
					float specAngle = max(dot(halfDir, glitterLightReflectionDirection), 0.0);
					
					finalGlitter = lerp(0, _GlitterMinBrightness * glitterAlpha, glitterAlpha) + max(pow(specAngle, _GlitterContrast), 0);
					
					glitterColor *= poiLight.directColor;
					finalGlitter *= glitterAlpha;
					
					break;
				}
				
				glitterColor *= lerp(1, poiFragData.baseColor, _GlitterUseSurfaceColor);
				#if defined(PROP_GLITTERCOLORMAP) || !defined(OPTIMIZER_ENABLED)
				glitterColor *= POI2D_SAMPLER_PAN(_GlitterColorMap, _MainTex, poiUV(poiMesh.uv[_GlitterColorMapUV], _GlitterColorMap_ST), _GlitterColorMapPan).rgb;
				#endif
				float2 uv = remapClamped(-size, size, dank, 0, 1);
				UNITY_BRANCH
				if (_GlitterRandomRotation == 1 || _GlitterTextureRotation != 0 && !_GlitterShape)
				{
					float2 fakeUVCenter = float2(.5, .5);
					float randomBoy = 0;
					UNITY_BRANCH
					if (_GlitterRandomRotation)
					{
						randomBoy = random(randoPoint);
					}
					float theta = radians((randomBoy + _Time.x * _GlitterTextureRotation) * 360);
					float cs = cos(theta);
					float sn = sin(theta);
					uv = float2((uv.x - fakeUVCenter.x) * cs - (uv.y - fakeUVCenter.y) * sn + fakeUVCenter.x, (uv.x - fakeUVCenter.x) * sn + (uv.y - fakeUVCenter.y) * cs + fakeUVCenter.y);
				}
				
				#if defined(PROP_GLITTERTEXTURE) || !defined(OPTIMIZER_ENABLED)
				float4 glitterTexture = POI2D_SAMPLER_PAN(_GlitterTexture, _MainTex, poiUV(uv, _GlitterTexture_ST), _GlitterTexturePan);
				#else
				float4 glitterTexture = 1;
				#endif
				//float4 glitterTexture = _GlitterTexture.SampleGrad(sampler_MainTex, frac(uv), ddx(uv), ddy(uv));
				glitterColor *= glitterTexture.rgb;
				#if defined(PROP_GLITTERMASK) || !defined(OPTIMIZER_ENABLED)
				float glitterMask = POI2D_SAMPLER_PAN(_GlitterMask, _MainTex, poiUV(poiMesh.uv[_GlitterMaskUV], _GlitterMask_ST), _GlitterMaskPan);
				#else
				float glitterMask = 1;
				#endif
				
				glitterMask *= lerp(1, poiLight.attenuation, _GlitterHideInShadow);
				
				#ifdef POI_BLACKLIGHT
				if (_BlackLightMaskGlitter != 4)
				{
					glitterMask *= blackLightMask[_BlackLightMaskGlitter];
				}
				#endif
				
				if (_GlitterRandomColors)
				{
					glitterColor *= RandomColorFromPoint(random2(randoPoint.x + randoPoint.y));
				}
				
				UNITY_BRANCH
				if (_GlitterHueShiftEnabled)
				{
					glitterColor.rgb = hueShift(glitterColor.rgb, _GlitterHueShift + _Time.x * _GlitterHueShiftSpeed);
				}
				
				UNITY_BRANCH
				if (_GlitterBlendType == 1)
				{
					poiFragData.baseColor = lerp(poiFragData.baseColor, finalGlitter * glitterColor * _GlitterBrightness, finalGlitter * glitterTexture.a * glitterMask);
					poiFragData.emission += finalGlitter * glitterColor * max(0, (_GlitterBrightness - 1) * glitterTexture.a) * glitterMask;
				}
				else
				{
					poiFragData.emission += finalGlitter * glitterColor * _GlitterBrightness * glitterTexture.a * glitterMask;
				}
			}
			#endif
			
			#ifdef MOCHIE_PBR
			
			bool SceneHasReflections()
			{
				float width, height;
				unity_SpecCube0.GetDimensions(width, height);
				return !(width * height < 2);
			}
			
			float3 GetWorldReflections(float3 reflDir, float3 worldPos, float roughness)
			{
				float3 baseReflDir = reflDir;
				reflDir = BoxProjection(reflDir, worldPos, unity_SpecCube0_ProbePosition, unity_SpecCube0_BoxMin, unity_SpecCube0_BoxMax);
				float4 envSample0 = UNITY_SAMPLE_TEXCUBE_LOD(unity_SpecCube0, reflDir, roughness * UNITY_SPECCUBE_LOD_STEPS);
				float3 p0 = DecodeHDR(envSample0, unity_SpecCube0_HDR);
				float interpolator = unity_SpecCube0_BoxMin.w;
				UNITY_BRANCH
				if (interpolator < 0.99999)
				{
					float3 refDirBlend = BoxProjection(baseReflDir, worldPos, unity_SpecCube1_ProbePosition, unity_SpecCube1_BoxMin, unity_SpecCube1_BoxMax);
					float4 envSample1 = UNITY_SAMPLE_TEXCUBE_SAMPLER_LOD(unity_SpecCube1, unity_SpecCube0, refDirBlend, roughness * UNITY_SPECCUBE_LOD_STEPS);
					float3 p1 = DecodeHDR(envSample1, unity_SpecCube1_HDR);
					p0 = lerp(p1, p0, interpolator);
				}
				return p0;
			}
			
			float3 GetReflections(in PoiCam pc, in PoiLight pl, in PoiMesh pm, float roughness)
			{
				float3 reflections = 0;
				float3 lighting = pl.finalLighting;
				if (_MochieForceFallback == 0)
				{
					UNITY_BRANCH
					if (SceneHasReflections())
					{
						reflections = GetWorldReflections(pc.reflectionDir, pm.worldPos.xyz, roughness);
					}
					else
					{
						reflections = texCUBElod(_MochieReflCube, float4(pc.reflectionDir, roughness * UNITY_SPECCUBE_LOD_STEPS));
						reflections = DecodeHDR(float4(reflections, 1), _MochieReflCube_HDR) * lerp(1, pl.finalLighting, _MochieLitFallback);
					}
				}
				else
				{
					reflections = texCUBElod(_MochieReflCube, float4(pc.reflectionDir, roughness * UNITY_SPECCUBE_LOD_STEPS));
					reflections = DecodeHDR(float4(reflections, 1), _MochieReflCube_HDR) * lerp(1, pl.finalLighting, _MochieLitFallback);
				}
				reflections *= pl.occlusion;
				return reflections;
			}
			
			float GetGGXTerm(in PoiLight pl, float roughness)
			{
				float visibilityTerm = 0;
				if (pl.nDotL > 0)
				{
					float rough = roughness;
					float rough2 = roughness * roughness;
					
					float lambdaV = pl.nDotL * (pl.nDotV * (1 - rough) + rough);
					float lambdaL = pl.nDotV * (pl.nDotL * (1 - rough) + rough);
					
					visibilityTerm = 0.5f / (lambdaV + lambdaL + 1e-5f);
					float d = (pl.nDotH * rough2 - pl.nDotH) * pl.nDotH + 1.0f;
					float dotTerm = UNITY_INV_PI * rough2 / (d * d + 1e-7f);
					
					visibilityTerm *= dotTerm * UNITY_PI;
				}
				return visibilityTerm;
			}
			
			void GetSpecFresTerm(in PoiLight pl, inout float3 specularTerm, inout float3 fresnelTerm, float3 specCol, float roughness)
			{
				specularTerm = GetGGXTerm(pl, roughness);
				fresnelTerm = FresnelTerm(specCol, pl.lDotH);
				specularTerm = max(0, specularTerm * max(0.00001, pl.nDotL));
			}
			
			float GetRoughness(float smoothness)
			{
				float rough = 1 - smoothness;
				rough *= 1.7 - 0.7 * rough;
				return rough;
			}
			
			void MochieBRDF(inout PoiFragData pfd, in PoiCam pc, in PoiLight pl, in PoiMesh pm, in PoiMods poiMods)
			{
				float smoothness = _MochieRoughnessMultiplier;
				float metallic = _MochieMetallicMultiplier;
				float specularMask = 1;
				float reflectionMask = 1;
				
				#if defined(PROP_MOCHIEMETALLICMAPS) || !defined(OPTIMIZER_ENABLED)
				float4 PRBMaps = POI2D_SAMPLER_PAN(_MochieMetallicMaps, _MainTex, poiUV(pm.uv[_MochieMetallicMapsUV], _MochieMetallicMaps_ST), _MochieMetallicMapsPan);
				metallic *= PRBMaps.r;
				smoothness = (smoothness * PRBMaps.g);
				specularMask *= PRBMaps.b;
				reflectionMask *= PRBMaps.a;
				#endif
				
				if (_MochieSpecularMaskInvert)
				{
					specularMask = 1 - specularMask;
				}
				if (_MochieReflectionMaskInvert)
				{
					reflectionMask = 1 - reflectionMask;
				}
				
				if (_MochieRoughnessMapInvert)
				{
					smoothness = 1 - smoothness;
				}
				float roughness = GetRoughness(smoothness);
				if (_MochieMetallicMapInvert)
				{
					metallic = 1 - metallic;
				}
				float3 specCol = lerp(unity_ColorSpaceDielectricSpec.rgb, pfd.baseColor, metallic);
				float omr = unity_ColorSpaceDielectricSpec.a - metallic * unity_ColorSpaceDielectricSpec.a;
				float percepRough = 1 - smoothness;
				float brdfRoughness = percepRough * percepRough;
				brdfRoughness = max(brdfRoughness, 0.002);
				
				float3 lighting = pl.finalLighting;
				float3 diffuse = pfd.baseColor;
				float3 specular = 0;
				float3 reflections = 0;
				float3 environment = 0;
				
				// Specular
				// if (_SpecularMode == 0){
				if (_MochieSpecularStrength > 0)
				{
					float3 fresnelTerm = 1;
					float3 specularTerm = 1;
					GetSpecFresTerm(pl, specularTerm, fresnelTerm, specCol, brdfRoughness);
					specular = lighting * specularTerm * fresnelTerm * specularMask * poiThemeColor(poiMods, _MochieSpecularTint, _MochieSpecularTintThemeIndex) * pl.occlusion * pl.attenuation * _MochieSpecularStrength;
				}
				// }
				// else {
				// 	float specArea = 0.5 * dot(pl.halfDir, pm.normals[1]);
				// 	float3 specularMap = POI2D_SAMPLER_PAN(_YMTSpecularMap, _MainTex, poiUV(pm.uv[_YMTSpecularMapUV], _YMTSpecularMap_ST), _YMTSpecularMapPan);
				
				// 	// Spec 1
				// 	// r: noise, g: noise mask, b: feather
				// 	float4 specularOptMap1 = POI2D_SAMPLER_PAN(_YMTSpecularOptMap1, _MainTex, poiUV(pm.uv[_YMTSpecularOptMap1UV], _YMTSpecularOptMap1_ST), _YMTSpecularOptMap1Pan);
				// 	float spec1 = saturate(specArea - saturate(((1-specularOptMap1.r) * specularOptMap1.g) - _YMTLayer1Offset));
				// 	float specMask1 = pow(spec1, exp2(lerp(11, 1, _YMTLayer1Size)));
				// 	specMask1 = saturate((specMask1 - 0.01) / (saturate(specularOptMap1.b * max(0.0001, _YMTSpecularFeather)))) * _YMTLayer1Strength;
				
				// 	// Spec 2
				// 	float specMask2 = 0;
				// 	if (_UseSpecularOptMap2)
				// 	{
				// 		float4 specularOptMap2 = POI2D_SAMPLER_PAN(_YMTSpecularOptMap2, _MainTex, poiUV(pm.uv[_YMTSpecularOptMap2UV], _YMTSpecularOptMap2_ST), _YMTSpecularOptMap2Pan);
				// 		float spec2 = saturate(specArea - saturate(((1-specularOptMap2.r) * specularOptMap2.g) - _YMTLayer2Offset));
				// 		specMask2 = pow(spec2, exp2(lerp(11, 1, _YMTLayer2Size)));
				// 		specMask2 = saturate((specMask2 - 0.01) / (saturate(specularOptMap2.b * max(0.0001, _YMTSpecularFeather)))) * _YMTLayer2Strength;
				// 	}
				
				// 	float specMask = saturate(specMask1 + specMask2);
				// 	specular = specularMap * _MochieSpecularTint * lerp(1, lighting, _YMTUseLightColor) * specMask * pl.occlusion * pl.attenuation * _MochieSpecularStrength;
				// }
				
				// Reflections
				if (_MochieReflectionStrength > 0)
				{
					float surfaceReduction = (1.0 / (brdfRoughness * brdfRoughness + 1.0));
					float grazingTerm = saturate(smoothness + (1 - omr));
					float3 reflCol = GetReflections(pc, pl, pm, roughness);
					float reflStr = reflectionMask * _MochieReflectionStrength;
					reflections = surfaceReduction * reflCol * FresnelLerp(specCol, grazingTerm, pl.nDotV);
					reflections *= poiThemeColor(poiMods, _MochieReflectionTint, _MochieReflectionTintThemeIndex) * reflStr;
					#ifdef UNITY_PASS_FORWARDADD
					reflections *= pl.attenuation;
					#endif
					diffuse = lerp(diffuse, diffuse * omr, reflStr);
				}
				
				environment = specular + reflections;
				diffuse *= lighting;
				diffuse += environment;
				pfd.finalColor = diffuse;
			}
			
			#endif
			
			#ifdef _COLORCOLOR_ON
			float3 CalculateClearCoatEnvironmentalReflections(PoiMesh poiMesh, PoiCam poiCam, PoiLight poiLight, PoiMods poiMods)
			{
				float3 reflectionColor;
				
				#if defined(PROP_CLEARCOATSMOOTHNESSMAP) || !defined(OPTIMIZER_ENABLED)
				float smoothnessMap = (POI2D_SAMPLER_PAN(_ClearCoatSmoothnessMap, _MainTex, poiMesh.uv[_ClearCoatSmoothnessMapUV], _ClearCoatSmoothnessMapPan));
				#else
				float smoothnessMap = 1;
				#endif
				
				if (_ClearCoatInvertSmoothness == 1)
				{
					smoothnessMap = 1 - smoothnessMap;
				}
				smoothnessMap *= _ClearCoatSmoothness;
				float roughness = (1 - smoothnessMap) * (1 - _ClearCoatSmoothness);
				
				lighty_clear_boy_uwu_var = 0;
				
				float3 reflectedDir = reflect(-poiCam.viewDir, poiMesh.normals[_ClearCoatNormal]);;
				
				float4 envSample = UNITY_SAMPLE_TEXCUBE_LOD(unity_SpecCube0, reflectedDir, roughness * UNITY_SPECCUBE_LOD_STEPS);
				bool no_probe = unity_SpecCube0_HDR.a == 0 && envSample.a == 0;
				
				UNITY_BRANCH
				if (_ClearCoatSampleWorld == 1 && no_probe == 0)
				{
					
					Unity_GlossyEnvironmentData envData;
					envData.roughness = roughness;
					envData.reflUVW = BoxProjection(
					reflectedDir, poiMesh.worldPos.xyz,
					unity_SpecCube0_ProbePosition,
					unity_SpecCube0_BoxMin, unity_SpecCube0_BoxMax
					);
					float3 probe0 = Unity_GlossyEnvironment(
					UNITY_PASS_TEXCUBE(unity_SpecCube0), unity_SpecCube0_HDR, envData
					);
					envData.reflUVW = BoxProjection(
					reflectedDir, poiMesh.worldPos.xyz,
					unity_SpecCube1_ProbePosition,
					unity_SpecCube1_BoxMin, unity_SpecCube1_BoxMax
					);
					
					float interpolator = unity_SpecCube0_BoxMin.w;
					UNITY_BRANCH
					if (interpolator < 0.99999)
					{
						float3 probe1 = Unity_GlossyEnvironment(
						UNITY_PASS_TEXCUBE_SAMPLER(unity_SpecCube1, unity_SpecCube0),
						unity_SpecCube0_HDR, envData
						);
						reflectionColor = lerp(probe1, probe0, interpolator);
					}
					else
					{
						reflectionColor = probe0;
					}
				}
				else
				{
					lighty_clear_boy_uwu_var = 1;
					reflectionColor = texCUBElod(_ClearCoatCubeMap, float4(reflectedDir, roughness * UNITY_SPECCUBE_LOD_STEPS));
				}
				
				if (_ClearCoatForceLighting)
				{
					lighty_clear_boy_uwu_var = 1;
				}
				
				return reflectionColor * poiThemeColor(poiMods, _ClearCoatTint, _ClearCoatTintThemeIndex);
			}
			
			void calculateAndApplyClearCoat(inout PoiFragData poiFragData, in PoiMesh poiMesh, in PoiCam poiCam, in PoiLight poiLight, in PoiMods poiMods)
			{
				#if defined(PROP_CLEARCOATMASK) || !defined(OPTIMIZER_ENABLED)
				float clearCoatMap = POI2D_SAMPLER_PAN(_ClearCoatMask, _MainTex, poiUV(poiMesh.uv[_ClearCoatMaskUV], _ClearCoatMask_ST), _ClearCoatMaskPan);
				#else
				float clearCoatMap = 1;
				#endif
				
				float3 reflectionColor = CalculateClearCoatEnvironmentalReflections(poiMesh, poiCam, poiLight, poiMods);
				float nDotV = dot(poiMesh.normals[_ClearCoatNormal], poiCam.viewDir);
				float NormalDotView = abs(dot(_ClearCoat, nDotV).r);
				poiFragData.finalColor += reflectionColor * lerp(1, poiLight.finalLighting, lighty_clear_boy_uwu_var) * (clearCoatMap * _ClearCoat * clamp(FresnelTerm(_ClearCoat, NormalDotView), 0, 1));
			}
			#endif
			
			#ifdef POI_ENVIRORIM
			void applyEnvironmentRim(inout PoiFragData poiFragData, in PoiMesh poiMesh, in PoiCam poiCam)
			{
				float enviroRimAlpha = saturate(1 - smoothstep(min(_RimEnviroSharpness, _RimEnviroWidth), _RimEnviroWidth, poiCam.vDotN));
				_RimEnviroBlur *= 1.7 - 0.7 * _RimEnviroBlur;
				
				float3 enviroRimColor = 0;
				float interpolator = unity_SpecCube0_BoxMin.w;
				UNITY_BRANCH
				if (interpolator < 0.99999)
				{
					//Probe 1
					float4 reflectionData0 = UNITY_SAMPLE_TEXCUBE_LOD(unity_SpecCube0, poiMesh.normals[1], _RimEnviroBlur * UNITY_SPECCUBE_LOD_STEPS);
					float3 reflectionColor0 = DecodeHDR(reflectionData0, unity_SpecCube0_HDR);
					
					//Probe 2
					float4 reflectionData1 = UNITY_SAMPLE_TEXCUBE_SAMPLER_LOD(unity_SpecCube1, unity_SpecCube0, poiMesh.normals[1], _RimEnviroBlur * UNITY_SPECCUBE_LOD_STEPS);
					float3 reflectionColor1 = DecodeHDR(reflectionData1, unity_SpecCube1_HDR);
					
					enviroRimColor = lerp(reflectionColor1, reflectionColor0, interpolator);
				}
				else
				{
					float4 reflectionData = UNITY_SAMPLE_TEXCUBE_LOD(unity_SpecCube0, poiMesh.normals[1], _RimEnviroBlur * UNITY_SPECCUBE_LOD_STEPS);
					enviroRimColor = DecodeHDR(reflectionData, unity_SpecCube0_HDR);
				}
				
				half enviroMask = 1;
				#if defined(PROP_RIMENVIROMASK) || !defined(OPTIMIZER_ENABLED)
				enviroMask = poiMax(POI2D_SAMPLER_PAN(_RimEnviroMask, _MainTex, poiMesh.uv[_RimEnviroMaskUV], _RimEnviroMaskPan).rgb);
				#endif
				float3 envRimCol = lerp(0, max(0, (enviroRimColor - _RimEnviroMinBrightness) * poiFragData.baseColor), enviroRimAlpha).rgb * enviroMask * _RimEnviroIntensity;
				poiFragData.finalColor += envRimCol;
			}
			#endif
			
			#ifdef POI_STYLIZED_StylizedSpecular
			void stylizedSpecular(inout PoiFragData poiFragData, in PoiCam poiCam, in PoiLight poiLight, in PoiMesh poiMesh, in PoiMods poiMods)
			{
				float specArea = 0.5 * dot(poiLight.halfDir, poiMesh.normals[1]) + 0.5;
				#if defined(PROP_HIGHCOLOR_TEX) || !defined(OPTIMIZER_ENABLED)
				float3 specularMap = POI2D_SAMPLER_PAN(_HighColor_Tex, _MainTex, poiUV(poiMesh.uv[_HighColor_TexUV], _HighColor_Tex_ST), _HighColor_TexPan);
				#else
				float3 specularMap = 1;
				#endif
				
				// Spec 1
				float specMask1 = 0;
				if (_Is_SpecularToHighColor)
				{
					specMask1 = pow(specArea, exp2(lerp(11, 1, _HighColor_Power)));
				}
				else
				{
					specMask1 = aaBlurStep(specArea, (1.0 - pow(_HighColor_Power, 5)), _StylizedSpecularFeather);
				}
				specMask1 *= _Layer1Strength;
				
				// Spec 2
				float specMask2 = 0;
				if (_Is_SpecularToHighColor)
				{
					specMask2 = pow(specArea, exp2(lerp(11, 1, _Layer2Size)));
				}
				else
				{
					specMask2 = aaBlurStep(specArea, (1.0 - pow(_Layer2Size, 5)), _StylizedSpecular2Feather);
				}
				specMask2 *= _Layer2Strength;
				
				#if defined(PROP_SET_HIGHCOLORMASK) || !defined(OPTIMIZER_ENABLED)
				float specularMask = POI2D_SAMPLER_PAN(_Set_HighColorMask, _MainTex, poiUV(poiMesh.uv[_Set_HighColorMaskUV], _Set_HighColorMask_ST), _Set_HighColorMaskPan).g;
				#else
				float specularMask = 1;
				#endif
				
				specularMask = saturate(specularMask + _Tweak_HighColorMaskLevel);
				
				float specMask = saturate(specMask1 + specMask2) * specularMask * poiLight.rampedLightMap;
				float3 specular = specularMap * poiThemeColor(poiMods, _HighColor, _HighColorThemeIndex) * lerp(1, poiLight.directColor, _UseLightColor) * specMask * poiLight.occlusion * poiLight.attenuation * _StylizedSpecularStrength;
				
				if (_Is_BlendAddToHiColor == 1)
				{
					poiFragData.emission += specular;
				}
				else
				{
					poiFragData.baseColor = lerp(poiFragData.baseColor, specularMap * poiThemeColor(poiMods, _HighColor, _HighColorThemeIndex) * lerp(1, poiLight.directColor, _UseLightColor), saturate(specMask * poiLight.occlusion * poiLight.attenuation * _StylizedSpecularStrength));
				}
				
				//poiFragData.baseColor = _StylizedSpecularStrength;
				
			}
			#endif
			
			#ifdef POI_PATHING
			void applyPathing(inout PoiFragData pfd, in PoiMesh poiMesh, in PoiMods poiMods)
			{
				float3 albedo = pfd.baseColor;
				float3 pathEmission;
				
				#if defined(PROP_PATHINGMAP) || !defined(OPTIMIZER_ENABLED)
				float4 path = _PathingMap.Sample(SmpRepeatPoint, poiMesh.uv[_PathingMapUV]);
				#else
				float4 path = float4(0, 0, 0, 0);
				return;
				#endif
				
				#if defined(PROP_PATHINGCOLORMAP) || !defined(OPTIMIZER_ENABLED)
				float4 pathColorMap = POI2D_SAMPLER_PAN(_PathingColorMap, _MainTex, poiMesh.uv[_PathingColorMapUV], _PathingColorMapPan);
				#else
				float4 pathColorMap = float4(1, 1, 1, 1);
				#endif
				
				float3 pathAudioLinkEmission = 0;
				float3 pathTime = 0;
				float3 pathAlpha[3] = {
					float3(0.0, 0.0, 0.0), float3(0.0, 0.0, 0.0), float3(0.0, 0.0, 0.0)
				};
				
				#ifdef COLOR_GRADING_LOG_VIEW
				half pathAudioLinkPathTimeOffsetBand[3] = {
					_AudioLinkPathTimeOffsetBandR, _AudioLinkPathTimeOffsetBandG, _AudioLinkPathTimeOffsetBandB
				};
				half2 pathAudioLinkTimeOffset[3] = {
					_AudioLinkPathTimeOffsetR.xy, _AudioLinkPathTimeOffsetG.xy, _AudioLinkPathTimeOffsetB.xy
				};
				half pathAudioLinkPathWidthOffsetBand[3] = {
					_AudioLinkPathWidthOffsetBandR, _AudioLinkPathWidthOffsetBandG, _AudioLinkPathWidthOffsetBandB
				};
				half2 pathAudioLinkWidthOffset[3] = {
					_AudioLinkPathWidthOffsetR.xy, _AudioLinkPathWidthOffsetG.xy, _AudioLinkPathWidthOffsetB.xy
				};
				
				UNITY_BRANCH
				if (poiMods.audioLinkAvailable)
				{
					// Emission
					pathAudioLinkEmission.r = lerp(_AudioLinkPathEmissionAddR.x, _AudioLinkPathEmissionAddR.y, poiMods.audioLink[_AudioLinkPathEmissionAddBandR]);
					pathAudioLinkEmission.g = lerp(_AudioLinkPathEmissionAddG.x, _AudioLinkPathEmissionAddG.y, poiMods.audioLink[_AudioLinkPathEmissionAddBandG]);
					pathAudioLinkEmission.b = lerp(_AudioLinkPathEmissionAddB.x, _AudioLinkPathEmissionAddB.y, poiMods.audioLink[_AudioLinkPathEmissionAddBandB]);
				}
				#endif
				
				[unroll]
				for (int index = 0; index < 3; index++)
				{
					pathTime[index] = _PathTime[index] != -999.0f ? frac(_PathTime[index] + _PathOffset[index]) : frac(_Time.x * _PathSpeed[index] + _PathOffset[index]);
					
					#ifdef COLOR_GRADING_LOG_VIEW
					UNITY_BRANCH
					if (poiMods.audioLinkAvailable)
					{
						pathTime[index] += lerp(pathAudioLinkTimeOffset[index].x, pathAudioLinkTimeOffset[index].y, poiMods.audioLink[pathAudioLinkPathTimeOffsetBand[index]]);
					}
					#endif
					
					if (_PathSegments[index])
					{
						float pathSegments = abs(_PathSegments[index]);
						pathTime = (ceil(pathTime * pathSegments) - .5) / pathSegments;
					}
					
					if (path[index])
					{
						// Cutting it in half because it goes out in both directions for now
						half pathWidth = _PathWidth[index] * .5;
						#ifdef COLOR_GRADING_LOG_VIEW
						UNITY_BRANCH
						if (poiMods.audioLinkAvailable)
						{
							pathWidth += lerp(pathAudioLinkWidthOffset[index].x, pathAudioLinkWidthOffset[index].y, poiMods.audioLink[pathAudioLinkPathWidthOffsetBand[index]]);
						}
						#endif
						
						//fill
						pathAlpha[index].x = pathTime[index] > path[index];
						//path
						pathAlpha[index].y = saturate((1 - abs(lerp(-pathWidth, 1 + pathWidth, pathTime[index]) - path[index])) - (1 - pathWidth)) * (1 / pathWidth);
						//loop
						pathAlpha[index].z = saturate((1 - distance(pathTime[index], path[index])) - (1 - pathWidth)) * (1 / pathWidth);
						pathAlpha[index].z += saturate(distance(pathTime[index], path[index]) - (1 - pathWidth)) * (1 / pathWidth);
						pathAlpha[index] = smoothstep(0, _PathSoftness[index] + .00001, pathAlpha[index]);
					}
				}
				
				// Emission
				pathEmission = 0;
				pathEmission += pathAlpha[0][_PathTypeR] * poiThemeColor(poiMods, _PathColorR.rgb, _PathColorRThemeIndex) * (_PathEmissionStrength[0] + pathAudioLinkEmission.r);
				pathEmission += pathAlpha[1][_PathTypeG] * poiThemeColor(poiMods, _PathColorG.rgb, _PathColorGThemeIndex) * (_PathEmissionStrength[1] + pathAudioLinkEmission.g);
				pathEmission += pathAlpha[2][_PathTypeB] * poiThemeColor(poiMods, _PathColorB.rgb, _PathColorBThemeIndex) * (_PathEmissionStrength[2] + pathAudioLinkEmission.b);
				pathEmission *= pathColorMap.rgb * pathColorMap.a * path.a;
				
				float3 colorReplace = 0;
				colorReplace = pathAlpha[0][_PathTypeR] * poiThemeColor(poiMods, _PathColorR.rgb, _PathColorRThemeIndex) * pathColorMap.rgb;
				albedo.rgb = lerp(albedo.rgb, colorReplace + albedo.rgb * 0.00001, pathColorMap.a * path.a * _PathColorR.a * pathAlpha[0][_PathTypeR]);
				colorReplace = pathAlpha[1][_PathTypeG] * poiThemeColor(poiMods, _PathColorG.rgb, _PathColorGThemeIndex) * pathColorMap.rgb;
				albedo.rgb = lerp(albedo.rgb, colorReplace + albedo.rgb * 0.00001, pathColorMap.a * path.a * _PathColorG.a * pathAlpha[1][_PathTypeG]);
				colorReplace = pathAlpha[2][_PathTypeB] * poiThemeColor(poiMods, _PathColorB.rgb, _PathColorBThemeIndex) * pathColorMap.rgb;
				albedo.rgb = lerp(albedo.rgb, colorReplace + albedo.rgb * 0.00001, pathColorMap.a * path.a * _PathColorB.a * pathAlpha[2][_PathTypeB]);
				
				pfd.baseColor = albedo.rgb;
				pfd.emission += pathEmission;
			}
			#endif
			
			#ifdef POI_MIRROR
			void applyMirror(inout PoiFragData poiFragData, in PoiMesh poiMesh)
			{
				bool inMirror = IsInMirror();
				if (_Mirror != 0)
				{
					if (_Mirror == 1 && inMirror)	return;
					if (_Mirror == 1 && !inMirror)	discard;
					if (_Mirror == 2 && inMirror)	discard;
					if (_Mirror == 2 && !inMirror)	return;
				}
				
				#if(defined(FORWARD_BASE_PASS) || defined(FORWARD_ADD_PASS))
				#if defined(PROP_MIRRORTEXTURE) || !defined(OPTIMIZER_ENABLED)
				if(inMirror)
				{
					poiFragData.baseColor = POI2D_SAMPLER_PAN(_MirrorTexture, _MainTex, poiMesh.uv[_MirrorTextureUV], _MirrorTexturePan);
				}
				#endif
				#endif
			}
			#endif
			
			#ifdef GRAIN
			inline float CorrectedLinearEyeDepth(float z, float B)
			{
				return 1.0 / (z / UNITY_MATRIX_P._34 + B);
			}
			
			void applyDepthFX(inout PoiFragData poiFragData, in PoiCam poiCam, in PoiMesh poiMesh, in PoiMods poiMods)
			{
				float3 touchEmission = 0;
				
				float perspectiveDivide = 1.0f / poiCam.clipPos.w;
				float4 direction = poiCam.worldDirection * perspectiveDivide;
				float2 screenPos = poiCam.grabPos.xy * perspectiveDivide;
				float z = SAMPLE_DEPTH_TEXTURE(_CameraDepthTexture, screenPos);
				
				#if UNITY_REVERSED_Z
				if (z == 0)
				#else
				if (z == 1)
				#endif
				return;
				
				float depth = CorrectedLinearEyeDepth(z, direction.w);
				float3 worldpos = direction * depth + _WorldSpaceCameraPos.xyz;
				/*
				finalColor.rgb = frac(worldpos);
				return;
				*/
				
				float diff = distance(worldpos, poiMesh.worldPos);
				//poiFragData.finalColor = diff;
				
				#if defined(PROP_DEPTHMASK) || !defined(OPTIMIZER_ENABLED)
				float depthMask = POI2D_SAMPLER_PAN(_DepthMask, _MainTex, poiUV(poiMesh.uv[_DepthMaskUV], _DepthMask_ST), _DepthMaskPan).r;
				#else
				float depthMask = 1;
				#endif
				
				if (_DepthColorToggle)
				{
					float colorBlendAlpha = lerp(_DepthColorMinValue, _DepthColorMaxValue, remapClamped(_DepthColorMinDepth, _DepthColorMaxDepth, diff));
					
					#if defined(PROP_DEPTHTEXTURE) || !defined(OPTIMIZER_ENABLED)
					float3 depthColor = POI2D_SAMPLER_PAN(_DepthTexture, _MainTex, poiUV(poiMesh.uv[_DepthTextureUV], _DepthTexture_ST), _DepthTexturePan).rgb * poiThemeColor(poiMods, _DepthColor, _DepthColorThemeIndex);
					#else
					float3 depthColor = poiThemeColor(poiMods, _DepthColor, _DepthColorThemeIndex);
					#endif
					
					switch(_DepthColorBlendMode)
					{
						case 0:
						{
							poiFragData.finalColor = lerp(poiFragData.finalColor, depthColor, colorBlendAlpha * depthMask);
							break;
						}
						case 1:
						{
							poiFragData.finalColor *= lerp(1, depthColor, colorBlendAlpha * depthMask);
							break;
						}
						case 2:
						{
							poiFragData.finalColor = saturate(poiFragData.finalColor + lerp(0, depthColor, colorBlendAlpha * depthMask));
							break;
						}
					}
					poiFragData.emission += depthColor * colorBlendAlpha * _DepthEmissionStrength * depthMask;
				}
				
				if (_DepthAlphaToggle)
				{
					poiFragData.alpha *= lerp(poiFragData.alpha, saturate(lerp(_DepthAlphaMinValue, _DepthAlphaMaxValue, remapClamped(_DepthAlphaMinDepth, _DepthAlphaMaxDepth, diff))), depthMask);
				}
			}
			#endif
			
			#ifdef POI_IRIDESCENCE
			float3 calculateNormal(PoiMesh poiMesh, float3 baseNormal)
			{
				float3 normal = baseNormal;
				#if defined(PROP_IRIDESCENCENORMALMAP) || !defined(OPTIMIZER_ENABLED)
				normal = UnpackScaleNormal(POI2D_SAMPLER_PAN(_IridescenceNormalMap, _MainTex, poiUV(poiMesh.uv[_IridescenceNormalMapUV], _IridescenceNormalMap_ST), _IridescenceNormalMapPan), _IridescenceNormalIntensity);
				normal = normalize(normal.x * poiMesh.tangent + normal.y * poiMesh.binormal + normal.z * baseNormal);
				#endif
				return normal;
			}
			
			void applyIridescence(inout PoiFragData poiFragData, PoiMesh poiMesh, PoiCam poiCam)
			{
				float3 normal = poiMesh.normals[_IridescenceNormalSelection];
				if (_IridescenceNormalToggle)
				{
					normal = calculateNormal(poiMesh, normal);
					
				}
				float ndotv = dot(normal, poiCam.viewDir);
				
				float4 iridescenceColor = 0;
				#if defined(PROP_IRIDESCENCERAMP) || !defined(OPTIMIZER_ENABLED)
				iridescenceColor = UNITY_SAMPLE_TEX2D_SAMPLER(_IridescenceRamp, _MainTex, (1 - abs(ndotv)) + _IridescenceRampPan * _Time.x + _IridescenceRamp_ST.zw);
				if (_IridescenceHueShiftEnabled == 1){
					float hue = _IridescenceHueShift + frac(_Time.x * _IridescenceHueShiftSpeed);
					iridescenceColor.rgb = hueShift(iridescenceColor.rgb, hue);
				}
				#endif
				
				float iridescenceMask = 1;
				#if defined(PROP_IRIDESCENCEMASK) || !defined(OPTIMIZER_ENABLED)
				iridescenceMask = POI2D_SAMPLER_PAN(_IridescenceMask, _MainTex, poiUV(poiMesh.uv[_IridescenceMaskUV], _IridescenceMask_ST), _IridescenceMaskPan);
				#endif
				
				#ifdef POI_BLACKLIGHT
				if(_BlackLightMaskIridescence != 4)
				{
					iridescenceMask *= blackLightMask[_BlackLightMaskIridescence];
				}
				#endif
				
				poiFragData.baseColor.rgb = lerp(poiFragData.baseColor.rgb, saturate(iridescenceColor.rgb * _IridescenceIntensity), iridescenceColor.a * _IridescenceReplaceBlend * iridescenceMask);
				poiFragData.baseColor.rgb += saturate(iridescenceColor.rgb * _IridescenceIntensity * iridescenceColor.a * _IridescenceAddBlend * iridescenceMask);
				poiFragData.baseColor.rgb *= saturate(lerp(1, iridescenceColor.rgb * _IridescenceIntensity, iridescenceColor.a * _IridescenceMultiplyBlend * iridescenceMask));
				poiFragData.emission += saturate(iridescenceColor.rgb * _IridescenceIntensity) * iridescenceColor.a * iridescenceMask * _IridescenceEmissionStrength;
			}
			#endif
			
			#ifdef EFFECT_BUMP
			
			float2 TransformUV(float2 offset, float rotation, float2 scale, float2 uv)
			{
				float theta = radians(rotation);
				scale = 1 - scale;
				float cs = cos(theta);
				float sn = sin(theta);
				float2 centerPoint = offset + .5;
				uv = float2((uv.x - centerPoint.x) * cs - (uv.y - centerPoint.y) * sn + centerPoint.x, (uv.x - centerPoint.x) * sn + (uv.y - centerPoint.y) * cs + centerPoint.y);
				
				return remap(uv, float2(0, 0) + offset + (scale * .5), float2(1, 1) + offset - (scale * .5), float2(0, 0), float2(1, 1));
			}
			
			float2 getAsciiCoordinate(float index)
			{
				return float2((index - 1) / 16, 1 - ((floor(index / 16 - glyphWidth)) / 16));
			}
			
			float median(float r, float g, float b)
			{
				return max(min(r, g), min(max(r, g), b));
			}
			
			void ApplyPositionText(inout PoiFragData poiFragData, float2 uv, in PoiMods poiMods)
			{
				float3 cameraPos = clamp(getCameraPosition(), -999, 999);
				float3 absCameraPos = abs(cameraPos);
				float totalCharacters = 20;
				float positionArray[20];
				positionArray[0] = cameraPos.x >= 0 ? ASCII_NEGATIVE : ASCII_POSITIVE;
				positionArray[1] = floor((absCameraPos.x * .01) % 10) + 48;
				positionArray[2] = floor((absCameraPos.x * .1) % 10) + 48;
				positionArray[3] = floor(absCameraPos.x % 10) + 48;
				positionArray[4] = ASCII_PERIOD;
				positionArray[5] = floor((absCameraPos.x * 10) % 10) + 48;
				positionArray[6] = ASCII_COMMA;
				positionArray[7] = cameraPos.y >= 0 ? ASCII_NEGATIVE : ASCII_POSITIVE;
				positionArray[8] = floor((absCameraPos.y * .01) % 10) + 48;
				positionArray[9] = floor((absCameraPos.y * .1) % 10) + 48;
				positionArray[10] = floor(absCameraPos.y % 10) + 48;
				positionArray[11] = ASCII_PERIOD;
				positionArray[12] = floor((absCameraPos.y * 10) % 10) + 48;
				positionArray[13] = ASCII_COMMA;
				positionArray[14] = cameraPos.z >= 0 ? ASCII_NEGATIVE : ASCII_POSITIVE;
				positionArray[15] = floor((absCameraPos.z * .01) % 10) + 48;
				positionArray[16] = floor((absCameraPos.z * .1) % 10) + 48;
				positionArray[17] = floor(absCameraPos.z % 10) + 48;
				positionArray[18] = ASCII_PERIOD;
				positionArray[19] = floor((absCameraPos.z * 10) % 10) + 48;
				
				uv = TransformUV(_TextPositionOffset, _TextPositionRotation, _TextPositionScale, uv);
				
				if (uv.x > 1 || uv.x < 0 || uv.y > 1 || uv.y < 0)
				{
					return;
				}
				
				float currentCharacter = floor(uv.x * totalCharacters);
				float2 glyphPos = getAsciiCoordinate(positionArray[currentCharacter]);
				
				float2 startUV = float2(1 / totalCharacters * currentCharacter, 0);
				float2 endUV = float2(1 / totalCharacters * (currentCharacter + 1), 1);
				
				fixed4 textPositionPadding = _TextPositionPadding;
				textPositionPadding *= 1 / totalCharacters;
				
				uv = remapClamped(startUV, endUV, uv, float2(glyphPos.x + textPositionPadding.x, glyphPos.y - glyphWidth + textPositionPadding.y), float2(glyphPos.x + glyphWidth - textPositionPadding.z, glyphPos.y - textPositionPadding.w));
				
				if (uv.x > glyphPos.x + glyphWidth - textPositionPadding.z - .001 || uv.x < glyphPos.x + textPositionPadding.x + .001 || uv.y > glyphPos.y - textPositionPadding.w - .001 || uv.y < glyphPos.y - glyphWidth + textPositionPadding.y + .001)
				{
					return;
				}
				
				float3 samp = tex2D(_TextGlyphs, TRANSFORM_TEX(uv, _TextGlyphs)).rgb;
				float2 msdfUnit = _TextPixelRange / _TextGlyphs_TexelSize.zw;
				float sigDist = median(samp.r, samp.g, samp.b) - 0.5;
				sigDist *= max(dot(msdfUnit, 0.5 / fwidth(uv)), 1);
				float opacity = clamp(sigDist + 0.5, 0, 1);
				poiFragData.baseColor = lerp(poiFragData.baseColor, poiThemeColor(poiMods, _TextPositionColor.rgb, _TextPositionColorThemeIndex), opacity * _TextPositionColor.a);
				globalTextEmission += poiThemeColor(poiMods, _TextPositionColor.rgb, _TextPositionColorThemeIndex) * opacity * _TextPositionEmissionStrength;
			}
			
			void ApplyTimeText(inout PoiFragData poiFragData, float2 uv, in PoiMods poiMods)
			{
				float instanceTime = _Time.y;
				float hours = instanceTime / 3600;
				float minutes = (instanceTime / 60) % 60;
				float seconds = instanceTime % 60;
				float totalCharacters = 8;
				float timeArray[8];
				timeArray[0] = floor((hours * .1) % 10) + 48;
				timeArray[1] = floor(hours % 10) + 48;
				timeArray[2] = ASCII_SEMICOLON;
				timeArray[3] = floor((minutes * .1) % 10) + 48;
				timeArray[4] = floor(minutes % 10) + 48;
				timeArray[5] = ASCII_SEMICOLON;
				timeArray[6] = floor((seconds * .1) % 10) + 48;
				timeArray[7] = floor(seconds % 10) + 48;
				
				uv = TransformUV(_TextTimeOffset, _TextTimeRotation, _TextTimeScale, uv);
				
				if (uv.x > 1 || uv.x < 0 || uv.y > 1 || uv.y < 0)
				{
					return;
				}
				
				float currentCharacter = floor(uv.x * totalCharacters);
				float2 glyphPos = getAsciiCoordinate(timeArray[currentCharacter]);
				// 0.1428571 = 1/7 = 1 / totalCharacters
				float startUV = 1 / totalCharacters * currentCharacter;
				float endUV = 1 / totalCharacters * (currentCharacter + 1);
				
				fixed4 textTimePadding = _TextTimePadding;
				textTimePadding *= 1 / totalCharacters;
				
				uv = remapClamped(float2(startUV, 0), float2(endUV, 1), uv, float2(glyphPos.x + textTimePadding.x, glyphPos.y - glyphWidth + textTimePadding.y), float2(glyphPos.x + glyphWidth - textTimePadding.z, glyphPos.y - textTimePadding.w));
				
				if (uv.x > glyphPos.x + glyphWidth - textTimePadding.z - .001 || uv.x < glyphPos.x + textTimePadding.x + .001 || uv.y > glyphPos.y - textTimePadding.w - .001 || uv.y < glyphPos.y - glyphWidth + textTimePadding.y + .001)
				{
					return;
				}
				
				float3 samp = tex2D(_TextGlyphs, TRANSFORM_TEX(uv, _TextGlyphs)).rgb;
				float2 msdfUnit = _TextPixelRange / _TextGlyphs_TexelSize.zw;
				float sigDist = median(samp.r, samp.g, samp.b) - 0.5;
				sigDist *= max(dot(msdfUnit, 0.5 / fwidth(uv)), 1);
				float opacity = clamp(sigDist + 0.5, 0, 1);
				poiFragData.baseColor = lerp(poiFragData.baseColor, poiThemeColor(poiMods, _TextTimeColor.rgb, _TextTimeColorThemeIndex), opacity * _TextTimeColor.a);
				globalTextEmission += poiThemeColor(poiMods, _TextTimeColor.rgb, _TextTimeColorThemeIndex) * opacity * _TextTimeEmissionStrength;
			}
			
			void ApplyFPSText(inout PoiFragData poiFragData, float2 uv, in PoiMods poiMods)
			{
				float smoothDeltaTime = clamp(unity_DeltaTime.w, 0, 999);
				float totalCharacters = 7;
				float fpsArray[7];
				fpsArray[0] = ASCII_F;
				fpsArray[1] = ASCII_P;
				fpsArray[2] = ASCII_S;
				fpsArray[3] = ASCII_SEMICOLON;
				fpsArray[4] = floor((smoothDeltaTime * .01) % 10) + 48;
				fpsArray[5] = floor((smoothDeltaTime * .1) % 10) + 48;
				fpsArray[6] = floor(smoothDeltaTime % 10) + 48;
				
				uv = TransformUV(_TextFPSOffset, _TextFPSRotation, _TextFPSScale, uv);
				
				if (uv.x > 1 || uv.x < 0 || uv.y > 1 || uv.y < 0)
				{
					return;
				}
				
				float currentCharacter = floor(uv.x * totalCharacters);
				float2 glyphPos = getAsciiCoordinate(fpsArray[currentCharacter]);
				// 0.1428571 = 1/7 = 1 / totalCharacters
				float startUV = 1 / totalCharacters * currentCharacter;
				float endUV = 1 / totalCharacters * (currentCharacter + 1);
				
				float4 textFPSPadding = _TextFPSPadding;
				textFPSPadding *= 1 / totalCharacters;
				
				uv = remapClamped(float2(startUV, 0), float2(endUV, 1), uv, float2(glyphPos.x + textFPSPadding.x, glyphPos.y - glyphWidth + textFPSPadding.y), float2(glyphPos.x + glyphWidth - textFPSPadding.z, glyphPos.y - textFPSPadding.w));
				
				if (uv.x > glyphPos.x + glyphWidth - textFPSPadding.z - .001 || uv.x < glyphPos.x + textFPSPadding.x + .001 || uv.y > glyphPos.y - textFPSPadding.w - .001 || uv.y < glyphPos.y - glyphWidth + textFPSPadding.y + .001)
				{
					return;
				}
				
				float3 samp = tex2D(_TextGlyphs, TRANSFORM_TEX(uv, _TextGlyphs)).rgb;
				float2 msdfUnit = _TextPixelRange / _TextGlyphs_TexelSize.zw;
				float sigDist = median(samp.r, samp.g, samp.b) - 0.5;
				sigDist *= max(dot(msdfUnit, 0.5 / fwidth(uv)), 1);
				float opacity = clamp(sigDist + 0.5, 0, 1);
				poiFragData.baseColor = lerp(poiFragData.baseColor, poiThemeColor(poiMods, _TextFPSColor.rgb, _TextFPSColorThemeIndex), opacity * _TextFPSColor.a);
				globalTextEmission += poiThemeColor(poiMods, _TextFPSColor.rgb, _TextFPSColorThemeIndex) * opacity * _TextFPSEmissionStrength;
			}
			
			void ApplyTextOverlayColor(inout PoiFragData poiFragData, PoiMesh poiMesh, in PoiMods poiMods)
			{
				globalTextEmission = 0;
				float positionalOpacity = 0;
				
				if (_TextFPSEnabled == 1)
				ApplyFPSText(poiFragData, poiMesh.uv[_TextFPSUV], poiMods);
				if (_TextPositionEnabled == 1)
				ApplyPositionText(poiFragData, poiMesh.uv[_TextPositionUV], poiMods);
				if (_TextTimeEnabled == 1)
				ApplyTimeText(poiFragData, poiMesh.uv[_TextTimeUV], poiMods);
				
				poiFragData.emission += globalTextEmission;
			}
			#endif
			
			#ifdef MOCHIE_POSTPROCESS
			float oetf_sRGB_scalar(float L) {
				float V = 1.055 * (pow(L, 1.0 / 2.4)) - 0.055;
				if (L <= 0.0031308)
				V = L * 12.92;
				return V;
			}
			
			float3 oetf_sRGB(float3 L) {
				return float3(oetf_sRGB_scalar(L.r), oetf_sRGB_scalar(L.g), oetf_sRGB_scalar(L.b));
			}
			
			float eotf_sRGB_scalar(float V) {
				float L = pow((V + 0.055) / 1.055, 2.4);
				if (V <= oetf_sRGB_scalar(0.0031308))
				L = V / 12.92;
				return L;
			}
			
			float3 GetHDR(float3 rgb) {
				return float3(eotf_sRGB_scalar(rgb.r), eotf_sRGB_scalar(rgb.g), eotf_sRGB_scalar(rgb.b));
			}
			
			float3 GetContrast(float3 col, float contrast){
				return lerp(float3(0.5,0.5,0.5), col, contrast);
			}
			
			float3 GetSaturation(float3 col, float interpolator){
				return lerp(dot(col, float3(0.3,0.59,0.11)), col, interpolator);
			}
			
			void applyPostProcessing(inout PoiFragData poiFragData, in PoiMesh poiMesh)
			{
				float3 col = poiFragData.finalColor;
				col = hueShift(col, _PPHue);
				col *= _PPTint;
				col *= _PPRGB;
				col = GetSaturation(col, _PPSaturation);
				col = lerp(col, GetHDR(col), _PPHDR);
				col = GetContrast(col, _PPContrast);
				col *= _PPBrightness;
				col += _PPLightness;
				
				#if defined(PROP_PPLUT) || !defined(OPTIMIZER_ENABLED)
				float3 satCol = saturate(col);
				float maxColor = COLORS - 1.0;
				float halfColX = 0.5 / _PPLUT_TexelSize.z;
				float halfColY = 0.5 / _PPLUT_TexelSize.w;
				float threshold = maxColor / COLORS;
				float xOffset = halfColX + satCol.r * threshold / COLORS;
				float yOffset = halfColY + satCol.g * threshold;
				float cell = floor(satCol.b * maxColor);
				float2 lutUV = float2(cell / COLORS + xOffset, yOffset);
				float3 lutSample = _PPLUT.Sample(sampler_PPLUT, lutUV);
				col = lerp(col, lutSample, _PPLUTStrength);
				#endif
				
				#if defined(PROP_PPMASK) || !defined(OPTIMIZER_ENABLED)
				float ppMask = POI2D_SAMPLER_PAN(_PPMask, _MainTex, poiUV(poiMesh.uv[_PPMaskUV], _PPMask_ST), _PPMaskPan).r;
				ppMask = lerp(ppMask, 1-ppMask, _PPMaskInvert);
				col = lerp(poiFragData.finalColor, col, ppMask);
				#endif
				
				poiFragData.finalColor = col;
			}
			#endif
			
			float4 frag(v2f i, uint facing : SV_IsFrontFace) : SV_Target
			/*
			#ifdef
			, out float depth : SV_DEPTH
			#endif
			*/
			{
				UNITY_SETUP_INSTANCE_ID(i);
				PoiMesh poiMesh;
				PoiInitStruct(PoiMesh, poiMesh);
				
				PoiLight poiLight;
				PoiInitStruct(PoiLight, poiLight);
				
				PoiVertexLights poiVertexLights;
				PoiInitStruct(PoiVertexLights, poiVertexLights);
				
				PoiCam poiCam;
				PoiInitStruct(PoiCam, poiCam);
				
				PoiMods poiMods;
				PoiInitStruct(PoiMods, poiMods);
				
				PoiFragData poiFragData;
				poiFragData.emission = 0;
				poiFragData.baseColor = float3(0, 0, 0);
				poiFragData.finalColor = float3(0, 0, 0);
				poiFragData.alpha = 1;
				
				// Mesh Data
				poiMesh.objectPosition = i.objectPos;
				poiMesh.objNormal = i.objNormal;
				poiMesh.normals[0] = i.normal;
				poiMesh.tangent = i.tangent;
				poiMesh.binormal = i.binormal;
				poiMesh.worldPos = i.worldPos.xyz;
				poiMesh.localPos = i.localPos.xyz;
				poiMesh.vertexColor = i.vertexColor;
				poiMesh.isFrontFace = facing;
				
				#ifndef POI_PASS_OUTLINE
				if (!poiMesh.isFrontFace)
				{
					poiMesh.normals[0] *= -1;
					poiMesh.tangent *= -1;
					poiMesh.binormal *= -1;
				}
				#endif
				
				poiCam.viewDir = !IsOrthographicCamera() ? normalize(_WorldSpaceCameraPos - i.worldPos.xyz) : normalize(UNITY_MATRIX_I_V._m02_m12_m22);
				float3 tanToWorld0 = float3(i.tangent.x, i.binormal.x, i.normal.x);
				float3 tanToWorld1 = float3(i.tangent.y, i.binormal.y, i.normal.y);
				float3 tanToWorld2 = float3(i.tangent.z, i.binormal.z, i.normal.z);
				float3 ase_tanViewDir = tanToWorld0 * poiCam.viewDir.x + tanToWorld1 * poiCam.viewDir.y + tanToWorld2 * poiCam.viewDir.z;
				poiCam.tangentViewDir = normalize(ase_tanViewDir);
				
				// 0-3 UV0-UV3
				// 4 Panosphere UV
				// 5 world pos xz
				// 6 Polar UV
				// 6 Distorted UV
				#if defined(LIGHTMAP_ON) || defined(DYNAMICLIGHTMAP_ON)
				poiMesh.lightmapUV = i.lightmapUV;
				#endif
				poiMesh.parallaxUV = poiCam.tangentViewDir.xy / max(poiCam.tangentViewDir.z, 0.0001);
				poiMesh.uv[0] = i.uv[0];
				poiMesh.uv[1] = i.uv[1];
				poiMesh.uv[2] = i.uv[2];
				poiMesh.uv[3] = i.uv[3];
				poiMesh.uv[4] = poiMesh.uv[0];
				poiMesh.uv[5] = poiMesh.worldPos.xz;
				poiMesh.uv[6] = poiMesh.uv[0];
				poiMesh.uv[7] = poiMesh.uv[0];
				
				poiMesh.uv[4] = calculatePanosphereUV(poiMesh);
				poiMesh.uv[6] = calculatePolarCoordinate(poiMesh);
				#ifdef USER_LUT
				poiMesh.uv[7] = distortedUV(poiMesh);
				#endif
				/*
				half3 worldViewUp = normalize(half3(0, 1, 0) - poiCam.viewDir * dot(poiCam.viewDir, half3(0, 1, 0)));
				half3 worldViewRight = normalize(cross(poiCam.viewDir, worldViewUp));
				poiMesh[8] = half2(dot(worldViewRight, poiMesh.normals[_MatcapNormal]), dot(worldViewUp, poiMesh.normals[_MatcapNormal])) * _MatcapBorder + 0.5;
				*/
				
				#ifdef POI_PARALLAX
				#ifndef POI_PASS_OUTLINE
				//return frac(i.tangentViewDir.x);
				//return float4(i.binormal.xyz,1);
				applyParallax(poiMesh, poiLight, poiCam);
				#endif
				#endif
				
				float4 mainTexture = UNITY_SAMPLE_TEX2D(_MainTex, poiUV(poiMesh.uv[_MainTexUV].xy, _MainTex_ST) + _Time.x * _MainTexPan);
				
				float3 mainNormal = UnpackScaleNormal(POI2D_SAMPLER_PAN(_BumpMap, _MainTex, poiUV(poiMesh.uv[_BumpMapUV], _BumpMap_ST), _BumpMapPan), _BumpScale);
				poiMesh.tangentSpaceNormal = mainNormal;
				
				#if defined(FINALPASS) && !defined(UNITY_PASS_SHADOWCASTER) && !defined(POI_PASS_OUTLINE)
				ApplyDetailNormal(poiMods, poiMesh);
				#endif
				
				#if defined(GEOM_TYPE_MESH) && defined(VIGNETTE) && !defined(UNITY_PASS_SHADOWCASTER) && !defined(POI_PASS_OUTLINE)
				calculateRGBNormals(poiMesh);
				#endif
				
				poiMesh.normals[1] = normalize(
				poiMesh.tangentSpaceNormal.x * poiMesh.tangent.xyz +
				poiMesh.tangentSpaceNormal.y * poiMesh.binormal +
				poiMesh.tangentSpaceNormal.z * poiMesh.normals[0]
				);
				
				// I'm just testing this because it makes it the same as if there is no normal map in the slot
				float3 fancyNormal = UnpackNormal(float4(0.5, 0.5, 1, 1));
				poiMesh.normals[0] = normalize(
				fancyNormal.x * poiMesh.tangent.xyz +
				fancyNormal.y * poiMesh.binormal +
				fancyNormal.z * poiMesh.normals[0]
				);
				
				// Camera data
				poiCam.forwardDir = getCameraForward();
				poiCam.worldPos = _WorldSpaceCameraPos;
				poiCam.reflectionDir = reflect(-poiCam.viewDir, poiMesh.normals[1]);
				//poiCam.distanceToModel = distance(poiMesh.modelPos, poiCam.worldPos);
				poiCam.distanceToVert = distance(poiMesh.worldPos, poiCam.worldPos);
				poiCam.grabPos = i.grabPos;
				poiCam.screenUV = calcScreenUVs(i.grabPos);
				poiCam.vDotN = abs(dot(poiCam.viewDir, poiMesh.normals[1]));
				poiCam.clipPos = i.pos;
				poiCam.worldDirection = i.worldDirection;
				
				calculateGlobalThemes(poiMods);
				
				#ifdef COLOR_GRADING_LOG_VIEW
				SetupAudioLink(poiFragData, poiMods, poiMesh);
				#endif
				
				poiLight.finalLightAdd = 0;
				#if defined(PROP_LIGHTINGAOMAPS) || !defined(OPTIMIZER_ENABLED)
				float4 AOMaps = POI2D_SAMPLER_PAN(_LightingAOMaps, _MainTex, poiUV(poiMesh.uv[_LightingAOMapsUV], _LightingAOMaps_ST), _LightingAOMapsPan);
				poiLight.occlusion = lerp(1, AOMaps.r, _LightDataAOStrengthR) * lerp(1, AOMaps.g, _LightDataAOStrengthG) * lerp(1, AOMaps.b, _LightDataAOStrengthB) * lerp(1, AOMaps.a, _LightDataAOStrengthA);
				#else
				poiLight.occlusion = 1;
				#endif
				#if defined(PROP_LIGHTINGDETAILSHADOWMAPS) || !defined(OPTIMIZER_ENABLED)
				float4 DetailShadows = POI2D_SAMPLER_PAN(_LightingDetailShadowMaps, _MainTex, poiUV(poiMesh.uv[_LightingDetailShadowMapsUV], _LightingDetailShadowMaps_ST), _LightingDetailShadowMapsPan);
				poiLight.detailShadow = lerp(1, DetailShadows.r, _LightingDetailShadowStrengthR) * lerp(1, DetailShadows.g, _LightingDetailShadowStrengthG) * lerp(1, DetailShadows.b, _LightingDetailShadowStrengthB) * lerp(1, DetailShadows.a, _LightingDetailShadowStrengthA);
				#else
				poiLight.detailShadow = 1;
				#endif
				#if defined(PROP_LIGHTINGSHADOWMASKS) || !defined(OPTIMIZER_ENABLED)
				float4 ShadowMasks = POI2D_SAMPLER_PAN(_LightingShadowMasks, _MainTex, poiUV(poiMesh.uv[_LightingShadowMasksUV], _LightingShadowMasks_ST), _LightingShadowMasksPan);
				poiLight.shadowMask = lerp(1, ShadowMasks.r, _LightingShadowMaskStrengthR) * lerp(1, ShadowMasks.g, _LightingShadowMaskStrengthG) * lerp(1, ShadowMasks.b, _LightingShadowMaskStrengthB) * lerp(1, ShadowMasks.a, _LightingShadowMaskStrengthA);
				#else
				poiLight.shadowMask = 1;
				#endif
				
				#ifdef UNITY_PASS_FORWARDBASE
				
				bool lightExists = false;
				if (any(_LightColor0.rgb >= 0.002))
				{
					lightExists = true;
				}
				
				#if defined(VERTEXLIGHT_ON) && defined(POI_VERTEXLIGHT_ON)
				float4 toLightX = unity_4LightPosX0 - i.worldPos.x;
				float4 toLightY = unity_4LightPosY0 - i.worldPos.y;
				float4 toLightZ = unity_4LightPosZ0 - i.worldPos.z;
				float4 lengthSq = 0;
				lengthSq += toLightX * toLightX;
				lengthSq += toLightY * toLightY;
				lengthSq += toLightZ * toLightZ;
				
				float4 lightAttenSq = unity_4LightAtten0;
				float4 atten = 1.0 / (1.0 + lengthSq * lightAttenSq);
				float4 vLightWeight = saturate(1 - (lengthSq * lightAttenSq / 25));
				poiLight.vAttenuation = min(atten, vLightWeight * vLightWeight);
				
				poiLight.vDotNL = 0;
				poiLight.vDotNL += toLightX * poiMesh.normals[1].x;
				poiLight.vDotNL += toLightY * poiMesh.normals[1].y;
				poiLight.vDotNL += toLightZ * poiMesh.normals[1].z;
				
				float4 corr = rsqrt(lengthSq);
				poiLight.vDotNL = max(0, poiLight.vDotNL * corr);
				poiLight.vAttenuationDotNL = poiLight.vAttenuation * poiLight.vDotNL;
				
				for (int index = 0; index < 4; index++)
				{
					poiLight.vPosition[index] = float3(unity_4LightPosX0[index], unity_4LightPosY0[index], unity_4LightPosZ0[index]);
					
					float3 vertexToLightSource = poiLight.vPosition[index] - poiMesh.worldPos;
					poiLight.vDirection[index] = normalize(vertexToLightSource);
					//poiLight.vAttenuationDotNL[index] = 1.0 / (1.0 + unity_4LightAtten0[index] * poiLight.vDotNL[index]);
					poiLight.vColor[index] = unity_LightColor[index].rgb;
					//UNITY_BRANCH
					if (_LightingAdditiveLimitIntensity == 1)
					{
						float intensity = max(0.001, (0.299 * poiLight.vColor[index].r + 0.587 * poiLight.vColor[index].g + 0.114 * poiLight.vColor[index].b));
						poiLight.vColor[index] = min(poiLight.vColor[index], poiLight.vColor[index] / (intensity / _LightingAdditiveMaxIntensity));
					}
					poiLight.vHalfDir[index] = Unity_SafeNormalize(poiLight.vDirection[index] + poiCam.viewDir);
					poiLight.vDotNL[index] = dot(poiMesh.normals[1], -poiLight.vDirection[index]);
					poiLight.vCorrectedDotNL[index] = .5 * (poiLight.vDotNL[index] + 1);
					poiLight.vDotLH[index] = saturate(dot(poiLight.vDirection[index], poiLight.vHalfDir[index]));
					
					poiLight.vDotNH[index] = saturate(dot(poiMesh.normals[1], poiLight.vHalfDir[index]));
				}
				#endif
				
				//UNITY_BRANCH
				if (_LightingColorMode == 0) // Poi Custom Light Color
				
				{
					float3 magic = max(BetterSH9(normalize(unity_SHAr + unity_SHAg + unity_SHAb)), 0);
					float3 normalLight = _LightColor0.rgb + BetterSH9(float4(0, 0, 0, 1));
					
					float magiLumi = calculateluminance(magic);
					float normaLumi = calculateluminance(normalLight);
					float maginormalumi = magiLumi + normaLumi;
					
					float magiratio = magiLumi / maginormalumi;
					float normaRatio = normaLumi / maginormalumi;
					
					float target = calculateluminance(magic * magiratio + normalLight * normaRatio);
					float3 properLightColor = magic + normalLight;
					float properLuminance = calculateluminance(magic + normalLight);
					poiLight.directColor = properLightColor * max(0.0001, (target / properLuminance));
					
					poiLight.indirectColor = BetterSH9(float4(lerp(0, poiMesh.normals[1], _LightingIndirectUsesNormals), 1));
				}
				
				//UNITY_BRANCH
				if (_LightingColorMode == 1) // More standard approach to light color
				
				{
					float3 indirectColor = BetterSH9(float4(poiMesh.normals[1], 1));
					if (lightExists)
					{
						poiLight.directColor = _LightColor0.rgb;
						poiLight.indirectColor = indirectColor;
					}
					else
					{
						poiLight.directColor = indirectColor * 0.6;
						poiLight.indirectColor = indirectColor * 0.5;
					}
				}
				
				if (_LightingColorMode == 2) // UTS style
				
				{
					poiLight.indirectColor = saturate(max(half3(0.05, 0.05, 0.05) * _Unlit_Intensity, max(ShadeSH9(half4(0.0, 0.0, 0.0, 1.0)), ShadeSH9(half4(0.0, -1.0, 0.0, 1.0)).rgb) * _Unlit_Intensity));
					poiLight.directColor = max(poiLight.indirectColor, _LightColor0.rgb);
				}
				
				float lightMapMode = _LightingMapMode;
				//UNITY_BRANCH
				if (_LightingDirectionMode == 0)
				{
					poiLight.direction = _WorldSpaceLightPos0.xyz + unity_SHAr.xyz + unity_SHAg.xyz + unity_SHAb.xyz;
				}
				if (_LightingDirectionMode == 1 || _LightingDirectionMode == 2)
				{
					//UNITY_BRANCH
					if (_LightingDirectionMode == 1)
					{
						poiLight.direction = mul(unity_ObjectToWorld, _LightngForcedDirection).xyz;;
					}
					//UNITY_BRANCH
					if (_LightingDirectionMode == 2)
					{
						poiLight.direction = _LightngForcedDirection;
					}
					if (lightMapMode == 0)
					{
						lightMapMode == 1;
					}
				}
				
				if (_LightingDirectionMode == 3) // UTS
				
				{
					float3 defaultLightDirection = normalize(UNITY_MATRIX_V[2].xyz + UNITY_MATRIX_V[1].xyz);
					float3 lightDirection = normalize(lerp(defaultLightDirection, _WorldSpaceLightPos0.xyz, any(_WorldSpaceLightPos0.xyz)));
					poiLight.direction = lightDirection;
				}
				
				poiLight.direction = normalize(poiLight.direction);
				poiLight.attenuationStrength = _LightingCastedShadows;
				poiLight.attenuation = 1;
				if (!all(_LightColor0.rgb == 0.0))
				{
					UNITY_LIGHT_ATTENUATION(attenuation, i, poiMesh.worldPos)
					poiLight.attenuation *= attenuation;
				}
				
				poiLight.halfDir = normalize(poiLight.direction + poiCam.viewDir);
				poiLight.nDotL = dot(poiMesh.normals[1], poiLight.direction);
				poiLight.nDotLSaturated = saturate(poiLight.nDotL);
				poiLight.nDotLNormalized = (poiLight.nDotL + 1) * 0.5;
				poiLight.nDotV = abs(dot(poiMesh.normals[1], poiCam.viewDir));
				poiLight.nDotH = max(0.00001, dot(poiMesh.normals[1], poiLight.halfDir));
				poiLight.lDotv = dot(poiLight.direction, poiCam.viewDir);
				poiLight.lDotH = max(0.00001, dot(poiLight.direction, poiLight.halfDir));
				
				//UNITY_BRANCH
				if (lightMapMode == 0) // Poi special light map
				
				{
					float3 ShadeSH9Plus = GetSHLength();
					float3 ShadeSH9Minus = float3(unity_SHAr.w, unity_SHAg.w, unity_SHAb.w) + float3(unity_SHBr.z, unity_SHBg.z, unity_SHBb.z) / 3.0;
					
					float3 greyScaleVector = float3(.33333, .33333, .33333);
					float bw_lightColor = dot(poiLight.directColor, greyScaleVector);
					float bw_directLighting = (((poiLight.nDotL * 0.5 + 0.5) * bw_lightColor * lerp(1, poiLight.attenuation, poiLight.attenuationStrength)) + dot(ShadeSH9(float4(poiMesh.normals[1], 1)), greyScaleVector));
					float bw_bottomIndirectLighting = dot(ShadeSH9Minus, greyScaleVector);
					float bw_topIndirectLighting = dot(ShadeSH9Plus, greyScaleVector);
					float lightDifference = ((bw_topIndirectLighting + bw_lightColor) - bw_bottomIndirectLighting);
					poiLight.lightMap = smoothstep(0, lightDifference, bw_directLighting - bw_bottomIndirectLighting) * poiLight.detailShadow;
				}
				//UNITY_BRANCH
				if (lightMapMode == 1) // Normalized nDotL
				
				{
					poiLight.lightMap = poiLight.nDotLNormalized;
				}
				//UNITY_BRANCH
				if (lightMapMode == 2) // Saturated nDotL
				
				{
					poiLight.lightMap = poiLight.nDotLSaturated;
				}
				
				poiLight.directColor = max(poiLight.directColor, poiLight.directColor / max(0.0001, (calculateluminance(poiLight.directColor) / _LightingMinLightBrightness)));
				poiLight.indirectColor = max(poiLight.indirectColor, poiLight.indirectColor / max(0.0001, (calculateluminance(poiLight.indirectColor) / _LightingMinLightBrightness)));
				
				poiLight.directColor = lerp(poiLight.directColor, dot(poiLight.directColor, float3(0.299, 0.587, 0.114)), _LightingMonochromatic);
				poiLight.indirectColor = lerp(poiLight.indirectColor, dot(poiLight.indirectColor, float3(0.299, 0.587, 0.114)), _LightingMonochromatic);
				//UNITY_BRANCH
				if (_LightingCapEnabled)
				{
					poiLight.directColor = min(poiLight.directColor, _LightingCap);
					poiLight.indirectColor = min(poiLight.indirectColor, _LightingCap);
				}
				
				//UNITY_BRANCH
				if (_LightingForceColorEnabled)
				{
					poiLight.directColor = poiThemeColor(poiMods, _LightingForcedColor, _LightingForcedColorThemeIndex);
				}
				
				#ifdef UNITY_PASS_FORWARDBASE
				poiLight.directColor = max(poiLight.directColor * _PPLightingMultiplier, 0);
				poiLight.directColor = max(poiLight.directColor + _PPLightingAddition, 0);
				poiLight.indirectColor = max(poiLight.indirectColor * _PPLightingMultiplier, 0);
				poiLight.indirectColor = max(poiLight.indirectColor + _PPLightingAddition, 0);
				#endif
				
				#endif
				
				#ifdef UNITY_PASS_FORWARDADD
				#ifndef POI_LIGHT_DATA_ADDITIVE_ENABLE
				return float4(mainTexture.rgb * .0001, 1);
				#endif
				
				#if defined(POI_LIGHT_DATA_ADDITIVE_DIRECTIONAL_ENABLE) && defined(DIRECTIONAL)
				return float4(mainTexture.rgb * .0001, 1);
				#endif
				
				#if defined(POINT) || defined(SPOT)
				poiLight.direction = normalize(_WorldSpaceLightPos0.xyz - i.worldPos.xyz);
				
				#ifdef POINT
				poiLight.additiveShadow = UNITY_SHADOW_ATTENUATION(input, poiMesh.worldPos);
				unityShadowCoord3 lightCoord = mul(unity_WorldToLight, unityShadowCoord4(poiMesh.worldPos, 1)).xyz;
				poiLight.attenuation = tex2D(_LightTexture0, dot(lightCoord, lightCoord).rr).r;
				#endif
				
				#ifdef SPOT
				poiLight.additiveShadow = UNITY_SHADOW_ATTENUATION(i, poiMesh.worldPos);
				unityShadowCoord4 lightCoord = mul(unity_WorldToLight, unityShadowCoord4(poiMesh.worldPos, 1));
				poiLight.attenuation = (lightCoord.z > 0) * UnitySpotCookie(lightCoord) * UnitySpotAttenuate(lightCoord.xyz);
				#endif
				#else
				poiLight.direction = _WorldSpaceLightPos0.xyz;
				UNITY_LIGHT_ATTENUATION(attenuation, i, poiMesh.worldPos)
				poiLight.additiveShadow == 0;
				poiLight.attenuation = attenuation;
				#endif
				poiLight.directColor = _LightingAdditiveLimited ? min(_LightingAdditiveLimit, _LightColor0.rgb) : _LightColor0.rgb;
				
				#if defined(POINT_COOKIE) || defined(DIRECTIONAL_COOKIE)
				poiLight.indirectColor = 0;
				#else
				poiLight.indirectColor = lerp(0, poiLight.directColor, _LightingAdditivePassthrough);
				#endif
				
				poiLight.directColor = lerp(poiLight.directColor, dot(poiLight.directColor, float3(0.299, 0.587, 0.114)), _LightingAdditiveMonochromatic);
				poiLight.indirectColor = lerp(poiLight.indirectColor, dot(poiLight.indirectColor, float3(0.299, 0.587, 0.114)), _LightingAdditiveMonochromatic);
				
				poiLight.halfDir = normalize(poiLight.direction + poiCam.viewDir);
				poiLight.nDotL = dot(poiMesh.normals[1], poiLight.direction);
				poiLight.nDotLSaturated = saturate(poiLight.nDotL);
				poiLight.nDotLNormalized = (poiLight.nDotL + 1) * 0.5;
				poiLight.nDotV = dot(poiMesh.normals[1], poiCam.viewDir);
				poiLight.nDotH = dot(poiMesh.normals[1], poiLight.halfDir);
				poiLight.lDotv = dot(poiLight.direction, poiCam.viewDir);
				poiLight.lDotH = dot(poiLight.direction, poiLight.halfDir);
				poiLight.lightMap = 1;
				#endif
				
				#ifdef POI_LIGHT_DATA_DEBUG
				
				#ifdef UNITY_PASS_FORWARDBASE
				//UNITY_BRANCH
				if (_LightingDebugVisualize <= 6)
				{
					switch(_LightingDebugVisualize)
					{
						case 0: // Direct Light Color
						return float4(poiLight.directColor + mainTexture.rgb * .0001, 1);
						break;
						case 1: // Indirect Light Color
						return float4(poiLight.indirectColor + mainTexture.rgb * .0001, 1);
						break;
						case 2: // Light Map
						return float4(poiLight.lightMap + mainTexture.rgb * .0001, 1);
						break;
						case 3: // Attenuation
						return float4(poiLight.attenuation + mainTexture.rgb * .0001, 1);
						break;
						case 4: // N Dot L
						return float4(poiLight.nDotLNormalized, poiLight.nDotLNormalized, poiLight.nDotLNormalized, 1) + mainTexture * .0001;
						break;
						case 5:
						return float4(poiLight.halfDir, 1) + mainTexture * .0001;
						break;
						case 6:
						return float4(poiLight.direction, 1) + mainTexture * .0001;
						break;
					}
				}
				else
				{
					return POI_SAFE_RGB1;
				}
				#endif
				#ifdef UNITY_PASS_FORWARDADD
				//UNITY_BRANCH
				if (_LightingDebugVisualize < 6)
				{
					return POI_SAFE_RGB1;
				}
				else
				{
					switch(_LightingDebugVisualize)
					{
						case 7:
						return float4(poiLight.directColor * poiLight.attenuation + mainTexture.rgb * .0001, 1);
						break;
						case 8:
						return float4(poiLight.attenuation + mainTexture.rgb * .0001, 1);
						break;
						case 9:
						return float4(poiLight.additiveShadow + mainTexture.rgb * .0001, 1);
						break;
						case 10:
						return float4(poiLight.nDotLNormalized + mainTexture.rgb * .0001, 1);
						break;
						case 11:
						return float4(poiLight.halfDir, 1) + mainTexture * .0001;
						break;
					}
				}
				#endif
				#endif
				
				#ifdef POI_UDIMDISCARD
				applyUDIMDiscard(poiFragData, poiMesh);
				#endif
				
				poiFragData.baseColor = mainTexture.rgb * poiThemeColor(poiMods, _Color.rgb, _ColorThemeIndex);
				poiFragData.alpha = mainTexture.a * _Color.a;
				
				#ifdef COLOR_GRADING_HDR
				#if defined(PROP_MAINCOLORADJUSTTEXTURE) || !defined(OPTIMIZER_ENABLED)
				float4 hueShiftAlpha = POI2D_SAMPLER_PAN(_MainColorAdjustTexture, _MainTex, poiUV(poiMesh.uv[_MainColorAdjustTextureUV], _MainColorAdjustTexture_ST), _MainColorAdjustTexturePan);
				#else
				float4 hueShiftAlpha = 1;
				#endif
				
				if (_MainHueShiftToggle)
				{
					float shift = _MainHueShift;
					#ifdef COLOR_GRADING_LOG_VIEW
					//UNITY_BRANCH
					if (poiMods.audioLinkAvailable && _MainHueALCTEnabled)
					{
						shift += AudioLinkGetChronoTime(_MainALHueShiftCTIndex, _MainALHueShiftBand) * _MainHueALMotionSpeed;
					}
					#endif
					if (_MainHueShiftReplace)
					{
						poiFragData.baseColor = lerp(poiFragData.baseColor, hueShift(poiFragData.baseColor, shift + _MainHueShiftSpeed * _Time.x), hueShiftAlpha.r);
					}
					else
					{
						poiFragData.baseColor = hueShift(poiFragData.baseColor, frac((shift - (1 - hueShiftAlpha.r) + _MainHueShiftSpeed * _Time.x)));
					}
				}
				poiFragData.baseColor = lerp(poiFragData.baseColor, dot(poiFragData.baseColor, float3(0.3, 0.59, 0.11)), -_Saturation * hueShiftAlpha.b);
				poiFragData.baseColor = saturate(poiFragData.baseColor + _MainBrightness * hueShiftAlpha.g);
				#endif
				
				#if defined(PROP_CLIPPINGMASK) || !defined(OPTIMIZER_ENABLED)
				float alphaMask = POI2D_SAMPLER_PAN(_ClippingMask, _MainTex, poiUV(poiMesh.uv[_ClippingMaskUV], _ClippingMask_ST), _ClippingMaskPan).r;
				if (_Inverse_Clipping)
				{
					alphaMask = 1 - alphaMask;
				}
				#else
				float alphaMask = 1;
				#endif
				
				poiFragData.alpha *= alphaMask;
				
				applyAlphaOptions(poiFragData, poiMesh, poiCam, poiMods);
				
				#ifdef FINALPASS
				ApplyDetailColor(poiFragData, poiMesh, poiMods);
				#endif
				
				applyVertexColor(poiFragData, poiMesh);
				
				#ifdef POI_BACKFACE
				ApplyBackFaceColor(poiFragData, poiMesh, poiMods);
				#endif
				
				#ifdef VIGNETTE
				calculateRGBMask(poiFragData, poiMesh, poiMods);
				#endif
				
				#ifdef GEOM_TYPE_BRANCH
				applyDecals(poiFragData, poiMesh, poiCam, poiMods, poiLight);
				#endif
				
				#ifdef DISTORT
				applyDissolve(poiFragData, poiMesh, poiMods);
				#endif
				
				#if defined(_LIGHTINGMODE_SHADEMAP) && defined(VIGNETTE_MASKED)
				#ifndef POI_PASS_OUTLINE
				applyShadeMapping(poiFragData, poiMesh, poiLight);
				#endif
				#endif
				
				#ifdef VIGNETTE_MASKED
				#ifdef POI_PASS_OUTLINE
				//UNITY_BRANCH
				if (_OutlineLit)
				{
					calculateShading(poiLight, poiFragData, poiMesh, poiCam);
				}
				else
				{
					poiLight.finalLighting = 1;
				}
				#else
				calculateShading(poiLight, poiFragData, poiMesh, poiCam);
				#endif
				#else
				poiLight.finalLighting = 1;
				poiLight.rampedLightMap = aaBlurStep(poiLight.nDotL, 0.1, .1);
				#endif
				
				#if defined(POI_MATCAP0) || defined(COLOR_GRADING_HDR_3D)
				applyMatcap(poiFragData, poiCam, poiMesh, poiLight, poiMods);
				#endif
				
				#ifdef _CUBEMAP
				applyCubemap(poiFragData, poiCam, poiMesh, poiLight, poiMods);
				#endif
				
				#ifdef COLOR_GRADING_LOG_VIEW
				#ifdef POI_AL_DECAL
				ApplyAudioLinkDecal(poiMesh, poiFragData, poiMods);
				#endif
				#endif
				
				#ifdef _SUNDISK_HIGH_QUALITY
				applyFlipbook(poiFragData, poiMesh, poiMods);
				#endif
				
				#ifdef _GLOSSYREFLECTIONS_OFF
				ApplyRimLighting(poiFragData, poiMesh, poiCam, poiLight, poiMods);
				#endif
				
				#ifdef _SUNDISK_SIMPLE
				applyGlitter(poiFragData, poiMesh, poiCam, poiLight, poiMods);
				#endif
				
				#ifdef POI_STYLIZED_StylizedSpecular
				stylizedSpecular(poiFragData, poiCam, poiLight, poiMesh, poiMods);
				#endif
				
				#ifdef POI_PATHING
				applyPathing(poiFragData, poiMesh, poiMods);
				#endif
				
				#ifdef POI_MIRROR
				applyMirror(poiFragData, poiMesh);
				#endif
				
				#ifdef POI_IRIDESCENCE
				applyIridescence(poiFragData, poiMesh, poiCam);
				#endif
				
				#ifdef EFFECT_BUMP
				ApplyTextOverlayColor(poiFragData, poiMesh, poiMods);
				#endif
				
				UNITY_BRANCH
				if (_AlphaPremultiply)
				{
					poiFragData.baseColor *= saturate(poiFragData.alpha);
				}
				poiFragData.finalColor = poiFragData.baseColor;
				
				poiFragData.finalColor = poiFragData.baseColor * poiLight.finalLighting;
				poiFragData.finalColor += poiLight.finalLightAdd;
				
				#if defined(MOCHIE_PBR)
				MochieBRDF(poiFragData, poiCam, poiLight, poiMesh, poiMods);
				#endif
				
				#ifdef _COLORCOLOR_ON
				calculateAndApplyClearCoat(poiFragData, poiMesh, poiCam, poiLight, poiMods);
				#endif
				
				#ifdef POI_ENVIRORIM
				applyEnvironmentRim(poiFragData, poiMesh, poiCam);
				#endif
				
				#ifdef GRAIN
				applyDepthFX(poiFragData, poiCam, poiMesh, poiMods);
				#endif
				
				#if defined(_EMISSION) || defined(POI_EMISSION_1) || defined(POI_EMISSION_2) || defined(POI_EMISSION_3)
				float3 emissionBaseReplace = 0;
				#endif
				
				#ifdef _EMISSION
				emissionBaseReplace += applyEmission(poiFragData, poiMesh, poiLight, poiCam, poiMods);
				#endif
				#ifdef POI_EMISSION_1
				emissionBaseReplace += applyEmission1(poiFragData, poiMesh, poiLight, poiCam, poiMods);
				#endif
				#ifdef POI_EMISSION_2
				emissionBaseReplace += applyEmission2(poiFragData, poiMesh, poiLight, poiCam, poiMods);
				#endif
				#ifdef POI_EMISSION_3
				emissionBaseReplace += applyEmission3(poiFragData, poiMesh, poiLight, poiCam, poiMods);
				#endif
				
				#if defined(_EMISSION) || defined(POI_EMISSION_1) || defined(POI_EMISSION_2) || defined(POI_EMISSION_3)
				poiFragData.finalColor.rgb = lerp(poiFragData.finalColor.rgb, saturate(emissionBaseReplace), poiMax(emissionBaseReplace));
				#endif
				
				if (_Mode == 1)
				{
					clip(poiFragData.alpha - _Cutoff);
				}
				
				//UNITY_BRANCH
				if (_IgnoreFog == 0)
				{
					UNITY_APPLY_FOG(i.fogCoord, poiFragData.finalColor);
				}
				
				poiFragData.alpha = _AlphaForceOpaque ? 1 : poiFragData.alpha;
				
				ApplyAlphaToCoverage(poiFragData, poiMesh);
				
				applyDithering(poiFragData, poiCam);
				
				#ifdef UNITY_PASS_FORWARDBASE
				poiFragData.emission = max(poiFragData.emission * _PPEmissionMultiplier, 0);
				poiFragData.finalColor = max(poiFragData.finalColor * _PPFinalColorMultiplier, 0);
				#endif
				
				#ifdef MOCHIE_POSTPROCESS
				applyPostProcessing(poiFragData, poiMesh);
				#endif
				
				//#ifndef UNITY_PASS_SHADOWCASTER
				if (_Mode == POI_MODE_OPAQUE)
				{
					poiFragData.alpha = 1;
				}
				
				if (_Mode == POI_MODE_FADE)
				{
					clip(poiFragData.alpha -= 0.01);
				}
				
				return float4(poiFragData.finalColor + poiFragData.emission, poiFragData.alpha) + mainTexture * 0.0001;
				//#else
				//	SHADOW_CASTER_FRAGMENT(i)
				//#endif
				
			}
			
			ENDCG
			
		}
		
		Pass
		{
			Tags { "LightMode" = "ForwardAdd" }
			
			Stencil
			{
				Ref [_StencilRef]
				ReadMask [_StencilReadMask]
				WriteMask [_StencilWriteMask]
				Comp [_StencilCompareFunction]
				Pass [_StencilPassOp]
				Fail [_StencilFailOp]
				ZFail [_StencilZFailOp]
			}
			
			ZWrite Off
			Cull [_Cull]
			AlphaToMask [_AlphaToCoverage]
			ZTest [_ZTest]
			ColorMask [_ColorMask]
			Offset [_OffsetFactor], [_OffsetUnits]
			
			BlendOp [_BlendOp], [_BlendOpAlpha]
			Blend One One
			
			CGPROGRAM
			
			#pragma target 5.0
			
			#pragma shader_feature_local POI_UDIMDISCARD
			
			#pragma shader_feature USER_LUT
			
			#pragma shader_feature_local POI_PARALLAX
			
			#pragma shader_feature COLOR_GRADING_LOG_VIEW
			
			#pragma shader_feature_local POI_LIGHT_DATA_DEBUG
			#pragma shader_feature_local POI_LIGHT_DATA_ADDITIVE_ENABLE
			#pragma shader_feature_local POI_LIGHT_DATA_ADDITIVE_DIRECTIONAL_ENABLE
			#pragma shader_feature_local POI_VERTEXLIGHT_ON
			
			#pragma shader_feature COLOR_GRADING_HDR
			
			//#pragma shader_feature KEYWORD
			
			#pragma shader_feature FINALPASS
			
			#pragma shader_feature AUTO_EXPOSURE
			
			#pragma shader_feature_local POI_BACKFACE
			
			#pragma shader_feature VIGNETTE
			#pragma shader_feature GEOM_TYPE_MESH
			
			#pragma shader_feature GEOM_TYPE_BRANCH
			#pragma shader_feature GEOM_TYPE_BRANCH_DETAIL
			#pragma shader_feature GEOM_TYPE_FROND
			#pragma shader_feature DEPTH_OF_FIELD_COC_VIEW
			
			#pragma shader_feature DISTORT
			
			#pragma shader_feature VIGNETTE_MASKED
			#pragma shader_feature_local _LIGHTINGMODE_TEXTURERAMP _LIGHTINGMODE_MATHRAMP _LIGHTINGMODE_SHADEMAP _LIGHTINGMODE_REALISTIC _LIGHTINGMODE_WRAPPED _LIGHTINGMODE_SKIN _LIGHTINGMODE_FLAT _LIGHTINGMODE_CLOTH
			#pragma shader_feature_local POI_CLOTHLERP
			
			#pragma shader_feature COLOR_GRADING_HDR_3D
			#pragma shader_feature_local POI_MATCAP0
			#pragma shader_feature_local POI_MATCAP0_CUSTOM_NORMAL
			#pragma shader_feature_local POI_MATCAP1_CUSTOM_NORMAL
			
			#pragma shader_feature_local _CUBEMAP
			
			#pragma shader_feature_local POI_AL_DECAL
			
			#pragma shader_feature _SUNDISK_HIGH_QUALITY
			
			#pragma shader_feature _EMISSION
			#pragma shader_feature_local POI_EMISSION_1
			#pragma shader_feature_local POI_EMISSION_2
			#pragma shader_feature_local POI_EMISSION_3
			
			#pragma shader_feature _GLOSSYREFLECTIONS_OFF
			
			#pragma shader_feature _SUNDISK_SIMPLE
			
			#pragma shader_feature_local MOCHIE_PBR
			
			#pragma shader_feature_local _COLORCOLOR_ON
			
			#pragma shader_feature_local POI_ENVIRORIM
			
			#pragma shader_feature_local POI_STYLIZED_StylizedSpecular
			
			#pragma shader_feature_local POI_PATHING
			
			#pragma shader_feature_local POI_MIRROR
			
			#pragma shader_feature GRAIN
			
			#pragma shader_feature_local POI_IRIDESCENCE
			
			#pragma shader_feature EFFECT_BUMP
			
			#pragma shader_feature_local MOCHIE_POSTPROCESS
			
			#pragma multi_compile_fwdadd_fullshadows
			#pragma multi_compile_instancing
			#pragma multi_compile_fog
			#define POI_PASS_ADD
			
			// UNITY Includes
			#include "UnityCG.cginc"
			#include "UnityStandardUtils.cginc"
			#include "AutoLight.cginc"
			#include "UnityLightingCommon.cginc"
			#include "UnityPBSLighting.cginc"
			#pragma vertex vert
			#pragma fragment frag
			
			#define DielectricSpec float4(0.04, 0.04, 0.04, 1.0 - 0.04)
			#define pi float(3.14159265359)
			
			#define POI2D_SAMPLER_PAN(tex, texSampler, uv, pan) (UNITY_SAMPLE_TEX2D_SAMPLER(tex, texSampler, uv + _Time.x * pan))
			#define POI2D_SAMPLER_PANGRAD(tex, texSampler, uv, pan, ddx, ddy) (UNITY_SAMPLE_TEX2D_SAMPLER(tex, texSampler, uv + _Time.x * pan, ddx, ddy))
			#define POI2D_SAMPLER(tex, texSampler, uv) (UNITY_SAMPLE_TEX2D_SAMPLER(tex, texSampler, uv))
			#define POI2D_PAN(tex, uv, pan) (tex2D(tex, uv + _Time.x * pan))
			#define POI2D(tex, uv) (tex2D(tex, uv))
			#define POI_SAMPLE_TEX2D(tex, uv) (UNITY_SAMPLE_TEX2D(tex, uv))
			#define POI_SAMPLE_TEX2D_PAN(tex, uv, pan) (UNITY_SAMPLE_TEX2D(tex, uv + _Time.x * pan))
			
			#define POI2D_MAINTEX_SAMPLER_PAN_INLINED(tex, poiMesh) (POI2D_SAMPLER_PAN(tex, _MainTex, poiUV(poiMesh.uv[tex##UV], tex##_ST), tex##Pan))
			
			#define POI_SAFE_RGB1 float4(mainTexture.rgb * .0001, 1)
			#define POI_SAFE_RGBA mainTexture
			
			#if defined(UNITY_COMPILER_HLSL)
			#define PoiInitStruct(type, name) name = (type)0;
			#else
			#define PoiInitStruct(type, name)
			#endif
			
			#define POI_ERROR(poiMesh, gridSize) lerp(float3(1, 0, 1), float3(0, 0, 0), fmod(floor((poiMesh.worldPos.x) * gridSize) + floor((poiMesh.worldPos.y) * gridSize) + floor((poiMesh.worldPos.z) * gridSize), 2) == 0)
			
			#define POI_MODE_OPAQUE 0
			#define POI_MODE_CUTOUT 1
			#define POI_MODE_FADE 2
			#define POI_MODE_TRANSPARENT 3
			#define POI_MODE_ADDITIVE 4
			#define POI_MODE_SOFTADDITIVE 5
			#define POI_MODE_MULTIPLICATIVE 6
			#define POI_MODE_2XMULTIPLICATIVE 7
			#define POI_MODE_TRANSCLIPPING 9
			
			/*
			Texture2D ;
			float4 _ST;
			float2 Pan;
			float UV;
			
			[HideInInspector][ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3, Panosphere, 4, World Pos XZ, 5, Polar UV, 6, Distorted UV, 7 )]
			*/
			// Map of where features in AudioLink are.
			#define ALPASS_DFT                      uint2(0,4)   //Size: 128, 2
			#define ALPASS_WAVEFORM                 uint2(0,6)   //Size: 128, 16
			#define ALPASS_AUDIOLINK                uint2(0,0)   //Size: 128, 4
			#define ALPASS_AUDIOBASS                uint2(0,0)   //Size: 128, 1
			#define ALPASS_AUDIOLOWMIDS             uint2(0,1)   //Size: 128, 1
			#define ALPASS_AUDIOHIGHMIDS            uint2(0,2)   //Size: 128, 1
			#define ALPASS_AUDIOTREBLE              uint2(0,3)   //Size: 128, 1
			#define ALPASS_AUDIOLINKHISTORY         uint2(1,0)   //Size: 127, 4
			#define ALPASS_GENERALVU                uint2(0,22)  //Size: 12, 1
			#define ALPASS_CCINTERNAL               uint2(12,22) //Size: 12, 2
			#define ALPASS_CCCOLORS                 uint2(25,22) //Size: 11, 1
			#define ALPASS_CCSTRIP                  uint2(0,24)  //Size: 128, 1
			#define ALPASS_CCLIGHTS                 uint2(0,25)  //Size: 128, 2
			#define ALPASS_AUTOCORRELATOR           uint2(0,27)  //Size: 128, 1
			#define ALPASS_GENERALVU_INSTANCE_TIME  uint2(2,22)
			#define ALPASS_GENERALVU_LOCAL_TIME     uint2(3,22)
			#define ALPASS_GENERALVU_NETWORK_TIME   uint2(4,22)
			#define ALPASS_GENERALVU_PLAYERINFO     uint2(6,22)
			// Added in version 2.5
			#define ALPASS_FILTEREDAUDIOLINK        uint2(0,28)  //Size: 16, 4
			// Added in version 2.6
			#define ALPASS_CHRONOTENSITY            uint2(16,28) //Size: 8, 4
			#define ALPASS_THEME_COLOR0             uint2(0,23)
			#define ALPASS_THEME_COLOR1             uint2(1,23)
			#define ALPASS_THEME_COLOR2             uint2(2,23)
			#define ALPASS_THEME_COLOR3             uint2(3,23)
			#define ALPASS_FILTEREDVU               uint2(24,28) //Size: 4, 4
			#define ALPASS_FILTEREDVU_INTENSITY     uint2(24,28) //Size: 4, 1
			#define ALPASS_FILTEREDVU_MARKER        uint2(24,29) //Size: 4, 1
			
			// Some basic constants to use (Note, these should be compatible with
			// future version of AudioLink, but may change.
			#define AUDIOLINK_SAMPHIST              3069        // Internal use for algos, do not change.
			#define AUDIOLINK_SAMPLEDATA24          2046
			#define AUDIOLINK_EXPBINS               24
			#define AUDIOLINK_EXPOCT                10
			#define AUDIOLINK_ETOTALBINS (AUDIOLINK_EXPBINS * AUDIOLINK_EXPOCT)
			#define AUDIOLINK_WIDTH                 128
			#define AUDIOLINK_SPS                   48000       // Samples per second
			#define AUDIOLINK_ROOTNOTE              0
			#define AUDIOLINK_4BAND_FREQFLOOR       0.123
			#define AUDIOLINK_4BAND_FREQCEILING     1
			#define AUDIOLINK_BOTTOM_FREQUENCY      13.75
			#define AUDIOLINK_BASE_AMPLITUDE        2.5
			#define AUDIOLINK_DELAY_COEFFICIENT_MIN 0.3
			#define AUDIOLINK_DELAY_COEFFICIENT_MAX 0.9
			#define AUDIOLINK_DFT_Q                 4.0
			#define AUDIOLINK_TREBLE_CORRECTION     5.0
			
			// ColorChord constants
			#define COLORCHORD_EMAXBIN              192
			#define COLORCHORD_IIR_DECAY_1          0.90
			#define COLORCHORD_IIR_DECAY_2          0.85
			#define COLORCHORD_CONSTANT_DECAY_1     0.01
			#define COLORCHORD_CONSTANT_DECAY_2     0.0
			#define COLORCHORD_NOTE_CLOSEST         3.0
			#define COLORCHORD_NEW_NOTE_GAIN        8.0
			#define COLORCHORD_MAX_NOTES            10
			
			// We use glsl_mod for most calculations because it behaves better
			// on negative numbers, and in some situations actually outperforms
			// HLSL's modf().
			#ifndef glsl_mod
			#define glsl_mod(x, y) (((x) - (y) * floor((x) / (y))))
			#endif
			
			uniform float4               _AudioTexture_TexelSize;
			
			#ifdef SHADER_TARGET_SURFACE_ANALYSIS
			#define AUDIOLINK_STANDARD_INDEXING
			#endif
			
			// Mechanism to index into texture.
			#ifdef AUDIOLINK_STANDARD_INDEXING
			sampler2D _AudioTexture;
			#define AudioLinkData(xycoord) tex2Dlod(_AudioTexture, float4(uint2(xycoord) * _AudioTexture_TexelSize.xy, 0, 0))
			#else
			uniform Texture2D<float4> _AudioTexture;
			SamplerState sampler_AudioTexture;
			#define AudioLinkData(xycoord) _AudioTexture[uint2(xycoord)]
			#endif
			
			float _Mode;
			
			float4 _GlobalThemeColor0;
			float4 _GlobalThemeColor1;
			float4 _GlobalThemeColor2;
			float4 _GlobalThemeColor3;
			
			#ifdef POI_UDIMDISCARD
			float _UDIMDiscardMode;
			float _UDIMDiscardUV;
			float4 _UDIMDiscardRow3;
			float4 _UDIMDiscardRow2;
			float4 _UDIMDiscardRow1;
			float4 _UDIMDiscardRow0;
			#endif
			
			#ifdef USER_LUT
			#if defined(PROP_DISTORTIONFLOWTEXTURE) || !defined(OPTIMIZER_ENABLED)
			Texture2D _DistortionFlowTexture;
			float4 _DistortionFlowTexture_ST;
			float2 _DistortionFlowTexturePan;
			float _DistortionFlowTextureUV;
			#endif
			
			#if defined(PROP_DISTORTIONFLOWTEXTURE1) || !defined(OPTIMIZER_ENABLED)
			Texture2D _DistortionFlowTexture1;
			float4 _DistortionFlowTexture1_ST;
			float2 _DistortionFlowTexture1Pan;
			float _DistortionFlowTexture1UV;
			#endif
			
			#if defined(PROP_DISTORTIONMASK) || !defined(OPTIMIZER_ENABLED)
			Texture2D _DistortionMask;
			float4 _DistortionMask_ST;
			float2 _DistortionMaskPan;
			float _DistortionMaskUV;
			#endif
			
			float _DistortionUvToDistort;
			float _DistortionStrength;
			float _DistortionStrength1;
			#endif
			float _StereoEnabled;
			float _PolarUV;
			float2 _PolarCenter;
			float _PolarRadialScale;
			float _PolarLengthScale;
			float _PolarSpiralPower;
			float _PanoUseBothEyes;
			
			#ifdef POI_PARALLAX
			
			sampler2D _HeightMap;
			float4 _HeightMap_ST;
			float2 _HeightMapPan;
			float _HeightMapUV;
			
			#if defined(PROP_HEIGHTMASK) || !defined(OPTIMIZER_ENABLED)
			Texture2D _Heightmask;
			#endif
			float4 _Heightmask_ST;
			float2 _HeightmaskPan;
			float _HeightmaskUV;
			float _HeightmaskInvert;
			
			float _ParallaxUV;
			float _HeightStrength;
			float _HeightOffset;
			float _HeightStepsMin;
			float _HeightStepsMax;
			
			float _CurvatureU;
			float _CurvatureV;
			float _CurvFix;
			/*
			*/
			#endif
			
			#ifdef COLOR_GRADING_LOG_VIEW
			float _AudioLinkDelay;
			float _AudioLinkAnimToggle;
			float _DebugWaveform;
			float _DebugDFT;
			float _DebugBass;
			float _DebugLowMids;
			float _DebugHighMids;
			float _DebugTreble;
			float _DebugCCColors;
			float _DebugCCStrip;
			float _DebugCCLights;
			float _DebugAutocorrelator;
			float _DebugChronotensity;
			float _AudioLinkCCStripY;
			#endif
			
			#if defined(PROP_LIGHTINGAOMAPS) || !defined(OPTIMIZER_ENABLED)
			Texture2D _LightingAOMaps;
			#endif
			float4 _LightingAOMaps_ST;
			float2 _LightingAOMapsPan;
			float _LightingAOMapsUV;
			float _LightDataAOStrengthR;
			float _LightDataAOStrengthG;
			float _LightDataAOStrengthB;
			float _LightDataAOStrengthA;
			
			#if defined(PROP_LIGHTINGDETAILSHADOWMAPS) || !defined(OPTIMIZER_ENABLED)
			Texture2D _LightingDetailShadowMaps;
			#endif
			float4 _LightingDetailShadowMaps_ST;
			float2 _LightingDetailShadowMapsPan;
			float _LightingDetailShadowMapsUV;
			float _LightingDetailShadowStrengthR;
			float _LightingDetailShadowStrengthG;
			float _LightingDetailShadowStrengthB;
			float _LightingDetailShadowStrengthA;
			
			#if defined(PROP_LIGHTINGSHADOWMASKS) || !defined(OPTIMIZER_ENABLED)
			Texture2D _LightingShadowMasks;
			#endif
			float4 _LightingShadowMasks_ST;
			float2 _LightingShadowMasksPan;
			float _LightingShadowMasksUV;
			float _LightingShadowMaskStrengthR;
			float _LightingShadowMaskStrengthG;
			float _LightingShadowMaskStrengthB;
			float _LightingShadowMaskStrengthA;
			
			// Lighting Data
			float _Unlit_Intensity;
			float _LightingColorMode;
			float _LightingMapMode;
			float _LightingDirectionMode;
			float3 _LightngForcedDirection;
			float _LightingIndirectUsesNormals;
			float _LightingCapEnabled;
			float _LightingCap;
			float _LightingForceColorEnabled;
			float3 _LightingForcedColor;
			float _LightingForcedColorThemeIndex;
			float _LightingCastedShadows;
			float _LightingMonochromatic;
			float _LightingAdditiveMonochromatic;
			float _LightingMinLightBrightness;
			// Additive Lighting Data
			float _LightingAdditiveLimited;
			float _LightingAdditiveLimit;
			float _LightingAdditivePassthrough;
			// Lighting Data Debug
			float _LightingDebugVisualize;
			
			float _IgnoreFog;
			float _RenderingReduceClipDistance;
			
			float4 _Color;
			float _ColorThemeIndex;
			UNITY_DECLARE_TEX2D(_MainTex);
			float4 _MainTex_ST;
			float2 _MainTexPan;
			float _MainTexUV;
			float4 _MainTex_TexelSize;
			Texture2D _BumpMap;
			float4 _BumpMap_ST;
			float2 _BumpMapPan;
			float _BumpMapUV;
			float _BumpScale;
			Texture2D _ClippingMask;
			float4 _ClippingMask_ST;
			float2 _ClippingMaskPan;
			float _ClippingMaskUV;
			float _Inverse_Clipping;
			float _Cutoff;
			
			float _MainColorAdjustToggle;
			#if defined(PROP_MAINCOLORADJUSTTEXTURE) || !defined(OPTIMIZER_ENABLED)
			Texture2D _MainColorAdjustTexture;
			#endif
			float4 _MainColorAdjustTexture_ST;
			float2 _MainColorAdjustTexturePan;
			float _MainColorAdjustTextureUV;
			float _MainHueShiftToggle;
			float _MainHueShiftReplace;
			float _MainHueShift;
			float _MainHueShiftSpeed;
			float _Saturation;
			float _MainBrightness;
			
			float _MainHueALCTEnabled;
			float _MainALHueShiftBand;
			float _MainALHueShiftCTIndex;
			float _MainHueALMotionSpeed;
			
			SamplerState sampler_linear_clamp;
			SamplerState sampler_linear_repeat;
			
			float _AlphaForceOpaque;
			float _AlphaMod;
			float _AlphaPremultiply;
			
			float _AlphaToCoverage;
			float _AlphasharpenedA2C;
			float _AlphaMipScale;
			
			float _AlphaDithering;
			float _AlphaDitherGradient;
			
			float _AlphaDistanceFade;
			float _AlphaDistanceFadeType;
			float _AlphaDistanceFadeMinAlpha;
			float _AlphaDistanceFadeMaxAlpha;
			float _AlphaDistanceFadeMin;
			float _AlphaDistanceFadeMax;
			
			float _AlphaFresnel;
			float _AlphaFresnelAlpha;
			float _AlphaFresnelSharpness;
			float _AlphaFresnelWidth;
			float _AlphaFresnelInvert;
			
			float _AlphaAngular;
			float _AngleType;
			float _AngleCompareTo;
			float3 _AngleForwardDirection;
			float _CameraAngleMin;
			float _CameraAngleMax;
			float _ModelAngleMin;
			float _ModelAngleMax;
			float _AngleMinAlpha;
			
			float _AlphaAudioLinkEnabled;
			float2 _AlphaAudioLinkAddRange;
			float _AlphaAudioLinkAddBand;
			/*
			Texture2D ;
			float4 _ST;
			float2 Pan;
			float UV;
			*/
			
			#ifdef FINALPASS
			#if defined(PROP_DETAILMASK) || !defined(OPTIMIZER_ENABLED)
			Texture2D _DetailMask;
			#endif
			float4 _DetailMask_ST;
			float2 _DetailMaskPan;
			float _DetailMaskUV;
			#if defined(PROP_DETAILNORMALMAP) || !defined(OPTIMIZER_ENABLED)
			Texture2D _DetailNormalMap;
			#endif
			float4 _DetailNormalMap_ST;
			float2 _DetailNormalMapPan;
			float _DetailNormalMapUV;
			#if defined(PROP_DETAILTEX) || !defined(OPTIMIZER_ENABLED)
			Texture2D _DetailTex;
			#endif
			float4 _DetailTex_ST;
			float2 _DetailTexPan;
			float _DetailTexUV;
			
			float3 _DetailTint;
			float _DetailTintThemeIndex;
			float _DetailTexIntensity;
			float _DetailBrightness;
			float _DetailNormalMapScale;
			#endif
			
			#ifdef AUTO_EXPOSURE
			float4 _VertexManipulationLocalTranslation;
			float4 _VertexManipulationLocalRotation;
			float3 _VertexManipulationLocalRotationSpeed;
			float4 _VertexManipulationLocalScale;
			float4 _VertexManipulationWorldTranslation;
			float _VertexManipulationHeight;
			sampler2D _VertexManipulationHeightMask;
			float4 _VertexManipulationHeightMask_ST;
			float2 _VertexManipulationHeightMaskPan;
			float _VertexManipulationHeightMaskUV;
			float _VertexManipulationHeightBias;
			float _VertexRoundingEnabled;
			float _VertexRoundingDivision;
			
			//AL
			float3 _VertexLocalTranslationALMin;
			float3 _VertexLocalTranslationALMax;
			float _VertexLocalTranslationALBand;
			
			float3 _VertexLocalRotationAL;
			float _VertexLocalRotationALBand;
			
			float3 _VertexLocalRotationCTALSpeed;
			float _VertexLocalRotationCTALBand;
			float _VertexLocalRotationCTALType;
			
			float4 _VertexLocalScaleALMin;
			float4 _VertexLocalScaleALMax;
			float _VertexLocalScaleALBand;
			
			float3 _VertexWorldTranslationALMin;
			float3 _VertexWorldTranslationALMax;
			float _VertexWorldTranslationALBand;
			
			float2 _VertexManipulationHeightAL;
			float _VertexManipulationHeightBand;
			
			float2 _VertexRoundingRangeAL;
			float _VertexRoundingRangeBand;
			#endif
			
			/*
			Texture2D ;
			float4 _ST;
			float2 Pan;
			float UV;
			*/
			
			float _MainVertexColoringLinearSpace;
			float _MainVertexColoring;
			float _MainUseVertexColorAlpha;
			
			#ifdef POI_BACKFACE
			float _BackFaceEnabled;
			float _BackFaceDetailIntensity;
			float _BackFaceEmissionStrength;
			float2 _BackFacePanning;
			float4 _BackFaceColor;
			float _BackFaceColorThemeIndex;
			float _BackFaceReplaceAlpha;
			float _BackFaceAlpha;
			
			#if defined(PROP_BACKFACETEXTURE) || !defined(OPTIMIZER_ENABLED)
			Texture2D _BackFaceTexture;
			#endif
			float4 _BackFaceTexture_ST;
			float2 _BackFaceTexturePan;
			float _BackFaceTextureUV;
			
			#if defined(PROP_BACKFACEMASK) || !defined(OPTIMIZER_ENABLED)
			Texture2D _BackFaceMask;
			#endif
			float4 _BackFaceMask_ST;
			float2 _BackFaceMaskPan;
			float _BackFaceMaskUV;
			
			float _BackFaceHueShiftEnabled;
			float _BackFaceHueShift;
			float _BackFaceHueShiftSpeed;
			#endif
			
			//TODO detail strength stuff
			
			#ifdef VIGNETTE
			#if defined(PROP_RGBMASK) || !defined(OPTIMIZER_ENABLED)
			Texture2D _RGBMask;
			#endif
			float4 _RGBMask_ST;
			float2 _RGBMaskPan;
			float _RGBMaskUV;
			
			#if defined(PROP_REDTEXURE) || !defined(OPTIMIZER_ENABLED)
			Texture2D _RedTexure;
			#endif
			float4 _RedTexure_ST;
			float2 _RedTexurePan;
			float _RedTexureUV;
			
			#if defined(PROP_GREENTEXTURE) || !defined(OPTIMIZER_ENABLED)
			Texture2D _GreenTexture;
			#endif
			float4 _GreenTexture_ST;
			float2 _GreenTexturePan;
			float _GreenTextureUV;
			
			#if defined(PROP_BLUETEXTURE) || !defined(OPTIMIZER_ENABLED)
			Texture2D _BlueTexture;
			#endif
			float4 _BlueTexture_ST;
			float2 _BlueTexturePan;
			float _BlueTextureUV;
			
			#if defined(PROP_ALPHATEXTURE) || !defined(OPTIMIZER_ENABLED)
			Texture2D _AlphaTexture;
			#endif
			float4 _AlphaTexture_ST;
			float2 _AlphaTexturePan;
			float _AlphaTextureUV;
			
			#ifdef GEOM_TYPE_MESH
			#if defined(PROP_RGBNORMALR) || !defined(OPTIMIZER_ENABLED)
			#endif
			Texture2D _RgbNormalR;
			float4 _RgbNormalR_ST;
			float2 _RgbNormalRPan;
			float _RgbNormalRUV;
			float _RgbNormalRScale;
			
			#if defined(PROP_RGBNORMALG) || !defined(OPTIMIZER_ENABLED)
			#endif
			Texture2D _RgbNormalG;
			float4 _RgbNormalG_ST;
			float2 _RgbNormalGPan;
			float _RgbNormalGUV;
			float _RgbNormalGScale;
			
			#if defined(PROP_RGBNORMALB) || !defined(OPTIMIZER_ENABLED)
			#endif
			Texture2D _RgbNormalB;
			float4 _RgbNormalB_ST;
			float2 _RgbNormalBPan;
			float _RgbNormalBUV;
			float _RgbNormalBScale;
			
			#if defined(PROP_RGBNORMALA) || !defined(OPTIMIZER_ENABLED)
			#endif
			Texture2D _RgbNormalA;
			float4 _RgbNormalA_ST;
			float2 _RgbNormalAPan;
			float _RgbNormalAUV;
			float _RgbNormalAScale;
			
			float _RgbNormalsEnabled;
			#endif
			
			float4 _RedColor;
			float4 _GreenColor;
			float4 _BlueColor;
			float4 _AlphaColor;
			
			float _RedColorThemeIndex;
			float _GreenColorThemeIndex;
			float _BlueColorThemeIndex;
			float _AlphaColorThemeIndex;
			
			float _RGBBlendMultiplicative;
			float _RGBUseVertexColors;
			float _RGBNormalBlend;
			#endif
			
			/*
			Texture2D ;
			float4 _ST;
			float2 Pan;
			float UV;
			*/
			
			Texture2D _DecalMask;
			float4 _DecalMask_ST;
			float2 _DecalMaskPan;
			float _DecalMaskUV;
			
			#ifdef COLOR_GRADING_LOG_VIEW
			// Audio Link
			half _AudioLinkDecal0ScaleBand;
			float4 _AudioLinkDecal0Scale;
			half _AudioLinkDecal0RotationBand;
			float2 _AudioLinkDecal0Rotation;
			half _AudioLinkDecal0AlphaBand;
			float2 _AudioLinkDecal0Alpha;
			half _AudioLinkDecal0EmissionBand;
			float2 _AudioLinkDecal0Emission;
			
			half _AudioLinkDecal1ScaleBand;
			float4 _AudioLinkDecal1Scale;
			half _AudioLinkDecal1RotationBand;
			float2 _AudioLinkDecal1Rotation;
			half _AudioLinkDecal1AlphaBand;
			float2 _AudioLinkDecal1Alpha;
			half _AudioLinkDecal1EmissionBand;
			float2 _AudioLinkDecal1Emission;
			
			half _AudioLinkDecal2ScaleBand;
			float4 _AudioLinkDecal2Scale;
			half _AudioLinkDecal2RotationBand;
			float2 _AudioLinkDecal2Rotation;
			half _AudioLinkDecal2AlphaBand;
			float2 _AudioLinkDecal2Alpha;
			half _AudioLinkDecal2EmissionBand;
			float2 _AudioLinkDecal2Emission;
			
			half _AudioLinkDecal3ScaleBand;
			float4 _AudioLinkDecal3Scale;
			half _AudioLinkDecal3RotationBand;
			float2 _AudioLinkDecal3Rotation;
			half _AudioLinkDecal3AlphaBand;
			float2 _AudioLinkDecal3Alpha;
			half _AudioLinkDecal3EmissionBand;
			float2 _AudioLinkDecal3Emission;
			float _AudioLinkDecalX;
			float _AudioLinkDecal3SideBand;
			float4 _AudioLinkDecal3SideMin;
			float4 _AudioLinkDecal3SideMax;
			#endif
			
			#ifdef GEOM_TYPE_BRANCH
			float _Decal0MaskChannel;
			sampler2D _DecalTexture;
			float4 _DecalTexture_ST;
			float2 _DecalTexturePan;
			float _DecalTextureUV;
			
			float4 _DecalColor;
			float _DecalColorThemeIndex;
			fixed _DecalTiled;
			float _DecalBlendType;
			half _DecalRotation;
			half2 _DecalScale;
			float4 _DecalSideOffset;
			half2 _DecalPosition;
			half _DecalRotationSpeed;
			float _DecalEmissionStrength;
			float _DecalBlendAlpha;
			float _DecalOverideAlpha;
			float _DecalHueShiftEnabled;
			float _DecalHueShift;
			float _DecalHueShiftSpeed;
			float _Decal0Depth;
			float _Decal0HueAngleStrength;
			#endif
			
			#ifdef GEOM_TYPE_BRANCH_DETAIL
			float _Decal1MaskChannel;
			sampler2D _DecalTexture1;
			float4 _DecalTexture1_ST;
			float2 _DecalTexture1Pan;
			float _DecalTexture1UV;
			
			float4 _DecalColor1;
			float _DecalColor1ThemeIndex;
			fixed _DecalTiled1;
			float _DecalBlendType1;
			half _DecalRotation1;
			half2 _DecalScale1;
			float4 _DecalSideOffset1;
			half2 _DecalPosition1;
			half _DecalRotationSpeed1;
			float _DecalEmissionStrength1;
			float _DecalBlendAlpha1;
			float _DecalOverideAlpha1;
			float _DecalHueShiftEnabled1;
			float _DecalHueShift1;
			float _DecalHueShiftSpeed1;
			float _Decal1Depth;
			float _Decal1HueAngleStrength;
			#endif
			
			#ifdef GEOM_TYPE_FROND
			float _Decal2MaskChannel;
			sampler2D _DecalTexture2;
			float4 _DecalTexture2_ST;
			float2 _DecalTexture2Pan;
			float _DecalTexture2UV;
			float4 _DecalColor2;
			float _DecalColor2ThemeIndex;
			fixed _DecalTiled2;
			float _DecalBlendType2;
			half _DecalRotation2;
			half2 _DecalScale2;
			float4 _DecalSideOffset2;
			half2 _DecalPosition2;
			half _DecalRotationSpeed2;
			float _DecalEmissionStrength2;
			float _DecalBlendAlpha2;
			float _DecalOverideAlpha2;
			float _DecalHueShiftEnabled2;
			float _DecalHueShift2;
			float _DecalHueShiftSpeed2;
			float _Decal2Depth;
			float _Decal2HueAngleStrength;
			#endif
			
			#ifdef DEPTH_OF_FIELD_COC_VIEW
			float _Decal3MaskChannel;
			sampler2D _DecalTexture3;
			float4 _DecalTexture3_ST;
			float2 _DecalTexture3Pan;
			float _DecalTexture3UV;
			float4 _DecalColor3;
			float _DecalColor3ThemeIndex;
			fixed _DecalTiled3;
			float _DecalBlendType3;
			half _DecalRotation3;
			half2 _DecalScale3;
			float4 _DecalSideOffset3;
			half2 _DecalPosition3;
			half _DecalRotationSpeed3;
			float _DecalEmissionStrength3;
			float _DecalBlendAlpha3;
			float _DecalOverideAlpha3;
			float _DecalHueShiftEnabled3;
			float _DecalHueShift3;
			float _DecalHueShiftSpeed3;
			float _Decal3Depth;
			float _Decal3HueAngleStrength;
			#endif
			
			/*
			Texture2D ;
			float4 _ST;
			float2 Pan;
			float UV;
			*/
			
			#ifdef DISTORT
			float _DissolveType;
			float _DissolveEdgeWidth;
			float4 _DissolveEdgeColor;
			sampler2D _DissolveEdgeGradient;
			float4 _DissolveEdgeGradient_ST;
			float2 _DissolveEdgeGradientPan;
			float _DissolveEdgeGradientUV;
			float _DissolveEdgeEmission;
			float4 _DissolveTextureColor;
			float _DissolveEdgeColorThemeIndex;
			float _DissolveTextureColorThemeIndex;
			
			#if defined(PROP_DISSOLVETOTEXTURE) || !defined(OPTIMIZER_ENABLED)
			Texture2D _DissolveToTexture;
			#endif
			float4 _DissolveToTexture_ST;
			float2 _DissolveToTexturePan;
			float _DissolveToTextureUV;
			
			#if defined(PROP_DISSOLVENOISETEXTURE) || !defined(OPTIMIZER_ENABLED)
			Texture2D _DissolveNoiseTexture;
			#endif
			float4 _DissolveNoiseTexture_ST;
			float2 _DissolveNoiseTexturePan;
			float _DissolveNoiseTextureUV;
			
			#if defined(PROP_DISSOLVEDETAILNOISE) || !defined(OPTIMIZER_ENABLED)
			Texture2D _DissolveDetailNoise;
			#endif
			float4 _DissolveDetailNoise_ST;
			float2 _DissolveDetailNoisePan;
			float _DissolveDetailNoiseUV;
			
			#if defined(PROP_DISSOLVEMASK) || !defined(OPTIMIZER_ENABLED)
			Texture2D _DissolveMask;
			#endif
			float4 _DissolveMask_ST;
			float2 _DissolveMaskPan;
			float _DissolveMaskUV;
			
			float _DissolveMaskInvert;
			float _DissolveAlpha;
			float _ContinuousDissolve;
			float _DissolveDetailStrength;
			float _DissolveEdgeHardness;
			float _DissolveInvertNoise;
			float _DissolveInvertDetailNoise;
			float _DissolveToEmissionStrength;
			
			// Point to Point
			float _DissolveP2PWorldLocal;
			float _DissolveP2PEdgeLength;
			float4 _DissolveStartPoint;
			float4 _DissolveEndPoint;
			
			// World Dissolve
			float _DissolveWorldShape;
			float4 _DissolveShapePosition;
			float4 _DissolveShapeRotation;
			float _DissolveShapeScale;
			float _DissolveInvertShape;
			float _DissolveShapeEdgeLength;
			
			float _DissolveAlpha0;
			float _DissolveAlpha1;
			float _DissolveAlpha2;
			float _DissolveAlpha3;
			float _DissolveAlpha4;
			float _DissolveAlpha5;
			float _DissolveAlpha6;
			float _DissolveAlpha7;
			float _DissolveAlpha8;
			float _DissolveAlpha9;
			// Masking
			float _DissolveEmissionSide;
			float _DissolveEmission1Side;
			float _DissolveUseVertexColors;
			
			float4 edgeColor;
			float edgeAlpha;
			float dissolveAlpha;
			float4 dissolveToTexture;
			
			float _DissolveHueShiftEnabled;
			float _DissolveHueShiftSpeed;
			float _DissolveHueShift;
			float _DissolveEdgeHueShiftEnabled;
			float _DissolveEdgeHueShiftSpeed;
			float _DissolveEdgeHueShift;
			
			// Audio Link
			#ifdef COLOR_GRADING_LOG_VIEW
			fixed _EnableDissolveAudioLink;
			half _AudioLinkDissolveAlphaBand;
			float2 _AudioLinkDissolveAlpha;
			half _AudioLinkDissolveDetailBand;
			float2 _AudioLinkDissolveDetail;
			#endif
			#endif
			
			/*
			Texture2D ;
			float4 _ST;
			float2 Pan;
			float UV;
			*/
			
			// Toon Lighting
			UNITY_DECLARE_TEX2D(_ToonRamp);
			float _ShadowOffset;
			float _ShadowStrength;
			float _LightingIgnoreAmbientColor;
			// Math Toon Lighting
			float _LightingGradientStart;
			float _LightingGradientEnd;
			float3 _LightingShadowColor;
			float _LightingGradientStartWrap;
			float _LightingGradientEndWrap;
			// ShadeMap Lighting
			float3 _1st_ShadeColor;
			Texture2D _1st_ShadeMap;
			float4 _1st_ShadeMap_ST;
			float2 _1st_ShadeMapPan;
			float _1st_ShadeMapUV;
			float _Use_1stShadeMapAlpha_As_ShadowMask;
			float _1stShadeMapMask_Inverse;
			float _Use_BaseAs1st;
			float3 _2nd_ShadeColor;
			Texture2D _2nd_ShadeMap;
			float4 _2nd_ShadeMap_ST;
			float2 _2nd_ShadeMapPan;
			float _2nd_ShadeMapUV;
			float _Use_2ndShadeMapAlpha_As_ShadowMask;
			float _2ndShadeMapMask_Inverse;
			float _Use_1stAs2nd;
			float _BaseColor_Step;
			float _BaseShade_Feather;
			float _ShadeColor_Step;
			float _1st2nd_Shades_Feather;
			float _ShadingShadeMapBlendType;
			// Realistic Lighting
			float _LightingStandardSmoothness;
			// Skin
			sampler2D _SkinLUT;
			float _SssScale;
			float _SssBumpBlur;
			float3 _SssTransmissionAbsorption;
			float3 _SssColorBleedAoWeights;
			
			// Cloth
			#ifdef _LIGHTINGMODE_CLOTH
			Texture2D_float _ClothDFG;
			SamplerState sampler_ClothDFG;
			
			#if defined(PROP_CLOTHMETALLICSMOOTHNESSMAP) || !defined(OPTIMIZER_ENABLED)
			Texture2D _ClothMetallicSmoothnessMap;
			#endif
			
			float4 _ClothMetallicSmoothnessMap_ST;
			float2 _ClothMetallicSmoothnessMapPan;
			float _ClothMetallicSmoothnessMapUV;
			float _ClothMetallicSmoothnessMapInvert;
			
			float _ClothMetallic;
			float _ClothReflectance;
			float _ClothSmoothness;
			#endif
			
			// Additive
			float _LightingAdditiveType;
			float _LightingAdditiveGradientStart;
			float _LightingAdditiveGradientEnd;
			float _LightingAdditiveDetailStrength;
			float _LightingAdditiveLimitIntensity;
			float _LightingAdditiveMaxIntensity;
			
			#ifdef POI_MATCAP0
			#if defined(PROP_MATCAP) || !defined(OPTIMIZER_ENABLED)
			Texture2D _Matcap;
			float4 _Matcap_ST;
			float2 _MatcapPan;
			float _MatcapUV;
			#endif
			#if defined(PROP_MATCAPMASK) || !defined(OPTIMIZER_ENABLED)
			Texture2D _MatcapMask;
			float4 _MatcapMask_ST;
			float2 _MatcapMaskPan;
			float _MatcapMaskUV;
			#endif
			#ifdef POI_MATCAP0_CUSTOM_NORMAL
			#if defined(PROP_MATCAP0NORMALMAP) || !defined(OPTIMIZER_ENABLED)
			Texture2D _Matcap0NormalMap;
			#endif
			float4 _Matcap0NormalMap_ST;
			float2 _Matcap0NormalMapPan;
			float _Matcap0NormalMapUV;
			float _Matcap0NormalMapScale;
			#endif
			float _MatcapUVMode;
			float _MatcapMaskInvert;
			float _MatcapBorder;
			float4 _MatcapColor;
			float _MatcapColorThemeIndex;
			float _MatcapIntensity;
			float _MatcapReplace;
			float _MatcapMultiply;
			float _MatcapAdd;
			float _MatcapAlphaOverride;
			float _MatcapEnable;
			float _MatcapLightMask;
			float _MatcapEmissionStrength;
			float _MatcapNormal;
			float _MatcapHueShiftEnabled;
			float _MatcapHueShiftSpeed;
			float _MatcapHueShift;
			#endif
			
			#ifdef COLOR_GRADING_HDR_3D
			#if defined(PROP_MATCAP2) || !defined(OPTIMIZER_ENABLED)
			Texture2D _Matcap2;
			float4 _Matcap2_ST;
			float2 _Matcap2Pan;
			float _Matcap2UV;
			#endif
			#if defined(PROP_MATCAP2MASK) || !defined(OPTIMIZER_ENABLED)
			Texture2D _Matcap2Mask;
			float4 _Matcap2Mask_ST;
			float2 _Matcap2MaskPan;
			float _Matcap2MaskUV;
			#endif
			#ifdef POI_MATCAP1_CUSTOM_NORMAL
			#if defined(PROP_MATCAP1NORMALMAP) || !defined(OPTIMIZER_ENABLED)
			Texture2D _Matcap1NormalMap;
			#endif
			float4 _Matcap1NormalMap_ST;
			float2 _Matcap1NormalMapPan;
			float _Matcap1NormalMapUV;
			float _Matcap1NormalMapScale;
			#endif
			float _Matcap2UVMode;
			float _Matcap2MaskInvert;
			float _Matcap2Border;
			float4 _Matcap2Color;
			float _Matcap2ColorThemeIndex;
			float _Matcap2Intensity;
			float _Matcap2Replace;
			float _Matcap2Multiply;
			float _Matcap2Add;
			float _Matcap2AlphaOverride;
			float _Matcap2Enable;
			float _Matcap2LightMask;
			float _Matcap2EmissionStrength;
			float _Matcap2Normal;
			float _Matcap2HueShiftEnabled;
			float _Matcap2HueShiftSpeed;
			float _Matcap2HueShift;
			#endif
			
			#ifdef _CUBEMAP
			#if defined(PROP_CUBEMAP) || !defined(OPTIMIZER_ENABLED)
			samplerCUBE _CubeMap;
			#endif
			#if defined(PROP_CUBEMAPMASK) || !defined(OPTIMIZER_ENABLED)
			Texture2D _CubeMapMask;
			float4 _CubeMapMask_ST;
			float2 _CubeMapMaskPan;
			float _CubeMapMaskUV;
			#endif
			float _CubeMapUVMode;
			float _CubeMapMaskInvert;
			float4 _CubeMapColor;
			float _CubeMapColorThemeIndex;
			float _CubeMapIntensity;
			float _CubeMapReplace;
			float _CubeMapMultiply;
			float _CubeMapAdd;
			float _CubeMapEnable;
			float _CubeMapLightMask;
			float _CubeMapEmissionStrength;
			float _CubeMapNormal;
			float _CubeMapHueShiftEnabled;
			float _CubeMapHueShiftSpeed;
			float _CubeMapHueShift;
			#endif
			
			/*
			Texture2D ;
			float4 _ST;
			float2 Pan;
			float UV;
			*/
			
			#ifdef COLOR_GRADING_LOG_VIEW
			#ifdef POI_AL_DECAL
			float _ALDecalUV;
			float4 _ALUVScale;
			float2 _ALUVPosition;
			float _ALUVRotation;
			float _ALUVRotationSpeed;
			float4 _ALDecaldCircleDimensions;
			
			float _ALDecalUVMode;
			
			float _ALDecalVolumeStep;
			float _ALDecalVolumeClipMin;
			float _ALDecalVolumeClipMax;
			
			float _ALDecalBandStep;
			float _ALDecalBandClipMin;
			float _ALDecalBandClipMax;
			
			float _ALDecalShapeClip;
			float _ALDecalShapeClipVolumeWidth;
			float _ALDecalShapeClipBandWidth;
			
			float _ALDecalVolume;
			float _ALDecalBaseBoost;
			float _ALDecalTrebleBoost;
			float _ALDecalLineWidth;
			float _ALDecalVolumeColorSource;
			float3 _ALDecalVolumeColorLow;
			float3 _ALDecalVolumeColorMid;
			float3 _ALDecalVolumeColorHigh;
			float _ALDecalLowEmission;
			float _ALDecalMidEmission;
			float _ALDecalHighEmission;
			float _ALDecalBlendType;
			float _ALDecalBlendAlpha;
			float _ALDecalControlsAlpha;
			#endif
			#endif
			/*
			Texture2D ;
			float4 _ST;
			float2 Pan;
			float UV;
			*/
			
			#ifdef _SUNDISK_HIGH_QUALITY
			
			UNITY_DECLARE_TEX2DARRAY(_FlipbookTexArray);
			float4 _FlipbookTexArray_ST;
			
			float4 _FlipbookColor;
			float _FlipbookColorThemeIndex;
			float _FlipbookFPS;
			float _FlipbookTotalFrames;
			float4 _FlipbookScaleOffset;
			float4 _FlipbookSideOffset;
			float _FlipbookTiled;
			float _FlipbookCurrentFrame;
			float _FlipbookEmissionStrength;
			float _FlipbookRotation;
			float _EnableFlipbook;
			float _FlipbookTexArrayUV;
			float _FlipbookAlphaControlsFinalAlpha;
			float _FlipbookRotationSpeed;
			float _FlipbookIntensityControlsAlpha;
			float _FlipbookColorReplaces;
			float2 _FlipbookTexArrayPan;
			
			// blending
			float _FlipbookReplace;
			float _FlipbookMultiply;
			float _FlipbookAdd;
			
			#if defined(PROP_FLIPBOOKMASSK) || !defined(OPTIMIZED_ENABLED)
			Texture2D _FlipbookMask;
			#endif
			float4 _FlipbookMask_ST;
			float2 _FlipbookMaskPan;
			float _FlipbookMaskUV;
			
			// anim
			float _FlipbookMovementType;
			float4 _FlipbookStartEndOffset;
			float _FlipbookMovementSpeed;
			
			// Crossfade
			float _FlipbookCrossfadeEnabled;
			float2 _FlipbookCrossfadeRange;
			
			// Hueshift
			float _FlipbookHueShiftEnabled;
			float _FlipbookHueShiftSpeed;
			float _FlipbookHueShift;
			
			#ifdef COLOR_GRADING_LOG_VIEW
			float _FlipbookChronotensityEnabled;
			float _FlipbookChronotensityBand;
			float _FlipbookChronotensitySpeed;
			#endif
			#endif
			
			#ifdef _GLOSSYREFLECTIONS_OFF
			float4 _RimLightColor;
			float _RimLightingInvert;
			float _RimWidth;
			float _RimStrength;
			float _RimSharpness;
			float _RimLightColorBias;
			float _ShadowMix;
			float _ShadowMixThreshold;
			float _ShadowMixWidthMod;
			float _EnableRimLighting;
			float _RimBrighten;
			float _RimLightNormal;
			float _RimHueShiftEnabled;
			float _RimHueShiftSpeed;
			float _RimHueShift;
			float _RimWidthNoiseStrength;
			float _RimLightColorThemeIndex;
			
			#if defined(PROP_RIMTEX) || !defined(OPTIMIZER_ENABLED)
			Texture2D _RimTex;
			#endif
			float4 _RimTex_ST;
			float2 _RimTexPan;
			float _RimTexUV;
			#if defined(PROP_RIMMASK) || !defined(OPTIMIZER_ENABLED)
			Texture2D _RimMask;
			#endif
			float4 _RimMask_ST;
			float2 _RimMaskPan;
			float _RimMaskUV;
			#if defined(PROP_RIMWIDTHNOISETEXTURE) || !defined(OPTIMIZER_ENABLED)
			Texture2D _RimWidthNoiseTexture;
			#endif
			float4 _RimWidthNoiseTexture_ST;
			float2 _RimWidthNoiseTexturePan;
			float _RimWidthNoiseTextureUV;
			
			#endif
			
			/*
			Texture2D ;
			float4 _ST;
			float2 Pan;
			float UV;
			*/
			
			#ifdef _SUNDISK_SIMPLE
			float _GlitterUV;
			half3 _GlitterColor;
			float _GlitterColorThemeIndex;
			float2 _GlitterPan;
			half _GlitterSpeed;
			half _GlitterBrightness;
			float _GlitterFrequency;
			float _GlitterJitter;
			half _GlitterSize;
			half _GlitterContrast;
			half _GlitterAngleRange;
			half _GlitterMinBrightness;
			half _GlitterBias;
			fixed _GlitterUseSurfaceColor;
			float _GlitterBlendType;
			float _GlitterMode;
			float _GlitterShape;
			float _GlitterCenterSize;
			float _glitterFrequencyLinearEmissive;
			float _GlitterJaggyFix;
			float _GlitterTextureRotation;
			float2 _GlitterUVPanning;
			
			float _GlitterHueShiftEnabled;
			float _GlitterHueShiftSpeed;
			float _GlitterHueShift;
			float _GlitterHideInShadow;
			
			float _GlitterRandomColors;
			float2 _GlitterMinMaxSaturation;
			float2 _GlitterMinMaxBrightness;
			float _GlitterRandomSize;
			float4 _GlitterMinMaxSize;
			float _GlitterRandomRotation;
			
			#if defined(PROP_GLITTERMASK) || !defined(OPTIMIZER_ENABLED)
			Texture2D _GlitterMask;
			#endif
			float4 _GlitterMask_ST;
			float2 _GlitterMaskPan;
			float _GlitterMaskUV;
			#if defined(PROP_GLITTERCOLORMAP) || !defined(OPTIMIZER_ENABLED)
			Texture2D _GlitterColorMap;
			#endif
			float4 _GlitterColorMap_ST;
			float2 _GlitterColorMapPan;
			float _GlitterColorMapUV;
			#if defined(PROP_GLITTERTEXTURE) || !defined(OPTIMIZER_ENABLED)
			Texture2D _GlitterTexture;
			#endif
			float4 _GlitterTexture_ST;
			float2 _GlitterTexturePan;
			float _GlitterTextureUV;
			#endif
			
			/*
			Texture2D ;
			float4 _ST;
			float2 Pan;
			float UV;
			*/
			
			#ifdef MOCHIE_PBR
			#if defined(PROP_MOCHIEMETALLICMAPS) || !defined(OPTIMIZER_ENABLED)
			Texture2D _MochieMetallicMaps;
			#endif
			float4 _MochieMetallicMaps_ST;
			float2 _MochieMetallicMapsPan;
			float _MochieMetallicMapsUV;
			float _MochieMetallicMapInvert;
			float _MochieRoughnessMapInvert;
			float _MochieReflectionMaskInvert;
			float _MochieSpecularMaskInvert;
			
			float _MochieReflectionTintThemeIndex;
			float _MochieSpecularTintThemeIndex;
			
			float _MochieRoughnessMultiplier;
			float _MochieMetallicMultiplier;
			float _MochieReflectionStrength;
			float _MochieSpecularStrength;
			float4 _MochieSpecularTint;
			float4 _MochieReflectionTint;
			float _MochieLitFallback;
			
			samplerCUBE _MochieReflCube;
			float4 _MochieReflCube_HDR;
			float _MochieForceFallback;
			
			#endif
			
			#ifdef _COLORCOLOR_ON
			samplerCUBE _ClearCoatCubeMap;
			float _ClearCoatSampleWorld;
			#if defined(PROP_CLEARCOATMASK) || !defined(OPTIMIZER_ENABLED)
			Texture2D _ClearCoatMask;
			#endif
			float4 _ClearCoatMask_ST;
			float2 _ClearCoatMaskPan;
			float _ClearCoatMaskUV;
			#if defined(PROP_CLEARCOATSMOOTHNESSMAP) || !defined(OPTIMIZER_ENABLED)
			Texture2D _ClearCoatSmoothnessMap;
			#endif
			float _ClearCoatNormal;
			float4 _ClearCoatSmoothnessMap_ST;
			float2 _ClearCoatSmoothnessMapPan;
			float _ClearCoatSmoothnessMapUV;
			float _ClearCoatInvertSmoothness;
			float _ClearCoat;
			float _ClearCoatSmoothness;
			float3 _ClearCoatTint;
			float _ClearCoatTintThemeIndex;
			float _ClearCoatForceLighting;
			float lighty_clear_boy_uwu_var;
			#endif
			
			#ifdef POI_ENVIRORIM
			
			#if defined(PROP_RIMENVIROMASK) || !defined(OPTIMIZER_ENABLED)
			Texture2D _RimEnviroMask;
			#endif
			float4 _RimEnviroMask_ST;
			float2 _RimEnviroMaskPan;
			float _RimEnviroMaskUV;
			
			float _RimEnviroBlur;
			float _RimEnviroMinBrightness;
			float _RimEnviroWidth;
			float _RimEnviroSharpness;
			float _RimEnviroIntensity;
			#endif
			
			#ifdef POI_STYLIZED_StylizedSpecular
			#if defined(PROP_HIGHCOLOR_TEX) || !defined(OPTIMIZER_ENABLED)
			Texture2D _HighColor_Tex;
			#endif
			float4 _HighColor_Tex_ST;
			float2 _HighColor_TexPan;
			float _HighColor_TexUV;
			
			#if defined(PROP_SET_HIGHCOLORMASK) || !defined(OPTIMIZER_ENABLED)
			Texture2D _Set_HighColorMask;
			#endif
			float4 _Set_HighColorMask_ST;
			float2 _Set_HighColorMaskPan;
			float _Set_HighColorMaskUV;
			float _Tweak_HighColorMaskLevel;
			
			/*
			#if defined(PROP_StylizedSpecularOPTMAP1) || !defined(OPTIMIZER_ENABLED)
			Texture2D _StylizedSpecularOptMap1;
			#endif
			float4 _StylizedSpecularOptMap1_ST;
			float2 _StylizedSpecularOptMap1Pan;
			float _StylizedSpecularOptMap1UV;
			
			#if defined(PROP_StylizedSpecularOPTMAP2) || !defined(OPTIMIZER_ENABLED)
			Texture2D _StylizedSpecularOptMap2;
			#endif
			float4 _StylizedSpecularOptMap2_ST;
			float2 _StylizedSpecularOptMap2Pan;
			float _StylizedSpecularOptMap2UV;
			*/
			
			float4 _HighColor;
			float _UseLightColor;
			
			float _HighColor_Power;
			float _StylizedSpecularFeather;
			float _Layer1Strength;
			
			float _Layer2Size;
			float _StylizedSpecular2Feather;
			float _Layer2Strength;
			
			float _StylizedSpecularStrength;
			float _UseSpecularOptMap2;
			float _HighColorThemeIndex;
			float _Is_BlendAddToHiColor;
			float _Is_SpecularToHighColor;
			#endif
			
			#ifdef POI_PATHING
			
			#if defined(PROP_PATHINGMAP) || !defined(OPTIMIZER_ENABLED)
			Texture2D _PathingMap;
			SamplerState SmpRepeatPoint;
			#endif
			float4 _PathingMap_ST;
			float2 _PathingMapPan;
			float _PathingMapUV;
			
			#if defined(PROP_PATHINGCOLORMAP) || !defined(OPTIMIZER_ENABLED)
			Texture2D _PathingColorMap;
			#endif
			float4 _PathingColorMap_ST;
			float2 _PathingColorMapPan;
			float _PathingColorMapUV;
			
			// Fill, 0, Path, 1, Loop, 2
			half _PathTypeR;
			half _PathTypeG;
			half _PathTypeB;
			half3 _PathWidth;
			float3 _PathTime;
			float3 _PathOffset;
			float3 _PathSpeed;
			float4 _PathColorR;
			float4 _PathColorG;
			float4 _PathColorB;
			float3 _PathEmissionStrength;
			float3 _PathSoftness;
			float3 _PathSegments;
			float3 _PathAlpha;
			
			float _PathColorRThemeIndex;
			float _PathColorGThemeIndex;
			float _PathColorBThemeIndex;
			
			#ifdef COLOR_GRADING_LOG_VIEW
			// Time Offset
			half _AudioLinkPathTimeOffsetBandR;
			half2 _AudioLinkPathTimeOffsetR;
			half _AudioLinkPathTimeOffsetBandG;
			half2 _AudioLinkPathTimeOffsetG;
			half _AudioLinkPathTimeOffsetBandB;
			half2 _AudioLinkPathTimeOffsetB;
			
			// Emission Offset
			half _AudioLinkPathEmissionAddBandR;
			half2 _AudioLinkPathEmissionAddR;
			half _AudioLinkPathEmissionAddBandG;
			half2 _AudioLinkPathEmissionAddG;
			half _AudioLinkPathEmissionAddBandB;
			half2 _AudioLinkPathEmissionAddB;
			
			// Length Offset
			half _AudioLinkPathWidthOffsetBandR;
			half2 _AudioLinkPathWidthOffsetR;
			half _AudioLinkPathWidthOffsetBandG;
			half2 _AudioLinkPathWidthOffsetG;
			half _AudioLinkPathWidthOffsetBandB;
			half2 _AudioLinkPathWidthOffsetB;
			#endif
			#endif
			
			#ifdef POI_MIRROR
			float _Mirror;
			#if defined(PROP_MIRRORTEXTURE) || !defined(OPTIMIZER_ENABLED)
			Texture2D _MirrorTexture;
			#endif
			float4 _MirrorTexture_ST;
			float2 _MirrorTexturePan;
			float _MirrorTextureUV;
			#endif
			
			#ifdef GRAIN
			sampler2D _CameraDepthTexture;
			#endif
			
			#if defined(PROP_DEPTHMASK) || !defined(OPTIMIZER_ENABLED)
			Texture2D _DepthMask;
			#endif
			float4 _DepthMask_ST;
			float2 _DepthMaskPan;
			float _DepthMaskUV;
			
			// Color
			float _DepthColorToggle;
			float _DepthColorBlendMode;
			#if defined(PROP_DEPTHTEXTURE) || !defined(OPTIMIZER_ENABLED)
			Texture2D _DepthTexture;
			#endif
			float4 _DepthTexture_ST;
			float2 _DepthTexturePan;
			float _DepthTextureUV;
			
			float3 _DepthColor;
			float _DepthColorThemeIndex;
			float _DepthColorMinDepth;
			float _DepthColorMaxDepth;
			float _DepthColorMinValue;
			float _DepthColorMaxValue;
			float _DepthEmissionStrength;
			
			// Emission
			
			// Alpha
			float _DepthAlphaToggle;
			float _DepthAlphaMinValue;
			float _DepthAlphaMaxValue;
			float _DepthAlphaMinDepth;
			float _DepthAlphaMaxDepth;
			
			/*
			Texture2D ;
			float4 _ST;
			float2 Pan;
			float UV;
			*/
			
			#ifdef POI_IRIDESCENCE
			#if defined(PROP_IRIDESCENCERAMP) || !defined(OPTIMIZER_ENABLED)
			Texture2D _IridescenceRamp;
			#endif
			float4 _IridescenceRamp_ST;
			float2 _IridescenceRampPan;
			
			#if defined(PROP_IRIDESCENCEMASK) || !defined(OPTIMIZER_ENABLED)
			Texture2D _IridescenceMask;
			#endif
			float4 _IridescenceMask_ST;
			float2 _IridescenceMaskPan;
			float _IridescenceMaskUV;
			
			#if defined(PROP_IRIDESCENCENORMALMAP) || !defined(OPTIMIZER_ENABLED)
			Texture2D _IridescenceNormalMap;
			#endif
			float4 _IridescenceNormalMap_ST;
			float2 _IridescenceNormalMapPan;
			float _IridescenceNormalMapUV;
			
			float _IridescenceTime;
			float _IridescenceIntensity;
			float _IridescenceHueShiftEnabled;
			float _IridescenceHueShiftSpeed;
			float _IridescenceHueShift;
			float2 _IridescenceAudioLinkEmission;
			float _IridescenceAudioLinkEmissionBand;
			float _IridescenceNormalSelection;
			float _IridescenceNormalIntensity;
			float _IridescenceNormalToggle;
			float _IridescenceAddBlend;
			float _IridescenceReplaceBlend;
			float _IridescenceMultiplyBlend;
			float _IridescenceEmissionStrength;
			#endif
			
			#ifdef EFFECT_BUMP
			sampler2D _TextGlyphs;
			float4 _TextGlyphs_ST;
			float4 _TextGlyphs_TexelSize;
			float _TextFPSUV;
			float _TextTimeUV;
			float _TextPositionUV;
			float _TextPixelRange;
			
			float _TextFPSEnabled;
			float _TextPositionEnabled;
			float _TextTimeEnabled;
			
			float4 _TextFPSColor;
			float _TextFPSEmissionStrength;
			fixed4 _TextFPSPadding;
			float2 _TextFPSOffset;
			float2 _TextFPSScale;
			float _TextFPSRotation;
			
			fixed _TextPositionVertical;
			float4 _TextPositionColor;
			float _TextPositionEmissionStrength;
			fixed4 _TextPositionPadding;
			float2 _TextPositionOffset;
			float2 _TextPositionScale;
			float _TextPositionRotation;
			
			float4 _TextTimeColor;
			float _TextTimeEmissionStrength;
			fixed4 _TextTimePadding;
			float2 _TextTimeOffset;
			float2 _TextTimeScale;
			float _TextTimeRotation;
			
			float _TextFPSColorThemeIndex;
			float _TextPositionColorThemeIndex;
			float _TextTimeColorThemeIndex;
			
			float3 globalTextEmission;
			
			#define ASCII_LEFT_PARENTHESIS 40
			#define ASCII_RIGHT_PARENTHESIS 41
			#define ASCII_POSITIVE 43
			#define ASCII_PERIOD 46
			#define ASCII_NEGATIVE 45
			#define ASCII_COMMA 44
			#define ASCII_E 69
			#define ASCII_F 70
			#define ASCII_I 73
			#define ASCII_M 77
			#define ASCII_O 79
			#define ASCII_P 80
			#define ASCII_S 83
			#define ASCII_T 54
			#define ASCII_SEMICOLON 58
			#define glyphWidth 0.0625
			
			#endif
			
			#ifdef MOCHIE_POSTPROCESS
			#if defined(PROP_PPLUT) || !defined(OPTIMIZER_ENABLED)
			Texture2D _PPLUT;
			SamplerState sampler_PPLUT;
			#endif
			float4 _PPLUT_TexelSize;
			float _PPLUTStrength;
			
			#if defined(PROP_PPMASK) || !defined(OPTIMIZER_ENABLED)
			Texture2D _PPMask;
			#endif
			float4 _PPMask_ST;
			float2 _PPMaskPan;
			float _PPMaskUV;
			float _PPMaskInvert;
			
			float3 _PPTint;
			float3 _PPRGB;
			float _PPHue;
			float _PPContrast;
			float _PPSaturation;
			float _PPBrightness;
			float _PPLightness;
			float _PPHDR;
			const static float COLORS = 32;
			
			#endif
			
			//Structs
			struct appdata
			{
				float4 vertex : POSITION;
				float3 normal : NORMAL;
				float4 tangent : TANGENT;
				float4 color : COLOR;
				float2 uv0 : TEXCOORD0;
				float2 uv1 : TEXCOORD1;
				float2 uv2 : TEXCOORD2;
				float2 uv3 : TEXCOORD3;
				uint vertexId : SV_VertexID;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};
			
			struct v2f
			{
				float4 pos : SV_POSITION;
				float2 uv[4] : TEXCOORD0;
				float3 objNormal : TEXCOORD4;
				float3 normal : TEXCOORD5;
				float3 tangent : TEXCOORD6;
				float3 binormal : TEXCOORD7;
				float4 worldPos : TEXCOORD8;
				float4 localPos : TEXCOORD9;
				float3 objectPos : TEXCOORD10;
				float4 vertexColor : TEXCOORD11;
				float4 lightmapUV : TEXCOORD12;
				float4 grabPos: TEXCOORD13;
				float4 worldDirection: TEXCOORD14;
				UNITY_SHADOW_COORDS(15)
				UNITY_FOG_COORDS(16)
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};
			
			struct PoiMesh
			{
				
				// 0 Vertex normal
				// 1 Fragment normal
				float3 normals[2];
				float3 objNormal;
				float3 tangentSpaceNormal;
				float3 binormal;
				float3 tangent;
				float3 worldPos;
				float3 localPos;
				float3 objectPosition;
				float isFrontFace;
				float4 vertexColor;
				float4 lightmapUV;
				// 0-3 UV0-UV3
				// 4 Panosphere UV
				// 5 world pos xz
				// 6 Polar UV
				// 7 Distorted UV
				float2 uv[8];
				float2 parallaxUV;
			};
			
			struct PoiCam
			{
				float3 viewDir;
				float3 forwardDir;
				float3 worldPos;
				float distanceToVert;
				float4 clipPos;
				float3 reflectionDir;
				float3 tangentViewDir;
				float4 grabPos;
				float2 screenUV;
				float vDotN;
				float4 worldDirection;
				
			};
			
			struct PoiMods
			{
				float4 Mask;
				float4 audioLink;
				float audioLinkAvailable;
				float audioLinkVersion;
				float4 audioLinkTexture;
				float2 detailMask;
				float2 backFaceDetailIntensity;
				float4 globalColorTheme[12];
				float ALTime[8];
			};
			
			struct PoiLight
			{
				
				float3 direction;
				float attenuation;
				float attenuationStrength;
				float3 directColor;
				float3 indirectColor;
				float occlusion;
				float shadowMask;
				float detailShadow;
				float3 halfDir;
				float lightMap;
				float3 rampedLightMap;
				float nDotL;
				float nDotV;
				float nDotH;
				float lDotv;
				float lDotH;
				float nDotLSaturated;
				float nDotLNormalized;
				#ifdef UNITY_PASS_FORWARDADD
				float additiveShadow;
				#endif
				float3 finalLighting;
				float3 finalLightAdd;
				
				#if defined(VERTEXLIGHT_ON) && defined(POI_VERTEXLIGHT_ON)
				// Non Important Lights
				float4 vDotNL;
				float3 vColor[4];
				float4 vCorrectedDotNL;
				float4 vAttenuation;
				float4 vAttenuationDotNL;
				float3 vPosition[4];
				float3 vDirection[4];
				float3 vFinalLighting;
				float3 vHalfDir[4];
				half4 vDotNH;
				half4 vDotLH;
				#endif
				
			};
			
			struct PoiVertexLights
			{
				
				float3 direction;
				float3 color;
				float attenuation;
			};
			
			struct PoiFragData
			{
				float3 baseColor;
				float3 finalColor;
				float alpha;
				float3 emission;
			};
			
			float2 poiUV(float2 uv, float4 tex_st)
			{
				return uv * tex_st.xy + tex_st.zw;
			}
			
			//Lighting Helpers
			float calculateluminance(float3 color)
			{
				return color.r * 0.299 + color.g * 0.587 + color.b * 0.114;
			}
			
			bool IsInMirror()
			{
				return unity_CameraProjection[2][0] != 0.f || unity_CameraProjection[2][1] != 0.f;
			}
			
			bool IsOrthographicCamera()
			{
				return unity_OrthoParams.w == 1 || UNITY_MATRIX_P[3][3] == 1;
			}
			
			/*
			* MIT License
			*
			* Copyright (c) 2018 s-ilent
			*
			* Permission is hereby granted, free of charge, to any person obtaining a copy
			* of this software and associated documentation files (the "Software"), to deal
			* in the Software without restriction, including without limitation the rights
			* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
			* copies of the Software, and to permit persons to whom the Software is
			* furnished to do so, subject to the following conditions:
			*
			* The above copyright notice and this permission notice shall be included in all
			* copies or substantial portions of the Software.
			*
			* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
			* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
			* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
			* AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
			* LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
			* OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
			* SOFTWARE.
			*/
			
			float shEvaluateDiffuseL1Geomerics_local(float L0, float3 L1, float3 n)
			{
				// average energy
				float R0 = max(0, L0);
				
				// avg direction of incoming light
				float3 R1 = 0.5f * L1;
				
				// directional brightness
				float lenR1 = length(R1);
				
				// linear angle between normal and direction 0-1
				//float q = 0.5f * (1.0f + dot(R1 / lenR1, n));
				//float q = dot(R1 / lenR1, n) * 0.5 + 0.5;
				float q = dot(normalize(R1), n) * 0.5 + 0.5;
				q = saturate(q); // Thanks to ScruffyRuffles for the bug identity.
				
				// power for q
				// lerps from 1 (linear) to 3 (cubic) based on directionality
				float p = 1.0f + 2.0f * lenR1 / R0;
				
				// dynamic range constant
				// should vary between 4 (highly directional) and 0 (ambient)
				float a = (1.0f - lenR1 / R0) / (1.0f + lenR1 / R0);
				
				return R0 * (a + (1.0f - a) * (p + 1.0f) * pow(q, p));
			}
			
			half3 BetterSH9(half4 normal)
			{
				float3 indirect;
				float3 L0 = float3(unity_SHAr.w, unity_SHAg.w, unity_SHAb.w) + float3(unity_SHBr.z, unity_SHBg.z, unity_SHBb.z) / 3.0;
				indirect.r = shEvaluateDiffuseL1Geomerics_local(L0.r, unity_SHAr.xyz, normal.xyz);
				indirect.g = shEvaluateDiffuseL1Geomerics_local(L0.g, unity_SHAg.xyz, normal.xyz);
				indirect.b = shEvaluateDiffuseL1Geomerics_local(L0.b, unity_SHAb.xyz, normal.xyz);
				indirect = max(0, indirect);
				indirect += SHEvalLinearL2(normal);
				return indirect;
			}
			
			// Silent's code ends here
			
			float3 getCameraForward()
			{
				#if UNITY_SINGLE_PASS_STEREO
				float3 p1 = mul(unity_StereoCameraToWorld[0], float4(0, 0, 1, 1));
				float3 p2 = mul(unity_StereoCameraToWorld[0], float4(0, 0, 0, 1));
				#else
				float3 p1 = mul(unity_CameraToWorld, float4(0, 0, 1, 1)).xyz;
				float3 p2 = mul(unity_CameraToWorld, float4(0, 0, 0, 1)).xyz;
				#endif
				return normalize(p2 - p1);
			}
			
			half3 GetSHLength()
			{
				half3 x, x1;
				x.r = length(unity_SHAr);
				x.g = length(unity_SHAg);
				x.b = length(unity_SHAb);
				x1.r = length(unity_SHBr);
				x1.g = length(unity_SHBg);
				x1.b = length(unity_SHBb);
				return x + x1;
			}
			
			float3 BoxProjection(float3 direction, float3 position, float4 cubemapPosition, float3 boxMin, float3 boxMax)
			{
				#if UNITY_SPECCUBE_BOX_PROJECTION
				//UNITY_BRANCH
				if (cubemapPosition.w > 0)
				{
					float3 factors = ((direction > 0 ? boxMax : boxMin) - position) / direction;
					float scalar = min(min(factors.x, factors.y), factors.z);
					direction = direction * scalar + (position - cubemapPosition.xyz);
				}
				#endif
				return direction;
			}
			
			float poiMax(float2 i)
			{
				return max(i.x, i.y);
			}
			
			float poiMax(float3 i)
			{
				return max(max(i.x, i.y), i.z);
			}
			
			float poiMax(float4 i)
			{
				return max(max(max(i.x, i.y), i.z), i.w);
			}
			
			float3 calculateNormal(in float3 baseNormal, in PoiMesh poiMesh, in Texture2D normalTexture, in float4 normal_ST, in float2 normalPan, in float normalUV, in float normalIntensity)
			{
				float3 normal = UnpackScaleNormal(POI2D_SAMPLER_PAN(normalTexture, _MainTex, poiUV(poiMesh.uv[normalUV], normal_ST), normalPan), normalIntensity);
				return normalize(
				normal.x * poiMesh.tangent +
				normal.y * poiMesh.binormal +
				normal.z * baseNormal
				);
			}
			
			float remap(float x, float minOld, float maxOld, float minNew = 0, float maxNew = 1)
			{
				return minNew + (x - minOld) * (maxNew - minNew) / (maxOld - minOld);
			}
			
			float2 remap(float2 x, float2 minOld, float2 maxOld, float2 minNew = 0, float2 maxNew = 1)
			{
				return minNew + (x - minOld) * (maxNew - minNew) / (maxOld - minOld);
			}
			
			float3 remap(float3 x, float3 minOld, float3 maxOld, float3 minNew = 0, float3 maxNew = 1)
			{
				return minNew + (x - minOld) * (maxNew - minNew) / (maxOld - minOld);
			}
			
			float4 remap(float4 x, float4 minOld, float4 maxOld, float4 minNew = 0, float4 maxNew = 1)
			{
				return minNew + (x - minOld) * (maxNew - minNew) / (maxOld - minOld);
			}
			
			float remapClamped(float minOld, float maxOld, float x, float minNew = 0, float maxNew = 1)
			{
				return clamp(minNew + (x - minOld) * (maxNew - minNew) / (maxOld - minOld), minNew, maxNew);
			}
			
			float2 remapClamped(float2 minOld, float2 maxOld, float2 x, float2 minNew, float2 maxNew)
			{
				return clamp(minNew + (x - minOld) * (maxNew - minNew) / (maxOld - minOld), minNew, maxNew);
			}
			
			float3 remapClamped(float3 minOld, float3 maxOld, float3 x, float3 minNew, float3 maxNew)
			{
				return clamp(minNew + (x - minOld) * (maxNew - minNew) / (maxOld - minOld), minNew, maxNew);
			}
			
			float4 remapClamped(float4 minOld, float4 maxOld, float4 x, float4 minNew, float4 maxNew)
			{
				return clamp(minNew + (x - minOld) * (maxNew - minNew) / (maxOld - minOld), minNew, maxNew);
			}
			float2 calcParallax(in float height, in PoiCam poiCam)
			{
				return((height * - 1) + 1) * (poiCam.tangentViewDir.xy / poiCam.tangentViewDir.z);
			}
			
			/*
			0: Zero	                float4(0.0, 0.0, 0.0, 0.0),
			1: One	                float4(1.0, 1.0, 1.0, 1.0),
			2: DstColor	            destinationColor,
			3: SrcColor	            sourceColor,
			4: OneMinusDstColor	    float4(1.0, 1.0, 1.0, 1.0) - destinationColor,
			5: SrcAlpha	            sourceColor.aaaa,
			6: OneMinusSrcColor	    float4(1.0, 1.0, 1.0, 1.0) - sourceColor,
			7: DstAlpha	            destinationColor.aaaa,
			8: OneMinusDstAlpha	    float4(1.0, 1.0, 1.0, 1.0) - destinationColor.,
			9: SrcAlphaSaturate     saturate(sourceColor.aaaa),
			10: OneMinusSrcAlpha	float4(1.0, 1.0, 1.0, 1.0) - sourceColor.aaaa,
			*/
			
			float4 poiBlend(const float sourceFactor, const  float4 sourceColor, const  float destinationFactor, const  float4 destinationColor, const float4 blendFactor)
			{
				float4 sA = 1 - blendFactor;
				const float4 blendData[11] = {
					float4(0.0, 0.0, 0.0, 0.0),
					float4(1.0, 1.0, 1.0, 1.0),
					destinationColor,
					sourceColor,
					float4(1.0, 1.0, 1.0, 1.0) - destinationColor,
					sA,
					float4(1.0, 1.0, 1.0, 1.0) - sourceColor,
					sA,
					float4(1.0, 1.0, 1.0, 1.0) - sA,
					saturate(sourceColor.aaaa),
					1 - sA,
				};
				
				return lerp(blendData[sourceFactor] * sourceColor + blendData[destinationFactor] * destinationColor, sourceColor, sA);
			}
			
			// Average
			float3 blendAverage(float3 base, float3 blend)
			{
				return(base + blend) / 2.0;
			}
			
			// Color burn
			float blendColorBurn(float base, float blend)
			{
				return(blend == 0.0)?blend : max((1.0 - ((1.0 - base) / blend)), 0.0);
			}
			
			float3 blendColorBurn(float3 base, float3 blend)
			{
				return float3(blendColorBurn(base.r, blend.r), blendColorBurn(base.g, blend.g), blendColorBurn(base.b, blend.b));
			}
			
			// Color Dodge
			float blendColorDodge(float base, float blend)
			{
				return(blend == 1.0)?blend : min(base / (1.0 - blend), 1.0);
			}
			
			float3 blendColorDodge(float3 base, float3 blend)
			{
				return float3(blendColorDodge(base.r, blend.r), blendColorDodge(base.g, blend.g), blendColorDodge(base.b, blend.b));
			}
			
			// Darken
			float blendDarken(float base, float blend)
			{
				return min(blend, base);
			}
			
			float3 blendDarken(float3 base, float3 blend)
			{
				return float3(blendDarken(base.r, blend.r), blendDarken(base.g, blend.g), blendDarken(base.b, blend.b));
			}
			
			// Exclusion
			float3 blendExclusion(float3 base, float3 blend)
			{
				return base + blend - 2.0 * base * blend;
			}
			
			// Reflect
			float blendReflect(float base, float blend)
			{
				return(blend == 1.0)?blend : min(base * base / (1.0 - blend), 1.0);
			}
			
			float3 blendReflect(float3 base, float3 blend)
			{
				return float3(blendReflect(base.r, blend.r), blendReflect(base.g, blend.g), blendReflect(base.b, blend.b));
			}
			
			// Glow
			float3 blendGlow(float3 base, float3 blend)
			{
				return blendReflect(blend, base);
			}
			
			// Overlay
			float blendOverlay(float base, float blend)
			{
				return base < 0.5?(2.0 * base * blend) : (1.0 - 2.0 * (1.0 - base) * (1.0 - blend));
			}
			
			float3 blendOverlay(float3 base, float3 blend)
			{
				return float3(blendOverlay(base.r, blend.r), blendOverlay(base.g, blend.g), blendOverlay(base.b, blend.b));
			}
			
			// Hard Light
			float3 blendHardLight(float3 base, float3 blend)
			{
				return blendOverlay(blend, base);
			}
			
			// Vivid light
			float blendVividLight(float base, float blend)
			{
				return(blend < 0.5)?blendColorBurn(base, (2.0 * blend)) : blendColorDodge(base, (2.0 * (blend - 0.5)));
			}
			
			float3 blendVividLight(float3 base, float3 blend)
			{
				return float3(blendVividLight(base.r, blend.r), blendVividLight(base.g, blend.g), blendVividLight(base.b, blend.b));
			}
			
			// Hard mix
			float blendHardMix(float base, float blend)
			{
				return(blendVividLight(base, blend) < 0.5)?0.0 : 1.0;
			}
			
			float3 blendHardMix(float3 base, float3 blend)
			{
				return float3(blendHardMix(base.r, blend.r), blendHardMix(base.g, blend.g), blendHardMix(base.b, blend.b));
			}
			
			// Lighten
			float blendLighten(float base, float blend)
			{
				return max(blend, base);
			}
			
			float3 blendLighten(float3 base, float3 blend)
			{
				return float3(blendLighten(base.r, blend.r), blendLighten(base.g, blend.g), blendLighten(base.b, blend.b));
			}
			
			// Linear Burn
			float blendLinearBurn(float base, float blend)
			{
				// Note : Same implementation as BlendSubtractf
				return max(base + blend - 1.0, 0.0);
			}
			
			float3 blendLinearBurn(float3 base, float3 blend)
			{
				// Note : Same implementation as BlendSubtract
				return max(base + blend - float3(1.0, 1.0, 1.0), float3(0.0, 0.0, 0.0));
			}
			
			// Linear Dodge
			float blendLinearDodge(float base, float blend)
			{
				// Note : Same implementation as BlendAddf
				return min(base + blend, 1.0);
			}
			
			float3 blendLinearDodge(float3 base, float3 blend)
			{
				// Note : Same implementation as BlendAdd
				return min(base + blend, float3(1.0, 1.0, 1.0));
			}
			
			// Linear light
			float blendLinearLight(float base, float blend)
			{
				return blend < 0.5?blendLinearBurn(base, (2.0 * blend)) : blendLinearDodge(base, (2.0 * (blend - 0.5)));
			}
			
			float3 blendLinearLight(float3 base, float3 blend)
			{
				return float3(blendLinearLight(base.r, blend.r), blendLinearLight(base.g, blend.g), blendLinearLight(base.b, blend.b));
			}
			
			// Multiply
			float3 blendMultiply(float3 base, float3 blend)
			{
				return base * blend;
			}
			
			// Negation
			float3 blendNegation(float3 base, float3 blend)
			{
				return float3(1.0, 1.0, 1.0) - abs(float3(1.0, 1.0, 1.0) - base - blend);
			}
			
			// Normal
			float3 blendNormal(float3 base, float3 blend)
			{
				return blend;
			}
			
			// Phoenix
			float3 blendPhoenix(float3 base, float3 blend)
			{
				return min(base, blend) - max(base, blend) + float3(1.0, 1.0, 1.0);
			}
			
			// Pin light
			float blendPinLight(float base, float blend)
			{
				return(blend < 0.5)?blendDarken(base, (2.0 * blend)) : blendLighten(base, (2.0 * (blend - 0.5)));
			}
			
			float3 blendPinLight(float3 base, float3 blend)
			{
				return float3(blendPinLight(base.r, blend.r), blendPinLight(base.g, blend.g), blendPinLight(base.b, blend.b));
			}
			
			// Screen
			float blendScreen(float base, float blend)
			{
				return 1.0 - ((1.0 - base) * (1.0 - blend));
			}
			
			float3 blendScreen(float3 base, float3 blend)
			{
				return float3(blendScreen(base.r, blend.r), blendScreen(base.g, blend.g), blendScreen(base.b, blend.b));
			}
			
			// Soft Light
			float blendSoftLight(float base, float blend)
			{
				return(blend < 0.5)?(2.0 * base * blend + base * base * (1.0 - 2.0 * blend)) : (sqrt(base) * (2.0 * blend - 1.0) + 2.0 * base * (1.0 - blend));
			}
			
			float3 blendSoftLight(float3 base, float3 blend)
			{
				return float3(blendSoftLight(base.r, blend.r), blendSoftLight(base.g, blend.g), blendSoftLight(base.b, blend.b));
			}
			
			// Subtract
			float blendSubtract(float base, float blend)
			{
				return max(base - blend, 0.0);
			}
			
			float3 blendSubtract(float3 base, float3 blend)
			{
				return max(base - blend, 0.0);
			}
			
			// Difference
			float blendDifference(float base, float blend)
			{
				return abs(base - blend);
			}
			
			float3 blendDifference(float3 base, float3 blend)
			{
				return abs(base - blend);
			}
			
			// Divide
			float blendDivide(float base, float blend)
			{
				return base / max(blend, 0.0001);
			}
			
			float3 blendDivide(float3 base, float3 blend)
			{
				return base / max(blend, 0.0001);
			}
			
			float3 customBlend(float3 base, float3 blend, float blendType)
			{
				float3 ret = 0;
				switch(blendType)
				{
					case 0:
					{
						ret = blendNormal(base, blend);
						break;
					}
					case 1:
					{
						ret = blendDarken(base, blend);
						break;
					}
					case 2:
					{
						ret = blendMultiply(base, blend);
						break;
					}
					case 3:
					{
						ret = blendColorBurn(base, blend);
						break;
					}
					case 4:
					{
						ret = blendLinearBurn(base, blend);
						break;
					}
					case 5:
					{
						ret = blendLighten(base, blend);
						break;
					}
					case 6:
					{
						ret = blendScreen(base, blend);
						break;
					}
					case 7:
					{
						ret = blendColorDodge(base, blend);
						break;
					}
					case 8:
					{
						ret = blendLinearDodge(base, blend);
						break;
					}
					case 9:
					{
						ret = blendOverlay(base, blend);
						break;
					}
					case 10:
					{
						ret = blendSoftLight(base, blend);
						break;
					}
					case 11:
					{
						ret = blendHardLight(base, blend);
						break;
					}
					case 12:
					{
						ret = blendVividLight(base, blend);
						break;
					}
					case 13:
					{
						ret = blendLinearLight(base, blend);
						break;
					}
					case 14:
					{
						ret = blendPinLight(base, blend);
						break;
					}
					case 15:
					{
						ret = blendHardMix(base, blend);
						break;
					}
					case 16:
					{
						ret = blendDifference(base, blend);
						break;
					}
					case 17:
					{
						ret = blendExclusion(base, blend);
						break;
					}
					case 18:
					{
						ret = blendSubtract(base, blend);
						break;
					}
					case 19:
					{
						ret = blendDivide(base, blend);
						break;
					}
				}
				return ret;
			}
			
			float random(float2 p)
			{
				return frac(sin(dot(p, float2(12.9898, 78.2383))) * 43758.5453123);
			}
			
			float2 random2(float2 p)
			{
				return frac(sin(float2(dot(p, float2(127.1, 311.7)), dot(p, float2(269.5, 183.3)))) * 43758.5453);
			}
			
			float3 random3(float3 p)
			{
				return frac(sin(float3(dot(p, float3(127.1, 311.7, 248.6)), dot(p, float3(269.5, 183.3, 423.3)), dot(p, float3(248.3, 315.9, 184.2)))) * 43758.5453);
			}
			
			float3 randomFloat3(float2 Seed, float maximum)
			{
				return(.5 + float3(
				frac(sin(dot(Seed.xy, float2(12.9898, 78.233))) * 43758.5453),
				frac(sin(dot(Seed.yx, float2(12.9898, 78.233))) * 43758.5453),
				frac(sin(dot(float2(Seed), float2(12.9898, 78.233))) * 43758.5453)
				) * .5) * (maximum);
			}
			
			float3 randomFloat3Range(float2 Seed, float Range)
			{
				return(float3(
				frac(sin(dot(Seed.xy, float2(12.9898, 78.233))) * 43758.5453),
				frac(sin(dot(Seed.yx, float2(12.9898, 78.233))) * 43758.5453),
				frac(sin(dot(float2(Seed.x * Seed.y, Seed.y + Seed.x), float2(12.9898, 78.233))) * 43758.5453)
				) * 2 - 1) * Range;
			}
			
			float3 randomFloat3WiggleRange(float2 Seed, float Range, float wiggleSpeed)
			{
				float3 rando = (float3(
				frac(sin(dot(Seed.xy, float2(12.9898, 78.233))) * 43758.5453),
				frac(sin(dot(Seed.yx, float2(12.9898, 78.233))) * 43758.5453),
				frac(sin(dot(float2(Seed.x * Seed.y, Seed.y + Seed.x), float2(12.9898, 78.233))) * 43758.5453)
				) * 2 - 1);
				float speed = 1 + wiggleSpeed;
				return float3(sin((_Time.x + rando.x * pi) * speed), sin((_Time.x + rando.y * pi) * speed), sin((_Time.x + rando.z * pi) * speed)) * Range;
			}
			
			void Unity_RandomRange_float(float2 Seed, float Min, float Max, out float Out)
			{
				float randomno = frac(sin(dot(Seed, float2(12.9898, 78.233))) * 43758.5453);
				Out = lerp(Min, Max, randomno);
			}
			
			//art
			
			// Based on unity shader graph code
			
			// * Adjustments * //
			
			/*
			* Channel Mixer
			*
			* Controls the amount each of the channels of input In contribute to each of the channels of output Out. The slider
			* parameters on the node control the contribution of each of the input channels. The toggle button parameters control
			* which of the output channels is currently being edited. Slider controls for editing the contribution of each input
			* channnel range between -2 and 2.
			*/
			void poiChannelMixer(float3 In, float3 _ChannelMixer_Red, float3 _ChannelMixer_Green, float3 _ChannelMixer_Blue, out float3 Out)
			{
				Out = float3(dot(In, _ChannelMixer_Red), dot(In, _ChannelMixer_Green), dot(In, _ChannelMixer_Blue));
			}
			
			/*
			* Contrast
			*
			* Adjusts the contrast of input In by the amount of input Contrast. A Contrast value of 1 will return the input
			* unaltered. A Contrast value of 0 will return the midpoint of the input
			*/
			void poiContrast(float3 In, float Contrast, out float3 Out)
			{
				float midpoint = pow(0.5, 2.2);
				Out = (In - midpoint) * Contrast + midpoint;
			}
			
			/*
			* Invert Colors
			*
			* Inverts the colors of input In on a per channel basis. This Node assumes all input values are in the range 0 - 1.
			*/
			void poiInvertColors(float4 In, float4 InvertColors, out float4 Out)
			{
				Out = abs(InvertColors - In);
			}
			
			/*
			* Replace Color
			*
			* Replaces values in input In equal to input From to the value of input To. Input Range can be used to define a
			* wider range of values around input From to replace. Input Fuzziness can be used to soften the edges around the
			* selection similar to anti-aliasing.
			*/
			void poiReplaceColor(float3 In, float3 From, float3 To, float Range, float Fuzziness, out float3 Out)
			{
				float Distance = distance(From, In);
				Out = lerp(To, In, saturate((Distance - Range) / max(Fuzziness, 0.00001)));
			}
			
			/*
			* Saturation
			*
			* Adjusts the saturation of input In by the amount of input Saturation. A Saturation value of 1 will return the input
			* unaltered. A Saturation value of 0 will return the input completely desaturated.
			*/
			void poiSaturation(float3 In, float Saturation, out float3 Out)
			{
				float luma = dot(In, float3(0.2126729, 0.7151522, 0.0721750));
				Out = luma.xxx + Saturation.xxx * (In - luma.xxx);
			}
			
			/*
			* Dither Node
			*
			* Dither is an intentional form of noise used to randomize quantization error. It is used to prevent large-scale
			* patterns such as color banding in images. The Dither node applies dithering in screen-space to ensure a uniform
			* distribution of the pattern. This can be adjusted by connecting another node to input Screen Position.
			*
			* This Node is commonly used as an input to Alpha Clip Threshold on a Master Node to give the appearance of
			* transparency to an opaque object. This is useful for creating objects that appear to be transparent but have
			* the advantages of rendering as opaque, such as writing depth and/or being rendered in deferred.
			*/
			void poiDither(float4 In, float4 ScreenPosition, out float4 Out)
			{
				float2 uv = ScreenPosition.xy * _ScreenParams.xy;
				float DITHER_THRESHOLDS[16] = {
					1.0 / 17.0, 9.0 / 17.0, 3.0 / 17.0, 11.0 / 17.0,
					13.0 / 17.0, 5.0 / 17.0, 15.0 / 17.0, 7.0 / 17.0,
					4.0 / 17.0, 12.0 / 17.0, 2.0 / 17.0, 10.0 / 17.0,
					16.0 / 17.0, 8.0 / 17.0, 14.0 / 17.0, 6.0 / 17.0
				};
				uint index = (uint(uv.x) % 4) * 4 + uint(uv.y) % 4;
				Out = In - DITHER_THRESHOLDS[index];
			}
			
			/*
			* Color Mask
			*
			* Creates a mask from values in input In equal to input Mask Color. Input Range can be used to define a wider
			* range of values around input Mask Color to create the mask. Colors within this range will return 1,
			* otherwise the node will return 0. Input Fuzziness can be used to soften the edges around the selection
			* similar to anti-aliasing.
			*/
			void poiColorMask(float3 In, float3 MaskColor, float Range, float Fuzziness, out float4 Out)
			{
				float Distance = distance(MaskColor, In);
				Out = saturate(1 - (Distance - Range) / max(Fuzziness, 0.00001));
			}
			
			float3 hueShift(float3 color, float Offset)
			{
				float4 K = float4(0.0, -1.0 / 3.0, 2.0 / 3.0, -1.0);
				float4 P = lerp(float4(color.bg, K.wz), float4(color.gb, K.xy), step(color.b, color.g));
				float4 Q = lerp(float4(P.xyw, color.r), float4(color.r, P.yzx), step(P.x, color.r));
				float D = Q.x - min(Q.w, Q.y);
				float E = 0.0000000001;
				float3 hsv = float3(abs(Q.z + (Q.w - Q.y) / (6.0 * D + E)), D / (Q.x + E), Q.x);
				
				float hue = hsv.x + Offset;
				hsv.x = frac(hue);
				
				float4 K2 = float4(1.0, 2.0 / 3.0, 1.0 / 3.0, 3.0);
				float3 P2 = abs(frac(hsv.xxx + K2.xyz) * 6.0 - K2.www);
				return hsv.z * lerp(K2.xxx, saturate(P2 - K2.xxx), hsv.y);
			}
			
			static const float Epsilon = 1e-10;
			// The weights of RGB contributions to luminance.
			// Should sum to unity.
			static const float3 HCYwts = float3(0.299, 0.587, 0.114);
			static const float HCLgamma = 3;
			static const float HCLy0 = 100;
			static const float HCLmaxL = 0.530454533953517; // == exp(HCLgamma / HCLy0) - 0.5
			static const float3 wref = float3(1.0, 1.0, 1.0);
			#define TAU 6.28318531
			
			float3 HUEtoRGB(in float H)
			{
				float R = abs(H * 6 - 3) - 1;
				float G = 2 - abs(H * 6 - 2);
				float B = 2 - abs(H * 6 - 4);
				return saturate(float3(R, G, B));
			}
			
			float3 RGBtoHCV(in float3 RGB)
			{
				// Based on work by Sam Hocevar and Emil Persson
				float4 P = (RGB.g < RGB.b) ? float4(RGB.bg, -1.0, 2.0 / 3.0) : float4(RGB.gb, 0.0, -1.0 / 3.0);
				float4 Q = (RGB.r < P.x) ? float4(P.xyw, RGB.r) : float4(RGB.r, P.yzx);
				float C = Q.x - min(Q.w, Q.y);
				float H = abs((Q.w - Q.y) / (6 * C + Epsilon) + Q.z);
				return float3(H, C, Q.x);
			}
			
			float3 HSVtoRGB(in float3 HSV)
			{
				float3 RGB = HUEtoRGB(HSV.x);
				return((RGB - 1) * HSV.y + 1) * HSV.z;
			}
			
			float3 RGBtoHSV(in float3 RGB)
			{
				float3 HCV = RGBtoHCV(RGB);
				float S = HCV.y / (HCV.z + Epsilon);
				return float3(HCV.x, S, HCV.z);
			}
			
			float3 HSLtoRGB(in float3 HSL)
			{
				float3 RGB = HUEtoRGB(HSL.x);
				float C = (1 - abs(2 * HSL.z - 1)) * HSL.y;
				return(RGB - 0.5) * C + HSL.z;
			}
			
			float3 RGBtoHSL(in float3 RGB)
			{
				float3 HCV = RGBtoHCV(RGB);
				float L = HCV.z - HCV.y * 0.5;
				float S = HCV.y / (1 - abs(L * 2 - 1) + Epsilon);
				return float3(HCV.x, S, L);
			}
			
			float3 HCYtoRGB(in float3 HCY)
			{
				
				float3 RGB = HUEtoRGB(HCY.x);
				float Z = dot(RGB, HCYwts);
				if (HCY.z < Z)
				{
					HCY.y *= HCY.z / Z;
				}
				else if (Z < 1)
				{
					HCY.y *= (1 - HCY.z) / (1 - Z);
				}
				return(RGB - Z) * HCY.y + HCY.z;
			}
			
			float3 RGBtoHCY(in float3 RGB)
			{
				// Corrected by David Schaeffer
				float3 HCV = RGBtoHCV(RGB);
				float Y = dot(RGB, HCYwts);
				float Z = dot(HUEtoRGB(HCV.x), HCYwts);
				if (Y < Z)
				{
					HCV.y *= Z / (Epsilon + Y);
				}
				else
				{
					HCV.y *= (1 - Z) / (Epsilon + 1 - Y);
				}
				return float3(HCV.x, HCV.y, Y);
			}
			
			float3 HCLtoRGB(in float3 HCL)
			{
				float3 RGB = 0;
				if (HCL.z != 0)
				{
					float H = HCL.x;
					float C = HCL.y;
					float L = HCL.z * HCLmaxL;
					float Q = exp((1 - C / (2 * L)) * (HCLgamma / HCLy0));
					float U = (2 * L - C) / (2 * Q - 1);
					float V = C / Q;
					float A = (H + min(frac(2 * H) / 4, frac(-2 * H) / 8)) * pi * 2;
					float T;
					H *= 6;
					if (H <= 0.999)
					{
						T = tan(A);
						RGB.r = 1;
						RGB.g = T / (1 + T);
					}
					else if (H <= 1.001)
					{
						RGB.r = 1;
						RGB.g = 1;
					}
					else if (H <= 2)
					{
						T = tan(A);
						RGB.r = (1 + T) / T;
						RGB.g = 1;
					}
					else if (H <= 3)
					{
						T = tan(A);
						RGB.g = 1;
						RGB.b = 1 + T;
					}
					else if (H <= 3.999)
					{
						T = tan(A);
						RGB.g = 1 / (1 + T);
						RGB.b = 1;
					}
					else if (H <= 4.001)
					{
						RGB.g = 0;
						RGB.b = 1;
					}
					else if (H <= 5)
					{
						T = tan(A);
						RGB.r = -1 / T;
						RGB.b = 1;
					}
					else
					{
						T = tan(A);
						RGB.r = 1;
						RGB.b = -T;
					}
					RGB = RGB * V + U;
				}
				return RGB;
			}
			
			float3 RGBtoHCL(in float3 RGB)
			{
				float3 HCL;
				float H = 0;
				float U = min(RGB.r, min(RGB.g, RGB.b));
				float V = max(RGB.r, max(RGB.g, RGB.b));
				float Q = HCLgamma / HCLy0;
				HCL.y = V - U;
				if (HCL.y != 0)
				{
					H = atan2(RGB.g - RGB.b, RGB.r - RGB.g) / pi;
					Q *= U / V;
				}
				Q = exp(Q);
				HCL.x = frac(H / 2 - min(frac(H), frac(-H)) / 6);
				HCL.y *= Q;
				HCL.z = lerp(-U, V, Q) / (HCLmaxL * 2);
				return HCL;
			}
			
			//HSL MODIFT
			float3 ModifyViaHSL(float3 color, float3 HSLMod)
			{
				float3 colorHSL = RGBtoHSL(color);
				colorHSL.r = frac(colorHSL.r + HSLMod.r);
				colorHSL.g = saturate(colorHSL.g + HSLMod.g);
				colorHSL.b = saturate(colorHSL.b + HSLMod.b);
				return HSLtoRGB(colorHSL);
			}
			
			float3 poiSaturation(float3 In, float Saturation)
			{
				float luma = dot(In, float3(0.2126729, 0.7151522, 0.0721750));
				return luma.xxx + Saturation.xxx * (In - luma.xxx);
			}
			// LCH
			float xyzF(float t)
			{
				return lerp(pow(t, 1. / 3.), 7.787037 * t + 0.139731, step(t, 0.00885645));
			}
			float xyzR(float t)
			{
				return lerp(t * t * t, 0.1284185 * (t - 0.139731), step(t, 0.20689655));
			}
			float3 rgb2lch(in float3 c)
			{
				c = mul(float3x3(0.4124, 0.3576, 0.1805,
				0.2126, 0.7152, 0.0722,
				0.0193, 0.1192, 0.9505), c);
				c.x = xyzF(c.x / wref.x);
				c.y = xyzF(c.y / wref.y);
				c.z = xyzF(c.z / wref.z);
				float3 lab = float3(max(0., 116.0 * c.y - 16.0), 500.0 * (c.x - c.y), 200.0 * (c.y - c.z));
				return float3(lab.x, length(float2(lab.y, lab.z)), atan2(lab.z, lab.y));
			}
			
			float3 lch2rgb(in float3 c)
			{
				c = float3(c.x, cos(c.z) * c.y, sin(c.z) * c.y);
				
				float lg = 1. / 116. * (c.x + 16.);
				float3 xyz = float3(wref.x * xyzR(lg + 0.002 * c.y),
				wref.y * xyzR(lg),
				wref.z * xyzR(lg - 0.005 * c.z));
				
				float3 rgb = mul(float3x3(3.2406, -1.5372, -0.4986,
				- 0.9689, 1.8758, 0.0415,
				0.0557, -0.2040, 1.0570), xyz);
				
				return rgb;
			}
			
			//cheaply lerp around a circle
			float lerpAng(in float a, in float b, in float x)
			{
				float ang = fmod(fmod((a - b), TAU) + pi * 3., TAU) - pi;
				return ang * x + b;
			}
			
			//Linear interpolation between two colors in Lch space
			float3 lerpLch(in float3 a, in float3 b, in float x)
			{
				float hue = lerpAng(a.z, b.z, x);
				return float3(lerp(b.xy, a.xy, x), hue);
			}
			
			float3 poiExpensiveColorBlend(float3 col1, float3 col2, float alpha)
			{
				return lch2rgb(lerpLch(rgb2lch(col1), rgb2lch(col2), alpha));
			}
			
			float4x4 poiAngleAxisRotationMatrix(float angle, float3 axis)
			{
				axis = normalize(axis);
				float s = sin(angle);
				float c = cos(angle);
				float oc = 1.0 - c;
				
				return float4x4(oc * axis.x * axis.x + c, oc * axis.x * axis.y - axis.z * s, oc * axis.z * axis.x + axis.y * s, 0.0,
				oc * axis.x * axis.y + axis.z * s, oc * axis.y * axis.y + c, oc * axis.y * axis.z - axis.x * s, 0.0,
				oc * axis.z * axis.x - axis.y * s, oc * axis.y * axis.z + axis.x * s, oc * axis.z * axis.z + c, 0.0,
				0.0, 0.0, 0.0, 1.0);
			}
			
			float4x4 poiRotationMatrixFromAngles(float x, float y, float z)
			{
				float angleX = radians(x);
				float c = cos(angleX);
				float s = sin(angleX);
				float4x4 rotateXMatrix = float4x4(1, 0, 0, 0,
				0, c, -s, 0,
				0, s, c, 0,
				0, 0, 0, 1);
				
				float angleY = radians(y);
				c = cos(angleY);
				s = sin(angleY);
				float4x4 rotateYMatrix = float4x4(c, 0, s, 0,
				0, 1, 0, 0,
				- s, 0, c, 0,
				0, 0, 0, 1);
				
				float angleZ = radians(z);
				c = cos(angleZ);
				s = sin(angleZ);
				float4x4 rotateZMatrix = float4x4(c, -s, 0, 0,
				s, c, 0, 0,
				0, 0, 1, 0,
				0, 0, 0, 1);
				
				return mul(mul(rotateXMatrix, rotateYMatrix), rotateZMatrix);
			}
			
			float4x4 poiRotationMatrixFromAngles(float3 angles)
			{
				float angleX = radians(angles.x);
				float c = cos(angleX);
				float s = sin(angleX);
				float4x4 rotateXMatrix = float4x4(1, 0, 0, 0,
				0, c, -s, 0,
				0, s, c, 0,
				0, 0, 0, 1);
				
				float angleY = radians(angles.y);
				c = cos(angleY);
				s = sin(angleY);
				float4x4 rotateYMatrix = float4x4(c, 0, s, 0,
				0, 1, 0, 0,
				- s, 0, c, 0,
				0, 0, 0, 1);
				
				float angleZ = radians(angles.z);
				c = cos(angleZ);
				s = sin(angleZ);
				float4x4 rotateZMatrix = float4x4(c, -s, 0, 0,
				s, c, 0, 0,
				0, 0, 1, 0,
				0, 0, 0, 1);
				
				return mul(mul(rotateXMatrix, rotateYMatrix), rotateZMatrix);
			}
			
			float3 getCameraPosition()
			{
				#ifdef USING_STEREO_MATRICES
				return lerp(unity_StereoWorldSpaceCameraPos[0], unity_StereoWorldSpaceCameraPos[1], 0.5);
				#endif
				return _WorldSpaceCameraPos;
			}
			
			half2 calcScreenUVs(half4 grabPos)
			{
				half2 uv = grabPos.xy / (grabPos.w + 0.0000000001);
				#if UNITY_SINGLE_PASS_STEREO
				uv.xy *= half2(_ScreenParams.x * 2, _ScreenParams.y);
				#else
				uv.xy *= _ScreenParams.xy;
				#endif
				
				return uv;
			}
			
			float CalcMipLevel(float2 texture_coord)
			{
				float2 dx = ddx(texture_coord);
				float2 dy = ddy(texture_coord);
				float delta_max_sqr = max(dot(dx, dx), dot(dy, dy));
				
				return 0.5 * log2(delta_max_sqr);
			}
			
			inline float4 CalculateFrustumCorrection()
			{
				float x1 = -UNITY_MATRIX_P._31 / (UNITY_MATRIX_P._11 * UNITY_MATRIX_P._34);
				float x2 = -UNITY_MATRIX_P._32 / (UNITY_MATRIX_P._22 * UNITY_MATRIX_P._34);
				return float4(x1, x2, 0, UNITY_MATRIX_P._33 / UNITY_MATRIX_P._34 + x1 * UNITY_MATRIX_P._13 + x2 * UNITY_MATRIX_P._23);
			}
			
			float inverseLerp(float A, float B, float T)
			{
				return(T - A) / (B - A);
			}
			
			float inverseLerp2(float2 a, float2 b, float2 value)
			{
				float2 AB = b - a;
				float2 AV = value - a;
				return dot(AV, AB) / dot(AB, AB);
			}
			
			float inverseLerp3(float3 a, float3 b, float3 value)
			{
				float3 AB = b - a;
				float3 AV = value - a;
				return dot(AV, AB) / dot(AB, AB);
			}
			
			float inverseLerp4(float4 a, float4 b, float4 value)
			{
				float4 AB = b - a;
				float4 AV = value - a;
				return dot(AV, AB) / dot(AB, AB);
			}
			
			/*
			MIT License
			
			Copyright (c) 2019 wraikny
			
			Permission is hereby granted, free of charge, to any person obtaining a copy
			of this software and associated documentation files (the "Software"), to deal
			in the Software without restriction, including without limitation the rights
			to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
			copies of the Software, and to permit persons to whom the Software is
			furnished to do so, subject to the following conditions:
			
			The above copyright notice and this permission notice shall be included in all
			copies or substantial portions of the Software.
			
			THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
			IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
			FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
			AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
			LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
			OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
			SOFTWARE.
			
			VertexTransformShader is dependent on:
			*/
			
			float4 quaternion_conjugate(float4 v)
			{
				return float4(
				v.x, -v.yzw
				);
			}
			
			float4 quaternion_mul(float4 v1, float4 v2)
			{
				float4 result1 = (v1.x * v2 + v1 * v2.x);
				
				float4 result2 = float4(
				- dot(v1.yzw, v2.yzw),
				cross(v1.yzw, v2.yzw)
				);
				
				return float4(result1 + result2);
			}
			
			// angle : radians
			float4 get_quaternion_from_angle(float3 axis, float angle)
			{
				float sn = sin(angle * 0.5);
				float cs = cos(angle * 0.5);
				return float4(axis * sn, cs);
			}
			
			float4 quaternion_from_vector(float3 inVec)
			{
				return float4(0.0, inVec);
			}
			
			float degree_to_radius(float degree)
			{
				return(
				degree / 180.0 * pi
				);
			}
			
			float3 rotate_with_quaternion(float3 inVec, float3 rotation)
			{
				float4 qx = get_quaternion_from_angle(float3(1, 0, 0), radians(rotation.x));
				float4 qy = get_quaternion_from_angle(float3(0, 1, 0), radians(rotation.y));
				float4 qz = get_quaternion_from_angle(float3(0, 0, 1), radians(rotation.z));
				
				#define MUL3(A, B, C) quaternion_mul(quaternion_mul((A), (B)), (C))
				float4 quaternion = normalize(MUL3(qx, qy, qz));
				float4 conjugate = quaternion_conjugate(quaternion);
				
				float4 inVecQ = quaternion_from_vector(inVec);
				
				float3 rotated = (
				MUL3(quaternion, inVecQ, conjugate)
				).yzw;
				
				return rotated;
			}
			
			float4 transform(float4 input, float4 pos, float4 rotation, float4 scale)
			{
				input.rgb *= (scale.xyz * scale.w);
				input = float4(rotate_with_quaternion(input.xyz, rotation.xyz * rotation.w) + (pos.xyz * pos.w), input.w);
				return input;
			}
			
			/*
			MIT END
			*/
			
			float aaBlurStep(float gradient, float edge, float blur)
			{
				float edgeMin = saturate(edge);
				float edgeMax = saturate(edge + blur * (1 - edge));
				return smoothstep(0, 1, saturate((gradient - edgeMin) / saturate(edgeMax - edgeMin + fwidth(gradient))));
			}
			
			float3 poiThemeColor(in PoiMods poiMods, in float3 srcColor, in float themeIndex)
			{
				if (themeIndex == 0) return srcColor;
				themeIndex -= 1;
				
				if (themeIndex <= 3)
				{
					return poiMods.globalColorTheme[themeIndex];
				}
				
				#ifdef COLOR_GRADING_LOG_VIEW
				if (poiMods.audioLinkAvailable)
				{
					return poiMods.globalColorTheme[themeIndex];
				}
				#endif
				
				return srcColor;
			}
			#ifdef COLOR_GRADING_LOG_VIEW
			
			// Convenient mechanism to read from the AudioLink texture that handles reading off the end of one line and onto the next above it.
			float4 AudioLinkDataMultiline(uint2 xycoord) { return AudioLinkData(uint2(xycoord.x % AUDIOLINK_WIDTH, xycoord.y + xycoord.x/AUDIOLINK_WIDTH)); }
			
			// Mechanism to sample between two adjacent pixels and lerp between them, like "linear" supesampling
			float4 AudioLinkLerp(float2 xy) { return lerp( AudioLinkData(xy), AudioLinkData(xy+int2(1,0)), frac( xy.x ) ); }
			
			// Same as AudioLinkLerp but properly handles multiline reading.
			float4 AudioLinkLerpMultiline(float2 xy) { return lerp(AudioLinkDataMultiline(xy), AudioLinkDataMultiline(xy+float2(1,0)), frac(xy.x)); }
			
			//Tests to see if Audio Link texture is available
			bool AudioLinkIsAvailable()
			{
				#if !defined(AUDIOLINK_STANDARD_INDEXING)
				int width, height;
				_AudioTexture.GetDimensions(width, height);
				return width > 16;
				#else
				return _AudioTexture_TexelSize.z > 16;
				#endif
			}
			
			//Get version of audiolink present in the world, 0 if no audiolink is present
			float AudioLinkGetVersion()
			{
				int2 dims;
				#if !defined(AUDIOLINK_STANDARD_INDEXING)
				_AudioTexture.GetDimensions(dims.x, dims.y);
				#else
				dims = _AudioTexture_TexelSize.zw;
				#endif
				
				if (dims.x >= 128)
				return AudioLinkData(ALPASS_GENERALVU).x;
				else if (dims.x > 16)
				return 1;
				else
				return 0;
			}
			
			// This pulls data from this texture.
			#define AudioLinkGetSelfPixelData(xy) _SelfTexture2D[xy]
			
			// Extra utility functions for time.
			uint AudioLinkDecodeDataAsUInt(uint2 indexloc)
			{
				uint4 rpx = AudioLinkData(indexloc);
				return rpx.r + rpx.g*1024 + rpx.b * 1048576 + rpx.a * 1073741824;
			}
			
			//Note: This will truncate time to every 134,217.728 seconds (~1.5 days of an instance being up) to prevent floating point aliasing.
			// if your code will alias sooner, you will need to use a different function.  It should be safe to use this on all times.
			float AudioLinkDecodeDataAsSeconds(uint2 indexloc)
			{
				uint time = AudioLinkDecodeDataAsUInt(indexloc) & 0x7ffffff;
				//Can't just divide by float.  Bug in Unity's HLSL compiler.
				return float(time / 1000) + float( time % 1000 ) / 1000.;
			}
			
			#define ALDecodeDataAsSeconds( x ) AudioLinkDecodeDataAsSeconds( x )
			#define ALDecodeDataAsUInt( x ) AudioLinkDecodeDataAsUInt( x )
			
			float AudioLinkRemap(float t, float a, float b, float u, float v) { return ((t-a) / (b-a)) * (v-u) + u; }
			
			float3 AudioLinkHSVtoRGB(float3 HSV)
			{
				float3 RGB = 0;
				float C = HSV.z * HSV.y;
				float H = HSV.x * 6;
				float X = C * (1 - abs(fmod(H, 2) - 1));
				if (HSV.y != 0)
				{
					float I = floor(H);
					if (I == 0) { RGB = float3(C, X, 0); }
					else if (I == 1) { RGB = float3(X, C, 0); }
					else if (I == 2) { RGB = float3(0, C, X); }
					else if (I == 3) { RGB = float3(0, X, C); }
					else if (I == 4) { RGB = float3(X, 0, C); }
					else { RGB = float3(C, 0, X); }
				}
				float M = HSV.z - C;
				return RGB + M;
			}
			
			float3 AudioLinkCCtoRGB(float bin, float intensity, int rootNote)
			{
				float note = bin / AUDIOLINK_EXPBINS;
				
				float hue = 0.0;
				note *= 12.0;
				note = glsl_mod(4. - note + rootNote, 12.0);
				{
					if(note < 4.0)
					{
						//Needs to be YELLOW->RED
						hue = (note) / 24.0;
					}
					else if(note < 8.0)
					{
						//            [4]  [8]
						//Needs to be RED->BLUE
						hue = (note-2.0) / 12.0;
					}
					else
					{
						//             [8] [12]
						//Needs to be BLUE->YELLOW
						hue = (note - 4.0) / 8.0;
					}
				}
				float val = intensity - 0.1;
				return AudioLinkHSVtoRGB(float3(fmod(hue, 1.0), 1.0, clamp(val, 0.0, 1.0)));
			}
			
			// Sample the amplitude of a given frequency in the DFT, supports frequencies in [13.75; 14080].
			float4 AudioLinkGetAmplitudeAtFrequency(float hertz)
			{
				float note = AUDIOLINK_EXPBINS * log2(hertz / AUDIOLINK_BOTTOM_FREQUENCY);
				return AudioLinkLerpMultiline(ALPASS_DFT + float2(note, 0));
			}
			
			// Sample the amplitude of a given semitone in an octave. Octave is in [0; 9] while note is [0; 11].
			float AudioLinkGetAmplitudeAtNote(float octave, float note)
			{
				float quarter = note * 2.0;
				return AudioLinkLerpMultiline(ALPASS_DFT + float2(octave * AUDIOLINK_EXPBINS + quarter, 0));
			}
			
			// Get a reasonable drop-in replacement time value for _Time.y with the
			// given chronotensity index [0; 7] and AudioLink band [0; 3].
			float AudioLinkGetChronoTime(uint index, uint band)
			{
				return (AudioLinkDecodeDataAsUInt(ALPASS_CHRONOTENSITY + uint2(index, band))) / 100000.0;
			}
			
			// Get a chronotensity value in the interval [0; 1], modulated by the speed input,
			// with the given chronotensity index [0; 7] and AudioLink band [0; 3].
			float AudioLinkGetChronoTimeNormalized(uint index, uint band, float speed)
			{
				return frac(AudioLinkGetChronoTime(index, band) * speed);
			}
			
			// Get a chronotensity value in the interval [0; interval], modulated by the speed input,
			// with the given chronotensity index [0; 7] and AudioLink band [0; 3].
			float AudioLinkGetChronoTimeInterval(uint index, uint band, float speed, float interval)
			{
				return AudioLinkGetChronoTimeNormalized(index, band, speed) * interval;
			}
			
			float getBandAtTime(float band, float time, float width, float size = 1.0f)
			{
				//return remap(UNITY_SAMPLE_TEX2D(_AudioTexture, float2(time * width, band/128.0)).r, min(size,.9999), 1);
				return remapClamped(min(size,.9999), 1, AudioLinkData(ALPASS_AUDIOBASS + uint2(time * AUDIOLINK_WIDTH,band)).r);
			}
			
			fixed3 maximize(fixed3 c) {
				if (c.x == 0 && c.y == 0 && c.z == 0)
				return fixed3(1.0, 1.0, 1.0);
				else
				return c / max(c.r, max(c.g, c.b));
			}
			
			void initPoiAudioLink(inout PoiMods poiMods)
			{
				poiMods.audioLinkAvailable = AudioLinkIsAvailable();
				poiMods.audioLinkAvailable *= _AudioLinkAnimToggle;
				
				if (poiMods.audioLinkAvailable)
				{
					poiMods.audioLinkVersion = AudioLinkGetVersion();
					poiMods.audioLink.x = AudioLinkData(ALPASS_AUDIOBASS).r;
					poiMods.audioLink.y = AudioLinkData(ALPASS_AUDIOLOWMIDS).r;
					poiMods.audioLink.z = AudioLinkData(ALPASS_AUDIOHIGHMIDS).r;
					poiMods.audioLink.w = AudioLinkData(ALPASS_AUDIOTREBLE).r;
					
					/*
					poiMods.globalColorTheme[4] = AudioLinkData( ALPASS_CCCOLORS + uint2( 0, 0 ) );
					poiMods.globalColorTheme[5] = AudioLinkData( ALPASS_CCCOLORS + uint2( 1, 0 ) );
					poiMods.globalColorTheme[6] = AudioLinkData( ALPASS_CCCOLORS + uint2( 2, 0 ) );
					poiMods.globalColorTheme[7] = AudioLinkData( ALPASS_CCCOLORS + uint2( 3, 0 ) );
					
					poiMods.globalColorTheme[4] =  float4(maximize(AudioLinkData( ALPASS_CCCOLORS + uint2( 0, 0 ) )),1.0);
					poiMods.globalColorTheme[5] =  float4(maximize(AudioLinkData( ALPASS_CCCOLORS + uint2( 1, 0 ) )),1.0);
					poiMods.globalColorTheme[6] =  float4(maximize(AudioLinkData( ALPASS_CCCOLORS + uint2( 2, 0 ) )),1.0);
					poiMods.globalColorTheme[7] =  float4(maximize(AudioLinkData( ALPASS_CCCOLORS + uint2( 3, 0 ) )),1.0);
					*/
					
					poiMods.globalColorTheme[4] =  float4(AudioLinkCCtoRGB(glsl_mod(AudioLinkData(ALPASS_CCINTERNAL + uint2(2, 0)).x, AUDIOLINK_EXPBINS), 1, AUDIOLINK_ROOTNOTE), 1.0);
					poiMods.globalColorTheme[5] =  float4(AudioLinkCCtoRGB(glsl_mod(AudioLinkData(ALPASS_CCINTERNAL + uint2(3, 0)).x, AUDIOLINK_EXPBINS), 1, AUDIOLINK_ROOTNOTE), 1.0);
					poiMods.globalColorTheme[6] =  float4(AudioLinkCCtoRGB(glsl_mod(AudioLinkData(ALPASS_CCINTERNAL + uint2(4, 0)).x, AUDIOLINK_EXPBINS), 1, AUDIOLINK_ROOTNOTE), 1.0);
					poiMods.globalColorTheme[7] =  float4(AudioLinkCCtoRGB(glsl_mod(AudioLinkData(ALPASS_CCINTERNAL + uint2(5, 0)).x, AUDIOLINK_EXPBINS), 1, AUDIOLINK_ROOTNOTE), 1.0);
					
					poiMods.globalColorTheme[8] = AudioLinkData(ALPASS_THEME_COLOR0);
					poiMods.globalColorTheme[9] = AudioLinkData(ALPASS_THEME_COLOR1);
					poiMods.globalColorTheme[10] = AudioLinkData(ALPASS_THEME_COLOR2);
					poiMods.globalColorTheme[11] = AudioLinkData(ALPASS_THEME_COLOR3);
				}
			}
			
			void DebugVisualizer(inout PoiFragData poiFragData, in PoiMesh poiMesh, in PoiMods poiMods){
				if (_DebugWaveform){
					float waveform = AudioLinkLerpMultiline(ALPASS_WAVEFORM + float2( 500. * poiMesh.uv[0].x, 0)).r;
					poiFragData.emission += clamp(1 - 50 * abs(waveform - poiMesh.uv[0].y * 2. + 1), 0, 1);
				}
				if (_DebugDFT){
					poiFragData.emission += AudioLinkLerpMultiline(ALPASS_DFT + uint2(poiMesh.uv[0].x * AUDIOLINK_ETOTALBINS, 0)).rrr;
				}
				if (_DebugBass){
					poiFragData.emission += poiMods.audioLink.x;
				}
				if (_DebugLowMids){
					poiFragData.emission += poiMods.audioLink.y;
				}
				if (_DebugHighMids){
					poiFragData.emission += poiMods.audioLink.z;
				}
				if (_DebugTreble){
					poiFragData.emission += poiMods.audioLink.w;
				}
				if (_DebugCCColors){
					poiFragData.emission += AudioLinkData(ALPASS_CCCOLORS + uint2(3 + 1, 0));
				}
				if (_DebugCCStrip){
					poiFragData.emission += AudioLinkLerp(ALPASS_CCSTRIP + float2(poiMesh.uv[0].x * AUDIOLINK_WIDTH, 0));
				}
				if (_DebugCCLights){
					poiFragData.emission += AudioLinkData(ALPASS_CCLIGHTS + uint2(uint(poiMesh.uv[0].x * 8) + uint(poiMesh.uv[0].y * 16) * 8, 0));
				}
				if (_DebugAutocorrelator){
					poiFragData.emission += saturate(AudioLinkLerp(ALPASS_AUTOCORRELATOR + float2((abs(1. - poiMesh.uv[0].x * 2.)) * AUDIOLINK_WIDTH, 0)).rrr);
				}
				if (_DebugChronotensity){
					poiFragData.emission += (AudioLinkDecodeDataAsUInt(ALPASS_CHRONOTENSITY  + uint2(1, 0)) % 1000000) / 1000000.0;
				}
			}
			
			void SetupAudioLink(inout PoiFragData poiFragData, inout PoiMods poiMods, in PoiMesh poiMesh){
				initPoiAudioLink(poiMods);
				DebugVisualizer(poiFragData, poiMesh, poiMods);
				
				if(_AudioLinkCCStripY)
				{
					poiFragData.emission += AudioLinkLerp( ALPASS_CCSTRIP + float2( poiMesh.uv[0].y * AUDIOLINK_WIDTH, 0 ) ).rgb * .5;
				}
			}
			
			#endif
			
			v2f vert(appdata v)
			{
				UNITY_SETUP_INSTANCE_ID(v);
				v2f o;
				PoiInitStruct(v2f, o);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);
				
				#ifdef POI_UDIMDISCARD
				UNITY_BRANCH
				if(_UDIMDiscardMode == 0) // Discard Vertices instead of just pixels
				{
					// Branchless (inspired by s-ilent)
					float2 udim = 0;
					// Select UV
					udim += (v.uv0.xy * (_UDIMDiscardUV == 0));
					udim += (v.uv1.xy * (_UDIMDiscardUV == 1));
					udim += (v.uv2.xy * (_UDIMDiscardUV == 2));
					udim += (v.uv3.xy * (_UDIMDiscardUV == 3));
					
					float isRendered = 0;
					float4 xMask = float4(  (udim.x >= 0 && udim.x < 1),
					(udim.x >= 1 && udim.x < 2),
					(udim.x >= 2 && udim.x < 3),
					(udim.x >= 3 && udim.x < 4));
					
					isRendered += (udim.y >= 0 && udim.y < 1) * dot(_UDIMDiscardRow0, xMask);
					isRendered += (udim.y >= 1 && udim.y < 2) * dot(_UDIMDiscardRow1, xMask);
					isRendered += (udim.y >= 2 && udim.y < 3) * dot(_UDIMDiscardRow2, xMask);
					isRendered += (udim.y >= 3 && udim.y < 4) * dot(_UDIMDiscardRow3, xMask);
					isRendered += (udim.y < 0 || udim.y >= 4) + (udim.x < 0 || udim.x >= 4); // never discard outside 4x4 grid in pos coords
					
					if(!isRendered) v.vertex = 0.0/0.0; // NaN position to discard; GPU discards degenerate geometry. thanks bgolus
				}
				#endif
				
				#ifdef AUTO_EXPOSURE
				float4 audioLinkBands = 0;
				float3 ALrotation = 0;
				float3 ALLocalTranslation = 0;
				float3 CTALRotation = 0;
				float3 ALScale = 0;
				float3 ALWorldTranslation = 0;
				float ALHeight = 0;
				float ALRoundingAmount = 0;
				#ifdef COLOR_GRADING_LOG_VIEW
				if (AudioLinkIsAvailable())
				{
					audioLinkBands.x = AudioLinkData(ALPASS_AUDIOBASS).r;
					audioLinkBands.y = AudioLinkData(ALPASS_AUDIOLOWMIDS).r;
					audioLinkBands.z = AudioLinkData(ALPASS_AUDIOHIGHMIDS).r;
					audioLinkBands.w = AudioLinkData(ALPASS_AUDIOTREBLE).r;
					
					if(any(_VertexLocalTranslationALMin) || any(_VertexLocalTranslationALMax))
					{
						ALLocalTranslation = lerp(_VertexLocalTranslationALMin, _VertexLocalTranslationALMax, audioLinkBands[_VertexLocalTranslationALBand]);
					}
					if(any(_VertexLocalRotationAL))
					{
						ALrotation = audioLinkBands[_VertexLocalRotationALBand] * _VertexLocalRotationAL;
					}
					if(any(_VertexLocalRotationCTALSpeed))
					{
						CTALRotation = AudioLinkGetChronoTime(_VertexLocalRotationCTALType, _VertexLocalRotationCTALBand) * _VertexLocalRotationCTALSpeed * 360;
					}
					if(any(_VertexLocalScaleALMin) || any(_VertexLocalScaleALMax))
					{
						ALScale = lerp(_VertexLocalScaleALMin.xyz + _VertexLocalScaleALMin.w, _VertexLocalScaleALMax.xyz + _VertexLocalScaleALMax.w, audioLinkBands[_VertexLocalScaleALBand]);
					}
					if(any(_VertexWorldTranslationALMin) || any(_VertexWorldTranslationALMax))
					{
						ALWorldTranslation = lerp(_VertexWorldTranslationALMin, _VertexWorldTranslationALMax, audioLinkBands[_VertexWorldTranslationALBand]);
					}
					if(any(_VertexManipulationHeightAL))
					{
						ALHeight = lerp(_VertexManipulationHeightAL.x , _VertexManipulationHeightAL.y, audioLinkBands[_VertexManipulationHeightBand]);
					}
					if(any(_VertexRoundingRangeAL))
					{
						ALRoundingAmount = lerp(_VertexRoundingRangeAL.x, _VertexRoundingRangeAL.y, audioLinkBands[_VertexRoundingRangeBand]);
					}
				}
				#endif
				
				// Local Transformation
				float4 rotation = float4(_VertexManipulationLocalRotation.xyz + float3(180,0,0) + _VertexManipulationLocalRotationSpeed * _Time.x + ALrotation + CTALRotation, _VertexManipulationLocalRotation.w);
				v.normal = rotate_with_quaternion(v.normal, rotation.xyz);
				v.tangent.xyz = rotate_with_quaternion(v.tangent.xyz, rotation.xyz);
				v.vertex = transform(v.vertex, _VertexManipulationLocalTranslation + float4(ALLocalTranslation,0), rotation, _VertexManipulationLocalScale + float4(ALScale,0));
				o.normal = UnityObjectToWorldNormal(v.normal);
				
				#if defined(PROP_VERTEXMANIPULATIONHEIGHTMASK) || !defined(OPTIMIZER_ENABLED)
				float3 heightOffset = (tex2Dlod(_VertexManipulationHeightMask, float4(poiUV(v.uv0, _VertexManipulationHeightMask_ST) + _VertexManipulationHeightMaskPan * _Time.x, 0, 0)).r - _VertexManipulationHeightBias) * (_VertexManipulationHeight + ALHeight) * o.normal;
				#else
				float3 heightOffset = (_VertexManipulationHeight + ALHeight) * o.normal;
				#endif
				
				v.vertex.xyz += mul(unity_WorldToObject, _VertexManipulationWorldTranslation.xyz + ALWorldTranslation + heightOffset).xyz;
				
				// rounding
				UNITY_BRANCH
				if (_VertexRoundingEnabled)
				{
					float divisionAmount = _VertexRoundingDivision + ALRoundingAmount;
					float3 worldRoundPosition = (ceil(mul(unity_ObjectToWorld, v.vertex.xyz) * divisionAmount) / divisionAmount) - 1 / divisionAmount * .5;
					v.vertex = mul(unity_WorldToObject, worldRoundPosition);
				}
				#endif
				
				o.objectPos = mul(unity_ObjectToWorld, float4(0, 0, 0, 1)).xyz;
				o.objNormal = v.normal;
				o.normal = UnityObjectToWorldNormal(v.normal);
				o.tangent = UnityObjectToWorldDir(v.tangent);
				
				o.binormal = cross(o.normal, o.tangent) * (v.tangent.w * unity_WorldTransformParams.w);
				o.vertexColor = v.color;
				
				o.uv[0] = v.uv0;
				o.uv[1] = v.uv1;
				o.uv[2] = v.uv2;
				o.uv[3] = v.uv3;
				
				#if defined(LIGHTMAP_ON)
				o.lightmapUV.xy = v.uv1.xy * unity_LightmapST.xy + unity_LightmapST.zw;
				#endif
				#ifdef DYNAMICLIGHTMAP_ON
				o.lightmapUV.zw = v.uv2.xy * unity_DynamicLightmapST.xy + unity_DynamicLightmapST.zw;
				#endif
				
				o.localPos = v.vertex;
				o.worldPos = mul(unity_ObjectToWorld, o.localPos);
				
				float3 localOffset = float3(0, 0, 0);
				float3 worldOffset = float3(0, 0, 0);
				
				o.localPos.rgb += localOffset;
				o.worldPos.rgb += worldOffset;
				
				o.pos = UnityObjectToClipPos(o.localPos);
				#ifdef POI_PASS_OUTLINE
				#if defined(UNITY_REVERSED_Z)
				//DX
				o.pos.z += _Offset_Z * - 0.01;
				#else
				//OpenGL
				o.pos.z += _Offset_Z * 0.01;
				#endif
				#endif
				o.grabPos = ComputeGrabScreenPos(o.pos);
				
				if (_RenderingReduceClipDistance)
				{
					if (o.pos.w < _ProjectionParams.y * 1.01 && o.pos.w > 0)
					{
						o.pos.z = o.pos.z * 0.0001 + o.pos.w * 0.999;
					}
				}
				
				#ifndef FORWARD_META_PASS
				#if !defined(UNITY_PASS_SHADOWCASTER)
				UNITY_TRANSFER_SHADOW(o, o.uv[0].xy);
				#else
				TRANSFER_SHADOW_CASTER_NOPOS(o, o.pos);
				#endif
				#endif
				UNITY_TRANSFER_FOG(o, o.pos);
				
				#if defined(GRAIN)
				float4 worldDirection;
				
				worldDirection.xyz = o.worldPos.xyz - _WorldSpaceCameraPos;
				worldDirection.w = dot(o.pos, CalculateFrustumCorrection());
				o.worldDirection = worldDirection;
				#endif
				return o;
			}
			
			void calculateGlobalThemes(inout PoiMods poiMods)
			{
				poiMods.globalColorTheme[0] = _GlobalThemeColor0;
				poiMods.globalColorTheme[1] = _GlobalThemeColor1;
				poiMods.globalColorTheme[2] = _GlobalThemeColor2;
				poiMods.globalColorTheme[3] = _GlobalThemeColor3;
			}
			
			#ifdef POI_UDIMDISCARD
			void applyUDIMDiscard(inout PoiFragData poiFragData, in PoiMesh poiMesh)
			{
				float2 udim = floor(poiMesh.uv[_UDIMDiscardUV].xy);
				
				float isRendered = 0;
				float4 xMask = float4(  (udim.x >= 0 && udim.x < 1),
				(udim.x >= 1 && udim.x < 2),
				(udim.x >= 2 && udim.x < 3),
				(udim.x >= 3 && udim.x < 4));
				
				isRendered += (udim.y >= 0 && udim.y < 1) * dot(_UDIMDiscardRow0, xMask);
				isRendered += (udim.y >= 1 && udim.y < 2) * dot(_UDIMDiscardRow1, xMask);
				isRendered += (udim.y >= 2 && udim.y < 3) * dot(_UDIMDiscardRow2, xMask);
				isRendered += (udim.y >= 3 && udim.y < 4) * dot(_UDIMDiscardRow3, xMask);
				isRendered += (udim.y < 0 || udim.y >= 4) + (udim.x < 0 || udim.x >= 4); // never discard outside 4x4 grid in pos coords
				
				if(!isRendered) discard;
				
				return;
			}
			#endif
			
			float2 calculatePolarCoordinate(in PoiMesh poiMesh)
			{
				float2 delta = poiMesh.uv[_PolarUV] - _PolarCenter;
				float radius = length(delta) * 2 * _PolarRadialScale;
				float angle = atan2(delta.x, delta.y) * 1.0 / 6.28 * _PolarLengthScale;
				return float2(radius, angle + distance(poiMesh.uv[_PolarUV], _PolarCenter) * _PolarSpiralPower);
			}
			
			float2 MonoPanoProjection(float3 coords)
			{
				float3 normalizedCoords = normalize(coords);
				float latitude = acos(normalizedCoords.y);
				float longitude = atan2(normalizedCoords.z, normalizedCoords.x);
				float2 sphereCoords = float2(longitude, latitude) * float2(1.0 / UNITY_PI, 1.0 / UNITY_PI);
				sphereCoords = float2(1.0, 1.0) - sphereCoords;
				return(sphereCoords + float4(0, 1 - unity_StereoEyeIndex, 1, 1.0).xy) * float4(0, 1 - unity_StereoEyeIndex, 1, 1.0).zw;
			}
			
			float2 StereoPanoProjection(float3 coords)
			{
				float3 normalizedCoords = normalize(coords);
				float latitude = acos(normalizedCoords.y);
				float longitude = atan2(normalizedCoords.z, normalizedCoords.x);
				float2 sphereCoords = float2(longitude, latitude) * float2(0.5 / UNITY_PI, 1.0 / UNITY_PI);
				sphereCoords = float2(0.5, 1.0) - sphereCoords;
				return(sphereCoords + float4(0, 1 - unity_StereoEyeIndex, 1, 0.5).xy) * float4(0, 1 - unity_StereoEyeIndex, 1, 0.5).zw;
			}
			
			float2 calculatePanosphereUV(in PoiMesh poiMesh)
			{
				float3 viewDirection = normalize(lerp(getCameraPosition().xyz, _WorldSpaceCameraPos.xyz, _PanoUseBothEyes) - poiMesh.worldPos.xyz) * - 1;
				return lerp(MonoPanoProjection(viewDirection), StereoPanoProjection(viewDirection), _StereoEnabled);
			}
			
			#ifdef USER_LUT
			float2 distortedUV(in PoiMesh poiMesh)
			{
				#if defined(PROP_DISTORTIONFLOWTEXTURE) || !defined(OPTIMIZER_ENABLED)
				float4 flowVector = POI2D_SAMPLER_PAN(_DistortionFlowTexture, _MainTex, poiUV(poiMesh.uv[_DistortionFlowTextureUV], _DistortionFlowTexture_ST), _DistortionFlowTexturePan) * 2 - 1;
				#else
				float4 flowVector = 0;
				#endif
				
				#if defined(PROP_DISTORTIONFLOWTEXTURE1) || !defined(OPTIMIZER_ENABLED)
				float4 flowVector1 = POI2D_SAMPLER_PAN(_DistortionFlowTexture1, _MainTex, poiUV(poiMesh.uv[_DistortionFlowTexture1UV], _DistortionFlowTexture1_ST), _DistortionFlowTexture1Pan) * 2 - 1;
				#else
				float4 flowVector1 = 0;
				#endif
				
				#if defined(PROP_DISTORTIONMASK) || !defined(OPTIMIZER_ENABLED)
				half distortionMask = POI2D_SAMPLER_PAN(_DistortionMask, _MainTex, poiMesh.uv[_DistortionMaskUV], _DistortionMaskPan).r;
				#else
				half distortionMask = 1;
				#endif
				
				half distortionStrength = _DistortionStrength;
				half distortionStrength1 = _DistortionStrength1;
				
				flowVector *= distortionStrength;
				flowVector1 *= distortionStrength1;
				return poiMesh.uv[_DistortionUvToDistort] + ((flowVector.xy + flowVector1.xy) / 2) * distortionMask;
			}
			#endif
			
			#ifdef POI_PARALLAX
			inline float2 POM(in PoiLight poiLight, sampler2D heightMap, in PoiMesh poiMesh, float3 worldViewDir, float3 viewDirTan, int minSamples, int maxSamples, float parallax, float refPlane, float2 tilling, float2 curv)
			{
				float2 uvs = poiUV(poiMesh.uv[_HeightMapUV], _HeightMap_ST);
				float2 dx = ddx(uvs);
				float2 dy = ddy(uvs);
				float3 result = 0;
				int stepIndex = 0;
				int numSteps = (int)lerp(maxSamples, minSamples, saturate(dot(poiMesh.normals[0], worldViewDir)));
				float layerHeight = 1.0 / numSteps;
				float2 plane = parallax * (viewDirTan.xy / viewDirTan.z);
				uvs += refPlane * plane;
				float2 deltaTex = -plane * layerHeight;
				float2 prevTexOffset = 0;
				float prevRayZ = 1.0f;
				float prevHeight = 0.0f;
				float2 currTexOffset = deltaTex;
				float currRayZ = 1.0f - layerHeight;
				float currHeight = 0.0f;
				float intersection = 0;
				float2 finalTexOffset = 0;
				while (stepIndex < numSteps + 1)
				{
					result.z = dot(curv, currTexOffset * currTexOffset);
					currHeight = tex2Dgrad(heightMap, uvs + currTexOffset, dx, dy).r * (1 - result.z);
					if (currHeight > currRayZ)
					{
						stepIndex = numSteps + 1;
					}
					else
					{
						stepIndex++;
						prevTexOffset = currTexOffset;
						prevRayZ = currRayZ;
						prevHeight = currHeight;
						currTexOffset += deltaTex;
						currRayZ -= layerHeight * (1 - result.z) * (1 + _CurvFix);
					}
				}
				int sectionSteps = 10;
				int sectionIndex = 0;
				float newZ = 0;
				float newHeight = 0;
				while (sectionIndex < sectionSteps)
				{
					intersection = (prevHeight - prevRayZ) / (prevHeight - currHeight + currRayZ - prevRayZ);
					finalTexOffset = prevTexOffset +intersection * deltaTex;
					newZ = prevRayZ - intersection * layerHeight;
					newHeight = tex2Dgrad(heightMap, uvs + finalTexOffset, dx, dy).r;
					if (newHeight > newZ)
					{
						currTexOffset = finalTexOffset;
						currHeight = newHeight;
						currRayZ = newZ;
						deltaTex = intersection * deltaTex;
						layerHeight = intersection * layerHeight;
					}
					else
					{
						prevTexOffset = finalTexOffset;
						prevHeight = newHeight;
						prevRayZ = newZ;
						deltaTex = (1 - intersection) * deltaTex;
						layerHeight = (1 - intersection) * layerHeight;
					}
					sectionIndex++;
				}
				#ifdef UNITY_PASS_SHADOWCASTER
				if (unity_LightShadowBias.z == 0.0)
				{
					#endif
					if (result.z > 1)
					clip(-1);
					#ifdef UNITY_PASS_SHADOWCASTER
				}
				#endif
				return uvs + finalTexOffset;
			}
			/*
			float2 ParallaxOffsetMultiStep(float surfaceHeight, float strength, float2 uv, float3 tangentViewDir)
			{
				float2 uvOffset = 0;
				float2 prevUVOffset = 0;
				float stepSize = 1.0 / _HeightSteps;
				float stepHeight = 1;
				float2 uvDelta = tangentViewDir.xy * (stepSize * strength);
				float prevStepHeight = stepHeight;
				float prevSurfaceHeight = surfaceHeight;
				
				[unroll(20)]
				for (int j = 1; j <= _HeightSteps && stepHeight > surfaceHeight; j++)
				{
					prevUVOffset = uvOffset;
					prevStepHeight = stepHeight;
					prevSurfaceHeight = surfaceHeight;
					uvOffset -= uvDelta;
					stepHeight -= stepSize;
					surfaceHeight = POI2D_SAMPLER_PAN(_Heightmap, _MainTex, poiUV(uv + uvOffset, _Heightmap_ST), _HeightmapPan) + _HeightOffset;
				}
				
				[unroll(3)]
				for (int k = 0; k < 3; k++)
				{
					uvDelta *= 0.5;
					stepSize *= 0.5;
					
					if (stepHeight < surfaceHeight)
					{
						uvOffset += uvDelta;
						stepHeight += stepSize;
					}
					else
					{
						uvOffset -= uvDelta;
						stepHeight -= stepSize;
					}
					surfaceHeight = POI2D_SAMPLER_PAN(_Heightmap, _MainTex, poiUV(uv + uvOffset, _Heightmap_ST), _HeightmapPan) + _HeightOffset;
				}
				return uvOffset;
			}
			*/
			void applyParallax(inout PoiMesh poiMesh, in PoiLight poiLight, in PoiCam poiCam)
			{
				/*
				half h = POI2D_SAMPLER_PAN(_Heightmap, _linear_repeat, poiUV(poiMesh.uv[_HeightmaskUV], _Heightmap_ST), _HeightmapPan).r + _HeightOffset;
				#if defined(PROP_HEIGHTMASK) || !defined(OPTIMIZER_ENABLED)
				half m = POI2D_SAMPLER_PAN(_Heightmask, _linear_repeat, poiUV(poiMesh.uv[_HeightmaskUV], _Heightmask_ST), _HeightmaskPan).r + _HeightOffset;
				#else
				half m = 1 + _HeightOffset;
				#endif
				h = clamp(h, 0, 0.999);
				m = lerp(m, 1 - m, _HeightmaskInvert);
				#if defined(OPTIMIZER_ENABLED)das
				poiMesh.uv[_ParallaxUV] += ParallaxOffsetMultiStep(h, _HeightStrength * m, poiMesh.uv[_HeightmapUV], tangentViewDir / tangentViewDir.z);
				#else
				float2 offset = ParallaxOffsetMultiStep(h, _HeightStrength * m, poiMesh.uv[_HeightmapUV], tangentViewDir / tangentViewDir.z);
				if (_ParallaxUV == 0)       poiMesh.uv[0] += offset;
				if (_ParallaxUV == 1)       poiMesh.uv[1] += offset;
				if (_ParallaxUV == 2)       poiMesh.uv[2] += offset;
				if (_ParallaxUV == 3)       poiMesh.uv[3] += offset;
				if (_ParallaxUV == 4)       poiMesh.uv[4] += offset;
				if (_ParallaxUV == 5)       poiMesh.uv[5] += offset;
				if (_ParallaxUV == 6)       poiMesh.uv[6] += offset;
				if (_ParallaxUV == 7)       poiMesh.uv[7] += offset;
				#endif
				*/
				
				#if defined(OPTIMIZER_ENABLED)
				poiMesh.uv[_ParallaxUV] = POM(poiLight, _HeightMap, poiMesh, poiCam.viewDir, poiCam.tangentViewDir, _HeightStepsMin, _HeightStepsMax, _HeightStrength, 0, _HeightMap_ST.xy, float2(_CurvatureU, _CurvatureV));
				#else
				float2 offset = POM(poiLight, _HeightMap, poiMesh, poiCam.viewDir, poiCam.tangentViewDir, _HeightStepsMin, _HeightStepsMax, _HeightStrength, 0, _HeightMap_ST.xy, float2(_CurvatureU, _CurvatureV));
				if (_ParallaxUV == 0)       poiMesh.uv[0] = offset;
				if (_ParallaxUV == 1)       poiMesh.uv[1] = offset;
				if (_ParallaxUV == 2)       poiMesh.uv[2] = offset;
				if (_ParallaxUV == 3)       poiMesh.uv[3] = offset;
				if (_ParallaxUV == 4)       poiMesh.uv[4] = offset;
				if (_ParallaxUV == 5)       poiMesh.uv[5] = offset;
				if (_ParallaxUV == 6)       poiMesh.uv[6] = offset;
				if (_ParallaxUV == 7)       poiMesh.uv[7] = offset;
				#endif
			}
			#endif
			
			void applyAlphaOptions(inout PoiFragData poiFragData, in PoiMesh poiMesh, in PoiCam poiCam, in PoiMods poiMods)
			{
				poiFragData.alpha = saturate(poiFragData.alpha + _AlphaMod);
				
				// Distance Fade
				if (_AlphaDistanceFade)
				{
					float3 position = _AlphaDistanceFadeType ? poiMesh.worldPos : poiMesh.objectPosition;
					poiFragData.alpha *= lerp(_AlphaDistanceFadeMinAlpha, _AlphaDistanceFadeMaxAlpha, smoothstep(_AlphaDistanceFadeMin, _AlphaDistanceFadeMax, distance(position, poiCam.worldPos)));
				}
				
				// Fresnel Alpha
				if (_AlphaFresnel)
				{
					float holoRim = saturate(1 - smoothstep(min(_AlphaFresnelSharpness, _AlphaFresnelWidth), _AlphaFresnelWidth, poiCam.vDotN));
					holoRim = abs(lerp(1, holoRim, _AlphaFresnelAlpha));
					poiFragData.alpha *= _AlphaFresnelInvert ?1 - holoRim : holoRim;
				}
				
				if (_AlphaAngular)
				{
					half cameraAngleMin = _CameraAngleMin / 180;
					half cameraAngleMax = _CameraAngleMax / 180;
					half modelAngleMin = _ModelAngleMin / 180;
					half modelAngleMax = _ModelAngleMax / 180;
					float3 pos = _AngleCompareTo == 0 ? poiMesh.objectPosition : poiMesh.worldPos;
					half3 cameraToModelDirection = normalize(pos - getCameraPosition());
					half3 modelForwardDirection = normalize(mul(unity_ObjectToWorld, normalize(_AngleForwardDirection)));
					half cameraLookAtModel = remapClamped(cameraAngleMax, cameraAngleMin, .5 * dot(cameraToModelDirection, getCameraForward()) + .5);
					half modelLookAtCamera = remapClamped(modelAngleMax, modelAngleMin, .5 * dot(-cameraToModelDirection, modelForwardDirection) + .5);
					if (_AngleType == 0)
					{
						poiFragData.alpha *= max(cameraLookAtModel, _AngleMinAlpha);
					}
					else if (_AngleType == 1)
					{
						poiFragData.alpha *= max(modelLookAtCamera, _AngleMinAlpha);
					}
					else if (_AngleType == 2)
					{
						poiFragData.alpha *= max(cameraLookAtModel * modelLookAtCamera, _AngleMinAlpha);
					}
				}
				
				#ifdef COLOR_GRADING_LOG_VIEW
				if (poiMods.audioLinkAvailable && _AlphaAudioLinkEnabled)
				{
					poiFragData.alpha = saturate(poiFragData.alpha + lerp(_AlphaAudioLinkAddRange.x, _AlphaAudioLinkAddRange.y, poiMods.audioLink[_AlphaAudioLinkAddBand]));
				}
				#endif
			}
			
			inline half Dither8x8Bayer(int x, int y)
			{
				const half dither[ 64 ] = {
					1, 49, 13, 61, 4, 52, 16, 64,
					33, 17, 45, 29, 36, 20, 48, 32,
					9, 57, 5, 53, 12, 60, 8, 56,
					41, 25, 37, 21, 44, 28, 40, 24,
					3, 51, 15, 63, 2, 50, 14, 62,
					35, 19, 47, 31, 34, 18, 46, 30,
					11, 59, 7, 55, 10, 58, 6, 54,
					43, 27, 39, 23, 42, 26, 38, 22
				};
				int r = y * 8 + x;
				return dither[r] / 64;
			}
			
			half calcDither(half2 grabPos)
			{
				half dither = Dither8x8Bayer(fmod(grabPos.x, 8), fmod(grabPos.y, 8));
				return dither;
			}
			
			void applyDithering(inout PoiFragData poiFragData, in PoiCam poiCam)
			{
				if (_AlphaDithering)
				{
					poiFragData.alpha = poiFragData.alpha - (calcDither(poiCam.screenUV) * (1 - poiFragData.alpha) * _AlphaDitherGradient);
				}
			}
			
			void ApplyAlphaToCoverage(inout PoiFragData poiFragData, in PoiMesh poiMesh)
			{
				// Force Model Opacity to 1 if desired
				UNITY_BRANCH
				if (_Mode == 1)
				{
					UNITY_BRANCH
					if (_AlphasharpenedA2C)
					{
						// rescale alpha by mip level
						poiFragData.alpha *= 1 + max(0, CalcMipLevel(poiMesh.uv[0] * _MainTex_TexelSize.zw)) * _AlphaMipScale;
						// rescale alpha by partial derivative
						poiFragData.alpha = (poiFragData.alpha - _Cutoff) / max(fwidth(poiFragData.alpha), 0.0001) + _Cutoff;
					}
				}
			}
			
			#ifdef FINALPASS
			void ApplyDetailColor(inout PoiFragData poiFragData, in PoiMesh poiMesh, in PoiMods poiMods)
			{
				#if defined(PROP_DETAILTEX) || !defined(OPTIMIZER_ENABLED)
				half3 detailTexture = POI2D_SAMPLER_PAN(_DetailTex, _MainTex, poiUV(poiMesh.uv[_DetailTexUV], _DetailTex_ST), _DetailTexPan).rgb * poiThemeColor(poiMods, _DetailTint, _DetailTintThemeIndex);
				#else
				half3 detailTexture = 0.21763764082 * poiThemeColor(poiMods, _DetailTint, _DetailTintThemeIndex);
				#endif
				
				poiFragData.baseColor.rgb *= LerpWhiteTo(detailTexture * _DetailBrightness * unity_ColorSpaceDouble.rgb, poiMods.detailMask.r * _DetailTexIntensity);
			}
			
			void ApplyDetailNormal(inout PoiMods poiMods, inout PoiMesh poiMesh)
			{
				#if defined(PROP_DETAILMASK) || !defined(OPTIMIZER_ENABLED)
				poiMods.detailMask = POI2D_SAMPLER_PAN(_DetailMask, _MainTex, poiUV(poiMesh.uv[_DetailMaskUV], _DetailMask_ST), _DetailMaskPan).rg;
				#else
				poiMods.detailMask = 1;
				#endif
				
				#ifdef POI_BACKFACE
				if (!poiMesh.isFrontFace)
				{
					poiMods.detailMask.g *= _BackFaceDetailIntensity;
				}
				#endif
				
				#if defined(PROP_DETAILNORMALMAP) || !defined(OPTIMIZER_ENABLED)
				half3 detailNormal = UnpackScaleNormal(POI2D_SAMPLER_PAN(_DetailNormalMap, _MainTex, poiUV(poiMesh.uv[_DetailNormalMapUV], _DetailNormalMap_ST), _DetailNormalMapPan), _DetailNormalMapScale * poiMods.detailMask.g);
				poiMesh.tangentSpaceNormal = BlendNormals(detailNormal, poiMesh.tangentSpaceNormal);
				#endif
			}
			#endif
			
			void applyVertexColor(inout PoiFragData poiFragData, PoiMesh poiMesh)
			{
				#ifndef POI_PASS_OUTLINE
				float3 vertCol = lerp(poiMesh.vertexColor.rgb, GammaToLinearSpace(poiMesh.vertexColor.rgb), _MainVertexColoringLinearSpace);
				poiFragData.baseColor *= lerp(1, vertCol, _MainVertexColoring);
				#endif
				poiFragData.alpha *= lerp(1, poiMesh.vertexColor.a, _MainUseVertexColorAlpha);
			}
			
			#ifdef POI_BACKFACE
			void ApplyBackFaceColor(inout PoiFragData poiFragData, in PoiMesh poiMesh, inout PoiMods poiMods)
			{
				if (!poiMesh.isFrontFace)
				{
					float4 backFaceColor = _BackFaceColor;
					backFaceColor.rgb = poiThemeColor(poiMods, backFaceColor.rgb, _BackFaceColorThemeIndex);
					#if defined(PROP_BACKFACETEXTURE) || !defined(OPTIMIZER_ENABLED)
					backFaceColor *= POI2D_SAMPLER_PAN(_BackFaceTexture, _MainTex, poiUV(poiMesh.uv[_BackFaceTextureUV], _BackFaceTexture_ST), _BackFaceTexturePan);
					#endif
					backFaceColor.rgb = hueShift(backFaceColor.rgb, frac(_BackFaceHueShift + _BackFaceHueShiftSpeed * _Time.x) * _BackFaceHueShiftEnabled);
					
					float backFaceMask = 1;
					#if defined(PROP_BACKFACEMASK) || !defined(OPTIMIZER_ENABLED)
					backFaceMask *= POI2D_SAMPLER_PAN(_BackFaceMask, _MainTex, poiUV(poiMesh.uv[_BackFaceMaskUV], _BackFaceMask_ST), _BackFaceMaskPan).r * _BackFaceAlpha * backFaceColor.a;
					#endif
					
					poiFragData.baseColor = lerp(poiFragData.baseColor, backFaceColor.rgb, backFaceMask);
					
					UNITY_BRANCH
					if (_BackFaceReplaceAlpha)
					{
						poiFragData.alpha = lerp(backFaceColor.a, poiFragData.alpha, backFaceMask);
					}
					
					poiFragData.emission += backFaceColor.rgb * _BackFaceEmissionStrength * backFaceMask;
				}
			}
			#endif
			
			#ifdef VIGNETTE
			#if defined(GEOM_TYPE_MESH) && !defined(UNITY_PASS_SHADOWCASTER) && !defined(POI_PASS_OUTLINE)
			void calculateRGBNormals(inout PoiMesh poiMesh)
			{
				float4 rgbMask;
				//UNITY_BRANCH
				if (_RGBUseVertexColors)
				{
					rgbMask = poiMesh.vertexColor;
				}
				else
				{
					#if defined(PROP_RGBMASK) || !defined(OPTIMIZER_ENABLED)
					rgbMask = POI2D_SAMPLER_PAN(_RGBMask, _MainTex, poiUV(poiMesh.uv[_RGBMaskUV], _RGBMask_ST), _RGBMaskPan);
					#else
					rgbMask = 1;
					#endif
				}
				
				//UNITY_BRANCH
				if (_RgbNormalsEnabled)
				{
					//UNITY_BRANCH
					if (_RGBNormalBlend == 0)
					{
						//UNITY_BRANCH
						if (_RgbNormalRScale > 0)
						{
							half3 normalToBlendWith = UnpackScaleNormal(POI2D_SAMPLER_PAN(_RgbNormalR, _MainTex, poiUV(poiMesh.uv[_RgbNormalRUV], _RgbNormalR_ST), _RgbNormalRPan), _RgbNormalRScale);
							poiMesh.tangentSpaceNormal = lerp(poiMesh.tangentSpaceNormal, normalToBlendWith, rgbMask.r);
						}
						
						//UNITY_BRANCH
						if (_RgbNormalGScale > 0)
						{
							half3 normalToBlendWith = UnpackScaleNormal(POI2D_SAMPLER_PAN(_RgbNormalG, _MainTex, poiUV(poiMesh.uv[_RgbNormalGUV], _RgbNormalG_ST), _RgbNormalGPan), _RgbNormalGScale);
							poiMesh.tangentSpaceNormal = lerp(poiMesh.tangentSpaceNormal, normalToBlendWith, rgbMask.g);
						}
						
						//UNITY_BRANCH
						if (_RgbNormalBScale > 0)
						{
							half3 normalToBlendWith = UnpackScaleNormal(POI2D_SAMPLER_PAN(_RgbNormalB, _MainTex, poiUV(poiMesh.uv[_RgbNormalBUV], _RgbNormalB_ST), _RgbNormalBPan), _RgbNormalBScale);
							poiMesh.tangentSpaceNormal = lerp(poiMesh.tangentSpaceNormal, normalToBlendWith, rgbMask.b);
						}
						
						//UNITY_BRANCH
						if (_RgbNormalAScale > 0)
						{
							half3 normalToBlendWith = UnpackScaleNormal(POI2D_SAMPLER_PAN(_RgbNormalA, _MainTex, poiUV(poiMesh.uv[_RgbNormalAUV], _RgbNormalA_ST), _RgbNormalAPan), _RgbNormalAScale);
							poiMesh.tangentSpaceNormal = lerp(poiMesh.tangentSpaceNormal, normalToBlendWith, rgbMask.a);
						}
					}
					else
					{
						half3 newNormal = UnpackScaleNormal(POI2D_SAMPLER_PAN(_RgbNormalR, _MainTex, poiUV(poiMesh.uv[_RgbNormalRUV], _RgbNormalR_ST), _RgbNormalRPan), _RgbNormalRScale * rgbMask.r);
						half3 normalToBlendWith = UnpackScaleNormal(POI2D_SAMPLER_PAN(_RgbNormalG, _MainTex, poiUV(poiMesh.uv[_RgbNormalGUV], _RgbNormalG_ST), _RgbNormalGPan), _RgbNormalGScale * rgbMask.g);
						newNormal = BlendNormals(newNormal, normalToBlendWith);
						normalToBlendWith = UnpackScaleNormal(POI2D_SAMPLER_PAN(_RgbNormalB, _MainTex, poiUV(poiMesh.uv[_RgbNormalBUV], _RgbNormalB_ST), _RgbNormalBPan), _RgbNormalBScale * rgbMask.b);
						newNormal = BlendNormals(newNormal, normalToBlendWith);
						normalToBlendWith = UnpackScaleNormal(POI2D_SAMPLER_PAN(_RgbNormalA, _MainTex, poiUV(poiMesh.uv[_RgbNormalAUV], _RgbNormalA_ST), _RgbNormalAPan), _RgbNormalAScale * rgbMask.a);
						newNormal = BlendNormals(newNormal, normalToBlendWith);
						poiMesh.tangentSpaceNormal = BlendNormals(newNormal, poiMesh.tangentSpaceNormal);
					}
				}
			}
			#endif
			void calculateRGBMask(inout PoiFragData poiFragData, in PoiMesh poiMesh, in PoiMods poiMods)
			{
				//If RGB normals are in use this data will already exist
				float4 rgbMask = float4(1, 1, 1, 1);
				//UNITY_BRANCH
				if (_RGBUseVertexColors)
				{
					rgbMask = poiMesh.vertexColor;
				}
				else
				{
					#if defined(PROP_RGBMASK) || !defined(OPTIMIZER_ENABLED)
					rgbMask = POI2D_SAMPLER_PAN(_RGBMask, _MainTex, poiUV(poiMesh.uv[_RGBMaskUV], _RGBMask_ST), _RGBMaskPan);
					#else
					rgbMask = 1;
					#endif
				}
				
				#if defined(PROP_REDTEXURE) || !defined(OPTIMIZER_ENABLED)
				float4 red = POI2D_SAMPLER_PAN(_RedTexure, _MainTex, poiUV(poiMesh.uv[_RedTexureUV], _RedTexure_ST), _RedTexurePan);
				#else
				float4 red = 1;
				#endif
				#if defined(PROP_GREENTEXTURE) || !defined(OPTIMIZER_ENABLED)
				float4 green = POI2D_SAMPLER_PAN(_GreenTexture, _MainTex, poiUV(poiMesh.uv[_GreenTextureUV], _GreenTexture_ST), _GreenTexturePan);
				#else
				float4 green = 1;
				#endif
				#if defined(PROP_BLUETEXTURE) || !defined(OPTIMIZER_ENABLED)
				float4 blue = POI2D_SAMPLER_PAN(_BlueTexture, _MainTex, poiUV(poiMesh.uv[_BlueTextureUV], _BlueTexture_ST), _BlueTexturePan);
				#else
				float4 blue = 1;
				#endif
				#if defined(PROP_ALPHATEXTURE) || !defined(OPTIMIZER_ENABLED)
				float4 alpha = POI2D_SAMPLER_PAN(_AlphaTexture, _MainTex, poiUV(poiMesh.uv[_AlphaTextureUV], _AlphaTexture_ST), _AlphaTexturePan);
				#else
				float4 alpha = 1;
				#endif
				
				//UNITY_BRANCH
				if (_RGBBlendMultiplicative)
				{
					float3 RGBColor = 1;
					RGBColor = lerp(RGBColor, red.rgb * poiThemeColor(poiMods, _RedColor.rgb, _RedColorThemeIndex), rgbMask.r * red.a * _RedColor.a);
					RGBColor = lerp(RGBColor, green.rgb * poiThemeColor(poiMods, _GreenColor.rgb, _GreenColorThemeIndex), rgbMask.g * green.a * _GreenColor.a);
					RGBColor = lerp(RGBColor, blue.rgb * poiThemeColor(poiMods, _BlueColor.rgb, _BlueColorThemeIndex), rgbMask.b * blue.a * _BlueColor.a);
					RGBColor = lerp(RGBColor, alpha.rgb * poiThemeColor(poiMods, _AlphaColor.rgb, _AlphaColorThemeIndex), rgbMask.a * alpha.a * _AlphaColor.a);
					
					poiFragData.baseColor *= RGBColor;
				}
				else
				{
					poiFragData.baseColor = lerp(poiFragData.baseColor, red.rgb * poiThemeColor(poiMods, _RedColor.rgb, _RedColorThemeIndex), rgbMask.r * red.a * _RedColor.a);
					poiFragData.baseColor = lerp(poiFragData.baseColor, green.rgb * poiThemeColor(poiMods, _GreenColor.rgb, _GreenColorThemeIndex), rgbMask.g * green.a * _GreenColor.a);
					poiFragData.baseColor = lerp(poiFragData.baseColor, blue.rgb * poiThemeColor(poiMods, _BlueColor.rgb, _BlueColorThemeIndex), rgbMask.b * blue.a * _BlueColor.a);
					poiFragData.baseColor = lerp(poiFragData.baseColor, alpha.rgb * poiThemeColor(poiMods, _AlphaColor.rgb, _AlphaColorThemeIndex), rgbMask.a * alpha.a * _AlphaColor.a);
				}
			}
			#endif
			
			#ifdef GEOM_TYPE_BRANCH
			
			float2 decalUV(float uvNumber, float4 uv_st,  float2 position, half rotation, half rotationSpeed, half2 scale, float4 scaleOffset, float depth, in PoiMesh poiMesh, in PoiCam poiCam)
			{
				scaleOffset = float4(-scaleOffset.x, scaleOffset.y, -scaleOffset.z, scaleOffset.w);
				float2 uv = poiUV(poiMesh.uv[uvNumber], uv_st) + calcParallax(depth + 1, poiCam);
				float2 decalCenter = position;
				float theta = radians(rotation + _Time.z * rotationSpeed);
				float cs = cos(theta);
				float sn = sin(theta);
				uv = float2((uv.x - decalCenter.x) * cs - (uv.y - decalCenter.y) * sn + decalCenter.x, (uv.x - decalCenter.x) * sn + (uv.y - decalCenter.y) * cs + decalCenter.y);
				uv = remap(uv, float2(0, 0) - scale / 2 + position + scaleOffset.xz, scale / 2 + position + scaleOffset.yw, float2(0, 0), float2(1, 1));
				return uv;
			}
			
			inline float3 decalHueShift(float enabled, float3 color, float shift, float shiftSpeed)
			{
				//UNITY_BRANCH
				if (enabled)
				{
					color = hueShift(color, shift + _Time.x * shiftSpeed);
				}
				return color;
			}
			
			inline float applyTilingClipping(float enabled, float2 uv)
			{
				float ret = 1;
				//UNITY_BRANCH
				if (!enabled)
				{
					if (uv.x > 1 || uv.y > 1 || uv.x < 0 || uv.y < 0)
					{
						ret = 0;
					}
				}
				return ret;
			}
			
			void applyDecals(inout PoiFragData poiFragData, in PoiMesh poiMesh, in PoiCam poiCam, in PoiMods poiMods, in PoiLight poiLight)
			{
				float decalAlpha = 0;
				float alphaOverride = 0;
				#if defined(PROP_DECALMASK) || !defined(OPTIMIZER_ENABLED)
				float4 decalMask = POI2D_SAMPLER_PAN(_DecalMask, _MainTex, poiUV(poiMesh.uv[_DecalMaskUV], _DecalMask_ST), _DecalMaskPan);
				#else
				float4 decalMask = 1;
				#endif
				
				float4 decalColor = 1;
				float2 uv = 0;
				
				// Decal 0
				float2 decalScale = float2(1, 1);
				float decalRotation = 0;
				decalScale = _DecalScale;
				float2 ddxuv = 0;
				float2 ddyuv = 0;
				#if defined(PROP_DECALTEXTURE) || !defined(OPTIMIZER_ENABLED)
				#ifdef COLOR_GRADING_LOG_VIEW
				//UNITY_BRANCH
				if (poiMods.audioLinkAvailable)
				{
					decalScale += lerp(_AudioLinkDecal0Scale.xy, _AudioLinkDecal0Scale.zw, poiMods.audioLink[_AudioLinkDecal0ScaleBand]);
					decalRotation += lerp(_AudioLinkDecal0Rotation.x, _AudioLinkDecal0Rotation.y, poiMods.audioLink[_AudioLinkDecal0RotationBand]);
				}
				#endif
				uv = decalUV(_DecalTextureUV, _DecalTexture_ST, _DecalPosition, _DecalRotation + decalRotation, _DecalRotationSpeed, decalScale, _DecalSideOffset, _Decal0Depth, poiMesh, poiCam);
				ddxuv = ddx(uv);
				ddyuv = ddy(uv);
				if(any(fwidth(uv) > .5))
				{
					ddxuv = ddyuv = 0.001;
				}
				decalColor = tex2D(_DecalTexture, uv + _DecalTexturePan * _Time.x, ddxuv, ddyuv) * float4(poiThemeColor(poiMods, _DecalColor.rgb, _DecalColorThemeIndex), _DecalColor.a);
				#else
				uv = decalUV(_DecalTextureUV, _DecalTexture_ST, _DecalPosition, _DecalRotation + decalRotation, _DecalRotationSpeed, decalScale, _DecalSideOffset, _Decal0Depth, poiMesh, poiCam);
				decalColor = float4(poiThemeColor(poiMods, _DecalColor.rgb, _DecalColorThemeIndex), _DecalColor.a);
				#endif
				decalColor.rgb = decalHueShift(_DecalHueShiftEnabled, decalColor.rgb, _DecalHueShift + poiLight.nDotV * _Decal0HueAngleStrength, _DecalHueShiftSpeed);
				decalColor.a *= applyTilingClipping(_DecalTiled, uv) * decalMask[_Decal0MaskChannel];
				
				float audioLinkDecalAlpha0 = 0;
				#ifdef COLOR_GRADING_LOG_VIEW
				audioLinkDecalAlpha0 = lerp(_AudioLinkDecal0Alpha.x, _AudioLinkDecal0Alpha.y, poiMods.audioLink[_AudioLinkDecal0AlphaBand]) * poiMods.audioLinkAvailable;
				#endif
				
				poiFragData.baseColor.rgb = lerp(poiFragData.baseColor.rgb, customBlend(poiFragData.baseColor.rgb, decalColor.rgb, _DecalBlendType), decalColor.a * saturate(_DecalBlendAlpha + audioLinkDecalAlpha0));
				if(_DecalOverideAlpha)
				{
					alphaOverride+=1;
					decalAlpha = max(decalAlpha, decalColor.a);
				}
				float audioLinkDecalEmission0 = 0;
				#ifdef COLOR_GRADING_LOG_VIEW
				audioLinkDecalEmission0 = lerp(_AudioLinkDecal0Emission.x, _AudioLinkDecal0Emission.y, poiMods.audioLink[_AudioLinkDecal0EmissionBand]) * poiMods.audioLinkAvailable;
				#endif
				
				poiFragData.emission += decalColor.rgb * decalColor.a * max(_DecalEmissionStrength + audioLinkDecalEmission0, 0);
				
				#ifdef GEOM_TYPE_BRANCH_DETAIL
				// Decal 1
				decalScale = _DecalScale1;
				decalRotation = 0;
				#if defined(PROP_DECALTEXTURE1) || !defined(OPTIMIZER_ENABLED)
				#ifdef COLOR_GRADING_LOG_VIEW
				//UNITY_BRANCH
				if (poiMods.audioLinkAvailable)
				{
					decalScale += lerp(_AudioLinkDecal1Scale.xy, _AudioLinkDecal1Scale.zw, poiMods.audioLink[_AudioLinkDecal1ScaleBand]);
					decalRotation += lerp(_AudioLinkDecal1Rotation.x, _AudioLinkDecal1Rotation.y, poiMods.audioLink[_AudioLinkDecal1RotationBand]);
				}
				#endif
				uv = decalUV(_DecalTexture1UV, _DecalTexture1_ST, _DecalPosition1, _DecalRotation1 + decalRotation, _DecalRotationSpeed1, decalScale, _DecalSideOffset1, _Decal1Depth, poiMesh, poiCam);
				ddxuv = ddx(uv);
				ddyuv = ddy(uv);
				if(any(fwidth(uv) > .5))
				{
					ddxuv = ddyuv = 0.001;
				}
				decalColor = tex2D(_DecalTexture1, uv + _DecalTexture1Pan * _Time.x, ddxuv, ddyuv) * float4(poiThemeColor(poiMods, _DecalColor1.rgb, _DecalColor1ThemeIndex), _DecalColor1.a);
				#else
				uv = decalUV(_DecalTexture1UV, _DecalTexture1_ST, _DecalPosition1, _DecalRotation1 + decalRotation, _DecalRotationSpeed1, decalScale, _DecalSideOffset1, _Decal1Depth, poiMesh, poiCam);
				decalColor = float4(poiThemeColor(poiMods, _DecalColor1.rgb, _DecalColor1ThemeIndex), _DecalColor1.a);
				#endif
				decalColor.rgb = decalHueShift(_DecalHueShiftEnabled1, decalColor.rgb, _DecalHueShift1 + poiLight.nDotV * _Decal1HueAngleStrength, _DecalHueShiftSpeed1);
				decalColor.a *= applyTilingClipping(_DecalTiled1, uv) * decalMask[_Decal1MaskChannel];
				
				float audioLinkDecalAlpha1 = 0;
				#ifdef COLOR_GRADING_LOG_VIEW
				audioLinkDecalAlpha1 = lerp(_AudioLinkDecal1Alpha.x, _AudioLinkDecal1Alpha.y, poiMods.audioLink[_AudioLinkDecal1AlphaBand]) * poiMods.audioLinkAvailable;
				#endif
				
				poiFragData.baseColor.rgb = lerp(poiFragData.baseColor.rgb, customBlend(poiFragData.baseColor.rgb, decalColor.rgb, _DecalBlendType1), decalColor.a * saturate(_DecalBlendAlpha1 + audioLinkDecalAlpha1));
				if(_DecalOverideAlpha1)
				{
					alphaOverride+=1;
					decalAlpha = max(decalAlpha, decalColor.a);
				}
				float audioLinkDecalEmission1 = 0;
				#ifdef COLOR_GRADING_LOG_VIEW
				audioLinkDecalEmission1 = lerp(_AudioLinkDecal1Emission.x, _AudioLinkDecal1Emission.y, poiMods.audioLink[_AudioLinkDecal1EmissionBand]) * poiMods.audioLinkAvailable;
				#endif
				
				poiFragData.emission += decalColor.rgb * decalColor.a * max(_DecalEmissionStrength1 + audioLinkDecalEmission1, 0);
				#endif
				#ifdef GEOM_TYPE_FROND
				// Decal 2
				decalScale = _DecalScale2;
				decalRotation = 0;
				#if defined(PROP_DECALTEXTURE2) || !defined(OPTIMIZER_ENABLED)
				#ifdef COLOR_GRADING_LOG_VIEW
				//UNITY_BRANCH
				if (poiMods.audioLinkAvailable)
				{
					decalScale += lerp(_AudioLinkDecal2Scale.xy, _AudioLinkDecal2Scale.zw, poiMods.audioLink[_AudioLinkDecal2ScaleBand]);
					decalRotation += lerp(_AudioLinkDecal2Rotation.x, _AudioLinkDecal2Rotation.y, poiMods.audioLink[_AudioLinkDecal2RotationBand]);
				}
				#endif
				uv = decalUV(_DecalTexture2UV, _DecalTexture2_ST, _DecalPosition2, _DecalRotation2 + decalRotation, _DecalRotationSpeed2, decalScale, _DecalSideOffset2, _Decal2Depth, poiMesh, poiCam);
				ddxuv = ddx(uv);
				ddyuv = ddy(uv);
				if(any(fwidth(uv) > .5))
				{
					ddxuv = ddyuv = 0.001;
				}
				decalColor = tex2D(_DecalTexture2, uv + _DecalTexture2Pan * _Time.x, ddxuv, ddyuv) * float4(poiThemeColor(poiMods, _DecalColor2.rgb, _DecalColor2ThemeIndex), _DecalColor2.a);
				#else
				uv = decalUV(_DecalTexture2UV, _DecalTexture2_ST, _DecalPosition2, _DecalRotation2 + decalRotation, _DecalRotationSpeed2, decalScale, _DecalSideOffset2, _Decal2Depth, poiMesh, poiCam);
				decalColor = float4(poiThemeColor(poiMods, _DecalColor2.rgb, _DecalColor2ThemeIndex), _DecalColor2.a);
				#endif
				decalColor.rgb = decalHueShift(_DecalHueShiftEnabled2, decalColor.rgb, _DecalHueShift2 + poiLight.nDotV * _Decal2HueAngleStrength, _DecalHueShiftSpeed2);
				decalColor.a *= applyTilingClipping(_DecalTiled2, uv) * decalMask[_Decal2MaskChannel];
				
				float audioLinkDecalAlpha2 = 0;
				#ifdef COLOR_GRADING_LOG_VIEW
				audioLinkDecalAlpha2 = lerp(_AudioLinkDecal2Alpha.x, _AudioLinkDecal2Alpha.y, poiMods.audioLink[_AudioLinkDecal2AlphaBand]) * poiMods.audioLinkAvailable;
				#endif
				
				poiFragData.baseColor.rgb = lerp(poiFragData.baseColor.rgb, customBlend(poiFragData.baseColor.rgb, decalColor.rgb, _DecalBlendType2), decalColor.a * saturate(_DecalBlendAlpha2 + audioLinkDecalAlpha2));
				if(_DecalOverideAlpha2)
				{
					alphaOverride+=1;
					decalAlpha = max(decalAlpha, decalColor.a);
				}
				float audioLinkDecalEmission2 = 0;
				#ifdef COLOR_GRADING_LOG_VIEW
				audioLinkDecalEmission2 = lerp(_AudioLinkDecal2Emission.x, _AudioLinkDecal2Emission.y, poiMods.audioLink[_AudioLinkDecal2EmissionBand]) * poiMods.audioLinkAvailable;
				#endif
				
				poiFragData.emission += decalColor.rgb * decalColor.a * max(_DecalEmissionStrength2 + audioLinkDecalEmission2, 0);
				#endif
				#ifdef DEPTH_OF_FIELD_COC_VIEW
				// Decal 3
				decalScale = _DecalScale3;
				decalRotation = 0;
				float4 sideMod = 0;
				#if defined(PROP_DECALTEXTURE3) || !defined(OPTIMIZER_ENABLED)
				#ifdef COLOR_GRADING_LOG_VIEW
				//UNITY_BRANCH
				if (poiMods.audioLinkAvailable)
				{
					decalScale += lerp(_AudioLinkDecal3Scale.xy, _AudioLinkDecal3Scale.zw, poiMods.audioLink[_AudioLinkDecal3ScaleBand]);
					sideMod += lerp(_AudioLinkDecal3SideMin, _AudioLinkDecal3SideMax, poiMods.audioLink[_AudioLinkDecal3SideBand]);
					decalRotation += lerp(_AudioLinkDecal3Rotation.x, _AudioLinkDecal3Rotation.y, poiMods.audioLink[_AudioLinkDecal3RotationBand]);
				}
				#endif
				uv = decalUV(_DecalTexture3UV, _DecalTexture3_ST, _DecalPosition3, _DecalRotation3 + decalRotation, _DecalRotationSpeed3, decalScale, _DecalSideOffset3 + sideMod, _Decal3Depth, poiMesh, poiCam);
				ddxuv = ddx(uv);
				ddyuv = ddy(uv);
				if(any(fwidth(uv) > .5))
				{
					ddxuv = ddyuv = 0.001;
				}
				decalColor = tex2D(_DecalTexture3, uv + _DecalTexture3Pan * _Time.x, ddxuv, ddyuv) * float4(poiThemeColor(poiMods, _DecalColor3.rgb, _DecalColor3ThemeIndex), _DecalColor3.a);
				#else
				uv = decalUV(_DecalTexture3UV, _DecalTexture3_ST, _DecalPosition3, _DecalRotation3 + decalRotation, _DecalRotationSpeed3, decalScale, _DecalSideOffset3 + sideMod, _Decal3Depth, poiMesh, poiCam);
				decalColor = float4(poiThemeColor(poiMods, _DecalColor3.rgb, _DecalColor3ThemeIndex), _DecalColor3.a);
				#endif
				decalColor.rgb = decalHueShift(_DecalHueShiftEnabled3, decalColor.rgb, _DecalHueShift3 + poiLight.nDotV * _Decal3HueAngleStrength, _DecalHueShiftSpeed3);
				decalColor.a *= applyTilingClipping(_DecalTiled3, uv) * decalMask[_Decal3MaskChannel];
				
				float audioLinkDecalAlpha3 = 0;
				#ifdef COLOR_GRADING_LOG_VIEW
				if(_AudioLinkDecalX && poiMods.audioLinkAvailable)
				{
					decalColor.rgb = AudioLinkLerp( ALPASS_CCSTRIP + float2( uv.x * AUDIOLINK_WIDTH, 0 ) ).rgb;
				}
				audioLinkDecalAlpha3 = lerp(_AudioLinkDecal3Alpha.x, _AudioLinkDecal3Alpha.y, poiMods.audioLink[_AudioLinkDecal3AlphaBand]) * poiMods.audioLinkAvailable;
				#endif
				
				poiFragData.baseColor.rgb = lerp(poiFragData.baseColor.rgb, customBlend(poiFragData.baseColor.rgb, decalColor.rgb, _DecalBlendType3), decalColor.a * saturate(_DecalBlendAlpha3 + audioLinkDecalAlpha3));
				if(_DecalOverideAlpha3)
				{
					alphaOverride+=1;
					decalAlpha = max(decalAlpha, decalColor.a);
				}
				float audioLinkDecalEmission3 = 0;
				#ifdef COLOR_GRADING_LOG_VIEW
				audioLinkDecalEmission3 = lerp(_AudioLinkDecal3Emission.x, _AudioLinkDecal3Emission.y, poiMods.audioLink[_AudioLinkDecal3EmissionBand]) * poiMods.audioLinkAvailable;
				#endif
				
				poiFragData.emission += decalColor.rgb * decalColor.a * max(_DecalEmissionStrength3 + audioLinkDecalEmission3, 0);
				#endif
				if(alphaOverride)
				{
					poiFragData.alpha *= decalAlpha;
				}
				poiFragData.baseColor = saturate(poiFragData.baseColor);
			}
			#endif
			
			#ifdef DISTORT
			void applyDissolve(inout PoiFragData poiFragData, in PoiMesh poiMesh, in PoiMods poiMods)
			{
				#if defined(PROP_DISSOLVEMASK) || !defined(OPTIMIZER_ENABLED)
				float dissolveMask = POI2D_SAMPLER_PAN(_DissolveMask, _MainTex, poiUV(poiMesh.uv[_DissolveMaskUV], _DissolveMask_ST), _DissolveMaskPan).r;
				#else
				float dissolveMask = 1;
				#endif
				UNITY_BRANCH
				if (_DissolveUseVertexColors)
				{
					// Vertex Color Imprecision hype
					dissolveMask = ceil(poiMesh.vertexColor.g * 100000) / 100000;
				}
				
				#if defined(PROP_DISSOLVETOTEXTURE) || !defined(OPTIMIZER_ENABLED)
				dissolveToTexture = POI2D_SAMPLER_PAN(_DissolveToTexture, _MainTex, poiUV(poiMesh.uv[_DissolveToTextureUV], _DissolveToTexture_ST), _DissolveToTexturePan) * float4(poiThemeColor(poiMods, _DissolveTextureColor.rgb, _DissolveTextureColorThemeIndex), _DissolveTextureColor.a);
				#else
				dissolveToTexture = _DissolveTextureColor;
				#endif
				
				#if defined(PROP_DISSOLVENOISETEXTURE) || !defined(OPTIMIZER_ENABLED)
				float dissolveNoiseTexture = POI2D_SAMPLER_PAN(_DissolveNoiseTexture, _MainTex, poiUV(poiMesh.uv[_DissolveNoiseTextureUV], _DissolveNoiseTexture_ST), _DissolveNoiseTexturePan).r;
				#else
				float dissolveNoiseTexture = 1;
				#endif
				
				float da = _DissolveAlpha
				+ _DissolveAlpha0
				+ _DissolveAlpha1
				+ _DissolveAlpha2
				+ _DissolveAlpha3
				+ _DissolveAlpha4
				+ _DissolveAlpha5
				+ _DissolveAlpha6
				+ _DissolveAlpha7
				+ _DissolveAlpha8
				+ _DissolveAlpha9;
				float dds = _DissolveDetailStrength;
				
				#ifdef COLOR_GRADING_LOG_VIEW
				UNITY_BRANCH
				if (_EnableDissolveAudioLink && poiMods.audioLinkAvailable)
				{
					da += lerp(_AudioLinkDissolveAlpha.x, _AudioLinkDissolveAlpha.y, poiMods.audioLink[_AudioLinkDissolveAlphaBand]);
					dds += lerp(_AudioLinkDissolveDetail.x, _AudioLinkDissolveDetail.y, poiMods.audioLink[_AudioLinkDissolveDetailBand]);
				}
				#endif
				
				da = saturate(da);
				dds = saturate(dds);
				
				#ifdef POI_BLACKLIGHT
				if (_BlackLightMaskDissolve != 4)
				{
					dissolveMask *= blackLightMask[_BlackLightMaskDissolve];
				}
				#endif
				
				if (_DissolveMaskInvert)
				{
					dissolveMask = 1 - dissolveMask;
				}
				#if defined(PROP_DISSOLVEDETAILNOISE) || !defined(OPTIMIZER_ENABLED)
				float dissolveDetailNoise = POI2D_SAMPLER_PAN(_DissolveDetailNoise, _MainTex, poiUV(poiMesh.uv[_DissolveDetailNoiseUV], _DissolveDetailNoise_ST), _DissolveDetailNoisePan);
				#else
				float dissolveDetailNoise = 0;
				#endif
				if (_DissolveInvertNoise)
				{
					dissolveNoiseTexture = 1 - dissolveNoiseTexture;
				}
				if (_DissolveInvertDetailNoise)
				{
					dissolveDetailNoise = 1 - dissolveDetailNoise;
				}
				if (_ContinuousDissolve != 0)
				{
					da = sin(_Time.x * _ContinuousDissolve) * .5 + .5;
				}
				da *= dissolveMask;
				dissolveAlpha = da;
				edgeAlpha = 0;
				
				if (_DissolveType == 1) // Basic
				
				{
					da = remap(da, 0, 1, -_DissolveEdgeWidth, 1);
					dissolveAlpha = da;
					//Adjust detail strength to avoid artifacts
					dds *= smoothstep(1, .99, da);
					float noise = saturate(dissolveNoiseTexture - dissolveDetailNoise * dds);
					
					noise = saturate(noise * 0.998 + 0.001);
					//noise = remap(noise, 0, 1, _DissolveEdgeWidth, 1 - _DissolveEdgeWidth);
					dissolveAlpha = dissolveAlpha >= noise;
					edgeAlpha = remapClamped(da + _DissolveEdgeWidth, da, noise) * (1 - dissolveAlpha);
				}
				else if (_DissolveType == 2) // Point to Point
				
				{
					float3 direction;
					float3 currentPos;
					float distanceTo = 0;
					direction = normalize(_DissolveEndPoint - _DissolveStartPoint);
					currentPos = lerp(_DissolveStartPoint, _DissolveEndPoint, dissolveAlpha);
					
					UNITY_BRANCH
					if (_DissolveP2PWorldLocal != 1)
					{
						float3 pos = _DissolveP2PWorldLocal == 0 ? poiMesh.localPos.rgb : poiMesh.vertexColor.rgb;
						distanceTo = dot(pos - currentPos, direction) - dissolveDetailNoise * dds;
						edgeAlpha = smoothstep(_DissolveP2PEdgeLength + .00001, 0, distanceTo);
						dissolveAlpha = step(distanceTo, 0);
						edgeAlpha *= 1 - dissolveAlpha;
					}
					else
					{
						distanceTo = dot(poiMesh.worldPos - currentPos, direction) - dissolveDetailNoise * dds;
						edgeAlpha = smoothstep(_DissolveP2PEdgeLength + .00001, 0, distanceTo);
						dissolveAlpha = step(distanceTo, 0);
						edgeAlpha *= 1 - dissolveAlpha;
					}
				}
				
				#ifndef POI_SHADOW
				UNITY_BRANCH
				if (_DissolveHueShiftEnabled)
				{
					dissolveToTexture.rgb = hueShift(dissolveToTexture.rgb, _DissolveHueShift + _Time.x * _DissolveHueShiftSpeed);
				}
				#endif
				
				poiFragData.alpha = lerp(poiFragData.alpha, dissolveToTexture.a, dissolveAlpha * .999999);
				
				#if !defined(POI_PASS_OUTLINE) && !defined(UNITY_PASS_SHADOWCASTER)
				poiFragData.baseColor = lerp(poiFragData.baseColor, dissolveToTexture.rgb, dissolveAlpha * .999999);
				
				UNITY_BRANCH
				if (_DissolveEdgeWidth)
				{
					edgeColor = tex2D(_DissolveEdgeGradient, poiUV(float2(edgeAlpha, edgeAlpha), _DissolveEdgeGradient_ST)) * float4(poiThemeColor(poiMods, _DissolveEdgeColor.rgb, _DissolveEdgeColorThemeIndex), _DissolveEdgeColor.a);
					#ifndef POI_SHADOW
					UNITY_BRANCH
					if (_DissolveEdgeHueShiftEnabled)
					{
						edgeColor.rgb = hueShift(edgeColor.rgb, _DissolveEdgeHueShift + _Time.x * _DissolveEdgeHueShiftSpeed);
					}
					#endif
					poiFragData.baseColor = lerp(poiFragData.baseColor, edgeColor.rgb, smoothstep(0, 1 - _DissolveEdgeHardness * .99999999999, edgeAlpha));
				}
				
				poiFragData.emission += lerp(0, dissolveToTexture * _DissolveToEmissionStrength, dissolveAlpha) + lerp(0, edgeColor.rgb * _DissolveEdgeEmission, smoothstep(0, 1 - _DissolveEdgeHardness * .99999999999, edgeAlpha));
				#endif
			}
			#endif
			
			#ifdef VIGNETTE_MASKED
			
			//CLOTH
			#ifdef _LIGHTINGMODE_CLOTH
			#define HARD 0
			#define LERP 1
			#ifdef POI_CLOTHLERP
			#define CLOTHMODE LERP
			#else
			#define CLOTHMODE HARD
			#endif
			float V_SmithGGXCorrelated(float roughness, float NoV, float NoL)
			{
				// Heitz 2014, "Understanding the Masking-Shadowing Function in Microfacet-Based BRDFs"
				float a2 = roughness * roughness;
				// TODO: lambdaV can be pre-computed for all the lights, it should be moved out of this function
				float lambdaV = NoL * sqrt((NoV - a2 * NoV) * NoV + a2);
				float lambdaL = NoV * sqrt((NoL - a2 * NoL) * NoL + a2);
				float v = 0.5 / (lambdaV + lambdaL);
				// a2=0 => v = 1 / 4*NoL*NoV   => min=1/4, max=+inf
				// a2=1 => v = 1 / 2*(NoL+NoV) => min=1/4, max=+inf
				// clamp to the maximum value representable in mediump
				return v;
			}
			
			float D_GGX(float roughness, float NoH)
			{
				// Walter et al. 2007, "Microfacet Models for Refraction through Rough Surfaces"
				
				// In mediump, there are two problems computing 1.0 - NoH^2
				// 1) 1.0 - NoH^2 suffers floating point cancellation when NoH^2 is close to 1 (highlights)
				// 2) NoH doesn't have enough precision around 1.0
				// Both problem can be fixed by computing 1-NoH^2 in highp and providing NoH in highp as well
				
				// However, we can do better using Lagrange's identity:
				//      ||a x b||^2 = ||a||^2 ||b||^2 - (a . b)^2
				// since N and H are unit vectors: ||N x H||^2 = 1.0 - NoH^2
				// This computes 1.0 - NoH^2 directly (which is close to zero in the highlights and has
				// enough precision).
				// Overall this yields better performance, keeping all computations in mediump
				float oneMinusNoHSquared = 1.0 - NoH * NoH;
				
				float a = NoH * roughness;
				float k = roughness / (oneMinusNoHSquared + a * a);
				float d = k * k * (1.0 / UNITY_PI);
				return d;
			}
			
			// https://github.com/google/filament/blob/main/shaders/src/brdf.fs#L94-L100
			float D_Charlie(float roughness, float NoH)
			{
				// Estevez and Kulla 2017, "Production Friendly Microfacet Sheen BRDF"
				float invAlpha = 1.0 / roughness;
				float cos2h = NoH * NoH;
				float sin2h = max(1.0 - cos2h, 0.0078125); // 0.0078125 = 2^(-14/2), so sin2h^2 > 0 in fp16
				return(2.0 + invAlpha) * pow(sin2h, invAlpha * 0.5) / (2.0 * UNITY_PI);
			}
			
			// https://github.com/google/filament/blob/main/shaders/src/brdf.fs#L136-L139
			float V_Neubelt(float NoV, float NoL)
			{
				// Neubelt and Pettineo 2013, "Crafting a Next-gen Material Pipeline for The Order: 1886"
				return 1.0 / (4.0 * (NoL + NoV - NoL * NoV));
			}
			
			float Distribution(float roughness, float NoH, float cloth)
			{
				#if CLOTHMODE == LERP
				return lerp(GGXTerm(roughness, NoH), D_Charlie(roughness, NoH), cloth);
				#elif CLOTHMODE == HARD
				return cloth <= 0.5 ? GGXTerm(roughness, NoH) : D_Charlie(roughness, NoH);
				#endif
			}
			
			float Visibility(float roughness, float NoV, float NoL, float cloth)
			{
				#if CLOTHMODE == LERP
				return lerp(V_SmithGGXCorrelated(roughness, NoV, NoL), V_Neubelt(NoV, NoL), cloth);
				#elif CLOTHMODE == HARD
				return cloth <= 0.5 ? V_SmithGGXCorrelated(roughness, NoV, NoL) : V_Neubelt(NoV, NoL);
				#endif
			}
			
			float F_Schlick(float3 f0, float f90, float VoH)
			{
				// Schlick 1994, "An Inexpensive BRDF Model for Physically-Based Rendering"
				return f0 + (f90 - f0) * pow(1.0 - VoH, 5);
			}
			
			float F_Schlick(float3 f0, float VoH)
			{
				float f = pow(1.0 - VoH, 5.0);
				return f + f0 * (1.0 - f);
			}
			
			float Fresnel(float3 f0, float LoH)
			{
				float f90 = saturate(dot(f0, float(50.0 * 0.33).xxx));
				return F_Schlick(f0, f90, LoH);
			}
			
			float Fd_Burley(float roughness, float NoV, float NoL, float LoH)
			{
				// Burley 2012, "Physically-Based Shading at Disney"
				float f90 = 0.5 + 2.0 * roughness * LoH * LoH;
				float lightScatter = F_Schlick(1.0, f90, NoL);
				float viewScatter = F_Schlick(1.0, f90, NoV);
				return lightScatter * viewScatter;
			}
			
			// Energy conserving wrap diffuse term, does *not* include the divide by pi
			float Fd_Wrap(float NoL, float w)
			{
				return saturate((NoL + w) / pow(1.0 + w, 2));
			}
			
			float4 SampleDFG(float NoV, float perceptualRoughness)
			{
				return _ClothDFG.Sample(sampler_ClothDFG, float3(NoV, perceptualRoughness, 0));
			}
			
			float3 EnvBRDF(float2 dfg, float3 f0)
			{
				return f0 * dfg.x + dfg.y;
			}
			
			float3 EnvBRDFMultiscatter(float3 dfg, float3 f0, float cloth)
			{
				#if CLOTHMODE == LERP
				return lerp(lerp(dfg.xxx, dfg.yyy, f0), f0 * dfg.z, cloth);
				#elif CLOTHMODE == HARD
				return cloth <= 0.5 ? lerp(dfg.xxx, dfg.yyy, f0) : f0 * dfg.z;
				#endif
			}
			
			float3 EnvBRDFEnergyCompensation(float3 dfg, float3 f0, float cloth)
			{
				#if CLOTHMODE == LERP
				return lerp(1.0 + f0 * (1.0 / dfg.y - 1.0), 1, cloth);
				#elif CLOTHMODE == HARD
				return cloth <= 0.5 ? 1.0 + f0 * (1.0 / dfg.y - 1.0) : 1;
				#endif
			}
			
			//
			float ClothMetallic(float cloth)
			{
				#if CLOTHMODE == LERP
				return cloth;
				#elif CLOTHMODE == HARD
				return cloth <= 0.5 ? 1 : 0;
				#endif
			}
			
			float3 Specular(float roughness, PoiLight poiLight, float f0, float3 normal, float cloth)
			{
				float NoL = poiLight.nDotLSaturated;
				float NoH = poiLight.nDotH;
				float LoH = poiLight.lDotH;
				float NoV = poiLight.nDotV;
				
				float D = Distribution(roughness, NoH, cloth);
				float V = Visibility(roughness, NoV, NoL, cloth);
				float3 F = Fresnel(f0, LoH);
				
				return(D * V) * F;
			}
			
			float3 getBoxProjection(float3 direction, float3 position, float4 cubemapPosition, float3 boxMin, float3 boxMax)
			{
				#if UNITY_SPECCUBE_BOX_PROJECTION
				if (cubemapPosition.w > 0)
				{
					float3 factors = ((direction > 0 ? boxMax : boxMin) - position) / direction;
					float scalar = min(min(factors.x, factors.y), factors.z);
					direction = direction * scalar + (position - cubemapPosition.xyz);
				}
				#endif
				
				return direction;
			}
			
			float SpecularAO(float NoV, float ao, float roughness)
			{
				return clamp(pow(NoV + ao, exp2(-16.0 * roughness - 1.0)) - 1.0 + ao, 0.0, 1.0);
			}
			
			float3 IndirectSpecular(float3 dfg, float roughness, float occlusion, float energyCompensation, float cloth, float3 indirectDiffuse, float f0, PoiLight poiLight, PoiFragData poiFragData, PoiCam poiCam, PoiMesh poiMesh)
			{
				float3 normal = poiMesh.normals[1];
				
				float3 reflDir = reflect(-poiCam.viewDir, normal);
				
				Unity_GlossyEnvironmentData envData;
				envData.roughness = roughness;
				envData.reflUVW = getBoxProjection(reflDir, poiMesh.worldPos, unity_SpecCube0_ProbePosition,
				unity_SpecCube0_BoxMin.xyz, unity_SpecCube0_BoxMax.xyz);
				
				float3 probe0 = Unity_GlossyEnvironment(UNITY_PASS_TEXCUBE(unity_SpecCube0), unity_SpecCube0_HDR, envData);
				float3 indirectSpecular = probe0;
				
				#if UNITY_SPECCUBE_BLENDING
				UNITY_BRANCH
				if (unity_SpecCube0_BoxMin.w < 0.99999)
				{
					envData.reflUVW = getBoxProjection(reflDir, poiMesh.worldPos, unity_SpecCube1_ProbePosition, unity_SpecCube1_BoxMin.xyz, unity_SpecCube1_BoxMax.xyz);
					float3 probe1 = Unity_GlossyEnvironment(UNITY_PASS_TEXCUBE_SAMPLER(unity_SpecCube1, unity_SpecCube0), unity_SpecCube1_HDR, envData);
					indirectSpecular = lerp(probe1, probe0, unity_SpecCube0_BoxMin.w);
				}
				#endif
				
				float horizon = min(1 + dot(reflDir, normal), 1);
				indirectSpecular = indirectSpecular * horizon * horizon * energyCompensation * EnvBRDFMultiscatter(dfg, f0, cloth);
				
				indirectSpecular *= SpecularAO(poiLight.nDotV, occlusion, roughness);
				return indirectSpecular;
			};
			#undef LERP
			#undef HARD
			#undef CLOTHMODE
			#endif
			// CLOTH END
			float _LightingWrappedWrap;
			float _LightingWrappedNormalization;
			// Green’s model with adjustable energy
			// http://blog.stevemcauley.com/2011/12/03/energy-conserving-wrapped-diffuse/
			// Modified for adjustable conservation ratio and over-wrap to directionless
			float RTWrapFunc(in float dt, in float w, in float norm)
			{
				float cw = saturate(w);
				
				float o = (dt + cw) / ((1.0 + cw) * (1.0 + cw * norm));
				float flt = 1.0 - 0.85 * norm;
				if (w > 1.0)
				{
					o = lerp(o, flt, w - 1.0);
				}
				return o;
			}
			
			float3 GreenWrapSH(float fA) // Greens unoptimized and non-normalized
			
			{
				float fAs = saturate(fA);
				float4 t = float4(fA + 1, fAs - 1, fA - 2, fAs + 1); // DJL edit: allow wrapping to L0-only at w=2
				return float3(t.x, -t.z * t.x / 3, 0.25 * t.y * t.y * t.w);
			}
			float3 GreenWrapSHOpt(float fW) // optimised and normalized https://blog.selfshadow.com/2012/01/07/righting-wrap-part-2/
			
			{
				const float4 t0 = float4(0.0, 1.0 / 4.0, -1.0 / 3.0, -1.0 / 2.0);
				const float4 t1 = float4(1.0, 2.0 / 3.0, 1.0 / 4.0, 0.0);
				float3 fWs = float3(fW, fW, saturate(fW)); // DJL edit: allow wrapping to L0-only at w=2
				
				float3 r;
				r.xyz = t0.xxy * fWs + t0.xzw;
				r.xyz = r.xyz * fWs + t1.xyz;
				return r;
			}
			float3 ShadeSH9_wrapped(float3 normal, float wrap)
			{
				float3 x0, x1, x2;
				float3 conv = lerp(GreenWrapSH(wrap), GreenWrapSHOpt(wrap), _LightingWrappedNormalization); // Should try optimizing this...
				conv *= float3(1, 1.5, 4); // Undo pre-applied cosine convolution by using the inverse
				
				// Constant (L0)
				x0 = float3(unity_SHAr.w, unity_SHAg.w, unity_SHAb.w);
				// Remove pre-applied constant part from L(2,0) to apply correct convolution
				float3 L2_0 = float3(unity_SHBr.z, unity_SHBg.z, unity_SHBb.z) / - 3.0;
				x0 -= L2_0;
				
				// Linear (L1) polynomial terms
				x1.r = dot(unity_SHAr.xyz, normal);
				x1.g = dot(unity_SHAg.xyz, normal);
				x1.b = dot(unity_SHAb.xyz, normal);
				
				// 4 of the quadratic (L2) polynomials
				float4 vB = normal.xyzz * normal.yzzx;
				x2.r = dot(unity_SHBr, vB);
				x2.g = dot(unity_SHBg, vB);
				x2.b = dot(unity_SHBb, vB);
				
				// Final (5th) quadratic (L2) polynomial
				float vC = normal.x * normal.x - normal.y * normal.y;
				x2 += unity_SHC.rgb * vC;
				// Move back the constant part of L(2,0)
				x2 += L2_0;
				
				return x0 * conv.x + x1 * conv.y + x2 * conv.z;
			}
			
			float3 GetSHDirectionL1()
			{
				// For efficiency, we only get the direction from L1.
				// Because getting it from L2 would be too hard!
				return Unity_SafeNormalize((unity_SHAr.xyz + unity_SHAg.xyz + unity_SHAb.xyz));
			}
			// Returns the value from SH in the lighting direction with the
			// brightest intensity.
			half3 GetSHMaxL1()
			{
				float3 maxDirection = GetSHDirectionL1();
				return ShadeSH9_wrapped(maxDirection, 0);
			}
			
			void applyShadeMapping(inout PoiFragData poiFragData, PoiMesh poiMesh, inout PoiLight poiLight)
			{
				float MainColorFeatherStep = _BaseColor_Step - _BaseShade_Feather;
				float firstColorFeatherStep = _ShadeColor_Step - _1st2nd_Shades_Feather;
				
				#if defined(PROP_1ST_SHADEMAP) || !defined(OPTIMIZER_ENABLED)
				float4 firstShadeMap = POI2D_SAMPLER_PAN(_1st_ShadeMap, _MainTex, poiUV(poiMesh.uv[_1st_ShadeMapUV], _1st_ShadeMap_ST), _1st_ShadeMapPan);
				#else
				float4 firstShadeMap = float4(1, 1, 1, 1);
				#endif
				firstShadeMap = lerp(firstShadeMap, float4(poiFragData.baseColor, 1), _Use_BaseAs1st);
				
				#if defined(PROP_2ND_SHADEMAP) || !defined(OPTIMIZER_ENABLED)
				float4 secondShadeMap = POI2D_SAMPLER_PAN(_2nd_ShadeMap, _MainTex, poiUV(poiMesh.uv[_2nd_ShadeMapUV], _2nd_ShadeMap_ST), _2nd_ShadeMapPan);
				#else
				float4 secondShadeMap = float4(1, 1, 1, 1);
				#endif
				secondShadeMap = lerp(secondShadeMap, firstShadeMap, _Use_1stAs2nd);
				
				firstShadeMap.rgb *= _1st_ShadeColor.rgb; //* lighColor
				secondShadeMap.rgb *= _2nd_ShadeColor.rgb; //* LightColor;
				
				float shadowMask = 1;
				shadowMask *= _Use_1stShadeMapAlpha_As_ShadowMask ?(_1stShadeMapMask_Inverse ?(1.0 - firstShadeMap.a) : firstShadeMap.a) : 1;
				shadowMask *= _Use_2ndShadeMapAlpha_As_ShadowMask ?(_2ndShadeMapMask_Inverse ?(1.0 - secondShadeMap.a) : secondShadeMap.a) : 1;
				
				float mainShadowMask = saturate(1 - ((poiLight.lightMap) - MainColorFeatherStep) / (_BaseColor_Step - MainColorFeatherStep) * (shadowMask));
				float firstSecondShadowMask = saturate(1 - ((poiLight.lightMap) - firstColorFeatherStep) / (_ShadeColor_Step - firstColorFeatherStep) * (shadowMask));
				
				mainShadowMask *= poiLight.shadowMask * _ShadowStrength;
				firstSecondShadowMask *= poiLight.shadowMask * _ShadowStrength;
				
				// 0 lerp | 1 multiply
				if (_ShadingShadeMapBlendType == 0)
				{
					poiFragData.baseColor.rgb = lerp(poiFragData.baseColor.rgb, lerp(firstShadeMap.rgb, secondShadeMap.rgb, firstSecondShadowMask), mainShadowMask);
				}
				else
				{
					poiFragData.baseColor.rgb *= lerp(1, lerp(firstShadeMap.rgb, secondShadeMap.rgb, firstSecondShadowMask), mainShadowMask);
				}
				poiLight.rampedLightMap = 1 - mainShadowMask;
			}
			
			void ApplySubtractiveLighting(inout UnityIndirect indirectLight)
			{
				#if SUBTRACTIVE_LIGHTING
				poiLight.attenuation = FadeShadows(lerp(1, poiLight.attenuation, _AttenuationMultiplier));
				
				float ndotl = saturate(dot(i.normal, _WorldSpaceLightPos0.xyz));
				float3 shadowedLightEstimate = ndotl * (1 - poiLight.attenuation) * _LightColor0.rgb;
				float3 subtractedLight = indirectLight.diffuse - shadowedLightEstimate;
				subtractedLight = max(subtractedLight, unity_ShadowColor.rgb);
				subtractedLight = lerp(subtractedLight, indirectLight.diffuse, _LightShadowData.x);
				indirectLight.diffuse = min(subtractedLight, indirectLight.diffuse);
				#endif
			}
			
			UnityIndirect CreateIndirectLight(in PoiMesh poiMesh, in PoiCam poiCam, in PoiLight poiLight)
			{
				UnityIndirect indirectLight;
				indirectLight.diffuse = 0;
				indirectLight.specular = 0;
				
				#if defined(LIGHTMAP_ON)
				indirectLight.diffuse = DecodeLightmap(UNITY_SAMPLE_TEX2D(unity_Lightmap, poiMesh.lightmapUV.xy));
				
				#if defined(DIRLIGHTMAP_COMBINED)
				float4 lightmapDirection = UNITY_SAMPLE_TEX2D_SAMPLER(
				unity_LightmapInd, unity_Lightmap, poiMesh.lightmapUV.xy
				);
				indirectLight.diffuse = DecodeDirectionalLightmap(
				indirectLight.diffuse, lightmapDirection, poiMesh.normals[1]
				);
				#endif
				ApplySubtractiveLighting(indirectLight);
				#endif
				
				#if defined(DYNAMICLIGHTMAP_ON)
				float3 dynamicLightDiffuse = DecodeRealtimeLightmap(
				UNITY_SAMPLE_TEX2D(unity_DynamicLightmap, poiMesh.lightmapUV.zw)
				);
				
				#if defined(DIRLIGHTMAP_COMBINED)
				float4 dynamicLightmapDirection = UNITY_SAMPLE_TEX2D_SAMPLER(
				unity_DynamicDirectionality, unity_DynamicLightmap,
				poiMesh.lightmapUV.zw
				);
				indirectLight.diffuse += DecodeDirectionalLightmap(
				dynamicLightDiffuse, dynamicLightmapDirection, poiMesh.normals[1]
				);
				#else
				indirectLight.diffuse += dynamicLightDiffuse;
				#endif
				#endif
				
				#if !defined(LIGHTMAP_ON) && !defined(DYNAMICLIGHTMAP_ON)
				#if UNITY_LIGHT_PROBE_PROXY_VOLUME
				if (unity_ProbeVolumeParams.x == 1)
				{
					indirectLight.diffuse = SHEvalLinearL0L1_SampleProbeVolume(
					float4(poiMesh.normals[1], 1), poiMesh.worldPos
					);
					indirectLight.diffuse = max(0, indirectLight.diffuse);
					#if defined(UNITY_COLORSPACE_GAMMA)
					indirectLight.diffuse = LinearToGammaSpace(indirectLight.diffuse);
					#endif
				}
				else
				{
					indirectLight.diffuse += max(0, ShadeSH9(float4(poiMesh.normals[1], 1)));
				}
				#else
				indirectLight.diffuse += max(0, ShadeSH9(float4(poiMesh.normals[1], 1)));
				#endif
				#endif
				
				float3 reflectionDir = reflect(-poiCam.viewDir, poiMesh.normals[1]);
				Unity_GlossyEnvironmentData envData;
				envData.roughness = 1 - _LightingStandardSmoothness;
				envData.reflUVW = BoxProjection(
				reflectionDir, poiMesh.worldPos.xyz,
				unity_SpecCube0_ProbePosition,
				unity_SpecCube0_BoxMin.xyz, unity_SpecCube0_BoxMax.xyz
				);
				float3 probe0 = Unity_GlossyEnvironment(
				UNITY_PASS_TEXCUBE(unity_SpecCube0), unity_SpecCube0_HDR, envData
				);
				envData.reflUVW = BoxProjection(
				reflectionDir, poiMesh.worldPos.xyz,
				unity_SpecCube1_ProbePosition,
				unity_SpecCube1_BoxMin.xyz, unity_SpecCube1_BoxMax.xyz
				);
				#if UNITY_SPECCUBE_BLENDING
				float interpolator = unity_SpecCube0_BoxMin.w;
				//UNITY_BRANCH
				if (interpolator < 0.99999)
				{
					float3 probe1 = Unity_GlossyEnvironment(
					UNITY_PASS_TEXCUBE_SAMPLER(unity_SpecCube1, unity_SpecCube0),
					unity_SpecCube0_HDR, envData
					);
					indirectLight.specular = lerp(probe1, probe0, interpolator);
				}
				else
				{
					indirectLight.specular = probe0;
				}
				#else
				indirectLight.specular = probe0;
				#endif
				
				indirectLight.diffuse *= poiLight.occlusion;
				indirectLight.specular *= poiLight.occlusion;
				
				return indirectLight;
			}
			
			void calculateShading(inout PoiLight poiLight, inout PoiFragData poiFragData, in PoiMesh poiMesh, in PoiCam poiCam)
			{
				#ifdef UNITY_PASS_FORWARDBASE
				
				float shadowStrength = _ShadowStrength * poiLight.shadowMask;
				
				#ifdef POI_PASS_OUTLINE
				shadowStrength = lerp(0, shadowStrength, _OutlineShadowStrength);
				#endif
				
				#ifdef _LIGHTINGMODE_FLAT
				poiLight.finalLighting = poiLight.directColor;
				poiLight.rampedLightMap = poiLight.nDotLSaturated;
				#endif
				
				#ifdef _LIGHTINGMODE_TEXTURERAMP
				poiLight.rampedLightMap = lerp(1, UNITY_SAMPLE_TEX2D(_ToonRamp, poiLight.lightMap + _ShadowOffset).rgb, shadowStrength);
				poiLight.finalLighting = lerp(_LightingShadowColor * lerp(poiLight.indirectColor, poiLight.rampedLightMap * poiLight.directColor, _LightingIgnoreAmbientColor) * poiLight.occlusion, poiLight.directColor, poiLight.rampedLightMap);
				#endif
				
				#ifdef _LIGHTINGMODE_MATHRAMP
				poiLight.rampedLightMap = saturate((poiLight.lightMap - _LightingGradientStart) / saturate(_LightingGradientEnd - _LightingGradientStart + fwidth(poiLight.lightMap)));
				
				poiLight.finalLighting = lerp((_LightingShadowColor * lerp(poiLight.indirectColor, poiLight.directColor, _LightingIgnoreAmbientColor) * poiLight.occlusion), (poiLight.directColor), saturate(poiLight.rampedLightMap + 1 - shadowStrength));
				#endif
				
				#ifdef _LIGHTINGMODE_SHADEMAP
				poiLight.finalLighting = poiLight.directColor;
				#endif
				
				#ifdef _LIGHTINGMODE_REALISTIC
				UnityLight light;
				light.dir = poiLight.direction;
				light.color = saturate(_LightColor0.rgb * lerp(1, poiLight.attenuation, poiLight.attenuationStrength) * poiLight.detailShadow);
				light.ndotl = poiLight.nDotLSaturated;
				poiLight.rampedLightMap = poiLight.nDotLSaturated;
				poiLight.finalLighting = UNITY_BRDF_PBS(1, 0, 0, _LightingStandardSmoothness, poiMesh.normals[1], poiCam.viewDir, light, CreateIndirectLight(poiMesh, poiCam, poiLight)).xyz;
				#endif
				
				#ifdef _LIGHTINGMODE_CLOTH
				
				#if defined(PROP_MOCHIEMETALLICMAP) || !defined(OPTIMIZER_ENABLED)
				float4 clothmapsample = POI2D_MAINTEX_SAMPLER_PAN_INLINED(_ClothMetallicSmoothnessMap, poiMesh);
				float roughness = 1 - (clothmapsample.a * _ClothSmoothness);
				float reflectance = _ClothReflectance * clothmapsample.b;
				float clothmask = clothmapsample.g;
				float metallic = pow(clothmapsample.r * _ClothMetallic, 2) * ClothMetallic(clothmask);
				roughness = _ClothMetallicSmoothnessMapInvert == 1 ? 1 - roughness : roughness;
				#else
				float roughness = 1 - (_ClothSmoothness);
				float metallic = pow(_ClothMetallic, 2);
				float reflectance = _ClothReflectance;
				float clothmask = 1;
				#endif
				
				float perceptualRoughness = pow(roughness, 2);
				float clampedRoughness = max(0.002, perceptualRoughness);
				
				float f0 = 0.16 * reflectance * reflectance * (1 - metallic) + poiFragData.baseColor * metallic;
				float3 fresnel = Fresnel(f0, poiLight.nDotV);
				
				float3 dfg = SampleDFG(poiLight.nDotV, perceptualRoughness);
				
				float energyCompensation = EnvBRDFEnergyCompensation(dfg, f0, clothmask);
				
				poiLight.finalLighting = Fd_Burley(perceptualRoughness, poiLight.nDotV, poiLight.nDotLSaturated, poiLight.lDotH);
				poiLight.finalLighting *= _LightColor0 * poiLight.attenuation * poiLight.nDotLSaturated;
				float3 specular = max(0, Specular(clampedRoughness, poiLight, f0, poiMesh.normals[1], clothmask) * poiLight.finalLighting * energyCompensation * UNITY_PI); // (D * V) * F
				
				float3 L0 = float3(unity_SHAr.w, unity_SHAg.w, unity_SHAb.w);
				float3 indirectDiffuse;
				indirectDiffuse.r = shEvaluateDiffuseL1Geomerics_local(L0.r, unity_SHAr.xyz, poiMesh.normals[1]);
				indirectDiffuse.g = shEvaluateDiffuseL1Geomerics_local(L0.g, unity_SHAg.xyz, poiMesh.normals[1]);
				indirectDiffuse.b = shEvaluateDiffuseL1Geomerics_local(L0.b, unity_SHAb.xyz, poiMesh.normals[1]);
				indirectDiffuse = max(0, indirectDiffuse);
				
				float3 indirectSpecular = IndirectSpecular(dfg, roughness, poiLight.occlusion, energyCompensation, clothmask, indirectDiffuse, f0, poiLight, poiFragData, poiCam, poiMesh);
				poiLight.finalLightAdd = specular + indirectSpecular;
				poiLight.finalLighting += indirectDiffuse * poiLight.occlusion;
				
				poiFragData.baseColor.xyz *= (1 - metallic);
				#endif
				
				#ifdef _LIGHTINGMODE_WRAPPED
				#define grayscale_vector float3(0.3, 0.59, 0.11)
				float wrap = _LightingWrappedWrap;
				float3 directcolor = (_LightColor0.rgb) * saturate(RTWrapFunc(poiLight.nDotL, wrap, _LightingWrappedNormalization));
				float directatten = poiLight.attenuation;
				float3 envlight = ShadeSH9_wrapped(poiMesh.normals[1], wrap);
				envlight *= poiLight.occlusion;
				
				poiLight.directColor = directcolor * poiLight.detailShadow * directatten;
				poiLight.indirectColor = envlight;
				
				float3 ShadeSH9Plus_2 = GetSHMaxL1();
				float bw_topDirectLighting_2 = dot(_LightColor0.rgb, grayscale_vector);
				float bw_directLighting = dot(poiLight.directColor, grayscale_vector);
				float bw_indirectLighting = dot(poiLight.indirectColor, grayscale_vector);
				float bw_topIndirectLighting = dot(ShadeSH9Plus_2, grayscale_vector);
				
				poiLight.lightMap = smoothstep(0, bw_topIndirectLighting + bw_topDirectLighting_2, bw_indirectLighting + bw_directLighting);
				poiLight.rampedLightMap = saturate((poiLight.lightMap - _LightingGradientStart) / saturate(_LightingGradientEnd - _LightingGradientStart + fwidth(poiLight.lightMap)));
				// poiLight.rampedLightMap = 1;
				// UNITY_BRANCH
				// if (_LightingRampType == 0) // Ramp Texture
				// {
				// 	poiLight.rampedLightMap = lerp(1, UNITY_SAMPLE_TEX2D(_ToonRamp, poiLight.lightMap + _ShadowOffset).rgb, shadowStrength.r);
				// }
				// else if (_LightingRampType == 1) // Math Gradient
				// {
				poiLight.rampedLightMap = lerp(_LightingShadowColor * lerp(poiLight.indirectColor, 1, _LightingIgnoreAmbientColor), float3(1, 1, 1), saturate(1 - smoothstep(_LightingGradientStartWrap - .000001, _LightingGradientEndWrap, 1 - poiLight.lightMap)));
				poiLight.rampedLightMap = lerp(float3(1, 1, 1), poiLight.rampedLightMap, shadowStrength.r);
				// }
				
				poiLight.finalLighting = (poiLight.indirectColor + poiLight.directColor) * saturate(poiLight.rampedLightMap + 1 - _ShadowStrength);
				#endif
				
				#ifdef _LIGHTINGMODE_SKIN
				float3 ambientNormalWorld = poiMesh.normals[1];//aTangentToWorld(s, s.blurredNormalTangent);
				poiLight.rampedLightMap = poiLight.nDotLSaturated;
				// Scattering mask.
				float subsurface = 1;
				float skinScattering = saturate(subsurface * _SssScale * 2);
				
				// Skin subsurface depth absorption tint.
				// cf http://www.crytek.com/download/2014_03_25_CRYENGINE_GDC_Schultz.pdf pg 35
				half3 absorption = exp((1.0h - subsurface) * _SssTransmissionAbsorption.rgb);
				
				// Albedo scale for absorption assumes ~0.5 luminance for Caucasian skin.
				absorption *= saturate(poiFragData.baseColor * unity_ColorSpaceDouble.rgb);
				
				// Blurred normals for indirect diffuse and direct scattering.
				ambientNormalWorld = normalize(lerp(poiMesh.normals[1], ambientNormalWorld, _SssBumpBlur));
				
				float ndlBlur = dot(poiMesh.normals[1], poiLight.direction) * 0.5h + 0.5h;
				float lumi = dot(poiLight.directColor, half3(0.2126h, 0.7152h, 0.0722h));
				float4 sssLookupUv = float4(ndlBlur, skinScattering * lumi, 0.0f, 0.0f);
				half3 sss = poiLight.lightMap * poiLight.attenuation * tex2Dlod(_SkinLUT, sssLookupUv).rgb;
				poiLight.finalLighting = min(lerp(poiLight.indirectColor * _LightingShadowColor, _LightingShadowColor, _LightingIgnoreAmbientColor) + (sss * poiLight.directColor), poiLight.directColor);
				#endif
				
				#endif
				
				#ifdef UNITY_PASS_FORWARDADD
				//UNITY_BRANCH
				if (_LightingAdditiveType == 0) // Realistic
				
				{
					poiLight.finalLighting = poiLight.directColor * poiLight.attenuation * max(0, poiLight.nDotL) * poiLight.detailShadow * poiLight.additiveShadow;
				}
				else if (_LightingAdditiveType == 1) // Toon
				
				{
					#if defined(POINT_COOKIE) || defined(DIRECTIONAL_COOKIE)
					float passthrough = 0;
					#else
					float passthrough = _LightingAdditivePassthrough;
					#endif
					
					#if defined(POINT) || defined(SPOT)
					poiLight.finalLighting = lerp(poiLight.directColor * max(poiLight.additiveShadow, passthrough), poiLight.indirectColor, smoothstep(_LightingAdditiveGradientStart, _LightingAdditiveGradientEnd, 1 - (.5 * poiLight.nDotL + .5))) * poiLight.attenuation * poiLight.detailShadow;
					#else
					poiLight.finalLighting = lerp(poiLight.directColor * max(poiLight.attenuation, passthrough), poiLight.indirectColor, smoothstep(_LightingAdditiveGradientStart, _LightingAdditiveGradientEnd, 1 - (.5 * poiLight.nDotL + .5))) * poiLight.detailShadow;
					#endif
				}
				/*
				else //if(_LightingAdditiveType == 2) // Wrapped
				{
					float uv = saturate(RTWrapFunc(poiLight.nDotL, _LightingWrappedWrap, _LightingWrappedNormalization)) * detailShadow;
					
					poiLight.rampedLightMap = 1;
					//UNITY_BRANCH
					if (_LightingRampType == 1) // Math Gradient
					poiLight.rampedLightMap = lerp(_LightingShadowColor, float3(1, 1, 1), saturate(1 - smoothstep(_LightingGradientStart - .000001, _LightingGradientEnd, 1 - uv)));
					// TODO: ramp texture or full shade/tint map for atlasing
					//poiLight.rampedLightMap = lerp(1, UNITY_SAMPLE_TEX2D(_ToonRamp, float2(uv + _ShadowOffset, 1)), shadowStrength.r);
					
					float shadowatten = max(poiLight.additiveShadow, _LightingAdditivePassthrough);
					return poiLight.color * poiLight.rampedLightMap * saturate(poiLight.attenuation * uv * shadowatten);
				}
				*/
				#endif
				
				#if defined(VERTEXLIGHT_ON) && defined(POI_VERTEXLIGHT_ON)
				float3 vertexLighting = float3(0, 0, 0);
				for (int index = 0; index < 4; index++)
				{
					//UNITY_BRANCH
					if (_LightingAdditiveType == 0)
					{
						vertexLighting += poiLight.vColor[index] * poiLight.vAttenuationDotNL[index] * poiLight.detailShadow; // Realistic
						
					}
					
					//UNITY_BRANCH
					if (_LightingAdditiveType == 1) // Toon
					
					{
						vertexLighting += lerp(poiLight.vColor[index] * poiLight.vAttenuation[index], poiLight.vColor[index] * _LightingAdditivePassthrough * poiLight.vAttenuation[index], smoothstep(_LightingAdditiveGradientStart, _LightingAdditiveGradientEnd, poiLight.vDotNL[index])) * poiLight.detailShadow;
					}
					
					//UNITY_BRANCH
					if (_LightingAdditiveType == 2) //if(_LightingAdditiveType == 2) // Wrapped
					
					{
						//TODO wrapped vertex lighting
						vertexLighting += lerp(poiLight.vColor[index] * poiLight.vAttenuation[index], poiLight.vColor[index] * _LightingAdditivePassthrough * poiLight.vAttenuation[index], smoothstep(_LightingAdditiveGradientStart, _LightingAdditiveGradientEnd, poiLight.vDotNL[index])) * poiLight.detailShadow;
						/*
						float uv = saturate(RTWrapFunc(-poiLight.vDotNL[index], _LightingWrappedWrap, _LightingWrappedNormalization)) * poiLight.detailShadow;
						
						poiLight.rampedLightMap = 1;
						if (_LightingRampType == 1) // Math Gradient
						poiLight.rampedLightMap = lerp(_LightingShadowColor, float3(1, 1, 1), saturate(1 - smoothstep(_LightingGradientStart - .000001, _LightingGradientEnd, 1 - uv)));
						
						vertexLighting += poiLight.vColor[index] * poiLight.rampedLightMap * saturate(poiLight.vAttenuation[index] * uv);
						*/
					}
				}
				float3 mixedLight = poiLight.finalLighting;
				poiLight.finalLighting = vertexLighting + poiLight.finalLighting;
				#endif
			}
			#endif
			
			void blendMatcap(in PoiLight poiLight, inout PoiFragData poiFragData, float add, float multiply, float replace, float4 matcapColor, float matcapMask, float emissionStrength, float matcapLightMask
			#ifdef POI_BLACKLIGHT
			, uint blackLightMaskIndex
			#endif
			)
			{
				if (matcapLightMask)
				{
					//todo ramped lightmap is hecked
					matcapMask *= lerp(1, poiLight.rampedLightMap, matcapLightMask);
				}
				#ifdef POI_BLACKLIGHT
				if (blackLightMaskIndex != 4)
				{
					matcapMask *= blackLightMask[blackLightMaskIndex];
				}
				#endif
				
				poiFragData.baseColor.rgb = lerp(poiFragData.baseColor.rgb, matcapColor.rgb, replace * matcapMask * matcapColor.a * .999999);
				poiFragData.baseColor.rgb *= lerp(1, matcapColor.rgb, multiply * matcapMask * matcapColor.a);
				poiFragData.baseColor.rgb += matcapColor.rgb * add * matcapMask * matcapColor.a;
				poiFragData.emission += matcapColor.rgb * emissionStrength * matcapMask * matcapColor.a;
			}
			
			#if defined(POI_MATCAP0) || defined(COLOR_GRADING_HDR_3D)
			void applyMatcap(inout PoiFragData poiFragData, in PoiCam poiCam, in PoiMesh poiMesh, in PoiLight poiLight, in PoiMods poiMods)
			{
				float4 matcap = 0;
				float matcapMask = 0;
				float4 matcap2 = 0;
				float matcap2Mask = 0;
				float2 matcapUV = 0;
				
				// Matcap 1
				#ifdef POI_MATCAP0
				float3 normal0 = poiMesh.normals[_MatcapNormal];
				#ifdef POI_MATCAP0_CUSTOM_NORMAL
				#if defined(PROP_MATCAP0NORMALMAP) || !defined(OPTIMIZER_ENABLED)
				normal0 = calculateNormal(poiMesh.normals[_MatcapNormal], poiMesh, _Matcap0NormalMap, _Matcap0NormalMap_ST, _Matcap0NormalMapPan, _Matcap0NormalMapUV, _Matcap0NormalMapScale);
				#endif
				#endif
				
				switch(_MatcapUVMode)
				{
					// Normal / UTS
					case 0:
					{
						float3 viewNormal = (mul(UNITY_MATRIX_V, float4(normal0, 0))).rgb;
						float3 NormalBlend_MatCapUV_Detail = viewNormal.rgb * float3(-1, -1, 1);
						float3 NormalBlend_MatCapUV_Base = (mul(UNITY_MATRIX_V, float4(poiCam.viewDir, 0)).rgb * float3(-1, -1, 1)) + float3(0, 0, 1);
						float3 noSknewViewNormal = NormalBlend_MatCapUV_Base * dot(NormalBlend_MatCapUV_Base, NormalBlend_MatCapUV_Detail) / NormalBlend_MatCapUV_Base.b - NormalBlend_MatCapUV_Detail;
						
						matcapUV = noSknewViewNormal.rg * _MatcapBorder + 0.5;
						break;
					}
					// Top Pinch
					case 1:
					{
						float3 worldViewUp = normalize(float3(0, 1, 0) - poiCam.viewDir * dot(poiCam.viewDir, float3(0, 1, 0)));
						float3 worldViewRight = normalize(cross(poiCam.viewDir, worldViewUp));
						matcapUV = float2(dot(worldViewRight, normal0), dot(worldViewUp, normal0)) * _MatcapBorder + 0.5;
						break;
					}
					// Custom Double Sided
					case 2:
					{
						float3 reflection = reflect(-poiCam.viewDir, normal0);
						float2 uv = float2(dot(reflection, float3(1, 0, 0)), dot(reflection, float3(0, 1, 0)));
						matcapUV = uv * _MatcapBorder + 0.5;
						break;
					}
				}
				if (IsInMirror())
				{
					matcapUV.x = 1 - matcapUV.x;
				}
				
				#if defined(PROP_MATCAP) || !defined(OPTIMIZER_ENABLED)
				matcap = UNITY_SAMPLE_TEX2D_SAMPLER(_Matcap, _MainTex, TRANSFORM_TEX(matcapUV, _Matcap)) * float4(poiThemeColor(poiMods, _MatcapColor.rgb, _MatcapColorThemeIndex), _MatcapColor.a);
				#else
				matcap = float4(poiThemeColor(poiMods, _MatcapColor.rgb, _MatcapColorThemeIndex), _MatcapColor.a);
				#endif
				
				matcap.rgb *= _MatcapIntensity;
				#if defined(PROP_MATCAPMASK) || !defined(OPTIMIZER_ENABLED)
				matcapMask = POI2D_SAMPLER_PAN(_MatcapMask, _MainTex, poiUV(poiMesh.uv[_MatcapMaskUV], _MatcapMask_ST), _MatcapMaskPan);
				#else
				matcapMask = 1;
				#endif
				
				if (_MatcapMaskInvert)
				{
					matcapMask = 1 - matcapMask;
				}
				
				poiFragData.alpha *= lerp(1, matcap.a, matcapMask * _MatcapAlphaOverride);
				
				//UNITY_BRANCH
				if (_MatcapHueShiftEnabled)
				{
					matcap.rgb = hueShift(matcap.rgb, _MatcapHueShift + _Time.x * _MatcapHueShiftSpeed);
				}
				
				blendMatcap(poiLight, poiFragData, _MatcapAdd, _MatcapMultiply, _MatcapReplace, matcap, matcapMask, _MatcapEmissionStrength, _MatcapLightMask
				#ifdef POI_BLACKLIGHT
				, _BlackLightMaskMatcap
				#endif
				);
				#endif
				
				// Matcap 2
				#ifdef COLOR_GRADING_HDR_3D
				
				float3 normal1 = poiMesh.normals[_Matcap2Normal];
				#ifdef POI_MATCAP1_CUSTOM_NORMAL
				#if defined(PROP_MATCAP1NORMALMAP) || !defined(OPTIMIZER_ENABLED)
				normal1 = calculateNormal(poiMesh.normals[_Matcap2Normal], poiMesh, _Matcap1NormalMap, _Matcap1NormalMap_ST, _Matcap1NormalMapPan, _Matcap1NormalMapUV, _Matcap1NormalMapScale);
				#endif
				#endif
				
				matcapUV = 0;
				
				switch(_Matcap2UVMode)
				{
					// Normal / UTS
					case 0:
					{
						float3 viewNormal = (mul(UNITY_MATRIX_V, float4(normal1, 0))).rgb;
						float3 NormalBlend_MatCapUV_Detail = viewNormal.rgb * float3(-1, -1, 1);
						float3 NormalBlend_MatCapUV_Base = (mul(UNITY_MATRIX_V, float4(poiCam.viewDir, 0)).rgb * float3(-1, -1, 1)) + float3(0, 0, 1);
						float3 noSknewViewNormal = NormalBlend_MatCapUV_Base * dot(NormalBlend_MatCapUV_Base, NormalBlend_MatCapUV_Detail) / NormalBlend_MatCapUV_Base.b - NormalBlend_MatCapUV_Detail;
						
						matcapUV = noSknewViewNormal.rg * _Matcap2Border + 0.5;
						break;
					}
					// Top Pinch
					case 1:
					{
						float3 worldViewUp = normalize(float3(0, 1, 0) - poiCam.viewDir * dot(poiCam.viewDir, float3(0, 1, 0)));
						float3 worldViewRight = normalize(cross(poiCam.viewDir, worldViewUp));
						matcapUV = float2(dot(worldViewRight, normal1), dot(worldViewUp, normal1)) * _Matcap2Border + 0.5;
						break;
					}
					// Custom Double Sided
					case 2:
					{
						float3 reflection = reflect(-poiCam.viewDir, normal1);
						float2 uv = float2(dot(reflection, float3(1, 0, 0)), dot(reflection, float3(0, 1, 0)));
						matcapUV = uv * _Matcap2Border + 0.5;
						break;
					}
				}
				if (IsInMirror())
				{
					matcapUV.x = 1 - matcapUV.x;
				}
				
				#if defined(PROP_MATCAP2) || !defined(OPTIMIZER_ENABLED)
				matcap2 = UNITY_SAMPLE_TEX2D_SAMPLER(_Matcap2, _MainTex, TRANSFORM_TEX(matcapUV, _Matcap2)) * float4(poiThemeColor(poiMods, _Matcap2Color.rgb, _Matcap2ColorThemeIndex), _Matcap2Color.a);
				#else
				matcap2 = float4(poiThemeColor(poiMods, _Matcap2Color.rgb, _Matcap2ColorThemeIndex), _Matcap2Color.a);
				#endif
				matcap2.rgb *= _Matcap2Intensity;
				#if defined(PROP_MATCAP2MASK) || !defined(OPTIMIZER_ENABLED)
				matcap2Mask = POI2D_SAMPLER_PAN(_Matcap2Mask, _MainTex, poiUV(poiMesh.uv[_Matcap2MaskUV], _Matcap2Mask_ST), _Matcap2MaskPan);
				#else
				matcap2Mask = 1;
				#endif
				if (_Matcap2MaskInvert)
				{
					matcap2Mask = 1 - matcap2Mask;
				}
				
				poiFragData.alpha *= lerp(1, matcap2.a, matcap2Mask * _Matcap2AlphaOverride);
				
				//UNITY_BRANCH
				if (_Matcap2HueShiftEnabled)
				{
					matcap2.rgb = hueShift(matcap2.rgb, _Matcap2HueShift + _Time.x * _Matcap2HueShiftSpeed);
				}
				
				blendMatcap(poiLight, poiFragData, _Matcap2Add, _Matcap2Multiply, _Matcap2Replace, matcap2, matcap2Mask, _Matcap2EmissionStrength, _Matcap2LightMask
				#ifdef POI_BLACKLIGHT
				, _BlackLightMaskMatcap2
				#endif
				);
				#endif
			}
			#endif
			
			#ifdef _CUBEMAP
			void applyCubemap(inout PoiFragData poiFragData, in PoiCam poiCam, in PoiMesh poiMesh, in PoiLight poiLight, in PoiMods poiMods)
			{
				float3 CubeMapUV = 0;
				
				switch(_CubeMapUVMode)
				{
					// Skybox
					case 0:
					{
						CubeMapUV = -poiCam.viewDir;
						break;
					}
					// Reflection
					case 1:
					{
						CubeMapUV = poiCam.reflectionDir;
						break;
					}
				}
				
				#if defined(PROP_CUBEMAP) || !defined(OPTIMIZER_ENABLED)
				float4 cubeMap = texCUBE(_CubeMap, CubeMapUV);
				cubeMap.rgb *= poiThemeColor(poiMods, _CubeMapColor, _CubeMapColorThemeIndex);
				#else
				float4 cubeMap = float4(poiThemeColor(poiMods, _CubeMapColor, _CubeMapColorThemeIndex), 1);
				#endif
				
				cubeMap.rgb *= _CubeMapIntensity;
				#if defined(PROP_CUBEMAPMASK) || !defined(OPTIMIZER_ENABLED)
				float CubeMapMask = POI2D_SAMPLER_PAN(_CubeMapMask, _MainTex, poiUV(poiMesh.uv[_CubeMapMaskUV], _CubeMapMask_ST), _CubeMapMaskPan);
				#else
				float CubeMapMask = 1;
				#endif
				
				if (_CubeMapMaskInvert)
				{
					CubeMapMask = 1 - CubeMapMask;
				}
				
				//UNITY_BRANCH
				if (_CubeMapHueShiftEnabled)
				{
					cubeMap.rgb = hueShift(cubeMap.rgb, _CubeMapHueShift + _Time.x * _CubeMapHueShiftSpeed);
				}
				
				poiFragData.baseColor.rgb = lerp(poiFragData.baseColor.rgb, cubeMap.rgb, _CubeMapReplace * CubeMapMask * cubeMap.a);
				poiFragData.baseColor.rgb *= lerp(1, cubeMap.rgb, _CubeMapMultiply * CubeMapMask * cubeMap.a);
				poiFragData.baseColor.rgb += cubeMap.rgb * _CubeMapAdd * CubeMapMask * cubeMap.a;
				poiFragData.emission += cubeMap.rgb * _CubeMapEmissionStrength * CubeMapMask * cubeMap.a;
			}
			#endif
			
			/*
			Liltoon made most of this and it looked really good so I modified it to be a little more poi
			
			MIT License
			
			Copyright (c) 2020-2021 lilxyzw
			
			Permission is hereby granted, free of charge, to any person obtaining a copy
			of this software and associated documentation files (the "Software"), to deal
			in the Software without restriction, including without limitation the rights
			to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
			copies of the Software, and to permit persons to whom the Software is
			furnished to do so, subject to the following conditions:
			
			The above copyright notice and this permission notice shall be included in all
			copies or substantial portions of the Software.
			
			THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
			IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
			FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
			AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
			LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
			OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
			SOFTWARE.
			*/
			
			#ifdef COLOR_GRADING_LOG_VIEW
			#ifdef POI_AL_DECAL
			void ApplyAudioLinkDecal(in PoiMesh poiMesh, inout PoiFragData poiFragData, in PoiMods poiMods)
			{
				float2 uv = poiMesh.uv[_ALDecalUV];
				float2 decalCenter = _ALUVPosition;
				float theta = radians(_ALUVRotation + _Time.z * _ALUVRotationSpeed);
				float cs = cos(theta);
				float sn = sin(theta);
				uv = float2((uv.x - decalCenter.x) * cs - (uv.y - decalCenter.y) * sn + decalCenter.x, (uv.x - decalCenter.x) * sn + (uv.y - decalCenter.y) * cs + decalCenter.y);
				uv = remap(uv, float2(0, 0) - _ALUVScale.xz / 2 + _ALUVPosition, _ALUVScale.yw / 2 + _ALUVPosition, float2(0, 0), float2(1, 1));
				
				// Mask
				float4 audioLinkMask = 1.0;
				
				// UV
				float2 aluv = uv;
				if (_ALDecalUVMode == 1)
				{
					float2 uvdir = uv * 2 - 1;
					aluv.x = frac(atan2(uvdir.y, uvdir.x) * UNITY_INV_TWO_PI);
					aluv.y = length(uvdir);
				}
				
				// Scale / Offset / Step
				float maskY = aluv.y;
				if (_ALDecalUVMode == 1)
				{
					maskY = remap(maskY, _ALDecaldCircleDimensions.x, _ALDecaldCircleDimensions.y, 0, 1);
				}
				float maskX = aluv.x;
				if (_ALDecalUVMode == 1)
				{
					maskX = remap(maskX, _ALDecaldCircleDimensions.z, _ALDecaldCircleDimensions.w, 0, 1);
				}
				
				float maskVolume = _ALDecalVolumeStep != 0.0 ? floor(maskY * _ALDecalVolumeStep) / _ALDecalVolumeStep : maskY;
				float maskBand = _ALDecalBandStep != 0.0 ? floor(maskX * _ALDecalBandStep) / _ALDecalBandStep : maskX;
				
				// Copy
				audioLinkMask.r = maskVolume;
				audioLinkMask.g = maskBand;
				
				// Clip
				audioLinkMask.b = maskVolume < _ALDecalVolumeClipMin || maskVolume > _ALDecalVolumeClipMax ? 0.0 : audioLinkMask.b;
				audioLinkMask.b = maskBand < _ALDecalBandClipMin || maskBand > _ALDecalBandClipMax ? 0.0 : audioLinkMask.b;
				
				// Shape Clip
				if (_ALDecalShapeClip)
				{
					float volumeth = _ALDecalShapeClipVolumeWidth;
					if (_ALDecalVolumeStep != 0.0) audioLinkMask.b = frac(maskY * _ALDecalVolumeStep) > volumeth ? 0.0 : audioLinkMask.b;
					
					float bandwidth = _ALDecalUVMode == 1 ? _ALDecalShapeClipBandWidth / aluv.y : _ALDecalShapeClipBandWidth;
					float bandth = 1.0 - bandwidth;
					if (_ALDecalBandStep != 0.0) audioLinkMask.b = frac(maskX * _ALDecalBandStep + bandth * 0.5) < bandth ? 0.0 : audioLinkMask.b;
				}
				
				// AudioLink
				float2 audioLinkUV = float2(frac(audioLinkMask.g * 2.0), 4.5 / 4.0 + floor(audioLinkMask.g * 2.0) / 4.0);
				audioLinkUV.y *= 0.0625;
				float4 audioTexture = _AudioTexture.Sample(sampler_linear_clamp, audioLinkUV);
				float audioVal = audioTexture.b * _ALDecalVolume * lerp(_ALDecalBaseBoost, _ALDecalTrebleBoost, audioLinkMask.g);
				float audioLinkValue = _ALDecalLineWidth < 1.0 ? abs(audioVal - audioLinkMask.r) < _ALDecalLineWidth : audioVal > audioLinkMask.r * 2.0;
				audioLinkValue = saturate(audioLinkValue) * audioLinkMask.b;
				//clip(audioLinkValue - .5);
				
				if (!poiMods.audioLinkAvailable)
				{
					audioLinkValue = 0;
				}
				
				float3 alColorChord = _AudioTexture.Sample(sampler_linear_clamp, float2(maskX, 24.5 / 64.0)).rgb;
				float volumeColorSrc = audioLinkMask.g;
				if (_ALDecalVolumeColorSource == 1) volumeColorSrc = audioLinkMask.r;
				if (_ALDecalVolumeColorSource == 2) volumeColorSrc = audioVal;
				
				float3 volumeColor = lerp(_ALDecalVolumeColorLow.rgb, _ALDecalVolumeColorMid.rgb, saturate(volumeColorSrc * 2));
				volumeColor = lerp(volumeColor, _ALDecalVolumeColorHigh.rgb, saturate(volumeColorSrc * 2 - 1));
				
				float3 emissionColor = lerp(_ALDecalVolumeColorLow.rgb * _ALDecalLowEmission, _ALDecalVolumeColorMid.rgb * _ALDecalMidEmission, saturate(volumeColorSrc * 2));
				emissionColor = lerp(emissionColor, _ALDecalVolumeColorHigh.rgb * _ALDecalHighEmission, saturate(volumeColorSrc * 2 - 1));
				
				//poiFragData.baseColor = lerp(poiFragData.baseColor, volumeColor, audioLinkValue);
				#if defined(POI_PASS_BASE) || defined(POI_PASS_ADD)
				poiFragData.emission += emissionColor * audioLinkValue;
				poiFragData.baseColor.rgb = lerp(poiFragData.baseColor, customBlend(poiFragData.baseColor, volumeColor, _ALDecalBlendType), saturate(_ALDecalBlendAlpha * audioLinkValue));
				#endif
				poiFragData.alpha = lerp(poiFragData.alpha, poiFragData.alpha * audioLinkValue, _ALDecalControlsAlpha);
			}
			#endif
			#endif
			
			#ifdef _SUNDISK_HIGH_QUALITY
			
			void applyFlipbook(inout PoiFragData poiFragData, in PoiMesh poiMesh, in PoiMods poiMods)
			{
				float4 flipBookPixel = float4(0, 0, 0, 0);
				#if defined(PROP_FLIPBOOKMASK) || !defined(OPTIMIZER_ENABLED)
				float flipBookMask = POI2D_SAMPLER_PAN(_FlipbookMask, _MainTex, poiMesh.uv[_FlipbookMaskUV], _FlipbookMaskPan).r;
				#else
				float flipBookMask = 1;
				#endif
				float4 flipbookScaleOffset = _FlipbookScaleOffset;
				
				#ifdef COLOR_GRADING_LOG_VIEW
				//flipbookScaleOffset.xy += lerp(_AudioLinkFlipbookScale.xy, _AudioLinkFlipbookScale.zw, poiMods.audioLink[_AudioLinkFlipbookScaleBand]);
				#endif
				
				flipbookScaleOffset.xy = 1 - flipbookScaleOffset.xy;
				float2 uv = frac(poiMesh.uv[_FlipbookTexArrayUV]);
				float theta = radians(_FlipbookRotation + _Time.z * _FlipbookRotationSpeed);
				float cs = cos(theta);
				float sn = sin(theta);
				float2 spriteCenter = flipbookScaleOffset.zw + .5;
				// 2d rotation
				uv = float2((uv.x - spriteCenter.x) * cs - (uv.y - spriteCenter.y) * sn + spriteCenter.x, (uv.x - spriteCenter.x) * sn + (uv.y - spriteCenter.y) * cs + spriteCenter.y);
				float4 sideOffset = float4(-_FlipbookSideOffset.x, _FlipbookSideOffset.y, -_FlipbookSideOffset.z, _FlipbookSideOffset.w);
				float2 newUV = remap(uv, float2(0, 0) + flipbookScaleOffset.xy / 2 + flipbookScaleOffset.zw + sideOffset.xz, float2(1, 1) - flipbookScaleOffset.xy / 2 + flipbookScaleOffset.zw + sideOffset.yw, float2(0, 0), float2(1, 1));
				
				UNITY_BRANCH
				if (_FlipbookTiled == 0)
				{
					if (max(newUV.x, newUV.y) > 1 || min(newUV.x, newUV.y) < 0)
					{
						return;
					}
				}
				#if defined(PROP_FLIPBOOKTEXARRAY) || !defined(OPTIMIZER_ENABLED)
				float currentFrame = fmod(_FlipbookCurrentFrame, _FlipbookTotalFrames);
				if (_FlipbookCurrentFrame < 0)
				{
					currentFrame = (_Time.y / (1 / _FlipbookFPS)) % _FlipbookTotalFrames;
				}
				#ifdef COLOR_GRADING_LOG_VIEW
				if (_FlipbookChronotensityEnabled)
				{
					currentFrame = (AudioLinkDecodeDataAsUInt(ALPASS_CHRONOTENSITY + uint2(0, _FlipbookChronotensityBand)) % (_FlipbookChronotensitySpeed * 1000000)) / (_FlipbookChronotensitySpeed * 1000000.0) * _FlipbookTotalFrames;
					
				}
				//currentFrame += lerp(_AudioLinkFlipbookFrame.x, _AudioLinkFlipbookFrame.y, poiMods.audioLink[_AudioLinkFlipbookFrameBand]);
				#endif
				flipBookPixel = UNITY_SAMPLE_TEX2DARRAY(_FlipbookTexArray, float3(TRANSFORM_TEX(newUV, _FlipbookTexArray) + _Time.x * _FlipbookTexArrayPan, floor(currentFrame)));
				UNITY_BRANCH
				if (_FlipbookCrossfadeEnabled)
				{
					float4 flipbookNextPixel = UNITY_SAMPLE_TEX2DARRAY(_FlipbookTexArray, float3(TRANSFORM_TEX(newUV, _FlipbookTexArray) + _Time.x * _FlipbookTexArrayPan, floor((currentFrame + 1) % _FlipbookTotalFrames)));
					flipBookPixel = lerp(flipBookPixel, flipbookNextPixel, smoothstep(_FlipbookCrossfadeRange.x, _FlipbookCrossfadeRange.y, frac(currentFrame)));
				}
				#else
				flipBookPixel = 1;
				#endif
				
				UNITY_BRANCH
				if (_FlipbookIntensityControlsAlpha)
				{
					flipBookPixel.a = poiMax(flipBookPixel.rgb);
				}
				UNITY_BRANCH
				if (_FlipbookColorReplaces)
				{
					flipBookPixel.rgb = poiThemeColor(poiMods, _FlipbookColor.rgb, _FlipbookColorThemeIndex);
				}
				else
				{
					flipBookPixel.rgb *= poiThemeColor(poiMods, _FlipbookColor.rgb, _FlipbookColorThemeIndex);
				}
				
				#ifdef POI_BLACKLIGHT
				UNITY_BRANCH
				if (_BlackLightMaskFlipbook != 4)
				{
					flipBookMask *= blackLightMask[_BlackLightMaskFlipbook];
				}
				#endif
				
				UNITY_BRANCH
				if (_FlipbookHueShiftEnabled)
				{
					flipBookPixel.rgb = hueShift(flipBookPixel.rgb, _FlipbookHueShift + _Time.x * _FlipbookHueShiftSpeed);
				}
				half flipbookAlpha = 1;
				#ifdef COLOR_GRADING_LOG_VIEW
				//flipbookAlpha = saturate(lerp(_AudioLinkFlipbookAlpha.x, _AudioLinkFlipbookAlpha.y, poiMods.audioLink[_AudioLinkFlipbookAlphaBand]));
				#endif
				
				#if !defined(POI_PASS_OUTLINE) && !defined(UNITY_PASS_SHADOWCASTER)
				
				poiFragData.baseColor = lerp(poiFragData.baseColor, flipBookPixel.rgb, flipBookPixel.a * _FlipbookColor.a * _FlipbookReplace * flipBookMask * flipbookAlpha);
				poiFragData.baseColor = poiFragData.baseColor + flipBookPixel.rgb * _FlipbookAdd * flipBookMask * flipbookAlpha;
				poiFragData.baseColor = poiFragData.baseColor * lerp(1, flipBookPixel.rgb, flipBookPixel.a * _FlipbookColor.a * flipBookMask * _FlipbookMultiply * flipbookAlpha);
				
				float flipbookEmissionStrength = _FlipbookEmissionStrength;
				#ifdef COLOR_GRADING_LOG_VIEW
				//flipbookEmissionStrength += max(lerp(_AudioLinkFlipbookEmission.x, _AudioLinkFlipbookEmission.y, poiMods.audioLink[_AudioLinkFlipbookEmissionBand]), 0);
				#endif
				
				poiFragData.emission += lerp(0, flipBookPixel.rgb * flipbookEmissionStrength, flipBookPixel.a * _FlipbookColor.a * flipBookMask * flipbookAlpha);
				
				#endif
				
				UNITY_BRANCH
				if (_FlipbookAlphaControlsFinalAlpha)
				{
					poiFragData.alpha = lerp(poiFragData.alpha, flipBookPixel.a * _FlipbookColor.a, flipBookMask);
				}
			}
			
			#endif
			
			#ifdef _GLOSSYREFLECTIONS_OFF
			void ApplyRimLighting(inout PoiFragData poiFragData, in PoiMesh poiMesh, in PoiCam poiCam, in PoiLight poiLight, in PoiMods poiMods)
			{
				#if defined(PROP_RIMWIDTHNOISETEXTURE) || !defined(OPTIMIZER_ENABLED)
				float rimNoise = POI2D_SAMPLER_PAN(_RimWidthNoiseTexture, _MainTex, poiUV(poiMesh.uv[_RimWidthNoiseTextureUV], _RimWidthNoiseTexture_ST), _RimWidthNoiseTexturePan);
				#else
				float rimNoise = 0;
				#endif
				
				rimNoise = (rimNoise - .5) * _RimWidthNoiseStrength;
				
				float viewDotNormal = saturate(abs(dot(poiCam.viewDir, poiMesh.normals[_RimLightNormal])));
				
				UNITY_BRANCH
				if (_RimLightingInvert)
				{
					viewDotNormal = 1 - viewDotNormal;
				}
				float rimStrength = _RimStrength;
				float rimBrighten = _RimBrighten;
				
				float rimWidth = lerp( - .05, 1, _RimWidth);
				/*
				#ifdef COLOR_GRADING_LOG_VIEW
				UNITY_BRANCH
				if (poiMods.audioLinkAvailable)
				{
					rimWidth = clamp(rimWidth + lerp(_AudioLinkRimWidthAdd.x, _AudioLinkRimWidthAdd.y, poiMods.audioLink[_AudioLinkRimWidthBand]), - .05, 1);
					rimStrength += lerp(_AudioLinkRimEmissionAdd.x, _AudioLinkRimEmissionAdd.y, poiMods.audioLink[_AudioLinkRimEmissionBand]);
					rimBrighten += lerp(_AudioLinkRimBrightnessAdd.x, _AudioLinkRimBrightnessAdd.y, poiMods.audioLink[_AudioLinkRimBrightnessBand]);
				}
				#endif
				*/
				
				rimWidth -= rimNoise;
				#if defined(PROP_RIMMASK) || !defined(OPTIMIZER_ENABLED)
				float rimMask = POI2D_SAMPLER_PAN(_RimMask, _MainTex, poiUV(poiMesh.uv[_RimMaskUV], _RimMask_ST), _RimMaskPan);
				#else
				float rimMask = 1;
				#endif
				
				#if defined(PROP_RIMTEX) || !defined(OPTIMIZER_ENABLED)
				float4 rimColor = POI2D_SAMPLER_PAN(_RimTex, _MainTex, poiUV(poiMesh.uv[_RimTexUV], _RimTex_ST), _RimTexPan) * float4(poiThemeColor(poiMods, _RimLightColor.rgb, _RimLightColorThemeIndex), _RimLightColor.a);
				#else
				float4 rimColor = float4(poiThemeColor(poiMods, _RimLightColor.rgb, _RimLightColorThemeIndex), _RimLightColor.a);
				#endif
				
				UNITY_BRANCH
				if (_RimHueShiftEnabled)
				{
					rimColor.rgb = hueShift(rimColor.rgb, _RimHueShift + _Time.x * _RimHueShiftSpeed);
				}
				
				rimWidth = max(lerp(rimWidth, rimWidth * lerp(0, 1, poiLight.lightMap - _ShadowMixThreshold) * _ShadowMixWidthMod, _ShadowMix), 0);
				float rim = 1 - smoothstep(min(_RimSharpness, rimWidth), rimWidth, viewDotNormal);
				rim *= _RimLightColor.a * rimColor.a * rimMask;
				poiFragData.emission += rim * lerp(poiFragData.baseColor, rimColor, _RimLightColorBias) * rimStrength;
				poiFragData.baseColor = lerp(poiFragData.baseColor, lerp(poiFragData.baseColor, rimColor, _RimLightColorBias) + lerp(poiFragData.baseColor, rimColor, _RimLightColorBias) * rimBrighten, rim);
			}
			#endif
			
			#ifdef _SUNDISK_SIMPLE
			
			float3 RandomColorFromPoint(float2 rando)
			{
				fixed hue = random2(rando.x + rando.y).x;
				fixed saturation = lerp(_GlitterMinMaxSaturation.x, _GlitterMinMaxSaturation.y, rando.x);
				fixed value = lerp(_GlitterMinMaxBrightness.x, _GlitterMinMaxBrightness.y, rando.y);
				float3 hsv = float3(hue, saturation, value);
				return HSVtoRGB(hsv);
			}
			
			void applyGlitter(inout PoiFragData poiFragData, in PoiMesh poiMesh, in PoiCam poiCam, in PoiLight poiLight, in PoiMods poiMods)
			{
				// Scale
				float2 st = frac(poiMesh.uv[_GlitterUV] + _GlitterUVPanning.xy * _Time.x) * _GlitterFrequency;
				
				// Tile the space
				float2 i_st = floor(st);
				float2 f_st = frac(st);
				
				float m_dist = 10.;  // minimun distance
				float2 m_point = 0;        // minimum point
				float2 randoPoint = 0;
				float2 dank;
				for (int j = -1; j <= 1; j++)
				{
					for (int i = -1; i <= 1; i++)
					{
						float2 neighbor = float2(i, j);
						float2 pos = random2(i_st + neighbor);
						float2 rando = pos;
						pos = 0.5 + 0.5 * sin(_GlitterJitter * 6.2831 * pos);
						float2 diff = neighbor + pos - f_st;
						float dist = length(diff);
						
						if (dist < m_dist)
						{
							dank = diff;
							m_dist = dist;
							m_point = pos;
							randoPoint = rando;
						}
					}
				}
				
				float randomFromPoint = random(randoPoint);
				
				float size = _GlitterSize;
				UNITY_BRANCH
				if (_GlitterRandomSize)
				{
					size = remapClamped(0, 1, randomFromPoint, _GlitterMinMaxSize.x, _GlitterMinMaxSize.y);
				}
				
				// Assign a color using the closest point position
				//color += dot(m_point, float2(.3, .6));
				
				// Add distance field to closest point center
				// color.g = m_dist;
				
				// Show isolines
				//color -= abs(sin(40.0 * m_dist)) * 0.07;
				
				// Draw cell center
				half glitterAlpha = 1;
				switch(_GlitterShape)
				{
					case 0: //circle
					glitterAlpha = 1 - saturate((m_dist - size) / clamp(fwidth(m_dist), 0.0001, 1.0));
					break;
					case 1: //sqaure
					float jaggyFix = pow(poiCam.distanceToVert, 2) * _GlitterJaggyFix;
					
					UNITY_BRANCH
					if (_GlitterRandomRotation == 1 || _GlitterTextureRotation != 0)
					{
						float2 center = float2(0, 0);
						float randomBoy = 0;
						UNITY_BRANCH
						if (_GlitterRandomRotation)
						{
							randomBoy = random(randoPoint);
						}
						float theta = radians((randomBoy + _Time.x * _GlitterTextureRotation) * 360);
						float cs = cos(theta);
						float sn = sin(theta);
						dank = float2((dank.x - center.x) * cs - (dank.y - center.y) * sn + center.x, (dank.x - center.x) * sn + (dank.y - center.y) * cs + center.y);
						glitterAlpha = (1. - smoothstep(size - .1 * jaggyFix, size, abs(dank.x))) * (1. - smoothstep(size - .1 * jaggyFix, size, abs(dank.y)));
					}
					else
					{
						glitterAlpha = (1. - smoothstep(size - .1 * jaggyFix, size, abs(dank.x))) * (1. - smoothstep(size - .1 * jaggyFix, size, abs(dank.y)));
					}
					break;
				}
				
				float3 finalGlitter = 0;
				
				half3 glitterColor = poiThemeColor(poiMods, _GlitterColor, _GlitterColorThemeIndex);
				
				float3 norm = poiMesh.normals[1];
				float3 randomRotation = 0;
				switch(_GlitterMode)
				{
					case 0:
					UNITY_BRANCH
					if (_GlitterSpeed > 0)
					{
						randomRotation = randomFloat3WiggleRange(randoPoint, _GlitterAngleRange, _GlitterSpeed);
					}
					else
					{
						randomRotation = randomFloat3Range(randoPoint, _GlitterAngleRange);
					}
					
					float3 glitterReflectionDirection = normalize(mul(poiRotationMatrixFromAngles(randomRotation), norm));
					finalGlitter = lerp(0, _GlitterMinBrightness * glitterAlpha, glitterAlpha) + max(pow(saturate(dot(lerp(glitterReflectionDirection, poiCam.viewDir, _GlitterBias), poiCam.viewDir)), _GlitterContrast), 0);
					finalGlitter *= glitterAlpha;
					break;
					case 1:
					float offset = random(randoPoint);
					float brightness = sin((_Time.x + offset) * _GlitterSpeed) * _glitterFrequencyLinearEmissive - (_glitterFrequencyLinearEmissive - 1);
					finalGlitter = max(_GlitterMinBrightness * glitterAlpha, brightness * glitterAlpha * smoothstep(0, 1, 1 - m_dist * _GlitterCenterSize * 10));
					break;
					case 2:
					if (_GlitterSpeed > 0)
					{
						randomRotation = randomFloat3WiggleRange(randoPoint, _GlitterAngleRange, _GlitterSpeed);
					}
					else
					{
						randomRotation = randomFloat3Range(randoPoint, _GlitterAngleRange);
					}
					
					float3 glitterLightReflectionDirection = normalize(mul(poiRotationMatrixFromAngles(randomRotation), norm));
					
					#ifdef UNITY_PASS_FORWARDADD
					glitterAlpha *= poiLight.nDotLSaturated * poiLight.attenuation;
					#endif
					#ifdef UNITY_PASS_FORWARDBASE
					glitterAlpha *= poiLight.nDotLSaturated;
					#endif
					
					float3 halfDir = normalize(poiLight.direction + poiCam.viewDir);
					float specAngle = max(dot(halfDir, glitterLightReflectionDirection), 0.0);
					
					finalGlitter = lerp(0, _GlitterMinBrightness * glitterAlpha, glitterAlpha) + max(pow(specAngle, _GlitterContrast), 0);
					
					glitterColor *= poiLight.directColor;
					finalGlitter *= glitterAlpha;
					
					break;
				}
				
				glitterColor *= lerp(1, poiFragData.baseColor, _GlitterUseSurfaceColor);
				#if defined(PROP_GLITTERCOLORMAP) || !defined(OPTIMIZER_ENABLED)
				glitterColor *= POI2D_SAMPLER_PAN(_GlitterColorMap, _MainTex, poiUV(poiMesh.uv[_GlitterColorMapUV], _GlitterColorMap_ST), _GlitterColorMapPan).rgb;
				#endif
				float2 uv = remapClamped(-size, size, dank, 0, 1);
				UNITY_BRANCH
				if (_GlitterRandomRotation == 1 || _GlitterTextureRotation != 0 && !_GlitterShape)
				{
					float2 fakeUVCenter = float2(.5, .5);
					float randomBoy = 0;
					UNITY_BRANCH
					if (_GlitterRandomRotation)
					{
						randomBoy = random(randoPoint);
					}
					float theta = radians((randomBoy + _Time.x * _GlitterTextureRotation) * 360);
					float cs = cos(theta);
					float sn = sin(theta);
					uv = float2((uv.x - fakeUVCenter.x) * cs - (uv.y - fakeUVCenter.y) * sn + fakeUVCenter.x, (uv.x - fakeUVCenter.x) * sn + (uv.y - fakeUVCenter.y) * cs + fakeUVCenter.y);
				}
				
				#if defined(PROP_GLITTERTEXTURE) || !defined(OPTIMIZER_ENABLED)
				float4 glitterTexture = POI2D_SAMPLER_PAN(_GlitterTexture, _MainTex, poiUV(uv, _GlitterTexture_ST), _GlitterTexturePan);
				#else
				float4 glitterTexture = 1;
				#endif
				//float4 glitterTexture = _GlitterTexture.SampleGrad(sampler_MainTex, frac(uv), ddx(uv), ddy(uv));
				glitterColor *= glitterTexture.rgb;
				#if defined(PROP_GLITTERMASK) || !defined(OPTIMIZER_ENABLED)
				float glitterMask = POI2D_SAMPLER_PAN(_GlitterMask, _MainTex, poiUV(poiMesh.uv[_GlitterMaskUV], _GlitterMask_ST), _GlitterMaskPan);
				#else
				float glitterMask = 1;
				#endif
				
				glitterMask *= lerp(1, poiLight.attenuation, _GlitterHideInShadow);
				
				#ifdef POI_BLACKLIGHT
				if (_BlackLightMaskGlitter != 4)
				{
					glitterMask *= blackLightMask[_BlackLightMaskGlitter];
				}
				#endif
				
				if (_GlitterRandomColors)
				{
					glitterColor *= RandomColorFromPoint(random2(randoPoint.x + randoPoint.y));
				}
				
				UNITY_BRANCH
				if (_GlitterHueShiftEnabled)
				{
					glitterColor.rgb = hueShift(glitterColor.rgb, _GlitterHueShift + _Time.x * _GlitterHueShiftSpeed);
				}
				
				UNITY_BRANCH
				if (_GlitterBlendType == 1)
				{
					poiFragData.baseColor = lerp(poiFragData.baseColor, finalGlitter * glitterColor * _GlitterBrightness, finalGlitter * glitterTexture.a * glitterMask);
					poiFragData.emission += finalGlitter * glitterColor * max(0, (_GlitterBrightness - 1) * glitterTexture.a) * glitterMask;
				}
				else
				{
					poiFragData.emission += finalGlitter * glitterColor * _GlitterBrightness * glitterTexture.a * glitterMask;
				}
			}
			#endif
			
			#ifdef MOCHIE_PBR
			
			bool SceneHasReflections()
			{
				float width, height;
				unity_SpecCube0.GetDimensions(width, height);
				return !(width * height < 2);
			}
			
			float3 GetWorldReflections(float3 reflDir, float3 worldPos, float roughness)
			{
				float3 baseReflDir = reflDir;
				reflDir = BoxProjection(reflDir, worldPos, unity_SpecCube0_ProbePosition, unity_SpecCube0_BoxMin, unity_SpecCube0_BoxMax);
				float4 envSample0 = UNITY_SAMPLE_TEXCUBE_LOD(unity_SpecCube0, reflDir, roughness * UNITY_SPECCUBE_LOD_STEPS);
				float3 p0 = DecodeHDR(envSample0, unity_SpecCube0_HDR);
				float interpolator = unity_SpecCube0_BoxMin.w;
				UNITY_BRANCH
				if (interpolator < 0.99999)
				{
					float3 refDirBlend = BoxProjection(baseReflDir, worldPos, unity_SpecCube1_ProbePosition, unity_SpecCube1_BoxMin, unity_SpecCube1_BoxMax);
					float4 envSample1 = UNITY_SAMPLE_TEXCUBE_SAMPLER_LOD(unity_SpecCube1, unity_SpecCube0, refDirBlend, roughness * UNITY_SPECCUBE_LOD_STEPS);
					float3 p1 = DecodeHDR(envSample1, unity_SpecCube1_HDR);
					p0 = lerp(p1, p0, interpolator);
				}
				return p0;
			}
			
			float3 GetReflections(in PoiCam pc, in PoiLight pl, in PoiMesh pm, float roughness)
			{
				float3 reflections = 0;
				float3 lighting = pl.finalLighting;
				if (_MochieForceFallback == 0)
				{
					UNITY_BRANCH
					if (SceneHasReflections())
					{
						reflections = GetWorldReflections(pc.reflectionDir, pm.worldPos.xyz, roughness);
					}
					else
					{
						reflections = texCUBElod(_MochieReflCube, float4(pc.reflectionDir, roughness * UNITY_SPECCUBE_LOD_STEPS));
						reflections = DecodeHDR(float4(reflections, 1), _MochieReflCube_HDR) * lerp(1, pl.finalLighting, _MochieLitFallback);
					}
				}
				else
				{
					reflections = texCUBElod(_MochieReflCube, float4(pc.reflectionDir, roughness * UNITY_SPECCUBE_LOD_STEPS));
					reflections = DecodeHDR(float4(reflections, 1), _MochieReflCube_HDR) * lerp(1, pl.finalLighting, _MochieLitFallback);
				}
				reflections *= pl.occlusion;
				return reflections;
			}
			
			float GetGGXTerm(in PoiLight pl, float roughness)
			{
				float visibilityTerm = 0;
				if (pl.nDotL > 0)
				{
					float rough = roughness;
					float rough2 = roughness * roughness;
					
					float lambdaV = pl.nDotL * (pl.nDotV * (1 - rough) + rough);
					float lambdaL = pl.nDotV * (pl.nDotL * (1 - rough) + rough);
					
					visibilityTerm = 0.5f / (lambdaV + lambdaL + 1e-5f);
					float d = (pl.nDotH * rough2 - pl.nDotH) * pl.nDotH + 1.0f;
					float dotTerm = UNITY_INV_PI * rough2 / (d * d + 1e-7f);
					
					visibilityTerm *= dotTerm * UNITY_PI;
				}
				return visibilityTerm;
			}
			
			void GetSpecFresTerm(in PoiLight pl, inout float3 specularTerm, inout float3 fresnelTerm, float3 specCol, float roughness)
			{
				specularTerm = GetGGXTerm(pl, roughness);
				fresnelTerm = FresnelTerm(specCol, pl.lDotH);
				specularTerm = max(0, specularTerm * max(0.00001, pl.nDotL));
			}
			
			float GetRoughness(float smoothness)
			{
				float rough = 1 - smoothness;
				rough *= 1.7 - 0.7 * rough;
				return rough;
			}
			
			void MochieBRDF(inout PoiFragData pfd, in PoiCam pc, in PoiLight pl, in PoiMesh pm, in PoiMods poiMods)
			{
				float smoothness = _MochieRoughnessMultiplier;
				float metallic = _MochieMetallicMultiplier;
				float specularMask = 1;
				float reflectionMask = 1;
				
				#if defined(PROP_MOCHIEMETALLICMAPS) || !defined(OPTIMIZER_ENABLED)
				float4 PRBMaps = POI2D_SAMPLER_PAN(_MochieMetallicMaps, _MainTex, poiUV(pm.uv[_MochieMetallicMapsUV], _MochieMetallicMaps_ST), _MochieMetallicMapsPan);
				metallic *= PRBMaps.r;
				smoothness = (smoothness * PRBMaps.g);
				specularMask *= PRBMaps.b;
				reflectionMask *= PRBMaps.a;
				#endif
				
				if (_MochieSpecularMaskInvert)
				{
					specularMask = 1 - specularMask;
				}
				if (_MochieReflectionMaskInvert)
				{
					reflectionMask = 1 - reflectionMask;
				}
				
				if (_MochieRoughnessMapInvert)
				{
					smoothness = 1 - smoothness;
				}
				float roughness = GetRoughness(smoothness);
				if (_MochieMetallicMapInvert)
				{
					metallic = 1 - metallic;
				}
				float3 specCol = lerp(unity_ColorSpaceDielectricSpec.rgb, pfd.baseColor, metallic);
				float omr = unity_ColorSpaceDielectricSpec.a - metallic * unity_ColorSpaceDielectricSpec.a;
				float percepRough = 1 - smoothness;
				float brdfRoughness = percepRough * percepRough;
				brdfRoughness = max(brdfRoughness, 0.002);
				
				float3 lighting = pl.finalLighting;
				float3 diffuse = pfd.baseColor;
				float3 specular = 0;
				float3 reflections = 0;
				float3 environment = 0;
				
				// Specular
				// if (_SpecularMode == 0){
				if (_MochieSpecularStrength > 0)
				{
					float3 fresnelTerm = 1;
					float3 specularTerm = 1;
					GetSpecFresTerm(pl, specularTerm, fresnelTerm, specCol, brdfRoughness);
					specular = lighting * specularTerm * fresnelTerm * specularMask * poiThemeColor(poiMods, _MochieSpecularTint, _MochieSpecularTintThemeIndex) * pl.occlusion * pl.attenuation * _MochieSpecularStrength;
				}
				// }
				// else {
				// 	float specArea = 0.5 * dot(pl.halfDir, pm.normals[1]);
				// 	float3 specularMap = POI2D_SAMPLER_PAN(_YMTSpecularMap, _MainTex, poiUV(pm.uv[_YMTSpecularMapUV], _YMTSpecularMap_ST), _YMTSpecularMapPan);
				
				// 	// Spec 1
				// 	// r: noise, g: noise mask, b: feather
				// 	float4 specularOptMap1 = POI2D_SAMPLER_PAN(_YMTSpecularOptMap1, _MainTex, poiUV(pm.uv[_YMTSpecularOptMap1UV], _YMTSpecularOptMap1_ST), _YMTSpecularOptMap1Pan);
				// 	float spec1 = saturate(specArea - saturate(((1-specularOptMap1.r) * specularOptMap1.g) - _YMTLayer1Offset));
				// 	float specMask1 = pow(spec1, exp2(lerp(11, 1, _YMTLayer1Size)));
				// 	specMask1 = saturate((specMask1 - 0.01) / (saturate(specularOptMap1.b * max(0.0001, _YMTSpecularFeather)))) * _YMTLayer1Strength;
				
				// 	// Spec 2
				// 	float specMask2 = 0;
				// 	if (_UseSpecularOptMap2)
				// 	{
				// 		float4 specularOptMap2 = POI2D_SAMPLER_PAN(_YMTSpecularOptMap2, _MainTex, poiUV(pm.uv[_YMTSpecularOptMap2UV], _YMTSpecularOptMap2_ST), _YMTSpecularOptMap2Pan);
				// 		float spec2 = saturate(specArea - saturate(((1-specularOptMap2.r) * specularOptMap2.g) - _YMTLayer2Offset));
				// 		specMask2 = pow(spec2, exp2(lerp(11, 1, _YMTLayer2Size)));
				// 		specMask2 = saturate((specMask2 - 0.01) / (saturate(specularOptMap2.b * max(0.0001, _YMTSpecularFeather)))) * _YMTLayer2Strength;
				// 	}
				
				// 	float specMask = saturate(specMask1 + specMask2);
				// 	specular = specularMap * _MochieSpecularTint * lerp(1, lighting, _YMTUseLightColor) * specMask * pl.occlusion * pl.attenuation * _MochieSpecularStrength;
				// }
				
				// Reflections
				if (_MochieReflectionStrength > 0)
				{
					float surfaceReduction = (1.0 / (brdfRoughness * brdfRoughness + 1.0));
					float grazingTerm = saturate(smoothness + (1 - omr));
					float3 reflCol = GetReflections(pc, pl, pm, roughness);
					float reflStr = reflectionMask * _MochieReflectionStrength;
					reflections = surfaceReduction * reflCol * FresnelLerp(specCol, grazingTerm, pl.nDotV);
					reflections *= poiThemeColor(poiMods, _MochieReflectionTint, _MochieReflectionTintThemeIndex) * reflStr;
					#ifdef UNITY_PASS_FORWARDADD
					reflections *= pl.attenuation;
					#endif
					diffuse = lerp(diffuse, diffuse * omr, reflStr);
				}
				
				environment = specular + reflections;
				diffuse *= lighting;
				diffuse += environment;
				pfd.finalColor = diffuse;
			}
			
			#endif
			
			#ifdef _COLORCOLOR_ON
			float3 CalculateClearCoatEnvironmentalReflections(PoiMesh poiMesh, PoiCam poiCam, PoiLight poiLight, PoiMods poiMods)
			{
				float3 reflectionColor;
				
				#if defined(PROP_CLEARCOATSMOOTHNESSMAP) || !defined(OPTIMIZER_ENABLED)
				float smoothnessMap = (POI2D_SAMPLER_PAN(_ClearCoatSmoothnessMap, _MainTex, poiMesh.uv[_ClearCoatSmoothnessMapUV], _ClearCoatSmoothnessMapPan));
				#else
				float smoothnessMap = 1;
				#endif
				
				if (_ClearCoatInvertSmoothness == 1)
				{
					smoothnessMap = 1 - smoothnessMap;
				}
				smoothnessMap *= _ClearCoatSmoothness;
				float roughness = (1 - smoothnessMap) * (1 - _ClearCoatSmoothness);
				
				lighty_clear_boy_uwu_var = 0;
				
				float3 reflectedDir = reflect(-poiCam.viewDir, poiMesh.normals[_ClearCoatNormal]);;
				
				float4 envSample = UNITY_SAMPLE_TEXCUBE_LOD(unity_SpecCube0, reflectedDir, roughness * UNITY_SPECCUBE_LOD_STEPS);
				bool no_probe = unity_SpecCube0_HDR.a == 0 && envSample.a == 0;
				
				UNITY_BRANCH
				if (_ClearCoatSampleWorld == 1 && no_probe == 0)
				{
					
					Unity_GlossyEnvironmentData envData;
					envData.roughness = roughness;
					envData.reflUVW = BoxProjection(
					reflectedDir, poiMesh.worldPos.xyz,
					unity_SpecCube0_ProbePosition,
					unity_SpecCube0_BoxMin, unity_SpecCube0_BoxMax
					);
					float3 probe0 = Unity_GlossyEnvironment(
					UNITY_PASS_TEXCUBE(unity_SpecCube0), unity_SpecCube0_HDR, envData
					);
					envData.reflUVW = BoxProjection(
					reflectedDir, poiMesh.worldPos.xyz,
					unity_SpecCube1_ProbePosition,
					unity_SpecCube1_BoxMin, unity_SpecCube1_BoxMax
					);
					
					float interpolator = unity_SpecCube0_BoxMin.w;
					UNITY_BRANCH
					if (interpolator < 0.99999)
					{
						float3 probe1 = Unity_GlossyEnvironment(
						UNITY_PASS_TEXCUBE_SAMPLER(unity_SpecCube1, unity_SpecCube0),
						unity_SpecCube0_HDR, envData
						);
						reflectionColor = lerp(probe1, probe0, interpolator);
					}
					else
					{
						reflectionColor = probe0;
					}
				}
				else
				{
					lighty_clear_boy_uwu_var = 1;
					reflectionColor = texCUBElod(_ClearCoatCubeMap, float4(reflectedDir, roughness * UNITY_SPECCUBE_LOD_STEPS));
				}
				
				if (_ClearCoatForceLighting)
				{
					lighty_clear_boy_uwu_var = 1;
				}
				
				return reflectionColor * poiThemeColor(poiMods, _ClearCoatTint, _ClearCoatTintThemeIndex);
			}
			
			void calculateAndApplyClearCoat(inout PoiFragData poiFragData, in PoiMesh poiMesh, in PoiCam poiCam, in PoiLight poiLight, in PoiMods poiMods)
			{
				#if defined(PROP_CLEARCOATMASK) || !defined(OPTIMIZER_ENABLED)
				float clearCoatMap = POI2D_SAMPLER_PAN(_ClearCoatMask, _MainTex, poiUV(poiMesh.uv[_ClearCoatMaskUV], _ClearCoatMask_ST), _ClearCoatMaskPan);
				#else
				float clearCoatMap = 1;
				#endif
				
				float3 reflectionColor = CalculateClearCoatEnvironmentalReflections(poiMesh, poiCam, poiLight, poiMods);
				float nDotV = dot(poiMesh.normals[_ClearCoatNormal], poiCam.viewDir);
				float NormalDotView = abs(dot(_ClearCoat, nDotV).r);
				poiFragData.finalColor += reflectionColor * lerp(1, poiLight.finalLighting, lighty_clear_boy_uwu_var) * (clearCoatMap * _ClearCoat * clamp(FresnelTerm(_ClearCoat, NormalDotView), 0, 1));
			}
			#endif
			
			#ifdef POI_ENVIRORIM
			void applyEnvironmentRim(inout PoiFragData poiFragData, in PoiMesh poiMesh, in PoiCam poiCam)
			{
				float enviroRimAlpha = saturate(1 - smoothstep(min(_RimEnviroSharpness, _RimEnviroWidth), _RimEnviroWidth, poiCam.vDotN));
				_RimEnviroBlur *= 1.7 - 0.7 * _RimEnviroBlur;
				
				float3 enviroRimColor = 0;
				float interpolator = unity_SpecCube0_BoxMin.w;
				UNITY_BRANCH
				if (interpolator < 0.99999)
				{
					//Probe 1
					float4 reflectionData0 = UNITY_SAMPLE_TEXCUBE_LOD(unity_SpecCube0, poiMesh.normals[1], _RimEnviroBlur * UNITY_SPECCUBE_LOD_STEPS);
					float3 reflectionColor0 = DecodeHDR(reflectionData0, unity_SpecCube0_HDR);
					
					//Probe 2
					float4 reflectionData1 = UNITY_SAMPLE_TEXCUBE_SAMPLER_LOD(unity_SpecCube1, unity_SpecCube0, poiMesh.normals[1], _RimEnviroBlur * UNITY_SPECCUBE_LOD_STEPS);
					float3 reflectionColor1 = DecodeHDR(reflectionData1, unity_SpecCube1_HDR);
					
					enviroRimColor = lerp(reflectionColor1, reflectionColor0, interpolator);
				}
				else
				{
					float4 reflectionData = UNITY_SAMPLE_TEXCUBE_LOD(unity_SpecCube0, poiMesh.normals[1], _RimEnviroBlur * UNITY_SPECCUBE_LOD_STEPS);
					enviroRimColor = DecodeHDR(reflectionData, unity_SpecCube0_HDR);
				}
				
				half enviroMask = 1;
				#if defined(PROP_RIMENVIROMASK) || !defined(OPTIMIZER_ENABLED)
				enviroMask = poiMax(POI2D_SAMPLER_PAN(_RimEnviroMask, _MainTex, poiMesh.uv[_RimEnviroMaskUV], _RimEnviroMaskPan).rgb);
				#endif
				float3 envRimCol = lerp(0, max(0, (enviroRimColor - _RimEnviroMinBrightness) * poiFragData.baseColor), enviroRimAlpha).rgb * enviroMask * _RimEnviroIntensity;
				poiFragData.finalColor += envRimCol;
			}
			#endif
			
			#ifdef POI_STYLIZED_StylizedSpecular
			void stylizedSpecular(inout PoiFragData poiFragData, in PoiCam poiCam, in PoiLight poiLight, in PoiMesh poiMesh, in PoiMods poiMods)
			{
				float specArea = 0.5 * dot(poiLight.halfDir, poiMesh.normals[1]) + 0.5;
				#if defined(PROP_HIGHCOLOR_TEX) || !defined(OPTIMIZER_ENABLED)
				float3 specularMap = POI2D_SAMPLER_PAN(_HighColor_Tex, _MainTex, poiUV(poiMesh.uv[_HighColor_TexUV], _HighColor_Tex_ST), _HighColor_TexPan);
				#else
				float3 specularMap = 1;
				#endif
				
				// Spec 1
				float specMask1 = 0;
				if (_Is_SpecularToHighColor)
				{
					specMask1 = pow(specArea, exp2(lerp(11, 1, _HighColor_Power)));
				}
				else
				{
					specMask1 = aaBlurStep(specArea, (1.0 - pow(_HighColor_Power, 5)), _StylizedSpecularFeather);
				}
				specMask1 *= _Layer1Strength;
				
				// Spec 2
				float specMask2 = 0;
				if (_Is_SpecularToHighColor)
				{
					specMask2 = pow(specArea, exp2(lerp(11, 1, _Layer2Size)));
				}
				else
				{
					specMask2 = aaBlurStep(specArea, (1.0 - pow(_Layer2Size, 5)), _StylizedSpecular2Feather);
				}
				specMask2 *= _Layer2Strength;
				
				#if defined(PROP_SET_HIGHCOLORMASK) || !defined(OPTIMIZER_ENABLED)
				float specularMask = POI2D_SAMPLER_PAN(_Set_HighColorMask, _MainTex, poiUV(poiMesh.uv[_Set_HighColorMaskUV], _Set_HighColorMask_ST), _Set_HighColorMaskPan).g;
				#else
				float specularMask = 1;
				#endif
				
				specularMask = saturate(specularMask + _Tweak_HighColorMaskLevel);
				
				float specMask = saturate(specMask1 + specMask2) * specularMask * poiLight.rampedLightMap;
				float3 specular = specularMap * poiThemeColor(poiMods, _HighColor, _HighColorThemeIndex) * lerp(1, poiLight.directColor, _UseLightColor) * specMask * poiLight.occlusion * poiLight.attenuation * _StylizedSpecularStrength;
				
				if (_Is_BlendAddToHiColor == 1)
				{
					poiFragData.emission += specular;
				}
				else
				{
					poiFragData.baseColor = lerp(poiFragData.baseColor, specularMap * poiThemeColor(poiMods, _HighColor, _HighColorThemeIndex) * lerp(1, poiLight.directColor, _UseLightColor), saturate(specMask * poiLight.occlusion * poiLight.attenuation * _StylizedSpecularStrength));
				}
				
				//poiFragData.baseColor = _StylizedSpecularStrength;
				
			}
			#endif
			
			#ifdef POI_PATHING
			void applyPathing(inout PoiFragData pfd, in PoiMesh poiMesh, in PoiMods poiMods)
			{
				float3 albedo = pfd.baseColor;
				float3 pathEmission;
				
				#if defined(PROP_PATHINGMAP) || !defined(OPTIMIZER_ENABLED)
				float4 path = _PathingMap.Sample(SmpRepeatPoint, poiMesh.uv[_PathingMapUV]);
				#else
				float4 path = float4(0, 0, 0, 0);
				return;
				#endif
				
				#if defined(PROP_PATHINGCOLORMAP) || !defined(OPTIMIZER_ENABLED)
				float4 pathColorMap = POI2D_SAMPLER_PAN(_PathingColorMap, _MainTex, poiMesh.uv[_PathingColorMapUV], _PathingColorMapPan);
				#else
				float4 pathColorMap = float4(1, 1, 1, 1);
				#endif
				
				float3 pathAudioLinkEmission = 0;
				float3 pathTime = 0;
				float3 pathAlpha[3] = {
					float3(0.0, 0.0, 0.0), float3(0.0, 0.0, 0.0), float3(0.0, 0.0, 0.0)
				};
				
				#ifdef COLOR_GRADING_LOG_VIEW
				half pathAudioLinkPathTimeOffsetBand[3] = {
					_AudioLinkPathTimeOffsetBandR, _AudioLinkPathTimeOffsetBandG, _AudioLinkPathTimeOffsetBandB
				};
				half2 pathAudioLinkTimeOffset[3] = {
					_AudioLinkPathTimeOffsetR.xy, _AudioLinkPathTimeOffsetG.xy, _AudioLinkPathTimeOffsetB.xy
				};
				half pathAudioLinkPathWidthOffsetBand[3] = {
					_AudioLinkPathWidthOffsetBandR, _AudioLinkPathWidthOffsetBandG, _AudioLinkPathWidthOffsetBandB
				};
				half2 pathAudioLinkWidthOffset[3] = {
					_AudioLinkPathWidthOffsetR.xy, _AudioLinkPathWidthOffsetG.xy, _AudioLinkPathWidthOffsetB.xy
				};
				
				UNITY_BRANCH
				if (poiMods.audioLinkAvailable)
				{
					// Emission
					pathAudioLinkEmission.r = lerp(_AudioLinkPathEmissionAddR.x, _AudioLinkPathEmissionAddR.y, poiMods.audioLink[_AudioLinkPathEmissionAddBandR]);
					pathAudioLinkEmission.g = lerp(_AudioLinkPathEmissionAddG.x, _AudioLinkPathEmissionAddG.y, poiMods.audioLink[_AudioLinkPathEmissionAddBandG]);
					pathAudioLinkEmission.b = lerp(_AudioLinkPathEmissionAddB.x, _AudioLinkPathEmissionAddB.y, poiMods.audioLink[_AudioLinkPathEmissionAddBandB]);
				}
				#endif
				
				[unroll]
				for (int index = 0; index < 3; index++)
				{
					pathTime[index] = _PathTime[index] != -999.0f ? frac(_PathTime[index] + _PathOffset[index]) : frac(_Time.x * _PathSpeed[index] + _PathOffset[index]);
					
					#ifdef COLOR_GRADING_LOG_VIEW
					UNITY_BRANCH
					if (poiMods.audioLinkAvailable)
					{
						pathTime[index] += lerp(pathAudioLinkTimeOffset[index].x, pathAudioLinkTimeOffset[index].y, poiMods.audioLink[pathAudioLinkPathTimeOffsetBand[index]]);
					}
					#endif
					
					if (_PathSegments[index])
					{
						float pathSegments = abs(_PathSegments[index]);
						pathTime = (ceil(pathTime * pathSegments) - .5) / pathSegments;
					}
					
					if (path[index])
					{
						// Cutting it in half because it goes out in both directions for now
						half pathWidth = _PathWidth[index] * .5;
						#ifdef COLOR_GRADING_LOG_VIEW
						UNITY_BRANCH
						if (poiMods.audioLinkAvailable)
						{
							pathWidth += lerp(pathAudioLinkWidthOffset[index].x, pathAudioLinkWidthOffset[index].y, poiMods.audioLink[pathAudioLinkPathWidthOffsetBand[index]]);
						}
						#endif
						
						//fill
						pathAlpha[index].x = pathTime[index] > path[index];
						//path
						pathAlpha[index].y = saturate((1 - abs(lerp(-pathWidth, 1 + pathWidth, pathTime[index]) - path[index])) - (1 - pathWidth)) * (1 / pathWidth);
						//loop
						pathAlpha[index].z = saturate((1 - distance(pathTime[index], path[index])) - (1 - pathWidth)) * (1 / pathWidth);
						pathAlpha[index].z += saturate(distance(pathTime[index], path[index]) - (1 - pathWidth)) * (1 / pathWidth);
						pathAlpha[index] = smoothstep(0, _PathSoftness[index] + .00001, pathAlpha[index]);
					}
				}
				
				// Emission
				pathEmission = 0;
				pathEmission += pathAlpha[0][_PathTypeR] * poiThemeColor(poiMods, _PathColorR.rgb, _PathColorRThemeIndex) * (_PathEmissionStrength[0] + pathAudioLinkEmission.r);
				pathEmission += pathAlpha[1][_PathTypeG] * poiThemeColor(poiMods, _PathColorG.rgb, _PathColorGThemeIndex) * (_PathEmissionStrength[1] + pathAudioLinkEmission.g);
				pathEmission += pathAlpha[2][_PathTypeB] * poiThemeColor(poiMods, _PathColorB.rgb, _PathColorBThemeIndex) * (_PathEmissionStrength[2] + pathAudioLinkEmission.b);
				pathEmission *= pathColorMap.rgb * pathColorMap.a * path.a;
				
				float3 colorReplace = 0;
				colorReplace = pathAlpha[0][_PathTypeR] * poiThemeColor(poiMods, _PathColorR.rgb, _PathColorRThemeIndex) * pathColorMap.rgb;
				albedo.rgb = lerp(albedo.rgb, colorReplace + albedo.rgb * 0.00001, pathColorMap.a * path.a * _PathColorR.a * pathAlpha[0][_PathTypeR]);
				colorReplace = pathAlpha[1][_PathTypeG] * poiThemeColor(poiMods, _PathColorG.rgb, _PathColorGThemeIndex) * pathColorMap.rgb;
				albedo.rgb = lerp(albedo.rgb, colorReplace + albedo.rgb * 0.00001, pathColorMap.a * path.a * _PathColorG.a * pathAlpha[1][_PathTypeG]);
				colorReplace = pathAlpha[2][_PathTypeB] * poiThemeColor(poiMods, _PathColorB.rgb, _PathColorBThemeIndex) * pathColorMap.rgb;
				albedo.rgb = lerp(albedo.rgb, colorReplace + albedo.rgb * 0.00001, pathColorMap.a * path.a * _PathColorB.a * pathAlpha[2][_PathTypeB]);
				
				pfd.baseColor = albedo.rgb;
				pfd.emission += pathEmission;
			}
			#endif
			
			#ifdef POI_MIRROR
			void applyMirror(inout PoiFragData poiFragData, in PoiMesh poiMesh)
			{
				bool inMirror = IsInMirror();
				if (_Mirror != 0)
				{
					if (_Mirror == 1 && inMirror)	return;
					if (_Mirror == 1 && !inMirror)	discard;
					if (_Mirror == 2 && inMirror)	discard;
					if (_Mirror == 2 && !inMirror)	return;
				}
				
				#if(defined(FORWARD_BASE_PASS) || defined(FORWARD_ADD_PASS))
				#if defined(PROP_MIRRORTEXTURE) || !defined(OPTIMIZER_ENABLED)
				if(inMirror)
				{
					poiFragData.baseColor = POI2D_SAMPLER_PAN(_MirrorTexture, _MainTex, poiMesh.uv[_MirrorTextureUV], _MirrorTexturePan);
				}
				#endif
				#endif
			}
			#endif
			
			#ifdef GRAIN
			inline float CorrectedLinearEyeDepth(float z, float B)
			{
				return 1.0 / (z / UNITY_MATRIX_P._34 + B);
			}
			
			void applyDepthFX(inout PoiFragData poiFragData, in PoiCam poiCam, in PoiMesh poiMesh, in PoiMods poiMods)
			{
				float3 touchEmission = 0;
				
				float perspectiveDivide = 1.0f / poiCam.clipPos.w;
				float4 direction = poiCam.worldDirection * perspectiveDivide;
				float2 screenPos = poiCam.grabPos.xy * perspectiveDivide;
				float z = SAMPLE_DEPTH_TEXTURE(_CameraDepthTexture, screenPos);
				
				#if UNITY_REVERSED_Z
				if (z == 0)
				#else
				if (z == 1)
				#endif
				return;
				
				float depth = CorrectedLinearEyeDepth(z, direction.w);
				float3 worldpos = direction * depth + _WorldSpaceCameraPos.xyz;
				/*
				finalColor.rgb = frac(worldpos);
				return;
				*/
				
				float diff = distance(worldpos, poiMesh.worldPos);
				//poiFragData.finalColor = diff;
				
				#if defined(PROP_DEPTHMASK) || !defined(OPTIMIZER_ENABLED)
				float depthMask = POI2D_SAMPLER_PAN(_DepthMask, _MainTex, poiUV(poiMesh.uv[_DepthMaskUV], _DepthMask_ST), _DepthMaskPan).r;
				#else
				float depthMask = 1;
				#endif
				
				if (_DepthColorToggle)
				{
					float colorBlendAlpha = lerp(_DepthColorMinValue, _DepthColorMaxValue, remapClamped(_DepthColorMinDepth, _DepthColorMaxDepth, diff));
					
					#if defined(PROP_DEPTHTEXTURE) || !defined(OPTIMIZER_ENABLED)
					float3 depthColor = POI2D_SAMPLER_PAN(_DepthTexture, _MainTex, poiUV(poiMesh.uv[_DepthTextureUV], _DepthTexture_ST), _DepthTexturePan).rgb * poiThemeColor(poiMods, _DepthColor, _DepthColorThemeIndex);
					#else
					float3 depthColor = poiThemeColor(poiMods, _DepthColor, _DepthColorThemeIndex);
					#endif
					
					switch(_DepthColorBlendMode)
					{
						case 0:
						{
							poiFragData.finalColor = lerp(poiFragData.finalColor, depthColor, colorBlendAlpha * depthMask);
							break;
						}
						case 1:
						{
							poiFragData.finalColor *= lerp(1, depthColor, colorBlendAlpha * depthMask);
							break;
						}
						case 2:
						{
							poiFragData.finalColor = saturate(poiFragData.finalColor + lerp(0, depthColor, colorBlendAlpha * depthMask));
							break;
						}
					}
					poiFragData.emission += depthColor * colorBlendAlpha * _DepthEmissionStrength * depthMask;
				}
				
				if (_DepthAlphaToggle)
				{
					poiFragData.alpha *= lerp(poiFragData.alpha, saturate(lerp(_DepthAlphaMinValue, _DepthAlphaMaxValue, remapClamped(_DepthAlphaMinDepth, _DepthAlphaMaxDepth, diff))), depthMask);
				}
			}
			#endif
			
			#ifdef POI_IRIDESCENCE
			float3 calculateNormal(PoiMesh poiMesh, float3 baseNormal)
			{
				float3 normal = baseNormal;
				#if defined(PROP_IRIDESCENCENORMALMAP) || !defined(OPTIMIZER_ENABLED)
				normal = UnpackScaleNormal(POI2D_SAMPLER_PAN(_IridescenceNormalMap, _MainTex, poiUV(poiMesh.uv[_IridescenceNormalMapUV], _IridescenceNormalMap_ST), _IridescenceNormalMapPan), _IridescenceNormalIntensity);
				normal = normalize(normal.x * poiMesh.tangent + normal.y * poiMesh.binormal + normal.z * baseNormal);
				#endif
				return normal;
			}
			
			void applyIridescence(inout PoiFragData poiFragData, PoiMesh poiMesh, PoiCam poiCam)
			{
				float3 normal = poiMesh.normals[_IridescenceNormalSelection];
				if (_IridescenceNormalToggle)
				{
					normal = calculateNormal(poiMesh, normal);
					
				}
				float ndotv = dot(normal, poiCam.viewDir);
				
				float4 iridescenceColor = 0;
				#if defined(PROP_IRIDESCENCERAMP) || !defined(OPTIMIZER_ENABLED)
				iridescenceColor = UNITY_SAMPLE_TEX2D_SAMPLER(_IridescenceRamp, _MainTex, (1 - abs(ndotv)) + _IridescenceRampPan * _Time.x + _IridescenceRamp_ST.zw);
				if (_IridescenceHueShiftEnabled == 1){
					float hue = _IridescenceHueShift + frac(_Time.x * _IridescenceHueShiftSpeed);
					iridescenceColor.rgb = hueShift(iridescenceColor.rgb, hue);
				}
				#endif
				
				float iridescenceMask = 1;
				#if defined(PROP_IRIDESCENCEMASK) || !defined(OPTIMIZER_ENABLED)
				iridescenceMask = POI2D_SAMPLER_PAN(_IridescenceMask, _MainTex, poiUV(poiMesh.uv[_IridescenceMaskUV], _IridescenceMask_ST), _IridescenceMaskPan);
				#endif
				
				#ifdef POI_BLACKLIGHT
				if(_BlackLightMaskIridescence != 4)
				{
					iridescenceMask *= blackLightMask[_BlackLightMaskIridescence];
				}
				#endif
				
				poiFragData.baseColor.rgb = lerp(poiFragData.baseColor.rgb, saturate(iridescenceColor.rgb * _IridescenceIntensity), iridescenceColor.a * _IridescenceReplaceBlend * iridescenceMask);
				poiFragData.baseColor.rgb += saturate(iridescenceColor.rgb * _IridescenceIntensity * iridescenceColor.a * _IridescenceAddBlend * iridescenceMask);
				poiFragData.baseColor.rgb *= saturate(lerp(1, iridescenceColor.rgb * _IridescenceIntensity, iridescenceColor.a * _IridescenceMultiplyBlend * iridescenceMask));
				poiFragData.emission += saturate(iridescenceColor.rgb * _IridescenceIntensity) * iridescenceColor.a * iridescenceMask * _IridescenceEmissionStrength;
			}
			#endif
			
			#ifdef EFFECT_BUMP
			
			float2 TransformUV(float2 offset, float rotation, float2 scale, float2 uv)
			{
				float theta = radians(rotation);
				scale = 1 - scale;
				float cs = cos(theta);
				float sn = sin(theta);
				float2 centerPoint = offset + .5;
				uv = float2((uv.x - centerPoint.x) * cs - (uv.y - centerPoint.y) * sn + centerPoint.x, (uv.x - centerPoint.x) * sn + (uv.y - centerPoint.y) * cs + centerPoint.y);
				
				return remap(uv, float2(0, 0) + offset + (scale * .5), float2(1, 1) + offset - (scale * .5), float2(0, 0), float2(1, 1));
			}
			
			float2 getAsciiCoordinate(float index)
			{
				return float2((index - 1) / 16, 1 - ((floor(index / 16 - glyphWidth)) / 16));
			}
			
			float median(float r, float g, float b)
			{
				return max(min(r, g), min(max(r, g), b));
			}
			
			void ApplyPositionText(inout PoiFragData poiFragData, float2 uv, in PoiMods poiMods)
			{
				float3 cameraPos = clamp(getCameraPosition(), -999, 999);
				float3 absCameraPos = abs(cameraPos);
				float totalCharacters = 20;
				float positionArray[20];
				positionArray[0] = cameraPos.x >= 0 ? ASCII_NEGATIVE : ASCII_POSITIVE;
				positionArray[1] = floor((absCameraPos.x * .01) % 10) + 48;
				positionArray[2] = floor((absCameraPos.x * .1) % 10) + 48;
				positionArray[3] = floor(absCameraPos.x % 10) + 48;
				positionArray[4] = ASCII_PERIOD;
				positionArray[5] = floor((absCameraPos.x * 10) % 10) + 48;
				positionArray[6] = ASCII_COMMA;
				positionArray[7] = cameraPos.y >= 0 ? ASCII_NEGATIVE : ASCII_POSITIVE;
				positionArray[8] = floor((absCameraPos.y * .01) % 10) + 48;
				positionArray[9] = floor((absCameraPos.y * .1) % 10) + 48;
				positionArray[10] = floor(absCameraPos.y % 10) + 48;
				positionArray[11] = ASCII_PERIOD;
				positionArray[12] = floor((absCameraPos.y * 10) % 10) + 48;
				positionArray[13] = ASCII_COMMA;
				positionArray[14] = cameraPos.z >= 0 ? ASCII_NEGATIVE : ASCII_POSITIVE;
				positionArray[15] = floor((absCameraPos.z * .01) % 10) + 48;
				positionArray[16] = floor((absCameraPos.z * .1) % 10) + 48;
				positionArray[17] = floor(absCameraPos.z % 10) + 48;
				positionArray[18] = ASCII_PERIOD;
				positionArray[19] = floor((absCameraPos.z * 10) % 10) + 48;
				
				uv = TransformUV(_TextPositionOffset, _TextPositionRotation, _TextPositionScale, uv);
				
				if (uv.x > 1 || uv.x < 0 || uv.y > 1 || uv.y < 0)
				{
					return;
				}
				
				float currentCharacter = floor(uv.x * totalCharacters);
				float2 glyphPos = getAsciiCoordinate(positionArray[currentCharacter]);
				
				float2 startUV = float2(1 / totalCharacters * currentCharacter, 0);
				float2 endUV = float2(1 / totalCharacters * (currentCharacter + 1), 1);
				
				fixed4 textPositionPadding = _TextPositionPadding;
				textPositionPadding *= 1 / totalCharacters;
				
				uv = remapClamped(startUV, endUV, uv, float2(glyphPos.x + textPositionPadding.x, glyphPos.y - glyphWidth + textPositionPadding.y), float2(glyphPos.x + glyphWidth - textPositionPadding.z, glyphPos.y - textPositionPadding.w));
				
				if (uv.x > glyphPos.x + glyphWidth - textPositionPadding.z - .001 || uv.x < glyphPos.x + textPositionPadding.x + .001 || uv.y > glyphPos.y - textPositionPadding.w - .001 || uv.y < glyphPos.y - glyphWidth + textPositionPadding.y + .001)
				{
					return;
				}
				
				float3 samp = tex2D(_TextGlyphs, TRANSFORM_TEX(uv, _TextGlyphs)).rgb;
				float2 msdfUnit = _TextPixelRange / _TextGlyphs_TexelSize.zw;
				float sigDist = median(samp.r, samp.g, samp.b) - 0.5;
				sigDist *= max(dot(msdfUnit, 0.5 / fwidth(uv)), 1);
				float opacity = clamp(sigDist + 0.5, 0, 1);
				poiFragData.baseColor = lerp(poiFragData.baseColor, poiThemeColor(poiMods, _TextPositionColor.rgb, _TextPositionColorThemeIndex), opacity * _TextPositionColor.a);
				globalTextEmission += poiThemeColor(poiMods, _TextPositionColor.rgb, _TextPositionColorThemeIndex) * opacity * _TextPositionEmissionStrength;
			}
			
			void ApplyTimeText(inout PoiFragData poiFragData, float2 uv, in PoiMods poiMods)
			{
				float instanceTime = _Time.y;
				float hours = instanceTime / 3600;
				float minutes = (instanceTime / 60) % 60;
				float seconds = instanceTime % 60;
				float totalCharacters = 8;
				float timeArray[8];
				timeArray[0] = floor((hours * .1) % 10) + 48;
				timeArray[1] = floor(hours % 10) + 48;
				timeArray[2] = ASCII_SEMICOLON;
				timeArray[3] = floor((minutes * .1) % 10) + 48;
				timeArray[4] = floor(minutes % 10) + 48;
				timeArray[5] = ASCII_SEMICOLON;
				timeArray[6] = floor((seconds * .1) % 10) + 48;
				timeArray[7] = floor(seconds % 10) + 48;
				
				uv = TransformUV(_TextTimeOffset, _TextTimeRotation, _TextTimeScale, uv);
				
				if (uv.x > 1 || uv.x < 0 || uv.y > 1 || uv.y < 0)
				{
					return;
				}
				
				float currentCharacter = floor(uv.x * totalCharacters);
				float2 glyphPos = getAsciiCoordinate(timeArray[currentCharacter]);
				// 0.1428571 = 1/7 = 1 / totalCharacters
				float startUV = 1 / totalCharacters * currentCharacter;
				float endUV = 1 / totalCharacters * (currentCharacter + 1);
				
				fixed4 textTimePadding = _TextTimePadding;
				textTimePadding *= 1 / totalCharacters;
				
				uv = remapClamped(float2(startUV, 0), float2(endUV, 1), uv, float2(glyphPos.x + textTimePadding.x, glyphPos.y - glyphWidth + textTimePadding.y), float2(glyphPos.x + glyphWidth - textTimePadding.z, glyphPos.y - textTimePadding.w));
				
				if (uv.x > glyphPos.x + glyphWidth - textTimePadding.z - .001 || uv.x < glyphPos.x + textTimePadding.x + .001 || uv.y > glyphPos.y - textTimePadding.w - .001 || uv.y < glyphPos.y - glyphWidth + textTimePadding.y + .001)
				{
					return;
				}
				
				float3 samp = tex2D(_TextGlyphs, TRANSFORM_TEX(uv, _TextGlyphs)).rgb;
				float2 msdfUnit = _TextPixelRange / _TextGlyphs_TexelSize.zw;
				float sigDist = median(samp.r, samp.g, samp.b) - 0.5;
				sigDist *= max(dot(msdfUnit, 0.5 / fwidth(uv)), 1);
				float opacity = clamp(sigDist + 0.5, 0, 1);
				poiFragData.baseColor = lerp(poiFragData.baseColor, poiThemeColor(poiMods, _TextTimeColor.rgb, _TextTimeColorThemeIndex), opacity * _TextTimeColor.a);
				globalTextEmission += poiThemeColor(poiMods, _TextTimeColor.rgb, _TextTimeColorThemeIndex) * opacity * _TextTimeEmissionStrength;
			}
			
			void ApplyFPSText(inout PoiFragData poiFragData, float2 uv, in PoiMods poiMods)
			{
				float smoothDeltaTime = clamp(unity_DeltaTime.w, 0, 999);
				float totalCharacters = 7;
				float fpsArray[7];
				fpsArray[0] = ASCII_F;
				fpsArray[1] = ASCII_P;
				fpsArray[2] = ASCII_S;
				fpsArray[3] = ASCII_SEMICOLON;
				fpsArray[4] = floor((smoothDeltaTime * .01) % 10) + 48;
				fpsArray[5] = floor((smoothDeltaTime * .1) % 10) + 48;
				fpsArray[6] = floor(smoothDeltaTime % 10) + 48;
				
				uv = TransformUV(_TextFPSOffset, _TextFPSRotation, _TextFPSScale, uv);
				
				if (uv.x > 1 || uv.x < 0 || uv.y > 1 || uv.y < 0)
				{
					return;
				}
				
				float currentCharacter = floor(uv.x * totalCharacters);
				float2 glyphPos = getAsciiCoordinate(fpsArray[currentCharacter]);
				// 0.1428571 = 1/7 = 1 / totalCharacters
				float startUV = 1 / totalCharacters * currentCharacter;
				float endUV = 1 / totalCharacters * (currentCharacter + 1);
				
				float4 textFPSPadding = _TextFPSPadding;
				textFPSPadding *= 1 / totalCharacters;
				
				uv = remapClamped(float2(startUV, 0), float2(endUV, 1), uv, float2(glyphPos.x + textFPSPadding.x, glyphPos.y - glyphWidth + textFPSPadding.y), float2(glyphPos.x + glyphWidth - textFPSPadding.z, glyphPos.y - textFPSPadding.w));
				
				if (uv.x > glyphPos.x + glyphWidth - textFPSPadding.z - .001 || uv.x < glyphPos.x + textFPSPadding.x + .001 || uv.y > glyphPos.y - textFPSPadding.w - .001 || uv.y < glyphPos.y - glyphWidth + textFPSPadding.y + .001)
				{
					return;
				}
				
				float3 samp = tex2D(_TextGlyphs, TRANSFORM_TEX(uv, _TextGlyphs)).rgb;
				float2 msdfUnit = _TextPixelRange / _TextGlyphs_TexelSize.zw;
				float sigDist = median(samp.r, samp.g, samp.b) - 0.5;
				sigDist *= max(dot(msdfUnit, 0.5 / fwidth(uv)), 1);
				float opacity = clamp(sigDist + 0.5, 0, 1);
				poiFragData.baseColor = lerp(poiFragData.baseColor, poiThemeColor(poiMods, _TextFPSColor.rgb, _TextFPSColorThemeIndex), opacity * _TextFPSColor.a);
				globalTextEmission += poiThemeColor(poiMods, _TextFPSColor.rgb, _TextFPSColorThemeIndex) * opacity * _TextFPSEmissionStrength;
			}
			
			void ApplyTextOverlayColor(inout PoiFragData poiFragData, PoiMesh poiMesh, in PoiMods poiMods)
			{
				globalTextEmission = 0;
				float positionalOpacity = 0;
				
				if (_TextFPSEnabled == 1)
				ApplyFPSText(poiFragData, poiMesh.uv[_TextFPSUV], poiMods);
				if (_TextPositionEnabled == 1)
				ApplyPositionText(poiFragData, poiMesh.uv[_TextPositionUV], poiMods);
				if (_TextTimeEnabled == 1)
				ApplyTimeText(poiFragData, poiMesh.uv[_TextTimeUV], poiMods);
				
				poiFragData.emission += globalTextEmission;
			}
			#endif
			
			#ifdef MOCHIE_POSTPROCESS
			float oetf_sRGB_scalar(float L) {
				float V = 1.055 * (pow(L, 1.0 / 2.4)) - 0.055;
				if (L <= 0.0031308)
				V = L * 12.92;
				return V;
			}
			
			float3 oetf_sRGB(float3 L) {
				return float3(oetf_sRGB_scalar(L.r), oetf_sRGB_scalar(L.g), oetf_sRGB_scalar(L.b));
			}
			
			float eotf_sRGB_scalar(float V) {
				float L = pow((V + 0.055) / 1.055, 2.4);
				if (V <= oetf_sRGB_scalar(0.0031308))
				L = V / 12.92;
				return L;
			}
			
			float3 GetHDR(float3 rgb) {
				return float3(eotf_sRGB_scalar(rgb.r), eotf_sRGB_scalar(rgb.g), eotf_sRGB_scalar(rgb.b));
			}
			
			float3 GetContrast(float3 col, float contrast){
				return lerp(float3(0.5,0.5,0.5), col, contrast);
			}
			
			float3 GetSaturation(float3 col, float interpolator){
				return lerp(dot(col, float3(0.3,0.59,0.11)), col, interpolator);
			}
			
			void applyPostProcessing(inout PoiFragData poiFragData, in PoiMesh poiMesh)
			{
				float3 col = poiFragData.finalColor;
				col = hueShift(col, _PPHue);
				col *= _PPTint;
				col *= _PPRGB;
				col = GetSaturation(col, _PPSaturation);
				col = lerp(col, GetHDR(col), _PPHDR);
				col = GetContrast(col, _PPContrast);
				col *= _PPBrightness;
				col += _PPLightness;
				
				#if defined(PROP_PPLUT) || !defined(OPTIMIZER_ENABLED)
				float3 satCol = saturate(col);
				float maxColor = COLORS - 1.0;
				float halfColX = 0.5 / _PPLUT_TexelSize.z;
				float halfColY = 0.5 / _PPLUT_TexelSize.w;
				float threshold = maxColor / COLORS;
				float xOffset = halfColX + satCol.r * threshold / COLORS;
				float yOffset = halfColY + satCol.g * threshold;
				float cell = floor(satCol.b * maxColor);
				float2 lutUV = float2(cell / COLORS + xOffset, yOffset);
				float3 lutSample = _PPLUT.Sample(sampler_PPLUT, lutUV);
				col = lerp(col, lutSample, _PPLUTStrength);
				#endif
				
				#if defined(PROP_PPMASK) || !defined(OPTIMIZER_ENABLED)
				float ppMask = POI2D_SAMPLER_PAN(_PPMask, _MainTex, poiUV(poiMesh.uv[_PPMaskUV], _PPMask_ST), _PPMaskPan).r;
				ppMask = lerp(ppMask, 1-ppMask, _PPMaskInvert);
				col = lerp(poiFragData.finalColor, col, ppMask);
				#endif
				
				poiFragData.finalColor = col;
			}
			#endif
			
			float4 frag(v2f i, uint facing : SV_IsFrontFace) : SV_Target
			{
				UNITY_SETUP_INSTANCE_ID(i);
				PoiMesh poiMesh;
				PoiInitStruct(PoiMesh, poiMesh);
				
				PoiLight poiLight;
				PoiInitStruct(PoiLight, poiLight);
				
				PoiVertexLights poiVertexLights;
				PoiInitStruct(PoiVertexLights, poiVertexLights);
				
				PoiCam poiCam;
				PoiInitStruct(PoiCam, poiCam);
				
				PoiMods poiMods;
				PoiInitStruct(PoiMods, poiMods);
				
				PoiFragData poiFragData;
				poiFragData.emission = 0;
				poiFragData.baseColor = float3(0, 0, 0);
				poiFragData.finalColor = float3(0, 0, 0);
				poiFragData.alpha = 1;
				
				// Mesh Data
				poiMesh.objectPosition = i.objectPos;
				poiMesh.objNormal = i.objNormal;
				poiMesh.normals[0] = i.normal;
				poiMesh.tangent = i.tangent;
				poiMesh.binormal = i.binormal;
				poiMesh.worldPos = i.worldPos.xyz;
				poiMesh.localPos = i.localPos.xyz;
				poiMesh.vertexColor = i.vertexColor;
				poiMesh.isFrontFace = facing;
				
				#ifndef POI_PASS_OUTLINE
				if (!poiMesh.isFrontFace)
				{
					poiMesh.normals[0] *= -1;
					poiMesh.tangent *= -1;
					poiMesh.binormal *= -1;
				}
				#endif
				
				poiCam.viewDir = !IsOrthographicCamera() ? normalize(_WorldSpaceCameraPos - i.worldPos.xyz) : normalize(UNITY_MATRIX_I_V._m02_m12_m22);
				float3 tanToWorld0 = float3(i.tangent.x, i.binormal.x, i.normal.x);
				float3 tanToWorld1 = float3(i.tangent.y, i.binormal.y, i.normal.y);
				float3 tanToWorld2 = float3(i.tangent.z, i.binormal.z, i.normal.z);
				float3 ase_tanViewDir = tanToWorld0 * poiCam.viewDir.x + tanToWorld1 * poiCam.viewDir.y + tanToWorld2 * poiCam.viewDir.z;
				poiCam.tangentViewDir = normalize(ase_tanViewDir);
				
				// 0-3 UV0-UV3
				// 4 Panosphere UV
				// 5 world pos xz
				// 6 Polar UV
				// 6 Distorted UV
				#if defined(LIGHTMAP_ON) || defined(DYNAMICLIGHTMAP_ON)
				poiMesh.lightmapUV = i.lightmapUV;
				#endif
				poiMesh.parallaxUV = poiCam.tangentViewDir.xy / max(poiCam.tangentViewDir.z, 0.0001);
				poiMesh.uv[0] = i.uv[0];
				poiMesh.uv[1] = i.uv[1];
				poiMesh.uv[2] = i.uv[2];
				poiMesh.uv[3] = i.uv[3];
				poiMesh.uv[4] = poiMesh.uv[0];
				poiMesh.uv[5] = poiMesh.worldPos.xz;
				poiMesh.uv[6] = poiMesh.uv[0];
				poiMesh.uv[7] = poiMesh.uv[0];
				
				poiMesh.uv[4] = calculatePanosphereUV(poiMesh);
				poiMesh.uv[6] = calculatePolarCoordinate(poiMesh);
				#ifdef USER_LUT
				poiMesh.uv[7] = distortedUV(poiMesh);
				#endif
				/*
				half3 worldViewUp = normalize(half3(0, 1, 0) - poiCam.viewDir * dot(poiCam.viewDir, half3(0, 1, 0)));
				half3 worldViewRight = normalize(cross(poiCam.viewDir, worldViewUp));
				poiMesh[8] = half2(dot(worldViewRight, poiMesh.normals[_MatcapNormal]), dot(worldViewUp, poiMesh.normals[_MatcapNormal])) * _MatcapBorder + 0.5;
				*/
				
				#ifdef POI_PARALLAX
				#ifndef POI_PASS_OUTLINE
				//return frac(i.tangentViewDir.x);
				//return float4(i.binormal.xyz,1);
				applyParallax(poiMesh, poiLight, poiCam);
				#endif
				#endif
				
				float4 mainTexture = UNITY_SAMPLE_TEX2D(_MainTex, poiUV(poiMesh.uv[_MainTexUV].xy, _MainTex_ST) + _Time.x * _MainTexPan);
				
				float3 mainNormal = UnpackScaleNormal(POI2D_SAMPLER_PAN(_BumpMap, _MainTex, poiUV(poiMesh.uv[_BumpMapUV], _BumpMap_ST), _BumpMapPan), _BumpScale);
				poiMesh.tangentSpaceNormal = mainNormal;
				
				#if defined(FINALPASS) && !defined(UNITY_PASS_SHADOWCASTER) && !defined(POI_PASS_OUTLINE)
				ApplyDetailNormal(poiMods, poiMesh);
				#endif
				
				#if defined(GEOM_TYPE_MESH) && defined(VIGNETTE) && !defined(UNITY_PASS_SHADOWCASTER) && !defined(POI_PASS_OUTLINE)
				calculateRGBNormals(poiMesh);
				#endif
				
				poiMesh.normals[1] = normalize(
				poiMesh.tangentSpaceNormal.x * poiMesh.tangent.xyz +
				poiMesh.tangentSpaceNormal.y * poiMesh.binormal +
				poiMesh.tangentSpaceNormal.z * poiMesh.normals[0]
				);
				
				// I'm just testing this because it makes it the same as if there is no normal map in the slot
				float3 fancyNormal = UnpackNormal(float4(0.5, 0.5, 1, 1));
				poiMesh.normals[0] = normalize(
				fancyNormal.x * poiMesh.tangent.xyz +
				fancyNormal.y * poiMesh.binormal +
				fancyNormal.z * poiMesh.normals[0]
				);
				
				// Camera data
				poiCam.forwardDir = getCameraForward();
				poiCam.worldPos = _WorldSpaceCameraPos;
				poiCam.reflectionDir = reflect(-poiCam.viewDir, poiMesh.normals[1]);
				//poiCam.distanceToModel = distance(poiMesh.modelPos, poiCam.worldPos);
				poiCam.distanceToVert = distance(poiMesh.worldPos, poiCam.worldPos);
				poiCam.grabPos = i.grabPos;
				poiCam.screenUV = calcScreenUVs(i.grabPos);
				poiCam.vDotN = abs(dot(poiCam.viewDir, poiMesh.normals[1]));
				poiCam.clipPos = i.pos;
				poiCam.worldDirection = i.worldDirection;
				
				calculateGlobalThemes(poiMods);
				
				#ifdef COLOR_GRADING_LOG_VIEW
				SetupAudioLink(poiFragData, poiMods, poiMesh);
				#endif
				
				poiLight.finalLightAdd = 0;
				#if defined(PROP_LIGHTINGAOMAPS) || !defined(OPTIMIZER_ENABLED)
				float4 AOMaps = POI2D_SAMPLER_PAN(_LightingAOMaps, _MainTex, poiUV(poiMesh.uv[_LightingAOMapsUV], _LightingAOMaps_ST), _LightingAOMapsPan);
				poiLight.occlusion = lerp(1, AOMaps.r, _LightDataAOStrengthR) * lerp(1, AOMaps.g, _LightDataAOStrengthG) * lerp(1, AOMaps.b, _LightDataAOStrengthB) * lerp(1, AOMaps.a, _LightDataAOStrengthA);
				#else
				poiLight.occlusion = 1;
				#endif
				#if defined(PROP_LIGHTINGDETAILSHADOWMAPS) || !defined(OPTIMIZER_ENABLED)
				float4 DetailShadows = POI2D_SAMPLER_PAN(_LightingDetailShadowMaps, _MainTex, poiUV(poiMesh.uv[_LightingDetailShadowMapsUV], _LightingDetailShadowMaps_ST), _LightingDetailShadowMapsPan);
				poiLight.detailShadow = lerp(1, DetailShadows.r, _LightingDetailShadowStrengthR) * lerp(1, DetailShadows.g, _LightingDetailShadowStrengthG) * lerp(1, DetailShadows.b, _LightingDetailShadowStrengthB) * lerp(1, DetailShadows.a, _LightingDetailShadowStrengthA);
				#else
				poiLight.detailShadow = 1;
				#endif
				#if defined(PROP_LIGHTINGSHADOWMASKS) || !defined(OPTIMIZER_ENABLED)
				float4 ShadowMasks = POI2D_SAMPLER_PAN(_LightingShadowMasks, _MainTex, poiUV(poiMesh.uv[_LightingShadowMasksUV], _LightingShadowMasks_ST), _LightingShadowMasksPan);
				poiLight.shadowMask = lerp(1, ShadowMasks.r, _LightingShadowMaskStrengthR) * lerp(1, ShadowMasks.g, _LightingShadowMaskStrengthG) * lerp(1, ShadowMasks.b, _LightingShadowMaskStrengthB) * lerp(1, ShadowMasks.a, _LightingShadowMaskStrengthA);
				#else
				poiLight.shadowMask = 1;
				#endif
				
				#ifdef UNITY_PASS_FORWARDBASE
				
				bool lightExists = false;
				if (any(_LightColor0.rgb >= 0.002))
				{
					lightExists = true;
				}
				
				#if defined(VERTEXLIGHT_ON) && defined(POI_VERTEXLIGHT_ON)
				float4 toLightX = unity_4LightPosX0 - i.worldPos.x;
				float4 toLightY = unity_4LightPosY0 - i.worldPos.y;
				float4 toLightZ = unity_4LightPosZ0 - i.worldPos.z;
				float4 lengthSq = 0;
				lengthSq += toLightX * toLightX;
				lengthSq += toLightY * toLightY;
				lengthSq += toLightZ * toLightZ;
				
				float4 lightAttenSq = unity_4LightAtten0;
				float4 atten = 1.0 / (1.0 + lengthSq * lightAttenSq);
				float4 vLightWeight = saturate(1 - (lengthSq * lightAttenSq / 25));
				poiLight.vAttenuation = min(atten, vLightWeight * vLightWeight);
				
				poiLight.vDotNL = 0;
				poiLight.vDotNL += toLightX * poiMesh.normals[1].x;
				poiLight.vDotNL += toLightY * poiMesh.normals[1].y;
				poiLight.vDotNL += toLightZ * poiMesh.normals[1].z;
				
				float4 corr = rsqrt(lengthSq);
				poiLight.vDotNL = max(0, poiLight.vDotNL * corr);
				poiLight.vAttenuationDotNL = poiLight.vAttenuation * poiLight.vDotNL;
				
				for (int index = 0; index < 4; index++)
				{
					poiLight.vPosition[index] = float3(unity_4LightPosX0[index], unity_4LightPosY0[index], unity_4LightPosZ0[index]);
					
					float3 vertexToLightSource = poiLight.vPosition[index] - poiMesh.worldPos;
					poiLight.vDirection[index] = normalize(vertexToLightSource);
					//poiLight.vAttenuationDotNL[index] = 1.0 / (1.0 + unity_4LightAtten0[index] * poiLight.vDotNL[index]);
					poiLight.vColor[index] = unity_LightColor[index].rgb;
					//UNITY_BRANCH
					if (_LightingAdditiveLimitIntensity == 1)
					{
						float intensity = max(0.001, (0.299 * poiLight.vColor[index].r + 0.587 * poiLight.vColor[index].g + 0.114 * poiLight.vColor[index].b));
						poiLight.vColor[index] = min(poiLight.vColor[index], poiLight.vColor[index] / (intensity / _LightingAdditiveMaxIntensity));
					}
					poiLight.vHalfDir[index] = Unity_SafeNormalize(poiLight.vDirection[index] + poiCam.viewDir);
					poiLight.vDotNL[index] = dot(poiMesh.normals[1], -poiLight.vDirection[index]);
					poiLight.vCorrectedDotNL[index] = .5 * (poiLight.vDotNL[index] + 1);
					poiLight.vDotLH[index] = saturate(dot(poiLight.vDirection[index], poiLight.vHalfDir[index]));
					
					poiLight.vDotNH[index] = saturate(dot(poiMesh.normals[1], poiLight.vHalfDir[index]));
				}
				#endif
				
				//UNITY_BRANCH
				if (_LightingColorMode == 0) // Poi Custom Light Color
				
				{
					float3 magic = max(BetterSH9(normalize(unity_SHAr + unity_SHAg + unity_SHAb)), 0);
					float3 normalLight = _LightColor0.rgb + BetterSH9(float4(0, 0, 0, 1));
					
					float magiLumi = calculateluminance(magic);
					float normaLumi = calculateluminance(normalLight);
					float maginormalumi = magiLumi + normaLumi;
					
					float magiratio = magiLumi / maginormalumi;
					float normaRatio = normaLumi / maginormalumi;
					
					float target = calculateluminance(magic * magiratio + normalLight * normaRatio);
					float3 properLightColor = magic + normalLight;
					float properLuminance = calculateluminance(magic + normalLight);
					poiLight.directColor = properLightColor * max(0.0001, (target / properLuminance));
					
					poiLight.indirectColor = BetterSH9(float4(lerp(0, poiMesh.normals[1], _LightingIndirectUsesNormals), 1));
				}
				
				//UNITY_BRANCH
				if (_LightingColorMode == 1) // More standard approach to light color
				
				{
					float3 indirectColor = BetterSH9(float4(poiMesh.normals[1], 1));
					if (lightExists)
					{
						poiLight.directColor = _LightColor0.rgb;
						poiLight.indirectColor = indirectColor;
					}
					else
					{
						poiLight.directColor = indirectColor * 0.6;
						poiLight.indirectColor = indirectColor * 0.5;
					}
				}
				
				if (_LightingColorMode == 2) // UTS style
				
				{
					poiLight.indirectColor = saturate(max(half3(0.05, 0.05, 0.05) * _Unlit_Intensity, max(ShadeSH9(half4(0.0, 0.0, 0.0, 1.0)), ShadeSH9(half4(0.0, -1.0, 0.0, 1.0)).rgb) * _Unlit_Intensity));
					poiLight.directColor = max(poiLight.indirectColor, _LightColor0.rgb);
				}
				
				float lightMapMode = _LightingMapMode;
				//UNITY_BRANCH
				if (_LightingDirectionMode == 0)
				{
					poiLight.direction = _WorldSpaceLightPos0.xyz + unity_SHAr.xyz + unity_SHAg.xyz + unity_SHAb.xyz;
				}
				if (_LightingDirectionMode == 1 || _LightingDirectionMode == 2)
				{
					//UNITY_BRANCH
					if (_LightingDirectionMode == 1)
					{
						poiLight.direction = mul(unity_ObjectToWorld, _LightngForcedDirection).xyz;;
					}
					//UNITY_BRANCH
					if (_LightingDirectionMode == 2)
					{
						poiLight.direction = _LightngForcedDirection;
					}
					if (lightMapMode == 0)
					{
						lightMapMode == 1;
					}
				}
				
				if (_LightingDirectionMode == 3) // UTS
				
				{
					float3 defaultLightDirection = normalize(UNITY_MATRIX_V[2].xyz + UNITY_MATRIX_V[1].xyz);
					float3 lightDirection = normalize(lerp(defaultLightDirection, _WorldSpaceLightPos0.xyz, any(_WorldSpaceLightPos0.xyz)));
					poiLight.direction = lightDirection;
				}
				
				poiLight.direction = normalize(poiLight.direction);
				poiLight.attenuationStrength = _LightingCastedShadows;
				poiLight.attenuation = 1;
				if (!all(_LightColor0.rgb == 0.0))
				{
					UNITY_LIGHT_ATTENUATION(attenuation, i, poiMesh.worldPos)
					poiLight.attenuation *= attenuation;
				}
				
				poiLight.halfDir = normalize(poiLight.direction + poiCam.viewDir);
				poiLight.nDotL = dot(poiMesh.normals[1], poiLight.direction);
				poiLight.nDotLSaturated = saturate(poiLight.nDotL);
				poiLight.nDotLNormalized = (poiLight.nDotL + 1) * 0.5;
				poiLight.nDotV = abs(dot(poiMesh.normals[1], poiCam.viewDir));
				poiLight.nDotH = max(0.00001, dot(poiMesh.normals[1], poiLight.halfDir));
				poiLight.lDotv = dot(poiLight.direction, poiCam.viewDir);
				poiLight.lDotH = max(0.00001, dot(poiLight.direction, poiLight.halfDir));
				
				//UNITY_BRANCH
				if (lightMapMode == 0) // Poi special light map
				
				{
					float3 ShadeSH9Plus = GetSHLength();
					float3 ShadeSH9Minus = float3(unity_SHAr.w, unity_SHAg.w, unity_SHAb.w) + float3(unity_SHBr.z, unity_SHBg.z, unity_SHBb.z) / 3.0;
					
					float3 greyScaleVector = float3(.33333, .33333, .33333);
					float bw_lightColor = dot(poiLight.directColor, greyScaleVector);
					float bw_directLighting = (((poiLight.nDotL * 0.5 + 0.5) * bw_lightColor * lerp(1, poiLight.attenuation, poiLight.attenuationStrength)) + dot(ShadeSH9(float4(poiMesh.normals[1], 1)), greyScaleVector));
					float bw_bottomIndirectLighting = dot(ShadeSH9Minus, greyScaleVector);
					float bw_topIndirectLighting = dot(ShadeSH9Plus, greyScaleVector);
					float lightDifference = ((bw_topIndirectLighting + bw_lightColor) - bw_bottomIndirectLighting);
					poiLight.lightMap = smoothstep(0, lightDifference, bw_directLighting - bw_bottomIndirectLighting) * poiLight.detailShadow;
				}
				//UNITY_BRANCH
				if (lightMapMode == 1) // Normalized nDotL
				
				{
					poiLight.lightMap = poiLight.nDotLNormalized;
				}
				//UNITY_BRANCH
				if (lightMapMode == 2) // Saturated nDotL
				
				{
					poiLight.lightMap = poiLight.nDotLSaturated;
				}
				
				poiLight.directColor = max(poiLight.directColor, poiLight.directColor / max(0.0001, (calculateluminance(poiLight.directColor) / _LightingMinLightBrightness)));
				poiLight.indirectColor = max(poiLight.indirectColor, poiLight.indirectColor / max(0.0001, (calculateluminance(poiLight.indirectColor) / _LightingMinLightBrightness)));
				
				poiLight.directColor = lerp(poiLight.directColor, dot(poiLight.directColor, float3(0.299, 0.587, 0.114)), _LightingMonochromatic);
				poiLight.indirectColor = lerp(poiLight.indirectColor, dot(poiLight.indirectColor, float3(0.299, 0.587, 0.114)), _LightingMonochromatic);
				//UNITY_BRANCH
				if (_LightingCapEnabled)
				{
					poiLight.directColor = min(poiLight.directColor, _LightingCap);
					poiLight.indirectColor = min(poiLight.indirectColor, _LightingCap);
				}
				
				//UNITY_BRANCH
				if (_LightingForceColorEnabled)
				{
					poiLight.directColor = poiThemeColor(poiMods, _LightingForcedColor, _LightingForcedColorThemeIndex);
				}
				
				#ifdef UNITY_PASS_FORWARDBASE
				poiLight.directColor = max(poiLight.directColor * _PPLightingMultiplier, 0);
				poiLight.directColor = max(poiLight.directColor + _PPLightingAddition, 0);
				poiLight.indirectColor = max(poiLight.indirectColor * _PPLightingMultiplier, 0);
				poiLight.indirectColor = max(poiLight.indirectColor + _PPLightingAddition, 0);
				#endif
				
				#endif
				
				#ifdef UNITY_PASS_FORWARDADD
				#ifndef POI_LIGHT_DATA_ADDITIVE_ENABLE
				return float4(mainTexture.rgb * .0001, 1);
				#endif
				
				#if defined(POI_LIGHT_DATA_ADDITIVE_DIRECTIONAL_ENABLE) && defined(DIRECTIONAL)
				return float4(mainTexture.rgb * .0001, 1);
				#endif
				
				#if defined(POINT) || defined(SPOT)
				poiLight.direction = normalize(_WorldSpaceLightPos0.xyz - i.worldPos.xyz);
				
				#ifdef POINT
				poiLight.additiveShadow = UNITY_SHADOW_ATTENUATION(input, poiMesh.worldPos);
				unityShadowCoord3 lightCoord = mul(unity_WorldToLight, unityShadowCoord4(poiMesh.worldPos, 1)).xyz;
				poiLight.attenuation = tex2D(_LightTexture0, dot(lightCoord, lightCoord).rr).r;
				#endif
				
				#ifdef SPOT
				poiLight.additiveShadow = UNITY_SHADOW_ATTENUATION(i, poiMesh.worldPos);
				unityShadowCoord4 lightCoord = mul(unity_WorldToLight, unityShadowCoord4(poiMesh.worldPos, 1));
				poiLight.attenuation = (lightCoord.z > 0) * UnitySpotCookie(lightCoord) * UnitySpotAttenuate(lightCoord.xyz);
				#endif
				#else
				poiLight.direction = _WorldSpaceLightPos0.xyz;
				UNITY_LIGHT_ATTENUATION(attenuation, i, poiMesh.worldPos)
				poiLight.additiveShadow == 0;
				poiLight.attenuation = attenuation;
				#endif
				poiLight.directColor = _LightingAdditiveLimited ? min(_LightingAdditiveLimit, _LightColor0.rgb) : _LightColor0.rgb;
				
				#if defined(POINT_COOKIE) || defined(DIRECTIONAL_COOKIE)
				poiLight.indirectColor = 0;
				#else
				poiLight.indirectColor = lerp(0, poiLight.directColor, _LightingAdditivePassthrough);
				#endif
				
				poiLight.directColor = lerp(poiLight.directColor, dot(poiLight.directColor, float3(0.299, 0.587, 0.114)), _LightingAdditiveMonochromatic);
				poiLight.indirectColor = lerp(poiLight.indirectColor, dot(poiLight.indirectColor, float3(0.299, 0.587, 0.114)), _LightingAdditiveMonochromatic);
				
				poiLight.halfDir = normalize(poiLight.direction + poiCam.viewDir);
				poiLight.nDotL = dot(poiMesh.normals[1], poiLight.direction);
				poiLight.nDotLSaturated = saturate(poiLight.nDotL);
				poiLight.nDotLNormalized = (poiLight.nDotL + 1) * 0.5;
				poiLight.nDotV = dot(poiMesh.normals[1], poiCam.viewDir);
				poiLight.nDotH = dot(poiMesh.normals[1], poiLight.halfDir);
				poiLight.lDotv = dot(poiLight.direction, poiCam.viewDir);
				poiLight.lDotH = dot(poiLight.direction, poiLight.halfDir);
				poiLight.lightMap = 1;
				#endif
				
				#ifdef POI_LIGHT_DATA_DEBUG
				
				#ifdef UNITY_PASS_FORWARDBASE
				//UNITY_BRANCH
				if (_LightingDebugVisualize <= 6)
				{
					switch(_LightingDebugVisualize)
					{
						case 0: // Direct Light Color
						return float4(poiLight.directColor + mainTexture.rgb * .0001, 1);
						break;
						case 1: // Indirect Light Color
						return float4(poiLight.indirectColor + mainTexture.rgb * .0001, 1);
						break;
						case 2: // Light Map
						return float4(poiLight.lightMap + mainTexture.rgb * .0001, 1);
						break;
						case 3: // Attenuation
						return float4(poiLight.attenuation + mainTexture.rgb * .0001, 1);
						break;
						case 4: // N Dot L
						return float4(poiLight.nDotLNormalized, poiLight.nDotLNormalized, poiLight.nDotLNormalized, 1) + mainTexture * .0001;
						break;
						case 5:
						return float4(poiLight.halfDir, 1) + mainTexture * .0001;
						break;
						case 6:
						return float4(poiLight.direction, 1) + mainTexture * .0001;
						break;
					}
				}
				else
				{
					return POI_SAFE_RGB1;
				}
				#endif
				#ifdef UNITY_PASS_FORWARDADD
				//UNITY_BRANCH
				if (_LightingDebugVisualize < 6)
				{
					return POI_SAFE_RGB1;
				}
				else
				{
					switch(_LightingDebugVisualize)
					{
						case 7:
						return float4(poiLight.directColor * poiLight.attenuation + mainTexture.rgb * .0001, 1);
						break;
						case 8:
						return float4(poiLight.attenuation + mainTexture.rgb * .0001, 1);
						break;
						case 9:
						return float4(poiLight.additiveShadow + mainTexture.rgb * .0001, 1);
						break;
						case 10:
						return float4(poiLight.nDotLNormalized + mainTexture.rgb * .0001, 1);
						break;
						case 11:
						return float4(poiLight.halfDir, 1) + mainTexture * .0001;
						break;
					}
				}
				#endif
				#endif
				
				#ifdef POI_UDIMDISCARD
				applyUDIMDiscard(poiFragData, poiMesh);
				#endif
				
				poiFragData.baseColor = mainTexture.rgb * poiThemeColor(poiMods, _Color.rgb, _ColorThemeIndex);
				poiFragData.alpha = mainTexture.a * _Color.a;
				
				#ifdef COLOR_GRADING_HDR
				#if defined(PROP_MAINCOLORADJUSTTEXTURE) || !defined(OPTIMIZER_ENABLED)
				float4 hueShiftAlpha = POI2D_SAMPLER_PAN(_MainColorAdjustTexture, _MainTex, poiUV(poiMesh.uv[_MainColorAdjustTextureUV], _MainColorAdjustTexture_ST), _MainColorAdjustTexturePan);
				#else
				float4 hueShiftAlpha = 1;
				#endif
				
				if (_MainHueShiftToggle)
				{
					float shift = _MainHueShift;
					#ifdef COLOR_GRADING_LOG_VIEW
					//UNITY_BRANCH
					if (poiMods.audioLinkAvailable && _MainHueALCTEnabled)
					{
						shift += AudioLinkGetChronoTime(_MainALHueShiftCTIndex, _MainALHueShiftBand) * _MainHueALMotionSpeed;
					}
					#endif
					if (_MainHueShiftReplace)
					{
						poiFragData.baseColor = lerp(poiFragData.baseColor, hueShift(poiFragData.baseColor, shift + _MainHueShiftSpeed * _Time.x), hueShiftAlpha.r);
					}
					else
					{
						poiFragData.baseColor = hueShift(poiFragData.baseColor, frac((shift - (1 - hueShiftAlpha.r) + _MainHueShiftSpeed * _Time.x)));
					}
				}
				poiFragData.baseColor = lerp(poiFragData.baseColor, dot(poiFragData.baseColor, float3(0.3, 0.59, 0.11)), -_Saturation * hueShiftAlpha.b);
				poiFragData.baseColor = saturate(poiFragData.baseColor + _MainBrightness * hueShiftAlpha.g);
				#endif
				
				#if defined(PROP_CLIPPINGMASK) || !defined(OPTIMIZER_ENABLED)
				float alphaMask = POI2D_SAMPLER_PAN(_ClippingMask, _MainTex, poiUV(poiMesh.uv[_ClippingMaskUV], _ClippingMask_ST), _ClippingMaskPan).r;
				if (_Inverse_Clipping)
				{
					alphaMask = 1 - alphaMask;
				}
				#else
				float alphaMask = 1;
				#endif
				
				poiFragData.alpha *= alphaMask;
				
				applyAlphaOptions(poiFragData, poiMesh, poiCam, poiMods);
				
				#ifdef FINALPASS
				ApplyDetailColor(poiFragData, poiMesh, poiMods);
				#endif
				
				applyVertexColor(poiFragData, poiMesh);
				
				#ifdef POI_BACKFACE
				ApplyBackFaceColor(poiFragData, poiMesh, poiMods);
				#endif
				
				#ifdef VIGNETTE
				calculateRGBMask(poiFragData, poiMesh, poiMods);
				#endif
				
				#ifdef GEOM_TYPE_BRANCH
				applyDecals(poiFragData, poiMesh, poiCam, poiMods, poiLight);
				#endif
				
				#ifdef DISTORT
				applyDissolve(poiFragData, poiMesh, poiMods);
				#endif
				
				#if defined(_LIGHTINGMODE_SHADEMAP) && defined(VIGNETTE_MASKED)
				#ifndef POI_PASS_OUTLINE
				applyShadeMapping(poiFragData, poiMesh, poiLight);
				#endif
				#endif
				
				#ifdef VIGNETTE_MASKED
				#ifdef POI_PASS_OUTLINE
				//UNITY_BRANCH
				if (_OutlineLit)
				{
					calculateShading(poiLight, poiFragData, poiMesh, poiCam);
				}
				else
				{
					poiLight.finalLighting = 1;
				}
				#else
				calculateShading(poiLight, poiFragData, poiMesh, poiCam);
				#endif
				#else
				poiLight.finalLighting = 1;
				poiLight.rampedLightMap = aaBlurStep(poiLight.nDotL, 0.1, .1);
				#endif
				
				#if defined(POI_MATCAP0) || defined(COLOR_GRADING_HDR_3D)
				applyMatcap(poiFragData, poiCam, poiMesh, poiLight, poiMods);
				#endif
				
				#ifdef _CUBEMAP
				applyCubemap(poiFragData, poiCam, poiMesh, poiLight, poiMods);
				#endif
				
				#ifdef COLOR_GRADING_LOG_VIEW
				#ifdef POI_AL_DECAL
				ApplyAudioLinkDecal(poiMesh, poiFragData, poiMods);
				#endif
				#endif
				
				#ifdef _SUNDISK_HIGH_QUALITY
				applyFlipbook(poiFragData, poiMesh, poiMods);
				#endif
				
				#ifdef _GLOSSYREFLECTIONS_OFF
				ApplyRimLighting(poiFragData, poiMesh, poiCam, poiLight, poiMods);
				#endif
				
				#ifdef _SUNDISK_SIMPLE
				applyGlitter(poiFragData, poiMesh, poiCam, poiLight, poiMods);
				#endif
				
				#ifdef POI_STYLIZED_StylizedSpecular
				stylizedSpecular(poiFragData, poiCam, poiLight, poiMesh, poiMods);
				#endif
				
				#ifdef POI_PATHING
				applyPathing(poiFragData, poiMesh, poiMods);
				#endif
				
				#ifdef POI_MIRROR
				applyMirror(poiFragData, poiMesh);
				#endif
				
				#ifdef POI_IRIDESCENCE
				applyIridescence(poiFragData, poiMesh, poiCam);
				#endif
				
				#ifdef EFFECT_BUMP
				ApplyTextOverlayColor(poiFragData, poiMesh, poiMods);
				#endif
				
				UNITY_BRANCH
				if (_AlphaPremultiply)
				{
					poiFragData.baseColor *= saturate(poiFragData.alpha);
				}
				poiFragData.finalColor = poiFragData.baseColor;
				
				poiFragData.finalColor = poiFragData.baseColor * poiLight.finalLighting;
				poiFragData.finalColor += poiLight.finalLightAdd;
				
				#if defined(MOCHIE_PBR)
				MochieBRDF(poiFragData, poiCam, poiLight, poiMesh, poiMods);
				#endif
				
				#ifdef _COLORCOLOR_ON
				calculateAndApplyClearCoat(poiFragData, poiMesh, poiCam, poiLight, poiMods);
				#endif
				
				#ifdef POI_ENVIRORIM
				applyEnvironmentRim(poiFragData, poiMesh, poiCam);
				#endif
				
				#ifdef GRAIN
				applyDepthFX(poiFragData, poiCam, poiMesh, poiMods);
				#endif
				
				//UNITY_BRANCH
				if (_IgnoreFog == 0)
				{
					UNITY_APPLY_FOG(i.fogCoord, poiFragData.finalColor);
				}
				
				//#ifndef UNITY_PASS_SHADOWCASTER
				if (_Mode == POI_MODE_OPAQUE)
				{
					poiFragData.alpha = 1;
				}
				
				if (_Mode == 1)
				{
					clip(poiFragData.alpha - _Cutoff);
				}
				
				if (_Mode == POI_MODE_FADE)
				{
					clip(poiFragData.alpha -= 0.01);
				}
				
				return float4(poiFragData.finalColor * poiFragData.alpha, poiFragData.alpha) + mainTexture * 0.0001;
				//#else
				//	SHADOW_CASTER_FRAGMENT(i)
				//#endif
				
			}
			
			ENDCG
			
		}
		
		Pass
		{
			Tags { "LightMode" = "ShadowCaster" }
			
			Stencil
			{
				Ref [_StencilRef]
				ReadMask [_StencilReadMask]
				WriteMask [_StencilWriteMask]
				Comp [_StencilCompareFunction]
				Pass [_StencilPassOp]
				Fail [_StencilFailOp]
				ZFail [_StencilZFailOp]
			}
			
			ZWrite [_ZWrite]
			Cull [_Cull]
			AlphaToMask Off
			ZTest [_ZTest]
			ColorMask [_ColorMask]
			Offset [_OffsetFactor], [_OffsetUnits]
			
			BlendOp [_BlendOp], [_BlendOpAlpha]
			Blend [_SrcBlend] [_DstBlend]
			
			CGPROGRAM
			
			#pragma target 5.0
			
			#pragma shader_feature_local POI_UDIMDISCARD
			
			#pragma shader_feature USER_LUT
			
			#pragma shader_feature_local POI_PARALLAX
			
			#pragma shader_feature COLOR_GRADING_LOG_VIEW
			
			#pragma shader_feature_local POI_LIGHT_DATA_DEBUG
			#pragma shader_feature_local POI_LIGHT_DATA_ADDITIVE_ENABLE
			#pragma shader_feature_local POI_LIGHT_DATA_ADDITIVE_DIRECTIONAL_ENABLE
			#pragma shader_feature_local POI_VERTEXLIGHT_ON
			
			#pragma shader_feature COLOR_GRADING_HDR
			
			//#pragma shader_feature KEYWORD
			
			#pragma shader_feature FINALPASS
			
			#pragma shader_feature AUTO_EXPOSURE
			
			#pragma shader_feature_local POI_BACKFACE
			
			#pragma shader_feature VIGNETTE
			#pragma shader_feature GEOM_TYPE_MESH
			
			#pragma shader_feature GEOM_TYPE_BRANCH
			#pragma shader_feature GEOM_TYPE_BRANCH_DETAIL
			#pragma shader_feature GEOM_TYPE_FROND
			#pragma shader_feature DEPTH_OF_FIELD_COC_VIEW
			
			#pragma shader_feature DISTORT
			
			#pragma shader_feature VIGNETTE_MASKED
			#pragma shader_feature_local _LIGHTINGMODE_TEXTURERAMP _LIGHTINGMODE_MATHRAMP _LIGHTINGMODE_SHADEMAP _LIGHTINGMODE_REALISTIC _LIGHTINGMODE_WRAPPED _LIGHTINGMODE_SKIN _LIGHTINGMODE_FLAT _LIGHTINGMODE_CLOTH
			#pragma shader_feature_local POI_CLOTHLERP
			
			#pragma shader_feature COLOR_GRADING_HDR_3D
			#pragma shader_feature_local POI_MATCAP0
			#pragma shader_feature_local POI_MATCAP0_CUSTOM_NORMAL
			#pragma shader_feature_local POI_MATCAP1_CUSTOM_NORMAL
			
			#pragma shader_feature_local _CUBEMAP
			
			#pragma shader_feature_local POI_AL_DECAL
			
			#pragma shader_feature _SUNDISK_HIGH_QUALITY
			
			#pragma shader_feature _EMISSION
			#pragma shader_feature_local POI_EMISSION_1
			#pragma shader_feature_local POI_EMISSION_2
			#pragma shader_feature_local POI_EMISSION_3
			
			#pragma shader_feature _GLOSSYREFLECTIONS_OFF
			
			#pragma shader_feature _SUNDISK_SIMPLE
			
			#pragma shader_feature_local MOCHIE_PBR
			
			#pragma shader_feature_local _COLORCOLOR_ON
			
			#pragma shader_feature_local POI_ENVIRORIM
			
			#pragma shader_feature_local POI_STYLIZED_StylizedSpecular
			
			#pragma shader_feature_local POI_PATHING
			
			#pragma shader_feature_local POI_MIRROR
			
			#pragma shader_feature GRAIN
			
			#pragma shader_feature_local POI_IRIDESCENCE
			
			#pragma shader_feature EFFECT_BUMP
			
			#pragma shader_feature_local MOCHIE_POSTPROCESS
			
			#pragma multi_compile_instancing
			#pragma multi_compile_shadowcaster
			#pragma multi_compile_fog
			#define POI_PASS_SHADOW
			
			// UNITY Includes
			#include "UnityCG.cginc"
			#include "UnityStandardUtils.cginc"
			#include "AutoLight.cginc"
			#include "UnityLightingCommon.cginc"
			#include "UnityPBSLighting.cginc"
			#pragma vertex vert
			#pragma fragment frag
			
			#define DielectricSpec float4(0.04, 0.04, 0.04, 1.0 - 0.04)
			#define pi float(3.14159265359)
			
			#define POI2D_SAMPLER_PAN(tex, texSampler, uv, pan) (UNITY_SAMPLE_TEX2D_SAMPLER(tex, texSampler, uv + _Time.x * pan))
			#define POI2D_SAMPLER_PANGRAD(tex, texSampler, uv, pan, ddx, ddy) (UNITY_SAMPLE_TEX2D_SAMPLER(tex, texSampler, uv + _Time.x * pan, ddx, ddy))
			#define POI2D_SAMPLER(tex, texSampler, uv) (UNITY_SAMPLE_TEX2D_SAMPLER(tex, texSampler, uv))
			#define POI2D_PAN(tex, uv, pan) (tex2D(tex, uv + _Time.x * pan))
			#define POI2D(tex, uv) (tex2D(tex, uv))
			#define POI_SAMPLE_TEX2D(tex, uv) (UNITY_SAMPLE_TEX2D(tex, uv))
			#define POI_SAMPLE_TEX2D_PAN(tex, uv, pan) (UNITY_SAMPLE_TEX2D(tex, uv + _Time.x * pan))
			
			#define POI2D_MAINTEX_SAMPLER_PAN_INLINED(tex, poiMesh) (POI2D_SAMPLER_PAN(tex, _MainTex, poiUV(poiMesh.uv[tex##UV], tex##_ST), tex##Pan))
			
			#define POI_SAFE_RGB1 float4(mainTexture.rgb * .0001, 1)
			#define POI_SAFE_RGBA mainTexture
			
			#if defined(UNITY_COMPILER_HLSL)
			#define PoiInitStruct(type, name) name = (type)0;
			#else
			#define PoiInitStruct(type, name)
			#endif
			
			#define POI_ERROR(poiMesh, gridSize) lerp(float3(1, 0, 1), float3(0, 0, 0), fmod(floor((poiMesh.worldPos.x) * gridSize) + floor((poiMesh.worldPos.y) * gridSize) + floor((poiMesh.worldPos.z) * gridSize), 2) == 0)
			
			#define POI_MODE_OPAQUE 0
			#define POI_MODE_CUTOUT 1
			#define POI_MODE_FADE 2
			#define POI_MODE_TRANSPARENT 3
			#define POI_MODE_ADDITIVE 4
			#define POI_MODE_SOFTADDITIVE 5
			#define POI_MODE_MULTIPLICATIVE 6
			#define POI_MODE_2XMULTIPLICATIVE 7
			#define POI_MODE_TRANSCLIPPING 9
			
			/*
			Texture2D ;
			float4 _ST;
			float2 Pan;
			float UV;
			
			[HideInInspector][ThryWideEnum(UV0, 0, UV1, 1, UV2, 2, UV3, 3, Panosphere, 4, World Pos XZ, 5, Polar UV, 6, Distorted UV, 7 )]
			*/
			// Map of where features in AudioLink are.
			#define ALPASS_DFT                      uint2(0,4)   //Size: 128, 2
			#define ALPASS_WAVEFORM                 uint2(0,6)   //Size: 128, 16
			#define ALPASS_AUDIOLINK                uint2(0,0)   //Size: 128, 4
			#define ALPASS_AUDIOBASS                uint2(0,0)   //Size: 128, 1
			#define ALPASS_AUDIOLOWMIDS             uint2(0,1)   //Size: 128, 1
			#define ALPASS_AUDIOHIGHMIDS            uint2(0,2)   //Size: 128, 1
			#define ALPASS_AUDIOTREBLE              uint2(0,3)   //Size: 128, 1
			#define ALPASS_AUDIOLINKHISTORY         uint2(1,0)   //Size: 127, 4
			#define ALPASS_GENERALVU                uint2(0,22)  //Size: 12, 1
			#define ALPASS_CCINTERNAL               uint2(12,22) //Size: 12, 2
			#define ALPASS_CCCOLORS                 uint2(25,22) //Size: 11, 1
			#define ALPASS_CCSTRIP                  uint2(0,24)  //Size: 128, 1
			#define ALPASS_CCLIGHTS                 uint2(0,25)  //Size: 128, 2
			#define ALPASS_AUTOCORRELATOR           uint2(0,27)  //Size: 128, 1
			#define ALPASS_GENERALVU_INSTANCE_TIME  uint2(2,22)
			#define ALPASS_GENERALVU_LOCAL_TIME     uint2(3,22)
			#define ALPASS_GENERALVU_NETWORK_TIME   uint2(4,22)
			#define ALPASS_GENERALVU_PLAYERINFO     uint2(6,22)
			// Added in version 2.5
			#define ALPASS_FILTEREDAUDIOLINK        uint2(0,28)  //Size: 16, 4
			// Added in version 2.6
			#define ALPASS_CHRONOTENSITY            uint2(16,28) //Size: 8, 4
			#define ALPASS_THEME_COLOR0             uint2(0,23)
			#define ALPASS_THEME_COLOR1             uint2(1,23)
			#define ALPASS_THEME_COLOR2             uint2(2,23)
			#define ALPASS_THEME_COLOR3             uint2(3,23)
			#define ALPASS_FILTEREDVU               uint2(24,28) //Size: 4, 4
			#define ALPASS_FILTEREDVU_INTENSITY     uint2(24,28) //Size: 4, 1
			#define ALPASS_FILTEREDVU_MARKER        uint2(24,29) //Size: 4, 1
			
			// Some basic constants to use (Note, these should be compatible with
			// future version of AudioLink, but may change.
			#define AUDIOLINK_SAMPHIST              3069        // Internal use for algos, do not change.
			#define AUDIOLINK_SAMPLEDATA24          2046
			#define AUDIOLINK_EXPBINS               24
			#define AUDIOLINK_EXPOCT                10
			#define AUDIOLINK_ETOTALBINS (AUDIOLINK_EXPBINS * AUDIOLINK_EXPOCT)
			#define AUDIOLINK_WIDTH                 128
			#define AUDIOLINK_SPS                   48000       // Samples per second
			#define AUDIOLINK_ROOTNOTE              0
			#define AUDIOLINK_4BAND_FREQFLOOR       0.123
			#define AUDIOLINK_4BAND_FREQCEILING     1
			#define AUDIOLINK_BOTTOM_FREQUENCY      13.75
			#define AUDIOLINK_BASE_AMPLITUDE        2.5
			#define AUDIOLINK_DELAY_COEFFICIENT_MIN 0.3
			#define AUDIOLINK_DELAY_COEFFICIENT_MAX 0.9
			#define AUDIOLINK_DFT_Q                 4.0
			#define AUDIOLINK_TREBLE_CORRECTION     5.0
			
			// ColorChord constants
			#define COLORCHORD_EMAXBIN              192
			#define COLORCHORD_IIR_DECAY_1          0.90
			#define COLORCHORD_IIR_DECAY_2          0.85
			#define COLORCHORD_CONSTANT_DECAY_1     0.01
			#define COLORCHORD_CONSTANT_DECAY_2     0.0
			#define COLORCHORD_NOTE_CLOSEST         3.0
			#define COLORCHORD_NEW_NOTE_GAIN        8.0
			#define COLORCHORD_MAX_NOTES            10
			
			// We use glsl_mod for most calculations because it behaves better
			// on negative numbers, and in some situations actually outperforms
			// HLSL's modf().
			#ifndef glsl_mod
			#define glsl_mod(x, y) (((x) - (y) * floor((x) / (y))))
			#endif
			
			uniform float4               _AudioTexture_TexelSize;
			
			#ifdef SHADER_TARGET_SURFACE_ANALYSIS
			#define AUDIOLINK_STANDARD_INDEXING
			#endif
			
			// Mechanism to index into texture.
			#ifdef AUDIOLINK_STANDARD_INDEXING
			sampler2D _AudioTexture;
			#define AudioLinkData(xycoord) tex2Dlod(_AudioTexture, float4(uint2(xycoord) * _AudioTexture_TexelSize.xy, 0, 0))
			#else
			uniform Texture2D<float4> _AudioTexture;
			SamplerState sampler_AudioTexture;
			#define AudioLinkData(xycoord) _AudioTexture[uint2(xycoord)]
			#endif
			
			float _Mode;
			
			#ifdef POI_UDIMDISCARD
			float _UDIMDiscardMode;
			float _UDIMDiscardUV;
			float4 _UDIMDiscardRow3;
			float4 _UDIMDiscardRow2;
			float4 _UDIMDiscardRow1;
			float4 _UDIMDiscardRow0;
			#endif
			
			#ifdef USER_LUT
			#if defined(PROP_DISTORTIONFLOWTEXTURE) || !defined(OPTIMIZER_ENABLED)
			Texture2D _DistortionFlowTexture;
			float4 _DistortionFlowTexture_ST;
			float2 _DistortionFlowTexturePan;
			float _DistortionFlowTextureUV;
			#endif
			
			#if defined(PROP_DISTORTIONFLOWTEXTURE1) || !defined(OPTIMIZER_ENABLED)
			Texture2D _DistortionFlowTexture1;
			float4 _DistortionFlowTexture1_ST;
			float2 _DistortionFlowTexture1Pan;
			float _DistortionFlowTexture1UV;
			#endif
			
			#if defined(PROP_DISTORTIONMASK) || !defined(OPTIMIZER_ENABLED)
			Texture2D _DistortionMask;
			float4 _DistortionMask_ST;
			float2 _DistortionMaskPan;
			float _DistortionMaskUV;
			#endif
			
			float _DistortionUvToDistort;
			float _DistortionStrength;
			float _DistortionStrength1;
			#endif
			float _StereoEnabled;
			float _PolarUV;
			float2 _PolarCenter;
			float _PolarRadialScale;
			float _PolarLengthScale;
			float _PolarSpiralPower;
			float _PanoUseBothEyes;
			
			#ifdef POI_PARALLAX
			
			sampler2D _HeightMap;
			float4 _HeightMap_ST;
			float2 _HeightMapPan;
			float _HeightMapUV;
			
			#if defined(PROP_HEIGHTMASK) || !defined(OPTIMIZER_ENABLED)
			Texture2D _Heightmask;
			#endif
			float4 _Heightmask_ST;
			float2 _HeightmaskPan;
			float _HeightmaskUV;
			float _HeightmaskInvert;
			
			float _ParallaxUV;
			float _HeightStrength;
			float _HeightOffset;
			float _HeightStepsMin;
			float _HeightStepsMax;
			
			float _CurvatureU;
			float _CurvatureV;
			float _CurvFix;
			/*
			*/
			#endif
			
			#ifdef COLOR_GRADING_LOG_VIEW
			float _AudioLinkDelay;
			float _AudioLinkAnimToggle;
			float _DebugWaveform;
			float _DebugDFT;
			float _DebugBass;
			float _DebugLowMids;
			float _DebugHighMids;
			float _DebugTreble;
			float _DebugCCColors;
			float _DebugCCStrip;
			float _DebugCCLights;
			float _DebugAutocorrelator;
			float _DebugChronotensity;
			float _AudioLinkCCStripY;
			#endif
			
			float _IgnoreFog;
			float _RenderingReduceClipDistance;
			
			float4 _Color;
			float _ColorThemeIndex;
			UNITY_DECLARE_TEX2D(_MainTex);
			float4 _MainTex_ST;
			float2 _MainTexPan;
			float _MainTexUV;
			float4 _MainTex_TexelSize;
			Texture2D _BumpMap;
			float4 _BumpMap_ST;
			float2 _BumpMapPan;
			float _BumpMapUV;
			float _BumpScale;
			Texture2D _ClippingMask;
			float4 _ClippingMask_ST;
			float2 _ClippingMaskPan;
			float _ClippingMaskUV;
			float _Inverse_Clipping;
			float _Cutoff;
			
			float _MainColorAdjustToggle;
			#if defined(PROP_MAINCOLORADJUSTTEXTURE) || !defined(OPTIMIZER_ENABLED)
			Texture2D _MainColorAdjustTexture;
			#endif
			float4 _MainColorAdjustTexture_ST;
			float2 _MainColorAdjustTexturePan;
			float _MainColorAdjustTextureUV;
			float _MainHueShiftToggle;
			float _MainHueShiftReplace;
			float _MainHueShift;
			float _MainHueShiftSpeed;
			float _Saturation;
			float _MainBrightness;
			
			float _MainHueALCTEnabled;
			float _MainALHueShiftBand;
			float _MainALHueShiftCTIndex;
			float _MainHueALMotionSpeed;
			
			SamplerState sampler_linear_clamp;
			SamplerState sampler_linear_repeat;
			
			float _AlphaForceOpaque;
			float _AlphaMod;
			float _AlphaPremultiply;
			
			float _AlphaToCoverage;
			float _AlphasharpenedA2C;
			float _AlphaMipScale;
			
			float _AlphaDithering;
			float _AlphaDitherGradient;
			
			float _AlphaDistanceFade;
			float _AlphaDistanceFadeType;
			float _AlphaDistanceFadeMinAlpha;
			float _AlphaDistanceFadeMaxAlpha;
			float _AlphaDistanceFadeMin;
			float _AlphaDistanceFadeMax;
			
			float _AlphaFresnel;
			float _AlphaFresnelAlpha;
			float _AlphaFresnelSharpness;
			float _AlphaFresnelWidth;
			float _AlphaFresnelInvert;
			
			float _AlphaAngular;
			float _AngleType;
			float _AngleCompareTo;
			float3 _AngleForwardDirection;
			float _CameraAngleMin;
			float _CameraAngleMax;
			float _ModelAngleMin;
			float _ModelAngleMax;
			float _AngleMinAlpha;
			
			float _AlphaAudioLinkEnabled;
			float2 _AlphaAudioLinkAddRange;
			float _AlphaAudioLinkAddBand;
			/*
			Texture2D ;
			float4 _ST;
			float2 Pan;
			float UV;
			*/
			
			#ifdef AUTO_EXPOSURE
			float4 _VertexManipulationLocalTranslation;
			float4 _VertexManipulationLocalRotation;
			float3 _VertexManipulationLocalRotationSpeed;
			float4 _VertexManipulationLocalScale;
			float4 _VertexManipulationWorldTranslation;
			float _VertexManipulationHeight;
			sampler2D _VertexManipulationHeightMask;
			float4 _VertexManipulationHeightMask_ST;
			float2 _VertexManipulationHeightMaskPan;
			float _VertexManipulationHeightMaskUV;
			float _VertexManipulationHeightBias;
			float _VertexRoundingEnabled;
			float _VertexRoundingDivision;
			
			//AL
			float3 _VertexLocalTranslationALMin;
			float3 _VertexLocalTranslationALMax;
			float _VertexLocalTranslationALBand;
			
			float3 _VertexLocalRotationAL;
			float _VertexLocalRotationALBand;
			
			float3 _VertexLocalRotationCTALSpeed;
			float _VertexLocalRotationCTALBand;
			float _VertexLocalRotationCTALType;
			
			float4 _VertexLocalScaleALMin;
			float4 _VertexLocalScaleALMax;
			float _VertexLocalScaleALBand;
			
			float3 _VertexWorldTranslationALMin;
			float3 _VertexWorldTranslationALMax;
			float _VertexWorldTranslationALBand;
			
			float2 _VertexManipulationHeightAL;
			float _VertexManipulationHeightBand;
			
			float2 _VertexRoundingRangeAL;
			float _VertexRoundingRangeBand;
			#endif
			
			/*
			Texture2D ;
			float4 _ST;
			float2 Pan;
			float UV;
			*/
			
			float _MainVertexColoringLinearSpace;
			float _MainVertexColoring;
			float _MainUseVertexColorAlpha;
			
			#ifdef POI_BACKFACE
			float _BackFaceEnabled;
			float _BackFaceDetailIntensity;
			float _BackFaceEmissionStrength;
			float2 _BackFacePanning;
			float4 _BackFaceColor;
			float _BackFaceColorThemeIndex;
			float _BackFaceReplaceAlpha;
			float _BackFaceAlpha;
			
			#if defined(PROP_BACKFACETEXTURE) || !defined(OPTIMIZER_ENABLED)
			Texture2D _BackFaceTexture;
			#endif
			float4 _BackFaceTexture_ST;
			float2 _BackFaceTexturePan;
			float _BackFaceTextureUV;
			
			#if defined(PROP_BACKFACEMASK) || !defined(OPTIMIZER_ENABLED)
			Texture2D _BackFaceMask;
			#endif
			float4 _BackFaceMask_ST;
			float2 _BackFaceMaskPan;
			float _BackFaceMaskUV;
			
			float _BackFaceHueShiftEnabled;
			float _BackFaceHueShift;
			float _BackFaceHueShiftSpeed;
			#endif
			
			//TODO detail strength stuff
			
			#ifdef DISTORT
			float _DissolveType;
			float _DissolveEdgeWidth;
			float4 _DissolveEdgeColor;
			sampler2D _DissolveEdgeGradient;
			float4 _DissolveEdgeGradient_ST;
			float2 _DissolveEdgeGradientPan;
			float _DissolveEdgeGradientUV;
			float _DissolveEdgeEmission;
			float4 _DissolveTextureColor;
			float _DissolveEdgeColorThemeIndex;
			float _DissolveTextureColorThemeIndex;
			
			#if defined(PROP_DISSOLVETOTEXTURE) || !defined(OPTIMIZER_ENABLED)
			Texture2D _DissolveToTexture;
			#endif
			float4 _DissolveToTexture_ST;
			float2 _DissolveToTexturePan;
			float _DissolveToTextureUV;
			
			#if defined(PROP_DISSOLVENOISETEXTURE) || !defined(OPTIMIZER_ENABLED)
			Texture2D _DissolveNoiseTexture;
			#endif
			float4 _DissolveNoiseTexture_ST;
			float2 _DissolveNoiseTexturePan;
			float _DissolveNoiseTextureUV;
			
			#if defined(PROP_DISSOLVEDETAILNOISE) || !defined(OPTIMIZER_ENABLED)
			Texture2D _DissolveDetailNoise;
			#endif
			float4 _DissolveDetailNoise_ST;
			float2 _DissolveDetailNoisePan;
			float _DissolveDetailNoiseUV;
			
			#if defined(PROP_DISSOLVEMASK) || !defined(OPTIMIZER_ENABLED)
			Texture2D _DissolveMask;
			#endif
			float4 _DissolveMask_ST;
			float2 _DissolveMaskPan;
			float _DissolveMaskUV;
			
			float _DissolveMaskInvert;
			float _DissolveAlpha;
			float _ContinuousDissolve;
			float _DissolveDetailStrength;
			float _DissolveEdgeHardness;
			float _DissolveInvertNoise;
			float _DissolveInvertDetailNoise;
			float _DissolveToEmissionStrength;
			
			// Point to Point
			float _DissolveP2PWorldLocal;
			float _DissolveP2PEdgeLength;
			float4 _DissolveStartPoint;
			float4 _DissolveEndPoint;
			
			// World Dissolve
			float _DissolveWorldShape;
			float4 _DissolveShapePosition;
			float4 _DissolveShapeRotation;
			float _DissolveShapeScale;
			float _DissolveInvertShape;
			float _DissolveShapeEdgeLength;
			
			float _DissolveAlpha0;
			float _DissolveAlpha1;
			float _DissolveAlpha2;
			float _DissolveAlpha3;
			float _DissolveAlpha4;
			float _DissolveAlpha5;
			float _DissolveAlpha6;
			float _DissolveAlpha7;
			float _DissolveAlpha8;
			float _DissolveAlpha9;
			// Masking
			float _DissolveEmissionSide;
			float _DissolveEmission1Side;
			float _DissolveUseVertexColors;
			
			float4 edgeColor;
			float edgeAlpha;
			float dissolveAlpha;
			float4 dissolveToTexture;
			
			float _DissolveHueShiftEnabled;
			float _DissolveHueShiftSpeed;
			float _DissolveHueShift;
			float _DissolveEdgeHueShiftEnabled;
			float _DissolveEdgeHueShiftSpeed;
			float _DissolveEdgeHueShift;
			
			// Audio Link
			#ifdef COLOR_GRADING_LOG_VIEW
			fixed _EnableDissolveAudioLink;
			half _AudioLinkDissolveAlphaBand;
			float2 _AudioLinkDissolveAlpha;
			half _AudioLinkDissolveDetailBand;
			float2 _AudioLinkDissolveDetail;
			#endif
			#endif
			
			/*
			Texture2D ;
			float4 _ST;
			float2 Pan;
			float UV;
			*/
			
			#ifdef COLOR_GRADING_LOG_VIEW
			#ifdef POI_AL_DECAL
			float _ALDecalUV;
			float4 _ALUVScale;
			float2 _ALUVPosition;
			float _ALUVRotation;
			float _ALUVRotationSpeed;
			float4 _ALDecaldCircleDimensions;
			
			float _ALDecalUVMode;
			
			float _ALDecalVolumeStep;
			float _ALDecalVolumeClipMin;
			float _ALDecalVolumeClipMax;
			
			float _ALDecalBandStep;
			float _ALDecalBandClipMin;
			float _ALDecalBandClipMax;
			
			float _ALDecalShapeClip;
			float _ALDecalShapeClipVolumeWidth;
			float _ALDecalShapeClipBandWidth;
			
			float _ALDecalVolume;
			float _ALDecalBaseBoost;
			float _ALDecalTrebleBoost;
			float _ALDecalLineWidth;
			float _ALDecalVolumeColorSource;
			float3 _ALDecalVolumeColorLow;
			float3 _ALDecalVolumeColorMid;
			float3 _ALDecalVolumeColorHigh;
			float _ALDecalLowEmission;
			float _ALDecalMidEmission;
			float _ALDecalHighEmission;
			float _ALDecalBlendType;
			float _ALDecalBlendAlpha;
			float _ALDecalControlsAlpha;
			#endif
			#endif
			/*
			Texture2D ;
			float4 _ST;
			float2 Pan;
			float UV;
			*/
			
			#ifdef _SUNDISK_HIGH_QUALITY
			
			UNITY_DECLARE_TEX2DARRAY(_FlipbookTexArray);
			float4 _FlipbookTexArray_ST;
			
			float4 _FlipbookColor;
			float _FlipbookColorThemeIndex;
			float _FlipbookFPS;
			float _FlipbookTotalFrames;
			float4 _FlipbookScaleOffset;
			float4 _FlipbookSideOffset;
			float _FlipbookTiled;
			float _FlipbookCurrentFrame;
			float _FlipbookEmissionStrength;
			float _FlipbookRotation;
			float _EnableFlipbook;
			float _FlipbookTexArrayUV;
			float _FlipbookAlphaControlsFinalAlpha;
			float _FlipbookRotationSpeed;
			float _FlipbookIntensityControlsAlpha;
			float _FlipbookColorReplaces;
			float2 _FlipbookTexArrayPan;
			
			// blending
			float _FlipbookReplace;
			float _FlipbookMultiply;
			float _FlipbookAdd;
			
			#if defined(PROP_FLIPBOOKMASSK) || !defined(OPTIMIZED_ENABLED)
			Texture2D _FlipbookMask;
			#endif
			float4 _FlipbookMask_ST;
			float2 _FlipbookMaskPan;
			float _FlipbookMaskUV;
			
			// anim
			float _FlipbookMovementType;
			float4 _FlipbookStartEndOffset;
			float _FlipbookMovementSpeed;
			
			// Crossfade
			float _FlipbookCrossfadeEnabled;
			float2 _FlipbookCrossfadeRange;
			
			// Hueshift
			float _FlipbookHueShiftEnabled;
			float _FlipbookHueShiftSpeed;
			float _FlipbookHueShift;
			
			#ifdef COLOR_GRADING_LOG_VIEW
			float _FlipbookChronotensityEnabled;
			float _FlipbookChronotensityBand;
			float _FlipbookChronotensitySpeed;
			#endif
			#endif
			
			#ifdef POI_MIRROR
			float _Mirror;
			#if defined(PROP_MIRRORTEXTURE) || !defined(OPTIMIZER_ENABLED)
			Texture2D _MirrorTexture;
			#endif
			float4 _MirrorTexture_ST;
			float2 _MirrorTexturePan;
			float _MirrorTextureUV;
			#endif
			
			#ifdef GRAIN
			sampler2D _CameraDepthTexture;
			#endif
			
			#if defined(PROP_DEPTHMASK) || !defined(OPTIMIZER_ENABLED)
			Texture2D _DepthMask;
			#endif
			float4 _DepthMask_ST;
			float2 _DepthMaskPan;
			float _DepthMaskUV;
			
			// Color
			float _DepthColorToggle;
			float _DepthColorBlendMode;
			#if defined(PROP_DEPTHTEXTURE) || !defined(OPTIMIZER_ENABLED)
			Texture2D _DepthTexture;
			#endif
			float4 _DepthTexture_ST;
			float2 _DepthTexturePan;
			float _DepthTextureUV;
			
			float3 _DepthColor;
			float _DepthColorThemeIndex;
			float _DepthColorMinDepth;
			float _DepthColorMaxDepth;
			float _DepthColorMinValue;
			float _DepthColorMaxValue;
			float _DepthEmissionStrength;
			
			// Emission
			
			// Alpha
			float _DepthAlphaToggle;
			float _DepthAlphaMinValue;
			float _DepthAlphaMaxValue;
			float _DepthAlphaMinDepth;
			float _DepthAlphaMaxDepth;
			
			/*
			Texture2D ;
			float4 _ST;
			float2 Pan;
			float UV;
			*/
			
			//Structs
			struct appdata
			{
				float4 vertex : POSITION;
				float3 normal : NORMAL;
				float4 tangent : TANGENT;
				float4 color : COLOR;
				float2 uv0 : TEXCOORD0;
				float2 uv1 : TEXCOORD1;
				float2 uv2 : TEXCOORD2;
				float2 uv3 : TEXCOORD3;
				uint vertexId : SV_VertexID;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};
			
			struct v2f
			{
				float4 pos : SV_POSITION;
				float2 uv[4] : TEXCOORD0;
				float3 objNormal : TEXCOORD4;
				float3 normal : TEXCOORD5;
				float3 tangent : TEXCOORD6;
				float3 binormal : TEXCOORD7;
				float4 worldPos : TEXCOORD8;
				float4 localPos : TEXCOORD9;
				float3 objectPos : TEXCOORD10;
				float4 vertexColor : TEXCOORD11;
				float4 lightmapUV : TEXCOORD12;
				float4 grabPos: TEXCOORD13;
				float4 worldDirection: TEXCOORD14;
				UNITY_SHADOW_COORDS(15)
				UNITY_FOG_COORDS(16)
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};
			
			struct PoiMesh
			{
				
				// 0 Vertex normal
				// 1 Fragment normal
				float3 normals[2];
				float3 objNormal;
				float3 tangentSpaceNormal;
				float3 binormal;
				float3 tangent;
				float3 worldPos;
				float3 localPos;
				float3 objectPosition;
				float isFrontFace;
				float4 vertexColor;
				float4 lightmapUV;
				// 0-3 UV0-UV3
				// 4 Panosphere UV
				// 5 world pos xz
				// 6 Polar UV
				// 7 Distorted UV
				float2 uv[8];
				float2 parallaxUV;
			};
			
			struct PoiCam
			{
				float3 viewDir;
				float3 forwardDir;
				float3 worldPos;
				float distanceToVert;
				float4 clipPos;
				float3 reflectionDir;
				float3 tangentViewDir;
				float4 grabPos;
				float2 screenUV;
				float vDotN;
				float4 worldDirection;
				
			};
			
			struct PoiMods
			{
				float4 Mask;
				float4 audioLink;
				float audioLinkAvailable;
				float audioLinkVersion;
				float4 audioLinkTexture;
				float2 detailMask;
				float2 backFaceDetailIntensity;
				float4 globalColorTheme[12];
				float ALTime[8];
			};
			
			struct PoiLight
			{
				
				float3 direction;
				float attenuation;
				float attenuationStrength;
				float3 directColor;
				float3 indirectColor;
				float occlusion;
				float shadowMask;
				float detailShadow;
				float3 halfDir;
				float lightMap;
				float3 rampedLightMap;
				float nDotL;
				float nDotV;
				float nDotH;
				float lDotv;
				float lDotH;
				float nDotLSaturated;
				float nDotLNormalized;
				#ifdef UNITY_PASS_FORWARDADD
				float additiveShadow;
				#endif
				float3 finalLighting;
				float3 finalLightAdd;
				
				#if defined(VERTEXLIGHT_ON) && defined(POI_VERTEXLIGHT_ON)
				// Non Important Lights
				float4 vDotNL;
				float3 vColor[4];
				float4 vCorrectedDotNL;
				float4 vAttenuation;
				float4 vAttenuationDotNL;
				float3 vPosition[4];
				float3 vDirection[4];
				float3 vFinalLighting;
				float3 vHalfDir[4];
				half4 vDotNH;
				half4 vDotLH;
				#endif
				
			};
			
			struct PoiVertexLights
			{
				
				float3 direction;
				float3 color;
				float attenuation;
			};
			
			struct PoiFragData
			{
				float3 baseColor;
				float3 finalColor;
				float alpha;
				float3 emission;
			};
			
			float2 poiUV(float2 uv, float4 tex_st)
			{
				return uv * tex_st.xy + tex_st.zw;
			}
			
			//Lighting Helpers
			float calculateluminance(float3 color)
			{
				return color.r * 0.299 + color.g * 0.587 + color.b * 0.114;
			}
			
			bool IsInMirror()
			{
				return unity_CameraProjection[2][0] != 0.f || unity_CameraProjection[2][1] != 0.f;
			}
			
			bool IsOrthographicCamera()
			{
				return unity_OrthoParams.w == 1 || UNITY_MATRIX_P[3][3] == 1;
			}
			
			/*
			* MIT License
			*
			* Copyright (c) 2018 s-ilent
			*
			* Permission is hereby granted, free of charge, to any person obtaining a copy
			* of this software and associated documentation files (the "Software"), to deal
			* in the Software without restriction, including without limitation the rights
			* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
			* copies of the Software, and to permit persons to whom the Software is
			* furnished to do so, subject to the following conditions:
			*
			* The above copyright notice and this permission notice shall be included in all
			* copies or substantial portions of the Software.
			*
			* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
			* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
			* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
			* AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
			* LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
			* OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
			* SOFTWARE.
			*/
			
			float shEvaluateDiffuseL1Geomerics_local(float L0, float3 L1, float3 n)
			{
				// average energy
				float R0 = max(0, L0);
				
				// avg direction of incoming light
				float3 R1 = 0.5f * L1;
				
				// directional brightness
				float lenR1 = length(R1);
				
				// linear angle between normal and direction 0-1
				//float q = 0.5f * (1.0f + dot(R1 / lenR1, n));
				//float q = dot(R1 / lenR1, n) * 0.5 + 0.5;
				float q = dot(normalize(R1), n) * 0.5 + 0.5;
				q = saturate(q); // Thanks to ScruffyRuffles for the bug identity.
				
				// power for q
				// lerps from 1 (linear) to 3 (cubic) based on directionality
				float p = 1.0f + 2.0f * lenR1 / R0;
				
				// dynamic range constant
				// should vary between 4 (highly directional) and 0 (ambient)
				float a = (1.0f - lenR1 / R0) / (1.0f + lenR1 / R0);
				
				return R0 * (a + (1.0f - a) * (p + 1.0f) * pow(q, p));
			}
			
			half3 BetterSH9(half4 normal)
			{
				float3 indirect;
				float3 L0 = float3(unity_SHAr.w, unity_SHAg.w, unity_SHAb.w) + float3(unity_SHBr.z, unity_SHBg.z, unity_SHBb.z) / 3.0;
				indirect.r = shEvaluateDiffuseL1Geomerics_local(L0.r, unity_SHAr.xyz, normal.xyz);
				indirect.g = shEvaluateDiffuseL1Geomerics_local(L0.g, unity_SHAg.xyz, normal.xyz);
				indirect.b = shEvaluateDiffuseL1Geomerics_local(L0.b, unity_SHAb.xyz, normal.xyz);
				indirect = max(0, indirect);
				indirect += SHEvalLinearL2(normal);
				return indirect;
			}
			
			// Silent's code ends here
			
			float3 getCameraForward()
			{
				#if UNITY_SINGLE_PASS_STEREO
				float3 p1 = mul(unity_StereoCameraToWorld[0], float4(0, 0, 1, 1));
				float3 p2 = mul(unity_StereoCameraToWorld[0], float4(0, 0, 0, 1));
				#else
				float3 p1 = mul(unity_CameraToWorld, float4(0, 0, 1, 1)).xyz;
				float3 p2 = mul(unity_CameraToWorld, float4(0, 0, 0, 1)).xyz;
				#endif
				return normalize(p2 - p1);
			}
			
			half3 GetSHLength()
			{
				half3 x, x1;
				x.r = length(unity_SHAr);
				x.g = length(unity_SHAg);
				x.b = length(unity_SHAb);
				x1.r = length(unity_SHBr);
				x1.g = length(unity_SHBg);
				x1.b = length(unity_SHBb);
				return x + x1;
			}
			
			float3 BoxProjection(float3 direction, float3 position, float4 cubemapPosition, float3 boxMin, float3 boxMax)
			{
				#if UNITY_SPECCUBE_BOX_PROJECTION
				//UNITY_BRANCH
				if (cubemapPosition.w > 0)
				{
					float3 factors = ((direction > 0 ? boxMax : boxMin) - position) / direction;
					float scalar = min(min(factors.x, factors.y), factors.z);
					direction = direction * scalar + (position - cubemapPosition.xyz);
				}
				#endif
				return direction;
			}
			
			float poiMax(float2 i)
			{
				return max(i.x, i.y);
			}
			
			float poiMax(float3 i)
			{
				return max(max(i.x, i.y), i.z);
			}
			
			float poiMax(float4 i)
			{
				return max(max(max(i.x, i.y), i.z), i.w);
			}
			
			float3 calculateNormal(in float3 baseNormal, in PoiMesh poiMesh, in Texture2D normalTexture, in float4 normal_ST, in float2 normalPan, in float normalUV, in float normalIntensity)
			{
				float3 normal = UnpackScaleNormal(POI2D_SAMPLER_PAN(normalTexture, _MainTex, poiUV(poiMesh.uv[normalUV], normal_ST), normalPan), normalIntensity);
				return normalize(
				normal.x * poiMesh.tangent +
				normal.y * poiMesh.binormal +
				normal.z * baseNormal
				);
			}
			
			float remap(float x, float minOld, float maxOld, float minNew = 0, float maxNew = 1)
			{
				return minNew + (x - minOld) * (maxNew - minNew) / (maxOld - minOld);
			}
			
			float2 remap(float2 x, float2 minOld, float2 maxOld, float2 minNew = 0, float2 maxNew = 1)
			{
				return minNew + (x - minOld) * (maxNew - minNew) / (maxOld - minOld);
			}
			
			float3 remap(float3 x, float3 minOld, float3 maxOld, float3 minNew = 0, float3 maxNew = 1)
			{
				return minNew + (x - minOld) * (maxNew - minNew) / (maxOld - minOld);
			}
			
			float4 remap(float4 x, float4 minOld, float4 maxOld, float4 minNew = 0, float4 maxNew = 1)
			{
				return minNew + (x - minOld) * (maxNew - minNew) / (maxOld - minOld);
			}
			
			float remapClamped(float minOld, float maxOld, float x, float minNew = 0, float maxNew = 1)
			{
				return clamp(minNew + (x - minOld) * (maxNew - minNew) / (maxOld - minOld), minNew, maxNew);
			}
			
			float2 remapClamped(float2 minOld, float2 maxOld, float2 x, float2 minNew, float2 maxNew)
			{
				return clamp(minNew + (x - minOld) * (maxNew - minNew) / (maxOld - minOld), minNew, maxNew);
			}
			
			float3 remapClamped(float3 minOld, float3 maxOld, float3 x, float3 minNew, float3 maxNew)
			{
				return clamp(minNew + (x - minOld) * (maxNew - minNew) / (maxOld - minOld), minNew, maxNew);
			}
			
			float4 remapClamped(float4 minOld, float4 maxOld, float4 x, float4 minNew, float4 maxNew)
			{
				return clamp(minNew + (x - minOld) * (maxNew - minNew) / (maxOld - minOld), minNew, maxNew);
			}
			float2 calcParallax(in float height, in PoiCam poiCam)
			{
				return((height * - 1) + 1) * (poiCam.tangentViewDir.xy / poiCam.tangentViewDir.z);
			}
			
			/*
			0: Zero	                float4(0.0, 0.0, 0.0, 0.0),
			1: One	                float4(1.0, 1.0, 1.0, 1.0),
			2: DstColor	            destinationColor,
			3: SrcColor	            sourceColor,
			4: OneMinusDstColor	    float4(1.0, 1.0, 1.0, 1.0) - destinationColor,
			5: SrcAlpha	            sourceColor.aaaa,
			6: OneMinusSrcColor	    float4(1.0, 1.0, 1.0, 1.0) - sourceColor,
			7: DstAlpha	            destinationColor.aaaa,
			8: OneMinusDstAlpha	    float4(1.0, 1.0, 1.0, 1.0) - destinationColor.,
			9: SrcAlphaSaturate     saturate(sourceColor.aaaa),
			10: OneMinusSrcAlpha	float4(1.0, 1.0, 1.0, 1.0) - sourceColor.aaaa,
			*/
			
			float4 poiBlend(const float sourceFactor, const  float4 sourceColor, const  float destinationFactor, const  float4 destinationColor, const float4 blendFactor)
			{
				float4 sA = 1 - blendFactor;
				const float4 blendData[11] = {
					float4(0.0, 0.0, 0.0, 0.0),
					float4(1.0, 1.0, 1.0, 1.0),
					destinationColor,
					sourceColor,
					float4(1.0, 1.0, 1.0, 1.0) - destinationColor,
					sA,
					float4(1.0, 1.0, 1.0, 1.0) - sourceColor,
					sA,
					float4(1.0, 1.0, 1.0, 1.0) - sA,
					saturate(sourceColor.aaaa),
					1 - sA,
				};
				
				return lerp(blendData[sourceFactor] * sourceColor + blendData[destinationFactor] * destinationColor, sourceColor, sA);
			}
			
			// Average
			float3 blendAverage(float3 base, float3 blend)
			{
				return(base + blend) / 2.0;
			}
			
			// Color burn
			float blendColorBurn(float base, float blend)
			{
				return(blend == 0.0)?blend : max((1.0 - ((1.0 - base) / blend)), 0.0);
			}
			
			float3 blendColorBurn(float3 base, float3 blend)
			{
				return float3(blendColorBurn(base.r, blend.r), blendColorBurn(base.g, blend.g), blendColorBurn(base.b, blend.b));
			}
			
			// Color Dodge
			float blendColorDodge(float base, float blend)
			{
				return(blend == 1.0)?blend : min(base / (1.0 - blend), 1.0);
			}
			
			float3 blendColorDodge(float3 base, float3 blend)
			{
				return float3(blendColorDodge(base.r, blend.r), blendColorDodge(base.g, blend.g), blendColorDodge(base.b, blend.b));
			}
			
			// Darken
			float blendDarken(float base, float blend)
			{
				return min(blend, base);
			}
			
			float3 blendDarken(float3 base, float3 blend)
			{
				return float3(blendDarken(base.r, blend.r), blendDarken(base.g, blend.g), blendDarken(base.b, blend.b));
			}
			
			// Exclusion
			float3 blendExclusion(float3 base, float3 blend)
			{
				return base + blend - 2.0 * base * blend;
			}
			
			// Reflect
			float blendReflect(float base, float blend)
			{
				return(blend == 1.0)?blend : min(base * base / (1.0 - blend), 1.0);
			}
			
			float3 blendReflect(float3 base, float3 blend)
			{
				return float3(blendReflect(base.r, blend.r), blendReflect(base.g, blend.g), blendReflect(base.b, blend.b));
			}
			
			// Glow
			float3 blendGlow(float3 base, float3 blend)
			{
				return blendReflect(blend, base);
			}
			
			// Overlay
			float blendOverlay(float base, float blend)
			{
				return base < 0.5?(2.0 * base * blend) : (1.0 - 2.0 * (1.0 - base) * (1.0 - blend));
			}
			
			float3 blendOverlay(float3 base, float3 blend)
			{
				return float3(blendOverlay(base.r, blend.r), blendOverlay(base.g, blend.g), blendOverlay(base.b, blend.b));
			}
			
			// Hard Light
			float3 blendHardLight(float3 base, float3 blend)
			{
				return blendOverlay(blend, base);
			}
			
			// Vivid light
			float blendVividLight(float base, float blend)
			{
				return(blend < 0.5)?blendColorBurn(base, (2.0 * blend)) : blendColorDodge(base, (2.0 * (blend - 0.5)));
			}
			
			float3 blendVividLight(float3 base, float3 blend)
			{
				return float3(blendVividLight(base.r, blend.r), blendVividLight(base.g, blend.g), blendVividLight(base.b, blend.b));
			}
			
			// Hard mix
			float blendHardMix(float base, float blend)
			{
				return(blendVividLight(base, blend) < 0.5)?0.0 : 1.0;
			}
			
			float3 blendHardMix(float3 base, float3 blend)
			{
				return float3(blendHardMix(base.r, blend.r), blendHardMix(base.g, blend.g), blendHardMix(base.b, blend.b));
			}
			
			// Lighten
			float blendLighten(float base, float blend)
			{
				return max(blend, base);
			}
			
			float3 blendLighten(float3 base, float3 blend)
			{
				return float3(blendLighten(base.r, blend.r), blendLighten(base.g, blend.g), blendLighten(base.b, blend.b));
			}
			
			// Linear Burn
			float blendLinearBurn(float base, float blend)
			{
				// Note : Same implementation as BlendSubtractf
				return max(base + blend - 1.0, 0.0);
			}
			
			float3 blendLinearBurn(float3 base, float3 blend)
			{
				// Note : Same implementation as BlendSubtract
				return max(base + blend - float3(1.0, 1.0, 1.0), float3(0.0, 0.0, 0.0));
			}
			
			// Linear Dodge
			float blendLinearDodge(float base, float blend)
			{
				// Note : Same implementation as BlendAddf
				return min(base + blend, 1.0);
			}
			
			float3 blendLinearDodge(float3 base, float3 blend)
			{
				// Note : Same implementation as BlendAdd
				return min(base + blend, float3(1.0, 1.0, 1.0));
			}
			
			// Linear light
			float blendLinearLight(float base, float blend)
			{
				return blend < 0.5?blendLinearBurn(base, (2.0 * blend)) : blendLinearDodge(base, (2.0 * (blend - 0.5)));
			}
			
			float3 blendLinearLight(float3 base, float3 blend)
			{
				return float3(blendLinearLight(base.r, blend.r), blendLinearLight(base.g, blend.g), blendLinearLight(base.b, blend.b));
			}
			
			// Multiply
			float3 blendMultiply(float3 base, float3 blend)
			{
				return base * blend;
			}
			
			// Negation
			float3 blendNegation(float3 base, float3 blend)
			{
				return float3(1.0, 1.0, 1.0) - abs(float3(1.0, 1.0, 1.0) - base - blend);
			}
			
			// Normal
			float3 blendNormal(float3 base, float3 blend)
			{
				return blend;
			}
			
			// Phoenix
			float3 blendPhoenix(float3 base, float3 blend)
			{
				return min(base, blend) - max(base, blend) + float3(1.0, 1.0, 1.0);
			}
			
			// Pin light
			float blendPinLight(float base, float blend)
			{
				return(blend < 0.5)?blendDarken(base, (2.0 * blend)) : blendLighten(base, (2.0 * (blend - 0.5)));
			}
			
			float3 blendPinLight(float3 base, float3 blend)
			{
				return float3(blendPinLight(base.r, blend.r), blendPinLight(base.g, blend.g), blendPinLight(base.b, blend.b));
			}
			
			// Screen
			float blendScreen(float base, float blend)
			{
				return 1.0 - ((1.0 - base) * (1.0 - blend));
			}
			
			float3 blendScreen(float3 base, float3 blend)
			{
				return float3(blendScreen(base.r, blend.r), blendScreen(base.g, blend.g), blendScreen(base.b, blend.b));
			}
			
			// Soft Light
			float blendSoftLight(float base, float blend)
			{
				return(blend < 0.5)?(2.0 * base * blend + base * base * (1.0 - 2.0 * blend)) : (sqrt(base) * (2.0 * blend - 1.0) + 2.0 * base * (1.0 - blend));
			}
			
			float3 blendSoftLight(float3 base, float3 blend)
			{
				return float3(blendSoftLight(base.r, blend.r), blendSoftLight(base.g, blend.g), blendSoftLight(base.b, blend.b));
			}
			
			// Subtract
			float blendSubtract(float base, float blend)
			{
				return max(base - blend, 0.0);
			}
			
			float3 blendSubtract(float3 base, float3 blend)
			{
				return max(base - blend, 0.0);
			}
			
			// Difference
			float blendDifference(float base, float blend)
			{
				return abs(base - blend);
			}
			
			float3 blendDifference(float3 base, float3 blend)
			{
				return abs(base - blend);
			}
			
			// Divide
			float blendDivide(float base, float blend)
			{
				return base / max(blend, 0.0001);
			}
			
			float3 blendDivide(float3 base, float3 blend)
			{
				return base / max(blend, 0.0001);
			}
			
			float3 customBlend(float3 base, float3 blend, float blendType)
			{
				float3 ret = 0;
				switch(blendType)
				{
					case 0:
					{
						ret = blendNormal(base, blend);
						break;
					}
					case 1:
					{
						ret = blendDarken(base, blend);
						break;
					}
					case 2:
					{
						ret = blendMultiply(base, blend);
						break;
					}
					case 3:
					{
						ret = blendColorBurn(base, blend);
						break;
					}
					case 4:
					{
						ret = blendLinearBurn(base, blend);
						break;
					}
					case 5:
					{
						ret = blendLighten(base, blend);
						break;
					}
					case 6:
					{
						ret = blendScreen(base, blend);
						break;
					}
					case 7:
					{
						ret = blendColorDodge(base, blend);
						break;
					}
					case 8:
					{
						ret = blendLinearDodge(base, blend);
						break;
					}
					case 9:
					{
						ret = blendOverlay(base, blend);
						break;
					}
					case 10:
					{
						ret = blendSoftLight(base, blend);
						break;
					}
					case 11:
					{
						ret = blendHardLight(base, blend);
						break;
					}
					case 12:
					{
						ret = blendVividLight(base, blend);
						break;
					}
					case 13:
					{
						ret = blendLinearLight(base, blend);
						break;
					}
					case 14:
					{
						ret = blendPinLight(base, blend);
						break;
					}
					case 15:
					{
						ret = blendHardMix(base, blend);
						break;
					}
					case 16:
					{
						ret = blendDifference(base, blend);
						break;
					}
					case 17:
					{
						ret = blendExclusion(base, blend);
						break;
					}
					case 18:
					{
						ret = blendSubtract(base, blend);
						break;
					}
					case 19:
					{
						ret = blendDivide(base, blend);
						break;
					}
				}
				return ret;
			}
			
			float random(float2 p)
			{
				return frac(sin(dot(p, float2(12.9898, 78.2383))) * 43758.5453123);
			}
			
			float2 random2(float2 p)
			{
				return frac(sin(float2(dot(p, float2(127.1, 311.7)), dot(p, float2(269.5, 183.3)))) * 43758.5453);
			}
			
			float3 random3(float3 p)
			{
				return frac(sin(float3(dot(p, float3(127.1, 311.7, 248.6)), dot(p, float3(269.5, 183.3, 423.3)), dot(p, float3(248.3, 315.9, 184.2)))) * 43758.5453);
			}
			
			float3 randomFloat3(float2 Seed, float maximum)
			{
				return(.5 + float3(
				frac(sin(dot(Seed.xy, float2(12.9898, 78.233))) * 43758.5453),
				frac(sin(dot(Seed.yx, float2(12.9898, 78.233))) * 43758.5453),
				frac(sin(dot(float2(Seed), float2(12.9898, 78.233))) * 43758.5453)
				) * .5) * (maximum);
			}
			
			float3 randomFloat3Range(float2 Seed, float Range)
			{
				return(float3(
				frac(sin(dot(Seed.xy, float2(12.9898, 78.233))) * 43758.5453),
				frac(sin(dot(Seed.yx, float2(12.9898, 78.233))) * 43758.5453),
				frac(sin(dot(float2(Seed.x * Seed.y, Seed.y + Seed.x), float2(12.9898, 78.233))) * 43758.5453)
				) * 2 - 1) * Range;
			}
			
			float3 randomFloat3WiggleRange(float2 Seed, float Range, float wiggleSpeed)
			{
				float3 rando = (float3(
				frac(sin(dot(Seed.xy, float2(12.9898, 78.233))) * 43758.5453),
				frac(sin(dot(Seed.yx, float2(12.9898, 78.233))) * 43758.5453),
				frac(sin(dot(float2(Seed.x * Seed.y, Seed.y + Seed.x), float2(12.9898, 78.233))) * 43758.5453)
				) * 2 - 1);
				float speed = 1 + wiggleSpeed;
				return float3(sin((_Time.x + rando.x * pi) * speed), sin((_Time.x + rando.y * pi) * speed), sin((_Time.x + rando.z * pi) * speed)) * Range;
			}
			
			void Unity_RandomRange_float(float2 Seed, float Min, float Max, out float Out)
			{
				float randomno = frac(sin(dot(Seed, float2(12.9898, 78.233))) * 43758.5453);
				Out = lerp(Min, Max, randomno);
			}
			
			//art
			
			// Based on unity shader graph code
			
			// * Adjustments * //
			
			/*
			* Channel Mixer
			*
			* Controls the amount each of the channels of input In contribute to each of the channels of output Out. The slider
			* parameters on the node control the contribution of each of the input channels. The toggle button parameters control
			* which of the output channels is currently being edited. Slider controls for editing the contribution of each input
			* channnel range between -2 and 2.
			*/
			void poiChannelMixer(float3 In, float3 _ChannelMixer_Red, float3 _ChannelMixer_Green, float3 _ChannelMixer_Blue, out float3 Out)
			{
				Out = float3(dot(In, _ChannelMixer_Red), dot(In, _ChannelMixer_Green), dot(In, _ChannelMixer_Blue));
			}
			
			/*
			* Contrast
			*
			* Adjusts the contrast of input In by the amount of input Contrast. A Contrast value of 1 will return the input
			* unaltered. A Contrast value of 0 will return the midpoint of the input
			*/
			void poiContrast(float3 In, float Contrast, out float3 Out)
			{
				float midpoint = pow(0.5, 2.2);
				Out = (In - midpoint) * Contrast + midpoint;
			}
			
			/*
			* Invert Colors
			*
			* Inverts the colors of input In on a per channel basis. This Node assumes all input values are in the range 0 - 1.
			*/
			void poiInvertColors(float4 In, float4 InvertColors, out float4 Out)
			{
				Out = abs(InvertColors - In);
			}
			
			/*
			* Replace Color
			*
			* Replaces values in input In equal to input From to the value of input To. Input Range can be used to define a
			* wider range of values around input From to replace. Input Fuzziness can be used to soften the edges around the
			* selection similar to anti-aliasing.
			*/
			void poiReplaceColor(float3 In, float3 From, float3 To, float Range, float Fuzziness, out float3 Out)
			{
				float Distance = distance(From, In);
				Out = lerp(To, In, saturate((Distance - Range) / max(Fuzziness, 0.00001)));
			}
			
			/*
			* Saturation
			*
			* Adjusts the saturation of input In by the amount of input Saturation. A Saturation value of 1 will return the input
			* unaltered. A Saturation value of 0 will return the input completely desaturated.
			*/
			void poiSaturation(float3 In, float Saturation, out float3 Out)
			{
				float luma = dot(In, float3(0.2126729, 0.7151522, 0.0721750));
				Out = luma.xxx + Saturation.xxx * (In - luma.xxx);
			}
			
			/*
			* Dither Node
			*
			* Dither is an intentional form of noise used to randomize quantization error. It is used to prevent large-scale
			* patterns such as color banding in images. The Dither node applies dithering in screen-space to ensure a uniform
			* distribution of the pattern. This can be adjusted by connecting another node to input Screen Position.
			*
			* This Node is commonly used as an input to Alpha Clip Threshold on a Master Node to give the appearance of
			* transparency to an opaque object. This is useful for creating objects that appear to be transparent but have
			* the advantages of rendering as opaque, such as writing depth and/or being rendered in deferred.
			*/
			void poiDither(float4 In, float4 ScreenPosition, out float4 Out)
			{
				float2 uv = ScreenPosition.xy * _ScreenParams.xy;
				float DITHER_THRESHOLDS[16] = {
					1.0 / 17.0, 9.0 / 17.0, 3.0 / 17.0, 11.0 / 17.0,
					13.0 / 17.0, 5.0 / 17.0, 15.0 / 17.0, 7.0 / 17.0,
					4.0 / 17.0, 12.0 / 17.0, 2.0 / 17.0, 10.0 / 17.0,
					16.0 / 17.0, 8.0 / 17.0, 14.0 / 17.0, 6.0 / 17.0
				};
				uint index = (uint(uv.x) % 4) * 4 + uint(uv.y) % 4;
				Out = In - DITHER_THRESHOLDS[index];
			}
			
			/*
			* Color Mask
			*
			* Creates a mask from values in input In equal to input Mask Color. Input Range can be used to define a wider
			* range of values around input Mask Color to create the mask. Colors within this range will return 1,
			* otherwise the node will return 0. Input Fuzziness can be used to soften the edges around the selection
			* similar to anti-aliasing.
			*/
			void poiColorMask(float3 In, float3 MaskColor, float Range, float Fuzziness, out float4 Out)
			{
				float Distance = distance(MaskColor, In);
				Out = saturate(1 - (Distance - Range) / max(Fuzziness, 0.00001));
			}
			
			float3 hueShift(float3 color, float Offset)
			{
				float4 K = float4(0.0, -1.0 / 3.0, 2.0 / 3.0, -1.0);
				float4 P = lerp(float4(color.bg, K.wz), float4(color.gb, K.xy), step(color.b, color.g));
				float4 Q = lerp(float4(P.xyw, color.r), float4(color.r, P.yzx), step(P.x, color.r));
				float D = Q.x - min(Q.w, Q.y);
				float E = 0.0000000001;
				float3 hsv = float3(abs(Q.z + (Q.w - Q.y) / (6.0 * D + E)), D / (Q.x + E), Q.x);
				
				float hue = hsv.x + Offset;
				hsv.x = frac(hue);
				
				float4 K2 = float4(1.0, 2.0 / 3.0, 1.0 / 3.0, 3.0);
				float3 P2 = abs(frac(hsv.xxx + K2.xyz) * 6.0 - K2.www);
				return hsv.z * lerp(K2.xxx, saturate(P2 - K2.xxx), hsv.y);
			}
			
			static const float Epsilon = 1e-10;
			// The weights of RGB contributions to luminance.
			// Should sum to unity.
			static const float3 HCYwts = float3(0.299, 0.587, 0.114);
			static const float HCLgamma = 3;
			static const float HCLy0 = 100;
			static const float HCLmaxL = 0.530454533953517; // == exp(HCLgamma / HCLy0) - 0.5
			static const float3 wref = float3(1.0, 1.0, 1.0);
			#define TAU 6.28318531
			
			float3 HUEtoRGB(in float H)
			{
				float R = abs(H * 6 - 3) - 1;
				float G = 2 - abs(H * 6 - 2);
				float B = 2 - abs(H * 6 - 4);
				return saturate(float3(R, G, B));
			}
			
			float3 RGBtoHCV(in float3 RGB)
			{
				// Based on work by Sam Hocevar and Emil Persson
				float4 P = (RGB.g < RGB.b) ? float4(RGB.bg, -1.0, 2.0 / 3.0) : float4(RGB.gb, 0.0, -1.0 / 3.0);
				float4 Q = (RGB.r < P.x) ? float4(P.xyw, RGB.r) : float4(RGB.r, P.yzx);
				float C = Q.x - min(Q.w, Q.y);
				float H = abs((Q.w - Q.y) / (6 * C + Epsilon) + Q.z);
				return float3(H, C, Q.x);
			}
			
			float3 HSVtoRGB(in float3 HSV)
			{
				float3 RGB = HUEtoRGB(HSV.x);
				return((RGB - 1) * HSV.y + 1) * HSV.z;
			}
			
			float3 RGBtoHSV(in float3 RGB)
			{
				float3 HCV = RGBtoHCV(RGB);
				float S = HCV.y / (HCV.z + Epsilon);
				return float3(HCV.x, S, HCV.z);
			}
			
			float3 HSLtoRGB(in float3 HSL)
			{
				float3 RGB = HUEtoRGB(HSL.x);
				float C = (1 - abs(2 * HSL.z - 1)) * HSL.y;
				return(RGB - 0.5) * C + HSL.z;
			}
			
			float3 RGBtoHSL(in float3 RGB)
			{
				float3 HCV = RGBtoHCV(RGB);
				float L = HCV.z - HCV.y * 0.5;
				float S = HCV.y / (1 - abs(L * 2 - 1) + Epsilon);
				return float3(HCV.x, S, L);
			}
			
			float3 HCYtoRGB(in float3 HCY)
			{
				
				float3 RGB = HUEtoRGB(HCY.x);
				float Z = dot(RGB, HCYwts);
				if (HCY.z < Z)
				{
					HCY.y *= HCY.z / Z;
				}
				else if (Z < 1)
				{
					HCY.y *= (1 - HCY.z) / (1 - Z);
				}
				return(RGB - Z) * HCY.y + HCY.z;
			}
			
			float3 RGBtoHCY(in float3 RGB)
			{
				// Corrected by David Schaeffer
				float3 HCV = RGBtoHCV(RGB);
				float Y = dot(RGB, HCYwts);
				float Z = dot(HUEtoRGB(HCV.x), HCYwts);
				if (Y < Z)
				{
					HCV.y *= Z / (Epsilon + Y);
				}
				else
				{
					HCV.y *= (1 - Z) / (Epsilon + 1 - Y);
				}
				return float3(HCV.x, HCV.y, Y);
			}
			
			float3 HCLtoRGB(in float3 HCL)
			{
				float3 RGB = 0;
				if (HCL.z != 0)
				{
					float H = HCL.x;
					float C = HCL.y;
					float L = HCL.z * HCLmaxL;
					float Q = exp((1 - C / (2 * L)) * (HCLgamma / HCLy0));
					float U = (2 * L - C) / (2 * Q - 1);
					float V = C / Q;
					float A = (H + min(frac(2 * H) / 4, frac(-2 * H) / 8)) * pi * 2;
					float T;
					H *= 6;
					if (H <= 0.999)
					{
						T = tan(A);
						RGB.r = 1;
						RGB.g = T / (1 + T);
					}
					else if (H <= 1.001)
					{
						RGB.r = 1;
						RGB.g = 1;
					}
					else if (H <= 2)
					{
						T = tan(A);
						RGB.r = (1 + T) / T;
						RGB.g = 1;
					}
					else if (H <= 3)
					{
						T = tan(A);
						RGB.g = 1;
						RGB.b = 1 + T;
					}
					else if (H <= 3.999)
					{
						T = tan(A);
						RGB.g = 1 / (1 + T);
						RGB.b = 1;
					}
					else if (H <= 4.001)
					{
						RGB.g = 0;
						RGB.b = 1;
					}
					else if (H <= 5)
					{
						T = tan(A);
						RGB.r = -1 / T;
						RGB.b = 1;
					}
					else
					{
						T = tan(A);
						RGB.r = 1;
						RGB.b = -T;
					}
					RGB = RGB * V + U;
				}
				return RGB;
			}
			
			float3 RGBtoHCL(in float3 RGB)
			{
				float3 HCL;
				float H = 0;
				float U = min(RGB.r, min(RGB.g, RGB.b));
				float V = max(RGB.r, max(RGB.g, RGB.b));
				float Q = HCLgamma / HCLy0;
				HCL.y = V - U;
				if (HCL.y != 0)
				{
					H = atan2(RGB.g - RGB.b, RGB.r - RGB.g) / pi;
					Q *= U / V;
				}
				Q = exp(Q);
				HCL.x = frac(H / 2 - min(frac(H), frac(-H)) / 6);
				HCL.y *= Q;
				HCL.z = lerp(-U, V, Q) / (HCLmaxL * 2);
				return HCL;
			}
			
			//HSL MODIFT
			float3 ModifyViaHSL(float3 color, float3 HSLMod)
			{
				float3 colorHSL = RGBtoHSL(color);
				colorHSL.r = frac(colorHSL.r + HSLMod.r);
				colorHSL.g = saturate(colorHSL.g + HSLMod.g);
				colorHSL.b = saturate(colorHSL.b + HSLMod.b);
				return HSLtoRGB(colorHSL);
			}
			
			float3 poiSaturation(float3 In, float Saturation)
			{
				float luma = dot(In, float3(0.2126729, 0.7151522, 0.0721750));
				return luma.xxx + Saturation.xxx * (In - luma.xxx);
			}
			// LCH
			float xyzF(float t)
			{
				return lerp(pow(t, 1. / 3.), 7.787037 * t + 0.139731, step(t, 0.00885645));
			}
			float xyzR(float t)
			{
				return lerp(t * t * t, 0.1284185 * (t - 0.139731), step(t, 0.20689655));
			}
			float3 rgb2lch(in float3 c)
			{
				c = mul(float3x3(0.4124, 0.3576, 0.1805,
				0.2126, 0.7152, 0.0722,
				0.0193, 0.1192, 0.9505), c);
				c.x = xyzF(c.x / wref.x);
				c.y = xyzF(c.y / wref.y);
				c.z = xyzF(c.z / wref.z);
				float3 lab = float3(max(0., 116.0 * c.y - 16.0), 500.0 * (c.x - c.y), 200.0 * (c.y - c.z));
				return float3(lab.x, length(float2(lab.y, lab.z)), atan2(lab.z, lab.y));
			}
			
			float3 lch2rgb(in float3 c)
			{
				c = float3(c.x, cos(c.z) * c.y, sin(c.z) * c.y);
				
				float lg = 1. / 116. * (c.x + 16.);
				float3 xyz = float3(wref.x * xyzR(lg + 0.002 * c.y),
				wref.y * xyzR(lg),
				wref.z * xyzR(lg - 0.005 * c.z));
				
				float3 rgb = mul(float3x3(3.2406, -1.5372, -0.4986,
				- 0.9689, 1.8758, 0.0415,
				0.0557, -0.2040, 1.0570), xyz);
				
				return rgb;
			}
			
			//cheaply lerp around a circle
			float lerpAng(in float a, in float b, in float x)
			{
				float ang = fmod(fmod((a - b), TAU) + pi * 3., TAU) - pi;
				return ang * x + b;
			}
			
			//Linear interpolation between two colors in Lch space
			float3 lerpLch(in float3 a, in float3 b, in float x)
			{
				float hue = lerpAng(a.z, b.z, x);
				return float3(lerp(b.xy, a.xy, x), hue);
			}
			
			float3 poiExpensiveColorBlend(float3 col1, float3 col2, float alpha)
			{
				return lch2rgb(lerpLch(rgb2lch(col1), rgb2lch(col2), alpha));
			}
			
			float4x4 poiAngleAxisRotationMatrix(float angle, float3 axis)
			{
				axis = normalize(axis);
				float s = sin(angle);
				float c = cos(angle);
				float oc = 1.0 - c;
				
				return float4x4(oc * axis.x * axis.x + c, oc * axis.x * axis.y - axis.z * s, oc * axis.z * axis.x + axis.y * s, 0.0,
				oc * axis.x * axis.y + axis.z * s, oc * axis.y * axis.y + c, oc * axis.y * axis.z - axis.x * s, 0.0,
				oc * axis.z * axis.x - axis.y * s, oc * axis.y * axis.z + axis.x * s, oc * axis.z * axis.z + c, 0.0,
				0.0, 0.0, 0.0, 1.0);
			}
			
			float4x4 poiRotationMatrixFromAngles(float x, float y, float z)
			{
				float angleX = radians(x);
				float c = cos(angleX);
				float s = sin(angleX);
				float4x4 rotateXMatrix = float4x4(1, 0, 0, 0,
				0, c, -s, 0,
				0, s, c, 0,
				0, 0, 0, 1);
				
				float angleY = radians(y);
				c = cos(angleY);
				s = sin(angleY);
				float4x4 rotateYMatrix = float4x4(c, 0, s, 0,
				0, 1, 0, 0,
				- s, 0, c, 0,
				0, 0, 0, 1);
				
				float angleZ = radians(z);
				c = cos(angleZ);
				s = sin(angleZ);
				float4x4 rotateZMatrix = float4x4(c, -s, 0, 0,
				s, c, 0, 0,
				0, 0, 1, 0,
				0, 0, 0, 1);
				
				return mul(mul(rotateXMatrix, rotateYMatrix), rotateZMatrix);
			}
			
			float4x4 poiRotationMatrixFromAngles(float3 angles)
			{
				float angleX = radians(angles.x);
				float c = cos(angleX);
				float s = sin(angleX);
				float4x4 rotateXMatrix = float4x4(1, 0, 0, 0,
				0, c, -s, 0,
				0, s, c, 0,
				0, 0, 0, 1);
				
				float angleY = radians(angles.y);
				c = cos(angleY);
				s = sin(angleY);
				float4x4 rotateYMatrix = float4x4(c, 0, s, 0,
				0, 1, 0, 0,
				- s, 0, c, 0,
				0, 0, 0, 1);
				
				float angleZ = radians(angles.z);
				c = cos(angleZ);
				s = sin(angleZ);
				float4x4 rotateZMatrix = float4x4(c, -s, 0, 0,
				s, c, 0, 0,
				0, 0, 1, 0,
				0, 0, 0, 1);
				
				return mul(mul(rotateXMatrix, rotateYMatrix), rotateZMatrix);
			}
			
			float3 getCameraPosition()
			{
				#ifdef USING_STEREO_MATRICES
				return lerp(unity_StereoWorldSpaceCameraPos[0], unity_StereoWorldSpaceCameraPos[1], 0.5);
				#endif
				return _WorldSpaceCameraPos;
			}
			
			half2 calcScreenUVs(half4 grabPos)
			{
				half2 uv = grabPos.xy / (grabPos.w + 0.0000000001);
				#if UNITY_SINGLE_PASS_STEREO
				uv.xy *= half2(_ScreenParams.x * 2, _ScreenParams.y);
				#else
				uv.xy *= _ScreenParams.xy;
				#endif
				
				return uv;
			}
			
			float CalcMipLevel(float2 texture_coord)
			{
				float2 dx = ddx(texture_coord);
				float2 dy = ddy(texture_coord);
				float delta_max_sqr = max(dot(dx, dx), dot(dy, dy));
				
				return 0.5 * log2(delta_max_sqr);
			}
			
			inline float4 CalculateFrustumCorrection()
			{
				float x1 = -UNITY_MATRIX_P._31 / (UNITY_MATRIX_P._11 * UNITY_MATRIX_P._34);
				float x2 = -UNITY_MATRIX_P._32 / (UNITY_MATRIX_P._22 * UNITY_MATRIX_P._34);
				return float4(x1, x2, 0, UNITY_MATRIX_P._33 / UNITY_MATRIX_P._34 + x1 * UNITY_MATRIX_P._13 + x2 * UNITY_MATRIX_P._23);
			}
			
			float inverseLerp(float A, float B, float T)
			{
				return(T - A) / (B - A);
			}
			
			float inverseLerp2(float2 a, float2 b, float2 value)
			{
				float2 AB = b - a;
				float2 AV = value - a;
				return dot(AV, AB) / dot(AB, AB);
			}
			
			float inverseLerp3(float3 a, float3 b, float3 value)
			{
				float3 AB = b - a;
				float3 AV = value - a;
				return dot(AV, AB) / dot(AB, AB);
			}
			
			float inverseLerp4(float4 a, float4 b, float4 value)
			{
				float4 AB = b - a;
				float4 AV = value - a;
				return dot(AV, AB) / dot(AB, AB);
			}
			
			/*
			MIT License
			
			Copyright (c) 2019 wraikny
			
			Permission is hereby granted, free of charge, to any person obtaining a copy
			of this software and associated documentation files (the "Software"), to deal
			in the Software without restriction, including without limitation the rights
			to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
			copies of the Software, and to permit persons to whom the Software is
			furnished to do so, subject to the following conditions:
			
			The above copyright notice and this permission notice shall be included in all
			copies or substantial portions of the Software.
			
			THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
			IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
			FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
			AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
			LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
			OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
			SOFTWARE.
			
			VertexTransformShader is dependent on:
			*/
			
			float4 quaternion_conjugate(float4 v)
			{
				return float4(
				v.x, -v.yzw
				);
			}
			
			float4 quaternion_mul(float4 v1, float4 v2)
			{
				float4 result1 = (v1.x * v2 + v1 * v2.x);
				
				float4 result2 = float4(
				- dot(v1.yzw, v2.yzw),
				cross(v1.yzw, v2.yzw)
				);
				
				return float4(result1 + result2);
			}
			
			// angle : radians
			float4 get_quaternion_from_angle(float3 axis, float angle)
			{
				float sn = sin(angle * 0.5);
				float cs = cos(angle * 0.5);
				return float4(axis * sn, cs);
			}
			
			float4 quaternion_from_vector(float3 inVec)
			{
				return float4(0.0, inVec);
			}
			
			float degree_to_radius(float degree)
			{
				return(
				degree / 180.0 * pi
				);
			}
			
			float3 rotate_with_quaternion(float3 inVec, float3 rotation)
			{
				float4 qx = get_quaternion_from_angle(float3(1, 0, 0), radians(rotation.x));
				float4 qy = get_quaternion_from_angle(float3(0, 1, 0), radians(rotation.y));
				float4 qz = get_quaternion_from_angle(float3(0, 0, 1), radians(rotation.z));
				
				#define MUL3(A, B, C) quaternion_mul(quaternion_mul((A), (B)), (C))
				float4 quaternion = normalize(MUL3(qx, qy, qz));
				float4 conjugate = quaternion_conjugate(quaternion);
				
				float4 inVecQ = quaternion_from_vector(inVec);
				
				float3 rotated = (
				MUL3(quaternion, inVecQ, conjugate)
				).yzw;
				
				return rotated;
			}
			
			float4 transform(float4 input, float4 pos, float4 rotation, float4 scale)
			{
				input.rgb *= (scale.xyz * scale.w);
				input = float4(rotate_with_quaternion(input.xyz, rotation.xyz * rotation.w) + (pos.xyz * pos.w), input.w);
				return input;
			}
			
			/*
			MIT END
			*/
			
			float aaBlurStep(float gradient, float edge, float blur)
			{
				float edgeMin = saturate(edge);
				float edgeMax = saturate(edge + blur * (1 - edge));
				return smoothstep(0, 1, saturate((gradient - edgeMin) / saturate(edgeMax - edgeMin + fwidth(gradient))));
			}
			
			float3 poiThemeColor(in PoiMods poiMods, in float3 srcColor, in float themeIndex)
			{
				if (themeIndex == 0) return srcColor;
				themeIndex -= 1;
				
				if (themeIndex <= 3)
				{
					return poiMods.globalColorTheme[themeIndex];
				}
				
				#ifdef COLOR_GRADING_LOG_VIEW
				if (poiMods.audioLinkAvailable)
				{
					return poiMods.globalColorTheme[themeIndex];
				}
				#endif
				
				return srcColor;
			}
			#ifdef COLOR_GRADING_LOG_VIEW
			
			// Convenient mechanism to read from the AudioLink texture that handles reading off the end of one line and onto the next above it.
			float4 AudioLinkDataMultiline(uint2 xycoord) { return AudioLinkData(uint2(xycoord.x % AUDIOLINK_WIDTH, xycoord.y + xycoord.x/AUDIOLINK_WIDTH)); }
			
			// Mechanism to sample between two adjacent pixels and lerp between them, like "linear" supesampling
			float4 AudioLinkLerp(float2 xy) { return lerp( AudioLinkData(xy), AudioLinkData(xy+int2(1,0)), frac( xy.x ) ); }
			
			// Same as AudioLinkLerp but properly handles multiline reading.
			float4 AudioLinkLerpMultiline(float2 xy) { return lerp(AudioLinkDataMultiline(xy), AudioLinkDataMultiline(xy+float2(1,0)), frac(xy.x)); }
			
			//Tests to see if Audio Link texture is available
			bool AudioLinkIsAvailable()
			{
				#if !defined(AUDIOLINK_STANDARD_INDEXING)
				int width, height;
				_AudioTexture.GetDimensions(width, height);
				return width > 16;
				#else
				return _AudioTexture_TexelSize.z > 16;
				#endif
			}
			
			//Get version of audiolink present in the world, 0 if no audiolink is present
			float AudioLinkGetVersion()
			{
				int2 dims;
				#if !defined(AUDIOLINK_STANDARD_INDEXING)
				_AudioTexture.GetDimensions(dims.x, dims.y);
				#else
				dims = _AudioTexture_TexelSize.zw;
				#endif
				
				if (dims.x >= 128)
				return AudioLinkData(ALPASS_GENERALVU).x;
				else if (dims.x > 16)
				return 1;
				else
				return 0;
			}
			
			// This pulls data from this texture.
			#define AudioLinkGetSelfPixelData(xy) _SelfTexture2D[xy]
			
			// Extra utility functions for time.
			uint AudioLinkDecodeDataAsUInt(uint2 indexloc)
			{
				uint4 rpx = AudioLinkData(indexloc);
				return rpx.r + rpx.g*1024 + rpx.b * 1048576 + rpx.a * 1073741824;
			}
			
			//Note: This will truncate time to every 134,217.728 seconds (~1.5 days of an instance being up) to prevent floating point aliasing.
			// if your code will alias sooner, you will need to use a different function.  It should be safe to use this on all times.
			float AudioLinkDecodeDataAsSeconds(uint2 indexloc)
			{
				uint time = AudioLinkDecodeDataAsUInt(indexloc) & 0x7ffffff;
				//Can't just divide by float.  Bug in Unity's HLSL compiler.
				return float(time / 1000) + float( time % 1000 ) / 1000.;
			}
			
			#define ALDecodeDataAsSeconds( x ) AudioLinkDecodeDataAsSeconds( x )
			#define ALDecodeDataAsUInt( x ) AudioLinkDecodeDataAsUInt( x )
			
			float AudioLinkRemap(float t, float a, float b, float u, float v) { return ((t-a) / (b-a)) * (v-u) + u; }
			
			float3 AudioLinkHSVtoRGB(float3 HSV)
			{
				float3 RGB = 0;
				float C = HSV.z * HSV.y;
				float H = HSV.x * 6;
				float X = C * (1 - abs(fmod(H, 2) - 1));
				if (HSV.y != 0)
				{
					float I = floor(H);
					if (I == 0) { RGB = float3(C, X, 0); }
					else if (I == 1) { RGB = float3(X, C, 0); }
					else if (I == 2) { RGB = float3(0, C, X); }
					else if (I == 3) { RGB = float3(0, X, C); }
					else if (I == 4) { RGB = float3(X, 0, C); }
					else { RGB = float3(C, 0, X); }
				}
				float M = HSV.z - C;
				return RGB + M;
			}
			
			float3 AudioLinkCCtoRGB(float bin, float intensity, int rootNote)
			{
				float note = bin / AUDIOLINK_EXPBINS;
				
				float hue = 0.0;
				note *= 12.0;
				note = glsl_mod(4. - note + rootNote, 12.0);
				{
					if(note < 4.0)
					{
						//Needs to be YELLOW->RED
						hue = (note) / 24.0;
					}
					else if(note < 8.0)
					{
						//            [4]  [8]
						//Needs to be RED->BLUE
						hue = (note-2.0) / 12.0;
					}
					else
					{
						//             [8] [12]
						//Needs to be BLUE->YELLOW
						hue = (note - 4.0) / 8.0;
					}
				}
				float val = intensity - 0.1;
				return AudioLinkHSVtoRGB(float3(fmod(hue, 1.0), 1.0, clamp(val, 0.0, 1.0)));
			}
			
			// Sample the amplitude of a given frequency in the DFT, supports frequencies in [13.75; 14080].
			float4 AudioLinkGetAmplitudeAtFrequency(float hertz)
			{
				float note = AUDIOLINK_EXPBINS * log2(hertz / AUDIOLINK_BOTTOM_FREQUENCY);
				return AudioLinkLerpMultiline(ALPASS_DFT + float2(note, 0));
			}
			
			// Sample the amplitude of a given semitone in an octave. Octave is in [0; 9] while note is [0; 11].
			float AudioLinkGetAmplitudeAtNote(float octave, float note)
			{
				float quarter = note * 2.0;
				return AudioLinkLerpMultiline(ALPASS_DFT + float2(octave * AUDIOLINK_EXPBINS + quarter, 0));
			}
			
			// Get a reasonable drop-in replacement time value for _Time.y with the
			// given chronotensity index [0; 7] and AudioLink band [0; 3].
			float AudioLinkGetChronoTime(uint index, uint band)
			{
				return (AudioLinkDecodeDataAsUInt(ALPASS_CHRONOTENSITY + uint2(index, band))) / 100000.0;
			}
			
			// Get a chronotensity value in the interval [0; 1], modulated by the speed input,
			// with the given chronotensity index [0; 7] and AudioLink band [0; 3].
			float AudioLinkGetChronoTimeNormalized(uint index, uint band, float speed)
			{
				return frac(AudioLinkGetChronoTime(index, band) * speed);
			}
			
			// Get a chronotensity value in the interval [0; interval], modulated by the speed input,
			// with the given chronotensity index [0; 7] and AudioLink band [0; 3].
			float AudioLinkGetChronoTimeInterval(uint index, uint band, float speed, float interval)
			{
				return AudioLinkGetChronoTimeNormalized(index, band, speed) * interval;
			}
			
			float getBandAtTime(float band, float time, float width, float size = 1.0f)
			{
				//return remap(UNITY_SAMPLE_TEX2D(_AudioTexture, float2(time * width, band/128.0)).r, min(size,.9999), 1);
				return remapClamped(min(size,.9999), 1, AudioLinkData(ALPASS_AUDIOBASS + uint2(time * AUDIOLINK_WIDTH,band)).r);
			}
			
			fixed3 maximize(fixed3 c) {
				if (c.x == 0 && c.y == 0 && c.z == 0)
				return fixed3(1.0, 1.0, 1.0);
				else
				return c / max(c.r, max(c.g, c.b));
			}
			
			void initPoiAudioLink(inout PoiMods poiMods)
			{
				poiMods.audioLinkAvailable = AudioLinkIsAvailable();
				poiMods.audioLinkAvailable *= _AudioLinkAnimToggle;
				
				if (poiMods.audioLinkAvailable)
				{
					poiMods.audioLinkVersion = AudioLinkGetVersion();
					poiMods.audioLink.x = AudioLinkData(ALPASS_AUDIOBASS).r;
					poiMods.audioLink.y = AudioLinkData(ALPASS_AUDIOLOWMIDS).r;
					poiMods.audioLink.z = AudioLinkData(ALPASS_AUDIOHIGHMIDS).r;
					poiMods.audioLink.w = AudioLinkData(ALPASS_AUDIOTREBLE).r;
					
					/*
					poiMods.globalColorTheme[4] = AudioLinkData( ALPASS_CCCOLORS + uint2( 0, 0 ) );
					poiMods.globalColorTheme[5] = AudioLinkData( ALPASS_CCCOLORS + uint2( 1, 0 ) );
					poiMods.globalColorTheme[6] = AudioLinkData( ALPASS_CCCOLORS + uint2( 2, 0 ) );
					poiMods.globalColorTheme[7] = AudioLinkData( ALPASS_CCCOLORS + uint2( 3, 0 ) );
					
					poiMods.globalColorTheme[4] =  float4(maximize(AudioLinkData( ALPASS_CCCOLORS + uint2( 0, 0 ) )),1.0);
					poiMods.globalColorTheme[5] =  float4(maximize(AudioLinkData( ALPASS_CCCOLORS + uint2( 1, 0 ) )),1.0);
					poiMods.globalColorTheme[6] =  float4(maximize(AudioLinkData( ALPASS_CCCOLORS + uint2( 2, 0 ) )),1.0);
					poiMods.globalColorTheme[7] =  float4(maximize(AudioLinkData( ALPASS_CCCOLORS + uint2( 3, 0 ) )),1.0);
					*/
					
					poiMods.globalColorTheme[4] =  float4(AudioLinkCCtoRGB(glsl_mod(AudioLinkData(ALPASS_CCINTERNAL + uint2(2, 0)).x, AUDIOLINK_EXPBINS), 1, AUDIOLINK_ROOTNOTE), 1.0);
					poiMods.globalColorTheme[5] =  float4(AudioLinkCCtoRGB(glsl_mod(AudioLinkData(ALPASS_CCINTERNAL + uint2(3, 0)).x, AUDIOLINK_EXPBINS), 1, AUDIOLINK_ROOTNOTE), 1.0);
					poiMods.globalColorTheme[6] =  float4(AudioLinkCCtoRGB(glsl_mod(AudioLinkData(ALPASS_CCINTERNAL + uint2(4, 0)).x, AUDIOLINK_EXPBINS), 1, AUDIOLINK_ROOTNOTE), 1.0);
					poiMods.globalColorTheme[7] =  float4(AudioLinkCCtoRGB(glsl_mod(AudioLinkData(ALPASS_CCINTERNAL + uint2(5, 0)).x, AUDIOLINK_EXPBINS), 1, AUDIOLINK_ROOTNOTE), 1.0);
					
					poiMods.globalColorTheme[8] = AudioLinkData(ALPASS_THEME_COLOR0);
					poiMods.globalColorTheme[9] = AudioLinkData(ALPASS_THEME_COLOR1);
					poiMods.globalColorTheme[10] = AudioLinkData(ALPASS_THEME_COLOR2);
					poiMods.globalColorTheme[11] = AudioLinkData(ALPASS_THEME_COLOR3);
				}
			}
			
			void DebugVisualizer(inout PoiFragData poiFragData, in PoiMesh poiMesh, in PoiMods poiMods){
				if (_DebugWaveform){
					float waveform = AudioLinkLerpMultiline(ALPASS_WAVEFORM + float2( 500. * poiMesh.uv[0].x, 0)).r;
					poiFragData.emission += clamp(1 - 50 * abs(waveform - poiMesh.uv[0].y * 2. + 1), 0, 1);
				}
				if (_DebugDFT){
					poiFragData.emission += AudioLinkLerpMultiline(ALPASS_DFT + uint2(poiMesh.uv[0].x * AUDIOLINK_ETOTALBINS, 0)).rrr;
				}
				if (_DebugBass){
					poiFragData.emission += poiMods.audioLink.x;
				}
				if (_DebugLowMids){
					poiFragData.emission += poiMods.audioLink.y;
				}
				if (_DebugHighMids){
					poiFragData.emission += poiMods.audioLink.z;
				}
				if (_DebugTreble){
					poiFragData.emission += poiMods.audioLink.w;
				}
				if (_DebugCCColors){
					poiFragData.emission += AudioLinkData(ALPASS_CCCOLORS + uint2(3 + 1, 0));
				}
				if (_DebugCCStrip){
					poiFragData.emission += AudioLinkLerp(ALPASS_CCSTRIP + float2(poiMesh.uv[0].x * AUDIOLINK_WIDTH, 0));
				}
				if (_DebugCCLights){
					poiFragData.emission += AudioLinkData(ALPASS_CCLIGHTS + uint2(uint(poiMesh.uv[0].x * 8) + uint(poiMesh.uv[0].y * 16) * 8, 0));
				}
				if (_DebugAutocorrelator){
					poiFragData.emission += saturate(AudioLinkLerp(ALPASS_AUTOCORRELATOR + float2((abs(1. - poiMesh.uv[0].x * 2.)) * AUDIOLINK_WIDTH, 0)).rrr);
				}
				if (_DebugChronotensity){
					poiFragData.emission += (AudioLinkDecodeDataAsUInt(ALPASS_CHRONOTENSITY  + uint2(1, 0)) % 1000000) / 1000000.0;
				}
			}
			
			void SetupAudioLink(inout PoiFragData poiFragData, inout PoiMods poiMods, in PoiMesh poiMesh){
				initPoiAudioLink(poiMods);
				DebugVisualizer(poiFragData, poiMesh, poiMods);
				
				if(_AudioLinkCCStripY)
				{
					poiFragData.emission += AudioLinkLerp( ALPASS_CCSTRIP + float2( poiMesh.uv[0].y * AUDIOLINK_WIDTH, 0 ) ).rgb * .5;
				}
			}
			
			#endif
			
			v2f vert(appdata v)
			{
				UNITY_SETUP_INSTANCE_ID(v);
				v2f o;
				PoiInitStruct(v2f, o);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);
				
				#ifdef POI_UDIMDISCARD
				UNITY_BRANCH
				if(_UDIMDiscardMode == 0) // Discard Vertices instead of just pixels
				{
					// Branchless (inspired by s-ilent)
					float2 udim = 0;
					// Select UV
					udim += (v.uv0.xy * (_UDIMDiscardUV == 0));
					udim += (v.uv1.xy * (_UDIMDiscardUV == 1));
					udim += (v.uv2.xy * (_UDIMDiscardUV == 2));
					udim += (v.uv3.xy * (_UDIMDiscardUV == 3));
					
					float isRendered = 0;
					float4 xMask = float4(  (udim.x >= 0 && udim.x < 1),
					(udim.x >= 1 && udim.x < 2),
					(udim.x >= 2 && udim.x < 3),
					(udim.x >= 3 && udim.x < 4));
					
					isRendered += (udim.y >= 0 && udim.y < 1) * dot(_UDIMDiscardRow0, xMask);
					isRendered += (udim.y >= 1 && udim.y < 2) * dot(_UDIMDiscardRow1, xMask);
					isRendered += (udim.y >= 2 && udim.y < 3) * dot(_UDIMDiscardRow2, xMask);
					isRendered += (udim.y >= 3 && udim.y < 4) * dot(_UDIMDiscardRow3, xMask);
					isRendered += (udim.y < 0 || udim.y >= 4) + (udim.x < 0 || udim.x >= 4); // never discard outside 4x4 grid in pos coords
					
					if(!isRendered) v.vertex = 0.0/0.0; // NaN position to discard; GPU discards degenerate geometry. thanks bgolus
				}
				#endif
				
				#ifdef AUTO_EXPOSURE
				float4 audioLinkBands = 0;
				float3 ALrotation = 0;
				float3 ALLocalTranslation = 0;
				float3 CTALRotation = 0;
				float3 ALScale = 0;
				float3 ALWorldTranslation = 0;
				float ALHeight = 0;
				float ALRoundingAmount = 0;
				#ifdef COLOR_GRADING_LOG_VIEW
				if (AudioLinkIsAvailable())
				{
					audioLinkBands.x = AudioLinkData(ALPASS_AUDIOBASS).r;
					audioLinkBands.y = AudioLinkData(ALPASS_AUDIOLOWMIDS).r;
					audioLinkBands.z = AudioLinkData(ALPASS_AUDIOHIGHMIDS).r;
					audioLinkBands.w = AudioLinkData(ALPASS_AUDIOTREBLE).r;
					
					if(any(_VertexLocalTranslationALMin) || any(_VertexLocalTranslationALMax))
					{
						ALLocalTranslation = lerp(_VertexLocalTranslationALMin, _VertexLocalTranslationALMax, audioLinkBands[_VertexLocalTranslationALBand]);
					}
					if(any(_VertexLocalRotationAL))
					{
						ALrotation = audioLinkBands[_VertexLocalRotationALBand] * _VertexLocalRotationAL;
					}
					if(any(_VertexLocalRotationCTALSpeed))
					{
						CTALRotation = AudioLinkGetChronoTime(_VertexLocalRotationCTALType, _VertexLocalRotationCTALBand) * _VertexLocalRotationCTALSpeed * 360;
					}
					if(any(_VertexLocalScaleALMin) || any(_VertexLocalScaleALMax))
					{
						ALScale = lerp(_VertexLocalScaleALMin.xyz + _VertexLocalScaleALMin.w, _VertexLocalScaleALMax.xyz + _VertexLocalScaleALMax.w, audioLinkBands[_VertexLocalScaleALBand]);
					}
					if(any(_VertexWorldTranslationALMin) || any(_VertexWorldTranslationALMax))
					{
						ALWorldTranslation = lerp(_VertexWorldTranslationALMin, _VertexWorldTranslationALMax, audioLinkBands[_VertexWorldTranslationALBand]);
					}
					if(any(_VertexManipulationHeightAL))
					{
						ALHeight = lerp(_VertexManipulationHeightAL.x , _VertexManipulationHeightAL.y, audioLinkBands[_VertexManipulationHeightBand]);
					}
					if(any(_VertexRoundingRangeAL))
					{
						ALRoundingAmount = lerp(_VertexRoundingRangeAL.x, _VertexRoundingRangeAL.y, audioLinkBands[_VertexRoundingRangeBand]);
					}
				}
				#endif
				
				// Local Transformation
				float4 rotation = float4(_VertexManipulationLocalRotation.xyz + float3(180,0,0) + _VertexManipulationLocalRotationSpeed * _Time.x + ALrotation + CTALRotation, _VertexManipulationLocalRotation.w);
				v.normal = rotate_with_quaternion(v.normal, rotation.xyz);
				v.tangent.xyz = rotate_with_quaternion(v.tangent.xyz, rotation.xyz);
				v.vertex = transform(v.vertex, _VertexManipulationLocalTranslation + float4(ALLocalTranslation,0), rotation, _VertexManipulationLocalScale + float4(ALScale,0));
				o.normal = UnityObjectToWorldNormal(v.normal);
				
				#if defined(PROP_VERTEXMANIPULATIONHEIGHTMASK) || !defined(OPTIMIZER_ENABLED)
				float3 heightOffset = (tex2Dlod(_VertexManipulationHeightMask, float4(poiUV(v.uv0, _VertexManipulationHeightMask_ST) + _VertexManipulationHeightMaskPan * _Time.x, 0, 0)).r - _VertexManipulationHeightBias) * (_VertexManipulationHeight + ALHeight) * o.normal;
				#else
				float3 heightOffset = (_VertexManipulationHeight + ALHeight) * o.normal;
				#endif
				
				v.vertex.xyz += mul(unity_WorldToObject, _VertexManipulationWorldTranslation.xyz + ALWorldTranslation + heightOffset).xyz;
				
				// rounding
				UNITY_BRANCH
				if (_VertexRoundingEnabled)
				{
					float divisionAmount = _VertexRoundingDivision + ALRoundingAmount;
					float3 worldRoundPosition = (ceil(mul(unity_ObjectToWorld, v.vertex.xyz) * divisionAmount) / divisionAmount) - 1 / divisionAmount * .5;
					v.vertex = mul(unity_WorldToObject, worldRoundPosition);
				}
				#endif
				
				o.objectPos = mul(unity_ObjectToWorld, float4(0, 0, 0, 1)).xyz;
				o.objNormal = v.normal;
				o.normal = UnityObjectToWorldNormal(v.normal);
				o.tangent = UnityObjectToWorldDir(v.tangent);
				
				o.binormal = cross(o.normal, o.tangent) * (v.tangent.w * unity_WorldTransformParams.w);
				o.vertexColor = v.color;
				
				o.uv[0] = v.uv0;
				o.uv[1] = v.uv1;
				o.uv[2] = v.uv2;
				o.uv[3] = v.uv3;
				
				#if defined(LIGHTMAP_ON)
				o.lightmapUV.xy = v.uv1.xy * unity_LightmapST.xy + unity_LightmapST.zw;
				#endif
				#ifdef DYNAMICLIGHTMAP_ON
				o.lightmapUV.zw = v.uv2.xy * unity_DynamicLightmapST.xy + unity_DynamicLightmapST.zw;
				#endif
				
				o.localPos = v.vertex;
				o.worldPos = mul(unity_ObjectToWorld, o.localPos);
				
				float3 localOffset = float3(0, 0, 0);
				float3 worldOffset = float3(0, 0, 0);
				
				o.localPos.rgb += localOffset;
				o.worldPos.rgb += worldOffset;
				
				o.pos = UnityObjectToClipPos(o.localPos);
				#ifdef POI_PASS_OUTLINE
				#if defined(UNITY_REVERSED_Z)
				//DX
				o.pos.z += _Offset_Z * - 0.01;
				#else
				//OpenGL
				o.pos.z += _Offset_Z * 0.01;
				#endif
				#endif
				o.grabPos = ComputeGrabScreenPos(o.pos);
				
				if (_RenderingReduceClipDistance)
				{
					if (o.pos.w < _ProjectionParams.y * 1.01 && o.pos.w > 0)
					{
						o.pos.z = o.pos.z * 0.0001 + o.pos.w * 0.999;
					}
				}
				
				#ifndef FORWARD_META_PASS
				#if !defined(UNITY_PASS_SHADOWCASTER)
				UNITY_TRANSFER_SHADOW(o, o.uv[0].xy);
				#else
				TRANSFER_SHADOW_CASTER_NOPOS(o, o.pos);
				#endif
				#endif
				UNITY_TRANSFER_FOG(o, o.pos);
				
				#if defined(GRAIN)
				float4 worldDirection;
				
				worldDirection.xyz = o.worldPos.xyz - _WorldSpaceCameraPos;
				worldDirection.w = dot(o.pos, CalculateFrustumCorrection());
				o.worldDirection = worldDirection;
				#endif
				return o;
			}
			
			#ifdef POI_UDIMDISCARD
			void applyUDIMDiscard(inout PoiFragData poiFragData, in PoiMesh poiMesh)
			{
				float2 udim = floor(poiMesh.uv[_UDIMDiscardUV].xy);
				
				float isRendered = 0;
				float4 xMask = float4(  (udim.x >= 0 && udim.x < 1),
				(udim.x >= 1 && udim.x < 2),
				(udim.x >= 2 && udim.x < 3),
				(udim.x >= 3 && udim.x < 4));
				
				isRendered += (udim.y >= 0 && udim.y < 1) * dot(_UDIMDiscardRow0, xMask);
				isRendered += (udim.y >= 1 && udim.y < 2) * dot(_UDIMDiscardRow1, xMask);
				isRendered += (udim.y >= 2 && udim.y < 3) * dot(_UDIMDiscardRow2, xMask);
				isRendered += (udim.y >= 3 && udim.y < 4) * dot(_UDIMDiscardRow3, xMask);
				isRendered += (udim.y < 0 || udim.y >= 4) + (udim.x < 0 || udim.x >= 4); // never discard outside 4x4 grid in pos coords
				
				if(!isRendered) discard;
				
				return;
			}
			#endif
			
			float2 calculatePolarCoordinate(in PoiMesh poiMesh)
			{
				float2 delta = poiMesh.uv[_PolarUV] - _PolarCenter;
				float radius = length(delta) * 2 * _PolarRadialScale;
				float angle = atan2(delta.x, delta.y) * 1.0 / 6.28 * _PolarLengthScale;
				return float2(radius, angle + distance(poiMesh.uv[_PolarUV], _PolarCenter) * _PolarSpiralPower);
			}
			
			float2 MonoPanoProjection(float3 coords)
			{
				float3 normalizedCoords = normalize(coords);
				float latitude = acos(normalizedCoords.y);
				float longitude = atan2(normalizedCoords.z, normalizedCoords.x);
				float2 sphereCoords = float2(longitude, latitude) * float2(1.0 / UNITY_PI, 1.0 / UNITY_PI);
				sphereCoords = float2(1.0, 1.0) - sphereCoords;
				return(sphereCoords + float4(0, 1 - unity_StereoEyeIndex, 1, 1.0).xy) * float4(0, 1 - unity_StereoEyeIndex, 1, 1.0).zw;
			}
			
			float2 StereoPanoProjection(float3 coords)
			{
				float3 normalizedCoords = normalize(coords);
				float latitude = acos(normalizedCoords.y);
				float longitude = atan2(normalizedCoords.z, normalizedCoords.x);
				float2 sphereCoords = float2(longitude, latitude) * float2(0.5 / UNITY_PI, 1.0 / UNITY_PI);
				sphereCoords = float2(0.5, 1.0) - sphereCoords;
				return(sphereCoords + float4(0, 1 - unity_StereoEyeIndex, 1, 0.5).xy) * float4(0, 1 - unity_StereoEyeIndex, 1, 0.5).zw;
			}
			
			float2 calculatePanosphereUV(in PoiMesh poiMesh)
			{
				float3 viewDirection = normalize(lerp(getCameraPosition().xyz, _WorldSpaceCameraPos.xyz, _PanoUseBothEyes) - poiMesh.worldPos.xyz) * - 1;
				return lerp(MonoPanoProjection(viewDirection), StereoPanoProjection(viewDirection), _StereoEnabled);
			}
			
			#ifdef USER_LUT
			float2 distortedUV(in PoiMesh poiMesh)
			{
				#if defined(PROP_DISTORTIONFLOWTEXTURE) || !defined(OPTIMIZER_ENABLED)
				float4 flowVector = POI2D_SAMPLER_PAN(_DistortionFlowTexture, _MainTex, poiUV(poiMesh.uv[_DistortionFlowTextureUV], _DistortionFlowTexture_ST), _DistortionFlowTexturePan) * 2 - 1;
				#else
				float4 flowVector = 0;
				#endif
				
				#if defined(PROP_DISTORTIONFLOWTEXTURE1) || !defined(OPTIMIZER_ENABLED)
				float4 flowVector1 = POI2D_SAMPLER_PAN(_DistortionFlowTexture1, _MainTex, poiUV(poiMesh.uv[_DistortionFlowTexture1UV], _DistortionFlowTexture1_ST), _DistortionFlowTexture1Pan) * 2 - 1;
				#else
				float4 flowVector1 = 0;
				#endif
				
				#if defined(PROP_DISTORTIONMASK) || !defined(OPTIMIZER_ENABLED)
				half distortionMask = POI2D_SAMPLER_PAN(_DistortionMask, _MainTex, poiMesh.uv[_DistortionMaskUV], _DistortionMaskPan).r;
				#else
				half distortionMask = 1;
				#endif
				
				half distortionStrength = _DistortionStrength;
				half distortionStrength1 = _DistortionStrength1;
				
				flowVector *= distortionStrength;
				flowVector1 *= distortionStrength1;
				return poiMesh.uv[_DistortionUvToDistort] + ((flowVector.xy + flowVector1.xy) / 2) * distortionMask;
			}
			#endif
			
			#ifdef POI_PARALLAX
			inline float2 POM(in PoiLight poiLight, sampler2D heightMap, in PoiMesh poiMesh, float3 worldViewDir, float3 viewDirTan, int minSamples, int maxSamples, float parallax, float refPlane, float2 tilling, float2 curv)
			{
				float2 uvs = poiUV(poiMesh.uv[_HeightMapUV], _HeightMap_ST);
				float2 dx = ddx(uvs);
				float2 dy = ddy(uvs);
				float3 result = 0;
				int stepIndex = 0;
				int numSteps = (int)lerp(maxSamples, minSamples, saturate(dot(poiMesh.normals[0], worldViewDir)));
				float layerHeight = 1.0 / numSteps;
				float2 plane = parallax * (viewDirTan.xy / viewDirTan.z);
				uvs += refPlane * plane;
				float2 deltaTex = -plane * layerHeight;
				float2 prevTexOffset = 0;
				float prevRayZ = 1.0f;
				float prevHeight = 0.0f;
				float2 currTexOffset = deltaTex;
				float currRayZ = 1.0f - layerHeight;
				float currHeight = 0.0f;
				float intersection = 0;
				float2 finalTexOffset = 0;
				while (stepIndex < numSteps + 1)
				{
					result.z = dot(curv, currTexOffset * currTexOffset);
					currHeight = tex2Dgrad(heightMap, uvs + currTexOffset, dx, dy).r * (1 - result.z);
					if (currHeight > currRayZ)
					{
						stepIndex = numSteps + 1;
					}
					else
					{
						stepIndex++;
						prevTexOffset = currTexOffset;
						prevRayZ = currRayZ;
						prevHeight = currHeight;
						currTexOffset += deltaTex;
						currRayZ -= layerHeight * (1 - result.z) * (1 + _CurvFix);
					}
				}
				int sectionSteps = 10;
				int sectionIndex = 0;
				float newZ = 0;
				float newHeight = 0;
				while (sectionIndex < sectionSteps)
				{
					intersection = (prevHeight - prevRayZ) / (prevHeight - currHeight + currRayZ - prevRayZ);
					finalTexOffset = prevTexOffset +intersection * deltaTex;
					newZ = prevRayZ - intersection * layerHeight;
					newHeight = tex2Dgrad(heightMap, uvs + finalTexOffset, dx, dy).r;
					if (newHeight > newZ)
					{
						currTexOffset = finalTexOffset;
						currHeight = newHeight;
						currRayZ = newZ;
						deltaTex = intersection * deltaTex;
						layerHeight = intersection * layerHeight;
					}
					else
					{
						prevTexOffset = finalTexOffset;
						prevHeight = newHeight;
						prevRayZ = newZ;
						deltaTex = (1 - intersection) * deltaTex;
						layerHeight = (1 - intersection) * layerHeight;
					}
					sectionIndex++;
				}
				#ifdef UNITY_PASS_SHADOWCASTER
				if (unity_LightShadowBias.z == 0.0)
				{
					#endif
					if (result.z > 1)
					clip(-1);
					#ifdef UNITY_PASS_SHADOWCASTER
				}
				#endif
				return uvs + finalTexOffset;
			}
			/*
			float2 ParallaxOffsetMultiStep(float surfaceHeight, float strength, float2 uv, float3 tangentViewDir)
			{
				float2 uvOffset = 0;
				float2 prevUVOffset = 0;
				float stepSize = 1.0 / _HeightSteps;
				float stepHeight = 1;
				float2 uvDelta = tangentViewDir.xy * (stepSize * strength);
				float prevStepHeight = stepHeight;
				float prevSurfaceHeight = surfaceHeight;
				
				[unroll(20)]
				for (int j = 1; j <= _HeightSteps && stepHeight > surfaceHeight; j++)
				{
					prevUVOffset = uvOffset;
					prevStepHeight = stepHeight;
					prevSurfaceHeight = surfaceHeight;
					uvOffset -= uvDelta;
					stepHeight -= stepSize;
					surfaceHeight = POI2D_SAMPLER_PAN(_Heightmap, _MainTex, poiUV(uv + uvOffset, _Heightmap_ST), _HeightmapPan) + _HeightOffset;
				}
				
				[unroll(3)]
				for (int k = 0; k < 3; k++)
				{
					uvDelta *= 0.5;
					stepSize *= 0.5;
					
					if (stepHeight < surfaceHeight)
					{
						uvOffset += uvDelta;
						stepHeight += stepSize;
					}
					else
					{
						uvOffset -= uvDelta;
						stepHeight -= stepSize;
					}
					surfaceHeight = POI2D_SAMPLER_PAN(_Heightmap, _MainTex, poiUV(uv + uvOffset, _Heightmap_ST), _HeightmapPan) + _HeightOffset;
				}
				return uvOffset;
			}
			*/
			void applyParallax(inout PoiMesh poiMesh, in PoiLight poiLight, in PoiCam poiCam)
			{
				/*
				half h = POI2D_SAMPLER_PAN(_Heightmap, _linear_repeat, poiUV(poiMesh.uv[_HeightmaskUV], _Heightmap_ST), _HeightmapPan).r + _HeightOffset;
				#if defined(PROP_HEIGHTMASK) || !defined(OPTIMIZER_ENABLED)
				half m = POI2D_SAMPLER_PAN(_Heightmask, _linear_repeat, poiUV(poiMesh.uv[_HeightmaskUV], _Heightmask_ST), _HeightmaskPan).r + _HeightOffset;
				#else
				half m = 1 + _HeightOffset;
				#endif
				h = clamp(h, 0, 0.999);
				m = lerp(m, 1 - m, _HeightmaskInvert);
				#if defined(OPTIMIZER_ENABLED)das
				poiMesh.uv[_ParallaxUV] += ParallaxOffsetMultiStep(h, _HeightStrength * m, poiMesh.uv[_HeightmapUV], tangentViewDir / tangentViewDir.z);
				#else
				float2 offset = ParallaxOffsetMultiStep(h, _HeightStrength * m, poiMesh.uv[_HeightmapUV], tangentViewDir / tangentViewDir.z);
				if (_ParallaxUV == 0)       poiMesh.uv[0] += offset;
				if (_ParallaxUV == 1)       poiMesh.uv[1] += offset;
				if (_ParallaxUV == 2)       poiMesh.uv[2] += offset;
				if (_ParallaxUV == 3)       poiMesh.uv[3] += offset;
				if (_ParallaxUV == 4)       poiMesh.uv[4] += offset;
				if (_ParallaxUV == 5)       poiMesh.uv[5] += offset;
				if (_ParallaxUV == 6)       poiMesh.uv[6] += offset;
				if (_ParallaxUV == 7)       poiMesh.uv[7] += offset;
				#endif
				*/
				
				#if defined(OPTIMIZER_ENABLED)
				poiMesh.uv[_ParallaxUV] = POM(poiLight, _HeightMap, poiMesh, poiCam.viewDir, poiCam.tangentViewDir, _HeightStepsMin, _HeightStepsMax, _HeightStrength, 0, _HeightMap_ST.xy, float2(_CurvatureU, _CurvatureV));
				#else
				float2 offset = POM(poiLight, _HeightMap, poiMesh, poiCam.viewDir, poiCam.tangentViewDir, _HeightStepsMin, _HeightStepsMax, _HeightStrength, 0, _HeightMap_ST.xy, float2(_CurvatureU, _CurvatureV));
				if (_ParallaxUV == 0)       poiMesh.uv[0] = offset;
				if (_ParallaxUV == 1)       poiMesh.uv[1] = offset;
				if (_ParallaxUV == 2)       poiMesh.uv[2] = offset;
				if (_ParallaxUV == 3)       poiMesh.uv[3] = offset;
				if (_ParallaxUV == 4)       poiMesh.uv[4] = offset;
				if (_ParallaxUV == 5)       poiMesh.uv[5] = offset;
				if (_ParallaxUV == 6)       poiMesh.uv[6] = offset;
				if (_ParallaxUV == 7)       poiMesh.uv[7] = offset;
				#endif
			}
			#endif
			
			void applyAlphaOptions(inout PoiFragData poiFragData, in PoiMesh poiMesh, in PoiCam poiCam, in PoiMods poiMods)
			{
				poiFragData.alpha = saturate(poiFragData.alpha + _AlphaMod);
				
				// Distance Fade
				if (_AlphaDistanceFade)
				{
					float3 position = _AlphaDistanceFadeType ? poiMesh.worldPos : poiMesh.objectPosition;
					poiFragData.alpha *= lerp(_AlphaDistanceFadeMinAlpha, _AlphaDistanceFadeMaxAlpha, smoothstep(_AlphaDistanceFadeMin, _AlphaDistanceFadeMax, distance(position, poiCam.worldPos)));
				}
				
				// Fresnel Alpha
				if (_AlphaFresnel)
				{
					float holoRim = saturate(1 - smoothstep(min(_AlphaFresnelSharpness, _AlphaFresnelWidth), _AlphaFresnelWidth, poiCam.vDotN));
					holoRim = abs(lerp(1, holoRim, _AlphaFresnelAlpha));
					poiFragData.alpha *= _AlphaFresnelInvert ?1 - holoRim : holoRim;
				}
				
				if (_AlphaAngular)
				{
					half cameraAngleMin = _CameraAngleMin / 180;
					half cameraAngleMax = _CameraAngleMax / 180;
					half modelAngleMin = _ModelAngleMin / 180;
					half modelAngleMax = _ModelAngleMax / 180;
					float3 pos = _AngleCompareTo == 0 ? poiMesh.objectPosition : poiMesh.worldPos;
					half3 cameraToModelDirection = normalize(pos - getCameraPosition());
					half3 modelForwardDirection = normalize(mul(unity_ObjectToWorld, normalize(_AngleForwardDirection)));
					half cameraLookAtModel = remapClamped(cameraAngleMax, cameraAngleMin, .5 * dot(cameraToModelDirection, getCameraForward()) + .5);
					half modelLookAtCamera = remapClamped(modelAngleMax, modelAngleMin, .5 * dot(-cameraToModelDirection, modelForwardDirection) + .5);
					if (_AngleType == 0)
					{
						poiFragData.alpha *= max(cameraLookAtModel, _AngleMinAlpha);
					}
					else if (_AngleType == 1)
					{
						poiFragData.alpha *= max(modelLookAtCamera, _AngleMinAlpha);
					}
					else if (_AngleType == 2)
					{
						poiFragData.alpha *= max(cameraLookAtModel * modelLookAtCamera, _AngleMinAlpha);
					}
				}
				
				#ifdef COLOR_GRADING_LOG_VIEW
				if (poiMods.audioLinkAvailable && _AlphaAudioLinkEnabled)
				{
					poiFragData.alpha = saturate(poiFragData.alpha + lerp(_AlphaAudioLinkAddRange.x, _AlphaAudioLinkAddRange.y, poiMods.audioLink[_AlphaAudioLinkAddBand]));
				}
				#endif
			}
			
			inline half Dither8x8Bayer(int x, int y)
			{
				const half dither[ 64 ] = {
					1, 49, 13, 61, 4, 52, 16, 64,
					33, 17, 45, 29, 36, 20, 48, 32,
					9, 57, 5, 53, 12, 60, 8, 56,
					41, 25, 37, 21, 44, 28, 40, 24,
					3, 51, 15, 63, 2, 50, 14, 62,
					35, 19, 47, 31, 34, 18, 46, 30,
					11, 59, 7, 55, 10, 58, 6, 54,
					43, 27, 39, 23, 42, 26, 38, 22
				};
				int r = y * 8 + x;
				return dither[r] / 64;
			}
			
			half calcDither(half2 grabPos)
			{
				half dither = Dither8x8Bayer(fmod(grabPos.x, 8), fmod(grabPos.y, 8));
				return dither;
			}
			
			void applyDithering(inout PoiFragData poiFragData, in PoiCam poiCam)
			{
				if (_AlphaDithering)
				{
					poiFragData.alpha = poiFragData.alpha - (calcDither(poiCam.screenUV) * (1 - poiFragData.alpha) * _AlphaDitherGradient);
				}
			}
			
			void ApplyAlphaToCoverage(inout PoiFragData poiFragData, in PoiMesh poiMesh)
			{
				// Force Model Opacity to 1 if desired
				UNITY_BRANCH
				if (_Mode == 1)
				{
					UNITY_BRANCH
					if (_AlphasharpenedA2C)
					{
						// rescale alpha by mip level
						poiFragData.alpha *= 1 + max(0, CalcMipLevel(poiMesh.uv[0] * _MainTex_TexelSize.zw)) * _AlphaMipScale;
						// rescale alpha by partial derivative
						poiFragData.alpha = (poiFragData.alpha - _Cutoff) / max(fwidth(poiFragData.alpha), 0.0001) + _Cutoff;
					}
				}
			}
			
			void applyVertexColor(inout PoiFragData poiFragData, PoiMesh poiMesh)
			{
				#ifndef POI_PASS_OUTLINE
				float3 vertCol = lerp(poiMesh.vertexColor.rgb, GammaToLinearSpace(poiMesh.vertexColor.rgb), _MainVertexColoringLinearSpace);
				poiFragData.baseColor *= lerp(1, vertCol, _MainVertexColoring);
				#endif
				poiFragData.alpha *= lerp(1, poiMesh.vertexColor.a, _MainUseVertexColorAlpha);
			}
			
			#ifdef POI_BACKFACE
			void ApplyBackFaceColor(inout PoiFragData poiFragData, in PoiMesh poiMesh, inout PoiMods poiMods)
			{
				if (!poiMesh.isFrontFace)
				{
					float4 backFaceColor = _BackFaceColor;
					backFaceColor.rgb = poiThemeColor(poiMods, backFaceColor.rgb, _BackFaceColorThemeIndex);
					#if defined(PROP_BACKFACETEXTURE) || !defined(OPTIMIZER_ENABLED)
					backFaceColor *= POI2D_SAMPLER_PAN(_BackFaceTexture, _MainTex, poiUV(poiMesh.uv[_BackFaceTextureUV], _BackFaceTexture_ST), _BackFaceTexturePan);
					#endif
					backFaceColor.rgb = hueShift(backFaceColor.rgb, frac(_BackFaceHueShift + _BackFaceHueShiftSpeed * _Time.x) * _BackFaceHueShiftEnabled);
					
					float backFaceMask = 1;
					#if defined(PROP_BACKFACEMASK) || !defined(OPTIMIZER_ENABLED)
					backFaceMask *= POI2D_SAMPLER_PAN(_BackFaceMask, _MainTex, poiUV(poiMesh.uv[_BackFaceMaskUV], _BackFaceMask_ST), _BackFaceMaskPan).r * _BackFaceAlpha * backFaceColor.a;
					#endif
					
					poiFragData.baseColor = lerp(poiFragData.baseColor, backFaceColor.rgb, backFaceMask);
					
					UNITY_BRANCH
					if (_BackFaceReplaceAlpha)
					{
						poiFragData.alpha = lerp(backFaceColor.a, poiFragData.alpha, backFaceMask);
					}
					
					poiFragData.emission += backFaceColor.rgb * _BackFaceEmissionStrength * backFaceMask;
				}
			}
			#endif
			
			#ifdef DISTORT
			void applyDissolve(inout PoiFragData poiFragData, in PoiMesh poiMesh, in PoiMods poiMods)
			{
				#if defined(PROP_DISSOLVEMASK) || !defined(OPTIMIZER_ENABLED)
				float dissolveMask = POI2D_SAMPLER_PAN(_DissolveMask, _MainTex, poiUV(poiMesh.uv[_DissolveMaskUV], _DissolveMask_ST), _DissolveMaskPan).r;
				#else
				float dissolveMask = 1;
				#endif
				UNITY_BRANCH
				if (_DissolveUseVertexColors)
				{
					// Vertex Color Imprecision hype
					dissolveMask = ceil(poiMesh.vertexColor.g * 100000) / 100000;
				}
				
				#if defined(PROP_DISSOLVETOTEXTURE) || !defined(OPTIMIZER_ENABLED)
				dissolveToTexture = POI2D_SAMPLER_PAN(_DissolveToTexture, _MainTex, poiUV(poiMesh.uv[_DissolveToTextureUV], _DissolveToTexture_ST), _DissolveToTexturePan) * float4(poiThemeColor(poiMods, _DissolveTextureColor.rgb, _DissolveTextureColorThemeIndex), _DissolveTextureColor.a);
				#else
				dissolveToTexture = _DissolveTextureColor;
				#endif
				
				#if defined(PROP_DISSOLVENOISETEXTURE) || !defined(OPTIMIZER_ENABLED)
				float dissolveNoiseTexture = POI2D_SAMPLER_PAN(_DissolveNoiseTexture, _MainTex, poiUV(poiMesh.uv[_DissolveNoiseTextureUV], _DissolveNoiseTexture_ST), _DissolveNoiseTexturePan).r;
				#else
				float dissolveNoiseTexture = 1;
				#endif
				
				float da = _DissolveAlpha
				+ _DissolveAlpha0
				+ _DissolveAlpha1
				+ _DissolveAlpha2
				+ _DissolveAlpha3
				+ _DissolveAlpha4
				+ _DissolveAlpha5
				+ _DissolveAlpha6
				+ _DissolveAlpha7
				+ _DissolveAlpha8
				+ _DissolveAlpha9;
				float dds = _DissolveDetailStrength;
				
				#ifdef COLOR_GRADING_LOG_VIEW
				UNITY_BRANCH
				if (_EnableDissolveAudioLink && poiMods.audioLinkAvailable)
				{
					da += lerp(_AudioLinkDissolveAlpha.x, _AudioLinkDissolveAlpha.y, poiMods.audioLink[_AudioLinkDissolveAlphaBand]);
					dds += lerp(_AudioLinkDissolveDetail.x, _AudioLinkDissolveDetail.y, poiMods.audioLink[_AudioLinkDissolveDetailBand]);
				}
				#endif
				
				da = saturate(da);
				dds = saturate(dds);
				
				#ifdef POI_BLACKLIGHT
				if (_BlackLightMaskDissolve != 4)
				{
					dissolveMask *= blackLightMask[_BlackLightMaskDissolve];
				}
				#endif
				
				if (_DissolveMaskInvert)
				{
					dissolveMask = 1 - dissolveMask;
				}
				#if defined(PROP_DISSOLVEDETAILNOISE) || !defined(OPTIMIZER_ENABLED)
				float dissolveDetailNoise = POI2D_SAMPLER_PAN(_DissolveDetailNoise, _MainTex, poiUV(poiMesh.uv[_DissolveDetailNoiseUV], _DissolveDetailNoise_ST), _DissolveDetailNoisePan);
				#else
				float dissolveDetailNoise = 0;
				#endif
				if (_DissolveInvertNoise)
				{
					dissolveNoiseTexture = 1 - dissolveNoiseTexture;
				}
				if (_DissolveInvertDetailNoise)
				{
					dissolveDetailNoise = 1 - dissolveDetailNoise;
				}
				if (_ContinuousDissolve != 0)
				{
					da = sin(_Time.x * _ContinuousDissolve) * .5 + .5;
				}
				da *= dissolveMask;
				dissolveAlpha = da;
				edgeAlpha = 0;
				
				if (_DissolveType == 1) // Basic
				
				{
					da = remap(da, 0, 1, -_DissolveEdgeWidth, 1);
					dissolveAlpha = da;
					//Adjust detail strength to avoid artifacts
					dds *= smoothstep(1, .99, da);
					float noise = saturate(dissolveNoiseTexture - dissolveDetailNoise * dds);
					
					noise = saturate(noise * 0.998 + 0.001);
					//noise = remap(noise, 0, 1, _DissolveEdgeWidth, 1 - _DissolveEdgeWidth);
					dissolveAlpha = dissolveAlpha >= noise;
					edgeAlpha = remapClamped(da + _DissolveEdgeWidth, da, noise) * (1 - dissolveAlpha);
				}
				else if (_DissolveType == 2) // Point to Point
				
				{
					float3 direction;
					float3 currentPos;
					float distanceTo = 0;
					direction = normalize(_DissolveEndPoint - _DissolveStartPoint);
					currentPos = lerp(_DissolveStartPoint, _DissolveEndPoint, dissolveAlpha);
					
					UNITY_BRANCH
					if (_DissolveP2PWorldLocal != 1)
					{
						float3 pos = _DissolveP2PWorldLocal == 0 ? poiMesh.localPos.rgb : poiMesh.vertexColor.rgb;
						distanceTo = dot(pos - currentPos, direction) - dissolveDetailNoise * dds;
						edgeAlpha = smoothstep(_DissolveP2PEdgeLength + .00001, 0, distanceTo);
						dissolveAlpha = step(distanceTo, 0);
						edgeAlpha *= 1 - dissolveAlpha;
					}
					else
					{
						distanceTo = dot(poiMesh.worldPos - currentPos, direction) - dissolveDetailNoise * dds;
						edgeAlpha = smoothstep(_DissolveP2PEdgeLength + .00001, 0, distanceTo);
						dissolveAlpha = step(distanceTo, 0);
						edgeAlpha *= 1 - dissolveAlpha;
					}
				}
				
				#ifndef POI_SHADOW
				UNITY_BRANCH
				if (_DissolveHueShiftEnabled)
				{
					dissolveToTexture.rgb = hueShift(dissolveToTexture.rgb, _DissolveHueShift + _Time.x * _DissolveHueShiftSpeed);
				}
				#endif
				
				poiFragData.alpha = lerp(poiFragData.alpha, dissolveToTexture.a, dissolveAlpha * .999999);
				
				#if !defined(POI_PASS_OUTLINE) && !defined(UNITY_PASS_SHADOWCASTER)
				poiFragData.baseColor = lerp(poiFragData.baseColor, dissolveToTexture.rgb, dissolveAlpha * .999999);
				
				UNITY_BRANCH
				if (_DissolveEdgeWidth)
				{
					edgeColor = tex2D(_DissolveEdgeGradient, poiUV(float2(edgeAlpha, edgeAlpha), _DissolveEdgeGradient_ST)) * float4(poiThemeColor(poiMods, _DissolveEdgeColor.rgb, _DissolveEdgeColorThemeIndex), _DissolveEdgeColor.a);
					#ifndef POI_SHADOW
					UNITY_BRANCH
					if (_DissolveEdgeHueShiftEnabled)
					{
						edgeColor.rgb = hueShift(edgeColor.rgb, _DissolveEdgeHueShift + _Time.x * _DissolveEdgeHueShiftSpeed);
					}
					#endif
					poiFragData.baseColor = lerp(poiFragData.baseColor, edgeColor.rgb, smoothstep(0, 1 - _DissolveEdgeHardness * .99999999999, edgeAlpha));
				}
				
				poiFragData.emission += lerp(0, dissolveToTexture * _DissolveToEmissionStrength, dissolveAlpha) + lerp(0, edgeColor.rgb * _DissolveEdgeEmission, smoothstep(0, 1 - _DissolveEdgeHardness * .99999999999, edgeAlpha));
				#endif
			}
			#endif
			
			/*
			Liltoon made most of this and it looked really good so I modified it to be a little more poi
			
			MIT License
			
			Copyright (c) 2020-2021 lilxyzw
			
			Permission is hereby granted, free of charge, to any person obtaining a copy
			of this software and associated documentation files (the "Software"), to deal
			in the Software without restriction, including without limitation the rights
			to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
			copies of the Software, and to permit persons to whom the Software is
			furnished to do so, subject to the following conditions:
			
			The above copyright notice and this permission notice shall be included in all
			copies or substantial portions of the Software.
			
			THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
			IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
			FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
			AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
			LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
			OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
			SOFTWARE.
			*/
			
			#ifdef COLOR_GRADING_LOG_VIEW
			#ifdef POI_AL_DECAL
			void ApplyAudioLinkDecal(in PoiMesh poiMesh, inout PoiFragData poiFragData, in PoiMods poiMods)
			{
				float2 uv = poiMesh.uv[_ALDecalUV];
				float2 decalCenter = _ALUVPosition;
				float theta = radians(_ALUVRotation + _Time.z * _ALUVRotationSpeed);
				float cs = cos(theta);
				float sn = sin(theta);
				uv = float2((uv.x - decalCenter.x) * cs - (uv.y - decalCenter.y) * sn + decalCenter.x, (uv.x - decalCenter.x) * sn + (uv.y - decalCenter.y) * cs + decalCenter.y);
				uv = remap(uv, float2(0, 0) - _ALUVScale.xz / 2 + _ALUVPosition, _ALUVScale.yw / 2 + _ALUVPosition, float2(0, 0), float2(1, 1));
				
				// Mask
				float4 audioLinkMask = 1.0;
				
				// UV
				float2 aluv = uv;
				if (_ALDecalUVMode == 1)
				{
					float2 uvdir = uv * 2 - 1;
					aluv.x = frac(atan2(uvdir.y, uvdir.x) * UNITY_INV_TWO_PI);
					aluv.y = length(uvdir);
				}
				
				// Scale / Offset / Step
				float maskY = aluv.y;
				if (_ALDecalUVMode == 1)
				{
					maskY = remap(maskY, _ALDecaldCircleDimensions.x, _ALDecaldCircleDimensions.y, 0, 1);
				}
				float maskX = aluv.x;
				if (_ALDecalUVMode == 1)
				{
					maskX = remap(maskX, _ALDecaldCircleDimensions.z, _ALDecaldCircleDimensions.w, 0, 1);
				}
				
				float maskVolume = _ALDecalVolumeStep != 0.0 ? floor(maskY * _ALDecalVolumeStep) / _ALDecalVolumeStep : maskY;
				float maskBand = _ALDecalBandStep != 0.0 ? floor(maskX * _ALDecalBandStep) / _ALDecalBandStep : maskX;
				
				// Copy
				audioLinkMask.r = maskVolume;
				audioLinkMask.g = maskBand;
				
				// Clip
				audioLinkMask.b = maskVolume < _ALDecalVolumeClipMin || maskVolume > _ALDecalVolumeClipMax ? 0.0 : audioLinkMask.b;
				audioLinkMask.b = maskBand < _ALDecalBandClipMin || maskBand > _ALDecalBandClipMax ? 0.0 : audioLinkMask.b;
				
				// Shape Clip
				if (_ALDecalShapeClip)
				{
					float volumeth = _ALDecalShapeClipVolumeWidth;
					if (_ALDecalVolumeStep != 0.0) audioLinkMask.b = frac(maskY * _ALDecalVolumeStep) > volumeth ? 0.0 : audioLinkMask.b;
					
					float bandwidth = _ALDecalUVMode == 1 ? _ALDecalShapeClipBandWidth / aluv.y : _ALDecalShapeClipBandWidth;
					float bandth = 1.0 - bandwidth;
					if (_ALDecalBandStep != 0.0) audioLinkMask.b = frac(maskX * _ALDecalBandStep + bandth * 0.5) < bandth ? 0.0 : audioLinkMask.b;
				}
				
				// AudioLink
				float2 audioLinkUV = float2(frac(audioLinkMask.g * 2.0), 4.5 / 4.0 + floor(audioLinkMask.g * 2.0) / 4.0);
				audioLinkUV.y *= 0.0625;
				float4 audioTexture = _AudioTexture.Sample(sampler_linear_clamp, audioLinkUV);
				float audioVal = audioTexture.b * _ALDecalVolume * lerp(_ALDecalBaseBoost, _ALDecalTrebleBoost, audioLinkMask.g);
				float audioLinkValue = _ALDecalLineWidth < 1.0 ? abs(audioVal - audioLinkMask.r) < _ALDecalLineWidth : audioVal > audioLinkMask.r * 2.0;
				audioLinkValue = saturate(audioLinkValue) * audioLinkMask.b;
				//clip(audioLinkValue - .5);
				
				if (!poiMods.audioLinkAvailable)
				{
					audioLinkValue = 0;
				}
				
				float3 alColorChord = _AudioTexture.Sample(sampler_linear_clamp, float2(maskX, 24.5 / 64.0)).rgb;
				float volumeColorSrc = audioLinkMask.g;
				if (_ALDecalVolumeColorSource == 1) volumeColorSrc = audioLinkMask.r;
				if (_ALDecalVolumeColorSource == 2) volumeColorSrc = audioVal;
				
				float3 volumeColor = lerp(_ALDecalVolumeColorLow.rgb, _ALDecalVolumeColorMid.rgb, saturate(volumeColorSrc * 2));
				volumeColor = lerp(volumeColor, _ALDecalVolumeColorHigh.rgb, saturate(volumeColorSrc * 2 - 1));
				
				float3 emissionColor = lerp(_ALDecalVolumeColorLow.rgb * _ALDecalLowEmission, _ALDecalVolumeColorMid.rgb * _ALDecalMidEmission, saturate(volumeColorSrc * 2));
				emissionColor = lerp(emissionColor, _ALDecalVolumeColorHigh.rgb * _ALDecalHighEmission, saturate(volumeColorSrc * 2 - 1));
				
				//poiFragData.baseColor = lerp(poiFragData.baseColor, volumeColor, audioLinkValue);
				#if defined(POI_PASS_BASE) || defined(POI_PASS_ADD)
				poiFragData.emission += emissionColor * audioLinkValue;
				poiFragData.baseColor.rgb = lerp(poiFragData.baseColor, customBlend(poiFragData.baseColor, volumeColor, _ALDecalBlendType), saturate(_ALDecalBlendAlpha * audioLinkValue));
				#endif
				poiFragData.alpha = lerp(poiFragData.alpha, poiFragData.alpha * audioLinkValue, _ALDecalControlsAlpha);
			}
			#endif
			#endif
			
			#ifdef _SUNDISK_HIGH_QUALITY
			
			void applyFlipbook(inout PoiFragData poiFragData, in PoiMesh poiMesh, in PoiMods poiMods)
			{
				float4 flipBookPixel = float4(0, 0, 0, 0);
				#if defined(PROP_FLIPBOOKMASK) || !defined(OPTIMIZER_ENABLED)
				float flipBookMask = POI2D_SAMPLER_PAN(_FlipbookMask, _MainTex, poiMesh.uv[_FlipbookMaskUV], _FlipbookMaskPan).r;
				#else
				float flipBookMask = 1;
				#endif
				float4 flipbookScaleOffset = _FlipbookScaleOffset;
				
				#ifdef COLOR_GRADING_LOG_VIEW
				//flipbookScaleOffset.xy += lerp(_AudioLinkFlipbookScale.xy, _AudioLinkFlipbookScale.zw, poiMods.audioLink[_AudioLinkFlipbookScaleBand]);
				#endif
				
				flipbookScaleOffset.xy = 1 - flipbookScaleOffset.xy;
				float2 uv = frac(poiMesh.uv[_FlipbookTexArrayUV]);
				float theta = radians(_FlipbookRotation + _Time.z * _FlipbookRotationSpeed);
				float cs = cos(theta);
				float sn = sin(theta);
				float2 spriteCenter = flipbookScaleOffset.zw + .5;
				// 2d rotation
				uv = float2((uv.x - spriteCenter.x) * cs - (uv.y - spriteCenter.y) * sn + spriteCenter.x, (uv.x - spriteCenter.x) * sn + (uv.y - spriteCenter.y) * cs + spriteCenter.y);
				float4 sideOffset = float4(-_FlipbookSideOffset.x, _FlipbookSideOffset.y, -_FlipbookSideOffset.z, _FlipbookSideOffset.w);
				float2 newUV = remap(uv, float2(0, 0) + flipbookScaleOffset.xy / 2 + flipbookScaleOffset.zw + sideOffset.xz, float2(1, 1) - flipbookScaleOffset.xy / 2 + flipbookScaleOffset.zw + sideOffset.yw, float2(0, 0), float2(1, 1));
				
				UNITY_BRANCH
				if (_FlipbookTiled == 0)
				{
					if (max(newUV.x, newUV.y) > 1 || min(newUV.x, newUV.y) < 0)
					{
						return;
					}
				}
				#if defined(PROP_FLIPBOOKTEXARRAY) || !defined(OPTIMIZER_ENABLED)
				float currentFrame = fmod(_FlipbookCurrentFrame, _FlipbookTotalFrames);
				if (_FlipbookCurrentFrame < 0)
				{
					currentFrame = (_Time.y / (1 / _FlipbookFPS)) % _FlipbookTotalFrames;
				}
				#ifdef COLOR_GRADING_LOG_VIEW
				if (_FlipbookChronotensityEnabled)
				{
					currentFrame = (AudioLinkDecodeDataAsUInt(ALPASS_CHRONOTENSITY + uint2(0, _FlipbookChronotensityBand)) % (_FlipbookChronotensitySpeed * 1000000)) / (_FlipbookChronotensitySpeed * 1000000.0) * _FlipbookTotalFrames;
					
				}
				//currentFrame += lerp(_AudioLinkFlipbookFrame.x, _AudioLinkFlipbookFrame.y, poiMods.audioLink[_AudioLinkFlipbookFrameBand]);
				#endif
				flipBookPixel = UNITY_SAMPLE_TEX2DARRAY(_FlipbookTexArray, float3(TRANSFORM_TEX(newUV, _FlipbookTexArray) + _Time.x * _FlipbookTexArrayPan, floor(currentFrame)));
				UNITY_BRANCH
				if (_FlipbookCrossfadeEnabled)
				{
					float4 flipbookNextPixel = UNITY_SAMPLE_TEX2DARRAY(_FlipbookTexArray, float3(TRANSFORM_TEX(newUV, _FlipbookTexArray) + _Time.x * _FlipbookTexArrayPan, floor((currentFrame + 1) % _FlipbookTotalFrames)));
					flipBookPixel = lerp(flipBookPixel, flipbookNextPixel, smoothstep(_FlipbookCrossfadeRange.x, _FlipbookCrossfadeRange.y, frac(currentFrame)));
				}
				#else
				flipBookPixel = 1;
				#endif
				
				UNITY_BRANCH
				if (_FlipbookIntensityControlsAlpha)
				{
					flipBookPixel.a = poiMax(flipBookPixel.rgb);
				}
				UNITY_BRANCH
				if (_FlipbookColorReplaces)
				{
					flipBookPixel.rgb = poiThemeColor(poiMods, _FlipbookColor.rgb, _FlipbookColorThemeIndex);
				}
				else
				{
					flipBookPixel.rgb *= poiThemeColor(poiMods, _FlipbookColor.rgb, _FlipbookColorThemeIndex);
				}
				
				#ifdef POI_BLACKLIGHT
				UNITY_BRANCH
				if (_BlackLightMaskFlipbook != 4)
				{
					flipBookMask *= blackLightMask[_BlackLightMaskFlipbook];
				}
				#endif
				
				UNITY_BRANCH
				if (_FlipbookHueShiftEnabled)
				{
					flipBookPixel.rgb = hueShift(flipBookPixel.rgb, _FlipbookHueShift + _Time.x * _FlipbookHueShiftSpeed);
				}
				half flipbookAlpha = 1;
				#ifdef COLOR_GRADING_LOG_VIEW
				//flipbookAlpha = saturate(lerp(_AudioLinkFlipbookAlpha.x, _AudioLinkFlipbookAlpha.y, poiMods.audioLink[_AudioLinkFlipbookAlphaBand]));
				#endif
				
				#if !defined(POI_PASS_OUTLINE) && !defined(UNITY_PASS_SHADOWCASTER)
				
				poiFragData.baseColor = lerp(poiFragData.baseColor, flipBookPixel.rgb, flipBookPixel.a * _FlipbookColor.a * _FlipbookReplace * flipBookMask * flipbookAlpha);
				poiFragData.baseColor = poiFragData.baseColor + flipBookPixel.rgb * _FlipbookAdd * flipBookMask * flipbookAlpha;
				poiFragData.baseColor = poiFragData.baseColor * lerp(1, flipBookPixel.rgb, flipBookPixel.a * _FlipbookColor.a * flipBookMask * _FlipbookMultiply * flipbookAlpha);
				
				float flipbookEmissionStrength = _FlipbookEmissionStrength;
				#ifdef COLOR_GRADING_LOG_VIEW
				//flipbookEmissionStrength += max(lerp(_AudioLinkFlipbookEmission.x, _AudioLinkFlipbookEmission.y, poiMods.audioLink[_AudioLinkFlipbookEmissionBand]), 0);
				#endif
				
				poiFragData.emission += lerp(0, flipBookPixel.rgb * flipbookEmissionStrength, flipBookPixel.a * _FlipbookColor.a * flipBookMask * flipbookAlpha);
				
				#endif
				
				UNITY_BRANCH
				if (_FlipbookAlphaControlsFinalAlpha)
				{
					poiFragData.alpha = lerp(poiFragData.alpha, flipBookPixel.a * _FlipbookColor.a, flipBookMask);
				}
			}
			
			#endif
			
			#ifdef POI_MIRROR
			void applyMirror(inout PoiFragData poiFragData, in PoiMesh poiMesh)
			{
				bool inMirror = IsInMirror();
				if (_Mirror != 0)
				{
					if (_Mirror == 1 && inMirror)	return;
					if (_Mirror == 1 && !inMirror)	discard;
					if (_Mirror == 2 && inMirror)	discard;
					if (_Mirror == 2 && !inMirror)	return;
				}
				
				#if(defined(FORWARD_BASE_PASS) || defined(FORWARD_ADD_PASS))
				#if defined(PROP_MIRRORTEXTURE) || !defined(OPTIMIZER_ENABLED)
				if(inMirror)
				{
					poiFragData.baseColor = POI2D_SAMPLER_PAN(_MirrorTexture, _MainTex, poiMesh.uv[_MirrorTextureUV], _MirrorTexturePan);
				}
				#endif
				#endif
			}
			#endif
			
			#ifdef GRAIN
			inline float CorrectedLinearEyeDepth(float z, float B)
			{
				return 1.0 / (z / UNITY_MATRIX_P._34 + B);
			}
			
			void applyDepthFX(inout PoiFragData poiFragData, in PoiCam poiCam, in PoiMesh poiMesh, in PoiMods poiMods)
			{
				float3 touchEmission = 0;
				
				float perspectiveDivide = 1.0f / poiCam.clipPos.w;
				float4 direction = poiCam.worldDirection * perspectiveDivide;
				float2 screenPos = poiCam.grabPos.xy * perspectiveDivide;
				float z = SAMPLE_DEPTH_TEXTURE(_CameraDepthTexture, screenPos);
				
				#if UNITY_REVERSED_Z
				if (z == 0)
				#else
				if (z == 1)
				#endif
				return;
				
				float depth = CorrectedLinearEyeDepth(z, direction.w);
				float3 worldpos = direction * depth + _WorldSpaceCameraPos.xyz;
				/*
				finalColor.rgb = frac(worldpos);
				return;
				*/
				
				float diff = distance(worldpos, poiMesh.worldPos);
				//poiFragData.finalColor = diff;
				
				#if defined(PROP_DEPTHMASK) || !defined(OPTIMIZER_ENABLED)
				float depthMask = POI2D_SAMPLER_PAN(_DepthMask, _MainTex, poiUV(poiMesh.uv[_DepthMaskUV], _DepthMask_ST), _DepthMaskPan).r;
				#else
				float depthMask = 1;
				#endif
				
				if (_DepthColorToggle)
				{
					float colorBlendAlpha = lerp(_DepthColorMinValue, _DepthColorMaxValue, remapClamped(_DepthColorMinDepth, _DepthColorMaxDepth, diff));
					
					#if defined(PROP_DEPTHTEXTURE) || !defined(OPTIMIZER_ENABLED)
					float3 depthColor = POI2D_SAMPLER_PAN(_DepthTexture, _MainTex, poiUV(poiMesh.uv[_DepthTextureUV], _DepthTexture_ST), _DepthTexturePan).rgb * poiThemeColor(poiMods, _DepthColor, _DepthColorThemeIndex);
					#else
					float3 depthColor = poiThemeColor(poiMods, _DepthColor, _DepthColorThemeIndex);
					#endif
					
					switch(_DepthColorBlendMode)
					{
						case 0:
						{
							poiFragData.finalColor = lerp(poiFragData.finalColor, depthColor, colorBlendAlpha * depthMask);
							break;
						}
						case 1:
						{
							poiFragData.finalColor *= lerp(1, depthColor, colorBlendAlpha * depthMask);
							break;
						}
						case 2:
						{
							poiFragData.finalColor = saturate(poiFragData.finalColor + lerp(0, depthColor, colorBlendAlpha * depthMask));
							break;
						}
					}
					poiFragData.emission += depthColor * colorBlendAlpha * _DepthEmissionStrength * depthMask;
				}
				
				if (_DepthAlphaToggle)
				{
					poiFragData.alpha *= lerp(poiFragData.alpha, saturate(lerp(_DepthAlphaMinValue, _DepthAlphaMaxValue, remapClamped(_DepthAlphaMinDepth, _DepthAlphaMaxDepth, diff))), depthMask);
				}
			}
			#endif
			
			float4 frag(v2f i, uint facing : SV_IsFrontFace) : SV_Target
			{
				#ifdef GRAIN
				clip(-1);
				return 0;
				#endif
				
				UNITY_SETUP_INSTANCE_ID(i);
				PoiMesh poiMesh;
				PoiInitStruct(PoiMesh, poiMesh);
				
				PoiLight poiLight;
				PoiInitStruct(PoiLight, poiLight);
				
				PoiVertexLights poiVertexLights;
				PoiInitStruct(PoiVertexLights, poiVertexLights);
				
				PoiCam poiCam;
				PoiInitStruct(PoiCam, poiCam);
				
				PoiMods poiMods;
				PoiInitStruct(PoiMods, poiMods);
				
				PoiFragData poiFragData;
				poiFragData.emission = 0;
				poiFragData.baseColor = float3(0, 0, 0);
				poiFragData.finalColor = float3(0, 0, 0);
				poiFragData.alpha = 1;
				
				// Mesh Data
				poiMesh.objectPosition = i.objectPos;
				poiMesh.objNormal = i.objNormal;
				poiMesh.normals[0] = i.normal;
				poiMesh.tangent = i.tangent;
				poiMesh.binormal = i.binormal;
				poiMesh.worldPos = i.worldPos.xyz;
				poiMesh.localPos = i.localPos.xyz;
				poiMesh.vertexColor = i.vertexColor;
				poiMesh.isFrontFace = facing;
				
				#ifndef POI_PASS_OUTLINE
				if (!poiMesh.isFrontFace)
				{
					poiMesh.normals[0] *= -1;
					poiMesh.tangent *= -1;
					poiMesh.binormal *= -1;
				}
				#endif
				
				poiCam.viewDir = !IsOrthographicCamera() ? normalize(_WorldSpaceCameraPos - i.worldPos.xyz) : normalize(UNITY_MATRIX_I_V._m02_m12_m22);
				float3 tanToWorld0 = float3(i.tangent.x, i.binormal.x, i.normal.x);
				float3 tanToWorld1 = float3(i.tangent.y, i.binormal.y, i.normal.y);
				float3 tanToWorld2 = float3(i.tangent.z, i.binormal.z, i.normal.z);
				float3 ase_tanViewDir = tanToWorld0 * poiCam.viewDir.x + tanToWorld1 * poiCam.viewDir.y + tanToWorld2 * poiCam.viewDir.z;
				poiCam.tangentViewDir = normalize(ase_tanViewDir);
				
				// 0-3 UV0-UV3
				// 4 Panosphere UV
				// 5 world pos xz
				// 6 Polar UV
				// 6 Distorted UV
				#if defined(LIGHTMAP_ON) || defined(DYNAMICLIGHTMAP_ON)
				poiMesh.lightmapUV = i.lightmapUV;
				#endif
				poiMesh.parallaxUV = poiCam.tangentViewDir.xy / max(poiCam.tangentViewDir.z, 0.0001);
				poiMesh.uv[0] = i.uv[0];
				poiMesh.uv[1] = i.uv[1];
				poiMesh.uv[2] = i.uv[2];
				poiMesh.uv[3] = i.uv[3];
				poiMesh.uv[4] = poiMesh.uv[0];
				poiMesh.uv[5] = poiMesh.worldPos.xz;
				poiMesh.uv[6] = poiMesh.uv[0];
				poiMesh.uv[7] = poiMesh.uv[0];
				
				poiMesh.uv[4] = calculatePanosphereUV(poiMesh);
				poiMesh.uv[6] = calculatePolarCoordinate(poiMesh);
				#ifdef USER_LUT
				poiMesh.uv[7] = distortedUV(poiMesh);
				#endif
				/*
				half3 worldViewUp = normalize(half3(0, 1, 0) - poiCam.viewDir * dot(poiCam.viewDir, half3(0, 1, 0)));
				half3 worldViewRight = normalize(cross(poiCam.viewDir, worldViewUp));
				poiMesh[8] = half2(dot(worldViewRight, poiMesh.normals[_MatcapNormal]), dot(worldViewUp, poiMesh.normals[_MatcapNormal])) * _MatcapBorder + 0.5;
				*/
				
				#ifdef POI_PARALLAX
				#ifndef POI_PASS_OUTLINE
				//return frac(i.tangentViewDir.x);
				//return float4(i.binormal.xyz,1);
				applyParallax(poiMesh, poiLight, poiCam);
				#endif
				#endif
				
				float4 mainTexture = UNITY_SAMPLE_TEX2D(_MainTex, poiUV(poiMesh.uv[_MainTexUV].xy, _MainTex_ST) + _Time.x * _MainTexPan);
				
				float3 mainNormal = UnpackScaleNormal(POI2D_SAMPLER_PAN(_BumpMap, _MainTex, poiUV(poiMesh.uv[_BumpMapUV], _BumpMap_ST), _BumpMapPan), _BumpScale);
				poiMesh.tangentSpaceNormal = mainNormal;
				
				#if defined(FINALPASS) && !defined(UNITY_PASS_SHADOWCASTER) && !defined(POI_PASS_OUTLINE)
				ApplyDetailNormal(poiMods, poiMesh);
				#endif
				
				#if defined(GEOM_TYPE_MESH) && defined(VIGNETTE) && !defined(UNITY_PASS_SHADOWCASTER) && !defined(POI_PASS_OUTLINE)
				calculateRGBNormals(poiMesh);
				#endif
				
				poiMesh.normals[1] = normalize(
				poiMesh.tangentSpaceNormal.x * poiMesh.tangent.xyz +
				poiMesh.tangentSpaceNormal.y * poiMesh.binormal +
				poiMesh.tangentSpaceNormal.z * poiMesh.normals[0]
				);
				
				// I'm just testing this because it makes it the same as if there is no normal map in the slot
				float3 fancyNormal = UnpackNormal(float4(0.5, 0.5, 1, 1));
				poiMesh.normals[0] = normalize(
				fancyNormal.x * poiMesh.tangent.xyz +
				fancyNormal.y * poiMesh.binormal +
				fancyNormal.z * poiMesh.normals[0]
				);
				
				// Camera data
				poiCam.forwardDir = getCameraForward();
				poiCam.worldPos = _WorldSpaceCameraPos;
				poiCam.reflectionDir = reflect(-poiCam.viewDir, poiMesh.normals[1]);
				//poiCam.distanceToModel = distance(poiMesh.modelPos, poiCam.worldPos);
				poiCam.distanceToVert = distance(poiMesh.worldPos, poiCam.worldPos);
				poiCam.grabPos = i.grabPos;
				poiCam.screenUV = calcScreenUVs(i.grabPos);
				poiCam.vDotN = abs(dot(poiCam.viewDir, poiMesh.normals[1]));
				poiCam.clipPos = i.pos;
				poiCam.worldDirection = i.worldDirection;
				
				#ifdef COLOR_GRADING_LOG_VIEW
				SetupAudioLink(poiFragData, poiMods, poiMesh);
				#endif
				
				#ifdef POI_UDIMDISCARD
				applyUDIMDiscard(poiFragData, poiMesh);
				#endif
				
				poiFragData.baseColor = mainTexture.rgb * poiThemeColor(poiMods, _Color.rgb, _ColorThemeIndex);
				poiFragData.alpha = mainTexture.a * _Color.a;
				
				#ifdef COLOR_GRADING_HDR
				#if defined(PROP_MAINCOLORADJUSTTEXTURE) || !defined(OPTIMIZER_ENABLED)
				float4 hueShiftAlpha = POI2D_SAMPLER_PAN(_MainColorAdjustTexture, _MainTex, poiUV(poiMesh.uv[_MainColorAdjustTextureUV], _MainColorAdjustTexture_ST), _MainColorAdjustTexturePan);
				#else
				float4 hueShiftAlpha = 1;
				#endif
				
				if (_MainHueShiftToggle)
				{
					float shift = _MainHueShift;
					#ifdef COLOR_GRADING_LOG_VIEW
					//UNITY_BRANCH
					if (poiMods.audioLinkAvailable && _MainHueALCTEnabled)
					{
						shift += AudioLinkGetChronoTime(_MainALHueShiftCTIndex, _MainALHueShiftBand) * _MainHueALMotionSpeed;
					}
					#endif
					if (_MainHueShiftReplace)
					{
						poiFragData.baseColor = lerp(poiFragData.baseColor, hueShift(poiFragData.baseColor, shift + _MainHueShiftSpeed * _Time.x), hueShiftAlpha.r);
					}
					else
					{
						poiFragData.baseColor = hueShift(poiFragData.baseColor, frac((shift - (1 - hueShiftAlpha.r) + _MainHueShiftSpeed * _Time.x)));
					}
				}
				poiFragData.baseColor = lerp(poiFragData.baseColor, dot(poiFragData.baseColor, float3(0.3, 0.59, 0.11)), -_Saturation * hueShiftAlpha.b);
				poiFragData.baseColor = saturate(poiFragData.baseColor + _MainBrightness * hueShiftAlpha.g);
				#endif
				
				#if defined(PROP_CLIPPINGMASK) || !defined(OPTIMIZER_ENABLED)
				float alphaMask = POI2D_SAMPLER_PAN(_ClippingMask, _MainTex, poiUV(poiMesh.uv[_ClippingMaskUV], _ClippingMask_ST), _ClippingMaskPan).r;
				if (_Inverse_Clipping)
				{
					alphaMask = 1 - alphaMask;
				}
				#else
				float alphaMask = 1;
				#endif
				
				poiFragData.alpha *= alphaMask;
				
				applyAlphaOptions(poiFragData, poiMesh, poiCam, poiMods);
				
				applyVertexColor(poiFragData, poiMesh);
				
				#ifdef POI_BACKFACE
				ApplyBackFaceColor(poiFragData, poiMesh, poiMods);
				#endif
				
				#ifdef DISTORT
				applyDissolve(poiFragData, poiMesh, poiMods);
				#endif
				
				#ifdef COLOR_GRADING_LOG_VIEW
				#ifdef POI_AL_DECAL
				ApplyAudioLinkDecal(poiMesh, poiFragData, poiMods);
				#endif
				#endif
				
				#ifdef _SUNDISK_HIGH_QUALITY
				applyFlipbook(poiFragData, poiMesh, poiMods);
				#endif
				
				#ifdef POI_MIRROR
				applyMirror(poiFragData, poiMesh);
				#endif
				
				poiFragData.finalColor = poiFragData.baseColor;
				
				#ifdef GRAIN
				applyDepthFX(poiFragData, poiCam, poiMesh, poiMods);
				#endif
				
				//UNITY_BRANCH
				if (_IgnoreFog == 0)
				{
					UNITY_APPLY_FOG(i.fogCoord, poiFragData.finalColor);
				}
				
				//#ifndef UNITY_PASS_SHADOWCASTER
				if (_Mode == POI_MODE_OPAQUE)
				{
					poiFragData.alpha = 1;
				}
				
				if (_Mode == 1)
				{
					clip(poiFragData.alpha - _Cutoff);
				}
				
				if (_Mode == POI_MODE_FADE)
				{
					clip(poiFragData.alpha -= 0.01);
				}
				
				return float4(poiFragData.finalColor + poiFragData.emission, poiFragData.alpha) + mainTexture * 0.0001;
				//#else
				//	SHADOW_CASTER_FRAGMENT(i)
				//#endif
				
			}
			
			ENDCG
			
		}
		
	}
	CustomEditor "Thry.ShaderEditor"
}
