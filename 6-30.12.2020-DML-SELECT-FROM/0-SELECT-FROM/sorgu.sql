--SELECT FROM KOMUTU
-- veri taban�ndaki kay�tlar �zerinde 
-- arama, filtreleme, s�ralama, hesap vb. sorgulama i�lemleri yapmak i�in kullan�l�r

--SELECT g�sterilecekalan(lar) FROM tabloismi WHERE kriter D��ER_KOMUTLAR

--T�M KAYITLARI L�STELEMEK: 
  SELECT * FROM tabloismi
-- * sembol� t�m alanlar� g�ster demektir

--a)
use ygs2011
go
SELECT * FROM ogrenciler
--b)
SELECT SIRANO,ALAN,ADISOYADI,........ ,LYSDURUMU FROM ogrenciler -- yazmaya gerek yok


