%------------------------------
% Fourth Order Runge-Kuta
%------------------------------

%Fourth Order Runge-Kuta

%Set format
format long
SF = 6; %Set significant figures

%Declare Symbols
syms t y f(t,y)

%Input function
f(t,y)=input('Function: dy/dt = f(t,y) = ')

%Input bounds
a=input('a = ')
b=input('b = ')

%Input initial value
w=input('y(0) = ')

%Input intervals
n=input('n = ')

h=(b-a)/n
t=a
Y = 0
%Fourth Order Runge-Kuta START
fprintf('%Fourth Order Runge-Kuta START >>')
for i=1:n+1
    Y(i,1)=t
    Y(i,2)=w
    k1=f(t,w);
    k2=f(t+h/2,w+h/2*k1);
    k3=f(t+h/2,w+h/2*k2);
    k4=f(t+h,w+h*k3);
    w=eval(w+h/6*(k1+2*k2+2*k3+k4));
    t=t+h;
end

