%------------------------------
% Regula Falsi Method
%------------------------------

%Regula Falsi Method
%Faster than Bisection, Slower than Secant and Newton
%Always converges

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

a=input('beginpunt interval a =') %Choose a lesser than zero
b=input('eindpunt interval b =') %Choose b greater than zero
fp=eval(f(a));

fprintf('\n\nRegula Falsi Method Start!\n');
while i<=N
    fprintf('\nIteration: %d\n', i);
    a
    b
    p=eval(a-(f(a)*(b-a))/(f(b)-f(a)))
    fa=eval(f(a))
    fb=eval(f(b))
    fp=eval(f(p))
    if sign(fa)*sign(fp)>0
       a=p;
    else
       b=p;
    end
    error = vpa(abs(fp),SF);
   if fp == 0 || error <= TOLERANCE
       fprintf('\n\nZero found! p = %f\n', p)
       fprintf('Iterations: i = %d\n', i)
       break;
   end
   i=i+1;
end

