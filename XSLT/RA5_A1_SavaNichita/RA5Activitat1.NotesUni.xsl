<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="text"/>

  <xsl:template match="notes">
    <xsl:apply-templates/>
  </xsl:template>

  <xsl:template match="assignatura">
<xsl:text>
</xsl:text>
    <xsl:value-of select="@nom"/>
<xsl:text>
</xsl:text>
    <xsl:apply-templates/>
  </xsl:template>

  <xsl:template match="alumne">
    <xsl:value-of select="@nom"/>
    <xsl:text> -- </xsl:text>
    <xsl:value-of select="@nota"/>
    <xsl:text>
</xsl:text>
  </xsl:template>
</xsl:stylesheet>