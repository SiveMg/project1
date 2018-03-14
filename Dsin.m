format long;
x = pi/3;

for i = 1:20
    h = 10^(-i);
    q = (sin(x+h) - sin(x))/h;
    fprintf("the value of  q(x,k) for k = %2.0f  is  %4.15f \n", i, q);
end
fprintf("The value of cos(x) = 1/2\n This demonstrates loss of significance");
