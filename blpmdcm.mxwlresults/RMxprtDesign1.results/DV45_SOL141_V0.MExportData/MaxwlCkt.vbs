' -----------------------------------------------------------------------------  
' Script Created by RMxprt Version 12.0 to generate netlist for external circuit 
' Expect 3 args, first the project name,                                         
'                second the design name,                                         
'                third the path to export netlist                                
' -------------------------------------------------------------------------------
Dim oAnsoftApp
Dim oDesktop
Dim oProject
Dim oDesign
Dim oEditor
Dim oModule
Set oAnsoftApp = CreateObject("AnsoftMaxCir.MaxCirScript")
Set oArgs = AnsoftScript.arguments
Set oDesktop = oAnsoftApp.GetAppDesktop()
Set oProject = oDesktop.NewProject
oDesktop.CloseAllWindows
if (oArgs.Count > 1) then 
  oProject.InsertDesign "Maxwell Circuit", oArgs(1), "", ""
else
  oProject.InsertDesign "Maxwell Circuit", "MaxwellCircuit1", "", ""
end if
Set oDesign = oProject.GetActiveDesign()
Set oEditor = oDesign.SetActiveEditor("SchematicEditor")
oDesign.ChangeProperty Array("NAME:AllTabs", Array("NAME:LocalVariableTab", _
  Array("NAME:PropServers", "LocalVariables"), Array("NAME:NewProps", Array(_
  "NAME:Kle", "PropType:=", "VariableProp", "UserDef:=", true, "Value:=", "1"))))
oEditor.CreateComponent Array("NAME:ComponentProps", "Name:=", "Winding", _
  "Id:=", "2"), Array("NAME:Attributes", "Page:=", 1, "X:=", 0.15748, "Y:=", _
  0.01016, "Degrees:=", 0, "Flip:=", false) 
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:PassedParameterTab", _
  Array("NAME:PropServers", "CompInst@Winding;2;0"), Array(_
  "NAME:ChangedProps", Array("NAME:name", "OverridingDef:=", true, "Value:=", _
  "PhaseA"))))
oEditor.CreateWire Array("NAME:WireData", "Id:=", "1", "Points:=", Array(_
  "(0.16256, 0.01016)", "(0.1651, 0.01016)")), Array("NAME:Attributes", _
  "Page:=", 1) 
oEditor.CreateComponent Array("NAME:ComponentProps", "Name:=", "Winding", _
  "Id:=", "3"), Array("NAME:Attributes", "Page:=", 1, "X:=", 0.15748, "Y:=", _
  0, "Degrees:=", 0, "Flip:=", false) 
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:PassedParameterTab", _
  Array("NAME:PropServers", "CompInst@Winding;3;0"), Array(_
  "NAME:ChangedProps", Array("NAME:name", "OverridingDef:=", true, "Value:=", _
  "PhaseB"))))
oEditor.CreateWire Array("NAME:WireData", "Id:=", "1", "Points:=", Array(_
  "(0.16256, 0)", "(0.1651, 0)")), Array("NAME:Attributes", "Page:=", 1) 
oEditor.CreateComponent Array("NAME:ComponentProps", "Name:=", "Winding", _
  "Id:=", "4"), Array("NAME:Attributes", "Page:=", 1, "X:=", 0.15748, "Y:=", _
  -0.01016, "Degrees:=", 0, "Flip:=", false) 
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:PassedParameterTab", _
  Array("NAME:PropServers", "CompInst@Winding;4;0"), Array(_
  "NAME:ChangedProps", Array("NAME:name", "OverridingDef:=", true, "Value:=", _
  "PhaseC"))))
oEditor.CreateWire Array("NAME:WireData", "Id:=", "1", "Points:=", Array(_
  "(0.16256, -0.01016)", "(0.1651, -0.01016)")), Array("NAME:Attributes", _
  "Page:=", 1) 
oEditor.CreateComponent Array("NAME:ComponentProps", "Name:=", "Res", "Id:=", _
  "5"), Array("NAME:Attributes", "Page:=", 1, "X:=", 0.14478, "Y:=", 0.01016, _
  "Degrees:=", 0, "Flip:=", false) 
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:PassedParameterTab", _
  Array("NAME:PropServers", "CompInst@Res;5;0"), Array("NAME:ChangedProps", _
  Array("NAME:name", "OverridingDef:=", true, "Value:=", "A"))))
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:PassedParameterTab", _
  Array("NAME:PropServers", "CompInst@Res;5;0"), Array("NAME:ChangedProps", _
  Array("NAME:R", "OverridingDef:=", true, "Value:=", "0.0317208ohm"))))
oEditor.CreateWire Array("NAME:WireData", "Id:=", "1", "Points:=", Array(_
  "(0.14986, 0.01016)", "(0.1524, 0.01016)")), Array("NAME:Attributes", _
  "Page:=", 1) 
oEditor.CreateComponent Array("NAME:ComponentProps", "Name:=", "Res", "Id:=", _
  "6"), Array("NAME:Attributes", "Page:=", 1, "X:=", 0.14478, "Y:=", 0, _
  "Degrees:=", 0, "Flip:=", false) 
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:PassedParameterTab", _
  Array("NAME:PropServers", "CompInst@Res;6;0"), Array("NAME:ChangedProps", _
  Array("NAME:name", "OverridingDef:=", true, "Value:=", "B"))))
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:PassedParameterTab", _
  Array("NAME:PropServers", "CompInst@Res;6;0"), Array("NAME:ChangedProps", _
  Array("NAME:R", "OverridingDef:=", true, "Value:=", "0.0317208ohm"))))
oEditor.CreateWire Array("NAME:WireData", "Id:=", "1", "Points:=", Array(_
  "(0.14986, 0)", "(0.1524, 0)")), Array("NAME:Attributes", "Page:=", 1) 
oEditor.CreateComponent Array("NAME:ComponentProps", "Name:=", "Res", "Id:=", _
  "7"), Array("NAME:Attributes", "Page:=", 1, "X:=", 0.14478, "Y:=", -0.01016, _
  "Degrees:=", 0, "Flip:=", false) 
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:PassedParameterTab", _
  Array("NAME:PropServers", "CompInst@Res;7;0"), Array("NAME:ChangedProps", _
  Array("NAME:name", "OverridingDef:=", true, "Value:=", "C"))))
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:PassedParameterTab", _
  Array("NAME:PropServers", "CompInst@Res;7;0"), Array("NAME:ChangedProps", _
  Array("NAME:R", "OverridingDef:=", true, "Value:=", "0.0317208ohm"))))
oEditor.CreateWire Array("NAME:WireData", "Id:=", "1", "Points:=", Array(_
  "(0.14986, -0.01016)", "(0.1524, -0.01016)")), Array("NAME:Attributes", _
  "Page:=", 1) 
oEditor.CreateComponent Array("NAME:ComponentProps", "Name:=", "Ind", "Id:=", _
  "8"), Array("NAME:Attributes", "Page:=", 1, "X:=", 0.13208, "Y:=", 0.01016, _
  "Degrees:=", 0, "Flip:=", false) 
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:PassedParameterTab", _
  Array("NAME:PropServers", "CompInst@Ind;8;0"), Array("NAME:ChangedProps", _
  Array("NAME:name", "OverridingDef:=", true, "Value:=", "A"))))
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:PassedParameterTab", _
  Array("NAME:PropServers", "CompInst@Ind;8;0"), Array("NAME:ChangedProps", _
  Array("NAME:L", "OverridingDef:=", true, "Value:=", "3.37816e-006H*Kle"))))
oEditor.CreateWire Array("NAME:WireData", "Id:=", "1", "Points:=", Array(_
  "(0.13716, 0.01016)", "(0.1397, 0.01016)")), Array("NAME:Attributes", _
  "Page:=", 1) 
oEditor.CreateComponent Array("NAME:ComponentProps", "Name:=", "Ind", "Id:=", _
  "9"), Array("NAME:Attributes", "Page:=", 1, "X:=", 0.13208, "Y:=", 0, _
  "Degrees:=", 0, "Flip:=", false) 
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:PassedParameterTab", _
  Array("NAME:PropServers", "CompInst@Ind;9;0"), Array("NAME:ChangedProps", _
  Array("NAME:name", "OverridingDef:=", true, "Value:=", "B"))))
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:PassedParameterTab", _
  Array("NAME:PropServers", "CompInst@Ind;9;0"), Array("NAME:ChangedProps", _
  Array("NAME:L", "OverridingDef:=", true, "Value:=", "3.37816e-006H*Kle"))))
oEditor.CreateWire Array("NAME:WireData", "Id:=", "1", "Points:=", Array(_
  "(0.13716, 0)", "(0.1397, 0)")), Array("NAME:Attributes", "Page:=", 1) 
oEditor.CreateComponent Array("NAME:ComponentProps", "Name:=", "Ind", "Id:=", _
  "10"), Array("NAME:Attributes", "Page:=", 1, "X:=", 0.13208, "Y:=", _
  -0.01016, "Degrees:=", 0, "Flip:=", false) 
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:PassedParameterTab", _
  Array("NAME:PropServers", "CompInst@Ind;10;0"), Array("NAME:ChangedProps", _
  Array("NAME:name", "OverridingDef:=", true, "Value:=", "C"))))
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:PassedParameterTab", _
  Array("NAME:PropServers", "CompInst@Ind;10;0"), Array("NAME:ChangedProps", _
  Array("NAME:L", "OverridingDef:=", true, "Value:=", "3.37816e-006H*Kle"))))
oEditor.CreateWire Array("NAME:WireData", "Id:=", "1", "Points:=", Array(_
  "(0.13716, -0.01016)", "(0.1397, -0.01016)")), Array("NAME:Attributes", _
  "Page:=", 1) 
oEditor.CreateComponent Array("NAME:ComponentProps", "Name:=", "Ammeter", _
  "Id:=", "11"), Array("NAME:Attributes", "Page:=", 1, "X:=", 0.11938, "Y:=", _
  0.01016, "Degrees:=", 90, "Flip:=", false) 
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:PassedParameterTab", _
  Array("NAME:PropServers", "CompInst@Ammeter;11;0"), Array(_
  "NAME:ChangedProps", Array("NAME:name", "OverridingDef:=", true, "Value:=", _
  "IA"))))
oEditor.CreateWire Array("NAME:WireData", "Id:=", "1", "Points:=", Array(_
  "(0.12446, 0.01016)", "(0.127, 0.01016)")), Array("NAME:Attributes", _
  "Page:=", 1) 
oEditor.CreateComponent Array("NAME:ComponentProps", "Name:=", "Ammeter", _
  "Id:=", "12"), Array("NAME:Attributes", "Page:=", 1, "X:=", 0.11938, "Y:=", _
  0, "Degrees:=", 90, "Flip:=", false) 
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:PassedParameterTab", _
  Array("NAME:PropServers", "CompInst@Ammeter;12;0"), Array(_
  "NAME:ChangedProps", Array("NAME:name", "OverridingDef:=", true, "Value:=", _
  "IB"))))
oEditor.CreateWire Array("NAME:WireData", "Id:=", "1", "Points:=", Array(_
  "(0.12446, 0)", "(0.127, 0)")), Array("NAME:Attributes", "Page:=", 1) 
oEditor.CreateComponent Array("NAME:ComponentProps", "Name:=", "Ammeter", _
  "Id:=", "13"), Array("NAME:Attributes", "Page:=", 1, "X:=", 0.11938, "Y:=", _
  -0.01016, "Degrees:=", 90, "Flip:=", false) 
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:PassedParameterTab", _
  Array("NAME:PropServers", "CompInst@Ammeter;13;0"), Array(_
  "NAME:ChangedProps", Array("NAME:name", "OverridingDef:=", true, "Value:=", _
  "IC"))))
oEditor.CreateWire Array("NAME:WireData", "Id:=", "1", "Points:=", Array(_
  "(0.12446, -0.01016)", "(0.127, -0.01016)")), Array("NAME:Attributes", _
  "Page:=", 1) 
oEditor.CreateWire Array("NAME:WireData", "Id:=", "1", "Points:=", Array(_
  "(0.1651, 0.01016)", "(0.1651, 0)")), Array("NAME:Attributes", "Page:=", 1) 
oEditor.CreateWire Array("NAME:WireData", "Id:=", "1", "Points:=", Array(_
  "(0.1651, 0)", "(0.1651, -0.01016)")), Array("NAME:Attributes", "Page:=", 1) 
oEditor.CreateWire Array("NAME:WireData", "Id:=", "1", "Points:=", Array(_
  "(0.1016, -0.0508)", "(0.1016, -0.04826)")), Array("NAME:Attributes", _
  "Page:=", 1) 
oEditor.CreateComponent Array("NAME:ComponentProps", "Name:=", "VPulse", _
  "Id:=", "14"), Array("NAME:Attributes", "Page:=", 1, "X:=", 0.1016, "Y:=", _
  -0.04318, "Degrees:=", 0, "Flip:=", false) 
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:PassedParameterTab", _
  Array("NAME:PropServers", "CompInst@VPulse;14;0"), Array(_
  "NAME:ChangedProps", Array("NAME:V1", "OverridingDef:=", true, "Value:=", _
  "-1"))))
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:PassedParameterTab", _
  Array("NAME:PropServers", "CompInst@VPulse;14;0"), Array(_
  "NAME:ChangedProps", Array("NAME:Td", "OverridingDef:=", true, "Value:=", _
  "3.75"))))
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:PassedParameterTab", _
  Array("NAME:PropServers", "CompInst@VPulse;14;0"), Array(_
  "NAME:ChangedProps", Array("NAME:Tr", "OverridingDef:=", true, "Value:=", _
  "0"))))
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:PassedParameterTab", _
  Array("NAME:PropServers", "CompInst@VPulse;14;0"), Array(_
  "NAME:ChangedProps", Array("NAME:Tf", "OverridingDef:=", true, "Value:=", _
  "0"))))
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:PassedParameterTab", _
  Array("NAME:PropServers", "CompInst@VPulse;14;0"), Array(_
  "NAME:ChangedProps", Array("NAME:Pw", "OverridingDef:=", true, "Value:=", _
  "15"))))
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:PassedParameterTab", _
  Array("NAME:PropServers", "CompInst@VPulse;14;0"), Array(_
  "NAME:ChangedProps", Array("NAME:Period", "OverridingDef:=", true, _
  "Value:=", "45"))))
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:PassedParameterTab", _
  Array("NAME:PropServers", "CompInst@VPulse;14;0"), Array(_
  "NAME:ChangedProps", Array("NAME:Type", "OverridingDef:=", true, "Value:=", _
  "POS"))))
oEditor.CreateWire Array("NAME:WireData", "Id:=", "1", "Points:=", Array(_
  "(0.1143, -0.0508)", "(0.1143, -0.04826)")), Array("NAME:Attributes", _
  "Page:=", 1) 
oEditor.CreateComponent Array("NAME:ComponentProps", "Name:=", "VPulse", _
  "Id:=", "15"), Array("NAME:Attributes", "Page:=", 1, "X:=", 0.1143, "Y:=", _
  -0.04318, "Degrees:=", 0, "Flip:=", false) 
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:PassedParameterTab", _
  Array("NAME:PropServers", "CompInst@VPulse;15;0"), Array(_
  "NAME:ChangedProps", Array("NAME:V1", "OverridingDef:=", true, "Value:=", _
  "-1"))))
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:PassedParameterTab", _
  Array("NAME:PropServers", "CompInst@VPulse;15;0"), Array(_
  "NAME:ChangedProps", Array("NAME:Td", "OverridingDef:=", true, "Value:=", _
  "11.25"))))
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:PassedParameterTab", _
  Array("NAME:PropServers", "CompInst@VPulse;15;0"), Array(_
  "NAME:ChangedProps", Array("NAME:Tr", "OverridingDef:=", true, "Value:=", _
  "0"))))
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:PassedParameterTab", _
  Array("NAME:PropServers", "CompInst@VPulse;15;0"), Array(_
  "NAME:ChangedProps", Array("NAME:Tf", "OverridingDef:=", true, "Value:=", _
  "0"))))
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:PassedParameterTab", _
  Array("NAME:PropServers", "CompInst@VPulse;15;0"), Array(_
  "NAME:ChangedProps", Array("NAME:Pw", "OverridingDef:=", true, "Value:=", _
  "15"))))
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:PassedParameterTab", _
  Array("NAME:PropServers", "CompInst@VPulse;15;0"), Array(_
  "NAME:ChangedProps", Array("NAME:Period", "OverridingDef:=", true, _
  "Value:=", "45"))))
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:PassedParameterTab", _
  Array("NAME:PropServers", "CompInst@VPulse;15;0"), Array(_
  "NAME:ChangedProps", Array("NAME:Type", "OverridingDef:=", true, "Value:=", _
  "POS"))))
oEditor.CreateWire Array("NAME:WireData", "Id:=", "1", "Points:=", Array(_
  "(0.127, -0.0508)", "(0.127, -0.04826)")), Array("NAME:Attributes", _
  "Page:=", 1) 
oEditor.CreateComponent Array("NAME:ComponentProps", "Name:=", "VPulse", _
  "Id:=", "16"), Array("NAME:Attributes", "Page:=", 1, "X:=", 0.127, "Y:=", _
  -0.04318, "Degrees:=", 0, "Flip:=", false) 
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:PassedParameterTab", _
  Array("NAME:PropServers", "CompInst@VPulse;16;0"), Array(_
  "NAME:ChangedProps", Array("NAME:V1", "OverridingDef:=", true, "Value:=", _
  "-1"))))
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:PassedParameterTab", _
  Array("NAME:PropServers", "CompInst@VPulse;16;0"), Array(_
  "NAME:ChangedProps", Array("NAME:Td", "OverridingDef:=", true, "Value:=", _
  "18.75"))))
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:PassedParameterTab", _
  Array("NAME:PropServers", "CompInst@VPulse;16;0"), Array(_
  "NAME:ChangedProps", Array("NAME:Tr", "OverridingDef:=", true, "Value:=", _
  "0"))))
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:PassedParameterTab", _
  Array("NAME:PropServers", "CompInst@VPulse;16;0"), Array(_
  "NAME:ChangedProps", Array("NAME:Tf", "OverridingDef:=", true, "Value:=", _
  "0"))))
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:PassedParameterTab", _
  Array("NAME:PropServers", "CompInst@VPulse;16;0"), Array(_
  "NAME:ChangedProps", Array("NAME:Pw", "OverridingDef:=", true, "Value:=", _
  "15"))))
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:PassedParameterTab", _
  Array("NAME:PropServers", "CompInst@VPulse;16;0"), Array(_
  "NAME:ChangedProps", Array("NAME:Period", "OverridingDef:=", true, _
  "Value:=", "45"))))
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:PassedParameterTab", _
  Array("NAME:PropServers", "CompInst@VPulse;16;0"), Array(_
  "NAME:ChangedProps", Array("NAME:Type", "OverridingDef:=", true, "Value:=", _
  "POS"))))
oEditor.CreateWire Array("NAME:WireData", "Id:=", "1", "Points:=", Array(_
  "(0.1397, -0.0508)", "(0.1397, -0.04826)")), Array("NAME:Attributes", _
  "Page:=", 1) 
oEditor.CreateComponent Array("NAME:ComponentProps", "Name:=", "VPulse", _
  "Id:=", "17"), Array("NAME:Attributes", "Page:=", 1, "X:=", 0.1397, "Y:=", _
  -0.04318, "Degrees:=", 0, "Flip:=", false) 
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:PassedParameterTab", _
  Array("NAME:PropServers", "CompInst@VPulse;17;0"), Array(_
  "NAME:ChangedProps", Array("NAME:V1", "OverridingDef:=", true, "Value:=", _
  "-1"))))
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:PassedParameterTab", _
  Array("NAME:PropServers", "CompInst@VPulse;17;0"), Array(_
  "NAME:ChangedProps", Array("NAME:Td", "OverridingDef:=", true, "Value:=", _
  "26.25"))))
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:PassedParameterTab", _
  Array("NAME:PropServers", "CompInst@VPulse;17;0"), Array(_
  "NAME:ChangedProps", Array("NAME:Tr", "OverridingDef:=", true, "Value:=", _
  "0"))))
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:PassedParameterTab", _
  Array("NAME:PropServers", "CompInst@VPulse;17;0"), Array(_
  "NAME:ChangedProps", Array("NAME:Tf", "OverridingDef:=", true, "Value:=", _
  "0"))))
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:PassedParameterTab", _
  Array("NAME:PropServers", "CompInst@VPulse;17;0"), Array(_
  "NAME:ChangedProps", Array("NAME:Pw", "OverridingDef:=", true, "Value:=", _
  "15"))))
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:PassedParameterTab", _
  Array("NAME:PropServers", "CompInst@VPulse;17;0"), Array(_
  "NAME:ChangedProps", Array("NAME:Period", "OverridingDef:=", true, _
  "Value:=", "45"))))
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:PassedParameterTab", _
  Array("NAME:PropServers", "CompInst@VPulse;17;0"), Array(_
  "NAME:ChangedProps", Array("NAME:Type", "OverridingDef:=", true, "Value:=", _
  "POS"))))
oEditor.CreateWire Array("NAME:WireData", "Id:=", "1", "Points:=", Array(_
  "(0.1524, -0.0508)", "(0.1524, -0.04826)")), Array("NAME:Attributes", _
  "Page:=", 1) 
oEditor.CreateComponent Array("NAME:ComponentProps", "Name:=", "VPulse", _
  "Id:=", "18"), Array("NAME:Attributes", "Page:=", 1, "X:=", 0.1524, "Y:=", _
  -0.04318, "Degrees:=", 0, "Flip:=", false) 
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:PassedParameterTab", _
  Array("NAME:PropServers", "CompInst@VPulse;18;0"), Array(_
  "NAME:ChangedProps", Array("NAME:V1", "OverridingDef:=", true, "Value:=", _
  "-1"))))
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:PassedParameterTab", _
  Array("NAME:PropServers", "CompInst@VPulse;18;0"), Array(_
  "NAME:ChangedProps", Array("NAME:Td", "OverridingDef:=", true, "Value:=", _
  "33.75"))))
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:PassedParameterTab", _
  Array("NAME:PropServers", "CompInst@VPulse;18;0"), Array(_
  "NAME:ChangedProps", Array("NAME:Tr", "OverridingDef:=", true, "Value:=", _
  "0"))))
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:PassedParameterTab", _
  Array("NAME:PropServers", "CompInst@VPulse;18;0"), Array(_
  "NAME:ChangedProps", Array("NAME:Tf", "OverridingDef:=", true, "Value:=", _
  "0"))))
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:PassedParameterTab", _
  Array("NAME:PropServers", "CompInst@VPulse;18;0"), Array(_
  "NAME:ChangedProps", Array("NAME:Pw", "OverridingDef:=", true, "Value:=", _
  "15"))))
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:PassedParameterTab", _
  Array("NAME:PropServers", "CompInst@VPulse;18;0"), Array(_
  "NAME:ChangedProps", Array("NAME:Period", "OverridingDef:=", true, _
  "Value:=", "45"))))
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:PassedParameterTab", _
  Array("NAME:PropServers", "CompInst@VPulse;18;0"), Array(_
  "NAME:ChangedProps", Array("NAME:Type", "OverridingDef:=", true, "Value:=", _
  "POS"))))
oEditor.CreateWire Array("NAME:WireData", "Id:=", "1", "Points:=", Array(_
  "(0.1651, -0.0508)", "(0.1651, -0.04826)")), Array("NAME:Attributes", _
  "Page:=", 1) 
oEditor.CreateComponent Array("NAME:ComponentProps", "Name:=", "VPulse", _
  "Id:=", "19"), Array("NAME:Attributes", "Page:=", 1, "X:=", 0.1651, "Y:=", _
  -0.04318, "Degrees:=", 0, "Flip:=", false) 
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:PassedParameterTab", _
  Array("NAME:PropServers", "CompInst@VPulse;19;0"), Array(_
  "NAME:ChangedProps", Array("NAME:V1", "OverridingDef:=", true, "Value:=", _
  "-1"))))
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:PassedParameterTab", _
  Array("NAME:PropServers", "CompInst@VPulse;19;0"), Array(_
  "NAME:ChangedProps", Array("NAME:Td", "OverridingDef:=", true, "Value:=", _
  "41.25"))))
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:PassedParameterTab", _
  Array("NAME:PropServers", "CompInst@VPulse;19;0"), Array(_
  "NAME:ChangedProps", Array("NAME:Tr", "OverridingDef:=", true, "Value:=", _
  "0"))))
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:PassedParameterTab", _
  Array("NAME:PropServers", "CompInst@VPulse;19;0"), Array(_
  "NAME:ChangedProps", Array("NAME:Tf", "OverridingDef:=", true, "Value:=", _
  "0"))))
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:PassedParameterTab", _
  Array("NAME:PropServers", "CompInst@VPulse;19;0"), Array(_
  "NAME:ChangedProps", Array("NAME:Pw", "OverridingDef:=", true, "Value:=", _
  "15"))))
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:PassedParameterTab", _
  Array("NAME:PropServers", "CompInst@VPulse;19;0"), Array(_
  "NAME:ChangedProps", Array("NAME:Period", "OverridingDef:=", true, _
  "Value:=", "45"))))
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:PassedParameterTab", _
  Array("NAME:PropServers", "CompInst@VPulse;19;0"), Array(_
  "NAME:ChangedProps", Array("NAME:Type", "OverridingDef:=", true, "Value:=", _
  "POS"))))
oEditor.CreateWire Array("NAME:WireData", "Id:=", "1", "Points:=", Array(_
  "(0.1016, -0.0381)", "(0.1016, -0.03556)")), Array("NAME:Attributes", _
  "Page:=", 1) 
oEditor.CreateComponent Array("NAME:ComponentProps", "Name:=", "Res", "Id:=", _
  "20"), Array("NAME:Attributes", "Page:=", 1, "X:=", 0.1016, "Y:=", -0.03048, _
  "Degrees:=", 90, "Flip:=", false) 
oEditor.CreateWire Array("NAME:WireData", "Id:=", "1", "Points:=", Array(_
  "(0.1143, -0.0381)", "(0.1143, -0.03556)")), Array("NAME:Attributes", _
  "Page:=", 1) 
oEditor.CreateComponent Array("NAME:ComponentProps", "Name:=", "Res", "Id:=", _
  "21"), Array("NAME:Attributes", "Page:=", 1, "X:=", 0.1143, "Y:=", -0.03048, _
  "Degrees:=", 90, "Flip:=", false) 
oEditor.CreateWire Array("NAME:WireData", "Id:=", "1", "Points:=", Array(_
  "(0.127, -0.0381)", "(0.127, -0.03556)")), Array("NAME:Attributes", _
  "Page:=", 1) 
oEditor.CreateComponent Array("NAME:ComponentProps", "Name:=", "Res", "Id:=", _
  "22"), Array("NAME:Attributes", "Page:=", 1, "X:=", 0.127, "Y:=", -0.03048, _
  "Degrees:=", 90, "Flip:=", false) 
oEditor.CreateWire Array("NAME:WireData", "Id:=", "1", "Points:=", Array(_
  "(0.1397, -0.0381)", "(0.1397, -0.03556)")), Array("NAME:Attributes", _
  "Page:=", 1) 
oEditor.CreateComponent Array("NAME:ComponentProps", "Name:=", "Res", "Id:=", _
  "23"), Array("NAME:Attributes", "Page:=", 1, "X:=", 0.1397, "Y:=", -0.03048, _
  "Degrees:=", 90, "Flip:=", false) 
oEditor.CreateWire Array("NAME:WireData", "Id:=", "1", "Points:=", Array(_
  "(0.1524, -0.0381)", "(0.1524, -0.03556)")), Array("NAME:Attributes", _
  "Page:=", 1) 
oEditor.CreateComponent Array("NAME:ComponentProps", "Name:=", "Res", "Id:=", _
  "24"), Array("NAME:Attributes", "Page:=", 1, "X:=", 0.1524, "Y:=", -0.03048, _
  "Degrees:=", 90, "Flip:=", false) 
oEditor.CreateWire Array("NAME:WireData", "Id:=", "1", "Points:=", Array(_
  "(0.1651, -0.0381)", "(0.1651, -0.03556)")), Array("NAME:Attributes", _
  "Page:=", 1) 
oEditor.CreateComponent Array("NAME:ComponentProps", "Name:=", "Res", "Id:=", _
  "25"), Array("NAME:Attributes", "Page:=", 1, "X:=", 0.1651, "Y:=", -0.03048, _
  "Degrees:=", 90, "Flip:=", false) 
oEditor.CreateWire Array("NAME:WireData", "Id:=", "1", "Points:=", Array(_
  "(0.1016, -0.0254)", "(0.1016, -0.02286)")), Array("NAME:Attributes", _
  "Page:=", 1) 
oEditor.CreateComponent Array("NAME:ComponentProps", "Name:=", "VoltmeterG", _
  "Id:=", "26"), Array("NAME:Attributes", "Page:=", 1, "X:=", 0.09652, "Y:=", _
  -0.03556, "Degrees:=", 90, "Flip:=", false) 
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:PassedParameterTab", _
  Array("NAME:PropServers", "CompInst@VoltmeterG;26;0"), Array(_
  "NAME:ChangedProps", Array("NAME:name", "OverridingDef:=", true, "Value:=", _
  "Vc1"))))
oEditor.CreateWire Array("NAME:WireData", "Id:=", "1", "Points:=", Array(_
  "(0.1143, -0.0254)", "(0.1143, -0.02286)")), Array("NAME:Attributes", _
  "Page:=", 1) 
oEditor.CreateComponent Array("NAME:ComponentProps", "Name:=", "VoltmeterG", _
  "Id:=", "27"), Array("NAME:Attributes", "Page:=", 1, "X:=", 0.10922, "Y:=", _
  -0.03556, "Degrees:=", 90, "Flip:=", false) 
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:PassedParameterTab", _
  Array("NAME:PropServers", "CompInst@VoltmeterG;27;0"), Array(_
  "NAME:ChangedProps", Array("NAME:name", "OverridingDef:=", true, "Value:=", _
  "Vc2"))))
oEditor.CreateWire Array("NAME:WireData", "Id:=", "1", "Points:=", Array(_
  "(0.127, -0.0254)", "(0.127, -0.02286)")), Array("NAME:Attributes", _
  "Page:=", 1) 
oEditor.CreateComponent Array("NAME:ComponentProps", "Name:=", "VoltmeterG", _
  "Id:=", "28"), Array("NAME:Attributes", "Page:=", 1, "X:=", 0.12192, "Y:=", _
  -0.03556, "Degrees:=", 90, "Flip:=", false) 
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:PassedParameterTab", _
  Array("NAME:PropServers", "CompInst@VoltmeterG;28;0"), Array(_
  "NAME:ChangedProps", Array("NAME:name", "OverridingDef:=", true, "Value:=", _
  "Vc3"))))
oEditor.CreateWire Array("NAME:WireData", "Id:=", "1", "Points:=", Array(_
  "(0.1397, -0.0254)", "(0.1397, -0.02286)")), Array("NAME:Attributes", _
  "Page:=", 1) 
oEditor.CreateComponent Array("NAME:ComponentProps", "Name:=", "VoltmeterG", _
  "Id:=", "29"), Array("NAME:Attributes", "Page:=", 1, "X:=", 0.13462, "Y:=", _
  -0.03556, "Degrees:=", 90, "Flip:=", false) 
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:PassedParameterTab", _
  Array("NAME:PropServers", "CompInst@VoltmeterG;29;0"), Array(_
  "NAME:ChangedProps", Array("NAME:name", "OverridingDef:=", true, "Value:=", _
  "Vc4"))))
oEditor.CreateWire Array("NAME:WireData", "Id:=", "1", "Points:=", Array(_
  "(0.1524, -0.0254)", "(0.1524, -0.02286)")), Array("NAME:Attributes", _
  "Page:=", 1) 
oEditor.CreateComponent Array("NAME:ComponentProps", "Name:=", "VoltmeterG", _
  "Id:=", "30"), Array("NAME:Attributes", "Page:=", 1, "X:=", 0.14732, "Y:=", _
  -0.03556, "Degrees:=", 90, "Flip:=", false) 
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:PassedParameterTab", _
  Array("NAME:PropServers", "CompInst@VoltmeterG;30;0"), Array(_
  "NAME:ChangedProps", Array("NAME:name", "OverridingDef:=", true, "Value:=", _
  "Vc5"))))
oEditor.CreateWire Array("NAME:WireData", "Id:=", "1", "Points:=", Array(_
  "(0.1651, -0.0254)", "(0.1651, -0.02286)")), Array("NAME:Attributes", _
  "Page:=", 1) 
oEditor.CreateComponent Array("NAME:ComponentProps", "Name:=", "VoltmeterG", _
  "Id:=", "31"), Array("NAME:Attributes", "Page:=", 1, "X:=", 0.16002, "Y:=", _
  -0.03556, "Degrees:=", 90, "Flip:=", false) 
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:PassedParameterTab", _
  Array("NAME:PropServers", "CompInst@VoltmeterG;31;0"), Array(_
  "NAME:ChangedProps", Array("NAME:name", "OverridingDef:=", true, "Value:=", _
  "Vc6"))))
oEditor.CreateWire Array("NAME:WireData", "Id:=", "1", "Points:=", Array(_
  "(0.1016, -0.0508)", "(0.1651, -0.0508)")), Array("NAME:Attributes", _
  "Page:=", 1) 
oEditor.CreateWire Array("NAME:WireData", "Id:=", "1", "Points:=", Array(_
  "(0.1016, -0.02286)", "(0.1651, -0.02286)")), Array("NAME:Attributes", _
  "Page:=", 1) 
oEditor.CreateGround Array("NAME:GroundProps", "Id:=", "1"), Array(_
  "NAME:Attributes", "Page:=", 1, "X:=", 0.1651, "Y:=", -0.05334, "Degrees:=", _
  0, "Flip:=", false) 
oEditor.CreateComponent Array("NAME:ComponentProps", "Name:=", "VDC", "Id:=", _
  "32"), Array("NAME:Attributes", "Page:=", 1, "X:=", 0, "Y:=", 0.0127, _
  "Degrees:=", 0, "Flip:=", false) 
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:PassedParameterTab", _
  Array("NAME:PropServers", "CompInst@VDC;32;0"), Array("NAME:ChangedProps", _
  Array("NAME:V", "OverridingDef:=", true, "Value:=", "25V"))))
oEditor.CreateComponent Array("NAME:ComponentProps", "Name:=", "VDC", "Id:=", _
  "33"), Array("NAME:Attributes", "Page:=", 1, "X:=", 0, "Y:=", -0.0127, _
  "Degrees:=", 0, "Flip:=", false) 
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:PassedParameterTab", _
  Array("NAME:PropServers", "CompInst@VDC;33;0"), Array("NAME:ChangedProps", _
  Array("NAME:V", "OverridingDef:=", true, "Value:=", "25V"))))
oEditor.CreateWire Array("NAME:WireData", "Id:=", "1", "Points:=", Array(_
  "(0, 0.01778)", "(0, 0.0508)", "(0.0889, 0.0508)")), Array(_
  "NAME:Attributes", "Page:=", 1) 
oEditor.CreateWire Array("NAME:WireData", "Id:=", "1", "Points:=", Array(_
  "(0, 0.00762)", "(0, -0.00762)")), Array("NAME:Attributes", "Page:=", 1) 
oEditor.CreateWire Array("NAME:WireData", "Id:=", "1", "Points:=", Array(_
  "(0, -0.01778)", "(0, -0.0508)", "(0.0889, -0.0508)")), Array(_
  "NAME:Attributes", "Page:=", 1) 
oEditor.CreateGround Array("NAME:GroundProps", "Id:=", "1"), Array(_
  "NAME:Attributes", "Page:=", 1, "X:=", -0.00508, "Y:=", -0.00254, _
  "Degrees:=", 0, "Flip:=", false) 
oEditor.CreateWire Array("NAME:WireData", "Id:=", "1", "Points:=", Array(_
  "(0, 0)", "(-0.00508, 0)")), Array("NAME:Attributes", "Page:=", 1) 
oEditor.CreateComponent Array("NAME:ComponentProps", "Name:=", "DIODE", "Id:=", _
  "34"), Array("NAME:Attributes", "Page:=", 1, "X:=", 0.0254, "Y:=", -0.03048, _
  "Degrees:=", 90, "Flip:=", false) 
oEditor.CreateWire Array("NAME:WireData", "Id:=", "1", "Points:=", Array(_
  "(0.0254, -0.0254)", "(0.0254, 0.0254)")), Array("NAME:Attributes", _
  "Page:=", 1) 
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:PassedParameterTab", _
  Array("NAME:PropServers", "CompInst@DIODE;34;0"), Array("NAME:ChangedProps", _
  Array("NAME:MOD", "OverridingDef:=", true, "Value:=", "DModel1"))))
oEditor.CreateComponent Array("NAME:ComponentProps", "Name:=", "DIODE", "Id:=", _
  "35"), Array("NAME:Attributes", "Page:=", 1, "X:=", 0.0381, "Y:=", 0.03048, _
  "Degrees:=", 90, "Flip:=", false) 
oEditor.CreateWire Array("NAME:WireData", "Id:=", "1", "Points:=", Array(_
  "(0.0381, 0.03556)", "(0.0381, 0.0508)")), Array("NAME:Attributes", _
  "Page:=", 1) 
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:PassedParameterTab", _
  Array("NAME:PropServers", "CompInst@DIODE;35;0"), Array("NAME:ChangedProps", _
  Array("NAME:MOD", "OverridingDef:=", true, "Value:=", "DModel1"))))
oEditor.CreateComponent Array("NAME:ComponentProps", "Name:=", "DIODE", "Id:=", _
  "36"), Array("NAME:Attributes", "Page:=", 1, "X:=", 0.0508, "Y:=", -0.03048, _
  "Degrees:=", 90, "Flip:=", false) 
oEditor.CreateWire Array("NAME:WireData", "Id:=", "1", "Points:=", Array(_
  "(0.0508, -0.0254)", "(0.0508, 0.0254)")), Array("NAME:Attributes", _
  "Page:=", 1) 
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:PassedParameterTab", _
  Array("NAME:PropServers", "CompInst@DIODE;36;0"), Array("NAME:ChangedProps", _
  Array("NAME:MOD", "OverridingDef:=", true, "Value:=", "DModel1"))))
oEditor.CreateComponent Array("NAME:ComponentProps", "Name:=", "DIODE", "Id:=", _
  "37"), Array("NAME:Attributes", "Page:=", 1, "X:=", 0.0635, "Y:=", 0.03048, _
  "Degrees:=", 90, "Flip:=", false) 
oEditor.CreateWire Array("NAME:WireData", "Id:=", "1", "Points:=", Array(_
  "(0.0635, 0.03556)", "(0.0635, 0.0508)")), Array("NAME:Attributes", _
  "Page:=", 1) 
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:PassedParameterTab", _
  Array("NAME:PropServers", "CompInst@DIODE;37;0"), Array("NAME:ChangedProps", _
  Array("NAME:MOD", "OverridingDef:=", true, "Value:=", "DModel1"))))
oEditor.CreateComponent Array("NAME:ComponentProps", "Name:=", "DIODE", "Id:=", _
  "38"), Array("NAME:Attributes", "Page:=", 1, "X:=", 0.0762, "Y:=", -0.03048, _
  "Degrees:=", 90, "Flip:=", false) 
oEditor.CreateWire Array("NAME:WireData", "Id:=", "1", "Points:=", Array(_
  "(0.0762, -0.0254)", "(0.0762, 0.0254)")), Array("NAME:Attributes", _
  "Page:=", 1) 
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:PassedParameterTab", _
  Array("NAME:PropServers", "CompInst@DIODE;38;0"), Array("NAME:ChangedProps", _
  Array("NAME:MOD", "OverridingDef:=", true, "Value:=", "DModel1"))))
oEditor.CreateComponent Array("NAME:ComponentProps", "Name:=", "DIODE", "Id:=", _
  "39"), Array("NAME:Attributes", "Page:=", 1, "X:=", 0.0889, "Y:=", 0.03048, _
  "Degrees:=", 90, "Flip:=", false) 
oEditor.CreateWire Array("NAME:WireData", "Id:=", "1", "Points:=", Array(_
  "(0.0889, 0.03556)", "(0.0889, 0.0508)")), Array("NAME:Attributes", _
  "Page:=", 1) 
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:PassedParameterTab", _
  Array("NAME:PropServers", "CompInst@DIODE;39;0"), Array("NAME:ChangedProps", _
  Array("NAME:MOD", "OverridingDef:=", true, "Value:=", "DModel1"))))
oEditor.CreateComponent Array("NAME:ComponentProps", "Name:=", "DIODE", "Id:=", _
  "40"), Array("NAME:Attributes", "Page:=", 1, "X:=", 0.0254, "Y:=", 0.04318, _
  "Degrees:=", -90, "Flip:=", false) 
oEditor.CreateWire Array("NAME:WireData", "Id:=", "1", "Points:=", Array(_
  "(0.0254, 0.04826)", "(0.0254, 0.0508)")), Array("NAME:Attributes", _
  "Page:=", 1) 
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:PassedParameterTab", _
  Array("NAME:PropServers", "CompInst@DIODE;40;0"), Array("NAME:ChangedProps", _
  Array("NAME:MOD", "OverridingDef:=", true, "Value:=", "DModel1"))))
oEditor.CreateComponent Array("NAME:ComponentProps", "Name:=", "DIODE", "Id:=", _
  "41"), Array("NAME:Attributes", "Page:=", 1, "X:=", 0.0381, "Y:=", -0.01778, _
  "Degrees:=", -90, "Flip:=", false) 
oEditor.CreateWire Array("NAME:WireData", "Id:=", "1", "Points:=", Array(_
  "(0.0381, -0.0127)", "(0.0381, 0.0254)")), Array("NAME:Attributes", _
  "Page:=", 1) 
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:PassedParameterTab", _
  Array("NAME:PropServers", "CompInst@DIODE;41;0"), Array("NAME:ChangedProps", _
  Array("NAME:MOD", "OverridingDef:=", true, "Value:=", "DModel1"))))
oEditor.CreateComponent Array("NAME:ComponentProps", "Name:=", "DIODE", "Id:=", _
  "42"), Array("NAME:Attributes", "Page:=", 1, "X:=", 0.0508, "Y:=", 0.04318, _
  "Degrees:=", -90, "Flip:=", false) 
oEditor.CreateWire Array("NAME:WireData", "Id:=", "1", "Points:=", Array(_
  "(0.0508, 0.04826)", "(0.0508, 0.0508)")), Array("NAME:Attributes", _
  "Page:=", 1) 
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:PassedParameterTab", _
  Array("NAME:PropServers", "CompInst@DIODE;42;0"), Array("NAME:ChangedProps", _
  Array("NAME:MOD", "OverridingDef:=", true, "Value:=", "DModel1"))))
oEditor.CreateComponent Array("NAME:ComponentProps", "Name:=", "DIODE", "Id:=", _
  "43"), Array("NAME:Attributes", "Page:=", 1, "X:=", 0.0635, "Y:=", -0.01778, _
  "Degrees:=", -90, "Flip:=", false) 
oEditor.CreateWire Array("NAME:WireData", "Id:=", "1", "Points:=", Array(_
  "(0.0635, -0.0127)", "(0.0635, 0.0254)")), Array("NAME:Attributes", _
  "Page:=", 1) 
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:PassedParameterTab", _
  Array("NAME:PropServers", "CompInst@DIODE;43;0"), Array("NAME:ChangedProps", _
  Array("NAME:MOD", "OverridingDef:=", true, "Value:=", "DModel1"))))
oEditor.CreateComponent Array("NAME:ComponentProps", "Name:=", "DIODE", "Id:=", _
  "44"), Array("NAME:Attributes", "Page:=", 1, "X:=", 0.0762, "Y:=", 0.04318, _
  "Degrees:=", -90, "Flip:=", false) 
oEditor.CreateWire Array("NAME:WireData", "Id:=", "1", "Points:=", Array(_
  "(0.0762, 0.04826)", "(0.0762, 0.0508)")), Array("NAME:Attributes", _
  "Page:=", 1) 
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:PassedParameterTab", _
  Array("NAME:PropServers", "CompInst@DIODE;44;0"), Array("NAME:ChangedProps", _
  Array("NAME:MOD", "OverridingDef:=", true, "Value:=", "DModel1"))))
oEditor.CreateComponent Array("NAME:ComponentProps", "Name:=", "DIODE", "Id:=", _
  "45"), Array("NAME:Attributes", "Page:=", 1, "X:=", 0.0889, "Y:=", -0.01778, _
  "Degrees:=", -90, "Flip:=", false) 
oEditor.CreateWire Array("NAME:WireData", "Id:=", "1", "Points:=", Array(_
  "(0.0889, -0.0127)", "(0.0889, 0.0254)")), Array("NAME:Attributes", _
  "Page:=", 1) 
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:PassedParameterTab", _
  Array("NAME:PropServers", "CompInst@DIODE;45;0"), Array("NAME:ChangedProps", _
  Array("NAME:MOD", "OverridingDef:=", true, "Value:=", "DModel1"))))
oEditor.CreateComponent Array("NAME:ComponentProps", "Name:=", "SW_V", "Id:=", _
  "46"), Array("NAME:Attributes", "Page:=", 1, "X:=", 0.0254, "Y:=", 0.03048, _
  "Degrees:=", -90, "Flip:=", false) 
oEditor.CreateWire Array("NAME:WireData", "Id:=", "1", "Points:=", Array(_
  "(0.0254, 0.03556)", "(0.0254, 0.0381)")), Array("NAME:Attributes", _
  "Page:=", 1) 
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:PassedParameterTab", _
  Array("NAME:PropServers", "CompInst@SW_V;46;0"), Array("NAME:ChangedProps", _
  Array("NAME:ID_V", "OverridingDef:=", true, "Value:=", "IVc1"))))
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:PassedParameterTab", _
  Array("NAME:PropServers", "CompInst@SW_V;46;0"), Array("NAME:ChangedProps", _
  Array("NAME:MOD", "OverridingDef:=", true, "Value:=", "SModel1"))))
oEditor.CreateComponent Array("NAME:ComponentProps", "Name:=", "SW_V", "Id:=", _
  "47"), Array("NAME:Attributes", "Page:=", 1, "X:=", 0.0381, "Y:=", -0.03048, _
  "Degrees:=", -90, "Flip:=", false) 
oEditor.CreateWire Array("NAME:WireData", "Id:=", "1", "Points:=", Array(_
  "(0.0381, -0.0254)", "(0.0381, -0.02286)")), Array("NAME:Attributes", _
  "Page:=", 1) 
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:PassedParameterTab", _
  Array("NAME:PropServers", "CompInst@SW_V;47;0"), Array("NAME:ChangedProps", _
  Array("NAME:ID_V", "OverridingDef:=", true, "Value:=", "IVc4"))))
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:PassedParameterTab", _
  Array("NAME:PropServers", "CompInst@SW_V;47;0"), Array("NAME:ChangedProps", _
  Array("NAME:MOD", "OverridingDef:=", true, "Value:=", "SModel1"))))
oEditor.CreateComponent Array("NAME:ComponentProps", "Name:=", "SW_V", "Id:=", _
  "48"), Array("NAME:Attributes", "Page:=", 1, "X:=", 0.0508, "Y:=", 0.03048, _
  "Degrees:=", -90, "Flip:=", false) 
oEditor.CreateWire Array("NAME:WireData", "Id:=", "1", "Points:=", Array(_
  "(0.0508, 0.03556)", "(0.0508, 0.0381)")), Array("NAME:Attributes", _
  "Page:=", 1) 
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:PassedParameterTab", _
  Array("NAME:PropServers", "CompInst@SW_V;48;0"), Array("NAME:ChangedProps", _
  Array("NAME:ID_V", "OverridingDef:=", true, "Value:=", "IVc3"))))
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:PassedParameterTab", _
  Array("NAME:PropServers", "CompInst@SW_V;48;0"), Array("NAME:ChangedProps", _
  Array("NAME:MOD", "OverridingDef:=", true, "Value:=", "SModel1"))))
oEditor.CreateComponent Array("NAME:ComponentProps", "Name:=", "SW_V", "Id:=", _
  "49"), Array("NAME:Attributes", "Page:=", 1, "X:=", 0.0635, "Y:=", -0.03048, _
  "Degrees:=", -90, "Flip:=", false) 
oEditor.CreateWire Array("NAME:WireData", "Id:=", "1", "Points:=", Array(_
  "(0.0635, -0.0254)", "(0.0635, -0.02286)")), Array("NAME:Attributes", _
  "Page:=", 1) 
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:PassedParameterTab", _
  Array("NAME:PropServers", "CompInst@SW_V;49;0"), Array("NAME:ChangedProps", _
  Array("NAME:ID_V", "OverridingDef:=", true, "Value:=", "IVc6"))))
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:PassedParameterTab", _
  Array("NAME:PropServers", "CompInst@SW_V;49;0"), Array("NAME:ChangedProps", _
  Array("NAME:MOD", "OverridingDef:=", true, "Value:=", "SModel1"))))
oEditor.CreateComponent Array("NAME:ComponentProps", "Name:=", "SW_V", "Id:=", _
  "50"), Array("NAME:Attributes", "Page:=", 1, "X:=", 0.0762, "Y:=", 0.03048, _
  "Degrees:=", -90, "Flip:=", false) 
oEditor.CreateWire Array("NAME:WireData", "Id:=", "1", "Points:=", Array(_
  "(0.0762, 0.03556)", "(0.0762, 0.0381)")), Array("NAME:Attributes", _
  "Page:=", 1) 
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:PassedParameterTab", _
  Array("NAME:PropServers", "CompInst@SW_V;50;0"), Array("NAME:ChangedProps", _
  Array("NAME:ID_V", "OverridingDef:=", true, "Value:=", "IVc5"))))
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:PassedParameterTab", _
  Array("NAME:PropServers", "CompInst@SW_V;50;0"), Array("NAME:ChangedProps", _
  Array("NAME:MOD", "OverridingDef:=", true, "Value:=", "SModel1"))))
oEditor.CreateComponent Array("NAME:ComponentProps", "Name:=", "SW_V", "Id:=", _
  "51"), Array("NAME:Attributes", "Page:=", 1, "X:=", 0.0889, "Y:=", -0.03048, _
  "Degrees:=", -90, "Flip:=", false) 
oEditor.CreateWire Array("NAME:WireData", "Id:=", "1", "Points:=", Array(_
  "(0.0889, -0.0254)", "(0.0889, -0.02286)")), Array("NAME:Attributes", _
  "Page:=", 1) 
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:PassedParameterTab", _
  Array("NAME:PropServers", "CompInst@SW_V;51;0"), Array("NAME:ChangedProps", _
  Array("NAME:ID_V", "OverridingDef:=", true, "Value:=", "IVc2"))))
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:PassedParameterTab", _
  Array("NAME:PropServers", "CompInst@SW_V;51;0"), Array("NAME:ChangedProps", _
  Array("NAME:MOD", "OverridingDef:=", true, "Value:=", "SModel1"))))
oEditor.CreateWire Array("NAME:WireData", "Id:=", "1", "Points:=", Array(_
  "(0.0254, -0.0508)", "(0.0254, -0.03556)")), Array("NAME:Attributes", _
  "Page:=", 1) 
oEditor.CreateWire Array("NAME:WireData", "Id:=", "1", "Points:=", Array(_
  "(0.0381, -0.0508)", "(0.0381, -0.03556)")), Array("NAME:Attributes", _
  "Page:=", 1) 
oEditor.CreateWire Array("NAME:WireData", "Id:=", "1", "Points:=", Array(_
  "(0.0508, -0.0508)", "(0.0508, -0.03556)")), Array("NAME:Attributes", _
  "Page:=", 1) 
oEditor.CreateWire Array("NAME:WireData", "Id:=", "1", "Points:=", Array(_
  "(0.0635, -0.0508)", "(0.0635, -0.03556)")), Array("NAME:Attributes", _
  "Page:=", 1) 
oEditor.CreateWire Array("NAME:WireData", "Id:=", "1", "Points:=", Array(_
  "(0.0762, -0.0508)", "(0.0762, -0.03556)")), Array("NAME:Attributes", _
  "Page:=", 1) 
oEditor.CreateWire Array("NAME:WireData", "Id:=", "1", "Points:=", Array(_
  "(0.0889, -0.0508)", "(0.0889, -0.03556)")), Array("NAME:Attributes", _
  "Page:=", 1) 
oEditor.CreateWire Array("NAME:WireData", "Id:=", "1", "Points:=", Array(_
  "(0.0254, 0.00508)", "(0.0381, 0.00508)", "(0.11176, 0.00508)", _
  "(0.11176, 0.01016)", "(0.1143, 0.01016)")), Array("NAME:Attributes", _
  "Page:=", 1) 
oEditor.CreateWire Array("NAME:WireData", "Id:=", "1", "Points:=", Array(_
  "(0.0508, 0)", "(0.0635, 0)", "(0.1143, 0)", "(0.1143, 0)", "(0.1143, 0)")), _
  Array("NAME:Attributes", "Page:=", 1) 
oEditor.CreateWire Array("NAME:WireData", "Id:=", "1", "Points:=", Array(_
  "(0.0762, -0.00508)", "(0.0889, -0.00508)", "(0.1143, -0.00508)", _
  "(0.1143, -0.01016)", "(0.1143, -0.01016)")), Array("NAME:Attributes", _
  "Page:=", 1) 
oEditor.CreateComponent Array("NAME:ComponentProps", "Name:=", "DIODE_Model", _
  "Id:=", "52"), Array("NAME:Attributes", "Page:=", 1, "X:=", 0.1016, "Y:=", _
  0.04826, "Degrees:=", 0, "Flip:=", false) 
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:PassedParameterTab", _
  Array("NAME:PropServers", "CompInst@DIODE_Model;52;0"), Array(_
  "NAME:ChangedProps", Array("NAME:RS", "OverridingDef:=", true, "Value:=", _
  "0.00164992ohm"))))
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:PassedParameterTab", _
  Array("NAME:PropServers", "CompInst@DIODE_Model;52;0"), Array(_
  "NAME:ChangedProps", Array("NAME:DeviceName", "OverridingDef:=", true, _
  "Value:=", "DModel1"))))
oEditor.CreateComponent Array("NAME:ComponentProps", "Name:=", "SW_VModel", _
  "Id:=", "53"), Array("NAME:Attributes", "Page:=", 1, "X:=", 0.1143, "Y:=", _
  0.04826, "Degrees:=", 0, "Flip:=", false) 
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:PassedParameterTab", _
  Array("NAME:PropServers", "CompInst@SW_VModel;53;0"), Array(_
  "NAME:ChangedProps", Array("NAME:Von", "OverridingDef:=", true, "Value:=", _
  "0.0 V"))))
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:PassedParameterTab", _
  Array("NAME:PropServers", "CompInst@SW_VModel;53;0"), Array(_
  "NAME:ChangedProps", Array("NAME:Voff", "OverridingDef:=", true, "Value:=", _
  "0.0 V"))))
oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:PassedParameterTab", _
  Array("NAME:PropServers", "CompInst@SW_VModel;53;0"), Array(_
  "NAME:ChangedProps", Array("NAME:DeviceName", "OverridingDef:=", true, _
  "Value:=", "SModel1"))))
if (oArgs.Count > 1) then 
  oProject.SetActiveDesign oArgs(1)
end if
oEditor.ZoomToFit
if (oArgs.Count > 0) then 
  oProject.SaveAs oArgs(0), TRUE
end if
if (oArgs.Count > 2) then 
  oDesign.ExportNetList "", oArgs(2)
end if
