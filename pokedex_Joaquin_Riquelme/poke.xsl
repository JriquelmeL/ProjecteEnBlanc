<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <head>
        <title>POKEMON</title>
        <link rel="stylesheet" type="text/css" href="./estilos/pokedex.css" />
      </head>
      <body>
        <div id="tot">
          <section>
            <xsl:for-each select="pokedex/pokemon">
              <article>
                <img alt="">

                  <xsl:attribute name="src">

                    <xsl:value-of select="imagen" />

                  </xsl:attribute>

                </img>

                <p class="numero">
                  <xsl:for-each select="pokedex/pokemon"></xsl:for-each>
                </p>

                <p class="nombre">
                  <xsl:for-each select="pokedex/pokemon">
                    <xsl:value-of select="nombre" />
                  </xsl:for-each>
                </p>

                <ol>
                  <xsl:for-each select="pokedex/pokemon">
                    <xsl:value-of select="tipos" />
                  </xsl:for-each>
                </ol>

                <xsl:if test="tipos/tipo='Planta'">
                  <p class="planta">Planta</p>
                </xsl:if>
                <xsl:if test="tipos/tipo='Veneno'">
                  <p class="veneno">Veneno</p>
                </xsl:if>
                <xsl:if test="tipos/tipo='Fuego'">
                  <p class="fuego">Fuego</p>
                </xsl:if>
                <xsl:if test="tipos/tipo='Volador'">
                  <p class="volador">Volador</p>
                </xsl:if>
                <xsl:if test="tipos/tipo='Agua'">
                  <p class="agua">Agua</p>
                </xsl:if>
                <xsl:if test="tipos/tipo='Bicho'">
                  <p class="bicho">Bicho</p>
                </xsl:if>
                <xsl:if test="tipos/tipo='Normal'">
                  <p class="normal">Normal</p>
                </xsl:if>

              </article>
            </xsl:for-each>
            <footer></footer>
          </section>
        </div>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>