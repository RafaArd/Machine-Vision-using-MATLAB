%ko000.m - MATRIKS KOOKURENSI ARAH 0 DERAJAT
function MatriksHasil=ko000(GambarAsli)
GambarAsli=double(GambarAsli);
Temp=zeros(256);
[tinggi,lebar]=size(GambarAsli);
for i=1:tinggi
for j=1:lebar-1
p=GambarAsli(i,j)+1;
q=GambarAsli(i,j+1)+1;
Temp(p,q) = Temp(p,q)+1 ;
Temp(q,p) = Temp(q,p)+1 ;
end
end
JumlahPixel=sum(sum(Temp));
MatriksHasil=Temp/JumlahPixel;