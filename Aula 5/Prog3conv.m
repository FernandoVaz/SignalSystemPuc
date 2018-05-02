% Convolu��o (CONVOLUTION)
% Fun��o conv(vetor h, vetor x)
% fa�a a convolu��o discreta que aproxima a continua de:
% h(t) = (1-t)*(u(t+1)-u(t-1)) e x(t) = (u(t-2)-u(t-3)). Considere fa = 1000hz.
% plote: h(t), x(t) e o resultado da convolu��o y(t)
clear; clc; close;
fa = 1000; Ta = 1/fa;
th = 1:Ta:5; P = length(th); %caminho do gr�fico Tamanho do h(t)
tx = 0:Ta:3; Q = length(tx); %caminho do gr�fico Tamanho do x(t)
N = P+Q-1;
t = [0:Ta:(N-1)*Ta]+th(1)+tx(1); %th(1) = -1, tx(1) = 2

% Padr�o, que todo c�digo deve seguir
% A seguir devemos fabricar o sinal

h = exp(-2*th); %
x = ones(1,Q); % Q � o n�mero de colunas.

y = conv(h,x)*Ta; %a multiplica��o � pra discretizarmos o sinal
% Ao contr�rio ter�amos um gr�fico simples �nico.

figure(1),subplot(1,2,1),stem(th,h),grid; %stem para visualizar melhor a discretiza��o
          subplot(1,2,2),stem(tx,x),grid;
figure(2),stem(t,y),grid;