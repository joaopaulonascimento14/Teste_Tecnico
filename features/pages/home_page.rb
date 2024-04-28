class HomePage < SitePrism::Page
  # Header da página
  element :logo, '.site-logo-img'
  element :icone_busca, '.astra-search-icon'
  element :input_busca, '#search-field'

  # MOTODOS
  def verificar_home
    logo.visible?
  end

  def pesquisar_artigo(artigo)
    icone_busca.visible?
    icone_busca.click
    input_busca.set artigo
    input_busca.send_keys :enter
  end
end
