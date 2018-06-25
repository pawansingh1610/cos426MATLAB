function img = compose()
current = pwd;
cd input
mask = imread('comp_mask.jpg');
back = imread('comp_background.jpg');
front = imread('comp_foreground.jpg');
mask = abs(255-mask);
maskp = (255-mask);
newfront = imadd(front,mask);
newback = imadd(back,maskp);
newfront= 255-newfront;
newback= 255-newback;
img = imadd(newfront,newback);
imgnew = 255-img;
imshow(imgnew);
cd (current)
cd output
imwrite(imgnew,'composite.jpg');
%writing image
cd (current)