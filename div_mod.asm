; result in al, remainder in ah
name "div_mod"

org 100h

mov al, 8
mov bl, 5
div bl

ret
