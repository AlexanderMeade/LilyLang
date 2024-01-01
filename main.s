	.file	"main.c"
	.globl	_Token_types_map
	.section .rdata,"dr"
LC0:
	.ascii "TT_ERROR\0"
LC1:
	.ascii "TT_PLUS\0"
LC2:
	.ascii "TT_MINUS\0"
LC3:
	.ascii "TT_MUL\0"
LC4:
	.ascii "TT_DIV\0"
LC5:
	.ascii "TT_EOT\0"
LC6:
	.ascii "TT_LPAREN\0"
LC7:
	.ascii "TT_RPAREN\0"
LC8:
	.ascii "TT_NUMBER\0"
LC9:
	.ascii "TT_EQUAL\0"
LC10:
	.ascii "TT_SYMBOL\0"
LC11:
	.ascii "TT_NEWLINE\0"
LC12:
	.ascii "TT_MOD\0"
LC13:
	.ascii "TT_LESSTHAN\0"
LC14:
	.ascii "TT_GREATERTHAN\0"
LC15:
	.ascii "TT_LESSTHANOREQUAL\0"
LC16:
	.ascii "TT_GREATEROREQUAL\0"
LC17:
	.ascii "TT_DOUBLEEQUAL\0"
LC18:
	.ascii "TT_NOTEQUAL\0"
LC19:
	.ascii "TT_AND\0"
LC20:
	.ascii "TT_OR\0"
LC21:
	.ascii "TT_NOT\0"
LC22:
	.ascii "TT_BW_AND\0"
LC23:
	.ascii "TT_BW_OR\0"
LC24:
	.ascii "TT_BW_LEFT\0"
LC25:
	.ascii "TT_BW_RIGHT\0"
LC26:
	.ascii "TT_BW_NOT\0"
LC27:
	.ascii "TT_BW_XOR\0"
LC28:
	.ascii "TT_STRING\0"
LC29:
	.ascii "TT_ID\0"
LC30:
	.ascii "TT_BLOCK\0"
LC31:
	.ascii "TT_FUNCCALL\0"
LC32:
	.ascii "TT_COMMA\0"
LC33:
	.ascii "TT_ASSEMBLY_MOD\0"
LC34:
	.ascii "TT_IF\0"
LC35:
	.ascii "TT_RETURN\0"
LC36:
	.ascii "TT_COLON\0"
LC37:
	.ascii "TT_CAST\0"
LC38:
	.ascii "TT_LOOP\0"
LC39:
	.ascii "TT_CONTINUE\0"
LC40:
	.ascii "TT_ELSE\0"
LC41:
	.ascii "TT_BREAK\0"
LC42:
	.ascii "TT_I32\0"
LC43:
	.ascii "TT_STR\0"
LC44:
	.ascii "TT_USE\0"
	.data
	.align 32
_Token_types_map:
	.long	LC0
	.long	LC1
	.long	LC2
	.long	LC3
	.long	LC4
	.long	LC5
	.long	LC6
	.long	LC7
	.long	LC8
	.long	LC9
	.long	LC10
	.long	LC11
	.long	LC12
	.long	LC13
	.long	LC14
	.long	LC15
	.long	LC16
	.long	LC17
	.long	LC18
	.long	LC19
	.long	LC20
	.long	LC21
	.long	LC22
	.long	LC23
	.long	LC24
	.long	LC25
	.long	LC26
	.long	LC27
	.long	LC28
	.long	LC29
	.long	LC30
	.long	LC31
	.long	LC32
	.long	LC33
	.long	LC34
	.long	LC35
	.long	LC36
	.long	LC37
	.long	LC38
	.long	LC39
	.long	LC40
	.long	LC41
	.long	LC42
	.long	LC43
	.long	LC44
	.section .rdata,"dr"
	.align 4
LC45:
	.ascii "Failed to allocate memory for Lexer\12\0"
LC46:
	.ascii "\12test6\0"
	.text
	.globl	_Lexer_init
	.def	_Lexer_init;	.scl	2;	.type	32;	.endef
_Lexer_init:
LFB19:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	$32, (%esp)
	call	_malloc
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	jne	L2
	movl	__imp___iob, %eax
	addl	$64, %eax
	movl	%eax, 12(%esp)
	movl	$36, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC45, (%esp)
	call	_fwrite
	movl	$1, (%esp)
	call	_exit
L2:
	movl	-12(%ebp), %eax
	movl	12(%ebp), %edx
	movl	%edx, 16(%eax)
	movl	$24, (%esp)
	call	_Vector_init
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	movl	%edx, (%eax)
	movl	-12(%ebp), %eax
	movl	$0, 4(%eax)
	movl	-12(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, 8(%eax)
	movl	-12(%ebp), %eax
	movl	8(%eax), %edx
	movl	-12(%ebp), %eax
	movl	4(%eax), %eax
	addl	%edx, %eax
	movzbl	(%eax), %edx
	movl	-12(%ebp), %eax
	movb	%dl, 12(%eax)
	movl	-12(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	jne	L3
	movl	__imp___iob, %eax
	addl	$64, %eax
	movl	%eax, 12(%esp)
	movl	$36, 8(%esp)
	movl	$1, 4(%esp)
	movl	$LC45, (%esp)
	call	_fwrite
	movl	$1, (%esp)
	call	_exit
L3:
	movl	$LC46, (%esp)
	call	_printf
	movl	-12(%ebp), %eax
	movl	$0, 20(%eax)
	movl	$LC46, (%esp)
	call	_printf
	movl	-12(%ebp), %eax
	movl	$1, 24(%eax)
	movl	-12(%ebp), %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE19:
	.globl	_Lexer_skipWhiteSpace
	.def	_Lexer_skipWhiteSpace;	.scl	2;	.type	32;	.endef
_Lexer_skipWhiteSpace:
LFB20:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	jmp	L6
L7:
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_Lexer_next
L6:
	movl	8(%ebp), %eax
	movzbl	12(%eax), %eax
	cmpb	$9, %al
	je	L7
	movl	8(%ebp), %eax
	movzbl	12(%eax), %eax
	cmpb	$32, %al
	je	L7
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE20:
	.def	_Lexer_next;	.scl	3;	.type	32;	.endef
_Lexer_next:
LFB21:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	movl	8(%ebp), %eax
	movzbl	12(%eax), %eax
	cmpb	$10, %al
	jne	L9
	movl	8(%ebp), %eax
	movl	$0, 28(%eax)
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 24(%eax)
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax)
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	addl	%edx, %eax
	movzbl	(%eax), %edx
	movl	8(%ebp), %eax
	movb	%dl, 12(%eax)
	jmp	L8
L9:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax)
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	addl	%edx, %eax
	movzbl	(%eax), %edx
	movl	8(%ebp), %eax
	movb	%dl, 12(%eax)
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 28(%eax)
L8:
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE21:
	.section .rdata,"dr"
	.align 4
LC47:
	.ascii "\12 LLexer_skipNewLines end char : %c\0"
	.text
	.def	_Lexer_skipNewLines;	.scl	3;	.type	32;	.endef
_Lexer_skipNewLines:
LFB22:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	cmpb	$10, %al
	jne	L16
	jmp	L14
L15:
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_Lexer_next
L14:
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	cmpb	$10, %al
	je	L15
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	leal	-1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax)
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	addl	%edx, %eax
	movzbl	(%eax), %edx
	movl	8(%ebp), %eax
	movb	%dl, 12(%eax)
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	leal	-1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 28(%eax)
	movl	8(%ebp), %eax
	movzbl	12(%eax), %eax
	movsbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	$LC47, (%esp)
	call	_printf
	jmp	L11
L16:
	nop
L11:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE22:
	.def	_Lexer_parseNumber;	.scl	3;	.type	32;	.endef
_Lexer_parseNumber:
LFB23:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	subl	$48, %esp
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	movl	$1, (%esp)
	call	_malloc
	movl	%eax, -12(%ebp)
	movl	$0, -16(%ebp)
	movl	$0, -20(%ebp)
	jmp	L18
L20:
	movl	8(%ebp), %eax
	movzbl	12(%eax), %eax
	cmpb	$46, %al
	jne	L19
	cmpl	$0, -20(%ebp)
	jne	L19
	movl	$1, -20(%ebp)
L19:
	movl	-12(%ebp), %edx
	movl	-16(%ebp), %eax
	addl	%eax, %edx
	movl	8(%ebp), %eax
	movzbl	12(%eax), %eax
	movb	%al, (%edx)
	addl	$1, -16(%ebp)
	movl	-16(%ebp), %eax
	addl	$1, %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_realloc
	movl	%eax, -12(%ebp)
	movl	-12(%ebp), %edx
	movl	-16(%ebp), %eax
	addl	%edx, %eax
	movb	$0, (%eax)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_Lexer_next
L18:
	movl	8(%ebp), %eax
	movzbl	12(%eax), %eax
	movsbl	%al, %eax
	subl	$48, %eax
	cmpl	$9, %eax
	jbe	L20
	movl	8(%ebp), %eax
	movzbl	12(%eax), %eax
	cmpb	$46, %al
	jne	L21
	movl	8(%ebp), %eax
	movzbl	12(%eax), %eax
	testb	%al, %al
	jne	L20
L21:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	leal	-1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax)
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	addl	%edx, %eax
	movzbl	(%eax), %edx
	movl	8(%ebp), %eax
	movb	%dl, 12(%eax)
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	leal	-1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 28(%eax)
	movl	8(%ebp), %eax
	movl	28(%eax), %esi
	movl	8(%ebp), %eax
	movl	24(%eax), %ebx
	cmpl	$0, 12(%ebp)
	je	L22
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_atof
	fchs
	jmp	L23
L22:
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_atof
L23:
	movl	%esi, 16(%esp)
	movl	%ebx, 12(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 8(%esp)
	fstpl	(%esp)
	call	_Token_initNumber
	addl	$48, %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE23:
	.def	_Lexer_parseString;	.scl	3;	.type	32;	.endef
_Lexer_parseString:
LFB24:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	8(%ebp), %eax
	movzbl	12(%eax), %eax
	cmpb	$34, %al
	je	L26
	movl	$0, %eax
	jmp	L27
L26:
	movl	$1, 4(%esp)
	movl	$1, (%esp)
	call	_calloc
	movl	%eax, -12(%ebp)
	movl	$0, -16(%ebp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_Lexer_next
	jmp	L28
L29:
	movl	-12(%ebp), %edx
	movl	-16(%ebp), %eax
	addl	%eax, %edx
	movl	8(%ebp), %eax
	movzbl	12(%eax), %eax
	movb	%al, (%edx)
	addl	$1, -16(%ebp)
	movl	-16(%ebp), %eax
	addl	$1, %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_realloc
	movl	%eax, -12(%ebp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_Lexer_next
L28:
	movl	8(%ebp), %eax
	movzbl	12(%eax), %eax
	cmpb	$34, %al
	jne	L29
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_realloc
	movl	%eax, -12(%ebp)
	movl	-12(%ebp), %edx
	movl	-16(%ebp), %eax
	addl	%edx, %eax
	movb	$0, (%eax)
	movl	8(%ebp), %eax
	movl	28(%eax), %edx
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$28, (%esp)
	call	_Token_initID
L27:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE24:
	.section .rdata,"dr"
LC49:
	.ascii "%s\0"
	.text
	.def	_Lexer_parseSymbol;	.scl	3;	.type	32;	.endef
_Lexer_parseSymbol:
LFB25:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	$1, 4(%esp)
	movl	$1, (%esp)
	call	_calloc
	movl	%eax, -12(%ebp)
	movl	$0, -16(%ebp)
	jmp	L31
L33:
	movl	-12(%ebp), %edx
	movl	-16(%ebp), %eax
	addl	%eax, %edx
	movl	8(%ebp), %eax
	movzbl	12(%eax), %eax
	movb	%al, (%edx)
	addl	$1, -16(%ebp)
	movl	-16(%ebp), %eax
	addl	$1, %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_realloc
	movl	%eax, -12(%ebp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_Lexer_next
L31:
	movl	8(%ebp), %eax
	movzbl	12(%eax), %eax
	cmpb	$32, %al
	je	L32
	movl	8(%ebp), %eax
	movzbl	12(%eax), %eax
	cmpb	$10, %al
	je	L32
	movl	8(%ebp), %eax
	movzbl	12(%eax), %eax
	cmpb	$9, %al
	je	L32
	movl	8(%ebp), %eax
	movzbl	12(%eax), %eax
	movsbl	%al, %eax
	movl	%eax, (%esp)
	call	_isalpha
	testl	%eax, %eax
	jne	L33
	movl	8(%ebp), %eax
	movzbl	12(%eax), %eax
	movsbl	%al, %eax
	subl	$48, %eax
	cmpl	$9, %eax
	ja	L32
	cmpl	$0, -16(%ebp)
	jne	L33
L32:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	leal	-1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax)
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	addl	%edx, %eax
	movzbl	(%eax), %edx
	movl	8(%ebp), %eax
	movb	%dl, 12(%eax)
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	leal	-1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 28(%eax)
	movl	-12(%ebp), %edx
	movl	-16(%ebp), %eax
	addl	%edx, %eax
	movb	$0, (%eax)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC49, (%esp)
	call	_printf
	movl	8(%ebp), %eax
	movl	28(%eax), %edx
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$29, (%esp)
	call	_Token_initID
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE25:
	.def	_Lexer_collectUpTo;	.scl	3;	.type	32;	.endef
_Lexer_collectUpTo:
LFB26:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$56, %esp
	movl	12(%ebp), %edx
	movl	16(%ebp), %eax
	movb	%dl, -28(%ebp)
	movb	%al, -32(%ebp)
	movl	$24, (%esp)
	call	_Vector_init
	movl	%eax, -12(%ebp)
	movl	8(%ebp), %eax
	movzbl	12(%eax), %eax
	cmpb	-28(%ebp), %al
	jne	L37
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_Lexer_next
	jmp	L37
L46:
	movl	8(%ebp), %eax
	movzbl	12(%eax), %eax
	cmpb	-32(%ebp), %al
	jne	L38
	movl	-12(%ebp), %eax
	jmp	L39
L38:
	movl	8(%ebp), %eax
	movzbl	12(%eax), %eax
	cmpb	$9, %al
	je	L40
	movl	8(%ebp), %eax
	movzbl	12(%eax), %eax
	cmpb	$32, %al
	jne	L41
L40:
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_Lexer_skipWhiteSpace
	jmp	L37
L41:
	movl	8(%ebp), %eax
	movzbl	12(%eax), %eax
	cmpb	$10, %al
	jne	L42
	cmpl	$0, 20(%ebp)
	je	L42
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_Lexer_next
	jmp	L37
L42:
	movl	8(%ebp), %eax
	movzbl	12(%eax), %eax
	testb	%al, %al
	je	L47
	movl	8(%ebp), %eax
	movzbl	12(%eax), %eax
	cmpb	-32(%ebp), %al
	jne	L45
	movl	-12(%ebp), %eax
	jmp	L39
L45:
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_Lexer_parse
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_Vector_push
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_Lexer_next
L37:
	movl	8(%ebp), %eax
	movzbl	12(%eax), %eax
	cmpb	-32(%ebp), %al
	je	L44
	movl	8(%ebp), %eax
	movzbl	12(%eax), %eax
	testb	%al, %al
	jne	L46
	jmp	L44
L47:
	nop
L44:
	movl	-12(%ebp), %eax
L39:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE26:
	.section .rdata,"dr"
LC50:
	.ascii "+\0"
LC51:
	.ascii "-\0"
LC52:
	.ascii "*\0"
LC53:
	.ascii "/\0"
LC54:
	.ascii "\0\0"
LC55:
	.ascii "(\0"
LC56:
	.ascii ")\0"
LC57:
	.ascii "codeBlock\0"
LC58:
	.ascii "!=\0"
LC59:
	.ascii "!\0"
LC60:
	.ascii "==\0"
LC61:
	.ascii "=\0"
LC62:
	.ascii "&&\0"
LC63:
	.ascii "&\0"
LC64:
	.ascii "||\0"
LC65:
	.ascii "<=\0"
LC66:
	.ascii "<<\0"
LC67:
	.ascii "<\0"
LC68:
	.ascii ">=\0"
LC69:
	.ascii ">>\0"
LC70:
	.ascii ">\0"
LC71:
	.ascii "^\0"
LC72:
	.ascii "~\0"
LC73:
	.ascii "%\0"
LC74:
	.ascii ",\0"
LC75:
	.ascii "::\0"
LC76:
	.ascii ":\0"
LC77:
	.ascii "\12return ;p\0"
LC78:
	.ascii "new line\0"
	.align 4
LC79:
	.ascii "\12\12\12RETURN LEXER CURR CHAR ERROR : %c\0"
	.text
	.def	_Lexer_parse;	.scl	3;	.type	32;	.endef
_Lexer_parse:
LFB27:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$52, %esp
	.cfi_offset 3, -12
	movl	8(%ebp), %eax
	movzbl	12(%eax), %eax
	movsbl	%al, %eax
	cmpl	$126, %eax
	ja	L49
	movl	L51(,%eax,4), %eax
	jmp	*%eax
	.section .rdata,"dr"
	.align 4
L51:
	.long	L50
	.long	L49
	.long	L49
	.long	L49
	.long	L49
	.long	L49
	.long	L49
	.long	L49
	.long	L49
	.long	L52
	.long	L90
	.long	L49
	.long	L49
	.long	L49
	.long	L49
	.long	L49
	.long	L49
	.long	L49
	.long	L49
	.long	L49
	.long	L49
	.long	L49
	.long	L49
	.long	L49
	.long	L49
	.long	L49
	.long	L49
	.long	L49
	.long	L49
	.long	L49
	.long	L49
	.long	L49
	.long	L54
	.long	L55
	.long	L56
	.long	L49
	.long	L49
	.long	L57
	.long	L58
	.long	L49
	.long	L59
	.long	L60
	.long	L61
	.long	L62
	.long	L63
	.long	L64
	.long	L49
	.long	L65
	.long	L49
	.long	L49
	.long	L49
	.long	L49
	.long	L49
	.long	L49
	.long	L49
	.long	L49
	.long	L49
	.long	L49
	.long	L66
	.long	L49
	.long	L67
	.long	L68
	.long	L69
	.long	L49
	.long	L49
	.long	L49
	.long	L49
	.long	L49
	.long	L49
	.long	L49
	.long	L49
	.long	L49
	.long	L49
	.long	L49
	.long	L49
	.long	L49
	.long	L49
	.long	L49
	.long	L49
	.long	L49
	.long	L49
	.long	L49
	.long	L49
	.long	L49
	.long	L49
	.long	L49
	.long	L49
	.long	L49
	.long	L49
	.long	L49
	.long	L49
	.long	L49
	.long	L49
	.long	L49
	.long	L70
	.long	L49
	.long	L49
	.long	L49
	.long	L49
	.long	L49
	.long	L49
	.long	L49
	.long	L49
	.long	L49
	.long	L49
	.long	L49
	.long	L49
	.long	L49
	.long	L49
	.long	L49
	.long	L49
	.long	L49
	.long	L49
	.long	L49
	.long	L49
	.long	L49
	.long	L49
	.long	L49
	.long	L49
	.long	L49
	.long	L49
	.long	L49
	.long	L49
	.long	L71
	.long	L72
	.long	L73
	.long	L74
	.text
L52:
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_Lexer_skipWhiteSpace
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_Lexer_parse
	jmp	L96
L54:
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_Lexer_skipWhiteSpace
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_Lexer_parse
	jmp	L96
L62:
	movl	8(%ebp), %eax
	movl	28(%eax), %edx
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%edx, 16(%esp)
	movl	%eax, 12(%esp)
	movl	$LC50, 8(%esp)
	movl	$43, 4(%esp)
	movl	$1, (%esp)
	call	_Token_initSymbol
	jmp	L96
L64:
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	addl	$1, %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	cmpb	$124, %al
	jne	L76
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_Lexer_next
	jmp	L77
L78:
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_Lexer_next
L77:
	movl	8(%ebp), %eax
	movzbl	12(%eax), %eax
	cmpb	$10, %al
	jne	L78
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_Lexer_next
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_Lexer_parse
	jmp	L96
L76:
	movl	8(%ebp), %eax
	movl	28(%eax), %edx
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%edx, 16(%esp)
	movl	%eax, 12(%esp)
	movl	$LC51, 8(%esp)
	movl	$45, 4(%esp)
	movl	$2, (%esp)
	call	_Token_initSymbol
	jmp	L96
L61:
	movl	8(%ebp), %eax
	movl	28(%eax), %edx
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%edx, 16(%esp)
	movl	%eax, 12(%esp)
	movl	$LC52, 8(%esp)
	movl	$42, 4(%esp)
	movl	$3, (%esp)
	call	_Token_initSymbol
	jmp	L96
L65:
	movl	8(%ebp), %eax
	movl	28(%eax), %edx
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%edx, 16(%esp)
	movl	%eax, 12(%esp)
	movl	$LC53, 8(%esp)
	movl	$47, 4(%esp)
	movl	$4, (%esp)
	call	_Token_initSymbol
	jmp	L96
L50:
	movl	8(%ebp), %eax
	movl	28(%eax), %edx
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%edx, 16(%esp)
	movl	%eax, 12(%esp)
	movl	$LC54, 8(%esp)
	movl	$0, 4(%esp)
	movl	$5, (%esp)
	call	_Token_initSymbol
	jmp	L96
L59:
	movl	8(%ebp), %eax
	movl	28(%eax), %edx
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%edx, 16(%esp)
	movl	%eax, 12(%esp)
	movl	$LC55, 8(%esp)
	movl	$40, 4(%esp)
	movl	$6, (%esp)
	call	_Token_initSymbol
	jmp	L96
L60:
	movl	8(%ebp), %eax
	movl	28(%eax), %edx
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%edx, 16(%esp)
	movl	%eax, 12(%esp)
	movl	$LC56, 8(%esp)
	movl	$41, 4(%esp)
	movl	$7, (%esp)
	call	_Token_initSymbol
	jmp	L96
L71:
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_Lexer_next
	movl	$0, 12(%esp)
	movl	$125, 8(%esp)
	movl	$123, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_Lexer_collectUpTo
	movl	$LC57, 4(%esp)
	movl	%eax, (%esp)
	call	_Token_initBlock
	jmp	L96
L73:
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_Lexer_next
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_Lexer_parse
	jmp	L96
L55:
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	addl	$1, %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	cmpb	$61, %al
	jne	L79
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_Lexer_next
	movl	8(%ebp), %eax
	movl	28(%eax), %edx
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%edx, 16(%esp)
	movl	%eax, 12(%esp)
	movl	$LC58, 8(%esp)
	movl	$33, 4(%esp)
	movl	$18, (%esp)
	call	_Token_initSymbol
	jmp	L96
L79:
	movl	8(%ebp), %eax
	movl	28(%eax), %edx
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%edx, 16(%esp)
	movl	%eax, 12(%esp)
	movl	$LC59, 8(%esp)
	movl	$33, 4(%esp)
	movl	$21, (%esp)
	call	_Token_initSymbol
	jmp	L96
L68:
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	addl	$1, %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	cmpb	$61, %al
	jne	L80
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_Lexer_next
	movl	8(%ebp), %eax
	movl	28(%eax), %edx
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%edx, 16(%esp)
	movl	%eax, 12(%esp)
	movl	$LC60, 8(%esp)
	movl	$61, 4(%esp)
	movl	$17, (%esp)
	call	_Token_initSymbol
	jmp	L96
L80:
	movl	8(%ebp), %eax
	movl	28(%eax), %edx
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%edx, 16(%esp)
	movl	%eax, 12(%esp)
	movl	$LC61, 8(%esp)
	movl	$61, 4(%esp)
	movl	$9, (%esp)
	call	_Token_initSymbol
	jmp	L96
L58:
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	addl	$1, %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	cmpb	$38, %al
	jne	L81
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_Lexer_next
	movl	8(%ebp), %eax
	movl	28(%eax), %edx
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%edx, 16(%esp)
	movl	%eax, 12(%esp)
	movl	$LC62, 8(%esp)
	movl	$38, 4(%esp)
	movl	$19, (%esp)
	call	_Token_initSymbol
	jmp	L96
L81:
	movl	8(%ebp), %eax
	movl	28(%eax), %edx
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%edx, 16(%esp)
	movl	%eax, 12(%esp)
	movl	$LC63, 8(%esp)
	movl	$38, 4(%esp)
	movl	$22, (%esp)
	call	_Token_initSymbol
	jmp	L96
L72:
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	addl	$1, %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	cmpb	$124, %al
	jne	L82
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_Lexer_next
	movl	8(%ebp), %eax
	movl	28(%eax), %edx
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%edx, 16(%esp)
	movl	%eax, 12(%esp)
	movl	$LC64, 8(%esp)
	movl	$124, 4(%esp)
	movl	$20, (%esp)
	call	_Token_initSymbol
	jmp	L96
L82:
	movl	8(%ebp), %eax
	movl	28(%eax), %edx
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%edx, 16(%esp)
	movl	%eax, 12(%esp)
	movl	$LC64, 8(%esp)
	movl	$124, 4(%esp)
	movl	$23, (%esp)
	call	_Token_initSymbol
	jmp	L96
L67:
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	addl	$1, %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	movsbl	%al, %eax
	cmpl	$60, %eax
	je	L84
	cmpl	$61, %eax
	jne	L97
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_Lexer_next
	movl	8(%ebp), %eax
	movl	28(%eax), %edx
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%edx, 16(%esp)
	movl	%eax, 12(%esp)
	movl	$LC65, 8(%esp)
	movl	$60, 4(%esp)
	movl	$15, (%esp)
	call	_Token_initSymbol
	jmp	L96
L84:
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_Lexer_next
	movl	8(%ebp), %eax
	movl	28(%eax), %edx
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%edx, 16(%esp)
	movl	%eax, 12(%esp)
	movl	$LC66, 8(%esp)
	movl	$60, 4(%esp)
	movl	$24, (%esp)
	call	_Token_initSymbol
	jmp	L96
L97:
	movl	8(%ebp), %eax
	movl	28(%eax), %edx
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%edx, 16(%esp)
	movl	%eax, 12(%esp)
	movl	$LC67, 8(%esp)
	movl	$60, 4(%esp)
	movl	$13, (%esp)
	call	_Token_initSymbol
	jmp	L96
L69:
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	addl	$1, %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	movsbl	%al, %eax
	cmpl	$61, %eax
	je	L87
	cmpl	$62, %eax
	je	L88
	jmp	L98
L87:
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_Lexer_next
	movl	8(%ebp), %eax
	movl	28(%eax), %edx
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%edx, 16(%esp)
	movl	%eax, 12(%esp)
	movl	$LC68, 8(%esp)
	movl	$62, 4(%esp)
	movl	$16, (%esp)
	call	_Token_initSymbol
	jmp	L96
L88:
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_Lexer_next
	movl	8(%ebp), %eax
	movl	28(%eax), %edx
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%edx, 16(%esp)
	movl	%eax, 12(%esp)
	movl	$LC69, 8(%esp)
	movl	$62, 4(%esp)
	movl	$25, (%esp)
	call	_Token_initSymbol
	jmp	L96
L98:
	movl	8(%ebp), %eax
	movl	28(%eax), %edx
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%edx, 16(%esp)
	movl	%eax, 12(%esp)
	movl	$LC70, 8(%esp)
	movl	$62, 4(%esp)
	movl	$14, (%esp)
	call	_Token_initSymbol
	jmp	L96
L70:
	movl	8(%ebp), %eax
	movl	28(%eax), %edx
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%edx, 16(%esp)
	movl	%eax, 12(%esp)
	movl	$LC71, 8(%esp)
	movl	$94, 4(%esp)
	movl	$27, (%esp)
	call	_Token_initSymbol
	jmp	L96
L74:
	movl	8(%ebp), %eax
	movl	28(%eax), %edx
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%edx, 16(%esp)
	movl	%eax, 12(%esp)
	movl	$LC72, 8(%esp)
	movl	$126, 4(%esp)
	movl	$26, (%esp)
	call	_Token_initSymbol
	jmp	L96
L57:
	movl	8(%ebp), %eax
	movl	28(%eax), %edx
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%edx, 16(%esp)
	movl	%eax, 12(%esp)
	movl	$LC73, 8(%esp)
	movl	$37, 4(%esp)
	movl	$12, (%esp)
	call	_Token_initSymbol
	jmp	L96
L63:
	movl	8(%ebp), %eax
	movl	28(%eax), %edx
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%edx, 16(%esp)
	movl	%eax, 12(%esp)
	movl	$LC74, 8(%esp)
	movl	$44, 4(%esp)
	movl	$32, (%esp)
	call	_Token_initSymbol
	jmp	L96
L56:
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_Lexer_parseString
	jmp	L96
L66:
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	addl	$1, %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	cmpb	$58, %al
	jne	L89
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_Lexer_next
	movl	8(%ebp), %eax
	movl	28(%eax), %edx
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%edx, 16(%esp)
	movl	%eax, 12(%esp)
	movl	$LC75, 8(%esp)
	movl	$58, 4(%esp)
	movl	$37, (%esp)
	call	_Token_initSymbol
	jmp	L96
L89:
	movl	8(%ebp), %eax
	movl	28(%eax), %edx
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%edx, 16(%esp)
	movl	%eax, 12(%esp)
	movl	$LC76, 8(%esp)
	movl	$58, 4(%esp)
	movl	$36, (%esp)
	call	_Token_initSymbol
	jmp	L96
L91:
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_Lexer_next
L90:
	movl	8(%ebp), %eax
	movzbl	12(%eax), %eax
	cmpb	$10, %al
	je	L91
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	leal	-1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax)
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	addl	%edx, %eax
	movzbl	(%eax), %edx
	movl	8(%ebp), %eax
	movb	%dl, 12(%eax)
	movl	8(%ebp), %eax
	movl	28(%eax), %eax
	leal	-1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 28(%eax)
	movl	$LC77, (%esp)
	call	_printf
	movl	8(%ebp), %eax
	movl	28(%eax), %edx
	movl	8(%ebp), %eax
	movl	24(%eax), %eax
	movl	%edx, 16(%esp)
	movl	%eax, 12(%esp)
	movl	$LC78, 8(%esp)
	movl	$110, 4(%esp)
	movl	$11, (%esp)
	call	_Token_initSymbol
	jmp	L96
L49:
	movl	8(%ebp), %eax
	movzbl	12(%eax), %eax
	movsbl	%al, %eax
	subl	$48, %eax
	cmpl	$9, %eax
	jbe	L92
	movl	8(%ebp), %eax
	movzbl	12(%eax), %eax
	cmpb	$46, %al
	jne	L93
L92:
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_Lexer_parseNumber
	jmp	L96
L93:
	movl	8(%ebp), %eax
	movzbl	12(%eax), %eax
	movsbl	%al, %eax
	movl	%eax, (%esp)
	call	_isalpha
	testl	%eax, %eax
	je	L94
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_Lexer_parseSymbol
	movl	%eax, -12(%ebp)
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	addl	$1, %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	cmpb	$40, %al
	jne	L95
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_Lexer_next
	movl	-12(%ebp), %eax
	movl	12(%eax), %ebx
	movl	$1, 12(%esp)
	movl	$41, 8(%esp)
	movl	$40, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_Lexer_collectUpTo
	movl	%ebx, 4(%esp)
	movl	%eax, (%esp)
	call	_Token_initFuncCall
	movl	%eax, -12(%ebp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_Lexer_skipWhiteSpace
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_Token_convertToReservedFunction
	movl	-12(%ebp), %eax
	jmp	L96
L95:
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_Lexer_skipWhiteSpace
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_Token_convertToReservedFunction
	movl	-12(%ebp), %eax
	jmp	L96
L94:
	movl	8(%ebp), %eax
	movzbl	12(%eax), %eax
	movsbl	%al, %eax
	movl	%eax, 4(%esp)
	movl	$LC79, (%esp)
	call	_printf
	movl	8(%ebp), %eax
	movzbl	12(%eax), %eax
	movb	%al, -18(%ebp)
	movb	$0, -17(%ebp)
	movl	8(%ebp), %eax
	movl	28(%eax), %ecx
	movl	8(%ebp), %eax
	movl	24(%eax), %edx
	movl	8(%ebp), %eax
	movzbl	12(%eax), %eax
	movsbl	%al, %eax
	movl	%ecx, 16(%esp)
	movl	%edx, 12(%esp)
	leal	-18(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$0, (%esp)
	call	_Token_initSymbol
	movl	%eax, -16(%ebp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_Token_print
	movl	-16(%ebp), %eax
L96:
	addl	$52, %esp
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE27:
	.section .rdata,"dr"
LC80:
	.ascii "\12test Lexer Start\12\12\0"
LC81:
	.ascii "\12NULL LEXER EXIT\0"
LC82:
	.ascii "\12PRUNT\0"
LC83:
	.ascii "\12Token : %s|%c\0"
LC84:
	.ascii "\12mid test Lexer\0"
LC85:
	.ascii "\12tok %d | %s\12\11value : %f\0"
LC86:
	.ascii "\33[0;34m\0"
LC87:
	.ascii "\33[0m\0"
LC88:
	.ascii "\33[0;32m\0"
	.align 4
LC89:
	.ascii "\12============================================================LEXER PHASE ENDED ============================================================\0"
	.text
	.globl	_Lexer_start
	.def	_Lexer_start;	.scl	2;	.type	32;	.endef
_Lexer_start:
LFB28:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$56, %esp
	movl	$LC80, (%esp)
	call	_puts
	cmpl	$0, 8(%ebp)
	jne	L101
	movl	$LC81, (%esp)
	call	_printf
	movl	$1, (%esp)
	call	_exit
L104:
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_Lexer_parse
	movl	%eax, -16(%ebp)
	movl	$LC82, (%esp)
	call	_printf
	movl	-16(%ebp), %eax
	movzbl	(%eax), %eax
	movsbl	%al, %edx
	movl	-16(%ebp), %eax
	movl	12(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$LC83, (%esp)
	call	_printf
	movl	-16(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	L102
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	-16(%ebp), %edx
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_Vector_push
L102:
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_Lexer_next
L101:
	movl	8(%ebp), %eax
	movzbl	12(%eax), %eax
	testb	%al, %al
	je	L103
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	%eax, %edx
	jb	L104
L103:
	movl	$LC84, (%esp)
	call	_printf
	movl	$0, -12(%ebp)
	jmp	L105
L106:
	movl	-12(%ebp), %edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_Vector_get
	movl	%eax, -20(%ebp)
	movl	-20(%ebp), %eax
	fldl	(%eax)
	movl	-20(%ebp), %eax
	movl	8(%eax), %eax
	movl	_Token_types_map(,%eax,4), %eax
	fstpl	12(%esp)
	movl	%eax, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC85, (%esp)
	call	_printf
	movl	$LC86, (%esp)
	call	_printf
	movl	$LC87, (%esp)
	call	_printf
	addl	$1, -12(%ebp)
L105:
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	(%eax), %edx
	movl	-12(%ebp), %eax
	cmpl	%eax, %edx
	ja	L106
	movl	$LC88, (%esp)
	call	_printf
	movl	$LC89, (%esp)
	call	_puts
	movl	$LC87, (%esp)
	call	_printf
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE28:
	.globl	_Token_initSymbol
	.def	_Token_initSymbol;	.scl	2;	.type	32;	.endef
_Token_initSymbol:
LFB29:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$56, %esp
	movl	12(%ebp), %eax
	movb	%al, -28(%ebp)
	movl	$24, 4(%esp)
	movl	$1, (%esp)
	call	_calloc
	movl	%eax, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, 8(%eax)
	movl	-12(%ebp), %eax
	movzbl	-28(%ebp), %edx
	movb	%dl, (%eax)
	movl	-12(%ebp), %eax
	movl	16(%ebp), %edx
	movl	%edx, 12(%eax)
	movl	-12(%ebp), %eax
	movl	20(%ebp), %edx
	movl	%edx, 16(%eax)
	movl	-12(%ebp), %eax
	movl	24(%ebp), %edx
	movl	%edx, 20(%eax)
	movl	-12(%ebp), %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE29:
	.globl	_Token_initID
	.def	_Token_initID;	.scl	2;	.type	32;	.endef
_Token_initID:
LFB30:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	$24, 4(%esp)
	movl	$1, (%esp)
	call	_calloc
	movl	%eax, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, 8(%eax)
	movl	-12(%ebp), %eax
	movl	12(%ebp), %edx
	movl	%edx, 12(%eax)
	movl	-12(%ebp), %eax
	movl	16(%ebp), %edx
	movl	%edx, 16(%eax)
	movl	-12(%ebp), %eax
	movl	20(%ebp), %edx
	movl	%edx, 20(%eax)
	movl	-12(%ebp), %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE30:
	.globl	_Token_initNumber
	.def	_Token_initNumber;	.scl	2;	.type	32;	.endef
_Token_initNumber:
LFB31:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$56, %esp
	movl	8(%ebp), %eax
	movl	%eax, -32(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -28(%ebp)
	movl	$24, 4(%esp)
	movl	$1, (%esp)
	call	_calloc
	movl	%eax, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	$8, 8(%eax)
	movl	-12(%ebp), %eax
	fldl	-32(%ebp)
	fstpl	(%eax)
	movl	-12(%ebp), %eax
	movl	16(%ebp), %edx
	movl	%edx, 12(%eax)
	movl	-12(%ebp), %eax
	movl	20(%ebp), %edx
	movl	%edx, 16(%eax)
	movl	-12(%ebp), %eax
	movl	24(%ebp), %edx
	movl	%edx, 20(%eax)
	movl	-12(%ebp), %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE31:
	.globl	_Token_initFuncCall
	.def	_Token_initFuncCall;	.scl	2;	.type	32;	.endef
_Token_initFuncCall:
LFB32:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	$24, 4(%esp)
	movl	$1, (%esp)
	call	_calloc
	movl	%eax, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	$31, 8(%eax)
	movl	-12(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, (%eax)
	movl	-12(%ebp), %eax
	movl	12(%ebp), %edx
	movl	%edx, 12(%eax)
	movl	-12(%ebp), %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE32:
	.globl	_Token_initBlock
	.def	_Token_initBlock;	.scl	2;	.type	32;	.endef
_Token_initBlock:
LFB33:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	$24, 4(%esp)
	movl	$1, (%esp)
	call	_calloc
	movl	%eax, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	$30, 8(%eax)
	movl	-12(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, (%eax)
	movl	-12(%ebp), %eax
	movl	12(%ebp), %edx
	movl	%edx, 12(%eax)
	movl	-12(%ebp), %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE33:
	.section .rdata,"dr"
LC90:
	.ascii "i32\0"
LC91:
	.ascii "str\0"
LC92:
	.ascii "if\0"
LC93:
	.ascii "return\0"
LC94:
	.ascii "loop\0"
LC95:
	.ascii "continue\0"
LC96:
	.ascii "else\0"
LC97:
	.ascii "break\0"
LC98:
	.ascii "use\0"
LC99:
	.ascii "asm\0"
	.text
	.globl	_Token_convertToReservedFunction
	.def	_Token_convertToReservedFunction;	.scl	2;	.type	32;	.endef
_Token_convertToReservedFunction:
LFB34:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	$LC90, 4(%esp)
	movl	%eax, (%esp)
	call	_strcmp
	testl	%eax, %eax
	jne	L118
	movl	8(%ebp), %eax
	movl	$42, 8(%eax)
	jmp	L117
L118:
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	$LC91, 4(%esp)
	movl	%eax, (%esp)
	call	_strcmp
	testl	%eax, %eax
	jne	L120
	movl	8(%ebp), %eax
	movl	$43, 8(%eax)
	jmp	L117
L120:
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	$LC92, 4(%esp)
	movl	%eax, (%esp)
	call	_strcmp
	testl	%eax, %eax
	jne	L121
	movl	8(%ebp), %eax
	movl	$34, 8(%eax)
	jmp	L117
L121:
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	$LC93, 4(%esp)
	movl	%eax, (%esp)
	call	_strcmp
	testl	%eax, %eax
	jne	L122
	movl	8(%ebp), %eax
	movl	$35, 8(%eax)
	jmp	L117
L122:
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	$LC94, 4(%esp)
	movl	%eax, (%esp)
	call	_strcmp
	testl	%eax, %eax
	jne	L123
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	$31, %eax
	je	L123
	movl	8(%ebp), %eax
	movl	$38, 8(%eax)
	jmp	L117
L123:
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	$LC95, 4(%esp)
	movl	%eax, (%esp)
	call	_strcmp
	testl	%eax, %eax
	jne	L124
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	$31, %eax
	je	L124
	movl	8(%ebp), %eax
	movl	$39, 8(%eax)
	jmp	L117
L124:
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	$LC96, 4(%esp)
	movl	%eax, (%esp)
	call	_strcmp
	testl	%eax, %eax
	jne	L125
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	$31, %eax
	je	L125
	movl	8(%ebp), %eax
	movl	$40, 8(%eax)
	jmp	L117
L125:
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	$LC97, 4(%esp)
	movl	%eax, (%esp)
	call	_strcmp
	testl	%eax, %eax
	jne	L126
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	$31, %eax
	je	L126
	movl	8(%ebp), %eax
	movl	$41, 8(%eax)
	jmp	L117
L126:
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	$LC98, 4(%esp)
	movl	%eax, (%esp)
	call	_strcmp
	testl	%eax, %eax
	jne	L127
	movl	8(%ebp), %eax
	movl	$44, 8(%eax)
	jmp	L117
L127:
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	$LC99, 4(%esp)
	movl	%eax, (%esp)
	call	_strcmp
	testl	%eax, %eax
	jne	L117
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	$31, %eax
	je	L117
	movl	8(%ebp), %eax
	movl	$33, 8(%eax)
	nop
L117:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE34:
	.section .rdata,"dr"
	.align 4
LC100:
	.ascii "\12\11============FUNC CALL============\0"
LC101:
	.ascii "\12 func call name : %s\0"
	.align 4
LC102:
	.ascii "\12Func Call : [%s] at index %d : \12\0"
	.align 4
LC103:
	.ascii "\12\11============FUNC CALL END============\0"
	.text
	.globl	_Token_printFuncCall
	.def	_Token_printFuncCall;	.scl	2;	.type	32;	.endef
_Token_printFuncCall:
LFB35:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	$LC100, (%esp)
	call	_puts
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$LC101, (%esp)
	call	_printf
	movl	$0, -12(%ebp)
	jmp	L129
L130:
	movl	-12(%ebp), %edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_Vector_get
	movl	%eax, -16(%ebp)
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	-12(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$LC102, (%esp)
	call	_printf
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_Token_print
	addl	$1, -12(%ebp)
L129:
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	(%eax), %edx
	movl	-12(%ebp), %eax
	cmpl	%eax, %edx
	ja	L130
	movl	$LC103, (%esp)
	call	_puts
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE35:
	.section .rdata,"dr"
	.align 4
LC104:
	.ascii "\12\11============CODE BLOCK============\0"
LC105:
	.ascii "%s vector size : %zu\0"
	.align 4
LC106:
	.ascii "\12Func Call : [%s] at index %d at index %d: \12\0"
	.align 4
LC107:
	.ascii "\12\11============CODE BLOCK END============\0"
	.text
	.globl	_Token_printBlock
	.def	_Token_printBlock;	.scl	2;	.type	32;	.endef
_Token_printBlock:
LFB36:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	$LC104, (%esp)
	call	_puts
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$LC105, (%esp)
	call	_printf
	movl	$0, -12(%ebp)
	jmp	L132
L135:
	movl	-12(%ebp), %edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_Vector_get
	movl	%eax, -20(%ebp)
	movl	$0, -16(%ebp)
	jmp	L133
L134:
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_Vector_get
	movl	%eax, -24(%ebp)
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	-16(%ebp), %edx
	movl	%edx, 12(%esp)
	movl	-12(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$LC106, (%esp)
	call	_printf
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	_Token_print
	addl	$1, -16(%ebp)
L133:
	movl	-20(%ebp), %eax
	movl	(%eax), %edx
	movl	-16(%ebp), %eax
	cmpl	%eax, %edx
	ja	L134
	addl	$1, -12(%ebp)
L132:
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	(%eax), %edx
	movl	-12(%ebp), %eax
	cmpl	%eax, %edx
	ja	L135
	movl	$LC107, (%esp)
	call	_puts
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE36:
	.section .rdata,"dr"
LC108:
	.ascii "\12\12this is a test\12\0"
LC109:
	.ascii "\33[0;38m\0"
LC110:
	.ascii "\12TOKEN IS NULL\0"
LC111:
	.ascii "\12----LIST----\0"
LC112:
	.ascii "\12\11 %s INDEX [%d] | \0"
LC113:
	.ascii "\12LIST END\0"
	.text
	.globl	_Token_printList
	.def	_Token_printList;	.scl	2;	.type	32;	.endef
_Token_printList:
LFB37:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$56, %esp
	movl	$LC108, (%esp)
	call	_puts
	movl	$LC87, (%esp)
	call	_printf
	movl	$LC109, (%esp)
	call	_printf
	cmpl	$0, 8(%ebp)
	jne	L137
	movl	$LC110, (%esp)
	call	_printf
	jmp	L136
L137:
	movl	$LC111, (%esp)
	call	_puts
	movl	$0, -12(%ebp)
	jmp	L139
L142:
	movl	-12(%ebp), %edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_Vector_get
	movl	%eax, -20(%ebp)
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	-12(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$LC112, (%esp)
	call	_printf
	movl	$0, -16(%ebp)
	jmp	L140
L141:
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_Vector_get
	movl	%eax, -24(%ebp)
	movl	-24(%ebp), %eax
	fldl	(%eax)
	movl	-24(%ebp), %eax
	movl	8(%eax), %eax
	movl	_Token_types_map(,%eax,4), %eax
	fstpl	12(%esp)
	movl	%eax, 8(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC85, (%esp)
	call	_printf
	addl	$1, -16(%ebp)
L140:
	movl	-20(%ebp), %eax
	movl	(%eax), %edx
	movl	-16(%ebp), %eax
	cmpl	%eax, %edx
	ja	L141
	addl	$1, -12(%ebp)
L139:
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	(%eax), %edx
	movl	-12(%ebp), %eax
	cmpl	%eax, %edx
	ja	L142
	movl	$LC113, (%esp)
	call	_printf
	movl	$LC87, (%esp)
	call	_printf
L136:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE37:
	.section .rdata,"dr"
LC114:
	.ascii "\33[0;35m\0"
	.align 4
LC115:
	.ascii "\12\11tok | %s\12\11value : %f\12\11String value : %s\12\11line : %zu\12\11char : %zu\0"
	.text
	.globl	_Token_print
	.def	_Token_print;	.scl	2;	.type	32;	.endef
_Token_print:
LFB38:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$36, %esp
	.cfi_offset 3, -12
	movl	$LC114, (%esp)
	call	_printf
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	$30, %eax
	je	L145
	cmpl	$31, %eax
	je	L146
	jmp	L148
L145:
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_Token_printBlock
	movl	$LC87, (%esp)
	call	_printf
	jmp	L143
L146:
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_Token_printFuncCall
	movl	$LC87, (%esp)
	call	_printf
	jmp	L143
L148:
	movl	8(%ebp), %eax
	movl	20(%eax), %ebx
	movl	8(%ebp), %eax
	movl	16(%eax), %ecx
	movl	8(%ebp), %eax
	movl	12(%eax), %edx
	movl	8(%ebp), %eax
	fldl	(%eax)
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	_Token_types_map(,%eax,4), %eax
	movl	%ebx, 24(%esp)
	movl	%ecx, 20(%esp)
	movl	%edx, 16(%esp)
	fstpl	8(%esp)
	movl	%eax, 4(%esp)
	movl	$LC115, (%esp)
	call	_printf
L143:
	addl	$36, %esp
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE38:
	.globl	_Token_removeNeighborNewLines
	.def	_Token_removeNeighborNewLines;	.scl	2;	.type	32;	.endef
_Token_removeNeighborNewLines:
LFB39:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	$24, (%esp)
	call	_Vector_init
	movl	%eax, -20(%ebp)
	movl	$0, -12(%ebp)
	movl	$0, -16(%ebp)
	jmp	L150
L157:
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_Vector_get
	movl	%eax, -24(%ebp)
	movl	-24(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	$11, %eax
	jne	L151
	cmpl	$0, -16(%ebp)
	je	L159
L151:
	movl	-24(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	$11, %eax
	jne	L153
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	-1(%eax), %edx
	movl	-16(%ebp), %eax
	cmpl	%eax, %edx
	je	L159
L153:
	cmpl	$0, -12(%ebp)
	je	L155
	movl	-24(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	$11, %eax
	je	L160
L155:
	movl	-24(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	$11, %eax
	jne	L156
	cmpl	$0, -12(%ebp)
	jne	L156
	movl	$1, -12(%ebp)
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_Vector_push
	jmp	L154
L156:
	movl	-24(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	$11, %eax
	je	L154
	movl	$0, -12(%ebp)
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_Vector_push
	jmp	L154
L159:
	nop
	jmp	L154
L160:
	nop
L154:
	addl	$1, -16(%ebp)
L150:
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	-16(%ebp), %eax
	cmpl	%eax, %edx
	ja	L157
	movl	-20(%ebp), %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE39:
	.globl	_Token_splitAt
	.def	_Token_splitAt;	.scl	2;	.type	32;	.endef
_Token_splitAt:
LFB40:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	$12, (%esp)
	call	_Vector_init
	movl	%eax, -20(%ebp)
	movl	$24, (%esp)
	call	_Vector_init
	movl	%eax, -12(%ebp)
	movl	$0, -16(%ebp)
	jmp	L162
L166:
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_Vector_get
	movl	%eax, -24(%ebp)
	movl	-24(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	L163
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	L169
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_Vector_push
	movl	$24, (%esp)
	call	_Vector_init
	movl	%eax, -12(%ebp)
	jmp	L165
L163:
	movl	-24(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_Vector_push
	jmp	L165
L169:
	nop
L165:
	addl	$1, -16(%ebp)
L162:
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	cmpl	-16(%ebp), %eax
	ja	L166
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	je	L167
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_Vector_push
L167:
	movl	-20(%ebp), %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE40:
	.section .rdata,"dr"
	.align 4
LC116:
	.ascii "\12token at Token_splitAtSubBlocks: %s\0"
	.text
	.globl	_Token_splitAtSubBlocks
	.def	_Token_splitAtSubBlocks;	.scl	2;	.type	32;	.endef
_Token_splitAtSubBlocks:
LFB41:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	$0, -12(%ebp)
	jmp	L171
L175:
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_Vector_get
	movl	%eax, -20(%ebp)
	movl	$0, -16(%ebp)
	jmp	L172
L174:
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_Vector_get
	movl	%eax, -24(%ebp)
	movl	-24(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$LC116, (%esp)
	call	_printf
	movl	-24(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	$30, %eax
	jne	L173
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	movl	$11, 4(%esp)
	movl	%eax, (%esp)
	call	_Token_splitAt
	movl	%eax, %edx
	movl	-24(%ebp), %eax
	movl	%edx, (%eax)
	movl	-24(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	_Token_splitAtSubBlocks
L173:
	addl	$1, -16(%ebp)
L172:
	movl	-20(%ebp), %eax
	movl	(%eax), %edx
	movl	-16(%ebp), %eax
	cmpl	%eax, %edx
	ja	L174
	addl	$1, -12(%ebp)
L171:
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	-12(%ebp), %eax
	cmpl	%eax, %edx
	ja	L175
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE41:
	.globl	_Token_isToken
	.def	_Token_isToken;	.scl	2;	.type	32;	.endef
_Token_isToken:
LFB42:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$4, %esp
	movl	8(%ebp), %eax
	movb	%al, -4(%ebp)
	movsbl	-4(%ebp), %eax
	cmpl	$125, %eax
	ja	L177
	movl	L179(,%eax,4), %eax
	jmp	*%eax
	.section .rdata,"dr"
	.align 4
L179:
	.long	L178
	.long	L177
	.long	L177
	.long	L177
	.long	L177
	.long	L177
	.long	L177
	.long	L177
	.long	L177
	.long	L180
	.long	L181
	.long	L177
	.long	L177
	.long	L177
	.long	L177
	.long	L177
	.long	L177
	.long	L177
	.long	L177
	.long	L177
	.long	L177
	.long	L177
	.long	L177
	.long	L177
	.long	L177
	.long	L177
	.long	L177
	.long	L177
	.long	L177
	.long	L177
	.long	L177
	.long	L177
	.long	L182
	.long	L177
	.long	L183
	.long	L177
	.long	L177
	.long	L177
	.long	L177
	.long	L177
	.long	L184
	.long	L185
	.long	L186
	.long	L187
	.long	L188
	.long	L189
	.long	L177
	.long	L190
	.long	L177
	.long	L177
	.long	L177
	.long	L177
	.long	L177
	.long	L177
	.long	L177
	.long	L177
	.long	L177
	.long	L177
	.long	L177
	.long	L177
	.long	L177
	.long	L191
	.long	L177
	.long	L177
	.long	L177
	.long	L177
	.long	L177
	.long	L177
	.long	L177
	.long	L177
	.long	L177
	.long	L177
	.long	L177
	.long	L177
	.long	L177
	.long	L177
	.long	L177
	.long	L177
	.long	L177
	.long	L177
	.long	L177
	.long	L177
	.long	L177
	.long	L177
	.long	L177
	.long	L177
	.long	L177
	.long	L177
	.long	L177
	.long	L177
	.long	L177
	.long	L177
	.long	L177
	.long	L177
	.long	L177
	.long	L177
	.long	L177
	.long	L177
	.long	L177
	.long	L177
	.long	L177
	.long	L177
	.long	L177
	.long	L177
	.long	L177
	.long	L177
	.long	L177
	.long	L177
	.long	L177
	.long	L177
	.long	L177
	.long	L177
	.long	L177
	.long	L177
	.long	L177
	.long	L177
	.long	L177
	.long	L177
	.long	L177
	.long	L177
	.long	L177
	.long	L177
	.long	L177
	.long	L192
	.long	L177
	.long	L193
	.text
L180:
	movl	$1, %eax
	jmp	L194
L182:
	movl	$1, %eax
	jmp	L194
L187:
	movl	$1, %eax
	jmp	L194
L189:
	movl	$1, %eax
	jmp	L194
L186:
	movl	$1, %eax
	jmp	L194
L190:
	movl	$1, %eax
	jmp	L194
L178:
	movl	$1, %eax
	jmp	L194
L184:
	movl	$1, %eax
	jmp	L194
L185:
	movl	$1, %eax
	jmp	L194
L192:
	movl	$1, %eax
	jmp	L194
L193:
	movl	$1, %eax
	jmp	L194
L191:
	movl	$1, %eax
	jmp	L194
L188:
	movl	$1, %eax
	jmp	L194
L181:
	movl	$1, %eax
	jmp	L194
L183:
	movl	$1, %eax
	jmp	L194
L177:
	movl	$0, %eax
L194:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE42:
	.globl	_Token_isOp
	.def	_Token_isOp;	.scl	2;	.type	32;	.endef
_Token_isOp:
LFB43:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	cmpl	$37, 8(%ebp)
	ja	L196
	movl	8(%ebp), %eax
	sall	$2, %eax
	addl	$L198, %eax
	movl	(%eax), %eax
	jmp	*%eax
	.section .rdata,"dr"
	.align 4
L198:
	.long	L196
	.long	L197
	.long	L197
	.long	L196
	.long	L196
	.long	L196
	.long	L196
	.long	L196
	.long	L196
	.long	L197
	.long	L196
	.long	L196
	.long	L196
	.long	L197
	.long	L197
	.long	L197
	.long	L197
	.long	L197
	.long	L197
	.long	L197
	.long	L197
	.long	L196
	.long	L196
	.long	L196
	.long	L196
	.long	L196
	.long	L196
	.long	L196
	.long	L196
	.long	L196
	.long	L196
	.long	L196
	.long	L196
	.long	L196
	.long	L196
	.long	L196
	.long	L196
	.long	L197
	.text
L197:
	movl	$1, %eax
	jmp	L199
L196:
	movl	$0, %eax
L199:
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE43:
	.globl	_Token_isTerm
	.def	_Token_isTerm;	.scl	2;	.type	32;	.endef
_Token_isTerm:
LFB44:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	movl	8(%ebp), %eax
	subl	$3, %eax
	cmpl	$24, %eax
	ja	L201
	movl	L203(,%eax,4), %eax
	jmp	*%eax
	.section .rdata,"dr"
	.align 4
L203:
	.long	L202
	.long	L202
	.long	L201
	.long	L201
	.long	L201
	.long	L201
	.long	L201
	.long	L201
	.long	L201
	.long	L202
	.long	L201
	.long	L201
	.long	L201
	.long	L201
	.long	L201
	.long	L201
	.long	L201
	.long	L201
	.long	L201
	.long	L202
	.long	L202
	.long	L202
	.long	L202
	.long	L201
	.long	L202
	.text
L202:
	movl	$1, %eax
	jmp	L204
L201:
	movl	$0, %eax
L204:
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE44:
	.globl	_removeFront
	.def	_removeFront;	.scl	2;	.type	32;	.endef
_removeFront:
LFB45:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	$24, (%esp)
	call	_Vector_init
	movl	%eax, -16(%ebp)
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	testl	%eax, %eax
	jne	L206
	movl	8(%ebp), %eax
	jmp	L207
L206:
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_Vector_get
	movl	8(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	L208
	movl	$1, -12(%ebp)
	jmp	L209
L210:
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_Vector_get
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_Vector_push
	addl	$1, -12(%ebp)
L209:
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	-12(%ebp), %eax
	cmpl	%eax, %edx
	ja	L210
L208:
	movl	-16(%ebp), %eax
L207:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE45:
	.globl	_Token_filterType
	.def	_Token_filterType;	.scl	2;	.type	32;	.endef
_Token_filterType:
LFB46:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	$24, (%esp)
	call	_Vector_init
	movl	%eax, -16(%ebp)
	movl	$0, -12(%ebp)
	jmp	L212
L214:
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_Vector_get
	movl	8(%eax), %eax
	cmpl	12(%ebp), %eax
	je	L213
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_Vector_get
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_Vector_push
L213:
	addl	$1, -12(%ebp)
L212:
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	-12(%ebp), %eax
	cmpl	%eax, %edx
	ja	L214
	movl	-16(%ebp), %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE46:
	.globl	_ASTNode_init
	.def	_ASTNode_init;	.scl	2;	.type	32;	.endef
_ASTNode_init:
LFB47:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	$20, 4(%esp)
	movl	$1, (%esp)
	call	_calloc
	movl	%eax, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, (%eax)
	movl	-12(%ebp), %eax
	movl	$0, 4(%eax)
	movl	-12(%ebp), %eax
	movl	$0, 8(%eax)
	movl	$12, 4(%esp)
	movl	$1, (%esp)
	call	_calloc
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	movl	%edx, 12(%eax)
	movl	-12(%ebp), %eax
	movl	$0, 16(%eax)
	movl	-12(%ebp), %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE47:
	.globl	_ASTNode_BinOp_init
	.def	_ASTNode_BinOp_init;	.scl	2;	.type	32;	.endef
_ASTNode_BinOp_init:
LFB48:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	$20, 4(%esp)
	movl	$1, (%esp)
	call	_calloc
	movl	%eax, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	16(%ebp), %edx
	movl	%edx, (%eax)
	movl	-12(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, 4(%eax)
	movl	-12(%ebp), %eax
	movl	12(%ebp), %edx
	movl	%edx, 8(%eax)
	movl	$12, 4(%esp)
	movl	$1, (%esp)
	call	_calloc
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	movl	%edx, 12(%eax)
	movl	-12(%ebp), %eax
	movl	$0, 16(%eax)
	movl	-12(%ebp), %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE48:
	.section .rdata,"dr"
LC117:
	.ascii "\12\12node children are %s :\12 { \0"
LC118:
	.ascii "\12\11 at [%d] : %s \0"
	.align 4
LC119:
	.ascii "\12\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11 type : %s\12\11\11\11\11\11\11\11\11\11\11===================nested statements %d===================\12\0"
	.align 4
LC120:
	.ascii "\12\11\11\11\11\11\11\11\11\11\11 type : %s\12\11\11\11\11\11\11\11\11\11\11===================end nested statements %d===================\12\0"
LC121:
	.ascii "\12\12node children are %s :\12 } \0"
	.text
	.globl	_ASTNode_printNestedStatements
	.def	_ASTNode_printNestedStatements;	.scl	2;	.type	32;	.endef
_ASTNode_printNestedStatements:
LFB49:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$LC117, (%esp)
	call	_printf
	movl	$0, -12(%ebp)
	jmp	L221
L222:
	movl	-12(%ebp), %edx
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_Vector_get
	movl	%eax, -20(%ebp)
	movl	-20(%ebp), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movl	%eax, 8(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC118, (%esp)
	call	_printf
	addl	$1, -12(%ebp)
L221:
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	(%eax), %edx
	movl	-12(%ebp), %eax
	cmpl	%eax, %edx
	ja	L222
	movl	$0, -16(%ebp)
	jmp	L223
L226:
	movl	-16(%ebp), %edx
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_Vector_get
	movl	16(%eax), %eax
	testl	%eax, %eax
	jne	L227
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movl	-16(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$LC119, (%esp)
	call	_printf
	movl	-16(%ebp), %edx
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_Vector_get
	movl	%eax, -24(%ebp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	_ASTNode_print
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movl	-16(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$LC120, (%esp)
	call	_printf
	jmp	L225
L227:
	nop
L225:
	addl	$1, -16(%ebp)
L223:
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	(%eax), %edx
	movl	-16(%ebp), %eax
	cmpl	%eax, %edx
	ja	L226
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$LC121, (%esp)
	call	_printf
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE49:
	.section .rdata,"dr"
LC122:
	.ascii "\33[0;36m\0"
	.align 4
LC123:
	.ascii "\12Node->value : %f\12Node->type : %s\12Node->stringValue : %s\12\11line : %zu\12\11colmn : %zu\0"
LC124:
	.ascii "\12Node->token : \0"
LC125:
	.ascii "\33[0;31m\0"
LC126:
	.ascii "\12\11Node->left is NULL\0"
	.align 4
LC127:
	.ascii "\12\11Node->left->value : %f\12\11Node->left->type : %s\12\11Node->left->stringValue : %s\12\11node->left->line : %zu\12\11node->left->colmn : %zu\0"
LC128:
	.ascii "\12\11Node->left->token : \0"
LC129:
	.ascii "\12\11Node->right is NULL\0"
	.align 4
LC130:
	.ascii "\12\11Node->right->value : %f\12\11Node->right->type : %s\12\11Node->right->stringValue : %s\12\11node->right->line : %zu\12\11node->right->colmn : %zu\0"
LC131:
	.ascii "\12\12END %s\12\12\0"
	.text
	.globl	_ASTNode_print
	.def	_ASTNode_print;	.scl	2;	.type	32;	.endef
_ASTNode_print:
LFB50:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	subl	$48, %esp
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	cmpl	$0, 8(%ebp)
	je	L244
	movl	8(%ebp), %eax
	movl	16(%eax), %eax
	cmpl	$1, %eax
	je	L245
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	8(%eax), %eax
	cmpl	$8, %eax
	je	L245
	movl	8(%ebp), %eax
	movl	$1, 16(%eax)
	movl	$LC122, (%esp)
	call	_printf
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	20(%eax), %ebx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	16(%eax), %ecx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	12(%eax), %edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	8(%eax), %eax
	movl	_Token_types_map(,%eax,4), %eax
	movl	8(%ebp), %esi
	movl	(%esi), %esi
	fldl	(%esi)
	movl	%ebx, 24(%esp)
	movl	%ecx, 20(%esp)
	movl	%edx, 16(%esp)
	movl	%eax, 12(%esp)
	fstpl	4(%esp)
	movl	$LC123, (%esp)
	call	_printf
	movl	$LC124, (%esp)
	call	_puts
	movl	$0, -12(%ebp)
	movl	$0, -16(%ebp)
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	8(%eax), %eax
	cmpl	$30, %eax
	jb	L233
	cmpl	$31, %eax
	jbe	L234
	cmpl	$34, %eax
	jne	L233
L234:
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ASTNode_printNestedStatements
	nop
L233:
	movl	$LC87, (%esp)
	call	_printf
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	jne	L235
	movl	$LC125, (%esp)
	call	_printf
	movl	$LC126, (%esp)
	call	_printf
	movl	$LC87, (%esp)
	call	_printf
	jmp	L236
L235:
	movl	$LC88, (%esp)
	call	_printf
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	movl	20(%eax), %ebx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	movl	16(%eax), %ecx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	movl	12(%eax), %edx
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	movl	8(%eax), %eax
	movl	_Token_types_map(,%eax,4), %eax
	movl	8(%ebp), %esi
	movl	4(%esi), %esi
	movl	(%esi), %esi
	fldl	(%esi)
	movl	%ebx, 24(%esp)
	movl	%ecx, 20(%esp)
	movl	%edx, 16(%esp)
	movl	%eax, 12(%esp)
	fstpl	4(%esp)
	movl	$LC127, (%esp)
	call	_printf
	movl	$LC124, (%esp)
	call	_puts
	movl	$LC128, (%esp)
	call	_puts
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	movl	8(%eax), %eax
	cmpl	$30, %eax
	jb	L237
	cmpl	$31, %eax
	jbe	L238
	cmpl	$34, %eax
	jne	L237
L238:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	_ASTNode_printNestedStatements
	nop
L237:
	movl	$LC87, (%esp)
	call	_printf
	movl	$1, -12(%ebp)
L236:
	movl	$10, (%esp)
	call	_putchar
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	jne	L239
	movl	$LC125, (%esp)
	call	_printf
	movl	$LC129, (%esp)
	call	_printf
	movl	$LC87, (%esp)
	call	_printf
	jmp	L240
L239:
	movl	$LC88, (%esp)
	call	_printf
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	(%eax), %eax
	movl	20(%eax), %ebx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	(%eax), %eax
	movl	16(%eax), %ecx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	(%eax), %eax
	movl	12(%eax), %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	(%eax), %eax
	movl	8(%eax), %eax
	movl	_Token_types_map(,%eax,4), %eax
	movl	8(%ebp), %esi
	movl	8(%esi), %esi
	movl	(%esi), %esi
	fldl	(%esi)
	movl	%ebx, 24(%esp)
	movl	%ecx, 20(%esp)
	movl	%edx, 16(%esp)
	movl	%eax, 12(%esp)
	fstpl	4(%esp)
	movl	$LC130, (%esp)
	call	_printf
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	(%eax), %eax
	movl	8(%eax), %eax
	cmpl	$30, %eax
	jb	L241
	cmpl	$31, %eax
	jbe	L242
	cmpl	$34, %eax
	jne	L241
L242:
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, (%esp)
	call	_ASTNode_printNestedStatements
	nop
L241:
	movl	$LC87, (%esp)
	call	_printf
	movl	$1, -16(%ebp)
L240:
	movl	$LC122, (%esp)
	call	_printf
	movl	$LC87, (%esp)
	call	_printf
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	jne	L243
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	jne	L243
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	12(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$LC131, (%esp)
	call	_printf
	jmp	L228
L243:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	_ASTNode_print
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, (%esp)
	call	_ASTNode_print
	jmp	L228
L244:
	nop
	jmp	L228
L245:
	nop
L228:
	addl	$48, %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE50:
	.def	_Parser_init;	.scl	3;	.type	32;	.endef
_Parser_init:
LFB51:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	$20, 4(%esp)
	movl	$1, (%esp)
	call	_calloc
	movl	%eax, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, (%eax)
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_Vector_get
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	movl	%edx, 4(%eax)
	movl	-12(%ebp), %eax
	movl	$0, 8(%eax)
	movl	-12(%ebp), %eax
	movl	$0, 12(%eax)
	movl	-12(%ebp), %eax
	movl	$0, 16(%eax)
	movl	-12(%ebp), %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE51:
	.section .rdata,"dr"
LC132:
	.ascii "\12PARSER ERROR AT INDEX %zu\0"
LC133:
	.ascii "\12PARSER TOKEN ERROR DUMP\0"
	.text
	.def	_Parser_error;	.scl	3;	.type	32;	.endef
_Parser_error:
LFB52:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$LC132, (%esp)
	call	_printf
	movl	$LC133, (%esp)
	call	_printf
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	_Token_print
	movl	$1, (%esp)
	call	_exit
	.cfi_endproc
LFE52:
	.section .rdata,"dr"
LC134:
	.ascii "\12ERROR AT PARSER_EAT\0"
	.text
	.def	_Parser_eat;	.scl	3;	.type	32;	.endef
_Parser_eat:
LFB53:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jb	L250
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_Parser_isRecursiveType
	testl	%eax, %eax
	je	L253
L250:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	8(%eax), %eax
	cmpl	12(%ebp), %eax
	jne	L252
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_Vector_get
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax)
	jmp	L249
L252:
	movl	$LC134, (%esp)
	call	_puts
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_Parser_error
	jmp	L249
L253:
	nop
L249:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE53:
	.section .rdata,"dr"
LC135:
	.ascii "\12 PARSER_FACTOR : \0"
	.align 4
LC136:
	.ascii "\12ASTNODE_factor HAS RETURNED A NULL RESULT with %s\12\0"
LC137:
	.ascii "\12ASTNODE_FACTOR TOKEN DUMP\0"
	.text
	.def	_Parser_factor;	.scl	3;	.type	32;	.endef
_Parser_factor:
LFB54:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
	movl	$0, -20(%ebp)
	movl	$LC135, (%esp)
	call	_puts
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	_Token_print
	movl	-16(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	$44, %eax
	ja	L255
	movl	L257(,%eax,4), %eax
	jmp	*%eax
	.section .rdata,"dr"
	.align 4
L257:
	.long	L255
	.long	L255
	.long	L256
	.long	L255
	.long	L255
	.long	L255
	.long	L258
	.long	L255
	.long	L259
	.long	L255
	.long	L255
	.long	L255
	.long	L255
	.long	L255
	.long	L255
	.long	L255
	.long	L255
	.long	L255
	.long	L255
	.long	L255
	.long	L255
	.long	L260
	.long	L255
	.long	L255
	.long	L255
	.long	L255
	.long	L261
	.long	L255
	.long	L259
	.long	L262
	.long	L263
	.long	L264
	.long	L255
	.long	L265
	.long	L266
	.long	L265
	.long	L255
	.long	L255
	.long	L265
	.long	L259
	.long	L256
	.long	L259
	.long	L260
	.long	L260
	.long	L260
	.text
L259:
	movl	-16(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_Parser_eat
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_ASTNode_init
	jmp	L267
L262:
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	(%eax), %eax
	cmpl	%eax, %edx
	jnb	L268
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_Vector_get
	movl	8(%eax), %eax
	cmpl	$29, %eax
	jne	L268
	movl	-16(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_Parser_eat
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_Parser_factor
	movl	%eax, %edx
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$0, (%esp)
	call	_ASTNode_BinOp_init
	jmp	L267
L268:
	movl	-16(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_Parser_eat
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_ASTNode_init
	jmp	L267
L264:
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_ASTNode_init
	movl	%eax, -20(%ebp)
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	$32, 4(%esp)
	movl	%eax, (%esp)
	call	_Token_splitAt
	movl	%eax, (%esp)
	call	_Parser_parseTokenVector
	movl	%eax, %edx
	movl	-20(%ebp), %eax
	movl	%edx, 12(%eax)
	movl	-16(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_Parser_eat
	movl	-20(%ebp), %eax
	jmp	L267
L263:
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_ASTNode_init
	movl	%eax, -20(%ebp)
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	_Token_removeNeighborNewLines
	movl	%eax, -24(%ebp)
	movl	$0, -12(%ebp)
	jmp	L269
L270:
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	_Vector_get
	movl	%eax, (%esp)
	call	_Parser_parse
	movl	%eax, %edx
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_Vector_push
	addl	$1, -12(%ebp)
L269:
	movl	-24(%ebp), %eax
	movl	(%eax), %edx
	movl	-12(%ebp), %eax
	cmpl	%eax, %edx
	ja	L270
	movl	-16(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_Parser_eat
	movl	-20(%ebp), %eax
	jmp	L267
L266:
	movl	-16(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_Parser_eat
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_Parser_factor
	movl	%eax, %edx
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$0, (%esp)
	call	_ASTNode_BinOp_init
	movl	%eax, -20(%ebp)
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, (%esp)
	call	_Parser_parse
	movl	%eax, %edx
	movl	-20(%ebp), %eax
	movl	12(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_Vector_push
	movl	-20(%ebp), %eax
	jmp	L267
L265:
	movl	-16(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_Parser_eat
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_Parser_expr
	movl	%eax, %edx
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$0, (%esp)
	call	_ASTNode_BinOp_init
	jmp	L267
L256:
	movl	-16(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_Parser_eat
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_Parser_factor
	movl	%eax, %edx
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$0, (%esp)
	call	_ASTNode_BinOp_init
	jmp	L267
L260:
	movl	-16(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_Parser_eat
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_Parser_factor
	movl	%eax, %edx
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$0, (%esp)
	call	_ASTNode_BinOp_init
	jmp	L267
L261:
	movl	-16(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_Parser_eat
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_Parser_factor
	movl	%eax, %edx
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$0, (%esp)
	call	_ASTNode_BinOp_init
	jmp	L267
L258:
	movl	$6, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_Parser_eat
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_Parser_expr
	movl	%eax, -20(%ebp)
	movl	$7, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_Parser_eat
	movl	-20(%ebp), %eax
	jmp	L267
L255:
	movl	-16(%ebp), %eax
	movl	8(%eax), %eax
	movl	_Token_types_map(,%eax,4), %eax
	movl	%eax, 4(%esp)
	movl	$LC136, (%esp)
	call	_printf
	movl	$LC137, (%esp)
	call	_puts
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	_Token_print
	movl	$1, (%esp)
	call	_exit
L267:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE54:
	.def	_Parser_term;	.scl	3;	.type	32;	.endef
_Parser_term:
LFB55:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_Parser_factor
	movl	%eax, -12(%ebp)
	jmp	L272
L276:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
	movl	-16(%ebp), %eax
	movl	8(%eax), %eax
	subl	$3, %eax
	cmpl	$24, %eax
	ja	L273
	movl	L275(,%eax,4), %eax
	jmp	*%eax
	.section .rdata,"dr"
	.align 4
L275:
	.long	L274
	.long	L274
	.long	L273
	.long	L273
	.long	L273
	.long	L273
	.long	L273
	.long	L273
	.long	L273
	.long	L274
	.long	L273
	.long	L273
	.long	L273
	.long	L273
	.long	L273
	.long	L273
	.long	L273
	.long	L273
	.long	L273
	.long	L274
	.long	L274
	.long	L274
	.long	L274
	.long	L273
	.long	L274
	.text
L274:
	movl	-16(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_Parser_eat
	nop
L273:
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_Parser_factor
	movl	%eax, %edx
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_ASTNode_BinOp_init
	movl	%eax, -12(%ebp)
L272:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	8(%eax), %eax
	movl	%eax, (%esp)
	call	_Token_isTerm
	testl	%eax, %eax
	jne	L276
	movl	-12(%ebp), %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE55:
	.def	_Parser_expr;	.scl	3;	.type	32;	.endef
_Parser_expr:
LFB56:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	8(%eax), %eax
	cmpl	$11, %eax
	jne	L279
	movl	$0, %eax
	jmp	L280
L279:
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_Parser_term
	movl	%eax, -12(%ebp)
	jmp	L281
L291:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, -16(%ebp)
	movl	-16(%ebp), %eax
	movl	8(%eax), %eax
	cmpl	$37, %eax
	ja	L282
	movl	L284(,%eax,4), %eax
	jmp	*%eax
	.section .rdata,"dr"
	.align 4
L284:
	.long	L282
	.long	L283
	.long	L285
	.long	L282
	.long	L282
	.long	L282
	.long	L282
	.long	L282
	.long	L282
	.long	L286
	.long	L282
	.long	L282
	.long	L282
	.long	L287
	.long	L287
	.long	L287
	.long	L287
	.long	L287
	.long	L287
	.long	L288
	.long	L288
	.long	L282
	.long	L282
	.long	L282
	.long	L282
	.long	L282
	.long	L282
	.long	L282
	.long	L282
	.long	L282
	.long	L282
	.long	L282
	.long	L282
	.long	L282
	.long	L282
	.long	L282
	.long	L282
	.long	L289
	.text
L283:
	movl	-16(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_Parser_eat
	jmp	L282
L289:
	movl	-16(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_Parser_eat
	jmp	L282
L287:
	movl	-16(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_Parser_eat
	movl	8(%ebp), %eax
	movl	$1, 12(%eax)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_Parser_expr
	movl	%eax, %edx
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_ASTNode_BinOp_init
	movl	%eax, -12(%ebp)
	jmp	L281
L285:
	movl	-16(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_Parser_eat
	jmp	L282
L286:
	movl	-16(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_Parser_eat
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_Parser_expr
	movl	%eax, %edx
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_ASTNode_BinOp_init
	movl	%eax, -12(%ebp)
	jmp	L281
L288:
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	L290
	movl	8(%ebp), %eax
	movl	$0, 12(%eax)
	movl	-12(%ebp), %eax
	jmp	L280
L290:
	movl	-16(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_Parser_eat
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_Parser_expr
	movl	%eax, %edx
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_ASTNode_BinOp_init
	movl	%eax, -12(%ebp)
	jmp	L281
L282:
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_Parser_term
	movl	%eax, %edx
	movl	-16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	%edx, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_ASTNode_BinOp_init
	movl	%eax, -12(%ebp)
L281:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	8(%eax), %eax
	movl	%eax, (%esp)
	call	_Token_isOp
	testl	%eax, %eax
	jne	L291
	movl	-12(%ebp), %eax
L280:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE56:
	.globl	_Parser_parseTokenVector
	.def	_Parser_parseTokenVector;	.scl	2;	.type	32;	.endef
_Parser_parseTokenVector:
LFB57:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	$20, (%esp)
	call	_Vector_init
	movl	%eax, -16(%ebp)
	movl	$0, -12(%ebp)
	jmp	L293
L296:
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_Vector_get
	movl	%eax, (%esp)
	call	_Parser_parse
	movl	%eax, -20(%ebp)
	cmpl	$0, -20(%ebp)
	je	L298
	movl	-20(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_Vector_push
	jmp	L295
L298:
	nop
L295:
	addl	$1, -12(%ebp)
L293:
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	-12(%ebp), %eax
	cmpl	%eax, %edx
	ja	L296
	movl	-16(%ebp), %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE57:
	.section .rdata,"dr"
	.align 4
LC138:
	.ascii "\12test at Parser_parse\12Token set for parse : \0"
LC139:
	.ascii "\12end at Parser_parse\0"
	.text
	.globl	_Parser_parse
	.def	_Parser_parse;	.scl	2;	.type	32;	.endef
_Parser_parse:
LFB58:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	$LC138, (%esp)
	call	_puts
	movl	$0, -12(%ebp)
	jmp	L300
L301:
	movl	-12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_Vector_get
	movl	%eax, (%esp)
	call	_Token_print
	addl	$1, -12(%ebp)
L300:
	movl	8(%ebp), %eax
	movl	(%eax), %edx
	movl	-12(%ebp), %eax
	cmpl	%eax, %edx
	ja	L301
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_Parser_init
	movl	%eax, (%esp)
	call	_Parser_expr
	movl	%eax, -16(%ebp)
	movl	$LC139, (%esp)
	call	_puts
	movl	-16(%ebp), %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE58:
	.globl	_PrintNodes
	.def	_PrintNodes;	.scl	2;	.type	32;	.endef
_PrintNodes:
LFB59:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ASTNode_print
	cmpl	$0, 8(%ebp)
	je	L305
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	_PrintNodes
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	$1, 4(%esp)
	movl	%eax, (%esp)
	call	_PrintNodes
L305:
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE59:
	.globl	_Parser_exit
	.def	_Parser_exit;	.scl	2;	.type	32;	.endef
_Parser_exit:
LFB60:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	nop
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE60:
	.globl	_Parser_isRecursiveType
	.def	_Parser_isRecursiveType;	.scl	2;	.type	32;	.endef
_Parser_isRecursiveType:
LFB61:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	cmpl	$40, 8(%ebp)
	ja	L308
	movl	8(%ebp), %eax
	sall	$2, %eax
	addl	$L310, %eax
	movl	(%eax), %eax
	jmp	*%eax
	.section .rdata,"dr"
	.align 4
L310:
	.long	L308
	.long	L308
	.long	L309
	.long	L308
	.long	L308
	.long	L308
	.long	L308
	.long	L308
	.long	L308
	.long	L308
	.long	L308
	.long	L308
	.long	L308
	.long	L308
	.long	L308
	.long	L308
	.long	L308
	.long	L308
	.long	L308
	.long	L308
	.long	L308
	.long	L309
	.long	L308
	.long	L308
	.long	L308
	.long	L308
	.long	L308
	.long	L308
	.long	L308
	.long	L308
	.long	L308
	.long	L308
	.long	L308
	.long	L309
	.long	L309
	.long	L309
	.long	L308
	.long	L308
	.long	L309
	.long	L308
	.long	L309
	.text
L309:
	movl	$1, %eax
	jmp	L311
L308:
	movl	$0, %eax
L311:
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE61:
	.globl	_Evaluator_init
	.def	_Evaluator_init;	.scl	2;	.type	32;	.endef
_Evaluator_init:
LFB62:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	$4, 4(%esp)
	movl	$1, (%esp)
	call	_calloc
	movl	%eax, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, (%eax)
	movl	-12(%ebp), %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE62:
	.def	_Evaluator_isMathOperator;	.scl	3;	.type	32;	.endef
_Evaluator_isMathOperator:
LFB63:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	8(%eax), %eax
	cmpl	$27, %eax
	ja	L315
	movl	L317(,%eax,4), %eax
	jmp	*%eax
	.section .rdata,"dr"
	.align 4
L317:
	.long	L315
	.long	L316
	.long	L316
	.long	L316
	.long	L316
	.long	L315
	.long	L315
	.long	L315
	.long	L315
	.long	L315
	.long	L315
	.long	L315
	.long	L316
	.long	L315
	.long	L315
	.long	L315
	.long	L315
	.long	L315
	.long	L315
	.long	L315
	.long	L315
	.long	L315
	.long	L316
	.long	L316
	.long	L316
	.long	L316
	.long	L316
	.long	L316
	.text
L316:
	movl	$1, %eax
	jmp	L318
L315:
	movl	$0, %eax
L318:
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE63:
	.def	_Evaluator_isBooleanOperator;	.scl	3;	.type	32;	.endef
_Evaluator_isBooleanOperator:
LFB64:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	8(%eax), %eax
	subl	$13, %eax
	cmpl	$8, %eax
	ja	L320
	movl	$1, %eax
	jmp	L322
L320:
	movl	$0, %eax
L322:
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE64:
	.section .rdata,"dr"
LC141:
	.ascii "\12%f / %f = %f\0"
LC142:
	.ascii "\12%f + %f = %f\0"
LC143:
	.ascii "\12%f - %f = %f\0"
LC144:
	.ascii "\12%f * %f = %f\0"
LC145:
	.ascii "\12%f % %f = %f\0"
LC146:
	.ascii "\12%f & %f = %f\0"
LC147:
	.ascii "\12%f | %f = %f\0"
LC148:
	.ascii "\12%f >> %f = %f\0"
LC149:
	.ascii "\12%f << %f = %f\0"
LC150:
	.ascii "\12~%f = %f\0"
LC151:
	.ascii "\12%f ^ %f = %f\0"
	.text
	.def	_Evaluator_parseBinaryExpression;	.scl	3;	.type	32;	.endef
_Evaluator_parseBinaryExpression:
LFB65:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$72, %esp
	cmpl	$0, 8(%ebp)
	jne	L324
	fld1
	fchs
	jmp	L325
L324:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	L326
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	movl	8(%eax), %eax
	cmpl	$8, %eax
	je	L327
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	_Evaluator_parseBinaryExpression
	fstpl	-16(%ebp)
	jmp	L326
L327:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	movl	8(%eax), %eax
	cmpl	$8, %eax
	jne	L328
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	fldl	(%eax)
	fstpl	-16(%ebp)
	jmp	L326
L328:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	_Evaluator_isBooleanOperator
	testl	%eax, %eax
	je	L326
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	_Evaluator_parseBooleanExpression
	movl	%eax, -36(%ebp)
	fildl	-36(%ebp)
	fstpl	-16(%ebp)
L326:
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	L329
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	(%eax), %eax
	movl	8(%eax), %eax
	cmpl	$8, %eax
	je	L330
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, (%esp)
	call	_Evaluator_parseBinaryExpression
	fstpl	-24(%ebp)
	jmp	L329
L330:
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	(%eax), %eax
	movl	8(%eax), %eax
	cmpl	$8, %eax
	jne	L331
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	(%eax), %eax
	fldl	(%eax)
	fstpl	-24(%ebp)
	jmp	L329
L331:
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, (%esp)
	call	_Evaluator_isBooleanOperator
	testl	%eax, %eax
	je	L329
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, (%esp)
	call	_Evaluator_parseBooleanExpression
	movl	%eax, -36(%ebp)
	fildl	-36(%ebp)
	fstpl	-16(%ebp)
L329:
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	8(%eax), %eax
	cmpl	$27, %eax
	ja	L332
	movl	L334(,%eax,4), %eax
	jmp	*%eax
	.section .rdata,"dr"
	.align 4
L334:
	.long	L332
	.long	L333
	.long	L335
	.long	L336
	.long	L337
	.long	L332
	.long	L332
	.long	L332
	.long	L332
	.long	L332
	.long	L332
	.long	L332
	.long	L338
	.long	L332
	.long	L332
	.long	L332
	.long	L332
	.long	L332
	.long	L332
	.long	L332
	.long	L332
	.long	L332
	.long	L339
	.long	L340
	.long	L341
	.long	L342
	.long	L343
	.long	L344
	.text
L337:
	fldl	-16(%ebp)
	fdivl	-24(%ebp)
	fstpl	20(%esp)
	fldl	-24(%ebp)
	fstpl	12(%esp)
	fldl	-16(%ebp)
	fstpl	4(%esp)
	movl	$LC141, (%esp)
	call	_printf
	fldl	-16(%ebp)
	fdivl	-24(%ebp)
	jmp	L325
L333:
	fldl	-16(%ebp)
	faddl	-24(%ebp)
	fstpl	20(%esp)
	fldl	-24(%ebp)
	fstpl	12(%esp)
	fldl	-16(%ebp)
	fstpl	4(%esp)
	movl	$LC142, (%esp)
	call	_printf
	fldl	-16(%ebp)
	faddl	-24(%ebp)
	jmp	L325
L335:
	fldl	-16(%ebp)
	fsubl	-24(%ebp)
	fstpl	20(%esp)
	fldl	-24(%ebp)
	fstpl	12(%esp)
	fldl	-16(%ebp)
	fstpl	4(%esp)
	movl	$LC143, (%esp)
	call	_printf
	fldl	-16(%ebp)
	fsubl	-24(%ebp)
	jmp	L325
L336:
	fldl	-16(%ebp)
	fmull	-24(%ebp)
	fstpl	20(%esp)
	fldl	-24(%ebp)
	fstpl	12(%esp)
	fldl	-16(%ebp)
	fstpl	4(%esp)
	movl	$LC144, (%esp)
	call	_printf
	fldl	-16(%ebp)
	fmull	-24(%ebp)
	jmp	L325
L338:
	fldl	-16(%ebp)
	fnstcw	-26(%ebp)
	movzwl	-26(%ebp), %eax
	movb	$12, %ah
	movw	%ax, -28(%ebp)
	fldcw	-28(%ebp)
	fistpl	-32(%ebp)
	fldcw	-26(%ebp)
	movl	-32(%ebp), %eax
	fldl	-24(%ebp)
	fldcw	-28(%ebp)
	fistpl	-32(%ebp)
	fldcw	-26(%ebp)
	movl	-32(%ebp), %ecx
	cltd
	idivl	%ecx
	movl	%edx, %eax
	movl	%eax, 20(%esp)
	fldl	-24(%ebp)
	fstpl	12(%esp)
	fldl	-16(%ebp)
	fstpl	4(%esp)
	movl	$LC145, (%esp)
	call	_printf
	fldl	-16(%ebp)
	fnstcw	-26(%ebp)
	movzwl	-26(%ebp), %eax
	movb	$12, %ah
	movw	%ax, -28(%ebp)
	fldcw	-28(%ebp)
	fistpl	-32(%ebp)
	fldcw	-26(%ebp)
	movl	-32(%ebp), %eax
	fldl	-24(%ebp)
	fldcw	-28(%ebp)
	fistpl	-32(%ebp)
	fldcw	-26(%ebp)
	movl	-32(%ebp), %ecx
	cltd
	idivl	%ecx
	movl	%edx, -36(%ebp)
	fildl	-36(%ebp)
	jmp	L325
L339:
	fldl	-16(%ebp)
	fnstcw	-26(%ebp)
	movzwl	-26(%ebp), %eax
	movb	$12, %ah
	movw	%ax, -28(%ebp)
	fldcw	-28(%ebp)
	fistpl	-32(%ebp)
	fldcw	-26(%ebp)
	movl	-32(%ebp), %edx
	fldl	-24(%ebp)
	fldcw	-28(%ebp)
	fistpl	-32(%ebp)
	fldcw	-26(%ebp)
	movl	-32(%ebp), %eax
	andl	%edx, %eax
	movl	%eax, -36(%ebp)
	fildl	-36(%ebp)
	fstpl	20(%esp)
	fldl	-24(%ebp)
	fstpl	12(%esp)
	fldl	-16(%ebp)
	fstpl	4(%esp)
	movl	$LC146, (%esp)
	call	_printf
	fldl	-16(%ebp)
	fnstcw	-26(%ebp)
	movzwl	-26(%ebp), %eax
	movb	$12, %ah
	movw	%ax, -28(%ebp)
	fldcw	-28(%ebp)
	fistpl	-32(%ebp)
	fldcw	-26(%ebp)
	movl	-32(%ebp), %edx
	fldl	-24(%ebp)
	fldcw	-28(%ebp)
	fistpl	-32(%ebp)
	fldcw	-26(%ebp)
	movl	-32(%ebp), %eax
	andl	%edx, %eax
	movl	%eax, -36(%ebp)
	fildl	-36(%ebp)
	jmp	L325
L340:
	fldl	-16(%ebp)
	fnstcw	-26(%ebp)
	movzwl	-26(%ebp), %eax
	movb	$12, %ah
	movw	%ax, -28(%ebp)
	fldcw	-28(%ebp)
	fistpl	-32(%ebp)
	fldcw	-26(%ebp)
	movl	-32(%ebp), %edx
	fldl	-24(%ebp)
	fldcw	-28(%ebp)
	fistpl	-32(%ebp)
	fldcw	-26(%ebp)
	movl	-32(%ebp), %eax
	orl	%edx, %eax
	movl	%eax, -36(%ebp)
	fildl	-36(%ebp)
	fstpl	20(%esp)
	fldl	-24(%ebp)
	fstpl	12(%esp)
	fldl	-16(%ebp)
	fstpl	4(%esp)
	movl	$LC147, (%esp)
	call	_printf
	fldl	-16(%ebp)
	fnstcw	-26(%ebp)
	movzwl	-26(%ebp), %eax
	movb	$12, %ah
	movw	%ax, -28(%ebp)
	fldcw	-28(%ebp)
	fistpl	-32(%ebp)
	fldcw	-26(%ebp)
	movl	-32(%ebp), %edx
	fldl	-24(%ebp)
	fldcw	-28(%ebp)
	fistpl	-32(%ebp)
	fldcw	-26(%ebp)
	movl	-32(%ebp), %eax
	orl	%edx, %eax
	movl	%eax, -36(%ebp)
	fildl	-36(%ebp)
	jmp	L325
L342:
	fldl	-16(%ebp)
	fnstcw	-26(%ebp)
	movzwl	-26(%ebp), %eax
	movb	$12, %ah
	movw	%ax, -28(%ebp)
	fldcw	-28(%ebp)
	fistpl	-32(%ebp)
	fldcw	-26(%ebp)
	movl	-32(%ebp), %edx
	fldl	-24(%ebp)
	fldcw	-28(%ebp)
	fistpl	-32(%ebp)
	fldcw	-26(%ebp)
	movl	-32(%ebp), %eax
	movl	%eax, %ecx
	sarl	%cl, %edx
	movl	%edx, %eax
	movl	%eax, -36(%ebp)
	fildl	-36(%ebp)
	fstpl	20(%esp)
	fldl	-24(%ebp)
	fstpl	12(%esp)
	fldl	-16(%ebp)
	fstpl	4(%esp)
	movl	$LC148, (%esp)
	call	_printf
	fldl	-16(%ebp)
	fnstcw	-26(%ebp)
	movzwl	-26(%ebp), %eax
	movb	$12, %ah
	movw	%ax, -28(%ebp)
	fldcw	-28(%ebp)
	fistpl	-32(%ebp)
	fldcw	-26(%ebp)
	movl	-32(%ebp), %edx
	fldl	-24(%ebp)
	fldcw	-28(%ebp)
	fistpl	-32(%ebp)
	fldcw	-26(%ebp)
	movl	-32(%ebp), %eax
	movl	%eax, %ecx
	sarl	%cl, %edx
	movl	%edx, %eax
	movl	%eax, -36(%ebp)
	fildl	-36(%ebp)
	jmp	L325
L341:
	fldl	-16(%ebp)
	fnstcw	-26(%ebp)
	movzwl	-26(%ebp), %eax
	movb	$12, %ah
	movw	%ax, -28(%ebp)
	fldcw	-28(%ebp)
	fistpl	-32(%ebp)
	fldcw	-26(%ebp)
	movl	-32(%ebp), %edx
	fldl	-24(%ebp)
	fldcw	-28(%ebp)
	fistpl	-32(%ebp)
	fldcw	-26(%ebp)
	movl	-32(%ebp), %eax
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	movl	%eax, -36(%ebp)
	fildl	-36(%ebp)
	fstpl	20(%esp)
	fldl	-24(%ebp)
	fstpl	12(%esp)
	fldl	-16(%ebp)
	fstpl	4(%esp)
	movl	$LC149, (%esp)
	call	_printf
	fldl	-16(%ebp)
	fnstcw	-26(%ebp)
	movzwl	-26(%ebp), %eax
	movb	$12, %ah
	movw	%ax, -28(%ebp)
	fldcw	-28(%ebp)
	fistpl	-32(%ebp)
	fldcw	-26(%ebp)
	movl	-32(%ebp), %edx
	fldl	-24(%ebp)
	fldcw	-28(%ebp)
	fistpl	-32(%ebp)
	fldcw	-26(%ebp)
	movl	-32(%ebp), %eax
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	movl	%eax, -36(%ebp)
	fildl	-36(%ebp)
	jmp	L325
L343:
	fldl	-24(%ebp)
	fnstcw	-26(%ebp)
	movzwl	-26(%ebp), %eax
	movb	$12, %ah
	movw	%ax, -28(%ebp)
	fldcw	-28(%ebp)
	fistpl	-32(%ebp)
	fldcw	-26(%ebp)
	movl	-32(%ebp), %eax
	notl	%eax
	movl	%eax, -36(%ebp)
	fildl	-36(%ebp)
	fstpl	20(%esp)
	fldl	-24(%ebp)
	fstpl	12(%esp)
	fldl	-16(%ebp)
	fstpl	4(%esp)
	movl	$LC150, (%esp)
	call	_printf
	fldl	-24(%ebp)
	fnstcw	-26(%ebp)
	movzwl	-26(%ebp), %eax
	movb	$12, %ah
	movw	%ax, -28(%ebp)
	fldcw	-28(%ebp)
	fistpl	-32(%ebp)
	fldcw	-26(%ebp)
	movl	-32(%ebp), %eax
	notl	%eax
	movl	%eax, -36(%ebp)
	fildl	-36(%ebp)
	jmp	L325
L344:
	fldl	-16(%ebp)
	fnstcw	-26(%ebp)
	movzwl	-26(%ebp), %eax
	movb	$12, %ah
	movw	%ax, -28(%ebp)
	fldcw	-28(%ebp)
	fistpl	-32(%ebp)
	fldcw	-26(%ebp)
	movl	-32(%ebp), %edx
	fldl	-24(%ebp)
	fldcw	-28(%ebp)
	fistpl	-32(%ebp)
	fldcw	-26(%ebp)
	movl	-32(%ebp), %eax
	xorl	%edx, %eax
	movl	%eax, -36(%ebp)
	fildl	-36(%ebp)
	fstpl	20(%esp)
	fldl	-24(%ebp)
	fstpl	12(%esp)
	fldl	-16(%ebp)
	fstpl	4(%esp)
	movl	$LC151, (%esp)
	call	_printf
	fldl	-16(%ebp)
	fnstcw	-26(%ebp)
	movzwl	-26(%ebp), %eax
	movb	$12, %ah
	movw	%ax, -28(%ebp)
	fldcw	-28(%ebp)
	fistpl	-32(%ebp)
	fldcw	-26(%ebp)
	movl	-32(%ebp), %edx
	fldl	-24(%ebp)
	fldcw	-28(%ebp)
	fistpl	-32(%ebp)
	fldcw	-26(%ebp)
	movl	-32(%ebp), %eax
	xorl	%edx, %eax
	movl	%eax, -36(%ebp)
	fildl	-36(%ebp)
	jmp	L325
L332:
	fldz
L325:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE65:
	.section .rdata,"dr"
LC153:
	.ascii "\12!%f = %d\0"
LC154:
	.ascii "\12%f == %f = %d\0"
LC155:
	.ascii "\12%f != %f = %d\0"
LC156:
	.ascii "\12%f < %f = %d\0"
LC157:
	.ascii "\12%f <= %f = %d\0"
LC158:
	.ascii "\12%f > %f = %d\0"
LC159:
	.ascii "\12%f >= %f = %d\0"
LC160:
	.ascii "\12%f && %f = %d\0"
LC161:
	.ascii "\12%f || %f = %d\0"
	.text
	.def	_Evaluator_parseBooleanExpression;	.scl	3;	.type	32;	.endef
_Evaluator_parseBooleanExpression:
LFB66:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$72, %esp
	cmpl	$0, 8(%ebp)
	jne	L346
	movl	$-1, %eax
	jmp	L347
L346:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	testl	%eax, %eax
	je	L348
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	_Evaluator_isBooleanOperator
	testl	%eax, %eax
	je	L349
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	_Evaluator_parseBooleanExpression
	movl	%eax, -28(%ebp)
	fildl	-28(%ebp)
	fstpl	-16(%ebp)
	jmp	L348
L349:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	movl	8(%eax), %eax
	cmpl	$8, %eax
	jne	L350
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	(%eax), %eax
	fldl	(%eax)
	fstpl	-16(%ebp)
	jmp	L348
L350:
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	_Evaluator_isMathOperator
	testl	%eax, %eax
	je	L348
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	movl	%eax, (%esp)
	call	_Evaluator_parseBinaryExpression
	fstpl	-16(%ebp)
L348:
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	je	L351
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, (%esp)
	call	_Evaluator_isBooleanOperator
	testl	%eax, %eax
	je	L352
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, (%esp)
	call	_Evaluator_parseBooleanExpression
	movl	%eax, -28(%ebp)
	fildl	-28(%ebp)
	fstpl	-24(%ebp)
	jmp	L351
L352:
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	(%eax), %eax
	movl	8(%eax), %eax
	cmpl	$8, %eax
	jne	L353
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	(%eax), %eax
	fldl	(%eax)
	fstpl	-24(%ebp)
	jmp	L351
L353:
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, (%esp)
	call	_Evaluator_isMathOperator
	testl	%eax, %eax
	je	L351
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, (%esp)
	call	_Evaluator_parseBinaryExpression
	fstpl	-24(%ebp)
L351:
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	8(%eax), %eax
	subl	$13, %eax
	cmpl	$8, %eax
	ja	L354
	movl	L356(,%eax,4), %eax
	jmp	*%eax
	.section .rdata,"dr"
	.align 4
L356:
	.long	L355
	.long	L357
	.long	L358
	.long	L359
	.long	L360
	.long	L361
	.long	L362
	.long	L363
	.long	L364
	.text
L364:
	fldl	-24(%ebp)
	fldz
	fucompp
	fnstsw	%ax
	sahf
	setnp	%dl
	fldl	-24(%ebp)
	fldz
	fucompp
	fnstsw	%ax
	sahf
	setne	%al
	subl	$1, %eax
	andl	%edx, %eax
	movzbl	%al, %eax
	movl	%eax, 12(%esp)
	fldl	-24(%ebp)
	fstpl	4(%esp)
	movl	$LC153, (%esp)
	call	_printf
	fldl	-24(%ebp)
	fldz
	fucompp
	fnstsw	%ax
	sahf
	setnp	%dl
	fldl	-24(%ebp)
	fldz
	fucompp
	fnstsw	%ax
	sahf
	setne	%al
	subl	$1, %eax
	andl	%edx, %eax
	movzbl	%al, %eax
	jmp	L347
L360:
	fldl	-16(%ebp)
	fldl	-24(%ebp)
	fucompp
	fnstsw	%ax
	sahf
	setnp	%dl
	fldl	-16(%ebp)
	fldl	-24(%ebp)
	fucompp
	fnstsw	%ax
	sahf
	setne	%al
	subl	$1, %eax
	andl	%edx, %eax
	movzbl	%al, %eax
	movl	%eax, 20(%esp)
	fldl	-24(%ebp)
	fstpl	12(%esp)
	fldl	-16(%ebp)
	fstpl	4(%esp)
	movl	$LC154, (%esp)
	call	_printf
	fldl	-16(%ebp)
	fldl	-24(%ebp)
	fucompp
	fnstsw	%ax
	sahf
	setnp	%dl
	fldl	-16(%ebp)
	fldl	-24(%ebp)
	fucompp
	fnstsw	%ax
	sahf
	setne	%al
	subl	$1, %eax
	andl	%edx, %eax
	movzbl	%al, %eax
	jmp	L347
L361:
	movl	$1, %edx
	fldl	-16(%ebp)
	fldl	-24(%ebp)
	fucompp
	fnstsw	%ax
	sahf
	jp	L365
	fldl	-16(%ebp)
	fldl	-24(%ebp)
	fucompp
	fnstsw	%ax
	sahf
	jne	L365
	movl	$0, %edx
L365:
	movzbl	%dl, %eax
	movl	%eax, 20(%esp)
	fldl	-24(%ebp)
	fstpl	12(%esp)
	fldl	-16(%ebp)
	fstpl	4(%esp)
	movl	$LC155, (%esp)
	call	_printf
	movl	$1, %edx
	fldl	-16(%ebp)
	fldl	-24(%ebp)
	fucompp
	fnstsw	%ax
	sahf
	jp	L366
	fldl	-16(%ebp)
	fldl	-24(%ebp)
	fucompp
	fnstsw	%ax
	sahf
	jne	L366
	movl	$0, %edx
L366:
	movzbl	%dl, %eax
	jmp	L347
L355:
	fldl	-24(%ebp)
	fldl	-16(%ebp)
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	seta	%al
	movzbl	%al, %eax
	movl	%eax, 20(%esp)
	fldl	-24(%ebp)
	fstpl	12(%esp)
	fldl	-16(%ebp)
	fstpl	4(%esp)
	movl	$LC156, (%esp)
	call	_printf
	fldl	-24(%ebp)
	fldl	-16(%ebp)
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	seta	%al
	movzbl	%al, %eax
	jmp	L347
L358:
	fldl	-24(%ebp)
	fldl	-16(%ebp)
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setnb	%al
	movzbl	%al, %eax
	movl	%eax, 20(%esp)
	fldl	-24(%ebp)
	fstpl	12(%esp)
	fldl	-16(%ebp)
	fstpl	4(%esp)
	movl	$LC157, (%esp)
	call	_printf
	fldl	-24(%ebp)
	fldl	-16(%ebp)
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setnb	%al
	movzbl	%al, %eax
	jmp	L347
L357:
	fldl	-16(%ebp)
	fldl	-24(%ebp)
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	seta	%al
	movzbl	%al, %eax
	movl	%eax, 20(%esp)
	fldl	-24(%ebp)
	fstpl	12(%esp)
	fldl	-16(%ebp)
	fstpl	4(%esp)
	movl	$LC158, (%esp)
	call	_printf
	fldl	-16(%ebp)
	fldl	-24(%ebp)
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	seta	%al
	movzbl	%al, %eax
	jmp	L347
L359:
	fldl	-16(%ebp)
	fldl	-24(%ebp)
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setnb	%al
	movzbl	%al, %eax
	movl	%eax, 20(%esp)
	fldl	-24(%ebp)
	fstpl	12(%esp)
	fldl	-16(%ebp)
	fstpl	4(%esp)
	movl	$LC159, (%esp)
	call	_printf
	fldl	-16(%ebp)
	fldl	-24(%ebp)
	fxch	%st(1)
	fucompp
	fnstsw	%ax
	sahf
	setnb	%al
	movzbl	%al, %eax
	jmp	L347
L362:
	fldl	-16(%ebp)
	fldz
	fucompp
	fnstsw	%ax
	sahf
	jp	L383
	fldl	-16(%ebp)
	fldz
	fucompp
	fnstsw	%ax
	sahf
	je	L367
L383:
	fldl	-24(%ebp)
	fldz
	fucompp
	fnstsw	%ax
	sahf
	jp	L384
	fldl	-24(%ebp)
	fldz
	fucompp
	fnstsw	%ax
	sahf
	je	L367
L384:
	movl	$1, %eax
	jmp	L370
L367:
	movl	$0, %eax
L370:
	movl	%eax, 20(%esp)
	fldl	-24(%ebp)
	fstpl	12(%esp)
	fldl	-16(%ebp)
	fstpl	4(%esp)
	movl	$LC160, (%esp)
	call	_printf
	fldl	-16(%ebp)
	fldz
	fucompp
	fnstsw	%ax
	sahf
	jp	L385
	fldl	-16(%ebp)
	fldz
	fucompp
	fnstsw	%ax
	sahf
	je	L371
L385:
	fldl	-24(%ebp)
	fldz
	fucompp
	fnstsw	%ax
	sahf
	jp	L386
	fldl	-24(%ebp)
	fldz
	fucompp
	fnstsw	%ax
	sahf
	je	L371
L386:
	movl	$1, %eax
	jmp	L347
L371:
	movl	$0, %eax
	jmp	L347
L363:
	fldl	-16(%ebp)
	fldz
	fucompp
	fnstsw	%ax
	sahf
	jp	L375
	fldl	-16(%ebp)
	fldz
	fucompp
	fnstsw	%ax
	sahf
	jne	L375
	fldl	-24(%ebp)
	fldz
	fucompp
	fnstsw	%ax
	sahf
	jp	L375
	fldl	-24(%ebp)
	fldz
	fucompp
	fnstsw	%ax
	sahf
	je	L387
L375:
	movl	$1, %eax
	jmp	L378
L387:
	movl	$0, %eax
L378:
	movl	%eax, 20(%esp)
	fldl	-24(%ebp)
	fstpl	12(%esp)
	fldl	-16(%ebp)
	fstpl	4(%esp)
	movl	$LC161, (%esp)
	call	_printf
	fldl	-16(%ebp)
	fldz
	fucompp
	fnstsw	%ax
	sahf
	jp	L379
	fldl	-16(%ebp)
	fldz
	fucompp
	fnstsw	%ax
	sahf
	jne	L379
	fldl	-24(%ebp)
	fldz
	fucompp
	fnstsw	%ax
	sahf
	jp	L379
	fldl	-24(%ebp)
	fldz
	fucompp
	fnstsw	%ax
	sahf
	je	L388
L379:
	movl	$1, %eax
	jmp	L347
L388:
	movl	$0, %eax
	jmp	L347
L354:
	movl	$0, %eax
L347:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE66:
	.section .rdata,"dr"
LC162:
	.ascii "\12RESULT : %f\12\0"
LC163:
	.ascii "true\0"
LC164:
	.ascii "false\0"
LC165:
	.ascii "\12RESULT : %s\12\0"
	.text
	.def	_Evaluator_parseAST;	.scl	3;	.type	32;	.endef
_Evaluator_parseAST:
LFB67:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	cmpl	$0, 12(%ebp)
	je	L397
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	8(%eax), %eax
	cmpl	$27, %eax
	ja	L389
	movl	L393(,%eax,4), %eax
	jmp	*%eax
	.section .rdata,"dr"
	.align 4
L393:
	.long	L389
	.long	L392
	.long	L392
	.long	L392
	.long	L392
	.long	L389
	.long	L389
	.long	L389
	.long	L389
	.long	L389
	.long	L389
	.long	L389
	.long	L392
	.long	L394
	.long	L394
	.long	L394
	.long	L394
	.long	L394
	.long	L394
	.long	L394
	.long	L394
	.long	L394
	.long	L392
	.long	L392
	.long	L392
	.long	L392
	.long	L392
	.long	L392
	.text
L392:
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_Evaluator_parseBinaryExpression
	fstpl	4(%esp)
	movl	$LC162, (%esp)
	call	_printf
	jmp	L389
L394:
	movl	12(%ebp), %eax
	movl	%eax, (%esp)
	call	_Evaluator_parseBooleanExpression
	testl	%eax, %eax
	je	L395
	movl	$LC163, %eax
	jmp	L396
L395:
	movl	$LC164, %eax
L396:
	movl	%eax, 4(%esp)
	movl	$LC165, (%esp)
	call	_printf
	nop
	jmp	L389
L397:
	nop
L389:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE67:
	.section .rdata,"dr"
LC166:
	.ascii "end\0"
	.text
	.globl	_Evaluator_start
	.def	_Evaluator_start;	.scl	2;	.type	32;	.endef
_Evaluator_start:
LFB68:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	$0, -12(%ebp)
	jmp	L399
L400:
	movl	-12(%ebp), %edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_Vector_get
	movl	%eax, -16(%ebp)
	movl	-16(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_Evaluator_parseAST
	addl	$1, -12(%ebp)
L399:
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	(%eax), %edx
	movl	-12(%ebp), %eax
	cmpl	%eax, %edx
	ja	L400
	movl	$LC166, (%esp)
	call	_printf
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE68:
	.globl	_Vector_init
	.def	_Vector_init;	.scl	2;	.type	32;	.endef
_Vector_init:
LFB69:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	$12, 4(%esp)
	movl	$1, (%esp)
	call	_calloc
	movl	%eax, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, 4(%eax)
	movl	-12(%ebp), %eax
	movl	$0, (%eax)
	movl	-12(%ebp), %eax
	movl	$0, 8(%eax)
	movl	-12(%ebp), %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE69:
	.section .rdata,"dr"
LC167:
	.ascii "\12VECTOR OUT OF BOUNDS \0"
	.text
	.globl	_Vector_get
	.def	_Vector_get;	.scl	2;	.type	32;	.endef
_Vector_get:
LFB70:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	cmpl	12(%ebp), %eax
	ja	L404
	movl	$LC167, (%esp)
	call	_puts
	movl	$1, (%esp)
	call	_exit
L404:
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	12(%ebp), %edx
	sall	$2, %edx
	addl	%edx, %eax
	movl	(%eax), %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE70:
	.globl	_Vector_push
	.def	_Vector_push;	.scl	2;	.type	32;	.endef
_Vector_push:
LFB71:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, (%eax)
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	testl	%eax, %eax
	jne	L407
	movl	$4, 4(%esp)
	movl	$1, (%esp)
	call	_calloc
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	addl	$1073741823, %eax
	sall	$2, %eax
	addl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%eax, (%edx)
	jmp	L406
L407:
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	leal	0(,%eax,4), %edx
	movl	8(%ebp), %eax
	movl	8(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_realloc
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	8(%ebp), %eax
	movl	8(%eax), %edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	addl	$1073741823, %eax
	sall	$2, %eax
	addl	%eax, %edx
	movl	12(%ebp), %eax
	movl	%eax, (%edx)
L406:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE71:
	.section .rdata,"dr"
LC168:
	.ascii "r\0"
	.text
	.globl	_read_file
	.def	_read_file;	.scl	2;	.type	32;	.endef
_read_file:
LFB72:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$56, %esp
	movl	$LC168, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_fopen
	movl	%eax, -16(%ebp)
	movl	$0, -12(%ebp)
	cmpl	$0, -16(%ebp)
	jne	L410
	movl	$0, %eax
	jmp	L411
L410:
	movl	$2, 8(%esp)
	movl	$0, 4(%esp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_fseek
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_ftell
	movl	%eax, -20(%ebp)
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_rewind
	movl	-20(%ebp), %eax
	movl	%eax, (%esp)
	call	_malloc
	movl	%eax, -24(%ebp)
	jmp	L412
L413:
	movl	-12(%ebp), %eax
	leal	1(%eax), %edx
	movl	%edx, -12(%ebp)
	movl	-24(%ebp), %edx
	addl	%edx, %eax
	movl	-28(%ebp), %edx
	movb	%dl, (%eax)
L412:
	movl	-16(%ebp), %eax
	movl	%eax, (%esp)
	call	_fgetc
	movl	%eax, -28(%ebp)
	cmpl	$-1, -28(%ebp)
	jne	L413
	movl	-12(%ebp), %eax
	addl	$1, %eax
	movl	%eax, 4(%esp)
	movl	-24(%ebp), %eax
	movl	%eax, (%esp)
	call	_realloc
	movl	%eax, -24(%ebp)
	addl	$1, -12(%ebp)
	movl	-24(%ebp), %edx
	movl	-12(%ebp), %eax
	addl	%edx, %eax
	movb	$0, (%eax)
	movl	-24(%ebp), %eax
L411:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE72:
	.globl	_file_exists
	.def	_file_exists;	.scl	2;	.type	32;	.endef
_file_exists:
LFB73:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	$0, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_access
	testl	%eax, %eax
	jne	L415
	movl	$1, %eax
	jmp	L416
L415:
	movl	$0, %eax
L416:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE73:
	.section .rdata,"dr"
LC169:
	.ascii "w\0"
	.text
	.globl	_file_flush
	.def	_file_flush;	.scl	2;	.type	32;	.endef
_file_flush:
LFB74:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	8(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	$LC169, 4(%esp)
	movl	$0, (%esp)
	call	_freopen
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE74:
	.globl	_file_create
	.def	_file_create;	.scl	2;	.type	32;	.endef
_file_create:
LFB75:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	$LC169, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_fopen
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE75:
	.globl	_file_writeTo
	.def	_file_writeTo;	.scl	2;	.type	32;	.endef
_file_writeTo:
LFB76:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	nop
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE76:
	.section .rdata,"dr"
LC170:
	.ascii "a\0"
LC171:
	.ascii "\12Couldn't Open File!\0"
	.text
	.globl	_file_write
	.def	_file_write;	.scl	2;	.type	32;	.endef
_file_write:
LFB77:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	$LC170, 4(%esp)
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_fopen
	movl	%eax, -12(%ebp)
	cmpl	$0, -12(%ebp)
	jne	L423
	movl	$LC171, (%esp)
	call	_printf
	movl	$1, (%esp)
	call	_exit
L423:
	movl	16(%ebp), %eax
	movl	%eax, 8(%esp)
	movl	12(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_fprintf
	movl	-12(%ebp), %eax
	movl	%eax, (%esp)
	call	_fclose
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE77:
	.def	_ASMCompiler_preformExpression;	.scl	3;	.type	32;	.endef
_ASMCompiler_preformExpression:
LFB78:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	nop
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE78:
	.def	_ASMCompiler_createData;	.scl	3;	.type	32;	.endef
_ASMCompiler_createData:
LFB79:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	nop
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE79:
	.def	_ASMCompiler_assignData;	.scl	3;	.type	32;	.endef
_ASMCompiler_assignData:
LFB80:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	nop
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE80:
	.def	_ASMCompiler_evaluateEqualExpression;	.scl	3;	.type	32;	.endef
_ASMCompiler_evaluateEqualExpression:
LFB81:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	nop
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE81:
	.def	_ASMCompiler_traverseAST;	.scl	3;	.type	32;	.endef
_ASMCompiler_traverseAST:
LFB82:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	nop
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE82:
	.def	_ASMCompiler_compile;	.scl	3;	.type	32;	.endef
_ASMCompiler_compile:
LFB83:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	nop
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE83:
	.section .rdata,"dr"
LC172:
	.ascii "\12compiling asm\0"
LC173:
	.ascii "\12\11.file\11\"%s\"\12\11.text\12\0"
	.text
	.globl	_ASMCompiler_start
	.def	_ASMCompiler_start;	.scl	2;	.type	32;	.endef
_ASMCompiler_start:
LFB84:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$232, %esp
	movl	$LC172, (%esp)
	call	_printf
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, 8(%esp)
	movl	$LC173, 4(%esp)
	leal	-208(%ebp), %eax
	movl	%eax, (%esp)
	call	_sprintf
	movl	8(%ebp), %eax
	movl	20(%eax), %eax
	leal	-208(%ebp), %edx
	movl	%edx, 8(%esp)
	movl	$LC49, 4(%esp)
	movl	%eax, (%esp)
	call	_file_write
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE84:
	.def	_CCompiler_defineExpression;	.scl	3;	.type	32;	.endef
_CCompiler_defineExpression:
LFB85:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	nop
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE85:
	.def	_CCompiler_defineVar;	.scl	3;	.type	32;	.endef
_CCompiler_defineVar:
LFB86:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	nop
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE86:
	.def	_CCompiler_checkForOverlappingVars;	.scl	3;	.type	32;	.endef
_CCompiler_checkForOverlappingVars:
LFB87:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	nop
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE87:
	.def	_CCompiler_createData;	.scl	3;	.type	32;	.endef
_CCompiler_createData:
LFB88:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	nop
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE88:
	.def	_CCompiler_traverseAST;	.scl	3;	.type	32;	.endef
_CCompiler_traverseAST:
LFB89:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	$0, -12(%ebp)
	jmp	L436
L439:
	movl	-12(%ebp), %edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_Vector_get
	movl	%eax, -16(%ebp)
	movl	-16(%ebp), %eax
	movl	(%eax), %eax
	movl	8(%eax), %eax
	cmpl	$9, %eax
	jne	L437
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_CCompiler_createData
	nop
L437:
	addl	$1, -12(%ebp)
L436:
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	(%eax), %edx
	movl	-12(%ebp), %eax
	cmpl	%eax, %edx
	ja	L439
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE89:
	.def	_generateLine;	.scl	3;	.type	32;	.endef
_generateLine:
LFB90:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	nop
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE90:
	.section .rdata,"dr"
LC174:
	.ascii "\12entered C Compiler stage.\0"
	.text
	.globl	_CCompiler_start
	.def	_CCompiler_start;	.scl	2;	.type	32;	.endef
_CCompiler_start:
LFB91:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	$LC174, (%esp)
	call	_printf
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE91:
	.section .rdata,"dr"
LC175:
	.ascii "\12BUGGED\0"
LC176:
	.ascii "./output.s\0"
LC177:
	.ascii "./output.c\0"
LC178:
	.ascii "./output.js\0"
	.text
	.globl	_Compiler_init
	.def	_Compiler_init;	.scl	2;	.type	32;	.endef
_Compiler_init:
LFB92:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$1064, %esp
	movl	$24, 4(%esp)
	movl	$1, (%esp)
	call	_calloc
	movl	%eax, -12(%ebp)
	movl	-12(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, (%eax)
	movl	-12(%ebp), %eax
	movl	$0, 4(%eax)
	movl	-12(%ebp), %eax
	movl	12(%ebp), %edx
	movl	%edx, 12(%eax)
	movl	-12(%ebp), %eax
	movl	4(%eax), %edx
	movl	-12(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_Vector_get
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	movl	%edx, 8(%eax)
	movl	$1024, 4(%esp)
	leal	-1036(%ebp), %eax
	movl	%eax, (%esp)
	call	__getcwd
	testl	%eax, %eax
	jne	L443
	movl	$LC175, (%esp)
	call	_printf
	movl	$1, (%esp)
	call	_exit
L443:
	movl	-12(%ebp), %eax
	movl	12(%eax), %eax
	cmpl	$1, %eax
	je	L445
	cmpl	$1, %eax
	jb	L446
	cmpl	$2, %eax
	je	L447
	jmp	L450
L446:
	movl	$LC176, (%esp)
	call	_file_create
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	movl	%edx, 16(%eax)
	movl	-12(%ebp), %eax
	movl	$LC176, 20(%eax)
	movl	-12(%ebp), %eax
	jmp	L442
L445:
	movl	$LC177, (%esp)
	call	_file_create
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	movl	%edx, 16(%eax)
	movl	-12(%ebp), %eax
	movl	$LC177, 20(%eax)
	movl	-12(%ebp), %eax
	jmp	L442
L447:
	movl	$LC178, (%esp)
	call	_file_create
	movl	%eax, %edx
	movl	-12(%ebp), %eax
	movl	%edx, 16(%eax)
	movl	-12(%ebp), %eax
	movl	$LC178, 20(%eax)
	movl	-12(%ebp), %eax
	jmp	L442
L450:
L442:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE92:
	.globl	_Compiler_next
	.def	_Compiler_next;	.scl	2;	.type	32;	.endef
_Compiler_next:
LFB93:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	8(%ebp), %eax
	movl	4(%eax), %eax
	leal	1(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax)
	movl	8(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_Vector_get
	movl	%eax, %edx
	movl	8(%ebp), %eax
	movl	%edx, 8(%eax)
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE93:
	.section .rdata,"dr"
LC179:
	.ascii "\12Compiler Mode : ASM\0"
LC180:
	.ascii "\12Compiler Mode : C\0"
	.text
	.globl	_Compiler_start
	.def	_Compiler_start;	.scl	2;	.type	32;	.endef
_Compiler_start:
LFB94:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	L454
	cmpl	$1, %eax
	je	L455
	jmp	L452
L454:
	movl	$LC179, (%esp)
	call	_printf
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ASMCompiler_start
	jmp	L452
L455:
	movl	$LC180, (%esp)
	call	_printf
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_CCompiler_start
	nop
L452:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE94:
	.def	___main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
LC181:
	.ascii "most recent build\0"
LC182:
	.ascii "\12NOT ENOUGH ARGS\0"
LC183:
	.ascii "%d\0"
LC184:
	.ascii "-c\0"
LC185:
	.ascii "\12mode : C\0"
LC186:
	.ascii "-js\0"
LC187:
	.ascii "\12mode : JS\0"
LC188:
	.ascii "-asm\0"
LC189:
	.ascii "\12mode : ASM\0"
LC190:
	.ascii "-dd\0"
LC191:
	.ascii "\12FILE DOESN'T EXIST\0"
LC192:
	.ascii "\12\12\12\12\12\12LEXER TOKEN DUMP \12\12\12\12\12\12\0"
LC193:
	.ascii "\12tok %zu | %s\12\11value : %s\0"
	.align 4
LC194:
	.ascii "\12\12\12\12\12////////////////////////////////////////////////FUNC CALL CHECKS////////////////////////////////////////////////\12\12\12\12\0"
	.align 4
LC195:
	.ascii "\12\12FUNC %s, SIZE %zu attributes:\12\0"
LC196:
	.ascii "\12\11 tok [%d]: %s\0"
	.align 4
LC197:
	.ascii "\12\12\12\12\12////////////////////////////////////////////////FUNC CALL CHECKS END////////////////////////////////////////////////\12\12\12\12\0"
LC198:
	.ascii "\12TOKENS FOR PARSE\0"
LC199:
	.ascii "\12next vector\0"
LC200:
	.ascii "\12 tok : %s\12\0"
LC201:
	.ascii "\12TOKENS FOR PARSE END\0"
	.align 4
LC202:
	.ascii "\12-------------- multilined statements test start --------------\0"
LC203:
	.ascii "\12\12\12 TOKENS SIZE %zu\12\12\12\0"
	.align 4
LC204:
	.ascii "\12============================================================PARSER PHASE ENDED ============================================================\0"
LC205:
	.ascii "\12\12\12\12\12nodes-size : %zu\12\12\12\12\12\0"
	.align 4
LC206:
	.ascii "\12==================================================PARSER RUN %d======================================================================\12\0"
LC207:
	.ascii "\12end\0"
LC208:
	.ascii "\12\12pre compiler test\0"
	.align 4
LC209:
	.ascii "\12\12\12\12 PROGRAM FINISHED EXECUTION \12\12\12\0"
	.text
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
LFB95:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	andl	$-16, %esp
	subl	$112, %esp
	.cfi_offset 3, -12
	call	___main
	movl	$1, 68(%esp)
	movl	$LC181, (%esp)
	call	_puts
	cmpl	$1, 8(%ebp)
	jg	L457
	movl	$LC182, (%esp)
	call	_printf
	movl	$1, %eax
	jmp	L458
L457:
	movl	$1, 108(%esp)
	movl	8(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$LC183, (%esp)
	call	_printf
	movl	$0, 104(%esp)
	jmp	L459
L464:
	movl	104(%esp), %eax
	leal	0(,%eax,4), %edx
	movl	12(%ebp), %eax
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$LC184, (%esp)
	call	_strcmp
	testl	%eax, %eax
	jne	L460
	movl	$1, 68(%esp)
	movl	$LC185, (%esp)
	call	_printf
	jmp	L461
L460:
	movl	104(%esp), %eax
	leal	0(,%eax,4), %edx
	movl	12(%ebp), %eax
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$LC186, (%esp)
	call	_strcmp
	testl	%eax, %eax
	jne	L462
	movl	$2, 68(%esp)
	movl	$LC187, (%esp)
	call	_printf
	jmp	L461
L462:
	movl	104(%esp), %eax
	leal	0(,%eax,4), %edx
	movl	12(%ebp), %eax
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$LC188, (%esp)
	call	_strcmp
	testl	%eax, %eax
	jne	L463
	movl	$0, 68(%esp)
	movl	$LC189, (%esp)
	call	_printf
	jmp	L461
L463:
	movl	104(%esp), %eax
	leal	0(,%eax,4), %edx
	movl	12(%ebp), %eax
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$LC190, (%esp)
	call	_strcmp
	testl	%eax, %eax
	jne	L461
	movl	$0, 108(%esp)
	nop
L461:
	addl	$1, 104(%esp)
L459:
	movl	8(%ebp), %eax
	subl	$2, %eax
	cmpl	104(%esp), %eax
	jg	L464
	movl	8(%ebp), %eax
	addl	$1073741823, %eax
	leal	0(,%eax,4), %edx
	movl	12(%ebp), %eax
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	%eax, 64(%esp)
	movl	64(%esp), %eax
	movl	%eax, (%esp)
	call	_file_exists
	testl	%eax, %eax
	jne	L465
	movl	$LC191, (%esp)
	call	_printf
	movl	$1, %eax
	jmp	L458
L465:
	movl	64(%esp), %eax
	movl	%eax, (%esp)
	call	_read_file
	movl	%eax, 60(%esp)
	movl	$0, 100(%esp)
	jmp	L466
L467:
	addl	$1, 100(%esp)
L466:
	movl	60(%esp), %edx
	movl	100(%esp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	L467
	movl	64(%esp), %eax
	movl	%eax, (%esp)
	call	_free
	movl	100(%esp), %eax
	subl	$1, %eax
	movl	%eax, 4(%esp)
	movl	60(%esp), %eax
	movl	%eax, (%esp)
	call	_Lexer_init
	movl	%eax, %ebx
	movl	%ebx, (%esp)
	call	_Lexer_start
	movl	$LC192, (%esp)
	call	_puts
	movl	$0, 96(%esp)
	jmp	L468
L470:
	movl	96(%esp), %edx
	movl	(%ebx), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_Vector_get
	movl	%eax, 56(%esp)
	cmpl	$0, 108(%esp)
	je	L469
	movl	56(%esp), %eax
	movl	12(%eax), %edx
	movl	56(%esp), %eax
	movl	8(%eax), %eax
	movl	_Token_types_map(,%eax,4), %eax
	movl	%edx, 12(%esp)
	movl	%eax, 8(%esp)
	movl	96(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC193, (%esp)
	call	_printf
L469:
	addl	$1, 96(%esp)
L468:
	movl	(%ebx), %eax
	movl	(%eax), %edx
	movl	96(%esp), %eax
	cmpl	%eax, %edx
	ja	L470
	movl	$LC46, (%esp)
	call	_printf
	movl	$LC194, (%esp)
	call	_puts
	movl	$0, 92(%esp)
	jmp	L471
L475:
	movl	92(%esp), %edx
	movl	(%ebx), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_Vector_get
	movl	%eax, 52(%esp)
	movl	52(%esp), %eax
	movl	8(%eax), %eax
	cmpl	$31, %eax
	jne	L472
	movl	52(%esp), %eax
	movl	(%eax), %eax
	movl	(%eax), %edx
	movl	52(%esp), %eax
	movl	12(%eax), %eax
	movl	%edx, 8(%esp)
	movl	%eax, 4(%esp)
	movl	$LC195, (%esp)
	call	_printf
	movl	$0, 88(%esp)
	jmp	L473
L474:
	movl	88(%esp), %edx
	movl	52(%esp), %eax
	movl	(%eax), %eax
	movl	%edx, 4(%esp)
	movl	%eax, (%esp)
	call	_Vector_get
	movl	12(%eax), %eax
	movl	%eax, 8(%esp)
	movl	88(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC196, (%esp)
	call	_printf
	addl	$1, 88(%esp)
L473:
	movl	52(%esp), %eax
	movl	(%eax), %eax
	movl	(%eax), %edx
	movl	88(%esp), %eax
	cmpl	%eax, %edx
	ja	L474
L472:
	addl	$1, 92(%esp)
L471:
	movl	(%ebx), %eax
	movl	(%eax), %edx
	movl	92(%esp), %eax
	cmpl	%eax, %edx
	ja	L475
	movl	$LC197, (%esp)
	call	_puts
	movl	(%ebx), %eax
	movl	%eax, (%esp)
	call	_Token_removeNeighborNewLines
	movl	%eax, 48(%esp)
	movl	$11, 4(%esp)
	movl	48(%esp), %eax
	movl	%eax, (%esp)
	call	_Token_splitAt
	movl	%eax, 48(%esp)
	movl	48(%esp), %eax
	movl	%eax, (%esp)
	call	_Token_splitAtSubBlocks
	cmpl	$0, 108(%esp)
	je	L476
	movl	$LC198, (%esp)
	call	_puts
	movl	$0, 84(%esp)
	jmp	L477
L480:
	movl	84(%esp), %eax
	movl	%eax, 4(%esp)
	movl	48(%esp), %eax
	movl	%eax, (%esp)
	call	_Vector_get
	movl	%eax, 44(%esp)
	movl	$LC199, (%esp)
	call	_puts
	movl	$0, 80(%esp)
	jmp	L478
L479:
	movl	80(%esp), %eax
	movl	%eax, 4(%esp)
	movl	44(%esp), %eax
	movl	%eax, (%esp)
	call	_Vector_get
	movl	%eax, 40(%esp)
	movl	40(%esp), %eax
	movl	12(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$LC200, (%esp)
	call	_printf
	movl	40(%esp), %eax
	movl	%eax, (%esp)
	call	_Token_print
	addl	$1, 80(%esp)
L478:
	movl	44(%esp), %eax
	movl	(%eax), %edx
	movl	80(%esp), %eax
	cmpl	%eax, %edx
	ja	L479
	addl	$1, 84(%esp)
L477:
	movl	48(%esp), %eax
	movl	(%eax), %edx
	movl	84(%esp), %eax
	cmpl	%eax, %edx
	ja	L480
L476:
	movl	$LC201, (%esp)
	call	_puts
	movl	$LC202, (%esp)
	call	_puts
	movl	$20, (%esp)
	call	_Vector_init
	movl	%eax, 36(%esp)
	movl	48(%esp), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$LC203, (%esp)
	call	_printf
	movl	$0, 76(%esp)
	jmp	L481
L482:
	movl	76(%esp), %eax
	movl	%eax, 4(%esp)
	movl	48(%esp), %eax
	movl	%eax, (%esp)
	call	_Vector_get
	movl	%eax, 32(%esp)
	movl	32(%esp), %eax
	movl	%eax, (%esp)
	call	_Parser_init
	movl	%eax, 28(%esp)
	movl	32(%esp), %eax
	movl	%eax, (%esp)
	call	_Parser_parse
	movl	%eax, 4(%esp)
	movl	36(%esp), %eax
	movl	%eax, (%esp)
	call	_Vector_push
	addl	$1, 76(%esp)
L481:
	movl	48(%esp), %eax
	movl	(%eax), %edx
	movl	76(%esp), %eax
	cmpl	%eax, %edx
	ja	L482
	movl	$LC88, (%esp)
	call	_printf
	movl	$LC204, (%esp)
	call	_puts
	movl	$LC87, (%esp)
	call	_printf
	movl	36(%esp), %eax
	movl	(%eax), %eax
	movl	%eax, 4(%esp)
	movl	$LC205, (%esp)
	call	_printf
	cmpl	$0, 108(%esp)
	je	L483
	movl	$0, 72(%esp)
	jmp	L484
L485:
	movl	$LC114, (%esp)
	call	_printf
	movl	72(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC206, (%esp)
	call	_printf
	movl	$LC87, (%esp)
	call	_printf
	movl	72(%esp), %eax
	movl	%eax, 4(%esp)
	movl	36(%esp), %eax
	movl	%eax, (%esp)
	call	_Vector_get
	movl	$0, 4(%esp)
	movl	%eax, (%esp)
	call	_PrintNodes
	movl	$LC207, (%esp)
	call	_printf
	addl	$1, 72(%esp)
L484:
	movl	36(%esp), %eax
	movl	(%eax), %edx
	movl	72(%esp), %eax
	cmpl	%eax, %edx
	ja	L485
L483:
	movl	$LC208, (%esp)
	call	_printf
	movl	$LC209, (%esp)
	call	_puts
	movl	%ebx, (%esp)
	call	_free
	movl	36(%esp), %eax
	movl	%eax, (%esp)
	call	_free
	movl	48(%esp), %eax
	movl	%eax, (%esp)
	call	_free
	movl	$0, %eax
L458:
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE95:
	.ident	"GCC: (MinGW.org GCC-6.3.0-1) 6.3.0"
	.def	_malloc;	.scl	2;	.type	32;	.endef
	.def	_fwrite;	.scl	2;	.type	32;	.endef
	.def	_exit;	.scl	2;	.type	32;	.endef
	.def	_printf;	.scl	2;	.type	32;	.endef
	.def	_realloc;	.scl	2;	.type	32;	.endef
	.def	_atof;	.scl	2;	.type	32;	.endef
	.def	_calloc;	.scl	2;	.type	32;	.endef
	.def	_isalpha;	.scl	2;	.type	32;	.endef
	.def	_puts;	.scl	2;	.type	32;	.endef
	.def	_strcmp;	.scl	2;	.type	32;	.endef
	.def	_putchar;	.scl	2;	.type	32;	.endef
	.def	_fopen;	.scl	2;	.type	32;	.endef
	.def	_fseek;	.scl	2;	.type	32;	.endef
	.def	_ftell;	.scl	2;	.type	32;	.endef
	.def	_rewind;	.scl	2;	.type	32;	.endef
	.def	_fgetc;	.scl	2;	.type	32;	.endef
	.def	_access;	.scl	2;	.type	32;	.endef
	.def	_freopen;	.scl	2;	.type	32;	.endef
	.def	_fprintf;	.scl	2;	.type	32;	.endef
	.def	_fclose;	.scl	2;	.type	32;	.endef
	.def	_sprintf;	.scl	2;	.type	32;	.endef
	.def	__getcwd;	.scl	2;	.type	32;	.endef
	.def	_free;	.scl	2;	.type	32;	.endef
