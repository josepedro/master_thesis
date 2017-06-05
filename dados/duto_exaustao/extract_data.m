% extract data
close all;
clear('all');
clc;

s = hgload('abs_r_020.fig');
h = findobj(s,'Type','line');
x = get(h,'xdata');
kas_simulation = x{1};
kas_simulation = kas_simulation(kas_simulation <= 1.8);
kas_analytical = x{2};
kas_analytical = kas_analytical(kas_analytical <= 1.8);
y = get(h,'ydata');
result_simulation = y{1};
result_simulation = result_simulation(1:length(kas_simulation));
result_analytical = y{2};
result_analytical = result_analytical(1:length(kas_analytical));

close all;

result_simulation_interp = interp1(kas_simulation,result_simulation,kas_analytical);
result_simulation_interp(1) = result_simulation(1);
result_simulation_interp(end) = result_simulation(end);
correlation = corrcoef(result_simulation_interp, result_analytical);
correlation = correlation(1,2);

abs_r_020_simulation = [kas_analytical' result_simulation_interp'];
save('abs_r_020_simulation.txt', 'abs_r_020_simulation', '-ascii', '-double');
abs_r_020_analytical = [kas_analytical' result_analytical'];
save('abs_r_020_analytical.txt', 'abs_r_020_analytical', '-ascii', '-double');

% -------------------------------------------------------------------------

close all;
clear('all');
clc;

s = hgload('loa_020.fig');
h = findobj(s,'Type','line');
x = get(h,'xdata');
kas_simulation = x{3};
kas_simulation = kas_simulation(kas_simulation <= 1.8);
kas_analytical = x{4};
kas_analytical = kas_analytical(kas_analytical <= 1.8);
y = get(h,'ydata');
result_simulation = y{3};
result_simulation = result_simulation(1:length(kas_simulation));
result_analytical = y{4};
result_analytical = result_analytical(1:length(kas_analytical));

close all;

result_simulation_interp = interp1(kas_simulation,result_simulation,kas_analytical);
result_simulation_interp(1) = result_simulation(1);
result_simulation_interp(end) = result_simulation(end);
correlation = corrcoef(result_simulation_interp, result_analytical);
correlation = correlation(1,2);

loa_020_simulation = [kas_analytical' result_simulation_interp'];
save('loa_020_simulation.txt', 'loa_020_simulation', '-ascii', '-double');
loa_020_analytical = [kas_analytical' result_analytical'];
save('loa_020_analytical.txt', 'loa_020_analytical', '-ascii', '-double');

%--------------------------------------------------------------------------

close all;
clear('all');
clc;

s = hgload('abs_r_015.fig');
h = findobj(s,'Type','line');
x = get(h,'xdata');
kas_simulation = x{1};
kas_simulation = kas_simulation(kas_simulation <= 1.8);
kas_analytical = x{2};
kas_analytical = kas_analytical(kas_analytical <= 1.8);
y = get(h,'ydata');
result_simulation = y{1};
result_simulation = result_simulation(1:length(kas_simulation));
result_analytical = y{2};
result_analytical = result_analytical(1:length(kas_analytical));

close all;

result_simulation_interp = interp1(kas_simulation,result_simulation,kas_analytical);
result_simulation_interp(1) = result_simulation(1);
result_simulation_interp(end) = result_simulation(end);
result_simulation_interp(2) = result_simulation(2);
correlation = corrcoef(result_simulation_interp, result_analytical);
correlation = correlation(1,2);

abs_r_015_simulation = [kas_analytical' result_simulation_interp'];
save('abs_r_015_simulation.txt', 'abs_r_015_simulation', '-ascii', '-double');
abs_r_015_analytical = [kas_analytical' result_analytical'];
save('abs_r_015_analytical.txt', 'abs_r_015_analytical', '-ascii', '-double');

% ================================================================

close all;
clear('all');
clc;

s = hgload('abs_r_015.fig');
h = findobj(s,'Type','line');
x = get(h,'xdata');
kas_simulation = x{1};
kas_simulation = kas_simulation(kas_simulation <= 1.8);
kas_analytical = x{2};
kas_analytical = kas_analytical(kas_analytical <= 1.8);
y = get(h,'ydata');
result_simulation = y{1};
result_simulation = result_simulation(1:length(kas_simulation));
result_analytical = y{2};
result_analytical = result_analytical(1:length(kas_analytical));

close all;

result_simulation_interp = interp1(kas_simulation,result_simulation,kas_analytical);
result_simulation_interp(1) = result_simulation(1);
result_simulation_interp(end) = result_simulation(end);
result_simulation_interp(2) = result_simulation(2);
correlation = corrcoef(result_simulation_interp, result_analytical);
correlation = correlation(1,2);

abs_r_015_simulation = [kas_analytical' result_simulation_interp'];
save('abs_r_015_simulation.txt', 'abs_r_015_simulation', '-ascii', '-double');
abs_r_015_analytical = [kas_analytical' result_analytical'];
save('abs_r_015_analytical.txt', 'abs_r_015_analytical', '-ascii', '-double');

% ================================================================

close all;
clear('all');
clc;

s = hgload('loa_015.fig');
h = findobj(s,'Type','line');
x = get(h,'xdata');
kas_simulation = x{3};
kas_simulation = kas_simulation(kas_simulation <= 1.8);
kas_analytical = x{4};
kas_analytical = kas_analytical(kas_analytical <= 1.8);
y = get(h,'ydata');
result_simulation = y{3};
result_simulation = result_simulation(1:length(kas_simulation));
result_analytical = y{4};
result_analytical = result_analytical(1:length(kas_analytical));

close all;

result_simulation_interp = interp1(kas_simulation,result_simulation,kas_analytical);
result_simulation_interp(1) = result_simulation(1);
result_simulation_interp(end) = result_simulation(end);
result_simulation_interp(2) = result_simulation(2);
correlation = corrcoef(result_simulation_interp, result_analytical);
correlation = correlation(1,2);

loa_015_simulation = [kas_analytical' result_simulation_interp'];
save('loa_015_simulation.txt', 'loa_015_simulation', '-ascii', '-double');
loa_015_analytical = [kas_analytical' result_analytical'];
save('loa_015_analytical.txt', 'loa_015_analytical', '-ascii', '-double');
