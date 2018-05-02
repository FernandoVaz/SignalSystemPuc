% faça a convolução discreta que aproxima a contínua de:
% h(t) = u(1/RC)*exp(-t/RC)*(u(t) - u(t-5)) e x(t) = sen((1/rc)*t))*u(t-50)
% considere fa = 1000hz

clear;clc;close;
fa = 5000; Ta=1/fa; RC = 2; W = 1/RC;
th = 0:Ta:15; P1 = length(th);
tx = 0:Ta:150; Q = length(tx);
N = P1+Q-1;
                        %> Gambiarra para não ter que pensar em ajutar a
                        %escala
                        %> th1 apenas pois precisamos apenas do tempo onde
                        %começa.
                        %> 
t = (0:Ta:(N-1)*Ta) + th(1)+tx(1);


h = (1/RC)*exp(-th/RC);
x = sin(W*tx);

y = conv(h,x)*Ta;
figure(1), subplot(1,2,1), stem(th,h),grid;
           subplot(1,2,2), stem(tx,x),grid;
figure(2), plot(t,y),grid;