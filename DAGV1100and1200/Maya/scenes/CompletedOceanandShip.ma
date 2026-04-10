//Maya ASCII 2025ff03 scene
//Name: CompletedOceanandShip.ma
//Last modified: Fri, Apr 10, 2026 01:23:36 PM
//Codeset: 1252
file -rdi 1 -ns "ship" -rfn "shipRN" -op "v=0;" -typ "mayaAscii" "C:/Users/11085677/Documents/Essentials/DAGV1100and1200/Maya//assets/ship.ma";
file -r -ns "ship" -dr 1 -rfn "shipRN" -op "v=0;" -typ "mayaAscii" "C:/Users/11085677/Documents/Essentials/DAGV1100and1200/Maya//assets/ship.ma";
requires maya "2025ff03";
requires -nodeType "BossBlender" -nodeType "BossGeoProperties" -nodeType "BossWaveSolver"
		 -nodeType "BossSpectralWave" "Boss" "2.11.0.0";
requires "stereoCamera" "10.0";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" -nodeType "aiImagerDenoiserOidn"
		 "mtoa" "5.4.5";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2025";
fileInfo "version" "2025";
fileInfo "cutIdentifier" "202409190603-cbdc5a7e54";
fileInfo "osv" "Windows 11 Enterprise v2009 (Build: 26200)";
fileInfo "UUID" "301BDF80-4A78-947B-0B6E-57B05461C472";
fileInfo "license" "education";
createNode transform -s -n "persp";
	rename -uid "908E686F-4121-FFE0-046C-69927F02F872";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.38119377075722194 6.4225328290148189 37.155678440718312 ;
	setAttr ".r" -type "double3" -8.5308868563766485 1.224793825372184 -4.439751748651741e-12 ;
	setAttr ".rp" -type "double3" -1.1102230246251565e-16 5.5511151231257827e-16 7.1054273576010019e-15 ;
	setAttr ".rpt" -type "double3" -1.1246445412008641e-15 1.5497745053921829e-14 1.3590898009857359e-14 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "9E82D8D6-4BA5-249E-7D53-A0894A179D5F";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999979;
	setAttr ".coi" 38.645804704241698;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -1.1981105904427694 0.68971577983924881 -1.0538187665047261 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "5BC4391E-4142-1C97-85B5-C4AE808EA1CD";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "2B220692-44B8-855D-CBB8-CE92B48BECD8";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "B39D2C2F-46BD-C074-9638-70A30A11AAAC";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "BF250094-4AC6-D3BD-7E6B-618ABC6E38AC";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "81E9BF1C-4CB5-4EAA-E730-418AFF3A79BD";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "65ED99E2-46D3-943B-842E-828DE0303933";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "ocean";
	rename -uid "0EE3596A-4846-0558-2B43-DF9869FBC733";
createNode mesh -n "oceanShape" -p "ocean";
	rename -uid "CF55C2E5-4CA9-36AB-CC69-E4A30020176B";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "BossOutput";
	rename -uid "EE605EFB-4DCB-314C-46E0-18AECF22866E";
createNode mesh -n "BossOutputShape" -p "BossOutput";
	rename -uid "F7793EB6-4BBD-D124-7359-889B2D09E229";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "885A8B7C-43FF-7449-CC10-D8926E3F0841";
	setAttr -s 6 ".lnk";
	setAttr -s 6 ".slnk";
createNode displayLayerManager -n "layerManager";
	rename -uid "0C7A4940-4D0D-B6B3-D8C9-1296E261561F";
createNode displayLayer -n "defaultLayer";
	rename -uid "2AC5C961-4B15-F82C-AAF2-C28EE72F968E";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "881FEB81-4757-9857-64A2-52B5CDC37A0D";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "8E90F647-4F4C-258D-70FE-1380CFD2ED67";
	setAttr ".g" yes;
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "C966FE2D-48B2-E620-27D0-E5BAB47E17EB";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "168D7F12-41DA-61C8-9FD5-E3BBF92BCD92";
createNode reference -n "shipRN";
	rename -uid "14422221-4E39-4BA7-5D95-CCA0F97A3BF0";
	setAttr -s 23 ".phl";
	setAttr ".phl[1]" 0;
	setAttr ".phl[2]" 0;
	setAttr ".phl[3]" 0;
	setAttr ".phl[4]" 0;
	setAttr ".phl[5]" 0;
	setAttr ".phl[6]" 0;
	setAttr ".phl[7]" 0;
	setAttr ".phl[8]" 0;
	setAttr ".phl[9]" 0;
	setAttr ".phl[10]" 0;
	setAttr ".phl[11]" 0;
	setAttr ".phl[12]" 0;
	setAttr ".phl[13]" 0;
	setAttr ".phl[14]" 0;
	setAttr ".phl[15]" 0;
	setAttr ".phl[16]" 0;
	setAttr ".phl[17]" 0;
	setAttr ".phl[18]" 0;
	setAttr ".phl[19]" 0;
	setAttr ".phl[20]" 0;
	setAttr ".phl[21]" 0;
	setAttr ".phl[22]" 0;
	setAttr ".phl[23]" 0;
	setAttr ".ed" -type "dataReferenceEdits" 
		"shipRN"
		"shipRN" 0
		"shipRN" 36
		2 "|ship:ship|ship:shipGeo" "rotatePivotTranslate" " -type \"double3\" 0 0 0"
		
		2 "|ship:ship|ship:shipGeo|ship:shipGeoShape" "instObjGroups.objectGroups" 
		" -s 2"
		3 "|ship:ship|ship:collider|ship:colliderShape.instObjGroups" ":initialShadingGroup.dagSetMembers" 
		"-na"
		3 "|ship:ship|ship:shipGeo|ship:shipGeoShape.instObjGroups.objectGroups[1]" 
		"ship:SailFBXASC032FullSG.dagSetMembers" "-na"
		3 "ship:groupId47.message" "ship:SailFBXASC032FullSG.groupNodes" "-na"
		3 "|ship:ship|ship:shipGeo|ship:shipGeoShape.instObjGroups.objectGroups[0]" 
		"ship:RiggingFBXASC032PinSG.dagSetMembers" "-na"
		3 "ship:groupId46.message" "ship:RiggingFBXASC032PinSG.groupNodes" "-na"
		3 "|ship:ship|ship:shipGeo|ship:shipGeoShape.compInstObjGroups.compObjectGroups[0]" 
		"ship:RiggingFBXASC032PinSG.dagSetMembers" "-na"
		3 "ship:groupId46.groupId" "|ship:ship|ship:shipGeo|ship:shipGeoShape.instObjGroups.objectGroups[0].objectGroupId" 
		""
		3 "ship:RiggingFBXASC032PinSG.memberWireframeColor" "|ship:ship|ship:shipGeo|ship:shipGeoShape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "ship:groupId47.groupId" "|ship:ship|ship:shipGeo|ship:shipGeoShape.instObjGroups.objectGroups[1].objectGroupId" 
		""
		3 "ship:SailFBXASC032FullSG.memberWireframeColor" "|ship:ship|ship:shipGeo|ship:shipGeoShape.instObjGroups.objectGroups[1].objectGrpColor" 
		""
		3 "ship:groupId45.groupId" "|ship:ship|ship:shipGeo|ship:shipGeoShape.compInstObjGroups.compObjectGroups[0].compObjectGroupId" 
		""
		5 4 "shipRN" "|ship:ship.translateX" "shipRN.placeHolderList[1]" ""
		5 4 "shipRN" "|ship:ship.translateY" "shipRN.placeHolderList[2]" ""
		5 4 "shipRN" "|ship:ship.translateZ" "shipRN.placeHolderList[3]" ""
		5 4 "shipRN" "|ship:ship.visibility" "shipRN.placeHolderList[4]" ""
		5 4 "shipRN" "|ship:ship.rotateX" "shipRN.placeHolderList[5]" ""
		5 4 "shipRN" "|ship:ship.rotateY" "shipRN.placeHolderList[6]" ""
		5 4 "shipRN" "|ship:ship.rotateZ" "shipRN.placeHolderList[7]" ""
		5 4 "shipRN" "|ship:ship.scaleX" "shipRN.placeHolderList[8]" ""
		5 4 "shipRN" "|ship:ship.scaleY" "shipRN.placeHolderList[9]" ""
		5 4 "shipRN" "|ship:ship.scaleZ" "shipRN.placeHolderList[10]" ""
		5 3 "shipRN" "|ship:ship|ship:collider|ship:colliderShape.instObjGroups" 
		"shipRN.placeHolderList[11]" ":initialShadingGroup.dsm"
		5 3 "shipRN" "|ship:ship|ship:collider|ship:colliderShape.worldMesh" 
		"shipRN.placeHolderList[12]" ""
		5 4 "shipRN" "|ship:ship|ship:shipGeo.translateX" "shipRN.placeHolderList[13]" 
		""
		5 4 "shipRN" "|ship:ship|ship:shipGeo.translateY" "shipRN.placeHolderList[14]" 
		""
		5 4 "shipRN" "|ship:ship|ship:shipGeo.translateZ" "shipRN.placeHolderList[15]" 
		""
		5 4 "shipRN" "|ship:ship|ship:shipGeo.rotateZ" "shipRN.placeHolderList[16]" 
		""
		5 4 "shipRN" "|ship:ship|ship:shipGeo.rotateX" "shipRN.placeHolderList[17]" 
		""
		5 4 "shipRN" "|ship:ship|ship:shipGeo.rotateY" "shipRN.placeHolderList[18]" 
		""
		5 4 "shipRN" "|ship:ship|ship:shipGeo.visibility" "shipRN.placeHolderList[19]" 
		""
		5 4 "shipRN" "|ship:ship|ship:shipGeo.scaleX" "shipRN.placeHolderList[20]" 
		""
		5 4 "shipRN" "|ship:ship|ship:shipGeo.scaleY" "shipRN.placeHolderList[21]" 
		""
		5 4 "shipRN" "|ship:ship|ship:shipGeo.scaleZ" "shipRN.placeHolderList[22]" 
		""
		5 3 "shipRN" "|ship:ship|ship:shipGeo|ship:shipGeoShape.instObjGroups" 
		"shipRN.placeHolderList[23]" "";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "02FA114A-4D82-49DF-78E7-E5BFDA6B4C67";
	setAttr ".version" -type "string" "5.5.3";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "A6DF3B52-49D4-F027-27BD-2CA435D1F109";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "70D915C1-4314-DAC3-4E72-5EBB1A5B76EA";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "8C7490B3-4CDB-4216-DA85-0FB9C36686EC";
	setAttr ".ai_translator" -type "string" "maya";
	setAttr ".output_mode" 0;
createNode aiImagerDenoiserOidn -s -n "defaultArnoldDenoiser";
	rename -uid "B2B5C01C-465E-BCBA-C05E-4AA91A423D79";
createNode animCurveTL -n "ship_translateX";
	rename -uid "CD90A128-4C84-C96E-4CC7-59BD34B4B3BB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 16 0 20 0 51 0 80 0;
createNode animCurveTL -n "ship_translateY";
	rename -uid "96870CEE-461F-6A98-26C5-50AD55E067DA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1.6 16 1.6 20 1.6 51 1.6 80 1.6;
createNode animCurveTL -n "ship_translateZ";
	rename -uid "E50B6946-45D5-06A3-F446-B093C8B00274";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 2.6 16 4.3010584897106154 20 5.0583674803219774
		 51 12.465499600304636 80 16.759923218976233;
createNode animCurveTU -n "ship_visibility";
	rename -uid "489EEB09-4299-849B-93DB-B3925558F216";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 16 1 20 1 51 1 80 1;
	setAttr -s 5 ".kit[1:4]"  9 9 9 18;
	setAttr -s 5 ".kot[1:4]"  5 5 5 18;
createNode animCurveTA -n "ship_rotateX";
	rename -uid "7E2B6D84-4185-EDF7-1EAD-C8B562C074F5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 16 0 20 0 51 0 80 0;
createNode animCurveTA -n "ship_rotateY";
	rename -uid "FF24C3D6-4538-493A-04F8-62BF27AB1E82";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 16 0 20 0 51 0 80 0;
createNode animCurveTA -n "ship_rotateZ";
	rename -uid "E0A982B9-449F-96B2-AFF9-14B6529AED6D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 16 0 20 0 51 0 80 0;
createNode animCurveTU -n "ship_scaleX";
	rename -uid "58E46A58-41FC-6AFD-A409-62A4F709BF82";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 16 1 20 1 51 1 80 1;
createNode animCurveTU -n "ship_scaleY";
	rename -uid "CF9D6824-4710-E180-5EBC-79BA6E1C7583";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 16 1 20 1 51 1 80 1;
createNode animCurveTU -n "ship_scaleZ";
	rename -uid "56E1B049-4401-C01E-1466-729A5A09E283";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 16 1 20 1 51 1 80 1;
createNode polyPlane -n "polyPlane2";
	rename -uid "DDE38511-47DE-1E9F-A410-328094A602BF";
	setAttr ".cuv" 2;
createNode animCurveTL -n "pPlane2_translateX";
	rename -uid "CBED4F9C-45ED-80C4-8927-3EA09829B41E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  16 0 28 0;
createNode animCurveTL -n "pPlane2_translateY";
	rename -uid "3C07283E-411C-6BCB-1D50-12ADECDC9B38";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  16 0.5632283466568444;
createNode animCurveTL -n "pPlane2_translateZ";
	rename -uid "C76332B1-4EE2-9F7E-77C3-269994D995E8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  16 0 28 0;
createNode animCurveTU -n "pPlane2_visibility";
	rename -uid "E8E954E6-4544-E28D-534B-7FBA34DE2362";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  16 1 28 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTA -n "pPlane2_rotateX";
	rename -uid "00A76958-4B73-DC42-0789-11A8313D12AF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  16 0 28 0;
createNode animCurveTA -n "pPlane2_rotateY";
	rename -uid "4DE9E2EF-4834-BA2F-DA83-318CF6741DBC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  16 0 28 0;
createNode animCurveTA -n "pPlane2_rotateZ";
	rename -uid "F52B3866-4171-52D2-4834-4B981C833202";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  16 0 28 0;
createNode animCurveTU -n "pPlane2_scaleX";
	rename -uid "B4603C7C-4007-F5BE-C228-4BBCB75B6064";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  16 30 28 30;
createNode animCurveTU -n "pPlane2_scaleY";
	rename -uid "E0D54EEE-4F25-A708-0468-FC8C2D906BC6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  16 30 28 30;
createNode animCurveTU -n "pPlane2_scaleZ";
	rename -uid "7BC39AD5-4AE7-D66C-7118-198C30A7C81D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  16 30 28 30;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "58EDDEA4-4A86-FF89-FB5F-EA9E6A041233";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1317\n            -height 0\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n"
		+ "            -shadows 0\n            -captureSequenceNumber -1\n            -width 655\n            -height 243\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n"
		+ "            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n"
		+ "            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n"
		+ "            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 655\n            -height 243\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n"
		+ "        modelEditor -e \n            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n"
		+ "            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 0\n"
		+ "            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -bluePencil 1\n            -greasePencils 0\n            -excludeObjectPreset \"All\" \n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1317\n            -height 546\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n"
		+ "            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n"
		+ "            -longNames 0\n            -niceNames 1\n            -selectCommand \"print(\\\"\\\")\" \n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n"
		+ "            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -showUfeItems 1\n            -displayMode \"DAG\" \n"
		+ "            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n"
		+ "            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n"
		+ "                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -isSet 0\n                -isSetMember 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n"
		+ "                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                -selectionOrder \"display\" \n                -expandAttribute 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -tangentScale 1\n                -tangentLineThickness 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -limitToSelectedCurves 0\n                -constrainDrag 0\n                -valueLinesToggle 0\n"
		+ "                -outliner \"graphEditor1OutlineEd\" \n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n"
		+ "                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -showUfeItems 1\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n"
		+ "                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -hierarchyBelow 0\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n"
		+ "                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n"
		+ "                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n"
		+ "                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n"
		+ "                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"|persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n"
		+ "                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n"
		+ "                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n"
		+ "                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -bluePencil 1\n                -greasePencils 0\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n"
		+ "                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1317\\n    -height 546\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -bluePencil 1\\n    -greasePencils 0\\n    -excludeObjectPreset \\\"All\\\" \\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1317\\n    -height 546\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "E3A78DF9-43E2-5FAC-6FB1-0AB5518A2285";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 80 -ast 1 -aet 80 ";
	setAttr ".st" 6;
createNode animCurveTL -n "polyPlane2_axisX";
	rename -uid "11408C49-47BF-9DB9-77C8-B0AD10E3C61B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  28 0;
createNode animCurveTL -n "polyPlane2_axisY";
	rename -uid "66BD0EF9-4D7D-54EC-7CE4-02BEF1A5A335";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  28 1;
createNode animCurveTL -n "polyPlane2_axisZ";
	rename -uid "A08D5E50-4C55-F56F-0A49-DB912614EE49";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  28 0;
createNode animCurveTL -n "polyPlane2_heightBaseline";
	rename -uid "DEEEB18C-46FB-4BD7-6296-75BA4B07FEBC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  28 0;
createNode animCurveTL -n "polyPlane2_width";
	rename -uid "5446216A-40D0-3775-55D0-6DB5C70B3BAE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  28 1;
createNode animCurveTL -n "polyPlane2_height";
	rename -uid "BFCB9F63-44F8-F127-90F2-45ABE701F307";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  28 1;
createNode animCurveTU -n "polyPlane2_subdivisionsWidth";
	rename -uid "E243B375-4C35-6DA5-8002-87A550B4C14E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  28 250;
createNode animCurveTU -n "polyPlane2_subdivisionsHeight";
	rename -uid "866FDE84-4888-E1ED-6384-149CE5CE3561";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  28 250;
createNode BossWaveSolver -n "BossWaveSolver1";
	rename -uid "A0AE2D83-446C-A3CA-320F-2B88BEF73F73";
	setAttr ".startFrame" 2;
createNode BossBlender -n "BossBlender1";
	rename -uid "B1740D71-46B3-20AF-9672-0F8824F85925";
	setAttr -s 2 ".inwave";
	setAttr -s 2 ".solvers";
createNode BossGeoProperties -n "BossGeoProperties1";
	rename -uid "AAFE4B9B-4C8E-476A-F2D9-FCB6FBB914DE";
createNode animCurveTU -n "BossGeoProperties1_enable";
	rename -uid "D7F8F343-4579-0A05-F6E2-30AF122104CA";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 9 1 20 1 55 1;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTU -n "BossGeoProperties1_generator";
	rename -uid "02CA796B-4640-541D-87C3-AFBBFDF3C7CE";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 9 1 20 1 55 1;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTU -n "BossGeoProperties1_collider";
	rename -uid "E2020083-4DA3-340E-8948-F7B678FB9E29";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 9 1 20 1 55 1;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTU -n "BossGeoProperties1_generatorExpand";
	rename -uid "F9F16221-4F38-8387-F3AB-559A5D2EE63E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 20 9 15 20 20 55 20;
createNode animCurveTU -n "BossGeoProperties1_generatorSmooth";
	rename -uid "B7233892-4077-90A3-2F6A-B8BCC68E0E9A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 3 9 3 20 3 55 3;
createNode animCurveTU -n "BossGeoProperties1_generatorOffsetX";
	rename -uid "358377F3-4351-4B14-B173-5993FEBD2469";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 9 0 20 0 55 0;
createNode animCurveTU -n "BossGeoProperties1_generatorOffsetZ";
	rename -uid "6EAECA75-45B8-17B6-E9D5-DB990E9095A7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 9 0 20 0 55 0;
createNode animCurveTU -n "BossGeoProperties1_colliderShrink";
	rename -uid "653B87AE-409E-65E3-DD4F-26A94F8FF284";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 20 9 20 20 20 55 20;
createNode animCurveTU -n "BossGeoProperties1_colliderSmooth";
	rename -uid "479E49BA-4CDE-FF2A-8116-0197FC94605D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 3 9 3 20 3 55 3;
createNode animCurveTU -n "BossGeoProperties1_colliderOffsetX";
	rename -uid "66851D0D-475F-C1AE-87B2-7997F2C3CFC6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 9 0 20 0 55 0;
createNode animCurveTU -n "BossGeoProperties1_colliderOffsetZ";
	rename -uid "F53DC0BD-4F30-6251-8964-1ABA3BC9BBDA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 9 0 20 0 55 0;
createNode animCurveTU -n "BossGeoProperties1_amplitude";
	rename -uid "8EAA42B0-43C2-2AD6-BBA0-47AE68F0011A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0.5 9 0.5 20 0.5 55 0.5;
createNode BossSpectralWave -n "BossSpectralWave1";
	rename -uid "BCCF9B0A-42A4-9D6A-7503-37A9D7DC0C36";
	setAttr ".startFrame" 2;
createNode blinn -n "water";
	rename -uid "6EED1D96-485E-8324-7E1A-AC9FB2587BA7";
	setAttr ".c" -type "float3" 0 0.19842607 0.46900001 ;
createNode shadingEngine -n "blinn1SG";
	rename -uid "5627F55D-4C64-6B15-ED09-72A0F53F16EC";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "364C6E0B-4708-F298-6509-A29C3D3EFEBF";
createNode blinn -n "shiop";
	rename -uid "9D334A6A-45F5-C180-B3BF-63AE580DB54B";
	setAttr ".c" -type "float3" 1 0.5 0 ;
createNode shadingEngine -n "blinn2SG";
	rename -uid "B408C0AF-4948-A19F-2B2A-54929C79160A";
	setAttr ".ihi" 0;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
	rename -uid "3E5D30D5-45CE-57B3-3507-3D8735B2482C";
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "6A61D474-4761-A38F-C397-B98AB4FD964F";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -44.047617297323995 -615.47616601936511 ;
	setAttr ".tgi[0].vh" -type "double2" 604.76188073082676 44.047617297323995 ;
	setAttr -s 4 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" 215.47618103027344;
	setAttr ".tgi[0].ni[0].y" -226.19046020507812;
	setAttr ".tgi[0].ni[0].nvs" 1923;
	setAttr ".tgi[0].ni[1].x" 451.19046020507812;
	setAttr ".tgi[0].ni[1].y" -197.61903381347656;
	setAttr ".tgi[0].ni[1].nvs" 1923;
	setAttr ".tgi[0].ni[2].x" 11.90476131439209;
	setAttr ".tgi[0].ni[2].y" 3.5714285373687744;
	setAttr ".tgi[0].ni[2].nvs" 1923;
	setAttr ".tgi[0].ni[3].x" 402.38095092773438;
	setAttr ".tgi[0].ni[3].y" -101.19047546386719;
	setAttr ".tgi[0].ni[3].nvs" 1923;
createNode animCurveTU -n "BossSpectralWave1_enable";
	rename -uid "FD6253D9-447C-35AE-B3AE-ABA657F3FDC8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  2 1 11 1 12 1 29 1 36 1 38 1 49 1;
	setAttr -s 7 ".kit[0:6]"  9 9 18 18 18 18 9;
	setAttr -s 7 ".kot[0:6]"  5 5 18 18 18 18 5;
createNode animCurveTU -n "BossSpectralWave1_useColliders";
	rename -uid "EA03997C-4B34-B1DA-51B2-B495EE4560A0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  2 0 11 0 12 0 29 0 36 0 38 0 49 0;
	setAttr -s 7 ".kit[0:6]"  9 9 18 18 18 18 9;
	setAttr -s 7 ".kot[0:6]"  5 5 18 18 18 18 5;
createNode animCurveTU -n "BossSpectralWave1_patchSizeX";
	rename -uid "AE41B4FB-4DB7-3633-051D-9C92325B9E8B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  2 100 11 100 12 100 29 100 36 100 38 100
		 49 100;
createNode animCurveTU -n "BossSpectralWave1_patchSizeZ";
	rename -uid "8A667169-478D-FB80-8289-439BA97A35F6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  2 100 11 100 12 100 29 100 36 100 38 100
		 49 100;
createNode animCurveTU -n "BossSpectralWave1_spaceScale";
	rename -uid "0E7FF4C9-46F9-C6DD-C515-9E8E91FF4692";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  2 1 11 1 12 1 29 1 36 1 38 1 49 1;
createNode animCurveTU -n "BossSpectralWave1_gravity";
	rename -uid "3CAF5439-4CDF-7453-A588-A891AE0A124A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  2 9.8000001907348633 11 9.8000001907348633
		 12 9.8000001907348633 29 9.8000001907348633 36 9.8000001907348633 38 9.8000001907348633
		 49 9.8000001907348633;
createNode animCurveTU -n "BossSpectralWave1_oceanDepth";
	rename -uid "8BC40E2B-4B59-8238-6DDC-2888E7BDC9F9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  2 10000 11 10000 12 10000 29 10000 36 10000
		 38 10000 49 10000;
createNode animCurveTU -n "BossSpectralWave1_waveHeight";
	rename -uid "EBFCB620-474C-C180-4192-29A6703C514A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  2 1 11 1 12 1 29 1 36 1 38 1 49 1;
createNode animCurveTU -n "BossSpectralWave1_waveSize";
	rename -uid "C7980C6F-4990-F66D-B6C3-188F0E8AE348";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  2 0.5 11 0.5 12 0.5 29 0.5 36 0.5 38 0.5
		 49 0.5;
createNode animCurveTU -n "BossSpectralWave1_capillaryScale";
	rename -uid "103F2188-46B5-5765-E200-228DA5D784C3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  2 0 11 0 12 0 29 0 36 0 38 0 49 0;
createNode animCurveTU -n "BossSpectralWave1_windSpeed";
	rename -uid "1A18173F-4CC1-D7C0-CE32-A38C408CEEFC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  2 4 11 4 12 4 29 4 36 4 38 4 49 4;
createNode animCurveTU -n "BossSpectralWave1_windDirection";
	rename -uid "1CC7BE44-4E37-A8AE-8A0F-948FF8BF5A89";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  2 0 11 0 12 0 29 0 36 0 38 0 49 0;
createNode animCurveTU -n "BossSpectralWave1_windFetch";
	rename -uid "B0B4E301-4301-D55F-D887-F9ABEC8C0962";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  2 200 11 200 12 200 29 200 36 200 38 200
		 49 200;
createNode animCurveTU -n "BossSpectralWave1_driftVelocityX";
	rename -uid "7A01B841-4AB0-5172-F578-C092168776ED";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  2 0 11 0 12 0 29 0 36 0 38 0 49 0;
createNode animCurveTU -n "BossSpectralWave1_driftVelocityZ";
	rename -uid "425EB557-4534-B75B-D4F6-0686BA31FFC7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  2 0 11 0 12 0 29 0 36 0 38 0 49 0;
createNode animCurveTU -n "BossSpectralWave1_shortScaleCutoff";
	rename -uid "4C08EB5B-46D3-ACED-E58C-05B4A33A6A22";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  2 0.0010000000474974513 11 0.0010000000474974513
		 12 0.0010000000474974513 29 0.0010000000474974513 36 0.0010000000474974513 38 0.0010000000474974513
		 49 0.0010000000474974513;
createNode animCurveTU -n "BossSpectralWave1_longScaleCutoff";
	rename -uid "096DC019-46AC-C556-E387-669F573C5E79";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  2 500 11 500 12 500 29 500 36 500 38 500
		 49 500;
createNode animCurveTU -n "BossSpectralWave1_reflectionHeight";
	rename -uid "5BAB0F65-4901-8C4F-8140-F1AAF5FC3777";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  2 1 11 1 12 1 29 1 36 1 38 1 49 1;
createNode animCurveTU -n "BossSpectralWave1_reflectionSize";
	rename -uid "754AC1FD-4221-845B-3363-DD9EC09DCAEC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  2 0.10000000149011612 11 0.10000000149011612
		 12 0.10000000149011612 29 0.10000000149011612 36 0.10000000149011612 38 0.10000000149011612
		 49 0.10000000149011612;
createNode animCurveTU -n "BossSpectralWave1_reflectionDecayWidth";
	rename -uid "6992C2B9-4E3D-4514-BC17-55B87B783FE7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  2 0.10000000149011612 11 0.10000000149011612
		 12 0.10000000149011612 29 0.10000000149011612 36 0.10000000149011612 38 0.10000000149011612
		 49 0.10000000149011612;
createNode animCurveTU -n "BossSpectralWave1_reflectionDecayAlpha";
	rename -uid "2AA66AE3-4D4D-99C3-9BC8-C7993AFB5272";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  2 0.05000000074505806 11 0.05000000074505806
		 12 0.05000000074505806 29 0.05000000074505806 36 0.05000000074505806 38 0.05000000074505806
		 49 0.05000000074505806;
createNode animCurveTU -n "BossSpectralWave1_reflectionFriction";
	rename -uid "3CEDD62A-4CE0-6680-C2D4-7EB453368EC9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  2 0 11 0 12 0 29 0 36 0 38 0 49 0;
createNode animCurveTU -n "BossSpectralWave1_reflectionDriftFactor";
	rename -uid "9E1BAB78-4231-BA1E-D0D1-D4845C3B6634";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  2 1 11 1 12 1 29 1 36 1 38 1 49 1;
createNode animCurveTU -n "BossSpectralWave1_reflectionWindFactor";
	rename -uid "0D55FDDA-4A2C-DA9A-BD93-9AA908BB519F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  2 1 11 1 12 1 29 1 36 1 38 1 49 1;
createNode animCurveTU -n "BossSpectralWave1_reflectionCapillaryScale";
	rename -uid "00AFD243-429F-95FF-09D4-0C8B837EEE49";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  2 0 11 0 12 0 29 0 36 0 38 0 49 0;
createNode animCurveTU -n "BossSpectralWave1_enableFoam";
	rename -uid "498295D7-422C-3FFB-8A22-96B4B1F3B97A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  2 0 11 0 12 0 29 0 36 0 38 0 49 0;
	setAttr -s 7 ".kit[0:6]"  9 9 18 18 18 18 9;
	setAttr -s 7 ".kot[0:6]"  5 5 18 18 18 18 5;
createNode animCurveTU -n "BossSpectralWave1_useSpeed";
	rename -uid "0180C956-4E92-FE86-54C4-9F8E47531313";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  2 1 11 1 12 1 29 1 36 1 38 1 49 1;
	setAttr -s 7 ".kit[0:6]"  9 9 18 18 18 18 9;
	setAttr -s 7 ".kot[0:6]"  5 5 18 18 18 18 5;
createNode animCurveTU -n "BossSpectralWave1_foamDiffusionRate";
	rename -uid "8336C5DC-43A2-0301-5EE4-62BDE5956F2E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  2 1 11 1 12 1 29 1 36 1 38 1 49 1;
createNode animCurveTU -n "BossSpectralWave1_cuspScale";
	rename -uid "B6F83ADC-45E7-3DDD-E859-91B5C8CA7FD1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  2 1 11 1 12 1 29 1 36 1 38 1 49 1;
createNode animCurveTU -n "BossSpectralWave1_cuspMin";
	rename -uid "F99E269F-4531-08A3-4500-0D906177C728";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  2 0.10000000149011612 11 0.10000000149011612
		 12 0.10000000149011612 29 0.10000000149011612 36 0.10000000149011612 38 0.10000000149011612
		 49 0.10000000149011612;
createNode animCurveTU -n "BossSpectralWave1_cuspMax";
	rename -uid "A2E21913-4A6F-9F55-9504-84B338F95C17";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  2 1 11 1 12 1 29 1 36 1 38 1 49 1;
createNode animCurveTU -n "BossSpectralWave1_speedMin";
	rename -uid "DFC35C72-466E-486A-52BB-74AD47C3D94C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  2 1 11 1 12 1 29 1 36 1 38 1 49 1;
createNode animCurveTU -n "BossSpectralWave1_speedMax";
	rename -uid "FDB7CC49-4DAE-D994-C191-208DFCCEBAEF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  2 4 11 4 12 4 29 4 36 4 38 4 49 4;
createNode animCurveTU -n "BossSpectralWave1_useSlope";
	rename -uid "6B252BD4-4A8B-7096-2B2A-129D316D2980";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  2 0 11 0 12 0 29 0 36 0 38 0 49 0;
	setAttr -s 7 ".kit[0:6]"  9 9 18 18 18 18 9;
	setAttr -s 7 ".kot[0:6]"  5 5 18 18 18 18 5;
createNode animCurveTU -n "BossSpectralWave1_useDisplacement";
	rename -uid "A64FEDD6-4091-2A05-9FF5-6A8C46B48793";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  2 0 11 0 12 0 29 0 36 0 38 0 49 0;
	setAttr -s 7 ".kit[0:6]"  9 9 18 18 18 18 9;
	setAttr -s 7 ".kot[0:6]"  5 5 18 18 18 18 5;
createNode animCurveTU -n "BossSpectralWave1_useVelocity";
	rename -uid "0C4AC6D8-42EC-74F2-5E9B-E1819744FE6F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  2 0 11 0 12 0 29 0 36 0 38 0 49 0;
	setAttr -s 7 ".kit[0:6]"  9 9 18 18 18 18 9;
	setAttr -s 7 ".kot[0:6]"  5 5 18 18 18 18 5;
createNode animCurveTU -n "BossSpectralWave1_useVelocityPotential";
	rename -uid "59A99726-492E-F487-AF5E-54BC28AEBBB5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  2 0 11 0 12 0 29 0 36 0 38 0 49 0;
	setAttr -s 7 ".kit[0:6]"  9 9 18 18 18 18 9;
	setAttr -s 7 ".kot[0:6]"  5 5 18 18 18 18 5;
createNode animCurveTU -n "BossSpectralWave1_timeOffset";
	rename -uid "A9EB139B-4E40-D36F-EAFD-0683DEE1809A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  2 0 11 0 12 0 29 0 36 0 38 0 49 0;
createNode animCurveTU -n "BossSpectralWave1_cacheVelocity";
	rename -uid "AC5CCBCC-4755-7EBE-7E02-B7AE3AF8C34C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  2 0 11 0 12 0 29 0 36 0 38 0 49 0;
	setAttr -s 7 ".kit[0:6]"  9 9 18 18 18 18 9;
	setAttr -s 7 ".kot[0:6]"  5 5 18 18 18 18 5;
createNode animCurveTU -n "BossWaveSolver1_enable";
	rename -uid "2249C41A-4A79-F6FB-83B0-92B19B88F7AF";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  36 1 62 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTU -n "BossWaveSolver1_decayWidth";
	rename -uid "6AA8E186-459C-0AA1-6F43-D887A1F275BC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  36 0.10000000149011612 62 0.10000000149011612;
createNode animCurveTU -n "BossWaveSolver1_decayAlpha";
	rename -uid "60C70C7D-4727-F153-2761-18BCA3BAC0B6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  36 0.05000000074505806 62 0.05000000074505806;
createNode animCurveTU -n "BossWaveSolver1_gravity";
	rename -uid "D9F4C802-49C4-AAC5-BBF1-C2B9D55E49D4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  36 9.8000001907348633 62 9.8000001907348633;
createNode animCurveTU -n "BossWaveSolver1_friction";
	rename -uid "FD685B1B-44E1-E3C1-F524-C2BA0F94E938";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  36 0 62 0;
createNode animCurveTU -n "BossWaveSolver1_oceanDepth";
	rename -uid "2E1A8808-4AD7-4E6A-A8A4-368525F776E7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  36 10000 62 10000;
createNode animCurveTU -n "BossWaveSolver1_waveHeight";
	rename -uid "C0252015-472F-CBB8-DBC5-F288E2C1FAA2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  36 1 62 1;
createNode animCurveTU -n "BossWaveSolver1_waveSize";
	rename -uid "DEBC7B82-472C-FC03-AB7D-C9992563E227";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  36 0.20000000298023224 62 0.20000000298023224;
createNode animCurveTU -n "BossWaveSolver1_capillaryScale";
	rename -uid "5E8E19F9-45D9-E54B-3EFC-6A84EC20241A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  36 0 62 0;
createNode animCurveTU -n "BossWaveSolver1_shallowBottom";
	rename -uid "008E0B93-4CB8-4A13-1910-6DADB82F9DC7";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  36 0 62 0;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTU -n "BossWaveSolver1_enableFoam";
	rename -uid "7B0FF98C-460E-71A6-69D2-25B6E835574A";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  36 0 62 0;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTU -n "BossWaveSolver1_useSpeed";
	rename -uid "9CAE01F8-4E7F-EE5D-D31C-4EA78551BB4C";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  36 1 62 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTU -n "BossWaveSolver1_foamDiffusionRate";
	rename -uid "41BD80E6-4B23-42BB-45DD-8DA52F22BD6E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  36 1 62 1;
createNode animCurveTU -n "BossWaveSolver1_cuspScale";
	rename -uid "A73D9252-4AE5-2215-015B-8F9963875C9B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  36 1 62 1;
createNode animCurveTU -n "BossWaveSolver1_cuspMin";
	rename -uid "806EC853-4E7F-09B2-7C1F-ADAC1D311250";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  36 0.10000000149011612 62 0.10000000149011612;
createNode animCurveTU -n "BossWaveSolver1_cuspMax";
	rename -uid "4F089A71-4180-15BF-256F-D09CDA52842C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  36 1 62 1;
createNode animCurveTU -n "BossWaveSolver1_speedMin";
	rename -uid "59770771-406E-3877-931D-85A790B03EA4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  36 1 62 1;
createNode animCurveTU -n "BossWaveSolver1_speedMax";
	rename -uid "5AB5FA21-4016-A5CD-E234-2C81B691CA50";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  36 4 62 4;
createNode animCurveTU -n "BossWaveSolver1_useAdvection";
	rename -uid "CCFA035D-41F9-A802-18D9-6A8AA0359570";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  36 0 62 0;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTU -n "BossWaveSolver1_useSlope";
	rename -uid "D0667774-40FD-00AB-30AA-9A8BA5333B55";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  36 0 62 0;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTU -n "BossWaveSolver1_useDisplacement";
	rename -uid "211CCBD3-456E-C2AC-FCF2-F78FC7AD49EC";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  36 0 62 0;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTU -n "BossWaveSolver1_timeOffset";
	rename -uid "867AEE87-4EF4-8E44-FE9D-31A3941D31E9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  36 0 62 0;
createNode animCurveTU -n "BossWaveSolver1_cacheVelocity";
	rename -uid "DC29B268-40BC-8994-20F6-E7A760D005DB";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  36 0 62 0;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTU -n "BossWaveSolver1_cacheRemappedInputs";
	rename -uid "6FD3E46C-4174-4A38-C8B6-D9B0AA1A66BD";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  36 0 62 0;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "BossOutput_translateX";
	rename -uid "25D0A36A-4165-E883-6C62-C7A983C12B2D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 2 0 9 0 11 0 12 0 16 0;
createNode animCurveTL -n "BossOutput_translateY";
	rename -uid "B228522E-46E6-5DBF-0664-C4BEA8983ABF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0.5 16 0.5;
createNode animCurveTL -n "BossOutput_translateZ";
	rename -uid "395F0065-46B6-84A6-427C-0F9A43F85C84";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 2 0 9 0 11 0 12 0 16 0;
createNode animCurveTU -n "BossOutput_visibility";
	rename -uid "6F371A4B-4AE8-71FD-48C2-AFB0EEA7D562";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 1 2 1 9 1 11 1 12 1 16 1;
	setAttr -s 6 ".kot[0:5]"  5 5 5 5 5 5;
createNode animCurveTA -n "BossOutput_rotateX";
	rename -uid "B7677D11-4375-178A-6DF5-2690BE6D9606";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 2 0 9 0 11 0 12 0 16 0;
createNode animCurveTA -n "BossOutput_rotateY";
	rename -uid "1903D5F0-4164-0056-F3E8-05A69ACA030E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 2 0 9 0 11 0 12 0 16 0;
createNode animCurveTA -n "BossOutput_rotateZ";
	rename -uid "393BB10C-4B21-8747-3BB2-D1BD289387BF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 2 0 9 0 11 0 12 0 16 0;
createNode animCurveTU -n "BossOutput_scaleX";
	rename -uid "DE3AFA4F-42F6-0F5A-0804-58BC109B959F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 1 2 1 9 1 11 1 12 1 16 1;
createNode animCurveTU -n "BossOutput_scaleY";
	rename -uid "A826DB4D-49F1-72BF-991E-FB9275D4958A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 1 2 1 9 1 11 1 12 1 16 1;
createNode animCurveTU -n "BossOutput_scaleZ";
	rename -uid "51E3F1F6-4495-C64B-3D0B-2DA5398931B8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 1 2 1 9 1 11 1 12 1 16 1;
createNode animCurveTA -n "shipGeo_rotateX";
	rename -uid "F5B7DCFD-437D-D8C4-CA43-89AE5E97523C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 2 -1.7289924100786493 8 0 40 -5 80 4;
createNode animCurveTA -n "shipGeo_rotateY";
	rename -uid "EDFB7756-4E4A-B772-D38B-E4880C24FC02";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 2 0 8 0 40 0 80 0;
createNode animCurveTA -n "shipGeo_rotateZ";
	rename -uid "78F3A003-42B3-36E3-1296-918A559C8217";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 2 0 8 0 40 -6.0000000000000009 80 6.0000000000000009;
createNode animCurveTU -n "shipGeo_visibility";
	rename -uid "E3629404-4E57-ACA7-4D67-9D882CEFD41B";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 2 1 8 1 40 1 80 1;
	setAttr -s 5 ".kot[0:4]"  5 5 5 5 5;
createNode animCurveTL -n "shipGeo_translateX";
	rename -uid "BDB0E4FE-43E4-02AB-E390-1EBA2FC47EFE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 -1.1102230246251565e-16 2 -1.0487237900249292e-16
		 8 0 40 0 80 0;
createNode animCurveTL -n "shipGeo_translateY";
	rename -uid "565DEC48-46DC-D9D6-350E-9E892BD7463F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 -0.5 2 -0.47230320699708456 8 0 40 0 80 -0.5;
createNode animCurveTL -n "shipGeo_translateZ";
	rename -uid "87F917AB-4CD1-7DF4-35F8-7D94CF9E62CE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 -11.177927447201485 2 -11.177927447201485
		 8 -11.17792744720148 40 -11.17792744720148 80 -11.17792744720148;
createNode animCurveTU -n "shipGeo_scaleX";
	rename -uid "CABE4041-4F88-A1A9-B8C3-358A149C824B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 2 1 8 1 40 1 80 1;
createNode animCurveTU -n "shipGeo_scaleY";
	rename -uid "FDB41FA3-4F20-46E5-B8AF-6E817A49A283";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 2 1 8 1 40 1 80 1;
createNode animCurveTU -n "shipGeo_scaleZ";
	rename -uid "D831A042-4003-5BDA-F2DE-509B6420E0D8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 2 1 8 1 40 1 80 1;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
	setAttr ".rtfm" 1;
select -ne :renderPartition;
	setAttr -s 6 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 9 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 4 ".u";
select -ne :defaultRenderingList1;
	setAttr -s 2 ".r";
select -ne :defaultTextureList1;
	setAttr -s 2 ".tx";
select -ne :standardSurface1;
	setAttr ".bc" -type "float3" 0.40000001 0.40000001 0.40000001 ;
	setAttr ".sr" 0.5;
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr ".ren" -type "string" "arnold";
	setAttr ".dss" -type "string" "standardSurface1";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :defaultColorMgtGlobals;
	setAttr ".cfe" yes;
	setAttr ".cfp" -type "string" "<MAYA_RESOURCES>/OCIO-configs/Maya2022-default/config.ocio";
	setAttr ".vtn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".vn" -type "string" "ACES 1.0 SDR-video";
	setAttr ".dn" -type "string" "sRGB";
	setAttr ".wsn" -type "string" "ACEScg";
	setAttr ".otn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".potn" -type "string" "ACES 1.0 SDR-video (sRGB)";
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
connectAttr "ship_translateX.o" "shipRN.phl[1]";
connectAttr "ship_translateY.o" "shipRN.phl[2]";
connectAttr "ship_translateZ.o" "shipRN.phl[3]";
connectAttr "ship_visibility.o" "shipRN.phl[4]";
connectAttr "ship_rotateX.o" "shipRN.phl[5]";
connectAttr "ship_rotateY.o" "shipRN.phl[6]";
connectAttr "ship_rotateZ.o" "shipRN.phl[7]";
connectAttr "ship_scaleX.o" "shipRN.phl[8]";
connectAttr "ship_scaleY.o" "shipRN.phl[9]";
connectAttr "ship_scaleZ.o" "shipRN.phl[10]";
connectAttr "shipRN.phl[11]" "blinn2SG.dsm" -na;
connectAttr "shipRN.phl[12]" "BossGeoProperties1.inMesh";
connectAttr "shipGeo_translateX.o" "shipRN.phl[13]";
connectAttr "shipGeo_translateY.o" "shipRN.phl[14]";
connectAttr "shipGeo_translateZ.o" "shipRN.phl[15]";
connectAttr "shipGeo_rotateZ.o" "shipRN.phl[16]";
connectAttr "shipGeo_rotateX.o" "shipRN.phl[17]";
connectAttr "shipGeo_rotateY.o" "shipRN.phl[18]";
connectAttr "shipGeo_visibility.o" "shipRN.phl[19]";
connectAttr "shipGeo_scaleX.o" "shipRN.phl[20]";
connectAttr "shipGeo_scaleY.o" "shipRN.phl[21]";
connectAttr "shipGeo_scaleZ.o" "shipRN.phl[22]";
connectAttr "shipRN.phl[23]" "blinn2SG.dsm" -na;
connectAttr "pPlane2_translateZ.o" "ocean.tz";
connectAttr "pPlane2_translateX.o" "ocean.tx";
connectAttr "pPlane2_translateY.o" "ocean.ty";
connectAttr "pPlane2_scaleX.o" "ocean.sx";
connectAttr "pPlane2_scaleY.o" "ocean.sy";
connectAttr "pPlane2_scaleZ.o" "ocean.sz";
connectAttr "pPlane2_visibility.o" "ocean.v";
connectAttr "pPlane2_rotateX.o" "ocean.rx";
connectAttr "pPlane2_rotateY.o" "ocean.ry";
connectAttr "pPlane2_rotateZ.o" "ocean.rz";
connectAttr "polyPlane2.out" "oceanShape.i";
connectAttr "BossOutput_translateX.o" "BossOutput.tx";
connectAttr "BossOutput_translateY.o" "BossOutput.ty";
connectAttr "BossOutput_translateZ.o" "BossOutput.tz";
connectAttr "BossOutput_visibility.o" "BossOutput.v";
connectAttr "BossOutput_rotateX.o" "BossOutput.rx";
connectAttr "BossOutput_rotateY.o" "BossOutput.ry";
connectAttr "BossOutput_rotateZ.o" "BossOutput.rz";
connectAttr "BossOutput_scaleX.o" "BossOutput.sx";
connectAttr "BossOutput_scaleY.o" "BossOutput.sy";
connectAttr "BossOutput_scaleZ.o" "BossOutput.sz";
connectAttr "BossBlender1.outMesh" "BossOutputShape.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "blinn1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "blinn2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "blinn1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "blinn2SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "polyPlane2_axisX.o" "polyPlane2.axx";
connectAttr "polyPlane2_axisY.o" "polyPlane2.axy";
connectAttr "polyPlane2_axisZ.o" "polyPlane2.axz";
connectAttr "polyPlane2_heightBaseline.o" "polyPlane2.hbl";
connectAttr "polyPlane2_width.o" "polyPlane2.w";
connectAttr "polyPlane2_height.o" "polyPlane2.h";
connectAttr "polyPlane2_subdivisionsWidth.o" "polyPlane2.sw";
connectAttr "polyPlane2_subdivisionsHeight.o" "polyPlane2.sh";
connectAttr "oceanShape.pm" "BossWaveSolver1.parentMatrix";
connectAttr "oceanShape.bb" "BossWaveSolver1.boundingBox";
connectAttr ":time1.o" "BossWaveSolver1.time";
connectAttr "BossGeoProperties1.outMap" "BossWaveSolver1.inputMap" -na;
connectAttr "BossWaveSolver1_enable.o" "BossWaveSolver1.enable";
connectAttr "BossWaveSolver1_decayWidth.o" "BossWaveSolver1.decayWidth";
connectAttr "BossWaveSolver1_decayAlpha.o" "BossWaveSolver1.decayAlpha";
connectAttr "BossWaveSolver1_gravity.o" "BossWaveSolver1.gravity";
connectAttr "BossWaveSolver1_friction.o" "BossWaveSolver1.friction";
connectAttr "BossWaveSolver1_oceanDepth.o" "BossWaveSolver1.oceanDepth";
connectAttr "BossWaveSolver1_waveHeight.o" "BossWaveSolver1.waveHeight";
connectAttr "BossWaveSolver1_waveSize.o" "BossWaveSolver1.waveSize";
connectAttr "BossWaveSolver1_capillaryScale.o" "BossWaveSolver1.capillaryScale";
connectAttr "BossWaveSolver1_shallowBottom.o" "BossWaveSolver1.shallowBottom";
connectAttr "BossWaveSolver1_enableFoam.o" "BossWaveSolver1.enableFoam";
connectAttr "BossWaveSolver1_useSpeed.o" "BossWaveSolver1.useSpeed";
connectAttr "BossWaveSolver1_foamDiffusionRate.o" "BossWaveSolver1.foamDiffusionRate"
		;
connectAttr "BossWaveSolver1_cuspScale.o" "BossWaveSolver1.cuspScale";
connectAttr "BossWaveSolver1_cuspMin.o" "BossWaveSolver1.cuspMin";
connectAttr "BossWaveSolver1_cuspMax.o" "BossWaveSolver1.cuspMax";
connectAttr "BossWaveSolver1_speedMin.o" "BossWaveSolver1.speedMin";
connectAttr "BossWaveSolver1_speedMax.o" "BossWaveSolver1.speedMax";
connectAttr "BossWaveSolver1_useAdvection.o" "BossWaveSolver1.useAdvection";
connectAttr "BossWaveSolver1_useSlope.o" "BossWaveSolver1.useSlope";
connectAttr "BossWaveSolver1_useDisplacement.o" "BossWaveSolver1.useDisplacement"
		;
connectAttr "BossWaveSolver1_timeOffset.o" "BossWaveSolver1.timeOffset";
connectAttr "BossWaveSolver1_cacheVelocity.o" "BossWaveSolver1.cacheVelocity";
connectAttr "BossWaveSolver1_cacheRemappedInputs.o" "BossWaveSolver1.cacheRemappedInputs"
		;
connectAttr "oceanShape.w" "BossBlender1.inMesh";
connectAttr ":time1.o" "BossBlender1.time";
connectAttr "BossWaveSolver1.blender" "BossBlender1.solvers" -na;
connectAttr "BossSpectralWave1.blender" "BossBlender1.solvers" -na;
connectAttr "BossWaveSolver1.owave[0]" "BossBlender1.inwave" -na;
connectAttr "BossSpectralWave1.outWave" "BossBlender1.inwave" -na;
connectAttr "ocean.bbmn" "BossGeoProperties1.waterBboxMin";
connectAttr ":time1.o" "BossGeoProperties1.time";
connectAttr "BossGeoProperties1_enable.o" "BossGeoProperties1.enable";
connectAttr "BossGeoProperties1_generator.o" "BossGeoProperties1.generator";
connectAttr "BossGeoProperties1_collider.o" "BossGeoProperties1.collider";
connectAttr "BossGeoProperties1_generatorExpand.o" "BossGeoProperties1.generatorExpand"
		;
connectAttr "BossGeoProperties1_generatorSmooth.o" "BossGeoProperties1.generatorSmooth"
		;
connectAttr "BossGeoProperties1_generatorOffsetX.o" "BossGeoProperties1.generatorOffsetX"
		;
connectAttr "BossGeoProperties1_generatorOffsetZ.o" "BossGeoProperties1.generatorOffsetZ"
		;
connectAttr "BossGeoProperties1_colliderShrink.o" "BossGeoProperties1.colliderShrink"
		;
connectAttr "BossGeoProperties1_colliderSmooth.o" "BossGeoProperties1.colliderSmooth"
		;
connectAttr "BossGeoProperties1_colliderOffsetX.o" "BossGeoProperties1.colliderOffsetX"
		;
connectAttr "BossGeoProperties1_colliderOffsetZ.o" "BossGeoProperties1.colliderOffsetZ"
		;
connectAttr "BossGeoProperties1_amplitude.o" "BossGeoProperties1.amplitude";
connectAttr "oceanShape.pm" "BossSpectralWave1.parentMatrix";
connectAttr "oceanShape.bb" "BossSpectralWave1.boundingBox";
connectAttr ":time1.o" "BossSpectralWave1.time";
connectAttr "BossSpectralWave1_enable.o" "BossSpectralWave1.enable";
connectAttr "BossSpectralWave1_useColliders.o" "BossSpectralWave1.useColliders";
connectAttr "BossSpectralWave1_patchSizeX.o" "BossSpectralWave1.patchSizeX";
connectAttr "BossSpectralWave1_patchSizeZ.o" "BossSpectralWave1.patchSizeZ";
connectAttr "BossSpectralWave1_spaceScale.o" "BossSpectralWave1.spaceScale";
connectAttr "BossSpectralWave1_gravity.o" "BossSpectralWave1.gravity";
connectAttr "BossSpectralWave1_oceanDepth.o" "BossSpectralWave1.oceanDepth";
connectAttr "BossSpectralWave1_waveHeight.o" "BossSpectralWave1.waveHeight";
connectAttr "BossSpectralWave1_waveSize.o" "BossSpectralWave1.waveSize";
connectAttr "BossSpectralWave1_capillaryScale.o" "BossSpectralWave1.capillaryScale"
		;
connectAttr "BossSpectralWave1_windSpeed.o" "BossSpectralWave1.windSpeed";
connectAttr "BossSpectralWave1_windDirection.o" "BossSpectralWave1.windDirection"
		;
connectAttr "BossSpectralWave1_windFetch.o" "BossSpectralWave1.windFetch";
connectAttr "BossSpectralWave1_driftVelocityX.o" "BossSpectralWave1.driftVelocityX"
		;
connectAttr "BossSpectralWave1_driftVelocityZ.o" "BossSpectralWave1.driftVelocityZ"
		;
connectAttr "BossSpectralWave1_shortScaleCutoff.o" "BossSpectralWave1.shortScaleCutoff"
		;
connectAttr "BossSpectralWave1_longScaleCutoff.o" "BossSpectralWave1.longScaleCutoff"
		;
connectAttr "BossSpectralWave1_reflectionHeight.o" "BossSpectralWave1.reflectionHeight"
		;
connectAttr "BossSpectralWave1_reflectionSize.o" "BossSpectralWave1.reflectionSize"
		;
connectAttr "BossSpectralWave1_reflectionDecayWidth.o" "BossSpectralWave1.reflectionDecayWidth"
		;
connectAttr "BossSpectralWave1_reflectionDecayAlpha.o" "BossSpectralWave1.reflectionDecayAlpha"
		;
connectAttr "BossSpectralWave1_reflectionFriction.o" "BossSpectralWave1.reflectionFriction"
		;
connectAttr "BossSpectralWave1_reflectionDriftFactor.o" "BossSpectralWave1.reflectionDriftFactor"
		;
connectAttr "BossSpectralWave1_reflectionWindFactor.o" "BossSpectralWave1.reflectionWindFactor"
		;
connectAttr "BossSpectralWave1_reflectionCapillaryScale.o" "BossSpectralWave1.reflectionCapillaryScale"
		;
connectAttr "BossSpectralWave1_enableFoam.o" "BossSpectralWave1.enableFoam";
connectAttr "BossSpectralWave1_useSpeed.o" "BossSpectralWave1.useSpeed";
connectAttr "BossSpectralWave1_foamDiffusionRate.o" "BossSpectralWave1.foamDiffusionRate"
		;
connectAttr "BossSpectralWave1_cuspScale.o" "BossSpectralWave1.cuspScale";
connectAttr "BossSpectralWave1_cuspMin.o" "BossSpectralWave1.cuspMin";
connectAttr "BossSpectralWave1_cuspMax.o" "BossSpectralWave1.cuspMax";
connectAttr "BossSpectralWave1_speedMin.o" "BossSpectralWave1.speedMin";
connectAttr "BossSpectralWave1_speedMax.o" "BossSpectralWave1.speedMax";
connectAttr "BossSpectralWave1_useSlope.o" "BossSpectralWave1.useSlope";
connectAttr "BossSpectralWave1_useDisplacement.o" "BossSpectralWave1.useDisplacement"
		;
connectAttr "BossSpectralWave1_useVelocity.o" "BossSpectralWave1.useVelocity";
connectAttr "BossSpectralWave1_useVelocityPotential.o" "BossSpectralWave1.useVelocityPotential"
		;
connectAttr "BossSpectralWave1_timeOffset.o" "BossSpectralWave1.timeOffset";
connectAttr "BossSpectralWave1_cacheVelocity.o" "BossSpectralWave1.cacheVelocity"
		;
connectAttr "water.oc" "blinn1SG.ss";
connectAttr "BossOutputShape.iog" "blinn1SG.dsm" -na;
connectAttr "oceanShape.iog" "blinn1SG.dsm" -na;
connectAttr "blinn1SG.msg" "materialInfo1.sg";
connectAttr "water.msg" "materialInfo1.m";
connectAttr "shiop.oc" "blinn2SG.ss";
connectAttr "blinn2SG.msg" "materialInfo2.sg";
connectAttr "shiop.msg" "materialInfo2.m";
connectAttr "water.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "blinn1SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr "shiop.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[2].dn"
		;
connectAttr "blinn2SG.msg" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[3].dn"
		;
connectAttr "blinn1SG.pa" ":renderPartition.st" -na;
connectAttr "blinn2SG.pa" ":renderPartition.st" -na;
connectAttr "water.msg" ":defaultShaderList1.s" -na;
connectAttr "shiop.msg" ":defaultShaderList1.s" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of CompletedOceanandShip.ma
