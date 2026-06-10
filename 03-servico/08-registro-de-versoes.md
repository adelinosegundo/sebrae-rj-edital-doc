# 08 — Registro de Versões e Alterações

**Plataforma:** EVNTTZ. · **Versão:** 1.0 · **Data:** 2026-06-09

Registro resumido das versões e das alterações relevantes da plataforma. O
detalhamento técnico completo é mantido no histórico de controle de versão
(Git), disponibilizado em ambiente controlado quando exigido formalmente.

---

## 1. Política de Versionamento

- **Controle de versão:** Git, com histórico completo de alterações.
- **Padrão de commits:** *Conventional Commits* (`feat`, `fix`, `docs`,
  `refactor`, `test`, `chore`, `perf`), por escopo de aplicação.
- **Branches:** `feature/*` para novas funcionalidades, `fix/*` para correções e
  `hotfix/*` para correções urgentes em produção.
- **Rastreabilidade:** funcionalidades documentadas em artefatos de feature
  (metadados, briefing e especificação) e vinculadas à gestão de tarefas.

## 2. Marcos Recentes da Plataforma

Resumo de evoluções relevantes registradas no histórico do projeto:

| Marco | Descrição |
|-------|-----------|
| **Login com Apple** | Inclusão de autenticação via Apple. |
| **Módulo de Quests (fundação)** | Base do módulo de quests/desafios da gamificação. |
| **Gestão de artigos científicos** | Funcionalidade de gestão de conteúdo científico. |
| **Migração de processamento assíncrono** | Evolução do mecanismo de jobs em segundo plano. |
| **Aprovação de pedido fora de estoque (cascata)** | Tratamento de pedidos em cenários de estoque. |
| **Conta gráfica PagBank** | Evolução da integração de pagamentos. |
| **Checkout — telefone E.164** | Padronização internacional de telefone no checkout. |
| **Checkout — sala de espera (controle de fluxo)** | Controle de picos de acesso na venda. |
| **Apps Mobile** | Aplicativos mobile do participante e da gamificação. |

> A lista acima é um **extrato de alto nível**. A relação completa, com datas e
> autoria, está disponível no histórico de versão.

## 3. Versões das Aplicações

| Aplicação | Stack (família) | Faixa de versão |
|-----------|-----------------|-----------------|
| **API** | Rails 7 / Ruby 3.2.5 | Em produção |
| **Webapp** | Next.js 14 | Linha 0.x |
| **Sales** | Next.js 15 | Linha 0.x |
| **Gamification** | Next.js 14 | Linha 0.x |
| **Site** | Next.js 14 | Linha 0.x |
| **CMS** | Strapi 4.25.6 | Em produção |

## 4. Registro de Versões desta Documentação

| Versão | Data | Alteração |
|--------|------|-----------|
| 1.0 | 2026-06-09 | Emissão inicial do conjunto de documentos para o SEBRAE. |

## 5. Como o Histórico é Mantido

Toda alteração relevante é registrada como *commit* no Git, com mensagem
padronizada e escopo. Funcionalidades maiores possuem artefatos de
especificação. Esse histórico constitui o **registro auditável** de evolução da
plataforma, disponibilizado integralmente em ambiente controlado quando
formalmente requerido.
