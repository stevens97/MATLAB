%------------------------------
% Taylor Series
%------------------------------

%Format output
format long
SF = 6; % set significant figures

%Set a
a=1;
%Set b
b=10;

absolute_error = vpa(abs(b-a),SF)
relative_error = vpa(abs(b-a)/b,SF)

%Format output
format long
SF = 6; % set significant figures

%Declare symbols
syms x f f1 f2 f3 T

%declare function
f(x)=log(x) %for example

%Differentiate 1,2,3 times
f1(x)=diff(f,x,1)
f2(x)=diff(f,x,2)
f3(x)=diff(f,x,3)

%Define point of which Taylor polynomial approximates around
a=2

%Set up Taylor polynomial
T(x)=f(a)+f1(a)*(x-a)+f2(a)*(x-a)^2/2+f3(a)*(x-a)^3/(2*3)

%Put in data
data=[0.001;1;1.5;1.9;2;2.1;2.5;3;5] %For example
%Values seperated by ;
%decimal . in stead of ,

%Evaluate the data with the Taylor Polynomial
fprintf('\nEvaluate the data with the Taylor Polynomial\n')
vpa(T(data),SF)

%The absolute error
fprintf('\nThe absolute errors\n')
vpa(abs(f(a)-T(a)),SF)

%Plot the function along with the Taylor polynomial
ezplot(f,[0.001 10])
hold
ezplot(T,[0.001 10])
