--INSERT INTO komutu bir tabloya kayıt(lar) ekler

INSERT INTO tabloismi (alan1,alan2,alan3,....) VALUES (değer1,değer2,değer3,...)

-- alan simleri ve değerler arasına , konur
-- değerleri girerken alantiplerine DİKKAT EDİNİZ!!!
-- sayısal değerler aynen yazılır, metinsel/date değerler tek tırnak içine alınır
-- otomatik artan alan varsa orası yazılmaz/atlanır

INSERT INTO Kisiler(PersonelID,KullaniciAd,Email,KayitTarih,Yas,EvliMi) 
VALUES (1,'karaltan','karaltan@hotmail.com','2020-12-01',25,1)

--(1 row(s) affected) derse kayıt tamamlanmıştır
--kayıt listelemek
select * from kisiler