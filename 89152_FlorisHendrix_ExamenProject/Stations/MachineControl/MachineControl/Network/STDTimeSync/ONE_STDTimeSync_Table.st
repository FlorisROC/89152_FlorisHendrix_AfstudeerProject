//This file was generated by the LASAL2 CodeGenerator  -- 
//Please, do not edit this file (it might be overwritten by the next generator run)
#define OBJECTS_CONFIG



FUNCTION GLOBAL TAB ONE_STDTimeSync
-1$UINT, 0$UINT, 
2$UINT, 1$UINT,

2$UDINT,
TO_UDINT(3931827689), "_SysDateTime", 0$UINT, 10$UINT, 1$UINT,
TO_UDINT(1903583397), "Ram", 1$UINT, 3$UINT, 1$UINT,

_NO_ATTR, TO_UDINT(985687168), "SYSDATETIMEPLC", 

1$UINT, TO_UDINT(2191881225), "SYSDATETIMEPLC\SUMMERTIME", 

//Internal connections
0$UDINT,
1$UDINT,
TO_UDINT(0), "SummerTime", TO_UDINT(1),
0$UDINT,
0$UDINT,

//Initialization values
0$UDINT,
1$UDINT,
TO_UDINT(0), "DoSummerTime", TO_UDINT(0),//|STDTimeSync.SysDateTimePLC.DoSummerTime;

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
TO_UDINT(0), (100)$UDINT, 4194303$DINT, 	//SYSDATETIMEPLC

//External connections
0$UDINT,
0$UDINT,

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
0$UDINT,
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
(0)$UDINT, 	//SYSDATETIMEPLC

#endif //__LSLLDR_TASKID__

END_FUNCTION