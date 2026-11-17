## Aufgabe 1
**Annahme Anzahl:** \
Pro Tag werden warhscheinlich bis zu 50 oder mehr nachrichten versendet.
Eine Nachricht ohne Anhang und ohne bodry hat 49Bytes mit einem Body + 10MB
    - Meine Annahme jede Spalte verbraucht um die daten zu speichern 4Bytes
    - Mit Anhang wächst die größer beim senden von Bildern +4MB
        - Bei großen Datein kann das auch über 1GB werden
        
**Schätzung auf 10 Jahre:** \
Grobe rechnung mit der Annahme das die Nachricht einen Body hat mit 500 Zeichen und als anhang ein Bild mit 4MB
Message (ohne body): 49Bytes
Body: 500 * 4 = 2000Bytes
1 Bild (4MB): 4 * 1024 * 1024 = 4_194_304Bytes
Zusammen pro nachricht = 4_196_353Bytes pro Nachricht ungefähr = 4,002MB

Am Tag werden 50 nachriten in dem Schema gesendet:
4.002MB * 50 = 200,1MB Pro Tag
200.1MB * 365 = 73_035,66MB Pro Jahr
73_035,66MB * 10 = 730_356,62 IN 10 Jahre