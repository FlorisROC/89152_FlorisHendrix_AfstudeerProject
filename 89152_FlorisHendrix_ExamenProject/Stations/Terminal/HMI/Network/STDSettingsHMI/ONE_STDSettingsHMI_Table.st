//This file was generated by the LASAL2 CodeGenerator  -- 
//Please, do not edit this file (it might be overwritten by the next generator run)
#define OBJECTS_CONFIG

#include <.\lsl_st_mt.h>
//Define part of class ProjectGlobal
// Eigenschaften der Bildschirm-Informationen
//----------------------------------------------------------------------------------
#define Global_NumScreenInfos                            100                                 // Anzahl der reservierten Eintr�ge f�r die Bildschirminformation

#define Global_MenueScreenNr                             10                                  // Bildschirm-Nummer des Men�s (Startseite)

#define Global_MenueMin                                  5                                   // Bildschirm-Nummer Alarme(*Ez0999*)

#define Global_MenueMax                                  4410                                // Bildschirm-Nummer Login Screens(*Ez0999*)

#define PRJGLOBAL_MAX_STATION                            255                                 // Highest possible LSE Station-Number

#define PRJGLOBAL_STATION_INTERN                         0                                   // Identifier for internal LSE-Station

#define PRJGLOBAL_STATION_EXTERN                         1                                   // Identifier for TCPIP1 LSE-Station


#define     CMD_GETIPOverStation      1000
//Define part of class USBDetection
#define USB_StringLength                              _strlen("C:\")          // L�nge des Strings f�r das aktuelle Laufwerk


FUNCTION GLOBAL TAB ONE_STDSettingsHMI
-1$UINT, 0$UINT, 
2$UINT, 0$UINT,

10$UDINT,
TO_UDINT(3788417926), "_Global", 0$UINT, 15$UINT, 0$UINT,
TO_UDINT(3877617373), "_SyncTimeHMI", 2$UINT, 2$UINT, 1$UINT,
TO_UDINT(2225119864), "MerkerEx", 1$UINT, 22$UINT, 1$UINT,
TO_UDINT(3239918556), "PreLoadingScreens", 1$UINT, 0$UINT, 1$UINT,
TO_UDINT(1462004836), "ProjectGlobal", 1$UINT, 19$UINT, 1$UINT,
TO_UDINT(1903583397), "Ram", 1$UINT, 3$UINT, 2$UINT,
TO_UDINT(1850111279), "String", 1$UINT, 11$UINT, 1$UINT,
TO_UDINT(2898603620), "StringInternal", 1$UINT, 85$UINT, 0$UINT,
TO_UDINT(216038476), "USBDetection", 1$UINT, 6$UINT, 1$UINT,
TO_UDINT(3232495061), "VirtualBaseInit", 1$UINT, 3$UINT, 0$UINT,


_NO_ATTR, TO_UDINT(3114404899), "SYNCTIMEHMI", 

1$UINT, TO_UDINT(1839314391), "USBDETECTION1\USBDRIVELETTER\MERKEREX0", 

_NO_ATTR, TO_UDINT(209218675), "PRELOADINGSCREENS1", 

_NO_ATTR, TO_UDINT(2925151108), "GLOBALSCREEN1", 

1$UINT, TO_UDINT(2793771928), "GLOBALSCREEN1\OFFDATE", 
1$UINT, TO_UDINT(1670331559), "GLOBALSCREEN1\OFFTIME", 

1$UINT, TO_UDINT(267725679), "USBDETECTION1\USBDRIVELETTER", 


_NO_ATTR, TO_UDINT(4240048752), "USBDETECTION1", 


//Internal connections
0$UDINT,
4$UDINT,
TO_UDINT(3), "OffDate", TO_UDINT(4),
TO_UDINT(3), "OffTime", TO_UDINT(5),
TO_UDINT(6), "MerkerEx0", TO_UDINT(1),
TO_UDINT(7), "USBDriveLetter", TO_UDINT(6),
0$UDINT,
2$UDINT,
TO_UDINT(3), "PreLoadScreens", TO_UDINT(2), "ClassSvr",
TO_UDINT(6), "DataBuffer", TO_UDINT(1), "m_udLength",

//Initialization values
0$UDINT,
7$UDINT,
TO_UDINT(0), "SyncFromMc", TO_UDINT(0),//|STDSettingsHMI.SyncTimeHMI.SyncFromMc;
TO_UDINT(0), "SyncInterval", TO_UDINT(20sec),//|STDSettingsHMI.SyncTimeHMI.SyncInterval;
TO_UDINT(1), "ThreadSafe", TO_UDINT(0),//|STDSettingsHMI.USBDriveLetter\USBDetection1\MerkerEx0.ThreadSafe;
TO_UDINT(3), "OwnStationNumber", TO_UDINT(-1),//|STDSettingsHMI.GlobalScreen1.OwnStationNumber;
TO_UDINT(3), "ExtStationNumber", TO_UDINT(-1),//|STDSettingsHMI.GlobalScreen1.ExtStationNumber;
TO_UDINT(3), "ProjectReady", TO_UDINT(0),//|STDSettingsHMI.GlobalScreen1.ProjectReady;
TO_UDINT(6), "SingleRealloc", TO_UDINT(1),//|STDSettingsHMI.USBDetection1\USBDriveLetter.SingleRealloc;

//Symbolic initialization values
0$UDINT,
0$UDINT,

//Initialization of string values
0$UDINT,
0$UDINT,

//Configuration of tasks (RealTime, Cyclic, Background)
0$UDINT,
0$UDINT,

0$UDINT,
0$UDINT,

0$UDINT,
1$UDINT,
TO_UDINT(0), (100)$UDINT, 4194303$DINT, 	//SYNCTIMEHMI

//External connections
0$UDINT,
6$UDINT,
TO_UDINT(0), "ActDate", C_DIR, TO_UDINT(3035062039), "SysDateTime","SysDate",
TO_UDINT(0), "ActTime", C_DIR, TO_UDINT(3035062039), "SysDateTime","SysTime",
TO_UDINT(3), "Lse", C_DIR, TO_UDINT(299963966), "Lse","Lse",
TO_UDINT(3), "SysDate", C_DIR, TO_UDINT(3035062039), "SysDateTime","SysDate",
TO_UDINT(3), "SysTime", C_DIR, TO_UDINT(3035062039), "SysDateTime","SysTime",
TO_UDINT(7), "Lse", C_DIR, TO_UDINT(299963966), "Lse","Lse",

//Magic internal connections
0$UDINT,
0$UDINT,

//Configuration of timeslots of tasks (RealTime, Cyclic)
#ifdef __LSLLDR_TIMESLOTS__
0$UDINT,
0$UDINT,

0$UDINT,
0$UDINT,

#endif //__LSLLDR_TIMESLOTS__

//MultiMaster connections
#ifdef __LSLLDR_MULTIMASTER__
0$UDINT,
2$UDINT,
TO_UDINT(0), "SetDate", C_TRY, TO_UDINT(1507644463), "MachineControl.SysDateTimePLC.SysDate",
TO_UDINT(0), "SetTime", C_TRY, TO_UDINT(2631301904), "MachineControl.SysDateTimePLC.SysTime",
#endif //__LSLLDR_MULTIMASTER__

//Configuration for task ID (RealTime, CyclicTime)
#ifdef __LSLLDR_TASKID__
"\\\\TASKS2  "
0$UDINT,
0$UDINT,

0$UDINT,
0$UDINT,

0$UDINT,
1$UDINT,
(0)$UDINT, 	//SYNCTIMEHMI

#endif //__LSLLDR_TASKID__

END_FUNCTION