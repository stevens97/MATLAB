%------------------------------
% Romberg Integration
%------------------------------

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

%Set maximum number of columns
mmaks=5;

fprintf('Romberg Integration START:\n\n')
romint0=0;
romint1=1;

m=2;

%Clear memory before running
R = []
fprintf('Romberg Integration START:')
while and(abs(romint0-romint1) >= TOLERANCE, m <= mmaks)
    fprintf('\n\nNEW PROCESS\n\n')
    m = m+1
    %1st Column (Composite Trapesium Rule)
    for j = 1:m
        n = vpa(2^(j-1),SF);
        h = vpa((b-a)/n,SF);
        R(j,1) = vpa(eval(h/2*(f(a)+2*sum(subs(f(a+k*h),k,1:n-1))+f(b))),SF)
    end
    %Other Columns (Romberg Rule)
    for j = 2:m
        for i=j:m
            R(i,j) = vpa(R(i,j-1)+(R(i,j-1)-R(i-1,j-1))/(4^(j-1)-1),SF)
        end
    end
    romint0 = romint1;
    romint1 = R(m,m);
end
