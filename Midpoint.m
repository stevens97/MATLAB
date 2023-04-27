%------------------------------
% Midpoint Rule
%------------------------------

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
h=b-a;

%Calculate Midpoint Rule Approximation
fprintf('Midpoint Rule Approximation:\n\n')
MP = vpa(eval(h*f(0)),SF)

%ERROR TERM:
%1/24*(b-a)^3 * f''(c)
%h = b-a
