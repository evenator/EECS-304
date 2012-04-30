%Edward Venator
%EECS 304 Spring 2012
%Frequency Domain Design Project

clc;

%Define constants for input switch
step_in = 1;
ramp_in = 2;
null_in = 3

%Define system
p_num = 100;
p_den = conv([1 1 0], [0.1 1]);

p = tf(p_num, p_den)

%Uncontrolled System
figure(1);
margin(p);
figure(2);
rlocus(p);

%case1;
case2;