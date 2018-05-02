% Convolução (CONVOLUTION)
% Função conv(vetor h, vetor x)
% faça a convolução discreta que aproxima a continua de:
% h(t) = u(t) - u(t-1) e x(t)=0.5*(u(t) - u(t-1)). Considere fa = 5hz.
% plote: h(t), x(t) e o resultado da convolução y(t)
clear; clc; close;
fa = 1000; Ta = 1/fa; a = 1; b = 1; %a e b são os limites do gráfico
th = 0:Ta:a; P = length(th); %caminho do gráfico
tx = 0:Ta:b; Q = length(tx); %caminho do gráfico
N = P+Q-1;
t = 0:Ta:(N-1)*Ta;

%Padrão, que todo código deve seguir
%A seguir devemos fabricar o sinal

h = ones(1,P); % P é o número de pontos
x = 0.5*ones(1,Q); % Q é o número de colunas.

y = conv(h,x)*Ta; %a multiplicação é pra discretizarmos o sinal
% Ao contrário teríamos um gráfico simples único.

figure(1),subplot(1,2,1),stem(th,h),grid; %stem para visualizar melhor a discretização
          subplot(1,2,2),stem(tx,x),grid;
figure(2),stem(t,y),grid;


% Programa 2, desenhar uma rampa que vai de 1 à 1
h2 = th; %para 0<=t<=1 Função analítica th = 0:Ta:a;
x2 = ones(1,Q);
yn = conv(h2,x2)*Ta;

figure(3), subplot(1,2,1),stem(th,h2),grid;
           subplot(1,2,2),stem(tx,x2),grid;
figure(4), stem(t,yn),grid;