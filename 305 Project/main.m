%Edward Venator
%EECS 305 Spring 2012
%Project

%Plant Parameters
K1 = -6800;
T_g = 4.8;
g_g = 0.006;
w_g = 19;

%Plant Transfer Function
p_num = K1 * w_g;
p_den = conv([T_g 1], [1 (2 * g_g * w_g) (w_g^2)]);
p = tf(p_num, p_den);
figure(1);
margin(p);
%rltool(p);

%Controller Transfer Function
k_p = -.005;
k_i = k_p * .5;
k_d = -k_p * 1;
gamma = 1.3;
proportional = tf(k_p,1);
integral = tf(k_i,[1 0]);
derivative = tf([k_d 0], [gamma, 1]);
pi = parallel(proportional, integral);
c = parallel(pi, derivative)

%Controller and Gain in Series
g = series(c, p);
figure(2);
margin(g);
figure(3);
rlocus(g);
title('Root Locus of Controlled System');

%System with Feedback
sys = feedback(g,1);
figure(4);
step(sys);
title('Step Response of Controlled System');

%Impulse Disturbance Response
ref = 0;
noise = 0;
impulse = 1;
sim('plant.mdl');
figure(5);
plot(y.time,y.signals.values);
title('Response of System to Impulse Disturbance at t=1');

%Noise Response Plot
impulse = 0;
noise = .1;
sim('plant.mdl');
beta_filt = beta;
y_filt = y;
gamma = 0;
sim('plant.mdl');
figure(6);
plot(beta_filt.time,beta_filt.signals.values,'b',beta.time,beta.signals.values,'r');
title('Controller Performance With Noise With (b) and Without (r) Filter');
figure(7);
plot(y.time,y.signals.values,'r',y_filt.time,y_filt.signals.values,'b');
title('Turbine Velocity With Noise With (b) and Without (r) Filter');