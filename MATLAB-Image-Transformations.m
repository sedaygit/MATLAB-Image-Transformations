clear all
imGray=imread("139.jpg");
imshow(imGray);

%Use rgb2gray() method to 
%convert the 24-bit image to a gray scale.
%1
GrayScale=rgb2gray(imGray);
figure
imshow(GrayScale);

%Rotate the image 75 degrees using the “bilinear” interpolation. 
% Use imrotate() method
%2
imRot=imrotate(GrayScale,75,"bilinear");
figure
imshow(imRot);

%Scale the output image by factor "0.25”. 
% Use imresize() method.
%3
imRes=imresize(GrayScale,0.25);
figure
imshow(imRes);

%Apply the histogram equalization operation to the output image of Step 3. 
% Use histeq() method.
%4
imH=histeq(imRes);
figure
imshow(imH);
