%EN.M - Program untuk menghitung energi suatu citra
function energi=en(X)
[m,n]=size(X);
z=m*n;
s=sum(sum(X.^2));
energi=s/z;