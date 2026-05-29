// Made with Amplify Shader Editor v1.9.3.3
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "ALP/Surface Detail"
{
	Properties
	{
		[HideInInspector] _EmissionColor("Emission Color", Color) = (1,1,1,1)
		[HideInInspector] _AlphaCutoff("Alpha Cutoff ", Range(0, 1)) = 0.5
		[HideInInspector][Enum(Front,2,Back,1,Both,0)]_Cull("Render Face", Int) = 2
		[DE_DrawerCategory(COLOR,true,_BaseColor,0,0)]_CATEGORY_COLOR("CATEGORY_COLOR", Float) = 1
		_BaseColor("Base Color", Color) = (1,1,1,0)
		_BaseColorSaturation("Saturation", Range( 0 , 1)) = 0
		_Brightness("Brightness", Range( 0 , 2)) = 1
		[DE_DrawerSpace(10)]_SPACE_COLOR("SPACE_COLOR", Float) = 0
		[DE_DrawerCategory(SURFACE INPUTS,true,_MainTex,0,0)]_CATEGORY_SURFACEINPUTS("CATEGORY_SURFACE INPUTS", Float) = 1
		[DE_DrawerTextureSingleLine]_MainTex("Base Map", 2D) = "white" {}
		[DE_DrawerFloatEnum(UV0 _UV1 _UV2 _UV3)]_UVMode("UV Mode", Float) = 0
		[DE_DrawerTilingOffset]_MainUVs("Main UVs", Vector) = (1,1,0,0)
		[DE_DrawerTextureSingleLine][Space(10)]_MetallicGlossMap("Metallic Map", 2D) = "white" {}
		_MetallicStrength("Metallic Strength", Range( 0 , 1)) = 0
		[DE_DrawerFloatEnum(Smoothness _Roughness)][Space(10)]_SmoothnessSource("Smoothness Source", Float) = 1
		[DE_DrawerTextureSingleLine]_SmoothnessMap("Smoothness Map", 2D) = "white" {}
		_SmoothnessStrength("Smoothness Strength", Range( 0 , 1)) = 0
		[DE_DrawerToggleLeft]_SmoothnessFresnelEnable("ENABLE FRESNEL", Float) = 0
		_SmoothnessFresnelScale("Fresnel Scale", Range( 0 , 3)) = 1.1
		_SmoothnessFresnelPower("Fresnel Power", Range( 0 , 20)) = 10
		[DE_DrawerFloatEnum(Texture _Vertex Color)][Space(10)]_OcclusionSource("Occlusion Source", Float) = 0
		[DE_DrawerTextureSingleLine]_OcclusionMap("Occlusion Map", 2D) = "white" {}
		_OcclusionStrengthAO("Occlusion Strength", Range( 0 , 1)) = 0
		[Normal][DE_DrawerTextureSingleLine][Space(10)]_BumpMap("Normal Map", 2D) = "bump" {}
		_NormalStrength("Normal Strength", Float) = 1
		[DE_DrawerSpace(10)]_SPACE_SURFACEINPUTS("SPACE_SURFACE INPUTS", Float) = 0
		[DE_DrawerCategory(TRANSMISSION,true,_TransmissionEnable,0,0)]_CATEGORY_TRANSMISSION("CATEGORY_TRANSMISSION", Float) = 0
		[DE_DrawerSpace(10)]_SPACE_TRANSLUCENCY("SPACE_TRANSLUCENCY", Float) = 0
		[DE_DrawerCategory(DETAIL MAPPING,true,_DetailEnable,0,0)]_CATEGORY_DETAILMAPPING("CATEGORY_DETAIL MAPPING", Float) = 0
		[DE_DrawerToggleLeft]_DetailEnable("ENABLE DETAIL MAP", Float) = 0
		[HDR]_DetailColor("Detail Color", Color) = (1,1,1,0)
		_DetailBrightness("Brightness", Range( 0 , 2)) = 1
		_DetailSaturation("Saturation", Range( 0 , 1)) = 0
		[DE_DrawerTextureSingleLine]_DetailColorMap("Detail Map", 2D) = "white" {}
		[DE_DrawerTilingOffset]_DetailUVs("Detail UVs", Vector) = (1,1,0,0)
		[DE_DrawerFloatEnum(UV0 _UV1 _UV2 _UV3)]_DetailUVMode("Detail UV Mode", Float) = 0
		_DetailUVRotation("Detail UV Rotation", Float) = 0
		[Normal][DE_DrawerTextureSingleLine]_DetailNormalMap("Normal Map", 2D) = "bump" {}
		_DetailNormalStrength("Normal Strength", Float) = 1
		[DE_DrawerFloatEnum(Off _Red _Green _Blue _Alpha)]_DetailBlendVertexColor("Blend Vertex Color", Int) = 0
		[DE_DrawerFloatEnum(BaseColor _Detail)]_DetailBlendSource("Blend Source", Float) = 1
		_DetailBlendStrength("Blend Strength", Range( 0 , 3)) = 1
		_DetailBlendHeight("Blend Height", Range( 0.001 , 3)) = 0.5
		_DetailBlendSmooth("Blend Smooth", Range( 0.001 , 1)) = 0.5
		[DE_DrawerToggleLeft][Space(5)]_DetailBlendEnableAltitudeMask("ENABLE ALTITUDE MASK", Float) = 0
		_DetailBlendHeightMin("Blend Height Min", Float) = -0.5
		_DetailBlendHeightMax("Blend Height Max", Float) = 1
		[DE_DrawerToggleLeft][Space(10)]_DetailMaskEnable("ENABLE DETAIL MAP MASK", Float) = 0
		[DE_DrawerToggleNoKeyword]_DetailMaskIsInverted("Detail Mask Is Inverted", Float) = 0
		[DE_DrawerTextureSingleLine]_DetailMaskMap("Detail Mask", 2D) = "white" {}
		[DE_DrawerTilingOffset]_DetailMaskUVs("Detail Mask UVs", Vector) = (1,1,0,0)
		_DetailMaskUVRotation("Detail Mask Rotation", Float) = 0
		_DetailMaskBlendStrength("Detail Mask Blend Strength", Range( 0.001 , 1)) = 1
		_DetailMaskBlendHardness("Detail Mask Blend Hardness", Range( 0.001 , 5)) = 1
		_DetailMaskBlendFalloff("Detail Mask Blend Falloff", Range( 0.001 , 0.999)) = 0.999
		[DE_DrawerSpace(10)]_SPACE_DETAIL("SPACE_DETAIL", Float) = 0
		[DE_DrawerCategory(DETAIL MAPPING SECONDARY,true,_DetailSecondaryEnable,0,0)]_CATEGORY_DETAILMAPPINGSECONDARY("CATEGORY_DETAIL MAPPING SECONDARY", Float) = 0
		[DE_DrawerToggleLeft]_DetailSecondaryEnable("ENABLE DETAIL MAP SECONDARY", Float) = 0
		[HDR]_DetailSecondaryColor("Detail Color", Color) = (1,1,1,0)
		_DetailSecondaryBrightness("Brightness", Range( 0 , 2)) = 1
		_DetailSecondarySaturation("Saturation", Range( 0 , 1)) = 0
		[DE_DrawerTextureSingleLine]_DetailSecondaryColorMap("Detail Map", 2D) = "white" {}
		[DE_DrawerTilingOffset]_DetailSecondaryUVs("Detail Secondary UVs", Vector) = (1,1,0,0)
		[DE_DrawerFloatEnum(UV0 _UV1 _UV2 _UV3)]_DetailSecondaryUVMode("Detail Secondary UV Mode", Float) = 0
		_DetailSecondaryUVRotation("Detail Secondary UV Rotation", Float) = 0
		[Normal][DE_DrawerTextureSingleLine]_DetailSecondaryNormalMap("Normal Map", 2D) = "bump" {}
		_DetailSecondaryNormalStrength("Normal Strength", Float) = 1
		[DE_DrawerFloatEnum(Off _Red _Green _Blue _Alpha)]_DetailSecondaryBlendVertexColor("Blend Vertex Color", Int) = 0
		[DE_DrawerFloatEnum(BaseColor _Detail)]_DetailSecondaryBlendSource("Blend Source", Float) = 1
		_DetailSecondaryBlendStrength("Blend Strength", Range( 0.001 , 3)) = 1
		_DetailSecondaryBlendHeight("Blend Height", Range( 0.001 , 3)) = 0.5
		_DetailSecondaryBlendSmooth("Blend Smooth", Range( 0.001 , 1)) = 0.5
		[DE_DrawerToggleLeft][Space(5)]_DetailSecondaryBlendEnableAltitudeMask("ENABLE ALTITUDE MASK", Float) = 0
		_DetailSecondaryBlendHeightMin("Blend Height Min", Float) = -0.5
		_DetailSecondaryBlendHeightMax("Blend Height Max", Float) = 1
		[Header(BLEND WEIGHT)][Space(5)]_DetailSecondaryBlendWeightLayer1("Blend Weight Detail", Range( 0 , 1)) = 0.5
		_DetailSecondaryBlendWeightLayer2("Blend Weight Detail Secondary", Range( 0 , 1)) = 0.5
		[DE_DrawerToggleLeft][Space(10)]_DetailSecondaryMaskEnable("ENABLE DETAIL MAP SECONDARY MASK", Float) = 0
		[DE_DrawerToggleNoKeyword]_DetailSecondaryMaskIsInverted("Detail Mask Is Inverted", Float) = 0
		[DE_DrawerTextureSingleLine]_DetailSecondaryMaskMap("Detail Mask", 2D) = "white" {}
		[DE_DrawerTilingOffset]_DetailSecondaryMaskUVs("Detail Mask UVs", Vector) = (1,1,0,0)
		_DetailSecondaryMaskUVRotation("Detail Mask Rotation", Float) = 0
		_DetailSecondaryMaskBlendStrength("Detail Mask Blend Strength", Range( 0.001 , 1)) = 0.5
		_DetailSecondaryMaskBlendHardness("Detail Mask Blend Hardness", Range( 0.001 , 5)) = 1.35
		_DetailSecondaryMaskBlendFalloff("Detail Mask Blend Falloff", Range( 0.001 , 0.999)) = 0.5
		[DE_DrawerSpace(10)]_SPACE_DETAILSECONDARY("SPACE_DETAILSECONDARY", Float) = 0


		//_TransmissionShadow( "Transmission Shadow", Range( 0, 1 ) ) = 0.5
		//_TransStrength( "Trans Strength", Range( 0, 50 ) ) = 1
		//_TransNormal( "Trans Normal Distortion", Range( 0, 1 ) ) = 0.5
		//_TransScattering( "Trans Scattering", Range( 1, 50 ) ) = 2
		//_TransDirect( "Trans Direct", Range( 0, 1 ) ) = 0.9
		//_TransAmbient( "Trans Ambient", Range( 0, 1 ) ) = 0.1
		//_TransShadow( "Trans Shadow", Range( 0, 1 ) ) = 0.5
		//_TessPhongStrength( "Tess Phong Strength", Range( 0, 1 ) ) = 0.5
		//_TessValue( "Tess Max Tessellation", Range( 1, 32 ) ) = 16
		//_TessMin( "Tess Min Distance", Float ) = 10
		//_TessMax( "Tess Max Distance", Float ) = 25
		//_TessEdgeLength ( "Tess Edge length", Range( 2, 50 ) ) = 16
		//_TessMaxDisp( "Tess Max Displacement", Float ) = 25

		[HideInInspector][ToggleOff] _SpecularHighlights("Specular Highlights", Float) = 1.0
		[HideInInspector][ToggleOff] _EnvironmentReflections("Environment Reflections", Float) = 1.0
		[HideInInspector][ToggleOff] _ReceiveShadows("Receive Shadows", Float) = 1.0

		[HideInInspector] _QueueOffset("_QueueOffset", Float) = 0
        [HideInInspector] _QueueControl("_QueueControl", Float) = -1

        [HideInInspector][NoScaleOffset] unity_Lightmaps("unity_Lightmaps", 2DArray) = "" {}
        [HideInInspector][NoScaleOffset] unity_LightmapsInd("unity_LightmapsInd", 2DArray) = "" {}
        [HideInInspector][NoScaleOffset] unity_ShadowMasks("unity_ShadowMasks", 2DArray) = "" {}
	}

	SubShader
	{
		LOD 0

		

		Tags { "RenderPipeline"="UniversalPipeline" "RenderType"="Opaque" "Queue"="Geometry" "UniversalMaterialType"="Lit" }

		Cull [_Cull]
		ZWrite On
		ZTest LEqual
		Offset 0 , 0
		AlphaToMask Off

		

		HLSLINCLUDE
		#pragma target 4.5
		#pragma prefer_hlslcc gles
		// ensure rendering platforms toggle list is visible

		#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Common.hlsl"
		#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Filtering.hlsl"

		#ifndef ASE_TESS_FUNCS
		#define ASE_TESS_FUNCS
		float4 FixedTess( float tessValue )
		{
			return tessValue;
		}

		float CalcDistanceTessFactor (float4 vertex, float minDist, float maxDist, float tess, float4x4 o2w, float3 cameraPos )
		{
			float3 wpos = mul(o2w,vertex).xyz;
			float dist = distance (wpos, cameraPos);
			float f = clamp(1.0 - (dist - minDist) / (maxDist - minDist), 0.01, 1.0) * tess;
			return f;
		}

		float4 CalcTriEdgeTessFactors (float3 triVertexFactors)
		{
			float4 tess;
			tess.x = 0.5 * (triVertexFactors.y + triVertexFactors.z);
			tess.y = 0.5 * (triVertexFactors.x + triVertexFactors.z);
			tess.z = 0.5 * (triVertexFactors.x + triVertexFactors.y);
			tess.w = (triVertexFactors.x + triVertexFactors.y + triVertexFactors.z) / 3.0f;
			return tess;
		}

		float CalcEdgeTessFactor (float3 wpos0, float3 wpos1, float edgeLen, float3 cameraPos, float4 scParams )
		{
			float dist = distance (0.5 * (wpos0+wpos1), cameraPos);
			float len = distance(wpos0, wpos1);
			float f = max(len * scParams.y / (edgeLen * dist), 1.0);
			return f;
		}

		float DistanceFromPlane (float3 pos, float4 plane)
		{
			float d = dot (float4(pos,1.0f), plane);
			return d;
		}

		bool WorldViewFrustumCull (float3 wpos0, float3 wpos1, float3 wpos2, float cullEps, float4 planes[6] )
		{
			float4 planeTest;
			planeTest.x = (( DistanceFromPlane(wpos0, planes[0]) > -cullEps) ? 1.0f : 0.0f ) +
							(( DistanceFromPlane(wpos1, planes[0]) > -cullEps) ? 1.0f : 0.0f ) +
							(( DistanceFromPlane(wpos2, planes[0]) > -cullEps) ? 1.0f : 0.0f );
			planeTest.y = (( DistanceFromPlane(wpos0, planes[1]) > -cullEps) ? 1.0f : 0.0f ) +
							(( DistanceFromPlane(wpos1, planes[1]) > -cullEps) ? 1.0f : 0.0f ) +
							(( DistanceFromPlane(wpos2, planes[1]) > -cullEps) ? 1.0f : 0.0f );
			planeTest.z = (( DistanceFromPlane(wpos0, planes[2]) > -cullEps) ? 1.0f : 0.0f ) +
							(( DistanceFromPlane(wpos1, planes[2]) > -cullEps) ? 1.0f : 0.0f ) +
							(( DistanceFromPlane(wpos2, planes[2]) > -cullEps) ? 1.0f : 0.0f );
			planeTest.w = (( DistanceFromPlane(wpos0, planes[3]) > -cullEps) ? 1.0f : 0.0f ) +
							(( DistanceFromPlane(wpos1, planes[3]) > -cullEps) ? 1.0f : 0.0f ) +
							(( DistanceFromPlane(wpos2, planes[3]) > -cullEps) ? 1.0f : 0.0f );
			return !all (planeTest);
		}

		float4 DistanceBasedTess( float4 v0, float4 v1, float4 v2, float tess, float minDist, float maxDist, float4x4 o2w, float3 cameraPos )
		{
			float3 f;
			f.x = CalcDistanceTessFactor (v0,minDist,maxDist,tess,o2w,cameraPos);
			f.y = CalcDistanceTessFactor (v1,minDist,maxDist,tess,o2w,cameraPos);
			f.z = CalcDistanceTessFactor (v2,minDist,maxDist,tess,o2w,cameraPos);

			return CalcTriEdgeTessFactors (f);
		}

		float4 EdgeLengthBasedTess( float4 v0, float4 v1, float4 v2, float edgeLength, float4x4 o2w, float3 cameraPos, float4 scParams )
		{
			float3 pos0 = mul(o2w,v0).xyz;
			float3 pos1 = mul(o2w,v1).xyz;
			float3 pos2 = mul(o2w,v2).xyz;
			float4 tess;
			tess.x = CalcEdgeTessFactor (pos1, pos2, edgeLength, cameraPos, scParams);
			tess.y = CalcEdgeTessFactor (pos2, pos0, edgeLength, cameraPos, scParams);
			tess.z = CalcEdgeTessFactor (pos0, pos1, edgeLength, cameraPos, scParams);
			tess.w = (tess.x + tess.y + tess.z) / 3.0f;
			return tess;
		}

		float4 EdgeLengthBasedTessCull( float4 v0, float4 v1, float4 v2, float edgeLength, float maxDisplacement, float4x4 o2w, float3 cameraPos, float4 scParams, float4 planes[6] )
		{
			float3 pos0 = mul(o2w,v0).xyz;
			float3 pos1 = mul(o2w,v1).xyz;
			float3 pos2 = mul(o2w,v2).xyz;
			float4 tess;

			if (WorldViewFrustumCull(pos0, pos1, pos2, maxDisplacement, planes))
			{
				tess = 0.0f;
			}
			else
			{
				tess.x = CalcEdgeTessFactor (pos1, pos2, edgeLength, cameraPos, scParams);
				tess.y = CalcEdgeTessFactor (pos2, pos0, edgeLength, cameraPos, scParams);
				tess.z = CalcEdgeTessFactor (pos0, pos1, edgeLength, cameraPos, scParams);
				tess.w = (tess.x + tess.y + tess.z) / 3.0f;
			}
			return tess;
		}
		#endif //ASE_TESS_FUNCS
		ENDHLSL

		
		Pass
		{
			
			Name "Forward"
			Tags { "LightMode"="UniversalForward" }

			Blend One Zero, One Zero
			ZWrite On
			ZTest LEqual
			Offset 0 , 0
			ColorMask RGBA

			

			HLSLPROGRAM

			#define _NORMAL_DROPOFF_TS 1
			#pragma multi_compile_instancing
			#pragma instancing_options renderinglayer
			#pragma multi_compile_fragment _ LOD_FADE_CROSSFADE
			#pragma multi_compile_fog
			#define ASE_FOG 1
			#define _NORMALMAP 1
			#define ASE_SRP_VERSION 120114
			#ifdef UNITY_COLORSPACE_GAMMA//ASE Color Space Def
			#define unity_ColorSpaceDouble half4(2.0, 2.0, 2.0, 2.0)//ASE Color Space Def
			#else // Linear values//ASE Color Space Def
			#define unity_ColorSpaceDouble half4(4.59479380, 4.59479380, 4.59479380, 2.0)//ASE Color Space Def
			#endif//ASE Color Space Def
			#define ASE_USING_SAMPLING_MACROS 1


			#pragma shader_feature_local _RECEIVE_SHADOWS_OFF
			#pragma shader_feature_local_fragment _SPECULARHIGHLIGHTS_OFF
			#pragma shader_feature_local_fragment _ENVIRONMENTREFLECTIONS_OFF

			#pragma multi_compile _ _MAIN_LIGHT_SHADOWS _MAIN_LIGHT_SHADOWS_CASCADE _MAIN_LIGHT_SHADOWS_SCREEN
			#pragma multi_compile _ _ADDITIONAL_LIGHTS_VERTEX _ADDITIONAL_LIGHTS
			#pragma multi_compile_fragment _ _ADDITIONAL_LIGHT_SHADOWS
			#pragma multi_compile_fragment _ _REFLECTION_PROBE_BLENDING
			#pragma multi_compile_fragment _ _REFLECTION_PROBE_BOX_PROJECTION
			#pragma multi_compile_fragment _ _SHADOWS_SOFT
			#pragma multi_compile_fragment _ _SCREEN_SPACE_OCCLUSION
			#pragma multi_compile_fragment _ _DBUFFER_MRT1 _DBUFFER_MRT2 _DBUFFER_MRT3
			#pragma multi_compile_fragment _ _LIGHT_LAYERS
			#pragma multi_compile_fragment _ _LIGHT_COOKIES
			#pragma multi_compile _ _CLUSTERED_RENDERING

            #pragma multi_compile _ DOTS_INSTANCING_ON

			#pragma multi_compile _ LIGHTMAP_SHADOW_MIXING
			#pragma multi_compile _ SHADOWS_SHADOWMASK
			#pragma multi_compile _ DIRLIGHTMAP_COMBINED
			#pragma multi_compile _ LIGHTMAP_ON
			#pragma multi_compile _ DYNAMICLIGHTMAP_ON
			#pragma multi_compile_fragment _ DEBUG_DISPLAY

			#pragma vertex vert
			#pragma fragment frag

			#define SHADERPASS SHADERPASS_FORWARD

			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Color.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Input.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Shadows.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ShaderGraphFunctions.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/DBuffer.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/ShaderPass.hlsl"

			#if defined(UNITY_INSTANCING_ENABLED) && defined(_TERRAIN_INSTANCED_PERPIXEL_NORMAL)
				#define ENABLE_TERRAIN_PERPIXEL_NORMAL
			#endif

			#define ASE_NEEDS_FRAG_COLOR
			#define ASE_NEEDS_FRAG_WORLD_POSITION
			#define ASE_NEEDS_FRAG_WORLD_VIEW_DIR
			#define ASE_NEEDS_FRAG_WORLD_TANGENT
			#define ASE_NEEDS_FRAG_WORLD_BITANGENT
			#define ASE_NEEDS_FRAG_WORLD_NORMAL


			#if defined(ASE_EARLY_Z_DEPTH_OPTIMIZE) && (SHADER_TARGET >= 45)
				#define ASE_SV_DEPTH SV_DepthLessEqual
				#define ASE_SV_POSITION_QUALIFIERS linear noperspective centroid
			#else
				#define ASE_SV_DEPTH SV_Depth
				#define ASE_SV_POSITION_QUALIFIERS
			#endif

			struct VertexInput
			{
				float4 positionOS : POSITION;
				float3 normalOS : NORMAL;
				float4 tangentOS : TANGENT;
				float4 texcoord : TEXCOORD0;
				float4 texcoord1 : TEXCOORD1;
				float4 texcoord2 : TEXCOORD2;
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_color : COLOR;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct VertexOutput
			{
				ASE_SV_POSITION_QUALIFIERS float4 positionCS : SV_POSITION;
				float4 clipPosV : TEXCOORD0;
				float4 lightmapUVOrVertexSH : TEXCOORD1;
				half4 fogFactorAndVertexLight : TEXCOORD2;
				float4 tSpace0 : TEXCOORD3;
				float4 tSpace1 : TEXCOORD4;
				float4 tSpace2 : TEXCOORD5;
				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR)
					float4 shadowCoord : TEXCOORD6;
				#endif
				#if defined(DYNAMICLIGHTMAP_ON)
					float2 dynamicLightmapUV : TEXCOORD7;
				#endif
				float4 ase_texcoord8 : TEXCOORD8;
				float4 ase_texcoord9 : TEXCOORD9;
				float4 ase_color : COLOR;
				float4 ase_texcoord10 : TEXCOORD10;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			CBUFFER_START(UnityPerMaterial)
			float4 _DetailMaskMap_TexelSize;
			float4 _DetailSecondaryMaskUVs;
			float4 _DetailMaskUVs;
			float4 _DetailColorMap_TexelSize;
			float4 _DetailUVs;
			float4 _DetailNormalMap_TexelSize;
			float4 _DetailSecondaryNormalMap_TexelSize;
			float4 _MainUVs;
			half4 _DetailColor;
			half4 _BaseColor;
			float4 _DetailSecondaryColorMap_TexelSize;
			half4 _DetailSecondaryColor;
			float4 _DetailSecondaryUVs;
			float4 _DetailSecondaryMaskMap_TexelSize;
			half _DetailSecondaryBlendHeight;
			int _DetailSecondaryBlendVertexColor;
			half _DetailSecondaryBlendSmooth;
			half _DetailSecondaryBlendStrength;
			half _DetailSecondaryBlendSource;
			half _DetailSecondaryMaskIsInverted;
			half _DetailSecondaryMaskEnable;
			half _DetailSecondaryBlendHeightMin;
			half _DetailSecondaryMaskBlendFalloff;
			half _DetailSecondaryMaskBlendStrength;
			half _DetailSecondaryMaskBlendHardness;
			half _DetailSecondaryBlendHeightMax;
			int _Cull;
			float _DetailSecondaryEnable;
			half _SmoothnessFresnelEnable;
			half _SmoothnessFresnelPower;
			half _SmoothnessFresnelScale;
			half _SmoothnessStrength;
			half _SmoothnessSource;
			float _MetallicStrength;
			float _DetailSecondaryBlendEnableAltitudeMask;
			half _DetailSecondaryNormalStrength;
			half _NormalStrength;
			float _SPACE_DETAILSECONDARY;
			float _CATEGORY_DETAILMAPPINGSECONDARY;
			float _SPACE_DETAIL;
			float _CATEGORY_DETAILMAPPING;
			half _DetailEnable;
			half _DetailNormalStrength;
			half _DetailSecondaryMaskUVRotation;
			half _DetailSecondaryUVMode;
			half _DetailSecondaryBrightness;
			float _SPACE_TRANSLUCENCY;
			float _CATEGORY_TRANSMISSION;
			float _CATEGORY_SURFACEINPUTS;
			float _SPACE_SURFACEINPUTS;
			float _SPACE_COLOR;
			float _CATEGORY_COLOR;
			float _UVMode;
			float _BaseColorSaturation;
			half _Brightness;
			half _DetailUVRotation;
			half _DetailUVMode;
			half _DetailBrightness;
			float _DetailSaturation;
			half _DetailMaskUVRotation;
			half _DetailMaskIsInverted;
			half _DetailMaskBlendStrength;
			half _DetailMaskBlendHardness;
			half _OcclusionStrengthAO;
			half _DetailSecondaryUVRotation;
			float _DetailSecondaryBlendWeightLayer2;
			float _DetailSecondaryBlendWeightLayer1;
			float _DetailBlendEnableAltitudeMask;
			half _DetailBlendHeightMax;
			float _DetailSecondarySaturation;
			half _DetailBlendHeightMin;
			int _DetailBlendVertexColor;
			half _DetailBlendSmooth;
			half _DetailBlendStrength;
			half _DetailBlendSource;
			half _DetailMaskEnable;
			half _DetailMaskBlendFalloff;
			half _DetailBlendHeight;
			half _OcclusionSource;
			#ifdef ASE_TRANSMISSION
				float _TransmissionShadow;
			#endif
			#ifdef ASE_TRANSLUCENCY
				float _TransStrength;
				float _TransNormal;
				float _TransScattering;
				float _TransDirect;
				float _TransAmbient;
				float _TransShadow;
			#endif
			#ifdef ASE_TESSELLATION
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			CBUFFER_END

			#ifdef SCENEPICKINGPASS
				float4 _SelectionID;
			#endif

			#ifdef SCENESELECTIONPASS
				int _ObjectId;
				int _PassValue;
			#endif

			TEXTURE2D(_MainTex);
			SAMPLER(sampler_MainTex);
			TEXTURE2D(_DetailColorMap);
			TEXTURE2D(_DetailMaskMap);
			TEXTURE2D(_DetailSecondaryColorMap);
			TEXTURE2D(_DetailSecondaryMaskMap);
			TEXTURE2D(_BumpMap);
			SAMPLER(sampler_BumpMap);
			TEXTURE2D(_DetailNormalMap);
			TEXTURE2D(_DetailSecondaryNormalMap);
			TEXTURE2D(_MetallicGlossMap);
			SAMPLER(sampler_MetallicGlossMap);
			TEXTURE2D(_SmoothnessMap);
			SAMPLER(sampler_SmoothnessMap);
			TEXTURE2D(_OcclusionMap);
			SAMPLER(sampler_OcclusionMap);


			float4 mod289( float4 x )
			{
				return x - floor(x * (1.0 / 289.0)) * 289.0;
			}
			
			float4 perm( float4 x )
			{
				return mod289(((x * 34.0) + 1.0) * x);
			}
			
			float SimpleNoise3D( float3 p )
			{
				 float3 a = floor(p);
				    float3 d = p - a;
				    d = d * d * (3.0 - 2.0 * d);
				 float4 b = a.xxyy + float4(0.0, 1.0, 0.0, 1.0);
				    float4 k1 = perm(b.xyxy);
				 float4 k2 = perm(k1.xyxy + b.zzww);
				    float4 c = k2 + a.zzzz;
				    float4 k3 = perm(c);
				    float4 k4 = perm(c + 1.0);
				    float4 o1 = frac(k3 * (1.0 / 41.0));
				 float4 o2 = frac(k4 * (1.0 / 41.0));
				    float4 o3 = o2 * d.z + o1 * (1.0 - d.z);
				    float2 o4 = o3.yw * d.x + o3.xz * (1.0 - d.x);
				    return o4.y * d.y + o4.x * (1.0 - d.y);
			}
			
			float2 float2switchUVMode80_g58525( float m_switch, float2 m_UV0, float2 m_UV1, float2 m_UV2, float2 m_UV3 )
			{
				if(m_switch ==0)
					return m_UV0;
				else if(m_switch ==1)
					return m_UV1;
				else if(m_switch ==2)
					return m_UV2;
				else if(m_switch ==3)
					return m_UV3;
				else
				return float2(0,0);
			}
			
			float2 float2switchUVMode80_g57837( float m_switch, float2 m_UV0, float2 m_UV1, float2 m_UV2, float2 m_UV3 )
			{
				if(m_switch ==0)
					return m_UV0;
				else if(m_switch ==1)
					return m_UV1;
				else if(m_switch ==2)
					return m_UV2;
				else if(m_switch ==3)
					return m_UV3;
				else
				return float2(0,0);
			}
			
			float2 float2switchUVMode80_g57840( float m_switch, float2 m_UV0, float2 m_UV1, float2 m_UV2, float2 m_UV3 )
			{
				if(m_switch ==0)
					return m_UV0;
				else if(m_switch ==1)
					return m_UV1;
				else if(m_switch ==2)
					return m_UV2;
				else if(m_switch ==3)
					return m_UV3;
				else
				return float2(0,0);
			}
			
			float MaskVCSwitch44_g57853( float m_switch, float m_Off, float m_R, float m_G, float m_B, float m_A )
			{
				if(m_switch ==0)
					return m_Off;
				else if(m_switch ==1)
					return m_R;
				else if(m_switch ==2)
					return m_G;
				else if(m_switch ==3)
					return m_B;
				else if(m_switch ==4)
					return m_A;
				else
				return float(0);
			}
			
			float2 float2switchUVMode80_g57843( float m_switch, float2 m_UV0, float2 m_UV1, float2 m_UV2, float2 m_UV3 )
			{
				if(m_switch ==0)
					return m_UV0;
				else if(m_switch ==1)
					return m_UV1;
				else if(m_switch ==2)
					return m_UV2;
				else if(m_switch ==3)
					return m_UV3;
				else
				return float2(0,0);
			}
			
			float2 float2switchUVMode80_g57846( float m_switch, float2 m_UV0, float2 m_UV1, float2 m_UV2, float2 m_UV3 )
			{
				if(m_switch ==0)
					return m_UV0;
				else if(m_switch ==1)
					return m_UV1;
				else if(m_switch ==2)
					return m_UV2;
				else if(m_switch ==3)
					return m_UV3;
				else
				return float2(0,0);
			}
			
			float MaskVCSwitch44_g57852( float m_switch, float m_Off, float m_R, float m_G, float m_B, float m_A )
			{
				if(m_switch ==0)
					return m_Off;
				else if(m_switch ==1)
					return m_R;
				else if(m_switch ==2)
					return m_G;
				else if(m_switch ==3)
					return m_B;
				else if(m_switch ==4)
					return m_A;
				else
				return float(0);
			}
			

			VertexOutput VertexFunction( VertexInput v  )
			{
				VertexOutput o = (VertexOutput)0;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);

				float m_switch80_g58525 = _UVMode;
				float2 m_UV080_g58525 = v.texcoord.xy;
				float2 m_UV180_g58525 = v.texcoord1.xy;
				float2 m_UV280_g58525 = v.texcoord2.xy;
				float2 m_UV380_g58525 = v.ase_texcoord3.xy;
				float2 localfloat2switchUVMode80_g58525 = float2switchUVMode80_g58525( m_switch80_g58525 , m_UV080_g58525 , m_UV180_g58525 , m_UV280_g58525 , m_UV380_g58525 );
				float2 temp_output_1955_0_g57857 = (_MainUVs).xy;
				float2 temp_output_1953_0_g57857 = (_MainUVs).zw;
				float2 Offset235_g58525 = temp_output_1953_0_g57857;
				float2 temp_output_41_0_g58525 = ( ( localfloat2switchUVMode80_g58525 * temp_output_1955_0_g57857 ) + Offset235_g58525 );
				float2 vertexToFrag70_g58525 = temp_output_41_0_g58525;
				o.ase_texcoord8.xy = vertexToFrag70_g58525;
				float temp_output_6_0_g57837 = _DetailUVRotation;
				float temp_output_200_0_g57837 = radians( temp_output_6_0_g57837 );
				float temp_output_13_0_g57837 = cos( temp_output_200_0_g57837 );
				float m_switch80_g57837 = _DetailUVMode;
				float2 m_UV080_g57837 = v.texcoord.xy;
				float2 m_UV180_g57837 = v.texcoord1.xy;
				float2 m_UV280_g57837 = v.texcoord2.xy;
				float2 m_UV380_g57837 = v.ase_texcoord3.xy;
				float2 localfloat2switchUVMode80_g57837 = float2switchUVMode80_g57837( m_switch80_g57837 , m_UV080_g57837 , m_UV180_g57837 , m_UV280_g57837 , m_UV380_g57837 );
				float2 temp_output_9_0_g57837 = float2( 0.5,0.5 );
				float2 break39_g57837 = ( localfloat2switchUVMode80_g57837 - temp_output_9_0_g57837 );
				float temp_output_14_0_g57837 = sin( temp_output_200_0_g57837 );
				float2 appendResult36_g57837 = (float2(( ( temp_output_13_0_g57837 * break39_g57837.x ) + ( temp_output_14_0_g57837 * break39_g57837.y ) ) , ( ( temp_output_13_0_g57837 * break39_g57837.y ) - ( temp_output_14_0_g57837 * break39_g57837.x ) )));
				float2 Offset235_g57837 = (_DetailUVs).zw;
				float2 temp_output_41_0_g57837 = ( ( ( appendResult36_g57837 * ( (_DetailUVs).xy / 1.0 ) ) + temp_output_9_0_g57837 ) + Offset235_g57837 );
				float2 _ConstantAnchor = float2(0.5,0.5);
				float2 vertexToFrag70_g57837 = ( temp_output_41_0_g57837 - ( ( ( (_DetailUVs).xy / 1.0 ) * _ConstantAnchor ) - _ConstantAnchor ) );
				o.ase_texcoord8.zw = vertexToFrag70_g57837;
				float temp_output_6_0_g57840 = _DetailMaskUVRotation;
				float temp_output_200_0_g57840 = radians( temp_output_6_0_g57840 );
				float temp_output_13_0_g57840 = cos( temp_output_200_0_g57840 );
				float DetailUVMode1060_g57823 = _DetailUVMode;
				float m_switch80_g57840 = DetailUVMode1060_g57823;
				float2 m_UV080_g57840 = v.texcoord.xy;
				float2 m_UV180_g57840 = v.texcoord1.xy;
				float2 m_UV280_g57840 = v.texcoord2.xy;
				float2 m_UV380_g57840 = v.ase_texcoord3.xy;
				float2 localfloat2switchUVMode80_g57840 = float2switchUVMode80_g57840( m_switch80_g57840 , m_UV080_g57840 , m_UV180_g57840 , m_UV280_g57840 , m_UV380_g57840 );
				float2 temp_output_9_0_g57840 = float2( 0.5,0.5 );
				float2 break39_g57840 = ( localfloat2switchUVMode80_g57840 - temp_output_9_0_g57840 );
				float temp_output_14_0_g57840 = sin( temp_output_200_0_g57840 );
				float2 appendResult36_g57840 = (float2(( ( temp_output_13_0_g57840 * break39_g57840.x ) + ( temp_output_14_0_g57840 * break39_g57840.y ) ) , ( ( temp_output_13_0_g57840 * break39_g57840.y ) - ( temp_output_14_0_g57840 * break39_g57840.x ) )));
				float2 Offset235_g57840 = (_DetailMaskUVs).zw;
				float2 temp_output_41_0_g57840 = ( ( ( appendResult36_g57840 * ( (_DetailMaskUVs).xy / 1.0 ) ) + temp_output_9_0_g57840 ) + Offset235_g57840 );
				float2 vertexToFrag70_g57840 = ( temp_output_41_0_g57840 - ( ( ( (_DetailMaskUVs).xy / 1.0 ) * _ConstantAnchor ) - _ConstantAnchor ) );
				o.ase_texcoord9.xy = vertexToFrag70_g57840;
				float temp_output_6_0_g57843 = _DetailSecondaryUVRotation;
				float temp_output_200_0_g57843 = radians( temp_output_6_0_g57843 );
				float temp_output_13_0_g57843 = cos( temp_output_200_0_g57843 );
				float m_switch80_g57843 = _DetailSecondaryUVMode;
				float2 m_UV080_g57843 = v.texcoord.xy;
				float2 m_UV180_g57843 = v.texcoord1.xy;
				float2 m_UV280_g57843 = v.texcoord2.xy;
				float2 m_UV380_g57843 = v.ase_texcoord3.xy;
				float2 localfloat2switchUVMode80_g57843 = float2switchUVMode80_g57843( m_switch80_g57843 , m_UV080_g57843 , m_UV180_g57843 , m_UV280_g57843 , m_UV380_g57843 );
				float2 temp_output_9_0_g57843 = float2( 0.5,0.5 );
				float2 break39_g57843 = ( localfloat2switchUVMode80_g57843 - temp_output_9_0_g57843 );
				float temp_output_14_0_g57843 = sin( temp_output_200_0_g57843 );
				float2 appendResult36_g57843 = (float2(( ( temp_output_13_0_g57843 * break39_g57843.x ) + ( temp_output_14_0_g57843 * break39_g57843.y ) ) , ( ( temp_output_13_0_g57843 * break39_g57843.y ) - ( temp_output_14_0_g57843 * break39_g57843.x ) )));
				float2 Offset235_g57843 = (_DetailSecondaryUVs).zw;
				float2 temp_output_41_0_g57843 = ( ( ( appendResult36_g57843 * ( (_DetailSecondaryUVs).xy / 1.0 ) ) + temp_output_9_0_g57843 ) + Offset235_g57843 );
				float2 vertexToFrag70_g57843 = ( temp_output_41_0_g57843 - ( ( ( (_DetailSecondaryUVs).xy / 1.0 ) * _ConstantAnchor ) - _ConstantAnchor ) );
				o.ase_texcoord9.zw = vertexToFrag70_g57843;
				float temp_output_6_0_g57846 = _DetailSecondaryMaskUVRotation;
				float temp_output_200_0_g57846 = radians( temp_output_6_0_g57846 );
				float temp_output_13_0_g57846 = cos( temp_output_200_0_g57846 );
				float DetailSecondaryUVMode1059_g57823 = _DetailSecondaryUVMode;
				float m_switch80_g57846 = DetailSecondaryUVMode1059_g57823;
				float2 m_UV080_g57846 = v.texcoord.xy;
				float2 m_UV180_g57846 = v.texcoord1.xy;
				float2 m_UV280_g57846 = v.texcoord2.xy;
				float2 m_UV380_g57846 = v.ase_texcoord3.xy;
				float2 localfloat2switchUVMode80_g57846 = float2switchUVMode80_g57846( m_switch80_g57846 , m_UV080_g57846 , m_UV180_g57846 , m_UV280_g57846 , m_UV380_g57846 );
				float2 temp_output_9_0_g57846 = float2( 0.5,0.5 );
				float2 break39_g57846 = ( localfloat2switchUVMode80_g57846 - temp_output_9_0_g57846 );
				float temp_output_14_0_g57846 = sin( temp_output_200_0_g57846 );
				float2 appendResult36_g57846 = (float2(( ( temp_output_13_0_g57846 * break39_g57846.x ) + ( temp_output_14_0_g57846 * break39_g57846.y ) ) , ( ( temp_output_13_0_g57846 * break39_g57846.y ) - ( temp_output_14_0_g57846 * break39_g57846.x ) )));
				float2 Offset235_g57846 = (_DetailSecondaryMaskUVs).zw;
				float2 temp_output_41_0_g57846 = ( ( ( appendResult36_g57846 * ( (_DetailSecondaryMaskUVs).xy / 1.0 ) ) + temp_output_9_0_g57846 ) + Offset235_g57846 );
				float2 vertexToFrag70_g57846 = ( temp_output_41_0_g57846 - ( ( ( (_DetailSecondaryMaskUVs).xy / 1.0 ) * _ConstantAnchor ) - _ConstantAnchor ) );
				o.ase_texcoord10.xy = vertexToFrag70_g57846;
				
				o.ase_color = v.ase_color;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord10.zw = 0;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = v.positionOS.xyz;
				#else
					float3 defaultVertexValue = float3(0, 0, 0);
				#endif

				float3 vertexValue = defaultVertexValue;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
					v.positionOS.xyz = vertexValue;
				#else
					v.positionOS.xyz += vertexValue;
				#endif
				v.normalOS = v.normalOS;
				v.tangentOS = v.tangentOS;

				VertexPositionInputs vertexInput = GetVertexPositionInputs( v.positionOS.xyz );
				VertexNormalInputs normalInput = GetVertexNormalInputs( v.normalOS, v.tangentOS );

				o.tSpace0 = float4( normalInput.normalWS, vertexInput.positionWS.x );
				o.tSpace1 = float4( normalInput.tangentWS, vertexInput.positionWS.y );
				o.tSpace2 = float4( normalInput.bitangentWS, vertexInput.positionWS.z );

				#if defined(LIGHTMAP_ON)
					OUTPUT_LIGHTMAP_UV( v.texcoord1, unity_LightmapST, o.lightmapUVOrVertexSH.xy );
				#endif

				#if !defined(LIGHTMAP_ON)
					OUTPUT_SH( normalInput.normalWS.xyz, o.lightmapUVOrVertexSH.xyz );
				#endif

				#if defined(DYNAMICLIGHTMAP_ON)
					o.dynamicLightmapUV.xy = v.texcoord2.xy * unity_DynamicLightmapST.xy + unity_DynamicLightmapST.zw;
				#endif

				#if defined(ENABLE_TERRAIN_PERPIXEL_NORMAL)
					o.lightmapUVOrVertexSH.zw = v.texcoord.xy;
					o.lightmapUVOrVertexSH.xy = v.texcoord.xy * unity_LightmapST.xy + unity_LightmapST.zw;
				#endif

				half3 vertexLight = VertexLighting( vertexInput.positionWS, normalInput.normalWS );

				#ifdef ASE_FOG
					half fogFactor = ComputeFogFactor( vertexInput.positionCS.z );
				#else
					half fogFactor = 0;
				#endif

				o.fogFactorAndVertexLight = half4(fogFactor, vertexLight);

				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR)
					o.shadowCoord = GetShadowCoord( vertexInput );
				#endif

				o.positionCS = vertexInput.positionCS;
				o.clipPosV = vertexInput.positionCS;
				return o;
			}

			#if defined(ASE_TESSELLATION)
			struct VertexControl
			{
				float4 vertex : INTERNALTESSPOS;
				float3 normalOS : NORMAL;
				float4 tangentOS : TANGENT;
				float4 texcoord : TEXCOORD0;
				float4 texcoord1 : TEXCOORD1;
				float4 texcoord2 : TEXCOORD2;
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_color : COLOR;

				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl vert ( VertexInput v )
			{
				VertexControl o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				o.vertex = v.positionOS;
				o.normalOS = v.normalOS;
				o.tangentOS = v.tangentOS;
				o.texcoord = v.texcoord;
				o.texcoord1 = v.texcoord1;
				o.texcoord2 = v.texcoord2;
				o.texcoord = v.texcoord;
				o.ase_texcoord3 = v.ase_texcoord3;
				o.ase_color = v.ase_color;
				return o;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> v)
			{
				TessellationFactors o;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), _WorldSpaceCameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams, unity_CameraWorldClipPlanes );
				#endif
				o.edge[0] = tf.x; o.edge[1] = tf.y; o.edge[2] = tf.z; o.inside = tf.w;
				return o;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
				return patch[id];
			}

			[domain("tri")]
			VertexOutput DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				VertexInput o = (VertexInput) 0;
				o.positionOS = patch[0].vertex * bary.x + patch[1].vertex * bary.y + patch[2].vertex * bary.z;
				o.normalOS = patch[0].normalOS * bary.x + patch[1].normalOS * bary.y + patch[2].normalOS * bary.z;
				o.tangentOS = patch[0].tangentOS * bary.x + patch[1].tangentOS * bary.y + patch[2].tangentOS * bary.z;
				o.texcoord = patch[0].texcoord * bary.x + patch[1].texcoord * bary.y + patch[2].texcoord * bary.z;
				o.texcoord1 = patch[0].texcoord1 * bary.x + patch[1].texcoord1 * bary.y + patch[2].texcoord1 * bary.z;
				o.texcoord2 = patch[0].texcoord2 * bary.x + patch[1].texcoord2 * bary.y + patch[2].texcoord2 * bary.z;
				o.texcoord = patch[0].texcoord * bary.x + patch[1].texcoord * bary.y + patch[2].texcoord * bary.z;
				o.ase_texcoord3 = patch[0].ase_texcoord3 * bary.x + patch[1].ase_texcoord3 * bary.y + patch[2].ase_texcoord3 * bary.z;
				o.ase_color = patch[0].ase_color * bary.x + patch[1].ase_color * bary.y + patch[2].ase_color * bary.z;
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = o.positionOS.xyz - patch[i].normalOS * (dot(o.positionOS.xyz, patch[i].normalOS) - dot(patch[i].vertex.xyz, patch[i].normalOS));
				float phongStrength = _TessPhongStrength;
				o.positionOS.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * o.positionOS.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], o);
				return VertexFunction(o);
			}
			#else
			VertexOutput vert ( VertexInput v )
			{
				return VertexFunction( v );
			}
			#endif

			half4 frag ( VertexOutput IN
						#ifdef ASE_DEPTH_WRITE_ON
						,out float outputDepth : ASE_SV_DEPTH
						#endif
						 ) : SV_Target
			{
				UNITY_SETUP_INSTANCE_ID(IN);
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX(IN);

				#ifdef LOD_FADE_CROSSFADE
					LODDitheringTransition( IN.positionCS.xyz, unity_LODFade.x );
				#endif

				#if defined(ENABLE_TERRAIN_PERPIXEL_NORMAL)
					float2 sampleCoords = (IN.lightmapUVOrVertexSH.zw / _TerrainHeightmapRecipSize.zw + 0.5f) * _TerrainHeightmapRecipSize.xy;
					float3 WorldNormal = TransformObjectToWorldNormal(normalize(SAMPLE_TEXTURE2D(_TerrainNormalmapTexture, sampler_TerrainNormalmapTexture, sampleCoords).rgb * 2 - 1));
					float3 WorldTangent = -cross(GetObjectToWorldMatrix()._13_23_33, WorldNormal);
					float3 WorldBiTangent = cross(WorldNormal, -WorldTangent);
				#else
					float3 WorldNormal = normalize( IN.tSpace0.xyz );
					float3 WorldTangent = IN.tSpace1.xyz;
					float3 WorldBiTangent = IN.tSpace2.xyz;
				#endif

				float3 WorldPosition = float3(IN.tSpace0.w,IN.tSpace1.w,IN.tSpace2.w);
				float3 WorldViewDirection = _WorldSpaceCameraPos.xyz  - WorldPosition;
				float4 ShadowCoords = float4( 0, 0, 0, 0 );

				float4 ClipPos = IN.clipPosV;
				float4 ScreenPos = ComputeScreenPos( IN.clipPosV );

				float2 NormalizedScreenSpaceUV = GetNormalizedScreenSpaceUV(IN.positionCS);

				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR)
					ShadowCoords = IN.shadowCoord;
				#elif defined(MAIN_LIGHT_CALCULATE_SHADOWS)
					ShadowCoords = TransformWorldToShadowCoord( WorldPosition );
				#endif

				WorldViewDirection = SafeNormalize( WorldViewDirection );

				float3 temp_output_1923_0_g57857 = (_BaseColor).rgb;
				float2 vertexToFrag70_g58525 = IN.ase_texcoord8.xy;
				float2 UV213_g57857 = vertexToFrag70_g58525;
				float4 tex2DNode2048_g57857 = SAMPLE_TEXTURE2D( _MainTex, sampler_MainTex, UV213_g57857 );
				float3 ALBEDO_RGBA1381_g57857 = (tex2DNode2048_g57857).rgb;
				float3 temp_output_12_0_g57865 = ALBEDO_RGBA1381_g57857;
				float dotResult28_g57865 = dot( float3(0.2126729,0.7151522,0.072175) , temp_output_12_0_g57865 );
				float3 temp_cast_0 = (dotResult28_g57865).xxx;
				float temp_output_21_0_g57865 = ( 1.0 - _BaseColorSaturation );
				float3 lerpResult31_g57865 = lerp( temp_cast_0 , temp_output_12_0_g57865 , temp_output_21_0_g57865);
				float3 temp_output_3_0_g57857 = ( temp_output_1923_0_g57857 * lerpResult31_g57865 * _Brightness );
				float3 temp_output_39_0_g57823 = temp_output_3_0_g57857;
				float localStochasticTiling159_g57828 = ( 0.0 );
				float2 vertexToFrag70_g57837 = IN.ase_texcoord8.zw;
				float2 temp_output_1334_0_g57823 = vertexToFrag70_g57837;
				float2 UV159_g57828 = temp_output_1334_0_g57823;
				float4 TexelSize159_g57828 = _DetailColorMap_TexelSize;
				float4 Offsets159_g57828 = float4( 0,0,0,0 );
				float2 Weights159_g57828 = float2( 0,0 );
				{
				UV159_g57828 = UV159_g57828 * TexelSize159_g57828.zw - 0.5;
				float2 f = frac( UV159_g57828 );
				UV159_g57828 -= f;
				float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				float4 xs = xn * xn * xn;
				float4 ys = yn * yn * yn;
				float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				float4 c = float4( UV159_g57828.x - 0.5, UV159_g57828.x + 1.5, UV159_g57828.y - 0.5, UV159_g57828.y + 1.5 );
				float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				float w0 = s.x / ( s.x + s.y );
				float w1 = s.z / ( s.z + s.w );
				Offsets159_g57828 = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize159_g57828.xyxy;
				Weights159_g57828 = float2( w0, w1 );
				}
				float4 Input_FetchOffsets70_g57829 = Offsets159_g57828;
				float2 Input_FetchWeights143_g57829 = Weights159_g57828;
				float2 break46_g57829 = Input_FetchWeights143_g57829;
				float4 lerpResult20_g57829 = lerp( SAMPLE_TEXTURE2D( _DetailColorMap, sampler_MainTex, (Input_FetchOffsets70_g57829).yw ) , SAMPLE_TEXTURE2D( _DetailColorMap, sampler_MainTex, (Input_FetchOffsets70_g57829).xw ) , break46_g57829.x);
				float4 lerpResult40_g57829 = lerp( SAMPLE_TEXTURE2D( _DetailColorMap, sampler_MainTex, (Input_FetchOffsets70_g57829).yz ) , SAMPLE_TEXTURE2D( _DetailColorMap, sampler_MainTex, (Input_FetchOffsets70_g57829).xz ) , break46_g57829.x);
				float4 lerpResult22_g57829 = lerp( lerpResult20_g57829 , lerpResult40_g57829 , break46_g57829.y);
				float4 Output_Fetch2D44_g57829 = lerpResult22_g57829;
				float3 temp_output_44_0_g57823 = ( (_DetailColor).rgb * (Output_Fetch2D44_g57829).rgb * _DetailBrightness );
				float3 temp_output_12_0_g57849 = temp_output_44_0_g57823;
				float dotResult28_g57849 = dot( float3(0.2126729,0.7151522,0.072175) , temp_output_12_0_g57849 );
				float3 temp_cast_1 = (dotResult28_g57849).xxx;
				float temp_output_21_0_g57849 = ( 1.0 - _DetailSaturation );
				float3 lerpResult31_g57849 = lerp( temp_cast_1 , temp_output_12_0_g57849 , temp_output_21_0_g57849);
				float3 temp_output_1272_0_g57823 = (unity_ColorSpaceDouble).rgb;
				float3 temp_output_1190_0_g57823 = ( lerpResult31_g57849 * temp_output_1272_0_g57823 );
				float3 BaseColor_RGB40_g57823 = temp_output_39_0_g57823;
				float localStochasticTiling159_g57835 = ( 0.0 );
				float2 vertexToFrag70_g57840 = IN.ase_texcoord9.xy;
				float2 temp_output_1339_0_g57823 = vertexToFrag70_g57840;
				float2 UV159_g57835 = temp_output_1339_0_g57823;
				float4 TexelSize159_g57835 = _DetailMaskMap_TexelSize;
				float4 Offsets159_g57835 = float4( 0,0,0,0 );
				float2 Weights159_g57835 = float2( 0,0 );
				{
				UV159_g57835 = UV159_g57835 * TexelSize159_g57835.zw - 0.5;
				float2 f = frac( UV159_g57835 );
				UV159_g57835 -= f;
				float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				float4 xs = xn * xn * xn;
				float4 ys = yn * yn * yn;
				float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				float4 c = float4( UV159_g57835.x - 0.5, UV159_g57835.x + 1.5, UV159_g57835.y - 0.5, UV159_g57835.y + 1.5 );
				float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				float w0 = s.x / ( s.x + s.y );
				float w1 = s.z / ( s.z + s.w );
				Offsets159_g57835 = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize159_g57835.xyxy;
				Weights159_g57835 = float2( w0, w1 );
				}
				float4 Input_FetchOffsets70_g57836 = Offsets159_g57835;
				float2 Input_FetchWeights143_g57836 = Weights159_g57835;
				float2 break46_g57836 = Input_FetchWeights143_g57836;
				float4 lerpResult20_g57836 = lerp( SAMPLE_TEXTURE2D( _DetailMaskMap, sampler_MainTex, (Input_FetchOffsets70_g57836).yw ) , SAMPLE_TEXTURE2D( _DetailMaskMap, sampler_MainTex, (Input_FetchOffsets70_g57836).xw ) , break46_g57836.x);
				float4 lerpResult40_g57836 = lerp( SAMPLE_TEXTURE2D( _DetailMaskMap, sampler_MainTex, (Input_FetchOffsets70_g57836).yz ) , SAMPLE_TEXTURE2D( _DetailMaskMap, sampler_MainTex, (Input_FetchOffsets70_g57836).xz ) , break46_g57836.x);
				float4 lerpResult22_g57836 = lerp( lerpResult20_g57836 , lerpResult40_g57836 , break46_g57836.y);
				float4 Output_Fetch2D44_g57836 = lerpResult22_g57836;
				float4 break50_g57836 = Output_Fetch2D44_g57836;
				float lerpResult997_g57823 = lerp( ( 1.0 - break50_g57836.r ) , break50_g57836.r , _DetailMaskIsInverted);
				float temp_output_15_0_g57851 = ( 1.0 - lerpResult997_g57823 );
				float temp_output_26_0_g57851 = _DetailMaskBlendStrength;
				float temp_output_24_0_g57851 = _DetailMaskBlendHardness;
				float saferPower2_g57851 = abs( max( saturate( (0.0 + (temp_output_15_0_g57851 - ( 1.0 - temp_output_26_0_g57851 )) * (temp_output_24_0_g57851 - 0.0) / (1.0 - ( 1.0 - temp_output_26_0_g57851 ))) ) , 0.0 ) );
				float temp_output_22_0_g57851 = _DetailMaskBlendFalloff;
				float Blend_DetailMask986_g57823 = saturate( pow( saferPower2_g57851 , ( 1.0 - temp_output_22_0_g57851 ) ) );
				float3 lerpResult1194_g57823 = lerp( BaseColor_RGB40_g57823 , temp_output_1190_0_g57823 , Blend_DetailMask986_g57823);
				float temp_output_1162_0_g57823 = ( 1.0 - Blend_DetailMask986_g57823 );
				float3 appendResult1161_g57823 = (float3(temp_output_1162_0_g57823 , temp_output_1162_0_g57823 , temp_output_1162_0_g57823));
				float3 lerpResult1005_g57823 = lerp( temp_output_1190_0_g57823 , ( ( lerpResult1194_g57823 * Blend_DetailMask986_g57823 ) + appendResult1161_g57823 ) , _DetailMaskEnable);
				float3 BaseColor_Detail255_g57823 = lerpResult1005_g57823;
				float BaseColor_R1273_g57823 = temp_output_39_0_g57823.x;
				float BaseColor_DetailR887_g57823 = Output_Fetch2D44_g57829.r;
				float lerpResult1105_g57823 = lerp( BaseColor_R1273_g57823 , BaseColor_DetailR887_g57823 , _DetailBlendSource);
				float m_switch44_g57853 = (float)_DetailBlendVertexColor;
				float m_Off44_g57853 = 1.0;
				float dotResult58_g57853 = dot( IN.ase_color.g , IN.ase_color.g );
				float dotResult61_g57853 = dot( IN.ase_color.b , IN.ase_color.b );
				float m_R44_g57853 = ( dotResult58_g57853 + dotResult61_g57853 );
				float dotResult57_g57853 = dot( IN.ase_color.r , IN.ase_color.r );
				float m_G44_g57853 = ( dotResult57_g57853 + dotResult58_g57853 );
				float m_B44_g57853 = ( dotResult57_g57853 + dotResult61_g57853 );
				float m_A44_g57853 = IN.ase_color.a;
				float localMaskVCSwitch44_g57853 = MaskVCSwitch44_g57853( m_switch44_g57853 , m_Off44_g57853 , m_R44_g57853 , m_G44_g57853 , m_B44_g57853 , m_A44_g57853 );
				float clampResult54_g57853 = clamp( ( ( localMaskVCSwitch44_g57853 * _DetailBlendHeight ) / _DetailBlendSmooth ) , 0.0 , 1.0 );
				float Blend647_g57823 = saturate( ( ( ( ( lerpResult1105_g57823 - 0.5 ) * ( ( 1.0 - _DetailBlendStrength ) - 0.9 ) ) / ( 1.0 - _DetailBlendSmooth ) ) + ( 1.0 - clampResult54_g57853 ) ) );
				float temp_output_1171_0_g57823 = ( 1.0 - Blend647_g57823 );
				float3 appendResult1174_g57823 = (float3(temp_output_1171_0_g57823 , temp_output_1171_0_g57823 , temp_output_1171_0_g57823));
				float3 temp_output_1173_0_g57823 = ( ( BaseColor_Detail255_g57823 * Blend647_g57823 ) + appendResult1174_g57823 );
				float temp_output_20_0_g57854 = _DetailBlendHeightMin;
				float temp_output_21_0_g57854 = _DetailBlendHeightMax;
				float3 worldToObj1466_g57823 = mul( GetWorldToObjectMatrix(), float4( WorldPosition, 1 ) ).xyz;
				float3 WorldPosition1436_g57823 = worldToObj1466_g57823;
				float smoothstepResult25_g57854 = smoothstep( temp_output_20_0_g57854 , temp_output_21_0_g57854 , WorldPosition1436_g57823.y);
				float DetailBlendHeight1440_g57823 = smoothstepResult25_g57854;
				float3 lerpResult1438_g57823 = lerp( temp_output_1173_0_g57823 , temp_output_39_0_g57823 , DetailBlendHeight1440_g57823);
				float3 lerpResult1457_g57823 = lerp( temp_output_1173_0_g57823 , lerpResult1438_g57823 , _DetailBlendEnableAltitudeMask);
				float3 temp_output_1180_0_g57823 = ( temp_output_39_0_g57823 * lerpResult1457_g57823 );
				float2 appendResult1114_g57823 = (float2(_DetailSecondaryBlendWeightLayer1 , _DetailSecondaryBlendWeightLayer2));
				float localStochasticTiling159_g57824 = ( 0.0 );
				float2 vertexToFrag70_g57843 = IN.ase_texcoord9.zw;
				float2 temp_output_1342_0_g57823 = vertexToFrag70_g57843;
				float2 UV159_g57824 = temp_output_1342_0_g57823;
				float4 TexelSize159_g57824 = _DetailSecondaryColorMap_TexelSize;
				float4 Offsets159_g57824 = float4( 0,0,0,0 );
				float2 Weights159_g57824 = float2( 0,0 );
				{
				UV159_g57824 = UV159_g57824 * TexelSize159_g57824.zw - 0.5;
				float2 f = frac( UV159_g57824 );
				UV159_g57824 -= f;
				float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				float4 xs = xn * xn * xn;
				float4 ys = yn * yn * yn;
				float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				float4 c = float4( UV159_g57824.x - 0.5, UV159_g57824.x + 1.5, UV159_g57824.y - 0.5, UV159_g57824.y + 1.5 );
				float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				float w0 = s.x / ( s.x + s.y );
				float w1 = s.z / ( s.z + s.w );
				Offsets159_g57824 = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize159_g57824.xyxy;
				Weights159_g57824 = float2( w0, w1 );
				}
				float4 Input_FetchOffsets70_g57825 = Offsets159_g57824;
				float2 Input_FetchWeights143_g57825 = Weights159_g57824;
				float2 break46_g57825 = Input_FetchWeights143_g57825;
				float4 lerpResult20_g57825 = lerp( SAMPLE_TEXTURE2D( _DetailSecondaryColorMap, sampler_MainTex, (Input_FetchOffsets70_g57825).yw ) , SAMPLE_TEXTURE2D( _DetailSecondaryColorMap, sampler_MainTex, (Input_FetchOffsets70_g57825).xw ) , break46_g57825.x);
				float4 lerpResult40_g57825 = lerp( SAMPLE_TEXTURE2D( _DetailSecondaryColorMap, sampler_MainTex, (Input_FetchOffsets70_g57825).yz ) , SAMPLE_TEXTURE2D( _DetailSecondaryColorMap, sampler_MainTex, (Input_FetchOffsets70_g57825).xz ) , break46_g57825.x);
				float4 lerpResult22_g57825 = lerp( lerpResult20_g57825 , lerpResult40_g57825 , break46_g57825.y);
				float4 Output_Fetch2D44_g57825 = lerpResult22_g57825;
				float3 temp_output_436_0_g57823 = ( (_DetailSecondaryColor).rgb * (Output_Fetch2D44_g57825).rgb * _DetailSecondaryBrightness );
				float3 temp_output_12_0_g57850 = temp_output_436_0_g57823;
				float dotResult28_g57850 = dot( float3(0.2126729,0.7151522,0.072175) , temp_output_12_0_g57850 );
				float3 temp_cast_3 = (dotResult28_g57850).xxx;
				float temp_output_21_0_g57850 = ( 1.0 - _DetailSecondarySaturation );
				float3 lerpResult31_g57850 = lerp( temp_cast_3 , temp_output_12_0_g57850 , temp_output_21_0_g57850);
				float3 ColorSpaceDouble1261_g57823 = temp_output_1272_0_g57823;
				float3 temp_output_1239_0_g57823 = ( lerpResult31_g57850 * ColorSpaceDouble1261_g57823 );
				float localStochasticTiling159_g57830 = ( 0.0 );
				float2 vertexToFrag70_g57846 = IN.ase_texcoord10.xy;
				float2 temp_output_1347_0_g57823 = vertexToFrag70_g57846;
				float2 UV159_g57830 = temp_output_1347_0_g57823;
				float4 TexelSize159_g57830 = _DetailSecondaryMaskMap_TexelSize;
				float4 Offsets159_g57830 = float4( 0,0,0,0 );
				float2 Weights159_g57830 = float2( 0,0 );
				{
				UV159_g57830 = UV159_g57830 * TexelSize159_g57830.zw - 0.5;
				float2 f = frac( UV159_g57830 );
				UV159_g57830 -= f;
				float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				float4 xs = xn * xn * xn;
				float4 ys = yn * yn * yn;
				float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				float4 c = float4( UV159_g57830.x - 0.5, UV159_g57830.x + 1.5, UV159_g57830.y - 0.5, UV159_g57830.y + 1.5 );
				float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				float w0 = s.x / ( s.x + s.y );
				float w1 = s.z / ( s.z + s.w );
				Offsets159_g57830 = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize159_g57830.xyxy;
				Weights159_g57830 = float2( w0, w1 );
				}
				float4 Input_FetchOffsets70_g57831 = Offsets159_g57830;
				float2 Input_FetchWeights143_g57831 = Weights159_g57830;
				float2 break46_g57831 = Input_FetchWeights143_g57831;
				float4 lerpResult20_g57831 = lerp( SAMPLE_TEXTURE2D( _DetailSecondaryMaskMap, sampler_MainTex, (Input_FetchOffsets70_g57831).yw ) , SAMPLE_TEXTURE2D( _DetailSecondaryMaskMap, sampler_MainTex, (Input_FetchOffsets70_g57831).xw ) , break46_g57831.x);
				float4 lerpResult40_g57831 = lerp( SAMPLE_TEXTURE2D( _DetailSecondaryMaskMap, sampler_MainTex, (Input_FetchOffsets70_g57831).yz ) , SAMPLE_TEXTURE2D( _DetailSecondaryMaskMap, sampler_MainTex, (Input_FetchOffsets70_g57831).xz ) , break46_g57831.x);
				float4 lerpResult22_g57831 = lerp( lerpResult20_g57831 , lerpResult40_g57831 , break46_g57831.y);
				float4 Output_Fetch2D44_g57831 = lerpResult22_g57831;
				float4 break50_g57831 = Output_Fetch2D44_g57831;
				float lerpResult486_g57823 = lerp( ( 1.0 - break50_g57831.r ) , break50_g57831.r , _DetailSecondaryMaskIsInverted);
				float temp_output_15_0_g57832 = ( 1.0 - lerpResult486_g57823 );
				float temp_output_26_0_g57832 = _DetailSecondaryMaskBlendStrength;
				float temp_output_24_0_g57832 = _DetailSecondaryMaskBlendHardness;
				float saferPower2_g57832 = abs( max( saturate( (0.0 + (temp_output_15_0_g57832 - ( 1.0 - temp_output_26_0_g57832 )) * (temp_output_24_0_g57832 - 0.0) / (1.0 - ( 1.0 - temp_output_26_0_g57832 ))) ) , 0.0 ) );
				float temp_output_22_0_g57832 = _DetailSecondaryMaskBlendFalloff;
				float Blend_DetailSecondaryMask755_g57823 = saturate( pow( saferPower2_g57832 , ( 1.0 - temp_output_22_0_g57832 ) ) );
				float3 lerpResult1234_g57823 = lerp( BaseColor_RGB40_g57823 , temp_output_1239_0_g57823 , Blend_DetailSecondaryMask755_g57823);
				float temp_output_1236_0_g57823 = ( 1.0 - Blend_DetailSecondaryMask755_g57823 );
				float3 appendResult1238_g57823 = (float3(temp_output_1236_0_g57823 , temp_output_1236_0_g57823 , temp_output_1236_0_g57823));
				float3 lerpResult1233_g57823 = lerp( temp_output_1239_0_g57823 , ( ( lerpResult1234_g57823 * Blend_DetailSecondaryMask755_g57823 ) + appendResult1238_g57823 ) , _DetailSecondaryMaskEnable);
				float3 BaseColor_DetailSecondary805_g57823 = lerpResult1233_g57823;
				float BaseColor_DetailSecondaryR1102_g57823 = Output_Fetch2D44_g57825.r;
				float lerpResult1103_g57823 = lerp( BaseColor_R1273_g57823 , BaseColor_DetailSecondaryR1102_g57823 , _DetailSecondaryBlendSource);
				float m_switch44_g57852 = (float)_DetailSecondaryBlendVertexColor;
				float m_Off44_g57852 = 1.0;
				float dotResult58_g57852 = dot( IN.ase_color.g , IN.ase_color.g );
				float dotResult61_g57852 = dot( IN.ase_color.b , IN.ase_color.b );
				float m_R44_g57852 = ( dotResult58_g57852 + dotResult61_g57852 );
				float dotResult57_g57852 = dot( IN.ase_color.r , IN.ase_color.r );
				float m_G44_g57852 = ( dotResult57_g57852 + dotResult58_g57852 );
				float m_B44_g57852 = ( dotResult57_g57852 + dotResult61_g57852 );
				float m_A44_g57852 = IN.ase_color.a;
				float localMaskVCSwitch44_g57852 = MaskVCSwitch44_g57852( m_switch44_g57852 , m_Off44_g57852 , m_R44_g57852 , m_G44_g57852 , m_B44_g57852 , m_A44_g57852 );
				float clampResult54_g57852 = clamp( ( ( localMaskVCSwitch44_g57852 * _DetailSecondaryBlendHeight ) / _DetailSecondaryBlendSmooth ) , 0.0 , 1.0 );
				float BlendSecondary786_g57823 = saturate( ( ( ( ( lerpResult1103_g57823 - 0.5 ) * ( ( 1.0 - _DetailSecondaryBlendStrength ) - 0.9 ) ) / ( 1.0 - _DetailSecondaryBlendSmooth ) ) + ( 1.0 - clampResult54_g57852 ) ) );
				float temp_output_1214_0_g57823 = ( 1.0 - BlendSecondary786_g57823 );
				float3 appendResult1216_g57823 = (float3(temp_output_1214_0_g57823 , temp_output_1214_0_g57823 , temp_output_1214_0_g57823));
				float3 temp_output_1217_0_g57823 = ( ( BaseColor_DetailSecondary805_g57823 * BlendSecondary786_g57823 ) + appendResult1216_g57823 );
				float temp_output_20_0_g57856 = _DetailSecondaryBlendHeightMin;
				float temp_output_21_0_g57856 = _DetailSecondaryBlendHeightMax;
				float smoothstepResult25_g57856 = smoothstep( temp_output_20_0_g57856 , temp_output_21_0_g57856 , WorldPosition1436_g57823.y);
				float DetailSecondaryBlendHeight1441_g57823 = smoothstepResult25_g57856;
				float3 lerpResult1455_g57823 = lerp( temp_output_1217_0_g57823 , temp_output_39_0_g57823 , DetailSecondaryBlendHeight1441_g57823);
				float3 lerpResult1459_g57823 = lerp( temp_output_1217_0_g57823 , lerpResult1455_g57823 , _DetailSecondaryBlendEnableAltitudeMask);
				float2 weightedBlendVar1117_g57823 = appendResult1114_g57823;
				float3 weightedAvg1117_g57823 = ( ( weightedBlendVar1117_g57823.x*temp_output_1180_0_g57823 + weightedBlendVar1117_g57823.y*( temp_output_39_0_g57823 * lerpResult1459_g57823 ) )/( weightedBlendVar1117_g57823.x + weightedBlendVar1117_g57823.y ) );
				float3 lerpResult489_g57823 = lerp( temp_output_1180_0_g57823 , weightedAvg1117_g57823 , _DetailSecondaryEnable);
				float temp_output_634_0_g57823 = ( _DetailEnable + ( ( _CATEGORY_DETAILMAPPING + _SPACE_DETAIL + _CATEGORY_DETAILMAPPINGSECONDARY + _SPACE_DETAILSECONDARY ) * 0.0 ) );
				float3 lerpResult409_g57823 = lerp( temp_output_39_0_g57823 , lerpResult489_g57823 , temp_output_634_0_g57823);
				
				float4 NORMAL_RGBA1382_g57857 = SAMPLE_TEXTURE2D( _BumpMap, sampler_BumpMap, UV213_g57857 );
				float3 unpack1891_g57857 = UnpackNormalScale( NORMAL_RGBA1382_g57857, _NormalStrength );
				unpack1891_g57857.z = lerp( 1, unpack1891_g57857.z, saturate(_NormalStrength) );
				float3 temp_output_38_0_g57823 = unpack1891_g57857;
				float localStochasticTiling159_g57834 = ( 0.0 );
				float2 UV159_g57834 = temp_output_1334_0_g57823;
				float4 TexelSize159_g57834 = _DetailNormalMap_TexelSize;
				float4 Offsets159_g57834 = float4( 0,0,0,0 );
				float2 Weights159_g57834 = float2( 0,0 );
				{
				UV159_g57834 = UV159_g57834 * TexelSize159_g57834.zw - 0.5;
				float2 f = frac( UV159_g57834 );
				UV159_g57834 -= f;
				float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				float4 xs = xn * xn * xn;
				float4 ys = yn * yn * yn;
				float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				float4 c = float4( UV159_g57834.x - 0.5, UV159_g57834.x + 1.5, UV159_g57834.y - 0.5, UV159_g57834.y + 1.5 );
				float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				float w0 = s.x / ( s.x + s.y );
				float w1 = s.z / ( s.z + s.w );
				Offsets159_g57834 = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize159_g57834.xyxy;
				Weights159_g57834 = float2( w0, w1 );
				}
				float4 Input_FetchOffsets70_g57833 = Offsets159_g57834;
				float2 Input_FetchWeights143_g57833 = Weights159_g57834;
				float2 break46_g57833 = Input_FetchWeights143_g57833;
				float4 lerpResult20_g57833 = lerp( SAMPLE_TEXTURE2D( _DetailNormalMap, sampler_BumpMap, (Input_FetchOffsets70_g57833).yw ) , SAMPLE_TEXTURE2D( _DetailNormalMap, sampler_BumpMap, (Input_FetchOffsets70_g57833).xw ) , break46_g57833.x);
				float4 lerpResult40_g57833 = lerp( SAMPLE_TEXTURE2D( _DetailNormalMap, sampler_BumpMap, (Input_FetchOffsets70_g57833).yz ) , SAMPLE_TEXTURE2D( _DetailNormalMap, sampler_BumpMap, (Input_FetchOffsets70_g57833).xz ) , break46_g57833.x);
				float4 lerpResult22_g57833 = lerp( lerpResult20_g57833 , lerpResult40_g57833 , break46_g57833.y);
				float4 Output_Fetch2D44_g57833 = lerpResult22_g57833;
				float3 unpack499_g57823 = UnpackNormalScale( Output_Fetch2D44_g57833, _DetailNormalStrength );
				unpack499_g57823.z = lerp( 1, unpack499_g57823.z, saturate(_DetailNormalStrength) );
				float3 Normal_In880_g57823 = temp_output_38_0_g57823;
				float3 lerpResult1286_g57823 = lerp( Normal_In880_g57823 , unpack499_g57823 , Blend_DetailMask986_g57823);
				float3 lerpResult1011_g57823 = lerp( unpack499_g57823 , lerpResult1286_g57823 , _DetailMaskEnable);
				float3 Normal_Detail199_g57823 = lerpResult1011_g57823;
				float layeredBlendVar1278_g57823 = Blend647_g57823;
				float3 layeredBlend1278_g57823 = ( lerp( temp_output_38_0_g57823,Normal_Detail199_g57823 , layeredBlendVar1278_g57823 ) );
				float localStochasticTiling159_g57826 = ( 0.0 );
				float2 UV159_g57826 = temp_output_1342_0_g57823;
				float4 TexelSize159_g57826 = _DetailSecondaryNormalMap_TexelSize;
				float4 Offsets159_g57826 = float4( 0,0,0,0 );
				float2 Weights159_g57826 = float2( 0,0 );
				{
				UV159_g57826 = UV159_g57826 * TexelSize159_g57826.zw - 0.5;
				float2 f = frac( UV159_g57826 );
				UV159_g57826 -= f;
				float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				float4 xs = xn * xn * xn;
				float4 ys = yn * yn * yn;
				float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				float4 c = float4( UV159_g57826.x - 0.5, UV159_g57826.x + 1.5, UV159_g57826.y - 0.5, UV159_g57826.y + 1.5 );
				float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				float w0 = s.x / ( s.x + s.y );
				float w1 = s.z / ( s.z + s.w );
				Offsets159_g57826 = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize159_g57826.xyxy;
				Weights159_g57826 = float2( w0, w1 );
				}
				float4 Input_FetchOffsets70_g57827 = Offsets159_g57826;
				float2 Input_FetchWeights143_g57827 = Weights159_g57826;
				float2 break46_g57827 = Input_FetchWeights143_g57827;
				float4 lerpResult20_g57827 = lerp( SAMPLE_TEXTURE2D( _DetailSecondaryNormalMap, sampler_BumpMap, (Input_FetchOffsets70_g57827).yw ) , SAMPLE_TEXTURE2D( _DetailSecondaryNormalMap, sampler_BumpMap, (Input_FetchOffsets70_g57827).xw ) , break46_g57827.x);
				float4 lerpResult40_g57827 = lerp( SAMPLE_TEXTURE2D( _DetailSecondaryNormalMap, sampler_BumpMap, (Input_FetchOffsets70_g57827).yz ) , SAMPLE_TEXTURE2D( _DetailSecondaryNormalMap, sampler_BumpMap, (Input_FetchOffsets70_g57827).xz ) , break46_g57827.x);
				float4 lerpResult22_g57827 = lerp( lerpResult20_g57827 , lerpResult40_g57827 , break46_g57827.y);
				float4 Output_Fetch2D44_g57827 = lerpResult22_g57827;
				float3 unpack500_g57823 = UnpackNormalScale( Output_Fetch2D44_g57827, _DetailSecondaryNormalStrength );
				unpack500_g57823.z = lerp( 1, unpack500_g57823.z, saturate(_DetailSecondaryNormalStrength) );
				float3 lerpResult1285_g57823 = lerp( Normal_In880_g57823 , unpack500_g57823 , Blend_DetailSecondaryMask755_g57823);
				float3 lerpResult1241_g57823 = lerp( unpack500_g57823 , lerpResult1285_g57823 , _DetailSecondaryMaskEnable);
				float3 Normal_DetailSecondary806_g57823 = lerpResult1241_g57823;
				float layeredBlendVar1280_g57823 = BlendSecondary786_g57823;
				float3 layeredBlend1280_g57823 = ( lerp( temp_output_38_0_g57823,Normal_DetailSecondary806_g57823 , layeredBlendVar1280_g57823 ) );
				float2 weightedBlendVar1118_g57823 = appendResult1114_g57823;
				float3 weightedAvg1118_g57823 = ( ( weightedBlendVar1118_g57823.x*layeredBlend1278_g57823 + weightedBlendVar1118_g57823.y*layeredBlend1280_g57823 )/( weightedBlendVar1118_g57823.x + weightedBlendVar1118_g57823.y ) );
				float3 lerpResult488_g57823 = lerp( layeredBlend1278_g57823 , weightedAvg1118_g57823 , _DetailSecondaryEnable);
				float3 break817_g57823 = lerpResult488_g57823;
				float3 appendResult820_g57823 = (float3(break817_g57823.x , break817_g57823.y , ( break817_g57823.z + 0.001 )));
				float3 lerpResult410_g57823 = lerp( temp_output_38_0_g57823 , appendResult820_g57823 , temp_output_634_0_g57823);
				
				float3 MASK_B1377_g57857 = (SAMPLE_TEXTURE2D( _MetallicGlossMap, sampler_MetallicGlossMap, UV213_g57857 )).rgb;
				
				float3 MASK_G158_g57857 = (SAMPLE_TEXTURE2D( _SmoothnessMap, sampler_SmoothnessMap, UV213_g57857 )).rgb;
				float3 temp_output_2651_0_g57857 = ( 1.0 - MASK_G158_g57857 );
				float3 lerpResult2650_g57857 = lerp( MASK_G158_g57857 , temp_output_2651_0_g57857 , _SmoothnessSource);
				float3 temp_output_2693_0_g57857 = ( lerpResult2650_g57857 * _SmoothnessStrength );
				float2 appendResult2645_g57857 = (float2(WorldViewDirection.xy));
				float3 appendResult2644_g57857 = (float3(appendResult2645_g57857 , ( WorldViewDirection.z / 1.06 )));
				float3 break2680_g57857 = unpack1891_g57857;
				float3 normalizeResult2641_g57857 = normalize( ( ( WorldTangent * break2680_g57857.x ) + ( WorldBiTangent * break2680_g57857.y ) + ( WorldNormal * break2680_g57857.z ) ) );
				float3 Normal_Per_Pixel2690_g57857 = normalizeResult2641_g57857;
				float fresnelNdotV2685_g57857 = dot( normalize( Normal_Per_Pixel2690_g57857 ), appendResult2644_g57857 );
				float fresnelNode2685_g57857 = ( 0.0 + ( 1.0 - _SmoothnessFresnelScale ) * pow( max( 1.0 - fresnelNdotV2685_g57857 , 0.0001 ), _SmoothnessFresnelPower ) );
				float3 temp_cast_13 = (fresnelNode2685_g57857).xxx;
				float3 lerpResult2636_g57857 = lerp( temp_output_2693_0_g57857 , ( temp_output_2693_0_g57857 - temp_cast_13 ) , _SmoothnessFresnelEnable);
				
				float3 MASK_R1378_g57857 = (SAMPLE_TEXTURE2D( _OcclusionMap, sampler_OcclusionMap, UV213_g57857 )).rgb;
				float3 lerpResult3415_g57857 = lerp( float3( 1,0,0 ) , MASK_R1378_g57857 , _OcclusionStrengthAO);
				float lerpResult3414_g57857 = lerp( 1.0 , IN.ase_color.a , _OcclusionStrengthAO);
				float3 temp_cast_15 = (lerpResult3414_g57857).xxx;
				float3 lerpResult2709_g57857 = lerp( lerpResult3415_g57857 , temp_cast_15 , _OcclusionSource);
				float3 temp_output_2730_0_g57857 = saturate( lerpResult2709_g57857 );
				

				float3 BaseColor = lerpResult409_g57823;
				float3 Normal = lerpResult410_g57823;
				float3 Emission = 0;
				float3 Specular = 0.5;
				float Metallic = ( _MetallicStrength * MASK_B1377_g57857 ).x;
				float Smoothness = saturate( lerpResult2636_g57857 ).x;
				float Occlusion = temp_output_2730_0_g57857.x;
				float Alpha = 1;
				float AlphaClipThreshold = 0.5;
				float AlphaClipThresholdShadow = 0.5;
				float3 BakedGI = 0;
				float3 RefractionColor = 1;
				float RefractionIndex = 1;
				float3 Transmission = 1;
				float3 Translucency = 1;

				#ifdef ASE_DEPTH_WRITE_ON
					float DepthValue = IN.positionCS.z;
				#endif

				#ifdef _CLEARCOAT
					float CoatMask = 0;
					float CoatSmoothness = 0;
				#endif

				#ifdef _ALPHATEST_ON
					clip(Alpha - AlphaClipThreshold);
				#endif

				InputData inputData = (InputData)0;
				inputData.positionWS = WorldPosition;
				inputData.viewDirectionWS = WorldViewDirection;

				#ifdef _NORMALMAP
						#if _NORMAL_DROPOFF_TS
							inputData.normalWS = TransformTangentToWorld(Normal, half3x3(WorldTangent, WorldBiTangent, WorldNormal));
						#elif _NORMAL_DROPOFF_OS
							inputData.normalWS = TransformObjectToWorldNormal(Normal);
						#elif _NORMAL_DROPOFF_WS
							inputData.normalWS = Normal;
						#endif
					inputData.normalWS = NormalizeNormalPerPixel(inputData.normalWS);
				#else
					inputData.normalWS = WorldNormal;
				#endif

				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR)
					inputData.shadowCoord = ShadowCoords;
				#elif defined(MAIN_LIGHT_CALCULATE_SHADOWS)
					inputData.shadowCoord = TransformWorldToShadowCoord(inputData.positionWS);
				#else
					inputData.shadowCoord = float4(0, 0, 0, 0);
				#endif

				#ifdef ASE_FOG
					inputData.fogCoord = IN.fogFactorAndVertexLight.x;
				#endif
					inputData.vertexLighting = IN.fogFactorAndVertexLight.yzw;

				#if defined(ENABLE_TERRAIN_PERPIXEL_NORMAL)
					float3 SH = SampleSH(inputData.normalWS.xyz);
				#else
					float3 SH = IN.lightmapUVOrVertexSH.xyz;
				#endif

				#if defined(DYNAMICLIGHTMAP_ON)
					inputData.bakedGI = SAMPLE_GI(IN.lightmapUVOrVertexSH.xy, IN.dynamicLightmapUV.xy, SH, inputData.normalWS);
				#else
					inputData.bakedGI = SAMPLE_GI(IN.lightmapUVOrVertexSH.xy, SH, inputData.normalWS);
				#endif

				#ifdef ASE_BAKEDGI
					inputData.bakedGI = BakedGI;
				#endif

				inputData.normalizedScreenSpaceUV = NormalizedScreenSpaceUV;
				inputData.shadowMask = SAMPLE_SHADOWMASK(IN.lightmapUVOrVertexSH.xy);

				#if defined(DEBUG_DISPLAY)
					#if defined(DYNAMICLIGHTMAP_ON)
						inputData.dynamicLightmapUV = IN.dynamicLightmapUV.xy;
					#endif
					#if defined(LIGHTMAP_ON)
						inputData.staticLightmapUV = IN.lightmapUVOrVertexSH.xy;
					#else
						inputData.vertexSH = SH;
					#endif
				#endif

				SurfaceData surfaceData;
				surfaceData.albedo              = BaseColor;
				surfaceData.metallic            = saturate(Metallic);
				surfaceData.specular            = Specular;
				surfaceData.smoothness          = saturate(Smoothness),
				surfaceData.occlusion           = Occlusion,
				surfaceData.emission            = Emission,
				surfaceData.alpha               = saturate(Alpha);
				surfaceData.normalTS            = Normal;
				surfaceData.clearCoatMask       = 0;
				surfaceData.clearCoatSmoothness = 1;

				#ifdef _CLEARCOAT
					surfaceData.clearCoatMask       = saturate(CoatMask);
					surfaceData.clearCoatSmoothness = saturate(CoatSmoothness);
				#endif

				#ifdef _DBUFFER
					ApplyDecalToSurfaceData(IN.positionCS, surfaceData, inputData);
				#endif

				half4 color = UniversalFragmentPBR( inputData, surfaceData);

				#ifdef ASE_TRANSMISSION
				{
					float shadow = _TransmissionShadow;

					Light mainLight = GetMainLight( inputData.shadowCoord );
					float3 mainAtten = mainLight.color * mainLight.distanceAttenuation;
					mainAtten = lerp( mainAtten, mainAtten * mainLight.shadowAttenuation, shadow );
					half3 mainTransmission = max(0 , -dot(inputData.normalWS, mainLight.direction)) * mainAtten * Transmission;
					color.rgb += BaseColor * mainTransmission;

					#ifdef _ADDITIONAL_LIGHTS
						int transPixelLightCount = GetAdditionalLightsCount();
						for (int i = 0; i < transPixelLightCount; ++i)
						{
							Light light = GetAdditionalLight(i, inputData.positionWS);
							float3 atten = light.color * light.distanceAttenuation;
							atten = lerp( atten, atten * light.shadowAttenuation, shadow );

							half3 transmission = max(0 , -dot(inputData.normalWS, light.direction)) * atten * Transmission;
							color.rgb += BaseColor * transmission;
						}
					#endif
				}
				#endif

				#ifdef ASE_TRANSLUCENCY
				{
					float shadow = _TransShadow;
					float normal = _TransNormal;
					float scattering = _TransScattering;
					float direct = _TransDirect;
					float ambient = _TransAmbient;
					float strength = _TransStrength;

					Light mainLight = GetMainLight( inputData.shadowCoord );
					float3 mainAtten = mainLight.color * mainLight.distanceAttenuation;
					mainAtten = lerp( mainAtten, mainAtten * mainLight.shadowAttenuation, shadow );

					half3 mainLightDir = mainLight.direction + inputData.normalWS * normal;
					half mainVdotL = pow( saturate( dot( inputData.viewDirectionWS, -mainLightDir ) ), scattering );
					half3 mainTranslucency = mainAtten * ( mainVdotL * direct + inputData.bakedGI * ambient ) * Translucency;
					color.rgb += BaseColor * mainTranslucency * strength;

					#ifdef _ADDITIONAL_LIGHTS
						int transPixelLightCount = GetAdditionalLightsCount();
						for (int i = 0; i < transPixelLightCount; ++i)
						{
							Light light = GetAdditionalLight(i, inputData.positionWS);
							float3 atten = light.color * light.distanceAttenuation;
							atten = lerp( atten, atten * light.shadowAttenuation, shadow );

							half3 lightDir = light.direction + inputData.normalWS * normal;
							half VdotL = pow( saturate( dot( inputData.viewDirectionWS, -lightDir ) ), scattering );
							half3 translucency = atten * ( VdotL * direct + inputData.bakedGI * ambient ) * Translucency;
							color.rgb += BaseColor * translucency * strength;
						}
					#endif
				}
				#endif

				#ifdef ASE_REFRACTION
					float4 projScreenPos = ScreenPos / ScreenPos.w;
					float3 refractionOffset = ( RefractionIndex - 1.0 ) * mul( UNITY_MATRIX_V, float4( WorldNormal,0 ) ).xyz * ( 1.0 - dot( WorldNormal, WorldViewDirection ) );
					projScreenPos.xy += refractionOffset.xy;
					float3 refraction = SHADERGRAPH_SAMPLE_SCENE_COLOR( projScreenPos.xy ) * RefractionColor;
					color.rgb = lerp( refraction, color.rgb, color.a );
					color.a = 1;
				#endif

				#ifdef ASE_FINAL_COLOR_ALPHA_MULTIPLY
					color.rgb *= color.a;
				#endif

				#ifdef ASE_FOG
					#ifdef TERRAIN_SPLAT_ADDPASS
						color.rgb = MixFogColor(color.rgb, half3( 0, 0, 0 ), IN.fogFactorAndVertexLight.x );
					#else
						color.rgb = MixFog(color.rgb, IN.fogFactorAndVertexLight.x);
					#endif
				#endif

				#ifdef ASE_DEPTH_WRITE_ON
					outputDepth = DepthValue;
				#endif

				return color;
			}

			ENDHLSL
		}

		
		Pass
		{
			
			Name "ShadowCaster"
			Tags { "LightMode"="ShadowCaster" }

			ZWrite On
			ZTest LEqual
			AlphaToMask Off
			ColorMask 0

			HLSLPROGRAM

			#define _NORMAL_DROPOFF_TS 1
			#pragma multi_compile_instancing
			#pragma multi_compile_fragment _ LOD_FADE_CROSSFADE
			#define ASE_FOG 1
			#define _NORMALMAP 1
			#define ASE_SRP_VERSION 120114
			#define ASE_USING_SAMPLING_MACROS 1


			#pragma multi_compile_vertex _ _CASTING_PUNCTUAL_LIGHT_SHADOW
            #pragma multi_compile _ DOTS_INSTANCING_ON

			#pragma vertex vert
			#pragma fragment frag

			#define SHADERPASS SHADERPASS_SHADOWCASTER

			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Color.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Input.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ShaderGraphFunctions.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/ShaderPass.hlsl"

			

			#if defined(ASE_EARLY_Z_DEPTH_OPTIMIZE) && (SHADER_TARGET >= 45)
				#define ASE_SV_DEPTH SV_DepthLessEqual
				#define ASE_SV_POSITION_QUALIFIERS linear noperspective centroid
			#else
				#define ASE_SV_DEPTH SV_Depth
				#define ASE_SV_POSITION_QUALIFIERS
			#endif

			struct VertexInput
			{
				float4 positionOS : POSITION;
				float3 normalOS : NORMAL;
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct VertexOutput
			{
				ASE_SV_POSITION_QUALIFIERS float4 positionCS : SV_POSITION;
				float4 clipPosV : TEXCOORD0;
				#if defined(ASE_NEEDS_FRAG_WORLD_POSITION)
					float3 positionWS : TEXCOORD1;
				#endif
				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR) && defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					float4 shadowCoord : TEXCOORD2;
				#endif				
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			CBUFFER_START(UnityPerMaterial)
			float4 _DetailMaskMap_TexelSize;
			float4 _DetailSecondaryMaskUVs;
			float4 _DetailMaskUVs;
			float4 _DetailColorMap_TexelSize;
			float4 _DetailUVs;
			float4 _DetailNormalMap_TexelSize;
			float4 _DetailSecondaryNormalMap_TexelSize;
			float4 _MainUVs;
			half4 _DetailColor;
			half4 _BaseColor;
			float4 _DetailSecondaryColorMap_TexelSize;
			half4 _DetailSecondaryColor;
			float4 _DetailSecondaryUVs;
			float4 _DetailSecondaryMaskMap_TexelSize;
			half _DetailSecondaryBlendHeight;
			int _DetailSecondaryBlendVertexColor;
			half _DetailSecondaryBlendSmooth;
			half _DetailSecondaryBlendStrength;
			half _DetailSecondaryBlendSource;
			half _DetailSecondaryMaskIsInverted;
			half _DetailSecondaryMaskEnable;
			half _DetailSecondaryBlendHeightMin;
			half _DetailSecondaryMaskBlendFalloff;
			half _DetailSecondaryMaskBlendStrength;
			half _DetailSecondaryMaskBlendHardness;
			half _DetailSecondaryBlendHeightMax;
			int _Cull;
			float _DetailSecondaryEnable;
			half _SmoothnessFresnelEnable;
			half _SmoothnessFresnelPower;
			half _SmoothnessFresnelScale;
			half _SmoothnessStrength;
			half _SmoothnessSource;
			float _MetallicStrength;
			float _DetailSecondaryBlendEnableAltitudeMask;
			half _DetailSecondaryNormalStrength;
			half _NormalStrength;
			float _SPACE_DETAILSECONDARY;
			float _CATEGORY_DETAILMAPPINGSECONDARY;
			float _SPACE_DETAIL;
			float _CATEGORY_DETAILMAPPING;
			half _DetailEnable;
			half _DetailNormalStrength;
			half _DetailSecondaryMaskUVRotation;
			half _DetailSecondaryUVMode;
			half _DetailSecondaryBrightness;
			float _SPACE_TRANSLUCENCY;
			float _CATEGORY_TRANSMISSION;
			float _CATEGORY_SURFACEINPUTS;
			float _SPACE_SURFACEINPUTS;
			float _SPACE_COLOR;
			float _CATEGORY_COLOR;
			float _UVMode;
			float _BaseColorSaturation;
			half _Brightness;
			half _DetailUVRotation;
			half _DetailUVMode;
			half _DetailBrightness;
			float _DetailSaturation;
			half _DetailMaskUVRotation;
			half _DetailMaskIsInverted;
			half _DetailMaskBlendStrength;
			half _DetailMaskBlendHardness;
			half _OcclusionStrengthAO;
			half _DetailSecondaryUVRotation;
			float _DetailSecondaryBlendWeightLayer2;
			float _DetailSecondaryBlendWeightLayer1;
			float _DetailBlendEnableAltitudeMask;
			half _DetailBlendHeightMax;
			float _DetailSecondarySaturation;
			half _DetailBlendHeightMin;
			int _DetailBlendVertexColor;
			half _DetailBlendSmooth;
			half _DetailBlendStrength;
			half _DetailBlendSource;
			half _DetailMaskEnable;
			half _DetailMaskBlendFalloff;
			half _DetailBlendHeight;
			half _OcclusionSource;
			#ifdef ASE_TRANSMISSION
				float _TransmissionShadow;
			#endif
			#ifdef ASE_TRANSLUCENCY
				float _TransStrength;
				float _TransNormal;
				float _TransScattering;
				float _TransDirect;
				float _TransAmbient;
				float _TransShadow;
			#endif
			#ifdef ASE_TESSELLATION
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			CBUFFER_END

			#ifdef SCENEPICKINGPASS
				float4 _SelectionID;
			#endif

			#ifdef SCENESELECTIONPASS
				int _ObjectId;
				int _PassValue;
			#endif

			

			float4 mod289( float4 x )
			{
				return x - floor(x * (1.0 / 289.0)) * 289.0;
			}
			
			float4 perm( float4 x )
			{
				return mod289(((x * 34.0) + 1.0) * x);
			}
			
			float SimpleNoise3D( float3 p )
			{
				 float3 a = floor(p);
				    float3 d = p - a;
				    d = d * d * (3.0 - 2.0 * d);
				 float4 b = a.xxyy + float4(0.0, 1.0, 0.0, 1.0);
				    float4 k1 = perm(b.xyxy);
				 float4 k2 = perm(k1.xyxy + b.zzww);
				    float4 c = k2 + a.zzzz;
				    float4 k3 = perm(c);
				    float4 k4 = perm(c + 1.0);
				    float4 o1 = frac(k3 * (1.0 / 41.0));
				 float4 o2 = frac(k4 * (1.0 / 41.0));
				    float4 o3 = o2 * d.z + o1 * (1.0 - d.z);
				    float2 o4 = o3.yw * d.x + o3.xz * (1.0 - d.x);
				    return o4.y * d.y + o4.x * (1.0 - d.y);
			}
			

			float3 _LightDirection;
			float3 _LightPosition;

			VertexOutput VertexFunction( VertexInput v )
			{
				VertexOutput o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO( o );

				

				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = v.positionOS.xyz;
				#else
					float3 defaultVertexValue = float3(0, 0, 0);
				#endif

				float3 vertexValue = defaultVertexValue;
				#ifdef ASE_ABSOLUTE_VERTEX_POS
					v.positionOS.xyz = vertexValue;
				#else
					v.positionOS.xyz += vertexValue;
				#endif

				v.normalOS = v.normalOS;

				float3 positionWS = TransformObjectToWorld( v.positionOS.xyz );

				#if defined(ASE_NEEDS_FRAG_WORLD_POSITION)
					o.positionWS = positionWS;
				#endif

				float3 normalWS = TransformObjectToWorldDir(v.normalOS);

				#if _CASTING_PUNCTUAL_LIGHT_SHADOW
					float3 lightDirectionWS = normalize(_LightPosition - positionWS);
				#else
					float3 lightDirectionWS = _LightDirection;
				#endif

				float4 positionCS = TransformWorldToHClip(ApplyShadowBias(positionWS, normalWS, lightDirectionWS));

				#if UNITY_REVERSED_Z
					positionCS.z = min(positionCS.z, UNITY_NEAR_CLIP_VALUE);
				#else
					positionCS.z = max(positionCS.z, UNITY_NEAR_CLIP_VALUE);
				#endif

				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR) && defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					VertexPositionInputs vertexInput = (VertexPositionInputs)0;
					vertexInput.positionWS = positionWS;
					vertexInput.positionCS = positionCS;
					o.shadowCoord = GetShadowCoord( vertexInput );
				#endif

				o.positionCS = positionCS;
				o.clipPosV = positionCS;
				return o;
			}

			#if defined(ASE_TESSELLATION)
			struct VertexControl
			{
				float4 vertex : INTERNALTESSPOS;
				float3 normalOS : NORMAL;
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl vert ( VertexInput v )
			{
				VertexControl o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				o.vertex = v.positionOS;
				o.normalOS = v.normalOS;
				
				return o;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> v)
			{
				TessellationFactors o;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), _WorldSpaceCameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams, unity_CameraWorldClipPlanes );
				#endif
				o.edge[0] = tf.x; o.edge[1] = tf.y; o.edge[2] = tf.z; o.inside = tf.w;
				return o;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
				return patch[id];
			}

			[domain("tri")]
			VertexOutput DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				VertexInput o = (VertexInput) 0;
				o.positionOS = patch[0].vertex * bary.x + patch[1].vertex * bary.y + patch[2].vertex * bary.z;
				o.normalOS = patch[0].normalOS * bary.x + patch[1].normalOS * bary.y + patch[2].normalOS * bary.z;
				
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = o.positionOS.xyz - patch[i].normalOS * (dot(o.positionOS.xyz, patch[i].normalOS) - dot(patch[i].vertex.xyz, patch[i].normalOS));
				float phongStrength = _TessPhongStrength;
				o.positionOS.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * o.positionOS.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], o);
				return VertexFunction(o);
			}
			#else
			VertexOutput vert ( VertexInput v )
			{
				return VertexFunction( v );
			}
			#endif

			half4 frag(	VertexOutput IN
						#ifdef ASE_DEPTH_WRITE_ON
						,out float outputDepth : ASE_SV_DEPTH
						#endif
						 ) : SV_TARGET
			{
				UNITY_SETUP_INSTANCE_ID( IN );
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX( IN );

				#if defined(ASE_NEEDS_FRAG_WORLD_POSITION)
					float3 WorldPosition = IN.positionWS;
				#endif

				float4 ShadowCoords = float4( 0, 0, 0, 0 );
				float4 ClipPos = IN.clipPosV;
				float4 ScreenPos = ComputeScreenPos( IN.clipPosV );

				#if defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR)
						ShadowCoords = IN.shadowCoord;
					#elif defined(MAIN_LIGHT_CALCULATE_SHADOWS)
						ShadowCoords = TransformWorldToShadowCoord( WorldPosition );
					#endif
				#endif

				

				float Alpha = 1;
				float AlphaClipThreshold = 0.5;
				float AlphaClipThresholdShadow = 0.5;

				#ifdef ASE_DEPTH_WRITE_ON
					float DepthValue = IN.positionCS.z;
				#endif

				#ifdef _ALPHATEST_ON
					#ifdef _ALPHATEST_SHADOW_ON
						clip(Alpha - AlphaClipThresholdShadow);
					#else
						clip(Alpha - AlphaClipThreshold);
					#endif
				#endif

				#ifdef LOD_FADE_CROSSFADE
					LODDitheringTransition( IN.positionCS.xyz, unity_LODFade.x );
				#endif

				#ifdef ASE_DEPTH_WRITE_ON
					outputDepth = DepthValue;
				#endif

				return 0;
			}
			ENDHLSL
		}

		
		Pass
		{
			
			Name "DepthOnly"
			Tags { "LightMode"="DepthOnly" }

			ZWrite On
			ColorMask 0
			AlphaToMask Off

			HLSLPROGRAM

            #define _NORMAL_DROPOFF_TS 1
            #pragma multi_compile_instancing
            #pragma multi_compile_fragment _ LOD_FADE_CROSSFADE
            #define ASE_FOG 1
            #define _NORMALMAP 1
            #define ASE_SRP_VERSION 120114
            #define ASE_USING_SAMPLING_MACROS 1


            #pragma multi_compile _ DOTS_INSTANCING_ON

			#pragma vertex vert
			#pragma fragment frag

			#define SHADERPASS SHADERPASS_DEPTHONLY

			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Color.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Input.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ShaderGraphFunctions.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/ShaderPass.hlsl"

			

			#if defined(ASE_EARLY_Z_DEPTH_OPTIMIZE) && (SHADER_TARGET >= 45)
				#define ASE_SV_DEPTH SV_DepthLessEqual
				#define ASE_SV_POSITION_QUALIFIERS linear noperspective centroid
			#else
				#define ASE_SV_DEPTH SV_Depth
				#define ASE_SV_POSITION_QUALIFIERS
			#endif

			struct VertexInput
			{
				float4 positionOS : POSITION;
				float3 normalOS : NORMAL;
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct VertexOutput
			{
				ASE_SV_POSITION_QUALIFIERS float4 positionCS : SV_POSITION;
				float4 clipPosV : TEXCOORD0;
				#if defined(ASE_NEEDS_FRAG_WORLD_POSITION)
				float3 positionWS : TEXCOORD1;
				#endif
				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR) && defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
				float4 shadowCoord : TEXCOORD2;
				#endif
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			CBUFFER_START(UnityPerMaterial)
			float4 _DetailMaskMap_TexelSize;
			float4 _DetailSecondaryMaskUVs;
			float4 _DetailMaskUVs;
			float4 _DetailColorMap_TexelSize;
			float4 _DetailUVs;
			float4 _DetailNormalMap_TexelSize;
			float4 _DetailSecondaryNormalMap_TexelSize;
			float4 _MainUVs;
			half4 _DetailColor;
			half4 _BaseColor;
			float4 _DetailSecondaryColorMap_TexelSize;
			half4 _DetailSecondaryColor;
			float4 _DetailSecondaryUVs;
			float4 _DetailSecondaryMaskMap_TexelSize;
			half _DetailSecondaryBlendHeight;
			int _DetailSecondaryBlendVertexColor;
			half _DetailSecondaryBlendSmooth;
			half _DetailSecondaryBlendStrength;
			half _DetailSecondaryBlendSource;
			half _DetailSecondaryMaskIsInverted;
			half _DetailSecondaryMaskEnable;
			half _DetailSecondaryBlendHeightMin;
			half _DetailSecondaryMaskBlendFalloff;
			half _DetailSecondaryMaskBlendStrength;
			half _DetailSecondaryMaskBlendHardness;
			half _DetailSecondaryBlendHeightMax;
			int _Cull;
			float _DetailSecondaryEnable;
			half _SmoothnessFresnelEnable;
			half _SmoothnessFresnelPower;
			half _SmoothnessFresnelScale;
			half _SmoothnessStrength;
			half _SmoothnessSource;
			float _MetallicStrength;
			float _DetailSecondaryBlendEnableAltitudeMask;
			half _DetailSecondaryNormalStrength;
			half _NormalStrength;
			float _SPACE_DETAILSECONDARY;
			float _CATEGORY_DETAILMAPPINGSECONDARY;
			float _SPACE_DETAIL;
			float _CATEGORY_DETAILMAPPING;
			half _DetailEnable;
			half _DetailNormalStrength;
			half _DetailSecondaryMaskUVRotation;
			half _DetailSecondaryUVMode;
			half _DetailSecondaryBrightness;
			float _SPACE_TRANSLUCENCY;
			float _CATEGORY_TRANSMISSION;
			float _CATEGORY_SURFACEINPUTS;
			float _SPACE_SURFACEINPUTS;
			float _SPACE_COLOR;
			float _CATEGORY_COLOR;
			float _UVMode;
			float _BaseColorSaturation;
			half _Brightness;
			half _DetailUVRotation;
			half _DetailUVMode;
			half _DetailBrightness;
			float _DetailSaturation;
			half _DetailMaskUVRotation;
			half _DetailMaskIsInverted;
			half _DetailMaskBlendStrength;
			half _DetailMaskBlendHardness;
			half _OcclusionStrengthAO;
			half _DetailSecondaryUVRotation;
			float _DetailSecondaryBlendWeightLayer2;
			float _DetailSecondaryBlendWeightLayer1;
			float _DetailBlendEnableAltitudeMask;
			half _DetailBlendHeightMax;
			float _DetailSecondarySaturation;
			half _DetailBlendHeightMin;
			int _DetailBlendVertexColor;
			half _DetailBlendSmooth;
			half _DetailBlendStrength;
			half _DetailBlendSource;
			half _DetailMaskEnable;
			half _DetailMaskBlendFalloff;
			half _DetailBlendHeight;
			half _OcclusionSource;
			#ifdef ASE_TRANSMISSION
				float _TransmissionShadow;
			#endif
			#ifdef ASE_TRANSLUCENCY
				float _TransStrength;
				float _TransNormal;
				float _TransScattering;
				float _TransDirect;
				float _TransAmbient;
				float _TransShadow;
			#endif
			#ifdef ASE_TESSELLATION
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			CBUFFER_END

			#ifdef SCENEPICKINGPASS
				float4 _SelectionID;
			#endif

			#ifdef SCENESELECTIONPASS
				int _ObjectId;
				int _PassValue;
			#endif

			

			float4 mod289( float4 x )
			{
				return x - floor(x * (1.0 / 289.0)) * 289.0;
			}
			
			float4 perm( float4 x )
			{
				return mod289(((x * 34.0) + 1.0) * x);
			}
			
			float SimpleNoise3D( float3 p )
			{
				 float3 a = floor(p);
				    float3 d = p - a;
				    d = d * d * (3.0 - 2.0 * d);
				 float4 b = a.xxyy + float4(0.0, 1.0, 0.0, 1.0);
				    float4 k1 = perm(b.xyxy);
				 float4 k2 = perm(k1.xyxy + b.zzww);
				    float4 c = k2 + a.zzzz;
				    float4 k3 = perm(c);
				    float4 k4 = perm(c + 1.0);
				    float4 o1 = frac(k3 * (1.0 / 41.0));
				 float4 o2 = frac(k4 * (1.0 / 41.0));
				    float4 o3 = o2 * d.z + o1 * (1.0 - d.z);
				    float2 o4 = o3.yw * d.x + o3.xz * (1.0 - d.x);
				    return o4.y * d.y + o4.x * (1.0 - d.y);
			}
			

			VertexOutput VertexFunction( VertexInput v  )
			{
				VertexOutput o = (VertexOutput)0;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);

				

				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = v.positionOS.xyz;
				#else
					float3 defaultVertexValue = float3(0, 0, 0);
				#endif

				float3 vertexValue = defaultVertexValue;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
					v.positionOS.xyz = vertexValue;
				#else
					v.positionOS.xyz += vertexValue;
				#endif

				v.normalOS = v.normalOS;

				VertexPositionInputs vertexInput = GetVertexPositionInputs( v.positionOS.xyz );

				#if defined(ASE_NEEDS_FRAG_WORLD_POSITION)
					o.positionWS = vertexInput.positionWS;
				#endif

				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR) && defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					o.shadowCoord = GetShadowCoord( vertexInput );
				#endif

				o.positionCS = vertexInput.positionCS;
				o.clipPosV = vertexInput.positionCS;
				return o;
			}

			#if defined(ASE_TESSELLATION)
			struct VertexControl
			{
				float4 vertex : INTERNALTESSPOS;
				float3 normalOS : NORMAL;
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl vert ( VertexInput v )
			{
				VertexControl o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				o.vertex = v.positionOS;
				o.normalOS = v.normalOS;
				
				return o;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> v)
			{
				TessellationFactors o;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), _WorldSpaceCameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams, unity_CameraWorldClipPlanes );
				#endif
				o.edge[0] = tf.x; o.edge[1] = tf.y; o.edge[2] = tf.z; o.inside = tf.w;
				return o;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
				return patch[id];
			}

			[domain("tri")]
			VertexOutput DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				VertexInput o = (VertexInput) 0;
				o.positionOS = patch[0].vertex * bary.x + patch[1].vertex * bary.y + patch[2].vertex * bary.z;
				o.normalOS = patch[0].normalOS * bary.x + patch[1].normalOS * bary.y + patch[2].normalOS * bary.z;
				
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = o.positionOS.xyz - patch[i].normalOS * (dot(o.positionOS.xyz, patch[i].normalOS) - dot(patch[i].vertex.xyz, patch[i].normalOS));
				float phongStrength = _TessPhongStrength;
				o.positionOS.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * o.positionOS.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], o);
				return VertexFunction(o);
			}
			#else
			VertexOutput vert ( VertexInput v )
			{
				return VertexFunction( v );
			}
			#endif

			half4 frag(	VertexOutput IN
						#ifdef ASE_DEPTH_WRITE_ON
						,out float outputDepth : ASE_SV_DEPTH
						#endif
						 ) : SV_TARGET
			{
				UNITY_SETUP_INSTANCE_ID(IN);
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX( IN );

				#if defined(ASE_NEEDS_FRAG_WORLD_POSITION)
				float3 WorldPosition = IN.positionWS;
				#endif

				float4 ShadowCoords = float4( 0, 0, 0, 0 );
				float4 ClipPos = IN.clipPosV;
				float4 ScreenPos = ComputeScreenPos( IN.clipPosV );

				#if defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR)
						ShadowCoords = IN.shadowCoord;
					#elif defined(MAIN_LIGHT_CALCULATE_SHADOWS)
						ShadowCoords = TransformWorldToShadowCoord( WorldPosition );
					#endif
				#endif

				

				float Alpha = 1;
				float AlphaClipThreshold = 0.5;

				#ifdef ASE_DEPTH_WRITE_ON
					float DepthValue = IN.positionCS.z;
				#endif

				#ifdef _ALPHATEST_ON
					clip(Alpha - AlphaClipThreshold);
				#endif

				#ifdef LOD_FADE_CROSSFADE
					LODDitheringTransition( IN.positionCS.xyz, unity_LODFade.x );
				#endif

				#ifdef ASE_DEPTH_WRITE_ON
					outputDepth = DepthValue;
				#endif

				return 0;
			}
			ENDHLSL
		}

		
		Pass
		{
			
			Name "Meta"
			Tags { "LightMode"="Meta" }

			Cull Off

			HLSLPROGRAM

			#define _NORMAL_DROPOFF_TS 1
			#define ASE_FOG 1
			#define _NORMALMAP 1
			#define ASE_SRP_VERSION 120114
			#ifdef UNITY_COLORSPACE_GAMMA//ASE Color Space Def
			#define unity_ColorSpaceDouble half4(2.0, 2.0, 2.0, 2.0)//ASE Color Space Def
			#else // Linear values//ASE Color Space Def
			#define unity_ColorSpaceDouble half4(4.59479380, 4.59479380, 4.59479380, 2.0)//ASE Color Space Def
			#endif//ASE Color Space Def
			#define ASE_USING_SAMPLING_MACROS 1


			#pragma vertex vert
			#pragma fragment frag

			#pragma shader_feature EDITOR_VISUALIZATION

			#define SHADERPASS SHADERPASS_META

			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Color.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Input.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ShaderGraphFunctions.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/MetaInput.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/ShaderPass.hlsl"

			#define ASE_NEEDS_FRAG_COLOR
			#define ASE_NEEDS_FRAG_WORLD_POSITION


			struct VertexInput
			{
				float4 positionOS : POSITION;
				float3 normalOS : NORMAL;
				float4 texcoord0 : TEXCOORD0;
				float4 texcoord1 : TEXCOORD1;
				float4 texcoord2 : TEXCOORD2;
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_color : COLOR;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct VertexOutput
			{
				float4 positionCS : SV_POSITION;
				#if defined(ASE_NEEDS_FRAG_WORLD_POSITION)
					float3 positionWS : TEXCOORD0;
				#endif
				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR) && defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					float4 shadowCoord : TEXCOORD1;
				#endif
				#ifdef EDITOR_VISUALIZATION
					float4 VizUV : TEXCOORD2;
					float4 LightCoord : TEXCOORD3;
				#endif
				float4 ase_texcoord4 : TEXCOORD4;
				float4 ase_texcoord5 : TEXCOORD5;
				float4 ase_color : COLOR;
				float4 ase_texcoord6 : TEXCOORD6;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			CBUFFER_START(UnityPerMaterial)
			float4 _DetailMaskMap_TexelSize;
			float4 _DetailSecondaryMaskUVs;
			float4 _DetailMaskUVs;
			float4 _DetailColorMap_TexelSize;
			float4 _DetailUVs;
			float4 _DetailNormalMap_TexelSize;
			float4 _DetailSecondaryNormalMap_TexelSize;
			float4 _MainUVs;
			half4 _DetailColor;
			half4 _BaseColor;
			float4 _DetailSecondaryColorMap_TexelSize;
			half4 _DetailSecondaryColor;
			float4 _DetailSecondaryUVs;
			float4 _DetailSecondaryMaskMap_TexelSize;
			half _DetailSecondaryBlendHeight;
			int _DetailSecondaryBlendVertexColor;
			half _DetailSecondaryBlendSmooth;
			half _DetailSecondaryBlendStrength;
			half _DetailSecondaryBlendSource;
			half _DetailSecondaryMaskIsInverted;
			half _DetailSecondaryMaskEnable;
			half _DetailSecondaryBlendHeightMin;
			half _DetailSecondaryMaskBlendFalloff;
			half _DetailSecondaryMaskBlendStrength;
			half _DetailSecondaryMaskBlendHardness;
			half _DetailSecondaryBlendHeightMax;
			int _Cull;
			float _DetailSecondaryEnable;
			half _SmoothnessFresnelEnable;
			half _SmoothnessFresnelPower;
			half _SmoothnessFresnelScale;
			half _SmoothnessStrength;
			half _SmoothnessSource;
			float _MetallicStrength;
			float _DetailSecondaryBlendEnableAltitudeMask;
			half _DetailSecondaryNormalStrength;
			half _NormalStrength;
			float _SPACE_DETAILSECONDARY;
			float _CATEGORY_DETAILMAPPINGSECONDARY;
			float _SPACE_DETAIL;
			float _CATEGORY_DETAILMAPPING;
			half _DetailEnable;
			half _DetailNormalStrength;
			half _DetailSecondaryMaskUVRotation;
			half _DetailSecondaryUVMode;
			half _DetailSecondaryBrightness;
			float _SPACE_TRANSLUCENCY;
			float _CATEGORY_TRANSMISSION;
			float _CATEGORY_SURFACEINPUTS;
			float _SPACE_SURFACEINPUTS;
			float _SPACE_COLOR;
			float _CATEGORY_COLOR;
			float _UVMode;
			float _BaseColorSaturation;
			half _Brightness;
			half _DetailUVRotation;
			half _DetailUVMode;
			half _DetailBrightness;
			float _DetailSaturation;
			half _DetailMaskUVRotation;
			half _DetailMaskIsInverted;
			half _DetailMaskBlendStrength;
			half _DetailMaskBlendHardness;
			half _OcclusionStrengthAO;
			half _DetailSecondaryUVRotation;
			float _DetailSecondaryBlendWeightLayer2;
			float _DetailSecondaryBlendWeightLayer1;
			float _DetailBlendEnableAltitudeMask;
			half _DetailBlendHeightMax;
			float _DetailSecondarySaturation;
			half _DetailBlendHeightMin;
			int _DetailBlendVertexColor;
			half _DetailBlendSmooth;
			half _DetailBlendStrength;
			half _DetailBlendSource;
			half _DetailMaskEnable;
			half _DetailMaskBlendFalloff;
			half _DetailBlendHeight;
			half _OcclusionSource;
			#ifdef ASE_TRANSMISSION
				float _TransmissionShadow;
			#endif
			#ifdef ASE_TRANSLUCENCY
				float _TransStrength;
				float _TransNormal;
				float _TransScattering;
				float _TransDirect;
				float _TransAmbient;
				float _TransShadow;
			#endif
			#ifdef ASE_TESSELLATION
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			CBUFFER_END

			#ifdef SCENEPICKINGPASS
				float4 _SelectionID;
			#endif

			#ifdef SCENESELECTIONPASS
				int _ObjectId;
				int _PassValue;
			#endif

			TEXTURE2D(_MainTex);
			SAMPLER(sampler_MainTex);
			TEXTURE2D(_DetailColorMap);
			TEXTURE2D(_DetailMaskMap);
			TEXTURE2D(_DetailSecondaryColorMap);
			TEXTURE2D(_DetailSecondaryMaskMap);


			float4 mod289( float4 x )
			{
				return x - floor(x * (1.0 / 289.0)) * 289.0;
			}
			
			float4 perm( float4 x )
			{
				return mod289(((x * 34.0) + 1.0) * x);
			}
			
			float SimpleNoise3D( float3 p )
			{
				 float3 a = floor(p);
				    float3 d = p - a;
				    d = d * d * (3.0 - 2.0 * d);
				 float4 b = a.xxyy + float4(0.0, 1.0, 0.0, 1.0);
				    float4 k1 = perm(b.xyxy);
				 float4 k2 = perm(k1.xyxy + b.zzww);
				    float4 c = k2 + a.zzzz;
				    float4 k3 = perm(c);
				    float4 k4 = perm(c + 1.0);
				    float4 o1 = frac(k3 * (1.0 / 41.0));
				 float4 o2 = frac(k4 * (1.0 / 41.0));
				    float4 o3 = o2 * d.z + o1 * (1.0 - d.z);
				    float2 o4 = o3.yw * d.x + o3.xz * (1.0 - d.x);
				    return o4.y * d.y + o4.x * (1.0 - d.y);
			}
			
			float2 float2switchUVMode80_g58525( float m_switch, float2 m_UV0, float2 m_UV1, float2 m_UV2, float2 m_UV3 )
			{
				if(m_switch ==0)
					return m_UV0;
				else if(m_switch ==1)
					return m_UV1;
				else if(m_switch ==2)
					return m_UV2;
				else if(m_switch ==3)
					return m_UV3;
				else
				return float2(0,0);
			}
			
			float2 float2switchUVMode80_g57837( float m_switch, float2 m_UV0, float2 m_UV1, float2 m_UV2, float2 m_UV3 )
			{
				if(m_switch ==0)
					return m_UV0;
				else if(m_switch ==1)
					return m_UV1;
				else if(m_switch ==2)
					return m_UV2;
				else if(m_switch ==3)
					return m_UV3;
				else
				return float2(0,0);
			}
			
			float2 float2switchUVMode80_g57840( float m_switch, float2 m_UV0, float2 m_UV1, float2 m_UV2, float2 m_UV3 )
			{
				if(m_switch ==0)
					return m_UV0;
				else if(m_switch ==1)
					return m_UV1;
				else if(m_switch ==2)
					return m_UV2;
				else if(m_switch ==3)
					return m_UV3;
				else
				return float2(0,0);
			}
			
			float MaskVCSwitch44_g57853( float m_switch, float m_Off, float m_R, float m_G, float m_B, float m_A )
			{
				if(m_switch ==0)
					return m_Off;
				else if(m_switch ==1)
					return m_R;
				else if(m_switch ==2)
					return m_G;
				else if(m_switch ==3)
					return m_B;
				else if(m_switch ==4)
					return m_A;
				else
				return float(0);
			}
			
			float2 float2switchUVMode80_g57843( float m_switch, float2 m_UV0, float2 m_UV1, float2 m_UV2, float2 m_UV3 )
			{
				if(m_switch ==0)
					return m_UV0;
				else if(m_switch ==1)
					return m_UV1;
				else if(m_switch ==2)
					return m_UV2;
				else if(m_switch ==3)
					return m_UV3;
				else
				return float2(0,0);
			}
			
			float2 float2switchUVMode80_g57846( float m_switch, float2 m_UV0, float2 m_UV1, float2 m_UV2, float2 m_UV3 )
			{
				if(m_switch ==0)
					return m_UV0;
				else if(m_switch ==1)
					return m_UV1;
				else if(m_switch ==2)
					return m_UV2;
				else if(m_switch ==3)
					return m_UV3;
				else
				return float2(0,0);
			}
			
			float MaskVCSwitch44_g57852( float m_switch, float m_Off, float m_R, float m_G, float m_B, float m_A )
			{
				if(m_switch ==0)
					return m_Off;
				else if(m_switch ==1)
					return m_R;
				else if(m_switch ==2)
					return m_G;
				else if(m_switch ==3)
					return m_B;
				else if(m_switch ==4)
					return m_A;
				else
				return float(0);
			}
			

			VertexOutput VertexFunction( VertexInput v  )
			{
				VertexOutput o = (VertexOutput)0;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);

				float m_switch80_g58525 = _UVMode;
				float2 m_UV080_g58525 = v.texcoord0.xy;
				float2 m_UV180_g58525 = v.texcoord1.xy;
				float2 m_UV280_g58525 = v.texcoord2.xy;
				float2 m_UV380_g58525 = v.ase_texcoord3.xy;
				float2 localfloat2switchUVMode80_g58525 = float2switchUVMode80_g58525( m_switch80_g58525 , m_UV080_g58525 , m_UV180_g58525 , m_UV280_g58525 , m_UV380_g58525 );
				float2 temp_output_1955_0_g57857 = (_MainUVs).xy;
				float2 temp_output_1953_0_g57857 = (_MainUVs).zw;
				float2 Offset235_g58525 = temp_output_1953_0_g57857;
				float2 temp_output_41_0_g58525 = ( ( localfloat2switchUVMode80_g58525 * temp_output_1955_0_g57857 ) + Offset235_g58525 );
				float2 vertexToFrag70_g58525 = temp_output_41_0_g58525;
				o.ase_texcoord4.xy = vertexToFrag70_g58525;
				float temp_output_6_0_g57837 = _DetailUVRotation;
				float temp_output_200_0_g57837 = radians( temp_output_6_0_g57837 );
				float temp_output_13_0_g57837 = cos( temp_output_200_0_g57837 );
				float m_switch80_g57837 = _DetailUVMode;
				float2 m_UV080_g57837 = v.texcoord0.xy;
				float2 m_UV180_g57837 = v.texcoord1.xy;
				float2 m_UV280_g57837 = v.texcoord2.xy;
				float2 m_UV380_g57837 = v.ase_texcoord3.xy;
				float2 localfloat2switchUVMode80_g57837 = float2switchUVMode80_g57837( m_switch80_g57837 , m_UV080_g57837 , m_UV180_g57837 , m_UV280_g57837 , m_UV380_g57837 );
				float2 temp_output_9_0_g57837 = float2( 0.5,0.5 );
				float2 break39_g57837 = ( localfloat2switchUVMode80_g57837 - temp_output_9_0_g57837 );
				float temp_output_14_0_g57837 = sin( temp_output_200_0_g57837 );
				float2 appendResult36_g57837 = (float2(( ( temp_output_13_0_g57837 * break39_g57837.x ) + ( temp_output_14_0_g57837 * break39_g57837.y ) ) , ( ( temp_output_13_0_g57837 * break39_g57837.y ) - ( temp_output_14_0_g57837 * break39_g57837.x ) )));
				float2 Offset235_g57837 = (_DetailUVs).zw;
				float2 temp_output_41_0_g57837 = ( ( ( appendResult36_g57837 * ( (_DetailUVs).xy / 1.0 ) ) + temp_output_9_0_g57837 ) + Offset235_g57837 );
				float2 _ConstantAnchor = float2(0.5,0.5);
				float2 vertexToFrag70_g57837 = ( temp_output_41_0_g57837 - ( ( ( (_DetailUVs).xy / 1.0 ) * _ConstantAnchor ) - _ConstantAnchor ) );
				o.ase_texcoord4.zw = vertexToFrag70_g57837;
				float temp_output_6_0_g57840 = _DetailMaskUVRotation;
				float temp_output_200_0_g57840 = radians( temp_output_6_0_g57840 );
				float temp_output_13_0_g57840 = cos( temp_output_200_0_g57840 );
				float DetailUVMode1060_g57823 = _DetailUVMode;
				float m_switch80_g57840 = DetailUVMode1060_g57823;
				float2 m_UV080_g57840 = v.texcoord0.xy;
				float2 m_UV180_g57840 = v.texcoord1.xy;
				float2 m_UV280_g57840 = v.texcoord2.xy;
				float2 m_UV380_g57840 = v.ase_texcoord3.xy;
				float2 localfloat2switchUVMode80_g57840 = float2switchUVMode80_g57840( m_switch80_g57840 , m_UV080_g57840 , m_UV180_g57840 , m_UV280_g57840 , m_UV380_g57840 );
				float2 temp_output_9_0_g57840 = float2( 0.5,0.5 );
				float2 break39_g57840 = ( localfloat2switchUVMode80_g57840 - temp_output_9_0_g57840 );
				float temp_output_14_0_g57840 = sin( temp_output_200_0_g57840 );
				float2 appendResult36_g57840 = (float2(( ( temp_output_13_0_g57840 * break39_g57840.x ) + ( temp_output_14_0_g57840 * break39_g57840.y ) ) , ( ( temp_output_13_0_g57840 * break39_g57840.y ) - ( temp_output_14_0_g57840 * break39_g57840.x ) )));
				float2 Offset235_g57840 = (_DetailMaskUVs).zw;
				float2 temp_output_41_0_g57840 = ( ( ( appendResult36_g57840 * ( (_DetailMaskUVs).xy / 1.0 ) ) + temp_output_9_0_g57840 ) + Offset235_g57840 );
				float2 vertexToFrag70_g57840 = ( temp_output_41_0_g57840 - ( ( ( (_DetailMaskUVs).xy / 1.0 ) * _ConstantAnchor ) - _ConstantAnchor ) );
				o.ase_texcoord5.xy = vertexToFrag70_g57840;
				float temp_output_6_0_g57843 = _DetailSecondaryUVRotation;
				float temp_output_200_0_g57843 = radians( temp_output_6_0_g57843 );
				float temp_output_13_0_g57843 = cos( temp_output_200_0_g57843 );
				float m_switch80_g57843 = _DetailSecondaryUVMode;
				float2 m_UV080_g57843 = v.texcoord0.xy;
				float2 m_UV180_g57843 = v.texcoord1.xy;
				float2 m_UV280_g57843 = v.texcoord2.xy;
				float2 m_UV380_g57843 = v.ase_texcoord3.xy;
				float2 localfloat2switchUVMode80_g57843 = float2switchUVMode80_g57843( m_switch80_g57843 , m_UV080_g57843 , m_UV180_g57843 , m_UV280_g57843 , m_UV380_g57843 );
				float2 temp_output_9_0_g57843 = float2( 0.5,0.5 );
				float2 break39_g57843 = ( localfloat2switchUVMode80_g57843 - temp_output_9_0_g57843 );
				float temp_output_14_0_g57843 = sin( temp_output_200_0_g57843 );
				float2 appendResult36_g57843 = (float2(( ( temp_output_13_0_g57843 * break39_g57843.x ) + ( temp_output_14_0_g57843 * break39_g57843.y ) ) , ( ( temp_output_13_0_g57843 * break39_g57843.y ) - ( temp_output_14_0_g57843 * break39_g57843.x ) )));
				float2 Offset235_g57843 = (_DetailSecondaryUVs).zw;
				float2 temp_output_41_0_g57843 = ( ( ( appendResult36_g57843 * ( (_DetailSecondaryUVs).xy / 1.0 ) ) + temp_output_9_0_g57843 ) + Offset235_g57843 );
				float2 vertexToFrag70_g57843 = ( temp_output_41_0_g57843 - ( ( ( (_DetailSecondaryUVs).xy / 1.0 ) * _ConstantAnchor ) - _ConstantAnchor ) );
				o.ase_texcoord5.zw = vertexToFrag70_g57843;
				float temp_output_6_0_g57846 = _DetailSecondaryMaskUVRotation;
				float temp_output_200_0_g57846 = radians( temp_output_6_0_g57846 );
				float temp_output_13_0_g57846 = cos( temp_output_200_0_g57846 );
				float DetailSecondaryUVMode1059_g57823 = _DetailSecondaryUVMode;
				float m_switch80_g57846 = DetailSecondaryUVMode1059_g57823;
				float2 m_UV080_g57846 = v.texcoord0.xy;
				float2 m_UV180_g57846 = v.texcoord1.xy;
				float2 m_UV280_g57846 = v.texcoord2.xy;
				float2 m_UV380_g57846 = v.ase_texcoord3.xy;
				float2 localfloat2switchUVMode80_g57846 = float2switchUVMode80_g57846( m_switch80_g57846 , m_UV080_g57846 , m_UV180_g57846 , m_UV280_g57846 , m_UV380_g57846 );
				float2 temp_output_9_0_g57846 = float2( 0.5,0.5 );
				float2 break39_g57846 = ( localfloat2switchUVMode80_g57846 - temp_output_9_0_g57846 );
				float temp_output_14_0_g57846 = sin( temp_output_200_0_g57846 );
				float2 appendResult36_g57846 = (float2(( ( temp_output_13_0_g57846 * break39_g57846.x ) + ( temp_output_14_0_g57846 * break39_g57846.y ) ) , ( ( temp_output_13_0_g57846 * break39_g57846.y ) - ( temp_output_14_0_g57846 * break39_g57846.x ) )));
				float2 Offset235_g57846 = (_DetailSecondaryMaskUVs).zw;
				float2 temp_output_41_0_g57846 = ( ( ( appendResult36_g57846 * ( (_DetailSecondaryMaskUVs).xy / 1.0 ) ) + temp_output_9_0_g57846 ) + Offset235_g57846 );
				float2 vertexToFrag70_g57846 = ( temp_output_41_0_g57846 - ( ( ( (_DetailSecondaryMaskUVs).xy / 1.0 ) * _ConstantAnchor ) - _ConstantAnchor ) );
				o.ase_texcoord6.xy = vertexToFrag70_g57846;
				
				o.ase_color = v.ase_color;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord6.zw = 0;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = v.positionOS.xyz;
				#else
					float3 defaultVertexValue = float3(0, 0, 0);
				#endif

				float3 vertexValue = defaultVertexValue;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
					v.positionOS.xyz = vertexValue;
				#else
					v.positionOS.xyz += vertexValue;
				#endif

				v.normalOS = v.normalOS;

				float3 positionWS = TransformObjectToWorld( v.positionOS.xyz );

				#if defined(ASE_NEEDS_FRAG_WORLD_POSITION)
					o.positionWS = positionWS;
				#endif

				o.positionCS = MetaVertexPosition( v.positionOS, v.texcoord1.xy, v.texcoord1.xy, unity_LightmapST, unity_DynamicLightmapST );

				#ifdef EDITOR_VISUALIZATION
					float2 VizUV = 0;
					float4 LightCoord = 0;
					UnityEditorVizData(v.positionOS.xyz, v.texcoord0.xy, v.texcoord1.xy, v.texcoord2.xy, VizUV, LightCoord);
					o.VizUV = float4(VizUV, 0, 0);
					o.LightCoord = LightCoord;
				#endif

				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR) && defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					VertexPositionInputs vertexInput = (VertexPositionInputs)0;
					vertexInput.positionWS = positionWS;
					vertexInput.positionCS = o.positionCS;
					o.shadowCoord = GetShadowCoord( vertexInput );
				#endif

				return o;
			}

			#if defined(ASE_TESSELLATION)
			struct VertexControl
			{
				float4 vertex : INTERNALTESSPOS;
				float3 normalOS : NORMAL;
				float4 texcoord0 : TEXCOORD0;
				float4 texcoord1 : TEXCOORD1;
				float4 texcoord2 : TEXCOORD2;
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_color : COLOR;

				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl vert ( VertexInput v )
			{
				VertexControl o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				o.vertex = v.positionOS;
				o.normalOS = v.normalOS;
				o.texcoord0 = v.texcoord0;
				o.texcoord1 = v.texcoord1;
				o.texcoord2 = v.texcoord2;
				o.ase_texcoord3 = v.ase_texcoord3;
				o.ase_color = v.ase_color;
				return o;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> v)
			{
				TessellationFactors o;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), _WorldSpaceCameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams, unity_CameraWorldClipPlanes );
				#endif
				o.edge[0] = tf.x; o.edge[1] = tf.y; o.edge[2] = tf.z; o.inside = tf.w;
				return o;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
				return patch[id];
			}

			[domain("tri")]
			VertexOutput DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				VertexInput o = (VertexInput) 0;
				o.positionOS = patch[0].vertex * bary.x + patch[1].vertex * bary.y + patch[2].vertex * bary.z;
				o.normalOS = patch[0].normalOS * bary.x + patch[1].normalOS * bary.y + patch[2].normalOS * bary.z;
				o.texcoord0 = patch[0].texcoord0 * bary.x + patch[1].texcoord0 * bary.y + patch[2].texcoord0 * bary.z;
				o.texcoord1 = patch[0].texcoord1 * bary.x + patch[1].texcoord1 * bary.y + patch[2].texcoord1 * bary.z;
				o.texcoord2 = patch[0].texcoord2 * bary.x + patch[1].texcoord2 * bary.y + patch[2].texcoord2 * bary.z;
				o.ase_texcoord3 = patch[0].ase_texcoord3 * bary.x + patch[1].ase_texcoord3 * bary.y + patch[2].ase_texcoord3 * bary.z;
				o.ase_color = patch[0].ase_color * bary.x + patch[1].ase_color * bary.y + patch[2].ase_color * bary.z;
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = o.positionOS.xyz - patch[i].normalOS * (dot(o.positionOS.xyz, patch[i].normalOS) - dot(patch[i].vertex.xyz, patch[i].normalOS));
				float phongStrength = _TessPhongStrength;
				o.positionOS.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * o.positionOS.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], o);
				return VertexFunction(o);
			}
			#else
			VertexOutput vert ( VertexInput v )
			{
				return VertexFunction( v );
			}
			#endif

			half4 frag(VertexOutput IN  ) : SV_TARGET
			{
				UNITY_SETUP_INSTANCE_ID(IN);
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX( IN );

				#if defined(ASE_NEEDS_FRAG_WORLD_POSITION)
					float3 WorldPosition = IN.positionWS;
				#endif

				float4 ShadowCoords = float4( 0, 0, 0, 0 );

				#if defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR)
						ShadowCoords = IN.shadowCoord;
					#elif defined(MAIN_LIGHT_CALCULATE_SHADOWS)
						ShadowCoords = TransformWorldToShadowCoord( WorldPosition );
					#endif
				#endif

				float3 temp_output_1923_0_g57857 = (_BaseColor).rgb;
				float2 vertexToFrag70_g58525 = IN.ase_texcoord4.xy;
				float2 UV213_g57857 = vertexToFrag70_g58525;
				float4 tex2DNode2048_g57857 = SAMPLE_TEXTURE2D( _MainTex, sampler_MainTex, UV213_g57857 );
				float3 ALBEDO_RGBA1381_g57857 = (tex2DNode2048_g57857).rgb;
				float3 temp_output_12_0_g57865 = ALBEDO_RGBA1381_g57857;
				float dotResult28_g57865 = dot( float3(0.2126729,0.7151522,0.072175) , temp_output_12_0_g57865 );
				float3 temp_cast_0 = (dotResult28_g57865).xxx;
				float temp_output_21_0_g57865 = ( 1.0 - _BaseColorSaturation );
				float3 lerpResult31_g57865 = lerp( temp_cast_0 , temp_output_12_0_g57865 , temp_output_21_0_g57865);
				float3 temp_output_3_0_g57857 = ( temp_output_1923_0_g57857 * lerpResult31_g57865 * _Brightness );
				float3 temp_output_39_0_g57823 = temp_output_3_0_g57857;
				float localStochasticTiling159_g57828 = ( 0.0 );
				float2 vertexToFrag70_g57837 = IN.ase_texcoord4.zw;
				float2 temp_output_1334_0_g57823 = vertexToFrag70_g57837;
				float2 UV159_g57828 = temp_output_1334_0_g57823;
				float4 TexelSize159_g57828 = _DetailColorMap_TexelSize;
				float4 Offsets159_g57828 = float4( 0,0,0,0 );
				float2 Weights159_g57828 = float2( 0,0 );
				{
				UV159_g57828 = UV159_g57828 * TexelSize159_g57828.zw - 0.5;
				float2 f = frac( UV159_g57828 );
				UV159_g57828 -= f;
				float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				float4 xs = xn * xn * xn;
				float4 ys = yn * yn * yn;
				float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				float4 c = float4( UV159_g57828.x - 0.5, UV159_g57828.x + 1.5, UV159_g57828.y - 0.5, UV159_g57828.y + 1.5 );
				float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				float w0 = s.x / ( s.x + s.y );
				float w1 = s.z / ( s.z + s.w );
				Offsets159_g57828 = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize159_g57828.xyxy;
				Weights159_g57828 = float2( w0, w1 );
				}
				float4 Input_FetchOffsets70_g57829 = Offsets159_g57828;
				float2 Input_FetchWeights143_g57829 = Weights159_g57828;
				float2 break46_g57829 = Input_FetchWeights143_g57829;
				float4 lerpResult20_g57829 = lerp( SAMPLE_TEXTURE2D( _DetailColorMap, sampler_MainTex, (Input_FetchOffsets70_g57829).yw ) , SAMPLE_TEXTURE2D( _DetailColorMap, sampler_MainTex, (Input_FetchOffsets70_g57829).xw ) , break46_g57829.x);
				float4 lerpResult40_g57829 = lerp( SAMPLE_TEXTURE2D( _DetailColorMap, sampler_MainTex, (Input_FetchOffsets70_g57829).yz ) , SAMPLE_TEXTURE2D( _DetailColorMap, sampler_MainTex, (Input_FetchOffsets70_g57829).xz ) , break46_g57829.x);
				float4 lerpResult22_g57829 = lerp( lerpResult20_g57829 , lerpResult40_g57829 , break46_g57829.y);
				float4 Output_Fetch2D44_g57829 = lerpResult22_g57829;
				float3 temp_output_44_0_g57823 = ( (_DetailColor).rgb * (Output_Fetch2D44_g57829).rgb * _DetailBrightness );
				float3 temp_output_12_0_g57849 = temp_output_44_0_g57823;
				float dotResult28_g57849 = dot( float3(0.2126729,0.7151522,0.072175) , temp_output_12_0_g57849 );
				float3 temp_cast_1 = (dotResult28_g57849).xxx;
				float temp_output_21_0_g57849 = ( 1.0 - _DetailSaturation );
				float3 lerpResult31_g57849 = lerp( temp_cast_1 , temp_output_12_0_g57849 , temp_output_21_0_g57849);
				float3 temp_output_1272_0_g57823 = (unity_ColorSpaceDouble).rgb;
				float3 temp_output_1190_0_g57823 = ( lerpResult31_g57849 * temp_output_1272_0_g57823 );
				float3 BaseColor_RGB40_g57823 = temp_output_39_0_g57823;
				float localStochasticTiling159_g57835 = ( 0.0 );
				float2 vertexToFrag70_g57840 = IN.ase_texcoord5.xy;
				float2 temp_output_1339_0_g57823 = vertexToFrag70_g57840;
				float2 UV159_g57835 = temp_output_1339_0_g57823;
				float4 TexelSize159_g57835 = _DetailMaskMap_TexelSize;
				float4 Offsets159_g57835 = float4( 0,0,0,0 );
				float2 Weights159_g57835 = float2( 0,0 );
				{
				UV159_g57835 = UV159_g57835 * TexelSize159_g57835.zw - 0.5;
				float2 f = frac( UV159_g57835 );
				UV159_g57835 -= f;
				float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				float4 xs = xn * xn * xn;
				float4 ys = yn * yn * yn;
				float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				float4 c = float4( UV159_g57835.x - 0.5, UV159_g57835.x + 1.5, UV159_g57835.y - 0.5, UV159_g57835.y + 1.5 );
				float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				float w0 = s.x / ( s.x + s.y );
				float w1 = s.z / ( s.z + s.w );
				Offsets159_g57835 = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize159_g57835.xyxy;
				Weights159_g57835 = float2( w0, w1 );
				}
				float4 Input_FetchOffsets70_g57836 = Offsets159_g57835;
				float2 Input_FetchWeights143_g57836 = Weights159_g57835;
				float2 break46_g57836 = Input_FetchWeights143_g57836;
				float4 lerpResult20_g57836 = lerp( SAMPLE_TEXTURE2D( _DetailMaskMap, sampler_MainTex, (Input_FetchOffsets70_g57836).yw ) , SAMPLE_TEXTURE2D( _DetailMaskMap, sampler_MainTex, (Input_FetchOffsets70_g57836).xw ) , break46_g57836.x);
				float4 lerpResult40_g57836 = lerp( SAMPLE_TEXTURE2D( _DetailMaskMap, sampler_MainTex, (Input_FetchOffsets70_g57836).yz ) , SAMPLE_TEXTURE2D( _DetailMaskMap, sampler_MainTex, (Input_FetchOffsets70_g57836).xz ) , break46_g57836.x);
				float4 lerpResult22_g57836 = lerp( lerpResult20_g57836 , lerpResult40_g57836 , break46_g57836.y);
				float4 Output_Fetch2D44_g57836 = lerpResult22_g57836;
				float4 break50_g57836 = Output_Fetch2D44_g57836;
				float lerpResult997_g57823 = lerp( ( 1.0 - break50_g57836.r ) , break50_g57836.r , _DetailMaskIsInverted);
				float temp_output_15_0_g57851 = ( 1.0 - lerpResult997_g57823 );
				float temp_output_26_0_g57851 = _DetailMaskBlendStrength;
				float temp_output_24_0_g57851 = _DetailMaskBlendHardness;
				float saferPower2_g57851 = abs( max( saturate( (0.0 + (temp_output_15_0_g57851 - ( 1.0 - temp_output_26_0_g57851 )) * (temp_output_24_0_g57851 - 0.0) / (1.0 - ( 1.0 - temp_output_26_0_g57851 ))) ) , 0.0 ) );
				float temp_output_22_0_g57851 = _DetailMaskBlendFalloff;
				float Blend_DetailMask986_g57823 = saturate( pow( saferPower2_g57851 , ( 1.0 - temp_output_22_0_g57851 ) ) );
				float3 lerpResult1194_g57823 = lerp( BaseColor_RGB40_g57823 , temp_output_1190_0_g57823 , Blend_DetailMask986_g57823);
				float temp_output_1162_0_g57823 = ( 1.0 - Blend_DetailMask986_g57823 );
				float3 appendResult1161_g57823 = (float3(temp_output_1162_0_g57823 , temp_output_1162_0_g57823 , temp_output_1162_0_g57823));
				float3 lerpResult1005_g57823 = lerp( temp_output_1190_0_g57823 , ( ( lerpResult1194_g57823 * Blend_DetailMask986_g57823 ) + appendResult1161_g57823 ) , _DetailMaskEnable);
				float3 BaseColor_Detail255_g57823 = lerpResult1005_g57823;
				float BaseColor_R1273_g57823 = temp_output_39_0_g57823.x;
				float BaseColor_DetailR887_g57823 = Output_Fetch2D44_g57829.r;
				float lerpResult1105_g57823 = lerp( BaseColor_R1273_g57823 , BaseColor_DetailR887_g57823 , _DetailBlendSource);
				float m_switch44_g57853 = (float)_DetailBlendVertexColor;
				float m_Off44_g57853 = 1.0;
				float dotResult58_g57853 = dot( IN.ase_color.g , IN.ase_color.g );
				float dotResult61_g57853 = dot( IN.ase_color.b , IN.ase_color.b );
				float m_R44_g57853 = ( dotResult58_g57853 + dotResult61_g57853 );
				float dotResult57_g57853 = dot( IN.ase_color.r , IN.ase_color.r );
				float m_G44_g57853 = ( dotResult57_g57853 + dotResult58_g57853 );
				float m_B44_g57853 = ( dotResult57_g57853 + dotResult61_g57853 );
				float m_A44_g57853 = IN.ase_color.a;
				float localMaskVCSwitch44_g57853 = MaskVCSwitch44_g57853( m_switch44_g57853 , m_Off44_g57853 , m_R44_g57853 , m_G44_g57853 , m_B44_g57853 , m_A44_g57853 );
				float clampResult54_g57853 = clamp( ( ( localMaskVCSwitch44_g57853 * _DetailBlendHeight ) / _DetailBlendSmooth ) , 0.0 , 1.0 );
				float Blend647_g57823 = saturate( ( ( ( ( lerpResult1105_g57823 - 0.5 ) * ( ( 1.0 - _DetailBlendStrength ) - 0.9 ) ) / ( 1.0 - _DetailBlendSmooth ) ) + ( 1.0 - clampResult54_g57853 ) ) );
				float temp_output_1171_0_g57823 = ( 1.0 - Blend647_g57823 );
				float3 appendResult1174_g57823 = (float3(temp_output_1171_0_g57823 , temp_output_1171_0_g57823 , temp_output_1171_0_g57823));
				float3 temp_output_1173_0_g57823 = ( ( BaseColor_Detail255_g57823 * Blend647_g57823 ) + appendResult1174_g57823 );
				float temp_output_20_0_g57854 = _DetailBlendHeightMin;
				float temp_output_21_0_g57854 = _DetailBlendHeightMax;
				float3 worldToObj1466_g57823 = mul( GetWorldToObjectMatrix(), float4( WorldPosition, 1 ) ).xyz;
				float3 WorldPosition1436_g57823 = worldToObj1466_g57823;
				float smoothstepResult25_g57854 = smoothstep( temp_output_20_0_g57854 , temp_output_21_0_g57854 , WorldPosition1436_g57823.y);
				float DetailBlendHeight1440_g57823 = smoothstepResult25_g57854;
				float3 lerpResult1438_g57823 = lerp( temp_output_1173_0_g57823 , temp_output_39_0_g57823 , DetailBlendHeight1440_g57823);
				float3 lerpResult1457_g57823 = lerp( temp_output_1173_0_g57823 , lerpResult1438_g57823 , _DetailBlendEnableAltitudeMask);
				float3 temp_output_1180_0_g57823 = ( temp_output_39_0_g57823 * lerpResult1457_g57823 );
				float2 appendResult1114_g57823 = (float2(_DetailSecondaryBlendWeightLayer1 , _DetailSecondaryBlendWeightLayer2));
				float localStochasticTiling159_g57824 = ( 0.0 );
				float2 vertexToFrag70_g57843 = IN.ase_texcoord5.zw;
				float2 temp_output_1342_0_g57823 = vertexToFrag70_g57843;
				float2 UV159_g57824 = temp_output_1342_0_g57823;
				float4 TexelSize159_g57824 = _DetailSecondaryColorMap_TexelSize;
				float4 Offsets159_g57824 = float4( 0,0,0,0 );
				float2 Weights159_g57824 = float2( 0,0 );
				{
				UV159_g57824 = UV159_g57824 * TexelSize159_g57824.zw - 0.5;
				float2 f = frac( UV159_g57824 );
				UV159_g57824 -= f;
				float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				float4 xs = xn * xn * xn;
				float4 ys = yn * yn * yn;
				float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				float4 c = float4( UV159_g57824.x - 0.5, UV159_g57824.x + 1.5, UV159_g57824.y - 0.5, UV159_g57824.y + 1.5 );
				float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				float w0 = s.x / ( s.x + s.y );
				float w1 = s.z / ( s.z + s.w );
				Offsets159_g57824 = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize159_g57824.xyxy;
				Weights159_g57824 = float2( w0, w1 );
				}
				float4 Input_FetchOffsets70_g57825 = Offsets159_g57824;
				float2 Input_FetchWeights143_g57825 = Weights159_g57824;
				float2 break46_g57825 = Input_FetchWeights143_g57825;
				float4 lerpResult20_g57825 = lerp( SAMPLE_TEXTURE2D( _DetailSecondaryColorMap, sampler_MainTex, (Input_FetchOffsets70_g57825).yw ) , SAMPLE_TEXTURE2D( _DetailSecondaryColorMap, sampler_MainTex, (Input_FetchOffsets70_g57825).xw ) , break46_g57825.x);
				float4 lerpResult40_g57825 = lerp( SAMPLE_TEXTURE2D( _DetailSecondaryColorMap, sampler_MainTex, (Input_FetchOffsets70_g57825).yz ) , SAMPLE_TEXTURE2D( _DetailSecondaryColorMap, sampler_MainTex, (Input_FetchOffsets70_g57825).xz ) , break46_g57825.x);
				float4 lerpResult22_g57825 = lerp( lerpResult20_g57825 , lerpResult40_g57825 , break46_g57825.y);
				float4 Output_Fetch2D44_g57825 = lerpResult22_g57825;
				float3 temp_output_436_0_g57823 = ( (_DetailSecondaryColor).rgb * (Output_Fetch2D44_g57825).rgb * _DetailSecondaryBrightness );
				float3 temp_output_12_0_g57850 = temp_output_436_0_g57823;
				float dotResult28_g57850 = dot( float3(0.2126729,0.7151522,0.072175) , temp_output_12_0_g57850 );
				float3 temp_cast_3 = (dotResult28_g57850).xxx;
				float temp_output_21_0_g57850 = ( 1.0 - _DetailSecondarySaturation );
				float3 lerpResult31_g57850 = lerp( temp_cast_3 , temp_output_12_0_g57850 , temp_output_21_0_g57850);
				float3 ColorSpaceDouble1261_g57823 = temp_output_1272_0_g57823;
				float3 temp_output_1239_0_g57823 = ( lerpResult31_g57850 * ColorSpaceDouble1261_g57823 );
				float localStochasticTiling159_g57830 = ( 0.0 );
				float2 vertexToFrag70_g57846 = IN.ase_texcoord6.xy;
				float2 temp_output_1347_0_g57823 = vertexToFrag70_g57846;
				float2 UV159_g57830 = temp_output_1347_0_g57823;
				float4 TexelSize159_g57830 = _DetailSecondaryMaskMap_TexelSize;
				float4 Offsets159_g57830 = float4( 0,0,0,0 );
				float2 Weights159_g57830 = float2( 0,0 );
				{
				UV159_g57830 = UV159_g57830 * TexelSize159_g57830.zw - 0.5;
				float2 f = frac( UV159_g57830 );
				UV159_g57830 -= f;
				float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				float4 xs = xn * xn * xn;
				float4 ys = yn * yn * yn;
				float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				float4 c = float4( UV159_g57830.x - 0.5, UV159_g57830.x + 1.5, UV159_g57830.y - 0.5, UV159_g57830.y + 1.5 );
				float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				float w0 = s.x / ( s.x + s.y );
				float w1 = s.z / ( s.z + s.w );
				Offsets159_g57830 = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize159_g57830.xyxy;
				Weights159_g57830 = float2( w0, w1 );
				}
				float4 Input_FetchOffsets70_g57831 = Offsets159_g57830;
				float2 Input_FetchWeights143_g57831 = Weights159_g57830;
				float2 break46_g57831 = Input_FetchWeights143_g57831;
				float4 lerpResult20_g57831 = lerp( SAMPLE_TEXTURE2D( _DetailSecondaryMaskMap, sampler_MainTex, (Input_FetchOffsets70_g57831).yw ) , SAMPLE_TEXTURE2D( _DetailSecondaryMaskMap, sampler_MainTex, (Input_FetchOffsets70_g57831).xw ) , break46_g57831.x);
				float4 lerpResult40_g57831 = lerp( SAMPLE_TEXTURE2D( _DetailSecondaryMaskMap, sampler_MainTex, (Input_FetchOffsets70_g57831).yz ) , SAMPLE_TEXTURE2D( _DetailSecondaryMaskMap, sampler_MainTex, (Input_FetchOffsets70_g57831).xz ) , break46_g57831.x);
				float4 lerpResult22_g57831 = lerp( lerpResult20_g57831 , lerpResult40_g57831 , break46_g57831.y);
				float4 Output_Fetch2D44_g57831 = lerpResult22_g57831;
				float4 break50_g57831 = Output_Fetch2D44_g57831;
				float lerpResult486_g57823 = lerp( ( 1.0 - break50_g57831.r ) , break50_g57831.r , _DetailSecondaryMaskIsInverted);
				float temp_output_15_0_g57832 = ( 1.0 - lerpResult486_g57823 );
				float temp_output_26_0_g57832 = _DetailSecondaryMaskBlendStrength;
				float temp_output_24_0_g57832 = _DetailSecondaryMaskBlendHardness;
				float saferPower2_g57832 = abs( max( saturate( (0.0 + (temp_output_15_0_g57832 - ( 1.0 - temp_output_26_0_g57832 )) * (temp_output_24_0_g57832 - 0.0) / (1.0 - ( 1.0 - temp_output_26_0_g57832 ))) ) , 0.0 ) );
				float temp_output_22_0_g57832 = _DetailSecondaryMaskBlendFalloff;
				float Blend_DetailSecondaryMask755_g57823 = saturate( pow( saferPower2_g57832 , ( 1.0 - temp_output_22_0_g57832 ) ) );
				float3 lerpResult1234_g57823 = lerp( BaseColor_RGB40_g57823 , temp_output_1239_0_g57823 , Blend_DetailSecondaryMask755_g57823);
				float temp_output_1236_0_g57823 = ( 1.0 - Blend_DetailSecondaryMask755_g57823 );
				float3 appendResult1238_g57823 = (float3(temp_output_1236_0_g57823 , temp_output_1236_0_g57823 , temp_output_1236_0_g57823));
				float3 lerpResult1233_g57823 = lerp( temp_output_1239_0_g57823 , ( ( lerpResult1234_g57823 * Blend_DetailSecondaryMask755_g57823 ) + appendResult1238_g57823 ) , _DetailSecondaryMaskEnable);
				float3 BaseColor_DetailSecondary805_g57823 = lerpResult1233_g57823;
				float BaseColor_DetailSecondaryR1102_g57823 = Output_Fetch2D44_g57825.r;
				float lerpResult1103_g57823 = lerp( BaseColor_R1273_g57823 , BaseColor_DetailSecondaryR1102_g57823 , _DetailSecondaryBlendSource);
				float m_switch44_g57852 = (float)_DetailSecondaryBlendVertexColor;
				float m_Off44_g57852 = 1.0;
				float dotResult58_g57852 = dot( IN.ase_color.g , IN.ase_color.g );
				float dotResult61_g57852 = dot( IN.ase_color.b , IN.ase_color.b );
				float m_R44_g57852 = ( dotResult58_g57852 + dotResult61_g57852 );
				float dotResult57_g57852 = dot( IN.ase_color.r , IN.ase_color.r );
				float m_G44_g57852 = ( dotResult57_g57852 + dotResult58_g57852 );
				float m_B44_g57852 = ( dotResult57_g57852 + dotResult61_g57852 );
				float m_A44_g57852 = IN.ase_color.a;
				float localMaskVCSwitch44_g57852 = MaskVCSwitch44_g57852( m_switch44_g57852 , m_Off44_g57852 , m_R44_g57852 , m_G44_g57852 , m_B44_g57852 , m_A44_g57852 );
				float clampResult54_g57852 = clamp( ( ( localMaskVCSwitch44_g57852 * _DetailSecondaryBlendHeight ) / _DetailSecondaryBlendSmooth ) , 0.0 , 1.0 );
				float BlendSecondary786_g57823 = saturate( ( ( ( ( lerpResult1103_g57823 - 0.5 ) * ( ( 1.0 - _DetailSecondaryBlendStrength ) - 0.9 ) ) / ( 1.0 - _DetailSecondaryBlendSmooth ) ) + ( 1.0 - clampResult54_g57852 ) ) );
				float temp_output_1214_0_g57823 = ( 1.0 - BlendSecondary786_g57823 );
				float3 appendResult1216_g57823 = (float3(temp_output_1214_0_g57823 , temp_output_1214_0_g57823 , temp_output_1214_0_g57823));
				float3 temp_output_1217_0_g57823 = ( ( BaseColor_DetailSecondary805_g57823 * BlendSecondary786_g57823 ) + appendResult1216_g57823 );
				float temp_output_20_0_g57856 = _DetailSecondaryBlendHeightMin;
				float temp_output_21_0_g57856 = _DetailSecondaryBlendHeightMax;
				float smoothstepResult25_g57856 = smoothstep( temp_output_20_0_g57856 , temp_output_21_0_g57856 , WorldPosition1436_g57823.y);
				float DetailSecondaryBlendHeight1441_g57823 = smoothstepResult25_g57856;
				float3 lerpResult1455_g57823 = lerp( temp_output_1217_0_g57823 , temp_output_39_0_g57823 , DetailSecondaryBlendHeight1441_g57823);
				float3 lerpResult1459_g57823 = lerp( temp_output_1217_0_g57823 , lerpResult1455_g57823 , _DetailSecondaryBlendEnableAltitudeMask);
				float2 weightedBlendVar1117_g57823 = appendResult1114_g57823;
				float3 weightedAvg1117_g57823 = ( ( weightedBlendVar1117_g57823.x*temp_output_1180_0_g57823 + weightedBlendVar1117_g57823.y*( temp_output_39_0_g57823 * lerpResult1459_g57823 ) )/( weightedBlendVar1117_g57823.x + weightedBlendVar1117_g57823.y ) );
				float3 lerpResult489_g57823 = lerp( temp_output_1180_0_g57823 , weightedAvg1117_g57823 , _DetailSecondaryEnable);
				float temp_output_634_0_g57823 = ( _DetailEnable + ( ( _CATEGORY_DETAILMAPPING + _SPACE_DETAIL + _CATEGORY_DETAILMAPPINGSECONDARY + _SPACE_DETAILSECONDARY ) * 0.0 ) );
				float3 lerpResult409_g57823 = lerp( temp_output_39_0_g57823 , lerpResult489_g57823 , temp_output_634_0_g57823);
				

				float3 BaseColor = lerpResult409_g57823;
				float3 Emission = 0;
				float Alpha = 1;
				float AlphaClipThreshold = 0.5;

				#ifdef _ALPHATEST_ON
					clip(Alpha - AlphaClipThreshold);
				#endif

				MetaInput metaInput = (MetaInput)0;
				metaInput.Albedo = BaseColor;
				metaInput.Emission = Emission;
				#ifdef EDITOR_VISUALIZATION
					metaInput.VizUV = IN.VizUV.xy;
					metaInput.LightCoord = IN.LightCoord;
				#endif

				return UnityMetaFragment(metaInput);
			}
			ENDHLSL
		}

		
		Pass
		{
			
			Name "Universal2D"
			Tags { "LightMode"="Universal2D" }

			Blend One Zero, One Zero
			ZWrite On
			ZTest LEqual
			Offset 0 , 0
			ColorMask RGBA

			HLSLPROGRAM

			#define _NORMAL_DROPOFF_TS 1
			#define ASE_FOG 1
			#define _NORMALMAP 1
			#define ASE_SRP_VERSION 120114
			#ifdef UNITY_COLORSPACE_GAMMA//ASE Color Space Def
			#define unity_ColorSpaceDouble half4(2.0, 2.0, 2.0, 2.0)//ASE Color Space Def
			#else // Linear values//ASE Color Space Def
			#define unity_ColorSpaceDouble half4(4.59479380, 4.59479380, 4.59479380, 2.0)//ASE Color Space Def
			#endif//ASE Color Space Def
			#define ASE_USING_SAMPLING_MACROS 1


			#pragma vertex vert
			#pragma fragment frag

			#define SHADERPASS SHADERPASS_2D

			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Color.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Input.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ShaderGraphFunctions.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/ShaderPass.hlsl"

			#define ASE_NEEDS_FRAG_COLOR
			#define ASE_NEEDS_FRAG_WORLD_POSITION


			struct VertexInput
			{
				float4 positionOS : POSITION;
				float3 normalOS : NORMAL;
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_texcoord1 : TEXCOORD1;
				float4 ase_texcoord2 : TEXCOORD2;
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_color : COLOR;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct VertexOutput
			{
				float4 positionCS : SV_POSITION;
				#if defined(ASE_NEEDS_FRAG_WORLD_POSITION)
					float3 positionWS : TEXCOORD0;
				#endif
				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR) && defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					float4 shadowCoord : TEXCOORD1;
				#endif
				float4 ase_texcoord2 : TEXCOORD2;
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_color : COLOR;
				float4 ase_texcoord4 : TEXCOORD4;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			CBUFFER_START(UnityPerMaterial)
			float4 _DetailMaskMap_TexelSize;
			float4 _DetailSecondaryMaskUVs;
			float4 _DetailMaskUVs;
			float4 _DetailColorMap_TexelSize;
			float4 _DetailUVs;
			float4 _DetailNormalMap_TexelSize;
			float4 _DetailSecondaryNormalMap_TexelSize;
			float4 _MainUVs;
			half4 _DetailColor;
			half4 _BaseColor;
			float4 _DetailSecondaryColorMap_TexelSize;
			half4 _DetailSecondaryColor;
			float4 _DetailSecondaryUVs;
			float4 _DetailSecondaryMaskMap_TexelSize;
			half _DetailSecondaryBlendHeight;
			int _DetailSecondaryBlendVertexColor;
			half _DetailSecondaryBlendSmooth;
			half _DetailSecondaryBlendStrength;
			half _DetailSecondaryBlendSource;
			half _DetailSecondaryMaskIsInverted;
			half _DetailSecondaryMaskEnable;
			half _DetailSecondaryBlendHeightMin;
			half _DetailSecondaryMaskBlendFalloff;
			half _DetailSecondaryMaskBlendStrength;
			half _DetailSecondaryMaskBlendHardness;
			half _DetailSecondaryBlendHeightMax;
			int _Cull;
			float _DetailSecondaryEnable;
			half _SmoothnessFresnelEnable;
			half _SmoothnessFresnelPower;
			half _SmoothnessFresnelScale;
			half _SmoothnessStrength;
			half _SmoothnessSource;
			float _MetallicStrength;
			float _DetailSecondaryBlendEnableAltitudeMask;
			half _DetailSecondaryNormalStrength;
			half _NormalStrength;
			float _SPACE_DETAILSECONDARY;
			float _CATEGORY_DETAILMAPPINGSECONDARY;
			float _SPACE_DETAIL;
			float _CATEGORY_DETAILMAPPING;
			half _DetailEnable;
			half _DetailNormalStrength;
			half _DetailSecondaryMaskUVRotation;
			half _DetailSecondaryUVMode;
			half _DetailSecondaryBrightness;
			float _SPACE_TRANSLUCENCY;
			float _CATEGORY_TRANSMISSION;
			float _CATEGORY_SURFACEINPUTS;
			float _SPACE_SURFACEINPUTS;
			float _SPACE_COLOR;
			float _CATEGORY_COLOR;
			float _UVMode;
			float _BaseColorSaturation;
			half _Brightness;
			half _DetailUVRotation;
			half _DetailUVMode;
			half _DetailBrightness;
			float _DetailSaturation;
			half _DetailMaskUVRotation;
			half _DetailMaskIsInverted;
			half _DetailMaskBlendStrength;
			half _DetailMaskBlendHardness;
			half _OcclusionStrengthAO;
			half _DetailSecondaryUVRotation;
			float _DetailSecondaryBlendWeightLayer2;
			float _DetailSecondaryBlendWeightLayer1;
			float _DetailBlendEnableAltitudeMask;
			half _DetailBlendHeightMax;
			float _DetailSecondarySaturation;
			half _DetailBlendHeightMin;
			int _DetailBlendVertexColor;
			half _DetailBlendSmooth;
			half _DetailBlendStrength;
			half _DetailBlendSource;
			half _DetailMaskEnable;
			half _DetailMaskBlendFalloff;
			half _DetailBlendHeight;
			half _OcclusionSource;
			#ifdef ASE_TRANSMISSION
				float _TransmissionShadow;
			#endif
			#ifdef ASE_TRANSLUCENCY
				float _TransStrength;
				float _TransNormal;
				float _TransScattering;
				float _TransDirect;
				float _TransAmbient;
				float _TransShadow;
			#endif
			#ifdef ASE_TESSELLATION
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			CBUFFER_END

			#ifdef SCENEPICKINGPASS
				float4 _SelectionID;
			#endif

			#ifdef SCENESELECTIONPASS
				int _ObjectId;
				int _PassValue;
			#endif

			TEXTURE2D(_MainTex);
			SAMPLER(sampler_MainTex);
			TEXTURE2D(_DetailColorMap);
			TEXTURE2D(_DetailMaskMap);
			TEXTURE2D(_DetailSecondaryColorMap);
			TEXTURE2D(_DetailSecondaryMaskMap);


			float4 mod289( float4 x )
			{
				return x - floor(x * (1.0 / 289.0)) * 289.0;
			}
			
			float4 perm( float4 x )
			{
				return mod289(((x * 34.0) + 1.0) * x);
			}
			
			float SimpleNoise3D( float3 p )
			{
				 float3 a = floor(p);
				    float3 d = p - a;
				    d = d * d * (3.0 - 2.0 * d);
				 float4 b = a.xxyy + float4(0.0, 1.0, 0.0, 1.0);
				    float4 k1 = perm(b.xyxy);
				 float4 k2 = perm(k1.xyxy + b.zzww);
				    float4 c = k2 + a.zzzz;
				    float4 k3 = perm(c);
				    float4 k4 = perm(c + 1.0);
				    float4 o1 = frac(k3 * (1.0 / 41.0));
				 float4 o2 = frac(k4 * (1.0 / 41.0));
				    float4 o3 = o2 * d.z + o1 * (1.0 - d.z);
				    float2 o4 = o3.yw * d.x + o3.xz * (1.0 - d.x);
				    return o4.y * d.y + o4.x * (1.0 - d.y);
			}
			
			float2 float2switchUVMode80_g58525( float m_switch, float2 m_UV0, float2 m_UV1, float2 m_UV2, float2 m_UV3 )
			{
				if(m_switch ==0)
					return m_UV0;
				else if(m_switch ==1)
					return m_UV1;
				else if(m_switch ==2)
					return m_UV2;
				else if(m_switch ==3)
					return m_UV3;
				else
				return float2(0,0);
			}
			
			float2 float2switchUVMode80_g57837( float m_switch, float2 m_UV0, float2 m_UV1, float2 m_UV2, float2 m_UV3 )
			{
				if(m_switch ==0)
					return m_UV0;
				else if(m_switch ==1)
					return m_UV1;
				else if(m_switch ==2)
					return m_UV2;
				else if(m_switch ==3)
					return m_UV3;
				else
				return float2(0,0);
			}
			
			float2 float2switchUVMode80_g57840( float m_switch, float2 m_UV0, float2 m_UV1, float2 m_UV2, float2 m_UV3 )
			{
				if(m_switch ==0)
					return m_UV0;
				else if(m_switch ==1)
					return m_UV1;
				else if(m_switch ==2)
					return m_UV2;
				else if(m_switch ==3)
					return m_UV3;
				else
				return float2(0,0);
			}
			
			float MaskVCSwitch44_g57853( float m_switch, float m_Off, float m_R, float m_G, float m_B, float m_A )
			{
				if(m_switch ==0)
					return m_Off;
				else if(m_switch ==1)
					return m_R;
				else if(m_switch ==2)
					return m_G;
				else if(m_switch ==3)
					return m_B;
				else if(m_switch ==4)
					return m_A;
				else
				return float(0);
			}
			
			float2 float2switchUVMode80_g57843( float m_switch, float2 m_UV0, float2 m_UV1, float2 m_UV2, float2 m_UV3 )
			{
				if(m_switch ==0)
					return m_UV0;
				else if(m_switch ==1)
					return m_UV1;
				else if(m_switch ==2)
					return m_UV2;
				else if(m_switch ==3)
					return m_UV3;
				else
				return float2(0,0);
			}
			
			float2 float2switchUVMode80_g57846( float m_switch, float2 m_UV0, float2 m_UV1, float2 m_UV2, float2 m_UV3 )
			{
				if(m_switch ==0)
					return m_UV0;
				else if(m_switch ==1)
					return m_UV1;
				else if(m_switch ==2)
					return m_UV2;
				else if(m_switch ==3)
					return m_UV3;
				else
				return float2(0,0);
			}
			
			float MaskVCSwitch44_g57852( float m_switch, float m_Off, float m_R, float m_G, float m_B, float m_A )
			{
				if(m_switch ==0)
					return m_Off;
				else if(m_switch ==1)
					return m_R;
				else if(m_switch ==2)
					return m_G;
				else if(m_switch ==3)
					return m_B;
				else if(m_switch ==4)
					return m_A;
				else
				return float(0);
			}
			

			VertexOutput VertexFunction( VertexInput v  )
			{
				VertexOutput o = (VertexOutput)0;
				UNITY_SETUP_INSTANCE_ID( v );
				UNITY_TRANSFER_INSTANCE_ID( v, o );
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO( o );

				float m_switch80_g58525 = _UVMode;
				float2 m_UV080_g58525 = v.ase_texcoord.xy;
				float2 m_UV180_g58525 = v.ase_texcoord1.xy;
				float2 m_UV280_g58525 = v.ase_texcoord2.xy;
				float2 m_UV380_g58525 = v.ase_texcoord3.xy;
				float2 localfloat2switchUVMode80_g58525 = float2switchUVMode80_g58525( m_switch80_g58525 , m_UV080_g58525 , m_UV180_g58525 , m_UV280_g58525 , m_UV380_g58525 );
				float2 temp_output_1955_0_g57857 = (_MainUVs).xy;
				float2 temp_output_1953_0_g57857 = (_MainUVs).zw;
				float2 Offset235_g58525 = temp_output_1953_0_g57857;
				float2 temp_output_41_0_g58525 = ( ( localfloat2switchUVMode80_g58525 * temp_output_1955_0_g57857 ) + Offset235_g58525 );
				float2 vertexToFrag70_g58525 = temp_output_41_0_g58525;
				o.ase_texcoord2.xy = vertexToFrag70_g58525;
				float temp_output_6_0_g57837 = _DetailUVRotation;
				float temp_output_200_0_g57837 = radians( temp_output_6_0_g57837 );
				float temp_output_13_0_g57837 = cos( temp_output_200_0_g57837 );
				float m_switch80_g57837 = _DetailUVMode;
				float2 m_UV080_g57837 = v.ase_texcoord.xy;
				float2 m_UV180_g57837 = v.ase_texcoord1.xy;
				float2 m_UV280_g57837 = v.ase_texcoord2.xy;
				float2 m_UV380_g57837 = v.ase_texcoord3.xy;
				float2 localfloat2switchUVMode80_g57837 = float2switchUVMode80_g57837( m_switch80_g57837 , m_UV080_g57837 , m_UV180_g57837 , m_UV280_g57837 , m_UV380_g57837 );
				float2 temp_output_9_0_g57837 = float2( 0.5,0.5 );
				float2 break39_g57837 = ( localfloat2switchUVMode80_g57837 - temp_output_9_0_g57837 );
				float temp_output_14_0_g57837 = sin( temp_output_200_0_g57837 );
				float2 appendResult36_g57837 = (float2(( ( temp_output_13_0_g57837 * break39_g57837.x ) + ( temp_output_14_0_g57837 * break39_g57837.y ) ) , ( ( temp_output_13_0_g57837 * break39_g57837.y ) - ( temp_output_14_0_g57837 * break39_g57837.x ) )));
				float2 Offset235_g57837 = (_DetailUVs).zw;
				float2 temp_output_41_0_g57837 = ( ( ( appendResult36_g57837 * ( (_DetailUVs).xy / 1.0 ) ) + temp_output_9_0_g57837 ) + Offset235_g57837 );
				float2 _ConstantAnchor = float2(0.5,0.5);
				float2 vertexToFrag70_g57837 = ( temp_output_41_0_g57837 - ( ( ( (_DetailUVs).xy / 1.0 ) * _ConstantAnchor ) - _ConstantAnchor ) );
				o.ase_texcoord2.zw = vertexToFrag70_g57837;
				float temp_output_6_0_g57840 = _DetailMaskUVRotation;
				float temp_output_200_0_g57840 = radians( temp_output_6_0_g57840 );
				float temp_output_13_0_g57840 = cos( temp_output_200_0_g57840 );
				float DetailUVMode1060_g57823 = _DetailUVMode;
				float m_switch80_g57840 = DetailUVMode1060_g57823;
				float2 m_UV080_g57840 = v.ase_texcoord.xy;
				float2 m_UV180_g57840 = v.ase_texcoord1.xy;
				float2 m_UV280_g57840 = v.ase_texcoord2.xy;
				float2 m_UV380_g57840 = v.ase_texcoord3.xy;
				float2 localfloat2switchUVMode80_g57840 = float2switchUVMode80_g57840( m_switch80_g57840 , m_UV080_g57840 , m_UV180_g57840 , m_UV280_g57840 , m_UV380_g57840 );
				float2 temp_output_9_0_g57840 = float2( 0.5,0.5 );
				float2 break39_g57840 = ( localfloat2switchUVMode80_g57840 - temp_output_9_0_g57840 );
				float temp_output_14_0_g57840 = sin( temp_output_200_0_g57840 );
				float2 appendResult36_g57840 = (float2(( ( temp_output_13_0_g57840 * break39_g57840.x ) + ( temp_output_14_0_g57840 * break39_g57840.y ) ) , ( ( temp_output_13_0_g57840 * break39_g57840.y ) - ( temp_output_14_0_g57840 * break39_g57840.x ) )));
				float2 Offset235_g57840 = (_DetailMaskUVs).zw;
				float2 temp_output_41_0_g57840 = ( ( ( appendResult36_g57840 * ( (_DetailMaskUVs).xy / 1.0 ) ) + temp_output_9_0_g57840 ) + Offset235_g57840 );
				float2 vertexToFrag70_g57840 = ( temp_output_41_0_g57840 - ( ( ( (_DetailMaskUVs).xy / 1.0 ) * _ConstantAnchor ) - _ConstantAnchor ) );
				o.ase_texcoord3.xy = vertexToFrag70_g57840;
				float temp_output_6_0_g57843 = _DetailSecondaryUVRotation;
				float temp_output_200_0_g57843 = radians( temp_output_6_0_g57843 );
				float temp_output_13_0_g57843 = cos( temp_output_200_0_g57843 );
				float m_switch80_g57843 = _DetailSecondaryUVMode;
				float2 m_UV080_g57843 = v.ase_texcoord.xy;
				float2 m_UV180_g57843 = v.ase_texcoord1.xy;
				float2 m_UV280_g57843 = v.ase_texcoord2.xy;
				float2 m_UV380_g57843 = v.ase_texcoord3.xy;
				float2 localfloat2switchUVMode80_g57843 = float2switchUVMode80_g57843( m_switch80_g57843 , m_UV080_g57843 , m_UV180_g57843 , m_UV280_g57843 , m_UV380_g57843 );
				float2 temp_output_9_0_g57843 = float2( 0.5,0.5 );
				float2 break39_g57843 = ( localfloat2switchUVMode80_g57843 - temp_output_9_0_g57843 );
				float temp_output_14_0_g57843 = sin( temp_output_200_0_g57843 );
				float2 appendResult36_g57843 = (float2(( ( temp_output_13_0_g57843 * break39_g57843.x ) + ( temp_output_14_0_g57843 * break39_g57843.y ) ) , ( ( temp_output_13_0_g57843 * break39_g57843.y ) - ( temp_output_14_0_g57843 * break39_g57843.x ) )));
				float2 Offset235_g57843 = (_DetailSecondaryUVs).zw;
				float2 temp_output_41_0_g57843 = ( ( ( appendResult36_g57843 * ( (_DetailSecondaryUVs).xy / 1.0 ) ) + temp_output_9_0_g57843 ) + Offset235_g57843 );
				float2 vertexToFrag70_g57843 = ( temp_output_41_0_g57843 - ( ( ( (_DetailSecondaryUVs).xy / 1.0 ) * _ConstantAnchor ) - _ConstantAnchor ) );
				o.ase_texcoord3.zw = vertexToFrag70_g57843;
				float temp_output_6_0_g57846 = _DetailSecondaryMaskUVRotation;
				float temp_output_200_0_g57846 = radians( temp_output_6_0_g57846 );
				float temp_output_13_0_g57846 = cos( temp_output_200_0_g57846 );
				float DetailSecondaryUVMode1059_g57823 = _DetailSecondaryUVMode;
				float m_switch80_g57846 = DetailSecondaryUVMode1059_g57823;
				float2 m_UV080_g57846 = v.ase_texcoord.xy;
				float2 m_UV180_g57846 = v.ase_texcoord1.xy;
				float2 m_UV280_g57846 = v.ase_texcoord2.xy;
				float2 m_UV380_g57846 = v.ase_texcoord3.xy;
				float2 localfloat2switchUVMode80_g57846 = float2switchUVMode80_g57846( m_switch80_g57846 , m_UV080_g57846 , m_UV180_g57846 , m_UV280_g57846 , m_UV380_g57846 );
				float2 temp_output_9_0_g57846 = float2( 0.5,0.5 );
				float2 break39_g57846 = ( localfloat2switchUVMode80_g57846 - temp_output_9_0_g57846 );
				float temp_output_14_0_g57846 = sin( temp_output_200_0_g57846 );
				float2 appendResult36_g57846 = (float2(( ( temp_output_13_0_g57846 * break39_g57846.x ) + ( temp_output_14_0_g57846 * break39_g57846.y ) ) , ( ( temp_output_13_0_g57846 * break39_g57846.y ) - ( temp_output_14_0_g57846 * break39_g57846.x ) )));
				float2 Offset235_g57846 = (_DetailSecondaryMaskUVs).zw;
				float2 temp_output_41_0_g57846 = ( ( ( appendResult36_g57846 * ( (_DetailSecondaryMaskUVs).xy / 1.0 ) ) + temp_output_9_0_g57846 ) + Offset235_g57846 );
				float2 vertexToFrag70_g57846 = ( temp_output_41_0_g57846 - ( ( ( (_DetailSecondaryMaskUVs).xy / 1.0 ) * _ConstantAnchor ) - _ConstantAnchor ) );
				o.ase_texcoord4.xy = vertexToFrag70_g57846;
				
				o.ase_color = v.ase_color;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord4.zw = 0;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = v.positionOS.xyz;
				#else
					float3 defaultVertexValue = float3(0, 0, 0);
				#endif

				float3 vertexValue = defaultVertexValue;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
					v.positionOS.xyz = vertexValue;
				#else
					v.positionOS.xyz += vertexValue;
				#endif

				v.normalOS = v.normalOS;

				VertexPositionInputs vertexInput = GetVertexPositionInputs( v.positionOS.xyz );

				#if defined(ASE_NEEDS_FRAG_WORLD_POSITION)
					o.positionWS = vertexInput.positionWS;
				#endif

				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR) && defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					o.shadowCoord = GetShadowCoord( vertexInput );
				#endif

				o.positionCS = vertexInput.positionCS;

				return o;
			}

			#if defined(ASE_TESSELLATION)
			struct VertexControl
			{
				float4 vertex : INTERNALTESSPOS;
				float3 normalOS : NORMAL;
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_texcoord1 : TEXCOORD1;
				float4 ase_texcoord2 : TEXCOORD2;
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_color : COLOR;

				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl vert ( VertexInput v )
			{
				VertexControl o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				o.vertex = v.positionOS;
				o.normalOS = v.normalOS;
				o.ase_texcoord = v.ase_texcoord;
				o.ase_texcoord1 = v.ase_texcoord1;
				o.ase_texcoord2 = v.ase_texcoord2;
				o.ase_texcoord3 = v.ase_texcoord3;
				o.ase_color = v.ase_color;
				return o;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> v)
			{
				TessellationFactors o;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), _WorldSpaceCameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams, unity_CameraWorldClipPlanes );
				#endif
				o.edge[0] = tf.x; o.edge[1] = tf.y; o.edge[2] = tf.z; o.inside = tf.w;
				return o;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
				return patch[id];
			}

			[domain("tri")]
			VertexOutput DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				VertexInput o = (VertexInput) 0;
				o.positionOS = patch[0].vertex * bary.x + patch[1].vertex * bary.y + patch[2].vertex * bary.z;
				o.normalOS = patch[0].normalOS * bary.x + patch[1].normalOS * bary.y + patch[2].normalOS * bary.z;
				o.ase_texcoord = patch[0].ase_texcoord * bary.x + patch[1].ase_texcoord * bary.y + patch[2].ase_texcoord * bary.z;
				o.ase_texcoord1 = patch[0].ase_texcoord1 * bary.x + patch[1].ase_texcoord1 * bary.y + patch[2].ase_texcoord1 * bary.z;
				o.ase_texcoord2 = patch[0].ase_texcoord2 * bary.x + patch[1].ase_texcoord2 * bary.y + patch[2].ase_texcoord2 * bary.z;
				o.ase_texcoord3 = patch[0].ase_texcoord3 * bary.x + patch[1].ase_texcoord3 * bary.y + patch[2].ase_texcoord3 * bary.z;
				o.ase_color = patch[0].ase_color * bary.x + patch[1].ase_color * bary.y + patch[2].ase_color * bary.z;
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = o.positionOS.xyz - patch[i].normalOS * (dot(o.positionOS.xyz, patch[i].normalOS) - dot(patch[i].vertex.xyz, patch[i].normalOS));
				float phongStrength = _TessPhongStrength;
				o.positionOS.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * o.positionOS.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], o);
				return VertexFunction(o);
			}
			#else
			VertexOutput vert ( VertexInput v )
			{
				return VertexFunction( v );
			}
			#endif

			half4 frag(VertexOutput IN  ) : SV_TARGET
			{
				UNITY_SETUP_INSTANCE_ID( IN );
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX( IN );

				#if defined(ASE_NEEDS_FRAG_WORLD_POSITION)
					float3 WorldPosition = IN.positionWS;
				#endif

				float4 ShadowCoords = float4( 0, 0, 0, 0 );

				#if defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR)
						ShadowCoords = IN.shadowCoord;
					#elif defined(MAIN_LIGHT_CALCULATE_SHADOWS)
						ShadowCoords = TransformWorldToShadowCoord( WorldPosition );
					#endif
				#endif

				float3 temp_output_1923_0_g57857 = (_BaseColor).rgb;
				float2 vertexToFrag70_g58525 = IN.ase_texcoord2.xy;
				float2 UV213_g57857 = vertexToFrag70_g58525;
				float4 tex2DNode2048_g57857 = SAMPLE_TEXTURE2D( _MainTex, sampler_MainTex, UV213_g57857 );
				float3 ALBEDO_RGBA1381_g57857 = (tex2DNode2048_g57857).rgb;
				float3 temp_output_12_0_g57865 = ALBEDO_RGBA1381_g57857;
				float dotResult28_g57865 = dot( float3(0.2126729,0.7151522,0.072175) , temp_output_12_0_g57865 );
				float3 temp_cast_0 = (dotResult28_g57865).xxx;
				float temp_output_21_0_g57865 = ( 1.0 - _BaseColorSaturation );
				float3 lerpResult31_g57865 = lerp( temp_cast_0 , temp_output_12_0_g57865 , temp_output_21_0_g57865);
				float3 temp_output_3_0_g57857 = ( temp_output_1923_0_g57857 * lerpResult31_g57865 * _Brightness );
				float3 temp_output_39_0_g57823 = temp_output_3_0_g57857;
				float localStochasticTiling159_g57828 = ( 0.0 );
				float2 vertexToFrag70_g57837 = IN.ase_texcoord2.zw;
				float2 temp_output_1334_0_g57823 = vertexToFrag70_g57837;
				float2 UV159_g57828 = temp_output_1334_0_g57823;
				float4 TexelSize159_g57828 = _DetailColorMap_TexelSize;
				float4 Offsets159_g57828 = float4( 0,0,0,0 );
				float2 Weights159_g57828 = float2( 0,0 );
				{
				UV159_g57828 = UV159_g57828 * TexelSize159_g57828.zw - 0.5;
				float2 f = frac( UV159_g57828 );
				UV159_g57828 -= f;
				float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				float4 xs = xn * xn * xn;
				float4 ys = yn * yn * yn;
				float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				float4 c = float4( UV159_g57828.x - 0.5, UV159_g57828.x + 1.5, UV159_g57828.y - 0.5, UV159_g57828.y + 1.5 );
				float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				float w0 = s.x / ( s.x + s.y );
				float w1 = s.z / ( s.z + s.w );
				Offsets159_g57828 = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize159_g57828.xyxy;
				Weights159_g57828 = float2( w0, w1 );
				}
				float4 Input_FetchOffsets70_g57829 = Offsets159_g57828;
				float2 Input_FetchWeights143_g57829 = Weights159_g57828;
				float2 break46_g57829 = Input_FetchWeights143_g57829;
				float4 lerpResult20_g57829 = lerp( SAMPLE_TEXTURE2D( _DetailColorMap, sampler_MainTex, (Input_FetchOffsets70_g57829).yw ) , SAMPLE_TEXTURE2D( _DetailColorMap, sampler_MainTex, (Input_FetchOffsets70_g57829).xw ) , break46_g57829.x);
				float4 lerpResult40_g57829 = lerp( SAMPLE_TEXTURE2D( _DetailColorMap, sampler_MainTex, (Input_FetchOffsets70_g57829).yz ) , SAMPLE_TEXTURE2D( _DetailColorMap, sampler_MainTex, (Input_FetchOffsets70_g57829).xz ) , break46_g57829.x);
				float4 lerpResult22_g57829 = lerp( lerpResult20_g57829 , lerpResult40_g57829 , break46_g57829.y);
				float4 Output_Fetch2D44_g57829 = lerpResult22_g57829;
				float3 temp_output_44_0_g57823 = ( (_DetailColor).rgb * (Output_Fetch2D44_g57829).rgb * _DetailBrightness );
				float3 temp_output_12_0_g57849 = temp_output_44_0_g57823;
				float dotResult28_g57849 = dot( float3(0.2126729,0.7151522,0.072175) , temp_output_12_0_g57849 );
				float3 temp_cast_1 = (dotResult28_g57849).xxx;
				float temp_output_21_0_g57849 = ( 1.0 - _DetailSaturation );
				float3 lerpResult31_g57849 = lerp( temp_cast_1 , temp_output_12_0_g57849 , temp_output_21_0_g57849);
				float3 temp_output_1272_0_g57823 = (unity_ColorSpaceDouble).rgb;
				float3 temp_output_1190_0_g57823 = ( lerpResult31_g57849 * temp_output_1272_0_g57823 );
				float3 BaseColor_RGB40_g57823 = temp_output_39_0_g57823;
				float localStochasticTiling159_g57835 = ( 0.0 );
				float2 vertexToFrag70_g57840 = IN.ase_texcoord3.xy;
				float2 temp_output_1339_0_g57823 = vertexToFrag70_g57840;
				float2 UV159_g57835 = temp_output_1339_0_g57823;
				float4 TexelSize159_g57835 = _DetailMaskMap_TexelSize;
				float4 Offsets159_g57835 = float4( 0,0,0,0 );
				float2 Weights159_g57835 = float2( 0,0 );
				{
				UV159_g57835 = UV159_g57835 * TexelSize159_g57835.zw - 0.5;
				float2 f = frac( UV159_g57835 );
				UV159_g57835 -= f;
				float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				float4 xs = xn * xn * xn;
				float4 ys = yn * yn * yn;
				float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				float4 c = float4( UV159_g57835.x - 0.5, UV159_g57835.x + 1.5, UV159_g57835.y - 0.5, UV159_g57835.y + 1.5 );
				float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				float w0 = s.x / ( s.x + s.y );
				float w1 = s.z / ( s.z + s.w );
				Offsets159_g57835 = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize159_g57835.xyxy;
				Weights159_g57835 = float2( w0, w1 );
				}
				float4 Input_FetchOffsets70_g57836 = Offsets159_g57835;
				float2 Input_FetchWeights143_g57836 = Weights159_g57835;
				float2 break46_g57836 = Input_FetchWeights143_g57836;
				float4 lerpResult20_g57836 = lerp( SAMPLE_TEXTURE2D( _DetailMaskMap, sampler_MainTex, (Input_FetchOffsets70_g57836).yw ) , SAMPLE_TEXTURE2D( _DetailMaskMap, sampler_MainTex, (Input_FetchOffsets70_g57836).xw ) , break46_g57836.x);
				float4 lerpResult40_g57836 = lerp( SAMPLE_TEXTURE2D( _DetailMaskMap, sampler_MainTex, (Input_FetchOffsets70_g57836).yz ) , SAMPLE_TEXTURE2D( _DetailMaskMap, sampler_MainTex, (Input_FetchOffsets70_g57836).xz ) , break46_g57836.x);
				float4 lerpResult22_g57836 = lerp( lerpResult20_g57836 , lerpResult40_g57836 , break46_g57836.y);
				float4 Output_Fetch2D44_g57836 = lerpResult22_g57836;
				float4 break50_g57836 = Output_Fetch2D44_g57836;
				float lerpResult997_g57823 = lerp( ( 1.0 - break50_g57836.r ) , break50_g57836.r , _DetailMaskIsInverted);
				float temp_output_15_0_g57851 = ( 1.0 - lerpResult997_g57823 );
				float temp_output_26_0_g57851 = _DetailMaskBlendStrength;
				float temp_output_24_0_g57851 = _DetailMaskBlendHardness;
				float saferPower2_g57851 = abs( max( saturate( (0.0 + (temp_output_15_0_g57851 - ( 1.0 - temp_output_26_0_g57851 )) * (temp_output_24_0_g57851 - 0.0) / (1.0 - ( 1.0 - temp_output_26_0_g57851 ))) ) , 0.0 ) );
				float temp_output_22_0_g57851 = _DetailMaskBlendFalloff;
				float Blend_DetailMask986_g57823 = saturate( pow( saferPower2_g57851 , ( 1.0 - temp_output_22_0_g57851 ) ) );
				float3 lerpResult1194_g57823 = lerp( BaseColor_RGB40_g57823 , temp_output_1190_0_g57823 , Blend_DetailMask986_g57823);
				float temp_output_1162_0_g57823 = ( 1.0 - Blend_DetailMask986_g57823 );
				float3 appendResult1161_g57823 = (float3(temp_output_1162_0_g57823 , temp_output_1162_0_g57823 , temp_output_1162_0_g57823));
				float3 lerpResult1005_g57823 = lerp( temp_output_1190_0_g57823 , ( ( lerpResult1194_g57823 * Blend_DetailMask986_g57823 ) + appendResult1161_g57823 ) , _DetailMaskEnable);
				float3 BaseColor_Detail255_g57823 = lerpResult1005_g57823;
				float BaseColor_R1273_g57823 = temp_output_39_0_g57823.x;
				float BaseColor_DetailR887_g57823 = Output_Fetch2D44_g57829.r;
				float lerpResult1105_g57823 = lerp( BaseColor_R1273_g57823 , BaseColor_DetailR887_g57823 , _DetailBlendSource);
				float m_switch44_g57853 = (float)_DetailBlendVertexColor;
				float m_Off44_g57853 = 1.0;
				float dotResult58_g57853 = dot( IN.ase_color.g , IN.ase_color.g );
				float dotResult61_g57853 = dot( IN.ase_color.b , IN.ase_color.b );
				float m_R44_g57853 = ( dotResult58_g57853 + dotResult61_g57853 );
				float dotResult57_g57853 = dot( IN.ase_color.r , IN.ase_color.r );
				float m_G44_g57853 = ( dotResult57_g57853 + dotResult58_g57853 );
				float m_B44_g57853 = ( dotResult57_g57853 + dotResult61_g57853 );
				float m_A44_g57853 = IN.ase_color.a;
				float localMaskVCSwitch44_g57853 = MaskVCSwitch44_g57853( m_switch44_g57853 , m_Off44_g57853 , m_R44_g57853 , m_G44_g57853 , m_B44_g57853 , m_A44_g57853 );
				float clampResult54_g57853 = clamp( ( ( localMaskVCSwitch44_g57853 * _DetailBlendHeight ) / _DetailBlendSmooth ) , 0.0 , 1.0 );
				float Blend647_g57823 = saturate( ( ( ( ( lerpResult1105_g57823 - 0.5 ) * ( ( 1.0 - _DetailBlendStrength ) - 0.9 ) ) / ( 1.0 - _DetailBlendSmooth ) ) + ( 1.0 - clampResult54_g57853 ) ) );
				float temp_output_1171_0_g57823 = ( 1.0 - Blend647_g57823 );
				float3 appendResult1174_g57823 = (float3(temp_output_1171_0_g57823 , temp_output_1171_0_g57823 , temp_output_1171_0_g57823));
				float3 temp_output_1173_0_g57823 = ( ( BaseColor_Detail255_g57823 * Blend647_g57823 ) + appendResult1174_g57823 );
				float temp_output_20_0_g57854 = _DetailBlendHeightMin;
				float temp_output_21_0_g57854 = _DetailBlendHeightMax;
				float3 worldToObj1466_g57823 = mul( GetWorldToObjectMatrix(), float4( WorldPosition, 1 ) ).xyz;
				float3 WorldPosition1436_g57823 = worldToObj1466_g57823;
				float smoothstepResult25_g57854 = smoothstep( temp_output_20_0_g57854 , temp_output_21_0_g57854 , WorldPosition1436_g57823.y);
				float DetailBlendHeight1440_g57823 = smoothstepResult25_g57854;
				float3 lerpResult1438_g57823 = lerp( temp_output_1173_0_g57823 , temp_output_39_0_g57823 , DetailBlendHeight1440_g57823);
				float3 lerpResult1457_g57823 = lerp( temp_output_1173_0_g57823 , lerpResult1438_g57823 , _DetailBlendEnableAltitudeMask);
				float3 temp_output_1180_0_g57823 = ( temp_output_39_0_g57823 * lerpResult1457_g57823 );
				float2 appendResult1114_g57823 = (float2(_DetailSecondaryBlendWeightLayer1 , _DetailSecondaryBlendWeightLayer2));
				float localStochasticTiling159_g57824 = ( 0.0 );
				float2 vertexToFrag70_g57843 = IN.ase_texcoord3.zw;
				float2 temp_output_1342_0_g57823 = vertexToFrag70_g57843;
				float2 UV159_g57824 = temp_output_1342_0_g57823;
				float4 TexelSize159_g57824 = _DetailSecondaryColorMap_TexelSize;
				float4 Offsets159_g57824 = float4( 0,0,0,0 );
				float2 Weights159_g57824 = float2( 0,0 );
				{
				UV159_g57824 = UV159_g57824 * TexelSize159_g57824.zw - 0.5;
				float2 f = frac( UV159_g57824 );
				UV159_g57824 -= f;
				float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				float4 xs = xn * xn * xn;
				float4 ys = yn * yn * yn;
				float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				float4 c = float4( UV159_g57824.x - 0.5, UV159_g57824.x + 1.5, UV159_g57824.y - 0.5, UV159_g57824.y + 1.5 );
				float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				float w0 = s.x / ( s.x + s.y );
				float w1 = s.z / ( s.z + s.w );
				Offsets159_g57824 = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize159_g57824.xyxy;
				Weights159_g57824 = float2( w0, w1 );
				}
				float4 Input_FetchOffsets70_g57825 = Offsets159_g57824;
				float2 Input_FetchWeights143_g57825 = Weights159_g57824;
				float2 break46_g57825 = Input_FetchWeights143_g57825;
				float4 lerpResult20_g57825 = lerp( SAMPLE_TEXTURE2D( _DetailSecondaryColorMap, sampler_MainTex, (Input_FetchOffsets70_g57825).yw ) , SAMPLE_TEXTURE2D( _DetailSecondaryColorMap, sampler_MainTex, (Input_FetchOffsets70_g57825).xw ) , break46_g57825.x);
				float4 lerpResult40_g57825 = lerp( SAMPLE_TEXTURE2D( _DetailSecondaryColorMap, sampler_MainTex, (Input_FetchOffsets70_g57825).yz ) , SAMPLE_TEXTURE2D( _DetailSecondaryColorMap, sampler_MainTex, (Input_FetchOffsets70_g57825).xz ) , break46_g57825.x);
				float4 lerpResult22_g57825 = lerp( lerpResult20_g57825 , lerpResult40_g57825 , break46_g57825.y);
				float4 Output_Fetch2D44_g57825 = lerpResult22_g57825;
				float3 temp_output_436_0_g57823 = ( (_DetailSecondaryColor).rgb * (Output_Fetch2D44_g57825).rgb * _DetailSecondaryBrightness );
				float3 temp_output_12_0_g57850 = temp_output_436_0_g57823;
				float dotResult28_g57850 = dot( float3(0.2126729,0.7151522,0.072175) , temp_output_12_0_g57850 );
				float3 temp_cast_3 = (dotResult28_g57850).xxx;
				float temp_output_21_0_g57850 = ( 1.0 - _DetailSecondarySaturation );
				float3 lerpResult31_g57850 = lerp( temp_cast_3 , temp_output_12_0_g57850 , temp_output_21_0_g57850);
				float3 ColorSpaceDouble1261_g57823 = temp_output_1272_0_g57823;
				float3 temp_output_1239_0_g57823 = ( lerpResult31_g57850 * ColorSpaceDouble1261_g57823 );
				float localStochasticTiling159_g57830 = ( 0.0 );
				float2 vertexToFrag70_g57846 = IN.ase_texcoord4.xy;
				float2 temp_output_1347_0_g57823 = vertexToFrag70_g57846;
				float2 UV159_g57830 = temp_output_1347_0_g57823;
				float4 TexelSize159_g57830 = _DetailSecondaryMaskMap_TexelSize;
				float4 Offsets159_g57830 = float4( 0,0,0,0 );
				float2 Weights159_g57830 = float2( 0,0 );
				{
				UV159_g57830 = UV159_g57830 * TexelSize159_g57830.zw - 0.5;
				float2 f = frac( UV159_g57830 );
				UV159_g57830 -= f;
				float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				float4 xs = xn * xn * xn;
				float4 ys = yn * yn * yn;
				float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				float4 c = float4( UV159_g57830.x - 0.5, UV159_g57830.x + 1.5, UV159_g57830.y - 0.5, UV159_g57830.y + 1.5 );
				float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				float w0 = s.x / ( s.x + s.y );
				float w1 = s.z / ( s.z + s.w );
				Offsets159_g57830 = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize159_g57830.xyxy;
				Weights159_g57830 = float2( w0, w1 );
				}
				float4 Input_FetchOffsets70_g57831 = Offsets159_g57830;
				float2 Input_FetchWeights143_g57831 = Weights159_g57830;
				float2 break46_g57831 = Input_FetchWeights143_g57831;
				float4 lerpResult20_g57831 = lerp( SAMPLE_TEXTURE2D( _DetailSecondaryMaskMap, sampler_MainTex, (Input_FetchOffsets70_g57831).yw ) , SAMPLE_TEXTURE2D( _DetailSecondaryMaskMap, sampler_MainTex, (Input_FetchOffsets70_g57831).xw ) , break46_g57831.x);
				float4 lerpResult40_g57831 = lerp( SAMPLE_TEXTURE2D( _DetailSecondaryMaskMap, sampler_MainTex, (Input_FetchOffsets70_g57831).yz ) , SAMPLE_TEXTURE2D( _DetailSecondaryMaskMap, sampler_MainTex, (Input_FetchOffsets70_g57831).xz ) , break46_g57831.x);
				float4 lerpResult22_g57831 = lerp( lerpResult20_g57831 , lerpResult40_g57831 , break46_g57831.y);
				float4 Output_Fetch2D44_g57831 = lerpResult22_g57831;
				float4 break50_g57831 = Output_Fetch2D44_g57831;
				float lerpResult486_g57823 = lerp( ( 1.0 - break50_g57831.r ) , break50_g57831.r , _DetailSecondaryMaskIsInverted);
				float temp_output_15_0_g57832 = ( 1.0 - lerpResult486_g57823 );
				float temp_output_26_0_g57832 = _DetailSecondaryMaskBlendStrength;
				float temp_output_24_0_g57832 = _DetailSecondaryMaskBlendHardness;
				float saferPower2_g57832 = abs( max( saturate( (0.0 + (temp_output_15_0_g57832 - ( 1.0 - temp_output_26_0_g57832 )) * (temp_output_24_0_g57832 - 0.0) / (1.0 - ( 1.0 - temp_output_26_0_g57832 ))) ) , 0.0 ) );
				float temp_output_22_0_g57832 = _DetailSecondaryMaskBlendFalloff;
				float Blend_DetailSecondaryMask755_g57823 = saturate( pow( saferPower2_g57832 , ( 1.0 - temp_output_22_0_g57832 ) ) );
				float3 lerpResult1234_g57823 = lerp( BaseColor_RGB40_g57823 , temp_output_1239_0_g57823 , Blend_DetailSecondaryMask755_g57823);
				float temp_output_1236_0_g57823 = ( 1.0 - Blend_DetailSecondaryMask755_g57823 );
				float3 appendResult1238_g57823 = (float3(temp_output_1236_0_g57823 , temp_output_1236_0_g57823 , temp_output_1236_0_g57823));
				float3 lerpResult1233_g57823 = lerp( temp_output_1239_0_g57823 , ( ( lerpResult1234_g57823 * Blend_DetailSecondaryMask755_g57823 ) + appendResult1238_g57823 ) , _DetailSecondaryMaskEnable);
				float3 BaseColor_DetailSecondary805_g57823 = lerpResult1233_g57823;
				float BaseColor_DetailSecondaryR1102_g57823 = Output_Fetch2D44_g57825.r;
				float lerpResult1103_g57823 = lerp( BaseColor_R1273_g57823 , BaseColor_DetailSecondaryR1102_g57823 , _DetailSecondaryBlendSource);
				float m_switch44_g57852 = (float)_DetailSecondaryBlendVertexColor;
				float m_Off44_g57852 = 1.0;
				float dotResult58_g57852 = dot( IN.ase_color.g , IN.ase_color.g );
				float dotResult61_g57852 = dot( IN.ase_color.b , IN.ase_color.b );
				float m_R44_g57852 = ( dotResult58_g57852 + dotResult61_g57852 );
				float dotResult57_g57852 = dot( IN.ase_color.r , IN.ase_color.r );
				float m_G44_g57852 = ( dotResult57_g57852 + dotResult58_g57852 );
				float m_B44_g57852 = ( dotResult57_g57852 + dotResult61_g57852 );
				float m_A44_g57852 = IN.ase_color.a;
				float localMaskVCSwitch44_g57852 = MaskVCSwitch44_g57852( m_switch44_g57852 , m_Off44_g57852 , m_R44_g57852 , m_G44_g57852 , m_B44_g57852 , m_A44_g57852 );
				float clampResult54_g57852 = clamp( ( ( localMaskVCSwitch44_g57852 * _DetailSecondaryBlendHeight ) / _DetailSecondaryBlendSmooth ) , 0.0 , 1.0 );
				float BlendSecondary786_g57823 = saturate( ( ( ( ( lerpResult1103_g57823 - 0.5 ) * ( ( 1.0 - _DetailSecondaryBlendStrength ) - 0.9 ) ) / ( 1.0 - _DetailSecondaryBlendSmooth ) ) + ( 1.0 - clampResult54_g57852 ) ) );
				float temp_output_1214_0_g57823 = ( 1.0 - BlendSecondary786_g57823 );
				float3 appendResult1216_g57823 = (float3(temp_output_1214_0_g57823 , temp_output_1214_0_g57823 , temp_output_1214_0_g57823));
				float3 temp_output_1217_0_g57823 = ( ( BaseColor_DetailSecondary805_g57823 * BlendSecondary786_g57823 ) + appendResult1216_g57823 );
				float temp_output_20_0_g57856 = _DetailSecondaryBlendHeightMin;
				float temp_output_21_0_g57856 = _DetailSecondaryBlendHeightMax;
				float smoothstepResult25_g57856 = smoothstep( temp_output_20_0_g57856 , temp_output_21_0_g57856 , WorldPosition1436_g57823.y);
				float DetailSecondaryBlendHeight1441_g57823 = smoothstepResult25_g57856;
				float3 lerpResult1455_g57823 = lerp( temp_output_1217_0_g57823 , temp_output_39_0_g57823 , DetailSecondaryBlendHeight1441_g57823);
				float3 lerpResult1459_g57823 = lerp( temp_output_1217_0_g57823 , lerpResult1455_g57823 , _DetailSecondaryBlendEnableAltitudeMask);
				float2 weightedBlendVar1117_g57823 = appendResult1114_g57823;
				float3 weightedAvg1117_g57823 = ( ( weightedBlendVar1117_g57823.x*temp_output_1180_0_g57823 + weightedBlendVar1117_g57823.y*( temp_output_39_0_g57823 * lerpResult1459_g57823 ) )/( weightedBlendVar1117_g57823.x + weightedBlendVar1117_g57823.y ) );
				float3 lerpResult489_g57823 = lerp( temp_output_1180_0_g57823 , weightedAvg1117_g57823 , _DetailSecondaryEnable);
				float temp_output_634_0_g57823 = ( _DetailEnable + ( ( _CATEGORY_DETAILMAPPING + _SPACE_DETAIL + _CATEGORY_DETAILMAPPINGSECONDARY + _SPACE_DETAILSECONDARY ) * 0.0 ) );
				float3 lerpResult409_g57823 = lerp( temp_output_39_0_g57823 , lerpResult489_g57823 , temp_output_634_0_g57823);
				

				float3 BaseColor = lerpResult409_g57823;
				float Alpha = 1;
				float AlphaClipThreshold = 0.5;

				half4 color = half4(BaseColor, Alpha );

				#ifdef _ALPHATEST_ON
					clip(Alpha - AlphaClipThreshold);
				#endif

				return color;
			}
			ENDHLSL
		}

		
		Pass
		{
			
			Name "DepthNormals"
			Tags { "LightMode"="DepthNormals" }

			ZWrite On
			Blend One Zero
			ZTest LEqual
			ZWrite On

			HLSLPROGRAM

			#define _NORMAL_DROPOFF_TS 1
			#pragma multi_compile_instancing
			#pragma multi_compile_fragment _ LOD_FADE_CROSSFADE
			#define ASE_FOG 1
			#define _NORMALMAP 1
			#define ASE_SRP_VERSION 120114
			#define ASE_USING_SAMPLING_MACROS 1


			#pragma vertex vert
			#pragma fragment frag

			#define SHADERPASS SHADERPASS_DEPTHNORMALSONLY

			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Color.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Input.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ShaderGraphFunctions.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/ShaderPass.hlsl"

			#define ASE_NEEDS_FRAG_COLOR


			#if defined(ASE_EARLY_Z_DEPTH_OPTIMIZE) && (SHADER_TARGET >= 45)
				#define ASE_SV_DEPTH SV_DepthLessEqual
				#define ASE_SV_POSITION_QUALIFIERS linear noperspective centroid
			#else
				#define ASE_SV_DEPTH SV_Depth
				#define ASE_SV_POSITION_QUALIFIERS
			#endif

			struct VertexInput
			{
				float4 positionOS : POSITION;
				float3 normalOS : NORMAL;
				float4 tangentOS : TANGENT;
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_texcoord1 : TEXCOORD1;
				float4 ase_texcoord2 : TEXCOORD2;
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_color : COLOR;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct VertexOutput
			{
				ASE_SV_POSITION_QUALIFIERS float4 positionCS : SV_POSITION;
				float4 clipPosV : TEXCOORD0;
				float3 worldNormal : TEXCOORD1;
				float4 worldTangent : TEXCOORD2;
				#if defined(ASE_NEEDS_FRAG_WORLD_POSITION)
					float3 positionWS : TEXCOORD3;
				#endif
				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR) && defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					float4 shadowCoord : TEXCOORD4;
				#endif
				float4 ase_texcoord5 : TEXCOORD5;
				float4 ase_color : COLOR;
				float4 ase_texcoord6 : TEXCOORD6;
				float4 ase_texcoord7 : TEXCOORD7;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			CBUFFER_START(UnityPerMaterial)
			float4 _DetailMaskMap_TexelSize;
			float4 _DetailSecondaryMaskUVs;
			float4 _DetailMaskUVs;
			float4 _DetailColorMap_TexelSize;
			float4 _DetailUVs;
			float4 _DetailNormalMap_TexelSize;
			float4 _DetailSecondaryNormalMap_TexelSize;
			float4 _MainUVs;
			half4 _DetailColor;
			half4 _BaseColor;
			float4 _DetailSecondaryColorMap_TexelSize;
			half4 _DetailSecondaryColor;
			float4 _DetailSecondaryUVs;
			float4 _DetailSecondaryMaskMap_TexelSize;
			half _DetailSecondaryBlendHeight;
			int _DetailSecondaryBlendVertexColor;
			half _DetailSecondaryBlendSmooth;
			half _DetailSecondaryBlendStrength;
			half _DetailSecondaryBlendSource;
			half _DetailSecondaryMaskIsInverted;
			half _DetailSecondaryMaskEnable;
			half _DetailSecondaryBlendHeightMin;
			half _DetailSecondaryMaskBlendFalloff;
			half _DetailSecondaryMaskBlendStrength;
			half _DetailSecondaryMaskBlendHardness;
			half _DetailSecondaryBlendHeightMax;
			int _Cull;
			float _DetailSecondaryEnable;
			half _SmoothnessFresnelEnable;
			half _SmoothnessFresnelPower;
			half _SmoothnessFresnelScale;
			half _SmoothnessStrength;
			half _SmoothnessSource;
			float _MetallicStrength;
			float _DetailSecondaryBlendEnableAltitudeMask;
			half _DetailSecondaryNormalStrength;
			half _NormalStrength;
			float _SPACE_DETAILSECONDARY;
			float _CATEGORY_DETAILMAPPINGSECONDARY;
			float _SPACE_DETAIL;
			float _CATEGORY_DETAILMAPPING;
			half _DetailEnable;
			half _DetailNormalStrength;
			half _DetailSecondaryMaskUVRotation;
			half _DetailSecondaryUVMode;
			half _DetailSecondaryBrightness;
			float _SPACE_TRANSLUCENCY;
			float _CATEGORY_TRANSMISSION;
			float _CATEGORY_SURFACEINPUTS;
			float _SPACE_SURFACEINPUTS;
			float _SPACE_COLOR;
			float _CATEGORY_COLOR;
			float _UVMode;
			float _BaseColorSaturation;
			half _Brightness;
			half _DetailUVRotation;
			half _DetailUVMode;
			half _DetailBrightness;
			float _DetailSaturation;
			half _DetailMaskUVRotation;
			half _DetailMaskIsInverted;
			half _DetailMaskBlendStrength;
			half _DetailMaskBlendHardness;
			half _OcclusionStrengthAO;
			half _DetailSecondaryUVRotation;
			float _DetailSecondaryBlendWeightLayer2;
			float _DetailSecondaryBlendWeightLayer1;
			float _DetailBlendEnableAltitudeMask;
			half _DetailBlendHeightMax;
			float _DetailSecondarySaturation;
			half _DetailBlendHeightMin;
			int _DetailBlendVertexColor;
			half _DetailBlendSmooth;
			half _DetailBlendStrength;
			half _DetailBlendSource;
			half _DetailMaskEnable;
			half _DetailMaskBlendFalloff;
			half _DetailBlendHeight;
			half _OcclusionSource;
			#ifdef ASE_TRANSMISSION
				float _TransmissionShadow;
			#endif
			#ifdef ASE_TRANSLUCENCY
				float _TransStrength;
				float _TransNormal;
				float _TransScattering;
				float _TransDirect;
				float _TransAmbient;
				float _TransShadow;
			#endif
			#ifdef ASE_TESSELLATION
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			CBUFFER_END

			#ifdef SCENEPICKINGPASS
				float4 _SelectionID;
			#endif

			#ifdef SCENESELECTIONPASS
				int _ObjectId;
				int _PassValue;
			#endif

			TEXTURE2D(_BumpMap);
			SAMPLER(sampler_BumpMap);
			TEXTURE2D(_MainTex);
			SAMPLER(sampler_MainTex);
			TEXTURE2D(_DetailColorMap);
			TEXTURE2D(_DetailNormalMap);
			TEXTURE2D(_DetailMaskMap);
			TEXTURE2D(_DetailSecondaryColorMap);
			TEXTURE2D(_DetailSecondaryNormalMap);
			TEXTURE2D(_DetailSecondaryMaskMap);


			float4 mod289( float4 x )
			{
				return x - floor(x * (1.0 / 289.0)) * 289.0;
			}
			
			float4 perm( float4 x )
			{
				return mod289(((x * 34.0) + 1.0) * x);
			}
			
			float SimpleNoise3D( float3 p )
			{
				 float3 a = floor(p);
				    float3 d = p - a;
				    d = d * d * (3.0 - 2.0 * d);
				 float4 b = a.xxyy + float4(0.0, 1.0, 0.0, 1.0);
				    float4 k1 = perm(b.xyxy);
				 float4 k2 = perm(k1.xyxy + b.zzww);
				    float4 c = k2 + a.zzzz;
				    float4 k3 = perm(c);
				    float4 k4 = perm(c + 1.0);
				    float4 o1 = frac(k3 * (1.0 / 41.0));
				 float4 o2 = frac(k4 * (1.0 / 41.0));
				    float4 o3 = o2 * d.z + o1 * (1.0 - d.z);
				    float2 o4 = o3.yw * d.x + o3.xz * (1.0 - d.x);
				    return o4.y * d.y + o4.x * (1.0 - d.y);
			}
			
			float2 float2switchUVMode80_g58525( float m_switch, float2 m_UV0, float2 m_UV1, float2 m_UV2, float2 m_UV3 )
			{
				if(m_switch ==0)
					return m_UV0;
				else if(m_switch ==1)
					return m_UV1;
				else if(m_switch ==2)
					return m_UV2;
				else if(m_switch ==3)
					return m_UV3;
				else
				return float2(0,0);
			}
			
			float2 float2switchUVMode80_g57837( float m_switch, float2 m_UV0, float2 m_UV1, float2 m_UV2, float2 m_UV3 )
			{
				if(m_switch ==0)
					return m_UV0;
				else if(m_switch ==1)
					return m_UV1;
				else if(m_switch ==2)
					return m_UV2;
				else if(m_switch ==3)
					return m_UV3;
				else
				return float2(0,0);
			}
			
			float MaskVCSwitch44_g57853( float m_switch, float m_Off, float m_R, float m_G, float m_B, float m_A )
			{
				if(m_switch ==0)
					return m_Off;
				else if(m_switch ==1)
					return m_R;
				else if(m_switch ==2)
					return m_G;
				else if(m_switch ==3)
					return m_B;
				else if(m_switch ==4)
					return m_A;
				else
				return float(0);
			}
			
			float2 float2switchUVMode80_g57840( float m_switch, float2 m_UV0, float2 m_UV1, float2 m_UV2, float2 m_UV3 )
			{
				if(m_switch ==0)
					return m_UV0;
				else if(m_switch ==1)
					return m_UV1;
				else if(m_switch ==2)
					return m_UV2;
				else if(m_switch ==3)
					return m_UV3;
				else
				return float2(0,0);
			}
			
			float2 float2switchUVMode80_g57843( float m_switch, float2 m_UV0, float2 m_UV1, float2 m_UV2, float2 m_UV3 )
			{
				if(m_switch ==0)
					return m_UV0;
				else if(m_switch ==1)
					return m_UV1;
				else if(m_switch ==2)
					return m_UV2;
				else if(m_switch ==3)
					return m_UV3;
				else
				return float2(0,0);
			}
			
			float MaskVCSwitch44_g57852( float m_switch, float m_Off, float m_R, float m_G, float m_B, float m_A )
			{
				if(m_switch ==0)
					return m_Off;
				else if(m_switch ==1)
					return m_R;
				else if(m_switch ==2)
					return m_G;
				else if(m_switch ==3)
					return m_B;
				else if(m_switch ==4)
					return m_A;
				else
				return float(0);
			}
			
			float2 float2switchUVMode80_g57846( float m_switch, float2 m_UV0, float2 m_UV1, float2 m_UV2, float2 m_UV3 )
			{
				if(m_switch ==0)
					return m_UV0;
				else if(m_switch ==1)
					return m_UV1;
				else if(m_switch ==2)
					return m_UV2;
				else if(m_switch ==3)
					return m_UV3;
				else
				return float2(0,0);
			}
			

			VertexOutput VertexFunction( VertexInput v  )
			{
				VertexOutput o = (VertexOutput)0;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);

				float m_switch80_g58525 = _UVMode;
				float2 m_UV080_g58525 = v.ase_texcoord.xy;
				float2 m_UV180_g58525 = v.ase_texcoord1.xy;
				float2 m_UV280_g58525 = v.ase_texcoord2.xy;
				float2 m_UV380_g58525 = v.ase_texcoord3.xy;
				float2 localfloat2switchUVMode80_g58525 = float2switchUVMode80_g58525( m_switch80_g58525 , m_UV080_g58525 , m_UV180_g58525 , m_UV280_g58525 , m_UV380_g58525 );
				float2 temp_output_1955_0_g57857 = (_MainUVs).xy;
				float2 temp_output_1953_0_g57857 = (_MainUVs).zw;
				float2 Offset235_g58525 = temp_output_1953_0_g57857;
				float2 temp_output_41_0_g58525 = ( ( localfloat2switchUVMode80_g58525 * temp_output_1955_0_g57857 ) + Offset235_g58525 );
				float2 vertexToFrag70_g58525 = temp_output_41_0_g58525;
				o.ase_texcoord5.xy = vertexToFrag70_g58525;
				float temp_output_6_0_g57837 = _DetailUVRotation;
				float temp_output_200_0_g57837 = radians( temp_output_6_0_g57837 );
				float temp_output_13_0_g57837 = cos( temp_output_200_0_g57837 );
				float m_switch80_g57837 = _DetailUVMode;
				float2 m_UV080_g57837 = v.ase_texcoord.xy;
				float2 m_UV180_g57837 = v.ase_texcoord1.xy;
				float2 m_UV280_g57837 = v.ase_texcoord2.xy;
				float2 m_UV380_g57837 = v.ase_texcoord3.xy;
				float2 localfloat2switchUVMode80_g57837 = float2switchUVMode80_g57837( m_switch80_g57837 , m_UV080_g57837 , m_UV180_g57837 , m_UV280_g57837 , m_UV380_g57837 );
				float2 temp_output_9_0_g57837 = float2( 0.5,0.5 );
				float2 break39_g57837 = ( localfloat2switchUVMode80_g57837 - temp_output_9_0_g57837 );
				float temp_output_14_0_g57837 = sin( temp_output_200_0_g57837 );
				float2 appendResult36_g57837 = (float2(( ( temp_output_13_0_g57837 * break39_g57837.x ) + ( temp_output_14_0_g57837 * break39_g57837.y ) ) , ( ( temp_output_13_0_g57837 * break39_g57837.y ) - ( temp_output_14_0_g57837 * break39_g57837.x ) )));
				float2 Offset235_g57837 = (_DetailUVs).zw;
				float2 temp_output_41_0_g57837 = ( ( ( appendResult36_g57837 * ( (_DetailUVs).xy / 1.0 ) ) + temp_output_9_0_g57837 ) + Offset235_g57837 );
				float2 _ConstantAnchor = float2(0.5,0.5);
				float2 vertexToFrag70_g57837 = ( temp_output_41_0_g57837 - ( ( ( (_DetailUVs).xy / 1.0 ) * _ConstantAnchor ) - _ConstantAnchor ) );
				o.ase_texcoord5.zw = vertexToFrag70_g57837;
				float temp_output_6_0_g57840 = _DetailMaskUVRotation;
				float temp_output_200_0_g57840 = radians( temp_output_6_0_g57840 );
				float temp_output_13_0_g57840 = cos( temp_output_200_0_g57840 );
				float DetailUVMode1060_g57823 = _DetailUVMode;
				float m_switch80_g57840 = DetailUVMode1060_g57823;
				float2 m_UV080_g57840 = v.ase_texcoord.xy;
				float2 m_UV180_g57840 = v.ase_texcoord1.xy;
				float2 m_UV280_g57840 = v.ase_texcoord2.xy;
				float2 m_UV380_g57840 = v.ase_texcoord3.xy;
				float2 localfloat2switchUVMode80_g57840 = float2switchUVMode80_g57840( m_switch80_g57840 , m_UV080_g57840 , m_UV180_g57840 , m_UV280_g57840 , m_UV380_g57840 );
				float2 temp_output_9_0_g57840 = float2( 0.5,0.5 );
				float2 break39_g57840 = ( localfloat2switchUVMode80_g57840 - temp_output_9_0_g57840 );
				float temp_output_14_0_g57840 = sin( temp_output_200_0_g57840 );
				float2 appendResult36_g57840 = (float2(( ( temp_output_13_0_g57840 * break39_g57840.x ) + ( temp_output_14_0_g57840 * break39_g57840.y ) ) , ( ( temp_output_13_0_g57840 * break39_g57840.y ) - ( temp_output_14_0_g57840 * break39_g57840.x ) )));
				float2 Offset235_g57840 = (_DetailMaskUVs).zw;
				float2 temp_output_41_0_g57840 = ( ( ( appendResult36_g57840 * ( (_DetailMaskUVs).xy / 1.0 ) ) + temp_output_9_0_g57840 ) + Offset235_g57840 );
				float2 vertexToFrag70_g57840 = ( temp_output_41_0_g57840 - ( ( ( (_DetailMaskUVs).xy / 1.0 ) * _ConstantAnchor ) - _ConstantAnchor ) );
				o.ase_texcoord6.xy = vertexToFrag70_g57840;
				float temp_output_6_0_g57843 = _DetailSecondaryUVRotation;
				float temp_output_200_0_g57843 = radians( temp_output_6_0_g57843 );
				float temp_output_13_0_g57843 = cos( temp_output_200_0_g57843 );
				float m_switch80_g57843 = _DetailSecondaryUVMode;
				float2 m_UV080_g57843 = v.ase_texcoord.xy;
				float2 m_UV180_g57843 = v.ase_texcoord1.xy;
				float2 m_UV280_g57843 = v.ase_texcoord2.xy;
				float2 m_UV380_g57843 = v.ase_texcoord3.xy;
				float2 localfloat2switchUVMode80_g57843 = float2switchUVMode80_g57843( m_switch80_g57843 , m_UV080_g57843 , m_UV180_g57843 , m_UV280_g57843 , m_UV380_g57843 );
				float2 temp_output_9_0_g57843 = float2( 0.5,0.5 );
				float2 break39_g57843 = ( localfloat2switchUVMode80_g57843 - temp_output_9_0_g57843 );
				float temp_output_14_0_g57843 = sin( temp_output_200_0_g57843 );
				float2 appendResult36_g57843 = (float2(( ( temp_output_13_0_g57843 * break39_g57843.x ) + ( temp_output_14_0_g57843 * break39_g57843.y ) ) , ( ( temp_output_13_0_g57843 * break39_g57843.y ) - ( temp_output_14_0_g57843 * break39_g57843.x ) )));
				float2 Offset235_g57843 = (_DetailSecondaryUVs).zw;
				float2 temp_output_41_0_g57843 = ( ( ( appendResult36_g57843 * ( (_DetailSecondaryUVs).xy / 1.0 ) ) + temp_output_9_0_g57843 ) + Offset235_g57843 );
				float2 vertexToFrag70_g57843 = ( temp_output_41_0_g57843 - ( ( ( (_DetailSecondaryUVs).xy / 1.0 ) * _ConstantAnchor ) - _ConstantAnchor ) );
				o.ase_texcoord6.zw = vertexToFrag70_g57843;
				float temp_output_6_0_g57846 = _DetailSecondaryMaskUVRotation;
				float temp_output_200_0_g57846 = radians( temp_output_6_0_g57846 );
				float temp_output_13_0_g57846 = cos( temp_output_200_0_g57846 );
				float DetailSecondaryUVMode1059_g57823 = _DetailSecondaryUVMode;
				float m_switch80_g57846 = DetailSecondaryUVMode1059_g57823;
				float2 m_UV080_g57846 = v.ase_texcoord.xy;
				float2 m_UV180_g57846 = v.ase_texcoord1.xy;
				float2 m_UV280_g57846 = v.ase_texcoord2.xy;
				float2 m_UV380_g57846 = v.ase_texcoord3.xy;
				float2 localfloat2switchUVMode80_g57846 = float2switchUVMode80_g57846( m_switch80_g57846 , m_UV080_g57846 , m_UV180_g57846 , m_UV280_g57846 , m_UV380_g57846 );
				float2 temp_output_9_0_g57846 = float2( 0.5,0.5 );
				float2 break39_g57846 = ( localfloat2switchUVMode80_g57846 - temp_output_9_0_g57846 );
				float temp_output_14_0_g57846 = sin( temp_output_200_0_g57846 );
				float2 appendResult36_g57846 = (float2(( ( temp_output_13_0_g57846 * break39_g57846.x ) + ( temp_output_14_0_g57846 * break39_g57846.y ) ) , ( ( temp_output_13_0_g57846 * break39_g57846.y ) - ( temp_output_14_0_g57846 * break39_g57846.x ) )));
				float2 Offset235_g57846 = (_DetailSecondaryMaskUVs).zw;
				float2 temp_output_41_0_g57846 = ( ( ( appendResult36_g57846 * ( (_DetailSecondaryMaskUVs).xy / 1.0 ) ) + temp_output_9_0_g57846 ) + Offset235_g57846 );
				float2 vertexToFrag70_g57846 = ( temp_output_41_0_g57846 - ( ( ( (_DetailSecondaryMaskUVs).xy / 1.0 ) * _ConstantAnchor ) - _ConstantAnchor ) );
				o.ase_texcoord7.xy = vertexToFrag70_g57846;
				
				o.ase_color = v.ase_color;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord7.zw = 0;
				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = v.positionOS.xyz;
				#else
					float3 defaultVertexValue = float3(0, 0, 0);
				#endif

				float3 vertexValue = defaultVertexValue;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
					v.positionOS.xyz = vertexValue;
				#else
					v.positionOS.xyz += vertexValue;
				#endif

				v.normalOS = v.normalOS;
				v.tangentOS = v.tangentOS;

				VertexPositionInputs vertexInput = GetVertexPositionInputs( v.positionOS.xyz );

				float3 normalWS = TransformObjectToWorldNormal( v.normalOS );
				float4 tangentWS = float4( TransformObjectToWorldDir( v.tangentOS.xyz ), v.tangentOS.w );

				#if defined(ASE_NEEDS_FRAG_WORLD_POSITION)
					o.positionWS = vertexInput.positionWS;
				#endif

				o.worldNormal = normalWS;
				o.worldTangent = tangentWS;

				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR) && defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					o.shadowCoord = GetShadowCoord( vertexInput );
				#endif

				o.positionCS = vertexInput.positionCS;
				o.clipPosV = vertexInput.positionCS;
				return o;
			}

			#if defined(ASE_TESSELLATION)
			struct VertexControl
			{
				float4 vertex : INTERNALTESSPOS;
				float3 normalOS : NORMAL;
				float4 tangentOS : TANGENT;
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_texcoord1 : TEXCOORD1;
				float4 ase_texcoord2 : TEXCOORD2;
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_color : COLOR;

				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl vert ( VertexInput v )
			{
				VertexControl o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				o.vertex = v.positionOS;
				o.normalOS = v.normalOS;
				o.tangentOS = v.tangentOS;
				o.ase_texcoord = v.ase_texcoord;
				o.ase_texcoord1 = v.ase_texcoord1;
				o.ase_texcoord2 = v.ase_texcoord2;
				o.ase_texcoord3 = v.ase_texcoord3;
				o.ase_color = v.ase_color;
				return o;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> v)
			{
				TessellationFactors o;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), _WorldSpaceCameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams, unity_CameraWorldClipPlanes );
				#endif
				o.edge[0] = tf.x; o.edge[1] = tf.y; o.edge[2] = tf.z; o.inside = tf.w;
				return o;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
				return patch[id];
			}

			[domain("tri")]
			VertexOutput DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				VertexInput o = (VertexInput) 0;
				o.positionOS = patch[0].vertex * bary.x + patch[1].vertex * bary.y + patch[2].vertex * bary.z;
				o.normalOS = patch[0].normalOS * bary.x + patch[1].normalOS * bary.y + patch[2].normalOS * bary.z;
				o.tangentOS = patch[0].tangentOS * bary.x + patch[1].tangentOS * bary.y + patch[2].tangentOS * bary.z;
				o.ase_texcoord = patch[0].ase_texcoord * bary.x + patch[1].ase_texcoord * bary.y + patch[2].ase_texcoord * bary.z;
				o.ase_texcoord1 = patch[0].ase_texcoord1 * bary.x + patch[1].ase_texcoord1 * bary.y + patch[2].ase_texcoord1 * bary.z;
				o.ase_texcoord2 = patch[0].ase_texcoord2 * bary.x + patch[1].ase_texcoord2 * bary.y + patch[2].ase_texcoord2 * bary.z;
				o.ase_texcoord3 = patch[0].ase_texcoord3 * bary.x + patch[1].ase_texcoord3 * bary.y + patch[2].ase_texcoord3 * bary.z;
				o.ase_color = patch[0].ase_color * bary.x + patch[1].ase_color * bary.y + patch[2].ase_color * bary.z;
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = o.positionOS.xyz - patch[i].normalOS * (dot(o.positionOS.xyz, patch[i].normalOS) - dot(patch[i].vertex.xyz, patch[i].normalOS));
				float phongStrength = _TessPhongStrength;
				o.positionOS.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * o.positionOS.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], o);
				return VertexFunction(o);
			}
			#else
			VertexOutput vert ( VertexInput v )
			{
				return VertexFunction( v );
			}
			#endif

			half4 frag(	VertexOutput IN
						#ifdef ASE_DEPTH_WRITE_ON
						,out float outputDepth : ASE_SV_DEPTH
						#endif
						 ) : SV_TARGET
			{
				UNITY_SETUP_INSTANCE_ID(IN);
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX( IN );

				#if defined(ASE_NEEDS_FRAG_WORLD_POSITION)
					float3 WorldPosition = IN.positionWS;
				#endif

				float4 ShadowCoords = float4( 0, 0, 0, 0 );
				float3 WorldNormal = IN.worldNormal;
				float4 WorldTangent = IN.worldTangent;

				float4 ClipPos = IN.clipPosV;
				float4 ScreenPos = ComputeScreenPos( IN.clipPosV );

				#if defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR)
						ShadowCoords = IN.shadowCoord;
					#elif defined(MAIN_LIGHT_CALCULATE_SHADOWS)
						ShadowCoords = TransformWorldToShadowCoord( WorldPosition );
					#endif
				#endif

				float2 vertexToFrag70_g58525 = IN.ase_texcoord5.xy;
				float2 UV213_g57857 = vertexToFrag70_g58525;
				float4 NORMAL_RGBA1382_g57857 = SAMPLE_TEXTURE2D( _BumpMap, sampler_BumpMap, UV213_g57857 );
				float3 unpack1891_g57857 = UnpackNormalScale( NORMAL_RGBA1382_g57857, _NormalStrength );
				unpack1891_g57857.z = lerp( 1, unpack1891_g57857.z, saturate(_NormalStrength) );
				float3 temp_output_38_0_g57823 = unpack1891_g57857;
				float3 temp_output_1923_0_g57857 = (_BaseColor).rgb;
				float4 tex2DNode2048_g57857 = SAMPLE_TEXTURE2D( _MainTex, sampler_MainTex, UV213_g57857 );
				float3 ALBEDO_RGBA1381_g57857 = (tex2DNode2048_g57857).rgb;
				float3 temp_output_12_0_g57865 = ALBEDO_RGBA1381_g57857;
				float dotResult28_g57865 = dot( float3(0.2126729,0.7151522,0.072175) , temp_output_12_0_g57865 );
				float3 temp_cast_1 = (dotResult28_g57865).xxx;
				float temp_output_21_0_g57865 = ( 1.0 - _BaseColorSaturation );
				float3 lerpResult31_g57865 = lerp( temp_cast_1 , temp_output_12_0_g57865 , temp_output_21_0_g57865);
				float3 temp_output_3_0_g57857 = ( temp_output_1923_0_g57857 * lerpResult31_g57865 * _Brightness );
				float3 temp_output_39_0_g57823 = temp_output_3_0_g57857;
				float BaseColor_R1273_g57823 = temp_output_39_0_g57823.x;
				float localStochasticTiling159_g57828 = ( 0.0 );
				float2 vertexToFrag70_g57837 = IN.ase_texcoord5.zw;
				float2 temp_output_1334_0_g57823 = vertexToFrag70_g57837;
				float2 UV159_g57828 = temp_output_1334_0_g57823;
				float4 TexelSize159_g57828 = _DetailColorMap_TexelSize;
				float4 Offsets159_g57828 = float4( 0,0,0,0 );
				float2 Weights159_g57828 = float2( 0,0 );
				{
				UV159_g57828 = UV159_g57828 * TexelSize159_g57828.zw - 0.5;
				float2 f = frac( UV159_g57828 );
				UV159_g57828 -= f;
				float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				float4 xs = xn * xn * xn;
				float4 ys = yn * yn * yn;
				float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				float4 c = float4( UV159_g57828.x - 0.5, UV159_g57828.x + 1.5, UV159_g57828.y - 0.5, UV159_g57828.y + 1.5 );
				float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				float w0 = s.x / ( s.x + s.y );
				float w1 = s.z / ( s.z + s.w );
				Offsets159_g57828 = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize159_g57828.xyxy;
				Weights159_g57828 = float2( w0, w1 );
				}
				float4 Input_FetchOffsets70_g57829 = Offsets159_g57828;
				float2 Input_FetchWeights143_g57829 = Weights159_g57828;
				float2 break46_g57829 = Input_FetchWeights143_g57829;
				float4 lerpResult20_g57829 = lerp( SAMPLE_TEXTURE2D( _DetailColorMap, sampler_MainTex, (Input_FetchOffsets70_g57829).yw ) , SAMPLE_TEXTURE2D( _DetailColorMap, sampler_MainTex, (Input_FetchOffsets70_g57829).xw ) , break46_g57829.x);
				float4 lerpResult40_g57829 = lerp( SAMPLE_TEXTURE2D( _DetailColorMap, sampler_MainTex, (Input_FetchOffsets70_g57829).yz ) , SAMPLE_TEXTURE2D( _DetailColorMap, sampler_MainTex, (Input_FetchOffsets70_g57829).xz ) , break46_g57829.x);
				float4 lerpResult22_g57829 = lerp( lerpResult20_g57829 , lerpResult40_g57829 , break46_g57829.y);
				float4 Output_Fetch2D44_g57829 = lerpResult22_g57829;
				float BaseColor_DetailR887_g57823 = Output_Fetch2D44_g57829.r;
				float lerpResult1105_g57823 = lerp( BaseColor_R1273_g57823 , BaseColor_DetailR887_g57823 , _DetailBlendSource);
				float m_switch44_g57853 = (float)_DetailBlendVertexColor;
				float m_Off44_g57853 = 1.0;
				float dotResult58_g57853 = dot( IN.ase_color.g , IN.ase_color.g );
				float dotResult61_g57853 = dot( IN.ase_color.b , IN.ase_color.b );
				float m_R44_g57853 = ( dotResult58_g57853 + dotResult61_g57853 );
				float dotResult57_g57853 = dot( IN.ase_color.r , IN.ase_color.r );
				float m_G44_g57853 = ( dotResult57_g57853 + dotResult58_g57853 );
				float m_B44_g57853 = ( dotResult57_g57853 + dotResult61_g57853 );
				float m_A44_g57853 = IN.ase_color.a;
				float localMaskVCSwitch44_g57853 = MaskVCSwitch44_g57853( m_switch44_g57853 , m_Off44_g57853 , m_R44_g57853 , m_G44_g57853 , m_B44_g57853 , m_A44_g57853 );
				float clampResult54_g57853 = clamp( ( ( localMaskVCSwitch44_g57853 * _DetailBlendHeight ) / _DetailBlendSmooth ) , 0.0 , 1.0 );
				float Blend647_g57823 = saturate( ( ( ( ( lerpResult1105_g57823 - 0.5 ) * ( ( 1.0 - _DetailBlendStrength ) - 0.9 ) ) / ( 1.0 - _DetailBlendSmooth ) ) + ( 1.0 - clampResult54_g57853 ) ) );
				float localStochasticTiling159_g57834 = ( 0.0 );
				float2 UV159_g57834 = temp_output_1334_0_g57823;
				float4 TexelSize159_g57834 = _DetailNormalMap_TexelSize;
				float4 Offsets159_g57834 = float4( 0,0,0,0 );
				float2 Weights159_g57834 = float2( 0,0 );
				{
				UV159_g57834 = UV159_g57834 * TexelSize159_g57834.zw - 0.5;
				float2 f = frac( UV159_g57834 );
				UV159_g57834 -= f;
				float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				float4 xs = xn * xn * xn;
				float4 ys = yn * yn * yn;
				float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				float4 c = float4( UV159_g57834.x - 0.5, UV159_g57834.x + 1.5, UV159_g57834.y - 0.5, UV159_g57834.y + 1.5 );
				float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				float w0 = s.x / ( s.x + s.y );
				float w1 = s.z / ( s.z + s.w );
				Offsets159_g57834 = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize159_g57834.xyxy;
				Weights159_g57834 = float2( w0, w1 );
				}
				float4 Input_FetchOffsets70_g57833 = Offsets159_g57834;
				float2 Input_FetchWeights143_g57833 = Weights159_g57834;
				float2 break46_g57833 = Input_FetchWeights143_g57833;
				float4 lerpResult20_g57833 = lerp( SAMPLE_TEXTURE2D( _DetailNormalMap, sampler_BumpMap, (Input_FetchOffsets70_g57833).yw ) , SAMPLE_TEXTURE2D( _DetailNormalMap, sampler_BumpMap, (Input_FetchOffsets70_g57833).xw ) , break46_g57833.x);
				float4 lerpResult40_g57833 = lerp( SAMPLE_TEXTURE2D( _DetailNormalMap, sampler_BumpMap, (Input_FetchOffsets70_g57833).yz ) , SAMPLE_TEXTURE2D( _DetailNormalMap, sampler_BumpMap, (Input_FetchOffsets70_g57833).xz ) , break46_g57833.x);
				float4 lerpResult22_g57833 = lerp( lerpResult20_g57833 , lerpResult40_g57833 , break46_g57833.y);
				float4 Output_Fetch2D44_g57833 = lerpResult22_g57833;
				float3 unpack499_g57823 = UnpackNormalScale( Output_Fetch2D44_g57833, _DetailNormalStrength );
				unpack499_g57823.z = lerp( 1, unpack499_g57823.z, saturate(_DetailNormalStrength) );
				float3 Normal_In880_g57823 = temp_output_38_0_g57823;
				float localStochasticTiling159_g57835 = ( 0.0 );
				float2 vertexToFrag70_g57840 = IN.ase_texcoord6.xy;
				float2 temp_output_1339_0_g57823 = vertexToFrag70_g57840;
				float2 UV159_g57835 = temp_output_1339_0_g57823;
				float4 TexelSize159_g57835 = _DetailMaskMap_TexelSize;
				float4 Offsets159_g57835 = float4( 0,0,0,0 );
				float2 Weights159_g57835 = float2( 0,0 );
				{
				UV159_g57835 = UV159_g57835 * TexelSize159_g57835.zw - 0.5;
				float2 f = frac( UV159_g57835 );
				UV159_g57835 -= f;
				float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				float4 xs = xn * xn * xn;
				float4 ys = yn * yn * yn;
				float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				float4 c = float4( UV159_g57835.x - 0.5, UV159_g57835.x + 1.5, UV159_g57835.y - 0.5, UV159_g57835.y + 1.5 );
				float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				float w0 = s.x / ( s.x + s.y );
				float w1 = s.z / ( s.z + s.w );
				Offsets159_g57835 = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize159_g57835.xyxy;
				Weights159_g57835 = float2( w0, w1 );
				}
				float4 Input_FetchOffsets70_g57836 = Offsets159_g57835;
				float2 Input_FetchWeights143_g57836 = Weights159_g57835;
				float2 break46_g57836 = Input_FetchWeights143_g57836;
				float4 lerpResult20_g57836 = lerp( SAMPLE_TEXTURE2D( _DetailMaskMap, sampler_MainTex, (Input_FetchOffsets70_g57836).yw ) , SAMPLE_TEXTURE2D( _DetailMaskMap, sampler_MainTex, (Input_FetchOffsets70_g57836).xw ) , break46_g57836.x);
				float4 lerpResult40_g57836 = lerp( SAMPLE_TEXTURE2D( _DetailMaskMap, sampler_MainTex, (Input_FetchOffsets70_g57836).yz ) , SAMPLE_TEXTURE2D( _DetailMaskMap, sampler_MainTex, (Input_FetchOffsets70_g57836).xz ) , break46_g57836.x);
				float4 lerpResult22_g57836 = lerp( lerpResult20_g57836 , lerpResult40_g57836 , break46_g57836.y);
				float4 Output_Fetch2D44_g57836 = lerpResult22_g57836;
				float4 break50_g57836 = Output_Fetch2D44_g57836;
				float lerpResult997_g57823 = lerp( ( 1.0 - break50_g57836.r ) , break50_g57836.r , _DetailMaskIsInverted);
				float temp_output_15_0_g57851 = ( 1.0 - lerpResult997_g57823 );
				float temp_output_26_0_g57851 = _DetailMaskBlendStrength;
				float temp_output_24_0_g57851 = _DetailMaskBlendHardness;
				float saferPower2_g57851 = abs( max( saturate( (0.0 + (temp_output_15_0_g57851 - ( 1.0 - temp_output_26_0_g57851 )) * (temp_output_24_0_g57851 - 0.0) / (1.0 - ( 1.0 - temp_output_26_0_g57851 ))) ) , 0.0 ) );
				float temp_output_22_0_g57851 = _DetailMaskBlendFalloff;
				float Blend_DetailMask986_g57823 = saturate( pow( saferPower2_g57851 , ( 1.0 - temp_output_22_0_g57851 ) ) );
				float3 lerpResult1286_g57823 = lerp( Normal_In880_g57823 , unpack499_g57823 , Blend_DetailMask986_g57823);
				float3 lerpResult1011_g57823 = lerp( unpack499_g57823 , lerpResult1286_g57823 , _DetailMaskEnable);
				float3 Normal_Detail199_g57823 = lerpResult1011_g57823;
				float layeredBlendVar1278_g57823 = Blend647_g57823;
				float3 layeredBlend1278_g57823 = ( lerp( temp_output_38_0_g57823,Normal_Detail199_g57823 , layeredBlendVar1278_g57823 ) );
				float2 appendResult1114_g57823 = (float2(_DetailSecondaryBlendWeightLayer1 , _DetailSecondaryBlendWeightLayer2));
				float localStochasticTiling159_g57824 = ( 0.0 );
				float2 vertexToFrag70_g57843 = IN.ase_texcoord6.zw;
				float2 temp_output_1342_0_g57823 = vertexToFrag70_g57843;
				float2 UV159_g57824 = temp_output_1342_0_g57823;
				float4 TexelSize159_g57824 = _DetailSecondaryColorMap_TexelSize;
				float4 Offsets159_g57824 = float4( 0,0,0,0 );
				float2 Weights159_g57824 = float2( 0,0 );
				{
				UV159_g57824 = UV159_g57824 * TexelSize159_g57824.zw - 0.5;
				float2 f = frac( UV159_g57824 );
				UV159_g57824 -= f;
				float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				float4 xs = xn * xn * xn;
				float4 ys = yn * yn * yn;
				float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				float4 c = float4( UV159_g57824.x - 0.5, UV159_g57824.x + 1.5, UV159_g57824.y - 0.5, UV159_g57824.y + 1.5 );
				float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				float w0 = s.x / ( s.x + s.y );
				float w1 = s.z / ( s.z + s.w );
				Offsets159_g57824 = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize159_g57824.xyxy;
				Weights159_g57824 = float2( w0, w1 );
				}
				float4 Input_FetchOffsets70_g57825 = Offsets159_g57824;
				float2 Input_FetchWeights143_g57825 = Weights159_g57824;
				float2 break46_g57825 = Input_FetchWeights143_g57825;
				float4 lerpResult20_g57825 = lerp( SAMPLE_TEXTURE2D( _DetailSecondaryColorMap, sampler_MainTex, (Input_FetchOffsets70_g57825).yw ) , SAMPLE_TEXTURE2D( _DetailSecondaryColorMap, sampler_MainTex, (Input_FetchOffsets70_g57825).xw ) , break46_g57825.x);
				float4 lerpResult40_g57825 = lerp( SAMPLE_TEXTURE2D( _DetailSecondaryColorMap, sampler_MainTex, (Input_FetchOffsets70_g57825).yz ) , SAMPLE_TEXTURE2D( _DetailSecondaryColorMap, sampler_MainTex, (Input_FetchOffsets70_g57825).xz ) , break46_g57825.x);
				float4 lerpResult22_g57825 = lerp( lerpResult20_g57825 , lerpResult40_g57825 , break46_g57825.y);
				float4 Output_Fetch2D44_g57825 = lerpResult22_g57825;
				float BaseColor_DetailSecondaryR1102_g57823 = Output_Fetch2D44_g57825.r;
				float lerpResult1103_g57823 = lerp( BaseColor_R1273_g57823 , BaseColor_DetailSecondaryR1102_g57823 , _DetailSecondaryBlendSource);
				float m_switch44_g57852 = (float)_DetailSecondaryBlendVertexColor;
				float m_Off44_g57852 = 1.0;
				float dotResult58_g57852 = dot( IN.ase_color.g , IN.ase_color.g );
				float dotResult61_g57852 = dot( IN.ase_color.b , IN.ase_color.b );
				float m_R44_g57852 = ( dotResult58_g57852 + dotResult61_g57852 );
				float dotResult57_g57852 = dot( IN.ase_color.r , IN.ase_color.r );
				float m_G44_g57852 = ( dotResult57_g57852 + dotResult58_g57852 );
				float m_B44_g57852 = ( dotResult57_g57852 + dotResult61_g57852 );
				float m_A44_g57852 = IN.ase_color.a;
				float localMaskVCSwitch44_g57852 = MaskVCSwitch44_g57852( m_switch44_g57852 , m_Off44_g57852 , m_R44_g57852 , m_G44_g57852 , m_B44_g57852 , m_A44_g57852 );
				float clampResult54_g57852 = clamp( ( ( localMaskVCSwitch44_g57852 * _DetailSecondaryBlendHeight ) / _DetailSecondaryBlendSmooth ) , 0.0 , 1.0 );
				float BlendSecondary786_g57823 = saturate( ( ( ( ( lerpResult1103_g57823 - 0.5 ) * ( ( 1.0 - _DetailSecondaryBlendStrength ) - 0.9 ) ) / ( 1.0 - _DetailSecondaryBlendSmooth ) ) + ( 1.0 - clampResult54_g57852 ) ) );
				float localStochasticTiling159_g57826 = ( 0.0 );
				float2 UV159_g57826 = temp_output_1342_0_g57823;
				float4 TexelSize159_g57826 = _DetailSecondaryNormalMap_TexelSize;
				float4 Offsets159_g57826 = float4( 0,0,0,0 );
				float2 Weights159_g57826 = float2( 0,0 );
				{
				UV159_g57826 = UV159_g57826 * TexelSize159_g57826.zw - 0.5;
				float2 f = frac( UV159_g57826 );
				UV159_g57826 -= f;
				float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				float4 xs = xn * xn * xn;
				float4 ys = yn * yn * yn;
				float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				float4 c = float4( UV159_g57826.x - 0.5, UV159_g57826.x + 1.5, UV159_g57826.y - 0.5, UV159_g57826.y + 1.5 );
				float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				float w0 = s.x / ( s.x + s.y );
				float w1 = s.z / ( s.z + s.w );
				Offsets159_g57826 = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize159_g57826.xyxy;
				Weights159_g57826 = float2( w0, w1 );
				}
				float4 Input_FetchOffsets70_g57827 = Offsets159_g57826;
				float2 Input_FetchWeights143_g57827 = Weights159_g57826;
				float2 break46_g57827 = Input_FetchWeights143_g57827;
				float4 lerpResult20_g57827 = lerp( SAMPLE_TEXTURE2D( _DetailSecondaryNormalMap, sampler_BumpMap, (Input_FetchOffsets70_g57827).yw ) , SAMPLE_TEXTURE2D( _DetailSecondaryNormalMap, sampler_BumpMap, (Input_FetchOffsets70_g57827).xw ) , break46_g57827.x);
				float4 lerpResult40_g57827 = lerp( SAMPLE_TEXTURE2D( _DetailSecondaryNormalMap, sampler_BumpMap, (Input_FetchOffsets70_g57827).yz ) , SAMPLE_TEXTURE2D( _DetailSecondaryNormalMap, sampler_BumpMap, (Input_FetchOffsets70_g57827).xz ) , break46_g57827.x);
				float4 lerpResult22_g57827 = lerp( lerpResult20_g57827 , lerpResult40_g57827 , break46_g57827.y);
				float4 Output_Fetch2D44_g57827 = lerpResult22_g57827;
				float3 unpack500_g57823 = UnpackNormalScale( Output_Fetch2D44_g57827, _DetailSecondaryNormalStrength );
				unpack500_g57823.z = lerp( 1, unpack500_g57823.z, saturate(_DetailSecondaryNormalStrength) );
				float localStochasticTiling159_g57830 = ( 0.0 );
				float2 vertexToFrag70_g57846 = IN.ase_texcoord7.xy;
				float2 temp_output_1347_0_g57823 = vertexToFrag70_g57846;
				float2 UV159_g57830 = temp_output_1347_0_g57823;
				float4 TexelSize159_g57830 = _DetailSecondaryMaskMap_TexelSize;
				float4 Offsets159_g57830 = float4( 0,0,0,0 );
				float2 Weights159_g57830 = float2( 0,0 );
				{
				UV159_g57830 = UV159_g57830 * TexelSize159_g57830.zw - 0.5;
				float2 f = frac( UV159_g57830 );
				UV159_g57830 -= f;
				float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				float4 xs = xn * xn * xn;
				float4 ys = yn * yn * yn;
				float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				float4 c = float4( UV159_g57830.x - 0.5, UV159_g57830.x + 1.5, UV159_g57830.y - 0.5, UV159_g57830.y + 1.5 );
				float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				float w0 = s.x / ( s.x + s.y );
				float w1 = s.z / ( s.z + s.w );
				Offsets159_g57830 = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize159_g57830.xyxy;
				Weights159_g57830 = float2( w0, w1 );
				}
				float4 Input_FetchOffsets70_g57831 = Offsets159_g57830;
				float2 Input_FetchWeights143_g57831 = Weights159_g57830;
				float2 break46_g57831 = Input_FetchWeights143_g57831;
				float4 lerpResult20_g57831 = lerp( SAMPLE_TEXTURE2D( _DetailSecondaryMaskMap, sampler_MainTex, (Input_FetchOffsets70_g57831).yw ) , SAMPLE_TEXTURE2D( _DetailSecondaryMaskMap, sampler_MainTex, (Input_FetchOffsets70_g57831).xw ) , break46_g57831.x);
				float4 lerpResult40_g57831 = lerp( SAMPLE_TEXTURE2D( _DetailSecondaryMaskMap, sampler_MainTex, (Input_FetchOffsets70_g57831).yz ) , SAMPLE_TEXTURE2D( _DetailSecondaryMaskMap, sampler_MainTex, (Input_FetchOffsets70_g57831).xz ) , break46_g57831.x);
				float4 lerpResult22_g57831 = lerp( lerpResult20_g57831 , lerpResult40_g57831 , break46_g57831.y);
				float4 Output_Fetch2D44_g57831 = lerpResult22_g57831;
				float4 break50_g57831 = Output_Fetch2D44_g57831;
				float lerpResult486_g57823 = lerp( ( 1.0 - break50_g57831.r ) , break50_g57831.r , _DetailSecondaryMaskIsInverted);
				float temp_output_15_0_g57832 = ( 1.0 - lerpResult486_g57823 );
				float temp_output_26_0_g57832 = _DetailSecondaryMaskBlendStrength;
				float temp_output_24_0_g57832 = _DetailSecondaryMaskBlendHardness;
				float saferPower2_g57832 = abs( max( saturate( (0.0 + (temp_output_15_0_g57832 - ( 1.0 - temp_output_26_0_g57832 )) * (temp_output_24_0_g57832 - 0.0) / (1.0 - ( 1.0 - temp_output_26_0_g57832 ))) ) , 0.0 ) );
				float temp_output_22_0_g57832 = _DetailSecondaryMaskBlendFalloff;
				float Blend_DetailSecondaryMask755_g57823 = saturate( pow( saferPower2_g57832 , ( 1.0 - temp_output_22_0_g57832 ) ) );
				float3 lerpResult1285_g57823 = lerp( Normal_In880_g57823 , unpack500_g57823 , Blend_DetailSecondaryMask755_g57823);
				float3 lerpResult1241_g57823 = lerp( unpack500_g57823 , lerpResult1285_g57823 , _DetailSecondaryMaskEnable);
				float3 Normal_DetailSecondary806_g57823 = lerpResult1241_g57823;
				float layeredBlendVar1280_g57823 = BlendSecondary786_g57823;
				float3 layeredBlend1280_g57823 = ( lerp( temp_output_38_0_g57823,Normal_DetailSecondary806_g57823 , layeredBlendVar1280_g57823 ) );
				float2 weightedBlendVar1118_g57823 = appendResult1114_g57823;
				float3 weightedAvg1118_g57823 = ( ( weightedBlendVar1118_g57823.x*layeredBlend1278_g57823 + weightedBlendVar1118_g57823.y*layeredBlend1280_g57823 )/( weightedBlendVar1118_g57823.x + weightedBlendVar1118_g57823.y ) );
				float3 lerpResult488_g57823 = lerp( layeredBlend1278_g57823 , weightedAvg1118_g57823 , _DetailSecondaryEnable);
				float3 break817_g57823 = lerpResult488_g57823;
				float3 appendResult820_g57823 = (float3(break817_g57823.x , break817_g57823.y , ( break817_g57823.z + 0.001 )));
				float temp_output_634_0_g57823 = ( _DetailEnable + ( ( _CATEGORY_DETAILMAPPING + _SPACE_DETAIL + _CATEGORY_DETAILMAPPINGSECONDARY + _SPACE_DETAILSECONDARY ) * 0.0 ) );
				float3 lerpResult410_g57823 = lerp( temp_output_38_0_g57823 , appendResult820_g57823 , temp_output_634_0_g57823);
				

				float3 Normal = lerpResult410_g57823;
				float Alpha = 1;
				float AlphaClipThreshold = 0.5;

				#ifdef ASE_DEPTH_WRITE_ON
					float DepthValue = IN.positionCS.z;
				#endif

				#ifdef _ALPHATEST_ON
					clip(Alpha - AlphaClipThreshold);
				#endif

				#ifdef LOD_FADE_CROSSFADE
					LODDitheringTransition( IN.positionCS.xyz, unity_LODFade.x );
				#endif

				#ifdef ASE_DEPTH_WRITE_ON
					outputDepth = DepthValue;
				#endif

				#if defined(_GBUFFER_NORMALS_OCT)
					float2 octNormalWS = PackNormalOctQuadEncode(WorldNormal);
					float2 remappedOctNormalWS = saturate(octNormalWS * 0.5 + 0.5);
					half3 packedNormalWS = PackFloat2To888(remappedOctNormalWS);
					return half4(packedNormalWS, 0.0);
				#else
					#if defined(_NORMALMAP)
						#if _NORMAL_DROPOFF_TS
							float crossSign = (WorldTangent.w > 0.0 ? 1.0 : -1.0) * GetOddNegativeScale();
							float3 bitangent = crossSign * cross(WorldNormal.xyz, WorldTangent.xyz);
							float3 normalWS = TransformTangentToWorld(Normal, half3x3(WorldTangent.xyz, bitangent, WorldNormal.xyz));
						#elif _NORMAL_DROPOFF_OS
							float3 normalWS = TransformObjectToWorldNormal(Normal);
						#elif _NORMAL_DROPOFF_WS
							float3 normalWS = Normal;
						#endif
					#else
						float3 normalWS = WorldNormal;
					#endif
					return half4(NormalizeNormalPerPixel(normalWS), 0.0);
				#endif
			}
			ENDHLSL
		}

		
		Pass
		{
			
			Name "GBuffer"
			Tags { "LightMode"="UniversalGBuffer" }

			Blend One Zero, One Zero
			ZWrite On
			ZTest LEqual
			Offset 0 , 0
			ColorMask RGBA
			

			HLSLPROGRAM

			#define _NORMAL_DROPOFF_TS 1
			#pragma multi_compile_instancing
			#pragma instancing_options renderinglayer
			#pragma multi_compile_fragment _ LOD_FADE_CROSSFADE
			#pragma multi_compile_fog
			#define ASE_FOG 1
			#define _NORMALMAP 1
			#define ASE_SRP_VERSION 120114
			#ifdef UNITY_COLORSPACE_GAMMA//ASE Color Space Def
			#define unity_ColorSpaceDouble half4(2.0, 2.0, 2.0, 2.0)//ASE Color Space Def
			#else // Linear values//ASE Color Space Def
			#define unity_ColorSpaceDouble half4(4.59479380, 4.59479380, 4.59479380, 2.0)//ASE Color Space Def
			#endif//ASE Color Space Def
			#define ASE_USING_SAMPLING_MACROS 1


			#pragma shader_feature_local _RECEIVE_SHADOWS_OFF
			#pragma shader_feature_local_fragment _SPECULARHIGHLIGHTS_OFF
			#pragma shader_feature_local_fragment _ENVIRONMENTREFLECTIONS_OFF

			#pragma multi_compile _ _MAIN_LIGHT_SHADOWS _MAIN_LIGHT_SHADOWS_CASCADE _MAIN_LIGHT_SHADOWS_SCREEN
			#pragma multi_compile_fragment _ _REFLECTION_PROBE_BLENDING
			#pragma multi_compile_fragment _ _REFLECTION_PROBE_BOX_PROJECTION
			#pragma multi_compile_fragment _ _SHADOWS_SOFT
			#pragma multi_compile_fragment _ _DBUFFER_MRT1 _DBUFFER_MRT2 _DBUFFER_MRT3
			#pragma multi_compile_fragment _ _LIGHT_LAYERS
			#pragma multi_compile_fragment _ _RENDER_PASS_ENABLED

			#pragma multi_compile _ LIGHTMAP_SHADOW_MIXING
			#pragma multi_compile _ SHADOWS_SHADOWMASK
			#pragma multi_compile _ DIRLIGHTMAP_COMBINED
			#pragma multi_compile _ LIGHTMAP_ON
			#pragma multi_compile _ DYNAMICLIGHTMAP_ON
			#pragma multi_compile_fragment _ _GBUFFER_NORMALS_OCT

			#pragma vertex vert
			#pragma fragment frag

			#define SHADERPASS SHADERPASS_GBUFFER

			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Color.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Input.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Shadows.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ShaderGraphFunctions.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/DBuffer.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/ShaderPass.hlsl"

			#if defined(UNITY_INSTANCING_ENABLED) && defined(_TERRAIN_INSTANCED_PERPIXEL_NORMAL)
				#define ENABLE_TERRAIN_PERPIXEL_NORMAL
			#endif

			#define ASE_NEEDS_FRAG_COLOR
			#define ASE_NEEDS_FRAG_WORLD_POSITION
			#define ASE_NEEDS_FRAG_WORLD_VIEW_DIR
			#define ASE_NEEDS_FRAG_WORLD_TANGENT
			#define ASE_NEEDS_FRAG_WORLD_BITANGENT
			#define ASE_NEEDS_FRAG_WORLD_NORMAL


			#if defined(ASE_EARLY_Z_DEPTH_OPTIMIZE) && (SHADER_TARGET >= 45)
				#define ASE_SV_DEPTH SV_DepthLessEqual
				#define ASE_SV_POSITION_QUALIFIERS linear noperspective centroid
			#else
				#define ASE_SV_DEPTH SV_Depth
				#define ASE_SV_POSITION_QUALIFIERS
			#endif

			struct VertexInput
			{
				float4 positionOS : POSITION;
				float3 normalOS : NORMAL;
				float4 tangentOS : TANGENT;
				float4 texcoord : TEXCOORD0;
				float4 texcoord1 : TEXCOORD1;
				float4 texcoord2 : TEXCOORD2;
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_color : COLOR;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct VertexOutput
			{
				ASE_SV_POSITION_QUALIFIERS float4 positionCS : SV_POSITION;
				float4 clipPosV : TEXCOORD0;
				float4 lightmapUVOrVertexSH : TEXCOORD1;
				half4 fogFactorAndVertexLight : TEXCOORD2;
				float4 tSpace0 : TEXCOORD3;
				float4 tSpace1 : TEXCOORD4;
				float4 tSpace2 : TEXCOORD5;
				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR)
				float4 shadowCoord : TEXCOORD6;
				#endif
				#if defined(DYNAMICLIGHTMAP_ON)
				float2 dynamicLightmapUV : TEXCOORD7;
				#endif
				float4 ase_texcoord8 : TEXCOORD8;
				float4 ase_texcoord9 : TEXCOORD9;
				float4 ase_color : COLOR;
				float4 ase_texcoord10 : TEXCOORD10;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			CBUFFER_START(UnityPerMaterial)
			float4 _DetailMaskMap_TexelSize;
			float4 _DetailSecondaryMaskUVs;
			float4 _DetailMaskUVs;
			float4 _DetailColorMap_TexelSize;
			float4 _DetailUVs;
			float4 _DetailNormalMap_TexelSize;
			float4 _DetailSecondaryNormalMap_TexelSize;
			float4 _MainUVs;
			half4 _DetailColor;
			half4 _BaseColor;
			float4 _DetailSecondaryColorMap_TexelSize;
			half4 _DetailSecondaryColor;
			float4 _DetailSecondaryUVs;
			float4 _DetailSecondaryMaskMap_TexelSize;
			half _DetailSecondaryBlendHeight;
			int _DetailSecondaryBlendVertexColor;
			half _DetailSecondaryBlendSmooth;
			half _DetailSecondaryBlendStrength;
			half _DetailSecondaryBlendSource;
			half _DetailSecondaryMaskIsInverted;
			half _DetailSecondaryMaskEnable;
			half _DetailSecondaryBlendHeightMin;
			half _DetailSecondaryMaskBlendFalloff;
			half _DetailSecondaryMaskBlendStrength;
			half _DetailSecondaryMaskBlendHardness;
			half _DetailSecondaryBlendHeightMax;
			int _Cull;
			float _DetailSecondaryEnable;
			half _SmoothnessFresnelEnable;
			half _SmoothnessFresnelPower;
			half _SmoothnessFresnelScale;
			half _SmoothnessStrength;
			half _SmoothnessSource;
			float _MetallicStrength;
			float _DetailSecondaryBlendEnableAltitudeMask;
			half _DetailSecondaryNormalStrength;
			half _NormalStrength;
			float _SPACE_DETAILSECONDARY;
			float _CATEGORY_DETAILMAPPINGSECONDARY;
			float _SPACE_DETAIL;
			float _CATEGORY_DETAILMAPPING;
			half _DetailEnable;
			half _DetailNormalStrength;
			half _DetailSecondaryMaskUVRotation;
			half _DetailSecondaryUVMode;
			half _DetailSecondaryBrightness;
			float _SPACE_TRANSLUCENCY;
			float _CATEGORY_TRANSMISSION;
			float _CATEGORY_SURFACEINPUTS;
			float _SPACE_SURFACEINPUTS;
			float _SPACE_COLOR;
			float _CATEGORY_COLOR;
			float _UVMode;
			float _BaseColorSaturation;
			half _Brightness;
			half _DetailUVRotation;
			half _DetailUVMode;
			half _DetailBrightness;
			float _DetailSaturation;
			half _DetailMaskUVRotation;
			half _DetailMaskIsInverted;
			half _DetailMaskBlendStrength;
			half _DetailMaskBlendHardness;
			half _OcclusionStrengthAO;
			half _DetailSecondaryUVRotation;
			float _DetailSecondaryBlendWeightLayer2;
			float _DetailSecondaryBlendWeightLayer1;
			float _DetailBlendEnableAltitudeMask;
			half _DetailBlendHeightMax;
			float _DetailSecondarySaturation;
			half _DetailBlendHeightMin;
			int _DetailBlendVertexColor;
			half _DetailBlendSmooth;
			half _DetailBlendStrength;
			half _DetailBlendSource;
			half _DetailMaskEnable;
			half _DetailMaskBlendFalloff;
			half _DetailBlendHeight;
			half _OcclusionSource;
			#ifdef ASE_TRANSMISSION
				float _TransmissionShadow;
			#endif
			#ifdef ASE_TRANSLUCENCY
				float _TransStrength;
				float _TransNormal;
				float _TransScattering;
				float _TransDirect;
				float _TransAmbient;
				float _TransShadow;
			#endif
			#ifdef ASE_TESSELLATION
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			CBUFFER_END

			#ifdef SCENEPICKINGPASS
				float4 _SelectionID;
			#endif

			#ifdef SCENESELECTIONPASS
				int _ObjectId;
				int _PassValue;
			#endif

			TEXTURE2D(_MainTex);
			SAMPLER(sampler_MainTex);
			TEXTURE2D(_DetailColorMap);
			TEXTURE2D(_DetailMaskMap);
			TEXTURE2D(_DetailSecondaryColorMap);
			TEXTURE2D(_DetailSecondaryMaskMap);
			TEXTURE2D(_BumpMap);
			SAMPLER(sampler_BumpMap);
			TEXTURE2D(_DetailNormalMap);
			TEXTURE2D(_DetailSecondaryNormalMap);
			TEXTURE2D(_MetallicGlossMap);
			SAMPLER(sampler_MetallicGlossMap);
			TEXTURE2D(_SmoothnessMap);
			SAMPLER(sampler_SmoothnessMap);
			TEXTURE2D(_OcclusionMap);
			SAMPLER(sampler_OcclusionMap);


			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/UnityGBuffer.hlsl"

			float4 mod289( float4 x )
			{
				return x - floor(x * (1.0 / 289.0)) * 289.0;
			}
			
			float4 perm( float4 x )
			{
				return mod289(((x * 34.0) + 1.0) * x);
			}
			
			float SimpleNoise3D( float3 p )
			{
				 float3 a = floor(p);
				    float3 d = p - a;
				    d = d * d * (3.0 - 2.0 * d);
				 float4 b = a.xxyy + float4(0.0, 1.0, 0.0, 1.0);
				    float4 k1 = perm(b.xyxy);
				 float4 k2 = perm(k1.xyxy + b.zzww);
				    float4 c = k2 + a.zzzz;
				    float4 k3 = perm(c);
				    float4 k4 = perm(c + 1.0);
				    float4 o1 = frac(k3 * (1.0 / 41.0));
				 float4 o2 = frac(k4 * (1.0 / 41.0));
				    float4 o3 = o2 * d.z + o1 * (1.0 - d.z);
				    float2 o4 = o3.yw * d.x + o3.xz * (1.0 - d.x);
				    return o4.y * d.y + o4.x * (1.0 - d.y);
			}
			
			float2 float2switchUVMode80_g58525( float m_switch, float2 m_UV0, float2 m_UV1, float2 m_UV2, float2 m_UV3 )
			{
				if(m_switch ==0)
					return m_UV0;
				else if(m_switch ==1)
					return m_UV1;
				else if(m_switch ==2)
					return m_UV2;
				else if(m_switch ==3)
					return m_UV3;
				else
				return float2(0,0);
			}
			
			float2 float2switchUVMode80_g57837( float m_switch, float2 m_UV0, float2 m_UV1, float2 m_UV2, float2 m_UV3 )
			{
				if(m_switch ==0)
					return m_UV0;
				else if(m_switch ==1)
					return m_UV1;
				else if(m_switch ==2)
					return m_UV2;
				else if(m_switch ==3)
					return m_UV3;
				else
				return float2(0,0);
			}
			
			float2 float2switchUVMode80_g57840( float m_switch, float2 m_UV0, float2 m_UV1, float2 m_UV2, float2 m_UV3 )
			{
				if(m_switch ==0)
					return m_UV0;
				else if(m_switch ==1)
					return m_UV1;
				else if(m_switch ==2)
					return m_UV2;
				else if(m_switch ==3)
					return m_UV3;
				else
				return float2(0,0);
			}
			
			float MaskVCSwitch44_g57853( float m_switch, float m_Off, float m_R, float m_G, float m_B, float m_A )
			{
				if(m_switch ==0)
					return m_Off;
				else if(m_switch ==1)
					return m_R;
				else if(m_switch ==2)
					return m_G;
				else if(m_switch ==3)
					return m_B;
				else if(m_switch ==4)
					return m_A;
				else
				return float(0);
			}
			
			float2 float2switchUVMode80_g57843( float m_switch, float2 m_UV0, float2 m_UV1, float2 m_UV2, float2 m_UV3 )
			{
				if(m_switch ==0)
					return m_UV0;
				else if(m_switch ==1)
					return m_UV1;
				else if(m_switch ==2)
					return m_UV2;
				else if(m_switch ==3)
					return m_UV3;
				else
				return float2(0,0);
			}
			
			float2 float2switchUVMode80_g57846( float m_switch, float2 m_UV0, float2 m_UV1, float2 m_UV2, float2 m_UV3 )
			{
				if(m_switch ==0)
					return m_UV0;
				else if(m_switch ==1)
					return m_UV1;
				else if(m_switch ==2)
					return m_UV2;
				else if(m_switch ==3)
					return m_UV3;
				else
				return float2(0,0);
			}
			
			float MaskVCSwitch44_g57852( float m_switch, float m_Off, float m_R, float m_G, float m_B, float m_A )
			{
				if(m_switch ==0)
					return m_Off;
				else if(m_switch ==1)
					return m_R;
				else if(m_switch ==2)
					return m_G;
				else if(m_switch ==3)
					return m_B;
				else if(m_switch ==4)
					return m_A;
				else
				return float(0);
			}
			

			VertexOutput VertexFunction( VertexInput v  )
			{
				VertexOutput o = (VertexOutput)0;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);

				float m_switch80_g58525 = _UVMode;
				float2 m_UV080_g58525 = v.texcoord.xy;
				float2 m_UV180_g58525 = v.texcoord1.xy;
				float2 m_UV280_g58525 = v.texcoord2.xy;
				float2 m_UV380_g58525 = v.ase_texcoord3.xy;
				float2 localfloat2switchUVMode80_g58525 = float2switchUVMode80_g58525( m_switch80_g58525 , m_UV080_g58525 , m_UV180_g58525 , m_UV280_g58525 , m_UV380_g58525 );
				float2 temp_output_1955_0_g57857 = (_MainUVs).xy;
				float2 temp_output_1953_0_g57857 = (_MainUVs).zw;
				float2 Offset235_g58525 = temp_output_1953_0_g57857;
				float2 temp_output_41_0_g58525 = ( ( localfloat2switchUVMode80_g58525 * temp_output_1955_0_g57857 ) + Offset235_g58525 );
				float2 vertexToFrag70_g58525 = temp_output_41_0_g58525;
				o.ase_texcoord8.xy = vertexToFrag70_g58525;
				float temp_output_6_0_g57837 = _DetailUVRotation;
				float temp_output_200_0_g57837 = radians( temp_output_6_0_g57837 );
				float temp_output_13_0_g57837 = cos( temp_output_200_0_g57837 );
				float m_switch80_g57837 = _DetailUVMode;
				float2 m_UV080_g57837 = v.texcoord.xy;
				float2 m_UV180_g57837 = v.texcoord1.xy;
				float2 m_UV280_g57837 = v.texcoord2.xy;
				float2 m_UV380_g57837 = v.ase_texcoord3.xy;
				float2 localfloat2switchUVMode80_g57837 = float2switchUVMode80_g57837( m_switch80_g57837 , m_UV080_g57837 , m_UV180_g57837 , m_UV280_g57837 , m_UV380_g57837 );
				float2 temp_output_9_0_g57837 = float2( 0.5,0.5 );
				float2 break39_g57837 = ( localfloat2switchUVMode80_g57837 - temp_output_9_0_g57837 );
				float temp_output_14_0_g57837 = sin( temp_output_200_0_g57837 );
				float2 appendResult36_g57837 = (float2(( ( temp_output_13_0_g57837 * break39_g57837.x ) + ( temp_output_14_0_g57837 * break39_g57837.y ) ) , ( ( temp_output_13_0_g57837 * break39_g57837.y ) - ( temp_output_14_0_g57837 * break39_g57837.x ) )));
				float2 Offset235_g57837 = (_DetailUVs).zw;
				float2 temp_output_41_0_g57837 = ( ( ( appendResult36_g57837 * ( (_DetailUVs).xy / 1.0 ) ) + temp_output_9_0_g57837 ) + Offset235_g57837 );
				float2 _ConstantAnchor = float2(0.5,0.5);
				float2 vertexToFrag70_g57837 = ( temp_output_41_0_g57837 - ( ( ( (_DetailUVs).xy / 1.0 ) * _ConstantAnchor ) - _ConstantAnchor ) );
				o.ase_texcoord8.zw = vertexToFrag70_g57837;
				float temp_output_6_0_g57840 = _DetailMaskUVRotation;
				float temp_output_200_0_g57840 = radians( temp_output_6_0_g57840 );
				float temp_output_13_0_g57840 = cos( temp_output_200_0_g57840 );
				float DetailUVMode1060_g57823 = _DetailUVMode;
				float m_switch80_g57840 = DetailUVMode1060_g57823;
				float2 m_UV080_g57840 = v.texcoord.xy;
				float2 m_UV180_g57840 = v.texcoord1.xy;
				float2 m_UV280_g57840 = v.texcoord2.xy;
				float2 m_UV380_g57840 = v.ase_texcoord3.xy;
				float2 localfloat2switchUVMode80_g57840 = float2switchUVMode80_g57840( m_switch80_g57840 , m_UV080_g57840 , m_UV180_g57840 , m_UV280_g57840 , m_UV380_g57840 );
				float2 temp_output_9_0_g57840 = float2( 0.5,0.5 );
				float2 break39_g57840 = ( localfloat2switchUVMode80_g57840 - temp_output_9_0_g57840 );
				float temp_output_14_0_g57840 = sin( temp_output_200_0_g57840 );
				float2 appendResult36_g57840 = (float2(( ( temp_output_13_0_g57840 * break39_g57840.x ) + ( temp_output_14_0_g57840 * break39_g57840.y ) ) , ( ( temp_output_13_0_g57840 * break39_g57840.y ) - ( temp_output_14_0_g57840 * break39_g57840.x ) )));
				float2 Offset235_g57840 = (_DetailMaskUVs).zw;
				float2 temp_output_41_0_g57840 = ( ( ( appendResult36_g57840 * ( (_DetailMaskUVs).xy / 1.0 ) ) + temp_output_9_0_g57840 ) + Offset235_g57840 );
				float2 vertexToFrag70_g57840 = ( temp_output_41_0_g57840 - ( ( ( (_DetailMaskUVs).xy / 1.0 ) * _ConstantAnchor ) - _ConstantAnchor ) );
				o.ase_texcoord9.xy = vertexToFrag70_g57840;
				float temp_output_6_0_g57843 = _DetailSecondaryUVRotation;
				float temp_output_200_0_g57843 = radians( temp_output_6_0_g57843 );
				float temp_output_13_0_g57843 = cos( temp_output_200_0_g57843 );
				float m_switch80_g57843 = _DetailSecondaryUVMode;
				float2 m_UV080_g57843 = v.texcoord.xy;
				float2 m_UV180_g57843 = v.texcoord1.xy;
				float2 m_UV280_g57843 = v.texcoord2.xy;
				float2 m_UV380_g57843 = v.ase_texcoord3.xy;
				float2 localfloat2switchUVMode80_g57843 = float2switchUVMode80_g57843( m_switch80_g57843 , m_UV080_g57843 , m_UV180_g57843 , m_UV280_g57843 , m_UV380_g57843 );
				float2 temp_output_9_0_g57843 = float2( 0.5,0.5 );
				float2 break39_g57843 = ( localfloat2switchUVMode80_g57843 - temp_output_9_0_g57843 );
				float temp_output_14_0_g57843 = sin( temp_output_200_0_g57843 );
				float2 appendResult36_g57843 = (float2(( ( temp_output_13_0_g57843 * break39_g57843.x ) + ( temp_output_14_0_g57843 * break39_g57843.y ) ) , ( ( temp_output_13_0_g57843 * break39_g57843.y ) - ( temp_output_14_0_g57843 * break39_g57843.x ) )));
				float2 Offset235_g57843 = (_DetailSecondaryUVs).zw;
				float2 temp_output_41_0_g57843 = ( ( ( appendResult36_g57843 * ( (_DetailSecondaryUVs).xy / 1.0 ) ) + temp_output_9_0_g57843 ) + Offset235_g57843 );
				float2 vertexToFrag70_g57843 = ( temp_output_41_0_g57843 - ( ( ( (_DetailSecondaryUVs).xy / 1.0 ) * _ConstantAnchor ) - _ConstantAnchor ) );
				o.ase_texcoord9.zw = vertexToFrag70_g57843;
				float temp_output_6_0_g57846 = _DetailSecondaryMaskUVRotation;
				float temp_output_200_0_g57846 = radians( temp_output_6_0_g57846 );
				float temp_output_13_0_g57846 = cos( temp_output_200_0_g57846 );
				float DetailSecondaryUVMode1059_g57823 = _DetailSecondaryUVMode;
				float m_switch80_g57846 = DetailSecondaryUVMode1059_g57823;
				float2 m_UV080_g57846 = v.texcoord.xy;
				float2 m_UV180_g57846 = v.texcoord1.xy;
				float2 m_UV280_g57846 = v.texcoord2.xy;
				float2 m_UV380_g57846 = v.ase_texcoord3.xy;
				float2 localfloat2switchUVMode80_g57846 = float2switchUVMode80_g57846( m_switch80_g57846 , m_UV080_g57846 , m_UV180_g57846 , m_UV280_g57846 , m_UV380_g57846 );
				float2 temp_output_9_0_g57846 = float2( 0.5,0.5 );
				float2 break39_g57846 = ( localfloat2switchUVMode80_g57846 - temp_output_9_0_g57846 );
				float temp_output_14_0_g57846 = sin( temp_output_200_0_g57846 );
				float2 appendResult36_g57846 = (float2(( ( temp_output_13_0_g57846 * break39_g57846.x ) + ( temp_output_14_0_g57846 * break39_g57846.y ) ) , ( ( temp_output_13_0_g57846 * break39_g57846.y ) - ( temp_output_14_0_g57846 * break39_g57846.x ) )));
				float2 Offset235_g57846 = (_DetailSecondaryMaskUVs).zw;
				float2 temp_output_41_0_g57846 = ( ( ( appendResult36_g57846 * ( (_DetailSecondaryMaskUVs).xy / 1.0 ) ) + temp_output_9_0_g57846 ) + Offset235_g57846 );
				float2 vertexToFrag70_g57846 = ( temp_output_41_0_g57846 - ( ( ( (_DetailSecondaryMaskUVs).xy / 1.0 ) * _ConstantAnchor ) - _ConstantAnchor ) );
				o.ase_texcoord10.xy = vertexToFrag70_g57846;
				
				o.ase_color = v.ase_color;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord10.zw = 0;
				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = v.positionOS.xyz;
				#else
					float3 defaultVertexValue = float3(0, 0, 0);
				#endif

				float3 vertexValue = defaultVertexValue;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
					v.positionOS.xyz = vertexValue;
				#else
					v.positionOS.xyz += vertexValue;
				#endif

				v.normalOS = v.normalOS;
				v.tangentOS = v.tangentOS;

				VertexPositionInputs vertexInput = GetVertexPositionInputs( v.positionOS.xyz );
				VertexNormalInputs normalInput = GetVertexNormalInputs( v.normalOS, v.tangentOS );

				o.tSpace0 = float4( normalInput.normalWS, vertexInput.positionWS.x);
				o.tSpace1 = float4( normalInput.tangentWS, vertexInput.positionWS.y);
				o.tSpace2 = float4( normalInput.bitangentWS, vertexInput.positionWS.z);

				#if defined(LIGHTMAP_ON)
					OUTPUT_LIGHTMAP_UV(v.texcoord1, unity_LightmapST, o.lightmapUVOrVertexSH.xy);
				#endif

				#if defined(DYNAMICLIGHTMAP_ON)
					o.dynamicLightmapUV.xy = v.texcoord2.xy * unity_DynamicLightmapST.xy + unity_DynamicLightmapST.zw;
				#endif

				#if !defined(LIGHTMAP_ON)
					OUTPUT_SH(normalInput.normalWS.xyz, o.lightmapUVOrVertexSH.xyz);
				#endif

				#if defined(ENABLE_TERRAIN_PERPIXEL_NORMAL)
					o.lightmapUVOrVertexSH.zw = v.texcoord.xy;
					o.lightmapUVOrVertexSH.xy = v.texcoord.xy * unity_LightmapST.xy + unity_LightmapST.zw;
				#endif

				half3 vertexLight = VertexLighting( vertexInput.positionWS, normalInput.normalWS );

				o.fogFactorAndVertexLight = half4(0, vertexLight);

				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR)
					o.shadowCoord = GetShadowCoord( vertexInput );
				#endif

				o.positionCS = vertexInput.positionCS;
				o.clipPosV = vertexInput.positionCS;
				return o;
			}

			#if defined(ASE_TESSELLATION)
			struct VertexControl
			{
				float4 vertex : INTERNALTESSPOS;
				float3 normalOS : NORMAL;
				float4 tangentOS : TANGENT;
				float4 texcoord : TEXCOORD0;
				float4 texcoord1 : TEXCOORD1;
				float4 texcoord2 : TEXCOORD2;
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_color : COLOR;

				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl vert ( VertexInput v )
			{
				VertexControl o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				o.vertex = v.positionOS;
				o.normalOS = v.normalOS;
				o.tangentOS = v.tangentOS;
				o.texcoord = v.texcoord;
				o.texcoord1 = v.texcoord1;
				o.texcoord2 = v.texcoord2;
				o.texcoord = v.texcoord;
				o.ase_texcoord3 = v.ase_texcoord3;
				o.ase_color = v.ase_color;
				return o;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> v)
			{
				TessellationFactors o;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), _WorldSpaceCameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams, unity_CameraWorldClipPlanes );
				#endif
				o.edge[0] = tf.x; o.edge[1] = tf.y; o.edge[2] = tf.z; o.inside = tf.w;
				return o;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
				return patch[id];
			}

			[domain("tri")]
			VertexOutput DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				VertexInput o = (VertexInput) 0;
				o.positionOS = patch[0].vertex * bary.x + patch[1].vertex * bary.y + patch[2].vertex * bary.z;
				o.normalOS = patch[0].normalOS * bary.x + patch[1].normalOS * bary.y + patch[2].normalOS * bary.z;
				o.tangentOS = patch[0].tangentOS * bary.x + patch[1].tangentOS * bary.y + patch[2].tangentOS * bary.z;
				o.texcoord = patch[0].texcoord * bary.x + patch[1].texcoord * bary.y + patch[2].texcoord * bary.z;
				o.texcoord1 = patch[0].texcoord1 * bary.x + patch[1].texcoord1 * bary.y + patch[2].texcoord1 * bary.z;
				o.texcoord2 = patch[0].texcoord2 * bary.x + patch[1].texcoord2 * bary.y + patch[2].texcoord2 * bary.z;
				o.texcoord = patch[0].texcoord * bary.x + patch[1].texcoord * bary.y + patch[2].texcoord * bary.z;
				o.ase_texcoord3 = patch[0].ase_texcoord3 * bary.x + patch[1].ase_texcoord3 * bary.y + patch[2].ase_texcoord3 * bary.z;
				o.ase_color = patch[0].ase_color * bary.x + patch[1].ase_color * bary.y + patch[2].ase_color * bary.z;
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = o.positionOS.xyz - patch[i].normalOS * (dot(o.positionOS.xyz, patch[i].normalOS) - dot(patch[i].vertex.xyz, patch[i].normalOS));
				float phongStrength = _TessPhongStrength;
				o.positionOS.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * o.positionOS.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], o);
				return VertexFunction(o);
			}
			#else
			VertexOutput vert ( VertexInput v )
			{
				return VertexFunction( v );
			}
			#endif

			FragmentOutput frag ( VertexOutput IN
								#ifdef ASE_DEPTH_WRITE_ON
								,out float outputDepth : ASE_SV_DEPTH
								#endif
								 )
			{
				UNITY_SETUP_INSTANCE_ID(IN);
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX(IN);

				#ifdef LOD_FADE_CROSSFADE
					LODDitheringTransition( IN.positionCS.xyz, unity_LODFade.x );
				#endif

				#if defined(ENABLE_TERRAIN_PERPIXEL_NORMAL)
					float2 sampleCoords = (IN.lightmapUVOrVertexSH.zw / _TerrainHeightmapRecipSize.zw + 0.5f) * _TerrainHeightmapRecipSize.xy;
					float3 WorldNormal = TransformObjectToWorldNormal(normalize(SAMPLE_TEXTURE2D(_TerrainNormalmapTexture, sampler_TerrainNormalmapTexture, sampleCoords).rgb * 2 - 1));
					float3 WorldTangent = -cross(GetObjectToWorldMatrix()._13_23_33, WorldNormal);
					float3 WorldBiTangent = cross(WorldNormal, -WorldTangent);
				#else
					float3 WorldNormal = normalize( IN.tSpace0.xyz );
					float3 WorldTangent = IN.tSpace1.xyz;
					float3 WorldBiTangent = IN.tSpace2.xyz;
				#endif

				float3 WorldPosition = float3(IN.tSpace0.w,IN.tSpace1.w,IN.tSpace2.w);
				float3 WorldViewDirection = _WorldSpaceCameraPos.xyz  - WorldPosition;
				float4 ShadowCoords = float4( 0, 0, 0, 0 );

				float4 ClipPos = IN.clipPosV;
				float4 ScreenPos = ComputeScreenPos( IN.clipPosV );

				float2 NormalizedScreenSpaceUV = GetNormalizedScreenSpaceUV(IN.positionCS);

				#if defined(REQUIRES_VERTEX_SHADOW_COORD_INTERPOLATOR)
					ShadowCoords = IN.shadowCoord;
				#elif defined(MAIN_LIGHT_CALCULATE_SHADOWS)
					ShadowCoords = TransformWorldToShadowCoord( WorldPosition );
				#else
					ShadowCoords = float4(0, 0, 0, 0);
				#endif

				WorldViewDirection = SafeNormalize( WorldViewDirection );

				float3 temp_output_1923_0_g57857 = (_BaseColor).rgb;
				float2 vertexToFrag70_g58525 = IN.ase_texcoord8.xy;
				float2 UV213_g57857 = vertexToFrag70_g58525;
				float4 tex2DNode2048_g57857 = SAMPLE_TEXTURE2D( _MainTex, sampler_MainTex, UV213_g57857 );
				float3 ALBEDO_RGBA1381_g57857 = (tex2DNode2048_g57857).rgb;
				float3 temp_output_12_0_g57865 = ALBEDO_RGBA1381_g57857;
				float dotResult28_g57865 = dot( float3(0.2126729,0.7151522,0.072175) , temp_output_12_0_g57865 );
				float3 temp_cast_0 = (dotResult28_g57865).xxx;
				float temp_output_21_0_g57865 = ( 1.0 - _BaseColorSaturation );
				float3 lerpResult31_g57865 = lerp( temp_cast_0 , temp_output_12_0_g57865 , temp_output_21_0_g57865);
				float3 temp_output_3_0_g57857 = ( temp_output_1923_0_g57857 * lerpResult31_g57865 * _Brightness );
				float3 temp_output_39_0_g57823 = temp_output_3_0_g57857;
				float localStochasticTiling159_g57828 = ( 0.0 );
				float2 vertexToFrag70_g57837 = IN.ase_texcoord8.zw;
				float2 temp_output_1334_0_g57823 = vertexToFrag70_g57837;
				float2 UV159_g57828 = temp_output_1334_0_g57823;
				float4 TexelSize159_g57828 = _DetailColorMap_TexelSize;
				float4 Offsets159_g57828 = float4( 0,0,0,0 );
				float2 Weights159_g57828 = float2( 0,0 );
				{
				UV159_g57828 = UV159_g57828 * TexelSize159_g57828.zw - 0.5;
				float2 f = frac( UV159_g57828 );
				UV159_g57828 -= f;
				float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				float4 xs = xn * xn * xn;
				float4 ys = yn * yn * yn;
				float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				float4 c = float4( UV159_g57828.x - 0.5, UV159_g57828.x + 1.5, UV159_g57828.y - 0.5, UV159_g57828.y + 1.5 );
				float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				float w0 = s.x / ( s.x + s.y );
				float w1 = s.z / ( s.z + s.w );
				Offsets159_g57828 = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize159_g57828.xyxy;
				Weights159_g57828 = float2( w0, w1 );
				}
				float4 Input_FetchOffsets70_g57829 = Offsets159_g57828;
				float2 Input_FetchWeights143_g57829 = Weights159_g57828;
				float2 break46_g57829 = Input_FetchWeights143_g57829;
				float4 lerpResult20_g57829 = lerp( SAMPLE_TEXTURE2D( _DetailColorMap, sampler_MainTex, (Input_FetchOffsets70_g57829).yw ) , SAMPLE_TEXTURE2D( _DetailColorMap, sampler_MainTex, (Input_FetchOffsets70_g57829).xw ) , break46_g57829.x);
				float4 lerpResult40_g57829 = lerp( SAMPLE_TEXTURE2D( _DetailColorMap, sampler_MainTex, (Input_FetchOffsets70_g57829).yz ) , SAMPLE_TEXTURE2D( _DetailColorMap, sampler_MainTex, (Input_FetchOffsets70_g57829).xz ) , break46_g57829.x);
				float4 lerpResult22_g57829 = lerp( lerpResult20_g57829 , lerpResult40_g57829 , break46_g57829.y);
				float4 Output_Fetch2D44_g57829 = lerpResult22_g57829;
				float3 temp_output_44_0_g57823 = ( (_DetailColor).rgb * (Output_Fetch2D44_g57829).rgb * _DetailBrightness );
				float3 temp_output_12_0_g57849 = temp_output_44_0_g57823;
				float dotResult28_g57849 = dot( float3(0.2126729,0.7151522,0.072175) , temp_output_12_0_g57849 );
				float3 temp_cast_1 = (dotResult28_g57849).xxx;
				float temp_output_21_0_g57849 = ( 1.0 - _DetailSaturation );
				float3 lerpResult31_g57849 = lerp( temp_cast_1 , temp_output_12_0_g57849 , temp_output_21_0_g57849);
				float3 temp_output_1272_0_g57823 = (unity_ColorSpaceDouble).rgb;
				float3 temp_output_1190_0_g57823 = ( lerpResult31_g57849 * temp_output_1272_0_g57823 );
				float3 BaseColor_RGB40_g57823 = temp_output_39_0_g57823;
				float localStochasticTiling159_g57835 = ( 0.0 );
				float2 vertexToFrag70_g57840 = IN.ase_texcoord9.xy;
				float2 temp_output_1339_0_g57823 = vertexToFrag70_g57840;
				float2 UV159_g57835 = temp_output_1339_0_g57823;
				float4 TexelSize159_g57835 = _DetailMaskMap_TexelSize;
				float4 Offsets159_g57835 = float4( 0,0,0,0 );
				float2 Weights159_g57835 = float2( 0,0 );
				{
				UV159_g57835 = UV159_g57835 * TexelSize159_g57835.zw - 0.5;
				float2 f = frac( UV159_g57835 );
				UV159_g57835 -= f;
				float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				float4 xs = xn * xn * xn;
				float4 ys = yn * yn * yn;
				float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				float4 c = float4( UV159_g57835.x - 0.5, UV159_g57835.x + 1.5, UV159_g57835.y - 0.5, UV159_g57835.y + 1.5 );
				float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				float w0 = s.x / ( s.x + s.y );
				float w1 = s.z / ( s.z + s.w );
				Offsets159_g57835 = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize159_g57835.xyxy;
				Weights159_g57835 = float2( w0, w1 );
				}
				float4 Input_FetchOffsets70_g57836 = Offsets159_g57835;
				float2 Input_FetchWeights143_g57836 = Weights159_g57835;
				float2 break46_g57836 = Input_FetchWeights143_g57836;
				float4 lerpResult20_g57836 = lerp( SAMPLE_TEXTURE2D( _DetailMaskMap, sampler_MainTex, (Input_FetchOffsets70_g57836).yw ) , SAMPLE_TEXTURE2D( _DetailMaskMap, sampler_MainTex, (Input_FetchOffsets70_g57836).xw ) , break46_g57836.x);
				float4 lerpResult40_g57836 = lerp( SAMPLE_TEXTURE2D( _DetailMaskMap, sampler_MainTex, (Input_FetchOffsets70_g57836).yz ) , SAMPLE_TEXTURE2D( _DetailMaskMap, sampler_MainTex, (Input_FetchOffsets70_g57836).xz ) , break46_g57836.x);
				float4 lerpResult22_g57836 = lerp( lerpResult20_g57836 , lerpResult40_g57836 , break46_g57836.y);
				float4 Output_Fetch2D44_g57836 = lerpResult22_g57836;
				float4 break50_g57836 = Output_Fetch2D44_g57836;
				float lerpResult997_g57823 = lerp( ( 1.0 - break50_g57836.r ) , break50_g57836.r , _DetailMaskIsInverted);
				float temp_output_15_0_g57851 = ( 1.0 - lerpResult997_g57823 );
				float temp_output_26_0_g57851 = _DetailMaskBlendStrength;
				float temp_output_24_0_g57851 = _DetailMaskBlendHardness;
				float saferPower2_g57851 = abs( max( saturate( (0.0 + (temp_output_15_0_g57851 - ( 1.0 - temp_output_26_0_g57851 )) * (temp_output_24_0_g57851 - 0.0) / (1.0 - ( 1.0 - temp_output_26_0_g57851 ))) ) , 0.0 ) );
				float temp_output_22_0_g57851 = _DetailMaskBlendFalloff;
				float Blend_DetailMask986_g57823 = saturate( pow( saferPower2_g57851 , ( 1.0 - temp_output_22_0_g57851 ) ) );
				float3 lerpResult1194_g57823 = lerp( BaseColor_RGB40_g57823 , temp_output_1190_0_g57823 , Blend_DetailMask986_g57823);
				float temp_output_1162_0_g57823 = ( 1.0 - Blend_DetailMask986_g57823 );
				float3 appendResult1161_g57823 = (float3(temp_output_1162_0_g57823 , temp_output_1162_0_g57823 , temp_output_1162_0_g57823));
				float3 lerpResult1005_g57823 = lerp( temp_output_1190_0_g57823 , ( ( lerpResult1194_g57823 * Blend_DetailMask986_g57823 ) + appendResult1161_g57823 ) , _DetailMaskEnable);
				float3 BaseColor_Detail255_g57823 = lerpResult1005_g57823;
				float BaseColor_R1273_g57823 = temp_output_39_0_g57823.x;
				float BaseColor_DetailR887_g57823 = Output_Fetch2D44_g57829.r;
				float lerpResult1105_g57823 = lerp( BaseColor_R1273_g57823 , BaseColor_DetailR887_g57823 , _DetailBlendSource);
				float m_switch44_g57853 = (float)_DetailBlendVertexColor;
				float m_Off44_g57853 = 1.0;
				float dotResult58_g57853 = dot( IN.ase_color.g , IN.ase_color.g );
				float dotResult61_g57853 = dot( IN.ase_color.b , IN.ase_color.b );
				float m_R44_g57853 = ( dotResult58_g57853 + dotResult61_g57853 );
				float dotResult57_g57853 = dot( IN.ase_color.r , IN.ase_color.r );
				float m_G44_g57853 = ( dotResult57_g57853 + dotResult58_g57853 );
				float m_B44_g57853 = ( dotResult57_g57853 + dotResult61_g57853 );
				float m_A44_g57853 = IN.ase_color.a;
				float localMaskVCSwitch44_g57853 = MaskVCSwitch44_g57853( m_switch44_g57853 , m_Off44_g57853 , m_R44_g57853 , m_G44_g57853 , m_B44_g57853 , m_A44_g57853 );
				float clampResult54_g57853 = clamp( ( ( localMaskVCSwitch44_g57853 * _DetailBlendHeight ) / _DetailBlendSmooth ) , 0.0 , 1.0 );
				float Blend647_g57823 = saturate( ( ( ( ( lerpResult1105_g57823 - 0.5 ) * ( ( 1.0 - _DetailBlendStrength ) - 0.9 ) ) / ( 1.0 - _DetailBlendSmooth ) ) + ( 1.0 - clampResult54_g57853 ) ) );
				float temp_output_1171_0_g57823 = ( 1.0 - Blend647_g57823 );
				float3 appendResult1174_g57823 = (float3(temp_output_1171_0_g57823 , temp_output_1171_0_g57823 , temp_output_1171_0_g57823));
				float3 temp_output_1173_0_g57823 = ( ( BaseColor_Detail255_g57823 * Blend647_g57823 ) + appendResult1174_g57823 );
				float temp_output_20_0_g57854 = _DetailBlendHeightMin;
				float temp_output_21_0_g57854 = _DetailBlendHeightMax;
				float3 worldToObj1466_g57823 = mul( GetWorldToObjectMatrix(), float4( WorldPosition, 1 ) ).xyz;
				float3 WorldPosition1436_g57823 = worldToObj1466_g57823;
				float smoothstepResult25_g57854 = smoothstep( temp_output_20_0_g57854 , temp_output_21_0_g57854 , WorldPosition1436_g57823.y);
				float DetailBlendHeight1440_g57823 = smoothstepResult25_g57854;
				float3 lerpResult1438_g57823 = lerp( temp_output_1173_0_g57823 , temp_output_39_0_g57823 , DetailBlendHeight1440_g57823);
				float3 lerpResult1457_g57823 = lerp( temp_output_1173_0_g57823 , lerpResult1438_g57823 , _DetailBlendEnableAltitudeMask);
				float3 temp_output_1180_0_g57823 = ( temp_output_39_0_g57823 * lerpResult1457_g57823 );
				float2 appendResult1114_g57823 = (float2(_DetailSecondaryBlendWeightLayer1 , _DetailSecondaryBlendWeightLayer2));
				float localStochasticTiling159_g57824 = ( 0.0 );
				float2 vertexToFrag70_g57843 = IN.ase_texcoord9.zw;
				float2 temp_output_1342_0_g57823 = vertexToFrag70_g57843;
				float2 UV159_g57824 = temp_output_1342_0_g57823;
				float4 TexelSize159_g57824 = _DetailSecondaryColorMap_TexelSize;
				float4 Offsets159_g57824 = float4( 0,0,0,0 );
				float2 Weights159_g57824 = float2( 0,0 );
				{
				UV159_g57824 = UV159_g57824 * TexelSize159_g57824.zw - 0.5;
				float2 f = frac( UV159_g57824 );
				UV159_g57824 -= f;
				float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				float4 xs = xn * xn * xn;
				float4 ys = yn * yn * yn;
				float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				float4 c = float4( UV159_g57824.x - 0.5, UV159_g57824.x + 1.5, UV159_g57824.y - 0.5, UV159_g57824.y + 1.5 );
				float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				float w0 = s.x / ( s.x + s.y );
				float w1 = s.z / ( s.z + s.w );
				Offsets159_g57824 = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize159_g57824.xyxy;
				Weights159_g57824 = float2( w0, w1 );
				}
				float4 Input_FetchOffsets70_g57825 = Offsets159_g57824;
				float2 Input_FetchWeights143_g57825 = Weights159_g57824;
				float2 break46_g57825 = Input_FetchWeights143_g57825;
				float4 lerpResult20_g57825 = lerp( SAMPLE_TEXTURE2D( _DetailSecondaryColorMap, sampler_MainTex, (Input_FetchOffsets70_g57825).yw ) , SAMPLE_TEXTURE2D( _DetailSecondaryColorMap, sampler_MainTex, (Input_FetchOffsets70_g57825).xw ) , break46_g57825.x);
				float4 lerpResult40_g57825 = lerp( SAMPLE_TEXTURE2D( _DetailSecondaryColorMap, sampler_MainTex, (Input_FetchOffsets70_g57825).yz ) , SAMPLE_TEXTURE2D( _DetailSecondaryColorMap, sampler_MainTex, (Input_FetchOffsets70_g57825).xz ) , break46_g57825.x);
				float4 lerpResult22_g57825 = lerp( lerpResult20_g57825 , lerpResult40_g57825 , break46_g57825.y);
				float4 Output_Fetch2D44_g57825 = lerpResult22_g57825;
				float3 temp_output_436_0_g57823 = ( (_DetailSecondaryColor).rgb * (Output_Fetch2D44_g57825).rgb * _DetailSecondaryBrightness );
				float3 temp_output_12_0_g57850 = temp_output_436_0_g57823;
				float dotResult28_g57850 = dot( float3(0.2126729,0.7151522,0.072175) , temp_output_12_0_g57850 );
				float3 temp_cast_3 = (dotResult28_g57850).xxx;
				float temp_output_21_0_g57850 = ( 1.0 - _DetailSecondarySaturation );
				float3 lerpResult31_g57850 = lerp( temp_cast_3 , temp_output_12_0_g57850 , temp_output_21_0_g57850);
				float3 ColorSpaceDouble1261_g57823 = temp_output_1272_0_g57823;
				float3 temp_output_1239_0_g57823 = ( lerpResult31_g57850 * ColorSpaceDouble1261_g57823 );
				float localStochasticTiling159_g57830 = ( 0.0 );
				float2 vertexToFrag70_g57846 = IN.ase_texcoord10.xy;
				float2 temp_output_1347_0_g57823 = vertexToFrag70_g57846;
				float2 UV159_g57830 = temp_output_1347_0_g57823;
				float4 TexelSize159_g57830 = _DetailSecondaryMaskMap_TexelSize;
				float4 Offsets159_g57830 = float4( 0,0,0,0 );
				float2 Weights159_g57830 = float2( 0,0 );
				{
				UV159_g57830 = UV159_g57830 * TexelSize159_g57830.zw - 0.5;
				float2 f = frac( UV159_g57830 );
				UV159_g57830 -= f;
				float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				float4 xs = xn * xn * xn;
				float4 ys = yn * yn * yn;
				float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				float4 c = float4( UV159_g57830.x - 0.5, UV159_g57830.x + 1.5, UV159_g57830.y - 0.5, UV159_g57830.y + 1.5 );
				float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				float w0 = s.x / ( s.x + s.y );
				float w1 = s.z / ( s.z + s.w );
				Offsets159_g57830 = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize159_g57830.xyxy;
				Weights159_g57830 = float2( w0, w1 );
				}
				float4 Input_FetchOffsets70_g57831 = Offsets159_g57830;
				float2 Input_FetchWeights143_g57831 = Weights159_g57830;
				float2 break46_g57831 = Input_FetchWeights143_g57831;
				float4 lerpResult20_g57831 = lerp( SAMPLE_TEXTURE2D( _DetailSecondaryMaskMap, sampler_MainTex, (Input_FetchOffsets70_g57831).yw ) , SAMPLE_TEXTURE2D( _DetailSecondaryMaskMap, sampler_MainTex, (Input_FetchOffsets70_g57831).xw ) , break46_g57831.x);
				float4 lerpResult40_g57831 = lerp( SAMPLE_TEXTURE2D( _DetailSecondaryMaskMap, sampler_MainTex, (Input_FetchOffsets70_g57831).yz ) , SAMPLE_TEXTURE2D( _DetailSecondaryMaskMap, sampler_MainTex, (Input_FetchOffsets70_g57831).xz ) , break46_g57831.x);
				float4 lerpResult22_g57831 = lerp( lerpResult20_g57831 , lerpResult40_g57831 , break46_g57831.y);
				float4 Output_Fetch2D44_g57831 = lerpResult22_g57831;
				float4 break50_g57831 = Output_Fetch2D44_g57831;
				float lerpResult486_g57823 = lerp( ( 1.0 - break50_g57831.r ) , break50_g57831.r , _DetailSecondaryMaskIsInverted);
				float temp_output_15_0_g57832 = ( 1.0 - lerpResult486_g57823 );
				float temp_output_26_0_g57832 = _DetailSecondaryMaskBlendStrength;
				float temp_output_24_0_g57832 = _DetailSecondaryMaskBlendHardness;
				float saferPower2_g57832 = abs( max( saturate( (0.0 + (temp_output_15_0_g57832 - ( 1.0 - temp_output_26_0_g57832 )) * (temp_output_24_0_g57832 - 0.0) / (1.0 - ( 1.0 - temp_output_26_0_g57832 ))) ) , 0.0 ) );
				float temp_output_22_0_g57832 = _DetailSecondaryMaskBlendFalloff;
				float Blend_DetailSecondaryMask755_g57823 = saturate( pow( saferPower2_g57832 , ( 1.0 - temp_output_22_0_g57832 ) ) );
				float3 lerpResult1234_g57823 = lerp( BaseColor_RGB40_g57823 , temp_output_1239_0_g57823 , Blend_DetailSecondaryMask755_g57823);
				float temp_output_1236_0_g57823 = ( 1.0 - Blend_DetailSecondaryMask755_g57823 );
				float3 appendResult1238_g57823 = (float3(temp_output_1236_0_g57823 , temp_output_1236_0_g57823 , temp_output_1236_0_g57823));
				float3 lerpResult1233_g57823 = lerp( temp_output_1239_0_g57823 , ( ( lerpResult1234_g57823 * Blend_DetailSecondaryMask755_g57823 ) + appendResult1238_g57823 ) , _DetailSecondaryMaskEnable);
				float3 BaseColor_DetailSecondary805_g57823 = lerpResult1233_g57823;
				float BaseColor_DetailSecondaryR1102_g57823 = Output_Fetch2D44_g57825.r;
				float lerpResult1103_g57823 = lerp( BaseColor_R1273_g57823 , BaseColor_DetailSecondaryR1102_g57823 , _DetailSecondaryBlendSource);
				float m_switch44_g57852 = (float)_DetailSecondaryBlendVertexColor;
				float m_Off44_g57852 = 1.0;
				float dotResult58_g57852 = dot( IN.ase_color.g , IN.ase_color.g );
				float dotResult61_g57852 = dot( IN.ase_color.b , IN.ase_color.b );
				float m_R44_g57852 = ( dotResult58_g57852 + dotResult61_g57852 );
				float dotResult57_g57852 = dot( IN.ase_color.r , IN.ase_color.r );
				float m_G44_g57852 = ( dotResult57_g57852 + dotResult58_g57852 );
				float m_B44_g57852 = ( dotResult57_g57852 + dotResult61_g57852 );
				float m_A44_g57852 = IN.ase_color.a;
				float localMaskVCSwitch44_g57852 = MaskVCSwitch44_g57852( m_switch44_g57852 , m_Off44_g57852 , m_R44_g57852 , m_G44_g57852 , m_B44_g57852 , m_A44_g57852 );
				float clampResult54_g57852 = clamp( ( ( localMaskVCSwitch44_g57852 * _DetailSecondaryBlendHeight ) / _DetailSecondaryBlendSmooth ) , 0.0 , 1.0 );
				float BlendSecondary786_g57823 = saturate( ( ( ( ( lerpResult1103_g57823 - 0.5 ) * ( ( 1.0 - _DetailSecondaryBlendStrength ) - 0.9 ) ) / ( 1.0 - _DetailSecondaryBlendSmooth ) ) + ( 1.0 - clampResult54_g57852 ) ) );
				float temp_output_1214_0_g57823 = ( 1.0 - BlendSecondary786_g57823 );
				float3 appendResult1216_g57823 = (float3(temp_output_1214_0_g57823 , temp_output_1214_0_g57823 , temp_output_1214_0_g57823));
				float3 temp_output_1217_0_g57823 = ( ( BaseColor_DetailSecondary805_g57823 * BlendSecondary786_g57823 ) + appendResult1216_g57823 );
				float temp_output_20_0_g57856 = _DetailSecondaryBlendHeightMin;
				float temp_output_21_0_g57856 = _DetailSecondaryBlendHeightMax;
				float smoothstepResult25_g57856 = smoothstep( temp_output_20_0_g57856 , temp_output_21_0_g57856 , WorldPosition1436_g57823.y);
				float DetailSecondaryBlendHeight1441_g57823 = smoothstepResult25_g57856;
				float3 lerpResult1455_g57823 = lerp( temp_output_1217_0_g57823 , temp_output_39_0_g57823 , DetailSecondaryBlendHeight1441_g57823);
				float3 lerpResult1459_g57823 = lerp( temp_output_1217_0_g57823 , lerpResult1455_g57823 , _DetailSecondaryBlendEnableAltitudeMask);
				float2 weightedBlendVar1117_g57823 = appendResult1114_g57823;
				float3 weightedAvg1117_g57823 = ( ( weightedBlendVar1117_g57823.x*temp_output_1180_0_g57823 + weightedBlendVar1117_g57823.y*( temp_output_39_0_g57823 * lerpResult1459_g57823 ) )/( weightedBlendVar1117_g57823.x + weightedBlendVar1117_g57823.y ) );
				float3 lerpResult489_g57823 = lerp( temp_output_1180_0_g57823 , weightedAvg1117_g57823 , _DetailSecondaryEnable);
				float temp_output_634_0_g57823 = ( _DetailEnable + ( ( _CATEGORY_DETAILMAPPING + _SPACE_DETAIL + _CATEGORY_DETAILMAPPINGSECONDARY + _SPACE_DETAILSECONDARY ) * 0.0 ) );
				float3 lerpResult409_g57823 = lerp( temp_output_39_0_g57823 , lerpResult489_g57823 , temp_output_634_0_g57823);
				
				float4 NORMAL_RGBA1382_g57857 = SAMPLE_TEXTURE2D( _BumpMap, sampler_BumpMap, UV213_g57857 );
				float3 unpack1891_g57857 = UnpackNormalScale( NORMAL_RGBA1382_g57857, _NormalStrength );
				unpack1891_g57857.z = lerp( 1, unpack1891_g57857.z, saturate(_NormalStrength) );
				float3 temp_output_38_0_g57823 = unpack1891_g57857;
				float localStochasticTiling159_g57834 = ( 0.0 );
				float2 UV159_g57834 = temp_output_1334_0_g57823;
				float4 TexelSize159_g57834 = _DetailNormalMap_TexelSize;
				float4 Offsets159_g57834 = float4( 0,0,0,0 );
				float2 Weights159_g57834 = float2( 0,0 );
				{
				UV159_g57834 = UV159_g57834 * TexelSize159_g57834.zw - 0.5;
				float2 f = frac( UV159_g57834 );
				UV159_g57834 -= f;
				float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				float4 xs = xn * xn * xn;
				float4 ys = yn * yn * yn;
				float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				float4 c = float4( UV159_g57834.x - 0.5, UV159_g57834.x + 1.5, UV159_g57834.y - 0.5, UV159_g57834.y + 1.5 );
				float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				float w0 = s.x / ( s.x + s.y );
				float w1 = s.z / ( s.z + s.w );
				Offsets159_g57834 = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize159_g57834.xyxy;
				Weights159_g57834 = float2( w0, w1 );
				}
				float4 Input_FetchOffsets70_g57833 = Offsets159_g57834;
				float2 Input_FetchWeights143_g57833 = Weights159_g57834;
				float2 break46_g57833 = Input_FetchWeights143_g57833;
				float4 lerpResult20_g57833 = lerp( SAMPLE_TEXTURE2D( _DetailNormalMap, sampler_BumpMap, (Input_FetchOffsets70_g57833).yw ) , SAMPLE_TEXTURE2D( _DetailNormalMap, sampler_BumpMap, (Input_FetchOffsets70_g57833).xw ) , break46_g57833.x);
				float4 lerpResult40_g57833 = lerp( SAMPLE_TEXTURE2D( _DetailNormalMap, sampler_BumpMap, (Input_FetchOffsets70_g57833).yz ) , SAMPLE_TEXTURE2D( _DetailNormalMap, sampler_BumpMap, (Input_FetchOffsets70_g57833).xz ) , break46_g57833.x);
				float4 lerpResult22_g57833 = lerp( lerpResult20_g57833 , lerpResult40_g57833 , break46_g57833.y);
				float4 Output_Fetch2D44_g57833 = lerpResult22_g57833;
				float3 unpack499_g57823 = UnpackNormalScale( Output_Fetch2D44_g57833, _DetailNormalStrength );
				unpack499_g57823.z = lerp( 1, unpack499_g57823.z, saturate(_DetailNormalStrength) );
				float3 Normal_In880_g57823 = temp_output_38_0_g57823;
				float3 lerpResult1286_g57823 = lerp( Normal_In880_g57823 , unpack499_g57823 , Blend_DetailMask986_g57823);
				float3 lerpResult1011_g57823 = lerp( unpack499_g57823 , lerpResult1286_g57823 , _DetailMaskEnable);
				float3 Normal_Detail199_g57823 = lerpResult1011_g57823;
				float layeredBlendVar1278_g57823 = Blend647_g57823;
				float3 layeredBlend1278_g57823 = ( lerp( temp_output_38_0_g57823,Normal_Detail199_g57823 , layeredBlendVar1278_g57823 ) );
				float localStochasticTiling159_g57826 = ( 0.0 );
				float2 UV159_g57826 = temp_output_1342_0_g57823;
				float4 TexelSize159_g57826 = _DetailSecondaryNormalMap_TexelSize;
				float4 Offsets159_g57826 = float4( 0,0,0,0 );
				float2 Weights159_g57826 = float2( 0,0 );
				{
				UV159_g57826 = UV159_g57826 * TexelSize159_g57826.zw - 0.5;
				float2 f = frac( UV159_g57826 );
				UV159_g57826 -= f;
				float4 xn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.xxxx;
				float4 yn = float4( 1.0, 2.0, 3.0, 4.0 ) - f.yyyy;
				float4 xs = xn * xn * xn;
				float4 ys = yn * yn * yn;
				float3 xv = float3( xs.x, xs.y - 4.0 * xs.x, xs.z - 4.0 * xs.y + 6.0 * xs.x );
				float3 yv = float3( ys.x, ys.y - 4.0 * ys.x, ys.z - 4.0 * ys.y + 6.0 * ys.x );
				float4 xc = float4( xv.xyz, 6.0 - xv.x - xv.y - xv.z );
				float4 yc = float4( yv.xyz, 6.0 - yv.x - yv.y - yv.z );
				float4 c = float4( UV159_g57826.x - 0.5, UV159_g57826.x + 1.5, UV159_g57826.y - 0.5, UV159_g57826.y + 1.5 );
				float4 s = float4( xc.x + xc.y, xc.z + xc.w, yc.x + yc.y, yc.z + yc.w );
				float w0 = s.x / ( s.x + s.y );
				float w1 = s.z / ( s.z + s.w );
				Offsets159_g57826 = ( c + float4( xc.y, xc.w, yc.y, yc.w ) / s ) * TexelSize159_g57826.xyxy;
				Weights159_g57826 = float2( w0, w1 );
				}
				float4 Input_FetchOffsets70_g57827 = Offsets159_g57826;
				float2 Input_FetchWeights143_g57827 = Weights159_g57826;
				float2 break46_g57827 = Input_FetchWeights143_g57827;
				float4 lerpResult20_g57827 = lerp( SAMPLE_TEXTURE2D( _DetailSecondaryNormalMap, sampler_BumpMap, (Input_FetchOffsets70_g57827).yw ) , SAMPLE_TEXTURE2D( _DetailSecondaryNormalMap, sampler_BumpMap, (Input_FetchOffsets70_g57827).xw ) , break46_g57827.x);
				float4 lerpResult40_g57827 = lerp( SAMPLE_TEXTURE2D( _DetailSecondaryNormalMap, sampler_BumpMap, (Input_FetchOffsets70_g57827).yz ) , SAMPLE_TEXTURE2D( _DetailSecondaryNormalMap, sampler_BumpMap, (Input_FetchOffsets70_g57827).xz ) , break46_g57827.x);
				float4 lerpResult22_g57827 = lerp( lerpResult20_g57827 , lerpResult40_g57827 , break46_g57827.y);
				float4 Output_Fetch2D44_g57827 = lerpResult22_g57827;
				float3 unpack500_g57823 = UnpackNormalScale( Output_Fetch2D44_g57827, _DetailSecondaryNormalStrength );
				unpack500_g57823.z = lerp( 1, unpack500_g57823.z, saturate(_DetailSecondaryNormalStrength) );
				float3 lerpResult1285_g57823 = lerp( Normal_In880_g57823 , unpack500_g57823 , Blend_DetailSecondaryMask755_g57823);
				float3 lerpResult1241_g57823 = lerp( unpack500_g57823 , lerpResult1285_g57823 , _DetailSecondaryMaskEnable);
				float3 Normal_DetailSecondary806_g57823 = lerpResult1241_g57823;
				float layeredBlendVar1280_g57823 = BlendSecondary786_g57823;
				float3 layeredBlend1280_g57823 = ( lerp( temp_output_38_0_g57823,Normal_DetailSecondary806_g57823 , layeredBlendVar1280_g57823 ) );
				float2 weightedBlendVar1118_g57823 = appendResult1114_g57823;
				float3 weightedAvg1118_g57823 = ( ( weightedBlendVar1118_g57823.x*layeredBlend1278_g57823 + weightedBlendVar1118_g57823.y*layeredBlend1280_g57823 )/( weightedBlendVar1118_g57823.x + weightedBlendVar1118_g57823.y ) );
				float3 lerpResult488_g57823 = lerp( layeredBlend1278_g57823 , weightedAvg1118_g57823 , _DetailSecondaryEnable);
				float3 break817_g57823 = lerpResult488_g57823;
				float3 appendResult820_g57823 = (float3(break817_g57823.x , break817_g57823.y , ( break817_g57823.z + 0.001 )));
				float3 lerpResult410_g57823 = lerp( temp_output_38_0_g57823 , appendResult820_g57823 , temp_output_634_0_g57823);
				
				float3 MASK_B1377_g57857 = (SAMPLE_TEXTURE2D( _MetallicGlossMap, sampler_MetallicGlossMap, UV213_g57857 )).rgb;
				
				float3 MASK_G158_g57857 = (SAMPLE_TEXTURE2D( _SmoothnessMap, sampler_SmoothnessMap, UV213_g57857 )).rgb;
				float3 temp_output_2651_0_g57857 = ( 1.0 - MASK_G158_g57857 );
				float3 lerpResult2650_g57857 = lerp( MASK_G158_g57857 , temp_output_2651_0_g57857 , _SmoothnessSource);
				float3 temp_output_2693_0_g57857 = ( lerpResult2650_g57857 * _SmoothnessStrength );
				float2 appendResult2645_g57857 = (float2(WorldViewDirection.xy));
				float3 appendResult2644_g57857 = (float3(appendResult2645_g57857 , ( WorldViewDirection.z / 1.06 )));
				float3 break2680_g57857 = unpack1891_g57857;
				float3 normalizeResult2641_g57857 = normalize( ( ( WorldTangent * break2680_g57857.x ) + ( WorldBiTangent * break2680_g57857.y ) + ( WorldNormal * break2680_g57857.z ) ) );
				float3 Normal_Per_Pixel2690_g57857 = normalizeResult2641_g57857;
				float fresnelNdotV2685_g57857 = dot( normalize( Normal_Per_Pixel2690_g57857 ), appendResult2644_g57857 );
				float fresnelNode2685_g57857 = ( 0.0 + ( 1.0 - _SmoothnessFresnelScale ) * pow( max( 1.0 - fresnelNdotV2685_g57857 , 0.0001 ), _SmoothnessFresnelPower ) );
				float3 temp_cast_13 = (fresnelNode2685_g57857).xxx;
				float3 lerpResult2636_g57857 = lerp( temp_output_2693_0_g57857 , ( temp_output_2693_0_g57857 - temp_cast_13 ) , _SmoothnessFresnelEnable);
				
				float3 MASK_R1378_g57857 = (SAMPLE_TEXTURE2D( _OcclusionMap, sampler_OcclusionMap, UV213_g57857 )).rgb;
				float3 lerpResult3415_g57857 = lerp( float3( 1,0,0 ) , MASK_R1378_g57857 , _OcclusionStrengthAO);
				float lerpResult3414_g57857 = lerp( 1.0 , IN.ase_color.a , _OcclusionStrengthAO);
				float3 temp_cast_15 = (lerpResult3414_g57857).xxx;
				float3 lerpResult2709_g57857 = lerp( lerpResult3415_g57857 , temp_cast_15 , _OcclusionSource);
				float3 temp_output_2730_0_g57857 = saturate( lerpResult2709_g57857 );
				

				float3 BaseColor = lerpResult409_g57823;
				float3 Normal = lerpResult410_g57823;
				float3 Emission = 0;
				float3 Specular = 0.5;
				float Metallic = ( _MetallicStrength * MASK_B1377_g57857 ).x;
				float Smoothness = saturate( lerpResult2636_g57857 ).x;
				float Occlusion = temp_output_2730_0_g57857.x;
				float Alpha = 1;
				float AlphaClipThreshold = 0.5;
				float AlphaClipThresholdShadow = 0.5;
				float3 BakedGI = 0;
				float3 RefractionColor = 1;
				float RefractionIndex = 1;
				float3 Transmission = 1;
				float3 Translucency = 1;

				#ifdef ASE_DEPTH_WRITE_ON
					float DepthValue = IN.positionCS.z;
				#endif

				#ifdef _ALPHATEST_ON
					clip(Alpha - AlphaClipThreshold);
				#endif

				InputData inputData = (InputData)0;
				inputData.positionWS = WorldPosition;
				inputData.positionCS = IN.positionCS;
				inputData.shadowCoord = ShadowCoords;

				#ifdef _NORMALMAP
					#if _NORMAL_DROPOFF_TS
						inputData.normalWS = TransformTangentToWorld(Normal, half3x3( WorldTangent, WorldBiTangent, WorldNormal ));
					#elif _NORMAL_DROPOFF_OS
						inputData.normalWS = TransformObjectToWorldNormal(Normal);
					#elif _NORMAL_DROPOFF_WS
						inputData.normalWS = Normal;
					#endif
				#else
					inputData.normalWS = WorldNormal;
				#endif

				inputData.normalWS = NormalizeNormalPerPixel(inputData.normalWS);
				inputData.viewDirectionWS = SafeNormalize( WorldViewDirection );

				inputData.vertexLighting = IN.fogFactorAndVertexLight.yzw;

				#if defined(ENABLE_TERRAIN_PERPIXEL_NORMAL)
					float3 SH = SampleSH(inputData.normalWS.xyz);
				#else
					float3 SH = IN.lightmapUVOrVertexSH.xyz;
				#endif

				#ifdef ASE_BAKEDGI
					inputData.bakedGI = BakedGI;
				#else
					#if defined(DYNAMICLIGHTMAP_ON)
						inputData.bakedGI = SAMPLE_GI( IN.lightmapUVOrVertexSH.xy, IN.dynamicLightmapUV.xy, SH, inputData.normalWS);
					#else
						inputData.bakedGI = SAMPLE_GI( IN.lightmapUVOrVertexSH.xy, SH, inputData.normalWS );
					#endif
				#endif

				inputData.normalizedScreenSpaceUV = NormalizedScreenSpaceUV;
				inputData.shadowMask = SAMPLE_SHADOWMASK(IN.lightmapUVOrVertexSH.xy);

				#if defined(DEBUG_DISPLAY)
					#if defined(DYNAMICLIGHTMAP_ON)
						inputData.dynamicLightmapUV = IN.dynamicLightmapUV.xy;
						#endif
					#if defined(LIGHTMAP_ON)
						inputData.staticLightmapUV = IN.lightmapUVOrVertexSH.xy;
					#else
						inputData.vertexSH = SH;
					#endif
				#endif

				#ifdef _DBUFFER
					ApplyDecal(IN.positionCS,
						BaseColor,
						Specular,
						inputData.normalWS,
						Metallic,
						Occlusion,
						Smoothness);
				#endif

				BRDFData brdfData;
				InitializeBRDFData
				(BaseColor, Metallic, Specular, Smoothness, Alpha, brdfData);

				Light mainLight = GetMainLight(inputData.shadowCoord, inputData.positionWS, inputData.shadowMask);
				half4 color;
				MixRealtimeAndBakedGI(mainLight, inputData.normalWS, inputData.bakedGI, inputData.shadowMask);
				color.rgb = GlobalIllumination(brdfData, inputData.bakedGI, Occlusion, inputData.positionWS, inputData.normalWS, inputData.viewDirectionWS);
				color.a = Alpha;

				#ifdef ASE_FINAL_COLOR_ALPHA_MULTIPLY
					color.rgb *= color.a;
				#endif

				#ifdef ASE_DEPTH_WRITE_ON
					outputDepth = DepthValue;
				#endif

				return BRDFDataToGbuffer(brdfData, inputData, Smoothness, Emission + color.rgb, Occlusion);
			}

			ENDHLSL
		}

		
		Pass
		{
			
			Name "SceneSelectionPass"
			Tags { "LightMode"="SceneSelectionPass" }

			Cull Off
			AlphaToMask Off

			HLSLPROGRAM

			#define _NORMAL_DROPOFF_TS 1
			#define ASE_FOG 1
			#define _NORMALMAP 1
			#define ASE_SRP_VERSION 120114
			#define ASE_USING_SAMPLING_MACROS 1


			#pragma vertex vert
			#pragma fragment frag

			#define SCENESELECTIONPASS 1

			#define ATTRIBUTES_NEED_NORMAL
			#define ATTRIBUTES_NEED_TANGENT
			#define SHADERPASS SHADERPASS_DEPTHONLY

			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Color.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Input.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ShaderGraphFunctions.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/ShaderPass.hlsl"

			

			struct VertexInput
			{
				float4 positionOS : POSITION;
				float3 normalOS : NORMAL;
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct VertexOutput
			{
				float4 positionCS : SV_POSITION;
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			CBUFFER_START(UnityPerMaterial)
			float4 _DetailMaskMap_TexelSize;
			float4 _DetailSecondaryMaskUVs;
			float4 _DetailMaskUVs;
			float4 _DetailColorMap_TexelSize;
			float4 _DetailUVs;
			float4 _DetailNormalMap_TexelSize;
			float4 _DetailSecondaryNormalMap_TexelSize;
			float4 _MainUVs;
			half4 _DetailColor;
			half4 _BaseColor;
			float4 _DetailSecondaryColorMap_TexelSize;
			half4 _DetailSecondaryColor;
			float4 _DetailSecondaryUVs;
			float4 _DetailSecondaryMaskMap_TexelSize;
			half _DetailSecondaryBlendHeight;
			int _DetailSecondaryBlendVertexColor;
			half _DetailSecondaryBlendSmooth;
			half _DetailSecondaryBlendStrength;
			half _DetailSecondaryBlendSource;
			half _DetailSecondaryMaskIsInverted;
			half _DetailSecondaryMaskEnable;
			half _DetailSecondaryBlendHeightMin;
			half _DetailSecondaryMaskBlendFalloff;
			half _DetailSecondaryMaskBlendStrength;
			half _DetailSecondaryMaskBlendHardness;
			half _DetailSecondaryBlendHeightMax;
			int _Cull;
			float _DetailSecondaryEnable;
			half _SmoothnessFresnelEnable;
			half _SmoothnessFresnelPower;
			half _SmoothnessFresnelScale;
			half _SmoothnessStrength;
			half _SmoothnessSource;
			float _MetallicStrength;
			float _DetailSecondaryBlendEnableAltitudeMask;
			half _DetailSecondaryNormalStrength;
			half _NormalStrength;
			float _SPACE_DETAILSECONDARY;
			float _CATEGORY_DETAILMAPPINGSECONDARY;
			float _SPACE_DETAIL;
			float _CATEGORY_DETAILMAPPING;
			half _DetailEnable;
			half _DetailNormalStrength;
			half _DetailSecondaryMaskUVRotation;
			half _DetailSecondaryUVMode;
			half _DetailSecondaryBrightness;
			float _SPACE_TRANSLUCENCY;
			float _CATEGORY_TRANSMISSION;
			float _CATEGORY_SURFACEINPUTS;
			float _SPACE_SURFACEINPUTS;
			float _SPACE_COLOR;
			float _CATEGORY_COLOR;
			float _UVMode;
			float _BaseColorSaturation;
			half _Brightness;
			half _DetailUVRotation;
			half _DetailUVMode;
			half _DetailBrightness;
			float _DetailSaturation;
			half _DetailMaskUVRotation;
			half _DetailMaskIsInverted;
			half _DetailMaskBlendStrength;
			half _DetailMaskBlendHardness;
			half _OcclusionStrengthAO;
			half _DetailSecondaryUVRotation;
			float _DetailSecondaryBlendWeightLayer2;
			float _DetailSecondaryBlendWeightLayer1;
			float _DetailBlendEnableAltitudeMask;
			half _DetailBlendHeightMax;
			float _DetailSecondarySaturation;
			half _DetailBlendHeightMin;
			int _DetailBlendVertexColor;
			half _DetailBlendSmooth;
			half _DetailBlendStrength;
			half _DetailBlendSource;
			half _DetailMaskEnable;
			half _DetailMaskBlendFalloff;
			half _DetailBlendHeight;
			half _OcclusionSource;
			#ifdef ASE_TRANSMISSION
				float _TransmissionShadow;
			#endif
			#ifdef ASE_TRANSLUCENCY
				float _TransStrength;
				float _TransNormal;
				float _TransScattering;
				float _TransDirect;
				float _TransAmbient;
				float _TransShadow;
			#endif
			#ifdef ASE_TESSELLATION
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			CBUFFER_END

			#ifdef SCENEPICKINGPASS
				float4 _SelectionID;
			#endif

			#ifdef SCENESELECTIONPASS
				int _ObjectId;
				int _PassValue;
			#endif

			

			float4 mod289( float4 x )
			{
				return x - floor(x * (1.0 / 289.0)) * 289.0;
			}
			
			float4 perm( float4 x )
			{
				return mod289(((x * 34.0) + 1.0) * x);
			}
			
			float SimpleNoise3D( float3 p )
			{
				 float3 a = floor(p);
				    float3 d = p - a;
				    d = d * d * (3.0 - 2.0 * d);
				 float4 b = a.xxyy + float4(0.0, 1.0, 0.0, 1.0);
				    float4 k1 = perm(b.xyxy);
				 float4 k2 = perm(k1.xyxy + b.zzww);
				    float4 c = k2 + a.zzzz;
				    float4 k3 = perm(c);
				    float4 k4 = perm(c + 1.0);
				    float4 o1 = frac(k3 * (1.0 / 41.0));
				 float4 o2 = frac(k4 * (1.0 / 41.0));
				    float4 o3 = o2 * d.z + o1 * (1.0 - d.z);
				    float2 o4 = o3.yw * d.x + o3.xz * (1.0 - d.x);
				    return o4.y * d.y + o4.x * (1.0 - d.y);
			}
			

			struct SurfaceDescription
			{
				float Alpha;
				float AlphaClipThreshold;
			};

			VertexOutput VertexFunction(VertexInput v  )
			{
				VertexOutput o;
				ZERO_INITIALIZE(VertexOutput, o);

				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);

				

				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = v.positionOS.xyz;
				#else
					float3 defaultVertexValue = float3(0, 0, 0);
				#endif

				float3 vertexValue = defaultVertexValue;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
					v.positionOS.xyz = vertexValue;
				#else
					v.positionOS.xyz += vertexValue;
				#endif

				v.normalOS = v.normalOS;

				float3 positionWS = TransformObjectToWorld( v.positionOS.xyz );

				o.positionCS = TransformWorldToHClip(positionWS);

				return o;
			}

			#if defined(ASE_TESSELLATION)
			struct VertexControl
			{
				float4 vertex : INTERNALTESSPOS;
				float3 normalOS : NORMAL;
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl vert ( VertexInput v )
			{
				VertexControl o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				o.vertex = v.positionOS;
				o.normalOS = v.normalOS;
				
				return o;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> v)
			{
				TessellationFactors o;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), _WorldSpaceCameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams, unity_CameraWorldClipPlanes );
				#endif
				o.edge[0] = tf.x; o.edge[1] = tf.y; o.edge[2] = tf.z; o.inside = tf.w;
				return o;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
				return patch[id];
			}

			[domain("tri")]
			VertexOutput DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				VertexInput o = (VertexInput) 0;
				o.positionOS = patch[0].vertex * bary.x + patch[1].vertex * bary.y + patch[2].vertex * bary.z;
				o.normalOS = patch[0].normalOS * bary.x + patch[1].normalOS * bary.y + patch[2].normalOS * bary.z;
				
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = o.positionOS.xyz - patch[i].normalOS * (dot(o.positionOS.xyz, patch[i].normalOS) - dot(patch[i].vertex.xyz, patch[i].normalOS));
				float phongStrength = _TessPhongStrength;
				o.positionOS.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * o.positionOS.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], o);
				return VertexFunction(o);
			}
			#else
			VertexOutput vert ( VertexInput v )
			{
				return VertexFunction( v );
			}
			#endif

			half4 frag(VertexOutput IN ) : SV_TARGET
			{
				SurfaceDescription surfaceDescription = (SurfaceDescription)0;

				

				surfaceDescription.Alpha = 1;
				surfaceDescription.AlphaClipThreshold = 0.5;

				#if _ALPHATEST_ON
					float alphaClipThreshold = 0.01f;
					#if ALPHA_CLIP_THRESHOLD
						alphaClipThreshold = surfaceDescription.AlphaClipThreshold;
					#endif
					clip(surfaceDescription.Alpha - alphaClipThreshold);
				#endif

				half4 outColor = 0;

				#ifdef SCENESELECTIONPASS
					outColor = half4(_ObjectId, _PassValue, 1.0, 1.0);
				#elif defined(SCENEPICKINGPASS)
					outColor = _SelectionID;
				#endif

				return outColor;
			}

			ENDHLSL
		}

		
		Pass
		{
			
			Name "ScenePickingPass"
			Tags { "LightMode"="Picking" }

			AlphaToMask Off

			HLSLPROGRAM

			#define _NORMAL_DROPOFF_TS 1
			#define ASE_FOG 1
			#define _NORMALMAP 1
			#define ASE_SRP_VERSION 120114
			#define ASE_USING_SAMPLING_MACROS 1


			#pragma vertex vert
			#pragma fragment frag

		    #define SCENEPICKINGPASS 1

			#define ATTRIBUTES_NEED_NORMAL
			#define ATTRIBUTES_NEED_TANGENT
			#define SHADERPASS SHADERPASS_DEPTHONLY

			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Color.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/Texture.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Input.hlsl"
			#include "Packages/com.unity.render-pipelines.core/ShaderLibrary/TextureStack.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/ShaderGraphFunctions.hlsl"
			#include "Packages/com.unity.render-pipelines.universal/Editor/ShaderGraph/Includes/ShaderPass.hlsl"

			

			struct VertexInput
			{
				float4 positionOS : POSITION;
				float3 normalOS : NORMAL;
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct VertexOutput
			{
				float4 positionCS : SV_POSITION;
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			CBUFFER_START(UnityPerMaterial)
			float4 _DetailMaskMap_TexelSize;
			float4 _DetailSecondaryMaskUVs;
			float4 _DetailMaskUVs;
			float4 _DetailColorMap_TexelSize;
			float4 _DetailUVs;
			float4 _DetailNormalMap_TexelSize;
			float4 _DetailSecondaryNormalMap_TexelSize;
			float4 _MainUVs;
			half4 _DetailColor;
			half4 _BaseColor;
			float4 _DetailSecondaryColorMap_TexelSize;
			half4 _DetailSecondaryColor;
			float4 _DetailSecondaryUVs;
			float4 _DetailSecondaryMaskMap_TexelSize;
			half _DetailSecondaryBlendHeight;
			int _DetailSecondaryBlendVertexColor;
			half _DetailSecondaryBlendSmooth;
			half _DetailSecondaryBlendStrength;
			half _DetailSecondaryBlendSource;
			half _DetailSecondaryMaskIsInverted;
			half _DetailSecondaryMaskEnable;
			half _DetailSecondaryBlendHeightMin;
			half _DetailSecondaryMaskBlendFalloff;
			half _DetailSecondaryMaskBlendStrength;
			half _DetailSecondaryMaskBlendHardness;
			half _DetailSecondaryBlendHeightMax;
			int _Cull;
			float _DetailSecondaryEnable;
			half _SmoothnessFresnelEnable;
			half _SmoothnessFresnelPower;
			half _SmoothnessFresnelScale;
			half _SmoothnessStrength;
			half _SmoothnessSource;
			float _MetallicStrength;
			float _DetailSecondaryBlendEnableAltitudeMask;
			half _DetailSecondaryNormalStrength;
			half _NormalStrength;
			float _SPACE_DETAILSECONDARY;
			float _CATEGORY_DETAILMAPPINGSECONDARY;
			float _SPACE_DETAIL;
			float _CATEGORY_DETAILMAPPING;
			half _DetailEnable;
			half _DetailNormalStrength;
			half _DetailSecondaryMaskUVRotation;
			half _DetailSecondaryUVMode;
			half _DetailSecondaryBrightness;
			float _SPACE_TRANSLUCENCY;
			float _CATEGORY_TRANSMISSION;
			float _CATEGORY_SURFACEINPUTS;
			float _SPACE_SURFACEINPUTS;
			float _SPACE_COLOR;
			float _CATEGORY_COLOR;
			float _UVMode;
			float _BaseColorSaturation;
			half _Brightness;
			half _DetailUVRotation;
			half _DetailUVMode;
			half _DetailBrightness;
			float _DetailSaturation;
			half _DetailMaskUVRotation;
			half _DetailMaskIsInverted;
			half _DetailMaskBlendStrength;
			half _DetailMaskBlendHardness;
			half _OcclusionStrengthAO;
			half _DetailSecondaryUVRotation;
			float _DetailSecondaryBlendWeightLayer2;
			float _DetailSecondaryBlendWeightLayer1;
			float _DetailBlendEnableAltitudeMask;
			half _DetailBlendHeightMax;
			float _DetailSecondarySaturation;
			half _DetailBlendHeightMin;
			int _DetailBlendVertexColor;
			half _DetailBlendSmooth;
			half _DetailBlendStrength;
			half _DetailBlendSource;
			half _DetailMaskEnable;
			half _DetailMaskBlendFalloff;
			half _DetailBlendHeight;
			half _OcclusionSource;
			#ifdef ASE_TRANSMISSION
				float _TransmissionShadow;
			#endif
			#ifdef ASE_TRANSLUCENCY
				float _TransStrength;
				float _TransNormal;
				float _TransScattering;
				float _TransDirect;
				float _TransAmbient;
				float _TransShadow;
			#endif
			#ifdef ASE_TESSELLATION
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			CBUFFER_END

			#ifdef SCENEPICKINGPASS
				float4 _SelectionID;
			#endif

			#ifdef SCENESELECTIONPASS
				int _ObjectId;
				int _PassValue;
			#endif

			

			float4 mod289( float4 x )
			{
				return x - floor(x * (1.0 / 289.0)) * 289.0;
			}
			
			float4 perm( float4 x )
			{
				return mod289(((x * 34.0) + 1.0) * x);
			}
			
			float SimpleNoise3D( float3 p )
			{
				 float3 a = floor(p);
				    float3 d = p - a;
				    d = d * d * (3.0 - 2.0 * d);
				 float4 b = a.xxyy + float4(0.0, 1.0, 0.0, 1.0);
				    float4 k1 = perm(b.xyxy);
				 float4 k2 = perm(k1.xyxy + b.zzww);
				    float4 c = k2 + a.zzzz;
				    float4 k3 = perm(c);
				    float4 k4 = perm(c + 1.0);
				    float4 o1 = frac(k3 * (1.0 / 41.0));
				 float4 o2 = frac(k4 * (1.0 / 41.0));
				    float4 o3 = o2 * d.z + o1 * (1.0 - d.z);
				    float2 o4 = o3.yw * d.x + o3.xz * (1.0 - d.x);
				    return o4.y * d.y + o4.x * (1.0 - d.y);
			}
			

			struct SurfaceDescription
			{
				float Alpha;
				float AlphaClipThreshold;
			};

			VertexOutput VertexFunction(VertexInput v  )
			{
				VertexOutput o;
				ZERO_INITIALIZE(VertexOutput, o);

				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);

				

				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = v.positionOS.xyz;
				#else
					float3 defaultVertexValue = float3(0, 0, 0);
				#endif

				float3 vertexValue = defaultVertexValue;

				#ifdef ASE_ABSOLUTE_VERTEX_POS
					v.positionOS.xyz = vertexValue;
				#else
					v.positionOS.xyz += vertexValue;
				#endif

				v.normalOS = v.normalOS;

				float3 positionWS = TransformObjectToWorld( v.positionOS.xyz );
				o.positionCS = TransformWorldToHClip(positionWS);

				return o;
			}

			#if defined(ASE_TESSELLATION)
			struct VertexControl
			{
				float4 vertex : INTERNALTESSPOS;
				float3 normalOS : NORMAL;
				
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl vert ( VertexInput v )
			{
				VertexControl o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				o.vertex = v.positionOS;
				o.normalOS = v.normalOS;
				
				return o;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> v)
			{
				TessellationFactors o;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, tessValue, tessMin, tessMax, GetObjectToWorldMatrix(), _WorldSpaceCameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, tessMaxDisp, GetObjectToWorldMatrix(), _WorldSpaceCameraPos, _ScreenParams, unity_CameraWorldClipPlanes );
				#endif
				o.edge[0] = tf.x; o.edge[1] = tf.y; o.edge[2] = tf.z; o.inside = tf.w;
				return o;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
				return patch[id];
			}

			[domain("tri")]
			VertexOutput DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				VertexInput o = (VertexInput) 0;
				o.positionOS = patch[0].vertex * bary.x + patch[1].vertex * bary.y + patch[2].vertex * bary.z;
				o.normalOS = patch[0].normalOS * bary.x + patch[1].normalOS * bary.y + patch[2].normalOS * bary.z;
				
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = o.positionOS.xyz - patch[i].normalOS * (dot(o.positionOS.xyz, patch[i].normalOS) - dot(patch[i].vertex.xyz, patch[i].normalOS));
				float phongStrength = _TessPhongStrength;
				o.positionOS.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * o.positionOS.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], o);
				return VertexFunction(o);
			}
			#else
			VertexOutput vert ( VertexInput v )
			{
				return VertexFunction( v );
			}
			#endif

			half4 frag(VertexOutput IN ) : SV_TARGET
			{
				SurfaceDescription surfaceDescription = (SurfaceDescription)0;

				

				surfaceDescription.Alpha = 1;
				surfaceDescription.AlphaClipThreshold = 0.5;

				#if _ALPHATEST_ON
					float alphaClipThreshold = 0.01f;
					#if ALPHA_CLIP_THRESHOLD
						alphaClipThreshold = surfaceDescription.AlphaClipThreshold;
					#endif
						clip(surfaceDescription.Alpha - alphaClipThreshold);
				#endif

				half4 outColor = 0;

				#ifdef SCENESELECTIONPASS
					outColor = half4(_ObjectId, _PassValue, 1.0, 1.0);
				#elif defined(SCENEPICKINGPASS)
					outColor = _SelectionID;
				#endif

				return outColor;
			}

			ENDHLSL
		}
		
	}
	
	CustomEditor "ALP8310_ShaderGUI"
	FallBack "Hidden/Shader Graph/FallbackError"
	
	Fallback Off
}
/*ASEBEGIN
Version=19303
Node;AmplifyShaderEditor.FunctionNode;387;1120,-704;Inherit;False;DESF Module Detail;161;;57823;49c077198be2bdb409ab6ad879c0ca28;17,666,1,1023,1,1260,1,665,1,663,1,662,1,1006,1,1012,1,650,1,1067,1,727,1,726,1,874,1,602,1,945,1,1075,1,1316,0;4;39;FLOAT3;0,0,0;False;38;FLOAT3;0,0,1;False;456;SAMPLERSTATE;0;False;464;SAMPLERSTATE;0;False;2;FLOAT3;73;FLOAT3;72
Node;AmplifyShaderEditor.IntNode;409;1408,-720;Inherit;False;Property;_Cull;Render Face;0;2;[HideInInspector];[Enum];Create;False;0;0;1;Front,2,Back,1,Both,0;True;0;False;2;2;False;0;1;INT;0
Node;AmplifyShaderEditor.FunctionNode;433;704,-640;Inherit;False;DESF Core Lit;1;;57857;e0cdd7758f4404849b063afff4596424;39,442,2,1557,1,1749,1,1556,1,2284,0,2283,0,2213,0,2481,0,2411,0,2399,0,2172,0,2282,0,3300,0,3301,0,3299,0,2132,0,3146,0,2311,0,3108,0,3119,0,3076,0,3408,0,3291,0,3290,0,3289,0,3287,0,96,0,2591,0,2559,0,1368,0,2125,1,2131,0,2028,0,1333,0,2126,0,1896,0,1415,0,830,0,2523,1;1;1234;FLOAT3;0,0,0;False;17;FLOAT3;38;FLOAT3;35;FLOAT3;37;FLOAT3;1922;FLOAT3;33;FLOAT3;34;FLOAT;46;FLOAT;814;FLOAT;1660;FLOAT3;656;FLOAT3;657;FLOAT3;655;FLOAT3;1235;FLOAT3;2760;SAMPLERSTATE;1819;SAMPLERSTATE;1824;SAMPLERSTATE;1818
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;423;1374.904,-640;Float;False;False;-1;2;DE_ShaderGUI;0;1;New Amplify Shader;94348b07e5e8bab40bd6c8a1e3df54cd;True;ExtraPrePass;0;0;ExtraPrePass;5;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;0;False;;False;False;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;True;True;0;False;;0;False;;True;4;RenderPipeline=UniversalPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;UniversalMaterialType=Lit;True;5;True;12;all;0;False;True;1;1;False;;0;False;;0;1;False;;0;False;;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;True;True;True;True;0;False;;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;True;True;0;False;;0;False;;True;0;False;False;0;Hidden/DE/Utility/Fallback;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;425;1374.904,-680.6909;Float;False;False;-1;2;DE_ShaderGUI;0;1;New Amplify Shader;94348b07e5e8bab40bd6c8a1e3df54cd;True;ShadowCaster;0;2;ShadowCaster;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;0;False;;False;False;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;True;True;0;False;;0;False;;True;4;RenderPipeline=UniversalPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;UniversalMaterialType=Lit;True;5;True;12;all;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;;False;False;False;True;False;False;False;False;0;False;;False;False;False;False;False;False;False;False;False;True;1;False;;True;3;False;;False;True;1;LightMode=ShadowCaster;False;False;0;Hidden/DE/Utility/Fallback;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;426;1374.904,-680.6909;Float;False;False;-1;2;DE_ShaderGUI;0;1;New Amplify Shader;94348b07e5e8bab40bd6c8a1e3df54cd;True;DepthOnly;0;3;DepthOnly;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;0;False;;False;False;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;True;True;0;False;;0;False;;True;4;RenderPipeline=UniversalPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;UniversalMaterialType=Lit;True;5;True;12;all;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;;False;False;False;True;False;False;False;False;0;False;;False;False;False;False;False;False;False;False;False;True;1;False;;False;False;True;1;LightMode=DepthOnly;False;False;0;Hidden/DE/Utility/Fallback;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;427;1374.904,-680.6909;Float;False;False;-1;2;DE_ShaderGUI;0;1;New Amplify Shader;94348b07e5e8bab40bd6c8a1e3df54cd;True;Meta;0;4;Meta;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;0;False;;False;False;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;True;True;0;False;;0;False;;True;4;RenderPipeline=UniversalPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;UniversalMaterialType=Lit;True;5;True;12;all;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;LightMode=Meta;False;False;0;Hidden/DE/Utility/Fallback;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;428;1374.904,-680.6909;Float;False;False;-1;2;DE_ShaderGUI;0;1;New Amplify Shader;94348b07e5e8bab40bd6c8a1e3df54cd;True;Universal2D;0;5;Universal2D;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;0;False;;False;False;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;True;True;0;False;;0;False;;True;4;RenderPipeline=UniversalPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;UniversalMaterialType=Lit;True;5;True;12;all;0;False;True;1;1;False;;0;False;;1;1;False;;0;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;True;True;True;True;0;False;;False;False;False;False;False;False;False;False;False;True;1;False;;True;3;False;;True;True;0;False;;0;False;;True;1;LightMode=Universal2D;False;False;0;Hidden/DE/Utility/Fallback;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;429;1374.904,-680.6909;Float;False;False;-1;2;DE_ShaderGUI;0;1;New Amplify Shader;94348b07e5e8bab40bd6c8a1e3df54cd;True;DepthNormals;0;6;DepthNormals;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;0;False;;False;False;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;True;True;0;False;;0;False;;True;4;RenderPipeline=UniversalPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;UniversalMaterialType=Lit;True;5;True;12;all;0;False;True;1;1;False;;0;False;;0;1;False;;0;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;False;;True;3;False;;False;True;1;LightMode=DepthNormals;False;False;0;Hidden/DE/Utility/Fallback;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;430;1374.904,-680.6909;Float;False;False;-1;2;DE_ShaderGUI;0;1;New Amplify Shader;94348b07e5e8bab40bd6c8a1e3df54cd;True;GBuffer;0;7;GBuffer;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;0;False;;False;False;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;True;True;0;False;;0;False;;True;4;RenderPipeline=UniversalPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;UniversalMaterialType=Lit;True;5;True;12;all;0;False;True;1;1;False;;0;False;;1;1;False;;0;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;True;True;True;True;0;False;;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;True;True;0;False;;0;False;;True;1;LightMode=UniversalGBuffer;False;False;0;Hidden/DE/Utility/Fallback;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;431;1374.904,-680.6909;Float;False;False;-1;2;DE_ShaderGUI;0;1;New Amplify Shader;94348b07e5e8bab40bd6c8a1e3df54cd;True;SceneSelectionPass;0;8;SceneSelectionPass;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;0;False;;False;False;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;True;True;0;False;;0;False;;True;4;RenderPipeline=UniversalPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;UniversalMaterialType=Lit;True;5;True;12;all;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;2;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;LightMode=SceneSelectionPass;False;False;0;Hidden/DE/Utility/Fallback;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;432;1374.904,-680.6909;Float;False;False;-1;2;DE_ShaderGUI;0;1;New Amplify Shader;94348b07e5e8bab40bd6c8a1e3df54cd;True;ScenePickingPass;0;9;ScenePickingPass;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;0;False;;False;False;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;True;True;0;False;;0;False;;True;4;RenderPipeline=UniversalPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;UniversalMaterialType=Lit;True;5;True;12;all;0;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;LightMode=Picking;False;False;0;Hidden/DE/Utility/Fallback;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;424;1408,-640;Float;False;True;-1;2;ALP8310_ShaderGUI;0;12;ALP/Surface Detail;94348b07e5e8bab40bd6c8a1e3df54cd;True;Forward;0;1;Forward;21;False;False;False;False;False;False;False;False;False;False;False;False;True;0;False;;True;True;0;True;_Cull;False;False;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;True;True;0;False;;0;False;;True;4;RenderPipeline=UniversalPipeline;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;UniversalMaterialType=Lit;True;5;True;12;all;0;False;True;1;1;False;;0;False;;1;1;False;;0;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;True;True;True;True;0;False;;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;True;True;0;False;;0;False;;True;1;LightMode=UniversalForward;False;False;0;;0;0;Standard;39;Workflow;1;0;Surface;0;0;  Refraction Model;0;0;  Blend;0;0;Two Sided;1;0;Fragment Normal Space,InvertActionOnDeselection;0;0;Forward Only;0;0;Transmission;0;0;  Transmission Shadow;0.5,True,_ASETransmissionShadow;0;Translucency;0;0;  Translucency Strength;1,True,_ASETranslucencyStrength;0;  Normal Distortion;0.5,True,_ASETranslucencyNormalDistortion;0;  Scattering;2,True,_ASETranslucencyScattering;0;  Direct;0.9,True,_ASETranslucencyScattering;0;  Ambient;0.1,True,_ASETranslucencyAmbient;0;  Shadow;0.5,True,_ASETranslucencyShadow;0;Cast Shadows;1;0;  Use Shadow Threshold;0;0;GPU Instancing;1;0;LOD CrossFade;1;0;Built-in Fog;1;0;_FinalColorxAlpha;0;0;Meta Pass;1;0;Override Baked GI;0;0;Extra Pre Pass;0;0;Tessellation;0;0;  Phong;0;0;  Strength;0.5,True,_TessellationPhong;0;  Type;0;0;  Tess;16,True,_TessellationStrength;0;  Min;10,True,_TessellationDistanceMin;0;  Max;25,True,_TessellationDistanceMax;0;  Edge Length;16,False,;0;  Max Displacement;25,False,;0;Write Depth;0;0;  Early Z;0;0;Vertex Position,InvertActionOnDeselection;1;0;Debug Display;0;0;Clear Coat;0;0;0;10;False;True;True;True;True;True;True;True;True;True;False;;True;0
WireConnection;387;39;433;38
WireConnection;387;38;433;35
WireConnection;387;456;433;1819
WireConnection;387;464;433;1824
WireConnection;424;0;387;73
WireConnection;424;1;387;72
WireConnection;424;3;433;37
WireConnection;424;4;433;33
WireConnection;424;5;433;34
ASEEND*/
//CHKSM=04AEF3678298EAB62A3CD4A76696E5EBBE6936E3