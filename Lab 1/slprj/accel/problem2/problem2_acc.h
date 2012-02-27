/*
 * problem2_acc.h
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
#ifndef RTW_HEADER_problem2_acc_h_
#define RTW_HEADER_problem2_acc_h_
#ifndef problem2_acc_COMMON_INCLUDES_
# define problem2_acc_COMMON_INCLUDES_
#include <stdlib.h>
#include <stddef.h>
#define S_FUNCTION_NAME                simulink_only_sfcn
#define S_FUNCTION_LEVEL               2
#define RTW_GENERATED_S_FUNCTION
#include "rtwtypes.h"
#include "simstruc.h"
#include "fixedpoint.h"
#include "mwmathutil.h"
#endif                                 /* problem2_acc_COMMON_INCLUDES_ */

#include "problem2_acc_types.h"

/* Block signals (auto storage) */
typedef struct {
  real_T B_0_1_0;                      /* '<Root>/Pulse Generator' */
  real_T B_0_2_0;                      /* '<Root>/Product' */
} BlockIO;

/* Block states (auto storage) for system '<Root>' */
typedef struct {
  struct {
    void *LoggedData;
  } Scope_PWORK;                       /* '<Root>/Scope' */

  struct {
    void *LoggedData;
  } Scope2_PWORK;                      /* '<Root>/Scope2' */

  int32_T clockTickCounter;            /* '<Root>/Pulse Generator' */
  char pad_clockTickCounter[4];
} D_Work;

/* Parameters (auto storage) */
struct Parameters_ {
  real_T P_0;                          /* Expression: 1
                                        * Referenced by: '<Root>/Sine Wave'
                                        */
  real_T P_1;                          /* Expression: 0
                                        * Referenced by: '<Root>/Sine Wave'
                                        */
  real_T P_2;                          /* Expression: 0.0104719755
                                        * Referenced by: '<Root>/Sine Wave'
                                        */
  real_T P_3;                          /* Expression: 0
                                        * Referenced by: '<Root>/Sine Wave'
                                        */
  real_T P_4;                          /* Expression: 1
                                        * Referenced by: '<Root>/Pulse Generator'
                                        */
  real_T P_5;                          /* Computed Parameter: P_5
                                        * Referenced by: '<Root>/Pulse Generator'
                                        */
  real_T P_6;                          /* Computed Parameter: P_6
                                        * Referenced by: '<Root>/Pulse Generator'
                                        */
  real_T P_7;                          /* Expression: 0
                                        * Referenced by: '<Root>/Pulse Generator'
                                        */
};

extern Parameters rtDefaultParameters; /* parameters */

#endif                                 /* RTW_HEADER_problem2_acc_h_ */
