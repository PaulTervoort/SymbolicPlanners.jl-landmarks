(define (problem logistics-31-0)
(:domain logistics)
(:objects
    APN3
    APN2
    APN1
 - AIRPLANE
    APT11
    APT10
    APT9
    APT8
    APT7
    APT6
    APT5
    APT4
    APT3
    APT2
    APT1
 - AIRPORT
    POS1
    POS2
    POS3
    POS4
    POS5
    POS6
    POS7
    POS8
    POS9
    POS10
    POS11
 - LOCATION
    CIT11
    CIT10
    CIT9
    CIT8
    CIT7
    CIT6
    CIT5
    CIT4
    CIT3
    CIT2
    CIT1
 - CITY
    TRU11
    TRU10
    TRU9
    TRU8
    TRU7
    TRU6
    TRU5
    TRU4
    TRU3
    TRU2
    TRU1
 - TRUCK
    OBJ113
    OBJ112
    OBJ111
    OBJ103
    OBJ102
    OBJ101
    OBJ93
    OBJ92
    OBJ91
    OBJ83
    OBJ82
    OBJ81
    OBJ73
    OBJ72
    OBJ71
    OBJ63
    OBJ62
    OBJ61
    OBJ53
    OBJ52
    OBJ51
    OBJ43
    OBJ42
    OBJ41
    OBJ33
    OBJ32
    OBJ31
    OBJ23
    OBJ22
    OBJ21
    OBJ13
    OBJ12
    OBJ11
 - PACKAGE
)
(:init
    (AT APN1 APT7)
    (AT APN2 APT3)
    (AT APN3 APT1)
    (AT TRU1 POS1)
    (AT OBJ11 POS1)
    (AT OBJ12 POS1)
    (AT OBJ13 POS1)
    (AT TRU2 POS2)
    (AT OBJ21 POS2)
    (AT OBJ22 POS2)
    (AT OBJ23 POS2)
    (AT TRU3 POS3)
    (AT OBJ31 POS3)
    (AT OBJ32 POS3)
    (AT OBJ33 POS3)
    (AT TRU4 POS4)
    (AT OBJ41 POS4)
    (AT OBJ42 POS4)
    (AT OBJ43 POS4)
    (AT TRU5 POS5)
    (AT OBJ51 POS5)
    (AT OBJ52 POS5)
    (AT OBJ53 POS5)
    (AT TRU6 POS6)
    (AT OBJ61 POS6)
    (AT OBJ62 POS6)
    (AT OBJ63 POS6)
    (AT TRU7 POS7)
    (AT OBJ71 POS7)
    (AT OBJ72 POS7)
    (AT OBJ73 POS7)
    (AT TRU8 POS8)
    (AT OBJ81 POS8)
    (AT OBJ82 POS8)
    (AT OBJ83 POS8)
    (AT TRU9 POS9)
    (AT OBJ91 POS9)
    (AT OBJ92 POS9)
    (AT OBJ93 POS9)
    (AT TRU10 POS10)
    (AT OBJ101 POS10)
    (AT OBJ102 POS10)
    (AT OBJ103 POS10)
    (AT TRU11 POS11)
    (AT OBJ111 POS11)
    (AT OBJ112 POS11)
    (AT OBJ113 POS11)
    (IN-CITY POS1 CIT1)
    (IN-CITY APT1 CIT1)
    (IN-CITY POS2 CIT2)
    (IN-CITY APT2 CIT2)
    (IN-CITY POS3 CIT3)
    (IN-CITY APT3 CIT3)
    (IN-CITY POS4 CIT4)
    (IN-CITY APT4 CIT4)
    (IN-CITY POS5 CIT5)
    (IN-CITY APT5 CIT5)
    (IN-CITY POS6 CIT6)
    (IN-CITY APT6 CIT6)
    (IN-CITY POS7 CIT7)
    (IN-CITY APT7 CIT7)
    (IN-CITY POS8 CIT8)
    (IN-CITY APT8 CIT8)
    (IN-CITY POS9 CIT9)
    (IN-CITY APT9 CIT9)
    (IN-CITY POS10 CIT10)
    (IN-CITY APT10 CIT10)
    (IN-CITY POS11 CIT11)
    (IN-CITY APT11 CIT11)
)
(:goal (and
    (AT OBJ43 APT4)
    (AT OBJ73 POS4)
    (AT OBJ91 APT8)
    (AT OBJ32 POS10)
    (AT OBJ82 APT6)
    (AT OBJ42 APT11)
    (AT OBJ13 APT5)
    (AT OBJ22 APT8)
    (AT OBJ112 APT6)
    (AT OBJ51 APT2)
    (AT OBJ53 POS8)
    (AT OBJ102 POS1)
    (AT OBJ92 APT6)
    (AT OBJ83 POS2)
    (AT OBJ41 APT5)
    (AT OBJ61 APT9)
    (AT OBJ71 POS5)
    (AT OBJ23 POS6)
    (AT OBJ93 POS4)
    (AT OBJ63 POS10)
    (AT OBJ72 APT7)
    (AT OBJ113 APT9)
    (AT OBJ62 POS11)
    (AT OBJ33 APT4)
    (AT OBJ12 APT7)
    (AT OBJ21 APT11)
    (AT OBJ101 POS1)
    (AT OBJ52 APT8)
    (AT OBJ31 APT1)
    (AT OBJ111 POS8)
    (AT OBJ11 POS4)
)
)
)
