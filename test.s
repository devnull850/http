
	.section .text
	.globl _start

_start:

	movl	$0xfffffbff,%eax
	xorl	$0xffffffff,%eax
	subq	%rax,%rsp

	movl	$0xfffffebf,%eax
	xorl	$0xffffffff,%eax
	subq	%rax,%rsp

	movl	$0x70736572,%eax
	pushq	%rax

	xorl	%eax,%eax
	movb	$2,%al
	movq	%rsp,%rdi
	xorl	%esi,%esi
	xorl	%edx,%edx
	movw	$0xf8aa,%dx
	xorw	$0xffff,%dx
	syscall

	pushq	%rax

	xorl	%eax,%eax
	movl	(%rsp),%edi
	leaq	0x10(%rsp),%rsi
	xorl	%edx,%edx
	movw	$0xfec7,%dx
	xorw	$0xffff,%dx
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
	movb	$0x31,%al
	movl	0x10(%rsp),%edi
	movq	%rsp,%rsi
	xorl	%edx,%edx
	movb	$0x10,%dl
	syscall

	xorl	%eax,%eax
	movb	$0x32,%al
	movl	0x10(%rsp),%edi
	xorl	%esi,%esi
	movb	$4,%sil
	syscall

	xorl	%eax,%eax
	movb	$0x10,%al
	pushq	%rax

	xorl	%eax,%eax
	pushq	%rax
	pushq	%rax

.L0:
	xorl	%eax,%eax
	movb	$0x2b,%al
	movl	0x28(%rsp),%edi
	leaq	0x18(%rsp),%rsi
	leaq	0x10(%rsp),%rdx
	syscall

	movl	%eax,0x8(%rsp)

.L1:
	xorl	%eax,%eax
	movl	0x8(%rsp),%edi
	movl	$0xfffffe8f,%r8d
	xorl	$0xffffffff,%r8d
	movq	%rsp,%rsi
	addq	%r8,%rsi
	movl	$0xfffffbff,%edx
	xorl	$0xffffffff,%edx
	syscall

	movl	%eax,(%rsp)

	xorl	%eax,%eax
	inc	%eax
	movl	%eax,%edi
	movl	$0xfffffe8f,%r8d
	xorl	$0xffffffff,%r8d
	movq	%rsp,%rsi
	addq	%r8,%rsi
	movl	(%rsp),%edx
	syscall

	movl	$0xfffffbff,%eax
	xorl	$0xffffffff,%eax
	cmpl	%eax,(%rsp)
	je	.L1

	xorl	%eax,%eax
	inc	%eax
	movl	0x8(%rsp),%edi
	leaq	0x30(%rsp),%rsi
	movl	$0xfffffec7,%edx
	xorl	$0xffffffff,%edx
	syscall

	jmp	.L0
