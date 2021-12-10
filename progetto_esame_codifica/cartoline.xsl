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
                <link rel="stylesheet" type="text/css" href="cartoline.css" />
                <title> Cartoline </title>
            </head> 

            <body>

                <!-- INFORMAZIONI CARTOLINA N.1 E CARTOLINA N.2, TEIHEADER -->

                <!-- Nota: per quanto riguarda l'invocazione del contenuto proveniente dal TeiHeader, si è scelto di selezionare in maniera
                    arbitraria solo quelle informazioni ritenute utili esclusivamente per un potenziale fruitore della pagina html. 
                    Inoltre si è scelto di invocare una e una sola volta una certa informazione, al fine di evitare ridondanti ripetizioni -->

                <div id="info">
                    <h1 style="text-align: center"> "PROGETTO CODIFICA DI TESTI, CARTOLINA N.1 E CARTOLINA N.2" </h1>
                    <hr class="rounded"/> <!-- Divisore estetico trasparente -->
                    <!-- fileDesc -->
                    <h2 style="text-align: center"> INFORMAZIONI E DESCRIZIONE DELLE CARTOLINE </h2>
                    <div style='font-size: 18px' id="fileDesc">
                        
                        <!-- titleStmt -->
                        <div>
                            <h3> 1) Titolo, autori, curatori </h3>
                            <xsl:apply-templates select="//tei:titleStmt/tei:title" />
                        </div>
                        <div>
                            <xsl:value-of select="//tei:author[@n='1']" />
                        </div>
                        <div>
                            <xsl:value-of select="//tei:author[@n='2']" />
                        </div>
                        <div>
                            <xsl:apply-templates select="//tei:titleStmt/tei:respStmt" />
                        </div>
                        <!-- editionStmt -->
                        <div>
                            <h3> 2) Edizione dei testi </h3>
                            <xsl:apply-templates select="//tei:editionStmt" />
                        </div>
                        <!-- Elemento "extent" volutamente non dichiarato, poiché ritenuto poco interessante -->
                        <!-- publicationStmt -->
                        <div>
                            <h3> 3) Pubblicazione delle cartoline: editore, luogo, data, disponibilità </h3>
                            <xsl:value-of select="//tei:note[@n='0']" />
                            <div><xsl:value-of select="//tei:publisher[@n='1']" /></div>
                            <div><xsl:value-of select="//tei:pubPlace[@n='1']" /></div>
                            <div><xsl:value-of select="//tei:date[@n='2']" /></div>
                            <div><xsl:value-of select="//tei:availability[@n='1']" /></div>
                            <div><xsl:value-of select="//tei:note[@n='1']" /></div>
                        </div>
                        <hr class="rounded"/> <!-- Divisore estetico trasparente -->
                        <div>
                            <xsl:value-of select="//tei:note[@n='00']" />
                            <div><xsl:value-of select="//tei:note[@n='2']" /></div>
                            <div><xsl:value-of select="//tei:pubPlace[@n='2']" /></div>
                            <div><xsl:value-of select="//tei:date[@n='3']" /></div>
                            <div><xsl:value-of select="//tei:availability[@n='2']" /></div>
                            <div><xsl:value-of select="//tei:note[@n='3']" /></div>
                        </div>
                        
                        <!-- noteStmt-->
                        <div>
                            <h3> 4) Precisazioni sulle cartoline </h3>
                            <div><xsl:value-of select="//tei:note[@n='4']" /></div>
                            <div><xsl:value-of select="//tei:note[@n='5']" /></div>
                        </div>
                        <!-- sourceDesc -->
                        <div>
                            <h3> 5) Stato fisico delle cartoline </h3>
                            <div><xsl:value-of select="//tei:support[@n='1']" /></div>
                            <div><xsl:value-of select="//tei:support[@n='2']" /></div>
                        </div>

                    </div>

                    <!-- encodingDesc -->
                        <div style='font-size: 18px'>
                            <h3> 6) Precisazioni sulla codifica </h3>
                            <div><xsl:value-of select="//tei:p[@n='4']" /></div>
                            <div><xsl:value-of select="//tei:p[@n='5']" /></div>
                            <div><xsl:value-of select="//tei:p[@n='6']" /></div>
                        </div>
                    <!-- profileDesc -->
                        <div style='font-size: 18px'>
                            <h3> 7) Lingue, calendario, contesto </h3>
                            <div><xsl:value-of select="//tei:langUsage[@n='1']" /></div>
                            <div><xsl:value-of select="//tei:langUsage[@n='2']" /></div>
                        </div>
                        <div style='font-size: 18px'>
                            <xsl:apply-templates select="//tei:profileDesc/tei:calendarDesc" />
                        </div>
                         <div style='font-size: 18px'>
                            <div><xsl:value-of select="//tei:correspContext[@n='1']" /></div>
                            <div><xsl:value-of select="//tei:correspContext[@n='2']" /></div>
                        </div>
                    <!-- Elemento "revisionDesc" volutamente non dichiarato, poiché, in pratica,
                        non è stata apportata alcuna modifica al testo del documento -->

                </div>
            
                <hr class="rounded"/> <!-- Divisore estetico trasparente -->



                <!-- IMMAGINI CARTOLINA N.1 -->

                    <div id="immagini_cartolina">
                        <h2 style="text-align: center"> IMMAGINI ORIGINALI, CARTOLINA N.1 </h2>
                        <div id="cartolina1">
                            <!-- Fronte 1 -->
                            <h3> Fronte della cartolina n.1 </h3>
                            <input id="cartolina1F" type="image" class="immagine" alt="fronte della cartolina 1" src="cartolina1F.jpg" />
                            <!-- Retro 1 -->
                            <h3> Retro della cartolina n.1 </h3>
                            <input id="cartolina1R" type="image" class="immagine" alt="retro della cartolina 1" src="cartolina1R.jpg" />
                        </div>
                    </div>

                <hr class="rounded"/> <!-- Divisore estetico trasparente -->

                <!-- IMMAGINI CARTOLINA N.2 -->

                    <div id="immagini_cartolina">
                        <h2 style="text-align: center"> IMMAGINI ORIGINALI, CARTOLINA N.2 </h2>
                        <div id="cartolina2">
                            <!-- Fronte 2 -->
                            <h3> Fronte della cartolina n.2 </h3>
                            <input id="cartolina2F" type="image" class="immagine" alt="fronte della cartolina 2" src="cartolina2F.jpg" />
                            <!-- Retro 2 -->
                            <h3> Retro della cartolina n.2 </h3>
                            <input id="cartolina2R" type="image" class="immagine" alt="retro della cartolina 2" src="cartolina2R.jpg" />
                        </div>
                    </div>

                <hr class="rounded"/> <!-- Divisore estetico trasparente -->



                <!-- CONTENUTO CARTOLINA N.1, TEXT -->

                    <div id="contenuto_cartolina n.1">
                        <h2 style="text-align: center"> CONTENUTO TESTUALE CODIFICATO, CARTOLINA N.1 </h2>
                    
                    <!-- Note a cura del codificatore, all'indirizzo dei fruitori della pagina html -->

                        <div style='font-size: 18px' id="notaCodificatore1">
                            <xsl:value-of select="//tei:note[@n='8']" />
                        </div>
                        <div style='font-size: 18px' id="notaCodificatore2">
                            <xsl:value-of select="//tei:note[@n='9']" />
                        </div>
                        <div style='font-size: 18px' id="notaCodificatore3">
                            <xsl:value-of select="//tei:note[@n='10']" />
                        </div>
                        <div style='font-size: 18px' id="notaCodificatore4">
                            <xsl:value-of select="//tei:note[@n='11']" />
                        </div>

                        <div style='font-size: 18px' id="contenutoCartolina1">

                            <!-- Contenuto vero e proprio -->

                            <h3> 1) Fronte della cartolina n.1 </h3>

                            <div>
                                <xsl:value-of select="//tei:p[@n='10']" />
                            </div>
                            <div>
                                <xsl:value-of select="//tei:p[@n='11']" />
                            </div>
                            <div>
                                <xsl:value-of select="//tei:p[@n='12']" />
                            </div>
                            <div>
                                <xsl:value-of select="//tei:p[@n='13']" />
                            </div>
                            
                        </div>

                        <div style='font-size: 18px' id="contenutoCartolina1">

                            <h3> 2) Retro della cartolina n.1 </h3>

                            <div>
                                <xsl:value-of select="//tei:p[@n='14']" />
                            </div>
                            <div>
                                <xsl:value-of select="//tei:lb[@n='1']" />
                                <xsl:value-of select="//tei:lb[@n='2']" />
                            </div>
                            <div>
                                <xsl:value-of select="//tei:p[@n='17']" />
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




                 <!-- CONTENUTO CARTOLINA N.2, TEXT -->

                    <div id="contenuto_cartolina n.2">
                        <h2 style="text-align: center"> CONTENUTO TESTUALE CODIFICATO, CARTOLINA N.2 </h2>
                        
                        <div style='font-size: 18px' id="contenutoCartolina2">

                            <!-- Contenuto vero e proprio -->
                        
                            <h3> 1) Fronte della cartolina n.2 </h3>

                            <div>
                                <xsl:value-of select="//tei:p[@n='19']" />
                            </div>

                            <h3> 2) Retro della cartolina n.2 </h3>

                            <div>
                                <xsl:value-of select="//tei:p[@n='20']" />
                            </div>

                            <h4> 2.1) Messaggio scritto dai mittenti </h4>

                            <div>
                                <xsl:value-of select="//tei:lb[@n='10']" />
                            </div>
                            <div>
                                <xsl:value-of select="//tei:lb[@n='11']" />
                            </div>
                            <div>
                                <xsl:value-of select="//tei:lb[@n='12']" />
                            </div>
                            <div>
                                <xsl:value-of select="//tei:lb[@n='13']" />
                            </div>

                            <h4> 2.2) Indirizzo dei destinatari </h4>

                            <div>
                                <xsl:value-of select="//tei:lb[@n='14']" />
                            </div>
                            <div>
                                <xsl:value-of select="//tei:lb[@n='15']" />
                            </div>
                            <div>
                                <xsl:value-of select="//tei:lb[@n='16']" />
                            </div>
                            <div>
                                <xsl:value-of select="//tei:lb[@n='17']" />
                            </div>
                            <div>
                                <xsl:value-of select="//tei:lb[@n='18']" />
                            </div>

                        </div>

                    </div>
                
                <hr class="rounded"/> <!-- Divisore estetico trasparente -->




            <!-- LISTE CARTOLINE -->

                <!-- LISTE CARTOLINA N.1 -->

                    <div id="liste1">
                        <h2 style="text-align: center"> LISTE CARTOLINA N.1 </h2>
                            <div style='font-size: 18px' id="listaCartolina1">
                                <h3> Persone </h3>
                                <xsl:value-of select="//tei:listPerson[@n='1']" />
                                <h3> Luoghi </h3>
                                <xsl:value-of select="//tei:listPlace[@n='1']" />
                            </div>
                    </div>
                
                <hr class="rounded"/> <!-- Divisore estetico trasparente -->


                <!-- LISTE CARTOLINA N.2 -->

                    <div id="liste2">
                        <h2 style="text-align: center"> LISTE CARTOLINA N.2 </h2>
                            <div style='font-size: 18px' id="listaCartolina2">
                                <h3> Persone </h3>
                                <xsl:value-of select="//tei:listPerson[@n='2']" />
                                <h3> Luoghi </h3>
                                <xsl:value-of select="//tei:listPlace[@n='2']" />
                            </div>
                    </div>
                
                <hr class="rounded"/> <!-- Divisore estetico trasparente -->




            <!-- BIBLIOGRAFIA CARTOLINE -->

                    <!-- CARTOLINA N.1 -->

                    <div id="bibliografia1">
                        <h2 style="text-align: center"> BIBLIOGRAFIA CARTOLINA N.1 </h2>
                            <div style='font-size: 18px' id="listaCartolina1">
                                <xsl:value-of select="//tei:listBibl[@n='1']" />
                            </div>
                    </div>
                
                <hr class="rounded"/> <!-- Divisore estetico trasparente -->

                    <!-- CARTOLINA N.2 -->

                    <div id="bibliografia2">
                        <h2 style="text-align: center"> BIBLIOGRAFIA CARTOLINA N.2 </h2>
                            <div style='font-size: 18px' id="listaCartolina2">
                                <xsl:value-of select="//tei:listBibl[@n='2']" />
                            </div>
                    </div>
                
                <hr class="rounded"/> <!-- Divisore estetico trasparente -->

            </body>

        </html>

    </xsl:template>

</xsl:stylesheet>


<!-- GITBASH, STRINGHE UTILIZZATE:

alexd@LAPTOP-5KGK8IFC MINGW64 ~/Desktop/DOCUMENTI XML
$ java -cp "xerces-2_12_1/*" dom.Counter ./PROGETTO/cartoline.xsl
./PROGETTO/cartoline.xsl: 62;16;0 ms (207 elems, 158 attrs, 0 spaces, 8974 chars)

alexd@LAPTOP-5KGK8IFC MINGW64 ~/Desktop/DOCUMENTI XML
$ java -jar \SaxonHE10-3J/saxon-he-10.3.jar -s:./PROGETTO/cartoline.xml -xsl:./PROGETTO/cartoline.xsl -o:./PROGETTO/cartoline.html

-->








































































































