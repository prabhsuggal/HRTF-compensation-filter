function [ grp_del] = comp_fil( alpha,beta,w )


syms q w0 

%the equation 
if (alpha>1)
  eqns = [(((((2*q^2 - 1)/w0^2 - (6*beta^2*q^2)/w0^4)/(q^2 - (beta^2*(2*q^2 - 1))/w0^2 + (beta^4*q^2)/w0^4) + ((2*beta*(2*q^2 - 1))/w0^2 - (4*beta^3*q^2)/w0^4)^2/(q^2 - (beta^2*(2*q^2 - 1))/w0^2 + (beta^4*q^2)/w0^4)^2)*(2*q + (2*beta^2*q)/w0^2))/(q^2 - (beta^2*(2*q^2 - 1))/w0^2 + (beta^4*q^2)/w0^4) + (2*q)/(w0^2*(q^2 - (beta^2*(2*q^2 - 1))/w0^2 + (beta^4*q^2)/w0^4)) + (4*beta*q*((2*beta*(2*q^2 - 1))/w0^2 - (4*beta^3*q^2)/w0^4))/(w0^2*(q^2 - (beta^2*(2*q^2 - 1))/w0^2 + (beta^4*q^2)/w0^4)^2))/w0 + (alpha^3-1)/beta^3 == 0, (((2*q + (2*beta^2*q)/w0^2)*(((((2*q^2 - 1)/w0^2 - (6*beta^2*q^2)/w0^4)/(q^2 - (beta^2*(2*q^2 - 1))/w0^2 + (beta^4*q^2)/w0^4) + ((2*beta*(2*q^2 - 1))/w0^2 - (4*beta^3*q^2)/w0^4)^2/(q^2 - (beta^2*(2*q^2 - 1))/w0^2 + (beta^4*q^2)/w0^4)^2)*((2*q^2 - 1)/w0^2 - (6*beta^2*q^2)/w0^4))/(q^2 - (beta^2*(2*q^2 - 1))/w0^2 + (beta^4*q^2)/w0^4) + (((2*beta*(2*q^2 - 1))/w0^2 - (4*beta^3*q^2)/w0^4)*((((2*beta*(2*q^2 - 1))/w0^2 - (4*beta^3*q^2)/w0^4)*(((2*q^2 - 1)/w0^2 - (6*beta^2*q^2)/w0^4)/(q^2 - (beta^2*(2*q^2 - 1))/w0^2 + (beta^4*q^2)/w0^4) + ((2*beta*(2*q^2 - 1))/w0^2 - (4*beta^3*q^2)/w0^4)^2/(q^2 - (beta^2*(2*q^2 - 1))/w0^2 + (beta^4*q^2)/w0^4)^2))/(q^2 - (beta^2*(2*q^2 - 1))/w0^2 + (beta^4*q^2)/w0^4) + (((2*beta*(2*q^2 - 1))/w0^2 - (4*beta^3*q^2)/w0^4)*((2*q^2 - 1)/w0^2 - (6*beta^2*q^2)/w0^4))/(q^2 - (beta^2*(2*q^2 - 1))/w0^2 + (beta^4*q^2)/w0^4)^2 - (4*beta*q^2)/(w0^4*(q^2 - (beta^2*(2*q^2 - 1))/w0^2 + (beta^4*q^2)/w0^4))))/(q^2 - (beta^2*(2*q^2 - 1))/w0^2 + (beta^4*q^2)/w0^4) - q^2/(w0^4*(q^2 - (beta^2*(2*q^2 - 1))/w0^2 + (beta^4*q^2)/w0^4)) - (4*beta*q^2*((2*beta*(2*q^2 - 1))/w0^2 - (4*beta^3*q^2)/w0^4))/(w0^4*(q^2 - (beta^2*(2*q^2 - 1))/w0^2 + (beta^4*q^2)/w0^4)^2)))/(q^2 - (beta^2*(2*q^2 - 1))/w0^2 + (beta^4*q^2)/w0^4) + (2*q*(((2*q^2 - 1)/w0^2 - (6*beta^2*q^2)/w0^4)/(q^2 - (beta^2*(2*q^2 - 1))/w0^2 + (beta^4*q^2)/w0^4) + ((2*beta*(2*q^2 - 1))/w0^2 - (4*beta^3*q^2)/w0^4)^2/(q^2 - (beta^2*(2*q^2 - 1))/w0^2 + (beta^4*q^2)/w0^4)^2))/(w0^2*(q^2 - (beta^2*(2*q^2 - 1))/w0^2 + (beta^4*q^2)/w0^4)) + (4*beta*q*((((2*beta*(2*q^2 - 1))/w0^2 - (4*beta^3*q^2)/w0^4)*(((2*q^2 - 1)/w0^2 - (6*beta^2*q^2)/w0^4)/(q^2 - (beta^2*(2*q^2 - 1))/w0^2 + (beta^4*q^2)/w0^4) + ((2*beta*(2*q^2 - 1))/w0^2 - (4*beta^3*q^2)/w0^4)^2/(q^2 - (beta^2*(2*q^2 - 1))/w0^2 + (beta^4*q^2)/w0^4)^2))/(q^2 - (beta^2*(2*q^2 - 1))/w0^2 + (beta^4*q^2)/w0^4) + (((2*beta*(2*q^2 - 1))/w0^2 - (4*beta^3*q^2)/w0^4)*((2*q^2 - 1)/w0^2 - (6*beta^2*q^2)/w0^4))/(q^2 - (beta^2*(2*q^2 - 1))/w0^2 + (beta^4*q^2)/w0^4)^2 - (4*beta*q^2)/(w0^4*(q^2 - (beta^2*(2*q^2 - 1))/w0^2 + (beta^4*q^2)/w0^4))))/(w0^2*(q^2 - (beta^2*(2*q^2 - 1))/w0^2 + (beta^4*q^2)/w0^4)))/w0 +(1-alpha^5)/beta^5 == 0];
else
  eqns = [];  
end    
vars = [q w0];
[solv, solu] = solve(eqns, vars);

W=vpa(solv);
Q=vpa(solu);
omega=double(W);
qua_fac=double(Q);
d=abs(omega)==real(omega);
e=abs(qua_fac)==real(qua_fac);

w0=max(omega(d));
q=max(qua_fac(e));



grp_del=(1/w0)*(2*q*(w.^2)/w0^2+2*q)./(q^2*w.^4/w0^4 + (1-2*q^2)*w.^2/w0^2 + q^2);



end

