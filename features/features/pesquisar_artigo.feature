# language: pt

@realizar_pesquisa
Funcionalidade: Realizar Pesquisa
  Eu como candidato a vaga de QA Senior 
  Quero realizar uma pesquisa no site informado
  Para encontrar artigos

  @pesquisar_artigos
  Esquema do Cenário: Pesquisar artigos
    Dado que preciso realizar uma pesquisa 
    Quando informar um <termo> para pesquisar
    Entao devo visualizar os artigos referentes ao assunto informado <termo>
      Exemplos:
      | termo        | 
      | 'Agibank'    |
      | 'qualidade'  |

  @artigo_nao_encontrado
  Cenário: Artigo não encontrado para sua pesquisa 
    Dado que preciso realizar uma pesquisa 
    Quando informar um <termo> para pesquisar
    Entao devo visualizar a mensagem "Lamentamos, mas nada foi encontrado para sua pesquisa, tente novamente com outras palavras."
      Exemplos:
      | termo        | 
      | 'dsfsdfsdfs' |

