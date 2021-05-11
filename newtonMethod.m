function solution = newtonMethod(a,b,f,df,epsilon, ddfa)
  
  %step1
  if f(a)*ddfa>0
    x0=a
  else
    x0=b
  endif
  
  %step2
  
  xn=x0;
  xm=x0+2*epsilon;
  
  while abs(xn-xm)>epsilon
    
    xm=xn;
    xn=xm-f(xm)/df(xm);
    
  endwhile
  
  solution=xn;
  
endfunction