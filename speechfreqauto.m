[x,fs]=xlsread('E:\DSP_IT_2020\DSP_IT_lab\voice001.xlsx');
% wavread('six.wav',[1001:3318]);
frame1 = x(1001:3318);
fs=8000;
ms20=fs/50; % minimum speech Fx at 50Hz
%
% plot waveform
t=(0:length(frame1)-1)/fs; % times of sampling instants
subplot(2,1,1);
plot(t,frame1);
grid on
set(gca,'FontName','Time New Roman','FontSize',12);
title('Frame-1');
legend('Waveform');
xlabel('Time (s)');
ylabel('Amplitude');
%
% calculate autocorrelation
r=xcorr(frame1,ms20,'coeff');
%
% plot autocorrelation
d=(-ms20:ms20)/fs; % times of delays
set(gca,'FontName','Time New Roman','FontSize',14);
subplot(2,1,2);
plot(d,r);
set(gca,'FontName','Time New Roman','FontSize',14);
legend('Autocorrelation');
xlabel('Delay (s)');
ylabel('Correlation coeff.');
ms2=fs/500 % maximum speech Fx at 500Hz
ms20=fs/50 % minimum speech Fx at 50Hz
r=r(ms20+1:2*ms20+1)
[rmax,tx]=max(r(ms2:ms20))
fprintf('rmax=%g Pitch=%gHz\n',rmax,fs/(ms2+tx-1));
