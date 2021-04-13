# Pharma Inc
Este é um aplicativo desenvolvido para a empresa Pharma Inc, facilitando o gerenciamento e visualização de informações de seus clientes.

## Tecnologias usadas
- Linguagem Dart
- Framework Flutter
- Principais bibliotecas usadas:
    - Dio: Para acesso a API;
    - Modular: Gerenciamento de rotas;
    - Mobx: Gerenciamento de estado;
    - Intl: Conversão de data;

## Instalação
Primeiramente deve-se instalar o Dart seguindo a documentação do mesmo, link abaixo:

https://dart.dev/get-dart

Após instalação do Dart, instalar o flutter seguindo documentação abaixo:

https://flutter.dev/docs/get-started/install

Com as ferramentas devidamente instaladas é necessário fazer o Download desse repositório.

Após o download abra o projeto com Android Studio ou com VSCode.

Execute o comando "flutter pub get" para baixar as bibliotecas do pubspec.yaml.

E o projeto está pronto para ser usado.

## Como usar o código
O código foi desenvolvido em cima da metodologia MVC.

Ele está separado em Repositories, Models, Services e Pages.
- Repositories: repositório de clientes;
- Models: modelo de cliente;
- Services: serviços do repositório; 
- Pages: page = tela do aplicativo, controller = regras de negócio, modules = rotas;

## Como usar o aplicativo
O aplicativo iniciará com uma tela de Splash.

Após o carregamento da mesma, aparecerá a tela inicial, que contém uma lista de clientes.

Nela tem uma barra de pesquisa, no qual é possivel pesquisar pela nacionalidade do cliente utilizando as siglas em inglês.

Ao lado da barra de pesquisa, existe um filtro de gênero, o qual é possivel filtrar por "Ambos", "Masculino", ou "Feminino".

No final da lista existe um botão para carregar mais clientes.

Ao clicar sobre um cliente, o aplicativo redirecionará a uma outra tela, contendo informações detalhadas sobre ele.

Para voltar a tela anterior é necessário clicar no botão "X" no canto superior direito da tela.


Este projeto foi desenvolvido seguindo o desafio abaixo:

# Mobile Challenge 🏅 2021

## Introdução

Este é um desafio para testar seus conhecimentos de Mobile;

O objetivo é avaliar a sua forma de estruturação e autonomia em decisões para construir algo escalável utilizando um framework moderno.

Você está livre para usar **Android Kotlin** ou **Swift iOS** ou **Flutter** ou **React Native** ou **Ionic** no desenvolvimento da solução deste tech challenge.

[SPOILER] As instruções de entrega e apresentação do challenge estão no final deste Readme (=

## Case

A empresa Pharma Inc, está trabalhando em um projeto em colaboração com sua base de clientes para facilitar a gestão e visualização da informação dos seus pacientes de maneira simples e objetiva em uma aplicação onde podem listar, filtrar e expandir os dados disponíveis.
O seu objetivo nesse projeto, é trabalhar no desenvolvimento da Aplicação end que consumirá a API da empresa Pharma Inc seguindo os requisitos propostos neste desafio.

## Recursos

1. Estudar a documentação da REST API: https://randomuser.me/documentation
2. Trabalhar em um [FORK](https://lab.coodesh.com/help/gitlab-basics/fork-project.md) deste repositório em seu usuário ou utilizar um repositório em seu github pessoal (não esqueça de colocar no readme a referência a este challenge);
3. Logo da Marca: [Pharma Inc](assets/logo.png)
4. Cores para trabalhar no Projeto: [UI Colors](assets/colors.png)
5. [Wireframe](assets/screens.png) com as 3 telas principais.

## Lista de Pacientes

A tela inicial do projeto será um lista de pacientes que deverá conter um buscador para facilitar filtrar todos os que são exibidos na lista, proposta:

![List users](assets/list.png)

Para obter os dados, utilizaremos a API do Random User:

- https://randomuser.me/api/

Exemplo da resposta:

```json
{
   "results": [
       {
           "gender": "female",
           "name": {
               "title": "Ms",
               "first": "Alea",
               "last": "Christoffersen"
           }
       }
   ],
   "info": {
       "seed": "2f10116f1799d353",
       "results": 1,
       "page": 1,
       "version": "1.3"
   }
}
```

Além de realizar a request, devemos aplicar alguns filtros na API:

- Limitar em 50 resultados por request
- Utilizar o `Loading more` para indicar que estamos carregando mais dados da API

### Visualizar paciente

Para expandir a informação dos pacientes, teremos que adicionar o card como clicavél. Seguir o modelo proposto para o modal:

![View user](assets/modal.png)

Devemos exibir os seguintes campos do paciente:

- Imagem
- Nome completo
- Email
- Gênero
- Data de nascimento
- Telefone
- Nacionalidade
- Endereço
- ID (Número de identificação)

## Extras

Além do desafio proposto com as duas telas, temos alguns diferenciais:

- **Diferencial 1** Adicionar um filtro por Gênero na tabela;
- **Diferencial 2** Configurar o buscador para poder filtrar por nacionalidade;
- **Diferencial 3** Escrever Unit Tests na Lista de Pacientes. Escolher a melhor abordagem e biblioteca;

## Readme do Repositório

- Deve conter o título do projeto
- Uma descrição sobre o projeto em frase
- Deve conter uma lista com linguagem, framework e/ou tecnologias usadas
- Como instalar e usar o projeto (instruções)
- Não esqueça o [.gitignore](https://www.toptal.com/developers/gitignore)
- Se está usando github pessoal, referencie que é um challenge by coodesh


