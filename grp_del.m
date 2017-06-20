function [ grp_del ] = grp_del( alpha,beta,w,T_d )
x=beta/alpha;
%group delay
grp_del= -x./(x^2+w.^2)+beta./(beta^2+w.^2)+T_d;

%semilogx(w,grp_del);
%hold on;


end

