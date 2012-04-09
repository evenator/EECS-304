%Add in a PD Controller with Lowpass Filter
a_2 = 1e4;
b_2 = .53;
c_2 = 1;
d_2 = 1;
num = conv([a_2 1],[(1/c_2)^2 0 1]);
den = conv([b_2 1],[(1/d_2)^2 2/d_2 1]);
c_pd_notch = tf(num, den);
sys_pd_notch = series(c_pd_notch, p);

%Plot system with constraints
figure(2)
rl_constraints(sys_pd_notch, damping, omega_n);
title('Root Locus (PD Controller with Lowpass and Notch Filters)');

%Simulate Step Response
k_2 = 2.5e-5;
fb_pd_notch = feedback(k_2*sys_pd_notch,1);
figure(3);
step(fb_pd_notch);
title('Step Response (PD Controller with Lowpass and Notch Filters)');