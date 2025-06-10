function [a] = PolyFit(x, y, i)
a = polyfit(x,y,i);
xp = linspace(min(x), max(x));
yp = 0;
for k = 1:i+1
    yp = yp + a(k)*xp.^(i+1 -k);
end
plot(x, y, 'square');
hold on
plot(xp, yp);
disp(a);