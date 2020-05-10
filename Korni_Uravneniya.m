a = 1;
f1 = @(x)x.^2-a;
answ1 = fzero(f1,0);

f2 = @(x)x.^2+2.*x-1-sin(x);
answ2_1 = fzero(f2,0);


f3_a = 'sin(exp(x))';
x=linspace(-3,3,100);
plot(x,eval(f3_a),x,0*x,':'); 
grid on
z=ginput(1);
[answ3_a,fr]=fzero(f3_a,z(1))
hold on
plot(answ3_a,fr,'r*',z(1),z(2),'g*')
hold off


f3_b = 'sin(x.*(1-x))';
x=linspace(0,2*pi,100);
plot(x,eval(f3_b),x,0*x,':'); 
grid on
z=ginput(1);
[answ3_b,fr]=fzero(f3_b,z(1))
hold on
plot(answ3_b,fr,'r*',z(1),z(2),'g*')
hold off

f3_c = 'x.*sin(x) - cos(x)';
x=linspace(0,4*pi,100);
plot(x,eval(f3_c),x,0*x,':'); 
grid on
z=ginput(1);
[answ3_c,fr]=fzero(f3_c,z(1))
hold on
plot(answ3_c,fr,'r*',z(1),z(2),'g*')
hold off

syms x
f4 = x^2 + 1;
x=linspace(-10,10,600);
plot(x,eval(f4),x,0*x,':'); 
grid on
answ4 = solve(f4,0)
hold on
plot(answ4(1),answ4(2),'r*');
hold off

syms x
f5 = cos(x) - exp(0.001+x^2);
x=linspace(-30,30,600);
plot(x,eval(f5),x,0*x,':'); 
grid on
answ5 = solve(f5,0)

%
% Численные методы
%

x=linspace(-5,5,50);
h=0.001; iter=5; eps=0.001;
f1_b=@(x)sin(x)./x;
y=f1_b(x);
plot(x,f1_b(x),x,0*x,':'); grid on
xlabel('x'); ylabel('y')
hold on
y_min=min(y); y_max=max(y);
if y_min<0 y_min=1.1*y_min; 
else y_min=0.9*y_min; end;
if y_max>0 y_max=1.1*y_max; 
else y_max=0.9*y_max; end;
y_lim=([y_min,y_max]);
z=ginput(1); 
x1=z(1);
for i=1:iter
    yh=(f1_b(x1+h)-f1_b(x1))/h;
    x2=x1-f1_b(x1)/yh;
    P=plot(x,f1_b(x1)+yh*(x-x1),':',x1,f1_b(x1),'*',x2,0,'*',x2,f1_b(x2),'o')
    L=line([x2,x2],[0,f1_b(x2)]);
    set(L,'LineStyle',':')
    x1=x2;
    if abs(f1_b(x2))<eps break;
    end
    pause
    delete(P,L);
end
hold off


a = -5; b = 5;
x=linspace(a,b,50);
h=0.001; iter=5; eps=0.001;
f1_c=@(x)1+(1 + sin(x)- cos(x)).^2 - (sin(2.*x) - cos(2.*x) - 0.2).^2;
y=f1_c(x);
plot(x,f1_c(x),x,0*x,':'); 
grid on
xlabel('x'); ylabel('y')
hold on
y_min=min(y); y_max=max(y);
if y_min<0 y_min=1.1*y_min; 
else y_min=0.9*y_min; end;
if y_max>0 y_max=1.1*y_max; 
else y_max=0.9*y_max; end;
axis([a,b,y_min,y_max]);
z=ginput(2); 
z1=z(1,1); z2=z(2,1);
f1=f1_c(z1); f2=f1_c(z2); z=(z1+z2)/2; y=f1_c(z);
P=plot(z1,0,'*',z2,0,'*',z,0,'o')
if f1*f2>0 
    disp('Wrong points');
    return;
end
for i=1:iter
    z=(z1+z2)/2; y=f1_c(z);
    delete(P);
    P=plot(z1,0,'*',z2,0,'*',z,0,'o')
    if y*f1<0
    z2=z;
    else z1=z;
    end
    if abs(f1_c(z))<eps break;
    end
end
hold off