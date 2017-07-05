function [ S ] = comp_fil1( H,Fs )

G=c2d(H,1/Fs,'tustin');
f=0:0.001:1;
[num,den]=tfdata(G,'v');
[ini_digdel,w]=grpdelay(num,den,length(f),Fs);

    
plot(w,ini_digdel);
hold on;
if(ini_digdel(1)<0)
    ini1=ini_digdel;
    ini_digdel=-ini_digdel;
else
    ini1=ini_digdel;
end
a = max(ini_digdel)-ini_digdel;
[num1,den1]=iirgrpdelay(32, f, [0 1], a);
D=tf(num1,den1,1/Fs);

[comp_digdel,w]=grpdelay(num1,den1,length(f),Fs);
if(ini1~=ini_digdel)
    comp_digdel=-comp_digdel;
    ini_digdel=ini1;
end
plot(w,comp_digdel);
hold on;

plot(w,comp_digdel+ini_digdel);

opts=d2cOptions('Method','tustin','PrewarpFrequency',Fs);
S=d2c(D,opts);
figure;
bode(S);

end

