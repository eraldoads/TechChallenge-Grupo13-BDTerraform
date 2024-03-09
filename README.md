Este repositório é dedicado à infra banco de dados gerenciáveis com Terraform, com a finalidade de incorporar aprimoramentos baseados nas melhores práticas de CI/CD para a API.

## ☑️ Modelo E/R
Optamos pelo banco de dados relacional, pois, desta forma, temos uma representação das entidades e seus relacionamentos. Além disso, mantemos a integridade referencial com as chaves primárias e estrangeiras, evitando dados duplicados e inconsistências.

O modelo abaixo representa todas as entidades criadas e seus relacionamentos no banco de dados:

![image](https://github.com/eraldoads/TechChallenge-Grupo13-BDTerraform/assets/47857203/ea3ab9e3-e5da-4275-b973-2561b4078352)

Para tal, utilizamos o serviço RDS da Amazon para instanciar o banco de dados MySQL.

Mesmo sendo um banco de dados que não permite escalonamento horizontal, somente vertical, atenderá perfeitamente às necessidades do negócio da lanchonete.

![image](https://github.com/eraldoads/TechChallenge-Grupo13-BDTerraform/assets/47857203/8c25e04c-2c36-4c86-98e8-c1dc9aab1806)



