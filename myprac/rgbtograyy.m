img=imread('F:\SLIDES\Semester6\Image\Lab\101403158\myprac\color.jpg');
imshow(img)
red=img(:,:,1);
green=img(:,:,2);
blue=img(:,:,3);

grey1=(red+blue+green)/3;
grey2=(red*.3)+(green*.59)+(blue*.11);

subplot(2,1,1)
imshow(grey1);
subplot(2,1,2)
imshow(grey2);
