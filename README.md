# Sistema de Gerenciamento de Academia de Artes Marciais KIAI-KAN

# 1. 🎬 Cenário

## Desenvolvimento de um Sistema de Gerenciamento de Uma Academia de Artes Marciais

### 🥋 Necessidade

Uma academia de artes marciais chamada "KIAI-KAN" deseja implementar um sistema de gerenciamento para armazenar informações sobre seus alunos e instrutores. A empresa pretende melhorar o atendimento ao aluno e manter um registro organizado das aulas, matrículas e agendamentos de instrutores, o que inclui informações detalhadas sobre cada transação.

### Entidades, Atributos e Relacionamentos

#### Entidade: Aluno
- **ID do Aluno (Chave Primária)**
- **Nome**
- **Endereço (Composto: Rua, Cidade, CEP)**
- **Telefone**
- **Data de Nascimento**

#### Entidade: Sensei
- **ID do Instrutor (Chave Primária)**
- **Nome**
- **Telefone**
- **Salário**
- **Especialidade**

#### Entidade: Aula
- **ID da Aula (Chave Primária)**
- **Nome da Aula**
- **Data e Hora**
- **Equipamentos Necessários (Multivalorado)**

#### Entidade: Matrícula
- **ID da Matrícula (Chave Primária)**
- **Data da Matrícula**
- **ID do Aluno**
- **ID da Aula**

#### Entidade: Agendamento
- **ID do Agendamento (Chave Primária)**
- **Data e Hora do Agendamento**
- **ID do Instrutor**
- **ID da Aula**

#### Relacionamentos
Relacionamento 1
Entre Aluno e Matricula:
Um aluno pode ter várias matrículas, mas uma matrícula pertence a apenas um aluno.

Relacionamento 2
entre Aula e Matricula:
Uma aula pode ter várias matrículas, mas uma matrícula está associada a apenas uma aula.

Relacionamento 3
entre Sensei e Agendamento:
Um Sensei pode ter vários agendamentos, mas um agendamento está associado a apenas um instrutor.

Relacionamento 4
entre Aula e Agendamento:
Uma aula pode ter um agendamento e um agendamento está associado a apenas uma aula.

Relacionamento 5
entre Aluno e Sensei
Um aluno pode ter vários Senseis e Senseis podem ter vários alunos


# 2. Modelagem Conceitual

## Diagrama ER

![image](https://github.com/ITzspi/prova-sql/assets/141787351/5d811d69-9509-4fa1-b4d1-ad9c9cde667c)



**Descrição do Diagrama ER**: 
- O diagrama mostra as entidades Aluno, Sensei, Aula, Matrícula e Agendamento.
- As relações entre as entidades estão bem definidas, incluindo cardinalidades apropriadas.


# 3. Modelagem Lógica

## Diagrama Lógico
![image](https://github.com/ITzspi/prova-sql/assets/141787351/57038ca5-8c25-45c8-a933-e86c2356bb05)



### 4. Modelagem Física

```markdown
# 4. Modelagem Física

## Código SQL para criação das tabelas

```sql
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


