--INSERT KULLANIMLARI

--1) alan isimleri verilmek zorunda de�ildir
-- !!! o halde alan s�ras�na g�re de�er eklemek laz�m!!!
INSERT INTO Kisiler VALUES (2,'karaltan2','karaltan@hotmail.com2','2020-12-02',25,1)

-- * otomatik artan alan ismi zaten verilmez/atlan�r

--2) alan isimleri kar���k s�rada verilebilir, 
-- ama de�erleri de o s�raya g�re verilmeli
INSERT INTO Kisiler(PersonelID,Email,KayitTarih,KullaniciAd,Yas,EvliMi) 
VALUES (3,'karaltan@hotmail.com3','2020-12-03','karaltan3',25,1)
--tarihler y�l-ay-g�n �eklinde g�nderilir

--3) default de�eri olan alanlar� eklerken o alan atlan�r...
-- null yazmak o alan�n de�erini NULL yapar

-- HATALI KULLANIM:
--INSERT INTO Kisiler VALUES (4,'karaltan4','karaltan@hotmail.com4',null,35,1)
--DO�RUSU:
INSERT INTO Kisiler(PersonelID,KullaniciAd,Email,Yas,EvliMi) 
VALUES (5,'karaltan4','karaltan@hotmail.com4',35,1)

--bo� de�er g�nderince tarih tpinin ilk de�erini al�r...
INSERT INTO Kisiler(PersonelID,KullaniciAd,Email,KayitTarih,Yas,EvliMi) 
VALUES (6,'karaltan6','karaltan@hotmail.com6','',45,1)

INSERT INTO Kisiler(PersonelID,KullaniciAd,Email,KayitTarih,Yas,EvliMi) 
VALUES (7,'karaltan7','karaltan@hotmail.com7',' ',55,1)

-- de�er olarak haz�r fonksiyon g�nderilebilir...
INSERT INTO Kisiler 
VALUES (99,'karaltan99','karaltan@hotmail.com99',GETDATE(),45,1)

--4) birden fazla kay�t eklemek
INSERT INTO Kisiler(PersonelID,KullaniciAd,Email,KayitTarih,Yas,EvliMi)
VALUES 
(8,'karaltan8','karaltan@hotmail.com8','2020-12-08',45,1),
(9,'karaltan9','karaltan@hotmail.com9','2020-12-09',55,1),
(10,'karaltan10','karaltan@hotmail.com10','2020-12-10',55,1)

select * from kisiler

--5) ba�ka tablonun kay�tlar�n� kendi tabloma almak/tablo kopyalamak/yedeklemek

SELECT *
INTO ogrencilerYedek
FROM ogrenciler



