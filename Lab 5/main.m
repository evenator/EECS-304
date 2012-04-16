%Edward Venator
%EECS 304 Spring 2012
%Lab 5

%1a
L_a_num = [1 8 12];
L_a_den = [1 16 65 50 0];
L_a = tf(L_a_num, L_a_den);
figure(1)
bode(L_a);
margin(L_a)
grid();
%title('Bode Diagram of System 1A');

%1b
L_b_num = [1 2 8];
L_b_den = [1 2 10 0];
L_b = tf(L_b_num, L_b_den);
figure(2)
bode(L_b);
margin(L_b)
grid();
%title('Bode Diagram of System 1B');

%1c
L_c_num = [1 2 1];
L_c_den = [1 4 0 0 0];
L_c = tf(L_c_num, L_c_den);
figure(3)
bode(L_c);
margin(L_c)
grid();
%title('Bode Diagram of System 1C');

%1d
L_d_num = [1 6 76 136];
L_d_den = [1 14 125 850 0 0];
L_d = tf(L_d_num, L_d_den);
figure(4)
bode(L_d);
margin(L_d)
grid();
%title('Bode Diagram of System 1D');

%1e
L_e_num = [1 2 1];
L_e_den = [1 38 322 -720 800 0];
L_e = tf(L_e_num, L_e_den);
figure(5)
bode(L_e);
margin(L_e)
grid();
%title('Bode Diagram of System 1E');

%3
k = 7;
num = [1 20 100];
den = [1 0 0 0];
sys = tf(k*num, den);
figure(6);
bode(sys);
margin(sys);

k = 4;
sys = tf(k*num, den);
figure(7);
bode(sys);
margin(sys);

sys = tf(num, den);
figure(8);
rlocus(sys);