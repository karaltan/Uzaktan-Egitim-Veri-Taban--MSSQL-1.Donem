
--�rnek: �r�n fiyatlar�na %5 zam yap�n�z
-- urunler tablosu
-- urunadi  urunfiyat   urunadet
-- elma		8.88		900
-- armut	9.99		1900
-- portakal	12.5		800

update urunler
set urunfiyat=urunfiyat+(urunfiyat*5/100)
-- t�m �r�nler oldu�u i�in kriter yok

 --�rnek: �r�n fiyatlar�na %2 indirim yap�n�z   
update urunler
set urunfiyat=urunfiyat-(urunfiyat*2/100)