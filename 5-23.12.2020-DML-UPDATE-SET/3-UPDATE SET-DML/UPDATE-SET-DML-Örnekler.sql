
--�RNEK: Ahmet Tevfik UZUN ki�isini Ahmet Tevfik KISA olarak de�i�tir/g�ncelle
update ogrencilerYedek
set ADISOYADI='AHMET TEVF�K KISA' where ADISOYADI='AHMET TEVF�K UZUN'

--�RNEK: U�UR A�IK ki�isinin alan�n� �N�AAT TEKNOLOJ�LER� yap
update ogrencilerYedek
set ALAN='�N�AAT TEKNOLOJ�LER�' where ADISOYADI='U�UR A�IK'

--SORU: LYSDURUM lar�n� g�ncele
--�ART: G�REB�L�R:YGS-1PUAN 180 veya �st� olmal�d�r,
--       G�REMEZ  :YGS-1PUAN 180 alt� olmal�d�r,
update ogrencilerYedek
set LYSDURUMU='G�REB�L�R' where [YGS-1PUAN]>=180
update ogrencilerYedek
set LYSDURUMU='G�REMEZ' where [YGS-1PUAN]<180

select * from ogrencilerYedek

--LYS giremeyecekleri ayr� bir tabloya, girecekleri ayr� bir tabloya at
--a)
select * into LYSG�REMEZ
from ogrencilerYedek
where LYSDURUMU='G�REMEZ'
--b)
select * into LYSG�REB�L�R
from ogrencilerYedek
where LYSDURUMU='G�REB�L�R'

--�rnek BURAK AKY�Z'�n T�RK�E dersi verilerini do�ru=34 ve yanl��=3 olarak de�i�tir
update ogrencilerYedek
set T�RK�EDO�RU=34,T�RK�EYANLI�=3
where ADISOYADI='BURAK AKY�Z'
--T�RK�ENETi unutmayal�m
update ogrencilerYedek
set T�RK�ENET=T�RK�EDO�RU-(T�RK�EYANLI�/4)
where ADISOYADI='BURAK AKY�Z'
--TOPLAMNETi unutmayal�m
UPDATE ogrencilerYedek
SET TOPLAMNET=T�RK�ENET+SOSYALNET+MATEMAT�KNET+FENNET
where ADISOYADI='BURAK AKY�Z'

-- di�er alanlar� da kontrol etmeyi unutmayal�m


