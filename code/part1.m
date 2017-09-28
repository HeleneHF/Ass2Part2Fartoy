%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Title: part1.m                                                          %  
% Description: Assignment 2 Part 1 in Fartoystyring                       %
% Author: Helene Hogstad Fossum                                           %
% Date: 2017-09-28                                                        %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Defining Parameters
% Constants
deg2rad = pi/180;   % [deg] to [rad]
rad2deg = 180/pi;   % [rad] to [deg]

% Plane configuration
V_a = 637; % [km/h] Airspeed
T_l = 1/10; % [s] Time constant aileron TF

% Limitation aileron angle 
delta_max = 25*deg2rad;     % [rad] Max aileron angle
delta_min = -25*deg2rad;    % [rad] min aileron angle

% Lateral model of MAV:
A = [-0.322 0.052, 0.028, -1.12, 0.002; ...
    0 0 1 -0.001 0; ... 
    -10.6 0 -2.87 0.46 -0.65; ...
    6.87 0 -0.04 -0.32 -0.02; ... 
    0 0 0 0 -10];

B = [0 0 0 0 10]'; 

C = [0 0 0 1 0; 0 0 1 0 0; 1 0 0 0 0; 0 1 0 0 0];


