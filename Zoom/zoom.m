clear;
s=imread('C:\Users\hpl\Desktop\lena.jpg');
j=rgb2gray(s);
m=rgb2gray(s);
n=rgb2gray(s);

[r ,c]=size(j);
z=3;
for i=1:r
    for k=1:c
        for p=z*i:z*i+z
            for q=z*k:z*k+z
                tmp(p,q)=j(i,k);
            end
        end
    end
end
%%
[r , c]=size(tmp);
y=2;
for i=1:y:r
    for k=1:y:c
        tmp1(1+(i-1)/y,1+(k-1)/y)=tmp(i,k);
    end
end

%%

figure,imshow(j);

figure,imshow(tmp);
%%figure,imshow(tmp1);