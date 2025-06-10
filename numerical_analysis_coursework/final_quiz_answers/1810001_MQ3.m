inte = zeros(1,15);
j = 1:15;
for i = 1:15
    inte(i) = integ(0, 2, i);
end
plot(j, inte);

