img=imread('lena.jpg');
imshow(img)
img=rgb2gray(img)
[r,c]=size(img);
imgf=zeros(c,r);
imgf=uint8(imgf);
%%flip 90degrees

for i=1:r
    for j=1:c
        imgf(j,i)=img(i,j);
    end
end
imshow(imgf);

%%mirror vertical
imgmv=zeros(r,c);
imgmv=uint8(imgmv);
for i=1:r
    for j=1:c
        imgmv(r-i+1,j)=img(i,j);
    end
end

%%mirror horozontal
imgmh=zeros(r,c);
imgmh=uint8(imgmh);
for i=1:r
    for j=1:c
        imgmh(i,c-j+1)=img(i,j);
    end
end
figure;
subplot(2,2,1)
imshow(img);
subplot(2,2,2)
imshow(imgf);
subplot(2,2,3)
imshow(imgmv);
subplot(2,2,4)
imshow(imgmh);
