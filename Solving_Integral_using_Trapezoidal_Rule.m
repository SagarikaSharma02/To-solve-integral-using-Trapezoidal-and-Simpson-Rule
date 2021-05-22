%To solve a integral using trapezoidal rule
f = inline('x^3*cos(x)');
a = input('enter the lower limit of the integral');
b = input('enter the upper limit of the integral');
c = input('enter the number of subintervals');
h = (b-a)/c;
x = a:h:b;
n = length(x);
sum = 0; %to initialise summation
for i = 2:(n-1)
    sum = sum + f(a + i*h)*2;
end
sum = (sum + f(a) + f(b))*(h/2);
disp('the solution is')
sum

    
