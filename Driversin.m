x = 0:0.1:10*pi;
func = @sin;
myfunc =@mysin;
nval = 31;
approx = myfunc(x,nmax=nval);
figure(1)
plot(x, func(x),x,approx,LineWidth=1)
legend("F(x)","f(x) O(x^{"+string(nval)+"})")
xlabel('Value of x')
ylabel('Value of sin x')
fontsize(14,'points')
figure(2)
plot(x,log10(abs(func(x)-approx)),LineWidth=1)
fontsize(14,'points')
%title("Log10 [F(x) - f(x) ] ")
xlabel('Value of x')
ylabel('Log10[F(x) - f(x)]')
figure(3)
plot(x,mysin(x,nval=5))
