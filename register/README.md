## Howto Sachregister
-> [register](/register)

### Forschungsfragen
* Wie kann man das aktuelle Sachregister abbilden ? 
Das Sachregister der Dresdner Hefte umfasst die Aufsätze der Dresdner Hefte (bis etwa Nr. 125)
nach ihren übergreifenden Themen und behandelten/n Zeitraum/-räumen (8stufig) und ist wie folgt codiert:<br/><br/>
Beispiel ```Landesgeschichte: E – 70/27``` (in Wikidata wären das Mainsubject P921, eine Zeitepoche und Issue P433/Pages P304)

Die Zeitepoche ist indes eine kleine Herausforderung. Zwar gibt es bereits vordefinierte Zeitepochen als Q-Item, wie den Vormärz
oder man könnte auch Zeiten ableiten - z.B. https://www.wikidata.org/wiki/Q34636 (Jugendstil) mit Inception (1890) und EndTime (1910s) -
aber das Umfeld ist zu heterogen, um alle Details in EINER query unterzubringen.

Ein guter Ansatz kommt dabei von @LibrErli, der auf vorher hinterlegte Qualifiers bei den Mainsubjects abhebt und diese mit prov:wasDerivedFrom
auswertet. Dabei wird der o.g. ?DDH_EpocheCode (Buchstabe E) mit einem BIND/IF-Konstrukt ähnlich einer Switch-Anweisung, wie in anderen Programmiersprachen
üblich, ausgelesen.

Oftmals ist als nächstes die Frage - kann man dies auch bei multivalue-Zeitepochen abbilden - ja, geht natürlich: einfach mehrere Werte als Referenz für die Zeitepoche hinterlegen:
https://www.wikidata.org/w/index.php?title=Q111474460&type=revision&diff=1644818423&oldid=1610056328
