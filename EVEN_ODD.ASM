dosseg
	; ------------- MACRO START
	
	; ------------- MACRO END

.model small
.stack 100h
.data
		; ------------- DATA / VARIABLES START
	msg1 db 'Enter Number: $'
	msg2 db 'Number is Even $'
	msg3 db 'Number is Odd $'
		; ------------- DATA / VARIABLES END
.code
main proc	; ------------- CODE

	mov ax,@data	; CREATE HEAP MEMORY
	mov ds,ax

;take an int input

	lea dx,msg1
	mov ah,9
	int 21h
 
	mov ah,1
	int 21h

;is it even or odd

	mov bl,2
	div bl	; ah = remainder 

	cmp ah,0
	je evenl
	
	lea dx,msg3
	mov ah,9
	int 21h
	
	mov ah,4ch
	int 21h

evenl:
lea dx,msg2
mov ah,9
int 21h

	mov ah,4ch
	int 21h
main endp	; ------------- CODE END
	; ------------- PROC START
	
	; ------------- PROC END
end main
