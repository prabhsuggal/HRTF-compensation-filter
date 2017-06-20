%theta=input('what is the value of theta(in radians) ? ');
%theta_min=input('what is the value of theta_min ? ');
%a=input('what is the value of radius of head(in cm) ? ');
%alpha_min=input('what is the value of alpha_min ? ');

for theta=0:20:180
    figure;
%theta=45;
theta_min=150;
a=8.7;
alpha_min=0.1;
alpha= 1+alpha_min/2+(1-alpha_min/2)*cos(theta/theta_min*pi);
c=343;
a=a/100;
beta=2*c/a;
%HRTF_model(alpha,beta );

if(abs(theta)<=90)
    T_d=-a/c*cos(theta*pi/180);
else
    T_d = a/c*(abs(theta*pi/180)-pi/2);
end

s=-10:0.1:10;
x=10.^s;
initial_del=grp_del(alpha,beta,x,T_d);
semilogx(x,initial_del);
hold on;
comp_del=comp_fil( alpha,beta,x);
semilogx(x,comp_del);
hold on;
final_del=initial_del+comp_del;
semilogx(x,final_del);
theta
end
%phase_lin(alpha,beta);
