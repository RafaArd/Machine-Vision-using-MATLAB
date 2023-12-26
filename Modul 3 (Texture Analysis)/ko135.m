%ko135.m - MATRIKS KOOKURENSI ARAH 135 DERAJAT
function MatriksHasil=ko135(GambarAsli)
GambarAsli=double(GambarAsli);
Temp=zeros(256);
[tinggi,lebar]=size(GambarAsli);
for i=2:tinggi
for j=2:lebar
p=GambarAsli(i,j)+1;
q=GambarAsli(i-1,j-1)+1;
Temp(p,q) = Temp(p,q)+1 ;
Temp(q,p) = Temp(q,p)+1 ;
end
end
JumlahPixel=sum(sum(Temp));
MatriksHasil=Temp/JumlahPixel;