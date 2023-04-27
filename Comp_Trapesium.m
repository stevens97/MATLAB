%------------------------------
% Composite Trapesium Rule
%------------------------------

%Composite Trapesium Rule

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

traint0=0;
traint1=1;

n=0;
fprintf('Composite Trapesium Rule Approximation START:\n\n')
while n <= n_max
    n=n+1
    h=(b-a)/n;
    T= vpa(eval(h/2*(f(a)+2*sum(subs(f(a+k*h),k,1:n-1))+f(b))),SF)
    if abs(traint0-traint1)<= TOLERANCE

       fprintf('\n\nAccurate approximation found!')
       fprintf('\nIntervals: n = %d\n', n-1)
       break;
    end
    traint0 = traint1;
    traint1 = T;
end
