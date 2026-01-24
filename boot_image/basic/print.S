
li a0, 0x10000000
li a1, 'Y'
.loop:
    lbu a2, 5(a0)
    andi a2, a2, 32
    beqz a2, .loop
    sb a1, 0(a0)
    j .loop
