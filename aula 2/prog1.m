% Aula 2.1 - Knegt
% subplot(linhas, colunas, posição)
% A idéia do subplot é dividir para poder comparar diferentes gráficos em
% uma mesma figure (ou tela). Temos de ter cuidado ao dividir demais a tela
% uma vez que a visibilidade do gráfico e seus dados são importantes.

% programa 01
t = 0:0.01:3;
x = sin(2*pi*3*t);
y = x.*exp(-t);
w = x + cos(2*pi*10*t);
figure(1)
subplot(2,2,1),plot(t,x),grid;
subplot(2,2,2),stem(t,x),grid; %stem significa plotar sinal discreto
subplot(2,2,3),sphere(20); %sphere printa uma esfera. oooo.
subplot(2,2,4),plot(t,y,t,exp(-t),t,-exp(-t)),grid; %plot(x1,y1,x2,y2...) tudo junto
