# Documentação Mínima de Entrega - Evnttz

Documento base para compartilhamento externo com o Sebrae/RJ, voltado a comprovacao minima da qualificacao do servico do `Lote 3`, sem exposicao de informacoes sensiveis ou proprietarias.

## 0. Escopo deste pacote minimo

Este material foi estruturado para comprovar a qualificacao do servico vinculado ao CNPJ da fornecedora, especialmente quanto a `Estruturacao de Plataforma Gamificada`, sem compartilhar credenciais, codigo-fonte, configuracoes internas, segredos de infraestrutura ou outros elementos sigilosos do `Evnttz`.

### Itens sigilosos fora deste pacote inicial
- Codigo-fonte completo.
- Credenciais, chaves, tokens e segredos.
- Endpoints internos, payloads completos e configuracoes proprietarias.
- Configuracoes de servidor, rede e hardening detalhado.
- Logs brutos e trilhas de auditoria completas.

### Regra de compartilhamento
- Informacoes sensiveis somente mediante canal restrito, controle de acesso e solicitacao formal.

## 1. Escopo funcional entregue
### Objetivo
Registrar, de forma não sensível, o que foi entregue para uso operacional.

### Escopo entregue
- Acesso à plataforma em ambiente de produção.
- Operação por perfis autorizados.
- Fluxos operacionais contratados.
- Consulta de relatórios operacionais.
- Suporte operacional conforme canais definidos.

### Fora de escopo
- Codigo-fonte completo e configuracoes proprietarias.
- Detalhes tecnicos internos nao necessarios a comprovacao inicial.

### Critério de conclusão
- Funcionalidades contratadas disponíveis.
- Aceite formal registrado.

## 2. Guia operacional (uso da plataforma)
### Objetivo
Orientar o uso diário da plataforma sem exposição de informações sensíveis.

### Acesso
1. Entrar pela URL oficial do ambiente.
2. Informar credenciais autorizadas.
3. Validar perfil de acesso.

### Como usar como Produtor
#### Rotina principal
1. Acessar com perfil de `Produtor`.
2. Abrir o painel inicial e validar pendências do dia.
3. Entrar no módulo de gestão e localizar o evento/turma/atividade.
4. Atualizar informações operacionais permitidas (status, dados de execução, acompanhamento).
5. Salvar e confirmar se a alteração foi aplicada.

#### Acompanhamento operacional
1. Consultar participantes vinculados ao evento/atividade.
2. Verificar andamento dos fluxos contratados.
3. Tratar pendências operacionais e registrar observações necessárias.
4. Emitir relatório operacional quando solicitado.

#### Quando houver erro
1. Identificar o item com inconsistência.
2. Corrigir os campos permitidos e tentar novamente.
3. Persistindo erro, abrir chamado com evidência (ID, data/hora, print e descrição curta).

### Como usar como Participante
#### Acesso e navegação
1. Acessar com perfil de `Participante`.
2. Verificar painel inicial com atividades disponíveis.
3. Entrar na atividade/jornada liberada para seu perfil.

#### Execução de atividades
1. Seguir as etapas apresentadas na plataforma.
2. Concluir ações obrigatórias de cada etapa.
3. Acompanhar status de progresso na própria área.
4. Consultar comprovantes/resultado quando disponível no fluxo.

#### Em caso de dificuldade
1. Confirmar se os dados preenchidos estão corretos.
2. Atualizar a página e tentar novamente.
3. Persistindo problema, acionar suporte com evidência (print e horário).

### Tratamento de pendências (geral)
1. Localizar item com inconsistência.
2. Corrigir informação permitida.
3. Reprocessar ou atualizar status.
4. Se persistir, abrir chamado com evidência.

### Boas práticas
- Não compartilhar credenciais.
- Usar apenas permissões do próprio perfil.
- Encerrar sessão após uso.

### Suporte
- Canal operacional: `preencher`
- Canal técnico: `preencher`
- Horário de atendimento: `preencher`

## 3. Especificacao funcional e integracao (resumo nao sensivel)
### Requisitos funcionais principais
- Autenticacao de usuarios autorizados.
- Gestao de jornadas, atividades, eventos ou trilhas gamificadas.
- Controle por perfis de acesso.
- Registro e acompanhamento de progresso.
- Consulta de relatorios operacionais.

### Requisitos nao funcionais principais
- Disponibilidade operacional compativel com uso simultaneo.
- Integracao segura com sistemas externos.
- Rastreabilidade de operacoes.
- Rotinas de backup e recuperacao.
- Acessibilidade minima alinhada a WCAG 2.1.

### Fluxo principal da jornada gamificada
1. Usuario autenticado acessa a plataforma.
2. Plataforma identifica perfil e permissoes.
3. Usuario entra na jornada, evento ou atividade disponivel.
4. Plataforma registra progresso, interacoes e status.
5. Dados podem ser consultados por modulos administrativos e relatorios.

### Visão geral
Integração por API segura entre sistemas autorizados.

### Padrão de comunicação
- Protocolo seguro (HTTPS).
- Troca de dados em JSON.
- Controle de acesso por autenticação e perfil.

### Autenticação
- Token de acesso com expiração.
- Renovação e revogação conforme política vigente.

### Operações integradas (alto nível)
- Autenticação de usuário/sistema.
- Consulta de dados operacionais.
- Registro e atualização de informações contratuais.
- Consulta de relatórios operacionais.

### Respostas padrão
- Sucesso.
- Erro de validação.
- Não autorizado.
- Recurso não encontrado.
- Erro interno.

### Observação de segurança
Catálogo técnico detalhado (endpoints e payloads) é disponibilizado apenas em canal restrito para equipes autorizadas.

## 3.1 Arquitetura e fluxo de dados em alto nivel
### Arquitetura resumida
- Camada de apresentacao para usuarios administrativos e participantes.
- Camada de servicos de negocio da plataforma gamificada.
- Camada de integracao com sistemas externos autorizados.
- Camada de persistencia e rotinas operacionais.
- Camada de monitoramento, logs e backup.

### Fluxo de dados resumido
1. Usuario ou sistema autorizado inicia requisicao.
2. Plataforma autentica e valida permissao.
3. Regra de negocio processa a operacao.
4. Dados sao gravados, consultados ou sincronizados com integracoes permitidas.
5. Eventos operacionais sao registrados para rastreabilidade.

### Observacao
- Diagramas detalhados podem ser anexados em versao controlada, sem exposicao de segredos tecnicos.

## 4. Evidências de testes e aceite
### Testes funcionais
- Fluxos contratados executados com sucesso.
- Perfis de acesso validados.
- Tratamento de erros básicos validado.

### Carga básica
- Execução de cenário representativo de uso.
- Sem falha impeditiva no fluxo principal.

### Acessibilidade mínima
- Navegação por teclado nos fluxos principais.
- Legibilidade mínima de interface.

### Infraestrutura operacional resumida
- Ambiente com capacidade para usuarios simultaneos sem travamentos impeditivos no fluxo principal.
- Integracoes ativas em ambiente seguro conforme necessidade operacional.
- Rotina de backup diario com possibilidade de restauracao.
- Monitoramento continuo e registros de operacao disponiveis internamente.

### Aceite
- Data: `____/____/______`
- Responsável técnico: `NOME`
- Responsável de negócio: `NOME`
- Status: `Aprovado / Aprovado com ressalvas / Reprovado`

### Evidências anexas
- Ata/checklist de homologação.
- Evidências visuais.

## 5. SLA, segurança e LGPD
### SLA
- Atendimento conforme níveis de criticidade definidos em contrato.
- Comunicação de incidentes e atualizações durante tratamento.

### Disponibilidade
- Meta de disponibilidade conforme contrato vigente.
- Manutenção programada com aviso prévio.

### Segurança
- Acesso seguro e controlado por perfil.
- Registros de operação para rastreabilidade.
- Tratamento de incidentes com contenção e correção.

### Restricao de sigilo
- Detalhes internos de autenticacao, infraestrutura, configuracao e seguranca nao sao compartilhados neste pacote inicial.
- Caso formalmente exigido, podera ser disponibilizada documentacao complementar em ambiente controlado.

### LGPD
- Tratamento de dados conforme finalidade contratual.
- Coleta mínima necessária.
- Retenção e descarte conforme política aplicável.
- Atendimento a solicitações de titulares pelos canais oficiais.

## 6. Registro de versão da entrega
### Identificação
- Versão: `vX.Y.Z`
- Data de implantação: `____/____/______`
- Ambiente: `Produção`

### Resumo da entrega
- Itens funcionais implantados: `preencher`
- Correções aplicadas: `preencher`

### Validação pós-implantação
- Fluxos principais operacionais.
- Acesso por perfil validado.

### Aprovação
- Responsável técnico: `NOME`
- Responsável de negócio: `NOME`
- Status: `Implantado / Implantado com ressalvas`

## 7. Pacote minimo recomendado para envio ao Sebrae/RJ

- Este documento preenchido e revisado.
- Evidencias visuais da plataforma em uso.
- Relatorio resumido de testes.
- Diagrama de arquitetura em alto nivel.
- Diagrama conceitual de fluxo de dados.
- Registro de versoes relevantes.
- Declaracao de sigilo sobre itens proprietarios do Evnttz.
