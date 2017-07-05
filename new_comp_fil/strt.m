%theta=input('what is the value of theta(in radians) ? ');
%theta_min=input('what is the value of theta_min ? ');
%a=input('what is the value of radius of head(in cm) ? ');
%alpha_min=input('what is the value of alpha_min ? ');

for theta=0:180:180
    figure;
%theta=45;
Fs=44100;
theta_min=150;
a=8.7;
alpha_min=0.1;
alpha= 1+alpha_min/2+(1-alpha_min/2)*cos(theta/theta_min*pi);
c=343;
a=a/100;
beta=2*c/a;
if(abs(theta)<=90)
    T_d=-a/c*cos(theta*pi/180);
else
    T_d = a/c*(abs(theta*pi/180)-pi/2);
end
H=HRTF_model(alpha,beta,Fs );
S=comp_fil1(H,Fs);

%f=0:0.001:1;
%[num,den]=tfdata(G,'v');
%[ini_digdel,w]=grpdelay(num,den,length(f),Fs);


%ini_digdel=ini_digdel+T_d;
%plot(w,ini_digdel);
%hold on;


%a = max(ini_digdel)-ini_digdel;
%[num1,den1]=iirgrpdelay(32, f, [0 1], a);



%[comp_digdel,w]=grpdelay(num1,den1,length(f),Fs);
%plot(w,comp_digdel);
%hold on;
%plot(w,comp_digdel+ini_digdel);
%x=0:500:30000;
%w0=1.5*beta/alpha;
%initial_del=grp_del(alpha,beta,x,T_d);
%plot(x/w0,initial_del);
%hold on;
%comp_del=comp_fil(beta,alpha,x);
%plot(x/w0,comp_del);
%hold on;
%final_del=initial_del+comp_del;
%plot(x/w0,final_del);
theta
end
