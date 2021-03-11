-- UPDATE SET, bir alandaki veriyi de�i�tirmek (silmek, g�ncellemek, NULL yapmak...)

UPDATE tabloismi SET degisecekalan=yenideger -- where �art� koymazsak t�m kay�tlar etkilenir

--�rnek: 
--patron dedi ki : t�m i��ilere benden %4 zam :)
--�rnek: 
--t�m ��rencilerin puanlar�na 5 ekle

UPDATE tabloismi SET degisecekalan=yenideger WHERE kriter

-- *****************************************--
-- primary key alanlar�n� G�NCELLEMEY�N�Z!!!
-- *****************************************--

-- *** kritere uyan de�i�iklik olmazsa 0 rows affected yazar, hata vermez
-- *****************************************--

SELECT * INTO ogrencilerYedek
FROM ogrenciler 

select * from ogrencilerYedek


--�RNEK: NET Hesaplamalar�n� yap�n�z
--NET =do�rusay�s�-(yanl��/4)
-- SET edilecek alan T�RK�ENET,SOSYALNET,....... alanlar�d�r

UPDATE ogrencilerYedek
SET T�RK�ENET=T�RK�EDO�RU-(T�RK�EYANLI�/4)

UPDATE ogrencilerYedek
SET SOSYALNET=SOSYALDO�RU-(SOSYALYANLI�/4)

UPDATE ogrencilerYedek
SET FENNET=FENDO�RU-(FENYANLI�/4)

UPDATE ogrencilerYedek
SET MATEMAT�KNET=MATEMAT�KDO�RU-(MATEMAT�KYANLI�/4)

----�RNEK: TOPLAMNET Hesaplamalar�n� yap�n�z
UPDATE ogrencilerYedek
SET TOPLAMNET=T�RK�ENET+SOSYALNET+MATEMAT�KNET+FENNET

select * from ogrencilerYedek

-- S�Z YAPINIZ: herhangi bir dersteki NET'i eksiye d��enleri g�ster!!!
