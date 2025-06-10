function numdiff(x)
y = x.^3 + 2*x.^2 - x +3;
diffX = diff(x);
diffY = diff(y);
dydx_num = diffY./diffX;
dydx_exact = 3*x.^2 + 4*x -1;
plot(x, [dydx_num,NaN]);
hold on
plot(x, dydx_exact);
title('dy/dx')
legend('numerical solution', 'analytical solution');