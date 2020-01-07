Es funktioniert so:
öffnet man die Jar-Datei wird man aufgefordert eine ASM-Datei auszusuchen. Je nachdem wie viele Zeilen in der ASM-Datei sind braucht das Programm länger (bei Pong so um die 12 Sekunden).
Danach öffnet sich eine GUI mit  Text Feldern.
Im ersten Textfeld wird der Dateiinhalt aus der ASM-Datei angezeigt
Im zweiten Textfeld wird die dementsprechende Symbol Tabelle angezeigt
und im dritten Textfeld wird die Binäre Repräsentation angezeigt.
Unter dem 3. Feld gibt es einen Button um das ganze als Hack-Datei abzuspeichern.
Das Problem was ich nicht lösen konnte war folgendes:
Die erstellte Hack-Datei hat leider eine Zeile zu viel falls man sie mit dem Assembler-Tool öffnen will. Man muss die erstellte Hack-Datei öffnen und die letzte leere Zeile (es gibt eigentlich 2 leere Zeilen am Ende man muss aber nur eine entfernen) entfernen dann funktioniert eigentlich alles.