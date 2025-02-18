WITH 

Report (S_ID,Datum,BrojTranskacii) as 
(SELECT sr.ID, ts.datum, COUNT(*)
FROM Shalterski_rabotnik sr JOIN Transakcija_shalter ts on sr.ID = ts.ID_v
GROUP BY sr.ID, ts.datum),

MaxReport (S_ID, MaxTransakcii) as
(SELECT r.S_ID, max(r.BrojTranskacii)
FROM Report r
GROUP BY r.S_ID)

SELECT r.*
FROM Report r join MaxReport mr on r.S_ID = mr.S_ID and r.BrojTranskacii = mr.MaxTransakcii
ORDER BY r.S_ID
