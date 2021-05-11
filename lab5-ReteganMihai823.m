clear all
clc 

choice=input ("first=1, second=2 or third=3");

if choice == 1
  A=[1,2,1;2,5,3; 1,3,3];
  b=[4;10;7];
elseif choice == 2
  A=[2,7,-2;1, -2,2; 3,-2,1];
  b=[7,19,-5];
elseif choice == 3
  A=[1,2,3,4;2,5,1,10; 3,1,35,5;4,10,5,45];
  b=[9;35;-45;189];
endif

[lines,columns]=size(A);
R=chol(A);

if (lines~=columns) || (det(A) == 0)
  error("We cant apply the Cholesky method");
  
endif
 
for i=1:lines
  for j=1:i
    if A(i,j)~=A(j,i)
      error("We cant apply the Cholesky method");
    endif
  endfor
endfor

Aaux= A;

for i = 1:lines-1
  V=Aaux(i+1:lines,i);
  W=Aaux(i,i+1:lines);
  Ai=Aaux(i+1:lines, i+1:lines);
  
  Aii=Ai -V/A(i,i)*W;
  
  A(i+1:lines, i) = V/A(i,i);
  A(i+1:lines, i+1:lines)=Aii;
  
  Aaux=A;
  
  A(i+1,i+1:lines)=A(i+1, i+1:lines)/sqrt(A(i+1,i+1));

endfor











 
 