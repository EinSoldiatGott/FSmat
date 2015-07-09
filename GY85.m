clc;
close all;

%[BT,endian]=conectaIMU();

%HMC
figBarras=figure(1);
title('HMC');
maxHMC=int16 ([0,0,0]);
minHMC=int16 ([0,0,0]);

maxADX=int16 ([0,0,0]);
minADX=int16 ([0,0,0]);
for i=1:1000
    i
    subplot(1,3,1)
    [maxHMC,minHMC]=plotHMCxyz(BT,endian,maxHMC,minHMC);
    xlabel('Orientación');
    
    subplot(1,3,2)
    [maxADX,minADX]=plotADXxyz(BT,endian,maxADX,minADX);
    xlabel('Aceleración');
    pause(.05);
end

% fclose(BT);