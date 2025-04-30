L0: # Randomly initialize GPR
    lui         x0, 0xBF188
    addi        x0, x0, 0xFFFFFAB7
    lui         x1, 0x2B394
    addi        x1, x1, 0x653
    lui         x2, 0xE9E70
    addi        x2, x2, 0xFFFFF9BC
    lui         x3, 0x1DD3
    addi        x3, x3, 0x376
    lui         x4, 0x88166
    addi        x4, x4, 0xFFFFFA67
    lui         x5, 0xB4642
    addi        x5, x5, 0x688
    lui         x6, 0xBE0B8
    addi        x6, x6, 0xFFFFFC39
    lui         x7, 0x3CEBC
    addi        x7, x7, 0x348
    lui         x8, 0xDDE31
    addi        x8, x8, 0xFFFFFC40
    lui         x9, 0x654BD
    addi        x9, x9, 0x468
    lui         x10, 0x208D0
    addi        x10, x10, 0x601
    lui         x11, 0x3D6F4
    addi        x11, x11, 0xFFFFFDEB
    lui         x12, 0xAF713
    addi        x12, x12, 0x569
    lui         x13, 0x39428
    addi        x13, x13, 0x748
    lui         x14, 0xE2254
    addi        x14, x14, 0xFFFFFFE2
    lui         x15, 0x1C5C6
    addi        x15, x15, 0x233
    lui         x16, 0x69C66
    addi        x16, x16, 0xFFFFF901
    lui         x17, 0x878B9
    addi        x17, x17, 0xFFFFF9F3
    lui         x18, 0x21F80
    addi        x18, x18, 0x2E0
    lui         x19, 0x31364
    addi        x19, x19, 0x76D
    lui         x20, 0xB13E
    addi        x20, x20, 0x14A
    lui         x21, 0x44CA
    addi        x21, x21, 0x97
    lui         x22, 0x504A4
    addi        x22, x22, 0x5E6
    lui         x23, 0x61AF2
    addi        x23, x23, 0x17F
    lui         x24, 0xE8BF2
    addi        x24, x24, 0xFFFFF927
    lui         x25, 0xDA070
    addi        x25, x25, 0xFFFFF831
    lui         x26, 0x7BB94
    addi        x26, x26, 0xFFFFFB32
    lui         x27, 0x774E5
    addi        x27, x27, 0xFFFFFEF0
    lui         x28, 0xFB2D4
    addi        x28, x28, 0xFFFFFD0B
    lui         x29, 0x730C9
    addi        x29, x29, 0xFFFFF9FF
    lui         x30, 0x8F96B
    addi        x30, x30, 0x32A
    lui         x31, 0x622ED
    addi        x31, x31, 0x23E
L1: # Test 0-0: add
    add         x2, x8, x13
    lui         x31, 0x17259
    addi        x31, x31, 0x388
    bne         x2, x31, fail
    j           L2
L2: # Test 1-0: sub
    sub         x14, x3, x31
    lui         x10, 0xEAB7A
    addi        x10, x10, 0xFFFFFFEE
    bne         x14, x10, fail
    j           L3
L3: # Test 2-0: sll
    sll         x16, x6, x5
    lui         x24, 0xB7C4
    addi        x24, x24, 0xFFFFF900
    bne         x16, x24, fail
    j           L4
L4: # Test 3-0: srl
    srl         x9, x16, x24
    lui         x13, 0xB7C4
    addi        x13, x13, 0xFFFFF900
    bne         x9, x13, fail
    j           L5
L5: # Test 4-0: sra
    sra         x1, x7, x17
    lui         x18, 0x0
    addi        x18, x18, 0x79D
    bne         x1, x18, fail
    j           L6
L6: # Test 5-0: slt
    slt         x8, x18, x28
    lui         x15, 0x0
    addi        x15, x15, 0x0
    bne         x8, x15, fail
    j           L7
L7: # Test 6-0: sltu
    sltu        x11, x14, x30
    lui         x31, 0x0
    addi        x31, x31, 0x0
    bne         x11, x31, fail
    j           L8
L8: # Test 7-0: and
    and         x24, x19, x10
    lui         x8, 0x20360
    addi        x8, x8, 0x76C
    bne         x24, x8, fail
    j           L9
L9: # Test 8-0: or
    or          x7, x23, x31
    lui         x21, 0x61AF2
    addi        x21, x21, 0x17F
    bne         x7, x21, fail
    j           L10
L10: # Test 9-0: xor
    xor         x2, x3, x2
    lui         x5, 0x16F8A
    addi        x5, x5, 0xFE
    bne         x2, x5, fail
    j           L11
L11: # Test 10-0: addi
    addi        x13, x7, 0x3E5
    lui         x15, 0x61AF2
    addi        x15, x15, 0x564
    bne         x13, x15, fail
    j           L12
L12: # Test 11-0: slli
    slli        x29, x28, 0xD
    lui         x24, 0xA7A16
    addi        x24, x24, 0x0
    bne         x29, x24, fail
    j           L13
L13: # Test 12-0: srli
    srli        x28, x15, 0x1E
    lui         x30, 0x0
    addi        x30, x30, 0x1
    bne         x28, x30, fail
    j           L14
L14: # Test 13-0: srai
    srai        x0, x6, 0x19
    lui         x3, 0x0
    addi        x3, x3, 0x0
    bne         x0, x3, fail
    j           L15
L15: # Test 14-0: slti
    slti        x10, x27, 0xFFFFF898
    lui         x4, 0x0
    addi        x4, x4, 0x0
    bne         x10, x4, fail
    j           L16
L16: # Test 15-0: sltiu
    sltiu       x17, x20, 0xFFFFFDDA
    lui         x15, 0x0
    addi        x15, x15, 0x1
    bne         x17, x15, fail
    j           L17
L17: # Test 16-0: andi
    andi        x13, x0, 0x5C7
    lui         x8, 0x0
    addi        x8, x8, 0x0
    bne         x13, x8, fail
    j           L18
L18: # Test 17-0: ori
    ori         x8, x17, 0x678
    lui         x27, 0x0
    addi        x27, x27, 0x679
    bne         x8, x27, fail
    j           L19
L19: # Test 18-0: xori
    xori        x22, x5, 0x6F4
    lui         x28, 0x16F8A
    addi        x28, x28, 0x60A
    bne         x22, x28, fail
    j           L20
L20: # Test 19-0: lui
    lui         x6, 0x97CF
    lui         x10, 0x97CF
    addi        x10, x10, 0x0
    bne         x6, x10, fail
    j           L21
L21: # Test 20-0: auipc
    auipc       x13, 0x20110
    lui         x5, 0x20510
    addi        x5, x5, 0x290
    bne         x13, x5, fail
    j           L22
L22: # Test 21-0: lb
    lui         x7, 0x1001E
    addi        x7, x7, 0xFFFFF86C
    lb          x11, 0xFFFFFFE8(x7)
    lui         x31, 0x0
    addi        x31, x31, 0x0
    bne         x11, x31, fail
    j           L23
L23: # Test 22-0: lh
    lui         x15, 0x10022
    addi        x15, x15, 0x603
    lh          x28, 0xFFFFFA81(x15)
    lui         x1, 0x0
    addi        x1, x1, 0x0
    bne         x28, x1, fail
    j           L24
L24: # Test 23-0: lw
    lui         x2, 0x10031
    addi        x2, x2, 0x368
    lw          x6, 0xFFFFF974(x2)
    lui         x1, 0x0
    addi        x1, x1, 0x0
    bne         x6, x1, fail
    j           L25
L25: # Test 24-0: lbu
    lui         x28, 0x10012
    addi        x28, x28, 0x24C
    lbu         x25, 0xFFFFFEF7(x28)
    lui         x21, 0x0
    addi        x21, x21, 0x0
    bne         x25, x21, fail
    j           L26
L26: # Test 25-0: lhu
    lui         x9, 0x10030
    addi        x9, x9, 0xFFFFFE79
    lhu         x17, 0x59B(x9)
    lui         x13, 0x0
    addi        x13, x13, 0x0
    bne         x17, x13, fail
    j           L27
L27: # Test 26-0: sb
    lui         x7, 0x10027
    addi        x7, x7, 0x18B
    sb          x22, 0xFFFFFFF2(x7)
    lui         x16, 0x10027
    addi        x16, x16, 0x504
    lbu         x23, 0xFFFFFC78(x16)
    lui         x20, 0x0
    addi        x20, x20, 0x0
    bne         x23, x20, fail
    lui         x28, 0x10027
    addi        x28, x28, 0x536
    lbu         x19, 0xFFFFFC46(x28)
    lui         x29, 0x0
    addi        x29, x29, 0x0
    bne         x19, x29, fail
    lui         x2, 0x10027
    addi        x2, x2, 0x728
    lbu         x5, 0xFFFFFA54(x2)
    lui         x8, 0x0
    addi        x8, x8, 0x0
    bne         x5, x8, fail
    lui         x19, 0x10028
    addi        x19, x19, 0xFFFFF836
    lbu         x14, 0xFFFFF946(x19)
    lui         x29, 0x0
    addi        x29, x29, 0x0
    bne         x14, x29, fail
    j           L28
L28: # Test 27-0: sh
    lui         x15, 0x10024
    addi        x15, x15, 0xFFFFFDD8
    sh          x18, 0x178(x15)
    lui         x13, 0x10024
    addi        x13, x13, 0x70B
    lbu         x31, 0xFFFFF845(x13)
    lui         x2, 0x0
    addi        x2, x2, 0x9D
    bne         x31, x2, fail
    lui         x14, 0x10024
    addi        x14, x14, 0xFFFFFAE4
    lbu         x21, 0x46C(x14)
    lui         x26, 0x0
    addi        x26, x26, 0x9D
    bne         x21, x26, fail
    lui         x22, 0x10024
    addi        x22, x22, 0xFFFFFD34
    lbu         x21, 0x21C(x22)
    lui         x27, 0x0
    addi        x27, x27, 0x9D
    bne         x21, x27, fail
    lui         x3, 0x10024
    addi        x3, x3, 0xFFFFFFB6
    lbu         x11, 0xFFFFFF9A(x3)
    lui         x20, 0x0
    addi        x20, x20, 0x9D
    bne         x11, x20, fail
    j           L29
L29: # Test 28-0: sw
    lui         x27, 0x1002C
    addi        x27, x27, 0x1A0
    sw          x19, 0x2EC(x27)
    lui         x5, 0x1002C
    addi        x5, x5, 0xFFFFFE3C
    lbu         x29, 0x650(x5)
    lui         x20, 0x0
    addi        x20, x20, 0x36
    bne         x29, x20, fail
    lui         x19, 0x1002C
    addi        x19, x19, 0x5FC
    lbu         x5, 0xFFFFFE90(x19)
    lui         x10, 0x0
    addi        x10, x10, 0x36
    bne         x5, x10, fail
    lui         x6, 0x1002C
    addi        x6, x6, 0x5F2
    lbu         x13, 0xFFFFFE9A(x6)
    lui         x31, 0x0
    addi        x31, x31, 0x36
    bne         x13, x31, fail
    lui         x25, 0x1002C
    addi        x25, x25, 0x35C
    lbu         x7, 0x130(x25)
    lui         x31, 0x0
    addi        x31, x31, 0x36
    bne         x7, x31, fail
    j           L30
L30: # Test 29-0: jal
    jal         x3, L31
    j           fail
L31: # jal target
    lui         x15, 0x400
    addi        x15, x15, 0x484
    bne         x3, x15, fail
    j           L32
L32: # Test 30-0: jalr
    lui         x13, 0x400
    addi        x13, x13, 0x5B2
    jalr        x18, 0xFFFFFEF6(x13)
    j           fail
L33: # jalr target
    lui         x23, 0x400
    addi        x23, x23, 0x4A4
    bne         x18, x23, fail
    j           L34
L34: # Test 31-0: beq
    beq         x25, x1, fail
    j           L35
L35: # Test 32-0: bne
    bne         x27, x5, L36
    j           fail
L36: # Test 33-0: blt
    blt         x5, x28, L37
    j           fail
L37: # Test 34-0: bge
    bge         x2, x9, fail
    j           win
win: # Win label
    lui         x4, 0x0
    addi        x4, x4, 0x0
	ebreak
fail: # Fail label
    lui         x4, 0x0
    addi        x4, x4, 0xFFFFFFFF
	ebreak
