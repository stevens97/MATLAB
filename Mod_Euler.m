%------------------------------
% Modified Euler Method
%------------------------------

%Second Order Runge-Kuta / Modified Euler Method

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

%Second Order Runge-Kuta / Modified Euler Method START
fprintf('%Second Order Runge-Kuta / Modified Euler Method START >>')
for i=1:n+1
    Y(i,1)=t
    Y(i,2)=w
    w= eval(w+h/2*(f(t,w)+f(t+h,w+h*f(t,w))));
    t=t+h;
end

