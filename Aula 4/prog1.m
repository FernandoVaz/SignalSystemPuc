% Considere o sinal x(n) = sen(0.3*n).
% A) Plote o sinal para -50cos <=n<=50
% B) Este sinal � periodico? Calcule o periodo fundamental
% C) Repita A) e B) para x(n) = sen(0.3*pi*n)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear; clc;
n = -150:150;
% O menor n que satisfaz a condi��o de periodicidade descrita abaixo � o
% periodo fundamental

%x = sin(0.3*n); fun��o n�o periodica, nao existe pontos em comuns
%x = sin(0.3*pi*n); fun��o falsa periodica, precisamos de dois pontos para 
% usar a repeti��o
x = sin(0.3*pi*n);
figure(1), stem(n, x), grid;
x %contando de quanto em quanto o periodo repete no command window para 
% descobrir o periodo