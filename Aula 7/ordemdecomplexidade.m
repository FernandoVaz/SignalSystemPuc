%Um algor�tmo para c�lculo de m�quina dda s�rie de fourier complexa.
clear,clc;
N = 1:1:100;
for i=1:length(N);
    x(i) = N(i)*N(i);
    x_fft(i) = N(i)*log2(N(i));
end
figure(1),plot(N,x,N,x_fft),grid;