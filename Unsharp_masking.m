clear all
close all

I=imread('peppers_gray.bmp');
subplot(221)
imshow(I)
title('Original Image')

%Gaussian Low pass Filter
Lp=1/9*[1 1 1 ; 1 1 1; 1 1 1];

I1=imfilter(I,Lp);
subplot(222)
imshow(I1)
title('Image after Low Pass Filtering')

% Edge Detection(High pass filtering)
I2=I-I1;
subplot(223)
imshow(I2)
title('High pass filtering')

% Unsharp masking
lambda=3
I3=I+lambda*I2;
subplot(224)
imshow(I3)
title('Unsharp Masking')

figure(2)
subplot(131)
imshow(I)
title('Original Image')

%Laplacian
L=[1 1 1;1 -8 1; 1 1 1  ];

%Laplacian Edge Detection
I4=imfilter(I,L);
subplot(132)
imshow(I4)
title('Laplacian Edge Detection')

% Unsharp masking
lambda=0.3
I5=I+lambda*I4;
subplot(133)
imshow(I5)
title('Unsharp Masking')
