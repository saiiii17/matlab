%FIR – Low pass filter
clc;
clear all;
f1=1;
f2=10;
t=0:0.01:1;
a=sin(2*pi*f1*t);
subplot(451);
plot(t,a);
xlabel('time');
ylabel('amp');
title('signal1');
b=sin(2*pi*f2*t);
subplot(452);
plot(t,b);
xlabel('time');
ylabel('amp');
title('signal2');
c=a+b;
subplot(453);
plot(c);
xlabel('time');
ylabel('amp');
title('added signal');
c1=abs(fft(c,1024));
for i=1:512
freq(i)=(i/1024)*100;
end
subplot(454);
plot(freq,c1(1:512));
xlabel('freq');
ylabel('amp');
title('fft of added signal');
N=input('Enter the filter order');
a1=(N-1)/2
if rem(N,2)==0
a1=N/2
end
fc=input('Enter the cut off frequency');
Wc=2*pi*fc/100
for n=1:N
if n==a1
hd(n)=Wc/pi
else
hd(n)=(sin(Wc*(n-a1)))/(pi*(n-a1))
end
end
%rectangular
w1=rectwin(N)
hn=hd.*w1'
subplot(455);
plot(hn);
xlabel('samples');
ylabel('amp');
title('periodic convolution');
h=freqz(hn,1,N);
subplot(456);
plot(abs(h));
xlabel('samples');
ylabel('amp');
title('magnitude response of window');
y=conv(c,hn);
subplot(457);
plot(y);
xlabel('samples');
ylabel('amp');
title('output signal');
y1=abs(fft(y,1024));
subplot(458);
plot(freq,y1(1:512));
xlabel('freq');
ylabel('amp');
title('spectrum of output signal');
%hanning
w2=hanning(N)
hn=hd.*w2'
subplot(459);
plot(hn);
xlabel('samples');
ylabel('amp');
title('periodic convolution');
h=freqz(hn,1,N);
subplot(4,5,10);
plot(abs(h));
xlabel('samples');
ylabel('amp');
title('magnitude response of window');
y=conv(c,hn);
subplot(4,5,11);
plot(y);
xlabel('samples');
ylabel('amp');
title('output signal');
y1=abs(fft(y,1024));
subplot(4,5,12);
plot(freq,y1(1:512));
xlabel('freq');
ylabel('amp');
title('spectrum of output signal');
%hamming
w3=hamming(N)
hn=hd.*w3'
subplot(4,5,13);
plot(hn);
xlabel('samples');
ylabel('amp');
title('periodic convolution');
h=freqz(hn,1,N);
subplot(4,5,14);
plot(abs(h));
xlabel('samples');
ylabel('amp');
title('magnitude response of window');
y=conv(c,hn);
subplot(4,5,15);
plot(y);
xlabel('samples');
ylabel('amp');
title('output signal');
y1=abs(fft(y,1024));
subplot(4,5,16);
plot(freq,y1(1:512));
xlabel('freq');
ylabel('amp');
title('spectrum of output signal');
