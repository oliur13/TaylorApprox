x = 0:0.1:10*pi;
%y=x/100;
func = @log;
myfunc =@myln1;
nval = 150;
approx = myfunc(x,nmax=nval);
figure(1)
plot(x, func(x),x,approx,LineWidth=1)
legend("F(x)","f(x) O(x^{"+string(nval)+"})")
xlabel('Value of x')
ylabel('Value of ln(x)')
fontsize(14,'points')
figure(2)
plot(x,log10(abs(func(x)-approx)),LineWidth=1)
xlabel('Value of x')
ylabel('Log10[F(x) - f(x)]')
fontsize(16,'points')
legend("n=150 approximation of ln(x)")
