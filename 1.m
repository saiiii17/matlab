%Generation Of Signals
clc;
clear all;
close all;
%Sine wave:
a=10;
f=1000;
t=0:0.000001:0.01;
s=a*sin(2*pi*f*t);
figure;
subplot(331);
plot(t,s);
title('sine wave');
xlabel('time');
ylabel('amplitude');
%Cosine wave:
a=10;
f=1000;
t=0:0.00001:0.01;
u=a*cos(2*pi*f*t);
subplot(332);
plot(t,u);
title('cosine wave');
xlabel('time');
ylabel('amplitude');
%Unit step signal:
n1= -10:10;
y1=[zeros(1,10),ones(1,11)];
subplot(333);
stem(n1,y1);
plot(n1,y1);
title('unit step');
xlabel('sample');
ylabel('amplitude');
%Unit impulse signal
n2= -5:1:5;
y3= [zeros(1,5),ones(1),zeros(1,5)];
subplot(3,3,4);
stem(n2,y3);
title('unit impulse');
xlabel ('samples');
ylabel ('amplitude');
%Rising Exponential signal
x = -2:0.05:20;
y = exp(x);
plot(y,x);
subplot(3,3,5);
plot(y,x);
title('rising exponential');
xlabel('time');
ylabel ('amplitude');
%square wave
f=1000;
t=0:0.01:0.1;
a=10;
y=a*square(2*pi*f*t);
subplot(3,3,6);
plot(t,y);
title('square wave');
xlabel('time');
ylabel ('amplitude');
