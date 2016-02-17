#rom.org $8160

        SEI

sub_8161:               
        JSR $1048
        TXS
        LDA #$7F
        STA $DC0D
        LDA #1
        STA $D01A
        LDA byte_90A2
        PHA
        BNE loc_817B
        INC byte_90A2
        JSR $1048

loc_817B:               
        JSR sub_8D0D
        LDA #$B2
        LDX #$85
        LDY #$8B
        JSR sub_8CBA
        CLI
        LDX #$40
        LDA #0

loc_818C:           
        STA $33F,X
        STA $37F,X
        STA $2BF,X
        DEX
        BNE loc_818C
        LDX #$D
        STX $7F8
        INX
        STX $7F9
        LDA #$B
        STA $7FA
        LDX #0
        TXA

loc_81A9:           
        STA $C00,X
        STA $D00,X
        STA $E00,X
        STA $EE8,X
        INX
        BNE loc_81A9
        LDX #$28
        LDA #1

loc_81BC:               
        STA $D8F,X
        DEX
        BNE loc_81BC
        JSR sub_8DAA
        JSR sub_8D1F
        STX $50
        STX $51
        STX byte_91CD
        LDA #$F
        STA $3D
        STA $3E
        JSR sub_8824
        STX $D020
        STX $D021
        LDX #$10
        LDA #8
        JSR sub_8CC9
        LDX #3
        LDA #2
        JSR sub_8CD1
        LDX #2
        LDA #$E
        JSR sub_8CD1

loc_81F3:               
        LDA $6DD1,X
        STA $D800,X
        LDA $6ED1,X
        STA $D900,X
        LDA $6F51,X
        STA $D980,X
        INX
        BNE loc_81F3
        JSR sub_8D18

loc_820B:               
        LDX #$20

loc_820D:               
        LDA $6C10,X
        STA $6AB,X
        LDA $6C30,X
        STA $6D3,X
        LDA $6C50,X
        STA $6FB,X
        LDA $6C70,X
        STA $723,X
        LDA $6C90,X
        STA $773,X
        LDA $6CB0,X
        STA $79B,X
        DEX
        BNE loc_820D
        STX $37
        LDA #5
        STA $38

loc_823A:               
        LDY #$10

loc_823C:               
        JSR sub_84E4
        LDA $8F48,Y
        JSR sub_8DCF
        DEY
        BNE loc_823C
        JSR sub_8DBE
        BNE loc_8281

loc_824D:               
        JSR sub_84E4
        LDA $8F49,Y
        JSR sub_8DCF
        INY
        CPY #$10
        BCC loc_824D
        JSR sub_8DBE
        BNE loc_8281
        LDY $37

loc_8262:               
        LDA $6CD1,Y
        STA $774,X
        LDA $6CF1,Y
        STA $79C,X
        INX
        INY
        CPX #$20 //g ' '
        BCC loc_8262
        LDA $37
        ADC #$3F //g '?'
        STA $37
        DEC $38
        BNE loc_823A
        JMP loc_820B

loc_8281:               
        JSR sub_8D0D
        PLA
        STA byte_90A2
        BNE loc_828D
        JSR sub_8DDB

loc_828D:               
        JSR sub_8CB4
        JSR sub_8DAA
        LDX #$C

loc_8295:               
        LDA #$41
        STA $6B5,X
        DEX
        LDA #$40
        STA $6B5,X
        DEX
        BNE loc_8295
        TXA
        LDX #$2D

loc_82A6:               
        STA $37,X
        DEX
        BNE loc_82A6
        DEC $64
        INX
        STX $48
        STX $45
        LDA #$63 //g 'c'
        STA $4D
        STA $4C
        LDA #$DF //g 'ß'
        STA $65
        LDA #8
        STA $3D
        LDA #$54 //g 'T'
        STA $40
        LDA #$37 //g '7'
        STA $41
        JSR sub_87DD
        JSR sub_8D18

loc_82CE:               
                    //g sub_8161+20Dj
        JSR sub_8995
        LDA $57
        BNE loc_82DA
        DEC $57
        JSR sub_8824

loc_82DA:               
        LDX #2
        JSR sub_84E6
        JSR sub_8D6F
        CLC
        TYA
        ADC #$40 //g '@'
        TAY
        JSR sub_8D84
        BMI loc_82EF
        JSR sub_8371

loc_82EF:               
        STA $3A
        JSR sub_84FF
        JSR sub_8C86
        BEQ loc_835C
        CPX #$3B //g ';'
        BNE loc_831F
        JSR sub_84E4
        LDA byte_90A2
        BNE loc_830E
        INC byte_90A2
        JSR $1048
        JMP loc_8316
//g ---------------------------------------------------------------------------

loc_830E:               
        LDA #0
        STA byte_90A2
        JSR sub_8DDB

loc_8316:               
                    //g sub_8161+1BAj
        DEC $63
        JSR sub_8C86
        BNE loc_8316
        BEQ loc_82CE

loc_831F:               
        LDA $63
        CMP #$3D //g '='
        BNE loc_834C

loc_8325:               
        JSR sub_8490
        ORA #9
        STA $43
        STA $62
        LDA #7
        STA $3B

loc_8332:               
        JSR sub_8995
        LDX $3B
        LDY $8FEB,X

loc_833A:               
        JSR sub_84E4
        LDA $46
        BNE loc_834C
        DEY
        BNE loc_833A
        INC $43
        DEC $3B
        BNE loc_8332
        BEQ loc_8325

loc_834C:               
                    //g sub_8161+1DEj
        LDX #0
        STX $62
        CMP #$3C //g '<'
        BEQ loc_8364
        CMP #$3A //g ':'
        BNE loc_835C
        DEX
        JSR sub_8694

loc_835C:               
                    //g sub_8161+1F5j
        LDA $4D
        BEQ loc_8364
        LDA $4C
        BNE loc_8367

loc_8364:               
                    //g sub_8161+1FDj
        JSR sub_8627

loc_8367:               
        DEC $63
        LDX $46
        JSR sub_83D9
        JMP loc_82CE
//g End of function sub_8161


//g =============== S U B   R O U T I N E =======================================


sub_8371:               
                    //g sub_83D9+5Fj
        LDA #0
        STA $42

loc_8375:               
        JSR sub_8D6A
        LDA $45
        BEQ loc_8381
        LDY $42
        LDA $8FB0,Y

loc_8381:               
        BCC loc_8389
        JSR sub_8456
        JMP loc_838C
//g ---------------------------------------------------------------------------

loc_8389:               
        JSR sub_84A8

loc_838C:               
        LDY $42
        LDA $8FB8,Y
        JSR sub_8D39
        JSR sub_8490
        ORA #$15
        STA $43
        JSR sub_8D6F
        CLC
        TYA
        ADC #$40 //g '@'
        TAY
        JSR sub_8D84
        BMI loc_83BD
        JSR sub_8995
        LDA $42
        CMP #8
        BCS loc_83B8
        INC $42
        LDX #2
        JSR sub_84E6

loc_83B8:               
        JSR sub_84E4
        BEQ loc_8375

loc_83BD:               
        JSR sub_8D30
        JSR sub_8995
        JSR loc_8E0F

loc_83C6:               
        JSR sub_8995
        LDX #5
        JSR sub_84E6
        INC $43
        LDA $43
        AND #$1F
        CMP #$17
        BCC loc_83C6
        RTS
//g End of function sub_8371


//g =============== S U B   R O U T I N E =======================================


sub_83D9:               
        TXA
        AND #1
        BEQ loc_843B
        LDA $3A
        BEQ loc_843B
        TXA
        AND #$F
        TAX
        AND #$C
        STA $45
        JSR sub_8D6A
        LDA #$10
        BCC loc_83F3
        ORA #$20 //g ' '

loc_83F3:               
        CPX #9
        BNE loc_83F9
        AND #$1F

loc_83F9:               
        CPX #5
        BNE loc_83FF
        ORA #$20 //g ' '

loc_83FF:               
        STA $43
        LDY #0
        STY $44

loc_8405:               
        STY $42
        JSR sub_8995
        LDA $45
        BEQ loc_8416
        JSR sub_8D6A
        LDY $42
        LDA $8FA2,Y

loc_8416:               
        BCC loc_841E
        JSR sub_8456
        JMP loc_8421
//g ---------------------------------------------------------------------------

loc_841E:               
        JSR sub_84A8

loc_8421:               
        LDY $42
        LDA $8FA9,Y
        JSR sub_8D50
        JSR sub_8995
        LDX #4
        JSR sub_84E6
        LDY $42
        INY
        CPY #7
        BCC loc_8405
        JMP sub_8371
//g ---------------------------------------------------------------------------

loc_843B:               
        JSR sub_8D6A
        STX $45
        TXA
        AND #4
        BEQ loc_848B
        BCS loc_844B

loc_8447:               
        LDA #$21 //g '!'
        STA $43

loc_844B:               
        LDA $43
        CMP #$28 //g '['
        BCS loc_8447
        JSR sub_84F4
        LDA #1
//g End of function sub_83D9


//g =============== S U B   R O U T I N E =======================================


sub_8456:               

//g FUNCTION CHUNK AT 8497 SIZE 00000011,S

        STA $3A
        SEC
        LDA $40
        SBC $3A
        STA $40
        JSR sub_84FF
        JSR sub_8D6F
        CLC
        TYA
        ADC #$1F
        TAY
        JSR sub_8D84
        AND #$7F //g ''
        TAX
        LDA $40
        CPX #1
        BNE loc_847B
        CLC
        ADC $3A
        BCC loc_84D8

loc_847B:               
        CMP #$1E
        BCS loc_84DA
        DEC $3D
        JSR sub_89F7
        JSR sub_8824
        LDA #$92 //g '’'
        BNE loc_84D8

loc_848B:               
        TXA
        AND #8
        BNE loc_8497
//g End of function sub_8456


//g =============== S U B   R O U T I N E =======================================


sub_8490:               
        LDA $43
        AND #$20 //g ' '
        STA $43
        RTS
//g End of function sub_8490

//g ---------------------------------------------------------------------------
//g START   OF FUNCTION CHUNK FOR sub_8456

loc_8497:               //g CODE XREF: sub_8456+38j
        BCC loc_849D

loc_8499:               //g CODE XREF: sub_8456+4Bj
        LDA #1
        STA $43

loc_849D:               //g CODE XREF: sub_8456:loc_8497j
        LDA $43
        CMP #8
        BCS loc_8499
        JSR sub_84F4
        LDA #1
//g END OF FUNCTION CHUNK   FOR sub_8456

//g =============== S U B   R O U T I N E =======================================


sub_84A8:               //g CODE XREF: sub_8371:loc_8389p
                    //g sub_83D9:loc_841Ep
        STA $3A
        CLC
        ADC $40
        STA $40
        JSR sub_84FF
        JSR sub_8D6F
        CLC
        TYA
        ADC #$21 //g '!'
        TAY
        JSR sub_8D84
        AND #$7F //g ''
        TAX
        LDA $40
        CPX #1
        BNE loc_84CA
        SBC $3A
        BCS loc_84D8

loc_84CA:               //g CODE XREF: sub_84A8+1Cj
        CMP #$92 //g '’'
        BCC loc_84DA
        INC $3D
        JSR sub_89F7
        JSR sub_8824
        LDA #$1E

loc_84D8:               //g CODE XREF: sub_8456+23j sub_8456+33j ...
        STA $40

loc_84DA:               //g CODE XREF: sub_8456+27j sub_84A8+24j
        INC $44
        LDA $44
        LSR A
        BCC locret_84E3
        INC $43

locret_84E3:                //g CODE XREF: sub_84A8+37j
        RTS
//g End of function sub_84A8


//g =============== S U B   R O U T I N E =======================================


sub_84E4:               //g CODE XREF: sub_8161:loc_823Cp
                    //g sub_8161:loc_824Dp ...
        LDX #1
//g End of function sub_84E4


//g =============== S U B   R O U T I N E =======================================


sub_84E6:               //g CODE XREF: sub_8161+17Bp
                    //g sub_8371+44p  ...
        BIT $D011
        BMI sub_84E6

loc_84EB:               //g CODE XREF: sub_84E6+8j
        BIT $D011
        BPL loc_84EB
        DEX
        BNE sub_84E6

locret_84F3:                
        RTS

//g =============== S U B   R O U T I N E =======================================


sub_84F4:               //g CODE XREF: sub_83D9+78p sub_8456+4Dp

//g FUNCTION CHUNK AT 8E0C SIZE 00000066,S

        LDA $44
        AND #7
        CMP #4
        BNE locret_84F3
        JMP loc_8E0C
//g End of function sub_84F4


//g =============== S U B   R O U T I N E =======================================


sub_84FF:               

//g FUNCTION CHUNK AT 8660 SIZE 00000028,S

        JSR sub_8D6F
        TAX
        JSR sub_8DCA
        BEQ loc_854C
        CPX #2
        BCC loc_854C
        CPX #8
        BCS loc_853C

loc_8510:               //g CODE XREF: sub_84FF+186j
        LDA $47
        ADC $8FE2,X
        STA $47
        DEX
        TXA
        ASL A
        TAX
        LDA $8FD6,X
        PHA
        LDA $8FD5,X
        PHA
        CPX #$C
        BEQ locret_84F3
        LDX byte_91CD
        LDA $3F
        STA $91CE,X
        TYA
        AND #$FE //g 'þ'
        STA $91CF,X
        INX
        INX
        STX byte_91CD
        BNE loc_8546

loc_853C:               //g CODE XREF: sub_84FF+Fj
        BNE loc_854C
        LDA #1
        STA $50
        LDA #$10
        STA $51

loc_8546:               //g CODE XREF: sub_84FF+3Bj
        LDY #0
        PHP
        JMP loc_884F
//g ---------------------------------------------------------------------------

loc_854C:               //g CODE XREF: sub_84FF+7j sub_84FF+Bj ...
        LDA $46
        CMP #1
        BNE loc_855A
        CPX #$E
        BEQ loc_8566
        CPX #$C
        BEQ loc_8566

loc_855A:               //g CODE XREF: sub_84FF+51j
        CMP #2
        BNE loc_85C2
        CPX #$E
        BEQ loc_8566
        CPX #$D
        BNE loc_85C2

loc_8566:               //g CODE XREF: sub_84FF+55j sub_84FF+59j ...
        STA $3B
        LDA $40
        AND #$F8 //g 'ø'
        ORA #3
        STA $40
        LDA #3
        STA $D01B
        STA $61
        JSR sub_8490
        LDX #$F

loc_857C:               //g CODE XREF: sub_84FF+84j
        LDA $8FF7,X
        STA $3A0,X
        DEX
        BNE loc_857C
        LDA #$40 //g '@'
        STA $3A

loc_8589:               //g CODE XREF: sub_84FF+B1j
        JSR sub_8995
        LDA $61
        INC $61
        AND #3
        CMP #2
        BNE loc_8599
        JSR loc_8E18

loc_8599:               //g CODE XREF: sub_84FF+95j
        LDX #2
        JSR sub_84E6
        LDA #1
        LDY $3B
        DEY
        BNE loc_85AB
        JSR sub_8D50
        JMP loc_85AE
//g ---------------------------------------------------------------------------

loc_85AB:               //g CODE XREF: sub_84FF+A4j
        JSR sub_8D39

loc_85AE:               //g CODE XREF: sub_84FF+A9j
        DEC $3A
        BNE loc_8589
        LDX #$F
        LDA #0

loc_85B6:               //g CODE XREF: sub_84FF+BBj
        STA $3A0,X
        DEX
        BNE loc_85B6
        STX $61
        STX $D01B
        RTS
//g ---------------------------------------------------------------------------

loc_85C2:               //g CODE XREF: sub_84FF+5Dj sub_84FF+65j
        CPX #$A
        BEQ loc_85D5
        CLC
        TYA
        ADC #$20 //g ' '
        TAY
        JSR sub_8D84
        CMP #$A
        BEQ loc_85D5
        JMP loc_8660
//g ---------------------------------------------------------------------------

loc_85D5:               //g CODE XREF: sub_84FF+C5j sub_84FF+D1j
        STY $3A
        LDY #0

loc_85D9:               //g CODE XREF: sub_84FF+E6j
        LDA $90CD,Y
        CMP #$74 //g 't'
        BEQ loc_85E7
        INY
        BEQ locret_865F
        CMP #$57 //g 'W'
        BNE loc_85D9

loc_85E7:               //g CODE XREF: sub_84FF+DFj
        LDA #$58 //g 'X'
        CPY $3A
        BCC loc_85F1
        LDA #$78 //g 'x'
        DEY
        DEY

loc_85F1:               //g CODE XREF: sub_84FF+ECj
        STY $3A
        STA $3B
        LDA #$10
        STA $3C
        JSR sub_8490
        ORA #$1E
        STA $43

loc_8600:               //g CODE XREF: sub_84FF+126j
        LDY $3A
        LDA $90CD,Y
        EOR $3B
        STA $90CD,Y
        ORA #1
        STA $90CE,Y
        JSR sub_8934
        LDA $43
        EOR #1
        STA $43
        JSR sub_8995
        JSR loc_8E1E
        LDX #2
        JSR sub_84E6
        DEC $3C
        BNE loc_8600
//g End of function sub_84FF


//g =============== S U B   R O U T I N E =======================================


sub_8627:               //g CODE XREF: sub_8161:loc_8364p
        JSR sub_8CE9
        LDX #$A
        JSR sub_84E6
        LDA #$14
        LDX #$45 //g 'E'
        LDY #$8C //g 'Œ'
        JSR sub_8CBA
        JSR sub_8DAA
        LDA #2
        JSR sub_8D20
        LDY #0

loc_8642:               //g CODE XREF: sub_8627+2Bj
        LDA $8FC1,X
        STA $540,Y
        ORA #1
        STA $541,Y
        INY
        INY
        INX
        CPX #$14
        BCC loc_8642
        JSR sub_8D18
        LDX #$64 //g 'd'
        JSR sub_84E6
        JSR sub_8161

locret_865F:                //g CODE XREF: sub_84FF+E2j
                    //g sub_84FF+166j ...
        RTS
//g End of function sub_8627

//g ---------------------------------------------------------------------------
//g START   OF FUNCTION CHUNK FOR sub_84FF

loc_8660:               //g CODE XREF: sub_84FF+D3j
        JSR sub_8D6F
        LDA $4B
        BEQ locret_865F
        JSR sub_8D6A
        INY
        BCC loc_866F
        DEY
        DEY

loc_866F:               //g CODE XREF: sub_84FF+16Cj
        JSR sub_8D84
        CMP #1
        BEQ loc_8682
        CLC
        TYA
        ADC #$20 //g ' '
        TAY
        JSR sub_8D84
        CMP #1
        BNE locret_865F

loc_8682:  
        DEC $4B
        TAX
        JMP loc_8510
//g END OF FUNCTION CHUNK   FOR sub_84FF
byte s1[] = {
         $E6 //g æ
        , $4B //g K
        , $4C //g L
        , $12
        , $8E //g Ž
}
//g ---------------------------------------------------------------------------
        LDX #1
//g ---------------------------------------------------------------------------
byte s2[]={      $2C}
//g ---------------------------------------------------------------------------
        LDX #0
        INC $49,X

//g =============== S U B   R O U T I N E =======================================


sub_8694: 
        STX $37
        JSR sub_8CE9
        JSR loc_8E12
        LDA #$82 //g '‚'
        LDX #$2F //g '/'
        LDY #$8C //g 'Œ'
        JSR sub_8CBA
        LDX #$14
        JSR sub_84E6
        JSR sub_8D18
        LDY #$10

loc_86AF:               //g CODE XREF: sub_8694+25j
        JSR sub_84E4
        LDA $8F48,Y
        STA $D021
        DEY
        BNE loc_86AF
        LDA $37
        BMI loc_871F
        LDX #$F
        JSR sub_84E6
        LDX #$C
        LDY #9
        LDA $37
        BNE loc_86CF
        LDX #9
        TAY

loc_86CF:               //g CODE XREF: sub_8694+36j sub_8694+44j
        LDA $3F
        CMP $9007,Y
        BEQ loc_86DA
        INY
        DEX
        BPL loc_86CF

loc_86DA:               //g CODE XREF: sub_8694+40j
        TYA
        ASL A
        ASL A
        TAY
        LDX #0

loc_86E0:               //g CODE XREF: sub_8694+55j
        LDA $901C,Y
        STA $58,X
        INY
        INX
        CPX #4
        BCC loc_86E0
        LDX #4
        LDY #7
        LDA $37
        BNE loc_86F5
        DEX
        DEY

loc_86F5:               //g CODE XREF: sub_8694+5Dj
        STY $38

loc_86F7:               //g CODE XREF: sub_8694+89j
        LDY $38

loc_86F9:               //g CODE XREF: sub_8694+6Aj
        LDA [$58],Y
        STA [$5A],Y
        DEY
        BPL loc_86F9
        CLC
        LDA $5A
        ADC #$28 //g '['
        STA $5A
        BCC loc_870B
        INC $5B

loc_870B:               //g CODE XREF: sub_8694+73j
        LDA #$20 //g ' '
        LDY $37
        BNE loc_8713
        LDA #$15

loc_8713:               //g CODE XREF: sub_8694+7Bj
        CLC
        ADC $58
        STA $58
        BCC loc_871C
        INC $59

loc_871C:               //g CODE XREF: sub_8694+84j
        DEX
        BNE loc_86F7

loc_871F:               //g CODE XREF: sub_8694+29j sub_8694+8Ej
        JSR sub_8DCA
        BEQ loc_871F
        LDY #0

loc_8726:               //g CODE XREF: sub_8694+9Ej
        JSR sub_84E4
        LDA $8F49,Y
        STA $D021
        INY
        CPY #$10
        BCC loc_8726
        JSR sub_8D0D
        JSR sub_8CB4
        JSR sub_87DD
        JMP sub_8D18
//g End of function sub_8694

//g ---------------------------------------------------------------------------
        CLC
        LDA $49
        ADC $4A
        CMP #$15
        BEQ loc_874A
        RTS
//g ---------------------------------------------------------------------------

loc_874A:               //g CODE XREF: ROM:8747j
        JSR sub_8CE9
        STX $50
        STX $51
        LDA #$B2 //g '²'
        LDX #$3A //g ':'
        LDY #$8C //g 'Œ'
        JSR sub_8CBA
        LDX #$E
        STX $3D
        INX
        STX $3E
        JSR sub_87DD
        LDA #5
        STA $D022
        LDA #$C
        STA $D023
        LDX #$10
        LDA #$A
        JSR sub_8CC9
        LDX #8
        LDA #1
        JSR sub_8CD1

loc_877C:               //g CODE XREF: ROM:8789j
        LDA $6AD1,X
        STA $680,X
        LDA $6B11,X
        STA $6C0,X
        INX
        BNE loc_877C
        LDX #$14
        JSR sub_84E6
        JSR sub_8D18

loc_8793:               //g CODE XREF: ROM:8796j
        JSR sub_8DCA
        BEQ loc_8793
        JSR sub_8CE9
        JSR sub_8161
        LDA $4D
        CMP #$3C //g '<'
        LDA #$63 //g 'c'
        STA $4D
        BCS loc_87AB
        JMP loc_8E12
//g ---------------------------------------------------------------------------

loc_87AB:               //g CODE XREF: ROM:87A6j
        LDX #$1E
        JSR sub_84E6
        JSR loc_8E15
        JSR sub_8490
        ORA #$18
        STA $43

loc_87BA:               //g CODE XREF: ROM:87CAj
        JSR sub_8995
        LDX #6
        JSR sub_84E6
        INC $43
        LDA $43
        AND #$1F
        CMP #$1E
        BCC loc_87BA
        RTS
//g ---------------------------------------------------------------------------
        CLC
        LDA $4C
        ADC #$32 //g '2'
        CMP #$64 //g 'd'
        BCC loc_87D8
        LDA #$63 //g 'c'

loc_87D8:               //g CODE XREF: ROM:87D4j
        STA $4C
        JMP loc_8E12

//g =============== S U B   R O U T I N E =======================================


sub_87DD:               //g CODE XREF: sub_8161+167p
                    //g sub_8694+A6p  ...
        LDX #9

loc_87DF:               //g CODE XREF: sub_87DD+9j
        LDA $8F58,X
        STA $D020,X
        DEX
        BNE loc_87DF
        JSR sub_8D1F
        LDX #$11
        LDA #$F
        JSR sub_8CC9
        LDX #1
        TXA
        JSR sub_8CD1
        LDX #4
        LDA #$F
        JSR sub_8CD1
        LDX #1
        TXA
        JSR sub_8CD1
        LDY #5

loc_8807:               //g CODE XREF: sub_87DD+45j
        LDA $8FF2,Y
        STA $74F,X
        ORA #1
        STA $750,X
        CLC
        ADC #$5F //g '_'
        STA $727,X
        ORA #1
        STA $728,X
        TXA
        ADC #6
        TAX
        DEY
        BNE loc_8807
//g End of function sub_87DD


//g =============== S U B   R O U T I N E =======================================


sub_8824:               //g CODE XREF: sub_8161+74p
                    //g sub_8161+176p ...
        LDA #0
        STA $54
        LDA #$40 //g '@'
        STA $55
        LDA $3E
        ASL A
        ASL A
        ASL A
        ASL A
        ORA $3D
        CMP $3F
        STA $3F
        PHP

loc_8839:               //g CODE XREF: sub_8824+25j sub_8824+29j
        LDY #0
        LDA [$54],Y
        CMP $3F
        BEQ loc_884F
        INY
        LDA [$54],Y
        CLC
        ADC $54
        STA $54
        BCC loc_8839
        INC $55
        BCS loc_8839

loc_884F:               
        INY
        LDA [$54],Y
        STA $37
        LDA #0
        STA $38

loc_8858:              
        INY
        CPY $37
        BCC loc_8860
        JMP loc_88E0
//g ---------------------------------------------------------------------------

loc_8860:             
        LDA [$54],Y
        LSR A
        PHP
        ASL A
        STA $39
        LDX #1
        PLP
        BCC loc_8870
        INY
        LDA [$54],Y
        TAX

loc_8870:               //g CODE XREF: sub_8824+46j
        TYA
        PHA
        LDA $50
        ORA $51
        BEQ loc_888A
        LDA $39
        CMP #$4E //g 'N'
        BNE loc_8882
        LDY #$6E //g 'n'
        BNE loc_88C6

loc_8882:               //g CODE XREF: sub_8824+58j
        CMP #$50 //g 'P'
        BNE loc_888A
        LDY #$60 //g '`'
        BNE loc_88C6

loc_888A:               //g CODE XREF: sub_8824+52j sub_8824+60j
        LDA $39
        AND #$DF //g 'ß'
        CMP #$1E
        BCS loc_88C8
        CMP #$10
        BCC loc_88C8
        LDY #0

loc_8898:               //g CODE XREF: sub_8824+80j sub_8824+8Ej
        CPY byte_91CD
        BCS loc_88C8
        INY
        LDA $91CD,Y
        INY
        CMP $3F
        BNE loc_8898
        LDA $91CD,Y
        CMP $38
        BEQ loc_88B4
        CLC
        ADC #$20 //g ' '
        CMP $38
        BNE loc_8898

loc_88B4:               //g CODE XREF: sub_8824+87j
        LDY #8
        LDA $39
        CMP #$20 //g ' '
        BCC loc_88BE
        LDY #$28 //g '['

loc_88BE:               //g CODE XREF: sub_8824+96j
        AND #$F
        BNE loc_88C6
        INY
        INY
        INY
        INY

loc_88C6:               //g CODE XREF: sub_8824+5Cj sub_8824+64j ...
        STY $39

loc_88C8:               //g CODE XREF: sub_8824+6Cj sub_8824+70j ...
        LDY $38
        LDA $39
        STA $90CD,Y
        INY
        ORA #1
        STA $90CD,Y
        INY
        STY $38
        DEX
        BNE loc_88C8
        PLA
        TAY
        JMP loc_8858
//g ---------------------------------------------------------------------------

loc_88E0:               //g CODE XREF: sub_8824+39j
        PLP
        BEQ sub_8934
        LDA #0
        STA $5C
        LDA $D012
        EOR $DC04
        AND #$1F
        CLC
        ADC #$60 //g '`'
        TAY
        JSR sub_8D84
        BMI loc_8901
        TYA
        ORA #$80 //g '€'
        TAY
        JSR sub_8D84
        BPL sub_8934

loc_8901:               //g CODE XREF: sub_8824+D2j
        INY
        INY
        INY
        JSR sub_8D84
        BPL sub_8934
        SEC
        TYA
        SBC #$23 //g '#'
        TAY
        JSR sub_8D84
        BNE sub_8934
        INY
        INY
        INY
        JSR sub_8D84
        BNE sub_8934
        SEC
        TYA
        SBC #2
        PHA
        AND #$E0 //g 'à'
        LSR A
        CLC
        ADC #$32 //g '2'
        STA $5E
        PLA
        AND #$1F
        ASL A
        ASL A
        CLC
        ADC #$18
        STA $5D
        INC $5C
//g End of function sub_8824


//g =============== S U B   R O U T I N E =======================================


sub_8934:
        LDY #$20 //g ' '
        JSR sub_84E4

loc_8939:
        LDA $90CC,Y
        STA $403,Y
        ORA #$80 //g '€'
        STA $42B,Y
        LDA $90EC,Y
        STA $453,Y
        ORA #$80 //g '€'
        STA $47B,Y
        LDA $910C,Y
        STA $4A3,Y
        ORA #$80 //g '€'
        STA $4CB,Y
        LDA $912C,Y
        STA $4F3,Y
        ORA #$80 //g '€'
        STA $51B,Y
        LDA $914C,Y
        STA $543,Y
        ORA #$80 //g '€'
        STA $56B,Y
        LDA $916C,Y
        STA $593,Y
        ORA #$80 //g '€'
        STA $5BB,Y
        LDA $918C,Y
        STA $5E3,Y
        ORA #$80 //g '€'
        STA $60B,Y
        LDA $91AC,Y
        STA $633,Y
        ORA #$80 //g '€'
        STA $65B,Y
        DEY
        BNE loc_8939
        RTS
//g End of function sub_8934


//g =============== S U B   R O U T I N E =======================================


sub_8995:               //g CODE XREF: sub_8161:loc_82CEp
                    //g sub_8161:loc_8332p ...
        LDA $40
        ASL A

loc_8998:               //g CODE XREF: sub_8995+6j
        BIT $D011
        BPL loc_8998
        STA $D000
        STA $D002
        LDA $D010
        AND #4
        BCC loc_89AC
        ORA #3

loc_89AC:               //g CODE XREF: sub_8995+13j
        STA $D010
        LDA $41
        STA $D001
        CLC
        ADC #$15
        STA $D003
        LDA #$D1 //g 'Ñ'
        STA $52
        LDA $43
        PHA
        AND #$20 //g ' '
        LSR A
        LSR A
        ADC #$70 //g 'p'
        STA $53
        PLA
        AND #$1F
        TAX

loc_89CD:               //g CODE XREF: sub_8995+44j
        CLC
        LDA $52
        ADC #$40 //g '@'
        STA $52
        BCC loc_89D8
        INC $53

loc_89D8:               //g CODE XREF: sub_8995+3Fj
        DEX
        BPL loc_89CD
        INX
        LDY #0

loc_89DE:               //g CODE XREF: sub_8995+53j
        JSR sub_89FD

loc_89E1:               //g CODE XREF: sub_8995+4Fj
        INX
        CPX #$3F //g '?'
        BEQ loc_89E1
        CPY #$40 //g '@'
        BCC loc_89DE
        LDA $5C
        BEQ loc_89F0
        LDA #4

loc_89F0:               //g CODE XREF: sub_8995+57j
        ORA #3
        STA $D01C
        BNE loc_89F9
//g End of function sub_8995


//g =============== S U B   R O U T I N E =======================================


sub_89F7:               //g CODE XREF: sub_8456+2Bp sub_84A8+28p ...
        LDA #0

loc_89F9:               //g CODE XREF: sub_8995+60j
        STA $D015
        RTS
//g End of function sub_89F7


//g =============== S U B   R O U T I N E =======================================


sub_89FD:               //g CODE XREF: sub_8995:loc_89DEp
        JSR sub_8A00
//g End of function sub_89FD


//g =============== S U B   R O U T I N E =======================================


sub_8A00:               //g CODE XREF: sub_89FDp
        LDA [$52],Y
        STA $340,X
        INX
        INY
        RTS
//g End of function sub_8A00

        LDA #$1A
        JSR sub_8C5F
        LDA $47
        BEQ loc_8A40
        DEC $48
        BNE loc_8A40
        LDA #3
        STA $48
        DEC $47
        LDX #$C

loc_8A1D:               
        CLC
        LDA $6B5,X
        ADC #2
        CMP #$55 
        BCS loc_8A32
        STA $6B5,X
        DEX
        AND #$FE 
        STA $6B5,X
        BCC loc_8A40

loc_8A32:               
        LDA #$41 
        STA $6B5,X
        DEX
        LDA #$40 
        STA $6B5,X
        DEX
        BNE loc_8A1D

loc_8A40:               
        LDX #5
        LDY #0

loc_8A44:               
        CPX #4
        BCC loc_8A5A
        LDA byte_90A1
        LSR A
        BCC loc_8A5A
        LDA #$B
        JSR sub_8DA3
        LDA #$C
        JSR sub_8DA3
        BNE loc_8A5F

loc_8A5A:               
        LDA $48,X
        JSR sub_8D8D

loc_8A5F:               
        CLC
        TYA
        ADC #4
        TAY
        DEX
        BNE loc_8A44
        LDA $62
        BNE loc_8AAC
        LDA $90A1,X
        STA [$64,X]
        LSR A
        BCS loc_8A87
        LDX #2

loc_8A75:               
        DEC $4D,X
        BNE loc_8A84
        LDA $8FE9,X
        STA $4D,X
        LDA $4B,X
        BEQ loc_8A84
        DEC $4B,X

loc_8A84:               
        DEX
        BNE loc_8A75

loc_8A87:               
        LDA $50
        ORA $51
        BEQ loc_8AAC
        DEC $50
        BNE loc_8AA6
        JSR loc_8E1B
        LDA $51
        ASL A
        ASL A
        ADC byte_90C4
        STA byte_90C4
        DEC $51
        BEQ loc_8AA6
        LDA #$32 
        STA $50

loc_8AA6:               
        LDA $50
        ORA $51
        STA $57

loc_8AAC:               
        LDA byte_8F5F
        LDX $4D
        CPX #$1E
        BCC loc_8ABB
        LDX $4C
        CPX #$1E
        BCS loc_8AC0

loc_8ABB:               
        LDA $D027
        EOR #2

loc_8AC0:               
        STA $D027
        STA $D028
        LDA #$D1 

loc_8AC8:               
        CMP $D012
        BCS loc_8AC8
        LDA #$18
        STA $D018
        LDX #$C0 

loc_8AD4:               
        DEX
        BNE loc_8AD4
        LDA #$1A
        STA $D018
        LDA $62
        BNE loc_8AE4
        LDA $5C
        BNE loc_8AE7

loc_8AE4:               
        JMP loc_8B7E


loc_8AE7:               
        INC $5F
        LDA $5F
        AND #3
        CMP #3
        BCC loc_8B4E
        LDA $61
        BNE loc_8B02
        LDA #7
        BIT $D01E
        BEQ loc_8B02
        LDA #1
        STA $4E
        STA $4F

loc_8B02:               
        LDA $5D
        CMP #$91 
        BCS loc_8B38
        CMP #$1C
        BCC loc_8B38
        SBC #$18
        LSR A
        LSR A
        STA $56
        SEC
        LDA $5E
        SBC #$32 
        AND #$F0 
        ASL A
        CLC
        ADC $56
        TAY
        LDA $5C
        CMP #2
        DEY
        BCS loc_8B28
        INY
        INY
        INY

loc_8B28:               
        JSR sub_8D84
        CMP #$81 
        BEQ loc_8B38
        TYA
        ADC #$20 
        TAY
        JSR sub_8D84
        BMI loc_8B42

loc_8B38:               
        LDA #2
        CMP $5C
        BNE loc_8B40
        LDA #1

loc_8B40:               
        STA $5C

loc_8B42:               
        LDA $5C
        CMP #2
        DEC $5D
        BCS loc_8B4E
        INC $5D
        INC $5D

loc_8B4E:               
        LDA $5D
        ASL A
        STA $D004
        LDA $D010
        AND #3
        BCC loc_8B5D
        ORA #4

loc_8B5D:               
        STA $D010
        LDA $5E
        STA $D005
        LDA $5D
        AND #7
        BEQ loc_8B6F
        TAX
        LDA $906F,X

loc_8B6F:               
        TAX
        LDY #0

loc_8B72:               
        LDA $7051,X
        STA $2D8,Y
        INX
        INY
        CPY #$18
        BCC loc_8B72

loc_8B7E:               
        LDA #$18
        LDX #$D0 
        JMP loc_8C4E



irq1:
        LDA #$1A
        NOP
        NOP
        NOP
        NOP
        STA $D018
        LDX #1
        STX $D022
        LDX #$A
        STX $D023
        JSR sub_8C5F
        LDA #$C9 //g 'É'

loc_8B9D:               //g CODE XREF: ROM:8BA0j
        CMP $D012
        BCS loc_8B9D
        LDX #9

loc_8BA4:               //g CODE XREF: ROM:8BA5j
        DEX
        BNE loc_8BA4
        LDA #$C0 //g 'À'
        STA $D016
        STA   [$64,X]
        LDA #5
        STA $D022
        LDA #7
        STA $D023
        JSR sub_8C86
        BEQ loc_8BDD
        LDX #0

loc_8BBF:               //g CODE XREF: ROM:8BC8j
        LDA $9090,X
        STA $908F,X
        INX
        CPX #8
        BCC loc_8BBF
        LDA $63
        STA $908F,X

loc_8BCF:               //g CODE XREF: ROM:8BD8j
        LDA $908F,X
        CMP $9098,X
        BNE loc_8BDD
        DEX
        BPL loc_8BCF
        INC byte_90A1

loc_8BDD:               //g CODE XREF: ROM:8BBBj  ROM:8BD5j
        LDA byte_90A1
        LSR A
        LDX #3
        BCS loc_8BF8
        LDA #$2E //g '.'

loc_8BE7:               //g CODE XREF: ROM:8BF4j
        STA $6A8,X
        STA $6D0,X
        STA $6CB,X
        STA $6F3,X
        DEX
        BNE loc_8BE7
        BEQ loc_8C2B

loc_8BF8:               //g CODE XREF: ROM:8BE3j  ROM:8C29j
        LDA $9076,X
        STA $DACB,X
        LDA $9082,X
        STA $6CB,X
        LDA $9079,X
        STA $DAF3,X
        LDA $9085,X
        STA $6F3,X
        LDA $907C,X
        STA $DAA8,X
        LDA $9088,X
        STA $6A8,X
        LDA $907F,X
        STA $DAD0,X
        LDA $908B,X
        STA $6D0,X
        DEX
        BNE loc_8BF8

loc_8C2B:               //g CODE XREF: ROM:8BF6j
        LDA #$1E
        BNE loc_8C41
        LDA #$3A //g ':'
        JSR sub_8C5F
        LDA #$32 //g '2'
        LDX #$C0 //g 'À'
        BNE loc_8C4E
        LDA #$1A
        JSR sub_8C5F
        LDA #$1C

loc_8C41:               //g CODE XREF: ROM:8C2Dj
        LDX #$D0 //g 'Ð'
        BNE loc_8C4E
        LDA #$1A
        JSR sub_8C5F
        LDA #$1A
        LDX #$C8 //g 'È'

loc_8C4E:               //g CODE XREF: ROM:8C38j  ROM:8C43j ...
        BIT $D011
        BPL loc_8C4E
        STA $D018
        STX $D016
        INC $D019
        JMP $EA81

//g =============== S U B   R O U T I N E =======================================


sub_8C5F:               //g CODE XREF: ROM:8B98p  ROM:8C31p ...
        NOP
        NOP
        NOP
        STA $D018
        LDA byte_90A2
        BNE loc_8C70
        JSR sub_8E72
        JMP loc_8C73
//g ---------------------------------------------------------------------------

loc_8C70:               //g CODE XREF: sub_8C5F+9j
        JSR $1021

loc_8C73:               //g CODE XREF: sub_8C5F+Ej
        LDA $DC00
        AND #$1F
        CMP #$1F
        BNE loc_8C81
        LDA $DC01
        AND #$1F

loc_8C81:               //g CODE XREF: sub_8C5F+1Bj
        EOR #$1F
        STA $46
        RTS
//g End of function sub_8C5F


sub_8C86:               //g CODE XREF: sub_8161+193p
                    //g sub_8161+1B7p ...
        LDX #$FF
        STX $DC02
        INX
        LDA #$7F //g ''

loc_8C8E:               //g CODE XREF: sub_8C86+1Bj
        STA $DC00
        PHA
        LDY #8
        LDA $DC01

loc_8C97:               //g CODE XREF: sub_8C86+16j
        INX
        ASL A
        BCC loc_8CA6
        DEY
        BNE loc_8C97
        SEC
        PLA
        ROR A
        BCS loc_8C8E
        PHA
        LDX $63

loc_8CA6:               //g CODE XREF: sub_8C86+13j
        PLA
        LDA #0
        STA $DC02
        STA $DC03
        CPX $63
        STX $63
        RTS
//g End of function sub_8C86


//g =============== S U B   R O U T I N E =======================================


sub_8CB4:               //g CODE XREF: sub_8161:loc_828Dp
                    //g sub_8694+A3p
        LDA #$B2 //g '²'
        LDX #8
        LDY #$8A //g 'Š'
//g End of function sub_8CB4


//g =============== S U B   R O U T I N E =======================================


sub_8CBA:               //g CODE XREF: sub_8161+23p sub_8627+Ep ...
        BIT $D011
        BPL sub_8CBA
        STA $D012
        STX $314
        STY $315
        RTS
//g End of function sub_8CBA


//g =============== S U B   R O U T I N E =======================================


sub_8CC9:               //g CODE XREF: sub_8161+81p ROM:8772p ...
        LDY #3
        STY $52
        LDY #$D8 //g 'Ø'
        STY $53
//g End of function sub_8CC9


//g =============== S U B   R O U T I N E =======================================


sub_8CD1:               //g CODE XREF: sub_8161+88p sub_8161+8Fp ...
        LDY #$20 //g ' '

loc_8CD3:               //g CODE XREF: sub_8CD1+5j
        STA [$52],Y
        DEY
        BNE loc_8CD3
        TAY
        CLC
        LDA $52
        ADC #$28 //g '['
        STA $52
        BCC loc_8CE4
        INC $53

loc_8CE4:               //g CODE XREF: sub_8CD1+Fj
        TYA
        DEX
        BNE sub_8CD1
        RTS
//g End of function sub_8CD1


//g =============== S U B   R O U T I N E =======================================


sub_8CE9:               //g CODE XREF: sub_8627p  sub_8694+2p ...
        LDX #4
        JSR sub_84E6
        STX $D023
        STX $D027
        STX $D028
        LDX #4
        JSR sub_84E6
        STX $D022
        STX $D025
        LDX #4
        JSR sub_84E6
        JSR sub_89F7
        JSR sub_8D1F
//g End of function sub_8CE9


//g =============== S U B   R O U T I N E =======================================


sub_8D0D:               //g CODE XREF: sub_8161:loc_817Bp
                    //g sub_8161:loc_8281p ...
        LDA $D011
        BPL sub_8D0D
        AND #$6F //g 'o'

loc_8D14:               //g CODE XREF: sub_8D18+5j
        STA $D011
        RTS
//g End of function sub_8D0D


//g =============== S U B   R O U T I N E =======================================


sub_8D18:               //g CODE XREF: sub_8161+A7p
                    //g sub_8161+16Ap ...
        JSR sub_8D0D
        ORA #$10
        BNE loc_8D14
//g End of function sub_8D18


//g =============== S U B   R O U T I N E =======================================


sub_8D1F:               //g CODE XREF: sub_8161+64p sub_87DD+Bp ...
        TXA
//g End of function sub_8D1F


//g =============== S U B   R O U T I N E =======================================


sub_8D20:               //g CODE XREF: sub_8627+16p sub_8D20+Dj
        STA $D800,X
        STA $D900,X
        STA $DA00,X
        STA $DAE8,X
        INX
        BNE sub_8D20
        RTS
//g End of function sub_8D20


//g =============== S U B   R O U T I N E =======================================


sub_8D30:               //g CODE XREF: sub_8371:loc_83BDp
        LDA $41
        AND #$F0 //g 'ð'
        ORA #2
        STA $41
        RTS
//g End of function sub_8D30


//g =============== S U B   R O U T I N E =======================================


sub_8D39:               //g CODE XREF: sub_8371+20p
        CLC
        ADC $41
        CMP #$8D //g ''
        BCC loc_8D67
        JSR sub_89F7
        INC $3E
        JSR sub_8824
        LDA #$13
        STA $3A
        LDA #$30 //g '0'
        BNE loc_8D67
//g End of function sub_8D39


//g =============== S U B   R O U T I N E =======================================


sub_8D50:               
        CLC
        SBC $41
        EOR #$FF
        CMP #$30 
        BCS loc_8D67
        JSR sub_89F7
        DEC $3E
        JSR sub_8824
        LDA #$C
        STA $3A
        LDA #$8D //g ''

loc_8D67:
        STA $41
        RTS
//g End of function sub_8D50


//g =============== S U B   R O U T I N E =======================================


sub_8D6A:               //g CODE XREF: sub_8371:loc_8375p
                    //g sub_83D9+11p  ...
        LDA $43
        CMP #$20 //g ' '
        RTS
//g End of function sub_8D6A


//g =============== S U B   R O U T I N E =======================================


sub_8D6F:               //g CODE XREF: sub_8161+17Ep
                    //g sub_8371+2Ap  ...
        SEC
        LDA $41
        SBC #$32 //g '2'
        AND #$F0 //g 'ð'
        ASL A
        STA $37
        SEC
        LDA $40
        SBC #$18
        LSR A
        LSR A
        CLC
        ADC $37
        TAY
//g End of function sub_8D6F


//g =============== S U B   R O U T I N E =======================================


sub_8D84:               //g CODE XREF: sub_8161+186p
                    //g sub_8371+32p  ...
        LDA $90CD,Y
        LSR A
        TAX
        LDA $8F62,X
        RTS

sub_8D8D:               
        STY $56
        LDY #0

loc_8D91:               
        SEC
        SBC #$A
        BCC loc_8D99
        INY
        BCS loc_8D91

loc_8D99:               
        ADC #$A
        PHA
        TYA
        LDY $56
        JSR sub_8DA3
        PLA






sub_8DA3:               
        ORA #$10
        STA $777,Y
        INY
        RTS







sub_8DAA:               //g CODE XREF: sub_8161+61p
                    //g sub_8161+12Fp ...
        LDX #0
        LDA #$2E //g '.'

loc_8DAE:               //g CODE XREF: sub_8DAA+11j
        STA $400,X
        STA $500,X
        STA $600,X
        STA $6E8,X
        INX
        BNE loc_8DAE
        RTS
//g End of function sub_8DAA


//g =============== S U B   R O U T I N E =======================================


sub_8DBE:               //g CODE XREF: sub_8161+E7p sub_8161+FAp ...
        JSR sub_84E4
        JSR sub_8DCA
        BNE locret_8DC9
        DEY
        BNE sub_8DBE

locret_8DC9:                //g CODE XREF: sub_8DBE+6j
        RTS
//g End of function sub_8DBE


//g =============== S U B   R O U T I N E =======================================


sub_8DCA:
        LDA $46
        AND #$10
        RTS
//g End of function sub_8DCA


//g =============== S U B   R O U T I N E =======================================


sub_8DCF:               //g CODE XREF: sub_8161+E1p sub_8161+F2p
        LDX #$20 //g ' '

loc_8DD1:               //g CODE XREF: sub_8DCF+9j
        STA $DB73,X
        STA $DB9B,X
        DEX
        BNE loc_8DD1
        RTS
//g End of function sub_8DCF


//g =============== S U B   R O U T I N E =======================================


sub_8DDB:               //g CODE XREF: sub_8161+129p
                    //g sub_8161+1B2p
        JSR sub_8DDE
//g End of function sub_8DDB


//g =============== S U B   R O U T I N E =======================================


sub_8DDE:               //g CODE XREF: sub_8DDBp
        JSR sub_84E4
        LDA #8
        STA $D404
        STA $D40B
        STA $D412
        TXA
        LDX #$18

loc_8DEF:               //g CODE XREF: sub_8DDE+1Bj
        STA $D3FF,X
        STA $90A8,X
        STA $90B5,X
        DEX
        BNE loc_8DEF
        LDA #7
        STA $D403
        STA $D40A
        STA $D411
        LDA #$F
        STA $D418
        RTS
//g End of function sub_8DDE

loc_8E0C:               
        LDA #0

        byte a0[] = {0x2C }
loc_8E0F:               
        LDA #4

        byte a1[] = {0x2C }
loc_8E12:               
        LDA #9

        byte a2[] = {0x2C }
loc_8E15:               
        LDA #$D

        byte a3[] = {0x2C }
loc_8E18:               
        LDA #$10

        byte a4[] = {0x2C }

loc_8E1B:               
        LDA #$16

        byte a5[] = {0x2C }
loc_8E1E:               
        LDA #$18

        byte a6[] = {0x2C }

        LDA #$1D

        LDX byte_90A2
        BNE locret_8E71
        PHA
        AND #3
        TAY
        ASL A
        ASL A
        STA $60
        ASL A
        ADC $60
        TAX
        LDA $90A3,Y
        TAY
        LDA #0
        STA $D404,Y
        STA $D405,Y
        STA $D406,Y
        PLA
        LSR A
        LSR A
        ASL A
        STA $60
        ASL A
        ASL A
        ADC $60
        TAY
        LDA #$A
        STA $60

loc_8E52:               //g CODE XREF: sub_84F4+968j
        LDA $8111,Y
        STA $90A9,X
        INX
        INY
        DEC $60
        BNE loc_8E52
        LDA #0
        STA $90A9,X
        LDA $90A5,X
        BNE loc_8E6E
        INC $90A9,X
        LDA $90A8,X

loc_8E6E:               //g CODE XREF: sub_84F4+972j
        STA $90AA,X

locret_8E71:                //g CODE XREF: sub_84F4+932j
        RTS
//g END OF FUNCTION CHUNK   FOR sub_84F4

//g =============== S U B   R O U T I N E =======================================


sub_8E72:              
        LDA byte_90A6
        BNE loc_8E93
        CLC
        LDA byte_90A7
        ADC #$50 //g 'P'
        STA byte_90A7
        BCC loc_8EAD
        INC byte_90A8
        LDA byte_90A8
        CMP #5
        BNE loc_8EAD
        LDA #1
        STA byte_90A6
        BNE loc_8EAD

loc_8E93:
        SEC
        LDA byte_90A7
        SBC #$50 //g 'P'
        STA byte_90A7
        BCS loc_8EAD
        DEC byte_90A8
        LDA byte_90A8
        CMP #2
        BNE loc_8EAD
        LDA #0
        STA byte_90A6

loc_8EAD:
        LDY #0
        LDX #0
        JSR loc_8EBF
        LDY #7
        LDX #$C
        JSR loc_8EBF
        LDY #$E
        LDX #$18


loc_8EBF:               
        LDA $90AF,X
        ORA $90B2,X
        BEQ loc_8F24
        LDA $90B3,X
        BNE loc_8EF9
        CLC
        LDA $90AB,X
        ADC $90AD,X
        STA $90AB,X
        BCC loc_8ED8//+2

loc_8ED8:              
        INC $90AC,X
        CLC
        LDA $90AC,X
        ADC $90AE,X
        STA $90AC,X
        DEC $90B4,X
        BNE loc_8F24

loc_8EEA:               //g CODE XREF: ROM:8F1Dj
        LDA $90B2,X
        STA $90B4,X
        BEQ loc_8F17
        LDA #1
        STA $90B3,X
        BNE loc_8F24


loc_8EF9:               //g CODE XREF: ROM:8ECAj
        SEC
        LDA $90AB,X
        SBC $90B0,X
        STA $90AB,X

        BCS loc_8F05//+2) FIXME

loc_8F05:               //g CODE XREF: ROM:8F03j
        DEC $90AC,X
        SEC
        LDA $90AC,X
        SBC $90B1,X
        STA $90AC,X
        DEC $90B4,X
        BNE loc_8F24

loc_8F17:               //g CODE XREF: ROM:8EF0j
        LDA $90AF,X
        STA $90B4,X
        BEQ loc_8EEA
        LDA #0
        STA $90B3,X

loc_8F24:               
        LDA $90AB,X
        STA $D400,Y
        LDA $90AC,X
        STA $D401,Y
        LDA $90A9,X
        STA $D404,Y
        LDA $90AA,X
        STA $D405,Y
        LDA byte_90A7
        STA $D402,Y
        LDA byte_90A8
        STA $D403,Y
        RTS
//g ---------------------------------------------------------------------------
byte s7[]= {
        1
        ,   7
        ,  $D
        ,   3
        ,  $F
        ,   5
        ,  $A
        ,  $C
        ,  $E
        ,   8
        ,   4
        ,  $B
        ,   2
        ,   6
        ,   9
        ,   0
        ,   0
        ,   9
        ,  $C
        ,   0
        ,   8
        ,   7,
byte_8F5F:  5 , 5
        ,  $E
        ,   0
        ,   0
        ,   0
        ,   0
        ,   0
        ,   0
        ,   0
        , $80 //g €
        ,   1
        ,   2
        ,   3
        ,   4
        ,   7
        ,   5
        ,   6
        , $80 //g €
        , $80 //g €
        ,   0
        , $80 //g €
        ,   0
        ,   0
        ,   0
        ,   0
        ,  $C
        , $81 //g 
        ,   0
        ,   0
        ,   0
        ,   0
        ,   0
        ,   0
        , $80 //g €
        ,   0
        ,   0
        ,   0
        ,  $D
        , $81 //g 
        , $81 //g 
        , $81 //g 
        ,   8
        ,  $A
        , $80 //g €
        ,   0
        ,   0
        ,   0
        , $80 //g €
        ,   0
        ,   0
        ,   0
        ,   0
        ,   0
        ,  $E
        , $80 //g €
        ,   0
        ,   0
        ,   0
        , $80 //g €
        , $80 //g €
        ,   0
        ,   0
        ,   0
        , $80 //g €
        ,   0
        ,   0
        ,   1
        ,   1
        ,   2
        ,   2
        ,   2
        ,   3
        ,   3
        ,   4
        ,   4
        ,   3
        ,   2
        ,   1
        ,   1
        ,   1
        ,   2
        ,   2
        ,   1
        ,   1
        ,   1
        ,   1
        ,   1
        ,   1
        ,   0
        ,   1
        ,   1
        ,   1
        ,   2
        ,   2
        ,   2
        ,   3
        ,   4
        ,   2
        , $1E
        , $3C //g <
        , $9A //g š
        , $3E //g >
        , $54 //g T
        , $56 //g V
        , $58 //g X
        , $5A //g Z
        , $5C //g \
        , $56 //g V
        , $5E //g ^
        , $3C //g <
        , $9A //g š
        , $F8 //g ø
        , $FA //g ú
        , $FC //g ü
        , $7C //g |
        , $7C //g |
        , $7E //g ~
        , $20
        , $8E //g Ž
        , $87 //g ‡
        , $86 //g †
        , $8C //g Œ
        , $86 //g †
        , $8F //g 
        , $86 //g †
        , $9D //g 
        , $87 //g ‡
        , $CC //g Ì
        , $87 //g ‡
        , $3F //g ?
        , $87 //g ‡
        , $FF
        , $1E
        , $69 //g i
        , $6E //g n
        , $5F //g _
        , $50 //g P
        ,   0
        , $59 //g Y
        , $62 //g b
        ,  $A
        ,  $A
        ,  $A
        ,  $F
        , $64 //g d
        , $1E
        , $64 //g d
        , $36 //g 6
        , $34 //g 4
        , $32 //g 2
        , $3C //g <
        , $3A //g :
        , $3F //g ?
        , $FF
        , $C0 //g À
        , $2A //g *
        , $AA //g ª
        , $80 //g €
        , $2A //g *
        , $AA //g ª
        , $80 //g €
        , $2A //g *
        , $AA //g ª
        , $80 //g €
        , $15
        , $55 //g U
        , $40 //g @
        ,   1
        ,   3
        ,   7
        , $15
        , $23 //g #
        , $24 //g $
        , $46 //g F
        , $66 //g f
        , $74 //g t
        , $15
        , $34 //g 4
        , $41 //g A
        , $45 //g E
        , $48 //g H
        , $51 //g Q
        , $53 //g S
        , $55 //g U
        , $92 //g ’
        , $61 //g a
        , $64 //g d
        , $67 //g g
        , $94 //g ”
        , $68 //g h
        , $31 //g 1
        ,  $C
        , $9B //g ›
        , $68 //g h
        , $38 //g 8
        ,  $C
        , $A2 //g ¢
        , $68 //g h
        , $3F //g ?
        ,  $C
        , $D3 //g Ó
        , $68 //g h
        , $A9 //g ©
        ,  $C
        , $DA //g Ú
        , $68 //g h
        , $B0 //g °
        ,  $C
        , $E1 //g á
        , $68 //g h
        , $B7 //g ·
        ,  $C
        , $12
        , $69 //g i
        , $21 //g !
        ,  $D
        , $19
        , $69 //g i
        , $28 //g [
        ,  $D
        , $20
        , $69 //g i
        , $2F //g /
        ,  $D
        , $51 //g Q
        , $69 //g i
        , $BC //g ¼
        ,  $D
        , $59 //g Y
        , $69 //g i
        , $C4 //g Ä
        ,  $D
        , $61 //g a
        , $69 //g i
        , $CC //g Ì
        ,  $D
        , $69 //g i
        , $69 //g i
        , $D4 //g Ô
        ,  $D
        , $D1 //g Ñ
        , $69 //g i
        , $5C //g \
        ,  $E
        , $D9 //g Ù
        , $69 //g i
        , $64 //g d
        ,  $E
        , $E1 //g á
        , $69 //g i
        , $6C //g l
        ,  $E
        , $E9 //g é
        , $69 //g i
        , $74 //g t
        ,  $E
        , $51 //g Q
        , $6A //g j
        , $FC //g ü
        ,  $E
        , $59 //g Y
        , $6A //g j
        ,   4
        ,  $F
        , $61 //g a
        , $6A //g j
        ,  $C
        ,  $F
        , $69 //g i
        , $6A //g j
        , $14
        ,  $F
        , $18
        , $30 //g 0
        , $48 //g H
        , $60 //g `
        , $78 //g x
        , $90 //g 
        , $A8 //g ¨
        ,   5
        ,  $D
        ,  $D
        ,   2
        ,  $D
        ,  $D
        ,  $D
        ,  $D
        ,   5
        ,  $D
        ,  $D
        ,   2
        , $A6 //g ¦
        , $A7 //g §
        , $A8 //g ¨
        , $A9 //g ©
        , $AA //g ª
        , $AB //g «
        , $A0 //g  
        , $A1 //g ¡
        , $A2 //g ¢
        , $A3 //g £
        , $A4 //g ¤
        , $A5 //g ¥
        ,   3
        , $3F //g ?
        ,   3
        , $3F //g ?
        ,   3
        , $3F //g ?
        ,   3
        , $3F //g ?
        ,   3
        , $2E //g .
        , $16
        , $36 //g 6
        ,   4
        , $32 //g 2
        , $16
        , $22 //g "
        , $19
        , $1F,
byte_90A1:   0,
byte_90A2:   1,     
            0
        ,   7
        ,  $E,
byte_90A6:   1          ,
byte_90A7:   $60        ,
byte_90A8:   4          ,
         $81 //g 
        ,   0
        , $F8 //g ø
        ,   7
        ,   0
        ,   0
        ,   0
        ,   0
        ,   0
        ,   0
        ,   1
        ,   0
        , $81 //g 
        , $81 //g 
        , $56 //g V
        ,   8
        , $7F //g 
        ,   9
        ,   7
        , $7F //g 
        , $13
        , $78 //g x
        , $D3 //g Ó
        ,   4
        , $41 //g A
        ,   5
        , $BC,
byte_90C4: $BB, 0
        ,   0
        ,   0
        ,   0
        ,   0
        ,   0
        ,   1
        ,   0
        , $48 //g H
        , $49 //g I
        , $48 //g H
        , $49 //g I
        , $48 //g H
        , $49 //g I
        , $5A //g Z
        , $5B //g [
        , $5C //g \
        , $5D //g ]
        , $5C //g \
        , $5D //g ]
        , $5C //g \
        , $5D //g ]
        , $5C //g \
        , $5D //g ]
        ,   0
        ,   1
        ,   2
        ,   3
        ,   4
        ,   5
        ,   6
        ,   7
        , $C8 //g È
        , $C9 //g É
        , $C8 //g È
        , $C9 //g É
        , $C8 //g È
        , $C9 //g É
        , $C8 //g È
        , $C9 //g É
        , $C8 //g È
        , $C9 //g É
        , $48 //g H
        , $49 //g I
        , $7C //g |
        , $7D //g }
        , $78 //g x
        , $79 //g y
        , $4A //g J
        , $4B //g K
        , $4C //g L
        , $4D //g M
        , $4C //g L
        , $4D //g M
        , $4E //g N
        , $4F //g O
        , $20
        , $21 //g !
        , $22 //g "
        , $23 //g #
        , $24 //g $
        , $25 //g %
        , $26 //g &
        , $27 //g '
        , $C8 //g È
        , $C9 //g É
        , $C8 //g È
        , $C9 //g É
        , $C8 //g È
        , $C9 //g É
        , $C8 //g È
        , $C9 //g É
        , $C8 //g È
        , $C9 //g É
        , $48 //g H
        , $49 //g I
        , $7A //g z
        , $7B //g {
        , $78 //g x
        , $79 //g y
        , $7E //g ~
        , $7F //g 
        , $48 //g H
        , $49 //g I
        , $48 //g H
        , $49 //g I
        , $50 //g P
        , $51 //g Q
        ,   8
        ,   9
        ,  $A
        ,  $B
        ,  $C
        ,  $D
        ,  $E
        ,  $F
        , $C8 //g È
        , $C9 //g É
        , $C8 //g È
        , $C9 //g É
        , $C8 //g È
        , $C9 //g É
        , $C8 //g È
        , $C9 //g É
        , $C8 //g È
        , $C9 //g É
        , $48 //g H
        , $49 //g I
        , $7C //g |
        , $7D //g }
        , $78 //g x
        , $79 //g y
        , $7E //g ~
        , $7F //g 
        , $54 //g T
        , $55 //g U
        , $52 //g R
        , $53 //g S
        , $50 //g P
        , $51 //g Q
        , $28 //g [
        , $29 //g ]
        , $2A //g *
        , $2B //g +
        , $2C //g ,
        , $2D //g -
        , $2E //g .
        , $2F //g /
        , $C8 //g È
        , $C9 //g É
        , $C8 //g È
        , $C9 //g É
        , $C8 //g È
        , $C9 //g É
        , $C8 //g È
        , $C9 //g É
        , $C8 //g È
        , $C9 //g É
        , $48 //g H
        , $49 //g I
        , $7A //g z
        , $7B //g {
        , $78 //g x
        , $79 //g y
        , $7E //g ~
        , $7F //g 
        , $58 //g X
        , $59 //g Y
        , $56 //g V
        , $57 //g W
        , $50 //g P
        , $51 //g Q
        , $28 //g [
        , $29 //g ]
        , $10
        , $11
        , $12
        , $13
        , $14
        , $15
        , $16
        , $17
        , $18
        , $19
        , $C8 //g È
        , $C9 //g É
        , $C8 //g È
        , $C9 //g É
        , $C8 //g È
        , $C9 //g É
        , $48 //g H
        , $49 //g I
        , $7C //g |
        , $7D //g }
        , $6E //g n
        , $6F //g o
        , $6C //g l
        , $6D //g m
        , $6A //g j
        , $6B //g k
        , $68 //g h
        , $69 //g i
        , $50 //g P
        , $51 //g Q
        , $28 //g [
        , $29 //g ]
        , $30 //g 0
        , $31 //g 1
        , $32 //g 2
        , $33 //g 3
        , $34 //g 4
        , $35 //g 5
        , $36 //g 6
        , $37 //g 7
        , $38 //g 8
        , $39 //g 9
        , $C8 //g È
        , $C9 //g É
        , $C8 //g È
        , $C9 //g É
        , $C8 //g È
        , $C9 //g É
        , $48 //g H
        , $49 //g I
        , $7A //g z
        , $7B //g {
        , $70 //g p
        , $71 //g q
        , $72 //g r
        , $73 //g s
        , $76 //g v
        , $77 //g w
        , $64 //g d
        , $65 //g e
        , $66 //g f
        , $67 //g g
        , $28 //g [
        , $29 //g ]
        , $1A
        , $1B
        , $3A //g :
        , $3B //g ;
        , $3C //g <
        , $3D //g =
        , $3E //g >
        , $3F //g ?
        , $1C
        , $1D
        , $C8 //g È
        , $C9 //g É
        , $C8 //g È
        , $C9 //g É
        , $C8 //g È
        , $C9 //g É
        , $48 //g H
        , $49 //g I
        , $7C //g |
        , $7D //g }
        , $78 //g x
        , $79 //g y
        , $74 //g t
        , $75 //g u
        , $76 //g v
        , $77 //g w
        , $62 //g b
        , $63 //g c
        , $60 //g `
        , $61 //g a
        , $28 //g [
        , $29 //g ]
        , $1E
        , $1F
        , $40 //g @
        , $41 //g A
        , $42 //g B
        , $43 //g C
        , $44 //g D
        , $45 //g E
        , $46 //g F
        , $47 //g G
        , $C8 //g È
        , $C9 //g É
        , $C8 //g È
        , $C9,
byte_91CD:   0          
        , $28 //g [
        , $26 //g &
        , $28 //g [
        , $B4 //g ´
        , $18
        , $34 //g 4
        ,   7
        , $B0 //g °
        ,   7
        , $A8 //g ¨
        , $35 //g 5
        , $28 //g [
        , $34 //g 4
        , $36 //g 6
        , $34 //g 4
        , $30 //g 0
        , $A7 //g §
        , $AA //g ª
        , $A7 //g §
        , $B0 //g °
        , $A8 //g ¨
        , $AE //g ®
        , $A8 //g ¨
        , $B4 //g ´
        , $79 //g y
        , $AE //g ®
        , $29 //g ]
        , $A8 //g ¨
        , $BD //g ½
        , $BD //g ½
        , $BD //g ½
        , $BD //g ½
        , $BD //g ½
        , $BD //g ½
        , $BD //g ½
        , $BD //g ½
        , $BD //g ½
        , $BD //g ½
        , $BD //g ½
        , $BD //g ½
        , $BD //g ½
        , $BD //g ½
        , $BD //g ½
        , $BD //g ½
        , $BD //g ½
        , $BD //g ½
        , $BD //g ½
        , $BD //g ½
        , $BD //g ½
        , $BD //g ½
        , $A2 //g ¢
        }
