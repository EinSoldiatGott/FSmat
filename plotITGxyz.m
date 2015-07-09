function [maxITG,minITG] = plotITGxyz(BT,endian,maxITG,minITG)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
    [xyzITG]=leeITGxyz(BT,endian);
    maxITG=max(maxITG,xyzITG);
    minITG=min(minITG,xyzITG);    
    bar(maxITG,'r'); hold on;
    bar(minITG,'g'); hold on;
    bar(xyzITG,'b'); hold off;  
    set(gca,'XTickLabel',{'x','y','z'})
    xlabel('Giro');

end

