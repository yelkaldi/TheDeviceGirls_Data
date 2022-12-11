% edited from MATLAB segmenter code
% separates finger from background

function Imask = segmentImage(I) 

mask = zeros(size(I));  %create blank image with same size as I
mask(25:end-25,25:end-25) = 1;
maskedImage = activecontour(I,mask,300); %Segment image into foreground and background using active contours (snakes) region growing technique
Imask = I;
Imask(maskedImage == 0) = 0;
imshow(Imask)
title('Segmented Image, 300 Iterations')

end