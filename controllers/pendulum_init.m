%% Parameters
P.m   = 0.3;
P.M   = 5;
P.l   = 0.6;
P.g   = 9.81;
P.Ixx = 0.1;
P.Iyy = 0.1;
P.Izz = 0.1;

%% Inputs
Tend = 100; Ts = 0.01;
t  = (0:Ts:Tend)';

%Fx = zeros(size(t));  Fx(t>=1) = 1;
%Fy = zeros(size(t));  Fy(t>=2) = 2;

U.Fx = timeseries(zeros(size(t)), t);
U.Fy = timeseries(zeros(size(t)), t);

%% Plot
% simOut=sim('Inverted_Pendulum');   % make sure this matches your .slx filename
% theta_out = simOut.theta_out; 
% plot(theta_out.Time, theta_out.Data);
% plot(tout, theta_out);
% xlabel('Time (s)'); ylabel('Theta (rad)');

% t80 = theta_out(find(theta_out(:,2) >= deg2rad(80), 1), 1);
