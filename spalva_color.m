function hsv_value=spalva_color(Im)
% im - vaizdas, nuskaitytas su imread
% bw - binarinis vaizdas (nurodo srit�, kurioje yra skai�iuojamas 
% spalvos vidutin� reik�m�)
% atsakymas hsv_value - spalva HSV skal�je
% 

% index=bw(bw>0);
% 
% R=im(:,:,1);
% meanR1=mean(mean(R(index)));
% 
% G=im(:,:,2);
% meanG=mean(mean(G(index)));
% 
% B=im(:,:,3);
% meanB=mean(mean(B(index)));
% 
% hsv_im=rgb2hsv(im);
% hsv=hsv_im(:,:,1);
% hsv_value=mean(mean(hsv(index)));



BW = im2bw(rgb2gray(Im),0.95);
BW = imfill(~BW,'holes');
BW = imopen(BW,strel('disk',12));


hsv_im=rgb2hsv(Im);
hsv=hsv_im(:,:,1);

hsv_value=mean(mean(hsv(BW)));
