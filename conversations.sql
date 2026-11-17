/*
Aufgabe 3
Was ist ein View: 
    Ein View ist wie eine eigenständige Tabelle aber immer mit den neusten Daten. Kann man normal aneslecten.
Vorteile:
    Man nutzt es wenn ein SELECT zu lange und kompliziert wird
    Man kann auch Informationen ausblenden
    Man kann ihn immer wieder verwenden
*/

CREATE VIEW IF NOT EXISTS conversations_incoming AS (
    SELECT c.id, c.first_name, c.last_name, COUNT(m.id)
    FROM contacs c
    JOIN conversations cs ON c.id = cs.contac_id
    JOIN messages s ON cs.id = m.id
    WHERE cs.id = m.account_id
)
