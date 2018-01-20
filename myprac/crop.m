img=imread('C:\Users\hpl\Desktop\lena.jpg');
imshow(img);
[r,c]=size(img);
x1=input('enter x1');
x2=input('enter x2');
y1=input('enter y1');
y2=input('enter y2');

m=x2-x1;
n=y2-y1;
imgc=zeros(m,n);
imgc=uint8(imgc);
for i=x1:x2
    for j=y1:y2
        imgc(i-x1+1,j-y1+1)=img(i,j);
    end
end
figure;
subplot(1,2,1)
imshow(img);
subplot(1,2,2)
imshow(imgc);

