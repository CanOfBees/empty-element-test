<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    version="2.0">
    
    <xsl:output encoding="UTF-8" method="xml" indent="yes"/>
    <xsl:strip-space elements="*"/>
    
	<xsl:template match="/">
		<xsl:apply-templates/>
  </xsl:template>
	
	<xsl:template match="things">
		<xsl:apply-templates select="thing[every $t in title satisfies $t[not(normalize-space(.) = '')]]
																			[(some $i in identifier satisfies $i[starts-with(normalize-space(.), 'http://')]) and
																			 (every $i in identifier satisfies $i[not(normalize-space(.) = '')])]
																			[every $r in rights satisfies $r[not(normalize-space(.) = '')]]"
													mode="first"/>
		<xsl:apply-templates select="thing[(every $t in title satisfies $t[not(normalize-space(.) = '')]) and
																			 (some $i in identifier satisfies $i[starts-with(normalize-space(.), 'http://')]) and
																			 (every $r in rights satisfies $r[not(normalize-space(.) = '')])]"
													mode="second"/>													 
	</xsl:template>
	
	<xsl:template match="thing" mode="first">
		<idN type="first"><xsl:value-of select="./@no"/></idN>
	</xsl:template>
	
	<xsl:template match="thing" mode="second">
		<idN type="second"><xsl:value-of select="./@no"/></idN>
	</xsl:template>
	
</xsl:stylesheet>