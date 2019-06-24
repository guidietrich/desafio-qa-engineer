# Desafio QA Engineer

## Conteúdo

1. Automação E2E
2. Automação de serviço
3. Levantamento de Cenários

## Justificativa

### Automação E2E 

Foi adotado o padrão **Page Object Model** implementado com a gem *SitePrism*. Para melhor organização do projeto, acrescentei a pasta `specs` que compõe as features utilizadas no projeto e a pasta `dataset`, contendo o arquivo `.yml` com a url especificada.

No arquivo `env.rb`, utilizei a gem `faker` para gerar massa aleatória e a gem `javascript` para executar comando javascript na inserção de cor e populá-los no método [`preencher_campos`](desafio_qa_engineer\automacao_e2e\features\pages\cadastrar_perfil_section.rb), responsável pelo preenchimentos dos campos na criação de perfil/endereço.  
A gem `pry` foi utilizada para realizar o *debug* do código.

Para agrupar os elementos conforme seu contexto, foi utilizado a orientação com `SitePrism::Section`.

Como boas práticas orientadas ao design de software, a implementação das classes e métodos foram baseados no princípio de Responsabilidade Única.

### Automação de serviço

Neste projeto foi considerado a utilização da gem `httparty` para manipulação das requisições de *web service RESTful* e a gem `json` para converter o formato JSON em objeto Ruby. 

Além do cenário de sucesso para recuperar o *response* da requisição com um CEP válido, foram criados os cenários de CEP inválido e CEP inexistente:

- CEP inexistente: Um CEP que atende a quantidade de caracteres de um CEP, porém não existe na base dos Correios. A requisição retorna HTTP 200, porém retorna campo `erro` no JSON.

- CEP inválido: Um CEP que não atende a quantidade de caracteres de um CEP, pois este tem menos ou mais que 8 caracteres, tornando-o inválido e retornando uma Bad Request HTTP.

### Levantamento de Cenários

Os possíveis cenários levantados de acordo com a imagem foram listados e identificados pelo uso de `tags` do Cucumber. Além dos testes funcionais e de regressão, foi contemplado os testes não funcionais, como teste de portabilidade, teste de perfomance e teste UI & GUI.

[GitHub Page](https://github.com/guidietrich/)

> Criado por Guilherme Dietrich em 23/06/2019. 