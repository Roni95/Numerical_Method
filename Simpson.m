clc;
clear all;
n = input('Enter the value of n : ');
h = input('Enter the value of h : ');
for i=1:n+1
    f(i)=input('Enter the value f(i)=');
end
sum=(f(1)+f(n+1));
for j=2:2:n
    sum=sum+4*f(j);
end
for k=3:2:n-1
    sum=sum+2*f(k);
end
integral = (h/3)*sum;
integral
