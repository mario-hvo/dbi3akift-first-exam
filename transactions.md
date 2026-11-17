## Aufgabe 4
**Problem bei View**: Beim View sieht man nicht warum er langsam ist. Wenn man bestimmte Spalten nicht anzeigen lässt, kann die verwaltung damit nicht arbteiten.

**Problem bei keiner Transaction**: Wenn das System einen Ausfall hat oder einen Fehler ist bei einer Tabelle schon update ausgeführt und was insertet aber bei der anderen Tabelle wo das zusammenhängt wurde nichts gemacht. Das würde gegen ACID verstoßen.

**Wichtig E-mail zusammen**: Wichtig wenn eine E-mail ankommt muss das alles zusammen passieren: (speichern, Absender Empfänger zuordnen, Konversation zuweisen, Konversation anlegen wenn keine vorhanden). Wenn das zwischen wo abbricht ist die Datenbank unvollständig

**Was ist Transaction**:
Man schreibe BEGIN um eine Transaction zu starten und macht einen Commit am ende, bei Fehler kann man ROLLBACK machen. Eine Transaction behandelt die verschiedenen SELECTS, UPDATE, INSERT, als ein Paket. Bei Fehler oder Absturtz wird ROLLBACK gemacht der alte stand geladen. (Journal)

BEGIN TRANSACTION;

SELECT CASE
WHEN NOT EXISTS (
    SELECT 1 FROM mailbox WHERE = conversations.account_id = mailboxs.accoint_id
)
INSERT INTO neue conversation
Ich überprüfe zuerst ob es eine conversation schon gibt wenn nein erstelle eine
