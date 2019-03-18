<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <table border="3">
                    <tr bgcolor="coralblue">
                        <th>MovieID</th>
                        <th>TypeID</th>
                        <th>Movie title</th>
                        <th>Movie copies</th>
                        <th>Movie cost</th>
                        <th>Is Eligible</th>
                        <th>Movie Indate</th>
                    </tr>
                    <xsl:for-each select="movielist/movie">
                        <tr>
                            <td><xsl:value-of select="MovieID"/></td>
                            <td>  <xsl:value-of select="TypeID"/></td>
                            <td><xsl:value-of select="Movie_title"/></td>
                            <td><xsl:value-of select="Movie_copies"/></td>
                            <td><xsl:value-of select="Movie_cost"/></td>
                            <td><xsl:value-of select="isEligible"/></td>
                            <td><xsl:value-of select="movie_indate"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
