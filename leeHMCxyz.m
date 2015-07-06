function [xHMC,yHMC,zHMC] = leeHMCxyz(BT,endian)
% Obtiene x,y,z en miligauss
%   Detailed explanation goes here

fwrite(BT,'M');
dato=fread(BT,3,'int16');
% dec2hex(dato)

if endian=='L'
    dato=swapbytes(int16(dato));
end

xHMC=dato(1);
yHMC=dato(2);
zHMC=dato(3);

end

