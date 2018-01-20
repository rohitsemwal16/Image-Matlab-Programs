im1=zeros(8,8);
im1(1,5)=1;
im1(1,6)=1;
im1(1,7)=1;
im1(2,5)=1;
im1(2,6)=1;
im1(2,7)=1;
im1(3,5)=1;
im1(3,6)=1;
im1(3,7)=1;
im1(4,4)=1;
im1(4,5)=1;
im1(5,2)=1;
im1(5,3)=1;
im1(5,4)=1;
im1(6,2)=1;
im1(6,3)=1;
im1(6,4)=1;
im1(7,2)=1;
im1(7,3)=1;
im1(7,4)=1;
im3=zeros(10,10);
for i=2:9
    for j=2:9
        im3(i,j)=im1(i-1,j-1);
    end
end
im2=zeros(8,8);
im4=zeros(8,8);

for i=1:8
    for j=1:8
        if((im3(i+1,j)==1)||(im3(i+1,j+2)==1)&&(im3(i,j+1)==1)|| (im3(i+2,j+1)==1) || (im3(i+1,j+1)==1))
            im2(i,j)=1;
        else
            im2(i,j)=0;
        end
    end
end
for i=2:9
    for j=2:9
        im3(i,j)=im2(i-1,j-1);
    end
end
for i=1:8
    for j=1:8
        if((im3(i+1,j)==1)&&(im3(i+1,j+2)==1)&&(im3(i,j+1)==1)&& (im3(i+2,j+1)==1) && (im3(i+1,j+1)==1))
            im4(i,j)=1;
        else
            im4(i,j)=0;
        end
    end
end
subplot(1,3,1);
imshow(im1);
subplot(1,3,2);
imshow(im2);
subplot(1,3,3);
imshow(im4);