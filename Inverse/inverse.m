i=imread('C:\Users\hpl\Desktop\color.jpg');
figure,imshow(i);
%i=rgb2gray(i);
[r,c]=size(i);
j = i;
for m=1:r
    for n=1:400
        j(m,n,1)=255-i(m,n,1);
        j(m,n,2)=255-i(m,n,2);
        j(m,n,3)=255-i(m,n,3);
    end
end
%%
figure,imshow(j);
%%