%Edward Venator
%EECS 304 Spring 2012
%Helicopter Project

%System Dynamics
k = 0.15;
gi = 0.05;
wn = 1.25;
T = 0.09;

%Prefilter
numF = 1;
denF = 1;

%Controller
%PID
kp = 50;
kd = 2.5 * kp;
ki = .7 * kp;
lp = 90;
numG = [kd kp ki];
denG = [1/lp 1 0];

G = tf(numG, denG);

figure(1)
margin(G)

figure(2)
nyquist(G);