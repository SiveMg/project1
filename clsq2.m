%%g16m3755
%%Sivenathi Mgudlwa
clear();
clc();
e = exp(1);

A = [2/3 0;0 2];
b = [(2*(e^-1));(e^2 - 1)/e];

a = b\A;

a0 = a(1);
a1 = a(2);

x =(-1):.01:1;
y = e.^x;
z = a1*x+a0;
plot(x,y,x,z);
legend('g', 'approx');