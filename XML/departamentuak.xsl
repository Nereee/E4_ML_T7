<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"  version="1.0" >
    <xsl:output method="html" version="5"></xsl:output>
    <xsl:template match="/enpresa">
        <html>
            <head>
                <title>JPAM Departamentuak</title>
                <link rel="stylesheet" type="text/css" href="../css/main.css" />
                <link rel="stylesheet" type="text/css" href="../css/xsl.css" />
                <link rel="shortcut icon" href="../img/logo/BlancoTransparente.png" />
            </head>
            <body>
                <header>
                    <img id="headerLogoa" src="../img/logo/BlancoTransparente.png" alt="logoa" />
                    <h1><xsl:value-of select="@izena"/></h1>
                    <h3>"Zure erritmoa, gure pasioa"</h3>
                </header>
                <div class="primary-nav">
                    <button class="hamburger open-panel nav-toggle" id="menu_open">
                        <span class="screen-reader-text">Menu</span>
                    </button>
                    <nav class="menu">
                        <a href="#" class="logotype">JPAM<span>MUSIC</span></a>
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
                  <div id="langileak">
                        <xsl:for-each select="//langilea">
                          <div class="langilekutxa">
                            <img>
                              <xsl:attribute name="src"><xsl:value-of select="argazkia"></xsl:value-of></xsl:attribute>
                              <xsl:attribute name="alt"><xsl:value-of select="izena"></xsl:value-of></xsl:attribute>
                            </img>
                            <p><xsl:value-of select="izena"></xsl:value-of></p>
                          </div>
                        </xsl:for-each>
                  </div>
                </main>

                <footer>
                    <div id="footerKutxa1">
                        <!-- <ul>
                        <li>Kontaktu email-a: 
                            <a
                        href="https://mail.google.com/mail/u/0/?tab=rm&ogbl#inbox?compose=CllgCJNvvxbWbPgGJKPkffpxvsQKXDBdXfHBSKMzNKbgqgjJpwzhGDTVFdZkMlBsmRxbfcwHTdV"/>jpammusic@gmail.com</a>
                        </li>
                        <li>Helbidea: Etxepare, 14, Elorrieta</li>
                        <li>Telefonoa: +643 348 865</li>
                    </ul> -->
                    </div>
                    <div id="footerKutxa2">
                        <ul>
                            <li>
                                <a href="#">Lege informazioa</a>
                            </li>
                            <li>
                                <a href="#">Pribatutasun politika</a>
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