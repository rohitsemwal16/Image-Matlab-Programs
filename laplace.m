img=imread('C:\Users\hpl\Desktop\lena.jpg');
img=rgb2gray(img);
[r,c,p ]=size(img);
size(img);

filter = ones(3,3);
filter1(1,1)=0;  filter1(1,2)=1;  filter1(1,3)=0;
filter1(2,1)=1;  filter1(2,2)=-4;  filter1(2,3)=1;
filter1(3,1)=0;  filter1(3,2)=1;  filter1(3,3)=0;

filter(1,1)=1;  filter(1,2)=1;  filter(1,3)=1;
filter(2,1)=1;  filter(2,2)=-8;  filter(2,3)=1;
filter(3,1)=1;  filter(3,2)=1;  filter(3,3)=1;
im3 =img;
im4=img;
img=double(img);
im3=double(im3);
zz=0;

for a=3:r-2
    for b=3:c-2
        zz=0;
        for i=1:3
            for j=1:3
                zz = zz+filter(i,j)*img(a-3+i,b-3+j) ;                
            end
        end       
        im3(a,b)=zz;        
    end
end

zz=0;
for a=3:r-2
    for b=3:c-2
        zz=0;
        for i=1:3
            for j=1:3
                zz = zz+filter1(i,j)*img(a-3+i,b-3+j) ;                
            end
        end       
        im4(a,b)=zz;        
    end
end



imgf = img-im3;
im4=double(im4);
imgf2= img-im4;

img=uint8(img);
figure;
subplot(2,2,1)
imshow(img)
im3=uint8(im4);
subplot(2,2,2)
imshow(im3)
subplot(2,2,3)
imshow(uint8(imgf))
subplot(2,2,4)
imshow(uint8(imgf2))
        
 