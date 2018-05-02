% faça a convolução discreta que aproxima a contínua de:
% h(t) = u(t) + u(t-1) -2u(t-2) e
% x(t) = u(t-1) - u(t-4)

clear;clc;
fa = 2000; Ta=1/fa;
th1 = 0:Ta:1-Ta; P1 = length(th1);
th2 = 1:Ta:2; P2 = length(th2);

th = [th1 th2];

tx = 1:Ta:4; Q = length(tx);
N = P1+P2+Q-1;
                        %> Gambiarra para não ter que pensar em ajutar a
                        %escala
                        %> th1 apenas pois precisamos apenas do tempo onde
                        %começa.
                        %> 
t = [0:Ta:(N-1)*Ta] + th(1)+tx(1);


h = [ones(1,P1) 2*ones(1,P2)];
x = ones(1,Q);

y = conv(h,x)*Ta;
figure(1), subplot(1,2,1), stem(th,h),axis([0 3 0 4]),grid;
           subplot(1,2,2), stem(tx,x),axis([0 5 0 2]),grid;
figure(2), plot(t,y),grid;