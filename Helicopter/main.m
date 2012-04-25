%Edward Venator
%EECS 304 Spring 2012
%Helicopter Project

J_list = zeros(16, 1);

%System Dynamics
T = .09
wn = 1.0;
gi = .03;
k = .1
run_helicopter;
J_list(1) = J;
k = .15
run_helicopter;
J_list(2) = J;
gi = .05;
k = .1
run_helicopter;
J_list(3) = J;
k = .15
run_helicopter;
J_list(4) = J;
wn = 1.5;
gi = .03;
k = .1
run_helicopter;
J_list(5) = J;
k = .15
run_helicopter;
J_list(6) = J;
gi = .05;
k = .1
run_helicopter;
J_list(7) = J;
k = .15
run_helicopter;
J_list(8) = J;
T = 0.11;
wn = 1.0;
gi = .03;
k = .1
run_helicopter;
J_list(9) = J;
k = .15
run_helicopter;
J_list(10) = J;
gi = .05;
k = .1
run_helicopter;
J_list(11) = J;
k = .15
run_helicopter;
J_list(12) = J;
wn = 1.5;
gi = .03;
k = .1
run_helicopter;
J_list(13) = J;
k = .15
run_helicopter;
J_list(14) = J;
gi = .05;
k = .1
run_helicopter;
J_list(15) = J;
k = .15
run_helicopter;
J_list(16) = J;

J_list