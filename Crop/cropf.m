l=imread('C:\Users\hpl\Desktop\lena.jpg');


[r, c ]= size(l);

m=input('enter x1 coordinate');
n=input('enter y1 coordinate');
o=input('enter x2 coordinate');
p=input('enter y2 coordinate');
%%
k=zeros((o-m),(p-n),3);
k=uint8(k);
%%
for i=m:o
    for j=n:p
       k((i+1-m),(j+1-n),:)=l(i,j,:);
            
    end
end       

imshow(k)
