%Case 1 Controller
a1 = 1;
a2 = .12;
a3 = .1;
a4 = .012;
k1 = .03;
c1_num = conv([a1 1], [a2 1]);
c1_den = conv([a3 1],[a4 1]);
c1 = tf(c1_num, c1_den)


%Case 1 System
g1 = series(p, c1)
figure(1);
margin(g1);
g1 = series(g1, k1);
figure(2);
rlocus(g1);

%Case 1 Closed Loop System
cl1 = feedback(g1, 1);
figure(3);
bode(cl1);

input = step_in;
disturbance = 0;
noise = 0;
sim('sys1');
figure(4);
plot(ScopeData.time,ScopeData.signals.values(:,1))
title('u(t) for Step Input');
figure(5);
plot(ScopeData.time,ScopeData.signals.values(:,2))
title('y(t) for Step Input');

input = ramp_in;
sim('sys1');
figure(6);
plot(ScopeData.time,ScopeData.signals.values(:,1))
title('u(t) for Ramp Input');
figure(7);
plot(ScopeData.time,ScopeData.signals.values(:,2))
title('y(t) for Ramp Input');

input = null_in;
disturbance = 1;
sim('sys1');
figure(8);
plot(ScopeData.time,ScopeData.signals.values(:,1))
title('u(t) for Step Disturbance at t=1');
figure(9);
plot(ScopeData.time,ScopeData.signals.values(:,2))
title('y(t) for Step Disturbance at t=1');

input = null_in;
disturbance = 0;
noise = .1;
sim('sys1');
figure(10);
plot(ScopeData.time,ScopeData.signals.values(:,1))
title('u(t) for Sensor Noise w/ Var=.1');
figure(11);
plot(ScopeData.time,ScopeData.signals.values(:,2))
title('y(t) for Sensor Noise w/ Var=.1');