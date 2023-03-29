clc
clear all
n=input('inter the value of n=');
x0=0;
xsq0=0;
y0=0;
xy0=0;
for i=1:n
 x=input('enter the value of x=');
 y=input('enter the value of y=');
 x0=x0+x;
 xsq0=xsq0+(x*x);
 y0=y0+y;
 xy0=xy0+(x*y);
end
d=n*xsq0-x0*x0;
a=(y0*xsq0-x0*xy0)/d;
b=(n*xy0-x0*y0)/d;
a
b
fprintf('y = %g x + %g ', b, a );
