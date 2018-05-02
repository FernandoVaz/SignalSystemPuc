% Considere o sinal x(t) = t para -1 <= t < 2,
%                   x(t) = 2 para 2 <= t < 3,
%                   x(t) = -t para 3 <= t <= 5;
% Considere fa = 100 Hz (freq amostragem)
% Plote x(t), x(-t), xp(t), xi(t)
% Plote em outra figura x e xp+xi na cor verde.

clc;clear;close;
fa = 100; ta = 1/fa;

%sempre pegamos o lado maior e fazemos o lado simétrico, por questões de
%tamanho da array

t1 = -5:ta:(-1-ta); n1 = length(t1); %-1 já começa a subir, então subtraímos ta para desigualar
t2 = -1:ta:(2-ta); n2 = length(t2); % Pelo mesmo motivo, subtraímos ta para não pegar o 2
t3 = 2:ta:(3-ta); n3 = length(t3); % 3-ta para excluir o 3
t4 = 3:ta:5; n4 = length(t4); % Como incluímos 5 na conta

t = [t1 t2 t3 t4]; nt = length(t); % matriz com todos os tempos.
%t = -5:ta:5; nt = length(t);

x = [zeros(1,n1) t2 2*ones(1,n3) (-1*t4 + 5)];
figure(1), plot(t, x), grid;

for i=1:nt
    x0(i) = x(nt-i+1);
end

xp = 0.5*(x+x0);
xi = 0.5*(x-x0);
figure(2), plot(t,x0), grid;
figure(3), subplot(1,2,1), stem(t,xp),grid,
           subplot(1,2,2), stem(t,xi), grid;
figure(4), plot(t,x,t,xp+xi, 'g'),grid;
    