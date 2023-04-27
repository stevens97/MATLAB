%------------------------------
% Lagrange Interpolation
%------------------------------

%Given the following data
x = [1 2 3]
y = [2 3 6]

sum=0; %This represents the Lagrange interpolation polynomial

fprintf('\nLagrange interpolation GO! \n')
for i=1:length(x)
    p=1;
    for j=1:length(x)
        if j~=i
            c = poly(x(j))/(x(i)-x(j));
            p = conv(p,c);
        end
    end
    fprintf('\nNumber i: %d\n', i)
    fprintf('\nLagrange function: L%d: \n', i)
    p
    fprintf('\nY value: Y%d: \n', i)
    y(i)
    term = p*y(i);
    sum = sum + term;
end

%Display the polynomial
fprintf('\nLagrange interpolation polynomial: \n')
disp(sum);

%1 -2 3 Means x^2 -2*x +3
