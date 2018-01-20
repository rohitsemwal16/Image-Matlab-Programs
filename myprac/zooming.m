clc();
A=imread('C:\Users\hpl\Desktop\lena.jpg');
imshow(A);
A=double(A(:,:,1));
[m,n]=size(A);
s=2;
M=m*s;
N=n*s;
B=zeros(M,N);
for i=0:M-1
    for j=0:N-1
        x=floor(i/s)+1;
        y=floor(j/s)+1;
        B(i+1,j+1)=A(x,y);
    end
end
%%imwrite(B,'zoom.jpg');
B=uint8(B);
figure,imshow(B);