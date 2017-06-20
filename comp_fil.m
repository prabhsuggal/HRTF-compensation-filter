function [ grp_del] = comp_fil( alpha,beta,x )


syms u v

%the equation 
eqns = [2*(3*u^2-1)/u^3/v^3 + (alpha^3-1)/beta^3 == 0, 2*(5*u^4-5*u^2+1)/(u^5*v^5)+(1-alpha^5)/beta^5 == 0];
vars = [v u];
[solv, solu] = solve(eqns, vars);

W=vpa(solv);
Q=vpa(solu);
omega=double(W);
qua_fac=double(Q);
d=abs(omega)==real(omega);
e=abs(qua_fac)==real(qua_fac);

w=max(omega(d));
q=max(qua_fac(e));



grp_del=1/w*(2*q*(x.^2)/w^2+2*q)./(q^2*x.^4/w^4 + (1-2*q^2)*x.^2/w^2 + q^2);



end

