# 01 — Documento Funcional de Alto Nível

**Plataforma:** EVNTTZ. — Plataforma de Eventos Gamificados
**Versão:** 1.0 · **Data:** 2026-06-09

---

## 1. Visão Geral

A EVNTTZ. é uma plataforma SaaS **multi-tenant** para organização, venda e
participação em eventos, com forte componente de **gamificação e engajamento**.
A solução acompanha todo o ciclo de vida de um evento — da criação e divulgação,
passando pela venda de ingressos, até a experiência interativa do participante e
a emissão de certificados.

A plataforma é organizada como um conjunto de **seis aplicações especializadas**
que se comunicam por uma **API REST central**, garantindo escalabilidade,
isolamento de responsabilidades e implantação independente de cada módulo.

## 2. Públicos-Alvo (Personas)

| Persona | Descrição |
|---------|-----------|
| **Administrador** | Gestão da plataforma, configuração e administração de organizações |
| **Produtor** | Organizador de eventos: configuração, operação e relatórios |
| **Participante** | Público final: compra, participa e interage com a gamificação |
| **Parceiro** | Integrações B2B (apps parceiros que embarcam a experiência) |
| **Sistema** | Processos automáticos, jobs em segundo plano e integrações |

## 3. Módulos Funcionais

1. **Gestão de Eventos** — criação, configuração, datas, locais, programação e palestrantes.
2. **Vendas e Checkout** — catálogo de ingressos, cupons, carrinho, pagamento e emissão de pedidos.
3. **Check-in** — validação de ingressos por QR Code e controle de acesso no local.
4. **Gamificação** — jornadas, missões, desafios, quizzes, lojinha de recompensas, fórum e guildas.
5. **Carteira e Recompensas** — pontos, moedas virtuais, medalhas, níveis, prêmios e resgates.
6. **Conteúdo** — gestão de conteúdo institucional, páginas, FAQ e biblioteca.
7. **Relatórios e Dashboards** — acompanhamento de vendas, engajamento e participação.
8. **Certificados** — emissão e validação de certificados de participação.

## 4. Requisitos Funcionais (Principais)

### 4.1 Gestão de Eventos
- **RF-01** Criar, editar e publicar eventos com datas, locais e programação.
- **RF-02** Cadastrar palestrantes e vincular à programação do evento.
- **RF-03** Configurar lotes, tipos de ingresso e regras de venda.

### 4.2 Vendas e Pagamentos
- **RF-04** Exibir páginas de venda temáticas por evento.
- **RF-05** Processar checkout com múltiplos meios de pagamento.
- **RF-06** Aplicar cupons de desconto e vouchers.
- **RF-07** Gerar pedidos, ingressos e comprovantes; suportar transferência de ingressos.

### 4.3 Check-in
- **RF-08** Gerar QR Code por ingresso e validar entrada no local.
- **RF-09** Controlar acesso e registrar presença.

### 4.4 Gamificação
- **RF-10** Disponibilizar jornadas com níveis e estágios progressivos.
- **RF-11** Oferecer missões, desafios e quizzes pontuáveis.
- **RF-12** Manter carteira de pontos/moedas por participante.
- **RF-13** Conceder medalhas, títulos e subir o participante de nível.
- **RF-14** Disponibilizar lojinha de recompensas com resgate de prêmios.
- **RF-15** Oferecer fórum, guildas e interações sociais entre participantes.

### 4.5 Identidade e Acesso
- **RF-16** Autenticar usuários por OAuth2 e suportar login federado (SSO).
- **RF-17** Aplicar autorização por persona/perfil em todas as operações.

### 4.6 Conteúdo e Relatórios
- **RF-18** Gerenciar conteúdos e páginas via CMS headless.
- **RF-19** Disponibilizar relatórios de vendas, engajamento e participação.
- **RF-20** Emitir certificados de participação.

## 5. Requisitos Não Funcionais (Principais)

| Categoria | Requisito |
|-----------|-----------|
| **Multi-tenancy** | RNF-01 — Isolamento de dados por organização/evento em todas as consultas. |
| **Segurança** | RNF-02 — Autenticação OAuth2, autorização por perfil e proteção de dados pessoais (LGPD). |
| **Desempenho** | RNF-03 — Suporte a picos de acesso simultâneo em vendas e check-in. |
| **Escalabilidade** | RNF-04 — Aplicações independentes e escaláveis horizontalmente; processamento assíncrono de tarefas pesadas. |
| **Disponibilidade** | RNF-05 — Arquitetura preparada para alta disponibilidade em ambiente de nuvem. |
| **Acessibilidade** | RNF-06 — Interfaces aderentes às boas práticas WCAG e uso de componentes acessíveis. |
| **Observabilidade** | RNF-07 — Monitoramento de erros e métricas em produção. |
| **Confiabilidade** | RNF-08 — Backup periódico de dados e estratégia de recuperação. |
| **Manutenibilidade** | RNF-09 — Código tipado, modularizado e com limites de tamanho por arquivo. |
| **Portabilidade** | RNF-10 — Experiência gamificada embarcável em apps parceiros (WebView/iframe). |
| **Internacionalização** | RNF-11 — Suporte a múltiplos idiomas no conteúdo e na interface. |

## 6. Fronteiras do Sistema

A plataforma integra-se a serviços externos para pagamento, armazenamento de
arquivos, transcrição de mídia e monitoramento. O detalhamento conceitual dessas
integrações consta nos documentos
[03 — Arquitetura](./03-arquitetura-alto-nivel.md) e
[05 — Capacidade, Integrações e Operação](./05-capacidade-integracoes-operacao.md).
