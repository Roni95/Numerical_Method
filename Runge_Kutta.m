clc
clear all
fx=input('Enter the function dy/dx = ','s');
f=eval(['@(x,y)',fx]);

x0= input('Enter the initial value of x = x0= ' );
y0=input('Enter value of y at initial value of x = y0= ');
xn = input('Enter the value of x = xn = ' );
h = input('Enter the value of step size= h = ');

fprintf('\nThe value of y(%f) = %f\n',x0,y0);
for i = x0:h:xn-h
        k1=h*f(i,y0);
        k2=h*f(i+(h/2),y0+k1/2);
        k3=h*f(i+(h/2),y0+k2/2);
        k4=h*f(i+h,y0+k3);
        k =(1/6)*(k1 +2*k2 + 2*k3+ k4);
        y = k+ y0;
        fprintf('The value of y(%f) = %f\n',i+h,y);
end
