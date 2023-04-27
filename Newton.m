%------------------------------
% Newton Method
%------------------------------

%Newton Method
%Fastest method
%Converges quadratically
%RELIES ON GOOD INITIAL GUESS, OTHERWISE DIVERGES

%Format output
format long
SF = 6; %Set significant figures

%Declare symbols
syms x f(x)

%Type in function
f(x)=input('funksie f(x)=')

%Differentiate Function
df(x)=diff(f,x,1)

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

a=input('beginpunt p0 =')
i=1
p=eval(a-f(a)/df(a))
fp=eval(f(p));

fprintf('\n\nNewton Method Start!\n');
while i<=N
   fprintf('\nIteration: %d\n', i);
   a=p;
   p = vpa(eval(a-f(a)/df(a)),SF)
   fp = vpa(eval(f(p)),SF)
   error = vpa(abs(fp),SF);
   if fp == 0 || error <= TOLERANCE
       fprintf('\n\nZero found! p = %f\n', p)
       fprintf('Iterations: i = %d\n', i)
       break;
   end
   i=i+1;
end
