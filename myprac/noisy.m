img=imread('lena.jpg');
n_img = imnoise(img,'salt & pepper',0.1);
n_img1 = imnoise(img,'salt & pepper',0.5);


subplot(2,2,1)
imshow(img);
subplot(2,2,2)
imshow(n_img)
subplot(2,2,3)
imshow(n_img1)