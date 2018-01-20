img=imread('lena.jpg');
imshow(img);
img=rgb2gray(img);

[r,c]=size(img);
img1=zeros(r,c);
img1=uint8(img1);
for i=1:r
    for j=1:c
        if(img(i,j)>127)
            img1(i,j)=0;
        else
            img1(i,j)=1;
        end
     end
end
    
subplot(2,1,1)
imshow(img);
subplot(2,1,2)
imshow(single(img1));