n1 = input('Enter the number of samples in sequence1 ');
x = input('Enter sequence1 ');
figure;
subplot(331);
stem(x);
title('sequence 1');
xlabel('samples');
ylabel('Amplitude');
n2 = input('Enter the number of samples in sequence2 ');
h = input('Enter sequence2 ');
subplot(332);
stem(h);
title('sequence 2');
xlabel('samples');
ylabel('Amplitude');
%Zero Padding
N = n1 + n2-1;
x1 = [x zeros(1, N-n1)];
subplot(334);
stem(x1);
title('sequence 1 with zero padding');
xlabel('samples');
ylabel('Amplitude');
h1 = [h zeros(1, N-n2)];
subplot(335);
stem(h1);
title('sequence 2 with zero padding');
xlabel('samples');
ylabel('Amplitude');
for i= 1:1:N
y (i) = 0;
for j= 1:1:i
y (i) = y (i) + (x1(j)*h1((i-j) + 1));
end
end
subplot(337);
stem (y);
title ('convolved sequence');
xlabel ('samples');
ylabel ('Amplitude');
