
-- �rne�in ad� �hlas olan ��rencinin vize notuna 10 puan ekleyelim;

UPDATE ogrenci SET vize = vize +10 WHERE ad = '�hlas'

-- buada dikkat edilmesi gereken nokta �udur. e�er �hlas ad�nda ba�ka ��renci de varsa 
-- onun da puan� de�i�ir

UPDATE ogrenci SET vize = vize +10 WHERE ad = '�hlas' and soyad='�z'

-- �eklinde daha do�ru olacakt�r. ama en do�rusu

UPDATE ogrenci SET vize = vize +10 WHERE ogr_no=1

-- �eklindedir..