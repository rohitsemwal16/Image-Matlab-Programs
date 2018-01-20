A=imread('C:\Users\hpl\Desktop\lena.jpg');
[m,n]=size(A);
A=double(A);
g = input('Enter gamma value');
for i=1:m
    for j=1:n
        A(i,j)=A(i,j)^g;
    end
end
A=mat2gray(A);
imshow(A);