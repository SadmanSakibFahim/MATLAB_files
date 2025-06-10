h = 0.25; 
t = 0:h:10;
N = 10/h;
y = zeros(N+1,1);
y(1) = 100;
k = zeros(4,1);


for j=1:N %finding values of Ks for each x,y
    k(1)=g(t(j), y(j));
    k(2)=g(t(j)+1/2*h, y(j)+1/2*h*k(1));
    k(3)=g(t(j)+1/2*h, y(j)+1/2*h*k(2));
    k(4)=g(t(j)+h, y(j)+h*k(3));
    y(j+1)=y(j)+(h/6)*(k(1)+2*k(2)+2*k(3)+k(4));
end

disp(y);
plot(t, y);