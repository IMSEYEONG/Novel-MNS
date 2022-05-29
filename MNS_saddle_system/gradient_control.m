
if  robot_mode==1

%%torque    

    Buy=B0*cos(theta);
    Bh=B0*sin(theta);
    
%%force
    
    g_m = speed*38;
    g_g = -0.4361*g_m;

end