n=1:100
R=((10*pi).^n+1)./factorial(n+1)
lnR=log10(R)
plot(n,lnR,LineWidth=1)

%title('Log of Error vs n-order of Taylor Series')
xlabel('Order of Taylor Series for sin(x)')
ylabel('log(Error)')
hold on
n_=ceil(interp1(lnR,n,-8))
plot(n_,-8,'s')
legend('log(error)', 'error=10^-8')
fontsize(14,'points')