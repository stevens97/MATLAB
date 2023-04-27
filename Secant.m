%------------------------------
% Secant Method
%------------------------------

%Secant Method
%Faster than Bisection, slower than Newton
%Converges linearly with order 2
%RELIES ON GOOD INITIAL GUESS, OTHERWISE DIVERGES

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

pi_2=input('beginpunt interval p0 =') %Choose p0 less than zero
pi_1=input('eindpunt interval p1 =') %Choose p greater than zero

fprintf('\n\nSecant Method Start!\n');
while i<=N
   fprintf('\nIteration: %d\n', i);
   fpi_2=vpa(eval(f(pi_2)),SF);
   fpi_1=vpa(eval(f(pi_1)),SF);
   p = pi_1 - (fpi_1*(pi_1-pi_2))/(fpi_1 - fpi_2)
   fp=vpa(eval(f(p)),SF)
   error = vpa(abs(fp),SF);
   if fp == 0 || error <= TOLERANCE
       fprintf('\n\nZero found! p = %f\n', p)
       fprintf('Iterations: i = %d\n', i)
       break;
   end
   i=i+1;
   pi_2 = pi_1;
   pi_1 = p;
end
    

