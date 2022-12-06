%file:///C:/Users/Dell/AppData/Local/Temp/l09-synth.pdf
S = 44100;
N = 0.5 * S; % 0.5 sec
t = [0:N-1]/S; % time samples: t = n/S
y = 0.5 * cos(2*pi * 400 * t);
x = y + 0.2 * cos(2*pi * 800 * t) + 0.1 * cos(2*pi * 2000 * t);
plot(t, x, '-', t, y, '--'),
legend('x', 'y')
xlabel 't', ylabel 'x(t), y(t)', axis([0 0.01 -1 1])
sound(x,S);
