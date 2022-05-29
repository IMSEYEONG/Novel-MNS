if (joy(3)<-0.6333)&&(phi_flag==0)
    phi=phi+pi/12;
    phi_flag=1;
elseif (-0.4666<=joy(3))&&(joy(3)<0.4666)
    phi_flag=0;
elseif (0.6333<=joy(3))&&(phi_flag==0)
    phi=phi-pi/12;   
    phi_flag=1;
end
