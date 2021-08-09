<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

    <xsl:preserve-space elements="p" />
    
    <xsl:output method="html" encoding="UTF-8" indent="yes" />

    <xsl:template match="/">
  
        <html>

            <head>
                <title>
                    <xsl:value-of select="TEI/teiHeader/fileDesc/titleStmt/title" disable-output-escaping="no" />
                </title>

                 <link rel="stylesheet" type="text/css" href="./mycss.css" />
                <style>
                    h1{
                        color:blue;
                    }
                </style>
            </head>

            <body>

                <div class="index">
                    <h1> Esercizio 12 </h1>
                    <ul>
                        <xsl:apply-templates select="//div[@type='chapter']" mode="index" />
                    </ul>
                </div>
                <div>
                    <xsl:apply-templates select="child::node()" />
                </div>
            </body>

        </html>
    </xsl:template>

    <xsl:template match="div" mode="index">

        <xsl:variable name="var1">
                <xsl:comment> Questa è una variabile aggiunta successivamente </xsl:comment>
                <xsl:for-each select="zone">
                    <xsl:if test="w>4">
                        <xsl:value-of select="w" />
                    </xsl:if>
                </xsl:for-each>
        </xsl:variable>

        <ul>
            <xsl:for-each select=".">
                <li>
                    <xsl:value-of select="head" />
                </li>
            </xsl:for-each>
        </ul>
    </xsl:template>

    <xsl:template match="titleStmt/title">
        <h2>
            <xsl:value-of select="." />
        </h2>
    </xsl:template>



    <xsl:template name="div">
        <xsl:comment> questo xsl:template è stato modificato per applicare una call-template. </xsl:comment>
        <xsl:call-template name="teiHeader">
            <xsl:with-param name="teiHeader" select="author"> </xsl:with-param>
        </xsl:call-template>
        <h3>
            <xsl:value-of select="." />
        </h3>
    </xsl:template>

    <xsl:template name="teiHeader">
        <span> Identificativo del documento: 
            <xsl:value-of select="@xml:id" />
        </span>
    </xsl:template>


</xsl:stylesheet>

<!--

Il file "esercizio12.xsl" è il file originale "template.xsl" copiato e incollato da Github.
Il risultato è un documento html denominato "test2".

java -jar SaxonHE10-3J/saxon-he-10.3.jar -s:./ESERCIZI/esercizio10.xml -xsl:./ESERCIZI/esercizio12.xsl -o:./ESERCIZI/test2.html

TESTO DELL'ESERCIZIO:

Modificare il file template.xsl aggiungendo variabili, parametri e call template.

-->
