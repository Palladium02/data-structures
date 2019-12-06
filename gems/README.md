Assignment

    Bei "Assignement" handelt es sich um eine eindirektionale Zuordnung, anders als zu der bereits
    vorhandenen Zuordnung ("hash") ist es bei dieser Implementierung möglich alles allem zu zuordnen.

Installation:

    - einfach die "installationHelper"-Datei für das passende Betriebssystem ausführen
    - oder den Befehl "gem install assignment-x.x.x.gem" im Gem-Ordner ausführen

Docs:

    Instanzieren eines neuen Objektes:
    - "Assignment.new()", es können Parameter ("key","value") angegeben werden sind aber nicht erfordert.

    Methoden:
    - push => Die Methode erwartet zwei Parameter ("key","value"), diese werden dann der Zuordnung hinzugefügt.
    - delete => Die Methode erwartet einen Parameter ("key"), über diesen Parameter wird der Eintrag zu diesem "key" gelöscht.
    - merge => Die Methode erwartet einen Parameter ("assignment") von der Klasse "assignment". Die Einträge des übergebenen "assignment"
               werden dem anderen "assignment" angehängt. Kommt ein "key" bereits im ersten "assignment" vor, so wird dieser Eintrag nicht mit übernommen.
    - search => Die Methode erwartet einen Parameter ("key"), über diesen Parameter wird dann der passende "value" gesucht und zurück gegeben.
    - inspect => Diese Methode erwartet keinen Parameter, es wird das Objekt zurück gegeben.
    - values => Diese Methode erwartet keine Parameter, es wird ein Array mit allen "values" zurück gegeben. 
    - keys => Diese Methode erwartet keine Parameter, es wird ein Array mit allen "keys" zurück gegeben.
    - index => Die Methode erwartet einen Parameter ("key"), es wird ein Integer zurück gegeben wenn der Eintrag existiert, wenn nicht eine Fehlermeldung. 
    - includes? => Die Methode erwartet einen Parameter ("key"), es wird ein Boolean zurück gegeben true wenn der Eintrag existiert wenn nicht dann false.
    - size => Dies Methode erwartet keinen Parameter, es wird ein Integer zurück gegeben der die Größe des Assignments beschreibt.
