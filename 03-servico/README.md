# Documentação EVNTTZ. — SEBRAE

Conjunto de documentos de alto nível elaborados para apresentação ao SEBRAE. O
material descreve a plataforma **EVNTTZ.** em nível funcional, arquitetural e
operacional, **sem expor segredos de implementação, credenciais, endpoints
internos ou configurações sensíveis**.

> **Nota de confidencialidade.** Todos os documentos deste diretório são de
> caráter informativo e de alto nível. Código-fonte, configurações de servidor,
> credenciais e detalhes internos de segurança serão disponibilizados apenas em
> ambiente controlado, mediante exigência formal. Ver
> [09 — Declaração de Confidencialidade](./09-declaracao-confidencialidade.md).

## Índice

| # | Documento | Conteúdo |
|---|-----------|----------|
| 01 | [Documento Funcional de Alto Nível](./01-documento-funcional.md) | Visão funcional, requisitos funcionais e não funcionais |
| 02 | [Jornada Gamificada e Mecânicas](./02-jornada-gamificada-mecanicas.md) | Fluxo principal da jornada e mecânicas centrais |
| 03 | [Arquitetura de Alto Nível](./03-arquitetura-alto-nivel.md) | Diagrama de arquitetura (sem segredos de implementação) |
| 04 | [Fluxo de Dados Conceitual](./04-fluxo-de-dados.md) | Diagrama de fluxo de dados em nível conceitual |
| 05 | [Capacidade, Integrações e Operação](./05-capacidade-integracoes-operacao.md) | Usuários simultâneos, integrações, acessibilidade, backup e monitoramento |
| 06 | [Manual de Integração e Operação](./06-manual-integracao-operacao.md) | Manual resumido de integração e operação |
| 07 | [Relatório de Testes](./07-relatorio-de-testes.md) | Evidências de desempenho, estabilidade e acessibilidade |
| 08 | [Registro de Versões e Alterações](./08-registro-de-versoes.md) | Histórico de versões e mudanças relevantes |
| 09 | [Declaração de Confidencialidade](./09-declaracao-confidencialidade.md) | Declaração sobre disponibilização de informações sigilosas |

## Sobre a Plataforma

A EVNTTZ. é uma **plataforma multi-tenant de eventos gamificados** composta por
seis aplicações independentes que se comunicam por uma API central. A plataforma
cobre toda a jornada do evento: criação e gestão pelo organizador, venda de
ingressos, participação gamificada do público e gestão de conteúdo.

| Versão do documento | Data | Responsável |
|---------------------|------|-------------|
| 1.0 | 2026-06-09 | Equipe EVNTTZ. |
