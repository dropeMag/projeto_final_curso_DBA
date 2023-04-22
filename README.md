<h1 align='center'>
  <img src="https://icongr.am/material/database.svg?size=30&color=127369">
  PROJETO FINAL - SITUAÇÃO DE APRENDIZAGEM
  <img src="https://icongr.am/material/database.svg?size=30&color=127369">
</h1>

</br>

<div align='center'>

  ![MySQL](https://img.shields.io/badge/mysql-127369.svg?style=for-the-badge&logo=mysql&logoColor=white)
  [![License: MIT](https://img.shields.io/badge/License-MIT-127369.svg?style=for-the-badge)](https://opensource.org/licenses/MIT)

</div>

Esse é um projeto final realizado no curso de Administrador de Banco de Dados no SENAI.

Foi projetado um banco de dados para gerenciamento de uma faculdade. 

Os objetivos deste banco de dados são: Realizar controle centralizado de alunos, professores, cursos, disciplinas, histórico escolar e turmas.

</br>


# ÍNDICE

- [Índice](#índice)
- [Modelo Conceitual](#modelo-conceitual)
- [Modelo Lógico](#modelo-lógico)
- [Entidades Primárias](#entidades-primárias)
- [Entidades Secundárias](#entidades-secundárias)
- [Associativas](#associativas)
- [Dicionário](#dicionário-de-dados)
- [Conexão](#conexão)

---

# MODELO CONCEITUAL

![mc_completo_sem_atributos](https://user-images.githubusercontent.com/107576199/232987853-056fd87f-553c-4b8e-afa6-afc1a14eeefe.png)

---

# MODELO LÓGICO

![ml_geral_normalizado](https://user-images.githubusercontent.com/107576199/232988475-1aa70e65-c26c-426e-85cf-1933a276ebe4.png)

---

# ENTIDADES PRIMÁRIAS

- Aluno;
- Curso;
- Departamento;
- Disciplina;
- Histórico;
- Professor;
- Turma.

---

# ENTIDADES SECUNDÁRIAS

- Endereco_Aluno;
- Endereco_Professor;
- Período;
- Telefone_Aluno;
- Telefone_Professor;
- Tipo_Logradouro;
- Tipo_Telefone.

---

# ASSOCIATIVAS

- tb_disciplina_aluno;
- tb_discipline_curso;
- tb_disciplina_disciplina;
- tb_disciplina_historico;
- tb_disciplina_professor.

---

# DICIONÁRIO DE DADOS

Segue o [link](https://github.com/dropeMag/projeto_final_curso_DBA/wiki/Dicion%C3%A1rio-de-Dados) do Wiki para visualizar o dicionário completo.

---

# CONEXÃO

## Informações

O visitante terá a oportunidade de realizar apenas o **SELECT** nas tabelas.

A database está nomeada como **railway**.

A plataforma de hospedagem possui certas limitações, portanto, o banco de dados pode ficar fora em determinados períodos, mas em poucos dias regressará!

## Dados

`HOST:` containers-us-west-124.railway.app

`PORT:` 6172

`USER:` visita

`SENHA:` 1234

## Requisitos

- Possuir um SGBD em sua máquina;
- Conexão estável com a internet;
- Conhecimentos básicos de DQL (Data Query Language).

## Passo a Passo

1. Abra o SGBD de sua preferência;
2. Inicie uma nova conexão com os dados fornecidos;
3. Realize as consultas que desejar.




