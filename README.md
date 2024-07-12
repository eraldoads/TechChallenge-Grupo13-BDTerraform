# TechChallenge-Grupo13-BDTerraform

Este repositório é dedicado à infra banco de dados gerenciáveis com Terraform, com a finalidade de incorporar aprimoramentos baseados nas melhores práticas de CI/CD para a API.

O deploy de todos os recursos é realizado pelo Github Actions a partir dos arquivos Terraform.

## 🖥️ Grupo 13 - Integrantes
🧑🏻‍💻 *<b>RM352133</b>*: Eduardo de Jesus Coruja </br>
🧑🏻‍💻 *<b>RM352316</b>*: Eraldo Antonio Rodrigues </br>
🧑🏻‍💻 *<b>RM352032</b>*: Luís Felipe Amengual Tatsch </br>

## ☑️ Modelo E/R
Na fase 3, tínhamos um único banco de dados com todas as tabelas representando as entidades de negócio, o qual era acessado pelo monolito:

![image](https://github.com/eraldoads/TechChallenge-Grupo13-BDTerraform/assets/47857203/ea3ab9e3-e5da-4275-b973-2561b4078352)

Na fase 4, realizamos o desmembramento dos processos relacionados aos cadastros de cient, produtos e de pagamento em microsserviços, os quais passaram a ter seus próprios bancos de dados, possibilitando um desacoplamento e diminuindo as dependências.

<b>Banco piklesdb - Monolito</b>

<b>Banco piklesdb - Monolito</b>

<b>Banco piklesdb - Monolito</b>


Para tal, utilizamos o serviço RDS da Amazon para instanciar o banco de dados MySQL.

Mesmo sendo um banco de dados que não permite escalonamento horizontal, somente vertical, atenderá perfeitamente às necessidades do negócio da lanchonete.

![image](https://github.com/eraldoads/TechChallenge-Grupo13-BDTerraform/assets/47857203/8c25e04c-2c36-4c86-98e8-c1dc9aab1806)



