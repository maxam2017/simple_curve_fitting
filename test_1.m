clear;
clc;
hold on;
x = zeros(2,100);
p=0:0.01:1;
[x(1,:), x(2,:)] = textread('Dateset1.txt','%f%f','delimiter',',','headerlines', 1);
A=(8/(2*pi)^0.5)*[gaussmf(x(1,:),[0.125 1]) ;gaussmf(x(1,:),[0.125 0.875]);gaussmf(x(1,:),[0.125 0.750]);gaussmf(x(1,:),[0.125 0.625]);gaussmf(x(1,:),[0.125 0.500]);gaussmf(x(1,:),[0.125 0.375]);gaussmf(x(1,:),[0.125 0.250]);gaussmf(x(1,:),[0.125 0.125]);gaussmf(x(1,:),[0.125 0])];
b=[x(2,:)'];
W=inv(A*A')*A*b;
q=W(1)*gaussmf(p,[0.125 1])+W(2)*gaussmf(p,[0.125 0.875])+W(3)*gaussmf(p,[0.125 0.750])+W(4)*gaussmf(p,[0.125 0.625])+W(5)*gaussmf(p,[0.125 0.500])+W(6)*gaussmf(p,[0.125 0.375])+W(7)*gaussmf(p,[0.125 0.250])+W(8)*gaussmf(p,[0.125 0.125])+W(9)*gaussmf(p,[0.125 0]);
plot(p,q )
plot(x(1,:), x(2,:),'.')
e=A'*W-b;
sum=0;
for i=1:100
    sum=sum+e(i)^2;
end
sum=sum/100;

