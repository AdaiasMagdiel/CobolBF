           IDENTIFICATION DIVISION.
           PROGRAM-ID. COBOLBF.


           DATA DIVISION.
           WORKING-STORAGE SECTION.
           01 WS-CODE-INDEX     PIC 999.
           01 WS-TAPE           OCCURS 100 TIMES.
               05 WS-TAPE-CELL  PIC 999.
           01 WS-DATA-POINTER   PIC 999     VALUE 1.
           01 WS-SOURCE-CODE    PIC X(100)  VALUE
               "+++++++++++++++++++++++++++++++++.".

           PROCEDURE DIVISION.

           PERFORM VARYING WS-CODE-INDEX FROM 1 BY 1 UNTIL
               WS-SOURCE-CODE(WS-CODE-INDEX:1) = SPACE
               OR WS-CODE-INDEX > 100

               EVALUATE WS-SOURCE-CODE(WS-CODE-INDEX:1)
                   WHEN "+"
                       ADD 1 TO WS-TAPE-CELL (WS-DATA-POINTER)
                   WHEN "."
                       DISPLAY FUNCTION CHAR
                           (WS-TAPE-CELL (WS-DATA-POINTER) + 1)
               END-EVALUATE

           END-PERFORM.

           STOP RUN.
