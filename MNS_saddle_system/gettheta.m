if (joy(1)<-0.5333)&&(theta_flag==0)
    theta=theta+pi/12;
    theta_flag=1;
elseif (-0.4666<=joy(1))&&(joy(1)<0.4666)
    theta_flag=0;
elseif (0.5333<=joy(1))&&(theta_flag==0)
    theta=theta-pi/12 ;  
    theta_flag=1;
end
