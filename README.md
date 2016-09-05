# LesionHeatMap
Code to generate Lesion HeatMaps
% This code is used to generate a heat map of lesions in different animals
% mapped to specific atlas stereotactic location
%Input data include the atlas image which are blank images of the Paxinos
%brain atlas that have regions margins but no other annotations (for beter
%visibility of lesion).
%individual animal images are the same atlas images but with the lesion
%mapped in a different color (red for the purpose of this code). 

%Output of the code is a heat map of the atlas image with the frequency of
%lesion at each pixel location. Image can be exported from Matlab and used
%for display.
