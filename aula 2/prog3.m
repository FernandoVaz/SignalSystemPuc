% Aula 2.3 - Knegt
% Sinais pares, sinais ímpares
% x(t) = xp(t) + xi(t)
% x(t) = 0.5(x(t)+ x(-t)) + 0.5(x(t)-x(-t))

% Considere o sinal x(t) = exp(-2*t), amostrado com fa = 100hz
% para -1 <= t <= 1
% Plote x(t), xp(t), xi(t)
% Plote também noutra figura x(t) e xp(t) + xi(t) na cor vermelha

clc, clear, close;
fa = 100, ta = 1/fa;
t = -1:ta:1;
n = length(t);
x = exp(-2*t);


% Precisamos do x espelhado nas duas fórmulas, logo vamos fazê-lo
for i=1:n
    xmirr(i) = x(n-i+1); %xmirr = x espelhado, x(n-i+1) é a função espelhada
end

xp = 0.5*(x+xmirr); %parte par
xi = 0.5*(x-xmirr); %parte ímpar

figure(1), plot(t,x),grid;
figure(2), 
    subplot(1,2,1), plot(t,xp),grid;
    subplot(1,2,2), plot(t,xi),grid;
figure(3), plot(t,x,t,xp+xi, 'r'), grid;




