clear all
close all

I=imread('peppers_gray.bmp');

%Plot the Original Image
subplot(321)
imshow(I)
title('Original Image')
[r,c]=size(I);

%%Histogram Plot of Original Image
h=imhist(I)
subplot(322)
stem(h)
title('Histogram of Original Image')

%Histogram Equalization
s=r*c;
for i=2:size(h)
    h(i)=h(i)+h(i-1);
end
h=h./s;
h1=((h-min(h))/(1-min(h))*255)+0.5;
histeq_image=zeros(r,c);
for i=1:r
    for j=1:c
        %if(I(i,j)==0)
         %  histeq_image(i,j)=0;
        %else
        histeq_image(i,j)=h1(I(i,j)+1);
        end
end
%Histogram Plot of Image after histogram Equalization
h2=imhist(uint8(histeq_image))
subplot(324)
stem(h2)
title('Histogram of  Image after Histogram Equalization')

%Plot the Output Image
subplot(323)
imshow(uint8(histeq_image))
title('Image after Histogram Equalization')

subplot(325)
imshow(uint8(histeq(I)))
title('Image after Histogram Equalization (Using histeq() function)')

%subplot(326)
%I=histeq(I)%h=imhist(I)
%stem(h)
%title('Image after Histogram Equalization')
