i=imread('C:\Users\hpl\Desktop\lena.jpg');
img1 = im2bw(i);

img2 = gray2ind(img1,2^7);
img3 = gray2ind(img1,2^6);
img4=gray2ind(img1,2^5);
img5=gray2ind(img1,2^4);
img6=gray2ind(img1,2^3);
img7=gray2ind(img1,2^2);
img8=gray2ind(img1,2^1);


subplot(4,2,1)
imshow(img1)
subplot(4,2,2)
imshow(img2)
subplot(4,2,3)
imshow(img3)
subplot(4,2,4)
imshow(img4)
subplot(4,2,5)
imshow(img5)
subplot(4,2,6)
imshow(img6)
subplot(4,2,7)
imshow(img7)
subplot(4,2,8)
imshow(img8)
