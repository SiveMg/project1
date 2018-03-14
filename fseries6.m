%plots Fourier series for square wave
clc;
close all

%disp("Mavesta");
n = input('Number of terms of the series = ');
t = linspace(-1,1,6001);
%matrix to receive values of the n terms

y = zeros(n,length(t));

for k = 1:n
    %values of the kth term
    y(k,:) = 3/4 + ((2*k*sin(k) + cos(k) - 1)/k^2)*cos(k*t) + ((sin(k) - k)/k^2)* sin(k*pi*t);  
end

%kth parital sum of the series 
s = cumsum(y);

%x-values of the function 
xt1 = (-1:.0001:0);
xt2 = (0:.0001:1);

%y-values of the function are 1 on xt1. x on xt2
z = s(k,:);
hold on
%plot(t,z);
plot(xt1,1,'.')
plot(xt2,xt2,'.')
hold off;
    