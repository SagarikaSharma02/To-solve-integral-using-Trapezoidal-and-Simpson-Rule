%To solve a integral using simpson's 1/3 rule
f = inline('3*x^4 - x^3 + 12*x^2');
a = input('Enter the lower limit of the integral');
b = input('Enter the upper limit of the integral');
c = input('Enter the number of subintervals');
h = (b-a)/c;
x = a:h:b;
n = length(x);
sum = 0; %to initialise summation
for i = 2:(n-1)
    if rem((i-1),2)~=0
        sum = sum + f(a + (i-1)*h)*4;
    else
        sum = sum + f(a + (i-1)*h)*2;
    end
end
sum = (sum + f(a) + f(b))*(h/3);
disp('the solution is')
sum

