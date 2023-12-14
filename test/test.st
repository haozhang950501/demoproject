{Test}
FUNCTION ADD_of_4_plus_4_returns_8
    VAR_TEMP
        res: INT;
    END_VAR
    res := ADD(a := 4, b := 4);
    AxUnit.Assert.Equal(expected := 8, actual := res);
    ；
END_FUNCTION
