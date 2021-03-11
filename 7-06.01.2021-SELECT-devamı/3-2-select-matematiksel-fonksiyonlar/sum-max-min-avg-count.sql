--ALANLARDA MATEMAT�KSEL FONKS�YONLAR
select * from ogrencilerYedek

--SUM()
--verilen alandaki de�erlerin toplam�n� d�nd�r�r, TEK B�R DE�ER D�NER
SELECT SUM(TOPLAMNET) as [T�M ��RENC�LER�N NET TOPLAMLARI] FROM ogrencilerYedek

--�r�nler tablosundaki t�m kazan� ne kadard�r?
select SUM(KAZAN�) as [TOPLAM KAZANCINIZ] from URUNLER
--toplam kazanc�n %20si vergi olacakt�r hesapla
select SUM(KAZAN�)*0.20 as [TOPLAM VERG�N�Z] from URUNLER

--AVG() AVeraGe
--verilen alandaki de�erlerin ortalamas�n� d�nd�r�r, TEK B�R DE�ER D�NER
SELECT AVG(T�RK�EDO�RU) as [ORTALAMA T�RK�E DO�RU] FROM ogrencilerYedek
SELECT AVG(MATEMAT�KDO�RU) as [ORTALAMA MATEMAT�K DO�RU] FROM ogrencilerYedek
SELECT AVG(FENDO�RU) as [ORTALAMA FEN DO�RU] FROM ogrencilerYedek
SELECT AVG(SOSYALDO�RU) as [ORTALAMA SOSYAL DO�RU] FROM ogrencilerYedek

--MAX() MAXimum
--verilen alandaki en y�ksek de�eri d�nd�r�r, TEK B�R DE�ER D�NER

--�RNEK: en y�ksek T�RK�ENET de�erini bulun
SELECT MAX(T�RK�ENET) as [YAPILAN EN Y�KSEK T�RK�E NET DE�ER�] FROM ogrencilerYedek
-- bu en y�ksek neti yapan� g�steriniz
select * from ogrencilerYedek where T�RK�ENET=37.75
--����E SORGULARLA YAPILIR
select * from ogrencilerYedek where T�RK�ENET=?????

select ALAN,ADISOYADI,T�RK�ENET from ogrencilerYedek where T�RK�ENET=(SELECT MAX(T�RK�ENET)FROM ogrencilerYedek)

--MIN() MINimum
--verilen alandaki en k���k de�eri d�nd�r�r, TEK B�R DE�ER D�NER

--�RNEK: en d���k T�RK�ENET de�erini bulun
SELECT MIN(T�RK�ENET) as [YAPILAN EN D���K T�RK�E NET DE�ER�] FROM ogrencilerYedek
-- bu en d���k neti yapan� g�steriniz
select * from ogrencilerYedek where T�RK�ENET=5
--����E SORGULARLA YAPILIR
select * from ogrencilerYedek where T�RK�ENET=?????

select ALAN,ADISOYADI,T�RK�ENET from ogrencilerYedek where T�RK�ENET=(SELECT MIN(T�RK�ENET)FROM ogrencilerYedek)

--SOR: en d���k maa� alan�n ismini g�steriniz. 
--(burada asl�nda 2 sorgu vard�r, 1.en d���k maa� nedir? 2.bu maa�� kim al�yor?)
-- 1.en d���k maa� nedir?
select MIN(maas) from personel
--2.bu maa�� kim al�yor?
select isim,soyisim from personel 
where maas=(select MIN(maas) from personel)

--COUNT()
--verilen kritere uyan kay�tlar�n say�s�n� d�nd�r�r
select COUNT(*) as [KAYIT SAYISI] from ogrencilerYedek -- TABLONUN KAYIT SAYISI
select COUNT(*) from ogrencilerYedek where LYSDURUMU='G�REB�L�R'
select COUNT(*) from ogrencilerYedek where LYSDURUMU='G�REMEZ'


