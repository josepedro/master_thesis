% extract data convergence test
close all; clear('all'); clc;

analytical_data_abs_r = textread('analytical_data_abs_r.txt');
analytical_data_loa = textread('analytical_data_loa.txt');

load('analise_convergencia_15.mat')
ka_picos_15 = ka_picos(ka_picos <= 1.8);
abs_15 = abs_r_valendo(1:length(ka_picos(ka_picos <= 1.8)));
la_15 = la_valendo(1:length(ka_picos(ka_picos <= 1.8)));

result_simulation_interp_abs_r_15 = interp1(ka_picos_15,abs_15,analytical_data_abs_r(:,1));
result_simulation_interp_abs_r_15(1) = mean(result_simulation_interp_abs_r_15(10:12));
result_simulation_interp_abs_r_15(2) = mean(result_simulation_interp_abs_r_15(10:13));
result_simulation_interp_abs_r_15(3) = mean(result_simulation_interp_abs_r_15(10:14));
result_simulation_interp_abs_r_15(4) = mean(result_simulation_interp_abs_r_15(10:15));
result_simulation_interp_abs_r_15(5) = mean(result_simulation_interp_abs_r_15(10:16));
result_simulation_interp_abs_r_15(6) = mean(result_simulation_interp_abs_r_15(10:17));
result_simulation_interp_abs_r_15(7) = mean(result_simulation_interp_abs_r_15(10:18));
result_simulation_interp_abs_r_15(8) = mean(result_simulation_interp_abs_r_15(10:19));
result_simulation_interp_abs_r_15(9) = mean(result_simulation_interp_abs_r_15(10:20));
result_simulation_interp_abs_r_15(end) = mean(result_simulation_interp_abs_r_15(end-10:end-5));
result_simulation_interp_abs_r_15(end-1) = mean(result_simulation_interp_abs_r_15(end-9:end-5));
result_simulation_interp_abs_r_15(end-2) = mean(result_simulation_interp_abs_r_15(end-8:end-5));
result_simulation_interp_abs_r_15(end-3) = mean(result_simulation_interp_abs_r_15(end-7:end-5));
result_simulation_interp_abs_r_15(end-4) = mean(result_simulation_interp_abs_r_15(end-6:end-5));
correlation = corrcoef(result_simulation_interp_abs_r_15', analytical_data_abs_r(:,2));
correlation = correlation(1,2)


load('analise_convergencia_10.mat')
ka_picos_10 = ka_picos(ka_picos <= 1.8);
abs_10 = abs_r_valendo(1:length(ka_picos(ka_picos <= 1.8)));
la_10 = la_valendo(1:length(ka_picos(ka_picos <= 1.8)));

load('analise_convergencia_5.mat')
abs_5 = abs_r_valendo(ka_picos <= 1.8);
ka_picos_5 = ka_picos(1:length(ka_picos(ka_picos <= 1.8)));
la_5 = la_valendo(1:length(ka_picos(ka_picos <= 1.8)));

