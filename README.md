# Automações de Testes API OMDB

Esse projeto implementa todos os fluxos de testes automatizados do Teste De API do OMDB

> Utilizando a stack: Ruby + Cucumber + HTTParty, esse projeto tem o intuito de implementar a automação dos testes para a tabela "By Search" da API http://www.omdbapi.com utilizando o parametro "s"
=300. 

[![Ruby Version][ruby-image]][ruby-url]
[![Cucumber Version][cucumber-image]][cucumber-url]
[![HTTParty Version][httparty-image]][httparty-url]

## Arquitetura do projeto

Toda descrição e explicação sobre a arquitetura do projeto pode ser vista [aqui](https://drive.google.com/file/d/1JnrR4z01-a3m4alm7hE7L8k_z_Q3N7oa/view?usp=sharing). 


## Execução

Para executar os testes, faça toda a configuração do seu ambiente, e faça o clone do projeto em sua máquina.

* para instalar as dependencias, acesse o diretório do projeto pelo seu console, e execute o comado:

```sh
bundle install
```
* após concluir a instalação, para executar o teste, execute o comando abaixo, substituindo "@tag" para a tag do teste que você deseja executar.

```sh
cucumber -t @suatag
```

* para gerar o report execute o comado:

```sh
cucumber --format html --out=report.htm
```


[ruby-image]: https://img.shields.io/badge/ruby-2.6.5--1-red
[ruby-url]: https://www.ruby-lang.org/pt/
[cucumber-image]: https://img.shields.io/badge/cucumber-using-brightgreen
[cucumber-url]: https://cucumber.io/
[httparty-image]: https://img.shields.io/badge/httparty-0.18.1-yellow
[httparty-url]: https://rubygems.org/gems/httparty/versions/0.13.7?locale=pt-BR
