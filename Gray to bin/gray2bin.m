i=imread('C:\Users\Sem Lab\Desktop\lena.bmp');
i = rgb2gray(i);
img=im2bw(i);

[r,c]= size(i);
for a= 1:r
    for b= 1:c
        if(i(a,b)>127)
            i(a,b)=255;
        else
            i(a,b)=0;
        end
    end
end
%imshow(single(i));

  a = logical(i); %reading images as array to variable 'a' & 'b'. 
    b = img; 
    c = corr2(a,b);           %finding the correlation btwn two images 
    if c==1 
    disp('The images are same')%output display 
    else 
    disp('the images are not same') 
    end; 