<h1 align='center'>
  <img src="https://icongr.am/material/database.svg?size=30&color=127369">
  PROJETO FINAL - SITUAÇÃO DE APRENDIZAGEM
  <img src="https://icongr.am/material/database.svg?size=30&color=127369">
</h1>

</br>

<h3 align='center'>
  <img src="https://icongr.am/material/alert-circle.svg?size=25&color=127369">
  Projeto ainda em desenvolvimento - sujeito a alterações
  <img src="https://icongr.am/material/alert-circle.svg?size=25&color=127369">
</h3>

</br>

<div align='center'>

  ![MySQL](https://img.shields.io/badge/mysql-127369.svg?style=for-the-badge&logo=mysql&logoColor=white)
  [![License: MIT](https://img.shields.io/badge/License-MIT-127369.svg?style=for-the-badge)](https://opensource.org/licenses/MIT)

</div>

Esse é um projeto final realizado no curso de Administrador de Banco de Dados no SENAI.

Esse projeto representa uma database de uma faculdade.

SGBD utilizado: MySQL.

---

<h1>
  <img src="https://icongr.am/material/checkbox-blank-circle.svg?size=20&color=127369">
  MODELO CONCEITUAL
</h1>

![mc_completo_sem_atributos](https://user-images.githubusercontent.com/107576199/232987853-056fd87f-553c-4b8e-afa6-afc1a14eeefe.png)

---

<h1>
  <img src="https://icongr.am/material/checkbox-blank-circle.svg?size=20&color=127369">
  MODELO LÓGICO
</h1>

![ml_geral_normalizado](https://user-images.githubusercontent.com/107576199/232988475-1aa70e65-c26c-426e-85cf-1933a276ebe4.png)

---

<h1>
  <img src="https://icongr.am/material/checkbox-blank-circle.svg?size=20&color=127369">
  RELACIONAMENTOS
</h1>

-	Aluno– realiza – Curso
-	Aluno– realiza – Disciplina
-	Aluno – possui – Endereco_Aluno
-	Aluno – possui – Telefone_Aluno
-	Aluno – pertence – Turma
-	Curso– pertence – Departamento
-	Curso – possui – Disciplina
-	Curso – compoe – Turma
-	Departamento – possui – Disciplina
-	Departamento – possui – Professor
-	Disciplina – exige – Disciplina
-	Disciplina – compoe – Historico
-	Disciplina – leciona – Professor
-	Endereco_Aluno – possui – Tipo_Logradouro
-	Endereco_Professor – pertence – Professor
-	Endereco_Professor – possui – Tipo_Logradouro
-	Historico – possui – Periodo
-	Periodo – possui – Turma
-	Professor – possui – Telefone_Professor
-	Tipo_Telefone – possui – Telefone_Aluno
-	Tipo_Telefone – possui – Telefone_Professor





