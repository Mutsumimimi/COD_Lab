L0: # Randomly initialize GPR
    lui         x0, 0xF18D9
    addi        x0, x0, 0x7B2
    lui         x1, 0x1F80B
    addi        x1, x1, 0x274
    lui         x2, 0x22CF7
    addi        x2, x2, 0xFFFFFEAC
    lui         x3, 0x9BDE2
    addi        x3, x3, 0x52D
    lui         x4, 0x6570B
    addi        x4, x4, 0x782
    lui         x5, 0xB511B
    addi        x5, x5, 0x61E
    lui         x6, 0xA6346
    addi        x6, x6, 0xFFFFF90E
    lui         x7, 0x36537
    addi        x7, x7, 0xFFFFFCE5
    lui         x8, 0xC52AC
    addi        x8, x8, 0xFFFFFE2F
    lui         x9, 0x46609
    addi        x9, x9, 0xFFFFFC60
    lui         x10, 0x29A0B
    addi        x10, x10, 0xFFFFFC87
    lui         x11, 0x4247A
    addi        x11, x11, 0xFFFFFE87
    lui         x12, 0xB8C94
    addi        x12, x12, 0xFFFFFF32
    lui         x13, 0xD3129
    addi        x13, x13, 0xFFFFFC74
    lui         x14, 0x1D1AB
    addi        x14, x14, 0xFFFFFA29
    lui         x15, 0x7E1E4
    addi        x15, x15, 0xFFFFF91A
    lui         x16, 0x59E23
    addi        x16, x16, 0xFFFFFAFE
    lui         x17, 0xCFAEB
    addi        x17, x17, 0xFFFFFD46
    lui         x18, 0x321A2
    addi        x18, x18, 0x2D9
    lui         x19, 0x29DB5
    addi        x19, x19, 0x41E
    lui         x20, 0xFF1A8
    addi        x20, x20, 0xFFFFFCF6
    lui         x21, 0x3357C
    addi        x21, x21, 0x8F
    lui         x22, 0xD9CE4
    addi        x22, x22, 0xFFFFFB41
    lui         x23, 0xD83B6
    addi        x23, x23, 0x76
    lui         x24, 0x23691
    addi        x24, x24, 0xFFFFF891
    lui         x25, 0xF4912
    addi        x25, x25, 0xFFFFFA47
    lui         x26, 0xBFA31
    addi        x26, x26, 0x68E
    lui         x27, 0x51E6D
    addi        x27, x27, 0xFFFFFDCA
    lui         x28, 0xB86B6
    addi        x28, x28, 0x2DB
    lui         x29, 0xFD77C
    addi        x29, x29, 0xFFFFFDA6
    lui         x30, 0x9B687
    addi        x30, x30, 0x51
    lui         x31, 0xFE7A9
    addi        x31, x31, 0x5FD
L1: # Test 0-0: add
    add         x4, x26, x7
    lui         x13, 0xF5F68
    addi        x13, x13, 0x373
    bne         x4, x13, FL0
    j           L2
L2: # Test 0-1: add
    add         x10, x30, x3
    lui         x11, 0x37469
    addi        x11, x11, 0x57E
    bne         x10, x11, FL0
    j           L3
L3: # Test 0-2: add
    add         x5, x3, x0
    lui         x10, 0x9BDE2
    addi        x10, x10, 0x52D
    bne         x5, x10, FL0
    j           L4
L4: # Test 0-3: add
    add         x15, x5, x15
    lui         x22, 0x19FC6
    addi        x22, x22, 0xFFFFFE47
    bne         x15, x22, FL0
    j           L5
L5: # Test 0-4: add
    add         x26, x21, x1
    lui         x21, 0x52D87
    addi        x21, x21, 0x303
    bne         x26, x21, FL0
    j           L6
L6: # Test 0-5: add
    add         x5, x6, x27
    lui         x28, 0xF81B2
    addi        x28, x28, 0x6D8
    bne         x5, x28, FL0
    j           L7
L7: # Test 0-6: add
    add         x6, x27, x18
    lui         x9, 0x8400F
    addi        x9, x9, 0xA3
    bne         x6, x9, FL0
    j           L8
L8: # Test 0-7: add
    add         x31, x25, x28
    lui         x4, 0xECAC4
    addi        x4, x4, 0x11F
    bne         x31, x4, FL0
    j           L9
L9: # Test 0-8: add
    add         x11, x3, x17
    lui         x2, 0x6B8CD
    addi        x2, x2, 0x273
    bne         x11, x2, FL0
    j           L10
L10: # Test 0-9: add
    add         x29, x10, x9
    lui         x27, 0x1FDF1
    addi        x27, x27, 0x5D0
    bne         x29, x27, FL0
    j           L11
L11: # Test 1-0: sub
    sub         x25, x11, x26
    lui         x31, 0x18B46
    addi        x31, x31, 0xFFFFFF70
    bne         x25, x31, FL0
    j           L12
L12: # Test 1-1: sub
    sub         x23, x19, x9
    lui         x12, 0xA5DA6
    addi        x12, x12, 0x37B
    bne         x23, x12, FL0
    j           L13
L13: # Test 1-2: sub
    sub         x29, x31, x30
    lui         x10, 0x7D4BF
    addi        x10, x10, 0xFFFFFF1F
    bne         x29, x10, FL0
    j           L14
L14: # Test 1-3: sub
    sub         x14, x9, x14
    lui         x21, 0x66E64
    addi        x21, x21, 0x67A
    bne         x14, x21, FL0
    j           L15
L15: # Test 1-4: sub
    sub         x5, x12, x9
    lui         x17, 0x21D97
    addi        x17, x17, 0x2D8
    bne         x5, x17, FL0
    j           L16
L16: # Test 1-5: sub
    sub         x28, x13, x31
    lui         x22, 0xDD422
    addi        x22, x22, 0x403
    bne         x28, x22, FL0
    j           L17
L17: # Test 1-6: sub
    sub         x6, x21, x28
    lui         x1, 0x89A42
    addi        x1, x1, 0x277
    bne         x6, x1, FL0
    j           L18
L18: # Test 1-7: sub
    sub         x1, x29, x27
    lui         x24, 0x5D6CE
    addi        x24, x24, 0xFFFFF94F
    bne         x1, x24, FL0
    j           L19
L19: # Test 1-8: sub
    sub         x31, x25, x31
    lui         x29, 0x0
    addi        x29, x29, 0x0
    bne         x31, x29, FL0
    j           L20
L20: # Test 1-9: sub
    sub         x1, x7, x19
    lui         x4, 0xC782
    addi        x4, x4, 0xFFFFF8C7
    bne         x1, x4, FL0
    j           L21
L21: # Test 2-0: sll
    sll         x7, x30, x12
    lui         x1, 0x88000
    addi        x1, x1, 0x0
    bne         x7, x1, FL0
    j           L22
L22: # Test 2-1: sll
    sll         x1, x28, x21
    lui         x9, 0xC000
    addi        x9, x9, 0x0
    bne         x1, x9, FL0
    j           L23
L23: # Test 2-2: sll
    sll         x16, x1, x25
    lui         x2, 0x0
    addi        x2, x2, 0x0
    bne         x16, x2, FL0
    j           L24
L24: # Test 2-3: sll
    sll         x28, x15, x22
    lui         x22, 0xCFE2F
    addi        x22, x22, 0x238
    bne         x28, x22, FL0
    j           L25
L25: # Test 2-4: sll
    sll         x1, x17, x20
    lui         x13, 0xB6000
    addi        x13, x13, 0x0
    bne         x1, x13, FL0
    j           L26
L26: # Test 2-5: sll
    sll         x30, x5, x7
    lui         x27, 0x21D97
    addi        x27, x27, 0x2D8
    bne         x30, x27, FL0
    j           L27
L27: # Test 2-6: sll
    sll         x12, x30, x27
    lui         x28, 0xD8000
    addi        x28, x28, 0x0
    bne         x12, x28, FL0
    j           L28
L28: # Test 2-7: sll
    sll         x23, x3, x10
    lui         x30, 0x80000
    addi        x30, x30, 0x0
    bne         x23, x30, FL0
    j           L29
L29: # Test 2-8: sll
    sll         x12, x12, x3
    lui         x24, 0x0
    addi        x24, x24, 0x0
    bne         x12, x24, FL0
    j           L30
L30: # Test 2-9: sll
    sll         x16, x5, x7
    lui         x27, 0x21D97
    addi        x27, x27, 0x2D8
    bne         x16, x27, FL0
    j           L31
L31: # Test 3-0: srl
    srl         x29, x5, x17
    lui         x26, 0x0
    addi        x26, x26, 0x21
    bne         x29, x26, FL0
    j           L32
L32: # Test 3-1: srl
    srl         x0, x6, x9
    lui         x3, 0x0
    addi        x3, x3, 0x0
    bne         x0, x3, FL0
    j           L33
L33: # Test 3-2: srl
    srl         x17, x29, x23
    lui         x30, 0x0
    addi        x30, x30, 0x21
    bne         x17, x30, FL0
    j           L34
L34: # Test 3-3: srl
    srl         x4, x6, x24
    lui         x12, 0x89A42
    addi        x12, x12, 0x277
    bne         x4, x12, FL0
    j           L35
L35: # Test 3-4: srl
    srl         x1, x23, x31
    lui         x25, 0x80000
    addi        x25, x25, 0x0
    bne         x1, x25, FL0
    j           L36
L36: # Test 3-5: srl
    srl         x18, x29, x25
    lui         x1, 0x0
    addi        x1, x1, 0x21
    bne         x18, x1, FL0
    j           L37
L37: # Test 3-6: srl
    srl         x8, x28, x11
    lui         x9, 0x2
    addi        x9, x9, 0xFFFFFB00
    bne         x8, x9, FL0
    j           L38
L38: # Test 3-7: srl
    srl         x6, x15, x13
    lui         x30, 0x19FC6
    addi        x30, x30, 0xFFFFFE47
    bne         x6, x30, FL0
    j           L39
L39: # Test 3-8: srl
    srl         x18, x7, x19
    lui         x8, 0x0
    addi        x8, x8, 0x2
    bne         x18, x8, FL0
    j           L40
L40: # Test 3-9: srl
    srl         x29, x21, x14
    lui         x9, 0x0
    addi        x9, x9, 0x19
    bne         x29, x9, FL0
    j           L41
L41: # Test 4-0: sra
    sra         x30, x25, x19
    lui         x2, 0x0
    addi        x2, x2, 0xFFFFFFFE
    bne         x30, x2, FL0
    j           L42
L42: # Test 4-1: sra
    sra         x27, x31, x5
    lui         x25, 0x0
    addi        x25, x25, 0x0
    bne         x27, x25, FL0
    j           L43
L43: # Test 4-2: sra
    sra         x8, x11, x30
    lui         x28, 0x0
    addi        x28, x28, 0x1
    bne         x8, x28, FL0
    j           L44
L44: # Test 4-3: sra
    sra         x13, x6, x26
    lui         x5, 0xCFE3
    addi        x5, x5, 0xFFFFFF23
    bne         x13, x5, FL0
    j           L45
L45: # Test 4-4: sra
    sra         x3, x2, x3
    lui         x6, 0x0
    addi        x6, x6, 0xFFFFFFFE
    bne         x3, x6, FL0
    j           L46
L46: # Test 4-5: sra
    sra         x28, x15, x28
    lui         x5, 0xCFE3
    addi        x5, x5, 0xFFFFFF23
    bne         x28, x5, FL0
    j           L47
L47: # Test 4-6: sra
    sra         x5, x20, x25
    lui         x21, 0xFF1A8
    addi        x21, x21, 0xFFFFFCF6
    bne         x5, x21, FL0
    j           L48
L48: # Test 4-7: sra
    sra         x23, x18, x25
    lui         x21, 0x0
    addi        x21, x21, 0x2
    bne         x23, x21, FL0
    j           L49
L49: # Test 4-8: sra
    sra         x6, x0, x16
    lui         x21, 0x0
    addi        x21, x21, 0x0
    bne         x6, x21, FL0
    j           L50
L50: # Test 4-9: sra
    sra         x18, x5, x30
    lui         x27, 0x0
    addi        x27, x27, 0xFFFFFFFF
    bne         x18, x27, FL0
    j           L51
L51: # Test 5-0: slt
    slt         x3, x15, x9
    lui         x31, 0x0
    addi        x31, x31, 0x0
    bne         x3, x31, FL0
    j           L52
L52: # Test 5-1: slt
    slt         x26, x9, x23
    lui         x13, 0x0
    addi        x13, x13, 0x0
    bne         x26, x13, FL0
    j           L53
L53: # Test 5-2: slt
    slt         x0, x29, x4
    lui         x15, 0x0
    addi        x15, x15, 0x0
    bne         x0, x15, FL0
    j           L54
L54: # Test 5-3: slt
    slt         x21, x13, x30
    lui         x2, 0x0
    addi        x2, x2, 0x0
    bne         x21, x2, FL0
    j           L55
L55: # Test 5-4: slt
    slt         x26, x18, x0
    lui         x18, 0x0
    addi        x18, x18, 0x1
    bne         x26, x18, FL0
    j           L56
L56: # Test 5-5: slt
    slt         x27, x15, x30
    lui         x23, 0x0
    addi        x23, x23, 0x0
    bne         x27, x23, FL0
    j           L57
L57: # Test 5-6: slt
    slt         x15, x8, x31
    lui         x30, 0x0
    addi        x30, x30, 0x0
    bne         x15, x30, FL0
    j           L58
L58: # Test 5-7: slt
    slt         x22, x6, x28
    lui         x21, 0x0
    addi        x21, x21, 0x1
    bne         x22, x21, FL0
    j           L59
L59: # Test 5-8: slt
    slt         x13, x4, x20
    lui         x31, 0x0
    addi        x31, x31, 0x1
    bne         x13, x31, FL0
    j           L60
L60: # Test 5-9: slt
    slt         x22, x2, x7
    lui         x5, 0x0
    addi        x5, x5, 0x0
    bne         x22, x5, FL0
    j           L61
L61: # Test 6-0: sltu
    sltu        x0, x21, x3
    lui         x15, 0x0
    addi        x15, x15, 0x0
    bne         x0, x15, FL0
    j           L62
L62: # Test 6-1: sltu
    sltu        x1, x16, x27
    lui         x20, 0x0
    addi        x20, x20, 0x0
    bne         x1, x20, FL0
    j           L63
L63: # Test 6-2: sltu
    sltu        x31, x31, x28
    lui         x19, 0x0
    addi        x19, x19, 0x1
    bne         x31, x19, FL0
    j           L64
L64: # Test 6-3: sltu
    sltu        x21, x18, x29
    lui         x28, 0x0
    addi        x28, x28, 0x1
    bne         x21, x28, FL0
    j           L65
L65: # Test 6-4: sltu
    sltu        x28, x25, x1
    lui         x25, 0x0
    addi        x25, x25, 0x0
    bne         x28, x25, FL0
    j           L66
L66: # Test 6-5: sltu
    sltu        x18, x3, x14
    lui         x3, 0x0
    addi        x3, x3, 0x1
    bne         x18, x3, FL0
    j           L67
L67: # Test 6-6: sltu
    sltu        x29, x4, x7
    lui         x19, 0x0
    addi        x19, x19, 0x0
    bne         x29, x19, FL0
    j           L68
L68: # Test 6-7: sltu
    sltu        x3, x10, x15
    lui         x15, 0x0
    addi        x15, x15, 0x0
    bne         x3, x15, FL0
    j           L69
L69: # Test 6-8: sltu
    sltu        x21, x10, x12
    lui         x31, 0x0
    addi        x31, x31, 0x1
    bne         x21, x31, FL0
    j           L70
L70: # Test 6-9: sltu
    sltu        x27, x8, x23
    lui         x20, 0x0
    addi        x20, x20, 0x0
    bne         x27, x20, FL0
    j           L71
L71: # Test 7-0: and
    and         x6, x11, x5
    lui         x30, 0x0
    addi        x30, x30, 0x0
    bne         x6, x30, FL0
    j           L72
L72: # Test 7-1: and
    and         x16, x0, x10
    lui         x2, 0x0
    addi        x2, x2, 0x0
    bne         x16, x2, FL0
    j           L73
L73: # Test 7-2: and
    and         x3, x2, x7
    lui         x22, 0x0
    addi        x22, x22, 0x0
    bne         x3, x22, FL0
    j           L74
L74: # Test 7-3: and
    and         x27, x23, x22
    lui         x12, 0x0
    addi        x12, x12, 0x0
    bne         x27, x12, FL0
    j           L75
L75: # Test 7-4: and
    and         x8, x30, x21
    lui         x2, 0x0
    addi        x2, x2, 0x0
    bne         x8, x2, FL0
    j           L76
L76: # Test 7-5: and
    and         x4, x4, x21
    lui         x26, 0x0
    addi        x26, x26, 0x1
    bne         x4, x26, FL0
    j           L77
L77: # Test 7-6: and
    and         x2, x11, x18
    lui         x9, 0x0
    addi        x9, x9, 0x1
    bne         x2, x9, FL0
    j           L78
L78: # Test 7-7: and
    and         x27, x28, x16
    lui         x14, 0x0
    addi        x14, x14, 0x0
    bne         x27, x14, FL0
    j           L79
L79: # Test 7-8: and
    and         x28, x29, x15
    lui         x26, 0x0
    addi        x26, x26, 0x0
    bne         x28, x26, FL0
    j           L80
L80: # Test 7-9: and
    and         x9, x3, x5
    lui         x5, 0x0
    addi        x5, x5, 0x0
    bne         x9, x5, FL0
    j           L81
L81: # Test 8-0: or
    or          x24, x6, x17
    lui         x30, 0x0
    addi        x30, x30, 0x21
    bne         x24, x30, FL0
    j           L82
L82: # Test 8-1: or
    or          x24, x30, x7
    lui         x27, 0x88000
    addi        x27, x27, 0x21
    bne         x24, x27, FL0
    j           L83
L83: # Test 8-2: or
    or          x9, x29, x26
    lui         x21, 0x0
    addi        x21, x21, 0x0
    bne         x9, x21, FL0
    j           L84
L84: # Test 8-3: or
    or          x0, x26, x30
    lui         x13, 0x0
    addi        x13, x13, 0x0
    bne         x0, x13, FL0
    j           L85
L85: # Test 8-4: or
    or          x6, x20, x9
    lui         x11, 0x0
    addi        x11, x11, 0x0
    bne         x6, x11, FL0
    j           L86
L86: # Test 8-5: or
    or          x20, x22, x20
    lui         x2, 0x0
    addi        x2, x2, 0x0
    bne         x20, x2, FL0
    j           L87
L87: # Test 8-6: or
    or          x12, x17, x12
    lui         x23, 0x0
    addi        x23, x23, 0x21
    bne         x12, x23, FL0
    j           L88
L88: # Test 8-7: or
    or          x11, x10, x31
    lui         x24, 0x7D4BF
    addi        x24, x24, 0xFFFFFF1F
    bne         x11, x24, FL0
    j           L89
L89: # Test 8-8: or
    or          x24, x18, x16
    lui         x31, 0x0
    addi        x31, x31, 0x1
    bne         x24, x31, FL0
    j           L90
L90: # Test 8-9: or
    or          x1, x25, x31
    lui         x20, 0x0
    addi        x20, x20, 0x1
    bne         x1, x20, FL0
    j           L91
L91: # Test 9-0: xor
    xor         x21, x1, x24
    lui         x22, 0x0
    addi        x22, x22, 0x0
    bne         x21, x22, FL0
    j           L92
L92: # Test 9-1: xor
    xor         x21, x26, x9
    lui         x7, 0x0
    addi        x7, x7, 0x0
    bne         x21, x7, FL0
    j           L93
L93: # Test 9-2: xor
    xor         x15, x18, x2
    lui         x26, 0x0
    addi        x26, x26, 0x1
    bne         x15, x26, FL0
    j           L94
L94: # Test 9-3: xor
    xor         x15, x5, x24
    lui         x17, 0x0
    addi        x17, x17, 0x1
    bne         x15, x17, FL0
    j           L95
L95: # Test 9-4: xor
    xor         x5, x10, x3
    lui         x20, 0x7D4BF
    addi        x20, x20, 0xFFFFFF1F
    bne         x5, x20, FL0
    j           L96
L96: # Test 9-5: xor
    xor         x22, x21, x17
    lui         x7, 0x0
    addi        x7, x7, 0x1
    bne         x22, x7, FL0
    j           L97
L97: # Test 9-6: xor
    xor         x16, x12, x6
    lui         x9, 0x0
    addi        x9, x9, 0x21
    bne         x16, x9, FL0
    j           L98
L98: # Test 9-7: xor
    xor         x29, x15, x4
    lui         x20, 0x0
    addi        x20, x20, 0x0
    bne         x29, x20, FL0
    j           L99
L99: # Test 9-8: xor
    xor         x18, x27, x17
    lui         x1, 0x88000
    addi        x1, x1, 0x20
    bne         x18, x1, FL0
    j           L100
L100: # Test 9-9: xor
    xor         x15, x8, x19
    lui         x24, 0x0
    addi        x24, x24, 0x0
    bne         x15, x24, FL0
    j           L101
L101: # Test 10-0: addi
    addi        x5, x25, 0x97
    lui         x4, 0x0
    addi        x4, x4, 0x97
    bne         x5, x4, FL0
    j           L102
L102: # Test 10-1: addi
    addi        x25, x19, 0x12C
    lui         x12, 0x0
    addi        x12, x12, 0x12C
    bne         x25, x12, FL0
    j           L103
L103: # Test 10-2: addi
    addi        x25, x26, 0xFFFFF8B0
    lui         x17, 0x0
    addi        x17, x17, 0xFFFFF8B1
    bne         x25, x17, FL0
    j           L104
L104: # Test 10-3: addi
    addi        x12, x29, 0x3BA
    lui         x16, 0x0
    addi        x16, x16, 0x3BA
    bne         x12, x16, FL0
    j           L105
L105: # Test 10-4: addi
    addi        x22, x17, 0x6F0
    lui         x28, 0x0
    addi        x28, x28, 0xFFFFFFA1
    bne         x22, x28, FL0
    j           L106
L106: # Test 10-5: addi
    addi        x24, x5, 0x100
    lui         x29, 0x0
    addi        x29, x29, 0x197
    bne         x24, x29, FL0
    j           L107
L107: # Test 10-6: addi
    addi        x11, x31, 0xFFFFFB4C
    lui         x4, 0x0
    addi        x4, x4, 0xFFFFFB4D
    bne         x11, x4, FL0
    j           L108
L108: # Test 10-7: addi
    addi        x20, x8, 0x79D
    lui         x29, 0x0
    addi        x29, x29, 0x79D
    bne         x20, x29, FL0
    j           L109
L109: # Test 10-8: addi
    addi        x4, x0, 0x65B
    lui         x1, 0x0
    addi        x1, x1, 0x65B
    bne         x4, x1, FL0
    j           L110
L110: # Test 10-9: addi
    addi        x2, x22, 0x7BF
    lui         x5, 0x0
    addi        x5, x5, 0x760
    bne         x2, x5, FL0
    j           L111
L111: # Test 11-0: slli
    slli        x20, x3, 0x13
    lui         x7, 0x0
    addi        x7, x7, 0x0
    bne         x20, x7, FL0
    j           L112
L112: # Test 11-1: slli
    slli        x1, x27, 0x17
    lui         x17, 0x10800
    addi        x17, x17, 0x0
    bne         x1, x17, FL0
    j           L113
L113: # Test 11-2: slli
    slli        x8, x2, 0x19
    lui         x19, 0xC0000
    addi        x19, x19, 0x0
    bne         x8, x19, FL0
    j           L114
L114: # Test 11-3: slli
    slli        x11, x9, 0x3
    lui         x19, 0x0
    addi        x19, x19, 0x108
    bne         x11, x19, FL0
    j           L115
L115: # Test 11-4: slli
    slli        x28, x24, 0x3
    lui         x6, 0x1
    addi        x6, x6, 0xFFFFFCB8
    bne         x28, x6, FL0
    j           L116
L116: # Test 11-5: slli
    slli        x14, x20, 0x0
    lui         x7, 0x0
    addi        x7, x7, 0x0
    bne         x14, x7, FL0
    j           L117
L117: # Test 11-6: slli
    slli        x11, x8, 0xE
    lui         x24, 0x0
    addi        x24, x24, 0x0
    bne         x11, x24, FL0
    j           L118
L118: # Test 11-7: slli
    slli        x11, x19, 0x8
    lui         x27, 0x11
    addi        x27, x27, 0xFFFFF800
    bne         x11, x27, FL0
    j           L119
L119: # Test 11-8: slli
    slli        x3, x23, 0x15
    lui         x1, 0x4200
    addi        x1, x1, 0x0
    bne         x3, x1, FL0
    j           L120
L120: # Test 11-9: slli
    slli        x5, x18, 0x1C
    lui         x31, 0x0
    addi        x31, x31, 0x0
    bne         x5, x31, FL0
    j           L121
L121: # Test 12-0: srli
    srli        x27, x17, 0x5
    lui         x14, 0x840
    addi        x14, x14, 0x0
    bne         x27, x14, FL0
    j           L122
L122: # Test 12-1: srli
    srli        x12, x4, 0x0
    lui         x16, 0x0
    addi        x16, x16, 0x65B
    bne         x12, x16, FL0
    j           L123
L123: # Test 12-2: srli
    srli        x16, x30, 0xE
    lui         x24, 0x0
    addi        x24, x24, 0x0
    bne         x16, x24, FL0
    j           L124
L124: # Test 12-3: srli
    srli        x13, x27, 0xF
    lui         x31, 0x0
    addi        x31, x31, 0x108
    bne         x13, x31, FL0
    j           L125
L125: # Test 12-4: srli
    srli        x13, x23, 0x1D
    lui         x29, 0x0
    addi        x29, x29, 0x0
    bne         x13, x29, FL0
    j           L126
L126: # Test 12-5: srli
    srli        x5, x15, 0x10
    lui         x7, 0x0
    addi        x7, x7, 0x0
    bne         x5, x7, FL0
    j           L127
L127: # Test 12-6: srli
    srli        x14, x31, 0x1F
    lui         x15, 0x0
    addi        x15, x15, 0x0
    bne         x14, x15, FL0
    j           L128
L128: # Test 12-7: srli
    srli        x1, x24, 0x6
    lui         x30, 0x0
    addi        x30, x30, 0x0
    bne         x1, x30, FL0
    j           L129
L129: # Test 12-8: srli
    srli        x7, x0, 0xD
    lui         x22, 0x0
    addi        x22, x22, 0x0
    bne         x7, x22, FL0
    j           L130
L130: # Test 12-9: srli
    srli        x3, x8, 0x8
    lui         x9, 0xC00
    addi        x9, x9, 0x0
    bne         x3, x9, FL0
    j           L131
L131: # Test 13-0: srai
    srai        x8, x20, 0x1A
    lui         x21, 0x0
    addi        x21, x21, 0x0
    bne         x8, x21, FL0
    j           L132
L132: # Test 13-1: srai
    srai        x0, x11, 0x1E
    lui         x22, 0x0
    addi        x22, x22, 0x0
    bne         x0, x22, FL0
    j           L133
L133: # Test 13-2: srai
    srai        x8, x20, 0x5
    lui         x2, 0x0
    addi        x2, x2, 0x0
    bne         x8, x2, FL0
    j           L134
L134: # Test 13-3: srai
    srai        x5, x0, 0x18
    lui         x2, 0x0
    addi        x2, x2, 0x0
    bne         x5, x2, FL0
    j           L135
L135: # Test 13-4: srai
    srai        x25, x11, 0x17
    lui         x14, 0x0
    addi        x14, x14, 0x0
    bne         x25, x14, FL0
    j           L136
L136: # Test 13-5: srai
    srai        x25, x0, 0xB
    lui         x30, 0x0
    addi        x30, x30, 0x0
    bne         x25, x30, FL0
    j           L137
L137: # Test 13-6: srai
    srai        x9, x22, 0x17
    lui         x29, 0x0
    addi        x29, x29, 0x0
    bne         x9, x29, FL0
    j           L138
L138: # Test 13-7: srai
    srai        x21, x1, 0xB
    lui         x12, 0x0
    addi        x12, x12, 0x0
    bne         x21, x12, FL0
    j           L139
L139: # Test 13-8: srai
    srai        x27, x4, 0x10
    lui         x15, 0x0
    addi        x15, x15, 0x0
    bne         x27, x15, FL0
    j           L140
L140: # Test 13-9: srai
    srai        x22, x27, 0xB
    lui         x9, 0x0
    addi        x9, x9, 0x0
    bne         x22, x9, FL0
    j           L141
L141: # Test 14-0: slti
    slti        x15, x12, 0x83
    lui         x18, 0x0
    addi        x18, x18, 0x1
    bne         x15, x18, FL0
    j           L142
L142: # Test 14-1: slti
    slti        x0, x3, 0x272
    lui         x31, 0x0
    addi        x31, x31, 0x0
    bne         x0, x31, FL0
    j           L143
L143: # Test 14-2: slti
    slti        x12, x10, 0xFFFFFF84
    lui         x16, 0x0
    addi        x16, x16, 0x0
    bne         x12, x16, FL0
    j           L144
L144: # Test 14-3: slti
    slti        x25, x21, 0xFFFFF9B8
    lui         x19, 0x0
    addi        x19, x19, 0x0
    bne         x25, x19, FL0
    j           L145
L145: # Test 14-4: slti
    slti        x30, x23, 0xFFFFFA5A
    lui         x8, 0x0
    addi        x8, x8, 0x0
    bne         x30, x8, FL0
    j           L146
L146: # Test 14-5: slti
    slti        x20, x29, 0x59B
    lui         x3, 0x0
    addi        x3, x3, 0x1
    bne         x20, x3, FL0
    j           L147
L147: # Test 14-6: slti
    slti        x29, x20, 0x694
    lui         x13, 0x0
    addi        x13, x13, 0x1
    bne         x29, x13, FL0
    j           L148
L148: # Test 14-7: slti
    slti        x8, x21, 0x37B
    lui         x1, 0x0
    addi        x1, x1, 0x1
    bne         x8, x1, FL0
    j           L149
L149: # Test 14-8: slti
    slti        x23, x6, 0xFFFFFB51
    lui         x28, 0x0
    addi        x28, x28, 0x0
    bne         x23, x28, FL0
    j           L150
L150: # Test 14-9: slti
    slti        x0, x11, 0xFFFFF907
    lui         x28, 0x0
    addi        x28, x28, 0x0
    bne         x0, x28, FL0
    j           L151
L151: # Test 15-0: sltiu
    sltiu       x11, x27, 0xFFFFF857
    lui         x8, 0x0
    addi        x8, x8, 0x1
    bne         x11, x8, FL0
    j           L152
L152: # Test 15-1: sltiu
    sltiu       x30, x5, 0xFFFFFB2B
    lui         x9, 0x0
    addi        x9, x9, 0x1
    bne         x30, x9, FL0
    j           L153
L153: # Test 15-2: sltiu
    sltiu       x15, x29, 0xFFFFFAC4
    lui         x26, 0x0
    addi        x26, x26, 0x1
    bne         x15, x26, FL0
    j           L154
L154: # Test 15-3: sltiu
    sltiu       x28, x27, 0xFFFFFCCD
    lui         x8, 0x0
    addi        x8, x8, 0x1
    bne         x28, x8, FL0
    j           L155
L155: # Test 15-4: sltiu
    sltiu       x5, x18, 0x190
    lui         x1, 0x0
    addi        x1, x1, 0x1
    bne         x5, x1, FL0
    j           L156
L156: # Test 15-5: sltiu
    sltiu       x23, x30, 0xFFFFFFD6
    lui         x31, 0x0
    addi        x31, x31, 0x1
    bne         x23, x31, FL0
    j           L157
L157: # Test 15-6: sltiu
    sltiu       x4, x6, 0x409
    lui         x12, 0x0
    addi        x12, x12, 0x0
    bne         x4, x12, FL0
    j           L158
L158: # Test 15-7: sltiu
    sltiu       x28, x19, 0xFFFFFDDE
    lui         x7, 0x0
    addi        x7, x7, 0x1
    bne         x28, x7, FL0
    j           L159
L159: # Test 15-8: sltiu
    sltiu       x25, x14, 0xFFFFFB93
    lui         x29, 0x0
    addi        x29, x29, 0x1
    bne         x25, x29, FL0
    j           L160
L160: # Test 15-9: sltiu
    sltiu       x26, x31, 0x6F3
    lui         x11, 0x0
    addi        x11, x11, 0x1
    bne         x26, x11, FL0
    j           L161
L161: # Test 16-0: andi
    andi        x17, x24, 0xFFFFF9CD
    lui         x7, 0x0
    addi        x7, x7, 0x0
    bne         x17, x7, FL0
    j           L162
L162: # Test 16-1: andi
    andi        x11, x1, 0x442
    lui         x17, 0x0
    addi        x17, x17, 0x0
    bne         x11, x17, FL0
    j           L163
L163: # Test 16-2: andi
    andi        x3, x30, 0x1E9
    lui         x24, 0x0
    addi        x24, x24, 0x1
    bne         x3, x24, FL0
    j           L164
L164: # Test 16-3: andi
    andi        x3, x14, 0xFFFFFB45
    lui         x7, 0x0
    addi        x7, x7, 0x0
    bne         x3, x7, FL0
    j           L165
L165: # Test 16-4: andi
    andi        x20, x22, 0x372
    lui         x16, 0x0
    addi        x16, x16, 0x0
    bne         x20, x16, FL0
    j           L166
L166: # Test 16-5: andi
    andi        x28, x13, 0xFFFFFF69
    lui         x1, 0x0
    addi        x1, x1, 0x1
    bne         x28, x1, FL0
    j           L167
L167: # Test 16-6: andi
    andi        x14, x28, 0xFFFFFD98
    lui         x24, 0x0
    addi        x24, x24, 0x0
    bne         x14, x24, FL0
    j           L168
L168: # Test 16-7: andi
    andi        x10, x13, 0xFFFFFE16
    lui         x27, 0x0
    addi        x27, x27, 0x0
    bne         x10, x27, FL0
    j           L169
L169: # Test 16-8: andi
    andi        x14, x16, 0x1D6
    lui         x18, 0x0
    addi        x18, x18, 0x0
    bne         x14, x18, FL0
    j           L170
L170: # Test 16-9: andi
    andi        x11, x22, 0x19C
    lui         x13, 0x0
    addi        x13, x13, 0x0
    bne         x11, x13, FL0
    j           L171
L171: # Test 17-0: ori
    ori         x9, x8, 0xFFFFFBF8
    lui         x13, 0x0
    addi        x13, x13, 0xFFFFFBF9
    bne         x9, x13, FL0
    j           L172
L172: # Test 17-1: ori
    ori         x0, x22, 0x691
    lui         x14, 0x0
    addi        x14, x14, 0x0
    bne         x0, x14, FL0
    j           L173
L173: # Test 17-2: ori
    ori         x18, x9, 0x54F
    lui         x17, 0x0
    addi        x17, x17, 0xFFFFFFFF
    bne         x18, x17, FL0
    j           L174
L174: # Test 17-3: ori
    ori         x24, x5, 0x2A8
    lui         x1, 0x0
    addi        x1, x1, 0x2A9
    bne         x24, x1, FL0
    j           L175
L175: # Test 17-4: ori
    ori         x17, x23, 0x548
    lui         x9, 0x0
    addi        x9, x9, 0x549
    bne         x17, x9, FL0
    j           L176
L176: # Test 17-5: ori
    ori         x8, x29, 0x4C0
    lui         x18, 0x0
    addi        x18, x18, 0x4C1
    bne         x8, x18, FL0
    j           L177
L177: # Test 17-6: ori
    ori         x30, x3, 0x2E2
    lui         x1, 0x0
    addi        x1, x1, 0x2E2
    bne         x30, x1, FL0
    j           L178
L178: # Test 17-7: ori
    ori         x12, x7, 0x3FD
    lui         x1, 0x0
    addi        x1, x1, 0x3FD
    bne         x12, x1, FL0
    j           L179
L179: # Test 17-8: ori
    ori         x22, x16, 0x753
    lui         x31, 0x0
    addi        x31, x31, 0x753
    bne         x22, x31, FL0
    j           L180
L180: # Test 17-9: ori
    ori         x25, x8, 0xFFFFF978
    lui         x26, 0x0
    addi        x26, x26, 0xFFFFFDF9
    bne         x25, x26, FL0
    j           L181
FL0: # Fail label chain
    j           FL1
L181: # Test 18-0: xori
    xori        x11, x5, 0xFFFFF939
    lui         x3, 0x0
    addi        x3, x3, 0xFFFFF938
    bne         x11, x3, FL1
    j           L182
L182: # Test 18-1: xori
    xori        x26, x12, 0xFFFFF88A
    lui         x20, 0x0
    addi        x20, x20, 0xFFFFFB77
    bne         x26, x20, FL1
    j           L183
L183: # Test 18-2: xori
    xori        x7, x17, 0x35E
    lui         x6, 0x0
    addi        x6, x6, 0x617
    bne         x7, x6, FL1
    j           L184
L184: # Test 18-3: xori
    xori        x3, x31, 0x654
    lui         x20, 0x0
    addi        x20, x20, 0x107
    bne         x3, x20, FL1
    j           L185
L185: # Test 18-4: xori
    xori        x12, x24, 0x736
    lui         x31, 0x0
    addi        x31, x31, 0x59F
    bne         x12, x31, FL1
    j           L186
L186: # Test 18-5: xori
    xori        x4, x29, 0xFFFFFCFC
    lui         x9, 0x0
    addi        x9, x9, 0xFFFFFCFD
    bne         x4, x9, FL1
    j           L187
L187: # Test 18-6: xori
    xori        x16, x8, 0x38B
    lui         x22, 0x0
    addi        x22, x22, 0x74A
    bne         x16, x22, FL1
    j           L188
L188: # Test 18-7: xori
    xori        x22, x16, 0x30C
    lui         x20, 0x0
    addi        x20, x20, 0x446
    bne         x22, x20, FL1
    j           L189
L189: # Test 18-8: xori
    xori        x3, x28, 0x616
    lui         x27, 0x0
    addi        x27, x27, 0x617
    bne         x3, x27, FL1
    j           L190
L190: # Test 18-9: xori
    xori        x16, x14, 0xFFFFFB57
    lui         x28, 0x0
    addi        x28, x28, 0xFFFFFB57
    bne         x16, x28, FL1
    j           L191
L191: # Test 19-0: lui
    lui         x1, 0x9CB6F
    lui         x29, 0x9CB6F
    addi        x29, x29, 0x0
    bne         x1, x29, FL1
    j           L192
L192: # Test 19-1: lui
    lui         x23, 0xBD7CB
    lui         x12, 0xBD7CB
    addi        x12, x12, 0x0
    bne         x23, x12, FL1
    j           L193
L193: # Test 19-2: lui
    lui         x11, 0x8D4CD
    lui         x13, 0x8D4CD
    addi        x13, x13, 0x0
    bne         x11, x13, FL1
    j           L194
L194: # Test 19-3: lui
    lui         x24, 0x87047
    lui         x28, 0x87047
    addi        x28, x28, 0x0
    bne         x24, x28, FL1
    j           L195
L195: # Test 19-4: lui
    lui         x3, 0xAC61E
    lui         x30, 0xAC61E
    addi        x30, x30, 0x0
    bne         x3, x30, FL1
    j           L196
L196: # Test 19-5: lui
    lui         x31, 0x29D51
    lui         x8, 0x29D51
    addi        x8, x8, 0x0
    bne         x31, x8, FL1
    j           L197
L197: # Test 19-6: lui
    lui         x31, 0xCEE49
    lui         x7, 0xCEE49
    addi        x7, x7, 0x0
    bne         x31, x7, FL1
    j           L198
L198: # Test 19-7: lui
    lui         x13, 0x73931
    lui         x20, 0x73931
    addi        x20, x20, 0x0
    bne         x13, x20, FL1
    j           L199
L199: # Test 19-8: lui
    lui         x15, 0x5178A
    lui         x31, 0x5178A
    addi        x31, x31, 0x0
    bne         x15, x31, FL1
    j           L200
L200: # Test 19-9: lui
    lui         x28, 0x94087
    lui         x6, 0x94087
    addi        x6, x6, 0x0
    bne         x28, x6, FL1
    j           L201
L201: # Test 20-0: auipc
    auipc       x26, 0xDBE54
    lui         x17, 0xDC255
    addi        x17, x17, 0xA4
    bne         x26, x17, FL1
    j           L202
L202: # Test 20-1: auipc
    auipc       x11, 0x523E0
    lui         x2, 0x527E1
    addi        x2, x2, 0xB8
    bne         x11, x2, FL1
    j           L203
L203: # Test 20-2: auipc
    auipc       x0, 0xF99D8
    lui         x10, 0x0
    addi        x10, x10, 0x0
    bne         x0, x10, FL1
    j           L204
L204: # Test 20-3: auipc
    auipc       x3, 0x549D
    lui         x30, 0x589E
    addi        x30, x30, 0xE0
    bne         x3, x30, FL1
    j           L205
L205: # Test 20-4: auipc
    auipc       x19, 0x5F18F
    lui         x10, 0x5F590
    addi        x10, x10, 0xF4
    bne         x19, x10, FL1
    j           L206
L206: # Test 20-5: auipc
    auipc       x12, 0x9A711
    lui         x1, 0x9AB12
    addi        x1, x1, 0x108
    bne         x12, x1, FL1
    j           L207
L207: # Test 20-6: auipc
    auipc       x11, 0xCAA0E
    lui         x4, 0xCAE0F
    addi        x4, x4, 0x11C
    bne         x11, x4, FL1
    j           L208
L208: # Test 20-7: auipc
    auipc       x12, 0xC0E2C
    lui         x20, 0xC122D
    addi        x20, x20, 0x130
    bne         x12, x20, FL1
    j           L209
L209: # Test 20-8: auipc
    auipc       x24, 0xA0640
    lui         x15, 0xA0A41
    addi        x15, x15, 0x144
    bne         x24, x15, FL1
    j           L210
L210: # Test 20-9: auipc
    auipc       x0, 0xFF3B3
    lui         x1, 0x0
    addi        x1, x1, 0x0
    bne         x0, x1, FL1
    j           L211
L211: # Test 21-0: lb
    lui         x6, 0x10038
    addi        x6, x6, 0x7C2
    lb          x30, 0xF5(x6)
    lui         x22, 0x0
    addi        x22, x22, 0x0
    bne         x30, x22, FL1
    j           L212
L212: # Test 21-1: lb
    lui         x3, 0x1001A
    addi        x3, x3, 0xFFFFFF57
    lb          x12, 0x5E5(x3)
    lui         x29, 0x0
    addi        x29, x29, 0x0
    bne         x12, x29, FL1
    j           L213
L213: # Test 21-2: lb
    lui         x25, 0x10027
    addi        x25, x25, 0x28F
    lb          x5, 0xFFFFF896(x25)
    lui         x23, 0x0
    addi        x23, x23, 0x0
    bne         x5, x23, FL1
    j           L214
L214: # Test 21-3: lb
    lui         x7, 0x1003C
    addi        x7, x7, 0x7A7
    lb          x27, 0xFFFFF9DD(x7)
    lui         x26, 0x0
    addi        x26, x26, 0x0
    bne         x27, x26, FL1
    j           L215
L215: # Test 21-4: lb
    lui         x13, 0x1002F
    addi        x13, x13, 0xFFFFFF02
    lb          x25, 0xFFFFF9B9(x13)
    lui         x4, 0x0
    addi        x4, x4, 0x0
    bne         x25, x4, FL1
    j           L216
L216: # Test 21-5: lb
    lui         x8, 0x10014
    addi        x8, x8, 0x660
    lb          x22, 0xFFFFFD86(x8)
    lui         x7, 0x0
    addi        x7, x7, 0x0
    bne         x22, x7, FL1
    j           L217
L217: # Test 21-6: lb
    lui         x28, 0x10029
    addi        x28, x28, 0x654
    lb          x14, 0xFFFFFB86(x28)
    lui         x5, 0x0
    addi        x5, x5, 0x0
    bne         x14, x5, FL1
    j           L218
L218: # Test 21-7: lb
    lui         x2, 0x1002E
    addi        x2, x2, 0x57
    lb          x4, 0xFFFFF839(x2)
    lui         x18, 0x0
    addi        x18, x18, 0x0
    bne         x4, x18, FL1
    j           L219
L219: # Test 21-8: lb
    lui         x17, 0x1001C
    addi        x17, x17, 0xFFFFFDAD
    lb          x21, 0xFFFFFC04(x17)
    lui         x13, 0x0
    addi        x13, x13, 0x0
    bne         x21, x13, FL1
    j           L220
L220: # Test 21-9: lb
    lui         x1, 0x1001C
    addi        x1, x1, 0xFFFFFF7E
    lb          x20, 0xFFFFFFBB(x1)
    lui         x9, 0x0
    addi        x9, x9, 0x0
    bne         x20, x9, FL1
    j           L221
L221: # Test 22-0: lh
    lui         x29, 0x10037
    addi        x29, x29, 0x288
    lh          x13, 0xFFFFFAEA(x29)
    lui         x31, 0x0
    addi        x31, x31, 0x0
    bne         x13, x31, FL1
    j           L222
L222: # Test 22-1: lh
    lui         x9, 0x10030
    addi        x9, x9, 0x697
    lh          x25, 0x567(x9)
    lui         x19, 0x0
    addi        x19, x19, 0x0
    bne         x25, x19, FL1
    j           L223
L223: # Test 22-2: lh
    lui         x23, 0x1002A
    addi        x23, x23, 0x1C9
    lh          x29, 0x40D(x23)
    lui         x31, 0x0
    addi        x31, x31, 0x0
    bne         x29, x31, FL1
    j           L224
L224: # Test 22-3: lh
    lui         x31, 0x10037
    addi        x31, x31, 0x649
    lh          x8, 0xFFFFFF03(x31)
    lui         x1, 0x0
    addi        x1, x1, 0x0
    bne         x8, x1, FL1
    j           L225
L225: # Test 22-4: lh
    lui         x31, 0x1001C
    addi        x31, x31, 0xFFFFF841
    lh          x8, 0xFFFFFDD7(x31)
    lui         x6, 0x0
    addi        x6, x6, 0x0
    bne         x8, x6, FL1
    j           L226
L226: # Test 22-5: lh
    lui         x17, 0x10027
    addi        x17, x17, 0x7D7
    lh          x4, 0xFFFFFA3B(x17)
    lui         x11, 0x0
    addi        x11, x11, 0x0
    bne         x4, x11, FL1
    j           L227
L227: # Test 22-6: lh
    lui         x6, 0x1003B
    addi        x6, x6, 0xFFFFFBC6
    lh          x22, 0xFFFFFD52(x6)
    lui         x8, 0x0
    addi        x8, x8, 0x0
    bne         x22, x8, FL1
    j           L228
L228: # Test 22-7: lh
    lui         x5, 0x10038
    addi        x5, x5, 0xCA
    lh          x0, 0x3B8(x5)
    lui         x8, 0x0
    addi        x8, x8, 0x0
    bne         x0, x8, FL1
    j           L229
L229: # Test 22-8: lh
    lui         x7, 0x1002F
    addi        x7, x7, 0x5A4
    lh          x8, 0x126(x7)
    lui         x1, 0x0
    addi        x1, x1, 0x0
    bne         x8, x1, FL1
    j           L230
L230: # Test 22-9: lh
    lui         x22, 0x10029
    addi        x22, x22, 0xFFFFF9FA
    lh          x7, 0xFFFFFCC6(x22)
    lui         x9, 0x0
    addi        x9, x9, 0x0
    bne         x7, x9, FL1
    j           L231
L231: # Test 23-0: lw
    lui         x8, 0x1002C
    addi        x8, x8, 0xFFFFF9B4
    lw          x5, 0x4E8(x8)
    lui         x12, 0x0
    addi        x12, x12, 0x0
    bne         x5, x12, FL1
    j           L232
L232: # Test 23-1: lw
    lui         x16, 0x10017
    addi        x16, x16, 0xFFFFFA7B
    lw          x17, 0x48D(x16)
    lui         x5, 0x0
    addi        x5, x5, 0x0
    bne         x17, x5, FL1
    j           L233
L233: # Test 23-2: lw
    lui         x15, 0x1002A
    addi        x15, x15, 0xFFFFF957
    lw          x6, 0xFFFFFB49(x15)
    lui         x2, 0x0
    addi        x2, x2, 0x0
    bne         x6, x2, FL1
    j           L234
L234: # Test 23-3: lw
    lui         x23, 0x10017
    addi        x23, x23, 0x2F9
    lw          x22, 0x5A3(x23)
    lui         x20, 0x0
    addi        x20, x20, 0x0
    bne         x22, x20, FL1
    j           L235
L235: # Test 23-4: lw
    lui         x27, 0x1002E
    addi        x27, x27, 0x7C2
    lw          x26, 0xFFFFF842(x27)
    lui         x11, 0x0
    addi        x11, x11, 0x0
    bne         x26, x11, FL1
    j           L236
L236: # Test 23-5: lw
    lui         x29, 0x10014
    addi        x29, x29, 0x326
    lw          x24, 0x39A(x29)
    lui         x3, 0x0
    addi        x3, x3, 0x0
    bne         x24, x3, FL1
    j           L237
L237: # Test 23-6: lw
    lui         x3, 0x10036
    addi        x3, x3, 0x78E
    lw          x17, 0x2E6(x3)
    lui         x7, 0x0
    addi        x7, x7, 0x0
    bne         x17, x7, FL1
    j           L238
L238: # Test 23-7: lw
    lui         x20, 0x10011
    addi        x20, x20, 0xFFFFFD4A
    lw          x20, 0x776(x20)
    lui         x1, 0x0
    addi        x1, x1, 0x0
    bne         x20, x1, FL1
    j           L239
L239: # Test 23-8: lw
    lui         x18, 0x10039
    addi        x18, x18, 0xFFFFF94D
    lw          x12, 0xFFFFFC7B(x18)
    lui         x19, 0x0
    addi        x19, x19, 0x0
    bne         x12, x19, FL1
    j           L240
L240: # Test 23-9: lw
    lui         x29, 0x10022
    addi        x29, x29, 0xDD
    lw          x3, 0xFFFFF8E3(x29)
    lui         x5, 0x0
    addi        x5, x5, 0x0
    bne         x3, x5, FL1
    j           L241
L241: # Test 24-0: lbu
    lui         x31, 0x1001A
    addi        x31, x31, 0x3D4
    lbu         x14, 0x77D(x31)
    lui         x5, 0x0
    addi        x5, x5, 0x0
    bne         x14, x5, FL1
    j           L242
L242: # Test 24-1: lbu
    lui         x6, 0x1003C
    addi        x6, x6, 0xFFFFFE14
    lbu         x29, 0xFFFFF870(x6)
    lui         x27, 0x0
    addi        x27, x27, 0x0
    bne         x29, x27, FL1
    j           L243
L243: # Test 24-2: lbu
    lui         x3, 0x1001F
    addi        x3, x3, 0xFFFFFB8E
    lbu         x22, 0x1E0(x3)
    lui         x19, 0x0
    addi        x19, x19, 0x0
    bne         x22, x19, FL1
    j           L244
L244: # Test 24-3: lbu
    lui         x2, 0x10032
    addi        x2, x2, 0x786
    lbu         x22, 0x42D(x2)
    lui         x23, 0x0
    addi        x23, x23, 0x0
    bne         x22, x23, FL1
    j           L245
L245: # Test 24-4: lbu
    lui         x27, 0x10027
    addi        x27, x27, 0x744
    lbu         x26, 0x8B(x27)
    lui         x2, 0x0
    addi        x2, x2, 0x0
    bne         x26, x2, FL1
    j           L246
L246: # Test 24-5: lbu
    lui         x27, 0x1001F
    addi        x27, x27, 0xFFFFFA88
    lbu         x19, 0xFFFFFD33(x27)
    lui         x23, 0x0
    addi        x23, x23, 0x0
    bne         x19, x23, FL1
    j           L247
L247: # Test 24-6: lbu
    lui         x30, 0x10033
    addi        x30, x30, 0x429
    lbu         x30, 0x4C0(x30)
    lui         x20, 0x0
    addi        x20, x20, 0x0
    bne         x30, x20, FL1
    j           L248
L248: # Test 24-7: lbu
    lui         x13, 0x10034
    addi        x13, x13, 0x588
    lbu         x23, 0x191(x13)
    lui         x25, 0x0
    addi        x25, x25, 0x0
    bne         x23, x25, FL1
    j           L249
L249: # Test 24-8: lbu
    lui         x25, 0x10017
    addi        x25, x25, 0xFFFFFB79
    lbu         x1, 0xFFFFFF2B(x25)
    lui         x10, 0x0
    addi        x10, x10, 0x0
    bne         x1, x10, FL1
    j           L250
L250: # Test 24-9: lbu
    lui         x7, 0x10014
    addi        x7, x7, 0xFFFFFD14
    lbu         x14, 0xFFFFFF6C(x7)
    lui         x16, 0x0
    addi        x16, x16, 0x0
    bne         x14, x16, FL1
    j           L251
L251: # Test 25-0: lhu
    lui         x5, 0x1003D
    addi        x5, x5, 0x369
    lhu         x2, 0xFFFFFD2D(x5)
    lui         x27, 0x0
    addi        x27, x27, 0x0
    bne         x2, x27, FL1
    j           L252
L252: # Test 25-1: lhu
    lui         x18, 0x10016
    addi        x18, x18, 0x72F
    lhu         x2, 0xC7(x18)
    lui         x22, 0x0
    addi        x22, x22, 0x0
    bne         x2, x22, FL1
    j           L253
L253: # Test 25-2: lhu
    lui         x19, 0x10037
    addi        x19, x19, 0xEE
    lhu         x21, 0x1F4(x19)
    lui         x6, 0x0
    addi        x6, x6, 0x0
    bne         x21, x6, FL1
    j           L254
L254: # Test 25-3: lhu
    lui         x1, 0x1001E
    addi        x1, x1, 0x46B
    lhu         x16, 0x2A1(x1)
    lui         x25, 0x0
    addi        x25, x25, 0x0
    bne         x16, x25, FL1
    j           L255
L255: # Test 25-4: lhu
    lui         x4, 0x10013
    addi        x4, x4, 0xFFFFF84A
    lhu         x4, 0x356(x4)
    lui         x31, 0x0
    addi        x31, x31, 0x0
    bne         x4, x31, FL1
    j           L256
L256: # Test 25-5: lhu
    lui         x9, 0x1003B
    addi        x9, x9, 0x49F
    lhu         x18, 0x47(x9)
    lui         x9, 0x0
    addi        x9, x9, 0x0
    bne         x18, x9, FL1
    j           L257
L257: # Test 25-6: lhu
    lui         x1, 0x1003C
    addi        x1, x1, 0xFFFFF97F
    lhu         x23, 0x6D3(x1)
    lui         x26, 0x0
    addi        x26, x26, 0x0
    bne         x23, x26, FL1
    j           L258
L258: # Test 25-7: lhu
    lui         x27, 0x1003C
    addi        x27, x27, 0x10C
    lhu         x18, 0x218(x27)
    lui         x13, 0x0
    addi        x13, x13, 0x0
    bne         x18, x13, FL1
    j           L259
L259: # Test 25-8: lhu
    lui         x13, 0x1001A
    addi        x13, x13, 0xFFFFFC46
    lhu         x0, 0xFFFFF844(x13)
    lui         x22, 0x0
    addi        x22, x22, 0x0
    bne         x0, x22, FL1
    j           L260
L260: # Test 25-9: lhu
    lui         x19, 0x10023
    addi        x19, x19, 0x7DB
    lhu         x31, 0x67B(x19)
    lui         x19, 0x0
    addi        x19, x19, 0x0
    bne         x31, x19, FL1
    j           L261
L261: # Test 26-0: sb
    lui         x21, 0x10011
    addi        x21, x21, 0xFFFFFCE8
    sb          x0, 0x1C6(x21)
    lui         x18, 0x10011
    addi        x18, x18, 0x36D
    lbu         x26, 0xFFFFFB3F(x18)
    lui         x28, 0x0
    addi        x28, x28, 0x0
    bne         x26, x28, FL1
    lui         x8, 0x10011
    addi        x8, x8, 0xFFFFF916
    lbu         x4, 0x596(x8)
    lui         x22, 0x0
    addi        x22, x22, 0x0
    bne         x4, x22, FL1
    lui         x5, 0x10011
    addi        x5, x5, 0xFFFFFF7B
    lbu         x26, 0xFFFFFF31(x5)
    lui         x10, 0x0
    addi        x10, x10, 0x0
    bne         x26, x10, FL1
    lui         x19, 0x10011
    addi        x19, x19, 0xFFFFF87E
    lbu         x23, 0x62E(x19)
    lui         x22, 0x0
    addi        x22, x22, 0x0
    bne         x23, x22, FL1
    j           L262
L262: # Test 26-1: sb
    lui         x25, 0x10035
    addi        x25, x25, 0xFFFFF9AD
    sb          x29, 0x12A(x25)
    lui         x28, 0x10034
    addi        x28, x28, 0x611
    lbu         x31, 0x4C3(x28)
    lui         x16, 0x0
    addi        x16, x16, 0x0
    bne         x31, x16, FL1
    lui         x3, 0x10034
    addi        x3, x3, 0x5F4
    lbu         x30, 0x4E0(x3)
    lui         x9, 0x0
    addi        x9, x9, 0x0
    bne         x30, x9, FL1
    lui         x5, 0x10035
    addi        x5, x5, 0xFFFFF94A
    lbu         x23, 0x18A(x5)
    lui         x22, 0x0
    addi        x22, x22, 0x0
    bne         x23, x22, FL1
    lui         x8, 0x10035
    addi        x8, x8, 0xFFFFFCF3
    lbu         x27, 0xFFFFFDE1(x8)
    lui         x15, 0x0
    addi        x15, x15, 0x0
    bne         x27, x15, FL1
    j           L263
L263: # Test 26-2: sb
    lui         x12, 0x10021
    addi        x12, x12, 0xFFFFF94A
    sb          x24, 0xFFFFFB6D(x12)
    lui         x26, 0x10020
    addi        x26, x26, 0x4D2
    lbu         x20, 0xFFFFFFE2(x26)
    lui         x30, 0x0
    addi        x30, x30, 0x0
    bne         x20, x30, FL1
    lui         x20, 0x10020
    addi        x20, x20, 0x7CF
    lbu         x30, 0xFFFFFCE5(x20)
    lui         x6, 0x0
    addi        x6, x6, 0x0
    bne         x30, x6, FL1
    lui         x13, 0x10020
    addi        x13, x13, 0x3FF
    lbu         x2, 0xB5(x13)
    lui         x22, 0x0
    addi        x22, x22, 0x0
    bne         x2, x22, FL1
    lui         x12, 0x10020
    addi        x12, x12, 0x7E2
    lbu         x4, 0xFFFFFCD2(x12)
    lui         x22, 0x0
    addi        x22, x22, 0x0
    bne         x4, x22, FL1
    j           L264
L264: # Test 26-3: sb
    lui         x18, 0x10016
    addi        x18, x18, 0x1E1
    sb          x6, 0x4AD(x18)
    lui         x20, 0x10016
    addi        x20, x20, 0x685
    lbu         x4, 0x7(x20)
    lui         x22, 0x0
    addi        x22, x22, 0x0
    bne         x4, x22, FL1
    lui         x29, 0x10017
    addi        x29, x29, 0xFFFFF9E2
    lbu         x15, 0xFFFFFCAA(x29)
    lui         x25, 0x0
    addi        x25, x25, 0x0
    bne         x15, x25, FL1
    lui         x24, 0x10016
    addi        x24, x24, 0x5D0
    lbu         x1, 0xBC(x24)
    lui         x15, 0x0
    addi        x15, x15, 0x0
    bne         x1, x15, FL1
    lui         x15, 0x10016
    addi        x15, x15, 0x74C
    lbu         x31, 0xFFFFFF40(x15)
    lui         x27, 0x0
    addi        x27, x27, 0x0
    bne         x31, x27, FL1
    j           L265
L265: # Test 26-4: sb
    lui         x20, 0x10023
    addi        x20, x20, 0xFFFFFB57
    sb          x22, 0xFFFFF9A7(x20)
    lui         x28, 0x10022
    addi        x28, x28, 0x4D6
    lbu         x9, 0x26(x28)
    lui         x25, 0x0
    addi        x25, x25, 0x0
    bne         x9, x25, FL1
    lui         x15, 0x10022
    addi        x15, x15, 0x414
    lbu         x22, 0xE8(x15)
    lui         x24, 0x0
    addi        x24, x24, 0x0
    bne         x22, x24, FL1
    lui         x21, 0x10023
    addi        x21, x21, 0xFFFFFA44
    lbu         x21, 0xFFFFFAB8(x21)
    lui         x22, 0x0
    addi        x22, x22, 0x0
    bne         x21, x22, FL1
    lui         x6, 0x10022
    addi        x6, x6, 0x195
    lbu         x6, 0x367(x6)
    lui         x23, 0x0
    addi        x23, x23, 0x0
    bne         x6, x23, FL1
    j           L266
L266: # Test 26-5: sb
    lui         x12, 0x1002A
    addi        x12, x12, 0x154
    sb          x13, 0xFFFFFD99(x12)
    lui         x21, 0x1002A
    addi        x21, x21, 0x529
    lbu         x28, 0xFFFFF9C3(x21)
    lui         x19, 0x0
    addi        x19, x19, 0x0
    bne         x28, x19, FL1
    lui         x15, 0x1002A
    addi        x15, x15, 0x53D
    lbu         x11, 0xFFFFF9AF(x15)
    lui         x22, 0x0
    addi        x22, x22, 0x0
    bne         x11, x22, FL1
    lui         x9, 0x1002A
    addi        x9, x9, 0x301
    lbu         x8, 0xFFFFFBEB(x9)
    lui         x27, 0x0
    addi        x27, x27, 0x0
    bne         x8, x27, FL1
    lui         x12, 0x1002A
    addi        x12, x12, 0x9C
    lbu         x1, 0xFFFFFE50(x12)
    lui         x5, 0x0
    addi        x5, x5, 0x0
    bne         x1, x5, FL1
    j           L267
L267: # Test 26-6: sb
    lui         x5, 0x10030
    addi        x5, x5, 0x5FF
    sb          x18, 0x673(x5)
    lui         x27, 0x10030
    addi        x27, x27, 0x7D4
    lbu         x20, 0x49C(x27)
    lui         x15, 0x0
    addi        x15, x15, 0x0
    bne         x20, x15, FL1
    lui         x22, 0x10031
    addi        x22, x22, 0x168
    lbu         x29, 0xFFFFFB08(x22)
    lui         x20, 0x0
    addi        x20, x20, 0x0
    bne         x29, x20, FL1
    lui         x10, 0x10031
    addi        x10, x10, 0xFFFFFC6D
    lbu         x11, 0x3(x10)
    lui         x9, 0x0
    addi        x9, x9, 0x0
    bne         x11, x9, FL1
    lui         x25, 0x10031
    addi        x25, x25, 0xFFFFFD4C
    lbu         x30, 0xFFFFFF24(x25)
    lui         x18, 0x0
    addi        x18, x18, 0x0
    bne         x30, x18, FL1
    j           L268
L268: # Test 26-7: sb
    lui         x7, 0x10032
    addi        x7, x7, 0xFFFFFFC7
    sb          x1, 0xFFFFFA82(x7)
    lui         x29, 0x10032
    addi        x29, x29, 0xFFFFFF84
    lbu         x26, 0xFFFFFAC4(x29)
    lui         x6, 0x0
    addi        x6, x6, 0x0
    bne         x26, x6, FL1
    lui         x3, 0x10032
    addi        x3, x3, 0xFFFFF846
    lbu         x19, 0x202(x3)
    lui         x25, 0x0
    addi        x25, x25, 0x0
    bne         x19, x25, FL1
    lui         x6, 0x10031
    addi        x6, x6, 0x628
    lbu         x19, 0x420(x6)
    lui         x16, 0x0
    addi        x16, x16, 0x0
    bne         x19, x16, FL1
    lui         x29, 0x10031
    addi        x29, x29, 0x43A
    lbu         x27, 0x60E(x29)
    lui         x13, 0x0
    addi        x13, x13, 0x0
    bne         x27, x13, FL1
    j           L269
L269: # Test 26-8: sb
    lui         x4, 0x10036
    addi        x4, x4, 0x2B5
    sb          x25, 0xFFFFFA3D(x4)
    lui         x23, 0x10036
    addi        x23, x23, 0xFFFFFFD6
    lbu         x19, 0xFFFFFD1A(x23)
    lui         x6, 0x0
    addi        x6, x6, 0x0
    bne         x19, x6, FL1
    lui         x9, 0x10036
    addi        x9, x9, 0xFC
    lbu         x31, 0xFFFFFBF4(x9)
    lui         x5, 0x0
    addi        x5, x5, 0x0
    bne         x31, x5, FL1
    lui         x14, 0x10035
    addi        x14, x14, 0x647
    lbu         x7, 0x6A9(x14)
    lui         x25, 0x0
    addi        x25, x25, 0x0
    bne         x7, x25, FL1
    lui         x31, 0x10036
    addi        x31, x31, 0xFFFFFFB3
    lbu         x20, 0xFFFFFD3D(x31)
    lui         x24, 0x0
    addi        x24, x24, 0x0
    bne         x20, x24, FL1
    j           L270
L270: # Test 26-9: sb
    lui         x10, 0x10018
    addi        x10, x10, 0x45C
    sb          x6, 0xFFFFF89E(x10)
    lui         x12, 0x10018
    addi        x12, x12, 0xFFFFFBEE
    lbu         x21, 0x10A(x12)
    lui         x26, 0x0
    addi        x26, x26, 0x0
    bne         x21, x26, FL1
    lui         x28, 0x10018
    addi        x28, x28, 0xFFFFFB2C
    lbu         x5, 0x1CC(x28)
    lui         x14, 0x0
    addi        x14, x14, 0x0
    bne         x5, x14, FL1
    lui         x27, 0x10018
    addi        x27, x27, 0xFFFFFE03
    lbu         x30, 0xFFFFFEF5(x27)
    lui         x11, 0x0
    addi        x11, x11, 0x0
    bne         x30, x11, FL1
    lui         x8, 0x10017
    addi        x8, x8, 0x708
    lbu         x28, 0x5F0(x8)
    lui         x29, 0x0
    addi        x29, x29, 0x0
    bne         x28, x29, FL1
    j           L271
L271: # Test 27-0: sh
    lui         x12, 0x10015
    addi        x12, x12, 0xFFFFFA13
    sh          x24, 0x33D(x12)
    lui         x18, 0x10015
    addi        x18, x18, 0x178
    lbu         x1, 0xFFFFFBD8(x18)
    lui         x2, 0x0
    addi        x2, x2, 0x0
    bne         x1, x2, FL1
    lui         x29, 0x10015
    addi        x29, x29, 0x438
    lbu         x16, 0xFFFFF918(x29)
    lui         x23, 0x0
    addi        x23, x23, 0x0
    bne         x16, x23, FL1
    lui         x8, 0x10015
    addi        x8, x8, 0x4BE
    lbu         x14, 0xFFFFF892(x8)
    lui         x26, 0x0
    addi        x26, x26, 0x0
    bne         x14, x26, FL1
    lui         x2, 0x10015
    addi        x2, x2, 0x29
    lbu         x24, 0xFFFFFD27(x2)
    lui         x15, 0x0
    addi        x15, x15, 0x0
    bne         x24, x15, FL1
    j           L272
L272: # Test 27-1: sh
    lui         x9, 0x10034
    addi        x9, x9, 0x4F0
    sh          x23, 0x696(x9)
    lui         x11, 0x10035
    addi        x11, x11, 0xFFFFF801
    lbu         x3, 0x383(x11)
    lui         x28, 0x0
    addi        x28, x28, 0x0
    bne         x3, x28, FL1
    lui         x14, 0x10034
    addi        x14, x14, 0x494
    lbu         x19, 0x6F0(x14)
    lui         x12, 0x0
    addi        x12, x12, 0x0
    bne         x19, x12, FL1
    lui         x22, 0x10035
    addi        x22, x22, 0xFFFFFB4F
    lbu         x10, 0x35(x22)
    lui         x25, 0x0
    addi        x25, x25, 0x0
    bne         x10, x25, FL1
    lui         x31, 0x10035
    addi        x31, x31, 0xFFFFFBAE
    lbu         x8, 0xFFFFFFD6(x31)
    lui         x28, 0x0
    addi        x28, x28, 0x0
    bne         x8, x28, FL1
    j           L273
L273: # Test 27-2: sh
    lui         x10, 0x1001C
    addi        x10, x10, 0xFFFFFC20
    sh          x4, 0x4EC(x10)
    lui         x14, 0x1001C
    addi        x14, x14, 0x70F
    lbu         x24, 0xFFFFF9FD(x14)
    lui         x27, 0x0
    addi        x27, x27, 0xB5
    bne         x24, x27, FL1
    lui         x30, 0x1001C
    addi        x30, x30, 0xBE
    lbu         x27, 0x4E(x30)
    lui         x7, 0x0
    addi        x7, x7, 0xB5
    bne         x27, x7, FL1
    lui         x11, 0x1001C
    addi        x11, x11, 0x67F
    lbu         x28, 0xFFFFFA8D(x11)
    lui         x26, 0x0
    addi        x26, x26, 0xB5
    bne         x28, x26, FL1
    lui         x1, 0x1001C
    addi        x1, x1, 0x58F
    lbu         x30, 0xFFFFFB7D(x1)
    lui         x6, 0x0
    addi        x6, x6, 0xB5
    bne         x30, x6, FL1
    j           L274
L274: # Test 27-3: sh
    lui         x6, 0x1003B
    addi        x6, x6, 0x7F5
    sh          x0, 0x2C9(x6)
    lui         x26, 0x1003C
    addi        x26, x26, 0xFFFFFB74
    lbu         x16, 0xFFFFFF48(x26)
    lui         x21, 0x0
    addi        x21, x21, 0x0
    bne         x16, x21, FL1
    lui         x8, 0x1003C
    addi        x8, x8, 0x1A3
    lbu         x23, 0xFFFFF919(x8)
    lui         x12, 0x0
    addi        x12, x12, 0x0
    bne         x23, x12, FL1
    lui         x26, 0x1003B
    addi        x26, x26, 0x71A
    lbu         x4, 0x3A2(x26)
    lui         x20, 0x0
    addi        x20, x20, 0x0
    bne         x4, x20, FL1
    lui         x30, 0x1003C
    addi        x30, x30, 0xFFFFFDAC
    lbu         x9, 0xFFFFFD10(x30)
    lui         x10, 0x0
    addi        x10, x10, 0x0
    bne         x9, x10, FL1
    j           L275
L275: # Test 27-4: sh
    lui         x27, 0x1001E
    addi        x27, x27, 0xFFFFFC12
    sh          x29, 0x3C(x27)
    lui         x21, 0x1001E
    addi        x21, x21, 0xFFFFFE76
    lbu         x27, 0xFFFFFDD6(x21)
    lui         x6, 0x0
    addi        x6, x6, 0x0
    bne         x27, x6, FL1
    lui         x30, 0x1001E
    addi        x30, x30, 0x231
    lbu         x18, 0xFFFFFA1B(x30)
    lui         x17, 0x0
    addi        x17, x17, 0x0
    bne         x18, x17, FL1
    lui         x25, 0x1001E
    addi        x25, x25, 0xFFFFFEB3
    lbu         x15, 0xFFFFFD99(x25)
    lui         x22, 0x0
    addi        x22, x22, 0x0
    bne         x15, x22, FL1
    lui         x13, 0x1001E
    addi        x13, x13, 0x153
    lbu         x15, 0xFFFFFAF9(x13)
    lui         x16, 0x0
    addi        x16, x16, 0x0
    bne         x15, x16, FL1
    j           L276
L276: # Test 27-5: sh
    lui         x13, 0x10012
    addi        x13, x13, 0x2A1
    sh          x29, 0x73F(x13)
    lui         x15, 0x10012
    addi        x15, x15, 0x71E
    lbu         x5, 0x2C2(x15)
    lui         x27, 0x0
    addi        x27, x27, 0x38
    bne         x5, x27, FL1
    lui         x9, 0x10013
    addi        x9, x9, 0xFFFFF9EE
    lbu         x24, 0xFFFFFFF2(x9)
    lui         x20, 0x0
    addi        x20, x20, 0x38
    bne         x24, x20, FL1
    lui         x6, 0x10012
    addi        x6, x6, 0x667
    lbu         x12, 0x379(x6)
    lui         x17, 0x0
    addi        x17, x17, 0x38
    bne         x12, x17, FL1
    lui         x9, 0x10012
    addi        x9, x9, 0x1F4
    lbu         x20, 0x7EC(x9)
    lui         x22, 0x0
    addi        x22, x22, 0x38
    bne         x20, x22, FL1
    j           L277
L277: # Test 27-6: sh
    lui         x30, 0x10012
    addi        x30, x30, 0xFFFFFC3F
    sh          x20, 0x4C9(x30)
    lui         x22, 0x10012
    addi        x22, x22, 0x4E7
    lbu         x21, 0xFFFFFC21(x22)
    lui         x17, 0x0
    addi        x17, x17, 0x38
    bne         x21, x17, FL1
    lui         x26, 0x10012
    addi        x26, x26, 0x5A5
    lbu         x5, 0xFFFFFB63(x26)
    lui         x2, 0x0
    addi        x2, x2, 0x38
    bne         x5, x2, FL1
    lui         x25, 0x10012
    addi        x25, x25, 0xFFFFFA1A
    lbu         x10, 0x6EE(x25)
    lui         x6, 0x0
    addi        x6, x6, 0x38
    bne         x10, x6, FL1
    lui         x3, 0x10012
    addi        x3, x3, 0xFFFFFDFA
    lbu         x5, 0x30E(x3)
    lui         x17, 0x0
    addi        x17, x17, 0x38
    bne         x5, x17, FL1
    j           L278
FL1: # Fail label chain
    j           fail
L278: # Test 27-7: sh
    lui         x24, 0x10030
    addi        x24, x24, 0x582
    sh          x13, 0x434(x24)
    lui         x22, 0x10030
    addi        x22, x22, 0x533
    lbu         x8, 0x481(x22)
    lui         x14, 0x0
    addi        x14, x14, 0x0
    bne         x8, x14, fail
    lui         x24, 0x10031
    addi        x24, x24, 0xFFFFF8D9
    lbu         x21, 0xDB(x24)
    lui         x2, 0x0
    addi        x2, x2, 0x0
    bne         x21, x2, fail
    lui         x16, 0x10031
    addi        x16, x16, 0xFFFFF930
    lbu         x1, 0x84(x16)
    lui         x23, 0x0
    addi        x23, x23, 0x0
    bne         x1, x23, fail
    lui         x13, 0x10030
    addi        x13, x13, 0x315
    lbu         x9, 0x69F(x13)
    lui         x20, 0x0
    addi        x20, x20, 0x0
    bne         x9, x20, fail
    j           L279
L279: # Test 27-8: sh
    lui         x31, 0x1001C
    addi        x31, x31, 0x7A
    sh          x29, 0x2E6(x31)
    lui         x22, 0x1001D
    addi        x22, x22, 0xFFFFFA4B
    lbu         x5, 0xFFFFF915(x22)
    lui         x9, 0x0
    addi        x9, x9, 0x38
    bne         x5, x9, fail
    lui         x30, 0x1001C
    addi        x30, x30, 0x1E1
    lbu         x7, 0x17F(x30)
    lui         x22, 0x0
    addi        x22, x22, 0x38
    bne         x7, x22, fail
    lui         x16, 0x1001D
    addi        x16, x16, 0xFFFFF8A1
    lbu         x4, 0xFFFFFABF(x16)
    lui         x23, 0x0
    addi        x23, x23, 0x38
    bne         x4, x23, fail
    lui         x21, 0x1001D
    addi        x21, x21, 0xFFFFFA31
    lbu         x14, 0xFFFFF92F(x21)
    lui         x17, 0x0
    addi        x17, x17, 0x38
    bne         x14, x17, fail
    j           L280
L280: # Test 27-9: sh
    lui         x10, 0x1002B
    addi        x10, x10, 0xFFFFFEB9
    sh          x17, 0x36B(x10)
    lui         x31, 0x1002B
    addi        x31, x31, 0x5F7
    lbu         x14, 0xFFFFFC2D(x31)
    lui         x8, 0x0
    addi        x8, x8, 0x38
    bne         x14, x8, fail
    lui         x28, 0x1002B
    addi        x28, x28, 0x2F7
    lbu         x23, 0xFFFFFF2D(x28)
    lui         x8, 0x0
    addi        x8, x8, 0x38
    bne         x23, x8, fail
    lui         x2, 0x1002B
    addi        x2, x2, 0x37E
    lbu         x27, 0xFFFFFEA6(x2)
    lui         x20, 0x0
    addi        x20, x20, 0x38
    bne         x27, x20, fail
    lui         x6, 0x1002B
    addi        x6, x6, 0x72E
    lbu         x2, 0xFFFFFAF6(x6)
    lui         x26, 0x0
    addi        x26, x26, 0x38
    bne         x2, x26, fail
    j           L281
L281: # Test 28-0: sw
    lui         x2, 0x1003B
    addi        x2, x2, 0xFFFFFB64
    sw          x31, 0xFFFFFF88(x2)
    lui         x24, 0x1003B
    addi        x24, x24, 0x2F
    lbu         x25, 0xFFFFFABD(x24)
    lui         x26, 0x0
    addi        x26, x26, 0xF7
    bne         x25, x26, fail
    lui         x4, 0x1003A
    addi        x4, x4, 0x7B2
    lbu         x3, 0x33A(x4)
    lui         x25, 0x0
    addi        x25, x25, 0xF7
    bne         x3, x25, fail
    lui         x2, 0x1003B
    addi        x2, x2, 0xFFFFFF6A
    lbu         x17, 0xFFFFFB82(x2)
    lui         x13, 0x0
    addi        x13, x13, 0xF7
    bne         x17, x13, fail
    lui         x3, 0x1003B
    addi        x3, x3, 0x2CD
    lbu         x19, 0xFFFFF81F(x3)
    lui         x1, 0x0
    addi        x1, x1, 0xF7
    bne         x19, x1, fail
    j           L282
L282: # Test 28-1: sw
    lui         x30, 0x10030
    addi        x30, x30, 0xFFFFF9C7
    sw          x1, 0xFFFFFE1D(x30)
    lui         x29, 0x1002F
    addi        x29, x29, 0x25D
    lbu         x26, 0x587(x29)
    lui         x15, 0x0
    addi        x15, x15, 0xF7
    bne         x26, x15, fail
    lui         x16, 0x1002F
    addi        x16, x16, 0xFFFFFFED
    lbu         x3, 0x7F7(x16)
    lui         x7, 0x0
    addi        x7, x7, 0xF7
    bne         x3, x7, fail
    lui         x1, 0x1002F
    addi        x1, x1, 0x449
    lbu         x17, 0x39B(x1)
    lui         x10, 0x0
    addi        x10, x10, 0xF7
    bne         x17, x10, fail
    lui         x3, 0x10030
    addi        x3, x3, 0xFFFFFF46
    lbu         x27, 0xFFFFF89E(x3)
    lui         x29, 0x0
    addi        x29, x29, 0xF7
    bne         x27, x29, fail
    j           L283
L283: # Test 28-2: sw
    lui         x31, 0x10028
    addi        x31, x31, 0xFFFFFC2B
    sw          x6, 0x209(x31)
    lui         x2, 0x10028
    addi        x2, x2, 0x610
    lbu         x27, 0xFFFFF824(x2)
    lui         x15, 0x0
    addi        x15, x15, 0x2E
    bne         x27, x15, fail
    lui         x18, 0x10028
    addi        x18, x18, 0x630
    lbu         x21, 0xFFFFF804(x18)
    lui         x30, 0x0
    addi        x30, x30, 0x2E
    bne         x21, x30, fail
    lui         x19, 0x10028
    addi        x19, x19, 0xFFFFFC85
    lbu         x30, 0x1AF(x19)
    lui         x19, 0x0
    addi        x19, x19, 0x2E
    bne         x30, x19, fail
    lui         x2, 0x10028
    addi        x2, x2, 0x9C
    lbu         x31, 0xFFFFFD98(x2)
    lui         x25, 0x0
    addi        x25, x25, 0x2E
    bne         x31, x25, fail
    j           L284
L284: # Test 28-3: sw
    lui         x13, 0x10026
    addi        x13, x13, 0xFFFFFA52
    sw          x18, 0x54A(x13)
    lui         x6, 0x10026
    addi        x6, x6, 0xFFFFFCF8
    lbu         x22, 0x2A4(x6)
    lui         x27, 0x0
    addi        x27, x27, 0x30
    bne         x22, x27, fail
    lui         x9, 0x10025
    addi        x9, x9, 0x7FF
    lbu         x15, 0x79D(x9)
    lui         x6, 0x0
    addi        x6, x6, 0x30
    bne         x15, x6, fail
    lui         x21, 0x10026
    addi        x21, x21, 0x5D
    lbu         x25, 0xFFFFFF3F(x21)
    lui         x7, 0x0
    addi        x7, x7, 0x30
    bne         x25, x7, fail
    lui         x12, 0x10026
    addi        x12, x12, 0x573
    lbu         x30, 0xFFFFFA29(x12)
    lui         x6, 0x0
    addi        x6, x6, 0x30
    bne         x30, x6, fail
    j           L285
L285: # Test 28-4: sw
    lui         x12, 0x10033
    addi        x12, x12, 0xFFFFF888
    sw          x28, 0xFFFFFEA0(x12)
    lui         x31, 0x10033
    addi        x31, x31, 0xFFFFFE43
    lbu         x0, 0xFFFFF8E5(x31)
    lui         x11, 0x0
    addi        x11, x11, 0x0
    bne         x0, x11, fail
    lui         x18, 0x10032
    addi        x18, x18, 0x499
    lbu         x6, 0x28F(x18)
    lui         x12, 0x0
    addi        x12, x12, 0xF7
    bne         x6, x12, fail
    lui         x17, 0x10032
    addi        x17, x17, 0x727
    lbu         x23, 0x1(x17)
    lui         x10, 0x0
    addi        x10, x10, 0xF7
    bne         x23, x10, fail
    lui         x18, 0x10033
    addi        x18, x18, 0xFFFFFBEB
    lbu         x0, 0xFFFFFB3D(x18)
    lui         x7, 0x0
    addi        x7, x7, 0x0
    bne         x0, x7, fail
    j           L286
L286: # Test 28-5: sw
    lui         x1, 0x10013
    addi        x1, x1, 0xFFFFFF14
    sw          x24, 0xFFFFF984(x1)
    lui         x12, 0x10012
    addi        x12, x12, 0x723
    lbu         x21, 0x175(x12)
    lui         x5, 0x0
    addi        x5, x5, 0x2F
    bne         x21, x5, fail
    lui         x2, 0x10013
    addi        x2, x2, 0xFFFFFFE8
    lbu         x8, 0xFFFFF8B0(x2)
    lui         x18, 0x0
    addi        x18, x18, 0x2F
    bne         x8, x18, fail
    lui         x27, 0x10012
    addi        x27, x27, 0xF3
    lbu         x20, 0x7A5(x27)
    lui         x7, 0x0
    addi        x7, x7, 0x2F
    bne         x20, x7, fail
    lui         x8, 0x10013
    addi        x8, x8, 0xFFFFFD53
    lbu         x24, 0xFFFFFB45(x8)
    lui         x13, 0x0
    addi        x13, x13, 0x2F
    bne         x24, x13, fail
    j           L287
L287: # Test 28-6: sw
    lui         x18, 0x1001C
    addi        x18, x18, 0xFFFFFA2D
    sw          x15, 0xFFFFFD27(x18)
    lui         x23, 0x1001B
    addi        x23, x23, 0x5D0
    lbu         x16, 0x184(x23)
    lui         x19, 0x0
    addi        x19, x19, 0x30
    bne         x16, x19, fail
    lui         x15, 0x1001B
    addi        x15, x15, 0x5CE
    lbu         x30, 0x186(x15)
    lui         x3, 0x0
    addi        x3, x3, 0x30
    bne         x30, x3, fail
    lui         x6, 0x1001C
    addi        x6, x6, 0xFFFFFF4B
    lbu         x31, 0xFFFFF809(x6)
    lui         x27, 0x0
    addi        x27, x27, 0x30
    bne         x31, x27, fail
    lui         x4, 0x1001C
    addi        x4, x4, 0xFFFFFB49
    lbu         x4, 0xFFFFFC0B(x4)
    lui         x19, 0x0
    addi        x19, x19, 0x30
    bne         x4, x19, fail
    j           L288
L288: # Test 28-7: sw
    lui         x7, 0x10026
    addi        x7, x7, 0xFFFFFB90
    sw          x11, 0xFFFFFBE0(x7)
    lui         x3, 0x10026
    addi        x3, x3, 0xFFFFFD4F
    lbu         x24, 0xFFFFFA21(x3)
    lui         x7, 0x0
    addi        x7, x7, 0x0
    bne         x24, x7, fail
    lui         x5, 0x10026
    addi        x5, x5, 0xFFFFFC77
    lbu         x24, 0xFFFFFAF9(x5)
    lui         x12, 0x0
    addi        x12, x12, 0x0
    bne         x24, x12, fail
    lui         x30, 0x10025
    addi        x30, x30, 0x1E8
    lbu         x26, 0x588(x30)
    lui         x16, 0x0
    addi        x16, x16, 0x0
    bne         x26, x16, fail
    lui         x1, 0x10026
    addi        x1, x1, 0xFFFFFF46
    lbu         x25, 0xFFFFF82A(x1)
    lui         x5, 0x0
    addi        x5, x5, 0x0
    bne         x25, x5, fail
    j           L289
L289: # Test 28-8: sw
    lui         x7, 0x1001E
    addi        x7, x7, 0x20F
    sw          x6, 0xFFFFF849(x7)
    lui         x4, 0x1001D
    addi        x4, x4, 0x5EA
    lbu         x4, 0x46E(x4)
    lui         x17, 0x0
    addi        x17, x17, 0x4B
    bne         x4, x17, fail
    lui         x29, 0x1001E
    addi        x29, x29, 0xFFFFFE5A
    lbu         x11, 0xFFFFFBFE(x29)
    lui         x15, 0x0
    addi        x15, x15, 0x4B
    bne         x11, x15, fail
    lui         x22, 0x1001D
    addi        x22, x22, 0x5BF
    lbu         x31, 0x499(x22)
    lui         x12, 0x0
    addi        x12, x12, 0x4B
    bne         x31, x12, fail
    lui         x16, 0x1001D
    addi        x16, x16, 0x3B4
    lbu         x11, 0x6A4(x16)
    lui         x15, 0x0
    addi        x15, x15, 0x4B
    bne         x11, x15, fail
    j           L290
L290: # Test 28-9: sw
    lui         x28, 0x1002C
    addi        x28, x28, 0xFFFFFC68
    sw          x6, 0xFFFFF948(x28)
    lui         x27, 0x1002B
    addi        x27, x27, 0x4B8
    lbu         x25, 0xF8(x27)
    lui         x26, 0x0
    addi        x26, x26, 0x4B
    bne         x25, x26, fail
    lui         x5, 0x1002C
    addi        x5, x5, 0xFFFFFA3D
    lbu         x4, 0xFFFFFB73(x5)
    lui         x25, 0x0
    addi        x25, x25, 0x4B
    bne         x4, x25, fail
    lui         x9, 0x1002B
    addi        x9, x9, 0xFFFFFEB8
    lbu         x3, 0x6F8(x9)
    lui         x22, 0x0
    addi        x22, x22, 0x4B
    bne         x3, x22, fail
    lui         x21, 0x1002B
    addi        x21, x21, 0xFFFFFF81
    lbu         x2, 0x62F(x21)
    lui         x18, 0x0
    addi        x18, x18, 0x4B
    bne         x2, x18, fail
    j           L291
L291: # Test 29-0: jal
    jal         x7, L292
    j           fail
L292: # jal target
    lui         x13, 0x402
    addi        x13, x13, 0x40C
    bne         x7, x13, fail
    j           L293
L293: # Test 29-1: jal
    jal         x10, L294
    j           fail
L294: # jal target
    lui         x9, 0x402
    addi        x9, x9, 0x424
    bne         x10, x9, fail
    j           L295
L295: # Test 29-2: jal
    jal         x14, L296
    j           fail
L296: # jal target
    lui         x17, 0x402
    addi        x17, x17, 0x43C
    bne         x14, x17, fail
    j           L297
L297: # Test 29-3: jal
    jal         x2, L298
    j           fail
L298: # jal target
    lui         x30, 0x402
    addi        x30, x30, 0x454
    bne         x2, x30, fail
    j           L299
L299: # Test 29-4: jal
    jal         x14, L300
    j           fail
L300: # jal target
    lui         x7, 0x402
    addi        x7, x7, 0x46C
    bne         x14, x7, fail
    j           L301
L301: # Test 29-5: jal
    jal         x8, L302
    j           fail
L302: # jal target
    lui         x10, 0x402
    addi        x10, x10, 0x484
    bne         x8, x10, fail
    j           L303
L303: # Test 29-6: jal
    jal         x10, L304
    j           fail
L304: # jal target
    lui         x23, 0x402
    addi        x23, x23, 0x49C
    bne         x10, x23, fail
    j           L305
L305: # Test 29-7: jal
    jal         x14, L306
    j           fail
L306: # jal target
    lui         x13, 0x402
    addi        x13, x13, 0x4B4
    bne         x14, x13, fail
    j           L307
L307: # Test 29-8: jal
    jal         x12, L308
    j           fail
L308: # jal target
    lui         x6, 0x402
    addi        x6, x6, 0x4CC
    bne         x12, x6, fail
    j           L309
L309: # Test 29-9: jal
    jal         x17, L310
    j           fail
L310: # jal target
    lui         x6, 0x402
    addi        x6, x6, 0x4E4
    bne         x17, x6, fail
    j           L311
L311: # Test 30-0: jalr
    lui         x4, 0x402
    addi        x4, x4, 0xFFFFFFFE
    jalr        x22, 0x50A(x4)
    j           fail
L312: # jalr target
    lui         x19, 0x402
    addi        x19, x19, 0x504
    bne         x22, x19, fail
    j           L313
L313: # Test 30-1: jalr
    lui         x21, 0x402
    addi        x21, x21, 0x2BE
    jalr        x29, 0x26A(x21)
    j           fail
L314: # jalr target
    lui         x15, 0x402
    addi        x15, x15, 0x524
    bne         x29, x15, fail
    j           L315
L315: # Test 30-2: jalr
    lui         x23, 0x402
    addi        x23, x23, 0x772
    jalr        x18, 0xFFFFFDD6(x23)
    j           fail
L316: # jalr target
    lui         x30, 0x402
    addi        x30, x30, 0x544
    bne         x18, x30, fail
    j           L317
L317: # Test 30-3: jalr
    lui         x4, 0x403
    addi        x4, x4, 0xFFFFFCF9
    jalr        x31, 0xFFFFF86F(x4)
    j           fail
L318: # jalr target
    lui         x14, 0x402
    addi        x14, x14, 0x564
    bne         x31, x14, fail
    j           L319
L319: # Test 30-4: jalr
    lui         x27, 0x402
    addi        x27, x27, 0x72D
    jalr        x13, 0xFFFFFE5B(x27)
    j           fail
L320: # jalr target
    lui         x5, 0x402
    addi        x5, x5, 0x584
    bne         x13, x5, fail
    j           L321
L321: # Test 30-5: jalr
    lui         x11, 0x402
    addi        x11, x11, 0x161
    jalr        x2, 0x447(x11)
    j           fail
L322: # jalr target
    lui         x17, 0x402
    addi        x17, x17, 0x5A4
    bne         x2, x17, fail
    j           L323
L323: # Test 30-6: jalr
    lui         x26, 0x402
    addi        x26, x26, 0x92
    jalr        x1, 0x536(x26)
    j           fail
L324: # jalr target
    lui         x12, 0x402
    addi        x12, x12, 0x5C4
    bne         x1, x12, fail
    j           L325
L325: # Test 30-7: jalr
    lui         x19, 0x403
    addi        x19, x19, 0xFFFFF806
    jalr        x9, 0xFFFFFDE2(x19)
    j           fail
L326: # jalr target
    lui         x24, 0x402
    addi        x24, x24, 0x5E4
    bne         x9, x24, fail
    j           L327
L327: # Test 30-8: jalr
    lui         x16, 0x403
    addi        x16, x16, 0xFFFFFCFD
    jalr        x24, 0xFFFFF90B(x16)
    j           fail
L328: # jalr target
    lui         x10, 0x402
    addi        x10, x10, 0x604
    bne         x24, x10, fail
    j           L329
L329: # Test 30-9: jalr
    lui         x28, 0x403
    addi        x28, x28, 0xFFFFFB23
    jalr        x24, 0xFFFFFB05(x28)
    j           fail
L330: # jalr target
    lui         x20, 0x402
    addi        x20, x20, 0x624
    bne         x24, x20, fail
    j           L331
L331: # Test 31-0: beq
    beq         x28, x21, fail
    j           L332
L332: # Test 31-1: beq
    beq         x30, x23, fail
    j           L333
L333: # Test 31-2: beq
    beq         x14, x21, fail
    j           L334
L334: # Test 31-3: beq
    beq         x11, x15, fail
    j           L335
L335: # Test 31-4: beq
    beq         x30, x27, fail
    j           L336
L336: # Test 31-5: beq
    beq         x3, x14, fail
    j           L337
L337: # Test 31-6: beq
    beq         x24, x25, fail
    j           L338
L338: # Test 31-7: beq
    beq         x19, x16, fail
    j           L339
L339: # Test 31-8: beq
    beq         x18, x28, fail
    j           L340
L340: # Test 31-9: beq
    beq         x29, x1, fail
    j           L341
L341: # Test 32-0: bne
    bne         x5, x17, L342
    j           fail
L342: # Test 32-1: bne
    bne         x2, x11, L343
    j           fail
L343: # Test 32-2: bne
    bne         x17, x31, L344
    j           fail
L344: # Test 32-3: bne
    bne         x22, x1, L345
    j           fail
L345: # Test 32-4: bne
    bne         x23, x10, L346
    j           fail
L346: # Test 32-5: bne
    bne         x6, x26, L347
    j           fail
L347: # Test 32-6: bne
    bne         x10, x12, L348
    j           fail
L348: # Test 32-7: bne
    bne         x9, x0, L349
    j           fail
L349: # Test 32-8: bne
    bne         x16, x4, L350
    j           fail
L350: # Test 32-9: bne
    bne         x5, x27, L351
    j           fail
L351: # Test 33-0: blt
    blt         x9, x14, fail
    j           L352
L352: # Test 33-1: blt
    blt         x31, x24, L353
    j           fail
L353: # Test 33-2: blt
    blt         x4, x16, L354
    j           fail
L354: # Test 33-3: blt
    blt         x5, x30, fail
    j           L355
L355: # Test 33-4: blt
    blt         x19, x12, fail
    j           L356
L356: # Test 33-5: blt
    blt         x3, x30, L357
    j           fail
L357: # Test 33-6: blt
    blt         x25, x31, L358
    j           fail
L358: # Test 33-7: blt
    blt         x23, x20, fail
    j           L359
L359: # Test 33-8: blt
    blt         x4, x8, fail
    j           L360
L360: # Test 33-9: blt
    blt         x6, x14, L361
    j           fail
L361: # Test 34-0: bge
    bge         x23, x7, L362
    j           fail
L362: # Test 34-1: bge
    bge         x3, x26, fail
    j           L363
L363: # Test 34-2: bge
    bge         x30, x18, L364
    j           fail
L364: # Test 34-3: bge
    bge         x25, x1, fail
    j           L365
L365: # Test 34-4: bge
    bge         x15, x18, fail
    j           L366
L366: # Test 34-5: bge
    bge         x29, x28, fail
    j           L367
L367: # Test 34-6: bge
    bge         x20, x22, L368
    j           fail
L368: # Test 34-7: bge
    bge         x17, x27, fail
    j           L369
L369: # Test 34-8: bge
    bge         x10, x18, L370
    j           fail
L370: # Test 34-9: bge
    bge         x2, x28, fail
    j           win
win: # Win label
    lui         x4, 0x0
    addi        x4, x4, 0x0
    ebreak
fail: # Fail label
    lui         x4, 0x0
    addi        x4, x4, 0xFFFFFFFF
    ebreak
