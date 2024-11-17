close all;
clear;
clc;

w=0:0.0001:10;
siz=size(w);
i=ones(1,siz(2));
%wRe = (0.1*w.^2)./((i-w.^2).^2+0.1^2*w.^2);
%Im = (w.*(i-w.^2))./((i-w.^2).^2+0.1^2*w.^2);

%wRe = (i-w.^2)./((i-w.^2).^2+w.^2);
%Im = -w.^2./((i-w.^2).^2+w.^2);

 %wRe = (0.1*i-w.^2)./((0.1*i-w.^2).^2+w.^2);
 %Im = -w.^2./((0.1*i-w.^2).^2+w.^2);

wRe = ((0.1*i-3*w.^2)+w.*(4.1*w-w.^3))./((0.1*i-3*w.^2).^2+(4.1*w-w.^3).^2);
Im = w.*(w.*(0.1*i-3*w.^2)-(4.1*w-w.^3))./((0.1*i-3*w.^2).^2+(4.1*w-w.^3).^2);

plot(wRe,Im);
xlabel('Re{G(jw)}');
ylabel('wIm{G(jw)}');
%title('Popov plot of G(s)');
title('Popov plot of G̃(s)');