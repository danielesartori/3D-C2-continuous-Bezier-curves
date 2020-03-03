%Given two paths define new paths enforcing C0, C1, C2 continuity

function [p1_new,p2_new,pc1,pc2]=points_continuity_derivative_3D(p1,p2)
       

%Polynomial order
n1=size(p1,1)-1;
n2=size(p2,1)-1;

%Point which guarantees first order derivative continuity
yc1=((n1+1)*p1(end,1)+(n2+2)*p2(1,1))/((n1+1)+(n2+2));
xc1=((n1+1)*p1(end,2)+(n2+2)*p2(1,2))/((n1+1)+(n2+2));
zc1=((n1+1)*p1(end,3)+(n2+2)*p2(1,3))/((n1+1)+(n2+2));
pc1=[yc1 xc1 zc1];

%Point which guarantees second order derivative continuity 
yc2=(n1+1)*(n1+1-1)/((n2+2)*(n2+2-1))*(p1(end-1,1)-2*p1(end,1)+yc1)-(yc1-2*p2(1,1));
xc2=(n1+1)*(n1+1-1)/((n2+2)*(n2+2-1))*(p1(end-1,2)-2*p1(end,2)+xc1)-(xc1-2*p2(1,2));
zc2=(n1+1)*(n1+1-1)/((n2+2)*(n2+2-1))*(p1(end-1,3)-2*p1(end,3)+zc1)-(zc1-2*p2(1,3));
pc2=[yc2 xc2 zc2];

%Expand path with new points
p1_new=p1;
p1_new(end+1,:)=pc1;
p2_new=p2;
p2_new(2:end+1,:)=p2;
p2_new(1,:)=pc1;
p2_new(4:end+1,:)=p2_new(3:end,:);
p2_new(3,:)=pc2;