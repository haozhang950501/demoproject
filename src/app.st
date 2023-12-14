
CONFIGURATION PLC_1
    TASK Main(Interval := T#1000ms, Priority := 1);
    PROGRAM P1 WITH Main: SampleProgram;
    VAR_Global
        upCounter: Int;
        
        globalIntArray:ARRAY [0..9] OF INT;
    END_VAR        
END_CONFIGURATION
   
PROGRAM SampleProgram
    VAR_External
        upCounter: Int;  
        globalIntArray:ARRAY [0..9] OF INT;
    END_VAR
    VAR_TEMP
        tempint:INT;
        index:INT:=10;
    END_VAR
    //tempint:=globalIntArray[index];
     upCounter := ADD(a := upCounter, b := 1);
    IF upCounter = 42 THEN
        upCounter := 0;
    END_IF;
END_PROGRAM

FUNCTION ADD: INT
    VAR_INPUT
        a: INT;
        b: INT;
    END_VAR
    ADD := a + b;
END_FUNCTION