//This file was generated by the LASAL2 CodeGenerator  -- 
//Please, do not edit this file (it might be overwritten by the next generator run)
//{{LSL_DECLARATION

(*!
<Class
	Name               = "CM_SpeedControl"
	Revision           = "0.0"
	GUID               = "{F7AD62A4-0C60-4C9F-8D73-DC2C0B769738}"
	RealtimeTask       = "false"
	CyclicTask         = "true"
	DefCyclictime      = "10 ms"
	BackgroundTask     = "true"
	DefBackground      = "100 ms"
	Sigmatek           = "false"
	OSInterface        = "false"
	HighPriority       = "false"
	Automatic          = "false"
	UpdateMode         = "Prescan"
	SharedCommandTable = "true"
	Objectsize         = "(652,120)">
	<Channels>
		<Server Name="ClassSvr" GUID="{5BE2C135-A774-439F-A771-A1B38B52ED33}" Visualized="false" Initialize="false" WriteProtected="true" Retentive="false"/>
		<Server Name="sCycleCount" GUID="{E0D25521-1E02-40AD-94D6-2EBCF0149474}" Visualized="true" Initialize="false" WriteProtected="false" Retentive="SRam"/>
		<Server Name="sDiameter" GUID="{ED0179A7-FE77-4747-9C71-97E3C0EE7F38}" Visualized="true" Initialize="false" WriteProtected="false" Retentive="SRam"/>
		<Server Name="sMotorRunEndless" GUID="{5BC957A5-1A2F-4351-89D2-006FE62272C3}" Visualized="true" Initialize="false" WriteProtected="false" Retentive="false"/>
		<Server Name="sPosInMM" GUID="{2438CA18-9932-4D0A-8EF7-A52B89238D99}" Visualized="true" Initialize="false" WriteProtected="true" Retentive="false"/>
		<Server Name="sRemainingCycles" GUID="{7D292636-CF7B-4057-BFF1-033AB0A39E76}" Visualized="true" Initialize="false" WriteProtected="true" Retentive="false"/>
		<Server Name="sSpeedBaseRPM" GUID="{5F8F1774-C77C-495D-A859-B739F1071AA4}" Visualized="true" Initialize="true" DefValue="36" WriteProtected="false" Retentive="SRam"/>
		<Server Name="sSpeedDegPerSec" GUID="{5D3947F8-2744-4522-992D-17E4BBF1FEB1}" Visualized="false" Initialize="false" WriteProtected="true" Retentive="false"/>
		<Server Name="sSpeedRPM" GUID="{4F8BA503-D8C4-497D-82E7-1B6F04291AAE}" Visualized="true" Initialize="false" WriteProtected="true" Retentive="false"/>
		<Server Name="sStartCycles" GUID="{080C0269-FE90-4EA6-AC59-9570E2EA19CA}" Visualized="true" Initialize="false" WriteProtected="false" Retentive="false"/>
		<Client Name="cDI_MotorRunEndless" Required="true" Internal="false"/>
		<Client Name="cDI_ResetError" Required="true" Internal="false"/>
		<Client Name="cDI_ReverseDirection" Required="true" Internal="false"/>
		<Client Name="coLMC" Required="true" Internal="false"/>
		<Client Name="coLMCMath" Required="true" Internal="false"/>
	</Channels>
</Class>
*)
CM_SpeedControl : CLASS
  //Servers:
	ClassSvr 	: SvrChCmd_DINT;
	sSpeedBaseRPM 	: SvrCh_DINT;
	sDiameter 	: SvrCh_DINT;
	sPosInMM 	: SvrCh_DINT;
	sSpeedRPM 	: SvrCh_DINT;
	sRemainingCycles 	: SvrCh_DINT;
	sMotorRunEndless 	: SvrCh_DINT;
	sStartCycles 	: SvrCh_DINT;
	sCycleCount 	: SvrCh_DINT;
	sSpeedDegPerSec 	: SvrCh_DINT;
  //Clients:
	coLMC 	: CltChCmd__LMCAxis;
	cDI_MotorRunEndless 	: CltCh_DINT;
	cDI_ReverseDirection 	: CltCh_DINT;
	cDI_ResetError 	: CltCh_DINT;
	coLMCMath 	: CltChCmd__LMCMath_SO3;
  //Variables:
		vSetSpeed 	: DINT;
		vDegPerMM 	: DINT;
		vCircum 	: DINT;
		vPi 	: LREAL;
		vCalcSuccess 	: BOOL;
		CoS_LMCState 	: _LMCAXIS_OPMODE;
  //Functions:
	
	FUNCTION VIRTUAL GLOBAL Init;
	
	FUNCTION VIRTUAL GLOBAL CyWork
		VAR_INPUT
			EAX 	: UDINT;
		END_VAR
		VAR_OUTPUT
			state (EAX) 	: UDINT;
		END_VAR;
	
	FUNCTION VIRTUAL GLOBAL Background
		VAR_INPUT
			EAX 	: UDINT;
		END_VAR
		VAR_OUTPUT
			state (EAX) 	: UDINT;
		END_VAR;
	
	FUNCTION CalcDimensions;
	
	FUNCTION VIRTUAL GLOBAL sDiameter::Write
		VAR_INPUT
			input (EAX) 	: DINT;
		END_VAR
		VAR_OUTPUT
			result (EAX) 	: DINT;
		END_VAR;
	
	FUNCTION VIRTUAL GLOBAL sSpeedRPM::Read
		VAR_OUTPUT
			output (EAX) 	: DINT;
		END_VAR;
	
	FUNCTION VIRTUAL GLOBAL sStartCycles::Write
		VAR_INPUT
			input (EAX) 	: DINT;
		END_VAR
		VAR_OUTPUT
			result (EAX) 	: DINT;
		END_VAR;
  //Tables:
	FUNCTION @STD
		VAR_OUTPUT
			ret_code	: CONFSTATES;
		END_VAR;
	FUNCTION GLOBAL TAB @CT_;
END_CLASS;

#pragma usingLtd _LMCAxis
#pragma usingLtd _LMCMath_SO3


//}}LSL_DECLARATION


FUNCTION GLOBAL TAB CM_SpeedControl::@CT_
0$UINT,
2#0100000000000010$UINT, //TY_CM_SPEEDCONTROL
0$UINT, 0$UINT, (SIZEOF(::CM_SpeedControl))$UINT, 
10$UINT, 5$UINT, 0$UINT, 
TO_UDINT(3909380417), "CM_SpeedControl", //Class
TO_UDINT(0), 0, 0$UINT, 0$UINT, //Baseclass
//Servers:
(::CM_SpeedControl.ClassSvr.pMeth)$UINT, _CH_CMD$UINT, 2#0000000000000000$UINT, TO_UDINT(619352855), "ClassSvr", 
(::CM_SpeedControl.sSpeedBaseRPM.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000001000$UINT, TO_UDINT(3492361332), "sSpeedBaseRPM", 
(::CM_SpeedControl.sDiameter.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000001000$UINT, TO_UDINT(2061596010), "sDiameter", 
(::CM_SpeedControl.sPosInMM.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(3443618881), "sPosInMM", 
(::CM_SpeedControl.sSpeedRPM.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(1404333476), "sSpeedRPM", 
(::CM_SpeedControl.sRemainingCycles.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(1849041594), "sRemainingCycles", 
(::CM_SpeedControl.sMotorRunEndless.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(1956808601), "sMotorRunEndless", 
(::CM_SpeedControl.sStartCycles.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(1533087966), "sStartCycles", 
(::CM_SpeedControl.sCycleCount.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000001000$UINT, TO_UDINT(3995365716), "sCycleCount", 
(::CM_SpeedControl.sSpeedDegPerSec.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(273575965), "sSpeedDegPerSec", 
//Clients:
(::CM_SpeedControl.coLMC.pCh)$UINT, _CH_CLT_OBJ$UINT, 2#0000000000000010$UINT, TO_UDINT(3380922409), "coLMC", TO_UDINT(1422175863), "_LMCAxis", 1$UINT, 110$UINT, 
(::CM_SpeedControl.cDI_MotorRunEndless.pCh)$UINT, _CH_CLT_DATA$UINT, 2#0000000000000010$UINT, TO_UDINT(2260269733), "cDI_MotorRunEndless", 
(::CM_SpeedControl.cDI_ReverseDirection.pCh)$UINT, _CH_CLT_DATA$UINT, 2#0000000000000010$UINT, TO_UDINT(3810513544), "cDI_ReverseDirection", 
(::CM_SpeedControl.cDI_ResetError.pCh)$UINT, _CH_CLT_DATA$UINT, 2#0000000000000010$UINT, TO_UDINT(3356592552), "cDI_ResetError", 
(::CM_SpeedControl.coLMCMath.pCh)$UINT, _CH_CLT_OBJ$UINT, 2#0000000000000010$UINT, TO_UDINT(1617160686), "coLMCMath", TO_UDINT(4293818033), "_LMCMath_SO3", 1$UINT, 24$UINT, 
END_FUNCTION


#define USER_CNT_CM_SpeedControl 1

TYPE
	_LSL_STD_VMETH	: STRUCT
			CmdTable	: CMDMETH;
			UserFcts	: ARRAY[0..USER_CNT_CM_SpeedControl] OF ^Void;
	END_STRUCT;
END_TYPE

FUNCTION CM_SpeedControl::@STD
	VAR_OUTPUT
		ret_code	: CONFSTATES;
	END_VAR
	VAR
		vmt	: _LSL_STD_VMETH;
	END_VAR

	//Command Methods
	InitCmdTable (nCmd := nSTDCMD + USER_CNT_CM_SpeedControl, pCmd := #vmt.CmdTable);
	vmt.CmdTable.Init		:= #Init();
	vmt.CmdTable.CyWork		:= #CyWork();
#pragma warning (disable : 74)
	vmt.UserFcts[0]		:= #Background();

#pragma warning (default : 74)
	ClassSvr.pMeth		:= StoreCmd (pCmd := #vmt.CmdTable, SHARED);

	IF ClassSvr.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;
	sSpeedBaseRPM.pMeth			:= StoreMethod( #M_RD_DIRECT(), #M_WR_DIRECT() );
	IF sSpeedBaseRPM.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;
	sDiameter.pMeth			:= StoreMethod( #M_RD_DIRECT(), #sDiameter::Write() );
	IF sDiameter.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;
	sSpeedRPM.pMeth			:= StoreMethod( #sSpeedRPM::Read(), #M_NO_F() );
	IF sSpeedRPM.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;
	sMotorRunEndless.pMeth			:= StoreMethod( #M_RD_DIRECT(), #M_WR_DIRECT() );
	IF sMotorRunEndless.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;
	sStartCycles.pMeth			:= StoreMethod( #M_RD_DIRECT(), #sStartCycles::Write() );
	IF sStartCycles.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;
	sCycleCount.pMeth			:= StoreMethod( #M_RD_DIRECT(), #M_WR_DIRECT() );
	IF sCycleCount.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;

END_FUNCTION

//{{LSL_IMPLEMENTATION
FUNCTION VIRTUAL GLOBAL CM_SpeedControl::Init
  if _FirstScan then
    coLMC.ExUnits.Write(input:=65536);
    coLMC.IntUnits.Write(360 deg);
    coLMC.Modulo.Write(360 deg);
    coLMC.VMax.Write(10 * 360 deg);
    coLMC.AMax.Write(10 * 360 deg);
    CalcDimensions(); // Bereken omtrek en graden per mm
  end_if;

  if (sSpeedBaseRPM < 10) then
    sSpeedBaseRPM.Write(10);
  end_if;

  if (sSpeedBaseRPM > 400) then
    sSpeedBaseRPM.Write(400);
  end_if;
END_FUNCTION


FUNCTION VIRTUAL GLOBAL CM_SpeedControl::CyWork
	VAR_INPUT
		EAX 	: UDINT;
	END_VAR
	VAR_OUTPUT
		state (EAX) 	: UDINT;
	END_VAR

  CoS_LMCState := coLMC;
  coLMC := coLMC.Read();

  if sStartCycles = 1 then
    cDI_MotorRunEndless := 0;
  elsif sMotorRunEndless=1 then
    cDI_MotorRunEndless := 1;
  else
    cDI_MotorRunEndless := cDI_MotorRunEndless.Read();
  end_if;

  cDI_ReverseDirection := cDI_ReverseDirection.Read();
  cDI_ResetError := cDI_ResetError.Read();

  sSpeedDegPerSec := sSpeedBaseRPM deg * 6; // 1 RPM = 6 graden/sec
  if cDI_ReverseDirection = 1 then
    sSpeedDegPerSec *= -1;
  end_if;

  vSetSpeed := coLMC.ReadVelocity(Mode:=LMCAXIS_SETVEL_APPUNIT_SEC);
  sPosInMM := coLMC.ReadPosition(LMCAXIS_SETPOS_APPUNIT)/vDegPerMM;

  case coLMC of
    PASSIVE_LMCAXIS:
      if (cDI_MotorRunEndless=1) | (sStartCycles = 1)  then
        coLMC.PowerOn(Mode:=LMCAXIS_MOVE_ANY_WAY);
      end_if;

    IDLE_LMCAXIS:
      if cDI_MotorRunEndless=1 then
        coLMC.MoveEndless(Speed:=sSpeedDegPerSec, Accel:=coLMC.AMax, Jerk:=0);
      elsif sStartCycles then
        if (sRemainingCycles > 0) then
          if (CoS_LMCState <> coLMC) then
            sRemainingCycles -= 1;
          end_if;
          coLMC.MoveRelative(
              Position:=360 deg,
              Mode:=LMCAXIS_MOVE_RELATIVE_TO_DESTINATION,
              Speed:=360 deg,
              Accel:=360 deg,
              Decel:=0,
              Jerk:=0);
        else
          sStartCycles := 0;
        end_if;
      else
        coLMC.PowerOff(Mode:=LMCAXIS_SMOOTH_STOPP);
      end_if;

    MOVE_LMCAXIS:
      if (cDI_MotorRunEndless=1) then
        if (vSetSpeed <> sSpeedDegPerSec) then
          if (vSetSpeed >= 0) XOR (sSpeedDegPerSec>=0) then
            coLMC.StopMove(Decel:=coLMC.AMax, Jerk:=0); // Richtingsverandering
          else
            coLMC.MoveEndless(Speed:=sSpeedDegPerSec, Accel:=coLMC.AMax, Jerk:=0);
          end_if;
        end_if;
      elsif (sStartCycles = 0) then
        coLMC.StopMove(Decel:=coLMC.AMax, Jerk:=0);
      end_if;
  end_case;

	state := READY;
END_FUNCTION


FUNCTION VIRTUAL GLOBAL CM_SpeedControl::Background
	VAR_INPUT
		EAX 	: UDINT;
	END_VAR
	VAR_OUTPUT
		state (EAX) 	: UDINT;
	END_VAR

	state := READY;
END_FUNCTION


FUNCTION CM_SpeedControl::CalcDimensions
  if sDiameter<=0 then
    sDiameter.Write(200);
  end_if;

  vPi := 4 * coLMCMath.atan2(1,1,#vCalcSuccess); // p-berekening via atan2
  vCircum := to_Dint(sDiameter * vPi);
  vDegPerMM := 360 deg / vCircum;
END_FUNCTION


FUNCTION VIRTUAL GLOBAL CM_SpeedControl::sDiameter::Write
	VAR_INPUT
		input (EAX) 	: DINT;
	END_VAR
	VAR_OUTPUT
		result (EAX) 	: DINT;
	END_VAR

	sDiameter := input;
	result := sDiameter;
  CalcDimensions(); // Herbereken bij nieuwe diameter
END_FUNCTION


FUNCTION VIRTUAL GLOBAL CM_SpeedControl::sSpeedRPM::Read
	VAR_OUTPUT
		output (EAX) 	: DINT;
	END_VAR

  sSpeedRPM:= 60 * vSetSpeed / (360 deg); // Omrekening van deg/sec naar RPM
	output := sSpeedRPM;
END_FUNCTION


FUNCTION VIRTUAL GLOBAL CM_SpeedControl::sStartCycles::Write
	VAR_INPUT
		input (EAX) 	: DINT;
	END_VAR
	VAR_OUTPUT
		result (EAX) 	: DINT;
	END_VAR

	sStartCycles := input;
  if sStartCycles = 1 then
    sRemainingCycles := sCycleCount;
  end_if;
	result := sStartCycles;
END_FUNCTION
