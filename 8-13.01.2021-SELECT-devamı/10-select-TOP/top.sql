--TOP sayi
-- a) verilen adet kadar kay�t g�sterir
select * from ogrencilerYedek --199 kay�t g�sterdi
select top 5 * from ogrencilerYedek --ilk 5 kay�t g�sterdi

--�PUCU:
--tablo �st�ne sa� t�klay�nca gelen SELECT TOP 100 ROWS komutundaki de�eri de�i�tirmek i�in;
--Tools-Options-SQL Server Object Explorer-Value for ...

--b)-- verilen y�zde kadar kay�t g�sterir
select * from ogrencilerYedek --199 kay�t g�sterdi
SELECT TOP 25 Percent * FROM ogrencilerYedek --ilk 30 kay�t g�sterdi