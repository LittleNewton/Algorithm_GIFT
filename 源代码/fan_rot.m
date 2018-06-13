% fan_rot plots Figure B.1  
% Copyright S. Nakamura, 1995
set(gcf, 'NumberTitle','off','Name', 'Figure B.1; fan_rot')

clear,clf
colormap jet 
r=0.601:0.1:2;
imax=length(r);
dth=pi/16;
th=-2*dth:dth:2*dth;
[th,zb]=b_design;
jmax=length(th);
%                 minz=-0.5, maxz=0.1
%                 minth=-0.4, maxth=0.4
for i=1:imax
for j=1:jmax
x(i,j)=r(i)*cos(th(j));
y(i,j)=r(i)*sin(th(j));
z(i,j)=zb(j);
end
end
zc=z;
for i=imax-1:imax
for j=1:jmax
x(i,j)=r(imax-2)*cos(th(j));
y(i,j)=r(imax-2)*sin(th(j));
if i== imax, z(i,j)=(zb(j)+zb(jmax+1-j))*0.5;, end
zc(i,j)=1;
end
end
hold on
for k=1:6
angl=60*k;
[xb,yb,zb] = rotz_(x,y,z,angl);
mesh(xb,yb,zb, zc)
end
axis([-1.5,1.5,-1.5,1.5,-1.5,1.5])
[xc,yc,zc]=cylinder(0.595,80);
xc(2,:)=xc(1,:);
yc(2,:)=yc(1,:);
zc(1,:)=-ones(size(xc(1,:)))*0.7;
zc(2,:)=ones(size(xc(1,:)))*0.7;
colr=0.7*ones(size(zc));
mesh(xc,yc,zc, colr*0.6)
mesh(xc*0.95,yc*0.95,zc, colr*0.99)
view([-100,20])






