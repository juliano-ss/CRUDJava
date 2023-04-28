# CRUDJava
![car registration java web](https://github.com/juliano-ss/CRUDJava/blob/main/src/main/CRUDcarros.png?raw=true)

# Carros - CRUD Java Cadastro de carros

Este projeto consiste em um sistema de cadastro de carros, desenvolvido em Java Web com o uso de JSP e Servlets. 
A aplicação realiza as operações básicas de CRUD (Create, Read, Update, Delete),
permitindo ao usuário cadastrar, visualizar, alterar e excluir informações sobre carros, modelo e placa.

## Funcionamento

- Ao executar o programa, irá abrir uma página WEB, onde será mostrado uma tela estilizada por CSS com os campos de modelo e placa, e dois botões abaixo, adicionar e listar.
- Ao acionar o adicionar com os dados inseridos nos campos de inputs, um novo carro é inserido no banco de dados (MYSQL).
- Ao acionar o listar, é mostrado ao usuário uma lista de todos os carros cadastrados no banco, e com dois botões à frente de cada um, excluir e alterar e assim executar mais duas ações.
- Caso algum desses botões seja acionado, ele executara a ação desejada e emitira uma mensagem e mostrara dois botões para o retorno a página com os carros listados, ou a página inicial.

## Classes Java

- `CarroDAO`: classe que realiza operações de acesso a banco de dados para a entidade `Carro`.
- `ConnectionDAO`: classe que estabelece e gerencia a conexão com o banco de dados.
- `CarroDTO`: classe que representa a entidade `Carro` e contém seus atributos e métodos.

## Classes JSP

- `alterarCarro.jsp`: página que permite a alteração dos dados de um carro cadastrado.
- `excluirCarro.jsp`: página que permite a exclusão de um carro cadastrado.
- `frmAlterarCarro.jsp`: formulário para preenchimento dos dados do carro a ser alterado.
- `frmExcluirCarro.jsp`: formulário para confirmação da exclusão do carro.
- `inserirCarro.jsp`: página que permite a inserção de um novo carro no banco de dados.
- `listarCarros.jsp`: página que lista todos os carros cadastrados no banco de dados.

## Pré-requisitos

Para executar o programa é necessário ter o Java Development Kit (JDK) instalado na máquina.

## Executando o programa

Para executar a aplicação, é necessário configurar o servidor de aplicação (por exemplo, Tomcat) e o banco de dados (por exemplo, MySQL) de acordo com as informações presentes na classe ConnectionDAO.

Este projeto foi desenvolvido com o objetivo de aplicar conceitos de Java Web e CRUD em um sistema básico de cadastro de carros, podendo ser utilizado como base para o desenvolvimento de projetos mais complexos e completos.
