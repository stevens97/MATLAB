%------------------------------
% Newton Interpolation
%------------------------------

format short
SF = 6 %Set significant figures

%Declare symbols
syms x L P

%Given the following data
n=input('Aantal datapunte: n = ')
X=input('data [x0 y0; x1 y1; x2 y2; ...] = ')

fprintf('\nNewton interpolation GO! \n')
%Divided difference Table
fprintf('\nDivided Difference Table: \n')
for i=3:n+1
    for j=i-1:n
        X(j,i)= (X(j,i-1)-X(j-1,i-1))/(X(j,1)-X(j-i+2,1))
    end
end
%X(n,n)

%Polynomial
P(x)=X(1,2);
for k=2:n
    L(x)=1;
    for j=1:k-1
        L(x)=L(x)*(x-X(j,1));
    end
    P(x)= P(x)+X(k,k+1)*L(x);
end
fprintf('\nNewton Interpolation Polynomial: \n')
simplify(P(x))
