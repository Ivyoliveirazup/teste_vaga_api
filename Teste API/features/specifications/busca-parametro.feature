#language: pt
#utf-8

@validacao_paramiter
Funcionalidade: Validar os tipos de filmes
  @validacao_type
  Esquema do Cenário: Validar os tipos de filmes
    Quando realizar a requisição informando o <type>
    Então o sistema retorna o código <retorno>

    Exemplos:

      | type         | retorno |
      | "movie"      | 200     |
      | "series"     | 200     |
      | "episode"    | 200     |
      | "game"       | 200     |

  @validacao_year
  Esquema do Cenário: Validar o ano dos filmes
    Quando realizar a requisição informando o ano <y>
    Então o sistema retorna o código <retorno>

    Exemplos:

      | y       | retorno|
      | 1962    |  200   |
      | 1971    |  200   |
      | 1978    |  200   |
      | 2000    |  200   |
      | 2007    |  200   |
      | 2010    |  200   |
      | 2013    |  200   |

  @validacao_page
  Esquema do Cenário: Validar as paginas que retornam
    Quando realizar a requisição informando qual a página <page>
    Então o sistema retorna o código <retorno>

    Exemplos:

      | page    | retorno |
      |  1      |  200    |
      |  5      |  200    |
      |  50     |  200    |
      |  0      |  200    |

  @validacao_callback
  Esquema do Cenário: Validar nome de retorno da chamada
    Quando realizar a requisição informando o <callback>
    Então o sistema retorna o código <retorno>

    Exemplos:

      | callback    | retorno|
      | "mymovies"  |  200   |
      | "teletunes" |  200   |

  @validacao_v
  Esquema do Cenário: Validar a versão da API
    Quando realizar a requisição informando e o numero da api <v>
    Então o sistema retorna o código <retorno>

    Exemplos:

      | v    |retorno |
      | 1    |  200   |
      | 5    |  200   |

  @validacao_r
  Esquema do Cenário: Validar o tipo de dados a ser retornado
    Quando realizar a requisição informando e o numero do dado <r>
    Então o sistema retorna o código <retorno>

    Exemplos:

      | r     |retorno |
      | 1     |  200   |
      | 100   |  200   |