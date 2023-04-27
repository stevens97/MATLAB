%------------------------------
% Absolute and Relative Error
%------------------------------

%Format output
format long
SF = 6; % set significant figures

%Set a
a=1;
%Set b
b=10;

absolute_error = vpa(abs(b-a),SF)
relative_error = vpa(abs(b-a)/b,SF)
