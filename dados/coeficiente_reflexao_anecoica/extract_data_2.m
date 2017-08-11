% extract data 2

kas = textread('kas.txt');
A_real = textread('A_real.txt');
A_imag = textread('A_imag.txt');
A_abs = textread('A_abs.txt');
B_real = textread('B_real.txt');
B_imag = textread('B_imag.txt');
B_abs = textread('B_abs.txt');
C_real = textread('C_real.txt');
C_imag = textread('C_imag.txt');
C_abs = textread('C_abs.txt');
D_real = textread('D_real.txt');
D_imag = textread('D_imag.txt');
D_abs = textread('D_abs.txt');

number_downsample = 5;
kas = kas(1:number_downsample:end);
A_real = A_real(1:number_downsample:end); 
A_imag = A_imag(1:number_downsample:end); 
A_abs = A_abs(1:number_downsample:end); 
B_real = B_real(1:number_downsample:end); 
B_imag = B_imag(1:number_downsample:end); 
B_abs = B_abs(1:number_downsample:end); 
C_real = C_real(1:number_downsample:end); 
C_imag = C_imag(1:number_downsample:end); 
C_abs = C_abs(1:number_downsample:end); 
D_real = D_real(1:number_downsample:end); 
D_imag = D_imag(1:number_downsample:end); 
D_abs = D_abs(1:number_downsample:end); 

A_real_1 = [kas(find(kas < 2.5))' A_real'];
save('A_real_1.txt', 'A_real_1', '-ascii', '-double');
A_imag_1 = [kas(find(kas < 2.5))' A_imag'];
save('A_imag_1.txt', 'A_imag_1', '-ascii', '-double');
A_abs_1 = [kas(find(kas < 2.5))' A_abs'];
save('A_abs_1.txt', 'A_abs_1', '-ascii', '-double');

B_real_1 = [kas(find(kas < 2.5))' B_real'];
save('B_real_1.txt', 'B_real_1', '-ascii', '-double');
B_imag_1 = [kas(find(kas < 2.5))' B_imag'];
save('B_imag_1.txt', 'B_imag_1', '-ascii', '-double');
B_abs_1 = [kas(find(kas < 2.5))' B_abs'];
save('B_abs_1.txt', 'B_abs_1', '-ascii', '-double');

C_real_1 = [kas(find(kas < 2.5))' C_real'];
save('C_real_1.txt', 'C_real_1', '-ascii', '-double');
C_imag_1 = [kas(find(kas < 2.5))' C_imag'];
save('C_imag_1.txt', 'C_imag_1', '-ascii', '-double');
C_abs_1 = [kas(find(kas < 2.5))' C_abs'];
save('C_abs_1.txt', 'C_abs_1', '-ascii', '-double');

D_real_1 = [kas(find(kas < 2.5))' D_real'];
save('D_real_1.txt', 'D_real_1', '-ascii', '-double');
D_imag_1 = [kas(find(kas < 2.5))' D_imag'];
save('D_imag_1.txt', 'D_imag_1', '-ascii', '-double');
D_abs_1 = [kas(find(kas < 2.5))' D_abs'];
save('D_abs_1.txt', 'D_abs_1', '-ascii', '-double');
