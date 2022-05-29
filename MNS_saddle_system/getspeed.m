
if (joy(4)<0.05)&&(speed_flag==0)
    speed=speed-1;
    speed_flag=1;
elseif (0.45<=joy(4))&&(joy(4)<0.55)
    speed_flag=0;
elseif (0.95<=joy(4))&&(speed_flag==0)
    speed=speed+1;
    speed_flag=1;
end