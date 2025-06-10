%Gaussian Elimination

function [] = gaussem(A, C) 
[m, n] = size(A);
if m~=n
    disp("The matrix must be square");
else 
    Aug = [A C];
    disp("The augmented matrix is:");
    disp(Aug);
end

%Forward Elimination
for k=1:n-1 %number of iteration or the pivot row
    for i=k+1:n %number of rows which will be modified
        factor = Aug(i,k)/Aug(k,k);
        for j=k:n+1 %column iterator for subtracting corresponding column elements say a25 = a25 - factor*a15
            Aug(i,j)=Aug(i,j)-factor*Aug(k,j);
        end
    end
end
U = Aug;

disp("The corresponding upper triangular matrix:");
disp(U);

%backward substitution
x = zeros(n,1);
x(n)=U(n,n+1)/U(n,n);
sum=0;
for i=n-1:-1:1 %iteration for row before last to first row
    for j=i+1:n %iterator for summing columns with already found values of x
        sum = sum+U(i,j)*x(j);
    end
    x(i) = (1/U(i,i))*(U(i, n+1)-sum);
    sum=0;
end
X = U;
disp("Solution is {X}:");
disp(X);
end 

