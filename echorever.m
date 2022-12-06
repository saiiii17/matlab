%ADD ECHO
load handel
delay = 0.2; % Delay in seconds
index = round(delay*Fs);% Delay in samples
yy = [zeros(index,1); y]; % Zero pad the beginning to add delay
yy = yy(1:length(y));% Cut vector to correct length
yy = yy+y; % Add original sound to echo
soundsc(yy,Fs); %
%Play it
%ADD REVERBERATION
delay1 = round(Fs*0.008); % FIR Delay
delay2 = round(Fs*0.025); % IIR Delay
coef = 0.7; % IIR Decay rate
yy = filter([1 zeros(1,delay1) coef],[1 zeros(1,delay2) -coef],y);
soundsc(yy,Fs); % Play it
