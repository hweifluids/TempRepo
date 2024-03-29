function FRcal (x,fs)

% 计算音频信号的DFT
X = fft(x);

% 计算频率轴
N = length(x); % 信号长度
f = (0:N-1)*(fs/N); % 频率范围

% 计算幅度谱，并转换为分贝 (dB)
magnitude_dB = 20*log10(abs(X));

% 应用低通滤波器（移动平均滤波器）
windowSize = 100; % 定义滑动窗口大小
b = (1/windowSize)*ones(1,windowSize);
a = 1;
smoothed_magnitude_dB = filter(b, a, magnitude_dB);

% 绘制频谱图
figure('Position', [100, 100, 400, 200]);
semilogx(f, smoothed_magnitude_dB,'LineWidth',2);
hold off;
%title('Frequency Spectrum with Low-pass Filtering');
xlabel('Frequency (Hz)');
ylabel('Standarlized Amplitude (dB)');
xlim([10 20000]); % 设置横轴范围为20Hz到20kHz
ylim([-50, 100]); % 自动调整纵轴范围
grid on; % 添加网格线以便于观察

end