-- bakiye sorgusu

-- 1500tl �ekme �rne�i
UPDATE Hesaplar SET bakiye=bakiye-1500
WHERE hesap_no=1994

-- 1500tl yat�rma �rne�i
UPDATE Hesaplar SET bakiye=bakiye+1500
WHERE hesap_no=1454