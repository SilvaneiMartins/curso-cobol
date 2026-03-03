******************************************************************
      * PROGRAMADOR: SILVANEI MARTINS
      * DATA: 02/03/2026
      * OBJETIVO: PROGRAMA PROG001A
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROG001A.
      *-----------------------------------------------------------------
       ENVIRONMENT DIVISION.
      *-----------------------------------------------------------------
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
      *-----------------------------------------------------------------
       PROCEDURE DIVISION.

       MAIN-PROCEDURE.
           PERFORM 0001-MENSAGEM
           PERFORM 0002-NOME
           PERFORM 9999-FINALIZAR
                .
       MAIN-PROCEDURE-END.

      *-----------------------------------------------------------------
       0001-MENSAGEM.
           DISPLAY "0001-MENSAGEM"
           DISPLAY "Boa noite, seja bem vindo!"
                .
       0001-MENSAGEM-END.

      *-----------------------------------------------------------------
       0002-NOME.
           DISPLAY "0002-NOME"
           DISPLAY "Meu nome e Silvanei Martins"
                .
       0002-NOME-END.

      *-----------------------------------------------------------------
       9999-FINALIZAR.
           STOP RUN.
       9999-FINALIZAR-END.

      *-----------------------------------------------------------------
       END PROGRAM PROG001A.