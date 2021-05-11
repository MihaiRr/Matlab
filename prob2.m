function y=prob2()
  %problema2

x=0:pi/40:2*pi;
f=e.^(cos(x))-2*cos(4*x)+sin(1/12*x).^5
subplot(2,2,1)
polar(x,f)

subplot(2,2,2)
x=0:pi/40:2*pi;
f=e.^(cos(x))-1*cos(2*x)+sin(1/4*x).^5
polar(x,f)

subplot(2,2,3)
x=0:pi/40:2*pi;
f=e.^(cos(x))-3*cos(1*x)+sin(1/2*x).^5
polar(x,f)
end


