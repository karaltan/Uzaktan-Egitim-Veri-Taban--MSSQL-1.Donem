select * from ogrencilerYedek

--YGS6-PUAN� 180den d���k olanlar�(k���kt�r) sil
delete from ogrencilerYedek
where [YGS-6PUAN] < 180

--say�sal alanlarda kullan�lacak kar��la�t�rma sembolleri
--k���kt�r <
--b�y�kt�r >
--k���k e�ittir <=
--b�y�k e�ittir >=
--e�it de�ildir <>
--aras�nda > and <

--T�RK�EDO�RU de�eri 22 OLMAYANLARI g�ster
select * from ogrencilerYedek
where T�RK�EDO�RU <> 22

select * from ogrencilerYedek
where NOT T�RK�EDO�RU = 22

--SUZAN UVAT isimli ��rencinin kayd�n� sil
delete from ogrencilerYedek
where ADISOYADI='SUZAN UVAT' --metinsel alan tek t�rnak i�inde

--ismi BURAK olanlar�n yedek al
select * into Buraklar
from ogrencilerYedek
where ADISOYADI LIKE 'BURAK%'

--BURAK lar� g�ster
select * from ogrencilerYedek 
where LEFT(ADISOYADI,5)='BURAK'

-- LIKE 'a%' a ile ba�layanlar
-- LIKE '%r' r ile bitenler
-- LIKE '%ara%'  aras�nda ara kelimesi ge�enler
--LIKE 'BURAK%'

--T�RK�EDO�RUSU 30 ile 40 aras�ndakileri listele
select * from ogrencilerYedek
where (T�RK�EDO�RU>=30 and T�RK�EDO�RU<=40)

select * from ogrencilerYedek
where T�RK�EDO�RU BETWEEN 30 and 40 -- 30 ve 40 dahildir...

--��rencilerin T�RK�E dersinden BO� say�lar�n� g�ster
BO�=40-(T�RK�EDO�RU+T�RK�EYANLI�)

select ADISOYADI,40-([T�RK�EDO�RU]+[T�RK�EYANLI�]) AS [T�RK�E BO� SAYISI]
from ogrencilerYedek

--T�RK�Eden BO� BIRAKMAYANLAR� g�ster
--a) bo� say�s� 0 olanlar
select * from ogrencilerYedek
Where 40-([T�RK�EDO�RU]+[T�RK�EYANLI�])=0
--b) t�rk�edo�ru ve t�rk�eyanl�� toplam� 40 olanlar
select * from ogrencilerYedek
Where ([T�RK�EDO�RU]+[T�RK�EYANLI�])=40

