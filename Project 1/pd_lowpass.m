%Add in a PD Controller with Lowpass Filter
a_1 = 2.1e003;
b_1 = 10;
c_pd = tf([a_1 1],[b_1,1]);
sys_pd = series(c_pd, p);

%Plot system with constraints
figure(2)
rl_constraints(sys_pd, damping, omega_n);
title('Root Locus (PD Controller with Lowpass Filter)');

%Simulate Step Response
k_1 = 3.0927e-005;
fb_pd = feedback(k_1*sys_pd,1);
figure(3);
step(fb_pd);
title('Step Response (PD Controller with Lowpass Filter)');
