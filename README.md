# Projeto de automação de API com Ruby e HTTParty

## Descrição do Projeto
- Esse projeto tem por objetivo a automação do contrato da API do Via Cep.

## Tecnologias utilizadas
- Linguagem Ruby
- HTTParty
- Rspec
- Jsonmatchers
- Allure Reports

Nesse projeto foi utilizado uma gem do Ruby chamada Json Matchers para fazer as validações de contratos das APIs. Com isso visa a redução de código para realizar as asserções com o Rspec.

## Guia de instalação
- Todo o código do projeto se encontra no repositório

1. Dependências do Projeto

    * Instalar o [Ruby + Devkit] link para download =>(https://rubyinstaller.org/downloads/)
    - Recomendo utilizar a versão 3.1.0 a qual foi utilizado no projeto

2. Instalar o Bundler
    - Bundler é o gerenciador de gems do Ruby, oferece um ambiente consistente para o gerenciamento e instalação das dependencias do projeto.
    ```
    $ gem install bundler
    ```

3. Instalar as gems, apos ter instalar o bundler no passo anterior
	```
	$ bundle install
	```

### Executar Testes
  1. Executando todos os testes, digite no terminal estando na raiz do projeto:
    ```
	rspec
	```

### Caso queira executar o relatório do Allure Reports localmente, é necessário fazer a instalação de algumas dependências, tais como:
    Ter instalado o JAVA versão 8 ou superior, e configurado corretamente.

    Instalar o NPM que é o gerenciador de pacotes do NodeJs (essencial para instalar o allure command line)
    Após ter instalado o NPM(NodeJS) instalar o Allure Command Line através do comando:
    ```
    npm install -g allure-commandline --save-dev
    ```

    Agora após rodar os testes de API utilizando o comando "rspec", rode o comando abaixo:
    ```
    allure serve allure-results
    ```

    Com esse comando o allure irá abrir o browser mostrando os resultados da sua ultima execução no seu navegador.

### Autor do Projeto
- Samuel Rossato

### Site utilizado para fazer a conversão do responseBody em Json Schema

https://www.liquid-technologies.com/online-json-to-schema-converter

### Algumas documentações de suporte para as bibliotecas que foram utilizadas no projeto

##### [Json Matcher Documentation part 01](http://json-schema.org/understanding-json-schema/reference/string.html)
##### [Json Matcher Documentation part 02](http://json-schema.org/understanding-json-schema/reference/object.html)
##### [Json Matchers](https://thoughtbot.com/blog/validating-json-schemas-with-an-rspec-matcher)
##### [Rspec](https://relishapp.com/rspec/rspec-expectations/v/3-11/docs/built-in-matchers)
##### [HTTParty](https://www.rubydoc.info/gems/httparty/0.13.7)