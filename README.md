# Modelagem-Banco-de-Dados
Repositório para a entrega das atividades da matéria de Modelagem de Banco de Dados do segundo semestre da faculdade

# Integrantes

| Nome completo do aluno | RGM | Usuário do GitHub |
| :---- | :---- | :---- |
| Renan Fernandes Dantas | 47881416 | [RenanFernandesDantas](https://github.com/RenanFernandesDantas) |
| Mateus Augusto Santos Fernandes | 48018775 | [MateusFernandes0](https://github.com/MateusFernandes0) |
| Guilherme Andrade Janas | 47831987 | [guilhermejanas-boop](https://github.com/guilhermejanas-boop) |
| Matheus de Oliveira Santos | 48065587 | [matheus-coder987](https://github.com/matheus-coder987) |
| Gustavo Oliveira da Silva Gomes | 48066702 | [GustavoGomesssss](https://github.com/GustavoGomesssss) |

---

## 1. Relatório Técnico Final

### 1.1 Revisão do Modelo Conceitual

#### Caracterização da organização

**Nome e natureza da organização**

A **Araujo & Augusto Advogados e Associados** é um escritório jurídico com fins lucrativos, atuante na prestação de serviços jurídicos e na recuperação de crédito para empresas parceiras.

A organização realiza atividades relacionadas ao acompanhamento de processos judiciais, atendimento e gerenciamento de clientes, elaboração de documentos jurídicos e recuperação de valores em aberto.

**Contexto e porte**

A organização possui mais de 80 funcionários, associados e negociadores, distribuídos entre atividades administrativas, jurídicas e de recuperação de crédito.

Entre as principais atividades realizadas estão:

- Gerenciamento de clientes e processos judiciais;
- Acompanhamento de prazos;
- Elaboração e organização de documentos;
- Negociação de dívidas;
- Registro e acompanhamento de pagamentos.

Na área de recuperação de crédito, o escritório trabalha com diferentes carteiras de clientes e empresas parceiras, incluindo Neon, Itapeva, CredAtivos e Kroton.

Cada carteira envolve o acompanhamento de informações de clientes/devedores, valores pendentes, negociações realizadas, pagamentos e demais registros relacionados à recuperação de crédito.

**Problemas e necessidades identificados**

- **P1 — Informações descentralizadas:** informações relacionadas a clientes, processos, negociações e pagamentos estão distribuídas entre planilhas, documentos e diferentes controles utilizados pelas áreas. Isso exige consultas a diferentes arquivos para obter uma visão completa de determinado caso.
- **P2 — Dificuldade de localização e atualização:** a distribuição das informações pode dificultar a localização e a atualização dos dados, especialmente quando é necessário acompanhar simultaneamente dados de clientes, situação de processos, valores negociados, pagamentos, prazos e documentos.

O sistema proposto busca centralizar e integrar essas informações, facilitando o acesso aos dados e o acompanhamento das atividades.

**Escopo do sistema**

O projeto considera informações das atividades administrativas, jurídicas, financeiras e de recuperação de crédito descritas neste relatório. O modelo conceitual contempla clientes, processos, equipes, documentos, registros financeiros, carteiras, devedores, negociações e contatos.

**Justificativa da escolha**

A organização foi escolhida devido à quantidade e variedade de informações gerenciadas diariamente, envolvendo processos jurídicos, clientes, documentos, negociações e pagamentos.

Um dos integrantes do grupo trabalha na organização. Esse vínculo facilitou o acesso às informações sobre os processos internos e as atividades realizadas. A atuação simultânea nas áreas jurídica, administrativa, financeira e de recuperação de crédito apresenta diferentes necessidades de controle e relacionamento entre informações.

**Evidências da organização**

- **Endereço:** R. Serra de Botucatu, 660 - 11º Andar - Tatuapé, São Paulo - SP, 03317-000.
- **Telefone:** (11) 3939-0844.
- **Site:** https://www.araujoeaugusto.com.br/
- **Responsável informado:** Andrei Matheus Pérgoli Ribeiro, Supervisor.
- **Telefone do responsável:** +55 11 94367-2968.

#### Relato da entrevista

O acesso às informações da organização ocorreu por meio de um integrante que trabalha na Araujo & Augusto Advogados e Associados. O levantamento permitiu compreender atividades das áreas jurídica, administrativa e de recuperação de crédito, além dos tipos de informações que precisam ser registrados e acompanhados.

- **Entrevistado:** Andrei Matheus Pérgoli Ribeiro, Supervisor.
- **Integrantes participantes:** Mateus Augusto Santos Fernandes.
- **Data e local da entrevista:** [Informar a data e confirmar o local da entrevista].
- **Observações presenciais:** [Descrever o que o grupo observou diretamente na rotina da organização].
- **Respostas e informações fornecidas:** foram identificadas atividades de gerenciamento de clientes e processos, acompanhamento de prazos, elaboração de documentos, negociação de dívidas e registro de pagamentos.
- **Levantamento completo:** [Adicionar link para o arquivo Markdown do levantamento, preferencialmente `levantamento/levantamento.md`].

As informações utilizadas no projeto têm finalidade acadêmica. Dados pessoais, informações financeiras de clientes, documentos sigilosos e outros dados confidenciais da organização não devem ser expostos.

#### Processos de negócio

**Processos administrativos**
- Cadastro de clientes e gerenciamento de carteiras;
- Gestão da equipe e atribuição de responsabilidades;
- Controle de documentos e contratos.

**Processos jurídicos**
- Abertura de processos judiciais;
- Elaboração de petições e pareceres;
- Acompanhamento de processos nos tribunais;
- Controle e cumprimento de prazos processuais;
- Organização de audiências;
- Registro de movimentações processuais.

**Processos financeiros**
- Emissão e controle de honorários;
- Registro de pagamentos;
- Controle de valores pendentes;
- Geração de relatórios financeiros por carteira e cliente.

**Processos de recuperação de crédito**
- Cadastro das carteiras;
- Cadastro de devedores;
- Atendimento e registro de contatos;
- Negociação de dívidas;
- Registro de acordos;
- Registro de pagamentos;
- Geração de relatórios de desempenho.

As carteiras identificadas no levantamento são Neon, Itapeva, CredAtivos e Kroton.

**Processos típicos não incluídos**

[Identificar processos comuns a escritórios jurídicos e operações de recuperação de crédito que não fazem parte do escopo e justificar sua não inclusão.]

#### Requisitos funcionais

- **RF01 — Cadastro de Carteiras:** permitir cadastrar uma carteira, informando seus dados e o responsável pelo atendimento.
- **RF02 — Cadastro de Devedores:** permitir cadastrar os dados de um devedor e vinculá-lo a uma carteira existente.
- **RF03 — Registro de Contatos:** permitir registrar tentativas de contato com devedores, incluindo o meio utilizado, data e resultado da interação.
- **RF04 — Atualização da Situação da Dívida:** permitir atualizar o status da dívida conforme a situação do devedor.
- **RF05 — Cadastro de Negociações:** permitir criar propostas de acordo, parcelamento ou quitação para dívidas ativas.
- **RF06 — Registro de Pagamentos:** permitir registrar pagamentos relacionados às negociações e atualizar as pendências financeiras.
- **RF07 — Relatórios de Recuperação de Crédito:** permitir gerar relatórios por carteira, devedor e equipe.
- **RF08 — Cadastro de Clientes:** permitir cadastrar clientes e seus respectivos dados.
- **RF09 — Abertura de Processos:** permitir registrar processos judiciais, associando-os a um cliente e a um advogado ou equipe responsável.
- **RF10 — Cadastro de Documentos:** permitir armazenar documentos relacionados aos processos e controlar suas informações.
- **RF11 — Cadastro de Petições:** permitir criar e armazenar petições digitais relacionadas a processos existentes, mantendo o controle de suas versões.
- **RF12 — Controle de Audiências e Prazos:** permitir registrar datas de audiências e prazos processuais.
- **RF13 — Alertas de Prazos:** permitir emitir alertas relacionados aos prazos e audiências cadastrados.
- **RF14 — Acompanhamento Processual:** permitir atualizar o status de processos e registrar suas movimentações.
- **RF15 — Controle Financeiro:** permitir registrar honorários, pagamentos e pendências financeiras relacionados a processos ou negociações.
- **RF16 — Relatórios Financeiros:** permitir gerar relatórios financeiros organizados por carteira e cliente.

#### Requisitos não funcionais

- **RNF01 — Segurança:** o sistema deverá controlar o acesso às informações de acordo com o perfil dos usuários, protegendo dados jurídicos, financeiros e pessoais.
- **RNF02 — Privacidade:** os dados pessoais e informações relacionadas a clientes e devedores deverão ser armazenados e acessados de maneira segura.
- **RNF03 — Integridade:** o sistema deverá impedir o registro de informações que violem as regras de negócio definidas pela organização.
- **RNF04 — Usabilidade:** as telas e funcionalidades deverão ser organizadas de maneira que os usuários consigam realizar as operações de forma clara e objetiva.
- **RNF05 — Disponibilidade:** o sistema deverá estar disponível para os usuários autorizados durante o período de funcionamento da organização.
- **RNF06 — Desempenho:** as operações de consulta e atualização de informações deverão apresentar tempo de resposta adequado para utilização cotidiana.
- **RNF07 — Escalabilidade:** o modelo deverá permitir o crescimento da quantidade de clientes, processos, devedores, negociações, documentos e usuários sem necessidade de reformulação completa da estrutura.
- **RNF08 — Rastreabilidade:** as alterações e movimentações relevantes dos processos, negociações e informações financeiras deverão poder ser acompanhadas.

#### Regras de negócio

**Regras operacionais**

- **RN01 — Cadastro de Carteira:** uma carteira somente poderá ser cadastrada caso exista contrato ativo entre o escritório e o respectivo credor/parceiro.
- **RN02 — Cadastro de Devedor:** um devedor somente poderá ser cadastrado quando estiver vinculado a uma carteira ativa de recuperação de crédito.
- **RN03 — Negociação:** uma negociação somente poderá ser criada para um devedor que possua uma dívida ativa registrada no sistema.
- **RN04 — Pagamento:** um pagamento somente poderá ser registrado quando existir um acordo formalizado e vinculado à respectiva negociação.
- **RN05 — Relatórios por Carteira e Equipe:** os relatórios deverão permitir a consolidação das informações por carteira, equipe, período e situação das negociações.
- **RN06 — Abertura de Processo:** um processo judicial somente poderá ser aberto quando houver um cliente previamente cadastrado e vinculado ao processo.
- **RN07 — Petição:** uma petição deverá estar obrigatoriamente vinculada a um processo judicial existente.
- **RN08 — Audiência:** uma audiência somente poderá ser agendada quando houver disponibilidade de agenda do responsável e não existir conflito de horário com outra audiência ou compromisso registrado.
- **RN09 — Honorários:** os honorários deverão estar vinculados a um processo, cliente ou negociação, permitindo identificar sua origem e situação financeira.
- **RN10 — Limite de Desconto:** os descontos concedidos em uma negociação deverão respeitar os limites e critérios definidos pelo respectivo credor/parceiro, não podendo o negociador ultrapassar sua alçada de autorização.
- **RN11 — Parcelamento:** a quantidade de parcelas e as condições de pagamento deverão respeitar os limites estabelecidos para cada carteira ou pelo respectivo credor/parceiro.
- **RN12 — Comissão e Repasse:** os valores recuperados deverão permitir a identificação do valor destinado ao credor, da comissão ou remuneração devida ao escritório e do respectivo repasse, conforme as condições estabelecidas no contrato com cada parceiro.
- **RN13 — Contas e Despesas:** custas, despesas processuais e demais valores relacionados aos processos deverão ser registrados separadamente dos honorários e dos valores recuperados em negociações.
- **RN14 — Responsabilidade pelo Processo:** cada processo deverá possuir um responsável definido, sendo que a atuação jurídica deverá ser atribuída a profissional habilitado quando a atividade exigir atuação privativa de advogado.
- **RN15 — Atribuição de Equipe:** cada atividade ou processo deverá possuir uma equipe ou responsável definido, permitindo identificar quem é responsável pelo acompanhamento e atualização das informações.

**Restrições legais e organizacionais**

- **RO01 — Proteção de Dados Pessoais (LGPD):** os dados pessoais deverão ser coletados, armazenados e utilizados para finalidades relacionadas às atividades da organização, respeitando os princípios e requisitos aplicáveis da Lei nº 13.709/2018.
- **RO02 — Controle de Acesso:** o acesso às informações deverá ser compatível com a função desempenhada pelo usuário.
- **RO03 — Sigilo Profissional:** informações obtidas em razão da relação profissional com clientes deverão ser protegidas por sigilo e acessadas somente por pessoas autorizadas.
- **RO04 — Cobrança de Dívidas:** os contatos realizados com devedores deverão respeitar as limitações legais aplicáveis, sendo vedadas práticas que exponham o devedor ao ridículo, constrangimento ou ameaça.
- **RO05 — Horários de Contato:** os contatos de cobrança deverão respeitar os horários e procedimentos definidos pela organização e os limites estabelecidos pela legislação aplicável.
- **RO06 — Prazos Processuais:** os prazos relacionados aos processos judiciais deverão ser registrados e acompanhados considerando as regras processuais aplicáveis.
- **RO07 — Responsabilidade Jurídica:** atividades que dependam de habilitação profissional deverão ser realizadas ou supervisionadas por profissional legalmente habilitado.
- **RO08 — Integridade dos Dados:** o sistema deverá impedir a criação de registros que dependam de entidades inexistentes.
- **RO09 — Histórico das Operações:** alterações relevantes em processos, negociações, pagamentos e demais registros deverão manter informações suficientes para identificar a operação realizada.

**Relação entre regras e processos**

| Processo | Principais regras relacionadas |
|----------|--------------------------------|
| Cadastro de clientes | RN06, RN14, RO01, RO02 e RO03 |
| Contrato de honorários | RN09, RO01 e RO03 |
| Abertura de processo | RN06 e RN14 |
| Elaboração de petições | RN07 e RN14 |
| Controle de prazos | RO06 e RN15 |
| Audiências | RN08, RN14 e RN15 |
| Movimentações processuais | RN06, RN14, RN15, RO06 e RO09 |
| Cadastro de carteiras | RN01 e RO09 |
| Cadastro de devedores | RN02, RO01 e RO02 |
| Contato com devedores | RO04, RO05 e RO01 |
| Negociação e acordo | RN03, RN10, RN11 e RO01 |
| Registro de pagamentos | RN04, RN12 e RO09 |
| Repasse ao credor | RN12 e RO09 |
| Comissão do escritório | RN12 e RN09 |
| Relatórios por carteira/equipe | RN05, RN15 e RO09 |
| Honorários e pendências | RN09 e RO09 |
| Custas e despesas processuais | RN13 e RO09 |
| Gestão da equipe | RN14, RN15 e RO02 |

As regras relacionadas à LGPD, ao Código de Defesa do Consumidor, ao Código de Processo Civil e ao exercício da advocacia foram incluídas como restrições gerais.

#### DER conceitual revisado

- **Software utilizado:** brModelo.
- **Diagrama:** foto anexada no repositório.

**Apontamentos da correção da Entrega 1**

| Apontamento da correção da E1 | O que mudou no trabalho | Por quê |
| :---- | :---- | :---- |
| As entidades não tinham atributos ou identificadores. | Foram adicionados atributos e identificadores às entidades. | Sem eles, o diagrama fica incompleto e não permite elaborar adequadamente o modelo lógico. |
| As cardinalidades estavam repetidas em todos os relacionamentos. | As cardinalidades foram revistas. | Para representar corretamente as relações entre as entidades. |
| A entidade Financeiro aparecia duas vezes. | A entidade Financeiro passou a aparecer uma única vez. | Para evitar duplicidade da mesma entidade no diagrama. |

### 1.2 Conversão do Modelo Conceitual para o Modelo Lógico

[Descrever como cada entidade foi convertida em tabela, como os atributos foram convertidos em colunas e como os relacionamentos e cardinalidades foram implementados por chaves estrangeiras e tabelas associativas. Descrever também a estratégia de generalização/especialização, caso exista.]

### 1.3 Definição de Chaves Primárias e Estrangeiras

[Relacionar todas as tabelas do modelo lógico, indicando a chave primária (PK) e as chaves estrangeiras (FK) de cada uma.]

### 1.4 Processo de Normalização (1FN, 2FN e 3FN)

- **1FN:** Nenhuma tabela tem coluna com lista de valores nem colunas repetidas do tipo telefone1/telefone2. Os advogados de um processo não ficam dentro de `Processo`: o vínculo está em `Processo_Equipe`, com uma linha por advogado. As tentativas de contato com um devedor não ficam em `Devedor`, e sim em `Contato`, com uma linha por tentativa (meio, data e resultado). Os arquivos de um processo também têm uma linha cada em `Documento`. Todas as tabelas têm chave primária e as colunas guardam valores atômicos. O endereço foi mantido como um único texto por simplificação.
  
- **2FN:** Só `Processo_Equipe` tem chave primária composta (`id_processo`, `id_advogado`). A única coluna que não é chave é `papel`, e ela depende do par inteiro: o mesmo advogado pode ser Responsavel num processo e Apoio em outro. Nome, OAB e função do advogado, que dependeriam só de `id_advogado`, ficam em `Equipe`. Os dados do processo ficam em `Processo`. As outras nove tabelas têm chave simples, então não existe dependência parcial.
  
- **3FN:** os dados descritivos ficam na tabela da entidade a que pertencem e as demais apontam por chave estrangeira. `Processo` guarda `id_cliente`, e não nome e CPF do cliente. `Devedor` guarda `id_carteira`, e não o nome da carteira nem o tipo de contrato. `Carteira` e `Negociacao` guardam `id_responsavel`, e não nome e OAB do responsável. Assim, corrigir o nome de um cliente é um único UPDATE em uma linha. Há uma exceção conhecida em `Financeiro`: `pendencias` poderia ser calculada como `honorarios - pagamentos`. A coluna foi mantida porque o modelo ainda não tem uma tabela `Pagamento`. Quando ela existir, pagamentos e pendências passam a ser calculados a partir dela.
  
- **Justificativa:** o problema do escritório é ter informações espalhadas e repetidas em planilhas (P1 e P2). Neste modelo, um cliente tem vários processos, um devedor tem vários contatos, um advogado atua em vários processos e uma carteira reúne muitos devedores. Sem normalizar, esses dados seriam copiados várias vezes, o que causa três anomalias. Na atualização, mudar o telefone de um cliente exigiria alterar várias linhas. Na inserção, não seria possível cadastrar um advogado que ainda não tem processo. Na exclusão, apagar o último processo de um cliente faria o cadastro dele sumir. A normalização também sustenta as regras RN06 e RN07 (processo e petição sempre ligados a cliente e processo cadastrados) e a integridade referencial (RNF03 e RO08).

### 1.5 Justificativas Técnicas das Decisões

### 1.3 Definição de Chaves Primárias e Estrangeiras

| Tabela | Chave primária (PK) | Chaves estrangeiras (FK) | Chaves únicas (UQ) |
| :-- | :-- | :-- | :-- |
| `Cliente` | `id_cliente` | nenhuma | `cpf_cnpj` |
| `Equipe` | `id_advogado` | nenhuma | `oab` |
| `Processo` | `id_processo` | `id_cliente` → `Cliente` (UPDATE CASCADE, DELETE RESTRICT) | nenhuma |
| `Processo_Equipe` | (`id_processo`, `id_advogado`) | `id_processo` → `Processo` (CASCADE, CASCADE); `id_advogado` → `Equipe` (CASCADE, RESTRICT) | nenhuma |
| `Documento` | `id_documento` | `id_processo` → `Processo` (CASCADE, RESTRICT) | nenhuma |
| `Carteira` | `id_carteira` | `id_responsavel` → `Equipe` (CASCADE, SET NULL) | nenhuma |
| `Devedor` | `id_devedor` | `id_carteira` → `Carteira` (CASCADE, RESTRICT) | `cpf_cnpj` |
| `Contato` | `id_contato` | `id_devedor` → `Devedor` (CASCADE, RESTRICT) | nenhuma |
| `Negociacao` | `id_negociacao` | `id_devedor` → `Devedor` (CASCADE, RESTRICT); `id_responsavel` → `Equipe` (CASCADE, SET NULL) | nenhuma |
| `Financeiro` | `id_financeiro` | `id_processo` → `Processo` (RESTRICT, RESTRICT); `id_negociacao` → `Negociacao` (RESTRICT, RESTRICT) | nenhuma |

As chaves primárias simples são `INT UNSIGNED AUTO_INCREMENT`. Em `Carteira.id_responsavel`, `Negociacao.id_responsavel`, `Financeiro.id_processo` e `Financeiro.id_negociacao` a FK aceita nulo. Em `Financeiro`, o `CHECK` `ck_financeiro_origem` exige que pelo menos uma das duas esteja preenchida. Nas demais tabelas, as FKs são obrigatórias (`NOT NULL`). Em cada FK, a primeira ação entre parênteses é a de `ON UPDATE` e a segunda é a de `ON DELETE`.

### 1.6 Proposta de Arquitetura Analítica para BI e IA

**Informações estratégicas**

A gestão do escritório precisa enxergar, num só lugar, o que hoje está em planilhas separadas (P1): quanto cada carteira já recuperou e quanto ainda deve, quais negociadores fecham mais acordos, quais processos estão parados ou perto do prazo (P2) e quais honorários estão pendentes por cliente. Os dados para isso já existem no modelo, em `Carteira`, `Devedor`, `Contato`, `Negociacao`, `Processo` e `Financeiro`.

**Indicadores e métricas gerenciais (KPIs)**

| KPI | Fórmula | Período | Meta sugerida |
| :-- | :-- | :-- | :-- |
| KPI 1. Dívida por carteira e situação | número de devedores e soma de `Negociacao.valor_total` por carteira e `situacao_divida` | mensal | acompanhar a migração de `Ativa` para `Negociada` e `Quitada` |
| KPI 2. Taxa de conversão em acordo | contatos com `resultado = 'Acordo fechado'` ÷ total de contatos × 100 | mensal, por carteira | a definir com o supervisor |
| KPI 3. Percentual recuperado | `pagamentos` ÷ (`pagamentos` + `pendencias`) × 100, em `Financeiro` das negociações | mensal, por carteira | a definir com o supervisor |
| KPI 4. Processos por responsável e status | contagem de `Processo` por advogado com `papel = 'Responsavel'` e por `status` | semanal | nenhum processo `Ativo` sem responsável |
| KPI 5. Honorários pendentes a vencer | soma de `pendencias` dos lançamentos de processos, ordenada por `vencimento` | semanal | zero pendências vencidas |

**Potencial dos dados para BI**

Cada KPI sai de um JOIN simples entre tabelas ligadas por FK, então os dados podem alimentar um painel sem transformação prévia. As dimensões naturais são `Carteira`, `Equipe`, `Cliente`, `Processo.status` e `Devedor.situacao_divida`. Os fatos vêm de `Financeiro` (valores e vencimentos), `Contato` (data e resultado) e `Negociacao` (valor e datas). Um painel pode combinar, por exemplo, um gráfico de recuperação por carteira (G03), a taxa de acordo por carteira (G02) e uma lista de processos e honorários perto do vencimento (G04 e G05). Como `Contato.data` guarda a hora, também é possível analisar em que horário os contatos são feitos (RO05).

**Aplicações analíticas e de IA**

Com mais histórico, os dados permitiriam três usos. O primeiro é estimar a probabilidade de acordo de um devedor a partir do meio de contato, do número de tentativas e da carteira. O segundo é priorizar a fila de cobrança dos negociadores com base nessa estimativa e no valor da dívida. O terceiro é prever atraso de pagamento nos parcelamentos. Hoje a massa de dados tem poucos registros, então isso é uma proposta de evolução, e não algo que já possa ser treinado. Qualquer uso com dados reais exigiria cuidado com a LGPD (RO01).

**Tabela de rastreabilidade**

| Problema ou KPI | Tabelas envolvidas | Consulta no script |
| :-- | :-- | :-- |
| P1. Informações descentralizadas | `Carteira`, `Devedor`, `Negociacao`, `Contato`, `Financeiro` 
| P2. Dificuldade de localização e atualização | `Processo`, `Processo_Equipe`, `Equipe`, `Cliente`, `Financeiro` 
| KPI 1. Dívida por carteira e situação | `Carteira`, `Devedor`, `Negociacao` 
| KPI 2. Taxa de conversão em acordo | `Carteira`, `Devedor`, `Contato` 
| KPI 3. Percentual recuperado | `Carteira`, `Devedor`, `Negociacao`, `Financeiro` 
| KPI 4. Processos por responsável e status | `Processo`, `Processo_Equipe`, `Equipe` 
| KPI 5. Honorários pendentes a vencer | `Cliente`, `Processo`, `Financeiro` 

## 2. Modelo Lógico Relacional

- **Software utilizado:** brModelo web.
- **Diagrama do modelo lógico:** anexado no repositório.

O diagrama apresenta todas as tabelas, colunas e tipos de dados, chaves primárias (PK), chaves estrangeiras (FK).

- **Observação:** as cardinalidades do modelo lógico não puderam ser editadas por complicações com o site, seguem as cardinalidades corretas:

  - Equipe (1,1)---(0,n) Processo
  - Equipe (1,1)---(1,1) Carteira
  - Processo (0,n)---(1,1) Cliente
  - Processo (0,1)---(1,n) Documento
  - Carteira (1,n)---(1,n) Devedor
  - Devedor (1,1)---(1,n) Contato
  - Devedor (1,1)---(0,n) Negociação
  - Negociação (1,1)---(1,n) Pagamento

---

## 3. Script SQL Completo

- **SGBD:** MySQL.
- **Arquivo do script:** anexado no repositório.

O script deve conter, nesta ordem lógica: criação do banco de dados, criação das tabelas, constraints, inserções da massa de dados, consultas `SELECT` com `JOIN`, `UPDATE`, `DELETE`, consultas gerenciais (G01, G02...) e consultas de auditoria (A01, A02...).

Cada consulta gerencial deve indicar a pergunta respondida e o problema/KPI atendido. Cada consulta de auditoria deve indicar a regra de negócio (RNxx) verificada.

---

## 4. Massa de Dados

- **Arquivo:** a massa de dados se encontra no script.
- **Natureza dos dados:** a massa é fictícia, sem dados pessoais ou financeiros reais de clientes ou envolvidos.
- **Justificativa do volume:** [Explicar como os números reais da organização justificam a quantidade de registros de cada tabela].
- **Variedade dos registros:** [Descrever como a massa contempla situações como negociações canceladas, pagamentos, pendências, diferentes carteiras e períodos, conforme aplicável].

---

## 5. Uso de Inteligência Artificial

Durante a elaboração da Entrega 1, o grupo utilizou o **ChatGPT** como ferramenta de apoio à organização das informações e à compreensão de conceitos relacionados ao projeto. A IA não foi utilizada para elaborar o DER ou definir as entidades, atributos, relacionamentos e cardinalidades do modelo. Essas decisões foram realizadas pelo próprio grupo a partir das informações levantadas sobre a organização.

### Organização do README.md

| Item | Descrição |
| :---- | :---- |
| **Ferramenta e etapa** | ChatGPT — organização das informações da Entrega 1. |
| **Motivação** | Apoiar a organização das informações levantadas pelo grupo na estrutura do arquivo README fornecida pelo professor. |
| **Prompt(s) utilizados** | Solicitações para organizar as informações já coletadas de acordo com as seções e instruções presentes no modelo de entrega. |
| **Resposta recebida** | A IA auxiliou na organização e estruturação do conteúdo nas seções correspondentes do arquivo Markdown. |
| **Fontes consultadas e verificadas** | As informações utilizadas vieram principalmente do levantamento realizado pelo grupo e do modelo de entrega fornecido pelo professor. |
| **Trechos rejeitados ou corrigidos** | Informações que não haviam sido levantadas pelo grupo ou que não correspondiam ao funcionamento conhecido da organização foram desconsideradas ou revisadas. |
| **Justificativa da escolha final** | O grupo revisou a organização final para garantir que o README representasse as informações efetivamente levantadas. |
| **Reflexão crítica** | A IA foi utilizada como ferramenta de organização e revisão. O conteúdo precisou ser conferido pelo grupo, pois a ferramenta não participou da pesquisa de campo. |

### Apoio na compreensão do DER

O ChatGPT foi utilizado para explicar conceitos relacionados ao Diagrama Entidade-Relacionamento (DER), auxiliando na compreensão de entidades, atributos, relacionamentos e cardinalidades.

Esse auxílio teve caráter didático e explicativo. A IA não elaborou o DER final, não definiu as entidades do modelo e não determinou as cardinalidades utilizadas pelo grupo. A construção do modelo foi realizada pelos integrantes com base no levantamento dos processos e regras de negócio da organização.

A IA foi utilizada como apoio à formatação e organização do conteúdo, e não para definir quais informações deveriam fazer parte do dicionário. Os dados e atributos foram definidos a partir do levantamento realizado pelo grupo.

### Usos de IA na Entrega 2

[Registrar aqui cada uso de IA realizado na Entrega 2, incluindo ferramenta e etapa, motivação, prompt(s), resposta recebida, fontes consultadas e verificadas, trechos rejeitados ou corrigidos, justificativa da escolha final e reflexão crítica. Se não houver uso de IA em alguma etapa, declarar isso explicitamente.]
