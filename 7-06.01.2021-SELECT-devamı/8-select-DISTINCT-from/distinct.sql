--DISTINCT(alanismi)
--tekrar eden kay�tlar� sadece 1 kez g�sterir

--�RNEK: tablodaki ALAN lari listele
select ALAN from ogrencilerYedek -- alan isimleri �ok tekrar ediyor...
select DISTINCT(ALAN) from ogrencilerYedek -- varsa 1 kere g�ster

-- NOT: birden fazla alana DISTINCT uygularsak her iki alan�n da benzersiz olmas� laz�m
https://www.sqlkodlari.com/05-sql-distinct-kullanimi.asp