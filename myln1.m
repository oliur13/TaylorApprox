
%%% the value of sin(x,nmax=nval,tol=tval) to "tval"
%%% using a Maclaurin expansion of order "nval"
%%% the arguments nmax and tol are both optional
function myln1 = myln1(x,options)
arguments
    x {mustBeNumeric}
    options.tol (1,1) {real} = 1e-6;
    options.nmax (1,1) {mustBeInteger,mustBePositive} = 500;
end



 myln1 = x;
 myln1(myln1<1)=0;
 myln1(myln1>=1 & myln1<10)=log(10);
 myln1(myln1>=10)=2*log(10);
 %% this is the 1st term in expansion 
 %sign = -1;
 %factn = 1;
 options.tol = 1e-8; %% note tol does not work
 
 for n = 1:options.nmax  %% note we already have 1st term
     %factn = factn*(n-1)*n;
     term = [-(1-x(x<1)).^(n)/n, -(1-x(x>=1 & x<10)/10).^(n)/n,-(1-x(x>=10)/100).^(n)/n];
     myln1 = myln1+ term;
     
   
     if(max(abs(term)) < options.tol)
         disp(max(abs(term-tan(x))))
         disp(n)
         break
     end
 end