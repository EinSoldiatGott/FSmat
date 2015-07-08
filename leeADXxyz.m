function [xyzADX] = leeADXxyz(BT,endian)
% Obtiene x,y,z en miligauss
%   Detailed explanation goes here

fwrite(BT,'A');
xyzADX=fread(BT,3,'int16')';

if endian=='L'
    xyzADX=int16(xyzADX);
else
    xyzADX=swapbytes(int16(xyzADX));
end
end

