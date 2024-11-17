clear;
clc;
w=0:0.0001:10;%Frequency
siz=size(w);
i=ones(1,siz(2));
%part(a)
Re = (0.1*w.^2)./((i-w.^2).^2+0.01*w.^2);
wIm = (w.*(i-w.^2))./((i-w.^2).^2+0.01*w.^2);
title('Popov plot of G(s)');
%part(b)
Re = (i-w.^2)./((i-w.^2).^2+0.01*w.^2);
wIm = (w.^2)./((i-w.^2).^2+0.01*w.^2);
plot(Re,wIm);
xlabel('Re[G(jw)]');
ylabel('wIm[G(jw)]');