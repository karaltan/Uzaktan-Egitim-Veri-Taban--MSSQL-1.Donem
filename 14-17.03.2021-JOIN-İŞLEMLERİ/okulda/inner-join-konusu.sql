select * from OGRENCILER
select * from DERSLER
select * from DERS_OGRENCI
--virg�lden sonra 2 tablo yazarsam ne olur?
select * from OGRENCILER , DERS_OGRENCI
select * from DERSLER D inner join DERS_OGRENCI D� on D.id=D�.ders_id

SELECT * FROM OGRENCILER � 
INNER JOIN DERS_OGRENCI D� ON �.id=D�.ogrenci_id 
INNER JOIN DERSLER D ON D.id=D�.ders_id
