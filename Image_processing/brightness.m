function img = brightness(input,value)
%% input is image in which the processing to be performed and vlue is the brightness 
current = pwd;
cd input
I = imread(input) ; 
% reading the image
I1 = I*value ;
%changing the value of the brightness
imshow(I1) ;
%showng the image
cd (current)
cd output
a='princeton_small_brightness_%0.1f%s' ;
j='.jpg';
str=sprintf(a,value,j);
% appending name of the file which vary accoring to the value of brightness
imwrite(I1,str,'jpg')
%writing image
cd (current)