img=imread('C:\Users\hpl\Desktop\lena.jpg');
img=rgb2gray(img);
[r,c,p ]=size(img);
size(img);

filter = ones(3,3)/10;
filter(13,13)= 2/10;
im3 =img;
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

img=uint8(img);
figure;
subplot(2,1,1)
imshow(img)
im3=uint8(im3);
subplot(2,1,2)
imshow(im3)
        
 