function y=prob3()
  %problema3
  figure
  Y=[2 1.5 3 3.5 4 3;
  1.5 1 2.5 3 3.25 3.5;
  1.25 1 2.75 3.25 2.75 2.5];

  bar(Y)

  figureno 
  Y=[2 1.5 3 3.5 4 3;
  1.5 1 2.5 3 3.25 3.5;
  1.25 1 2.75 3.25 2.75 2.5];
  barh(Y)

  X=[2 1.5 3 3.5 4 3;1.5 1 2.5 3 3.25 3.5;1.25 1 2.75 3.25 2.75 2.5];
  x=sum(X);
  h=pie(x);
 end