<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<h2>По массе, по убыванию</h2>
        <table class="simple" border="1">
        <tr><th>Фрукт</th><th>Масса</th></tr>

            <xsl:apply-templates select="eda/item">
        
        
                <xsl:sort select="massa" data-type="number" order="descending"/>
             </xsl:apply-templates>
        </table>
	</xsl:template>
    <xsl:template match="eda/item">
        <tr>
            <td><xsl:value-of select="fruct"/></td>
            <td><xsl:value-of select="massa"/></td>
        </tr>
    </xsl:template>
</xsl:stylesheet>