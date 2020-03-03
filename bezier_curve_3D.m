%Generation of the Bézier curve given a set of points

function [x,y,z]=bezier_curve_3D(path,t)

%Polynomial order
np_1=size(path,1)-1;

%Initialization
x=zeros(size(t,1),1);
y=zeros(size(t,1),1);
z=zeros(size(t,1),1);

%Define Bézier curve
for i=0:np_1
    
    %Bernstein polynomial basis
    Bern_basis=factorial(np_1)/(factorial(np_1-i)*factorial(i))*t.^i.*(1-t).^(np_1-i);
 
    %Bézier curve components
    x=x+Bern_basis*path(i+1,2);
    y=y+Bern_basis*path(i+1,1);
    z=z+Bern_basis*path(i+1,3);
    
end



