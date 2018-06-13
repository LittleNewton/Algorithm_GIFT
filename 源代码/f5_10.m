% f5_10 
% Copyright S. Nakamura, 1995
set(gcf, 'NumberTitle','off','Name', 'Figure 5.10')

clear, clf, hold off
x = 0.8:0.1:3.2;
y1 = log(x);
y2 = 3 + exp(x/5);
text(x(1)-0.4 ,y1(1),'y=c(x)')
text(x(1)-0.4 ,y2(1),'y=d(x)')
hold on
plot(x,y1)
plot(x,y2)
plot(x,0.5*(y1+y2))
xp=[1, 2, 3];
ytp =  3 + exp(xp/5);
ybt = log(xp);
ymd = 0.5*(ytp + ybt);

for k=1:3
xp1=xp(k)*[1 1 1];
yp1=[ybt(k), 0.5*(ybt(k)+ytp(k)), ytp(k)];
plot(xp1,yp1)
plot(xp1,yp1,'o')
plot([xp1(1), xp1(1)],[ yp1(1),-1], ':')
for m=1:3
text(xp1(m),yp1(m)-0.2, ['(', int2str(k),',', int2str(m),')'])
end
end

text(0.9, -0.8, 'x=a')
text(2.9, -0.8, 'x=b')
xlabel('x')
ylabel('y')
axis([0 4, -1 5])
%print fig5_10.ps
