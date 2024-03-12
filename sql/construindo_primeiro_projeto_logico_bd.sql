-- Criar Tabelas
CREATE TABLE Clientes (
    ClienteID INT PRIMARY KEY,
    Nome VARCHAR(100),
    TipoCliente ENUM('PJ', 'PF')
);

CREATE TABLE Pedidos (
    PedidoID INT PRIMARY KEY,
    ClienteID INT,
    FormaPagamento VARCHAR(50),
    StatusEntrega VARCHAR(50),
    CodigoRastreio VARCHAR(50),
    FOREIGN KEY (ClienteID) REFERENCES Clientes(ClienteID)
);

CREATE TABLE Produtos (
    ProdutoID INT PRIMARY KEY,
    Nome VARCHAR(100),
    Preco DECIMAL(10,2)
);

CREATE TABLE Fornecedores (
    FornecedorID INT PRIMARY KEY,
    Nome VARCHAR(100)
);

CREATE TABLE FormasPagamento (
    FormaPagamentoID INT PRIMARY KEY,
    Nome VARCHAR(50)
);

CREATE TABLE Entregas (
    EntregaID INT PRIMARY KEY,
    PedidoID INT,
    Status VARCHAR(50),
    CodigoRastreio VARCHAR(50),
    FOREIGN KEY (PedidoID) REFERENCES Pedidos(PedidoID)
);

-- Inserir Dados
INSERT INTO Clientes (ClienteID, Nome, TipoCliente) VALUES
(1, 'Empresa A', 'PJ'),
(2, 'João', 'PF');

INSERT INTO Pedidos (PedidoID, ClienteID, FormaPagamento, StatusEntrega, CodigoRastreio) VALUES
(101, 1, 'Boleto', 'Entregue', 'ABC123'),
(102, 2, 'Cartão de Crédito', 'Em trânsito', 'DEF456');

INSERT INTO Produtos (ProdutoID, Nome, Preco) VALUES
(1, 'Produto A', 100.00),
(2, 'Produto B', 50.00);

INSERT INTO Fornecedores (FornecedorID, Nome) VALUES
(1, 'Fornecedor X'),
(2, 'Fornecedor Y');

INSERT INTO FormasPagamento (FormaPagamentoID, Nome) VALUES
(1, 'Boleto'),
(2, 'Cartão de Crédito');

INSERT INTO Entregas (EntregaID, PedidoID, Status, CodigoRastreio) VALUES
(1, 101, 'Entregue', 'ABC123'),
(2, 102, 'Em trânsito', 'DEF456');

-- Queries SQL Propostas

-- Recuperações simples com SELECT Statement
SELECT * FROM Clientes;
SELECT * FROM Pedidos WHERE ClienteID = 1;

-- Filtros com WHERE Statement
SELECT * FROM Pedidos WHERE StatusEntrega = 'Em trânsito';
SELECT * FROM Produtos WHERE Preco > 50.00;

-- Expressões para gerar atributos derivados
SELECT ProdutoID, Nome, Preco, (Preco * 0.2) AS Desconto FROM Produtos;

-- Definição de ordenações dos dados com ORDER BY
SELECT * FROM Pedidos ORDER BY StatusEntrega;

-- Condições de filtros aos grupos – HAVING Statement
SELECT ClienteID, COUNT(*) AS TotalPedidos FROM Pedidos GROUP BY ClienteID HAVING TotalPedidos > 1;

-- Junções entre tabelas para fornecer uma perspectiva mais complexa dos dados
SELECT p.PedidoID, c.Nome AS NomeCliente, f.Nome AS FormaPagamento
FROM Pedidos p
JOIN Clientes c ON p.ClienteID = c.ClienteID
JOIN FormasPagamento f ON p.FormaPagamento = f.Nome;
