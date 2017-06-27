% extract data

close all;
clear('all');
clc;

load('sugado_ingard_davies.mat');
M = M(M <= 0.2);
R_M_Ingard = R_M_Ingard(1:length(M));
R_M_davies = R_M_davies(1:length(M));
result_simulation_interp = interp1(M_simulation,R_M_simulation,M);
result_simulation_interp(1) =  result_simulation_interp(4);
result_simulation_interp(2) =  result_simulation_interp(3);
result_simulation_interp(end) =  result_simulation_interp(end-1);
correlation_1 = corrcoef(result_simulation_interp, R_M_davies);
correlation_2 = corrcoef(result_simulation_interp, R_M_Ingard);
correlation_1 = correlation_1(1,2)
correlation_2 = correlation_2(1,2)
davis_simulation = [M' result_simulation_interp'];
save('davis_simulation.txt', 'davis_simulation', '-ascii', '-double');

% s = hgload('davis_result.fig');
% h = findobj(s,'Type','line');
% x = get(h,'xdata');
% machs_simulation(1:6) = 0;
% for mach = 1:6
% 	e = x{7 - mach};
% 	machs_simulation(mach) = e;
% end
% machs_simulation = machs_simulation(machs_simulation <= 0.2);
% machs_analytical = x(7);
% machs_analytical = machs_analytical{1};
% machs_analytical = machs_analytical(machs_analytical <= 0.2);
% y = get(h,'ydata');
% result_simulation(1:6) = 0;
% for mach = 1:6
% 	e = y{7 - mach};
% 	result_simulation(mach) = e;
% end
% result_simulation = result_simulation(1:length(machs_simulation));
% result_analytical = y{7};
% result_analytical = result_analytical(1:length(machs_analytical));

% close all;

% result_simulation_interp = interp1(machs_simulation,result_simulation,machs_analytical);
% result_simulation_interp(1) = result_simulation(1);
% result_simulation_interp(2) = result_analytical(2);
% result_simulation_interp(end) = result_simulation(end);
% correlation = corrcoef(result_simulation_interp, result_analytical);
% correlation = correlation(1,2);

% davis_simulation = [machs_analytical' result_simulation_interp'];
% save('davis_simulation.txt', 'davis_simulation', '-ascii', '-double');

% davis_analytical = [machs_analytical' result_analytical'];
% save('davis_analytical.txt', 'davis_analytical', '-ascii', '-double');
