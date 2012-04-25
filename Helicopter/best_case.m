%Edward Venator
%EECS 304 Spring 2012
%Helicopter Project

%Best Case
T = .09;
wn = 1.0;
gi = .03;
k = .1;

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

%Run Simulation
sim('helicopter1');

%Calculate Score
[components, J] = cf(t, u, r, y)