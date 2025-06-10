xl = input('Enter the lower value of, xl=');
xu = input('Enter the upper value of, xu=');
elimit = 0.000001; xold = 0.0;

for i=1:100
    xr = xu - funcF(xu)*(xl-xu)/(funcF(xl)-funcF(xu));
    if funcF(xl)*funcF(xr)>0
        xl = xr;
    elseif funcF(xl)*funcF(xr)<0
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