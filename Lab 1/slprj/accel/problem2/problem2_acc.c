#if 0

This file is not available for use in any application other than as a
  MATLAB(R) MEX file for use with the Simulink(R) product.
  If you do not have the Simulink Coder licensed, this file contains
  encrypted block names, etc. If you purchase the Simulink Coder,
  this file will contain full block descriptions and improved variable
  names.
#endif

/*
 * problem2_acc.c
 *
 * Code generation for model "problem2_acc.mdl".
 *
 * Model version              : 1.1
 * Simulink Coder version : 7.7 (R2011a) 09-Mar-2011
 * C source code generated on : Mon Feb 27 10:08:16 2012
 *
 * Target selection: accel.tlc
 * Note: GRT includes extra infrastructure and instrumentation for prototyping
 * Embedded hardware selection: 32-bit Generic
 * Emulation hardware selection:
 *    Differs from embedded hardware (MATLAB Host)
 * Code generation objectives: Unspecified
 * Validation result: Not run
 */
#include <math.h>
#include "problem2_acc.h"
#include "problem2_acc_private.h"
#include <stdio.h>
#include "simstruc.h"
#include "fixedpoint.h"
#define CodeFormat                     S-Function
#define AccDefine1                     Accelerator_S-Function

/* Outputs for root system: '<Root>' */
static void mdlOutputs(SimStruct *S, int_T tid)
{
  ((BlockIO *) _ssGetBlockIO(S))->B_0_1_0 = ((real_T)((D_Work *) ssGetRootDWork
    (S))->clockTickCounter < ((Parameters *) ssGetDefaultParam(S))->P_6) &&
    (((D_Work *) ssGetRootDWork(S))->clockTickCounter >= 0) ? ((Parameters *)
    ssGetDefaultParam(S))->P_4 : 0.0;
  if ((real_T)((D_Work *) ssGetRootDWork(S))->clockTickCounter >= ((Parameters *)
       ssGetDefaultParam(S))->P_5 - 1.0) {
    ((D_Work *) ssGetRootDWork(S))->clockTickCounter = 0;
  } else {
    ((D_Work *) ssGetRootDWork(S))->clockTickCounter = ((D_Work *)
      ssGetRootDWork(S))->clockTickCounter + 1;
  }

  ((BlockIO *) _ssGetBlockIO(S))->B_0_2_0 = (muDoubleScalarSin(((Parameters *)
    ssGetDefaultParam(S))->P_2 * ssGetTaskTime(S,0) + ((Parameters *)
    ssGetDefaultParam(S))->P_3) * ((Parameters *) ssGetDefaultParam(S))->P_0 +
    ((Parameters *) ssGetDefaultParam(S))->P_1) * ((BlockIO *) _ssGetBlockIO(S)
    )->B_0_1_0;

  /* Scope: '<Root>/Scope' */

  /* Call into Simulink for Scope */
  ssCallAccelRunBlock(S, 0, 3, SS_CALL_MDL_OUTPUTS);

  /* Scope: '<Root>/Scope2' */

  /* Call into Simulink for Scope */
  ssCallAccelRunBlock(S, 0, 4, SS_CALL_MDL_OUTPUTS);

  /* tid is required for a uniform function interface.
   * Argument tid is not used in the function. */
  UNUSED_PARAMETER(tid);
}

/* Update for root system: '<Root>' */
#define MDL_UPDATE

static void mdlUpdate(SimStruct *S, int_T tid)
{
  /* tid is required for a uniform function interface.
   * Argument tid is not used in the function. */
  UNUSED_PARAMETER(tid);
}

/* Function to initialize sizes */
static void mdlInitializeSizes(SimStruct *S)
{
  /* checksum */
  ssSetChecksumVal(S, 0, 4008323717U);
  ssSetChecksumVal(S, 1, 2543693537U);
  ssSetChecksumVal(S, 2, 4289145620U);
  ssSetChecksumVal(S, 3, 3389381616U);

  /* options */
  ssSetOptions(S, SS_OPTION_EXCEPTION_FREE_CODE);

  /* Accelerator check memory map size match for DWork */
  if (ssGetSizeofDWork(S) != sizeof(D_Work)) {
    ssSetErrorStatus(S,"Unexpected error: Internal DWork sizes do "
                     "not match for accelerator mex file.");
  }

  /* Accelerator check memory map size match for BlockIO */
  if (ssGetSizeofGlobalBlockIO(S) != sizeof(BlockIO)) {
    ssSetErrorStatus(S,"Unexpected error: Internal BlockIO sizes do "
                     "not match for accelerator mex file.");
  }

  /* model parameters */
  _ssSetDefaultParam(S, (real_T *) &rtDefaultParameters);
}

/* mdlInitializeSampleTimes function (used to set up function-call connections) */
static void mdlInitializeSampleTimes(SimStruct *S)
{
}

/* Empty mdlTerminate function (never called) */
static void mdlTerminate(SimStruct *S)
{
}

/* MATLAB MEX Glue */
#include "simulink.c"
