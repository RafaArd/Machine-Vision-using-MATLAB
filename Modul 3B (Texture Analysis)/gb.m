%GB.M
%Program untuk menghitung matriks ciri menggunakan filter Gabor.
%Masukan untuk program ini adalah matriks citra (im), pangkat dari
% frekuensi ternormalisasi (power), dan jumlah orientasi (n).
%Keluaran dari program ini adalah matriks ciri yang merupakan nilai
% magnituda dari bagian riil dan imajiner.
%Untuk B? = S? = 30?, nilai orientasi pada variabel z adalah sebesar
% (0.1667*pi), sedangkan untuk B? = S? = 45? adalah (0.25*pi).
function [mag]=gb(im,power,n);
teta=(0.1667*pi)*n;
F=sqrt(2)/2^power;
fx=F;
z=(0.1667*pi)/2;
num=sqrt(log(2));
denum=sqrt(2)*pi*F*tan(z);
sigmay=num/denum;
Bf=1;
alfa=sqrt(0.5*log(2));
nom=sqrt(log(2))*(2^Bf+1);
denom=sqrt(2)*pi*F*(2^Bf-1);
sigmax=nom/denom;
[x,y]=meshgrid(-3:1:3, -3:1:3);
x=round(x);
y=round(y);
xx=x.*cos(teta)+y.*sin(teta);
yy=-x.*sin(teta)+y.*cos(teta);
hx=(1/(2*pi*sigmax*sigmay))*exp(-0.5*((xx.^2/sigmax^2)+(yy.^2/sigmay^2)));
jx=cos(2*pi*fx*xx);
hc=hx.*jx;
kx=sin(2*pi*fx*xx);
hs=hx.*kx;
im_real=conv2(double(im),hc,'same');
im_imag=conv2(double(im),hs,'same');
mag=sqrt((im_real.^2)+(im_imag.^2));
mag=abs(mag)/(max(max(mag)));