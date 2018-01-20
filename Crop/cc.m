img=imshow('C:\Users\hpl\Desktop\lena.jpg');
%%imshow(img);
[r,c]=size(img);
x1=input('enter x1');
x2=input('enter x2');
y1=input('enter y1');
y2=input('enter y2');

m=x2-x1;
n=y2-y1;
imgc=zeros(m,n);
imgc=uint8(imgc);
for i=1:m
    for j=1:n
        if((i+x1)<r && (j+y1)<c) 
        imgc(i,j)=img(i+x1,j+y1);
        end
    end
end
figure;imshow(imgc);

