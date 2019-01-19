# Mathematical-Pendulum
Mathematical Pendulum using MATLAB

g = standard gravity
l = rod's length
theta = the amplitude between the equilibrium position and the rod

Differential function d^2 / dt^2 + g / l*sin(theta) = 0 depicts a mathematical pendulum. The function works when the starting amplitude is 90 or under. 
Otherwise the ball 'falls' straight down wise, the rod wouldn't stay straight and when it would fasten fast there would be movement that couldn't be calculated with this function. 

In this comparison of two pendulum's I have used the function mentioned before as well as an approximation where sin(theta) is replaced by theta by using MATLAB’s function odexy. Both pendulums are given the same beginning values, so their paths are also the same. With that animation it can be noticed that the approximation is faster than the original pendulum. its period’s time is smaller.
