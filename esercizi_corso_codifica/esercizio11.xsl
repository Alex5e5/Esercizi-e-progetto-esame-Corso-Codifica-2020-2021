<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" 
    xmlns="http://www.w3.org/1999/xhtml" 
    xmlns:html="http://www.w3.org/1999/xhtml" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:output method="html" version="5.0" indent="yes" />

    <xsl:template match="/text()">
        <i>
            <xsl:value-of select="//title" />
        </i>
    
        <b>
            <xsl:value-of select="//author" />
        </b>
    </xsl:template>

</xsl:stylesheet>


<!--

TESTO DELL'ESERCIZIO:

Costruire un foglio di stile XSLT con alcune regole di trasformazione e lanciare il comando "java saxon" da terminale.

java -jar SaxonHE10-3J/saxon-he-10.3.jar -s:./ESERCIZI/esercizio10.xml -xsl:./ESERCIZI/esercizio11.xsl -o:./ESERCIZI/test.html

-->