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
