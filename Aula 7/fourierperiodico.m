% Considere o sinal x[n] = cos(6*pi/13n + pi/4).
% Plote um periodo deste sinal no tempo e na frequência.
N = 13; w0 = 2*pi/N; w=3*w0;
n = 0:N-1;
if fix(N/2) == N/2
    k = -N/2:N/2-1;
else
    k = -(N-1)/2:(N-1)/2;
end
x = cos(w*n+pi/4);
% sinal do tempo letra minúscula, sinal na frequência letra maiúscula
X = fft(x/N); %responde aos pontos de freq de 0 a 12
% queremos escala simétrica
figure(1),stem(n,x),grid;
figure(2), subplot(2,1,1),stem(k,fftshift(real(X))),grid;
           subplot(2,1,2),stem(k,fftshift(imag(X))),grid;