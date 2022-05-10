%2

clear
clc

%1.1
p = imread('phantom.bmp'); 

% plot(ellipse(100,130:175));
% plot (ellipse(100,:)); 

% num=no of projections, rota=rotation angle
num = 720;
rota = 180/num; 
theta = 0:rota:180-rota;
[R,xp] = radon (p, theta);

%display sinogram
% RR = flipud (R');
% imshow(RR,[]);

% computing the reconstructed image with linear interpolation, Ram-Lak filter,
% frequency_scaling = 1, size = 512;
Q=iradon(R,theta,'linear','Ram-Lak',1,512);
% saving the reconstructed image (Q)
imwrite(uint8(Q),'720proj.bmp')
% calculate SNR with reference to the test image
QQ=uint8(Q);
SNR=10*log10(sum(p(:).^2)/sum((p(:)-QQ(:)).^2));
SNR
% displaying an image
% figure();
% imshow(p,[]) % show loaded image
figure();
imshow(Q,[]) % show reconstructed image


% imshow(p,[]);
% improfile
