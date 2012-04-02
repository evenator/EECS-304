% Edward Venator
% EECS 304 Spring 2012
% Design Problem 1: Time Domain
 
%Clear screen and variables
clc;
clear all;

p = tf(.04*[1 25],[1 .04 1 0 0]);

%Calculate Damping and Frequency Constraints
Mp = .15;
Ts = 20;
damping = sqrt(log(Mp)^2 / (pi^2 + log(Mp)^2))
omega_n = 4 / (damping * Ts)

%Plot system with constraints
figure(1)
rl_constraints(p, damping, omega_n);
title('Root Locus (No Controller)');

rltool(p);

%pd_lowpass;