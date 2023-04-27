%------------------------------
% First Order Taylor/Euler
%------------------------------

%First Order Taylor / Euler

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

%First Order Taylor / Euler Method START
fprintf('%First Order Taylor / Euler Method START >>')
for i=1:n+1
    Y(i,1)=t
    Y(i,2)=w
    w=eval(w+h*f(t,w));
    t=a+(i)*h;
end

