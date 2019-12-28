<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    version="2.0">
    <xsl:output method="html" />
        <xsl:template match="/">
            <div class="table-responsive">
                <table class="table">
                    <thead>
                        <tr>
                            <th style="color: rgb(255,255,255);background-color: #000000;">Tite</th>
                            <th style="color: rgb(255,255,255);background-color: #000000;">Artiste</th>
                        </tr>
                    </thead>
                    <tbody>
                        <xsl:for-each select="/catalog/cd">
                            <tr>
                                <td><xsl:value-of select="title"/></td>
                                <td><xsl:value-of select="artist"/></td>
                            </tr>
                        </xsl:for-each> 
                    </tbody>
                </table>
            </div>
        </xsl:template>
    
</xsl:stylesheet>