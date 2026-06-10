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

## Documentos e Informacoes Que Nao Serao Enviados

Os itens abaixo **nao integram este pacote inicial** porque envolvem ativos de
`propriedade intelectual` da `Game Mind` e informacoes sujeitas a
`confidencialidade`, `seguranca da informacao` e `sigilo operacional` da
plataforma `EVNTTZ.`.

### Nao serao enviados neste pacote

- `Codigo-fonte completo` da plataforma, de bibliotecas internas, modulos e servicos.
- `Repositorios privados`, historico de commits, branches internas e pipelines de deploy.
- `Credenciais`, chaves, tokens, segredos, certificados e variaveis de ambiente.
- `Configuracoes internas de servidor`, rede, cloud, banco de dados, filas, cache e hardening.
- `Endpoints internos`, payloads completos, contratos tecnicos integrais e detalhes de autenticacao.
- `Logs brutos`, trilhas completas de auditoria, base de dados operacionais e dados sensiveis de usuarios.
- `Arquivos-fonte de design`, arte, componentes proprietarios, bibliotecas reutilizaveis e frameworks internos.
- `Documentacao detalhada de seguranca`, resposta a incidentes, politicas internas e mecanismos antiabuso.

### Justificativa

- A `EVNTTZ.` e um ativo proprietario da `Game Mind`, com elementos tecnicos e funcionais protegidos por direitos de propriedade intelectual.
- O compartilhamento integral desses materiais extrapola a comprovacao minima de qualificacao tecnica exigida nesta etapa documental.
- A divulgacao ampla de credenciais, configuracoes, logs e detalhes internos de seguranca aumentaria risco operacional, de indisponibilidade e de exposicao indevida de dados.
- Partes da documentacao tecnica completa podem conter segredos de negocio, know-how acumulado, arquitetura proprietaria e componentes reutilizaveis que nao devem ser publicizados sem controle.
- Caso haja exigencia formal posterior, eventual acesso a informacoes mais sensiveis devera ocorrer em `ambiente controlado`, com restricao de acesso, finalidade definida e observancia das obrigacoes de confidencialidade aplicaveis.

### O que esta sendo enviado no lugar

- Documentacao funcional de alto nivel.
- Diagramas conceituais e de arquitetura sem segredos de implementacao.
- Evidencias resumidas de operacao, desempenho, integracoes, acessibilidade e testes.
- Declaracao formal de confidencialidade e de limitacao do escopo documental desta etapa.

| Versão do documento | Data | Responsável |
|---------------------|------|-------------|
| 1.0 | 2026-06-09 | Equipe EVNTTZ. |
