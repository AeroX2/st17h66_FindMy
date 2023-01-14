
========================================================================

** ELF Header Information

    File Name: ./Objects/FindMy.axf

    Machine class: ELFCLASS32 (32-bit)
    Data encoding: ELFDATA2LSB (Little endian)
    Header version: EV_CURRENT (Current version)
    Operating System ABI: none
    ABI Version: 0
    File Type: ET_EXEC (Executable) (2)
    Machine: EM_ARM (ARM)

    Image Entry point: 0x1fff1841
    Flags: EF_ARM_HASENTRY + EF_ARM_ABI_FLOAT_SOFT (0x05000202)

    ARM ELF revision: 5 (ABI version 2)

    Conforms to Soft float procedure-call standard

    Built with
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: armasm [4d35ec]
    Component: ARM Compiler 5.05 (build 41) Tool: armasm [4d0eb9]
    Component: Arm Compiler for Embedded 6.19 Tool: armasm [5e73cb00]
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: armlink [4d35ed]
    Component: ARM Compiler 5.05 (build 41) Tool: armlink [4d0eb9]
    Component: Arm Compiler for Embedded 6.19 Tool: armlink [5e73cb00]

    Header size: 52 bytes (0x34)
    Program header entry size: 32 bytes (0x20)
    Section header entry size: 40 bytes (0x28)

    Program header entries: 3
    Section header entries: 19

    Program header offset: 293144 (0x00047918)
    Section header offset: 293240 (0x00047978)

    Section header string table index: 18

========================================================================

** Program header #0

    Type          : PT_LOAD (1)
    File Offset   : 17708 (0x452c)
    Virtual Addr  : 0x11020000
    Physical Addr : 0x11020000
    Size in file  : 12980 bytes (0x32b4)
    Size in memory: 12980 bytes (0x32b4)
    Flags         : PF_X + PF_R (0x5)
    Alignment     : 4


====================================

** Program header #1

    Type          : PT_LOAD (1)
    File Offset   : 16672 (0x4120)
    Virtual Addr  : 0x1fff0000
    Physical Addr : 0x1fff0000
    Size in file  : 1036 bytes (0x40c)
    Size in memory: 2048 bytes (0x800)
    Flags         : PF_W + PF_R (0x6)
    Alignment     : 4


====================================

** Program header #2

    Type          : PT_LOAD (1)
    File Offset   : 56 (0x38)
    Virtual Addr  : 0x1fff1838
    Physical Addr : 0x1fff1838
    Size in file  : 16616 bytes (0x40e8)
    Size in memory: 24560 bytes (0x5ff0)
    Flags         : PF_X + PF_W + PF_R + PF_ARM_ENTRY (0x80000007)
    Alignment     : 8


========================================================================

** Section #1

    Name        : ER_IROM1
    Type        : SHT_PROGBITS (0x00000001)
    Flags       : SHF_ALLOC + SHF_EXECINSTR (0x00000006)
    Addr        : 0x1fff1838
    File Offset : 56 (0x38)
    Size        : 16408 bytes (0x4018)
    Link        : SHN_UNDEF
    Info        : 0
    Alignment   : 8
    Entry Size  : 0

    $d.realdata
    RESET
    __Vectors
        0x1fff1838:    1fff7828    (x..    DCD    536836136
        0x1fff183c:    1fff1855    U...    DCD    536811605
    $t
    .ARM.Collect$$$$00000000
    .ARM.Collect$$$$00000001
    __Vectors_End
    __main
    _main_stk
        0x1fff1840:    4803        .H      LDR      r0,__lit__00000000 ; [0x1fff1850] = 0x1fff7828
        0x1fff1842:    4685        .F      MOV      sp,r0
    .ARM.Collect$$$$00000004
    _main_scatterload
        0x1fff1844:    f000f824    ..$.    BL       __scatterload ; 0x1fff1890
    .ARM.Collect$$$$00000008
    .ARM.Collect$$$$0000000A
    .ARM.Collect$$$$0000000B
    __main_after_scatterload
    _main_clock
    _main_cpp_init
    _main_init
        0x1fff1848:    4800        .H      LDR      r0,[pc,#0] ; [0x1fff184c] = 0x1fff2afd
        0x1fff184a:    4700        .G      BX       r0
    $d
        0x1fff184c:    1fff2afd    .*..    DCD    536816381
    .ARM.Collect$$$$00002712
    __lit__00000000
    .ARM.Collect$$$$0000000D
    .ARM.Collect$$$$0000000F
    __rt_final_cpp
    __rt_final_exit
        0x1fff1850:    1fff7828    (x..    DCD    536836136
    $t
    .text
    Reset_Handler
        0x1fff1854:    4802        .H      LDR      r0,[pc,#8] ; [0x1fff1860] = 0x1fff18f1
        0x1fff1856:    4780        .G      BLX      r0
        0x1fff1858:    4802        .H      LDR      r0,[pc,#8] ; [0x1fff1864] = 0x1fff1841
        0x1fff185a:    4700        .G      BX       r0
        0x1fff185c:    e7fe        ..      B        0x1fff185c ; Reset_Handler + 8
    $d
        0x1fff185e:    0000        ..      DCW    0
        0x1fff1860:    1fff18f1    ....    DCD    536811761
        0x1fff1864:    1fff1841    A...    DCD    536811585
    $t
    .text
    strstr
        0x1fff1868:    b530        0.      PUSH     {r4,r5,lr}
        0x1fff186a:    4605        .F      MOV      r5,r0
        0x1fff186c:    462a        *F      MOV      r2,r5
        0x1fff186e:    460b        .F      MOV      r3,r1
        0x1fff1870:    7810        .x      LDRB     r0,[r2,#0]
        0x1fff1872:    781c        .x      LDRB     r4,[r3,#0]
        0x1fff1874:    1c52        R.      ADDS     r2,r2,#1
        0x1fff1876:    1c5b        [.      ADDS     r3,r3,#1
        0x1fff1878:    2800        .(      CMP      r0,#0
        0x1fff187a:    d001        ..      BEQ      0x1fff1880 ; strstr + 24
        0x1fff187c:    42a0        .B      CMP      r0,r4
        0x1fff187e:    d0f7        ..      BEQ      0x1fff1870 ; strstr + 8
        0x1fff1880:    2c00        .,      CMP      r4,#0
        0x1fff1882:    d003        ..      BEQ      0x1fff188c ; strstr + 36
        0x1fff1884:    2800        .(      CMP      r0,#0
        0x1fff1886:    d002        ..      BEQ      0x1fff188e ; strstr + 38
        0x1fff1888:    1c6d        m.      ADDS     r5,r5,#1
        0x1fff188a:    e7ef        ..      B        0x1fff186c ; strstr + 4
        0x1fff188c:    4628        (F      MOV      r0,r5
        0x1fff188e:    bd30        0.      POP      {r4,r5,pc}
    .text
    __scatterload
    __scatterload_rt2
        0x1fff1890:    4c06        .L      LDR      r4,[pc,#24] ; [0x1fff18ac] = 0x1fff5800
        0x1fff1892:    2501        .%      MOVS     r5,#1
        0x1fff1894:    4e06        .N      LDR      r6,[pc,#24] ; [0x1fff18b0] = 0x1fff5850
        0x1fff1896:    e005        ..      B        0x1fff18a4 ; __scatterload + 20
        0x1fff1898:    68e3        .h      LDR      r3,[r4,#0xc]
        0x1fff189a:    cc07        ..      LDM      r4!,{r0-r2}
        0x1fff189c:    432b        +C      ORRS     r3,r3,r5
        0x1fff189e:    3c0c        .<      SUBS     r4,r4,#0xc
        0x1fff18a0:    4798        .G      BLX      r3
        0x1fff18a2:    3410        .4      ADDS     r4,r4,#0x10
        0x1fff18a4:    42b4        .B      CMP      r4,r6
        0x1fff18a6:    d3f7        ..      BCC      0x1fff1898 ; __scatterload + 8
        0x1fff18a8:    f7ffffce    ....    BL       __main_after_scatterload ; 0x1fff1848
    $d
        0x1fff18ac:    1fff5800    .X..    DCD    536827904
        0x1fff18b0:    1fff5850    PX..    DCD    536827984
    $t
    .text
    __decompress
    __decompress0
        0x1fff18b4:    b530        0.      PUSH     {r4,r5,lr}
        0x1fff18b6:    188c        ..      ADDS     r4,r1,r2
        0x1fff18b8:    7802        .x      LDRB     r2,[r0,#0]
        0x1fff18ba:    1c40        @.      ADDS     r0,r0,#1
        0x1fff18bc:    0713        ..      LSLS     r3,r2,#28
        0x1fff18be:    0f1b        ..      LSRS     r3,r3,#28
        0x1fff18c0:    d101        ..      BNE      0x1fff18c6 ; __decompress + 18
        0x1fff18c2:    7803        .x      LDRB     r3,[r0,#0]
        0x1fff18c4:    1c40        @.      ADDS     r0,r0,#1
        0x1fff18c6:    0912        ..      LSRS     r2,r2,#4
        0x1fff18c8:    d106        ..      BNE      0x1fff18d8 ; __decompress + 36
        0x1fff18ca:    7802        .x      LDRB     r2,[r0,#0]
        0x1fff18cc:    1c40        @.      ADDS     r0,r0,#1
        0x1fff18ce:    e003        ..      B        0x1fff18d8 ; __decompress + 36
        0x1fff18d0:    7805        .x      LDRB     r5,[r0,#0]
        0x1fff18d2:    700d        .p      STRB     r5,[r1,#0]
        0x1fff18d4:    1c40        @.      ADDS     r0,r0,#1
        0x1fff18d6:    1c49        I.      ADDS     r1,r1,#1
        0x1fff18d8:    1e5b        [.      SUBS     r3,r3,#1
        0x1fff18da:    d1f9        ..      BNE      0x1fff18d0 ; __decompress + 28
        0x1fff18dc:    e001        ..      B        0x1fff18e2 ; __decompress + 46
        0x1fff18de:    700b        .p      STRB     r3,[r1,#0]
        0x1fff18e0:    1c49        I.      ADDS     r1,r1,#1
        0x1fff18e2:    1e52        R.      SUBS     r2,r2,#1
        0x1fff18e4:    d1fb        ..      BNE      0x1fff18de ; __decompress + 42
        0x1fff18e6:    42a1        .B      CMP      r1,r4
        0x1fff18e8:    d3e6        ..      BCC      0x1fff18b8 ; __decompress + 4
        0x1fff18ea:    2000        .       MOVS     r0,#0
        0x1fff18ec:    bd30        0.      POP      {r4,r5,pc}
        0x1fff18ee:    0000        ..      MOVS     r0,r0
    $t.2
    SystemInit
        0x1fff18f0:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff18f8] = 0x1fff59b0
        0x1fff18f2:    4902        .I      LDR      r1,[pc,#8] ; [0x1fff18fc] = 0x17d7840
        0x1fff18f4:    6001        .`      STR      r1,[r0,#0]
        0x1fff18f6:    4770        pG      BX       lr
    $d.3
    __arm_cp.1_0
        0x1fff18f8:    1fff59b0    .Y..    DCD    536828336
    __arm_cp.1_1
        0x1fff18fc:    017d7840    @x}.    DCD    25000000
    $t.2
    _spif_wait_nobusy_x
        0x1fff1900:    b5f0        ..      PUSH     {r4-r7,lr}
        0x1fff1902:    b087        ..      SUB      sp,sp,#0x1c
        0x1fff1904:    9003        ..      STR      r0,[sp,#0xc]
        0x1fff1906:    482b        +H      LDR      r0,[pc,#172] ; [0x1fff19b4] = 0x7ffffff
        0x1fff1908:    9004        ..      STR      r0,[sp,#0x10]
        0x1fff190a:    2511        .%      MOVS     r5,#0x11
        0x1fff190c:    9804        ..      LDR      r0,[sp,#0x10]
        0x1fff190e:    2800        .(      CMP      r0,#0
        0x1fff1910:    d04c        L.      BEQ      0x1fff19ac ; _spif_wait_nobusy_x + 172
        0x1fff1912:    9502        ..      STR      r5,[sp,#8]
        0x1fff1914:    4f28        (O      LDR      r7,[pc,#160] ; [0x1fff19b8] = 0x4000c800
        0x1fff1916:    4c29        )L      LDR      r4,[pc,#164] ; [0x1fff19bc] = 0x4000c890
        0x1fff1918:    2500        .%      MOVS     r5,#0
        0x1fff191a:    9500        ..      STR      r5,[sp,#0]
        0x1fff191c:    9501        ..      STR      r5,[sp,#4]
        0x1fff191e:    2005        .       MOVS     r0,#5
        0x1fff1920:    2202        ."      MOVS     r2,#2
        0x1fff1922:    4629        )F      MOV      r1,r5
        0x1fff1924:    462b        +F      MOV      r3,r5
        0x1fff1926:    f001fa79    ..y.    BL       $Ven$TT$L$$spif_cmd ; 0x1fff2e1c
        0x1fff192a:    6820         h      LDR      r0,[r4,#0]
        0x1fff192c:    0780        ..      LSLS     r0,r0,#30
        0x1fff192e:    d508        ..      BPL      0x1fff1942 ; _spif_wait_nobusy_x + 66
        0x1fff1930:    6820         h      LDR      r0,[r4,#0]
        0x1fff1932:    0780        ..      LSLS     r0,r0,#30
        0x1fff1934:    d505        ..      BPL      0x1fff1942 ; _spif_wait_nobusy_x + 66
        0x1fff1936:    6820         h      LDR      r0,[r4,#0]
        0x1fff1938:    0780        ..      LSLS     r0,r0,#30
        0x1fff193a:    d502        ..      BPL      0x1fff1942 ; _spif_wait_nobusy_x + 66
        0x1fff193c:    6820         h      LDR      r0,[r4,#0]
        0x1fff193e:    0780        ..      LSLS     r0,r0,#30
        0x1fff1940:    d4f3        ..      BMI      0x1fff192a ; _spif_wait_nobusy_x + 42
        0x1fff1942:    2020                MOVS     r0,#0x20
        0x1fff1944:    9005        ..      STR      r0,[sp,#0x14]
        0x1fff1946:    9805        ..      LDR      r0,[sp,#0x14]
        0x1fff1948:    1e41        A.      SUBS     r1,r0,#1
        0x1fff194a:    9105        ..      STR      r1,[sp,#0x14]
        0x1fff194c:    2800        .(      CMP      r0,#0
        0x1fff194e:    d00e        ..      BEQ      0x1fff196e ; _spif_wait_nobusy_x + 110
        0x1fff1950:    9805        ..      LDR      r0,[sp,#0x14]
        0x1fff1952:    1e41        A.      SUBS     r1,r0,#1
        0x1fff1954:    9105        ..      STR      r1,[sp,#0x14]
        0x1fff1956:    2800        .(      CMP      r0,#0
        0x1fff1958:    d009        ..      BEQ      0x1fff196e ; _spif_wait_nobusy_x + 110
        0x1fff195a:    9805        ..      LDR      r0,[sp,#0x14]
        0x1fff195c:    1e41        A.      SUBS     r1,r0,#1
        0x1fff195e:    9105        ..      STR      r1,[sp,#0x14]
        0x1fff1960:    2800        .(      CMP      r0,#0
        0x1fff1962:    d004        ..      BEQ      0x1fff196e ; _spif_wait_nobusy_x + 110
        0x1fff1964:    9805        ..      LDR      r0,[sp,#0x14]
        0x1fff1966:    1e41        A.      SUBS     r1,r0,#1
        0x1fff1968:    9105        ..      STR      r1,[sp,#0x14]
        0x1fff196a:    2800        .(      CMP      r0,#0
        0x1fff196c:    d1eb        ..      BNE      0x1fff1946 ; _spif_wait_nobusy_x + 70
        0x1fff196e:    6838        8h      LDR      r0,[r7,#0]
        0x1fff1970:    2800        .(      CMP      r0,#0
        0x1fff1972:    d408        ..      BMI      0x1fff1986 ; _spif_wait_nobusy_x + 134
        0x1fff1974:    6838        8h      LDR      r0,[r7,#0]
        0x1fff1976:    2800        .(      CMP      r0,#0
        0x1fff1978:    d405        ..      BMI      0x1fff1986 ; _spif_wait_nobusy_x + 134
        0x1fff197a:    6838        8h      LDR      r0,[r7,#0]
        0x1fff197c:    2800        .(      CMP      r0,#0
        0x1fff197e:    d402        ..      BMI      0x1fff1986 ; _spif_wait_nobusy_x + 134
        0x1fff1980:    6838        8h      LDR      r0,[r7,#0]
        0x1fff1982:    2800        .(      CMP      r0,#0
        0x1fff1984:    d5f3        ..      BPL      0x1fff196e ; _spif_wait_nobusy_x + 110
        0x1fff1986:    ae06        ..      ADD      r6,sp,#0x18
        0x1fff1988:    2101        .!      MOVS     r1,#1
        0x1fff198a:    4630        0F      MOV      r0,r6
        0x1fff198c:    f001fa4c    ..L.    BL       $Ven$TT$L$$spif_rddata ; 0x1fff2e28
        0x1fff1990:    7830        0x      LDRB     r0,[r6,#0]
        0x1fff1992:    9903        ..      LDR      r1,[sp,#0xc]
        0x1fff1994:    4208        .B      TST      r0,r1
        0x1fff1996:    d009        ..      BEQ      0x1fff19ac ; _spif_wait_nobusy_x + 172
        0x1fff1998:    2005        .       MOVS     r0,#5
        0x1fff199a:    f001fa4b    ..K.    BL       $Ven$TT$L$$WaitRTCCount ; 0x1fff2e34
        0x1fff199e:    9804        ..      LDR      r0,[sp,#0x10]
        0x1fff19a0:    1e40        @.      SUBS     r0,r0,#1
        0x1fff19a2:    9004        ..      STR      r0,[sp,#0x10]
        0x1fff19a4:    9804        ..      LDR      r0,[sp,#0x10]
        0x1fff19a6:    2800        .(      CMP      r0,#0
        0x1fff19a8:    d1b6        ..      BNE      0x1fff1918 ; _spif_wait_nobusy_x + 24
        0x1fff19aa:    9d02        ..      LDR      r5,[sp,#8]
        0x1fff19ac:    4628        (F      MOV      r0,r5
        0x1fff19ae:    b007        ..      ADD      sp,sp,#0x1c
        0x1fff19b0:    bdf0        ..      POP      {r4-r7,pc}
        0x1fff19b2:    46c0        .F      MOV      r8,r8
    $d.3
    __arm_cp.1_0
        0x1fff19b4:    07ffffff    ....    DCD    134217727
    __arm_cp.1_1
        0x1fff19b8:    4000c800    ...@    DCD    1073793024
    __arm_cp.1_2
        0x1fff19bc:    4000c890    ...@    DCD    1073793168
    $t.0
    app_main
        0x1fff19c0:    b580        ..      PUSH     {r7,lr}
        0x1fff19c2:    f001fa3d    ..=.    BL       $Ven$TT$L$$osal_init_system ; 0x1fff2e40
        0x1fff19c6:    2001        .       MOVS     r0,#1
        0x1fff19c8:    f001fa40    ..@.    BL       $Ven$TT$L$$osal_pwrmgr_device ; 0x1fff2e4c
        0x1fff19cc:    f001fa44    ..D.    BL       $Ven$TT$L$$osal_start_system ; 0x1fff2e58
        0x1fff19d0:    2000        .       MOVS     r0,#0
        0x1fff19d2:    bd80        ..      POP      {r7,pc}
    fs_init
        0x1fff19d4:    b5f0        ..      PUSH     {r4-r7,lr}
        0x1fff19d6:    b09f        ..      SUB      sp,sp,#0x7c
        0x1fff19d8:    4cf5        .L      LDR      r4,[pc,#980] ; [0x1fff1db0] = 0x1fff5b80
        0x1fff19da:    21ff        .!      MOVS     r1,#0xff
        0x1fff19dc:    73a1        .s      STRB     r1,[r4,#0xe]
        0x1fff19de:    2610        .&      MOVS     r6,#0x10
        0x1fff19e0:    7366        fs      STRB     r6,[r4,#0xd]
        0x1fff19e2:    6860        `h      LDR      r0,[r4,#4]
        0x1fff19e4:    60a0        .`      STR      r0,[r4,#8]
        0x1fff19e6:    7860        `x      LDRB     r0,[r4,#1]
        0x1fff19e8:    7320         s      STRB     r0,[r4,#0xc]
        0x1fff19ea:    4620         F      MOV      r0,r4
        0x1fff19ec:    300f        .0      ADDS     r0,r0,#0xf
        0x1fff19ee:    2209        ."      MOVS     r2,#9
        0x1fff19f0:    9103        ..      STR      r1,[sp,#0xc]
        0x1fff19f2:    f001fa37    ..7.    BL       $Ven$TT$L$$osal_memset ; 0x1fff2e64
        0x1fff19f6:    a80a        ..      ADD      r0,sp,#0x28
        0x1fff19f8:    2500        .%      MOVS     r5,#0
        0x1fff19fa:    224e        N"      MOVS     r2,#0x4e
        0x1fff19fc:    4629        )F      MOV      r1,r5
        0x1fff19fe:    f001fa31    ..1.    BL       $Ven$TT$L$$osal_memset ; 0x1fff2e64
        0x1fff1a02:    4622        "F      MOV      r2,r4
        0x1fff1a04:    7b20         {      LDRB     r0,[r4,#0xc]
        0x1fff1a06:    2800        .(      CMP      r0,#0
        0x1fff1a08:    d04c        L.      BEQ      0x1fff1aa4 ; fs_init + 208
        0x1fff1a0a:    9601        ..      STR      r6,[sp,#4]
        0x1fff1a0c:    6857        Wh      LDR      r7,[r2,#4]
        0x1fff1a0e:    6893        .h      LDR      r3,[r2,#8]
        0x1fff1a10:    2001        .       MOVS     r0,#1
        0x1fff1a12:    9000        ..      STR      r0,[sp,#0]
        0x1fff1a14:    0300        ..      LSLS     r0,r0,#12
        0x1fff1a16:    9004        ..      STR      r0,[sp,#0x10]
        0x1fff1a18:    462e        .F      MOV      r6,r5
        0x1fff1a1a:    9502        ..      STR      r5,[sp,#8]
        0x1fff1a1c:    e006        ..      B        0x1fff1a2c ; fs_init + 88
        0x1fff1a1e:    2002        .       MOVS     r0,#2
        0x1fff1a20:    9002        ..      STR      r0,[sp,#8]
        0x1fff1a22:    9804        ..      LDR      r0,[sp,#0x10]
        0x1fff1a24:    182d        -.      ADDS     r5,r5,r0
        0x1fff1a26:    1c76        v.      ADDS     r6,r6,#1
        0x1fff1a28:    428e        .B      CMP      r6,r1
        0x1fff1a2a:    d243        C.      BCS      0x1fff1ab4 ; fs_init + 224
        0x1fff1a2c:    1958        X.      ADDS     r0,r3,r5
        0x1fff1a2e:    4287        .B      CMP      r7,r0
        0x1fff1a30:    d80d        ..      BHI      0x1fff1a4e ; fs_init + 122
        0x1fff1a32:    7851        Qx      LDRB     r1,[r2,#1]
        0x1fff1a34:    0309        ..      LSLS     r1,r1,#12
        0x1fff1a36:    19c9        ..      ADDS     r1,r1,r7
        0x1fff1a38:    4281        .B      CMP      r1,r0
        0x1fff1a3a:    d908        ..      BLS      0x1fff1a4e ; fs_init + 122
        0x1fff1a3c:    a906        ..      ADD      r1,sp,#0x18
        0x1fff1a3e:    2210        ."      MOVS     r2,#0x10
        0x1fff1a40:    f000fa8e    ....    BL       hal_flash_read ; 0x1fff1f60
        0x1fff1a44:    4ada        .J      LDR      r2,[pc,#872] ; [0x1fff1db0] = 0x1fff5b80
        0x1fff1a46:    6857        Wh      LDR      r7,[r2,#4]
        0x1fff1a48:    6893        .h      LDR      r3,[r2,#8]
        0x1fff1a4a:    9806        ..      LDR      r0,[sp,#0x18]
        0x1fff1a4c:    9005        ..      STR      r0,[sp,#0x14]
        0x1fff1a4e:    a806        ..      ADD      r0,sp,#0x18
        0x1fff1a50:    7901        .y      LDRB     r1,[r0,#4]
        0x1fff1a52:    9805        ..      LDR      r0,[sp,#0x14]
        0x1fff1a54:    4298        .B      CMP      r0,r3
        0x1fff1a56:    d115        ..      BNE      0x1fff1a84 ; fs_init + 176
        0x1fff1a58:    7b10        .{      LDRB     r0,[r2,#0xc]
        0x1fff1a5a:    4281        .B      CMP      r1,r0
        0x1fff1a5c:    d112        ..      BNE      0x1fff1a84 ; fs_init + 176
        0x1fff1a5e:    7b50        P{      LDRB     r0,[r2,#0xd]
        0x1fff1a60:    ac06        ..      ADD      r4,sp,#0x18
        0x1fff1a62:    7964        dy      LDRB     r4,[r4,#5]
        0x1fff1a64:    4284        .B      CMP      r4,r0
        0x1fff1a66:    d10d        ..      BNE      0x1fff1a84 ; fs_init + 176
        0x1fff1a68:    a806        ..      ADD      r0,sp,#0x18
        0x1fff1a6a:    7980        .y      LDRB     r0,[r0,#6]
        0x1fff1a6c:    7854        Tx      LDRB     r4,[r2,#1]
        0x1fff1a6e:    1e64        d.      SUBS     r4,r4,#1
        0x1fff1a70:    4284        .B      CMP      r4,r0
        0x1fff1a72:    dc00        ..      BGT      0x1fff1a76 ; fs_init + 162
        0x1fff1a74:    e08c        ..      B        0x1fff1b90 ; fs_init + 444
        0x1fff1a76:    ac0a        ..      ADD      r4,sp,#0x28
        0x1fff1a78:    55a0        .U      STRB     r0,[r4,r6]
        0x1fff1a7a:    7390        .s      STRB     r0,[r2,#0xe]
        0x1fff1a7c:    4286        .B      CMP      r6,r0
        0x1fff1a7e:    d0ce        ..      BEQ      0x1fff1a1e ; fs_init + 74
        0x1fff1a80:    2003        .       MOVS     r0,#3
        0x1fff1a82:    e7cd        ..      B        0x1fff1a20 ; fs_init + 76
        0x1fff1a84:    a806        ..      ADD      r0,sp,#0x18
        0x1fff1a86:    2420         $      MOVS     r4,#0x20
        0x1fff1a88:    9a05        ..      LDR      r2,[sp,#0x14]
        0x1fff1a8a:    1c52        R.      ADDS     r2,r2,#1
        0x1fff1a8c:    d10f        ..      BNE      0x1fff1aae ; fs_init + 218
        0x1fff1a8e:    29ff        .)      CMP      r1,#0xff
        0x1fff1a90:    d10d        ..      BNE      0x1fff1aae ; fs_init + 218
        0x1fff1a92:    7940        @y      LDRB     r0,[r0,#5]
        0x1fff1a94:    28ff        .(      CMP      r0,#0xff
        0x1fff1a96:    d10a        ..      BNE      0x1fff1aae ; fs_init + 218
        0x1fff1a98:    a80a        ..      ADD      r0,sp,#0x28
        0x1fff1a9a:    9903        ..      LDR      r1,[sp,#0xc]
        0x1fff1a9c:    5581        .U      STRB     r1,[r0,r6]
        0x1fff1a9e:    4ac4        .J      LDR      r2,[pc,#784] ; [0x1fff1db0] = 0x1fff5b80
        0x1fff1aa0:    7b11        .{      LDRB     r1,[r2,#0xc]
        0x1fff1aa2:    e7be        ..      B        0x1fff1a22 ; fs_init + 78
        0x1fff1aa4:    7b90        .{      LDRB     r0,[r2,#0xe]
        0x1fff1aa6:    2100        .!      MOVS     r1,#0
        0x1fff1aa8:    28ff        .(      CMP      r0,#0xff
        0x1fff1aaa:    d065        e.      BEQ      0x1fff1b78 ; fs_init + 420
        0x1fff1aac:    460c        .F      MOV      r4,r1
        0x1fff1aae:    4620         F      MOV      r0,r4
        0x1fff1ab0:    b01f        ..      ADD      sp,sp,#0x7c
        0x1fff1ab2:    bdf0        ..      POP      {r4-r7,pc}
        0x1fff1ab4:    9802        ..      LDR      r0,[sp,#8]
        0x1fff1ab6:    b2c0        ..      UXTB     r0,r0
        0x1fff1ab8:    1e40        @.      SUBS     r0,r0,#1
        0x1fff1aba:    4613        .F      MOV      r3,r2
        0x1fff1abc:    4242        BB      RSBS     r2,r0,#0
        0x1fff1abe:    4142        BA      ADCS     r2,r2,r0
        0x1fff1ac0:    7b98        .{      LDRB     r0,[r3,#0xe]
        0x1fff1ac2:    38ff        .8      SUBS     r0,r0,#0xff
        0x1fff1ac4:    4243        CB      RSBS     r3,r0,#0
        0x1fff1ac6:    4143        CA      ADCS     r3,r3,r0
        0x1fff1ac8:    4313        .C      ORRS     r3,r3,r2
        0x1fff1aca:    d02c        ,.      BEQ      0x1fff1b26 ; fs_init + 338
        0x1fff1acc:    2902        .)      CMP      r1,#2
        0x1fff1ace:    4ab8        .J      LDR      r2,[pc,#736] ; [0x1fff1db0] = 0x1fff5b80
        0x1fff1ad0:    d353        S.      BCC      0x1fff1b7a ; fs_init + 422
        0x1fff1ad2:    2600        .&      MOVS     r6,#0
        0x1fff1ad4:    4634        4F      MOV      r4,r6
        0x1fff1ad6:    9405        ..      STR      r4,[sp,#0x14]
        0x1fff1ad8:    7394        .s      STRB     r4,[r2,#0xe]
        0x1fff1ada:    6897        .h      LDR      r7,[r2,#8]
        0x1fff1adc:    4615        .F      MOV      r5,r2
        0x1fff1ade:    f002fb5f    .._.    BL       __psr ; 0x1fff41a0
        0x1fff1ae2:    241f        .$      MOVS     r4,#0x1f
        0x1fff1ae4:    0680        ..      LSLS     r0,r0,#26
        0x1fff1ae6:    d1e2        ..      BNE      0x1fff1aae ; fs_init + 218
        0x1fff1ae8:    19f0        ..      ADDS     r0,r6,r7
        0x1fff1aea:    6869        ih      LDR      r1,[r5,#4]
        0x1fff1aec:    4281        .B      CMP      r1,r0
        0x1fff1aee:    d8de        ..      BHI      0x1fff1aae ; fs_init + 218
        0x1fff1af0:    0782        ..      LSLS     r2,r0,#30
        0x1fff1af2:    d1dc        ..      BNE      0x1fff1aae ; fs_init + 218
        0x1fff1af4:    4bae        .K      LDR      r3,[pc,#696] ; [0x1fff1db0] = 0x1fff5b80
        0x1fff1af6:    785a        Zx      LDRB     r2,[r3,#1]
        0x1fff1af8:    0312        ..      LSLS     r2,r2,#12
        0x1fff1afa:    1851        Q.      ADDS     r1,r2,r1
        0x1fff1afc:    4281        .B      CMP      r1,r0
        0x1fff1afe:    d9d6        ..      BLS      0x1fff1aae ; fs_init + 218
        0x1fff1b00:    4619        .F      MOV      r1,r3
        0x1fff1b02:    3108        .1      ADDS     r1,r1,#8
        0x1fff1b04:    2210        ."      MOVS     r2,#0x10
        0x1fff1b06:    f000facd    ....    BL       hal_flash_write ; 0x1fff20a4
        0x1fff1b0a:    2800        .(      CMP      r0,#0
        0x1fff1b0c:    d1cf        ..      BNE      0x1fff1aae ; fs_init + 218
        0x1fff1b0e:    9804        ..      LDR      r0,[sp,#0x10]
        0x1fff1b10:    1836        6.      ADDS     r6,r6,r0
        0x1fff1b12:    9c05        ..      LDR      r4,[sp,#0x14]
        0x1fff1b14:    1c64        d.      ADDS     r4,r4,#1
        0x1fff1b16:    b2e0        ..      UXTB     r0,r4
        0x1fff1b18:    4ba5        .K      LDR      r3,[pc,#660] ; [0x1fff1db0] = 0x1fff5b80
        0x1fff1b1a:    7b19        .{      LDRB     r1,[r3,#0xc]
        0x1fff1b1c:    1e4a        J.      SUBS     r2,r1,#1
        0x1fff1b1e:    4282        .B      CMP      r2,r0
        0x1fff1b20:    461a        .F      MOV      r2,r3
        0x1fff1b22:    dcd8        ..      BGT      0x1fff1ad6 ; fs_init + 258
        0x1fff1b24:    e029        ).      B        0x1fff1b7a ; fs_init + 422
        0x1fff1b26:    2900        .)      CMP      r1,#0
        0x1fff1b28:    d036        6.      BEQ      0x1fff1b98 ; fs_init + 452
        0x1fff1b2a:    2003        .       MOVS     r0,#3
        0x1fff1b2c:    1a42        B.      SUBS     r2,r0,r1
        0x1fff1b2e:    2002        .       MOVS     r0,#2
        0x1fff1b30:    43c0        .C      MVNS     r0,r0
        0x1fff1b32:    1a43        C.      SUBS     r3,r0,r1
        0x1fff1b34:    424d        MB      RSBS     r5,r1,#0
        0x1fff1b36:    2000        .       MOVS     r0,#0
        0x1fff1b38:    ac0a        ..      ADD      r4,sp,#0x28
        0x1fff1b3a:    5c24        $\      LDRB     r4,[r4,r0]
        0x1fff1b3c:    2c00        .,      CMP      r4,#0
        0x1fff1b3e:    d034        4.      BEQ      0x1fff1baa ; fs_init + 470
        0x1fff1b40:    181e        ..      ADDS     r6,r3,r0
        0x1fff1b42:    2400        .$      MOVS     r4,#0
        0x1fff1b44:    1d36        6.      ADDS     r6,r6,#4
        0x1fff1b46:    d0b2        ..      BEQ      0x1fff1aae ; fs_init + 218
        0x1fff1b48:    ae0a        ..      ADD      r6,sp,#0x28
        0x1fff1b4a:    1836        6.      ADDS     r6,r6,r0
        0x1fff1b4c:    7876        vx      LDRB     r6,[r6,#1]
        0x1fff1b4e:    2e00        ..      CMP      r6,#0
        0x1fff1b50:    d026        &.      BEQ      0x1fff1ba0 ; fs_init + 460
        0x1fff1b52:    182e        ..      ADDS     r6,r5,r0
        0x1fff1b54:    1cb6        ..      ADDS     r6,r6,#2
        0x1fff1b56:    d0aa        ..      BEQ      0x1fff1aae ; fs_init + 218
        0x1fff1b58:    ae0a        ..      ADD      r6,sp,#0x28
        0x1fff1b5a:    1836        6.      ADDS     r6,r6,r0
        0x1fff1b5c:    78b6        .x      LDRB     r6,[r6,#2]
        0x1fff1b5e:    2e00        ..      CMP      r6,#0
        0x1fff1b60:    d020         .      BEQ      0x1fff1ba4 ; fs_init + 464
        0x1fff1b62:    1816        ..      ADDS     r6,r2,r0
        0x1fff1b64:    d0a3        ..      BEQ      0x1fff1aae ; fs_init + 218
        0x1fff1b66:    ae0a        ..      ADD      r6,sp,#0x28
        0x1fff1b68:    1836        6.      ADDS     r6,r6,r0
        0x1fff1b6a:    78f6        .x      LDRB     r6,[r6,#3]
        0x1fff1b6c:    2e00        ..      CMP      r6,#0
        0x1fff1b6e:    d01b        ..      BEQ      0x1fff1ba8 ; fs_init + 468
        0x1fff1b70:    1d00        ..      ADDS     r0,r0,#4
        0x1fff1b72:    182e        ..      ADDS     r6,r5,r0
        0x1fff1b74:    d1e0        ..      BNE      0x1fff1b38 ; fs_init + 356
        0x1fff1b76:    e79a        ..      B        0x1fff1aae ; fs_init + 218
        0x1fff1b78:    9601        ..      STR      r6,[sp,#4]
        0x1fff1b7a:    9801        ..      LDR      r0,[sp,#4]
        0x1fff1b7c:    8350        P.      STRH     r0,[r2,#0x1a]
        0x1fff1b7e:    2400        .$      MOVS     r4,#0
        0x1fff1b80:    7614        .v      STRB     r4,[r2,#0x18]
        0x1fff1b82:    2001        .       MOVS     r0,#1
        0x1fff1b84:    7010        .p      STRB     r0,[r2,#0]
        0x1fff1b86:    1e48        H.      SUBS     r0,r1,#1
        0x1fff1b88:    7650        Pv      STRB     r0,[r2,#0x19]
        0x1fff1b8a:    4620         F      MOV      r0,r4
        0x1fff1b8c:    b01f        ..      ADD      sp,sp,#0x7c
        0x1fff1b8e:    bdf0        ..      POP      {r4-r7,pc}
        0x1fff1b90:    2420         $      MOVS     r4,#0x20
        0x1fff1b92:    4620         F      MOV      r0,r4
        0x1fff1b94:    b01f        ..      ADD      sp,sp,#0x7c
        0x1fff1b96:    bdf0        ..      POP      {r4-r7,pc}
        0x1fff1b98:    2400        .$      MOVS     r4,#0
        0x1fff1b9a:    4620         F      MOV      r0,r4
        0x1fff1b9c:    b01f        ..      ADD      sp,sp,#0x7c
        0x1fff1b9e:    bdf0        ..      POP      {r4-r7,pc}
        0x1fff1ba0:    1c40        @.      ADDS     r0,r0,#1
        0x1fff1ba2:    e002        ..      B        0x1fff1baa ; fs_init + 470
        0x1fff1ba4:    1c80        ..      ADDS     r0,r0,#2
        0x1fff1ba6:    e000        ..      B        0x1fff1baa ; fs_init + 470
        0x1fff1ba8:    1cc0        ..      ADDS     r0,r0,#3
        0x1fff1baa:    4a81        .J      LDR      r2,[pc,#516] ; [0x1fff1db0] = 0x1fff5b80
        0x1fff1bac:    9b00        ..      LDR      r3,[sp,#0]
        0x1fff1bae:    7013        .p      STRB     r3,[r2,#0]
        0x1fff1bb0:    1840        @.      ADDS     r0,r0,r1
        0x1fff1bb2:    1e40        @.      SUBS     r0,r0,#1
        0x1fff1bb4:    b280        ..      UXTH     r0,r0
        0x1fff1bb6:    4614        .F      MOV      r4,r2
        0x1fff1bb8:    f001f95a    ..Z.    BL       $Ven$TT$L$$__aeabi_uidivmod ; 0x1fff2e70
        0x1fff1bbc:    7661        av      STRB     r1,[r4,#0x19]
        0x1fff1bbe:    2400        .$      MOVS     r4,#0
        0x1fff1bc0:    941e        ..      STR      r4,[sp,#0x78]
        0x1fff1bc2:    a91e        ..      ADD      r1,sp,#0x78
        0x1fff1bc4:    4620         F      MOV      r0,r4
        0x1fff1bc6:    4622        "F      MOV      r2,r4
        0x1fff1bc8:    f000f816    ....    BL       fs_search_items ; 0x1fff1bf8
        0x1fff1bcc:    2821        !(      CMP      r0,#0x21
        0x1fff1bce:    d003        ..      BEQ      0x1fff1bd8 ; fs_init + 516
        0x1fff1bd0:    2800        .(      CMP      r0,#0
        0x1fff1bd2:    d104        ..      BNE      0x1fff1bde ; fs_init + 522
        0x1fff1bd4:    991e        ..      LDR      r1,[sp,#0x78]
        0x1fff1bd6:    9104        ..      STR      r1,[sp,#0x10]
        0x1fff1bd8:    4975        uI      LDR      r1,[pc,#468] ; [0x1fff1db0] = 0x1fff5b80
        0x1fff1bda:    9a04        ..      LDR      r2,[sp,#0x10]
        0x1fff1bdc:    834a        J.      STRH     r2,[r1,#0x1a]
        0x1fff1bde:    b2c0        ..      UXTB     r0,r0
        0x1fff1be0:    2800        .(      CMP      r0,#0
        0x1fff1be2:    d101        ..      BNE      0x1fff1be8 ; fs_init + 532
        0x1fff1be4:    4601        .F      MOV      r1,r0
        0x1fff1be6:    e000        ..      B        0x1fff1bea ; fs_init + 534
        0x1fff1be8:    212a        *!      MOVS     r1,#0x2a
        0x1fff1bea:    2821        !(      CMP      r0,#0x21
        0x1fff1bec:    d100        ..      BNE      0x1fff1bf0 ; fs_init + 540
        0x1fff1bee:    e75e        ^.      B        0x1fff1aae ; fs_init + 218
        0x1fff1bf0:    460c        .F      MOV      r4,r1
        0x1fff1bf2:    4620         F      MOV      r0,r4
        0x1fff1bf4:    b01f        ..      ADD      sp,sp,#0x7c
        0x1fff1bf6:    bdf0        ..      POP      {r4-r7,pc}
    fs_search_items
        0x1fff1bf8:    b5f0        ..      PUSH     {r4-r7,lr}
        0x1fff1bfa:    b085        ..      SUB      sp,sp,#0x14
        0x1fff1bfc:    9201        ..      STR      r2,[sp,#4]
        0x1fff1bfe:    9102        ..      STR      r1,[sp,#8]
        0x1fff1c00:    4604        .F      MOV      r4,r0
        0x1fff1c02:    4b6b        kK      LDR      r3,[pc,#428] ; [0x1fff1db0] = 0x1fff5b80
        0x1fff1c04:    7858        Xx      LDRB     r0,[r3,#1]
        0x1fff1c06:    2802        .(      CMP      r0,#2
        0x1fff1c08:    d200        ..      BCS      0x1fff1c0c ; fs_search_items + 20
        0x1fff1c0a:    e0b2        ..      B        0x1fff1d72 ; fs_search_items + 378
        0x1fff1c0c:    2601        .&      MOVS     r6,#1
        0x1fff1c0e:    2700        .'      MOVS     r7,#0
        0x1fff1c10:    4635        5F      MOV      r5,r6
        0x1fff1c12:    e009        ..      B        0x1fff1c28 ; fs_search_items + 48
        0x1fff1c14:    4867        gH      LDR      r0,[pc,#412] ; [0x1fff1db4] = 0xfffffeff
        0x1fff1c16:    180d        ..      ADDS     r5,r1,r0
        0x1fff1c18:    2701        .'      MOVS     r7,#1
        0x1fff1c1a:    7858        Xx      LDRB     r0,[r3,#1]
        0x1fff1c1c:    9e00        ..      LDR      r6,[sp,#0]
        0x1fff1c1e:    1c76        v.      ADDS     r6,r6,#1
        0x1fff1c20:    b2b1        ..      UXTH     r1,r6
        0x1fff1c22:    4281        .B      CMP      r1,r0
        0x1fff1c24:    d300        ..      BCC      0x1fff1c28 ; fs_search_items + 48
        0x1fff1c26:    e0a4        ..      B        0x1fff1d72 ; fs_search_items + 378
        0x1fff1c28:    7e58        X~      LDRB     r0,[r3,#0x19]
        0x1fff1c2a:    1980        ..      ADDS     r0,r0,r6
        0x1fff1c2c:    b280        ..      UXTH     r0,r0
        0x1fff1c2e:    7b19        .{      LDRB     r1,[r3,#0xc]
        0x1fff1c30:    f001f91e    ....    BL       $Ven$TT$L$$__aeabi_uidivmod ; 0x1fff2e70
        0x1fff1c34:    b2a8        ..      UXTH     r0,r5
        0x1fff1c36:    28ff        .(      CMP      r0,#0xff
        0x1fff1c38:    9600        ..      STR      r6,[sp,#0]
        0x1fff1c3a:    d200        ..      BCS      0x1fff1c3e ; fs_search_items + 70
        0x1fff1c3c:    e093        ..      B        0x1fff1d66 ; fs_search_items + 366
        0x1fff1c3e:    3dff        .=      SUBS     r5,r5,#0xff
        0x1fff1c40:    b2a8        ..      UXTH     r0,r5
        0x1fff1c42:    28fe        .(      CMP      r0,#0xfe
        0x1fff1c44:    4b5a        ZK      LDR      r3,[pc,#360] ; [0x1fff1db0] = 0x1fff5b80
        0x1fff1c46:    d8e8        ..      BHI      0x1fff1c1a ; fs_search_items + 34
        0x1fff1c48:    2c00        .,      CMP      r4,#0
        0x1fff1c4a:    d100        ..      BNE      0x1fff1c4e ; fs_search_items + 86
        0x1fff1c4c:    e08f        ..      B        0x1fff1d6e ; fs_search_items + 374
        0x1fff1c4e:    0308        ..      LSLS     r0,r1,#12
        0x1fff1c50:    9003        ..      STR      r0,[sp,#0xc]
        0x1fff1c52:    2001        .       MOVS     r0,#1
        0x1fff1c54:    4606        .F      MOV      r6,r0
        0x1fff1c56:    e005        ..      B        0x1fff1c64 ; fs_search_items + 108
        0x1fff1c58:    2501        .%      MOVS     r5,#1
        0x1fff1c5a:    1c76        v.      ADDS     r6,r6,#1
        0x1fff1c5c:    b2b0        ..      UXTH     r0,r6
        0x1fff1c5e:    2700        .'      MOVS     r7,#0
        0x1fff1c60:    0a01        ..      LSRS     r1,r0,#8
        0x1fff1c62:    d1da        ..      BNE      0x1fff1c1a ; fs_search_items + 34
        0x1fff1c64:    07f9        ..      LSLS     r1,r7,#31
        0x1fff1c66:    d001        ..      BEQ      0x1fff1c6c ; fs_search_items + 116
        0x1fff1c68:    19ae        ..      ADDS     r6,r5,r6
        0x1fff1c6a:    e008        ..      B        0x1fff1c7e ; fs_search_items + 134
        0x1fff1c6c:    b2aa        ..      UXTH     r2,r5
        0x1fff1c6e:    2a02        .*      CMP      r2,#2
        0x1fff1c70:    d305        ..      BCC      0x1fff1c7e ; fs_search_items + 134
        0x1fff1c72:    19a9        ..      ADDS     r1,r5,r6
        0x1fff1c74:    1880        ..      ADDS     r0,r0,r2
        0x1fff1c76:    1e80        ..      SUBS     r0,r0,#2
        0x1fff1c78:    28fe        .(      CMP      r0,#0xfe
        0x1fff1c7a:    d8cb        ..      BHI      0x1fff1c14 ; fs_search_items + 28
        0x1fff1c7c:    1e4e        N.      SUBS     r6,r1,#1
        0x1fff1c7e:    b2b0        ..      UXTH     r0,r6
        0x1fff1c80:    0100        ..      LSLS     r0,r0,#4
        0x1fff1c82:    9903        ..      LDR      r1,[sp,#0xc]
        0x1fff1c84:    1847        G.      ADDS     r7,r0,r1
        0x1fff1c86:    6859        Yh      LDR      r1,[r3,#4]
        0x1fff1c88:    6898        .h      LDR      r0,[r3,#8]
        0x1fff1c8a:    1838        8.      ADDS     r0,r7,r0
        0x1fff1c8c:    4281        .B      CMP      r1,r0
        0x1fff1c8e:    d809        ..      BHI      0x1fff1ca4 ; fs_search_items + 172
        0x1fff1c90:    785a        Zx      LDRB     r2,[r3,#1]
        0x1fff1c92:    0312        ..      LSLS     r2,r2,#12
        0x1fff1c94:    1851        Q.      ADDS     r1,r2,r1
        0x1fff1c96:    4281        .B      CMP      r1,r0
        0x1fff1c98:    d904        ..      BLS      0x1fff1ca4 ; fs_search_items + 172
        0x1fff1c9a:    a904        ..      ADD      r1,sp,#0x10
        0x1fff1c9c:    2204        ."      MOVS     r2,#4
        0x1fff1c9e:    f000f95f    .._.    BL       hal_flash_read ; 0x1fff1f60
        0x1fff1ca2:    4b43        CK      LDR      r3,[pc,#268] ; [0x1fff1db0] = 0x1fff5b80
        0x1fff1ca4:    2c02        .,      CMP      r4,#2
        0x1fff1ca6:    d00d        ..      BEQ      0x1fff1cc4 ; fs_search_items + 204
        0x1fff1ca8:    2c01        .,      CMP      r4,#1
        0x1fff1caa:    d015        ..      BEQ      0x1fff1cd8 ; fs_search_items + 224
        0x1fff1cac:    2c00        .,      CMP      r4,#0
        0x1fff1cae:    d16c        l.      BNE      0x1fff1d8a ; fs_search_items + 402
        0x1fff1cb0:    a804        ..      ADD      r0,sp,#0x10
        0x1fff1cb2:    8840        @.      LDRH     r0,[r0,#2]
        0x1fff1cb4:    2103        .!      MOVS     r1,#3
        0x1fff1cb6:    4001        .@      ANDS     r1,r1,r0
        0x1fff1cb8:    d020         .      BEQ      0x1fff1cfc ; fs_search_items + 260
        0x1fff1cba:    2902        .)      CMP      r1,#2
        0x1fff1cbc:    d01e        ..      BEQ      0x1fff1cfc ; fs_search_items + 260
        0x1fff1cbe:    2903        .)      CMP      r1,#3
        0x1fff1cc0:    d1cb        ..      BNE      0x1fff1c5a ; fs_search_items + 98
        0x1fff1cc2:    e065        e.      B        0x1fff1d90 ; fs_search_items + 408
        0x1fff1cc4:    a804        ..      ADD      r0,sp,#0x10
        0x1fff1cc6:    8840        @.      LDRH     r0,[r0,#2]
        0x1fff1cc8:    2103        .!      MOVS     r1,#3
        0x1fff1cca:    4001        .@      ANDS     r1,r1,r0
        0x1fff1ccc:    d02a        *.      BEQ      0x1fff1d24 ; fs_search_items + 300
        0x1fff1cce:    2902        .)      CMP      r1,#2
        0x1fff1cd0:    d014        ..      BEQ      0x1fff1cfc ; fs_search_items + 260
        0x1fff1cd2:    2903        .)      CMP      r1,#3
        0x1fff1cd4:    d1c1        ..      BNE      0x1fff1c5a ; fs_search_items + 98
        0x1fff1cd6:    e060        `.      B        0x1fff1d9a ; fs_search_items + 418
        0x1fff1cd8:    a804        ..      ADD      r0,sp,#0x10
        0x1fff1cda:    8840        @.      LDRH     r0,[r0,#2]
        0x1fff1cdc:    2103        .!      MOVS     r1,#3
        0x1fff1cde:    4001        .@      ANDS     r1,r1,r0
        0x1fff1ce0:    d004        ..      BEQ      0x1fff1cec ; fs_search_items + 244
        0x1fff1ce2:    2902        .)      CMP      r1,#2
        0x1fff1ce4:    d002        ..      BEQ      0x1fff1cec ; fs_search_items + 244
        0x1fff1ce6:    2903        .)      CMP      r1,#3
        0x1fff1ce8:    d1b7        ..      BNE      0x1fff1c5a ; fs_search_items + 98
        0x1fff1cea:    e059        Y.      B        0x1fff1da0 ; fs_search_items + 424
        0x1fff1cec:    2902        .)      CMP      r1,#2
        0x1fff1cee:    d105        ..      BNE      0x1fff1cfc ; fs_search_items + 260
        0x1fff1cf0:    9902        ..      LDR      r1,[sp,#8]
        0x1fff1cf2:    8809        ..      LDRH     r1,[r1,#0]
        0x1fff1cf4:    aa04        ..      ADD      r2,sp,#0x10
        0x1fff1cf6:    8812        ..      LDRH     r2,[r2,#0]
        0x1fff1cf8:    428a        .B      CMP      r2,r1
        0x1fff1cfa:    d054        T.      BEQ      0x1fff1da6 ; fs_search_items + 430
        0x1fff1cfc:    210c        .!      MOVS     r1,#0xc
        0x1fff1cfe:    4001        .@      ANDS     r1,r1,r0
        0x1fff1d00:    2904        .)      CMP      r1,#4
        0x1fff1d02:    d1a9        ..      BNE      0x1fff1c58 ; fs_search_items + 96
        0x1fff1d04:    0901        ..      LSRS     r1,r0,#4
        0x1fff1d06:    4a2c        ,J      LDR      r2,[pc,#176] ; [0x1fff1db8] = 0xffffaaab
        0x1fff1d08:    4351        QC      MULS     r1,r2,r1
        0x1fff1d0a:    038a        ..      LSLS     r2,r1,#14
        0x1fff1d0c:    b289        ..      UXTH     r1,r1
        0x1fff1d0e:    0889        ..      LSRS     r1,r1,#2
        0x1fff1d10:    1889        ..      ADDS     r1,r1,r2
        0x1fff1d12:    b289        ..      UXTH     r1,r1
        0x1fff1d14:    4a29        )J      LDR      r2,[pc,#164] ; [0x1fff1dbc] = 0xaaab
        0x1fff1d16:    4350        PC      MULS     r0,r2,r0
        0x1fff1d18:    0dc5        ..      LSRS     r5,r0,#23
        0x1fff1d1a:    4829        )H      LDR      r0,[pc,#164] ; [0x1fff1dc0] = 0x1555
        0x1fff1d1c:    4281        .B      CMP      r1,r0
        0x1fff1d1e:    d99c        ..      BLS      0x1fff1c5a ; fs_search_items + 98
        0x1fff1d20:    1c6d        m.      ADDS     r5,r5,#1
        0x1fff1d22:    e79a        ..      B        0x1fff1c5a ; fs_search_items + 98
        0x1fff1d24:    210c        .!      MOVS     r1,#0xc
        0x1fff1d26:    4602        .F      MOV      r2,r0
        0x1fff1d28:    400a        .@      ANDS     r2,r2,r1
        0x1fff1d2a:    2a04        .*      CMP      r2,#4
        0x1fff1d2c:    d111        ..      BNE      0x1fff1d52 ; fs_search_items + 346
        0x1fff1d2e:    0901        ..      LSRS     r1,r0,#4
        0x1fff1d30:    4a21        !J      LDR      r2,[pc,#132] ; [0x1fff1db8] = 0xffffaaab
        0x1fff1d32:    4351        QC      MULS     r1,r2,r1
        0x1fff1d34:    038a        ..      LSLS     r2,r1,#14
        0x1fff1d36:    b289        ..      UXTH     r1,r1
        0x1fff1d38:    0889        ..      LSRS     r1,r1,#2
        0x1fff1d3a:    1889        ..      ADDS     r1,r1,r2
        0x1fff1d3c:    b289        ..      UXTH     r1,r1
        0x1fff1d3e:    4a1f        .J      LDR      r2,[pc,#124] ; [0x1fff1dbc] = 0xaaab
        0x1fff1d40:    4350        PC      MULS     r0,r2,r0
        0x1fff1d42:    0dc5        ..      LSRS     r5,r0,#23
        0x1fff1d44:    481e        .H      LDR      r0,[pc,#120] ; [0x1fff1dc0] = 0x1555
        0x1fff1d46:    4281        .B      CMP      r1,r0
        0x1fff1d48:    d900        ..      BLS      0x1fff1d4c ; fs_search_items + 340
        0x1fff1d4a:    1c6d        m.      ADDS     r5,r5,#1
        0x1fff1d4c:    210c        .!      MOVS     r1,#0xc
        0x1fff1d4e:    4369        iC      MULS     r1,r5,r1
        0x1fff1d50:    e000        ..      B        0x1fff1d54 ; fs_search_items + 348
        0x1fff1d52:    2501        .%      MOVS     r5,#1
        0x1fff1d54:    9a02        ..      LDR      r2,[sp,#8]
        0x1fff1d56:    6810        .h      LDR      r0,[r2,#0]
        0x1fff1d58:    1840        @.      ADDS     r0,r0,r1
        0x1fff1d5a:    6010        .`      STR      r0,[r2,#0]
        0x1fff1d5c:    9901        ..      LDR      r1,[sp,#4]
        0x1fff1d5e:    6808        .h      LDR      r0,[r1,#0]
        0x1fff1d60:    1c40        @.      ADDS     r0,r0,#1
        0x1fff1d62:    6008        .`      STR      r0,[r1,#0]
        0x1fff1d64:    e779        y.      B        0x1fff1c5a ; fs_search_items + 98
        0x1fff1d66:    4b12        .K      LDR      r3,[pc,#72] ; [0x1fff1db0] = 0x1fff5b80
        0x1fff1d68:    2c00        .,      CMP      r4,#0
        0x1fff1d6a:    d000        ..      BEQ      0x1fff1d6e ; fs_search_items + 374
        0x1fff1d6c:    e76f        o.      B        0x1fff1c4e ; fs_search_items + 86
        0x1fff1d6e:    7619        .v      STRB     r1,[r3,#0x18]
        0x1fff1d70:    e76d        m.      B        0x1fff1c4e ; fs_search_items + 86
        0x1fff1d72:    2c01        .,      CMP      r4,#1
        0x1fff1d74:    d003        ..      BEQ      0x1fff1d7e ; fs_search_items + 390
        0x1fff1d76:    2000        .       MOVS     r0,#0
        0x1fff1d78:    2c00        .,      CMP      r4,#0
        0x1fff1d7a:    d104        ..      BNE      0x1fff1d86 ; fs_search_items + 398
        0x1fff1d7c:    e002        ..      B        0x1fff1d84 ; fs_search_items + 396
        0x1fff1d7e:    2025        %       MOVS     r0,#0x25
        0x1fff1d80:    2c00        .,      CMP      r4,#0
        0x1fff1d82:    d100        ..      BNE      0x1fff1d86 ; fs_search_items + 398
        0x1fff1d84:    2021        !       MOVS     r0,#0x21
        0x1fff1d86:    b005        ..      ADD      sp,sp,#0x14
        0x1fff1d88:    bdf0        ..      POP      {r4-r7,pc}
        0x1fff1d8a:    2006        .       MOVS     r0,#6
        0x1fff1d8c:    b005        ..      ADD      sp,sp,#0x14
        0x1fff1d8e:    bdf0        ..      POP      {r4-r7,pc}
        0x1fff1d90:    20ff        .       MOVS     r0,#0xff
        0x1fff1d92:    0100        ..      LSLS     r0,r0,#4
        0x1fff1d94:    4007        .@      ANDS     r7,r7,r0
        0x1fff1d96:    9802        ..      LDR      r0,[sp,#8]
        0x1fff1d98:    6007        .`      STR      r7,[r0,#0]
        0x1fff1d9a:    2000        .       MOVS     r0,#0
        0x1fff1d9c:    b005        ..      ADD      sp,sp,#0x14
        0x1fff1d9e:    bdf0        ..      POP      {r4-r7,pc}
        0x1fff1da0:    2025        %       MOVS     r0,#0x25
        0x1fff1da2:    b005        ..      ADD      sp,sp,#0x14
        0x1fff1da4:    bdf0        ..      POP      {r4-r7,pc}
        0x1fff1da6:    9801        ..      LDR      r0,[sp,#4]
        0x1fff1da8:    6007        .`      STR      r7,[r0,#0]
        0x1fff1daa:    2000        .       MOVS     r0,#0
        0x1fff1dac:    b005        ..      ADD      sp,sp,#0x14
        0x1fff1dae:    bdf0        ..      POP      {r4-r7,pc}
    $d.5
    __arm_cp.2_0
        0x1fff1db0:    1fff5b80    .[..    DCD    536828800
    __arm_cp.2_1
        0x1fff1db4:    fffffeff    ....    DCD    4294967039
    __arm_cp.2_2
        0x1fff1db8:    ffffaaab    ....    DCD    4294945451
    __arm_cp.2_3
        0x1fff1dbc:    0000aaab    ....    DCD    43691
    __arm_cp.2_4
        0x1fff1dc0:    00001555    U...    DCD    5461
    $t.6
    gpio_key_timer_handler
        0x1fff1dc4:    b5f0        ..      PUSH     {r4-r7,lr}
        0x1fff1dc6:    b081        ..      SUB      sp,sp,#4
        0x1fff1dc8:    4604        .F      MOV      r4,r0
        0x1fff1dca:    2003        .       MOVS     r0,#3
        0x1fff1dcc:    4360        `C      MULS     r0,r4,r0
        0x1fff1dce:    4f30        0O      LDR      r7,[pc,#192] ; [0x1fff1e90] = 0x1fff6fa0
        0x1fff1dd0:    183d        =.      ADDS     r5,r7,r0
        0x1fff1dd2:    7869        ix      LDRB     r1,[r5,#1]
        0x1fff1dd4:    1c6e        n.      ADDS     r6,r5,#1
        0x1fff1dd6:    2903        .)      CMP      r1,#3
        0x1fff1dd8:    d018        ..      BEQ      0x1fff1e0c ; gpio_key_timer_handler + 72
        0x1fff1dda:    2901        .)      CMP      r1,#1
        0x1fff1ddc:    d137        7.      BNE      0x1fff1e4e ; gpio_key_timer_handler + 138
        0x1fff1dde:    5c38        8\      LDRB     r0,[r7,r0]
        0x1fff1de0:    f001f84c    ..L.    BL       $Ven$TT$L$$hal_gpio_read ; 0x1fff2e7c
        0x1fff1de4:    2800        .(      CMP      r0,#0
        0x1fff1de6:    d102        ..      BNE      0x1fff1dee ; gpio_key_timer_handler + 42
        0x1fff1de8:    78a8        .x      LDRB     r0,[r5,#2]
        0x1fff1dea:    2801        .(      CMP      r0,#1
        0x1fff1dec:    d031        1.      BEQ      0x1fff1e52 ; gpio_key_timer_handler + 142
        0x1fff1dee:    7828        (x      LDRB     r0,[r5,#0]
        0x1fff1df0:    f001f844    ..D.    BL       $Ven$TT$L$$hal_gpio_read ; 0x1fff2e7c
        0x1fff1df4:    2800        .(      CMP      r0,#0
        0x1fff1df6:    d002        ..      BEQ      0x1fff1dfe ; gpio_key_timer_handler + 58
        0x1fff1df8:    78a8        .x      LDRB     r0,[r5,#2]
        0x1fff1dfa:    2800        .(      CMP      r0,#0
        0x1fff1dfc:    d029        ).      BEQ      0x1fff1e52 ; gpio_key_timer_handler + 142
        0x1fff1dfe:    2000        .       MOVS     r0,#0
        0x1fff1e00:    7030        0p      STRB     r0,[r6,#0]
        0x1fff1e02:    00e1        ..      LSLS     r1,r4,#3
        0x1fff1e04:    1879        y.      ADDS     r1,r7,r1
        0x1fff1e06:    7208        .r      STRB     r0,[r1,#8]
        0x1fff1e08:    b001        ..      ADD      sp,sp,#4
        0x1fff1e0a:    bdf0        ..      POP      {r4-r7,pc}
        0x1fff1e0c:    78ad        .x      LDRB     r5,[r5,#2]
        0x1fff1e0e:    5c38        8\      LDRB     r0,[r7,r0]
        0x1fff1e10:    f001f834    ..4.    BL       $Ven$TT$L$$hal_gpio_read ; 0x1fff2e7c
        0x1fff1e14:    4285        .B      CMP      r5,r0
        0x1fff1e16:    d118        ..      BNE      0x1fff1e4a ; gpio_key_timer_handler + 134
        0x1fff1e18:    7b38        8{      LDRB     r0,[r7,#0xc]
        0x1fff1e1a:    2110        .!      MOVS     r1,#0x10
        0x1fff1e1c:    f001f834    ..4.    BL       $Ven$TT$L$$osal_stop_timerEx ; 0x1fff2e88
        0x1fff1e20:    00e0        ..      LSLS     r0,r4,#3
        0x1fff1e22:    183d        =.      ADDS     r5,r7,r0
        0x1fff1e24:    f001f836    ..6.    BL       $Ven$TT$L$$getMcuPrecisionCount ; 0x1fff2e94
        0x1fff1e28:    9000        ..      STR      r0,[sp,#0]
        0x1fff1e2a:    686d        mh      LDR      r5,[r5,#4]
        0x1fff1e2c:    2061        a       MOVS     r0,#0x61
        0x1fff1e2e:    f000fc19    ....    BL       hal_pwrmgr_unlock ; 0x1fff2664
        0x1fff1e32:    693a        :i      LDR      r2,[r7,#0x10]
        0x1fff1e34:    2a00        .*      CMP      r2,#0
        0x1fff1e36:    d00a        ..      BEQ      0x1fff1e4e ; gpio_key_timer_handler + 138
        0x1fff1e38:    9800        ..      LDR      r0,[sp,#0]
        0x1fff1e3a:    1b40        @.      SUBS     r0,r0,r5
        0x1fff1e3c:    4915        .I      LDR      r1,[pc,#84] ; [0x1fff1e94] = 0x271
        0x1fff1e3e:    4341        AC      MULS     r1,r0,r1
        0x1fff1e40:    4815        .H      LDR      r0,[pc,#84] ; [0x1fff1e98] = 0x2dc6c0
        0x1fff1e42:    4281        .B      CMP      r1,r0
        0x1fff1e44:    d31d        ..      BCC      0x1fff1e82 ; gpio_key_timer_handler + 190
        0x1fff1e46:    2120         !      MOVS     r1,#0x20
        0x1fff1e48:    e01c        ..      B        0x1fff1e84 ; gpio_key_timer_handler + 192
        0x1fff1e4a:    2002        .       MOVS     r0,#2
        0x1fff1e4c:    7030        0p      STRB     r0,[r6,#0]
        0x1fff1e4e:    b001        ..      ADD      sp,sp,#4
        0x1fff1e50:    bdf0        ..      POP      {r4-r7,pc}
        0x1fff1e52:    7b38        8{      LDRB     r0,[r7,#0xc]
        0x1fff1e54:    2101        .!      MOVS     r1,#1
        0x1fff1e56:    03c9        ..      LSLS     r1,r1,#15
        0x1fff1e58:    4a10        .J      LDR      r2,[pc,#64] ; [0x1fff1e9c] = 0xbb8
        0x1fff1e5a:    f001f821    ..!.    BL       $Ven$TT$L$$osal_start_timerEx ; 0x1fff2ea0
        0x1fff1e5e:    2061        a       MOVS     r0,#0x61
        0x1fff1e60:    f000fc00    ....    BL       hal_pwrmgr_unlock ; 0x1fff2664
        0x1fff1e64:    2002        .       MOVS     r0,#2
        0x1fff1e66:    7030        0p      STRB     r0,[r6,#0]
        0x1fff1e68:    00e0        ..      LSLS     r0,r4,#3
        0x1fff1e6a:    183d        =.      ADDS     r5,r7,r0
        0x1fff1e6c:    f001f812    ....    BL       $Ven$TT$L$$getMcuPrecisionCount ; 0x1fff2e94
        0x1fff1e70:    6068        h`      STR      r0,[r5,#4]
        0x1fff1e72:    693a        :i      LDR      r2,[r7,#0x10]
        0x1fff1e74:    2a00        .*      CMP      r2,#0
        0x1fff1e76:    d0ea        ..      BEQ      0x1fff1e4e ; gpio_key_timer_handler + 138
        0x1fff1e78:    2102        .!      MOVS     r1,#2
        0x1fff1e7a:    4620         F      MOV      r0,r4
        0x1fff1e7c:    4790        .G      BLX      r2
        0x1fff1e7e:    b001        ..      ADD      sp,sp,#4
        0x1fff1e80:    bdf0        ..      POP      {r4-r7,pc}
        0x1fff1e82:    2104        .!      MOVS     r1,#4
        0x1fff1e84:    4620         F      MOV      r0,r4
        0x1fff1e86:    4790        .G      BLX      r2
        0x1fff1e88:    2000        .       MOVS     r0,#0
        0x1fff1e8a:    7030        0p      STRB     r0,[r6,#0]
        0x1fff1e8c:    b001        ..      ADD      sp,sp,#4
        0x1fff1e8e:    bdf0        ..      POP      {r4-r7,pc}
    $d.7
    __arm_cp.2_0
        0x1fff1e90:    1fff6fa0    .o..    DCD    536833952
    __arm_cp.2_1
        0x1fff1e94:    00000271    q...    DCD    625
    __arm_cp.2_2
        0x1fff1e98:    002dc6c0    ..-.    DCD    3000000
    __arm_cp.2_3
        0x1fff1e9c:    00000bb8    ....    DCD    3000
    $t.0
    __tagsym$$used.0
    hal_TIMER5_IRQHandler
        0x1fff1ea0:    b580        ..      PUSH     {r7,lr}
        0x1fff1ea2:    4806        .H      LDR      r0,[pc,#24] ; [0x1fff1ebc] = 0x4000105c
        0x1fff1ea4:    6841        Ah      LDR      r1,[r0,#4]
        0x1fff1ea6:    07c9        ..      LSLS     r1,r1,#31
        0x1fff1ea8:    d006        ..      BEQ      0x1fff1eb8 ; hal_TIMER5_IRQHandler + 24
        0x1fff1eaa:    6800        .h      LDR      r0,[r0,#0]
        0x1fff1eac:    480c        .H      LDR      r0,[pc,#48] ; [0x1fff1ee0] = 0x1fff741c
        0x1fff1eae:    6801        .h      LDR      r1,[r0,#0]
        0x1fff1eb0:    2900        .)      CMP      r1,#0
        0x1fff1eb2:    d001        ..      BEQ      0x1fff1eb8 ; hal_TIMER5_IRQHandler + 24
        0x1fff1eb4:    2005        .       MOVS     r0,#5
        0x1fff1eb6:    4788        .G      BLX      r1
        0x1fff1eb8:    bd80        ..      POP      {r7,pc}
        0x1fff1eba:    46c0        .F      MOV      r8,r8
    $d.1
    __arm_cp.0_0
        0x1fff1ebc:    4000105c    \..@    DCD    1073746012
    $t.2
    __tagsym$$used.1
    hal_TIMER6_IRQHandler
        0x1fff1ec0:    b580        ..      PUSH     {r7,lr}
        0x1fff1ec2:    4806        .H      LDR      r0,[pc,#24] ; [0x1fff1edc] = 0x40001070
        0x1fff1ec4:    6841        Ah      LDR      r1,[r0,#4]
        0x1fff1ec6:    07c9        ..      LSLS     r1,r1,#31
        0x1fff1ec8:    d006        ..      BEQ      0x1fff1ed8 ; hal_TIMER6_IRQHandler + 24
        0x1fff1eca:    6800        .h      LDR      r0,[r0,#0]
        0x1fff1ecc:    4804        .H      LDR      r0,[pc,#16] ; [0x1fff1ee0] = 0x1fff741c
        0x1fff1ece:    6801        .h      LDR      r1,[r0,#0]
        0x1fff1ed0:    2900        .)      CMP      r1,#0
        0x1fff1ed2:    d001        ..      BEQ      0x1fff1ed8 ; hal_TIMER6_IRQHandler + 24
        0x1fff1ed4:    2006        .       MOVS     r0,#6
        0x1fff1ed6:    4788        .G      BLX      r1
        0x1fff1ed8:    bd80        ..      POP      {r7,pc}
        0x1fff1eda:    46c0        .F      MOV      r8,r8
    $d.3
    __arm_cp.1_0
        0x1fff1edc:    40001070    p..@    DCD    1073746032
    __arm_cp.1_1
        0x1fff1ee0:    1fff741c    .t..    DCD    536835100
    $t.2
    hal_clk_gate_disable
        0x1fff1ee4:    281f        .(      CMP      r0,#0x1f
        0x1fff1ee6:    d806        ..      BHI      0x1fff1ef6 ; hal_clk_gate_disable + 18
        0x1fff1ee8:    2101        .!      MOVS     r1,#1
        0x1fff1eea:    4081        .@      LSLS     r1,r1,r0
        0x1fff1eec:    481b        .H      LDR      r0,[pc,#108] ; [0x1fff1f5c] = 0x40000008
        0x1fff1eee:    6802        .h      LDR      r2,[r0,#0]
        0x1fff1ef0:    438a        .C      BICS     r2,r2,r1
        0x1fff1ef2:    6002        .`      STR      r2,[r0,#0]
        0x1fff1ef4:    4770        pG      BX       lr
        0x1fff1ef6:    283f        ?(      CMP      r0,#0x3f
        0x1fff1ef8:    d807        ..      BHI      0x1fff1f0a ; hal_clk_gate_disable + 38
        0x1fff1efa:    3820         8      SUBS     r0,r0,#0x20
        0x1fff1efc:    2101        .!      MOVS     r1,#1
        0x1fff1efe:    4081        .@      LSLS     r1,r1,r0
        0x1fff1f00:    4816        .H      LDR      r0,[pc,#88] ; [0x1fff1f5c] = 0x40000008
        0x1fff1f02:    68c2        .h      LDR      r2,[r0,#0xc]
        0x1fff1f04:    438a        .C      BICS     r2,r2,r1
        0x1fff1f06:    60c2        .`      STR      r2,[r0,#0xc]
        0x1fff1f08:    4770        pG      BX       lr
        0x1fff1f0a:    285f        _(      CMP      r0,#0x5f
        0x1fff1f0c:    d806        ..      BHI      0x1fff1f1c ; hal_clk_gate_disable + 56
        0x1fff1f0e:    3840        @8      SUBS     r0,r0,#0x40
        0x1fff1f10:    2101        .!      MOVS     r1,#1
        0x1fff1f12:    4081        .@      LSLS     r1,r1,r0
        0x1fff1f14:    4811        .H      LDR      r0,[pc,#68] ; [0x1fff1f5c] = 0x40000008
        0x1fff1f16:    6982        .i      LDR      r2,[r0,#0x18]
        0x1fff1f18:    438a        .C      BICS     r2,r2,r1
        0x1fff1f1a:    6182        .a      STR      r2,[r0,#0x18]
        0x1fff1f1c:    4770        pG      BX       lr
        0x1fff1f1e:    46c0        .F      MOV      r8,r8
    hal_clk_gate_enable
        0x1fff1f20:    281f        .(      CMP      r0,#0x1f
        0x1fff1f22:    d806        ..      BHI      0x1fff1f32 ; hal_clk_gate_enable + 18
        0x1fff1f24:    2101        .!      MOVS     r1,#1
        0x1fff1f26:    4081        .@      LSLS     r1,r1,r0
        0x1fff1f28:    480c        .H      LDR      r0,[pc,#48] ; [0x1fff1f5c] = 0x40000008
        0x1fff1f2a:    6802        .h      LDR      r2,[r0,#0]
        0x1fff1f2c:    430a        .C      ORRS     r2,r2,r1
        0x1fff1f2e:    6002        .`      STR      r2,[r0,#0]
        0x1fff1f30:    4770        pG      BX       lr
        0x1fff1f32:    283f        ?(      CMP      r0,#0x3f
        0x1fff1f34:    d807        ..      BHI      0x1fff1f46 ; hal_clk_gate_enable + 38
        0x1fff1f36:    3820         8      SUBS     r0,r0,#0x20
        0x1fff1f38:    2101        .!      MOVS     r1,#1
        0x1fff1f3a:    4081        .@      LSLS     r1,r1,r0
        0x1fff1f3c:    4807        .H      LDR      r0,[pc,#28] ; [0x1fff1f5c] = 0x40000008
        0x1fff1f3e:    68c2        .h      LDR      r2,[r0,#0xc]
        0x1fff1f40:    430a        .C      ORRS     r2,r2,r1
        0x1fff1f42:    60c2        .`      STR      r2,[r0,#0xc]
        0x1fff1f44:    4770        pG      BX       lr
        0x1fff1f46:    285f        _(      CMP      r0,#0x5f
        0x1fff1f48:    d806        ..      BHI      0x1fff1f58 ; hal_clk_gate_enable + 56
        0x1fff1f4a:    3840        @8      SUBS     r0,r0,#0x40
        0x1fff1f4c:    2101        .!      MOVS     r1,#1
        0x1fff1f4e:    4081        .@      LSLS     r1,r1,r0
        0x1fff1f50:    4802        .H      LDR      r0,[pc,#8] ; [0x1fff1f5c] = 0x40000008
        0x1fff1f52:    6982        .i      LDR      r2,[r0,#0x18]
        0x1fff1f54:    430a        .C      ORRS     r2,r2,r1
        0x1fff1f56:    6182        .a      STR      r2,[r0,#0x18]
        0x1fff1f58:    4770        pG      BX       lr
        0x1fff1f5a:    46c0        .F      MOV      r8,r8
    $d.1
    __arm_cp.0_0
        0x1fff1f5c:    40000008    ...@    DCD    1073741832
    $t.8
    hal_flash_read
        0x1fff1f60:    b5f0        ..      PUSH     {r4-r7,lr}
        0x1fff1f62:    b087        ..      SUB      sp,sp,#0x1c
        0x1fff1f64:    4615        .F      MOV      r5,r2
        0x1fff1f66:    460c        .F      MOV      r4,r1
        0x1fff1f68:    9004        ..      STR      r0,[sp,#0x10]
        0x1fff1f6a:    f000ff9f    ....    BL       $Ven$TT$L$$drv_disable_irq ; 0x1fff2eac
        0x1fff1f6e:    4a9f        .J      LDR      r2,[pc,#636] ; [0x1fff21ec] = 0xe000e100
        0x1fff1f70:    6810        .h      LDR      r0,[r2,#0]
        0x1fff1f72:    9003        ..      STR      r0,[sp,#0xc]
        0x1fff1f74:    2700        .'      MOVS     r7,#0
        0x1fff1f76:    43f8        .C      MVNS     r0,r7
        0x1fff1f78:    499d        .I      LDR      r1,[pc,#628] ; [0x1fff21f0] = 0xe000e180
        0x1fff1f7a:    6008        .`      STR      r0,[r1,#0]
        0x1fff1f7c:    489d        .H      LDR      r0,[pc,#628] ; [0x1fff21f4] = 0x100010
        0x1fff1f7e:    6010        .`      STR      r0,[r2,#0]
        0x1fff1f80:    2001        .       MOVS     r0,#1
        0x1fff1f82:    9002        ..      STR      r0,[sp,#8]
        0x1fff1f84:    04c6        ..      LSLS     r6,r0,#19
        0x1fff1f86:    f000ff97    ....    BL       $Ven$TT$L$$drv_enable_irq ; 0x1fff2eb8
        0x1fff1f8a:    4844        DH      LDR      r0,[pc,#272] ; [0x1fff209c] = 0x40000028
        0x1fff1f8c:    6803        .h      LDR      r3,[r0,#0]
        0x1fff1f8e:    4844        DH      LDR      r0,[pc,#272] ; [0x1fff20a0] = 0x1fff59b8
        0x1fff1f90:    6880        .h      LDR      r0,[r0,#8]
        0x1fff1f92:    9606        ..      STR      r6,[sp,#0x18]
        0x1fff1f94:    42b0        .B      CMP      r0,r6
        0x1fff1f96:    d805        ..      BHI      0x1fff1fa4 ; hal_flash_read + 68
        0x1fff1f98:    2b00        .+      CMP      r3,#0
        0x1fff1f9a:    9305        ..      STR      r3,[sp,#0x14]
        0x1fff1f9c:    d016        ..      BEQ      0x1fff1fcc ; hal_flash_read + 108
        0x1fff1f9e:    2d00        .-      CMP      r5,#0
        0x1fff1fa0:    d123        #.      BNE      0x1fff1fea ; hal_flash_read + 138
        0x1fff1fa2:    e050        P.      B        0x1fff2046 ; hal_flash_read + 230
        0x1fff1fa4:    201f        .       MOVS     r0,#0x1f
        0x1fff1fa6:    04c0        ..      LSLS     r0,r0,#19
        0x1fff1fa8:    9904        ..      LDR      r1,[sp,#0x10]
        0x1fff1faa:    4008        .@      ANDS     r0,r0,r1
        0x1fff1fac:    d00a        ..      BEQ      0x1fff1fc4 ; hal_flash_read + 100
        0x1fff1fae:    4994        .I      LDR      r1,[pc,#592] ; [0x1fff2200] = 0x4000c800
        0x1fff1fb0:    6248        Hb      STR      r0,[r1,#0x24]
        0x1fff1fb2:    2601        .&      MOVS     r6,#1
        0x1fff1fb4:    0430        0.      LSLS     r0,r6,#16
        0x1fff1fb6:    680a        .h      LDR      r2,[r1,#0]
        0x1fff1fb8:    4302        .C      ORRS     r2,r2,r0
        0x1fff1fba:    600a        .`      STR      r2,[r1,#0]
        0x1fff1fbc:    2b00        .+      CMP      r3,#0
        0x1fff1fbe:    9305        ..      STR      r3,[sp,#0x14]
        0x1fff1fc0:    d1ed        ..      BNE      0x1fff1f9e ; hal_flash_read + 62
        0x1fff1fc2:    e003        ..      B        0x1fff1fcc ; hal_flash_read + 108
        0x1fff1fc4:    2600        .&      MOVS     r6,#0
        0x1fff1fc6:    2b00        .+      CMP      r3,#0
        0x1fff1fc8:    9305        ..      STR      r3,[sp,#0x14]
        0x1fff1fca:    d1e8        ..      BNE      0x1fff1f9e ; hal_flash_read + 62
        0x1fff1fcc:    f000ff6e    ..n.    BL       $Ven$TT$L$$drv_disable_irq ; 0x1fff2eac
        0x1fff1fd0:    4889        .H      LDR      r0,[pc,#548] ; [0x1fff21f8] = 0x4000c000
        0x1fff1fd2:    2102        .!      MOVS     r1,#2
        0x1fff1fd4:    6001        .`      STR      r1,[r0,#0]
        0x1fff1fd6:    4a31        1J      LDR      r2,[pc,#196] ; [0x1fff209c] = 0x40000028
        0x1fff1fd8:    1f10        ..      SUBS     r0,r2,#4
        0x1fff1fda:    6001        .`      STR      r1,[r0,#0]
        0x1fff1fdc:    2001        .       MOVS     r0,#1
        0x1fff1fde:    6010        .`      STR      r0,[r2,#0]
        0x1fff1fe0:    f000ff6a    ..j.    BL       $Ven$TT$L$$drv_enable_irq ; 0x1fff2eb8
        0x1fff1fe4:    9b05        ..      LDR      r3,[sp,#0x14]
        0x1fff1fe6:    2d00        .-      CMP      r5,#0
        0x1fff1fe8:    d02d        -.      BEQ      0x1fff2046 ; hal_flash_read + 230
        0x1fff1fea:    9601        ..      STR      r6,[sp,#4]
        0x1fff1fec:    9806        ..      LDR      r0,[sp,#0x18]
        0x1fff1fee:    1e40        @.      SUBS     r0,r0,#1
        0x1fff1ff0:    2111        .!      MOVS     r1,#0x11
        0x1fff1ff2:    9a04        ..      LDR      r2,[sp,#0x10]
        0x1fff1ff4:    4002        .@      ANDS     r2,r2,r0
        0x1fff1ff6:    0608        ..      LSLS     r0,r1,#24
        0x1fff1ff8:    1810        ..      ADDS     r0,r2,r0
        0x1fff1ffa:    2203        ."      MOVS     r2,#3
        0x1fff1ffc:    4629        )F      MOV      r1,r5
        0x1fff1ffe:    4011        .@      ANDS     r1,r1,r2
        0x1fff2000:    1e6b        k.      SUBS     r3,r5,#1
        0x1fff2002:    2b03        .+      CMP      r3,#3
        0x1fff2004:    d30e        ..      BCC      0x1fff2024 ; hal_flash_read + 196
        0x1fff2006:    4395        .C      BICS     r5,r5,r2
        0x1fff2008:    2700        .'      MOVS     r7,#0
        0x1fff200a:    5dc2        .]      LDRB     r2,[r0,r7]
        0x1fff200c:    55e2        .U      STRB     r2,[r4,r7]
        0x1fff200e:    19e2        ..      ADDS     r2,r4,r7
        0x1fff2010:    19c3        ..      ADDS     r3,r0,r7
        0x1fff2012:    785e        ^x      LDRB     r6,[r3,#1]
        0x1fff2014:    7056        Vp      STRB     r6,[r2,#1]
        0x1fff2016:    789e        .x      LDRB     r6,[r3,#2]
        0x1fff2018:    7096        .p      STRB     r6,[r2,#2]
        0x1fff201a:    78db        .x      LDRB     r3,[r3,#3]
        0x1fff201c:    70d3        .p      STRB     r3,[r2,#3]
        0x1fff201e:    1d3f        ?.      ADDS     r7,r7,#4
        0x1fff2020:    42bd        .B      CMP      r5,r7
        0x1fff2022:    d1f2        ..      BNE      0x1fff200a ; hal_flash_read + 170
        0x1fff2024:    2900        .)      CMP      r1,#0
        0x1fff2026:    9e01        ..      LDR      r6,[sp,#4]
        0x1fff2028:    9b05        ..      LDR      r3,[sp,#0x14]
        0x1fff202a:    d00c        ..      BEQ      0x1fff2046 ; hal_flash_read + 230
        0x1fff202c:    5dc2        .]      LDRB     r2,[r0,r7]
        0x1fff202e:    55e2        .U      STRB     r2,[r4,r7]
        0x1fff2030:    2901        .)      CMP      r1,#1
        0x1fff2032:    d008        ..      BEQ      0x1fff2046 ; hal_flash_read + 230
        0x1fff2034:    1c7a        z.      ADDS     r2,r7,#1
        0x1fff2036:    5c83        .\      LDRB     r3,[r0,r2]
        0x1fff2038:    54a3        .T      STRB     r3,[r4,r2]
        0x1fff203a:    9b05        ..      LDR      r3,[sp,#0x14]
        0x1fff203c:    2902        .)      CMP      r1,#2
        0x1fff203e:    d002        ..      BEQ      0x1fff2046 ; hal_flash_read + 230
        0x1fff2040:    1cb9        ..      ADDS     r1,r7,#2
        0x1fff2042:    5c40        @\      LDRB     r0,[r0,r1]
        0x1fff2044:    5460        `T      STRB     r0,[r4,r1]
        0x1fff2046:    2b00        .+      CMP      r3,#0
        0x1fff2048:    d10b        ..      BNE      0x1fff2062 ; hal_flash_read + 258
        0x1fff204a:    f000ff2f    ../.    BL       $Ven$TT$L$$drv_disable_irq ; 0x1fff2eac
        0x1fff204e:    486a        jH      LDR      r0,[pc,#424] ; [0x1fff21f8] = 0x4000c000
        0x1fff2050:    2100        .!      MOVS     r1,#0
        0x1fff2052:    6001        .`      STR      r1,[r0,#0]
        0x1fff2054:    4b11        .K      LDR      r3,[pc,#68] ; [0x1fff209c] = 0x40000028
        0x1fff2056:    1f18        ..      SUBS     r0,r3,#4
        0x1fff2058:    2203        ."      MOVS     r2,#3
        0x1fff205a:    6002        .`      STR      r2,[r0,#0]
        0x1fff205c:    6019        .`      STR      r1,[r3,#0]
        0x1fff205e:    f000ff2b    ..+.    BL       $Ven$TT$L$$drv_enable_irq ; 0x1fff2eb8
        0x1fff2062:    48cc        .H      LDR      r0,[pc,#816] ; [0x1fff2394] = 0x1fff59b8
        0x1fff2064:    6880        .h      LDR      r0,[r0,#8]
        0x1fff2066:    9906        ..      LDR      r1,[sp,#0x18]
        0x1fff2068:    4288        .B      CMP      r0,r1
        0x1fff206a:    9802        ..      LDR      r0,[sp,#8]
        0x1fff206c:    d800        ..      BHI      0x1fff2070 ; hal_flash_read + 272
        0x1fff206e:    2000        .       MOVS     r0,#0
        0x1fff2070:    4030        0@      ANDS     r0,r0,r6
        0x1fff2072:    2801        .(      CMP      r0,#1
        0x1fff2074:    d107        ..      BNE      0x1fff2086 ; hal_flash_read + 294
        0x1fff2076:    48cc        .H      LDR      r0,[pc,#816] ; [0x1fff23a8] = 0x4000c800
        0x1fff2078:    2100        .!      MOVS     r1,#0
        0x1fff207a:    6241        Ab      STR      r1,[r0,#0x24]
        0x1fff207c:    2101        .!      MOVS     r1,#1
        0x1fff207e:    0409        ..      LSLS     r1,r1,#16
        0x1fff2080:    6802        .h      LDR      r2,[r0,#0]
        0x1fff2082:    438a        .C      BICS     r2,r2,r1
        0x1fff2084:    6002        .`      STR      r2,[r0,#0]
        0x1fff2086:    f000ff11    ....    BL       $Ven$TT$L$$drv_disable_irq ; 0x1fff2eac
        0x1fff208a:    48c3        .H      LDR      r0,[pc,#780] ; [0x1fff2398] = 0xe000e100
        0x1fff208c:    9903        ..      LDR      r1,[sp,#0xc]
        0x1fff208e:    6001        .`      STR      r1,[r0,#0]
        0x1fff2090:    f000ff12    ....    BL       $Ven$TT$L$$drv_enable_irq ; 0x1fff2eb8
        0x1fff2094:    2000        .       MOVS     r0,#0
        0x1fff2096:    b007        ..      ADD      sp,sp,#0x1c
        0x1fff2098:    bdf0        ..      POP      {r4-r7,pc}
        0x1fff209a:    46c0        .F      MOV      r8,r8
    $d.9
    __arm_cp.4_3
        0x1fff209c:    40000028    (..@    DCD    1073741864
    __arm_cp.4_4
        0x1fff20a0:    1fff59b8    .Y..    DCD    536828344
    $t.10
    hal_flash_write
        0x1fff20a4:    b5f0        ..      PUSH     {r4-r7,lr}
        0x1fff20a6:    b087        ..      SUB      sp,sp,#0x1c
        0x1fff20a8:    ab02        ..      ADD      r3,sp,#8
        0x1fff20aa:    c307        ..      STM      r3!,{r0-r2}
        0x1fff20ac:    f000fefe    ....    BL       $Ven$TT$L$$drv_disable_irq ; 0x1fff2eac
        0x1fff20b0:    4ab9        .J      LDR      r2,[pc,#740] ; [0x1fff2398] = 0xe000e100
        0x1fff20b2:    6810        .h      LDR      r0,[r2,#0]
        0x1fff20b4:    9001        ..      STR      r0,[sp,#4]
        0x1fff20b6:    2000        .       MOVS     r0,#0
        0x1fff20b8:    9000        ..      STR      r0,[sp,#0]
        0x1fff20ba:    43c0        .C      MVNS     r0,r0
        0x1fff20bc:    49b7        .I      LDR      r1,[pc,#732] ; [0x1fff239c] = 0xe000e180
        0x1fff20be:    6008        .`      STR      r0,[r1,#0]
        0x1fff20c0:    48b7        .H      LDR      r0,[pc,#732] ; [0x1fff23a0] = 0x100010
        0x1fff20c2:    6010        .`      STR      r0,[r2,#0]
        0x1fff20c4:    f000fef8    ....    BL       $Ven$TT$L$$drv_enable_irq ; 0x1fff2eb8
        0x1fff20c8:    f000fef0    ....    BL       $Ven$TT$L$$drv_disable_irq ; 0x1fff2eac
        0x1fff20cc:    494a        JI      LDR      r1,[pc,#296] ; [0x1fff21f8] = 0x4000c000
        0x1fff20ce:    2002        .       MOVS     r0,#2
        0x1fff20d0:    6008        .`      STR      r0,[r1,#0]
        0x1fff20d2:    494a        JI      LDR      r1,[pc,#296] ; [0x1fff21fc] = 0x40000024
        0x1fff20d4:    6008        .`      STR      r0,[r1,#0]
        0x1fff20d6:    2001        .       MOVS     r0,#1
        0x1fff20d8:    6048        H`      STR      r0,[r1,#4]
        0x1fff20da:    f000feed    ....    BL       $Ven$TT$L$$drv_enable_irq ; 0x1fff2eb8
        0x1fff20de:    4db1        .M      LDR      r5,[pc,#708] ; [0x1fff23a4] = 0x4000c890
        0x1fff20e0:    6828        (h      LDR      r0,[r5,#0]
        0x1fff20e2:    0780        ..      LSLS     r0,r0,#30
        0x1fff20e4:    d508        ..      BPL      0x1fff20f8 ; hal_flash_write + 84
        0x1fff20e6:    6828        (h      LDR      r0,[r5,#0]
        0x1fff20e8:    0780        ..      LSLS     r0,r0,#30
        0x1fff20ea:    d505        ..      BPL      0x1fff20f8 ; hal_flash_write + 84
        0x1fff20ec:    6828        (h      LDR      r0,[r5,#0]
        0x1fff20ee:    0780        ..      LSLS     r0,r0,#30
        0x1fff20f0:    d502        ..      BPL      0x1fff20f8 ; hal_flash_write + 84
        0x1fff20f2:    6828        (h      LDR      r0,[r5,#0]
        0x1fff20f4:    0780        ..      LSLS     r0,r0,#30
        0x1fff20f6:    d4f3        ..      BMI      0x1fff20e0 ; hal_flash_write + 60
        0x1fff20f8:    2420         $      MOVS     r4,#0x20
        0x1fff20fa:    9406        ..      STR      r4,[sp,#0x18]
        0x1fff20fc:    9806        ..      LDR      r0,[sp,#0x18]
        0x1fff20fe:    1e41        A.      SUBS     r1,r0,#1
        0x1fff2100:    9106        ..      STR      r1,[sp,#0x18]
        0x1fff2102:    2800        .(      CMP      r0,#0
        0x1fff2104:    d00e        ..      BEQ      0x1fff2124 ; hal_flash_write + 128
        0x1fff2106:    9806        ..      LDR      r0,[sp,#0x18]
        0x1fff2108:    1e41        A.      SUBS     r1,r0,#1
        0x1fff210a:    9106        ..      STR      r1,[sp,#0x18]
        0x1fff210c:    2800        .(      CMP      r0,#0
        0x1fff210e:    d009        ..      BEQ      0x1fff2124 ; hal_flash_write + 128
        0x1fff2110:    9806        ..      LDR      r0,[sp,#0x18]
        0x1fff2112:    1e41        A.      SUBS     r1,r0,#1
        0x1fff2114:    9106        ..      STR      r1,[sp,#0x18]
        0x1fff2116:    2800        .(      CMP      r0,#0
        0x1fff2118:    d004        ..      BEQ      0x1fff2124 ; hal_flash_write + 128
        0x1fff211a:    9806        ..      LDR      r0,[sp,#0x18]
        0x1fff211c:    1e41        A.      SUBS     r1,r0,#1
        0x1fff211e:    9106        ..      STR      r1,[sp,#0x18]
        0x1fff2120:    2800        .(      CMP      r0,#0
        0x1fff2122:    d1eb        ..      BNE      0x1fff20fc ; hal_flash_write + 88
        0x1fff2124:    4ea0        .N      LDR      r6,[pc,#640] ; [0x1fff23a8] = 0x4000c800
        0x1fff2126:    6830        0h      LDR      r0,[r6,#0]
        0x1fff2128:    2800        .(      CMP      r0,#0
        0x1fff212a:    d408        ..      BMI      0x1fff213e ; hal_flash_write + 154
        0x1fff212c:    6830        0h      LDR      r0,[r6,#0]
        0x1fff212e:    2800        .(      CMP      r0,#0
        0x1fff2130:    d405        ..      BMI      0x1fff213e ; hal_flash_write + 154
        0x1fff2132:    6830        0h      LDR      r0,[r6,#0]
        0x1fff2134:    2800        .(      CMP      r0,#0
        0x1fff2136:    d402        ..      BMI      0x1fff213e ; hal_flash_write + 154
        0x1fff2138:    6830        0h      LDR      r0,[r6,#0]
        0x1fff213a:    2800        .(      CMP      r0,#0
        0x1fff213c:    d5f3        ..      BPL      0x1fff2126 ; hal_flash_write + 130
        0x1fff213e:    2001        .       MOVS     r0,#1
        0x1fff2140:    f7fffbde    ....    BL       _spif_wait_nobusy_x ; 0x1fff1900
        0x1fff2144:    2711        .'      MOVS     r7,#0x11
        0x1fff2146:    2800        .(      CMP      r0,#0
        0x1fff2148:    d002        ..      BEQ      0x1fff2150 ; hal_flash_write + 172
        0x1fff214a:    4638        8F      MOV      r0,r7
        0x1fff214c:    b007        ..      ADD      sp,sp,#0x1c
        0x1fff214e:    bdf0        ..      POP      {r4-r7,pc}
        0x1fff2150:    aa02        ..      ADD      r2,sp,#8
        0x1fff2152:    ca07        ..      LDM      r2,{r0-r2}
        0x1fff2154:    f000feb6    ....    BL       $Ven$TT$L$$spif_write ; 0x1fff2ec4
        0x1fff2158:    9004        ..      STR      r0,[sp,#0x10]
        0x1fff215a:    6828        (h      LDR      r0,[r5,#0]
        0x1fff215c:    0780        ..      LSLS     r0,r0,#30
        0x1fff215e:    d508        ..      BPL      0x1fff2172 ; hal_flash_write + 206
        0x1fff2160:    6828        (h      LDR      r0,[r5,#0]
        0x1fff2162:    0780        ..      LSLS     r0,r0,#30
        0x1fff2164:    d505        ..      BPL      0x1fff2172 ; hal_flash_write + 206
        0x1fff2166:    6828        (h      LDR      r0,[r5,#0]
        0x1fff2168:    0780        ..      LSLS     r0,r0,#30
        0x1fff216a:    d502        ..      BPL      0x1fff2172 ; hal_flash_write + 206
        0x1fff216c:    6828        (h      LDR      r0,[r5,#0]
        0x1fff216e:    0780        ..      LSLS     r0,r0,#30
        0x1fff2170:    d4f3        ..      BMI      0x1fff215a ; hal_flash_write + 182
        0x1fff2172:    9405        ..      STR      r4,[sp,#0x14]
        0x1fff2174:    9805        ..      LDR      r0,[sp,#0x14]
        0x1fff2176:    1e41        A.      SUBS     r1,r0,#1
        0x1fff2178:    9105        ..      STR      r1,[sp,#0x14]
        0x1fff217a:    2800        .(      CMP      r0,#0
        0x1fff217c:    d00e        ..      BEQ      0x1fff219c ; hal_flash_write + 248
        0x1fff217e:    9805        ..      LDR      r0,[sp,#0x14]
        0x1fff2180:    1e41        A.      SUBS     r1,r0,#1
        0x1fff2182:    9105        ..      STR      r1,[sp,#0x14]
        0x1fff2184:    2800        .(      CMP      r0,#0
        0x1fff2186:    d009        ..      BEQ      0x1fff219c ; hal_flash_write + 248
        0x1fff2188:    9805        ..      LDR      r0,[sp,#0x14]
        0x1fff218a:    1e41        A.      SUBS     r1,r0,#1
        0x1fff218c:    9105        ..      STR      r1,[sp,#0x14]
        0x1fff218e:    2800        .(      CMP      r0,#0
        0x1fff2190:    d004        ..      BEQ      0x1fff219c ; hal_flash_write + 248
        0x1fff2192:    9805        ..      LDR      r0,[sp,#0x14]
        0x1fff2194:    1e41        A.      SUBS     r1,r0,#1
        0x1fff2196:    9105        ..      STR      r1,[sp,#0x14]
        0x1fff2198:    2800        .(      CMP      r0,#0
        0x1fff219a:    d1eb        ..      BNE      0x1fff2174 ; hal_flash_write + 208
        0x1fff219c:    6830        0h      LDR      r0,[r6,#0]
        0x1fff219e:    2800        .(      CMP      r0,#0
        0x1fff21a0:    d408        ..      BMI      0x1fff21b4 ; hal_flash_write + 272
        0x1fff21a2:    6830        0h      LDR      r0,[r6,#0]
        0x1fff21a4:    2800        .(      CMP      r0,#0
        0x1fff21a6:    d405        ..      BMI      0x1fff21b4 ; hal_flash_write + 272
        0x1fff21a8:    6830        0h      LDR      r0,[r6,#0]
        0x1fff21aa:    2800        .(      CMP      r0,#0
        0x1fff21ac:    d402        ..      BMI      0x1fff21b4 ; hal_flash_write + 272
        0x1fff21ae:    6830        0h      LDR      r0,[r6,#0]
        0x1fff21b0:    2800        .(      CMP      r0,#0
        0x1fff21b2:    d5f3        ..      BPL      0x1fff219c ; hal_flash_write + 248
        0x1fff21b4:    2001        .       MOVS     r0,#1
        0x1fff21b6:    f7fffba3    ....    BL       _spif_wait_nobusy_x ; 0x1fff1900
        0x1fff21ba:    2800        .(      CMP      r0,#0
        0x1fff21bc:    d1c5        ..      BNE      0x1fff214a ; hal_flash_write + 166
        0x1fff21be:    f000fe75    ..u.    BL       $Ven$TT$L$$drv_disable_irq ; 0x1fff2eac
        0x1fff21c2:    9900        ..      LDR      r1,[sp,#0]
        0x1fff21c4:    480c        .H      LDR      r0,[pc,#48] ; [0x1fff21f8] = 0x4000c000
        0x1fff21c6:    6001        .`      STR      r1,[r0,#0]
        0x1fff21c8:    2003        .       MOVS     r0,#3
        0x1fff21ca:    4a0c        .J      LDR      r2,[pc,#48] ; [0x1fff21fc] = 0x40000024
        0x1fff21cc:    6010        .`      STR      r0,[r2,#0]
        0x1fff21ce:    6051        Q`      STR      r1,[r2,#4]
        0x1fff21d0:    f000fe72    ..r.    BL       $Ven$TT$L$$drv_enable_irq ; 0x1fff2eb8
        0x1fff21d4:    f000fe6a    ..j.    BL       $Ven$TT$L$$drv_disable_irq ; 0x1fff2eac
        0x1fff21d8:    486f        oH      LDR      r0,[pc,#444] ; [0x1fff2398] = 0xe000e100
        0x1fff21da:    9901        ..      LDR      r1,[sp,#4]
        0x1fff21dc:    6001        .`      STR      r1,[r0,#0]
        0x1fff21de:    f000fe6b    ..k.    BL       $Ven$TT$L$$drv_enable_irq ; 0x1fff2eb8
        0x1fff21e2:    9804        ..      LDR      r0,[sp,#0x10]
        0x1fff21e4:    b2c7        ..      UXTB     r7,r0
        0x1fff21e6:    4638        8F      MOV      r0,r7
        0x1fff21e8:    b007        ..      ADD      sp,sp,#0x1c
        0x1fff21ea:    bdf0        ..      POP      {r4-r7,pc}
    $d.11
    __arm_cp.5_0
        0x1fff21ec:    e000e100    ....    DCD    3758153984
    __arm_cp.5_1
        0x1fff21f0:    e000e180    ....    DCD    3758154112
    __arm_cp.5_2
        0x1fff21f4:    00100010    ....    DCD    1048592
    __arm_cp.5_3
        0x1fff21f8:    4000c000    ...@    DCD    1073790976
    __arm_cp.5_4
        0x1fff21fc:    40000024    $..@    DCD    1073741860
    __arm_cp.5_6
        0x1fff2200:    4000c800    ...@    DCD    1073793024
    $t.20
    hal_fs_init
        0x1fff2204:    b510        ..      PUSH     {r4,lr}
        0x1fff2206:    4602        .F      MOV      r2,r0
        0x1fff2208:    4b07        .K      LDR      r3,[pc,#28] ; [0x1fff2228] = 0x1fff5b80
        0x1fff220a:    7818        .x      LDRB     r0,[r3,#0]
        0x1fff220c:    2800        .(      CMP      r0,#0
        0x1fff220e:    d001        ..      BEQ      0x1fff2214 ; hal_fs_init + 16
        0x1fff2210:    2027        '       MOVS     r0,#0x27
        0x1fff2212:    bd10        ..      POP      {r4,pc}
        0x1fff2214:    2006        .       MOVS     r0,#6
        0x1fff2216:    0514        ..      LSLS     r4,r2,#20
        0x1fff2218:    d105        ..      BNE      0x1fff2226 ; hal_fs_init + 34
        0x1fff221a:    2902        .)      CMP      r1,#2
        0x1fff221c:    d303        ..      BCC      0x1fff2226 ; hal_fs_init + 34
        0x1fff221e:    605a        Z`      STR      r2,[r3,#4]
        0x1fff2220:    7059        Yp      STRB     r1,[r3,#1]
        0x1fff2222:    f7fffbd7    ....    BL       fs_init ; 0x1fff19d4
        0x1fff2226:    bd10        ..      POP      {r4,pc}
    $d.21
    __arm_cp.10_0
        0x1fff2228:    1fff5b80    .[..    DCD    536828800
    $t.0
    hal_get_flash_info
        0x1fff222c:    b5f0        ..      PUSH     {r4-r7,lr}
        0x1fff222e:    b08b        ..      SUB      sp,sp,#0x2c
        0x1fff2230:    4858        XH      LDR      r0,[pc,#352] ; [0x1fff2394] = 0x1fff59b8
        0x1fff2232:    7800        .x      LDRB     r0,[r0,#0]
        0x1fff2234:    2800        .(      CMP      r0,#0
        0x1fff2236:    d003        ..      BEQ      0x1fff2240 ; hal_get_flash_info + 20
        0x1fff2238:    2500        .%      MOVS     r5,#0
        0x1fff223a:    4628        (F      MOV      r0,r5
        0x1fff223c:    b00b        ..      ADD      sp,sp,#0x2c
        0x1fff223e:    bdf0        ..      POP      {r4-r7,pc}
        0x1fff2240:    f000fe34    ..4.    BL       $Ven$TT$L$$drv_disable_irq ; 0x1fff2eac
        0x1fff2244:    4a54        TJ      LDR      r2,[pc,#336] ; [0x1fff2398] = 0xe000e100
        0x1fff2246:    6810        .h      LDR      r0,[r2,#0]
        0x1fff2248:    9003        ..      STR      r0,[sp,#0xc]
        0x1fff224a:    2600        .&      MOVS     r6,#0
        0x1fff224c:    43f0        .C      MVNS     r0,r6
        0x1fff224e:    4953        SI      LDR      r1,[pc,#332] ; [0x1fff239c] = 0xe000e180
        0x1fff2250:    6008        .`      STR      r0,[r1,#0]
        0x1fff2252:    4853        SH      LDR      r0,[pc,#332] ; [0x1fff23a0] = 0x100010
        0x1fff2254:    6010        .`      STR      r0,[r2,#0]
        0x1fff2256:    f000fe2f    ../.    BL       $Ven$TT$L$$drv_enable_irq ; 0x1fff2eb8
        0x1fff225a:    4f52        RO      LDR      r7,[pc,#328] ; [0x1fff23a4] = 0x4000c890
        0x1fff225c:    6838        8h      LDR      r0,[r7,#0]
        0x1fff225e:    0780        ..      LSLS     r0,r0,#30
        0x1fff2260:    d508        ..      BPL      0x1fff2274 ; hal_get_flash_info + 72
        0x1fff2262:    6838        8h      LDR      r0,[r7,#0]
        0x1fff2264:    0780        ..      LSLS     r0,r0,#30
        0x1fff2266:    d505        ..      BPL      0x1fff2274 ; hal_get_flash_info + 72
        0x1fff2268:    6838        8h      LDR      r0,[r7,#0]
        0x1fff226a:    0780        ..      LSLS     r0,r0,#30
        0x1fff226c:    d502        ..      BPL      0x1fff2274 ; hal_get_flash_info + 72
        0x1fff226e:    6838        8h      LDR      r0,[r7,#0]
        0x1fff2270:    0780        ..      LSLS     r0,r0,#30
        0x1fff2272:    d4f3        ..      BMI      0x1fff225c ; hal_get_flash_info + 48
        0x1fff2274:    2020                MOVS     r0,#0x20
        0x1fff2276:    9004        ..      STR      r0,[sp,#0x10]
        0x1fff2278:    9006        ..      STR      r0,[sp,#0x18]
        0x1fff227a:    9806        ..      LDR      r0,[sp,#0x18]
        0x1fff227c:    1e41        A.      SUBS     r1,r0,#1
        0x1fff227e:    9106        ..      STR      r1,[sp,#0x18]
        0x1fff2280:    2800        .(      CMP      r0,#0
        0x1fff2282:    d00e        ..      BEQ      0x1fff22a2 ; hal_get_flash_info + 118
        0x1fff2284:    9806        ..      LDR      r0,[sp,#0x18]
        0x1fff2286:    1e41        A.      SUBS     r1,r0,#1
        0x1fff2288:    9106        ..      STR      r1,[sp,#0x18]
        0x1fff228a:    2800        .(      CMP      r0,#0
        0x1fff228c:    d009        ..      BEQ      0x1fff22a2 ; hal_get_flash_info + 118
        0x1fff228e:    9806        ..      LDR      r0,[sp,#0x18]
        0x1fff2290:    1e41        A.      SUBS     r1,r0,#1
        0x1fff2292:    9106        ..      STR      r1,[sp,#0x18]
        0x1fff2294:    2800        .(      CMP      r0,#0
        0x1fff2296:    d004        ..      BEQ      0x1fff22a2 ; hal_get_flash_info + 118
        0x1fff2298:    9806        ..      LDR      r0,[sp,#0x18]
        0x1fff229a:    1e41        A.      SUBS     r1,r0,#1
        0x1fff229c:    9106        ..      STR      r1,[sp,#0x18]
        0x1fff229e:    2800        .(      CMP      r0,#0
        0x1fff22a0:    d1eb        ..      BNE      0x1fff227a ; hal_get_flash_info + 78
        0x1fff22a2:    4c41        AL      LDR      r4,[pc,#260] ; [0x1fff23a8] = 0x4000c800
        0x1fff22a4:    6820         h      LDR      r0,[r4,#0]
        0x1fff22a6:    2800        .(      CMP      r0,#0
        0x1fff22a8:    d408        ..      BMI      0x1fff22bc ; hal_get_flash_info + 144
        0x1fff22aa:    6820         h      LDR      r0,[r4,#0]
        0x1fff22ac:    2800        .(      CMP      r0,#0
        0x1fff22ae:    d405        ..      BMI      0x1fff22bc ; hal_get_flash_info + 144
        0x1fff22b0:    6820         h      LDR      r0,[r4,#0]
        0x1fff22b2:    2800        .(      CMP      r0,#0
        0x1fff22b4:    d402        ..      BMI      0x1fff22bc ; hal_get_flash_info + 144
        0x1fff22b6:    6820         h      LDR      r0,[r4,#0]
        0x1fff22b8:    2800        .(      CMP      r0,#0
        0x1fff22ba:    d5f3        ..      BPL      0x1fff22a4 ; hal_get_flash_info + 120
        0x1fff22bc:    2001        .       MOVS     r0,#1
        0x1fff22be:    f7fffb1f    ....    BL       _spif_wait_nobusy_x ; 0x1fff1900
        0x1fff22c2:    2511        .%      MOVS     r5,#0x11
        0x1fff22c4:    2800        .(      CMP      r0,#0
        0x1fff22c6:    d1b8        ..      BNE      0x1fff223a ; hal_get_flash_info + 14
        0x1fff22c8:    9600        ..      STR      r6,[sp,#0]
        0x1fff22ca:    9601        ..      STR      r6,[sp,#4]
        0x1fff22cc:    209f        .       MOVS     r0,#0x9f
        0x1fff22ce:    4631        1F      MOV      r1,r6
        0x1fff22d0:    2603        .&      MOVS     r6,#3
        0x1fff22d2:    4632        2F      MOV      r2,r6
        0x1fff22d4:    9102        ..      STR      r1,[sp,#8]
        0x1fff22d6:    460b        .F      MOV      r3,r1
        0x1fff22d8:    f000fda0    ....    BL       $Ven$TT$L$$spif_cmd ; 0x1fff2e1c
        0x1fff22dc:    a806        ..      ADD      r0,sp,#0x18
        0x1fff22de:    4631        1F      MOV      r1,r6
        0x1fff22e0:    f000fda2    ....    BL       $Ven$TT$L$$spif_rddata ; 0x1fff2e28
        0x1fff22e4:    6838        8h      LDR      r0,[r7,#0]
        0x1fff22e6:    0780        ..      LSLS     r0,r0,#30
        0x1fff22e8:    d508        ..      BPL      0x1fff22fc ; hal_get_flash_info + 208
        0x1fff22ea:    6838        8h      LDR      r0,[r7,#0]
        0x1fff22ec:    0780        ..      LSLS     r0,r0,#30
        0x1fff22ee:    d505        ..      BPL      0x1fff22fc ; hal_get_flash_info + 208
        0x1fff22f0:    6838        8h      LDR      r0,[r7,#0]
        0x1fff22f2:    0780        ..      LSLS     r0,r0,#30
        0x1fff22f4:    d502        ..      BPL      0x1fff22fc ; hal_get_flash_info + 208
        0x1fff22f6:    6838        8h      LDR      r0,[r7,#0]
        0x1fff22f8:    0780        ..      LSLS     r0,r0,#30
        0x1fff22fa:    d4f3        ..      BMI      0x1fff22e4 ; hal_get_flash_info + 184
        0x1fff22fc:    9804        ..      LDR      r0,[sp,#0x10]
        0x1fff22fe:    9005        ..      STR      r0,[sp,#0x14]
        0x1fff2300:    9805        ..      LDR      r0,[sp,#0x14]
        0x1fff2302:    1e41        A.      SUBS     r1,r0,#1
        0x1fff2304:    9105        ..      STR      r1,[sp,#0x14]
        0x1fff2306:    2800        .(      CMP      r0,#0
        0x1fff2308:    d018        ..      BEQ      0x1fff233c ; hal_get_flash_info + 272
        0x1fff230a:    9805        ..      LDR      r0,[sp,#0x14]
        0x1fff230c:    1e41        A.      SUBS     r1,r0,#1
        0x1fff230e:    9105        ..      STR      r1,[sp,#0x14]
        0x1fff2310:    2800        .(      CMP      r0,#0
        0x1fff2312:    d013        ..      BEQ      0x1fff233c ; hal_get_flash_info + 272
        0x1fff2314:    9805        ..      LDR      r0,[sp,#0x14]
        0x1fff2316:    1e41        A.      SUBS     r1,r0,#1
        0x1fff2318:    9105        ..      STR      r1,[sp,#0x14]
        0x1fff231a:    2800        .(      CMP      r0,#0
        0x1fff231c:    d00e        ..      BEQ      0x1fff233c ; hal_get_flash_info + 272
        0x1fff231e:    9805        ..      LDR      r0,[sp,#0x14]
        0x1fff2320:    1e41        A.      SUBS     r1,r0,#1
        0x1fff2322:    9105        ..      STR      r1,[sp,#0x14]
        0x1fff2324:    2800        .(      CMP      r0,#0
        0x1fff2326:    d1eb        ..      BNE      0x1fff2300 ; hal_get_flash_info + 212
        0x1fff2328:    e008        ..      B        0x1fff233c ; hal_get_flash_info + 272
        0x1fff232a:    6820         h      LDR      r0,[r4,#0]
        0x1fff232c:    2800        .(      CMP      r0,#0
        0x1fff232e:    d408        ..      BMI      0x1fff2342 ; hal_get_flash_info + 278
        0x1fff2330:    6820         h      LDR      r0,[r4,#0]
        0x1fff2332:    2800        .(      CMP      r0,#0
        0x1fff2334:    d405        ..      BMI      0x1fff2342 ; hal_get_flash_info + 278
        0x1fff2336:    6820         h      LDR      r0,[r4,#0]
        0x1fff2338:    2800        .(      CMP      r0,#0
        0x1fff233a:    d402        ..      BMI      0x1fff2342 ; hal_get_flash_info + 278
        0x1fff233c:    6820         h      LDR      r0,[r4,#0]
        0x1fff233e:    2800        .(      CMP      r0,#0
        0x1fff2340:    d5f3        ..      BPL      0x1fff232a ; hal_get_flash_info + 254
        0x1fff2342:    2601        .&      MOVS     r6,#1
        0x1fff2344:    4630        0F      MOV      r0,r6
        0x1fff2346:    f7fffadb    ....    BL       _spif_wait_nobusy_x ; 0x1fff1900
        0x1fff234a:    2800        .(      CMP      r0,#0
        0x1fff234c:    d000        ..      BEQ      0x1fff2350 ; hal_get_flash_info + 292
        0x1fff234e:    e774        t.      B        0x1fff223a ; hal_get_flash_info + 14
        0x1fff2350:    f000fdac    ....    BL       $Ven$TT$L$$drv_disable_irq ; 0x1fff2eac
        0x1fff2354:    4810        .H      LDR      r0,[pc,#64] ; [0x1fff2398] = 0xe000e100
        0x1fff2356:    9903        ..      LDR      r1,[sp,#0xc]
        0x1fff2358:    6001        .`      STR      r1,[r0,#0]
        0x1fff235a:    f000fdad    ....    BL       $Ven$TT$L$$drv_enable_irq ; 0x1fff2eb8
        0x1fff235e:    a806        ..      ADD      r0,sp,#0x18
        0x1fff2360:    7882        .x      LDRB     r2,[r0,#2]
        0x1fff2362:    4611        .F      MOV      r1,r2
        0x1fff2364:    3911        .9      SUBS     r1,r1,#0x11
        0x1fff2366:    2906        .)      CMP      r1,#6
        0x1fff2368:    d301        ..      BCC      0x1fff236e ; hal_get_flash_info + 322
        0x1fff236a:    04f1        ..      LSLS     r1,r6,#19
        0x1fff236c:    e001        ..      B        0x1fff2372 ; hal_get_flash_info + 326
        0x1fff236e:    4631        1F      MOV      r1,r6
        0x1fff2370:    4091        .@      LSLS     r1,r1,r2
        0x1fff2372:    0412        ..      LSLS     r2,r2,#16
        0x1fff2374:    7843        Cx      LDRB     r3,[r0,#1]
        0x1fff2376:    021b        ..      LSLS     r3,r3,#8
        0x1fff2378:    189a        ..      ADDS     r2,r3,r2
        0x1fff237a:    7800        .x      LDRB     r0,[r0,#0]
        0x1fff237c:    1810        ..      ADDS     r0,r2,r0
        0x1fff237e:    4a05        .J      LDR      r2,[pc,#20] ; [0x1fff2394] = 0x1fff59b8
        0x1fff2380:    6050        P`      STR      r0,[r2,#4]
        0x1fff2382:    6091        .`      STR      r1,[r2,#8]
        0x1fff2384:    7016        .p      STRB     r6,[r2,#0]
        0x1fff2386:    4809        .H      LDR      r0,[pc,#36] ; [0x1fff23ac] = 0x1fff0898
        0x1fff2388:    6001        .`      STR      r1,[r0,#0]
        0x1fff238a:    9d02        ..      LDR      r5,[sp,#8]
        0x1fff238c:    4628        (F      MOV      r0,r5
        0x1fff238e:    b00b        ..      ADD      sp,sp,#0x2c
        0x1fff2390:    bdf0        ..      POP      {r4-r7,pc}
        0x1fff2392:    46c0        .F      MOV      r8,r8
    $d.1
    __arm_cp.0_0
        0x1fff2394:    1fff59b8    .Y..    DCD    536828344
    __arm_cp.0_1
        0x1fff2398:    e000e100    ....    DCD    3758153984
    __arm_cp.0_2
        0x1fff239c:    e000e180    ....    DCD    3758154112
    __arm_cp.0_3
        0x1fff23a0:    00100010    ....    DCD    1048592
    __arm_cp.0_4
        0x1fff23a4:    4000c890    ...@    DCD    1073793168
    __arm_cp.0_5
        0x1fff23a8:    4000c800    ...@    DCD    1073793024
    __arm_cp.0_6
        0x1fff23ac:    1fff0898    ....    DCD    536807576
    $t.22
    hal_pwrmgr_RAM_retention
        0x1fff23b0:    4601        .F      MOV      r1,r0
        0x1fff23b2:    2000        .       MOVS     r0,#0
        0x1fff23b4:    2920         )      CMP      r1,#0x20
        0x1fff23b6:    460a        .F      MOV      r2,r1
        0x1fff23b8:    d204        ..      BCS      0x1fff23c4 ; hal_pwrmgr_RAM_retention + 20
        0x1fff23ba:    4ba9        .K      LDR      r3,[pc,#676] ; [0x1fff2660] = 0x1fff5b9c
        0x1fff23bc:    609a        .`      STR      r2,[r3,#8]
        0x1fff23be:    2920         )      CMP      r1,#0x20
        0x1fff23c0:    d205        ..      BCS      0x1fff23ce ; hal_pwrmgr_RAM_retention + 30
        0x1fff23c2:    4770        pG      BX       lr
        0x1fff23c4:    4602        .F      MOV      r2,r0
        0x1fff23c6:    4ba6        .K      LDR      r3,[pc,#664] ; [0x1fff2660] = 0x1fff5b9c
        0x1fff23c8:    609a        .`      STR      r2,[r3,#8]
        0x1fff23ca:    2920         )      CMP      r1,#0x20
        0x1fff23cc:    d3f9        ..      BCC      0x1fff23c2 ; hal_pwrmgr_RAM_retention + 18
        0x1fff23ce:    2006        .       MOVS     r0,#6
        0x1fff23d0:    4770        pG      BX       lr
        0x1fff23d2:    46c0        .F      MOV      r8,r8
    hal_pwrmgr_RAM_retention_set
        0x1fff23d4:    201f        .       MOVS     r0,#0x1f
        0x1fff23d6:    0440        @.      LSLS     r0,r0,#17
        0x1fff23d8:    49a0        .I      LDR      r1,[pc,#640] ; [0x1fff265c] = 0x4000f01c
        0x1fff23da:    680a        .h      LDR      r2,[r1,#0]
        0x1fff23dc:    4382        .C      BICS     r2,r2,r0
        0x1fff23de:    48a0        .H      LDR      r0,[pc,#640] ; [0x1fff2660] = 0x1fff5b9c
        0x1fff23e0:    6880        .h      LDR      r0,[r0,#8]
        0x1fff23e2:    0440        @.      LSLS     r0,r0,#17
        0x1fff23e4:    4310        .C      ORRS     r0,r0,r2
        0x1fff23e6:    6008        .`      STR      r0,[r1,#0]
        0x1fff23e8:    2000        .       MOVS     r0,#0
        0x1fff23ea:    4770        pG      BX       lr
    hal_pwrmgr_init
        0x1fff23ec:    b580        ..      PUSH     {r7,lr}
        0x1fff23ee:    48e8        .H      LDR      r0,[pc,#928] ; [0x1fff2790] = 0x1fff6fb4
        0x1fff23f0:    2178        x!      MOVS     r1,#0x78
        0x1fff23f2:    f000fd6d    ..m.    BL       $Ven$TT$L$$__aeabi_memclr4 ; 0x1fff2ed0
        0x1fff23f6:    f000fd71    ..q.    BL       $Ven$TT$L$$enableSleep ; 0x1fff2edc
        0x1fff23fa:    4804        .H      LDR      r0,[pc,#16] ; [0x1fff240c] = 0x40002000
        0x1fff23fc:    7800        .x      LDRB     r0,[r0,#0]
        0x1fff23fe:    07c0        ..      LSLS     r0,r0,#31
        0x1fff2400:    d002        ..      BEQ      0x1fff2408 ; hal_pwrmgr_init + 28
        0x1fff2402:    4803        .H      LDR      r0,[pc,#12] ; [0x1fff2410] = 0x1fff00f0
        0x1fff2404:    4903        .I      LDR      r1,[pc,#12] ; [0x1fff2414] = 0x1fff3895
        0x1fff2406:    6001        .`      STR      r1,[r0,#0]
        0x1fff2408:    2000        .       MOVS     r0,#0
        0x1fff240a:    bd80        ..      POP      {r7,pc}
    $d.3
    __arm_cp.1_1
        0x1fff240c:    40002000    . .@    DCD    1073750016
    __arm_cp.1_2
        0x1fff2410:    1fff00f0    ....    DCD    536805616
    __arm_cp.1_3
        0x1fff2414:    1fff3895    .8..    DCD    536819861
    $t.8
    hal_pwrmgr_lock
        0x1fff2418:    b570        p.      PUSH     {r4-r6,lr}
        0x1fff241a:    4605        .F      MOV      r5,r0
        0x1fff241c:    f000fd46    ..F.    BL       $Ven$TT$L$$drv_disable_irq ; 0x1fff2eac
        0x1fff2420:    48db        .H      LDR      r0,[pc,#876] ; [0x1fff2790] = 0x1fff6fb4
        0x1fff2422:    7801        .x      LDRB     r1,[r0,#0]
        0x1fff2424:    2412        .$      MOVS     r4,#0x12
        0x1fff2426:    2900        .)      CMP      r1,#0
        0x1fff2428:    d050        P.      BEQ      0x1fff24cc ; hal_pwrmgr_lock + 180
        0x1fff242a:    2600        .&      MOVS     r6,#0
        0x1fff242c:    42a9        .B      CMP      r1,r5
        0x1fff242e:    4631        1F      MOV      r1,r6
        0x1fff2430:    d044        D.      BEQ      0x1fff24bc ; hal_pwrmgr_lock + 164
        0x1fff2432:    7b01        .{      LDRB     r1,[r0,#0xc]
        0x1fff2434:    2900        .)      CMP      r1,#0
        0x1fff2436:    d049        I.      BEQ      0x1fff24cc ; hal_pwrmgr_lock + 180
        0x1fff2438:    42a9        .B      CMP      r1,r5
        0x1fff243a:    d101        ..      BNE      0x1fff2440 ; hal_pwrmgr_lock + 40
        0x1fff243c:    2101        .!      MOVS     r1,#1
        0x1fff243e:    e03d        =.      B        0x1fff24bc ; hal_pwrmgr_lock + 164
        0x1fff2440:    7e01        .~      LDRB     r1,[r0,#0x18]
        0x1fff2442:    2900        .)      CMP      r1,#0
        0x1fff2444:    d042        B.      BEQ      0x1fff24cc ; hal_pwrmgr_lock + 180
        0x1fff2446:    42a9        .B      CMP      r1,r5
        0x1fff2448:    d101        ..      BNE      0x1fff244e ; hal_pwrmgr_lock + 54
        0x1fff244a:    2102        .!      MOVS     r1,#2
        0x1fff244c:    e036        6.      B        0x1fff24bc ; hal_pwrmgr_lock + 164
        0x1fff244e:    2124        $!      MOVS     r1,#0x24
        0x1fff2450:    5c41        A\      LDRB     r1,[r0,r1]
        0x1fff2452:    2900        .)      CMP      r1,#0
        0x1fff2454:    d03a        :.      BEQ      0x1fff24cc ; hal_pwrmgr_lock + 180
        0x1fff2456:    42a9        .B      CMP      r1,r5
        0x1fff2458:    d101        ..      BNE      0x1fff245e ; hal_pwrmgr_lock + 70
        0x1fff245a:    2103        .!      MOVS     r1,#3
        0x1fff245c:    e02e        ..      B        0x1fff24bc ; hal_pwrmgr_lock + 164
        0x1fff245e:    2130        0!      MOVS     r1,#0x30
        0x1fff2460:    5c41        A\      LDRB     r1,[r0,r1]
        0x1fff2462:    2900        .)      CMP      r1,#0
        0x1fff2464:    d032        2.      BEQ      0x1fff24cc ; hal_pwrmgr_lock + 180
        0x1fff2466:    42a9        .B      CMP      r1,r5
        0x1fff2468:    d101        ..      BNE      0x1fff246e ; hal_pwrmgr_lock + 86
        0x1fff246a:    2104        .!      MOVS     r1,#4
        0x1fff246c:    e026        &.      B        0x1fff24bc ; hal_pwrmgr_lock + 164
        0x1fff246e:    213c        <!      MOVS     r1,#0x3c
        0x1fff2470:    5c41        A\      LDRB     r1,[r0,r1]
        0x1fff2472:    2900        .)      CMP      r1,#0
        0x1fff2474:    d02a        *.      BEQ      0x1fff24cc ; hal_pwrmgr_lock + 180
        0x1fff2476:    42a9        .B      CMP      r1,r5
        0x1fff2478:    d101        ..      BNE      0x1fff247e ; hal_pwrmgr_lock + 102
        0x1fff247a:    2105        .!      MOVS     r1,#5
        0x1fff247c:    e01e        ..      B        0x1fff24bc ; hal_pwrmgr_lock + 164
        0x1fff247e:    2148        H!      MOVS     r1,#0x48
        0x1fff2480:    5c41        A\      LDRB     r1,[r0,r1]
        0x1fff2482:    2900        .)      CMP      r1,#0
        0x1fff2484:    d022        ".      BEQ      0x1fff24cc ; hal_pwrmgr_lock + 180
        0x1fff2486:    42a9        .B      CMP      r1,r5
        0x1fff2488:    d101        ..      BNE      0x1fff248e ; hal_pwrmgr_lock + 118
        0x1fff248a:    2106        .!      MOVS     r1,#6
        0x1fff248c:    e016        ..      B        0x1fff24bc ; hal_pwrmgr_lock + 164
        0x1fff248e:    2154        T!      MOVS     r1,#0x54
        0x1fff2490:    5c41        A\      LDRB     r1,[r0,r1]
        0x1fff2492:    2900        .)      CMP      r1,#0
        0x1fff2494:    d01a        ..      BEQ      0x1fff24cc ; hal_pwrmgr_lock + 180
        0x1fff2496:    42a9        .B      CMP      r1,r5
        0x1fff2498:    d101        ..      BNE      0x1fff249e ; hal_pwrmgr_lock + 134
        0x1fff249a:    2107        .!      MOVS     r1,#7
        0x1fff249c:    e00e        ..      B        0x1fff24bc ; hal_pwrmgr_lock + 164
        0x1fff249e:    2160        `!      MOVS     r1,#0x60
        0x1fff24a0:    5c41        A\      LDRB     r1,[r0,r1]
        0x1fff24a2:    2900        .)      CMP      r1,#0
        0x1fff24a4:    d012        ..      BEQ      0x1fff24cc ; hal_pwrmgr_lock + 180
        0x1fff24a6:    42a9        .B      CMP      r1,r5
        0x1fff24a8:    d101        ..      BNE      0x1fff24ae ; hal_pwrmgr_lock + 150
        0x1fff24aa:    2108        .!      MOVS     r1,#8
        0x1fff24ac:    e006        ..      B        0x1fff24bc ; hal_pwrmgr_lock + 164
        0x1fff24ae:    216c        l!      MOVS     r1,#0x6c
        0x1fff24b0:    5c41        A\      LDRB     r1,[r0,r1]
        0x1fff24b2:    2900        .)      CMP      r1,#0
        0x1fff24b4:    d00a        ..      BEQ      0x1fff24cc ; hal_pwrmgr_lock + 180
        0x1fff24b6:    42a9        .B      CMP      r1,r5
        0x1fff24b8:    d108        ..      BNE      0x1fff24cc ; hal_pwrmgr_lock + 180
        0x1fff24ba:    2109        .!      MOVS     r1,#9
        0x1fff24bc:    220c        ."      MOVS     r2,#0xc
        0x1fff24be:    434a        JC      MULS     r2,r1,r2
        0x1fff24c0:    1880        ..      ADDS     r0,r0,r2
        0x1fff24c2:    2101        .!      MOVS     r1,#1
        0x1fff24c4:    7041        Ap      STRB     r1,[r0,#1]
        0x1fff24c6:    f000fd0f    ....    BL       $Ven$TT$L$$disableSleep ; 0x1fff2ee8
        0x1fff24ca:    4634        4F      MOV      r4,r6
        0x1fff24cc:    f000fcf4    ....    BL       $Ven$TT$L$$drv_enable_irq ; 0x1fff2eb8
        0x1fff24d0:    4620         F      MOV      r0,r4
        0x1fff24d2:    bd70        p.      POP      {r4-r6,pc}
    hal_pwrmgr_register
        0x1fff24d4:    b5f0        ..      PUSH     {r4-r7,lr}
        0x1fff24d6:    4cf0        .L      LDR      r4,[pc,#960] ; [0x1fff2898] = 0x1fff6fb4
        0x1fff24d8:    7826        &x      LDRB     r6,[r4,#0]
        0x1fff24da:    2307        .#      MOVS     r3,#7
        0x1fff24dc:    4286        .B      CMP      r6,r0
        0x1fff24de:    d05e        ^.      BEQ      0x1fff259e ; hal_pwrmgr_register + 202
        0x1fff24e0:    2500        .%      MOVS     r5,#0
        0x1fff24e2:    2e00        ..      CMP      r6,#0
        0x1fff24e4:    462f        /F      MOV      r7,r5
        0x1fff24e6:    4626        &F      MOV      r6,r4
        0x1fff24e8:    d051        Q.      BEQ      0x1fff258e ; hal_pwrmgr_register + 186
        0x1fff24ea:    4eeb        .N      LDR      r6,[pc,#940] ; [0x1fff2898] = 0x1fff6fb4
        0x1fff24ec:    7b37        7{      LDRB     r7,[r6,#0xc]
        0x1fff24ee:    4287        .B      CMP      r7,r0
        0x1fff24f0:    d055        U.      BEQ      0x1fff259e ; hal_pwrmgr_register + 202
        0x1fff24f2:    2f00        ./      CMP      r7,#0
        0x1fff24f4:    d031        1.      BEQ      0x1fff255a ; hal_pwrmgr_register + 134
        0x1fff24f6:    7e37        7~      LDRB     r7,[r6,#0x18]
        0x1fff24f8:    4287        .B      CMP      r7,r0
        0x1fff24fa:    d050        P.      BEQ      0x1fff259e ; hal_pwrmgr_register + 202
        0x1fff24fc:    2f00        ./      CMP      r7,#0
        0x1fff24fe:    d02f        /.      BEQ      0x1fff2560 ; hal_pwrmgr_register + 140
        0x1fff2500:    2724        $'      MOVS     r7,#0x24
        0x1fff2502:    5df7        .]      LDRB     r7,[r6,r7]
        0x1fff2504:    4287        .B      CMP      r7,r0
        0x1fff2506:    d04a        J.      BEQ      0x1fff259e ; hal_pwrmgr_register + 202
        0x1fff2508:    2f00        ./      CMP      r7,#0
        0x1fff250a:    d02c        ,.      BEQ      0x1fff2566 ; hal_pwrmgr_register + 146
        0x1fff250c:    2730        0'      MOVS     r7,#0x30
        0x1fff250e:    5df7        .]      LDRB     r7,[r6,r7]
        0x1fff2510:    4287        .B      CMP      r7,r0
        0x1fff2512:    d044        D.      BEQ      0x1fff259e ; hal_pwrmgr_register + 202
        0x1fff2514:    2f00        ./      CMP      r7,#0
        0x1fff2516:    d029        ).      BEQ      0x1fff256c ; hal_pwrmgr_register + 152
        0x1fff2518:    273c        <'      MOVS     r7,#0x3c
        0x1fff251a:    5df7        .]      LDRB     r7,[r6,r7]
        0x1fff251c:    4287        .B      CMP      r7,r0
        0x1fff251e:    d03e        >.      BEQ      0x1fff259e ; hal_pwrmgr_register + 202
        0x1fff2520:    2f00        ./      CMP      r7,#0
        0x1fff2522:    d026        &.      BEQ      0x1fff2572 ; hal_pwrmgr_register + 158
        0x1fff2524:    2748        H'      MOVS     r7,#0x48
        0x1fff2526:    5df7        .]      LDRB     r7,[r6,r7]
        0x1fff2528:    4287        .B      CMP      r7,r0
        0x1fff252a:    d038        8.      BEQ      0x1fff259e ; hal_pwrmgr_register + 202
        0x1fff252c:    2f00        ./      CMP      r7,#0
        0x1fff252e:    d023        #.      BEQ      0x1fff2578 ; hal_pwrmgr_register + 164
        0x1fff2530:    2754        T'      MOVS     r7,#0x54
        0x1fff2532:    5df7        .]      LDRB     r7,[r6,r7]
        0x1fff2534:    4287        .B      CMP      r7,r0
        0x1fff2536:    d032        2.      BEQ      0x1fff259e ; hal_pwrmgr_register + 202
        0x1fff2538:    2f00        ./      CMP      r7,#0
        0x1fff253a:    d020         .      BEQ      0x1fff257e ; hal_pwrmgr_register + 170
        0x1fff253c:    2360        `#      MOVS     r3,#0x60
        0x1fff253e:    5cf7        .\      LDRB     r7,[r6,r3]
        0x1fff2540:    2307        .#      MOVS     r3,#7
        0x1fff2542:    4287        .B      CMP      r7,r0
        0x1fff2544:    d02b        +.      BEQ      0x1fff259e ; hal_pwrmgr_register + 202
        0x1fff2546:    2f00        ./      CMP      r7,#0
        0x1fff2548:    d01c        ..      BEQ      0x1fff2584 ; hal_pwrmgr_register + 176
        0x1fff254a:    276c        l'      MOVS     r7,#0x6c
        0x1fff254c:    5df7        .]      LDRB     r7,[r6,r7]
        0x1fff254e:    4287        .B      CMP      r7,r0
        0x1fff2550:    d025        %.      BEQ      0x1fff259e ; hal_pwrmgr_register + 202
        0x1fff2552:    2f00        ./      CMP      r7,#0
        0x1fff2554:    d019        ..      BEQ      0x1fff258a ; hal_pwrmgr_register + 182
        0x1fff2556:    2003        .       MOVS     r0,#3
        0x1fff2558:    bdf0        ..      POP      {r4-r7,pc}
        0x1fff255a:    360c        .6      ADDS     r6,r6,#0xc
        0x1fff255c:    2701        .'      MOVS     r7,#1
        0x1fff255e:    e016        ..      B        0x1fff258e ; hal_pwrmgr_register + 186
        0x1fff2560:    3618        .6      ADDS     r6,r6,#0x18
        0x1fff2562:    2702        .'      MOVS     r7,#2
        0x1fff2564:    e013        ..      B        0x1fff258e ; hal_pwrmgr_register + 186
        0x1fff2566:    3624        $6      ADDS     r6,r6,#0x24
        0x1fff2568:    2703        .'      MOVS     r7,#3
        0x1fff256a:    e010        ..      B        0x1fff258e ; hal_pwrmgr_register + 186
        0x1fff256c:    3630        06      ADDS     r6,r6,#0x30
        0x1fff256e:    2704        .'      MOVS     r7,#4
        0x1fff2570:    e00d        ..      B        0x1fff258e ; hal_pwrmgr_register + 186
        0x1fff2572:    363c        <6      ADDS     r6,r6,#0x3c
        0x1fff2574:    2705        .'      MOVS     r7,#5
        0x1fff2576:    e00a        ..      B        0x1fff258e ; hal_pwrmgr_register + 186
        0x1fff2578:    3648        H6      ADDS     r6,r6,#0x48
        0x1fff257a:    2706        .'      MOVS     r7,#6
        0x1fff257c:    e007        ..      B        0x1fff258e ; hal_pwrmgr_register + 186
        0x1fff257e:    3654        T6      ADDS     r6,r6,#0x54
        0x1fff2580:    2707        .'      MOVS     r7,#7
        0x1fff2582:    e004        ..      B        0x1fff258e ; hal_pwrmgr_register + 186
        0x1fff2584:    3660        `6      ADDS     r6,r6,#0x60
        0x1fff2586:    2708        .'      MOVS     r7,#8
        0x1fff2588:    e001        ..      B        0x1fff258e ; hal_pwrmgr_register + 186
        0x1fff258a:    366c        l6      ADDS     r6,r6,#0x6c
        0x1fff258c:    2709        .'      MOVS     r7,#9
        0x1fff258e:    7030        0p      STRB     r0,[r6,#0]
        0x1fff2590:    200c        .       MOVS     r0,#0xc
        0x1fff2592:    4378        xC      MULS     r0,r7,r0
        0x1fff2594:    1820         .      ADDS     r0,r4,r0
        0x1fff2596:    7045        Ep      STRB     r5,[r0,#1]
        0x1fff2598:    6041        A`      STR      r1,[r0,#4]
        0x1fff259a:    6082        .`      STR      r2,[r0,#8]
        0x1fff259c:    462b        +F      MOV      r3,r5
        0x1fff259e:    4618        .F      MOV      r0,r3
        0x1fff25a0:    bdf0        ..      POP      {r4-r7,pc}
        0x1fff25a2:    46c0        .F      MOV      r8,r8
    __tagsym$$used.1
    hal_pwrmgr_sleep_process
        0x1fff25a4:    b510        ..      PUSH     {r4,lr}
        0x1fff25a6:    201f        .       MOVS     r0,#0x1f
        0x1fff25a8:    0440        @.      LSLS     r0,r0,#17
        0x1fff25aa:    49e1        .I      LDR      r1,[pc,#900] ; [0x1fff2930] = 0x4000f01c
        0x1fff25ac:    680a        .h      LDR      r2,[r1,#0]
        0x1fff25ae:    4382        .C      BICS     r2,r2,r0
        0x1fff25b0:    48b7        .H      LDR      r0,[pc,#732] ; [0x1fff2890] = 0x1fff5b9c
        0x1fff25b2:    6880        .h      LDR      r0,[r0,#8]
        0x1fff25b4:    0440        @.      LSLS     r0,r0,#17
        0x1fff25b6:    4310        .C      ORRS     r0,r0,r2
        0x1fff25b8:    6008        .`      STR      r0,[r1,#0]
        0x1fff25ba:    4cb7        .L      LDR      r4,[pc,#732] ; [0x1fff2898] = 0x1fff6fb4
        0x1fff25bc:    7820         x      LDRB     r0,[r4,#0]
        0x1fff25be:    2800        .(      CMP      r0,#0
        0x1fff25c0:    d049        I.      BEQ      0x1fff2656 ; hal_pwrmgr_sleep_process + 178
        0x1fff25c2:    6860        `h      LDR      r0,[r4,#4]
        0x1fff25c4:    2800        .(      CMP      r0,#0
        0x1fff25c6:    d000        ..      BEQ      0x1fff25ca ; hal_pwrmgr_sleep_process + 38
        0x1fff25c8:    4780        .G      BLX      r0
        0x1fff25ca:    7b20         {      LDRB     r0,[r4,#0xc]
        0x1fff25cc:    2800        .(      CMP      r0,#0
        0x1fff25ce:    d042        B.      BEQ      0x1fff2656 ; hal_pwrmgr_sleep_process + 178
        0x1fff25d0:    6920         i      LDR      r0,[r4,#0x10]
        0x1fff25d2:    2800        .(      CMP      r0,#0
        0x1fff25d4:    d000        ..      BEQ      0x1fff25d8 ; hal_pwrmgr_sleep_process + 52
        0x1fff25d6:    4780        .G      BLX      r0
        0x1fff25d8:    7e20         ~      LDRB     r0,[r4,#0x18]
        0x1fff25da:    2800        .(      CMP      r0,#0
        0x1fff25dc:    d03b        ;.      BEQ      0x1fff2656 ; hal_pwrmgr_sleep_process + 178
        0x1fff25de:    69e0        .i      LDR      r0,[r4,#0x1c]
        0x1fff25e0:    2800        .(      CMP      r0,#0
        0x1fff25e2:    d000        ..      BEQ      0x1fff25e6 ; hal_pwrmgr_sleep_process + 66
        0x1fff25e4:    4780        .G      BLX      r0
        0x1fff25e6:    2024        $       MOVS     r0,#0x24
        0x1fff25e8:    5c20         \      LDRB     r0,[r4,r0]
        0x1fff25ea:    2800        .(      CMP      r0,#0
        0x1fff25ec:    d033        3.      BEQ      0x1fff2656 ; hal_pwrmgr_sleep_process + 178
        0x1fff25ee:    6aa0        .j      LDR      r0,[r4,#0x28]
        0x1fff25f0:    2800        .(      CMP      r0,#0
        0x1fff25f2:    d000        ..      BEQ      0x1fff25f6 ; hal_pwrmgr_sleep_process + 82
        0x1fff25f4:    4780        .G      BLX      r0
        0x1fff25f6:    2030        0       MOVS     r0,#0x30
        0x1fff25f8:    5c20         \      LDRB     r0,[r4,r0]
        0x1fff25fa:    2800        .(      CMP      r0,#0
        0x1fff25fc:    d02b        +.      BEQ      0x1fff2656 ; hal_pwrmgr_sleep_process + 178
        0x1fff25fe:    6b60        `k      LDR      r0,[r4,#0x34]
        0x1fff2600:    2800        .(      CMP      r0,#0
        0x1fff2602:    d000        ..      BEQ      0x1fff2606 ; hal_pwrmgr_sleep_process + 98
        0x1fff2604:    4780        .G      BLX      r0
        0x1fff2606:    203c        <       MOVS     r0,#0x3c
        0x1fff2608:    5c20         \      LDRB     r0,[r4,r0]
        0x1fff260a:    2800        .(      CMP      r0,#0
        0x1fff260c:    d023        #.      BEQ      0x1fff2656 ; hal_pwrmgr_sleep_process + 178
        0x1fff260e:    6c20         l      LDR      r0,[r4,#0x40]
        0x1fff2610:    2800        .(      CMP      r0,#0
        0x1fff2612:    d000        ..      BEQ      0x1fff2616 ; hal_pwrmgr_sleep_process + 114
        0x1fff2614:    4780        .G      BLX      r0
        0x1fff2616:    2048        H       MOVS     r0,#0x48
        0x1fff2618:    5c20         \      LDRB     r0,[r4,r0]
        0x1fff261a:    2800        .(      CMP      r0,#0
        0x1fff261c:    d01b        ..      BEQ      0x1fff2656 ; hal_pwrmgr_sleep_process + 178
        0x1fff261e:    6ce0        .l      LDR      r0,[r4,#0x4c]
        0x1fff2620:    2800        .(      CMP      r0,#0
        0x1fff2622:    d000        ..      BEQ      0x1fff2626 ; hal_pwrmgr_sleep_process + 130
        0x1fff2624:    4780        .G      BLX      r0
        0x1fff2626:    2054        T       MOVS     r0,#0x54
        0x1fff2628:    5c20         \      LDRB     r0,[r4,r0]
        0x1fff262a:    2800        .(      CMP      r0,#0
        0x1fff262c:    d013        ..      BEQ      0x1fff2656 ; hal_pwrmgr_sleep_process + 178
        0x1fff262e:    6da0        .m      LDR      r0,[r4,#0x58]
        0x1fff2630:    2800        .(      CMP      r0,#0
        0x1fff2632:    d000        ..      BEQ      0x1fff2636 ; hal_pwrmgr_sleep_process + 146
        0x1fff2634:    4780        .G      BLX      r0
        0x1fff2636:    2060        `       MOVS     r0,#0x60
        0x1fff2638:    5c20         \      LDRB     r0,[r4,r0]
        0x1fff263a:    2800        .(      CMP      r0,#0
        0x1fff263c:    d00b        ..      BEQ      0x1fff2656 ; hal_pwrmgr_sleep_process + 178
        0x1fff263e:    6e60        `n      LDR      r0,[r4,#0x64]
        0x1fff2640:    2800        .(      CMP      r0,#0
        0x1fff2642:    d000        ..      BEQ      0x1fff2646 ; hal_pwrmgr_sleep_process + 162
        0x1fff2644:    4780        .G      BLX      r0
        0x1fff2646:    206c        l       MOVS     r0,#0x6c
        0x1fff2648:    5c20         \      LDRB     r0,[r4,r0]
        0x1fff264a:    2800        .(      CMP      r0,#0
        0x1fff264c:    d003        ..      BEQ      0x1fff2656 ; hal_pwrmgr_sleep_process + 178
        0x1fff264e:    6f20         o      LDR      r0,[r4,#0x70]
        0x1fff2650:    2800        .(      CMP      r0,#0
        0x1fff2652:    d000        ..      BEQ      0x1fff2656 ; hal_pwrmgr_sleep_process + 178
        0x1fff2654:    4780        .G      BLX      r0
        0x1fff2656:    2000        .       MOVS     r0,#0
        0x1fff2658:    bd10        ..      POP      {r4,pc}
        0x1fff265a:    46c0        .F      MOV      r8,r8
    $d.19
    __arm_cp.9_0
        0x1fff265c:    4000f01c    ...@    DCD    1073803292
    __arm_cp.9_1
        0x1fff2660:    1fff5b9c    .[..    DCD    536828828
    $t.10
    hal_pwrmgr_unlock
        0x1fff2664:    b510        ..      PUSH     {r4,lr}
        0x1fff2666:    4604        .F      MOV      r4,r0
        0x1fff2668:    f000fc20    .. .    BL       $Ven$TT$L$$drv_disable_irq ; 0x1fff2eac
        0x1fff266c:    498a        .I      LDR      r1,[pc,#552] ; [0x1fff2898] = 0x1fff6fb4
        0x1fff266e:    7808        .x      LDRB     r0,[r1,#0]
        0x1fff2670:    2800        .(      CMP      r0,#0
        0x1fff2672:    d100        ..      BNE      0x1fff2676 ; hal_pwrmgr_unlock + 18
        0x1fff2674:    e085        ..      B        0x1fff2782 ; hal_pwrmgr_unlock + 286
        0x1fff2676:    42a0        .B      CMP      r0,r4
        0x1fff2678:    d105        ..      BNE      0x1fff2686 ; hal_pwrmgr_unlock + 34
        0x1fff267a:    2000        .       MOVS     r0,#0
        0x1fff267c:    7048        Hp      STRB     r0,[r1,#1]
        0x1fff267e:    7b0a        .{      LDRB     r2,[r1,#0xc]
        0x1fff2680:    2a00        .*      CMP      r2,#0
        0x1fff2682:    d104        ..      BNE      0x1fff268e ; hal_pwrmgr_unlock + 42
        0x1fff2684:    e075        u.      B        0x1fff2772 ; hal_pwrmgr_unlock + 270
        0x1fff2686:    7848        Hx      LDRB     r0,[r1,#1]
        0x1fff2688:    7b0a        .{      LDRB     r2,[r1,#0xc]
        0x1fff268a:    2a00        .*      CMP      r2,#0
        0x1fff268c:    d071        q.      BEQ      0x1fff2772 ; hal_pwrmgr_unlock + 270
        0x1fff268e:    42a2        .B      CMP      r2,r4
        0x1fff2690:    d10a        ..      BNE      0x1fff26a8 ; hal_pwrmgr_unlock + 68
        0x1fff2692:    2200        ."      MOVS     r2,#0
        0x1fff2694:    734a        Js      STRB     r2,[r1,#0xd]
        0x1fff2696:    1880        ..      ADDS     r0,r0,r2
        0x1fff2698:    7e0a        .~      LDRB     r2,[r1,#0x18]
        0x1fff269a:    2a00        .*      CMP      r2,#0
        0x1fff269c:    d009        ..      BEQ      0x1fff26b2 ; hal_pwrmgr_unlock + 78
        0x1fff269e:    42a2        .B      CMP      r2,r4
        0x1fff26a0:    d109        ..      BNE      0x1fff26b6 ; hal_pwrmgr_unlock + 82
        0x1fff26a2:    2200        ."      MOVS     r2,#0
        0x1fff26a4:    764a        Jv      STRB     r2,[r1,#0x19]
        0x1fff26a6:    e007        ..      B        0x1fff26b8 ; hal_pwrmgr_unlock + 84
        0x1fff26a8:    7b4a        J{      LDRB     r2,[r1,#0xd]
        0x1fff26aa:    1880        ..      ADDS     r0,r0,r2
        0x1fff26ac:    7e0a        .~      LDRB     r2,[r1,#0x18]
        0x1fff26ae:    2a00        .*      CMP      r2,#0
        0x1fff26b0:    d1f5        ..      BNE      0x1fff269e ; hal_pwrmgr_unlock + 58
        0x1fff26b2:    b2c0        ..      UXTB     r0,r0
        0x1fff26b4:    e05d        ].      B        0x1fff2772 ; hal_pwrmgr_unlock + 270
        0x1fff26b6:    7e4a        J~      LDRB     r2,[r1,#0x19]
        0x1fff26b8:    2324        $#      MOVS     r3,#0x24
        0x1fff26ba:    5ccb        .\      LDRB     r3,[r1,r3]
        0x1fff26bc:    1880        ..      ADDS     r0,r0,r2
        0x1fff26be:    b2c0        ..      UXTB     r0,r0
        0x1fff26c0:    2b00        .+      CMP      r3,#0
        0x1fff26c2:    d056        V.      BEQ      0x1fff2772 ; hal_pwrmgr_unlock + 270
        0x1fff26c4:    42a3        .B      CMP      r3,r4
        0x1fff26c6:    d103        ..      BNE      0x1fff26d0 ; hal_pwrmgr_unlock + 108
        0x1fff26c8:    2325        %#      MOVS     r3,#0x25
        0x1fff26ca:    2200        ."      MOVS     r2,#0
        0x1fff26cc:    54ca        .T      STRB     r2,[r1,r3]
        0x1fff26ce:    e001        ..      B        0x1fff26d4 ; hal_pwrmgr_unlock + 112
        0x1fff26d0:    2225        %"      MOVS     r2,#0x25
        0x1fff26d2:    5c8a        .\      LDRB     r2,[r1,r2]
        0x1fff26d4:    2330        0#      MOVS     r3,#0x30
        0x1fff26d6:    5ccb        .\      LDRB     r3,[r1,r3]
        0x1fff26d8:    1810        ..      ADDS     r0,r2,r0
        0x1fff26da:    2b00        .+      CMP      r3,#0
        0x1fff26dc:    d049        I.      BEQ      0x1fff2772 ; hal_pwrmgr_unlock + 270
        0x1fff26de:    42a3        .B      CMP      r3,r4
        0x1fff26e0:    d103        ..      BNE      0x1fff26ea ; hal_pwrmgr_unlock + 134
        0x1fff26e2:    2331        1#      MOVS     r3,#0x31
        0x1fff26e4:    2200        ."      MOVS     r2,#0
        0x1fff26e6:    54ca        .T      STRB     r2,[r1,r3]
        0x1fff26e8:    e001        ..      B        0x1fff26ee ; hal_pwrmgr_unlock + 138
        0x1fff26ea:    2231        1"      MOVS     r2,#0x31
        0x1fff26ec:    5c8a        .\      LDRB     r2,[r1,r2]
        0x1fff26ee:    233c        <#      MOVS     r3,#0x3c
        0x1fff26f0:    5ccb        .\      LDRB     r3,[r1,r3]
        0x1fff26f2:    1880        ..      ADDS     r0,r0,r2
        0x1fff26f4:    2b00        .+      CMP      r3,#0
        0x1fff26f6:    d03c        <.      BEQ      0x1fff2772 ; hal_pwrmgr_unlock + 270
        0x1fff26f8:    42a3        .B      CMP      r3,r4
        0x1fff26fa:    d103        ..      BNE      0x1fff2704 ; hal_pwrmgr_unlock + 160
        0x1fff26fc:    233d        =#      MOVS     r3,#0x3d
        0x1fff26fe:    2200        ."      MOVS     r2,#0
        0x1fff2700:    54ca        .T      STRB     r2,[r1,r3]
        0x1fff2702:    e001        ..      B        0x1fff2708 ; hal_pwrmgr_unlock + 164
        0x1fff2704:    223d        ="      MOVS     r2,#0x3d
        0x1fff2706:    5c8a        .\      LDRB     r2,[r1,r2]
        0x1fff2708:    2348        H#      MOVS     r3,#0x48
        0x1fff270a:    5ccb        .\      LDRB     r3,[r1,r3]
        0x1fff270c:    1880        ..      ADDS     r0,r0,r2
        0x1fff270e:    2b00        .+      CMP      r3,#0
        0x1fff2710:    d02f        /.      BEQ      0x1fff2772 ; hal_pwrmgr_unlock + 270
        0x1fff2712:    42a3        .B      CMP      r3,r4
        0x1fff2714:    d103        ..      BNE      0x1fff271e ; hal_pwrmgr_unlock + 186
        0x1fff2716:    2349        I#      MOVS     r3,#0x49
        0x1fff2718:    2200        ."      MOVS     r2,#0
        0x1fff271a:    54ca        .T      STRB     r2,[r1,r3]
        0x1fff271c:    e001        ..      B        0x1fff2722 ; hal_pwrmgr_unlock + 190
        0x1fff271e:    2249        I"      MOVS     r2,#0x49
        0x1fff2720:    5c8a        .\      LDRB     r2,[r1,r2]
        0x1fff2722:    2354        T#      MOVS     r3,#0x54
        0x1fff2724:    5ccb        .\      LDRB     r3,[r1,r3]
        0x1fff2726:    1880        ..      ADDS     r0,r0,r2
        0x1fff2728:    2b00        .+      CMP      r3,#0
        0x1fff272a:    d022        ".      BEQ      0x1fff2772 ; hal_pwrmgr_unlock + 270
        0x1fff272c:    42a3        .B      CMP      r3,r4
        0x1fff272e:    d103        ..      BNE      0x1fff2738 ; hal_pwrmgr_unlock + 212
        0x1fff2730:    2355        U#      MOVS     r3,#0x55
        0x1fff2732:    2200        ."      MOVS     r2,#0
        0x1fff2734:    54ca        .T      STRB     r2,[r1,r3]
        0x1fff2736:    e001        ..      B        0x1fff273c ; hal_pwrmgr_unlock + 216
        0x1fff2738:    2255        U"      MOVS     r2,#0x55
        0x1fff273a:    5c8a        .\      LDRB     r2,[r1,r2]
        0x1fff273c:    2360        `#      MOVS     r3,#0x60
        0x1fff273e:    5ccb        .\      LDRB     r3,[r1,r3]
        0x1fff2740:    1880        ..      ADDS     r0,r0,r2
        0x1fff2742:    2b00        .+      CMP      r3,#0
        0x1fff2744:    d015        ..      BEQ      0x1fff2772 ; hal_pwrmgr_unlock + 270
        0x1fff2746:    42a3        .B      CMP      r3,r4
        0x1fff2748:    d103        ..      BNE      0x1fff2752 ; hal_pwrmgr_unlock + 238
        0x1fff274a:    2361        a#      MOVS     r3,#0x61
        0x1fff274c:    2200        ."      MOVS     r2,#0
        0x1fff274e:    54ca        .T      STRB     r2,[r1,r3]
        0x1fff2750:    e001        ..      B        0x1fff2756 ; hal_pwrmgr_unlock + 242
        0x1fff2752:    2261        a"      MOVS     r2,#0x61
        0x1fff2754:    5c8a        .\      LDRB     r2,[r1,r2]
        0x1fff2756:    236c        l#      MOVS     r3,#0x6c
        0x1fff2758:    5ccb        .\      LDRB     r3,[r1,r3]
        0x1fff275a:    1880        ..      ADDS     r0,r0,r2
        0x1fff275c:    2b00        .+      CMP      r3,#0
        0x1fff275e:    d008        ..      BEQ      0x1fff2772 ; hal_pwrmgr_unlock + 270
        0x1fff2760:    42a3        .B      CMP      r3,r4
        0x1fff2762:    d103        ..      BNE      0x1fff276c ; hal_pwrmgr_unlock + 264
        0x1fff2764:    236d        m#      MOVS     r3,#0x6d
        0x1fff2766:    2200        ."      MOVS     r2,#0
        0x1fff2768:    54ca        .T      STRB     r2,[r1,r3]
        0x1fff276a:    e001        ..      B        0x1fff2770 ; hal_pwrmgr_unlock + 268
        0x1fff276c:    226d        m"      MOVS     r2,#0x6d
        0x1fff276e:    5c8a        .\      LDRB     r2,[r1,r2]
        0x1fff2770:    1880        ..      ADDS     r0,r0,r2
        0x1fff2772:    2800        .(      CMP      r0,#0
        0x1fff2774:    d005        ..      BEQ      0x1fff2782 ; hal_pwrmgr_unlock + 286
        0x1fff2776:    f000fbb7    ....    BL       $Ven$TT$L$$disableSleep ; 0x1fff2ee8
        0x1fff277a:    f000fb9d    ....    BL       $Ven$TT$L$$drv_enable_irq ; 0x1fff2eb8
        0x1fff277e:    2000        .       MOVS     r0,#0
        0x1fff2780:    bd10        ..      POP      {r4,pc}
        0x1fff2782:    f000fbab    ....    BL       $Ven$TT$L$$enableSleep ; 0x1fff2edc
        0x1fff2786:    f000fb97    ....    BL       $Ven$TT$L$$drv_enable_irq ; 0x1fff2eb8
        0x1fff278a:    2000        .       MOVS     r0,#0
        0x1fff278c:    bd10        ..      POP      {r4,pc}
        0x1fff278e:    46c0        .F      MOV      r8,r8
    $d.11
    __arm_cp.5_0
        0x1fff2790:    1fff6fb4    .o..    DCD    536833972
    $t.16
    __tagsym$$used.0
    hal_pwrmgr_wakeup_process
        0x1fff2794:    b5b0        ..      PUSH     {r4,r5,r7,lr}
        0x1fff2796:    4a3c        <J      LDR      r2,[pc,#240] ; [0x1fff2888] = 0x1fff5938
        0x1fff2798:    6853        Sh      LDR      r3,[r2,#4]
        0x1fff279a:    2101        .!      MOVS     r1,#1
        0x1fff279c:    0788        ..      LSLS     r0,r1,#30
        0x1fff279e:    6083        .`      STR      r3,[r0,#8]
        0x1fff27a0:    6812        .h      LDR      r2,[r2,#0]
        0x1fff27a2:    430a        .C      ORRS     r2,r2,r1
        0x1fff27a4:    6142        Ba      STR      r2,[r0,#0x14]
        0x1fff27a6:    4a39        9J      LDR      r2,[pc,#228] ; [0x1fff288c] = 0x4000f0b0
        0x1fff27a8:    6813        .h      LDR      r3,[r2,#0]
        0x1fff27aa:    4c39        9L      LDR      r4,[pc,#228] ; [0x1fff2890] = 0x1fff5b9c
        0x1fff27ac:    6023        #`      STR      r3,[r4,#0]
        0x1fff27ae:    6852        Rh      LDR      r2,[r2,#4]
        0x1fff27b0:    6062        b`      STR      r2,[r4,#4]
        0x1fff27b2:    4a38        8J      LDR      r2,[pc,#224] ; [0x1fff2894] = 0xe000e414
        0x1fff27b4:    4614        .F      MOV      r4,r2
        0x1fff27b6:    3c10        .<      SUBS     r4,r4,#0x10
        0x1fff27b8:    6825        %h      LDR      r5,[r4,#0]
        0x1fff27ba:    23ff        .#      MOVS     r3,#0xff
        0x1fff27bc:    439d        .C      BICS     r5,r5,r3
        0x1fff27be:    6025        %`      STR      r5,[r4,#0]
        0x1fff27c0:    6814        .h      LDR      r4,[r2,#0]
        0x1fff27c2:    2540        @%      MOVS     r5,#0x40
        0x1fff27c4:    4325        %C      ORRS     r5,r5,r4
        0x1fff27c6:    24bf        .$      MOVS     r4,#0xbf
        0x1fff27c8:    43a5        .C      BICS     r5,r5,r4
        0x1fff27ca:    6015        .`      STR      r5,[r2,#0]
        0x1fff27cc:    021c        ..      LSLS     r4,r3,#8
        0x1fff27ce:    6815        .h      LDR      r5,[r2,#0]
        0x1fff27d0:    43a5        .C      BICS     r5,r5,r4
        0x1fff27d2:    0389        ..      LSLS     r1,r1,#14
        0x1fff27d4:    1869        i.      ADDS     r1,r5,r1
        0x1fff27d6:    6011        .`      STR      r1,[r2,#0]
        0x1fff27d8:    0619        ..      LSLS     r1,r3,#24
        0x1fff27da:    6813        .h      LDR      r3,[r2,#0]
        0x1fff27dc:    438b        .C      BICS     r3,r3,r1
        0x1fff27de:    1818        ..      ADDS     r0,r3,r0
        0x1fff27e0:    6010        .`      STR      r0,[r2,#0]
        0x1fff27e2:    4d2d        -M      LDR      r5,[pc,#180] ; [0x1fff2898] = 0x1fff6fb4
        0x1fff27e4:    7828        (x      LDRB     r0,[r5,#0]
        0x1fff27e6:    2412        .$      MOVS     r4,#0x12
        0x1fff27e8:    2800        .(      CMP      r0,#0
        0x1fff27ea:    d04a        J.      BEQ      0x1fff2882 ; hal_pwrmgr_wakeup_process + 238
        0x1fff27ec:    68a8        .h      LDR      r0,[r5,#8]
        0x1fff27ee:    2800        .(      CMP      r0,#0
        0x1fff27f0:    d000        ..      BEQ      0x1fff27f4 ; hal_pwrmgr_wakeup_process + 96
        0x1fff27f2:    4780        .G      BLX      r0
        0x1fff27f4:    7b28        ({      LDRB     r0,[r5,#0xc]
        0x1fff27f6:    2800        .(      CMP      r0,#0
        0x1fff27f8:    d043        C.      BEQ      0x1fff2882 ; hal_pwrmgr_wakeup_process + 238
        0x1fff27fa:    6968        hi      LDR      r0,[r5,#0x14]
        0x1fff27fc:    2800        .(      CMP      r0,#0
        0x1fff27fe:    d000        ..      BEQ      0x1fff2802 ; hal_pwrmgr_wakeup_process + 110
        0x1fff2800:    4780        .G      BLX      r0
        0x1fff2802:    7e28        (~      LDRB     r0,[r5,#0x18]
        0x1fff2804:    2800        .(      CMP      r0,#0
        0x1fff2806:    d03c        <.      BEQ      0x1fff2882 ; hal_pwrmgr_wakeup_process + 238
        0x1fff2808:    6a28        (j      LDR      r0,[r5,#0x20]
        0x1fff280a:    2800        .(      CMP      r0,#0
        0x1fff280c:    d000        ..      BEQ      0x1fff2810 ; hal_pwrmgr_wakeup_process + 124
        0x1fff280e:    4780        .G      BLX      r0
        0x1fff2810:    2024        $       MOVS     r0,#0x24
        0x1fff2812:    5c28        (\      LDRB     r0,[r5,r0]
        0x1fff2814:    2800        .(      CMP      r0,#0
        0x1fff2816:    d034        4.      BEQ      0x1fff2882 ; hal_pwrmgr_wakeup_process + 238
        0x1fff2818:    6ae8        .j      LDR      r0,[r5,#0x2c]
        0x1fff281a:    2800        .(      CMP      r0,#0
        0x1fff281c:    d000        ..      BEQ      0x1fff2820 ; hal_pwrmgr_wakeup_process + 140
        0x1fff281e:    4780        .G      BLX      r0
        0x1fff2820:    2030        0       MOVS     r0,#0x30
        0x1fff2822:    5c28        (\      LDRB     r0,[r5,r0]
        0x1fff2824:    2800        .(      CMP      r0,#0
        0x1fff2826:    d02c        ,.      BEQ      0x1fff2882 ; hal_pwrmgr_wakeup_process + 238
        0x1fff2828:    6ba8        .k      LDR      r0,[r5,#0x38]
        0x1fff282a:    2800        .(      CMP      r0,#0
        0x1fff282c:    d000        ..      BEQ      0x1fff2830 ; hal_pwrmgr_wakeup_process + 156
        0x1fff282e:    4780        .G      BLX      r0
        0x1fff2830:    203c        <       MOVS     r0,#0x3c
        0x1fff2832:    5c28        (\      LDRB     r0,[r5,r0]
        0x1fff2834:    2800        .(      CMP      r0,#0
        0x1fff2836:    d024        $.      BEQ      0x1fff2882 ; hal_pwrmgr_wakeup_process + 238
        0x1fff2838:    6c68        hl      LDR      r0,[r5,#0x44]
        0x1fff283a:    2800        .(      CMP      r0,#0
        0x1fff283c:    d000        ..      BEQ      0x1fff2840 ; hal_pwrmgr_wakeup_process + 172
        0x1fff283e:    4780        .G      BLX      r0
        0x1fff2840:    2048        H       MOVS     r0,#0x48
        0x1fff2842:    5c28        (\      LDRB     r0,[r5,r0]
        0x1fff2844:    2800        .(      CMP      r0,#0
        0x1fff2846:    d01c        ..      BEQ      0x1fff2882 ; hal_pwrmgr_wakeup_process + 238
        0x1fff2848:    6d28        (m      LDR      r0,[r5,#0x50]
        0x1fff284a:    2800        .(      CMP      r0,#0
        0x1fff284c:    d000        ..      BEQ      0x1fff2850 ; hal_pwrmgr_wakeup_process + 188
        0x1fff284e:    4780        .G      BLX      r0
        0x1fff2850:    2054        T       MOVS     r0,#0x54
        0x1fff2852:    5c28        (\      LDRB     r0,[r5,r0]
        0x1fff2854:    2800        .(      CMP      r0,#0
        0x1fff2856:    d014        ..      BEQ      0x1fff2882 ; hal_pwrmgr_wakeup_process + 238
        0x1fff2858:    6de8        .m      LDR      r0,[r5,#0x5c]
        0x1fff285a:    2800        .(      CMP      r0,#0
        0x1fff285c:    d000        ..      BEQ      0x1fff2860 ; hal_pwrmgr_wakeup_process + 204
        0x1fff285e:    4780        .G      BLX      r0
        0x1fff2860:    2060        `       MOVS     r0,#0x60
        0x1fff2862:    5c28        (\      LDRB     r0,[r5,r0]
        0x1fff2864:    2800        .(      CMP      r0,#0
        0x1fff2866:    d00c        ..      BEQ      0x1fff2882 ; hal_pwrmgr_wakeup_process + 238
        0x1fff2868:    6ea8        .n      LDR      r0,[r5,#0x68]
        0x1fff286a:    2800        .(      CMP      r0,#0
        0x1fff286c:    d000        ..      BEQ      0x1fff2870 ; hal_pwrmgr_wakeup_process + 220
        0x1fff286e:    4780        .G      BLX      r0
        0x1fff2870:    206c        l       MOVS     r0,#0x6c
        0x1fff2872:    5c28        (\      LDRB     r0,[r5,r0]
        0x1fff2874:    2800        .(      CMP      r0,#0
        0x1fff2876:    d004        ..      BEQ      0x1fff2882 ; hal_pwrmgr_wakeup_process + 238
        0x1fff2878:    6f68        ho      LDR      r0,[r5,#0x74]
        0x1fff287a:    2400        .$      MOVS     r4,#0
        0x1fff287c:    2800        .(      CMP      r0,#0
        0x1fff287e:    d000        ..      BEQ      0x1fff2882 ; hal_pwrmgr_wakeup_process + 238
        0x1fff2880:    4780        .G      BLX      r0
        0x1fff2882:    4620         F      MOV      r0,r4
        0x1fff2884:    bdb0        ..      POP      {r4,r5,r7,pc}
        0x1fff2886:    46c0        .F      MOV      r8,r8
    $d.17
    __arm_cp.8_0
        0x1fff2888:    1fff5938    8Y..    DCD    536828216
    __arm_cp.8_1
        0x1fff288c:    4000f0b0    ...@    DCD    1073803440
    __arm_cp.8_2
        0x1fff2890:    1fff5b9c    .[..    DCD    536828828
    __arm_cp.8_3
        0x1fff2894:    e000e414    ....    DCD    3758154772
    __arm_cp.8_4
        0x1fff2898:    1fff6fb4    .o..    DCD    536833972
    $t.20
    hal_rc32k_clk_tracking_init
        0x1fff289c:    4804        .H      LDR      r0,[pc,#16] ; [0x1fff28b0] = 0x1fff0a14
        0x1fff289e:    4905        .I      LDR      r1,[pc,#20] ; [0x1fff28b4] = 0x1e84
        0x1fff28a0:    6001        .`      STR      r1,[r0,#0]
        0x1fff28a2:    4805        .H      LDR      r0,[pc,#20] ; [0x1fff28b8] = 0x1fff0a38
        0x1fff28a4:    6001        .`      STR      r1,[r0,#0]
        0x1fff28a6:    4805        .H      LDR      r0,[pc,#20] ; [0x1fff28bc] = 0x4000f0c4
        0x1fff28a8:    2100        .!      MOVS     r1,#0
        0x1fff28aa:    6001        .`      STR      r1,[r0,#0]
        0x1fff28ac:    4770        pG      BX       lr
        0x1fff28ae:    46c0        .F      MOV      r8,r8
    $d.21
    __arm_cp.11_0
        0x1fff28b0:    1fff0a14    ....    DCD    536807956
    __arm_cp.11_1
        0x1fff28b4:    00001e84    ....    DCD    7812
    __arm_cp.11_2
        0x1fff28b8:    1fff0a38    8...    DCD    536807992
    __arm_cp.11_3
        0x1fff28bc:    4000f0c4    ...@    DCD    1073803460
    $t.9
    hal_rtc_clock_config
        0x1fff28c0:    b5b0        ..      PUSH     {r4,r5,r7,lr}
        0x1fff28c2:    2800        .(      CMP      r0,#0
        0x1fff28c4:    d017        ..      BEQ      0x1fff28f6 ; hal_rtc_clock_config + 54
        0x1fff28c6:    2801        .(      CMP      r0,#1
        0x1fff28c8:    d131        1.      BNE      0x1fff292e ; hal_rtc_clock_config + 110
        0x1fff28ca:    201f        .       MOVS     r0,#0x1f
        0x1fff28cc:    06c1        ..      LSLS     r1,r0,#27
        0x1fff28ce:    4818        .H      LDR      r0,[pc,#96] ; [0x1fff2930] = 0x4000f01c
        0x1fff28d0:    4602        .F      MOV      r2,r0
        0x1fff28d2:    3a08        .:      SUBS     r2,r2,#8
        0x1fff28d4:    6813        .h      LDR      r3,[r2,#0]
        0x1fff28d6:    438b        .C      BICS     r3,r3,r1
        0x1fff28d8:    2105        .!      MOVS     r1,#5
        0x1fff28da:    06c9        ..      LSLS     r1,r1,#27
        0x1fff28dc:    1859        Y.      ADDS     r1,r3,r1
        0x1fff28de:    6011        .`      STR      r1,[r2,#0]
        0x1fff28e0:    6801        .h      LDR      r1,[r0,#0]
        0x1fff28e2:    4a14        .J      LDR      r2,[pc,#80] ; [0x1fff2934] = 0xfffe007f
        0x1fff28e4:    400a        .@      ANDS     r2,r2,r1
        0x1fff28e6:    4914        .I      LDR      r1,[pc,#80] ; [0x1fff2938] = 0x1fd80
        0x1fff28e8:    1851        Q.      ADDS     r1,r2,r1
        0x1fff28ea:    6001        .`      STR      r1,[r0,#0]
        0x1fff28ec:    6801        .h      LDR      r1,[r0,#0]
        0x1fff28ee:    2240        @"      MOVS     r2,#0x40
        0x1fff28f0:    430a        .C      ORRS     r2,r2,r1
        0x1fff28f2:    6002        .`      STR      r2,[r0,#0]
        0x1fff28f4:    bdb0        ..      POP      {r4,r5,r7,pc}
        0x1fff28f6:    200a        .       MOVS     r0,#0xa
        0x1fff28f8:    2500        .%      MOVS     r5,#0
        0x1fff28fa:    4629        )F      MOV      r1,r5
        0x1fff28fc:    f000fafa    ....    BL       $Ven$TT$L$$hal_gpio_pull_set ; 0x1fff2ef4
        0x1fff2900:    240b        .$      MOVS     r4,#0xb
        0x1fff2902:    4620         F      MOV      r0,r4
        0x1fff2904:    4629        )F      MOV      r1,r5
        0x1fff2906:    f000faf5    ....    BL       $Ven$TT$L$$hal_gpio_pull_set ; 0x1fff2ef4
        0x1fff290a:    2003        .       MOVS     r0,#3
        0x1fff290c:    0201        ..      LSLS     r1,r0,#8
        0x1fff290e:    4808        .H      LDR      r0,[pc,#32] ; [0x1fff2930] = 0x4000f01c
        0x1fff2910:    6802        .h      LDR      r2,[r0,#0]
        0x1fff2912:    430a        .C      ORRS     r2,r2,r1
        0x1fff2914:    6002        .`      STR      r2,[r0,#0]
        0x1fff2916:    6801        .h      LDR      r1,[r0,#0]
        0x1fff2918:    2240        @"      MOVS     r2,#0x40
        0x1fff291a:    4391        .C      BICS     r1,r1,r2
        0x1fff291c:    6001        .`      STR      r1,[r0,#0]
        0x1fff291e:    211f        .!      MOVS     r1,#0x1f
        0x1fff2920:    06c9        ..      LSLS     r1,r1,#27
        0x1fff2922:    3808        .8      SUBS     r0,r0,#8
        0x1fff2924:    6802        .h      LDR      r2,[r0,#0]
        0x1fff2926:    438a        .C      BICS     r2,r2,r1
        0x1fff2928:    0721        !.      LSLS     r1,r4,#28
        0x1fff292a:    1851        Q.      ADDS     r1,r2,r1
        0x1fff292c:    6001        .`      STR      r1,[r0,#0]
        0x1fff292e:    bdb0        ..      POP      {r4,r5,r7,pc}
    $d.10
    __arm_cp.5_0
        0x1fff2930:    4000f01c    ...@    DCD    1073803292
    __arm_cp.5_1
        0x1fff2934:    fffe007f    ....    DCD    4294836351
    __arm_cp.5_2
        0x1fff2938:    0001fd80    ....    DCD    130432
    $t.4
    hal_spif_cache_init
        0x1fff293c:    b510        ..      PUSH     {r4,lr}
        0x1fff293e:    4a5b        [J      LDR      r2,[pc,#364] ; [0x1fff2aac] = 0x1fff59d0
        0x1fff2940:    c203        ..      STM      r2!,{r0,r1}
        0x1fff2942:    f000f831    ..1.    BL       hw_spif_cache_config ; 0x1fff29a8
        0x1fff2946:    2013        .       MOVS     r0,#0x13
        0x1fff2948:    2400        .$      MOVS     r4,#0
        0x1fff294a:    4a03        .J      LDR      r2,[pc,#12] ; [0x1fff2958] = 0x1fff29a9
        0x1fff294c:    4621        !F      MOV      r1,r4
        0x1fff294e:    f7fffdc1    ....    BL       hal_pwrmgr_register ; 0x1fff24d4
        0x1fff2952:    4620         F      MOV      r0,r4
        0x1fff2954:    bd10        ..      POP      {r4,pc}
        0x1fff2956:    46c0        .F      MOV      r8,r8
    $d.5
    __arm_cp.2_1
        0x1fff2958:    1fff29a9    .)..    DCD    536816041
    $t.2
    hard_fault
        0x1fff295c:    480b        .H      LDR      r0,[pc,#44] ; [0x1fff298c] = 0x1fff5790
        0x1fff295e:    f000facf    ....    BL       $Ven$TT$L$$log_printf ; 0x1fff2f00
        0x1fff2962:    480b        .H      LDR      r0,[pc,#44] ; [0x1fff2990] = 0x1fff57b5
        0x1fff2964:    f000facc    ....    BL       $Ven$TT$L$$log_printf ; 0x1fff2f00
        0x1fff2968:    480a        .H      LDR      r0,[pc,#40] ; [0x1fff2994] = 0x1fff57a6
        0x1fff296a:    f000fac9    ....    BL       $Ven$TT$L$$log_printf ; 0x1fff2f00
        0x1fff296e:    480a        .H      LDR      r0,[pc,#40] ; [0x1fff2998] = 0x1fff57c4
        0x1fff2970:    f000fac6    ....    BL       $Ven$TT$L$$log_printf ; 0x1fff2f00
        0x1fff2974:    4809        .H      LDR      r0,[pc,#36] ; [0x1fff299c] = 0xe000ed04
        0x1fff2976:    6801        .h      LDR      r1,[r0,#0]
        0x1fff2978:    4809        .H      LDR      r0,[pc,#36] ; [0x1fff29a0] = 0x1fff57d3
        0x1fff297a:    f000fac1    ....    BL       $Ven$TT$L$$log_printf ; 0x1fff2f00
        0x1fff297e:    4809        .H      LDR      r0,[pc,#36] ; [0x1fff29a4] = 0x1fff7424
        0x1fff2980:    6800        .h      LDR      r0,[r0,#0]
        0x1fff2982:    2800        .(      CMP      r0,#0
        0x1fff2984:    d000        ..      BEQ      0x1fff2988 ; hard_fault + 44
        0x1fff2986:    4780        .G      BLX      r0
        0x1fff2988:    e7fe        ..      B        0x1fff2988 ; hard_fault + 44
        0x1fff298a:    46c0        .F      MOV      r8,r8
    $d.3
    __arm_cp.1_0
        0x1fff298c:    1fff5790    .W..    DCD    536827792
    __arm_cp.1_1
        0x1fff2990:    1fff57b5    .W..    DCD    536827829
    __arm_cp.1_2
        0x1fff2994:    1fff57a6    .W..    DCD    536827814
    __arm_cp.1_3
        0x1fff2998:    1fff57c4    .W..    DCD    536827844
    __arm_cp.1_4
        0x1fff299c:    e000ed04    ....    DCD    3758157060
    __arm_cp.1_5
        0x1fff29a0:    1fff57d3    .W..    DCD    536827859
    __arm_cp.1_6
        0x1fff29a4:    1fff7424    $t..    DCD    536835108
    $t.6
    hw_spif_cache_config
        0x1fff29a8:    b5f0        ..      PUSH     {r4-r7,lr}
        0x1fff29aa:    b083        ..      SUB      sp,sp,#0xc
        0x1fff29ac:    483f        ?H      LDR      r0,[pc,#252] ; [0x1fff2aac] = 0x1fff59d0
        0x1fff29ae:    6842        Bh      LDR      r2,[r0,#4]
        0x1fff29b0:    7800        .x      LDRB     r0,[r0,#0]
        0x1fff29b2:    2400        .$      MOVS     r4,#0
        0x1fff29b4:    9400        ..      STR      r4,[sp,#0]
        0x1fff29b6:    2501        .%      MOVS     r5,#1
        0x1fff29b8:    4629        )F      MOV      r1,r5
        0x1fff29ba:    4623        #F      MOV      r3,r4
        0x1fff29bc:    f000faa6    ....    BL       $Ven$TT$L$$spif_config ; 0x1fff2f0c
        0x1fff29c0:    483b        ;H      LDR      r0,[pc,#236] ; [0x1fff2ab0] = 0x4000c838
        0x1fff29c2:    493c        <I      LDR      r1,[pc,#240] ; [0x1fff2ab4] = 0xff010005
        0x1fff29c4:    6001        .`      STR      r1,[r0,#0]
        0x1fff29c6:    04a8        ..      LSLS     r0,r5,#18
        0x1fff29c8:    4a3b        ;J      LDR      r2,[pc,#236] ; [0x1fff2ab8] = 0xe000e180
        0x1fff29ca:    6010        .`      STR      r0,[r2,#0]
        0x1fff29cc:    f3bf8f4f    ..O.    DSB      
        0x1fff29d0:    f3bf8f6f    ..o.    ISB      
        0x1fff29d4:    1f88        ..      SUBS     r0,r1,#6
        0x1fff29d6:    4939        9I      LDR      r1,[pc,#228] ; [0x1fff2abc] = 0xe000e410
        0x1fff29d8:    680a        .h      LDR      r2,[r1,#0]
        0x1fff29da:    4002        .@      ANDS     r2,r2,r0
        0x1fff29dc:    05e8        ..      LSLS     r0,r5,#23
        0x1fff29de:    1810        ..      ADDS     r0,r2,r0
        0x1fff29e0:    6008        .`      STR      r0,[r1,#0]
        0x1fff29e2:    2064        d       MOVS     r0,#0x64
        0x1fff29e4:    9001        ..      STR      r0,[sp,#4]
        0x1fff29e6:    2041        A       MOVS     r0,#0x41
        0x1fff29e8:    f7fffa9a    ....    BL       hal_clk_gate_enable ; 0x1fff1f20
        0x1fff29ec:    2040        @       MOVS     r0,#0x40
        0x1fff29ee:    f7fffa97    ....    BL       hal_clk_gate_enable ; 0x1fff1f20
        0x1fff29f2:    4833        3H      LDR      r0,[pc,#204] ; [0x1fff2ac0] = 0x40000028
        0x1fff29f4:    1f00        ..      SUBS     r0,r0,#4
        0x1fff29f6:    2702        .'      MOVS     r7,#2
        0x1fff29f8:    6007        .`      STR      r7,[r0,#0]
        0x1fff29fa:    9901        ..      LDR      r1,[sp,#4]
        0x1fff29fc:    1e4a        J.      SUBS     r2,r1,#1
        0x1fff29fe:    9201        ..      STR      r2,[sp,#4]
        0x1fff2a00:    2900        .)      CMP      r1,#0
        0x1fff2a02:    d00e        ..      BEQ      0x1fff2a22 ; hw_spif_cache_config + 122
        0x1fff2a04:    9901        ..      LDR      r1,[sp,#4]
        0x1fff2a06:    1e4a        J.      SUBS     r2,r1,#1
        0x1fff2a08:    9201        ..      STR      r2,[sp,#4]
        0x1fff2a0a:    2900        .)      CMP      r1,#0
        0x1fff2a0c:    d009        ..      BEQ      0x1fff2a22 ; hw_spif_cache_config + 122
        0x1fff2a0e:    9901        ..      LDR      r1,[sp,#4]
        0x1fff2a10:    1e4a        J.      SUBS     r2,r1,#1
        0x1fff2a12:    9201        ..      STR      r2,[sp,#4]
        0x1fff2a14:    2900        .)      CMP      r1,#0
        0x1fff2a16:    d004        ..      BEQ      0x1fff2a22 ; hw_spif_cache_config + 122
        0x1fff2a18:    9901        ..      LDR      r1,[sp,#4]
        0x1fff2a1a:    1e4a        J.      SUBS     r2,r1,#1
        0x1fff2a1c:    9201        ..      STR      r2,[sp,#4]
        0x1fff2a1e:    2900        .)      CMP      r1,#0
        0x1fff2a20:    d1eb        ..      BNE      0x1fff29fa ; hw_spif_cache_config + 82
        0x1fff2a22:    2603        .&      MOVS     r6,#3
        0x1fff2a24:    6006        .`      STR      r6,[r0,#0]
        0x1fff2a26:    f000fa41    ..A.    BL       $Ven$TT$L$$drv_disable_irq ; 0x1fff2eac
        0x1fff2a2a:    4825        %H      LDR      r0,[pc,#148] ; [0x1fff2ac0] = 0x40000028
        0x1fff2a2c:    6800        .h      LDR      r0,[r0,#0]
        0x1fff2a2e:    2208        ."      MOVS     r2,#8
        0x1fff2a30:    9202        ..      STR      r2,[sp,#8]
        0x1fff2a32:    2800        .(      CMP      r0,#0
        0x1fff2a34:    d101        ..      BNE      0x1fff2a3a ; hw_spif_cache_config + 146
        0x1fff2a36:    4922        "I      LDR      r1,[pc,#136] ; [0x1fff2ac0] = 0x40000028
        0x1fff2a38:    600d        .`      STR      r5,[r1,#0]
        0x1fff2a3a:    4922        "I      LDR      r1,[pc,#136] ; [0x1fff2ac4] = 0x4000c000
        0x1fff2a3c:    600f        .`      STR      r7,[r1,#0]
        0x1fff2a3e:    9b02        ..      LDR      r3,[sp,#8]
        0x1fff2a40:    1e5d        ].      SUBS     r5,r3,#1
        0x1fff2a42:    9502        ..      STR      r5,[sp,#8]
        0x1fff2a44:    2b00        .+      CMP      r3,#0
        0x1fff2a46:    d00e        ..      BEQ      0x1fff2a66 ; hw_spif_cache_config + 190
        0x1fff2a48:    9b02        ..      LDR      r3,[sp,#8]
        0x1fff2a4a:    1e5d        ].      SUBS     r5,r3,#1
        0x1fff2a4c:    9502        ..      STR      r5,[sp,#8]
        0x1fff2a4e:    2b00        .+      CMP      r3,#0
        0x1fff2a50:    d009        ..      BEQ      0x1fff2a66 ; hw_spif_cache_config + 190
        0x1fff2a52:    9b02        ..      LDR      r3,[sp,#8]
        0x1fff2a54:    1e5d        ].      SUBS     r5,r3,#1
        0x1fff2a56:    9502        ..      STR      r5,[sp,#8]
        0x1fff2a58:    2b00        .+      CMP      r3,#0
        0x1fff2a5a:    d004        ..      BEQ      0x1fff2a66 ; hw_spif_cache_config + 190
        0x1fff2a5c:    9b02        ..      LDR      r3,[sp,#8]
        0x1fff2a5e:    1e5d        ].      SUBS     r5,r3,#1
        0x1fff2a60:    9502        ..      STR      r5,[sp,#8]
        0x1fff2a62:    2b00        .+      CMP      r3,#0
        0x1fff2a64:    d1eb        ..      BNE      0x1fff2a3e ; hw_spif_cache_config + 150
        0x1fff2a66:    600e        .`      STR      r6,[r1,#0]
        0x1fff2a68:    9202        ..      STR      r2,[sp,#8]
        0x1fff2a6a:    9a02        ..      LDR      r2,[sp,#8]
        0x1fff2a6c:    1e53        S.      SUBS     r3,r2,#1
        0x1fff2a6e:    9302        ..      STR      r3,[sp,#8]
        0x1fff2a70:    2a00        .*      CMP      r2,#0
        0x1fff2a72:    d00e        ..      BEQ      0x1fff2a92 ; hw_spif_cache_config + 234
        0x1fff2a74:    9a02        ..      LDR      r2,[sp,#8]
        0x1fff2a76:    1e53        S.      SUBS     r3,r2,#1
        0x1fff2a78:    9302        ..      STR      r3,[sp,#8]
        0x1fff2a7a:    2a00        .*      CMP      r2,#0
        0x1fff2a7c:    d009        ..      BEQ      0x1fff2a92 ; hw_spif_cache_config + 234
        0x1fff2a7e:    9a02        ..      LDR      r2,[sp,#8]
        0x1fff2a80:    1e53        S.      SUBS     r3,r2,#1
        0x1fff2a82:    9302        ..      STR      r3,[sp,#8]
        0x1fff2a84:    2a00        .*      CMP      r2,#0
        0x1fff2a86:    d004        ..      BEQ      0x1fff2a92 ; hw_spif_cache_config + 234
        0x1fff2a88:    9a02        ..      LDR      r2,[sp,#8]
        0x1fff2a8a:    1e53        S.      SUBS     r3,r2,#1
        0x1fff2a8c:    9302        ..      STR      r3,[sp,#8]
        0x1fff2a8e:    2a00        .*      CMP      r2,#0
        0x1fff2a90:    d1eb        ..      BNE      0x1fff2a6a ; hw_spif_cache_config + 194
        0x1fff2a92:    600c        .`      STR      r4,[r1,#0]
        0x1fff2a94:    2800        .(      CMP      r0,#0
        0x1fff2a96:    d101        ..      BNE      0x1fff2a9c ; hw_spif_cache_config + 244
        0x1fff2a98:    4809        .H      LDR      r0,[pc,#36] ; [0x1fff2ac0] = 0x40000028
        0x1fff2a9a:    6004        .`      STR      r4,[r0,#0]
        0x1fff2a9c:    f000fa0c    ....    BL       $Ven$TT$L$$drv_enable_irq ; 0x1fff2eb8
        0x1fff2aa0:    4807        .H      LDR      r0,[pc,#28] ; [0x1fff2ac0] = 0x40000028
        0x1fff2aa2:    6004        .`      STR      r4,[r0,#0]
        0x1fff2aa4:    f7fffbc2    ....    BL       hal_get_flash_info ; 0x1fff222c
        0x1fff2aa8:    b003        ..      ADD      sp,sp,#0xc
        0x1fff2aaa:    bdf0        ..      POP      {r4-r7,pc}
    $d.7
    __arm_cp.3_0
        0x1fff2aac:    1fff59d0    .Y..    DCD    536828368
    __arm_cp.3_1
        0x1fff2ab0:    4000c838    8..@    DCD    1073793080
    __arm_cp.3_2
        0x1fff2ab4:    ff010005    ....    DCD    4278255621
    __arm_cp.3_3
        0x1fff2ab8:    e000e180    ....    DCD    3758154112
    __arm_cp.3_4
        0x1fff2abc:    e000e410    ....    DCD    3758154768
    __arm_cp.3_5
        0x1fff2ac0:    40000028    (..@    DCD    1073741864
    __arm_cp.3_6
        0x1fff2ac4:    4000c000    ...@    DCD    1073790976
    $t.0
    key_init
        0x1fff2ac8:    b5b0        ..      PUSH     {r4,r5,r7,lr}
        0x1fff2aca:    4da9        .M      LDR      r5,[pc,#676] ; [0x1fff2d70] = 0x1fff6fa0
        0x1fff2acc:    78a8        .x      LDRB     r0,[r5,#2]
        0x1fff2ace:    2800        .(      CMP      r0,#0
        0x1fff2ad0:    d001        ..      BEQ      0x1fff2ad6 ; key_init + 14
        0x1fff2ad2:    2102        .!      MOVS     r1,#2
        0x1fff2ad4:    e000        ..      B        0x1fff2ad8 ; key_init + 16
        0x1fff2ad6:    2103        .!      MOVS     r1,#3
        0x1fff2ad8:    7828        (x      LDRB     r0,[r5,#0]
        0x1fff2ada:    f000fa0b    ....    BL       $Ven$TT$L$$hal_gpio_pull_set ; 0x1fff2ef4
        0x1fff2ade:    2400        .$      MOVS     r4,#0
        0x1fff2ae0:    606c        l`      STR      r4,[r5,#4]
        0x1fff2ae2:    7828        (x      LDRB     r0,[r5,#0]
        0x1fff2ae4:    4904        .I      LDR      r1,[pc,#16] ; [0x1fff2af8] = 0x1fff2cdd
        0x1fff2ae6:    460a        .F      MOV      r2,r1
        0x1fff2ae8:    f000fa16    ....    BL       $Ven$TT$L$$hal_gpioin_register ; 0x1fff2f18
        0x1fff2aec:    2061        a       MOVS     r0,#0x61
        0x1fff2aee:    4621        !F      MOV      r1,r4
        0x1fff2af0:    4622        "F      MOV      r2,r4
        0x1fff2af2:    f7fffcef    ....    BL       hal_pwrmgr_register ; 0x1fff24d4
        0x1fff2af6:    bdb0        ..      POP      {r4,r5,r7,pc}
    $d.1
    __arm_cp.0_1
        0x1fff2af8:    1fff2cdd    .,..    DCD    536816861
    $t.0
    main
        0x1fff2afc:    b5f0        ..      PUSH     {r4-r7,lr}
        0x1fff2afe:    b087        ..      SUB      sp,sp,#0x1c
        0x1fff2b00:    2400        .$      MOVS     r4,#0
        0x1fff2b02:    4620         F      MOV      r0,r4
        0x1fff2b04:    f000f936    ..6.    BL       watchdog_config ; 0x1fff2d74
        0x1fff2b08:    4957        WI      LDR      r1,[pc,#348] ; [0x1fff2c68] = 0x1fff0a4a
        0x1fff2b0a:    2002        .       MOVS     r0,#2
        0x1fff2b0c:    9003        ..      STR      r0,[sp,#0xc]
        0x1fff2b0e:    7008        .p      STRB     r0,[r1,#0]
        0x1fff2b10:    48bb        .H      LDR      r0,[pc,#748] ; [0x1fff2e00] = 0x1fff5c01
        0x1fff2b12:    2601        .&      MOVS     r6,#1
        0x1fff2b14:    7006        .p      STRB     r6,[r0,#0]
        0x1fff2b16:    f000fa05    ....    BL       $Ven$TT$L$$drv_irq_init ; 0x1fff2f24
        0x1fff2b1a:    f000fa09    ....    BL       $Ven$TT$L$$init_config ; 0x1fff2f30
        0x1fff2b1e:    f002f831    ..1.    BL       ll_patch_slave ; 0x1fff4b84
        0x1fff2b22:    4852        RH      LDR      r0,[pc,#328] ; [0x1fff2c6c] = 0x1fff0a48
        0x1fff2b24:    210d        .!      MOVS     r1,#0xd
        0x1fff2b26:    9106        ..      STR      r1,[sp,#0x18]
        0x1fff2b28:    7001        .p      STRB     r1,[r0,#0]
        0x1fff2b2a:    4851        QH      LDR      r0,[pc,#324] ; [0x1fff2c70] = 0x1fff0a49
        0x1fff2b2c:    7006        .p      STRB     r6,[r0,#0]
        0x1fff2b2e:    4851        QH      LDR      r0,[pc,#324] ; [0x1fff2c74] = 0x1fff0a68
        0x1fff2b30:    210a        .!      MOVS     r1,#0xa
        0x1fff2b32:    7001        .p      STRB     r1,[r0,#0]
        0x1fff2b34:    4850        PH      LDR      r0,[pc,#320] ; [0x1fff2c78] = 0x4000f0bc
        0x1fff2b36:    6801        .h      LDR      r1,[r0,#0]
        0x1fff2b38:    2209        ."      MOVS     r2,#9
        0x1fff2b3a:    9204        ..      STR      r2,[sp,#0x10]
        0x1fff2b3c:    4311        .C      ORRS     r1,r1,r2
        0x1fff2b3e:    2216        ."      MOVS     r2,#0x16
        0x1fff2b40:    9205        ..      STR      r2,[sp,#0x14]
        0x1fff2b42:    4391        .C      BICS     r1,r1,r2
        0x1fff2b44:    6001        .`      STR      r1,[r0,#0]
        0x1fff2b46:    6801        .h      LDR      r1,[r0,#0]
        0x1fff2b48:    2220         "      MOVS     r2,#0x20
        0x1fff2b4a:    430a        .C      ORRS     r2,r2,r1
        0x1fff2b4c:    2540        @%      MOVS     r5,#0x40
        0x1fff2b4e:    43aa        .C      BICS     r2,r2,r5
        0x1fff2b50:    6002        .`      STR      r2,[r0,#0]
        0x1fff2b52:    f7fffea3    ....    BL       hal_rc32k_clk_tracking_init ; 0x1fff289c
        0x1fff2b56:    f001fd3d    ..=.    BL       hal_rom_boot_init ; 0x1fff45d4
        0x1fff2b5a:    4848        HH      LDR      r0,[pc,#288] ; [0x1fff2c7c] = 0xe000e414
        0x1fff2b5c:    4602        .F      MOV      r2,r0
        0x1fff2b5e:    3a10        .:      SUBS     r2,r2,#0x10
        0x1fff2b60:    6813        .h      LDR      r3,[r2,#0]
        0x1fff2b62:    21ff        .!      MOVS     r1,#0xff
        0x1fff2b64:    438b        .C      BICS     r3,r3,r1
        0x1fff2b66:    6013        .`      STR      r3,[r2,#0]
        0x1fff2b68:    6802        .h      LDR      r2,[r0,#0]
        0x1fff2b6a:    432a        *C      ORRS     r2,r2,r5
        0x1fff2b6c:    23bf        .#      MOVS     r3,#0xbf
        0x1fff2b6e:    439a        .C      BICS     r2,r2,r3
        0x1fff2b70:    6002        .`      STR      r2,[r0,#0]
        0x1fff2b72:    020a        ..      LSLS     r2,r1,#8
        0x1fff2b74:    6803        .h      LDR      r3,[r0,#0]
        0x1fff2b76:    4393        .C      BICS     r3,r3,r2
        0x1fff2b78:    03b2        ..      LSLS     r2,r6,#14
        0x1fff2b7a:    189a        ..      ADDS     r2,r3,r2
        0x1fff2b7c:    6002        .`      STR      r2,[r0,#0]
        0x1fff2b7e:    0609        ..      LSLS     r1,r1,#24
        0x1fff2b80:    6802        .h      LDR      r2,[r0,#0]
        0x1fff2b82:    438a        .C      BICS     r2,r2,r1
        0x1fff2b84:    07b1        ..      LSLS     r1,r6,#30
        0x1fff2b86:    1851        Q.      ADDS     r1,r2,r1
        0x1fff2b88:    6001        .`      STR      r1,[r0,#0]
        0x1fff2b8a:    0331        1.      LSLS     r1,r6,#12
        0x1fff2b8c:    483c        <H      LDR      r0,[pc,#240] ; [0x1fff2c80] = 0x1fff5c04
        0x1fff2b8e:    f000f9d5    ....    BL       $Ven$TT$L$$osal_mem_set_heap ; 0x1fff2f3c
        0x1fff2b92:    2703        .'      MOVS     r7,#3
        0x1fff2b94:    9700        ..      STR      r7,[sp,#0]
        0x1fff2b96:    9401        ..      STR      r4,[sp,#4]
        0x1fff2b98:    483a        :H      LDR      r0,[pc,#232] ; [0x1fff2c84] = 0x1fff7198
        0x1fff2b9a:    493b        ;I      LDR      r1,[pc,#236] ; [0x1fff2c88] = 0x1fff6c04
        0x1fff2b9c:    4632        2F      MOV      r2,r6
        0x1fff2b9e:    463b        ;F      MOV      r3,r7
        0x1fff2ba0:    f000f9d2    ....    BL       $Ven$TT$L$$LL_InitConnectContext ; 0x1fff2f48
        0x1fff2ba4:    9d03        ..      LDR      r5,[sp,#0xc]
        0x1fff2ba6:    4628        (F      MOV      r0,r5
        0x1fff2ba8:    4621        !F      MOV      r1,r4
        0x1fff2baa:    f000f9a3    ....    BL       $Ven$TT$L$$hal_gpio_pull_set ; 0x1fff2ef4
        0x1fff2bae:    4638        8F      MOV      r0,r7
        0x1fff2bb0:    4621        !F      MOV      r1,r4
        0x1fff2bb2:    f000f99f    ....    BL       $Ven$TT$L$$hal_gpio_pull_set ; 0x1fff2ef4
        0x1fff2bb6:    2004        .       MOVS     r0,#4
        0x1fff2bb8:    4639        9F      MOV      r1,r7
        0x1fff2bba:    f000f99b    ....    BL       $Ven$TT$L$$hal_gpio_pull_set ; 0x1fff2ef4
        0x1fff2bbe:    2005        .       MOVS     r0,#5
        0x1fff2bc0:    9002        ..      STR      r0,[sp,#8]
        0x1fff2bc2:    4629        )F      MOV      r1,r5
        0x1fff2bc4:    f000f996    ....    BL       $Ven$TT$L$$hal_gpio_pull_set ; 0x1fff2ef4
        0x1fff2bc8:    2006        .       MOVS     r0,#6
        0x1fff2bca:    4629        )F      MOV      r1,r5
        0x1fff2bcc:    f000f992    ....    BL       $Ven$TT$L$$hal_gpio_pull_set ; 0x1fff2ef4
        0x1fff2bd0:    2007        .       MOVS     r0,#7
        0x1fff2bd2:    4621        !F      MOV      r1,r4
        0x1fff2bd4:    f000f98e    ....    BL       $Ven$TT$L$$hal_gpio_pull_set ; 0x1fff2ef4
        0x1fff2bd8:    2008        .       MOVS     r0,#8
        0x1fff2bda:    4621        !F      MOV      r1,r4
        0x1fff2bdc:    f000f98a    ....    BL       $Ven$TT$L$$hal_gpio_pull_set ; 0x1fff2ef4
        0x1fff2be0:    9804        ..      LDR      r0,[sp,#0x10]
        0x1fff2be2:    4621        !F      MOV      r1,r4
        0x1fff2be4:    f000f986    ....    BL       $Ven$TT$L$$hal_gpio_pull_set ; 0x1fff2ef4
        0x1fff2be8:    200c        .       MOVS     r0,#0xc
        0x1fff2bea:    4621        !F      MOV      r1,r4
        0x1fff2bec:    f000f982    ....    BL       $Ven$TT$L$$hal_gpio_pull_set ; 0x1fff2ef4
        0x1fff2bf0:    9806        ..      LDR      r0,[sp,#0x18]
        0x1fff2bf2:    4621        !F      MOV      r1,r4
        0x1fff2bf4:    f000f97e    ..~.    BL       $Ven$TT$L$$hal_gpio_pull_set ; 0x1fff2ef4
        0x1fff2bf8:    9805        ..      LDR      r0,[sp,#0x14]
        0x1fff2bfa:    4621        !F      MOV      r1,r4
        0x1fff2bfc:    f000f97a    ..z.    BL       $Ven$TT$L$$hal_gpio_pull_set ; 0x1fff2ef4
        0x1fff2c00:    200f        .       MOVS     r0,#0xf
        0x1fff2c02:    03c1        ..      LSLS     r1,r0,#15
        0x1fff2c04:    4821        !H      LDR      r0,[pc,#132] ; [0x1fff2c8c] = 0x4000f014
        0x1fff2c06:    6802        .h      LDR      r2,[r0,#0]
        0x1fff2c08:    438a        .C      BICS     r2,r2,r1
        0x1fff2c0a:    9902        ..      LDR      r1,[sp,#8]
        0x1fff2c0c:    0409        ..      LSLS     r1,r1,#16
        0x1fff2c0e:    1851        Q.      ADDS     r1,r2,r1
        0x1fff2c10:    6001        .`      STR      r1,[r0,#0]
        0x1fff2c12:    0671        q.      LSLS     r1,r6,#25
        0x1fff2c14:    6802        .h      LDR      r2,[r0,#0]
        0x1fff2c16:    430a        .C      ORRS     r2,r2,r1
        0x1fff2c18:    6002        .`      STR      r2,[r0,#0]
        0x1fff2c1a:    0579        y.      LSLS     r1,r7,#21
        0x1fff2c1c:    6802        .h      LDR      r2,[r0,#0]
        0x1fff2c1e:    438a        .C      BICS     r2,r2,r1
        0x1fff2c20:    0571        q.      LSLS     r1,r6,#21
        0x1fff2c22:    1851        Q.      ADDS     r1,r2,r1
        0x1fff2c24:    6001        .`      STR      r1,[r0,#0]
        0x1fff2c26:    4630        0F      MOV      r0,r6
        0x1fff2c28:    f7fffbc2    ....    BL       hal_pwrmgr_RAM_retention ; 0x1fff23b0
        0x1fff2c2c:    f7fffbd2    ....    BL       hal_pwrmgr_RAM_retention_set ; 0x1fff23d4
        0x1fff2c30:    480d        .H      LDR      r0,[pc,#52] ; [0x1fff2c68] = 0x1fff0a4a
        0x1fff2c32:    7800        .x      LDRB     r0,[r0,#0]
        0x1fff2c34:    f000f98e    ....    BL       $Ven$TT$L$$clk_init ; 0x1fff2f54
        0x1fff2c38:    4871        qH      LDR      r0,[pc,#452] ; [0x1fff2e00] = 0x1fff5c01
        0x1fff2c3a:    7800        .x      LDRB     r0,[r0,#0]
        0x1fff2c3c:    f7fffe40    ..@.    BL       hal_rtc_clock_config ; 0x1fff28c0
        0x1fff2c40:    f7fffbd4    ....    BL       hal_pwrmgr_init ; 0x1fff23ec
        0x1fff2c44:    4912        .I      LDR      r1,[pc,#72] ; [0x1fff2c90] = 0x801003b
        0x1fff2c46:    4620         F      MOV      r0,r4
        0x1fff2c48:    f7fffe78    ..x.    BL       hal_spif_cache_init ; 0x1fff293c
        0x1fff2c4c:    f000f988    ....    BL       $Ven$TT$L$$hal_gpio_init ; 0x1fff2f60
        0x1fff2c50:    f000f98c    ....    BL       $Ven$TT$L$$hal_pwm_module_init ; 0x1fff2f6c
        0x1fff2c54:    480f        .H      LDR      r0,[pc,#60] ; [0x1fff2c94] = 0x1103c000
        0x1fff2c56:    4629        )F      MOV      r1,r5
        0x1fff2c58:    f7fffad4    ....    BL       hal_fs_init ; 0x1fff2204
        0x1fff2c5c:    f7fefeb0    ....    BL       app_main ; 0x1fff19c0
        0x1fff2c60:    4620         F      MOV      r0,r4
        0x1fff2c62:    b007        ..      ADD      sp,sp,#0x1c
        0x1fff2c64:    bdf0        ..      POP      {r4-r7,pc}
        0x1fff2c66:    46c0        .F      MOV      r8,r8
    $d.1
    __arm_cp.0_0
        0x1fff2c68:    1fff0a4a    J...    DCD    536808010
    __arm_cp.0_2
        0x1fff2c6c:    1fff0a48    H...    DCD    536808008
    __arm_cp.0_3
        0x1fff2c70:    1fff0a49    I...    DCD    536808009
    __arm_cp.0_4
        0x1fff2c74:    1fff0a68    h...    DCD    536808040
    __arm_cp.0_5
        0x1fff2c78:    4000f0bc    ...@    DCD    1073803452
    __arm_cp.0_6
        0x1fff2c7c:    e000e414    ....    DCD    3758154772
    __arm_cp.0_7
        0x1fff2c80:    1fff5c04    .\..    DCD    536828932
    __arm_cp.0_8
        0x1fff2c84:    1fff7198    .q..    DCD    536834456
    __arm_cp.0_9
        0x1fff2c88:    1fff6c04    .l..    DCD    536833028
    __arm_cp.0_10
        0x1fff2c8c:    4000f014    ...@    DCD    1073803284
    __arm_cp.0_11
        0x1fff2c90:    0801003b    ;...    DCD    134283323
    __arm_cp.0_12
        0x1fff2c94:    1103c000    ....    DCD    285458432
    $t.0
    osalInitTasks
        0x1fff2c98:    b5b0        ..      PUSH     {r4,r5,r7,lr}
        0x1fff2c9a:    240c        .$      MOVS     r4,#0xc
        0x1fff2c9c:    4620         F      MOV      r0,r4
        0x1fff2c9e:    f000f96b    ..k.    BL       $Ven$TT$L$$osal_mem_alloc ; 0x1fff2f78
        0x1fff2ca2:    490d        .I      LDR      r1,[pc,#52] ; [0x1fff2cd8] = 0x1fff7420
        0x1fff2ca4:    6008        .`      STR      r0,[r1,#0]
        0x1fff2ca6:    2500        .%      MOVS     r5,#0
        0x1fff2ca8:    4629        )F      MOV      r1,r5
        0x1fff2caa:    4622        "F      MOV      r2,r4
        0x1fff2cac:    f000f8da    ....    BL       $Ven$TT$L$$osal_memset ; 0x1fff2e64
        0x1fff2cb0:    4628        (F      MOV      r0,r5
        0x1fff2cb2:    f000f967    ..g.    BL       $Ven$TT$L$$LL_Init ; 0x1fff2f84
        0x1fff2cb6:    2001        .       MOVS     r0,#1
        0x1fff2cb8:    f000f96a    ..j.    BL       $Ven$TT$L$$HCI_Init ; 0x1fff2f90
        0x1fff2cbc:    2002        .       MOVS     r0,#2
        0x1fff2cbe:    f000f96d    ..m.    BL       $Ven$TT$L$$osal_CbTimerInit ; 0x1fff2f9c
        0x1fff2cc2:    2003        .       MOVS     r0,#3
        0x1fff2cc4:    f000f970    ..p.    BL       $Ven$TT$L$$GAP_Init ; 0x1fff2fa8
        0x1fff2cc8:    2004        .       MOVS     r0,#4
        0x1fff2cca:    f000f973    ..s.    BL       $Ven$TT$L$$GAPMultiRole_Init ; 0x1fff2fb4
        0x1fff2cce:    2005        .       MOVS     r0,#5
        0x1fff2cd0:    f000f976    ..v.    BL       $Ven$TT$L$$FindMy_Init ; 0x1fff2fc0
        0x1fff2cd4:    bdb0        ..      POP      {r4,r5,r7,pc}
        0x1fff2cd6:    46c0        .F      MOV      r8,r8
    $d.1
    __arm_cp.0_0
        0x1fff2cd8:    1fff7420     t..    DCD    536835104
    $t.2
    pin_event_handler
        0x1fff2cdc:    b510        ..      PUSH     {r4,lr}
        0x1fff2cde:    4c24        $L      LDR      r4,[pc,#144] ; [0x1fff2d70] = 0x1fff6fa0
        0x1fff2ce0:    7822        "x      LDRB     r2,[r4,#0]
        0x1fff2ce2:    b2d2        ..      UXTB     r2,r2
        0x1fff2ce4:    4282        .B      CMP      r2,r0
        0x1fff2ce6:    d115        ..      BNE      0x1fff2d14 ; pin_event_handler + 56
        0x1fff2ce8:    7860        `x      LDRB     r0,[r4,#1]
        0x1fff2cea:    2803        .(      CMP      r0,#3
        0x1fff2cec:    d812        ..      BHI      0x1fff2d14 ; pin_event_handler + 56
        0x1fff2cee:    46c0        .F      MOV      r8,r8
        0x1fff2cf0:    4478        xD      ADD      r0,r0,pc
        0x1fff2cf2:    7900        .y      LDRB     r0,[r0,#4]
        0x1fff2cf4:    0040        @.      LSLS     r0,r0,#1
        0x1fff2cf6:    4487        .D      ADD      pc,pc,r0
    $d.3
        0x1fff2cf8:    160e0901    ....    DCD    370018561
    $t.4
        0x1fff2cfc:    2901        .)      CMP      r1,#1
        0x1fff2cfe:    d01e        ..      BEQ      0x1fff2d3e ; pin_event_handler + 98
        0x1fff2d00:    2900        .)      CMP      r1,#0
        0x1fff2d02:    d107        ..      BNE      0x1fff2d14 ; pin_event_handler + 56
        0x1fff2d04:    78a0        .x      LDRB     r0,[r4,#2]
        0x1fff2d06:    2801        .(      CMP      r0,#1
        0x1fff2d08:    d104        ..      BNE      0x1fff2d14 ; pin_event_handler + 56
        0x1fff2d0a:    e01b        ..      B        0x1fff2d44 ; pin_event_handler + 104
        0x1fff2d0c:    2901        .)      CMP      r1,#1
        0x1fff2d0e:    d012        ..      BEQ      0x1fff2d36 ; pin_event_handler + 90
        0x1fff2d10:    2900        .)      CMP      r1,#0
        0x1fff2d12:    d00c        ..      BEQ      0x1fff2d2e ; pin_event_handler + 82
        0x1fff2d14:    bd10        ..      POP      {r4,pc}
        0x1fff2d16:    2900        .)      CMP      r1,#0
        0x1fff2d18:    d01b        ..      BEQ      0x1fff2d52 ; pin_event_handler + 118
        0x1fff2d1a:    2901        .)      CMP      r1,#1
        0x1fff2d1c:    d1fa        ..      BNE      0x1fff2d14 ; pin_event_handler + 56
        0x1fff2d1e:    78a0        .x      LDRB     r0,[r4,#2]
        0x1fff2d20:    2801        .(      CMP      r0,#1
        0x1fff2d22:    d1f7        ..      BNE      0x1fff2d14 ; pin_event_handler + 56
        0x1fff2d24:    e018        ..      B        0x1fff2d58 ; pin_event_handler + 124
        0x1fff2d26:    2900        .)      CMP      r1,#0
        0x1fff2d28:    d005        ..      BEQ      0x1fff2d36 ; pin_event_handler + 90
        0x1fff2d2a:    2901        .)      CMP      r1,#1
        0x1fff2d2c:    d1f2        ..      BNE      0x1fff2d14 ; pin_event_handler + 56
        0x1fff2d2e:    78a0        .x      LDRB     r0,[r4,#2]
        0x1fff2d30:    2801        .(      CMP      r0,#1
        0x1fff2d32:    d1ef        ..      BNE      0x1fff2d14 ; pin_event_handler + 56
        0x1fff2d34:    e015        ..      B        0x1fff2d62 ; pin_event_handler + 134
        0x1fff2d36:    78a0        .x      LDRB     r0,[r4,#2]
        0x1fff2d38:    2800        .(      CMP      r0,#0
        0x1fff2d3a:    d1eb        ..      BNE      0x1fff2d14 ; pin_event_handler + 56
        0x1fff2d3c:    e011        ..      B        0x1fff2d62 ; pin_event_handler + 134
        0x1fff2d3e:    78a0        .x      LDRB     r0,[r4,#2]
        0x1fff2d40:    2800        .(      CMP      r0,#0
        0x1fff2d42:    d1e7        ..      BNE      0x1fff2d14 ; pin_event_handler + 56
        0x1fff2d44:    2061        a       MOVS     r0,#0x61
        0x1fff2d46:    f7fffb67    ..g.    BL       hal_pwrmgr_lock ; 0x1fff2418
        0x1fff2d4a:    2001        .       MOVS     r0,#1
        0x1fff2d4c:    7220         r      STRB     r0,[r4,#8]
        0x1fff2d4e:    7060        `p      STRB     r0,[r4,#1]
        0x1fff2d50:    e007        ..      B        0x1fff2d62 ; pin_event_handler + 134
        0x1fff2d52:    78a0        .x      LDRB     r0,[r4,#2]
        0x1fff2d54:    2800        .(      CMP      r0,#0
        0x1fff2d56:    d1dd        ..      BNE      0x1fff2d14 ; pin_event_handler + 56
        0x1fff2d58:    2061        a       MOVS     r0,#0x61
        0x1fff2d5a:    f7fffb5d    ..].    BL       hal_pwrmgr_lock ; 0x1fff2418
        0x1fff2d5e:    2003        .       MOVS     r0,#3
        0x1fff2d60:    7060        `p      STRB     r0,[r4,#1]
        0x1fff2d62:    7b20         {      LDRB     r0,[r4,#0xc]
        0x1fff2d64:    2101        .!      MOVS     r1,#1
        0x1fff2d66:    0389        ..      LSLS     r1,r1,#14
        0x1fff2d68:    2214        ."      MOVS     r2,#0x14
        0x1fff2d6a:    f000f899    ....    BL       $Ven$TT$L$$osal_start_timerEx ; 0x1fff2ea0
        0x1fff2d6e:    bd10        ..      POP      {r4,pc}
    $d.5
    __arm_cp.1_0
        0x1fff2d70:    1fff6fa0    .o..    DCD    536833952
    $t.6
    watchdog_config
        0x1fff2d74:    b5b0        ..      PUSH     {r4,r5,r7,lr}
        0x1fff2d76:    b082        ..      SUB      sp,sp,#8
        0x1fff2d78:    2807        .(      CMP      r0,#7
        0x1fff2d7a:    d902        ..      BLS      0x1fff2d82 ; watchdog_config + 14
        0x1fff2d7c:    2006        .       MOVS     r0,#6
        0x1fff2d7e:    b002        ..      ADD      sp,sp,#8
        0x1fff2d80:    bdb0        ..      POP      {r4,r5,r7,pc}
        0x1fff2d82:    4c1e        .L      LDR      r4,[pc,#120] ; [0x1fff2dfc] = 0x1fff59b4
        0x1fff2d84:    7020         p      STRB     r0,[r4,#0]
        0x1fff2d86:    481e        .H      LDR      r0,[pc,#120] ; [0x1fff2e00] = 0x1fff5c01
        0x1fff2d88:    7800        .x      LDRB     r0,[r0,#0]
        0x1fff2d8a:    4241        AB      RSBS     r1,r0,#0
        0x1fff2d8c:    4141        AA      ADCS     r1,r1,r0
        0x1fff2d8e:    0408        ..      LSLS     r0,r1,#16
        0x1fff2d90:    2101        .!      MOVS     r1,#1
        0x1fff2d92:    0409        ..      LSLS     r1,r1,#16
        0x1fff2d94:    4a1b        .J      LDR      r2,[pc,#108] ; [0x1fff2e04] = 0x4000f03c
        0x1fff2d96:    6813        .h      LDR      r3,[r2,#0]
        0x1fff2d98:    438b        .C      BICS     r3,r3,r1
        0x1fff2d9a:    1818        ..      ADDS     r0,r3,r0
        0x1fff2d9c:    6010        .`      STR      r0,[r2,#0]
        0x1fff2d9e:    2025        %       MOVS     r0,#0x25
        0x1fff2da0:    f7fff8be    ....    BL       hal_clk_gate_enable ; 0x1fff1f20
        0x1fff2da4:    4918        .I      LDR      r1,[pc,#96] ; [0x1fff2e08] = 0x1fff5938
        0x1fff2da6:    680a        .h      LDR      r2,[r1,#0]
        0x1fff2da8:    2020                MOVS     r0,#0x20
        0x1fff2daa:    4302        .C      ORRS     r2,r2,r0
        0x1fff2dac:    600a        .`      STR      r2,[r1,#0]
        0x1fff2dae:    4917        .I      LDR      r1,[pc,#92] ; [0x1fff2e0c] = 0x4000000c
        0x1fff2db0:    460a        .F      MOV      r2,r1
        0x1fff2db2:    3a0c        .:      SUBS     r2,r2,#0xc
        0x1fff2db4:    6813        .h      LDR      r3,[r2,#0]
        0x1fff2db6:    075b        [.      LSLS     r3,r3,#29
        0x1fff2db8:    d403        ..      BMI      0x1fff2dc2 ; watchdog_config + 78
        0x1fff2dba:    6813        .h      LDR      r3,[r2,#0]
        0x1fff2dbc:    2504        .%      MOVS     r5,#4
        0x1fff2dbe:    431d        .C      ORRS     r5,r5,r3
        0x1fff2dc0:    6015        .`      STR      r5,[r2,#0]
        0x1fff2dc2:    680a        .h      LDR      r2,[r1,#0]
        0x1fff2dc4:    0752        R.      LSLS     r2,r2,#29
        0x1fff2dc6:    d403        ..      BMI      0x1fff2dd0 ; watchdog_config + 92
        0x1fff2dc8:    680a        .h      LDR      r2,[r1,#0]
        0x1fff2dca:    2304        .#      MOVS     r3,#4
        0x1fff2dcc:    4313        .C      ORRS     r3,r3,r2
        0x1fff2dce:    600b        .`      STR      r3,[r1,#0]
        0x1fff2dd0:    680a        .h      LDR      r2,[r1,#0]
        0x1fff2dd2:    4382        .C      BICS     r2,r2,r0
        0x1fff2dd4:    600a        .`      STR      r2,[r1,#0]
        0x1fff2dd6:    680a        .h      LDR      r2,[r1,#0]
        0x1fff2dd8:    4302        .C      ORRS     r2,r2,r0
        0x1fff2dda:    600a        .`      STR      r2,[r1,#0]
        0x1fff2ddc:    480c        .H      LDR      r0,[pc,#48] ; [0x1fff2e10] = 0x40002000
        0x1fff2dde:    7d01        .}      LDRB     r1,[r0,#0x14]
        0x1fff2de0:    9101        ..      STR      r1,[sp,#4]
        0x1fff2de2:    7821        !x      LDRB     r1,[r4,#0]
        0x1fff2de4:    6041        A`      STR      r1,[r0,#4]
        0x1fff2de6:    211d        .!      MOVS     r1,#0x1d
        0x1fff2de8:    7001        .p      STRB     r1,[r0,#0]
        0x1fff2dea:    2176        v!      MOVS     r1,#0x76
        0x1fff2dec:    60c1        .`      STR      r1,[r0,#0xc]
        0x1fff2dee:    4809        .H      LDR      r0,[pc,#36] ; [0x1fff2e14] = 0x1fff035c
        0x1fff2df0:    4909        .I      LDR      r1,[pc,#36] ; [0x1fff2e18] = 0x1fff3805
        0x1fff2df2:    6001        .`      STR      r1,[r0,#0]
        0x1fff2df4:    2000        .       MOVS     r0,#0
        0x1fff2df6:    b002        ..      ADD      sp,sp,#8
        0x1fff2df8:    bdb0        ..      POP      {r4,r5,r7,pc}
        0x1fff2dfa:    46c0        .F      MOV      r8,r8
    $d.7
    __arm_cp.3_0
        0x1fff2dfc:    1fff59b4    .Y..    DCD    536828340
    __arm_cp.3_1
        0x1fff2e00:    1fff5c01    .\..    DCD    536828929
    __arm_cp.3_2
        0x1fff2e04:    4000f03c    <..@    DCD    1073803324
    __arm_cp.3_3
        0x1fff2e08:    1fff5938    8Y..    DCD    536828216
    __arm_cp.3_4
        0x1fff2e0c:    4000000c    ...@    DCD    1073741836
    __arm_cp.3_5
        0x1fff2e10:    40002000    . .@    DCD    1073750016
    __arm_cp.3_6
        0x1fff2e14:    1fff035c    \...    DCD    536806236
    __arm_cp.3_7
        0x1fff2e18:    1fff3805    .8..    DCD    536819717
    $t
    $Ven$TT$L$$spif_cmd
        0x1fff2e1c:    b403        ..      PUSH     {r0,r1}
        0x1fff2e1e:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff2e24] = 0x16d49
        0x1fff2e20:    9001        ..      STR      r0,[sp,#4]
        0x1fff2e22:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff2e24:    00016d49    Im..    DCD    93513
    $t
    $Ven$TT$L$$spif_rddata
        0x1fff2e28:    b403        ..      PUSH     {r0,r1}
        0x1fff2e2a:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff2e30] = 0x1713d
        0x1fff2e2c:    9001        ..      STR      r0,[sp,#4]
        0x1fff2e2e:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff2e30:    0001713d    =q..    DCD    94525
    $t
    $Ven$TT$L$$WaitRTCCount
        0x1fff2e34:    b403        ..      PUSH     {r0,r1}
        0x1fff2e36:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff2e3c] = 0x8901
        0x1fff2e38:    9001        ..      STR      r0,[sp,#4]
        0x1fff2e3a:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff2e3c:    00008901    ....    DCD    35073
    $t
    $Ven$TT$L$$osal_init_system
        0x1fff2e40:    b403        ..      PUSH     {r0,r1}
        0x1fff2e42:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff2e48] = 0x14aed
        0x1fff2e44:    9001        ..      STR      r0,[sp,#4]
        0x1fff2e46:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff2e48:    00014aed    .J..    DCD    84717
    $t
    $Ven$TT$L$$osal_pwrmgr_device
        0x1fff2e4c:    b403        ..      PUSH     {r0,r1}
        0x1fff2e4e:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff2e54] = 0x14fa5
        0x1fff2e50:    9001        ..      STR      r0,[sp,#4]
        0x1fff2e52:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff2e54:    00014fa5    .O..    DCD    85925
    $t
    $Ven$TT$L$$osal_start_system
        0x1fff2e58:    b403        ..      PUSH     {r0,r1}
        0x1fff2e5a:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff2e60] = 0x15285
        0x1fff2e5c:    9001        ..      STR      r0,[sp,#4]
        0x1fff2e5e:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff2e60:    00015285    .R..    DCD    86661
    $t
    $Ven$TT$L$$osal_memset
        0x1fff2e64:    b403        ..      PUSH     {r0,r1}
        0x1fff2e66:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff2e6c] = 0x14d15
        0x1fff2e68:    9001        ..      STR      r0,[sp,#4]
        0x1fff2e6a:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff2e6c:    00014d15    .M..    DCD    85269
    $t
    $Ven$TT$L$$__aeabi_uidivmod
        0x1fff2e70:    b403        ..      PUSH     {r0,r1}
        0x1fff2e72:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff2e78] = 0xe09
        0x1fff2e74:    9001        ..      STR      r0,[sp,#4]
        0x1fff2e76:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff2e78:    00000e09    ....    DCD    3593
    $t
    $Ven$TT$L$$hal_gpio_read
        0x1fff2e7c:    b403        ..      PUSH     {r0,r1}
        0x1fff2e7e:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff2e84] = 0x11020929
        0x1fff2e80:    9001        ..      STR      r0,[sp,#4]
        0x1fff2e82:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff2e84:    11020929    )...    DCD    285346089
    $t
    $Ven$TT$L$$osal_stop_timerEx
        0x1fff2e88:    b403        ..      PUSH     {r0,r1}
        0x1fff2e8a:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff2e90] = 0x152b3
        0x1fff2e8c:    9001        ..      STR      r0,[sp,#4]
        0x1fff2e8e:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff2e90:    000152b3    .R..    DCD    86707
    $t
    $Ven$TT$L$$getMcuPrecisionCount
        0x1fff2e94:    b403        ..      PUSH     {r0,r1}
        0x1fff2e96:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff2e9c] = 0xafe9
        0x1fff2e98:    9001        ..      STR      r0,[sp,#4]
        0x1fff2e9a:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff2e9c:    0000afe9    ....    DCD    45033
    $t
    $Ven$TT$L$$osal_start_timerEx
        0x1fff2ea0:    b403        ..      PUSH     {r0,r1}
        0x1fff2ea2:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff2ea8] = 0x1528b
        0x1fff2ea4:    9001        ..      STR      r0,[sp,#4]
        0x1fff2ea6:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff2ea8:    0001528b    .R..    DCD    86667
    $t
    $Ven$TT$L$$drv_disable_irq
        0x1fff2eac:    b403        ..      PUSH     {r0,r1}
        0x1fff2eae:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff2eb4] = 0xa975
        0x1fff2eb0:    9001        ..      STR      r0,[sp,#4]
        0x1fff2eb2:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff2eb4:    0000a975    u...    DCD    43381
    $t
    $Ven$TT$L$$drv_enable_irq
        0x1fff2eb8:    b403        ..      PUSH     {r0,r1}
        0x1fff2eba:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff2ec0] = 0xa99d
        0x1fff2ebc:    9001        ..      STR      r0,[sp,#4]
        0x1fff2ebe:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff2ec0:    0000a99d    ....    DCD    43421
    $t
    $Ven$TT$L$$spif_write
        0x1fff2ec4:    b403        ..      PUSH     {r0,r1}
        0x1fff2ec6:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff2ecc] = 0x17395
        0x1fff2ec8:    9001        ..      STR      r0,[sp,#4]
        0x1fff2eca:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff2ecc:    00017395    .s..    DCD    95125
    $t
    $Ven$TT$L$$__aeabi_memclr4
        0x1fff2ed0:    b403        ..      PUSH     {r0,r1}
        0x1fff2ed2:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff2ed8] = 0xeb3
        0x1fff2ed4:    9001        ..      STR      r0,[sp,#4]
        0x1fff2ed6:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff2ed8:    00000eb3    ....    DCD    3763
    $t
    $Ven$TT$L$$enableSleep
        0x1fff2edc:    b403        ..      PUSH     {r0,r1}
        0x1fff2ede:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff2ee4] = 0xaead
        0x1fff2ee0:    9001        ..      STR      r0,[sp,#4]
        0x1fff2ee2:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff2ee4:    0000aead    ....    DCD    44717
    $t
    $Ven$TT$L$$disableSleep
        0x1fff2ee8:    b403        ..      PUSH     {r0,r1}
        0x1fff2eea:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff2ef0] = 0xa921
        0x1fff2eec:    9001        ..      STR      r0,[sp,#4]
        0x1fff2eee:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff2ef0:    0000a921    !...    DCD    43297
    $t
    $Ven$TT$L$$hal_gpio_pull_set
        0x1fff2ef4:    b403        ..      PUSH     {r0,r1}
        0x1fff2ef6:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff2efc] = 0x110208f1
        0x1fff2ef8:    9001        ..      STR      r0,[sp,#4]
        0x1fff2efa:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff2efc:    110208f1    ....    DCD    285346033
    $t
    $Ven$TT$L$$log_printf
        0x1fff2f00:    b403        ..      PUSH     {r0,r1}
        0x1fff2f02:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff2f08] = 0x13ae5
        0x1fff2f04:    9001        ..      STR      r0,[sp,#4]
        0x1fff2f06:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff2f08:    00013ae5    .:..    DCD    80613
    $t
    $Ven$TT$L$$spif_config
        0x1fff2f0c:    b403        ..      PUSH     {r0,r1}
        0x1fff2f0e:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff2f14] = 0x16dc5
        0x1fff2f10:    9001        ..      STR      r0,[sp,#4]
        0x1fff2f12:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff2f14:    00016dc5    .m..    DCD    93637
    $t
    $Ven$TT$L$$hal_gpioin_register
        0x1fff2f18:    b403        ..      PUSH     {r0,r1}
        0x1fff2f1a:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff2f20] = 0x11020ce9
        0x1fff2f1c:    9001        ..      STR      r0,[sp,#4]
        0x1fff2f1e:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff2f20:    11020ce9    ....    DCD    285347049
    $t
    $Ven$TT$L$$drv_irq_init
        0x1fff2f24:    b403        ..      PUSH     {r0,r1}
        0x1fff2f26:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff2f2c] = 0xa9c9
        0x1fff2f28:    9001        ..      STR      r0,[sp,#4]
        0x1fff2f2a:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff2f2c:    0000a9c9    ....    DCD    43465
    $t
    $Ven$TT$L$$init_config
        0x1fff2f30:    b403        ..      PUSH     {r0,r1}
        0x1fff2f32:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff2f38] = 0x11021475
        0x1fff2f34:    9001        ..      STR      r0,[sp,#4]
        0x1fff2f36:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff2f38:    11021475    u...    DCD    285348981
    $t
    $Ven$TT$L$$osal_mem_set_heap
        0x1fff2f3c:    b403        ..      PUSH     {r0,r1}
        0x1fff2f3e:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff2f44] = 0x14cb5
        0x1fff2f40:    9001        ..      STR      r0,[sp,#4]
        0x1fff2f42:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff2f44:    00014cb5    .L..    DCD    85173
    $t
    $Ven$TT$L$$LL_InitConnectContext
        0x1fff2f48:    b403        ..      PUSH     {r0,r1}
        0x1fff2f4a:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff2f50] = 0x5045
        0x1fff2f4c:    9001        ..      STR      r0,[sp,#4]
        0x1fff2f4e:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff2f50:    00005045    EP..    DCD    20549
    $t
    $Ven$TT$L$$clk_init
        0x1fff2f54:    b403        ..      PUSH     {r0,r1}
        0x1fff2f56:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff2f5c] = 0xa5ed
        0x1fff2f58:    9001        ..      STR      r0,[sp,#4]
        0x1fff2f5a:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff2f5c:    0000a5ed    ....    DCD    42477
    $t
    $Ven$TT$L$$hal_gpio_init
        0x1fff2f60:    b403        ..      PUSH     {r0,r1}
        0x1fff2f62:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff2f68] = 0x11020899
        0x1fff2f64:    9001        ..      STR      r0,[sp,#4]
        0x1fff2f66:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff2f68:    11020899    ....    DCD    285345945
    $t
    $Ven$TT$L$$hal_pwm_module_init
        0x1fff2f6c:    b403        ..      PUSH     {r0,r1}
        0x1fff2f6e:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff2f74] = 0x11020fcd
        0x1fff2f70:    9001        ..      STR      r0,[sp,#4]
        0x1fff2f72:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff2f74:    11020fcd    ....    DCD    285347789
    $t
    $Ven$TT$L$$osal_mem_alloc
        0x1fff2f78:    b403        ..      PUSH     {r0,r1}
        0x1fff2f7a:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff2f80] = 0x14b3d
        0x1fff2f7c:    9001        ..      STR      r0,[sp,#4]
        0x1fff2f7e:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff2f80:    00014b3d    =K..    DCD    84797
    $t
    $Ven$TT$L$$LL_Init
        0x1fff2f84:    b403        ..      PUSH     {r0,r1}
        0x1fff2f86:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff2f8c] = 0x4eb1
        0x1fff2f88:    9001        ..      STR      r0,[sp,#4]
        0x1fff2f8a:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff2f8c:    00004eb1    .N..    DCD    20145
    $t
    $Ven$TT$L$$HCI_Init
        0x1fff2f90:    b403        ..      PUSH     {r0,r1}
        0x1fff2f92:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff2f98] = 0x183d
        0x1fff2f94:    9001        ..      STR      r0,[sp,#4]
        0x1fff2f96:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff2f98:    0000183d    =...    DCD    6205
    $t
    $Ven$TT$L$$osal_CbTimerInit
        0x1fff2f9c:    b403        ..      PUSH     {r0,r1}
        0x1fff2f9e:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff2fa4] = 0x14621
        0x1fff2fa0:    9001        ..      STR      r0,[sp,#4]
        0x1fff2fa2:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff2fa4:    00014621    !F..    DCD    83489
    $t
    $Ven$TT$L$$GAP_Init
        0x1fff2fa8:    b403        ..      PUSH     {r0,r1}
        0x1fff2faa:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff2fb0] = 0x11021a0d
        0x1fff2fac:    9001        ..      STR      r0,[sp,#4]
        0x1fff2fae:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff2fb0:    11021a0d    ....    DCD    285350413
    $t
    $Ven$TT$L$$GAPMultiRole_Init
        0x1fff2fb4:    b403        ..      PUSH     {r0,r1}
        0x1fff2fb6:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff2fbc] = 0x110202e1
        0x1fff2fb8:    9001        ..      STR      r0,[sp,#4]
        0x1fff2fba:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff2fbc:    110202e1    ....    DCD    285344481
    $t
    $Ven$TT$L$$FindMy_Init
        0x1fff2fc0:    b403        ..      PUSH     {r0,r1}
        0x1fff2fc2:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff2fc8] = 0x11020001
        0x1fff2fc4:    9001        ..      STR      r0,[sp,#4]
        0x1fff2fc6:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff2fc8:    11020001    ....    DCD    285343745
    $t
    $Ven$TT$L$$osal_pwrmgr_powerconserve0
        0x1fff2fcc:    b403        ..      PUSH     {r0,r1}
        0x1fff2fce:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff2fd4] = 0x14fd9
        0x1fff2fd0:    9001        ..      STR      r0,[sp,#4]
        0x1fff2fd2:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff2fd4:    00014fd9    .O..    DCD    85977
    $t
    $Ven$TT$L$$config_RTC
        0x1fff2fd8:    b403        ..      PUSH     {r0,r1}
        0x1fff2fda:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff2fe0] = 0xa6f9
        0x1fff2fdc:    9001        ..      STR      r0,[sp,#4]
        0x1fff2fde:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff2fe0:    0000a6f9    ....    DCD    42745
    $t
    $Ven$TT$L$$enter_sleep_off_mode
        0x1fff2fe4:    b403        ..      PUSH     {r0,r1}
        0x1fff2fe6:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff2fec] = 0xafa1
        0x1fff2fe8:    9001        ..      STR      r0,[sp,#4]
        0x1fff2fea:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff2fec:    0000afa1    ....    DCD    44961
    $t
    $Ven$TT$L$$HCI_SendDataPkt
        0x1fff2ff0:    b403        ..      PUSH     {r0,r1}
        0x1fff2ff2:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff2ff8] = 0x27e9
        0x1fff2ff4:    9001        ..      STR      r0,[sp,#4]
        0x1fff2ff6:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff2ff8:    000027e9    .'..    DCD    10217
    $t
    $Ven$TT$L$$HCI_CommandStatusEvent
        0x1fff2ffc:    b403        ..      PUSH     {r0,r1}
        0x1fff2ffe:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff3004] = 0x11fd
        0x1fff3000:    9001        ..      STR      r0,[sp,#4]
        0x1fff3002:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff3004:    000011fd    ....    DCD    4605
    $t
    $Ven$TT$L$$LL_ConnActive
        0x1fff3008:    b403        ..      PUSH     {r0,r1}
        0x1fff300a:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff3010] = 0x3011
        0x1fff300c:    9001        ..      STR      r0,[sp,#4]
        0x1fff300e:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff3010:    00003011    .0..    DCD    12305
    $t
    $Ven$TT$L$$llEnqueueCtrlPkt
        0x1fff3014:    b403        ..      PUSH     {r0,r1}
        0x1fff3016:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff301c] = 0xb953
        0x1fff3018:    9001        ..      STR      r0,[sp,#4]
        0x1fff301a:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff301c:    0000b953    S...    DCD    47443
    $t
    $Ven$TT$L$$LL_ENC_AES128_Encrypt0
        0x1fff3020:    b403        ..      PUSH     {r0,r1}
        0x1fff3022:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff3028] = 0x3fdd
        0x1fff3024:    9001        ..      STR      r0,[sp,#4]
        0x1fff3026:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff3028:    00003fdd    .?..    DCD    16349
    $t
    $Ven$TT$L$$LL_ENC_LoadKey
        0x1fff302c:    b403        ..      PUSH     {r0,r1}
        0x1fff302e:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff3034] = 0x4489
        0x1fff3030:    9001        ..      STR      r0,[sp,#4]
        0x1fff3032:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff3034:    00004489    .D..    DCD    17545
    $t
    $Ven$TT$L$$LL_ENC_GenerateNonce
        0x1fff3038:    b403        ..      PUSH     {r0,r1}
        0x1fff303a:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff3040] = 0x4421
        0x1fff303c:    9001        ..      STR      r0,[sp,#4]
        0x1fff303e:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff3040:    00004421    !D..    DCD    17441
    $t
    $Ven$TT$L$$__aeabi_uread4
        0x1fff3044:    b403        ..      PUSH     {r0,r1}
        0x1fff3046:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff304c] = 0xf75
        0x1fff3048:    9001        ..      STR      r0,[sp,#4]
        0x1fff304a:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff304c:    00000f75    u...    DCD    3957
    $t
    $Ven$TT$L$$read_current_fine_time
        0x1fff3050:    b403        ..      PUSH     {r0,r1}
        0x1fff3052:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff3058] = 0x15cc9
        0x1fff3054:    9001        ..      STR      r0,[sp,#4]
        0x1fff3056:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff3058:    00015cc9    .\..    DCD    89289
    $t
    $Ven$TT$L$$ll_debug_output
        0x1fff305c:    b403        ..      PUSH     {r0,r1}
        0x1fff305e:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff3064] = 0x10719
        0x1fff3060:    9001        ..      STR      r0,[sp,#4]
        0x1fff3062:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff3064:    00010719    ....    DCD    67353
    $t
    $Ven$TT$L$$ll_hw_get_irq_status
        0x1fff3068:    b403        ..      PUSH     {r0,r1}
        0x1fff306a:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff3070] = 0x10bbd
        0x1fff306c:    9001        ..      STR      r0,[sp,#4]
        0x1fff306e:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff3070:    00010bbd    ....    DCD    68541
    $t
    $Ven$TT$L$$ll_hw_get_tr_mode
        0x1fff3074:    b403        ..      PUSH     {r0,r1}
        0x1fff3076:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff307c] = 0x10cdd
        0x1fff3078:    9001        ..      STR      r0,[sp,#4]
        0x1fff307a:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff307c:    00010cdd    ....    DCD    68829
    $t
    $Ven$TT$L$$ll_hw_clr_irq
        0x1fff3080:    b403        ..      PUSH     {r0,r1}
        0x1fff3082:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff3088] = 0x10add
        0x1fff3084:    9001        ..      STR      r0,[sp,#4]
        0x1fff3086:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff3088:    00010add    ....    DCD    68317
    $t
    $Ven$TT$L$$ll_processExtAdvIRQ
        0x1fff308c:    b403        ..      PUSH     {r0,r1}
        0x1fff308e:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff3094] = 0x13401
        0x1fff3090:    9001        ..      STR      r0,[sp,#4]
        0x1fff3092:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff3094:    00013401    .4..    DCD    78849
    $t
    $Ven$TT$L$$ll_processExtScanIRQ
        0x1fff3098:    b403        ..      PUSH     {r0,r1}
        0x1fff309a:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff30a0] = 0x13409
        0x1fff309c:    9001        ..      STR      r0,[sp,#4]
        0x1fff309e:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff30a0:    00013409    .4..    DCD    78857
    $t
    $Ven$TT$L$$ll_processExtInitIRQ
        0x1fff30a4:    b403        ..      PUSH     {r0,r1}
        0x1fff30a6:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff30ac] = 0x13405
        0x1fff30a8:    9001        ..      STR      r0,[sp,#4]
        0x1fff30aa:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff30ac:    00013405    .4..    DCD    78853
    $t
    $Ven$TT$L$$ll_processPrdAdvIRQ
        0x1fff30b0:    b403        ..      PUSH     {r0,r1}
        0x1fff30b2:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff30b8] = 0x135f5
        0x1fff30b4:    9001        ..      STR      r0,[sp,#4]
        0x1fff30b6:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff30b8:    000135f5    .5..    DCD    79349
    $t
    $Ven$TT$L$$ll_processPrdScanIRQ
        0x1fff30bc:    b403        ..      PUSH     {r0,r1}
        0x1fff30be:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff30c4] = 0x135f9
        0x1fff30c0:    9001        ..      STR      r0,[sp,#4]
        0x1fff30c2:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff30c4:    000135f9    .5..    DCD    79353
    $t
    $Ven$TT$L$$ll_processBasicIRQ
        0x1fff30c8:    b403        ..      PUSH     {r0,r1}
        0x1fff30ca:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff30d0] = 0x117e9
        0x1fff30cc:    9001        ..      STR      r0,[sp,#4]
        0x1fff30ce:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff30d0:    000117e9    ....    DCD    71657
    $t
    $Ven$TT$L$$ll_schedule_next_event
        0x1fff30d4:    b403        ..      PUSH     {r0,r1}
        0x1fff30d6:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff30dc] = 0x13761
        0x1fff30d8:    9001        ..      STR      r0,[sp,#4]
        0x1fff30da:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff30dc:    00013761    a7..    DCD    79713
    $t
    $Ven$TT$L$$llSecAdvAllow
        0x1fff30e0:    b403        ..      PUSH     {r0,r1}
        0x1fff30e2:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff30e8] = 0xd701
        0x1fff30e4:    9001        ..      STR      r0,[sp,#4]
        0x1fff30e6:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff30e8:    0000d701    ....    DCD    55041
    $t
    $Ven$TT$L$$llSetupSecAdvEvt
        0x1fff30ec:    b403        ..      PUSH     {r0,r1}
        0x1fff30ee:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff30f4] = 0xf66d
        0x1fff30f0:    9001        ..      STR      r0,[sp,#4]
        0x1fff30f2:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff30f4:    0000f66d    m...    DCD    63085
    $t
    $Ven$TT$L$$ll_hw_set_rx_timeout
        0x1fff30f8:    b403        ..      PUSH     {r0,r1}
        0x1fff30fa:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff3100] = 0x11279
        0x1fff30fc:    9001        ..      STR      r0,[sp,#4]
        0x1fff30fe:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff3100:    00011279    y...    DCD    70265
    $t
    $Ven$TT$L$$llSetupSecScan
        0x1fff3104:    b403        ..      PUSH     {r0,r1}
        0x1fff3106:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff310c] = 0xf94d
        0x1fff3108:    9001        ..      STR      r0,[sp,#4]
        0x1fff310a:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff310c:    0000f94d    M...    DCD    63821
    $t
    $Ven$TT$L$$llSetupSecInit
        0x1fff3110:    b403        ..      PUSH     {r0,r1}
        0x1fff3112:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff3118] = 0xf7c1
        0x1fff3114:    9001        ..      STR      r0,[sp,#4]
        0x1fff3116:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff3118:    0000f7c1    ....    DCD    63425
    $t
    $Ven$TT$L$$__ARM_common_switch8
        0x1fff311c:    b403        ..      PUSH     {r0,r1}
        0x1fff311e:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff3124] = 0x8961
        0x1fff3120:    9001        ..      STR      r0,[sp,#4]
        0x1fff3122:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff3124:    00008961    a...    DCD    35169
    $t
    $Ven$TT$L$$llSetupAdv
        0x1fff3128:    b403        ..      PUSH     {r0,r1}
        0x1fff312a:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff3130] = 0xd8a9
        0x1fff312c:    9001        ..      STR      r0,[sp,#4]
        0x1fff312e:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff3130:    0000d8a9    ....    DCD    55465
    $t
    $Ven$TT$L$$osal_set_event
        0x1fff3134:    b403        ..      PUSH     {r0,r1}
        0x1fff3136:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff313c] = 0x1520d
        0x1fff3138:    9001        ..      STR      r0,[sp,#4]
        0x1fff313a:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff313c:    0001520d    .R..    DCD    86541
    $t
    $Ven$TT$L$$clear_timer
        0x1fff3140:    b403        ..      PUSH     {r0,r1}
        0x1fff3142:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff3148] = 0xa5c1
        0x1fff3144:    9001        ..      STR      r0,[sp,#4]
        0x1fff3146:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff3148:    0000a5c1    ....    DCD    42433
    $t
    $Ven$TT$L$$LL_SetAdvParam0
        0x1fff314c:    b403        ..      PUSH     {r0,r1}
        0x1fff314e:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff3154] = 0x6a9d
        0x1fff3150:    9001        ..      STR      r0,[sp,#4]
        0x1fff3152:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff3154:    00006a9d    .j..    DCD    27293
    $t
    $Ven$TT$L$$LL_SetDataLengh0
        0x1fff3158:    b403        ..      PUSH     {r0,r1}
        0x1fff315a:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff3160] = 0x6e11
        0x1fff315c:    9001        ..      STR      r0,[sp,#4]
        0x1fff315e:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff3160:    00006e11    .n..    DCD    28177
    $t
    $Ven$TT$L$$LL_set_default_conn_params0
        0x1fff3164:    b403        ..      PUSH     {r0,r1}
        0x1fff3166:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff316c] = 0x828d
        0x1fff3168:    9001        ..      STR      r0,[sp,#4]
        0x1fff316a:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff316c:    0000828d    ....    DCD    33421
    $t
    $Ven$TT$L$$efuse_read
        0x1fff3170:    b403        ..      PUSH     {r0,r1}
        0x1fff3172:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff3178] = 0xace1
        0x1fff3174:    9001        ..      STR      r0,[sp,#4]
        0x1fff3176:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff3178:    0000ace1    ....    DCD    44257
    $t
    $Ven$TT$L$$rtc_get_counter
        0x1fff317c:    b403        ..      PUSH     {r0,r1}
        0x1fff317e:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff3184] = 0x16b15
        0x1fff3180:    9001        ..      STR      r0,[sp,#4]
        0x1fff3182:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff3184:    00016b15    .k..    DCD    92949
    $t
    $Ven$TT$L$$set_sleep_flag
        0x1fff3188:    b403        ..      PUSH     {r0,r1}
        0x1fff318a:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff3190] = 0x16c01
        0x1fff318c:    9001        ..      STR      r0,[sp,#4]
        0x1fff318e:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff3190:    00016c01    .l..    DCD    93185
    $t
    $Ven$TT$L$$read_LL_remainder_time
        0x1fff3194:    b403        ..      PUSH     {r0,r1}
        0x1fff3196:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff319c] = 0x15cbd
        0x1fff3198:    9001        ..      STR      r0,[sp,#4]
        0x1fff319a:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff319c:    00015cbd    .\..    DCD    89277
    $t
    $Ven$TT$L$$enterSleepProcess0
        0x1fff31a0:    b403        ..      PUSH     {r0,r1}
        0x1fff31a2:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff31a8] = 0xaed1
        0x1fff31a4:    9001        ..      STR      r0,[sp,#4]
        0x1fff31a6:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff31a8:    0000aed1    ....    DCD    44753
    $t
    $Ven$TT$L$$osal_memcmp
        0x1fff31ac:    b403        ..      PUSH     {r0,r1}
        0x1fff31ae:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff31b4] = 0x14ccd
        0x1fff31b0:    9001        ..      STR      r0,[sp,#4]
        0x1fff31b2:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff31b4:    00014ccd    .L..    DCD    85197
    $t
    $Ven$TT$L$$llConnTerminate0
        0x1fff31b8:    b403        ..      PUSH     {r0,r1}
        0x1fff31ba:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff31c0] = 0xb851
        0x1fff31bc:    9001        ..      STR      r0,[sp,#4]
        0x1fff31be:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff31c0:    0000b851    Q...    DCD    47185
    $t
    $Ven$TT$L$$llProcessChanMap
        0x1fff31c4:    b403        ..      PUSH     {r0,r1}
        0x1fff31c6:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff31cc] = 0xc185
        0x1fff31c8:    9001        ..      STR      r0,[sp,#4]
        0x1fff31ca:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff31cc:    0000c185    ....    DCD    49541
    $t
    $Ven$TT$L$$llProcessTxData0
        0x1fff31d0:    b403        ..      PUSH     {r0,r1}
        0x1fff31d2:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff31d8] = 0xd4e9
        0x1fff31d4:    9001        ..      STR      r0,[sp,#4]
        0x1fff31d6:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff31d8:    0000d4e9    ....    DCD    54505
    $t
    $Ven$TT$L$$llSetupNextSlaveEvent0
        0x1fff31dc:    b403        ..      PUSH     {r0,r1}
        0x1fff31de:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff31e4] = 0xedf9
        0x1fff31e0:    9001        ..      STR      r0,[sp,#4]
        0x1fff31e2:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff31e4:    0000edf9    ....    DCD    60921
    $t
    $Ven$TT$L$$llSetupSecConnectableAdvEvt
        0x1fff31e8:    b403        ..      PUSH     {r0,r1}
        0x1fff31ea:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff31f0] = 0xf6e9
        0x1fff31ec:    9001        ..      STR      r0,[sp,#4]
        0x1fff31ee:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff31f0:    0000f6e9    ....    DCD    63209
    $t
    $Ven$TT$L$$llSetupSecNonConnectableAdvEvt
        0x1fff31f4:    b403        ..      PUSH     {r0,r1}
        0x1fff31f6:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff31fc] = 0xf875
        0x1fff31f8:    9001        ..      STR      r0,[sp,#4]
        0x1fff31fa:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff31fc:    0000f875    u...    DCD    63605
    $t
    $Ven$TT$L$$llSetupSecScannableAdvEvt
        0x1fff3200:    b403        ..      PUSH     {r0,r1}
        0x1fff3202:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff3208] = 0xfa19
        0x1fff3204:    9001        ..      STR      r0,[sp,#4]
        0x1fff3206:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff3208:    0000fa19    ....    DCD    64025
    $t
    $Ven$TT$L$$ll_hw_get_loop_cycle
        0x1fff320c:    b403        ..      PUSH     {r0,r1}
        0x1fff320e:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff3214] = 0x10be9
        0x1fff3210:    9001        ..      STR      r0,[sp,#4]
        0x1fff3212:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff3214:    00010be9    ....    DCD    68585
    $t
    $Ven$TT$L$$ll_hw_get_anchor
        0x1fff3218:    b403        ..      PUSH     {r0,r1}
        0x1fff321a:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff3220] = 0x10b6d
        0x1fff321c:    9001        ..      STR      r0,[sp,#4]
        0x1fff321e:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff3220:    00010b6d    m...    DCD    68461
    $t
    $Ven$TT$L$$ll_hw_write_tfifo
        0x1fff3224:    b403        ..      PUSH     {r0,r1}
        0x1fff3226:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff322c] = 0x115c1
        0x1fff3228:    9001        ..      STR      r0,[sp,#4]
        0x1fff322a:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff322c:    000115c1    ....    DCD    71105
    $t
    $Ven$TT$L$$ll_hw_get_tfifo_wrptr
        0x1fff3230:    b403        ..      PUSH     {r0,r1}
        0x1fff3232:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff3238] = 0x10ccd
        0x1fff3234:    9001        ..      STR      r0,[sp,#4]
        0x1fff3236:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff3238:    00010ccd    ....    DCD    68813
    $t
    $Ven$TT$L$$getTxBufferSize
        0x1fff323c:    b403        ..      PUSH     {r0,r1}
        0x1fff323e:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff3244] = 0xb071
        0x1fff3240:    9001        ..      STR      r0,[sp,#4]
        0x1fff3242:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff3244:    0000b071    q...    DCD    45169
    $t
    $Ven$TT$L$$get_tx_read_ptr
        0x1fff3248:    b403        ..      PUSH     {r0,r1}
        0x1fff324a:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff3250] = 0xb0d9
        0x1fff324c:    9001        ..      STR      r0,[sp,#4]
        0x1fff324e:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff3250:    0000b0d9    ....    DCD    45273
    $t
    $Ven$TT$L$$update_tx_read_ptr
        0x1fff3254:    b403        ..      PUSH     {r0,r1}
        0x1fff3256:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff325c] = 0x17659
        0x1fff3258:    9001        ..      STR      r0,[sp,#4]
        0x1fff325a:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff325c:    00017659    Yv..    DCD    95833
    $t
    $Ven$TT$L$$osal_memcpy
        0x1fff3260:    b403        ..      PUSH     {r0,r1}
        0x1fff3262:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff3268] = 0x14ce9
        0x1fff3264:    9001        ..      STR      r0,[sp,#4]
        0x1fff3266:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff3268:    00014ce9    .L..    DCD    85225
    $t
    $Ven$TT$L$$set_max_length
        0x1fff326c:    b403        ..      PUSH     {r0,r1}
        0x1fff326e:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff3274] = 0x16bed
        0x1fff3270:    9001        ..      STR      r0,[sp,#4]
        0x1fff3272:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff3274:    00016bed    .k..    DCD    93165
    $t
    $Ven$TT$L$$ll_scheduler0
        0x1fff3278:    b403        ..      PUSH     {r0,r1}
        0x1fff327a:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff3280] = 0x13789
        0x1fff327c:    9001        ..      STR      r0,[sp,#4]
        0x1fff327e:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff3280:    00013789    .7..    DCD    79753
    $t
    $Ven$TT$L$$ll_hw_set_crc_fmt
        0x1fff3284:    b403        ..      PUSH     {r0,r1}
        0x1fff3286:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff328c] = 0x1112d
        0x1fff3288:    9001        ..      STR      r0,[sp,#4]
        0x1fff328a:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff328c:    0001112d    -...    DCD    69933
    $t
    $Ven$TT$L$$ll_hw_tx2rx_timing_config
        0x1fff3290:    b403        ..      PUSH     {r0,r1}
        0x1fff3292:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff3298] = 0x11489
        0x1fff3294:    9001        ..      STR      r0,[sp,#4]
        0x1fff3296:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff3298:    00011489    ....    DCD    70793
    $t
    $Ven$TT$L$$osalTimeUpdate
        0x1fff329c:    b403        ..      PUSH     {r0,r1}
        0x1fff329e:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff32a4] = 0x144d5
        0x1fff32a0:    9001        ..      STR      r0,[sp,#4]
        0x1fff32a2:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff32a4:    000144d5    .D..    DCD    83157
    $t
    $Ven$TT$L$$set_timer
        0x1fff32a8:    b403        ..      PUSH     {r0,r1}
        0x1fff32aa:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff32b0] = 0x16c2d
        0x1fff32ac:    9001        ..      STR      r0,[sp,#4]
        0x1fff32ae:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff32b0:    00016c2d    -l..    DCD    93229
    $t
    $Ven$TT$L$$app_wakeup_process
        0x1fff32b4:    b403        ..      PUSH     {r0,r1}
        0x1fff32b6:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff32bc] = 0x9779
        0x1fff32b8:    9001        ..      STR      r0,[sp,#4]
        0x1fff32ba:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff32bc:    00009779    y...    DCD    38777
    $t
    $Ven$TT$L$$ll_hw_set_empty_head
        0x1fff32c0:    b403        ..      PUSH     {r0,r1}
        0x1fff32c2:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff32c8] = 0x11169
        0x1fff32c4:    9001        ..      STR      r0,[sp,#4]
        0x1fff32c6:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff32c8:    00011169    i...    DCD    69993
    $t
    $Ven$TT$L$$ll_hw_set_rx_timeout_1st
        0x1fff32cc:    b403        ..      PUSH     {r0,r1}
        0x1fff32ce:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff32d4] = 0x11285
        0x1fff32d0:    9001        ..      STR      r0,[sp,#4]
        0x1fff32d2:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff32d4:    00011285    ....    DCD    70277
    $t
    $Ven$TT$L$$ll_hw_set_loop_timeout
        0x1fff32d8:    b403        ..      PUSH     {r0,r1}
        0x1fff32da:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff32e0] = 0x1118d
        0x1fff32dc:    9001        ..      STR      r0,[sp,#4]
        0x1fff32de:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff32e0:    0001118d    ....    DCD    70029
    $t
    $Ven$TT$L$$ll_hw_set_timing
        0x1fff32e4:    b403        ..      PUSH     {r0,r1}
        0x1fff32e6:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff32ec] = 0x112e5
        0x1fff32e8:    9001        ..      STR      r0,[sp,#4]
        0x1fff32ea:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff32ec:    000112e5    ....    DCD    70373
    $t
    $Ven$TT$L$$ll_hw_ign_rfifo
        0x1fff32f0:    b403        ..      PUSH     {r0,r1}
        0x1fff32f2:    4801        .H      LDR      r0,[pc,#4] ; [0x1fff32f8] = 0x10df9
        0x1fff32f4:    9001        ..      STR      r0,[sp,#4]
        0x1fff32f6:    bd01        ..      POP      {r0,pc}
    $d
        0x1fff32f8:    00010df9    ....    DCD    69113
    $t.0
    __tagsym$$used.0
    hal_UART0_IRQHandler
        0x1fff32fc:    b5f0        ..      PUSH     {r4-r7,lr}
        0x1fff32fe:    b087        ..      SUB      sp,sp,#0x1c
        0x1fff3300:    489a        .H      LDR      r0,[pc,#616] ; [0x1fff356c] = 0x40004000
        0x1fff3302:    6881        .h      LDR      r1,[r0,#8]
        0x1fff3304:    220f        ."      MOVS     r2,#0xf
        0x1fff3306:    400a        .@      ANDS     r2,r2,r1
        0x1fff3308:    1e91        ..      SUBS     r1,r2,#2
        0x1fff330a:    290a        .)      CMP      r1,#0xa
        0x1fff330c:    d900        ..      BLS      0x1fff3310 ; hal_UART0_IRQHandler + 20
        0x1fff330e:    e0a6        ..      B        0x1fff345e ; hal_UART0_IRQHandler + 354
        0x1fff3310:    4479        yD      ADD      r1,r1,pc
        0x1fff3312:    7909        .y      LDRB     r1,[r1,#4]
        0x1fff3314:    0049        I.      LSLS     r1,r1,#1
        0x1fff3316:    448f        .D      ADD      pc,pc,r1
    $d.1
        0x1fff3318:    a291a205    ....    DCD    2727453189
        0x1fff331c:    a2a2a1a2    ....    DCD    2728567202
        0x1fff3320:    00a4a2a2    ....    DCD    10789538
    $t.2
        0x1fff3324:    4992        .I      LDR      r1,[pc,#584] ; [0x1fff3570] = 0x1fff7158
        0x1fff3326:    780a        .x      LDRB     r2,[r1,#0]
        0x1fff3328:    2a00        .*      CMP      r2,#0
        0x1fff332a:    d100        ..      BNE      0x1fff332e ; hal_UART0_IRQHandler + 50
        0x1fff332c:    e097        ..      B        0x1fff345e ; hal_UART0_IRQHandler + 354
        0x1fff332e:    7e0a        .~      LDRB     r2,[r1,#0x18]
        0x1fff3330:    2a00        .*      CMP      r2,#0
        0x1fff3332:    d100        ..      BNE      0x1fff3336 ; hal_UART0_IRQHandler + 58
        0x1fff3334:    e093        ..      B        0x1fff345e ; hal_UART0_IRQHandler + 354
        0x1fff3336:    7e8a        .~      LDRB     r2,[r1,#0x1a]
        0x1fff3338:    2a00        .*      CMP      r2,#0
        0x1fff333a:    d100        ..      BNE      0x1fff333e ; hal_UART0_IRQHandler + 66
        0x1fff333c:    e08f        ..      B        0x1fff345e ; hal_UART0_IRQHandler + 354
        0x1fff333e:    790a        .y      LDRB     r2,[r1,#4]
        0x1fff3340:    2a02        .*      CMP      r2,#2
        0x1fff3342:    d000        ..      BEQ      0x1fff3346 ; hal_UART0_IRQHandler + 74
        0x1fff3344:    e08b        ..      B        0x1fff345e ; hal_UART0_IRQHandler + 354
        0x1fff3346:    88ca        ..      LDRH     r2,[r1,#6]
        0x1fff3348:    890b        ..      LDRH     r3,[r1,#8]
        0x1fff334a:    1a9a        ..      SUBS     r2,r3,r2
        0x1fff334c:    b292        ..      UXTH     r2,r2
        0x1fff334e:    2a10        .*      CMP      r2,#0x10
        0x1fff3350:    d300        ..      BCC      0x1fff3354 ; hal_UART0_IRQHandler + 88
        0x1fff3352:    2210        ."      MOVS     r2,#0x10
        0x1fff3354:    2a00        .*      CMP      r2,#0
        0x1fff3356:    d100        ..      BNE      0x1fff335a ; hal_UART0_IRQHandler + 94
        0x1fff3358:    e0f2        ..      B        0x1fff3540 ; hal_UART0_IRQHandler + 580
        0x1fff335a:    68cb        .h      LDR      r3,[r1,#0xc]
        0x1fff335c:    88cc        ..      LDRH     r4,[r1,#6]
        0x1fff335e:    1c65        e.      ADDS     r5,r4,#1
        0x1fff3360:    80cd        ..      STRH     r5,[r1,#6]
        0x1fff3362:    5d1c        .]      LDRB     r4,[r3,r4]
        0x1fff3364:    7004        .p      STRB     r4,[r0,#0]
        0x1fff3366:    2a01        .*      CMP      r2,#1
        0x1fff3368:    d079        y.      BEQ      0x1fff345e ; hal_UART0_IRQHandler + 354
        0x1fff336a:    88cc        ..      LDRH     r4,[r1,#6]
        0x1fff336c:    1c65        e.      ADDS     r5,r4,#1
        0x1fff336e:    80cd        ..      STRH     r5,[r1,#6]
        0x1fff3370:    5d1c        .]      LDRB     r4,[r3,r4]
        0x1fff3372:    7004        .p      STRB     r4,[r0,#0]
        0x1fff3374:    2a02        .*      CMP      r2,#2
        0x1fff3376:    d072        r.      BEQ      0x1fff345e ; hal_UART0_IRQHandler + 354
        0x1fff3378:    88cc        ..      LDRH     r4,[r1,#6]
        0x1fff337a:    1c65        e.      ADDS     r5,r4,#1
        0x1fff337c:    80cd        ..      STRH     r5,[r1,#6]
        0x1fff337e:    5d1c        .]      LDRB     r4,[r3,r4]
        0x1fff3380:    7004        .p      STRB     r4,[r0,#0]
        0x1fff3382:    2a03        .*      CMP      r2,#3
        0x1fff3384:    d06b        k.      BEQ      0x1fff345e ; hal_UART0_IRQHandler + 354
        0x1fff3386:    88cc        ..      LDRH     r4,[r1,#6]
        0x1fff3388:    1c65        e.      ADDS     r5,r4,#1
        0x1fff338a:    80cd        ..      STRH     r5,[r1,#6]
        0x1fff338c:    5d1c        .]      LDRB     r4,[r3,r4]
        0x1fff338e:    7004        .p      STRB     r4,[r0,#0]
        0x1fff3390:    2a04        .*      CMP      r2,#4
        0x1fff3392:    d064        d.      BEQ      0x1fff345e ; hal_UART0_IRQHandler + 354
        0x1fff3394:    88cc        ..      LDRH     r4,[r1,#6]
        0x1fff3396:    1c65        e.      ADDS     r5,r4,#1
        0x1fff3398:    80cd        ..      STRH     r5,[r1,#6]
        0x1fff339a:    5d1c        .]      LDRB     r4,[r3,r4]
        0x1fff339c:    7004        .p      STRB     r4,[r0,#0]
        0x1fff339e:    2a05        .*      CMP      r2,#5
        0x1fff33a0:    d05d        ].      BEQ      0x1fff345e ; hal_UART0_IRQHandler + 354
        0x1fff33a2:    88cc        ..      LDRH     r4,[r1,#6]
        0x1fff33a4:    1c65        e.      ADDS     r5,r4,#1
        0x1fff33a6:    80cd        ..      STRH     r5,[r1,#6]
        0x1fff33a8:    5d1c        .]      LDRB     r4,[r3,r4]
        0x1fff33aa:    7004        .p      STRB     r4,[r0,#0]
        0x1fff33ac:    2a06        .*      CMP      r2,#6
        0x1fff33ae:    d056        V.      BEQ      0x1fff345e ; hal_UART0_IRQHandler + 354
        0x1fff33b0:    88cc        ..      LDRH     r4,[r1,#6]
        0x1fff33b2:    1c65        e.      ADDS     r5,r4,#1
        0x1fff33b4:    80cd        ..      STRH     r5,[r1,#6]
        0x1fff33b6:    5d1c        .]      LDRB     r4,[r3,r4]
        0x1fff33b8:    7004        .p      STRB     r4,[r0,#0]
        0x1fff33ba:    2a07        .*      CMP      r2,#7
        0x1fff33bc:    d04f        O.      BEQ      0x1fff345e ; hal_UART0_IRQHandler + 354
        0x1fff33be:    88cc        ..      LDRH     r4,[r1,#6]
        0x1fff33c0:    1c65        e.      ADDS     r5,r4,#1
        0x1fff33c2:    80cd        ..      STRH     r5,[r1,#6]
        0x1fff33c4:    5d1c        .]      LDRB     r4,[r3,r4]
        0x1fff33c6:    7004        .p      STRB     r4,[r0,#0]
        0x1fff33c8:    2a08        .*      CMP      r2,#8
        0x1fff33ca:    d048        H.      BEQ      0x1fff345e ; hal_UART0_IRQHandler + 354
        0x1fff33cc:    88cc        ..      LDRH     r4,[r1,#6]
        0x1fff33ce:    1c65        e.      ADDS     r5,r4,#1
        0x1fff33d0:    80cd        ..      STRH     r5,[r1,#6]
        0x1fff33d2:    5d1c        .]      LDRB     r4,[r3,r4]
        0x1fff33d4:    7004        .p      STRB     r4,[r0,#0]
        0x1fff33d6:    2a09        .*      CMP      r2,#9
        0x1fff33d8:    d041        A.      BEQ      0x1fff345e ; hal_UART0_IRQHandler + 354
        0x1fff33da:    88cc        ..      LDRH     r4,[r1,#6]
        0x1fff33dc:    1c65        e.      ADDS     r5,r4,#1
        0x1fff33de:    80cd        ..      STRH     r5,[r1,#6]
        0x1fff33e0:    5d1c        .]      LDRB     r4,[r3,r4]
        0x1fff33e2:    7004        .p      STRB     r4,[r0,#0]
        0x1fff33e4:    2a0a        .*      CMP      r2,#0xa
        0x1fff33e6:    d03a        :.      BEQ      0x1fff345e ; hal_UART0_IRQHandler + 354
        0x1fff33e8:    88cc        ..      LDRH     r4,[r1,#6]
        0x1fff33ea:    1c65        e.      ADDS     r5,r4,#1
        0x1fff33ec:    80cd        ..      STRH     r5,[r1,#6]
        0x1fff33ee:    5d1c        .]      LDRB     r4,[r3,r4]
        0x1fff33f0:    7004        .p      STRB     r4,[r0,#0]
        0x1fff33f2:    2a0b        .*      CMP      r2,#0xb
        0x1fff33f4:    d033        3.      BEQ      0x1fff345e ; hal_UART0_IRQHandler + 354
        0x1fff33f6:    88cc        ..      LDRH     r4,[r1,#6]
        0x1fff33f8:    1c65        e.      ADDS     r5,r4,#1
        0x1fff33fa:    80cd        ..      STRH     r5,[r1,#6]
        0x1fff33fc:    5d1c        .]      LDRB     r4,[r3,r4]
        0x1fff33fe:    7004        .p      STRB     r4,[r0,#0]
        0x1fff3400:    2a0c        .*      CMP      r2,#0xc
        0x1fff3402:    d02c        ,.      BEQ      0x1fff345e ; hal_UART0_IRQHandler + 354
        0x1fff3404:    88cc        ..      LDRH     r4,[r1,#6]
        0x1fff3406:    1c65        e.      ADDS     r5,r4,#1
        0x1fff3408:    80cd        ..      STRH     r5,[r1,#6]
        0x1fff340a:    5d1c        .]      LDRB     r4,[r3,r4]
        0x1fff340c:    7004        .p      STRB     r4,[r0,#0]
        0x1fff340e:    2a0d        .*      CMP      r2,#0xd
        0x1fff3410:    d025        %.      BEQ      0x1fff345e ; hal_UART0_IRQHandler + 354
        0x1fff3412:    88cc        ..      LDRH     r4,[r1,#6]
        0x1fff3414:    1c65        e.      ADDS     r5,r4,#1
        0x1fff3416:    80cd        ..      STRH     r5,[r1,#6]
        0x1fff3418:    5d1c        .]      LDRB     r4,[r3,r4]
        0x1fff341a:    7004        .p      STRB     r4,[r0,#0]
        0x1fff341c:    2a0e        .*      CMP      r2,#0xe
        0x1fff341e:    d01e        ..      BEQ      0x1fff345e ; hal_UART0_IRQHandler + 354
        0x1fff3420:    88cc        ..      LDRH     r4,[r1,#6]
        0x1fff3422:    1c65        e.      ADDS     r5,r4,#1
        0x1fff3424:    80cd        ..      STRH     r5,[r1,#6]
        0x1fff3426:    5d1c        .]      LDRB     r4,[r3,r4]
        0x1fff3428:    7004        .p      STRB     r4,[r0,#0]
        0x1fff342a:    2a0f        .*      CMP      r2,#0xf
        0x1fff342c:    d017        ..      BEQ      0x1fff345e ; hal_UART0_IRQHandler + 354
        0x1fff342e:    88ca        ..      LDRH     r2,[r1,#6]
        0x1fff3430:    1c54        T.      ADDS     r4,r2,#1
        0x1fff3432:    80cc        ..      STRH     r4,[r1,#6]
        0x1fff3434:    5c99        .\      LDRB     r1,[r3,r2]
        0x1fff3436:    7001        .p      STRB     r1,[r0,#0]
        0x1fff3438:    b007        ..      ADD      sp,sp,#0x1c
        0x1fff343a:    bdf0        ..      POP      {r4-r7,pc}
        0x1fff343c:    49ee        .I      LDR      r1,[pc,#952] ; [0x1fff37f8] = 0x1fff7158
        0x1fff343e:    7e0a        .~      LDRB     r2,[r1,#0x18]
        0x1fff3440:    2a00        .*      CMP      r2,#0
        0x1fff3442:    d01e        ..      BEQ      0x1fff3482 ; hal_UART0_IRQHandler + 390
        0x1fff3444:    4a4b        KJ      LDR      r2,[pc,#300] ; [0x1fff3574] = 0x40004084
        0x1fff3446:    6812        .h      LDR      r2,[r2,#0]
        0x1fff3448:    b2d4        ..      UXTB     r4,r2
        0x1fff344a:    2c00        .,      CMP      r4,#0
        0x1fff344c:    d045        E.      BEQ      0x1fff34da ; hal_UART0_IRQHandler + 478
        0x1fff344e:    2303        .#      MOVS     r3,#3
        0x1fff3450:    4013        .@      ANDS     r3,r3,r2
        0x1fff3452:    1e65        e.      SUBS     r5,r4,#1
        0x1fff3454:    2d03        .-      CMP      r5,#3
        0x1fff3456:    d220         .      BCS      0x1fff349a ; hal_UART0_IRQHandler + 414
        0x1fff3458:    2400        .$      MOVS     r4,#0
        0x1fff345a:    e02d        -.      B        0x1fff34b8 ; hal_UART0_IRQHandler + 444
        0x1fff345c:    6fc0        .o      LDR      r0,[r0,#0x7c]
        0x1fff345e:    b007        ..      ADD      sp,sp,#0x1c
        0x1fff3460:    bdf0        ..      POP      {r4-r7,pc}
        0x1fff3462:    49e5        .I      LDR      r1,[pc,#916] ; [0x1fff37f8] = 0x1fff7158
        0x1fff3464:    7e0a        .~      LDRB     r2,[r1,#0x18]
        0x1fff3466:    2a00        .*      CMP      r2,#0
        0x1fff3468:    d011        ..      BEQ      0x1fff348e ; hal_UART0_IRQHandler + 402
        0x1fff346a:    4a42        BJ      LDR      r2,[pc,#264] ; [0x1fff3574] = 0x40004084
        0x1fff346c:    6812        .h      LDR      r2,[r2,#0]
        0x1fff346e:    b2d4        ..      UXTB     r4,r2
        0x1fff3470:    2c00        .,      CMP      r4,#0
        0x1fff3472:    d059        Y.      BEQ      0x1fff3528 ; hal_UART0_IRQHandler + 556
        0x1fff3474:    2303        .#      MOVS     r3,#3
        0x1fff3476:    4013        .@      ANDS     r3,r3,r2
        0x1fff3478:    1e65        e.      SUBS     r5,r4,#1
        0x1fff347a:    2d03        .-      CMP      r5,#3
        0x1fff347c:    d234        4.      BCS      0x1fff34e8 ; hal_UART0_IRQHandler + 492
        0x1fff347e:    2400        .$      MOVS     r4,#0
        0x1fff3480:    e041        A.      B        0x1fff3506 ; hal_UART0_IRQHandler + 522
        0x1fff3482:    7d02        .}      LDRB     r2,[r0,#0x14]
        0x1fff3484:    7800        .x      LDRB     r0,[r0,#0]
        0x1fff3486:    aa03        ..      ADD      r2,sp,#0xc
        0x1fff3488:    7010        .p      STRB     r0,[r2,#0]
        0x1fff348a:    2201        ."      MOVS     r2,#1
        0x1fff348c:    e025        %.      B        0x1fff34da ; hal_UART0_IRQHandler + 478
        0x1fff348e:    7d02        .}      LDRB     r2,[r0,#0x14]
        0x1fff3490:    7800        .x      LDRB     r0,[r0,#0]
        0x1fff3492:    aa03        ..      ADD      r2,sp,#0xc
        0x1fff3494:    7010        .p      STRB     r0,[r2,#0]
        0x1fff3496:    2201        ."      MOVS     r2,#1
        0x1fff3498:    e046        F.      B        0x1fff3528 ; hal_UART0_IRQHandler + 556
        0x1fff349a:    1ae5        ..      SUBS     r5,r4,r3
        0x1fff349c:    2400        .$      MOVS     r4,#0
        0x1fff349e:    7806        .x      LDRB     r6,[r0,#0]
        0x1fff34a0:    af03        ..      ADD      r7,sp,#0xc
        0x1fff34a2:    553e        >U      STRB     r6,[r7,r4]
        0x1fff34a4:    193e        >.      ADDS     r6,r7,r4
        0x1fff34a6:    7807        .x      LDRB     r7,[r0,#0]
        0x1fff34a8:    7077        wp      STRB     r7,[r6,#1]
        0x1fff34aa:    7807        .x      LDRB     r7,[r0,#0]
        0x1fff34ac:    70b7        .p      STRB     r7,[r6,#2]
        0x1fff34ae:    7807        .x      LDRB     r7,[r0,#0]
        0x1fff34b0:    70f7        .p      STRB     r7,[r6,#3]
        0x1fff34b2:    1d24        $.      ADDS     r4,r4,#4
        0x1fff34b4:    42a5        .B      CMP      r5,r4
        0x1fff34b6:    d1f2        ..      BNE      0x1fff349e ; hal_UART0_IRQHandler + 418
        0x1fff34b8:    2b00        .+      CMP      r3,#0
        0x1fff34ba:    d00e        ..      BEQ      0x1fff34da ; hal_UART0_IRQHandler + 478
        0x1fff34bc:    7805        .x      LDRB     r5,[r0,#0]
        0x1fff34be:    ae03        ..      ADD      r6,sp,#0xc
        0x1fff34c0:    5535        5U      STRB     r5,[r6,r4]
        0x1fff34c2:    2b01        .+      CMP      r3,#1
        0x1fff34c4:    d009        ..      BEQ      0x1fff34da ; hal_UART0_IRQHandler + 478
        0x1fff34c6:    ad03        ..      ADD      r5,sp,#0xc
        0x1fff34c8:    1965        e.      ADDS     r5,r4,r5
        0x1fff34ca:    7806        .x      LDRB     r6,[r0,#0]
        0x1fff34cc:    706e        np      STRB     r6,[r5,#1]
        0x1fff34ce:    2b02        .+      CMP      r3,#2
        0x1fff34d0:    d003        ..      BEQ      0x1fff34da ; hal_UART0_IRQHandler + 478
        0x1fff34d2:    ab03        ..      ADD      r3,sp,#0xc
        0x1fff34d4:    18e3        ..      ADDS     r3,r4,r3
        0x1fff34d6:    7800        .x      LDRB     r0,[r0,#0]
        0x1fff34d8:    7098        .p      STRB     r0,[r3,#2]
        0x1fff34da:    69c9        .i      LDR      r1,[r1,#0x1c]
        0x1fff34dc:    2900        .)      CMP      r1,#0
        0x1fff34de:    d0be        ..      BEQ      0x1fff345e ; hal_UART0_IRQHandler + 354
        0x1fff34e0:    4668        hF      MOV      r0,sp
        0x1fff34e2:    7202        .r      STRB     r2,[r0,#8]
        0x1fff34e4:    2201        ."      MOVS     r2,#1
        0x1fff34e6:    e025        %.      B        0x1fff3534 ; hal_UART0_IRQHandler + 568
        0x1fff34e8:    1ae5        ..      SUBS     r5,r4,r3
        0x1fff34ea:    2400        .$      MOVS     r4,#0
        0x1fff34ec:    7806        .x      LDRB     r6,[r0,#0]
        0x1fff34ee:    af03        ..      ADD      r7,sp,#0xc
        0x1fff34f0:    553e        >U      STRB     r6,[r7,r4]
        0x1fff34f2:    193e        >.      ADDS     r6,r7,r4
        0x1fff34f4:    7807        .x      LDRB     r7,[r0,#0]
        0x1fff34f6:    7077        wp      STRB     r7,[r6,#1]
        0x1fff34f8:    7807        .x      LDRB     r7,[r0,#0]
        0x1fff34fa:    70b7        .p      STRB     r7,[r6,#2]
        0x1fff34fc:    7807        .x      LDRB     r7,[r0,#0]
        0x1fff34fe:    70f7        .p      STRB     r7,[r6,#3]
        0x1fff3500:    1d24        $.      ADDS     r4,r4,#4
        0x1fff3502:    42a5        .B      CMP      r5,r4
        0x1fff3504:    d1f2        ..      BNE      0x1fff34ec ; hal_UART0_IRQHandler + 496
        0x1fff3506:    2b00        .+      CMP      r3,#0
        0x1fff3508:    d00e        ..      BEQ      0x1fff3528 ; hal_UART0_IRQHandler + 556
        0x1fff350a:    7805        .x      LDRB     r5,[r0,#0]
        0x1fff350c:    ae03        ..      ADD      r6,sp,#0xc
        0x1fff350e:    5535        5U      STRB     r5,[r6,r4]
        0x1fff3510:    2b01        .+      CMP      r3,#1
        0x1fff3512:    d009        ..      BEQ      0x1fff3528 ; hal_UART0_IRQHandler + 556
        0x1fff3514:    ad03        ..      ADD      r5,sp,#0xc
        0x1fff3516:    1965        e.      ADDS     r5,r4,r5
        0x1fff3518:    7806        .x      LDRB     r6,[r0,#0]
        0x1fff351a:    706e        np      STRB     r6,[r5,#1]
        0x1fff351c:    2b02        .+      CMP      r3,#2
        0x1fff351e:    d003        ..      BEQ      0x1fff3528 ; hal_UART0_IRQHandler + 556
        0x1fff3520:    ab03        ..      ADD      r3,sp,#0xc
        0x1fff3522:    18e3        ..      ADDS     r3,r4,r3
        0x1fff3524:    7800        .x      LDRB     r0,[r0,#0]
        0x1fff3526:    7098        .p      STRB     r0,[r3,#2]
        0x1fff3528:    69c9        .i      LDR      r1,[r1,#0x1c]
        0x1fff352a:    2900        .)      CMP      r1,#0
        0x1fff352c:    d097        ..      BEQ      0x1fff345e ; hal_UART0_IRQHandler + 354
        0x1fff352e:    4668        hF      MOV      r0,sp
        0x1fff3530:    7202        .r      STRB     r2,[r0,#8]
        0x1fff3532:    2202        ."      MOVS     r2,#2
        0x1fff3534:    7002        .p      STRB     r2,[r0,#0]
        0x1fff3536:    aa03        ..      ADD      r2,sp,#0xc
        0x1fff3538:    9201        ..      STR      r2,[sp,#4]
        0x1fff353a:    4788        .G      BLX      r1
        0x1fff353c:    b007        ..      ADD      sp,sp,#0x1c
        0x1fff353e:    bdf0        ..      POP      {r4-r7,pc}
        0x1fff3540:    2000        .       MOVS     r0,#0
        0x1fff3542:    8108        ..      STRH     r0,[r1,#8]
        0x1fff3544:    80c8        ..      STRH     r0,[r1,#6]
        0x1fff3546:    2001        .       MOVS     r0,#1
        0x1fff3548:    7108        .q      STRB     r0,[r1,#4]
        0x1fff354a:    69c9        .i      LDR      r1,[r1,#0x1c]
        0x1fff354c:    2900        .)      CMP      r1,#0
        0x1fff354e:    d007        ..      BEQ      0x1fff3560 ; hal_UART0_IRQHandler + 612
        0x1fff3550:    48aa        .H      LDR      r0,[pc,#680] ; [0x1fff37fc] = 0x1fff5784
        0x1fff3552:    c80c        ..      LDM      r0!,{r2,r3}
        0x1fff3554:    6800        .h      LDR      r0,[r0,#0]
        0x1fff3556:    9005        ..      STR      r0,[sp,#0x14]
        0x1fff3558:    9304        ..      STR      r3,[sp,#0x10]
        0x1fff355a:    9203        ..      STR      r2,[sp,#0xc]
        0x1fff355c:    a803        ..      ADD      r0,sp,#0xc
        0x1fff355e:    4788        .G      BLX      r1
        0x1fff3560:    2008        .       MOVS     r0,#8
        0x1fff3562:    f7fff87f    ....    BL       hal_pwrmgr_unlock ; 0x1fff2664
        0x1fff3566:    b007        ..      ADD      sp,sp,#0x1c
        0x1fff3568:    bdf0        ..      POP      {r4-r7,pc}
        0x1fff356a:    46c0        .F      MOV      r8,r8
    $d.3
    __arm_cp.0_0
        0x1fff356c:    40004000    .@.@    DCD    1073758208
    __arm_cp.0_1
        0x1fff3570:    1fff7158    Xq..    DCD    536834392
    __arm_cp.0_3
        0x1fff3574:    40004084    .@.@    DCD    1073758340
    $t.4
    __tagsym$$used.1
    hal_UART1_IRQHandler
        0x1fff3578:    b5f0        ..      PUSH     {r4-r7,lr}
        0x1fff357a:    b087        ..      SUB      sp,sp,#0x1c
        0x1fff357c:    489d        .H      LDR      r0,[pc,#628] ; [0x1fff37f4] = 0x40009000
        0x1fff357e:    6881        .h      LDR      r1,[r0,#8]
        0x1fff3580:    220f        ."      MOVS     r2,#0xf
        0x1fff3582:    400a        .@      ANDS     r2,r2,r1
        0x1fff3584:    1e91        ..      SUBS     r1,r2,#2
        0x1fff3586:    290a        .)      CMP      r1,#0xa
        0x1fff3588:    d900        ..      BLS      0x1fff358c ; hal_UART1_IRQHandler + 20
        0x1fff358a:    e0aa        ..      B        0x1fff36e2 ; hal_UART1_IRQHandler + 362
        0x1fff358c:    4479        yD      ADD      r1,r1,pc
        0x1fff358e:    7909        .y      LDRB     r1,[r1,#4]
        0x1fff3590:    0049        I.      LSLS     r1,r1,#1
        0x1fff3592:    448f        .D      ADD      pc,pc,r1
    $d.5
        0x1fff3594:    a694a605    ....    DCD    2794759685
        0x1fff3598:    a6a6a5a6    ....    DCD    2795939238
        0x1fff359c:    00a8a6a6    ....    DCD    11052710
    $t.6
        0x1fff35a0:    2220         "      MOVS     r2,#0x20
        0x1fff35a2:    4995        .I      LDR      r1,[pc,#596] ; [0x1fff37f8] = 0x1fff7158
        0x1fff35a4:    5c8a        .\      LDRB     r2,[r1,r2]
        0x1fff35a6:    2a00        .*      CMP      r2,#0
        0x1fff35a8:    d100        ..      BNE      0x1fff35ac ; hal_UART1_IRQHandler + 52
        0x1fff35aa:    e09a        ..      B        0x1fff36e2 ; hal_UART1_IRQHandler + 362
        0x1fff35ac:    460a        .F      MOV      r2,r1
        0x1fff35ae:    3220         2      ADDS     r2,r2,#0x20
        0x1fff35b0:    7e13        .~      LDRB     r3,[r2,#0x18]
        0x1fff35b2:    2b00        .+      CMP      r3,#0
        0x1fff35b4:    d100        ..      BNE      0x1fff35b8 ; hal_UART1_IRQHandler + 64
        0x1fff35b6:    e094        ..      B        0x1fff36e2 ; hal_UART1_IRQHandler + 362
        0x1fff35b8:    7e93        .~      LDRB     r3,[r2,#0x1a]
        0x1fff35ba:    2b00        .+      CMP      r3,#0
        0x1fff35bc:    d100        ..      BNE      0x1fff35c0 ; hal_UART1_IRQHandler + 72
        0x1fff35be:    e090        ..      B        0x1fff36e2 ; hal_UART1_IRQHandler + 362
        0x1fff35c0:    7912        .y      LDRB     r2,[r2,#4]
        0x1fff35c2:    2a02        .*      CMP      r2,#2
        0x1fff35c4:    d000        ..      BEQ      0x1fff35c8 ; hal_UART1_IRQHandler + 80
        0x1fff35c6:    e08c        ..      B        0x1fff36e2 ; hal_UART1_IRQHandler + 362
        0x1fff35c8:    8cca        ..      LDRH     r2,[r1,#0x26]
        0x1fff35ca:    8d0b        ..      LDRH     r3,[r1,#0x28]
        0x1fff35cc:    1a9a        ..      SUBS     r2,r3,r2
        0x1fff35ce:    b292        ..      UXTH     r2,r2
        0x1fff35d0:    2a10        .*      CMP      r2,#0x10
        0x1fff35d2:    d300        ..      BCC      0x1fff35d6 ; hal_UART1_IRQHandler + 94
        0x1fff35d4:    2210        ."      MOVS     r2,#0x10
        0x1fff35d6:    2a00        .*      CMP      r2,#0
        0x1fff35d8:    d100        ..      BNE      0x1fff35dc ; hal_UART1_IRQHandler + 100
        0x1fff35da:    e0f4        ..      B        0x1fff37c6 ; hal_UART1_IRQHandler + 590
        0x1fff35dc:    6acb        .j      LDR      r3,[r1,#0x2c]
        0x1fff35de:    8ccc        ..      LDRH     r4,[r1,#0x26]
        0x1fff35e0:    1c65        e.      ADDS     r5,r4,#1
        0x1fff35e2:    84cd        ..      STRH     r5,[r1,#0x26]
        0x1fff35e4:    5d1c        .]      LDRB     r4,[r3,r4]
        0x1fff35e6:    7004        .p      STRB     r4,[r0,#0]
        0x1fff35e8:    2a01        .*      CMP      r2,#1
        0x1fff35ea:    d07a        z.      BEQ      0x1fff36e2 ; hal_UART1_IRQHandler + 362
        0x1fff35ec:    8ccc        ..      LDRH     r4,[r1,#0x26]
        0x1fff35ee:    1c65        e.      ADDS     r5,r4,#1
        0x1fff35f0:    84cd        ..      STRH     r5,[r1,#0x26]
        0x1fff35f2:    5d1c        .]      LDRB     r4,[r3,r4]
        0x1fff35f4:    7004        .p      STRB     r4,[r0,#0]
        0x1fff35f6:    2a02        .*      CMP      r2,#2
        0x1fff35f8:    d073        s.      BEQ      0x1fff36e2 ; hal_UART1_IRQHandler + 362
        0x1fff35fa:    8ccc        ..      LDRH     r4,[r1,#0x26]
        0x1fff35fc:    1c65        e.      ADDS     r5,r4,#1
        0x1fff35fe:    84cd        ..      STRH     r5,[r1,#0x26]
        0x1fff3600:    5d1c        .]      LDRB     r4,[r3,r4]
        0x1fff3602:    7004        .p      STRB     r4,[r0,#0]
        0x1fff3604:    2a03        .*      CMP      r2,#3
        0x1fff3606:    d06c        l.      BEQ      0x1fff36e2 ; hal_UART1_IRQHandler + 362
        0x1fff3608:    8ccc        ..      LDRH     r4,[r1,#0x26]
        0x1fff360a:    1c65        e.      ADDS     r5,r4,#1
        0x1fff360c:    84cd        ..      STRH     r5,[r1,#0x26]
        0x1fff360e:    5d1c        .]      LDRB     r4,[r3,r4]
        0x1fff3610:    7004        .p      STRB     r4,[r0,#0]
        0x1fff3612:    2a04        .*      CMP      r2,#4
        0x1fff3614:    d065        e.      BEQ      0x1fff36e2 ; hal_UART1_IRQHandler + 362
        0x1fff3616:    8ccc        ..      LDRH     r4,[r1,#0x26]
        0x1fff3618:    1c65        e.      ADDS     r5,r4,#1
        0x1fff361a:    84cd        ..      STRH     r5,[r1,#0x26]
        0x1fff361c:    5d1c        .]      LDRB     r4,[r3,r4]
        0x1fff361e:    7004        .p      STRB     r4,[r0,#0]
        0x1fff3620:    2a05        .*      CMP      r2,#5
        0x1fff3622:    d05e        ^.      BEQ      0x1fff36e2 ; hal_UART1_IRQHandler + 362
        0x1fff3624:    8ccc        ..      LDRH     r4,[r1,#0x26]
        0x1fff3626:    1c65        e.      ADDS     r5,r4,#1
        0x1fff3628:    84cd        ..      STRH     r5,[r1,#0x26]
        0x1fff362a:    5d1c        .]      LDRB     r4,[r3,r4]
        0x1fff362c:    7004        .p      STRB     r4,[r0,#0]
        0x1fff362e:    2a06        .*      CMP      r2,#6
        0x1fff3630:    d057        W.      BEQ      0x1fff36e2 ; hal_UART1_IRQHandler + 362
        0x1fff3632:    8ccc        ..      LDRH     r4,[r1,#0x26]
        0x1fff3634:    1c65        e.      ADDS     r5,r4,#1
        0x1fff3636:    84cd        ..      STRH     r5,[r1,#0x26]
        0x1fff3638:    5d1c        .]      LDRB     r4,[r3,r4]
        0x1fff363a:    7004        .p      STRB     r4,[r0,#0]
        0x1fff363c:    2a07        .*      CMP      r2,#7
        0x1fff363e:    d050        P.      BEQ      0x1fff36e2 ; hal_UART1_IRQHandler + 362
        0x1fff3640:    8ccc        ..      LDRH     r4,[r1,#0x26]
        0x1fff3642:    1c65        e.      ADDS     r5,r4,#1
        0x1fff3644:    84cd        ..      STRH     r5,[r1,#0x26]
        0x1fff3646:    5d1c        .]      LDRB     r4,[r3,r4]
        0x1fff3648:    7004        .p      STRB     r4,[r0,#0]
        0x1fff364a:    2a08        .*      CMP      r2,#8
        0x1fff364c:    d049        I.      BEQ      0x1fff36e2 ; hal_UART1_IRQHandler + 362
        0x1fff364e:    8ccc        ..      LDRH     r4,[r1,#0x26]
        0x1fff3650:    1c65        e.      ADDS     r5,r4,#1
        0x1fff3652:    84cd        ..      STRH     r5,[r1,#0x26]
        0x1fff3654:    5d1c        .]      LDRB     r4,[r3,r4]
        0x1fff3656:    7004        .p      STRB     r4,[r0,#0]
        0x1fff3658:    2a09        .*      CMP      r2,#9
        0x1fff365a:    d042        B.      BEQ      0x1fff36e2 ; hal_UART1_IRQHandler + 362
        0x1fff365c:    8ccc        ..      LDRH     r4,[r1,#0x26]
        0x1fff365e:    1c65        e.      ADDS     r5,r4,#1
        0x1fff3660:    84cd        ..      STRH     r5,[r1,#0x26]
        0x1fff3662:    5d1c        .]      LDRB     r4,[r3,r4]
        0x1fff3664:    7004        .p      STRB     r4,[r0,#0]
        0x1fff3666:    2a0a        .*      CMP      r2,#0xa
        0x1fff3668:    d03b        ;.      BEQ      0x1fff36e2 ; hal_UART1_IRQHandler + 362
        0x1fff366a:    8ccc        ..      LDRH     r4,[r1,#0x26]
        0x1fff366c:    1c65        e.      ADDS     r5,r4,#1
        0x1fff366e:    84cd        ..      STRH     r5,[r1,#0x26]
        0x1fff3670:    5d1c        .]      LDRB     r4,[r3,r4]
        0x1fff3672:    7004        .p      STRB     r4,[r0,#0]
        0x1fff3674:    2a0b        .*      CMP      r2,#0xb
        0x1fff3676:    d034        4.      BEQ      0x1fff36e2 ; hal_UART1_IRQHandler + 362
        0x1fff3678:    8ccc        ..      LDRH     r4,[r1,#0x26]
        0x1fff367a:    1c65        e.      ADDS     r5,r4,#1
        0x1fff367c:    84cd        ..      STRH     r5,[r1,#0x26]
        0x1fff367e:    5d1c        .]      LDRB     r4,[r3,r4]
        0x1fff3680:    7004        .p      STRB     r4,[r0,#0]
        0x1fff3682:    2a0c        .*      CMP      r2,#0xc
        0x1fff3684:    d02d        -.      BEQ      0x1fff36e2 ; hal_UART1_IRQHandler + 362
        0x1fff3686:    8ccc        ..      LDRH     r4,[r1,#0x26]
        0x1fff3688:    1c65        e.      ADDS     r5,r4,#1
        0x1fff368a:    84cd        ..      STRH     r5,[r1,#0x26]
        0x1fff368c:    5d1c        .]      LDRB     r4,[r3,r4]
        0x1fff368e:    7004        .p      STRB     r4,[r0,#0]
        0x1fff3690:    2a0d        .*      CMP      r2,#0xd
        0x1fff3692:    d026        &.      BEQ      0x1fff36e2 ; hal_UART1_IRQHandler + 362
        0x1fff3694:    8ccc        ..      LDRH     r4,[r1,#0x26]
        0x1fff3696:    1c65        e.      ADDS     r5,r4,#1
        0x1fff3698:    84cd        ..      STRH     r5,[r1,#0x26]
        0x1fff369a:    5d1c        .]      LDRB     r4,[r3,r4]
        0x1fff369c:    7004        .p      STRB     r4,[r0,#0]
        0x1fff369e:    2a0e        .*      CMP      r2,#0xe
        0x1fff36a0:    d01f        ..      BEQ      0x1fff36e2 ; hal_UART1_IRQHandler + 362
        0x1fff36a2:    8ccc        ..      LDRH     r4,[r1,#0x26]
        0x1fff36a4:    1c65        e.      ADDS     r5,r4,#1
        0x1fff36a6:    84cd        ..      STRH     r5,[r1,#0x26]
        0x1fff36a8:    5d1c        .]      LDRB     r4,[r3,r4]
        0x1fff36aa:    7004        .p      STRB     r4,[r0,#0]
        0x1fff36ac:    2a0f        .*      CMP      r2,#0xf
        0x1fff36ae:    d018        ..      BEQ      0x1fff36e2 ; hal_UART1_IRQHandler + 362
        0x1fff36b0:    8cca        ..      LDRH     r2,[r1,#0x26]
        0x1fff36b2:    1c54        T.      ADDS     r4,r2,#1
        0x1fff36b4:    84cc        ..      STRH     r4,[r1,#0x26]
        0x1fff36b6:    5c99        .\      LDRB     r1,[r3,r2]
        0x1fff36b8:    7001        .p      STRB     r1,[r0,#0]
        0x1fff36ba:    b007        ..      ADD      sp,sp,#0x1c
        0x1fff36bc:    bdf0        ..      POP      {r4-r7,pc}
        0x1fff36be:    2238        8"      MOVS     r2,#0x38
        0x1fff36c0:    494d        MI      LDR      r1,[pc,#308] ; [0x1fff37f8] = 0x1fff7158
        0x1fff36c2:    5c8a        .\      LDRB     r2,[r1,r2]
        0x1fff36c4:    2a00        .*      CMP      r2,#0
        0x1fff36c6:    d01f        ..      BEQ      0x1fff3708 ; hal_UART1_IRQHandler + 400
        0x1fff36c8:    4a4d        MJ      LDR      r2,[pc,#308] ; [0x1fff3800] = 0x40009084
        0x1fff36ca:    6812        .h      LDR      r2,[r2,#0]
        0x1fff36cc:    b2d4        ..      UXTB     r4,r2
        0x1fff36ce:    2c00        .,      CMP      r4,#0
        0x1fff36d0:    d046        F.      BEQ      0x1fff3760 ; hal_UART1_IRQHandler + 488
        0x1fff36d2:    2303        .#      MOVS     r3,#3
        0x1fff36d4:    4013        .@      ANDS     r3,r3,r2
        0x1fff36d6:    1e65        e.      SUBS     r5,r4,#1
        0x1fff36d8:    2d03        .-      CMP      r5,#3
        0x1fff36da:    d221        !.      BCS      0x1fff3720 ; hal_UART1_IRQHandler + 424
        0x1fff36dc:    2400        .$      MOVS     r4,#0
        0x1fff36de:    e02e        ..      B        0x1fff373e ; hal_UART1_IRQHandler + 454
        0x1fff36e0:    6fc0        .o      LDR      r0,[r0,#0x7c]
        0x1fff36e2:    b007        ..      ADD      sp,sp,#0x1c
        0x1fff36e4:    bdf0        ..      POP      {r4-r7,pc}
        0x1fff36e6:    2238        8"      MOVS     r2,#0x38
        0x1fff36e8:    4943        CI      LDR      r1,[pc,#268] ; [0x1fff37f8] = 0x1fff7158
        0x1fff36ea:    5c8a        .\      LDRB     r2,[r1,r2]
        0x1fff36ec:    2a00        .*      CMP      r2,#0
        0x1fff36ee:    d011        ..      BEQ      0x1fff3714 ; hal_UART1_IRQHandler + 412
        0x1fff36f0:    4a43        CJ      LDR      r2,[pc,#268] ; [0x1fff3800] = 0x40009084
        0x1fff36f2:    6812        .h      LDR      r2,[r2,#0]
        0x1fff36f4:    b2d4        ..      UXTB     r4,r2
        0x1fff36f6:    2c00        .,      CMP      r4,#0
        0x1fff36f8:    d059        Y.      BEQ      0x1fff37ae ; hal_UART1_IRQHandler + 566
        0x1fff36fa:    2303        .#      MOVS     r3,#3
        0x1fff36fc:    4013        .@      ANDS     r3,r3,r2
        0x1fff36fe:    1e65        e.      SUBS     r5,r4,#1
        0x1fff3700:    2d03        .-      CMP      r5,#3
        0x1fff3702:    d234        4.      BCS      0x1fff376e ; hal_UART1_IRQHandler + 502
        0x1fff3704:    2400        .$      MOVS     r4,#0
        0x1fff3706:    e041        A.      B        0x1fff378c ; hal_UART1_IRQHandler + 532
        0x1fff3708:    7d02        .}      LDRB     r2,[r0,#0x14]
        0x1fff370a:    7800        .x      LDRB     r0,[r0,#0]
        0x1fff370c:    aa03        ..      ADD      r2,sp,#0xc
        0x1fff370e:    7010        .p      STRB     r0,[r2,#0]
        0x1fff3710:    2201        ."      MOVS     r2,#1
        0x1fff3712:    e025        %.      B        0x1fff3760 ; hal_UART1_IRQHandler + 488
        0x1fff3714:    7d02        .}      LDRB     r2,[r0,#0x14]
        0x1fff3716:    7800        .x      LDRB     r0,[r0,#0]
        0x1fff3718:    aa03        ..      ADD      r2,sp,#0xc
        0x1fff371a:    7010        .p      STRB     r0,[r2,#0]
        0x1fff371c:    2201        ."      MOVS     r2,#1
        0x1fff371e:    e046        F.      B        0x1fff37ae ; hal_UART1_IRQHandler + 566
        0x1fff3720:    1ae5        ..      SUBS     r5,r4,r3
        0x1fff3722:    2400        .$      MOVS     r4,#0
        0x1fff3724:    7806        .x      LDRB     r6,[r0,#0]
        0x1fff3726:    af03        ..      ADD      r7,sp,#0xc
        0x1fff3728:    553e        >U      STRB     r6,[r7,r4]
        0x1fff372a:    193e        >.      ADDS     r6,r7,r4
        0x1fff372c:    7807        .x      LDRB     r7,[r0,#0]
        0x1fff372e:    7077        wp      STRB     r7,[r6,#1]
        0x1fff3730:    7807        .x      LDRB     r7,[r0,#0]
        0x1fff3732:    70b7        .p      STRB     r7,[r6,#2]
        0x1fff3734:    7807        .x      LDRB     r7,[r0,#0]
        0x1fff3736:    70f7        .p      STRB     r7,[r6,#3]
        0x1fff3738:    1d24        $.      ADDS     r4,r4,#4
        0x1fff373a:    42a5        .B      CMP      r5,r4
        0x1fff373c:    d1f2        ..      BNE      0x1fff3724 ; hal_UART1_IRQHandler + 428
        0x1fff373e:    2b00        .+      CMP      r3,#0
        0x1fff3740:    d00e        ..      BEQ      0x1fff3760 ; hal_UART1_IRQHandler + 488
        0x1fff3742:    7805        .x      LDRB     r5,[r0,#0]
        0x1fff3744:    ae03        ..      ADD      r6,sp,#0xc
        0x1fff3746:    5535        5U      STRB     r5,[r6,r4]
        0x1fff3748:    2b01        .+      CMP      r3,#1
        0x1fff374a:    d009        ..      BEQ      0x1fff3760 ; hal_UART1_IRQHandler + 488
        0x1fff374c:    ad03        ..      ADD      r5,sp,#0xc
        0x1fff374e:    1965        e.      ADDS     r5,r4,r5
        0x1fff3750:    7806        .x      LDRB     r6,[r0,#0]
        0x1fff3752:    706e        np      STRB     r6,[r5,#1]
        0x1fff3754:    2b02        .+      CMP      r3,#2
        0x1fff3756:    d003        ..      BEQ      0x1fff3760 ; hal_UART1_IRQHandler + 488
        0x1fff3758:    ab03        ..      ADD      r3,sp,#0xc
        0x1fff375a:    18e3        ..      ADDS     r3,r4,r3
        0x1fff375c:    7800        .x      LDRB     r0,[r0,#0]
        0x1fff375e:    7098        .p      STRB     r0,[r3,#2]
        0x1fff3760:    6bc9        .k      LDR      r1,[r1,#0x3c]
        0x1fff3762:    2900        .)      CMP      r1,#0
        0x1fff3764:    d0bd        ..      BEQ      0x1fff36e2 ; hal_UART1_IRQHandler + 362
        0x1fff3766:    4668        hF      MOV      r0,sp
        0x1fff3768:    7202        .r      STRB     r2,[r0,#8]
        0x1fff376a:    2201        ."      MOVS     r2,#1
        0x1fff376c:    e025        %.      B        0x1fff37ba ; hal_UART1_IRQHandler + 578
        0x1fff376e:    1ae5        ..      SUBS     r5,r4,r3
        0x1fff3770:    2400        .$      MOVS     r4,#0
        0x1fff3772:    7806        .x      LDRB     r6,[r0,#0]
        0x1fff3774:    af03        ..      ADD      r7,sp,#0xc
        0x1fff3776:    553e        >U      STRB     r6,[r7,r4]
        0x1fff3778:    193e        >.      ADDS     r6,r7,r4
        0x1fff377a:    7807        .x      LDRB     r7,[r0,#0]
        0x1fff377c:    7077        wp      STRB     r7,[r6,#1]
        0x1fff377e:    7807        .x      LDRB     r7,[r0,#0]
        0x1fff3780:    70b7        .p      STRB     r7,[r6,#2]
        0x1fff3782:    7807        .x      LDRB     r7,[r0,#0]
        0x1fff3784:    70f7        .p      STRB     r7,[r6,#3]
        0x1fff3786:    1d24        $.      ADDS     r4,r4,#4
        0x1fff3788:    42a5        .B      CMP      r5,r4
        0x1fff378a:    d1f2        ..      BNE      0x1fff3772 ; hal_UART1_IRQHandler + 506
        0x1fff378c:    2b00        .+      CMP      r3,#0
        0x1fff378e:    d00e        ..      BEQ      0x1fff37ae ; hal_UART1_IRQHandler + 566
        0x1fff3790:    7805        .x      LDRB     r5,[r0,#0]
        0x1fff3792:    ae03        ..      ADD      r6,sp,#0xc
        0x1fff3794:    5535        5U      STRB     r5,[r6,r4]
        0x1fff3796:    2b01        .+      CMP      r3,#1
        0x1fff3798:    d009        ..      BEQ      0x1fff37ae ; hal_UART1_IRQHandler + 566
        0x1fff379a:    ad03        ..      ADD      r5,sp,#0xc
        0x1fff379c:    1965        e.      ADDS     r5,r4,r5
        0x1fff379e:    7806        .x      LDRB     r6,[r0,#0]
        0x1fff37a0:    706e        np      STRB     r6,[r5,#1]
        0x1fff37a2:    2b02        .+      CMP      r3,#2
        0x1fff37a4:    d003        ..      BEQ      0x1fff37ae ; hal_UART1_IRQHandler + 566
        0x1fff37a6:    ab03        ..      ADD      r3,sp,#0xc
        0x1fff37a8:    18e3        ..      ADDS     r3,r4,r3
        0x1fff37aa:    7800        .x      LDRB     r0,[r0,#0]
        0x1fff37ac:    7098        .p      STRB     r0,[r3,#2]
        0x1fff37ae:    6bc9        .k      LDR      r1,[r1,#0x3c]
        0x1fff37b0:    2900        .)      CMP      r1,#0
        0x1fff37b2:    d096        ..      BEQ      0x1fff36e2 ; hal_UART1_IRQHandler + 362
        0x1fff37b4:    4668        hF      MOV      r0,sp
        0x1fff37b6:    7202        .r      STRB     r2,[r0,#8]
        0x1fff37b8:    2202        ."      MOVS     r2,#2
        0x1fff37ba:    7002        .p      STRB     r2,[r0,#0]
        0x1fff37bc:    aa03        ..      ADD      r2,sp,#0xc
        0x1fff37be:    9201        ..      STR      r2,[sp,#4]
        0x1fff37c0:    4788        .G      BLX      r1
        0x1fff37c2:    b007        ..      ADD      sp,sp,#0x1c
        0x1fff37c4:    bdf0        ..      POP      {r4-r7,pc}
        0x1fff37c6:    2024        $       MOVS     r0,#0x24
        0x1fff37c8:    2201        ."      MOVS     r2,#1
        0x1fff37ca:    540a        .T      STRB     r2,[r1,r0]
        0x1fff37cc:    2000        .       MOVS     r0,#0
        0x1fff37ce:    8508        ..      STRH     r0,[r1,#0x28]
        0x1fff37d0:    84c8        ..      STRH     r0,[r1,#0x26]
        0x1fff37d2:    6bc9        .k      LDR      r1,[r1,#0x3c]
        0x1fff37d4:    2900        .)      CMP      r1,#0
        0x1fff37d6:    d007        ..      BEQ      0x1fff37e8 ; hal_UART1_IRQHandler + 624
        0x1fff37d8:    4808        .H      LDR      r0,[pc,#32] ; [0x1fff37fc] = 0x1fff5784
        0x1fff37da:    c80c        ..      LDM      r0!,{r2,r3}
        0x1fff37dc:    6800        .h      LDR      r0,[r0,#0]
        0x1fff37de:    9005        ..      STR      r0,[sp,#0x14]
        0x1fff37e0:    9304        ..      STR      r3,[sp,#0x10]
        0x1fff37e2:    9203        ..      STR      r2,[sp,#0xc]
        0x1fff37e4:    a803        ..      ADD      r0,sp,#0xc
        0x1fff37e6:    4788        .G      BLX      r1
        0x1fff37e8:    2019        .       MOVS     r0,#0x19
        0x1fff37ea:    f7feff3b    ..;.    BL       hal_pwrmgr_unlock ; 0x1fff2664
        0x1fff37ee:    b007        ..      ADD      sp,sp,#0x1c
        0x1fff37f0:    bdf0        ..      POP      {r4-r7,pc}
        0x1fff37f2:    46c0        .F      MOV      r8,r8
    $d.7
    __arm_cp.1_0
        0x1fff37f4:    40009000    ...@    DCD    1073778688
    __arm_cp.1_1
        0x1fff37f8:    1fff7158    Xq..    DCD    536834392
    __arm_cp.1_2
        0x1fff37fc:    1fff5784    .W..    DCD    536827780
    __arm_cp.1_3
        0x1fff3800:    40009084    ...@    DCD    1073778820
    $t.2
    hal_watchdog_init
        0x1fff3804:    b5b0        ..      PUSH     {r4,r5,r7,lr}
        0x1fff3806:    b082        ..      SUB      sp,sp,#8
        0x1fff3808:    4c1c        .L      LDR      r4,[pc,#112] ; [0x1fff387c] = 0x1fff59b4
        0x1fff380a:    7820         x      LDRB     r0,[r4,#0]
        0x1fff380c:    2807        .(      CMP      r0,#7
        0x1fff380e:    d833        3.      BHI      0x1fff3878 ; hal_watchdog_init + 116
        0x1fff3810:    481b        .H      LDR      r0,[pc,#108] ; [0x1fff3880] = 0x1fff5c01
        0x1fff3812:    7800        .x      LDRB     r0,[r0,#0]
        0x1fff3814:    4241        AB      RSBS     r1,r0,#0
        0x1fff3816:    4141        AA      ADCS     r1,r1,r0
        0x1fff3818:    0408        ..      LSLS     r0,r1,#16
        0x1fff381a:    2101        .!      MOVS     r1,#1
        0x1fff381c:    0409        ..      LSLS     r1,r1,#16
        0x1fff381e:    4a19        .J      LDR      r2,[pc,#100] ; [0x1fff3884] = 0x4000f03c
        0x1fff3820:    6813        .h      LDR      r3,[r2,#0]
        0x1fff3822:    438b        .C      BICS     r3,r3,r1
        0x1fff3824:    1818        ..      ADDS     r0,r3,r0
        0x1fff3826:    6010        .`      STR      r0,[r2,#0]
        0x1fff3828:    2025        %       MOVS     r0,#0x25
        0x1fff382a:    f7fefb79    ..y.    BL       hal_clk_gate_enable ; 0x1fff1f20
        0x1fff382e:    4916        .I      LDR      r1,[pc,#88] ; [0x1fff3888] = 0x1fff5938
        0x1fff3830:    680a        .h      LDR      r2,[r1,#0]
        0x1fff3832:    2020                MOVS     r0,#0x20
        0x1fff3834:    4302        .C      ORRS     r2,r2,r0
        0x1fff3836:    600a        .`      STR      r2,[r1,#0]
        0x1fff3838:    4914        .I      LDR      r1,[pc,#80] ; [0x1fff388c] = 0x4000000c
        0x1fff383a:    460a        .F      MOV      r2,r1
        0x1fff383c:    3a0c        .:      SUBS     r2,r2,#0xc
        0x1fff383e:    6813        .h      LDR      r3,[r2,#0]
        0x1fff3840:    075b        [.      LSLS     r3,r3,#29
        0x1fff3842:    d403        ..      BMI      0x1fff384c ; hal_watchdog_init + 72
        0x1fff3844:    6813        .h      LDR      r3,[r2,#0]
        0x1fff3846:    2504        .%      MOVS     r5,#4
        0x1fff3848:    431d        .C      ORRS     r5,r5,r3
        0x1fff384a:    6015        .`      STR      r5,[r2,#0]
        0x1fff384c:    680a        .h      LDR      r2,[r1,#0]
        0x1fff384e:    0752        R.      LSLS     r2,r2,#29
        0x1fff3850:    d403        ..      BMI      0x1fff385a ; hal_watchdog_init + 86
        0x1fff3852:    680a        .h      LDR      r2,[r1,#0]
        0x1fff3854:    2304        .#      MOVS     r3,#4
        0x1fff3856:    4313        .C      ORRS     r3,r3,r2
        0x1fff3858:    600b        .`      STR      r3,[r1,#0]
        0x1fff385a:    680a        .h      LDR      r2,[r1,#0]
        0x1fff385c:    4382        .C      BICS     r2,r2,r0
        0x1fff385e:    600a        .`      STR      r2,[r1,#0]
        0x1fff3860:    680a        .h      LDR      r2,[r1,#0]
        0x1fff3862:    4302        .C      ORRS     r2,r2,r0
        0x1fff3864:    600a        .`      STR      r2,[r1,#0]
        0x1fff3866:    480a        .H      LDR      r0,[pc,#40] ; [0x1fff3890] = 0x40002000
        0x1fff3868:    7d01        .}      LDRB     r1,[r0,#0x14]
        0x1fff386a:    9101        ..      STR      r1,[sp,#4]
        0x1fff386c:    7821        !x      LDRB     r1,[r4,#0]
        0x1fff386e:    6041        A`      STR      r1,[r0,#4]
        0x1fff3870:    211d        .!      MOVS     r1,#0x1d
        0x1fff3872:    7001        .p      STRB     r1,[r0,#0]
        0x1fff3874:    2176        v!      MOVS     r1,#0x76
        0x1fff3876:    60c1        .`      STR      r1,[r0,#0xc]
        0x1fff3878:    b002        ..      ADD      sp,sp,#8
        0x1fff387a:    bdb0        ..      POP      {r4,r5,r7,pc}
    $d.3
    __arm_cp.1_0
        0x1fff387c:    1fff59b4    .Y..    DCD    536828340
    __arm_cp.1_1
        0x1fff3880:    1fff5c01    .\..    DCD    536828929
    __arm_cp.1_2
        0x1fff3884:    4000f03c    <..@    DCD    1073803324
    __arm_cp.1_3
        0x1fff3888:    1fff5938    8Y..    DCD    536828216
    __arm_cp.1_4
        0x1fff388c:    4000000c    ...@    DCD    1073741836
    __arm_cp.1_5
        0x1fff3890:    40002000    . .@    DCD    1073750016
    $t.0
    osal_idle_task
        0x1fff3894:    b580        ..      PUSH     {r7,lr}
        0x1fff3896:    4803        .H      LDR      r0,[pc,#12] ; [0x1fff38a4] = 0x4000200c
        0x1fff3898:    2176        v!      MOVS     r1,#0x76
        0x1fff389a:    6001        .`      STR      r1,[r0,#0]
        0x1fff389c:    f7fffb96    ....    BL       $Ven$TT$L$$osal_pwrmgr_powerconserve0 ; 0x1fff2fcc
        0x1fff38a0:    bd80        ..      POP      {r7,pc}
        0x1fff38a2:    46c0        .F      MOV      r8,r8
    $d.1
    __arm_cp.0_0
        0x1fff38a4:    4000200c    . .@    DCD    1073750028
    $t.32
    hal_pwrmgr_enter_sleep_rtc_reset
        0x1fff38a8:    4604        .F      MOV      r4,r0
        0x1fff38aa:    f7fffaff    ....    BL       $Ven$TT$L$$drv_disable_irq ; 0x1fff2eac
        0x1fff38ae:    4d0b        .M      LDR      r5,[pc,#44] ; [0x1fff38dc] = 0x4000f01c
        0x1fff38b0:    6828        (h      LDR      r0,[r5,#0]
        0x1fff38b2:    2140        @!      MOVS     r1,#0x40
        0x1fff38b4:    4388        .C      BICS     r0,r0,r1
        0x1fff38b6:    6028        (`      STR      r0,[r5,#0]
        0x1fff38b8:    4620         F      MOV      r0,r4
        0x1fff38ba:    f7fffb8d    ....    BL       $Ven$TT$L$$config_RTC ; 0x1fff2fd8
        0x1fff38be:    201f        .       MOVS     r0,#0x1f
        0x1fff38c0:    0440        @.      LSLS     r0,r0,#17
        0x1fff38c2:    6829        )h      LDR      r1,[r5,#0]
        0x1fff38c4:    4381        .C      BICS     r1,r1,r0
        0x1fff38c6:    6029        )`      STR      r1,[r5,#0]
        0x1fff38c8:    4805        .H      LDR      r0,[pc,#20] ; [0x1fff38e0] = 0x4000f0c0
        0x1fff38ca:    2100        .!      MOVS     r1,#0
        0x1fff38cc:    6041        A`      STR      r1,[r0,#4]
        0x1fff38ce:    2104        .!      MOVS     r1,#4
        0x1fff38d0:    6001        .`      STR      r1,[r0,#0]
        0x1fff38d2:    2001        .       MOVS     r0,#1
        0x1fff38d4:    f7fffb86    ....    BL       $Ven$TT$L$$enter_sleep_off_mode ; 0x1fff2fe4
        0x1fff38d8:    e7fe        ..      B        0x1fff38d8 ; hal_pwrmgr_enter_sleep_rtc_reset + 48
        0x1fff38da:    46c0        .F      MOV      r8,r8
    $d.33
    __arm_cp.16_0
        0x1fff38dc:    4000f01c    ...@    DCD    1073803292
    __arm_cp.16_1
        0x1fff38e0:    4000f0c0    ...@    DCD    1073803456
    $t
    _section_sram_code_
    L2CAP_Fragment_SendDataPkt
        0x1fff38e4:    b510        ..      PUSH     {r4,lr}
        0x1fff38e6:    f7fffb83    ....    BL       $Ven$TT$L$$HCI_SendDataPkt ; 0x1fff2ff0
        0x1fff38ea:    2802        .(      CMP      r0,#2
        0x1fff38ec:    d005        ..      BEQ      0x1fff38fa ; L2CAP_Fragment_SendDataPkt + 22
        0x1fff38ee:    2807        .(      CMP      r0,#7
        0x1fff38f0:    d005        ..      BEQ      0x1fff38fe ; L2CAP_Fragment_SendDataPkt + 26
        0x1fff38f2:    2812        .(      CMP      r0,#0x12
        0x1fff38f4:    d100        ..      BNE      0x1fff38f8 ; L2CAP_Fragment_SendDataPkt + 20
        0x1fff38f6:    2002        .       MOVS     r0,#2
        0x1fff38f8:    bd10        ..      POP      {r4,pc}
        0x1fff38fa:    2014        .       MOVS     r0,#0x14
        0x1fff38fc:    bd10        ..      POP      {r4,pc}
        0x1fff38fe:    4922        "I      LDR      r1,[pc,#136] ; [0x1fff3988] = 0x1fff5b04
        0x1fff3900:    2004        .       MOVS     r0,#4
        0x1fff3902:    6b0a        .k      LDR      r2,[r1,#0x30]
        0x1fff3904:    1c52        R.      ADDS     r2,r2,#1
        0x1fff3906:    630a        .c      STR      r2,[r1,#0x30]
        0x1fff3908:    bd10        ..      POP      {r4,pc}
    l2capSegmentBuffToLinkLayer
        0x1fff390a:    b5f8        ..      PUSH     {r3-r7,lr}
        0x1fff390c:    2600        .&      MOVS     r6,#0
        0x1fff390e:    460c        .F      MOV      r4,r1
        0x1fff3910:    460d        .F      MOV      r5,r1
        0x1fff3912:    4607        .F      MOV      r7,r0
        0x1fff3914:    3440        @4      ADDS     r4,r4,#0x40
        0x1fff3916:    e01f        ..      B        0x1fff3958 ; l2capSegmentBuffToLinkLayer + 78
        0x1fff3918:    7c60        `|      LDRB     r0,[r4,#0x11]
        0x1fff391a:    00c1        ..      LSLS     r1,r0,#3
        0x1fff391c:    194a        J.      ADDS     r2,r1,r5
        0x1fff391e:    6853        Sh      LDR      r3,[r2,#4]
        0x1fff3920:    5c6a        j\      LDRB     r2,[r5,r1]
        0x1fff3922:    2800        .(      CMP      r0,#0
        0x1fff3924:    d001        ..      BEQ      0x1fff392a ; l2capSegmentBuffToLinkLayer + 32
        0x1fff3926:    2101        .!      MOVS     r1,#1
        0x1fff3928:    e000        ..      B        0x1fff392c ; l2capSegmentBuffToLinkLayer + 34
        0x1fff392a:    2100        .!      MOVS     r1,#0
        0x1fff392c:    4638        8F      MOV      r0,r7
        0x1fff392e:    f7ffffd9    ....    BL       L2CAP_Fragment_SendDataPkt ; 0x1fff38e4
        0x1fff3932:    2800        .(      CMP      r0,#0
        0x1fff3934:    d002        ..      BEQ      0x1fff393c ; l2capSegmentBuffToLinkLayer + 50
        0x1fff3936:    2101        .!      MOVS     r1,#1
        0x1fff3938:    7621        !v      STRB     r1,[r4,#0x18]
        0x1fff393a:    bdf8        ..      POP      {r3-r7,pc}
        0x1fff393c:    7c60        `|      LDRB     r0,[r4,#0x11]
        0x1fff393e:    00c0        ..      LSLS     r0,r0,#3
        0x1fff3940:    1940        @.      ADDS     r0,r0,r5
        0x1fff3942:    6046        F`      STR      r6,[r0,#4]
        0x1fff3944:    7c60        `|      LDRB     r0,[r4,#0x11]
        0x1fff3946:    1c40        @.      ADDS     r0,r0,#1
        0x1fff3948:    7460        `t      STRB     r0,[r4,#0x11]
        0x1fff394a:    7c20         |      LDRB     r0,[r4,#0x10]
        0x1fff394c:    1e40        @.      SUBS     r0,r0,#1
        0x1fff394e:    7420         t      STRB     r0,[r4,#0x10]
        0x1fff3950:    480d        .H      LDR      r0,[pc,#52] ; [0x1fff3988] = 0x1fff5b04
        0x1fff3952:    6a01        .j      LDR      r1,[r0,#0x20]
        0x1fff3954:    1c49        I.      ADDS     r1,r1,#1
        0x1fff3956:    6201        .b      STR      r1,[r0,#0x20]
        0x1fff3958:    7c20         |      LDRB     r0,[r4,#0x10]
        0x1fff395a:    2800        .(      CMP      r0,#0
        0x1fff395c:    d1dc        ..      BNE      0x1fff3918 ; l2capSegmentBuffToLinkLayer + 14
        0x1fff395e:    7466        ft      STRB     r6,[r4,#0x11]
        0x1fff3960:    7626        &v      STRB     r6,[r4,#0x18]
        0x1fff3962:    bdf8        ..      POP      {r3-r7,pc}
    l2capPocessFragmentTxData
        0x1fff3964:    4a08        .J      LDR      r2,[pc,#32] ; [0x1fff3988] = 0x1fff5b04
        0x1fff3966:    215c        \!      MOVS     r1,#0x5c
        0x1fff3968:    4341        AC      MULS     r1,r0,r1
        0x1fff396a:    3a5c        \:      SUBS     r2,r2,#0x5c
        0x1fff396c:    b510        ..      PUSH     {r4,lr}
        0x1fff396e:    1889        ..      ADDS     r1,r1,r2
        0x1fff3970:    2258        X"      MOVS     r2,#0x58
        0x1fff3972:    5c52        R\      LDRB     r2,[r2,r1]
        0x1fff3974:    2a01        .*      CMP      r2,#1
        0x1fff3976:    d105        ..      BNE      0x1fff3984 ; l2capPocessFragmentTxData + 32
        0x1fff3978:    f7ffffc7    ....    BL       l2capSegmentBuffToLinkLayer ; 0x1fff390a
        0x1fff397c:    4802        .H      LDR      r0,[pc,#8] ; [0x1fff3988] = 0x1fff5b04
        0x1fff397e:    6a81        .j      LDR      r1,[r0,#0x28]
        0x1fff3980:    1c49        I.      ADDS     r1,r1,#1
        0x1fff3982:    6281        .b      STR      r1,[r0,#0x28]
        0x1fff3984:    bd10        ..      POP      {r4,pc}
    $d
        0x1fff3986:    0000        ..      DCW    0
        0x1fff3988:    1fff5b04    .[..    DCD    536828676
    $t
    i.HCI_LE_ConnUpdateCmd
    HCI_LE_ConnUpdateCmd
        0x1fff398c:    b5fe        ..      PUSH     {r1-r7,lr}
        0x1fff398e:    af08        ..      ADD      r7,sp,#0x20
        0x1fff3990:    cf70        p.      LDM      r7!,{r4-r6}
        0x1fff3992:    466f        oF      MOV      r7,sp
        0x1fff3994:    c770        p.      STM      r7!,{r4-r6}
        0x1fff3996:    f000f807    ....    BL       LL_ConnUpdate1 ; 0x1fff39a8
        0x1fff399a:    4902        .I      LDR      r1,[pc,#8] ; [0x1fff39a4] = 0x2013
        0x1fff399c:    f7fffb2e    ....    BL       $Ven$TT$L$$HCI_CommandStatusEvent ; 0x1fff2ffc
        0x1fff39a0:    2000        .       MOVS     r0,#0
        0x1fff39a2:    bdfe        ..      POP      {r1-r7,pc}
    $d
        0x1fff39a4:    00002013    . ..    DCD    8211
    $t
    i.LL_ConnUpdate1
    LL_ConnUpdate1
        0x1fff39a8:    b5ff        ..      PUSH     {r0-r7,lr}
        0x1fff39aa:    4604        .F      MOV      r4,r0
        0x1fff39ac:    4f35        5O      LDR      r7,[pc,#212] ; [0x1fff3a84] = 0x1fff0d30
        0x1fff39ae:    0100        ..      LSLS     r0,r0,#4
        0x1fff39b0:    19c0        ..      ADDS     r0,r0,r7
        0x1fff39b2:    7980        .y      LDRB     r0,[r0,#6]
        0x1fff39b4:    b081        ..      SUB      sp,sp,#4
        0x1fff39b6:    4615        .F      MOV      r5,r2
        0x1fff39b8:    2802        .(      CMP      r0,#2
        0x1fff39ba:    d002        ..      BEQ      0x1fff39c2 ; LL_ConnUpdate1 + 26
        0x1fff39bc:    200c        .       MOVS     r0,#0xc
        0x1fff39be:    b005        ..      ADD      sp,sp,#0x14
        0x1fff39c0:    bdf0        ..      POP      {r4-r7,pc}
        0x1fff39c2:    4a31        1J      LDR      r2,[pc,#196] ; [0x1fff3a88] = 0xc7b
        0x1fff39c4:    1f88        ..      SUBS     r0,r1,#6
        0x1fff39c6:    4290        .B      CMP      r0,r2
        0x1fff39c8:    d22e        ..      BCS      0x1fff3a28 ; LL_ConnUpdate1 + 128
        0x1fff39ca:    2d06        .-      CMP      r5,#6
        0x1fff39cc:    d32c        ,.      BCC      0x1fff3a28 ; LL_ConnUpdate1 + 128
        0x1fff39ce:    1d50        P.      ADDS     r0,r2,#5
        0x1fff39d0:    4285        .B      CMP      r5,r0
        0x1fff39d2:    d829        ).      BHI      0x1fff3a28 ; LL_ConnUpdate1 + 128
        0x1fff39d4:    428d        .B      CMP      r5,r1
        0x1fff39d6:    d327        '.      BCC      0x1fff3a28 ; LL_ConnUpdate1 + 128
        0x1fff39d8:    22ff        ."      MOVS     r2,#0xff
        0x1fff39da:    9904        ..      LDR      r1,[sp,#0x10]
        0x1fff39dc:    32f4        .2      ADDS     r2,r2,#0xf4
        0x1fff39de:    4291        .B      CMP      r1,r2
        0x1fff39e0:    d822        ".      BHI      0x1fff3a28 ; LL_ConnUpdate1 + 128
        0x1fff39e2:    990a        ..      LDR      r1,[sp,#0x28]
        0x1fff39e4:    290a        .)      CMP      r1,#0xa
        0x1fff39e6:    d31f        ..      BCC      0x1fff3a28 ; LL_ConnUpdate1 + 128
        0x1fff39e8:    4281        .B      CMP      r1,r0
        0x1fff39ea:    d81d        ..      BHI      0x1fff3a28 ; LL_ConnUpdate1 + 128
        0x1fff39ec:    4620         F      MOV      r0,r4
        0x1fff39ee:    f7fffb0b    ....    BL       $Ven$TT$L$$LL_ConnActive ; 0x1fff3008
        0x1fff39f2:    2800        .(      CMP      r0,#0
        0x1fff39f4:    d1e3        ..      BNE      0x1fff39be ; LL_ConnUpdate1 + 22
        0x1fff39f6:    20a1        .       MOVS     r0,#0xa1
        0x1fff39f8:    0080        ..      LSLS     r0,r0,#2
        0x1fff39fa:    4344        DC      MULS     r4,r0,r4
        0x1fff39fc:    4823        #H      LDR      r0,[pc,#140] ; [0x1fff3a8c] = 0x1fff0934
        0x1fff39fe:    6800        .h      LDR      r0,[r0,#0]
        0x1fff3a00:    1826        &.      ADDS     r6,r4,r0
        0x1fff3a02:    4634        4F      MOV      r4,r6
        0x1fff3a04:    3480        .4      ADDS     r4,r4,#0x80
        0x1fff3a06:    7be0        .{      LDRB     r0,[r4,#0xf]
        0x1fff3a08:    2800        .(      CMP      r0,#0
        0x1fff3a0a:    d002        ..      BEQ      0x1fff3a12 ; LL_ConnUpdate1 + 106
        0x1fff3a0c:    7ae0        .z      LDRB     r0,[r4,#0xb]
        0x1fff3a0e:    2800        .(      CMP      r0,#0
        0x1fff3a10:    d00c        ..      BEQ      0x1fff3a2c ; LL_ConnUpdate1 + 132
        0x1fff3a12:    7d20         }      LDRB     r0,[r4,#0x14]
        0x1fff3a14:    2801        .(      CMP      r0,#1
        0x1fff3a16:    d009        ..      BEQ      0x1fff3a2c ; LL_ConnUpdate1 + 132
        0x1fff3a18:    980a        ..      LDR      r0,[sp,#0x28]
        0x1fff3a1a:    00c1        ..      LSLS     r1,r0,#3
        0x1fff3a1c:    9804        ..      LDR      r0,[sp,#0x10]
        0x1fff3a1e:    1c40        @.      ADDS     r0,r0,#1
        0x1fff3a20:    4368        hC      MULS     r0,r5,r0
        0x1fff3a22:    0040        @.      LSLS     r0,r0,#1
        0x1fff3a24:    4281        .B      CMP      r1,r0
        0x1fff3a26:    d803        ..      BHI      0x1fff3a30 ; LL_ConnUpdate1 + 136
        0x1fff3a28:    2012        .       MOVS     r0,#0x12
        0x1fff3a2a:    e7c8        ..      B        0x1fff39be ; LL_ConnUpdate1 + 22
        0x1fff3a2c:    203a        :       MOVS     r0,#0x3a
        0x1fff3a2e:    e7c6        ..      B        0x1fff39be ; LL_ConnUpdate1 + 22
        0x1fff3a30:    7878        xx      LDRB     r0,[r7,#1]
        0x1fff3a32:    4f17        .O      LDR      r7,[pc,#92] ; [0x1fff3a90] = 0x1fff0e30
        0x1fff3a34:    2801        .(      CMP      r0,#1
        0x1fff3a36:    d90a        ..      BLS      0x1fff3a4e ; LL_ConnUpdate1 + 166
        0x1fff3a38:    0468        h.      LSLS     r0,r5,#17
        0x1fff3a3a:    88b9        ..      LDRH     r1,[r7,#4]
        0x1fff3a3c:    0c00        ..      LSRS     r0,r0,#16
        0x1fff3a3e:    4288        .B      CMP      r0,r1
        0x1fff3a40:    d303        ..      BCC      0x1fff3a4a ; LL_ConnUpdate1 + 162
        0x1fff3a42:    f7fffa15    ....    BL       $Ven$TT$L$$__aeabi_uidivmod ; 0x1fff2e70
        0x1fff3a46:    2900        .)      CMP      r1,#0
        0x1fff3a48:    d009        ..      BEQ      0x1fff3a5e ; LL_ConnUpdate1 + 182
        0x1fff3a4a:    203b        ;       MOVS     r0,#0x3b
        0x1fff3a4c:    e7b7        ..      B        0x1fff39be ; LL_ConnUpdate1 + 22
        0x1fff3a4e:    80bd        ..      STRH     r5,[r7,#4]
        0x1fff3a50:    8ef0        ..      LDRH     r0,[r6,#0x36]
        0x1fff3a52:    4910        .I      LDR      r1,[pc,#64] ; [0x1fff3a94] = 0x1fff0914
        0x1fff3a54:    0040        @.      LSLS     r0,r0,#1
        0x1fff3a56:    7809        .x      LDRB     r1,[r1,#0]
        0x1fff3a58:    f7fffa0a    ....    BL       $Ven$TT$L$$__aeabi_uidivmod ; 0x1fff2e70
        0x1fff3a5c:    60f8        .`      STR      r0,[r7,#0xc]
        0x1fff3a5e:    2002        .       MOVS     r0,#2
        0x1fff3a60:    7620         v      STRB     r0,[r4,#0x18]
        0x1fff3a62:    2000        .       MOVS     r0,#0
        0x1fff3a64:    8360        `.      STRH     r0,[r4,#0x1a]
        0x1fff3a66:    8f30        0.      LDRH     r0,[r6,#0x38]
        0x1fff3a68:    2100        .!      MOVS     r1,#0
        0x1fff3a6a:    1dc0        ..      ADDS     r0,r0,#7
        0x1fff3a6c:    82e0        ..      STRH     r0,[r4,#0x16]
        0x1fff3a6e:    83a5        ..      STRH     r5,[r4,#0x1c]
        0x1fff3a70:    9804        ..      LDR      r0,[sp,#0x10]
        0x1fff3a72:    83e0        ..      STRH     r0,[r4,#0x1e]
        0x1fff3a74:    980a        ..      LDR      r0,[sp,#0x28]
        0x1fff3a76:    8420         .      STRH     r0,[r4,#0x20]
        0x1fff3a78:    4630        0F      MOV      r0,r6
        0x1fff3a7a:    f7fffacb    ....    BL       $Ven$TT$L$$llEnqueueCtrlPkt ; 0x1fff3014
        0x1fff3a7e:    2000        .       MOVS     r0,#0
        0x1fff3a80:    e79d        ..      B        0x1fff39be ; LL_ConnUpdate1 + 22
    $d
        0x1fff3a82:    0000        ..      DCW    0
        0x1fff3a84:    1fff0d30    0...    DCD    536808752
        0x1fff3a88:    00000c7b    {...    DCD    3195
        0x1fff3a8c:    1fff0934    4...    DCD    536807732
        0x1fff3a90:    1fff0e30    0...    DCD    536809008
        0x1fff3a94:    1fff0914    ....    DCD    536807700
    $t
    i.LL_ENC_AES128_Encrypt1
    LL_ENC_AES128_Encrypt1
        0x1fff3a98:    b570        p.      PUSH     {r4-r6,lr}
        0x1fff3a9a:    2401        .$      MOVS     r4,#1
        0x1fff3a9c:    07a4        ..      LSLS     r4,r4,#30
        0x1fff3a9e:    68a3        .h      LDR      r3,[r4,#8]
        0x1fff3aa0:    2510        .%      MOVS     r5,#0x10
        0x1fff3aa2:    432b        +C      ORRS     r3,r3,r5
        0x1fff3aa4:    60a3        .`      STR      r3,[r4,#8]
        0x1fff3aa6:    f7fffabb    ....    BL       $Ven$TT$L$$LL_ENC_AES128_Encrypt0 ; 0x1fff3020
        0x1fff3aaa:    68a0        .h      LDR      r0,[r4,#8]
        0x1fff3aac:    43a8        .C      BICS     r0,r0,r5
        0x1fff3aae:    60a0        .`      STR      r0,[r4,#8]
        0x1fff3ab0:    bd70        p.      POP      {r4-r6,pc}
        0x1fff3ab2:    0000        ..      MOVS     r0,r0
    i.LL_ENC_Decrypt1
    LL_ENC_Decrypt1
        0x1fff3ab4:    b5ff        ..      PUSH     {r0-r7,lr}
        0x1fff3ab6:    4606        .F      MOV      r6,r0
        0x1fff3ab8:    2001        .       MOVS     r0,#1
        0x1fff3aba:    0780        ..      LSLS     r0,r0,#30
        0x1fff3abc:    6881        .h      LDR      r1,[r0,#8]
        0x1fff3abe:    b081        ..      SUB      sp,sp,#4
        0x1fff3ac0:    461d        .F      MOV      r5,r3
        0x1fff3ac2:    2210        ."      MOVS     r2,#0x10
        0x1fff3ac4:    4311        .C      ORRS     r1,r1,r2
        0x1fff3ac6:    6081        .`      STR      r1,[r0,#8]
        0x1fff3ac8:    4f55        UO      LDR      r7,[pc,#340] ; [0x1fff3c20] = 0x40040000
        0x1fff3aca:    2000        .       MOVS     r0,#0
        0x1fff3acc:    6038        8`      STR      r0,[r7,#0]
        0x1fff3ace:    4630        0F      MOV      r0,r6
        0x1fff3ad0:    30d7        .0      ADDS     r0,r0,#0xd7
        0x1fff3ad2:    f7fffaab    ....    BL       $Ven$TT$L$$LL_ENC_LoadKey ; 0x1fff302c
        0x1fff3ad6:    209d        .       MOVS     r0,#0x9d
        0x1fff3ad8:    0080        ..      LSLS     r0,r0,#2
        0x1fff3ada:    4634        4F      MOV      r4,r6
        0x1fff3adc:    5980        .Y      LDR      r0,[r0,r6]
        0x1fff3ade:    36ff        .6      ADDS     r6,r6,#0xff
        0x1fff3ae0:    34ca        .4      ADDS     r4,r4,#0xca
        0x1fff3ae2:    3601        .6      ADDS     r6,#1
        0x1fff3ae4:    2800        .(      CMP      r0,#0
        0x1fff3ae6:    6830        0h      LDR      r0,[r6,#0]
        0x1fff3ae8:    4622        "F      MOV      r2,r4
        0x1fff3aea:    d02c        ,.      BEQ      0x1fff3b46 ; LL_ENC_Decrypt1 + 146
        0x1fff3aec:    2101        .!      MOVS     r1,#1
        0x1fff3aee:    f7fffaa3    ....    BL       $Ven$TT$L$$LL_ENC_GenerateNonce ; 0x1fff3038
        0x1fff3af2:    4f4b        KO      LDR      r7,[pc,#300] ; [0x1fff3c20] = 0x40040000
        0x1fff3af4:    7820         x      LDRB     r0,[r4,#0]
        0x1fff3af6:    63f8        .c      STR      r0,[r7,#0x3c]
        0x1fff3af8:    1c64        d.      ADDS     r4,r4,#1
        0x1fff3afa:    4620         F      MOV      r0,r4
        0x1fff3afc:    f7fffaa2    ....    BL       $Ven$TT$L$$__aeabi_uread4 ; 0x1fff3044
        0x1fff3b00:    ba00        ..      REV      r0,r0
        0x1fff3b02:    0a00        ..      LSRS     r0,r0,#8
        0x1fff3b04:    78e1        .x      LDRB     r1,[r4,#3]
        0x1fff3b06:    0200        ..      LSLS     r0,r0,#8
        0x1fff3b08:    4308        .C      ORRS     r0,r0,r1
        0x1fff3b0a:    63b8        .c      STR      r0,[r7,#0x38]
        0x1fff3b0c:    1d24        $.      ADDS     r4,r4,#4
        0x1fff3b0e:    4620         F      MOV      r0,r4
        0x1fff3b10:    f7fffa98    ....    BL       $Ven$TT$L$$__aeabi_uread4 ; 0x1fff3044
        0x1fff3b14:    ba00        ..      REV      r0,r0
        0x1fff3b16:    0a00        ..      LSRS     r0,r0,#8
        0x1fff3b18:    78e1        .x      LDRB     r1,[r4,#3]
        0x1fff3b1a:    0200        ..      LSLS     r0,r0,#8
        0x1fff3b1c:    4308        .C      ORRS     r0,r0,r1
        0x1fff3b1e:    6378        xc      STR      r0,[r7,#0x34]
        0x1fff3b20:    1d24        $.      ADDS     r4,r4,#4
        0x1fff3b22:    4620         F      MOV      r0,r4
        0x1fff3b24:    f7fffa8e    ....    BL       $Ven$TT$L$$__aeabi_uread4 ; 0x1fff3044
        0x1fff3b28:    ba00        ..      REV      r0,r0
        0x1fff3b2a:    0a00        ..      LSRS     r0,r0,#8
        0x1fff3b2c:    78e1        .x      LDRB     r1,[r4,#3]
        0x1fff3b2e:    0200        ..      LSLS     r0,r0,#8
        0x1fff3b30:    4308        .C      ORRS     r0,r0,r1
        0x1fff3b32:    6338        8c      STR      r0,[r7,#0x30]
        0x1fff3b34:    9803        ..      LDR      r0,[sp,#0xc]
        0x1fff3b36:    9902        ..      LDR      r1,[sp,#8]
        0x1fff3b38:    0200        ..      LSLS     r0,r0,#8
        0x1fff3b3a:    4308        .C      ORRS     r0,r0,r1
        0x1fff3b3c:    60f8        .`      STR      r0,[r7,#0xc]
        0x1fff3b3e:    9f03        ..      LDR      r7,[sp,#0xc]
        0x1fff3b40:    2400        .$      MOVS     r4,#0
        0x1fff3b42:    1d3f        ?.      ADDS     r7,r7,#4
        0x1fff3b44:    e00e        ..      B        0x1fff3b64 ; LL_ENC_Decrypt1 + 176
        0x1fff3b46:    2100        .!      MOVS     r1,#0
        0x1fff3b48:    e7d1        ..      B        0x1fff3aee ; LL_ENC_Decrypt1 + 58
        0x1fff3b4a:    1928        (.      ADDS     r0,r5,r4
        0x1fff3b4c:    1c40        @.      ADDS     r0,r0,#1
        0x1fff3b4e:    f7fffa79    ..y.    BL       $Ven$TT$L$$__aeabi_uread4 ; 0x1fff3044
        0x1fff3b52:    0201        ..      LSLS     r1,r0,#8
        0x1fff3b54:    5d28        (]      LDRB     r0,[r5,r4]
        0x1fff3b56:    4301        .C      ORRS     r1,r1,r0
        0x1fff3b58:    4832        2H      LDR      r0,[pc,#200] ; [0x1fff3c24] = 0x40040100
        0x1fff3b5a:    1820         .      ADDS     r0,r4,r0
        0x1fff3b5c:    6001        .`      STR      r1,[r0,#0]
        0x1fff3b5e:    1d24        $.      ADDS     r4,r4,#4
        0x1fff3b60:    b2a4        ..      UXTH     r4,r4
        0x1fff3b62:    1f3f        ?.      SUBS     r7,r7,#4
        0x1fff3b64:    2f04        ./      CMP      r7,#4
        0x1fff3b66:    daf0        ..      BGE      0x1fff3b4a ; LL_ENC_Decrypt1 + 150
        0x1fff3b68:    2f03        ./      CMP      r7,#3
        0x1fff3b6a:    d004        ..      BEQ      0x1fff3b76 ; LL_ENC_Decrypt1 + 194
        0x1fff3b6c:    2f02        ./      CMP      r7,#2
        0x1fff3b6e:    d008        ..      BEQ      0x1fff3b82 ; LL_ENC_Decrypt1 + 206
        0x1fff3b70:    2f01        ./      CMP      r7,#1
        0x1fff3b72:    d00c        ..      BEQ      0x1fff3b8e ; LL_ENC_Decrypt1 + 218
        0x1fff3b74:    e011        ..      B        0x1fff3b9a ; LL_ENC_Decrypt1 + 230
        0x1fff3b76:    1928        (.      ADDS     r0,r5,r4
        0x1fff3b78:    f7fffa64    ..d.    BL       $Ven$TT$L$$__aeabi_uread4 ; 0x1fff3044
        0x1fff3b7c:    0201        ..      LSLS     r1,r0,#8
        0x1fff3b7e:    0a09        ..      LSRS     r1,r1,#8
        0x1fff3b80:    e006        ..      B        0x1fff3b90 ; LL_ENC_Decrypt1 + 220
        0x1fff3b82:    1929        ).      ADDS     r1,r5,r4
        0x1fff3b84:    7848        Hx      LDRB     r0,[r1,#1]
        0x1fff3b86:    780a        .x      LDRB     r2,[r1,#0]
        0x1fff3b88:    0201        ..      LSLS     r1,r0,#8
        0x1fff3b8a:    4311        .C      ORRS     r1,r1,r2
        0x1fff3b8c:    e000        ..      B        0x1fff3b90 ; LL_ENC_Decrypt1 + 220
        0x1fff3b8e:    5d29        )]      LDRB     r1,[r5,r4]
        0x1fff3b90:    4824        $H      LDR      r0,[pc,#144] ; [0x1fff3c24] = 0x40040100
        0x1fff3b92:    1820         .      ADDS     r0,r4,r0
        0x1fff3b94:    6001        .`      STR      r1,[r0,#0]
        0x1fff3b96:    1d24        $.      ADDS     r4,r4,#4
        0x1fff3b98:    b2a4        ..      UXTH     r4,r4
        0x1fff3b9a:    2100        .!      MOVS     r1,#0
        0x1fff3b9c:    4f21        !O      LDR      r7,[pc,#132] ; [0x1fff3c24] = 0x40040100
        0x1fff3b9e:    e002        ..      B        0x1fff3ba6 ; LL_ENC_Decrypt1 + 242
        0x1fff3ba0:    19e0        ..      ADDS     r0,r4,r7
        0x1fff3ba2:    6001        .`      STR      r1,[r0,#0]
        0x1fff3ba4:    1d24        $.      ADDS     r4,r4,#4
        0x1fff3ba6:    2cff        .,      CMP      r4,#0xff
        0x1fff3ba8:    ddfa        ..      BLE      0x1fff3ba0 ; LL_ENC_Decrypt1 + 236
        0x1fff3baa:    481d        .H      LDR      r0,[pc,#116] ; [0x1fff3c20] = 0x40040000
        0x1fff3bac:    4a1e        .J      LDR      r2,[pc,#120] ; [0x1fff3c28] = 0xf08
        0x1fff3bae:    6042        B`      STR      r2,[r0,#4]
        0x1fff3bb0:    220f        ."      MOVS     r2,#0xf
        0x1fff3bb2:    6102        .a      STR      r2,[r0,#0x10]
        0x1fff3bb4:    2201        ."      MOVS     r2,#1
        0x1fff3bb6:    6002        .`      STR      r2,[r0,#0]
        0x1fff3bb8:    6942        Bi      LDR      r2,[r0,#0x14]
        0x1fff3bba:    2a00        .*      CMP      r2,#0
        0x1fff3bbc:    d0fc        ..      BEQ      0x1fff3bb8 ; LL_ENC_Decrypt1 + 260
        0x1fff3bbe:    6942        Bi      LDR      r2,[r0,#0x14]
        0x1fff3bc0:    0793        ..      LSLS     r3,r2,#30
        0x1fff3bc2:    d401        ..      BMI      0x1fff3bc8 ; LL_ENC_Decrypt1 + 276
        0x1fff3bc4:    0752        R.      LSLS     r2,r2,#29
        0x1fff3bc6:    d408        ..      BMI      0x1fff3bda ; LL_ENC_Decrypt1 + 294
        0x1fff3bc8:    2001        .       MOVS     r0,#1
        0x1fff3bca:    0780        ..      LSLS     r0,r0,#30
        0x1fff3bcc:    6882        .h      LDR      r2,[r0,#8]
        0x1fff3bce:    2110        .!      MOVS     r1,#0x10
        0x1fff3bd0:    438a        .C      BICS     r2,r2,r1
        0x1fff3bd2:    6082        .`      STR      r2,[r0,#8]
        0x1fff3bd4:    2000        .       MOVS     r0,#0
        0x1fff3bd6:    b005        ..      ADD      sp,sp,#0x14
        0x1fff3bd8:    bdf0        ..      POP      {r4-r7,pc}
        0x1fff3bda:    6001        .`      STR      r1,[r0,#0]
        0x1fff3bdc:    2000        .       MOVS     r0,#0
        0x1fff3bde:    9a03        ..      LDR      r2,[sp,#0xc]
        0x1fff3be0:    e011        ..      B        0x1fff3c06 ; LL_ENC_Decrypt1 + 338
        0x1fff3be2:    19c1        ..      ADDS     r1,r0,r7
        0x1fff3be4:    6809        .h      LDR      r1,[r1,#0]
        0x1fff3be6:    5429        )T      STRB     r1,[r5,r0]
        0x1fff3be8:    1c40        @.      ADDS     r0,r0,#1
        0x1fff3bea:    b280        ..      UXTH     r0,r0
        0x1fff3bec:    0a0b        ..      LSRS     r3,r1,#8
        0x1fff3bee:    542b        +T      STRB     r3,[r5,r0]
        0x1fff3bf0:    1c40        @.      ADDS     r0,r0,#1
        0x1fff3bf2:    0c0b        ..      LSRS     r3,r1,#16
        0x1fff3bf4:    b280        ..      UXTH     r0,r0
        0x1fff3bf6:    542b        +T      STRB     r3,[r5,r0]
        0x1fff3bf8:    1c40        @.      ADDS     r0,r0,#1
        0x1fff3bfa:    b280        ..      UXTH     r0,r0
        0x1fff3bfc:    0e09        ..      LSRS     r1,r1,#24
        0x1fff3bfe:    5429        )T      STRB     r1,[r5,r0]
        0x1fff3c00:    1c40        @.      ADDS     r0,r0,#1
        0x1fff3c02:    b280        ..      UXTH     r0,r0
        0x1fff3c04:    1f12        ..      SUBS     r2,r2,#4
        0x1fff3c06:    2a00        .*      CMP      r2,#0
        0x1fff3c08:    dceb        ..      BGT      0x1fff3be2 ; LL_ENC_Decrypt1 + 302
        0x1fff3c0a:    6830        0h      LDR      r0,[r6,#0]
        0x1fff3c0c:    1c40        @.      ADDS     r0,r0,#1
        0x1fff3c0e:    6030        0`      STR      r0,[r6,#0]
        0x1fff3c10:    2001        .       MOVS     r0,#1
        0x1fff3c12:    0780        ..      LSLS     r0,r0,#30
        0x1fff3c14:    6882        .h      LDR      r2,[r0,#8]
        0x1fff3c16:    2110        .!      MOVS     r1,#0x10
        0x1fff3c18:    438a        .C      BICS     r2,r2,r1
        0x1fff3c1a:    6082        .`      STR      r2,[r0,#8]
        0x1fff3c1c:    2001        .       MOVS     r0,#1
        0x1fff3c1e:    e7da        ..      B        0x1fff3bd6 ; LL_ENC_Decrypt1 + 290
    $d
        0x1fff3c20:    40040000    ...@    DCD    1074003968
        0x1fff3c24:    40040100    ...@    DCD    1074004224
        0x1fff3c28:    00000f08    ....    DCD    3848
    $t
    i.LL_ENC_Encrypt1
    LL_ENC_Encrypt1
        0x1fff3c2c:    b5ff        ..      PUSH     {r0-r7,lr}
        0x1fff3c2e:    4605        .F      MOV      r5,r0
        0x1fff3c30:    2001        .       MOVS     r0,#1
        0x1fff3c32:    0780        ..      LSLS     r0,r0,#30
        0x1fff3c34:    6881        .h      LDR      r1,[r0,#8]
        0x1fff3c36:    b081        ..      SUB      sp,sp,#4
        0x1fff3c38:    461e        .F      MOV      r6,r3
        0x1fff3c3a:    2210        ."      MOVS     r2,#0x10
        0x1fff3c3c:    4311        .C      ORRS     r1,r1,r2
        0x1fff3c3e:    6081        .`      STR      r1,[r0,#8]
        0x1fff3c40:    4f50        PO      LDR      r7,[pc,#320] ; [0x1fff3d84] = 0x40040000
        0x1fff3c42:    2000        .       MOVS     r0,#0
        0x1fff3c44:    6038        8`      STR      r0,[r7,#0]
        0x1fff3c46:    4628        (F      MOV      r0,r5
        0x1fff3c48:    30d7        .0      ADDS     r0,r0,#0xd7
        0x1fff3c4a:    f7fff9ef    ....    BL       $Ven$TT$L$$LL_ENC_LoadKey ; 0x1fff302c
        0x1fff3c4e:    209d        .       MOVS     r0,#0x9d
        0x1fff3c50:    0080        ..      LSLS     r0,r0,#2
        0x1fff3c52:    462c        ,F      MOV      r4,r5
        0x1fff3c54:    5940        @Y      LDR      r0,[r0,r5]
        0x1fff3c56:    34ca        .4      ADDS     r4,r4,#0xca
        0x1fff3c58:    3580        .5      ADDS     r5,r5,#0x80
        0x1fff3c5a:    2800        .(      CMP      r0,#0
        0x1fff3c5c:    6fe8        .o      LDR      r0,[r5,#0x7c]
        0x1fff3c5e:    4622        "F      MOV      r2,r4
        0x1fff3c60:    d02b        +.      BEQ      0x1fff3cba ; LL_ENC_Encrypt1 + 142
        0x1fff3c62:    2100        .!      MOVS     r1,#0
        0x1fff3c64:    f7fff9e8    ....    BL       $Ven$TT$L$$LL_ENC_GenerateNonce ; 0x1fff3038
        0x1fff3c68:    4f46        FO      LDR      r7,[pc,#280] ; [0x1fff3d84] = 0x40040000
        0x1fff3c6a:    7820         x      LDRB     r0,[r4,#0]
        0x1fff3c6c:    63f8        .c      STR      r0,[r7,#0x3c]
        0x1fff3c6e:    1c64        d.      ADDS     r4,r4,#1
        0x1fff3c70:    4620         F      MOV      r0,r4
        0x1fff3c72:    f7fff9e7    ....    BL       $Ven$TT$L$$__aeabi_uread4 ; 0x1fff3044
        0x1fff3c76:    ba00        ..      REV      r0,r0
        0x1fff3c78:    0a00        ..      LSRS     r0,r0,#8
        0x1fff3c7a:    78e1        .x      LDRB     r1,[r4,#3]
        0x1fff3c7c:    0200        ..      LSLS     r0,r0,#8
        0x1fff3c7e:    4308        .C      ORRS     r0,r0,r1
        0x1fff3c80:    63b8        .c      STR      r0,[r7,#0x38]
        0x1fff3c82:    1d24        $.      ADDS     r4,r4,#4
        0x1fff3c84:    4620         F      MOV      r0,r4
        0x1fff3c86:    f7fff9dd    ....    BL       $Ven$TT$L$$__aeabi_uread4 ; 0x1fff3044
        0x1fff3c8a:    ba00        ..      REV      r0,r0
        0x1fff3c8c:    0a00        ..      LSRS     r0,r0,#8
        0x1fff3c8e:    78e1        .x      LDRB     r1,[r4,#3]
        0x1fff3c90:    0200        ..      LSLS     r0,r0,#8
        0x1fff3c92:    4308        .C      ORRS     r0,r0,r1
        0x1fff3c94:    6378        xc      STR      r0,[r7,#0x34]
        0x1fff3c96:    1d24        $.      ADDS     r4,r4,#4
        0x1fff3c98:    4620         F      MOV      r0,r4
        0x1fff3c9a:    f7fff9d3    ....    BL       $Ven$TT$L$$__aeabi_uread4 ; 0x1fff3044
        0x1fff3c9e:    ba00        ..      REV      r0,r0
        0x1fff3ca0:    0a00        ..      LSRS     r0,r0,#8
        0x1fff3ca2:    78e1        .x      LDRB     r1,[r4,#3]
        0x1fff3ca4:    0200        ..      LSLS     r0,r0,#8
        0x1fff3ca6:    4308        .C      ORRS     r0,r0,r1
        0x1fff3ca8:    6338        8c      STR      r0,[r7,#0x30]
        0x1fff3caa:    9803        ..      LDR      r0,[sp,#0xc]
        0x1fff3cac:    9902        ..      LDR      r1,[sp,#8]
        0x1fff3cae:    0200        ..      LSLS     r0,r0,#8
        0x1fff3cb0:    4308        .C      ORRS     r0,r0,r1
        0x1fff3cb2:    60f8        .`      STR      r0,[r7,#0xc]
        0x1fff3cb4:    2400        .$      MOVS     r4,#0
        0x1fff3cb6:    9f03        ..      LDR      r7,[sp,#0xc]
        0x1fff3cb8:    e00e        ..      B        0x1fff3cd8 ; LL_ENC_Encrypt1 + 172
        0x1fff3cba:    2101        .!      MOVS     r1,#1
        0x1fff3cbc:    e7d2        ..      B        0x1fff3c64 ; LL_ENC_Encrypt1 + 56
        0x1fff3cbe:    1930        0.      ADDS     r0,r6,r4
        0x1fff3cc0:    1c40        @.      ADDS     r0,r0,#1
        0x1fff3cc2:    f7fff9bf    ....    BL       $Ven$TT$L$$__aeabi_uread4 ; 0x1fff3044
        0x1fff3cc6:    0201        ..      LSLS     r1,r0,#8
        0x1fff3cc8:    5d30        0]      LDRB     r0,[r6,r4]
        0x1fff3cca:    4301        .C      ORRS     r1,r1,r0
        0x1fff3ccc:    482e        .H      LDR      r0,[pc,#184] ; [0x1fff3d88] = 0x40040100
        0x1fff3cce:    1820         .      ADDS     r0,r4,r0
        0x1fff3cd0:    6001        .`      STR      r1,[r0,#0]
        0x1fff3cd2:    1d24        $.      ADDS     r4,r4,#4
        0x1fff3cd4:    b2a4        ..      UXTH     r4,r4
        0x1fff3cd6:    1f3f        ?.      SUBS     r7,r7,#4
        0x1fff3cd8:    2f04        ./      CMP      r7,#4
        0x1fff3cda:    daf0        ..      BGE      0x1fff3cbe ; LL_ENC_Encrypt1 + 146
        0x1fff3cdc:    2f03        ./      CMP      r7,#3
        0x1fff3cde:    d004        ..      BEQ      0x1fff3cea ; LL_ENC_Encrypt1 + 190
        0x1fff3ce0:    2f02        ./      CMP      r7,#2
        0x1fff3ce2:    d008        ..      BEQ      0x1fff3cf6 ; LL_ENC_Encrypt1 + 202
        0x1fff3ce4:    2f01        ./      CMP      r7,#1
        0x1fff3ce6:    d00f        ..      BEQ      0x1fff3d08 ; LL_ENC_Encrypt1 + 220
        0x1fff3ce8:    e014        ..      B        0x1fff3d14 ; LL_ENC_Encrypt1 + 232
        0x1fff3cea:    1930        0.      ADDS     r0,r6,r4
        0x1fff3cec:    f7fff9aa    ....    BL       $Ven$TT$L$$__aeabi_uread4 ; 0x1fff3044
        0x1fff3cf0:    0201        ..      LSLS     r1,r0,#8
        0x1fff3cf2:    0a09        ..      LSRS     r1,r1,#8
        0x1fff3cf4:    e009        ..      B        0x1fff3d0a ; LL_ENC_Encrypt1 + 222
        0x1fff3cf6:    1931        1.      ADDS     r1,r6,r4
        0x1fff3cf8:    7848        Hx      LDRB     r0,[r1,#1]
        0x1fff3cfa:    7809        .x      LDRB     r1,[r1,#0]
        0x1fff3cfc:    0200        ..      LSLS     r0,r0,#8
        0x1fff3cfe:    4308        .C      ORRS     r0,r0,r1
        0x1fff3d00:    4921        !I      LDR      r1,[pc,#132] ; [0x1fff3d88] = 0x40040100
        0x1fff3d02:    1861        a.      ADDS     r1,r4,r1
        0x1fff3d04:    6008        .`      STR      r0,[r1,#0]
        0x1fff3d06:    e003        ..      B        0x1fff3d10 ; LL_ENC_Encrypt1 + 228
        0x1fff3d08:    5d31        1]      LDRB     r1,[r6,r4]
        0x1fff3d0a:    481f        .H      LDR      r0,[pc,#124] ; [0x1fff3d88] = 0x40040100
        0x1fff3d0c:    1820         .      ADDS     r0,r4,r0
        0x1fff3d0e:    6001        .`      STR      r1,[r0,#0]
        0x1fff3d10:    1d24        $.      ADDS     r4,r4,#4
        0x1fff3d12:    b2a4        ..      UXTH     r4,r4
        0x1fff3d14:    2100        .!      MOVS     r1,#0
        0x1fff3d16:    4b1c        .K      LDR      r3,[pc,#112] ; [0x1fff3d88] = 0x40040100
        0x1fff3d18:    e002        ..      B        0x1fff3d20 ; LL_ENC_Encrypt1 + 244
        0x1fff3d1a:    18e0        ..      ADDS     r0,r4,r3
        0x1fff3d1c:    6001        .`      STR      r1,[r0,#0]
        0x1fff3d1e:    1d24        $.      ADDS     r4,r4,#4
        0x1fff3d20:    2cff        .,      CMP      r4,#0xff
        0x1fff3d22:    ddfa        ..      BLE      0x1fff3d1a ; LL_ENC_Encrypt1 + 238
        0x1fff3d24:    220f        ."      MOVS     r2,#0xf
        0x1fff3d26:    4817        .H      LDR      r0,[pc,#92] ; [0x1fff3d84] = 0x40040000
        0x1fff3d28:    0212        ..      LSLS     r2,r2,#8
        0x1fff3d2a:    6042        B`      STR      r2,[r0,#4]
        0x1fff3d2c:    220f        ."      MOVS     r2,#0xf
        0x1fff3d2e:    6102        .a      STR      r2,[r0,#0x10]
        0x1fff3d30:    2201        ."      MOVS     r2,#1
        0x1fff3d32:    6002        .`      STR      r2,[r0,#0]
        0x1fff3d34:    6942        Bi      LDR      r2,[r0,#0x14]
        0x1fff3d36:    2a00        .*      CMP      r2,#0
        0x1fff3d38:    d0fc        ..      BEQ      0x1fff3d34 ; LL_ENC_Encrypt1 + 264
        0x1fff3d3a:    6001        .`      STR      r1,[r0,#0]
        0x1fff3d3c:    9a03        ..      LDR      r2,[sp,#0xc]
        0x1fff3d3e:    2000        .       MOVS     r0,#0
        0x1fff3d40:    1d12        ..      ADDS     r2,r2,#4
        0x1fff3d42:    e011        ..      B        0x1fff3d68 ; LL_ENC_Encrypt1 + 316
        0x1fff3d44:    18c1        ..      ADDS     r1,r0,r3
        0x1fff3d46:    6809        .h      LDR      r1,[r1,#0]
        0x1fff3d48:    5431        1T      STRB     r1,[r6,r0]
        0x1fff3d4a:    1c40        @.      ADDS     r0,r0,#1
        0x1fff3d4c:    b280        ..      UXTH     r0,r0
        0x1fff3d4e:    0a0c        ..      LSRS     r4,r1,#8
        0x1fff3d50:    5434        4T      STRB     r4,[r6,r0]
        0x1fff3d52:    1c40        @.      ADDS     r0,r0,#1
        0x1fff3d54:    0c0c        ..      LSRS     r4,r1,#16
        0x1fff3d56:    b280        ..      UXTH     r0,r0
        0x1fff3d58:    5434        4T      STRB     r4,[r6,r0]
        0x1fff3d5a:    1c40        @.      ADDS     r0,r0,#1
        0x1fff3d5c:    b280        ..      UXTH     r0,r0
        0x1fff3d5e:    0e09        ..      LSRS     r1,r1,#24
        0x1fff3d60:    5431        1T      STRB     r1,[r6,r0]
        0x1fff3d62:    1c40        @.      ADDS     r0,r0,#1
        0x1fff3d64:    b280        ..      UXTH     r0,r0
        0x1fff3d66:    1f12        ..      SUBS     r2,r2,#4
        0x1fff3d68:    2a00        .*      CMP      r2,#0
        0x1fff3d6a:    dceb        ..      BGT      0x1fff3d44 ; LL_ENC_Encrypt1 + 280
        0x1fff3d6c:    6fe8        .o      LDR      r0,[r5,#0x7c]
        0x1fff3d6e:    1c40        @.      ADDS     r0,r0,#1
        0x1fff3d70:    67e8        .g      STR      r0,[r5,#0x7c]
        0x1fff3d72:    2001        .       MOVS     r0,#1
        0x1fff3d74:    0780        ..      LSLS     r0,r0,#30
        0x1fff3d76:    6882        .h      LDR      r2,[r0,#8]
        0x1fff3d78:    2110        .!      MOVS     r1,#0x10
        0x1fff3d7a:    438a        .C      BICS     r2,r2,r1
        0x1fff3d7c:    6082        .`      STR      r2,[r0,#8]
        0x1fff3d7e:    b005        ..      ADD      sp,sp,#0x14
        0x1fff3d80:    bdf0        ..      POP      {r4-r7,pc}
    $d
        0x1fff3d82:    0000        ..      DCW    0
        0x1fff3d84:    40040000    ...@    DCD    1074003968
        0x1fff3d88:    40040100    ...@    DCD    1074004224
    $t
    i.LL_IRQHandler1
    LL_IRQHandler1
        0x1fff3d8c:    b5f8        ..      PUSH     {r3-r7,lr}
        0x1fff3d8e:    f7fff95f    .._.    BL       $Ven$TT$L$$read_current_fine_time ; 0x1fff3050
        0x1fff3d92:    4956        VI      LDR      r1,[pc,#344] ; [0x1fff3eec] = 0x1fff099c
        0x1fff3d94:    6008        .`      STR      r0,[r1,#0]
        0x1fff3d96:    2004        .       MOVS     r0,#4
        0x1fff3d98:    f7fff960    ..`.    BL       $Ven$TT$L$$ll_debug_output ; 0x1fff305c
        0x1fff3d9c:    f7fff964    ..d.    BL       $Ven$TT$L$$ll_hw_get_irq_status ; 0x1fff3068
        0x1fff3da0:    4606        .F      MOV      r6,r0
        0x1fff3da2:    07c0        ..      LSLS     r0,r0,#31
        0x1fff3da4:    d015        ..      BEQ      0x1fff3dd2 ; LL_IRQHandler1 + 70
        0x1fff3da6:    4952        RI      LDR      r1,[pc,#328] ; [0x1fff3ef0] = 0x1fff0998
        0x1fff3da8:    2000        .       MOVS     r0,#0
        0x1fff3daa:    6008        .`      STR      r0,[r1,#0]
        0x1fff3dac:    4851        QH      LDR      r0,[pc,#324] ; [0x1fff3ef4] = 0x1fff0990
        0x1fff3dae:    7800        .x      LDRB     r0,[r0,#0]
        0x1fff3db0:    2801        .(      CMP      r0,#1
        0x1fff3db2:    d011        ..      BEQ      0x1fff3dd8 ; LL_IRQHandler1 + 76
        0x1fff3db4:    2803        .(      CMP      r0,#3
        0x1fff3db6:    d013        ..      BEQ      0x1fff3de0 ; LL_IRQHandler1 + 84
        0x1fff3db8:    2804        .(      CMP      r0,#4
        0x1fff3dba:    d015        ..      BEQ      0x1fff3de8 ; LL_IRQHandler1 + 92
        0x1fff3dbc:    2802        .(      CMP      r0,#2
        0x1fff3dbe:    d017        ..      BEQ      0x1fff3df0 ; LL_IRQHandler1 + 100
        0x1fff3dc0:    2805        .(      CMP      r0,#5
        0x1fff3dc2:    d019        ..      BEQ      0x1fff3df8 ; LL_IRQHandler1 + 108
        0x1fff3dc4:    f7fff956    ..V.    BL       $Ven$TT$L$$ll_hw_get_tr_mode ; 0x1fff3074
        0x1fff3dc8:    4f4b        KO      LDR      r7,[pc,#300] ; [0x1fff3ef8] = 0x1fff091c
        0x1fff3dca:    4604        .F      MOV      r4,r0
        0x1fff3dcc:    2801        .(      CMP      r0,#1
        0x1fff3dce:    d01a        ..      BEQ      0x1fff3e06 ; LL_IRQHandler1 + 122
        0x1fff3dd0:    e01e        ..      B        0x1fff3e10 ; LL_IRQHandler1 + 132
        0x1fff3dd2:    f7fff955    ..U.    BL       $Ven$TT$L$$ll_hw_clr_irq ; 0x1fff3080
        0x1fff3dd6:    bdf8        ..      POP      {r3-r7,pc}
        0x1fff3dd8:    4630        0F      MOV      r0,r6
        0x1fff3dda:    f7fff957    ..W.    BL       $Ven$TT$L$$ll_processExtAdvIRQ ; 0x1fff308c
        0x1fff3dde:    e00e        ..      B        0x1fff3dfe ; LL_IRQHandler1 + 114
        0x1fff3de0:    4630        0F      MOV      r0,r6
        0x1fff3de2:    f7fff959    ..Y.    BL       $Ven$TT$L$$ll_processExtScanIRQ ; 0x1fff3098
        0x1fff3de6:    e00a        ..      B        0x1fff3dfe ; LL_IRQHandler1 + 114
        0x1fff3de8:    4630        0F      MOV      r0,r6
        0x1fff3dea:    f7fff95b    ..[.    BL       $Ven$TT$L$$ll_processExtInitIRQ ; 0x1fff30a4
        0x1fff3dee:    e006        ..      B        0x1fff3dfe ; LL_IRQHandler1 + 114
        0x1fff3df0:    4630        0F      MOV      r0,r6
        0x1fff3df2:    f7fff95d    ..].    BL       $Ven$TT$L$$ll_processPrdAdvIRQ ; 0x1fff30b0
        0x1fff3df6:    e002        ..      B        0x1fff3dfe ; LL_IRQHandler1 + 114
        0x1fff3df8:    4630        0F      MOV      r0,r6
        0x1fff3dfa:    f7fff95f    .._.    BL       $Ven$TT$L$$ll_processPrdScanIRQ ; 0x1fff30bc
        0x1fff3dfe:    b240        @.      SXTB     r0,r0
        0x1fff3e00:    2801        .(      CMP      r0,#1
        0x1fff3e02:    d0e8        ..      BEQ      0x1fff3dd6 ; LL_IRQHandler1 + 74
        0x1fff3e04:    e04f        O.      B        0x1fff3ea6 ; LL_IRQHandler1 + 282
        0x1fff3e06:    7838        8x      LDRB     r0,[r7,#0]
        0x1fff3e08:    2805        .(      CMP      r0,#5
        0x1fff3e0a:    d00b        ..      BEQ      0x1fff3e24 ; LL_IRQHandler1 + 152
        0x1fff3e0c:    2806        .(      CMP      r0,#6
        0x1fff3e0e:    d009        ..      BEQ      0x1fff3e24 ; LL_IRQHandler1 + 152
        0x1fff3e10:    483a        :H      LDR      r0,[pc,#232] ; [0x1fff3efc] = 0x1fff0923
        0x1fff3e12:    4d3b        ;M      LDR      r5,[pc,#236] ; [0x1fff3f00] = 0x1fff0ba6
        0x1fff3e14:    7800        .x      LDRB     r0,[r0,#0]
        0x1fff3e16:    2802        .(      CMP      r0,#2
        0x1fff3e18:    d008        ..      BEQ      0x1fff3e2c ; LL_IRQHandler1 + 160
        0x1fff3e1a:    2805        .(      CMP      r0,#5
        0x1fff3e1c:    d006        ..      BEQ      0x1fff3e2c ; LL_IRQHandler1 + 160
        0x1fff3e1e:    2c02        .,      CMP      r4,#2
        0x1fff3e20:    d00e        ..      BEQ      0x1fff3e40 ; LL_IRQHandler1 + 180
        0x1fff3e22:    e005        ..      B        0x1fff3e30 ; LL_IRQHandler1 + 164
        0x1fff3e24:    4630        0F      MOV      r0,r6
        0x1fff3e26:    f000fed3    ....    BL       ll_processBasicIRQ_SRX ; 0x1fff4bd0
        0x1fff3e2a:    e03c        <.      B        0x1fff3ea6 ; LL_IRQHandler1 + 282
        0x1fff3e2c:    2c02        .,      CMP      r4,#2
        0x1fff3e2e:    d002        ..      BEQ      0x1fff3e36 ; LL_IRQHandler1 + 170
        0x1fff3e30:    2c01        .,      CMP      r4,#1
        0x1fff3e32:    d011        ..      BEQ      0x1fff3e58 ; LL_IRQHandler1 + 204
        0x1fff3e34:    e014        ..      B        0x1fff3e60 ; LL_IRQHandler1 + 212
        0x1fff3e36:    7ba8        .{      LDRB     r0,[r5,#0xe]
        0x1fff3e38:    2800        .(      CMP      r0,#0
        0x1fff3e3a:    d005        ..      BEQ      0x1fff3e48 ; LL_IRQHandler1 + 188
        0x1fff3e3c:    2802        .(      CMP      r0,#2
        0x1fff3e3e:    d003        ..      BEQ      0x1fff3e48 ; LL_IRQHandler1 + 188
        0x1fff3e40:    7838        8x      LDRB     r0,[r7,#0]
        0x1fff3e42:    2805        .(      CMP      r0,#5
        0x1fff3e44:    d004        ..      BEQ      0x1fff3e50 ; LL_IRQHandler1 + 196
        0x1fff3e46:    e00b        ..      B        0x1fff3e60 ; LL_IRQHandler1 + 212
        0x1fff3e48:    4630        0F      MOV      r0,r6
        0x1fff3e4a:    f000fed9    ....    BL       ll_processBasicIRQ_secondaryAdvTRX ; 0x1fff4c00
        0x1fff3e4e:    e015        ..      B        0x1fff3e7c ; LL_IRQHandler1 + 240
        0x1fff3e50:    4630        0F      MOV      r0,r6
        0x1fff3e52:    f000fec9    ....    BL       ll_processBasicIRQ_ScanTRX ; 0x1fff4be8
        0x1fff3e56:    e011        ..      B        0x1fff3e7c ; LL_IRQHandler1 + 240
        0x1fff3e58:    2801        .(      CMP      r0,#1
        0x1fff3e5a:    d007        ..      BEQ      0x1fff3e6c ; LL_IRQHandler1 + 224
        0x1fff3e5c:    2806        .(      CMP      r0,#6
        0x1fff3e5e:    d009        ..      BEQ      0x1fff3e74 ; LL_IRQHandler1 + 232
        0x1fff3e60:    4630        0F      MOV      r0,r6
        0x1fff3e62:    f7fff931    ..1.    BL       $Ven$TT$L$$ll_processBasicIRQ ; 0x1fff30c8
        0x1fff3e66:    2c02        .,      CMP      r4,#2
        0x1fff3e68:    d008        ..      BEQ      0x1fff3e7c ; LL_IRQHandler1 + 240
        0x1fff3e6a:    e01c        ..      B        0x1fff3ea6 ; LL_IRQHandler1 + 282
        0x1fff3e6c:    4630        0F      MOV      r0,r6
        0x1fff3e6e:    f000fedf    ....    BL       ll_processBasicIRQ_secondaryScanSRX ; 0x1fff4c30
        0x1fff3e72:    e018        ..      B        0x1fff3ea6 ; LL_IRQHandler1 + 282
        0x1fff3e74:    4630        0F      MOV      r0,r6
        0x1fff3e76:    f000fecf    ....    BL       ll_processBasicIRQ_secondaryInitSRX ; 0x1fff4c18
        0x1fff3e7a:    e014        ..      B        0x1fff3ea6 ; LL_IRQHandler1 + 282
        0x1fff3e7c:    7838        8x      LDRB     r0,[r7,#0]
        0x1fff3e7e:    2801        .(      CMP      r0,#1
        0x1fff3e80:    d111        ..      BNE      0x1fff3ea6 ; LL_IRQHandler1 + 282
        0x1fff3e82:    0570        p.      LSLS     r0,r6,#21
        0x1fff3e84:    d40f        ..      BMI      0x1fff3ea6 ; LL_IRQHandler1 + 282
        0x1fff3e86:    7b68        h{      LDRB     r0,[r5,#0xd]
        0x1fff3e88:    07c1        ..      LSLS     r1,r0,#31
        0x1fff3e8a:    d001        ..      BEQ      0x1fff3e90 ; LL_IRQHandler1 + 260
        0x1fff3e8c:    2025        %       MOVS     r0,#0x25
        0x1fff3e8e:    e004        ..      B        0x1fff3e9a ; LL_IRQHandler1 + 270
        0x1fff3e90:    0780        ..      LSLS     r0,r0,#30
        0x1fff3e92:    d501        ..      BPL      0x1fff3e98 ; LL_IRQHandler1 + 268
        0x1fff3e94:    2026        &       MOVS     r0,#0x26
        0x1fff3e96:    e000        ..      B        0x1fff3e9a ; LL_IRQHandler1 + 270
        0x1fff3e98:    2027        '       MOVS     r0,#0x27
        0x1fff3e9a:    7d29        )}      LDRB     r1,[r5,#0x14]
        0x1fff3e9c:    4281        .B      CMP      r1,r0
        0x1fff3e9e:    d902        ..      BLS      0x1fff3ea6 ; LL_IRQHandler1 + 282
        0x1fff3ea0:    2032        2       MOVS     r0,#0x32
        0x1fff3ea2:    f7fff917    ....    BL       $Ven$TT$L$$ll_schedule_next_event ; 0x1fff30d4
        0x1fff3ea6:    4c15        .L      LDR      r4,[pc,#84] ; [0x1fff3efc] = 0x1fff0923
        0x1fff3ea8:    7820         x      LDRB     r0,[r4,#0]
        0x1fff3eaa:    2804        .(      CMP      r0,#4
        0x1fff3eac:    d004        ..      BEQ      0x1fff3eb8 ; LL_IRQHandler1 + 300
        0x1fff3eae:    2803        .(      CMP      r0,#3
        0x1fff3eb0:    d00e        ..      BEQ      0x1fff3ed0 ; LL_IRQHandler1 + 324
        0x1fff3eb2:    2807        .(      CMP      r0,#7
        0x1fff3eb4:    d011        ..      BEQ      0x1fff3eda ; LL_IRQHandler1 + 334
        0x1fff3eb6:    e014        ..      B        0x1fff3ee2 ; LL_IRQHandler1 + 342
        0x1fff3eb8:    f7fff912    ....    BL       $Ven$TT$L$$llSecAdvAllow ; 0x1fff30e0
        0x1fff3ebc:    2800        .(      CMP      r0,#0
        0x1fff3ebe:    d010        ..      BEQ      0x1fff3ee2 ; LL_IRQHandler1 + 342
        0x1fff3ec0:    f7fff914    ....    BL       $Ven$TT$L$$llSetupSecAdvEvt ; 0x1fff30ec
        0x1fff3ec4:    2058        X       MOVS     r0,#0x58
        0x1fff3ec6:    f7fff917    ....    BL       $Ven$TT$L$$ll_hw_set_rx_timeout ; 0x1fff30f8
        0x1fff3eca:    2002        .       MOVS     r0,#2
        0x1fff3ecc:    7020         p      STRB     r0,[r4,#0]
        0x1fff3ece:    e008        ..      B        0x1fff3ee2 ; LL_IRQHandler1 + 342
        0x1fff3ed0:    480c        .H      LDR      r0,[pc,#48] ; [0x1fff3f04] = 0x1fff0bbc
        0x1fff3ed2:    7c80        .|      LDRB     r0,[r0,#0x12]
        0x1fff3ed4:    f7fff916    ....    BL       $Ven$TT$L$$llSetupSecScan ; 0x1fff3104
        0x1fff3ed8:    e003        ..      B        0x1fff3ee2 ; LL_IRQHandler1 + 342
        0x1fff3eda:    480b        .H      LDR      r0,[pc,#44] ; [0x1fff3f08] = 0x1fff0bd4
        0x1fff3edc:    7b80        .{      LDRB     r0,[r0,#0xe]
        0x1fff3ede:    f7fff917    ....    BL       $Ven$TT$L$$llSetupSecInit ; 0x1fff3110
        0x1fff3ee2:    2003        .       MOVS     r0,#3
        0x1fff3ee4:    f7fff8ba    ....    BL       $Ven$TT$L$$ll_debug_output ; 0x1fff305c
        0x1fff3ee8:    bdf8        ..      POP      {r3-r7,pc}
    $d
        0x1fff3eea:    0000        ..      DCW    0
        0x1fff3eec:    1fff099c    ....    DCD    536807836
        0x1fff3ef0:    1fff0998    ....    DCD    536807832
        0x1fff3ef4:    1fff0990    ....    DCD    536807824
        0x1fff3ef8:    1fff091c    ....    DCD    536807708
        0x1fff3efc:    1fff0923    #...    DCD    536807715
        0x1fff3f00:    1fff0ba6    ....    DCD    536808358
        0x1fff3f04:    1fff0bbc    ....    DCD    536808380
        0x1fff3f08:    1fff0bd4    ....    DCD    536808404
    $t
    i.LL_SetAdvControl1
    LL_SetAdvControl1
        0x1fff3f0c:    b5f8        ..      PUSH     {r3-r7,lr}
        0x1fff3f0e:    4d6f        oM      LDR      r5,[pc,#444] ; [0x1fff40cc] = 0x1fff0ba6
        0x1fff3f10:    2800        .(      CMP      r0,#0
        0x1fff3f12:    79ab        .y      LDRB     r3,[r5,#6]
        0x1fff3f14:    d016        ..      BEQ      0x1fff3f44 ; LL_SetAdvControl1 + 56
        0x1fff3f16:    2b01        .+      CMP      r3,#1
        0x1fff3f18:    d001        ..      BEQ      0x1fff3f1e ; LL_SetAdvControl1 + 18
        0x1fff3f1a:    2b03        .+      CMP      r3,#3
        0x1fff3f1c:    d112        ..      BNE      0x1fff3f44 ; LL_SetAdvControl1 + 56
        0x1fff3f1e:    496c        lI      LDR      r1,[pc,#432] ; [0x1fff40d0] = 0x1fff096b
        0x1fff3f20:    780a        .x      LDRB     r2,[r1,#0]
        0x1fff3f22:    2aff        .*      CMP      r2,#0xff
        0x1fff3f24:    d10e        ..      BNE      0x1fff3f44 ; LL_SetAdvControl1 + 56
        0x1fff3f26:    784a        Jx      LDRB     r2,[r1,#1]
        0x1fff3f28:    2aff        .*      CMP      r2,#0xff
        0x1fff3f2a:    d10b        ..      BNE      0x1fff3f44 ; LL_SetAdvControl1 + 56
        0x1fff3f2c:    788a        .x      LDRB     r2,[r1,#2]
        0x1fff3f2e:    2aff        .*      CMP      r2,#0xff
        0x1fff3f30:    d108        ..      BNE      0x1fff3f44 ; LL_SetAdvControl1 + 56
        0x1fff3f32:    78ca        .x      LDRB     r2,[r1,#3]
        0x1fff3f34:    2aff        .*      CMP      r2,#0xff
        0x1fff3f36:    d105        ..      BNE      0x1fff3f44 ; LL_SetAdvControl1 + 56
        0x1fff3f38:    790a        .y      LDRB     r2,[r1,#4]
        0x1fff3f3a:    2aff        .*      CMP      r2,#0xff
        0x1fff3f3c:    d102        ..      BNE      0x1fff3f44 ; LL_SetAdvControl1 + 56
        0x1fff3f3e:    7949        Iy      LDRB     r1,[r1,#5]
        0x1fff3f40:    29ff        .)      CMP      r1,#0xff
        0x1fff3f42:    d037        7.      BEQ      0x1fff3fb4 ; LL_SetAdvControl1 + 168
        0x1fff3f44:    4963        cI      LDR      r1,[pc,#396] ; [0x1fff40d4] = 0x1fff091a
        0x1fff3f46:    780a        .x      LDRB     r2,[r1,#0]
        0x1fff3f48:    2a01        .*      CMP      r2,#1
        0x1fff3f4a:    d01d        ..      BEQ      0x1fff3f88 ; LL_SetAdvControl1 + 124
        0x1fff3f4c:    2600        .&      MOVS     r6,#0
        0x1fff3f4e:    4c62        bL      LDR      r4,[pc,#392] ; [0x1fff40d8] = 0x1fff091c
        0x1fff3f50:    700e        .p      STRB     r6,[r1,#0]
        0x1fff3f52:    7822        "x      LDRB     r2,[r4,#0]
        0x1fff3f54:    2a09        .*      CMP      r2,#9
        0x1fff3f56:    d077        w.      BEQ      0x1fff4048 ; LL_SetAdvControl1 + 316
        0x1fff3f58:    2a0a        .*      CMP      r2,#0xa
        0x1fff3f5a:    d075        u.      BEQ      0x1fff4048 ; LL_SetAdvControl1 + 316
        0x1fff3f5c:    2a0b        .*      CMP      r2,#0xb
        0x1fff3f5e:    d073        s.      BEQ      0x1fff4048 ; LL_SetAdvControl1 + 316
        0x1fff3f60:    2a0c        .*      CMP      r2,#0xc
        0x1fff3f62:    d071        q.      BEQ      0x1fff4048 ; LL_SetAdvControl1 + 316
        0x1fff3f64:    2a0d        .*      CMP      r2,#0xd
        0x1fff3f66:    d06f        o.      BEQ      0x1fff4048 ; LL_SetAdvControl1 + 316
        0x1fff3f68:    2a05        .*      CMP      r2,#5
        0x1fff3f6a:    d06d        m.      BEQ      0x1fff4048 ; LL_SetAdvControl1 + 316
        0x1fff3f6c:    2a06        .*      CMP      r2,#6
        0x1fff3f6e:    d06b        k.      BEQ      0x1fff4048 ; LL_SetAdvControl1 + 316
        0x1fff3f70:    7ba9        .{      LDRB     r1,[r5,#0xe]
        0x1fff3f72:    2900        .)      CMP      r1,#0
        0x1fff3f74:    d00a        ..      BEQ      0x1fff3f8c ; LL_SetAdvControl1 + 128
        0x1fff3f76:    2901        .)      CMP      r1,#1
        0x1fff3f78:    d008        ..      BEQ      0x1fff3f8c ; LL_SetAdvControl1 + 128
        0x1fff3f7a:    2903        .)      CMP      r1,#3
        0x1fff3f7c:    d006        ..      BEQ      0x1fff3f8c ; LL_SetAdvControl1 + 128
        0x1fff3f7e:    2902        .)      CMP      r1,#2
        0x1fff3f80:    d004        ..      BEQ      0x1fff3f8c ; LL_SetAdvControl1 + 128
        0x1fff3f82:    2904        .)      CMP      r1,#4
        0x1fff3f84:    d116        ..      BNE      0x1fff3fb4 ; LL_SetAdvControl1 + 168
        0x1fff3f86:    e001        ..      B        0x1fff3f8c ; LL_SetAdvControl1 + 128
        0x1fff3f88:    200c        .       MOVS     r0,#0xc
        0x1fff3f8a:    bdf8        ..      POP      {r3-r7,pc}
        0x1fff3f8c:    2b00        .+      CMP      r3,#0
        0x1fff3f8e:    d005        ..      BEQ      0x1fff3f9c ; LL_SetAdvControl1 + 144
        0x1fff3f90:    2b01        .+      CMP      r3,#1
        0x1fff3f92:    d003        ..      BEQ      0x1fff3f9c ; LL_SetAdvControl1 + 144
        0x1fff3f94:    2b02        .+      CMP      r3,#2
        0x1fff3f96:    d001        ..      BEQ      0x1fff3f9c ; LL_SetAdvControl1 + 144
        0x1fff3f98:    2b03        .+      CMP      r3,#3
        0x1fff3f9a:    d10b        ..      BNE      0x1fff3fb4 ; LL_SetAdvControl1 + 168
        0x1fff3f9c:    2903        .)      CMP      r1,#3
        0x1fff3f9e:    d001        ..      BEQ      0x1fff3fa4 ; LL_SetAdvControl1 + 152
        0x1fff3fa0:    2902        .)      CMP      r1,#2
        0x1fff3fa2:    d102        ..      BNE      0x1fff3faa ; LL_SetAdvControl1 + 158
        0x1fff3fa4:    886b        k.      LDRH     r3,[r5,#2]
        0x1fff3fa6:    2b20         +      CMP      r3,#0x20
        0x1fff3fa8:    d304        ..      BCC      0x1fff3fb4 ; LL_SetAdvControl1 + 168
        0x1fff3faa:    4f4c        LO      LDR      r7,[pc,#304] ; [0x1fff40dc] = 0x1fff091b
        0x1fff3fac:    2800        .(      CMP      r0,#0
        0x1fff3fae:    d06a        j.      BEQ      0x1fff4086 ; LL_SetAdvControl1 + 378
        0x1fff3fb0:    2801        .(      CMP      r0,#1
        0x1fff3fb2:    d001        ..      BEQ      0x1fff3fb8 ; LL_SetAdvControl1 + 172
        0x1fff3fb4:    2012        .       MOVS     r0,#0x12
        0x1fff3fb6:    bdf8        ..      POP      {r3-r7,pc}
        0x1fff3fb8:    88a8        ..      LDRH     r0,[r5,#4]
        0x1fff3fba:    2801        .(      CMP      r0,#1
        0x1fff3fbc:    d044        D.      BEQ      0x1fff4048 ; LL_SetAdvControl1 + 316
        0x1fff3fbe:    2a00        .*      CMP      r2,#0
        0x1fff3fc0:    d117        ..      BNE      0x1fff3ff2 ; LL_SetAdvControl1 + 230
        0x1fff3fc2:    000b        ..      MOVS     r3,r1
        0x1fff3fc4:    f7fff8aa    ....    BL       $Ven$TT$L$$__ARM_common_switch8 ; 0x1fff311c
    $d
        0x1fff3fc8:    10080405    ....    DCD    268960773
        0x1fff3fcc:    0024080c    ..$.    DCD    2361356
    $t
        0x1fff3fd0:    2001        .       MOVS     r0,#1
        0x1fff3fd2:    7020         p      STRB     r0,[r4,#0]
        0x1fff3fd4:    201f        .       MOVS     r0,#0x1f
        0x1fff3fd6:    e00a        ..      B        0x1fff3fee ; LL_SetAdvControl1 + 226
        0x1fff3fd8:    2002        .       MOVS     r0,#2
        0x1fff3fda:    7020         p      STRB     r0,[r4,#0]
        0x1fff3fdc:    2020                MOVS     r0,#0x20
        0x1fff3fde:    e006        ..      B        0x1fff3fee ; LL_SetAdvControl1 + 226
        0x1fff3fe0:    2004        .       MOVS     r0,#4
        0x1fff3fe2:    7020         p      STRB     r0,[r4,#0]
        0x1fff3fe4:    2022        "       MOVS     r0,#0x22
        0x1fff3fe6:    e002        ..      B        0x1fff3fee ; LL_SetAdvControl1 + 226
        0x1fff3fe8:    2003        .       MOVS     r0,#3
        0x1fff3fea:    7020         p      STRB     r0,[r4,#0]
        0x1fff3fec:    2021        !       MOVS     r0,#0x21
        0x1fff3fee:    f7fff835    ..5.    BL       $Ven$TT$L$$ll_debug_output ; 0x1fff305c
        0x1fff3ff2:    7820         x      LDRB     r0,[r4,#0]
        0x1fff3ff4:    2128        (!      MOVS     r1,#0x28
        0x1fff3ff6:    2801        .(      CMP      r0,#1
        0x1fff3ff8:    d00d        ..      BEQ      0x1fff4016 ; LL_SetAdvControl1 + 266
        0x1fff3ffa:    2802        .(      CMP      r0,#2
        0x1fff3ffc:    d00b        ..      BEQ      0x1fff4016 ; LL_SetAdvControl1 + 266
        0x1fff3ffe:    2804        .(      CMP      r0,#4
        0x1fff4000:    d009        ..      BEQ      0x1fff4016 ; LL_SetAdvControl1 + 266
        0x1fff4002:    2803        .(      CMP      r0,#3
        0x1fff4004:    d007        ..      BEQ      0x1fff4016 ; LL_SetAdvControl1 + 266
        0x1fff4006:    2807        .(      CMP      r0,#7
        0x1fff4008:    d00e        ..      BEQ      0x1fff4028 ; LL_SetAdvControl1 + 284
        0x1fff400a:    2808        .(      CMP      r0,#8
        0x1fff400c:    d00c        ..      BEQ      0x1fff4028 ; LL_SetAdvControl1 + 284
        0x1fff400e:    e01b        ..      B        0x1fff4048 ; LL_SetAdvControl1 + 316
        0x1fff4010:    7026        &p      STRB     r6,[r4,#0]
        0x1fff4012:    201e        .       MOVS     r0,#0x1e
        0x1fff4014:    e7eb        ..      B        0x1fff3fee ; LL_SetAdvControl1 + 226
        0x1fff4016:    4832        2H      LDR      r0,[pc,#200] ; [0x1fff40e0] = 0x1fff0948
        0x1fff4018:    6006        .`      STR      r6,[r0,#0]
        0x1fff401a:    7529        )u      STRB     r1,[r5,#0x14]
        0x1fff401c:    f7fff884    ....    BL       $Ven$TT$L$$llSetupAdv ; 0x1fff3128
        0x1fff4020:    2800        .(      CMP      r0,#0
        0x1fff4022:    d01f        ..      BEQ      0x1fff4064 ; LL_SetAdvControl1 + 344
        0x1fff4024:    80ae        ..      STRH     r6,[r5,#4]
        0x1fff4026:    e00f        ..      B        0x1fff4048 ; LL_SetAdvControl1 + 316
        0x1fff4028:    482e        .H      LDR      r0,[pc,#184] ; [0x1fff40e4] = 0x1fff5850
        0x1fff402a:    6840        @h      LDR      r0,[r0,#4]
        0x1fff402c:    8d80        ..      LDRH     r0,[r0,#0x2c]
        0x1fff402e:    0680        ..      LSLS     r0,r0,#26
        0x1fff4030:    d50a        ..      BPL      0x1fff4048 ; LL_SetAdvControl1 + 316
        0x1fff4032:    482d        -H      LDR      r0,[pc,#180] ; [0x1fff40e8] = 0x1fff0923
        0x1fff4034:    7802        .x      LDRB     r2,[r0,#0]
        0x1fff4036:    2a00        .*      CMP      r2,#0
        0x1fff4038:    d106        ..      BNE      0x1fff4048 ; LL_SetAdvControl1 + 316
        0x1fff403a:    7baa        .{      LDRB     r2,[r5,#0xe]
        0x1fff403c:    2a03        .*      CMP      r2,#3
        0x1fff403e:    d005        ..      BEQ      0x1fff404c ; LL_SetAdvControl1 + 320
        0x1fff4040:    2a02        .*      CMP      r2,#2
        0x1fff4042:    d003        ..      BEQ      0x1fff404c ; LL_SetAdvControl1 + 320
        0x1fff4044:    2a00        .*      CMP      r2,#0
        0x1fff4046:    d001        ..      BEQ      0x1fff404c ; LL_SetAdvControl1 + 320
        0x1fff4048:    2021        !       MOVS     r0,#0x21
        0x1fff404a:    bdf8        ..      POP      {r3-r7,pc}
        0x1fff404c:    2202        ."      MOVS     r2,#2
        0x1fff404e:    7002        .p      STRB     r2,[r0,#0]
        0x1fff4050:    7529        )u      STRB     r1,[r5,#0x14]
        0x1fff4052:    0314        ..      LSLS     r4,r2,#12
        0x1fff4054:    4621        !F      MOV      r1,r4
        0x1fff4056:    7838        8x      LDRB     r0,[r7,#0]
        0x1fff4058:    f7feff16    ....    BL       $Ven$TT$L$$osal_stop_timerEx ; 0x1fff2e88
        0x1fff405c:    4621        !F      MOV      r1,r4
        0x1fff405e:    7838        8x      LDRB     r0,[r7,#0]
        0x1fff4060:    f7fff868    ..h.    BL       $Ven$TT$L$$osal_set_event ; 0x1fff3134
        0x1fff4064:    2001        .       MOVS     r0,#1
        0x1fff4066:    80a8        ..      STRH     r0,[r5,#4]
        0x1fff4068:    4820         H      LDR      r0,[pc,#128] ; [0x1fff40ec] = 0x1fff0921
        0x1fff406a:    7800        .x      LDRB     r0,[r0,#0]
        0x1fff406c:    2800        .(      CMP      r0,#0
        0x1fff406e:    d02a        *.      BEQ      0x1fff40c6 ; LL_SetAdvControl1 + 442
        0x1fff4070:    481f        .H      LDR      r0,[pc,#124] ; [0x1fff40f0] = 0x1fff092c
        0x1fff4072:    2101        .!      MOVS     r1,#1
        0x1fff4074:    8802        ..      LDRH     r2,[r0,#0]
        0x1fff4076:    207d        }       MOVS     r0,#0x7d
        0x1fff4078:    00c0        ..      LSLS     r0,r0,#3
        0x1fff407a:    4342        BC      MULS     r2,r0,r2
        0x1fff407c:    03c9        ..      LSLS     r1,r1,#15
        0x1fff407e:    7838        8x      LDRB     r0,[r7,#0]
        0x1fff4080:    f7feff0e    ....    BL       $Ven$TT$L$$osal_start_timerEx ; 0x1fff2ea0
        0x1fff4084:    e01f        ..      B        0x1fff40c6 ; LL_SetAdvControl1 + 442
        0x1fff4086:    f7feff11    ....    BL       $Ven$TT$L$$drv_disable_irq ; 0x1fff2eac
        0x1fff408a:    80ae        ..      STRH     r6,[r5,#4]
        0x1fff408c:    7820         x      LDRB     r0,[r4,#0]
        0x1fff408e:    2807        .(      CMP      r0,#7
        0x1fff4090:    d008        ..      BEQ      0x1fff40a4 ; LL_SetAdvControl1 + 408
        0x1fff4092:    2808        .(      CMP      r0,#8
        0x1fff4094:    d006        ..      BEQ      0x1fff40a4 ; LL_SetAdvControl1 + 408
        0x1fff4096:    7026        &p      STRB     r6,[r4,#0]
        0x1fff4098:    4816        .H      LDR      r0,[pc,#88] ; [0x1fff40f4] = 0x40001000
        0x1fff409a:    f7fff851    ..Q.    BL       $Ven$TT$L$$clear_timer ; 0x1fff3140
        0x1fff409e:    201e        .       MOVS     r0,#0x1e
        0x1fff40a0:    f7feffdc    ....    BL       $Ven$TT$L$$ll_debug_output ; 0x1fff305c
        0x1fff40a4:    4810        .H      LDR      r0,[pc,#64] ; [0x1fff40e8] = 0x1fff0923
        0x1fff40a6:    7801        .x      LDRB     r1,[r0,#0]
        0x1fff40a8:    2900        .)      CMP      r1,#0
        0x1fff40aa:    d005        ..      BEQ      0x1fff40b8 ; LL_SetAdvControl1 + 428
        0x1fff40ac:    7006        .p      STRB     r6,[r0,#0]
        0x1fff40ae:    2101        .!      MOVS     r1,#1
        0x1fff40b0:    0349        I.      LSLS     r1,r1,#13
        0x1fff40b2:    7838        8x      LDRB     r0,[r7,#0]
        0x1fff40b4:    f7fefee8    ....    BL       $Ven$TT$L$$osal_stop_timerEx ; 0x1fff2e88
        0x1fff40b8:    f7fefefe    ....    BL       $Ven$TT$L$$drv_enable_irq ; 0x1fff2eb8
        0x1fff40bc:    2101        .!      MOVS     r1,#1
        0x1fff40be:    03c9        ..      LSLS     r1,r1,#15
        0x1fff40c0:    7838        8x      LDRB     r0,[r7,#0]
        0x1fff40c2:    f7fefee1    ....    BL       $Ven$TT$L$$osal_stop_timerEx ; 0x1fff2e88
        0x1fff40c6:    2000        .       MOVS     r0,#0
        0x1fff40c8:    bdf8        ..      POP      {r3-r7,pc}
    $d
        0x1fff40ca:    0000        ..      DCW    0
        0x1fff40cc:    1fff0ba6    ....    DCD    536808358
        0x1fff40d0:    1fff096b    k...    DCD    536807787
        0x1fff40d4:    1fff091a    ....    DCD    536807706
        0x1fff40d8:    1fff091c    ....    DCD    536807708
        0x1fff40dc:    1fff091b    ....    DCD    536807707
        0x1fff40e0:    1fff0948    H...    DCD    536807752
        0x1fff40e4:    1fff5850    PX..    DCD    536827984
        0x1fff40e8:    1fff0923    #...    DCD    536807715
        0x1fff40ec:    1fff0921    !...    DCD    536807713
        0x1fff40f0:    1fff092c    ,...    DCD    536807724
        0x1fff40f4:    40001000    ...@    DCD    1073745920
    $t
    i.LL_SetAdvParam1
    LL_SetAdvParam1
        0x1fff40f8:    b5f0        ..      PUSH     {r4-r7,lr}
        0x1fff40fa:    b085        ..      SUB      sp,sp,#0x14
        0x1fff40fc:    4614        .F      MOV      r4,r2
        0x1fff40fe:    468c        .F      MOV      r12,r1
        0x1fff4100:    4686        .F      MOV      lr,r0
        0x1fff4102:    ad0a        ..      ADD      r5,sp,#0x28
        0x1fff4104:    cd87        ..      LDM      r5!,{r0-r2,r7}
        0x1fff4106:    4e0d        .N      LDR      r6,[pc,#52] ; [0x1fff413c] = 0x1fff091c
        0x1fff4108:    7835        5x      LDRB     r5,[r6,#0]
        0x1fff410a:    9703        ..      STR      r7,[sp,#0xc]
        0x1fff410c:    466f        oF      MOV      r7,sp
        0x1fff410e:    c707        ..      STM      r7!,{r0-r2}
        0x1fff4110:    4622        "F      MOV      r2,r4
        0x1fff4112:    4661        aF      MOV      r1,r12
        0x1fff4114:    4670        pF      MOV      r0,lr
        0x1fff4116:    f7fff819    ....    BL       $Ven$TT$L$$LL_SetAdvParam0 ; 0x1fff314c
        0x1fff411a:    7035        5p      STRB     r5,[r6,#0]
        0x1fff411c:    2c01        .,      CMP      r4,#1
        0x1fff411e:    d001        ..      BEQ      0x1fff4124 ; LL_SetAdvParam1 + 44
        0x1fff4120:    2c04        .,      CMP      r4,#4
        0x1fff4122:    d108        ..      BNE      0x1fff4136 ; LL_SetAdvParam1 + 62
        0x1fff4124:    4906        .I      LDR      r1,[pc,#24] ; [0x1fff4140] = 0x1fff0978
        0x1fff4126:    2480        .$      MOVS     r4,#0x80
        0x1fff4128:    7809        .x      LDRB     r1,[r1,#0]
        0x1fff412a:    01ca        ..      LSLS     r2,r1,#7
        0x1fff412c:    4905        .I      LDR      r1,[pc,#20] ; [0x1fff4144] = 0x1fff116c
        0x1fff412e:    888b        ..      LDRH     r3,[r1,#4]
        0x1fff4130:    43a3        .C      BICS     r3,r3,r4
        0x1fff4132:    431a        .C      ORRS     r2,r2,r3
        0x1fff4134:    808a        ..      STRH     r2,[r1,#4]
        0x1fff4136:    b005        ..      ADD      sp,sp,#0x14
        0x1fff4138:    bdf0        ..      POP      {r4-r7,pc}
    $d
        0x1fff413a:    0000        ..      DCW    0
        0x1fff413c:    1fff091c    ....    DCD    536807708
        0x1fff4140:    1fff0978    x...    DCD    536807800
        0x1fff4144:    1fff116c    l...    DCD    536809836
    $t
    i.LL_SetDataLengh1
    LL_SetDataLengh1
        0x1fff4148:    b510        ..      PUSH     {r4,lr}
        0x1fff414a:    29fb        .)      CMP      r1,#0xfb
        0x1fff414c:    d808        ..      BHI      0x1fff4160 ; LL_SetDataLengh1 + 24
        0x1fff414e:    4b08        .K      LDR      r3,[pc,#32] ; [0x1fff4170] = 0x848
        0x1fff4150:    429a        .B      CMP      r2,r3
        0x1fff4152:    d805        ..      BHI      0x1fff4160 ; LL_SetDataLengh1 + 24
        0x1fff4154:    291b        .)      CMP      r1,#0x1b
        0x1fff4156:    d303        ..      BCC      0x1fff4160 ; LL_SetDataLengh1 + 24
        0x1fff4158:    23ff        .#      MOVS     r3,#0xff
        0x1fff415a:    3349        I3      ADDS     r3,r3,#0x49
        0x1fff415c:    429a        .B      CMP      r2,r3
        0x1fff415e:    d201        ..      BCS      0x1fff4164 ; LL_SetDataLengh1 + 28
        0x1fff4160:    2030        0       MOVS     r0,#0x30
        0x1fff4162:    bd10        ..      POP      {r4,pc}
        0x1fff4164:    4b03        .K      LDR      r3,[pc,#12] ; [0x1fff4174] = 0x1fff1084
        0x1fff4166:    8219        ..      STRH     r1,[r3,#0x10]
        0x1fff4168:    825a        Z.      STRH     r2,[r3,#0x12]
        0x1fff416a:    f7fefff5    ....    BL       $Ven$TT$L$$LL_SetDataLengh0 ; 0x1fff3158
        0x1fff416e:    bd10        ..      POP      {r4,pc}
    $d
        0x1fff4170:    00000848    H...    DCD    2120
        0x1fff4174:    1fff1084    ....    DCD    536809604
    $t
    i.LL_set_default_conn_params1
    LL_set_default_conn_params1
        0x1fff4178:    b510        ..      PUSH     {r4,lr}
        0x1fff417a:    f7fefff3    ....    BL       $Ven$TT$L$$LL_set_default_conn_params0 ; 0x1fff3164
        0x1fff417e:    4902        .I      LDR      r1,[pc,#8] ; [0x1fff4188] = 0x1fff5850
        0x1fff4180:    2000        .       MOVS     r0,#0
        0x1fff4182:    8048        H.      STRH     r0,[r1,#2]
        0x1fff4184:    bd10        ..      POP      {r4,pc}
    $d
        0x1fff4186:    0000        ..      DCW    0
        0x1fff4188:    1fff5850    PX..    DCD    536827984
    $t
    i.NVIC_EnableIRQ
    NVIC_EnableIRQ
        0x1fff418c:    06c1        ..      LSLS     r1,r0,#27
        0x1fff418e:    0ec9        ..      LSRS     r1,r1,#27
        0x1fff4190:    2001        .       MOVS     r0,#1
        0x1fff4192:    4088        .@      LSLS     r0,r0,r1
        0x1fff4194:    4901        .I      LDR      r1,[pc,#4] ; [0x1fff419c] = 0xe000e100
        0x1fff4196:    6008        .`      STR      r0,[r1,#0]
        0x1fff4198:    4770        pG      BX       lr
    $d
        0x1fff419a:    0000        ..      DCW    0
        0x1fff419c:    e000e100    ....    DCD    3758153984
    $t
    i.__psr
    __psr
        0x1fff41a0:    f3ef8003    ....    MRS      r0,XPSR
        0x1fff41a4:    4770        pG      BX       lr
    i.__scatterload_copy
    __scatterload_copy
        0x1fff41a6:    e002        ..      B        0x1fff41ae ; __scatterload_copy + 8
        0x1fff41a8:    c808        ..      LDM      r0!,{r3}
        0x1fff41aa:    1f12        ..      SUBS     r2,r2,#4
        0x1fff41ac:    c108        ..      STM      r1!,{r3}
        0x1fff41ae:    2a00        .*      CMP      r2,#0
        0x1fff41b0:    d1fa        ..      BNE      0x1fff41a8 ; __scatterload_copy + 2
        0x1fff41b2:    4770        pG      BX       lr
    i.__scatterload_null
    __scatterload_null
        0x1fff41b4:    4770        pG      BX       lr
    i.__scatterload_zeroinit
    __scatterload_zeroinit
        0x1fff41b6:    2000        .       MOVS     r0,#0
        0x1fff41b8:    e001        ..      B        0x1fff41be ; __scatterload_zeroinit + 8
        0x1fff41ba:    c101        ..      STM      r1!,{r0}
        0x1fff41bc:    1f12        ..      SUBS     r2,r2,#4
        0x1fff41be:    2a00        .*      CMP      r2,#0
        0x1fff41c0:    d1fb        ..      BNE      0x1fff41ba ; __scatterload_zeroinit + 4
        0x1fff41c2:    4770        pG      BX       lr
    i.__wdt_init
    __wdt_init
        0x1fff41c4:    4802        .H      LDR      r0,[pc,#8] ; [0x1fff41d0] = 0x1fff0340
        0x1fff41c6:    69c0        .i      LDR      r0,[r0,#0x1c]
        0x1fff41c8:    2800        .(      CMP      r0,#0
        0x1fff41ca:    d000        ..      BEQ      0x1fff41ce ; __wdt_init + 10
        0x1fff41cc:    4700        .G      BX       r0
        0x1fff41ce:    4770        pG      BX       lr
    $d
        0x1fff41d0:    1fff0340    @...    DCD    536806208
    $t
    i._efuse_chip_version_check
    _efuse_chip_version_check
        0x1fff41d4:    b51c        ..      PUSH     {r2-r4,lr}
        0x1fff41d6:    4669        iF      MOV      r1,sp
        0x1fff41d8:    2001        .       MOVS     r0,#1
        0x1fff41da:    f7feffc9    ....    BL       $Ven$TT$L$$efuse_read ; 0x1fff3170
        0x1fff41de:    2001        .       MOVS     r0,#1
        0x1fff41e0:    9000        ..      STR      r0,[sp,#0]
        0x1fff41e2:    4803        .H      LDR      r0,[pc,#12] ; [0x1fff41f0] = 0xbbb
        0x1fff41e4:    9001        ..      STR      r0,[sp,#4]
        0x1fff41e6:    f000f9af    ....    BL       finidv ; 0x1fff4548
        0x1fff41ea:    2001        .       MOVS     r0,#1
        0x1fff41ec:    bd1c        ..      POP      {r2-r4,pc}
    $d
        0x1fff41ee:    0000        ..      DCW    0
        0x1fff41f0:    00000bbb    ....    DCD    3003
    $t
    i._rom_sec_boot_init
    _rom_sec_boot_init
        0x1fff41f4:    b510        ..      PUSH     {r4,lr}
        0x1fff41f6:    f000f985    ....    BL       efuse_init ; 0x1fff4504
        0x1fff41fa:    f7ffffeb    ....    BL       _efuse_chip_version_check ; 0x1fff41d4
        0x1fff41fe:    2800        .(      CMP      r0,#0
        0x1fff4200:    d002        ..      BEQ      0x1fff4208 ; _rom_sec_boot_init + 20
        0x1fff4202:    4802        .H      LDR      r0,[pc,#8] ; [0x1fff420c] = 0xa2e1
        0x1fff4204:    4780        .G      BLX      r0
        0x1fff4206:    bd10        ..      POP      {r4,pc}
        0x1fff4208:    e7fe        ..      B        0x1fff4208 ; _rom_sec_boot_init + 20
    $d
        0x1fff420a:    0000        ..      DCW    0
        0x1fff420c:    0000a2e1    ....    DCD    41697
    $t
    i.check_16MXtal_by_rcTracking
    check_16MXtal_by_rcTracking
        0x1fff4210:    b5f8        ..      PUSH     {r3-r7,lr}
        0x1fff4212:    484e        NH      LDR      r0,[pc,#312] ; [0x1fff434c] = 0x4000f0c0
        0x1fff4214:    6840        @h      LDR      r0,[r0,#4]
        0x1fff4216:    43c0        .C      MVNS     r0,r0
        0x1fff4218:    0600        ..      LSLS     r0,r0,#24
        0x1fff421a:    d503        ..      BPL      0x1fff4224 ; check_16MXtal_by_rcTracking + 20
        0x1fff421c:    203c        <       MOVS     r0,#0x3c
        0x1fff421e:    f7fefe09    ....    BL       $Ven$TT$L$$WaitRTCCount ; 0x1fff2e34
        0x1fff4222:    bdf8        ..      POP      {r3-r7,pc}
        0x1fff4224:    f7feffaa    ....    BL       $Ven$TT$L$$rtc_get_counter ; 0x1fff317c
        0x1fff4228:    4d48        HM      LDR      r5,[pc,#288] ; [0x1fff434c] = 0x4000f0c0
        0x1fff422a:    9000        ..      STR      r0,[sp,#0]
        0x1fff422c:    3d80        .=      SUBS     r5,r5,#0x80
        0x1fff422e:    6828        (h      LDR      r0,[r5,#0]
        0x1fff4230:    2101        .!      MOVS     r1,#1
        0x1fff4232:    0489        ..      LSLS     r1,r1,#18
        0x1fff4234:    4308        .C      ORRS     r0,r0,r1
        0x1fff4236:    6028        (`      STR      r0,[r5,#0]
        0x1fff4238:    69e8        .i      LDR      r0,[r5,#0x1c]
        0x1fff423a:    4945        EI      LDR      r1,[pc,#276] ; [0x1fff4350] = 0xfffefe00
        0x1fff423c:    4008        .@      ANDS     r0,r0,r1
        0x1fff423e:    3028        (0      ADDS     r0,r0,#0x28
        0x1fff4240:    61e8        .a      STR      r0,[r5,#0x1c]
        0x1fff4242:    2003        .       MOVS     r0,#3
        0x1fff4244:    f7fefdf6    ....    BL       $Ven$TT$L$$WaitRTCCount ; 0x1fff2e34
        0x1fff4248:    6a68        hj      LDR      r0,[r5,#0x24]
        0x1fff424a:    03c7        ..      LSLS     r7,r0,#15
        0x1fff424c:    0bff        ..      LSRS     r7,r7,#15
        0x1fff424e:    2003        .       MOVS     r0,#3
        0x1fff4250:    f7fefdf0    ....    BL       $Ven$TT$L$$WaitRTCCount ; 0x1fff2e34
        0x1fff4254:    6a68        hj      LDR      r0,[r5,#0x24]
        0x1fff4256:    03c4        ..      LSLS     r4,r0,#15
        0x1fff4258:    0be4        ..      LSRS     r4,r4,#15
        0x1fff425a:    2003        .       MOVS     r0,#3
        0x1fff425c:    f7fefdea    ....    BL       $Ven$TT$L$$WaitRTCCount ; 0x1fff2e34
        0x1fff4260:    6a68        hj      LDR      r0,[r5,#0x24]
        0x1fff4262:    03c6        ..      LSLS     r6,r0,#15
        0x1fff4264:    0bf6        ..      LSRS     r6,r6,#15
        0x1fff4266:    42a7        .B      CMP      r7,r4
        0x1fff4268:    d301        ..      BCC      0x1fff426e ; check_16MXtal_by_rcTracking + 94
        0x1fff426a:    4620         F      MOV      r0,r4
        0x1fff426c:    e000        ..      B        0x1fff4270 ; check_16MXtal_by_rcTracking + 96
        0x1fff426e:    4638        8F      MOV      r0,r7
        0x1fff4270:    42b0        .B      CMP      r0,r6
        0x1fff4272:    d300        ..      BCC      0x1fff4276 ; check_16MXtal_by_rcTracking + 102
        0x1fff4274:    4630        0F      MOV      r0,r6
        0x1fff4276:    42a7        .B      CMP      r7,r4
        0x1fff4278:    d301        ..      BCC      0x1fff427e ; check_16MXtal_by_rcTracking + 110
        0x1fff427a:    4639        9F      MOV      r1,r7
        0x1fff427c:    e000        ..      B        0x1fff4280 ; check_16MXtal_by_rcTracking + 112
        0x1fff427e:    4621        !F      MOV      r1,r4
        0x1fff4280:    42b1        .B      CMP      r1,r6
        0x1fff4282:    d200        ..      BCS      0x1fff4286 ; check_16MXtal_by_rcTracking + 118
        0x1fff4284:    4631        1F      MOV      r1,r6
        0x1fff4286:    4a33        3J      LDR      r2,[pc,#204] ; [0x1fff4354] = 0xfffffc91
        0x1fff4288:    18ba        ..      ADDS     r2,r7,r2
        0x1fff428a:    2ac3        .*      CMP      r2,#0xc3
        0x1fff428c:    d226        &.      BCS      0x1fff42dc ; check_16MXtal_by_rcTracking + 204
        0x1fff428e:    4b31        1K      LDR      r3,[pc,#196] ; [0x1fff4354] = 0xfffffc91
        0x1fff4290:    43db        .C      MVNS     r3,r3
        0x1fff4292:    429c        .B      CMP      r4,r3
        0x1fff4294:    d922        ".      BLS      0x1fff42dc ; check_16MXtal_by_rcTracking + 204
        0x1fff4296:    4a30        0J      LDR      r2,[pc,#192] ; [0x1fff4358] = 0x432
        0x1fff4298:    4294        .B      CMP      r4,r2
        0x1fff429a:    d21f        ..      BCS      0x1fff42dc ; check_16MXtal_by_rcTracking + 204
        0x1fff429c:    429e        .B      CMP      r6,r3
        0x1fff429e:    d91d        ..      BLS      0x1fff42dc ; check_16MXtal_by_rcTracking + 204
        0x1fff42a0:    4296        .B      CMP      r6,r2
        0x1fff42a2:    d21b        ..      BCS      0x1fff42dc ; check_16MXtal_by_rcTracking + 204
        0x1fff42a4:    1a08        ..      SUBS     r0,r1,r0
        0x1fff42a6:    2813        .(      CMP      r0,#0x13
        0x1fff42a8:    d218        ..      BCS      0x1fff42dc ; check_16MXtal_by_rcTracking + 204
        0x1fff42aa:    4828        (H      LDR      r0,[pc,#160] ; [0x1fff434c] = 0x4000f0c0
        0x1fff42ac:    6842        Bh      LDR      r2,[r0,#4]
        0x1fff42ae:    210c        .!      MOVS     r1,#0xc
        0x1fff42b0:    438a        .C      BICS     r2,r2,r1
        0x1fff42b2:    6042        B`      STR      r2,[r0,#4]
        0x1fff42b4:    6841        Ah      LDR      r1,[r0,#4]
        0x1fff42b6:    22ff        ."      MOVS     r2,#0xff
        0x1fff42b8:    0212        ..      LSLS     r2,r2,#8
        0x1fff42ba:    4391        .C      BICS     r1,r1,r2
        0x1fff42bc:    6041        A`      STR      r1,[r0,#4]
        0x1fff42be:    2014        .       MOVS     r0,#0x14
        0x1fff42c0:    f7fefdb8    ....    BL       $Ven$TT$L$$WaitRTCCount ; 0x1fff2e34
        0x1fff42c4:    4821        !H      LDR      r0,[pc,#132] ; [0x1fff434c] = 0x4000f0c0
        0x1fff42c6:    3880        .8      SUBS     r0,r0,#0x80
        0x1fff42c8:    6a41        Aj      LDR      r1,[r0,#0x24]
        0x1fff42ca:    69c2        .i      LDR      r2,[r0,#0x1c]
        0x1fff42cc:    03c9        ..      LSLS     r1,r1,#15
        0x1fff42ce:    0bc9        ..      LSRS     r1,r1,#15
        0x1fff42d0:    2308        .#      MOVS     r3,#8
        0x1fff42d2:    439a        .C      BICS     r2,r2,r3
        0x1fff42d4:    61c2        .a      STR      r2,[r0,#0x1c]
        0x1fff42d6:    4821        !H      LDR      r0,[pc,#132] ; [0x1fff435c] = 0x1fff5850
        0x1fff42d8:    60c1        .`      STR      r1,[r0,#0xc]
        0x1fff42da:    bdf8        ..      POP      {r3-r7,pc}
        0x1fff42dc:    4627        'F      MOV      r7,r4
        0x1fff42de:    4634        4F      MOV      r4,r6
        0x1fff42e0:    2003        .       MOVS     r0,#3
        0x1fff42e2:    f7fefda7    ....    BL       $Ven$TT$L$$WaitRTCCount ; 0x1fff2e34
        0x1fff42e6:    4819        .H      LDR      r0,[pc,#100] ; [0x1fff434c] = 0x4000f0c0
        0x1fff42e8:    3880        .8      SUBS     r0,r0,#0x80
        0x1fff42ea:    6a40        @j      LDR      r0,[r0,#0x24]
        0x1fff42ec:    03c6        ..      LSLS     r6,r0,#15
        0x1fff42ee:    0bf6        ..      LSRS     r6,r6,#15
        0x1fff42f0:    f7feff44    ..D.    BL       $Ven$TT$L$$rtc_get_counter ; 0x1fff317c
        0x1fff42f4:    9900        ..      LDR      r1,[sp,#0]
        0x1fff42f6:    4288        .B      CMP      r0,r1
        0x1fff42f8:    d301        ..      BCC      0x1fff42fe ; check_16MXtal_by_rcTracking + 238
        0x1fff42fa:    1a40        @.      SUBS     r0,r0,r1
        0x1fff42fc:    e001        ..      B        0x1fff4302 ; check_16MXtal_by_rcTracking + 242
        0x1fff42fe:    1a40        @.      SUBS     r0,r0,r1
        0x1fff4300:    1e40        @.      SUBS     r0,r0,#1
        0x1fff4302:    4917        .I      LDR      r1,[pc,#92] ; [0x1fff4360] = 0xce4
        0x1fff4304:    4288        .B      CMP      r0,r1
        0x1fff4306:    d3ae        ..      BCC      0x1fff4266 ; check_16MXtal_by_rcTracking + 86
        0x1fff4308:    4810        .H      LDR      r0,[pc,#64] ; [0x1fff434c] = 0x4000f0c0
        0x1fff430a:    6841        Ah      LDR      r1,[r0,#4]
        0x1fff430c:    0409        ..      LSLS     r1,r1,#16
        0x1fff430e:    0e0d        ..      LSRS     r5,r1,#24
        0x1fff4310:    6841        Ah      LDR      r1,[r0,#4]
        0x1fff4312:    22ff        ."      MOVS     r2,#0xff
        0x1fff4314:    0212        ..      LSLS     r2,r2,#8
        0x1fff4316:    4391        .C      BICS     r1,r1,r2
        0x1fff4318:    1c6a        j.      ADDS     r2,r5,#1
        0x1fff431a:    0612        ..      LSLS     r2,r2,#24
        0x1fff431c:    0c12        ..      LSRS     r2,r2,#16
        0x1fff431e:    4311        .C      ORRS     r1,r1,r2
        0x1fff4320:    6041        A`      STR      r1,[r0,#4]
        0x1fff4322:    6841        Ah      LDR      r1,[r0,#4]
        0x1fff4324:    220c        ."      MOVS     r2,#0xc
        0x1fff4326:    4391        .C      BICS     r1,r1,r2
        0x1fff4328:    1d09        ..      ADDS     r1,r1,#4
        0x1fff432a:    6041        A`      STR      r1,[r0,#4]
        0x1fff432c:    2000        .       MOVS     r0,#0
        0x1fff432e:    f7feff2b    ..+.    BL       $Ven$TT$L$$set_sleep_flag ; 0x1fff3188
        0x1fff4332:    2d64        d-      CMP      r5,#0x64
        0x1fff4334:    d302        ..      BCC      0x1fff433c ; check_16MXtal_by_rcTracking + 300
        0x1fff4336:    4805        .H      LDR      r0,[pc,#20] ; [0x1fff434c] = 0x4000f0c0
        0x1fff4338:    2100        .!      MOVS     r1,#0
        0x1fff433a:    6041        A`      STR      r1,[r0,#4]
        0x1fff433c:    2d06        .-      CMP      r5,#6
        0x1fff433e:    d300        ..      BCC      0x1fff4342 ; check_16MXtal_by_rcTracking + 306
        0x1fff4340:    2506        .%      MOVS     r5,#6
        0x1fff4342:    4807        .H      LDR      r0,[pc,#28] ; [0x1fff4360] = 0xce4
        0x1fff4344:    40a8        .@      LSLS     r0,r0,r5
        0x1fff4346:    f7fffaaf    ....    BL       hal_pwrmgr_enter_sleep_rtc_reset ; 0x1fff38a8
        0x1fff434a:    e78c        ..      B        0x1fff4266 ; check_16MXtal_by_rcTracking + 86
    $d
        0x1fff434c:    4000f0c0    ...@    DCD    1073803456
        0x1fff4350:    fffefe00    ....    DCD    4294901248
        0x1fff4354:    fffffc91    ....    DCD    4294966417
        0x1fff4358:    00000432    2...    DCD    1074
        0x1fff435c:    1fff5850    PX..    DCD    536827984
        0x1fff4360:    00000ce4    ....    DCD    3300
    $t
    i.check_96MXtal_by_rcTracking
    check_96MXtal_by_rcTracking
        0x1fff4364:    b5f8        ..      PUSH     {r3-r7,lr}
        0x1fff4366:    483d        =H      LDR      r0,[pc,#244] ; [0x1fff445c] = 0x4000f0c0
        0x1fff4368:    6840        @h      LDR      r0,[r0,#4]
        0x1fff436a:    4c3c        <L      LDR      r4,[pc,#240] ; [0x1fff445c] = 0x4000f0c0
        0x1fff436c:    0600        ..      LSLS     r0,r0,#24
        0x1fff436e:    3c80        .<      SUBS     r4,r4,#0x80
        0x1fff4370:    2180        .!      MOVS     r1,#0x80
        0x1fff4372:    2800        .(      CMP      r0,#0
        0x1fff4374:    db06        ..      BLT      0x1fff4384 ; check_96MXtal_by_rcTracking + 32
        0x1fff4376:    6860        `h      LDR      r0,[r4,#4]
        0x1fff4378:    4308        .C      ORRS     r0,r0,r1
        0x1fff437a:    6060        ``      STR      r0,[r4,#4]
        0x1fff437c:    2003        .       MOVS     r0,#3
        0x1fff437e:    f7fefd59    ..Y.    BL       $Ven$TT$L$$WaitRTCCount ; 0x1fff2e34
        0x1fff4382:    bdf8        ..      POP      {r3-r7,pc}
        0x1fff4384:    4d36        6M      LDR      r5,[pc,#216] ; [0x1fff4460] = 0x1fff5850
        0x1fff4386:    2000        .       MOVS     r0,#0
        0x1fff4388:    6168        ha      STR      r0,[r5,#0x14]
        0x1fff438a:    6820         h      LDR      r0,[r4,#0]
        0x1fff438c:    2201        ."      MOVS     r2,#1
        0x1fff438e:    0492        ..      LSLS     r2,r2,#18
        0x1fff4390:    4310        .C      ORRS     r0,r0,r2
        0x1fff4392:    6020         `      STR      r0,[r4,#0]
        0x1fff4394:    4f33        3O      LDR      r7,[pc,#204] ; [0x1fff4464] = 0xfffefe00
        0x1fff4396:    6860        `h      LDR      r0,[r4,#4]
        0x1fff4398:    2180        .!      MOVS     r1,#0x80
        0x1fff439a:    4308        .C      ORRS     r0,r0,r1
        0x1fff439c:    6060        ``      STR      r0,[r4,#4]
        0x1fff439e:    2003        .       MOVS     r0,#3
        0x1fff43a0:    f7fefd48    ..H.    BL       $Ven$TT$L$$WaitRTCCount ; 0x1fff2e34
        0x1fff43a4:    6968        hi      LDR      r0,[r5,#0x14]
        0x1fff43a6:    1c40        @.      ADDS     r0,r0,#1
        0x1fff43a8:    6168        ha      STR      r0,[r5,#0x14]
        0x1fff43aa:    6860        `h      LDR      r0,[r4,#4]
        0x1fff43ac:    2101        .!      MOVS     r1,#1
        0x1fff43ae:    0409        ..      LSLS     r1,r1,#16
        0x1fff43b0:    4308        .C      ORRS     r0,r0,r1
        0x1fff43b2:    6060        ``      STR      r0,[r4,#4]
        0x1fff43b4:    2600        .&      MOVS     r6,#0
        0x1fff43b6:    69e0        .i      LDR      r0,[r4,#0x1c]
        0x1fff43b8:    492b        +I      LDR      r1,[pc,#172] ; [0x1fff4468] = 0x10028
        0x1fff43ba:    4038        8@      ANDS     r0,r0,r7
        0x1fff43bc:    1840        @.      ADDS     r0,r0,r1
        0x1fff43be:    61e0        .a      STR      r0,[r4,#0x1c]
        0x1fff43c0:    2003        .       MOVS     r0,#3
        0x1fff43c2:    f7fefd37    ..7.    BL       $Ven$TT$L$$WaitRTCCount ; 0x1fff2e34
        0x1fff43c6:    6a60        `j      LDR      r0,[r4,#0x24]
        0x1fff43c8:    69e1        .i      LDR      r1,[r4,#0x1c]
        0x1fff43ca:    03c0        ..      LSLS     r0,r0,#15
        0x1fff43cc:    0bc0        ..      LSRS     r0,r0,#15
        0x1fff43ce:    2208        ."      MOVS     r2,#8
        0x1fff43d0:    4391        .C      BICS     r1,r1,r2
        0x1fff43d2:    61e1        .a      STR      r1,[r4,#0x1c]
        0x1fff43d4:    68e9        .h      LDR      r1,[r5,#0xc]
        0x1fff43d6:    2206        ."      MOVS     r2,#6
        0x1fff43d8:    4351        QC      MULS     r1,r2,r1
        0x1fff43da:    4281        .B      CMP      r1,r0
        0x1fff43dc:    d301        ..      BCC      0x1fff43e2 ; check_96MXtal_by_rcTracking + 126
        0x1fff43de:    1a09        ..      SUBS     r1,r1,r0
        0x1fff43e0:    e000        ..      B        0x1fff43e4 ; check_96MXtal_by_rcTracking + 128
        0x1fff43e2:    1a41        A.      SUBS     r1,r0,r1
        0x1fff43e4:    293c        <)      CMP      r1,#0x3c
        0x1fff43e6:    d209        ..      BCS      0x1fff43fc ; check_96MXtal_by_rcTracking + 152
        0x1fff43e8:    69e2        .i      LDR      r2,[r4,#0x1c]
        0x1fff43ea:    2101        .!      MOVS     r1,#1
        0x1fff43ec:    0409        ..      LSLS     r1,r1,#16
        0x1fff43ee:    438a        .C      BICS     r2,r2,r1
        0x1fff43f0:    61e2        .a      STR      r2,[r4,#0x1c]
        0x1fff43f2:    6862        bh      LDR      r2,[r4,#4]
        0x1fff43f4:    438a        .C      BICS     r2,r2,r1
        0x1fff43f6:    6062        b`      STR      r2,[r4,#4]
        0x1fff43f8:    6128        (a      STR      r0,[r5,#0x10]
        0x1fff43fa:    bdf8        ..      POP      {r3-r7,pc}
        0x1fff43fc:    1c76        v.      ADDS     r6,r6,#1
        0x1fff43fe:    b2f6        ..      UXTB     r6,r6
        0x1fff4400:    2e05        ..      CMP      r6,#5
        0x1fff4402:    d3d8        ..      BCC      0x1fff43b6 ; check_96MXtal_by_rcTracking + 82
        0x1fff4404:    69e1        .i      LDR      r1,[r4,#0x1c]
        0x1fff4406:    2001        .       MOVS     r0,#1
        0x1fff4408:    0400        ..      LSLS     r0,r0,#16
        0x1fff440a:    4381        .C      BICS     r1,r1,r0
        0x1fff440c:    61e1        .a      STR      r1,[r4,#0x1c]
        0x1fff440e:    6861        ah      LDR      r1,[r4,#4]
        0x1fff4410:    4381        .C      BICS     r1,r1,r0
        0x1fff4412:    6061        a`      STR      r1,[r4,#4]
        0x1fff4414:    6968        hi      LDR      r0,[r5,#0x14]
        0x1fff4416:    462e        .F      MOV      r6,r5
        0x1fff4418:    2805        .(      CMP      r0,#5
        0x1fff441a:    d307        ..      BCC      0x1fff442c ; check_96MXtal_by_rcTracking + 200
        0x1fff441c:    f3bf8f4f    ..O.    DSB      
        0x1fff4420:    4913        .I      LDR      r1,[pc,#76] ; [0x1fff4470] = 0xe000ed00
        0x1fff4422:    4812        .H      LDR      r0,[pc,#72] ; [0x1fff446c] = 0x5fa0004
        0x1fff4424:    60c8        .`      STR      r0,[r1,#0xc]
        0x1fff4426:    f3bf8f4f    ..O.    DSB      
        0x1fff442a:    e7fe        ..      B        0x1fff442a ; check_96MXtal_by_rcTracking + 198
        0x1fff442c:    6860        `h      LDR      r0,[r4,#4]
        0x1fff442e:    2180        .!      MOVS     r1,#0x80
        0x1fff4430:    4388        .C      BICS     r0,r0,r1
        0x1fff4432:    6060        ``      STR      r0,[r4,#4]
        0x1fff4434:    2003        .       MOVS     r0,#3
        0x1fff4436:    f7fefcfd    ....    BL       $Ven$TT$L$$WaitRTCCount ; 0x1fff2e34
        0x1fff443a:    69e0        .i      LDR      r0,[r4,#0x1c]
        0x1fff443c:    4038        8@      ANDS     r0,r0,r7
        0x1fff443e:    3028        (0      ADDS     r0,r0,#0x28
        0x1fff4440:    61e0        .a      STR      r0,[r4,#0x1c]
        0x1fff4442:    2003        .       MOVS     r0,#3
        0x1fff4444:    f7fefcf6    ....    BL       $Ven$TT$L$$WaitRTCCount ; 0x1fff2e34
        0x1fff4448:    6a60        `j      LDR      r0,[r4,#0x24]
        0x1fff444a:    03c0        ..      LSLS     r0,r0,#15
        0x1fff444c:    0bc0        ..      LSRS     r0,r0,#15
        0x1fff444e:    60f0        .`      STR      r0,[r6,#0xc]
        0x1fff4450:    69e1        .i      LDR      r1,[r4,#0x1c]
        0x1fff4452:    2008        .       MOVS     r0,#8
        0x1fff4454:    4381        .C      BICS     r1,r1,r0
        0x1fff4456:    61e1        .a      STR      r1,[r4,#0x1c]
        0x1fff4458:    e79d        ..      B        0x1fff4396 ; check_96MXtal_by_rcTracking + 50
    $d
        0x1fff445a:    0000        ..      DCW    0
        0x1fff445c:    4000f0c0    ...@    DCD    1073803456
        0x1fff4460:    1fff5850    PX..    DCD    536827984
        0x1fff4464:    fffefe00    ....    DCD    4294901248
        0x1fff4468:    00010028    (...    DCD    65576
        0x1fff446c:    05fa0004    ....    DCD    100270084
        0x1fff4470:    e000ed00    ....    DCD    3758157056
    $t
    i.config_RTC1
    config_RTC1
        0x1fff4474:    b5f8        ..      PUSH     {r3-r7,lr}
        0x1fff4476:    4604        .F      MOV      r4,r0
        0x1fff4478:    2001        .       MOVS     r0,#1
        0x1fff447a:    f7fefcdb    ....    BL       $Ven$TT$L$$WaitRTCCount ; 0x1fff2e34
        0x1fff447e:    f7fefe89    ....    BL       $Ven$TT$L$$read_LL_remainder_time ; 0x1fff3194
        0x1fff4482:    4918        .I      LDR      r1,[pc,#96] ; [0x1fff44e4] = 0x1fff08e4
        0x1fff4484:    4a18        .J      LDR      r2,[pc,#96] ; [0x1fff44e8] = 0x4000f000
        0x1fff4486:    6008        .`      STR      r0,[r1,#0]
        0x1fff4488:    6a96        .j      LDR      r6,[r2,#0x28]
        0x1fff448a:    4b18        .K      LDR      r3,[pc,#96] ; [0x1fff44ec] = 0x1fff0a34
        0x1fff448c:    601e        .`      STR      r6,[r3,#0]
        0x1fff448e:    4b18        .K      LDR      r3,[pc,#96] ; [0x1fff44f0] = 0x40001000
        0x1fff4490:    6adf        .j      LDR      r7,[r3,#0x2c]
        0x1fff4492:    4d18        .M      LDR      r5,[pc,#96] ; [0x1fff44f4] = 0x1fff0a18
        0x1fff4494:    682d        -h      LDR      r5,[r5,#0]
        0x1fff4496:    42af        .B      CMP      r7,r5
        0x1fff4498:    d202        ..      BCS      0x1fff44a0 ; config_RTC1 + 44
        0x1fff449a:    6adb        .j      LDR      r3,[r3,#0x2c]
        0x1fff449c:    1aeb        ..      SUBS     r3,r5,r3
        0x1fff449e:    e000        ..      B        0x1fff44a2 ; config_RTC1 + 46
        0x1fff44a0:    2300        .#      MOVS     r3,#0
        0x1fff44a2:    4d15        .M      LDR      r5,[pc,#84] ; [0x1fff44f8] = 0x1fff0a1c
        0x1fff44a4:    602b        +`      STR      r3,[r5,#0]
        0x1fff44a6:    1933        3.      ADDS     r3,r6,r4
        0x1fff44a8:    62d3        .b      STR      r3,[r2,#0x2c]
        0x1fff44aa:    6a53        Sj      LDR      r3,[r2,#0x24]
        0x1fff44ac:    2429        )$      MOVS     r4,#0x29
        0x1fff44ae:    03e4        ..      LSLS     r4,r4,#15
        0x1fff44b0:    4323        #C      ORRS     r3,r3,r4
        0x1fff44b2:    6253        Sb      STR      r3,[r2,#0x24]
        0x1fff44b4:    4a11        .J      LDR      r2,[pc,#68] ; [0x1fff44fc] = 0x1fff091c
        0x1fff44b6:    7812        .x      LDRB     r2,[r2,#0]
        0x1fff44b8:    2a00        .*      CMP      r2,#0
        0x1fff44ba:    d00f        ..      BEQ      0x1fff44dc ; config_RTC1 + 104
        0x1fff44bc:    4a10        .J      LDR      r2,[pc,#64] ; [0x1fff4500] = 0x1fff0a4a
        0x1fff44be:    7813        .x      LDRB     r3,[r2,#0]
        0x1fff44c0:    2b02        .+      CMP      r3,#2
        0x1fff44c2:    d007        ..      BEQ      0x1fff44d4 ; config_RTC1 + 96
        0x1fff44c4:    7813        .x      LDRB     r3,[r2,#0]
        0x1fff44c6:    2b01        .+      CMP      r3,#1
        0x1fff44c8:    d006        ..      BEQ      0x1fff44d8 ; config_RTC1 + 100
        0x1fff44ca:    7812        .x      LDRB     r2,[r2,#0]
        0x1fff44cc:    2a03        .*      CMP      r2,#3
        0x1fff44ce:    d006        ..      BEQ      0x1fff44de ; config_RTC1 + 106
        0x1fff44d0:    1ec0        ..      SUBS     r0,r0,#3
        0x1fff44d2:    e002        ..      B        0x1fff44da ; config_RTC1 + 102
        0x1fff44d4:    380f        .8      SUBS     r0,r0,#0xf
        0x1fff44d6:    e000        ..      B        0x1fff44da ; config_RTC1 + 102
        0x1fff44d8:    3808        .8      SUBS     r0,r0,#8
        0x1fff44da:    6008        .`      STR      r0,[r1,#0]
        0x1fff44dc:    bdf8        ..      POP      {r3-r7,pc}
        0x1fff44de:    1f40        @.      SUBS     r0,r0,#5
        0x1fff44e0:    e7fb        ..      B        0x1fff44da ; config_RTC1 + 102
    $d
        0x1fff44e2:    0000        ..      DCW    0
        0x1fff44e4:    1fff08e4    ....    DCD    536807652
        0x1fff44e8:    4000f000    ...@    DCD    1073803264
        0x1fff44ec:    1fff0a34    4...    DCD    536807988
        0x1fff44f0:    40001000    ...@    DCD    1073745920
        0x1fff44f4:    1fff0a18    ....    DCD    536807960
        0x1fff44f8:    1fff0a1c    ....    DCD    536807964
        0x1fff44fc:    1fff091c    ....    DCD    536807708
        0x1fff4500:    1fff0a4a    J...    DCD    536808010
    $t
    i.efuse_init
    efuse_init
        0x1fff4504:    4903        .I      LDR      r1,[pc,#12] ; [0x1fff4514] = 0x4000f040
        0x1fff4506:    2000        .       MOVS     r0,#0
        0x1fff4508:    6148        Ha      STR      r0,[r1,#0x14]
        0x1fff450a:    4903        .I      LDR      r1,[pc,#12] ; [0x1fff4518] = 0x4000f140
        0x1fff450c:    6008        .`      STR      r0,[r1,#0]
        0x1fff450e:    6048        H`      STR      r0,[r1,#4]
        0x1fff4510:    4770        pG      BX       lr
    $d
        0x1fff4512:    0000        ..      DCW    0
        0x1fff4514:    4000f040    @..@    DCD    1073803328
        0x1fff4518:    4000f140    @..@    DCD    1073803584
    $t
    i.enterSleepProcess1
    enterSleepProcess1
        0x1fff451c:    b510        ..      PUSH     {r4,lr}
        0x1fff451e:    4604        .F      MOV      r4,r0
        0x1fff4520:    4807        .H      LDR      r0,[pc,#28] ; [0x1fff4540] = 0x1fff5850
        0x1fff4522:    6840        @h      LDR      r0,[r0,#4]
        0x1fff4524:    8d80        ..      LDRH     r0,[r0,#0x2c]
        0x1fff4526:    07c0        ..      LSLS     r0,r0,#31
        0x1fff4528:    d005        ..      BEQ      0x1fff4536 ; enterSleepProcess1 + 26
        0x1fff452a:    4806        .H      LDR      r0,[pc,#24] ; [0x1fff4544] = 0x4000f040
        0x1fff452c:    6a40        @j      LDR      r0,[r0,#0x24]
        0x1fff452e:    03c0        ..      LSLS     r0,r0,#15
        0x1fff4530:    0bc0        ..      LSRS     r0,r0,#15
        0x1fff4532:    f000fbe7    ....    BL       rc32k_cap_cal ; 0x1fff4d04
        0x1fff4536:    4620         F      MOV      r0,r4
        0x1fff4538:    f7fefe32    ..2.    BL       $Ven$TT$L$$enterSleepProcess0 ; 0x1fff31a0
        0x1fff453c:    bd10        ..      POP      {r4,pc}
    $d
        0x1fff453e:    0000        ..      DCW    0
        0x1fff4540:    1fff5850    PX..    DCD    536827984
        0x1fff4544:    4000f040    @..@    DCD    1073803328
    $t
    i.finidv
    finidv
        0x1fff4548:    b570        p.      PUSH     {r4-r6,lr}
        0x1fff454a:    b08a        ..      SUB      sp,sp,#0x28
        0x1fff454c:    2400        .$      MOVS     r4,#0
        0x1fff454e:    4d1e        .M      LDR      r5,[pc,#120] ; [0x1fff45c8] = 0x1fff5910
        0x1fff4550:    9404        ..      STR      r4,[sp,#0x10]
        0x1fff4552:    9405        ..      STR      r4,[sp,#0x14]
        0x1fff4554:    7828        (x      LDRB     r0,[r5,#0]
        0x1fff4556:    2801        .(      CMP      r0,#1
        0x1fff4558:    d006        ..      BEQ      0x1fff4568 ; finidv + 32
        0x1fff455a:    a904        ..      ADD      r1,sp,#0x10
        0x1fff455c:    2001        .       MOVS     r0,#1
        0x1fff455e:    f7fefe07    ....    BL       $Ven$TT$L$$efuse_read ; 0x1fff3170
        0x1fff4562:    2800        .(      CMP      r0,#0
        0x1fff4564:    d002        ..      BEQ      0x1fff456c ; finidv + 36
        0x1fff4566:    2000        .       MOVS     r0,#0
        0x1fff4568:    b00a        ..      ADD      sp,sp,#0x28
        0x1fff456a:    bd70        p.      POP      {r4-r6,pc}
        0x1fff456c:    9804        ..      LDR      r0,[sp,#0x10]
        0x1fff456e:    9000        ..      STR      r0,[sp,#0]
        0x1fff4570:    9805        ..      LDR      r0,[sp,#0x14]
        0x1fff4572:    9001        ..      STR      r0,[sp,#4]
        0x1fff4574:    4815        .H      LDR      r0,[pc,#84] ; [0x1fff45cc] = 0x11002900
        0x1fff4576:    6881        .h      LDR      r1,[r0,#8]
        0x1fff4578:    9102        ..      STR      r1,[sp,#8]
        0x1fff457a:    68c0        .h      LDR      r0,[r0,#0xc]
        0x1fff457c:    4913        .I      LDR      r1,[pc,#76] ; [0x1fff45cc] = 0x11002900
        0x1fff457e:    9003        ..      STR      r0,[sp,#0xc]
        0x1fff4580:    aa06        ..      ADD      r2,sp,#0x18
        0x1fff4582:    3110        .1      ADDS     r1,r1,#0x10
        0x1fff4584:    4668        hF      MOV      r0,sp
        0x1fff4586:    f7fefd4b    ..K.    BL       $Ven$TT$L$$LL_ENC_AES128_Encrypt0 ; 0x1fff3020
        0x1fff458a:    4e10        .N      LDR      r6,[pc,#64] ; [0x1fff45cc] = 0x11002900
        0x1fff458c:    2210        ."      MOVS     r2,#0x10
        0x1fff458e:    3620         6      ADDS     r6,r6,#0x20
        0x1fff4590:    4631        1F      MOV      r1,r6
        0x1fff4592:    a806        ..      ADD      r0,sp,#0x18
        0x1fff4594:    f7fefe0a    ....    BL       $Ven$TT$L$$osal_memcmp ; 0x1fff31ac
        0x1fff4598:    2800        .(      CMP      r0,#0
        0x1fff459a:    d011        ..      BEQ      0x1fff45c0 ; finidv + 120
        0x1fff459c:    2001        .       MOVS     r0,#1
        0x1fff459e:    7028        (p      STRB     r0,[r5,#0]
        0x1fff45a0:    4a0b        .J      LDR      r2,[pc,#44] ; [0x1fff45d0] = 0x1fff5a1c
        0x1fff45a2:    4631        1F      MOV      r1,r6
        0x1fff45a4:    4668        hF      MOV      r0,sp
        0x1fff45a6:    f7fefd3b    ..;.    BL       $Ven$TT$L$$LL_ENC_AES128_Encrypt0 ; 0x1fff3020
        0x1fff45aa:    9404        ..      STR      r4,[sp,#0x10]
        0x1fff45ac:    2000        .       MOVS     r0,#0
        0x1fff45ae:    4669        iF      MOV      r1,sp
        0x1fff45b0:    9405        ..      STR      r4,[sp,#0x14]
        0x1fff45b2:    0082        ..      LSLS     r2,r0,#2
        0x1fff45b4:    1c40        @.      ADDS     r0,r0,#1
        0x1fff45b6:    508c        .P      STR      r4,[r1,r2]
        0x1fff45b8:    2804        .(      CMP      r0,#4
        0x1fff45ba:    dbfa        ..      BLT      0x1fff45b2 ; finidv + 106
        0x1fff45bc:    2001        .       MOVS     r0,#1
        0x1fff45be:    e7d3        ..      B        0x1fff4568 ; finidv + 32
        0x1fff45c0:    20ff        .       MOVS     r0,#0xff
        0x1fff45c2:    7028        (p      STRB     r0,[r5,#0]
        0x1fff45c4:    e7cf        ..      B        0x1fff4566 ; finidv + 30
    $d
        0x1fff45c6:    0000        ..      DCW    0
        0x1fff45c8:    1fff5910    .Y..    DCD    536828176
        0x1fff45cc:    11002900    .)..    DCD    285223168
        0x1fff45d0:    1fff5a1c    .Z..    DCD    536828444
    $t
    i.hal_rom_boot_init
    hal_rom_boot_init
        0x1fff45d4:    b510        ..      PUSH     {r4,lr}
        0x1fff45d6:    f7fffe0d    ....    BL       _rom_sec_boot_init ; 0x1fff41f4
        0x1fff45da:    bd10        ..      POP      {r4,pc}
    i.llCalcMaxScanTime1
    llCalcMaxScanTime1
        0x1fff45dc:    b570        p.      PUSH     {r4-r6,lr}
        0x1fff45de:    4e0d        .N      LDR      r6,[pc,#52] ; [0x1fff4614] = 0x1fff5850
        0x1fff45e0:    6870        ph      LDR      r0,[r6,#4]
        0x1fff45e2:    30ff        .0      ADDS     r0,r0,#0xff
        0x1fff45e4:    3001        .0      ADDS     r0,#1
        0x1fff45e6:    6a05        .j      LDR      r5,[r0,#0x20]
        0x1fff45e8:    f7fefc60    ..`.    BL       $Ven$TT$L$$drv_disable_irq ; 0x1fff2eac
        0x1fff45ec:    f000fbb6    ....    BL       read_LL_remainder_time1 ; 0x1fff4d5c
        0x1fff45f0:    6871        qh      LDR      r1,[r6,#4]
        0x1fff45f2:    2400        .$      MOVS     r4,#0
        0x1fff45f4:    31ff        .1      ADDS     r1,r1,#0xff
        0x1fff45f6:    3101        .1      ADDS     r1,#1
        0x1fff45f8:    6a49        Ij      LDR      r1,[r1,#0x24]
        0x1fff45fa:    1949        I.      ADDS     r1,r1,r5
        0x1fff45fc:    4281        .B      CMP      r1,r0
        0x1fff45fe:    d204        ..      BCS      0x1fff460a ; llCalcMaxScanTime1 + 46
        0x1fff4600:    4905        .I      LDR      r1,[pc,#20] ; [0x1fff4618] = 0x1fff0998
        0x1fff4602:    6809        .h      LDR      r1,[r1,#0]
        0x1fff4604:    2900        .)      CMP      r1,#0
        0x1fff4606:    d100        ..      BNE      0x1fff460a ; llCalcMaxScanTime1 + 46
        0x1fff4608:    1b44        D.      SUBS     r4,r0,r5
        0x1fff460a:    f7fefc55    ..U.    BL       $Ven$TT$L$$drv_enable_irq ; 0x1fff2eb8
        0x1fff460e:    4620         F      MOV      r0,r4
        0x1fff4610:    bd70        p.      POP      {r4-r6,pc}
    $d
        0x1fff4612:    0000        ..      DCW    0
        0x1fff4614:    1fff5850    PX..    DCD    536827984
        0x1fff4618:    1fff0998    ....    DCD    536807832
    $t
    i.llConnTerminate1
    llConnTerminate1
        0x1fff461c:    b570        p.      PUSH     {r4-r6,lr}
        0x1fff461e:    460d        .F      MOV      r5,r1
        0x1fff4620:    4604        .F      MOV      r4,r0
        0x1fff4622:    2928        ()      CMP      r1,#0x28
        0x1fff4624:    d110        ..      BNE      0x1fff4648 ; llConnTerminate1 + 44
        0x1fff4626:    20a4        .       MOVS     r0,#0xa4
        0x1fff4628:    5b00        .[      LDRH     r0,[r0,r4]
        0x1fff462a:    88e1        ..      LDRH     r1,[r4,#6]
        0x1fff462c:    1a40        @.      SUBS     r0,r0,r1
        0x1fff462e:    490b        .I      LDR      r1,[pc,#44] ; [0x1fff465c] = 0x7fff
        0x1fff4630:    b280        ..      UXTH     r0,r0
        0x1fff4632:    4288        .B      CMP      r0,r1
        0x1fff4634:    d308        ..      BCC      0x1fff4648 ; llConnTerminate1 + 44
        0x1fff4636:    4621        !F      MOV      r1,r4
        0x1fff4638:    316a        j1      ADDS     r1,r1,#0x6a
        0x1fff463a:    2205        ."      MOVS     r2,#5
        0x1fff463c:    460e        .F      MOV      r6,r1
        0x1fff463e:    1f48        H.      SUBS     r0,r1,#5
        0x1fff4640:    f7fefdb4    ....    BL       $Ven$TT$L$$osal_memcmp ; 0x1fff31ac
        0x1fff4644:    2800        .(      CMP      r0,#0
        0x1fff4646:    d004        ..      BEQ      0x1fff4652 ; llConnTerminate1 + 54
        0x1fff4648:    4629        )F      MOV      r1,r5
        0x1fff464a:    4620         F      MOV      r0,r4
        0x1fff464c:    f7fefdb4    ....    BL       $Ven$TT$L$$llConnTerminate0 ; 0x1fff31b8
        0x1fff4650:    bd70        p.      POP      {r4-r6,pc}
        0x1fff4652:    4631        1F      MOV      r1,r6
        0x1fff4654:    4620         F      MOV      r0,r4
        0x1fff4656:    f7fefdb5    ....    BL       $Ven$TT$L$$llProcessChanMap ; 0x1fff31c4
        0x1fff465a:    bd70        p.      POP      {r4-r6,pc}
    $d
        0x1fff465c:    00007fff    ....    DCD    32767
    $t
    i.llProcessTxData1
    llProcessTxData1
        0x1fff4660:    b510        ..      PUSH     {r4,lr}
        0x1fff4662:    2900        .)      CMP      r1,#0
        0x1fff4664:    d001        ..      BEQ      0x1fff466a ; llProcessTxData1 + 10
        0x1fff4666:    f7fefdb3    ....    BL       $Ven$TT$L$$llProcessTxData0 ; 0x1fff31d0
        0x1fff466a:    bd10        ..      POP      {r4,pc}
    i.llSecAdvAllow1
    llSecAdvAllow1
        0x1fff466c:    b570        p.      PUSH     {r4-r6,lr}
        0x1fff466e:    2400        .$      MOVS     r4,#0
        0x1fff4670:    f7fefc1c    ....    BL       $Ven$TT$L$$drv_disable_irq ; 0x1fff2eac
        0x1fff4674:    480d        .H      LDR      r0,[pc,#52] ; [0x1fff46ac] = 0x1fff5850
        0x1fff4676:    6840        @h      LDR      r0,[r0,#4]
        0x1fff4678:    30ff        .0      ADDS     r0,r0,#0xff
        0x1fff467a:    3019        .0      ADDS     r0,r0,#0x19
        0x1fff467c:    c860        `.      LDM      r0!,{r5,r6}
        0x1fff467e:    f000fb6d    ..m.    BL       read_LL_remainder_time1 ; 0x1fff4d5c
        0x1fff4682:    19a9        ..      ADDS     r1,r5,r6
        0x1fff4684:    4281        .B      CMP      r1,r0
        0x1fff4686:    d203        ..      BCS      0x1fff4690 ; llSecAdvAllow1 + 36
        0x1fff4688:    4809        .H      LDR      r0,[pc,#36] ; [0x1fff46b0] = 0x1fff0998
        0x1fff468a:    6800        .h      LDR      r0,[r0,#0]
        0x1fff468c:    2800        .(      CMP      r0,#0
        0x1fff468e:    d00a        ..      BEQ      0x1fff46a6 ; llSecAdvAllow1 + 58
        0x1fff4690:    4908        .I      LDR      r1,[pc,#32] ; [0x1fff46b4] = 0x1fff0923
        0x1fff4692:    2004        .       MOVS     r0,#4
        0x1fff4694:    7008        .p      STRB     r0,[r1,#0]
        0x1fff4696:    4808        .H      LDR      r0,[pc,#32] ; [0x1fff46b8] = 0x1fff0ffc
        0x1fff4698:    6981        .i      LDR      r1,[r0,#0x18]
        0x1fff469a:    1c49        I.      ADDS     r1,r1,#1
        0x1fff469c:    6181        .a      STR      r1,[r0,#0x18]
        0x1fff469e:    f7fefc0b    ....    BL       $Ven$TT$L$$drv_enable_irq ; 0x1fff2eb8
        0x1fff46a2:    4620         F      MOV      r0,r4
        0x1fff46a4:    bd70        p.      POP      {r4-r6,pc}
        0x1fff46a6:    2401        .$      MOVS     r4,#1
        0x1fff46a8:    e7f9        ..      B        0x1fff469e ; llSecAdvAllow1 + 50
    $d
        0x1fff46aa:    0000        ..      DCW    0
        0x1fff46ac:    1fff5850    PX..    DCD    536827984
        0x1fff46b0:    1fff0998    ....    DCD    536807832
        0x1fff46b4:    1fff0923    #...    DCD    536807715
        0x1fff46b8:    1fff0ffc    ....    DCD    536809468
    $t
    i.llSetupNextSlaveEvent1
    llSetupNextSlaveEvent1
        0x1fff46bc:    b510        ..      PUSH     {r4,lr}
        0x1fff46be:    f7fefd8d    ....    BL       $Ven$TT$L$$llSetupNextSlaveEvent0 ; 0x1fff31dc
        0x1fff46c2:    4906        .I      LDR      r1,[pc,#24] ; [0x1fff46dc] = 0x1fff0d30
        0x1fff46c4:    22a1        ."      MOVS     r2,#0xa1
        0x1fff46c6:    7889        .x      LDRB     r1,[r1,#2]
        0x1fff46c8:    0092        ..      LSLS     r2,r2,#2
        0x1fff46ca:    4351        QC      MULS     r1,r2,r1
        0x1fff46cc:    4a04        .J      LDR      r2,[pc,#16] ; [0x1fff46e0] = 0x1fff0934
        0x1fff46ce:    6812        .h      LDR      r2,[r2,#0]
        0x1fff46d0:    1889        ..      ADDS     r1,r1,r2
        0x1fff46d2:    4a04        .J      LDR      r2,[pc,#16] ; [0x1fff46e4] = 0x1fff5850
        0x1fff46d4:    8c49        I.      LDRH     r1,[r1,#0x22]
        0x1fff46d6:    8051        Q.      STRH     r1,[r2,#2]
        0x1fff46d8:    bd10        ..      POP      {r4,pc}
    $d
        0x1fff46da:    0000        ..      DCW    0
        0x1fff46dc:    1fff0d30    0...    DCD    536808752
        0x1fff46e0:    1fff0934    4...    DCD    536807732
        0x1fff46e4:    1fff5850    PX..    DCD    536827984
    $t
    i.llSetupSecAdvEvt1
    llSetupSecAdvEvt1
        0x1fff46e8:    b570        p.      PUSH     {r4-r6,lr}
        0x1fff46ea:    481f        .H      LDR      r0,[pc,#124] ; [0x1fff4768] = 0x1fff091c
        0x1fff46ec:    2201        ."      MOVS     r2,#1
        0x1fff46ee:    7801        .x      LDRB     r1,[r0,#0]
        0x1fff46f0:    4d1e        .M      LDR      r5,[pc,#120] ; [0x1fff476c] = 0x1fff0ba6
        0x1fff46f2:    2900        .)      CMP      r1,#0
        0x1fff46f4:    d015        ..      BEQ      0x1fff4722 ; llSetupSecAdvEvt1 + 58
        0x1fff46f6:    481e        .H      LDR      r0,[pc,#120] ; [0x1fff4770] = 0x1fff0d30
        0x1fff46f8:    21a1        .!      MOVS     r1,#0xa1
        0x1fff46fa:    7880        .x      LDRB     r0,[r0,#2]
        0x1fff46fc:    0089        ..      LSLS     r1,r1,#2
        0x1fff46fe:    4348        HC      MULS     r0,r1,r0
        0x1fff4700:    491c        .I      LDR      r1,[pc,#112] ; [0x1fff4774] = 0x1fff0934
        0x1fff4702:    4c1d        .L      LDR      r4,[pc,#116] ; [0x1fff4778] = 0x1fff0a49
        0x1fff4704:    6809        .h      LDR      r1,[r1,#0]
        0x1fff4706:    7022        "p      STRB     r2,[r4,#0]
        0x1fff4708:    1846        F.      ADDS     r6,r0,r1
        0x1fff470a:    7820         x      LDRB     r0,[r4,#0]
        0x1fff470c:    f000fcb2    ....    BL       rf_phy_change_cfg0 ; 0x1fff5074
        0x1fff4710:    7ba8        .{      LDRB     r0,[r5,#0xe]
        0x1fff4712:    2800        .(      CMP      r0,#0
        0x1fff4714:    d01a        ..      BEQ      0x1fff474c ; llSetupSecAdvEvt1 + 100
        0x1fff4716:    2803        .(      CMP      r0,#3
        0x1fff4718:    d01b        ..      BEQ      0x1fff4752 ; llSetupSecAdvEvt1 + 106
        0x1fff471a:    2802        .(      CMP      r0,#2
        0x1fff471c:    d01c        ..      BEQ      0x1fff4758 ; llSetupSecAdvEvt1 + 112
        0x1fff471e:    2000        .       MOVS     r0,#0
        0x1fff4720:    bd70        p.      POP      {r4-r6,pc}
        0x1fff4722:    7ba9        .{      LDRB     r1,[r5,#0xe]
        0x1fff4724:    2900        .)      CMP      r1,#0
        0x1fff4726:    d004        ..      BEQ      0x1fff4732 ; llSetupSecAdvEvt1 + 74
        0x1fff4728:    2903        .)      CMP      r1,#3
        0x1fff472a:    d004        ..      BEQ      0x1fff4736 ; llSetupSecAdvEvt1 + 78
        0x1fff472c:    2902        .)      CMP      r1,#2
        0x1fff472e:    d004        ..      BEQ      0x1fff473a ; llSetupSecAdvEvt1 + 82
        0x1fff4730:    e005        ..      B        0x1fff473e ; llSetupSecAdvEvt1 + 86
        0x1fff4732:    7002        .p      STRB     r2,[r0,#0]
        0x1fff4734:    e003        ..      B        0x1fff473e ; llSetupSecAdvEvt1 + 86
        0x1fff4736:    2104        .!      MOVS     r1,#4
        0x1fff4738:    e000        ..      B        0x1fff473c ; llSetupSecAdvEvt1 + 84
        0x1fff473a:    2103        .!      MOVS     r1,#3
        0x1fff473c:    7001        .p      STRB     r1,[r0,#0]
        0x1fff473e:    f7fefcf3    ....    BL       $Ven$TT$L$$llSetupAdv ; 0x1fff3128
        0x1fff4742:    490e        .I      LDR      r1,[pc,#56] ; [0x1fff477c] = 0x1fff0923
        0x1fff4744:    2000        .       MOVS     r0,#0
        0x1fff4746:    7008        .p      STRB     r0,[r1,#0]
        0x1fff4748:    2001        .       MOVS     r0,#1
        0x1fff474a:    bd70        p.      POP      {r4-r6,pc}
        0x1fff474c:    f7fefd4c    ..L.    BL       $Ven$TT$L$$llSetupSecConnectableAdvEvt ; 0x1fff31e8
        0x1fff4750:    e004        ..      B        0x1fff475c ; llSetupSecAdvEvt1 + 116
        0x1fff4752:    f7fefd4f    ..O.    BL       $Ven$TT$L$$llSetupSecNonConnectableAdvEvt ; 0x1fff31f4
        0x1fff4756:    e001        ..      B        0x1fff475c ; llSetupSecAdvEvt1 + 116
        0x1fff4758:    f7fefd52    ..R.    BL       $Ven$TT$L$$llSetupSecScannableAdvEvt ; 0x1fff3200
        0x1fff475c:    36ff        .6      ADDS     r6,r6,#0xff
        0x1fff475e:    36ff        .6      ADDS     r6,r6,#0xff
        0x1fff4760:    3602        .6      ADDS     r6,#2
        0x1fff4762:    7b31        1{      LDRB     r1,[r6,#0xc]
        0x1fff4764:    7021        !p      STRB     r1,[r4,#0]
        0x1fff4766:    bd70        p.      POP      {r4-r6,pc}
    $d
        0x1fff4768:    1fff091c    ....    DCD    536807708
        0x1fff476c:    1fff0ba6    ....    DCD    536808358
        0x1fff4770:    1fff0d30    0...    DCD    536808752
        0x1fff4774:    1fff0934    4...    DCD    536807732
        0x1fff4778:    1fff0a49    I...    DCD    536808009
        0x1fff477c:    1fff0923    #...    DCD    536807715
    $t
    i.ll_adptive_adj_next_time1
    ll_adptive_adj_next_time1
        0x1fff4780:    b570        p.      PUSH     {r4-r6,lr}
        0x1fff4782:    4d26        &M      LDR      r5,[pc,#152] ; [0x1fff481c] = 0x1fff081c
        0x1fff4784:    4e26        &N      LDR      r6,[pc,#152] ; [0x1fff4820] = 0x1fff0818
        0x1fff4786:    6828        (h      LDR      r0,[r5,#0]
        0x1fff4788:    2800        .(      CMP      r0,#0
        0x1fff478a:    d004        ..      BEQ      0x1fff4796 ; ll_adptive_adj_next_time1 + 22
        0x1fff478c:    f7fefd3e    ..>.    BL       $Ven$TT$L$$ll_hw_get_loop_cycle ; 0x1fff320c
        0x1fff4790:    7829        )x      LDRB     r1,[r5,#0]
        0x1fff4792:    40c8        .@      LSRS     r0,r0,r1
        0x1fff4794:    e004        ..      B        0x1fff47a0 ; ll_adptive_adj_next_time1 + 32
        0x1fff4796:    f7fefd39    ..9.    BL       $Ven$TT$L$$ll_hw_get_loop_cycle ; 0x1fff320c
        0x1fff479a:    6831        1h      LDR      r1,[r6,#0]
        0x1fff479c:    f7fefb68    ..h.    BL       $Ven$TT$L$$__aeabi_uidivmod ; 0x1fff2e70
        0x1fff47a0:    4604        .F      MOV      r4,r0
        0x1fff47a2:    6828        (h      LDR      r0,[r5,#0]
        0x1fff47a4:    2800        .(      CMP      r0,#0
        0x1fff47a6:    d004        ..      BEQ      0x1fff47b2 ; ll_adptive_adj_next_time1 + 50
        0x1fff47a8:    f7fefd36    ..6.    BL       $Ven$TT$L$$ll_hw_get_anchor ; 0x1fff3218
        0x1fff47ac:    7829        )x      LDRB     r1,[r5,#0]
        0x1fff47ae:    40c8        .@      LSRS     r0,r0,r1
        0x1fff47b0:    e004        ..      B        0x1fff47bc ; ll_adptive_adj_next_time1 + 60
        0x1fff47b2:    f7fefd31    ..1.    BL       $Ven$TT$L$$ll_hw_get_anchor ; 0x1fff3218
        0x1fff47b6:    6831        1h      LDR      r1,[r6,#0]
        0x1fff47b8:    f7fefb5a    ..Z.    BL       $Ven$TT$L$$__aeabi_uidivmod ; 0x1fff2e70
        0x1fff47bc:    4919        .I      LDR      r1,[pc,#100] ; [0x1fff4824] = 0x1fff0d30
        0x1fff47be:    22a1        ."      MOVS     r2,#0xa1
        0x1fff47c0:    7889        .x      LDRB     r1,[r1,#2]
        0x1fff47c2:    0092        ..      LSLS     r2,r2,#2
        0x1fff47c4:    4351        QC      MULS     r1,r2,r1
        0x1fff47c6:    4a18        .J      LDR      r2,[pc,#96] ; [0x1fff4828] = 0x1fff0934
        0x1fff47c8:    4b18        .K      LDR      r3,[pc,#96] ; [0x1fff482c] = 0x1fff5850
        0x1fff47ca:    6812        .h      LDR      r2,[r2,#0]
        0x1fff47cc:    1889        ..      ADDS     r1,r1,r2
        0x1fff47ce:    780d        .x      LDRB     r5,[r1,#0]
        0x1fff47d0:    4a17        .J      LDR      r2,[pc,#92] ; [0x1fff4830] = 0x1fff09a0
        0x1fff47d2:    2d00        .-      CMP      r5,#0
        0x1fff47d4:    d017        ..      BEQ      0x1fff4806 ; ll_adptive_adj_next_time1 + 134
        0x1fff47d6:    31ff        .1      ADDS     r1,r1,#0xff
        0x1fff47d8:    31ff        .1      ADDS     r1,r1,#0xff
        0x1fff47da:    3102        .1      ADDS     r1,#2
        0x1fff47dc:    6c4c        Ll      LDR      r4,[r1,#0x44]
        0x1fff47de:    4815        .H      LDR      r0,[pc,#84] ; [0x1fff4834] = 0x1fff099c
        0x1fff47e0:    1c64        d.      ADDS     r4,r4,#1
        0x1fff47e2:    644c        Ld      STR      r4,[r1,#0x44]
        0x1fff47e4:    6800        .h      LDR      r0,[r0,#0]
        0x1fff47e6:    6899        .h      LDR      r1,[r3,#8]
        0x1fff47e8:    4288        .B      CMP      r0,r1
        0x1fff47ea:    d301        ..      BCC      0x1fff47f0 ; ll_adptive_adj_next_time1 + 112
        0x1fff47ec:    1a40        @.      SUBS     r0,r0,r1
        0x1fff47ee:    e002        ..      B        0x1fff47f6 ; ll_adptive_adj_next_time1 + 118
        0x1fff47f0:    4b11        .K      LDR      r3,[pc,#68] ; [0x1fff4838] = 0x3fffff
        0x1fff47f2:    1a59        Y.      SUBS     r1,r3,r1
        0x1fff47f4:    1808        ..      ADDS     r0,r1,r0
        0x1fff47f6:    38d2        .8      SUBS     r0,r0,#0xd2
        0x1fff47f8:    6010        .`      STR      r0,[r2,#0]
        0x1fff47fa:    2c01        .,      CMP      r4,#1
        0x1fff47fc:    d102        ..      BNE      0x1fff4804 ; ll_adptive_adj_next_time1 + 132
        0x1fff47fe:    30ff        .0      ADDS     r0,r0,#0xff
        0x1fff4800:    30f5        .0      ADDS     r0,r0,#0xf5
        0x1fff4802:    6010        .`      STR      r0,[r2,#0]
        0x1fff4804:    bd70        p.      POP      {r4-r6,pc}
        0x1fff4806:    31ff        .1      ADDS     r1,r1,#0xff
        0x1fff4808:    31ff        .1      ADDS     r1,r1,#0xff
        0x1fff480a:    2500        .%      MOVS     r5,#0
        0x1fff480c:    3102        .1      ADDS     r1,#2
        0x1fff480e:    644d        Md      STR      r5,[r1,#0x44]
        0x1fff4810:    6859        Yh      LDR      r1,[r3,#4]
        0x1fff4812:    1a20         .      SUBS     r0,r4,r0
        0x1fff4814:    68c9        .h      LDR      r1,[r1,#0xc]
        0x1fff4816:    1840        @.      ADDS     r0,r0,r1
        0x1fff4818:    e7f3        ..      B        0x1fff4802 ; ll_adptive_adj_next_time1 + 130
    $d
        0x1fff481a:    0000        ..      DCW    0
        0x1fff481c:    1fff081c    ....    DCD    536807452
        0x1fff4820:    1fff0818    ....    DCD    536807448
        0x1fff4824:    1fff0d30    0...    DCD    536808752
        0x1fff4828:    1fff0934    4...    DCD    536807732
        0x1fff482c:    1fff5850    PX..    DCD    536827984
        0x1fff4830:    1fff09a0    ....    DCD    536807840
        0x1fff4834:    1fff099c    ....    DCD    536807836
        0x1fff4838:    003fffff    ..?.    DCD    4194303
    $t
    i.ll_generateTxBuffer1
    ll_generateTxBuffer1
        0x1fff483c:    b5f3        ..      PUSH     {r0,r1,r4-r7,lr}
        0x1fff483e:    4606        .F      MOV      r6,r0
        0x1fff4840:    4865        eH      LDR      r0,[pc,#404] ; [0x1fff49d8] = 0x1fff0d30
        0x1fff4842:    21a1        .!      MOVS     r1,#0xa1
        0x1fff4844:    7880        .x      LDRB     r0,[r0,#2]
        0x1fff4846:    0089        ..      LSLS     r1,r1,#2
        0x1fff4848:    4348        HC      MULS     r0,r1,r0
        0x1fff484a:    4964        dI      LDR      r1,[pc,#400] ; [0x1fff49dc] = 0x1fff0934
        0x1fff484c:    b083        ..      SUB      sp,sp,#0xc
        0x1fff484e:    6809        .h      LDR      r1,[r1,#0]
        0x1fff4850:    22a1        ."      MOVS     r2,#0xa1
        0x1fff4852:    1844        D.      ADDS     r4,r0,r1
        0x1fff4854:    4620         F      MOV      r0,r4
        0x1fff4856:    30ff        .0      ADDS     r0,r0,#0xff
        0x1fff4858:    3021        !0      ADDS     r0,r0,#0x21
        0x1fff485a:    495f        _I      LDR      r1,[pc,#380] ; [0x1fff49d8] = 0x1fff0d30
        0x1fff485c:    9000        ..      STR      r0,[sp,#0]
        0x1fff485e:    7889        .x      LDRB     r1,[r1,#2]
        0x1fff4860:    0092        ..      LSLS     r2,r2,#2
        0x1fff4862:    4351        QC      MULS     r1,r2,r1
        0x1fff4864:    4a5d        ]J      LDR      r2,[pc,#372] ; [0x1fff49dc] = 0x1fff0934
        0x1fff4866:    7d40        @}      LDRB     r0,[r0,#0x15]
        0x1fff4868:    6812        .h      LDR      r2,[r2,#0]
        0x1fff486a:    2500        .%      MOVS     r5,#0
        0x1fff486c:    188f        ..      ADDS     r7,r1,r2
        0x1fff486e:    37ff        .7      ADDS     r7,r7,#0xff
        0x1fff4870:    3781        .7      ADDS     r7,r7,#0x81
        0x1fff4872:    2832        2(      CMP      r0,#0x32
        0x1fff4874:    d01d        ..      BEQ      0x1fff48b2 ; ll_generateTxBuffer1 + 118
        0x1fff4876:    2822        "(      CMP      r0,#0x22
        0x1fff4878:    d01b        ..      BEQ      0x1fff48b2 ; ll_generateTxBuffer1 + 118
        0x1fff487a:    6af8        .j      LDR      r0,[r7,#0x2c]
        0x1fff487c:    6801        .h      LDR      r1,[r0,#0]
        0x1fff487e:    2900        .)      CMP      r1,#0
        0x1fff4880:    d009        ..      BEQ      0x1fff4896 ; ll_generateTxBuffer1 + 90
        0x1fff4882:    8881        ..      LDRH     r1,[r0,#4]
        0x1fff4884:    1d00        ..      ADDS     r0,r0,#4
        0x1fff4886:    0a09        ..      LSRS     r1,r1,#8
        0x1fff4888:    1c89        ..      ADDS     r1,r1,#2
        0x1fff488a:    f7fefccb    ....    BL       $Ven$TT$L$$ll_hw_write_tfifo ; 0x1fff3224
        0x1fff488e:    6af9        .j      LDR      r1,[r7,#0x2c]
        0x1fff4890:    2000        .       MOVS     r0,#0
        0x1fff4892:    2501        .%      MOVS     r5,#1
        0x1fff4894:    6008        .`      STR      r0,[r1,#0]
        0x1fff4896:    f7fefccb    ....    BL       $Ven$TT$L$$ll_hw_get_tfifo_wrptr ; 0x1fff3230
        0x1fff489a:    9904        ..      LDR      r1,[sp,#0x10]
        0x1fff489c:    4627        'F      MOV      r7,r4
        0x1fff489e:    37ff        .7      ADDS     r7,r7,#0xff
        0x1fff48a0:    8008        ..      STRH     r0,[r1,#0]
        0x1fff48a2:    37c1        .7      ADDS     r7,r7,#0xc1
        0x1fff48a4:    7c38        8|      LDRB     r0,[r7,#0x10]
        0x1fff48a6:    2800        .(      CMP      r0,#0
        0x1fff48a8:    d021        !.      BEQ      0x1fff48ee ; ll_generateTxBuffer1 + 178
        0x1fff48aa:    42b0        .B      CMP      r0,r6
        0x1fff48ac:    dc1f        ..      BGT      0x1fff48ee ; ll_generateTxBuffer1 + 178
        0x1fff48ae:    2000        .       MOVS     r0,#0
        0x1fff48b0:    e014        ..      B        0x1fff48dc ; ll_generateTxBuffer1 + 160
        0x1fff48b2:    494b        KI      LDR      r1,[pc,#300] ; [0x1fff49e0] = 0x40031400
        0x1fff48b4:    2001        .       MOVS     r0,#1
        0x1fff48b6:    6008        .`      STR      r0,[r1,#0]
        0x1fff48b8:    2000        .       MOVS     r0,#0
        0x1fff48ba:    6af9        .j      LDR      r1,[r7,#0x2c]
        0x1fff48bc:    2501        .%      MOVS     r5,#1
        0x1fff48be:    6008        .`      STR      r0,[r1,#0]
        0x1fff48c0:    e7e9        ..      B        0x1fff4896 ; ll_generateTxBuffer1 + 90
        0x1fff48c2:    0080        ..      LSLS     r0,r0,#2
        0x1fff48c4:    1900        ..      ADDS     r0,r0,r4
        0x1fff48c6:    30ff        .0      ADDS     r0,r0,#0xff
        0x1fff48c8:    3081        .0      ADDS     r0,r0,#0x81
        0x1fff48ca:    6b00        .k      LDR      r0,[r0,#0x30]
        0x1fff48cc:    8881        ..      LDRH     r1,[r0,#4]
        0x1fff48ce:    1d00        ..      ADDS     r0,r0,#4
        0x1fff48d0:    0a09        ..      LSRS     r1,r1,#8
        0x1fff48d2:    1c89        ..      ADDS     r1,r1,#2
        0x1fff48d4:    f7fefca6    ....    BL       $Ven$TT$L$$ll_hw_write_tfifo ; 0x1fff3224
        0x1fff48d8:    9801        ..      LDR      r0,[sp,#4]
        0x1fff48da:    1c40        @.      ADDS     r0,r0,#1
        0x1fff48dc:    9001        ..      STR      r0,[sp,#4]
        0x1fff48de:    7c39        9|      LDRB     r1,[r7,#0x10]
        0x1fff48e0:    4281        .B      CMP      r1,r0
        0x1fff48e2:    dcee        ..      BGT      0x1fff48c2 ; ll_generateTxBuffer1 + 134
        0x1fff48e4:    b2c8        ..      UXTB     r0,r1
        0x1fff48e6:    1a36        6.      SUBS     r6,r6,r0
        0x1fff48e8:    1945        E.      ADDS     r5,r0,r5
        0x1fff48ea:    2000        .       MOVS     r0,#0
        0x1fff48ec:    7438        8t      STRB     r0,[r7,#0x10]
        0x1fff48ee:    493d        =I      LDR      r1,[pc,#244] ; [0x1fff49e4] = 0x1fff10e0
        0x1fff48f0:    2000        .       MOVS     r0,#0
        0x1fff48f2:    70c8        .p      STRB     r0,[r1,#3]
        0x1fff48f4:    20ff        .       MOVS     r0,#0xff
        0x1fff48f6:    30ad        .0      ADDS     r0,r0,#0xad
        0x1fff48f8:    5900        .Y      LDR      r0,[r0,r4]
        0x1fff48fa:    6801        .h      LDR      r1,[r0,#0]
        0x1fff48fc:    2900        .)      CMP      r1,#0
        0x1fff48fe:    d003        ..      BEQ      0x1fff4908 ; ll_generateTxBuffer1 + 204
        0x1fff4900:    7900        .y      LDRB     r0,[r0,#4]
        0x1fff4902:    43c0        .C      MVNS     r0,r0
        0x1fff4904:    0780        ..      LSLS     r0,r0,#30
        0x1fff4906:    d01e        ..      BEQ      0x1fff4946 ; ll_generateTxBuffer1 + 266
        0x1fff4908:    9800        ..      LDR      r0,[sp,#0]
        0x1fff490a:    7dc0        .}      LDRB     r0,[r0,#0x17]
        0x1fff490c:    2800        .(      CMP      r0,#0
        0x1fff490e:    d01a        ..      BEQ      0x1fff4946 ; ll_generateTxBuffer1 + 266
        0x1fff4910:    9800        ..      LDR      r0,[sp,#0]
        0x1fff4912:    7d80        .}      LDRB     r0,[r0,#0x16]
        0x1fff4914:    2800        .(      CMP      r0,#0
        0x1fff4916:    d116        ..      BNE      0x1fff4946 ; ll_generateTxBuffer1 + 266
        0x1fff4918:    7c38        8|      LDRB     r0,[r7,#0x10]
        0x1fff491a:    42b0        .B      CMP      r0,r6
        0x1fff491c:    da13        ..      BGE      0x1fff4946 ; ll_generateTxBuffer1 + 266
        0x1fff491e:    20ff        .       MOVS     r0,#0xff
        0x1fff4920:    3049        I0      ADDS     r0,r0,#0x49
        0x1fff4922:    5b00        .[      LDRH     r0,[r0,r4]
        0x1fff4924:    0a01        ..      LSRS     r1,r0,#8
        0x1fff4926:    4620         F      MOV      r0,r4
        0x1fff4928:    30ff        .0      ADDS     r0,r0,#0xff
        0x1fff492a:    3049        I0      ADDS     r0,r0,#0x49
        0x1fff492c:    1c89        ..      ADDS     r1,r1,#2
        0x1fff492e:    f7fefc79    ..y.    BL       $Ven$TT$L$$ll_hw_write_tfifo ; 0x1fff3224
        0x1fff4932:    9900        ..      LDR      r1,[sp,#0]
        0x1fff4934:    2000        .       MOVS     r0,#0
        0x1fff4936:    75c8        .u      STRB     r0,[r1,#0x17]
        0x1fff4938:    9800        ..      LDR      r0,[sp,#0]
        0x1fff493a:    2101        .!      MOVS     r1,#1
        0x1fff493c:    7581        .u      STRB     r1,[r0,#0x16]
        0x1fff493e:    4829        )H      LDR      r0,[pc,#164] ; [0x1fff49e4] = 0x1fff10e0
        0x1fff4940:    1c6d        m.      ADDS     r5,r5,#1
        0x1fff4942:    70c1        .p      STRB     r1,[r0,#3]
        0x1fff4944:    1e76        v.      SUBS     r6,r6,#1
        0x1fff4946:    7c38        8|      LDRB     r0,[r7,#0x10]
        0x1fff4948:    2800        .(      CMP      r0,#0
        0x1fff494a:    d002        ..      BEQ      0x1fff4952 ; ll_generateTxBuffer1 + 278
        0x1fff494c:    4628        (F      MOV      r0,r5
        0x1fff494e:    b005        ..      ADD      sp,sp,#0x14
        0x1fff4950:    bdf0        ..      POP      {r4-r7,pc}
        0x1fff4952:    4620         F      MOV      r0,r4
        0x1fff4954:    f7fefc72    ..r.    BL       $Ven$TT$L$$getTxBufferSize ; 0x1fff323c
        0x1fff4958:    9000        ..      STR      r0,[sp,#0]
        0x1fff495a:    2800        .(      CMP      r0,#0
        0x1fff495c:    dd21        !.      BLE      0x1fff49a2 ; ll_generateTxBuffer1 + 358
        0x1fff495e:    2e00        ..      CMP      r6,#0
        0x1fff4960:    dd1f        ..      BLE      0x1fff49a2 ; ll_generateTxBuffer1 + 358
        0x1fff4962:    2700        .'      MOVS     r7,#0
        0x1fff4964:    e018        ..      B        0x1fff4998 ; ll_generateTxBuffer1 + 348
        0x1fff4966:    4620         F      MOV      r0,r4
        0x1fff4968:    f7fefc6e    ..n.    BL       $Ven$TT$L$$get_tx_read_ptr ; 0x1fff3248
        0x1fff496c:    0080        ..      LSLS     r0,r0,#2
        0x1fff496e:    1900        ..      ADDS     r0,r0,r4
        0x1fff4970:    30ff        .0      ADDS     r0,r0,#0xff
        0x1fff4972:    3001        .0      ADDS     r0,#1
        0x1fff4974:    6ec0        .n      LDR      r0,[r0,#0x6c]
        0x1fff4976:    8881        ..      LDRH     r1,[r0,#4]
        0x1fff4978:    1d00        ..      ADDS     r0,r0,#4
        0x1fff497a:    0a09        ..      LSRS     r1,r1,#8
        0x1fff497c:    1c89        ..      ADDS     r1,r1,#2
        0x1fff497e:    f7fefc51    ..Q.    BL       $Ven$TT$L$$ll_hw_write_tfifo ; 0x1fff3224
        0x1fff4982:    4620         F      MOV      r0,r4
        0x1fff4984:    f7fefc66    ..f.    BL       $Ven$TT$L$$update_tx_read_ptr ; 0x1fff3254
        0x1fff4988:    1de0        ..      ADDS     r0,r4,#7
        0x1fff498a:    30ff        .0      ADDS     r0,r0,#0xff
        0x1fff498c:    30fa        .0      ADDS     r0,r0,#0xfa
        0x1fff498e:    6a01        .j      LDR      r1,[r0,#0x20]
        0x1fff4990:    1c6d        m.      ADDS     r5,r5,#1
        0x1fff4992:    1c49        I.      ADDS     r1,r1,#1
        0x1fff4994:    1c7f        ..      ADDS     r7,r7,#1
        0x1fff4996:    6201        .b      STR      r1,[r0,#0x20]
        0x1fff4998:    9800        ..      LDR      r0,[sp,#0]
        0x1fff499a:    4287        .B      CMP      r7,r0
        0x1fff499c:    da01        ..      BGE      0x1fff49a2 ; ll_generateTxBuffer1 + 358
        0x1fff499e:    42b7        .B      CMP      r7,r6
        0x1fff49a0:    dbe1        ..      BLT      0x1fff4966 ; ll_generateTxBuffer1 + 298
        0x1fff49a2:    2009        .       MOVS     r0,#9
        0x1fff49a4:    0180        ..      LSLS     r0,r0,#6
        0x1fff49a6:    1820         .      ADDS     r0,r4,r0
        0x1fff49a8:    7e81        .~      LDRB     r1,[r0,#0x1a]
        0x1fff49aa:    2900        .)      CMP      r1,#0
        0x1fff49ac:    d011        ..      BEQ      0x1fff49d2 ; ll_generateTxBuffer1 + 406
        0x1fff49ae:    7d01        .}      LDRB     r1,[r0,#0x14]
        0x1fff49b0:    2900        .)      CMP      r1,#0
        0x1fff49b2:    d00e        ..      BEQ      0x1fff49d2 ; ll_generateTxBuffer1 + 406
        0x1fff49b4:    8e42        B.      LDRH     r2,[r0,#0x32]
        0x1fff49b6:    2a00        .*      CMP      r2,#0
        0x1fff49b8:    d00b        ..      BEQ      0x1fff49d2 ; ll_generateTxBuffer1 + 406
        0x1fff49ba:    7f81        ..      LDRB     r1,[r0,#0x1e]
        0x1fff49bc:    4291        .B      CMP      r1,r2
        0x1fff49be:    d202        ..      BCS      0x1fff49c6 ; ll_generateTxBuffer1 + 394
        0x1fff49c0:    1c49        I.      ADDS     r1,r1,#1
        0x1fff49c2:    7781        .w      STRB     r1,[r0,#0x1e]
        0x1fff49c4:    e005        ..      B        0x1fff49d2 ; ll_generateTxBuffer1 + 406
        0x1fff49c6:    2100        .!      MOVS     r1,#0
        0x1fff49c8:    7781        .w      STRB     r1,[r0,#0x1e]
        0x1fff49ca:    211a        .!      MOVS     r1,#0x1a
        0x1fff49cc:    4620         F      MOV      r0,r4
        0x1fff49ce:    f7fefb21    ..!.    BL       $Ven$TT$L$$llEnqueueCtrlPkt ; 0x1fff3014
        0x1fff49d2:    b2a8        ..      UXTH     r0,r5
        0x1fff49d4:    e7bb        ..      B        0x1fff494e ; ll_generateTxBuffer1 + 274
    $d
        0x1fff49d6:    0000        ..      DCW    0
        0x1fff49d8:    1fff0d30    0...    DCD    536808752
        0x1fff49dc:    1fff0934    4...    DCD    536807732
        0x1fff49e0:    40031400    ...@    DCD    1073943552
        0x1fff49e4:    1fff10e0    ....    DCD    536809696
    $t
    i.ll_hw_go1
    ll_hw_go1
        0x1fff49e8:    b570        p.      PUSH     {r4-r6,lr}
        0x1fff49ea:    484e        NH      LDR      r0,[pc,#312] ; [0x1fff4b24] = 0x1fff0998
        0x1fff49ec:    6800        .h      LDR      r0,[r0,#0]
        0x1fff49ee:    2801        .(      CMP      r0,#1
        0x1fff49f0:    d103        ..      BNE      0x1fff49fa ; ll_hw_go1 + 18
        0x1fff49f2:    484d        MH      LDR      r0,[pc,#308] ; [0x1fff4b28] = 0x1fff0ffc
        0x1fff49f4:    6d81        .m      LDR      r1,[r0,#0x58]
        0x1fff49f6:    1c49        I.      ADDS     r1,r1,#1
        0x1fff49f8:    6581        .e      STR      r1,[r0,#0x58]
        0x1fff49fa:    f7fefb29    ..).    BL       $Ven$TT$L$$read_current_fine_time ; 0x1fff3050
        0x1fff49fe:    4d4b        KM      LDR      r5,[pc,#300] ; [0x1fff4b2c] = 0x1fff5850
        0x1fff4a00:    494b        KI      LDR      r1,[pc,#300] ; [0x1fff4b30] = 0x3fff
        0x1fff4a02:    60a8        .`      STR      r0,[r5,#8]
        0x1fff4a04:    484b        KH      LDR      r0,[pc,#300] ; [0x1fff4b34] = 0x40031000
        0x1fff4a06:    6141        Aa      STR      r1,[r0,#0x14]
        0x1fff4a08:    2401        .$      MOVS     r4,#1
        0x1fff4a0a:    60c4        .`      STR      r4,[r0,#0xc]
        0x1fff4a0c:    6004        .`      STR      r4,[r0,#0]
        0x1fff4a0e:    7828        (x      LDRB     r0,[r5,#0]
        0x1fff4a10:    2800        .(      CMP      r0,#0
        0x1fff4a12:    d006        ..      BEQ      0x1fff4a22 ; ll_hw_go1 + 58
        0x1fff4a14:    2206        ."      MOVS     r2,#6
        0x1fff4a16:    4948        HI      LDR      r1,[pc,#288] ; [0x1fff4b38] = 0x1fff0bd5
        0x1fff4a18:    4848        HH      LDR      r0,[pc,#288] ; [0x1fff4b3c] = 0x1fff1172
        0x1fff4a1a:    f7fefc21    ..!.    BL       $Ven$TT$L$$osal_memcpy ; 0x1fff3260
        0x1fff4a1e:    2000        .       MOVS     r0,#0
        0x1fff4a20:    7028        (p      STRB     r0,[r5,#0]
        0x1fff4a22:    4947        GI      LDR      r1,[pc,#284] ; [0x1fff4b40] = 0x40030080
        0x1fff4a24:    6b48        Hk      LDR      r0,[r1,#0x34]
        0x1fff4a26:    4a47        GJ      LDR      r2,[pc,#284] ; [0x1fff4b44] = 0x1fff098c
        0x1fff4a28:    b2c0        ..      UXTB     r0,r0
        0x1fff4a2a:    7812        .x      LDRB     r2,[r2,#0]
        0x1fff4a2c:    2a00        .*      CMP      r2,#0
        0x1fff4a2e:    d117        ..      BNE      0x1fff4a60 ; ll_hw_go1 + 120
        0x1fff4a30:    4a45        EJ      LDR      r2,[pc,#276] ; [0x1fff4b48] = 0x1fff0a68
        0x1fff4a32:    2300        .#      MOVS     r3,#0
        0x1fff4a34:    56d3        .V      LDRSB    r3,[r2,r3]
        0x1fff4a36:    2b00        .+      CMP      r3,#0
        0x1fff4a38:    4b44        DK      LDR      r3,[pc,#272] ; [0x1fff4b4c] = 0
        0x1fff4a3a:    56d3        .V      LDRSB    r3,[r2,r3]
        0x1fff4a3c:    db06        ..      BLT      0x1fff4a4c ; ll_hw_go1 + 100
        0x1fff4a3e:    041b        ..      LSLS     r3,r3,#16
        0x1fff4a40:    2500        .%      MOVS     r5,#0
        0x1fff4a42:    5755        UW      LDRSB    r5,[r2,r5]
        0x1fff4a44:    022a        *.      LSLS     r2,r5,#8
        0x1fff4a46:    189a        ..      ADDS     r2,r3,r2
        0x1fff4a48:    1812        ..      ADDS     r2,r2,r0
        0x1fff4a4a:    e008        ..      B        0x1fff4a5e ; ll_hw_go1 + 118
        0x1fff4a4c:    33ff        .3      ADDS     r3,r3,#0xff
        0x1fff4a4e:    041b        ..      LSLS     r3,r3,#16
        0x1fff4a50:    2500        .%      MOVS     r5,#0
        0x1fff4a52:    5755        UW      LDRSB    r5,[r2,r5]
        0x1fff4a54:    022a        *.      LSLS     r2,r5,#8
        0x1fff4a56:    189a        ..      ADDS     r2,r3,r2
        0x1fff4a58:    4b3d        =K      LDR      r3,[pc,#244] ; [0x1fff4b50] = 0xfeff
        0x1fff4a5a:    1812        ..      ADDS     r2,r2,r0
        0x1fff4a5c:    18d2        ..      ADDS     r2,r2,r3
        0x1fff4a5e:    634a        Jc      STR      r2,[r1,#0x34]
        0x1fff4a60:    2802        .(      CMP      r0,#2
        0x1fff4a62:    d201        ..      BCS      0x1fff4a68 ; ll_hw_go1 + 128
        0x1fff4a64:    2002        .       MOVS     r0,#2
        0x1fff4a66:    e002        ..      B        0x1fff4a6e ; ll_hw_go1 + 134
        0x1fff4a68:    2850        P(      CMP      r0,#0x50
        0x1fff4a6a:    d900        ..      BLS      0x1fff4a6e ; ll_hw_go1 + 134
        0x1fff4a6c:    2050        P       MOVS     r0,#0x50
        0x1fff4a6e:    4a39        9J      LDR      r2,[pc,#228] ; [0x1fff4b54] = 0x1fff0a49
        0x1fff4a70:    7812        .x      LDRB     r2,[r2,#0]
        0x1fff4a72:    2a02        .*      CMP      r2,#2
        0x1fff4a74:    d011        ..      BEQ      0x1fff4a9a ; ll_hw_go1 + 178
        0x1fff4a76:    4a38        8J      LDR      r2,[pc,#224] ; [0x1fff4b58] = 0x1fff0a44
        0x1fff4a78:    7815        .x      LDRB     r5,[r2,#0]
        0x1fff4a7a:    4b38        8K      LDR      r3,[pc,#224] ; [0x1fff4b5c] = 0x1fff0a45
        0x1fff4a7c:    781e        .x      LDRB     r6,[r3,#0]
        0x1fff4a7e:    42b5        .B      CMP      r5,r6
        0x1fff4a80:    d90f        ..      BLS      0x1fff4aa2 ; ll_hw_go1 + 186
        0x1fff4a82:    7815        .x      LDRB     r5,[r2,#0]
        0x1fff4a84:    781b        .x      LDRB     r3,[r3,#0]
        0x1fff4a86:    1aeb        ..      SUBS     r3,r5,r3
        0x1fff4a88:    1e80        ..      SUBS     r0,r0,#2
        0x1fff4a8a:    1040        @.      ASRS     r0,r0,#1
        0x1fff4a8c:    4343        CC      MULS     r3,r0,r3
        0x1fff4a8e:    7810        .x      LDRB     r0,[r2,#0]
        0x1fff4a90:    0140        @.      LSLS     r0,r0,#5
        0x1fff4a92:    1ac0        ..      SUBS     r0,r0,r3
        0x1fff4a94:    3010        .0      ADDS     r0,r0,#0x10
        0x1fff4a96:    1140        @.      ASRS     r0,r0,#5
        0x1fff4a98:    e004        ..      B        0x1fff4aa4 ; ll_hw_go1 + 188
        0x1fff4a9a:    4a31        1J      LDR      r2,[pc,#196] ; [0x1fff4b60] = 0x1fff0a46
        0x1fff4a9c:    7815        .x      LDRB     r5,[r2,#0]
        0x1fff4a9e:    4b31        1K      LDR      r3,[pc,#196] ; [0x1fff4b64] = 0x1fff0a47
        0x1fff4aa0:    e7ec        ..      B        0x1fff4a7c ; ll_hw_go1 + 148
        0x1fff4aa2:    7810        .x      LDRB     r0,[r2,#0]
        0x1fff4aa4:    694a        Ji      LDR      r2,[r1,#0x14]
        0x1fff4aa6:    0a12        ..      LSRS     r2,r2,#8
        0x1fff4aa8:    0212        ..      LSLS     r2,r2,#8
        0x1fff4aaa:    4310        .C      ORRS     r0,r0,r2
        0x1fff4aac:    6148        Ha      STR      r0,[r1,#0x14]
        0x1fff4aae:    f7fefae1    ....    BL       $Ven$TT$L$$ll_hw_get_tr_mode ; 0x1fff3074
        0x1fff4ab2:    4605        .F      MOV      r5,r0
        0x1fff4ab4:    2805        .(      CMP      r0,#5
        0x1fff4ab6:    d001        ..      BEQ      0x1fff4abc ; ll_hw_go1 + 212
        0x1fff4ab8:    2d04        .-      CMP      r5,#4
        0x1fff4aba:    d11e        ..      BNE      0x1fff4afa ; ll_hw_go1 + 274
        0x1fff4abc:    482a        *H      LDR      r0,[pc,#168] ; [0x1fff4b68] = 0x1fff08f9
        0x1fff4abe:    7800        .x      LDRB     r0,[r0,#0]
        0x1fff4ac0:    2800        .(      CMP      r0,#0
        0x1fff4ac2:    d006        ..      BEQ      0x1fff4ad2 ; ll_hw_go1 + 234
        0x1fff4ac4:    4829        )H      LDR      r0,[pc,#164] ; [0x1fff4b6c] = 0x1fff0922
        0x1fff4ac6:    7800        .x      LDRB     r0,[r0,#0]
        0x1fff4ac8:    2800        .(      CMP      r0,#0
        0x1fff4aca:    d002        ..      BEQ      0x1fff4ad2 ; ll_hw_go1 + 234
        0x1fff4acc:    2000        .       MOVS     r0,#0
        0x1fff4ace:    f7fefbcd    ....    BL       $Ven$TT$L$$set_max_length ; 0x1fff326c
        0x1fff4ad2:    4827        'H      LDR      r0,[pc,#156] ; [0x1fff4b70] = 0x1fff0d30
        0x1fff4ad4:    21a1        .!      MOVS     r1,#0xa1
        0x1fff4ad6:    7880        .x      LDRB     r0,[r0,#2]
        0x1fff4ad8:    0089        ..      LSLS     r1,r1,#2
        0x1fff4ada:    4348        HC      MULS     r0,r1,r0
        0x1fff4adc:    4925        %I      LDR      r1,[pc,#148] ; [0x1fff4b74] = 0x1fff0934
        0x1fff4ade:    6809        .h      LDR      r1,[r1,#0]
        0x1fff4ae0:    1840        @.      ADDS     r0,r0,r1
        0x1fff4ae2:    30ff        .0      ADDS     r0,r0,#0xff
        0x1fff4ae4:    30ff        .0      ADDS     r0,r0,#0xff
        0x1fff4ae6:    3002        .0      ADDS     r0,#2
        0x1fff4ae8:    7b00        .{      LDRB     r0,[r0,#0xc]
        0x1fff4aea:    2804        .(      CMP      r0,#4
        0x1fff4aec:    d001        ..      BEQ      0x1fff4af2 ; ll_hw_go1 + 266
        0x1fff4aee:    2803        .(      CMP      r0,#3
        0x1fff4af0:    d103        ..      BNE      0x1fff4afa ; ll_hw_go1 + 274
        0x1fff4af2:    20ff        .       MOVS     r0,#0xff
        0x1fff4af4:    305f        _0      ADDS     r0,r0,#0x5f
        0x1fff4af6:    f7fefaff    ....    BL       $Ven$TT$L$$ll_hw_set_rx_timeout ; 0x1fff30f8
        0x1fff4afa:    2d02        .-      CMP      r5,#2
        0x1fff4afc:    d10e        ..      BNE      0x1fff4b1c ; ll_hw_go1 + 308
        0x1fff4afe:    481e        .H      LDR      r0,[pc,#120] ; [0x1fff4b78] = 0x1fff091c
        0x1fff4b00:    7800        .x      LDRB     r0,[r0,#0]
        0x1fff4b02:    2801        .(      CMP      r0,#1
        0x1fff4b04:    d007        ..      BEQ      0x1fff4b16 ; ll_hw_go1 + 302
        0x1fff4b06:    2803        .(      CMP      r0,#3
        0x1fff4b08:    d005        ..      BEQ      0x1fff4b16 ; ll_hw_go1 + 302
        0x1fff4b0a:    2802        .(      CMP      r0,#2
        0x1fff4b0c:    d003        ..      BEQ      0x1fff4b16 ; ll_hw_go1 + 302
        0x1fff4b0e:    481b        .H      LDR      r0,[pc,#108] ; [0x1fff4b7c] = 0x1fff0923
        0x1fff4b10:    7800        .x      LDRB     r0,[r0,#0]
        0x1fff4b12:    2802        .(      CMP      r0,#2
        0x1fff4b14:    d102        ..      BNE      0x1fff4b1c ; ll_hw_go1 + 308
        0x1fff4b16:    206c        l       MOVS     r0,#0x6c
        0x1fff4b18:    f7fefaee    ....    BL       $Ven$TT$L$$ll_hw_set_rx_timeout ; 0x1fff30f8
        0x1fff4b1c:    4818        .H      LDR      r0,[pc,#96] ; [0x1fff4b80] = 0x1fff0bbc
        0x1fff4b1e:    82c4        ..      STRH     r4,[r0,#0x16]
        0x1fff4b20:    bd70        p.      POP      {r4-r6,pc}
    $d
        0x1fff4b22:    0000        ..      DCW    0
        0x1fff4b24:    1fff0998    ....    DCD    536807832
        0x1fff4b28:    1fff0ffc    ....    DCD    536809468
        0x1fff4b2c:    1fff5850    PX..    DCD    536827984
        0x1fff4b30:    00003fff    .?..    DCD    16383
        0x1fff4b34:    40031000    ...@    DCD    1073942528
        0x1fff4b38:    1fff0bd5    ....    DCD    536808405
        0x1fff4b3c:    1fff1172    r...    DCD    536809842
        0x1fff4b40:    40030080    ...@    DCD    1073938560
        0x1fff4b44:    1fff098c    ....    DCD    536807820
        0x1fff4b48:    1fff0a68    h...    DCD    536808040
        0x1fff4b4c:    00000000    ....    DCD    0
        0x1fff4b50:    0000feff    ....    DCD    65279
        0x1fff4b54:    1fff0a49    I...    DCD    536808009
        0x1fff4b58:    1fff0a44    D...    DCD    536808004
        0x1fff4b5c:    1fff0a45    E...    DCD    536808005
        0x1fff4b60:    1fff0a46    F...    DCD    536808006
        0x1fff4b64:    1fff0a47    G...    DCD    536808007
        0x1fff4b68:    1fff08f9    ....    DCD    536807673
        0x1fff4b6c:    1fff0922    "...    DCD    536807714
        0x1fff4b70:    1fff0d30    0...    DCD    536808752
        0x1fff4b74:    1fff0934    4...    DCD    536807732
        0x1fff4b78:    1fff091c    ....    DCD    536807708
        0x1fff4b7c:    1fff0923    #...    DCD    536807715
        0x1fff4b80:    1fff0bbc    ....    DCD    536808380
    $t
    i.ll_patch_slave
    ll_patch_slave
        0x1fff4b84:    480a        .H      LDR      r0,[pc,#40] ; [0x1fff4bb0] = 0x1fff0040
        0x1fff4b86:    4909        .I      LDR      r1,[pc,#36] ; [0x1fff4bac] = 0x1fff40f9
        0x1fff4b88:    6001        .`      STR      r1,[r0,#0]
        0x1fff4b8a:    490b        .I      LDR      r1,[pc,#44] ; [0x1fff4bb8] = 0x1fff01c0
        0x1fff4b8c:    4a09        .J      LDR      r2,[pc,#36] ; [0x1fff4bb4] = 0x1fff45dd
        0x1fff4b8e:    634a        Jc      STR      r2,[r1,#0x34]
        0x1fff4b90:    4a0a        .J      LDR      r2,[pc,#40] ; [0x1fff4bbc] = 0x1fff466d
        0x1fff4b92:    630a        .c      STR      r2,[r1,#0x30]
        0x1fff4b94:    4a0a        .J      LDR      r2,[pc,#40] ; [0x1fff4bc0] = 0x1fff3f0d
        0x1fff4b96:    6082        .`      STR      r2,[r0,#8]
        0x1fff4b98:    4a0a        .J      LDR      r2,[pc,#40] ; [0x1fff4bc4] = 0x1fff46e9
        0x1fff4b9a:    638a        .c      STR      r2,[r1,#0x38]
        0x1fff4b9c:    4a06        .J      LDR      r2,[pc,#24] ; [0x1fff4bb8] = 0x1fff01c0
        0x1fff4b9e:    490a        .I      LDR      r1,[pc,#40] ; [0x1fff4bc8] = 0x1fff4c49
        0x1fff4ba0:    3280        .2      ADDS     r2,r2,#0x80
        0x1fff4ba2:    6151        Qa      STR      r1,[r2,#0x14]
        0x1fff4ba4:    4909        .I      LDR      r1,[pc,#36] ; [0x1fff4bcc] = 0x1fff46bd
        0x1fff4ba6:    62c1        .b      STR      r1,[r0,#0x2c]
        0x1fff4ba8:    4770        pG      BX       lr
    $d
        0x1fff4baa:    0000        ..      DCW    0
        0x1fff4bac:    1fff40f9    .@..    DCD    536822009
        0x1fff4bb0:    1fff0040    @...    DCD    536805440
        0x1fff4bb4:    1fff45dd    .E..    DCD    536823261
        0x1fff4bb8:    1fff01c0    ....    DCD    536805824
        0x1fff4bbc:    1fff466d    mF..    DCD    536823405
        0x1fff4bc0:    1fff3f0d    .?..    DCD    536821517
        0x1fff4bc4:    1fff46e9    .F..    DCD    536823529
        0x1fff4bc8:    1fff4c49    IL..    DCD    536824905
        0x1fff4bcc:    1fff46bd    .F..    DCD    536823485
    $t
    i.ll_processBasicIRQ_SRX
    ll_processBasicIRQ_SRX
        0x1fff4bd0:    b510        ..      PUSH     {r4,lr}
        0x1fff4bd2:    4904        .I      LDR      r1,[pc,#16] ; [0x1fff4be4] = 0x1fff0280
        0x1fff4bd4:    6809        .h      LDR      r1,[r1,#0]
        0x1fff4bd6:    2900        .)      CMP      r1,#0
        0x1fff4bd8:    d001        ..      BEQ      0x1fff4bde ; ll_processBasicIRQ_SRX + 14
        0x1fff4bda:    4788        .G      BLX      r1
        0x1fff4bdc:    bd10        ..      POP      {r4,pc}
        0x1fff4bde:    f7fefa73    ..s.    BL       $Ven$TT$L$$ll_processBasicIRQ ; 0x1fff30c8
        0x1fff4be2:    bd10        ..      POP      {r4,pc}
    $d
        0x1fff4be4:    1fff0280    ....    DCD    536806016
    $t
    i.ll_processBasicIRQ_ScanTRX
    ll_processBasicIRQ_ScanTRX
        0x1fff4be8:    b510        ..      PUSH     {r4,lr}
        0x1fff4bea:    4904        .I      LDR      r1,[pc,#16] ; [0x1fff4bfc] = 0x1fff0280
        0x1fff4bec:    6889        .h      LDR      r1,[r1,#8]
        0x1fff4bee:    2900        .)      CMP      r1,#0
        0x1fff4bf0:    d001        ..      BEQ      0x1fff4bf6 ; ll_processBasicIRQ_ScanTRX + 14
        0x1fff4bf2:    4788        .G      BLX      r1
        0x1fff4bf4:    bd10        ..      POP      {r4,pc}
        0x1fff4bf6:    f7fefa67    ..g.    BL       $Ven$TT$L$$ll_processBasicIRQ ; 0x1fff30c8
        0x1fff4bfa:    bd10        ..      POP      {r4,pc}
    $d
        0x1fff4bfc:    1fff0280    ....    DCD    536806016
    $t
    i.ll_processBasicIRQ_secondaryAdvTRX
    ll_processBasicIRQ_secondaryAdvTRX
        0x1fff4c00:    b510        ..      PUSH     {r4,lr}
        0x1fff4c02:    4904        .I      LDR      r1,[pc,#16] ; [0x1fff4c14] = 0x1fff0280
        0x1fff4c04:    6849        Ih      LDR      r1,[r1,#4]
        0x1fff4c06:    2900        .)      CMP      r1,#0
        0x1fff4c08:    d001        ..      BEQ      0x1fff4c0e ; ll_processBasicIRQ_secondaryAdvTRX + 14
        0x1fff4c0a:    4788        .G      BLX      r1
        0x1fff4c0c:    bd10        ..      POP      {r4,pc}
        0x1fff4c0e:    f7fefa5b    ..[.    BL       $Ven$TT$L$$ll_processBasicIRQ ; 0x1fff30c8
        0x1fff4c12:    bd10        ..      POP      {r4,pc}
    $d
        0x1fff4c14:    1fff0280    ....    DCD    536806016
    $t
    i.ll_processBasicIRQ_secondaryInitSRX
    ll_processBasicIRQ_secondaryInitSRX
        0x1fff4c18:    b510        ..      PUSH     {r4,lr}
        0x1fff4c1a:    4904        .I      LDR      r1,[pc,#16] ; [0x1fff4c2c] = 0x1fff0280
        0x1fff4c1c:    6909        .i      LDR      r1,[r1,#0x10]
        0x1fff4c1e:    2900        .)      CMP      r1,#0
        0x1fff4c20:    d001        ..      BEQ      0x1fff4c26 ; ll_processBasicIRQ_secondaryInitSRX + 14
        0x1fff4c22:    4788        .G      BLX      r1
        0x1fff4c24:    bd10        ..      POP      {r4,pc}
        0x1fff4c26:    f7fefa4f    ..O.    BL       $Ven$TT$L$$ll_processBasicIRQ ; 0x1fff30c8
        0x1fff4c2a:    bd10        ..      POP      {r4,pc}
    $d
        0x1fff4c2c:    1fff0280    ....    DCD    536806016
    $t
    i.ll_processBasicIRQ_secondaryScanSRX
    ll_processBasicIRQ_secondaryScanSRX
        0x1fff4c30:    b510        ..      PUSH     {r4,lr}
        0x1fff4c32:    4904        .I      LDR      r1,[pc,#16] ; [0x1fff4c44] = 0x1fff0280
        0x1fff4c34:    68c9        .h      LDR      r1,[r1,#0xc]
        0x1fff4c36:    2900        .)      CMP      r1,#0
        0x1fff4c38:    d001        ..      BEQ      0x1fff4c3e ; ll_processBasicIRQ_secondaryScanSRX + 14
        0x1fff4c3a:    4788        .G      BLX      r1
        0x1fff4c3c:    bd10        ..      POP      {r4,pc}
        0x1fff4c3e:    f7fefa43    ..C.    BL       $Ven$TT$L$$ll_processBasicIRQ ; 0x1fff30c8
        0x1fff4c42:    bd10        ..      POP      {r4,pc}
    $d
        0x1fff4c44:    1fff0280    ....    DCD    536806016
    $t
    i.ll_scheduler2
    ll_scheduler2
        0x1fff4c48:    b510        ..      PUSH     {r4,lr}
        0x1fff4c4a:    490d        .I      LDR      r1,[pc,#52] ; [0x1fff4c80] = 0x1fff0d30
        0x1fff4c4c:    22a1        ."      MOVS     r2,#0xa1
        0x1fff4c4e:    7889        .x      LDRB     r1,[r1,#2]
        0x1fff4c50:    0092        ..      LSLS     r2,r2,#2
        0x1fff4c52:    4351        QC      MULS     r1,r2,r1
        0x1fff4c54:    4a0b        .J      LDR      r2,[pc,#44] ; [0x1fff4c84] = 0x1fff0934
        0x1fff4c56:    6812        .h      LDR      r2,[r2,#0]
        0x1fff4c58:    1889        ..      ADDS     r1,r1,r2
        0x1fff4c5a:    2224        $"      MOVS     r2,#0x24
        0x1fff4c5c:    5c53        S\      LDRB     r3,[r2,r1]
        0x1fff4c5e:    4a0a        .J      LDR      r2,[pc,#40] ; [0x1fff4c88] = 0x1fff5850
        0x1fff4c60:    8852        R.      LDRH     r2,[r2,#2]
        0x1fff4c62:    4293        .B      CMP      r3,r2
        0x1fff4c64:    d209        ..      BCS      0x1fff4c7a ; ll_scheduler2 + 50
        0x1fff4c66:    1ad2        ..      SUBS     r2,r2,r3
        0x1fff4c68:    4b08        .K      LDR      r3,[pc,#32] ; [0x1fff4c8c] = 0x271
        0x1fff4c6a:    69c9        .i      LDR      r1,[r1,#0x1c]
        0x1fff4c6c:    435a        ZC      MULS     r2,r3,r2
        0x1fff4c6e:    4351        QC      MULS     r1,r2,r1
        0x1fff4c70:    1c42        B.      ADDS     r2,r0,#1
        0x1fff4c72:    d002        ..      BEQ      0x1fff4c7a ; ll_scheduler2 + 50
        0x1fff4c74:    28c8        .(      CMP      r0,#0xc8
        0x1fff4c76:    d000        ..      BEQ      0x1fff4c7a ; ll_scheduler2 + 50
        0x1fff4c78:    1840        @.      ADDS     r0,r0,r1
        0x1fff4c7a:    f7fefafd    ....    BL       $Ven$TT$L$$ll_scheduler0 ; 0x1fff3278
        0x1fff4c7e:    bd10        ..      POP      {r4,pc}
    $d
        0x1fff4c80:    1fff0d30    0...    DCD    536808752
        0x1fff4c84:    1fff0934    4...    DCD    536807732
        0x1fff4c88:    1fff5850    PX..    DCD    536827984
        0x1fff4c8c:    00000271    q...    DCD    625
    $t
    i.rc32k_calibration
    rc32k_calibration
        0x1fff4c90:    b5f8        ..      PUSH     {r3-r7,lr}
        0x1fff4c92:    481b        .H      LDR      r0,[pc,#108] ; [0x1fff4d00] = 0x4000f0c0
        0x1fff4c94:    6841        Ah      LDR      r1,[r0,#4]
        0x1fff4c96:    2280        ."      MOVS     r2,#0x80
        0x1fff4c98:    4311        .C      ORRS     r1,r1,r2
        0x1fff4c9a:    6041        A`      STR      r1,[r0,#4]
        0x1fff4c9c:    4d18        .M      LDR      r5,[pc,#96] ; [0x1fff4d00] = 0x4000f0c0
        0x1fff4c9e:    260a        .&      MOVS     r6,#0xa
        0x1fff4ca0:    2700        .'      MOVS     r7,#0
        0x1fff4ca2:    3d80        .=      SUBS     r5,r5,#0x80
        0x1fff4ca4:    69e8        .i      LDR      r0,[r5,#0x1c]
        0x1fff4ca6:    0840        @.      LSRS     r0,r0,#1
        0x1fff4ca8:    0040        @.      LSLS     r0,r0,#1
        0x1fff4caa:    61e8        .a      STR      r0,[r5,#0x1c]
        0x1fff4cac:    2006        .       MOVS     r0,#6
        0x1fff4cae:    f7fef8c1    ....    BL       $Ven$TT$L$$WaitRTCCount ; 0x1fff2e34
        0x1fff4cb2:    4c13        .L      LDR      r4,[pc,#76] ; [0x1fff4d00] = 0x4000f0c0
        0x1fff4cb4:    3cc0        .<      SUBS     r4,r4,#0xc0
        0x1fff4cb6:    69a0        .i      LDR      r0,[r4,#0x18]
        0x1fff4cb8:    2180        .!      MOVS     r1,#0x80
        0x1fff4cba:    4308        .C      ORRS     r0,r0,r1
        0x1fff4cbc:    61a0        .a      STR      r0,[r4,#0x18]
        0x1fff4cbe:    69e8        .i      LDR      r0,[r5,#0x1c]
        0x1fff4cc0:    2101        .!      MOVS     r1,#1
        0x1fff4cc2:    4308        .C      ORRS     r0,r0,r1
        0x1fff4cc4:    61e8        .a      STR      r0,[r5,#0x1c]
        0x1fff4cc6:    e002        ..      B        0x1fff4cce ; rc32k_calibration + 62
        0x1fff4cc8:    2008        .       MOVS     r0,#8
        0x1fff4cca:    f7fef8b3    ....    BL       $Ven$TT$L$$WaitRTCCount ; 0x1fff2e34
        0x1fff4cce:    6aa8        .j      LDR      r0,[r5,#0x28]
        0x1fff4cd0:    0580        ..      LSLS     r0,r0,#22
        0x1fff4cd2:    d404        ..      BMI      0x1fff4cde ; rc32k_calibration + 78
        0x1fff4cd4:    4630        0F      MOV      r0,r6
        0x1fff4cd6:    1e76        v.      SUBS     r6,r6,#1
        0x1fff4cd8:    b2f6        ..      UXTB     r6,r6
        0x1fff4cda:    2800        .(      CMP      r0,#0
        0x1fff4cdc:    d1f4        ..      BNE      0x1fff4cc8 ; rc32k_calibration + 56
        0x1fff4cde:    2e00        ..      CMP      r6,#0
        0x1fff4ce0:    d007        ..      BEQ      0x1fff4cf2 ; rc32k_calibration + 98
        0x1fff4ce2:    6a28        (j      LDR      r0,[r5,#0x20]
        0x1fff4ce4:    217e        ~!      MOVS     r1,#0x7e
        0x1fff4ce6:    0bc7        ..      LSRS     r7,r0,#15
        0x1fff4ce8:    69a0        .i      LDR      r0,[r4,#0x18]
        0x1fff4cea:    400f        .@      ANDS     r7,r7,r1
        0x1fff4cec:    4388        .C      BICS     r0,r0,r1
        0x1fff4cee:    4338        8C      ORRS     r0,r0,r7
        0x1fff4cf0:    61a0        .a      STR      r0,[r4,#0x18]
        0x1fff4cf2:    69a1        .i      LDR      r1,[r4,#0x18]
        0x1fff4cf4:    2080        .       MOVS     r0,#0x80
        0x1fff4cf6:    4381        .C      BICS     r1,r1,r0
        0x1fff4cf8:    61a1        .a      STR      r1,[r4,#0x18]
        0x1fff4cfa:    0638        8.      LSLS     r0,r7,#24
        0x1fff4cfc:    0e40        @.      LSRS     r0,r0,#25
        0x1fff4cfe:    bdf8        ..      POP      {r3-r7,pc}
    $d
        0x1fff4d00:    4000f0c0    ...@    DCD    1073803456
    $t
    i.rc32k_cap_cal
    rc32k_cap_cal
        0x1fff4d04:    4b12        .K      LDR      r3,[pc,#72] ; [0x1fff4d50] = 0x200b
        0x1fff4d06:    b510        ..      PUSH     {r4,lr}
        0x1fff4d08:    4912        .I      LDR      r1,[pc,#72] ; [0x1fff4d54] = 0x4000f000
        0x1fff4d0a:    227e        ~"      MOVS     r2,#0x7e
        0x1fff4d0c:    4298        .B      CMP      r0,r3
        0x1fff4d0e:    d90a        ..      BLS      0x1fff4d26 ; rc32k_cap_cal + 34
        0x1fff4d10:    698b        .i      LDR      r3,[r1,#0x18]
        0x1fff4d12:    065b        [.      LSLS     r3,r3,#25
        0x1fff4d14:    0e9b        ..      LSRS     r3,r3,#26
        0x1fff4d16:    d006        ..      BEQ      0x1fff4d26 ; rc32k_cap_cal + 34
        0x1fff4d18:    6988        .i      LDR      r0,[r1,#0x18]
        0x1fff4d1a:    698b        .i      LDR      r3,[r1,#0x18]
        0x1fff4d1c:    0640        @.      LSLS     r0,r0,#25
        0x1fff4d1e:    0e80        ..      LSRS     r0,r0,#26
        0x1fff4d20:    4393        .C      BICS     r3,r3,r2
        0x1fff4d22:    1e40        @.      SUBS     r0,r0,#1
        0x1fff4d24:    e00c        ..      B        0x1fff4d40 ; rc32k_cap_cal + 60
        0x1fff4d26:    4b0c        .K      LDR      r3,[pc,#48] ; [0x1fff4d58] = 0x1cfd
        0x1fff4d28:    4298        .B      CMP      r0,r3
        0x1fff4d2a:    d20f        ..      BCS      0x1fff4d4c ; rc32k_cap_cal + 72
        0x1fff4d2c:    6988        .i      LDR      r0,[r1,#0x18]
        0x1fff4d2e:    4010        .@      ANDS     r0,r0,r2
        0x1fff4d30:    287e        ~(      CMP      r0,#0x7e
        0x1fff4d32:    d20b        ..      BCS      0x1fff4d4c ; rc32k_cap_cal + 72
        0x1fff4d34:    6988        .i      LDR      r0,[r1,#0x18]
        0x1fff4d36:    698b        .i      LDR      r3,[r1,#0x18]
        0x1fff4d38:    0640        @.      LSLS     r0,r0,#25
        0x1fff4d3a:    0e80        ..      LSRS     r0,r0,#26
        0x1fff4d3c:    4393        .C      BICS     r3,r3,r2
        0x1fff4d3e:    1c40        @.      ADDS     r0,r0,#1
        0x1fff4d40:    0040        @.      LSLS     r0,r0,#1
        0x1fff4d42:    4303        .C      ORRS     r3,r3,r0
        0x1fff4d44:    618b        .a      STR      r3,[r1,#0x18]
        0x1fff4d46:    2003        .       MOVS     r0,#3
        0x1fff4d48:    f7fef874    ..t.    BL       $Ven$TT$L$$WaitRTCCount ; 0x1fff2e34
        0x1fff4d4c:    bd10        ..      POP      {r4,pc}
    $d
        0x1fff4d4e:    0000        ..      DCW    0
        0x1fff4d50:    0000200b    . ..    DCD    8203
        0x1fff4d54:    4000f000    ...@    DCD    1073803264
        0x1fff4d58:    00001cfd    ....    DCD    7421
    $t
    i.read_LL_remainder_time1
    read_LL_remainder_time1
        0x1fff4d5c:    b510        ..      PUSH     {r4,lr}
        0x1fff4d5e:    f7fef977    ..w.    BL       $Ven$TT$L$$read_current_fine_time ; 0x1fff3050
        0x1fff4d62:    4807        .H      LDR      r0,[pc,#28] ; [0x1fff4d80] = 0x40001000
        0x1fff4d64:    6840        @h      LDR      r0,[r0,#4]
        0x1fff4d66:    2806        .(      CMP      r0,#6
        0x1fff4d68:    d307        ..      BCC      0x1fff4d7a ; read_LL_remainder_time1 + 30
        0x1fff4d6a:    4906        .I      LDR      r1,[pc,#24] ; [0x1fff4d84] = 0xe000e200
        0x1fff4d6c:    6809        .h      LDR      r1,[r1,#0]
        0x1fff4d6e:    2201        ."      MOVS     r2,#1
        0x1fff4d70:    0512        ..      LSLS     r2,r2,#20
        0x1fff4d72:    4211        .B      TST      r1,r2
        0x1fff4d74:    d101        ..      BNE      0x1fff4d7a ; read_LL_remainder_time1 + 30
        0x1fff4d76:    0880        ..      LSRS     r0,r0,#2
        0x1fff4d78:    bd10        ..      POP      {r4,pc}
        0x1fff4d7a:    2000        .       MOVS     r0,#0
        0x1fff4d7c:    bd10        ..      POP      {r4,pc}
    $d
        0x1fff4d7e:    0000        ..      DCW    0
        0x1fff4d80:    40001000    ...@    DCD    1073745920
        0x1fff4d84:    e000e200    ....    DCD    3758154240
    $t
    i.rf_calibrate1
    rf_calibrate1
        0x1fff4d88:    b510        ..      PUSH     {r4,lr}
        0x1fff4d8a:    4908        .I      LDR      r1,[pc,#32] ; [0x1fff4dac] = 0x1fff0a14
        0x1fff4d8c:    4806        .H      LDR      r0,[pc,#24] ; [0x1fff4da8] = 0x1e84
        0x1fff4d8e:    6008        .`      STR      r0,[r1,#0]
        0x1fff4d90:    4907        .I      LDR      r1,[pc,#28] ; [0x1fff4db0] = 0x1fff0a38
        0x1fff4d92:    6008        .`      STR      r0,[r1,#0]
        0x1fff4d94:    f000faaa    ....    BL       rf_tpCal_gen_cap_arrary ; 0x1fff52ec
        0x1fff4d98:    4a06        .J      LDR      r2,[pc,#24] ; [0x1fff4db4] = 0x1fff0a60
        0x1fff4d9a:    2101        .!      MOVS     r1,#1
        0x1fff4d9c:    2058        X       MOVS     r0,#0x58
        0x1fff4d9e:    f000fa15    ....    BL       rf_rxDcoc_cfg ; 0x1fff51cc
        0x1fff4da2:    f7ffff75    ..u.    BL       rc32k_calibration ; 0x1fff4c90
        0x1fff4da6:    bd10        ..      POP      {r4,pc}
    $d
        0x1fff4da8:    00001e84    ....    DCD    7812
        0x1fff4dac:    1fff0a14    ....    DCD    536807956
        0x1fff4db0:    1fff0a38    8...    DCD    536807992
        0x1fff4db4:    1fff0a60    `...    DCD    536808032
    $t
    i.rf_phy_ana_cfg
    rf_phy_ana_cfg
        0x1fff4db8:    b530        0.      PUSH     {r4,r5,lr}
        0x1fff4dba:    4838        8H      LDR      r0,[pc,#224] ; [0x1fff4e9c] = 0x4000f040
        0x1fff4dbc:    6801        .h      LDR      r1,[r0,#0]
        0x1fff4dbe:    2201        ."      MOVS     r2,#1
        0x1fff4dc0:    0492        ..      LSLS     r2,r2,#18
        0x1fff4dc2:    4311        .C      ORRS     r1,r1,r2
        0x1fff4dc4:    6001        .`      STR      r1,[r0,#0]
        0x1fff4dc6:    6841        Ah      LDR      r1,[r0,#4]
        0x1fff4dc8:    2203        ."      MOVS     r2,#3
        0x1fff4dca:    0612        ..      LSLS     r2,r2,#24
        0x1fff4dcc:    4391        .C      BICS     r1,r1,r2
        0x1fff4dce:    4a34        4J      LDR      r2,[pc,#208] ; [0x1fff4ea0] = 0x1fff0a4c
        0x1fff4dd0:    7813        .x      LDRB     r3,[r2,#0]
        0x1fff4dd2:    061b        ..      LSLS     r3,r3,#24
        0x1fff4dd4:    4319        .C      ORRS     r1,r1,r3
        0x1fff4dd6:    6041        A`      STR      r1,[r0,#4]
        0x1fff4dd8:    6843        Ch      LDR      r3,[r0,#4]
        0x1fff4dda:    2103        .!      MOVS     r1,#3
        0x1fff4ddc:    0589        ..      LSLS     r1,r1,#22
        0x1fff4dde:    438b        .C      BICS     r3,r3,r1
        0x1fff4de0:    4930        0I      LDR      r1,[pc,#192] ; [0x1fff4ea4] = 0x1fff0a4b
        0x1fff4de2:    780c        .x      LDRB     r4,[r1,#0]
        0x1fff4de4:    05a4        ..      LSLS     r4,r4,#22
        0x1fff4de6:    4323        #C      ORRS     r3,r3,r4
        0x1fff4de8:    6043        C`      STR      r3,[r0,#4]
        0x1fff4dea:    6843        Ch      LDR      r3,[r0,#4]
        0x1fff4dec:    2460        `$      MOVS     r4,#0x60
        0x1fff4dee:    4323        #C      ORRS     r3,r3,r4
        0x1fff4df0:    6043        C`      STR      r3,[r0,#4]
        0x1fff4df2:    7813        .x      LDRB     r3,[r2,#0]
        0x1fff4df4:    2b02        .+      CMP      r3,#2
        0x1fff4df6:    d008        ..      BEQ      0x1fff4e0a ; rf_phy_ana_cfg + 82
        0x1fff4df8:    7813        .x      LDRB     r3,[r2,#0]
        0x1fff4dfa:    2b01        .+      CMP      r3,#1
        0x1fff4dfc:    d005        ..      BEQ      0x1fff4e0a ; rf_phy_ana_cfg + 82
        0x1fff4dfe:    780b        .x      LDRB     r3,[r1,#0]
        0x1fff4e00:    2b02        .+      CMP      r3,#2
        0x1fff4e02:    d002        ..      BEQ      0x1fff4e0a ; rf_phy_ana_cfg + 82
        0x1fff4e04:    780b        .x      LDRB     r3,[r1,#0]
        0x1fff4e06:    2b01        .+      CMP      r3,#1
        0x1fff4e08:    d104        ..      BNE      0x1fff4e14 ; rf_phy_ana_cfg + 92
        0x1fff4e0a:    6843        Ch      LDR      r3,[r0,#4]
        0x1fff4e0c:    24ff        .$      MOVS     r4,#0xff
        0x1fff4e0e:    3401        .4      ADDS     r4,#1
        0x1fff4e10:    4323        #C      ORRS     r3,r3,r4
        0x1fff4e12:    6043        C`      STR      r3,[r0,#4]
        0x1fff4e14:    7812        .x      LDRB     r2,[r2,#0]
        0x1fff4e16:    2a03        .*      CMP      r2,#3
        0x1fff4e18:    d002        ..      BEQ      0x1fff4e20 ; rf_phy_ana_cfg + 104
        0x1fff4e1a:    780a        .x      LDRB     r2,[r1,#0]
        0x1fff4e1c:    2a03        .*      CMP      r2,#3
        0x1fff4e1e:    d103        ..      BNE      0x1fff4e28 ; rf_phy_ana_cfg + 112
        0x1fff4e20:    6842        Bh      LDR      r2,[r0,#4]
        0x1fff4e22:    2380        .#      MOVS     r3,#0x80
        0x1fff4e24:    431a        .C      ORRS     r2,r2,r3
        0x1fff4e26:    6042        B`      STR      r2,[r0,#4]
        0x1fff4e28:    6842        Bh      LDR      r2,[r0,#4]
        0x1fff4e2a:    2303        .#      MOVS     r3,#3
        0x1fff4e2c:    049b        ..      LSLS     r3,r3,#18
        0x1fff4e2e:    431a        .C      ORRS     r2,r2,r3
        0x1fff4e30:    6042        B`      STR      r2,[r0,#4]
        0x1fff4e32:    780b        .x      LDRB     r3,[r1,#0]
        0x1fff4e34:    2201        ."      MOVS     r2,#1
        0x1fff4e36:    05d2        ..      LSLS     r2,r2,#23
        0x1fff4e38:    481b        .H      LDR      r0,[pc,#108] ; [0x1fff4ea8] = 0x40030080
        0x1fff4e3a:    2b00        .+      CMP      r3,#0
        0x1fff4e3c:    d103        ..      BNE      0x1fff4e46 ; rf_phy_ana_cfg + 142
        0x1fff4e3e:    4b1b        .K      LDR      r3,[pc,#108] ; [0x1fff4eac] = 0x1fff0a4a
        0x1fff4e40:    781b        .x      LDRB     r3,[r3,#0]
        0x1fff4e42:    2b03        .+      CMP      r3,#3
        0x1fff4e44:    d019        ..      BEQ      0x1fff4e7a ; rf_phy_ana_cfg + 194
        0x1fff4e46:    68c3        .h      LDR      r3,[r0,#0xc]
        0x1fff4e48:    4393        .C      BICS     r3,r3,r2
        0x1fff4e4a:    60c3        .`      STR      r3,[r0,#0xc]
        0x1fff4e4c:    4a16        .J      LDR      r2,[pc,#88] ; [0x1fff4ea8] = 0x40030080
        0x1fff4e4e:    4b18        .K      LDR      r3,[pc,#96] ; [0x1fff4eb0] = 0x20000bc0
        0x1fff4e50:    3240        @2      ADDS     r2,r2,#0x40
        0x1fff4e52:    60d3        .`      STR      r3,[r2,#0xc]
        0x1fff4e54:    25ff        .%      MOVS     r5,#0xff
        0x1fff4e56:    3581        .5      ADDS     r5,r5,#0x81
        0x1fff4e58:    6115        .a      STR      r5,[r2,#0x10]
        0x1fff4e5a:    4c16        .L      LDR      r4,[pc,#88] ; [0x1fff4eb4] = 0x76a3e7a
        0x1fff4e5c:    6154        Ta      STR      r4,[r2,#0x14]
        0x1fff4e5e:    4b16        .K      LDR      r3,[pc,#88] ; [0x1fff4eb8] = 0x4890000
        0x1fff4e60:    6193        .a      STR      r3,[r2,#0x18]
        0x1fff4e62:    4b11        .K      LDR      r3,[pc,#68] ; [0x1fff4ea8] = 0x40030080
        0x1fff4e64:    3380        .3      ADDS     r3,r3,#0x80
        0x1fff4e66:    605d        ]`      STR      r5,[r3,#4]
        0x1fff4e68:    609c        .`      STR      r4,[r3,#8]
        0x1fff4e6a:    4c14        .L      LDR      r4,[pc,#80] ; [0x1fff4ebc] = 0x4898000
        0x1fff4e6c:    60dc        .`      STR      r4,[r3,#0xc]
        0x1fff4e6e:    4b14        .K      LDR      r3,[pc,#80] ; [0x1fff4ec0] = 0x24cc
        0x1fff4e70:    6003        .`      STR      r3,[r0,#0]
        0x1fff4e72:    7809        .x      LDRB     r1,[r1,#0]
        0x1fff4e74:    2900        .)      CMP      r1,#0
        0x1fff4e76:    d003        ..      BEQ      0x1fff4e80 ; rf_phy_ana_cfg + 200
        0x1fff4e78:    e006        ..      B        0x1fff4e88 ; rf_phy_ana_cfg + 208
        0x1fff4e7a:    68c3        .h      LDR      r3,[r0,#0xc]
        0x1fff4e7c:    4313        .C      ORRS     r3,r3,r2
        0x1fff4e7e:    e7e4        ..      B        0x1fff4e4a ; rf_phy_ana_cfg + 146
        0x1fff4e80:    6801        .h      LDR      r1,[r0,#0]
        0x1fff4e82:    2301        .#      MOVS     r3,#1
        0x1fff4e84:    4319        .C      ORRS     r1,r1,r3
        0x1fff4e86:    6001        .`      STR      r1,[r0,#0]
        0x1fff4e88:    490e        .I      LDR      r1,[pc,#56] ; [0x1fff4ec4] = 0x1fff0a48
        0x1fff4e8a:    7809        .x      LDRB     r1,[r1,#0]
        0x1fff4e8c:    4b0e        .K      LDR      r3,[pc,#56] ; [0x1fff4ec8] = 0x825
        0x1fff4e8e:    06c9        ..      LSLS     r1,r1,#27
        0x1fff4e90:    0bc9        ..      LSRS     r1,r1,#15
        0x1fff4e92:    18c9        ..      ADDS     r1,r1,r3
        0x1fff4e94:    6381        .c      STR      r1,[r0,#0x38]
        0x1fff4e96:    480d        .H      LDR      r0,[pc,#52] ; [0x1fff4ecc] = 0x1a6fc2f
        0x1fff4e98:    61d0        .a      STR      r0,[r2,#0x1c]
        0x1fff4e9a:    bd30        0.      POP      {r4,r5,pc}
    $d
        0x1fff4e9c:    4000f040    @..@    DCD    1073803328
        0x1fff4ea0:    1fff0a4c    L...    DCD    536808012
        0x1fff4ea4:    1fff0a4b    K...    DCD    536808011
        0x1fff4ea8:    40030080    ...@    DCD    1073938560
        0x1fff4eac:    1fff0a4a    J...    DCD    536808010
        0x1fff4eb0:    20000bc0    ...     DCD    536873920
        0x1fff4eb4:    076a3e7a    z>j.    DCD    124403322
        0x1fff4eb8:    04890000    ....    DCD    76087296
        0x1fff4ebc:    04898000    ....    DCD    76120064
        0x1fff4ec0:    000024cc    .$..    DCD    9420
        0x1fff4ec4:    1fff0a48    H...    DCD    536808008
        0x1fff4ec8:    00000825    %...    DCD    2085
        0x1fff4ecc:    01a6fc2f    /...    DCD    27720751
    $t
    i.rf_phy_bb_cfg
    rf_phy_bb_cfg
        0x1fff4ed0:    b5f8        ..      PUSH     {r3-r7,lr}
        0x1fff4ed2:    0005        ..      MOVS     r5,r0
        0x1fff4ed4:    484a        JH      LDR      r0,[pc,#296] ; [0x1fff5000] = 0x400300c0
        0x1fff4ed6:    4b4b        KK      LDR      r3,[pc,#300] ; [0x1fff5004] = 0x1c0000
        0x1fff4ed8:    4c4b        KL      LDR      r4,[pc,#300] ; [0x1fff5008] = 0x1fff0a4b
        0x1fff4eda:    4a4c        LJ      LDR      r2,[pc,#304] ; [0x1fff500c] = 0x40000
        0x1fff4edc:    494c        LI      LDR      r1,[pc,#304] ; [0x1fff5010] = 0x40030080
        0x1fff4ede:    d034        4.      BEQ      0x1fff4f4a ; rf_phy_bb_cfg + 122
        0x1fff4ee0:    2d02        .-      CMP      r5,#2
        0x1fff4ee2:    d032        2.      BEQ      0x1fff4f4a ; rf_phy_bb_cfg + 122
        0x1fff4ee4:    1586        ..      ASRS     r6,r0,#22
        0x1fff4ee6:    1057        W.      ASRS     r7,r2,#1
        0x1fff4ee8:    6206        .b      STR      r6,[r0,#0x20]
        0x1fff4eea:    6986        .i      LDR      r6,[r0,#0x18]
        0x1fff4eec:    439e        .C      BICS     r6,r6,r3
        0x1fff4eee:    18b3        ..      ADDS     r3,r6,r2
        0x1fff4ef0:    6183        .a      STR      r3,[r0,#0x18]
        0x1fff4ef2:    7820         x      LDRB     r0,[r4,#0]
        0x1fff4ef4:    2800        .(      CMP      r0,#0
        0x1fff4ef6:    d033        3.      BEQ      0x1fff4f60 ; rf_phy_bb_cfg + 144
        0x1fff4ef8:    610f        .a      STR      r7,[r1,#0x10]
        0x1fff4efa:    4846        FH      LDR      r0,[pc,#280] ; [0x1fff5014] = 0x1000003
        0x1fff4efc:    6308        .c      STR      r0,[r1,#0x30]
        0x1fff4efe:    4846        FH      LDR      r0,[pc,#280] ; [0x1fff5018] = 0x1fff0a44
        0x1fff4f00:    7800        .x      LDRB     r0,[r0,#0]
        0x1fff4f02:    2201        ."      MOVS     r2,#1
        0x1fff4f04:    0312        ..      LSLS     r2,r2,#12
        0x1fff4f06:    1880        ..      ADDS     r0,r0,r2
        0x1fff4f08:    6148        Ha      STR      r0,[r1,#0x14]
        0x1fff4f0a:    4e41        AN      LDR      r6,[pc,#260] ; [0x1fff5010] = 0x40030080
        0x1fff4f0c:    4c40        @L      LDR      r4,[pc,#256] ; [0x1fff5010] = 0x40030080
        0x1fff4f0e:    4b43        CK      LDR      r3,[pc,#268] ; [0x1fff501c] = 0xb2800
        0x1fff4f10:    3e80        .>      SUBS     r6,r6,#0x80
        0x1fff4f12:    3c40        @<      SUBS     r4,r4,#0x40
        0x1fff4f14:    2d00        .-      CMP      r5,#0
        0x1fff4f16:    d027        '.      BEQ      0x1fff4f68 ; rf_phy_bb_cfg + 152
        0x1fff4f18:    2165        e!      MOVS     r1,#0x65
        0x1fff4f1a:    4a41        AJ      LDR      r2,[pc,#260] ; [0x1fff5020] = 0x37555555
        0x1fff4f1c:    02c9        ..      LSLS     r1,r1,#11
        0x1fff4f1e:    4841        AH      LDR      r0,[pc,#260] ; [0x1fff5024] = 0x8e89bed6
        0x1fff4f20:    2d01        .-      CMP      r5,#1
        0x1fff4f22:    d02e        ..      BEQ      0x1fff4f82 ; rf_phy_bb_cfg + 178
        0x1fff4f24:    2d02        .-      CMP      r5,#2
        0x1fff4f26:    d031        1.      BEQ      0x1fff4f8c ; rf_phy_bb_cfg + 188
        0x1fff4f28:    2d03        .-      CMP      r5,#3
        0x1fff4f2a:    d05a        Z.      BEQ      0x1fff4fe2 ; rf_phy_bb_cfg + 274
        0x1fff4f2c:    2d04        .-      CMP      r5,#4
        0x1fff4f2e:    d058        X.      BEQ      0x1fff4fe2 ; rf_phy_bb_cfg + 274
        0x1fff4f30:    493d        =I      LDR      r1,[pc,#244] ; [0x1fff5028] = 0x42068000
        0x1fff4f32:    1869        i.      ADDS     r1,r5,r1
        0x1fff4f34:    6031        1`      STR      r1,[r6,#0]
        0x1fff4f36:    493d        =I      LDR      r1,[pc,#244] ; [0x1fff502c] = 0x555555
        0x1fff4f38:    60a1        .`      STR      r1,[r4,#8]
        0x1fff4f3a:    6023        #`      STR      r3,[r4,#0]
        0x1fff4f3c:    60e0        .`      STR      r0,[r4,#0xc]
        0x1fff4f3e:    2102        .!      MOVS     r1,#2
        0x1fff4f40:    4608        .F      MOV      r0,r1
        0x1fff4f42:    f7fef99f    ....    BL       $Ven$TT$L$$ll_hw_set_crc_fmt ; 0x1fff3284
        0x1fff4f46:    483a        :H      LDR      r0,[pc,#232] ; [0x1fff5030] = 0x22085580
        0x1fff4f48:    e02b        +.      B        0x1fff4fa2 ; rf_phy_bb_cfg + 210
        0x1fff4f4a:    2680        .&      MOVS     r6,#0x80
        0x1fff4f4c:    6206        .b      STR      r6,[r0,#0x20]
        0x1fff4f4e:    6986        .i      LDR      r6,[r0,#0x18]
        0x1fff4f50:    439e        .C      BICS     r6,r6,r3
        0x1fff4f52:    2301        .#      MOVS     r3,#1
        0x1fff4f54:    04db        ..      LSLS     r3,r3,#19
        0x1fff4f56:    18f6        ..      ADDS     r6,r6,r3
        0x1fff4f58:    6186        .a      STR      r6,[r0,#0x18]
        0x1fff4f5a:    7820         x      LDRB     r0,[r4,#0]
        0x1fff4f5c:    2800        .(      CMP      r0,#0
        0x1fff4f5e:    d001        ..      BEQ      0x1fff4f64 ; rf_phy_bb_cfg + 148
        0x1fff4f60:    610a        .a      STR      r2,[r1,#0x10]
        0x1fff4f62:    e7ca        ..      B        0x1fff4efa ; rf_phy_bb_cfg + 42
        0x1fff4f64:    610b        .a      STR      r3,[r1,#0x10]
        0x1fff4f66:    e7c8        ..      B        0x1fff4efa ; rf_phy_bb_cfg + 42
        0x1fff4f68:    4832        2H      LDR      r0,[pc,#200] ; [0x1fff5034] = 0x78068000
        0x1fff4f6a:    6030        0`      STR      r0,[r6,#0]
        0x1fff4f6c:    2000        .       MOVS     r0,#0
        0x1fff4f6e:    60a0        .`      STR      r0,[r4,#8]
        0x1fff4f70:    6023        #`      STR      r3,[r4,#0]
        0x1fff4f72:    4831        1H      LDR      r0,[pc,#196] ; [0x1fff5038] = 0x3675ee07
        0x1fff4f74:    60e0        .`      STR      r0,[r4,#0xc]
        0x1fff4f76:    2103        .!      MOVS     r1,#3
        0x1fff4f78:    4608        .F      MOV      r0,r1
        0x1fff4f7a:    f7fef983    ....    BL       $Ven$TT$L$$ll_hw_set_crc_fmt ; 0x1fff3284
        0x1fff4f7e:    482f        /H      LDR      r0,[pc,#188] ; [0x1fff503c] = 0x22086680
        0x1fff4f80:    e00f        ..      B        0x1fff4fa2 ; rf_phy_bb_cfg + 210
        0x1fff4f82:    4b2f        /K      LDR      r3,[pc,#188] ; [0x1fff5040] = 0x3d068001
        0x1fff4f84:    6033        3`      STR      r3,[r6,#0]
        0x1fff4f86:    60a2        .`      STR      r2,[r4,#8]
        0x1fff4f88:    6021        !`      STR      r1,[r4,#0]
        0x1fff4f8a:    e7d7        ..      B        0x1fff4f3c ; rf_phy_bb_cfg + 108
        0x1fff4f8c:    4b2c        ,K      LDR      r3,[pc,#176] ; [0x1fff5040] = 0x3d068001
        0x1fff4f8e:    1c5b        [.      ADDS     r3,r3,#1
        0x1fff4f90:    6033        3`      STR      r3,[r6,#0]
        0x1fff4f92:    60a2        .`      STR      r2,[r4,#8]
        0x1fff4f94:    6021        !`      STR      r1,[r4,#0]
        0x1fff4f96:    60e0        .`      STR      r0,[r4,#0xc]
        0x1fff4f98:    2102        .!      MOVS     r1,#2
        0x1fff4f9a:    4608        .F      MOV      r0,r1
        0x1fff4f9c:    f7fef972    ..r.    BL       $Ven$TT$L$$ll_hw_set_crc_fmt ; 0x1fff3284
        0x1fff4fa0:    4828        (H      LDR      r0,[pc,#160] ; [0x1fff5044] = 0x22084580
        0x1fff4fa2:    6120         a      STR      r0,[r4,#0x10]
        0x1fff4fa4:    68f0        .h      LDR      r0,[r6,#0xc]
        0x1fff4fa6:    21ff        .!      MOVS     r1,#0xff
        0x1fff4fa8:    4308        .C      ORRS     r0,r0,r1
        0x1fff4faa:    60f0        .`      STR      r0,[r6,#0xc]
        0x1fff4fac:    4826        &H      LDR      r0,[pc,#152] ; [0x1fff5048] = 0x545c9ca4
        0x1fff4fae:    6160        `a      STR      r0,[r4,#0x14]
        0x1fff4fb0:    4826        &H      LDR      r0,[pc,#152] ; [0x1fff504c] = 0x4243444c
        0x1fff4fb2:    61a0        .a      STR      r0,[r4,#0x18]
        0x1fff4fb4:    4826        &H      LDR      r0,[pc,#152] ; [0x1fff5050] = 0x464c5241
        0x1fff4fb6:    61e0        .a      STR      r0,[r4,#0x1c]
        0x1fff4fb8:    4826        &H      LDR      r0,[pc,#152] ; [0x1fff5054] = 0x2e343a40
        0x1fff4fba:    6220         b      STR      r0,[r4,#0x20]
        0x1fff4fbc:    4826        &H      LDR      r0,[pc,#152] ; [0x1fff5058] = 0x557f0028
        0x1fff4fbe:    6260        `b      STR      r0,[r4,#0x24]
        0x1fff4fc0:    4826        &H      LDR      r0,[pc,#152] ; [0x1fff505c] = 0x3d43494f
        0x1fff4fc2:    62a0        .b      STR      r0,[r4,#0x28]
        0x1fff4fc4:    4826        &H      LDR      r0,[pc,#152] ; [0x1fff5060] = 0x4c2b3137
        0x1fff4fc6:    62e0        .b      STR      r0,[r4,#0x2c]
        0x1fff4fc8:    4826        &H      LDR      r0,[pc,#152] ; [0x1fff5064] = 0x343a4046
        0x1fff4fca:    6320         c      STR      r0,[r4,#0x30]
        0x1fff4fcc:    4826        &H      LDR      r0,[pc,#152] ; [0x1fff5068] = 0x1c22282e
        0x1fff4fce:    6360        `c      STR      r0,[r4,#0x34]
        0x1fff4fd0:    20e0        .       MOVS     r0,#0xe0
        0x1fff4fd2:    2d01        .-      CMP      r5,#1
        0x1fff4fd4:    d00d        ..      BEQ      0x1fff4ff2 ; rf_phy_bb_cfg + 290
        0x1fff4fd6:    6821        !h      LDR      r1,[r4,#0]
        0x1fff4fd8:    2d02        .-      CMP      r5,#2
        0x1fff4fda:    d00e        ..      BEQ      0x1fff4ffa ; rf_phy_bb_cfg + 298
        0x1fff4fdc:    4381        .C      BICS     r1,r1,r0
        0x1fff4fde:    6021        !`      STR      r1,[r4,#0]
        0x1fff4fe0:    bdf8        ..      POP      {r3-r7,pc}
        0x1fff4fe2:    4b22        "K      LDR      r3,[pc,#136] ; [0x1fff506c] = 0x98068000
        0x1fff4fe4:    18eb        ..      ADDS     r3,r5,r3
        0x1fff4fe6:    6033        3`      STR      r3,[r6,#0]
        0x1fff4fe8:    4b21        !K      LDR      r3,[pc,#132] ; [0x1fff5070] = 0x50985a54
        0x1fff4fea:    6073        s`      STR      r3,[r6,#4]
        0x1fff4fec:    6021        !`      STR      r1,[r4,#0]
        0x1fff4fee:    60a2        .`      STR      r2,[r4,#8]
        0x1fff4ff0:    e7a4        ..      B        0x1fff4f3c ; rf_phy_bb_cfg + 108
        0x1fff4ff2:    6821        !h      LDR      r1,[r4,#0]
        0x1fff4ff4:    4381        .C      BICS     r1,r1,r0
        0x1fff4ff6:    3120         1      ADDS     r1,r1,#0x20
        0x1fff4ff8:    e7f1        ..      B        0x1fff4fde ; rf_phy_bb_cfg + 270
        0x1fff4ffa:    4381        .C      BICS     r1,r1,r0
        0x1fff4ffc:    3140        @1      ADDS     r1,r1,#0x40
        0x1fff4ffe:    e7ee        ..      B        0x1fff4fde ; rf_phy_bb_cfg + 270
    $d
        0x1fff5000:    400300c0    ...@    DCD    1073938624
        0x1fff5004:    001c0000    ....    DCD    1835008
        0x1fff5008:    1fff0a4b    K...    DCD    536808011
        0x1fff500c:    00040000    ....    DCD    262144
        0x1fff5010:    40030080    ...@    DCD    1073938560
        0x1fff5014:    01000003    ....    DCD    16777219
        0x1fff5018:    1fff0a44    D...    DCD    536808004
        0x1fff501c:    000b2800    .(..    DCD    731136
        0x1fff5020:    37555555    UUU7    DCD    928339285
        0x1fff5024:    8e89bed6    ....    DCD    2391391958
        0x1fff5028:    42068000    ...B    DCD    1107722240
        0x1fff502c:    00555555    UUU.    DCD    5592405
        0x1fff5030:    22085580    .U."    DCD    570971520
        0x1fff5034:    78068000    ...x    DCD    2013691904
        0x1fff5038:    3675ee07    ..u6    DCD    913698311
        0x1fff503c:    22086680    .f."    DCD    570975872
        0x1fff5040:    3d068001    ...=    DCD    1023836161
        0x1fff5044:    22084580    .E."    DCD    570967424
        0x1fff5048:    545c9ca4    ..\T    DCD    1415355556
        0x1fff504c:    4243444c    LDCB    DCD    1111704652
        0x1fff5050:    464c5241    ARLF    DCD    1179406913
        0x1fff5054:    2e343a40    @:4.    DCD    775174720
        0x1fff5058:    557f0028    (..U    DCD    1434386472
        0x1fff505c:    3d43494f    OIC=    DCD    1027819855
        0x1fff5060:    4c2b3137    71+L    DCD    1277899063
        0x1fff5064:    343a4046    F@:4    DCD    876232774
        0x1fff5068:    1c22282e    .(".    DCD    472000558
        0x1fff506c:    98068000    ....    DCD    2550562816
        0x1fff5070:    50985a54    TZ.P    DCD    1352161876
    $t
    i.rf_phy_change_cfg0
    rf_phy_change_cfg0
        0x1fff5074:    b5f0        ..      PUSH     {r4-r7,lr}
        0x1fff5076:    4b22        "K      LDR      r3,[pc,#136] ; [0x1fff5100] = 0x400300c0
        0x1fff5078:    4d21        !M      LDR      r5,[pc,#132] ; [0x1fff5100] = 0x400300c0
        0x1fff507a:    4921        !I      LDR      r1,[pc,#132] ; [0x1fff5100] = 0x400300c0
        0x1fff507c:    2680        .&      MOVS     r6,#0x80
        0x1fff507e:    4a20         J      LDR      r2,[pc,#128] ; [0x1fff5100] = 0x400300c0
        0x1fff5080:    2707        .'      MOVS     r7,#7
        0x1fff5082:    04bf        ..      LSLS     r7,r7,#18
        0x1fff5084:    3b40        @;      SUBS     r3,r3,#0x40
        0x1fff5086:    3dc0        .=      SUBS     r5,r5,#0xc0
        0x1fff5088:    24e0        .$      MOVS     r4,#0xe0
        0x1fff508a:    3980        .9      SUBS     r1,r1,#0x80
        0x1fff508c:    2802        .(      CMP      r0,#2
        0x1fff508e:    6216        .b      STR      r6,[r2,#0x20]
        0x1fff5090:    6996        .i      LDR      r6,[r2,#0x18]
        0x1fff5092:    d014        ..      BEQ      0x1fff50be ; rf_phy_change_cfg0 + 74
        0x1fff5094:    43be        .C      BICS     r6,r6,r7
        0x1fff5096:    2701        .'      MOVS     r7,#1
        0x1fff5098:    04bf        ..      LSLS     r7,r7,#18
        0x1fff509a:    19f6        ..      ADDS     r6,r6,r7
        0x1fff509c:    6196        .a      STR      r6,[r2,#0x18]
        0x1fff509e:    4a19        .J      LDR      r2,[pc,#100] ; [0x1fff5104] = 0x1fff0a4b
        0x1fff50a0:    7812        .x      LDRB     r2,[r2,#0]
        0x1fff50a2:    2a00        .*      CMP      r2,#0
        0x1fff50a4:    d01e        ..      BEQ      0x1fff50e4 ; rf_phy_change_cfg0 + 112
        0x1fff50a6:    107a        z.      ASRS     r2,r7,#1
        0x1fff50a8:    611a        .a      STR      r2,[r3,#0x10]
        0x1fff50aa:    2801        .(      CMP      r0,#1
        0x1fff50ac:    d01e        ..      BEQ      0x1fff50ec ; rf_phy_change_cfg0 + 120
        0x1fff50ae:    4a16        .J      LDR      r2,[pc,#88] ; [0x1fff5108] = 0x98068000
        0x1fff50b0:    1880        ..      ADDS     r0,r0,r2
        0x1fff50b2:    6028        (`      STR      r0,[r5,#0]
        0x1fff50b4:    4815        .H      LDR      r0,[pc,#84] ; [0x1fff510c] = 0x22085580
        0x1fff50b6:    6108        .a      STR      r0,[r1,#0x10]
        0x1fff50b8:    6808        .h      LDR      r0,[r1,#0]
        0x1fff50ba:    43a0        .C      BICS     r0,r0,r4
        0x1fff50bc:    e014        ..      B        0x1fff50e8 ; rf_phy_change_cfg0 + 116
        0x1fff50be:    2001        .       MOVS     r0,#1
        0x1fff50c0:    43be        .C      BICS     r6,r6,r7
        0x1fff50c2:    04c0        ..      LSLS     r0,r0,#19
        0x1fff50c4:    1836        6.      ADDS     r6,r6,r0
        0x1fff50c6:    6196        .a      STR      r6,[r2,#0x18]
        0x1fff50c8:    4a0e        .J      LDR      r2,[pc,#56] ; [0x1fff5104] = 0x1fff0a4b
        0x1fff50ca:    7812        .x      LDRB     r2,[r2,#0]
        0x1fff50cc:    2a00        .*      CMP      r2,#0
        0x1fff50ce:    d000        ..      BEQ      0x1fff50d2 ; rf_phy_change_cfg0 + 94
        0x1fff50d0:    1040        @.      ASRS     r0,r0,#1
        0x1fff50d2:    6118        .a      STR      r0,[r3,#0x10]
        0x1fff50d4:    480e        .H      LDR      r0,[pc,#56] ; [0x1fff5110] = 0x3d068002
        0x1fff50d6:    6028        (`      STR      r0,[r5,#0]
        0x1fff50d8:    480e        .H      LDR      r0,[pc,#56] ; [0x1fff5114] = 0x22084580
        0x1fff50da:    6108        .a      STR      r0,[r1,#0x10]
        0x1fff50dc:    6808        .h      LDR      r0,[r1,#0]
        0x1fff50de:    43a0        .C      BICS     r0,r0,r4
        0x1fff50e0:    3040        @0      ADDS     r0,r0,#0x40
        0x1fff50e2:    e001        ..      B        0x1fff50e8 ; rf_phy_change_cfg0 + 116
        0x1fff50e4:    611f        .a      STR      r7,[r3,#0x10]
        0x1fff50e6:    e7e0        ..      B        0x1fff50aa ; rf_phy_change_cfg0 + 54
        0x1fff50e8:    6008        .`      STR      r0,[r1,#0]
        0x1fff50ea:    bdf0        ..      POP      {r4-r7,pc}
        0x1fff50ec:    4808        .H      LDR      r0,[pc,#32] ; [0x1fff5110] = 0x3d068002
        0x1fff50ee:    1e40        @.      SUBS     r0,r0,#1
        0x1fff50f0:    6028        (`      STR      r0,[r5,#0]
        0x1fff50f2:    4809        .H      LDR      r0,[pc,#36] ; [0x1fff5118] = 0x22086680
        0x1fff50f4:    6108        .a      STR      r0,[r1,#0x10]
        0x1fff50f6:    6808        .h      LDR      r0,[r1,#0]
        0x1fff50f8:    43a0        .C      BICS     r0,r0,r4
        0x1fff50fa:    3020         0      ADDS     r0,r0,#0x20
        0x1fff50fc:    e7f4        ..      B        0x1fff50e8 ; rf_phy_change_cfg0 + 116
    $d
        0x1fff50fe:    0000        ..      DCW    0
        0x1fff5100:    400300c0    ...@    DCD    1073938624
        0x1fff5104:    1fff0a4b    K...    DCD    536808011
        0x1fff5108:    98068000    ....    DCD    2550562816
        0x1fff510c:    22085580    .U."    DCD    570971520
        0x1fff5110:    3d068002    ...=    DCD    1023836162
        0x1fff5114:    22084580    .E."    DCD    570967424
        0x1fff5118:    22086680    .f."    DCD    570975872
    $t
    i.rf_phy_ini
    rf_phy_ini
        0x1fff511c:    b510        ..      PUSH     {r4,lr}
        0x1fff511e:    490a        .I      LDR      r1,[pc,#40] ; [0x1fff5148] = 0x1fff0a4b
        0x1fff5120:    2000        .       MOVS     r0,#0
        0x1fff5122:    7008        .p      STRB     r0,[r1,#0]
        0x1fff5124:    4909        .I      LDR      r1,[pc,#36] ; [0x1fff514c] = 0x1fff0a4c
        0x1fff5126:    2002        .       MOVS     r0,#2
        0x1fff5128:    7008        .p      STRB     r0,[r1,#0]
        0x1fff512a:    f7fffe45    ..E.    BL       rf_phy_ana_cfg ; 0x1fff4db8
        0x1fff512e:    4808        .H      LDR      r0,[pc,#32] ; [0x1fff5150] = 0x1fff0a48
        0x1fff5130:    7800        .x      LDRB     r0,[r0,#0]
        0x1fff5132:    f000f811    ....    BL       rf_phy_set_txPower ; 0x1fff5158
        0x1fff5136:    4c07        .L      LDR      r4,[pc,#28] ; [0x1fff5154] = 0x1fff0a49
        0x1fff5138:    7820         x      LDRB     r0,[r4,#0]
        0x1fff513a:    f7fffec9    ....    BL       rf_phy_bb_cfg ; 0x1fff4ed0
        0x1fff513e:    7820         x      LDRB     r0,[r4,#0]
        0x1fff5140:    f7fef8a6    ....    BL       $Ven$TT$L$$ll_hw_tx2rx_timing_config ; 0x1fff3290
        0x1fff5144:    bd10        ..      POP      {r4,pc}
    $d
        0x1fff5146:    0000        ..      DCW    0
        0x1fff5148:    1fff0a4b    K...    DCD    536808011
        0x1fff514c:    1fff0a4c    L...    DCD    536808012
        0x1fff5150:    1fff0a48    H...    DCD    536808008
        0x1fff5154:    1fff0a49    I...    DCD    536808009
    $t
    i.rf_phy_set_txPower
    rf_phy_set_txPower
        0x1fff5158:    b5f0        ..      PUSH     {r4-r7,lr}
        0x1fff515a:    4a1a        .J      LDR      r2,[pc,#104] ; [0x1fff51c4] = 0x4000f000
        0x1fff515c:    2303        .#      MOVS     r3,#3
        0x1fff515e:    2507        .%      MOVS     r5,#7
        0x1fff5160:    00d6        ..      LSLS     r6,r2,#3
        0x1fff5162:    4919        .I      LDR      r1,[pc,#100] ; [0x1fff51c8] = 0x400300c0
        0x1fff5164:    029b        ..      LSLS     r3,r3,#10
        0x1fff5166:    2460        `$      MOVS     r4,#0x60
        0x1fff5168:    01ed        ..      LSLS     r5,r5,#7
        0x1fff516a:    6957        Wi      LDR      r7,[r2,#0x14]
        0x1fff516c:    283f        ?(      CMP      r0,#0x3f
        0x1fff516e:    d01a        ..      BEQ      0x1fff51a6 ; rf_phy_set_txPower + 78
        0x1fff5170:    43b7        .C      BICS     r7,r7,r6
        0x1fff5172:    2605        .&      MOVS     r6,#5
        0x1fff5174:    0436        6.      LSLS     r6,r6,#16
        0x1fff5176:    19be        ..      ADDS     r6,r7,r6
        0x1fff5178:    6156        Va      STR      r6,[r2,#0x14]
        0x1fff517a:    68ca        .h      LDR      r2,[r1,#0xc]
        0x1fff517c:    439a        .C      BICS     r2,r2,r3
        0x1fff517e:    14cb        ..      ASRS     r3,r1,#19
        0x1fff5180:    18d2        ..      ADDS     r2,r2,r3
        0x1fff5182:    60ca        .`      STR      r2,[r1,#0xc]
        0x1fff5184:    69ca        .i      LDR      r2,[r1,#0x1c]
        0x1fff5186:    43a2        .C      BICS     r2,r2,r4
        0x1fff5188:    3220         2      ADDS     r2,r2,#0x20
        0x1fff518a:    61ca        .a      STR      r2,[r1,#0x1c]
        0x1fff518c:    69ca        .i      LDR      r2,[r1,#0x1c]
        0x1fff518e:    43aa        .C      BICS     r2,r2,r5
        0x1fff5190:    61ca        .a      STR      r2,[r1,#0x1c]
        0x1fff5192:    490d        .I      LDR      r1,[pc,#52] ; [0x1fff51c8] = 0x400300c0
        0x1fff5194:    3940        @9      SUBS     r1,r1,#0x40
        0x1fff5196:    6b8a        .k      LDR      r2,[r1,#0x38]
        0x1fff5198:    06c0        ..      LSLS     r0,r0,#27
        0x1fff519a:    0512        ..      LSLS     r2,r2,#20
        0x1fff519c:    0d12        ..      LSRS     r2,r2,#20
        0x1fff519e:    0bc0        ..      LSRS     r0,r0,#15
        0x1fff51a0:    4302        .C      ORRS     r2,r2,r0
        0x1fff51a2:    638a        .c      STR      r2,[r1,#0x38]
        0x1fff51a4:    bdf0        ..      POP      {r4-r7,pc}
        0x1fff51a6:    43b7        .C      BICS     r7,r7,r6
        0x1fff51a8:    2601        .&      MOVS     r6,#1
        0x1fff51aa:    04b6        ..      LSLS     r6,r6,#18
        0x1fff51ac:    19be        ..      ADDS     r6,r7,r6
        0x1fff51ae:    6156        Va      STR      r6,[r2,#0x14]
        0x1fff51b0:    68ca        .h      LDR      r2,[r1,#0xc]
        0x1fff51b2:    439a        .C      BICS     r2,r2,r3
        0x1fff51b4:    60ca        .`      STR      r2,[r1,#0xc]
        0x1fff51b6:    69ca        .i      LDR      r2,[r1,#0x1c]
        0x1fff51b8:    43a2        .C      BICS     r2,r2,r4
        0x1fff51ba:    61ca        .a      STR      r2,[r1,#0x1c]
        0x1fff51bc:    69ca        .i      LDR      r2,[r1,#0x1c]
        0x1fff51be:    43aa        .C      BICS     r2,r2,r5
        0x1fff51c0:    3280        .2      ADDS     r2,r2,#0x80
        0x1fff51c2:    e7e5        ..      B        0x1fff5190 ; rf_phy_set_txPower + 56
    $d
        0x1fff51c4:    4000f000    ...@    DCD    1073803264
        0x1fff51c8:    400300c0    ...@    DCD    1073938624
    $t
    i.rf_rxDcoc_cfg
    rf_rxDcoc_cfg
        0x1fff51cc:    b5f8        ..      PUSH     {r3-r7,lr}
        0x1fff51ce:    4b3a        :K      LDR      r3,[pc,#232] ; [0x1fff52b8] = 0x40031000
        0x1fff51d0:    6a5d        ]j      LDR      r5,[r3,#0x24]
        0x1fff51d2:    6a9c        .j      LDR      r4,[r3,#0x28]
        0x1fff51d4:    2600        .&      MOVS     r6,#0
        0x1fff51d6:    625e        ^b      STR      r6,[r3,#0x24]
        0x1fff51d8:    629e        .b      STR      r6,[r3,#0x28]
        0x1fff51da:    4b38        8K      LDR      r3,[pc,#224] ; [0x1fff52bc] = 0x40030080
        0x1fff51dc:    6358        Xc      STR      r0,[r3,#0x34]
        0x1fff51de:    200e        .       MOVS     r0,#0xe
        0x1fff51e0:    6218        .b      STR      r0,[r3,#0x20]
        0x1fff51e2:    159e        ..      ASRS     r6,r3,#22
        0x1fff51e4:    625e        ^b      STR      r6,[r3,#0x24]
        0x1fff51e6:    2040        @       MOVS     r0,#0x40
        0x1fff51e8:    6298        .b      STR      r0,[r3,#0x28]
        0x1fff51ea:    2050        P       MOVS     r0,#0x50
        0x1fff51ec:    62d8        .b      STR      r0,[r3,#0x2c]
        0x1fff51ee:    20ff        .       MOVS     r0,#0xff
        0x1fff51f0:    302b        +0      ADDS     r0,r0,#0x2b
        0x1fff51f2:    6258        Xb      STR      r0,[r3,#0x24]
        0x1fff51f4:    4831        1H      LDR      r0,[pc,#196] ; [0x1fff52bc] = 0x40030080
        0x1fff51f6:    3040        @0      ADDS     r0,r0,#0x40
        0x1fff51f8:    2901        .)      CMP      r1,#1
        0x1fff51fa:    d015        ..      BEQ      0x1fff5228 ; rf_rxDcoc_cfg + 92
        0x1fff51fc:    2180        .!      MOVS     r1,#0x80
        0x1fff51fe:    6201        .b      STR      r1,[r0,#0x20]
        0x1fff5200:    492f        /I      LDR      r1,[pc,#188] ; [0x1fff52c0] = 0x2ca
        0x1fff5202:    23ff        .#      MOVS     r3,#0xff
        0x1fff5204:    482d        -H      LDR      r0,[pc,#180] ; [0x1fff52bc] = 0x40030080
        0x1fff5206:    33a5        .3      ADDS     r3,r3,#0xa5
        0x1fff5208:    3040        @0      ADDS     r0,r0,#0x40
        0x1fff520a:    6083        .`      STR      r3,[r0,#8]
        0x1fff520c:    4b2d        -K      LDR      r3,[pc,#180] ; [0x1fff52c4] = 0x2020
        0x1fff520e:    6043        C`      STR      r3,[r0,#4]
        0x1fff5210:    4b2a        *K      LDR      r3,[pc,#168] ; [0x1fff52bc] = 0x40030080
        0x1fff5212:    482d        -H      LDR      r0,[pc,#180] ; [0x1fff52c8] = 0x200c5680
        0x1fff5214:    3b40        @;      SUBS     r3,r3,#0x40
        0x1fff5216:    6118        .a      STR      r0,[r3,#0x10]
        0x1fff5218:    207d        }       MOVS     r0,#0x7d
        0x1fff521a:    00c0        ..      LSLS     r0,r0,#3
        0x1fff521c:    9000        ..      STR      r0,[sp,#0]
        0x1fff521e:    1e47        G.      SUBS     r7,r0,#1
        0x1fff5220:    9700        ..      STR      r7,[sp,#0]
        0x1fff5222:    d305        ..      BCC      0x1fff5230 ; rf_rxDcoc_cfg + 100
        0x1fff5224:    4638        8F      MOV      r0,r7
        0x1fff5226:    e7fa        ..      B        0x1fff521e ; rf_rxDcoc_cfg + 82
        0x1fff5228:    6206        .b      STR      r6,[r0,#0x20]
        0x1fff522a:    4925        %I      LDR      r1,[pc,#148] ; [0x1fff52c0] = 0x2ca
        0x1fff522c:    3183        .1      ADDS     r1,r1,#0x83
        0x1fff522e:    e7e8        ..      B        0x1fff5202 ; rf_rxDcoc_cfg + 54
        0x1fff5230:    4826        &H      LDR      r0,[pc,#152] ; [0x1fff52cc] = 0x216564
        0x1fff5232:    0589        ..      LSLS     r1,r1,#22
        0x1fff5234:    180f        ..      ADDS     r7,r1,r0
        0x1fff5236:    4821        !H      LDR      r0,[pc,#132] ; [0x1fff52bc] = 0x40030080
        0x1fff5238:    3840        @8      SUBS     r0,r0,#0x40
        0x1fff523a:    6387        .c      STR      r7,[r0,#0x38]
        0x1fff523c:    4b23        #K      LDR      r3,[pc,#140] ; [0x1fff52cc] = 0x216564
        0x1fff523e:    1c5b        [.      ADDS     r3,r3,#1
        0x1fff5240:    18c9        ..      ADDS     r1,r1,r3
        0x1fff5242:    6381        .c      STR      r1,[r0,#0x38]
        0x1fff5244:    4822        "H      LDR      r0,[pc,#136] ; [0x1fff52d0] = 0x2710
        0x1fff5246:    9000        ..      STR      r0,[sp,#0]
        0x1fff5248:    4822        "H      LDR      r0,[pc,#136] ; [0x1fff52d4] = 0x1fff0a4a
        0x1fff524a:    7800        .x      LDRB     r0,[r0,#0]
        0x1fff524c:    0003        ..      MOVS     r3,r0
        0x1fff524e:    f7fdff65    ..e.    BL       $Ven$TT$L$$__ARM_common_switch8 ; 0x1fff311c
    $d
        0x1fff5252:    0405        ..      DCW    1029
        0x1fff5254:    0d060804    ....    DCD    218499076
        0x1fff5258:    0008        ..      DCW    8
    $t
        0x1fff525a:    481f        .H      LDR      r0,[pc,#124] ; [0x1fff52d8] = 0x4e20
        0x1fff525c:    e000        ..      B        0x1fff5260 ; rf_rxDcoc_cfg + 148
        0x1fff525e:    481f        .H      LDR      r0,[pc,#124] ; [0x1fff52dc] = 0x7530
        0x1fff5260:    9000        ..      STR      r0,[sp,#0]
        0x1fff5262:    481f        .H      LDR      r0,[pc,#124] ; [0x1fff52e0] = 0x20200000
        0x1fff5264:    6010        .`      STR      r0,[r2,#0]
        0x1fff5266:    4815        .H      LDR      r0,[pc,#84] ; [0x1fff52bc] = 0x40030080
        0x1fff5268:    3040        @0      ADDS     r0,r0,#0x40
        0x1fff526a:    e005        ..      B        0x1fff5278 ; rf_rxDcoc_cfg + 172
        0x1fff526c:    481d        .H      LDR      r0,[pc,#116] ; [0x1fff52e4] = 0x9c40
        0x1fff526e:    e7f7        ..      B        0x1fff5260 ; rf_rxDcoc_cfg + 148
        0x1fff5270:    6ac1        .j      LDR      r1,[r0,#0x2c]
        0x1fff5272:    43c9        .C      MVNS     r1,r1
        0x1fff5274:    0f89        ..      LSRS     r1,r1,#30
        0x1fff5276:    d014        ..      BEQ      0x1fff52a2 ; rf_rxDcoc_cfg + 214
        0x1fff5278:    9900        ..      LDR      r1,[sp,#0]
        0x1fff527a:    1e4b        K.      SUBS     r3,r1,#1
        0x1fff527c:    9300        ..      STR      r3,[sp,#0]
        0x1fff527e:    d2f7        ..      BCS      0x1fff5270 ; rf_rxDcoc_cfg + 164
        0x1fff5280:    490e        .I      LDR      r1,[pc,#56] ; [0x1fff52bc] = 0x40030080
        0x1fff5282:    3940        @9      SUBS     r1,r1,#0x40
        0x1fff5284:    638f        .c      STR      r7,[r1,#0x38]
        0x1fff5286:    490d        .I      LDR      r1,[pc,#52] ; [0x1fff52bc] = 0x40030080
        0x1fff5288:    2200        ."      MOVS     r2,#0
        0x1fff528a:    628a        .b      STR      r2,[r1,#0x28]
        0x1fff528c:    62ca        .b      STR      r2,[r1,#0x2c]
        0x1fff528e:    6082        .`      STR      r2,[r0,#8]
        0x1fff5290:    624e        Nb      STR      r6,[r1,#0x24]
        0x1fff5292:    620a        .b      STR      r2,[r1,#0x20]
        0x1fff5294:    20ff        .       MOVS     r0,#0xff
        0x1fff5296:    3041        A0      ADDS     r0,r0,#0x41
        0x1fff5298:    6248        Hb      STR      r0,[r1,#0x24]
        0x1fff529a:    4807        .H      LDR      r0,[pc,#28] ; [0x1fff52b8] = 0x40031000
        0x1fff529c:    6245        Eb      STR      r5,[r0,#0x24]
        0x1fff529e:    6284        .b      STR      r4,[r0,#0x28]
        0x1fff52a0:    bdf8        ..      POP      {r3-r7,pc}
        0x1fff52a2:    6ac1        .j      LDR      r1,[r0,#0x2c]
        0x1fff52a4:    4b10        .K      LDR      r3,[pc,#64] ; [0x1fff52e8] = 0x3f3fffff
        0x1fff52a6:    4019        .@      ANDS     r1,r1,r3
        0x1fff52a8:    6011        .`      STR      r1,[r2,#0]
        0x1fff52aa:    6811        .h      LDR      r1,[r2,#0]
        0x1fff52ac:    2201        ."      MOVS     r2,#1
        0x1fff52ae:    0c09        ..      LSRS     r1,r1,#16
        0x1fff52b0:    0412        ..      LSLS     r2,r2,#16
        0x1fff52b2:    1889        ..      ADDS     r1,r1,r2
        0x1fff52b4:    6041        A`      STR      r1,[r0,#4]
        0x1fff52b6:    e7e3        ..      B        0x1fff5280 ; rf_rxDcoc_cfg + 180
    $d
        0x1fff52b8:    40031000    ...@    DCD    1073942528
        0x1fff52bc:    40030080    ...@    DCD    1073938560
        0x1fff52c0:    000002ca    ....    DCD    714
        0x1fff52c4:    00002020      ..    DCD    8224
        0x1fff52c8:    200c5680    .V.     DCD    537679488
        0x1fff52cc:    00216564    de!.    DCD    2188644
        0x1fff52d0:    00002710    .'..    DCD    10000
        0x1fff52d4:    1fff0a4a    J...    DCD    536808010
        0x1fff52d8:    00004e20     N..    DCD    20000
        0x1fff52dc:    00007530    0u..    DCD    30000
        0x1fff52e0:    20200000    ..      DCD    538968064
        0x1fff52e4:    00009c40    @...    DCD    40000
        0x1fff52e8:    3f3fffff    ..??    DCD    1061158911
    $t
    i.rf_tpCal_gen_cap_arrary
    rf_tpCal_gen_cap_arrary
        0x1fff52ec:    b500        ..      PUSH     {lr}
        0x1fff52ee:    2100        .!      MOVS     r1,#0
        0x1fff52f0:    2002        .       MOVS     r0,#2
        0x1fff52f2:    f000f821    ..!.    BL       rf_tp_cal ; 0x1fff5338
        0x1fff52f6:    490c        .I      LDR      r1,[pc,#48] ; [0x1fff5328] = 0x1fff0a44
        0x1fff52f8:    1c80        ..      ADDS     r0,r0,#2
        0x1fff52fa:    7008        .p      STRB     r0,[r1,#0]
        0x1fff52fc:    2100        .!      MOVS     r1,#0
        0x1fff52fe:    2042        B       MOVS     r0,#0x42
        0x1fff5300:    f000f81a    ....    BL       rf_tp_cal ; 0x1fff5338
        0x1fff5304:    4909        .I      LDR      r1,[pc,#36] ; [0x1fff532c] = 0x1fff0a45
        0x1fff5306:    1c80        ..      ADDS     r0,r0,#2
        0x1fff5308:    7008        .p      STRB     r0,[r1,#0]
        0x1fff530a:    2101        .!      MOVS     r1,#1
        0x1fff530c:    2002        .       MOVS     r0,#2
        0x1fff530e:    f000f813    ....    BL       rf_tp_cal ; 0x1fff5338
        0x1fff5312:    4907        .I      LDR      r1,[pc,#28] ; [0x1fff5330] = 0x1fff0a46
        0x1fff5314:    1c80        ..      ADDS     r0,r0,#2
        0x1fff5316:    7008        .p      STRB     r0,[r1,#0]
        0x1fff5318:    2101        .!      MOVS     r1,#1
        0x1fff531a:    2042        B       MOVS     r0,#0x42
        0x1fff531c:    f000f80c    ....    BL       rf_tp_cal ; 0x1fff5338
        0x1fff5320:    4904        .I      LDR      r1,[pc,#16] ; [0x1fff5334] = 0x1fff0a47
        0x1fff5322:    1c80        ..      ADDS     r0,r0,#2
        0x1fff5324:    7008        .p      STRB     r0,[r1,#0]
        0x1fff5326:    bd00        ..      POP      {pc}
    $d
        0x1fff5328:    1fff0a44    D...    DCD    536808004
        0x1fff532c:    1fff0a45    E...    DCD    536808005
        0x1fff5330:    1fff0a46    F...    DCD    536808006
        0x1fff5334:    1fff0a47    G...    DCD    536808007
    $t
    i.rf_tp_cal
    rf_tp_cal
        0x1fff5338:    b5f8        ..      PUSH     {r3-r7,lr}
        0x1fff533a:    4c3b        ;L      LDR      r4,[pc,#236] ; [0x1fff5428] = 0x40030040
        0x1fff533c:    4a39        9J      LDR      r2,[pc,#228] ; [0x1fff5424] = 0x30010
        0x1fff533e:    6022        "`      STR      r2,[r4,#0]
        0x1fff5340:    4d39        9M      LDR      r5,[pc,#228] ; [0x1fff5428] = 0x40030040
        0x1fff5342:    4a39        9J      LDR      r2,[pc,#228] ; [0x1fff5428] = 0x40030040
        0x1fff5344:    2307        .#      MOVS     r3,#7
        0x1fff5346:    049b        ..      LSLS     r3,r3,#18
        0x1fff5348:    3580        .5      ADDS     r5,r5,#0x80
        0x1fff534a:    3240        @2      ADDS     r2,r2,#0x40
        0x1fff534c:    2901        .)      CMP      r1,#1
        0x1fff534e:    69a9        .i      LDR      r1,[r5,#0x18]
        0x1fff5350:    d00e        ..      BEQ      0x1fff5370 ; rf_tp_cal + 56
        0x1fff5352:    4399        .C      BICS     r1,r1,r3
        0x1fff5354:    2301        .#      MOVS     r3,#1
        0x1fff5356:    049b        ..      LSLS     r3,r3,#18
        0x1fff5358:    18c9        ..      ADDS     r1,r1,r3
        0x1fff535a:    61a9        .a      STR      r1,[r5,#0x18]
        0x1fff535c:    4933        3I      LDR      r1,[pc,#204] ; [0x1fff542c] = 0x73407f
        0x1fff535e:    60d1        .`      STR      r1,[r2,#0xc]
        0x1fff5360:    4933        3I      LDR      r1,[pc,#204] ; [0x1fff5430] = 0x1fff0a4b
        0x1fff5362:    780b        .x      LDRB     r3,[r1,#0]
        0x1fff5364:    2101        .!      MOVS     r1,#1
        0x1fff5366:    05c9        ..      LSLS     r1,r1,#23
        0x1fff5368:    4e32        2N      LDR      r6,[pc,#200] ; [0x1fff5434] = 0x1fff0a4a
        0x1fff536a:    2b00        .+      CMP      r3,#0
        0x1fff536c:    d007        ..      BEQ      0x1fff537e ; rf_tp_cal + 70
        0x1fff536e:    e009        ..      B        0x1fff5384 ; rf_tp_cal + 76
        0x1fff5370:    4399        .C      BICS     r1,r1,r3
        0x1fff5372:    2301        .#      MOVS     r3,#1
        0x1fff5374:    04db        ..      LSLS     r3,r3,#19
        0x1fff5376:    18c9        ..      ADDS     r1,r1,r3
        0x1fff5378:    61a9        .a      STR      r1,[r5,#0x18]
        0x1fff537a:    492f        /I      LDR      r1,[pc,#188] ; [0x1fff5438] = 0x53407f
        0x1fff537c:    e7ef        ..      B        0x1fff535e ; rf_tp_cal + 38
        0x1fff537e:    7833        3x      LDRB     r3,[r6,#0]
        0x1fff5380:    2b03        .+      CMP      r3,#3
        0x1fff5382:    d014        ..      BEQ      0x1fff53ae ; rf_tp_cal + 118
        0x1fff5384:    68d3        .h      LDR      r3,[r2,#0xc]
        0x1fff5386:    438b        .C      BICS     r3,r3,r1
        0x1fff5388:    60d3        .`      STR      r3,[r2,#0xc]
        0x1fff538a:    6350        Pc      STR      r0,[r2,#0x34]
        0x1fff538c:    200e        .       MOVS     r0,#0xe
        0x1fff538e:    6210        .b      STR      r0,[r2,#0x20]
        0x1fff5390:    2700        .'      MOVS     r7,#0
        0x1fff5392:    6257        Wb      STR      r7,[r2,#0x24]
        0x1fff5394:    20ff        .       MOVS     r0,#0xff
        0x1fff5396:    3015        .0      ADDS     r0,r0,#0x15
        0x1fff5398:    6250        Pb      STR      r0,[r2,#0x24]
        0x1fff539a:    4828        (H      LDR      r0,[pc,#160] ; [0x1fff543c] = 0x2710
        0x1fff539c:    9000        ..      STR      r0,[sp,#0]
        0x1fff539e:    7830        0x      LDRB     r0,[r6,#0]
        0x1fff53a0:    0003        ..      MOVS     r3,r0
        0x1fff53a2:    f7fdfebb    ....    BL       $Ven$TT$L$$__ARM_common_switch8 ; 0x1fff311c
    $d
        0x1fff53a6:    0705        ..      DCW    1797
        0x1fff53a8:    0b090d07    ....    DCD    185142535
        0x1fff53ac:    000d        ..      DCW    13
    $t
        0x1fff53ae:    68d3        .h      LDR      r3,[r2,#0xc]
        0x1fff53b0:    430b        .C      ORRS     r3,r3,r1
        0x1fff53b2:    e7e9        ..      B        0x1fff5388 ; rf_tp_cal + 80
        0x1fff53b4:    4822        "H      LDR      r0,[pc,#136] ; [0x1fff5440] = 0x4e20
        0x1fff53b6:    e002        ..      B        0x1fff53be ; rf_tp_cal + 134
        0x1fff53b8:    4822        "H      LDR      r0,[pc,#136] ; [0x1fff5444] = 0x7530
        0x1fff53ba:    e000        ..      B        0x1fff53be ; rf_tp_cal + 134
        0x1fff53bc:    4822        "H      LDR      r0,[pc,#136] ; [0x1fff5448] = 0x9c40
        0x1fff53be:    9000        ..      STR      r0,[sp,#0]
        0x1fff53c0:    9800        ..      LDR      r0,[sp,#0]
        0x1fff53c2:    1e43        C.      SUBS     r3,r0,#1
        0x1fff53c4:    9300        ..      STR      r3,[sp,#0]
        0x1fff53c6:    d2fb        ..      BCS      0x1fff53c0 ; rf_tp_cal + 136
        0x1fff53c8:    6b68        hk      LDR      r0,[r5,#0x34]
        0x1fff53ca:    6257        Wb      STR      r7,[r2,#0x24]
        0x1fff53cc:    0200        ..      LSLS     r0,r0,#8
        0x1fff53ce:    0e00        ..      LSRS     r0,r0,#24
        0x1fff53d0:    6217        .b      STR      r7,[r2,#0x20]
        0x1fff53d2:    4b1e        .K      LDR      r3,[pc,#120] ; [0x1fff544c] = 0x104040
        0x1fff53d4:    60d3        .`      STR      r3,[r2,#0xc]
        0x1fff53d6:    23ff        .#      MOVS     r3,#0xff
        0x1fff53d8:    3341        A3      ADDS     r3,r3,#0x41
        0x1fff53da:    6253        Sb      STR      r3,[r2,#0x24]
        0x1fff53dc:    2365        e#      MOVS     r3,#0x65
        0x1fff53de:    02db        ..      LSLS     r3,r3,#11
        0x1fff53e0:    6023        #`      STR      r3,[r4,#0]
        0x1fff53e2:    4d1b        .M      LDR      r5,[pc,#108] ; [0x1fff5450] = 0x1fff0a49
        0x1fff53e4:    782f        /x      LDRB     r7,[r5,#0]
        0x1fff53e6:    23e0        .#      MOVS     r3,#0xe0
        0x1fff53e8:    2f01        ./      CMP      r7,#1
        0x1fff53ea:    d00a        ..      BEQ      0x1fff5402 ; rf_tp_cal + 202
        0x1fff53ec:    782d        -x      LDRB     r5,[r5,#0]
        0x1fff53ee:    2d02        .-      CMP      r5,#2
        0x1fff53f0:    6825        %h      LDR      r5,[r4,#0]
        0x1fff53f2:    d00a        ..      BEQ      0x1fff540a ; rf_tp_cal + 210
        0x1fff53f4:    439d        .C      BICS     r5,r5,r3
        0x1fff53f6:    6025        %`      STR      r5,[r4,#0]
        0x1fff53f8:    4b0d        .K      LDR      r3,[pc,#52] ; [0x1fff5430] = 0x1fff0a4b
        0x1fff53fa:    781b        .x      LDRB     r3,[r3,#0]
        0x1fff53fc:    2b00        .+      CMP      r3,#0
        0x1fff53fe:    d007        ..      BEQ      0x1fff5410 ; rf_tp_cal + 216
        0x1fff5400:    e009        ..      B        0x1fff5416 ; rf_tp_cal + 222
        0x1fff5402:    6825        %h      LDR      r5,[r4,#0]
        0x1fff5404:    439d        .C      BICS     r5,r5,r3
        0x1fff5406:    3520         5      ADDS     r5,r5,#0x20
        0x1fff5408:    e7f5        ..      B        0x1fff53f6 ; rf_tp_cal + 190
        0x1fff540a:    439d        .C      BICS     r5,r5,r3
        0x1fff540c:    3540        @5      ADDS     r5,r5,#0x40
        0x1fff540e:    e7f2        ..      B        0x1fff53f6 ; rf_tp_cal + 190
        0x1fff5410:    7833        3x      LDRB     r3,[r6,#0]
        0x1fff5412:    2b03        .+      CMP      r3,#3
        0x1fff5414:    d003        ..      BEQ      0x1fff541e ; rf_tp_cal + 230
        0x1fff5416:    68d3        .h      LDR      r3,[r2,#0xc]
        0x1fff5418:    438b        .C      BICS     r3,r3,r1
        0x1fff541a:    60d3        .`      STR      r3,[r2,#0xc]
        0x1fff541c:    bdf8        ..      POP      {r3-r7,pc}
        0x1fff541e:    68d3        .h      LDR      r3,[r2,#0xc]
        0x1fff5420:    430b        .C      ORRS     r3,r3,r1
        0x1fff5422:    e7fa        ..      B        0x1fff541a ; rf_tp_cal + 226
    $d
        0x1fff5424:    00030010    ....    DCD    196624
        0x1fff5428:    40030040    @..@    DCD    1073938496
        0x1fff542c:    0073407f    .@s.    DCD    7553151
        0x1fff5430:    1fff0a4b    K...    DCD    536808011
        0x1fff5434:    1fff0a4a    J...    DCD    536808010
        0x1fff5438:    0053407f    .@S.    DCD    5455999
        0x1fff543c:    00002710    .'..    DCD    10000
        0x1fff5440:    00004e20     N..    DCD    20000
        0x1fff5444:    00007530    0u..    DCD    30000
        0x1fff5448:    00009c40    @...    DCD    40000
        0x1fff544c:    00104040    @@..    DCD    1065024
        0x1fff5450:    1fff0a49    I...    DCD    536808009
    $t
    i.wakeupProcess1
    wakeupProcess1
        0x1fff5454:    b5f8        ..      PUSH     {r3-r7,lr}
        0x1fff5456:    4c61        aL      LDR      r4,[pc,#388] ; [0x1fff55dc] = 0x1fff5850
        0x1fff5458:    6860        `h      LDR      r0,[r4,#4]
        0x1fff545a:    3080        .0      ADDS     r0,r0,#0x80
        0x1fff545c:    6880        .h      LDR      r0,[r0,#8]
        0x1fff545e:    f3808808    ....    MSR      MSP,r0
        0x1fff5462:    f7fdfd5f    .._.    BL       $Ven$TT$L$$drv_irq_init ; 0x1fff2f24
        0x1fff5466:    485e        ^H      LDR      r0,[pc,#376] ; [0x1fff55e0] = 0x1fff0a0c
        0x1fff5468:    495e        ^I      LDR      r1,[pc,#376] ; [0x1fff55e4] = 0x32141b6
        0x1fff546a:    6800        .h      LDR      r0,[r0,#0]
        0x1fff546c:    2502        .%      MOVS     r5,#2
        0x1fff546e:    4288        .B      CMP      r0,r1
        0x1fff5470:    d006        ..      BEQ      0x1fff5480 ; wakeupProcess1 + 44
        0x1fff5472:    2000        .       MOVS     r0,#0
        0x1fff5474:    f7fdfe88    ....    BL       $Ven$TT$L$$set_sleep_flag ; 0x1fff3188
        0x1fff5478:    0768        h.      LSLS     r0,r5,#29
        0x1fff547a:    6901        .i      LDR      r1,[r0,#0x10]
        0x1fff547c:    43a9        .C      BICS     r1,r1,r5
        0x1fff547e:    6101        .a      STR      r1,[r0,#0x10]
        0x1fff5480:    f000f8d6    ....    BL       wakeup_init1 ; 0x1fff5630
        0x1fff5484:    4858        XH      LDR      r0,[pc,#352] ; [0x1fff55e8] = 0x1fff0a49
        0x1fff5486:    7800        .x      LDRB     r0,[r0,#0]
        0x1fff5488:    f7fdff02    ....    BL       $Ven$TT$L$$ll_hw_tx2rx_timing_config ; 0x1fff3290
        0x1fff548c:    4e57        WN      LDR      r6,[pc,#348] ; [0x1fff55ec] = 0x40001000
        0x1fff548e:    2000        .       MOVS     r0,#0
        0x1fff5490:    61f0        .a      STR      r0,[r6,#0x1c]
        0x1fff5492:    61f5        .a      STR      r5,[r6,#0x1c]
        0x1fff5494:    4d56        VM      LDR      r5,[pc,#344] ; [0x1fff55f0] = 0x9c4
        0x1fff5496:    6175        ua      STR      r5,[r6,#0x14]
        0x1fff5498:    2001        .       MOVS     r0,#1
        0x1fff549a:    f7fdfccb    ....    BL       $Ven$TT$L$$WaitRTCCount ; 0x1fff2e34
        0x1fff549e:    2003        .       MOVS     r0,#3
        0x1fff54a0:    61f0        .a      STR      r0,[r6,#0x1c]
        0x1fff54a2:    f7fdfe6b    ..k.    BL       $Ven$TT$L$$rtc_get_counter ; 0x1fff317c
        0x1fff54a6:    4607        .F      MOV      r7,r0
        0x1fff54a8:    f7fdfdd2    ....    BL       $Ven$TT$L$$read_current_fine_time ; 0x1fff3050
        0x1fff54ac:    4606        .F      MOV      r6,r0
        0x1fff54ae:    f7fdfe65    ..e.    BL       $Ven$TT$L$$rtc_get_counter ; 0x1fff317c
        0x1fff54b2:    4950        PI      LDR      r1,[pc,#320] ; [0x1fff55f4] = 0x1fff0a10
        0x1fff54b4:    6008        .`      STR      r0,[r1,#0]
        0x1fff54b6:    f7fffe31    ..1.    BL       rf_phy_ini ; 0x1fff511c
        0x1fff54ba:    484f        OH      LDR      r0,[pc,#316] ; [0x1fff55f8] = 0x1fff0a34
        0x1fff54bc:    6800        .h      LDR      r0,[r0,#0]
        0x1fff54be:    4287        .B      CMP      r7,r0
        0x1fff54c0:    d901        ..      BLS      0x1fff54c6 ; wakeupProcess1 + 114
        0x1fff54c2:    1a38        8.      SUBS     r0,r7,r0
        0x1fff54c4:    e001        ..      B        0x1fff54ca ; wakeupProcess1 + 118
        0x1fff54c6:    1a38        8.      SUBS     r0,r7,r0
        0x1fff54c8:    1e40        @.      SUBS     r0,r0,#1
        0x1fff54ca:    494c        LI      LDR      r1,[pc,#304] ; [0x1fff55fc] = 0x3fffff
        0x1fff54cc:    4288        .B      CMP      r0,r1
        0x1fff54ce:    d900        ..      BLS      0x1fff54d2 ; wakeupProcess1 + 126
        0x1fff54d0:    4008        .@      ANDS     r0,r0,r1
        0x1fff54d2:    6861        ah      LDR      r1,[r4,#4]
        0x1fff54d4:    8d8a        ..      LDRH     r2,[r1,#0x2c]
        0x1fff54d6:    07d2        ..      LSLS     r2,r2,#31
        0x1fff54d8:    d009        ..      BEQ      0x1fff54ee ; wakeupProcess1 + 154
        0x1fff54da:    4a49        IJ      LDR      r2,[pc,#292] ; [0x1fff5600] = 0x1fff0a38
        0x1fff54dc:    0c03        ..      LSRS     r3,r0,#16
        0x1fff54de:    6812        .h      LDR      r2,[r2,#0]
        0x1fff54e0:    b280        ..      UXTH     r0,r0
        0x1fff54e2:    4353        SC      MULS     r3,r2,r3
        0x1fff54e4:    4350        PC      MULS     r0,r2,r0
        0x1fff54e6:    021b        ..      LSLS     r3,r3,#8
        0x1fff54e8:    0a00        ..      LSRS     r0,r0,#8
        0x1fff54ea:    1818        ..      ADDS     r0,r3,r0
        0x1fff54ec:    e00b        ..      B        0x1fff5506 ; wakeupProcess1 + 178
        0x1fff54ee:    01c2        ..      LSLS     r2,r0,#7
        0x1fff54f0:    0083        ..      LSLS     r3,r0,#2
        0x1fff54f2:    1ad2        ..      SUBS     r2,r2,r3
        0x1fff54f4:    0043        C.      LSLS     r3,r0,#1
        0x1fff54f6:    1ad2        ..      SUBS     r2,r2,r3
        0x1fff54f8:    00c3        ..      LSLS     r3,r0,#3
        0x1fff54fa:    1818        ..      ADDS     r0,r3,r0
        0x1fff54fc:    1c92        ..      ADDS     r2,r2,#2
        0x1fff54fe:    3080        .0      ADDS     r0,r0,#0x80
        0x1fff5500:    0892        ..      LSRS     r2,r2,#2
        0x1fff5502:    0a40        @.      LSRS     r0,r0,#9
        0x1fff5504:    1810        ..      ADDS     r0,r2,r0
        0x1fff5506:    61e0        .a      STR      r0,[r4,#0x1c]
        0x1fff5508:    31ff        .1      ADDS     r1,r1,#0xff
        0x1fff550a:    483e        >H      LDR      r0,[pc,#248] ; [0x1fff5604] = 0x1fff0a1c
        0x1fff550c:    3101        .1      ADDS     r1,#1
        0x1fff550e:    6849        Ih      LDR      r1,[r1,#4]
        0x1fff5510:    6800        .h      LDR      r0,[r0,#0]
        0x1fff5512:    1809        ..      ADDS     r1,r1,r0
        0x1fff5514:    483c        <H      LDR      r0,[pc,#240] ; [0x1fff5608] = 0x1fff0a20
        0x1fff5516:    6800        .h      LDR      r0,[r0,#0]
        0x1fff5518:    1a08        ..      SUBS     r0,r1,r0
        0x1fff551a:    1941        A.      ADDS     r1,r0,r5
        0x1fff551c:    088b        ..      LSRS     r3,r1,#2
        0x1fff551e:    483b        ;H      LDR      r0,[pc,#236] ; [0x1fff560c] = 0x1fff0a24
        0x1fff5520:    078a        ..      LSLS     r2,r1,#30
        0x1fff5522:    493b        ;I      LDR      r1,[pc,#236] ; [0x1fff5610] = 0x1fff0a28
        0x1fff5524:    6003        .`      STR      r3,[r0,#0]
        0x1fff5526:    680d        .h      LDR      r5,[r1,#0]
        0x1fff5528:    0f92        ..      LSRS     r2,r2,#30
        0x1fff552a:    1952        R.      ADDS     r2,r2,r5
        0x1fff552c:    600a        .`      STR      r2,[r1,#0]
        0x1fff552e:    2a04        .*      CMP      r2,#4
        0x1fff5530:    d904        ..      BLS      0x1fff553c ; wakeupProcess1 + 232
        0x1fff5532:    1c5b        [.      ADDS     r3,r3,#1
        0x1fff5534:    0792        ..      LSLS     r2,r2,#30
        0x1fff5536:    0f92        ..      LSRS     r2,r2,#30
        0x1fff5538:    6003        .`      STR      r3,[r0,#0]
        0x1fff553a:    600a        .`      STR      r2,[r1,#0]
        0x1fff553c:    69e1        .i      LDR      r1,[r4,#0x1c]
        0x1fff553e:    4f35        5O      LDR      r7,[pc,#212] ; [0x1fff5614] = 0x271
        0x1fff5540:    18c8        ..      ADDS     r0,r1,r3
        0x1fff5542:    4639        9F      MOV      r1,r7
        0x1fff5544:    f7fdfc94    ....    BL       $Ven$TT$L$$__aeabi_uidivmod ; 0x1fff2e70
        0x1fff5548:    4602        .F      MOV      r2,r0
        0x1fff554a:    4833        3H      LDR      r0,[pc,#204] ; [0x1fff5618] = 0x1fff0860
        0x1fff554c:    4d33        3M      LDR      r5,[pc,#204] ; [0x1fff561c] = 0x1fff0a2c
        0x1fff554e:    6803        .h      LDR      r3,[r0,#0]
        0x1fff5550:    18d3        ..      ADDS     r3,r2,r3
        0x1fff5552:    6003        .`      STR      r3,[r0,#0]
        0x1fff5554:    682a        *h      LDR      r2,[r5,#0]
        0x1fff5556:    188a        ..      ADDS     r2,r1,r2
        0x1fff5558:    602a        *`      STR      r2,[r5,#0]
        0x1fff555a:    42ba        .B      CMP      r2,r7
        0x1fff555c:    d906        ..      BLS      0x1fff556c ; wakeupProcess1 + 280
        0x1fff555e:    1c5b        [.      ADDS     r3,r3,#1
        0x1fff5560:    6003        .`      STR      r3,[r0,#0]
        0x1fff5562:    4639        9F      MOV      r1,r7
        0x1fff5564:    4610        .F      MOV      r0,r2
        0x1fff5566:    f7fdfc83    ....    BL       $Ven$TT$L$$__aeabi_uidivmod ; 0x1fff2e70
        0x1fff556a:    6029        )`      STR      r1,[r5,#0]
        0x1fff556c:    f7fdfe96    ....    BL       $Ven$TT$L$$osalTimeUpdate ; 0x1fff329c
        0x1fff5570:    482b        +H      LDR      r0,[pc,#172] ; [0x1fff5620] = 0x1fff091c
        0x1fff5572:    7800        .x      LDRB     r0,[r0,#0]
        0x1fff5574:    2800        .(      CMP      r0,#0
        0x1fff5576:    d010        ..      BEQ      0x1fff559a ; wakeupProcess1 + 326
        0x1fff5578:    f7fdfd6a    ..j.    BL       $Ven$TT$L$$read_current_fine_time ; 0x1fff3050
        0x1fff557c:    4a29        )J      LDR      r2,[pc,#164] ; [0x1fff5624] = 0x1fff08e4
        0x1fff557e:    69e1        .i      LDR      r1,[r4,#0x1c]
        0x1fff5580:    1b80        ..      SUBS     r0,r0,r6
        0x1fff5582:    6812        .h      LDR      r2,[r2,#0]
        0x1fff5584:    180b        ..      ADDS     r3,r1,r0
        0x1fff5586:    4293        .B      CMP      r3,r2
        0x1fff5588:    d202        ..      BCS      0x1fff5590 ; wakeupProcess1 + 316
        0x1fff558a:    1a51        Q.      SUBS     r1,r2,r1
        0x1fff558c:    1a09        ..      SUBS     r1,r1,r0
        0x1fff558e:    e001        ..      B        0x1fff5594 ; wakeupProcess1 + 320
        0x1fff5590:    217d        }!      MOVS     r1,#0x7d
        0x1fff5592:    00c9        ..      LSLS     r1,r1,#3
        0x1fff5594:    4815        .H      LDR      r0,[pc,#84] ; [0x1fff55ec] = 0x40001000
        0x1fff5596:    f7fdfe87    ....    BL       $Ven$TT$L$$set_timer ; 0x1fff32a8
        0x1fff559a:    4d23        #M      LDR      r5,[pc,#140] ; [0x1fff5628] = 0x1fff0b74
        0x1fff559c:    7a28        (z      LDRB     r0,[r5,#8]
        0x1fff559e:    2800        .(      CMP      r0,#0
        0x1fff55a0:    d011        ..      BEQ      0x1fff55c6 ; wakeupProcess1 + 370
        0x1fff55a2:    f7fdfd55    ..U.    BL       $Ven$TT$L$$read_current_fine_time ; 0x1fff3050
        0x1fff55a6:    1b81        ..      SUBS     r1,r0,r6
        0x1fff55a8:    69e3        .i      LDR      r3,[r4,#0x1c]
        0x1fff55aa:    4810        .H      LDR      r0,[pc,#64] ; [0x1fff55ec] = 0x40001000
        0x1fff55ac:    68ea        .h      LDR      r2,[r5,#0xc]
        0x1fff55ae:    185c        \.      ADDS     r4,r3,r1
        0x1fff55b0:    303c        <0      ADDS     r0,r0,#0x3c
        0x1fff55b2:    42a2        .B      CMP      r2,r4
        0x1fff55b4:    d902        ..      BLS      0x1fff55bc ; wakeupProcess1 + 360
        0x1fff55b6:    1ad2        ..      SUBS     r2,r2,r3
        0x1fff55b8:    1a51        Q.      SUBS     r1,r2,r1
        0x1fff55ba:    e000        ..      B        0x1fff55be ; wakeupProcess1 + 362
        0x1fff55bc:    491b        .I      LDR      r1,[pc,#108] ; [0x1fff562c] = 0x5dc
        0x1fff55be:    f7fdfe73    ..s.    BL       $Ven$TT$L$$set_timer ; 0x1fff32a8
        0x1fff55c2:    2000        .       MOVS     r0,#0
        0x1fff55c4:    7228        (r      STRB     r0,[r5,#8]
        0x1fff55c6:    f7fdfe75    ..u.    BL       $Ven$TT$L$$app_wakeup_process ; 0x1fff32b4
        0x1fff55ca:    2002        .       MOVS     r0,#2
        0x1fff55cc:    f7fdfd46    ..F.    BL       $Ven$TT$L$$ll_debug_output ; 0x1fff305c
        0x1fff55d0:    2000        .       MOVS     r0,#0
        0x1fff55d2:    f7fdfdd9    ....    BL       $Ven$TT$L$$set_sleep_flag ; 0x1fff3188
        0x1fff55d6:    f7fdfc3f    ..?.    BL       $Ven$TT$L$$osal_start_system ; 0x1fff2e58
        0x1fff55da:    bdf8        ..      POP      {r3-r7,pc}
    $d
        0x1fff55dc:    1fff5850    PX..    DCD    536827984
        0x1fff55e0:    1fff0a0c    ....    DCD    536807948
        0x1fff55e4:    032141b6    .A!.    DCD    52511158
        0x1fff55e8:    1fff0a49    I...    DCD    536808009
        0x1fff55ec:    40001000    ...@    DCD    1073745920
        0x1fff55f0:    000009c4    ....    DCD    2500
        0x1fff55f4:    1fff0a10    ....    DCD    536807952
        0x1fff55f8:    1fff0a34    4...    DCD    536807988
        0x1fff55fc:    003fffff    ..?.    DCD    4194303
        0x1fff5600:    1fff0a38    8...    DCD    536807992
        0x1fff5604:    1fff0a1c    ....    DCD    536807964
        0x1fff5608:    1fff0a20     ...    DCD    536807968
        0x1fff560c:    1fff0a24    $...    DCD    536807972
        0x1fff5610:    1fff0a28    (...    DCD    536807976
        0x1fff5614:    00000271    q...    DCD    625
        0x1fff5618:    1fff0860    `...    DCD    536807520
        0x1fff561c:    1fff0a2c    ,...    DCD    536807980
        0x1fff5620:    1fff091c    ....    DCD    536807708
        0x1fff5624:    1fff08e4    ....    DCD    536807652
        0x1fff5628:    1fff0b74    t...    DCD    536808308
        0x1fff562c:    000005dc    ....    DCD    1500
    $t
    i.wakeup_init1
    wakeup_init1
        0x1fff5630:    b5f8        ..      PUSH     {r3-r7,lr}
        0x1fff5632:    f7feff67    ..g.    BL       efuse_init ; 0x1fff4504
        0x1fff5636:    f7fefdc5    ....    BL       __wdt_init ; 0x1fff41c4
        0x1fff563a:    2001        .       MOVS     r0,#1
        0x1fff563c:    4e40        @N      LDR      r6,[pc,#256] ; [0x1fff5740] = 0x1fff0a4a
        0x1fff563e:    9000        ..      STR      r0,[sp,#0]
        0x1fff5640:    7830        0x      LDRB     r0,[r6,#0]
        0x1fff5642:    4c40        @L      LDR      r4,[pc,#256] ; [0x1fff5744] = 0x4000f040
        0x1fff5644:    2802        .(      CMP      r0,#2
        0x1fff5646:    d010        ..      BEQ      0x1fff566a ; wakeup_init1 + 58
        0x1fff5648:    f7fdfd98    ....    BL       $Ven$TT$L$$rtc_get_counter ; 0x1fff317c
        0x1fff564c:    4605        .F      MOV      r5,r0
        0x1fff564e:    2032        2       MOVS     r0,#0x32
        0x1fff5650:    f7fdfbf0    ....    BL       $Ven$TT$L$$WaitRTCCount ; 0x1fff2e34
        0x1fff5654:    f7fefddc    ....    BL       check_16MXtal_by_rcTracking ; 0x1fff4210
        0x1fff5658:    200f        .       MOVS     r0,#0xf
        0x1fff565a:    f7fdfbeb    ....    BL       $Ven$TT$L$$WaitRTCCount ; 0x1fff2e34
        0x1fff565e:    7830        0x      LDRB     r0,[r6,#0]
        0x1fff5660:    2801        .(      CMP      r0,#1
        0x1fff5662:    d008        ..      BEQ      0x1fff5676 ; wakeup_init1 + 70
        0x1fff5664:    f7fefe7e    ..~.    BL       check_96MXtal_by_rcTracking ; 0x1fff4364
        0x1fff5668:    e01a        ..      B        0x1fff56a0 ; wakeup_init1 + 112
        0x1fff566a:    4837        7H      LDR      r0,[pc,#220] ; [0x1fff5748] = 0x1fff5850
        0x1fff566c:    6840        @h      LDR      r0,[r0,#4]
        0x1fff566e:    6a00        .j      LDR      r0,[r0,#0x20]
        0x1fff5670:    f7fdfbe0    ....    BL       $Ven$TT$L$$WaitRTCCount ; 0x1fff2e34
        0x1fff5674:    e024        $.      B        0x1fff56c0 ; wakeup_init1 + 144
        0x1fff5676:    4833        3H      LDR      r0,[pc,#204] ; [0x1fff5744] = 0x4000f040
        0x1fff5678:    3840        @8      SUBS     r0,r0,#0x40
        0x1fff567a:    6bc0        .k      LDR      r0,[r0,#0x3c]
        0x1fff567c:    0740        @.      LSLS     r0,r0,#29
        0x1fff567e:    0f40        @.      LSRS     r0,r0,#29
        0x1fff5680:    2801        .(      CMP      r0,#1
        0x1fff5682:    d102        ..      BNE      0x1fff568a ; wakeup_init1 + 90
        0x1fff5684:    2000        .       MOVS     r0,#0
        0x1fff5686:    f7fdfc65    ..e.    BL       $Ven$TT$L$$clk_init ; 0x1fff2f54
        0x1fff568a:    6860        `h      LDR      r0,[r4,#4]
        0x1fff568c:    27ff        .'      MOVS     r7,#0xff
        0x1fff568e:    3701        .7      ADDS     r7,#1
        0x1fff5690:    43b8        .C      BICS     r0,r0,r7
        0x1fff5692:    6060        ``      STR      r0,[r4,#4]
        0x1fff5694:    2002        .       MOVS     r0,#2
        0x1fff5696:    f7fdfbcd    ....    BL       $Ven$TT$L$$WaitRTCCount ; 0x1fff2e34
        0x1fff569a:    6860        `h      LDR      r0,[r4,#4]
        0x1fff569c:    4338        8C      ORRS     r0,r0,r7
        0x1fff569e:    6060        ``      STR      r0,[r4,#4]
        0x1fff56a0:    f7fdfd6c    ..l.    BL       $Ven$TT$L$$rtc_get_counter ; 0x1fff317c
        0x1fff56a4:    42a8        .B      CMP      r0,r5
        0x1fff56a6:    d301        ..      BCC      0x1fff56ac ; wakeup_init1 + 124
        0x1fff56a8:    1b40        @.      SUBS     r0,r0,r5
        0x1fff56aa:    e001        ..      B        0x1fff56b0 ; wakeup_init1 + 128
        0x1fff56ac:    1b40        @.      SUBS     r0,r0,r5
        0x1fff56ae:    1e40        @.      SUBS     r0,r0,#1
        0x1fff56b0:    4925        %I      LDR      r1,[pc,#148] ; [0x1fff5748] = 0x1fff5850
        0x1fff56b2:    221e        ."      MOVS     r2,#0x1e
        0x1fff56b4:    6188        .a      STR      r0,[r1,#0x18]
        0x1fff56b6:    4350        PC      MULS     r0,r2,r0
        0x1fff56b8:    4a24        $J      LDR      r2,[pc,#144] ; [0x1fff574c] = 0x672
        0x1fff56ba:    6849        Ih      LDR      r1,[r1,#4]
        0x1fff56bc:    1880        ..      ADDS     r0,r0,r2
        0x1fff56be:    61c8        .a      STR      r0,[r1,#0x1c]
        0x1fff56c0:    4924        $I      LDR      r1,[pc,#144] ; [0x1fff5754] = 0x40030000
        0x1fff56c2:    4823        #H      LDR      r0,[pc,#140] ; [0x1fff5750] = 0x3d068001
        0x1fff56c4:    6008        .`      STR      r0,[r1,#0]
        0x1fff56c6:    4823        #H      LDR      r0,[pc,#140] ; [0x1fff5754] = 0x40030000
        0x1fff56c8:    4923        #I      LDR      r1,[pc,#140] ; [0x1fff5758] = 0x834
        0x1fff56ca:    3080        .0      ADDS     r0,r0,#0x80
        0x1fff56cc:    63c1        .c      STR      r1,[r0,#0x3c]
        0x1fff56ce:    21ff        .!      MOVS     r1,#0xff
        0x1fff56d0:    3141        A1      ADDS     r1,r1,#0x41
        0x1fff56d2:    6241        Ab      STR      r1,[r0,#0x24]
        0x1fff56d4:    7830        0x      LDRB     r0,[r6,#0]
        0x1fff56d6:    f7fdfc3d    ..=.    BL       $Ven$TT$L$$clk_init ; 0x1fff2f54
        0x1fff56da:    4920         I      LDR      r1,[pc,#128] ; [0x1fff575c] = 0x271
        0x1fff56dc:    4820         H      LDR      r0,[pc,#128] ; [0x1fff5760] = 0x40001014
        0x1fff56de:    f7fdfde3    ....    BL       $Ven$TT$L$$set_timer ; 0x1fff32a8
        0x1fff56e2:    481f        .H      LDR      r0,[pc,#124] ; [0x1fff5760] = 0x40001014
        0x1fff56e4:    491f        .I      LDR      r1,[pc,#124] ; [0x1fff5764] = 0x3fffff
        0x1fff56e6:    3014        .0      ADDS     r0,r0,#0x14
        0x1fff56e8:    f7fdfdde    ....    BL       $Ven$TT$L$$set_timer ; 0x1fff32a8
        0x1fff56ec:    2004        .       MOVS     r0,#4
        0x1fff56ee:    f7fefd4d    ..M.    BL       NVIC_EnableIRQ ; 0x1fff418c
        0x1fff56f2:    2014        .       MOVS     r0,#0x14
        0x1fff56f4:    f7fefd4a    ..J.    BL       NVIC_EnableIRQ ; 0x1fff418c
        0x1fff56f8:    2015        .       MOVS     r0,#0x15
        0x1fff56fa:    f7fefd47    ..G.    BL       NVIC_EnableIRQ ; 0x1fff418c
        0x1fff56fe:    2017        .       MOVS     r0,#0x17
        0x1fff5700:    f7fefd44    ..D.    BL       NVIC_EnableIRQ ; 0x1fff418c
        0x1fff5704:    20ff        .       MOVS     r0,#0xff
        0x1fff5706:    f7fdfdb1    ....    BL       $Ven$TT$L$$set_max_length ; 0x1fff326c
        0x1fff570a:    2001        .       MOVS     r0,#1
        0x1fff570c:    f7fdfdd8    ....    BL       $Ven$TT$L$$ll_hw_set_empty_head ; 0x1fff32c0
        0x1fff5710:    20ff        .       MOVS     r0,#0xff
        0x1fff5712:    30f5        .0      ADDS     r0,r0,#0xf5
        0x1fff5714:    f7fdfdda    ....    BL       $Ven$TT$L$$ll_hw_set_rx_timeout_1st ; 0x1fff32cc
        0x1fff5718:    2058        X       MOVS     r0,#0x58
        0x1fff571a:    f7fdfced    ....    BL       $Ven$TT$L$$ll_hw_set_rx_timeout ; 0x1fff30f8
        0x1fff571e:    4812        .H      LDR      r0,[pc,#72] ; [0x1fff5768] = 0x7530
        0x1fff5720:    f7fdfdda    ....    BL       $Ven$TT$L$$ll_hw_set_loop_timeout ; 0x1fff32d8
        0x1fff5724:    9800        ..      LDR      r0,[sp,#0]
        0x1fff5726:    f7fdfddd    ....    BL       $Ven$TT$L$$ll_hw_set_timing ; 0x1fff32e4
        0x1fff572a:    2007        .       MOVS     r0,#7
        0x1fff572c:    f7fdfde0    ....    BL       $Ven$TT$L$$ll_hw_ign_rfifo ; 0x1fff32f0
        0x1fff5730:    69e0        .i      LDR      r0,[r4,#0x1c]
        0x1fff5732:    490e        .I      LDR      r1,[pc,#56] ; [0x1fff576c] = 0xfffefe00
        0x1fff5734:    4008        .@      ANDS     r0,r0,r1
        0x1fff5736:    30ff        .0      ADDS     r0,r0,#0xff
        0x1fff5738:    3009        .0      ADDS     r0,r0,#9
        0x1fff573a:    61e0        .a      STR      r0,[r4,#0x1c]
        0x1fff573c:    bdf8        ..      POP      {r3-r7,pc}
    $d
        0x1fff573e:    0000        ..      DCW    0
        0x1fff5740:    1fff0a4a    J...    DCD    536808010
        0x1fff5744:    4000f040    @..@    DCD    1073803328
        0x1fff5748:    1fff5850    PX..    DCD    536827984
        0x1fff574c:    00000672    r...    DCD    1650
        0x1fff5750:    3d068001    ...=    DCD    1023836161
        0x1fff5754:    40030000    ...@    DCD    1073938432
        0x1fff5758:    00000834    4...    DCD    2100
        0x1fff575c:    00000271    q...    DCD    625
        0x1fff5760:    40001014    ...@    DCD    1073745940
        0x1fff5764:    003fffff    ..?.    DCD    4194303
        0x1fff5768:    00007530    0u..    DCD    30000
        0x1fff576c:    fffefe00    ....    DCD    4294901248
    $d.realdata
    .conststring
        0x1fff5770:    2b594850    PHY+    DCD    727271504
        0x1fff5774:    58583236    62XX    DCD    1482175030
        0x1fff5778:    53554c50    PLUS    DCD    1398099024
        0x1fff577c:    34303530    0504    DCD    875574576
        0x1fff5780:    00000000    ....    DCD    0
        0x1fff5784:    00000003    ....    DCD    3
        0x1fff5788:    00000000    ....    DCD    0
        0x1fff578c:    00000000    ....    DCD    0
        0x1fff5790:    7261485b    [Har    DCD    1918978139
        0x1fff5794:    61662064    d fa    DCD    1634082916
        0x1fff5798:    20746c75    ult     DCD    544500853
        0x1fff579c:    646e6168    hand    DCD    1684955496
        0x1fff57a0:    5d72656c    ler]    DCD    1567778156
        0x1fff57a4:    4350000a    ..PC    DCD    1129316362
        0x1fff57a8:    3d202020       =    DCD    1025515552
        0x1fff57ac:    25783020     0x%    DCD    628633632
        0x1fff57b0:    0a783830    08x.    DCD    175650864
        0x1fff57b4:    20524c00    .LR     DCD    542264320
        0x1fff57b8:    203d2020      =     DCD    540876832
        0x1fff57bc:    30257830    0x%0    DCD    807761968
        0x1fff57c0:    000a7838    8x..    DCD    686136
        0x1fff57c4:    20525350    PSR     DCD    542266192
        0x1fff57c8:    30203d20     = 0    DCD    807419168
        0x1fff57cc:    38302578    x%08    DCD    942679416
        0x1fff57d0:    49000a78    x..I    DCD    1224739448
        0x1fff57d4:    20525343    CSR     DCD    542266179
        0x1fff57d8:    7830203d    = 0x    DCD    2016419901
        0x1fff57dc:    78383025    %08x    DCD    2016948261
        0x1fff57e0:    0000000a    ....    DCD    10
    tasksArr
        0x1fff57e4:    000059f1    .Y..    DCD    23025
        0x1fff57e8:    000024fd    .$..    DCD    9469
        0x1fff57ec:    00014641    AF..    DCD    83521
        0x1fff57f0:    11021b75    u...    DCD    285350773
        0x1fff57f4:    11020309    ....    DCD    285344521
        0x1fff57f8:    1102014d    M...    DCD    285344077
    tasksCnt
        0x1fff57fc:    00000006    ....    DCD    6
    Region$$Table$$Base
        0x1fff5800:    1fff5850    PX..    DCD    536827984
        0x1fff5804:    1fff59e0    .Y..    DCD    536828384
        0x1fff5808:    000000d0    ....    DCD    208
        0x1fff580c:    1fff41a6    .A..    DCD    536822182
        0x1fff5810:    1fff59e0    .Y..    DCD    536828384
        0x1fff5814:    1fff5850    PX..    DCD    536827984
        0x1fff5818:    00000190    ....    DCD    400
        0x1fff581c:    1fff18b4    ....    DCD    536811700
        0x1fff5820:    1fff0400    ....    DCD    536806400
        0x1fff5824:    1fff59e0    .Y..    DCD    536828384
        0x1fff5828:    0000000c    ....    DCD    12
        0x1fff582c:    1fff41a6    .A..    DCD    536822182
        0x1fff5830:    1fff59e0    .Y..    DCD    536828384
        0x1fff5834:    1fff0400    ....    DCD    536806400
        0x1fff5838:    00000400    ....    DCD    1024
        0x1fff583c:    1fff18b4    ....    DCD    536811700
        0x1fff5840:    1fff5920     Y..    DCD    536828192
        0x1fff5844:    1fff59e0    .Y..    DCD    536828384
        0x1fff5848:    00001e48    H...    DCD    7752
        0x1fff584c:    1fff41b6    .A..    DCD    536822198
    Region$$Table$$Limit

====================================

** Section #2

    Name        : ER_IROM1
    Type        : SHT_PROGBITS (0x00000001)
    Flags       : SHF_ALLOC + SHF_WRITE (0x00000003)
    Addr        : 0x1fff5850
    File Offset : 16464 (0x4050)
    Size        : 208 bytes (0xd0)
    Link        : SHN_UNDEF
    Info        : 0
    Alignment   : 8
    Entry Size  : 0

    Data section was compressed (Original size: 400 bytes)

    0x1fff5850:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff5860:   00 00 00 00 01 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff5870:   00 00 00 00 00 00 00 00 91 1f 02 11 49 28 02 11    ............I(..
    0x1fff5880:   55 1f 02 11 cd 23 02 11 ff 00 00 00 00 00 00 00    U....#..........
    0x1fff5890:   00 00 00 00 00 00 b4 00 00 28 00 28 00 28 30 75    .........(.(.(0u
    0x1fff58a0:   a0 00 a0 00 a0 00 a0 00 00 08 00 08 e0 01 f0 00    ................
    0x1fff58b0:   10 00 10 00 10 00 10 00 10 00 10 00 50 00 50 00    ............P.P.
    0x1fff58c0:   50 00 10 00 10 00 d0 07 00 00 00 00 00 00 0f 00    P...............
    0x1fff58d0:   01 00 05 00 30 75 07 00 10 00 01 00 81 ff 00 00    ....0u..........
    0x1fff58e0:   00 00 00 00 ff 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff58f0:   00 00 00 00 81 21 02 11 4d 23 02 11 61 2b 02 11    .....!..M#..a+..
    0x1fff5900:   ff 00 00 00 00 00 00 00 00 00 00 00 70 57 ff 1f    ............pW..
    0x1fff5910:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff5920:   00 00 00 00 00 00 00 00 00 00 00 00 f7 00 05 00    ................
    0x1fff5930:   0b 00 00 00 00 00 00 00 59 02 e0 01 88 21 08 00    ........Y....!..
    0x1fff5940:   e8 03 00 00 1d 06 02 11 00 00 00 00 1e ff 4c 00    ..............L.
    0x1fff5950:   12 19 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff5960:   00 00 00 00 00 00 00 00 00 00 00 5d 46 e1 ac cd    ...........]F...
    0x1fff5970:   59 14 3c 30 7e 75 e4 fe 93 79 8e cd 1a 32 49 f3    Y.<0~u...y...2I.
    0x1fff5980:   4a ce fa 72 31 01 79 0b 2c 2e 14 00 01 03 30 75    J..r1.y.,.....0u
    0x1fff5990:   02 01 04 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff59a0:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff59b0:   40 78 7d 01 ff 00 00 00 00 00 00 00 00 00 00 00    @x}.............
    0x1fff59c0:   00 00 08 00 ff ff ff ff ff ff 00 00 00 00 00 00    ................
    0x1fff59d0:   04 00 00 00 3b 00 01 08 00 00 00 00 00 00 00 00    ....;...........


====================================

** Section #3

    Name        : ER_IROM1
    Type        : SHT_NOBITS (0x00000008)
    Flags       : SHF_ALLOC + SHF_WRITE (0x00000003)
    Addr        : 0x1fff59e0
    File Offset : 16672 (0x4120)
    Size        : 7752 bytes (0x1e48)
    Link        : SHN_UNDEF
    Info        : 0
    Alignment   : 8
    Entry Size  : 0


====================================

** Section #4

    Name        : JUMP_TABLE
    Type        : SHT_PROGBITS (0x00000001)
    Flags       : SHF_ALLOC (0x00000002)
    Addr        : 0x1fff0000
    File Offset : 16672 (0x4120)
    Size        : 1024 bytes (0x400)
    Link        : SHN_UNDEF
    Info        : 0
    Alignment   : 4
    Entry Size  : 0

    0x1fff0000:   00 00 00 00 99 2c ff 1f e4 57 ff 1f fc 57 ff 1f    .....,...W...W..
    0x1fff0010:   20 74 ff 1f 00 00 00 00 00 00 00 00 00 00 00 00     t..............
    0x1fff0020:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0030:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0040:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0050:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0060:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0070:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0080:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0090:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff00a0:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff00b0:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff00c0:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff00d0:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff00e0:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff00f0:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0100:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0110:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0120:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0130:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0140:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0150:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0160:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0170:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0180:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0190:   a5 25 ff 1f 95 27 ff 1f 1d 51 ff 1f 00 00 00 00    .%...'...Q......
    0x1fff01a0:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff01b0:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff01c0:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff01d0:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff01e0:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff01f0:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0200:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0210:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0220:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0230:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0240:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0250:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0260:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0270:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0280:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0290:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff02a0:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff02b0:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff02c0:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff02d0:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff02e0:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff02f0:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0300:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0310:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0320:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0330:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0340:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0350:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0360:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0370:   5d 29 ff 1f 00 00 00 00 00 00 00 00 00 00 00 00    ])..............
    0x1fff0380:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0390:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff03a0:   00 00 00 00 00 00 00 00 00 00 00 00 fd 32 ff 1f    .............2..
    0x1fff03b0:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff03c0:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff03d0:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff03e0:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff03f0:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................


====================================

** Section #5

    Name        : GOLBAL_CONFIG
    Type        : SHT_PROGBITS (0x00000001)
    Flags       : SHF_ALLOC + SHF_WRITE (0x00000003)
    Addr        : 0x1fff0400
    File Offset : 17696 (0x4520)
    Size        : 12 bytes (0xc)
    Link        : SHN_UNDEF
    Info        : 0
    Alignment   : 4
    Entry Size  : 0

    Data section was compressed (Original size: 1024 bytes)

    0x1fff0400:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0410:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0420:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0430:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0440:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0450:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0460:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0470:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0480:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0490:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff04a0:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff04b0:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff04c0:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff04d0:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff04e0:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff04f0:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0500:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0510:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0520:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0530:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0540:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0550:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0560:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0570:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0580:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0590:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff05a0:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff05b0:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff05c0:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff05d0:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff05e0:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff05f0:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0600:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0610:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0620:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0630:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0640:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0650:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0660:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0670:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0680:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0690:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff06a0:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff06b0:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff06c0:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff06d0:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff06e0:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff06f0:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0700:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0710:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0720:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0730:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0740:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0750:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0760:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0770:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0780:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff0790:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff07a0:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff07b0:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff07c0:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff07d0:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff07e0:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
    0x1fff07f0:   00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................


====================================

** Section #6

    Name        : ER_ROM_XIP
    Type        : SHT_PROGBITS (0x00000001)
    Flags       : SHF_ALLOC + SHF_EXECINSTR (0x00000006)
    Addr        : 0x11020000
    File Offset : 17708 (0x452c)
    Size        : 12980 bytes (0x32b4)
    Link        : SHN_UNDEF
    Info        : 0
    Alignment   : 4
    Entry Size  : 0

    $t.2
    FindMy_Init
        0x11020000:    b5f0        ..      PUSH     {r4-r7,lr}
        0x11020002:    b08f        ..      SUB      sp,sp,#0x3c
        0x11020004:    4eae        .N      LDR      r6,[pc,#696] ; [0x110202c0] = 0x1fff5ba8
        0x11020006:    2701        .'      MOVS     r7,#1
        0x11020008:    7337        7s      STRB     r7,[r6,#0xc]
        0x1102000a:    9701        ..      STR      r7,[sp,#4]
        0x1102000c:    7030        0p      STRB     r0,[r6,#0]
        0x1102000e:    49a7        .I      LDR      r1,[pc,#668] ; [0x110202ac] = 0x1fff6fa0
        0x11020010:    4a48        HJ      LDR      r2,[pc,#288] ; [0x11020134] = 0x11020659
        0x11020012:    610a        .a      STR      r2,[r1,#0x10]
        0x11020014:    7308        .s      STRB     r0,[r1,#0xc]
        0x11020016:    2000        .       MOVS     r0,#0
        0x11020018:    9007        ..      STR      r0,[sp,#0x1c]
        0x1102001a:    7088        .p      STRB     r0,[r1,#2]
        0x1102001c:    2009        .       MOVS     r0,#9
        0x1102001e:    9006        ..      STR      r0,[sp,#0x18]
        0x11020020:    8008        ..      STRH     r0,[r1,#0]
        0x11020022:    2005        .       MOVS     r0,#5
        0x11020024:    0200        ..      LSLS     r0,r0,#8
        0x11020026:    60b0        .`      STR      r0,[r6,#8]
        0x11020028:    f001f8e0    ....    BL       $Ven$TT$L$$key_init ; 0x110211ec
        0x1102002c:    207d        }       MOVS     r0,#0x7d
        0x1102002e:    00c5        ..      LSLS     r5,r0,#3
        0x11020030:    2002        .       MOVS     r0,#2
        0x11020032:    9004        ..      STR      r0,[sp,#0x10]
        0x11020034:    4629        )F      MOV      r1,r5
        0x11020036:    f001fe13    ....    BL       GAP_SetParamValue ; 0x11021c60
        0x1102003a:    2403        .$      MOVS     r4,#3
        0x1102003c:    4620         F      MOV      r0,r4
        0x1102003e:    4629        )F      MOV      r1,r5
        0x11020040:    f001fe0e    ....    BL       GAP_SetParamValue ; 0x11021c60
        0x11020044:    aa08        ..      ADD      r2,sp,#0x20
        0x11020046:    2008        .       MOVS     r0,#8
        0x11020048:    9005        ..      STR      r0,[sp,#0x14]
        0x1102004a:    7010        .p      STRB     r0,[r2,#0]
        0x1102004c:    4628        (F      MOV      r0,r5
        0x1102004e:    3019        .0      ADDS     r0,r0,#0x19
        0x11020050:    4639        9F      MOV      r1,r7
        0x11020052:    f000f9b9    ....    BL       GAPMultiRole_SetParameter ; 0x110203c8
        0x11020056:    4f96        .O      LDR      r7,[pc,#600] ; [0x110202b0] = 0x1fff5940
        0x11020058:    8db8        ..      LDRH     r0,[r7,#0x2c]
        0x1102005a:    4632        2F      MOV      r2,r6
        0x1102005c:    8070        p.      STRH     r0,[r6,#2]
        0x1102005e:    8df8        ..      LDRH     r0,[r7,#0x2e]
        0x11020060:    80b0        ..      STRH     r0,[r6,#4]
        0x11020062:    4638        8F      MOV      r0,r7
        0x11020064:    302b        +0      ADDS     r0,r0,#0x2b
        0x11020066:    7940        @y      LDRB     r0,[r0,#5]
        0x11020068:    71b0        .q      STRB     r0,[r6,#6]
        0x1102006a:    262b        +&      MOVS     r6,#0x2b
        0x1102006c:    5db8        .]      LDRB     r0,[r7,r6]
        0x1102006e:    21c0        .!      MOVS     r1,#0xc0
        0x11020070:    4301        .C      ORRS     r1,r1,r0
        0x11020072:    7051        Qp      STRB     r1,[r2,#1]
        0x11020074:    4638        8F      MOV      r0,r7
        0x11020076:    3013        .0      ADDS     r0,r0,#0x13
        0x11020078:    4639        9F      MOV      r1,r7
        0x1102007a:    3131        11      ADDS     r1,r1,#0x31
        0x1102007c:    2216        ."      MOVS     r2,#0x16
        0x1102007e:    f001f8bb    ....    BL       $Ven$TT$L$$osal_memcpy ; 0x110211f8
        0x11020082:    5db8        .]      LDRB     r0,[r7,r6]
        0x11020084:    0980        ..      LSRS     r0,r0,#6
        0x11020086:    370c        .7      ADDS     r7,r7,#0xc
        0x11020088:    7778        xw      STRB     r0,[r7,#0x1d]
        0x1102008a:    aa0e        ..      ADD      r2,sp,#0x38
        0x1102008c:    7014        .p      STRB     r4,[r2,#0]
        0x1102008e:    482a        *H      LDR      r0,[pc,#168] ; [0x11020138] = 0x605
        0x11020090:    900d        ..      STR      r0,[sp,#0x34]
        0x11020092:    482a        *H      LDR      r0,[pc,#168] ; [0x1102013c] = 0x4030201
        0x11020094:    900c        ..      STR      r0,[sp,#0x30]
        0x11020096:    4628        (F      MOV      r0,r5
        0x11020098:    38e2        .8      SUBS     r0,r0,#0xe2
        0x1102009a:    9e01        ..      LDR      r6,[sp,#4]
        0x1102009c:    4631        1F      MOV      r1,r6
        0x1102009e:    f000f993    ....    BL       GAPMultiRole_SetParameter ; 0x110203c8
        0x110200a2:    4628        (F      MOV      r0,r5
        0x110200a4:    38e0        .8      SUBS     r0,r0,#0xe0
        0x110200a6:    2106        .!      MOVS     r1,#6
        0x110200a8:    9103        ..      STR      r1,[sp,#0xc]
        0x110200aa:    aa0c        ..      ADD      r2,sp,#0x30
        0x110200ac:    f000f98c    ....    BL       GAPMultiRole_SetParameter ; 0x110203c8
        0x110200b0:    aa0b        ..      ADD      r2,sp,#0x2c
        0x110200b2:    2007        .       MOVS     r0,#7
        0x110200b4:    9002        ..      STR      r0,[sp,#8]
        0x110200b6:    7010        .p      STRB     r0,[r2,#0]
        0x110200b8:    4628        (F      MOV      r0,r5
        0x110200ba:    38df        .8      SUBS     r0,r0,#0xdf
        0x110200bc:    4631        1F      MOV      r1,r6
        0x110200be:    f000f983    ....    BL       GAPMultiRole_SetParameter ; 0x110203c8
        0x110200c2:    aa0a        ..      ADD      r2,sp,#0x28
        0x110200c4:    9807        ..      LDR      r0,[sp,#0x1c]
        0x110200c6:    7010        .p      STRB     r0,[r2,#0]
        0x110200c8:    ac09        ..      ADD      r4,sp,#0x24
        0x110200ca:    8020         .      STRH     r0,[r4,#0]
        0x110200cc:    4628        (F      MOV      r0,r5
        0x110200ce:    38e6        .8      SUBS     r0,r0,#0xe6
        0x110200d0:    4631        1F      MOV      r1,r6
        0x110200d2:    f000f979    ..y.    BL       GAPMultiRole_SetParameter ; 0x110203c8
        0x110200d6:    4628        (F      MOV      r0,r5
        0x110200d8:    38e5        .8      SUBS     r0,r0,#0xe5
        0x110200da:    9904        ..      LDR      r1,[sp,#0x10]
        0x110200dc:    4622        "F      MOV      r2,r4
        0x110200de:    f000f973    ..s.    BL       GAPMultiRole_SetParameter ; 0x110203c8
        0x110200e2:    3de4        .=      SUBS     r5,r5,#0xe4
        0x110200e4:    211f        .!      MOVS     r1,#0x1f
        0x110200e6:    4628        (F      MOV      r0,r5
        0x110200e8:    463a        :F      MOV      r2,r7
        0x110200ea:    f000f96d    ..m.    BL       GAPMultiRole_SetParameter ; 0x110203c8
        0x110200ee:    4914        .I      LDR      r1,[pc,#80] ; [0x11020140] = 0x2710
        0x110200f0:    9807        ..      LDR      r0,[sp,#0x1c]
        0x110200f2:    f001fdb5    ....    BL       GAP_SetParamValue ; 0x11021c60
        0x110200f6:    4d13        .M      LDR      r5,[pc,#76] ; [0x11020144] = 0x1388
        0x110200f8:    9803        ..      LDR      r0,[sp,#0xc]
        0x110200fa:    4629        )F      MOV      r1,r5
        0x110200fc:    f001fdb0    ....    BL       GAP_SetParamValue ; 0x11021c60
        0x11020100:    9802        ..      LDR      r0,[sp,#8]
        0x11020102:    4629        )F      MOV      r1,r5
        0x11020104:    f001fdac    ....    BL       GAP_SetParamValue ; 0x11021c60
        0x11020108:    9805        ..      LDR      r0,[sp,#0x14]
        0x1102010a:    4629        )F      MOV      r1,r5
        0x1102010c:    f001fda8    ....    BL       GAP_SetParamValue ; 0x11021c60
        0x11020110:    9806        ..      LDR      r0,[sp,#0x18]
        0x11020112:    4629        )F      MOV      r1,r5
        0x11020114:    f001fda4    ....    BL       GAP_SetParamValue ; 0x11021c60
        0x11020118:    4c69        iL      LDR      r4,[pc,#420] ; [0x110202c0] = 0x1fff5ba8
        0x1102011a:    7820         x      LDRB     r0,[r4,#0]
        0x1102011c:    4631        1F      MOV      r1,r6
        0x1102011e:    f001f871    ..q.    BL       $Ven$TT$L$$osal_set_event ; 0x11021204
        0x11020122:    7820         x      LDRB     r0,[r4,#0]
        0x11020124:    f001fd96    ....    BL       GAP_RegisterForHCIMsgs ; 0x11021c54
        0x11020128:    4807        .H      LDR      r0,[pc,#28] ; [0x11020148] = 0x1fff6de4
        0x1102012a:    f001f871    ..q.    BL       $Ven$TT$L$$LL_PLUS_PerStats_Init ; 0x11021210
        0x1102012e:    b00f        ..      ADD      sp,sp,#0x3c
        0x11020130:    bdf0        ..      POP      {r4-r7,pc}
        0x11020132:    46c0        .F      MOV      r8,r8
    $d.3
    __arm_cp.2_2
        0x11020134:    11020659    Y...    DCD    285345369
    __arm_cp.2_4
        0x11020138:    00000605    ....    DCD    1541
    __arm_cp.2_5
        0x1102013c:    04030201    ....    DCD    67305985
    __arm_cp.2_6
        0x11020140:    00002710    .'..    DCD    10000
    __arm_cp.2_7
        0x11020144:    00001388    ....    DCD    5000
    __arm_cp.2_8
        0x11020148:    1fff6de4    .m..    DCD    536833508
    $t.6
    FindMy_ProcessEvent
        0x1102014c:    b570        p.      PUSH     {r4-r6,lr}
        0x1102014e:    b082        ..      SUB      sp,sp,#8
        0x11020150:    460c        .F      MOV      r4,r1
        0x11020152:    0448        H.      LSLS     r0,r1,#17
        0x11020154:    d40d        ..      BMI      0x11020172 ; FindMy_ProcessEvent + 38
        0x11020156:    07e0        ..      LSLS     r0,r4,#31
        0x11020158:    d11b        ..      BNE      0x11020192 ; FindMy_ProcessEvent + 70
        0x1102015a:    07a0        ..      LSLS     r0,r4,#30
        0x1102015c:    d428        (.      BMI      0x110201b0 ; FindMy_ProcessEvent + 100
        0x1102015e:    0760        `.      LSLS     r0,r4,#29
        0x11020160:    d433        3.      BMI      0x110201ca ; FindMy_ProcessEvent + 126
        0x11020162:    0720         .      LSLS     r0,r4,#28
        0x11020164:    d442        B.      BMI      0x110201ec ; FindMy_ProcessEvent + 160
        0x11020166:    06e0        ..      LSLS     r0,r4,#27
        0x11020168:    d451        Q.      BMI      0x1102020e ; FindMy_ProcessEvent + 194
        0x1102016a:    2400        .$      MOVS     r4,#0
        0x1102016c:    4620         F      MOV      r0,r4
        0x1102016e:    b002        ..      ADD      sp,sp,#8
        0x11020170:    bd70        p.      POP      {r4-r6,pc}
        0x11020172:    484e        NH      LDR      r0,[pc,#312] ; [0x110202ac] = 0x1fff6fa0
        0x11020174:    7a01        .z      LDRB     r1,[r0,#8]
        0x11020176:    2900        .)      CMP      r1,#0
        0x11020178:    d102        ..      BNE      0x11020180 ; FindMy_ProcessEvent + 52
        0x1102017a:    7840        @x      LDRB     r0,[r0,#1]
        0x1102017c:    2803        .(      CMP      r0,#3
        0x1102017e:    d102        ..      BNE      0x11020186 ; FindMy_ProcessEvent + 58
        0x11020180:    2000        .       MOVS     r0,#0
        0x11020182:    f001f84b    ..K.    BL       $Ven$TT$L$$gpio_key_timer_handler ; 0x1102121c
        0x11020186:    2001        .       MOVS     r0,#1
        0x11020188:    0380        ..      LSLS     r0,r0,#14
        0x1102018a:    4044        D@      EORS     r4,r4,r0
        0x1102018c:    4620         F      MOV      r0,r4
        0x1102018e:    b002        ..      ADD      sp,sp,#8
        0x11020190:    bd70        p.      POP      {r4-r6,pc}
        0x11020192:    4847        GH      LDR      r0,[pc,#284] ; [0x110202b0] = 0x1fff5940
        0x11020194:    1d00        ..      ADDS     r0,r0,#4
        0x11020196:    4947        GI      LDR      r1,[pc,#284] ; [0x110202b4] = 0x1102327c
        0x11020198:    f000f93a    ..:.    BL       GAPMultiRole_StartDevice ; 0x11020410
        0x1102019c:    2003        .       MOVS     r0,#3
        0x1102019e:    2100        .!      MOVS     r1,#0
        0x110201a0:    460a        .F      MOV      r2,r1
        0x110201a2:    f000f945    ..E.    BL       GAPMultiRole_StartDiscovery ; 0x11020430
        0x110201a6:    2001        .       MOVS     r0,#1
        0x110201a8:    4044        D@      EORS     r4,r4,r0
        0x110201aa:    4620         F      MOV      r0,r4
        0x110201ac:    b002        ..      ADD      sp,sp,#8
        0x110201ae:    bd70        p.      POP      {r4-r6,pc}
        0x110201b0:    f000f890    ....    BL       GAPMultiRole_CancelDiscovery ; 0x110202d4
        0x110201b4:    aa01        ..      ADD      r2,sp,#4
        0x110201b6:    2101        .!      MOVS     r1,#1
        0x110201b8:    7011        .p      STRB     r1,[r2,#0]
        0x110201ba:    483f        ?H      LDR      r0,[pc,#252] ; [0x110202b8] = 0x302
        0x110201bc:    f000f904    ....    BL       GAPMultiRole_SetParameter ; 0x110203c8
        0x110201c0:    2002        .       MOVS     r0,#2
        0x110201c2:    4044        D@      EORS     r4,r4,r0
        0x110201c4:    4620         F      MOV      r0,r4
        0x110201c6:    b002        ..      ADD      sp,sp,#8
        0x110201c8:    bd70        p.      POP      {r4-r6,pc}
        0x110201ca:    466a        jF      MOV      r2,sp
        0x110201cc:    2500        .%      MOVS     r5,#0
        0x110201ce:    7015        .p      STRB     r5,[r2,#0]
        0x110201d0:    4839        9H      LDR      r0,[pc,#228] ; [0x110202b8] = 0x302
        0x110201d2:    2101        .!      MOVS     r1,#1
        0x110201d4:    f000f8f8    ....    BL       GAPMultiRole_SetParameter ; 0x110203c8
        0x110201d8:    2003        .       MOVS     r0,#3
        0x110201da:    4629        )F      MOV      r1,r5
        0x110201dc:    462a        *F      MOV      r2,r5
        0x110201de:    f000f927    ..'.    BL       GAPMultiRole_StartDiscovery ; 0x11020430
        0x110201e2:    2004        .       MOVS     r0,#4
        0x110201e4:    4044        D@      EORS     r4,r4,r0
        0x110201e6:    4620         F      MOV      r0,r4
        0x110201e8:    b002        ..      ADD      sp,sp,#8
        0x110201ea:    bd70        p.      POP      {r4-r6,pc}
        0x110201ec:    4830        0H      LDR      r0,[pc,#192] ; [0x110202b0] = 0x1fff5940
        0x110201ee:    6801        .h      LDR      r1,[r0,#0]
        0x110201f0:    4a32        2J      LDR      r2,[pc,#200] ; [0x110202bc] = 0x3e7
        0x110201f2:    4291        .B      CMP      r1,r2
        0x110201f4:    dd06        ..      BLE      0x11020204 ; FindMy_ProcessEvent + 184
        0x110201f6:    2100        .!      MOVS     r1,#0
        0x110201f8:    6001        .`      STR      r1,[r0,#0]
        0x110201fa:    4831        1H      LDR      r0,[pc,#196] ; [0x110202c0] = 0x1fff5ba8
        0x110201fc:    7800        .x      LDRB     r0,[r0,#0]
        0x110201fe:    2110        .!      MOVS     r1,#0x10
        0x11020200:    f001f800    ....    BL       $Ven$TT$L$$osal_set_event ; 0x11021204
        0x11020204:    2008        .       MOVS     r0,#8
        0x11020206:    4044        D@      EORS     r4,r4,r0
        0x11020208:    4620         F      MOV      r0,r4
        0x1102020a:    b002        ..      ADD      sp,sp,#8
        0x1102020c:    bd70        p.      POP      {r4-r6,pc}
        0x1102020e:    4e28        (N      LDR      r6,[pc,#160] ; [0x110202b0] = 0x1fff5940
        0x11020210:    6830        0h      LDR      r0,[r6,#0]
        0x11020212:    1c45        E.      ADDS     r5,r0,#1
        0x11020214:    6035        5`      STR      r5,[r6,#0]
        0x11020216:    2164        d!      MOVS     r1,#0x64
        0x11020218:    4628        (F      MOV      r0,r5
        0x1102021a:    f001f805    ....    BL       $Ven$TT$L$$__aeabi_idivmod ; 0x11021228
        0x1102021e:    2928        ()      CMP      r1,#0x28
        0x11020220:    d82f        /.      BHI      0x11020282 ; FindMy_ProcessEvent + 310
        0x11020222:    46c0        .F      MOV      r8,r8
        0x11020224:    4479        yD      ADD      r1,r1,pc
        0x11020226:    7909        .y      LDRB     r1,[r1,#4]
        0x11020228:    0049        I.      LSLS     r1,r1,#1
        0x1102022a:    448f        .D      ADD      pc,pc,r1
    $d.7
        0x1102022c:    2a2a2a1b    .***    DCD    707406363
        0x11020230:    2a2a2a2a    ****    DCD    707406378
        0x11020234:    2a142a2a    **.*    DCD    705964586
        0x11020238:    202a2a2a    ***     DCD    539634218
        0x1102023c:    2a2a2a2a    ****    DCD    707406378
        0x11020240:    2a2a2a2a    ****    DCD    707406378
        0x11020244:    2a2a142a    *.**    DCD    707400746
        0x11020248:    2a1b2a2a    **.*    DCD    706423338
        0x1102024c:    2a2a2a2a    ****    DCD    707406378
        0x11020250:    2a2a2a2a    ****    DCD    707406378
        0x11020254:    0014        ..      DCW    20
    $t.8
        0x11020256:    491a        .I      LDR      r1,[pc,#104] ; [0x110202c0] = 0x1fff5ba8
        0x11020258:    8a0a        ..      LDRH     r2,[r1,#0x10]
        0x1102025a:    6888        .h      LDR      r0,[r1,#8]
        0x1102025c:    68c9        .h      LDR      r1,[r1,#0xc]
        0x1102025e:    f000fe75    ..u.    BL       hal_pwm_ch_stop ; 0x11020f4c
        0x11020262:    e00d        ..      B        0x11020280 ; FindMy_ProcessEvent + 308
        0x11020264:    4916        .I      LDR      r1,[pc,#88] ; [0x110202c0] = 0x1fff5ba8
        0x11020266:    4817        .H      LDR      r0,[pc,#92] ; [0x110202c4] = 0xb72
        0x11020268:    81c8        ..      STRH     r0,[r1,#0xe]
        0x1102026a:    4a17        .J      LDR      r2,[pc,#92] ; [0x110202c8] = 0x16e4
        0x1102026c:    e003        ..      B        0x11020276 ; FindMy_ProcessEvent + 298
        0x1102026e:    49f8        .I      LDR      r1,[pc,#992] ; [0x11020650] = 0x1fff5ba8
        0x11020270:    4816        .H      LDR      r0,[pc,#88] ; [0x110202cc] = 0xa6a
        0x11020272:    81c8        ..      STRH     r0,[r1,#0xe]
        0x11020274:    4a16        .J      LDR      r2,[pc,#88] ; [0x110202d0] = 0x14d5
        0x11020276:    820a        ..      STRH     r2,[r1,#0x10]
        0x11020278:    6888        .h      LDR      r0,[r1,#8]
        0x1102027a:    68c9        .h      LDR      r1,[r1,#0xc]
        0x1102027c:    f000fdc0    ....    BL       hal_pwm_ch_start ; 0x11020e00
        0x11020280:    6835        5h      LDR      r5,[r6,#0]
        0x11020282:    480e        .H      LDR      r0,[pc,#56] ; [0x110202bc] = 0x3e7
        0x11020284:    4285        .B      CMP      r5,r0
        0x11020286:    dd06        ..      BLE      0x11020296 ; FindMy_ProcessEvent + 330
        0x11020288:    49f1        .I      LDR      r1,[pc,#964] ; [0x11020650] = 0x1fff5ba8
        0x1102028a:    8a0a        ..      LDRH     r2,[r1,#0x10]
        0x1102028c:    6888        .h      LDR      r0,[r1,#8]
        0x1102028e:    68c9        .h      LDR      r1,[r1,#0xc]
        0x11020290:    f000fe5c    ..\.    BL       hal_pwm_ch_stop ; 0x11020f4c
        0x11020294:    e005        ..      B        0x110202a2 ; FindMy_ProcessEvent + 342
        0x11020296:    48ee        .H      LDR      r0,[pc,#952] ; [0x11020650] = 0x1fff5ba8
        0x11020298:    7800        .x      LDRB     r0,[r0,#0]
        0x1102029a:    2110        .!      MOVS     r1,#0x10
        0x1102029c:    220a        ."      MOVS     r2,#0xa
        0x1102029e:    f000ffc9    ....    BL       $Ven$TT$L$$osal_start_timerEx ; 0x11021234
        0x110202a2:    2010        .       MOVS     r0,#0x10
        0x110202a4:    4044        D@      EORS     r4,r4,r0
        0x110202a6:    4620         F      MOV      r0,r4
        0x110202a8:    b002        ..      ADD      sp,sp,#8
        0x110202aa:    bd70        p.      POP      {r4-r6,pc}
    $d.9
    __arm_cp.4_0
        0x110202ac:    1fff6fa0    .o..    DCD    536833952
    __arm_cp.4_1
        0x110202b0:    1fff5940    @Y..    DCD    536828224
    __arm_cp.4_2
        0x110202b4:    1102327c    |2..    DCD    285356668
    __arm_cp.4_3
        0x110202b8:    00000302    ....    DCD    770
    __arm_cp.4_4
        0x110202bc:    000003e7    ....    DCD    999
    __arm_cp.4_5
        0x110202c0:    1fff5ba8    .[..    DCD    536828840
    __arm_cp.4_6
        0x110202c4:    00000b72    r...    DCD    2930
    __arm_cp.4_7
        0x110202c8:    000016e4    ....    DCD    5860
    __arm_cp.4_8
        0x110202cc:    00000a6a    j...    DCD    2666
    __arm_cp.4_9
        0x110202d0:    000014d5    ....    DCD    5333
    $t.36
    GAPMultiRole_CancelDiscovery
        0x110202d4:    b580        ..      PUSH     {r7,lr}
        0x110202d6:    48c2        .H      LDR      r0,[pc,#776] ; [0x110205e0] = 0x1fff5bbc
        0x110202d8:    7a80        .z      LDRB     r0,[r0,#0xa]
        0x110202da:    f001faf7    ....    BL       GAP_DeviceDiscoveryCancel ; 0x110218cc
        0x110202de:    bd80        ..      POP      {r7,pc}
    GAPMultiRole_Init
        0x110202e0:    b5b0        ..      PUSH     {r4,r5,r7,lr}
        0x110202e2:    4604        .F      MOV      r4,r0
        0x110202e4:    4dbe        .M      LDR      r5,[pc,#760] ; [0x110205e0] = 0x1fff5bbc
        0x110202e6:    7228        (r      STRB     r0,[r5,#8]
        0x110202e8:    72a8        .r      STRB     r0,[r5,#0xa]
        0x110202ea:    f001fcb3    ....    BL       GAP_RegisterForHCIMsgs ; 0x11021c54
        0x110202ee:    2000        .       MOVS     r0,#0
        0x110202f0:    7028        (p      STRB     r0,[r5,#0]
        0x110202f2:    706c        lp      STRB     r4,[r5,#1]
        0x110202f4:    4620         F      MOV      r0,r4
        0x110202f6:    f001fcad    ....    BL       GAP_RegisterForHCIMsgs ; 0x11021c54
        0x110202fa:    2003        .       MOVS     r0,#3
        0x110202fc:    70e8        .p      STRB     r0,[r5,#3]
        0x110202fe:    4801        .H      LDR      r0,[pc,#4] ; [0x11020304] = 0x1000700
        0x11020300:    6068        h`      STR      r0,[r5,#4]
        0x11020302:    bdb0        ..      POP      {r4,r5,r7,pc}
    $d.39
    __arm_cp.17_1
        0x11020304:    01000700    ....    DCD    16779008
    $t.40
    GAPMultiRole_ProcessEvent
        0x11020308:    b570        p.      PUSH     {r4-r6,lr}
        0x1102030a:    b084        ..      SUB      sp,sp,#0x10
        0x1102030c:    460c        .F      MOV      r4,r1
        0x1102030e:    b208        ..      SXTH     r0,r1
        0x11020310:    2800        .(      CMP      r0,#0
        0x11020312:    d405        ..      BMI      0x11020320 ; GAPMultiRole_ProcessEvent + 24
        0x11020314:    07e0        ..      LSLS     r0,r4,#31
        0x11020316:    d12d        -.      BNE      0x11020374 ; GAPMultiRole_ProcessEvent + 108
        0x11020318:    2400        .$      MOVS     r4,#0
        0x1102031a:    4620         F      MOV      r0,r4
        0x1102031c:    b004        ..      ADD      sp,sp,#0x10
        0x1102031e:    bd70        p.      POP      {r4-r6,pc}
        0x11020320:    4eaf        .N      LDR      r6,[pc,#700] ; [0x110205e0] = 0x1fff5bbc
        0x11020322:    7ab0        .z      LDRB     r0,[r6,#0xa]
        0x11020324:    f000ff8c    ....    BL       $Ven$TT$L$$osal_msg_receive ; 0x11021240
        0x11020328:    2800        .(      CMP      r0,#0
        0x1102032a:    d01d        ..      BEQ      0x11020368 ; GAPMultiRole_ProcessEvent + 96
        0x1102032c:    4605        .F      MOV      r5,r0
        0x1102032e:    7800        .x      LDRB     r0,[r0,#0]
        0x11020330:    28d0        .(      CMP      r0,#0xd0
        0x11020332:    d116        ..      BNE      0x11020362 ; GAPMultiRole_ProcessEvent + 90
        0x11020334:    78a8        .x      LDRB     r0,[r5,#2]
        0x11020336:    2800        .(      CMP      r0,#0
        0x11020338:    d108        ..      BNE      0x1102034c ; GAPMultiRole_ProcessEvent + 68
        0x1102033a:    7868        hx      LDRB     r0,[r5,#1]
        0x1102033c:    2800        .(      CMP      r0,#0
        0x1102033e:    d105        ..      BNE      0x1102034c ; GAPMultiRole_ProcessEvent + 68
        0x11020340:    4630        0F      MOV      r0,r6
        0x11020342:    3020         0      ADDS     r0,r0,#0x20
        0x11020344:    1ce9        ..      ADDS     r1,r5,#3
        0x11020346:    2206        ."      MOVS     r2,#6
        0x11020348:    f000ff56    ..V.    BL       $Ven$TT$L$$osal_memcpy ; 0x110211f8
        0x1102034c:    6930        0i      LDR      r0,[r6,#0x10]
        0x1102034e:    2800        .(      CMP      r0,#0
        0x11020350:    d004        ..      BEQ      0x1102035c ; GAPMultiRole_ProcessEvent + 84
        0x11020352:    6841        Ah      LDR      r1,[r0,#4]
        0x11020354:    2900        .)      CMP      r1,#0
        0x11020356:    d001        ..      BEQ      0x1102035c ; GAPMultiRole_ProcessEvent + 84
        0x11020358:    4628        (F      MOV      r0,r5
        0x1102035a:    4788        .G      BLX      r1
        0x1102035c:    4628        (F      MOV      r0,r5
        0x1102035e:    f000f9b7    ....    BL       gapRole_ProcessGAPMsg ; 0x110206d0
        0x11020362:    4628        (F      MOV      r0,r5
        0x11020364:    f000ff72    ..r.    BL       $Ven$TT$L$$osal_msg_deallocate ; 0x1102124c
        0x11020368:    2001        .       MOVS     r0,#1
        0x1102036a:    03c0        ..      LSLS     r0,r0,#15
        0x1102036c:    4044        D@      EORS     r4,r4,r0
        0x1102036e:    4620         F      MOV      r0,r4
        0x11020370:    b004        ..      ADD      sp,sp,#0x10
        0x11020372:    bd70        p.      POP      {r4-r6,pc}
        0x11020374:    489b        .H      LDR      r0,[pc,#620] ; [0x110205e4] = 0x1fff598c
        0x11020376:    7800        .x      LDRB     r0,[r0,#0]
        0x11020378:    2800        .(      CMP      r0,#0
        0x1102037a:    d01f        ..      BEQ      0x110203bc ; GAPMultiRole_ProcessEvent + 180
        0x1102037c:    4e98        .N      LDR      r6,[pc,#608] ; [0x110205e0] = 0x1fff5bbc
        0x1102037e:    78f0        .x      LDRB     r0,[r6,#3]
        0x11020380:    ad01        ..      ADD      r5,sp,#4
        0x11020382:    7028        (p      STRB     r0,[r5,#0]
        0x11020384:    7930        0y      LDRB     r0,[r6,#4]
        0x11020386:    7068        hp      STRB     r0,[r5,#1]
        0x11020388:    1ca8        ..      ADDS     r0,r5,#2
        0x1102038a:    4631        1F      MOV      r1,r6
        0x1102038c:    3114        .1      ADDS     r1,r1,#0x14
        0x1102038e:    2206        ."      MOVS     r2,#6
        0x11020390:    f000ff32    ..2.    BL       $Ven$TT$L$$osal_memcpy ; 0x110211f8
        0x11020394:    7970        py      LDRB     r0,[r6,#5]
        0x11020396:    7228        (r      STRB     r0,[r5,#8]
        0x11020398:    79b0        .y      LDRB     r0,[r6,#6]
        0x1102039a:    7268        hr      STRB     r0,[r5,#9]
        0x1102039c:    7870        px      LDRB     r0,[r6,#1]
        0x1102039e:    4629        )F      MOV      r1,r5
        0x110203a0:    f001fb44    ..D.    BL       GAP_MakeDiscoverable ; 0x11021a2c
        0x110203a4:    2800        .(      CMP      r0,#0
        0x110203a6:    d009        ..      BEQ      0x110203bc ; GAPMultiRole_ProcessEvent + 180
        0x110203a8:    2004        .       MOVS     r0,#4
        0x110203aa:    7030        0p      STRB     r0,[r6,#0]
        0x110203ac:    68f0        .h      LDR      r0,[r6,#0xc]
        0x110203ae:    2800        .(      CMP      r0,#0
        0x110203b0:    d004        ..      BEQ      0x110203bc ; GAPMultiRole_ProcessEvent + 180
        0x110203b2:    6801        .h      LDR      r1,[r0,#0]
        0x110203b4:    2900        .)      CMP      r1,#0
        0x110203b6:    d001        ..      BEQ      0x110203bc ; GAPMultiRole_ProcessEvent + 180
        0x110203b8:    2004        .       MOVS     r0,#4
        0x110203ba:    4788        .G      BLX      r1
        0x110203bc:    2001        .       MOVS     r0,#1
        0x110203be:    4044        D@      EORS     r4,r4,r0
        0x110203c0:    4620         F      MOV      r0,r4
        0x110203c2:    b004        ..      ADD      sp,sp,#0x10
        0x110203c4:    bd70        p.      POP      {r4-r6,pc}
        0x110203c6:    46c0        .F      MOV      r8,r8
    GAPMultiRole_SetParameter
        0x110203c8:    b570        p.      PUSH     {r4-r6,lr}
        0x110203ca:    2600        .&      MOVS     r6,#0
        0x110203cc:    2501        .%      MOVS     r5,#1
        0x110203ce:    4b0f        .K      LDR      r3,[pc,#60] ; [0x1102040c] = 0x401
        0x110203d0:    4298        .B      CMP      r0,r3
        0x110203d2:    d107        ..      BNE      0x110203e4 ; GAPMultiRole_SetParameter + 28
        0x110203d4:    2901        .)      CMP      r1,#1
        0x110203d6:    d107        ..      BNE      0x110203e8 ; GAPMultiRole_SetParameter + 32
        0x110203d8:    7813        .x      LDRB     r3,[r2,#0]
        0x110203da:    4cee        .L      LDR      r4,[pc,#952] ; [0x11020794] = 0x1fff5bbc
        0x110203dc:    7263        cr      STRB     r3,[r4,#9]
        0x110203de:    2400        .$      MOVS     r4,#0
        0x110203e0:    462e        .F      MOV      r6,r5
        0x110203e2:    e002        ..      B        0x110203ea ; GAPMultiRole_SetParameter + 34
        0x110203e4:    2402        .$      MOVS     r4,#2
        0x110203e6:    e000        ..      B        0x110203ea ; GAPMultiRole_SetParameter + 34
        0x110203e8:    2418        .$      MOVS     r4,#0x18
        0x110203ea:    f000f82f    ../.    BL       GAPRole_SetParameter ; 0x1102044c
        0x110203ee:    4241        AB      RSBS     r1,r0,#0
        0x110203f0:    4141        AA      ADCS     r1,r1,r0
        0x110203f2:    2e00        ..      CMP      r6,#0
        0x110203f4:    d003        ..      BEQ      0x110203fe ; GAPMultiRole_SetParameter + 54
        0x110203f6:    2d00        .-      CMP      r5,#0
        0x110203f8:    d104        ..      BNE      0x11020404 ; GAPMultiRole_SetParameter + 60
        0x110203fa:    4620         F      MOV      r0,r4
        0x110203fc:    bd70        p.      POP      {r4-r6,pc}
        0x110203fe:    460d        .F      MOV      r5,r1
        0x11020400:    2d00        .-      CMP      r5,#0
        0x11020402:    d0fa        ..      BEQ      0x110203fa ; GAPMultiRole_SetParameter + 50
        0x11020404:    2400        .$      MOVS     r4,#0
        0x11020406:    4620         F      MOV      r0,r4
        0x11020408:    bd70        p.      POP      {r4-r6,pc}
        0x1102040a:    46c0        .F      MOV      r8,r8
    $d.31
    __arm_cp.13_0
        0x1102040c:    00000401    ....    DCD    1025
    $t.28
    GAPMultiRole_StartDevice
        0x11020410:    b580        ..      PUSH     {r7,lr}
        0x11020412:    b082        ..      SUB      sp,sp,#8
        0x11020414:    4adf        .J      LDR      r2,[pc,#892] ; [0x11020794] = 0x1fff5bbc
        0x11020416:    60d0        .`      STR      r0,[r2,#0xc]
        0x11020418:    6111        .a      STR      r1,[r2,#0x10]
        0x1102041a:    7a90        .z      LDRB     r0,[r2,#0xa]
        0x1102041c:    2300        .#      MOVS     r3,#0
        0x1102041e:    9300        ..      STR      r3,[sp,#0]
        0x11020420:    9301        ..      STR      r3,[sp,#4]
        0x11020422:    2103        .!      MOVS     r1,#3
        0x11020424:    2208        ."      MOVS     r2,#8
        0x11020426:    f000f8df    ....    BL       GAP_DeviceInit ; 0x110205e8
        0x1102042a:    b002        ..      ADD      sp,sp,#8
        0x1102042c:    bd80        ..      POP      {r7,pc}
        0x1102042e:    46c0        .F      MOV      r8,r8
    GAPMultiRole_StartDiscovery
        0x11020430:    b580        ..      PUSH     {r7,lr}
        0x11020432:    b082        ..      SUB      sp,sp,#8
        0x11020434:    ab01        ..      ADD      r3,sp,#4
        0x11020436:    70da        .p      STRB     r2,[r3,#3]
        0x11020438:    7099        .p      STRB     r1,[r3,#2]
        0x1102043a:    7058        Xp      STRB     r0,[r3,#1]
        0x1102043c:    48d5        .H      LDR      r0,[pc,#852] ; [0x11020794] = 0x1fff5bbc
        0x1102043e:    7a80        .z      LDRB     r0,[r0,#0xa]
        0x11020440:    7018        .p      STRB     r0,[r3,#0]
        0x11020442:    4618        .F      MOV      r0,r3
        0x11020444:    f001fa5e    ..^.    BL       GAP_DeviceDiscoveryRequest ; 0x11021904
        0x11020448:    b002        ..      ADD      sp,sp,#8
        0x1102044a:    bd80        ..      POP      {r7,pc}
    GAPRole_SetParameter
        0x1102044c:    b5f0        ..      PUSH     {r4-r7,lr}
        0x1102044e:    b081        ..      SUB      sp,sp,#4
        0x11020450:    4615        .F      MOV      r5,r2
        0x11020452:    460e        .F      MOV      r6,r1
        0x11020454:    4961        aI      LDR      r1,[pc,#388] ; [0x110205dc] = 0xfffffcfe
        0x11020456:    1841        A.      ADDS     r1,r0,r1
        0x11020458:    2908        .)      CMP      r1,#8
        0x1102045a:    d86c        l.      BHI      0x11020536 ; GAPRole_SetParameter + 234
        0x1102045c:    0088        ..      LSLS     r0,r1,#2
        0x1102045e:    a101        ..      ADR      r1,{pc}+6 ; 0x11020464
        0x11020460:    5808        .X      LDR      r0,[r1,r0]
        0x11020462:    4687        .F      MOV      pc,r0
    $d.1
        0x11020464:    11020489    ....    DCD    285344905
        0x11020468:    1102054f    O...    DCD    285345103
        0x1102046c:    110204bb    ....    DCD    285344955
        0x11020470:    110204df    ....    DCD    285344991
        0x11020474:    11020507    ....    DCD    285345031
        0x11020478:    11020561    a...    DCD    285345121
        0x1102047c:    11020579    y...    DCD    285345145
        0x11020480:    1102051f    ....    DCD    285345055
        0x11020484:    11020599    ....    DCD    285345177
    $t.2
        0x11020488:    2e01        ..      CMP      r6,#1
        0x1102048a:    d000        ..      BEQ      0x1102048e ; GAPRole_SetParameter + 66
        0x1102048c:    e080        ..      B        0x11020590 ; GAPRole_SetParameter + 324
        0x1102048e:    4ac0        .J      LDR      r2,[pc,#768] ; [0x11020790] = 0x1fff598c
        0x11020490:    7811        .x      LDRB     r1,[r2,#0]
        0x11020492:    7828        (x      LDRB     r0,[r5,#0]
        0x11020494:    7010        .p      STRB     r0,[r2,#0]
        0x11020496:    2900        .)      CMP      r1,#0
        0x11020498:    d100        ..      BNE      0x1102049c ; GAPRole_SetParameter + 80
        0x1102049a:    e089        ..      B        0x110205b0 ; GAPRole_SetParameter + 356
        0x1102049c:    2800        .(      CMP      r0,#0
        0x1102049e:    d000        ..      BEQ      0x110204a2 ; GAPRole_SetParameter + 86
        0x110204a0:    e086        ..      B        0x110205b0 ; GAPRole_SetParameter + 356
        0x110204a2:    48bc        .H      LDR      r0,[pc,#752] ; [0x11020794] = 0x1fff5bbc
        0x110204a4:    7801        .x      LDRB     r1,[r0,#0]
        0x110204a6:    2400        .$      MOVS     r4,#0
        0x110204a8:    2902        .)      CMP      r1,#2
        0x110204aa:    d000        ..      BEQ      0x110204ae ; GAPRole_SetParameter + 98
        0x110204ac:    e092        ..      B        0x110205d4 ; GAPRole_SetParameter + 392
        0x110204ae:    7840        @x      LDRB     r0,[r0,#1]
        0x110204b0:    f001fa76    ..v.    BL       GAP_EndDiscoverable ; 0x110219a0
        0x110204b4:    4620         F      MOV      r0,r4
        0x110204b6:    b001        ..      ADD      sp,sp,#4
        0x110204b8:    bdf0        ..      POP      {r4-r7,pc}
        0x110204ba:    2e1f        ..      CMP      r6,#0x1f
        0x110204bc:    d868        h.      BHI      0x11020590 ; GAPRole_SetParameter + 324
        0x110204be:    48b4        .H      LDR      r0,[pc,#720] ; [0x11020790] = 0x1fff598c
        0x110204c0:    1d07        ..      ADDS     r7,r0,#4
        0x110204c2:    2400        .$      MOVS     r4,#0
        0x110204c4:    221f        ."      MOVS     r2,#0x1f
        0x110204c6:    4638        8F      MOV      r0,r7
        0x110204c8:    4621        !F      MOV      r1,r4
        0x110204ca:    f000fec5    ....    BL       $Ven$TT$L$$osal_memset ; 0x11021258
        0x110204ce:    4638        8F      MOV      r0,r7
        0x110204d0:    4629        )F      MOV      r1,r5
        0x110204d2:    4632        2F      MOV      r2,r6
        0x110204d4:    f000fe90    ....    BL       $Ven$TT$L$$osal_memcpy ; 0x110211f8
        0x110204d8:    48ad        .H      LDR      r0,[pc,#692] ; [0x11020790] = 0x1fff598c
        0x110204da:    7046        Fp      STRB     r6,[r0,#1]
        0x110204dc:    e07a        z.      B        0x110205d4 ; GAPRole_SetParameter + 392
        0x110204de:    2e1f        ..      CMP      r6,#0x1f
        0x110204e0:    d856        V.      BHI      0x11020590 ; GAPRole_SetParameter + 324
        0x110204e2:    4fac        .O      LDR      r7,[pc,#688] ; [0x11020794] = 0x1fff5bbc
        0x110204e4:    3726        &7      ADDS     r7,r7,#0x26
        0x110204e6:    2400        .$      MOVS     r4,#0
        0x110204e8:    221f        ."      MOVS     r2,#0x1f
        0x110204ea:    4638        8F      MOV      r0,r7
        0x110204ec:    4621        !F      MOV      r1,r4
        0x110204ee:    f000feb3    ....    BL       $Ven$TT$L$$osal_memset ; 0x11021258
        0x110204f2:    4638        8F      MOV      r0,r7
        0x110204f4:    4629        )F      MOV      r1,r5
        0x110204f6:    4632        2F      MOV      r2,r6
        0x110204f8:    f000fe7e    ..~.    BL       $Ven$TT$L$$osal_memcpy ; 0x110211f8
        0x110204fc:    48a5        .H      LDR      r0,[pc,#660] ; [0x11020794] = 0x1fff5bbc
        0x110204fe:    7086        .p      STRB     r6,[r0,#2]
        0x11020500:    4620         F      MOV      r0,r4
        0x11020502:    b001        ..      ADD      sp,sp,#4
        0x11020504:    bdf0        ..      POP      {r4-r7,pc}
        0x11020506:    2418        .$      MOVS     r4,#0x18
        0x11020508:    2e01        ..      CMP      r6,#1
        0x1102050a:    d163        c.      BNE      0x110205d4 ; GAPRole_SetParameter + 392
        0x1102050c:    7828        (x      LDRB     r0,[r5,#0]
        0x1102050e:    2804        .(      CMP      r0,#4
        0x11020510:    d860        `.      BHI      0x110205d4 ; GAPRole_SetParameter + 392
        0x11020512:    49a0        .I      LDR      r1,[pc,#640] ; [0x11020794] = 0x1fff5bbc
        0x11020514:    70c8        .p      STRB     r0,[r1,#3]
        0x11020516:    2400        .$      MOVS     r4,#0
        0x11020518:    4620         F      MOV      r0,r4
        0x1102051a:    b001        ..      ADD      sp,sp,#4
        0x1102051c:    bdf0        ..      POP      {r4-r7,pc}
        0x1102051e:    2418        .$      MOVS     r4,#0x18
        0x11020520:    2e01        ..      CMP      r6,#1
        0x11020522:    d157        W.      BNE      0x110205d4 ; GAPRole_SetParameter + 392
        0x11020524:    7828        (x      LDRB     r0,[r5,#0]
        0x11020526:    2807        .(      CMP      r0,#7
        0x11020528:    d854        T.      BHI      0x110205d4 ; GAPRole_SetParameter + 392
        0x1102052a:    499a        .I      LDR      r1,[pc,#616] ; [0x11020794] = 0x1fff5bbc
        0x1102052c:    7148        Hq      STRB     r0,[r1,#5]
        0x1102052e:    2400        .$      MOVS     r4,#0
        0x11020530:    4620         F      MOV      r0,r4
        0x11020532:    b001        ..      ADD      sp,sp,#4
        0x11020534:    bdf0        ..      POP      {r4-r7,pc}
        0x11020536:    2402        .$      MOVS     r4,#2
        0x11020538:    2826        &(      CMP      r0,#0x26
        0x1102053a:    d84b        K.      BHI      0x110205d4 ; GAPRole_SetParameter + 392
        0x1102053c:    2e02        ..      CMP      r6,#2
        0x1102053e:    d149        I.      BNE      0x110205d4 ; GAPRole_SetParameter + 392
        0x11020540:    8829        ).      LDRH     r1,[r5,#0]
        0x11020542:    f001fb8d    ....    BL       GAP_SetParamValue ; 0x11021c60
        0x11020546:    4604        .F      MOV      r4,r0
        0x11020548:    4620         F      MOV      r0,r4
        0x1102054a:    b001        ..      ADD      sp,sp,#4
        0x1102054c:    bdf0        ..      POP      {r4-r7,pc}
        0x1102054e:    2e02        ..      CMP      r6,#2
        0x11020550:    d11e        ..      BNE      0x11020590 ; GAPRole_SetParameter + 324
        0x11020552:    8828        (.      LDRH     r0,[r5,#0]
        0x11020554:    498e        .I      LDR      r1,[pc,#568] ; [0x11020790] = 0x1fff598c
        0x11020556:    8048        H.      STRH     r0,[r1,#2]
        0x11020558:    2400        .$      MOVS     r4,#0
        0x1102055a:    4620         F      MOV      r0,r4
        0x1102055c:    b001        ..      ADD      sp,sp,#4
        0x1102055e:    bdf0        ..      POP      {r4-r7,pc}
        0x11020560:    2418        .$      MOVS     r4,#0x18
        0x11020562:    2e01        ..      CMP      r6,#1
        0x11020564:    d136        6.      BNE      0x110205d4 ; GAPRole_SetParameter + 392
        0x11020566:    7828        (x      LDRB     r0,[r5,#0]
        0x11020568:    2803        .(      CMP      r0,#3
        0x1102056a:    d833        3.      BHI      0x110205d4 ; GAPRole_SetParameter + 392
        0x1102056c:    4989        .I      LDR      r1,[pc,#548] ; [0x11020794] = 0x1fff5bbc
        0x1102056e:    7108        .q      STRB     r0,[r1,#4]
        0x11020570:    2400        .$      MOVS     r4,#0
        0x11020572:    4620         F      MOV      r0,r4
        0x11020574:    b001        ..      ADD      sp,sp,#4
        0x11020576:    bdf0        ..      POP      {r4-r7,pc}
        0x11020578:    2e06        ..      CMP      r6,#6
        0x1102057a:    d109        ..      BNE      0x11020590 ; GAPRole_SetParameter + 324
        0x1102057c:    4885        .H      LDR      r0,[pc,#532] ; [0x11020794] = 0x1fff5bbc
        0x1102057e:    3014        .0      ADDS     r0,r0,#0x14
        0x11020580:    2206        ."      MOVS     r2,#6
        0x11020582:    4629        )F      MOV      r1,r5
        0x11020584:    f000fe38    ..8.    BL       $Ven$TT$L$$osal_memcpy ; 0x110211f8
        0x11020588:    2400        .$      MOVS     r4,#0
        0x1102058a:    4620         F      MOV      r0,r4
        0x1102058c:    b001        ..      ADD      sp,sp,#4
        0x1102058e:    bdf0        ..      POP      {r4-r7,pc}
        0x11020590:    2418        .$      MOVS     r4,#0x18
        0x11020592:    4620         F      MOV      r0,r4
        0x11020594:    b001        ..      ADD      sp,sp,#4
        0x11020596:    bdf0        ..      POP      {r4-r7,pc}
        0x11020598:    2418        .$      MOVS     r4,#0x18
        0x1102059a:    2e01        ..      CMP      r6,#1
        0x1102059c:    d11a        ..      BNE      0x110205d4 ; GAPRole_SetParameter + 392
        0x1102059e:    7828        (x      LDRB     r0,[r5,#0]
        0x110205a0:    2803        .(      CMP      r0,#3
        0x110205a2:    d817        ..      BHI      0x110205d4 ; GAPRole_SetParameter + 392
        0x110205a4:    497b        {I      LDR      r1,[pc,#492] ; [0x11020794] = 0x1fff5bbc
        0x110205a6:    7188        .q      STRB     r0,[r1,#6]
        0x110205a8:    2400        .$      MOVS     r4,#0
        0x110205aa:    4620         F      MOV      r0,r4
        0x110205ac:    b001        ..      ADD      sp,sp,#4
        0x110205ae:    bdf0        ..      POP      {r4-r7,pc}
        0x110205b0:    2400        .$      MOVS     r4,#0
        0x110205b2:    2900        .)      CMP      r1,#0
        0x110205b4:    d10e        ..      BNE      0x110205d4 ; GAPRole_SetParameter + 392
        0x110205b6:    2800        .(      CMP      r0,#0
        0x110205b8:    d00c        ..      BEQ      0x110205d4 ; GAPRole_SetParameter + 392
        0x110205ba:    4876        vH      LDR      r0,[pc,#472] ; [0x11020794] = 0x1fff5bbc
        0x110205bc:    7801        .x      LDRB     r1,[r0,#0]
        0x110205be:    22fd        ."      MOVS     r2,#0xfd
        0x110205c0:    400a        .@      ANDS     r2,r2,r1
        0x110205c2:    2a01        .*      CMP      r2,#1
        0x110205c4:    d106        ..      BNE      0x110205d4 ; GAPRole_SetParameter + 392
        0x110205c6:    7840        @x      LDRB     r0,[r0,#1]
        0x110205c8:    2101        .!      MOVS     r1,#1
        0x110205ca:    f000fe1b    ....    BL       $Ven$TT$L$$osal_set_event ; 0x11021204
        0x110205ce:    4620         F      MOV      r0,r4
        0x110205d0:    b001        ..      ADD      sp,sp,#4
        0x110205d2:    bdf0        ..      POP      {r4-r7,pc}
        0x110205d4:    4620         F      MOV      r0,r4
        0x110205d6:    b001        ..      ADD      sp,sp,#4
        0x110205d8:    bdf0        ..      POP      {r4-r7,pc}
        0x110205da:    46c0        .F      MOV      r8,r8
    $d.3
    __arm_cp.0_0
        0x110205dc:    fffffcfe    ....    DCD    4294966526
    __arm_cp.0_1
        0x110205e0:    1fff5bbc    .[..    DCD    536828860
    __arm_cp.0_2
        0x110205e4:    1fff598c    .Y..    DCD    536828300
    $t.0
    GAP_DeviceInit
        0x110205e8:    b5b0        ..      PUSH     {r4,r5,r7,lr}
        0x110205ea:    4614        .F      MOV      r4,r2
        0x110205ec:    4602        .F      MOV      r2,r0
        0x110205ee:    2002        .       MOVS     r0,#2
        0x110205f0:    290c        .)      CMP      r1,#0xc
        0x110205f2:    d809        ..      BHI      0x11020608 ; GAP_DeviceInit + 32
        0x110205f4:    2301        .#      MOVS     r3,#1
        0x110205f6:    408b        .@      LSLS     r3,r3,r1
        0x110205f8:    4d07        .M      LDR      r5,[pc,#28] ; [0x11020618] = 0x100e
        0x110205fa:    422b        +B      TST      r3,r5
        0x110205fc:    d004        ..      BEQ      0x11020608 ; GAP_DeviceInit + 32
        0x110205fe:    4610        .F      MOV      r0,r2
        0x11020600:    f001fa78    ..x.    BL       GAP_ParamsInit ; 0x11021af4
        0x11020604:    2800        .(      CMP      r0,#0
        0x11020606:    d000        ..      BEQ      0x1102060a ; GAP_DeviceInit + 34
        0x11020608:    bdb0        ..      POP      {r4,r5,r7,pc}
        0x1102060a:    4620         F      MOV      r0,r4
        0x1102060c:    f001f940    ..@.    BL       GAP_CentDevMgrInit ; 0x11021890
        0x11020610:    f001fa8c    ....    BL       GAP_PeriDevMgrInit ; 0x11021b2c
        0x11020614:    2000        .       MOVS     r0,#0
        0x11020616:    bdb0        ..      POP      {r4,r5,r7,pc}
    $d.1
    __arm_cp.0_0
        0x11020618:    0000100e    ....    DCD    4110
    $t.12
    findMy_broadcasterEventCB
        0x1102061c:    b580        ..      PUSH     {r7,lr}
        0x1102061e:    2803        .(      CMP      r0,#3
        0x11020620:    d010        ..      BEQ      0x11020644 ; findMy_broadcasterEventCB + 40
        0x11020622:    2801        .(      CMP      r0,#1
        0x11020624:    d113        ..      BNE      0x1102064e ; findMy_broadcasterEventCB + 50
        0x11020626:    4829        )H      LDR      r0,[pc,#164] ; [0x110206cc] = 0x1fff5ba8
        0x11020628:    7981        .y      LDRB     r1,[r0,#6]
        0x1102062a:    4a0a        .J      LDR      r2,[pc,#40] ; [0x11020654] = 0x1fff0965
        0x1102062c:    7011        .p      STRB     r1,[r2,#0]
        0x1102062e:    7941        Ay      LDRB     r1,[r0,#5]
        0x11020630:    7051        Qp      STRB     r1,[r2,#1]
        0x11020632:    7901        .y      LDRB     r1,[r0,#4]
        0x11020634:    7091        .p      STRB     r1,[r2,#2]
        0x11020636:    78c1        .x      LDRB     r1,[r0,#3]
        0x11020638:    70d1        .p      STRB     r1,[r2,#3]
        0x1102063a:    7881        .x      LDRB     r1,[r0,#2]
        0x1102063c:    7111        .q      STRB     r1,[r2,#4]
        0x1102063e:    7840        @x      LDRB     r0,[r0,#1]
        0x11020640:    7150        Pq      STRB     r0,[r2,#5]
        0x11020642:    bd80        ..      POP      {r7,pc}
        0x11020644:    4821        !H      LDR      r0,[pc,#132] ; [0x110206cc] = 0x1fff5ba8
        0x11020646:    7800        .x      LDRB     r0,[r0,#0]
        0x11020648:    2104        .!      MOVS     r1,#4
        0x1102064a:    f000fddb    ....    BL       $Ven$TT$L$$osal_set_event ; 0x11021204
        0x1102064e:    bd80        ..      POP      {r7,pc}
    $d.13
    __arm_cp.6_0
        0x11020650:    1fff5ba8    .[..    DCD    536828840
    __arm_cp.6_1
        0x11020654:    1fff0965    e...    DCD    536807781
    $t.4
    findMy_keyPressEvt
        0x11020658:    b510        ..      PUSH     {r4,lr}
        0x1102065a:    2920         )      CMP      r1,#0x20
        0x1102065c:    d010        ..      BEQ      0x11020680 ; findMy_keyPressEvt + 40
        0x1102065e:    2904        .)      CMP      r1,#4
        0x11020660:    d117        ..      BNE      0x11020692 ; findMy_keyPressEvt + 58
        0x11020662:    207d        }       MOVS     r0,#0x7d
        0x11020664:    00c0        ..      LSLS     r0,r0,#3
        0x11020666:    490b        .I      LDR      r1,[pc,#44] ; [0x11020694] = 0x1fff5940
        0x11020668:    6008        .`      STR      r0,[r1,#0]
        0x1102066a:    4c18        .L      LDR      r4,[pc,#96] ; [0x110206cc] = 0x1fff5ba8
        0x1102066c:    7820         x      LDRB     r0,[r4,#0]
        0x1102066e:    2110        .!      MOVS     r1,#0x10
        0x11020670:    f000fdf8    ....    BL       $Ven$TT$L$$osal_stop_timerEx ; 0x11021264
        0x11020674:    68a0        .h      LDR      r0,[r4,#8]
        0x11020676:    68e1        .h      LDR      r1,[r4,#0xc]
        0x11020678:    8a22        ".      LDRH     r2,[r4,#0x10]
        0x1102067a:    f000fc67    ..g.    BL       hal_pwm_ch_stop ; 0x11020f4c
        0x1102067e:    bd10        ..      POP      {r4,pc}
        0x11020680:    207d        }       MOVS     r0,#0x7d
        0x11020682:    00c0        ..      LSLS     r0,r0,#3
        0x11020684:    4903        .I      LDR      r1,[pc,#12] ; [0x11020694] = 0x1fff5940
        0x11020686:    6008        .`      STR      r0,[r1,#0]
        0x11020688:    4810        .H      LDR      r0,[pc,#64] ; [0x110206cc] = 0x1fff5ba8
        0x1102068a:    7800        .x      LDRB     r0,[r0,#0]
        0x1102068c:    2108        .!      MOVS     r1,#8
        0x1102068e:    f000fdb9    ....    BL       $Ven$TT$L$$osal_set_event ; 0x11021204
        0x11020692:    bd10        ..      POP      {r4,pc}
    $d.5
    __arm_cp.3_0
        0x11020694:    1fff5940    @Y..    DCD    536828224
    $t.14
    findMy_observerEventCB
        0x11020698:    b580        ..      PUSH     {r7,lr}
        0x1102069a:    7881        .x      LDRB     r1,[r0,#2]
        0x1102069c:    2901        .)      CMP      r1,#1
        0x1102069e:    d009        ..      BEQ      0x110206b4 ; findMy_observerEventCB + 28
        0x110206a0:    290d        .)      CMP      r1,#0xd
        0x110206a2:    d10c        ..      BNE      0x110206be ; findMy_observerEventCB + 38
        0x110206a4:    6900        .i      LDR      r0,[r0,#0x10]
        0x110206a6:    a106        ..      ADR      r1,{pc}+0x1a ; 0x110206c0
        0x110206a8:    f000fde2    ....    BL       $Ven$TT$L$$strstr ; 0x11021270
        0x110206ac:    2800        .(      CMP      r0,#0
        0x110206ae:    d006        ..      BEQ      0x110206be ; findMy_observerEventCB + 38
        0x110206b0:    2108        .!      MOVS     r1,#8
        0x110206b2:    e000        ..      B        0x110206b6 ; findMy_observerEventCB + 30
        0x110206b4:    2102        .!      MOVS     r1,#2
        0x110206b6:    4805        .H      LDR      r0,[pc,#20] ; [0x110206cc] = 0x1fff5ba8
        0x110206b8:    7800        .x      LDRB     r0,[r0,#0]
        0x110206ba:    f000fda3    ....    BL       $Ven$TT$L$$osal_set_event ; 0x11021204
        0x110206be:    bd80        ..      POP      {r7,pc}
    $d.15
        0x110206c0:    646e6966    find    DCD    1684957542
        0x110206c4:    20656d20     me     DCD    543517984
        0x110206c8:    007a6c70    plz.    DCD    8023152
    __arm_cp.7_1
        0x110206cc:    1fff5ba8    .[..    DCD    536828840
    $t.42
    gapRole_ProcessGAPMsg
        0x110206d0:    b570        p.      PUSH     {r4-r6,lr}
        0x110206d2:    4604        .F      MOV      r4,r0
        0x110206d4:    7880        .x      LDRB     r0,[r0,#2]
        0x110206d6:    1ec1        ..      SUBS     r1,r0,#3
        0x110206d8:    2902        .)      CMP      r1,#2
        0x110206da:    d319        ..      BCC      0x11020710 ; gapRole_ProcessGAPMsg + 64
        0x110206dc:    2802        .(      CMP      r0,#2
        0x110206de:    d01c        ..      BEQ      0x1102071a ; gapRole_ProcessGAPMsg + 74
        0x110206e0:    2800        .(      CMP      r0,#0
        0x110206e2:    d153        S.      BNE      0x1102078c ; gapRole_ProcessGAPMsg + 188
        0x110206e4:    7860        `x      LDRB     r0,[r4,#1]
        0x110206e6:    2504        .%      MOVS     r5,#4
        0x110206e8:    2800        .(      CMP      r0,#0
        0x110206ea:    d144        D.      BNE      0x11020776 ; gapRole_ProcessGAPMsg + 166
        0x110206ec:    4e29        )N      LDR      r6,[pc,#164] ; [0x11020794] = 0x1fff5bbc
        0x110206ee:    4630        0F      MOV      r0,r6
        0x110206f0:    301a        .0      ADDS     r0,r0,#0x1a
        0x110206f2:    1ce1        ..      ADDS     r1,r4,#3
        0x110206f4:    2206        ."      MOVS     r2,#6
        0x110206f6:    f000fd7f    ....    BL       $Ven$TT$L$$osal_memcpy ; 0x110211f8
        0x110206fa:    2101        .!      MOVS     r1,#1
        0x110206fc:    7031        1p      STRB     r1,[r6,#0]
        0x110206fe:    4b24        $K      LDR      r3,[pc,#144] ; [0x11020790] = 0x1fff598c
        0x11020700:    785a        Zx      LDRB     r2,[r3,#1]
        0x11020702:    7870        px      LDRB     r0,[r6,#1]
        0x11020704:    1d1b        ..      ADDS     r3,r3,#4
        0x11020706:    f001fabb    ....    BL       GAP_UpdateAdvertisingData ; 0x11021c80
        0x1102070a:    2800        .(      CMP      r0,#0
        0x1102070c:    d133        3.      BNE      0x11020776 ; gapRole_ProcessGAPMsg + 166
        0x1102070e:    e034        4.      B        0x1102077a ; gapRole_ProcessGAPMsg + 170
        0x11020710:    7861        ax      LDRB     r1,[r4,#1]
        0x11020712:    2900        .)      CMP      r1,#0
        0x11020714:    d013        ..      BEQ      0x1102073e ; gapRole_ProcessGAPMsg + 110
        0x11020716:    2504        .%      MOVS     r5,#4
        0x11020718:    e02d        -.      B        0x11020776 ; gapRole_ProcessGAPMsg + 166
        0x1102071a:    7860        `x      LDRB     r0,[r4,#1]
        0x1102071c:    2504        .%      MOVS     r5,#4
        0x1102071e:    2800        .(      CMP      r0,#0
        0x11020720:    d129        ).      BNE      0x11020776 ; gapRole_ProcessGAPMsg + 166
        0x11020722:    4b1c        .K      LDR      r3,[pc,#112] ; [0x11020794] = 0x1fff5bbc
        0x11020724:    7858        Xx      LDRB     r0,[r3,#1]
        0x11020726:    78e1        .x      LDRB     r1,[r4,#3]
        0x11020728:    2900        .)      CMP      r1,#0
        0x1102072a:    d01a        ..      BEQ      0x11020762 ; gapRole_ProcessGAPMsg + 146
        0x1102072c:    789a        .x      LDRB     r2,[r3,#2]
        0x1102072e:    3326        &3      ADDS     r3,r3,#0x26
        0x11020730:    2100        .!      MOVS     r1,#0
        0x11020732:    f001faa5    ....    BL       GAP_UpdateAdvertisingData ; 0x11021c80
        0x11020736:    7060        `p      STRB     r0,[r4,#1]
        0x11020738:    2800        .(      CMP      r0,#0
        0x1102073a:    d11c        ..      BNE      0x11020776 ; gapRole_ProcessGAPMsg + 166
        0x1102073c:    e026        &.      B        0x1102078c ; gapRole_ProcessGAPMsg + 188
        0x1102073e:    2803        .(      CMP      r0,#3
        0x11020740:    d101        ..      BNE      0x11020746 ; gapRole_ProcessGAPMsg + 118
        0x11020742:    2502        .%      MOVS     r5,#2
        0x11020744:    e017        ..      B        0x11020776 ; gapRole_ProcessGAPMsg + 166
        0x11020746:    4812        .H      LDR      r0,[pc,#72] ; [0x11020790] = 0x1fff598c
        0x11020748:    8842        B.      LDRH     r2,[r0,#2]
        0x1102074a:    2a00        .*      CMP      r2,#0
        0x1102074c:    d010        ..      BEQ      0x11020770 ; gapRole_ProcessGAPMsg + 160
        0x1102074e:    7800        .x      LDRB     r0,[r0,#0]
        0x11020750:    2503        .%      MOVS     r5,#3
        0x11020752:    2800        .(      CMP      r0,#0
        0x11020754:    d00f        ..      BEQ      0x11020776 ; gapRole_ProcessGAPMsg + 166
        0x11020756:    480f        .H      LDR      r0,[pc,#60] ; [0x11020794] = 0x1fff5bbc
        0x11020758:    7840        @x      LDRB     r0,[r0,#1]
        0x1102075a:    2101        .!      MOVS     r1,#1
        0x1102075c:    f000fd6a    ..j.    BL       $Ven$TT$L$$osal_start_timerEx ; 0x11021234
        0x11020760:    e009        ..      B        0x11020776 ; gapRole_ProcessGAPMsg + 166
        0x11020762:    2101        .!      MOVS     r1,#1
        0x11020764:    f000fd4e    ..N.    BL       $Ven$TT$L$$osal_set_event ; 0x11021204
        0x11020768:    7860        `x      LDRB     r0,[r4,#1]
        0x1102076a:    2800        .(      CMP      r0,#0
        0x1102076c:    d103        ..      BNE      0x11020776 ; gapRole_ProcessGAPMsg + 166
        0x1102076e:    e00d        ..      B        0x1102078c ; gapRole_ProcessGAPMsg + 188
        0x11020770:    2100        .!      MOVS     r1,#0
        0x11020772:    7001        .p      STRB     r1,[r0,#0]
        0x11020774:    2503        .%      MOVS     r5,#3
        0x11020776:    4807        .H      LDR      r0,[pc,#28] ; [0x11020794] = 0x1fff5bbc
        0x11020778:    7005        .p      STRB     r5,[r0,#0]
        0x1102077a:    4806        .H      LDR      r0,[pc,#24] ; [0x11020794] = 0x1fff5bbc
        0x1102077c:    68c1        .h      LDR      r1,[r0,#0xc]
        0x1102077e:    2900        .)      CMP      r1,#0
        0x11020780:    d004        ..      BEQ      0x1102078c ; gapRole_ProcessGAPMsg + 188
        0x11020782:    6809        .h      LDR      r1,[r1,#0]
        0x11020784:    2900        .)      CMP      r1,#0
        0x11020786:    d001        ..      BEQ      0x1102078c ; gapRole_ProcessGAPMsg + 188
        0x11020788:    7800        .x      LDRB     r0,[r0,#0]
        0x1102078a:    4788        .G      BLX      r1
        0x1102078c:    bd70        p.      POP      {r4-r6,pc}
        0x1102078e:    46c0        .F      MOV      r8,r8
    $d.43
    __arm_cp.19_0
        0x11020790:    1fff598c    .Y..    DCD    536828300
    __arm_cp.19_1
        0x11020794:    1fff5bbc    .[..    DCD    536828860
    $t.28
    __tagsym$$used.0
    hal_GPIO_IRQHandler
        0x11020798:    b5f0        ..      PUSH     {r4-r7,lr}
        0x1102079a:    b083        ..      SUB      sp,sp,#0xc
        0x1102079c:    4b28        (K      LDR      r3,[pc,#160] ; [0x11020840] = 0x40008034
        0x1102079e:    6898        .h      LDR      r0,[r3,#8]
        0x110207a0:    9000        ..      STR      r0,[sp,#0]
        0x110207a2:    68d8        .h      LDR      r0,[r3,#0xc]
        0x110207a4:    9002        ..      STR      r0,[sp,#8]
        0x110207a6:    6198        .a      STR      r0,[r3,#0x18]
        0x110207a8:    4faf        .O      LDR      r7,[pc,#700] ; [0x11020a68] = 0x1fff702c
        0x110207aa:    3720         7      ADDS     r7,r7,#0x20
        0x110207ac:    2500        .%      MOVS     r5,#0
        0x110207ae:    e009        ..      B        0x110207c4 ; hal_GPIO_IRQHandler + 44
        0x110207b0:    4610        .F      MOV      r0,r2
        0x110207b2:    6098        .`      STR      r0,[r3,#8]
        0x110207b4:    1f18        ..      SUBS     r0,r3,#4
        0x110207b6:    6801        .h      LDR      r1,[r0,#0]
        0x110207b8:    4331        1C      ORRS     r1,r1,r6
        0x110207ba:    6001        .`      STR      r1,[r0,#0]
        0x110207bc:    370c        .7      ADDS     r7,r7,#0xc
        0x110207be:    1c6d        m.      ADDS     r5,r5,#1
        0x110207c0:    2d17        .-      CMP      r5,#0x17
        0x110207c2:    d03b        ;.      BEQ      0x1102083c ; hal_GPIO_IRQHandler + 164
        0x110207c4:    2601        .&      MOVS     r6,#1
        0x110207c6:    40ae        .@      LSLS     r6,r6,r5
        0x110207c8:    9802        ..      LDR      r0,[sp,#8]
        0x110207ca:    4206        .B      TST      r6,r0
        0x110207cc:    d0f6        ..      BEQ      0x110207bc ; hal_GPIO_IRQHandler + 36
        0x110207ce:    4634        4F      MOV      r4,r6
        0x110207d0:    9800        ..      LDR      r0,[sp,#0]
        0x110207d2:    4004        .@      ANDS     r4,r4,r0
        0x110207d4:    1f38        8.      SUBS     r0,r7,#4
        0x110207d6:    2c00        .,      CMP      r4,#0
        0x110207d8:    d006        ..      BEQ      0x110207e8 ; hal_GPIO_IRQHandler + 80
        0x110207da:    6802        .h      LDR      r2,[r0,#0]
        0x110207dc:    2a00        .*      CMP      r2,#0
        0x110207de:    d003        ..      BEQ      0x110207e8 ; hal_GPIO_IRQHandler + 80
        0x110207e0:    9001        ..      STR      r0,[sp,#4]
        0x110207e2:    b2e8        ..      UXTB     r0,r5
        0x110207e4:    2101        .!      MOVS     r1,#1
        0x110207e6:    e007        ..      B        0x110207f8 ; hal_GPIO_IRQHandler + 96
        0x110207e8:    2c00        .,      CMP      r4,#0
        0x110207ea:    d108        ..      BNE      0x110207fe ; hal_GPIO_IRQHandler + 102
        0x110207ec:    683a        :h      LDR      r2,[r7,#0]
        0x110207ee:    2a00        .*      CMP      r2,#0
        0x110207f0:    d005        ..      BEQ      0x110207fe ; hal_GPIO_IRQHandler + 102
        0x110207f2:    9001        ..      STR      r0,[sp,#4]
        0x110207f4:    b2e8        ..      UXTB     r0,r5
        0x110207f6:    2100        .!      MOVS     r1,#0
        0x110207f8:    4790        .G      BLX      r2
        0x110207fa:    9801        ..      LDR      r0,[sp,#4]
        0x110207fc:    4b10        .K      LDR      r3,[pc,#64] ; [0x11020840] = 0x40008034
        0x110207fe:    6839        9h      LDR      r1,[r7,#0]
        0x11020800:    6800        .h      LDR      r0,[r0,#0]
        0x11020802:    2800        .(      CMP      r0,#0
        0x11020804:    d00f        ..      BEQ      0x11020826 ; hal_GPIO_IRQHandler + 142
        0x11020806:    6858        Xh      LDR      r0,[r3,#4]
        0x11020808:    4330        0C      ORRS     r0,r0,r6
        0x1102080a:    6058        X`      STR      r0,[r3,#4]
        0x1102080c:    6818        .h      LDR      r0,[r3,#0]
        0x1102080e:    43b0        .C      BICS     r0,r0,r6
        0x11020810:    6018        .`      STR      r0,[r3,#0]
        0x11020812:    6898        .h      LDR      r0,[r3,#8]
        0x11020814:    4602        .F      MOV      r2,r0
        0x11020816:    4332        2C      ORRS     r2,r2,r6
        0x11020818:    2900        .)      CMP      r1,#0
        0x1102081a:    d0c9        ..      BEQ      0x110207b0 ; hal_GPIO_IRQHandler + 24
        0x1102081c:    2c00        .,      CMP      r4,#0
        0x1102081e:    d0c7        ..      BEQ      0x110207b0 ; hal_GPIO_IRQHandler + 24
        0x11020820:    43f1        .C      MVNS     r1,r6
        0x11020822:    4008        .@      ANDS     r0,r0,r1
        0x11020824:    e7c5        ..      B        0x110207b2 ; hal_GPIO_IRQHandler + 26
        0x11020826:    2900        .)      CMP      r1,#0
        0x11020828:    d0c8        ..      BEQ      0x110207bc ; hal_GPIO_IRQHandler + 36
        0x1102082a:    6858        Xh      LDR      r0,[r3,#4]
        0x1102082c:    4330        0C      ORRS     r0,r0,r6
        0x1102082e:    6058        X`      STR      r0,[r3,#4]
        0x11020830:    6818        .h      LDR      r0,[r3,#0]
        0x11020832:    43b0        .C      BICS     r0,r0,r6
        0x11020834:    6018        .`      STR      r0,[r3,#0]
        0x11020836:    6898        .h      LDR      r0,[r3,#8]
        0x11020838:    43b0        .C      BICS     r0,r0,r6
        0x1102083a:    e7ba        ..      B        0x110207b2 ; hal_GPIO_IRQHandler + 26
        0x1102083c:    b003        ..      ADD      sp,sp,#0xc
        0x1102083e:    bdf0        ..      POP      {r4-r7,pc}
    $d.29
    __arm_cp.14_0
        0x11020840:    40008034    4..@    DCD    1073774644
    $t.8
    hal_gpio_fmux
        0x11020844:    2201        ."      MOVS     r2,#1
        0x11020846:    4082        .@      LSLS     r2,r2,r0
        0x11020848:    4812        .H      LDR      r0,[pc,#72] ; [0x11020894] = 0x4000380c
        0x1102084a:    2900        .)      CMP      r1,#0
        0x1102084c:    d003        ..      BEQ      0x11020856 ; hal_gpio_fmux + 18
        0x1102084e:    6801        .h      LDR      r1,[r0,#0]
        0x11020850:    4311        .C      ORRS     r1,r1,r2
        0x11020852:    6001        .`      STR      r1,[r0,#0]
        0x11020854:    4770        pG      BX       lr
        0x11020856:    6801        .h      LDR      r1,[r0,#0]
        0x11020858:    4391        .C      BICS     r1,r1,r2
        0x1102085a:    6001        .`      STR      r1,[r0,#0]
        0x1102085c:    4770        pG      BX       lr
        0x1102085e:    46c0        .F      MOV      r8,r8
    hal_gpio_fmux_set
        0x11020860:    b570        p.      PUSH     {r4-r6,lr}
        0x11020862:    28ff        .(      CMP      r0,#0xff
        0x11020864:    d015        ..      BEQ      0x11020892 ; hal_gpio_fmux_set + 50
        0x11020866:    0782        ..      LSLS     r2,r0,#30
        0x11020868:    0ed2        ..      LSRS     r2,r2,#27
        0x1102086a:    1d53        S.      ADDS     r3,r2,#5
        0x1102086c:    1a9b        ..      SUBS     r3,r3,r2
        0x1102086e:    2402        .$      MOVS     r4,#2
        0x11020870:    409c        .@      LSLS     r4,r4,r3
        0x11020872:    1e63        c.      SUBS     r3,r4,#1
        0x11020874:    4093        .@      LSLS     r3,r3,r2
        0x11020876:    24fc        .$      MOVS     r4,#0xfc
        0x11020878:    4004        .@      ANDS     r4,r4,r0
        0x1102087a:    4d06        .M      LDR      r5,[pc,#24] ; [0x11020894] = 0x4000380c
        0x1102087c:    1964        d.      ADDS     r4,r4,r5
        0x1102087e:    68e6        .h      LDR      r6,[r4,#0xc]
        0x11020880:    439e        .C      BICS     r6,r6,r3
        0x11020882:    4091        .@      LSLS     r1,r1,r2
        0x11020884:    4331        1C      ORRS     r1,r1,r6
        0x11020886:    60e1        .`      STR      r1,[r4,#0xc]
        0x11020888:    2101        .!      MOVS     r1,#1
        0x1102088a:    4081        .@      LSLS     r1,r1,r0
        0x1102088c:    6828        (h      LDR      r0,[r5,#0]
        0x1102088e:    4308        .C      ORRS     r0,r0,r1
        0x11020890:    6028        (`      STR      r0,[r5,#0]
        0x11020892:    bd70        p.      POP      {r4-r6,pc}
    $d.11
    __arm_cp.5_0
        0x11020894:    4000380c    .8.@    DCD    1073756172
    $t.36
    hal_gpio_init
        0x11020898:    b5b0        ..      PUSH     {r4,r5,r7,lr}
        0x1102089a:    4dd5        .M      LDR      r5,[pc,#852] ; [0x11020bf0] = 0x1fff702c
        0x1102089c:    7828        (x      LDRB     r0,[r5,#0]
        0x1102089e:    2800        .(      CMP      r0,#0
        0x110208a0:    d001        ..      BEQ      0x110208a6 ; hal_gpio_init + 14
        0x110208a2:    2007        .       MOVS     r0,#7
        0x110208a4:    bdb0        ..      POP      {r4,r5,r7,pc}
        0x110208a6:    204b        K       MOVS     r0,#0x4b
        0x110208a8:    0081        ..      LSLS     r1,r0,#2
        0x110208aa:    4628        (F      MOV      r0,r5
        0x110208ac:    f000fce6    ....    BL       $Ven$TT$L$$__aeabi_memclr4 ; 0x1102127c
        0x110208b0:    480c        .H      LDR      r0,[pc,#48] ; [0x110208e4] = 0x40008030
        0x110208b2:    2400        .$      MOVS     r4,#0
        0x110208b4:    6004        .`      STR      r4,[r0,#0]
        0x110208b6:    6044        D`      STR      r4,[r0,#4]
        0x110208b8:    486a        jH      LDR      r0,[pc,#424] ; [0x11020a64] = 0x4000f0a0
        0x110208ba:    6004        .`      STR      r4,[r0,#0]
        0x110208bc:    6044        D`      STR      r4,[r0,#4]
        0x110208be:    2001        .       MOVS     r0,#1
        0x110208c0:    7028        (p      STRB     r0,[r5,#0]
        0x110208c2:    49c9        .I      LDR      r1,[pc,#804] ; [0x11020be8] = 0xe000e410
        0x110208c4:    680a        .h      LDR      r2,[r1,#0]
        0x110208c6:    2380        .#      MOVS     r3,#0x80
        0x110208c8:    4313        .C      ORRS     r3,r3,r2
        0x110208ca:    227f        ."      MOVS     r2,#0x7f
        0x110208cc:    4393        .C      BICS     r3,r3,r2
        0x110208ce:    600b        .`      STR      r3,[r1,#0]
        0x110208d0:    0400        ..      LSLS     r0,r0,#16
        0x110208d2:    49c6        .I      LDR      r1,[pc,#792] ; [0x11020bec] = 0xe000e100
        0x110208d4:    6008        .`      STR      r0,[r1,#0]
        0x110208d6:    200d        .       MOVS     r0,#0xd
        0x110208d8:    4903        .I      LDR      r1,[pc,#12] ; [0x110208e8] = 0x11020941
        0x110208da:    4a04        .J      LDR      r2,[pc,#16] ; [0x110208ec] = 0x11020a71
        0x110208dc:    f000fcd4    ....    BL       $Ven$TT$L$$hal_pwrmgr_register ; 0x11021288
        0x110208e0:    4620         F      MOV      r0,r4
        0x110208e2:    bdb0        ..      POP      {r4,r5,r7,pc}
    $d.37
    __arm_cp.18_1
        0x110208e4:    40008030    0..@    DCD    1073774640
    __arm_cp.18_5
        0x110208e8:    11020941    A...    DCD    285346113
    __arm_cp.18_6
        0x110208ec:    11020a71    q...    DCD    285346417
    $t.24
    hal_gpio_pull_set
        0x110208f0:    b570        p.      PUSH     {r4-r6,lr}
        0x110208f2:    2503        .%      MOVS     r5,#3
        0x110208f4:    4345        EC      MULS     r5,r0,r5
        0x110208f6:    4e59        YN      LDR      r6,[pc,#356] ; [0x11020a5c] = 0x11023235
        0x110208f8:    1972        r.      ADDS     r2,r6,r5
        0x110208fa:    7893        .x      LDRB     r3,[r2,#2]
        0x110208fc:    7854        Tx      LDRB     r4,[r2,#1]
        0x110208fe:    4ac0        .J      LDR      r2,[pc,#768] ; [0x11020c00] = 0x4000f008
        0x11020900:    2812        .(      CMP      r0,#0x12
        0x11020902:    d803        ..      BHI      0x1102090c ; hal_gpio_pull_set + 28
        0x11020904:    5d70        p]      LDRB     r0,[r6,r5]
        0x11020906:    0080        ..      LSLS     r0,r0,#2
        0x11020908:    1812        ..      ADDS     r2,r2,r0
        0x1102090a:    e000        ..      B        0x1102090e ; hal_gpio_pull_set + 30
        0x1102090c:    320c        .2      ADDS     r2,r2,#0xc
        0x1102090e:    4099        .@      LSLS     r1,r1,r3
        0x11020910:    1ae0        ..      SUBS     r0,r4,r3
        0x11020912:    1c40        @.      ADDS     r0,r0,#1
        0x11020914:    2400        .$      MOVS     r4,#0
        0x11020916:    43e4        .C      MVNS     r4,r4
        0x11020918:    4084        .@      LSLS     r4,r4,r0
        0x1102091a:    43e0        .C      MVNS     r0,r4
        0x1102091c:    4098        .@      LSLS     r0,r0,r3
        0x1102091e:    6813        .h      LDR      r3,[r2,#0]
        0x11020920:    4383        .C      BICS     r3,r3,r0
        0x11020922:    430b        .C      ORRS     r3,r3,r1
        0x11020924:    6013        .`      STR      r3,[r2,#0]
        0x11020926:    bd70        p.      POP      {r4-r6,pc}
    hal_gpio_read
        0x11020928:    2101        .!      MOVS     r1,#1
        0x1102092a:    4081        .@      LSLS     r1,r1,r0
        0x1102092c:    48b3        .H      LDR      r0,[pc,#716] ; [0x11020bfc] = 0x40008000
        0x1102092e:    6842        Bh      LDR      r2,[r0,#4]
        0x11020930:    420a        .B      TST      r2,r1
        0x11020932:    d100        ..      BNE      0x11020936 ; hal_gpio_read + 14
        0x11020934:    3050        P0      ADDS     r0,r0,#0x50
        0x11020936:    6800        .h      LDR      r0,[r0,#0]
        0x11020938:    4008        .@      ANDS     r0,r0,r1
        0x1102093a:    1e41        A.      SUBS     r1,r0,#1
        0x1102093c:    4188        .A      SBCS     r0,r0,r1
        0x1102093e:    4770        pG      BX       lr
    hal_gpio_sleep_handler
        0x11020940:    b5f0        ..      PUSH     {r4-r7,lr}
        0x11020942:    b082        ..      SUB      sp,sp,#8
        0x11020944:    2000        .       MOVS     r0,#0
        0x11020946:    4945        EI      LDR      r1,[pc,#276] ; [0x11020a5c] = 0x11023235
        0x11020948:    4aaa        .J      LDR      r2,[pc,#680] ; [0x11020bf4] = 0x11023284
        0x1102094a:    2319        .#      MOVS     r3,#0x19
        0x1102094c:    4fab        .O      LDR      r7,[pc,#684] ; [0x11020bfc] = 0x40008000
        0x1102094e:    e00c        ..      B        0x1102096a ; hal_gpio_sleep_handler + 42
        0x11020950:    463c        <F      MOV      r4,r7
        0x11020952:    6824        $h      LDR      r4,[r4,#0]
        0x11020954:    4034        4@      ANDS     r4,r4,r6
        0x11020956:    1e65        e.      SUBS     r5,r4,#1
        0x11020958:    41ac        .A      SBCS     r4,r4,r5
        0x1102095a:    4de2        .M      LDR      r5,[pc,#904] ; [0x11020ce4] = 0x1fff702c
        0x1102095c:    54ec        .T      STRB     r4,[r5,r3]
        0x1102095e:    330c        .3      ADDS     r3,r3,#0xc
        0x11020960:    1c92        ..      ADDS     r2,r2,#2
        0x11020962:    1cc9        ..      ADDS     r1,r1,#3
        0x11020964:    1c40        @.      ADDS     r0,r0,#1
        0x11020966:    2817        .(      CMP      r0,#0x17
        0x11020968:    d076        v.      BEQ      0x11020a58 ; hal_gpio_sleep_handler + 280
        0x1102096a:    4cde        .L      LDR      r4,[pc,#888] ; [0x11020ce4] = 0x1fff702c
        0x1102096c:    1825        %.      ADDS     r5,r4,r0
        0x1102096e:    786c        lx      LDRB     r4,[r5,#1]
        0x11020970:    2c01        .,      CMP      r4,#1
        0x11020972:    d117        ..      BNE      0x110209a4 ; hal_gpio_sleep_handler + 100
        0x11020974:    b2c4        ..      UXTB     r4,r0
        0x11020976:    3c14        .<      SUBS     r4,r4,#0x14
        0x11020978:    2c02        .,      CMP      r4,#2
        0x1102097a:    d805        ..      BHI      0x11020988 ; hal_gpio_sleep_handler + 72
        0x1102097c:    7856        Vx      LDRB     r6,[r2,#1]
        0x1102097e:    2401        .$      MOVS     r4,#1
        0x11020980:    40b4        .@      LSLS     r4,r4,r6
        0x11020982:    4f37        7O      LDR      r7,[pc,#220] ; [0x11020a60] = 0x4000f014
        0x11020984:    683e        >h      LDR      r6,[r7,#0]
        0x11020986:    e009        ..      B        0x1102099c ; hal_gpio_sleep_handler + 92
        0x11020988:    7854        Tx      LDRB     r4,[r2,#1]
        0x1102098a:    2601        .&      MOVS     r6,#1
        0x1102098c:    40a6        .@      LSLS     r6,r6,r4
        0x1102098e:    2400        .$      MOVS     r4,#0
        0x11020990:    5714        .W      LDRSB    r4,[r2,r4]
        0x11020992:    00a4        ..      LSLS     r4,r4,#2
        0x11020994:    4f32        2O      LDR      r7,[pc,#200] ; [0x11020a60] = 0x4000f014
        0x11020996:    193f        ?.      ADDS     r7,r7,r4
        0x11020998:    3f0c        .?      SUBS     r7,r7,#0xc
        0x1102099a:    683c        <h      LDR      r4,[r7,#0]
        0x1102099c:    4326        &C      ORRS     r6,r6,r4
        0x1102099e:    603e        >`      STR      r6,[r7,#0]
        0x110209a0:    786c        lx      LDRB     r4,[r5,#1]
        0x110209a2:    4f96        .O      LDR      r7,[pc,#600] ; [0x11020bfc] = 0x40008000
        0x110209a4:    2c02        .,      CMP      r4,#2
        0x110209a6:    d1da        ..      BNE      0x1102095e ; hal_gpio_sleep_handler + 30
        0x110209a8:    2601        .&      MOVS     r6,#1
        0x110209aa:    9601        ..      STR      r6,[sp,#4]
        0x110209ac:    4086        .@      LSLS     r6,r6,r0
        0x110209ae:    687c        |h      LDR      r4,[r7,#4]
        0x110209b0:    4234        4B      TST      r4,r6
        0x110209b2:    d001        ..      BEQ      0x110209b8 ; hal_gpio_sleep_handler + 120
        0x110209b4:    463c        <F      MOV      r4,r7
        0x110209b6:    e001        ..      B        0x110209bc ; hal_gpio_sleep_handler + 124
        0x110209b8:    463c        <F      MOV      r4,r7
        0x110209ba:    3450        P4      ADDS     r4,r4,#0x50
        0x110209bc:    6824        $h      LDR      r4,[r4,#0]
        0x110209be:    6bbd        .k      LDR      r5,[r7,#0x38]
        0x110209c0:    4335        5C      ORRS     r5,r5,r6
        0x110209c2:    63bd        .c      STR      r5,[r7,#0x38]
        0x110209c4:    4034        4@      ANDS     r4,r4,r6
        0x110209c6:    788d        .x      LDRB     r5,[r1,#2]
        0x110209c8:    1e6d        m.      SUBS     r5,r5,#1
        0x110209ca:    b2ef        ..      UXTB     r7,r5
        0x110209cc:    9d01        ..      LDR      r5,[sp,#4]
        0x110209ce:    40bd        .@      LSLS     r5,r5,r7
        0x110209d0:    2812        .(      CMP      r0,#0x12
        0x110209d2:    d80a        ..      BHI      0x110209ea ; hal_gpio_sleep_handler + 170
        0x110209d4:    780f        .x      LDRB     r7,[r1,#0]
        0x110209d6:    2c00        .,      CMP      r4,#0
        0x110209d8:    9300        ..      STR      r3,[sp,#0]
        0x110209da:    d00c        ..      BEQ      0x110209f6 ; hal_gpio_sleep_handler + 182
        0x110209dc:    00bc        ..      LSLS     r4,r7,#2
        0x110209de:    4f20         O      LDR      r7,[pc,#128] ; [0x11020a60] = 0x4000f014
        0x110209e0:    193c        <.      ADDS     r4,r7,r4
        0x110209e2:    3c0c        .<      SUBS     r4,r4,#0xc
        0x110209e4:    6827        'h      LDR      r7,[r4,#0]
        0x110209e6:    432f        /C      ORRS     r7,r7,r5
        0x110209e8:    e00b        ..      B        0x11020a02 ; hal_gpio_sleep_handler + 194
        0x110209ea:    4f1d        .O      LDR      r7,[pc,#116] ; [0x11020a60] = 0x4000f014
        0x110209ec:    2c00        .,      CMP      r4,#0
        0x110209ee:    d00d        ..      BEQ      0x11020a0c ; hal_gpio_sleep_handler + 204
        0x110209f0:    683c        <h      LDR      r4,[r7,#0]
        0x110209f2:    432c        ,C      ORRS     r4,r4,r5
        0x110209f4:    e00c        ..      B        0x11020a10 ; hal_gpio_sleep_handler + 208
        0x110209f6:    00bc        ..      LSLS     r4,r7,#2
        0x110209f8:    4f19        .O      LDR      r7,[pc,#100] ; [0x11020a60] = 0x4000f014
        0x110209fa:    193c        <.      ADDS     r4,r7,r4
        0x110209fc:    3c0c        .<      SUBS     r4,r4,#0xc
        0x110209fe:    6827        'h      LDR      r7,[r4,#0]
        0x11020a00:    43af        .C      BICS     r7,r7,r5
        0x11020a02:    6027        '`      STR      r7,[r4,#0]
        0x11020a04:    4f7d        }O      LDR      r7,[pc,#500] ; [0x11020bfc] = 0x40008000
        0x11020a06:    4c19        .L      LDR      r4,[pc,#100] ; [0x11020a6c] = 0x1102321e
        0x11020a08:    5c24        $\      LDRB     r4,[r4,r0]
        0x11020a0a:    e009        ..      B        0x11020a20 ; hal_gpio_sleep_handler + 224
        0x11020a0c:    683c        <h      LDR      r4,[r7,#0]
        0x11020a0e:    43ac        .C      BICS     r4,r4,r5
        0x11020a10:    463d        =F      MOV      r5,r7
        0x11020a12:    4f7a        zO      LDR      r7,[pc,#488] ; [0x11020bfc] = 0x40008000
        0x11020a14:    602c        ,`      STR      r4,[r5,#0]
        0x11020a16:    4c15        .L      LDR      r4,[pc,#84] ; [0x11020a6c] = 0x1102321e
        0x11020a18:    5c24        $\      LDRB     r4,[r4,r0]
        0x11020a1a:    2813        .(      CMP      r0,#0x13
        0x11020a1c:    d80b        ..      BHI      0x11020a36 ; hal_gpio_sleep_handler + 246
        0x11020a1e:    9300        ..      STR      r3,[sp,#0]
        0x11020a20:    9b01        ..      LDR      r3,[sp,#4]
        0x11020a22:    40a3        .@      LSLS     r3,r3,r4
        0x11020a24:    4d0f        .M      LDR      r5,[pc,#60] ; [0x11020a64] = 0x4000f0a0
        0x11020a26:    682c        ,h      LDR      r4,[r5,#0]
        0x11020a28:    431c        .C      ORRS     r4,r4,r3
        0x11020a2a:    602c        ,`      STR      r4,[r5,#0]
        0x11020a2c:    9b00        ..      LDR      r3,[sp,#0]
        0x11020a2e:    687c        |h      LDR      r4,[r7,#4]
        0x11020a30:    4234        4B      TST      r4,r6
        0x11020a32:    d18d        ..      BNE      0x11020950 ; hal_gpio_sleep_handler + 16
        0x11020a34:    e00d        ..      B        0x11020a52 ; hal_gpio_sleep_handler + 274
        0x11020a36:    3c20         <      SUBS     r4,r4,#0x20
        0x11020a38:    461d        .F      MOV      r5,r3
        0x11020a3a:    9b01        ..      LDR      r3,[sp,#4]
        0x11020a3c:    40a3        .@      LSLS     r3,r3,r4
        0x11020a3e:    4c09        .L      LDR      r4,[pc,#36] ; [0x11020a64] = 0x4000f0a0
        0x11020a40:    6864        dh      LDR      r4,[r4,#4]
        0x11020a42:    431c        .C      ORRS     r4,r4,r3
        0x11020a44:    462b        +F      MOV      r3,r5
        0x11020a46:    4d07        .M      LDR      r5,[pc,#28] ; [0x11020a64] = 0x4000f0a0
        0x11020a48:    606c        l`      STR      r4,[r5,#4]
        0x11020a4a:    687c        |h      LDR      r4,[r7,#4]
        0x11020a4c:    4234        4B      TST      r4,r6
        0x11020a4e:    d000        ..      BEQ      0x11020a52 ; hal_gpio_sleep_handler + 274
        0x11020a50:    e77e        ~.      B        0x11020950 ; hal_gpio_sleep_handler + 16
        0x11020a52:    463c        <F      MOV      r4,r7
        0x11020a54:    3450        P4      ADDS     r4,r4,#0x50
        0x11020a56:    e77c        |.      B        0x11020952 ; hal_gpio_sleep_handler + 18
        0x11020a58:    b002        ..      ADD      sp,sp,#8
        0x11020a5a:    bdf0        ..      POP      {r4-r7,pc}
    $d.39
    __arm_cp.19_0
        0x11020a5c:    11023235    52..    DCD    285356597
    __arm_cp.19_3
        0x11020a60:    4000f014    ...@    DCD    1073803284
    __arm_cp.19_4
        0x11020a64:    4000f0a0    ...@    DCD    1073803424
    __arm_cp.19_5
        0x11020a68:    1fff702c    ,p..    DCD    536834092
    __arm_cp.19_6
        0x11020a6c:    1102321e    .2..    DCD    285356574
    $t.40
    hal_gpio_wakeup_handler
        0x11020a70:    b5f0        ..      PUSH     {r4-r7,lr}
        0x11020a72:    b085        ..      SUB      sp,sp,#0x14
        0x11020a74:    485c        \H      LDR      r0,[pc,#368] ; [0x11020be8] = 0xe000e410
        0x11020a76:    6801        .h      LDR      r1,[r0,#0]
        0x11020a78:    2280        ."      MOVS     r2,#0x80
        0x11020a7a:    430a        .C      ORRS     r2,r2,r1
        0x11020a7c:    217f        .!      MOVS     r1,#0x7f
        0x11020a7e:    438a        .C      BICS     r2,r2,r1
        0x11020a80:    6002        .`      STR      r2,[r0,#0]
        0x11020a82:    2501        .%      MOVS     r5,#1
        0x11020a84:    0428        (.      LSLS     r0,r5,#16
        0x11020a86:    4959        YI      LDR      r1,[pc,#356] ; [0x11020bec] = 0xe000e100
        0x11020a88:    6008        .`      STR      r0,[r1,#0]
        0x11020a8a:    4fda        .O      LDR      r7,[pc,#872] ; [0x11020df4] = 0x1fff702c
        0x11020a8c:    3720         7      ADDS     r7,r7,#0x20
        0x11020a8e:    2006        .       MOVS     r0,#6
        0x11020a90:    43c6        .C      MVNS     r6,r0
        0x11020a92:    4c58        XL      LDR      r4,[pc,#352] ; [0x11020bf4] = 0x11023284
        0x11020a94:    4b59        YK      LDR      r3,[pc,#356] ; [0x11020bfc] = 0x40008000
        0x11020a96:    9501        ..      STR      r5,[sp,#4]
        0x11020a98:    e009        ..      B        0x11020aae ; hal_gpio_wakeup_handler + 62
        0x11020a9a:    2101        .!      MOVS     r1,#1
        0x11020a9c:    9802        ..      LDR      r0,[sp,#8]
        0x11020a9e:    4790        .G      BLX      r2
        0x11020aa0:    4b56        VK      LDR      r3,[pc,#344] ; [0x11020bfc] = 0x40008000
        0x11020aa2:    1c76        v.      ADDS     r6,r6,#1
        0x11020aa4:    370c        .7      ADDS     r7,r7,#0xc
        0x11020aa6:    1ca4        ..      ADDS     r4,r4,#2
        0x11020aa8:    2e10        ..      CMP      r6,#0x10
        0x11020aaa:    d100        ..      BNE      0x11020aae ; hal_gpio_wakeup_handler + 62
        0x11020aac:    e09a        ..      B        0x11020be4 ; hal_gpio_wakeup_handler + 372
        0x11020aae:    1df0        ..      ADDS     r0,r6,#7
        0x11020ab0:    9004        ..      STR      r0,[sp,#0x10]
        0x11020ab2:    4954        TI      LDR      r1,[pc,#336] ; [0x11020c04] = 0x7ffffffe
        0x11020ab4:    4008        .@      ANDS     r0,r0,r1
        0x11020ab6:    2802        .(      CMP      r0,#2
        0x11020ab8:    d106        ..      BNE      0x11020ac8 ; hal_gpio_wakeup_handler + 88
        0x11020aba:    1d70        p.      ADDS     r0,r6,#5
        0x11020abc:    4629        )F      MOV      r1,r5
        0x11020abe:    4081        .@      LSLS     r1,r1,r0
        0x11020ac0:    4a4d        MJ      LDR      r2,[pc,#308] ; [0x11020bf8] = 0x40003814
        0x11020ac2:    6810        .h      LDR      r0,[r2,#0]
        0x11020ac4:    4308        .C      ORRS     r0,r0,r1
        0x11020ac6:    6010        .`      STR      r0,[r2,#0]
        0x11020ac8:    48ca        .H      LDR      r0,[pc,#808] ; [0x11020df4] = 0x1fff702c
        0x11020aca:    1980        ..      ADDS     r0,r0,r6
        0x11020acc:    7a00        .z      LDRB     r0,[r0,#8]
        0x11020ace:    2801        .(      CMP      r0,#1
        0x11020ad0:    9403        ..      STR      r4,[sp,#0xc]
        0x11020ad2:    d156        V.      BNE      0x11020b82 ; hal_gpio_wakeup_handler + 274
        0x11020ad4:    4628        (F      MOV      r0,r5
        0x11020ad6:    9904        ..      LDR      r1,[sp,#0x10]
        0x11020ad8:    4088        .@      LSLS     r0,r0,r1
        0x11020ada:    6859        Yh      LDR      r1,[r3,#4]
        0x11020adc:    4201        .B      TST      r1,r0
        0x11020ade:    d007        ..      BEQ      0x11020af0 ; hal_gpio_wakeup_handler + 128
        0x11020ae0:    4619        .F      MOV      r1,r3
        0x11020ae2:    4c45        EL      LDR      r4,[pc,#276] ; [0x11020bf8] = 0x40003814
        0x11020ae4:    6809        .h      LDR      r1,[r1,#0]
        0x11020ae6:    4201        .B      TST      r1,r0
        0x11020ae8:    d008        ..      BEQ      0x11020afc ; hal_gpio_wakeup_handler + 140
        0x11020aea:    6819        .h      LDR      r1,[r3,#0]
        0x11020aec:    4301        .C      ORRS     r1,r1,r0
        0x11020aee:    e007        ..      B        0x11020b00 ; hal_gpio_wakeup_handler + 144
        0x11020af0:    4619        .F      MOV      r1,r3
        0x11020af2:    3150        P1      ADDS     r1,r1,#0x50
        0x11020af4:    4c40        @L      LDR      r4,[pc,#256] ; [0x11020bf8] = 0x40003814
        0x11020af6:    6809        .h      LDR      r1,[r1,#0]
        0x11020af8:    4201        .B      TST      r1,r0
        0x11020afa:    d1f6        ..      BNE      0x11020aea ; hal_gpio_wakeup_handler + 122
        0x11020afc:    6819        .h      LDR      r1,[r3,#0]
        0x11020afe:    4381        .C      BICS     r1,r1,r0
        0x11020b00:    6019        .`      STR      r1,[r3,#0]
        0x11020b02:    43c2        .C      MVNS     r2,r0
        0x11020b04:    9904        ..      LDR      r1,[sp,#0x10]
        0x11020b06:    b2c9        ..      UXTB     r1,r1
        0x11020b08:    4623        #F      MOV      r3,r4
        0x11020b0a:    3b08        .;      SUBS     r3,r3,#8
        0x11020b0c:    4625        %F      MOV      r5,r4
        0x11020b0e:    681c        .h      LDR      r4,[r3,#0]
        0x11020b10:    4014        .@      ANDS     r4,r4,r2
        0x11020b12:    601c        .`      STR      r4,[r3,#0]
        0x11020b14:    22fe        ."      MOVS     r2,#0xfe
        0x11020b16:    400a        .@      ANDS     r2,r2,r1
        0x11020b18:    2a02        .*      CMP      r2,#2
        0x11020b1a:    d108        ..      BNE      0x11020b2e ; hal_gpio_wakeup_handler + 190
        0x11020b1c:    1d71        q.      ADDS     r1,r6,#5
        0x11020b1e:    462b        +F      MOV      r3,r5
        0x11020b20:    9d01        ..      LDR      r5,[sp,#4]
        0x11020b22:    462a        *F      MOV      r2,r5
        0x11020b24:    408a        .@      LSLS     r2,r2,r1
        0x11020b26:    6819        .h      LDR      r1,[r3,#0]
        0x11020b28:    4311        .C      ORRS     r1,r1,r2
        0x11020b2a:    6019        .`      STR      r1,[r3,#0]
        0x11020b2c:    e019        ..      B        0x11020b62 ; hal_gpio_wakeup_handler + 242
        0x11020b2e:    2209        ."      MOVS     r2,#9
        0x11020b30:    43d2        .C      MVNS     r2,r2
        0x11020b32:    460b        .F      MOV      r3,r1
        0x11020b34:    3b11        .;      SUBS     r3,r3,#0x11
        0x11020b36:    4293        .B      CMP      r3,r2
        0x11020b38:    d20b        ..      BCS      0x11020b52 ; hal_gpio_wakeup_handler + 226
        0x11020b3a:    4b30        0K      LDR      r3,[pc,#192] ; [0x11020bfc] = 0x40008000
        0x11020b3c:    685a        Zh      LDR      r2,[r3,#4]
        0x11020b3e:    4302        .C      ORRS     r2,r2,r0
        0x11020b40:    605a        Z`      STR      r2,[r3,#4]
        0x11020b42:    3914        .9      SUBS     r1,r1,#0x14
        0x11020b44:    2903        .)      CMP      r1,#3
        0x11020b46:    9d01        ..      LDR      r5,[sp,#4]
        0x11020b48:    9c03        ..      LDR      r4,[sp,#0xc]
        0x11020b4a:    d20f        ..      BCS      0x11020b6c ; hal_gpio_wakeup_handler + 252
        0x11020b4c:    482c        ,H      LDR      r0,[pc,#176] ; [0x11020c00] = 0x4000f008
        0x11020b4e:    300c        .0      ADDS     r0,r0,#0xc
        0x11020b50:    e011        ..      B        0x11020b76 ; hal_gpio_wakeup_handler + 262
        0x11020b52:    9d01        ..      LDR      r5,[sp,#4]
        0x11020b54:    4629        )F      MOV      r1,r5
        0x11020b56:    40b1        .@      LSLS     r1,r1,r6
        0x11020b58:    4a27        'J      LDR      r2,[pc,#156] ; [0x11020bf8] = 0x40003814
        0x11020b5a:    3a14        .:      SUBS     r2,r2,#0x14
        0x11020b5c:    6813        .h      LDR      r3,[r2,#0]
        0x11020b5e:    438b        .C      BICS     r3,r3,r1
        0x11020b60:    6013        .`      STR      r3,[r2,#0]
        0x11020b62:    4b26        &K      LDR      r3,[pc,#152] ; [0x11020bfc] = 0x40008000
        0x11020b64:    9c03        ..      LDR      r4,[sp,#0xc]
        0x11020b66:    6859        Yh      LDR      r1,[r3,#4]
        0x11020b68:    4301        .C      ORRS     r1,r1,r0
        0x11020b6a:    6059        Y`      STR      r1,[r3,#4]
        0x11020b6c:    2000        .       MOVS     r0,#0
        0x11020b6e:    5620         V      LDRSB    r0,[r4,r0]
        0x11020b70:    0080        ..      LSLS     r0,r0,#2
        0x11020b72:    4923        #I      LDR      r1,[pc,#140] ; [0x11020c00] = 0x4000f008
        0x11020b74:    1808        ..      ADDS     r0,r1,r0
        0x11020b76:    7861        ax      LDRB     r1,[r4,#1]
        0x11020b78:    462a        *F      MOV      r2,r5
        0x11020b7a:    408a        .@      LSLS     r2,r2,r1
        0x11020b7c:    6801        .h      LDR      r1,[r0,#0]
        0x11020b7e:    4391        .C      BICS     r1,r1,r2
        0x11020b80:    6001        .`      STR      r1,[r0,#0]
        0x11020b82:    4638        8F      MOV      r0,r7
        0x11020b84:    3808        .8      SUBS     r0,r0,#8
        0x11020b86:    7800        .x      LDRB     r0,[r0,#0]
        0x11020b88:    2800        .(      CMP      r0,#0
        0x11020b8a:    d08a        ..      BEQ      0x11020aa2 ; hal_gpio_wakeup_handler + 50
        0x11020b8c:    9c04        ..      LDR      r4,[sp,#0x10]
        0x11020b8e:    b2e0        ..      UXTB     r0,r4
        0x11020b90:    9002        ..      STR      r0,[sp,#8]
        0x11020b92:    f000f839    ..9.    BL       hal_gpioin_enable ; 0x11020c08
        0x11020b96:    4b19        .K      LDR      r3,[pc,#100] ; [0x11020bfc] = 0x40008000
        0x11020b98:    462a        *F      MOV      r2,r5
        0x11020b9a:    4629        )F      MOV      r1,r5
        0x11020b9c:    40a1        .@      LSLS     r1,r1,r4
        0x11020b9e:    6858        Xh      LDR      r0,[r3,#4]
        0x11020ba0:    4208        .B      TST      r0,r1
        0x11020ba2:    d001        ..      BEQ      0x11020ba8 ; hal_gpio_wakeup_handler + 312
        0x11020ba4:    4618        .F      MOV      r0,r3
        0x11020ba6:    e001        ..      B        0x11020bac ; hal_gpio_wakeup_handler + 316
        0x11020ba8:    4618        .F      MOV      r0,r3
        0x11020baa:    3050        P0      ADDS     r0,r0,#0x50
        0x11020bac:    4615        .F      MOV      r5,r2
        0x11020bae:    9c03        ..      LDR      r4,[sp,#0xc]
        0x11020bb0:    6800        .h      LDR      r0,[r0,#0]
        0x11020bb2:    4008        .@      ANDS     r0,r0,r1
        0x11020bb4:    1e41        A.      SUBS     r1,r0,#1
        0x11020bb6:    4602        .F      MOV      r2,r0
        0x11020bb8:    418a        .A      SBCS     r2,r2,r1
        0x11020bba:    1ff9        ..      SUBS     r1,r7,#7
        0x11020bbc:    7809        .x      LDRB     r1,[r1,#0]
        0x11020bbe:    4291        .B      CMP      r1,r2
        0x11020bc0:    d100        ..      BNE      0x11020bc4 ; hal_gpio_wakeup_handler + 340
        0x11020bc2:    e76e        n.      B        0x11020aa2 ; hal_gpio_wakeup_handler + 50
        0x11020bc4:    2800        .(      CMP      r0,#0
        0x11020bc6:    d004        ..      BEQ      0x11020bd2 ; hal_gpio_wakeup_handler + 354
        0x11020bc8:    1f39        9.      SUBS     r1,r7,#4
        0x11020bca:    680a        .h      LDR      r2,[r1,#0]
        0x11020bcc:    2a00        .*      CMP      r2,#0
        0x11020bce:    d000        ..      BEQ      0x11020bd2 ; hal_gpio_wakeup_handler + 354
        0x11020bd0:    e763        c.      B        0x11020a9a ; hal_gpio_wakeup_handler + 42
        0x11020bd2:    2800        .(      CMP      r0,#0
        0x11020bd4:    d000        ..      BEQ      0x11020bd8 ; hal_gpio_wakeup_handler + 360
        0x11020bd6:    e764        d.      B        0x11020aa2 ; hal_gpio_wakeup_handler + 50
        0x11020bd8:    683a        :h      LDR      r2,[r7,#0]
        0x11020bda:    2a00        .*      CMP      r2,#0
        0x11020bdc:    d100        ..      BNE      0x11020be0 ; hal_gpio_wakeup_handler + 368
        0x11020bde:    e760        `.      B        0x11020aa2 ; hal_gpio_wakeup_handler + 50
        0x11020be0:    2100        .!      MOVS     r1,#0
        0x11020be2:    e75b        [.      B        0x11020a9c ; hal_gpio_wakeup_handler + 44
        0x11020be4:    b005        ..      ADD      sp,sp,#0x14
        0x11020be6:    bdf0        ..      POP      {r4-r7,pc}
    $d.41
    __arm_cp.20_0
        0x11020be8:    e000e410    ....    DCD    3758154768
    __arm_cp.20_1
        0x11020bec:    e000e100    ....    DCD    3758153984
    __arm_cp.20_2
        0x11020bf0:    1fff702c    ,p..    DCD    536834092
    __arm_cp.20_3
        0x11020bf4:    11023284    .2..    DCD    285356676
    __arm_cp.20_4
        0x11020bf8:    40003814    .8.@    DCD    1073756180
    __arm_cp.20_5
        0x11020bfc:    40008000    ...@    DCD    1073774592
    __arm_cp.20_6
        0x11020c00:    4000f008    ...@    DCD    1073803272
    __arm_cp.20_7
        0x11020c04:    7ffffffe    ....    DCD    2147483646
    $t.30
    hal_gpioin_enable
        0x11020c08:    b5f0        ..      PUSH     {r4-r7,lr}
        0x11020c0a:    b083        ..      SUB      sp,sp,#0xc
        0x11020c0c:    4606        .F      MOV      r6,r0
        0x11020c0e:    210c        .!      MOVS     r1,#0xc
        0x11020c10:    4341        AC      MULS     r1,r0,r1
        0x11020c12:    4a78        xJ      LDR      r2,[pc,#480] ; [0x11020df4] = 0x1fff702c
        0x11020c14:    1850        P.      ADDS     r0,r2,r1
        0x11020c16:    69c3        .i      LDR      r3,[r0,#0x1c]
        0x11020c18:    2b00        .+      CMP      r3,#0
        0x11020c1a:    d102        ..      BNE      0x11020c22 ; hal_gpioin_enable + 26
        0x11020c1c:    6a04        .j      LDR      r4,[r0,#0x20]
        0x11020c1e:    2c00        .,      CMP      r4,#0
        0x11020c20:    d05c        \.      BEQ      0x11020cdc ; hal_gpioin_enable + 212
        0x11020c22:    9000        ..      STR      r0,[sp,#0]
        0x11020c24:    4604        .F      MOV      r4,r0
        0x11020c26:    3418        .4      ADDS     r4,r4,#0x18
        0x11020c28:    1997        ..      ADDS     r7,r2,r6
        0x11020c2a:    2002        .       MOVS     r0,#2
        0x11020c2c:    9001        ..      STR      r0,[sp,#4]
        0x11020c2e:    7078        xp      STRB     r0,[r7,#1]
        0x11020c30:    2501        .%      MOVS     r5,#1
        0x11020c32:    7025        %p      STRB     r5,[r4,#0]
        0x11020c34:    462a        *F      MOV      r2,r5
        0x11020c36:    40b2        .@      LSLS     r2,r2,r6
        0x11020c38:    496c        lI      LDR      r1,[pc,#432] ; [0x11020dec] = 0x40003800
        0x11020c3a:    68cc        .h      LDR      r4,[r1,#0xc]
        0x11020c3c:    4394        .C      BICS     r4,r4,r2
        0x11020c3e:    60cc        .`      STR      r4,[r1,#0xc]
        0x11020c40:    24fe        .$      MOVS     r4,#0xfe
        0x11020c42:    4034        4@      ANDS     r4,r4,r6
        0x11020c44:    43d0        .C      MVNS     r0,r2
        0x11020c46:    9002        ..      STR      r0,[sp,#8]
        0x11020c48:    1c7f        ..      ADDS     r7,r7,#1
        0x11020c4a:    2c02        .,      CMP      r4,#2
        0x11020c4c:    d105        ..      BNE      0x11020c5a ; hal_gpioin_enable + 82
        0x11020c4e:    1eb4        ..      SUBS     r4,r6,#2
        0x11020c50:    40a5        .@      LSLS     r5,r5,r4
        0x11020c52:    694c        Li      LDR      r4,[r1,#0x14]
        0x11020c54:    432c        ,C      ORRS     r4,r4,r5
        0x11020c56:    614c        La      STR      r4,[r1,#0x14]
        0x11020c58:    e00a        ..      B        0x11020c70 ; hal_gpioin_enable + 104
        0x11020c5a:    2409        .$      MOVS     r4,#9
        0x11020c5c:    43e4        .C      MVNS     r4,r4
        0x11020c5e:    4630        0F      MOV      r0,r6
        0x11020c60:    3811        .8      SUBS     r0,r0,#0x11
        0x11020c62:    42a0        .B      CMP      r0,r4
        0x11020c64:    d304        ..      BCC      0x11020c70 ; hal_gpioin_enable + 104
        0x11020c66:    1ff0        ..      SUBS     r0,r6,#7
        0x11020c68:    4085        .@      LSLS     r5,r5,r0
        0x11020c6a:    6808        .h      LDR      r0,[r1,#0]
        0x11020c6c:    43a8        .C      BICS     r0,r0,r5
        0x11020c6e:    6008        .`      STR      r0,[r1,#0]
        0x11020c70:    4d5f        _M      LDR      r5,[pc,#380] ; [0x11020df0] = 0x40008004
        0x11020c72:    6828        (h      LDR      r0,[r5,#0]
        0x11020c74:    9c02        ..      LDR      r4,[sp,#8]
        0x11020c76:    4020         @      ANDS     r0,r0,r4
        0x11020c78:    6028        (`      STR      r0,[r5,#0]
        0x11020c7a:    9801        ..      LDR      r0,[sp,#4]
        0x11020c7c:    7038        8p      STRB     r0,[r7,#0]
        0x11020c7e:    2b00        .+      CMP      r3,#0
        0x11020c80:    d008        ..      BEQ      0x11020c94 ; hal_gpioin_enable + 140
        0x11020c82:    9800        ..      LDR      r0,[sp,#0]
        0x11020c84:    6a00        .j      LDR      r0,[r0,#0x20]
        0x11020c86:    2800        .(      CMP      r0,#0
        0x11020c88:    d004        ..      BEQ      0x11020c94 ; hal_gpioin_enable + 140
        0x11020c8a:    6828        (h      LDR      r0,[r5,#0]
        0x11020c8c:    4210        .B      TST      r0,r2
        0x11020c8e:    d009        ..      BEQ      0x11020ca4 ; hal_gpioin_enable + 156
        0x11020c90:    1f29        ).      SUBS     r1,r5,#4
        0x11020c92:    e009        ..      B        0x11020ca8 ; hal_gpioin_enable + 160
        0x11020c94:    1e58        X.      SUBS     r0,r3,#1
        0x11020c96:    4183        .A      SBCS     r3,r3,r0
        0x11020c98:    2100        .!      MOVS     r1,#0
        0x11020c9a:    2e16        ..      CMP      r6,#0x16
        0x11020c9c:    d90b        ..      BLS      0x11020cb6 ; hal_gpioin_enable + 174
        0x11020c9e:    4608        .F      MOV      r0,r1
        0x11020ca0:    b003        ..      ADD      sp,sp,#0xc
        0x11020ca2:    bdf0        ..      POP      {r4-r7,pc}
        0x11020ca4:    4629        )F      MOV      r1,r5
        0x11020ca6:    314c        L1      ADDS     r1,r1,#0x4c
        0x11020ca8:    6808        .h      LDR      r0,[r1,#0]
        0x11020caa:    4010        .@      ANDS     r0,r0,r2
        0x11020cac:    4243        CB      RSBS     r3,r0,#0
        0x11020cae:    4143        CA      ADCS     r3,r3,r0
        0x11020cb0:    2100        .!      MOVS     r1,#0
        0x11020cb2:    2e16        ..      CMP      r6,#0x16
        0x11020cb4:    d8f3        ..      BHI      0x11020c9e ; hal_gpioin_enable + 150
        0x11020cb6:    6b68        hk      LDR      r0,[r5,#0x34]
        0x11020cb8:    4310        .C      ORRS     r0,r0,r2
        0x11020cba:    6368        hc      STR      r0,[r5,#0x34]
        0x11020cbc:    6b28        (k      LDR      r0,[r5,#0x30]
        0x11020cbe:    4020         @      ANDS     r0,r0,r4
        0x11020cc0:    6328        (c      STR      r0,[r5,#0x30]
        0x11020cc2:    6ba8        .k      LDR      r0,[r5,#0x38]
        0x11020cc4:    2b00        .+      CMP      r3,#0
        0x11020cc6:    d101        ..      BNE      0x11020ccc ; hal_gpioin_enable + 196
        0x11020cc8:    4020         @      ANDS     r0,r0,r4
        0x11020cca:    e000        ..      B        0x11020cce ; hal_gpioin_enable + 198
        0x11020ccc:    4310        .C      ORRS     r0,r0,r2
        0x11020cce:    63a8        .c      STR      r0,[r5,#0x38]
        0x11020cd0:    6ae8        .j      LDR      r0,[r5,#0x2c]
        0x11020cd2:    4310        .C      ORRS     r0,r0,r2
        0x11020cd4:    62e8        .b      STR      r0,[r5,#0x2c]
        0x11020cd6:    4608        .F      MOV      r0,r1
        0x11020cd8:    b003        ..      ADD      sp,sp,#0xc
        0x11020cda:    bdf0        ..      POP      {r4-r7,pc}
        0x11020cdc:    2112        .!      MOVS     r1,#0x12
        0x11020cde:    4608        .F      MOV      r0,r1
        0x11020ce0:    b003        ..      ADD      sp,sp,#0xc
        0x11020ce2:    bdf0        ..      POP      {r4-r7,pc}
    $d.31
    __arm_cp.15_0
        0x11020ce4:    1fff702c    ,p..    DCD    536834092
    $t.34
    hal_gpioin_register
        0x11020ce8:    b5f0        ..      PUSH     {r4-r7,lr}
        0x11020cea:    b083        ..      SUB      sp,sp,#0xc
        0x11020cec:    4604        .F      MOV      r4,r0
        0x11020cee:    4d3f        ?M      LDR      r5,[pc,#252] ; [0x11020dec] = 0x40003800
        0x11020cf0:    2816        .(      CMP      r0,#0x16
        0x11020cf2:    d838        8.      BHI      0x11020d66 ; hal_gpioin_register + 126
        0x11020cf4:    9201        ..      STR      r2,[sp,#4]
        0x11020cf6:    483f        ?H      LDR      r0,[pc,#252] ; [0x11020df4] = 0x1fff702c
        0x11020cf8:    1906        ..      ADDS     r6,r0,r4
        0x11020cfa:    2300        .#      MOVS     r3,#0
        0x11020cfc:    7073        sp      STRB     r3,[r6,#1]
        0x11020cfe:    270c        .'      MOVS     r7,#0xc
        0x11020d00:    4367        gC      MULS     r7,r4,r7
        0x11020d02:    19c0        ..      ADDS     r0,r0,r7
        0x11020d04:    7603        .v      STRB     r3,[r0,#0x18]
        0x11020d06:    2701        .'      MOVS     r7,#1
        0x11020d08:    4638        8F      MOV      r0,r7
        0x11020d0a:    40a0        .@      LSLS     r0,r0,r4
        0x11020d0c:    68eb        .h      LDR      r3,[r5,#0xc]
        0x11020d0e:    4383        .C      BICS     r3,r3,r0
        0x11020d10:    60eb        .`      STR      r3,[r5,#0xc]
        0x11020d12:    462a        *F      MOV      r2,r5
        0x11020d14:    25fe        .%      MOVS     r5,#0xfe
        0x11020d16:    4025        %@      ANDS     r5,r5,r4
        0x11020d18:    43c3        .C      MVNS     r3,r0
        0x11020d1a:    1c76        v.      ADDS     r6,r6,#1
        0x11020d1c:    9602        ..      STR      r6,[sp,#8]
        0x11020d1e:    2d02        .-      CMP      r5,#2
        0x11020d20:    d106        ..      BNE      0x11020d30 ; hal_gpioin_register + 72
        0x11020d22:    1ea5        ..      SUBS     r5,r4,#2
        0x11020d24:    40af        .@      LSLS     r7,r7,r5
        0x11020d26:    6955        Ui      LDR      r5,[r2,#0x14]
        0x11020d28:    433d        =C      ORRS     r5,r5,r7
        0x11020d2a:    4616        .F      MOV      r6,r2
        0x11020d2c:    6155        Ua      STR      r5,[r2,#0x14]
        0x11020d2e:    e00b        ..      B        0x11020d48 ; hal_gpioin_register + 96
        0x11020d30:    4625        %F      MOV      r5,r4
        0x11020d32:    3d11        .=      SUBS     r5,r5,#0x11
        0x11020d34:    b2ed        ..      UXTB     r5,r5
        0x11020d36:    086d        m.      LSRS     r5,r5,#1
        0x11020d38:    2d7b        {-      CMP      r5,#0x7b
        0x11020d3a:    d305        ..      BCC      0x11020d48 ; hal_gpioin_register + 96
        0x11020d3c:    1fe5        ..      SUBS     r5,r4,#7
        0x11020d3e:    40af        .@      LSLS     r7,r7,r5
        0x11020d40:    4616        .F      MOV      r6,r2
        0x11020d42:    6815        .h      LDR      r5,[r2,#0]
        0x11020d44:    43bd        .C      BICS     r5,r5,r7
        0x11020d46:    6015        .`      STR      r5,[r2,#0]
        0x11020d48:    4f29        )O      LDR      r7,[pc,#164] ; [0x11020df0] = 0x40008004
        0x11020d4a:    683d        =h      LDR      r5,[r7,#0]
        0x11020d4c:    401d        .@      ANDS     r5,r5,r3
        0x11020d4e:    603d        =`      STR      r5,[r7,#0]
        0x11020d50:    2502        .%      MOVS     r5,#2
        0x11020d52:    9e02        ..      LDR      r6,[sp,#8]
        0x11020d54:    7035        5p      STRB     r5,[r6,#0]
        0x11020d56:    6b3d        =k      LDR      r5,[r7,#0x30]
        0x11020d58:    4305        .C      ORRS     r5,r5,r0
        0x11020d5a:    633d        =c      STR      r5,[r7,#0x30]
        0x11020d5c:    6af8        .j      LDR      r0,[r7,#0x2c]
        0x11020d5e:    4018        .@      ANDS     r0,r0,r3
        0x11020d60:    62f8        .b      STR      r0,[r7,#0x2c]
        0x11020d62:    4615        .F      MOV      r5,r2
        0x11020d64:    9a01        ..      LDR      r2,[sp,#4]
        0x11020d66:    200c        .       MOVS     r0,#0xc
        0x11020d68:    4360        `C      MULS     r0,r4,r0
        0x11020d6a:    4f22        "O      LDR      r7,[pc,#136] ; [0x11020df4] = 0x1fff702c
        0x11020d6c:    183e        >.      ADDS     r6,r7,r0
        0x11020d6e:    61f1        .a      STR      r1,[r6,#0x1c]
        0x11020d70:    6232        2b      STR      r2,[r6,#0x20]
        0x11020d72:    4620         F      MOV      r0,r4
        0x11020d74:    f7ffff48    ..H.    BL       hal_gpioin_enable ; 0x11020c08
        0x11020d78:    491f        .I      LDR      r1,[pc,#124] ; [0x11020df8] = 0x1fff03c0
        0x11020d7a:    4a20         J      LDR      r2,[pc,#128] ; [0x11020dfc] = 0x11020799
        0x11020d7c:    600a        .`      STR      r2,[r1,#0]
        0x11020d7e:    2c16        .,      CMP      r4,#0x16
        0x11020d80:    d831        1.      BHI      0x11020de6 ; hal_gpioin_register + 254
        0x11020d82:    2800        .(      CMP      r0,#0
        0x11020d84:    d02f        /.      BEQ      0x11020de6 ; hal_gpioin_register + 254
        0x11020d86:    193b        ;.      ADDS     r3,r7,r4
        0x11020d88:    2100        .!      MOVS     r1,#0
        0x11020d8a:    7059        Yp      STRB     r1,[r3,#1]
        0x11020d8c:    7631        1v      STRB     r1,[r6,#0x18]
        0x11020d8e:    2601        .&      MOVS     r6,#1
        0x11020d90:    4631        1F      MOV      r1,r6
        0x11020d92:    40a1        .@      LSLS     r1,r1,r4
        0x11020d94:    68ea        .h      LDR      r2,[r5,#0xc]
        0x11020d96:    438a        .C      BICS     r2,r2,r1
        0x11020d98:    60ea        .`      STR      r2,[r5,#0xc]
        0x11020d9a:    27fe        .'      MOVS     r7,#0xfe
        0x11020d9c:    4027        '@      ANDS     r7,r7,r4
        0x11020d9e:    43ca        .C      MVNS     r2,r1
        0x11020da0:    1c5b        [.      ADDS     r3,r3,#1
        0x11020da2:    9302        ..      STR      r3,[sp,#8]
        0x11020da4:    2f02        ./      CMP      r7,#2
        0x11020da6:    d105        ..      BNE      0x11020db4 ; hal_gpioin_register + 204
        0x11020da8:    1ea4        ..      SUBS     r4,r4,#2
        0x11020daa:    40a6        .@      LSLS     r6,r6,r4
        0x11020dac:    696c        li      LDR      r4,[r5,#0x14]
        0x11020dae:    4334        4C      ORRS     r4,r4,r6
        0x11020db0:    616c        la      STR      r4,[r5,#0x14]
        0x11020db2:    e00b        ..      B        0x11020dcc ; hal_gpioin_register + 228
        0x11020db4:    462f        /F      MOV      r7,r5
        0x11020db6:    4625        %F      MOV      r5,r4
        0x11020db8:    3d11        .=      SUBS     r5,r5,#0x11
        0x11020dba:    b2ed        ..      UXTB     r5,r5
        0x11020dbc:    086d        m.      LSRS     r5,r5,#1
        0x11020dbe:    2d7b        {-      CMP      r5,#0x7b
        0x11020dc0:    d304        ..      BCC      0x11020dcc ; hal_gpioin_register + 228
        0x11020dc2:    1fe4        ..      SUBS     r4,r4,#7
        0x11020dc4:    40a6        .@      LSLS     r6,r6,r4
        0x11020dc6:    683c        <h      LDR      r4,[r7,#0]
        0x11020dc8:    43b4        .C      BICS     r4,r4,r6
        0x11020dca:    603c        <`      STR      r4,[r7,#0]
        0x11020dcc:    4c08        .L      LDR      r4,[pc,#32] ; [0x11020df0] = 0x40008004
        0x11020dce:    6823        #h      LDR      r3,[r4,#0]
        0x11020dd0:    4013        .@      ANDS     r3,r3,r2
        0x11020dd2:    6023        #`      STR      r3,[r4,#0]
        0x11020dd4:    2302        .#      MOVS     r3,#2
        0x11020dd6:    9d02        ..      LDR      r5,[sp,#8]
        0x11020dd8:    702b        +p      STRB     r3,[r5,#0]
        0x11020dda:    6b23        #k      LDR      r3,[r4,#0x30]
        0x11020ddc:    430b        .C      ORRS     r3,r3,r1
        0x11020dde:    6323        #c      STR      r3,[r4,#0x30]
        0x11020de0:    6ae1        .j      LDR      r1,[r4,#0x2c]
        0x11020de2:    4011        .@      ANDS     r1,r1,r2
        0x11020de4:    62e1        .b      STR      r1,[r4,#0x2c]
        0x11020de6:    b003        ..      ADD      sp,sp,#0xc
        0x11020de8:    bdf0        ..      POP      {r4-r7,pc}
        0x11020dea:    46c0        .F      MOV      r8,r8
    $d.35
    __arm_cp.17_0
        0x11020dec:    40003800    .8.@    DCD    1073756160
    __arm_cp.17_1
        0x11020df0:    40008004    ...@    DCD    1073774596
    __arm_cp.17_2
        0x11020df4:    1fff702c    ,p..    DCD    536834092
    __arm_cp.17_3
        0x11020df8:    1fff03c0    ....    DCD    536806336
    __arm_cp.17_4
        0x11020dfc:    11020799    ....    DCD    285345689
    $t.18
    hal_pwm_ch_start
        0x11020e00:    b5f0        ..      PUSH     {r4-r7,lr}
        0x11020e02:    b087        ..      SUB      sp,sp,#0x1c
        0x11020e04:    460c        .F      MOV      r4,r1
        0x11020e06:    4605        .F      MOV      r5,r0
        0x11020e08:    49ed        .I      LDR      r1,[pc,#948] ; [0x110211c0] = 0x1fff5b38
        0x11020e0a:    7888        .x      LDRB     r0,[r1,#2]
        0x11020e0c:    2800        .(      CMP      r0,#0
        0x11020e0e:    d100        ..      BNE      0x11020e12 ; hal_pwm_ch_start + 18
        0x11020e10:    e096        ..      B        0x11020f40 ; hal_pwm_ch_start + 320
        0x11020e12:    b293        ..      UXTH     r3,r2
        0x11020e14:    0c22        ".      LSRS     r2,r4,#16
        0x11020e16:    0c2f        /.      LSRS     r7,r5,#16
        0x11020e18:    b2ee        ..      UXTB     r6,r5
        0x11020e1a:    1988        ..      ADDS     r0,r1,r6
        0x11020e1c:    78c1        .x      LDRB     r1,[r0,#3]
        0x11020e1e:    2900        .)      CMP      r1,#0
        0x11020e20:    d024        $.      BEQ      0x11020e6c ; hal_pwm_ch_start + 108
        0x11020e22:    4848        HH      LDR      r0,[pc,#288] ; [0x11020f44] = 0x4000e000
        0x11020e24:    210c        .!      MOVS     r1,#0xc
        0x11020e26:    4371        qC      MULS     r1,r6,r1
        0x11020e28:    1840        @.      ADDS     r0,r0,r1
        0x11020e2a:    429a        .B      CMP      r2,r3
        0x11020e2c:    d813        ..      BHI      0x11020e56 ; hal_pwm_ch_start + 86
        0x11020e2e:    6841        Ah      LDR      r1,[r0,#4]
        0x11020e30:    4a45        EJ      LDR      r2,[pc,#276] ; [0x11020f48] = 0xffff0000
        0x11020e32:    461d        .F      MOV      r5,r3
        0x11020e34:    1e53        S.      SUBS     r3,r2,#1
        0x11020e36:    400b        .@      ANDS     r3,r3,r1
        0x11020e38:    6043        C`      STR      r3,[r0,#4]
        0x11020e3a:    4014        .@      ANDS     r4,r4,r2
        0x11020e3c:    6881        .h      LDR      r1,[r0,#8]
        0x11020e3e:    b289        ..      UXTH     r1,r1
        0x11020e40:    1909        ..      ADDS     r1,r1,r4
        0x11020e42:    6081        .`      STR      r1,[r0,#8]
        0x11020e44:    6881        .h      LDR      r1,[r0,#8]
        0x11020e46:    4011        .@      ANDS     r1,r1,r2
        0x11020e48:    1949        I.      ADDS     r1,r1,r5
        0x11020e4a:    6081        .`      STR      r1,[r0,#8]
        0x11020e4c:    6841        Ah      LDR      r1,[r0,#4]
        0x11020e4e:    2201        ."      MOVS     r2,#1
        0x11020e50:    0412        ..      LSLS     r2,r2,#16
        0x11020e52:    430a        .C      ORRS     r2,r2,r1
        0x11020e54:    6042        B`      STR      r2,[r0,#4]
        0x11020e56:    1d00        ..      ADDS     r0,r0,#4
        0x11020e58:    2107        .!      MOVS     r1,#7
        0x11020e5a:    0309        ..      LSLS     r1,r1,#12
        0x11020e5c:    6802        .h      LDR      r2,[r0,#0]
        0x11020e5e:    438a        .C      BICS     r2,r2,r1
        0x11020e60:    0639        9.      LSLS     r1,r7,#24
        0x11020e62:    0b09        ..      LSRS     r1,r1,#12
        0x11020e64:    4311        .C      ORRS     r1,r1,r2
        0x11020e66:    6001        .`      STR      r1,[r0,#0]
        0x11020e68:    b007        ..      ADD      sp,sp,#0x1c
        0x11020e6a:    bdf0        ..      POP      {r4-r7,pc}
        0x11020e6c:    0a29        ).      LSRS     r1,r5,#8
        0x11020e6e:    9104        ..      STR      r1,[sp,#0x10]
        0x11020e70:    1cc0        ..      ADDS     r0,r0,#3
        0x11020e72:    9003        ..      STR      r0,[sp,#0xc]
        0x11020e74:    2012        .       MOVS     r0,#0x12
        0x11020e76:    9001        ..      STR      r0,[sp,#4]
        0x11020e78:    9305        ..      STR      r3,[sp,#0x14]
        0x11020e7a:    9202        ..      STR      r2,[sp,#8]
        0x11020e7c:    f000fa0a    ....    BL       $Ven$TT$L$$hal_clk_gate_enable ; 0x11021294
        0x11020e80:    200c        .       MOVS     r0,#0xc
        0x11020e82:    9606        ..      STR      r6,[sp,#0x18]
        0x11020e84:    4370        pC      MULS     r0,r6,r0
        0x11020e86:    492f        /I      LDR      r1,[pc,#188] ; [0x11020f44] = 0x4000e000
        0x11020e88:    1846        F.      ADDS     r6,r0,r1
        0x11020e8a:    6870        ph      LDR      r0,[r6,#4]
        0x11020e8c:    2201        ."      MOVS     r2,#1
        0x11020e8e:    4390        .C      BICS     r0,r0,r2
        0x11020e90:    6070        p`      STR      r0,[r6,#4]
        0x11020e92:    6870        ph      LDR      r0,[r6,#4]
        0x11020e94:    2107        .!      MOVS     r1,#7
        0x11020e96:    0309        ..      LSLS     r1,r1,#12
        0x11020e98:    4388        .C      BICS     r0,r0,r1
        0x11020e9a:    0639        9.      LSLS     r1,r7,#24
        0x11020e9c:    0b09        ..      LSRS     r1,r1,#12
        0x11020e9e:    4301        .C      ORRS     r1,r1,r0
        0x11020ea0:    6071        q`      STR      r1,[r6,#4]
        0x11020ea2:    20ff        .       MOVS     r0,#0xff
        0x11020ea4:    4387        .C      BICS     r7,r7,r0
        0x11020ea6:    6870        ph      LDR      r0,[r6,#4]
        0x11020ea8:    0211        ..      LSLS     r1,r2,#8
        0x11020eaa:    4388        .C      BICS     r0,r0,r1
        0x11020eac:    4338        8C      ORRS     r0,r0,r7
        0x11020eae:    6070        p`      STR      r0,[r6,#4]
        0x11020eb0:    6870        ph      LDR      r0,[r6,#4]
        0x11020eb2:    2110        .!      MOVS     r1,#0x10
        0x11020eb4:    9100        ..      STR      r1,[sp,#0]
        0x11020eb6:    4388        .C      BICS     r0,r0,r1
        0x11020eb8:    0621        !.      LSLS     r1,r4,#24
        0x11020eba:    0d09        ..      LSRS     r1,r1,#20
        0x11020ebc:    4301        .C      ORRS     r1,r1,r0
        0x11020ebe:    6071        q`      STR      r1,[r6,#4]
        0x11020ec0:    6870        ph      LDR      r0,[r6,#4]
        0x11020ec2:    4617        .F      MOV      r7,r2
        0x11020ec4:    07d1        ..      LSLS     r1,r2,#31
        0x11020ec6:    4301        .C      ORRS     r1,r1,r0
        0x11020ec8:    6071        q`      STR      r1,[r6,#4]
        0x11020eca:    2100        .!      MOVS     r1,#0
        0x11020ecc:    9801        ..      LDR      r0,[sp,#4]
        0x11020ece:    460a        .F      MOV      r2,r1
        0x11020ed0:    f000f9da    ....    BL       $Ven$TT$L$$hal_pwrmgr_register ; 0x11021288
        0x11020ed4:    9b05        ..      LDR      r3,[sp,#0x14]
        0x11020ed6:    1d36        6.      ADDS     r6,r6,#4
        0x11020ed8:    9802        ..      LDR      r0,[sp,#8]
        0x11020eda:    4298        .B      CMP      r0,r3
        0x11020edc:    d811        ..      BHI      0x11020f02 ; hal_pwm_ch_start + 258
        0x11020ede:    481a        .H      LDR      r0,[pc,#104] ; [0x11020f48] = 0xffff0000
        0x11020ee0:    1e41        A.      SUBS     r1,r0,#1
        0x11020ee2:    6832        2h      LDR      r2,[r6,#0]
        0x11020ee4:    400a        .@      ANDS     r2,r2,r1
        0x11020ee6:    6032        2`      STR      r2,[r6,#0]
        0x11020ee8:    4004        .@      ANDS     r4,r4,r0
        0x11020eea:    6871        qh      LDR      r1,[r6,#4]
        0x11020eec:    b289        ..      UXTH     r1,r1
        0x11020eee:    1909        ..      ADDS     r1,r1,r4
        0x11020ef0:    6071        q`      STR      r1,[r6,#4]
        0x11020ef2:    6871        qh      LDR      r1,[r6,#4]
        0x11020ef4:    4001        .@      ANDS     r1,r1,r0
        0x11020ef6:    18c8        ..      ADDS     r0,r1,r3
        0x11020ef8:    6070        p`      STR      r0,[r6,#4]
        0x11020efa:    0438        8.      LSLS     r0,r7,#16
        0x11020efc:    6831        1h      LDR      r1,[r6,#0]
        0x11020efe:    4301        .C      ORRS     r1,r1,r0
        0x11020f00:    6031        1`      STR      r1,[r6,#0]
        0x11020f02:    9c04        ..      LDR      r4,[sp,#0x10]
        0x11020f04:    b2e0        ..      UXTB     r0,r4
        0x11020f06:    350a        .5      ADDS     r5,r5,#0xa
        0x11020f08:    b2e9        ..      UXTB     r1,r5
        0x11020f0a:    f7fffca9    ....    BL       hal_gpio_fmux_set ; 0x11020860
        0x11020f0e:    6830        0h      LDR      r0,[r6,#0]
        0x11020f10:    463a        :F      MOV      r2,r7
        0x11020f12:    4338        8C      ORRS     r0,r0,r7
        0x11020f14:    6030        0`      STR      r0,[r6,#0]
        0x11020f16:    482c        ,H      LDR      r0,[pc,#176] ; [0x11020fc8] = 0x1fff59c4
        0x11020f18:    9906        ..      LDR      r1,[sp,#0x18]
        0x11020f1a:    5444        DT      STRB     r4,[r0,r1]
        0x11020f1c:    9803        ..      LDR      r0,[sp,#0xc]
        0x11020f1e:    7007        .p      STRB     r7,[r0,#0]
        0x11020f20:    4ca7        .L      LDR      r4,[pc,#668] ; [0x110211c0] = 0x1fff5b38
        0x11020f22:    7820         x      LDRB     r0,[r4,#0]
        0x11020f24:    2800        .(      CMP      r0,#0
        0x11020f26:    d10b        ..      BNE      0x11020f40 ; hal_pwm_ch_start + 320
        0x11020f28:    2012        .       MOVS     r0,#0x12
        0x11020f2a:    f000f9b9    ....    BL       $Ven$TT$L$$hal_pwrmgr_lock ; 0x110212a0
        0x11020f2e:    4905        .I      LDR      r1,[pc,#20] ; [0x11020f44] = 0x4000e000
        0x11020f30:    6808        .h      LDR      r0,[r1,#0]
        0x11020f32:    4338        8C      ORRS     r0,r0,r7
        0x11020f34:    6008        .`      STR      r0,[r1,#0]
        0x11020f36:    6808        .h      LDR      r0,[r1,#0]
        0x11020f38:    9a00        ..      LDR      r2,[sp,#0]
        0x11020f3a:    4310        .C      ORRS     r0,r0,r2
        0x11020f3c:    6008        .`      STR      r0,[r1,#0]
        0x11020f3e:    7027        'p      STRB     r7,[r4,#0]
        0x11020f40:    b007        ..      ADD      sp,sp,#0x1c
        0x11020f42:    bdf0        ..      POP      {r4-r7,pc}
    $d.19
    __arm_cp.9_1
        0x11020f44:    4000e000    ...@    DCD    1073799168
    __arm_cp.9_2
        0x11020f48:    ffff0000    ....    DCD    4294901760
    $t.20
    hal_pwm_ch_stop
        0x11020f4c:    b5f0        ..      PUSH     {r4-r7,lr}
        0x11020f4e:    b081        ..      SUB      sp,sp,#4
        0x11020f50:    b2c4        ..      UXTB     r4,r0
        0x11020f52:    489b        .H      LDR      r0,[pc,#620] ; [0x110211c0] = 0x1fff5b38
        0x11020f54:    1900        ..      ADDS     r0,r0,r4
        0x11020f56:    78c1        .x      LDRB     r1,[r0,#3]
        0x11020f58:    2900        .)      CMP      r1,#0
        0x11020f5a:    d032        2.      BEQ      0x11020fc2 ; hal_pwm_ch_stop + 118
        0x11020f5c:    1cc0        ..      ADDS     r0,r0,#3
        0x11020f5e:    210c        .!      MOVS     r1,#0xc
        0x11020f60:    4361        aC      MULS     r1,r4,r1
        0x11020f62:    4a98        .J      LDR      r2,[pc,#608] ; [0x110211c4] = 0x4000e004
        0x11020f64:    588b        .X      LDR      r3,[r1,r2]
        0x11020f66:    2501        .%      MOVS     r5,#1
        0x11020f68:    43ab        .C      BICS     r3,r3,r5
        0x11020f6a:    508b        .P      STR      r3,[r1,r2]
        0x11020f6c:    588e        .X      LDR      r6,[r1,r2]
        0x11020f6e:    4b96        .K      LDR      r3,[pc,#600] ; [0x110211c8] = 0xfffeffff
        0x11020f70:    401e        .@      ANDS     r6,r6,r3
        0x11020f72:    508e        .P      STR      r6,[r1,r2]
        0x11020f74:    588e        .X      LDR      r6,[r1,r2]
        0x11020f76:    07ef        ..      LSLS     r7,r5,#31
        0x11020f78:    43be        .C      BICS     r6,r6,r7
        0x11020f7a:    508e        .P      STR      r6,[r1,r2]
        0x11020f7c:    588e        .X      LDR      r6,[r1,r2]
        0x11020f7e:    2707        .'      MOVS     r7,#7
        0x11020f80:    033f        ?.      LSLS     r7,r7,#12
        0x11020f82:    43be        .C      BICS     r6,r6,r7
        0x11020f84:    508e        .P      STR      r6,[r1,r2]
        0x11020f86:    588e        .X      LDR      r6,[r1,r2]
        0x11020f88:    022f        /.      LSLS     r7,r5,#8
        0x11020f8a:    43be        .C      BICS     r6,r6,r7
        0x11020f8c:    508e        .P      STR      r6,[r1,r2]
        0x11020f8e:    588e        .X      LDR      r6,[r1,r2]
        0x11020f90:    2710        .'      MOVS     r7,#0x10
        0x11020f92:    43be        .C      BICS     r6,r6,r7
        0x11020f94:    508e        .P      STR      r6,[r1,r2]
        0x11020f96:    188e        ..      ADDS     r6,r1,r2
        0x11020f98:    6871        qh      LDR      r1,[r6,#4]
        0x11020f9a:    1c5a        Z.      ADDS     r2,r3,#1
        0x11020f9c:    400a        .@      ANDS     r2,r2,r1
        0x11020f9e:    6072        r`      STR      r2,[r6,#4]
        0x11020fa0:    6871        qh      LDR      r1,[r6,#4]
        0x11020fa2:    b289        ..      UXTH     r1,r1
        0x11020fa4:    6071        q`      STR      r1,[r6,#4]
        0x11020fa6:    2100        .!      MOVS     r1,#0
        0x11020fa8:    7001        .p      STRB     r1,[r0,#0]
        0x11020faa:    4f07        .O      LDR      r7,[pc,#28] ; [0x11020fc8] = 0x1fff59c4
        0x11020fac:    5d38        8]      LDRB     r0,[r7,r4]
        0x11020fae:    28ff        .(      CMP      r0,#0xff
        0x11020fb0:    d004        ..      BEQ      0x11020fbc ; hal_pwm_ch_stop + 112
        0x11020fb2:    2100        .!      MOVS     r1,#0
        0x11020fb4:    f7fffc46    ..F.    BL       hal_gpio_fmux ; 0x11020844
        0x11020fb8:    20ff        .       MOVS     r0,#0xff
        0x11020fba:    5538        8U      STRB     r0,[r7,r4]
        0x11020fbc:    6830        0h      LDR      r0,[r6,#0]
        0x11020fbe:    43a8        .C      BICS     r0,r0,r5
        0x11020fc0:    6030        0`      STR      r0,[r6,#0]
        0x11020fc2:    b001        ..      ADD      sp,sp,#4
        0x11020fc4:    bdf0        ..      POP      {r4-r7,pc}
        0x11020fc6:    46c0        .F      MOV      r8,r8
    $d.21
    __arm_cp.10_3
        0x11020fc8:    1fff59c4    .Y..    DCD    536828356
    $t.14
    hal_pwm_module_init
        0x11020fcc:    b5f0        ..      PUSH     {r4-r7,lr}
        0x11020fce:    b083        ..      SUB      sp,sp,#0xc
        0x11020fd0:    4d7b        {M      LDR      r5,[pc,#492] ; [0x110211c0] = 0x1fff5b38
        0x11020fd2:    78a8        .x      LDRB     r0,[r5,#2]
        0x11020fd4:    2800        .(      CMP      r0,#0
        0x11020fd6:    d001        ..      BEQ      0x11020fdc ; hal_pwm_module_init + 16
        0x11020fd8:    b003        ..      ADD      sp,sp,#0xc
        0x11020fda:    bdf0        ..      POP      {r4-r7,pc}
        0x11020fdc:    2001        .       MOVS     r0,#1
        0x11020fde:    9002        ..      STR      r0,[sp,#8]
        0x11020fe0:    43c4        .C      MVNS     r4,r0
        0x11020fe2:    4f78        xO      LDR      r7,[pc,#480] ; [0x110211c4] = 0x4000e004
        0x11020fe4:    6838        8h      LDR      r0,[r7,#0]
        0x11020fe6:    4020         @      ANDS     r0,r0,r4
        0x11020fe8:    6038        8`      STR      r0,[r7,#0]
        0x11020fea:    6838        8h      LDR      r0,[r7,#0]
        0x11020fec:    4e76        vN      LDR      r6,[pc,#472] ; [0x110211c8] = 0xfffeffff
        0x11020fee:    4030        0@      ANDS     r0,r0,r6
        0x11020ff0:    6038        8`      STR      r0,[r7,#0]
        0x11020ff2:    6838        8h      LDR      r0,[r7,#0]
        0x11020ff4:    4975        uI      LDR      r1,[pc,#468] ; [0x110211cc] = 0x7fffffff
        0x11020ff6:    4008        .@      ANDS     r0,r0,r1
        0x11020ff8:    6038        8`      STR      r0,[r7,#0]
        0x11020ffa:    6838        8h      LDR      r0,[r7,#0]
        0x11020ffc:    4974        tI      LDR      r1,[pc,#464] ; [0x110211d0] = 0xffff8fff
        0x11020ffe:    4008        .@      ANDS     r0,r0,r1
        0x11021000:    6038        8`      STR      r0,[r7,#0]
        0x11021002:    6838        8h      LDR      r0,[r7,#0]
        0x11021004:    4973        sI      LDR      r1,[pc,#460] ; [0x110211d4] = 0xfffffeff
        0x11021006:    4008        .@      ANDS     r0,r0,r1
        0x11021008:    6038        8`      STR      r0,[r7,#0]
        0x1102100a:    2010        .       MOVS     r0,#0x10
        0x1102100c:    9001        ..      STR      r0,[sp,#4]
        0x1102100e:    43c1        .C      MVNS     r1,r0
        0x11021010:    6838        8h      LDR      r0,[r7,#0]
        0x11021012:    4008        .@      ANDS     r0,r0,r1
        0x11021014:    6038        8`      STR      r0,[r7,#0]
        0x11021016:    1c70        p.      ADDS     r0,r6,#1
        0x11021018:    687b        {h      LDR      r3,[r7,#4]
        0x1102101a:    4003        .@      ANDS     r3,r3,r0
        0x1102101c:    607b        {`      STR      r3,[r7,#4]
        0x1102101e:    687b        {h      LDR      r3,[r7,#4]
        0x11021020:    b29b        ..      UXTH     r3,r3
        0x11021022:    607b        {`      STR      r3,[r7,#4]
        0x11021024:    68fb        .h      LDR      r3,[r7,#0xc]
        0x11021026:    4023        #@      ANDS     r3,r3,r4
        0x11021028:    60fb        .`      STR      r3,[r7,#0xc]
        0x1102102a:    68fb        .h      LDR      r3,[r7,#0xc]
        0x1102102c:    4033        3@      ANDS     r3,r3,r6
        0x1102102e:    60fb        .`      STR      r3,[r7,#0xc]
        0x11021030:    68fb        .h      LDR      r3,[r7,#0xc]
        0x11021032:    4a66        fJ      LDR      r2,[pc,#408] ; [0x110211cc] = 0x7fffffff
        0x11021034:    4013        .@      ANDS     r3,r3,r2
        0x11021036:    60fb        .`      STR      r3,[r7,#0xc]
        0x11021038:    68fb        .h      LDR      r3,[r7,#0xc]
        0x1102103a:    4a65        eJ      LDR      r2,[pc,#404] ; [0x110211d0] = 0xffff8fff
        0x1102103c:    4013        .@      ANDS     r3,r3,r2
        0x1102103e:    60fb        .`      STR      r3,[r7,#0xc]
        0x11021040:    68fb        .h      LDR      r3,[r7,#0xc]
        0x11021042:    4a64        dJ      LDR      r2,[pc,#400] ; [0x110211d4] = 0xfffffeff
        0x11021044:    4013        .@      ANDS     r3,r3,r2
        0x11021046:    60fb        .`      STR      r3,[r7,#0xc]
        0x11021048:    68fb        .h      LDR      r3,[r7,#0xc]
        0x1102104a:    400b        .@      ANDS     r3,r3,r1
        0x1102104c:    60fb        .`      STR      r3,[r7,#0xc]
        0x1102104e:    693b        ;i      LDR      r3,[r7,#0x10]
        0x11021050:    4003        .@      ANDS     r3,r3,r0
        0x11021052:    613b        ;a      STR      r3,[r7,#0x10]
        0x11021054:    693b        ;i      LDR      r3,[r7,#0x10]
        0x11021056:    b29b        ..      UXTH     r3,r3
        0x11021058:    613b        ;a      STR      r3,[r7,#0x10]
        0x1102105a:    69bb        .i      LDR      r3,[r7,#0x18]
        0x1102105c:    4023        #@      ANDS     r3,r3,r4
        0x1102105e:    61bb        .a      STR      r3,[r7,#0x18]
        0x11021060:    69bb        .i      LDR      r3,[r7,#0x18]
        0x11021062:    4033        3@      ANDS     r3,r3,r6
        0x11021064:    61bb        .a      STR      r3,[r7,#0x18]
        0x11021066:    69bb        .i      LDR      r3,[r7,#0x18]
        0x11021068:    4e58        XN      LDR      r6,[pc,#352] ; [0x110211cc] = 0x7fffffff
        0x1102106a:    4033        3@      ANDS     r3,r3,r6
        0x1102106c:    61bb        .a      STR      r3,[r7,#0x18]
        0x1102106e:    69bb        .i      LDR      r3,[r7,#0x18]
        0x11021070:    4e57        WN      LDR      r6,[pc,#348] ; [0x110211d0] = 0xffff8fff
        0x11021072:    4033        3@      ANDS     r3,r3,r6
        0x11021074:    61bb        .a      STR      r3,[r7,#0x18]
        0x11021076:    69bb        .i      LDR      r3,[r7,#0x18]
        0x11021078:    4013        .@      ANDS     r3,r3,r2
        0x1102107a:    61bb        .a      STR      r3,[r7,#0x18]
        0x1102107c:    69bb        .i      LDR      r3,[r7,#0x18]
        0x1102107e:    400b        .@      ANDS     r3,r3,r1
        0x11021080:    61bb        .a      STR      r3,[r7,#0x18]
        0x11021082:    69fb        .i      LDR      r3,[r7,#0x1c]
        0x11021084:    4003        .@      ANDS     r3,r3,r0
        0x11021086:    61fb        .a      STR      r3,[r7,#0x1c]
        0x11021088:    69fb        .i      LDR      r3,[r7,#0x1c]
        0x1102108a:    b29b        ..      UXTH     r3,r3
        0x1102108c:    61fb        .a      STR      r3,[r7,#0x1c]
        0x1102108e:    6a7b        {j      LDR      r3,[r7,#0x24]
        0x11021090:    4023        #@      ANDS     r3,r3,r4
        0x11021092:    627b        {b      STR      r3,[r7,#0x24]
        0x11021094:    6a7b        {j      LDR      r3,[r7,#0x24]
        0x11021096:    4e4c        LN      LDR      r6,[pc,#304] ; [0x110211c8] = 0xfffeffff
        0x11021098:    4033        3@      ANDS     r3,r3,r6
        0x1102109a:    627b        {b      STR      r3,[r7,#0x24]
        0x1102109c:    6a7b        {j      LDR      r3,[r7,#0x24]
        0x1102109e:    4e4b        KN      LDR      r6,[pc,#300] ; [0x110211cc] = 0x7fffffff
        0x110210a0:    4033        3@      ANDS     r3,r3,r6
        0x110210a2:    627b        {b      STR      r3,[r7,#0x24]
        0x110210a4:    6a7b        {j      LDR      r3,[r7,#0x24]
        0x110210a6:    4e4a        JN      LDR      r6,[pc,#296] ; [0x110211d0] = 0xffff8fff
        0x110210a8:    4033        3@      ANDS     r3,r3,r6
        0x110210aa:    627b        {b      STR      r3,[r7,#0x24]
        0x110210ac:    6a7b        {j      LDR      r3,[r7,#0x24]
        0x110210ae:    4013        .@      ANDS     r3,r3,r2
        0x110210b0:    627b        {b      STR      r3,[r7,#0x24]
        0x110210b2:    6a7b        {j      LDR      r3,[r7,#0x24]
        0x110210b4:    400b        .@      ANDS     r3,r3,r1
        0x110210b6:    627b        {b      STR      r3,[r7,#0x24]
        0x110210b8:    6abb        .j      LDR      r3,[r7,#0x28]
        0x110210ba:    4003        .@      ANDS     r3,r3,r0
        0x110210bc:    62bb        .b      STR      r3,[r7,#0x28]
        0x110210be:    6abb        .j      LDR      r3,[r7,#0x28]
        0x110210c0:    b29b        ..      UXTH     r3,r3
        0x110210c2:    62bb        .b      STR      r3,[r7,#0x28]
        0x110210c4:    6b3b        ;k      LDR      r3,[r7,#0x30]
        0x110210c6:    4023        #@      ANDS     r3,r3,r4
        0x110210c8:    633b        ;c      STR      r3,[r7,#0x30]
        0x110210ca:    6b3b        ;k      LDR      r3,[r7,#0x30]
        0x110210cc:    4e3e        >N      LDR      r6,[pc,#248] ; [0x110211c8] = 0xfffeffff
        0x110210ce:    4033        3@      ANDS     r3,r3,r6
        0x110210d0:    633b        ;c      STR      r3,[r7,#0x30]
        0x110210d2:    6b3b        ;k      LDR      r3,[r7,#0x30]
        0x110210d4:    4e3d        =N      LDR      r6,[pc,#244] ; [0x110211cc] = 0x7fffffff
        0x110210d6:    4033        3@      ANDS     r3,r3,r6
        0x110210d8:    633b        ;c      STR      r3,[r7,#0x30]
        0x110210da:    6b3b        ;k      LDR      r3,[r7,#0x30]
        0x110210dc:    4e3c        <N      LDR      r6,[pc,#240] ; [0x110211d0] = 0xffff8fff
        0x110210de:    4033        3@      ANDS     r3,r3,r6
        0x110210e0:    633b        ;c      STR      r3,[r7,#0x30]
        0x110210e2:    6b3b        ;k      LDR      r3,[r7,#0x30]
        0x110210e4:    4013        .@      ANDS     r3,r3,r2
        0x110210e6:    633b        ;c      STR      r3,[r7,#0x30]
        0x110210e8:    6b3b        ;k      LDR      r3,[r7,#0x30]
        0x110210ea:    400b        .@      ANDS     r3,r3,r1
        0x110210ec:    633b        ;c      STR      r3,[r7,#0x30]
        0x110210ee:    6b7b        {k      LDR      r3,[r7,#0x34]
        0x110210f0:    4003        .@      ANDS     r3,r3,r0
        0x110210f2:    637b        {c      STR      r3,[r7,#0x34]
        0x110210f4:    6b7b        {k      LDR      r3,[r7,#0x34]
        0x110210f6:    b29b        ..      UXTH     r3,r3
        0x110210f8:    637b        {c      STR      r3,[r7,#0x34]
        0x110210fa:    6bfb        .k      LDR      r3,[r7,#0x3c]
        0x110210fc:    4023        #@      ANDS     r3,r3,r4
        0x110210fe:    63fb        .c      STR      r3,[r7,#0x3c]
        0x11021100:    6bfb        .k      LDR      r3,[r7,#0x3c]
        0x11021102:    4a31        1J      LDR      r2,[pc,#196] ; [0x110211c8] = 0xfffeffff
        0x11021104:    4013        .@      ANDS     r3,r3,r2
        0x11021106:    63fb        .c      STR      r3,[r7,#0x3c]
        0x11021108:    6bfb        .k      LDR      r3,[r7,#0x3c]
        0x1102110a:    4a30        0J      LDR      r2,[pc,#192] ; [0x110211cc] = 0x7fffffff
        0x1102110c:    4013        .@      ANDS     r3,r3,r2
        0x1102110e:    63fb        .c      STR      r3,[r7,#0x3c]
        0x11021110:    2600        .&      MOVS     r6,#0
        0x11021112:    612e        .a      STR      r6,[r5,#0x10]
        0x11021114:    73ae        .s      STRB     r6,[r5,#0xe]
        0x11021116:    81ae        ..      STRH     r6,[r5,#0xc]
        0x11021118:    9a02        ..      LDR      r2,[sp,#8]
        0x1102111a:    806a        j.      STRH     r2,[r5,#2]
        0x1102111c:    22ff        ."      MOVS     r2,#0xff
        0x1102111e:    0212        ..      LSLS     r2,r2,#8
        0x11021120:    816a        j.      STRH     r2,[r5,#0xa]
        0x11021122:    6bfa        .k      LDR      r2,[r7,#0x3c]
        0x11021124:    4b2a        *K      LDR      r3,[pc,#168] ; [0x110211d0] = 0xffff8fff
        0x11021126:    401a        .@      ANDS     r2,r2,r3
        0x11021128:    63fa        .c      STR      r2,[r7,#0x3c]
        0x1102112a:    4a2b        +J      LDR      r2,[pc,#172] ; [0x110211d8] = 0xff01
        0x1102112c:    616a        ja      STR      r2,[r5,#0x14]
        0x1102112e:    83ae        ..      STRH     r6,[r5,#0x1c]
        0x11021130:    836e        n.      STRH     r6,[r5,#0x1a]
        0x11021132:    762e        .v      STRB     r6,[r5,#0x18]
        0x11021134:    712e        .q      STRB     r6,[r5,#4]
        0x11021136:    6bfa        .k      LDR      r2,[r7,#0x3c]
        0x11021138:    4b26        &K      LDR      r3,[pc,#152] ; [0x110211d4] = 0xfffffeff
        0x1102113a:    401a        .@      ANDS     r2,r2,r3
        0x1102113c:    63fa        .c      STR      r2,[r7,#0x3c]
        0x1102113e:    842e        ..      STRH     r6,[r5,#0x20]
        0x11021140:    4a26        &J      LDR      r2,[pc,#152] ; [0x110211dc] = 0xff02
        0x11021142:    83ea        ..      STRH     r2,[r5,#0x1e]
        0x11021144:    626e        nb      STR      r6,[r5,#0x24]
        0x11021146:    462a        *F      MOV      r2,r5
        0x11021148:    320a        .2      ADDS     r2,r2,#0xa
        0x1102114a:    7616        .v      STRB     r6,[r2,#0x18]
        0x1102114c:    716e        nq      STRB     r6,[r5,#5]
        0x1102114e:    6bfb        .k      LDR      r3,[r7,#0x3c]
        0x11021150:    400b        .@      ANDS     r3,r3,r1
        0x11021152:    63fb        .c      STR      r3,[r7,#0x3c]
        0x11021154:    4922        "I      LDR      r1,[pc,#136] ; [0x110211e0] = 0xff03
        0x11021156:    62a9        .b      STR      r1,[r5,#0x28]
        0x11021158:    862e        ..      STRH     r6,[r5,#0x30]
        0x1102115a:    85ee        ..      STRH     r6,[r5,#0x2e]
        0x1102115c:    4629        )F      MOV      r1,r5
        0x1102115e:    3128        (1      ADDS     r1,r1,#0x28
        0x11021160:    710e        .q      STRB     r6,[r1,#4]
        0x11021162:    71ae        .q      STRB     r6,[r5,#6]
        0x11021164:    6c39        9l      LDR      r1,[r7,#0x40]
        0x11021166:    4001        .@      ANDS     r1,r1,r0
        0x11021168:    6439        9d      STR      r1,[r7,#0x40]
        0x1102116a:    86ae        ..      STRH     r6,[r5,#0x34]
        0x1102116c:    481d        .H      LDR      r0,[pc,#116] ; [0x110211e4] = 0xff04
        0x1102116e:    8668        h.      STRH     r0,[r5,#0x32]
        0x11021170:    63ae        .c      STR      r6,[r5,#0x38]
        0x11021172:    4628        (F      MOV      r0,r5
        0x11021174:    3032        20      ADDS     r0,r0,#0x32
        0x11021176:    7106        .q      STRB     r6,[r0,#4]
        0x11021178:    71ee        .q      STRB     r6,[r5,#7]
        0x1102117a:    6c38        8l      LDR      r0,[r7,#0x40]
        0x1102117c:    b280        ..      UXTH     r0,r0
        0x1102117e:    6438        8d      STR      r0,[r7,#0x40]
        0x11021180:    4819        .H      LDR      r0,[pc,#100] ; [0x110211e8] = 0xff05
        0x11021182:    63e8        .c      STR      r0,[r5,#0x3c]
        0x11021184:    8756        V.      STRH     r6,[r2,#0x3a]
        0x11021186:    8716        ..      STRH     r6,[r2,#0x38]
        0x11021188:    4628        (F      MOV      r0,r5
        0x1102118a:    303c        <0      ADDS     r0,r0,#0x3c
        0x1102118c:    7106        .q      STRB     r6,[r0,#4]
        0x1102118e:    722e        .r      STRB     r6,[r5,#8]
        0x11021190:    7828        (x      LDRB     r0,[r5,#0]
        0x11021192:    2801        .(      CMP      r0,#1
        0x11021194:    d000        ..      BEQ      0x11021198 ; hal_pwm_module_init + 460
        0x11021196:    e71f        ..      B        0x11020fd8 ; hal_pwm_module_init + 12
        0x11021198:    2412        .$      MOVS     r4,#0x12
        0x1102119a:    4620         F      MOV      r0,r4
        0x1102119c:    f000f886    ....    BL       $Ven$TT$L$$hal_pwrmgr_unlock ; 0x110212ac
        0x110211a0:    1f38        8.      SUBS     r0,r7,#4
        0x110211a2:    6801        .h      LDR      r1,[r0,#0]
        0x110211a4:    9a02        ..      LDR      r2,[sp,#8]
        0x110211a6:    4391        .C      BICS     r1,r1,r2
        0x110211a8:    6001        .`      STR      r1,[r0,#0]
        0x110211aa:    6801        .h      LDR      r1,[r0,#0]
        0x110211ac:    9a01        ..      LDR      r2,[sp,#4]
        0x110211ae:    4391        .C      BICS     r1,r1,r2
        0x110211b0:    6001        .`      STR      r1,[r0,#0]
        0x110211b2:    702e        .p      STRB     r6,[r5,#0]
        0x110211b4:    4620         F      MOV      r0,r4
        0x110211b6:    f000f87f    ....    BL       $Ven$TT$L$$hal_clk_gate_disable ; 0x110212b8
        0x110211ba:    b003        ..      ADD      sp,sp,#0xc
        0x110211bc:    bdf0        ..      POP      {r4-r7,pc}
        0x110211be:    46c0        .F      MOV      r8,r8
    $d.15
    __arm_cp.7_0
        0x110211c0:    1fff5b38    8[..    DCD    536828728
    __arm_cp.7_1
        0x110211c4:    4000e004    ...@    DCD    1073799172
    __arm_cp.7_2
        0x110211c8:    fffeffff    ....    DCD    4294901759
    __arm_cp.7_3
        0x110211cc:    7fffffff    ....    DCD    2147483647
    __arm_cp.7_4
        0x110211d0:    ffff8fff    ....    DCD    4294938623
    __arm_cp.7_5
        0x110211d4:    fffffeff    ....    DCD    4294967039
    __arm_cp.7_6
        0x110211d8:    0000ff01    ....    DCD    65281
    __arm_cp.7_7
        0x110211dc:    0000ff02    ....    DCD    65282
    __arm_cp.7_8
        0x110211e0:    0000ff03    ....    DCD    65283
    __arm_cp.7_9
        0x110211e4:    0000ff04    ....    DCD    65284
    __arm_cp.7_10
        0x110211e8:    0000ff05    ....    DCD    65285
    $t
    $Ven$TT$L$$key_init
        0x110211ec:    b403        ..      PUSH     {r0,r1}
        0x110211ee:    4801        .H      LDR      r0,[pc,#4] ; [0x110211f4] = 0x1fff2ac9
        0x110211f0:    9001        ..      STR      r0,[sp,#4]
        0x110211f2:    bd01        ..      POP      {r0,pc}
    $d
        0x110211f4:    1fff2ac9    .*..    DCD    536816329
    $t
    $Ven$TT$L$$osal_memcpy
        0x110211f8:    b403        ..      PUSH     {r0,r1}
        0x110211fa:    4801        .H      LDR      r0,[pc,#4] ; [0x11021200] = 0x14ce9
        0x110211fc:    9001        ..      STR      r0,[sp,#4]
        0x110211fe:    bd01        ..      POP      {r0,pc}
    $d
        0x11021200:    00014ce9    .L..    DCD    85225
    $t
    $Ven$TT$L$$osal_set_event
        0x11021204:    b403        ..      PUSH     {r0,r1}
        0x11021206:    4801        .H      LDR      r0,[pc,#4] ; [0x1102120c] = 0x1520d
        0x11021208:    9001        ..      STR      r0,[sp,#4]
        0x1102120a:    bd01        ..      POP      {r0,pc}
    $d
        0x1102120c:    0001520d    .R..    DCD    86541
    $t
    $Ven$TT$L$$LL_PLUS_PerStats_Init
        0x11021210:    b403        ..      PUSH     {r0,r1}
        0x11021212:    4801        .H      LDR      r0,[pc,#4] ; [0x11021218] = 0x5535
        0x11021214:    9001        ..      STR      r0,[sp,#4]
        0x11021216:    bd01        ..      POP      {r0,pc}
    $d
        0x11021218:    00005535    5U..    DCD    21813
    $t
    $Ven$TT$L$$gpio_key_timer_handler
        0x1102121c:    b403        ..      PUSH     {r0,r1}
        0x1102121e:    4801        .H      LDR      r0,[pc,#4] ; [0x11021224] = 0x1fff1dc5
        0x11021220:    9001        ..      STR      r0,[sp,#4]
        0x11021222:    bd01        ..      POP      {r0,pc}
    $d
        0x11021224:    1fff1dc5    ....    DCD    536812997
    $t
    $Ven$TT$L$$__aeabi_idivmod
        0x11021228:    b403        ..      PUSH     {r0,r1}
        0x1102122a:    4801        .H      LDR      r0,[pc,#4] ; [0x11021230] = 0xe35
        0x1102122c:    9001        ..      STR      r0,[sp,#4]
        0x1102122e:    bd01        ..      POP      {r0,pc}
    $d
        0x11021230:    00000e35    5...    DCD    3637
    $t
    $Ven$TT$L$$osal_start_timerEx
        0x11021234:    b403        ..      PUSH     {r0,r1}
        0x11021236:    4801        .H      LDR      r0,[pc,#4] ; [0x1102123c] = 0x1528b
        0x11021238:    9001        ..      STR      r0,[sp,#4]
        0x1102123a:    bd01        ..      POP      {r0,pc}
    $d
        0x1102123c:    0001528b    .R..    DCD    86667
    $t
    $Ven$TT$L$$osal_msg_receive
        0x11021240:    b403        ..      PUSH     {r0,r1}
        0x11021242:    4801        .H      LDR      r0,[pc,#4] ; [0x11021248] = 0x14ef5
        0x11021244:    9001        ..      STR      r0,[sp,#4]
        0x11021246:    bd01        ..      POP      {r0,pc}
    $d
        0x11021248:    00014ef5    .N..    DCD    85749
    $t
    $Ven$TT$L$$osal_msg_deallocate
        0x1102124c:    b403        ..      PUSH     {r0,r1}
        0x1102124e:    4801        .H      LDR      r0,[pc,#4] ; [0x11021254] = 0x14d43
        0x11021250:    9001        ..      STR      r0,[sp,#4]
        0x11021252:    bd01        ..      POP      {r0,pc}
    $d
        0x11021254:    00014d43    CM..    DCD    85315
    $t
    $Ven$TT$L$$osal_memset
        0x11021258:    b403        ..      PUSH     {r0,r1}
        0x1102125a:    4801        .H      LDR      r0,[pc,#4] ; [0x11021260] = 0x14d15
        0x1102125c:    9001        ..      STR      r0,[sp,#4]
        0x1102125e:    bd01        ..      POP      {r0,pc}
    $d
        0x11021260:    00014d15    .M..    DCD    85269
    $t
    $Ven$TT$L$$osal_stop_timerEx
        0x11021264:    b403        ..      PUSH     {r0,r1}
        0x11021266:    4801        .H      LDR      r0,[pc,#4] ; [0x1102126c] = 0x152b3
        0x11021268:    9001        ..      STR      r0,[sp,#4]
        0x1102126a:    bd01        ..      POP      {r0,pc}
    $d
        0x1102126c:    000152b3    .R..    DCD    86707
    $t
    $Ven$TT$L$$strstr
        0x11021270:    b403        ..      PUSH     {r0,r1}
        0x11021272:    4801        .H      LDR      r0,[pc,#4] ; [0x11021278] = 0x1fff1869
        0x11021274:    9001        ..      STR      r0,[sp,#4]
        0x11021276:    bd01        ..      POP      {r0,pc}
    $d
        0x11021278:    1fff1869    i...    DCD    536811625
    $t
    $Ven$TT$L$$__aeabi_memclr4
        0x1102127c:    b403        ..      PUSH     {r0,r1}
        0x1102127e:    4801        .H      LDR      r0,[pc,#4] ; [0x11021284] = 0xeb3
        0x11021280:    9001        ..      STR      r0,[sp,#4]
        0x11021282:    bd01        ..      POP      {r0,pc}
    $d
        0x11021284:    00000eb3    ....    DCD    3763
    $t
    $Ven$TT$L$$hal_pwrmgr_register
        0x11021288:    b403        ..      PUSH     {r0,r1}
        0x1102128a:    4801        .H      LDR      r0,[pc,#4] ; [0x11021290] = 0x1fff24d5
        0x1102128c:    9001        ..      STR      r0,[sp,#4]
        0x1102128e:    bd01        ..      POP      {r0,pc}
    $d
        0x11021290:    1fff24d5    .$..    DCD    536814805
    $t
    $Ven$TT$L$$hal_clk_gate_enable
        0x11021294:    b403        ..      PUSH     {r0,r1}
        0x11021296:    4801        .H      LDR      r0,[pc,#4] ; [0x1102129c] = 0x1fff1f21
        0x11021298:    9001        ..      STR      r0,[sp,#4]
        0x1102129a:    bd01        ..      POP      {r0,pc}
    $d
        0x1102129c:    1fff1f21    !...    DCD    536813345
    $t
    $Ven$TT$L$$hal_pwrmgr_lock
        0x110212a0:    b403        ..      PUSH     {r0,r1}
        0x110212a2:    4801        .H      LDR      r0,[pc,#4] ; [0x110212a8] = 0x1fff2419
        0x110212a4:    9001        ..      STR      r0,[sp,#4]
        0x110212a6:    bd01        ..      POP      {r0,pc}
    $d
        0x110212a8:    1fff2419    .$..    DCD    536814617
    $t
    $Ven$TT$L$$hal_pwrmgr_unlock
        0x110212ac:    b403        ..      PUSH     {r0,r1}
        0x110212ae:    4801        .H      LDR      r0,[pc,#4] ; [0x110212b4] = 0x1fff2665
        0x110212b0:    9001        ..      STR      r0,[sp,#4]
        0x110212b2:    bd01        ..      POP      {r0,pc}
    $d
        0x110212b4:    1fff2665    e&..    DCD    536815205
    $t
    $Ven$TT$L$$hal_clk_gate_disable
        0x110212b8:    b403        ..      PUSH     {r0,r1}
        0x110212ba:    4801        .H      LDR      r0,[pc,#4] ; [0x110212c0] = 0x1fff1ee5
        0x110212bc:    9001        ..      STR      r0,[sp,#4]
        0x110212be:    bd01        ..      POP      {r0,pc}
    $d
        0x110212c0:    1fff1ee5    ....    DCD    536813285
    $t
    $Ven$TT$L$$enableSleep
        0x110212c4:    b403        ..      PUSH     {r0,r1}
        0x110212c6:    4801        .H      LDR      r0,[pc,#4] ; [0x110212cc] = 0xaead
        0x110212c8:    9001        ..      STR      r0,[sp,#4]
        0x110212ca:    bd01        ..      POP      {r0,pc}
    $d
        0x110212cc:    0000aead    ....    DCD    44717
    $t
    $Ven$TT$L$$setSleepMode
        0x110212d0:    b403        ..      PUSH     {r0,r1}
        0x110212d2:    4801        .H      LDR      r0,[pc,#4] ; [0x110212d8] = 0x16b45
        0x110212d4:    9001        ..      STR      r0,[sp,#4]
        0x110212d6:    bd01        ..      POP      {r0,pc}
    $d
        0x110212d8:    00016b45    Ek..    DCD    92997
    $t
    $Ven$TT$L$$WaitRTCCount
        0x110212dc:    b403        ..      PUSH     {r0,r1}
        0x110212de:    4801        .H      LDR      r0,[pc,#4] ; [0x110212e4] = 0x8901
        0x110212e0:    9001        ..      STR      r0,[sp,#4]
        0x110212e2:    bd01        ..      POP      {r0,pc}
    $d
        0x110212e4:    00008901    ....    DCD    35073
    $t
    $Ven$TT$L$$LL_ENC_AES128_Encrypt
        0x110212e8:    b403        ..      PUSH     {r0,r1}
        0x110212ea:    4801        .H      LDR      r0,[pc,#4] ; [0x110212f0] = 0x3fc5
        0x110212ec:    9001        ..      STR      r0,[sp,#4]
        0x110212ee:    bd01        ..      POP      {r0,pc}
    $d
        0x110212f0:    00003fc5    .?..    DCD    16325
    $t
    $Ven$TT$L$$read_current_fine_time
        0x110212f4:    b403        ..      PUSH     {r0,r1}
        0x110212f6:    4801        .H      LDR      r0,[pc,#4] ; [0x110212fc] = 0x15cc9
        0x110212f8:    9001        ..      STR      r0,[sp,#4]
        0x110212fa:    bd01        ..      POP      {r0,pc}
    $d
        0x110212fc:    00015cc9    .\..    DCD    89289
    $t
    $Ven$TT$L$$osal_mem_alloc
        0x11021300:    b403        ..      PUSH     {r0,r1}
        0x11021302:    4801        .H      LDR      r0,[pc,#4] ; [0x11021308] = 0x14b3d
        0x11021304:    9001        ..      STR      r0,[sp,#4]
        0x11021306:    bd01        ..      POP      {r0,pc}
    $d
        0x11021308:    00014b3d    =K..    DCD    84797
    $t
    $Ven$TT$L$$HCI_LE_SetScanParamCmd
        0x1102130c:    b403        ..      PUSH     {r0,r1}
        0x1102130e:    4801        .H      LDR      r0,[pc,#4] ; [0x11021314] = 0x2235
        0x11021310:    9001        ..      STR      r0,[sp,#4]
        0x11021312:    bd01        ..      POP      {r0,pc}
    $d
        0x11021314:    00002235    5"..    DCD    8757
    $t
    $Ven$TT$L$$HCI_LE_SetAdvEnableCmd
        0x11021318:    b403        ..      PUSH     {r0,r1}
        0x1102131a:    4801        .H      LDR      r0,[pc,#4] ; [0x11021320] = 0x1f69
        0x1102131c:    9001        ..      STR      r0,[sp,#4]
        0x1102131e:    bd01        ..      POP      {r0,pc}
    $d
        0x11021320:    00001f69    i...    DCD    8041
    $t
    $Ven$TT$L$$HCI_GAPTaskRegister
        0x11021324:    b403        ..      PUSH     {r0,r1}
        0x11021326:    4801        .H      LDR      r0,[pc,#4] ; [0x1102132c] = 0x175d
        0x11021328:    9001        ..      STR      r0,[sp,#4]
        0x1102132a:    bd01        ..      POP      {r0,pc}
    $d
        0x1102132c:    0000175d    ]...    DCD    5981
    $t
    $Ven$TT$L$$osal_start_reload_timer
        0x11021330:    b403        ..      PUSH     {r0,r1}
        0x11021332:    4801        .H      LDR      r0,[pc,#4] ; [0x11021338] = 0x15259
        0x11021334:    9001        ..      STR      r0,[sp,#4]
        0x11021336:    bd01        ..      POP      {r0,pc}
    $d
        0x11021338:    00015259    YR..    DCD    86617
    $t
    $Ven$TT$L$$HCI_ReadBDADDRCmd
        0x1102133c:    b403        ..      PUSH     {r0,r1}
        0x1102133e:    4801        .H      LDR      r0,[pc,#4] ; [0x11021344] = 0x2551
        0x11021340:    9001        ..      STR      r0,[sp,#4]
        0x11021342:    bd01        ..      POP      {r0,pc}
    $d
        0x11021344:    00002551    Q%..    DCD    9553
    $t
    $Ven$TT$L$$osal_mem_free
        0x11021348:    b403        ..      PUSH     {r0,r1}
        0x1102134a:    4801        .H      LDR      r0,[pc,#4] ; [0x11021350] = 0x14c01
        0x1102134c:    9001        ..      STR      r0,[sp,#4]
        0x1102134e:    bd01        ..      POP      {r0,pc}
    $d
        0x11021350:    00014c01    .L..    DCD    84993
    $t
    $Ven$TT$L$$osal_msg_send
        0x11021354:    b403        ..      PUSH     {r0,r1}
        0x11021356:    4801        .H      LDR      r0,[pc,#4] ; [0x1102135c] = 0x14f59
        0x11021358:    9001        ..      STR      r0,[sp,#4]
        0x1102135a:    bd01        ..      POP      {r0,pc}
    $d
        0x1102135c:    00014f59    YO..    DCD    85849
    $t
    $Ven$TT$L$$HCI_LE_SetAdvDataCmd
        0x11021360:    b403        ..      PUSH     {r0,r1}
        0x11021362:    4801        .H      LDR      r0,[pc,#4] ; [0x11021368] = 0x1f4d
        0x11021364:    9001        ..      STR      r0,[sp,#4]
        0x11021366:    bd01        ..      POP      {r0,pc}
    $d
        0x11021368:    00001f4d    M...    DCD    8013
    $t
    $Ven$TT$L$$HCI_LE_SetScanRspDataCmd
        0x1102136c:    b403        ..      PUSH     {r0,r1}
        0x1102136e:    4801        .H      LDR      r0,[pc,#4] ; [0x11021374] = 0x2255
        0x11021370:    9001        ..      STR      r0,[sp,#4]
        0x11021372:    bd01        ..      POP      {r0,pc}
    $d
        0x11021374:    00002255    U"..    DCD    8789
    $t
    $Ven$TT$L$$LL_TX_bm_alloc
        0x11021378:    b403        ..      PUSH     {r0,r1}
        0x1102137a:    4801        .H      LDR      r0,[pc,#4] ; [0x11021380] = 0x7f01
        0x1102137c:    9001        ..      STR      r0,[sp,#4]
        0x1102137e:    bd01        ..      POP      {r0,pc}
    $d
        0x11021380:    00007f01    ....    DCD    32513
    $t
    $Ven$TT$L$$osal_bm_free
        0x11021384:    b403        ..      PUSH     {r0,r1}
        0x11021386:    4801        .H      LDR      r0,[pc,#4] ; [0x1102138c] = 0x149d9
        0x11021388:    9001        ..      STR      r0,[sp,#4]
        0x1102138a:    bd01        ..      POP      {r0,pc}
    $d
        0x1102138c:    000149d9    .I..    DCD    84441
    $t
    $Ven$TT$L$$HCI_bm_alloc
        0x11021390:    b403        ..      PUSH     {r0,r1}
        0x11021392:    4801        .H      LDR      r0,[pc,#4] ; [0x11021398] = 0x28e9
        0x11021394:    9001        ..      STR      r0,[sp,#4]
        0x11021396:    bd01        ..      POP      {r0,pc}
    $d
        0x11021398:    000028e9    .(..    DCD    10473
    $t
    $Ven$TT$L$$osal_bm_adjust_header
        0x1102139c:    b403        ..      PUSH     {r0,r1}
        0x1102139e:    4801        .H      LDR      r0,[pc,#4] ; [0x110213a4] = 0x14955
        0x110213a0:    9001        ..      STR      r0,[sp,#4]
        0x110213a2:    bd01        ..      POP      {r0,pc}
    $d
        0x110213a4:    00014955    UI..    DCD    84309
    $t
    $Ven$TT$L$$HCI_DisconnectCmd
        0x110213a8:    b403        ..      PUSH     {r0,r1}
        0x110213aa:    4801        .H      LDR      r0,[pc,#4] ; [0x110213b0] = 0x128d
        0x110213ac:    9001        ..      STR      r0,[sp,#4]
        0x110213ae:    bd01        ..      POP      {r0,pc}
    $d
        0x110213b0:    0000128d    ....    DCD    4749
    $t
    $Ven$TT$L$$HCI_LE_CreateConnCancelCmd
        0x110213b4:    b403        ..      PUSH     {r0,r1}
        0x110213b6:    4801        .H      LDR      r0,[pc,#4] ; [0x110213bc] = 0x1a31
        0x110213b8:    9001        ..      STR      r0,[sp,#4]
        0x110213ba:    bd01        ..      POP      {r0,pc}
    $d
        0x110213bc:    00001a31    1...    DCD    6705
    $t
    $Ven$TT$L$$osal_memcmp
        0x110213c0:    b403        ..      PUSH     {r0,r1}
        0x110213c2:    4801        .H      LDR      r0,[pc,#4] ; [0x110213c8] = 0x14ccd
        0x110213c4:    9001        ..      STR      r0,[sp,#4]
        0x110213c6:    bd01        ..      POP      {r0,pc}
    $d
        0x110213c8:    00014ccd    .L..    DCD    85197
    $t
    $Ven$TT$L$$__ARM_common_switch8
        0x110213cc:    b403        ..      PUSH     {r0,r1}
        0x110213ce:    4801        .H      LDR      r0,[pc,#4] ; [0x110213d4] = 0x8961
        0x110213d0:    9001        ..      STR      r0,[sp,#4]
        0x110213d2:    bd01        ..      POP      {r0,pc}
    $d
        0x110213d4:    00008961    a...    DCD    35169
    $t
    $Ven$TT$L$$HCI_ValidConnTimeParams
        0x110213d8:    b403        ..      PUSH     {r0,r1}
        0x110213da:    4801        .H      LDR      r0,[pc,#4] ; [0x110213e0] = 0x2899
        0x110213dc:    9001        ..      STR      r0,[sp,#4]
        0x110213de:    bd01        ..      POP      {r0,pc}
    $d
        0x110213e0:    00002899    .(..    DCD    10393
    $t
    $Ven$TT$L$$HCI_LE_ConnUpdateCmd
        0x110213e4:    b403        ..      PUSH     {r0,r1}
        0x110213e6:    4801        .H      LDR      r0,[pc,#4] ; [0x110213ec] = 0x1fff398d
        0x110213e8:    9001        ..      STR      r0,[sp,#4]
        0x110213ea:    bd01        ..      POP      {r0,pc}
    $d
        0x110213ec:    1fff398d    .9..    DCD    536820109
    $t
    $Ven$TT$L$$HCI_LE_SetRandomAddressCmd
        0x110213f0:    b403        ..      PUSH     {r0,r1}
        0x110213f2:    4801        .H      LDR      r0,[pc,#4] ; [0x110213f8] = 0x21c5
        0x110213f4:    9001        ..      STR      r0,[sp,#4]
        0x110213f6:    bd01        ..      POP      {r0,pc}
    $d
        0x110213f8:    000021c5    .!..    DCD    8645
    $t
    $Ven$TT$L$$osal_msg_allocate
        0x110213fc:    b403        ..      PUSH     {r0,r1}
        0x110213fe:    4801        .H      LDR      r0,[pc,#4] ; [0x11021404] = 0x14d1d
        0x11021400:    9001        ..      STR      r0,[sp,#4]
        0x11021402:    bd01        ..      POP      {r0,pc}
    $d
        0x11021404:    00014d1d    .M..    DCD    85277
    $t
    $Ven$TT$L$$HCI_LE_ReadBufSizeCmd
        0x11021408:    b403        ..      PUSH     {r0,r1}
        0x1102140a:    4801        .H      LDR      r0,[pc,#4] ; [0x11021410] = 0x1c29
        0x1102140c:    9001        ..      STR      r0,[sp,#4]
        0x1102140e:    bd01        ..      POP      {r0,pc}
    $d
        0x11021410:    00001c29    )...    DCD    7209
    $t
    $Ven$TT$L$$HCI_LE_SetScanEnableCmd
        0x11021414:    b403        ..      PUSH     {r0,r1}
        0x11021416:    4801        .H      LDR      r0,[pc,#4] ; [0x1102141c] = 0x2219
        0x11021418:    9001        ..      STR      r0,[sp,#4]
        0x1102141a:    bd01        ..      POP      {r0,pc}
    $d
        0x1102141c:    00002219    ."..    DCD    8729
    $t
    $Ven$TT$L$$HCI_LE_SetAdvParamCmd
        0x11021420:    b403        ..      PUSH     {r0,r1}
        0x11021422:    4801        .H      LDR      r0,[pc,#4] ; [0x11021428] = 0x1f85
        0x11021424:    9001        ..      STR      r0,[sp,#4]
        0x11021426:    bd01        ..      POP      {r0,pc}
    $d
        0x11021428:    00001f85    ....    DCD    8069
    $t
    $Ven$TT$L$$l2capSegmentBuffToLinkLayer
        0x1102142c:    b403        ..      PUSH     {r0,r1}
        0x1102142e:    4801        .H      LDR      r0,[pc,#4] ; [0x11021434] = 0x1fff390b
        0x11021430:    9001        ..      STR      r0,[sp,#4]
        0x11021432:    bd01        ..      POP      {r0,pc}
    $d
        0x11021434:    1fff390b    .9..    DCD    536819979
    $t
    $Ven$TT$L$$L2CAP_Fragment_SendDataPkt
        0x11021438:    b403        ..      PUSH     {r0,r1}
        0x1102143a:    4801        .H      LDR      r0,[pc,#4] ; [0x11021440] = 0x1fff38e5
        0x1102143c:    9001        ..      STR      r0,[sp,#4]
        0x1102143e:    bd01        ..      POP      {r0,pc}
    $d
        0x11021440:    1fff38e5    .8..    DCD    536819941
    $t
    $Ven$TT$L$$__aeabi_uidivmod
        0x11021444:    b403        ..      PUSH     {r0,r1}
        0x11021446:    4801        .H      LDR      r0,[pc,#4] ; [0x1102144c] = 0xe09
        0x11021448:    9001        ..      STR      r0,[sp,#4]
        0x1102144a:    bd01        ..      POP      {r0,pc}
    $d
        0x1102144c:    00000e09    ....    DCD    3593
    $t
    $Ven$TT$L$$LL_Encrypt
        0x11021450:    b403        ..      PUSH     {r0,r1}
        0x11021452:    4801        .H      LDR      r0,[pc,#4] ; [0x11021458] = 0x48e5
        0x11021454:    9001        ..      STR      r0,[sp,#4]
        0x11021456:    bd01        ..      POP      {r0,pc}
    $d
        0x11021458:    000048e5    .H..    DCD    18661
    $t
    $Ven$TT$L$$osal_rand
        0x1102145c:    b403        ..      PUSH     {r0,r1}
        0x1102145e:    4801        .H      LDR      r0,[pc,#4] ; [0x11021464] = 0x15129
        0x11021460:    9001        ..      STR      r0,[sp,#4]
        0x11021462:    bd01        ..      POP      {r0,pc}
    $d
        0x11021464:    00015129    )Q..    DCD    86313
    $t
    $Ven$TT$L$$osal_revmemcpy
        0x11021468:    b403        ..      PUSH     {r0,r1}
        0x1102146a:    4801        .H      LDR      r0,[pc,#4] ; [0x11021470] = 0x15145
        0x1102146c:    9001        ..      STR      r0,[sp,#4]
        0x1102146e:    bd01        ..      POP      {r0,pc}
    $d
        0x11021470:    00015145    EQ..    DCD    86341
    $t
    _section_xip_code_
    init_config
        0x11021474:    b5f8        ..      PUSH     {r3-r7,lr}
        0x11021476:    49d4        .I      LDR      r1,[pc,#848] ; [0x110217c8] = 0x1fff5850
        0x11021478:    4ad2        .J      LDR      r2,[pc,#840] ; [0x110217c4] = 0x1fff0400
        0x1102147a:    2000        .       MOVS     r0,#0
        0x1102147c:    4604        .F      MOV      r4,r0
        0x1102147e:    604a        J`      STR      r2,[r1,#4]
        0x11021480:    0083        ..      LSLS     r3,r0,#2
        0x11021482:    1c40        @.      ADDS     r0,r0,#1
        0x11021484:    50d4        .P      STR      r4,[r2,r3]
        0x11021486:    28ff        .(      CMP      r0,#0xff
        0x11021488:    ddfa        ..      BLE      0x11021480 ; init_config + 12
        0x1102148a:    6848        Hh      LDR      r0,[r1,#4]
        0x1102148c:    4acf        .J      LDR      r2,[pc,#828] ; [0x110217cc] = 0x1fff7828
        0x1102148e:    4601        .F      MOV      r1,r0
        0x11021490:    3180        .1      ADDS     r1,r1,#0x80
        0x11021492:    608a        .`      STR      r2,[r1,#8]
        0x11021494:    226e        n"      MOVS     r2,#0x6e
        0x11021496:    62c2        .b      STR      r2,[r0,#0x2c]
        0x11021498:    4acd        .J      LDR      r2,[pc,#820] ; [0x110217d0] = 0x1fff5c01
        0x1102149a:    7812        .x      LDRB     r2,[r2,#0]
        0x1102149c:    2a00        .*      CMP      r2,#0
        0x1102149e:    d001        ..      BEQ      0x110214a4 ; init_config + 48
        0x110214a0:    227f        ."      MOVS     r2,#0x7f
        0x110214a2:    62c2        .b      STR      r2,[r0,#0x2c]
        0x110214a4:    220a        ."      MOVS     r2,#0xa
        0x110214a6:    6502        .e      STR      r2,[r0,#0x50]
        0x110214a8:    4aca        .J      LDR      r2,[pc,#808] ; [0x110217d4] = 0x1fff0a4a
        0x110214aa:    7813        .x      LDRB     r3,[r2,#0]
        0x110214ac:    6383        .c      STR      r3,[r0,#0x38]
        0x110214ae:    4bca        .K      LDR      r3,[pc,#808] ; [0x110217d8] = 0x73a
        0x110214b0:    61c3        .a      STR      r3,[r0,#0x1c]
        0x110214b2:    7815        .x      LDRB     r5,[r2,#0]
        0x110214b4:    2310        .#      MOVS     r3,#0x10
        0x110214b6:    2d02        .-      CMP      r5,#2
        0x110214b8:    d008        ..      BEQ      0x110214cc ; init_config + 88
        0x110214ba:    7815        .x      LDRB     r5,[r2,#0]
        0x110214bc:    2d01        .-      CMP      r5,#1
        0x110214be:    d005        ..      BEQ      0x110214cc ; init_config + 88
        0x110214c0:    7815        .x      LDRB     r5,[r2,#0]
        0x110214c2:    2d03        .-      CMP      r5,#3
        0x110214c4:    d002        ..      BEQ      0x110214cc ; init_config + 88
        0x110214c6:    7815        .x      LDRB     r5,[r2,#0]
        0x110214c8:    2d04        .-      CMP      r5,#4
        0x110214ca:    d100        ..      BNE      0x110214ce ; init_config + 90
        0x110214cc:    6203        .b      STR      r3,[r0,#0x20]
        0x110214ce:    4dc3        .M      LDR      r5,[pc,#780] ; [0x110217dc] = 0x1c9c380
        0x110214d0:    6145        Ea      STR      r5,[r0,#0x14]
        0x110214d2:    2519        .%      MOVS     r5,#0x19
        0x110214d4:    01ad        ..      LSLS     r5,r5,#6
        0x110214d6:    6185        .a      STR      r5,[r0,#0x18]
        0x110214d8:    2537        7%      MOVS     r5,#0x37
        0x110214da:    60cd        .`      STR      r5,[r1,#0xc]
        0x110214dc:    2736        6'      MOVS     r7,#0x36
        0x110214de:    2628        (&      MOVS     r6,#0x28
        0x110214e0:    63c7        .c      STR      r7,[r0,#0x3c]
        0x110214e2:    2508        .%      MOVS     r5,#8
        0x110214e4:    6446        Fd      STR      r6,[r0,#0x44]
        0x110214e6:    6405        .d      STR      r5,[r0,#0x40]
        0x110214e8:    604f        O`      STR      r7,[r1,#4]
        0x110214ea:    2732        2'      MOVS     r7,#0x32
        0x110214ec:    600f        .`      STR      r7,[r1,#0]
        0x110214ee:    273b        ;'      MOVS     r7,#0x3b
        0x110214f0:    63cf        .c      STR      r7,[r1,#0x3c]
        0x110214f2:    2741        A'      MOVS     r7,#0x41
        0x110214f4:    64cf        .d      STR      r7,[r1,#0x4c]
        0x110214f6:    2739        9'      MOVS     r7,#0x39
        0x110214f8:    3140        @1      ADDS     r1,r1,#0x40
        0x110214fa:    c1e0        ..      STM      r1!,{r5-r7}
        0x110214fc:    2732        2'      MOVS     r7,#0x32
        0x110214fe:    604f        O`      STR      r7,[r1,#4]
        0x11021500:    2702        .'      MOVS     r7,#2
        0x11021502:    614f        Oa      STR      r7,[r1,#0x14]
        0x11021504:    2742        B'      MOVS     r7,#0x42
        0x11021506:    3108        .1      ADDS     r1,r1,#8
        0x11021508:    c1e0        ..      STM      r1!,{r5-r7}
        0x1102150a:    271e        .'      MOVS     r7,#0x1e
        0x1102150c:    604f        O`      STR      r7,[r1,#4]
        0x1102150e:    60ce        .`      STR      r6,[r1,#0xc]
        0x11021510:    608d        .`      STR      r5,[r1,#8]
        0x11021512:    2605        .&      MOVS     r6,#5
        0x11021514:    614e        Na      STR      r6,[r1,#0x14]
        0x11021516:    2642        B&      MOVS     r6,#0x42
        0x11021518:    610e        .a      STR      r6,[r1,#0x10]
        0x1102151a:    265a        Z&      MOVS     r6,#0x5a
        0x1102151c:    3960        `9      SUBS     r1,r1,#0x60
        0x1102151e:    610e        .a      STR      r6,[r1,#0x10]
        0x11021520:    614d        Ma      STR      r5,[r1,#0x14]
        0x11021522:    253c        <%      MOVS     r5,#0x3c
        0x11021524:    618d        .a      STR      r5,[r1,#0x18]
        0x11021526:    25af        .%      MOVS     r5,#0xaf
        0x11021528:    00ed        ..      LSLS     r5,r5,#3
        0x1102152a:    6005        .`      STR      r5,[r0,#0]
        0x1102152c:    4dac        .M      LDR      r5,[pc,#688] ; [0x110217e0] = 0x29a
        0x1102152e:    6305        .c      STR      r5,[r0,#0x30]
        0x11021530:    7815        .x      LDRB     r5,[r2,#0]
        0x11021532:    2d02        .-      CMP      r5,#2
        0x11021534:    d009        ..      BEQ      0x1102154a ; init_config + 214
        0x11021536:    7815        .x      LDRB     r5,[r2,#0]
        0x11021538:    2d01        .-      CMP      r5,#1
        0x1102153a:    d008        ..      BEQ      0x1102154e ; init_config + 218
        0x1102153c:    7815        .x      LDRB     r5,[r2,#0]
        0x1102153e:    2d03        .-      CMP      r5,#3
        0x11021540:    d007        ..      BEQ      0x11021552 ; init_config + 222
        0x11021542:    7815        .x      LDRB     r5,[r2,#0]
        0x11021544:    2d04        .-      CMP      r5,#4
        0x11021546:    d006        ..      BEQ      0x11021556 ; init_config + 226
        0x11021548:    e007        ..      B        0x1102155a ; init_config + 230
        0x1102154a:    2515        .%      MOVS     r5,#0x15
        0x1102154c:    e004        ..      B        0x11021558 ; init_config + 228
        0x1102154e:    6043        C`      STR      r3,[r0,#4]
        0x11021550:    e003        ..      B        0x1102155a ; init_config + 230
        0x11021552:    250e        .%      MOVS     r5,#0xe
        0x11021554:    e000        ..      B        0x11021558 ; init_config + 228
        0x11021556:    250c        .%      MOVS     r5,#0xc
        0x11021558:    6045        E`      STR      r5,[r0,#4]
        0x1102155a:    25ff        .%      MOVS     r5,#0xff
        0x1102155c:    352d        -5      ADDS     r5,r5,#0x2d
        0x1102155e:    6085        .`      STR      r5,[r0,#8]
        0x11021560:    60c5        .`      STR      r5,[r0,#0xc]
        0x11021562:    25ff        .%      MOVS     r5,#0xff
        0x11021564:    35f5        .5      ADDS     r5,r5,#0xf5
        0x11021566:    6105        .a      STR      r5,[r0,#0x10]
        0x11021568:    4d9e        .M      LDR      r5,[pc,#632] ; [0x110217e4] = 0xc350
        0x1102156a:    6485        .d      STR      r5,[r0,#0x48]
        0x1102156c:    257d        }%      MOVS     r5,#0x7d
        0x1102156e:    00ed        ..      LSLS     r5,r5,#3
        0x11021570:    4e9d        .N      LDR      r6,[pc,#628] ; [0x110217e8] = 0xa28
        0x11021572:    67cd        .g      STR      r5,[r1,#0x7c]
        0x11021574:    64c6        .d      STR      r6,[r0,#0x4c]
        0x11021576:    6245        Eb      STR      r5,[r0,#0x24]
        0x11021578:    4d9c        .M      LDR      r5,[pc,#624] ; [0x110217ec] = 0x186a
        0x1102157a:    6285        .b      STR      r5,[r0,#0x28]
        0x1102157c:    2573        s%      MOVS     r5,#0x73
        0x1102157e:    65c5        .e      STR      r5,[r0,#0x5c]
        0x11021580:    2506        .%      MOVS     r5,#6
        0x11021582:    6545        Ee      STR      r5,[r0,#0x54]
        0x11021584:    6585        .e      STR      r5,[r0,#0x58]
        0x11021586:    1dc5        ..      ADDS     r5,r0,#7
        0x11021588:    2608        .&      MOVS     r6,#8
        0x1102158a:    35f9        .5      ADDS     r5,r5,#0xf9
        0x1102158c:    2702        .'      MOVS     r7,#2
        0x1102158e:    602e        .`      STR      r6,[r5,#0]
        0x11021590:    6647        Gf      STR      r7,[r0,#0x64]
        0x11021592:    274b        K'      MOVS     r7,#0x4b
        0x11021594:    00ff        ..      LSLS     r7,r7,#3
        0x11021596:    6687        .f      STR      r7,[r0,#0x68]
        0x11021598:    2709        .'      MOVS     r7,#9
        0x1102159a:    66c7        .f      STR      r7,[r0,#0x6c]
        0x1102159c:    4f94        .O      LDR      r7,[pc,#592] ; [0x110217f0] = 0x4e20
        0x1102159e:    6707        .g      STR      r7,[r0,#0x70]
        0x110215a0:    6746        Fg      STR      r6,[r0,#0x74]
        0x110215a2:    10be        ..      ASRS     r6,r7,#2
        0x110215a4:    6784        .g      STR      r4,[r0,#0x78]
        0x110215a6:    67c6        .g      STR      r6,[r0,#0x7c]
        0x110215a8:    4f92        .O      LDR      r7,[pc,#584] ; [0x110217f4] = 0x1fff09f0
        0x110215aa:    4e8f        .N      LDR      r6,[pc,#572] ; [0x110217e8] = 0xa28
        0x110215ac:    603e        >`      STR      r6,[r7,#0]
        0x110215ae:    7816        .x      LDRB     r6,[r2,#0]
        0x110215b0:    2e02        ..      CMP      r6,#2
        0x110215b2:    d009        ..      BEQ      0x110215c8 ; init_config + 340
        0x110215b4:    7816        .x      LDRB     r6,[r2,#0]
        0x110215b6:    2e01        ..      CMP      r6,#1
        0x110215b8:    d00a        ..      BEQ      0x110215d0 ; init_config + 348
        0x110215ba:    7816        .x      LDRB     r6,[r2,#0]
        0x110215bc:    2e03        ..      CMP      r6,#3
        0x110215be:    d00b        ..      BEQ      0x110215d8 ; init_config + 356
        0x110215c0:    7812        .x      LDRB     r2,[r2,#0]
        0x110215c2:    2a04        .*      CMP      r2,#4
        0x110215c4:    d00c        ..      BEQ      0x110215e0 ; init_config + 364
        0x110215c6:    e00e        ..      B        0x110215e6 ; init_config + 370
        0x110215c8:    221a        ."      MOVS     r2,#0x1a
        0x110215ca:    61ca        .a      STR      r2,[r1,#0x1c]
        0x110215cc:    2221        !"      MOVS     r2,#0x21
        0x110215ce:    e005        ..      B        0x110215dc ; init_config + 360
        0x110215d0:    2214        ."      MOVS     r2,#0x14
        0x110215d2:    61ca        .a      STR      r2,[r1,#0x1c]
        0x110215d4:    2218        ."      MOVS     r2,#0x18
        0x110215d6:    e001        ..      B        0x110215dc ; init_config + 360
        0x110215d8:    2213        ."      MOVS     r2,#0x13
        0x110215da:    61cb        .a      STR      r3,[r1,#0x1c]
        0x110215dc:    620a        .b      STR      r2,[r1,#0x20]
        0x110215de:    e002        ..      B        0x110215e6 ; init_config + 370
        0x110215e0:    220e        ."      MOVS     r2,#0xe
        0x110215e2:    620b        .b      STR      r3,[r1,#0x20]
        0x110215e4:    61ca        .a      STR      r2,[r1,#0x1c]
        0x110215e6:    4a7f        .J      LDR      r2,[pc,#508] ; [0x110217e4] = 0xc350
        0x110215e8:    628a        .b      STR      r2,[r1,#0x28]
        0x110215ea:    227d        }"      MOVS     r2,#0x7d
        0x110215ec:    00d2        ..      LSLS     r2,r2,#3
        0x110215ee:    678a        .g      STR      r2,[r1,#0x78]
        0x110215f0:    2264        d"      MOVS     r2,#0x64
        0x110215f2:    624a        Jb      STR      r2,[r1,#0x24]
        0x110215f4:    2205        ."      MOVS     r2,#5
        0x110215f6:    62ca        .b      STR      r2,[r1,#0x2c]
        0x110215f8:    2202        ."      MOVS     r2,#2
        0x110215fa:    630a        .c      STR      r2,[r1,#0x30]
        0x110215fc:    22c8        ."      MOVS     r2,#0xc8
        0x110215fe:    638c        .c      STR      r4,[r1,#0x38]
        0x11021600:    634a        Jc      STR      r2,[r1,#0x34]
        0x11021602:    2138        8!      MOVS     r1,#0x38
        0x11021604:    6069        i`      STR      r1,[r5,#4]
        0x11021606:    497c        |I      LDR      r1,[pc,#496] ; [0x110217f8] = 0x11004000
        0x11021608:    6429        )d      STR      r1,[r5,#0x40]
        0x1102160a:    497c        |I      LDR      r1,[pc,#496] ; [0x110217fc] = 0x1068
        0x1102160c:    61a9        .a      STR      r1,[r5,#0x18]
        0x1102160e:    214b        K!      MOVS     r1,#0x4b
        0x11021610:    00c9        ..      LSLS     r1,r1,#3
        0x11021612:    61e9        .a      STR      r1,[r5,#0x1c]
        0x11021614:    4974        tI      LDR      r1,[pc,#464] ; [0x110217e8] = 0xa28
        0x11021616:    4a7b        {J      LDR      r2,[pc,#492] ; [0x11021804] = 0xf4240
        0x11021618:    3964        d9      SUBS     r1,r1,#0x64
        0x1102161a:    6229        )b      STR      r1,[r5,#0x20]
        0x1102161c:    217d        }!      MOVS     r1,#0x7d
        0x1102161e:    0109        ..      LSLS     r1,r1,#4
        0x11021620:    6269        ib      STR      r1,[r5,#0x24]
        0x11021622:    66ec        .f      STR      r4,[r5,#0x6c]
        0x11021624:    211e        .!      MOVS     r1,#0x1e
        0x11021626:    672c        ,g      STR      r4,[r5,#0x70]
        0x11021628:    66a9        .f      STR      r1,[r5,#0x68]
        0x1102162a:    4971        qI      LDR      r1,[pc,#452] ; [0x110217f0] = 0x4e20
        0x1102162c:    65a9        .e      STR      r1,[r5,#0x58]
        0x1102162e:    65e9        .e      STR      r1,[r5,#0x5c]
        0x11021630:    1089        ..      ASRS     r1,r1,#2
        0x11021632:    6629        )f      STR      r1,[r5,#0x60]
        0x11021634:    6469        id      STR      r1,[r5,#0x44]
        0x11021636:    6769        ig      STR      r1,[r5,#0x74]
        0x11021638:    4971        qI      LDR      r1,[pc,#452] ; [0x11021800] = 0x5dc
        0x1102163a:    67ea        .g      STR      r2,[r5,#0x7c]
        0x1102163c:    67a9        .g      STR      r1,[r5,#0x78]
        0x1102163e:    4972        rI      LDR      r1,[pc,#456] ; [0x11021808] = 0x2710
        0x11021640:    30ff        .0      ADDS     r0,r0,#0xff
        0x11021642:    3081        .0      ADDS     r0,r0,#0x81
        0x11021644:    c006        ..      STM      r0!,{r1,r2}
        0x11021646:    6001        .`      STR      r1,[r0,#0]
        0x11021648:    21ff        .!      MOVS     r1,#0xff
        0x1102164a:    31f5        .1      ADDS     r1,r1,#0xf5
        0x1102164c:    6041        A`      STR      r1,[r0,#4]
        0x1102164e:    6081        .`      STR      r1,[r0,#8]
        0x11021650:    486f        oH      LDR      r0,[pc,#444] ; [0x11021810] = 0x1fff0100
        0x11021652:    496e        nI      LDR      r1,[pc,#440] ; [0x1102180c] = 0x1fff49e9
        0x11021654:    4a5b        [J      LDR      r2,[pc,#364] ; [0x110217c4] = 0x1fff0400
        0x11021656:    6081        .`      STR      r1,[r0,#8]
        0x11021658:    496e        nI      LDR      r1,[pc,#440] ; [0x11021814] = 0x1fff3d8d
        0x1102165a:    3a80        .:      SUBS     r2,r2,#0x80
        0x1102165c:    6111        .a      STR      r1,[r2,#0x10]
        0x1102165e:    496c        lI      LDR      r1,[pc,#432] ; [0x11021810] = 0x1fff0100
        0x11021660:    4a6d        mJ      LDR      r2,[pc,#436] ; [0x11021818] = 0x1fff4d89
        0x11021662:    3180        .1      ADDS     r1,r1,#0x80
        0x11021664:    628a        .b      STR      r2,[r1,#0x28]
        0x11021666:    4a6d        mJ      LDR      r2,[pc,#436] ; [0x1102181c] = 0x1fff5075
        0x11021668:    62ca        .b      STR      r2,[r1,#0x2c]
        0x1102166a:    4a6d        mJ      LDR      r2,[pc,#436] ; [0x11021820] = 0x1fff3a99
        0x1102166c:    6182        .a      STR      r2,[r0,#0x18]
        0x1102166e:    4a6d        mJ      LDR      r2,[pc,#436] ; [0x11021824] = 0x1fff3c2d
        0x11021670:    62c2        .b      STR      r2,[r0,#0x2c]
        0x11021672:    4a6d        mJ      LDR      r2,[pc,#436] ; [0x11021828] = 0x1fff3ab5
        0x11021674:    6302        .c      STR      r2,[r0,#0x30]
        0x11021676:    4866        fH      LDR      r0,[pc,#408] ; [0x11021810] = 0x1fff0100
        0x11021678:    4a6c        lJ      LDR      r2,[pc,#432] ; [0x1102182c] = 0x1fff451d
        0x1102167a:    3840        @8      SUBS     r0,r0,#0x40
        0x1102167c:    6342        Bc      STR      r2,[r0,#0x34]
        0x1102167e:    4a6c        lJ      LDR      r2,[pc,#432] ; [0x11021830] = 0x1fff4475
        0x11021680:    63c2        .c      STR      r2,[r0,#0x3c]
        0x11021682:    4a6c        lJ      LDR      r2,[pc,#432] ; [0x11021834] = 0x1fff5631
        0x11021684:    61ca        .a      STR      r2,[r1,#0x1c]
        0x11021686:    496c        lI      LDR      r1,[pc,#432] ; [0x11021838] = 0x1fff5455
        0x11021688:    6381        .c      STR      r1,[r0,#0x38]
        0x1102168a:    4961        aI      LDR      r1,[pc,#388] ; [0x11021810] = 0x1fff0100
        0x1102168c:    486b        kH      LDR      r0,[pc,#428] ; [0x1102183c] = 0x1fff3965
        0x1102168e:    3140        @1      ADDS     r1,r1,#0x40
        0x11021690:    6188        .a      STR      r0,[r1,#0x18]
        0x11021692:    496c        lI      LDR      r1,[pc,#432] ; [0x11021844] = 0x1fff0200
        0x11021694:    486a        jH      LDR      r0,[pc,#424] ; [0x11021840] = 0x1fff4149
        0x11021696:    6088        .`      STR      r0,[r1,#8]
        0x11021698:    485d        ]H      LDR      r0,[pc,#372] ; [0x11021810] = 0x1fff0100
        0x1102169a:    4a6b        kJ      LDR      r2,[pc,#428] ; [0x11021848] = 0x1fff4661
        0x1102169c:    3880        .8      SUBS     r0,r0,#0x80
        0x1102169e:    6042        B`      STR      r2,[r0,#4]
        0x110216a0:    4a6a        jJ      LDR      r2,[pc,#424] ; [0x1102184c] = 0x1fff483d
        0x110216a2:    6342        Bc      STR      r2,[r0,#0x34]
        0x110216a4:    4a6a        jJ      LDR      r2,[pc,#424] ; [0x11021850] = 0x1fff4781
        0x110216a6:    620a        .b      STR      r2,[r1,#0x20]
        0x110216a8:    496a        jI      LDR      r1,[pc,#424] ; [0x11021854] = 0x1fff461d
        0x110216aa:    6081        .`      STR      r1,[r0,#8]
        0x110216ac:    4958        XI      LDR      r1,[pc,#352] ; [0x11021810] = 0x1fff0100
        0x110216ae:    486a        jH      LDR      r0,[pc,#424] ; [0x11021858] = 0x1fff4179
        0x110216b0:    39c0        .9      SUBS     r1,r1,#0xc0
        0x110216b2:    60c8        .`      STR      r0,[r1,#0xc]
        0x110216b4:    f7fffe06    ....    BL       $Ven$TT$L$$enableSleep ; 0x110212c4
        0x110216b8:    2001        .       MOVS     r0,#1
        0x110216ba:    f7fffe09    ....    BL       $Ven$TT$L$$setSleepMode ; 0x110212d0
        0x110216be:    bdf8        ..      POP      {r3-r7,pc}
    TRNG_Output
        0x110216c0:    b5f3        ..      PUSH     {r0,r1,r4-r7,lr}
        0x110216c2:    4607        .F      MOV      r7,r0
        0x110216c4:    4865        eH      LDR      r0,[pc,#404] ; [0x1102185c] = 0x4000f040
        0x110216c6:    b081        ..      SUB      sp,sp,#4
        0x110216c8:    69c1        .i      LDR      r1,[r0,#0x1c]
        0x110216ca:    4a65        eJ      LDR      r2,[pc,#404] ; [0x11021860] = 0xfffefe00
        0x110216cc:    4011        .@      ANDS     r1,r1,r2
        0x110216ce:    31ff        .1      ADDS     r1,r1,#0xff
        0x110216d0:    3109        .1      ADDS     r1,r1,#9
        0x110216d2:    61c1        .a      STR      r1,[r0,#0x1c]
        0x110216d4:    2600        .&      MOVS     r6,#0
        0x110216d6:    e013        ..      B        0x11021700 ; TRNG_Output + 64
        0x110216d8:    2500        .%      MOVS     r5,#0
        0x110216da:    462c        ,F      MOV      r4,r5
        0x110216dc:    2011        .       MOVS     r0,#0x11
        0x110216de:    f7fffdfd    ....    BL       $Ven$TT$L$$WaitRTCCount ; 0x110212dc
        0x110216e2:    485e        ^H      LDR      r0,[pc,#376] ; [0x1102185c] = 0x4000f040
        0x110216e4:    6a40        @j      LDR      r0,[r0,#0x24]
        0x110216e6:    0780        ..      LSLS     r0,r0,#30
        0x110216e8:    0f80        ..      LSRS     r0,r0,#30
        0x110216ea:    0061        a.      LSLS     r1,r4,#1
        0x110216ec:    4088        .@      LSLS     r0,r0,r1
        0x110216ee:    4328        (C      ORRS     r0,r0,r5
        0x110216f0:    1c64        d.      ADDS     r4,r4,#1
        0x110216f2:    b2e4        ..      UXTB     r4,r4
        0x110216f4:    4605        .F      MOV      r5,r0
        0x110216f6:    2c10        .,      CMP      r4,#0x10
        0x110216f8:    d3f0        ..      BCC      0x110216dc ; TRNG_Output + 28
        0x110216fa:    c701        ..      STM      r7!,{r0}
        0x110216fc:    1c76        v.      ADDS     r6,r6,#1
        0x110216fe:    b2f6        ..      UXTB     r6,r6
        0x11021700:    9802        ..      LDR      r0,[sp,#8]
        0x11021702:    4286        .B      CMP      r6,r0
        0x11021704:    d3e8        ..      BCC      0x110216d8 ; TRNG_Output + 24
        0x11021706:    bdfe        ..      POP      {r1-r7,pc}
    TRNG_INIT
        0x11021708:    b510        ..      PUSH     {r4,lr}
        0x1102170a:    4c2f        /L      LDR      r4,[pc,#188] ; [0x110217c8] = 0x1fff5850
        0x1102170c:    7860        `x      LDRB     r0,[r4,#1]
        0x1102170e:    2800        .(      CMP      r0,#0
        0x11021710:    d10a        ..      BNE      0x11021728 ; TRNG_INIT + 32
        0x11021712:    2104        .!      MOVS     r1,#4
        0x11021714:    4853        SH      LDR      r0,[pc,#332] ; [0x11021864] = 0x1fff59e0
        0x11021716:    f7ffffd3    ....    BL       TRNG_Output ; 0x110216c0
        0x1102171a:    4852        RH      LDR      r0,[pc,#328] ; [0x11021864] = 0x1fff59e0
        0x1102171c:    2104        .!      MOVS     r1,#4
        0x1102171e:    3010        .0      ADDS     r0,r0,#0x10
        0x11021720:    f7ffffce    ....    BL       TRNG_Output ; 0x110216c0
        0x11021724:    2001        .       MOVS     r0,#1
        0x11021726:    7060        `p      STRB     r0,[r4,#1]
        0x11021728:    bd10        ..      POP      {r4,pc}
    TRNG_Rand
        0x1102172a:    b5f0        ..      PUSH     {r4-r7,lr}
        0x1102172c:    2400        .$      MOVS     r4,#0
        0x1102172e:    b08b        ..      SUB      sp,sp,#0x2c
        0x11021730:    460d        .F      MOV      r5,r1
        0x11021732:    4606        .F      MOV      r6,r0
        0x11021734:    2910        .)      CMP      r1,#0x10
        0x11021736:    d902        ..      BLS      0x1102173e ; TRNG_Rand + 20
        0x11021738:    2001        .       MOVS     r0,#1
        0x1102173a:    b00b        ..      ADD      sp,sp,#0x2c
        0x1102173c:    bdf0        ..      POP      {r4-r7,pc}
        0x1102173e:    f7ffffe3    ....    BL       TRNG_INIT ; 0x11021708
        0x11021742:    4948        HI      LDR      r1,[pc,#288] ; [0x11021864] = 0x1fff59e0
        0x11021744:    2000        .       MOVS     r0,#0
        0x11021746:    5c0a        .\      LDRB     r2,[r1,r0]
        0x11021748:    1c40        @.      ADDS     r0,r0,#1
        0x1102174a:    1914        ..      ADDS     r4,r2,r4
        0x1102174c:    b2c0        ..      UXTB     r0,r0
        0x1102174e:    2810        .(      CMP      r0,#0x10
        0x11021750:    d3f9        ..      BCC      0x11021746 ; TRNG_Rand + 28
        0x11021752:    2c00        .,      CMP      r4,#0
        0x11021754:    d003        ..      BEQ      0x1102175e ; TRNG_Rand + 52
        0x11021756:    2d10        .-      CMP      r5,#0x10
        0x11021758:    d903        ..      BLS      0x11021762 ; TRNG_Rand + 56
        0x1102175a:    200b        .       MOVS     r0,#0xb
        0x1102175c:    e7ed        ..      B        0x1102173a ; TRNG_Rand + 16
        0x1102175e:    200e        .       MOVS     r0,#0xe
        0x11021760:    e7eb        ..      B        0x1102173a ; TRNG_Rand + 16
        0x11021762:    4841        AH      LDR      r0,[pc,#260] ; [0x11021868] = 0x1fff590c
        0x11021764:    4c3f        ?L      LDR      r4,[pc,#252] ; [0x11021864] = 0x1fff59e0
        0x11021766:    2300        .#      MOVS     r3,#0
        0x11021768:    6800        .h      LDR      r0,[r0,#0]
        0x1102176a:    a902        ..      ADD      r1,sp,#8
        0x1102176c:    3410        .4      ADDS     r4,r4,#0x10
        0x1102176e:    5ce2        .\      LDRB     r2,[r4,r3]
        0x11021770:    5cc7        .\      LDRB     r7,[r0,r3]
        0x11021772:    407a        z@      EORS     r2,r2,r7
        0x11021774:    54ca        .T      STRB     r2,[r1,r3]
        0x11021776:    1c5b        [.      ADDS     r3,r3,#1
        0x11021778:    b2db        ..      UXTB     r3,r3
        0x1102177a:    2b10        .+      CMP      r3,#0x10
        0x1102177c:    d3f7        ..      BCC      0x1102176e ; TRNG_Rand + 68
        0x1102177e:    aa06        ..      ADD      r2,sp,#0x18
        0x11021780:    4838        8H      LDR      r0,[pc,#224] ; [0x11021864] = 0x1fff59e0
        0x11021782:    f7fffdb1    ....    BL       $Ven$TT$L$$LL_ENC_AES128_Encrypt ; 0x110212e8
        0x11021786:    2d10        .-      CMP      r5,#0x10
        0x11021788:    d900        ..      BLS      0x1102178c ; TRNG_Rand + 98
        0x1102178a:    2510        .%      MOVS     r5,#0x10
        0x1102178c:    462a        *F      MOV      r2,r5
        0x1102178e:    a906        ..      ADD      r1,sp,#0x18
        0x11021790:    4630        0F      MOV      r0,r6
        0x11021792:    f7fffd31    ..1.    BL       $Ven$TT$L$$osal_memcpy ; 0x110211f8
        0x11021796:    f7fffdad    ....    BL       $Ven$TT$L$$read_current_fine_time ; 0x110212f4
        0x1102179a:    6821        !h      LDR      r1,[r4,#0]
        0x1102179c:    1840        @.      ADDS     r0,r0,r1
        0x1102179e:    6020         `      STR      r0,[r4,#0]
        0x110217a0:    f7fffda8    ....    BL       $Ven$TT$L$$read_current_fine_time ; 0x110212f4
        0x110217a4:    6861        ah      LDR      r1,[r4,#4]
        0x110217a6:    1840        @.      ADDS     r0,r0,r1
        0x110217a8:    6060        ``      STR      r0,[r4,#4]
        0x110217aa:    f7fffda3    ....    BL       $Ven$TT$L$$read_current_fine_time ; 0x110212f4
        0x110217ae:    68a1        .h      LDR      r1,[r4,#8]
        0x110217b0:    1840        @.      ADDS     r0,r0,r1
        0x110217b2:    60a0        .`      STR      r0,[r4,#8]
        0x110217b4:    f7fffd9e    ....    BL       $Ven$TT$L$$read_current_fine_time ; 0x110212f4
        0x110217b8:    68e1        .h      LDR      r1,[r4,#0xc]
        0x110217ba:    1840        @.      ADDS     r0,r0,r1
        0x110217bc:    60e0        .`      STR      r0,[r4,#0xc]
        0x110217be:    2000        .       MOVS     r0,#0
        0x110217c0:    e7bb        ..      B        0x1102173a ; TRNG_Rand + 16
    $d
        0x110217c2:    0000        ..      DCW    0
        0x110217c4:    1fff0400    ....    DCD    536806400
        0x110217c8:    1fff5850    PX..    DCD    536827984
        0x110217cc:    1fff7828    (x..    DCD    536836136
        0x110217d0:    1fff5c01    .\..    DCD    536828929
        0x110217d4:    1fff0a4a    J...    DCD    536808010
        0x110217d8:    0000073a    :...    DCD    1850
        0x110217dc:    01c9c380    ....    DCD    30000000
        0x110217e0:    0000029a    ....    DCD    666
        0x110217e4:    0000c350    P...    DCD    50000
        0x110217e8:    00000a28    (...    DCD    2600
        0x110217ec:    0000186a    j...    DCD    6250
        0x110217f0:    00004e20     N..    DCD    20000
        0x110217f4:    1fff09f0    ....    DCD    536807920
        0x110217f8:    11004000    .@..    DCD    285229056
        0x110217fc:    00001068    h...    DCD    4200
        0x11021800:    000005dc    ....    DCD    1500
        0x11021804:    000f4240    @B..    DCD    1000000
        0x11021808:    00002710    .'..    DCD    10000
        0x1102180c:    1fff49e9    .I..    DCD    536824297
        0x11021810:    1fff0100    ....    DCD    536805632
        0x11021814:    1fff3d8d    .=..    DCD    536821133
        0x11021818:    1fff4d89    .M..    DCD    536825225
        0x1102181c:    1fff5075    uP..    DCD    536825973
        0x11021820:    1fff3a99    .:..    DCD    536820377
        0x11021824:    1fff3c2d    -<..    DCD    536820781
        0x11021828:    1fff3ab5    .:..    DCD    536820405
        0x1102182c:    1fff451d    .E..    DCD    536823069
        0x11021830:    1fff4475    uD..    DCD    536822901
        0x11021834:    1fff5631    1V..    DCD    536827441
        0x11021838:    1fff5455    UT..    DCD    536826965
        0x1102183c:    1fff3965    e9..    DCD    536820069
        0x11021840:    1fff4149    IA..    DCD    536822089
        0x11021844:    1fff0200    ....    DCD    536805888
        0x11021848:    1fff4661    aF..    DCD    536823393
        0x1102184c:    1fff483d    =H..    DCD    536823869
        0x11021850:    1fff4781    .G..    DCD    536823681
        0x11021854:    1fff461d    .F..    DCD    536823325
        0x11021858:    1fff4179    yA..    DCD    536822137
        0x1102185c:    4000f040    @..@    DCD    1073803328
        0x11021860:    fffefe00    ....    DCD    4294901248
        0x11021864:    1fff59e0    .Y..    DCD    536828384
        0x11021868:    1fff590c    .Y..    DCD    536828172
    $t
    i.ATT_GetCurrentMTUSize
    ATT_GetCurrentMTUSize
        0x1102186c:    4901        .I      LDR      r1,[pc,#4] ; [0x11021874] = 0x1fff5932
        0x1102186e:    0040        @.      LSLS     r0,r0,#1
        0x11021870:    5a08        .Z      LDRH     r0,[r1,r0]
        0x11021872:    4770        pG      BX       lr
    $d
        0x11021874:    1fff5932    2Y..    DCD    536828210
    $t
    i.ATT_UpdateMtuSize
    ATT_UpdateMtuSize
        0x11021878:    4a04        .J      LDR      r2,[pc,#16] ; [0x1102188c] = 0x1fff592c
        0x1102187a:    8812        ..      LDRH     r2,[r2,#0]
        0x1102187c:    4291        .B      CMP      r1,r2
        0x1102187e:    d803        ..      BHI      0x11021888 ; ATT_UpdateMtuSize + 16
        0x11021880:    4a02        .J      LDR      r2,[pc,#8] ; [0x1102188c] = 0x1fff592c
        0x11021882:    0040        @.      LSLS     r0,r0,#1
        0x11021884:    1d92        ..      ADDS     r2,r2,#6
        0x11021886:    5211        .R      STRH     r1,[r2,r0]
        0x11021888:    4770        pG      BX       lr
    $d
        0x1102188a:    0000        ..      DCW    0
        0x1102188c:    1fff592c    ,Y..    DCD    536828204
    $t
    i.GAP_CentDevMgrInit
    GAP_CentDevMgrInit
        0x11021890:    b570        p.      PUSH     {r4-r6,lr}
        0x11021892:    4c0c        .L      LDR      r4,[pc,#48] ; [0x110218c4] = 0x1fff5870
        0x11021894:    4605        .F      MOV      r5,r0
        0x11021896:    2101        .!      MOVS     r1,#1
        0x11021898:    7820         x      LDRB     r0,[r4,#0]
        0x1102189a:    f000fc21    ..!.    BL       gapFreeScanRecs ; 0x110220e0
        0x1102189e:    480a        .H      LDR      r0,[pc,#40] ; [0x110218c8] = 0x1fff5889
        0x110218a0:    210a        .!      MOVS     r1,#0xa
        0x110218a2:    7800        .x      LDRB     r0,[r0,#0]
        0x110218a4:    4208        .B      TST      r0,r1
        0x110218a6:    d007        ..      BEQ      0x110218b8 ; GAP_CentDevMgrInit + 40
        0x110218a8:    4620         F      MOV      r0,r4
        0x110218aa:    7025        %p      STRB     r5,[r4,#0]
        0x110218ac:    3008        .0      ADDS     r0,r0,#8
        0x110218ae:    f001f83b    ..;.    BL       gapRegisterCentral ; 0x11022928
        0x110218b2:    f000fb2b    ..+.    BL       gapAllocScanRecs ; 0x11021f0c
        0x110218b6:    bd70        p.      POP      {r4-r6,pc}
        0x110218b8:    2000        .       MOVS     r0,#0
        0x110218ba:    7020         p      STRB     r0,[r4,#0]
        0x110218bc:    f001f834    ..4.    BL       gapRegisterCentral ; 0x11022928
        0x110218c0:    2000        .       MOVS     r0,#0
        0x110218c2:    bd70        p.      POP      {r4-r6,pc}
    $d
        0x110218c4:    1fff5870    pX..    DCD    536828016
        0x110218c8:    1fff5889    .X..    DCD    536828041
    $t
    i.GAP_DeviceDiscoveryCancel
    GAP_DeviceDiscoveryCancel
        0x110218cc:    b510        ..      PUSH     {r4,lr}
        0x110218ce:    490b        .I      LDR      r1,[pc,#44] ; [0x110218fc] = 0x1fff5914
        0x110218d0:    6809        .h      LDR      r1,[r1,#0]
        0x110218d2:    2900        .)      CMP      r1,#0
        0x110218d4:    d004        ..      BEQ      0x110218e0 ; GAP_DeviceDiscoveryCancel + 20
        0x110218d6:    7809        .x      LDRB     r1,[r1,#0]
        0x110218d8:    4281        .B      CMP      r1,r0
        0x110218da:    d003        ..      BEQ      0x110218e4 ; GAP_DeviceDiscoveryCancel + 24
        0x110218dc:    2003        .       MOVS     r0,#3
        0x110218de:    bd10        ..      POP      {r4,pc}
        0x110218e0:    2012        .       MOVS     r0,#0x12
        0x110218e2:    bd10        ..      POP      {r4,pc}
        0x110218e4:    4806        .H      LDR      r0,[pc,#24] ; [0x11021900] = 0x1fff5901
        0x110218e6:    2101        .!      MOVS     r1,#1
        0x110218e8:    7800        .x      LDRB     r0,[r0,#0]
        0x110218ea:    f7fffcbb    ....    BL       $Ven$TT$L$$osal_stop_timerEx ; 0x11021264
        0x110218ee:    2030        0       MOVS     r0,#0x30
        0x110218f0:    f001f826    ..&.    BL       gapSendDevDiscEvent ; 0x11022940
        0x110218f4:    2000        .       MOVS     r0,#0
        0x110218f6:    f001f925    ..%.    BL       gapSendScanEnable ; 0x11022b44
        0x110218fa:    bd10        ..      POP      {r4,pc}
    $d
        0x110218fc:    1fff5914    .Y..    DCD    536828180
        0x11021900:    1fff5901    .Y..    DCD    536828161
    $t
    i.GAP_DeviceDiscoveryRequest
    GAP_DeviceDiscoveryRequest
        0x11021904:    b538        8.      PUSH     {r3-r5,lr}
        0x11021906:    4d23        #M      LDR      r5,[pc,#140] ; [0x11021994] = 0x1fff5914
        0x11021908:    4604        .F      MOV      r4,r0
        0x1102190a:    6828        (h      LDR      r0,[r5,#0]
        0x1102190c:    2800        .(      CMP      r0,#0
        0x1102190e:    d001        ..      BEQ      0x11021914 ; GAP_DeviceDiscoveryRequest + 16
        0x11021910:    2011        .       MOVS     r0,#0x11
        0x11021912:    bd38        8.      POP      {r3-r5,pc}
        0x11021914:    4820         H      LDR      r0,[pc,#128] ; [0x11021998] = 0x1fff5889
        0x11021916:    210a        .!      MOVS     r1,#0xa
        0x11021918:    7800        .x      LDRB     r0,[r0,#0]
        0x1102191a:    4208        .B      TST      r0,r1
        0x1102191c:    d101        ..      BNE      0x11021922 ; GAP_DeviceDiscoveryRequest + 30
        0x1102191e:    2012        .       MOVS     r0,#0x12
        0x11021920:    bd38        8.      POP      {r3-r5,pc}
        0x11021922:    2004        .       MOVS     r0,#4
        0x11021924:    f7fffcec    ....    BL       $Ven$TT$L$$osal_mem_alloc ; 0x11021300
        0x11021928:    6028        (`      STR      r0,[r5,#0]
        0x1102192a:    2800        .(      CMP      r0,#0
        0x1102192c:    d02f        /.      BEQ      0x1102198e ; GAP_DeviceDiscoveryRequest + 138
        0x1102192e:    2204        ."      MOVS     r2,#4
        0x11021930:    4621        !F      MOV      r1,r4
        0x11021932:    f7fffc61    ..a.    BL       $Ven$TT$L$$osal_memcpy ; 0x110211f8
        0x11021936:    f000f8d9    ....    BL       GAP_NumActiveConnections ; 0x11021aec
        0x1102193a:    2800        .(      CMP      r0,#0
        0x1102193c:    d005        ..      BEQ      0x1102194a ; GAP_DeviceDiscoveryRequest + 70
        0x1102193e:    200c        .       MOVS     r0,#0xc
        0x11021940:    f000f858    ..X.    BL       GAP_GetParamValue ; 0x110219f4
        0x11021944:    4605        .F      MOV      r5,r0
        0x11021946:    200d        .       MOVS     r0,#0xd
        0x11021948:    e007        ..      B        0x1102195a ; GAP_DeviceDiscoveryRequest + 86
        0x1102194a:    7860        `x      LDRB     r0,[r4,#1]
        0x1102194c:    2802        .(      CMP      r0,#2
        0x1102194e:    d012        ..      BEQ      0x11021976 ; GAP_DeviceDiscoveryRequest + 114
        0x11021950:    2010        .       MOVS     r0,#0x10
        0x11021952:    f000f84f    ..O.    BL       GAP_GetParamValue ; 0x110219f4
        0x11021956:    4605        .F      MOV      r5,r0
        0x11021958:    2011        .       MOVS     r0,#0x11
        0x1102195a:    f000f84b    ..K.    BL       GAP_GetParamValue ; 0x110219f4
        0x1102195e:    4602        .F      MOV      r2,r0
        0x11021960:    78e0        .x      LDRB     r0,[r4,#3]
        0x11021962:    2800        .(      CMP      r0,#0
        0x11021964:    d000        ..      BEQ      0x11021968 ; GAP_DeviceDiscoveryRequest + 100
        0x11021966:    2001        .       MOVS     r0,#1
        0x11021968:    9000        ..      STR      r0,[sp,#0]
        0x1102196a:    480c        .H      LDR      r0,[pc,#48] ; [0x1102199c] = 0x1fff588a
        0x1102196c:    7800        .x      LDRB     r0,[r0,#0]
        0x1102196e:    2800        .(      CMP      r0,#0
        0x11021970:    d007        ..      BEQ      0x11021982 ; GAP_DeviceDiscoveryRequest + 126
        0x11021972:    2301        .#      MOVS     r3,#1
        0x11021974:    e006        ..      B        0x11021984 ; GAP_DeviceDiscoveryRequest + 128
        0x11021976:    2012        .       MOVS     r0,#0x12
        0x11021978:    f000f83c    ..<.    BL       GAP_GetParamValue ; 0x110219f4
        0x1102197c:    4605        .F      MOV      r5,r0
        0x1102197e:    2013        .       MOVS     r0,#0x13
        0x11021980:    e7eb        ..      B        0x1102195a ; GAP_DeviceDiscoveryRequest + 86
        0x11021982:    2300        .#      MOVS     r3,#0
        0x11021984:    78a0        .x      LDRB     r0,[r4,#2]
        0x11021986:    4629        )F      MOV      r1,r5
        0x11021988:    f7fffcc0    ....    BL       $Ven$TT$L$$HCI_LE_SetScanParamCmd ; 0x1102130c
        0x1102198c:    bd38        8.      POP      {r3-r5,pc}
        0x1102198e:    2013        .       MOVS     r0,#0x13
        0x11021990:    bd38        8.      POP      {r3-r5,pc}
    $d
        0x11021992:    0000        ..      DCW    0
        0x11021994:    1fff5914    .Y..    DCD    536828180
        0x11021998:    1fff5889    .X..    DCD    536828041
        0x1102199c:    1fff588a    .X..    DCD    536828042
    $t
    i.GAP_EndDiscoverable
    GAP_EndDiscoverable
        0x110219a0:    b570        p.      PUSH     {r4-r6,lr}
        0x110219a2:    4c10        .L      LDR      r4,[pc,#64] ; [0x110219e4] = 0x1fff5918
        0x110219a4:    6821        !h      LDR      r1,[r4,#0]
        0x110219a6:    2900        .)      CMP      r1,#0
        0x110219a8:    d004        ..      BEQ      0x110219b4 ; GAP_EndDiscoverable + 20
        0x110219aa:    7809        .x      LDRB     r1,[r1,#0]
        0x110219ac:    4281        .B      CMP      r1,r0
        0x110219ae:    d003        ..      BEQ      0x110219b8 ; GAP_EndDiscoverable + 24
        0x110219b0:    2003        .       MOVS     r0,#3
        0x110219b2:    bd70        p.      POP      {r4-r6,pc}
        0x110219b4:    2012        .       MOVS     r0,#0x12
        0x110219b6:    bd70        p.      POP      {r4-r6,pc}
        0x110219b8:    4d0b        .M      LDR      r5,[pc,#44] ; [0x110219e8] = 0x1fff5901
        0x110219ba:    2102        .!      MOVS     r1,#2
        0x110219bc:    7828        (x      LDRB     r0,[r5,#0]
        0x110219be:    f7fffc51    ..Q.    BL       $Ven$TT$L$$osal_stop_timerEx ; 0x11021264
        0x110219c2:    480a        .H      LDR      r0,[pc,#40] ; [0x110219ec] = 0x1fff58e4
        0x110219c4:    2600        .&      MOVS     r6,#0
        0x110219c6:    8046        F.      STRH     r6,[r0,#2]
        0x110219c8:    2104        .!      MOVS     r1,#4
        0x110219ca:    7828        (x      LDRB     r0,[r5,#0]
        0x110219cc:    f7fffc4a    ..J.    BL       $Ven$TT$L$$osal_stop_timerEx ; 0x11021264
        0x110219d0:    4807        .H      LDR      r0,[pc,#28] ; [0x110219f0] = 0x1fff588c
        0x110219d2:    8006        ..      STRH     r6,[r0,#0]
        0x110219d4:    6821        !h      LDR      r1,[r4,#0]
        0x110219d6:    2003        .       MOVS     r0,#3
        0x110219d8:    7048        Hp      STRB     r0,[r1,#1]
        0x110219da:    2000        .       MOVS     r0,#0
        0x110219dc:    f7fffc9c    ....    BL       $Ven$TT$L$$HCI_LE_SetAdvEnableCmd ; 0x11021318
        0x110219e0:    bd70        p.      POP      {r4-r6,pc}
    $d
        0x110219e2:    0000        ..      DCW    0
        0x110219e4:    1fff5918    .Y..    DCD    536828184
        0x110219e8:    1fff5901    .Y..    DCD    536828161
        0x110219ec:    1fff58e4    .X..    DCD    536828132
        0x110219f0:    1fff588c    .X..    DCD    536828044
    $t
    i.GAP_GetParamValue
    GAP_GetParamValue
        0x110219f4:    2827        '(      CMP      r0,#0x27
        0x110219f6:    d203        ..      BCS      0x11021a00 ; GAP_GetParamValue + 12
        0x110219f8:    4902        .I      LDR      r1,[pc,#8] ; [0x11021a04] = 0x1fff5894
        0x110219fa:    0040        @.      LSLS     r0,r0,#1
        0x110219fc:    5a08        .Z      LDRH     r0,[r1,r0]
        0x110219fe:    4770        pG      BX       lr
        0x11021a00:    4801        .H      LDR      r0,[pc,#4] ; [0x11021a08] = 0xffff
        0x11021a02:    4770        pG      BX       lr
    $d
        0x11021a04:    1fff5894    .X..    DCD    536828052
        0x11021a08:    0000ffff    ....    DCD    65535
    $t
    i.GAP_Init
    GAP_Init
        0x11021a0c:    b510        ..      PUSH     {r4,lr}
        0x11021a0e:    4c06        .L      LDR      r4,[pc,#24] ; [0x11021a28] = 0x1fff5900
        0x11021a10:    7060        `p      STRB     r0,[r4,#1]
        0x11021a12:    f001fb25    ..%.    BL       linkDB_Init ; 0x11023060
        0x11021a16:    7860        `x      LDRB     r0,[r4,#1]
        0x11021a18:    f7fffc84    ....    BL       $Ven$TT$L$$HCI_GAPTaskRegister ; 0x11021324
        0x11021a1c:    2105        .!      MOVS     r1,#5
        0x11021a1e:    7860        `x      LDRB     r0,[r4,#1]
        0x11021a20:    f000f9be    ....    BL       L2CAP_RegisterApp ; 0x11021da0
        0x11021a24:    bd10        ..      POP      {r4,pc}
    $d
        0x11021a26:    0000        ..      DCW    0
        0x11021a28:    1fff5900    .Y..    DCD    536828160
    $t
    i.GAP_MakeDiscoverable
    GAP_MakeDiscoverable
        0x11021a2c:    b570        p.      PUSH     {r4-r6,lr}
        0x11021a2e:    4e28        (N      LDR      r6,[pc,#160] ; [0x11021ad0] = 0x1fff5918
        0x11021a30:    4605        .F      MOV      r5,r0
        0x11021a32:    6830        0h      LDR      r0,[r6,#0]
        0x11021a34:    460c        .F      MOV      r4,r1
        0x11021a36:    2800        .(      CMP      r0,#0
        0x11021a38:    d001        ..      BEQ      0x11021a3e ; GAP_MakeDiscoverable + 18
        0x11021a3a:    2011        .       MOVS     r0,#0x11
        0x11021a3c:    bd70        p.      POP      {r4-r6,pc}
        0x11021a3e:    4825        %H      LDR      r0,[pc,#148] ; [0x11021ad4] = 0x1fff5889
        0x11021a40:    7801        .x      LDRB     r1,[r0,#0]
        0x11021a42:    2005        .       MOVS     r0,#5
        0x11021a44:    4201        .B      TST      r1,r0
        0x11021a46:    d016        ..      BEQ      0x11021a76 ; GAP_MakeDiscoverable + 74
        0x11021a48:    4823        #H      LDR      r0,[pc,#140] ; [0x11021ad8] = 0x1fff58e4
        0x11021a4a:    6880        .h      LDR      r0,[r0,#8]
        0x11021a4c:    2800        .(      CMP      r0,#0
        0x11021a4e:    d005        ..      BEQ      0x11021a5c ; GAP_MakeDiscoverable + 48
        0x11021a50:    7800        .x      LDRB     r0,[r0,#0]
        0x11021a52:    2800        .(      CMP      r0,#0
        0x11021a54:    d002        ..      BEQ      0x11021a5c ; GAP_MakeDiscoverable + 48
        0x11021a56:    07c8        ..      LSLS     r0,r1,#31
        0x11021a58:    d106        ..      BNE      0x11021a68 ; GAP_MakeDiscoverable + 60
        0x11021a5a:    e001        ..      B        0x11021a60 ; GAP_MakeDiscoverable + 52
        0x11021a5c:    2010        .       MOVS     r0,#0x10
        0x11021a5e:    bd70        p.      POP      {r4-r6,pc}
        0x11021a60:    f000f844    ..D.    BL       GAP_NumActiveConnections ; 0x11021aec
        0x11021a64:    2800        .(      CMP      r0,#0
        0x11021a66:    d008        ..      BEQ      0x11021a7a ; GAP_MakeDiscoverable + 78
        0x11021a68:    7820         x      LDRB     r0,[r4,#0]
        0x11021a6a:    2803        .(      CMP      r0,#3
        0x11021a6c:    d005        ..      BEQ      0x11021a7a ; GAP_MakeDiscoverable + 78
        0x11021a6e:    2802        .(      CMP      r0,#2
        0x11021a70:    d003        ..      BEQ      0x11021a7a ; GAP_MakeDiscoverable + 78
        0x11021a72:    2800        .(      CMP      r0,#0
        0x11021a74:    d001        ..      BEQ      0x11021a7a ; GAP_MakeDiscoverable + 78
        0x11021a76:    2012        .       MOVS     r0,#0x12
        0x11021a78:    bd70        p.      POP      {r4-r6,pc}
        0x11021a7a:    200c        .       MOVS     r0,#0xc
        0x11021a7c:    f7fffc40    ..@.    BL       $Ven$TT$L$$osal_mem_alloc ; 0x11021300
        0x11021a80:    6030        0`      STR      r0,[r6,#0]
        0x11021a82:    2800        .(      CMP      r0,#0
        0x11021a84:    d020         .      BEQ      0x11021ac8 ; GAP_MakeDiscoverable + 156
        0x11021a86:    7005        .p      STRB     r5,[r0,#0]
        0x11021a88:    2100        .!      MOVS     r1,#0
        0x11021a8a:    7041        Ap      STRB     r1,[r0,#1]
        0x11021a8c:    220a        ."      MOVS     r2,#0xa
        0x11021a8e:    4621        !F      MOV      r1,r4
        0x11021a90:    1c80        ..      ADDS     r0,r0,#2
        0x11021a92:    f7fffbb1    ....    BL       $Ven$TT$L$$osal_memcpy ; 0x110211f8
        0x11021a96:    f001f863    ..c.    BL       gapSetAdvParams ; 0x11022b60
        0x11021a9a:    0004        ..      MOVS     r4,r0
        0x11021a9c:    d002        ..      BEQ      0x11021aa4 ; GAP_MakeDiscoverable + 120
        0x11021a9e:    f000fae7    ....    BL       gapFreeAdvertState ; 0x11022070
        0x11021aa2:    e012        ..      B        0x11021aca ; GAP_MakeDiscoverable + 158
        0x11021aa4:    480d        .H      LDR      r0,[pc,#52] ; [0x11021adc] = 0x1fff588a
        0x11021aa6:    7800        .x      LDRB     r0,[r0,#0]
        0x11021aa8:    2803        .(      CMP      r0,#3
        0x11021aaa:    d10e        ..      BNE      0x11021aca ; GAP_MakeDiscoverable + 158
        0x11021aac:    201d        .       MOVS     r0,#0x1d
        0x11021aae:    f7ffffa1    ....    BL       GAP_GetParamValue ; 0x110219f4
        0x11021ab2:    490b        .I      LDR      r1,[pc,#44] ; [0x11021ae0] = 0x1fff588c
        0x11021ab4:    2800        .(      CMP      r0,#0
        0x11021ab6:    8008        ..      STRH     r0,[r1,#0]
        0x11021ab8:    d007        ..      BEQ      0x11021aca ; GAP_MakeDiscoverable + 158
        0x11021aba:    480b        .H      LDR      r0,[pc,#44] ; [0x11021ae8] = 0x1fff5901
        0x11021abc:    4a09        .J      LDR      r2,[pc,#36] ; [0x11021ae4] = 0xea60
        0x11021abe:    2104        .!      MOVS     r1,#4
        0x11021ac0:    7800        .x      LDRB     r0,[r0,#0]
        0x11021ac2:    f7fffc35    ..5.    BL       $Ven$TT$L$$osal_start_reload_timer ; 0x11021330
        0x11021ac6:    e000        ..      B        0x11021aca ; GAP_MakeDiscoverable + 158
        0x11021ac8:    2413        .$      MOVS     r4,#0x13
        0x11021aca:    4620         F      MOV      r0,r4
        0x11021acc:    bd70        p.      POP      {r4-r6,pc}
    $d
        0x11021ace:    0000        ..      DCW    0
        0x11021ad0:    1fff5918    .Y..    DCD    536828184
        0x11021ad4:    1fff5889    .X..    DCD    536828041
        0x11021ad8:    1fff58e4    .X..    DCD    536828132
        0x11021adc:    1fff588a    .X..    DCD    536828042
        0x11021ae0:    1fff588c    .X..    DCD    536828044
        0x11021ae4:    0000ea60    `...    DCD    60000
        0x11021ae8:    1fff5901    .Y..    DCD    536828161
    $t
    i.GAP_NumActiveConnections
    GAP_NumActiveConnections
        0x11021aec:    b510        ..      PUSH     {r4,lr}
        0x11021aee:    f001fad5    ....    BL       linkDB_NumActive ; 0x1102309c
        0x11021af2:    bd10        ..      POP      {r4,pc}
    i.GAP_ParamsInit
    GAP_ParamsInit
        0x11021af4:    b570        p.      PUSH     {r4-r6,lr}
        0x11021af6:    460c        .F      MOV      r4,r1
        0x11021af8:    4605        .F      MOV      r5,r0
        0x11021afa:    221c        ."      MOVS     r2,#0x1c
        0x11021afc:    2100        .!      MOVS     r1,#0
        0x11021afe:    4809        .H      LDR      r0,[pc,#36] ; [0x11021b24] = 0x1fff5a00
        0x11021b00:    f7fffbaa    ....    BL       $Ven$TT$L$$osal_memset ; 0x11021258
        0x11021b04:    4808        .H      LDR      r0,[pc,#32] ; [0x11021b28] = 0x1fff5888
        0x11021b06:    7005        .p      STRB     r5,[r0,#0]
        0x11021b08:    7044        Dp      STRB     r4,[r0,#1]
        0x11021b0a:    f7fffc17    ....    BL       $Ven$TT$L$$HCI_ReadBDADDRCmd ; 0x1102133c
        0x11021b0e:    4905        .I      LDR      r1,[pc,#20] ; [0x11021b24] = 0x1fff5a00
        0x11021b10:    2800        .(      CMP      r0,#0
        0x11021b12:    d003        ..      BEQ      0x11021b1c ; GAP_ParamsInit + 40
        0x11021b14:    2000        .       MOVS     r0,#0
        0x11021b16:    7008        .p      STRB     r0,[r1,#0]
        0x11021b18:    2012        .       MOVS     r0,#0x12
        0x11021b1a:    bd70        p.      POP      {r4-r6,pc}
        0x11021b1c:    2201        ."      MOVS     r2,#1
        0x11021b1e:    700a        .p      STRB     r2,[r1,#0]
        0x11021b20:    bd70        p.      POP      {r4-r6,pc}
    $d
        0x11021b22:    0000        ..      DCW    0
        0x11021b24:    1fff5a00    .Z..    DCD    536828416
        0x11021b28:    1fff5888    .X..    DCD    536828040
    $t
    i.GAP_PeriDevMgrInit
    GAP_PeriDevMgrInit
        0x11021b2c:    b570        p.      PUSH     {r4-r6,lr}
        0x11021b2e:    4c0f        .L      LDR      r4,[pc,#60] ; [0x11021b6c] = 0x1fff58e4
        0x11021b30:    2500        .%      MOVS     r5,#0
        0x11021b32:    68a0        .h      LDR      r0,[r4,#8]
        0x11021b34:    2800        .(      CMP      r0,#0
        0x11021b36:    d002        ..      BEQ      0x11021b3e ; GAP_PeriDevMgrInit + 18
        0x11021b38:    f7fffc06    ....    BL       $Ven$TT$L$$osal_mem_free ; 0x11021348
        0x11021b3c:    60a5        .`      STR      r5,[r4,#8]
        0x11021b3e:    68e0        .h      LDR      r0,[r4,#0xc]
        0x11021b40:    2800        .(      CMP      r0,#0
        0x11021b42:    d002        ..      BEQ      0x11021b4a ; GAP_PeriDevMgrInit + 30
        0x11021b44:    f7fffc00    ....    BL       $Ven$TT$L$$osal_mem_free ; 0x11021348
        0x11021b48:    60e5        .`      STR      r5,[r4,#0xc]
        0x11021b4a:    4809        .H      LDR      r0,[pc,#36] ; [0x11021b70] = 0x1fff5889
        0x11021b4c:    2105        .!      MOVS     r1,#5
        0x11021b4e:    7800        .x      LDRB     r0,[r0,#0]
        0x11021b50:    4208        .B      TST      r0,r1
        0x11021b52:    d006        ..      BEQ      0x11021b62 ; GAP_PeriDevMgrInit + 54
        0x11021b54:    4805        .H      LDR      r0,[pc,#20] ; [0x11021b6c] = 0x1fff58e4
        0x11021b56:    3010        .0      ADDS     r0,r0,#0x10
        0x11021b58:    f000feec    ....    BL       gapRegisterPeripheral ; 0x11022934
        0x11021b5c:    f000f9ac    ....    BL       gapAllocAdvRecs ; 0x11021eb8
        0x11021b60:    bd70        p.      POP      {r4-r6,pc}
        0x11021b62:    2000        .       MOVS     r0,#0
        0x11021b64:    f000fee6    ....    BL       gapRegisterPeripheral ; 0x11022934
        0x11021b68:    2000        .       MOVS     r0,#0
        0x11021b6a:    bd70        p.      POP      {r4-r6,pc}
    $d
        0x11021b6c:    1fff58e4    .X..    DCD    536828132
        0x11021b70:    1fff5889    .X..    DCD    536828041
    $t
    i.GAP_ProcessEvent
    GAP_ProcessEvent
        0x11021b74:    b5fe        ..      PUSH     {r1-r7,lr}
        0x11021b76:    4d34        4M      LDR      r5,[pc,#208] ; [0x11021c48] = 0x1fff5900
        0x11021b78:    460c        .F      MOV      r4,r1
        0x11021b7a:    0408        ..      LSLS     r0,r1,#16
        0x11021b7c:    d519        ..      BPL      0x11021bb2 ; GAP_ProcessEvent + 62
        0x11021b7e:    7868        hx      LDRB     r0,[r5,#1]
        0x11021b80:    f7fffb5e    ..^.    BL       $Ven$TT$L$$osal_msg_receive ; 0x11021240
        0x11021b84:    2101        .!      MOVS     r1,#1
        0x11021b86:    03c9        ..      LSLS     r1,r1,#15
        0x11021b88:    404c        L@      EORS     r4,r4,r1
        0x11021b8a:    4606        .F      MOV      r6,r0
        0x11021b8c:    2800        .(      CMP      r0,#0
        0x11021b8e:    d00e        ..      BEQ      0x11021bae ; GAP_ProcessEvent + 58
        0x11021b90:    f000fdba    ....    BL       gapProcessOSALMsg ; 0x11022708
        0x11021b94:    2800        .(      CMP      r0,#0
        0x11021b96:    d107        ..      BNE      0x11021ba8 ; GAP_ProcessEvent + 52
        0x11021b98:    7828        (x      LDRB     r0,[r5,#0]
        0x11021b9a:    28ff        .(      CMP      r0,#0xff
        0x11021b9c:    d004        ..      BEQ      0x11021ba8 ; GAP_ProcessEvent + 52
        0x11021b9e:    4631        1F      MOV      r1,r6
        0x11021ba0:    f7fffbd8    ....    BL       $Ven$TT$L$$osal_msg_send ; 0x11021354
        0x11021ba4:    2800        .(      CMP      r0,#0
        0x11021ba6:    d002        ..      BEQ      0x11021bae ; GAP_ProcessEvent + 58
        0x11021ba8:    4630        0F      MOV      r0,r6
        0x11021baa:    f7fffb4f    ..O.    BL       $Ven$TT$L$$osal_msg_deallocate ; 0x1102124c
        0x11021bae:    4620         F      MOV      r0,r4
        0x11021bb0:    bdfe        ..      POP      {r1-r7,pc}
        0x11021bb2:    07e0        ..      LSLS     r0,r4,#31
        0x11021bb4:    2701        .'      MOVS     r7,#1
        0x11021bb6:    2800        .(      CMP      r0,#0
        0x11021bb8:    d00a        ..      BEQ      0x11021bd0 ; GAP_ProcessEvent + 92
        0x11021bba:    68a8        .h      LDR      r0,[r5,#8]
        0x11021bbc:    2800        .(      CMP      r0,#0
        0x11021bbe:    d004        ..      BEQ      0x11021bca ; GAP_ProcessEvent + 86
        0x11021bc0:    6841        Ah      LDR      r1,[r0,#4]
        0x11021bc2:    2900        .)      CMP      r1,#0
        0x11021bc4:    d001        ..      BEQ      0x11021bca ; GAP_ProcessEvent + 86
        0x11021bc6:    2000        .       MOVS     r0,#0
        0x11021bc8:    4788        .G      BLX      r1
        0x11021bca:    4620         F      MOV      r0,r4
        0x11021bcc:    4078        x@      EORS     r0,r0,r7
        0x11021bce:    bdfe        ..      POP      {r1-r7,pc}
        0x11021bd0:    07a0        ..      LSLS     r0,r4,#30
        0x11021bd2:    d509        ..      BPL      0x11021be8 ; GAP_ProcessEvent + 116
        0x11021bd4:    6868        hh      LDR      r0,[r5,#4]
        0x11021bd6:    2800        .(      CMP      r0,#0
        0x11021bd8:    d004        ..      BEQ      0x11021be4 ; GAP_ProcessEvent + 112
        0x11021bda:    6841        Ah      LDR      r1,[r0,#4]
        0x11021bdc:    2900        .)      CMP      r1,#0
        0x11021bde:    d001        ..      BEQ      0x11021be4 ; GAP_ProcessEvent + 112
        0x11021be0:    2001        .       MOVS     r0,#1
        0x11021be2:    4788        .G      BLX      r1
        0x11021be4:    2002        .       MOVS     r0,#2
        0x11021be6:    e02a        *.      B        0x11021c3e ; GAP_ProcessEvent + 202
        0x11021be8:    0760        `.      LSLS     r0,r4,#29
        0x11021bea:    d52a        *.      BPL      0x11021c42 ; GAP_ProcessEvent + 206
        0x11021bec:    4e17        .N      LDR      r6,[pc,#92] ; [0x11021c4c] = 0x1fff588c
        0x11021bee:    8830        0.      LDRH     r0,[r6,#0]
        0x11021bf0:    2800        .(      CMP      r0,#0
        0x11021bf2:    d01f        ..      BEQ      0x11021c34 ; GAP_ProcessEvent + 192
        0x11021bf4:    1e40        @.      SUBS     r0,r0,#1
        0x11021bf6:    0400        ..      LSLS     r0,r0,#16
        0x11021bf8:    0c00        ..      LSRS     r0,r0,#16
        0x11021bfa:    8030        0.      STRH     r0,[r6,#0]
        0x11021bfc:    d11e        ..      BNE      0x11021c3c ; GAP_ProcessEvent + 200
        0x11021bfe:    f000fab7    ....    BL       gapIsAdvertising ; 0x11022170
        0x11021c02:    2800        .(      CMP      r0,#0
        0x11021c04:    d009        ..      BEQ      0x11021c1a ; GAP_ProcessEvent + 166
        0x11021c06:    4812        .H      LDR      r0,[pc,#72] ; [0x11021c50] = 0x1fff588b
        0x11021c08:    7007        .p      STRB     r7,[r0,#0]
        0x11021c0a:    6868        hh      LDR      r0,[r5,#4]
        0x11021c0c:    2800        .(      CMP      r0,#0
        0x11021c0e:    d004        ..      BEQ      0x11021c1a ; GAP_ProcessEvent + 166
        0x11021c10:    6841        Ah      LDR      r1,[r0,#4]
        0x11021c12:    2900        .)      CMP      r1,#0
        0x11021c14:    d001        ..      BEQ      0x11021c1a ; GAP_ProcessEvent + 166
        0x11021c16:    2001        .       MOVS     r0,#1
        0x11021c18:    4788        .G      BLX      r1
        0x11021c1a:    f000faa3    ....    BL       gapGetIRK ; 0x11022164
        0x11021c1e:    4669        iF      MOV      r1,sp
        0x11021c20:    f000f902    ....    BL       SM_CalcRandomAddr ; 0x11021e28
        0x11021c24:    4668        hF      MOV      r0,sp
        0x11021c26:    f000fd59    ..Y.    BL       gapProcessNewAddr ; 0x110226dc
        0x11021c2a:    201d        .       MOVS     r0,#0x1d
        0x11021c2c:    f7fffee2    ....    BL       GAP_GetParamValue ; 0x110219f4
        0x11021c30:    8030        0.      STRH     r0,[r6,#0]
        0x11021c32:    e003        ..      B        0x11021c3c ; GAP_ProcessEvent + 200
        0x11021c34:    2104        .!      MOVS     r1,#4
        0x11021c36:    7868        hx      LDRB     r0,[r5,#1]
        0x11021c38:    f7fffb14    ....    BL       $Ven$TT$L$$osal_stop_timerEx ; 0x11021264
        0x11021c3c:    2004        .       MOVS     r0,#4
        0x11021c3e:    4060        `@      EORS     r0,r0,r4
        0x11021c40:    bdfe        ..      POP      {r1-r7,pc}
        0x11021c42:    2000        .       MOVS     r0,#0
        0x11021c44:    bdfe        ..      POP      {r1-r7,pc}
    $d
        0x11021c46:    0000        ..      DCW    0
        0x11021c48:    1fff5900    .Y..    DCD    536828160
        0x11021c4c:    1fff588c    .X..    DCD    536828044
        0x11021c50:    1fff588b    .X..    DCD    536828043
    $t
    i.GAP_RegisterForHCIMsgs
    GAP_RegisterForHCIMsgs
        0x11021c54:    4901        .I      LDR      r1,[pc,#4] ; [0x11021c5c] = 0x1fff5900
        0x11021c56:    7008        .p      STRB     r0,[r1,#0]
        0x11021c58:    4770        pG      BX       lr
    $d
        0x11021c5a:    0000        ..      DCW    0
        0x11021c5c:    1fff5900    .Y..    DCD    536828160
    $t
    i.GAP_SetParamValue
    GAP_SetParamValue
        0x11021c60:    2827        '(      CMP      r0,#0x27
        0x11021c62:    d207        ..      BCS      0x11021c74 ; GAP_SetParamValue + 20
        0x11021c64:    4a04        .J      LDR      r2,[pc,#16] ; [0x11021c78] = 0xffff
        0x11021c66:    4291        .B      CMP      r1,r2
        0x11021c68:    d004        ..      BEQ      0x11021c74 ; GAP_SetParamValue + 20
        0x11021c6a:    4a04        .J      LDR      r2,[pc,#16] ; [0x11021c7c] = 0x1fff5894
        0x11021c6c:    0040        @.      LSLS     r0,r0,#1
        0x11021c6e:    5211        .R      STRH     r1,[r2,r0]
        0x11021c70:    2000        .       MOVS     r0,#0
        0x11021c72:    4770        pG      BX       lr
        0x11021c74:    2002        .       MOVS     r0,#2
        0x11021c76:    4770        pG      BX       lr
    $d
        0x11021c78:    0000ffff    ....    DCD    65535
        0x11021c7c:    1fff5894    .X..    DCD    536828052
    $t
    i.GAP_UpdateAdvertisingData
    GAP_UpdateAdvertisingData
        0x11021c80:    b5f8        ..      PUSH     {r3-r7,lr}
        0x11021c82:    460e        .F      MOV      r6,r1
        0x11021c84:    4601        .F      MOV      r1,r0
        0x11021c86:    4819        .H      LDR      r0,[pc,#100] ; [0x11021cec] = 0x1fff5889
        0x11021c88:    4615        .F      MOV      r5,r2
        0x11021c8a:    7800        .x      LDRB     r0,[r0,#0]
        0x11021c8c:    2205        ."      MOVS     r2,#5
        0x11021c8e:    461f        .F      MOV      r7,r3
        0x11021c90:    4010        .@      ANDS     r0,r0,r2
        0x11021c92:    d028        (.      BEQ      0x11021ce6 ; GAP_UpdateAdvertisingData + 102
        0x11021c94:    4330        0C      ORRS     r0,r0,r6
        0x11021c96:    d026        &.      BEQ      0x11021ce6 ; GAP_UpdateAdvertisingData + 102
        0x11021c98:    4815        .H      LDR      r0,[pc,#84] ; [0x11021cf0] = 0x1fff58e4
        0x11021c9a:    2e01        ..      CMP      r6,#1
        0x11021c9c:    d01b        ..      BEQ      0x11021cd6 ; GAP_UpdateAdvertisingData + 86
        0x11021c9e:    68c4        .h      LDR      r4,[r0,#0xc]
        0x11021ca0:    2c00        .,      CMP      r4,#0
        0x11021ca2:    d020         .      BEQ      0x11021ce6 ; GAP_UpdateAdvertisingData + 102
        0x11021ca4:    2d1f        .-      CMP      r5,#0x1f
        0x11021ca6:    d818        ..      BHI      0x11021cda ; GAP_UpdateAdvertisingData + 90
        0x11021ca8:    2d00        .-      CMP      r5,#0
        0x11021caa:    d001        ..      BEQ      0x11021cb0 ; GAP_UpdateAdvertisingData + 48
        0x11021cac:    2f00        ./      CMP      r7,#0
        0x11021cae:    d014        ..      BEQ      0x11021cda ; GAP_UpdateAdvertisingData + 90
        0x11021cb0:    7001        .p      STRB     r1,[r0,#0]
        0x11021cb2:    221f        ."      MOVS     r2,#0x1f
        0x11021cb4:    2100        .!      MOVS     r1,#0
        0x11021cb6:    1c60        `.      ADDS     r0,r4,#1
        0x11021cb8:    f7ffface    ....    BL       $Ven$TT$L$$osal_memset ; 0x11021258
        0x11021cbc:    462a        *F      MOV      r2,r5
        0x11021cbe:    4639        9F      MOV      r1,r7
        0x11021cc0:    1c60        `.      ADDS     r0,r4,#1
        0x11021cc2:    f7fffa99    ....    BL       $Ven$TT$L$$osal_memcpy ; 0x110211f8
        0x11021cc6:    4628        (F      MOV      r0,r5
        0x11021cc8:    7025        %p      STRB     r5,[r4,#0]
        0x11021cca:    2e00        ..      CMP      r6,#0
        0x11021ccc:    d007        ..      BEQ      0x11021cde ; GAP_UpdateAdvertisingData + 94
        0x11021cce:    1c61        a.      ADDS     r1,r4,#1
        0x11021cd0:    f7fffb46    ..F.    BL       $Ven$TT$L$$HCI_LE_SetAdvDataCmd ; 0x11021360
        0x11021cd4:    bdf8        ..      POP      {r3-r7,pc}
        0x11021cd6:    6884        .h      LDR      r4,[r0,#8]
        0x11021cd8:    e7e2        ..      B        0x11021ca0 ; GAP_UpdateAdvertisingData + 32
        0x11021cda:    2002        .       MOVS     r0,#2
        0x11021cdc:    bdf8        ..      POP      {r3-r7,pc}
        0x11021cde:    1c61        a.      ADDS     r1,r4,#1
        0x11021ce0:    f7fffb44    ..D.    BL       $Ven$TT$L$$HCI_LE_SetScanRspDataCmd ; 0x1102136c
        0x11021ce4:    bdf8        ..      POP      {r3-r7,pc}
        0x11021ce6:    2012        .       MOVS     r0,#0x12
        0x11021ce8:    bdf8        ..      POP      {r3-r7,pc}
    $d
        0x11021cea:    0000        ..      DCW    0
        0x11021cec:    1fff5889    .X..    DCD    536828041
        0x11021cf0:    1fff58e4    .X..    DCD    536828132
    $t
    i.L2CAP_BuildCmdReject
    L2CAP_BuildCmdReject
        0x11021cf4:    780b        .x      LDRB     r3,[r1,#0]
        0x11021cf6:    7003        .p      STRB     r3,[r0,#0]
        0x11021cf8:    880b        ..      LDRH     r3,[r1,#0]
        0x11021cfa:    2202        ."      MOVS     r2,#2
        0x11021cfc:    0a1b        ..      LSRS     r3,r3,#8
        0x11021cfe:    7043        Cp      STRB     r3,[r0,#1]
        0x11021d00:    880b        ..      LDRH     r3,[r1,#0]
        0x11021d02:    1c80        ..      ADDS     r0,r0,#2
        0x11021d04:    2b01        .+      CMP      r3,#1
        0x11021d06:    d002        ..      BEQ      0x11021d0e ; L2CAP_BuildCmdReject + 26
        0x11021d08:    2b02        .+      CMP      r3,#2
        0x11021d0a:    d007        ..      BEQ      0x11021d1c ; L2CAP_BuildCmdReject + 40
        0x11021d0c:    e011        ..      B        0x11021d32 ; L2CAP_BuildCmdReject + 62
        0x11021d0e:    788a        .x      LDRB     r2,[r1,#2]
        0x11021d10:    7002        .p      STRB     r2,[r0,#0]
        0x11021d12:    8849        I.      LDRH     r1,[r1,#2]
        0x11021d14:    0a09        ..      LSRS     r1,r1,#8
        0x11021d16:    7041        Ap      STRB     r1,[r0,#1]
        0x11021d18:    2204        ."      MOVS     r2,#4
        0x11021d1a:    e00a        ..      B        0x11021d32 ; L2CAP_BuildCmdReject + 62
        0x11021d1c:    788a        .x      LDRB     r2,[r1,#2]
        0x11021d1e:    7002        .p      STRB     r2,[r0,#0]
        0x11021d20:    884a        J.      LDRH     r2,[r1,#2]
        0x11021d22:    0a12        ..      LSRS     r2,r2,#8
        0x11021d24:    7042        Bp      STRB     r2,[r0,#1]
        0x11021d26:    790a        .y      LDRB     r2,[r1,#4]
        0x11021d28:    7082        .p      STRB     r2,[r0,#2]
        0x11021d2a:    8889        ..      LDRH     r1,[r1,#4]
        0x11021d2c:    0a09        ..      LSRS     r1,r1,#8
        0x11021d2e:    70c1        .p      STRB     r1,[r0,#3]
        0x11021d30:    2206        ."      MOVS     r2,#6
        0x11021d32:    4610        .F      MOV      r0,r2
        0x11021d34:    4770        pG      BX       lr
    i.L2CAP_BuildParamUpdateRsp
    L2CAP_BuildParamUpdateRsp
        0x11021d36:    780a        .x      LDRB     r2,[r1,#0]
        0x11021d38:    7002        .p      STRB     r2,[r0,#0]
        0x11021d3a:    8809        ..      LDRH     r1,[r1,#0]
        0x11021d3c:    0a09        ..      LSRS     r1,r1,#8
        0x11021d3e:    7041        Ap      STRB     r1,[r0,#1]
        0x11021d40:    2002        .       MOVS     r0,#2
        0x11021d42:    4770        pG      BX       lr
    i.L2CAP_CmdReject
    L2CAP_CmdReject
        0x11021d44:    b508        ..      PUSH     {r3,lr}
        0x11021d46:    4b04        .K      LDR      r3,[pc,#16] ; [0x11021d58] = 0x11021cf5
        0x11021d48:    9300        ..      STR      r3,[sp,#0]
        0x11021d4a:    4613        .F      MOV      r3,r2
        0x11021d4c:    460a        .F      MOV      r2,r1
        0x11021d4e:    2101        .!      MOVS     r1,#1
        0x11021d50:    f001f8fa    ....    BL       l2capSendCmd ; 0x11022f48
        0x11021d54:    bd08        ..      POP      {r3,pc}
    $d
        0x11021d56:    0000        ..      DCW    0
        0x11021d58:    11021cf5    ....    DCD    285351157
    $t
    i.L2CAP_ConnParamUpdateRsp
    L2CAP_ConnParamUpdateRsp
        0x11021d5c:    b508        ..      PUSH     {r3,lr}
        0x11021d5e:    4b04        .K      LDR      r3,[pc,#16] ; [0x11021d70] = 0x11021d37
        0x11021d60:    9300        ..      STR      r3,[sp,#0]
        0x11021d62:    4613        .F      MOV      r3,r2
        0x11021d64:    460a        .F      MOV      r2,r1
        0x11021d66:    2113        .!      MOVS     r1,#0x13
        0x11021d68:    f001f8ee    ....    BL       l2capSendCmd ; 0x11022f48
        0x11021d6c:    bd08        ..      POP      {r3,pc}
    $d
        0x11021d6e:    0000        ..      DCW    0
        0x11021d70:    11021d37    7...    DCD    285351223
    $t
    i.L2CAP_Fragment_bm_alloc
    L2CAP_Fragment_bm_alloc
        0x11021d74:    b510        ..      PUSH     {r4,lr}
        0x11021d76:    f7fffaff    ....    BL       $Ven$TT$L$$LL_TX_bm_alloc ; 0x11021378
        0x11021d7a:    bd10        ..      POP      {r4,pc}
    i.L2CAP_ReassemblePkt_Reset
    L2CAP_ReassemblePkt_Reset
        0x11021d7c:    b570        p.      PUSH     {r4-r6,lr}
        0x11021d7e:    2800        .(      CMP      r0,#0
        0x11021d80:    d10a        ..      BNE      0x11021d98 ; L2CAP_ReassemblePkt_Reset + 28
        0x11021d82:    4c06        .L      LDR      r4,[pc,#24] ; [0x11021d9c] = 0x1fff5a98
        0x11021d84:    2500        .%      MOVS     r5,#0
        0x11021d86:    8025        %.      STRH     r5,[r4,#0]
        0x11021d88:    81a5        ..      STRH     r5,[r4,#0xc]
        0x11021d8a:    80a5        ..      STRH     r5,[r4,#4]
        0x11021d8c:    68a0        .h      LDR      r0,[r4,#8]
        0x11021d8e:    2800        .(      CMP      r0,#0
        0x11021d90:    d002        ..      BEQ      0x11021d98 ; L2CAP_ReassemblePkt_Reset + 28
        0x11021d92:    f7fffaf7    ....    BL       $Ven$TT$L$$osal_bm_free ; 0x11021384
        0x11021d96:    60a5        .`      STR      r5,[r4,#8]
        0x11021d98:    bd70        p.      POP      {r4-r6,pc}
    $d
        0x11021d9a:    0000        ..      DCW    0
        0x11021d9c:    1fff5a98    .Z..    DCD    536828568
    $t
    i.L2CAP_RegisterApp
    L2CAP_RegisterApp
        0x11021da0:    2907        .)      CMP      r1,#7
        0x11021da2:    d007        ..      BEQ      0x11021db4 ; L2CAP_RegisterApp + 20
        0x11021da4:    2905        .)      CMP      r1,#5
        0x11021da6:    d005        ..      BEQ      0x11021db4 ; L2CAP_RegisterApp + 20
        0x11021da8:    2904        .)      CMP      r1,#4
        0x11021daa:    d003        ..      BEQ      0x11021db4 ; L2CAP_RegisterApp + 20
        0x11021dac:    2906        .)      CMP      r1,#6
        0x11021dae:    d001        ..      BEQ      0x11021db4 ; L2CAP_RegisterApp + 20
        0x11021db0:    2002        .       MOVS     r0,#2
        0x11021db2:    4770        pG      BX       lr
        0x11021db4:    4a04        .J      LDR      r2,[pc,#16] ; [0x11021dc8] = 0x1fff5a68
        0x11021db6:    008b        ..      LSLS     r3,r1,#2
        0x11021db8:    189a        ..      ADDS     r2,r3,r2
        0x11021dba:    4613        .F      MOV      r3,r2
        0x11021dbc:    3b40        @;      SUBS     r3,r3,#0x40
        0x11021dbe:    8619        ..      STRH     r1,[r3,#0x30]
        0x11021dc0:    3a20         :      SUBS     r2,r2,#0x20
        0x11021dc2:    7490        .t      STRB     r0,[r2,#0x12]
        0x11021dc4:    2000        .       MOVS     r0,#0
        0x11021dc6:    4770        pG      BX       lr
    $d
        0x11021dc8:    1fff5a68    hZ..    DCD    536828520
    $t
    i.L2CAP_SegmentPkt_Reset
    L2CAP_SegmentPkt_Reset
        0x11021dcc:    b570        p.      PUSH     {r4-r6,lr}
        0x11021dce:    0006        ..      MOVS     r6,r0
        0x11021dd0:    d11b        ..      BNE      0x11021e0a ; L2CAP_SegmentPkt_Reset + 62
        0x11021dd2:    4c0e        .L      LDR      r4,[pc,#56] ; [0x11021e0c] = 0x1fff5aa8
        0x11021dd4:    2500        .%      MOVS     r5,#0
        0x11021dd6:    4621        !F      MOV      r1,r4
        0x11021dd8:    3140        @1      ADDS     r1,r1,#0x40
        0x11021dda:    740d        .t      STRB     r5,[r1,#0x10]
        0x11021ddc:    744d        Mt      STRB     r5,[r1,#0x11]
        0x11021dde:    760d        .v      STRB     r5,[r1,#0x18]
        0x11021de0:    6d60        `m      LDR      r0,[r4,#0x54]
        0x11021de2:    2800        .(      CMP      r0,#0
        0x11021de4:    d002        ..      BEQ      0x11021dec ; L2CAP_SegmentPkt_Reset + 32
        0x11021de6:    f7fffacd    ....    BL       $Ven$TT$L$$osal_bm_free ; 0x11021384
        0x11021dea:    6565        ee      STR      r5,[r4,#0x54]
        0x11021dec:    205c        \       MOVS     r0,#0x5c
        0x11021dee:    2500        .%      MOVS     r5,#0
        0x11021df0:    4346        FC      MULS     r6,r0,r6
        0x11021df2:    1934        4.      ADDS     r4,r6,r4
        0x11021df4:    00e8        ..      LSLS     r0,r5,#3
        0x11021df6:    1820         .      ADDS     r0,r4,r0
        0x11021df8:    6840        @h      LDR      r0,[r0,#4]
        0x11021dfa:    2800        .(      CMP      r0,#0
        0x11021dfc:    d001        ..      BEQ      0x11021e02 ; L2CAP_SegmentPkt_Reset + 54
        0x11021dfe:    f7fffac1    ....    BL       $Ven$TT$L$$osal_bm_free ; 0x11021384
        0x11021e02:    1c6d        m.      ADDS     r5,r5,#1
        0x11021e04:    b2ed        ..      UXTB     r5,r5
        0x11021e06:    2d0a        .-      CMP      r5,#0xa
        0x11021e08:    d3f4        ..      BCC      0x11021df4 ; L2CAP_SegmentPkt_Reset + 40
        0x11021e0a:    bd70        p.      POP      {r4-r6,pc}
    $d
        0x11021e0c:    1fff5aa8    .Z..    DCD    536828584
    $t
    i.L2CAP_bm_alloc
    L2CAP_bm_alloc
        0x11021e10:    b510        ..      PUSH     {r4,lr}
        0x11021e12:    1d00        ..      ADDS     r0,r0,#4
        0x11021e14:    b280        ..      UXTH     r0,r0
        0x11021e16:    f7fffabb    ....    BL       $Ven$TT$L$$HCI_bm_alloc ; 0x11021390
        0x11021e1a:    2800        .(      CMP      r0,#0
        0x11021e1c:    d003        ..      BEQ      0x11021e26 ; L2CAP_bm_alloc + 22
        0x11021e1e:    2103        .!      MOVS     r1,#3
        0x11021e20:    43c9        .C      MVNS     r1,r1
        0x11021e22:    f7fffabb    ....    BL       $Ven$TT$L$$osal_bm_adjust_header ; 0x1102139c
        0x11021e26:    bd10        ..      POP      {r4,pc}
    i.SM_CalcRandomAddr
    SM_CalcRandomAddr
        0x11021e28:    b538        8.      PUSH     {r3-r5,lr}
        0x11021e2a:    460c        .F      MOV      r4,r1
        0x11021e2c:    0005        ..      MOVS     r5,r0
        0x11021e2e:    d014        ..      BEQ      0x11021e5a ; SM_CalcRandomAddr + 50
        0x11021e30:    2c00        .,      CMP      r4,#0
        0x11021e32:    d012        ..      BEQ      0x11021e5a ; SM_CalcRandomAddr + 50
        0x11021e34:    2103        .!      MOVS     r1,#3
        0x11021e36:    4668        hF      MOV      r0,sp
        0x11021e38:    f001f9bc    ....    BL       smGenerateRandBuf ; 0x110231b4
        0x11021e3c:    4669        iF      MOV      r1,sp
        0x11021e3e:    7888        .x      LDRB     r0,[r1,#2]
        0x11021e40:    2140        @!      MOVS     r1,#0x40
        0x11021e42:    0680        ..      LSLS     r0,r0,#26
        0x11021e44:    0e80        ..      LSRS     r0,r0,#26
        0x11021e46:    4308        .C      ORRS     r0,r0,r1
        0x11021e48:    4669        iF      MOV      r1,sp
        0x11021e4a:    7088        .p      STRB     r0,[r1,#2]
        0x11021e4c:    4622        "F      MOV      r2,r4
        0x11021e4e:    4628        (F      MOV      r0,r5
        0x11021e50:    f001f9c3    ....    BL       sm_ah ; 0x110231da
        0x11021e54:    0005        ..      MOVS     r5,r0
        0x11021e56:    d002        ..      BEQ      0x11021e5e ; SM_CalcRandomAddr + 54
        0x11021e58:    e006        ..      B        0x11021e68 ; SM_CalcRandomAddr + 64
        0x11021e5a:    2002        .       MOVS     r0,#2
        0x11021e5c:    bd38        8.      POP      {r3-r5,pc}
        0x11021e5e:    2203        ."      MOVS     r2,#3
        0x11021e60:    4669        iF      MOV      r1,sp
        0x11021e62:    1ce0        ..      ADDS     r0,r4,#3
        0x11021e64:    f7fff9c8    ....    BL       $Ven$TT$L$$osal_memcpy ; 0x110211f8
        0x11021e68:    4628        (F      MOV      r0,r5
        0x11021e6a:    bd38        8.      POP      {r3-r5,pc}
    i.disconnectNext
    disconnectNext
        0x11021e6c:    b510        ..      PUSH     {r4,lr}
        0x11021e6e:    460c        .F      MOV      r4,r1
        0x11021e70:    f001f8da    ....    BL       linkDB_FindFirst ; 0x11023028
        0x11021e74:    2800        .(      CMP      r0,#0
        0x11021e76:    d004        ..      BEQ      0x11021e82 ; disconnectNext + 22
        0x11021e78:    8840        @.      LDRH     r0,[r0,#2]
        0x11021e7a:    4621        !F      MOV      r1,r4
        0x11021e7c:    f7fffa94    ....    BL       $Ven$TT$L$$HCI_DisconnectCmd ; 0x110213a8
        0x11021e80:    bd10        ..      POP      {r4,pc}
        0x11021e82:    2012        .       MOVS     r0,#0x12
        0x11021e84:    bd10        ..      POP      {r4,pc}
    i.gapAddAddrAdj
    gapAddAddrAdj
        0x11021e86:    2200        ."      MOVS     r2,#0
        0x11021e88:    2900        .)      CMP      r1,#0
        0x11021e8a:    d013        ..      BEQ      0x11021eb4 ; gapAddAddrAdj + 46
        0x11021e8c:    2800        .(      CMP      r0,#0
        0x11021e8e:    d011        ..      BEQ      0x11021eb4 ; gapAddAddrAdj + 46
        0x11021e90:    2801        .(      CMP      r0,#1
        0x11021e92:    d006        ..      BEQ      0x11021ea2 ; gapAddAddrAdj + 28
        0x11021e94:    794a        Jy      LDRB     r2,[r1,#5]
        0x11021e96:    0692        ..      LSLS     r2,r2,#26
        0x11021e98:    0e92        ..      LSRS     r2,r2,#26
        0x11021e9a:    714a        Jq      STRB     r2,[r1,#5]
        0x11021e9c:    2803        .(      CMP      r0,#3
        0x11021e9e:    d005        ..      BEQ      0x11021eac ; gapAddAddrAdj + 38
        0x11021ea0:    e007        ..      B        0x11021eb2 ; gapAddAddrAdj + 44
        0x11021ea2:    7948        Hy      LDRB     r0,[r1,#5]
        0x11021ea4:    22c0        ."      MOVS     r2,#0xc0
        0x11021ea6:    4310        .C      ORRS     r0,r0,r2
        0x11021ea8:    7148        Hq      STRB     r0,[r1,#5]
        0x11021eaa:    e002        ..      B        0x11021eb2 ; gapAddAddrAdj + 44
        0x11021eac:    2040        @       MOVS     r0,#0x40
        0x11021eae:    4302        .C      ORRS     r2,r2,r0
        0x11021eb0:    714a        Jq      STRB     r2,[r1,#5]
        0x11021eb2:    2201        ."      MOVS     r2,#1
        0x11021eb4:    4610        .F      MOV      r0,r2
        0x11021eb6:    4770        pG      BX       lr
    i.gapAllocAdvRecs
    gapAllocAdvRecs
        0x11021eb8:    b570        p.      PUSH     {r4-r6,lr}
        0x11021eba:    4812        .H      LDR      r0,[pc,#72] ; [0x11021f04] = 0x1fff5889
        0x11021ebc:    2500        .%      MOVS     r5,#0
        0x11021ebe:    7800        .x      LDRB     r0,[r0,#0]
        0x11021ec0:    2105        .!      MOVS     r1,#5
        0x11021ec2:    4208        .B      TST      r0,r1
        0x11021ec4:    d01b        ..      BEQ      0x11021efe ; gapAllocAdvRecs + 70
        0x11021ec6:    2020                MOVS     r0,#0x20
        0x11021ec8:    f7fffa1a    ....    BL       $Ven$TT$L$$osal_mem_alloc ; 0x11021300
        0x11021ecc:    4c0e        .L      LDR      r4,[pc,#56] ; [0x11021f08] = 0x1fff58e4
        0x11021ece:    2800        .(      CMP      r0,#0
        0x11021ed0:    60a0        .`      STR      r0,[r4,#8]
        0x11021ed2:    d013        ..      BEQ      0x11021efc ; gapAllocAdvRecs + 68
        0x11021ed4:    2220         "      MOVS     r2,#0x20
        0x11021ed6:    2100        .!      MOVS     r1,#0
        0x11021ed8:    f7fff9be    ....    BL       $Ven$TT$L$$osal_memset ; 0x11021258
        0x11021edc:    2020                MOVS     r0,#0x20
        0x11021ede:    f7fffa0f    ....    BL       $Ven$TT$L$$osal_mem_alloc ; 0x11021300
        0x11021ee2:    60e0        .`      STR      r0,[r4,#0xc]
        0x11021ee4:    2800        .(      CMP      r0,#0
        0x11021ee6:    d004        ..      BEQ      0x11021ef2 ; gapAllocAdvRecs + 58
        0x11021ee8:    2220         "      MOVS     r2,#0x20
        0x11021eea:    2100        .!      MOVS     r1,#0
        0x11021eec:    f7fff9b4    ....    BL       $Ven$TT$L$$osal_memset ; 0x11021258
        0x11021ef0:    e005        ..      B        0x11021efe ; gapAllocAdvRecs + 70
        0x11021ef2:    68a0        .h      LDR      r0,[r4,#8]
        0x11021ef4:    f7fffa28    ..(.    BL       $Ven$TT$L$$osal_mem_free ; 0x11021348
        0x11021ef8:    2000        .       MOVS     r0,#0
        0x11021efa:    60a0        .`      STR      r0,[r4,#8]
        0x11021efc:    2513        .%      MOVS     r5,#0x13
        0x11021efe:    4628        (F      MOV      r0,r5
        0x11021f00:    bd70        p.      POP      {r4-r6,pc}
    $d
        0x11021f02:    0000        ..      DCW    0
        0x11021f04:    1fff5889    .X..    DCD    536828041
        0x11021f08:    1fff58e4    .X..    DCD    536828132
    $t
    i.gapAllocScanRecs
    gapAllocScanRecs
        0x11021f0c:    b570        p.      PUSH     {r4-r6,lr}
        0x11021f0e:    4c10        .L      LDR      r4,[pc,#64] ; [0x11021f50] = 0x1fff5870
        0x11021f10:    6860        `h      LDR      r0,[r4,#4]
        0x11021f12:    2800        .(      CMP      r0,#0
        0x11021f14:    d11a        ..      BNE      0x11021f4c ; gapAllocScanRecs + 64
        0x11021f16:    7820         x      LDRB     r0,[r4,#0]
        0x11021f18:    2800        .(      CMP      r0,#0
        0x11021f1a:    d015        ..      BEQ      0x11021f48 ; gapAllocScanRecs + 60
        0x11021f1c:    0105        ..      LSLS     r5,r0,#4
        0x11021f1e:    4628        (F      MOV      r0,r5
        0x11021f20:    f7fff9ee    ....    BL       $Ven$TT$L$$osal_mem_alloc ; 0x11021300
        0x11021f24:    6060        ``      STR      r0,[r4,#4]
        0x11021f26:    2800        .(      CMP      r0,#0
        0x11021f28:    d010        ..      BEQ      0x11021f4c ; gapAllocScanRecs + 64
        0x11021f2a:    462a        *F      MOV      r2,r5
        0x11021f2c:    2100        .!      MOVS     r1,#0
        0x11021f2e:    f7fff993    ....    BL       $Ven$TT$L$$osal_memset ; 0x11021258
        0x11021f32:    2000        .       MOVS     r0,#0
        0x11021f34:    7822        "x      LDRB     r2,[r4,#0]
        0x11021f36:    23ff        .#      MOVS     r3,#0xff
        0x11021f38:    6861        ah      LDR      r1,[r4,#4]
        0x11021f3a:    e003        ..      B        0x11021f44 ; gapAllocScanRecs + 56
        0x11021f3c:    0104        ..      LSLS     r4,r0,#4
        0x11021f3e:    1c40        @.      ADDS     r0,r0,#1
        0x11021f40:    550b        .U      STRB     r3,[r1,r4]
        0x11021f42:    b2c0        ..      UXTB     r0,r0
        0x11021f44:    4290        .B      CMP      r0,r2
        0x11021f46:    d3f9        ..      BCC      0x11021f3c ; gapAllocScanRecs + 48
        0x11021f48:    2000        .       MOVS     r0,#0
        0x11021f4a:    bd70        p.      POP      {r4-r6,pc}
        0x11021f4c:    2013        .       MOVS     r0,#0x13
        0x11021f4e:    bd70        p.      POP      {r4-r6,pc}
    $d
        0x11021f50:    1fff5870    pX..    DCD    536828016
    $t
    i.gapCancelLinkReq
    gapCancelLinkReq
        0x11021f54:    b510        ..      PUSH     {r4,lr}
        0x11021f56:    4a0d        .J      LDR      r2,[pc,#52] ; [0x11021f8c] = 0x1fff5920
        0x11021f58:    4603        .F      MOV      r3,r0
        0x11021f5a:    4c0b        .L      LDR      r4,[pc,#44] ; [0x11021f88] = 0xfffe
        0x11021f5c:    2012        .       MOVS     r0,#0x12
        0x11021f5e:    6812        .h      LDR      r2,[r2,#0]
        0x11021f60:    42a1        .B      CMP      r1,r4
        0x11021f62:    d109        ..      BNE      0x11021f78 ; gapCancelLinkReq + 36
        0x11021f64:    2a00        .*      CMP      r2,#0
        0x11021f66:    d004        ..      BEQ      0x11021f72 ; gapCancelLinkReq + 30
        0x11021f68:    7810        .x      LDRB     r0,[r2,#0]
        0x11021f6a:    4298        .B      CMP      r0,r3
        0x11021f6c:    d102        ..      BNE      0x11021f74 ; gapCancelLinkReq + 32
        0x11021f6e:    f7fffa21    ..!.    BL       $Ven$TT$L$$HCI_LE_CreateConnCancelCmd ; 0x110213b4
        0x11021f72:    bd10        ..      POP      {r4,pc}
        0x11021f74:    2003        .       MOVS     r0,#3
        0x11021f76:    bd10        ..      POP      {r4,pc}
        0x11021f78:    4b03        .K      LDR      r3,[pc,#12] ; [0x11021f88] = 0xfffe
        0x11021f7a:    1c5b        [.      ADDS     r3,r3,#1
        0x11021f7c:    4299        .B      CMP      r1,r3
        0x11021f7e:    d1fa        ..      BNE      0x11021f76 ; gapCancelLinkReq + 34
        0x11021f80:    2a00        .*      CMP      r2,#0
        0x11021f82:    d1f4        ..      BNE      0x11021f6e ; gapCancelLinkReq + 26
        0x11021f84:    bd10        ..      POP      {r4,pc}
    $d
        0x11021f86:    0000        ..      DCW    0
        0x11021f88:    0000fffe    ....    DCD    65534
        0x11021f8c:    1fff5920     Y..    DCD    536828192
    $t
    i.gapCentProcessHCICmdEvt
    gapCentProcessHCICmdEvt
        0x11021f90:    4602        .F      MOV      r2,r0
        0x11021f92:    4b09        .K      LDR      r3,[pc,#36] ; [0x11021fb8] = 0xffffdff5
        0x11021f94:    b510        ..      PUSH     {r4,lr}
        0x11021f96:    2001        .       MOVS     r0,#1
        0x11021f98:    18d2        ..      ADDS     r2,r2,r3
        0x11021f9a:    d007        ..      BEQ      0x11021fac ; gapCentProcessHCICmdEvt + 28
        0x11021f9c:    2a01        .*      CMP      r2,#1
        0x11021f9e:    d001        ..      BEQ      0x11021fa4 ; gapCentProcessHCICmdEvt + 20
        0x11021fa0:    2000        .       MOVS     r0,#0
        0x11021fa2:    bd10        ..      POP      {r4,pc}
        0x11021fa4:    688a        .h      LDR      r2,[r1,#8]
        0x11021fa6:    7812        .x      LDRB     r2,[r2,#0]
        0x11021fa8:    2a00        .*      CMP      r2,#0
        0x11021faa:    d0fa        ..      BEQ      0x11021fa2 ; gapCentProcessHCICmdEvt + 18
        0x11021fac:    6888        .h      LDR      r0,[r1,#8]
        0x11021fae:    7800        .x      LDRB     r0,[r0,#0]
        0x11021fb0:    f000fe30    ..0.    BL       gapSetScanParamStatus ; 0x11022c14
        0x11021fb4:    bd10        ..      POP      {r4,pc}
    $d
        0x11021fb6:    0000        ..      DCW    0
        0x11021fb8:    ffffdff5    ....    DCD    4294959093
    $t
    i.gapDetermineAddrType
    gapDetermineAddrType
        0x11021fbc:    2900        .)      CMP      r1,#0
        0x11021fbe:    d009        ..      BEQ      0x11021fd4 ; gapDetermineAddrType + 24
        0x11021fc0:    2801        .(      CMP      r0,#1
        0x11021fc2:    d107        ..      BNE      0x11021fd4 ; gapDetermineAddrType + 24
        0x11021fc4:    7949        Iy      LDRB     r1,[r1,#5]
        0x11021fc6:    0989        ..      LSRS     r1,r1,#6
        0x11021fc8:    0189        ..      LSLS     r1,r1,#6
        0x11021fca:    29c0        .)      CMP      r1,#0xc0
        0x11021fcc:    d002        ..      BEQ      0x11021fd4 ; gapDetermineAddrType + 24
        0x11021fce:    2940        @)      CMP      r1,#0x40
        0x11021fd0:    d001        ..      BEQ      0x11021fd6 ; gapDetermineAddrType + 26
        0x11021fd2:    2002        .       MOVS     r0,#2
        0x11021fd4:    4770        pG      BX       lr
        0x11021fd6:    2003        .       MOVS     r0,#3
        0x11021fd8:    4770        pG      BX       lr
    i.gapFindADType
    gapFindADType
        0x11021fda:    b5ff        ..      PUSH     {r0-r7,lr}
        0x11021fdc:    2000        .       MOVS     r0,#0
        0x11021fde:    460e        .F      MOV      r6,r1
        0x11021fe0:    7008        .p      STRB     r0,[r1,#0]
        0x11021fe2:    e01a        ..      B        0x1102201a ; gapFindADType + 64
        0x11021fe4:    5c1c        .\      LDRB     r4,[r3,r0]
        0x11021fe6:    1c40        @.      ADDS     r0,r0,#1
        0x11021fe8:    b2c5        ..      UXTB     r5,r0
        0x11021fea:    2c00        .,      CMP      r4,#0
        0x11021fec:    d017        ..      BEQ      0x1102201e ; gapFindADType + 68
        0x11021fee:    1928        (.      ADDS     r0,r5,r4
        0x11021ff0:    4290        .B      CMP      r0,r2
        0x11021ff2:    d814        ..      BHI      0x1102201e ; gapFindADType + 68
        0x11021ff4:    5d5f        _]      LDRB     r7,[r3,r5]
        0x11021ff6:    1c6d        m.      ADDS     r5,r5,#1
        0x11021ff8:    b2ed        ..      UXTB     r5,r5
        0x11021ffa:    4638        8F      MOV      r0,r7
        0x11021ffc:    f000fe36    ..6.    BL       gapValidADType ; 0x11022c6c
        0x11022000:    2800        .(      CMP      r0,#0
        0x11022002:    d006        ..      BEQ      0x11022012 ; gapFindADType + 56
        0x11022004:    1e64        d.      SUBS     r4,r4,#1
        0x11022006:    b2e0        ..      UXTB     r0,r4
        0x11022008:    7030        0p      STRB     r0,[r6,#0]
        0x1102200a:    9900        ..      LDR      r1,[sp,#0]
        0x1102200c:    428f        .B      CMP      r7,r1
        0x1102200e:    d102        ..      BNE      0x11022016 ; gapFindADType + 60
        0x11022010:    1958        X.      ADDS     r0,r3,r5
        0x11022012:    b004        ..      ADD      sp,sp,#0x10
        0x11022014:    bdf0        ..      POP      {r4-r7,pc}
        0x11022016:    1940        @.      ADDS     r0,r0,r5
        0x11022018:    b2c0        ..      UXTB     r0,r0
        0x1102201a:    4290        .B      CMP      r0,r2
        0x1102201c:    d3e2        ..      BCC      0x11021fe4 ; gapFindADType + 10
        0x1102201e:    2000        .       MOVS     r0,#0
        0x11022020:    e7f7        ..      B        0x11022012 ; gapFindADType + 56
        0x11022022:    0000        ..      MOVS     r0,r0
    i.gapFindScanRec
    gapFindScanRec
        0x11022024:    b5f8        ..      PUSH     {r3-r7,lr}
        0x11022026:    4d11        .M      LDR      r5,[pc,#68] ; [0x1102206c] = 0x1fff5870
        0x11022028:    4606        .F      MOV      r6,r0
        0x1102202a:    6868        hh      LDR      r0,[r5,#4]
        0x1102202c:    460f        .F      MOV      r7,r1
        0x1102202e:    2800        .(      CMP      r0,#0
        0x11022030:    d01a        ..      BEQ      0x11022068 ; gapFindScanRec + 68
        0x11022032:    2400        .$      MOVS     r4,#0
        0x11022034:    e015        ..      B        0x11022062 ; gapFindScanRec + 62
        0x11022036:    6869        ih      LDR      r1,[r5,#4]
        0x11022038:    0120         .      LSLS     r0,r4,#4
        0x1102203a:    5c0a        .\      LDRB     r2,[r1,r0]
        0x1102203c:    2aff        .*      CMP      r2,#0xff
        0x1102203e:    d00e        ..      BEQ      0x1102205e ; gapFindScanRec + 58
        0x11022040:    1840        @.      ADDS     r0,r0,r1
        0x11022042:    7841        Ax      LDRB     r1,[r0,#1]
        0x11022044:    42b1        .B      CMP      r1,r6
        0x11022046:    d10a        ..      BNE      0x1102205e ; gapFindScanRec + 58
        0x11022048:    2206        ."      MOVS     r2,#6
        0x1102204a:    4639        9F      MOV      r1,r7
        0x1102204c:    1c80        ..      ADDS     r0,r0,#2
        0x1102204e:    f7fff9b7    ....    BL       $Ven$TT$L$$osal_memcmp ; 0x110213c0
        0x11022052:    2800        .(      CMP      r0,#0
        0x11022054:    d003        ..      BEQ      0x1102205e ; gapFindScanRec + 58
        0x11022056:    6869        ih      LDR      r1,[r5,#4]
        0x11022058:    0120         .      LSLS     r0,r4,#4
        0x1102205a:    1840        @.      ADDS     r0,r0,r1
        0x1102205c:    bdf8        ..      POP      {r3-r7,pc}
        0x1102205e:    1c64        d.      ADDS     r4,r4,#1
        0x11022060:    b2e4        ..      UXTB     r4,r4
        0x11022062:    7828        (x      LDRB     r0,[r5,#0]
        0x11022064:    4284        .B      CMP      r4,r0
        0x11022066:    d3e6        ..      BCC      0x11022036 ; gapFindScanRec + 18
        0x11022068:    2000        .       MOVS     r0,#0
        0x1102206a:    bdf8        ..      POP      {r3-r7,pc}
    $d
        0x1102206c:    1fff5870    pX..    DCD    536828016
    $t
    i.gapFreeAdvertState
    gapFreeAdvertState
        0x11022070:    b510        ..      PUSH     {r4,lr}
        0x11022072:    4c04        .L      LDR      r4,[pc,#16] ; [0x11022084] = 0x1fff5918
        0x11022074:    6820         h      LDR      r0,[r4,#0]
        0x11022076:    2800        .(      CMP      r0,#0
        0x11022078:    d003        ..      BEQ      0x11022082 ; gapFreeAdvertState + 18
        0x1102207a:    f7fff965    ..e.    BL       $Ven$TT$L$$osal_mem_free ; 0x11021348
        0x1102207e:    2000        .       MOVS     r0,#0
        0x11022080:    6020         `      STR      r0,[r4,#0]
        0x11022082:    bd10        ..      POP      {r4,pc}
    $d
        0x11022084:    1fff5918    .Y..    DCD    536828184
    $t
    i.gapFreeAuthLink
    gapFreeAuthLink
        0x11022088:    b570        p.      PUSH     {r4-r6,lr}
        0x1102208a:    4d0e        .M      LDR      r5,[pc,#56] ; [0x110220c4] = 0x1fff5924
        0x1102208c:    0084        ..      LSLS     r4,r0,#2
        0x1102208e:    5928        (Y      LDR      r0,[r5,r4]
        0x11022090:    2800        .(      CMP      r0,#0
        0x11022092:    d015        ..      BEQ      0x110220c0 ; gapFreeAuthLink + 56
        0x11022094:    6a00        .j      LDR      r0,[r0,#0x20]
        0x11022096:    2800        .(      CMP      r0,#0
        0x11022098:    d001        ..      BEQ      0x1102209e ; gapFreeAuthLink + 22
        0x1102209a:    f7fff955    ..U.    BL       $Ven$TT$L$$osal_mem_free ; 0x11021348
        0x1102209e:    5928        (Y      LDR      r0,[r5,r4]
        0x110220a0:    6a40        @j      LDR      r0,[r0,#0x24]
        0x110220a2:    2800        .(      CMP      r0,#0
        0x110220a4:    d001        ..      BEQ      0x110220aa ; gapFreeAuthLink + 34
        0x110220a6:    f7fff94f    ..O.    BL       $Ven$TT$L$$osal_mem_free ; 0x11021348
        0x110220aa:    5928        (Y      LDR      r0,[r5,r4]
        0x110220ac:    6a80        .j      LDR      r0,[r0,#0x28]
        0x110220ae:    2800        .(      CMP      r0,#0
        0x110220b0:    d001        ..      BEQ      0x110220b6 ; gapFreeAuthLink + 46
        0x110220b2:    f7fff949    ..I.    BL       $Ven$TT$L$$osal_mem_free ; 0x11021348
        0x110220b6:    5928        (Y      LDR      r0,[r5,r4]
        0x110220b8:    f7fff946    ..F.    BL       $Ven$TT$L$$osal_mem_free ; 0x11021348
        0x110220bc:    2000        .       MOVS     r0,#0
        0x110220be:    5128        (Q      STR      r0,[r5,r4]
        0x110220c0:    bd70        p.      POP      {r4-r6,pc}
    $d
        0x110220c2:    0000        ..      DCW    0
        0x110220c4:    1fff5924    $Y..    DCD    536828196
    $t
    i.gapFreeEstLink
    gapFreeEstLink
        0x110220c8:    b510        ..      PUSH     {r4,lr}
        0x110220ca:    4c04        .L      LDR      r4,[pc,#16] ; [0x110220dc] = 0x1fff591c
        0x110220cc:    6860        `h      LDR      r0,[r4,#4]
        0x110220ce:    2800        .(      CMP      r0,#0
        0x110220d0:    d003        ..      BEQ      0x110220da ; gapFreeEstLink + 18
        0x110220d2:    f7fff939    ..9.    BL       $Ven$TT$L$$osal_mem_free ; 0x11021348
        0x110220d6:    2000        .       MOVS     r0,#0
        0x110220d8:    6060        ``      STR      r0,[r4,#4]
        0x110220da:    bd10        ..      POP      {r4,pc}
    $d
        0x110220dc:    1fff591c    .Y..    DCD    536828188
    $t
    i.gapFreeScanRecs
    gapFreeScanRecs
        0x110220e0:    b5f3        ..      PUSH     {r0,r1,r4-r7,lr}
        0x110220e2:    4c1f        .L      LDR      r4,[pc,#124] ; [0x11022160] = 0x1fff5870
        0x110220e4:    4606        .F      MOV      r6,r0
        0x110220e6:    6860        `h      LDR      r0,[r4,#4]
        0x110220e8:    b081        ..      SUB      sp,sp,#4
        0x110220ea:    2800        .(      CMP      r0,#0
        0x110220ec:    d024        $.      BEQ      0x11022138 ; gapFreeScanRecs + 88
        0x110220ee:    2500        .%      MOVS     r5,#0
        0x110220f0:    e018        ..      B        0x11022124 ; gapFreeScanRecs + 68
        0x110220f2:    6860        `h      LDR      r0,[r4,#4]
        0x110220f4:    012f        /.      LSLS     r7,r5,#4
        0x110220f6:    1838        8.      ADDS     r0,r7,r0
        0x110220f8:    6880        .h      LDR      r0,[r0,#8]
        0x110220fa:    2800        .(      CMP      r0,#0
        0x110220fc:    d005        ..      BEQ      0x1102210a ; gapFreeScanRecs + 42
        0x110220fe:    f7fff923    ..#.    BL       $Ven$TT$L$$osal_mem_free ; 0x11021348
        0x11022102:    6861        ah      LDR      r1,[r4,#4]
        0x11022104:    2000        .       MOVS     r0,#0
        0x11022106:    1879        y.      ADDS     r1,r7,r1
        0x11022108:    6088        .`      STR      r0,[r1,#8]
        0x1102210a:    6860        `h      LDR      r0,[r4,#4]
        0x1102210c:    1838        8.      ADDS     r0,r7,r0
        0x1102210e:    68c0        .h      LDR      r0,[r0,#0xc]
        0x11022110:    2800        .(      CMP      r0,#0
        0x11022112:    d005        ..      BEQ      0x11022120 ; gapFreeScanRecs + 64
        0x11022114:    f7fff918    ....    BL       $Ven$TT$L$$osal_mem_free ; 0x11021348
        0x11022118:    6861        ah      LDR      r1,[r4,#4]
        0x1102211a:    2000        .       MOVS     r0,#0
        0x1102211c:    1879        y.      ADDS     r1,r7,r1
        0x1102211e:    60c8        .`      STR      r0,[r1,#0xc]
        0x11022120:    1c6d        m.      ADDS     r5,r5,#1
        0x11022122:    b2ed        ..      UXTB     r5,r5
        0x11022124:    42b5        .B      CMP      r5,r6
        0x11022126:    d3e4        ..      BCC      0x110220f2 ; gapFreeScanRecs + 18
        0x11022128:    9802        ..      LDR      r0,[sp,#8]
        0x1102212a:    2800        .(      CMP      r0,#0
        0x1102212c:    d005        ..      BEQ      0x1102213a ; gapFreeScanRecs + 90
        0x1102212e:    6860        `h      LDR      r0,[r4,#4]
        0x11022130:    f7fff90a    ....    BL       $Ven$TT$L$$osal_mem_free ; 0x11021348
        0x11022134:    2000        .       MOVS     r0,#0
        0x11022136:    6060        ``      STR      r0,[r4,#4]
        0x11022138:    bdfe        ..      POP      {r1-r7,pc}
        0x1102213a:    6860        `h      LDR      r0,[r4,#4]
        0x1102213c:    0132        2.      LSLS     r2,r6,#4
        0x1102213e:    2800        .(      CMP      r0,#0
        0x11022140:    d0fa        ..      BEQ      0x11022138 ; gapFreeScanRecs + 88
        0x11022142:    2100        .!      MOVS     r1,#0
        0x11022144:    f7fff888    ....    BL       $Ven$TT$L$$osal_memset ; 0x11021258
        0x11022148:    2100        .!      MOVS     r1,#0
        0x1102214a:    22ff        ."      MOVS     r2,#0xff
        0x1102214c:    6860        `h      LDR      r0,[r4,#4]
        0x1102214e:    e003        ..      B        0x11022158 ; gapFreeScanRecs + 120
        0x11022150:    010b        ..      LSLS     r3,r1,#4
        0x11022152:    1c49        I.      ADDS     r1,r1,#1
        0x11022154:    54c2        .T      STRB     r2,[r0,r3]
        0x11022156:    b2c9        ..      UXTB     r1,r1
        0x11022158:    42b1        .B      CMP      r1,r6
        0x1102215a:    d3f9        ..      BCC      0x11022150 ; gapFreeScanRecs + 112
        0x1102215c:    bdfe        ..      POP      {r1-r7,pc}
    $d
        0x1102215e:    0000        ..      DCW    0
        0x11022160:    1fff5870    pX..    DCD    536828016
    $t
    i.gapGetIRK
    gapGetIRK
        0x11022164:    4801        .H      LDR      r0,[pc,#4] ; [0x1102216c] = 0x1fff5a00
        0x11022166:    6840        @h      LDR      r0,[r0,#4]
        0x11022168:    4770        pG      BX       lr
    $d
        0x1102216a:    0000        ..      DCW    0
        0x1102216c:    1fff5a00    .Z..    DCD    536828416
    $t
    i.gapIsAdvertising
    gapIsAdvertising
        0x11022170:    4802        .H      LDR      r0,[pc,#8] ; [0x1102217c] = 0x1fff5914
        0x11022172:    6840        @h      LDR      r0,[r0,#4]
        0x11022174:    2800        .(      CMP      r0,#0
        0x11022176:    d000        ..      BEQ      0x1102217a ; gapIsAdvertising + 10
        0x11022178:    2001        .       MOVS     r0,#1
        0x1102217a:    4770        pG      BX       lr
    $d
        0x1102217c:    1fff5914    .Y..    DCD    536828180
    $t
    i.gapPeriProcessHCICmdCompleteEvt
    gapPeriProcessHCICmdCompleteEvt
        0x11022180:    b510        ..      PUSH     {r4,lr}
        0x11022182:    8881        ..      LDRH     r1,[r0,#4]
        0x11022184:    4b1f        .K      LDR      r3,[pc,#124] ; [0x11022204] = 0x2053
        0x11022186:    2401        .$      MOVS     r4,#1
        0x11022188:    1aca        ..      SUBS     r2,r1,r3
        0x1102218a:    4299        .B      CMP      r1,r3
        0x1102218c:    d037        7.      BEQ      0x110221fe ; gapPeriProcessHCICmdCompleteEvt + 126
        0x1102218e:    dc11        ..      BGT      0x110221b4 ; gapPeriProcessHCICmdCompleteEvt + 52
        0x11022190:    4b1d        .K      LDR      r3,[pc,#116] ; [0x11022208] = 0x200a
        0x11022192:    1aca        ..      SUBS     r2,r1,r3
        0x11022194:    4299        .B      CMP      r1,r3
        0x11022196:    d019        ..      BEQ      0x110221cc ; gapPeriProcessHCICmdCompleteEvt + 76
        0x11022198:    dc07        ..      BGT      0x110221aa ; gapPeriProcessHCICmdCompleteEvt + 42
        0x1102219a:    4a1c        .J      LDR      r2,[pc,#112] ; [0x1102220c] = 0xffffdffa
        0x1102219c:    188a        ..      ADDS     r2,r1,r2
        0x1102219e:    d010        ..      BEQ      0x110221c2 ; gapPeriProcessHCICmdCompleteEvt + 66
        0x110221a0:    2a02        .*      CMP      r2,#2
        0x110221a2:    d01e        ..      BEQ      0x110221e2 ; gapPeriProcessHCICmdCompleteEvt + 98
        0x110221a4:    2a03        .*      CMP      r2,#3
        0x110221a6:    d129        ).      BNE      0x110221fc ; gapPeriProcessHCICmdCompleteEvt + 124
        0x110221a8:    e01b        ..      B        0x110221e2 ; gapPeriProcessHCICmdCompleteEvt + 98
        0x110221aa:    2a47        G*      CMP      r2,#0x47
        0x110221ac:    d027        '.      BEQ      0x110221fe ; gapPeriProcessHCICmdCompleteEvt + 126
        0x110221ae:    2a48        H*      CMP      r2,#0x48
        0x110221b0:    d124        $.      BNE      0x110221fc ; gapPeriProcessHCICmdCompleteEvt + 124
        0x110221b2:    e024        $.      B        0x110221fe ; gapPeriProcessHCICmdCompleteEvt + 126
        0x110221b4:    0013        ..      MOVS     r3,r2
        0x110221b6:    f7fff909    ....    BL       $Ven$TT$L$$__ARM_common_switch8 ; 0x110213cc
    $d
        0x110221ba:    2106        .!      DCW    8454
        0x110221bc:    22222222    """"    DCD    572662306
        0x110221c0:    2122        "!      DCW    8482
    $t
        0x110221c2:    6880        .h      LDR      r0,[r0,#8]
        0x110221c4:    7800        .x      LDRB     r0,[r0,#0]
        0x110221c6:    f000fd0f    ....    BL       gapSetAdvParamsStatus ; 0x11022be8
        0x110221ca:    e008        ..      B        0x110221de ; gapPeriProcessHCICmdCompleteEvt + 94
        0x110221cc:    6880        .h      LDR      r0,[r0,#8]
        0x110221ce:    7882        .x      LDRB     r2,[r0,#2]
        0x110221d0:    7841        Ax      LDRB     r1,[r0,#1]
        0x110221d2:    0212        ..      LSLS     r2,r2,#8
        0x110221d4:    1889        ..      ADDS     r1,r1,r2
        0x110221d6:    b289        ..      UXTH     r1,r1
        0x110221d8:    7800        .x      LDRB     r0,[r0,#0]
        0x110221da:    f000fd69    ..i.    BL       gapWriteAdvEnableStatus ; 0x11022cb0
        0x110221de:    4604        .F      MOV      r4,r0
        0x110221e0:    e00d        ..      B        0x110221fe ; gapPeriProcessHCICmdCompleteEvt + 126
        0x110221e2:    4a09        .J      LDR      r2,[pc,#36] ; [0x11022208] = 0x200a
        0x110221e4:    1e92        ..      SUBS     r2,r2,#2
        0x110221e6:    4291        .B      CMP      r1,r2
        0x110221e8:    d101        ..      BNE      0x110221ee ; gapPeriProcessHCICmdCompleteEvt + 110
        0x110221ea:    2201        ."      MOVS     r2,#1
        0x110221ec:    e000        ..      B        0x110221f0 ; gapPeriProcessHCICmdCompleteEvt + 112
        0x110221ee:    2200        ."      MOVS     r2,#0
        0x110221f0:    6880        .h      LDR      r0,[r0,#8]
        0x110221f2:    7801        .x      LDRB     r1,[r0,#0]
        0x110221f4:    4610        .F      MOV      r0,r2
        0x110221f6:    f000fd43    ..C.    BL       gapWriteAdvDataStatus ; 0x11022c80
        0x110221fa:    e000        ..      B        0x110221fe ; gapPeriProcessHCICmdCompleteEvt + 126
        0x110221fc:    2400        .$      MOVS     r4,#0
        0x110221fe:    4620         F      MOV      r0,r4
        0x11022200:    bd10        ..      POP      {r4,pc}
    $d
        0x11022202:    0000        ..      DCW    0
        0x11022204:    00002053    S ..    DCD    8275
        0x11022208:    0000200a    . ..    DCD    8202
        0x1102220c:    ffffdffa    ....    DCD    4294959098
    $t
    i.gapProcessAdvertDevInfo
    gapProcessAdvertDevInfo
        0x11022210:    b5f8        ..      PUSH     {r3-r7,lr}
        0x11022212:    4f4b        KO      LDR      r7,[pc,#300] ; [0x11022340] = 0x1fff5914
        0x11022214:    2500        .%      MOVS     r5,#0
        0x11022216:    6839        9h      LDR      r1,[r7,#0]
        0x11022218:    4604        .F      MOV      r4,r0
        0x1102221a:    4628        (F      MOV      r0,r5
        0x1102221c:    2900        .)      CMP      r1,#0
        0x1102221e:    d01d        ..      BEQ      0x1102225c ; gapProcessAdvertDevInfo + 76
        0x11022220:    7821        !x      LDRB     r1,[r4,#0]
        0x11022222:    4626        &F      MOV      r6,r4
        0x11022224:    3609        .6      ADDS     r6,r6,#9
        0x11022226:    2901        .)      CMP      r1,#1
        0x11022228:    d00b        ..      BEQ      0x11022242 ; gapProcessAdvertDevInfo + 50
        0x1102222a:    7a22        "z      LDRB     r2,[r4,#8]
        0x1102222c:    4633        3F      MOV      r3,r6
        0x1102222e:    4669        iF      MOV      r1,sp
        0x11022230:    2001        .       MOVS     r0,#1
        0x11022232:    f7fffed2    ....    BL       gapFindADType ; 0x11021fda
        0x11022236:    2800        .(      CMP      r0,#0
        0x11022238:    d000        ..      BEQ      0x1102223c ; gapProcessAdvertDevInfo + 44
        0x1102223a:    7805        .x      LDRB     r5,[r0,#0]
        0x1102223c:    7821        !x      LDRB     r1,[r4,#0]
        0x1102223e:    2904        .)      CMP      r1,#4
        0x11022240:    d012        ..      BEQ      0x11022268 ; gapProcessAdvertDevInfo + 88
        0x11022242:    6839        9h      LDR      r1,[r7,#0]
        0x11022244:    7849        Ix      LDRB     r1,[r1,#1]
        0x11022246:    2903        .)      CMP      r1,#3
        0x11022248:    d00e        ..      BEQ      0x11022268 ; gapProcessAdvertDevInfo + 88
        0x1102224a:    460a        .F      MOV      r2,r1
        0x1102224c:    432a        *C      ORRS     r2,r2,r5
        0x1102224e:    d00b        ..      BEQ      0x11022268 ; gapProcessAdvertDevInfo + 88
        0x11022250:    2800        .(      CMP      r0,#0
        0x11022252:    d072        r.      BEQ      0x1102233a ; gapProcessAdvertDevInfo + 298
        0x11022254:    2901        .)      CMP      r1,#1
        0x11022256:    d002        ..      BEQ      0x1102225e ; gapProcessAdvertDevInfo + 78
        0x11022258:    2902        .)      CMP      r1,#2
        0x1102225a:    d002        ..      BEQ      0x11022262 ; gapProcessAdvertDevInfo + 82
        0x1102225c:    e06d        m.      B        0x1102233a ; gapProcessAdvertDevInfo + 298
        0x1102225e:    07a8        ..      LSLS     r0,r5,#30
        0x11022260:    e000        ..      B        0x11022264 ; gapProcessAdvertDevInfo + 84
        0x11022262:    07e8        ..      LSLS     r0,r5,#31
        0x11022264:    2800        .(      CMP      r0,#0
        0x11022266:    d068        h.      BEQ      0x1102233a ; gapProcessAdvertDevInfo + 298
        0x11022268:    7860        `x      LDRB     r0,[r4,#1]
        0x1102226a:    1ca1        ..      ADDS     r1,r4,#2
        0x1102226c:    f7fffea6    ....    BL       gapDetermineAddrType ; 0x11021fbc
        0x11022270:    7060        `p      STRB     r0,[r4,#1]
        0x11022272:    1ca1        ..      ADDS     r1,r4,#2
        0x11022274:    f7fffed6    ....    BL       gapFindScanRec ; 0x11022024
        0x11022278:    0005        ..      MOVS     r5,r0
        0x1102227a:    d028        (.      BEQ      0x110222ce ; gapProcessAdvertDevInfo + 190
        0x1102227c:    7820         x      LDRB     r0,[r4,#0]
        0x1102227e:    2804        .(      CMP      r0,#4
        0x11022280:    d001        ..      BEQ      0x11022286 ; gapProcessAdvertDevInfo + 118
        0x11022282:    68a8        .h      LDR      r0,[r5,#8]
        0x11022284:    e000        ..      B        0x11022288 ; gapProcessAdvertDevInfo + 120
        0x11022286:    68e8        .h      LDR      r0,[r5,#0xc]
        0x11022288:    2800        .(      CMP      r0,#0
        0x1102228a:    d03e        >.      BEQ      0x1102230a ; gapProcessAdvertDevInfo + 250
        0x1102228c:    492d        -I      LDR      r1,[pc,#180] ; [0x11022344] = 0x1fff5854
        0x1102228e:    6809        .h      LDR      r1,[r1,#0]
        0x11022290:    8d89        ..      LDRH     r1,[r1,#0x2c]
        0x11022292:    05c9        ..      LSLS     r1,r1,#23
        0x11022294:    d409        ..      BMI      0x110222aa ; gapProcessAdvertDevInfo + 154
        0x11022296:    7801        .x      LDRB     r1,[r0,#0]
        0x11022298:    7a22        "z      LDRB     r2,[r4,#8]
        0x1102229a:    4291        .B      CMP      r1,r2
        0x1102229c:    d105        ..      BNE      0x110222aa ; gapProcessAdvertDevInfo + 154
        0x1102229e:    4631        1F      MOV      r1,r6
        0x110222a0:    1c40        @.      ADDS     r0,r0,#1
        0x110222a2:    f7fff88d    ....    BL       $Ven$TT$L$$osal_memcmp ; 0x110213c0
        0x110222a6:    2801        .(      CMP      r0,#1
        0x110222a8:    d047        G.      BEQ      0x1102233a ; gapProcessAdvertDevInfo + 298
        0x110222aa:    7820         x      LDRB     r0,[r4,#0]
        0x110222ac:    2700        .'      MOVS     r7,#0
        0x110222ae:    2804        .(      CMP      r0,#4
        0x110222b0:    d006        ..      BEQ      0x110222c0 ; gapProcessAdvertDevInfo + 176
        0x110222b2:    68a8        .h      LDR      r0,[r5,#8]
        0x110222b4:    2800        .(      CMP      r0,#0
        0x110222b6:    d028        (.      BEQ      0x1102230a ; gapProcessAdvertDevInfo + 250
        0x110222b8:    f7fff846    ..F.    BL       $Ven$TT$L$$osal_mem_free ; 0x11021348
        0x110222bc:    60af        .`      STR      r7,[r5,#8]
        0x110222be:    e024        $.      B        0x1102230a ; gapProcessAdvertDevInfo + 250
        0x110222c0:    68e8        .h      LDR      r0,[r5,#0xc]
        0x110222c2:    2800        .(      CMP      r0,#0
        0x110222c4:    d021        !.      BEQ      0x1102230a ; gapProcessAdvertDevInfo + 250
        0x110222c6:    f7fff83f    ..?.    BL       $Ven$TT$L$$osal_mem_free ; 0x11021348
        0x110222ca:    60ef        .`      STR      r7,[r5,#0xc]
        0x110222cc:    e01d        ..      B        0x1102230a ; gapProcessAdvertDevInfo + 250
        0x110222ce:    7823        #x      LDRB     r3,[r4,#0]
        0x110222d0:    2b04        .+      CMP      r3,#4
        0x110222d2:    d032        2.      BEQ      0x1102233a ; gapProcessAdvertDevInfo + 298
        0x110222d4:    491c        .I      LDR      r1,[pc,#112] ; [0x11022348] = 0x1fff5870
        0x110222d6:    684a        Jh      LDR      r2,[r1,#4]
        0x110222d8:    2a00        .*      CMP      r2,#0
        0x110222da:    d02e        ..      BEQ      0x1102233a ; gapProcessAdvertDevInfo + 298
        0x110222dc:    2000        .       MOVS     r0,#0
        0x110222de:    7809        .x      LDRB     r1,[r1,#0]
        0x110222e0:    e005        ..      B        0x110222ee ; gapProcessAdvertDevInfo + 222
        0x110222e2:    0105        ..      LSLS     r5,r0,#4
        0x110222e4:    5d55        U]      LDRB     r5,[r2,r5]
        0x110222e6:    2dff        .-      CMP      r5,#0xff
        0x110222e8:    d004        ..      BEQ      0x110222f4 ; gapProcessAdvertDevInfo + 228
        0x110222ea:    1c40        @.      ADDS     r0,r0,#1
        0x110222ec:    b2c0        ..      UXTB     r0,r0
        0x110222ee:    4288        .B      CMP      r0,r1
        0x110222f0:    d3f7        ..      BCC      0x110222e2 ; gapProcessAdvertDevInfo + 210
        0x110222f2:    e022        ".      B        0x1102233a ; gapProcessAdvertDevInfo + 298
        0x110222f4:    0100        ..      LSLS     r0,r0,#4
        0x110222f6:    1885        ..      ADDS     r5,r0,r2
        0x110222f8:    d01f        ..      BEQ      0x1102233a ; gapProcessAdvertDevInfo + 298
        0x110222fa:    702b        +p      STRB     r3,[r5,#0]
        0x110222fc:    7860        `x      LDRB     r0,[r4,#1]
        0x110222fe:    7068        hp      STRB     r0,[r5,#1]
        0x11022300:    2206        ."      MOVS     r2,#6
        0x11022302:    1ca1        ..      ADDS     r1,r4,#2
        0x11022304:    1ca8        ..      ADDS     r0,r5,#2
        0x11022306:    f7feff77    ..w.    BL       $Ven$TT$L$$osal_memcpy ; 0x110211f8
        0x1102230a:    7a20         z      LDRB     r0,[r4,#8]
        0x1102230c:    1c40        @.      ADDS     r0,r0,#1
        0x1102230e:    f7fefff7    ....    BL       $Ven$TT$L$$osal_mem_alloc ; 0x11021300
        0x11022312:    2800        .(      CMP      r0,#0
        0x11022314:    d00c        ..      BEQ      0x11022330 ; gapProcessAdvertDevInfo + 288
        0x11022316:    7821        !x      LDRB     r1,[r4,#0]
        0x11022318:    2904        .)      CMP      r1,#4
        0x1102231a:    d001        ..      BEQ      0x11022320 ; gapProcessAdvertDevInfo + 272
        0x1102231c:    60a8        .`      STR      r0,[r5,#8]
        0x1102231e:    e000        ..      B        0x11022322 ; gapProcessAdvertDevInfo + 274
        0x11022320:    60e8        .`      STR      r0,[r5,#0xc]
        0x11022322:    7a21        !z      LDRB     r1,[r4,#8]
        0x11022324:    7001        .p      STRB     r1,[r0,#0]
        0x11022326:    7a22        "z      LDRB     r2,[r4,#8]
        0x11022328:    4631        1F      MOV      r1,r6
        0x1102232a:    1c40        @.      ADDS     r0,r0,#1
        0x1102232c:    f7feff64    ..d.    BL       $Ven$TT$L$$osal_memcpy ; 0x110211f8
        0x11022330:    7a20         z      LDRB     r0,[r4,#8]
        0x11022332:    2800        .(      CMP      r0,#0
        0x11022334:    d001        ..      BEQ      0x1102233a ; gapProcessAdvertDevInfo + 298
        0x11022336:    2001        .       MOVS     r0,#1
        0x11022338:    bdf8        ..      POP      {r3-r7,pc}
        0x1102233a:    2000        .       MOVS     r0,#0
        0x1102233c:    bdf8        ..      POP      {r3-r7,pc}
    $d
        0x1102233e:    0000        ..      DCW    0
        0x11022340:    1fff5914    .Y..    DCD    536828180
        0x11022344:    1fff5854    TX..    DCD    536827988
        0x11022348:    1fff5870    pX..    DCD    536828016
    $t
    i.gapProcessAdvertisingEvt
    gapProcessAdvertisingEvt
        0x1102234c:    b570        p.      PUSH     {r4-r6,lr}
        0x1102234e:    4d1a        .M      LDR      r5,[pc,#104] ; [0x110223b8] = 0x1fff5901
        0x11022350:    4a1a        .J      LDR      r2,[pc,#104] ; [0x110223bc] = 0x1fff5918
        0x11022352:    4601        .F      MOV      r1,r0
        0x11022354:    2600        .&      MOVS     r6,#0
        0x11022356:    7828        (x      LDRB     r0,[r5,#0]
        0x11022358:    6812        .h      LDR      r2,[r2,#0]
        0x1102235a:    4c19        .L      LDR      r4,[pc,#100] ; [0x110223c0] = 0x1fff58e4
        0x1102235c:    2901        .)      CMP      r1,#1
        0x1102235e:    d00c        ..      BEQ      0x1102237a ; gapProcessAdvertisingEvt + 46
        0x11022360:    2a00        .*      CMP      r2,#0
        0x11022362:    d009        ..      BEQ      0x11022378 ; gapProcessAdvertisingEvt + 44
        0x11022364:    4917        .I      LDR      r1,[pc,#92] ; [0x110223c4] = 0x1fff5889
        0x11022366:    7809        .x      LDRB     r1,[r1,#0]
        0x11022368:    0749        I.      LSLS     r1,r1,#29
        0x1102236a:    d505        ..      BPL      0x11022378 ; gapProcessAdvertisingEvt + 44
        0x1102236c:    2102        .!      MOVS     r1,#2
        0x1102236e:    f7feff79    ..y.    BL       $Ven$TT$L$$osal_stop_timerEx ; 0x11021264
        0x11022372:    8066        f.      STRH     r6,[r4,#2]
        0x11022374:    f7fffe7c    ..|.    BL       gapFreeAdvertState ; 0x11022070
        0x11022378:    bd70        p.      POP      {r4-r6,pc}
        0x1102237a:    8861        a.      LDRH     r1,[r4,#2]
        0x1102237c:    2900        .)      CMP      r1,#0
        0x1102237e:    d003        ..      BEQ      0x11022388 ; gapProcessAdvertisingEvt + 60
        0x11022380:    4b11        .K      LDR      r3,[pc,#68] ; [0x110223c8] = 0x1fff588b
        0x11022382:    781b        .x      LDRB     r3,[r3,#0]
        0x11022384:    2b00        .+      CMP      r3,#0
        0x11022386:    d005        ..      BEQ      0x11022394 ; gapProcessAdvertisingEvt + 72
        0x11022388:    2a00        .*      CMP      r2,#0
        0x1102238a:    d0f5        ..      BEQ      0x11022378 ; gapProcessAdvertisingEvt + 44
        0x1102238c:    7810        .x      LDRB     r0,[r2,#0]
        0x1102238e:    f7fffb07    ....    BL       GAP_EndDiscoverable ; 0x110219a0
        0x11022392:    bd70        p.      POP      {r4-r6,pc}
        0x11022394:    293c        <)      CMP      r1,#0x3c
        0x11022396:    d302        ..      BCC      0x1102239e ; gapProcessAdvertisingEvt + 82
        0x11022398:    393c        <9      SUBS     r1,r1,#0x3c
        0x1102239a:    8061        a.      STRH     r1,[r4,#2]
        0x1102239c:    bd70        p.      POP      {r4-r6,pc}
        0x1102239e:    2102        .!      MOVS     r1,#2
        0x110223a0:    f7feff60    ..`.    BL       $Ven$TT$L$$osal_stop_timerEx ; 0x11021264
        0x110223a4:    8862        b.      LDRH     r2,[r4,#2]
        0x110223a6:    207d        }       MOVS     r0,#0x7d
        0x110223a8:    00c0        ..      LSLS     r0,r0,#3
        0x110223aa:    4342        BC      MULS     r2,r0,r2
        0x110223ac:    2102        .!      MOVS     r1,#2
        0x110223ae:    7828        (x      LDRB     r0,[r5,#0]
        0x110223b0:    f7feff40    ..@.    BL       $Ven$TT$L$$osal_start_timerEx ; 0x11021234
        0x110223b4:    8066        f.      STRH     r6,[r4,#2]
        0x110223b6:    bd70        p.      POP      {r4-r6,pc}
    $d
        0x110223b8:    1fff5901    .Y..    DCD    536828161
        0x110223bc:    1fff5918    .Y..    DCD    536828184
        0x110223c0:    1fff58e4    .X..    DCD    536828132
        0x110223c4:    1fff5889    .X..    DCD    536828041
        0x110223c8:    1fff588b    .X..    DCD    536828043
    $t
    i.gapProcessConnEvt
    gapProcessConnEvt
        0x110223cc:    b510        ..      PUSH     {r4,lr}
        0x110223ce:    4a0e        .J      LDR      r2,[pc,#56] ; [0x11022408] = 0xffffdff3
        0x110223d0:    2401        .$      MOVS     r4,#1
        0x110223d2:    1880        ..      ADDS     r0,r0,r2
        0x110223d4:    d010        ..      BEQ      0x110223f8 ; gapProcessConnEvt + 44
        0x110223d6:    2801        .(      CMP      r0,#1
        0x110223d8:    d00b        ..      BEQ      0x110223f2 ; gapProcessConnEvt + 38
        0x110223da:    2806        .(      CMP      r0,#6
        0x110223dc:    d010        ..      BEQ      0x11022400 ; gapProcessConnEvt + 52
        0x110223de:    4a0b        .J      LDR      r2,[pc,#44] ; [0x1102240c] = 0xffff200e
        0x110223e0:    42d0        .B      CMN      r0,r2
        0x110223e2:    d103        ..      BNE      0x110223ec ; gapProcessConnEvt + 32
        0x110223e4:    4608        .F      MOV      r0,r1
        0x110223e6:    f000f949    ..I.    BL       gapProcessL2CAPSignalEvt ; 0x1102267c
        0x110223ea:    e000        ..      B        0x110223ee ; gapProcessConnEvt + 34
        0x110223ec:    2400        .$      MOVS     r4,#0
        0x110223ee:    4620         F      MOV      r0,r4
        0x110223f0:    bd10        ..      POP      {r4,pc}
        0x110223f2:    f000fc37    ..7.    BL       gapTerminateConnComplete ; 0x11022c64
        0x110223f6:    e7fa        ..      B        0x110223ee ; gapProcessConnEvt + 34
        0x110223f8:    7888        .x      LDRB     r0,[r1,#2]
        0x110223fa:    f000f88d    ....    BL       gapProcessCreateLLConnCmdStatus ; 0x11022518
        0x110223fe:    e7f6        ..      B        0x110223ee ; gapProcessConnEvt + 34
        0x11022400:    7888        .x      LDRB     r0,[r1,#2]
        0x11022402:    f000f805    ....    BL       gapProcessConnUpdateCmdStatus ; 0x11022410
        0x11022406:    e7f2        ..      B        0x110223ee ; gapProcessConnEvt + 34
    $d
        0x11022408:    ffffdff3    ....    DCD    4294959091
        0x1102240c:    ffff200e    . ..    DCD    4294909966
    $t
    i.gapProcessConnUpdateCmdStatus
    gapProcessConnUpdateCmdStatus
        0x11022410:    b508        ..      PUSH     {r3,lr}
        0x11022412:    2800        .(      CMP      r0,#0
        0x11022414:    d005        ..      BEQ      0x11022422 ; gapProcessConnUpdateCmdStatus + 18
        0x11022416:    2100        .!      MOVS     r1,#0
        0x11022418:    460b        .F      MOV      r3,r1
        0x1102241a:    460a        .F      MOV      r2,r1
        0x1102241c:    9100        ..      STR      r1,[sp,#0]
        0x1102241e:    f000fb4f    ..O.    BL       gapSendLinkUpdateEvent ; 0x11022ac0
        0x11022422:    bd08        ..      POP      {r3,pc}
    i.gapProcessConnUpdateCompleteEvt
    gapProcessConnUpdateCompleteEvt
        0x11022424:    b508        ..      PUSH     {r3,lr}
        0x11022426:    8941        A.      LDRH     r1,[r0,#0xa]
        0x11022428:    9100        ..      STR      r1,[sp,#0]
        0x1102242a:    8903        ..      LDRH     r3,[r0,#8]
        0x1102242c:    88c2        ..      LDRH     r2,[r0,#6]
        0x1102242e:    8881        ..      LDRH     r1,[r0,#4]
        0x11022430:    78c0        .x      LDRB     r0,[r0,#3]
        0x11022432:    f000fb45    ..E.    BL       gapSendLinkUpdateEvent ; 0x11022ac0
        0x11022436:    bd08        ..      POP      {r3,pc}
    i.gapProcessConnectionCompleteEvt
    gapProcessConnectionCompleteEvt
        0x11022438:    b5f0        ..      PUSH     {r4-r7,lr}
        0x1102243a:    4604        .F      MOV      r4,r0
        0x1102243c:    8880        ..      LDRH     r0,[r0,#4]
        0x1102243e:    21a1        .!      MOVS     r1,#0xa1
        0x11022440:    0089        ..      LSLS     r1,r1,#2
        0x11022442:    4348        HC      MULS     r0,r1,r0
        0x11022444:    4930        0I      LDR      r1,[pc,#192] ; [0x11022508] = 0x1fff0934
        0x11022446:    b087        ..      SUB      sp,sp,#0x1c
        0x11022448:    6809        .h      LDR      r1,[r1,#0]
        0x1102244a:    1840        @.      ADDS     r0,r0,r1
        0x1102244c:    30ff        .0      ADDS     r0,r0,#0xff
        0x1102244e:    30ff        .0      ADDS     r0,r0,#0xff
        0x11022450:    3002        .0      ADDS     r0,#2
        0x11022452:    79a1        .y      LDRB     r1,[r4,#6]
        0x11022454:    6741        Ag      STR      r1,[r0,#0x74]
        0x11022456:    2c00        .,      CMP      r4,#0
        0x11022458:    d054        T.      BEQ      0x11022504 ; gapProcessConnectionCompleteEvt + 204
        0x1102245a:    4d2c        ,M      LDR      r5,[pc,#176] ; [0x1102250c] = 0x1fff591c
        0x1102245c:    6868        hh      LDR      r0,[r5,#4]
        0x1102245e:    2800        .(      CMP      r0,#0
        0x11022460:    d023        #.      BEQ      0x110224aa ; gapProcessConnectionCompleteEvt + 114
        0x11022462:    7806        .x      LDRB     r6,[r0,#0]
        0x11022464:    482a        *H      LDR      r0,[pc,#168] ; [0x11022510] = 0x1fff5904
        0x11022466:    6800        .h      LDR      r0,[r0,#0]
        0x11022468:    2800        .(      CMP      r0,#0
        0x1102246a:    d004        ..      BEQ      0x11022476 ; gapProcessConnectionCompleteEvt + 62
        0x1102246c:    6841        Ah      LDR      r1,[r0,#4]
        0x1102246e:    2900        .)      CMP      r1,#0
        0x11022470:    d001        ..      BEQ      0x11022476 ; gapProcessConnectionCompleteEvt + 62
        0x11022472:    2000        .       MOVS     r0,#0
        0x11022474:    4788        .G      BLX      r1
        0x11022476:    4621        !F      MOV      r1,r4
        0x11022478:    79e0        .y      LDRB     r0,[r4,#7]
        0x1102247a:    3108        .1      ADDS     r1,r1,#8
        0x1102247c:    9105        ..      STR      r1,[sp,#0x14]
        0x1102247e:    f7fffd9d    ....    BL       gapDetermineAddrType ; 0x11021fbc
        0x11022482:    71e0        .q      STRB     r0,[r4,#7]
        0x11022484:    4602        .F      MOV      r2,r0
        0x11022486:    7d27        '}      LDRB     r7,[r4,#0x14]
        0x11022488:    8a63        c.      LDRH     r3,[r4,#0x12]
        0x1102248a:    8a21        !.      LDRH     r1,[r4,#0x10]
        0x1102248c:    89e0        ..      LDRH     r0,[r4,#0xe]
        0x1102248e:    9001        ..      STR      r0,[sp,#4]
        0x11022490:    a802        ..      ADD      r0,sp,#8
        0x11022492:    c08a        ..      STM      r0!,{r1,r3,r7}
        0x11022494:    88a0        ..      LDRH     r0,[r4,#4]
        0x11022496:    9000        ..      STR      r0,[sp,#0]
        0x11022498:    78e0        .x      LDRB     r0,[r4,#3]
        0x1102249a:    4631        1F      MOV      r1,r6
        0x1102249c:    9b05        ..      LDR      r3,[sp,#0x14]
        0x1102249e:    f000fe3f    ..?.    BL       sendEstLinkEvent ; 0x11023120
        0x110224a2:    78e0        .x      LDRB     r0,[r4,#3]
        0x110224a4:    2800        .(      CMP      r0,#0
        0x110224a6:    d002        ..      BEQ      0x110224ae ; gapProcessConnectionCompleteEvt + 118
        0x110224a8:    e00d        ..      B        0x110224c6 ; gapProcessConnectionCompleteEvt + 142
        0x110224aa:    481a        .H      LDR      r0,[pc,#104] ; [0x11022514] = 0x1fff5888
        0x110224ac:    e7d9        ..      B        0x11022462 ; gapProcessConnectionCompleteEvt + 42
        0x110224ae:    79e0        .y      LDRB     r0,[r4,#7]
        0x110224b0:    89e2        ..      LDRH     r2,[r4,#0xe]
        0x110224b2:    466b        kF      MOV      r3,sp
        0x110224b4:    9905        ..      LDR      r1,[sp,#0x14]
        0x110224b6:    c307        ..      STM      r3!,{r0-r2}
        0x110224b8:    79a3        .y      LDRB     r3,[r4,#6]
        0x110224ba:    88a1        ..      LDRH     r1,[r4,#4]
        0x110224bc:    2201        ."      MOVS     r2,#1
        0x110224be:    4630        0F      MOV      r0,r6
        0x110224c0:    f000fd72    ..r.    BL       linkDB_Add ; 0x11022fa8
        0x110224c4:    70e0        .p      STRB     r0,[r4,#3]
        0x110224c6:    6868        hh      LDR      r0,[r5,#4]
        0x110224c8:    2800        .(      CMP      r0,#0
        0x110224ca:    d011        ..      BEQ      0x110224f0 ; gapProcessConnectionCompleteEvt + 184
        0x110224cc:    f7fffdfc    ....    BL       gapFreeEstLink ; 0x110220c8
        0x110224d0:    7828        (x      LDRB     r0,[r5,#0]
        0x110224d2:    2800        .(      CMP      r0,#0
        0x110224d4:    d00c        ..      BEQ      0x110224f0 ; gapProcessConnectionCompleteEvt + 184
        0x110224d6:    7869        ix      LDRB     r1,[r5,#1]
        0x110224d8:    f7fffcc8    ....    BL       disconnectNext ; 0x11021e6c
        0x110224dc:    2800        .(      CMP      r0,#0
        0x110224de:    d007        ..      BEQ      0x110224f0 ; gapProcessConnectionCompleteEvt + 184
        0x110224e0:    78e0        .x      LDRB     r0,[r4,#3]
        0x110224e2:    88a2        ..      LDRH     r2,[r4,#4]
        0x110224e4:    4603        .F      MOV      r3,r0
        0x110224e6:    7829        )x      LDRB     r1,[r5,#0]
        0x110224e8:    f000fe47    ..G.    BL       sendTerminateEvent ; 0x1102317a
        0x110224ec:    2000        .       MOVS     r0,#0
        0x110224ee:    7028        (p      STRB     r0,[r5,#0]
        0x110224f0:    88a0        ..      LDRH     r0,[r4,#4]
        0x110224f2:    2117        .!      MOVS     r1,#0x17
        0x110224f4:    f7fff9c0    ....    BL       ATT_UpdateMtuSize ; 0x11021878
        0x110224f8:    88a0        ..      LDRH     r0,[r4,#4]
        0x110224fa:    f7fffc3f    ..?.    BL       L2CAP_ReassemblePkt_Reset ; 0x11021d7c
        0x110224fe:    88a0        ..      LDRH     r0,[r4,#4]
        0x11022500:    f7fffc64    ..d.    BL       L2CAP_SegmentPkt_Reset ; 0x11021dcc
        0x11022504:    b007        ..      ADD      sp,sp,#0x1c
        0x11022506:    bdf0        ..      POP      {r4-r7,pc}
    $d
        0x11022508:    1fff0934    4...    DCD    536807732
        0x1102250c:    1fff591c    .Y..    DCD    536828188
        0x11022510:    1fff5904    .Y..    DCD    536828164
        0x11022514:    1fff5888    .X..    DCD    536828040
    $t
    i.gapProcessCreateLLConnCmdStatus
    gapProcessCreateLLConnCmdStatus
        0x11022518:    b500        ..      PUSH     {lr}
        0x1102251a:    b085        ..      SUB      sp,sp,#0x14
        0x1102251c:    2800        .(      CMP      r0,#0
        0x1102251e:    d010        ..      BEQ      0x11022542 ; gapProcessCreateLLConnCmdStatus + 42
        0x11022520:    4909        .I      LDR      r1,[pc,#36] ; [0x11022548] = 0x1fff5920
        0x11022522:    680b        .h      LDR      r3,[r1,#0]
        0x11022524:    2b00        .+      CMP      r3,#0
        0x11022526:    d00c        ..      BEQ      0x11022542 ; gapProcessCreateLLConnCmdStatus + 42
        0x11022528:    2100        .!      MOVS     r1,#0
        0x1102252a:    9101        ..      STR      r1,[sp,#4]
        0x1102252c:    9102        ..      STR      r1,[sp,#8]
        0x1102252e:    9103        ..      STR      r1,[sp,#0xc]
        0x11022530:    9104        ..      STR      r1,[sp,#0x10]
        0x11022532:    9100        ..      STR      r1,[sp,#0]
        0x11022534:    78da        .x      LDRB     r2,[r3,#3]
        0x11022536:    7819        .x      LDRB     r1,[r3,#0]
        0x11022538:    1d1b        ..      ADDS     r3,r3,#4
        0x1102253a:    f000fdf1    ....    BL       sendEstLinkEvent ; 0x11023120
        0x1102253e:    f7fffdc3    ....    BL       gapFreeEstLink ; 0x110220c8
        0x11022542:    b005        ..      ADD      sp,sp,#0x14
        0x11022544:    bd00        ..      POP      {pc}
    $d
        0x11022546:    0000        ..      DCW    0
        0x11022548:    1fff5920     Y..    DCD    536828192
    $t
    i.gapProcessDisconnectCompleteEvt
    gapProcessDisconnectCompleteEvt
        0x1102254c:    b570        p.      PUSH     {r4-r6,lr}
        0x1102254e:    4604        .F      MOV      r4,r0
        0x11022550:    2600        .&      MOVS     r6,#0
        0x11022552:    8880        ..      LDRH     r0,[r0,#4]
        0x11022554:    f000fd54    ..T.    BL       linkDB_Find ; 0x11023000
        0x11022558:    2800        .(      CMP      r0,#0
        0x1102255a:    d003        ..      BEQ      0x11022564 ; gapProcessDisconnectCompleteEvt + 24
        0x1102255c:    7806        .x      LDRB     r6,[r0,#0]
        0x1102255e:    88a0        ..      LDRH     r0,[r4,#4]
        0x11022560:    f000fdae    ....    BL       linkDB_Remove ; 0x110230c0
        0x11022564:    4d14        .M      LDR      r5,[pc,#80] ; [0x110225b8] = 0x1fff591c
        0x11022566:    7828        (x      LDRB     r0,[r5,#0]
        0x11022568:    2800        .(      CMP      r0,#0
        0x1102256a:    d008        ..      BEQ      0x1102257e ; gapProcessDisconnectCompleteEvt + 50
        0x1102256c:    4286        .B      CMP      r6,r0
        0x1102256e:    d106        ..      BNE      0x1102257e ; gapProcessDisconnectCompleteEvt + 50
        0x11022570:    7869        ix      LDRB     r1,[r5,#1]
        0x11022572:    f7fffc7b    ..{.    BL       disconnectNext ; 0x11021e6c
        0x11022576:    2800        .(      CMP      r0,#0
        0x11022578:    d009        ..      BEQ      0x1102258e ; gapProcessDisconnectCompleteEvt + 66
        0x1102257a:    2000        .       MOVS     r0,#0
        0x1102257c:    7028        (p      STRB     r0,[r5,#0]
        0x1102257e:    2e00        ..      CMP      r6,#0
        0x11022580:    d005        ..      BEQ      0x1102258e ; gapProcessDisconnectCompleteEvt + 66
        0x11022582:    79a3        .y      LDRB     r3,[r4,#6]
        0x11022584:    88a2        ..      LDRH     r2,[r4,#4]
        0x11022586:    78a0        .x      LDRB     r0,[r4,#2]
        0x11022588:    4631        1F      MOV      r1,r6
        0x1102258a:    f000fdf6    ....    BL       sendTerminateEvent ; 0x1102317a
        0x1102258e:    88a0        ..      LDRH     r0,[r4,#4]
        0x11022590:    4a09        .J      LDR      r2,[pc,#36] ; [0x110225b8] = 0x1fff591c
        0x11022592:    0081        ..      LSLS     r1,r0,#2
        0x11022594:    3208        .2      ADDS     r2,r2,#8
        0x11022596:    5851        QX      LDR      r1,[r2,r1]
        0x11022598:    2900        .)      CMP      r1,#0
        0x1102259a:    d001        ..      BEQ      0x110225a0 ; gapProcessDisconnectCompleteEvt + 84
        0x1102259c:    f7fffd74    ..t.    BL       gapFreeAuthLink ; 0x11022088
        0x110225a0:    88a0        ..      LDRH     r0,[r4,#4]
        0x110225a2:    2117        .!      MOVS     r1,#0x17
        0x110225a4:    f7fff968    ..h.    BL       ATT_UpdateMtuSize ; 0x11021878
        0x110225a8:    88a0        ..      LDRH     r0,[r4,#4]
        0x110225aa:    f7fffbe7    ....    BL       L2CAP_ReassemblePkt_Reset ; 0x11021d7c
        0x110225ae:    88a0        ..      LDRH     r0,[r4,#4]
        0x110225b0:    f7fffc0c    ....    BL       L2CAP_SegmentPkt_Reset ; 0x11021dcc
        0x110225b4:    bd70        p.      POP      {r4-r6,pc}
    $d
        0x110225b6:    0000        ..      DCW    0
        0x110225b8:    1fff591c    .Y..    DCD    536828188
    $t
    i.gapProcessHCICmdCompleteEvt
    gapProcessHCICmdCompleteEvt
        0x110225bc:    b570        p.      PUSH     {r4-r6,lr}
        0x110225be:    8882        ..      LDRH     r2,[r0,#4]
        0x110225c0:    4d29        )M      LDR      r5,[pc,#164] ; [0x11022668] = 0x200e
        0x110225c2:    2401        .$      MOVS     r4,#1
        0x110225c4:    1b53        S.      SUBS     r3,r2,r5
        0x110225c6:    4929        )I      LDR      r1,[pc,#164] ; [0x1102266c] = 0x1fff5900
        0x110225c8:    42aa        .B      CMP      r2,r5
        0x110225ca:    d042        B.      BEQ      0x11022652 ; gapProcessHCICmdCompleteEvt + 150
        0x110225cc:    dc19        ..      BGT      0x11022602 ; gapProcessHCICmdCompleteEvt + 70
        0x110225ce:    4d28        (M      LDR      r5,[pc,#160] ; [0x11022670] = 0x2008
        0x110225d0:    1b53        S.      SUBS     r3,r2,r5
        0x110225d2:    42aa        .B      CMP      r2,r5
        0x110225d4:    d018        ..      BEQ      0x11022608 ; gapProcessHCICmdCompleteEvt + 76
        0x110225d6:    dc0b        ..      BGT      0x110225f0 ; gapProcessHCICmdCompleteEvt + 52
        0x110225d8:    4b26        &K      LDR      r3,[pc,#152] ; [0x11022674] = 0xffffeff7
        0x110225da:    18d2        ..      ADDS     r2,r2,r3
        0x110225dc:    d026        &.      BEQ      0x1102262c ; gapProcessHCICmdCompleteEvt + 112
        0x110225de:    4b25        %K      LDR      r3,[pc,#148] ; [0x11022674] = 0xffffeff7
        0x110225e0:    3310        .3      ADDS     r3,r3,#0x10
        0x110225e2:    18d2        ..      ADDS     r2,r2,r3
        0x110225e4:    d01e        ..      BEQ      0x11022624 ; gapProcessHCICmdCompleteEvt + 104
        0x110225e6:    2a03        .*      CMP      r2,#3
        0x110225e8:    d017        ..      BEQ      0x1102261a ; gapProcessHCICmdCompleteEvt + 94
        0x110225ea:    2a04        .*      CMP      r2,#4
        0x110225ec:    d139        9.      BNE      0x11022662 ; gapProcessHCICmdCompleteEvt + 166
        0x110225ee:    e00b        ..      B        0x11022608 ; gapProcessHCICmdCompleteEvt + 76
        0x110225f0:    2b01        .+      CMP      r3,#1
        0x110225f2:    d009        ..      BEQ      0x11022608 ; gapProcessHCICmdCompleteEvt + 76
        0x110225f4:    2b02        .+      CMP      r3,#2
        0x110225f6:    d007        ..      BEQ      0x11022608 ; gapProcessHCICmdCompleteEvt + 76
        0x110225f8:    2b03        .+      CMP      r3,#3
        0x110225fa:    d021        !.      BEQ      0x11022640 ; gapProcessHCICmdCompleteEvt + 132
        0x110225fc:    2b04        .+      CMP      r3,#4
        0x110225fe:    d130        0.      BNE      0x11022662 ; gapProcessHCICmdCompleteEvt + 166
        0x11022600:    e01a        ..      B        0x11022638 ; gapProcessHCICmdCompleteEvt + 124
        0x11022602:    3b43        C;      SUBS     r3,r3,#0x43
        0x11022604:    2b07        .+      CMP      r3,#7
        0x11022606:    d82c        ,.      BHI      0x11022662 ; gapProcessHCICmdCompleteEvt + 166
        0x11022608:    6849        Ih      LDR      r1,[r1,#4]
        0x1102260a:    2900        .)      CMP      r1,#0
        0x1102260c:    d02a        *.      BEQ      0x11022664 ; gapProcessHCICmdCompleteEvt + 168
        0x1102260e:    6809        .h      LDR      r1,[r1,#0]
        0x11022610:    2900        .)      CMP      r1,#0
        0x11022612:    d027        '.      BEQ      0x11022664 ; gapProcessHCICmdCompleteEvt + 168
        0x11022614:    4788        .G      BLX      r1
        0x11022616:    4604        .F      MOV      r4,r0
        0x11022618:    e024        $.      B        0x11022664 ; gapProcessHCICmdCompleteEvt + 168
        0x1102261a:    6880        .h      LDR      r0,[r0,#8]
        0x1102261c:    7800        .x      LDRB     r0,[r0,#0]
        0x1102261e:    f000f8dd    ....    BL       gapProcessRandomAddrComplete ; 0x110227dc
        0x11022622:    e01f        ..      B        0x11022664 ; gapProcessHCICmdCompleteEvt + 168
        0x11022624:    6880        .h      LDR      r0,[r0,#8]
        0x11022626:    f000f961    ..a.    BL       gapReadBufSizeCmdStatus ; 0x110228ec
        0x1102262a:    e7f4        ..      B        0x11022616 ; gapProcessHCICmdCompleteEvt + 90
        0x1102262c:    6880        .h      LDR      r0,[r0,#8]
        0x1102262e:    1c41        A.      ADDS     r1,r0,#1
        0x11022630:    7800        .x      LDRB     r0,[r0,#0]
        0x11022632:    f000f939    ..9.    BL       gapReadBD_ADDRStatus ; 0x110228a8
        0x11022636:    e7ee        ..      B        0x11022616 ; gapProcessHCICmdCompleteEvt + 90
        0x11022638:    6883        .h      LDR      r3,[r0,#8]
        0x1102263a:    781b        .x      LDRB     r3,[r3,#0]
        0x1102263c:    2b00        .+      CMP      r3,#0
        0x1102263e:    d011        ..      BEQ      0x11022664 ; gapProcessHCICmdCompleteEvt + 168
        0x11022640:    6889        .h      LDR      r1,[r1,#8]
        0x11022642:    2900        .)      CMP      r1,#0
        0x11022644:    d00e        ..      BEQ      0x11022664 ; gapProcessHCICmdCompleteEvt + 168
        0x11022646:    680b        .h      LDR      r3,[r1,#0]
        0x11022648:    e008        ..      B        0x1102265c ; gapProcessHCICmdCompleteEvt + 160
        0x1102264a:    4601        .F      MOV      r1,r0
        0x1102264c:    4610        .F      MOV      r0,r2
        0x1102264e:    4798        .G      BLX      r3
        0x11022650:    e7e1        ..      B        0x11022616 ; gapProcessHCICmdCompleteEvt + 90
        0x11022652:    4909        .I      LDR      r1,[pc,#36] ; [0x11022678] = 0x1fff5928
        0x11022654:    6809        .h      LDR      r1,[r1,#0]
        0x11022656:    2900        .)      CMP      r1,#0
        0x11022658:    d004        ..      BEQ      0x11022664 ; gapProcessHCICmdCompleteEvt + 168
        0x1102265a:    684b        Kh      LDR      r3,[r1,#4]
        0x1102265c:    2b00        .+      CMP      r3,#0
        0x1102265e:    d1f4        ..      BNE      0x1102264a ; gapProcessHCICmdCompleteEvt + 142
        0x11022660:    e000        ..      B        0x11022664 ; gapProcessHCICmdCompleteEvt + 168
        0x11022662:    2400        .$      MOVS     r4,#0
        0x11022664:    4620         F      MOV      r0,r4
        0x11022666:    bd70        p.      POP      {r4-r6,pc}
    $d
        0x11022668:    0000200e    . ..    DCD    8206
        0x1102266c:    1fff5900    .Y..    DCD    536828160
        0x11022670:    00002008    . ..    DCD    8200
        0x11022674:    ffffeff7    ....    DCD    4294963191
        0x11022678:    1fff5928    (Y..    DCD    536828200
    $t
    i.gapProcessL2CAPSignalEvt
    gapProcessL2CAPSignalEvt
        0x1102267c:    b57f        ..      PUSH     {r0-r6,lr}
        0x1102267e:    4605        .F      MOV      r5,r0
        0x11022680:    7940        @y      LDRB     r0,[r0,#5]
        0x11022682:    2812        .(      CMP      r0,#0x12
        0x11022684:    d125        %.      BNE      0x110226d2 ; gapProcessL2CAPSignalEvt + 86
        0x11022686:    462c        ,F      MOV      r4,r5
        0x11022688:    3408        .4      ADDS     r4,r4,#8
        0x1102268a:    89eb        ..      LDRH     r3,[r5,#0xe]
        0x1102268c:    89aa        ..      LDRH     r2,[r5,#0xc]
        0x1102268e:    8969        i.      LDRH     r1,[r5,#0xa]
        0x11022690:    8928        (.      LDRH     r0,[r5,#8]
        0x11022692:    f7fefea1    ....    BL       $Ven$TT$L$$HCI_ValidConnTimeParams ; 0x110213d8
        0x11022696:    2600        .&      MOVS     r6,#0
        0x11022698:    2800        .(      CMP      r0,#0
        0x1102269a:    d004        ..      BEQ      0x110226a6 ; gapProcessL2CAPSignalEvt + 42
        0x1102269c:    2025        %       MOVS     r0,#0x25
        0x1102269e:    f7fff9a9    ....    BL       GAP_GetParamValue ; 0x110219f4
        0x110226a2:    2800        .(      CMP      r0,#0
        0x110226a4:    d016        ..      BEQ      0x110226d4 ; gapProcessL2CAPSignalEvt + 88
        0x110226a6:    2001        .       MOVS     r0,#1
        0x110226a8:    4669        iF      MOV      r1,sp
        0x110226aa:    8188        ..      STRH     r0,[r1,#0xc]
        0x110226ac:    7929        )y      LDRB     r1,[r5,#4]
        0x110226ae:    8868        h.      LDRH     r0,[r5,#2]
        0x110226b0:    aa03        ..      ADD      r2,sp,#0xc
        0x110226b2:    f7fffb53    ..S.    BL       L2CAP_ConnParamUpdateRsp ; 0x11021d5c
        0x110226b6:    4668        hF      MOV      r0,sp
        0x110226b8:    8980        ..      LDRH     r0,[r0,#0xc]
        0x110226ba:    2800        .(      CMP      r0,#0
        0x110226bc:    d109        ..      BNE      0x110226d2 ; gapProcessL2CAPSignalEvt + 86
        0x110226be:    88e0        ..      LDRH     r0,[r4,#6]
        0x110226c0:    9601        ..      STR      r6,[sp,#4]
        0x110226c2:    9602        ..      STR      r6,[sp,#8]
        0x110226c4:    9000        ..      STR      r0,[sp,#0]
        0x110226c6:    88a3        ..      LDRH     r3,[r4,#4]
        0x110226c8:    8862        b.      LDRH     r2,[r4,#2]
        0x110226ca:    8821        !.      LDRH     r1,[r4,#0]
        0x110226cc:    8868        h.      LDRH     r0,[r5,#2]
        0x110226ce:    f7fefe89    ....    BL       $Ven$TT$L$$HCI_LE_ConnUpdateCmd ; 0x110213e4
        0x110226d2:    bd7f        ..      POP      {r0-r6,pc}
        0x110226d4:    4668        hF      MOV      r0,sp
        0x110226d6:    8186        ..      STRH     r6,[r0,#0xc]
        0x110226d8:    e7e8        ..      B        0x110226ac ; gapProcessL2CAPSignalEvt + 48
        0x110226da:    0000        ..      MOVS     r0,r0
    i.gapProcessNewAddr
    gapProcessNewAddr
        0x110226dc:    b510        ..      PUSH     {r4,lr}
        0x110226de:    4c09        .L      LDR      r4,[pc,#36] ; [0x11022704] = 0x1fff5888
        0x110226e0:    78a1        .x      LDRB     r1,[r4,#2]
        0x110226e2:    2900        .)      CMP      r1,#0
        0x110226e4:    d00c        ..      BEQ      0x11022700 ; gapProcessNewAddr + 36
        0x110226e6:    4601        .F      MOV      r1,r0
        0x110226e8:    2206        ."      MOVS     r2,#6
        0x110226ea:    1da0        ..      ADDS     r0,r4,#6
        0x110226ec:    f7fefd84    ....    BL       $Ven$TT$L$$osal_memcpy ; 0x110211f8
        0x110226f0:    1da1        ..      ADDS     r1,r4,#6
        0x110226f2:    78a0        .x      LDRB     r0,[r4,#2]
        0x110226f4:    f7fffbc7    ....    BL       gapAddAddrAdj ; 0x11021e86
        0x110226f8:    1da0        ..      ADDS     r0,r4,#6
        0x110226fa:    f7fefe79    ..y.    BL       $Ven$TT$L$$HCI_LE_SetRandomAddressCmd ; 0x110213f0
        0x110226fe:    bd10        ..      POP      {r4,pc}
        0x11022700:    2000        .       MOVS     r0,#0
        0x11022702:    bd10        ..      POP      {r4,pc}
    $d
        0x11022704:    1fff5888    .X..    DCD    536828040
    $t
    i.gapProcessOSALMsg
    gapProcessOSALMsg
        0x11022708:    b51c        ..      PUSH     {r2-r4,lr}
        0x1102270a:    492f        /I      LDR      r1,[pc,#188] ; [0x110227c8] = 0x1fff5928
        0x1102270c:    7803        .x      LDRB     r3,[r0,#0]
        0x1102270e:    2401        .$      MOVS     r4,#1
        0x11022710:    680a        .h      LDR      r2,[r1,#0]
        0x11022712:    2b91        .+      CMP      r3,#0x91
        0x11022714:    d002        ..      BEQ      0x1102271c ; gapProcessOSALMsg + 20
        0x11022716:    2ba2        .+      CMP      r3,#0xa2
        0x11022718:    d12e        ..      BNE      0x11022778 ; gapProcessOSALMsg + 112
        0x1102271a:    e03e        >.      B        0x1102279a ; gapProcessOSALMsg + 146
        0x1102271c:    7841        Ax      LDRB     r1,[r0,#1]
        0x1102271e:    2905        .)      CMP      r1,#5
        0x11022720:    d009        ..      BEQ      0x11022736 ; gapProcessOSALMsg + 46
        0x11022722:    290e        .)      CMP      r1,#0xe
        0x11022724:    d004        ..      BEQ      0x11022730 ; gapProcessOSALMsg + 40
        0x11022726:    290f        .)      CMP      r1,#0xf
        0x11022728:    d008        ..      BEQ      0x1102273c ; gapProcessOSALMsg + 52
        0x1102272a:    293e        >)      CMP      r1,#0x3e
        0x1102272c:    d124        $.      BNE      0x11022778 ; gapProcessOSALMsg + 112
        0x1102272e:    e015        ..      B        0x1102275c ; gapProcessOSALMsg + 84
        0x11022730:    f7ffff44    ..D.    BL       gapProcessHCICmdCompleteEvt ; 0x110225bc
        0x11022734:    e010        ..      B        0x11022758 ; gapProcessOSALMsg + 80
        0x11022736:    f7ffff09    ....    BL       gapProcessDisconnectCompleteEvt ; 0x1102254c
        0x1102273a:    e03a        :.      B        0x110227b2 ; gapProcessOSALMsg + 170
        0x1102273c:    4601        .F      MOV      r1,r0
        0x1102273e:    8880        ..      LDRH     r0,[r0,#4]
        0x11022740:    4b22        "K      LDR      r3,[pc,#136] ; [0x110227cc] = 0xffffdff3
        0x11022742:    2401        .$      MOVS     r4,#1
        0x11022744:    18c3        ..      ADDS     r3,r0,r3
        0x11022746:    d001        ..      BEQ      0x1102274c ; gapProcessOSALMsg + 68
        0x11022748:    2b06        .+      CMP      r3,#6
        0x1102274a:    d115        ..      BNE      0x11022778 ; gapProcessOSALMsg + 112
        0x1102274c:    2a00        .*      CMP      r2,#0
        0x1102274e:    d030        0.      BEQ      0x110227b2 ; gapProcessOSALMsg + 170
        0x11022750:    6852        Rh      LDR      r2,[r2,#4]
        0x11022752:    2a00        .*      CMP      r2,#0
        0x11022754:    d02d        -.      BEQ      0x110227b2 ; gapProcessOSALMsg + 170
        0x11022756:    4790        .G      BLX      r2
        0x11022758:    4604        .F      MOV      r4,r0
        0x1102275a:    e02a        *.      B        0x110227b2 ; gapProcessOSALMsg + 170
        0x1102275c:    7881        .x      LDRB     r1,[r0,#2]
        0x1102275e:    2401        .$      MOVS     r4,#1
        0x11022760:    2903        .)      CMP      r1,#3
        0x11022762:    d017        ..      BEQ      0x11022794 ; gapProcessOSALMsg + 140
        0x11022764:    dc04        ..      BGT      0x11022770 ; gapProcessOSALMsg + 104
        0x11022766:    2901        .)      CMP      r1,#1
        0x11022768:    d011        ..      BEQ      0x1102278e ; gapProcessOSALMsg + 134
        0x1102276a:    2902        .)      CMP      r1,#2
        0x1102276c:    d104        ..      BNE      0x11022778 ; gapProcessOSALMsg + 112
        0x1102276e:    e005        ..      B        0x1102277c ; gapProcessOSALMsg + 116
        0x11022770:    2915        .)      CMP      r1,#0x15
        0x11022772:    d01e        ..      BEQ      0x110227b2 ; gapProcessOSALMsg + 170
        0x11022774:    2916        .)      CMP      r1,#0x16
        0x11022776:    d01c        ..      BEQ      0x110227b2 ; gapProcessOSALMsg + 170
        0x11022778:    2400        .$      MOVS     r4,#0
        0x1102277a:    e01a        ..      B        0x110227b2 ; gapProcessOSALMsg + 170
        0x1102277c:    4914        .I      LDR      r1,[pc,#80] ; [0x110227d0] = 0x1fff5900
        0x1102277e:    6889        .h      LDR      r1,[r1,#8]
        0x11022780:    2900        .)      CMP      r1,#0
        0x11022782:    d016        ..      BEQ      0x110227b2 ; gapProcessOSALMsg + 170
        0x11022784:    6849        Ih      LDR      r1,[r1,#4]
        0x11022786:    2900        .)      CMP      r1,#0
        0x11022788:    d013        ..      BEQ      0x110227b2 ; gapProcessOSALMsg + 170
        0x1102278a:    4788        .G      BLX      r1
        0x1102278c:    e011        ..      B        0x110227b2 ; gapProcessOSALMsg + 170
        0x1102278e:    f7fffe53    ..S.    BL       gapProcessConnectionCompleteEvt ; 0x11022438
        0x11022792:    e00e        ..      B        0x110227b2 ; gapProcessOSALMsg + 170
        0x11022794:    f7fffe46    ..F.    BL       gapProcessConnUpdateCompleteEvt ; 0x11022424
        0x11022798:    e00b        ..      B        0x110227b2 ; gapProcessOSALMsg + 170
        0x1102279a:    490e        .I      LDR      r1,[pc,#56] ; [0x110227d4] = 0x1fff5889
        0x1102279c:    7809        .x      LDRB     r1,[r1,#0]
        0x1102279e:    2904        .)      CMP      r1,#4
        0x110227a0:    d009        ..      BEQ      0x110227b6 ; gapProcessOSALMsg + 174
        0x110227a2:    2a00        .*      CMP      r2,#0
        0x110227a4:    d005        ..      BEQ      0x110227b2 ; gapProcessOSALMsg + 170
        0x110227a6:    6852        Rh      LDR      r2,[r2,#4]
        0x110227a8:    2a00        .*      CMP      r2,#0
        0x110227aa:    d002        ..      BEQ      0x110227b2 ; gapProcessOSALMsg + 170
        0x110227ac:    4601        .F      MOV      r1,r0
        0x110227ae:    480a        .H      LDR      r0,[pc,#40] ; [0x110227d8] = 0xffff
        0x110227b0:    4790        .G      BLX      r2
        0x110227b2:    4620         F      MOV      r0,r4
        0x110227b4:    bd1c        ..      POP      {r2-r4,pc}
        0x110227b6:    2100        .!      MOVS     r1,#0
        0x110227b8:    466a        jF      MOV      r2,sp
        0x110227ba:    8011        ..      STRH     r1,[r2,#0]
        0x110227bc:    7901        .y      LDRB     r1,[r0,#4]
        0x110227be:    8840        @.      LDRH     r0,[r0,#2]
        0x110227c0:    f7fffac0    ....    BL       L2CAP_CmdReject ; 0x11021d44
        0x110227c4:    e7f5        ..      B        0x110227b2 ; gapProcessOSALMsg + 170
    $d
        0x110227c6:    0000        ..      DCW    0
        0x110227c8:    1fff5928    (Y..    DCD    536828200
        0x110227cc:    ffffdff3    ....    DCD    4294959091
        0x110227d0:    1fff5900    .Y..    DCD    536828160
        0x110227d4:    1fff5889    .X..    DCD    536828041
        0x110227d8:    0000ffff    ....    DCD    65535
    $t
    i.gapProcessRandomAddrComplete
    gapProcessRandomAddrComplete
        0x110227dc:    b5f8        ..      PUSH     {r3-r7,lr}
        0x110227de:    4f16        .O      LDR      r7,[pc,#88] ; [0x11022838] = 0x1fff588e
        0x110227e0:    4606        .F      MOV      r6,r0
        0x110227e2:    1fbd        ..      SUBS     r5,r7,#6
        0x110227e4:    7828        (x      LDRB     r0,[r5,#0]
        0x110227e6:    28ff        .(      CMP      r0,#0xff
        0x110227e8:    d014        ..      BEQ      0x11022814 ; gapProcessRandomAddrComplete + 56
        0x110227ea:    200a        .       MOVS     r0,#0xa
        0x110227ec:    f7fefe06    ....    BL       $Ven$TT$L$$osal_msg_allocate ; 0x110213fc
        0x110227f0:    0004        ..      MOVS     r4,r0
        0x110227f2:    d00f        ..      BEQ      0x11022814 ; gapProcessRandomAddrComplete + 56
        0x110227f4:    20d0        .       MOVS     r0,#0xd0
        0x110227f6:    7020         p      STRB     r0,[r4,#0]
        0x110227f8:    7066        fp      STRB     r6,[r4,#1]
        0x110227fa:    2008        .       MOVS     r0,#8
        0x110227fc:    70a0        .p      STRB     r0,[r4,#2]
        0x110227fe:    78a8        .x      LDRB     r0,[r5,#2]
        0x11022800:    70e0        .p      STRB     r0,[r4,#3]
        0x11022802:    2206        ."      MOVS     r2,#6
        0x11022804:    4639        9F      MOV      r1,r7
        0x11022806:    1d20         .      ADDS     r0,r4,#4
        0x11022808:    f7fefcf6    ....    BL       $Ven$TT$L$$osal_memcpy ; 0x110211f8
        0x1102280c:    4621        !F      MOV      r1,r4
        0x1102280e:    7828        (x      LDRB     r0,[r5,#0]
        0x11022810:    f7fefda0    ....    BL       $Ven$TT$L$$osal_msg_send ; 0x11021354
        0x11022814:    78e8        .x      LDRB     r0,[r5,#3]
        0x11022816:    2801        .(      CMP      r0,#1
        0x11022818:    d10d        ..      BNE      0x11022836 ; gapProcessRandomAddrComplete + 90
        0x1102281a:    4808        .H      LDR      r0,[pc,#32] ; [0x1102283c] = 0x1fff5904
        0x1102281c:    6800        .h      LDR      r0,[r0,#0]
        0x1102281e:    2800        .(      CMP      r0,#0
        0x11022820:    d003        ..      BEQ      0x1102282a ; gapProcessRandomAddrComplete + 78
        0x11022822:    6880        .h      LDR      r0,[r0,#8]
        0x11022824:    2800        .(      CMP      r0,#0
        0x11022826:    d000        ..      BEQ      0x1102282a ; gapProcessRandomAddrComplete + 78
        0x11022828:    4780        .G      BLX      r0
        0x1102282a:    4806        .H      LDR      r0,[pc,#24] ; [0x11022844] = 0x1fff5901
        0x1102282c:    4a04        .J      LDR      r2,[pc,#16] ; [0x11022840] = 0xea60
        0x1102282e:    2104        .!      MOVS     r1,#4
        0x11022830:    7800        .x      LDRB     r0,[r0,#0]
        0x11022832:    f7fefd7d    ..}.    BL       $Ven$TT$L$$osal_start_reload_timer ; 0x11021330
        0x11022836:    bdf8        ..      POP      {r3-r7,pc}
    $d
        0x11022838:    1fff588e    .X..    DCD    536828046
        0x1102283c:    1fff5904    .Y..    DCD    536828164
        0x11022840:    0000ea60    `...    DCD    60000
        0x11022844:    1fff5901    .Y..    DCD    536828161
    $t
    i.gapProcessScanningEvt
    gapProcessScanningEvt
        0x11022848:    b5f8        ..      PUSH     {r3-r7,lr}
        0x1102284a:    0005        ..      MOVS     r5,r0
        0x1102284c:    d00b        ..      BEQ      0x11022866 ; gapProcessScanningEvt + 30
        0x1102284e:    78e8        .x      LDRB     r0,[r5,#3]
        0x11022850:    2800        .(      CMP      r0,#0
        0x11022852:    d012        ..      BEQ      0x1102287a ; gapProcessScanningEvt + 50
        0x11022854:    686c        lh      LDR      r4,[r5,#4]
        0x11022856:    2c00        .,      CMP      r4,#0
        0x11022858:    d00f        ..      BEQ      0x1102287a ; gapProcessScanningEvt + 50
        0x1102285a:    2024        $       MOVS     r0,#0x24
        0x1102285c:    f7fff8ca    ....    BL       GAP_GetParamValue ; 0x110219f4
        0x11022860:    b247        G.      SXTB     r7,r0
        0x11022862:    2600        .&      MOVS     r6,#0
        0x11022864:    e019        ..      B        0x1102289a ; gapProcessScanningEvt + 82
        0x11022866:    480f        .H      LDR      r0,[pc,#60] ; [0x110228a4] = 0x1fff5914
        0x11022868:    6800        .h      LDR      r0,[r0,#0]
        0x1102286a:    2800        .(      CMP      r0,#0
        0x1102286c:    d005        ..      BEQ      0x1102287a ; gapProcessScanningEvt + 50
        0x1102286e:    2000        .       MOVS     r0,#0
        0x11022870:    f000f866    ..f.    BL       gapSendDevDiscEvent ; 0x11022940
        0x11022874:    2000        .       MOVS     r0,#0
        0x11022876:    f000f965    ..e.    BL       gapSendScanEnable ; 0x11022b44
        0x1102287a:    bdf8        ..      POP      {r3-r7,pc}
        0x1102287c:    2028        (       MOVS     r0,#0x28
        0x1102287e:    5701        .W      LDRSB    r1,[r0,r4]
        0x11022880:    42b9        .B      CMP      r1,r7
        0x11022882:    db07        ..      BLT      0x11022894 ; gapProcessScanningEvt + 76
        0x11022884:    4620         F      MOV      r0,r4
        0x11022886:    f7fffcc3    ....    BL       gapProcessAdvertDevInfo ; 0x11022210
        0x1102288a:    2800        .(      CMP      r0,#0
        0x1102288c:    d002        ..      BEQ      0x11022894 ; gapProcessScanningEvt + 76
        0x1102288e:    4620         F      MOV      r0,r4
        0x11022890:    f000f8be    ....    BL       gapSendDeviceInfoEvent ; 0x11022a10
        0x11022894:    1c76        v.      ADDS     r6,r6,#1
        0x11022896:    b2f6        ..      UXTB     r6,r6
        0x11022898:    3429        )4      ADDS     r4,r4,#0x29
        0x1102289a:    78e8        .x      LDRB     r0,[r5,#3]
        0x1102289c:    42b0        .B      CMP      r0,r6
        0x1102289e:    d8ed        ..      BHI      0x1102287c ; gapProcessScanningEvt + 52
        0x110228a0:    bdf8        ..      POP      {r3-r7,pc}
    $d
        0x110228a2:    0000        ..      DCW    0
        0x110228a4:    1fff5914    .Y..    DCD    536828180
    $t
    i.gapReadBD_ADDRStatus
    gapReadBD_ADDRStatus
        0x110228a8:    b570        p.      PUSH     {r4-r6,lr}
        0x110228aa:    2400        .$      MOVS     r4,#0
        0x110228ac:    4605        .F      MOV      r5,r0
        0x110228ae:    2800        .(      CMP      r0,#0
        0x110228b0:    d105        ..      BNE      0x110228be ; gapReadBD_ADDRStatus + 22
        0x110228b2:    2900        .)      CMP      r1,#0
        0x110228b4:    d003        ..      BEQ      0x110228be ; gapReadBD_ADDRStatus + 22
        0x110228b6:    2206        ."      MOVS     r2,#6
        0x110228b8:    480b        .H      LDR      r0,[pc,#44] ; [0x110228e8] = 0x1fff5a10
        0x110228ba:    f7fefc9d    ....    BL       $Ven$TT$L$$osal_memcpy ; 0x110211f8
        0x110228be:    480a        .H      LDR      r0,[pc,#40] ; [0x110228e8] = 0x1fff5a10
        0x110228c0:    3810        .8      SUBS     r0,r0,#0x10
        0x110228c2:    7801        .x      LDRB     r1,[r0,#0]
        0x110228c4:    2901        .)      CMP      r1,#1
        0x110228c6:    d107        ..      BNE      0x110228d8 ; gapReadBD_ADDRStatus + 48
        0x110228c8:    2401        .$      MOVS     r4,#1
        0x110228ca:    2d00        .-      CMP      r5,#0
        0x110228cc:    d006        ..      BEQ      0x110228dc ; gapReadBD_ADDRStatus + 52
        0x110228ce:    2100        .!      MOVS     r1,#0
        0x110228d0:    7001        .p      STRB     r1,[r0,#0]
        0x110228d2:    4628        (F      MOV      r0,r5
        0x110228d4:    f000f8d0    ....    BL       gapSendDeviceInitDoneEvent ; 0x11022a78
        0x110228d8:    4620         F      MOV      r0,r4
        0x110228da:    bd70        p.      POP      {r4-r6,pc}
        0x110228dc:    2102        .!      MOVS     r1,#2
        0x110228de:    7001        .p      STRB     r1,[r0,#0]
        0x110228e0:    f7fefd92    ....    BL       $Ven$TT$L$$HCI_LE_ReadBufSizeCmd ; 0x11021408
        0x110228e4:    e7f8        ..      B        0x110228d8 ; gapReadBD_ADDRStatus + 48
    $d
        0x110228e6:    0000        ..      DCW    0
        0x110228e8:    1fff5a10    .Z..    DCD    536828432
    $t
    i.gapReadBufSizeCmdStatus
    gapReadBufSizeCmdStatus
        0x110228ec:    b510        ..      PUSH     {r4,lr}
        0x110228ee:    2400        .$      MOVS     r4,#0
        0x110228f0:    2800        .(      CMP      r0,#0
        0x110228f2:    d013        ..      BEQ      0x1102291c ; gapReadBufSizeCmdStatus + 48
        0x110228f4:    7802        .x      LDRB     r2,[r0,#0]
        0x110228f6:    490b        .I      LDR      r1,[pc,#44] ; [0x11022924] = 0x1fff5a00
        0x110228f8:    2a00        .*      CMP      r2,#0
        0x110228fa:    d103        ..      BNE      0x11022904 ; gapReadBufSizeCmdStatus + 24
        0x110228fc:    8842        B.      LDRH     r2,[r0,#2]
        0x110228fe:    82ca        ..      STRH     r2,[r1,#0x16]
        0x11022900:    7902        .y      LDRB     r2,[r0,#4]
        0x11022902:    760a        .v      STRB     r2,[r1,#0x18]
        0x11022904:    780a        .x      LDRB     r2,[r1,#0]
        0x11022906:    2a02        .*      CMP      r2,#2
        0x11022908:    d108        ..      BNE      0x1102291c ; gapReadBufSizeCmdStatus + 48
        0x1102290a:    7802        .x      LDRB     r2,[r0,#0]
        0x1102290c:    2401        .$      MOVS     r4,#1
        0x1102290e:    2a00        .*      CMP      r2,#0
        0x11022910:    d006        ..      BEQ      0x11022920 ; gapReadBufSizeCmdStatus + 52
        0x11022912:    2200        ."      MOVS     r2,#0
        0x11022914:    700a        .p      STRB     r2,[r1,#0]
        0x11022916:    7800        .x      LDRB     r0,[r0,#0]
        0x11022918:    f000f8ae    ....    BL       gapSendDeviceInitDoneEvent ; 0x11022a78
        0x1102291c:    4620         F      MOV      r0,r4
        0x1102291e:    bd10        ..      POP      {r4,pc}
        0x11022920:    2203        ."      MOVS     r2,#3
        0x11022922:    e7f7        ..      B        0x11022914 ; gapReadBufSizeCmdStatus + 40
    $d
        0x11022924:    1fff5a00    .Z..    DCD    536828416
    $t
    i.gapRegisterCentral
    gapRegisterCentral
        0x11022928:    4901        .I      LDR      r1,[pc,#4] ; [0x11022930] = 0x1fff5900
        0x1102292a:    6088        .`      STR      r0,[r1,#8]
        0x1102292c:    4770        pG      BX       lr
    $d
        0x1102292e:    0000        ..      DCW    0
        0x11022930:    1fff5900    .Y..    DCD    536828160
    $t
    i.gapRegisterPeripheral
    gapRegisterPeripheral
        0x11022934:    4901        .I      LDR      r1,[pc,#4] ; [0x1102293c] = 0x1fff5900
        0x11022936:    6048        H`      STR      r0,[r1,#4]
        0x11022938:    4770        pG      BX       lr
    $d
        0x1102293a:    0000        ..      DCW    0
        0x1102293c:    1fff5900    .Y..    DCD    536828160
    $t
    i.gapSendDevDiscEvent
    gapSendDevDiscEvent
        0x11022940:    b5f8        ..      PUSH     {r3-r7,lr}
        0x11022942:    4606        .F      MOV      r6,r0
        0x11022944:    4830        0H      LDR      r0,[pc,#192] ; [0x11022a08] = 0x1fff5914
        0x11022946:    2500        .%      MOVS     r5,#0
        0x11022948:    6800        .h      LDR      r0,[r0,#0]
        0x1102294a:    2800        .(      CMP      r0,#0
        0x1102294c:    d05b        [.      BEQ      0x11022a06 ; gapSendDevDiscEvent + 198
        0x1102294e:    482f        /H      LDR      r0,[pc,#188] ; [0x11022a0c] = 0x1fff5870
        0x11022950:    6842        Bh      LDR      r2,[r0,#4]
        0x11022952:    2a00        .*      CMP      r2,#0
        0x11022954:    d057        W.      BEQ      0x11022a06 ; gapSendDevDiscEvent + 198
        0x11022956:    2e00        ..      CMP      r6,#0
        0x11022958:    d10d        ..      BNE      0x11022976 ; gapSendDevDiscEvent + 54
        0x1102295a:    492c        ,I      LDR      r1,[pc,#176] ; [0x11022a0c] = 0x1fff5870
        0x1102295c:    2000        .       MOVS     r0,#0
        0x1102295e:    7809        .x      LDRB     r1,[r1,#0]
        0x11022960:    e007        ..      B        0x11022972 ; gapSendDevDiscEvent + 50
        0x11022962:    0103        ..      LSLS     r3,r0,#4
        0x11022964:    5cd3        .\      LDRB     r3,[r2,r3]
        0x11022966:    2bff        .+      CMP      r3,#0xff
        0x11022968:    d001        ..      BEQ      0x1102296e ; gapSendDevDiscEvent + 46
        0x1102296a:    1c6d        m.      ADDS     r5,r5,#1
        0x1102296c:    b2ed        ..      UXTB     r5,r5
        0x1102296e:    1c40        @.      ADDS     r0,r0,#1
        0x11022970:    b2c0        ..      UXTB     r0,r0
        0x11022972:    4288        .B      CMP      r0,r1
        0x11022974:    d3f5        ..      BCC      0x11022962 ; gapSendDevDiscEvent + 34
        0x11022976:    00e8        ..      LSLS     r0,r5,#3
        0x11022978:    3008        .0      ADDS     r0,r0,#8
        0x1102297a:    f7fefd3f    ..?.    BL       $Ven$TT$L$$osal_msg_allocate ; 0x110213fc
        0x1102297e:    0004        ..      MOVS     r4,r0
        0x11022980:    d107        ..      BNE      0x11022992 ; gapSendDevDiscEvent + 82
        0x11022982:    2008        .       MOVS     r0,#8
        0x11022984:    f7fefd3a    ..:.    BL       $Ven$TT$L$$osal_msg_allocate ; 0x110213fc
        0x11022988:    2500        .%      MOVS     r5,#0
        0x1102298a:    2613        .&      MOVS     r6,#0x13
        0x1102298c:    4604        .F      MOV      r4,r0
        0x1102298e:    2800        .(      CMP      r0,#0
        0x11022990:    d02e        ..      BEQ      0x110229f0 ; gapSendDevDiscEvent + 176
        0x11022992:    20d0        .       MOVS     r0,#0xd0
        0x11022994:    7020         p      STRB     r0,[r4,#0]
        0x11022996:    2001        .       MOVS     r0,#1
        0x11022998:    7066        fp      STRB     r6,[r4,#1]
        0x1102299a:    70a0        .p      STRB     r0,[r4,#2]
        0x1102299c:    70e5        .p      STRB     r5,[r4,#3]
        0x1102299e:    2d00        .-      CMP      r5,#0
        0x110229a0:    d01e        ..      BEQ      0x110229e0 ; gapSendDevDiscEvent + 160
        0x110229a2:    4626        &F      MOV      r6,r4
        0x110229a4:    3608        .6      ADDS     r6,r6,#8
        0x110229a6:    2700        .'      MOVS     r7,#0
        0x110229a8:    6066        f`      STR      r6,[r4,#4]
        0x110229aa:    e012        ..      B        0x110229d2 ; gapSendDevDiscEvent + 146
        0x110229ac:    6842        Bh      LDR      r2,[r0,#4]
        0x110229ae:    0139        9.      LSLS     r1,r7,#4
        0x110229b0:    5c50        P\      LDRB     r0,[r2,r1]
        0x110229b2:    28ff        .(      CMP      r0,#0xff
        0x110229b4:    d00b        ..      BEQ      0x110229ce ; gapSendDevDiscEvent + 142
        0x110229b6:    1889        ..      ADDS     r1,r1,r2
        0x110229b8:    7030        0p      STRB     r0,[r6,#0]
        0x110229ba:    7848        Hx      LDRB     r0,[r1,#1]
        0x110229bc:    7070        pp      STRB     r0,[r6,#1]
        0x110229be:    2206        ."      MOVS     r2,#6
        0x110229c0:    1cb0        ..      ADDS     r0,r6,#2
        0x110229c2:    1c89        ..      ADDS     r1,r1,#2
        0x110229c4:    f7fefc18    ....    BL       $Ven$TT$L$$osal_memcpy ; 0x110211f8
        0x110229c8:    1e6d        m.      SUBS     r5,r5,#1
        0x110229ca:    b2ed        ..      UXTB     r5,r5
        0x110229cc:    3608        .6      ADDS     r6,r6,#8
        0x110229ce:    1c7f        ..      ADDS     r7,r7,#1
        0x110229d0:    b2ff        ..      UXTB     r7,r7
        0x110229d2:    480e        .H      LDR      r0,[pc,#56] ; [0x11022a0c] = 0x1fff5870
        0x110229d4:    7801        .x      LDRB     r1,[r0,#0]
        0x110229d6:    428f        .B      CMP      r7,r1
        0x110229d8:    d204        ..      BCS      0x110229e4 ; gapSendDevDiscEvent + 164
        0x110229da:    2d00        .-      CMP      r5,#0
        0x110229dc:    d1e6        ..      BNE      0x110229ac ; gapSendDevDiscEvent + 108
        0x110229de:    e001        ..      B        0x110229e4 ; gapSendDevDiscEvent + 164
        0x110229e0:    2000        .       MOVS     r0,#0
        0x110229e2:    6060        ``      STR      r0,[r4,#4]
        0x110229e4:    4808        .H      LDR      r0,[pc,#32] ; [0x11022a08] = 0x1fff5914
        0x110229e6:    4621        !F      MOV      r1,r4
        0x110229e8:    6800        .h      LDR      r0,[r0,#0]
        0x110229ea:    7800        .x      LDRB     r0,[r0,#0]
        0x110229ec:    f7fefcb2    ....    BL       $Ven$TT$L$$osal_msg_send ; 0x11021354
        0x110229f0:    4806        .H      LDR      r0,[pc,#24] ; [0x11022a0c] = 0x1fff5870
        0x110229f2:    2100        .!      MOVS     r1,#0
        0x110229f4:    7800        .x      LDRB     r0,[r0,#0]
        0x110229f6:    f7fffb73    ..s.    BL       gapFreeScanRecs ; 0x110220e0
        0x110229fa:    4c03        .L      LDR      r4,[pc,#12] ; [0x11022a08] = 0x1fff5914
        0x110229fc:    6820         h      LDR      r0,[r4,#0]
        0x110229fe:    f7fefca3    ....    BL       $Ven$TT$L$$osal_mem_free ; 0x11021348
        0x11022a02:    2000        .       MOVS     r0,#0
        0x11022a04:    6020         `      STR      r0,[r4,#0]
        0x11022a06:    bdf8        ..      POP      {r3-r7,pc}
    $d
        0x11022a08:    1fff5914    .Y..    DCD    536828180
        0x11022a0c:    1fff5870    pX..    DCD    536828016
    $t
    i.gapSendDeviceInfoEvent
    gapSendDeviceInfoEvent
        0x11022a10:    b5f8        ..      PUSH     {r3-r7,lr}
        0x11022a12:    4e18        .N      LDR      r6,[pc,#96] ; [0x11022a74] = 0x1fff5914
        0x11022a14:    4605        .F      MOV      r5,r0
        0x11022a16:    6830        0h      LDR      r0,[r6,#0]
        0x11022a18:    2800        .(      CMP      r0,#0
        0x11022a1a:    d029        ).      BEQ      0x11022a70 ; gapSendDeviceInfoEvent + 96
        0x11022a1c:    7a28        (z      LDRB     r0,[r5,#8]
        0x11022a1e:    3014        .0      ADDS     r0,r0,#0x14
        0x11022a20:    f7fefcec    ....    BL       $Ven$TT$L$$osal_msg_allocate ; 0x110213fc
        0x11022a24:    0004        ..      MOVS     r4,r0
        0x11022a26:    d023        #.      BEQ      0x11022a70 ; gapSendDeviceInfoEvent + 96
        0x11022a28:    20d0        .       MOVS     r0,#0xd0
        0x11022a2a:    7020         p      STRB     r0,[r4,#0]
        0x11022a2c:    2700        .'      MOVS     r7,#0
        0x11022a2e:    7067        gp      STRB     r7,[r4,#1]
        0x11022a30:    200d        .       MOVS     r0,#0xd
        0x11022a32:    70a0        .p      STRB     r0,[r4,#2]
        0x11022a34:    7828        (x      LDRB     r0,[r5,#0]
        0x11022a36:    70e0        .p      STRB     r0,[r4,#3]
        0x11022a38:    2028        (       MOVS     r0,#0x28
        0x11022a3a:    5d40        @]      LDRB     r0,[r0,r5]
        0x11022a3c:    72e0        .r      STRB     r0,[r4,#0xb]
        0x11022a3e:    7868        hx      LDRB     r0,[r5,#1]
        0x11022a40:    7120         q      STRB     r0,[r4,#4]
        0x11022a42:    2206        ."      MOVS     r2,#6
        0x11022a44:    1ca9        ..      ADDS     r1,r5,#2
        0x11022a46:    1d60        `.      ADDS     r0,r4,#5
        0x11022a48:    f7fefbd6    ....    BL       $Ven$TT$L$$osal_memcpy ; 0x110211f8
        0x11022a4c:    7a2a        *z      LDRB     r2,[r5,#8]
        0x11022a4e:    7322        "s      STRB     r2,[r4,#0xc]
        0x11022a50:    2a00        .*      CMP      r2,#0
        0x11022a52:    d007        ..      BEQ      0x11022a64 ; gapSendDeviceInfoEvent + 84
        0x11022a54:    4620         F      MOV      r0,r4
        0x11022a56:    3014        .0      ADDS     r0,r0,#0x14
        0x11022a58:    4629        )F      MOV      r1,r5
        0x11022a5a:    3109        .1      ADDS     r1,r1,#9
        0x11022a5c:    6120         a      STR      r0,[r4,#0x10]
        0x11022a5e:    f7fefbcb    ....    BL       $Ven$TT$L$$osal_memcpy ; 0x110211f8
        0x11022a62:    e000        ..      B        0x11022a66 ; gapSendDeviceInfoEvent + 86
        0x11022a64:    6127        'a      STR      r7,[r4,#0x10]
        0x11022a66:    6830        0h      LDR      r0,[r6,#0]
        0x11022a68:    4621        !F      MOV      r1,r4
        0x11022a6a:    7800        .x      LDRB     r0,[r0,#0]
        0x11022a6c:    f7fefc72    ..r.    BL       $Ven$TT$L$$osal_msg_send ; 0x11021354
        0x11022a70:    bdf8        ..      POP      {r3-r7,pc}
    $d
        0x11022a72:    0000        ..      DCW    0
        0x11022a74:    1fff5914    .Y..    DCD    536828180
    $t
    i.gapSendDeviceInitDoneEvent
    gapSendDeviceInitDoneEvent
        0x11022a78:    b570        p.      PUSH     {r4-r6,lr}
        0x11022a7a:    4d0f        .M      LDR      r5,[pc,#60] ; [0x11022ab8] = 0x1fff5888
        0x11022a7c:    4606        .F      MOV      r6,r0
        0x11022a7e:    7828        (x      LDRB     r0,[r5,#0]
        0x11022a80:    28ff        .(      CMP      r0,#0xff
        0x11022a82:    d018        ..      BEQ      0x11022ab6 ; gapSendDeviceInitDoneEvent + 62
        0x11022a84:    200e        .       MOVS     r0,#0xe
        0x11022a86:    f7fefcb9    ....    BL       $Ven$TT$L$$osal_msg_allocate ; 0x110213fc
        0x11022a8a:    0004        ..      MOVS     r4,r0
        0x11022a8c:    d013        ..      BEQ      0x11022ab6 ; gapSendDeviceInitDoneEvent + 62
        0x11022a8e:    20d0        .       MOVS     r0,#0xd0
        0x11022a90:    7020         p      STRB     r0,[r4,#0]
        0x11022a92:    7066        fp      STRB     r6,[r4,#1]
        0x11022a94:    2000        .       MOVS     r0,#0
        0x11022a96:    70a0        .p      STRB     r0,[r4,#2]
        0x11022a98:    2206        ."      MOVS     r2,#6
        0x11022a9a:    4908        .I      LDR      r1,[pc,#32] ; [0x11022abc] = 0x1fff5a10
        0x11022a9c:    1ce0        ..      ADDS     r0,r4,#3
        0x11022a9e:    f7fefbab    ....    BL       $Ven$TT$L$$osal_memcpy ; 0x110211f8
        0x11022aa2:    4806        .H      LDR      r0,[pc,#24] ; [0x11022abc] = 0x1fff5a10
        0x11022aa4:    3810        .8      SUBS     r0,r0,#0x10
        0x11022aa6:    8ac1        ..      LDRH     r1,[r0,#0x16]
        0x11022aa8:    8161        a.      STRH     r1,[r4,#0xa]
        0x11022aaa:    7e00        .~      LDRB     r0,[r0,#0x18]
        0x11022aac:    7320         s      STRB     r0,[r4,#0xc]
        0x11022aae:    4621        !F      MOV      r1,r4
        0x11022ab0:    7828        (x      LDRB     r0,[r5,#0]
        0x11022ab2:    f7fefc4f    ..O.    BL       $Ven$TT$L$$osal_msg_send ; 0x11021354
        0x11022ab6:    bd70        p.      POP      {r4-r6,pc}
    $d
        0x11022ab8:    1fff5888    .X..    DCD    536828040
        0x11022abc:    1fff5a10    .Z..    DCD    536828432
    $t
    i.gapSendLinkUpdateEvent
    gapSendLinkUpdateEvent
        0x11022ac0:    b5ff        ..      PUSH     {r0-r7,lr}
        0x11022ac2:    b081        ..      SUB      sp,sp,#4
        0x11022ac4:    461e        .F      MOV      r6,r3
        0x11022ac6:    4617        .F      MOV      r7,r2
        0x11022ac8:    460d        .F      MOV      r5,r1
        0x11022aca:    200c        .       MOVS     r0,#0xc
        0x11022acc:    f7fefc96    ....    BL       $Ven$TT$L$$osal_msg_allocate ; 0x110213fc
        0x11022ad0:    0004        ..      MOVS     r4,r0
        0x11022ad2:    d013        ..      BEQ      0x11022afc ; gapSendLinkUpdateEvent + 60
        0x11022ad4:    4628        (F      MOV      r0,r5
        0x11022ad6:    f000fa93    ....    BL       linkDB_Find ; 0x11023000
        0x11022ada:    2800        .(      CMP      r0,#0
        0x11022adc:    d010        ..      BEQ      0x11022b00 ; gapSendLinkUpdateEvent + 64
        0x11022ade:    7800        .x      LDRB     r0,[r0,#0]
        0x11022ae0:    21d0        .!      MOVS     r1,#0xd0
        0x11022ae2:    7021        !p      STRB     r1,[r4,#0]
        0x11022ae4:    9901        ..      LDR      r1,[sp,#4]
        0x11022ae6:    7061        ap      STRB     r1,[r4,#1]
        0x11022ae8:    2107        .!      MOVS     r1,#7
        0x11022aea:    70a1        .p      STRB     r1,[r4,#2]
        0x11022aec:    80a5        ..      STRH     r5,[r4,#4]
        0x11022aee:    80e7        ..      STRH     r7,[r4,#6]
        0x11022af0:    8126        &.      STRH     r6,[r4,#8]
        0x11022af2:    990a        ..      LDR      r1,[sp,#0x28]
        0x11022af4:    8161        a.      STRH     r1,[r4,#0xa]
        0x11022af6:    4621        !F      MOV      r1,r4
        0x11022af8:    f7fefc2c    ..,.    BL       $Ven$TT$L$$osal_msg_send ; 0x11021354
        0x11022afc:    b005        ..      ADD      sp,sp,#0x14
        0x11022afe:    bdf0        ..      POP      {r4-r7,pc}
        0x11022b00:    4800        .H      LDR      r0,[pc,#0] ; [0x11022b04] = 0x1fff5888
        0x11022b02:    e7ec        ..      B        0x11022ade ; gapSendLinkUpdateEvent + 30
    $d
        0x11022b04:    1fff5888    .X..    DCD    536828040
    $t
    i.gapSendMakeDiscEvent
    gapSendMakeDiscEvent
        0x11022b08:    b570        p.      PUSH     {r4-r6,lr}
        0x11022b0a:    4d0d        .M      LDR      r5,[pc,#52] ; [0x11022b40] = 0x1fff5918
        0x11022b0c:    4604        .F      MOV      r4,r0
        0x11022b0e:    6828        (h      LDR      r0,[r5,#0]
        0x11022b10:    460e        .F      MOV      r6,r1
        0x11022b12:    2800        .(      CMP      r0,#0
        0x11022b14:    d012        ..      BEQ      0x11022b3c ; gapSendMakeDiscEvent + 52
        0x11022b16:    2006        .       MOVS     r0,#6
        0x11022b18:    f7fefc70    ..p.    BL       $Ven$TT$L$$osal_msg_allocate ; 0x110213fc
        0x11022b1c:    0001        ..      MOVS     r1,r0
        0x11022b1e:    d009        ..      BEQ      0x11022b34 ; gapSendMakeDiscEvent + 44
        0x11022b20:    20d0        .       MOVS     r0,#0xd0
        0x11022b22:    7008        .p      STRB     r0,[r1,#0]
        0x11022b24:    704c        Lp      STRB     r4,[r1,#1]
        0x11022b26:    2003        .       MOVS     r0,#3
        0x11022b28:    7088        .p      STRB     r0,[r1,#2]
        0x11022b2a:    808e        ..      STRH     r6,[r1,#4]
        0x11022b2c:    6828        (h      LDR      r0,[r5,#0]
        0x11022b2e:    7800        .x      LDRB     r0,[r0,#0]
        0x11022b30:    f7fefc10    ....    BL       $Ven$TT$L$$osal_msg_send ; 0x11021354
        0x11022b34:    2c00        .,      CMP      r4,#0
        0x11022b36:    d001        ..      BEQ      0x11022b3c ; gapSendMakeDiscEvent + 52
        0x11022b38:    f7fffa9a    ....    BL       gapFreeAdvertState ; 0x11022070
        0x11022b3c:    bd70        p.      POP      {r4-r6,pc}
    $d
        0x11022b3e:    0000        ..      DCW    0
        0x11022b40:    1fff5918    .Y..    DCD    536828184
    $t
    i.gapSendScanEnable
    gapSendScanEnable
        0x11022b44:    b510        ..      PUSH     {r4,lr}
        0x11022b46:    4604        .F      MOV      r4,r0
        0x11022b48:    2023        #       MOVS     r0,#0x23
        0x11022b4a:    f7feff53    ..S.    BL       GAP_GetParamValue ; 0x110219f4
        0x11022b4e:    2800        .(      CMP      r0,#0
        0x11022b50:    d001        ..      BEQ      0x11022b56 ; gapSendScanEnable + 18
        0x11022b52:    2101        .!      MOVS     r1,#1
        0x11022b54:    e000        ..      B        0x11022b58 ; gapSendScanEnable + 20
        0x11022b56:    2100        .!      MOVS     r1,#0
        0x11022b58:    4620         F      MOV      r0,r4
        0x11022b5a:    f7fefc5b    ..[.    BL       $Ven$TT$L$$HCI_LE_SetScanEnableCmd ; 0x11021414
        0x11022b5e:    bd10        ..      POP      {r4,pc}
    i.gapSetAdvParams
    gapSetAdvParams
        0x11022b60:    b5f0        ..      PUSH     {r4-r7,lr}
        0x11022b62:    4d1f        .M      LDR      r5,[pc,#124] ; [0x11022be0] = 0x1fff5918
        0x11022b64:    b085        ..      SUB      sp,sp,#0x14
        0x11022b66:    6828        (h      LDR      r0,[r5,#0]
        0x11022b68:    2800        .(      CMP      r0,#0
        0x11022b6a:    d037        7.      BEQ      0x11022bdc ; gapSetAdvParams + 124
        0x11022b6c:    7887        .x      LDRB     r7,[r0,#2]
        0x11022b6e:    f7feffbd    ....    BL       GAP_NumActiveConnections ; 0x11021aec
        0x11022b72:    2800        .(      CMP      r0,#0
        0x11022b74:    d005        ..      BEQ      0x11022b82 ; gapSetAdvParams + 34
        0x11022b76:    200a        .       MOVS     r0,#0xa
        0x11022b78:    f7feff3c    ..<.    BL       GAP_GetParamValue ; 0x110219f4
        0x11022b7c:    9004        ..      STR      r0,[sp,#0x10]
        0x11022b7e:    200b        .       MOVS     r0,#0xb
        0x11022b80:    e00e        ..      B        0x11022ba0 ; gapSetAdvParams + 64
        0x11022b82:    f000f8f1    ....    BL       isLimitedDiscoverableMode ; 0x11022d68
        0x11022b86:    2800        .(      CMP      r0,#0
        0x11022b88:    d005        ..      BEQ      0x11022b96 ; gapSetAdvParams + 54
        0x11022b8a:    2006        .       MOVS     r0,#6
        0x11022b8c:    f7feff32    ..2.    BL       GAP_GetParamValue ; 0x110219f4
        0x11022b90:    9004        ..      STR      r0,[sp,#0x10]
        0x11022b92:    2007        .       MOVS     r0,#7
        0x11022b94:    e004        ..      B        0x11022ba0 ; gapSetAdvParams + 64
        0x11022b96:    2008        .       MOVS     r0,#8
        0x11022b98:    f7feff2c    ..,.    BL       GAP_GetParamValue ; 0x110219f4
        0x11022b9c:    9004        ..      STR      r0,[sp,#0x10]
        0x11022b9e:    2009        .       MOVS     r0,#9
        0x11022ba0:    f7feff28    ..(.    BL       GAP_GetParamValue ; 0x110219f4
        0x11022ba4:    4604        .F      MOV      r4,r0
        0x11022ba6:    480f        .H      LDR      r0,[pc,#60] ; [0x11022be4] = 0x1fff588a
        0x11022ba8:    7800        .x      LDRB     r0,[r0,#0]
        0x11022baa:    2800        .(      CMP      r0,#0
        0x11022bac:    d014        ..      BEQ      0x11022bd8 ; gapSetAdvParams + 120
        0x11022bae:    2601        .&      MOVS     r6,#1
        0x11022bb0:    6829        )h      LDR      r1,[r5,#0]
        0x11022bb2:    78c8        .x      LDRB     r0,[r1,#3]
        0x11022bb4:    1d09        ..      ADDS     r1,r1,#4
        0x11022bb6:    f7fff966    ..f.    BL       gapAddAddrAdj ; 0x11021e86
        0x11022bba:    6829        )h      LDR      r1,[r5,#0]
        0x11022bbc:    466d        mF      MOV      r5,sp
        0x11022bbe:    7aca        .z      LDRB     r2,[r1,#0xb]
        0x11022bc0:    7a8b        .z      LDRB     r3,[r1,#0xa]
        0x11022bc2:    1d09        ..      ADDS     r1,r1,#4
        0x11022bc4:    c50b        ..      STM      r5!,{r0,r1,r3}
        0x11022bc6:    9203        ..      STR      r2,[sp,#0xc]
        0x11022bc8:    4633        3F      MOV      r3,r6
        0x11022bca:    463a        :F      MOV      r2,r7
        0x11022bcc:    4621        !F      MOV      r1,r4
        0x11022bce:    9804        ..      LDR      r0,[sp,#0x10]
        0x11022bd0:    f7fefc26    ..&.    BL       $Ven$TT$L$$HCI_LE_SetAdvParamCmd ; 0x11021420
        0x11022bd4:    b005        ..      ADD      sp,sp,#0x14
        0x11022bd6:    bdf0        ..      POP      {r4-r7,pc}
        0x11022bd8:    2600        .&      MOVS     r6,#0
        0x11022bda:    e7e9        ..      B        0x11022bb0 ; gapSetAdvParams + 80
        0x11022bdc:    2001        .       MOVS     r0,#1
        0x11022bde:    e7f9        ..      B        0x11022bd4 ; gapSetAdvParams + 116
    $d
        0x11022be0:    1fff5918    .Y..    DCD    536828184
        0x11022be4:    1fff588a    .X..    DCD    536828042
    $t
    i.gapSetAdvParamsStatus
    gapSetAdvParamsStatus
        0x11022be8:    b510        ..      PUSH     {r4,lr}
        0x11022bea:    4909        .I      LDR      r1,[pc,#36] ; [0x11022c10] = 0x1fff5918
        0x11022bec:    6809        .h      LDR      r1,[r1,#0]
        0x11022bee:    2900        .)      CMP      r1,#0
        0x11022bf0:    d00c        ..      BEQ      0x11022c0c ; gapSetAdvParamsStatus + 36
        0x11022bf2:    2800        .(      CMP      r0,#0
        0x11022bf4:    d105        ..      BNE      0x11022c02 ; gapSetAdvParamsStatus + 26
        0x11022bf6:    2001        .       MOVS     r0,#1
        0x11022bf8:    7048        Hp      STRB     r0,[r1,#1]
        0x11022bfa:    f7fefb8d    ....    BL       $Ven$TT$L$$HCI_LE_SetAdvEnableCmd ; 0x11021318
        0x11022bfe:    2800        .(      CMP      r0,#0
        0x11022c00:    d002        ..      BEQ      0x11022c08 ; gapSetAdvParamsStatus + 32
        0x11022c02:    2100        .!      MOVS     r1,#0
        0x11022c04:    f7ffff80    ....    BL       gapSendMakeDiscEvent ; 0x11022b08
        0x11022c08:    2001        .       MOVS     r0,#1
        0x11022c0a:    bd10        ..      POP      {r4,pc}
        0x11022c0c:    2000        .       MOVS     r0,#0
        0x11022c0e:    bd10        ..      POP      {r4,pc}
    $d
        0x11022c10:    1fff5918    .Y..    DCD    536828184
    $t
    i.gapSetScanParamStatus
    gapSetScanParamStatus
        0x11022c14:    b570        p.      PUSH     {r4-r6,lr}
        0x11022c16:    4604        .F      MOV      r4,r0
        0x11022c18:    4810        .H      LDR      r0,[pc,#64] ; [0x11022c5c] = 0x1fff5914
        0x11022c1a:    6800        .h      LDR      r0,[r0,#0]
        0x11022c1c:    2800        .(      CMP      r0,#0
        0x11022c1e:    d01a        ..      BEQ      0x11022c56 ; gapSetScanParamStatus + 66
        0x11022c20:    4d0f        .M      LDR      r5,[pc,#60] ; [0x11022c60] = 0x1fff5901
        0x11022c22:    2c00        .,      CMP      r4,#0
        0x11022c24:    d10f        ..      BNE      0x11022c46 ; gapSetScanParamStatus + 50
        0x11022c26:    7840        @x      LDRB     r0,[r0,#1]
        0x11022c28:    2802        .(      CMP      r0,#2
        0x11022c2a:    d015        ..      BEQ      0x11022c58 ; gapSetScanParamStatus + 68
        0x11022c2c:    2002        .       MOVS     r0,#2
        0x11022c2e:    f7fefee1    ....    BL       GAP_GetParamValue ; 0x110219f4
        0x11022c32:    4602        .F      MOV      r2,r0
        0x11022c34:    2101        .!      MOVS     r1,#1
        0x11022c36:    7828        (x      LDRB     r0,[r5,#0]
        0x11022c38:    f7fefafc    ....    BL       $Ven$TT$L$$osal_start_timerEx ; 0x11021234
        0x11022c3c:    2001        .       MOVS     r0,#1
        0x11022c3e:    f7ffff81    ....    BL       gapSendScanEnable ; 0x11022b44
        0x11022c42:    0004        ..      MOVS     r4,r0
        0x11022c44:    d006        ..      BEQ      0x11022c54 ; gapSetScanParamStatus + 64
        0x11022c46:    2101        .!      MOVS     r1,#1
        0x11022c48:    7828        (x      LDRB     r0,[r5,#0]
        0x11022c4a:    f7fefb0b    ....    BL       $Ven$TT$L$$osal_stop_timerEx ; 0x11021264
        0x11022c4e:    4620         F      MOV      r0,r4
        0x11022c50:    f7fffe76    ..v.    BL       gapSendDevDiscEvent ; 0x11022940
        0x11022c54:    2001        .       MOVS     r0,#1
        0x11022c56:    bd70        p.      POP      {r4-r6,pc}
        0x11022c58:    2003        .       MOVS     r0,#3
        0x11022c5a:    e7e8        ..      B        0x11022c2e ; gapSetScanParamStatus + 26
    $d
        0x11022c5c:    1fff5914    .Y..    DCD    536828180
        0x11022c60:    1fff5901    .Y..    DCD    536828161
    $t
    i.gapTerminateConnComplete
    gapTerminateConnComplete
        0x11022c64:    b510        ..      PUSH     {r4,lr}
        0x11022c66:    f7fffa2f    ../.    BL       gapFreeEstLink ; 0x110220c8
        0x11022c6a:    bd10        ..      POP      {r4,pc}
    i.gapValidADType
    gapValidADType
        0x11022c6c:    1e41        A.      SUBS     r1,r0,#1
        0x11022c6e:    2915        .)      CMP      r1,#0x15
        0x11022c70:    d903        ..      BLS      0x11022c7a ; gapValidADType + 14
        0x11022c72:    28ff        .(      CMP      r0,#0xff
        0x11022c74:    d001        ..      BEQ      0x11022c7a ; gapValidADType + 14
        0x11022c76:    2000        .       MOVS     r0,#0
        0x11022c78:    4770        pG      BX       lr
        0x11022c7a:    2001        .       MOVS     r0,#1
        0x11022c7c:    4770        pG      BX       lr
        0x11022c7e:    0000        ..      MOVS     r0,r0
    i.gapWriteAdvDataStatus
    gapWriteAdvDataStatus
        0x11022c80:    b570        p.      PUSH     {r4-r6,lr}
        0x11022c82:    4e0a        .N      LDR      r6,[pc,#40] ; [0x11022cac] = 0x1fff58e4
        0x11022c84:    4605        .F      MOV      r5,r0
        0x11022c86:    7830        0x      LDRB     r0,[r6,#0]
        0x11022c88:    460c        .F      MOV      r4,r1
        0x11022c8a:    28ff        .(      CMP      r0,#0xff
        0x11022c8c:    d00d        ..      BEQ      0x11022caa ; gapWriteAdvDataStatus + 42
        0x11022c8e:    2004        .       MOVS     r0,#4
        0x11022c90:    f7fefbb4    ....    BL       $Ven$TT$L$$osal_msg_allocate ; 0x110213fc
        0x11022c94:    0001        ..      MOVS     r1,r0
        0x11022c96:    d008        ..      BEQ      0x11022caa ; gapWriteAdvDataStatus + 42
        0x11022c98:    20d0        .       MOVS     r0,#0xd0
        0x11022c9a:    7008        .p      STRB     r0,[r1,#0]
        0x11022c9c:    704c        Lp      STRB     r4,[r1,#1]
        0x11022c9e:    2002        .       MOVS     r0,#2
        0x11022ca0:    7088        .p      STRB     r0,[r1,#2]
        0x11022ca2:    70cd        .p      STRB     r5,[r1,#3]
        0x11022ca4:    7830        0x      LDRB     r0,[r6,#0]
        0x11022ca6:    f7fefb55    ..U.    BL       $Ven$TT$L$$osal_msg_send ; 0x11021354
        0x11022caa:    bd70        p.      POP      {r4-r6,pc}
    $d
        0x11022cac:    1fff58e4    .X..    DCD    536828132
    $t
    i.gapWriteAdvEnableStatus
    gapWriteAdvEnableStatus
        0x11022cb0:    b5f3        ..      PUSH     {r0,r1,r4-r7,lr}
        0x11022cb2:    4d28        (M      LDR      r5,[pc,#160] ; [0x11022d54] = 0x1fff5918
        0x11022cb4:    b081        ..      SUB      sp,sp,#4
        0x11022cb6:    6828        (h      LDR      r0,[r5,#0]
        0x11022cb8:    2800        .(      CMP      r0,#0
        0x11022cba:    d04a        J.      BEQ      0x11022d52 ; gapWriteAdvEnableStatus + 162
        0x11022cbc:    7840        @x      LDRB     r0,[r0,#1]
        0x11022cbe:    4e26        &N      LDR      r6,[pc,#152] ; [0x11022d58] = 0x1fff588b
        0x11022cc0:    2801        .(      CMP      r0,#1
        0x11022cc2:    d003        ..      BEQ      0x11022ccc ; gapWriteAdvEnableStatus + 28
        0x11022cc4:    7830        0x      LDRB     r0,[r6,#0]
        0x11022cc6:    2800        .(      CMP      r0,#0
        0x11022cc8:    d031        1.      BEQ      0x11022d2e ; gapWriteAdvEnableStatus + 126
        0x11022cca:    e041        A.      B        0x11022d50 ; gapWriteAdvEnableStatus + 160
        0x11022ccc:    f000f84c    ..L.    BL       isLimitedDiscoverableMode ; 0x11022d68
        0x11022cd0:    4f22        "O      LDR      r7,[pc,#136] ; [0x11022d5c] = 0x1fff5901
        0x11022cd2:    2800        .(      CMP      r0,#0
        0x11022cd4:    d013        ..      BEQ      0x11022cfe ; gapWriteAdvEnableStatus + 78
        0x11022cd6:    2001        .       MOVS     r0,#1
        0x11022cd8:    f7fefe8c    ....    BL       GAP_GetParamValue ; 0x110219f4
        0x11022cdc:    4604        .F      MOV      r4,r0
        0x11022cde:    2841        A(      CMP      r0,#0x41
        0x11022ce0:    d908        ..      BLS      0x11022cf4 ; gapWriteAdvEnableStatus + 68
        0x11022ce2:    4a1f        .J      LDR      r2,[pc,#124] ; [0x11022d60] = 0xea60
        0x11022ce4:    2102        .!      MOVS     r1,#2
        0x11022ce6:    7838        8x      LDRB     r0,[r7,#0]
        0x11022ce8:    f7fefb22    ..".    BL       $Ven$TT$L$$osal_start_reload_timer ; 0x11021330
        0x11022cec:    481d        .H      LDR      r0,[pc,#116] ; [0x11022d64] = 0x1fff58e4
        0x11022cee:    3c3c        <<      SUBS     r4,r4,#0x3c
        0x11022cf0:    8044        D.      STRH     r4,[r0,#2]
        0x11022cf2:    e00e        ..      B        0x11022d12 ; gapWriteAdvEnableStatus + 98
        0x11022cf4:    207d        }       MOVS     r0,#0x7d
        0x11022cf6:    00c0        ..      LSLS     r0,r0,#3
        0x11022cf8:    4622        "F      MOV      r2,r4
        0x11022cfa:    4342        BC      MULS     r2,r0,r2
        0x11022cfc:    e003        ..      B        0x11022d06 ; gapWriteAdvEnableStatus + 86
        0x11022cfe:    2000        .       MOVS     r0,#0
        0x11022d00:    f7fefe78    ..x.    BL       GAP_GetParamValue ; 0x110219f4
        0x11022d04:    4602        .F      MOV      r2,r0
        0x11022d06:    2a00        .*      CMP      r2,#0
        0x11022d08:    d003        ..      BEQ      0x11022d12 ; gapWriteAdvEnableStatus + 98
        0x11022d0a:    2102        .!      MOVS     r1,#2
        0x11022d0c:    7838        8x      LDRB     r0,[r7,#0]
        0x11022d0e:    f7fefa91    ....    BL       $Ven$TT$L$$osal_start_timerEx ; 0x11021234
        0x11022d12:    6829        )h      LDR      r1,[r5,#0]
        0x11022d14:    2002        .       MOVS     r0,#2
        0x11022d16:    7048        Hp      STRB     r0,[r1,#1]
        0x11022d18:    7830        0x      LDRB     r0,[r6,#0]
        0x11022d1a:    2800        .(      CMP      r0,#0
        0x11022d1c:    d002        ..      BEQ      0x11022d24 ; gapWriteAdvEnableStatus + 116
        0x11022d1e:    2000        .       MOVS     r0,#0
        0x11022d20:    7030        0p      STRB     r0,[r6,#0]
        0x11022d22:    e015        ..      B        0x11022d50 ; gapWriteAdvEnableStatus + 160
        0x11022d24:    9902        ..      LDR      r1,[sp,#8]
        0x11022d26:    9801        ..      LDR      r0,[sp,#4]
        0x11022d28:    f7fffeee    ....    BL       gapSendMakeDiscEvent ; 0x11022b08
        0x11022d2c:    e010        ..      B        0x11022d50 ; gapWriteAdvEnableStatus + 160
        0x11022d2e:    2003        .       MOVS     r0,#3
        0x11022d30:    9c01        ..      LDR      r4,[sp,#4]
        0x11022d32:    f7fefb63    ..c.    BL       $Ven$TT$L$$osal_msg_allocate ; 0x110213fc
        0x11022d36:    0001        ..      MOVS     r1,r0
        0x11022d38:    d008        ..      BEQ      0x11022d4c ; gapWriteAdvEnableStatus + 156
        0x11022d3a:    20d0        .       MOVS     r0,#0xd0
        0x11022d3c:    7008        .p      STRB     r0,[r1,#0]
        0x11022d3e:    704c        Lp      STRB     r4,[r1,#1]
        0x11022d40:    2004        .       MOVS     r0,#4
        0x11022d42:    7088        .p      STRB     r0,[r1,#2]
        0x11022d44:    6828        (h      LDR      r0,[r5,#0]
        0x11022d46:    7800        .x      LDRB     r0,[r0,#0]
        0x11022d48:    f7fefb04    ....    BL       $Ven$TT$L$$osal_msg_send ; 0x11021354
        0x11022d4c:    f7fff990    ....    BL       gapFreeAdvertState ; 0x11022070
        0x11022d50:    2001        .       MOVS     r0,#1
        0x11022d52:    bdfe        ..      POP      {r1-r7,pc}
    $d
        0x11022d54:    1fff5918    .Y..    DCD    536828184
        0x11022d58:    1fff588b    .X..    DCD    536828043
        0x11022d5c:    1fff5901    .Y..    DCD    536828161
        0x11022d60:    0000ea60    `...    DCD    60000
        0x11022d64:    1fff58e4    .X..    DCD    536828132
    $t
    i.isLimitedDiscoverableMode
    isLimitedDiscoverableMode
        0x11022d68:    b508        ..      PUSH     {r3,lr}
        0x11022d6a:    4809        .H      LDR      r0,[pc,#36] ; [0x11022d90] = 0x1fff58e4
        0x11022d6c:    6883        .h      LDR      r3,[r0,#8]
        0x11022d6e:    2b00        .+      CMP      r3,#0
        0x11022d70:    d00c        ..      BEQ      0x11022d8c ; isLimitedDiscoverableMode + 36
        0x11022d72:    781a        .x      LDRB     r2,[r3,#0]
        0x11022d74:    4669        iF      MOV      r1,sp
        0x11022d76:    2001        .       MOVS     r0,#1
        0x11022d78:    1c5b        [.      ADDS     r3,r3,#1
        0x11022d7a:    f7fff92e    ....    BL       gapFindADType ; 0x11021fda
        0x11022d7e:    2800        .(      CMP      r0,#0
        0x11022d80:    d004        ..      BEQ      0x11022d8c ; isLimitedDiscoverableMode + 36
        0x11022d82:    7800        .x      LDRB     r0,[r0,#0]
        0x11022d84:    07c0        ..      LSLS     r0,r0,#31
        0x11022d86:    d001        ..      BEQ      0x11022d8c ; isLimitedDiscoverableMode + 36
        0x11022d88:    2001        .       MOVS     r0,#1
        0x11022d8a:    bd08        ..      POP      {r3,pc}
        0x11022d8c:    2000        .       MOVS     r0,#0
        0x11022d8e:    bd08        ..      POP      {r3,pc}
    $d
        0x11022d90:    1fff58e4    .X..    DCD    536828132
    $t
    i.l2capEncapSendData
    l2capEncapSendData
        0x11022d94:    b5f8        ..      PUSH     {r3-r7,lr}
        0x11022d96:    4605        .F      MOV      r5,r0
        0x11022d98:    460c        .F      MOV      r4,r1
        0x11022d9a:    6848        Hh      LDR      r0,[r1,#4]
        0x11022d9c:    2104        .!      MOVS     r1,#4
        0x11022d9e:    f7fefafd    ....    BL       $Ven$TT$L$$osal_bm_adjust_header ; 0x1102139c
        0x11022da2:    7a21        !z      LDRB     r1,[r4,#8]
        0x11022da4:    7001        .p      STRB     r1,[r0,#0]
        0x11022da6:    8921        !.      LDRH     r1,[r4,#8]
        0x11022da8:    4603        .F      MOV      r3,r0
        0x11022daa:    1c40        @.      ADDS     r0,r0,#1
        0x11022dac:    0a09        ..      LSRS     r1,r1,#8
        0x11022dae:    7001        .p      STRB     r1,[r0,#0]
        0x11022db0:    7821        !x      LDRB     r1,[r4,#0]
        0x11022db2:    7041        Ap      STRB     r1,[r0,#1]
        0x11022db4:    8821        !.      LDRH     r1,[r4,#0]
        0x11022db6:    0a09        ..      LSRS     r1,r1,#8
        0x11022db8:    7081        .p      STRB     r1,[r0,#2]
        0x11022dba:    7a20         z      LDRB     r0,[r4,#8]
        0x11022dbc:    1d00        ..      ADDS     r0,r0,#4
        0x11022dbe:    b2c2        ..      UXTB     r2,r0
        0x11022dc0:    2afb        .*      CMP      r2,#0xfb
        0x11022dc2:    d836        6.      BHI      0x11022e32 ; l2capEncapSendData + 158
        0x11022dc4:    481c        .H      LDR      r0,[pc,#112] ; [0x11022e38] = 0xfffe
        0x11022dc6:    4285        .B      CMP      r5,r0
        0x11022dc8:    d115        ..      BNE      0x11022df6 ; l2capEncapSendData + 98
        0x11022dca:    4614        .F      MOV      r4,r2
        0x11022dcc:    461e        .F      MOV      r6,r3
        0x11022dce:    200c        .       MOVS     r0,#0xc
        0x11022dd0:    f7fefb14    ....    BL       $Ven$TT$L$$osal_msg_allocate ; 0x110213fc
        0x11022dd4:    0001        ..      MOVS     r1,r0
        0x11022dd6:    d00c        ..      BEQ      0x11022df2 ; l2capEncapSendData + 94
        0x11022dd8:    2090        .       MOVS     r0,#0x90
        0x11022dda:    7008        .p      STRB     r0,[r1,#0]
        0x11022ddc:    2002        .       MOVS     r0,#2
        0x11022dde:    7108        .q      STRB     r0,[r1,#4]
        0x11022de0:    804d        M.      STRH     r5,[r1,#2]
        0x11022de2:    608e        .`      STR      r6,[r1,#8]
        0x11022de4:    4815        .H      LDR      r0,[pc,#84] ; [0x11022e3c] = 0x1fff5934
        0x11022de6:    80cc        ..      STRH     r4,[r1,#6]
        0x11022de8:    7800        .x      LDRB     r0,[r0,#0]
        0x11022dea:    f7fefab3    ....    BL       $Ven$TT$L$$osal_msg_send ; 0x11021354
        0x11022dee:    2700        .'      MOVS     r7,#0
        0x11022df0:    e01d        ..      B        0x11022e2e ; l2capEncapSendData + 154
        0x11022df2:    2713        .'      MOVS     r7,#0x13
        0x11022df4:    e01b        ..      B        0x11022e2e ; l2capEncapSendData + 154
        0x11022df6:    205c        \       MOVS     r0,#0x5c
        0x11022df8:    4911        .I      LDR      r1,[pc,#68] ; [0x11022e40] = 0x1fff5aa8
        0x11022dfa:    4368        hC      MULS     r0,r5,r0
        0x11022dfc:    1844        D.      ADDS     r4,r0,r1
        0x11022dfe:    4626        &F      MOV      r6,r4
        0x11022e00:    3640        @6      ADDS     r6,r6,#0x40
        0x11022e02:    7e30        0~      LDRB     r0,[r6,#0x18]
        0x11022e04:    2800        .(      CMP      r0,#0
        0x11022e06:    d006        ..      BEQ      0x11022e16 ; l2capEncapSendData + 130
        0x11022e08:    4608        .F      MOV      r0,r1
        0x11022e0a:    305c        \0      ADDS     r0,r0,#0x5c
        0x11022e0c:    6a41        Aj      LDR      r1,[r0,#0x24]
        0x11022e0e:    2707        .'      MOVS     r7,#7
        0x11022e10:    1c49        I.      ADDS     r1,r1,#1
        0x11022e12:    6241        Ab      STR      r1,[r0,#0x24]
        0x11022e14:    e00b        ..      B        0x11022e2e ; l2capEncapSendData + 154
        0x11022e16:    4621        !F      MOV      r1,r4
        0x11022e18:    4628        (F      MOV      r0,r5
        0x11022e1a:    f000f813    ....    BL       l2capPktToSegmentBuff ; 0x11022e44
        0x11022e1e:    4607        .F      MOV      r7,r0
        0x11022e20:    7e30        0~      LDRB     r0,[r6,#0x18]
        0x11022e22:    2800        .(      CMP      r0,#0
        0x11022e24:    d103        ..      BNE      0x11022e2e ; l2capEncapSendData + 154
        0x11022e26:    4621        !F      MOV      r1,r4
        0x11022e28:    4628        (F      MOV      r0,r5
        0x11022e2a:    f7fefaff    ....    BL       $Ven$TT$L$$l2capSegmentBuffToLinkLayer ; 0x1102142c
        0x11022e2e:    4638        8F      MOV      r0,r7
        0x11022e30:    bdf8        ..      POP      {r3-r7,pc}
        0x11022e32:    2002        .       MOVS     r0,#2
        0x11022e34:    bdf8        ..      POP      {r3-r7,pc}
    $d
        0x11022e36:    0000        ..      DCW    0
        0x11022e38:    0000fffe    ....    DCD    65534
        0x11022e3c:    1fff5934    4Y..    DCD    536828212
        0x11022e40:    1fff5aa8    .Z..    DCD    536828584
    $t
    i.l2capPktToSegmentBuff
    l2capPktToSegmentBuff
        0x11022e44:    b5ff        ..      PUSH     {r0-r7,lr}
        0x11022e46:    460c        .F      MOV      r4,r1
        0x11022e48:    4607        .F      MOV      r7,r0
        0x11022e4a:    493d        =I      LDR      r1,[pc,#244] ; [0x11022f40] = 0x1fff0934
        0x11022e4c:    20a1        .       MOVS     r0,#0xa1
        0x11022e4e:    0080        ..      LSLS     r0,r0,#2
        0x11022e50:    6809        .h      LDR      r1,[r1,#0]
        0x11022e52:    4378        xC      MULS     r0,r7,r0
        0x11022e54:    1840        @.      ADDS     r0,r0,r1
        0x11022e56:    30ff        .0      ADDS     r0,r0,#0xff
        0x11022e58:    30c1        .0      ADDS     r0,r0,#0xc1
        0x11022e5a:    7e06        .~      LDRB     r6,[r0,#0x18]
        0x11022e5c:    b089        ..      SUB      sp,sp,#0x24
        0x11022e5e:    4615        .F      MOV      r5,r2
        0x11022e60:    4638        8F      MOV      r0,r7
        0x11022e62:    f7fefd03    ....    BL       ATT_GetCurrentMTUSize ; 0x1102186c
        0x11022e66:    1d00        ..      ADDS     r0,r0,#4
        0x11022e68:    42b0        .B      CMP      r0,r6
        0x11022e6a:    d204        ..      BCS      0x11022e76 ; l2capPktToSegmentBuff + 50
        0x11022e6c:    4638        8F      MOV      r0,r7
        0x11022e6e:    f7fefcfd    ....    BL       ATT_GetCurrentMTUSize ; 0x1102186c
        0x11022e72:    1d00        ..      ADDS     r0,r0,#4
        0x11022e74:    b2c6        ..      UXTB     r6,r0
        0x11022e76:    42b5        .B      CMP      r5,r6
        0x11022e78:    d807        ..      BHI      0x11022e8a ; l2capPktToSegmentBuff + 70
        0x11022e7a:    462a        *F      MOV      r2,r5
        0x11022e7c:    2100        .!      MOVS     r1,#0
        0x11022e7e:    4638        8F      MOV      r0,r7
        0x11022e80:    9b0c        ..      LDR      r3,[sp,#0x30]
        0x11022e82:    f7fefad9    ....    BL       $Ven$TT$L$$L2CAP_Fragment_SendDataPkt ; 0x11021438
        0x11022e86:    b00d        ..      ADD      sp,sp,#0x34
        0x11022e88:    bdf0        ..      POP      {r4-r7,pc}
        0x11022e8a:    4631        1F      MOV      r1,r6
        0x11022e8c:    4628        (F      MOV      r0,r5
        0x11022e8e:    f7fefad9    ....    BL       $Ven$TT$L$$__aeabi_uidivmod ; 0x11021444
        0x11022e92:    4627        'F      MOV      r7,r4
        0x11022e94:    3740        @7      ADDS     r7,r7,#0x40
        0x11022e96:    7438        8t      STRB     r0,[r7,#0x10]
        0x11022e98:    990c        ..      LDR      r1,[sp,#0x30]
        0x11022e9a:    6561        ae      STR      r1,[r4,#0x54]
        0x11022e9c:    4601        .F      MOV      r1,r0
        0x11022e9e:    4371        qC      MULS     r1,r6,r1
        0x11022ea0:    1a69        i.      SUBS     r1,r5,r1
        0x11022ea2:    b2c9        ..      UXTB     r1,r1
        0x11022ea4:    9102        ..      STR      r1,[sp,#8]
        0x11022ea6:    990c        ..      LDR      r1,[sp,#0x30]
        0x11022ea8:    9104        ..      STR      r1,[sp,#0x10]
        0x11022eaa:    9902        ..      LDR      r1,[sp,#8]
        0x11022eac:    2900        .)      CMP      r1,#0
        0x11022eae:    d001        ..      BEQ      0x11022eb4 ; l2capPktToSegmentBuff + 112
        0x11022eb0:    1c40        @.      ADDS     r0,r0,#1
        0x11022eb2:    7438        8t      STRB     r0,[r7,#0x10]
        0x11022eb4:    2500        .%      MOVS     r5,#0
        0x11022eb6:    e023        #.      B        0x11022f00 ; l2capPktToSegmentBuff + 188
        0x11022eb8:    9902        ..      LDR      r1,[sp,#8]
        0x11022eba:    2900        .)      CMP      r1,#0
        0x11022ebc:    d004        ..      BEQ      0x11022ec8 ; l2capPktToSegmentBuff + 132
        0x11022ebe:    1e40        @.      SUBS     r0,r0,#1
        0x11022ec0:    42a8        .B      CMP      r0,r5
        0x11022ec2:    d101        ..      BNE      0x11022ec8 ; l2capPktToSegmentBuff + 132
        0x11022ec4:    4608        .F      MOV      r0,r1
        0x11022ec6:    e000        ..      B        0x11022eca ; l2capPktToSegmentBuff + 134
        0x11022ec8:    4630        0F      MOV      r0,r6
        0x11022eca:    00e9        ..      LSLS     r1,r5,#3
        0x11022ecc:    9105        ..      STR      r1,[sp,#0x14]
        0x11022ece:    9103        ..      STR      r1,[sp,#0xc]
        0x11022ed0:    5460        `T      STRB     r0,[r4,r1]
        0x11022ed2:    f7feff4f    ..O.    BL       L2CAP_Fragment_bm_alloc ; 0x11021d74
        0x11022ed6:    9903        ..      LDR      r1,[sp,#0xc]
        0x11022ed8:    1909        ..      ADDS     r1,r1,r4
        0x11022eda:    6048        H`      STR      r0,[r1,#4]
        0x11022edc:    2800        .(      CMP      r0,#0
        0x11022ede:    d01b        ..      BEQ      0x11022f18 ; l2capPktToSegmentBuff + 212
        0x11022ee0:    9905        ..      LDR      r1,[sp,#0x14]
        0x11022ee2:    5c62        b\      LDRB     r2,[r4,r1]
        0x11022ee4:    9904        ..      LDR      r1,[sp,#0x10]
        0x11022ee6:    f7fef987    ....    BL       $Ven$TT$L$$osal_memcpy ; 0x110211f8
        0x11022eea:    9805        ..      LDR      r0,[sp,#0x14]
        0x11022eec:    5c21        !\      LDRB     r1,[r4,r0]
        0x11022eee:    9804        ..      LDR      r0,[sp,#0x10]
        0x11022ef0:    1808        ..      ADDS     r0,r1,r0
        0x11022ef2:    9004        ..      STR      r0,[sp,#0x10]
        0x11022ef4:    4813        .H      LDR      r0,[pc,#76] ; [0x11022f44] = 0x1fff5b04
        0x11022ef6:    69c1        .i      LDR      r1,[r0,#0x1c]
        0x11022ef8:    1c49        I.      ADDS     r1,r1,#1
        0x11022efa:    1c6d        m.      ADDS     r5,r5,#1
        0x11022efc:    b2ed        ..      UXTB     r5,r5
        0x11022efe:    61c1        .a      STR      r1,[r0,#0x1c]
        0x11022f00:    7c38        8|      LDRB     r0,[r7,#0x10]
        0x11022f02:    42a8        .B      CMP      r0,r5
        0x11022f04:    d8d8        ..      BHI      0x11022eb8 ; l2capPktToSegmentBuff + 116
        0x11022f06:    6d60        `m      LDR      r0,[r4,#0x54]
        0x11022f08:    2800        .(      CMP      r0,#0
        0x11022f0a:    d003        ..      BEQ      0x11022f14 ; l2capPktToSegmentBuff + 208
        0x11022f0c:    f7fefa3a    ..:.    BL       $Ven$TT$L$$osal_bm_free ; 0x11021384
        0x11022f10:    2000        .       MOVS     r0,#0
        0x11022f12:    6560        `e      STR      r0,[r4,#0x54]
        0x11022f14:    2000        .       MOVS     r0,#0
        0x11022f16:    e7b6        ..      B        0x11022e86 ; l2capPktToSegmentBuff + 66
        0x11022f18:    2000        .       MOVS     r0,#0
        0x11022f1a:    7438        8t      STRB     r0,[r7,#0x10]
        0x11022f1c:    4606        .F      MOV      r6,r0
        0x11022f1e:    6560        `e      STR      r0,[r4,#0x54]
        0x11022f20:    e006        ..      B        0x11022f30 ; l2capPktToSegmentBuff + 236
        0x11022f22:    00f0        ..      LSLS     r0,r6,#3
        0x11022f24:    1900        ..      ADDS     r0,r0,r4
        0x11022f26:    6840        @h      LDR      r0,[r0,#4]
        0x11022f28:    f7fefa2c    ..,.    BL       $Ven$TT$L$$osal_bm_free ; 0x11021384
        0x11022f2c:    1c76        v.      ADDS     r6,r6,#1
        0x11022f2e:    b2f6        ..      UXTB     r6,r6
        0x11022f30:    42ae        .B      CMP      r6,r5
        0x11022f32:    d3f6        ..      BCC      0x11022f22 ; l2capPktToSegmentBuff + 222
        0x11022f34:    4803        .H      LDR      r0,[pc,#12] ; [0x11022f44] = 0x1fff5b04
        0x11022f36:    6ac1        .j      LDR      r1,[r0,#0x2c]
        0x11022f38:    1c49        I.      ADDS     r1,r1,#1
        0x11022f3a:    62c1        .b      STR      r1,[r0,#0x2c]
        0x11022f3c:    2013        .       MOVS     r0,#0x13
        0x11022f3e:    e7a2        ..      B        0x11022e86 ; l2capPktToSegmentBuff + 66
    $d
        0x11022f40:    1fff0934    4...    DCD    536807732
        0x11022f44:    1fff5b04    .[..    DCD    536828676
    $t
    i.l2capSendCmd
    l2capSendCmd
        0x11022f48:    b5ff        ..      PUSH     {r0-r7,lr}
        0x11022f4a:    b089        ..      SUB      sp,sp,#0x24
        0x11022f4c:    4615        .F      MOV      r5,r2
        0x11022f4e:    460e        .F      MOV      r6,r1
        0x11022f50:    2017        .       MOVS     r0,#0x17
        0x11022f52:    9f12        ..      LDR      r7,[sp,#0x48]
        0x11022f54:    f7feff5c    ..\.    BL       L2CAP_bm_alloc ; 0x11021e10
        0x11022f58:    0004        ..      MOVS     r4,r0
        0x11022f5a:    d021        !.      BEQ      0x11022fa0 ; l2capSendCmd + 88
        0x11022f5c:    4668        hF      MOV      r0,sp
        0x11022f5e:    7006        .p      STRB     r6,[r0,#0]
        0x11022f60:    7045        Ep      STRB     r5,[r0,#1]
        0x11022f62:    2f00        ./      CMP      r7,#0
        0x11022f64:    d003        ..      BEQ      0x11022f6e ; l2capSendCmd + 38
        0x11022f66:    1d20         .      ADDS     r0,r4,#4
        0x11022f68:    990c        ..      LDR      r1,[sp,#0x30]
        0x11022f6a:    47b8        .G      BLX      r7
        0x11022f6c:    e000        ..      B        0x11022f70 ; l2capSendCmd + 40
        0x11022f6e:    2000        .       MOVS     r0,#0
        0x11022f70:    4669        iF      MOV      r1,sp
        0x11022f72:    8048        H.      STRH     r0,[r1,#2]
        0x11022f74:    7026        &p      STRB     r6,[r4,#0]
        0x11022f76:    7065        ep      STRB     r5,[r4,#1]
        0x11022f78:    8848        H.      LDRH     r0,[r1,#2]
        0x11022f7a:    70a0        .p      STRB     r0,[r4,#2]
        0x11022f7c:    0a01        ..      LSRS     r1,r0,#8
        0x11022f7e:    70e1        .p      STRB     r1,[r4,#3]
        0x11022f80:    2205        ."      MOVS     r2,#5
        0x11022f82:    4669        iF      MOV      r1,sp
        0x11022f84:    828a        ..      STRH     r2,[r1,#0x14]
        0x11022f86:    1d00        ..      ADDS     r0,r0,#4
        0x11022f88:    9406        ..      STR      r4,[sp,#0x18]
        0x11022f8a:    8388        ..      STRH     r0,[r1,#0x1c]
        0x11022f8c:    a905        ..      ADD      r1,sp,#0x14
        0x11022f8e:    9809        ..      LDR      r0,[sp,#0x24]
        0x11022f90:    f7ffff00    ....    BL       l2capEncapSendData ; 0x11022d94
        0x11022f94:    0005        ..      MOVS     r5,r0
        0x11022f96:    d004        ..      BEQ      0x11022fa2 ; l2capSendCmd + 90
        0x11022f98:    4620         F      MOV      r0,r4
        0x11022f9a:    f7fef9f3    ....    BL       $Ven$TT$L$$osal_bm_free ; 0x11021384
        0x11022f9e:    e000        ..      B        0x11022fa2 ; l2capSendCmd + 90
        0x11022fa0:    2513        .%      MOVS     r5,#0x13
        0x11022fa2:    4628        (F      MOV      r0,r5
        0x11022fa4:    b00d        ..      ADD      sp,sp,#0x34
        0x11022fa6:    bdf0        ..      POP      {r4-r7,pc}
    i.linkDB_Add
    linkDB_Add
        0x11022fa8:    b5ff        ..      PUSH     {r0-r7,lr}
        0x11022faa:    b081        ..      SUB      sp,sp,#4
        0x11022fac:    461e        .F      MOV      r6,r3
        0x11022fae:    4617        .F      MOV      r7,r2
        0x11022fb0:    460d        .F      MOV      r5,r1
        0x11022fb2:    4608        .F      MOV      r0,r1
        0x11022fb4:    f000f824    ..$.    BL       linkDB_Find ; 0x11023000
        0x11022fb8:    2800        .(      CMP      r0,#0
        0x11022fba:    d002        ..      BEQ      0x11022fc2 ; linkDB_Add + 26
        0x11022fbc:    2011        .       MOVS     r0,#0x11
        0x11022fbe:    b005        ..      ADD      sp,sp,#0x14
        0x11022fc0:    bdf0        ..      POP      {r4-r7,pc}
        0x11022fc2:    480e        .H      LDR      r0,[pc,#56] ; [0x11022ffc] = 0xffff
        0x11022fc4:    f000f81c    ....    BL       linkDB_Find ; 0x11023000
        0x11022fc8:    0004        ..      MOVS     r4,r0
        0x11022fca:    d015        ..      BEQ      0x11022ff8 ; linkDB_Add + 80
        0x11022fcc:    980a        ..      LDR      r0,[sp,#0x28]
        0x11022fce:    71a0        .q      STRB     r0,[r4,#6]
        0x11022fd0:    2206        ."      MOVS     r2,#6
        0x11022fd2:    1de0        ..      ADDS     r0,r4,#7
        0x11022fd4:    990b        ..      LDR      r1,[sp,#0x2c]
        0x11022fd6:    f7fef90f    ....    BL       $Ven$TT$L$$osal_memcpy ; 0x110211f8
        0x11022fda:    8065        e.      STRH     r5,[r4,#2]
        0x11022fdc:    7127        'q      STRB     r7,[r4,#4]
        0x11022fde:    7166        fq      STRB     r6,[r4,#5]
        0x11022fe0:    9801        ..      LDR      r0,[sp,#4]
        0x11022fe2:    7020         p      STRB     r0,[r4,#0]
        0x11022fe4:    2000        .       MOVS     r0,#0
        0x11022fe6:    6260        `b      STR      r0,[r4,#0x24]
        0x11022fe8:    980c        ..      LDR      r0,[sp,#0x30]
        0x11022fea:    81e0        ..      STRH     r0,[r4,#0xe]
        0x11022fec:    2100        .!      MOVS     r1,#0
        0x11022fee:    4628        (F      MOV      r0,r5
        0x11022ff0:    f000f882    ....    BL       reportStatusChange ; 0x110230f8
        0x11022ff4:    2000        .       MOVS     r0,#0
        0x11022ff6:    e7e2        ..      B        0x11022fbe ; linkDB_Add + 22
        0x11022ff8:    2015        .       MOVS     r0,#0x15
        0x11022ffa:    e7e0        ..      B        0x11022fbe ; linkDB_Add + 22
    $d
        0x11022ffc:    0000ffff    ....    DCD    65535
    $t
    i.linkDB_Find
    linkDB_Find
        0x11023000:    4a08        .J      LDR      r2,[pc,#32] ; [0x11023024] = 0x1fff5a2c
        0x11023002:    2100        .!      MOVS     r1,#0
        0x11023004:    2328        (#      MOVS     r3,#0x28
        0x11023006:    434b        KC      MULS     r3,r1,r3
        0x11023008:    189b        ..      ADDS     r3,r3,r2
        0x1102300a:    885b        [.      LDRH     r3,[r3,#2]
        0x1102300c:    4283        .B      CMP      r3,r0
        0x1102300e:    d103        ..      BNE      0x11023018 ; linkDB_Find + 24
        0x11023010:    2028        (       MOVS     r0,#0x28
        0x11023012:    4341        AC      MULS     r1,r0,r1
        0x11023014:    1888        ..      ADDS     r0,r1,r2
        0x11023016:    4770        pG      BX       lr
        0x11023018:    1c49        I.      ADDS     r1,r1,#1
        0x1102301a:    0609        ..      LSLS     r1,r1,#24
        0x1102301c:    0e09        ..      LSRS     r1,r1,#24
        0x1102301e:    d0f1        ..      BEQ      0x11023004 ; linkDB_Find + 4
        0x11023020:    2000        .       MOVS     r0,#0
        0x11023022:    4770        pG      BX       lr
    $d
        0x11023024:    1fff5a2c    ,Z..    DCD    536828460
    $t
    i.linkDB_FindFirst
    linkDB_FindFirst
        0x11023028:    b530        0.      PUSH     {r4,r5,lr}
        0x1102302a:    4c0b        .L      LDR      r4,[pc,#44] ; [0x11023058] = 0xffff
        0x1102302c:    4b0b        .K      LDR      r3,[pc,#44] ; [0x1102305c] = 0x1fff5a2c
        0x1102302e:    2100        .!      MOVS     r1,#0
        0x11023030:    2228        ("      MOVS     r2,#0x28
        0x11023032:    434a        JC      MULS     r2,r1,r2
        0x11023034:    18d5        ..      ADDS     r5,r2,r3
        0x11023036:    886d        m.      LDRH     r5,[r5,#2]
        0x11023038:    42a5        .B      CMP      r5,r4
        0x1102303a:    d006        ..      BEQ      0x1102304a ; linkDB_FindFirst + 34
        0x1102303c:    5c9a        .\      LDRB     r2,[r3,r2]
        0x1102303e:    4282        .B      CMP      r2,r0
        0x11023040:    d103        ..      BNE      0x1102304a ; linkDB_FindFirst + 34
        0x11023042:    2028        (       MOVS     r0,#0x28
        0x11023044:    4341        AC      MULS     r1,r0,r1
        0x11023046:    18c8        ..      ADDS     r0,r1,r3
        0x11023048:    bd30        0.      POP      {r4,r5,pc}
        0x1102304a:    1c49        I.      ADDS     r1,r1,#1
        0x1102304c:    0609        ..      LSLS     r1,r1,#24
        0x1102304e:    0e09        ..      LSRS     r1,r1,#24
        0x11023050:    d0ee        ..      BEQ      0x11023030 ; linkDB_FindFirst + 8
        0x11023052:    2000        .       MOVS     r0,#0
        0x11023054:    bd30        0.      POP      {r4,r5,pc}
    $d
        0x11023056:    0000        ..      DCW    0
        0x11023058:    0000ffff    ....    DCD    65535
        0x1102305c:    1fff5a2c    ,Z..    DCD    536828460
    $t
    i.linkDB_Init
    linkDB_Init
        0x11023060:    b510        ..      PUSH     {r4,lr}
        0x11023062:    2000        .       MOVS     r0,#0
        0x11023064:    4c0b        .L      LDR      r4,[pc,#44] ; [0x11023094] = 0xffff
        0x11023066:    4b0c        .K      LDR      r3,[pc,#48] ; [0x11023098] = 0x1fff5a2c
        0x11023068:    4601        .F      MOV      r1,r0
        0x1102306a:    2228        ("      MOVS     r2,#0x28
        0x1102306c:    4342        BC      MULS     r2,r0,r2
        0x1102306e:    18d2        ..      ADDS     r2,r2,r3
        0x11023070:    8054        T.      STRH     r4,[r2,#2]
        0x11023072:    1c40        @.      ADDS     r0,r0,#1
        0x11023074:    7111        .q      STRB     r1,[r2,#4]
        0x11023076:    0600        ..      LSLS     r0,r0,#24
        0x11023078:    6251        Qb      STR      r1,[r2,#0x24]
        0x1102307a:    0e00        ..      LSRS     r0,r0,#24
        0x1102307c:    d0f5        ..      BEQ      0x1102306a ; linkDB_Init + 10
        0x1102307e:    4a06        .J      LDR      r2,[pc,#24] ; [0x11023098] = 0x1fff5a2c
        0x11023080:    2000        .       MOVS     r0,#0
        0x11023082:    3228        (2      ADDS     r2,r2,#0x28
        0x11023084:    0083        ..      LSLS     r3,r0,#2
        0x11023086:    1c40        @.      ADDS     r0,r0,#1
        0x11023088:    b2c0        ..      UXTB     r0,r0
        0x1102308a:    50d1        .P      STR      r1,[r2,r3]
        0x1102308c:    2805        .(      CMP      r0,#5
        0x1102308e:    d3f9        ..      BCC      0x11023084 ; linkDB_Init + 36
        0x11023090:    bd10        ..      POP      {r4,pc}
    $d
        0x11023092:    0000        ..      DCW    0
        0x11023094:    0000ffff    ....    DCD    65535
        0x11023098:    1fff5a2c    ,Z..    DCD    536828460
    $t
    i.linkDB_NumActive
    linkDB_NumActive
        0x1102309c:    2000        .       MOVS     r0,#0
        0x1102309e:    4a07        .J      LDR      r2,[pc,#28] ; [0x110230bc] = 0x1fff5a2c
        0x110230a0:    4601        .F      MOV      r1,r0
        0x110230a2:    2328        (#      MOVS     r3,#0x28
        0x110230a4:    434b        KC      MULS     r3,r1,r3
        0x110230a6:    189b        ..      ADDS     r3,r3,r2
        0x110230a8:    791b        .y      LDRB     r3,[r3,#4]
        0x110230aa:    2b00        .+      CMP      r3,#0
        0x110230ac:    d001        ..      BEQ      0x110230b2 ; linkDB_NumActive + 22
        0x110230ae:    1c40        @.      ADDS     r0,r0,#1
        0x110230b0:    b2c0        ..      UXTB     r0,r0
        0x110230b2:    1c49        I.      ADDS     r1,r1,#1
        0x110230b4:    0609        ..      LSLS     r1,r1,#24
        0x110230b6:    0e09        ..      LSRS     r1,r1,#24
        0x110230b8:    d0f3        ..      BEQ      0x110230a2 ; linkDB_NumActive + 6
        0x110230ba:    4770        pG      BX       lr
    $d
        0x110230bc:    1fff5a2c    ,Z..    DCD    536828460
    $t
    i.linkDB_Remove
    linkDB_Remove
        0x110230c0:    b510        ..      PUSH     {r4,lr}
        0x110230c2:    f7ffff9d    ....    BL       linkDB_Find ; 0x11023000
        0x110230c6:    0004        ..      MOVS     r4,r0
        0x110230c8:    d013        ..      BEQ      0x110230f2 ; linkDB_Remove + 50
        0x110230ca:    8860        `.      LDRH     r0,[r4,#2]
        0x110230cc:    2101        .!      MOVS     r1,#1
        0x110230ce:    f000f813    ....    BL       reportStatusChange ; 0x110230f8
        0x110230d2:    6a60        `j      LDR      r0,[r4,#0x24]
        0x110230d4:    2800        .(      CMP      r0,#0
        0x110230d6:    d001        ..      BEQ      0x110230dc ; linkDB_Remove + 28
        0x110230d8:    f7fef936    ..6.    BL       $Ven$TT$L$$osal_mem_free ; 0x11021348
        0x110230dc:    2228        ("      MOVS     r2,#0x28
        0x110230de:    2100        .!      MOVS     r1,#0
        0x110230e0:    4620         F      MOV      r0,r4
        0x110230e2:    f7fef8b9    ....    BL       $Ven$TT$L$$osal_memset ; 0x11021258
        0x110230e6:    2000        .       MOVS     r0,#0
        0x110230e8:    43c0        .C      MVNS     r0,r0
        0x110230ea:    8060        `.      STRH     r0,[r4,#2]
        0x110230ec:    2000        .       MOVS     r0,#0
        0x110230ee:    7120         q      STRB     r0,[r4,#4]
        0x110230f0:    bd10        ..      POP      {r4,pc}
        0x110230f2:    2002        .       MOVS     r0,#2
        0x110230f4:    bd10        ..      POP      {r4,pc}
        0x110230f6:    0000        ..      MOVS     r0,r0
    i.reportStatusChange
    reportStatusChange
        0x110230f8:    b5f8        ..      PUSH     {r3-r7,lr}
        0x110230fa:    4d08        .M      LDR      r5,[pc,#32] ; [0x1102311c] = 0x1fff5a54
        0x110230fc:    460e        .F      MOV      r6,r1
        0x110230fe:    4607        .F      MOV      r7,r0
        0x11023100:    2400        .$      MOVS     r4,#0
        0x11023102:    00a0        ..      LSLS     r0,r4,#2
        0x11023104:    582a        *X      LDR      r2,[r5,r0]
        0x11023106:    2a00        .*      CMP      r2,#0
        0x11023108:    d002        ..      BEQ      0x11023110 ; reportStatusChange + 24
        0x1102310a:    4631        1F      MOV      r1,r6
        0x1102310c:    4638        8F      MOV      r0,r7
        0x1102310e:    4790        .G      BLX      r2
        0x11023110:    1c64        d.      ADDS     r4,r4,#1
        0x11023112:    b2e4        ..      UXTB     r4,r4
        0x11023114:    2c05        .,      CMP      r4,#5
        0x11023116:    d3f4        ..      BCC      0x11023102 ; reportStatusChange + 10
        0x11023118:    bdf8        ..      POP      {r3-r7,pc}
    $d
        0x1102311a:    0000        ..      DCW    0
        0x1102311c:    1fff5a54    TZ..    DCD    536828500
    $t
    i.sendEstLinkEvent
    sendEstLinkEvent
        0x11023120:    b5ff        ..      PUSH     {r0-r7,lr}
        0x11023122:    b081        ..      SUB      sp,sp,#4
        0x11023124:    461d        .F      MOV      r5,r3
        0x11023126:    4617        .F      MOV      r7,r2
        0x11023128:    2014        .       MOVS     r0,#0x14
        0x1102312a:    9e0e        ..      LDR      r6,[sp,#0x38]
        0x1102312c:    f7fef966    ..f.    BL       $Ven$TT$L$$osal_msg_allocate ; 0x110213fc
        0x11023130:    0004        ..      MOVS     r4,r0
        0x11023132:    d020         .      BEQ      0x11023176 ; sendEstLinkEvent + 86
        0x11023134:    20d0        .       MOVS     r0,#0xd0
        0x11023136:    7020         p      STRB     r0,[r4,#0]
        0x11023138:    9801        ..      LDR      r0,[sp,#4]
        0x1102313a:    7060        `p      STRB     r0,[r4,#1]
        0x1102313c:    2005        .       MOVS     r0,#5
        0x1102313e:    70a0        .p      STRB     r0,[r4,#2]
        0x11023140:    70e7        .p      STRB     r7,[r4,#3]
        0x11023142:    2d00        .-      CMP      r5,#0
        0x11023144:    d005        ..      BEQ      0x11023152 ; sendEstLinkEvent + 50
        0x11023146:    2206        ."      MOVS     r2,#6
        0x11023148:    4629        )F      MOV      r1,r5
        0x1102314a:    1d20         .      ADDS     r0,r4,#4
        0x1102314c:    f7fef854    ..T.    BL       $Ven$TT$L$$osal_memcpy ; 0x110211f8
        0x11023150:    e004        ..      B        0x1102315c ; sendEstLinkEvent + 60
        0x11023152:    2206        ."      MOVS     r2,#6
        0x11023154:    2100        .!      MOVS     r1,#0
        0x11023156:    1d20         .      ADDS     r0,r4,#4
        0x11023158:    f7fef87e    ..~.    BL       $Ven$TT$L$$osal_memset ; 0x11021258
        0x1102315c:    980a        ..      LDR      r0,[sp,#0x28]
        0x1102315e:    8160        `.      STRH     r0,[r4,#0xa]
        0x11023160:    980b        ..      LDR      r0,[sp,#0x2c]
        0x11023162:    81a0        ..      STRH     r0,[r4,#0xc]
        0x11023164:    980c        ..      LDR      r0,[sp,#0x30]
        0x11023166:    81e0        ..      STRH     r0,[r4,#0xe]
        0x11023168:    980d        ..      LDR      r0,[sp,#0x34]
        0x1102316a:    8220         .      STRH     r0,[r4,#0x10]
        0x1102316c:    74a6        .t      STRB     r6,[r4,#0x12]
        0x1102316e:    4621        !F      MOV      r1,r4
        0x11023170:    9802        ..      LDR      r0,[sp,#8]
        0x11023172:    f7fef8ef    ....    BL       $Ven$TT$L$$osal_msg_send ; 0x11021354
        0x11023176:    b005        ..      ADD      sp,sp,#0x14
        0x11023178:    bdf0        ..      POP      {r4-r7,pc}
    i.sendTerminateEvent
    sendTerminateEvent
        0x1102317a:    b5f8        ..      PUSH     {r3-r7,lr}
        0x1102317c:    4606        .F      MOV      r6,r0
        0x1102317e:    461c        .F      MOV      r4,r3
        0x11023180:    4615        .F      MOV      r5,r2
        0x11023182:    460f        .F      MOV      r7,r1
        0x11023184:    2008        .       MOVS     r0,#8
        0x11023186:    f7fef939    ..9.    BL       $Ven$TT$L$$osal_msg_allocate ; 0x110213fc
        0x1102318a:    0001        ..      MOVS     r1,r0
        0x1102318c:    d009        ..      BEQ      0x110231a2 ; sendTerminateEvent + 40
        0x1102318e:    20d0        .       MOVS     r0,#0xd0
        0x11023190:    7008        .p      STRB     r0,[r1,#0]
        0x11023192:    704e        Np      STRB     r6,[r1,#1]
        0x11023194:    2006        .       MOVS     r0,#6
        0x11023196:    7088        .p      STRB     r0,[r1,#2]
        0x11023198:    808d        ..      STRH     r5,[r1,#4]
        0x1102319a:    718c        .q      STRB     r4,[r1,#6]
        0x1102319c:    4638        8F      MOV      r0,r7
        0x1102319e:    f7fef8d9    ....    BL       $Ven$TT$L$$osal_msg_send ; 0x11021354
        0x110231a2:    bdf8        ..      POP      {r3-r7,pc}
    i.smEncrypt
    smEncrypt
        0x110231a4:    b510        ..      PUSH     {r4,lr}
        0x110231a6:    4602        .F      MOV      r2,r0
        0x110231a8:    4601        .F      MOV      r1,r0
        0x110231aa:    3220         2      ADDS     r2,r2,#0x20
        0x110231ac:    3110        .1      ADDS     r1,r1,#0x10
        0x110231ae:    f7fef94f    ..O.    BL       $Ven$TT$L$$LL_Encrypt ; 0x11021450
        0x110231b2:    bd10        ..      POP      {r4,pc}
    i.smGenerateRandBuf
    smGenerateRandBuf
        0x110231b4:    b570        p.      PUSH     {r4-r6,lr}
        0x110231b6:    460d        .F      MOV      r5,r1
        0x110231b8:    4606        .F      MOV      r6,r0
        0x110231ba:    2400        .$      MOVS     r4,#0
        0x110231bc:    e00a        ..      B        0x110231d4 ; smGenerateRandBuf + 32
        0x110231be:    f7fef94d    ..M.    BL       $Ven$TT$L$$osal_rand ; 0x1102145c
        0x110231c2:    0a01        ..      LSRS     r1,r0,#8
        0x110231c4:    5531        1U      STRB     r1,[r6,r4]
        0x110231c6:    1c64        d.      ADDS     r4,r4,#1
        0x110231c8:    b2e4        ..      UXTB     r4,r4
        0x110231ca:    42ac        .B      CMP      r4,r5
        0x110231cc:    d202        ..      BCS      0x110231d4 ; smGenerateRandBuf + 32
        0x110231ce:    5530        0U      STRB     r0,[r6,r4]
        0x110231d0:    1c64        d.      ADDS     r4,r4,#1
        0x110231d2:    b2e4        ..      UXTB     r4,r4
        0x110231d4:    42ac        .B      CMP      r4,r5
        0x110231d6:    d3f2        ..      BCC      0x110231be ; smGenerateRandBuf + 10
        0x110231d8:    bd70        p.      POP      {r4-r6,pc}
    i.sm_ah
    sm_ah
        0x110231da:    b570        p.      PUSH     {r4-r6,lr}
        0x110231dc:    b08c        ..      SUB      sp,sp,#0x30
        0x110231de:    4615        .F      MOV      r5,r2
        0x110231e0:    460e        .F      MOV      r6,r1
        0x110231e2:    4604        .F      MOV      r4,r0
        0x110231e4:    2230        0"      MOVS     r2,#0x30
        0x110231e6:    2100        .!      MOVS     r1,#0
        0x110231e8:    4668        hF      MOV      r0,sp
        0x110231ea:    f7fef835    ..5.    BL       $Ven$TT$L$$osal_memset ; 0x11021258
        0x110231ee:    2210        ."      MOVS     r2,#0x10
        0x110231f0:    4621        !F      MOV      r1,r4
        0x110231f2:    4668        hF      MOV      r0,sp
        0x110231f4:    f7fef938    ..8.    BL       $Ven$TT$L$$osal_revmemcpy ; 0x11021468
        0x110231f8:    a807        ..      ADD      r0,sp,#0x1c
        0x110231fa:    2203        ."      MOVS     r2,#3
        0x110231fc:    4631        1F      MOV      r1,r6
        0x110231fe:    3001        .0      ADDS     r0,#1
        0x11023200:    f7fef932    ..2.    BL       $Ven$TT$L$$osal_revmemcpy ; 0x11021468
        0x11023204:    4668        hF      MOV      r0,sp
        0x11023206:    f7ffffcd    ....    BL       smEncrypt ; 0x110231a4
        0x1102320a:    4604        .F      MOV      r4,r0
        0x1102320c:    a90b        ..      ADD      r1,sp,#0x2c
        0x1102320e:    2203        ."      MOVS     r2,#3
        0x11023210:    4628        (F      MOV      r0,r5
        0x11023212:    3101        .1      ADDS     r1,#1
        0x11023214:    f7fef928    ..(.    BL       $Ven$TT$L$$osal_revmemcpy ; 0x11021468
        0x11023218:    4620         F      MOV      r0,r4
        0x1102321a:    b00c        ..      ADD      sp,sp,#0x30
        0x1102321c:    bd70        p.      POP      {r4-r6,pc}
    $d.realdata
    c_gpio_index
        0x1102321e:    0100        ..      DCW    256
        0x11023220:    09070302    ....    DCD    151454466
        0x11023224:    0f0e0b0a    ....    DCD    252578570
        0x11023228:    14121110    ....    DCD    336728336
        0x1102322c:    1a191817    ....    DCD    437852183
        0x11023230:    21201f1b    .. !    DCD    555753243
        0x11023234:    22          "       DCB    34
    c_gpio_pull
        0x11023235:    000201      ...     DCB    0,2,1
        0x11023238:    00040500    ....    DCD    263424
        0x1102323c:    0b000708    ....    DCD    184551176
        0x11023240:    1617000a    ....    DCD    370606090
        0x11023244:    011c1d00    ....    DCD    18619648
        0x11023248:    05010102    ....    DCD    83951874
        0x1102324c:    0d0e0104    ....    DCD    219021572
        0x11023250:    01101101    ....    DCD    17830145
        0x11023254:    17011314    ....    DCD    385946388
        0x11023258:    191a0116    ....    DCD    421134614
        0x1102325c:    02010202    ....    DCD    33620482
        0x11023260:    0e020a0b    ....    DCD    235014667
        0x11023264:    1011020d    ....    DCD    269550093
        0x11023268:    02131402    ....    DCD    34804738
        0x1102326c:    05031617    ....    DCD    84088343
        0x11023270:    07080304    ....    DCD    117965572
        0x11023274:    030a0b03    ....    DCD    50989827
        0x11023278:    00000d0e    ....    DCD    3342
    findMy_ObserverCBs
        0x1102327c:    00000000    ....    DCD    0
        0x11023280:    11020699    ....    DCD    285345433
    retention_reg
        0x11023284:    0e000d00    ....    DCD    234884352
        0x11023288:    11001000    ....    DCD    285216768
        0x1102328c:    14001300    ....    DCD    335549184
        0x11023290:    08010701    ....    DCD    134285057
        0x11023294:    0b010a01    ....    DCD    184617473
        0x11023298:    1d011c01    ....    DCD    486611969
        0x1102329c:    05020402    ....    DCD    84018178
        0x110232a0:    08020702    ....    DCD    134350594
        0x110232a4:    1a021902    ....    DCD    436345090
        0x110232a8:    1d021c02    ....    DCD    486677506
        0x110232ac:    02030103    ....    DCD    33751299
        0x110232b0:    00001703    ....    DCD    5891

====================================

** Section #7

    Name        : .debug_abbrev
    Type        : SHT_PROGBITS (0x00000001)
    Flags       : None (0x00000000)
    Addr        : 0x00000000
    File Offset : 30688 (0x77e0)
    Size        : 8495 bytes (0x212f)
    Link        : SHN_UNDEF
    Info        : 0
    Alignment   : 1
    Entry Size  : 0


====================================

** Section #8

    Name        : .debug_frame
    Type        : SHT_PROGBITS (0x00000001)
    Flags       : None (0x00000000)
    Addr        : 0x00000000
    File Offset : 39183 (0x990f)
    Size        : 8660 bytes (0x21d4)
    Link        : SHN_UNDEF
    Info        : 0
    Alignment   : 1
    Entry Size  : 0


====================================

** Section #9

    Name        : .debug_info
    Type        : SHT_PROGBITS (0x00000001)
    Flags       : None (0x00000000)
    Addr        : 0x00000000
    File Offset : 47843 (0xbae3)
    Size        : 44675 bytes (0xae83)
    Link        : SHN_UNDEF
    Info        : 0
    Alignment   : 1
    Entry Size  : 0


====================================

** Section #10

    Name        : .debug_line
    Type        : SHT_PROGBITS (0x00000001)
    Flags       : None (0x00000000)
    Addr        : 0x00000000
    File Offset : 92518 (0x16966)
    Size        : 27410 bytes (0x6b12)
    Link        : SHN_UNDEF
    Info        : 0
    Alignment   : 1
    Entry Size  : 0


====================================

** Section #11

    Name        : .debug_loc
    Type        : SHT_PROGBITS (0x00000001)
    Flags       : None (0x00000000)
    Addr        : 0x00000000
    File Offset : 119928 (0x1d478)
    Size        : 25738 bytes (0x648a)
    Link        : SHN_UNDEF
    Info        : 0
    Alignment   : 1
    Entry Size  : 0


====================================

** Section #12

    Name        : .debug_ranges
    Type        : SHT_PROGBITS (0x00000001)
    Flags       : None (0x00000000)
    Addr        : 0x00000000
    File Offset : 145666 (0x23902)
    Size        : 3176 bytes (0xc68)
    Link        : SHN_UNDEF
    Info        : 0
    Alignment   : 1
    Entry Size  : 0


====================================

** Section #13

    Name        : .debug_str
    Type        : SHT_PROGBITS (0x00000001)
    Flags       : None (0x00000000)
    Addr        : 0x00000000
    File Offset : 148842 (0x2456a)
    Size        : 34071 bytes (0x8517)
    Link        : SHN_UNDEF
    Info        : 0
    Alignment   : 1
    Entry Size  : 0


====================================

** Section #14

    Name        : .symtab
    Type        : SHT_SYMTAB (0x00000002)
    Flags       : None (0x00000000)
    Addr        : 0x00000000
    File Offset : 182916 (0x2ca84)
    Size        : 42192 bytes (0xa4d0)
    Link        : Section 15 (.strtab)
    Info        : Last local symbol no = 1219
    Alignment   : 4
    Entry Size  : 16


====================================

** Section #15

    Name        : .strtab
    Type        : SHT_STRTAB (0x00000003)
    Flags       : None (0x00000000)
    Addr        : 0x00000000
    File Offset : 225108 (0x36f54)
    Size        : 37104 bytes (0x90f0)
    Link        : SHN_UNDEF
    Info        : 0
    Alignment   : 1
    Entry Size  : 0


====================================

** Section #16

    Name        : .note
    Type        : SHT_NOTE (0x00000007)
    Flags       : None (0x00000000)
    Addr        : 0x00000000
    File Offset : 262212 (0x40044)
    Size        : 40 bytes (0x28)
    Link        : SHN_UNDEF
    Info        : 0
    Alignment   : 4
    Entry Size  : 0

        Section     Segment
    ====================================

              1           0
              2           0
              3           0
              4           1
              5           1
              6           2

====================================

** Section #17

    Name        : .comment
    Type        : SHT_PROGBITS (0x00000001)
    Flags       : None (0x00000000)
    Addr        : 0x00000000
    File Offset : 262252 (0x4006c)
    Size        : 30716 bytes (0x77fc)
    Link        : SHN_UNDEF
    Info        : 0
    Alignment   : 1
    Entry Size  : 0

    Component: Arm Compiler for Embedded 6.19 Tool: armlink [5e73cb00]
    ArmLink --library_type=microlib --callgraph --load_addr_map_info --map --symbols --xref --diag_suppress=9931 --cpu=Cortex-M0 --list=.\Listings\FindMy.map --output=.\Objects\FindMy.axf --scatter=.\scatter_load.sct --keep=jump_table_base --keep=global_config --info=summarysizes,sizes,totals,unused,veneers

    C:\Keil_v5\ARM\ARMCLANG\Bin\..\lib\armlib\h_p.l
    C:\Keil_v5\ARM\ARMCLANG\Bin\..\lib\libcxx\libcpp-experimental_p.l
    C:\Keil_v5\ARM\ARMCLANG\Bin\..\lib\libcxx\libcpp_p.l
    C:\Keil_v5\ARM\ARMCLANG\Bin\..\lib\libcxx\libcppabi_p.l
    C:\Keil_v5\ARM\ARMCLANG\Bin\..\lib\armlib\m_ps.l
    C:\Keil_v5\ARM\ARMCLANG\Bin\..\lib\armlib\mc_p.l
    C:\Keil_v5\ARM\ARMCLANG\Bin\..\lib\armlib\mf_p.l
    C:\Keil_v5\ARM\ARMCLANG\Bin\..\lib\armlib\vfpsupport.l
    Input Comments:
    
    smp.o
    
    Component: ARM Compiler 5.05 (build 41) Tool: armlink [4d0eb9]
    armlink --partial --no_add_relocs_to_undefined --no_generate_mapping_symbols --diag_suppress=6642 --cpu=Cortex-M0 --fpu=SoftVFP --output=.\objects\smp.o --vfemode=force

    Input Comments:
    
    p5a20-3
    
    Component: ARM Compiler 5.05 (build 41) Tool: armasm [4d0eb9]
    armasm --diag_suppress=1602,1073 --cpu=Cortex-M0 --fpu=SoftVFP --apcs=/interwork/interwork --no_divide  C:\Users\Thinkpad\AppData\Local\Temp\p5a20-2
    
    
    
    
    smp.o
    
    Component: ARM Compiler 5.05 (build 41) Tool: ArmCC [4d0eb9]
    ArmCC --c99 --split_sections -c -o.\objects\smp.o --depend=.\objects\smp.d --cpu=Cortex-M0 --apcs=interwork -O3 -I..\..\components\inc -I..\..\components\arch\cm0 -I..\..\components\osal\include -I..\..\components\driver\gpio -I..\..\components\driver\uart -I..\..\components\driver\log -I..\..\components\driver\flash -I..\..\components\driver\clock -I..\..\components\driver\timer -I..\..\components\ble\hci -I..\..\components\ble\host -I..\..\components\ble\controller -I..\..\components\ble\include -I..\..\misc -I.\source -I..\include -D__MICROLIB -DADV_NCONN_CFG=0x01 -DADV_CONN_CFG=0x02 -DSCAN_CFG=0x04 -DINIT_CFG=0x08 -DBROADCASTER_CFG=0x01 -DOBSERVER_CFG=0x02 -DPERIPHERAL_CFG=0x04 -DCENTRAL_CFG=0x08 -DHOST_CONFIG=0xC -D_RTE_ -DARMCM0 -D_RTE_ -DCFG_CP -DDEBUG_INFO=0 -DPHY_MCU_TYPE=MCU_BUMBEE_M0 -DMTU_SIZE=247 -DMAX_NUM_LL_CONN=1 ..\..\components\ble_src\host\smp.c
    
    
    l2cap_util.o
    
    Component: ARM Compiler 5.05 (build 41) Tool: armlink [4d0eb9]
    armlink --partial --no_add_relocs_to_undefined --no_generate_mapping_symbols --diag_suppress=6642 --cpu=Cortex-M0 --fpu=SoftVFP --output=.\objects\l2cap_util.o --vfemode=force

    Input Comments:
    
    p3164-3
    
    Component: ARM Compiler 5.05 (build 41) Tool: armasm [4d0eb9]
    armasm --diag_suppress=1602,1073 --cpu=Cortex-M0 --fpu=SoftVFP --apcs=/interwork/interwork --no_divide  C:\Users\Thinkpad\AppData\Local\Temp\p3164-2
    
    
    
    
    l2cap_util.o
    
    Component: ARM Compiler 5.05 (build 41) Tool: ArmCC [4d0eb9]
    ArmCC --c99 --split_sections -c -o.\objects\l2cap_util.o --depend=.\objects\l2cap_util.d --cpu=Cortex-M0 --apcs=interwork -O3 -I..\..\components\inc -I..\..\components\arch\cm0 -I..\..\components\osal\include -I..\..\components\driver\gpio -I..\..\components\driver\uart -I..\..\components\driver\log -I..\..\components\driver\flash -I..\..\components\driver\clock -I..\..\components\driver\timer -I..\..\components\ble\hci -I..\..\components\ble\host -I..\..\components\ble\controller -I..\..\components\ble\include -I..\..\misc -I.\source -I..\include -D__MICROLIB -DADV_NCONN_CFG=0x01 -DADV_CONN_CFG=0x02 -DSCAN_CFG=0x04 -DINIT_CFG=0x08 -DBROADCASTER_CFG=0x01 -DOBSERVER_CFG=0x02 -DPERIPHERAL_CFG=0x04 -DCENTRAL_CFG=0x08 -DHOST_CONFIG=0xC -D_RTE_ -DARMCM0 -D_RTE_ -DCFG_CP -DDEBUG_INFO=0 -DPHY_MCU_TYPE=MCU_BUMBEE_M0 -DMTU_SIZE=247 -DMAX_NUM_LL_CONN=1 ..\..\components\ble_src\host\l2cap_util.c
    
    
    
    aes.o
    
    Component: ARM Compiler 5.05 (build 41) Tool: armlink [4d0eb9]
    armlink --partial --no_add_relocs_to_undefined --no_generate_mapping_symbols --diag_suppress=6642 --cpu=Cortex-M0 --fpu=SoftVFP --output=.\objects\aes.o --vfemode=force

    Input Comments:
    
    p660c-3
    
    Component: ARM Compiler 5.05 (build 41) Tool: armasm [4d0eb9]
    armasm --diag_suppress=1602,1073 --cpu=Cortex-M0 --fpu=SoftVFP --apcs=/interwork/interwork --no_divide  C:\Users\Thinkpad\AppData\Local\Temp\p660c-2
    
    
    
    
    aes.o
    
    Component: ARM Compiler 5.05 (build 41) Tool: ArmCC [4d0eb9]
    ArmCC --c99 --split_sections -c -o.\objects\aes.o --depend=.\objects\aes.d --cpu=Cortex-M0 --apcs=interwork -O0 -I..\..\components\inc -I..\..\components\arch\cm0 -I..\..\components\osal\include -I..\..\components\driver\gpio -I..\..\components\driver\uart -I..\..\components\driver\log -I..\..\components\driver\flash -I..\..\components\driver\clock -I..\..\components\driver\timer -I..\..\components\ble\hci -I..\..\components\ble\host -I..\..\components\ble\controller -I..\..\components\ble\include -I..\..\misc -I.\source -I..\include -D__MICROLIB -DADV_NCONN_CFG=0x01 -DADV_CONN_CFG=0x02 -DSCAN_CFG=0x04 -DINIT_CFG=0x08 -DBROADCASTER_CFG=0x01 -DOBSERVER_CFG=0x02 -DPERIPHERAL_CFG=0x04 -DCENTRAL_CFG=0x08 -DHOST_CONFIG=0x4 -D_RTE_ -DARMCM0 -DCFG_CP -DDEBUG_INFO=0 -DMTU_SIZE=247 -DPHY_MCU_TYPE=MCU_BUMBEE_M0 source\aes.c
    
    
    
    
    
    gap_linkmgr.o
    
    Component: ARM Compiler 5.05 (build 41) Tool: armlink [4d0eb9]
    armlink --partial --no_add_relocs_to_undefined --no_generate_mapping_symbols --diag_suppress=6642 --cpu=Cortex-M0 --fpu=SoftVFP --output=.\objects\gap_linkmgr.o --vfemode=force

    Input Comments:
    
    p21d4-3
    
    Component: ARM Compiler 5.05 (build 41) Tool: armasm [4d0eb9]
    armasm --diag_suppress=1602,1073 --cpu=Cortex-M0 --fpu=SoftVFP --apcs=/interwork/interwork --no_divide  C:\Users\Thinkpad\AppData\Local\Temp\p21d4-2
    
    
    
    
    gap_linkmgr.o
    
    Component: ARM Compiler 5.05 (build 41) Tool: ArmCC [4d0eb9]
    ArmCC --c99 --split_sections -c -o.\objects\gap_linkmgr.o --depend=.\objects\gap_linkmgr.d --cpu=Cortex-M0 --apcs=interwork -O3 -I..\..\components\inc -I..\..\components\arch\cm0 -I..\..\components\osal\include -I..\..\components\driver\gpio -I..\..\components\driver\uart -I..\..\components\driver\log -I..\..\components\driver\flash -I..\..\components\driver\clock -I..\..\components\driver\timer -I..\..\components\ble\hci -I..\..\components\ble\host -I..\..\components\ble\controller -I..\..\components\ble\include -I..\..\misc -I.\source -I..\include -D__MICROLIB -DADV_NCONN_CFG=0x01 -DADV_CONN_CFG=0x02 -DSCAN_CFG=0x04 -DINIT_CFG=0x08 -DBROADCASTER_CFG=0x01 -DOBSERVER_CFG=0x02 -DPERIPHERAL_CFG=0x04 -DCENTRAL_CFG=0x08 -DHOST_CONFIG=0xC -D_RTE_ -DARMCM0 -D_RTE_ -DCFG_CP -DDEBUG_INFO=0 -DPHY_MCU_TYPE=MCU_BUMBEE_M0 -DMTU_SIZE=247 -DMAX_NUM_LL_CONN=1 ..\..\components\ble_src\host\gap_linkmgr.c
    
    
    gap_centlinkmgr.o
    
    Component: ARM Compiler 5.05 (build 41) Tool: armlink [4d0eb9]
    armlink --partial --no_add_relocs_to_undefined --no_generate_mapping_symbols --diag_suppress=6642 --cpu=Cortex-M0 --fpu=SoftVFP --output=.\objects\gap_centlinkmgr.o --vfemode=force

    Input Comments:
    
    p2988-3
    
    Component: ARM Compiler 5.05 (build 41) Tool: armasm [4d0eb9]
    armasm --diag_suppress=1602,1073 --cpu=Cortex-M0 --fpu=SoftVFP --apcs=/interwork/interwork --no_divide  C:\Users\Thinkpad\AppData\Local\Temp\p2988-2
    
    
    
    
    gap_centlinkmgr.o
    
    Component: ARM Compiler 5.05 (build 41) Tool: ArmCC [4d0eb9]
    ArmCC --c99 --split_sections -c -o.\objects\gap_centlinkmgr.o --depend=.\objects\gap_centlinkmgr.d --cpu=Cortex-M0 --apcs=interwork -O3 -I..\..\components\inc -I..\..\components\arch\cm0 -I..\..\components\osal\include -I..\..\components\driver\gpio -I..\..\components\driver\uart -I..\..\components\driver\log -I..\..\components\driver\flash -I..\..\components\driver\clock -I..\..\components\driver\timer -I..\..\components\ble\hci -I..\..\components\ble\host -I..\..\components\ble\controller -I..\..\components\ble\include -I..\..\misc -I.\source -I..\include -D__MICROLIB -DADV_NCONN_CFG=0x01 -DADV_CONN_CFG=0x02 -DSCAN_CFG=0x04 -DINIT_CFG=0x08 -DBROADCASTER_CFG=0x01 -DOBSERVER_CFG=0x02 -DPERIPHERAL_CFG=0x04 -DCENTRAL_CFG=0x08 -DHOST_CONFIG=0xC -D_RTE_ -DARMCM0 -D_RTE_ -DCFG_CP -DDEBUG_INFO=0 -DPHY_MCU_TYPE=MCU_BUMBEE_M0 -DMTU_SIZE=247 -DMAX_NUM_LL_CONN=1 ..\..\components\ble_src\host\gap_centlinkmgr.c
    
    
    gap_task.o
    
    Component: ARM Compiler 5.05 (build 41) Tool: armlink [4d0eb9]
    armlink --partial --no_add_relocs_to_undefined --no_generate_mapping_symbols --diag_suppress=6642 --cpu=Cortex-M0 --fpu=SoftVFP --output=.\objects\gap_task.o --vfemode=force

    Input Comments:
    
    p303c-3
    
    Component: ARM Compiler 5.05 (build 41) Tool: armasm [4d0eb9]
    armasm --diag_suppress=1602,1073 --cpu=Cortex-M0 --fpu=SoftVFP --apcs=/interwork/interwork --no_divide  C:\Users\Thinkpad\AppData\Local\Temp\p303c-2
    
    
    
    
    gap_task.o
    
    Component: ARM Compiler 5.05 (build 41) Tool: ArmCC [4d0eb9]
    ArmCC --c99 --split_sections -c -o.\objects\gap_task.o --depend=.\objects\gap_task.d --cpu=Cortex-M0 --apcs=interwork -O3 -I..\..\components\inc -I..\..\components\arch\cm0 -I..\..\components\osal\include -I..\..\components\driver\gpio -I..\..\components\driver\uart -I..\..\components\driver\log -I..\..\components\driver\flash -I..\..\components\driver\clock -I..\..\components\driver\timer -I..\..\components\ble\hci -I..\..\components\ble\host -I..\..\components\ble\controller -I..\..\components\ble\include -I..\..\misc -I.\source -I..\include -D__MICROLIB -DADV_NCONN_CFG=0x01 -DADV_CONN_CFG=0x02 -DSCAN_CFG=0x04 -DINIT_CFG=0x08 -DBROADCASTER_CFG=0x01 -DOBSERVER_CFG=0x02 -DPERIPHERAL_CFG=0x04 -DCENTRAL_CFG=0x08 -DHOST_CONFIG=0xC -D_RTE_ -DARMCM0 -D_RTE_ -DCFG_CP -DDEBUG_INFO=0 -DPHY_MCU_TYPE=MCU_BUMBEE_M0 -DMTU_SIZE=247 -DMAX_NUM_LL_CONN=1 ..\..\components\ble_src\host\gap_task.c
    
    
    
    
    
    sm_mgr.o
    
    Component: ARM Compiler 5.05 (build 41) Tool: armlink [4d0eb9]
    armlink --partial --no_add_relocs_to_undefined --no_generate_mapping_symbols --diag_suppress=6642 --cpu=Cortex-M0 --fpu=SoftVFP --output=.\objects\sm_mgr.o --vfemode=force

    Input Comments:
    
    p4218-3
    
    Component: ARM Compiler 5.05 (build 41) Tool: armasm [4d0eb9]
    armasm --diag_suppress=1602,1073 --cpu=Cortex-M0 --fpu=SoftVFP --apcs=/interwork/interwork --no_divide  C:\Users\Thinkpad\AppData\Local\Temp\p4218-2
    
    
    
    
    sm_mgr.o
    
    Component: ARM Compiler 5.05 (build 41) Tool: ArmCC [4d0eb9]
    ArmCC --c99 --split_sections -c -o.\objects\sm_mgr.o --depend=.\objects\sm_mgr.d --cpu=Cortex-M0 --apcs=interwork -O3 -I..\..\components\inc -I..\..\components\arch\cm0 -I..\..\components\osal\include -I..\..\components\driver\gpio -I..\..\components\driver\uart -I..\..\components\driver\log -I..\..\components\driver\flash -I..\..\components\driver\clock -I..\..\components\driver\timer -I..\..\components\ble\hci -I..\..\components\ble\host -I..\..\components\ble\controller -I..\..\components\ble\include -I..\..\misc -I.\source -I..\include -D__MICROLIB -DADV_NCONN_CFG=0x01 -DADV_CONN_CFG=0x02 -DSCAN_CFG=0x04 -DINIT_CFG=0x08 -DBROADCASTER_CFG=0x01 -DOBSERVER_CFG=0x02 -DPERIPHERAL_CFG=0x04 -DCENTRAL_CFG=0x08 -DHOST_CONFIG=0xC -D_RTE_ -DARMCM0 -D_RTE_ -DCFG_CP -DDEBUG_INFO=0 -DPHY_MCU_TYPE=MCU_BUMBEE_M0 -DMTU_SIZE=247 -DMAX_NUM_LL_CONN=1 ..\..\components\ble_src\host\sm_mgr.c
    
    
    
    l2cap_if.o
    
    Component: ARM Compiler 5.05 (build 41) Tool: armlink [4d0eb9]
    armlink --partial --no_add_relocs_to_undefined --no_generate_mapping_symbols --diag_suppress=6642 --cpu=Cortex-M0 --fpu=SoftVFP --output=.\objects\l2cap_if.o --vfemode=force

    Input Comments:
    
    p54b0-3
    
    Component: ARM Compiler 5.05 (build 41) Tool: armasm [4d0eb9]
    armasm --diag_suppress=1602,1073 --cpu=Cortex-M0 --fpu=SoftVFP --apcs=/interwork/interwork --no_divide  C:\Users\Thinkpad\AppData\Local\Temp\p54b0-2
    
    
    
    
    l2cap_if.o
    
    Component: ARM Compiler 5.05 (build 41) Tool: ArmCC [4d0eb9]
    ArmCC --c99 --split_sections -c -o.\objects\l2cap_if.o --depend=.\objects\l2cap_if.d --cpu=Cortex-M0 --apcs=interwork -O3 -I..\..\components\inc -I..\..\components\arch\cm0 -I..\..\components\osal\include -I..\..\components\driver\gpio -I..\..\components\driver\uart -I..\..\components\driver\log -I..\..\components\driver\flash -I..\..\components\driver\clock -I..\..\components\driver\timer -I..\..\components\ble\hci -I..\..\components\ble\host -I..\..\components\ble\controller -I..\..\components\ble\include -I..\..\misc -I.\source -I..\include -D__MICROLIB -DADV_NCONN_CFG=0x01 -DADV_CONN_CFG=0x02 -DSCAN_CFG=0x04 -DINIT_CFG=0x08 -DBROADCASTER_CFG=0x01 -DOBSERVER_CFG=0x02 -DPERIPHERAL_CFG=0x04 -DCENTRAL_CFG=0x08 -DHOST_CONFIG=0xC -D_RTE_ -DARMCM0 -D_RTE_ -DCFG_CP -DDEBUG_INFO=0 -DPHY_MCU_TYPE=MCU_BUMBEE_M0 -DMTU_SIZE=247 -DMAX_NUM_LL_CONN=1 ..\..\components\ble_src\host\l2cap_if.c
    
    
    
    
    
    gap_devmgr.o
    
    Component: ARM Compiler 5.05 (build 41) Tool: armlink [4d0eb9]
    armlink --partial --no_add_relocs_to_undefined --no_generate_mapping_symbols --diag_suppress=6642 --cpu=Cortex-M0 --fpu=SoftVFP --output=.\objects\gap_devmgr.o --vfemode=force

    Input Comments:
    
    p20a8-3
    
    Component: ARM Compiler 5.05 (build 41) Tool: armasm [4d0eb9]
    armasm --diag_suppress=1602,1073 --cpu=Cortex-M0 --fpu=SoftVFP --apcs=/interwork/interwork --no_divide  C:\Users\Thinkpad\AppData\Local\Temp\p20a8-2
    
    
    
    
    gap_devmgr.o
    
    Component: ARM Compiler 5.05 (build 41) Tool: ArmCC [4d0eb9]
    ArmCC --c99 --split_sections -c -o.\objects\gap_devmgr.o --depend=.\objects\gap_devmgr.d --cpu=Cortex-M0 --apcs=interwork -O3 -I..\..\components\inc -I..\..\components\arch\cm0 -I..\..\components\osal\include -I..\..\components\driver\gpio -I..\..\components\driver\uart -I..\..\components\driver\log -I..\..\components\driver\flash -I..\..\components\driver\clock -I..\..\components\driver\timer -I..\..\components\ble\hci -I..\..\components\ble\host -I..\..\components\ble\controller -I..\..\components\ble\include -I..\..\misc -I.\source -I..\include -D__MICROLIB -DADV_NCONN_CFG=0x01 -DADV_CONN_CFG=0x02 -DSCAN_CFG=0x04 -DINIT_CFG=0x08 -DBROADCASTER_CFG=0x01 -DOBSERVER_CFG=0x02 -DPERIPHERAL_CFG=0x04 -DCENTRAL_CFG=0x08 -DHOST_CONFIG=0xC -D_RTE_ -DARMCM0 -D_RTE_ -DCFG_CP -DDEBUG_INFO=0 -DPHY_MCU_TYPE=MCU_BUMBEE_M0 -DMTU_SIZE=247 -DMAX_NUM_LL_CONN=1 ..\..\components\ble_src\host\gap_devmgr.c
    
    
    
    patch.o
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: armlink [4d35ed]
    armlink --partial --no_add_relocs_to_undefined --no_generate_mapping_symbols --diag_suppress=9931,9931,6642 --cpu=Cortex-M0 --fpu=SoftVFP --output=.\objects\patch.o --vfemode=force

    Input Comments:
    
    p41fc-3
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: armasm [4d35ec]
    armasm --diag_suppress=9931,9931,1602,1073 --cpu=Cortex-M0 --fpu=SoftVFP --apcs=/interwork/interwork --no_divide 
    patch.o
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: ArmCC [4d3637]
    ArmCC --c99 --split_sections -c -o.\objects\patch.o --depend=.\objects\patch.d --cpu=Cortex-M0 --apcs=interwork -O3 --diag_suppress=9931 -I..\..\components\inc -I..\..\components\arch\cm0 -I..\..\components\osal\include -I..\..\components\driver\gpio -I..\..\components\driver\uart -I..\..\components\driver\log -I..\..\components\driver\flash -I..\..\components\driver\clock -I..\..\components\driver\timer -I..\..\components\ble\hci -I..\..\components\ble\host -I..\..\components\ble\controller -I..\..\components\ble\include -I..\..\misc -I.\source -I..\include -D__MICROLIB -DADV_NCONN_CFG=0x01 -DADV_CONN_CFG=0x02 -DSCAN_CFG=0x04 -DINIT_CFG=0x08 -DBROADCASTER_CFG=0x01 -DOBSERVER_CFG=0x02 -DPERIPHERAL_CFG=0x04 -DCENTRAL_CFG=0x08 -DHOST_CONFIG=0x4 -D__UVISION_VERSION=530 -D_RTE_ -DARMCM0 -D_RTE_ -DCFG_CP -DDEBUG_INFO=0 -DPHY_MCU_TYPE=MCU_BUMBEE_M0 -D__BUILD_PATCH_CFG__=1 -DMTU_SIZE=247 source\patch.c
    
    
    
    
    
    rf_phy_driver.o
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: armlink [4d35ed]
    armlink --partial --no_add_relocs_to_undefined --no_generate_mapping_symbols --diag_suppress=9931,9931,6642 --cpu=Cortex-M0 --fpu=SoftVFP --output=.\objects\rf_phy_driver.o --vfemode=force

    Input Comments:
    
    p1b2c-3
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: armasm [4d35ec]
    armasm --diag_suppress=9931,9931,1602,1073 --cpu=Cortex-M0 --fpu=SoftVFP --apcs=/interwork/interwork --no_divide 
    rf_phy_driver.o
    
    Component: ARM Compiler 5.06 update 6 (build 750) Tool: ArmCC [4d3637]
    ArmCC --c99 --split_sections -c -o.\objects\rf_phy_driver.o --depend=.\objects\rf_phy_driver.d --cpu=Cortex-M0 --apcs=interwork -O3 --diag_suppress=9931 -I..\..\components\inc -I..\..\components\arch\cm0 -I..\..\components\osal\include -I..\..\components\driver\gpio -I..\..\components\driver\uart -I..\..\components\driver\log -I..\..\components\driver\flash -I..\..\components\driver\clock -I..\..\components\driver\timer -I..\..\components\ble\hci -I..\..\components\ble\host -I..\..\components\ble\controller -I..\..\components\ble\include -I..\..\misc -I.\source -I..\include -D__MICROLIB -DADV_NCONN_CFG=0x01 -DADV_CONN_CFG=0x02 -DSCAN_CFG=0x04 -DINIT_CFG=0x08 -DBROADCASTER_CFG=0x01 -DOBSERVER_CFG=0x02 -DPERIPHERAL_CFG=0x04 -DCENTRAL_CFG=0x08 -DHOST_CONFIG=0x4 -D__UVISION_VERSION=530 -D_RTE_ -DARMCM0 -D_RTE_ -DCFG_CP -DDEBUG_INFO=0 -DPHY_MCU_TYPE=MCU_BUMBEE_M0 -D__BUILD_PATCH_CFG__=1 -DMTU_SIZE=247 ..\..\components\ble_src\controller\rf_phy_driver.c
    
    
    
    
    gap_configmgr.o
    
    Component: ARM Compiler 5.05 (build 41) Tool: armlink [4d0eb9]
    armlink --partial --no_add_relocs_to_undefined --no_generate_mapping_symbols --diag_suppress=6642 --cpu=Cortex-M0 --fpu=SoftVFP --output=.\objects\gap_configmgr.o --vfemode=force

    Input Comments:
    
    p389c-3
    
    Component: ARM Compiler 5.05 (build 41) Tool: armasm [4d0eb9]
    armasm --diag_suppress=1602,1073 --cpu=Cortex-M0 --fpu=SoftVFP --apcs=/interwork/interwork --no_divide  C:\Users\Thinkpad\AppData\Local\Temp\p389c-2
    
    
    
    
    gap_configmgr.o
    
    Component: ARM Compiler 5.05 (build 41) Tool: ArmCC [4d0eb9]
    ArmCC --c99 --split_sections -c -o.\objects\gap_configmgr.o --depend=.\objects\gap_configmgr.d --cpu=Cortex-M0 --apcs=interwork -O3 -I..\..\components\inc -I..\..\components\arch\cm0 -I..\..\components\osal\include -I..\..\components\driver\gpio -I..\..\components\driver\uart -I..\..\components\driver\log -I..\..\components\driver\flash -I..\..\components\driver\clock -I..\..\components\driver\timer -I..\..\components\ble\hci -I..\..\components\ble\host -I..\..\components\ble\controller -I..\..\components\ble\include -I..\..\misc -I.\source -I..\include -D__MICROLIB -DADV_NCONN_CFG=0x01 -DADV_CONN_CFG=0x02 -DSCAN_CFG=0x04 -DINIT_CFG=0x08 -DBROADCASTER_CFG=0x01 -DOBSERVER_CFG=0x02 -DPERIPHERAL_CFG=0x04 -DCENTRAL_CFG=0x08 -DHOST_CONFIG=0xC -D_RTE_ -DARMCM0 -D_RTE_ -DCFG_CP -DDEBUG_INFO=0 -DPHY_MCU_TYPE=MCU_BUMBEE_M0 -DMTU_SIZE=247 -DMAX_NUM_LL_CONN=1 ..\..\components\ble_src\host\gap_configmgr.c
    
    
    
    
    gap_peridevmgr.o
    
    Component: ARM Compiler 5.05 (build 41) Tool: armlink [4d0eb9]
    armlink --partial --no_add_relocs_to_undefined --no_generate_mapping_symbols --diag_suppress=6642 --cpu=Cortex-M0 --fpu=SoftVFP --output=.\objects\gap_peridevmgr.o --vfemode=force

    Input Comments:
    
    p4bcc-3
    
    Component: ARM Compiler 5.05 (build 41) Tool: armasm [4d0eb9]
    armasm --diag_suppress=1602,1073 --cpu=Cortex-M0 --fpu=SoftVFP --apcs=/interwork/interwork --no_divide  C:\Users\Thinkpad\AppData\Local\Temp\p4bcc-2
    
    
    
    
    gap_peridevmgr.o
    
    Component: ARM Compiler 5.05 (build 41) Tool: ArmCC [4d0eb9]
    ArmCC --c99 --split_sections -c -o.\objects\gap_peridevmgr.o --depend=.\objects\gap_peridevmgr.d --cpu=Cortex-M0 --apcs=interwork -O3 -I..\..\components\inc -I..\..\components\arch\cm0 -I..\..\components\osal\include -I..\..\components\driver\gpio -I..\..\components\driver\uart -I..\..\components\driver\log -I..\..\components\driver\flash -I..\..\components\driver\clock -I..\..\components\driver\timer -I..\..\components\ble\hci -I..\..\components\ble\host -I..\..\components\ble\controller -I..\..\components\ble\include -I..\..\misc -I.\source -I..\include -D__MICROLIB -DADV_NCONN_CFG=0x01 -DADV_CONN_CFG=0x02 -DSCAN_CFG=0x04 -DINIT_CFG=0x08 -DBROADCASTER_CFG=0x01 -DOBSERVER_CFG=0x02 -DPERIPHERAL_CFG=0x04 -DCENTRAL_CFG=0x08 -DHOST_CONFIG=0xC -D_RTE_ -DARMCM0 -D_RTE_ -DCFG_CP -DDEBUG_INFO=0 -DPHY_MCU_TYPE=MCU_BUMBEE_M0 -DMTU_SIZE=247 -DMAX_NUM_LL_CONN=1 ..\..\components\ble_src\host\gap_peridevmgr.c
    
    
    
    sm_pairing.o
    
    Component: ARM Compiler 5.05 (build 41) Tool: armlink [4d0eb9]
    armlink --partial --no_add_relocs_to_undefined --no_generate_mapping_symbols --diag_suppress=6642 --cpu=Cortex-M0 --fpu=SoftVFP --output=.\objects\sm_pairing.o --vfemode=force

    Input Comments:
    
    p2600-3
    
    Component: ARM Compiler 5.05 (build 41) Tool: armasm [4d0eb9]
    armasm --diag_suppress=1602,1073 --cpu=Cortex-M0 --fpu=SoftVFP --apcs=/interwork/interwork --no_divide  C:\Users\Thinkpad\AppData\Local\Temp\p2600-2
    
    
    
    
    sm_pairing.o
    
    Component: ARM Compiler 5.05 (build 41) Tool: ArmCC [4d0eb9]
    ArmCC --c99 --split_sections -c -o.\objects\sm_pairing.o --depend=.\objects\sm_pairing.d --cpu=Cortex-M0 --apcs=interwork -O3 -I..\..\components\inc -I..\..\components\arch\cm0 -I..\..\components\osal\include -I..\..\components\driver\gpio -I..\..\components\driver\uart -I..\..\components\driver\log -I..\..\components\driver\flash -I..\..\components\driver\clock -I..\..\components\driver\timer -I..\..\components\ble\hci -I..\..\components\ble\host -I..\..\components\ble\controller -I..\..\components\ble\include -I..\..\misc -I.\source -I..\include -D__MICROLIB -DADV_NCONN_CFG=0x01 -DADV_CONN_CFG=0x02 -DSCAN_CFG=0x04 -DINIT_CFG=0x08 -DBROADCASTER_CFG=0x01 -DOBSERVER_CFG=0x02 -DPERIPHERAL_CFG=0x04 -DCENTRAL_CFG=0x08 -DHOST_CONFIG=0xC -D_RTE_ -DARMCM0 -D_RTE_ -DCFG_CP -DDEBUG_INFO=0 -DPHY_MCU_TYPE=MCU_BUMBEE_M0 -DMTU_SIZE=247 -DMAX_NUM_LL_CONN=1 ..\..\components\ble_src\host\sm_pairing.c
    
    
    
    l2cap_task.o
    
    Component: ARM Compiler 5.05 (build 41) Tool: armlink [4d0eb9]
    armlink --partial --no_add_relocs_to_undefined --no_generate_mapping_symbols --diag_suppress=6642 --cpu=Cortex-M0 --fpu=SoftVFP --output=.\objects\l2cap_task.o --vfemode=force

    Input Comments:
    
    p4164-3
    
    Component: ARM Compiler 5.05 (build 41) Tool: armasm [4d0eb9]
    armasm --diag_suppress=1602,1073 --cpu=Cortex-M0 --fpu=SoftVFP --apcs=/interwork/interwork --no_divide  C:\Users\Thinkpad\AppData\Local\Temp\p4164-2
    
    
    
    
    l2cap_task.o
    
    Component: ARM Compiler 5.05 (build 41) Tool: ArmCC [4d0eb9]
    ArmCC --c99 --split_sections -c -o.\objects\l2cap_task.o --depend=.\objects\l2cap_task.d --cpu=Cortex-M0 --apcs=interwork -O3 -I..\..\components\inc -I..\..\components\arch\cm0 -I..\..\components\osal\include -I..\..\components\driver\gpio -I..\..\components\driver\uart -I..\..\components\driver\log -I..\..\components\driver\flash -I..\..\components\driver\clock -I..\..\components\driver\timer -I..\..\components\ble\hci -I..\..\components\ble\host -I..\..\components\ble\controller -I..\..\components\ble\include -I..\..\misc -I.\source -I..\include -D__MICROLIB -DADV_NCONN_CFG=0x01 -DADV_CONN_CFG=0x02 -DSCAN_CFG=0x04 -DINIT_CFG=0x08 -DBROADCASTER_CFG=0x01 -DOBSERVER_CFG=0x02 -DPERIPHERAL_CFG=0x04 -DCENTRAL_CFG=0x08 -DHOST_CONFIG=0xC -D_RTE_ -DARMCM0 -D_RTE_ -DCFG_CP -DDEBUG_INFO=0 -DPHY_MCU_TYPE=MCU_BUMBEE_M0 -DMTU_SIZE=247 -DMAX_NUM_LL_CONN=1 ..\..\components\ble_src\host\l2cap_task.c
    
    
    
    att_util.o
    
    Component: ARM Compiler 5.05 (build 41) Tool: armlink [4d0eb9]
    armlink --partial --no_add_relocs_to_undefined --no_generate_mapping_symbols --diag_suppress=6642 --cpu=Cortex-M0 --fpu=SoftVFP --output=.\objects\att_util.o --vfemode=force

    Input Comments:
    
    p3088-3
    
    Component: ARM Compiler 5.05 (build 41) Tool: armasm [4d0eb9]
    armasm --diag_suppress=1602,1073 --cpu=Cortex-M0 --fpu=SoftVFP --apcs=/interwork/interwork --no_divide  C:\Users\Thinkpad\AppData\Local\Temp\p3088-2
    
    
    
    
    att_util.o
    
    Component: ARM Compiler 5.05 (build 41) Tool: ArmCC [4d0eb9]
    ArmCC --c99 --split_sections -c -o.\objects\att_util.o --depend=.\objects\att_util.d --cpu=Cortex-M0 --apcs=interwork -O3 -I..\..\components\inc -I..\..\components\arch\cm0 -I..\..\components\osal\include -I..\..\components\driver\gpio -I..\..\components\driver\uart -I..\..\components\driver\log -I..\..\components\driver\flash -I..\..\components\driver\clock -I..\..\components\driver\timer -I..\..\components\ble\hci -I..\..\components\ble\host -I..\..\components\ble\controller -I..\..\components\ble\include -I..\..\misc -I.\source -I..\include -D__MICROLIB -DADV_NCONN_CFG=0x01 -DADV_CONN_CFG=0x02 -DSCAN_CFG=0x04 -DINIT_CFG=0x08 -DBROADCASTER_CFG=0x01 -DOBSERVER_CFG=0x02 -DPERIPHERAL_CFG=0x04 -DCENTRAL_CFG=0x08 -DHOST_CONFIG=0xC -D_RTE_ -DARMCM0 -D_RTE_ -DCFG_CP -DDEBUG_INFO=0 -DPHY_MCU_TYPE=MCU_BUMBEE_M0 -DMTU_SIZE=247 -DMAX_NUM_LL_CONN=1 ..\..\components\ble_src\host\att_util.c
    
    
    
    
    
    linkdb.o
    
    Component: ARM Compiler 5.05 (build 41) Tool: armlink [4d0eb9]
    armlink --partial --no_add_relocs_to_undefined --no_generate_mapping_symbols --diag_suppress=6642 --cpu=Cortex-M0 --fpu=SoftVFP --output=.\objects\linkdb.o --vfemode=force

    Input Comments:
    
    pe5c-3
    
    Component: ARM Compiler 5.05 (build 41) Tool: armasm [4d0eb9]
    armasm --diag_suppress=1602,1073 --cpu=Cortex-M0 --fpu=SoftVFP --apcs=/interwork/interwork --no_divide  C:\Users\Thinkpad\AppData\Local\Temp\pe5c-2
    
    
    linkdb.o
    
    Component: ARM Compiler 5.05 (build 41) Tool: ArmCC [4d0eb9]
    ArmCC --c99 --split_sections -c -o.\objects\linkdb.o --depend=.\objects\linkdb.d --cpu=Cortex-M0 --apcs=interwork -O3 -I..\..\components\inc -I..\..\components\arch\cm0 -I..\..\components\osal\include -I..\..\components\driver\gpio -I..\..\components\driver\uart -I..\..\components\driver\log -I..\..\components\driver\flash -I..\..\components\driver\clock -I..\..\components\driver\timer -I..\..\components\ble\hci -I..\..\components\ble\host -I..\..\components\ble\controller -I..\..\components\ble\include -I..\..\misc -I.\source -I..\include -D__MICROLIB -DADV_NCONN_CFG=0x01 -DADV_CONN_CFG=0x02 -DSCAN_CFG=0x04 -DINIT_CFG=0x08 -DBROADCASTER_CFG=0x01 -DOBSERVER_CFG=0x02 -DPERIPHERAL_CFG=0x04 -DCENTRAL_CFG=0x08 -DHOST_CONFIG=0xC -D_RTE_ -DARMCM0 -D_RTE_ -DCFG_CP -DDEBUG_INFO=0 -DPHY_MCU_TYPE=MCU_BUMBEE_M0 -DMTU_SIZE=247 -DMAX_NUM_LL_CONN=1 ..\..\components\ble_src\host\linkdb.c
    
    
    
    main.o
    uart.o
    clock.o
    gpio.o
    timer.o
    watchdog.o
    pwrmgr.o
    my_printf.o
    key.o
    pwm.o
    osal_snv.o
    flash.o
    led_light.o
    fs.o
    gap.o
    jump_table.o
    findmy.o
    findmy_main.o
    osal_findmy.o
    multi.o
    system_armcm0.o
    
    
    Component: Arm Compiler for Embedded 6.19 Tool: armclang [5e73cb00]
    
    gap_centdevmgr.o
    
    Component: ARM Compiler 5.05 (build 41) Tool: armlink [4d0eb9]
    armlink --partial --no_add_relocs_to_undefined --no_generate_mapping_symbols --diag_suppress=6642 --cpu=Cortex-M0 --fpu=SoftVFP --output=.\objects\gap_centdevmgr.o --vfemode=force

    Input Comments:
    
    p37cc-3
    
    Component: ARM Compiler 5.05 (build 41) Tool: armasm [4d0eb9]
    armasm --diag_suppress=1602,1073 --cpu=Cortex-M0 --fpu=SoftVFP --apcs=/interwork/interwork --no_divide  C:\Users\Thinkpad\AppData\Local\Temp\p37cc-2
    
    
    
    
    gap_centdevmgr.o
    
    Component: ARM Compiler 5.05 (build 41) Tool: ArmCC [4d0eb9]
    ArmCC --c99 --split_sections -c -o.\objects\gap_centdevmgr.o --depend=.\objects\gap_centdevmgr.d --cpu=Cortex-M0 --apcs=interwork -O3 -I..\..\components\inc -I..\..\components\arch\cm0 -I..\..\components\osal\include -I..\..\components\driver\gpio -I..\..\components\driver\uart -I..\..\components\driver\log -I..\..\components\driver\flash -I..\..\components\driver\clock -I..\..\components\driver\timer -I..\..\components\ble\hci -I..\..\components\ble\host -I..\..\components\ble\controller -I..\..\components\ble\include -I..\..\misc -I.\source -I..\include -D__MICROLIB -DADV_NCONN_CFG=0x01 -DADV_CONN_CFG=0x02 -DSCAN_CFG=0x04 -DINIT_CFG=0x08 -DBROADCASTER_CFG=0x01 -DOBSERVER_CFG=0x02 -DPERIPHERAL_CFG=0x04 -DCENTRAL_CFG=0x08 -DHOST_CONFIG=0xC -D_RTE_ -DARMCM0 -D_RTE_ -DCFG_CP -DDEBUG_INFO=0 -DPHY_MCU_TYPE=MCU_BUMBEE_M0 -DMTU_SIZE=247 -DMAX_NUM_LL_CONN=1 ..\..\components\ble_src\host\gap_centdevmgr.c
    
    
    
    startup_armcm0.o
    
    Component: Arm Compiler for Embedded 6.19 Tool: armasm [5e73cb00]
    ArmAsm --debug --xref --diag_suppress=9931,A1950W --cpu=Cortex-M0 --depend=.\objects\startup_armcm0.d  -I.\RTE\_Target_1 -IC:\Users\James\AppData\Local\Arm\Packs\ARM\CMSIS\5.9.0\CMSIS\Core\Include -IC:\Users\James\AppData\Local\Arm\Pa
    sm_task.o
    
    Component: ARM Compiler 5.05 (build 41) Tool: armlink [4d0eb9]
    armlink --partial --no_add_relocs_to_undefined --no_generate_mapping_symbols --diag_suppress=6642 --cpu=Cortex-M0 --fpu=SoftVFP --output=.\objects\sm_task.o --vfemode=force

    Input Comments:
    
    p5a8c-3
    
    Component: ARM Compiler 5.05 (build 41) Tool: armasm [4d0eb9]
    armasm --diag_suppress=1602,1073 --cpu=Cortex-M0 --fpu=SoftVFP --apcs=/interwork/interwork --no_divide  C:\Users\Thinkpad\AppData\Local\Temp\p5a8c-2
    
    
    
    
    sm_task.o
    
    Component: ARM Compiler 5.05 (build 41) Tool: ArmCC [4d0eb9]
    ArmCC --c99 --split_sections -c -o.\objects\sm_task.o --depend=.\objects\sm_task.d --cpu=Cortex-M0 --apcs=interwork -O3 -I..\..\components\inc -I..\..\components\arch\cm0 -I..\..\components\osal\include -I..\..\components\driver\gpio -I..\..\components\driver\uart -I..\..\components\driver\log -I..\..\components\driver\flash -I..\..\components\driver\clock -I..\..\components\driver\timer -I..\..\components\ble\hci -I..\..\components\ble\host -I..\..\components\ble\controller -I..\..\components\ble\include -I..\..\misc -I.\source -I..\include -D__MICROLIB -DADV_NCONN_CFG=0x01 -DADV_CONN_CFG=0x02 -DSCAN_CFG=0x04 -DINIT_CFG=0x08 -DBROADCASTER_CFG=0x01 -DOBSERVER_CFG=0x02 -DPERIPHERAL_CFG=0x04 -DCENTRAL_CFG=0x08 -DHOST_CONFIG=0xC -D_RTE_ -DARMCM0 -D_RTE_ -DCFG_CP -DDEBUG_INFO=0 -DPHY_MCU_TYPE=MCU_BUMBEE_M0 -DMTU_SIZE=247 -DMAX_NUM_LL_CONN=1 ..\..\components\ble_src\host\sm_task.c
    
    
    phy_sec_ext.o
    
    Component: ARM Compiler 5.05 (build 41) Tool: armlink [4d0eb9]
    armlink --partial --no_add_relocs_to_undefined --no_generate_mapping_symbols --diag_suppress=6642 --cpu=Cortex-M0 --fpu=SoftVFP --output=.\objects\phy_sec_ext.o --vfemode=force

    Input Comments:
    
    p470-3
    
    Component: ARM Compiler 5.05 (build 41) Tool: armasm [4d0eb9]
    armasm --diag_suppress=1602,1073 --cpu=Cortex-M0 --fpu=SoftVFP --apcs=/interwork/interwork --no_divide  C:\Users\Thinkpad\AppData\Local\Temp\p470-2
    
    
    phy_sec_ext.o
    
    Component: ARM Compiler 5.05 (build 41) Tool: ArmCC [4d0eb9]
    ArmCC --c99 --split_sections -c -o.\objects\phy_sec_ext.o --depend=.\objects\phy_sec_ext.d --cpu=Cortex-M0 --apcs=interwork -O3 -I..\..\components\inc -I..\..\components\arch\cm0 -I..\..\components\osal\include -I..\..\components\driver\gpio -I..\..\components\driver\uart -I..\..\components\driver\log -I..\..\components\driver\flash -I..\..\components\driver\clock -I..\..\components\driver\timer -I..\..\components\ble\hci -I..\..\components\ble\host -I..\..\components\ble\controller -I..\..\components\ble\include -I..\..\misc -I.\source -I..\include -D__MICROLIB -DADV_NCONN_CFG=0x01 -DADV_CONN_CFG=0x02 -DSCAN_CFG=0x04 -DINIT_CFG=0x08 -DBROADCASTER_CFG=0x01 -DOBSERVER_CFG=0x02 -DPERIPHERAL_CFG=0x04 -DCENTRAL_CFG=0x08 -DHOST_CONFIG=0x4 -D_RTE_ -DARMCM0 -DCFG_CP -DDEBUG_INFO=0 -DMTU_SIZE=247 -DPHY_MCU_TYPE=MCU_BUMBEE_M0 source\phy_sec_ext.c
    
    
    
    
    
    

====================================

** Section #18

    Name        : .shstrtab
    Type        : SHT_STRTAB (0x00000003)
    Flags       : None (0x00000000)
    Addr        : 0x00000000
    File Offset : 292968 (0x47868)
    Size        : 176 bytes (0xb0)
    Link        : SHN_UNDEF
    Info        : 0
    Alignment   : 1
    Entry Size  : 0


====================================

address     size       variable name                            type
0x1fff59b0  0x4        SystemCoreClock                          uint32_t

address     size       variable name                            type
0x1fff598c  0x1        gapRole_AdvEnabled                       uint8

address     size       variable name                            type
0x1fff5bbc  0x1        gapRole_state                            gaprole_States_t

address     size       variable name                            type
0x1fff57e4  0x18       tasksArr                                 array[6] of const pTaskEventHandlerFn

address     size       variable name                            type
0x1fff57fc  0x1        tasksCnt                                 const uint8

address     size       variable name                            type
0x1fff7420  0x4        tasksEvents                              pointer to uint16

address     size       variable name                            type
0x1fff5940  0x4        beepCount                                int

address     size       variable name                            type
0x1102327c  0x8        findMy_ObserverCBs                       const gapObserverRoleCB_t
0x1102327c  0x4        findMy_ObserverCBs.rssiCB                pfnGapObserverRoleRssiCB_t
0x11023280  0x4        findMy_ObserverCBs.eventCB               pfnGapObserverRoleEventCB_t

address     size       variable name                            type
0x1fff5ba8  0x1        findMy_TaskID                            uint8

address     size       variable name                            type
0x1fff6de4  0x1bc      g_perStatsByChanTest                     perStatsByChan_t
0x1fff6de4  0x4a       g_perStatsByChanTest.rxNumPkts           array[37] of uint16
0x1fff6e2e  0x4a       g_perStatsByChanTest.rxNumCrcErr         array[37] of uint16
0x1fff6e78  0x4a       g_perStatsByChanTest.txNumRetry          array[37] of uint16
0x1fff6ec2  0x4a       g_perStatsByChanTest.TxNumAck            array[37] of uint16
0x1fff6f0c  0x4a       g_perStatsByChanTest.rxToCnt             array[37] of uint16
0x1fff6f56  0x4a       g_perStatsByChanTest.connEvtCnt          array[37] of uint16

address     size       variable name                            type
0x110206c0  0xc