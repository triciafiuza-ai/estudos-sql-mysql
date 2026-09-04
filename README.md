My SQL & Data Warehouse Studies
Welcome to my portfolio repository! Here, I centralize and document my practical progress in Data Engineering and Databases, bridging the gap between theoretical learning from college and tutorials and real-world practice.

About Me
Name: Trícia Fiuza🌷
Goal: To document my academic and practical journey in building efficient databases, writing structured queries (SQL), and applying Data Warehouse/ETL concepts.
Tools used: MySQL Workbench, GitHub, and Git.
Exercise Structure
Here is an index of the exercises I have practiced and stored in this repository. Each file was written manually, line by line, to reinforce the concepts:

College Classes

aula_01_conceitos.sql — Data Types and Initial Modeling: Creating the first database, defining tables with primary keys (PK), practical use of data types like VARCHAR and INT, and inserting test records.

Data Warehouse Concepts (Theory Studied)
In addition to daily practice with transactional databases (OLTP), this repository will feature practical projects based on Data Warehouse theories I learned in college, including:
Multidimensional Modeling (Star Schema and Snowflake)
Fact Tables and Dimension Tables
Basic Loading and ETL Processes

How to Run the Scripts
Install MySQL Server and MySQL Workbench on your machine.
Open any .sql file from this repository in Workbench.
Click the Lightning Bolt icon to execute the script and generate the structure locally.

aula_02_relacionamentos.sql — DDL, 1:1 Relationships & BLOB Management: Implemented a physical database schema establishing a strict 1-to-1 relationship between two tables (`aluno` and `foto`) using Foreign Key (FK) constraints.

Practiced structural schema updates using DDL commands (`ALTER TABLE` and `DROP TABLE`).
Managed binary file storage by debugging datatype limitations and upgrading columns to `LONGBLOB` to successfully store and query real image assets within the database.

aula_03_relacionamentos_1_N.sql` — DDL & 1:N (One-to-Many) Relationships:
Modeled a physical database schema depicting a 1-to-Many relationship between `departamento` (One) and `professor` (Many) tables.
Implemented constraints without the `UNIQUE` modifier on the Foreign Key (FK) to allow multiple records to link back to a single primary entity.
Applied explicit column aliasing using the `AS` keyword within an `INNER JOIN` query to format and clear header overlaps in the final result report.

