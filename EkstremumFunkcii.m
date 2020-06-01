%1.a
function F=EkstremumFunkcii(x)
global par T
F=exp(-0.1*x.^2).*cos(x.^2);
mu=num2str(par);
T=['exp(-\mu x^2)cos x^2, \mu=', mu];
end
clear
global par T
T='0';
par=0.1;
a=0; b=2*pi;
N=100; L1=0; L2=2*pi; X=linspace(L1,L2,N);
Y=EkstremumFunkcii(X);
plot(X,Y); grid on;
xlabel('x'); ylabel('f(x)'); title(T)
xr=ginput(2);
[x_m,y_m]=fminbnd(@EkstremumFunkcii,xr(1,1),xr(2,1));
hold on
plot(x_m,y_m,'r*',xr(1,1),xr(1,2),'g*',xr(2,1),xr(2,2),'g*')
hold of


%1.b
function F=EkstremumFunkcii(x)
F=1/(1.*cos(x) + 2.*sin(x).^2);
end
clear
global par T
T='0';
par=0.1;
a=0; b=2*pi/3;
N=100; L1=0; L2=2*pi/3; X=linspace(L1,L2,N);
Y=EkstremumFunkcii(X);
plot(X,Y); grid on;
xlabel('x'); ylabel('f(x)'); title(T)
xr=ginput(2);
[x_m,y_m]=fminbnd(@EkstremumFunkcii,xr(1,1),xr(2,1));
hold on
plot(x_m,y_m,'r*',xr(1,1),xr(1,2),'g*',xr(2,1),xr(2,2),'g*')
hold of


%1.c
function F=EkstremumFunkcii(x)
F=2-abs(x).*exp(-abs(x-1));
end
clear
global par T
T='0';
par=0.1;
a=0; b=4;
N=100; L1=0; L2=4; X=linspace(L1,L2,N);
Y=EkstremumFunkcii(X);
plot(X,Y); grid on;
xlabel('x'); ylabel('f(x)'); title(T)
xr=ginput(2);
[x_m,y_m]=fminbnd(@EkstremumFunkcii,xr(1,1),xr(2,1));
hold on
plot(x_m,y_m,'r*',xr(1,1),xr(1,2),'g*',xr(2,1),xr(2,2),'g*')
hold of 



%2.a
function F=EkstremumFunkcii(x,a)
F=x.^(a).*log2(x);
end
clear
global par T
par=0.1;
a=0; b=2;
X=linspace(0,2,100);
Y=EkstremumFunkcii(X,2);
plot(X,Y); grid on;
[x_m,y_m]=fminbnd(@EkstremumFunkcii,0,2);
hold on
plot(x_m,y_m,)
hold of
Y=EkstremumFunkcii(X,4);
plot(X,Y); grid on;
[x_m,y_m]=fminbnd(@EkstremumFunkcii,0,2);
hold on
plot(x_m,y_m,'r*')
hold of

%fminsearch ищет минимум на неограниченном отрезке, когда fminbnd на ограниченном





