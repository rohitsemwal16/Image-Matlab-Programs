i=imread('lena.jpg');


figure,imshow(im);
im1=zeros(size(im)+2);
im2=zeros(size(im));
c=size(im);
for i=1:c(1)
    for j=1:c(2)
        im1(i+1,j+1)=im(i,j);
    end
end
for i=2:c(1)
    for j=2:c(2)
        if((im1(i,j-1)==1)&&(im1(i,j+1)==1)&&(im1(i-1,j)==1)&& (im1(i+1,j)==1))
            im2(i,j)=255;
        else
            im2(i,j)=0;
        end
    end
end
subplot(1,2,2);
imshow(uint8(im2));