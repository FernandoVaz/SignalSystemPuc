% considere um sinal x(t) = sen(2*pi*n), amostrado com fa = 1000hz para 
% 0 <= t < = 2.
% A) Plote x(t) e o correspondente discreto xd(n)
% B) Calcule o periodo fundamental discreto xd(n)
% C) Repita A) e B) para com Ta = 1200s
%
clear; clc; close;
fa = 1200;
ta = 1/fa;

w = 2*pi*60; %fórmula do omega para w padrão com f = 60hz
T = 2*pi/w;  %extraindo o período de w, ficando 1/60
W = w*ta;

t = 0:ta:.2; 
N = length(t);
n = 0:(N-1); 

x = sin(w*t); % Contínuo 
xd = sin(W*n); % Discreto

figure(1), plot(n,x), grid;
figure(2), stem(n,xd), grid;