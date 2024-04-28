class DetalhePage < SitePrism::Page
  # Detalhes do artigo
  element :descricao_retorno_busca, '.ast-archive-title'
  element :texto_completo, '#main'
  elements :lista_retorno_busca, '.ast-post-format-'
  element :descricao_retorno_sem_resultado, '.page-content'

  # MOTODOS
  def acessar_artigo_encontrado(artigo)
    artigo_completo = ''
    lista_retorno_busca.each do |item|
      descricao_retorno_busca.visible?
      if lista_retorno_busca.size > 0
        item.click
        artigo_completo = texto_completo.text
        break
      end
    end
    artigo_completo
  end

  def artigo_nao_encontrado
    descricao_retorno_sem_resultado.visible?
    descricao_retorno_sem_resultado.text
  end
  
end
