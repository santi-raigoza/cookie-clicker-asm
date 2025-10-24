INCLUDE Irvine32.inc

.data
    cookieCount DWORD 100              ; stores total number of cookies
    cookieMsg   BYTE "Cookies: ", 0  ; label for display

.code
main PROC
    ; Display the cookie message
    mov edx, OFFSET cookieMsg
    call WriteString

    ; Display the number stored in cookieCount
    mov eax, cookieCount
    call WriteDec

    call Crlf

    exit
main ENDP
END main
