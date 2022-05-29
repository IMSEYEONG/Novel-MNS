% 코일상수
k_h  = 1.822;
k_uy = 1.840;
k_uz = 1.800;
k_m  = 15.891;
k_g  = 6.468;

% 전류
Ih  = Bh/k_h;
Iuy = Buy/k_uy;
Iuz = Buz/k_uz;
Im  = g_m/k_m;
Ig  = g_g/k_g;

% 저항
Rh  = 25.72;
Ruy = 15.11;
Ruz = 32.20;
Rm  = 36.10;
Rg  = 12.50;

% 전압
Vh  = Ih*Rh;
Vuy = Iuy*Ruy;
Vuz = Iuz*Ruz;
Vm  = Im*Rm;
Vg  = Ig*Rg;