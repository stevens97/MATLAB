%------------------------------
% Cubic Spline Interpolation
%------------------------------

% The Cubic Spline Function will have it's constants displayed in a Matrix.
% The matrix has the follwing columns:
% [X Y H A B C D]
% Splines are constructed as the following:
% S0 = a0 + b0(x-x0) + c0(x-x0)^2 + d0(x-x0)^3
% S1 = a1 + b1(x-x1) + c0(x-x1)^2 + d1(x-x1)^3
% These values can simply be read from the matrix.

%Boundary Conditions
% S0''(0) = 0
% S1''(0) = 0
% Clamped Points
% S0'(x) = S1'(x)
% S0''(x) = S1''(x)
% Unique Points
% S0(x0) = a0
% S1(x1) = a1

%Formulas
% hj = xj+1 - xj
% aj = f(xj)
% bj = 1/hj(aj+1 - aj) - hj/3(2cj-cj+1)
% C:
% |1    0         0 |   [c0]      |            0               |
% |h1   2(h1+h2)  h2|   [c1]    = | 3/h1(a2-a1) - 3/h0(a1-a0)  |
% |0    0         1 |   [c2]      |            0               |
% dj = (cj+1 - cj) / 3hj

%Latfunksies
clear
syms x S
n=input('Aantal datapunte: n = ')
X=input('data [x0 y0; x1 y1; x2 y2; ...] = ')
%h in X(i,3)
for i=1:n-1
    X(i,3)=X(i+1,1)-X(i,1)
end
%a in X(i,4)
for i=1:n
    X(i,4)=X(i,2)
end
%c in X(i,6)
X(1,6)=0
X(n,6)=0
if n==3
    X(2,6)=(3/X(2,3)*(X(3,4)-X(2,4))-3/X(1,3)*(X(2,4)-X(1,4)))/(2*(X(1,3)+X(2,3)))
end
if n>3
   H(1,1)=2*(X(1,3)+X(2,3))
   H(1,2)=X(2,3)
   A(1)=3/X(2,3)*(X(3,4)-X(2,4))-3/X(1,3)*(X(2,4)-X(1,4))
   H(n-2,n-3)=X(n-2,3)
   H(n-2,n-2)=2*(X(n-2,3)+X(n-1,3))
   A(n-2)=3/X(n-1,3)*(X(n,4)-X(n-1,4))-3/X(n-2,3)*(X(n-1,4)-X(n-2,4))
   for i=2:n-3
       H(i,i-1)=X(i-1,3)
       H(i,i)=2*(X(i-1,3)+X(i,3))
       H(i,i+1)=X(i,3)
       A(i)=3/X(i+1,3)*(X(i+2,4)-X(i+1,4))-3/X(i,3)*(X(i+1,4)-X(i,4))
    end
    C=inv(H)*transpose(A)
    for i=2:n-1
        X(i,6)=C(i-1)
    end
end
%b in X(i,5)
%d in X(i,7)
for i=1:n-1
    X(i,5)=1/X(i,3)*(X(i+1,4)-X(i,4))-X(i,3)/3*(2*X(i,6)+X(i+1,6))
    X(i,7)=(X(i+1,6)-X(i,6))/X(i,3)/3
end
% for i=1:n-1
%     S(i)=X(i,4)+X(i,5)*(x-X(i,1))+X(i,6)*(x-X(i,1))^2+X(i,7)*(x-X(i,1))^3
% end
