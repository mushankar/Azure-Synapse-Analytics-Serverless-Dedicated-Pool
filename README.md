# 🚀 Azure Synapse Analytics – Serverless & Dedicated Pool Showcase

This repository demonstrates my hands-on work with **Azure Synapse Analytics**, focusing on both **Dedicated SQL Pools** and **Serverless SQL Pools**.  
It includes **SQL scripts** and **screenshots** that walk through the key concepts in Azure Data Engineering.

---

## 📂 Repository Structure

<details>
<summary>📂 Root</summary>

- 🖼️ Afterdeleting_dedicatedpool - SQLscriptsnotdeleted.png  
- 🖼️ Creating Credential_DataSource 2.png  
- 🖼️ Creating MasterKey_Credential_DataSource 1.png  
</details>

<details>
<summary>📂 Dedicated SQL pool</summary>

- 📜 1_dedicatedpool_setup.sql  
- 📜 2_distributed_tables.sql  
- 📜 3_CTAS_polybase.sql  
- 📜 4_copyTable_polybase.sql  
- 🖼️ Creating Hash_Replicate_Roundrobin Tables.png  
- 🖼️ creating table using COPY_INTO command.png  
- 🖼️ External Table using CTAS.png  
</details>

<details>
<summary>📂 SQL serverless pool</summary>

- 📜 1_openrowset.sql  
- 📜 2_EXT_table_sample.sql  
- 📜 3_CETAS.sql  
- 🖼️ External Table as Parquet.png  
- 🖼️ Openrowset.png  
- 📊 revenue_star.csv  
</details>


---

## 🔑 Creating Master Key & Credentials

Before working with external data sources in Synapse, you must set up a **Master Key** and **Database Scoped Credential**.  

- Script: `Creating MasterKey_Credential_DataSource 1.png`  
- Script: `Creating Credential_DataSource 2.png`  

📸 Example:  
[![Creating Master Key](Creating%20MasterKey_Credential_DataSource%201.png)](Creating%20MasterKey_Credential_DataSource%201.png)  
[![Creating Credential](Creating%20Credential_DataSource%202.png)](Creating%20Credential_DataSource%202.png)

---

## 🏗 Dedicated SQL Pool

Dedicated SQL Pools provide MPP (Massively Parallel Processing) to handle large-scale analytics.

### 1️⃣ Setup
- Script: [`1_dedicatedpool_setup.sql`](Dedicated%20SQL%20pool/1_dedicatedpool_setup.sql)

### 2️⃣ Distributed Tables
- Script: [`2_distributed_tables.sql`](Dedicated%20SQL%20pool/2_distributed_tables.sql)  
- Distribution types: **Hash**, **Round-robin**, **Replicate**  
📸 Example:  
[![Distributed Tables](Dedicated%20SQL%20pool/Creating%20Hash_Replicate_Roundrobin%20Tables.png)](Dedicated%20SQL%20pool/Creating%20Hash_Replicate_Roundrobin%20Tables.png)

### 3️⃣ PolyBase & CTAS
- Script: [`3_CTAS_polybase.sql`](Dedicated%20SQL%20pool/3_CTAS_polybase.sql)  
- 📸 Example:  
[![External Table with CTAS](Dedicated%20SQL%20pool/External%20Table%20using%20CTAS.png)](Dedicated%20SQL%20pool/External%20Table%20using%20CTAS.png)

### 4️⃣ COPY INTO Command
- Script: [`4_copyTable_polybase.sql`](Dedicated%20SQL%20pool/4_copyTable_polybase.sql)  
- 📸 Example:  
[![COPY INTO](Dedicated%20SQL%20pool/creating%20table%20using%20COPY_INTO%20command.png)](Dedicated%20SQL%20pool/creating%20table%20using%20COPY_INTO%20command.png)

---

## ☁️ Serverless SQL Pool

Serverless pools let you query external data sources without dedicated compute.

### 1️⃣ OPENROWSET
- Script: [`1_openrowset.sql`](SQL%20serverless%20pool/1_openrowset.sql)  
- 📸 Example:  
[![OPENROWSET](SQL%20serverless%20pool/Openrowset.png)](SQL%20serverless%20pool/Openrowset.png)

### 2️⃣ External Tables
- Script: [`2_EXT_table_sample.sql`](SQL%20serverless%20pool/2_EXT_table_sample.sql)  
- 📸 Example:  
[![External Table as Parquet](SQL%20serverless%20pool/External%20Table%20as%20Parquet.png)](SQL%20serverless%20pool/External%20Table%20as%20Parquet.png)

### 3️⃣ CETAS (Create External Table As Select)
- Script: [`3_CETAS.sql`](SQL%20serverless%20pool/3_CETAS.sql)  

---

## 🧹 Clean-up

- After deleting the dedicated pool, scripts remain for reusability.  
📸 Example:  
[![After Deleting Dedicated Pool](Afterdeleting_dedicatedpool%20-%20SQLscriptsnotdeleted.png)](Afterdeleting_dedicatedpool%20-%20SQLscriptsnotdeleted.png)

---

## 🎯 Key Learnings

- Setup of **Dedicated SQL Pools** and **Serverless Pools** in Synapse Analytics  
- Created and tested **distributed tables** (hash, round-robin, replicate)  
- Used **OPENROWSET** for serverless queries  
- Built **external tables** with CTAS and CETAS  
- Practiced data ingestion with **PolyBase** and **COPY INTO**  

---

✅ This repo acts as a showcase of my **Azure Data Engineering hands-on skills** using **Synapse Analytics**.
