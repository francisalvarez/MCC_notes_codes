% Francis Alvarez
% Code used for notes on how to solve DE IVP by method of undeterminded 
% coefficients. The notes are typed in Tex so this speeds up the process by 
% taking the derivatives and simplifying for me. 
%
% ------------------------------------------------------------------------
% y1: is the educated guess based on the homogenous solutions. 
% d1,d2: represent first and second order derivates of y1.
% LHS: substituting everything back into the left hand side of the DE. 
% yg1: general solution to the DE.
% ------------------------------------------------------------------------
clc
%%%%%%%%%%%%%%%%
%%%% Problem 7
%%%%%%%%%%%%%%%%
% syms t A B C D
% y1 = A*t^2*exp(3*t)+B*t*exp(3*t)+C*exp(3*t)+D;
% 
% 
% d1 = diff(y1,t);      %First derivative
% d2 = diff(y1,t,2);    %2nd derivative  
% LHS = simplify(d2+9*y1);
% LHS = collect(LHS,t));
% 
% %Factor out A and set up for latex
% d1 = collect(d1,[A B C D]);
% s1 = latex(d1)
% 
% d2 = collect(d2,[A B C D]);
% s2 = latex(d2)
% 
% latex(LHS)


%%%%%%%%%%%%%%%%%%%%%%
%%%%% Problem 8
%%%%%%%%%%%%%%%%%%%%%%

% y1 = A*t^2*exp(-t)
% 
% d1 = diff(y1,t);      %First derivative
% d2 = diff(y1,t,2);    %2nd derivative  
% LHS = simplify(d2+2*d1+y1);
% 
% %Factor out A and set up for latex
% d1 = collect(d1,A);
% s1 = latex(d1)
% 
% d2 = collect(d2,A);
% s2 = latex(d2)
% 
% latex(LHS)

%%%%%%%%%%%%%%%%%%%%%%
%%%%% Problem 20
%%%%%%%%%%%%%%%%%%%%%%
keyboard
syms t A B C1 C2
y1 = A*t*exp(-t)*cos(2*t)+B*t*exp(-t)*sin(2*t);

d1 = diff(y1,t);      %First derivative
d2 = diff(y1,t,2);    %2nd derivative  
LHS = simplify(d2+2*d1+5*y1);
LHS = collect(LHS,t);

%Factor out A and set up for latex
d1 = collect(d1,[A B]);
s1 = latex(d1)

d2 = collect(d2,[A B]);
s2 = latex(d2)

latex(LHS)

%Solve IVP Portion
yg1 = C1*exp(-t)*cos(2*t) + C2*exp(-t)*sin(2*t) + t*exp(-t)*sin(2*t);
latex(yg1)
yg2 = diff(yg1,t);
yg2 = collect(yg2,[C1 C2])
latex(yg2)
