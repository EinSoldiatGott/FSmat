function [maxADX,minADX] = plotADXxyz(BT,endian,maxADX,minADX)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
    [xyzADX]=leeADXxyz(BT,endian);

    maxADX=max(maxADX,xyzADX);
    minADX=min(minADX,xyzADX);    
    bar(maxADX,'r'); hold on;
    bar(minADX,'g'); hold on;
    bar(xyzADX,'b'); hold off;  
    set(gca,'XTickLabel',{'x','y','z'})
    xlabel('Aceleración');
end

