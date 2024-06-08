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
- **Duração**
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

![image](https://github.com/ITzspi/prova-sql/assets/141787351/4f22fc50-eb0c-42ff-b6fc-8a0ec003f0b7)


**Descrição do Diagrama ER**: 
- O diagrama mostra as entidades Aluno, Sensei, Aula, Matrícula e Agendamento.
- As relações entre as entidades estão bem definidas, incluindo cardinalidades apropriadas.

