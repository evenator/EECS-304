%Edward Venator
%EECS 304 Spring 2012
%Lab 4
 
%Clear screen and variables
clc;
clear all;

%Plant transfer function
p_num = 1;
p_den = conv(conv([1 0],[1 5]),[1 10]);
p = tf(p_num, p_den)

%1 Plot the RL without the controller
%figure(1)
%rlocus(p);
%title('Root Locus of the Plant Without a Controller');

%2 Design the controller
Mp = .07;
Ts = 3;
Kv = 10;
damping = sqrt(log(Mp)^2 / (pi^2 + log(Mp)^2))
omega_n = 4 / (damping * Ts)
%Plot parameters
figure(2)
rlocus(p)
hold on;
omega_vec = -.1:-.1:-10;
plot(omega_vec,omega_vec*(1-damping^2));
plot(omega_vec,-omega_vec*(1-damping^2));
plot(-omega_n*damping*ones(1,11),(-5:1:5));
hold off;
%rltool(p);

%return;
k_c = 400;
c_num = k_c * [1 10];
c_den = [1 100];
c = tf(c_num, c_den);
sys = series(c,p);
rlocus(sys)
hold on;
omega_vec = -.1:-.1:-10;
plot(omega_vec,omega_vec*(1-damping^2),'r');
plot(omega_vec,-omega_vec*(1-damping^2),'r');
plot(-omega_n*damping*ones(1,11),(-5:1:5),'r');
hold off;

%3 Step Response
sys_fb = feedback(sys,1);
figure(3);
step(sys_fb);
title('Step Response');

%Ramp Response
t_vec = 0:.1:100;
y_vec = lsim(sys_fb,t_vec,t_vec);
figure(4);
plot(t_vec, t_vec, t_vec, y_vec);
title('Ramp Response');
kV = (y_vec(1001)-100)/100