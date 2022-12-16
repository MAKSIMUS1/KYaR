<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <h2>По возрасту по убыванию</h2>
        <table class="simple" border="1">
            <tr><th>Человек</th><th>Возраст</th></tr>
                <xsl:apply-templates select="yushik/item">
                    <xsl:sort select="vozrast" data-type="number" order="descending"/>
                </xsl:apply-templates>  
        </table>
    </xsl:template>
    <xsl:template match="yushik/item">
        <tr>
            <td><xsl:value-of select="chelovek"/></td>
            <td><xsl:value-of select="vozrast"/></td>
        </tr>
    </xsl:template>
</xsl:stylesheet>