# Modelagem_Banco_de_Dados
Repositório para a entrega das atividades da matéria de Modelagem de Banco de Dados do segundo semestre da faculdade

# Integrantes
* Renan Fernandes Dantas
* Mateus Augusto Santos Fernandes
* Guilherme Andrade Janas

# Entrega 1 — Modelo Conceitual

## 1. Caracterização da Organização

* **Nome e natureza da organização:**
  Escritório Jurídico com fins lucrativos, atuante na prestação de serviços jurídicos e também na recuperação de crédito para empresas parceiras.

* **Contexto e porte:**
  A organização possui mais de 80 funcionários, associados e negociadores envolvidos nas atividades administrativas, jurídicas e de recuperação de crédito. Entre suas atividades estão o gerenciamento de clientes e processos judiciais, acompanhamento de prazos, elaboração de documentos jurídicos, negociação de dívidas e registro de pagamentos.

  Na área de recuperação de crédito, são trabalhadas diferentes carteiras de clientes/parceiros, incluindo **Neon, Itapeva, CredAtivos e Kroton**.

* **Problemas e necessidades identificados:**
  Foi identificada uma falta de integração entre o controle de processos jurídicos, clientes e informações financeiras. Atualmente, parte dessas informações é administrada por meio de planilhas e documentos separados, dificultando a centralização dos dados e o acompanhamento das atividades.

  Essa fragmentação pode dificultar o controle de processos, documentos, pagamentos, negociações, prazos e informações relacionadas aos clientes e devedores.

* **Justificativa da escolha:**
  O escritório foi escolhido por apresentar uma quantidade significativa de processos e informações que precisam ser administradas. A existência de diferentes áreas, como a jurídica, administrativa, financeira e de recuperação de crédito, torna a organização um caso adequado para a modelagem de um sistema de gerenciamento de informações.

  A variedade de processos também permite identificar diferentes entidades, atributos, relacionamentos e regras de negócio, possibilitando a construção de um modelo conceitual que possa ser expandido nas próximas etapas do projeto.

* **Evidências da organização:**
  Esta seção deverá ser complementada pelo grupo com evidências obtidas durante a pesquisa de campo, como:

  * Endereço: R. Serra de Botucatu, 660 - 11º Andar - Tatuapé, São Paulo - SP, 03317-000
  * Telefone: (11) 3939-0844
  * Site: https://www.araujoeaugusto.com.br/
  * Identificação do responsável que forneceu as informações: +55 11 94367-2968

---

## 2. Processos de Negócio

### Principais processos mapeados

A partir do levantamento realizado, foram identificados quatro grupos principais de processos.

### 2.1 Processos Administrativos

* Cadastro de clientes e gerenciamento de carteiras;
* Gestão da equipe e atribuição de responsabilidades;
* Controle de documentos e contratos.

### 2.2 Processos Jurídicos

* Abertura de processos judiciais;
* Elaboração de petições e pareceres;
* Acompanhamento de processos nos tribunais;
* Controle e cumprimento de prazos processuais;
* Organização de audiências;
* Registro de movimentações processuais.

### 2.3 Processos Financeiros

* Emissão e controle de honorários;
* Registro de pagamentos;
* Controle de valores pendentes;
* Geração de relatórios financeiros por carteira e cliente.

### 2.4 Processos de Recuperação de Crédito

* Cadastro das carteiras;
* Cadastro de devedores;
* Atendimento e registro de contatos;
* Negociação de dívidas;
* Registro de acordos;
* Registro de pagamentos;
* Geração de relatórios de desempenho.

As carteiras identificadas no levantamento são **Neon, Itapeva, CredAtivos e Kroton**.

### Fluxogramas
* Início -> Cadastro de Carteira -> Cadastro de Devedor -> Contato -> Negociação -> Pagamento -> Fim;
* Início -> Cadastro de Cliente -> Abertura de Processo -> Elaboração de Petição -> Audiência/Prazo -> Acompanhamento Processual -> Fim;
* Início -> Processo/Negociação -> Lançamento Financeiro -> Pagamento -> Atualização das pendências -> Fim.

**Os fluxogramas estão também anexados como imagens no repositório do GitHub.**

---

## 3. Requisitos do Sistema

### 3.1 Requisitos Funcionais

O sistema deverá permitir:

**RF01 — Cadastro de Carteiras**
Permitir cadastrar uma carteira, informando seus dados e o responsável pelo atendimento.

**RF02 — Cadastro de Devedores**
Permitir cadastrar os dados de um devedor e vinculá-lo a uma carteira existente.

**RF03 — Registro de Contatos**
Permitir registrar tentativas de contato com devedores, incluindo o meio utilizado, data e resultado da interação.

**RF04 — Atualização da Situação da Dívida**
Permitir atualizar o status da dívida conforme a situação do devedor.

**RF05 — Cadastro de Negociações**
Permitir criar propostas de acordo, parcelamento ou quitação para dívidas ativas.

**RF06 — Registro de Pagamentos**
Permitir registrar pagamentos relacionados às negociações e atualizar as pendências financeiras.

**RF07 — Relatórios de Recuperação de Crédito**
Permitir gerar relatórios por carteira, devedor e equipe.

**RF08 — Cadastro de Clientes**
Permitir cadastrar clientes e seus respectivos dados.

**RF09 — Abertura de Processos**
Permitir registrar processos judiciais, associando-os a um cliente e a um advogado ou equipe responsável.

**RF10 — Cadastro de Documentos**
Permitir armazenar documentos relacionados aos processos e controlar suas informações.

**RF11 — Cadastro de Petições**
Permitir criar e armazenar petições digitais relacionadas a processos existentes, mantendo o controle de suas versões.

**RF12 — Controle de Audiências e Prazos**
Permitir registrar datas de audiências e prazos processuais.

**RF13 — Alertas de Prazos**
Permitir emitir alertas relacionados aos prazos e audiências cadastrados.

**RF14 — Acompanhamento Processual**
Permitir atualizar o status de processos e registrar suas movimentações.

**RF15 — Controle Financeiro**
Permitir registrar honorários, pagamentos e pendências financeiras relacionados a processos ou negociações.

**RF16 — Relatórios Financeiros**
Permitir gerar relatórios financeiros organizados por carteira e cliente.

### 3.2 Requisitos Não Funcionais

**RNF01 — Segurança:**
O sistema deverá controlar o acesso às informações de acordo com o perfil dos usuários, protegendo dados jurídicos, financeiros e pessoais.

**RNF02 — Privacidade:**
Os dados pessoais e informações relacionadas a clientes e devedores deverão ser armazenados e acessados de maneira segura.

**RNF03 — Integridade:**
O sistema deverá impedir o registro de informações que violem as regras de negócio definidas pela organização.

**RNF04 — Usabilidade:**
As telas e funcionalidades deverão ser organizadas de maneira que os usuários consigam realizar as operações de forma clara e objetiva.

**RNF05 — Disponibilidade:**
O sistema deverá estar disponível para os usuários autorizados durante o período de funcionamento da organização.

**RNF06 — Desempenho:**
As operações de consulta e atualização de informações deverão apresentar tempo de resposta adequado para utilização cotidiana.

**RNF07 — Escalabilidade:**
O modelo deverá permitir o crescimento da quantidade de clientes, processos, devedores, negociações, documentos e usuários sem necessidade de reformulação completa da estrutura.

**RNF08 — Rastreabilidade:**
As alterações e movimentações relevantes dos processos, negociações e informações financeiras deverão poder ser acompanhadas.

---

## 4. Regras de Negócio

### Regras operacionais

**RN01 — Cadastro de Carteira:**
Uma carteira somente poderá ser criada caso exista contrato ativo com o respectivo parceiro.

**RN02 — Cadastro de Devedor:**
Um devedor somente poderá ser cadastrado quando estiver vinculado a uma carteira.

**RN03 — Negociação:**
Uma negociação somente poderá ser criada para um devedor que possua uma dívida ativa.

**RN04 — Pagamento:**
Um pagamento somente poderá ser registrado após a existência de um acordo formal.

**RN05 — Relatórios:**
Os relatórios deverão permitir a consolidação das informações por carteira e equipe.

**RN06 — Abertura de Processo:**
Um processo judicial somente poderá ser aberto quando houver um cliente previamente cadastrado.

**RN07 — Petição:**
Uma petição deverá estar vinculada a um processo existente.

**RN08 — Audiência:**
Uma audiência somente poderá ser agendada quando não houver conflito de agenda da equipe responsável.

**RN09 — Honorários:**
Os honorários deverão estar vinculados a um processo ou a uma negociação.

### Restrições organizacionais

A organização trabalha com informações jurídicas, financeiras e dados pessoais de clientes e devedores. Dessa forma, o sistema deverá considerar restrições de acesso e integridade dos dados.

Além disso, as operações devem respeitar a dependência existente entre as entidades. Por exemplo, um devedor depende de uma carteira para seu cadastro, uma negociação depende da existência de uma dívida ativa e um processo depende da existência de um cliente.

Essas restrições são importantes porque evitam registros sem contexto e garantem que as informações armazenadas representem os processos reais da organização.

---

## 5. Dicionário de Dados Conceitual

**O Dicionário de Dados Conceitual está presente no arquivo HTML do repositório**

---

## 6. Modelagem Conceitual (Entidades, Atributos, Relacionamentos)

### Entidades reconhecidas

Foram identificadas as seguintes entidades principais:

* **Cliente:** representa os clientes atendidos pelo escritório e serve como referência para os processos judiciais.
* **Processo:** representa os processos judiciais acompanhados pelo escritório.
* **Equipe:** representa os advogados e demais responsáveis envolvidos nas atividades.
* **Documento:** representa os documentos digitais relacionados às atividades jurídicas.
* **Financeiro:** representa os registros financeiros, incluindo honorários, pagamentos e pendências.
* **Carteira:** representa as carteiras de recuperação de crédito administradas pelo escritório.
* **Devedor:** representa as pessoas ou organizações que possuem dívidas em recuperação.
* **Negociação:** representa as negociações realizadas para regularização das dívidas.
* **Contato:** representa as tentativas e interações realizadas com os devedores.

### Atributos e classificações

Cada entidade possui um identificador único, utilizado para diferenciá-la das demais ocorrências.

Os atributos de identificação são acompanhados por informações descritivas e operacionais. Também existem atributos que possuem valores restritos, como os status de processos, dívidas e negociações.

Por exemplo:

* Processo: **Ativo, Suspenso ou Encerrado**;
* Devedor: **Ativa, Negociada ou Quitada**;
* Negociação: **Em andamento, Concluída ou Cancelada**;
* Contato: **Sem resposta, Promessa de pagamento ou Acordo fechado**.

### Relacionamentos pertinentes

A modelagem deverá representar os seguintes relacionamentos:

1. **Cliente — Processo**
   Um cliente pode possuir um ou mais processos, enquanto cada processo está associado a um cliente.

2. **Equipe — Processo**
   Um processo possui responsáveis da equipe jurídica.

3. **Processo — Documento**
   Um processo pode possuir diversos documentos relacionados.

4. **Processo — Financeiro**
   Um processo pode possuir registros financeiros relacionados aos honorários.

5. **Carteira — Devedor**
   Uma carteira pode possuir vários devedores, enquanto cada devedor deve estar vinculado a uma carteira.

6. **Devedor — Contato**
   Um devedor pode possuir diversos registros de contato.

7. **Devedor — Negociação**
   Um devedor pode possuir negociações relacionadas às suas dívidas.

8. **Negociação — Financeiro**
   Uma negociação pode gerar registros financeiros relacionados a pagamentos e valores pendentes.

9. **Equipe — Carteira**
   Membros da equipe podem ser responsáveis pelo atendimento e gerenciamento das carteiras.

10. **Equipe — Negociação**
    Membros da equipe podem ser responsáveis pelo acompanhamento das negociações.

### Restrições e políticas organizacionais aplicadas ao modelo

Os relacionamentos foram definidos considerando as regras levantadas durante a pesquisa. Assim, entidades dependentes não devem existir isoladamente quando a operação real exige um vínculo.

Por exemplo, um devedor precisa estar associado a uma carteira, uma negociação depende de uma dívida ativa e um processo judicial depende de um cliente previamente cadastrado.

O modelo também separa as operações jurídicas das operações de recuperação de crédito, permitindo que ambas sejam integradas posteriormente por meio das informações financeiras e dos responsáveis.

---

## 7. Diagrama Entidade-Relacionamento (DER)

O DER representa as entidades, seus atributos, relacionamentos e respectivas cardinalidades.

### Entidades

* Cliente
* Processo
* Equipe
* Documento
* Financeiro
* Carteira
* Devedor
* Negociação
* Contato

**O DER está anexado ao repositório como imagem.**

---

## 8. Justificativa Técnica

A modelagem foi estruturada com base nos principais processos identificados na organização e na necessidade de integrar informações que atualmente são mantidas em planilhas e documentos separados.

A entidade **Cliente** foi criada para centralizar as informações dos clientes e permitir sua associação aos processos jurídicos. Essa separação evita que os dados do cliente sejam repetidos em cada processo.

A entidade **Processo** representa a atividade jurídica principal e concentra informações como tipo, status, tribunal e prazos. A associação com **Documento** permite armazenar diferentes documentos relacionados ao mesmo processo, enquanto a associação com **Equipe** permite identificar os responsáveis pelo acompanhamento.

A entidade **Carteira** foi separada de **Devedor** porque uma mesma carteira pode possuir diversos devedores. Essa estrutura também permite representar diferentes parceiros e contratos sem duplicar informações.

A entidade **Negociação** foi criada separadamente porque uma dívida pode passar por diferentes etapas de negociação. Dessa forma, é possível acompanhar o tipo, status, valor e período de cada negociação.

A entidade **Contato** também foi separada porque um mesmo devedor pode receber diversas tentativas de contato. Isso permite manter um histórico das interações realizadas pela equipe.

A entidade **Financeiro** permite centralizar os registros de honorários, pagamentos e pendências e possibilita sua associação às operações jurídicas ou negociais.

As cardinalidades foram definidas de forma a representar a lógica dos processos levantados. Por exemplo, um cliente pode estar relacionado a vários processos, enquanto cada processo possui um cliente associado. Da mesma forma, uma carteira pode conter diversos devedores, e um devedor pode possuir registros de contatos e negociações.

A separação das entidades também favorece a escalabilidade do sistema, pois novas carteiras, clientes, processos, documentos, negociações e funcionários poderão ser adicionados sem alterar a estrutura conceitual principal.

---

## 9. Uso de Inteligência Artificial

Durante a elaboração desta entrega, o grupo utilizou o **ChatGPT** como ferramenta de apoio à organização das informações e à compreensão de alguns conceitos relacionados ao projeto. A IA não foi utilizada para elaborar o DER ou definir as entidades, atributos, relacionamentos e cardinalidades do modelo. Essas decisões foram realizadas pelo próprio grupo a partir das informações levantadas sobre a organização.

### Organização do README.md

| Item                                 | Descrição                                                                                                                                                                                                                                       |
| ------------------------------------ | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Ferramenta e etapa**               | ChatGPT — organização das informações da Entrega 1                                                                                                                                                                                              |
| **Motivação**                        | Utilizar a IA como apoio para organizar as informações levantadas pelo grupo dentro da estrutura do arquivo `README.md` fornecida pelo professor.                                                                                               |
| **Prompt(s) utilizados**             | Solicitações para organizar as informações já coletadas pelo grupo de acordo com as seções e instruções presentes no modelo de entrega.                                                                                                         |
| **Resposta recebida**                | A IA auxiliou na organização e estruturação do conteúdo, distribuindo as informações nas seções correspondentes do arquivo Markdown.                                                                                                            |
| **Fontes consultadas e verificadas** | As informações utilizadas foram provenientes principalmente do levantamento realizado pelo grupo e do modelo de entrega fornecido pelo professor.                                                                                               |
| **Trechos rejeitados ou corrigidos** | Informações que não haviam sido levantadas pelo grupo ou que não correspondiam ao funcionamento conhecido da organização foram desconsideradas ou revisadas.                                                                                    |
| **Justificativa da escolha final**   | A organização final foi revisada pelo grupo para garantir que o conteúdo do README representasse as informações realmente levantadas.                                                                                                           |
| **Reflexão crítica**                 | A IA foi utilizada principalmente como ferramenta de organização e revisão. O conteúdo precisava ser conferido pelo grupo, pois a IA não participou da pesquisa de campo e não possui conhecimento direto sobre o funcionamento da organização. |

### Apoio na compreensão do DER

A IA também foi utilizada para **explicar conceitos relacionados ao Diagrama Entidade-Relacionamento (DER)**, auxiliando o grupo na compreensão de conceitos como entidades, atributos, relacionamentos e cardinalidades.

Esse auxílio teve caráter **didático e explicativo**. A IA não elaborou o DER final do projeto, não definiu quais entidades deveriam fazer parte do modelo e não determinou as cardinalidades utilizadas pelo grupo. A construção do modelo foi realizada pelos integrantes com base no levantamento dos processos e regras de negócio da organização.

### Organização do arquivo HTML do Dicionário de Dados

O ChatGPT também foi utilizado como apoio na organização do **arquivo HTML do Dicionário de Dados**.

A ferramenta auxiliou na estruturação e organização visual das informações já levantadas pelo grupo, contribuindo para que os atributos, descrições e regras de negócio fossem apresentados de maneira mais organizada e padronizada no arquivo.

Nesse caso, a IA foi utilizada como apoio à **formatação e organização do conteúdo**, e não para definir quais informações deveriam fazer parte do dicionário. Os dados e atributos utilizados foram definidos a partir do levantamento realizado pelo grupo.

### Uso geral da IA no projeto

De maneira geral, a utilização da IA ficou limitada a:

* organizar as informações no arquivo `README.md`;
* auxiliar na compreensão de conceitos relacionados ao DER;
* melhorar a organização e apresentação do arquivo HTML do Dicionário de Dados.

A IA **não foi utilizada para realizar a pesquisa de campo, definir o modelo conceitual ou construir o DER final**. As informações sobre a organização e as decisões de modelagem foram responsabilidade dos integrantes do grupo.

