%%dlsq3
%%Least Squares approximation
%%Sivenathi Mgudlwa g16m3755
clc;
clear();

x1 = [0, 0.63, 1.26, 1.88, 2.51, 3.14, 3.77, 4.40, 5.03, 5.65, 6.28];
y = [4.88, 4.34, 1.99, 0.77, 2.67, 5.12, 4.50, 1.94, 0.83, 2.68, 5.08];

x = linspace(0,2*pi,11);

f0 = ones(1,11);
f1 = sin(2*x);
f2 = cos(2*x);

A = [sum(f2.*f2),sum(f2.*f1), sum(f2.*f0);
    sum(f1.*f2), sum(f1.*f1), sum(f1.*f0);
    sum(f0.*f2), sum(f0.*f1), sum(f0.*f0)];

b = [sum(y.*f2); sum(y.*f1); sum(y.*f0)]; 


cfnts = A\b;
a1 = cfnts(1);
a0 = cfnts(2);


xAxis = linspace(0, 2*pi,101);
yAxis = cfnts(3)*sin(2*xAxis) + cfnts(2)*cos(2*xAxis)+ cfnts(1);
hold on;
plot(x,y,'o');
plot(xAxis, yAxis);
xlabel('x');
ylabel('y');
fprintf('the coefficients are %5.4f %5.4f %5.4f ',cfnts(1), cfnts(2), cfnts(3));
title(sprintf('fitting %5.4f*cos(2x) + %5.4f*sin(2x) + %5.4f ',cfnts(1), cfnts(2), cfnts(3)));
hold off;