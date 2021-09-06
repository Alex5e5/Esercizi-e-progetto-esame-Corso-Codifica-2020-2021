<?xml version="1.0" encoding="UTF-8"?>

<!-- ELEMENTO RADICE STYLESHEET -->

<xsl:stylesheet version="1.0" 
    xmlns="http://www.w3.org/1999/xhtml" 
    xmlns:html="http://www.w3.org/1999/xhtml"
    xmlns:tei="http://www.tei-c.org/ns/1.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"> 

    <!-- ISTRUZIONI DI ELABORAZIONE -->

    <xsl:output method="html" version="5.0" indent="yes" /> 

    <xsl:template match="/">

        <html>

            <!-- Nome del file -->
            <head>
                <link rel="stylesheet" type="text/css" href="cartolina1FeR.css" />
                <title> Cartolina1FeR </title>
            </head> 

            <body>

            <!-- INFORMAZIONI CARTOLINA 1, TEIHEADER -->

                <!-- Nota: per quanto riguarda l'invocazione del contenuto proveniente dal TeiHeader, si è scelto di selezionare in maniera
                    arbitraria solo quelle informazioni ritenute utili esclusivamente per un potenziale fruitore della pagina html. 
                    Inoltre si è scelto di invocare una e una sola volta una certa informazione, al fine di evitare ridondanti ripetizioni -->

                <div id="info">
                    <h1 style="text-align: center"> "PROGETTO CODIFICA DI TESTI, CARTOLINA N.1" </h1>
                    <hr class="rounded"/> <!-- Divisore estetico trasparente -->
                    <!-- fileDesc -->
                    <h2 style="text-align: center"> INFORMAZIONI E DESCRIZIONE </h2>
                    <div style='font-size: 18px' id="fileDesc">
                        
                        <!-- titleStmt -->
                        <div>
                            <h3> 1) Titolo, autore, curatori </h3>
                            <xsl:apply-templates select="//tei:titleStmt/tei:title" />
                        </div>
                        <div>
                            <xsl:apply-templates select="//tei:titleStmt/tei:author" />
                        </div>
                        <div>
                            <xsl:apply-templates select="//tei:titleStmt/tei:respStmt" />
                        </div>
                        <!-- editionStmt -->
                        <div>
                            <h3> 2) Edizione </h3>
                            <xsl:apply-templates select="//tei:editionStmt" />
                        </div>
                        <!-- Elemento "extent" volutamente non dichiarato, poiché ritenuto poco interessante -->
                        <!-- publicationStmt -->
                        <div>
                            <h3> 3) Pubblicazione </h3>
                            <xsl:apply-templates select="//tei:publicationStmt" />
                        </div>
                            <!-- Nota arbitraria -->
                            <div>
                                <xsl:apply-templates select="//tei:sourceDesc/tei:biblStruct/tei:note" />
                            </div>
                        <!-- noteStmt-->
                        <div>
                            <h3> 4) Precisazioni sulla cartolina </h3>
                            <xsl:apply-templates select="//tei:noteStmt" />
                        </div>
                        <!-- sourceDesc -->
                        <div>
                            <h3> 5) Stato fisico della cartolina </h3>
                            <xsl:apply-templates select="//tei:sourceDesc/tei:physDesc" />
                        </div>

                    </div>

                    <!-- encodingDesc -->
                        <div style='font-size: 18px'>
                            <h3> 6) Precisazioni sulla codifica </h3>
                            <xsl:apply-templates select="//tei:encodingDesc" />
                        </div>
                    <!-- profileDesc -->
                        <div style='font-size: 18px'>
                            <h3> 7) Lingue, calendario, contesto </h3>
                            <xsl:apply-templates select="//tei:profileDesc/tei:langUsage" />
                        </div>
                        <div style='font-size: 18px'>
                            <xsl:apply-templates select="//tei:profileDesc/tei:calendarDesc" />
                        </div>
                         <div style='font-size: 18px'>
                            <xsl:apply-templates select="//tei:profileDesc/tei:correspContext" />
                        </div>
                    <!-- Elemento "revisionDesc" volutamente non dichiarato, poiché, in pratica, 
                        non è stata apportata alcuna modifica al testo del documento -->

                </div>
            
                <hr class="rounded"/> <!-- Divisore estetico trasparente -->


                <!-- IMMAGINI CARTOLINA 1 -->

                    <div id="immagini_cartolina">
                        <h2 style="text-align: center"> IMMAGINI ORIGINALI CODIFICATE </h2>
                        <div id="cartolina1">
                            <!-- Fronte 1 -->
                            <h3> Fronte della cartolina </h3>
                            <input id="cartolina1F" type="image" class="immagine" alt="fronte della cartolina 1" src="cartolina1F.jpg" />
                            <!-- Retro 1 -->
                            <h3> Retro della cartolina </h3>
                            <input id="cartolina1R" type="image" class="immagine" alt="retro della cartolina 1" src="cartolina1R.jpg" />
                        </div>
                    </div>

                <hr class="rounded"/> <!-- Divisore estetico trasparente -->

                <!-- CONTENUTO CARTOLINA 1, TEXT -->

                    <div id="contenuto_cartolina">
                        <h2 style="text-align: center"> CONTENUTO TESTUALE CODIFICATO </h2>
                    
                    <!-- Note a cura del codificatore, all'indirizzo dei fruitori della pagina html -->

                        <div style='font-size: 18px' id="notaCodificatore1">
                            <xsl:value-of select="//tei:note[@n='6']" />
                        </div>
                        <div style='font-size: 18px' id="notaCodificatore2">
                            <xsl:value-of select="//tei:note[@n='7']" />
                        </div>
                        <div style='font-size: 18px' id="notaCodificatore3">
                            <xsl:value-of select="//tei:note[@n='8']" />
                        </div>
                        <div style='font-size: 18px' id="notaCodificatore4">
                            <xsl:value-of select="//tei:note[@n='9']" />
                        </div>

                        <div style='font-size: 18px' id="contenutoCartolina1">

                            <!-- Contenuto vero e proprio -->

                            <h3> 1) Fronte della cartolina </h3>

                            <div>
                                <xsl:value-of select="//tei:p[@n='7']" />
                            </div>
                            <div>
                                <xsl:value-of select="//tei:p[@n='8']" />
                            </div>
                            <div>
                                <xsl:value-of select="//tei:p[@n='9']" />
                            </div>
                            <div>
                                <xsl:value-of select="//tei:p[@n='10']" />
                            </div>
                            
                        </div>

                        <div style='font-size: 18px' id="contenutoCartolina1">

                            <h3> 2) Retro della cartolina </h3>

                            <div>
                                <xsl:value-of select="//tei:p[@n='11']" />
                            </div>
                            <div>
                                <xsl:value-of select="//tei:lb[@n='1']" />
                                <xsl:value-of select="//tei:lb[@n='2']" />
                            </div>
                            <div>
                                <xsl:value-of select="//tei:p[@n='14']" />
                            </div> <!-- 2 -->
                            
                            <div>
                                <h4> 2.1) Messaggio scritto dal mittente </h4>
                                <div>
                                    <xsl:value-of select="//tei:lb[@n='3']" />
                                </div>
                                <div>
                                    <xsl:value-of select="//tei:lb[@n='4']" />
                                </div>
                                <div>
                                    <xsl:value-of select="//tei:lb[@n='4.1']" />
                                </div>
                                <div>
                                    <xsl:value-of select="//tei:lb[@n='5']" />
                                </div>
                            </div>

                            <div>
                                <h4> 2.2) Indirizzo del destinatario </h4>
                                <div>
                                    <xsl:value-of select="//tei:lb[@n='6']" />
                                </div>
                                <div>
                                    <xsl:value-of select="//tei:lb[@n='7']" />
                                </div>
                                <div>
                                    <xsl:value-of select="//tei:lb[@n='8']" />
                                </div>
                                <div>
                                    <xsl:value-of select="//tei:lb[@n='9']" />
                                </div>
                            </div>
                            
                        </div>

                    </div>
                
                <hr class="rounded"/> <!-- Divisore estetico trasparente -->

                <!-- LISTE -->

                    <div id="liste">
                        <h2 style="text-align: center"> LISTE </h2>
                            <div style='font-size: 18px' id="listaCartolina1">
                                <h3> Persone </h3>
                                <xsl:value-of select="//tei:text/tei:div/tei:listPerson" />
                                <h3> Luoghi </h3>
                                <xsl:value-of select="//tei:text/tei:div/tei:listPlace" />
                            </div>
                    </div>
                
                <hr class="rounded"/> <!-- Divisore estetico trasparente -->
                
                <!-- BIBLIOGRAFIA -->

                    <div id="bibliografia">
                        <h2 style="text-align: center"> BIBLIOGRAFIA </h2>
                            <div style='font-size: 18px' id="listaCartolina1">
                                <xsl:value-of select="//tei:text/tei:div/tei:listBibl" />
                            </div>
                    </div>
                
                <hr class="rounded"/> <!-- Divisore estetico trasparente -->


            </body>

        </html>

    </xsl:template>

</xsl:stylesheet>


<!-- GITHBASH, STRINGHE UTILIZZATE: 

alexd@LAPTOP-5KGK8IFC MINGW64 ~/Desktop/DOCUMENTI XML
$ java -cp "xerces-2_12_1/*" dom.Counter ./PROGETTO/cartolina1FeR.xsl
./PROGETTO/cartolina1FeR.xsl: 47;16;0 ms (116 elems, 97 attrs, 0 spaces, 5675 chars)

alexd@LAPTOP-5KGK8IFC MINGW64 ~/Desktop/DOCUMENTI XML
$ java -jar \SaxonHE10-3J/saxon-he-10.3.jar -s:./PROGETTO/cartolina1FeR.xml -xsl:./PROGETTO/cartolina1FeR.xsl -o:./PROGETTO/b.html

-->