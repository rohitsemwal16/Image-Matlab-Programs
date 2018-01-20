img=imread('C:\Users\hpl\Desktop\lena.jpg');
img=rgb2gray(img);
[X,Y ]=size(img);

for k=1:X
  for i=1:Y
    if img(i,k)>127
      img(i,k)=1;
    else
      img(i,k)=0;
    end
  end
end

imshow(single(img))