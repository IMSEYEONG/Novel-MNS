clear;
clc;
Bh = [];
Buy = [];
Buz = [];
B_m = [];
g_m = [];
B_g = [];
g_g = [];
turntime = 0;
robot_mode=0;
mu0 = 4*pi*17^-7;
theta=0;
thetafix=0;
theta_flag=0;
phi=0;
phifix=0;
phi_flag=0;
speed=0;
speed_flag=0;
exit=0;
tic;
B0 = 0.01;
while exit==0
% Connect with PS
%DC_5port_setting 

Constants

getjoy

gradient_control
helical_control


%fprintf('[%d]  [%d]  [%d]  [%d]  [%d]   {theta:%d} {phi:%d}  [%d]\n',Vh,Vuy,Vuz,Vm,Vg,theta,phi,turntime)
fprintf('%d %d %d %d %d   [%d]   [%d]\n',joy,theta,phi)

%infplot

if joy(5)==8
        exit=1;
end

%pause
if  robot_mode==0
    Bh = 0;
    Buy = 0;
    Buz = 0;
    B_m = 0;
    g_m = 0;
    B_g = 0;
    g_g = 0;
end
% Transmit Voltage to PS
%transmit_DC
end
% Turn off PS
% turnoff