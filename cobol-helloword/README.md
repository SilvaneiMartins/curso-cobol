# 📟 PROG001A — Hello World em COBOL

Primeiro programa COBOL do projeto de estudos, com ambiente configurado no **Windows 11** usando **GnuCOBOL 3.2.0** e **Visual Studio Code**.

---

## 📄 Código Completo

```cobol
      ******************************************************************
      * Autor: Silvanei Martins
      * Data: 02/03/2026
      * Propósito: Aprender COBOL
      * Compilador: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROG001A.

       ENVIRONMENT DIVISION.

       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.

       PROCEDURE DIVISION.
           PERFORM MAIN-PROCEDURE
           STOP RUN.

       MAIN-PROCEDURE.
           DISPLAY "Ola, mundo!".

       END PROGRAM PROG001A.
```

---

## 🔍 Explicação Linha por Linha

### Bloco de Comentários

```cobol
      ******************************************************************
      * Autor: Silvanei Martins
      * Data: 02/03/2026
      * Propósito: Aprender COBOL
      * Compilador: cobc
      ******************************************************************
```

Em COBOL, qualquer linha que começa com `*` na coluna 7 é tratada como **comentário** e ignorada pelo compilador. É uma boa prática sempre documentar o autor, data e propósito do programa no topo do arquivo.

---

### IDENTIFICATION DIVISION

```cobol
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROG001A.
```

É a primeira divisão obrigatória de todo programa COBOL. O `PROGRAM-ID` define o nome do programa. O **ponto final** após `PROG001A.` é obrigatório — sua ausência causa erro de compilação.

---

### ENVIRONMENT DIVISION

```cobol
       ENVIRONMENT DIVISION.
```

Descreve o ambiente onde o programa será executado e os arquivos externos utilizados. Neste programa está vazia pois não usamos arquivos externos, mas sua declaração é necessária para manter a estrutura correta das divisões.

---

### DATA DIVISION

```cobol
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
```

É onde todas as variáveis do programa são declaradas. Neste programa não há variáveis declaradas pois a mensagem foi escrita diretamente no `DISPLAY`. A `FILE SECTION` seria usada para descrever estruturas de arquivos externos. A `WORKING-STORAGE SECTION` é onde variáveis internas do programa seriam declaradas.

---

### PROCEDURE DIVISION

```cobol
       PROCEDURE DIVISION.
           PERFORM MAIN-PROCEDURE
           STOP RUN.
```

É onde toda a lógica executável do programa vive. O `PERFORM` chama o parágrafo `MAIN-PROCEDURE` — sem ele o compilador emite o aviso `paragraph is not referenced`. O `STOP RUN` encerra a execução do programa.

---

### Parágrafo MAIN-PROCEDURE

```cobol
       MAIN-PROCEDURE.
           DISPLAY "Ola, mundo!".
```

Um **parágrafo** em COBOL é um bloco de código identificado por um nome seguido de ponto. O comando `DISPLAY` exibe o valor na tela. O ponto final após `"Ola, mundo!".` encerra o parágrafo.

---

### END PROGRAM

```cobol
       END PROGRAM PROG001A.
```

Marca explicitamente o fim do programa. É opcional em programas simples, mas é boa prática incluí-lo pois torna o código mais claro e é obrigatório em programas que contêm subprogramas.

---

## ⚙️ Como Compilar e Executar

### Compilar

```powershell
cobc -x PROG001A.cob -o PROG001A.exe
```

| Flag | Descrição                         |
| ---- | --------------------------------- |
| `-x` | Gera um executável independente   |
| `-o` | Define o nome do arquivo de saída |

### Executar

```powershell
$env:COB_CONFIG_DIR = "C:\gnuCobol\config"
.\PROG001A.exe
```

### Saída esperada

```
Ola, mundo!
```

---

## ⚠️ Problemas Encontrados e Soluções

### Problema 1 — `paragraph is not referenced`

**Erro:**

```
warning: MAIN-PROCEDURE paragraph is not referenced
```

**Causa:** O parágrafo `MAIN-PROCEDURE` foi declarado mas nunca chamado. O GnuCOBOL exige que todo parágrafo seja referenciado em algum momento.

**Solução:** Adicionar `PERFORM MAIN-PROCEDURE` antes do `STOP RUN` na `PROCEDURE DIVISION`:

```cobol
       PROCEDURE DIVISION.
           PERFORM MAIN-PROCEDURE   ← adicionar esta linha
           STOP RUN.
```

---

### Problema 2 — `configuration error: unknown configuration tag`

**Erro:**

```
configuration error:
C:\msys64\mingw64\share\gnucobol\config\default.conf:24: unknown configuration tag 'name'
...
```

**Causa:** Conflito entre duas instalações do GnuCOBOL no sistema. O MSYS2 (`C:\msys64`) estava na frente do GnuCOBOL oficial (`C:\gnuCobol`) no PATH do Windows, fazendo com que o runtime buscasse as configurações do MSYS2 em vez do GnuCOBOL oficial. As versões possuem arquivos `default.conf` incompatíveis entre si.

**Solução aplicada:**

**Passo 1** — Remover o MSYS2 do PATH do sistema:

```
Painel de Controle → Variáveis de Ambiente → Path → Excluir C:\msys64
```

**Passo 2** — Forçar a variável de ambiente para o config correto:

```powershell
$env:COB_CONFIG_DIR = "C:\gnuCobol\config"
$env:COB_RUNTIME_CONFIG = "C:\gnuCobol\config\runtime.cfg"
```

**Passo 3** — Deletar o executável antigo e recompilar:

```powershell
Remove-Item PROG001A.exe
cobc -x PROG001A.cob -o PROG001A.exe
$env:COB_CONFIG_DIR = "C:\gnuCobol\config"
.\PROG001A.exe
```

> **Por que recompilar foi necessário?** O executável gerado anteriormente estava linkado às DLLs do MSYS2. Mesmo removendo o MSYS2 do PATH, o `.exe` antigo continuava buscando as configurações do caminho errado. Recompilar gerou um novo executável linkado corretamente ao GnuCOBOL oficial.

---

### Problema 3 — Ponto final faltando no PROGRAM-ID

**Erro:**

```
syntax error
```

**Causa:** O `PROGRAM-ID` foi declarado sem ponto final.

```cobol
PROGRAM-ID. PROG001A    ← errado
PROGRAM-ID. PROG001A.   ← correto
```

**Solução:** Sempre adicionar ponto final após o nome do programa.

---

## 🛠️ Ambiente Utilizado

| Ferramenta            | Versão / Detalhes                 |
| --------------------- | --------------------------------- |
| Sistema Operacional   | Windows 11                        |
| Compilador            | GnuCOBOL 3.2.0                    |
| Compilador C interno  | MinGW 13.1.0                      |
| Editor                | Visual Studio Code                |
| Extensão VSCode       | COBOL Language Support (Broadcom) |
| Caminho do compilador | `C:\gnuCobol\bin\cobc.exe`        |
| Caminho das configs   | `C:\gnuCobol\config\`             |

---

## 📚 Referências

- [GnuCOBOL — Site Oficial](https://gnucobol.sourceforge.io)
- [GnuCOBOL Programmer's Guide](https://gnucobol.sourceforge.io/guides.html)
- [COBOL Language Support — Broadcom (VSCode)](https://marketplace.visualstudio.com/items?itemName=broadcommfd.cobol-language-support)

---

> _"Todo especialista já foi um iniciante. O primeiro Hello World é o passo mais importante da jornada."_

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
