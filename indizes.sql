-- Aufgabe 2
/*
1. Der Indizes mach den Zugriff auf eine Spalter Schneller, indem er einen Daten Baum macht
2. Bei 500_000 Datensätzn wird pro zugriff die suche halbiert jedesmal bis er gefunden worden ist
3. Nachteile: UPDATE, INSERT, DELTE sind langsam, weil jedes mal alles wieder richtig in den indizes tree platzieren
- Der verbraucht Speicherplatz verdoppelt sich fast
*/

-- Diesen Index würde ich machen damit man schneller die geflaggten nachrichten finden kann
CREATE INDEX flagged_IND ON messages(flagged) 
-- Dieser Index hilft mir alle Nachrichen schneller zu finden die gelesen/nicht gelesen sind
CREATE INDEX read_IND ON messages(read) 
-- Diser Index hlft mir alle gelöschten Nachrichten schneller zu finden
CREATE INDEX deledet_IND ON messages(deledet) 
-- Anwenungsbeispiel: Der User will sich nur alle ungelesen nachrichten anschauen
CREATE INDEX read_IND ON messages(read) 