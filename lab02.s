
.data

array: .word 1, 0, 1, 12, 0, 1, 4

.text

    la a0, array
    li a1, 7    # unsigned
    li a2, 1
prog:
#-----------------------------
# Write your code here!
# Do not remove the prog label or write code above it!
add s0, zero, zero
loop:
beq a1, zero, done
lw t0, 0(a0)
bne a2, t0, outif
add s0, a0, zero
outif:
addi a0, a0, 4
addi a1, a1, -1
j loop
#-----------------------------
done:
    addi a7, zero, 10 
    ecall
