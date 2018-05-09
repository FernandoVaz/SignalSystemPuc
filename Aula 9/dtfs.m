% Considere traçar a dtfs de uma onda quadrada
% Periódica com a largura da região =! 0 variável
% Considere N = 51 pontos
% Se vc expande no tempo, vc comprime na frequencia.
% Comprimir ao maximo na freq vira um impulso só e no tempo vira DC
clear;clc;close;
N = 351; w0 = 2*pi/N; M = 40;
n = 0:N-1;

if fix(N/2) == N/2
    k = -N/2:N/2-1;
else
    k = -(N-1)/2:(N-1)/2;
end

x1 = ones(1,M+1);
x3 = ones(1,M);
x2 = zeros(1,N-2*M-1);

x = [x1 x2 x3];
%x = [x1 x2 x3] -.1765; % sinal puxado pra baixo, com média zero. (VALOR DC REMOVIDO)
figure(1), stem(n,x),grid;

X = fft(x/N); % X tem q ser dividido por N: 
figure(2), subplot(2,1,1),stem(k,fftshift(real(X))),grid;
           subplot(2,1,2),stem(k,fftshift(imag(X))),grid;
           %transformada da função sinc.
figure(3), stem(k,fftshift(real(X))),grid;
% construido como soma de cossenos harmonicamente fundamentados

% Escrevendo x[n] como uma soma de cossenos harmonicamente relacionados
soma = 0;
for m = 2:(N-1)/2+1
   xid = 2*X(m)*cos((m-1)*w0*n)+soma;
   soma = xid;
end
%X[1] = DC
figure(4),stem(n,X(1) + xid),grid;