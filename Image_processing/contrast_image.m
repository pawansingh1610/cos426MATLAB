function img = contrast_image(input,value)
%% input is image in which the processing to be performed and vlue is the brightness 
current = pwd;
cd input
I = imread(input) ;
% reading the image
for i=1:size(I,1)
    for j=1:size(I,2)
        I1(i,j,1)=I(i,j,1)*abs(value);
        I1(i,j,2)=I(i,j,2)*abs(value);
        I1(i,j,3)=I(i,j,3)*abs(value);
    end
end
%changing the value of the image according to the contrast provided
if(value<0)
    I1 = imcomplement(I1);
end
imshow(I1) 
%showng the image
cd (current)
cd output
a='c_contrast_%0.1f%s' ;
j='.jpg';
str=sprintf(a,value,j);
% appending name of the file which vary accoring to the value of brightness
imwrite(I1,str,'jpg')
%writing image
cd (current)