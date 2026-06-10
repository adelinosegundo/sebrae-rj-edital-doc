# 04 — Diagrama de Fluxo de Dados (Conceitual)

**Plataforma:** EVNTTZ. · **Versão:** 1.0 · **Data:** 2026-06-09

> Fluxo de dados em **nível conceitual**. Não expõe credenciais, endpoints
> internos, esquemas de banco ou configurações sensíveis.

---

## 1. Objetivo

Descrever, de forma conceitual, como os dados trafegam entre os atores e os
componentes da plataforma nos principais fluxos de negócio: **venda**,
**check-in** e **gamificação**.

## 2. Fluxo de Dados — Visão Geral

```mermaid
flowchart LR
    Participante((Participante)) -->|Dados de compra/interação| Frontends[Aplicações de Front-end]
    Produtor((Produtor)) -->|Configurações de evento| Frontends
    Frontends -->|Requisições autenticadas| API[API Central]
    API -->|Leitura/Escrita| Dados[(Repositório de Dados)]
    API -->|Tarefas diferidas| Async[Processamento Assíncrono]
    Async --> Dados
    API <-->|Integrações| Externos[Serviços Externos]
    API -->|Respostas / Relatórios| Frontends
    Frontends -->|Visualização| Participante
    Frontends -->|Dashboards| Produtor
```

## 3. Fluxo de Venda (Conceitual)

```mermaid
flowchart TD
    A[Participante seleciona ingresso] --> B[Front-end de Vendas]
    B --> C[API valida disponibilidade e regras]
    C --> D[Integração com gateway de pagamento]
    D --> E{Pagamento aprovado?}
    E -- Sim --> F[Geração de pedido e ingresso]
    E -- Não --> G[Pedido não confirmado]
    F --> H[Notificação ao participante]
    F --> I[Atualização de relatórios do produtor]
```

**Dados envolvidos (categorias):** dados cadastrais do comprador, dados do
pedido/ingresso e confirmação de pagamento. **Dados sensíveis de pagamento são
tratados pelo gateway externo**, não trafegando de forma exposta na plataforma.

## 4. Fluxo de Check-in (Conceitual)

```mermaid
flowchart TD
    A[Ingresso com QR Code] --> B[Aplicação de Check-in]
    B --> C[API valida ingresso e titularidade]
    C --> D{Ingresso válido?}
    D -- Sim --> E[Registro de presença]
    D -- Não --> F[Acesso negado]
    E --> G[Atualização de status e relatórios]
```

## 5. Fluxo de Gamificação (Conceitual)

```mermaid
flowchart TD
    A[Ação do participante] --> B[App de Gamificação]
    B --> C[API registra a ação e aplica regras]
    C --> D[Atualização da carteira de pontos]
    D --> E[Avaliação de progresso e conquistas]
    E --> F[Concessão de medalhas/níveis]
    F --> G[Disponibilização na Lojinha]
    G --> H[Resgate de recompensas]
    C --> I[Dados de engajamento para relatórios]
```

## 6. Categorias de Dados Tratados

| Categoria | Exemplos (conceituais) | Observação |
|-----------|------------------------|------------|
| **Identidade** | Nome, e-mail, perfil de acesso | Protegido por autenticação e LGPD |
| **Eventos** | Configurações, datas, locais, programação | Isolado por tenant |
| **Comercial** | Pedidos, ingressos, cupons | Confirmação de pagamento via gateway externo |
| **Gamificação** | Pontos, conquistas, progresso, interações | Base do engajamento |
| **Conteúdo** | Páginas, mídias, materiais | Gerenciado no CMS |
| **Operacional** | Logs de erro e métricas | Para monitoramento |

## 7. Princípios de Tratamento de Dados

1. **Isolamento multi-tenant** — dados segregados por organização/evento.
2. **Trânsito seguro** — comunicação cifrada (HTTPS) entre todas as camadas.
3. **Minimização de exposição** — dados sensíveis de pagamento delegados a parceiros especializados.
4. **Aderência à LGPD** — coleta, uso e retenção de dados pessoais conforme finalidade.
5. **Rastreabilidade** — movimentações relevantes (ex.: carteira) são registradas.
