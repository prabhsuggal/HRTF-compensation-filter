function [ grp_del ] = comp_fil(beta,alpha, w )
%s=tf('s');
%for q=1:0.1:1.5
 %   for w0=10000:1000:15000
        %H= (s^2-w0/q*s+w0^2)/(s^2+w0/q*s+w0^2);
        if(alpha<1)
            w0=beta/alpha;
        q=0.001;
     
        grp_del=(1/w0)*(2*q*(w.^2)/w0^2+2*q)./(q^2*w.^4/w0^4 + (1-2*q^2)*w.^2/w0^2 + q^2);

        %figure;
        %plot(w/w0,grp_del);
        %xlabel(['w0 = ' num2str(w0) ' q= ' num2str(q)])
    %end
%end

end

