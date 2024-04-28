Dado('que preciso realizar uma pesquisa') do
  visit('')
  home_page.verificar_home
end

Quando('informar um {string} para pesquisar') do |artigo|
  home_page.pesquisar_artigo(artigo)
end

Entao('devo visualizar os artigos referentes ao assunto informado {string}') do |artigo|
  artigo_completo = detalhe_page.acessar_artigo_encontrado(artigo)
  expect(artigo_completo).to include artigo
end

Entao('devo visualizar a mensagem {string}') do |mensagem|
  expect(detalhe_page.artigo_nao_encontrado).to include mensagem
end
