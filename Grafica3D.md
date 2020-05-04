[x1 y1] = meshgrid(-5:0.5:5,-5:0,5:5);
a1= 1; b1 =1, c1 = 1, d1 = 1;
z1 = (-a1*x1 - b1*y1 - d1)/c1;
mesh(z1); 
title('number 1');

[x2a y2a] = meshgrid(-5:0.05:5,-5:0.05:5);
a2a = 1;
z2a = a2a*sin(sqrt(x2a.^2 + y2a.^2))./sqrt(x2a.^2+y2a.^2);
mesh(z2a);
title('number 2a');

[x2b y2b] = meshgrid(-5:0.05:5,-5:0.05:5);
z2b = -x2b.*sin(x2b)-y2b.*cos(y2b);
plot3(x2b,y2b,z2b); 
title('number 2b');

[x3a y3a] = meshgrid(-5:0.05:5,-5:0.05:5);
a3a = 1;
z3a = a3a.*x3a.*exp(-x3a.^2-y3a.^2);
surf(x3a,y3a,z3a);
title('number 3a');

[alfa3b beta3b] = meshgrid(-5*pi:0.5:5*pi,-5*pi:0.5:5*pi);
c3b = 10; a3b = 5;
x3b = a3b.*cosh(alfa3b).*cos(beta3b);
y3b = a3b.*cosh(alfa3b).*sin(beta3b);
z3b = c3b.*sinh(alfa3b);
surfc(x3b,y3b,z3b);
title('number 3b');

[b3c r3c] = meshgrid(-5*pi:0.5:5*pi,0:0.5:10);
p3c = 10;
x3c = r3c.*cos(b3c);
y3c = r3c.*sin(b3c);
z3c = r3c.^2./(2.*p3c);
surf(x3c,y3c,z3c);
title('number 3c');

[alfa3d beta3d] = meshgrid(-1:0.05:1,-1*pi:0.05:1*pi);
a3d = 5; b3d = 5;
x3d = a3d.*alfa3d.*cosh(beta3d);
y3d = b3d.*alfa3d.*sinh(beta3d);
z3d = alfa3d.^2;
mesh(x3d,y3d,z3d);
title('number 3d');

[u3e v3e] = meshgrid(0:0.05:6,-6:0.05:6);
a3e = 5; 
x3e = a3e.*u3e.^2;
y3e = 2.*a3e.*u3e;
z3e = v3e;
mesh(x3e,y3e,z3e);
title('number 3e');

[u3f v3f] = meshgrid(0:0.05:8,-4*pi:0.05:2*pi);
a3f = 5; b3f = 5;
x3f = (a3f+b3f.*cos(v3f)).*cos(u3f);
y3f = (a3f+b3f.*cos(v3f)).*sin(u3f);
z3f = b3f.*sin(v3f);
mesh(x3f,y3f,z3f);
title('number 3f');

[x4 y4] = meshgrid(-1:0.01:1,-1:0.01:1);
a4 = 2*pi;
r4 = sqrt(x4.^2+y4.^2);
f4 = (2.*besselj(1,a4.*r4(:))./r4(:)).^2;
mesh(x4,y4,reshape(f4,size(x4)));
set(gca,'Zscale','Log');


[x5, y5, z5] = meshgrid(-3:0.05:3,-3:0.05:3,-3:0.05:3);
F=-x5.^2.*z5.^3 - (9.*y5.^2.*z5.^3)./80+(x5.^2 + (9.*y5.^2)./4 + z5.^2 - 1).^3;
C=0;
hpatch = patch(isosurface(x5,y5,z5,F,C));
isonormals(x5,y5,z5,F,hpatch);
set(hpatch,'FaceColor','red','EdgeColor','none');
