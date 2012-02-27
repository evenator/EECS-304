%Edward Venator
%EECS 304 Lab 1
%Problem 3

%3.1
x = [0 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1];
y = [-0.45 1.98 3.28 6.16 7.08 7.34 7.66 9.56 9.48 9.30 11.20];

p2 = polyfit(x, y, 2)
p3 = polyfit(x, y, 3)
p10 = polyfit(x, y, 10)

figure(1);
plot(x,y,'b*');
title('2nd(r), 3rd(g), and 10th(k) Order Fits to Data(b*)')
hold on;
plot(x,polyval(p2,x),'r');
plot(x,polyval(p3,x),'g');
plot(x,polyval(p10,x),'k');
hold off;