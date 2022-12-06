n=0:50;
f=300;
fs1=450;
fs2=600;
fs3=3000;
x1=sin(2*pi*n*f/fs1);
x2=sin(2*pi*n*f/fs2);
x3=sin(2*pi*n*f/fs3);
subplot(231);
plot(n,x1);
xlabel('sample');
ylabel('amplitude');
title('samp freq <2fs');
subplot(232);
plot(n,x2);
xlabel('sample');
ylabel('amplitude');
title('samp freq 2fs');
subplot(233);
plot(n,x3);
xlabel('sample');
ylabel('amplitude');
title('samp freq >2fs');
a1=abs(fft(x1,1024));
a2=abs(fft(x2,1024));
a3=abs(fft(x3,1024));
for i=1:512
 freq1(i)=(i/1024)*(fs1);
end
for i=1:512
 freq2(i)=(i/1024)*(fs2);
end
for i=1:512
 freq3(i)=(i/1024)*(fs3);
end
subplot(234);
plot(freq1,a1(1:512));
grid on;
xlabel('frequency');
ylabel('amplitude');
title('magnitude spectrum:<2fs');
subplot(235);
plot(freq2,a2(1:512));
grid on;
xlabel('frequency');
ylabel('amplitude');
title('magnitude spectrum 2fs');
subplot(236);
plot(freq3,a3(1:512));
grid on;
xlabel('frequency');
ylabel('amplitude');
title('magnitude spectrum:>2fs');
