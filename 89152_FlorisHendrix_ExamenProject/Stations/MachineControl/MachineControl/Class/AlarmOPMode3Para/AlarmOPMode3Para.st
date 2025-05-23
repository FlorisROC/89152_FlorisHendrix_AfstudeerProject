//This file was generated by the LASAL2 CodeGenerator  -- 
//Please, do not edit this file (it might be overwritten by the next generator run)
//{{LSL_DECLARATION

(*!
<Class
	Name               = "AlarmOPMode3Para"
	Revision           = "1.2"
	GUID               = "{1B6DDE2F-351E-40FD-82AF-9B9FB5AA84D1}"
	RealtimeTask       = "false"
	CyclicTask         = "false"
	BackgroundTask     = "false"
	Sigmatek           = "true"
	OSInterface        = "false"
	HighPriority       = "false"
	Automatic          = "false"
	UpdateMode         = "Prescan"
	SharedCommandTable = "true"
	Objectsize         = "(414,120)"
	Comment            = "Class to handle one alarm, which must be used in comination with the tools-class AlarmBuffer.&#13;&#10;&#13;&#10;It&apos;s possible to add three parameter to the alarm, which is available in the visualisation.">
	<Channels>
		<Client Name="Parameter1" Required="false" Internal="false" Comment="Additional parameter for the alarm which is can be used in the visualisation."/>
		<Client Name="Parameter2" Required="false" Internal="false" Comment="Additional parameter for the alarm which is can be used in the visualisation."/>
		<Client Name="Parameter3" Required="false" Internal="false" Comment="Additional parameter for the alarm which is can be used in the visualisation."/>
	</Channels>
	<RevDoku>
		<Owner Company="Sigmatek" Author="ObeChr"/>
		<Dokumentation Revision="1.2" Date="2016-06-16" Author="ObeChr" Company="Sigmatek" Description="Settings of client OPMode + AlarmInfo are only read in case the alarm gets active. That&apos;s necessary to prevent couting problem in the class AlarmBufferBase."/>
		<Dokumentation Revision="1.1" Date="2015-06-09" Author="ObeChr" Company="Sigmatek" Description="Implemented function to delete alarm with quit."/>
		<Dokumentation Revision="1.0" Date="2015-06-01" Author="ObeChr" Company="Sigmatek" Description="First version of class for delivering OPMode, AlarmAction and three parameter to the class AlarmBuffer."/>
	</RevDoku>
	<Network Name="AlarmOPMode3Para">
		<!-- List of Components in this network -->
		<Components>
			<Object
				Name       = "_base"
				GUID       = "{4599F760-87C9-4F47-9B42-694CB19F23F1}"
				Class      = "AlarmOPMode0Para"
				Position   = "(218,120)"
				Visualized = "true">
				<Channels>
					<Server Name="ClassSvr"/>
					<Client Name="Acknow"/>
					<Client Name="AlarmInfo" Value="2#00000000"/>
					<Client Name="AlarmMode"/>
					<Client Name="Config" Value="0"/>
					<Client Name="OPMode" Value="OPMode_Init"/>
				</Channels>
			</Object>
		</Components>
		<Comments>
		</Comments>
		<!-- List of Connections in this network -->
		<Connections>
			<Connection Source="this.ClassSvr" Destination="_base.ClassSvr" Vertices="(820,210),(648,210),"/>
			<Connection Source="_base.Config" Destination="this.Config" Vertices="(218,210),(38,210),"/>
			<Connection Source="_base.Acknow" Destination="this.Acknow" Vertices="(218,270),(38,270),"/>
			<Connection Source="_base.OPMode" Destination="this.OPMode" Vertices="(218,330),(38,330),"/>
			<Connection Source="_base.AlarmInfo" Destination="this.AlarmInfo" Vertices="(218,390),(38,390),"/>
			<Connection Source="_base.AlarmMode" Destination="this.AlarmMode" Vertices="(218,450),(38,450),"/>
		</Connections>
		<!-- Headerfiles -->
		<Options>
		</Options>
	</Network>
</Class>
*)
#pragma using AlarmOPMode0Para

AlarmOPMode3Para : CLASS
: AlarmOPMode0Para
  //Servers:
  //Clients:
	Parameter1 	: CltCh_DINT;
	Parameter2 	: CltCh_DINT;
	Parameter3 	: CltCh_DINT;
  //Variables:
  //Functions:
	
	FUNCTION VIRTUAL GLOBAL GetParaID
		VAR_INPUT
			ppara 	: ^UDINT;			//! <Variable Comment="Pointer to an UDINT array, that is to be filled with the Lasal IDs of the connected numeric parameter servers of the given alarm implementation. &#13;&#10;This is usually done by inserting the pCH data field of the parameter client at the corresponding array location. &#13;&#10;If the numeric value is a constant value, the array location is to be filled with 0." Name="GetParaID.ppara"/>
		END_VAR
		VAR_OUTPUT
			retcode 	: UDINT;			//! <Variable Comment="Returns the number of numeric parameters provided by the given alarm implementation." Name="GetParaID.retcode"/>
		END_VAR;
	
	FUNCTION VIRTUAL GLOBAL GetParaVal
		VAR_INPUT
			ppara 	: ^DINT;			//! <Variable Comment="Pointer to a DINT array with the size specified by the return value of GetParaID(). &#13;&#10;The array is to be filled with the current numeric parameter values, usually by calling the Read() method of the corresponding parameter client." Name="GetParaVal.ppara"/>
		END_VAR
		VAR_OUTPUT
			retcode 	: UDINT;			//! <Variable Comment="Returns the number of numeric parameters provided by the given alarm implementation." Name="GetParaVal.retcode"/>
		END_VAR;
  //Tables:
	FUNCTION @STD
		VAR_OUTPUT
			ret_code	: CONFSTATES;
		END_VAR;
	FUNCTION GLOBAL TAB @CT_;
END_CLASS;

//}}LSL_DECLARATION


FUNCTION GLOBAL TAB AlarmOPMode3Para::@CT_
0$UINT,
2#0100000000000000$UINT, //TY_ALARMOPMODE3PARA
1$UINT, 2$UINT, (SIZEOF(::AlarmOPMode3Para))$UINT, 
0$UINT, 3$UINT, 0$UINT, 
TO_UDINT(3784846610), "AlarmOPMode3Para", //Class
TO_UDINT(2788710338), "AlarmOPMode0Para", 1$UINT, 6$UINT, //Baseclass
//Servers:
//Clients:
(::AlarmOPMode3Para.Parameter1.pCh)$UINT, _CH_CLT_DATA$UINT, 2#0000000000000000$UINT, TO_UDINT(2930791861), "Parameter1", 
(::AlarmOPMode3Para.Parameter2.pCh)$UINT, _CH_CLT_DATA$UINT, 2#0000000000000000$UINT, TO_UDINT(934872079), "Parameter2", 
(::AlarmOPMode3Para.Parameter3.pCh)$UINT, _CH_CLT_DATA$UINT, 2#0000000000000000$UINT, TO_UDINT(1086207129), "Parameter3", 
END_FUNCTION


#define USER_CNT_AlarmOPMode3Para 10

TYPE
	_LSL_STD_VMETH	: STRUCT
			CmdTable	: CMDMETH;
			UserFcts	: ARRAY[0..USER_CNT_AlarmOPMode3Para] OF ^Void;
	END_STRUCT;
END_TYPE

FUNCTION AlarmOPMode3Para::@STD
	VAR_OUTPUT
		ret_code	: CONFSTATES;
	END_VAR
	VAR
		vmt	: _LSL_STD_VMETH;
		nCmdSize	: UINT;
	END_VAR

	ret_code	:= AlarmOPMode0Para::@STD();
	IF ret_code <> C_OK THEN
		RETURN;
	END_IF;
	nCmdSize		:= _AlarmX0Para::ClassSvr.pMeth^.nCmds$UINT*SIZEOF(pVoid) + CMDMETH.Init;

	_memcpy((#vmt.CmdTable)$^USINT, _AlarmX0Para::ClassSvr.pMeth, nCmdSize);
	vmt.CmdTable.nCmds		:= nSTDCMD + USER_CNT_AlarmOPMode3Para;
#pragma warning (disable : 74)
	vmt.UserFcts[0]		:= #GetParaID();

#pragma warning (default : 74)
#pragma warning (disable : 74)
	vmt.UserFcts[1]		:= #GetParaVal();

#pragma warning (default : 74)
	_AlarmX0Para::ClassSvr.pMeth		:= StoreCmd (pCmd := #vmt.CmdTable, SHARED);

	IF _AlarmX0Para::ClassSvr.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;

END_FUNCTION

//{{LSL_IMPLEMENTATION


FUNCTION VIRTUAL GLOBAL AlarmOPMode3Para::GetParaID
	VAR_INPUT
		ppara 	: ^UDINT;
	END_VAR
	VAR_OUTPUT
		retcode 	: UDINT;
	END_VAR
 
  // check if client for first parameter
  //----------------------------------------------------------------
  if(IsClientConnected(#Parameter1) = true) then
    // deliver LasalID of connected server
    // => needed by lse to get configuration of server (Unit, ..)
    ppara^ := (Parameter1.pCH)$UDINT;
  else
    // no LasalID available
    ppara^ := 0;
  end_if;

  ppara += sizeof(Parameter1);

  // check if client for second parameter
  //----------------------------------------------------------------
  if(IsClientConnected(#Parameter2) = true) then
    // deliver LasalID of connected server
    // => needed by lse to get configuration of server (Unit, ..)
    ppara^ := (Parameter2.pCH)$UDINT;
  else
    // no LasalID available
    ppara^ := 0;
  end_if;

  ppara += sizeof(Parameter2);

  // check if client for third parameter
  //----------------------------------------------------------------
  if(IsClientConnected(#Parameter3) = true) then
    // deliver LasalID of connected server
    // => needed by lse to get configuration of server (Unit, ..)
    ppara^ := (Parameter3.pCH)$UDINT;
  else
    // no LasalID available
    ppara^ := 0;
  end_if; 

  ppara += sizeof(Parameter3);

  // get setting of client OPMode
  //----------------------------------------------------------------
  // => the class AlarmBufferBase checks, 
  //    if the configured OPMode is available
  OPMode  := OPMode.Read();
  ppara^  := OPMode$UDINT;
 
  // return number of parameter
  retcode := 4;

END_FUNCTION


FUNCTION VIRTUAL GLOBAL AlarmOPMode3Para::GetParaVal
	VAR_INPUT
		ppara 	: ^DINT;
	END_VAR
	VAR_OUTPUT
		retcode 	: UDINT;
	END_VAR
  
  // get parameter 1 of alarm
  //--------------------------------
  Parameter1  := Parameter1.Read();
  ppara^      := Parameter1;

  ppara += sizeof(Parameter1);

  // get parameter 2 of alarm
  //--------------------------------
  Parameter2  := Parameter2.Read();
  ppara^      := Parameter2;

  ppara += sizeof(Parameter2);

  // get parameter 3 of alarm
  //--------------------------------
  Parameter3  := Parameter3.Read();
  ppara^      := Parameter3;

  ppara += sizeof(Parameter3);
  
  // get OPMode of alarm
  //--------------------------------
  ppara^ := eOPMode$DINT;
  
  ppara   += sizeof(eOPMode);
  
  // get action of alarm
  //--------------------------------
  ppara^    := bdAlarmInfo$DINT;
    
  // finished
  retcode := 5;

END_FUNCTION
