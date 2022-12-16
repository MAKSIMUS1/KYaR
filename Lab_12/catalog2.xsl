<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html>
			<head>
				<title>Атестация</title>
			</head>
			<body>
				<h2>Аттестация студентов</h2>
				<table border="1">
					<tr bgcolor="#9acd32">
						<th>Имя</th>
						<th>Математика</th>
						<th>Физика</th>
						<th>Физкультура</th>
					</tr>
					<xsl:for-each select="catalog/uchenik">
						<tr>
							<td>
								<xsl:value-of select="FIO"/>
							</td>
							<xsl:choose>
								<xsl:when test="ozenka_po_matem &lt; 4">
									<td bgcolor="red">
										<xsl:value-of select="ozenka_po_matem"/>
									</td>
								</xsl:when>
								<xsl:when test="ozenka_po_matem &gt; 8">
									<td bgcolor="green">
										<xsl:value-of select="ozenka_po_matem"/>
									</td>
								</xsl:when>
								<xsl:otherwise>
									<td>
										<xsl:value-of select="ozenka_po_matem"/>
									</td>
								</xsl:otherwise>
							</xsl:choose>
							<xsl:choose>
								<xsl:when test="ozenka_po_fizike &lt; 4">
									<td bgcolor="red">
										<xsl:value-of select="ozenka_po_fizike"/>
									</td>
								</xsl:when>
								<xsl:when test="ozenka_po_fizike &gt; 8">
									<td bgcolor="green">
										<xsl:value-of select="ozenka_po_fizike"/>
									</td>
								</xsl:when>
								<xsl:otherwise>
									<td>
										<xsl:value-of select="ozenka_po_fizike"/>
									</td>
								</xsl:otherwise>
							</xsl:choose>
							<xsl:choose>
								<xsl:when test="ozenka_po_fizre &lt; 4">
									<td bgcolor="red">
										<xsl:value-of select="ozenka_po_fizre"/>
									</td>
								</xsl:when>
								<xsl:when test="ozenka_po_fizre &gt; 8">
									<td bgcolor="green">
										<xsl:value-of select="ozenka_po_fizre"/>
									</td>
								</xsl:when>
								<xsl:otherwise>
									<td>
										<xsl:value-of select="ozenka_po_fizre"/>
									</td>
								</xsl:otherwise>
							</xsl:choose>
						</tr>
					</xsl:for-each>
				</table>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>