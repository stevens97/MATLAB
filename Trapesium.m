%------------------------------
% Basic Trapesium Rule
%------------------------------

%Basic Trapesium Rule

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

%Calculate Basic Trapesium Rule Approximation
fprintf('Basic Trapesium Rule Approximation:\n\n')
T=vpa(eval(h/2*(f(a)+f(b))),SF)

%ERROR TERM

%1/12*(b-a)^3 * f''(c)
%h = b-a
