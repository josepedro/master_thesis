% extract acoustic energy

[St_005 abs_r_005] = textread("abs_005_strouhal.txt", "%f %f");
[St_007 abs_r_007] = textread("abs_007_strouhal.txt", "%f %f");
[St_010 abs_r_010] = textread("abs_010_strouhal.txt", "%f %f");
[St_015 abs_r_015] = textread("abs_015_strouhal.txt", "%f %f");
[St_020 abs_r_020] = textread("abs_020_strouhal.txt", "%f %f");

M_005 = 0.05;
M_007 = 0.07;
M_010 = 0.10;
M_015 = 0.15;
M_020 = 0.20;
abs_r_005 = (abs_r_005.^2).*((1 - M_005)/(1 + M_005))^2;
abs_r_007 = (abs_r_007.^2).*((1 - M_007)/(1 + M_007))^2;
abs_r_010 = (abs_r_010.^2).*((1 - M_010)/(1 + M_010))^2;
abs_r_015 = (abs_r_015.^2).*((1 - M_015)/(1 + M_015))^2;
abs_r_020 = (abs_r_020.^2).*((1 - M_020)/(1 + M_020))^2;

abs_005_strouhal_energy = [St_005 abs_r_005];
save('abs_005_strouhal_energy.txt', 'abs_005_strouhal_energy', '-ascii', '-double');
abs_007_strouhal_energy = [St_007 abs_r_007];
save('abs_007_strouhal_energy.txt', 'abs_007_strouhal_energy', '-ascii', '-double');
abs_010_strouhal_energy = [St_010 abs_r_010];
save('abs_010_strouhal_energy.txt', 'abs_010_strouhal_energy', '-ascii', '-double');
abs_015_strouhal_energy = [St_015 abs_r_015];
save('abs_015_strouhal_energy.txt', 'abs_015_strouhal_energy', '-ascii', '-double');
abs_020_strouhal_energy = [St_020 abs_r_020];
save('abs_020_strouhal_energy.txt', 'abs_020_strouhal_energy', '-ascii', '-double');