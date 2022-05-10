clear
clc

%1.1
ellipse = imread('ellipse.bmp'); 

% plot(ellipse(100,130:175));
% plot (ellipse(100,:)); 

% num=no of projections, rota=rotation angle
num = 720;
rota = 180/num; 
theta = 0:rota:180-rota;
[R,xp] = radon (ellipse, theta);

%display sinogram
RR = flipud (R');
imshow(RR,[]);


