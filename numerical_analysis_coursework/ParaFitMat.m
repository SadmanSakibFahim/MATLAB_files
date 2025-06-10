function [a] = ParaFitMat(x, y)
a = polyfit(x,y,2);
xp = linspace(min(x), max(x));
yp = a(3) + a(2)*xp + a(1)*(xp.^2);
plot(x, y, 'o');
hold on
plot(xp, yp);
disp(a);