function [maxHMC,minHMC] = plotHMCxyz(BT,endian,maxHMC,minHMC)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
    [xyzHMC]=leeHMCxyz(BT,endian);
    maxHMC=max(maxHMC,xyzHMC);
    minHMC=min(minHMC,xyzHMC);    
    bar(maxHMC,'r'); hold on;
    bar(minHMC,'g'); hold on;
    bar(xyzHMC,'b'); hold off;  
    set(gca,'XTickLabel',{'x','y','z'})
end

