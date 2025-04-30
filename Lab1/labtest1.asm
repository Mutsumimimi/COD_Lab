addi x2, x0, 30
addi x18, x0, 1	
addi x19, x0, 0
addi x20, x0, 1
addi x21, x0, 1
Loop:
beq x18, x2, over
addi x18, x18, 1
add x21, x19, x20
add x19, x20, x0
add x20, x21, x0
beq x0, x0, Loop
over:
add x3, x21, x0
