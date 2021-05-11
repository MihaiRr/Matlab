function L=LegPolynomial(n,x) 
  if n==0
    L=ones(size(x));
    return
  elseif n==1 
    L=x;
    return
  endif
  
  L=(((2*n)-1) * x .* LegPolynomial(n-1,x) - (n-1) * LegPolynomial(n-2,x))/n;
  
endfunction
