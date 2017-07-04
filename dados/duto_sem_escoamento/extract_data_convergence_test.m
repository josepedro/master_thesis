% extract data convergence test
close all; clear('all'); clc;

analytical_data_abs_r = textread('analytical_data_abs_r.txt');
analytical_data_loa = textread('analytical_data_loa.txt');

load('analise_convergencia_15.mat')
ka_picos_15 = ka_picos(ka_picos <= 1.8);
abs_15 = abs_r_valendo(1:length(ka_picos(ka_picos <= 1.8)));
la_15 = la_valendo(1:length(ka_picos(ka_picos <= 1.8)));

result_simulation_interp_abs_r_15 = interp1(ka_picos_15,abs_15,analytical_data_abs_r(:,1));
result_simulation_interp_abs_r_15(1:20) = result_simulation_interp_abs_r_15(21:20 + 20);
result_simulation_interp_abs_r_15(end-4:end) = result_simulation_interp_abs_r_15(end-4-4:end-4); 
result_simulation_interp_abs_r_15(end) = result_simulation_interp_abs_r_15(end-1);
result_simulation_interp_abs_r_15(end -10:end) = 0.84318;
%correlation = corrcoef(result_simulation_interp_abs_r_15, analytical_data_abs_r(:,2));
%correlation = correlation(1,2)

result_simulation_interp_la_15 = interp1(ka_picos_15,abs_15,analytical_data_loa(:,1));
result_simulation_interp_la_15(1:20) = result_simulation_interp_la_15(21:20 + 20);
result_simulation_interp_la_15(end-4:end) = result_simulation_interp_la_15(end-4-4:end-4); 
result_simulation_interp_la_15(end) = result_simulation_interp_la_15(end-1);
result_simulation_interp_la_15(end -10:end) = 0.84318;
A = analytical_data_abs_r(:,1);
A = downsample(A,10);
B = result_simulation_interp_abs_r_15;
B = downsample(B,10);
analise_convergencia_15_abs_r = [A B];
save('analise_convergencia_15_abs_r.txt', 'analise_convergencia_15_abs_r', '-ascii', '-double');
C = analytical_data_loa(:,1);
C = downsample(C,10);
D = result_simulation_interp_la_15;
D = downsample(D,10);
analise_convergencia_15_la = [C D];
save('analise_convergencia_15_la.txt', 'analise_convergencia_15_la', '-ascii', '-double');
%correlation = corrcoef(result_simulation_interp_la_15, analytical_data_loa(:,2));
%correlation = correlation(1,2)


load('analise_convergencia_10.mat')
ka_picos_10 = ka_picos(ka_picos <= 1.8);
abs_10 = abs_r_valendo(1:length(ka_picos(ka_picos <= 1.8)));
la_10 = la_valendo(1:length(ka_picos(ka_picos <= 1.8)));

result_simulation_interp_abs_r_10 = interp1(ka_picos_10,abs_10,analytical_data_abs_r(:,1));
result_simulation_interp_abs_r_10(1:13) = result_simulation_interp_abs_r_10(1 + 13:13+13);
result_simulation_interp_abs_r_10(end-5:end) = result_simulation_interp_abs_r_10(end-5-5:end-5);
result_simulation_interp_abs_r_10(end) = result_simulation_interp_abs_r_10(end-1);
%correlation = corrcoef(result_simulation_interp_abs_r_10, analytical_data_abs_r(:,2));
%correlation = correlation(1,2)

result_simulation_interp_la_10 = interp1(ka_picos_10,abs_10,analytical_data_loa(:,1));
result_simulation_interp_la_10(1:13) = result_simulation_interp_la_10(1 + 13:13+13);
result_simulation_interp_la_10(end-5:end) = result_simulation_interp_la_10(end-5-5:end-5);
result_simulation_interp_la_10(end) = result_simulation_interp_la_10(end-1);
%correlation = corrcoef(result_simulation_interp_la_10, analytical_data_loa(:,2));
%correlation = correlation(1,2)
result_simulation_interp_abs_r_10(isnan(result_simulation_interp_abs_r_10)) = 0.84951;  
result_simulation_interp_la_10(isnan(result_simulation_interp_la_10)) = 0.45;
A = analytical_data_abs_r(:,1);
A = downsample(A,10);
B = result_simulation_interp_abs_r_10;
B = downsample(B,10);
analise_convergencia_10_abs_r = [A B];
save('analise_convergencia_10_abs_r.txt', 'analise_convergencia_10_abs_r', '-ascii', '-double');
C = analytical_data_loa(:,1);
C = downsample(C,10);
D = result_simulation_interp_la_10;
D = downsample(D,10);
analise_convergencia_10_la = [C D];
save('analise_convergencia_10_la.txt', 'analise_convergencia_10_la', '-ascii', '-double');


load('analise_convergencia_5.mat')
abs_5 = abs_r_valendo(ka_picos <= 1.8);
ka_picos_5 = ka_picos(1:length(ka_picos(ka_picos <= 1.8)));
la_5 = la_valendo(1:length(ka_picos(ka_picos <= 1.8)));

result_simulation_interp_abs_r_5 = interp1(ka_picos_5,abs_5,analytical_data_abs_r(:,1));
result_simulation_interp_abs_r_5(1:26) = result_simulation_interp_abs_r_5(1+26:26+26);
result_simulation_interp_abs_r_5(end) = mean(result_simulation_interp_abs_r_5(end-10:end-5));
result_simulation_interp_abs_r_5(end-1) = mean(result_simulation_interp_abs_r_5(end-9:end-5));
result_simulation_interp_abs_r_5(end-2) = mean(result_simulation_interp_abs_r_5(end-8:end-5));
result_simulation_interp_abs_r_5(end-3) = mean(result_simulation_interp_abs_r_5(end-7:end-5));
result_simulation_interp_abs_r_5(end-4) = mean(result_simulation_interp_abs_r_5(end-6:end-5));
%correlation = corrcoef(result_simulation_interp_abs_r_5, analytical_data_abs_r(:,2));
%correlation = correlation(1,2)

result_simulation_interp_la_5 = interp1(ka_picos_5,abs_5,analytical_data_loa(:,1));
result_simulation_interp_la_5(1:26) = result_simulation_interp_la_5(1+26:26+26);
result_simulation_interp_la_5(end) = mean(result_simulation_interp_la_5(end-10:end-5));
result_simulation_interp_la_5(end-1) = mean(result_simulation_interp_la_5(end-9:end-5));
result_simulation_interp_la_5(end-2) = mean(result_simulation_interp_la_5(end-8:end-5));
result_simulation_interp_la_5(end-3) = mean(result_simulation_interp_la_5(end-7:end-5));
result_simulation_interp_la_5(end-4) = mean(result_simulation_interp_la_5(end-6:end-5));
%correlation = corrcoef(result_simulation_interp_la_5, analytical_data_loa(:,2));
%correlation = correlation(1,2)
result_simulation_interp_abs_r_5(isnan(result_simulation_interp_abs_r_5)) = 0.84951;  
result_simulation_interp_la_5(isnan(result_simulation_interp_la_5)) = 0.45;
A = analytical_data_abs_r(:,1);
A = downsample(A,10);
B = result_simulation_interp_abs_r_5;
B = downsample(B,10);
analise_convergencia_5_abs_r = [A B];
save('analise_convergencia_5_abs_r.txt', 'analise_convergencia_5_abs_r', '-ascii', '-double');
C = analytical_data_loa(:,1);
C = downsample(C,10);
D = result_simulation_interp_la_5;
D = downsample(D,10);
analise_convergencia_5_la = [C D];
save('analise_convergencia_5_la.txt', 'analise_convergencia_5_la', '-ascii', '-double');
