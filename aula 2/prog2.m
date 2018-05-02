% Aula 2.2 - Knegt
% Considere o sinal descrito por z(x,y) = sen(r)/r onde 
% r(x,y) = sqrt(x^2 + y^2), amostrado oom fr = 3hz. Plote a superfície z
% resultante para o intervalo -15 <= x <= 15 e -15 <= y <= 15

clc; %limpa o command window
clear; %limpa o workspace
close; %fecha todas as outras figuras previamente abertas

fa = 3; ta = 1/fa; %frequencia e periodo da função senoidal
x = -15:ta:15; % o resultado desta declaração é uma array!
y = -15:ta:15; % veja comment do x!
for i=1:length(x)
    for j=1:length(y)
        r(i,j) = sqrt(x(i)^2 + y(j)^2); %ignorar preallocation
        z(i,j) = sin(r(i,j))/r(i,j); % r(i,j) é um elemento, um número.
    end
end

figure(1),surf(r.^2);  %surf = surface, plota a matriz r como uma superfície
figure(2),mesh(z),grid; % Desenha uma malha baseada na altura de Z.
