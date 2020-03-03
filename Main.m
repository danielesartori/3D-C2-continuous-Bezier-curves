%Main

clc
clear


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Parameters definition

%Control points [y,x,z]
p1=[3 1 4
    2 3 5
    5 3 6];

p2=[4 5 7
    6 7 8
    5 8 8
    6 9 7];

%Number of elements in Bézier curve
nt=50;


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Bézier curves definition

%Curves parameter
t=linspace(0,1,nt)';

%Enforce C2 continuity
[p1_new,p2_new,pc1,pc2]=points_continuity_derivative_3D(p1,p2);

%Bézier curves on new segments
[xb1,yb1,zb1]=bezier_curve_3D(p1_new,t);
[xb2,yb2,zb2]=bezier_curve_3D(p2_new,t);


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Plot

figure(1)
hold on
grid on
box on
plot3(p1(:,2),p1(:,1),p1(:,3),'rx','LineWidth',1.5,'MarkerSize',6)
plot3(p2(:,2),p2(:,1),p2(:,3),'ro','LineWidth',1.5,'MarkerSize',6)
plot3(pc1(:,2),pc1(:,1),pc1(:,3),'rd','LineWidth',1.5,'MarkerSize',6)
plot3(pc2(:,2),pc2(:,1),pc2(:,3),'rd','LineWidth',1.5,'MarkerSize',6)
plot3(p1_new(:,2),p1_new(:,1),p1_new(:,3),'b--','LineWidth',1)
plot3(p2_new(:,2),p2_new(:,1),p2_new(:,3),'k--','LineWidth',1)
plot3(xb1,yb1,zb1,'b','LineWidth',1)
plot3(xb2,yb2,zb2,'k','LineWidth',1)
xlabel('x')
ylabel('y')
zlabel('z')
axis equal
view(-20,25)

