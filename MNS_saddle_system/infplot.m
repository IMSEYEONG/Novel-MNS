
tiledlayout(2,2,'TileSpacing','Compact');

% Tile helical
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
drawnow;

% Tile theta
nexttile
quiver(0,0,cos(theta),sin(theta),'r.');
grid on;
axis([-1,1,0,1]);
title('theta');

% Tile phi

% Tile speed
nexttile

nexttile
quiver(0,0,cos(phi),sin(phi),'r.');
grid on;
axis([-1,1,0,1]);
title('phi');
quiver(0,0,0,speed,'r.');
grid on;
axis([-1,1,-10,10]);
title('speed');
drawnow;

