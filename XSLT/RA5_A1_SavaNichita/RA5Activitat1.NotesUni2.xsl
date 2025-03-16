<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html"/>

  <xsl:template match="notes">
    <html>
      <head>
        <title>Notes Universitaries</title>
      </head>
      <body>
        <h1>Notes d'estudiants</h1>
        <xsl:apply-templates/>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="assignatura">
    <h2><xsl:value-of select="@nom"/></h2>
    <table border="1">
      <tr>
        <th>Alumne</th>
        <th>Nota</th>
      </tr>
      <xsl:apply-templates/>
    </table>
  </xsl:template>

  <xsl:template match="alumne">
    <tr>
      <td><xsl:value-of select="@nom"/></td>
      <td><xsl:value-of select="@nota"/></td>
    </tr>
  </xsl:template>
</xsl:stylesheet>