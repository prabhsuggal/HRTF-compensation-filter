function [ H] = HRTF_model( alpha,beta,Fs )

s= tf('s');
H = (alpha*s+beta)/(s+beta);
G=c2d(H,1/Fs,'tustin');
%bode(H);
%hold on;

end

