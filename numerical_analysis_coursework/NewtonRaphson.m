x1 = 1.0; elimit = 0.0001;
while funcNRd(x1)~= 0
x2 = x1 - funcNR(x1) / funcNRd(x1);
if abs((x2 - x1) / x2) <= elimit
break
elseif funcNR(x2)==0
break
end
x1 = x2;
end
disp('root is:');
disp(x2);