function img = edge_detect(input)
%% input is image in which the processing to be performed and vlue is the brightness 
current = pwd;
cd input
image = imread(input) ; 
% reading the image
image = rgb2gray(image);
Iedge = edge(image,'canny');
%changing the image by the provided value
imshow(Iedge) ;
%showng the image
cd (current)
cd output
a='edgedetect%s' ;
j='.jpg';
str=sprintf(a,j);
% appending name of the file which vary accoring to the value of brightness
imwrite(Iedge,str,'jpg')
%writing image
cd (current)