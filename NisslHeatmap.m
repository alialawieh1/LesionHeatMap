function [ FinalHeat ] = NisslHeatmap( ImageListCellArray, atlasimage )
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

atlasimage2=im2bw(atlasimage);
FinalHeat=double(atlasimage2);

for i=1:length(ImageListCellArray)
    Itemp=imread(ImageListCellArray{i,1});
    [R1 C1]=find(Itemp(:,:,1)>240 & Itemp(:,:,2)<20);
    for j=1:length(R1)
    FinalHeat(R1(j),C1(j))=FinalHeat(R1(j),C1(j))+1;
    end
    
end

end

