function meanRoughness = ZRcal (audioIn, fs)

roughness = acousticRoughness(audioIn,fs);
meanRoughness = mean(roughness);
displayOutput = ['Average computed value of acoustic roughness is ',...
    num2str(meanRoughness),' aspers.'];
disp(displayOutput);

end