%%90 degrees rotation of an image
i=imread('C:\Users\hpl\Desktop\lena.jpg');
i=rgb2gray(i);
[r,c]=size(i);
j=zeros(c,r);
j=uint8(j)

for m=1:r
    for n=1:c
        j(n,m)=i(m,n);
    end
end

subplot(2,1,1)
imshow(i)
subplot(2,1,2)
imshow(j)