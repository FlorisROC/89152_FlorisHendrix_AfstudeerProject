//This file was generated by the LASAL2 CodeGenerator  -- 
//Please, do not edit this file (it might be overwritten by the next generator run)
//{{LSL_DECLARATION

(*!
<Class
	Name               = "SyncCall"
	Revision           = "1.21"
	GUID               = "{57269018-2E0A-4484-A77E-CCE0899D7749}"
	RealtimeTask       = "false"
	CyclicTask         = "false"
	BackgroundTask     = "false"
	Sigmatek           = "true"
	OSInterface        = "false"
	HighPriority       = "false"
	Automatic          = "false"
	UpdateMode         = "Prescan"
	IconPath           = ".\Class\Tool.ico"
	SharedCommandTable = "true"
	Objectsize         = "(284,120)">
	<Channels>
		<Server
			Name           = "State"
			Initialize     = "false"
			Visualized     = "true"
			WriteProtected = "true">
		</Server>
	</Channels>
	<RevDoku>
		<Owner Company="Sigmatek"/>
		<Dokumentation Revision="1.21" Date="11.05.2016" Author="RamAnd" Company="Sigmatek" Description="Suppressed warning that would occur with target ARM on compiler version 30 or higher."/>
		<Dokumentation Revision="1.20" Date="21.01.2014" Author="FucHer" Company="Sigmatek" Description="Changed AWL code to Structured Text."/>
		<Dokumentation Revision="1.10" Date="06.12.2013" Author="LanSte" Company="Sigmatek" Description="AWL deactivated for ARM."/>
		<Dokumentation Revision="1.4" Date="20.07.2012" Author="ObeChr" Company="Sigmatek" Description="Implemented time measurement for internal tests in methods UpdateRt, UpdateRtPostScan and UpdateCy"/>
		<Dokumentation Revision="1.3" Date="22.09.2011" Author="RamAnd" Company="Sigmatek" Description="Parameter of Server Read/Write-Methods have been changed to the type of the server."/>
		<Dokumentation Revision="1.2" Date="22.07.2010" Author="WocPet" Company="Sigmnatek" Description="changes in base class: new client &quot;Required&quot;  added"/>
	</RevDoku>
	<Network Name="SyncCall">
		<!-- List of Components in this network -->
		<Components>
			<Object
				Name       = "_base"
				GUID       = "{89885B3C-C4CD-40A2-9097-20F7F660979A}"
				Class      = "HwBaseCDIAS"
				Position   = "(210,150)"
				Visualized = "true">
				<Channels>
					<Server Name="SerialNo"/>
					<Server Name="State"/>
					<Client Name="MasterConnect"/>
					<Client Name="Place"/>
					<Client Name="Required" Value="1"/>
					<Client Name="TimeBase" Value="0"/>
					<Client Name="TimeBaseOffset" Value="0"/>
					<Client Name="To_StdLib"/>
				</Channels>
			</Object>
		</Components>
		<Comments>
		</Comments>
		<!-- List of Connections in this network -->
		<Connections>
			<Connection Source="this.State" Destination="_base.State" Vertices="(682,210),(510,240),"/>
			<Connection Source="_base.MasterConnect" Destination="this.MasterConnect" Vertices="(210,240),(38,210),"/>
			<Connection Source="_base.Place" Destination="this.Place" Vertices="(210,300),(38,270),"/>
		</Connections>
		<!-- Headerfiles -->
		<Options>
		</Options>
	</Network>
</Class>
*)
#pragma using HwBaseCDIAS

SyncCall : CLASS
: HwBaseCDIAS
  //Servers:
  //Clients:
  //Variables:
		us_RtPasses 	: USINT;
		us_Counter 	: USINT;
  //Functions:
	
	FUNCTION VIRTUAL GLOBAL Init;
	
	FUNCTION VIRTUAL GLOBAL UpDateRT
		VAR_INPUT
			Handle 	: UDINT;
		END_VAR;
	
	FUNCTION VIRTUAL GLOBAL State::Read
		VAR_OUTPUT
			output (EAX) 	: IO_State;
		END_VAR;
  //Tables:
	FUNCTION @STD
		VAR_OUTPUT
			ret_code	: CONFSTATES;
		END_VAR;
	FUNCTION GLOBAL TAB @CT_;
END_CLASS;

//}}LSL_DECLARATION


FUNCTION GLOBAL TAB SyncCall::@CT_
0$UINT,
2#0100000000000000$UINT, //TY_SYNCCALL
1$UINT, 21$UINT, (SIZEOF(::SyncCall))$UINT, 
0$UINT, 0$UINT, 0$UINT, 
TO_UDINT(4187542331), "SyncCall", //Class
TO_UDINT(1800499398), "HwBaseCDIAS", 2$UINT, 56$UINT, //Baseclass
//Servers:
//Clients:
END_FUNCTION


#define USER_CNT_SyncCall 29

TYPE
	_LSL_STD_VMETH	: STRUCT
			CmdTable	: CMDMETH;
			UserFcts	: ARRAY[0..USER_CNT_SyncCall] OF ^Void;
	END_STRUCT;
END_TYPE

FUNCTION SyncCall::@STD
	VAR_OUTPUT
		ret_code	: CONFSTATES;
	END_VAR
	VAR
		vmt	: _LSL_STD_VMETH;
		nCmdSize	: UINT;
	END_VAR

	ret_code	:= HwBaseCDIAS::@STD();
	IF ret_code <> C_OK THEN
		RETURN;
	END_IF;
	nCmdSize		:= HwBaseCDIAS::State.pMeth^.nCmds$UINT*SIZEOF(pVoid) + CMDMETH.Init;

	_memcpy((#vmt.CmdTable)$^USINT, HwBaseCDIAS::State.pMeth, nCmdSize);
	vmt.CmdTable.nCmds		:= nSTDCMD + USER_CNT_SyncCall;
	vmt.CmdTable.Read		:= #State::Read();
	vmt.CmdTable.Init		:= #Init();
#pragma warning (disable : 74)
	vmt.UserFcts[1]		:= #UpDateRT();

#pragma warning (default : 74)
	HwBaseCDIAS::State.pMeth		:= StoreCmd (pCmd := #vmt.CmdTable, SHARED);

	IF HwBaseCDIAS::State.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;

END_FUNCTION

//{{LSL_IMPLEMENTATION
#pragma using DiasMaster


(************************************************************************************************
*
*	Class to send the global sync
*	Created	: Sigmatek / 2003
*	Changes :
*		1.0 => 1.1	/	13.02.2006	/	Mark:	//#SR000
*			delete #define DiasMaster200us and make compatible to Xilinx 2.1 (�s-Version in Lasal2)
*
*************************************************************************************************)

FUNCTION VIRTUAL GLOBAL SyncCall::UpDateRT
VAR_INPUT
	Handle		: UDINT;
END_VAR

//============================ Profiler start======================================================
#ifdef  DM_Profiler								
  StartTimeMeasurement(usMode:=DMTIME_RT);
#endif	
//============================ Profiler end======================================================== 

  if us_Counter >= us_RtPasses then
    (_IOSegment$^SINT+Handle)^ := DmSingle;
    us_Counter := 0;
  end_if;

  us_Counter += 1;
//============================ Profiler start======================================================
#ifdef  DM_Profiler								
  StopTimeMeasurement(usMode:=DMTIME_RT);
#endif	
//============================ Profiler end======================================================== 


END_FUNCTION //VIRTUAL GLOBAL SyncCall::UpDateRT

 //VIRTUAL GLOBAL SyncCall::UpDateRT

FUNCTION VIRTUAL GLOBAL SyncCall::State::Read
	VAR_OUTPUT
		output (EAX) 	: IO_State;
	END_VAR

	output := this$IO_State;

END_FUNCTION //VIRTUAL GLOBAL SyncCall::State::Read

FUNCTION VIRTUAL GLOBAL SyncCall::Init						//#SR000

//============================ Profiler start======================================================
#ifdef DM_Profiler 
  InitTimeMeasurement(usMode := DMTIME_RT);
#endif
//============================ Profiler end========================================================

	us_RtPasses := MasterConnect.GetRtPasses();

END_FUNCTION //VIRTUAL GLOBAL SyncCall::Init

