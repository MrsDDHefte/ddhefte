download von zwei Quellen:
wget http://www.johannstadtarchiv.de/heft11.xml
wget http://www.johannstadtarchiv.de/Saxon-HE.jar
 
nano quickstatements.xsl:
<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="text"/>
  <xsl:template match="/">
        <xsl:apply-templates select="/mets/dmdSec/mdWrap/xmlData/mods/titleInfo/title"/>
  </xsl:template>
  <xsl:template match="title">
CREATE
LAST    Lde     "<xsl:value-of select='.'/>"</xsl:template>
</xsl:stylesheet>

java -jar /usr/share/java/Saxon-HE.jar -s:heft1.xml -xsl:quickstatements.xsl
 
output:
<pre>
CREATE
LAST    Lde     "Neunzehntes Jahrhundert"
CREATE
LAST    Lde     "Grundzüge der sächsischen Geschichte im 19. Jahrhundert"
CREATE
LAST    Lde     "Die Architektur und die städtebauliche Entwicklung Dresdens im 19. Jahrhundert"
...
</pre>
