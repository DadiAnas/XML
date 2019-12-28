<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    version="2.0">
    <xsl:output method="xml" />
    <xsl:template match="/">
        <mondial>
            <xsl:for-each select="distinct-values(mondial/country/encompassed/@continent)" >
                <continent name="{<xsl:value-of select="continent" />}">
                    
                </continent>
            </xsl:for-each>
        </mondial>
    </xsl:template>
    
</xsl:stylesheet>