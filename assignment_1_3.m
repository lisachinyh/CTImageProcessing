%Assignment 1.3

%import image
sino3 = imread('sino3.bmp'); 

%internet code for finding the brightest spot in an image
% [~,idx] = max(sino3(:)); 
% [row,col] = ind2sub(size(S),idx);

% nrows = size(sino3,1);
% rotation = 180-((row)/(nrows))*180;

%image backprojection
sino3_flip = flipud(sino3');
sino3_1=iradon(sino3_flip,theta,'linear','Ram-Lak',1,512);
imshow(sino3_1,[]);

%brightest spot in backprojection 
[~,idx] = max(sino3_1(:)); 
[row,col] = ind2sub(size(S),idx);

%determining x and y
xo = size(sino3_1,2)/2; %determining point of origin relative to backprojection
yo = size(sino3_1,1)/2; 
x0 = col-xo;
y0 = row-yo;

[x0,y0]