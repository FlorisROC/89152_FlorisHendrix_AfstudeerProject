//This file was generated by the LASAL2 CodeGenerator  -- 
//Please, do not edit this file (it might be overwritten by the next generator run)
//{{LSL_DECLARATION

(*!
<Class
	Name               = "_LMCAxisVisLogViewer"
	Revision           = "1.0"
	GUID               = "{CD81F08D-C063-49AC-9A2D-FED06A5427CD}"
	RealtimeTask       = "false"
	CyclicTask         = "false"
	BackgroundTask     = "false"
	Sigmatek           = "true"
	OSInterface        = "false"
	HighPriority       = "false"
	Automatic          = "false"
	UpdateMode         = "Prescan"
	IconPath           = ".\Class\_LMCAxis\LMCAxis.ico"
	SharedCommandTable = "true"
	Objectsize         = "(448,120)">
	<Channels>
		<Server Name="ClassSvr" GUID="{36B44DC1-617B-453A-8CD4-B0E9F3F40076}" Visualized="false" Initialize="false" WriteProtected="true" Retentive="false"/>
		<Server Name="LogCmd" GUID="{5C5B6D79-5609-427E-9173-04F53FEE944E}" Visualized="true" Initialize="false" WriteProtected="true" Retentive="false"/>
		<Server Name="LogIndexVisu" GUID="{A606346E-8F2C-4C31-B2D3-8A2202DA09B6}" Visualized="true" Initialize="false" WriteProtected="true" Retentive="false"/>
		<Server Name="LogRTStamp" GUID="{DC7192D1-A35B-4880-9E9B-92362A99F896}" Visualized="true" Initialize="false" WriteProtected="true" Retentive="false"/>
		<Server Name="LogState" GUID="{E02284D9-AC96-40CE-AAF5-F0C9AD2CBEFF}" Visualized="true" Initialize="false" WriteProtected="true" Retentive="false"/>
		<Server Name="LogTimeH" GUID="{2161AC99-85B7-4E1C-A8CA-4D3B1DCB136E}" Visualized="true" Initialize="false" WriteProtected="true" Retentive="false"/>
		<Server Name="LogTimeM" GUID="{71031270-2418-4041-82B2-5AEA2BDB000A}" Visualized="true" Initialize="false" WriteProtected="true" Retentive="false"/>
		<Server Name="LogTimeMS" GUID="{4B4F415A-CD36-44F6-8B8A-E82F3B9A5976}" Visualized="true" Initialize="false" WriteProtected="true" Retentive="false"/>
		<Server Name="LogTimeS" GUID="{345BC8B2-7934-4CAC-B458-C516602E779E}" Visualized="true" Initialize="false" WriteProtected="true" Retentive="false"/>
		<Server Name="LogTimeStamp" GUID="{C2F9F0A8-92A4-4ABE-8F17-8A89D94003A5}" Visualized="true" Initialize="false" WriteProtected="true" Retentive="false"/>
		<Server Name="LogValid" GUID="{30E72D16-DB15-4249-AFBE-6E0C6F74D8E7}" Visualized="true" Initialize="false" WriteProtected="true" Retentive="false"/>
		<Client Name="LMCAxisBase" Required="true" Internal="false"/>
		<Client Name="LogIndex" Required="true" Internal="false"/>
		<Client Name="LogOffset" Required="true" Internal="false"/>
	</Channels>
	<RevDoku>
		<Owner Company="Sigmatek" Author="ZoePat"/>
		<Dokumentation Revision="1.0" Date="2013-06-20" Author="ZoePat" Company="Sigmatek" Description="Created to handle LogData for VOV."/>
	</RevDoku>
</Class>
*)
_LMCAxisVisLogViewer : CLASS
  //Servers:
	ClassSvr 	: SvrChCmd_DINT;
	LogIndexVisu 	: SvrCh_DINT;
	LogCmd 	: SvrCh__CommandList_PTofCls__LMCAxisBase;
	LogState 	: SvrCh__LMCAXIS_CMDERROR;
	LogTimeStamp 	: SvrCh_UDINT;
	LogTimeH 	: SvrCh_UDINT;
	LogTimeM 	: SvrCh_UDINT;
	LogTimeS 	: SvrCh_UDINT;
	LogTimeMS 	: SvrCh_UDINT;
	LogRTStamp 	: SvrCh_UDINT;
	LogValid 	: SvrCh_DINT;
  //Clients:
	LMCAxisBase 	: CltChCmd__LMCAxisBase;
	LogIndex 	: CltCh_DINT;
	LogOffset 	: CltCh_DINT;
  //Variables:
		ptrLogFile 	: ^_LMCAxisBase::_LogFile;
  //Functions:
	
	FUNCTION VIRTUAL GLOBAL Init;
	
	FUNCTION VIRTUAL GLOBAL LogIndexVisu::Read
		VAR_OUTPUT
			output (EAX) 	: DINT;
		END_VAR;
	
	FUNCTION VIRTUAL GLOBAL LogCmd::Read
		VAR_OUTPUT
			output (EAX) 	: _LMCAxisBase::_CommandList;
		END_VAR;
  //Tables:
	FUNCTION @STD
		VAR_OUTPUT
			ret_code	: CONFSTATES;
		END_VAR;
	FUNCTION GLOBAL TAB @CT_;
END_CLASS;

#pragma usingLtd _LMCAxisBase


//}}LSL_DECLARATION


FUNCTION GLOBAL TAB _LMCAxisVisLogViewer::@CT_
0$UINT,
2#0100000000000000$UINT, //TY__LMCAXISVISLOGVIEWER
1$UINT, 0$UINT, (SIZEOF(::_LMCAxisVisLogViewer))$UINT, 
11$UINT, 3$UINT, 0$UINT, 
TO_UDINT(4049061347), "_LMCAxisVisLogViewer", //Class
TO_UDINT(0), 0, 0$UINT, 0$UINT, //Baseclass
//Servers:
(::_LMCAxisVisLogViewer.ClassSvr.pMeth)$UINT, _CH_CMD$UINT, 2#0000000000000000$UINT, TO_UDINT(619352855), "ClassSvr", 
(::_LMCAxisVisLogViewer.LogIndexVisu.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(3309611791), "LogIndexVisu", 
(::_LMCAxisVisLogViewer.LogCmd.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(1401046000), "LogCmd", 
(::_LMCAxisVisLogViewer.LogState.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(703320281), "LogState", 
(::_LMCAxisVisLogViewer.LogTimeStamp.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(1886855569), "LogTimeStamp", 
(::_LMCAxisVisLogViewer.LogTimeH.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(499787074), "LogTimeH", 
(::_LMCAxisVisLogViewer.LogTimeM.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(1839256013), "LogTimeM", 
(::_LMCAxisVisLogViewer.LogTimeS.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(2544889006), "LogTimeS", 
(::_LMCAxisVisLogViewer.LogTimeMS.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(3319329055), "LogTimeMS", 
(::_LMCAxisVisLogViewer.LogRTStamp.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(34771104), "LogRTStamp", 
(::_LMCAxisVisLogViewer.LogValid.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(109000669), "LogValid", 
//Clients:
(::_LMCAxisVisLogViewer.LMCAxisBase.pCh)$UINT, _CH_CLT_OBJ$UINT, 2#0000000000000010$UINT, TO_UDINT(1308806851), "LMCAxisBase", TO_UDINT(280984637), "_LMCAxisBase", 2$UINT, 101$UINT, 
(::_LMCAxisVisLogViewer.LogIndex.pCh)$UINT, _CH_CLT_DATA$UINT, 2#0000000000000010$UINT, TO_UDINT(168518947), "LogIndex", 
(::_LMCAxisVisLogViewer.LogOffset.pCh)$UINT, _CH_CLT_DATA$UINT, 2#0000000000000010$UINT, TO_UDINT(3079590910), "LogOffset", 
END_FUNCTION


#define USER_CNT__LMCAxisVisLogViewer 0

TYPE
	_LSL_STD_VMETH	: STRUCT
			CmdTable	: CMDMETH;
			UserFcts	: ARRAY[0..USER_CNT__LMCAxisVisLogViewer] OF ^Void;
	END_STRUCT;
END_TYPE

FUNCTION _LMCAxisVisLogViewer::@STD
	VAR_OUTPUT
		ret_code	: CONFSTATES;
	END_VAR
	VAR
		vmt	: _LSL_STD_VMETH;
	END_VAR

	//Command Methods
	InitCmdTable (nCmd := nSTDCMD + USER_CNT__LMCAxisVisLogViewer, pCmd := #vmt.CmdTable);
	vmt.CmdTable.Init		:= #Init();
	ClassSvr.pMeth		:= StoreCmd (pCmd := #vmt.CmdTable, SHARED);

	IF ClassSvr.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;
	LogIndexVisu.pMeth			:= StoreMethod( #LogIndexVisu::Read(), #M_NO_F() );
	IF LogIndexVisu.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;
	LogCmd.pMeth			:= StoreMethod( #LogCmd::Read(), #M_NO_F() );
	IF LogCmd.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;

END_FUNCTION

//{{LSL_IMPLEMENTATION
//{{LSL_ENCRYPTION 16#800
A4E48402F342212FF2412A957A14F995322BE6FD07E8A63BA7CCDD6E9AA75BFE476FE14A932BC5A6CDF837AA06533A1A0F0779F68FF7AC49F2ED9958F1398A067A7D0F651A520FABFE2AF5033D772E13A753C292BD974D183A3398982F2D1FA88CE6BA07
BED706457196222895FCEB83F19FAF7508524B66665510C5F1742E125A142A3F4ACB96AF21ED140A6C96F1950EA83726F713BD7B79F33950A9AE3F0173B0E3306DA73AEE441E848A3840309EE7EB50176103F00065D0AEBCD28EA531E8C9D61E5BD3AEEF
3D94C610FBFF40D452DE707E4A438207F6371DBB6178998B89DE79BD6C4E178AD1C068096589701D9DB946ED9BA45A0D3A169364A7C27A5AC3DC25C0A6AD0BD8AFE423FDE4D1000045F89A29001A112970AA7020E4B51D36512D78715980986DF7483857
4241886D64B5D1923AF4B655468D0298DEB521E6768A24AD0CE2F60992BE6AE765CD09EADFD00CCCBD9BB3A9D993BE4C9B2DDC8FB503ED9B10A62371A9D7C96E12081869EC64F891A8B809500559A7AC6FC423A39398E7C283916F72E738ADB24ECB7D61
DFB289E35411A957B61AFF8FF632466D8453529833E60F21446E0BA31074FCAFC981C7AB40E2772D7C25BA22986420C2E65080D6B792F695E3141AD1DBEA65C092601B6E942E170638ABC55B39BE9B8BC61A41B382D7C18DAEB34F74374D20C12A16AD06
A565706D7F834D41810F31A873F55CA21E2B84E59DEF55A4E25889A118A10254F0DF8F8EF32E4B513CA7227B330FD877239C198BD75C9468627CF5061AC0DA608C761A55EA66DAA00CE4BAA8FC8BFA15C99FDAC39382FA34114B4A5ACEA0C87D6131CA69
3564155A59381412954AB19778D43C3833B1FDE327DA1F19D473209459AC7782A3211195C94AFF4F2B6E74EB65511397423AA89A9C813F3623905E1FA3D19C4CA987AC9335DFC8F10ADB1F6EC2CD539DCCB70865230A5A451EFA2D242872FAE709A3EA1D
AE56505B944418504DF8DCF124405435E375EC9EA034F7F74811873140948565D18656E8A7615F36513864DF4F128A7316CB67A89CE9F76DCA4EE065AC60210E67A1361900836850E17D4E917CE6B509119CBF3005AD0E22A17734FEBF2442F921FB16BE
DD1B7E792D9CAD07E0FA4949B00B8CE66604BBC29C47145FF848C966ACF460B43DE9222B4FEF6FB7B157827E75641F66928BE6CCEEF0E0B24037DDF5168D244E47C94AAA7D00530E9E352FC3EA05CC39C52DB0BDBE28320D00E82A03D2960E6BF3C1C9CA
A3D32D0EC24AD159C97CFAE6A161982CE37BF41FCEEB94DE4CA930F608164922B8BCFF65255560675B779852D08D80C8EE56913E8BC72F41F79FA3192F0599C979569E203C7E4E3CD49DAA90FE9E1588CADA4BC51A4315DF19963B40DC7C14E38898B622
D8590A701A2EC05AE08FFFBF49EF7FA1A069B80E71A34559A3500FA8C45FB8F2453AA10962BFD7BD6C476DD312761E29BDD17210F722B5B0F0DC7FFE949346D0A8CFD443451C2061254531097C21BAB9337E5F7216C3F995F40697316ED53A9952DBFB24
0C147106F4E57BFFBB61929C5CC0FD2859833D34808E321EB72E2427E097AC4EF02E096F00E7574C9753C7D34589028111FC0CB38F5B5467B02090D754C7038AFB11C46846E6ECF02683B45902D6CCE357F87E5D0B862498A37008817B913AB1F4CE530A
EC4E11EAE74099AC5F9C77458C10D7CD3C91DA220ADC3745455FE2A6F2187AACCB21CE309CEA6B655E18DB8DC795EC328D7E91E9191A0FCFBE46C40FCE95B7AC9F93B50B1A165637D50A93360978A71EA9E2B2CAD05A3EDAF443E50B30F1A8D97A0AD052
C57682D28949BFFFD27E57D4FF37675DE00B7070F75AE804A1C30E21F4B2C04F770CAF1B20FEA3ED7998ADCA7E2332185C19CA7DAE78955F7755C0242CE130DF0B428CA7AB926E8BD5C50D0156C8BC544B538B1B916F7921B30882C42C2EBA126258F5EA
CA84B4C707CFC3C7194F4CC4AEBC516086A9678F1B059C3283F63B23A1EC3C6ED148CF6A69B2D1D169AC9CF01C4906EE60C650EF23B65FEA72E485328FC4AA3FCA30EF19D06542474DD7B81F4D8C33A23C0F0B9CBFE55A0941139859AB4C4A2EF79FD4FF
31A43FF5B05EAEF84991D10F300A75D6D7FECE1032FC1A24A0985E5B2A2EAA84E547B36841162C7AED476DB1357B18094464E4461251654EC67DAE51F30427ADEDF2FF2673AB171F940AA586D3EC37DE02394295274DBAB60358EEC6757EA5D2619A3182
7BE77D28C0C78F0225F9F29461BA8BB6