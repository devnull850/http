
	.section .text
	.globl _start

_start:

	movl	$0xfffffe6f,%eax
	xorl	$0xffffffff,%eax
	subq	%rax,%rsp

	movl	$0xff8e9a8d,%eax
	xorl	$0xffffffff,%eax
	pushq	%rax

	xorl	%eax,%eax
	movb	$2,%al
	movq	%rsp,%rdi
	xorl	%esi,%esi
	movl	$0xfffff8aa,%edx
	xorl	$0xffffffff,%edx
	syscall

	pushq	%rax

	xorl	%eax,%eax
	movl	(%rsp),%edi
	leaq	0x10(%rsp),%rsi
	xorl	%edx,%edx
	movb	$0x49,%dl
	syscall

	xorl	%eax,%eax
	movb	$3,%al
	popq	%rdi
	syscall

	popq	%rax

	xorl	%eax,%eax
	movb	$0x29,%al
	xorl	%edi,%edi
	movb	$2,%dil
	xorl	%esi,%esi
	inc	%esi
	xorl	%edx,%edx
	syscall

	pushq	%rax

	xorl	%eax,%eax
	pushq	%rax
	movl	$0x901ffffd,%eax
	xorw	$0xffff,%ax
	pushq	%rax

	xorl	%eax,%eax
	movb	$0x2a,%al
	movl	0x10(%rsp),%edi
	movq	%rsp,%rsi
	xorl	%edx,%edx
	movb	$0x10,%dl
	syscall

	xorl	%eax,%eax
	inc	%eax
	movl	0x10(%rsp),%edi
	leaq	0x18(%rsp),%rsi
	xorl	%edx,%edx
	movb	$0x49,%dl
	syscall

	xorl	%eax,%eax
	movl	0x10(%rsp),%edi
	leaq	0x68(%rsp),%rsi
	movl	$0xfffffec7,%edx
	xorl	$0xffffffff,%edx
	syscall

	xorl	%eax,%eax
	inc	%eax
	movl	%eax,%edi
	leaq	0x68(%rsp),%rsi
	movl	$0xfffffec7,%edx
	xorl	$0xffffffff,%edx
	syscall

	xorl	%eax,%eax
	movb	$3,%al
	movl	0x10(%rsp),%edi
	syscall

	movl	$0xfffffe57,%eax
	xorl	$0xffffffff,%eax
	addq	%rax,%rsp

	xorl	%eax,%eax
	movb	$0x3c,%al
	xorl	%edi,%edi
	syscall

