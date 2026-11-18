<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:output method="html" encoding="UTF-8" />

    <xsl:template match="/document">

        <html>
            <head>
                <title>Catalogue</title>
                <link rel="stylesheet" href="style.css" />
            </head>

            <body>

                <h1>Cuero Asasino</h1>

                <h2>Informations du document</h2>

                <p>Cote : <xsl:value-of select="@cote" /></p>

                <p>Titre : <xsl:value-of select="titre" /></p>

                <p>Année : <xsl:value-of select="annee" /></p>

                <p>Prix : <xsl:value-of select="prix" /> FCFA</p>

                <h2>Les auteurs</h2>

                <ul>
                    <xsl:for-each select="auteur">
                        <li>
                            <xsl:value-of select="." />
                        </li>
                    </xsl:for-each>
                </ul>

                <p>
                    <xsl:if test="@disponible='true'"> Disponible </xsl:if>
                </p>

            </body>
        </html>

    </xsl:template>

</xsl:stylesheet>