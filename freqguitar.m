%https://in.mathworks.com/help/signal/ug/practical-introduction-to-frequency-domainanalysis.html
Fs = 22050;
y = audioread('gtr-nylon22.wav');
NFFT = length(y);
Y = fft(y,NFFT);
F = ((0:1/NFFT:1-1/NFFT)*Fs).';
magnitudeY = abs(Y); % Magnitude of the FFT
phaseY = unwrap(angle(Y)); % Phase of the FFT
helperFrequencyAnalysisPlot1(F,magnitudeY,phaseY,NFFT)
y1 = ifft(Y,NFFT,'symmetric');
norm(y-y1)
hplayer = audioplayer(y1, Fs);
play(hplayer);
Ylp = Y;
Ylp(F>=1000 & F<=Fs-1000) = 0;
helperFrequencyAnalysisPlot1(F,abs(Ylp),unwrap(angle(Ylp)),NFFT,...
 'Frequency components above 1 kHz have been zeroed')
ylp = ifft(Ylp,'symmetric');
hplayer = audioplayer(ylp, Fs);
play(hplayer);
