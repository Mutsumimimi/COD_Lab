addi x18, x0, 1
li x28, 0x80000000 # 纠正符号位
addi x19, x0, 0	# a[0] = {x19, x20}
addi x20, x0, 0
addi x21, x0, 0	# a[1] = {x21, x22}
addi x22, x0, 1
addi x23, x0, 0	# a[2] = {x23, x24}
addi x24, x0, 1
Loop:
beq x18, x2, over   # x18不会溢出
addi x18, x18, 1
#加法
add x24, x22, x20
add x23, x21, x19
#判断溢出
blt x0, x24, Label1
    add x24, x24, x28
    addi x23, x23, 1
Label1:
#（没有溢出/溢出并调整过了）
    add x20, x22, x0
    add x22, x24, x0
    add x19, x21, x0
    add x21, x23, x0
beq x0, x0, Loop
over:
beq x23, x0, Label2	# if(x23 == 0) then jump to Label2
addi x25, x0, -2		# x25 = 11...110
or x25, x23, x25		# x25 = 11...110 or 11...111
addi x26, x0, -1		# x26 = 11...111
bne x25, x26, Label3
add x24, x24, x28
Label3:
#对x23右移一位
srli x23, x23, 1 #逻辑右移
Label2:
add x3, x23, x0
add x4, x24, x0
