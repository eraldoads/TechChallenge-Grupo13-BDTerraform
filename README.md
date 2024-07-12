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

Na fase 4, realizamos o desmembramento dos processos relacionados aos cadastros de Cliente, Produtos e de Pagamento em microsserviços, os quais passaram a ter seus próprios bancos de dados, possibilitando um desacoplamento e diminuindo as dependências.

<b>Banco BD_PKFF_CLIENTES - Microsserviço Cliente</b>

![image](https://github.com/eraldoads/TechChallenge-Grupo13-BDTerraform/assets/47857203/53177085-e7f7-4c76-bbe1-0ce8c5d05341)

<b>Banco BD_PKFF_PRODUTOS - Microsserviço Produto</b>

![image](https://github.com/eraldoads/TechChallenge-Grupo13-BDTerraform/assets/47857203/32613f95-fcbb-4915-a2e0-2638ba484a1e)

Na fase 5, realizamos o desmembramento do processo de Pedido do monolito.

<b>Banco BD_PKFF_PEDIDOS - Microsserviço Pedido</b>

![image](https://github.com/user-attachments/assets/e6d18c76-dec3-49bc-ba51-53cd2c32b623)


Podemos observar que a estrutura das tabelas se mantém a mesma e os relacionamentos continuam sendo realizados por meio dos Id's, porém, cada microsserviço possui seu banco de dados distinto, não havendo chaves estrangeiras entre tabelas de bancos diferentes. Esse desacoplamento possibilita que os bancos estejam em instâncias físicas diferentes do MySQL em um ambiente produtivo, ou mesmo, a mudança do banco de um determinado microsserviço de MySQL para SQL Server, por exemplo, diminuindo os riscos e impactos de uma possível migração.

Para efeitos de demonstração no TechChallenge, utilizaremos a mesma instância física para os três bancos de dados no MySQL.

O microsserviço de Pagamento utilizará o banco MongoDB, o qual será instanciado por outro repositório.

Para criarmos a instância do MySQL, utilizamos o serviço RDS da Amazon.

![image](https://github.com/eraldoads/TechChallenge-Grupo13-BDTerraform/assets/47857203/8c25e04c-2c36-4c86-98e8-c1dc9aab1806)



