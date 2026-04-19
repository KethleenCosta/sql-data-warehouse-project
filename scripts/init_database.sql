/*
=====================================
Criar Banco de Dados e Esquemas
=====================================
Finalidade do Script:
      Este script cria um novo banco de dados chamado 'DataWarehouse' após verificar se ele já existe.
      Se o banco de dados existir, ele será excluído e recriado. 
      Além disso, o script configura três esquemas dentro do banco de dados: 'bronze', 'silver' e 'gold'.

AVISO:
      Executar este script excluirá todo o banco de dados 'DataWarehouse', caso ele exista.  
      Todos os dados no banco de dados serão excluídos permanentemente. 
      Proceda com cautela e certifique-se de ter backups adequados antes de executar este script.
*/

IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
  ALTER DATABASE DataWarehosue SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
  DROP DATABASE DataWarehouse;

CREATE DATABASE DataWarehouse;

USE DataWarehouse;

CREATE SCHEMA bronze;

CREATE SCHEMA silver;

CREATE SCHEMA gold;
