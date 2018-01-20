%horizontally
img=imread('C:\Users\hpl\Desktop\lena.jpg');
img=rgb2gray(img);
[r,c]=size(img);
img1=zeros(r,c);
img1=uint8(img1);
for i=1:r
    for j=1:c
        img1(r-i+1,j)=img(i,j);
    end
end
subplot(2,1,1)
imshow(img)
subplot(2,1,2)
imshow(img1)