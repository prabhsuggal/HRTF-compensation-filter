function [  ] = HRTF_model( alpha,beta )

s= tf('s');
H = (alpha*s+beta)/(s+beta)
bode(H);
hold on;

end

