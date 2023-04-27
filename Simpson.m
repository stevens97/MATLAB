%------------------------------
% Simpson Rule
%------------------------------

%Basic Simpson Rule

%Set format
format long
SF = 6; %Set significant figures

%Declare Symbols
syms x f(x)

%Input function
f(x)=input('Integrant f(x) = ');

%Input bounds
a=input('Beginpunt van interval a = ');
b=input('Eindpunt van interval b = ');

%Calculate h
h=(b-a)/2;

%Calculate Basic Simpson Rule Approximation
fprintf('Basic Simpson Rule Approximation:\n\n')
S=vpa(eval(h/3*(f(a)+4*f((a+b)/2)+f(b))),SF)

%ERROR TERM
%1/90*(h)^5 * f^(4)(c)
%h = (b-a)/2

