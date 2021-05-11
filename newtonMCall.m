a=1;
b=3;
f=@(x) x.^6 - x - 1;
df=@(x) 6* x.^-1;
epsilon=0.0001;
ddfa=30;

solution=newtonMethod(a,b,f,df,epsilon, ddfa);
fprintf("solution: %2.20e\n", solution)