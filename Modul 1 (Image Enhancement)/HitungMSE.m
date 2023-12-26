%HITUNGMSE - Fungsi untuk menghitung nilai MSE dari dua buah citra
function NilaiMSE=HitungMSE(Citra,CitraRef);
[tinggi,lebar]=size(Citra);
NilaiSSE=sum(sum((double(Citra)-double(CitraRef)).^2));
NilaiMSE=NilaiSSE/tinggi/lebar;