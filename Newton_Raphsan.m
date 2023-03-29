fx=input('Enter the function ,F(x) = ','s'); 
f=eval(['@(x)',fx]) ; 
%fx = diff(fx);
fx2=input('Enter the function ,F"(x) = ','s'); 
f1 = eval(['@(x)',fx2]) ; 
a=input('Enter a = '); 
s=1; 
fprintf('N\t      \ta\t\t       X\t\t        f(x)\t\t       Error\n'); 
for k=1:1:100 
    x(k)= a - (f(a)/f1(a)); 
    fprintf('%g          %.5f         %.5f          %.5f          %.5f\n',k,a,x(k),f(x(k)),s); 
    a=x(k); 
    x(k+1)= a -(f(a)/f1(a)); 
    s=((abs(x(k+1)-x(k)))/(abs(x(k+1))))*100; 
    if s <= .0001 
        break; 
    end 
end 
fprintf('The root is = %f \n', x(k)); 
