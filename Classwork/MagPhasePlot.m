clear
clc
clf
w = linspace(-3*pi, 3*pi, 1000);
X = (1 - exp(-1i*w)) ./ (1 + 0.8*exp(-1i*w));

YL = [-10 20];
%% 
% *Plot Magnitude and Phase shift*

figure(1);
A = subplot(2,1,1);
line(w, abs(X), 'Color', 'r');
set(A, 'XLim', [w(1) w(end)], 'YLim', YL);
title('Magnitude Spectrum')
grid on

A = subplot(2,1,2);
line(w, angle(X), 'Color', 'b');
set(A, 'XLim', [w(1) w(end)], 'YLim', [-pi pi]);
title('Phase Spectrum')
grid on