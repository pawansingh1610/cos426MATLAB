function img = blur(input,value)
%% input is image in which the processing to be performed and vlue is the brightness 
current = pwd;
cd input
image = imread(input) ; 
% reading the image
Iblur = imgaussfilt(image,value);
%changing the image by the provided value
imshow(Iblur) ;
%showng the image
cd (current)
cd output
     a='blur_%d%s' ;

a='blur_%d%s' ;
j='.jpg';
str=sprintf(a,value,j);
% appending name of the file which vary accoring to the value of brightness
imwrite(Iblur,str,'jpg')
%writing image
cd (current)