p1 = [1,-3.55,5.1,3.1];
x1 = linspace(-30,30,90);
f1 = polyval(p1,x1);
plot(x1,polyval(p1,x1));
hold on
format short
r1 = roots(p1);
pr1 = r1(imag(r1) == 0);
plot(pr1,polyval(p1,pr1),'r.','MarkerSize', 20);

p2_1_1 = [2,-3,4,-5,6];
p2_1_2 = [1,-3,1];
[q2_1,r2_1]= deconv(p2_1_1,p2_1_2);
disp(q2_1);
disp(r2_1);
p2_2_1 = [1 -3 -1 -1 ];
p2_2_2 = [3 -2 1];
[q2_2,r2_2]= deconv(p2_2_1,p2_2_2);
disp(q2_2);
disp(r2_2);

syms x;
p3_1 = 1*x^4 -2*x^3 +6*x^2 -10*x + 16;
x03_1 = 4;
hor3_1 = horner(p3_1);
znachenie3_1 = subs(hor3_1,x03_1)
proizvodnay3_1 = subs(diff(hor3_1),x03_1)

n4_1 = 3;
p4_1 = [1 0 -3 0 3 0 -1];
r4_1 = roots(p4_1);
plot(r4_1, polyval(p4_1,r4_1));

p5_1_1 = [1 0 0];
p5_1_2 = [1 4 1 -6];
[r1,p1,k1] = residue(p5_1_1,p5_1_2);
p5_3_1 = [1 3];
p5_3_2 = [1 -1 1 -1];
[r3,p3,k3] = residue(p5_3_1,p5_3_2);
p5_4_1 = [1 0 0];
p5_4_2 = [1 0 0 0 -1];
[r4,p4,k4] = residue(p5_4_1,p5_4_2);

x6_4 = [-1,0,1,2,3];
y6_4 = [6,5,0,3,2];
p6_4 = polyfit(x6_4,y6_4,5);
plot(p6_4);

p7_1 = [1 -6 15 -14];
r7_1 = roots(p7_1);
plot(r7_1,polyval(p7_1,r7_1));
p7_2 = [1 -2 -8 13 -24];
r7_2 = roots(p7_2);
r7_2 = r7_2(imag(r7_2) == 0);
x = min(r7_2):0.9:max(r7_2);
plot(x,polyval(p7_2,x));

n = 5;
matr8 = rand(n);
[v,d,w] = eig(matr8);
p8 = poly(d);

p9_1_1 = [1, 2, -1, -4, -2];
p9_1_2 = [1, 1, -1, -2, -2];
[G1,S1,T1]=gcd(p9_1_1,p9_1_2);
p9_2_1 = [1, 3, 1, 1, 3, 1];
p9_2_2 = [1, 2, 0, 1, 2];
[G2,S2,T2]=gcd(p9_2_1,p9_2_2);
