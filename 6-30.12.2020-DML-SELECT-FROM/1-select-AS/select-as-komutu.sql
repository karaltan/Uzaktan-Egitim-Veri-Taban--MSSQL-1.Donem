-- AS KOMUTU(ALIAS NAME): alanlar takma isim konur, sasdece g�r�n�m� etkiler,
-- ger�ekte alan ad� de�i�tirmez
-- alter table ..... gibi de�il

SELECT * FROM ogrenciler

-- alan�, ad�soyad�, lysdurumunu g�ster
-- o zaman * yerine g�sterilecek alanlar yaz�l�r 
-- ALANLARIN ARASINA V�RG�L KONUR

select alan AS ALANI,ad�soyad� AS [�S�M SOY�S�M],lysdurumu AS LYS_DURUM from ogrenciler

-- AS KULLANMADAN TAKMA �S�M VERMEK
select alan ALANI,ad�soyad� [�S�M SOY�S�M],lysdurumu LYS_DURUM from ogrenciler

-- = KULLANARAK TAKMA �S�M VERMEK
select ALANI=alan,[�S�M SOY�S�M]=ad�soyad�,LYS_DURUM=lysdurumu from ogrenciler

-- TABLOYA ALIAS KULLANMAK
select OGR.ALAN,OGR.ADISOYADI from ogrenciler AS OGR