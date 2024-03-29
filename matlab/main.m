%FRcal(x,fs);
ZR = zeros(9);
floor = [1,2,4,6,10,14,18,22,24];
i =1;
% for i = 1:9
    audiopath = 'D:\Assignments\WHX\Acoustics\act\Stems\';
    filename = 'CA3-normalized - Night '; 
    numberfloor = num2str(floor(i));
    tail = '.wav';
    fullpath = [audiopath, filename, numberfloor, tail]; 
    [x,fs] = audioread(fullpath);
    ZR(i) = ZRcal(x,fs);
% end

plot(ZR); 
cwt(x,fs);