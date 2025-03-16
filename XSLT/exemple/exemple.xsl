<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:xs="http://www.w3.org/2001/XMLSchema" version="2.0">

<xsl:template match="classe">
<xsl:apply-templates select="//padawans" mode="resultat"/>
<xsl:apply-templates select="//padawans"/>
</xsl:template>
<xsl:template match="padawans">
<xsl:apply-templates select="nom" />
</xsl:template>
<xsl:template match="padawans" mode="resultat">
Total: <xsl:value-of select="count(nom)"/>
</xsl:template>
<xsl:template match="nom" >
<xsl:value-of select="."/>
</xsl:template>

</xsl:stylesheet>