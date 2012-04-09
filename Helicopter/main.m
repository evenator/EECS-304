%Edward Venator
%EECS 304 Spring 2012
%Helicopter Project

%System Dynamics
k = 0.1;
gi = 0.03;
wn = 1.0;
T = 0.1;

%Prefilter
numF = 1;
denF = 1;

%Controller
numG = 1;
denG = 1;

%Run Simulation
sim('helicopter1');

%Calculate Score
[components, J] = cf(t, u, r, y)