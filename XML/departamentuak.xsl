﻿<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" version="5"></xsl:output>
    <xsl:template match="/enpresa">
        <html>
            <head>
                <title>JPAM Departamentuak</title>
                <link rel="stylesheet" type="text/css" href="../css/main.css" />
                <link rel="stylesheet" type="text/css" href="../css/enpresa.css" />
                <link rel="shortcut icon" href="../img/logo/BlancoTransparente.png" />
                <meta name="viewport" content="width=device-width, initial-scale=1.0" />
            </head>
            <body>
                <header>
                    <img id="headerLogoa" src="../img/logo/BlancoTransparente.png" alt="logoa" />
                    <h1>JPAM MUSIC</h1>
                    <h3>"Zure erritmoa, gure pasioa"</h3>
                </header>
                <div class="primary-nav">
                    <button class="hamburger open-panel nav-toggle" id="menu_open">
                        <span class="screen-reader-text">Menu</span>
                    </button>
                    <nav class="menu">
                        <a href="index.html" class="logotype">JPAM<span>MUSIC</span></a>
                        <div class="overflow-container">
                            <ul class="menu-dropdown">
                                <li>
                                    <a href="../index.html">Hasiera</a>
                                </li>
                                <li>
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
                <main id="DeptMain">
                    <div id="DeptInfoEtaBTN">
                        <div id="DeptInfo">
                            <h1>JPAM Departamentuak:</h1>
                            <p>Gure enpresetik ahalbidetzen duten espezializatutako departamentu asko ezagutu</p>
                        </div>
                            <button id="NavBTN" onclick="window.location.href = 'langileak.php'">Ikusi Langileak</button>
                    </div>
                    <div class="taulakutxa">
                        <div class="tauladepart">
                            <form method="GET" action="departamentuak.php">
                                <table>
                                    <thead>
                                        <tr>
                                            <th>Departamentu izena</th>
                                            <th>Aurrekontua</th>
                                            <th>Telefonoa</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <xsl:for-each select="//departamentua">
                                            <tr>
                                                <td class="DeptIzena">
                                                    <button type="submit" name="id_depto"
                                                        value="{@id}">
                                                        <xsl:value-of select="izena" />
                                                        <span>
                                                            <img src="../img/apps/ireki.png"
                                                                alt="ireki" />
                                                        </span>
                                                    </button>
                                                </td>
                                                <td class="Deptinfo">
                                                    <xsl:value-of select="aurrekontua"></xsl:value-of><xsl:text> €</xsl:text>
                                                </td>
                                                <td class="Deptinfo"> +34 <xsl:value-of
                                                        select="telefonoa"></xsl:value-of>
                                                </td>
                                            </tr>
                                        </xsl:for-each>
                                    </tbody>
                                </table>
                            </form>
                        </div>
                    </div>
                </main>
                <footer>
                    <div id="footerKutxa1">
                        <ul>
                            <li>Kontaktu email-a: <a href="https://www.google.com/intl/es/gmail/about/">
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
                                <img src="../img/apps/instagram.png" alt="instagram"/>
                            </a>
                            <a href="https://www.youtube.com/">
                                <img src="../img/apps/youtube.png" alt="youtube"/>
                            </a>
                            <a href="https://www.facebook.com/?locale=es_ES">
                                <img src="../img/apps/facebook.png" alt="facebook"/>
                            </a>
                            <a href="https://twitter.com/?lang=es">
                                <img src="../img/apps/twitter.png" alt="twitter"/>
                            </a>
                        </div>

                        <div class="creative-commons">
                            <a rel="license"
                                href="http://creativecommons.org/licenses/by-nc-sa/4.0/">
                                <img alt="Licencia Creative Commons" style="border-width:0"
                                    src="https://i.creativecommons.org/l/by-nc-sa/4.0/88x31.png"/>
                            </a>
                        </div>
                    </div>
                </footer>
                <script src="../js/menu.js"></script>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>