# **Construindo seu Primeiro Projeto Lógico de Banco de Dados**

Este projeto consiste na replicação do modelo lógico de banco de dados para o cenário de e-commerce, com base nas especificações fornecidas. O objetivo principal é criar um esquema de banco de dados e realizar a persistência de dados para permitir a execução de consultas SQL.

## **Descrição do Projeto**

O projeto visa aplicar o mapeamento do modelo conceitual para um modelo lógico de banco de dados, incluindo a definição de chaves primárias e estrangeiras, bem como a aplicação de constraints. A modelagem seguirá os princípios do modelo EER (Enhanced Entity-Relationship) e abordará refinamentos adicionais especificados no contexto do cenário de e-commerce.

## **Detalhes do Cenário**

As especificações do cenário de e-commerce incluem os seguintes refinamentos:

- Cliente PJ e PF: Uma conta pode ser Pessoa Jurídica (PJ) ou Pessoa Física (PF), mas não pode ter ambas as informações.
- Pagamento: Um pedido pode ter cadastrado mais de uma forma de pagamento.
- Entrega: Cada pedido de entrega possui um status e um código de rastreio.

## **Perguntas para as Consultas SQL**

Para embasar as consultas SQL, algumas perguntas relevantes foram identificadas:

1. Quantos pedidos foram feitos por cada cliente?
2. Existe algum vendedor que também atua como fornecedor?
3. Qual é a relação de produtos fornecidos e seus estoques disponíveis?
4. Como é a relação entre os nomes dos fornecedores e os nomes dos produtos?

## **Estrutura do Projeto**

- **construindo_primeiro_projeto_logico_bd.sql**: Script SQL contendo a criação do esquema do banco de dados, incluindo tabelas, chaves primárias, estrangeiras e constraints.
- **queries.sql**: Arquivo contendo queries SQL para realizar operações de consulta conforme as perguntas especificadas.

