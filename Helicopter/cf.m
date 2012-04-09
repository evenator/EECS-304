function [components,J]=cf(t,u,r,y)

% Mario Garcia-Sanz and Jorge Elso
% Case Western Reserve University (Oct 2009)
% Universidad Publica de Navarra (Nov 2006)

% t in seconds, r, y in radians, u in volts

ts=0.01;    % sampling time (sec).
tinic=15;   % start time for evaluation
tpert=65;	% start time disturbance
tstep=80;   % start time for step
tparab=95;	% start time for parabola
tend=120;	% end experiment


beta1=0.02;
beta2=0.7;
beta3=0.18;
beta4=0.08;
beta5=0.00023;
beta6=0.00001;

e=r-y;		% error

count=tinic/ts;
j1=0;
while t(count)<tpert,
   j1=j1+(t(count)-tinic)*abs(e(count))*ts;
   count=count+1;
end
j2=0;
while t(count)<tstep,
   j2=j2+(t(count)-tpert)*abs(e(count))*ts;
   count=count+1;
end
j3=0;
while t(count)<tparab,
   j3=j3+(t(count)-tstep)*abs(e(count))*ts;
   count=count+1;
end
j4=0;
while t(count)<tend,
   j4=j4+(t(count)-tparab)*abs(e(count))*ts;
   count=count+1;
end
count=tinic/ts;
j5=0;
while t(count)<tend,
   j5=j5+abs(u(count))*ts;
   count=count+1;
end
count=tinic/ts;
j6=0;
while t(count)<tend,
   j6=j6+abs(u(count)-u(count-1));
   count=count+1;
end

components=[beta1*j1+beta3*j3+beta4*j4,beta2*j2,beta5*j5,beta6*j6];

J=beta1*j1+beta2*j2+beta3*j3+beta4*j4+beta5*j5+beta6*j6;




   
