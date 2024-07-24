#start=led_display.exe#

#make_exe#      ; the format of the executable file when compiled

name "led"

mov ax, 1234    ; put value to ax register
out 199, ax     ; output value of ax register to port 199

mov ax, -5678
out 199, ax

mov ax, 0
x1:
  out 199, ax  
  inc ax
jmp x1