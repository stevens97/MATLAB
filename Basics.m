%----------------------------------------
% Basic differentiation and integration
%----------------------------------------

%Format output
format long
SF = 6; % set significant figures

%Declare the symbol
syms x

%Declare the function
fprintf('The declared function: ')
%Some notation help when defining a function
%a*b (times)
%a/b (divide)
%a+b (plus)
%a-b (minus)
%sqrt(a) (square-root)
%a^(b) (power)
%log(a) >> natural logarithm (ln(a))
%log10(a) >> common logarithm (log(a))
%exp(a) >> e^a
%sin(a), cos(a), tan(a), asin(a), acos(a), atan(a)

f = @(x) 9*cos(x)-x.^2+8*sqrt(x) %for example
fprintf('\n')

%Differentiate the function in terms of x

fprintf('The first derivative of the function: ')
df1 = diff(f,x, 1)
%copy and paste this from the command window
df1 = @(x) 4/x^(1/2) - 9*sin(x) - 2*x
%Find derivative at certain point z
z = 5;
fprintf('The first derivative calculated at the point: ')
vpa(df1(z), SF)
fprintf('\n')

fprintf('The second derivative of the function: ')
df2 = diff(f,x, 2)
%copy and paste this from the command window
df2 = @(x) - 9*cos(x) - 2/x^(3/2) - 2 
%Find derivative at certain point z
z = 5;
fprintf('The second derivative calculated at the point: ')
vpa(df2(z),SF)
fprintf('\n')


%Integrate the function in terms of x (indefinite integral)

fprintf('The integrated function: ')
int_f = @(x) int(f,x)
fprintf('\n')

%Integrate the function in terms of x (definite integral)

%Set bounds
fprintf('The bounds: \n')
a = 1; %for example
b = 2; %for example
fprintf('The calculated definite integral: ')
int_f = int(f,x,a,b);
vpa(int_f,SF)
fprintf('\n')
