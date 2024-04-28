# Projeto de Automação Teste Técnico
> Agibank

## Índices
- [Guia de instalação](#installation)
- [Equipe](#team)
- [Resources](#resources)

## Guia de instalação
- Todo o código do projeto se encontra no repositório

1. Dependências Globais

    * Instalar o [Ruby + Devkit] link para download =>(https://rubyinstaller.org/downloads/)
    - Rodar o executavel de instalação e no final executar o comando 1 aguarda instalar, 2 aguarda e 3 por final

    * Ou Instalar o Ruby via [Homebrew](http://brew.sh/)
    ```
    $ brew install ruby
    ```
    * Instalar Bundler (Sudo pode ser necessário)
    - Bundler é o gerenciador de gemas do Ruby, oferece um ambiente consistente para o gerenciamento e instalação
    das dependencias do projeto.
    ```
    $ gem install bundler
    ```
2. Dependências do Projeto

	* Instalar pacotes (Usar sudo caso necessário)
	```
	$ bundle install
	```

### Executar Testes
  Alterar o arquivo cucumber.yml de acordo com o ambiente, ambiente: plataforma=MACos (Para MAC), plataforma=Wind (Para Windows)
  Executar o arquivo Ruby webdrivers.rb, para realizar a atualização do chromedriver.
  O comando cucumber permite executar uma série de funções que podem ser informadas pelo comando “cucumber -help”, o argumento “-t” significa que iremos passar uma tag por parâmetro e “@realizar_pesquisa” é a tag que será executada, pois foi informada na escrita da feature.
  ```
	$ cucumber -t @TagTesteCenario”
	```
  Existe no projeto o plugin de report, para visualizar o report, depois que terminar a execução, acessar a pasta results e selecionar o report
## Candidato

- Joao Paulo

### Resources

##### [SeleniumHQ Documentation](http://www.seleniumhq.org/docs/)

##### [Cucumber Documentation](https://cucumber.io/docs/reference)

##### [Ruby Documentation](http://ruby-doc.org/)

##### [Stack Overflow](http://stackoverflow.com/)
