%------------------------------
% Newton Horner Method
%------------------------------

%Newton Horner Method for finding Zeroes

%Format output
format long
SF = 6; %Set significant figures

% Setup equation. In this case f(x) = x^3 -9*x^2 +26*x -24
f = @(x) x^3 -9*x^2 +26*x -24
ezplot(f,-10,10)

%Find the derivative of f
f_prime = inline(diff(f,x))

%Newton's Method for f(x)(find first zero)
%Set variables
i = 0;
steps = 10;
p_0=input('beginpunt p0 =') %Set starting condition
p = p_0;
tolerance = 10^(-4); %Set tolerance
output_root = 0;

fprintf('\n\nNewton Method Start!\n');
while i < steps
    fprintf('\nIteration: %d\n', i);
    fprintf('p_%d = %g\n', i,vpa(p,SF))
    fprintf('f(p_%d) = %g\n', i,vpa(f(p),SF))
    fprintf('f_prime(p_%d) = %g\n', i,vpa(f_prime(p),SF))
    p = p_0 - (f(p_0) / vpa(f_prime(p_0),SF));
    abs(p - p_0);
    if abs((p - p_0)) < tolerance;
        p = vpa(p,SF);
        disp(p)
        fprintf('\n\nZero found! p = %f\n', p)
        fprintf('Iterations: i = %d\n\n', i)
        break;
    end
    p_0 = p;
    i = i + 1;
end

%With the zero now found, setup the Horner Method to find the next function

u = [1 -9 26 -24] %First function f
v = [1 -2]; %Function with zero
[g,r] = deconv(u,v) %The new function g and the remainder r (r should be zero)

%===================================================================================%

% Setup the next equation. In this case g(x) = x^2 -7*x +12
g = @(x) x^2 -7*x +12
ezplot(g,-10,10)

%Find the derivative of g
g_prime = inline(diff(g,x))

%Newton's Method for g(x)(find first zero)
%Set variables
i = 0;
steps = 10;
p_0=input('beginpunt p0 =') %Set starting condition
p = p_0;
tolerance = 10^(-4); %Set tolerance
output_root = 0;

fprintf('\n\nNewton Method Start!\n');
while i < steps
    fprintf('\nIteration: %d\n', i);
    fprintf('p_%d = %g\n', i,vpa(p,SF))
    fprintf('f(p_%d) = %g\n', i,vpa(f(p),SF))
    fprintf('f_prime(p_%d) = %g\n', i,vpa(f_prime(p),SF))
    p = p_0 - (f(p_0) / vpa(f_prime(p_0),SF));
    abs(p - p_0);
    if abs((p - p_0)) < tolerance;
        p = vpa(p,SF);
        disp(p)
        fprintf('\n\nZero found! p = %f\n', p)
        fprintf('Iterations: i = %d\n\n', i)
        break;
    end
    p_0 = p;
    i = i + 1;
end

%With the zero now found, setup the Horner Method to find the next function

u = [1 -7 12] %Second function g
v = [1 -3]; %Function with zero
[h,r] = deconv(u,v) %The new function h and the remainder r (r should be zero)

%===================================================================================%

% Setup the next equation. In this case h(x) = x^2 -7*x +12
g = @(x) x-4
ezplot(g,-10,10)

%Find the derivative of g
g_prime = inline(diff(g,x))

%Newton's Method for g(x)(find first zero)
%Set variables
i = 0;
steps = 10;
p_0=input('beginpunt p0 =') %Set starting condition
p = p_0;
tolerance = 10^(-4); %Set tolerance
output_root = 0;

fprintf('\n\nNewton Method Start!\n');
while i < steps
    fprintf('\nIteration: %d\n', i);
    fprintf('p_%d = %g\n', i,vpa(p,SF))
    fprintf('f(p_%d) = %g\n', i,vpa(f(p),SF))
    fprintf('f_prime(p_%d) = %g\n', i,vpa(f_prime(p),SF))
    p = p_0 - (f(p_0) / vpa(f_prime(p_0),SF));
    abs(p - p_0);
    if abs((p - p_0)) < tolerance;
        p = vpa(p,SF);
        disp(p)
        fprintf('\n\nZero found! p = %f\n', p)
        fprintf('Iterations: i = %d\n\n', i)
        break;
    end
    p_0 = p;
    i = i + 1;
end

%With the zero now found, setup the Horner Method to find the next function

u = [1 -4] %Third function h
v = [1 -4]; %Function with zero
[h,r] = deconv(u,v) %The new function i and the remainder r (r should be zero)

%===================================================================================%


