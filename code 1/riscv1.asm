.text
#f = (g + h) - (i + j)

addi s0, zero, 10 #g
addi s1, zero, 5 #h
addi s3, zero, 6 #i
addi s4, zero, 7 #j

add t0, s0, s1 #g+h
add t1, s3, s4 #i+j
sub s5, t0, t1 #f = (g + h) - (i + j)

.data