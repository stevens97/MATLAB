%------------------------------
% Composite Simpson Rule
%------------------------------

%Composite Simpson Rule for data points 
 
format long 
 
fprintf("Data points have to be an uneven number ") 
 
n = input('Number of data points = ');
 
fprintf("Data must be evenly spaced ") 
 
X = input('data[x0 y0; x1 y1; ...] = '); 
 
h = X(2,1) - X(1,1); 
 %Composite Simpson Rule

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

%Set Tolerance
TOLERANCE=10^(-4);

%Set maximum number of intervals
n_max=100;

simint0=0;
simint1=1;

n=0;
fprintf('Composite Simpson Rule Approximation START:\n\n')
while n <= n_max
    n=n+2
    h=(b-a)/n;
    S=vpa(eval(h/3*(f(a)+2*sum(subs(f(a+2*k*h),k,1:n/2-1))+4*sum(subs(f(a+(2*k-1)*h),k,1:n/2))+f(b))),SF)
    simint0=simint1;
    simint1=S;
    if abs(simint0-simint1)<= TOLERANCE
       fprintf('\n\nAccurate approximation found!')
       fprintf('\nIntervals: n = %d\n', n-2)
       break;
    end
end
S = X(1,2); 
 
for i=1:(n-1)/2
    S = 4*X(2*i,2)+T; 
end 
 
for i=1:(n-1)/2-1 
    S = 2*X(2*i+1,2)+T;
end 
 
S = h/3*(T+X(n,2))
