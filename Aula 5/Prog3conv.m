% Convolução (CONVOLUTION)
% Função conv(vetor h, vetor x)
% faça a convolução discreta que aproxima a continua de:
% h(t) = (1-t)*(u(t+1)-u(t-1)) e x(t) = (u(t-2)-u(t-3)). Considere fa = 1000hz.
% plote: h(t), x(t) e o resultado da convolução y(t)
clear; clc; close;
fa = 1000; Ta = 1/fa;
th = 1:Ta:5; P = length(th); %caminho do gráfico Tamanho do h(t)
tx = 0:Ta:3; Q = length(tx); %caminho do gráfico Tamanho do x(t)
N = P+Q-1;
t = [0:Ta:(N-1)*Ta]+th(1)+tx(1); %th(1) = -1, tx(1) = 2

% Padrão, que todo código deve seguir
% A seguir devemos fabricar o sinal

h = exp(-2*th); %
x = ones(1,Q); % Q é o número de colunas.

y = conv(h,x)*Ta; %a multiplicação é pra discretizarmos o sinal
% Ao contrário teríamos um gráfico simples único.

figure(1),subplot(1,2,1),stem(th,h),grid; %stem para visualizar melhor a discretização
          subplot(1,2,2),stem(tx,x),grid;
figure(2),stem(t,y),grid;