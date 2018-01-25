clear;
clc;
hold on;
x = zeros(2,100);
p=0:0.01:1;
[x(1,:), x(2,:)] = textread('Dateset2.txt','%f%f','delimiter',',','headerlines', 1);
A=[power(x(1,:),8);power(x(1,:),7);power(x(1,:),6);power(x(1,:),5);power(x(1,:),4);power(x(1,:),3);power(x(1,:),2);power(x(1,:),1);power(x(1,:),0)];
b=[x(2,:)'];
W=inv(A*A')*A*b;
q=W(1).*p.^8+W(2).*p.^7+W(3).*p.^6+W(4).*p.^5+W(5).*p.^4+W(6).*p.^3+W(7).*p.^2+W(8).*p.^1+W(9);
plot(p,q)
plot(x(1,:), x(2,:),'.')
e=A'*W-b;
sum=0;
for i=1:100
    sum=sum+e(i)^2;
end
sum=sum/100;