-- Tabela Aluno
CREATE TABLE Aluno (
    ID_Aluno INT PRIMARY KEY,
    Nome VARCHAR(100),
    Endereco_Rua VARCHAR(100),
    Endereco_Cidade VARCHAR(100),
    Endereco_CEP VARCHAR(20),
    Telefone VARCHAR(20),
    Data_Nasc DATE
);

-- Tabela Sensei
CREATE TABLE Sensei (
    ID_Instrutor INT PRIMARY KEY,
    Nome VARCHAR(100),
    Telefone VARCHAR(20),
    Salario DECIMAL(10, 2),
    Especialidade VARCHAR(100)
);

-- Tabela Aula
CREATE TABLE Aula (
    ID_Aula INT PRIMARY KEY,
    Nome_Aula VARCHAR(100),
    Data_Hora DATETIME,
    Equipamentos_Necessarios VARCHAR(200) -- Representação simplificada para o multivalorado
);

-- Tabela Matricula
CREATE TABLE Matricula (
    ID_Matricula INT PRIMARY KEY,
    Data_Matricula DATE,
    ID_Aluno INT,
    ID_Aula INT,
    FOREIGN KEY (ID_Aluno) REFERENCES Aluno(ID_Aluno),
    FOREIGN KEY (ID_Aula) REFERENCES Aula(ID_Aula)
);

-- Tabela Agendamento
CREATE TABLE Agendamento (
    ID_Agendamento INT PRIMARY KEY,
    Data_Hora_Agendamento DATETIME,
    ID_Instrutor INT,
    ID_Aula INT,
    FOREIGN KEY (ID_Instrutor) REFERENCES Sensei(ID_Instrutor),
    FOREIGN KEY (ID_Aula) REFERENCES Aula(ID_Aula)
);

-- Tabela Associativa AlunoSensei
CREATE TABLE AlunoSensei (
    ID_Aluno INT,
    ID_Instrutor INT,
    PRIMARY KEY (ID_Aluno, ID_Instrutor),
    FOREIGN KEY (ID_Aluno) REFERENCES Aluno(ID_Aluno),
    FOREIGN KEY (ID_Instrutor) REFERENCES Sensei(ID_Instrutor)
);

-- Inserir dados na tabela Aluno
INSERT INTO Aluno (ID_Aluno, Nome, Endereco_Rua, Endereco_Cidade, Endereco_CEP, Telefone, Data_Nasc)
VALUES 
(1, 'João Silva', 'Avenida Paulista', 'São Paulo', '01310-000', '11987654321', '2000-01-01'),
(2, 'Maria Souza', 'Rua das Laranjeiras', 'Rio de Janeiro', '22240-003', '21987654321', '1995-05-05'),
(3, 'Pedro Santos', 'Avenida Afonso Pena', 'Belo Horizonte', '30130-001', '31987654321', '1998-02-12'),
(4, 'Ana Lima', 'Rua XV de Novembro', 'Curitiba', '80020-310', '41987654321', '1999-03-22'),
(5, 'Carlos Mendes', 'Avenida Borges de Medeiros', 'Porto Alegre', '90020-021', '51987654321', '2001-04-30'),
(6, 'Juliana Pereira', 'Avenida Sete de Setembro', 'Salvador', '40060-002', '71987654321', '2002-05-15'),
(7, 'Rafael Oliveira', 'Avenida Beira Mar', 'Fortaleza', '60165-120', '85987654321', '1996-06-06'),
(8, 'Lucas Ferreira', 'Eixão Sul', 'Brasília', '70390-900', '61987654321', '1997-07-18'),
(9, 'Camila Costa', 'Avenida Eduardo Ribeiro', 'Manaus', '69010-001', '92987654321', '2000-08-25'),
(10, 'Mariana Gomes', 'Avenida Conde da Boa Vista', 'Recife', '50060-901', '81987654321', '2003-09-10'),
(11, 'Roberto Nunes', 'Avenida Goiás', 'Goiânia', '74010-100', '62987654321', '2001-10-20'),
(12, 'Fernanda Dias', 'Avenida Nazaré', 'Belém', '66035-170', '91987654321', '1998-11-30'),
(13, 'Gabriel Teixeira', 'Avenida Beira Mar', 'Florianópolis', '88015-700', '48987654321', '1999-12-15'),
(14, 'Alice Martins', 'Avenida Beira-Mar', 'São Luís', '65010-070', '98987654321', '2002-01-10'),
(15, 'Bruno Almeida', 'Avenida Álvaro Otacílio', 'Maceió', '57035-180', '82987654321', '2000-02-05'),
(16, 'Patricia Rocha', 'Avenida Getúlio Vargas', 'Natal', '59012-360', '84987654321', '1997-03-25'),
(17, 'Daniel Carvalho', 'Avenida Frei Serafim', 'Teresina', '64001-020', '86987654321', '2001-04-15'),
(18, 'Beatriz Lima', 'Avenida Afonso Pena', 'Campo Grande', '79002-072', '67987654321', '1996-05-20'),
(19, 'Rodrigo Santos', 'Avenida Epitácio Pessoa', 'João Pessoa', '58032-000', '83987654321', '1998-06-30'),
(20, 'Larissa Ribeiro', 'Avenida Ivo do Prado', 'Aracaju', '49010-050', '79987654321', '1999-07-15');

-- Inserir dados na tabela Sensei
INSERT INTO Sensei (ID_Instrutor, Nome, Telefone, Salario, Especialidade)
VALUES 
(1, 'Carlos Pereira', '11912345678', 3000.00, 'Karatê'),
(2, 'Ana Oliveira', '21912345678', 3500.00, 'Jiu-Jitsu'),
(3, 'Marcos Silva', '31912345678', 3200.00, 'Judô'),
(4, 'Fernanda Costa', '41912345678', 3400.00, 'Taekwondo'),
(5, 'José Martins', '51912345678', 3100.00, 'Muay Thai'),
(6, 'Paula Santos', '71912345678', 3300.00, 'Krav Maga'),
(7, 'Lucas Almeida', '85912345678', 3600.00, 'Aikido'),
(8, 'Mariana Lima', '61912345678', 3700.00, 'Boxe'),
(9, 'Rafael Torres', '92912345678', 3100.00, 'Capoeira'),
(10, 'Cláudia Rocha', '83912345678', 3800.00, 'Judo'),
(11, 'Rodrigo Duarte', '62912345678', 2900.00, 'Karatê'),
(12, 'André Nogueira', '91912345678', 3400.00, 'Jiu-Jitsu'),
(13, 'Juliana Moreira', '48912345678', 3300.00, 'Taekwondo'),
(14, 'Vinicius Souza', '98912345678', 3500.00, 'Judô'),
(15, 'Débora Ribeiro', '82912345678', 3700.00, 'Muay Thai'),
(16, 'Bruno Teixeira', '84912345678', 3600.00, 'Boxe'),
(17, 'Larissa Costa', '86912345678', 3400.00, 'Krav Maga'),
(18, 'Thiago Martins', '67912345678', 3200.00, 'Aikido'),
(19, 'Camila Fernandes', '83912345678', 3100.00, 'Capoeira'),
(20, 'Fábio Lima', '79912345678', 3900.00, 'Judo');

-- Inserir dados na tabela Aula
INSERT INTO Aula (ID_Aula, Nome_Aula, Data_Hora, Equipamentos_Necessarios)
VALUES 
(1, 'Karatê Avançado', '2023-07-01T10:00:00', 'Luvas, Protetor Bucal'),
(2, 'Jiu-Jitsu Iniciante', '2023-07-02T14:00:00', 'Kimono'),
(3, 'Judô Intermediário', '2023-07-03T16:00:00', 'Kimono'),
(4, 'Taekwondo Básico', '2023-07-04T18:00:00', 'Protetores'),
(5, 'Muay Thai Avançado', '2023-07-05T20:00:00', 'Luvas, Bandagens'),
(6, 'Krav Maga Intensivo', '2023-07-06T08:00:00', 'Protetores'),
(7, 'Aikido Básico', '2023-07-07T10:00:00', 'Uniforme Aikido'),
(8, 'Boxe Avançado', '2023-07-08T12:00:00', 'Luvas, Protetor Bucal'),
(9, 'Capoeira Iniciante', '2023-07-09T14:00:00', 'Uniforme Capoeira'),
(10, 'Judô Infantil', '2023-07-10T16:00:00', 'Kimono'),
(11, 'Karatê Intermediário', '2023-07-11T10:00:00', 'Luvas, Protetor Bucal'),
(12, 'Jiu-Jitsu Avançado', '2023-07-12T14:00:00', 'Kimono'),
(13, 'Judô Avançado', '2023-07-13T16:00:00', 'Kimono'),
(14, 'Taekwondo Avançado', '2023-07-14T18:00:00', 'Protetores'),
(15, 'Muay Thai Básico', '2023-07-15T20:00:00', 'Luvas, Bandagens'),
(16, 'Krav Maga Intermediário', '2023-07-16T08:00:00', 'Protetores'),
(17, 'Aikido Intermediário', '2023-07-17T10:00:00', 'Uniforme Aikido'),
(18, 'Boxe Básico', '2023-07-18T12:00:00', 'Luvas, Protetor Bucal'),
(19, 'Capoeira Avançado', '2023-07-19T14:00:00', 'Uniforme Capoeira'),
(20, 'Judô Avançado', '2023-07-20T16:00:00', 'Kimono');


-- Inserir dados na tabela Matricula (continuação)
INSERT INTO Matricula (ID_Matricula, Data_Matricula, ID_Aluno, ID_Aula)
VALUES 
(1, '2023-06-15', 1, 1),
(2, '2023-06-16', 2, 2),
(3, '2023-06-17', 3, 3),
(4, '2023-06-18', 4, 4),
(5, '2023-06-19', 5, 5),
(6, '2023-06-20', 6, 6),
(7, '2023-06-21', 7, 7),
(8, '2023-06-22', 8, 8),
(9, '2023-06-23', 9, 9),
(10, '2023-06-24', 10, 10),
(11, '2023-06-25', 11, 11),
(12, '2023-06-26', 12, 12),
(13, '2023-06-27', 13, 13),
(14, '2023-06-28', 14, 14),
(15, '2023-06-29', 15, 15),
(16, '2023-06-30', 16, 16),
(17, '2023-07-01', 17, 17),
(18, '2023-07-02', 18, 18),
(19, '2023-07-03', 19, 19),
(20, '2023-07-04', 20, 20);

-- Inserir dados na tabela Agendamento
INSERT INTO Agendamento (ID_Agendamento, Data_Hora_Agendamento, ID_Instrutor, ID_Aula)
VALUES 
(1, '2023-07-01T09:00:00', 1, 1),
(2, '2023-07-02T13:00:00', 2, 2),
(3, '2023-07-03T15:30:00', 3, 3),
(4, '2023-07-04T17:30:00', 4, 4),
(5, '2023-07-05T19:30:00', 5, 5),
(6, '2023-07-06T07:30:00', 6, 6),
(7, '2023-07-07T09:30:00', 7, 7),
(8, '2023-07-08T11:30:00', 8, 8),
(9, '2023-07-09T13:30:00', 9, 9),
(10, '2023-07-10T15:30:00', 10, 10),
(11, '2023-07-11T09:30:00', 11, 11),
(12, '2023-07-12T13:30:00', 12, 12),
(13, '2023-07-13T15:30:00', 13, 13),
(14, '2023-07-14T17:30:00', 14, 14),
(15, '2023-07-15T19:30:00', 15, 15),
(16, '2023-07-16T07:30:00', 16, 16),
(17, '2023-07-17T09:30:00', 17, 17),
(18, '2023-07-18T11:30:00', 18, 18),
(19, '2023-07-19T13:30:00', 19, 19),
(20, '2023-07-20T15:30:00', 20, 20);


INSERT INTO AlunoSensei (ID_Aluno, ID_Instrutor)
VALUES 
(1, 2),
(2, 3),
(3, 4),
(4, 5),
(5, 6),
(6, 7),
(7, 8),
(8, 9),
(9, 10),
(10, 11),
(11, 12),
(12, 13),
(13, 14),
(14, 15),
(15, 16),
(16, 17),
(17, 18),
(18, 19),
(19, 20),
(20, 1);

--------------------------------------------------------------
-- CRUD TABELA ALUNO

 -- Leitura
-- Selecionar todos os alunos
SELECT * FROM Aluno;

-- Inserção
-- Inserir novo aluno
INSERT INTO Aluno (ID_Aluno, Nome, Endereco_Rua, Endereco_Cidade, Endereco_CEP, Telefone, Data_Nasc)
VALUES (21, 'Laura Lima', 'Rua das Flores', 'São Paulo', '01234-567', '11987654321', '2000-09-18');
SELECT * FROM Aluno WHERE ID_Aluno = 21;

-- Atualização
-- Atualizar telefone do aluno
UPDATE Aluno
SET Telefone = '321321321'
WHERE ID_Aluno = 3;
SELECT * FROM Aluno WHERE ID_Aluno = 3;

-- Deleção
-- Deletar aluno
DELETE FROM Matricula
WHERE ID_Aluno = 3;
SELECT * FROM Matricula WHERE ID_Aluno = 3;

--TABELA Sensei
SELECT * FROM Sensei;

-- TABELA Aula
SELECT * FROM Aula;

-- Tabela Matricula
SELECT * FROM Matricula;

-- Tabela Agendamento
SELECT * FROM Agendamento;

-- Tabela AlunoSensei
SELECT * FROM AlunoSensei;


--1 Listar todos os alunos matriculados em uma determinada aula, ordenados pelo nome do aluno:
SELECT Aluno.Nome, Aula.Nome_Aula
FROM Aluno
INNER JOIN Matricula ON Aluno.ID_Aluno = Matricula.ID_Aluno
INNER JOIN Aula ON Matricula.ID_Aula = Aula.ID_Aula
WHERE Aula.ID_Aula = 1
ORDER BY Aluno.Nome;

-- 1 Listar os instrutores que estão agendados para uma determinada aula, ordenados pelo nome do instrutor:
SELECT Sensei.Nome, Aula.Nome_Aula
FROM Sensei
INNER JOIN Agendamento ON Sensei.ID_Instrutor = Agendamento.ID_Instrutor
INNER JOIN Aula ON Agendamento.ID_Aula = Aula.ID_Aula
WHERE Aula.ID_Aula = 1
ORDER BY Sensei.Nome;

-- 3 Listar todas as aulas de um instrutor específico, ordenadas pela data e hora da aula:
SELECT Aula.Nome_Aula, Aula.Data_Hora
FROM Aula
INNER JOIN Agendamento ON Aula.ID_Aula = Agendamento.ID_Aula
INNER JOIN Sensei ON Agendamento.ID_Instrutor = Sensei.ID_Instrutor
WHERE Sensei.ID_Instrutor = 1
ORDER BY Aula.Data_Hora;

-- 4 Listar todos os alunos matriculados em aulas de Karatê, ordenados pelo nome do aluno:
SELECT Aluno.Nome, Aula.Nome_Aula
FROM Aluno
INNER JOIN Matricula ON Aluno.ID_Aluno = Matricula.ID_Aluno
INNER JOIN Aula ON Matricula.ID_Aula = Aula.ID_Aula
WHERE Aula.Nome_Aula LIKE '%Karatê%'
ORDER BY Aluno.Nome;

-- 5 Listar os instrutores que ministram aulas de Judô, ordenados pelo nome do instrutor:
SELECT Sensei.Nome, Aula.Nome_Aula
FROM Sensei
INNER JOIN Agendamento ON Sensei.ID_Instrutor = Agendamento.ID_Instrutor
INNER JOIN Aula ON Agendamento.ID_Aula = Aula.ID_Aula
WHERE Aula.Nome_Aula LIKE '%Judô%'
ORDER BY Sensei.Nome;

-- 6 Listar todas as aulas que ocorrerão em determinada cidade, ordenadas pela data e hora da aula:
SELECT Aula.Nome_Aula, Aula.Data_Hora
FROM Aula
INNER JOIN Agendamento ON Aula.ID_Aula = Agendamento.ID_Aula
INNER JOIN Sensei ON Agendamento.ID_Instrutor = Sensei.ID_Instrutor
WHERE Sensei.Especialidade = 'Jiu-Jitsu'
ORDER BY Aula.Data_Hora;

-- 7 Listar os alunos que moram em uma determinada cidade, ordenados pelo nome do aluno:
SELECT Aluno.Nome, Aluno.Endereco_Cidade
FROM Aluno
WHERE Aluno.Endereco_Cidade = 'São Paulo'
ORDER BY Aluno.Nome;

-- 8 Listar os instrutores que têm salário superior a R$ 3500, ordenados pelo salário em ordem decrescente:
SELECT Sensei.Nome, Sensei.Salario
FROM Sensei
WHERE Sensei.Salario > 3500
ORDER BY Sensei.Salario DESC;

-- 9 Listar todas as matrículas feitas após uma determinada data, ordenadas pela data da matrícula:
SELECT Aluno.Nome, Matricula.Data_Matricula
FROM Aluno
INNER JOIN Matricula ON Aluno.ID_Aluno = Matricula.ID_Aluno
WHERE Matricula.Data_Matricula > '2023-07-01'
ORDER BY Matricula.Data_Matricula;

-- 10 Listar todos os agendamentos de aula feitos após uma determinada data, ordenados pela data e hora do agendamento:
  SELECT Aluno.Nome, Aula.Nome_Aula, Sensei.Nome AS Nome_Instrutor, Agendamento.Data_Hora_Agendamento
    FROM Aluno
    INNER JOIN Matricula ON Aluno.ID_Aluno = Matricula.ID_Aluno
    INNER JOIN Aula ON Matricula.ID_Aula = Aula.ID_Aula
    INNER JOIN Agendamento ON Aula.ID_Aula = Agendamento.ID_Aula
    INNER JOIN Sensei ON Agendamento.ID_Instrutor = Sensei.ID_Instrutor
    WHERE Sensei.ID_Instrutor = 1
    ORDER BY Aluno.Nome;