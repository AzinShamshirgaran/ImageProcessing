%%%fft box function%%%

Ts = 0.01; N=2000; t=- (N-1)*Ts:Ts:(N-1)*Ts;
T = 1;
fs=1/Ts;
f=-(N-1)/N*fs:fs/N:(N-1)/N*fs;
x1 = rectpuls(t, T);
xk=fft(x1);
figure(1); plot(t,x1); 
figure(3); plot(f, 1/N*abs(xk(1:length(f))));

%%
%%%fft Sine function%%%

Fs = 500;                    % Sampling frequency (fs)
T = 1/Fs;                     % Sampling period (T)
L = 1000;                     % Length of signal
t = (-(L-1):1:L-1)*T;                % Time vector

x1 = sin(2*pi*50*t);          % First row wave

figure(1); plot(t(500:1500),x1(500:1500));
title(['in the Time Domain']);
Y=fft(x1);

figure(3); plot(-(L-1)/L*Fs:(Fs/L):(L-1)/L*Fs,Y);
title(['in the Frequency Domain']);
