
	.file	"./output.s"
	.text

LFE10:
	.def	___main;	.scl	2;	.type	32;	.endef
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
LFB10:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp,%ebp
	.cfi_def_cfa_register 5
	andl  $-16, %esp
	call   ___main
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc



LFE11:
	.ident	"GCC: (MinGW.org GCC-6.3.0-1) 6.3.0"