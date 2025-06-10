xl = input('Enter the lower value of, xl=');
xu = input('Enter the upper value of, xu=');
elimit = 0.000001; xold = 0.0;

for i=1:100
    xr = (xl+xu)/2;
    if funcBi(xl)*funcBi(xr)>0
        xl = xr;
    elseif funcBi(xl)*funcBi(xr)<0
        xu = xr;
    else
        break
    end

    if abs((xr-xold)/xr)<=elimit
        break
    end
    xold = xr;
end

fprintf("The root is %f\n", xr);
fprintf("Required number of iterations is %d", i);