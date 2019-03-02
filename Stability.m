%Stability with Jacobian Matrix 
syms s r m a a1 a2 a3 a4 a6 a7 a9 a10 a11 v b n m
syms lambda real
% E(s) = a1*s*(1-(s+r))-a7*s*m-s*a*(a3+a4);
% F(r) = a2*r*(1-(s+r))-a7*r*m+s*a*a3;
% G(m) = a9*m*(1-(m/(s+r)));
% H(a) =  a6*(1-a);





j = [-a1*(r+s-1)-a7*m-a1*s-a*(a3 + a4) -a1*s -a7*s -s*(a3+a4); a*a3-a2*r -a2*(r+s-1)-a7*m-a2*r -a7*r a3*s; (a9*m^2)/(r+s)^2 (a9*m^2)/(r+ s)^2 -a9*(m/(r+s)-1)-(a9*m)/(r+s) 0; 0 0 0 -a6 ]

%Jacobian Matrix

I = [lambda 0 0 0 ; 0 lambda 0 0; 0 0 lambda 0; 0 0 0 lambda];
M = det(j - I) == 0;
% assume(lambda,'real' )
assume(lambda < 0)
% assume(lambda,'real')
soll = solve(M,lambda,'ReturnConditions',true);
soll.lambda
soll.conditions
soll.parameters


% M(S) = theta*B - phi*S - delta*S;
% all = [E;F;G;H];
% solve(all,[M,P])


% 
% a33 = diff(E,s)
% b = diff(E,r)
% c = diff(E,m)
% d = diff(E,a)
% 
% a44 = diff(F,s)
% b1 = diff(F,r)
% c1 = diff(F,m)
% d1 = a3*s;
% 
% 
% a12 = diff(G,s)
% b11 = diff(G,r)
% c11 = diff(G,m) 
% d11 = diff(G,a) 
% 
% a111 = diff(H,s)
% b111 = diff(H,r)
% c111 = diff(H,m) 
% d111 = diff(H,a)

