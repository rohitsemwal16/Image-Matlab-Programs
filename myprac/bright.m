img=imread('color.jpg');
imshow(img)
x=input('enter brightness factor');
img1=img+x;
img2=img-x;

subplot(2,2,1)
imshow(img);
subplot(2,2,2)
imshow(img1);
subplot(2,2,3)
imshow(img2);
