%------------------------------
% Bisection Methods
%------------------------------

%Bisection Method
%Always converges
%Converges linearly at rate 1/2
%Slowest method, but most trustworthy

%Format output
format long
SF = 6; %Set significant figures

%Declare symbols
syms x f(x)

%Type in function
f(x)=input('funksie f(x)=')

%Plot function for visual assistance
ezplot(f,-10,10)
grid on

%TOLERANCE = 10^-1  %one decimal tolerance
%TOLERANCE = 10^-2  %two decimal tolerance
%TOLERANCE = 10^-3  %three decimal tolerance
%TOLERANCE = 10^-4  %four decimal tolerance
TOLERANCE = 10^-5  %five decimal tolerance

N=100; % Maximum iteration steps
i=1 %Start iteration at 1

a=input('beginpunt interval a ='); %Choose a smaller than the zero
b=input('eindpunt interval b ='); %Choose b bigger than the zero
fp=vpa(f(a),SF);

fprintf('\nBisection Method Start!\n');
while i <= N
    fprintf('\nIteration: %d\n', i);
    a
    b
    p=(a+b)/2
    fa=vpa(f(a),SF)
    fb=vpa(f(b),SF)
    fp=vpa(f(p),SF)
    error = vpa(abs(fp),SF);
    if fp == 0 || error <= TOLERANCE
       fprintf('\n\nZero found! p = %f\n', p)
       fprintf('Iterations: i = %d\n', i)
       break;
    end
    if sign(fa)*sign(fp)>0
       a=p;
       %fprintf('Switch a with p!\n');
    else
       b=p;
       %fprintf('Switch b with p!\n');
    end
    i=i+1;
end
    

