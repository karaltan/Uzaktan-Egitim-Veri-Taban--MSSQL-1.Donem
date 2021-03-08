-- default de�er k�s�tlamas�

ALTER TABLE bolum
add constraint DF_bolum_konum DEFAULT '�ZM�T' for konum

ALTER TABLE bolum
add constraint DF_bolum_sayi DEFAULT 1000 for sayi

--tablo olu�tururken k�s�tlama eklemek
--------------------------------------------------------
CREATE TABLE Kisiler
(
PersonelID INT PRIMARY KEY NOT NULL,
KullaniciAd VARCHAR(20) NOT NULL,
Email VARCHAR(50),
Sehir VARCHAR(50),
KayitTarih SMALLDATETIME NOT NULL DEFAULT GETDATE()
);
--------------------------------------------------------
--veya alter ile eklemek
ALTER TABLE Personeller
ADD CONSTRAINT DC_KayitTarih DEFAULT GETDATE() FOR KayitTarih

--denemek i�in veri girelim
INSERT INTO Personeller(PersonelID, KullaniciAd, Email, Sehir)
VALUES(1,'SamilAyyildiz','samil.ayyildiz@abc.com', '�stanbul');