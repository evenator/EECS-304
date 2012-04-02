function [] = rl_constraints( sys, damping, omega_n )
%Plots the root locus of system sys with the damping and
%frequency constraints damping and omega_n
rlocus(sys);
hold on;
omega_vec = -.1:-.1:-20;
plot(omega_vec,omega_vec*(1-damping^2));
plot(omega_vec,-omega_vec*(1-damping^2));
plot(-omega_n*damping*ones(1,11),(-5:1:5));
hold off;

end

