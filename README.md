# mini-sistema-suporte
## 📐 Arquitetura do Sistema

 Versão Atual

Atualmente o projeto funciona da seguinte forma:

Frontend (HTML + CSS + JavaScript)
↓
Dados simulados em memória (arrays no script.js)

O sistema utiliza dados mockados para simular o funcionamento de um ambiente real de suporte técnico.

O banco de dados foi modelado separadamente no arquivo `banco.sql`, incluindo:

- Estrutura relacional
- Chave primária e estrangeira
- Regras de integridade (CHECK, UNIQUE)
- Operações completas de CRUD

---

 Arquitetura Futura (Evolução Planejada)

A próxima etapa do projeto será implementar uma arquitetura completa:

Frontend
↓
API (Backend - Node.js ou similar)
↓
Banco de Dados (SQLite ou outro SGBD)

Com isso será possível:

- Persistência real de dados
- Integração entre frontend e banco
- Autenticação de usuários
- Dashboard com métricas
- Separação clara entre camadas do sistema

