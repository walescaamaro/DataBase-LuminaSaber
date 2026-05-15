<div align="center">

# 🗄️ DataBase — LuminaSaber

**Scripts SQLite do banco de dados da plataforma [LuminaSaber](https://github.com/walescaamaro/LuminaSaber)**

</div>

---

## 📖 Sobre este repositório

Este repositório contém todos os scripts SQL do banco de dados relacional do projeto LuminaSaber, desenvolvido em **SQLite**. Os arquivos estão organizados por operação para facilitar a leitura e execução.

> ⚠️ **Atenção:** o banco foi originalmente modelado em **PostgreSQL** e migrado para **SQLite**. As principais adaptações foram:
> - `ENUM` substituído por `TEXT` com `CHECK`
> - `ALTER TABLE ADD CONSTRAINT` movido para dentro do `CREATE TABLE`
> - Tipo `TIME` substituído por `TEXT` (formato `'HH:MM:SS'`)
> - `AUTOINCREMENT` adicionado em todas as chaves primárias simples
> - `PRAGMA foreign_keys = ON;` necessário para ativar chaves estrangeiras

---

## 👩‍💻 Equipe

| Nome | Matrícula |
|------|-----------|
| Walesca Amaro Rodrigues | 20241780019 |
| Rayssa Priscila Silva Nascimento | 20241780013 |

**Instituição:** Instituto Federal de Educação, Ciência e Tecnologia da Paraíba (IFPB)

---

## 📁 Arquivos

| Arquivo | O que faz |
|---------|-----------|
| `tabelas.sql` | Cria todas as tabelas, constraints e relacionamentos do banco em SQLite |
| `insert.sql` | Insere os dados iniciais em todas as tabelas |
| `consultas.sql` | Consultas de exemplo com SELECT, WHERE, JOIN e ordenação |
| `atualização de dados (update).sql` | Exemplos de atualização de registros com UPDATE |
| `delete.sql` | Exemplos de exclusão de registros com DELETE |

---

## Tabelas do Banco

O modelo é composto por **12 tabelas**:

`USUARIO` · `DISCIPLINA` · `CONTEUDO` · `QUESTAO` · `HISTORICO` · `PASTA` · `ANOTACAO` · `SUPORTE` · `RELATORIO` · `ESTUDA` · `POSSUI` · `CONTEM`

### Tabelas com `AUTOINCREMENT`

| Tabela | Coluna |
|--------|--------|
| `USUARIO` | `cod_usuario` |
| `PASTA` | `cod_pasta` |
| `DISCIPLINA` | `cod_disc` |
| `SUPORTE` | `cod_suporte` |
| `RELATORIO` | `cod_relatorio` |
| `QUESTAO` | `cod_quest` |
| `HISTORICO` | `cod_resposta` |
| `CONTEUDO` | `cod_conteudo` |
| `ANOTACAO` | `cod_anota` |

> Tabelas com chave primária composta (`ESTUDA`, `CONTEM`, `POSSUI`) não utilizam `AUTOINCREMENT`.

---

## 🔗 Repositório principal

O código da aplicação (back-end e front-end) está em:
**[github.com/walescaamaro/LuminaSaber](https://github.com/walescaamaro/LuminaSaber)**

---

## 📄 Licença

Este projeto foi desenvolvido para fins educacionais no **Instituto Federal de Educação, Ciência e Tecnologia da Paraíba (IFPB)**.
