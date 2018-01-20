i=imread('C:\Users\Sem Lab\Desktop\tiger.jpg');

red=i(:,:,1);
green=i(:,:,2);
blue=i(:,:,3);
greyimage1=(0.3*red)+(0.59*green)+(0.11*blue);
greyimage2=(red+blue+green)/3;
subplot(2,2,1)
imshow(greyimage)
subplot(2,2,2)
imshow(i)
subplot(2,2,3)
imshow(greyimage2)








