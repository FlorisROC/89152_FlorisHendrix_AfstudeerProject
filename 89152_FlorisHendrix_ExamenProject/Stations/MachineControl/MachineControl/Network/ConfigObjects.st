//This file was generated by the LASAL2 CodeGenerator  -- 
//Please, do not edit this file (it might be overwritten by the next generator run)


FUNCTION GLOBAL TAB TASK_CONF
_K_TASK, _K_REAL, 
_K_END_VAR, 

_K_TASK, _K_CYCLIC, 
_K_END_VAR, 

_K_TASK, _K_BACKGROUND, 
_K_END_VAR, 

_K_END_CONF
END_FUNCTION


FUNCTION GLOBAL TAB IPR_CONF
_K_IPR
	0$UINT, 
_K_END_VAR, 
_K_END_CONF
END_FUNCTION


FUNCTION GLOBAL TAB CONFIG_TABLES
00116$UINT, 
0$UINT, 0, 20, "_ALARMX0PARA", 
0$UINT, 0, 30, "_ALARMXBUFFER", 
0$UINT, 1, 57, "_AXISBASE", 
0$UINT, 1, 14, "_BUSINTERFACESDIASDRIVEMNG", 
0$UINT, 0, 4, "_CAN", 
0$UINT, 1, 10, "_CANLIB", 
0$UINT, 1, 4, "_CHECKONLINESTATUS", 
0$UINT, 1, 0, "_CHECKSUM", 
0$UINT, 1, 72, "_DRIVEAXIS", 
0$UINT, 1, 81, "_DRIVEAXISBASE", 
0$UINT, 1, 22, "_DRIVEAXISSET", 
0$UINT, 1, 14, "_DRIVEERRORHANDLING", 
0$UINT, 1, 82, "_DRIVEMNG_DC062", 
0$UINT, 1, 61, "_DRIVEMNGBASE", 
0$UINT, 1, 2, "_DRIVEPARABASE", 
0$UINT, 1, 20, "_FILESYS", 
0$UINT, 0, 5, "_LINKER", 
0$UINT, 1, 0, "_LMCABSENCODER", 
0$UINT, 1, 110, "_LMCAXIS", 
0$UINT, 1, 6, "_LMCAXISALARMSOP", 
0$UINT, 2, 101, "_LMCAXISBASE", 
0$UINT, 1, 32, "_LMCAXISREF", 
0$UINT, 1, 40, "_LMCAXISVIS", 
0$UINT, 1, 61, "_LMCAXISVISINT", 
0$UINT, 1, 0, "_LMCAXISVISLOGHANDLE", 
0$UINT, 1, 0, "_LMCAXISVISLOGVIEWER", 
0$UINT, 1, 13, "_LMCAXISVISPARA", 
0$UINT, 1, 0, "_LMCAXISVOVMONITORING", 
0$UINT, 1, 24, "_LMCMATH_SO3", 
0$UINT, 1, 75, "_LMCMATHFUNCTIONS", 
0$UINT, 1, 0, "_LMCMODULEBASE", 
0$UINT, 1, 0, "_LMCPUBLISHER", 
0$UINT, 1, 11, "_LMCREFBASE", 
0$UINT, 1, 21, "_LMCSAFETY", 
0$UINT, 1, 1, "_MULTITASK", 
0$UINT, 0, 5, "_OSKERNEL", 
0$UINT, 1, 0, "_QUITERRORLMCAXIS", 
0$UINT, 1, 34, "_SERLIB", 
0$UINT, 0, 0, "_STDLIB", 
0$UINT, 0, 10, "_SYSDATETIME", 
0$UINT, 1, 1, "_TASKOBJECTCONTROL", 
0$UINT, 1, 69, "_VARANDRIVEBASE", 
0$UINT, 1, 20, "AI043", 
0$UINT, 1, 6, "ALARMOPMODE0PARA", 
0$UINT, 1, 2, "ALARMOPMODE3PARA", 
0$UINT, 1, 21, "ASCII_BIN", 
0$UINT, 1, 0, "BRIDGE", 
0$UINT, 2, 1, "BUSINTERFACESDIASINTERNAL", 
0$UINT, 1, 75, "BUSINTERFACEVARAN", 
0$UINT, 1, 2, "CLIENT_SPLITTER_4", 
0$UINT, 1, 1, "CLIENT_SPLITTER_BASE", 
0$UINT, 0, 0, "CM_SPEEDCONTROL", 
0$UINT, 1, 45, "CONTROLLER", 
0$UINT, 1, 1, "CP112_IOS", 
0$UINT, 0, 4, "CRITICALSECTION", 
0$UINT, 1, 1, "DATAMANAGER", 
0$UINT, 1, 1, "DATAMANAGERFIFO", 
0$UINT, 1, 0, "DATAMANAGERPRIORITY", 
0$UINT, 2, 33, "DIASMASTER", 
0$UINT, 1, 83, "DIASMASTERC", 
0$UINT, 2, 25, "DIASMASTERMAIN", 
0$UINT, 1, 0, "DIASMASTERPOSTSCAN", 
0$UINT, 1, 13, "DM081", 
0$UINT, 1, 14, "DM161", 
0$UINT, 1, 85, "DRIVEPOSCONTROL", 
0$UINT, 1, 11, "EEPROM", 
0$UINT, 0, 12, "FILEBASECSV", 
0$UINT, 1, 2, "GETOSVERSION", 
0$UINT, 0, 2, "GETTASKHANDLE", 
0$UINT, 1, 21, "HUB_BASE", 
0$UINT, 2, 11, "HUB_BASE_ROOT", 
0$UINT, 2, 36, "HWBASE", 
0$UINT, 2, 56, "HWBASECDIAS", 
0$UINT, 1, 0, "HWCLOGGING", 
0$UINT, 5, 21, "HWCONTROL", 
0$UINT, 1, 10, "HWCONTROLBASE", 
0$UINT, 1, 0, "HWKVARSIZEFIFO", 
0$UINT, 1, 0, "HWRTPOSTSCAN", 
0$UINT, 1, 6, "I2CCDIAS", 
0$UINT, 1, 17, "IIO041", 
0$UINT, 0, 0, "KTS_READ", 
0$UINT, 0, 0, "KTS_TIMESTAMP", 
0$UINT, 1, 22, "MERKEREX", 
0$UINT, 1, 79, "PLC_INFO", 
0$UINT, 1, 3, "RAM", 
0$UINT, 1, 17, "RAMEX", 
0$UINT, 1, 9, "RAMFILE", 
0$UINT, 1, 1, "RAMRINGBUFFER", 
0$UINT, 3, 19, "SAFETYCDIAS_BASE", 
0$UINT, 2, 26, "SAFETYMANAGER", 
0$UINT, 1, 4, "SAFETYUDP", 
0$UINT, 1, 9, "SDCIDEVICE", 
0$UINT, 1, 4, "SDCIDEVICE_ASYNCPARA", 
0$UINT, 1, 0, "SDCIPORT", 
0$UINT, 1, 60, "SDIASBASE", 
0$UINT, 1, 10, "SDIASHUBBASE", 
0$UINT, 1, 97, "SDIASMANAGER", 
0$UINT, 2, 6, "SDIASPLC", 
0$UINT, 1, 15, "SDIASSDCIMASTER", 
0$UINT, 0, 41, "SIGCLIB", 
0$UINT, 1, 11, "STRING", 
0$UINT, 1, 85, "STRINGINTERNAL", 
0$UINT, 1, 10, "STRINGRAM", 
0$UINT, 1, 21, "SYNCCALL", 
0$UINT, 0, 1, "SYSTEM", 
0$UINT, 1, 19, "TCPCOMMUNICATION", 
0$UINT, 1, 0, "TCPCOMMUNICATIONLOGFILTER", 
0$UINT, 1, 1, "USERALARMGENERATOR", 
0$UINT, 2, 20, "VARAN_BASE", 
0$UINT, 3, 7, "VARANMANAGER", 
0$UINT, 2, 7, "VARANMANAGER_1", 
0$UINT, 1, 26, "VARANMANAGER_BASE", 
0$UINT, 1, 101, "VI021", 
0$UINT, 1, 3, "VIRTUALBASEINIT", 
0$UINT, 2, 11, "WATCHDOGDIAS", 
0$UINT, 1, 1, "XXXBASE_IOS", 
ONE_CFG$UINT, 0, 0, "ONE_HW_Network", 
ONE_CFG$UINT, 0, 0, "ONE_KTS_Network", 
ONE_CFG$UINT, 0, 0, "ONE_Motor_Network", 
ONE_CFG$UINT, 1, 0, "ONE_STDAlarm", 
ONE_CFG$UINT, 1, 0, "ONE_STDCommunicationToHMI", 
ONE_CFG$UINT, 1, 0, "ONE_STDPLCInfoPLC", 
ONE_CFG$UINT, 2, 1, "ONE_STDTimeSync", 
ONE_CFG$UINT, 0, 0, "ONE_XML_Network", 
TASK_CFG$UINT, 0, 0, "TASK_CONF", 
IPR_CFG$UINT, 0, 0, "IPR_CONF", 
PRJ_CFG$UINT, 0, 0, "MachineControl", 
END_FUNCTION

#ifdef __LSLLDR_IOELEMENTS__
FUNCTION GLOBAL TAB _IO_ELEMENTS_TAB
0001$UINT, 0005$UINT, 
"**IOCONN_EMPTY**", "_DriveAxis1.CmdState", 
"IO_Element", "DM0811.Output1", 
"IO_Element0", "DM0811.Output2", 
"IO_Element1", "DM0811.Output4", 
"IO_Element2", "DM0811.Output3", 
0013$UINT, 
"**IOCONN_EMPTY**", "DrivePosControl1.cDriveAxis", 
"**IOCONN_EMPTY**", "_LMCAxisM1.ActPosition", 
"**IOCONN_EMPTY**", "_DriveAxis1.DriveMng", 
"**IOCONN_EMPTY**", "CM_SpeedControl1.cDI_MotorRunEndless", 
"**IOCONN_EMPTY**", "CM_SpeedControl1.cDI_ReverseDirection", 
"**IOCONN_EMPTY**", "CM_SpeedControl1.cDI_ResetError", 
"**IOCONN_EMPTY**", "AxisAlarmsM1.DriveAxis", 
"**IOCONN_EMPTY**", "SDCIDevice_AsyncPara_KTS_TimeStamp.ToDevice", 
"**IOCONN_EMPTY**", "KTS_Read.SDCI_Device", 
"IO_Element", "Client_Splitter_41.Ch1", 
"IO_Element0", "Client_Splitter_41.Ch2", 
"IO_Element1", "Client_Splitter_41.Ch3", 
"IO_Element2", "Client_Splitter_41.Ch4", 
END_FUNCTION
#endif //__LSLLDR_IOELEMENTS__


FUNCTION GLOBAL TAB CH_REDIRECT_EMB_TAB
0000$UINT, 
00024$UINT, 
"_BUSINTERFACESDIASDRIVEMNG;SERIALNO", "\SERIALNOSTR.DATA", 
"_DRIVEMNG_DC062;FWDATETR", "\FWDATESTRING.DATA", 
"_DRIVEMNG_DC062;FWDATE", "\FWDATESTRING.DATA", 
"_DRIVEMNG_DC062;FWNUMSTR", "\FWNUMSTRING.DATA", 
"_DRIVEMNG_DC062;FWVERSION", "\FWNUMSTRING.DATA", 
"_VARANDRIVEBASE;SERIALNO", "\SERIALNOSTR.DATA", 
"AI043;SERIALNO", "\SERIALNOSTR.DATA", 
"BUSINTERFACEVARAN;SERIALNO", "\SERIALNOSTR.DATA", 
"DM081;SERIALNO", "\SERIALNOSTR.DATA", 
"DM161;SERIALNO", "\SERIALNOSTR.DATA", 
"HWBASECDIAS;SERIALNO", "\SERIALNOSTR.DATA", 
"IIO041;SERIALNO", "\SERIALNOSTR.DATA", 
"PLC_INFO;APPLICATIONNAME", "\APPLINAME.DATA", 
"PLC_INFO;CPU_NAME", "\STRING1.DATA", 
"PLC_INFO;CPUBOARDNAME", "\CPUBOARD.DATA", 
"PLC_INFO;DISPLAYNAME", "\CHASSISTYPE.DATA", 
"PLC_INFO;SERNUM", "\STRING0.DATA", 
"PLC_INFO;SYSINFOSTRING", "\SYSINFO.DATA", 
"SAFETYCDIAS_BASE;SERIALNO", "\SERIALNOSTR.DATA", 
"SDIASBASE;SERIALNO", "\SERIALNOSTR.DATA", 
"SDIASSDCIMASTER;SERIALNO", "\SERIALNOSTR.DATA", 
"TCPCOMMUNICATION;TASKNAME", "\THREADNAME.DATA", 
"VARAN_BASE;SERIALNO", "\SERIALNOSTR.DATA", 
"VI021;SERIALNO", "\SERIALNOSTR.DATA", 
END_FUNCTION
