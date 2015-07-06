function [ BT,endian ] = conectaIMU()
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

    %%BT
    BT = Bluetooth('RNBT-A6BC',1);
    fopen(BT);
    
    %%Endian
    [str,maxsize,endian] = computer;
    
    end

