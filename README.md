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

Cada entidade do DER virou uma tabela, com chave primária substituta `id_<entidade>` do tipo `INT UNSIGNED AUTO_INCREMENT`. O modelo ficou com 10 tabelas, divididas em três grupos.

| Grupo | Tabelas |
| :-- | :-- |
| Jurídico | `Cliente`, `Processo`, `Documento` |
| Recuperação de crédito | `Carteira`, `Devedor`, `Contato`, `Negociacao` |
| Transversais | `Equipe`, `Financeiro`, e a tabela associativa `Processo_Equipe` |

**Atributos**

Cada atributo simples virou uma coluna. A escolha do tipo seguiu o que o dado representa:

- Textos livres, como nomes, endereços e caminhos de arquivo, usam `VARCHAR`.
- Valores monetários (`honorarios`, `pagamentos`, `pendencias`, `valor_total`) usam `DECIMAL(12,2)`, para evitar erro de arredondamento.
- Datas usam `DATE`. Em `Contato.data` foi usado `DATETIME`, porque o horário do contato precisa ser registrado (RO05).
- Atributos com poucos valores fixos viraram `ENUM`: `Processo.status`, `Devedor.situacao_divida`, `Negociacao.status` e `Contato.resultado`.

Os atributos obrigatórios no levantamento ficaram `NOT NULL`. Os opcionais, como telefone, e-mail e `data_fim` de contrato em aberto, aceitam nulo. CPF/CNPJ e OAB viraram colunas únicas, para impedir cadastro em duplicidade. `Devedor.cpf_cnpj` é único, mas aceita nulo, porque nem todo devedor tem o documento levantado.

**Relacionamentos e cardinalidades**

Os relacionamentos 1:N foram implementados colocando a chave estrangeira no lado N. O relacionamento N:M virou uma tabela associativa.

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
| Processo e Financeiro | 1:N, opcional | `Financeiro.id_processo`, aceita nulo |
| Negociacao e Financeiro | 1:N, opcional | `Financeiro.id_negociacao`, aceita nulo |

A relação entre `Processo` e `Equipe` é N:M porque um processo pode ter um advogado responsável e outros de apoio, e um advogado atua em vários processos. Na tabela `Processo_Equipe`, a chave primária é composta por (`id_processo`, `id_advogado`) e a coluna `papel` diferencia Responsavel e Apoio.

`Financeiro` pode se originar de um processo (honorários) ou de uma negociação (pagamentos de um acordo). Por isso as duas chaves estrangeiras são opcionais, e a restrição `ck_financeiro_origem` exige que ao menos uma esteja preenchida.

**Generalização e especialização**

Não foi usada generalização/especialização. As variações que poderiam virar subtipos foram resolvidas com uma coluna descritiva:

- Sócios, associados e negociadores ficam todos em `Equipe`, diferenciados por `funcao`, em vez de uma tabela para cada tipo.
- Procuração e petição ficam em `Documento`, diferenciadas por `tipo`.
- `Cliente` e `Devedor` não foram unidos em uma entidade "Pessoa". Eles vivem em contextos diferentes (jurídico e recuperação de crédito) e têm atributos próprios, como `situacao_divida` em `Devedor`.

**Atributos derivados e multivalorados**

Não há atributo multivalorado no modelo, pois cada um foi transformado em tabela própria (`Contato`, `Documento`, `Processo_Equipe`). `Financeiro.pendencias` é derivável de honorários e pagamentos, e foi mantido como coluna porque o modelo ainda não tem tabela de pagamentos (ver 1.4).


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

### 1.4 Processo de Normalização (1FN, 2FN e 3FN)

- **1FN:** Nenhuma tabela tem coluna com lista de valores nem colunas repetidas do tipo telefone1/telefone2. Os advogados de um processo não ficam dentro de `Processo`: o vínculo está em `Processo_Equipe`, com uma linha por advogado. As tentativas de contato com um devedor não ficam em `Devedor`, e sim em `Contato`, com uma linha por tentativa (meio, data e resultado). Os arquivos de um processo também têm uma linha cada em `Documento`. Todas as tabelas têm chave primária e as colunas guardam valores atômicos. O endereço foi mantido como um único texto por simplificação.
- **2FN:** Só `Processo_Equipe` tem chave primária composta (`id_processo`, `id_advogado`). A única coluna que não é chave é `papel`, e ela depende do par inteiro: o mesmo advogado pode ser Responsavel num processo e Apoio em outro. Nome, OAB e função do advogado, que dependeriam só de `id_advogado`, ficam em `Equipe`. Os dados do processo ficam em `Processo`. As outras nove tabelas têm chave simples, então não existe dependência parcial.
- **3FN:** os dados descritivos ficam na tabela da entidade a que pertencem e as demais apontam por chave estrangeira. `Processo` guarda `id_cliente`, e não nome e CPF do cliente. `Devedor` guarda `id_carteira`, e não o nome da carteira nem o tipo de contrato. `Carteira` e `Negociacao` guardam `id_responsavel`, e não nome e OAB do responsável. Assim, corrigir o nome de um cliente é um único UPDATE em uma linha. Há uma exceção conhecida em `Financeiro`: `pendencias` poderia ser calculada como `honorarios - pagamentos`. A coluna foi mantida porque o modelo ainda não tem uma tabela `Pagamento`. Quando ela existir, pagamentos e pendências passam a ser calculados a partir dela.
- **Justificativa:** o problema do escritório é ter informações espalhadas e repetidas em planilhas (P1 e P2). Neste modelo, um cliente tem vários processos, um devedor tem vários contatos, um advogado atua em vários processos e uma carteira reúne muitos devedores. Sem normalizar, esses dados seriam copiados várias vezes, o que causa três anomalias. Na atualização, mudar o telefone de um cliente exigiria alterar várias linhas. Na inserção, não seria possível cadastrar um advogado que ainda não tem processo. Na exclusão, apagar o último processo de um cliente faria o cadastro dele sumir. A normalização também sustenta as regras RN06 e RN07 (processo e petição sempre ligados a cliente e processo cadastrados) e a integridade referencial (RNF03 e RO08).]

### 1.5 Justificativas Técnicas das Decisões

#### Chaves primárias

Todas as tabelas usam uma chave substituta `id_<entidade>` do tipo `INT UNSIGNED AUTO_INCREMENT`. CPF/CNPJ e OAB não foram usados como chave porque podem ser corrigidos, e em `Devedor` o `cpf_cnpj` pode ser nulo. Uma chave curta e imutável também deixa as chaves estrangeiras e os índices menores. Mesmo assim, `Cliente.cpf_cnpj`, `Devedor.cpf_cnpj` e `Equipe.oab` são `UNIQUE`, para impedir cadastro em duplicidade. A exceção é `Processo_Equipe`, que tem chave composta (`id_processo`, `id_advogado`) e por isso não permite registrar o mesmo advogado duas vezes no mesmo processo.

#### Relacionamentos e chaves estrangeiras

O modelo tem duas frentes ligadas por `Financeiro`. A frente jurídica é `Cliente` → `Processo` → `Documento`. A frente de recuperação de crédito é `Carteira` → `Devedor` → `Contato` e `Negociacao`. A relação entre advogados e processos é N:M, porque um processo pode ter responsável e apoio e um advogado atua em vários processos. Por isso ela virou a tabela associativa `Processo_Equipe`, com a coluna `papel`.

A ação em caso de exclusão foi escolhida pelo que cada vínculo significa:

- `RESTRICT` em `Processo`→`Cliente`, `Documento`→`Processo`, `Devedor`→`Carteira`, `Contato`→`Devedor`, `Negociacao`→`Devedor` e em `Financeiro`. Esses registros são histórico do escritório, e não se pode apagar o pai e deixar os filhos órfãos ou perder o rastro (RO08 e RO09).
- `CASCADE` em `Processo_Equipe.id_processo`. O vínculo não faz sentido sem o processo.
- `RESTRICT` em `Processo_Equipe.id_advogado`. Um advogado vinculado a processos não pode ser removido (RN14).
- `SET NULL` em `Carteira.id_responsavel` e `Negociacao.id_responsavel`. Se alguém sai da equipe, a carteira e a negociação continuam existindo, só ficam sem responsável até serem reatribuídas (RN15).
- `ON UPDATE CASCADE` na maioria das chaves. Em `Financeiro` é `RESTRICT`, porque o MySQL não aceita `CHECK` sobre coluna que tenha FK com `CASCADE` ou `SET NULL` (erro 3823), e `ck_financeiro_origem` usa as duas colunas.

#### Restrições de integridade e regras de negócio

| Restrição | Regra atendida | Observação |
| :-- | :-- | :-- |
| `Processo.id_cliente` NOT NULL + FK | RN06 | Processo só existe com cliente cadastrado |
| `Documento.id_processo` NOT NULL + FK | RN07 | Petição e demais documentos sempre vinculados a um processo |
| `Devedor.id_carteira` NOT NULL + FK | RN02 | Garante carteira cadastrada. Não verifica se a carteira está vigente |
| `Negociacao.id_devedor` NOT NULL + FK | RN03 | Garante devedor cadastrado. Não verifica se a dívida está `Ativa` |
| `Equipe.oab` NOT NULL + UNIQUE | RN14, RO07 | Responsável com habilitação identificada |
| `Processo_Equipe.papel` | RN14, RN15 | Distingue responsável e apoio |
| `Carteira.id_responsavel` e `Negociacao.id_responsavel` | RN15 | Responsável por atividade, opcional |
| `ck_carteira_datas` | RN01 | Período do contrato coerente. Não impede carteira sem contrato vigente |
| `ck_negociacao_datas` e `ck_negociacao_valor` | RNF03 | Data final não anterior à inicial e valor não negativo |
| `ck_financeiro_origem` | RN09 | Todo lançamento tem processo ou negociação de origem |
| `ck_financeiro_valores` | RNF03 | Honorários, pagamentos e pendências não negativos |
| ENUMs de `status` e `situacao_divida` | RN05 | Valores padronizados permitem relatórios por situação |
| `Contato.data` como `DATETIME` | RO05 | Permite auditar o horário dos contatos |
| `UNIQUE` em `cpf_cnpj` | RNF03 | Evita cadastro duplicado de cliente e de devedor |
| Índices em todas as FKs | RNF06 | Acelera JOINs e consultas por carteira, processo e devedor |

#### Decisões arquiteturais

Os dois ramos do escritório ficam no mesmo banco, o que permite relatórios cruzados (RF16), por exemplo honorários por cliente e valores recuperados por carteira. O vínculo advogado-processo saiu de `Processo` e foi para uma tabela associativa, para suportar mais de um advogado por processo. Os estados (`status`, `situacao_divida`, `resultado`) são `ENUM` por serem poucos e fixos. A desvantagem é que incluir um valor novo exige `ALTER TABLE`. Valores de `ENUM` e dados de exemplo foram escritos sem acento para evitar problemas de codificação. O script começa com `DROP DATABASE IF EXISTS` e pode ser executado do zero quantas vezes forem necessárias.

#### Regras que o esquema atual não cobre

O esquema não garante integralmente RN01, RN02 e RN03, que dependem do estado de outras tabelas. Essas regras são verificadas pelas consultas de auditoria. As regras RN04, RN08, RN10, RN11, RN12 e RN13 e o histórico de operações (RO09) não têm tabela correspondente. Para elas, a evolução natural seria criar `Pagamento`, `Audiencia`, `Despesa` e uma tabela de log, além de colunas de parcelas e desconto em `Negociacao`.

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
| P1. Informações descentralizadas | `Carteira`, `Devedor`, `Negociacao`, `Contato`, `Financeiro` | G01 |
| P2. Dificuldade de localização e atualização | `Processo`, `Processo_Equipe`, `Equipe`, `Cliente`, `Financeiro` | G04 e G05 |
| KPI 1. Dívida por carteira e situação | `Carteira`, `Devedor`, `Negociacao` | G01 |
| KPI 2. Taxa de conversão em acordo | `Carteira`, `Devedor`, `Contato` | G02 |
| KPI 3. Percentual recuperado | `Carteira`, `Devedor`, `Negociacao`, `Financeiro` | G03 |
| KPI 4. Processos por responsável e status | `Processo`, `Processo_Equipe`, `Equipe` | G04 |
| KPI 5. Honorários pendentes a vencer | `Cliente`, `Processo`, `Financeiro` | G05 |

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

Durante o desenvolvimento do trabalho, o grupo utilizou o ChatGPT como ferramenta de apoio em algumas etapas de organização e esclarecimento de dúvidas. As decisões sobre o conteúdo do projeto, o levantamento das informações, a definição das entidades e dos relacionamentos e a elaboração do modelo DER foram realizadas e revisadas pelos integrantes do grupo.

A ferramenta não foi utilizada para substituir o trabalho do grupo, mas como apoio pontual para estruturar textos, esclarecer conceitos e melhorar a apresentação de alguns materiais.

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

## 5.2. Responsabilidade do grupo e limites do uso

O grupo utilizou a ferramenta principalmente para:

- organizar e reestruturar documentos em Markdown;
- esclarecer dúvidas teóricas sobre conceitos de DER;
- melhorar a apresentação do arquivo HTML do dicionário de dados;
- organizar o relatório da entrevista sem acrescentar informações não registradas.

As atividades de levantamento e interpretação das necessidades da organização, definição das entidades e atributos, construção do DER, decisões de modelagem e validação do conteúdo permaneceram sob responsabilidade dos integrantes.

As respostas da IA foram tratadas como sugestões e apoio. O grupo deve conferir os textos e exemplos antes de incluí-los na versão final do repositório.

**Observação sobre os prompts:** os textos apresentados nesta seção são sínteses representativas dos pedidos feitos durante as conversas, e não transcrições literais completas. Eles foram descritos dessa forma para registrar a finalidade de cada uso sem afirmar que são cópias exatas das mensagens originais.
