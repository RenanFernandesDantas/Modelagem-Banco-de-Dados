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
- **Data e local da entrevista:** A entrevista foi realizada presencialmente em 17/09/2026, nas dependências do escritório, localizado na R. Serra de Botucatu, 660, 11º andar, Tatuapé, São Paulo — SP.
- **Observações presenciais:** Foram observados como é feito o controle de clientes, o sistema usado para as consultas dos negócios, como é consultado o histórico dos clientes e devedores.
- **Respostas e informações fornecidas:** foram identificadas atividades de gerenciamento de clientes e processos, acompanhamento de prazos, elaboração de documentos, negociação de dívidas e registro de pagamentos.
- **Levantamento completo:** [levantamento](levantamento/levantamento.md).

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

**Entidades**

Cada entidade do DER virou uma tabela. Todas têm uma chave primária criada por nós, no formato `id_<entidade>`, do tipo `INT UNSIGNED AUTO_INCREMENT`. Os nomes que fogem disso são a chave de `Equipe`, que se chama `id_advogado` (a tabela também guarda negociadores, mas o nome ficou da primeira versão), e as chaves estrangeiras `id_responsavel`, em `Carteira` e `Negociacao`. No total ficaram 10 tabelas, separadas em três grupos.

| Grupo | Tabelas |
| :-- | :-- |
| Jurídico | `Cliente`, `Processo`, `Documento` |
| Recuperação de crédito | `Carteira`, `Devedor`, `Contato`, `Negociacao` |
| Transversais | `Equipe`, `Pagamento` e a tabela associativa `Processo_Equipe` |

**Atributos**

Cada atributo simples virou uma coluna, e o tipo foi escolhido de acordo com o dado:

- Textos livres, como nomes, endereços e caminhos de arquivo, são `VARCHAR`.
- Valores em dinheiro (`valor_pago`, `valor_total`) são `DECIMAL(12,2)`, para não ter erro de arredondamento.
- Datas são `DATE`. Só `Contato.data` é `DATETIME`, porque precisamos guardar a hora do contato (RO05).
- Atributos com poucos valores fixos viraram `ENUM`: `Processo.status`, `Devedor.situacao_divida`, `Negociacao.status`, `Contato.resultado` e `Pagamento.forma_pagamento`.
- Outros atributos também têm poucos valores, mas ficaram como `VARCHAR`: `Contato.meio` (5 valores nos dados de teste), `Negociacao.tipo` (4), `Documento.tipo` (8), `Processo_Equipe.papel` e `Equipe.funcao`. Ou seja, não usamos o mesmo critério para decidir entre `ENUM` e `VARCHAR`. Isso é uma limitação do trabalho (seção 6).

Os atributos que o levantamento marcou como obrigatórios ficaram `NOT NULL`. Os opcionais, como telefone, e-mail e `data_fim` de um contrato em aberto, aceitam nulo. CPF/CNPJ e OAB são colunas únicas, para não deixar cadastrar a mesma pessoa duas vezes. O `Devedor.cpf_cnpj` é único mas aceita nulo, porque nem todo devedor tem o documento levantado.

**Relacionamentos e cardinalidades**

Nos relacionamentos 1:N, a chave estrangeira fica na tabela do lado N. O único relacionamento N:M virou uma tabela associativa.

| Relacionamento | Cardinalidade | Como foi implementado |
| :-- | :-- | :-- |
| Cliente e Processo | 1:N | `Processo.id_cliente`, obrigatória |
| Processo e Equipe | N:M | tabela associativa `Processo_Equipe` |
| Processo e Documento | 1:N | `Documento.id_processo`, obrigatória |
| Carteira e Devedor | 1:N | `Devedor.id_carteira`, obrigatória |
| Devedor e Contato | 1:N | `Contato.id_devedor`, obrigatória |
| Devedor e Negociacao | 1:N | `Negociacao.id_devedor`, obrigatória |
| Equipe e Carteira | 1:N, opcional | `Carteira.id_responsavel`, aceita nulo |
| Equipe e Negociacao | 1:N, opcional | `Negociacao.id_responsavel`, aceita nulo |
| Processo e Pagamento | 1:N, opcional | `Pagamento.id_processo`, aceita nulo (honorários) |
| Negociacao e Pagamento | 1:N, opcional | `Pagamento.id_negociacao`, aceita nulo (valores de acordo) |

Processo e Equipe é N:M porque um processo pode ter um advogado responsável e outros de apoio, e um mesmo advogado atua em vários processos. Na tabela `Processo_Equipe` a chave primária é composta por (`id_processo`, `id_advogado`), e a coluna `papel` diz o que cada pessoa faz naquele processo. Os dados de teste usam três papéis: `Responsavel`, `Apoio` e `Revisor` (29 registros). O `Revisor` não existia nas versões anteriores.

Um `Pagamento` pode vir de um processo (honorários) ou de uma negociação (parcelas de um acordo). Por isso as duas chaves estrangeiras são opcionais, e a restrição `ck_pagamento_origem` exige que pelo menos uma delas esteja preenchida. Só que ela usa `OR`, então o banco também aceitaria um pagamento com as duas origens ao mesmo tempo. O que a gente quer é "uma ou outra" (XOR). Os dados de teste respeitam isso, mas o esquema não obriga.

**Generalização e especialização**

Não usamos generalização/especialização. Onde poderia haver subtipos, resolvemos com uma coluna descritiva:

- Sócios, associados, advogados e negociadores ficam todos em `Equipe`, separados pela coluna `funcao`, em vez de uma tabela para cada tipo. Isso tem um custo: `oab` é `NOT NULL`, mas 60 dos 80 integrantes dos dados de teste são negociadores, e para eles usamos números de OAB inventados em sequência. Na vida real, um negociador que não é advogado não teria OAB. Separar advogado e negociador, ou deixar `oab` opcional, é uma melhoria necessária (seção 6).
- Procuração e petição ficam em `Documento`, separadas por `tipo`.
- `Cliente` e `Devedor` não foram unidos em uma entidade "Pessoa". Eles ficam em contextos diferentes (jurídico e recuperação de crédito) e têm atributos próprios, como `situacao_divida` em `Devedor`.

**Atributos derivados e multivalorados**

Não há atributo multivalorado, porque cada um virou uma tabela própria (`Contato`, `Documento`, `Processo_Equipe`, `Pagamento`). Também não guardamos nenhum atributo derivado. Nas versões anteriores, `pendencias` podia ser calculado a partir de honorários e pagamentos e ficava em `Financeiro`. Com a tabela `Pagamento` isso mudou: o banco não guarda quanto de honorário era devido, então a pendência de um processo não dá para calcular (ver 1.4). Nas negociações dá, porque a pendência é `Negociacao.valor_total` menos a soma de `Pagamento.valor_pago` daquela negociação.


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
| `Pagamento` | `id_pagamento` | `id_processo` → `Processo` (RESTRICT, RESTRICT); `id_negociacao` → `Negociacao` (RESTRICT, RESTRICT) | nenhuma |

As chaves primárias simples são `INT UNSIGNED AUTO_INCREMENT`. Quatro FKs aceitam nulo: `Carteira.id_responsavel`, `Negociacao.id_responsavel`, `Pagamento.id_processo` e `Pagamento.id_negociacao`. Em `Pagamento`, o `CHECK` `ck_pagamento_origem` exige que pelo menos uma das duas esteja preenchida. Nas outras tabelas as FKs são obrigatórias (`NOT NULL`). Em cada FK, a primeira ação entre parênteses é a do `ON UPDATE` e a segunda é a do `ON DELETE`.

### 1.4 Processo de Normalização (1FN, 2FN e 3FN)

- **1FN:** nenhuma tabela tem coluna com lista de valores, nem colunas repetidas do tipo telefone1/telefone2. Os advogados de um processo não ficam dentro de `Processo`: o vínculo está em `Processo_Equipe`, com uma linha por advogado. As tentativas de contato com um devedor estão em `Contato`, uma linha por tentativa. Cada arquivo de um processo é uma linha em `Documento`, e cada recebimento é uma linha em `Pagamento`. Todas as tabelas têm chave primária. Mesmo assim, ficaram algumas violações da atomicidade:
  - `Processo.vara_tribunal` junta duas informações (vara e tribunal, como em "2a Vara Civel - TJSP"). Os dados de teste têm 102 valores diferentes em 182 processos, e para filtrar por tribunal (TJSP, TRT-2, TRF-3) só dá para buscar dentro do texto. O certo seria separar em `vara` e `tribunal`.
  - `Equipe.oab` junta a UF com o número ("OAB/SP 100001"). Se fossem duas colunas, daria para filtrar por seccional.
  - O endereço de `Cliente` e `Devedor` é um texto só, para simplificar.
  - A versão da petição está no nome do arquivo (`peticao_inicial_v1.pdf`) e não em uma coluna.
- **2FN:** só `Processo_Equipe` tem chave primária composta (`id_processo`, `id_advogado`). A única coluna que não é chave é `papel`, e ela depende do par inteiro, porque o mesmo advogado pode ser Responsavel num processo e Apoio em outro. Nome, OAB e função do advogado dependeriam só de `id_advogado`, então ficam em `Equipe`. As outras nove tabelas têm chave simples, então não existe dependência parcial.
- **3FN:** os dados descritivos ficam na tabela da entidade a que pertencem, e as outras tabelas só apontam para ela por chave estrangeira. `Processo` guarda `id_cliente`, e não o nome e o CPF do cliente. `Devedor` guarda `id_carteira`, e não o nome da carteira. `Carteira` e `Negociacao` guardam `id_responsavel`, e não o nome e a OAB do responsável. Assim, corrigir o nome de um cliente é um `UPDATE` em uma linha só. `Pagamento` também não guarda nada que dê para calcular: não tem coluna de pendência. Ressalvas:
  - `Equipe.funcao` mistura cargo com gênero ("Socio" e "Socia", "Associado" e "Associada"). São 8 valores para 4 funções, e o melhor seria guardar só o cargo.
  - `Processo_Equipe.papel` e `Equipe.funcao` são texto livre, sem tabela de domínio.
- **Consequência de não ter o valor devido:** como `Pagamento` guarda só o que foi recebido, o banco não sabe quanto de honorário era devido em cada processo. Por isso não dá para calcular pendência nem vencimento de honorários. Nas negociações dá, porque `Negociacao.valor_total` é o valor devido. Se o grupo quiser controlar honorários pendentes, vai precisar criar uma tabela de honorários ou colunas de valor devido e vencimento em `Processo`.
- **Justificativa:** o problema do escritório é ter informações espalhadas e repetidas em planilhas (P1 e P2). Neste modelo, um cliente tem vários processos, um devedor tem vários contatos, um advogado atua em vários processos e uma carteira reúne muitos devedores. Sem normalizar, esses dados seriam copiados várias vezes, e isso causa três anomalias. Na atualização, trocar o telefone de um cliente obrigaria a mudar várias linhas. Na inserção, não daria para cadastrar um advogado que ainda não tem processo. Na exclusão, apagar o último processo de um cliente faria o cadastro dele sumir. A normalização evita essa repetição. Já a garantia de que um processo só existe com cliente cadastrado (RN06) e de que um documento só existe com processo (RN07) vem das chaves estrangeiras `NOT NULL`, ou seja, da integridade referencial (RNF03 e RO08), e não da normalização.

### 1.5 Justificativas Técnicas das Decisões

#### Chaves primárias

Todas as tabelas usam uma chave substituta `id_<entidade>` do tipo `INT UNSIGNED AUTO_INCREMENT`. Não usamos CPF/CNPJ nem OAB como chave porque eles podem ser corrigidos, e em `Devedor` o `cpf_cnpj` pode ser nulo. Uma chave curta que nunca muda também deixa as chaves estrangeiras e os índices menores. Mesmo assim, `Cliente.cpf_cnpj`, `Devedor.cpf_cnpj` e `Equipe.oab` são `UNIQUE`, para impedir cadastro duplicado. A exceção é `Processo_Equipe`, com chave composta (`id_processo`, `id_advogado`), que não deixa registrar o mesmo advogado duas vezes no mesmo processo.

#### Relacionamentos e chaves estrangeiras

O modelo tem duas frentes ligadas por `Pagamento`. A frente jurídica é `Cliente` → `Processo` → `Documento`. A de recuperação de crédito é `Carteira` → `Devedor` → `Contato` e `Negociacao`. A relação entre advogados e processos é N:M, porque um processo pode ter responsável e apoio e um advogado atua em vários processos. Por isso ela virou a tabela associativa `Processo_Equipe`, com a coluna `papel`.

A ação de exclusão de cada FK foi escolhida pelo que o vínculo significa:

- `RESTRICT` em `Processo`→`Cliente`, `Documento`→`Processo`, `Devedor`→`Carteira`, `Contato`→`Devedor`, `Negociacao`→`Devedor` e em `Pagamento`. Esses registros são o histórico do escritório (RO08 e RO09).
- `CASCADE` em `Processo_Equipe.id_processo`, porque o vínculo não faz sentido sem o processo.
- `RESTRICT` em `Processo_Equipe.id_advogado`, porque um advogado ligado a processos não pode ser removido (RN14).
- `SET NULL` em `Carteira.id_responsavel` e `Negociacao.id_responsavel`. Se alguém sai da equipe, a carteira e a negociação continuam existindo e só ficam sem responsável até alguém ser designado (RN15).
- `ON UPDATE CASCADE` na maioria das chaves. Em `Pagamento` é `RESTRICT`, porque o MySQL não aceita `CHECK` em coluna que tenha FK com `CASCADE` ou `SET NULL` (erro 3823), e o `ck_pagamento_origem` usa as duas colunas.

#### Restrições de integridade e regras de negócio

A coluna "Cobertura" mostra o que o esquema realmente garante. **Estrutural** quer dizer que o banco impede a violação. **Parcial** quer dizer que o banco ajuda, mas não impede tudo. **Não impede** quer dizer que só uma consulta de auditoria consegue apontar o problema.

| Restrição | Regra | Cobertura | Observação |
| :-- | :-- | :-- | :-- |
| `Processo.id_cliente` NOT NULL + FK | RN06 | Estrutural | Processo só existe com cliente cadastrado |
| `Documento.id_processo` NOT NULL + FK | RN07 | Estrutural | Petição e outros documentos sempre ligados a um processo |
| `Devedor.id_carteira` NOT NULL + FK | RN02 | Parcial | Garante que a carteira existe, mas não verifica se ela está vigente |
| `Negociacao.id_devedor` NOT NULL + FK | RN03 | Parcial | Garante que o devedor existe, mas não verifica se a dívida está `Ativa` |
| `Equipe.oab` NOT NULL + UNIQUE | RN14, RO07 | Parcial | Identifica a habilitação, mas obriga a inventar OAB para negociadores. Também não impede que alguém sem habilitação seja responsável por um processo |
| `Processo_Equipe.papel` | RN14, RN15 | Parcial | Separa os papéis, mas não garante exatamente um `Responsavel` por processo (nos dados atuais tem um por processo) |
| `Carteira.id_responsavel` e `Negociacao.id_responsavel` | RN15 | Parcial | São opcionais. A auditoria A01 mostra as negociações sem responsável |
| `ck_carteira_datas` | RN01 | Parcial | Deixa o período do contrato coerente, mas não impede carteira sem contrato vigente |
| `ck_negociacao_datas` e `ck_negociacao_valor` | RNF03 | Estrutural | Data final não pode ser antes da inicial e o valor não pode ser negativo |
| `ck_pagamento_origem` | RN09 | Parcial | Todo pagamento tem processo ou negociação de origem, mas aceita as duas ao mesmo tempo (usa `OR`). Não há ligação direta com o cliente |
| `ck_pagamento_valor` | RNF03 | Parcial | Valor não negativo, mas aceita `valor_pago = 0` |
| ENUMs de `status`, `situacao_divida`, `resultado` e `forma_pagamento` | RN05 | Estrutural | Valores padronizados permitem relatórios por situação |
| `Contato.data` como `DATETIME` | RO05 | Parcial | Permite auditar o horário dos contatos, mas o script não tem consulta de auditoria de horário |
| `UNIQUE` em `cpf_cnpj` | RNF03 | Estrutural | Impede dois cadastros com o mesmo CPF/CNPJ em `Cliente` e em `Devedor` |
| Índices em todas as FKs | RNF06 | Estrutural | Deixa mais rápidos os JOINs e as consultas por carteira, processo e devedor |

**Nada impede que a soma dos pagamentos de uma negociação passe de `valor_total`.** Os dados atuais respeitam esse limite, mas a regra não está no esquema.

#### Consultas de auditoria e o que elas verificam

As três consultas de auditoria do script cobrem só RN15, RN04 e RN09. **Nenhuma cobre RN01, RN02 ou RN03.** Essas três regras dependem do estado de outras tabelas e hoje não são garantidas nem auditadas.

| Consulta | Regra | Resultado nos dados atuais | Leitura |
| :-- | :-- | :-- | :-- |
| A01 | RN15 | 5 negociações sem responsável | Violação real da regra nos dados. |
| A02 | RN04 | 35 pagamentos em 21 negociações `Cancelada`, somando R$ 35.977,35 | Pode ser normal (pagamentos parciais antes do cancelamento). O esquema não registra quando o acordo foi formalizado, então a consulta é só um indício. |
| A03 | RN09 | 46 processos com pagamento e sem documento do tipo "Contrato de Honorarios" | A consulta mede outra coisa: a RN09 pede que o honorário esteja ligado a processo, cliente ou negociação, e não fala em contrato. Além disso, `Pagamento.id_processo` não diferencia honorário de custas. |

O script diz que, se a consulta não retornar linhas, a regra está ok. Nenhuma das três ficou sem linhas. **Neste relatório, esses resultados são tratados como inconsistências conhecidas dos dados de teste, e não como regras cumpridas.** O script e o README não dizem se elas foram colocadas de propósito, então o grupo precisa decidir se corrige os dados ou se mantém os casos como exemplos de auditoria, e registrar essa decisão.

#### Decisões arquiteturais

Os dois ramos do escritório ficam no mesmo banco, o que permite relatórios cruzados, como pagamentos por carteira e arrecadação por mês. O vínculo entre advogado e processo saiu de `Processo` e foi para uma tabela associativa, para aceitar mais de um advogado por processo. Os estados (`status`, `situacao_divida`, `resultado`) são `ENUM` porque são poucos e fixos. A desvantagem é que, para incluir um valor novo, é preciso fazer `ALTER TABLE`. Os valores de `ENUM` e os dados de exemplo foram escritos sem acento, para evitar problema de codificação. O script começa com `DROP DATABASE IF EXISTS`, então pode ser rodado do zero quantas vezes precisar. Os `CHECK` só funcionam a partir do MySQL 8.0.16 (ver seção 3).

#### Regras que o esquema atual não cobre

- **Sem nenhuma estrutura:** RN08 (audiências), RN10 (limite de desconto), RN11 (parcelamento), RN12 (comissão e repasse), RN13 (custas separadas dos honorários) e RO09 (histórico de operações). Os requisitos RF11, RF12 e RF14 têm cobertura parcial ou nenhuma (seção 1.1).
- **Só por consulta, e ainda sem consulta:** RN01, RN02 e RN03.
- **Cobertura parcial:** RN04, RN09 e RN14 (tabela acima).

O próximo passo natural seria criar `Audiencia`, `Movimentacao`, `Despesa` e uma tabela de log, além de colunas de parcelas e desconto em `Negociacao`, colunas de valor devido para honorários, um `CHECK` XOR em `Pagamento` e `numero_processo` e `data_abertura` em `Processo` (o modelo atual não tem o número CNJ do processo).

### 1.6 Proposta de Arquitetura Analítica para BI e IA

**Informações estratégicas**

A gestão do escritório precisa ver num lugar só o que hoje está em planilhas separadas (P1): quanto cada carteira já recuperou, quais negociadores fecham mais acordos, quais processos estão perto do prazo (P2) e quanto o escritório arrecada por período. Os dados para isso estão em `Carteira`, `Devedor`, `Contato`, `Negociacao`, `Processo` e `Pagamento`.

**Indicadores implementados no script**

| KPI | Fórmula | Período | Consulta | Observação |
| :-- | :-- | :-- | :-- | :-- |
| KPI01. Valor recuperado por carteira | soma de `Pagamento.valor_pago` das negociações de cada carteira, com número de devedores e de negociações | acumulado | G01 | Inclui pagamentos de negociações canceladas. |
| KPI02. Arrecadação por mês | soma de `Pagamento.valor_pago` agrupada por `AAAA-MM`, com a quantidade de pagamentos | mensal | G03 | Soma os honorários (receita do escritório) com os valores de acordos, que em boa parte são do credor (RN12). Nos dados atuais são cerca de R$ 1,23 milhão contra R$ 0,81 milhão. Por isso a G03 mede o total recebido, e não a receita do escritório. |

Para o problema P2, a consulta G02 lista os processos `Ativo` ou `Suspenso` com prazo nos próximos 30 dias a partir de 05/11/2026.

**Indicadores propostos, ainda sem consulta no script**

| KPI proposto | Fórmula | Situação |
| :-- | :-- | :-- |
| Taxa de conversão em acordo | contatos com `resultado = 'Acordo fechado'` ÷ total de contatos × 100, por carteira e mês | Os dados existem em `Contato`. Falta escrever a consulta. |
| Percentual recuperado por negociação | soma de `Pagamento.valor_pago` ÷ `Negociacao.valor_total` × 100 | Os dados existem. Falta escrever a consulta. |
| Processos por responsável e status | contagem de `Processo` por advogado com `papel = 'Responsavel'` e por `status` | Os dados existem. Falta escrever a consulta. |
| Honorários pendentes e vencidos | valor devido menos valor pago, por vencimento | **Não dá com o esquema atual**: o banco não guarda valor devido nem vencimento de honorários (ver 1.4). |

**Potencial dos dados para BI**

Os indicadores implementados saem de JOINs simples entre tabelas ligadas por FK. As dimensões naturais são `Carteira`, `Equipe`, `Cliente`, `Processo.status`, `Devedor.situacao_divida` e `Pagamento.forma_pagamento`. Os fatos vêm de `Pagamento` (valores e datas), `Contato` (data e resultado) e `Negociacao` (valor e datas). Como `Contato.data` guarda a hora, também daria para analisar em que horário os contatos são feitos (RO05).

**Aplicações analíticas e de IA**

Esta parte é uma proposta de evolução, e não algo que o banco atual permita treinar. Os dados são sintéticos, feitos só para testar o esquema e as consultas, então qualquer modelo treinado neles apenas repetiria a regra usada para gerar os dados. Com dados reais de histórico, daria para fazer três coisas:

- **Estimar a probabilidade de acordo de um devedor.** A variável-alvo seria `Contato.resultado = 'Acordo fechado'` (ou o fechamento de uma `Negociacao`), e as variáveis de entrada seriam o meio de contato, o número de tentativas anteriores e a carteira.
- **Priorizar a fila de cobrança** dos negociadores, com base nessa estimativa e no valor da dívida.
- **Prever atraso nos parcelamentos.** A variável-alvo seria um pagamento fora do prazo. Para isso seria preciso guardar a data prevista de cada parcela, que o esquema atual não tem.

Qualquer uso com dados reais exigiria cuidado com a LGPD (RO01).

**Tabela de rastreabilidade**

| Problema ou KPI | Tabelas envolvidas | Consulta no script |
| :-- | :-- | :-- |
| P1. Informações descentralizadas | `Carteira`, `Devedor`, `Negociacao`, `Pagamento` | G01 |
| P2. Dificuldade de localização e atualização (prazos e situação dos processos) | `Processo`, `Processo_Equipe`, `Equipe`, `Cliente` | G02 |
| KPI01. Valor recuperado por carteira | `Carteira`, `Devedor`, `Negociacao`, `Pagamento` | G01 |
| KPI02. Arrecadação por mês | `Pagamento` | G03 |

| Regra verificada | Consulta de auditoria |
| :-- | :-- |
| RN15 (responsável definido) | A01 |
| RN04 (pagamento com acordo) | A02 |
| RN09 (pagamento com origem identificada) | A03 |

---
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

- **SGBD:** MySQL **8.0.16 ou superior**. Em versões anteriores, os `CHECK` são lidos, mas ignorados, e as restrições `ck_*` deixam de valer.
- **Arquivo do script:** anexado no repositório.
- **Execução:** o script começa com `DROP DATABASE IF EXISTS escritorio_juridico` e recria tudo do zero.

O script contém, nesta ordem lógica: criação do banco de dados, criação das tabelas e constraints, inserções da massa de dados, consultas `SELECT` com `JOIN` (J01 a J03), `UPDATE` (U01 a U03), `DELETE` (D01 e D02), consultas gerenciais (G01 a G03) e consultas de auditoria (A01 a A03). Os comentários de seção no script começam em "5.", porque as seções 1 a 4 correspondem ao banco, às tabelas e às inserções.

Cada consulta gerencial indica a pergunta respondida e o problema/KPI atendido. Cada consulta de auditoria indica a regra de negócio (RNxx) verificada.

**Limitações conhecidas das consultas** (não corrigidas no script desta entrega):

- **J03** usa `JOIN` interno com `Pagamento` e por isso esconde as 78 negociações sem pagamento.
- **G01** não usa `COALESCE` no `SUM`, então carteiras sem pagamento apareceriam com `NULL` em vez de zero.
- **G02** fala em processos "em andamento", mas filtra `Ativo` e `Suspenso`.
- **G03** soma honorários e valores de acordos e inclui pagamentos de negociações canceladas.
- **U02** altera o telefone do cliente 19, que estava `NULL`. Na prática é um preenchimento, e não uma atualização de valor existente.
- **D01 e D02** apagam um "devedor duplicado" inserido com CPF diferente (`000.999.999-99`). Um duplicado real seria barrado pelo `UNIQUE` em `cpf_cnpj`, então o exemplo mostra apenas a ordem de exclusão (filho antes do pai).

---

## 4. Massa de Dados

- **Arquivo:** a massa de dados se encontra no script.
- **Natureza dos dados:** a massa é fictícia, sem dados pessoais ou financeiros reais de clientes ou envolvidos. Os nomes seguem o padrão "Exemplo", os CPF/CNPJ são numerações fictícias e os e-mails usam o domínio `.test`.
- **Origem:** a massa é sintética e foi produzida em lote (os inserts estão agrupados por faixas de id, como "Processo (ids 3 a 182)" no script). A ferramenta usada para gerá-la não está registrada neste repositório.
- **Volume total:** cerca de 5.428 linhas.

| Tabela | Linhas |
| :-- | :-- |
| `Equipe` | 80 |
| `Carteira` | 4 |
| `Processo` | 182 |
| `Devedor` | 500 |
| `Contato` | 1.576 |
| `Documento` | 803 |
| `Pagamento` | 1.414 |

As demais tabelas (`Cliente`, `Processo_Equipe` e `Negociacao`) completam o total.

- **Justificativa do volume:** o escritório tem mais de 80 funcionários, associados e negociadores, e a tabela `Equipe` tem 80 registros, na mesma ordem de grandeza. As quatro carteiras são as reais (Neon, Itapeva, CredAtivos e Kroton). Os demais volumes, como 500 devedores e 182 processos, não vêm de números informados pela organização. O levantamento não trouxe contagem real de processos ou devedores. Eles foram escolhidos para que as consultas gerenciais tivessem o que agregar e para que cada devedor tivesse contatos, negociações e pagamentos em quantidades diferentes.
- **Variedade dos registros:** a massa contempla processos nos quatro status (`Ativo`, `Suspenso`, `Arquivado`, `Encerrado`) e de várias áreas (civil, trabalhista, tributário, consumidor, família, empresarial, previdenciário e execução). Contempla devedores nos três estados (`Ativa`, `Negociada`, `Quitada`), contatos com os três resultados e negociações `Concluida`, `Cancelada` e `Em andamento`. Os pagamentos usam as seis formas previstas, cobrem de 2025 a nov/2026 e incluem honorários, parcelas de acordos e pagamentos à vista. Há negociações sem responsável, negociações canceladas com pagamento e processos com pagamento e sem contrato de honorários, conforme registrado nas consultas A01 a A03 (seção 1.5).
- **Fragilidade técnica:** as chaves estrangeiras da massa são inseridas por número fixo (por exemplo, `id_cliente = 42`). Se um `INSERT` falhar, os ids seguintes se deslocam sem aviso. Por isso o script deve sempre ser executado inteiro, do zero.
- **Pontos positivos verificados:** não há registros órfãos em nenhuma FK. Toda negociação `Concluida` está paga exatamente no valor total. Nenhum pagamento ultrapassa o total da negociação, antecede o início dela ou está no futuro. Todo processo tem exatamente um `Responsavel`.

---

## 5.1. Registro dos usos

### Uso 1 — Organização das informações no arquivo Markdown

**Ferramenta e etapa:** ChatGPT — organização da documentação da Entrega 1 em Markdown.

**Motivação:** Melhorar a estrutura do README e distribuir as informações já levantadas pelo grupo nas seções correspondentes do trabalho.

**Prompt utilizado (síntese):**
> Organize as informações que já estão no arquivo Markdown conforme a estrutura solicitada para a entrega, mantendo o conteúdo existente e indicando os pontos que ainda precisam ser preenchidos.

**Resposta recebida:** Sugestões de organização das seções, títulos e subtítulos, além da indicação de campos que ainda precisavam de informações do grupo.

**Fontes consultadas e verificadas:** Foram utilizados os materiais fornecidos pelo próprio grupo, como o README anterior e o roteiro da atividade. Não foi necessário utilizar fontes externas para essa organização.

**Trechos rejeitados ou corrigidos:** O grupo precisou conferir a distribuição das informações e manter como pendentes os dados que ainda não haviam sido levantados. Informações ausentes não foram tratadas como se já estivessem confirmadas.

**Justificativa da escolha final:** A estrutura sugerida foi aproveitada como apoio de formatação, mas o grupo permaneceu responsável por revisar o texto e completar o conteúdo.

**Reflexão crítica:** A ferramenta ajuda a organizar documentos extensos, mas não conhece automaticamente todos os detalhes do projeto. Por isso, foi necessário conferir se cada informação estava no lugar correto e se não havia conteúdo inventado.

---

### Uso 2 — Esclarecimento de conceitos relacionados ao DER

**Ferramenta e etapa:** ChatGPT — apoio ao entendimento dos conceitos de modelagem conceitual e do Diagrama Entidade-Relacionamento (DER).

**Motivação:** Esclarecer dúvidas sobre entidades, atributos, relacionamentos e cardinalidades para que os integrantes pudessem compreender melhor os elementos utilizados no trabalho.

**Prompt utilizado (síntese):**
> Explique os conceitos de DER, entidades, atributos, relacionamentos e cardinalidades de uma forma simples, com exemplos.

**Resposta recebida:** Explicações didáticas dos conceitos e exemplos para facilitar a compreensão da notação e da função de cada elemento do DER.

**Fontes consultadas e verificadas:** A explicação foi usada como apoio ao estudo. A conferência do modelo e das decisões de modelagem foi feita pelo grupo com base no enunciado, no levantamento realizado e no material da disciplina.

**Trechos rejeitados ou corrigidos:** As explicações foram consideradas apenas material de apoio. O grupo não adotou automaticamente exemplos genéricos como regras do sistema da organização.

**Justificativa da escolha final:** O apoio foi útil para esclarecer dúvidas, mas a definição do conteúdo do DER — incluindo entidades, atributos, relacionamentos e cardinalidades — ficou a cargo dos integrantes. O ChatGPT não elaborou o DER final.

**Reflexão crítica:** Exemplos genéricos ajudam a entender a teoria, mas não substituem a análise das necessidades reais do sistema. É necessário avaliar cada relacionamento de acordo com as regras identificadas pelo grupo.

---

### Uso 3 — Organização visual do dicionário de dados em HTML

**Ferramenta e etapa:** ChatGPT — ajustes de organização e apresentação do arquivo HTML do dicionário de dados.

**Motivação:** Melhorar a disposição das informações e facilitar a leitura do dicionário, sem transferir para a ferramenta a definição dos dados do projeto.

**Prompt utilizado (síntese):**
> Ajude a organizar a estrutura e a apresentação deste arquivo HTML do dicionário de dados, mantendo as informações fornecidas.

**Resposta recebida:** Sugestões de estruturação e formatação do HTML para apresentar o conteúdo de maneira mais organizada.

**Fontes consultadas e verificadas:** O conteúdo utilizado foi o material produzido pelo grupo. A conferência das informações do dicionário ficou sob responsabilidade dos integrantes.

**Trechos rejeitados ou corrigidos:** Foram mantidas apenas as sugestões compatíveis com o conteúdo e com a organização desejada pelo grupo. A ferramenta não foi considerada fonte para definir entidades, atributos ou regras do banco.

**Justificativa da escolha final:** As sugestões foram aproveitadas como apoio de apresentação. O grupo continuou responsável pelas informações e pela revisão do arquivo.

**Reflexão crítica:** A IA pode ajudar na formatação, mas uma página visualmente organizada não garante que os dados estejam corretos. O conteúdo precisa ser validado separadamente.

---

### Uso 4 — Reorganização da documentação da Entrega 2

**Ferramenta e etapa:** ChatGPT — reorganização do README conforme a estrutura solicitada para a Entrega 2.

**Motivação:** Comparar a estrutura exigida na nova entrega com a documentação anterior e facilitar a identificação das partes que precisavam ser atualizadas ou acrescentadas.

**Prompt utilizado (síntese):**
> Compare o README existente com o roteiro da Entrega 2 e reorganize o documento para seguir a estrutura solicitada, preservando as informações já registradas e deixando indicados os itens que ainda faltam.

**Resposta recebida:** Uma versão reorganizada do README, com seções correspondentes ao roteiro da Entrega 2 e marcações nos pontos que dependiam de informações ou decisões adicionais do grupo.

**Fontes consultadas e verificadas:** README da Entrega 1 e roteiro/estrutura da Entrega 2 fornecidos pelo grupo. Não foram acrescentadas informações externas como se fossem dados levantados pela equipe.

**Trechos rejeitados ou corrigidos:** Os campos sem informação suficiente foram mantidos como pendentes. O grupo deve completar e revisar essas partes com base no próprio trabalho.

**Justificativa da escolha final:** A reorganização foi aproveitada para facilitar a continuidade da documentação. A ferramenta não definiu o modelo lógico, as chaves, as normalizações ou as decisões técnicas do banco.

**Reflexão crítica:** A IA consegue adaptar a estrutura de um documento a um roteiro, mas não deve preencher lacunas com suposições. A revisão dos requisitos e das decisões técnicas continua sendo responsabilidade do grupo.

---

### Uso 5 — Organização do relatório da entrevista

**Ferramenta e etapa:** ChatGPT — organização do conteúdo do relatório de entrevista em um arquivo Markdown para integrar a documentação do projeto.

**Motivação:** Separar as observações feitas durante a visita das respostas fornecidas pelo entrevistado e organizar os assuntos abordados em seções mais fáceis de consultar.

**Prompt utilizado (síntese):**
> Organize o conteúdo deste relatório de entrevista em Markdown, separando o que foi observado durante a visita das respostas do entrevistado e mantendo as informações do documento original.

**Resposta recebida:** Um texto estruturado com identificação dos participantes, data e local, observações da rotina, respostas da entrevista, informações sobre processos e negociações, indicadores e necessidades de análise.

**Fontes consultadas e verificadas:** O documento `Relatório de entrevista.docx`, fornecido pelo grupo. As informações registradas no Markdown devem ser conferidas com o documento original.

**Trechos rejeitados ou corrigidos:** Não foram inventados números exatos de processos ou devedores, pois o relatório não apresentava esses dados. Também não foi afirmada a realização de uma segunda visita nem a existência de uma fotografia, pois essas informações não constavam no documento recebido.

**Justificativa da escolha final:** A organização em Markdown foi aproveitada para facilitar a leitura e a inclusão do relatório no repositório. O conteúdo factual foi baseado no documento da entrevista, e não em suposições da ferramenta.

**Reflexão crítica:** A IA pode ajudar a resumir e organizar um relatório, mas existe o risco de alterar o sentido de uma resposta ou misturar observações com declarações do entrevistado. Por isso, é importante comparar o resultado com o documento original.

---

### Uso 6 — Correção formal e refatoração do Dicionário de Dados (HTML)

**Ferramenta e etapa:** Gemini — análise dos apontamentos de erro da avaliação e reestruturação técnica do arquivo `dicionario_banco_de_dados.html`.

**Motivação:** Adequar o Dicionário de Dados anterior aos critérios formais de correção solicitados pelo professor na Entrega (foto de erro anexada), corrigindo falhas conceituais de regras de negócio, tratando atributos multivalorados/compostos, ajustando cardinalidades estritamente conforme o DER e incorporando seções técnicas obrigatórias.

**Prompt utilizado (síntese):**
> Preciso que você analise o arquivo do dicionário de banco de dados, analise os erros presentes na foto anexada e me entregue um novo dicionário sem erros. Mandei alguns arquivos como o README, o arquivo SQL, o DER e o modelo lógico para te ajudar na correção. Considere também que as cardinalidades corretas devem seguir rigorosamente o DER.

**Resposta recebida:** Um arquivo HTML inteiramente reformulado (`dicionario_banco_de_dados.html`) contendo:
1. Correção da atribuição de regras de negócio (transferindo a regra de status "Ativo, Arquivado ou Encerrado" de `Vara/Tribunal` para o atributo correto `status` da entidade `Processo`).
2. Tratamento formal de atributos multivalorados e compostos (`Prazos`, `Pagamentos` e `Pendências`).
3. Mapeamento das 10 entidades com definições formais, especificação de relacionamentos e cardinalidades alinhadas ao DER conceitual.
4. Adição de seções de documentação técnica: Convenções do SGBD (MySQL e `utf8mb4_unicode_ci`), Notação Formal com especificação de tipos físicos de dados (`INT UNSIGNED`, `VARCHAR`, `DECIMAL(12,2)`, `DATETIME`, `ENUM`), Chaves e Índices, Fluxo de Dados, Log de Auditoria e Matriz de Permissões/LGPD.

**Fontes consultadas e verificadas:** Apontamento visual da correção (imagem da avaliação), Diagrama Entidade-Relacionamento (`DER.jpeg`), script SQL (`banco-de-dados-atualizado (1).sql`) e a documentação do projeto (`README.md`).

**Trechos rejeitados ou corrigidos:** A primeira versão gerada utilizava cardinalidades derivadas da tabela descritiva do Modelo Lógico. A sugestão foi prontamente ajustada pelo grupo para forçar a aderência estrita às cardinalidades indicadas no DER conceitual do projeto (`DER.jpeg`).

**Justificativa da escolha final:** A refatoração gerada atendeu integralmente aos 6 requisitos faltantes/incorretos sinalizados pelo avaliador, mantendo a consistência entre o modelo conceitual, a implementação SQL e a documentação visual em HTML.

**Reflexão crítica:** Ferramentas de IA são altamente produtivas para correlacionar falhas descritas em relatórios visuais com arquivos de código e documentação. No entanto, exigem mediação direta da equipe para validar a fonte de verdade das cardinalidades e manter a integridade conceitual do banco.

---

## 5.2. Responsabilidade do grupo e limites do uso

O grupo utilizou as ferramentas principalmente para:

- organizar e reestruturar documentos em Markdown;
- esclarecer dúvidas teóricas sobre conceitos de DER;
- refatorar e adequar formalmente o arquivo HTML do dicionário de dados conforme feedbacks de correção;
- organizar o relatório da entrevista sem acrescentar informações não registradas.

As atividades de levantamento e interpretação das necessidades da organização, definição das entidades e atributos, construção do DER, decisões de modelagem e validação do conteúdo permaneceram sob responsabilidade dos integrantes.

As respostas da IA foram tratadas como sugestões e apoio. O grupo revisou e validou os textos e códigos antes da inclusão final no repositório.

**Observação sobre os prompts:** os textos apresentados nesta seção são sínteses representativas dos pedidos feitos durante as conversas, e não transcrições literais completas. Eles foram descritos dessa forma para registrar a finalidade de cada uso sem afirmar que são cópias exatas das mensagens originais.
