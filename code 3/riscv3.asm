.data

.text

jal zero, main

fat:
    addi sp, sp, -4
    sw   ra, 0(sp)
    addi sp, sp, -4
    sw   a1, 0(sp)
    
    addi t0, zero, 1
    ble  a1, t0, ret_1
    
    addi a1, a1, -1
    jal fat
    
    lw   a1, 0(sp)
    addi sp, sp, 4
    lw   ra, 0(sp)
    addi sp, sp, 4
    
    mul a0, a0, a1
    jalr ra
    
    
    
    
ret_1:
    addi a0, zero, 1
    jalr ra

main:
    addi a1, zero, 5
    jal fat #jal ra, fat
    
    addi a7, zero, 1
    ecall
    
    addi a7, zero, 10
    ecall