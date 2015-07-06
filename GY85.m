clc;
close all;

%[BT,endian]=conectaIMU();

%HMC
figBarras=figure(1);
maxHMC=int16 ([0,0,0]);
minHMC=int16 ([0,0,0]);
for i=1:1000
    i
    subplot(1,3,1)
    [xHMX,yHMC,zHMC]=leeHMCxyz(BT,endian);
    xyzHMC=[xHMX,yHMC,zHMC];
    maxHMC=max(maxHMC,xyzHMC);
    minHMC=min(minHMC,xyzHMC);    
    bar(maxHMC,'r'); hold on;
    bar(minHMC,'g'); hold on;
    bar(xyzHMC,'b'); hold off;
    
    pause(.05);
end

% fclose(BT);