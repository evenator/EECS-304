%Edward Venator
%EECS 304 Spring 2012
%Lab 3

%Clear screen and variables
clc;
clear all;

%System constants
Tg = 0.1;
Tt = 1;
M = 0.0625;
D = 0.1;
T = 2.0;

%Define Turbine TF
turbine_num = [1/(Tg * Tt)];
turbine_den = [1, (1/Tg+1/Tt), 1/(Tg * Tt)];
turbine_sys = tf(turbine_num, turbine_den);

%Define Power Oscillation TF
power_osc_den = [M D T];
power_osc_sys = tf([1], power_osc_den);

%Full Physical System TF
full_sys = series(turbine_sys, power_osc_sys);

%Full System in TF
tach = tf([1 0], [1]);
disp('Open Loop Transfer Function');
full_sys_w_tach = series(full_sys, tach)

%Root Locus
figure(1)
rlocus(full_sys_w_tach);
title('Root Locus of the System (parameter is 1/R)');

%RLTool
rltool(full_sys_w_tach);

%Test for R=.53
feedback_tf= tf(1, .53);
sys1 = feedback(full_sys_w_tach, feedback_tf);
%Plot Step Response
figure(2)
step(sys1)
title('Step Response for R=0.53');

%Test for R=1
feedback_tf= tf(1, 1);
sys2 = feedback(full_sys_w_tach, feedback_tf);
%Plot Step Response
figure(3)
step(sys2)
title('Step Response for R=1.0');