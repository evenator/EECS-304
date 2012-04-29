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
figure(3);
margin(c1);
figure(4);
rlocus(c1);
g1 = series(g1, k1);

sim('sys1');
return

%Case 1 Closed Loop System
cl1 = feedback(g1, 1);
figure(5);
bode(cl1);
figure(6);
step(cl1);