function y=lab3_prob3()
  [u,v]=meshgrid(0:pi/40:2*pi);
  %a
  subplot(2,2,1)
  
  
  f1=cos(u).*cos(v)
  f2=sin(u).*cos(v)
  f3=2*u+sin(v)
  surf(f1,f2,f3)
  %b
  subplot(2,2,2)
  
  f1=2.*cos(u).*cos(v)
  f2=2.*sin(u).*cos(v)
  f3=u+sin(v)
  surf(f1,f2,f3)
  %c
  
  subplot(2,2,3)
  f=cos(u).*cos(v) , sin(u).*cos(v) , sin(v)
  f1=cos(u).*cos(v)
  f2=sin(u).*cos(v)
  f3=sin(v)
  surf(f1,f2,f3)
  
 
end