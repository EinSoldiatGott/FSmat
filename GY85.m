clc;
close all;
% clear all;

%[BT,endian]=conectaIMU();

%HMC
figBarras=figure(1);
title('HMC');
maxHMC=int16 ([0,0,0]);
minHMC=int16 ([0,0,0]);

maxADX=int16 ([0,0,0]);
minADX=int16 ([0,0,0]);

maxITG=int16 ([0,0,0]);
minITG=int16 ([0,0,0]);

for i=1:100
    i
    subplot(1,3,1)
    [maxHMC,minHMC]=plotHMCxyz(BT,endian,maxHMC,minHMC);
      
    subplot(1,3,2)
    [maxADX,minADX]=plotADXxyz(BT,endian,maxADX,minADX);

    subplot(1,3,3)
    [maxITG,minITG]=plotITGxyz(BT,endian,maxITG,minITG);

    pause(.05);
end


%% Aceleración 3 ejes
figAceleracionXYZ=figure(2);

muestras=100;
LSB=0.00390625;
Ges=zeros(1,3);
alpha=0.01;

FgAnt=(zeros(1,3));
FgVector=(zeros(muestras,3));
FgFiltVector=(zeros(muestras,3));
pitch=(zeros(muestras,3));
roll=(zeros(muestras,3));

for i=1:1000    
%     raw=leeADXxyz(BT,endian);
    raw=([randn(),randn(),randn()].*(2^12))*LSB;
    Fg =raw.*LSB;
    FgVector(i,:)=Fg;
    FgAct=Fg * alpha + (FgAnt * (1.0-alpha));
    FgFiltVector(i,:)=FgAct;
    pitch(i,:)=atan2(FgFiltVector(i,1),(sqrt(FgFiltVector(i,2)^2+FgFiltVector(i,3)^2)));
    roll(i,:)=atan2(FgFiltVector(i,2),(sqrt(FgFiltVector(i,1)^2+FgFiltVector(i,3)^2)));
    %     pause(.01);
end

subplot(2,1,1)
plot(FgVector);

subplot(2,1,2)
plot(FgFiltVector);


% fclose(BT);