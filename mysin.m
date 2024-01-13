function tmp = mysin(x,k)
x=mod(x,2*pi);
% usage: mysin(x,k) calculates the k'th order Taylor series of sin(x) 
tmp = 0;
sign =-1;
% tmp assigns an initial value to the series
% since the sign of the Taylor series terms change in every single term, it
% should be started with -1 and multiplied with -1 at every single step 
for n = 1:2:k
    sign = -1*sign;
    tmp = tmp + sign * (x.^n)./factorial(n);
% since x is taken as a matrix, dots must be used when x is multiplied with
% another term
end