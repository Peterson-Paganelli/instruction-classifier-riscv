.data
#A[12] = h + A[8]
array_A: .word 0,10,20,30,40,50,60,70,80,90,100,110,120,130,140,150
.text
addi s2, zero, 1 #h
la s3, array_A #Coloquei o array na memoria

lw t0, 32(s3) #Calculando posicao 8 do array (32x4)
add t0, s2, t0 # A[8] = h + A[8]
sw t0, 48(s3) #Guardando h + A[0], na posicao 12 do array
