-- unique key k�s�tlamas�
alter table bolum
add constraint UK_bolum_bolumadi UNIQUE (bolum_adi)

--tablo olu�tururken k�s�tlama eklemek
----------------------------------------------------
CREATE TABLE Personeller
(
PersonelID INT PRIMARY KEY NOT NULL,
Ad VARCHAR(255) NOT NULL,
Soyad VARCHAR(255) NOT NULL,
KullaniciAd VARCHAR(10) NOT NULL UNIQUE,
Email VARCHAR(50),
Adres VARCHAR(255),
Sehir VARCHAR(255),
);