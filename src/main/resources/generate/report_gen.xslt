<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" indent="yes"/>
  
  
  <xsl:template match="/">
    <html>
      <head>
        <title>${reportTitle}</title>
        <link rel="stylesheet" type="text/css" href="style.css" />
      </head>
      <body>
        <xsl:apply-templates select="//module"/>
      </body>
    </html>
  </xsl:template>
    
      
  <xsl:template match="//module">
    <p>
      <h1>${<xsl:value-of select="@name"/>.name}</h1>
      <p>
        ${<xsl:value-of select="@name"/>.desc}
      </p>
      <table>
        <thead>      
          <td>
            Property name
          </td>
          <td>
            Value
          </td>
        </thead>
        <xsl:call-template name="propertyTemplate">
          <xsl:with-param name="parentName" select="@name" />
        </xsl:call-template>
      </table>
    </p>
  </xsl:template>

  <xsl:template name="propertyTemplate" >
    <xsl:param name="parentName" />
    <xsl:for-each select="property">
      <tr>      
        <td>
          <xsl:variable name="propName" select="@name" />
          <xsl:choose>
            <xsl:when test="$propName = 'severity'">
              <xsl:value-of select="@name"/>
            </xsl:when>
            <xsl:when test="$propName = 'id'">
              <xsl:value-of select="@name"/>
            </xsl:when>
            <xsl:otherwise>
              ${<xsl:value-of select="$parentName"/>.<xsl:value-of select="@name"/>}
            </xsl:otherwise>
          </xsl:choose> 
          </td>
        <td>
          <xsl:value-of select="@value"/>
        </td>
      </tr>
    </xsl:for-each>
  </xsl:template>
</xsl:stylesheet>
        