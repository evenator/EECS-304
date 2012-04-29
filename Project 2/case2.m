%Edward Venator
%EECS 304 Spring 2012
%Frequency Domain Design Project

%Case 2 Controller
k_p = .04;
k_i = 0.0003;
k_d = 0.02;
N = .1;
q0 = [1 (N/k_d) 0];
q1 = [k_p (k_i + N * k_p/k_d) (N * k_i/k_d)];
q2 = [(N+k_p) (k_i+N*k_p/k_d) (N*k_i/k_d)];

sim('sys2');