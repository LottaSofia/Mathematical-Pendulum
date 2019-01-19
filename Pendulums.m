close all, clear all

syms theta(t) t

g=9.81;
l=5; % Pendulum's length
th0=pi/4; % Beginning angle
th1=0;

t1=20; % Length of the animation

Dy = diff(theta,t);
eqn= diff(theta,t,2)+g/l*(theta)==0;
cond=[theta(0)==th0, Dy(0)==0];

theta=dsolve(eqn,cond);
Theta=matlabFunction(theta);

y0=[th0 th1]; % Place at the beginning 

a=2;

% l='Pendulums stem length'
% th0='Starting angle'
% t1= Length of the animation
% a = (1) theta OR (2) sin(theta)

[t2,xk2,yk2] = coordinates(l,th0,t1,a);

alku.x=0;
alku.y=l;
q=1;  % Wen using odexy the pendulum 
       % stays still for a moment so we don't take
       % first values


for t=1:.1:t1
    px2=[alku.x xk2(q)];
    py2=[alku.y yk2(q)];
    p1=plot(px2,py2,'r')
    hold on
    plot(xk2(q),yk2(q),'ro')
    
    xk=l*sin(Theta(t)); % ball's x coordinate
    yk=l-l*cos(Theta(t)); % ball's y coordinate
    px=[alku.x xk];
    py=[alku.y yk];
    p2=plot(px,py,'k')
    hold on
    plot(xk,yk,'ko')
    axis([-4 4 -2 6])
    legend([p1 p2],'sin(theta)','theta')
    hold off
    
    drawnow
    q=q+1;
    pause(0.09)
    if q==166
        break
    else
        continue
    end
end
