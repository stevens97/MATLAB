%------------------------------
% Gauss Integration
%------------------------------

%Gauss Integration

%Set format
format long
SF = 6; %Set significant figures

%Declare Symbols
syms x f(x) k

%Input function
f(x)=input('Integrant f(x) = ');

%Input bounds
a=input('Beginpunt van interval a = ');
b=input('Eindpunt van interval b = ');

%Two-point Gauss Quadrature ( n = 2 )
c1=1; %First Constant (Given Rule)
c2=1; %Second Constant (Given Rule)
r1=-1/sqrt(3); %First Value Point (Given Rule)
r2=1/sqrt(3); %Second Value Point (Given Rule)
fprintf('\n\nGauss Two Point Quadrature:\n\n')
G_Two_Point = vpa(eval((b-a)/2*(c1*f((b-a)/2*r1+(b+a)/2)+c2*f((b-a)/2*r2+(b+a)/2))),SF)

%Explanation:
%G_Two_Point = c1.f(r1) + c2.f(r2) if bounds are from -1 to 1
%The above code changes the bounds to -1 to 1 to ensure this


%Three-point Gauss Quadrature ( n = 3 )
c1=5/9; %First Constant (Given Rule)
c2=8/9; %Second Constant (Given Rule)
c3=5/9; %Third Constant (Given Rule)
r1=-sqrt(3/5); %First Value Point (Given Rule)
r2=0; %Second Value Point (Given Rule)
r3=sqrt(3/5); %Third Value Point (Given Rule)
fprintf('\n\nGauss Three Point Quadrature:\n\n')
G_Three_Point = vpa(eval((b-a)/2*(c1*f((b-a)/2*r1+(b+a)/2)+c2*f((b-a)/2*r2+(b+a)/2)+c3*f((b-a)/2*r3+(b+a)/2))),SF)

%Explanation:
%G_Three_Point = c1.f(r1) + c2.f(r2) + c3.f(r3) if bounds are from -1 to 1
%The above code changes the bounds to -1 to 1 to ensure this
