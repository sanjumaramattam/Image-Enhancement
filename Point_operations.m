 close all
 clear all
 
 I=imread('peppers_gray.bmp')
 subplot(131)
 imshow(I)
 title('Original Image')
 
 %Negative Image
 neg_I=255-I;
 subplot(232)
 imshow(neg_I);
 title('Negative Image')
 
 %Log Transformation
 c=40
 log_I=c.*log(double(I+1));
 subplot(233)
 imshow(uint8(log_I));
 title('Log Transformation')
 
 %Nth Power Transformation(Gamma Correction)
 n=1.2
 npower_I=double(I).^n;
 subplot(235)
 imshow(uint8(npower_I));
 title('n^{th} Power Transformation')
 
 %Nth Root Transformation(Gamma Correction)
 n=1.2  
 nroot_I=double(I).^(1/n);
 figure(1)
 subplot(236)
 imshow(uint8(nroot_I));
 title('n^{th} Root Transformation')