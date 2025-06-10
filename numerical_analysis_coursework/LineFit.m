function [a, r]= LineFit(x,y)
x = x(:);
y = y(:);
sx = sum(x); 
sx2 =sum(x.^2); 
sy=sum(y); 
sxy=sum(x.*y);
sy2 = sum(y.^2);
n = length(x);
a(1) = (n*sxy - sx*sy)/(n*sx2 - sx^2);
a(2) = sy/n - a(1)*sx/n;
r = (n*sxy - sx*sy)/sqrt(n*sx2 - sx^2)/sqrt(n*sy2-sy^2);
xp = linspace(min(x), max(x), 2);
yp = a(1)*xp + a(2);
plot(x, y, 'o', xp, yp);
title("Linear Regression");
disp(a);
disp(r);
