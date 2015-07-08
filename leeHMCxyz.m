function [xyzHMC] = leeHMCxyz(BT,endian)
% Obtiene x,y,z en miligauss
%   Detailed explanation goes here

fwrite(BT,'M');
xyzHMC=fread(BT,3,'int16')';
% dec2hex(dato)

if endian=='L'
    xyzHMC=swapbytes(int16(xyzHMC));
end

end

