select v.ime, v.prezime
from  Shalterski_rabotnik sh join Vraboten v on sh.ID = v.ID join Transakcija_shalter t on t.ID_v = sh.ID join Smetka s on (s.MBR_k = t.MBR_k and s.broj = t.broj) 
WHERE t.tip = 'isplata' and t.suma > 1000 and s.valuta = 'EUR'
ORDER BY v.ime
