CREATE TABLE endereco (
    cep CHAR(11) PRIMARY KEY NOT NULL,
    logradouro VARCHAR(50),
    numero CHAR(5), 
    bairro VARCHAR(30),
    cidade VARCHAR(30),
    estado CHAR(5)
);
CREATE TABLE cliente (
    idCliente INTEGER PRIMARY KEY,
    nome VARCHAR(100),
    telefone VARCHAR(11),
    dataNascimento DATE,
    email VARCHAR(40),
    FK_endereco CHAR(11),
    FOREIGN KEY (FK_endereco) REFERENCES endereco(cep)
);
CREATE TABLE produto (
    idProduto INTEGER PRIMARY KEY,
    nome VARCHAR(40),
    valor DECIMAL(10, 3),
    marca VARCHAR(10)
);
CREATE TABLE pedido (
    idPedido INTEGER PRIMARY KEY,
    valor DECIMAL(10, 2),
    numCasa CHAR(5),
    logradouro VARCHAR(50),
    cidade VARCHAR(30),
    bairro VARCHAR(30),
    FK_idCliente INTEGER,
    FOREIGN KEY (FK_idCliente) REFERENCES cliente(idCliente)
);
CREATE TABLE muitos_pra_muitos (
    FK_produto INTEGER,
    FK_pedido INTEGER,
    FOREIGN KEY (FK_produto) REFERENCES produto(idProduto),
    FOREIGN KEY (FK_pedido) REFERENCES pedido(idPedido)
);
CREATE TABLE fornecedor (
    idFornecedor INTEGER PRIMARY KEY,
    nome VARCHAR(40),
    cnpj CHAR(14),
    telefone CHAR(11),
    celular CHAR(11)
);

INSERT INTO endereco(cep, logradouro, numero, bairro, cidade, estado) VALUES
('61652636', 'rua poebla', '15', 'potira', 'caucaia', 'ceara'),
('61657896', 'rua juaci sampaio po', '15', 'itambe', 'caucaia', 'ceara'),
('61658639', 'av dom almeida lusto', '35', 'jurema', 'caucaia', 'ceara'),
('61659001', 'rua padre cicero', '101', 'bom jardim', 'caucaia', 'ceara'),
('61659002', 'avenida jose de alencar', '230', 'parque potira', 'caucaia', 'ceara'),
('61659003', 'rua dom pedro II', '45', 'nova metropole', 'caucaia', 'ceara'),
('61659004', 'rua maria jose de oliveira', '78', 'tabapuazinho', 'caucaia', 'ceara'),
('61659005', 'avenida getulio vargas', '256', 'granja lisboa', 'caucaia', 'ceara'),
('61659006', 'rua 7 de setembro', '19', 'itaoca', 'caucaia', 'ceara'),
('61659007', 'rua guilherme augusto', '312', 'parque soledade', 'caucaia', 'ceara'),
('61659008', 'travessa do comercio', '67', 'vila nova', 'caucaia', 'ceara'),
('61659009', 'rua carlos gomes', '123', 'potira II', 'caucaia', 'ceara'),
('61659010', 'rua dos coqueiros', '54', 'centro', 'caucaia', 'ceara'),
('61659011', 'avenida santos dumont', '890', 'itarare', 'caucaia', 'ceara'),
('61659012', 'rua joao paulo I', '175', 'piratininga', 'caucaia', 'ceara'),
('61659013', 'rua rui barbosa', '210', 'pici', 'caucaia', 'ceara'),
('61659014', 'avenida padre anchieta', '307', 'porto das dunas', 'caucaia', 'ceara'),
('61659015', 'rua das flores', '87', 'conjunto metropolitano', 'caucaia', 'ceara');

INSERT INTO cliente(dataNascimento, email, idCliente, nome, telefone) VALUES
('25-12-1993','joaozinhoney@yahoo.com',1,'joao gomes silva','85996355601'),
('10-01-1998','mariabd@yahoo.com',2,'maria rocha silva','85995879685'),
('15-05-1999','jusci12@hotmail.com',3,'juscelino costa','85985963258'),
('12-03-1985', 'carlosfaria@gmail.com', 4, 'carlos faria', '85998765432'),
('22-06-1990', 'ana.souza@yahoo.com', 5, 'ana souza', '85996321578'),
('18-09-1995', 'pedro.alves@hotmail.com', 6, 'pedro alves', '85995147895'),
('30-11-1992', 'juliana.martins@gmail.com', 7, 'juliana martins', '85996587412'),
('05-04-1988', 'renato.santos@yahoo.com', 8, 'renato santos', '85995874125'),
('15-07-1997', 'leticiafernandes@hotmail.com', 9, 'leticia fernandes', '85997412563'),
('01-08-1991', 'rodrigo.melo@gmail.com', 10, 'rodrigo melo', '85998254789'),
('20-12-1984', 'fabiana.rodrigues@yahoo.com', 11, 'fabiana rodrigues', '85995789456'),
('09-02-1996', 'gustavo.lima@hotmail.com', 12, 'gustavo lima', '85997563214'),
('27-05-1994', 'carolina.silva@gmail.com', 13, 'carolina silva', '85996321458'),
('16-10-1986', 'leonardo.pereira@yahoo.com', 14, 'leonardo pereira', '85995147832'),
('24-03-1993', 'adriana.monteiro@hotmail.com', 15, 'adriana monteiro', '85998712345'),
('12-08-1998', 'ricardo.almeida@gmail.com', 16, 'ricardo almeida', '85995632147'),
('07-01-1992', 'beatriz.santos@yahoo.com', 17, 'beatriz santos', '85998456321'),
('11-11-1989', 'marcio.costa@hotmail.com', 18, 'marcio costa', '85994785236');
INSERT INTO fornecedor(celular, cnpj, idFornecedor, nome, telefone) VALUES
('85996859836', '02916265010475', 1, 'goldentec', '34758596'),
('88996365236', '01838723000127', 2,'brasint','37459863'),
('85896325366', '01838723000145', 3,'lg','40028922'),
('85998563214', '02415896000112', 4, 'samsung', '34569874'),
('88997412563', '01245896000134', 5, 'dell', '36985214'),
('85997456321', '01369852000145', 6, 'acer', '35789621'),
('88996587412', '01784521000189', 7, 'lenovo', '32147896'),
('85995874563', '02569874120036', 8, 'asus', '36547895');
INSERT INTO produto(idProduto, marca, nome, valor) VALUES
(1, 'goldentec', 'mouse sem fio', 49.90),
(2, 'brasint', 'teclado sem fio', 59.90),
(3, 'goldentec', 'monitor', 399.90),
(4, 'lg', 'monitor 24 polegadas', 899.90),
(5, 'samsung', 'ssd 500GB', 299.90),
(6, 'acer', 'notebook aspire 5', 2499.90),
(7, 'dell', 'mouse óptico', 39.90),
(8, 'lenovo', 'notebook ideapad 3', 2699.90),
(9, 'asus', 'placa-mãe b450', 499.90),
(10, 'samsung', 'memória ram 8GB', 249.90),
(11, 'goldentec', 'fonte atx 500w', 199.90),
(12, 'lg', 'teclado mecânico', 199.90),
(13, 'acer', 'monitor 27 polegadas', 1199.90),
(14, 'dell', 'headset gamer', 149.90),
(15, 'asus', 'placa de vídeo GTX 1650', 1599.90),
(16, 'lg', 'smart TV 32 polegadas', 1299.90),
(17, 'goldentec', 'webcam full HD', 149.90),
(18, 'samsung', 'smartphone galaxy S21', 3499.90),
(19, 'lenovo', 'tablet lenovo tab m10', 999.90),
(20, 'acer', 'carregador notebook', 89.90),
(21, 'lg', 'caixa de som bluetooth', 249.90),
(22, 'asus', 'roteador wi-fi 6', 399.90),
(23, 'samsung', 'monitor ultrawide', 1599.90);

