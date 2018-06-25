A = padarray(A, size(C)-size(A), ...
    'circular', 'post');
figure(2)
imshow(A)

alpha = 0.9; % this can be dynamically adjusted by a slider
O1 = C + A*alpha; % overlay
figure(3)
imshow(O1)
O2 = C*(1-alpha) + A*alpha; % blend
figure(4)
imshow(O2)