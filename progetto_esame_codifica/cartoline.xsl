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

                <!-- Nota: per quanto riguarda l'invocazione del contenuto proveniente dal teiHeader, si e' scelto di selezionare in maniera
                    arbitraria solo quelle informazioni ritenute utili esclusivamente per un potenziale fruitore della pagina html. 
                    Inoltre si e' scelto di invocare una e una sola volta una certa informazione, al fine di evitare ridondanti ripetizioni -->

                <div id="informazioniCartoline">
                    <h1 style="text-align: center"> "PROGETTO CODIFICA DI TESTI, CARTOLINA N.1 E CARTOLINA N.2" </h1>
                    <hr class="rounded"/> <!-- Divisore estetico trasparente; "rounded" = arrotondato -->

                    <!-- fileDesc -->

                    <h2 style="text-align: center"> INFORMAZIONI E DESCRIZIONE DELLE CARTOLINE </h2>

                    <div style='font-size: 18px' id="fileDesc">
                        
                        <!-- titleStmt -->

                        <div id="title">
                            <h3> 1) Dichiarazione sull'opera: titolo, autori e curatori delle cartoline </h3>
                            <xsl:apply-templates select="//tei:titleStmt/tei:title" />
                        </div>
                        
                        <hr class="rounded"/> <!-- Divisore estetico trasparente -->

                        <div id="author">
                            <xsl:value-of select="//tei:author[@n='1']" />
                        </div>

                        <div id="author">
                            <xsl:value-of select="//tei:author[@n='2']" />
                        </div>

                        <hr class="rounded"/> <!-- Divisore estetico trasparente -->

                        <div id="respStmt">
                            <xsl:apply-templates select="//tei:titleStmt/tei:respStmt" />
                        </div>

                        <!-- editionStmt -->

                        <div id="editionStmt">
                            <h3> 2) Edizione dei testi </h3>
                            <xsl:apply-templates select="//tei:editionStmt" />
                        </div>

                        <!-- publicationStmt -->

                            <h3> 3) Pubblicazione delle cartoline: editore, luogo, data, disponibilita', autorita' </h3>
                            <div id="publisher1"><xsl:value-of select="//tei:publisher[@n='1']" /></div>
                            <div id="pubPlace1"><xsl:value-of select="//tei:pubPlace[@n='1']" /></div>
                            <div id="date1">
                                <xsl:value-of select="//tei:date[@n='2']" />
                            </div>
                            <div id="availability1"><xsl:value-of select="//tei:availability[@n='1']" /></div>
                            <div id="authority1"><xsl:value-of select="//tei:authority[@n='1']" /></div>

                        <hr class="rounded"/> <!-- Divisore estetico trasparente -->

                            <div id="publisher2"><xsl:value-of select="//tei:publisher[@n='2']" /></div>
                            <div id="pubPlace2"><xsl:value-of select="//tei:pubPlace[@n='2']" /></div>
                            <div id="date2"><xsl:value-of select="//tei:date[@n='3']" /></div>
                            <div id="availability2"><xsl:value-of select="//tei:availability[@n='2']" /></div>
                            <div id="authority2"><xsl:value-of select="//tei:authority[@n='2']" /></div>
                        
                        <!-- notesStmt-->

                            <h3> 4) Precisazioni sulle cartoline </h3>
                            <div id="note5"><xsl:value-of select="//tei:note[@n='5']" /></div>
                            <div id="note6"><xsl:value-of select="//tei:note[@n='6']" /></div>

                        <!-- sourceDesc -->

                        <div id="sourceDesc">
                            <h3> 5) Descrizione delle fonti: dimensioni digitali, estensione e stato fisico delle cartoline </h3>
                            <div id="extent1e2">
                                <xsl:value-of select="//tei:extent[@n='1']" />
                                <xsl:value-of select="//tei:extent[@n='2']" />
                            </div>
                            <div id="extent3e4">
                                <xsl:value-of select="//tei:extent[@n='3']" />
                                <xsl:value-of select="//tei:extent[@n='4']" />
                            </div>
                            <div id="extent5e6">
                                <xsl:value-of select="//tei:extent[@n='5']" />
                                <xsl:value-of select="//tei:extent[@n='6']" />
                            </div>
                            <div id="extent7e8">
                                <xsl:value-of select="//tei:extent[@n='7']" />
                                <xsl:value-of select="//tei:extent[@n='8']" />
                            </div>

                            <hr class="rounded"/> <!-- Divisore estetico trasparente -->

                            <div id="biblScope1"><xsl:value-of select="//tei:biblScope[@n='1']" /></div>
                            <div id="biblScope2"><xsl:value-of select="//tei:biblScope[@n='2']" /></div>

                            <div id="material">
                                <xsl:value-of select="//tei:material[@type='paper']" />
                            </div>

                            <hr class="rounded"/> <!-- Divisore estetico trasparente -->

                            <div id="stamp1"><xsl:value-of select="//tei:stamp[@n='1']" /></div>
                            <div id="stamp2"><xsl:value-of select="//tei:stamp[@n='2']" /></div>
                            <div id="stamp2.1"><xsl:value-of select="//tei:stamp[@n='2.1']" /></div>
                            <div id="stamp3"><xsl:value-of select="//tei:stamp[@n='3']" /></div>

                            <hr class="rounded"/> <!-- Divisore estetico trasparente -->

                            <div id="p3"><xsl:value-of select="//tei:p[@n='3']" /></div>
                            <div id="p4"><xsl:value-of select="//tei:p[@n='4']" /></div>
                        </div>

                    </div>

                    <!-- encodingDesc -->

                        <div id="encodingDesc" style='font-size: 18px'>
                            <h3> 6) Precisazioni sulla codifica </h3>
                            <div id="p5"><xsl:value-of select="//tei:p[@n='5']" /></div>
                            <div id="p6" ><xsl:value-of select="//tei:p[@n='6']" /></div>
                            <div id="p7"><xsl:value-of select="//tei:p[@n='7']" /></div>
                        </div>

                    <!-- profileDesc -->

                        <div id="profileDesc" style='font-size: 18px'>
                            <h3> 7) Aspetti non bibliografici delle cartoline: lingue, calendario, contesto </h3>
                            <div id="language1"><xsl:value-of select="//tei:language[@usage='80']" /></div>
                            <div id="language2" ><xsl:value-of select="//tei:language[@usage='20']" /></div>
                            <div id="language3" ><xsl:value-of select="//tei:language[@usage='100']" /></div>
                        </div>

                        <hr class="rounded"/> <!-- Divisore estetico trasparente -->
                 
                        <div id="calendarDesc" style='font-size: 18px'>
                            <xsl:apply-templates select="//tei:profileDesc/tei:calendarDesc" />
                        </div>

                        <hr class="rounded"/> <!-- Divisore estetico trasparente -->

                         <div id="correspContext" style='font-size: 18px'>
                            <div id="correspContext1"><xsl:value-of select="//tei:correspContext[@n='1']" /></div>
                            <div id="correspContext2"><xsl:value-of select="//tei:correspContext[@n='2']" /></div>
                        </div>

                    <!-- Elemento "revisionDesc" volutamente non dichiarato, poiche', in pratica,
                        non e' stata apportata alcuna modifica al testo del documento -->

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





                <!-- CONTENUTO CARTOLINA N.1 -->

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

                            <div id="p10">
                                <xsl:value-of select="//tei:p[@n='10']" />
                            </div>

                            <div id="p11">
                                <xsl:value-of select="//tei:p[@n='11']" />
                            </div>

                            <div id="p12">
                                <xsl:value-of select="//tei:p[@n='12']" />
                            </div>
                            
                            <div id="p13">
                                <xsl:value-of select="//tei:p[@n='13']" />
                            </div>
                            
                        </div>

                        <div style='font-size: 18px' id="contenutoCartolina1">

                            <h3> 2) Retro della cartolina n.1 </h3>

                            <div id="p14">
                                <xsl:value-of select="//tei:p[@n='14']" />
                            </div>

                            <div id="cl1">
                                <xsl:value-of select="//tei:cl[@n='1']" />
                                <div id="cl2">
                                    <xsl:value-of select="//tei:cl[@n='2']" /> 
                                </div>
                            </div>

                            <div id="p17">
                                <xsl:value-of select="//tei:p[@n='17']" />
                            </div> <!-- 2 -->
                            
                            <div id="messaggioMittente1">

                                <h4> 2.1) Messaggio scritto dal mittente </h4>
                                <div id="cl3">
                                    <xsl:value-of select="//tei:cl[@n='3']" />
                                </div>
                                <div id="cl4">
                                    <xsl:value-of select="//tei:cl[@n='4']" />
                                    <xsl:value-of select="//tei:cl[@n='4.1']" />
                                </div>
                                <div id="cl5">
                                    <xsl:value-of select="//tei:cl[@n='5']" />
                                </div>
                            </div>

                            <div id="indirizzoDestinatario1">

                                <h4> 2.2) Indirizzo del destinatario </h4>
                                <div id="cl6">
                                    <xsl:value-of select="//tei:cl[@n='6']" />
                                </div>
                                <div id="cl7">
                                    <xsl:value-of select="//tei:cl[@n='7']" />
                                </div>
                                <div id="cl8">
                                    <xsl:value-of select="//tei:cl[@n='8']" />
                                </div>
                                <div id="cl9">
                                    <xsl:value-of select="//tei:cl[@n='9']" />
                                </div>
                            </div>
                            
                        </div>

                    </div>
                
                <hr class="rounded"/> <!-- Divisore estetico trasparente -->




                 <!-- CONTENUTO CARTOLINA N.2 -->

                    <div id="contenuto_cartolina n.2">

                        <h2 style="text-align: center"> CONTENUTO TESTUALE CODIFICATO, CARTOLINA N.2 </h2>
                        
                        <div style='font-size: 18px' id="contenutoCartolina2">

                            <!-- Contenuto vero e proprio -->
                        
                            <h3> 1) Fronte della cartolina n.2 </h3>

                            <div id="p19">
                                <xsl:value-of select="//tei:p[@n='19']" />
                            </div>


                            <h3> 2) Retro della cartolina n.2 </h3>

                            <div id="p20">
                                <xsl:value-of select="//tei:p[@n='20']" />
                            </div>

                            <h4> 2.1) Messaggio scritto dai mittenti </h4>

                            <div id="cl10">
                                <xsl:value-of select="//tei:cl[@n='10']" />
                            </div>
                            <div id="cl11">
                                <xsl:value-of select="//tei:cl[@n='11']" />
                            </div>
                            <div id="cl12">
                                <xsl:value-of select="//tei:cl[@n='12']" />
                            </div>
                            <div id="cl13">
                                <xsl:value-of select="//tei:cl[@n='13']" />
                            </div>

                            <h4> 2.2) Indirizzo dei destinatari </h4>

                            <div id="cl14">
                                <xsl:value-of select="//tei:cl[@n='14']" />
                            </div>
                            <div id="cl15">
                                <xsl:value-of select="//tei:cl[@n='15']" />
                            </div>
                            <div id="cl16">
                                <xsl:value-of select="//tei:cl[@n='16']" />
                            </div>
                            <div id="cl17">
                                <xsl:value-of select="//tei:cl[@n='17']" />
                            </div>
                            <div id="cl18">
                                <xsl:value-of select="//tei:cl[@n='18']" />
                            </div>

                        </div>

                    </div>
                
                <hr class="rounded"/> <!-- Divisore estetico trasparente -->




            <!-- LISTE CARTOLINE -->

                <!-- LISTE CARTOLINA N.1 -->

                    <div id="listeCartolina1">
                        <h2 style="text-align: center"> LISTE CARTOLINA N.1 </h2>

                        <div style='font-size: 18px' id="notaCodificatore5">
                            <xsl:value-of select="//tei:note[@n='12']" />
                        </div>
                        <div style='font-size: 18px' id="notaCodificatore6">
                            <xsl:value-of select="//tei:note[@n='13']" />
                        </div>

                            <div style='font-size: 18px' id="listaCartolina1">
                                <h3> Persone </h3>

                                <div id="persName1"><xsl:value-of select="//tei:persName[@n='2']" /></div>
                                <div id="persName2"><xsl:value-of select="//tei:persName[@n='3']" /></div>
                                <div id="persName3"><xsl:value-of select="//tei:persName[@n='10']" /></div>
                                <div id="persName4"><xsl:value-of select="//tei:persName[@n='9']" /></div>
                                <div id="persName5"><xsl:value-of select="//tei:persName[@n='8']" /></div>
                                <div id="persName6"><xsl:value-of select="//tei:persName[@n='1']" /></div>
                                <div id="persName7"><xsl:value-of select="//tei:persName[@n='4']" /></div>
                                <div id="persName8"><xsl:value-of select="//tei:persName[@n='7']" /></div>

                                <h3> Luoghi </h3>

                                <div id="placeName1"><xsl:value-of select="//tei:placeName[@n='2']" /></div>
                                <div id="placeName2"><xsl:value-of select="//tei:placeName[@n='4']" /></div>
                                <div id="placeName3"><xsl:value-of select="//tei:placeName[@n='1']" /></div>
                            </div>
                    </div>
                
                <hr class="rounded"/> <!-- Divisore estetico trasparente -->


                <!-- LISTE CARTOLINA N.2 -->

                    <div id="listeCartolina2">
                        <h2 style="text-align: center"> LISTE CARTOLINA N.2 </h2>
                            <div style='font-size: 18px' id="listaCartolina2">

                                <h3> Persone </h3>

                                <div id="persName9"><xsl:value-of select="//tei:persName[@n='2']" /></div>
                                <div id="persName10"><xsl:value-of select="//tei:persName[@n='3']" /></div>
                                <div id="persName11" ><xsl:value-of select="//tei:persName[@n='11']" /></div>
                                <div id="persName12"><xsl:value-of select="//tei:persName[@n='12']" /></div>
                                <div id="persName13"><xsl:value-of select="//tei:persName[@n='13']" /></div>
                                <div id="persName14" ><xsl:value-of select="//tei:persName[@n='14']" /></div>
                                <div id="persName15"><xsl:value-of select="//tei:persName[@n='4']" /></div>
                                <div id="persName16"><xsl:value-of select="//tei:persName[@n='15']" /></div>

                                <h3> Luoghi </h3>

                                <div id="placeName4"><xsl:value-of select="//tei:placeName[@n='3']" /></div>
                                <div id="placeName5"><xsl:value-of select="//tei:placeName[@n='4']" /></div>
                                <div id="placeName6"><xsl:value-of select="//tei:placeName[@n='1']" /></div>
                            </div>
                    </div>
                
                <hr class="rounded"/> <!-- Divisore estetico trasparente -->




            <!-- BIBLIOGRAFIA CARTOLINE -->

                    <!-- CARTOLINA N.1 -->

                    <div id="bibliografiaCartolina1">
                        <h2 style="text-align: center"> BIBLIOGRAFIA CARTOLINA N.1 </h2>

                            <div style='font-size: 18px' id="bibliografiaCartolina1">

                                <div id="noteTitle">
                                    <xsl:value-of select="//tei:note[@n='5.5']" />
                                    <xsl:value-of select="//tei:title[@n='2']" />
                                </div>

                                <div id="author1.1"><xsl:value-of select="//tei:author[@n='1.1']" /></div>

                                <div id="notePubPlace">
                                    <xsl:value-of select="//tei:note[@n='5.7']" />
                                    <xsl:value-of select="//tei:pubPlace[@n='1.1']" />
                                </div>

                                <div id="notePublisher">
                                    <xsl:value-of select="//tei:note[@n='5.8']" />
                                    <xsl:value-of select="//tei:publisher[@n='1.1']" />
                                </div>

                                <div id="noteDate">
                                    <xsl:value-of select="//tei:note[@n='5.9']" />
                                    <xsl:value-of select="//tei:date[@n='2.1']" />
                                </div>

                            </div>
                    </div>
                
                <hr class="rounded"/> <!-- Divisore estetico trasparente -->

                    <!-- CARTOLINA N.2 -->

                    <div id="bibliografiaCartolina2">
                        <h2 style="text-align: center"> BIBLIOGRAFIA CARTOLINA N.2 </h2>

                            <div style='font-size: 18px' id="bibliografiaCartolina2">
                                
                                <div id="noteTitle1">
                                    <xsl:value-of select="//tei:note[@n='5.6']" />
                                    <xsl:value-of select="//tei:title[@n='3']" />
                                </div>

                                <div id="author2.1"><xsl:value-of select="//tei:author[@n='2.1']" /></div>

                                <div id="notePubPlace1">
                                    <xsl:value-of select="//tei:note[@n='5.10']" />
                                    <xsl:value-of select="//tei:pubPlace[@n='2.1']" />
                                </div>

                                <div id="noteNote">
                                    <xsl:value-of select="//tei:note[@n='5.11']" />
                                    <xsl:value-of select="//tei:note[@n='5.13']" />
                                </div>

                                <div id="noteDate1">
                                    <xsl:value-of select="//tei:note[@n='5.12']" />
                                    <xsl:value-of select="//tei:date[@n='3.2']" />
                                </div>

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
./PROGETTO/cartoline.xsl: 63;15;0 ms (307 elems, 322 attrs, 0 spaces, 11993 chars)

alexd@LAPTOP-5KGK8IFC MINGW64 ~/Desktop/DOCUMENTI XML
$ java -jar \SaxonHE10-3J/saxon-he-10.3.jar -s:./PROGETTO/cartoline.xml -xsl:./PROGETTO/cartoline.xsl -o:./PROGETTO/cartoline.html


PROGETTO DI CODIFICA DI TESTI CREATO DALLO STUDENTE: Alessandro Salvatori

-->








































































































