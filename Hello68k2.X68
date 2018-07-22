*-----------------------------------------------------------
* Title      : Hello68k2.X68
* Written by : Matt B.
* Date       : 7-22-2018
* Description: Hello World / PRINT subroutine
*-----------------------------------------------------------
    ORG    $1000       ;start at address 0x1000
START:                   


    LEA     MESSAGE,A1 
    JSR     PRINT      ;Jump to PRINT subroutine
    LEA     MESSAGE2,A1
    JSR     PRINT
    
    MOVE.B  #9,D0
    TRAP	#15 

PRINT:
    MOVE.B  #14,D0
    TRAP    #15
    RTS




CR EQU $0D
LF EQU $0A
MESSAGE DC.B    'HELLO WORLD!',CR,LF,0 
MESSAGE2 DC.B   'Cool!!!!!',0 

    END    START        ; last line of source
