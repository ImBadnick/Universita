.data:
  x: .word 5

.text:
  .global main

main: LDR R1,#0
      LDR R2,=x
loop: CMP R1,R2
      BEQ fine
      MOV R7,#4
      SVC 0
      ADD R1,R1,#1
      B loop
fine: mov R7,#1
      svc 0
