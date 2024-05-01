close all;
clear all;
superFig=figure('Position',[480 270 2880 1620])
 tmin=0;
 tmax=3
 tspan=[tmin tmax];
 y0=1
 [t,y]=ode45(@(t,y)myode(t,y),tspan,y0);
 plot(t,y,'ro','Linewidth',1,'Markersize',20);
 set(gca,'linewidth',1,'fontsize',48);
 grid on;
 t_exact=linspace(tmin,tmax);
 y_exact=exp(-2*t_exact);
 plot(t_exact,y_exact,'b:','Linewidth',3,t,y,'Linewidth',1,'Markersize',20);
 set(gca,'linewidth',1,'fontsize',48);
 grid on;