# 📟 CURSO-COBOL

<div align="center">

![COBOL](https://img.shields.io/badge/COBOL-GnuCOBOL_3.2.0-green?style=for-the-badge)
![Windows](https://img.shields.io/badge/Windows_11-0078D4?style=for-the-badge&logo=windows11&logoColor=white)
![VSCode](https://img.shields.io/badge/VS_Code-007ACC?style=for-the-badge&logo=visualstudiocode&logoColor=white)
![Status](https://img.shields.io/badge/Status-Em_Andamento-yellow?style=for-the-badge)
![License](https://img.shields.io/badge/Licença-MIT-blue?style=for-the-badge)

</div>

<div align="center">
  <h3>🖥️ Do zero ao mainframe — estudando a linguagem que move o mundo financeiro</h3>
  <p>Repositório de estudos pessoais da linguagem COBOL, documentando a jornada completa desde a configuração do ambiente até programas avançados.</p>
</div>

---

## 🗂️ Índice

- [Sobre o Projeto](#-sobre-o-projeto)
- [Projetos do Curso](#-projetos-do-curso)
- [Sobre o COBOL](#-sobre-o-cobol)
- [Curiosidades](#-curiosidades)
- [Empresas que Usam COBOL](#-empresas-que-usam-cobol)
- [Mercado de Trabalho](#-mercado-de-trabalho)
- [Ambiente de Desenvolvimento](#️-ambiente-de-desenvolvimento)
- [Como Clonar e Executar](#-como-clonar-e-executar)
- [Autor](#-autor)

---

## 📌 Sobre o Projeto

Este repositório documenta minha jornada aprendendo **COBOL** do zero, de forma pública e organizada. Cada pasta representa um projeto ou módulo de estudo com seu próprio README explicando o código, os conceitos aprendidos e os problemas encontrados no caminho.

A ideia é criar um material de referência útil tanto para mim quanto para qualquer pessoa que queira iniciar na linguagem mais antiga ainda em produção ativa no mundo.

---

## 📁 Projetos do Curso

| Projeto                                           | Descrição                                                                                   | Status          |
| ------------------------------------------------- | ------------------------------------------------------------------------------------------- | --------------- |
| [📂 cobol-helloword](./cobol-helloword/README.md) | Primeiro programa, configuração do ambiente, Hello World e resolução de conflitos com MSYS2 | ✅ Concluído    |
| [📂 cobol-study](./cobol-study/README.md)         | Estrutura da linguagem, divisões, tipos de dados, variáveis e operações                     | 🔄 Em andamento |

---

## 📖 Sobre o COBOL

**COBOL** — _Common Business-Oriented Language_ — é uma linguagem de programação criada em **1959** com um propósito muito específico: processar grandes volumes de dados de negócio de forma confiável, segura e auditável.

Diferente das linguagens modernas que nasceram para criar interfaces, jogos ou aplicações web, o COBOL nasceu para o mundo corporativo — folhas de pagamento, transações bancárias, controle de estoques, declarações fiscais. Coisas que precisam funcionar **sem falhar**, **24 horas por dia**, **todos os dias do ano**.

### Características Fundamentais

**Verbosa e legível:** o código foi projetado para ser lido quase como inglês natural. Um comando como `ADD SALARY TO TOTAL-SALARY` é literalmente isso. Essa característica foi revolucionária em 1959, quando a maioria das linguagens era incompreensível para quem não era matemático.

**Procedural:** você escreve o programa como uma receita de bolo. Passo 1, passo 2, passo 3. O computador executa na ordem que você definiu, sem surpresas.

**Orientada a registros:** toda a linguagem gira em torno do conceito de registro — uma ficha com campos de tamanho fixo. O programa lê um registro por vez, processa e passa para o próximo. Como percorrer uma pilha de fichas físicas.

**Fortemente estruturada:** todo programa COBOL obrigatoriamente possui 4 divisões, sempre na mesma ordem. Isso garante que qualquer programador COBOL no mundo consiga ler e entender qualquer código COBOL, independente de quem escreveu.

### As 4 Divisões Obrigatórias

```cobol
IDENTIFICATION DIVISION.   ← identifica o programa
ENVIRONMENT DIVISION.      ← descreve o ambiente e arquivos
DATA DIVISION.             ← declara todas as variáveis
PROCEDURE DIVISION.        ← contém a lógica do programa
```

### Tipos de Dados (PIC Clause)

| Símbolo | Tipo              | Exemplo       | Descrição                   |
| ------- | ----------------- | ------------- | --------------------------- |
| `X`     | Alfanumérico      | `PIC X(30)`   | Texto de 30 caracteres      |
| `9`     | Numérico          | `PIC 9(5)`    | Número inteiro de 5 dígitos |
| `V`     | Decimal implícito | `PIC 9(7)V99` | 7 inteiros e 2 decimais     |
| `A`     | Alfabético        | `PIC A(10)`   | Somente letras              |

---

## 🤯 Curiosidades

> **"COBOL processa mais dinheiro por dia do que Google, Amazon e Facebook juntos."**
> — Reuters

**🗓️ Mais velha que a internet:** o COBOL foi criado em 1959, 30 anos antes da World Wide Web. Muitos dos sistemas que rodam COBOL hoje são mais antigos do que a maioria dos desenvolvedores que os mantém.

**📊 800 bilhões de linhas:** estima-se que existam mais de 800 bilhões de linhas de código COBOL ainda em produção ativa no mundo. Para ter uma ideia, isso é mais código do que existe em Python, Java e JavaScript somados.

**💳 Toda vez que você usa um caixa eletrônico:** há grandes chances de que uma transação COBOL esteja sendo processada em algum ponto. Estima-se que 95% dos saques em ATMs passam por sistemas COBOL.

**✈️ Aviação e governo:** a FAA (aviação americana), o IRS (receita americana) e a Social Security Administration processam trilhões de dólares em benefícios por ano em sistemas COBOL que rodam desde os anos 1970.

**🦠 COVID-19 e COBOL:** em 2020, vários estados americanos fizeram apelos públicos por programadores COBOL para ajudar a processar o volume recorde de pedidos de auxílio-desemprego. Os sistemas tinham décadas mas precisavam processar um volume nunca visto — e processaram.

**👩‍💻 Criada por uma mulher:** o COBOL foi fortemente influenciado pelo trabalho de **Grace Hopper**, uma das pioneiras da computação. Ela desenvolveu o primeiro compilador da história e foi a principal arquiteta das ideias que moldaram o COBOL.

**💰 Mais de 3 trilhões de dólares:** é o valor estimado de transações financeiras que passam por sistemas COBOL diariamente ao redor do mundo. Todos os dias.

**🔄 Mainframes ainda vendem:** a IBM vende e atualiza sua linha de mainframes (IBM Z Series) até hoje. Em 2022, a IBM lançou o z16 com processador dedicado para inteligência artificial — rodando junto com sistemas COBOL que existem há décadas.

**📅 Mais novo do que parece:** o padrão COBOL foi atualizado em 2014 (COBOL 2014) e uma nova versão está em desenvolvimento. A linguagem não parou no tempo — ela evolui lentamente, mas evolui.

---

## 🏢 Empresas que Usam COBOL

### Setor Financeiro

| Empresa                     | Como usa                                                        |
| --------------------------- | --------------------------------------------------------------- |
| **Banco do Brasil**         | Core bancário, processamento de transações e folha de pagamento |
| **Itaú Unibanco**           | Sistemas de compensação bancária e processamento de cartões     |
| **Bradesco**                | Infraestrutura de mainframe para operações críticas             |
| **Caixa Econômica Federal** | FGTS, habitação, benefícios sociais e Bolsa Família             |
| **JPMorgan Chase**          | Estimativa de 272 milhões de linhas COBOL em produção           |
| **Bank of America**         | Processamento de transações e sistemas legados críticos         |
| **Citibank**                | Core banking global em COBOL                                    |
| **Wells Fargo**             | Sistemas de compensação e liquidação financeira                 |

### Governo e Setor Público

| Organização                   | Como usa                                                   |
| ----------------------------- | ---------------------------------------------------------- |
| **Receita Federal do Brasil** | Processamento de declarações de imposto de renda           |
| **INSS**                      | Cálculo e pagamento de benefícios previdenciários          |
| **IRS (EUA)**                 | Processamento de declarações fiscais americanas            |
| **Social Security (EUA)**     | Pagamento de benefícios para mais de 65 milhões de pessoas |
| **FAA (Aviação EUA)**         | Controle de tráfego aéreo e sistemas de reservas           |

### Varejo e Outros

| Empresa       | Como usa                                                   |
| ------------- | ---------------------------------------------------------- |
| **Walmart**   | Sistemas de controle de estoque e supply chain legados     |
| **IBM**       | Desenvolvimento e suporte da plataforma mainframe z/OS     |
| **Accenture** | Consultoria e modernização de sistemas COBOL para clientes |

---

## 💼 Mercado de Trabalho

O mercado para profissionais COBOL é um dos mais interessantes e contraintuitivos da tecnologia:

**Demanda alta, oferta baixa:** a geração de programadores COBOL está se aposentando. Empresas que dependem desses sistemas há décadas enfrentam dificuldade crescente em encontrar profissionais qualificados.

**Salários competitivos:** exatamente pela escassez, profissionais COBOL experientes costumam receber salários acima da média do mercado de TI, especialmente em bancos e instituições financeiras.

**Estabilidade:** sistemas COBOL não são substituídos do dia para a noite. A complexidade e o risco de migrar décadas de regras de negócio para novas plataformas faz com que esses sistemas durem décadas — e os profissionais que os mantêm também.

**Modernização:** uma das frentes mais quentes do mercado é a **modernização de sistemas legados** — migrar lógica COBOL para plataformas modernas sem perder as regras de negócio acumuladas em décadas. Profissionais que entendem COBOL e também dominam tecnologias modernas são extremamente valorizados.

**Brasil:** bancos brasileiros como Itaú, Bradesco, BB e CEF possuem times dedicados de mainframe. A Receita Federal e o INSS também mantêm sistemas críticos em COBOL há décadas.

---

## ⚙️ Ambiente de Desenvolvimento

| Ferramenta            | Versão / Detalhes                 |
| --------------------- | --------------------------------- |
| Sistema Operacional   | Windows 11                        |
| Compilador            | GnuCOBOL 3.2.0                    |
| Compilador C interno  | MinGW 13.1.0                      |
| Editor                | Visual Studio Code                |
| Extensão VSCode       | COBOL Language Support — Broadcom |
| Caminho do compilador | `C:\gnuCobol\bin\cobc.exe`        |

---

## 🚀 Como Clonar e Executar

### Pré-requisitos

- Windows 11
- [GnuCOBOL 3.2.0](https://gnucobol.sourceforge.io) instalado em `C:\gnuCobol`
- [Visual Studio Code](https://code.visualstudio.com) com extensão COBOL da Broadcom

### Clonar o repositório

```bash
git clone https://github.com/SilvaneiMartins/curso-cobol.git
cd curso-cobol
```

### Compilar um programa

```powershell
# Entre na pasta do projeto
cd cobol-helloword

# Compile
cobc -x PROG001A.cob -o PROG001A.exe

# Execute
$env:COB_CONFIG_DIR = "C:\gnuCobol\config"
.\PROG001A.exe
```

### Variável de ambiente recomendada

Para não precisar definir a variável toda vez, adicione permanentemente ao sistema:

```powershell
# Execute o PowerShell como Administrador
[System.Environment]::SetEnvironmentVariable("COB_CONFIG_DIR", "C:\gnuCobol\config", "Machine")
[System.Environment]::SetEnvironmentVariable("COB_RUNTIME_CONFIG", "C:\gnuCobol\config\runtime.cfg", "Machine")
```

---

## 👨‍💻 Autor

<div align="center">
  <a href="https://github.com/SilvaneiMartins">
    <img src="https://github.com/SilvaneiMartins.png" width="100px" style="border-radius:50%" alt="Silvanei Martins"/>
  </a>
  <br/>
  <strong>Silvanei Martins</strong>
  <br/>
  <a href="https://github.com/SilvaneiMartins">github.com/SilvaneiMartins</a>
</div>

---

## 📜 Licença

Este projeto está sob a licença MIT. Veja o arquivo [LICENSE](./LICENSE) para mais detalhes.

---

<div align="center">
  <sub>
    Feito com ❤️ e muito COBOL por <a href="https://github.com/SilvaneiMartins">Silvanei Martins</a>
  </sub>
  <br/>
  <sub>
    <em>"A linguagem mais antiga ainda em produção — e uma das mais importantes do mundo."</em>
  </sub>
</div>

---

## 👤 Desenvolvedor

Desenvolvido por **Silvanei Martins**

- 💼 [LinkedIn](https://www.linkedin.com/in/silvanei-martins-a5412436)
- 🌐 [Site Pessoal](https://silvaneimartins.com.br/)
- 🐱 [GitHub](https://github.com/Store-Sam-Martins)
- 📧 silvaneimartins_rcc@hotmail.com
- 🎥 [YouTube](https://www.youtube.com/@silvaneimartins2487/featured)
- 🐦 [X (Twitter)](https://x.com/SilvaneiMartins)

<a href="https://github.com/SilvaneiMartins">
    <img
        style="border-radius:50%"
        src="https://github.com/SilvaneiMartins.png"
        width="100px;"
        alt="Silvanei Martins"
    />
    <br />
    <sub>
        <b>Silvanei de Almeida Martins</b>
    </sub>
</a>
     <a href="https://github.com/SilvaneiMartins" title="Silvanei martins" >
 </a>
<br />
🚀 Feito com ❤️ por Silvanei Martins
