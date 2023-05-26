function yc=stegwavelet(cImg1Uint8, cImg2Uint8)

% note this function runs differently with different images; it is designed
% for the specific images I chose for my project

% first run cImg1Uint8= imread("cover.jpg"); and cImg2Uint8= imread("hidden.png");

cImg1=im2double(cImg1Uint8);
gImg1=im2gray(cImg1);

cImg2=im2double(cImg2Uint8);
gImg2=im2gray(cImg2);

[D,S]=waveletdec2D(gImg2,3,Lo_D, Hi_D);
D1=D(1:length(D)-S(legnth(S)));


imshow(gImg1);
[C,L]=waveletdec2D(gImg1,6,Lo_D, Hi_D);
CC=[C(1:length(C)-(length(D)-S(legnth(S)))) D1];
yc=waveletrec2D(cc,L,Lo_R, Hi_R);
imshow(yc)