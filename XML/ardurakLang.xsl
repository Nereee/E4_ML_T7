<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:param name="id"></xsl:param>
    <xsl:template match="enpresa">
        <html>
            <head>
                <title>JPAM Ardurak</title>
                <link rel="stylesheet" type="text/css" href="../css/main.css" />
                <link rel="stylesheet" type="text/css" href="../css/enpresa.css" />
                <link rel="shortcut icon" href="../img/logo/BlancoTransparente.png" />
                <meta name="viewport" content="width=device-width, initial-scale=1.0" />
            </head>
            <body>
                <header>
                    <img id="headerLogoa" src="../img/logo/BlancoTransparente.png" alt="logoa" />
                    <h1>
                        <xsl:value-of select="@izena" />
                    </h1>
                    <h3>"Zure erritmoa, gure pasioa"</h3>
                </header>
                <div class="primary-nav">
                    <button class="hamburger open-panel nav-toggle" id="menu_open">
                        <span class="screen-reader-text">Menu</span>
                    </button>
                    <nav class="menu">
                        <a href="../index.html" class="logotype">JPAM<span>MUSIC</span></a>
                        <div class="overflow-container">
                            <ul class="menu-dropdown">
                                <li>
                                    <a href="../index.html">Hasiera</a>
                                </li>
                                <li class="menu-hasdropdown">
                                    <a href="../html/artistak.html">Artistak</a>
                                </li>
                                <li>
                                    <a href="../html/albumak.html">Albumak</a>
                                </li>
                                <li>
                                    <a href="../php/login.php">Intraneta</a>
                                </li>
                            </ul>
                        </div>
                    </nav>
                </div>
                <main>
                    <xsl:for-each select="//ardura">
                        <xsl:if test="@id=$id">
                            <h1>
                                <xsl:value-of select="izena"></xsl:value-of> langileak: </h1>
                        </xsl:if>
                    </xsl:for-each>
                    <div id="langileak">
                        <xsl:for-each select="//langilea">
                            <xsl:if test="ardurak/ardura=$id">
                                <div class="langilekutxa">
                                    <div class="langileIzena">
                                        <img>
                                            <xsl:attribute name="src"><xsl:value-of
                                                    select="argazkia"></xsl:value-of></xsl:attribute>
                                            <xsl:attribute name="alt"><xsl:value-of select="izena"></xsl:value-of></xsl:attribute>
                                        </img>
                                        <p>
                                            <xsl:value-of select="izena"></xsl:value-of>
                                        </p>
                                    </div>
                                    <div class="langileinfo">
                                        <p>Abizena: <xsl:value-of select="abizena"></xsl:value-of></p>
                                        <p>Jaiotze-Data: <xsl:value-of select="JaiotzeData"></xsl:value-of></p>
                                        <p>Emaila: <xsl:value-of select="emaila"></xsl:value-of></p>
                                        <p>Kontratazio data: <xsl:value-of select="kontratazioaData"></xsl:value-of></p>
                                        <p>Soldata: <xsl:value-of select="soldata">€</xsl:value-of></p>
                                        <p>Helbidea: <xsl:value-of select="bizilekua/helbidea"></xsl:value-of></p>
                                        <p>Herria: <xsl:value-of select="bizilekua/herria"></xsl:value-of></p>
                                        <p>Posta Kodea: <xsl:value-of select="bizilekua/postaKodea"></xsl:value-of></p>
                                    </div>
                                </div>
                            </xsl:if>
                        </xsl:for-each>
                    </div>
                </main>
                <footer>
                    <div id="footerKutxa1">
                        <ul>
                            <li>Kontaktu email-a: <a
                                    href="https://www.google.com/intl/es/gmail/about/">
        jpammusic@gmail.com</a>
                            </li>
                            <li>Helbidea: Etxepare, 14, Elorrieta</li>
                            <li>Telefonoa: +643 348 865</li>
                        </ul>
                    </div>
                    <div id="footerKutxa2">
                        <ul>
                            <li>
                                <a href="https://creativecommons.org">Lege informazioa</a>
                            </li>
                            <li>
                                <a href="https://creativecommons.org">Pribatutasun politika</a>
                            </li>
                        </ul>
                    </div>
                    <div id="footerKutxa3">
                        <div class="redes-sociales">
                            <a href="https://www.instagram.com/">
                                <img src="../img/apps/instagram.png" alt="instagram" />
                            </a>
                            <a href="https://www.youtube.com/">
                                <img src="../img/apps/youtube.png" alt="youtube" />
                            </a>
                            <a href="https://www.facebook.com/?locale=es_ES">
                                <img src="../img/apps/facebook.png" alt="facebook" />
                            </a>
                            <a href="https://twitter.com/?lang=es">
                                <img src="../img/apps/twitter.png" alt="twitter" />
                            </a>
                        </div>

                        <div class="creative-commons">
                            <a rel="license"
                                href="http://creativecommons.org/licenses/by-nc-sa/4.0/">
                                <img alt="Licencia Creative Commons" style="border-width:0"
                                    src="https://i.creativecommons.org/l/by-nc-sa/4.0/88x31.png" />
                            </a>
                        </div>
                    </div>
                </footer>
                <script src="../js/menu.js"></script>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>