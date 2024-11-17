clc
clear all
part(a)
Gs=tf([1 0],[1 -1 1])
nyquist(Gs);
plot([-0.35 -0.35],[1.5 -1.5],'--or');
plot([-0.333 -0.333],[1.5 -1.5],'--or');
part(b)
Gs2=tf(1,[1 1 1])
nyquist(Gs2);
xlim([-1.5 1.5])
hold ON

plotcircle(0.333,0,1.07);
part(c)
Gs3=zpk([-1],[-2,-2,1],1);
nyquist(Gs3);
plotcircle(-0.166,0,0.084);
function plotcircle(x,y,r)
    rectangle('Position',[x-r,y-r,2*r,2*r],'Curvature',[1,1],'EdgeColor','m')
end