function s = integ(a,b,n)
N = n+1;
x = linspace(a,b,N);
h = x(2)-x(1);
y = f(x);
i = 0;

if n==1
    i = i + h*(y(n)+y(n+1))/2;  
elseif n==2
    i = i + h*(y(1)+4*y(2)+y(3))/6;
elseif n==3
    i = i + h*(y(1)+3*y(2)+3*y(3)+y(4))*3/8;
elseif n==5
    i = i + h*(y(1)+4*y(2)+y(3))/6 + h*(y(3)+3*y(4)+3*y(5)+y(6))*3/8;
elseif n>3
    if rem(n,2)==0
        for k = 1:2:n-2
            i = i + h*(y(k)+4*y(k+1)+y(k+2))/6;
        end
    end
elseif n>6
    if rem(n,2)~=0
        for k = 1:2:((n-3)-2)
            i = i + h*(y(k)+4*y(k+1)+y(k+2))/6;
        end
        i = i + h*(y(n-2)+3*y(n-1)+3*y(n)+y(n+1))*3/8;
    end
end
disp(i);
s = i;
%end of 1





