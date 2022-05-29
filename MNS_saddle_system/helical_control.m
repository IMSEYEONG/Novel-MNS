if  robot_mode==2
    
omega = speed*6*2*pi;
turntime = toc;

%get rotation magnetic field
U=[cos(theta)*cos(phi) , sin(theta)*cos(phi) , sin(phi)];
N=[-cos(theta)*sin(phi) , -sin(theta)*sin(phi) , cos(phi)];
Brt = B0*(cos(omega*turntime)*U + sin(omega*turntime)*(cross(U,N)));
H = cross(Brt,N);

%get coil's magneticfield
Bh = Brt(1);
Buy = Brt(2);
Buz = Brt(3);

tiledlayout(2,2,'TileSpacing','Compact');

% Tile helical
nexttile
grid on;
quiver3(0,0,0,N(1)/100,N(2)/100,N(3)/100,'r.','ShowArrowHead','on');
hold on
quiver3(0,0,0,Bh,Buy,Buz,'b.','AutoScale','off');
if speed >=0
    quiver3(Bh,Buy,Buz,H(1)/3,H(2)/3,H(3)/3,'b.','ShowArrowHead','on','AutoScale','off');
elseif speed<0
    quiver3(Bh,Buy,Buz,-H(1)/3,-H(2)/3,-H(3)/3,'b.','ShowArrowHead','on','AutoScale','off');
end
hold off
axis([-0.015 0.015 -0.015 0.015 -0.015 0.015])



% Tile theta
nexttile
quiver(0,0,sin(theta),cos(theta),'r.');
grid on;
axis([-1,1,0,1]);
title('theta');


% Tile phi
nexttile
quiver(0,0,sin(phi),cos(phi),'r.');
grid on;
axis([-1,1,0,1]);
title('phi');


% Tile speed
nexttile
quiver(0,0,0,speed,'r.');
grid on;
axis([-1,1,-10,10]);
title('speed');
drawnow;


end
