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


%Case 2 System
c2 = tf(q1,q0);
f2 = tf(q2, q0);
g2 = series(p, c2)
g2 = series(g2, f2);
figure(1);
margin(g2);
figure(2);
rlocus(g2);

%Case 2 Closed Loop System
cl2 = feedback(p, f2);
cl2 = series(cl2, c2);
figure(3);
bode(cl2);

input = step_in;
disturbance = 0;
noise = 0;
sim('sys2');
figure(4);
plot(ScopeData.time,ScopeData.signals.values(:,1))
title('u(t) for Step Input');
figure(5);
plot(ScopeData.time,ScopeData.signals.values(:,2))
title('y(t) for Step Input');

input = ramp_in;
sim('sys2');
figure(6);
plot(ScopeData.time,ScopeData.signals.values(:,1))
title('u(t) for Ramp Input');
figure(7);
plot(ScopeData.time,ScopeData.signals.values(:,2))
title('y(t) for Ramp Input');

input = null_in;
disturbance = 1;
sim('sys2');
figure(8);
plot(ScopeData.time,ScopeData.signals.values(:,1))
title('u(t) for Step Disturbance at t=1');
figure(9);
plot(ScopeData.time,ScopeData.signals.values(:,2))
title('y(t) for Step Disturbance at t=1');

input = null_in;
disturbance = 0;
noise = .1;
sim('sys2');
figure(10);
plot(ScopeData.time,ScopeData.signals.values(:,1))
title('u(t) for Sensor Noise w/ Var=.1');
figure(11);
plot(ScopeData.time,ScopeData.signals.values(:,2))
title('y(t) for Sensor Noise w/ Var=.1');