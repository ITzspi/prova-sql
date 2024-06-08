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
- **Graduações Anteriores (Multivalorado)**

#### Entidade: Instrutor
- **ID do Instrutor (Chave Primária)**
- **Nome**
- **Telefone**
- **Salário**
- **Especialidade**

#### Entidade: Aula
- **ID da Aula (Chave Primária)**
- **Nome da Aula**
- **Descrição**
- **Data e Hora**
- **Duração**
- **Equipamentos Necessários (Multivalorado)**

#### Entidade: Matrícula
- **ID da Matrícula (Chave Primária)**
- **Data da Matrícula**
- **ID do Aluno (Chave Estrangeira)**
- **ID da Aula (Chave Estrangeira)**

#### Entidade: Agendamento
- **ID do Agendamento (Chave Primária)**
- **Data e Hora do Agendamento**
- **ID do Instrutor (Chave Estrangeira)**
- **ID da Aula (Chave Estrangeira)**
