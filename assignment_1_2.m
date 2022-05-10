%Assignment 1.2

%import image
sino2 = imread('sino2.bmp'); 

%image backprojection
sino2_flip = flipud(sino2');
sino2_1=iradon(sino2_flip,theta,'linear','Ram-Lak',1,512);
imshow(sino2_1,[])

%internet code for finding the brightest spot in an image
[~,idx] = max(sino2(:)); 
[row,col] = ind2sub(size(S),idx);

nrows = size(sino2,1);
rotation = 180-((row)/(nrows))*180