
use �irket
select * from Personel
SELECT * FROM PERSONEL
SELECT * FROM Personel
SELECT * from Personel
SeLECT * from Personel
select top 5 * from Personel
select top 2 * from Personel
select top 11 * from Personel
select * from Personel
select Ad from Personel
select upper(Ad) from Personel
select lower(Soyad) from Personel
select distinct Ad from Personel
select Ad, Soyad from Personel
select distinct Ad, Soyad from Personel
SeLECT * from Personel
select SubeKodu as �ube Numaras� from Personel
select SubeKodu as ��ube Numaras�� from Personel
select SubeKodu as '�ube Numaras�' from Personel
select SubeKodu �ube from Personel
select SubeKodu [�ube] from Personel
select Ad, Soyad, Maas from Personel
select Ad, Soyad, YeniMaas= (Maas*2) from Personel
select Ad, Soyad, YeniMaas= ((Maas*2)-(Maas-200)) from Personel
SELECT Ad, 'adl� ki�inin maa��', Maas, 'TL dir.' from Personel
SELECT * INTO #Personeller from Personel
select * from #Personeller
drop table #Personeller
select Ad, Soyad from Personel
select Ad + Soyad As �al��an from Personel
select concat(ad,soyad) As �al��an from Personel
select Ad + Maas from Personel
select concat(ad,Maas) from Personel
select Ad + convert(nvarchar, Maas) from Personel
select Ad + cast(Maas as nvarchar ) from Personel
select ad as isim, soyad soyisim from Personel
select concat(ad,soyad) as Personel ,Maas from Personel
select concat(ad,soyad),Maas+20 from Personel
select concat(ad,soyad),2*(Maas+20) YeniMaas from Personel
select concat(ad,soyad),2*(Maas+20) YeniMaas, Pozisyon from Personel