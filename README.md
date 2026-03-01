# 📟 COBOL-STUDY

Repositório de estudos da linguagem **COBOL** (Common Business-Oriented Language), do zero ao primeiro programa executável, com ambiente configurado no Windows 11 usando GnuCOBOL e Visual Studio Code.

---

## 📖 Sobre o COBOL

COBOL é uma das linguagens de programação mais antigas ainda em produção ativa no mundo, criada em **1959**. Apesar da idade, ela ainda movimenta **mais de 800 bilhões de linhas de código** em sistemas de bancos, governos e seguradoras ao redor do mundo, processando trilhões de dólares diariamente.

### Características principais

- **Verbosa e legível:** o código foi projetado para ser lido quase como inglês. Um comando como `ADD SALARY TO TOTAL-SALARY` é literalmente isso.
- **Procedural:** você escreve o programa como uma receita — passo 1, passo 2, passo 3. A execução segue a ordem que você definiu, de cima para baixo.
- **Orientada a registros:** processa dados em blocos chamados registros, lendo um de cada vez — como pegar uma ficha da pilha, processar e passar para a próxima.
- **Fortemente tipada:** toda variável precisa ser declarada com tipo e tamanho antes de ser usada.
- **4 divisões obrigatórias:** todo programa COBOL é estruturado em `IDENTIFICATION`, `ENVIRONMENT`, `DATA` e `PROCEDURE DIVISION`, sempre nessa ordem.

### Por que ainda importa?

Quando você passa o cartão no caixa eletrônico de um banco, há grandes chances de um mainframe IBM estar processando essa transação — em COBOL. Substituir esses sistemas é tão caro e arriscado que a maioria das empresas prefere manter e contratar profissionais capacitados. Daí vem a oportunidade de mercado.

---

## 🖥️ O que é um Mainframe?

Um mainframe é um computador de grande porte projetado para processar volumes absurdos de dados com altíssima confiabilidade, rodando 24 horas por dia, 7 dias por semana, por anos sem parar. Não é otimizado para velocidade bruta, mas para **volume, confiabilidade e segurança simultânea** de milhares de transações.

---

## ⚙️ Ambiente de Desenvolvimento

| Ferramenta              | Descrição                         |
| ----------------------- | --------------------------------- |
| **Sistema Operacional** | Windows 11                        |
| **Compilador**          | GnuCOBOL 3.x                      |
| **Editor**              | Visual Studio Code                |
| **Extensão VSCode**     | COBOL Language Support (Broadcom) |

---

## 🚀 Instalação do GnuCOBOL

### Opção 1 — Via WinGet (Recomendado)

O Windows 11 já vem com o WinGet instalado. Abra o **PowerShell como Administrador** e execute:

```powershell
winget install --id=GnuCOBOL.GnuCOBOL
```

Aguarde o download e a instalação. Ao finalizar, feche e reabra o terminal.

### Opção 2 — Instalador Manual

1. Acesse [https://gnucobol.sourceforge.io](https://gnucobol.sourceforge.io)
2. Baixe o instalador `.exe` para Windows
3. Execute o instalador e **marque a opção "Add to system PATH"**
4. Conclua a instalação

### Verificando a instalação

```powershell
cobc --version
# Resultado esperado: cobc (GnuCOBOL) 3.x.x
```

---

## 🗂️ Estrutura do Projeto

```
COBOL-STUDY/
│
├── 01-hello-world/
│   └── hello.cob
│
├── 02-variaveis/
│   └── variaveis.cob
│
├── 03-operacoes/
│   └── operacoes.cob
│
└── README.md
```

---

## 📁 Criando um Novo Programa

```powershell
# Crie a pasta do exercício
mkdir C:\COBOL-STUDY\meu-programa
cd C:\COBOL-STUDY\meu-programa

# Abra no VS Code
code .
```

Crie um arquivo com extensão `.cob` e use a estrutura base abaixo:

```cobol
       IDENTIFICATION DIVISION.
       PROGRAM-ID. NOME-DO-PROGRAMA.
       AUTHOR. SEU-NOME.

       ENVIRONMENT DIVISION.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-VARIAVEL    PIC X(30) VALUE 'VALOR INICIAL'.

       PROCEDURE DIVISION.
       INICIO.
           DISPLAY WS-VARIAVEL
           STOP RUN.
```

---

## 🔨 Compilando e Executando

### Compilar

```powershell
cobc -x nome-do-arquivo.cob -o nome-do-arquivo.exe
```

| Flag | Descrição                         |
| ---- | --------------------------------- |
| `-x` | Gera um executável independente   |
| `-o` | Define o nome do arquivo de saída |

### Executar

```powershell
.\nome-do-arquivo.exe
```

### Exemplo completo

```powershell
cobc -x hello.cob -o hello.exe
.\hello.exe
# Saída: HELLO, WORLD!
```

---

## 🧱 Estrutura de um Programa COBOL

Todo programa COBOL é dividido em **4 divisões obrigatórias**, sempre nessa ordem:

### 1. IDENTIFICATION DIVISION

Cartão de visitas do programa. Define nome, autor e outras informações descritivas.

```cobol
       IDENTIFICATION DIVISION.
       PROGRAM-ID. MEU-PROGRAMA.
       AUTHOR. SEU-NOME.
```

### 2. ENVIRONMENT DIVISION

Descreve o ambiente e os arquivos externos utilizados pelo programa.

```cobol
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT ARQUIVO ASSIGN TO 'dados.dat'.
```

### 3. DATA DIVISION

Declara **todas** as variáveis do programa. Nenhuma variável pode ser declarada fora desta divisão.

```cobol
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-NOME       PIC X(30).
       01 WS-SALARIO    PIC 9(7)V99.
       01 WS-CONTADOR   PIC 9(4) VALUE ZEROS.
```

### 4. PROCEDURE DIVISION

Contém toda a lógica executável do programa, organizada em parágrafos.

```cobol
       PROCEDURE DIVISION.
       INICIO.
           MOVE 'João Silva' TO WS-NOME
           DISPLAY WS-NOME
           STOP RUN.
```

---

## 🔤 Tipos de Dados (PIC Clause)

| Símbolo | Significado     | Exemplo       | Descrição                       |
| ------- | --------------- | ------------- | ------------------------------- |
| `X`     | Alfanumérico    | `PIC X(30)`   | Texto de 30 caracteres          |
| `9`     | Numérico        | `PIC 9(5)`    | Número inteiro de 5 dígitos     |
| `V`     | Vírgula decimal | `PIC 9(7)V99` | 7 dígitos inteiros e 2 decimais |
| `A`     | Alfabético      | `PIC A(10)`   | Somente letras, 10 caracteres   |

---

## 💡 Hello World

```cobol
       IDENTIFICATION DIVISION.
       PROGRAM-ID. HELLO-WORLD.
       AUTHOR. SEU-NOME.

       ENVIRONMENT DIVISION.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-MENSAGEM    PIC X(30) VALUE 'HELLO, WORLD!'.

       PROCEDURE DIVISION.
       INICIO.
           DISPLAY WS-MENSAGEM
           STOP RUN.
```

```powershell
cobc -x hello.cob -o hello.exe
.\hello.exe
# HELLO, WORLD!
```

---

## ⌨️ Atalhos Úteis no VS Code

| Atalho             | Função                               |
| ------------------ | ------------------------------------ |
| `Ctrl + \``        | Abre/fecha o terminal integrado      |
| `Ctrl + Shift + B` | Compila (com tasks.json configurado) |
| `Ctrl + S`         | Salva o arquivo                      |
| `Ctrl + /`         | Comenta/descomenta a linha           |
| `Ctrl + Space`     | Ativa o autocompletar                |
| `Ctrl + Shift + P` | Paleta de comandos                   |

---

## 📚 Referências

- [GnuCOBOL — Site Oficial](https://gnucobol.sourceforge.io)
- [GnuCOBOL Programmer's Guide](https://gnucobol.sourceforge.io/guides.html)
- [COBOL Language Support — Broadcom (VSCode)](https://marketplace.visualstudio.com/items?itemName=broadcommfd.cobol-language-support)

---

> _"Enquanto todo mundo corre para as tecnologias mais recentes, existe um universo inteiro de sistemas críticos que precisam de profissionais capacitados para mantê-los."_

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
