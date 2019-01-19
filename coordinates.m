function [t,xk,yk] = coordinates(l,th0,t1,a)
 
syms theta(t)
 
g=9.81;
l=5; % pendulum's stem length
 
if a==1
	[V] = odeToVectorField(diff(theta,t,2)+g/l*theta==0);
	
elseif a==2
	[V] = odeToVectorField(diff(theta,t,2)+g/l*theta==0);
end	
	
f=matlabFunction(V,'vars',{'t','Y'});
 
tspan=[0 t1]; % span for t
y0=[th0 0]; % starting place
 
[t,Y] = ode45(f,tspan,y0);
 
x2=Y(:,1); %theta's values - values that start from pi/4
 
xk=l*sin(x2); %ball's x coordinates
yk=l-l*cos(x2); %ball's y coordinates
