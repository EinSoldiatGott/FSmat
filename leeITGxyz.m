function [xyzITG] = leeITGxyz(BT,endian)
% Obtiene x,y,z en miligauss
%   Detailed explanation goes here

fwrite(BT,'G');
xyzITG=fread(BT,3,'int16')';
% dec2hex(dato)
if endian=='L'
    xyzITG=swapbytes(int16(xyzITG));
end

end

