%Add in a PD Controller with Lowpass Filter
p1 = [.01 1];
z1 =[1.9 1];
z2 =[1 .04 1];
num = conv(z1, z2);
den = conv(conv(conv(p1, p1), p1), p1);
c_34 = tf(num, den)
sys_34 = series(c_34, p);

%Plot system with constraints
figure(2)
rl_constraints(sys_34, damping, omega_n);
title('Root Locus (4 Pole/3 Zero Controller)');

%Simulate Step Response
k_1 = 16;
fb_34 = feedback(k_1*sys_34,1);
figure(3);
step(fb_34);
step_resp = step(fb_34);
title('Step Response (4 Pole/3 Zero Controller)');