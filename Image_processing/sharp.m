function img = sharp(input)
%% input is image in which the processing to be performed and vlue is the brightness 
current = pwd;
cd input
image = imread(input) ; 
% reading the image
Isharp = imsharpen(image);
%changing the image by the provided value
imshow(Isharp) ;
%showng the image
cd (current)
cd output
a='sharpen%s' ;
j='.jpg';
str=sprintf(a,j);
% appending name of the file which vary accoring to the value of brightness
imwrite(Isharp,str,'jpg')
%writing image
cd (current)