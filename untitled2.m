% Generate a radar signal
fs = 1000; % Sampling frequency (Hz)
t = 0:1/fs:1; % Time vector
f0 = 100; % Transmit frequency (Hz)
s = cos(2*pi*f0*t); % Transmit signal

% Simulate a received signal with a target
target_delay = 0.2; % Target delay in seconds
target_amplitude = 0.8; % Target reflection coefficient
received_signal = s + target_amplitude * circshift(s, round(target_delay * fs));

% Matched filtering for target detection
corr_result = xcorr(received_signal, fliplr(s));
figure;
plot(corr_result);
title('Cross-correlation with transmitted signal');

% Target detection threshold
threshold = max(corr_result) * 0.9;

% Find target delay (range) and amplitude
[max_corr, max_idx] = max(corr_result);
target_detected = max_corr > threshold;
if target_detected
    target_range = max_idx / fs * 3e8 / 2; % Radar equation: range = (delay * speed_of_light) / 2
    fprintf('Target detected at a range of %.2f meters with amplitude %.2f\n', target_range, target_amplitude);
else
    fprintf('No target detected.\n');
end