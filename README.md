# 🎵 Spotify Relational Database & Analytics

![SQL](https://img.shields.io/badge/SQL-4479A1?style=for-the-badge&logo=sqlite&logoColor=white)
![PostgreSQL](https://img.shields.io/badge/PostgreSQL-4169E1?style=for-the-badge&logo=postgresql&logoColor=white)
![Node.js](https://img.shields.io/badge/Node.js-339933?style=for-the-badge&logo=nodedotjs&logoColor=white)

Este projeto consiste na modelagem, implementação e análise de dados para um banco de dados relacional inspirado no **Spotify**. O objetivo principal é simular o funcionamento da infraestrutura de dados de uma plataforma de streaming, abrangendo desde a criação do esquema relacional até consultas analíticas complexas e consumo de dados via API.

---

## 📌 Funcionalidades & Arquitetura

- **Modelagem Relacional (DER):** Estrutura normalizada cobrindo Usuários, Planos de Assinatura, Artistas, Álbuns, Músicas, Playlists e Histórico de Reprodução.
- **Relacionamentos e Integridade:** Aplicação de chaves primárias (`PRIMARY KEY`), estrangeiras (`FOREIGN KEY`), restrições de integridade e relacionamentos de N:N.
- **Queries Analíticas (Data Analytics):** Consultas com `JOIN`s, agregações (`GROUP BY`), filtros (`HAVING`) e métricas de negócio (ranking de músicas, faturamento de planos e tempo total de reprodução).
- **Integração com API Real (Em breve / Em andamento):** Script em Node.js para consumir a **Spotify Web API** e popular o banco automaticamente.

---

## 📁 Estrutura de Arquivos

```text
├── schema.sql       # Script DDL: Criação de tabelas, chaves e restrições
├── data.sql         # Script DML: Povoamento inicial com dados de teste
├── queries.sql      # Consultas SQL e relatórios analíticos de negócio
└── README.md        # Documentação do projeto
