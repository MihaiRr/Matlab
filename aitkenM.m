
%f-@(x) x .^ (1/3)

function [A, y, z] = aitkenM(f,ak,err,x)
  %step1
  m=length(ak);
  A=zeros(m);
  
  %step2
  for i=1:m
    A(i,1)=f(ak(i));
  endfor
  
  %step3
  for i=1:m
    for j=2:i
      M=[A(i,j-1),x-ak(i); A(j-1, j-1), x-ak(j-1)];
      A(i,j)=det(M)/(ak(i)-ak(j-1));
    endfor
    
    if (i>1) && (abs(A(i,i)-A(i-1,i-1))<err) 
      y=i
      A(1:y, 1:y)
      z=A(i,i)
      return
    endif
  endfor
  
  A
  y=m;
  
  %step5
  z1=zeros(1,m);
  for i=1:m
    z1(i)=A(i,i);
  endfor
  
  %step6
  
  z=z1(end)
    

endfunction



















