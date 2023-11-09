clear; clc; close all;

f=@(x) 4*log(x)-x;

xq=0:0.1:10;
plot(xq,f(xq))
set(gca,'xAxisLocation','origin')
hold on
a=0;b=6;

c=(a+b)/2;

tol=1e-6;
while abs(f(c))>tol
  if f(a)*f(c)<0
    b=c;
  else
    a=c;
end
    c=(a+b)/2;
    plot(c,0,'ro')
    pause(1)
end
plot(c,f(c),'rx')

