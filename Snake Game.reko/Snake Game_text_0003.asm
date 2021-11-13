;;; Segment .text (0000000000401000)

l0000000000431002:
	mov	qword ptr [rsp+50h],+0h
	mov	eax,1h
	jmp	43098Bh

l0000000000431015:
	mov	eax,edx
	mov	r13d,1h
	jmp	430CB9h

l0000000000431022:
	lea	r13,[rsp+80h]
	mov	edx,20h
	mov	rcx,r13
	call	451BE0h
	jmp	4308BBh
000000000043103C                                     0F 1F 40 00             ..@.

l0000000000431040:
	mov	rcx,r14
	call	42B050h
	cmp	[rsi+6Fh],al
	mov	ebx,eax
	mov	edx,eax
	setz	al
	jz	431174h

l0000000000431058:
	cmp	[rsi+6Eh],bl
	jz	431174h

l0000000000431061:
	movzx	eax,byte ptr [rsi+20h]

l0000000000431065:
	mov	ebx,eax
	xor	ebp,ebp
	mov	eax,edx
	xor	r12d,r12d
	mov	edx,ebx

l0000000000431070:
	test	dl,dl
	jz	43107Dh

l0000000000431074:
	cmp	[rsi+49h],al
	jz	4312B0h

l000000000043107D:
	cmp	[rsi+48h],al
	jz	4312B0h

l0000000000431086:
	movzx	ebx,byte ptr [rsi+72h]
	cmp	bl,al
	jnz	4312B0h

l0000000000431092:
	test	r12b,r12b
	jz	431220h

l000000000043109B:
	mov	rcx,[rsp+60h]
	add	ebp,1h
	test	rcx,rcx
	jz	431240h

l00000000004310AC:
	mov	rdx,[rcx+10h]
	cmp	rdx,[rcx+18h]
	jnc	431260h

l00000000004310BA:
	add	rdx,1h
	mov	dword ptr [rsp+68h],0FFFFFFFFh
	mov	[rcx+10h],rdx
	mov	rdx,[rcx+10h]
	cmp	rdx,[rcx+18h]
	jnc	431290h

l00000000004310D8:
	movzx	eax,byte ptr [rdx]

l00000000004310DB:
	mov	rcx,[rsp+50h]
	mov	[rsp+68h],eax
	test	rcx,rcx
	jz	431200h

l00000000004310ED:
	xor	r12d,r12d

l00000000004310F0:
	xor	eax,eax
	cmp	dword ptr [rsp+58h],0FFh
	jz	4311E0h

l00000000004310FD:
	cmp	al,r12b
	jnz	431200h

l0000000000431106:
	mov	r12d,1h
	mov	r15d,1h
	jmp	430893h
0000000000431117                      66 0F 1F 84 00 00 00 00 00        f........

l0000000000431120:
	mov	rbx,[rsp+80h]
	lea	r13,[rsp+80h]
	cmp	qword ptr [rbx-18h],0h
	jnz	4309B9h

l000000000043113B:
	jmp	4309DBh

l0000000000431140:
	mov	rbx,[rsp+80h]
	cmp	qword ptr [rbx-18h],0h
	jz	4309DBh

l0000000000431153:
	lea	r13,[rsp+80h]
	movsx	edx,bpl
	mov	rcx,r13
	call	451E10h
	mov	rbx,[rsp+80h]
	jmp	4309B9h

l0000000000431174:
	movzx	ecx,byte ptr [rsi+20h]
	test	cl,cl
	jz	431185h

l000000000043117C:
	cmp	[rsi+49h],bl
	jz	43136Ch

l0000000000431185:
	cmp	[rsi+48h],bl
	jz	43133Fh

l000000000043118E:
	cmp	al,1h
	mov	rcx,rdi
	sbb	edx,edx
	and	edx,2h
	add	edx,2Bh
	call	451E10h
	mov	rcx,[rsp+60h]
	test	rcx,rcx
	jz	4311B7h

l00000000004311AA:
	call	462490h
	mov	dword ptr [rsp+68h],0FFFFFFFFh

l00000000004311B7:
	mov	rdx,[rsp+40h]
	mov	rcx,r14
	call	42AF60h
	test	al,al
	jnz	430888h

l00000000004311CC:
	mov	rcx,r14
	call	42B050h
	mov	edx,eax
	movzx	eax,byte ptr [rsi+20h]
	jmp	431065h
00000000004311DF                                              90                .

l00000000004311E0:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	4312C0h

l00000000004311EE:
	movzx	eax,byte ptr [rax]

l00000000004311F1:
	mov	[rsp+58h],eax
	xor	eax,eax
	cmp	al,r12b
	jz	431106h

l0000000000431200:
	mov	rcx,r14
	mov	r12d,1h
	call	42B050h
	movzx	edx,byte ptr [rsi+20h]
	jmp	431070h
0000000000431217                      66 0F 1F 84 00 00 00 00 00        f........

l0000000000431220:
	mov	rcx,rdi
	mov	edx,30h
	add	ebp,1h
	call	451E10h
	mov	rcx,[rsp+60h]
	test	rcx,rcx
	jnz	4310ACh

l000000000043123E:
	nop

l0000000000431240:
	mov	rcx,[rsp+50h]
	test	rcx,rcx
	jz	431106h

l000000000043124E:
	mov	r12d,1h
	jmp	4310F0h
0000000000431259                            0F 1F 80 00 00 00 00          .......

l0000000000431260:
	mov	rdx,[rcx]
	call	qword ptr [rdx+50h]
	mov	rcx,[rsp+60h]
	mov	dword ptr [rsp+68h],0FFFFFFFFh
	test	rcx,rcx
	jz	431240h

l0000000000431278:
	mov	rdx,[rcx+10h]
	cmp	rdx,[rcx+18h]
	jc	4310D8h

l0000000000431286:
	nop	word ptr cs:[rax+rax+0h]

l0000000000431290:
	mov	rdx,[rcx]
	call	qword ptr [rdx+48h]
	cmp	eax,0FFh
	jnz	4310DBh

l000000000043129F:
	mov	qword ptr [rsp+60h],+0h
	jmp	431240h
00000000004312AA                               66 0F 1F 44 00 00           f..D..

l00000000004312B0:
	mov	ebx,eax
	jmp	430893h
00000000004312B7                      66 0F 1F 84 00 00 00 00 00        f........

l00000000004312C0:
	mov	rax,[rcx]
	call	qword ptr [rax+48h]
	cmp	eax,0FFh
	jnz	4311F1h

l00000000004312CF:
	mov	qword ptr [rsp+50h],+0h
	mov	eax,1h
	jmp	4310FDh

l00000000004312E2:
	mov	r13d,1h
	jmp	430CBDh
00000000004312ED                                        0F 1F 00              ...

l00000000004312F0:
	mov	rax,[rcx]
	call	qword ptr [rax+50h]
	jmp	430EE0h
00000000004312FB                                  0F 1F 44 00 00            ..D..

l0000000000431300:
	mov	rax,[rcx]
	call	qword ptr [rax+48h]
	cmp	eax,0FFh
	jnz	430BD1h

l000000000043130F:
	mov	qword ptr [rsp+50h],+0h
	mov	eax,1h
	jmp	430AE2h

l0000000000431322:
	mov	rax,[rcx]
	call	qword ptr [rax+48h]
	cmp	eax,0FFh
	jnz	430BA1h

l0000000000431331:
	mov	qword ptr [rsp+60h],+0h
	jmp	430B05h

l000000000043133F:
	mov	eax,ecx
	jmp	431065h

l0000000000431346:
	mov	ebx,0FFFFFFFFh
	jmp	430B07h

l0000000000431350:
	mov	rax,[rdi]
	xor	r9d,r9d
	xor	edx,edx
	mov	rcx,rdi
	mov	r8,[rax-18h]
	call	451CC0h
	xor	r15d,r15d
	jmp	430993h

l000000000043136C:
	mov	eax,1h
	jmp	431065h
0000000000431376                   48 89 C3 48 8B 84 24 80 00 00       H..H..$...
0000000000431380 00 48 8B 54 24 48 48 8D 48 E8 E8 D1 F6 01 00 48 .H.T$HH.H......H
0000000000431390 89 D9 E8 19 02 FE FF 90 90 90 90 90 90 90 90 90 ................

;; fn00000000004313A0: 00000000004313A0
fn00000000004313A0 proc
	push	rbx
	sub	rsp,60h
	mov	r10,[r9+8h]
	mov	r9,[r9]
	mov	rbx,rcx
	mov	rcx,[rsp+0A0h]
	mov	rax,[rdx]
	movdqu	xmm1,[r8]
	lea	r8,[rsp+50h]
	mov	[rsp+40h],r9
	lea	r9,[rsp+40h]
	mov	[rsp+48h],r10
	mov	[rsp+30h],rcx
	mov	rcx,[rsp+98h]
	movaps	[rsp+50h],xmm1
	mov	[rsp+28h],rcx
	mov	rcx,[rsp+90h]
	mov	[rsp+20h],rcx
	mov	rcx,rbx
	call	qword ptr [rax+60h]
	mov	rax,rbx
	add	rsp,60h
	pop	rbx
	ret
0000000000431406                   90 90 90 90 90 90 90 90 90 90       ..........

;; fn0000000000431410: 0000000000431410
fn0000000000431410 proc
	push	rbx
	sub	rsp,60h
	mov	r10,[r9+8h]
	mov	r9,[r9]
	mov	rbx,rcx
	mov	rcx,[rsp+0A0h]
	mov	rax,[rdx]
	movdqu	xmm1,[r8]
	lea	r8,[rsp+50h]
	mov	[rsp+40h],r9
	lea	r9,[rsp+40h]
	mov	[rsp+48h],r10
	mov	[rsp+30h],rcx
	mov	rcx,[rsp+98h]
	movaps	[rsp+50h],xmm1
	mov	[rsp+28h],rcx
	mov	rcx,[rsp+90h]
	mov	[rsp+20h],rcx
	mov	rcx,rbx
	call	qword ptr [rax+10h]
	mov	rax,rbx
	add	rsp,60h
	pop	rbx
	ret
0000000000431476                   90 90 90 90 90 90 90 90 90 90       ..........

;; fn0000000000431480: 0000000000431480
fn0000000000431480 proc
	push	rbx
	sub	rsp,60h
	mov	r10,[r9+8h]
	mov	r9,[r9]
	mov	rbx,rcx
	mov	rcx,[rsp+0A0h]
	mov	rax,[rdx]
	movdqu	xmm1,[r8]
	lea	r8,[rsp+50h]
	mov	[rsp+40h],r9
	lea	r9,[rsp+40h]
	mov	[rsp+48h],r10
	mov	[rsp+30h],rcx
	mov	rcx,[rsp+98h]
	movaps	[rsp+50h],xmm1
	mov	[rsp+28h],rcx
	mov	rcx,[rsp+90h]
	mov	[rsp+20h],rcx
	mov	rcx,rbx
	call	qword ptr [rax+50h]
	mov	rax,rbx
	add	rsp,60h
	pop	rbx
	ret
00000000004314E6                   90 90 90 90 90 90 90 90 90 90       ..........

;; fn00000000004314F0: 00000000004314F0
fn00000000004314F0 proc
	push	rbx
	sub	rsp,60h
	mov	r10,[r9+8h]
	mov	r9,[r9]
	mov	rbx,rcx
	mov	rcx,[rsp+0A0h]
	mov	rax,[rdx]
	movdqu	xmm1,[r8]
	lea	r8,[rsp+50h]
	mov	[rsp+40h],r9
	lea	r9,[rsp+40h]
	mov	[rsp+48h],r10
	mov	[rsp+30h],rcx
	mov	rcx,[rsp+98h]
	movaps	[rsp+50h],xmm1
	mov	[rsp+28h],rcx
	mov	rcx,[rsp+90h]
	mov	[rsp+20h],rcx
	mov	rcx,rbx
	call	qword ptr [rax+58h]
	mov	rax,rbx
	add	rsp,60h
	pop	rbx
	ret
0000000000431556                   90 90 90 90 90 90 90 90 90 90       ..........

;; fn0000000000431560: 0000000000431560
fn0000000000431560 proc
	push	rbx
	sub	rsp,60h
	mov	r10,[r9+8h]
	mov	r9,[r9]
	mov	rbx,rcx
	mov	rcx,[rsp+0A0h]
	mov	rax,[rdx]
	movdqu	xmm1,[r8]
	lea	r8,[rsp+50h]
	mov	[rsp+40h],r9
	lea	r9,[rsp+40h]
	mov	[rsp+48h],r10
	mov	[rsp+30h],rcx
	mov	rcx,[rsp+98h]
	movaps	[rsp+50h],xmm1
	mov	[rsp+28h],rcx
	mov	rcx,[rsp+90h]
	mov	[rsp+20h],rcx
	mov	rcx,rbx
	call	qword ptr [rax+48h]
	mov	rax,rbx
	add	rsp,60h
	pop	rbx
	ret
00000000004315C6                   90 90 90 90 90 90 90 90 90 90       ..........

;; fn00000000004315D0: 00000000004315D0
fn00000000004315D0 proc
	push	rbx
	sub	rsp,60h
	mov	rax,[rdx]
	lea	r10,[00000000004324B0]                                 ; [rip+00000ED1]
	movdqu	xmm3,[r8]
	mov	rbx,rcx
	mov	r8,[rsp+98h]
	mov	rcx,[rsp+90h]
	mov	rax,[rax+28h]
	movdqu	xmm1,[r9]
	mov	r9,[rsp+0A0h]
	mov	[rsp+28h],r8
	lea	r8,[rsp+50h]
	cmp	rax,r10
	mov	[rsp+20h],rcx
	mov	rcx,rbx
	movaps	[rsp+50h],xmm3
	mov	[rsp+30h],r9
	lea	r9,[rsp+40h]
	movaps	[rsp+40h],xmm1
	jnz	431641h

l0000000000431633:
	call	42CD70h
	mov	rax,rbx
	add	rsp,60h
	pop	rbx
	ret

l0000000000431641:
	call	rax
	mov	rax,rbx
	add	rsp,60h
	pop	rbx
	ret
000000000043164C                                     90 90 90 90             ....

;; fn0000000000431650: 0000000000431650
fn0000000000431650 proc
	push	rbx
	sub	rsp,60h
	mov	rax,[rdx]
	lea	r10,[0000000000432520]                                 ; [rip+00000EC1]
	movdqu	xmm3,[r8]
	mov	rbx,rcx
	mov	r8,[rsp+98h]
	mov	rcx,[rsp+90h]
	mov	rax,[rax+18h]
	movdqu	xmm1,[r9]
	mov	r9,[rsp+0A0h]
	mov	[rsp+28h],r8
	lea	r8,[rsp+50h]
	cmp	rax,r10
	mov	[rsp+20h],rcx
	mov	rcx,rbx
	movaps	[rsp+50h],xmm3
	mov	[rsp+30h],r9
	lea	r9,[rsp+40h]
	movaps	[rsp+40h],xmm1
	jnz	4316C1h

l00000000004316B3:
	call	42D710h
	mov	rax,rbx
	add	rsp,60h
	pop	rbx
	ret

l00000000004316C1:
	call	rax
	mov	rax,rbx
	add	rsp,60h
	pop	rbx
	ret
00000000004316CC                                     90 90 90 90             ....

;; fn00000000004316D0: 00000000004316D0
fn00000000004316D0 proc
	push	rbx
	sub	rsp,60h
	mov	rax,[rdx]
	lea	r10,[0000000000432590]                                 ; [rip+00000EB1]
	movdqu	xmm3,[r8]
	mov	rbx,rcx
	mov	r8,[rsp+98h]
	mov	rcx,[rsp+90h]
	mov	rax,[rax+30h]
	movdqu	xmm1,[r9]
	mov	r9,[rsp+0A0h]
	mov	[rsp+28h],r8
	lea	r8,[rsp+50h]
	cmp	rax,r10
	mov	[rsp+20h],rcx
	mov	rcx,rbx
	movaps	[rsp+50h],xmm3
	mov	[rsp+30h],r9
	lea	r9,[rsp+40h]
	movaps	[rsp+40h],xmm1
	jnz	431741h

l0000000000431733:
	call	42E0D0h
	mov	rax,rbx
	add	rsp,60h
	pop	rbx
	ret

l0000000000431741:
	call	rax
	mov	rax,rbx
	add	rsp,60h
	pop	rbx
	ret
000000000043174C                                     90 90 90 90             ....

;; fn0000000000431750: 0000000000431750
fn0000000000431750 proc
	push	rbx
	sub	rsp,60h
	mov	rax,[rdx]
	lea	r10,[0000000000432600]                                 ; [rip+00000EA1]
	movdqu	xmm3,[r8]
	mov	rbx,rcx
	mov	r8,[rsp+98h]
	mov	rcx,[rsp+90h]
	mov	rax,[rax+20h]
	movdqu	xmm1,[r9]
	mov	r9,[rsp+0A0h]
	mov	[rsp+28h],r8
	lea	r8,[rsp+50h]
	cmp	rax,r10
	mov	[rsp+20h],rcx
	mov	rcx,rbx
	movaps	[rsp+50h],xmm3
	mov	[rsp+30h],r9
	lea	r9,[rsp+40h]
	movaps	[rsp+40h],xmm1
	jnz	4317C1h

l00000000004317B3:
	call	42EA70h
	mov	rax,rbx
	add	rsp,60h
	pop	rbx
	ret

l00000000004317C1:
	call	rax
	mov	rax,rbx
	add	rsp,60h
	pop	rbx
	ret
00000000004317CC                                     90 90 90 90             ....

;; fn00000000004317D0: 00000000004317D0
fn00000000004317D0 proc
	push	rbx
	sub	rsp,60h
	mov	rax,[rdx]
	lea	r10,[0000000000432670]                                 ; [rip+00000E91]
	movdqu	xmm3,[r8]
	mov	rbx,rcx
	mov	r8,[rsp+98h]
	mov	rcx,[rsp+90h]
	mov	rax,[rax+38h]
	movdqu	xmm1,[r9]
	mov	r9,[rsp+0A0h]
	mov	[rsp+28h],r8
	lea	r8,[rsp+50h]
	cmp	rax,r10
	mov	[rsp+20h],rcx
	mov	rcx,rbx
	movaps	[rsp+50h],xmm3
	mov	[rsp+30h],r9
	lea	r9,[rsp+40h]
	movaps	[rsp+40h],xmm1
	jnz	431841h

l0000000000431833:
	call	42F430h
	mov	rax,rbx
	add	rsp,60h
	pop	rbx
	ret

l0000000000431841:
	call	rax
	mov	rax,rbx
	add	rsp,60h
	pop	rbx
	ret
000000000043184C                                     90 90 90 90             ....

;; fn0000000000431850: 0000000000431850
fn0000000000431850 proc
	push	rbx
	sub	rsp,60h
	mov	rax,[rdx]
	lea	r10,[00000000004326E0]                                 ; [rip+00000E81]
	movdqu	xmm3,[r8]
	mov	rbx,rcx
	mov	r8,[rsp+98h]
	mov	rcx,[rsp+90h]
	mov	rax,[rax+40h]
	movdqu	xmm1,[r9]
	mov	r9,[rsp+0A0h]
	mov	[rsp+28h],r8
	lea	r8,[rsp+50h]
	cmp	rax,r10
	mov	[rsp+20h],rcx
	mov	rcx,rbx
	movaps	[rsp+50h],xmm3
	mov	[rsp+30h],r9
	lea	r9,[rsp+40h]
	movaps	[rsp+40h],xmm1
	jnz	4318C1h

l00000000004318B3:
	call	42FE30h
	mov	rax,rbx
	add	rsp,60h
	pop	rbx
	ret

l00000000004318C1:
	call	rax
	mov	rax,rbx
	add	rsp,60h
	pop	rbx
	ret
00000000004318CC                                     90 90 90 90             ....

;; fn00000000004318D0: 00000000004318D0
fn00000000004318D0 proc
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,+88h
	mov	rbx,[rsp+0D0h]
	mov	rax,[r8]
	mov	rsi,rcx
	mov	rbp,[r8+8h]
	mov	r10,[r9+8h]
	mov	r9,[r9]
	lea	r8,[rsp+50h]
	mov	edi,[rbx+18h]
	mov	ecx,edi
	and	ecx,0B5h
	or	ecx,8h
	mov	[rbx+18h],ecx
	mov	[rsp+50h],rax
	lea	rax,[rsp+78h]
	lea	rcx,[rsp+60h]
	mov	[rsp+40h],r9
	lea	r9,[rsp+40h]
	mov	[rsp+30h],rax
	mov	rax,[rsp+0D8h]
	mov	[rsp+20h],rbx
	mov	[rsp+58h],rbp
	mov	[rsp+48h],r10
	mov	[rsp+28h],rax
	call	42FE30h
	mov	rax,[rsp+60h]
	mov	edx,[rsp+68h]
	mov	r8,[rsp+78h]
	mov	[rbx+18h],edi
	mov	rcx,rax
	mov	rax,0FFFFFFFF00000000h
	and	rax,rbp
	mov	[rsi],rcx
	or	rax,rdx
	mov	rdx,[rsp+0E0h]
	mov	[rsi+8h],rax
	mov	rax,rsi
	mov	[rdx],r8
	add	rsp,+88h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
000000000043198B                                  90 90 90 90 90            .....

;; fn0000000000431990: 0000000000431990
fn0000000000431990 proc
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,+0B8h
	mov	rax,[rsp+120h]
	mov	r10,[r9+8h]
	mov	r13,[r8]
	mov	r14,[r8+8h]
	mov	rdi,rcx
	mov	r9,[r9]
	mov	rbp,[rsp+128h]
	test	byte ptr [rax+18h],1h
	mov	[rsp+88h],r10
	mov	[rsp+90h],r13
	mov	[rsp+98h],r14
	mov	[rsp+80h],r9
	jnz	431AA0h

l00000000004319EE:
	lea	r8,[rsp+0ACh]
	mov	[rsp+50h],r9
	lea	rcx,[rsp+70h]
	lea	r9,[rsp+50h]
	mov	[rsp+20h],rax
	mov	[rsp+28h],rbp
	mov	[rsp+30h],r8
	lea	r8,[rsp+60h]
	mov	dword ptr [rsp+0ACh],0FFFFFFFFh
	mov	[rsp+60h],r13
	mov	[rsp+68h],r14
	mov	[rsp+58h],r10
	call	42D710h
	mov	rax,[rsp+70h]
	mov	[rsp+90h],rax
	mov	eax,[rsp+78h]
	mov	[rsp+98h],eax
	mov	eax,[rsp+0ACh]
	cmp	eax,1h
	jbe	431D32h

l0000000000431A60:
	mov	rax,[rsp+130h]
	lea	rdx,[rsp+80h]
	lea	rcx,[rsp+90h]
	mov	byte ptr [rax],1h
	mov	dword ptr [rbp+0h],4h
	call	42AF60h
	test	al,al
	jz	431D3Fh

l0000000000431A8F:
	or	dword ptr [rbp+0h],2h
	jmp	431D3Fh
0000000000431A98                         0F 1F 84 00 00 00 00 00         ........

l0000000000431AA0:
	lea	rdx,[rax+0D0h]
	lea	rcx,[rsp+0ACh]
	mov	r15d,1h
	mov	r14d,1h
	call	42A360h
	cmp	qword ptr [rax+40h],0h
	mov	r12,rax
	setz	sil
	cmp	qword ptr [rax+30h],0h
	setz	bl
	xor	r13d,r13d
	nop	word ptr [rax+rax+0h]

l0000000000431AE0:
	mov	eax,ebx
	xor	eax,1h
	cmp	sil,al
	ja	431C06h

l0000000000431AEE:
	mov	rcx,[rsp+90h]
	test	rcx,rcx
	jz	431D17h

l0000000000431AFF:
	cmp	dword ptr [rsp+98h],0FFh
	jz	431CB0h

l0000000000431B0D:
	mov	rcx,[rsp+80h]
	test	rcx,rcx
	jz	431E37h

l0000000000431B1E:
	xor	edx,edx

l0000000000431B20:
	xor	eax,eax
	cmp	dword ptr [rsp+88h],0FFh
	jz	431C42h

l0000000000431B30:
	cmp	al,dl
	jz	431C64h

l0000000000431B38:
	mov	rcx,[rsp+90h]
	test	rcx,rcx
	jz	431E43h

l0000000000431B49:
	mov	edx,[rsp+98h]
	cmp	edx,0FFh
	jz	431CE0h

l0000000000431B59:
	test	sil,sil
	jnz	431B6Bh

l0000000000431B5E:
	mov	rax,[r12+38h]
	cmp	[rax+r13],dl
	setz	r14b

l0000000000431B6B:
	cmp	r14b,bl
	jc	431C06h

l0000000000431B74:
	test	bl,bl
	jnz	431B85h

l0000000000431B78:
	mov	rax,[r12+28h]
	cmp	[rax+r13],dl
	setz	r15b

l0000000000431B85:
	cmp	r15b,sil
	jc	431DA0h

l0000000000431B8E:
	mov	eax,r14d
	xor	eax,1h
	cmp	r15b,al
	jc	431DA0h

l0000000000431B9D:
	mov	rcx,[rsp+90h]
	add	r13,1h
	test	rcx,rcx
	jz	431BCFh

l0000000000431BAE:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	431D70h

l0000000000431BBC:
	add	rax,1h
	mov	[rcx+10h],rax

l0000000000431BC4:
	mov	dword ptr [rsp+98h],0FFFFFFFFh

l0000000000431BCF:
	test	r14b,r14b
	mov	esi,1h
	jz	431BE2h

l0000000000431BD9:
	cmp	r13,[r12+40h]
	setnc	sil

l0000000000431BE2:
	test	r15b,r15b
	mov	ebx,1h
	jz	431AE0h

l0000000000431BF0:
	cmp	r13,[r12+30h]
	setnc	bl
	mov	eax,ebx
	xor	eax,1h
	cmp	sil,al
	jbe	431AEEh

l0000000000431C06:
	xor	eax,eax
	test	r14b,r14b
	jz	431C70h

l0000000000431C0D:
	cmp	[r12+40h],r13
	jnz	431C70h

l0000000000431C14:
	test	r13,r13
	jz	431C70h

l0000000000431C19:
	mov	rsi,[rsp+130h]
	test	r15b,r15b
	mov	byte ptr [rsi],0h
	jz	431C34h

l0000000000431C29:
	cmp	[r12+30h],r13
	jz	431DBCh

l0000000000431C34:
	shl	eax,1Fh
	sar	eax,1Fh
	and	eax,2h
	jmp	431E2Fh

l0000000000431C42:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	431DD0h

l0000000000431C50:
	movzx	eax,byte ptr [rax]

l0000000000431C53:
	mov	[rsp+88h],eax
	xor	eax,eax
	cmp	al,dl
	jnz	431B38h

l0000000000431C64:
	test	r14b,r14b
	mov	eax,1h
	jnz	431C0Dh

l0000000000431C6E:
	nop

l0000000000431C70:
	test	r15b,r15b
	jz	431D80h

l0000000000431C79:
	cmp	[r12+30h],r13
	jnz	431D80h

l0000000000431C84:
	test	r13,r13
	jz	431D80h

l0000000000431C8D:
	mov	rsi,[rsp+130h]
	shl	eax,1Fh
	sar	eax,1Fh
	and	eax,2h
	mov	byte ptr [rsi],1h
	mov	[rbp+0h],eax
	jmp	431D3Fh
0000000000431CA9                            0F 1F 80 00 00 00 00          .......

l0000000000431CB0:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	431D00h

l0000000000431CBA:
	movzx	eax,byte ptr [rax]

l0000000000431CBD:
	mov	rcx,[rsp+80h]
	mov	[rsp+98h],eax
	test	rcx,rcx
	jnz	431B1Eh

l0000000000431CD5:
	jmp	431B38h
0000000000431CDA                               66 0F 1F 44 00 00           f..D..

l0000000000431CE0:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	431E00h

l0000000000431CEE:
	movzx	eax,byte ptr [rax]

l0000000000431CF1:
	mov	[rsp+98h],eax
	mov	edx,eax
	jmp	431B59h
0000000000431CFF                                              90                .

l0000000000431D00:
	mov	rax,[rcx]
	call	qword ptr [rax+48h]
	cmp	eax,0FFh
	jnz	431CBDh

l0000000000431D0B:
	mov	qword ptr [rsp+90h],+0h

l0000000000431D17:
	mov	rcx,[rsp+80h]
	test	rcx,rcx
	jz	431C64h

l0000000000431D28:
	mov	edx,1h
	jmp	431B20h

l0000000000431D32:
	mov	rsi,[rsp+130h]
	mov	[rsi],al
	and	byte ptr [rsi],1h

l0000000000431D3F:
	mov	rax,[rsp+90h]
	mov	rdx,[rsp+98h]
	mov	[rdi],rax
	mov	rax,rdi
	mov	[rdi+8h],rdx
	add	rsp,+0B8h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret
0000000000431D6D                                        0F 1F 00              ...

l0000000000431D70:
	mov	rax,[rcx]
	call	qword ptr [rax+50h]
	jmp	431BC4h
0000000000431D7B                                  0F 1F 44 00 00            ..D..

l0000000000431D80:
	mov	rbx,[rsp+130h]
	test	al,al
	mov	byte ptr [rbx],0h
	jz	431DBCh

l0000000000431D8F:
	mov	dword ptr [rbp+0h],6h
	jmp	431D3Fh
0000000000431D98                         0F 1F 84 00 00 00 00 00         ........

l0000000000431DA0:
	test	r14b,r14b
	jz	431DB1h

l0000000000431DA5:
	cmp	r13,[r12+40h]
	jnz	431DB1h

l0000000000431DAC:
	test	r13,r13
	jnz	431E22h

l0000000000431DB1:
	mov	rax,[rsp+130h]
	mov	byte ptr [rax],0h

l0000000000431DBC:
	mov	dword ptr [rbp+0h],4h
	jmp	431D3Fh
0000000000431DC8                         0F 1F 84 00 00 00 00 00         ........

l0000000000431DD0:
	mov	rax,[rcx]
	mov	[rsp+4Fh],dl
	call	qword ptr [rax+48h]
	cmp	eax,0FFh
	movzx	edx,byte ptr [rsp+4Fh]
	jnz	431C53h

l0000000000431DE8:
	mov	qword ptr [rsp+80h],+0h
	mov	eax,1h
	jmp	431B30h
0000000000431DFE                                           66 90               f.

l0000000000431E00:
	mov	rax,[rcx]
	call	qword ptr [rax+48h]
	cmp	eax,0FFh
	jnz	431CF1h

l0000000000431E0F:
	mov	qword ptr [rsp+90h],+0h
	mov	edx,eax
	jmp	431B59h

l0000000000431E22:
	mov	rax,[rsp+130h]
	mov	byte ptr [rax],0h
	xor	eax,eax

l0000000000431E2F:
	mov	[rbp+0h],eax
	jmp	431D3Fh

l0000000000431E37:
	mov	edx,[rsp+98h]
	jmp	431B59h

l0000000000431E43:
	mov	edx,0FFFFFFFFh
	jmp	431B59h
0000000000431E4D                                        90 90 90              ...

;; fn0000000000431E50: 0000000000431E50
fn0000000000431E50 proc
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,+98h
	mov	rsi,[r8]
	mov	r15,[r8+8h]
	lea	r13,[rsp+88h]
	lea	rbx,[rsp+80h]
	mov	rbp,rcx
	mov	rdi,rdx
	xor	ecx,ecx
	xor	edx,edx
	mov	r8,r13
	mov	r12,[r9]
	mov	r14,[r9+8h]
	call	4505D0h
	mov	edx,20h
	mov	rcx,rbx
	mov	[rsp+80h],rax
	call	451BE0h
	mov	rax,[rsp+108h]
	lea	rcx,[rsp+70h]
	lea	r9,[rsp+50h]
	lea	r8,[rsp+60h]
	mov	[rsp+30h],rbx
	mov	rdx,rdi
	mov	[rsp+60h],rsi
	mov	[rsp+68h],r15
	mov	[rsp+28h],rax
	mov	rax,[rsp+100h]
	mov	[rsp+50h],r12
	mov	[rsp+58h],r14
	mov	[rsp+20h],rax
	call	430800h
	mov	rsi,[rsp+78h]
	mov	rdi,[rsp+70h]
	mov	rax,0FFFFFFFF00000000h
	and	r15,rax
	mov	ebx,esi
	or	r15,rbx
	mov	ebx,esi
	mov	[rsp+48h],r15
	mov	r15,rdi
	call	46AC50h
	mov	r8,[rsp+108h]
	mov	rdx,[rsp+110h]
	mov	r9,r13
	mov	rcx,[rsp+80h]
	mov	[rsp+88h],rax
	call	46FAC0h
	test	rdi,rdi
	jz	432010h

l0000000000431F4E:
	cmp	esi,0FFh
	jz	431FC0h

l0000000000431F53:
	test	r12,r12
	jz	431F72h

l0000000000431F58:
	xor	esi,esi

l0000000000431F5A:
	xor	eax,eax
	cmp	r14d,0FFh
	jz	431FD0h

l0000000000431F62:
	cmp	sil,al
	jnz	431F72h

l0000000000431F67:
	mov	rax,[rsp+108h]
	or	dword ptr [rax],2h

l0000000000431F72:
	mov	rax,0FFFFFFFF00000000h
	and	rax,[rsp+48h]
	mov	rcx,[rsp+80h]
	mov	[rbp+0h],r15
	or	rbx,rax
	mov	eax,0FFFFFFFFh
	mov	[rbp+8h],rbx
	lock
	xadd	[rcx-8h],eax
	test	eax,eax
	jle	431FE0h

l0000000000431FA2:
	mov	rax,rbp
	add	rsp,+98h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret
0000000000431FB9                            0F 1F 80 00 00 00 00          .......

l0000000000431FC0:
	mov	rax,[rdi+10h]
	cmp	rax,[rdi+18h]
	jnc	432030h

l0000000000431FCA:
	movzx	ebx,byte ptr [rax]
	jmp	431F53h
0000000000431FCF                                              90                .

l0000000000431FD0:
	mov	rax,[r12+18h]
	cmp	[r12+10h],rax
	jnc	431FF0h

l0000000000431FDC:
	xor	eax,eax
	jmp	431F62h

l0000000000431FE0:
	sub	rcx,18h
	mov	rdx,r13
	call	450A50h
	jmp	431FA2h
0000000000431FEE                                           66 90               f.

l0000000000431FF0:
	mov	rax,[r12]
	mov	rcx,r12
	call	qword ptr [rax+48h]
	cmp	eax,0FFh
	jnz	431FDCh

l0000000000431FFF:
	mov	eax,1h
	jmp	431F62h
0000000000432009                            0F 1F 80 00 00 00 00          .......

l0000000000432010:
	xor	r15d,r15d
	test	r12,r12
	jz	431F67h

l000000000043201C:
	mov	esi,1h
	jmp	431F5Ah
0000000000432026                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l0000000000432030:
	mov	rax,[rdi]
	mov	rcx,rdi
	call	qword ptr [rax+48h]
	cmp	eax,0FFh
	jz	432010h

l000000000043203E:
	mov	ebx,eax
	jmp	431F53h
0000000000432045                48 89 C3 48 8B 84 24 80 00 00 00      H..H..$....
0000000000432050 4C 89 EA 48 8D 48 E8 E8 04 EA 01 00 48 89 D9 E8 L..H.H......H...
0000000000432060 4C F5 FD FF 90 90 90 90 90 90 90 90 90 90 90 90 L...............

;; fn0000000000432070: 0000000000432070
fn0000000000432070 proc
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,+98h
	mov	rsi,[r8]
	mov	r15,[r8+8h]
	lea	r13,[rsp+88h]
	lea	rbx,[rsp+80h]
	mov	rbp,rcx
	mov	rdi,rdx
	xor	ecx,ecx
	xor	edx,edx
	mov	r8,r13
	mov	r12,[r9]
	mov	r14,[r9+8h]
	call	4505D0h
	mov	edx,20h
	mov	rcx,rbx
	mov	[rsp+80h],rax
	call	451BE0h
	mov	rax,[rsp+108h]
	lea	rcx,[rsp+70h]
	lea	r9,[rsp+50h]
	lea	r8,[rsp+60h]
	mov	[rsp+30h],rbx
	mov	rdx,rdi
	mov	[rsp+60h],rsi
	mov	[rsp+68h],r15
	mov	[rsp+28h],rax
	mov	rax,[rsp+100h]
	mov	[rsp+50h],r12
	mov	[rsp+58h],r14
	mov	[rsp+20h],rax
	call	430800h
	mov	rsi,[rsp+78h]
	mov	rdi,[rsp+70h]
	mov	rax,0FFFFFFFF00000000h
	and	r15,rax
	mov	ebx,esi
	or	r15,rbx
	mov	ebx,esi
	mov	[rsp+48h],r15
	mov	r15,rdi
	call	46AC50h
	mov	r8,[rsp+108h]
	mov	rdx,[rsp+110h]
	mov	r9,r13
	mov	rcx,[rsp+80h]
	mov	[rsp+88h],rax
	call	46FBE0h
	test	rdi,rdi
	jz	432230h

l000000000043216E:
	cmp	esi,0FFh
	jz	4321E0h

l0000000000432173:
	test	r12,r12
	jz	432192h

l0000000000432178:
	xor	esi,esi

l000000000043217A:
	xor	eax,eax
	cmp	r14d,0FFh
	jz	4321F0h

l0000000000432182:
	cmp	sil,al
	jnz	432192h

l0000000000432187:
	mov	rax,[rsp+108h]
	or	dword ptr [rax],2h

l0000000000432192:
	mov	rax,0FFFFFFFF00000000h
	and	rax,[rsp+48h]
	mov	rcx,[rsp+80h]
	mov	[rbp+0h],r15
	or	rbx,rax
	mov	eax,0FFFFFFFFh
	mov	[rbp+8h],rbx
	lock
	xadd	[rcx-8h],eax
	test	eax,eax
	jle	432200h

l00000000004321C2:
	mov	rax,rbp
	add	rsp,+98h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret
00000000004321D9                            0F 1F 80 00 00 00 00          .......

l00000000004321E0:
	mov	rax,[rdi+10h]
	cmp	rax,[rdi+18h]
	jnc	432250h

l00000000004321EA:
	movzx	ebx,byte ptr [rax]
	jmp	432173h
00000000004321EF                                              90                .

l00000000004321F0:
	mov	rax,[r12+18h]
	cmp	[r12+10h],rax
	jnc	432210h

l00000000004321FC:
	xor	eax,eax
	jmp	432182h

l0000000000432200:
	sub	rcx,18h
	mov	rdx,r13
	call	450A50h
	jmp	4321C2h
000000000043220E                                           66 90               f.

l0000000000432210:
	mov	rax,[r12]
	mov	rcx,r12
	call	qword ptr [rax+48h]
	cmp	eax,0FFh
	jnz	4321FCh

l000000000043221F:
	mov	eax,1h
	jmp	432182h
0000000000432229                            0F 1F 80 00 00 00 00          .......

l0000000000432230:
	xor	r15d,r15d
	test	r12,r12
	jz	432187h

l000000000043223C:
	mov	esi,1h
	jmp	43217Ah
0000000000432246                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l0000000000432250:
	mov	rax,[rdi]
	mov	rcx,rdi
	call	qword ptr [rax+48h]
	cmp	eax,0FFh
	jz	432230h

l000000000043225E:
	mov	ebx,eax
	jmp	432173h
0000000000432265                48 89 C3 48 8B 84 24 80 00 00 00      H..H..$....
0000000000432270 4C 89 EA 48 8D 48 E8 E8 E4 E7 01 00 48 89 D9 E8 L..H.H......H...
0000000000432280 2C F3 FD FF 90 90 90 90 90 90 90 90 90 90 90 90 ,...............

;; fn0000000000432290: 0000000000432290
fn0000000000432290 proc
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,+98h
	mov	rsi,[r8]
	mov	r15,[r8+8h]
	lea	r13,[rsp+88h]
	lea	rbx,[rsp+80h]
	mov	rbp,rcx
	mov	rdi,rdx
	xor	ecx,ecx
	xor	edx,edx
	mov	r8,r13
	mov	r12,[r9]
	mov	r14,[r9+8h]
	call	4505D0h
	mov	edx,20h
	mov	rcx,rbx
	mov	[rsp+80h],rax
	call	451BE0h
	mov	rax,[rsp+108h]
	lea	rcx,[rsp+70h]
	lea	r9,[rsp+50h]
	lea	r8,[rsp+60h]
	mov	[rsp+30h],rbx
	mov	rdx,rdi
	mov	[rsp+60h],rsi
	mov	[rsp+68h],r15
	mov	[rsp+28h],rax
	mov	rax,[rsp+100h]
	mov	[rsp+50h],r12
	mov	[rsp+58h],r14
	mov	[rsp+20h],rax
	call	430800h
	mov	rsi,[rsp+78h]
	mov	rdi,[rsp+70h]
	mov	rax,0FFFFFFFF00000000h
	and	r15,rax
	mov	ebx,esi
	or	r15,rbx
	mov	ebx,esi
	mov	[rsp+48h],r15
	mov	r15,rdi
	call	46AC50h
	mov	r8,[rsp+108h]
	mov	rdx,[rsp+110h]
	mov	r9,r13
	mov	rcx,[rsp+80h]
	mov	[rsp+88h],rax
	call	46FD00h
	test	rdi,rdi
	jz	432450h

l000000000043238E:
	cmp	esi,0FFh
	jz	432400h

l0000000000432393:
	test	r12,r12
	jz	4323B2h

l0000000000432398:
	xor	esi,esi

l000000000043239A:
	xor	eax,eax
	cmp	r14d,0FFh
	jz	432410h

l00000000004323A2:
	cmp	sil,al
	jnz	4323B2h

l00000000004323A7:
	mov	rax,[rsp+108h]
	or	dword ptr [rax],2h

l00000000004323B2:
	mov	rax,0FFFFFFFF00000000h
	and	rax,[rsp+48h]
	mov	rcx,[rsp+80h]
	mov	[rbp+0h],r15
	or	rbx,rax
	mov	eax,0FFFFFFFFh
	mov	[rbp+8h],rbx
	lock
	xadd	[rcx-8h],eax
	test	eax,eax
	jle	432420h

l00000000004323E2:
	mov	rax,rbp
	add	rsp,+98h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret
00000000004323F9                            0F 1F 80 00 00 00 00          .......

l0000000000432400:
	mov	rax,[rdi+10h]
	cmp	rax,[rdi+18h]
	jnc	432470h

l000000000043240A:
	movzx	ebx,byte ptr [rax]
	jmp	432393h
000000000043240F                                              90                .

l0000000000432410:
	mov	rax,[r12+18h]
	cmp	[r12+10h],rax
	jnc	432430h

l000000000043241C:
	xor	eax,eax
	jmp	4323A2h

l0000000000432420:
	sub	rcx,18h
	mov	rdx,r13
	call	450A50h
	jmp	4323E2h
000000000043242E                                           66 90               f.

l0000000000432430:
	mov	rax,[r12]
	mov	rcx,r12
	call	qword ptr [rax+48h]
	cmp	eax,0FFh
	jnz	43241Ch

l000000000043243F:
	mov	eax,1h
	jmp	4323A2h
0000000000432449                            0F 1F 80 00 00 00 00          .......

l0000000000432450:
	xor	r15d,r15d
	test	r12,r12
	jz	4323A7h

l000000000043245C:
	mov	esi,1h
	jmp	43239Ah
0000000000432466                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l0000000000432470:
	mov	rax,[rdi]
	mov	rcx,rdi
	call	qword ptr [rax+48h]
	cmp	eax,0FFh
	jz	432450h

l000000000043247E:
	mov	ebx,eax
	jmp	432393h
0000000000432485                48 89 C3 48 8B 84 24 80 00 00 00      H..H..$....
0000000000432490 4C 89 EA 48 8D 48 E8 E8 C4 E5 01 00 48 89 D9 E8 L..H.H......H...
00000000004324A0 0C F1 FD FF 90 90 90 90 90 90 90 90 90 90 90 90 ................

;; fn00000000004324B0: 00000000004324B0
fn00000000004324B0 proc
	push	rbx
	sub	rsp,60h
	mov	rax,[rsp+0A0h]
	mov	r10,[r9+8h]
	movdqu	xmm1,[r8]
	lea	r8,[rsp+50h]
	mov	rbx,rcx
	mov	r9,[r9]
	mov	[rsp+30h],rax
	mov	rax,[rsp+98h]
	movaps	[rsp+50h],xmm1
	mov	[rsp+40h],r9
	lea	r9,[rsp+40h]
	mov	[rsp+48h],r10
	mov	[rsp+28h],rax
	mov	rax,[rsp+90h]
	mov	[rsp+20h],rax
	call	42CD70h
	mov	rax,rbx
	add	rsp,60h
	pop	rbx
	ret
0000000000432512       90 90 90 90 90 90 90 90 90 90 90 90 90 90   ..............

;; fn0000000000432520: 0000000000432520
fn0000000000432520 proc
	push	rbx
	sub	rsp,60h
	mov	rax,[rsp+0A0h]
	mov	r10,[r9+8h]
	movdqu	xmm1,[r8]
	lea	r8,[rsp+50h]
	mov	rbx,rcx
	mov	r9,[r9]
	mov	[rsp+30h],rax
	mov	rax,[rsp+98h]
	movaps	[rsp+50h],xmm1
	mov	[rsp+40h],r9
	lea	r9,[rsp+40h]
	mov	[rsp+48h],r10
	mov	[rsp+28h],rax
	mov	rax,[rsp+90h]
	mov	[rsp+20h],rax
	call	42D710h
	mov	rax,rbx
	add	rsp,60h
	pop	rbx
	ret
0000000000432582       90 90 90 90 90 90 90 90 90 90 90 90 90 90   ..............

;; fn0000000000432590: 0000000000432590
fn0000000000432590 proc
	push	rbx
	sub	rsp,60h
	mov	rax,[rsp+0A0h]
	mov	r10,[r9+8h]
	movdqu	xmm1,[r8]
	lea	r8,[rsp+50h]
	mov	rbx,rcx
	mov	r9,[r9]
	mov	[rsp+30h],rax
	mov	rax,[rsp+98h]
	movaps	[rsp+50h],xmm1
	mov	[rsp+40h],r9
	lea	r9,[rsp+40h]
	mov	[rsp+48h],r10
	mov	[rsp+28h],rax
	mov	rax,[rsp+90h]
	mov	[rsp+20h],rax
	call	42E0D0h
	mov	rax,rbx
	add	rsp,60h
	pop	rbx
	ret
00000000004325F2       90 90 90 90 90 90 90 90 90 90 90 90 90 90   ..............

;; fn0000000000432600: 0000000000432600
fn0000000000432600 proc
	push	rbx
	sub	rsp,60h
	mov	rax,[rsp+0A0h]
	mov	r10,[r9+8h]
	movdqu	xmm1,[r8]
	lea	r8,[rsp+50h]
	mov	rbx,rcx
	mov	r9,[r9]
	mov	[rsp+30h],rax
	mov	rax,[rsp+98h]
	movaps	[rsp+50h],xmm1
	mov	[rsp+40h],r9
	lea	r9,[rsp+40h]
	mov	[rsp+48h],r10
	mov	[rsp+28h],rax
	mov	rax,[rsp+90h]
	mov	[rsp+20h],rax
	call	42EA70h
	mov	rax,rbx
	add	rsp,60h
	pop	rbx
	ret
0000000000432662       90 90 90 90 90 90 90 90 90 90 90 90 90 90   ..............

;; fn0000000000432670: 0000000000432670
fn0000000000432670 proc
	push	rbx
	sub	rsp,60h
	mov	rax,[rsp+0A0h]
	mov	r10,[r9+8h]
	movdqu	xmm1,[r8]
	lea	r8,[rsp+50h]
	mov	rbx,rcx
	mov	r9,[r9]
	mov	[rsp+30h],rax
	mov	rax,[rsp+98h]
	movaps	[rsp+50h],xmm1
	mov	[rsp+40h],r9
	lea	r9,[rsp+40h]
	mov	[rsp+48h],r10
	mov	[rsp+28h],rax
	mov	rax,[rsp+90h]
	mov	[rsp+20h],rax
	call	42F430h
	mov	rax,rbx
	add	rsp,60h
	pop	rbx
	ret
00000000004326D2       90 90 90 90 90 90 90 90 90 90 90 90 90 90   ..............

;; fn00000000004326E0: 00000000004326E0
fn00000000004326E0 proc
	push	rbx
	sub	rsp,60h
	mov	rax,[rsp+0A0h]
	mov	r10,[r9+8h]
	movdqu	xmm1,[r8]
	lea	r8,[rsp+50h]
	mov	rbx,rcx
	mov	r9,[r9]
	mov	[rsp+30h],rax
	mov	rax,[rsp+98h]
	movaps	[rsp+50h],xmm1
	mov	[rsp+40h],r9
	lea	r9,[rsp+40h]
	mov	[rsp+48h],r10
	mov	[rsp+28h],rax
	mov	rax,[rsp+90h]
	mov	[rsp+20h],rax
	call	42FE30h
	mov	rax,rbx
	add	rsp,60h
	pop	rbx
	ret
0000000000432742       90 90 90 90 90 90 90 90 90 90 90 90 90 90   ..............

;; fn0000000000432750: 0000000000432750
;;   Called from:
;;     0000000000437133 (in fn00000000004370D0)
;;     0000000000438004 (in fn0000000000437FB0)
fn0000000000432750 proc
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,+88h
	mov	rdx,[r8+8h]
	mov	rax,[r8]
	mov	rbx,[rsp+0F0h]
	mov	[rsp+0D0h],rcx
	lea	rcx,[rsp+6Eh]
	mov	[rsp+58h],rdx
	mov	rdx,[r9+8h]
	mov	[rsp+50h],rax
	mov	rax,[r9]
	mov	[rsp+48h],rdx
	lea	rdx,[rbx+0D0h]
	mov	[rsp+40h],rax
	call	42A460h
	mov	edi,[rbx+18h]
	mov	r12,rax
	mov	dword ptr [rsp+24h],8h
	and	edi,4Ah
	cmp	edi,40h
	jz	4327D0h

l00000000004327BC:
	cmp	edi,8h
	mov	eax,0Ah
	mov	edx,10h
	cmovz	eax,edx

l00000000004327CC:
	mov	[rsp+24h],eax

l00000000004327D0:
	lea	rbp,[rsp+40h]
	lea	rsi,[rsp+50h]
	mov	rdx,rbp
	mov	rcx,rsi
	call	42B0C0h
	test	al,al
	mov	r14d,eax
	jnz	43300Ch

l00000000004327F0:
	mov	rcx,rsi
	call	42B1B0h
	movzx	ebx,ax
	cmp	bx,[r12+94h]
	setz	byte ptr [rsp+37h]
	jnz	432DF1h

l000000000043280F:
	movzx	eax,byte ptr [r12+20h]
	test	al,al
	jnz	432EC6h

l000000000043281D:
	cmp	bx,[r12+48h]
	jz	432E06h

l0000000000432829:
	mov	rcx,[rsp+50h]
	test	rcx,rcx
	jz	432844h

l0000000000432833:
	call	462DD0h
	mov	r11d,0FFFFFFFFh
	mov	[rsp+58h],r11w

l0000000000432844:
	mov	rdx,rbp
	mov	rcx,rsi
	call	42B0C0h
	test	al,al
	jz	432FC0h

l0000000000432857:
	mov	r14d,1h
	xor	r13d,r13d
	mov	byte ptr [rsp+35h],0h

l0000000000432865:
	cmp	dword ptr [rsp+24h],10h
	mov	edi,16h
	jz	432876h

l0000000000432871:
	movsxd	rdi,dword ptr [rsp+24h]

l0000000000432876:
	lea	rax,[rsp+6Fh]
	xor	edx,edx
	xor	ecx,ecx
	mov	r8,rax
	mov	[rsp+38h],rax
	call	4505D0h
	cmp	byte ptr [r12+20h],0h
	mov	[rsp+70h],rax
	jnz	432F96h

l000000000043289D:
	xor	edx,edx
	mov	eax,0FFFFFFFFh
	lea	r15,[r12+9Ch]
	div	dword ptr [rsp+24h]
	mov	[rsp+30h],eax
	movzx	eax,byte ptr [r12+0C8h]
	test	al,al
	mov	[rsp+36h],al
	jnz	432B8Ah

l00000000004328C9:
	xor	esi,esi
	xor	ebp,ebp
	test	r14b,r14b
	jnz	432BD2h

l00000000004328D6:
	lea	r15d,[rdi+30h]

l00000000004328DA:
	cmp	rdi,0Ah
	ja	432AA0h

l00000000004328E4:
	cmp	bx,2Fh
	jbe	432BD2h

l00000000004328EE:
	cmp	r15w,bx
	jbe	432BD2h

l00000000004328F8:
	sub	ebx,30h

l00000000004328FB:
	cmp	[rsp+30h],esi
	jnc	432AD4h

l0000000000432905:
	mov	rcx,[rsp+50h]
	mov	ebp,1h
	test	rcx,rcx
	jz	432AF8h

l0000000000432918:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	432C13h

l0000000000432926:
	add	rax,2h
	mov	r9d,0FFFFFFFFh
	mov	[rcx+10h],rax
	mov	[rsp+58h],r9w

l000000000043293A:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	432F80h

l0000000000432948:
	movzx	eax,word ptr [rax]

l000000000043294B:
	cmp	ax,0FFh
	jz	432BF0h

l0000000000432955:
	mov	rcx,[rsp+40h]
	xor	ebx,ebx
	mov	[rsp+58h],ax
	test	rcx,rcx
	jz	432B43h

l000000000043296A:
	xor	eax,eax
	cmp	word ptr [rsp+48h],0FFh
	jz	432B19h

l0000000000432978:
	cmp	al,bl
	jnz	432B43h

l0000000000432980:
	xor	ebx,ebx
	mov	r14d,1h

l0000000000432988:
	mov	rax,[rsp+70h]
	cmp	qword ptr [rax-18h],0h
	jnz	432A1Bh

l0000000000432998:
	test	r13d,r13d
	setz	dl
	cmp	dl,[rsp+35h]
	jbe	432A6Ch

l00000000004329A8:
	mov	rdx,[rsp+100h]
	mov	dword ptr [rdx],0h
	mov	rdx,[rsp+0F8h]
	mov	dword ptr [rdx],4h

l00000000004329C4:
	test	r14b,r14b
	jz	4329D4h

l00000000004329C9:
	mov	rdx,[rsp+0F8h]
	or	dword ptr [rdx],2h

l00000000004329D4:
	mov	rdx,[rsp+0D0h]
	mov	rcx,[rsp+50h]
	mov	rbx,[rsp+58h]
	mov	[rdx],rcx
	mov	[rdx+8h],rbx
	mov	edx,0FFFFFFFFh
	lock
	xadd	[rax-8h],edx
	test	edx,edx
	jle	432FD6h

l00000000004329FF:
	mov	rax,[rsp+0D0h]
	add	rsp,+88h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret

l0000000000432A1B:
	lea	rdi,[rsp+70h]
	movsx	edx,r13b
	mov	rcx,rdi
	call	451E10h
	mov	rdx,[r12+18h]
	mov	rcx,[r12+10h]
	mov	r8,rdi
	call	4708F0h
	test	al,al
	jnz	432A50h

l0000000000432A42:
	mov	rax,[rsp+0F8h]
	mov	dword ptr [rax],4h

l0000000000432A50:
	test	r13d,r13d
	setz	al
	cmp	al,[rsp+35h]
	mov	rax,[rsp+70h]
	jbe	432A6Ch

l0000000000432A61:
	cmp	qword ptr [rax-18h],0h
	jz	4329A8h

l0000000000432A6C:
	test	bl,bl
	jnz	4329A8h

l0000000000432A74:
	test	bpl,bpl
	jz	432EEAh

l0000000000432A7D:
	mov	rdx,[rsp+100h]
	mov	dword ptr [rdx],0FFFFFFFFh
	mov	rdx,[rsp+0F8h]
	mov	dword ptr [rdx],4h
	jmp	4329C4h
0000000000432A9E                                           66 90               f.

l0000000000432AA0:
	lea	eax,[rbx-30h]
	cmp	ax,9h
	jbe	4328F8h

l0000000000432AAD:
	lea	eax,[rbx-61h]
	cmp	ax,5h
	jbe	432BE0h

l0000000000432ABA:
	lea	eax,[rbx-41h]
	cmp	ax,5h
	ja	432BD2h

l0000000000432AC7:
	sub	ebx,37h
	cmp	[rsp+30h],esi
	jc	432905h

l0000000000432AD4:
	imul	esi,[rsp+24h]
	mov	eax,ebx
	mov	rcx,[rsp+50h]
	not	eax
	cmp	eax,esi
	setc	al
	add	esi,ebx
	add	r13d,1h
	or	ebp,eax
	test	rcx,rcx
	jnz	432918h

l0000000000432AF8:
	mov	rcx,[rsp+40h]
	test	rcx,rcx
	jz	432980h

l0000000000432B06:
	xor	eax,eax
	cmp	word ptr [rsp+48h],0FFh
	mov	ebx,1h
	jnz	432978h

l0000000000432B19:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	432F8Bh

l0000000000432B27:
	movzx	eax,word ptr [rax]

l0000000000432B2A:
	cmp	ax,0FFh
	jz	432C00h

l0000000000432B34:
	mov	[rsp+48h],ax
	xor	eax,eax
	cmp	al,bl
	jz	432980h

l0000000000432B43:
	mov	rcx,[rsp+50h]
	mov	ebx,0FFFFh
	test	rcx,rcx
	jz	4328DAh

l0000000000432B56:
	movzx	ebx,word ptr [rsp+58h]
	cmp	bx,0FFh
	jnz	4328DAh

l0000000000432B65:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	432FFEh

l0000000000432B73:
	movzx	ebx,word ptr [rax]

l0000000000432B76:
	cmp	bx,0FFh
	jz	432F6Ch

l0000000000432B80:
	mov	[rsp+58h],bx
	jmp	4328DAh

l0000000000432B8A:
	test	r14b,r14b
	jnz	433039h

l0000000000432B93:
	lea	rax,[rsp+70h]
	lea	rdi,[r15+rdi*2]
	xor	esi,esi
	xor	ebp,ebp
	mov	[rsp+28h],rax

l0000000000432BA5:
	cmp	byte ptr [r12+20h],0h
	jz	432BB9h

l0000000000432BAD:
	cmp	bx,[r12+4Ah]
	jz	432D84h

l0000000000432BB9:
	cmp	bx,[r12+48h]
	jz	432BD2h

l0000000000432BC1:
	mov	rax,r15

l0000000000432BC4:
	cmp	bx,[rax]
	jz	432C40h

l0000000000432BC9:
	add	rax,2h
	cmp	rax,rdi
	jnz	432BC4h

l0000000000432BD2:
	xor	ebx,ebx
	jmp	432988h
0000000000432BD9                            0F 1F 80 00 00 00 00          .......

l0000000000432BE0:
	sub	ebx,57h
	jmp	4328FBh
0000000000432BE8                         0F 1F 84 00 00 00 00 00         ........

l0000000000432BF0:
	mov	qword ptr [rsp+50h],+0h
	jmp	432AF8h
0000000000432BFE                                           66 90               f.

l0000000000432C00:
	mov	qword ptr [rsp+40h],+0h
	mov	eax,1h
	jmp	432978h

l0000000000432C13:
	mov	rax,[rcx]
	call	qword ptr [rax+50h]
	mov	rcx,[rsp+50h]
	mov	r8d,0FFFFFFFFh
	mov	[rsp+58h],r8w
	test	rcx,rcx
	jz	432AF8h

l0000000000432C33:
	jmp	43293Ah
0000000000432C38                         0F 1F 84 00 00 00 00 00         ........

l0000000000432C40:
	sub	rax,r15
	sar	rax,1h
	lea	edx,[rax-6h]
	cmp	eax,10h
	cmovge	eax,edx

l0000000000432C4F:
	cmp	[rsp+30h],esi
	jnc	432D15h

l0000000000432C59:
	mov	ebp,1h

l0000000000432C5E:
	mov	rcx,[rsp+50h]
	test	rcx,rcx
	jz	432D40h

l0000000000432C6C:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	432DCEh

l0000000000432C7A:
	add	rax,2h
	mov	edx,0FFFFFFFFh
	mov	[rcx+10h],rax
	mov	[rsp+58h],dx

l0000000000432C8C:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	432FB5h

l0000000000432C9A:
	movzx	eax,word ptr [rax]

l0000000000432C9D:
	cmp	ax,0FFh
	jz	432DC0h

l0000000000432CA7:
	mov	rcx,[rsp+40h]
	xor	ebx,ebx
	mov	[rsp+58h],ax
	test	rcx,rcx
	jz	432CCEh

l0000000000432CB8:
	xor	eax,eax
	cmp	word ptr [rsp+48h],0FFh
	jz	432D61h

l0000000000432CC6:
	cmp	al,bl
	jz	432980h

l0000000000432CCE:
	mov	rcx,[rsp+50h]
	mov	ebx,0FFFFFFFFh
	test	rcx,rcx
	jz	432BA5h

l0000000000432CE1:
	movzx	ebx,word ptr [rsp+58h]
	cmp	bx,0FFh
	jnz	432BA5h

l0000000000432CF0:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	433018h

l0000000000432CFE:
	movzx	ebx,word ptr [rax]

l0000000000432D01:
	cmp	bx,0FFh
	jz	432EDCh

l0000000000432D0B:
	mov	[rsp+58h],bx
	jmp	432BA5h

l0000000000432D15:
	imul	esi,[rsp+24h]
	mov	edx,eax
	mov	rcx,[rsp+50h]
	not	edx
	cmp	edx,esi
	setc	dl
	add	esi,eax
	add	r13d,1h
	or	ebp,edx
	test	rcx,rcx
	jnz	432C6Ch

l0000000000432D39:
	nop	dword ptr [rax+0h]

l0000000000432D40:
	mov	rcx,[rsp+40h]
	test	rcx,rcx
	jz	432980h

l0000000000432D4E:
	xor	eax,eax
	cmp	word ptr [rsp+48h],0FFh
	movzx	ebx,byte ptr [rsp+36h]
	jnz	432CC6h

l0000000000432D61:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	432FAAh

l0000000000432D6F:
	movzx	eax,word ptr [rax]

l0000000000432D72:
	cmp	ax,0FFh
	jz	432DA3h

l0000000000432D78:
	mov	[rsp+48h],ax
	xor	eax,eax
	jmp	432CC6h

l0000000000432D84:
	test	r13d,r13d
	jz	43302Fh

l0000000000432D8D:
	mov	rcx,[rsp+28h]
	movsx	edx,r13b
	call	451E10h
	xor	r13d,r13d
	jmp	432C5Eh

l0000000000432DA3:
	mov	qword ptr [rsp+40h],+0h
	movzx	eax,byte ptr [rsp+36h]
	jmp	432CC6h
0000000000432DB6                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l0000000000432DC0:
	mov	qword ptr [rsp+50h],+0h
	jmp	432D40h

l0000000000432DCE:
	mov	rax,[rcx]
	call	qword ptr [rax+50h]
	mov	rcx,[rsp+50h]
	mov	eax,0FFFFFFFFh
	mov	[rsp+58h],ax
	test	rcx,rcx
	jz	432D40h

l0000000000432DEC:
	jmp	432C8Ch

l0000000000432DF1:
	cmp	bx,[r12+96h]
	jz	43280Fh

l0000000000432E00:
	movzx	eax,byte ptr [r12+20h]

l0000000000432E06:
	xor	r13d,r13d
	xor	r15d,r15d

l0000000000432E0C:
	test	al,al
	jz	432E1Ch

l0000000000432E10:
	cmp	[r12+4Ah],bx
	jz	432FE9h

l0000000000432E1C:
	cmp	[r12+48h],bx
	jz	432FE9h

l0000000000432E28:
	cmp	[r12+9Ch],bx
	jz	432F10h

l0000000000432E37:
	test	r15b,r15b
	jz	432FE9h

l0000000000432E40:
	cmp	[r12+98h],bx
	jz	432E5Ah

l0000000000432E4B:
	cmp	[r12+9Ah],bx
	jnz	432F43h

l0000000000432E5A:
	cmp	dword ptr [rsp+24h],10h
	jz	432E69h

l0000000000432E61:
	test	edi,edi
	jnz	433025h

l0000000000432E69:
	xor	r13d,r13d
	xor	r15d,r15d
	mov	dword ptr [rsp+24h],10h

l0000000000432E77:
	mov	rcx,[rsp+50h]
	test	rcx,rcx
	jz	432EA3h

l0000000000432E81:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	432FF3h

l0000000000432E8F:
	add	rax,2h
	mov	[rcx+10h],rax

l0000000000432E97:
	mov	r10d,0FFFFFFFFh
	mov	[rsp+58h],r10w

l0000000000432EA3:
	mov	rdx,rbp
	mov	rcx,rsi
	call	42B0C0h
	test	al,al
	jz	432F4Dh

l0000000000432EB6:
	mov	[rsp+35h],r15b
	mov	r14d,1h
	jmp	432865h

l0000000000432EC6:
	cmp	bx,[r12+4Ah]
	jnz	43281Dh

l0000000000432ED2:
	mov	eax,1h
	jmp	432E06h

l0000000000432EDC:
	mov	qword ptr [rsp+50h],+0h
	jmp	432BA5h

l0000000000432EEA:
	movzx	edx,byte ptr [rsp+37h]
	mov	ecx,edx
	neg	ecx
	xor	esi,ecx
	add	edx,esi
	mov	rsi,[rsp+100h]
	mov	[rsi],edx
	jmp	4329C4h
0000000000432F06                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l0000000000432F10:
	cmp	dword ptr [rsp+24h],0Ah
	setz	al
	cmp	al,r15b
	jc	432E40h

l0000000000432F21:
	add	r13d,1h
	cmp	dword ptr [rsp+24h],8h
	jz	433044h

l0000000000432F30:
	test	edi,edi
	jz	433044h

l0000000000432F38:
	mov	r15d,1h
	jmp	432E77h

l0000000000432F43:
	mov	byte ptr [rsp+35h],1h
	jmp	432865h

l0000000000432F4D:
	mov	rcx,rsi
	call	42B1B0h
	test	r15b,r15b
	movzx	ebx,ax
	jz	432FE9h

l0000000000432F61:
	movzx	eax,byte ptr [r12+20h]
	jmp	432E0Ch

l0000000000432F6C:
	mov	qword ptr [rsp+50h],+0h
	jmp	4328DAh
0000000000432F7A                               66 0F 1F 44 00 00           f..D..

l0000000000432F80:
	mov	rax,[rcx]
	call	qword ptr [rax+48h]
	jmp	43294Bh

l0000000000432F8B:
	mov	rax,[rcx]
	call	qword ptr [rax+48h]
	jmp	432B2Ah

l0000000000432F96:
	lea	rcx,[rsp+70h]
	mov	edx,20h
	call	451BE0h
	jmp	43289Dh

l0000000000432FAA:
	mov	rax,[rcx]
	call	qword ptr [rax+48h]
	jmp	432D72h

l0000000000432FB5:
	mov	rax,[rcx]
	call	qword ptr [rax+48h]
	jmp	432C9Dh

l0000000000432FC0:
	mov	rcx,rsi
	call	42B1B0h
	movzx	ebx,ax
	movzx	eax,byte ptr [r12+20h]
	jmp	432E06h

l0000000000432FD6:
	mov	rdx,[rsp+38h]
	lea	rcx,[rax-18h]
	call	450A50h
	jmp	4329FFh

l0000000000432FE9:
	mov	[rsp+35h],r15b
	jmp	432865h

l0000000000432FF3:
	mov	rax,[rcx]
	call	qword ptr [rax+50h]
	jmp	432E97h

l0000000000432FFE:
	mov	rax,[rcx]
	call	qword ptr [rax+48h]
	movzx	ebx,ax
	jmp	432B76h

l000000000043300C:
	xor	ebx,ebx
	mov	byte ptr [rsp+37h],0h
	jmp	432857h

l0000000000433018:
	mov	rax,[rcx]
	call	qword ptr [rax+48h]
	mov	ebx,eax
	jmp	432D01h

l0000000000433025:
	mov	byte ptr [rsp+35h],1h
	jmp	432871h

l000000000043302F:
	mov	ebx,1h
	jmp	432988h

l0000000000433039:
	xor	esi,esi
	xor	ebp,ebp
	xor	ebx,ebx
	jmp	432988h

l0000000000433044:
	xor	r13d,r13d
	mov	r15d,1h
	mov	dword ptr [rsp+24h],8h
	jmp	432E77h
000000000043305A                               48 89 C3 48 8B 44           H..H.D
0000000000433060 24 70 48 8B 54 24 38 48 8D 48 E8 E8 F0 D9 01 00 $pH.T$8H.H......
0000000000433070 48 89 D9 E8 38 E5 FD FF 90 90 90 90 90 90 90 90 H...8...........

;; fn0000000000433080: 0000000000433080
;;   Called from:
;;     00000000004371B3 (in fn0000000000437150)
;;     0000000000437533 (in fn0000000000437490)
;;     0000000000438074 (in fn0000000000438020)
fn0000000000433080 proc
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,+88h
	mov	rdx,[r8+8h]
	mov	rax,[r8]
	mov	rbx,[rsp+0F0h]
	mov	[rsp+0D0h],rcx
	lea	rcx,[rsp+6Eh]
	mov	[rsp+58h],rdx
	mov	rdx,[r9+8h]
	mov	[rsp+50h],rax
	mov	rax,[r9]
	mov	[rsp+48h],rdx
	lea	rdx,[rbx+0D0h]
	mov	[rsp+40h],rax
	call	42A460h
	mov	edi,[rbx+18h]
	mov	r12,rax
	mov	dword ptr [rsp+20h],8h
	and	edi,4Ah
	cmp	edi,40h
	jz	433100h

l00000000004330EC:
	cmp	edi,8h
	mov	eax,0Ah
	mov	edx,10h
	cmovz	eax,edx

l00000000004330FC:
	mov	[rsp+20h],eax

l0000000000433100:
	lea	rbp,[rsp+40h]
	lea	rsi,[rsp+50h]
	mov	rdx,rbp
	mov	rcx,rsi
	call	42B0C0h
	test	al,al
	mov	r14d,eax
	jnz	433953h

l0000000000433120:
	mov	rcx,rsi
	call	42B1B0h
	movzx	ebx,ax
	cmp	bx,[r12+94h]
	setz	byte ptr [rsp+37h]
	jnz	433741h

l000000000043313F:
	movzx	eax,byte ptr [r12+20h]
	test	al,al
	jnz	433816h

l000000000043314D:
	cmp	bx,[r12+48h]
	jz	433756h

l0000000000433159:
	mov	rcx,[rsp+50h]
	test	rcx,rcx
	jz	433174h

l0000000000433163:
	call	462DD0h
	mov	r11d,0FFFFFFFFh
	mov	[rsp+58h],r11w

l0000000000433174:
	mov	rdx,rbp
	mov	rcx,rsi
	call	42B0C0h
	test	al,al
	jz	433907h

l0000000000433187:
	mov	r14d,1h
	xor	r13d,r13d
	mov	byte ptr [rsp+35h],0h

l0000000000433195:
	cmp	dword ptr [rsp+20h],10h
	mov	edi,16h
	jz	4331A6h

l00000000004331A1:
	movsxd	rdi,dword ptr [rsp+20h]

l00000000004331A6:
	lea	rax,[rsp+6Fh]
	xor	edx,edx
	xor	ecx,ecx
	mov	r8,rax
	mov	[rsp+38h],rax
	call	4505D0h
	cmp	byte ptr [r12+20h],0h
	mov	[rsp+70h],rax
	jnz	4338DDh

l00000000004331CD:
	cmp	byte ptr [rsp+37h],1h
	lea	r15,[r12+9Ch]
	sbb	eax,eax
	xor	edx,edx
	add	eax,80000000h
	mov	[rsp+30h],eax
	div	dword ptr [rsp+20h]
	mov	[rsp+24h],eax
	movzx	eax,byte ptr [r12+0C8h]
	test	al,al
	mov	[rsp+36h],al
	jnz	4334D8h

l0000000000433204:
	xor	esi,esi
	xor	ebp,ebp
	test	r14b,r14b
	jnz	433520h

l0000000000433211:
	lea	r15d,[rdi+30h]

l0000000000433215:
	cmp	rdi,0Ah
	ja	4333E2h

l000000000043321F:
	cmp	bx,2Fh
	jbe	433520h

l0000000000433229:
	cmp	r15w,bx
	jbe	433520h

l0000000000433233:
	sub	ebx,30h

l0000000000433236:
	cmp	[rsp+24h],esi
	jnc	433420h

l0000000000433240:
	mov	rcx,[rsp+50h]
	mov	ebp,1h
	test	rcx,rcx
	jz	433446h

l0000000000433253:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	433563h

l0000000000433261:
	add	rax,2h
	mov	r9d,0FFFFFFFFh
	mov	[rcx+10h],rax
	mov	[rsp+58h],r9w

l0000000000433275:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	4338D2h

l0000000000433283:
	movzx	eax,word ptr [rax]

l0000000000433286:
	cmp	ax,0FFh
	jz	433540h

l0000000000433290:
	mov	rcx,[rsp+40h]
	xor	ebx,ebx
	mov	[rsp+58h],ax
	test	rcx,rcx
	jz	433491h

l00000000004332A5:
	xor	eax,eax
	cmp	word ptr [rsp+48h],0FFh
	jz	433467h

l00000000004332B3:
	cmp	al,bl
	jnz	433491h

l00000000004332BB:
	xor	ebx,ebx
	mov	r14d,1h

l00000000004332C3:
	mov	rax,[rsp+70h]
	cmp	qword ptr [rax-18h],0h
	jnz	433356h

l00000000004332D3:
	test	r13d,r13d
	setz	dl
	cmp	dl,[rsp+35h]
	jbe	4333A7h

l00000000004332E3:
	mov	rdx,[rsp+100h]
	mov	dword ptr [rdx],0h
	mov	rdx,[rsp+0F8h]
	mov	dword ptr [rdx],4h

l00000000004332FF:
	test	r14b,r14b
	jz	43330Fh

l0000000000433304:
	mov	rdx,[rsp+0F8h]
	or	dword ptr [rdx],2h

l000000000043330F:
	mov	rdx,[rsp+0D0h]
	mov	rcx,[rsp+50h]
	mov	rbx,[rsp+58h]
	mov	[rdx],rcx
	mov	[rdx+8h],rbx
	mov	edx,0FFFFFFFFh
	lock
	xadd	[rax-8h],edx
	test	edx,edx
	jle	43391Dh

l000000000043333A:
	mov	rax,[rsp+0D0h]
	add	rsp,+88h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret

l0000000000433356:
	lea	rdi,[rsp+70h]
	movsx	edx,r13b
	mov	rcx,rdi
	call	451E10h
	mov	rdx,[r12+18h]
	mov	rcx,[r12+10h]
	mov	r8,rdi
	call	4708F0h
	test	al,al
	jnz	43338Bh

l000000000043337D:
	mov	rax,[rsp+0F8h]
	mov	dword ptr [rax],4h

l000000000043338B:
	test	r13d,r13d
	setz	al
	cmp	al,[rsp+35h]
	mov	rax,[rsp+70h]
	jbe	4333A7h

l000000000043339C:
	cmp	qword ptr [rax-18h],0h
	jz	4332E3h

l00000000004333A7:
	test	bl,bl
	jnz	4332E3h

l00000000004333AF:
	test	bpl,bpl
	jz	43383Ah

l00000000004333B8:
	cmp	byte ptr [rsp+37h],1h
	mov	rsi,[rsp+100h]
	sbb	edx,edx
	add	edx,80000000h
	mov	[rsi],edx
	mov	rdx,[rsp+0F8h]
	mov	dword ptr [rdx],4h
	jmp	4332FFh

l00000000004333E2:
	lea	eax,[rbx-30h]
	cmp	ax,9h
	jbe	433233h

l00000000004333EF:
	lea	eax,[rbx-61h]
	cmp	ax,5h
	jbe	433530h

l00000000004333FC:
	lea	eax,[rbx-41h]
	cmp	ax,5h
	ja	433520h

l0000000000433409:
	sub	ebx,37h
	cmp	[rsp+24h],esi
	jc	433240h

l0000000000433416:
	nop	word ptr cs:[rax+rax+0h]

l0000000000433420:
	imul	esi,[rsp+20h]
	mov	eax,[rsp+30h]
	mov	rcx,[rsp+50h]
	sub	eax,ebx
	cmp	eax,esi
	setc	al
	add	esi,ebx
	add	r13d,1h
	or	ebp,eax
	test	rcx,rcx
	jnz	433253h

l0000000000433446:
	mov	rcx,[rsp+40h]
	test	rcx,rcx
	jz	4332BBh

l0000000000433454:
	xor	eax,eax
	cmp	word ptr [rsp+48h],0FFh
	mov	ebx,1h
	jnz	4332B3h

l0000000000433467:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	4338C7h

l0000000000433475:
	movzx	eax,word ptr [rax]

l0000000000433478:
	cmp	ax,0FFh
	jz	433550h

l0000000000433482:
	mov	[rsp+48h],ax
	xor	eax,eax
	cmp	al,bl
	jz	4332BBh

l0000000000433491:
	mov	rcx,[rsp+50h]
	mov	ebx,0FFFFh
	test	rcx,rcx
	jz	433215h

l00000000004334A4:
	movzx	ebx,word ptr [rsp+58h]
	cmp	bx,0FFh
	jnz	433215h

l00000000004334B3:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	433945h

l00000000004334C1:
	movzx	ebx,word ptr [rax]

l00000000004334C4:
	cmp	bx,0FFh
	jz	4338B9h

l00000000004334CE:
	mov	[rsp+58h],bx
	jmp	433215h

l00000000004334D8:
	test	r14b,r14b
	jnz	433980h

l00000000004334E1:
	lea	rax,[rsp+70h]
	lea	rdi,[r15+rdi*2]
	xor	esi,esi
	xor	ebp,ebp
	mov	[rsp+28h],rax

l00000000004334F3:
	cmp	byte ptr [r12+20h],0h
	jz	433507h

l00000000004334FB:
	cmp	bx,[r12+4Ah]
	jz	4336D4h

l0000000000433507:
	cmp	bx,[r12+48h]
	jz	433520h

l000000000043350F:
	mov	rax,r15

l0000000000433512:
	cmp	bx,[rax]
	jz	433590h

l0000000000433517:
	add	rax,2h
	cmp	rax,rdi
	jnz	433512h

l0000000000433520:
	xor	ebx,ebx
	jmp	4332C3h
0000000000433527                      66 0F 1F 84 00 00 00 00 00        f........

l0000000000433530:
	sub	ebx,57h
	jmp	433236h
0000000000433538                         0F 1F 84 00 00 00 00 00         ........

l0000000000433540:
	mov	qword ptr [rsp+50h],+0h
	jmp	433446h
000000000043354E                                           66 90               f.

l0000000000433550:
	mov	qword ptr [rsp+40h],+0h
	mov	eax,1h
	jmp	4332B3h

l0000000000433563:
	mov	rax,[rcx]
	call	qword ptr [rax+50h]
	mov	rcx,[rsp+50h]
	mov	r8d,0FFFFFFFFh
	mov	[rsp+58h],r8w
	test	rcx,rcx
	jz	433446h

l0000000000433583:
	jmp	433275h
0000000000433588                         0F 1F 84 00 00 00 00 00         ........

l0000000000433590:
	sub	rax,r15
	sar	rax,1h
	lea	edx,[rax-6h]
	cmp	eax,10h
	cmovge	eax,edx

l000000000043359F:
	cmp	[rsp+24h],esi
	jnc	433665h

l00000000004335A9:
	mov	ebp,1h

l00000000004335AE:
	mov	rcx,[rsp+50h]
	test	rcx,rcx
	jz	433690h

l00000000004335BC:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	43371Eh

l00000000004335CA:
	add	rax,2h
	mov	edx,0FFFFFFFFh
	mov	[rcx+10h],rax
	mov	[rsp+58h],dx

l00000000004335DC:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	4338F1h

l00000000004335EA:
	movzx	eax,word ptr [rax]

l00000000004335ED:
	cmp	ax,0FFh
	jz	433710h

l00000000004335F7:
	mov	rcx,[rsp+40h]
	xor	ebx,ebx
	mov	[rsp+58h],ax
	test	rcx,rcx
	jz	43361Eh

l0000000000433608:
	xor	eax,eax
	cmp	word ptr [rsp+48h],0FFh
	jz	4336B1h

l0000000000433616:
	cmp	al,bl
	jz	4332BBh

l000000000043361E:
	mov	rcx,[rsp+50h]
	mov	ebx,0FFFFFFFFh
	test	rcx,rcx
	jz	4334F3h

l0000000000433631:
	movzx	ebx,word ptr [rsp+58h]
	cmp	bx,0FFh
	jnz	4334F3h

l0000000000433640:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	43395Fh

l000000000043364E:
	movzx	ebx,word ptr [rax]

l0000000000433651:
	cmp	bx,0FFh
	jz	43382Ch

l000000000043365B:
	mov	[rsp+58h],bx
	jmp	4334F3h

l0000000000433665:
	imul	esi,[rsp+20h]
	mov	edx,[rsp+30h]
	mov	rcx,[rsp+50h]
	sub	edx,eax
	cmp	edx,esi
	setc	dl
	add	esi,eax
	add	r13d,1h
	or	ebp,edx
	test	rcx,rcx
	jnz	4335BCh

l000000000043368B:
	nop	dword ptr [rax+rax+0h]

l0000000000433690:
	mov	rcx,[rsp+40h]
	test	rcx,rcx
	jz	4332BBh

l000000000043369E:
	xor	eax,eax
	cmp	word ptr [rsp+48h],0FFh
	movzx	ebx,byte ptr [rsp+36h]
	jnz	433616h

l00000000004336B1:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	4338FCh

l00000000004336BF:
	movzx	eax,word ptr [rax]

l00000000004336C2:
	cmp	ax,0FFh
	jz	4336F3h

l00000000004336C8:
	mov	[rsp+48h],ax
	xor	eax,eax
	jmp	433616h

l00000000004336D4:
	test	r13d,r13d
	jz	433976h

l00000000004336DD:
	mov	rcx,[rsp+28h]
	movsx	edx,r13b
	call	451E10h
	xor	r13d,r13d
	jmp	4335AEh

l00000000004336F3:
	mov	qword ptr [rsp+40h],+0h
	movzx	eax,byte ptr [rsp+36h]
	jmp	433616h
0000000000433706                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l0000000000433710:
	mov	qword ptr [rsp+50h],+0h
	jmp	433690h

l000000000043371E:
	mov	rax,[rcx]
	call	qword ptr [rax+50h]
	mov	rcx,[rsp+50h]
	mov	eax,0FFFFFFFFh
	mov	[rsp+58h],ax
	test	rcx,rcx
	jz	433690h

l000000000043373C:
	jmp	4335DCh

l0000000000433741:
	cmp	bx,[r12+96h]
	jz	43313Fh

l0000000000433750:
	movzx	eax,byte ptr [r12+20h]

l0000000000433756:
	xor	r13d,r13d
	xor	r15d,r15d

l000000000043375C:
	test	al,al
	jz	43376Ch

l0000000000433760:
	cmp	[r12+4Ah],bx
	jz	433930h

l000000000043376C:
	cmp	[r12+48h],bx
	jz	433930h

l0000000000433778:
	cmp	[r12+9Ch],bx
	jz	433855h

l0000000000433787:
	test	r15b,r15b
	jz	433930h

l0000000000433790:
	cmp	[r12+98h],bx
	jz	4337AAh

l000000000043379B:
	cmp	[r12+9Ah],bx
	jnz	433890h

l00000000004337AA:
	cmp	dword ptr [rsp+20h],10h
	jz	4337B9h

l00000000004337B1:
	test	edi,edi
	jnz	43396Ch

l00000000004337B9:
	xor	r13d,r13d
	xor	r15d,r15d
	mov	dword ptr [rsp+20h],10h

l00000000004337C7:
	mov	rcx,[rsp+50h]
	test	rcx,rcx
	jz	4337F3h

l00000000004337D1:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	43393Ah

l00000000004337DF:
	add	rax,2h
	mov	[rcx+10h],rax

l00000000004337E7:
	mov	r10d,0FFFFFFFFh
	mov	[rsp+58h],r10w

l00000000004337F3:
	mov	rdx,rbp
	mov	rcx,rsi
	call	42B0C0h
	test	al,al
	jz	43389Ah

l0000000000433806:
	mov	[rsp+35h],r15b
	mov	r14d,1h
	jmp	433195h

l0000000000433816:
	cmp	bx,[r12+4Ah]
	jnz	43314Dh

l0000000000433822:
	mov	eax,1h
	jmp	433756h

l000000000043382C:
	mov	qword ptr [rsp+50h],+0h
	jmp	4334F3h

l000000000043383A:
	mov	edx,esi
	neg	edx
	cmp	byte ptr [rsp+37h],0h
	cmovnz	esi,edx

l0000000000433846:
	mov	rdx,[rsp+100h]
	mov	[rdx],esi
	jmp	4332FFh

l0000000000433855:
	cmp	dword ptr [rsp+20h],0Ah
	setz	al
	cmp	al,r15b
	jc	433790h

l0000000000433866:
	add	r13d,1h
	cmp	dword ptr [rsp+20h],8h
	jz	43398Bh

l0000000000433875:
	test	edi,edi
	jz	43398Bh

l000000000043387D:
	mov	r15d,1h
	jmp	4337C7h
0000000000433888                         0F 1F 84 00 00 00 00 00         ........

l0000000000433890:
	mov	byte ptr [rsp+35h],1h
	jmp	433195h

l000000000043389A:
	mov	rcx,rsi
	call	42B1B0h
	test	r15b,r15b
	movzx	ebx,ax
	jz	433930h

l00000000004338AE:
	movzx	eax,byte ptr [r12+20h]
	jmp	43375Ch

l00000000004338B9:
	mov	qword ptr [rsp+50h],+0h
	jmp	433215h

l00000000004338C7:
	mov	rax,[rcx]
	call	qword ptr [rax+48h]
	jmp	433478h

l00000000004338D2:
	mov	rax,[rcx]
	call	qword ptr [rax+48h]
	jmp	433286h

l00000000004338DD:
	lea	rcx,[rsp+70h]
	mov	edx,20h
	call	451BE0h
	jmp	4331CDh

l00000000004338F1:
	mov	rax,[rcx]
	call	qword ptr [rax+48h]
	jmp	4335EDh

l00000000004338FC:
	mov	rax,[rcx]
	call	qword ptr [rax+48h]
	jmp	4336C2h

l0000000000433907:
	mov	rcx,rsi
	call	42B1B0h
	movzx	ebx,ax
	movzx	eax,byte ptr [r12+20h]
	jmp	433756h

l000000000043391D:
	mov	rdx,[rsp+38h]
	lea	rcx,[rax-18h]
	call	450A50h
	jmp	43333Ah

l0000000000433930:
	mov	[rsp+35h],r15b
	jmp	433195h

l000000000043393A:
	mov	rax,[rcx]
	call	qword ptr [rax+50h]
	jmp	4337E7h

l0000000000433945:
	mov	rax,[rcx]
	call	qword ptr [rax+48h]
	movzx	ebx,ax
	jmp	4334C4h

l0000000000433953:
	xor	ebx,ebx
	mov	byte ptr [rsp+37h],0h
	jmp	433187h

l000000000043395F:
	mov	rax,[rcx]
	call	qword ptr [rax+48h]
	mov	ebx,eax
	jmp	433651h

l000000000043396C:
	mov	byte ptr [rsp+35h],1h
	jmp	4331A1h

l0000000000433976:
	mov	ebx,1h
	jmp	4332C3h

l0000000000433980:
	xor	esi,esi
	xor	ebp,ebp
	xor	ebx,ebx
	jmp	4332C3h

l000000000043398B:
	xor	r13d,r13d
	mov	r15d,1h
	mov	dword ptr [rsp+20h],8h
	jmp	4337C7h
00000000004339A1    48 89 C3 48 8B 44 24 70 48 8B 54 24 38 48 8D  H..H.D$pH.T$8H.
00000000004339B0 48 E8 E8 A9 D0 01 00 48 89 D9 E8 F1 DB FD FF 90 H......H........

;; fn00000000004339C0: 00000000004339C0
;;   Called from:
;;     0000000000437233 (in fn00000000004371D0)
;;     00000000004380E4 (in fn0000000000438090)
fn00000000004339C0 proc
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,+88h
	mov	rdx,[r8+8h]
	mov	rax,[r8]
	mov	rbx,[rsp+0F0h]
	mov	[rsp+0D0h],rcx
	lea	rcx,[rsp+6Eh]
	mov	[rsp+58h],rdx
	mov	rdx,[r9+8h]
	mov	[rsp+50h],rax
	mov	rax,[r9]
	mov	[rsp+48h],rdx
	lea	rdx,[rbx+0D0h]
	mov	[rsp+40h],rax
	call	42A460h
	mov	esi,[rbx+18h]
	mov	r12,rax
	mov	dword ptr [rsp+24h],8h
	and	esi,4Ah
	cmp	esi,40h
	jz	433A40h

l0000000000433A2C:
	cmp	esi,8h
	mov	eax,0Ah
	mov	edx,10h
	cmovz	eax,edx

l0000000000433A3C:
	mov	[rsp+24h],eax

l0000000000433A40:
	lea	rbp,[rsp+40h]
	lea	rdi,[rsp+50h]
	mov	rdx,rbp
	mov	rcx,rdi
	call	42B0C0h
	test	al,al
	mov	r14d,eax
	jnz	43433Bh

l0000000000433A60:
	mov	rcx,rdi
	call	42B1B0h
	movzx	ebx,ax
	cmp	bx,[r12+94h]
	setz	byte ptr [rsp+37h]
	jnz	434061h

l0000000000433A7F:
	movzx	eax,byte ptr [r12+20h]
	test	al,al
	jnz	434165h

l0000000000433A8D:
	cmp	bx,[r12+48h]
	jz	434076h

l0000000000433A99:
	mov	rcx,[rsp+50h]
	test	rcx,rcx
	jz	433AB4h

l0000000000433AA3:
	mov	r13d,0FFFFFFFFh
	call	462DD0h
	mov	[rsp+58h],r13w

l0000000000433AB4:
	mov	rdx,rbp
	mov	rcx,rdi
	call	42B0C0h
	test	al,al
	jz	4342A0h

l0000000000433AC7:
	mov	r14d,1h
	xor	r13d,r13d
	mov	byte ptr [rsp+35h],0h

l0000000000433AD5:
	cmp	dword ptr [rsp+24h],10h
	mov	edi,16h
	jz	433AE6h

l0000000000433AE1:
	movsxd	rdi,dword ptr [rsp+24h]

l0000000000433AE6:
	lea	rax,[rsp+6Fh]
	xor	edx,edx
	xor	ecx,ecx
	mov	r8,rax
	mov	[rsp+38h],rax
	call	4505D0h
	cmp	byte ptr [r12+20h],0h
	mov	[rsp+70h],rax
	jnz	434276h

l0000000000433B0D:
	xor	edx,edx
	mov	eax,0FFFFFFFFh
	lea	r15,[r12+9Ch]
	div	dword ptr [rsp+24h]
	mov	[rsp+30h],eax
	movzx	eax,byte ptr [r12+0C8h]
	test	al,al
	mov	[rsp+36h],al
	jnz	433DFAh

l0000000000433B39:
	xor	esi,esi
	xor	ebp,ebp
	test	r14b,r14b
	jnz	433E42h

l0000000000433B46:
	lea	r15d,[rdi+30h]

l0000000000433B4A:
	cmp	rdi,0Ah
	ja	433D10h

l0000000000433B54:
	cmp	bx,2Fh
	jbe	433E42h

l0000000000433B5E:
	cmp	r15w,bx
	jbe	433E42h

l0000000000433B68:
	sub	ebx,30h

l0000000000433B6B:
	cmp	[rsp+30h],esi
	jnc	433D44h

l0000000000433B75:
	mov	rcx,[rsp+50h]
	mov	ebp,1h
	test	rcx,rcx
	jz	433D68h

l0000000000433B88:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	433E83h

l0000000000433B96:
	add	rax,2h
	mov	r9d,0FFFFFFFFh
	mov	[rcx+10h],rax
	mov	[rsp+58h],r9w

l0000000000433BAA:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	434260h

l0000000000433BB8:
	movzx	eax,word ptr [rax]

l0000000000433BBB:
	cmp	ax,0FFh
	jz	433E60h

l0000000000433BC5:
	mov	rcx,[rsp+40h]
	xor	ebx,ebx
	mov	[rsp+58h],ax
	test	rcx,rcx
	jz	433DB3h

l0000000000433BDA:
	xor	eax,eax
	cmp	word ptr [rsp+48h],0FFh
	jz	433D89h

l0000000000433BE8:
	cmp	bl,al
	jnz	433DB3h

l0000000000433BF0:
	xor	ebx,ebx
	mov	r14d,1h

l0000000000433BF8:
	mov	rax,[rsp+70h]
	cmp	qword ptr [rax-18h],0h
	jnz	433C8Bh

l0000000000433C08:
	test	r13d,r13d
	setz	dl
	cmp	[rsp+35h],dl
	jnc	433CDCh

l0000000000433C18:
	mov	rdx,[rsp+100h]
	mov	dword ptr [rdx],0h
	mov	rdx,[rsp+0F8h]
	mov	dword ptr [rdx],4h

l0000000000433C34:
	test	r14b,r14b
	jz	433C44h

l0000000000433C39:
	mov	rdx,[rsp+0F8h]
	or	dword ptr [rdx],2h

l0000000000433C44:
	mov	rdx,[rsp+0D0h]
	mov	rcx,[rsp+50h]
	mov	rbx,[rsp+58h]
	mov	[rdx],rcx
	mov	[rdx+8h],rbx
	mov	edx,0FFFFFFFFh
	lock
	xadd	[rax-8h],edx
	test	edx,edx
	jle	4342D7h

l0000000000433C6F:
	mov	rax,[rsp+0D0h]
	add	rsp,+88h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret

l0000000000433C8B:
	lea	rdi,[rsp+70h]
	movsx	edx,r13b
	mov	rcx,rdi
	call	451E10h
	mov	rdx,[r12+18h]
	mov	rcx,[r12+10h]
	mov	r8,rdi
	call	4708F0h
	test	al,al
	jnz	433CC0h

l0000000000433CB2:
	mov	rax,[rsp+0F8h]
	mov	dword ptr [rax],4h

l0000000000433CC0:
	test	r13d,r13d
	setz	al
	cmp	[rsp+35h],al
	mov	rax,[rsp+70h]
	jnc	433CDCh

l0000000000433CD1:
	cmp	qword ptr [rax-18h],0h
	jz	433C18h

l0000000000433CDC:
	test	bl,bl
	jnz	433C18h

l0000000000433CE4:
	test	bpl,bpl
	jz	434189h

l0000000000433CED:
	mov	rdx,[rsp+100h]
	mov	dword ptr [rdx],0FFFFFFFFh
	mov	rdx,[rsp+0F8h]
	mov	dword ptr [rdx],4h
	jmp	433C34h
0000000000433D0E                                           66 90               f.

l0000000000433D10:
	lea	eax,[rbx-30h]
	cmp	ax,9h
	jbe	433B68h

l0000000000433D1D:
	lea	eax,[rbx-61h]
	cmp	ax,5h
	jbe	433E50h

l0000000000433D2A:
	lea	eax,[rbx-41h]
	cmp	ax,5h
	ja	433E42h

l0000000000433D37:
	sub	ebx,37h
	cmp	[rsp+30h],esi
	jc	433B75h

l0000000000433D44:
	imul	esi,[rsp+24h]
	mov	eax,ebx
	mov	rcx,[rsp+50h]
	not	eax
	cmp	eax,esi
	setc	al
	add	esi,ebx
	add	r13d,1h
	or	ebp,eax
	test	rcx,rcx
	jnz	433B88h

l0000000000433D68:
	mov	rcx,[rsp+40h]
	test	rcx,rcx
	jz	433BF0h

l0000000000433D76:
	xor	eax,eax
	cmp	word ptr [rsp+48h],0FFh
	mov	ebx,1h
	jnz	433BE8h

l0000000000433D89:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	43426Bh

l0000000000433D97:
	movzx	eax,word ptr [rax]

l0000000000433D9A:
	cmp	ax,0FFh
	jz	433E70h

l0000000000433DA4:
	mov	[rsp+48h],ax
	xor	eax,eax
	cmp	bl,al
	jz	433BF0h

l0000000000433DB3:
	mov	rcx,[rsp+50h]
	mov	ebx,0FFFFh
	test	rcx,rcx
	jz	433B4Ah

l0000000000433DC6:
	movzx	ebx,word ptr [rsp+58h]
	cmp	bx,0FFh
	jnz	433B4Ah

l0000000000433DD5:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	43432Dh

l0000000000433DE3:
	movzx	ebx,word ptr [rax]

l0000000000433DE6:
	cmp	bx,0FFh
	jz	43424Fh

l0000000000433DF0:
	mov	[rsp+58h],bx
	jmp	433B4Ah

l0000000000433DFA:
	test	r14b,r14b
	jnz	434373h

l0000000000433E03:
	lea	rax,[rsp+70h]
	lea	rdi,[r15+rdi*2]
	xor	esi,esi
	xor	ebp,ebp
	mov	[rsp+28h],rax

l0000000000433E15:
	cmp	byte ptr [r12+20h],0h
	jz	433E29h

l0000000000433E1D:
	cmp	bx,[r12+4Ah]
	jz	433FF4h

l0000000000433E29:
	cmp	bx,[r12+48h]
	jz	433E42h

l0000000000433E31:
	mov	rax,r15

l0000000000433E34:
	cmp	bx,[rax]
	jz	433EB0h

l0000000000433E39:
	add	rax,2h
	cmp	rax,rdi
	jnz	433E34h

l0000000000433E42:
	xor	ebx,ebx
	jmp	433BF8h
0000000000433E49                            0F 1F 80 00 00 00 00          .......

l0000000000433E50:
	sub	ebx,57h
	jmp	433B6Bh
0000000000433E58                         0F 1F 84 00 00 00 00 00         ........

l0000000000433E60:
	mov	qword ptr [rsp+50h],+0h
	jmp	433D68h
0000000000433E6E                                           66 90               f.

l0000000000433E70:
	mov	qword ptr [rsp+40h],+0h
	mov	eax,1h
	jmp	433BE8h

l0000000000433E83:
	mov	rax,[rcx]
	call	qword ptr [rax+50h]
	mov	rcx,[rsp+50h]
	mov	r8d,0FFFFFFFFh
	mov	[rsp+58h],r8w
	test	rcx,rcx
	jz	433D68h

l0000000000433EA3:
	jmp	433BAAh
0000000000433EA8                         0F 1F 84 00 00 00 00 00         ........

l0000000000433EB0:
	sub	rax,r15
	sar	rax,1h
	lea	edx,[rax-6h]
	cmp	eax,10h
	cmovge	eax,edx

l0000000000433EBF:
	cmp	[rsp+30h],esi
	jnc	433F85h

l0000000000433EC9:
	mov	ebp,1h

l0000000000433ECE:
	mov	rcx,[rsp+50h]
	test	rcx,rcx
	jz	433FB0h

l0000000000433EDC:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	43403Eh

l0000000000433EEA:
	add	rax,2h
	mov	edx,0FFFFFFFFh
	mov	[rcx+10h],rax
	mov	[rsp+58h],dx

l0000000000433EFC:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	434295h

l0000000000433F0A:
	movzx	eax,word ptr [rax]

l0000000000433F0D:
	cmp	ax,0FFh
	jz	434030h

l0000000000433F17:
	mov	rcx,[rsp+40h]
	xor	ebx,ebx
	mov	[rsp+58h],ax
	test	rcx,rcx
	jz	433F3Eh

l0000000000433F28:
	xor	eax,eax
	cmp	word ptr [rsp+48h],0FFh
	jz	433FD1h

l0000000000433F36:
	cmp	al,bl
	jz	433BF0h

l0000000000433F3E:
	mov	rcx,[rsp+50h]
	mov	ebx,0FFFFFFFFh
	test	rcx,rcx
	jz	433E15h

l0000000000433F51:
	movzx	ebx,word ptr [rsp+58h]
	cmp	bx,0FFh
	jnz	433E15h

l0000000000433F60:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	434347h

l0000000000433F6E:
	movzx	ebx,word ptr [rax]

l0000000000433F71:
	cmp	bx,0FFh
	jz	43417Bh

l0000000000433F7B:
	mov	[rsp+58h],bx
	jmp	433E15h

l0000000000433F85:
	imul	esi,[rsp+24h]
	mov	edx,eax
	mov	rcx,[rsp+50h]
	not	edx
	cmp	edx,esi
	setc	dl
	add	esi,eax
	add	r13d,1h
	or	ebp,edx
	test	rcx,rcx
	jnz	433EDCh

l0000000000433FA9:
	nop	dword ptr [rax+0h]

l0000000000433FB0:
	mov	rcx,[rsp+40h]
	test	rcx,rcx
	jz	433BF0h

l0000000000433FBE:
	xor	eax,eax
	cmp	word ptr [rsp+48h],0FFh
	movzx	ebx,byte ptr [rsp+36h]
	jnz	433F36h

l0000000000433FD1:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	43428Ah

l0000000000433FDF:
	movzx	eax,word ptr [rax]

l0000000000433FE2:
	cmp	ax,0FFh
	jz	434013h

l0000000000433FE8:
	mov	[rsp+48h],ax
	xor	eax,eax
	jmp	433F36h

l0000000000433FF4:
	test	r13d,r13d
	jz	434369h

l0000000000433FFD:
	mov	rcx,[rsp+28h]
	movsx	edx,r13b
	call	451E10h
	xor	r13d,r13d
	jmp	433ECEh

l0000000000434013:
	mov	qword ptr [rsp+40h],+0h
	movzx	eax,byte ptr [rsp+36h]
	jmp	433F36h
0000000000434026                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l0000000000434030:
	mov	qword ptr [rsp+50h],+0h
	jmp	433FB0h

l000000000043403E:
	mov	rax,[rcx]
	call	qword ptr [rax+50h]
	mov	rcx,[rsp+50h]
	mov	eax,0FFFFFFFFh
	mov	[rsp+58h],ax
	test	rcx,rcx
	jz	433FB0h

l000000000043405C:
	jmp	433EFCh

l0000000000434061:
	cmp	bx,[r12+96h]
	jz	433A7Fh

l0000000000434070:
	movzx	eax,byte ptr [r12+20h]

l0000000000434076:
	xor	r13d,r13d
	xor	ebp,ebp

l000000000043407B:
	test	al,al
	jz	43408Bh

l000000000043407F:
	cmp	[r12+4Ah],bx
	jz	4342EAh

l000000000043408B:
	cmp	[r12+48h],bx
	jz	4342EAh

l0000000000434097:
	cmp	[r12+9Ch],bx
	jz	4341C4h

l00000000004340A6:
	test	bpl,bpl
	jz	4342EAh

l00000000004340AF:
	cmp	[r12+98h],bx
	jz	4340C9h

l00000000004340BA:
	cmp	[r12+9Ah],bx
	jnz	434245h

l00000000004340C9:
	cmp	dword ptr [rsp+24h],10h
	jz	4340D8h

l00000000004340D0:
	test	esi,esi
	jnz	43435Fh

l00000000004340D8:
	xor	r13d,r13d
	xor	ebp,ebp
	mov	dword ptr [rsp+24h],10h

l00000000004340E5:
	mov	rcx,[rsp+50h]
	test	rcx,rcx
	jz	434200h

l00000000004340F3:
	mov	rdx,[rcx+10h]
	cmp	rdx,[rcx+18h]
	jnc	4342F4h

l0000000000434101:
	add	rdx,2h
	mov	r11d,0FFFFFFFFh
	mov	[rcx+10h],rdx
	mov	rdx,[rcx+10h]
	cmp	rdx,[rcx+18h]
	mov	[rsp+58h],r11w
	jnc	434322h

l0000000000434123:
	movzx	eax,word ptr [rdx]

l0000000000434126:
	cmp	ax,0FFh
	jz	4342C9h

l0000000000434130:
	mov	rcx,[rsp+40h]
	xor	r15d,r15d
	mov	[rsp+58h],ax
	test	rcx,rcx
	jz	4341A5h

l0000000000434142:
	xor	eax,eax
	cmp	word ptr [rsp+48h],0FFh
	jz	434222h

l0000000000434150:
	cmp	r15b,al
	jnz	4341A5h

l0000000000434155:
	mov	[rsp+35h],bpl
	mov	r14d,1h
	jmp	433AD5h

l0000000000434165:
	cmp	bx,[r12+4Ah]
	jnz	433A8Dh

l0000000000434171:
	mov	eax,1h
	jmp	434076h

l000000000043417B:
	mov	qword ptr [rsp+50h],+0h
	jmp	433E15h

l0000000000434189:
	movzx	edx,byte ptr [rsp+37h]
	mov	ecx,edx
	neg	ecx
	xor	esi,ecx
	add	edx,esi
	mov	rsi,[rsp+100h]
	mov	[rsi],edx
	jmp	433C34h

l00000000004341A5:
	mov	rcx,rdi
	call	42B1B0h
	test	bpl,bpl
	movzx	ebx,ax
	jz	4342EAh

l00000000004341B9:
	movzx	eax,byte ptr [r12+20h]
	jmp	43407Bh

l00000000004341C4:
	cmp	dword ptr [rsp+24h],0Ah
	setz	al
	cmp	al,bpl
	jc	4340AFh

l00000000004341D5:
	add	r13d,1h
	cmp	dword ptr [rsp+24h],8h
	jz	43439Ch

l00000000004341E4:
	test	esi,esi
	jz	43439Ch

l00000000004341EC:
	mov	rcx,[rsp+50h]
	mov	ebp,1h
	test	rcx,rcx
	jnz	4340F3h

l00000000004341FF:
	nop

l0000000000434200:
	mov	rcx,[rsp+40h]
	test	rcx,rcx
	jz	434155h

l000000000043420E:
	xor	eax,eax
	cmp	word ptr [rsp+48h],0FFh
	mov	r15d,1h
	jnz	434150h

l0000000000434222:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	434354h

l0000000000434230:
	movzx	eax,word ptr [rax]

l0000000000434233:
	cmp	ax,0FFh
	jz	4342B6h

l0000000000434239:
	mov	[rsp+48h],ax
	xor	eax,eax
	jmp	434150h

l0000000000434245:
	mov	byte ptr [rsp+35h],1h
	jmp	433AD5h

l000000000043424F:
	mov	qword ptr [rsp+50h],+0h
	jmp	433B4Ah
000000000043425D                                        0F 1F 00              ...

l0000000000434260:
	mov	rax,[rcx]
	call	qword ptr [rax+48h]
	jmp	433BBBh

l000000000043426B:
	mov	rax,[rcx]
	call	qword ptr [rax+48h]
	jmp	433D9Ah

l0000000000434276:
	lea	rcx,[rsp+70h]
	mov	edx,20h
	call	451BE0h
	jmp	433B0Dh

l000000000043428A:
	mov	rax,[rcx]
	call	qword ptr [rax+48h]
	jmp	433FE2h

l0000000000434295:
	mov	rax,[rcx]
	call	qword ptr [rax+48h]
	jmp	433F0Dh

l00000000004342A0:
	mov	rcx,rdi
	call	42B1B0h
	movzx	ebx,ax
	movzx	eax,byte ptr [r12+20h]
	jmp	434076h

l00000000004342B6:
	mov	qword ptr [rsp+40h],+0h
	mov	eax,1h
	jmp	434150h

l00000000004342C9:
	mov	qword ptr [rsp+50h],+0h
	jmp	434200h

l00000000004342D7:
	mov	rdx,[rsp+38h]
	lea	rcx,[rax-18h]
	call	450A50h
	jmp	433C6Fh

l00000000004342EA:
	mov	[rsp+35h],bpl
	jmp	433AD5h

l00000000004342F4:
	mov	rdx,[rcx]
	call	qword ptr [rdx+50h]
	mov	rcx,[rsp+50h]
	mov	r10d,0FFFFFFFFh
	mov	[rsp+58h],r10w
	test	rcx,rcx
	jz	434200h

l0000000000434314:
	mov	rdx,[rcx+10h]
	cmp	rdx,[rcx+18h]
	jc	434123h

l0000000000434322:
	mov	rdx,[rcx]
	call	qword ptr [rdx+48h]
	jmp	434126h

l000000000043432D:
	mov	rax,[rcx]
	call	qword ptr [rax+48h]
	movzx	ebx,ax
	jmp	433DE6h

l000000000043433B:
	xor	ebx,ebx
	mov	byte ptr [rsp+37h],0h
	jmp	433AC7h

l0000000000434347:
	mov	rax,[rcx]
	call	qword ptr [rax+48h]
	mov	ebx,eax
	jmp	433F71h

l0000000000434354:
	mov	rax,[rcx]
	call	qword ptr [rax+48h]
	jmp	434233h

l000000000043435F:
	mov	byte ptr [rsp+35h],1h
	jmp	433AE1h

l0000000000434369:
	mov	ebx,1h
	jmp	433BF8h

l0000000000434373:
	xor	esi,esi
	xor	ebp,ebp
	xor	ebx,ebx
	jmp	433BF8h
000000000043437E                                           48 89               H.
0000000000434380 C3 48 8B 44 24 70 48 8B 54 24 38 48 8D 48 E8 E8 .H.D$pH.T$8H.H..
0000000000434390 CC C6 01 00 48 89 D9 E8 14 D2 FD FF             ....H.......   

l000000000043439C:
	xor	r13d,r13d
	mov	ebp,1h
	mov	dword ptr [rsp+24h],8h
	jmp	4340E5h
00000000004343B1    90 90 90 90 90 90 90 90 90 90 90 90 90 90 90  ...............

;; fn00000000004343C0: 00000000004343C0
;;   Called from:
;;     00000000004372B3 (in fn0000000000437250)
;;     0000000000438154 (in fn0000000000438100)
fn00000000004343C0 proc
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,+88h
	mov	rdx,[r8+8h]
	mov	rax,[r8]
	mov	rbx,[rsp+0F0h]
	mov	[rsp+0D0h],rcx
	lea	rcx,[rsp+6Eh]
	mov	[rsp+58h],rdx
	mov	rdx,[r9+8h]
	mov	[rsp+50h],rax
	mov	rax,[r9]
	mov	[rsp+48h],rdx
	lea	rdx,[rbx+0D0h]
	mov	[rsp+40h],rax
	call	42A460h
	mov	esi,[rbx+18h]
	mov	rbp,rax
	mov	dword ptr [rsp+20h],8h
	and	esi,4Ah
	cmp	esi,40h
	jz	434440h

l000000000043442C:
	cmp	esi,8h
	mov	eax,0Ah
	mov	edx,10h
	cmovz	eax,edx

l000000000043443C:
	mov	[rsp+20h],eax

l0000000000434440:
	lea	r12,[rsp+40h]
	lea	rdi,[rsp+50h]
	mov	rdx,r12
	mov	rcx,rdi
	call	42B0C0h
	test	al,al
	mov	r13d,eax
	jnz	434D77h

l0000000000434460:
	mov	rcx,rdi
	call	42B1B0h
	movzx	ebx,ax
	cmp	bx,[rbp+94h]
	setz	byte ptr [rsp+37h]
	jnz	434AA0h

l000000000043447D:
	movzx	eax,byte ptr [rbp+20h]
	test	al,al
	jnz	434BA0h

l0000000000434489:
	cmp	bx,[rbp+48h]
	jz	434AB1h

l0000000000434493:
	mov	rcx,[rsp+50h]
	test	rcx,rcx
	jz	4344ACh

l000000000043449D:
	call	462DD0h
	mov	eax,0FFFFFFFFh
	mov	[rsp+58h],ax

l00000000004344AC:
	mov	rdx,r12
	mov	rcx,rdi
	call	42B0C0h
	test	al,al
	jz	434CE0h

l00000000004344BF:
	mov	r13d,1h
	mov	dword ptr [rsp+24h],0h
	mov	byte ptr [rsp+35h],0h

l00000000004344D2:
	cmp	dword ptr [rsp+20h],10h
	mov	r12d,16h
	jz	4344E4h

l00000000004344DF:
	movsxd	r12,dword ptr [rsp+20h]

l00000000004344E4:
	lea	rax,[rsp+6Fh]
	xor	edx,edx
	xor	ecx,ecx
	mov	r8,rax
	mov	[rsp+38h],rax
	call	4505D0h
	cmp	byte ptr [rbp+20h],0h
	mov	[rsp+70h],rax
	jnz	434CB6h

l0000000000434509:
	mov	eax,0FFFFh
	lea	r14,[rbp+9Ch]
	cdq
	idiv	dword ptr [rsp+20h]
	mov	[rsp+32h],ax
	movzx	eax,byte ptr [rbp+0C8h]
	test	al,al
	mov	[rsp+36h],al
	jnz	434817h

l0000000000434532:
	xor	esi,esi
	xor	edi,edi
	test	r13b,r13b
	jnz	43485Fh

l000000000043453F:
	lea	r15d,[r12+30h]
	mov	r14d,0FFFFh

l000000000043454A:
	cmp	r12,0Ah
	ja	434720h

l0000000000434554:
	cmp	bx,2Fh
	jbe	43485Fh

l000000000043455E:
	cmp	r15w,bx
	jbe	43485Fh

l0000000000434568:
	sub	ebx,30h

l000000000043456B:
	cmp	[rsp+32h],si
	jnc	434755h

l0000000000434576:
	mov	rcx,[rsp+50h]
	mov	edi,1h
	test	rcx,rcx
	jz	43477Fh

l0000000000434589:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	4348A3h

l0000000000434597:
	add	rax,2h
	mov	[rcx+10h],rax
	mov	eax,0FFFFFFFFh
	mov	[rsp+58h],ax

l00000000004345A9:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	434CA0h

l00000000004345B7:
	movzx	eax,word ptr [rax]

l00000000004345BA:
	cmp	ax,0FFh
	jz	434880h

l00000000004345C4:
	mov	rcx,[rsp+40h]
	xor	ebx,ebx
	mov	[rsp+58h],ax
	test	rcx,rcx
	jz	4347D0h

l00000000004345D9:
	xor	eax,eax
	cmp	word ptr [rsp+48h],0FFh
	jz	4347A0h

l00000000004345E7:
	cmp	bl,al
	jnz	4347D0h

l00000000004345EF:
	xor	ebx,ebx
	mov	r13d,1h

l00000000004345F7:
	mov	rax,[rsp+70h]
	cmp	qword ptr [rax-18h],0h
	jnz	43468Ch

l0000000000434607:
	mov	edx,[rsp+24h]
	test	edx,edx
	setz	dl
	cmp	[rsp+35h],dl
	jnc	4346E1h

l000000000043461A:
	mov	rdi,[rsp+100h]
	xor	ecx,ecx
	mov	[rdi],cx
	mov	rdi,[rsp+0F8h]
	mov	dword ptr [rdi],4h

l0000000000434635:
	test	r13b,r13b
	jz	434645h

l000000000043463A:
	mov	rdi,[rsp+0F8h]
	or	dword ptr [rdi],2h

l0000000000434645:
	mov	rdi,[rsp+0D0h]
	mov	rcx,[rsp+50h]
	mov	edx,0FFFFFFFFh
	mov	rbx,[rsp+58h]
	mov	[rdi],rcx
	mov	[rdi+8h],rbx
	lock
	xadd	[rax-8h],edx
	test	edx,edx
	jle	434D15h

l0000000000434670:
	mov	rax,[rsp+0D0h]
	add	rsp,+88h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret

l000000000043468C:
	movsx	edx,byte ptr [rsp+24h]
	lea	r12,[rsp+70h]
	mov	rcx,r12
	call	451E10h
	mov	rdx,[rbp+18h]
	mov	rcx,[rbp+10h]
	mov	r8,r12
	call	4708F0h
	test	al,al
	jnz	4346C0h

l00000000004346B2:
	mov	rax,[rsp+0F8h]
	mov	dword ptr [rax],4h

l00000000004346C0:
	mov	r9d,[rsp+24h]
	test	r9d,r9d
	setz	al
	cmp	[rsp+35h],al
	mov	rax,[rsp+70h]
	jnc	4346E1h

l00000000004346D6:
	cmp	qword ptr [rax-18h],0h
	jz	43461Ah

l00000000004346E1:
	test	bl,bl
	jnz	43461Ah

l00000000004346E9:
	test	dil,dil
	jz	434BC2h

l00000000004346F2:
	mov	rdi,[rsp+100h]
	mov	r8d,0FFFFFFFFh
	mov	[rdi],r8w
	mov	rdi,[rsp+0F8h]
	mov	dword ptr [rdi],4h
	jmp	434635h
0000000000434717                      66 0F 1F 84 00 00 00 00 00        f........

l0000000000434720:
	lea	eax,[rbx-30h]
	cmp	ax,9h
	jbe	434568h

l000000000043472D:
	lea	eax,[rbx-61h]
	cmp	ax,5h
	jbe	434870h

l000000000043473A:
	lea	eax,[rbx-41h]
	cmp	ax,5h
	ja	43485Fh

l0000000000434747:
	sub	ebx,37h
	cmp	[rsp+32h],si
	jc	434576h

l0000000000434755:
	imul	si,[rsp+20h]
	mov	eax,r14d
	mov	rcx,[rsp+50h]
	sub	eax,ebx
	movzx	edx,si
	cmp	edx,eax
	setg	al
	add	esi,ebx
	add	dword ptr [rsp+24h],1h
	or	edi,eax
	test	rcx,rcx
	jnz	434589h

l000000000043477F:
	mov	rcx,[rsp+40h]
	test	rcx,rcx
	jz	4345EFh

l000000000043478D:
	xor	eax,eax
	cmp	word ptr [rsp+48h],0FFh
	mov	ebx,1h
	jnz	4345E7h

l00000000004347A0:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	434CABh

l00000000004347AE:
	movzx	eax,word ptr [rax]

l00000000004347B1:
	cmp	ax,0FFh
	jz	434890h

l00000000004347BB:
	mov	[rsp+48h],ax
	xor	eax,eax
	cmp	bl,al
	jz	4345EFh

l00000000004347CA:
	nop	word ptr [rax+rax+0h]

l00000000004347D0:
	mov	rcx,[rsp+50h]
	mov	ebx,0FFFFh
	test	rcx,rcx
	jz	43454Ah

l00000000004347E3:
	movzx	ebx,word ptr [rsp+58h]
	cmp	bx,0FFh
	jnz	43454Ah

l00000000004347F2:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	434D69h

l0000000000434800:
	movzx	ebx,word ptr [rax]

l0000000000434803:
	cmp	bx,0FFh
	jz	434C8Fh

l000000000043480D:
	mov	[rsp+58h],bx
	jmp	43454Ah

l0000000000434817:
	test	r13b,r13b
	jnz	434DAFh

l0000000000434820:
	lea	rax,[rsp+70h]
	lea	r12,[r14]
	xor	esi,esi
	xor	edi,edi
	mov	r15d,0FFFFh
	mov	[rsp+28h],rax

l0000000000434838:
	cmp	byte ptr [rbp+20h],0h
	jz	434848h

l000000000043483E:
	cmp	bx,[rbp+4Ah]
	jz	434A24h

l0000000000434848:
	cmp	bx,[rbp+48h]
	jz	43485Fh

l000000000043484E:
	mov	rax,r14

l0000000000434851:
	cmp	bx,[rax]
	jz	4348D0h

l0000000000434856:
	add	rax,2h
	cmp	rax,r12
	jnz	434851h

l000000000043485F:
	xor	ebx,ebx
	jmp	4345F7h
0000000000434866                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l0000000000434870:
	sub	ebx,57h
	jmp	43456Bh
0000000000434878                         0F 1F 84 00 00 00 00 00         ........

l0000000000434880:
	mov	qword ptr [rsp+50h],+0h
	jmp	43477Fh
000000000043488E                                           66 90               f.

l0000000000434890:
	mov	qword ptr [rsp+40h],+0h
	mov	eax,1h
	jmp	4345E7h

l00000000004348A3:
	mov	rax,[rcx]
	call	qword ptr [rax+50h]
	mov	rcx,[rsp+50h]
	mov	ebx,0FFFFFFFFh
	mov	[rsp+58h],bx
	test	rcx,rcx
	jz	43477Fh

l00000000004348C1:
	jmp	4345A9h
00000000004348C6                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l00000000004348D0:
	sub	rax,r14
	sar	rax,1h
	lea	edx,[rax-6h]
	cmp	eax,10h
	cmovge	eax,edx

l00000000004348DF:
	cmp	[rsp+32h],si
	jnc	4349B0h

l00000000004348EA:
	mov	edi,1h

l00000000004348EF:
	mov	rcx,[rsp+50h]
	test	rcx,rcx
	jz	4349E0h

l00000000004348FD:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	434A71h

l000000000043490B:
	add	rax,2h
	mov	r11d,0FFFFFFFFh
	mov	[rcx+10h],rax
	mov	[rsp+58h],r11w

l000000000043491F:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	434CD5h

l000000000043492D:
	movzx	eax,word ptr [rax]

l0000000000434930:
	cmp	ax,0FFh
	jz	434A63h

l000000000043493A:
	mov	rcx,[rsp+40h]
	xor	ebx,ebx
	mov	[rsp+58h],ax
	test	rcx,rcx
	jz	434961h

l000000000043494B:
	xor	eax,eax
	cmp	word ptr [rsp+48h],0FFh
	jz	434A01h

l0000000000434959:
	cmp	al,bl
	jz	4345EFh

l0000000000434961:
	mov	rcx,[rsp+50h]
	mov	ebx,0FFFFFFFFh
	test	rcx,rcx
	jz	434838h

l0000000000434974:
	movzx	ebx,word ptr [rsp+58h]
	cmp	bx,0FFh
	jnz	434838h

l0000000000434983:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	434D83h

l0000000000434991:
	movzx	ebx,word ptr [rax]

l0000000000434994:
	cmp	bx,0FFh
	jz	434BB4h

l000000000043499E:
	mov	[rsp+58h],bx
	jmp	434838h
00000000004349A8                         0F 1F 84 00 00 00 00 00         ........

l00000000004349B0:
	imul	si,[rsp+20h]
	mov	edx,r15d
	sub	edx,eax
	movzx	ecx,si
	cmp	ecx,edx
	mov	rcx,[rsp+50h]
	setg	dl
	add	esi,eax
	add	dword ptr [rsp+24h],1h
	or	edi,edx
	test	rcx,rcx
	jnz	4348FDh

l00000000004349DA:
	nop	word ptr [rax+rax+0h]

l00000000004349E0:
	mov	rcx,[rsp+40h]
	test	rcx,rcx
	jz	4345EFh

l00000000004349EE:
	xor	eax,eax
	cmp	word ptr [rsp+48h],0FFh
	movzx	ebx,byte ptr [rsp+36h]
	jnz	434959h

l0000000000434A01:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	434CCAh

l0000000000434A0F:
	movzx	eax,word ptr [rax]

l0000000000434A12:
	cmp	ax,0FFh
	jz	434A50h

l0000000000434A18:
	mov	[rsp+48h],ax
	xor	eax,eax
	jmp	434959h

l0000000000434A24:
	mov	eax,[rsp+24h]
	test	eax,eax
	jz	434DA5h

l0000000000434A30:
	mov	rcx,[rsp+28h]
	movsx	edx,al
	call	451E10h
	mov	dword ptr [rsp+24h],0h
	jmp	4348EFh
0000000000434A4A                               66 0F 1F 44 00 00           f..D..

l0000000000434A50:
	mov	qword ptr [rsp+40h],+0h
	movzx	eax,byte ptr [rsp+36h]
	jmp	434959h

l0000000000434A63:
	mov	qword ptr [rsp+50h],+0h
	jmp	4349E0h

l0000000000434A71:
	mov	rax,[rcx]
	call	qword ptr [rax+50h]
	mov	rcx,[rsp+50h]
	mov	r10d,0FFFFFFFFh
	mov	[rsp+58h],r10w
	test	rcx,rcx
	jz	4349E0h

l0000000000434A91:
	jmp	43491Fh
0000000000434A96                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l0000000000434AA0:
	cmp	bx,[rbp+96h]
	jz	43447Dh

l0000000000434AAD:
	movzx	eax,byte ptr [rbp+20h]

l0000000000434AB1:
	mov	dword ptr [rsp+24h],0h
	xor	r12d,r12d

l0000000000434ABC:
	test	al,al
	jz	434ACAh

l0000000000434AC0:
	cmp	[rbp+4Ah],bx
	jz	434D28h

l0000000000434ACA:
	cmp	[rbp+48h],bx
	jz	434D28h

l0000000000434AD4:
	cmp	[rbp+9Ch],bx
	jz	434C00h

l0000000000434AE1:
	test	r12b,r12b
	jz	434D28h

l0000000000434AEA:
	cmp	[rbp+98h],bx
	jz	434B00h

l0000000000434AF3:
	cmp	[rbp+9Ah],bx
	jnz	434C85h

l0000000000434B00:
	cmp	dword ptr [rsp+20h],10h
	jz	434B0Fh

l0000000000434B07:
	test	esi,esi
	jnz	434D9Bh

l0000000000434B0F:
	mov	dword ptr [rsp+24h],0h
	xor	r12d,r12d
	mov	dword ptr [rsp+20h],10h

l0000000000434B22:
	mov	rcx,[rsp+50h]
	test	rcx,rcx
	jz	434C40h

l0000000000434B30:
	mov	rdx,[rcx+10h]
	cmp	rdx,[rcx+18h]
	jnc	434D32h

l0000000000434B3E:
	add	rdx,2h
	mov	eax,0FFFFFFFFh
	mov	[rcx+10h],rdx
	mov	rdx,[rcx+10h]
	cmp	rdx,[rcx+18h]
	mov	[rsp+58h],ax
	jnc	434D5Eh

l0000000000434B5E:
	movzx	eax,word ptr [rdx]

l0000000000434B61:
	cmp	ax,0FFh
	jz	434D07h

l0000000000434B6B:
	mov	rcx,[rsp+40h]
	xor	r14d,r14d
	mov	[rsp+58h],ax
	test	rcx,rcx
	jz	434BDFh

l0000000000434B7D:
	xor	eax,eax
	cmp	word ptr [rsp+48h],0FFh
	jz	434C62h

l0000000000434B8B:
	cmp	r14b,al
	jnz	434BDFh

l0000000000434B90:
	mov	[rsp+35h],r12b
	mov	r13d,1h
	jmp	4344D2h

l0000000000434BA0:
	cmp	bx,[rbp+4Ah]
	jnz	434489h

l0000000000434BAA:
	mov	eax,1h
	jmp	434AB1h

l0000000000434BB4:
	mov	qword ptr [rsp+50h],+0h
	jmp	434838h

l0000000000434BC2:
	movzx	edx,byte ptr [rsp+37h]
	mov	rdi,[rsp+100h]
	mov	ecx,edx
	neg	ecx
	xor	esi,ecx
	add	edx,esi
	mov	[rdi],dx
	jmp	434635h

l0000000000434BDF:
	mov	rcx,rdi
	call	42B1B0h
	test	r12b,r12b
	movzx	ebx,ax
	jz	434D28h

l0000000000434BF3:
	movzx	eax,byte ptr [rbp+20h]
	jmp	434ABCh
0000000000434BFC                                     0F 1F 40 00             ..@.

l0000000000434C00:
	cmp	dword ptr [rsp+20h],0Ah
	setz	al
	cmp	al,r12b
	jc	434AEAh

l0000000000434C11:
	add	dword ptr [rsp+24h],1h
	cmp	dword ptr [rsp+20h],8h
	jz	434DD8h

l0000000000434C21:
	test	esi,esi
	jz	434DD8h

l0000000000434C29:
	mov	rcx,[rsp+50h]
	mov	r12d,1h
	test	rcx,rcx
	jnz	434B30h

l0000000000434C3D:
	nop	dword ptr [rax]

l0000000000434C40:
	mov	rcx,[rsp+40h]
	test	rcx,rcx
	jz	434B90h

l0000000000434C4E:
	xor	eax,eax
	cmp	word ptr [rsp+48h],0FFh
	mov	r14d,1h
	jnz	434B8Bh

l0000000000434C62:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	434D90h

l0000000000434C70:
	movzx	eax,word ptr [rax]

l0000000000434C73:
	cmp	ax,0FFh
	jz	434CF4h

l0000000000434C79:
	mov	[rsp+48h],ax
	xor	eax,eax
	jmp	434B8Bh

l0000000000434C85:
	mov	byte ptr [rsp+35h],1h
	jmp	4344D2h

l0000000000434C8F:
	mov	qword ptr [rsp+50h],+0h
	jmp	43454Ah
0000000000434C9D                                        0F 1F 00              ...

l0000000000434CA0:
	mov	rax,[rcx]
	call	qword ptr [rax+48h]
	jmp	4345BAh

l0000000000434CAB:
	mov	rax,[rcx]
	call	qword ptr [rax+48h]
	jmp	4347B1h

l0000000000434CB6:
	lea	rcx,[rsp+70h]
	mov	edx,20h
	call	451BE0h
	jmp	434509h

l0000000000434CCA:
	mov	rax,[rcx]
	call	qword ptr [rax+48h]
	jmp	434A12h

l0000000000434CD5:
	mov	rax,[rcx]
	call	qword ptr [rax+48h]
	jmp	434930h

l0000000000434CE0:
	mov	rcx,rdi
	call	42B1B0h
	movzx	ebx,ax
	movzx	eax,byte ptr [rbp+20h]
	jmp	434AB1h

l0000000000434CF4:
	mov	qword ptr [rsp+40h],+0h
	mov	eax,1h
	jmp	434B8Bh

l0000000000434D07:
	mov	qword ptr [rsp+50h],+0h
	jmp	434C40h

l0000000000434D15:
	mov	rdx,[rsp+38h]
	lea	rcx,[rax-18h]
	call	450A50h
	jmp	434670h

l0000000000434D28:
	mov	[rsp+35h],r12b
	jmp	4344D2h

l0000000000434D32:
	mov	rdx,[rcx]
	call	qword ptr [rdx+50h]
	mov	rcx,[rsp+50h]
	mov	eax,0FFFFFFFFh
	mov	[rsp+58h],ax
	test	rcx,rcx
	jz	434C40h

l0000000000434D50:
	mov	rdx,[rcx+10h]
	cmp	rdx,[rcx+18h]
	jc	434B5Eh

l0000000000434D5E:
	mov	rdx,[rcx]
	call	qword ptr [rdx+48h]
	jmp	434B61h

l0000000000434D69:
	mov	rax,[rcx]
	call	qword ptr [rax+48h]
	movzx	ebx,ax
	jmp	434803h

l0000000000434D77:
	xor	ebx,ebx
	mov	byte ptr [rsp+37h],0h
	jmp	4344BFh

l0000000000434D83:
	mov	rax,[rcx]
	call	qword ptr [rax+48h]
	mov	ebx,eax
	jmp	434994h

l0000000000434D90:
	mov	rax,[rcx]
	call	qword ptr [rax+48h]
	jmp	434C73h

l0000000000434D9B:
	mov	byte ptr [rsp+35h],1h
	jmp	4344DFh

l0000000000434DA5:
	mov	ebx,1h
	jmp	4345F7h

l0000000000434DAF:
	xor	esi,esi
	xor	edi,edi
	xor	ebx,ebx
	jmp	4345F7h
0000000000434DBA                               48 89 C3 48 8B 44           H..H.D
0000000000434DC0 24 70 48 8B 54 24 38 48 8D 48 E8 E8 90 BC 01 00 $pH.T$8H.H......
0000000000434DD0 48 89 D9 E8 D8 C7 FD FF                         H.......       

l0000000000434DD8:
	mov	dword ptr [rsp+24h],0h
	mov	r12d,1h
	mov	dword ptr [rsp+20h],8h
	jmp	434B22h
0000000000434DF3          90 90 90 90 90 90 90 90 90 90 90 90 90    .............

;; fn0000000000434E00: 0000000000434E00
;;   Called from:
;;     0000000000437333 (in fn00000000004372D0)
;;     00000000004381C4 (in fn0000000000438170)
fn0000000000434E00 proc
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,+98h
	mov	rdx,[r8+8h]
	mov	rax,[r8]
	mov	esi,8h
	mov	rbx,[rsp+100h]
	mov	[rsp+0E0h],rcx
	lea	rcx,[rsp+7Eh]
	mov	[rsp+68h],rdx
	mov	rdx,[r9+8h]
	mov	[rsp+60h],rax
	mov	rax,[r9]
	mov	[rsp+58h],rdx
	lea	rdx,[rbx+0D0h]
	mov	[rsp+50h],rax
	call	42A460h
	mov	ebp,[rbx+18h]
	mov	r12,rax
	and	ebp,4Ah
	cmp	ebp,40h
	jz	434E77h

l0000000000434E69:
	cmp	ebp,8h
	mov	eax,0Ah
	mov	sil,10h
	cmovnz	esi,eax

l0000000000434E77:
	lea	r15,[rsp+50h]
	lea	rdi,[rsp+60h]
	mov	rdx,r15
	mov	rcx,rdi
	call	42B0C0h
	test	al,al
	mov	r14d,eax
	jnz	435729h

l0000000000434E97:
	mov	rcx,rdi
	call	42B1B0h
	movzx	ebx,ax
	cmp	bx,[r12+94h]
	setz	byte ptr [rsp+47h]
	jnz	435511h

l0000000000434EB6:
	movzx	eax,byte ptr [r12+20h]
	test	al,al
	jnz	4355EEh

l0000000000434EC4:
	cmp	bx,[r12+48h]
	jz	435526h

l0000000000434ED0:
	mov	rcx,[rsp+60h]
	test	rcx,rcx
	jz	434EEBh

l0000000000434EDA:
	mov	r13d,0FFFFFFFFh
	call	462DD0h
	mov	[rsp+68h],r13w

l0000000000434EEB:
	mov	rdx,r15
	mov	rcx,rdi
	call	42B0C0h
	test	al,al
	jz	4356DDh

l0000000000434EFE:
	mov	r14d,1h
	xor	r13d,r13d
	mov	byte ptr [rsp+45h],0h

l0000000000434F0C:
	cmp	esi,10h
	mov	edi,16h
	jz	434F19h

l0000000000434F16:
	movsxd	rdi,esi

l0000000000434F19:
	lea	rax,[rsp+7Fh]
	xor	edx,edx
	xor	ecx,ecx
	mov	r8,rax
	mov	[rsp+48h],rax
	call	4505D0h
	cmp	byte ptr [r12+20h],0h
	mov	[rsp+80h],rax
	jnz	4356B0h

l0000000000434F43:
	cmp	byte ptr [rsp+47h],0h
	mov	rdx,7FFFFFFFFFFFFFFFh
	mov	rax,8000000000000000h
	lea	r15,[r12+9Ch]
	cmovz	rax,rdx

l0000000000434F68:
	movsxd	rdx,esi
	mov	rsi,rdx
	mov	[rsp+30h],rdx
	xor	edx,edx
	mov	[rsp+28h],rax
	div	rsi
	mov	[rsp+20h],rax
	movzx	eax,byte ptr [r12+0C8h]
	test	al,al
	mov	[rsp+46h],al
	jnz	435297h

l0000000000434F97:
	xor	esi,esi
	xor	ebp,ebp
	test	r14b,r14b
	jnz	4352E2h

l0000000000434FA4:
	lea	r15d,[rdi+30h]

l0000000000434FA8:
	cmp	rdi,0Ah
	ja	435191h

l0000000000434FB2:
	cmp	bx,2Fh
	jbe	4352E2h

l0000000000434FBC:
	cmp	r15w,bx
	jbe	4352E2h

l0000000000434FC6:
	sub	ebx,30h

l0000000000434FC9:
	cmp	[rsp+20h],rsi
	jnc	4351D0h

l0000000000434FD4:
	mov	rcx,[rsp+60h]
	mov	ebp,1h
	test	rcx,rcx
	jz	4351FEh

l0000000000434FE7:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	435323h

l0000000000434FF5:
	add	rax,2h
	mov	r9d,0FFFFFFFFh
	mov	[rcx+10h],rax
	mov	[rsp+68h],r9w

l0000000000435009:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	4356A5h

l0000000000435017:
	movzx	eax,word ptr [rax]

l000000000043501A:
	cmp	ax,0FFh
	jz	435300h

l0000000000435024:
	mov	rcx,[rsp+50h]
	xor	ebx,ebx
	mov	[rsp+68h],ax
	test	rcx,rcx
	jz	435250h

l0000000000435039:
	xor	eax,eax
	cmp	word ptr [rsp+58h],0FFh
	jz	43521Fh

l0000000000435047:
	cmp	al,bl
	jnz	435250h

l000000000043504F:
	xor	ebx,ebx
	mov	r14d,1h

l0000000000435057:
	mov	rax,[rsp+80h]
	cmp	qword ptr [rax-18h],0h
	jnz	4350EEh

l000000000043506A:
	test	r13d,r13d
	setz	dl
	cmp	dl,[rsp+45h]
	jbe	435145h

l000000000043507A:
	mov	rdx,[rsp+110h]
	mov	qword ptr [rdx],+0h
	mov	rdx,[rsp+108h]
	mov	dword ptr [rdx],4h

l0000000000435097:
	test	r14b,r14b
	jz	4350A7h

l000000000043509C:
	mov	rdx,[rsp+108h]
	or	dword ptr [rdx],2h

l00000000004350A7:
	mov	rdx,[rsp+0E0h]
	mov	rcx,[rsp+60h]
	mov	rbx,[rsp+68h]
	mov	[rdx],rcx
	mov	[rdx+8h],rbx
	mov	edx,0FFFFFFFFh
	lock
	xadd	[rax-8h],edx
	test	edx,edx
	jle	4356F3h

l00000000004350D2:
	mov	rax,[rsp+0E0h]
	add	rsp,+98h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret

l00000000004350EE:
	lea	rdi,[rsp+80h]
	movsx	edx,r13b
	mov	rcx,rdi
	call	451E10h
	mov	rdx,[r12+18h]
	mov	rcx,[r12+10h]
	mov	r8,rdi
	call	4708F0h
	test	al,al
	jnz	435126h

l0000000000435118:
	mov	rax,[rsp+108h]
	mov	dword ptr [rax],4h

l0000000000435126:
	test	r13d,r13d
	setz	al
	cmp	al,[rsp+45h]
	mov	rax,[rsp+80h]
	jbe	435145h

l000000000043513A:
	cmp	qword ptr [rax-18h],0h
	jz	43507Ah

l0000000000435145:
	test	bl,bl
	jnz	43507Ah

l000000000043514D:
	test	bpl,bpl
	jz	435612h

l0000000000435156:
	cmp	byte ptr [rsp+47h],0h
	mov	rsi,[rsp+110h]
	mov	rcx,8000000000000000h
	mov	rdx,7FFFFFFFFFFFFFFFh
	cmovnz	rdx,rcx

l000000000043517B:
	mov	[rsi],rdx
	mov	rdx,[rsp+108h]
	mov	dword ptr [rdx],4h
	jmp	435097h

l0000000000435191:
	lea	eax,[rbx-30h]
	cmp	ax,9h
	jbe	434FC6h

l000000000043519E:
	lea	eax,[rbx-61h]
	cmp	ax,5h
	jbe	4352F0h

l00000000004351AB:
	lea	eax,[rbx-41h]
	cmp	ax,5h
	ja	4352E2h

l00000000004351B8:
	sub	ebx,37h
	cmp	[rsp+20h],rsi
	jc	434FD4h

l00000000004351C6:
	nop	word ptr cs:[rax+rax+0h]

l00000000004351D0:
	imul	rsi,[rsp+30h]
	mov	rax,[rsp+28h]
	movsxd	rbx,ebx
	mov	rcx,[rsp+60h]
	sub	rax,rbx
	cmp	rax,rsi
	setc	al
	add	rsi,rbx
	add	r13d,1h
	or	ebp,eax
	test	rcx,rcx
	jnz	434FE7h

l00000000004351FE:
	mov	rcx,[rsp+50h]
	test	rcx,rcx
	jz	43504Fh

l000000000043520C:
	xor	eax,eax
	cmp	word ptr [rsp+58h],0FFh
	mov	ebx,1h
	jnz	435047h

l000000000043521F:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	43569Ah

l000000000043522D:
	movzx	eax,word ptr [rax]

l0000000000435230:
	cmp	ax,0FFh
	jz	435310h

l000000000043523A:
	mov	[rsp+58h],ax
	xor	eax,eax
	cmp	al,bl
	jz	43504Fh

l0000000000435249:
	nop	dword ptr [rax+0h]

l0000000000435250:
	mov	rcx,[rsp+60h]
	mov	ebx,0FFFFh
	test	rcx,rcx
	jz	434FA8h

l0000000000435263:
	movzx	ebx,word ptr [rsp+68h]
	cmp	bx,0FFh
	jnz	434FA8h

l0000000000435272:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	43571Bh

l0000000000435280:
	movzx	ebx,word ptr [rax]

l0000000000435283:
	cmp	bx,0FFh
	jz	43568Ch

l000000000043528D:
	mov	[rsp+68h],bx
	jmp	434FA8h

l0000000000435297:
	test	r14b,r14b
	jnz	435756h

l00000000004352A0:
	lea	rax,[rsp+80h]
	lea	rdi,[r15+rdi*2]
	xor	esi,esi
	xor	ebp,ebp
	mov	[rsp+38h],rax

l00000000004352B5:
	cmp	byte ptr [r12+20h],0h
	jz	4352C9h

l00000000004352BD:
	cmp	bx,[r12+4Ah]
	jz	4354A4h

l00000000004352C9:
	cmp	bx,[r12+48h]
	jz	4352E2h

l00000000004352D1:
	mov	rax,r15

l00000000004352D4:
	cmp	bx,[rax]
	jz	435350h

l00000000004352D9:
	add	rax,2h
	cmp	rax,rdi
	jnz	4352D4h

l00000000004352E2:
	xor	ebx,ebx
	jmp	435057h
00000000004352E9                            0F 1F 80 00 00 00 00          .......

l00000000004352F0:
	sub	ebx,57h
	jmp	434FC9h
00000000004352F8                         0F 1F 84 00 00 00 00 00         ........

l0000000000435300:
	mov	qword ptr [rsp+60h],+0h
	jmp	4351FEh
000000000043530E                                           66 90               f.

l0000000000435310:
	mov	qword ptr [rsp+50h],+0h
	mov	eax,1h
	jmp	435047h

l0000000000435323:
	mov	rax,[rcx]
	call	qword ptr [rax+50h]
	mov	rcx,[rsp+60h]
	mov	r8d,0FFFFFFFFh
	mov	[rsp+68h],r8w
	test	rcx,rcx
	jz	4351FEh

l0000000000435343:
	jmp	435009h
0000000000435348                         0F 1F 84 00 00 00 00 00         ........

l0000000000435350:
	sub	rax,r15
	sar	rax,1h
	lea	edx,[rax-6h]
	cmp	eax,10h
	cmovge	eax,edx

l000000000043535F:
	cmp	[rsp+20h],rsi
	jnc	435430h

l000000000043536A:
	mov	ebp,1h

l000000000043536F:
	mov	rcx,[rsp+60h]
	test	rcx,rcx
	jz	435460h

l000000000043537D:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	4354EEh

l000000000043538B:
	add	rax,2h
	mov	edx,0FFFFFFFFh
	mov	[rcx+10h],rax
	mov	[rsp+68h],dx

l000000000043539D:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	4356C7h

l00000000004353AB:
	movzx	eax,word ptr [rax]

l00000000004353AE:
	cmp	ax,0FFh
	jz	4354E0h

l00000000004353B8:
	mov	rcx,[rsp+50h]
	xor	ebx,ebx
	mov	[rsp+68h],ax
	test	rcx,rcx
	jz	4353DFh

l00000000004353C9:
	xor	eax,eax
	cmp	word ptr [rsp+58h],0FFh
	jz	435481h

l00000000004353D7:
	cmp	al,bl
	jz	43504Fh

l00000000004353DF:
	mov	rcx,[rsp+60h]
	mov	ebx,0FFFFFFFFh
	test	rcx,rcx
	jz	4352B5h

l00000000004353F2:
	movzx	ebx,word ptr [rsp+68h]
	cmp	bx,0FFh
	jnz	4352B5h

l0000000000435401:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	435735h

l000000000043540F:
	movzx	ebx,word ptr [rax]

l0000000000435412:
	cmp	bx,0FFh
	jz	435604h

l000000000043541C:
	mov	[rsp+68h],bx
	jmp	4352B5h
0000000000435426                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l0000000000435430:
	imul	rsi,[rsp+30h]
	mov	rdx,[rsp+28h]
	cdqe
	mov	rcx,[rsp+60h]
	sub	rdx,rax
	cmp	rdx,rsi
	setc	dl
	add	rsi,rax
	add	r13d,1h
	or	ebp,edx
	test	rcx,rcx
	jnz	43537Dh

l000000000043545D:
	nop	dword ptr [rax]

l0000000000435460:
	mov	rcx,[rsp+50h]
	test	rcx,rcx
	jz	43504Fh

l000000000043546E:
	xor	eax,eax
	cmp	word ptr [rsp+58h],0FFh
	movzx	ebx,byte ptr [rsp+46h]
	jnz	4353D7h

l0000000000435481:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	4356D2h

l000000000043548F:
	movzx	eax,word ptr [rax]

l0000000000435492:
	cmp	ax,0FFh
	jz	4354C3h

l0000000000435498:
	mov	[rsp+58h],ax
	xor	eax,eax
	jmp	4353D7h

l00000000004354A4:
	test	r13d,r13d
	jz	43574Ch

l00000000004354AD:
	mov	rcx,[rsp+38h]
	movsx	edx,r13b
	call	451E10h
	xor	r13d,r13d
	jmp	43536Fh

l00000000004354C3:
	mov	qword ptr [rsp+50h],+0h
	movzx	eax,byte ptr [rsp+46h]
	jmp	4353D7h
00000000004354D6                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l00000000004354E0:
	mov	qword ptr [rsp+60h],+0h
	jmp	435460h

l00000000004354EE:
	mov	rax,[rcx]
	call	qword ptr [rax+50h]
	mov	rcx,[rsp+60h]
	mov	eax,0FFFFFFFFh
	mov	[rsp+68h],ax
	test	rcx,rcx
	jz	435460h

l000000000043550C:
	jmp	43539Dh

l0000000000435511:
	cmp	bx,[r12+96h]
	jz	434EB6h

l0000000000435520:
	movzx	eax,byte ptr [r12+20h]

l0000000000435526:
	xor	edx,edx
	mov	[rsp+20h],ebp
	xor	r13d,r13d
	mov	rbp,rdi
	mov	edi,edx

l0000000000435534:
	test	al,al
	jz	435544h

l0000000000435538:
	cmp	[r12+4Ah],bx
	jz	435706h

l0000000000435544:
	cmp	[r12+48h],bx
	jz	435706h

l0000000000435550:
	cmp	[r12+9Ch],bx
	jz	435631h

l000000000043555F:
	test	dil,dil
	jz	435706h

l0000000000435568:
	cmp	[r12+98h],bx
	jz	435582h

l0000000000435573:
	cmp	[r12+9Ah],bx
	jnz	435663h

l0000000000435582:
	cmp	esi,10h
	jz	435595h

l0000000000435587:
	mov	r11d,[rsp+20h]
	test	r11d,r11d
	jnz	435742h

l0000000000435595:
	xor	r13d,r13d
	xor	edi,edi
	mov	esi,10h

l000000000043559F:
	mov	rcx,[rsp+60h]
	test	rcx,rcx
	jz	4355CBh

l00000000004355A9:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	435710h

l00000000004355B7:
	add	rax,2h
	mov	[rcx+10h],rax

l00000000004355BF:
	mov	r10d,0FFFFFFFFh
	mov	[rsp+68h],r10w

l00000000004355CB:
	mov	rdx,r15
	mov	rcx,rbp
	call	42B0C0h
	test	al,al
	jz	43566Dh

l00000000004355DE:
	mov	[rsp+45h],dil
	mov	r14d,1h
	jmp	434F0Ch

l00000000004355EE:
	cmp	bx,[r12+4Ah]
	jnz	434EC4h

l00000000004355FA:
	mov	eax,1h
	jmp	435526h

l0000000000435604:
	mov	qword ptr [rsp+60h],+0h
	jmp	4352B5h

l0000000000435612:
	mov	rdx,rsi
	neg	rdx
	cmp	byte ptr [rsp+47h],0h
	cmovnz	rsi,rdx

l0000000000435621:
	mov	rdx,[rsp+110h]
	mov	[rdx],rsi
	jmp	435097h

l0000000000435631:
	cmp	esi,0Ah
	setz	al
	cmp	al,dil
	jc	435568h

l0000000000435640:
	add	r13d,1h
	cmp	esi,8h
	jz	435761h

l000000000043564D:
	mov	edi,[rsp+20h]
	test	edi,edi
	jz	435761h

l0000000000435659:
	mov	edi,1h
	jmp	43559Fh

l0000000000435663:
	mov	byte ptr [rsp+45h],1h
	jmp	434F0Ch

l000000000043566D:
	mov	rcx,rbp
	call	42B1B0h
	test	dil,dil
	movzx	ebx,ax
	jz	435706h

l0000000000435681:
	movzx	eax,byte ptr [r12+20h]
	jmp	435534h

l000000000043568C:
	mov	qword ptr [rsp+60h],+0h
	jmp	434FA8h

l000000000043569A:
	mov	rax,[rcx]
	call	qword ptr [rax+48h]
	jmp	435230h

l00000000004356A5:
	mov	rax,[rcx]
	call	qword ptr [rax+48h]
	jmp	43501Ah

l00000000004356B0:
	lea	rcx,[rsp+80h]
	mov	edx,20h
	call	451BE0h
	jmp	434F43h

l00000000004356C7:
	mov	rax,[rcx]
	call	qword ptr [rax+48h]
	jmp	4353AEh

l00000000004356D2:
	mov	rax,[rcx]
	call	qword ptr [rax+48h]
	jmp	435492h

l00000000004356DD:
	mov	rcx,rdi
	call	42B1B0h
	movzx	ebx,ax
	movzx	eax,byte ptr [r12+20h]
	jmp	435526h

l00000000004356F3:
	mov	rdx,[rsp+48h]
	lea	rcx,[rax-18h]
	call	450A50h
	jmp	4350D2h

l0000000000435706:
	mov	[rsp+45h],dil
	jmp	434F0Ch

l0000000000435710:
	mov	rax,[rcx]
	call	qword ptr [rax+50h]
	jmp	4355BFh

l000000000043571B:
	mov	rax,[rcx]
	call	qword ptr [rax+48h]
	movzx	ebx,ax
	jmp	435283h

l0000000000435729:
	xor	ebx,ebx
	mov	byte ptr [rsp+47h],0h
	jmp	434EFEh

l0000000000435735:
	mov	rax,[rcx]
	call	qword ptr [rax+48h]
	mov	ebx,eax
	jmp	435412h

l0000000000435742:
	mov	byte ptr [rsp+45h],1h
	jmp	434F16h

l000000000043574C:
	mov	ebx,1h
	jmp	435057h

l0000000000435756:
	xor	esi,esi
	xor	ebp,ebp
	xor	ebx,ebx
	jmp	435057h

l0000000000435761:
	xor	r13d,r13d
	mov	edi,1h
	mov	esi,8h
	jmp	43559Fh
0000000000435773          48 89 C3 48 8B 84 24 80 00 00 00 48 8B    H..H..$....H.
0000000000435780 54 24 48 48 8D 48 E8 E8 D4 B2 01 00 48 89 D9 E8 T$HH.H......H...
0000000000435790 1C BE FD FF 90 90 90 90 90 90 90 90 90 90 90 90 ................

;; fn00000000004357A0: 00000000004357A0
;;   Called from:
;;     00000000004373B3 (in fn0000000000437350)
;;     0000000000437444 (in fn00000000004373D0)
;;     0000000000438234 (in fn00000000004381E0)
fn00000000004357A0 proc
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,+98h
	mov	rdx,[r8+8h]
	mov	rax,[r8]
	mov	esi,8h
	mov	rbx,[rsp+100h]
	mov	[rsp+0E0h],rcx
	lea	rcx,[rsp+7Eh]
	mov	[rsp+68h],rdx
	mov	rdx,[r9+8h]
	mov	[rsp+60h],rax
	mov	rax,[r9]
	mov	[rsp+58h],rdx
	lea	rdx,[rbx+0D0h]
	mov	[rsp+50h],rax
	call	42A460h
	mov	edi,[rbx+18h]
	mov	r12,rax
	and	edi,4Ah
	cmp	edi,40h
	jz	435817h

l0000000000435809:
	cmp	edi,8h
	mov	eax,0Ah
	mov	sil,10h
	cmovnz	esi,eax

l0000000000435817:
	lea	r13,[rsp+50h]
	lea	rbp,[rsp+60h]
	mov	rdx,r13
	mov	rcx,rbp
	call	42B0C0h
	test	al,al
	mov	r14d,eax
	jnz	436189h

l0000000000435837:
	mov	rcx,rbp
	call	42B1B0h
	movzx	ebx,ax
	cmp	bx,[r12+94h]
	setz	byte ptr [rsp+47h]
	jnz	435E91h

l0000000000435856:
	movzx	eax,byte ptr [r12+20h]
	test	al,al
	jnz	435F90h

l0000000000435864:
	cmp	bx,[r12+48h]
	jz	435EA6h

l0000000000435870:
	mov	rcx,[rsp+60h]
	test	rcx,rcx
	jz	43589Ch

l000000000043587A:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	43611Ah

l0000000000435888:
	add	rax,2h
	mov	[rcx+10h],rax

l0000000000435890:
	mov	r15d,0FFFFFFFFh
	mov	[rsp+68h],r15w

l000000000043589C:
	mov	rdx,r13
	mov	rcx,rbp
	call	42B0C0h
	test	al,al
	jz	4360E3h

l00000000004358AF:
	mov	r14d,1h
	xor	r13d,r13d
	mov	byte ptr [rsp+45h],0h
	nop	dword ptr [rax]

l00000000004358C0:
	cmp	esi,10h
	mov	edi,16h
	jz	4358CDh

l00000000004358CA:
	movsxd	rdi,esi

l00000000004358CD:
	lea	rax,[rsp+7Fh]
	xor	edx,edx
	xor	ecx,ecx
	mov	r8,rax
	mov	[rsp+48h],rax
	call	4505D0h
	cmp	byte ptr [r12+20h],0h
	mov	[rsp+80h],rax
	jnz	4360B6h

l00000000004358F7:
	movsxd	rax,esi
	xor	edx,edx
	lea	r15,[r12+9Ch]
	mov	rsi,rax
	mov	[rsp+30h],rax
	mov	rax,-1h
	div	rsi
	mov	[rsp+28h],rax
	movzx	eax,byte ptr [r12+0C8h]
	test	al,al
	mov	[rsp+46h],al
	jnz	435C17h

l0000000000435930:
	xor	esi,esi
	xor	ebp,ebp
	test	r14b,r14b
	jnz	435C62h

l000000000043593D:
	lea	r15d,[rdi+30h]

l0000000000435941:
	cmp	rdi,0Ah
	ja	435B11h

l000000000043594B:
	cmp	bx,2Fh
	jbe	435C62h

l0000000000435955:
	cmp	r15w,bx
	jbe	435C62h

l000000000043595F:
	sub	ebx,30h

l0000000000435962:
	cmp	[rsp+28h],rsi
	jnc	435B50h

l000000000043596D:
	mov	rcx,[rsp+60h]
	mov	ebp,1h
	test	rcx,rcx
	jz	435B7Ch

l0000000000435980:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	435CA3h

l000000000043598E:
	add	rax,2h
	mov	r9d,0FFFFFFFFh
	mov	[rcx+10h],rax
	mov	[rsp+68h],r9w

l00000000004359A2:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	4360A0h

l00000000004359B0:
	movzx	eax,word ptr [rax]

l00000000004359B3:
	cmp	ax,0FFh
	jz	435C80h

l00000000004359BD:
	mov	rcx,[rsp+50h]
	xor	ebx,ebx
	mov	[rsp+68h],ax
	test	rcx,rcx
	jz	435BD0h

l00000000004359D2:
	xor	eax,eax
	cmp	word ptr [rsp+58h],0FFh
	jz	435B9Dh

l00000000004359E0:
	cmp	bl,al
	jnz	435BD0h

l00000000004359E8:
	xor	ebx,ebx
	mov	r14d,1h

l00000000004359F0:
	mov	rax,[rsp+80h]
	cmp	qword ptr [rax-18h],0h
	jnz	435A87h

l0000000000435A03:
	test	r13d,r13d
	setz	dl
	cmp	dl,[rsp+45h]
	jbe	435ADEh

l0000000000435A13:
	mov	rdx,[rsp+110h]
	mov	qword ptr [rdx],+0h
	mov	rdx,[rsp+108h]
	mov	dword ptr [rdx],4h

l0000000000435A30:
	test	r14b,r14b
	jz	435A40h

l0000000000435A35:
	mov	rdx,[rsp+108h]
	or	dword ptr [rdx],2h

l0000000000435A40:
	mov	rdx,[rsp+0E0h]
	mov	rcx,[rsp+60h]
	mov	rbx,[rsp+68h]
	mov	[rdx],rcx
	mov	[rdx+8h],rbx
	mov	edx,0FFFFFFFFh
	lock
	xadd	[rax-8h],edx
	test	edx,edx
	jle	436125h

l0000000000435A6B:
	mov	rax,[rsp+0E0h]
	add	rsp,+98h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret

l0000000000435A87:
	lea	rdi,[rsp+80h]
	movsx	edx,r13b
	mov	rcx,rdi
	call	451E10h
	mov	rdx,[r12+18h]
	mov	rcx,[r12+10h]
	mov	r8,rdi
	call	4708F0h
	test	al,al
	jnz	435ABFh

l0000000000435AB1:
	mov	rax,[rsp+108h]
	mov	dword ptr [rax],4h

l0000000000435ABF:
	test	r13d,r13d
	setz	al
	cmp	al,[rsp+45h]
	mov	rax,[rsp+80h]
	jbe	435ADEh

l0000000000435AD3:
	cmp	qword ptr [rax-18h],0h
	jz	435A13h

l0000000000435ADE:
	test	bl,bl
	jnz	435A13h

l0000000000435AE6:
	test	bpl,bpl
	jz	435FB4h

l0000000000435AEF:
	mov	rdx,[rsp+110h]
	mov	qword ptr [rdx],-1h
	mov	rdx,[rsp+108h]
	mov	dword ptr [rdx],4h
	jmp	435A30h

l0000000000435B11:
	lea	eax,[rbx-30h]
	cmp	ax,9h
	jbe	43595Fh

l0000000000435B1E:
	lea	eax,[rbx-61h]
	cmp	ax,5h
	jbe	435C70h

l0000000000435B2B:
	lea	eax,[rbx-41h]
	cmp	ax,5h
	ja	435C62h

l0000000000435B38:
	sub	ebx,37h
	cmp	[rsp+28h],rsi
	jc	43596Dh

l0000000000435B46:
	nop	word ptr cs:[rax+rax+0h]

l0000000000435B50:
	imul	rsi,[rsp+30h]
	movsxd	rbx,ebx
	mov	rcx,[rsp+60h]
	mov	rax,rbx
	not	rax
	cmp	rax,rsi
	setc	al
	add	rsi,rbx
	add	r13d,1h
	or	ebp,eax
	test	rcx,rcx
	jnz	435980h

l0000000000435B7C:
	mov	rcx,[rsp+50h]
	test	rcx,rcx
	jz	4359E8h

l0000000000435B8A:
	xor	eax,eax
	cmp	word ptr [rsp+58h],0FFh
	mov	ebx,1h
	jnz	4359E0h

l0000000000435B9D:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	4360ABh

l0000000000435BAB:
	movzx	eax,word ptr [rax]

l0000000000435BAE:
	cmp	ax,0FFh
	jz	435C90h

l0000000000435BB8:
	mov	[rsp+58h],ax
	xor	eax,eax
	cmp	bl,al
	jz	4359E8h

l0000000000435BC7:
	nop	word ptr [rax+rax+0h]

l0000000000435BD0:
	mov	rcx,[rsp+60h]
	mov	ebx,0FFFFh
	test	rcx,rcx
	jz	435941h

l0000000000435BE3:
	movzx	ebx,word ptr [rsp+68h]
	cmp	bx,0FFh
	jnz	435941h

l0000000000435BF2:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	43617Bh

l0000000000435C00:
	movzx	ebx,word ptr [rax]

l0000000000435C03:
	cmp	bx,0FFh
	jz	43608Ah

l0000000000435C0D:
	mov	[rsp+68h],bx
	jmp	435941h

l0000000000435C17:
	test	r14b,r14b
	jnz	4361CAh

l0000000000435C20:
	lea	rax,[rsp+80h]
	lea	rdi,[r15+rdi*2]
	xor	esi,esi
	xor	ebp,ebp
	mov	[rsp+38h],rax

l0000000000435C35:
	cmp	byte ptr [r12+20h],0h
	jz	435C49h

l0000000000435C3D:
	cmp	bx,[r12+4Ah]
	jz	435E24h

l0000000000435C49:
	cmp	bx,[r12+48h]
	jz	435C62h

l0000000000435C51:
	mov	rax,r15

l0000000000435C54:
	cmp	bx,[rax]
	jz	435CD0h

l0000000000435C59:
	add	rax,2h
	cmp	rax,rdi
	jnz	435C54h

l0000000000435C62:
	xor	ebx,ebx
	jmp	4359F0h
0000000000435C69                            0F 1F 80 00 00 00 00          .......

l0000000000435C70:
	sub	ebx,57h
	jmp	435962h
0000000000435C78                         0F 1F 84 00 00 00 00 00         ........

l0000000000435C80:
	mov	qword ptr [rsp+60h],+0h
	jmp	435B7Ch
0000000000435C8E                                           66 90               f.

l0000000000435C90:
	mov	qword ptr [rsp+50h],+0h
	mov	eax,1h
	jmp	4359E0h

l0000000000435CA3:
	mov	rax,[rcx]
	call	qword ptr [rax+50h]
	mov	rcx,[rsp+60h]
	mov	r8d,0FFFFFFFFh
	mov	[rsp+68h],r8w
	test	rcx,rcx
	jz	435B7Ch

l0000000000435CC3:
	jmp	4359A2h
0000000000435CC8                         0F 1F 84 00 00 00 00 00         ........

l0000000000435CD0:
	sub	rax,r15
	sar	rax,1h
	lea	edx,[rax-6h]
	cmp	eax,10h
	cmovge	eax,edx

l0000000000435CDF:
	cmp	[rsp+28h],rsi
	jnc	435DB0h

l0000000000435CEA:
	mov	ebp,1h

l0000000000435CEF:
	mov	rcx,[rsp+60h]
	test	rcx,rcx
	jz	435DE0h

l0000000000435CFD:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	435E6Eh

l0000000000435D0B:
	add	rax,2h
	mov	edx,0FFFFFFFFh
	mov	[rcx+10h],rax
	mov	[rsp+68h],dx

l0000000000435D1D:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	4360D8h

l0000000000435D2B:
	movzx	eax,word ptr [rax]

l0000000000435D2E:
	cmp	ax,0FFh
	jz	435E60h

l0000000000435D38:
	mov	rcx,[rsp+50h]
	xor	ebx,ebx
	mov	[rsp+68h],ax
	test	rcx,rcx
	jz	435D5Fh

l0000000000435D49:
	xor	eax,eax
	cmp	word ptr [rsp+58h],0FFh
	jz	435E01h

l0000000000435D57:
	cmp	al,bl
	jz	4359E8h

l0000000000435D5F:
	mov	rcx,[rsp+60h]
	mov	ebx,0FFFFFFFFh
	test	rcx,rcx
	jz	435C35h

l0000000000435D72:
	movzx	ebx,word ptr [rsp+68h]
	cmp	bx,0FFh
	jnz	435C35h

l0000000000435D81:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	436195h

l0000000000435D8F:
	movzx	ebx,word ptr [rax]

l0000000000435D92:
	cmp	bx,0FFh
	jz	435FA6h

l0000000000435D9C:
	mov	[rsp+68h],bx
	jmp	435C35h
0000000000435DA6                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l0000000000435DB0:
	imul	rsi,[rsp+30h]
	cdqe
	mov	rcx,[rsp+60h]
	mov	rdx,rax
	not	rdx
	cmp	rdx,rsi
	setc	dl
	add	rsi,rax
	add	r13d,1h
	or	ebp,edx
	test	rcx,rcx
	jnz	435CFDh

l0000000000435DDB:
	nop	dword ptr [rax+rax+0h]

l0000000000435DE0:
	mov	rcx,[rsp+50h]
	test	rcx,rcx
	jz	4359E8h

l0000000000435DEE:
	xor	eax,eax
	cmp	word ptr [rsp+58h],0FFh
	movzx	ebx,byte ptr [rsp+46h]
	jnz	435D57h

l0000000000435E01:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	4360CDh

l0000000000435E0F:
	movzx	eax,word ptr [rax]

l0000000000435E12:
	cmp	ax,0FFh
	jz	435E43h

l0000000000435E18:
	mov	[rsp+58h],ax
	xor	eax,eax
	jmp	435D57h

l0000000000435E24:
	test	r13d,r13d
	jz	4361C0h

l0000000000435E2D:
	mov	rcx,[rsp+38h]
	movsx	edx,r13b
	call	451E10h
	xor	r13d,r13d
	jmp	435CEFh

l0000000000435E43:
	mov	qword ptr [rsp+50h],+0h
	movzx	eax,byte ptr [rsp+46h]
	jmp	435D57h
0000000000435E56                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l0000000000435E60:
	mov	qword ptr [rsp+60h],+0h
	jmp	435DE0h

l0000000000435E6E:
	mov	rax,[rcx]
	call	qword ptr [rax+50h]
	mov	rcx,[rsp+60h]
	mov	eax,0FFFFFFFFh
	mov	[rsp+68h],ax
	test	rcx,rcx
	jz	435DE0h

l0000000000435E8C:
	jmp	435D1Dh

l0000000000435E91:
	cmp	bx,[r12+96h]
	jz	435856h

l0000000000435EA0:
	movzx	eax,byte ptr [r12+20h]

l0000000000435EA6:
	xor	r13d,r13d
	xor	r15d,r15d

l0000000000435EAC:
	test	al,al
	jz	435EBCh

l0000000000435EB0:
	cmp	[r12+4Ah],bx
	jz	436138h

l0000000000435EBC:
	cmp	[r12+48h],bx
	jz	436138h

l0000000000435EC8:
	cmp	[r12+9Ch],bx
	jz	435FF4h

l0000000000435ED7:
	test	r15b,r15b
	jz	436138h

l0000000000435EE0:
	cmp	[r12+98h],bx
	jz	435EFAh

l0000000000435EEB:
	cmp	[r12+9Ah],bx
	jnz	436080h

l0000000000435EFA:
	cmp	esi,10h
	jz	435F07h

l0000000000435EFF:
	test	edi,edi
	jnz	4361B6h

l0000000000435F07:
	xor	r13d,r13d
	xor	r15d,r15d
	mov	esi,10h

l0000000000435F12:
	mov	rcx,[rsp+60h]
	test	rcx,rcx
	jz	436030h

l0000000000435F20:
	mov	rdx,[rcx+10h]
	cmp	rdx,[rcx+18h]
	jnc	436142h

l0000000000435F2E:
	add	rdx,2h
	mov	r11d,0FFFFFFFFh
	mov	[rcx+10h],rdx
	mov	rdx,[rcx+10h]
	cmp	rdx,[rcx+18h]
	mov	[rsp+68h],r11w
	jnc	436170h

l0000000000435F50:
	movzx	eax,word ptr [rdx]

l0000000000435F53:
	cmp	ax,0FFh
	jz	43610Ch

l0000000000435F5D:
	mov	rcx,[rsp+50h]
	xor	edx,edx
	mov	[rsp+68h],ax
	test	rcx,rcx
	jz	435FD5h

l0000000000435F6E:
	xor	eax,eax
	cmp	word ptr [rsp+58h],0FFh
	jz	436051h

l0000000000435F7C:
	cmp	dl,al
	jnz	435FD5h

l0000000000435F80:
	mov	[rsp+45h],r15b
	mov	r14d,1h
	jmp	4358C0h

l0000000000435F90:
	cmp	bx,[r12+4Ah]
	jnz	435864h

l0000000000435F9C:
	mov	eax,1h
	jmp	435EA6h

l0000000000435FA6:
	mov	qword ptr [rsp+60h],+0h
	jmp	435C35h

l0000000000435FB4:
	movzx	edx,byte ptr [rsp+47h]
	mov	rcx,rdx
	neg	rcx
	xor	rsi,rcx
	add	rdx,rsi
	mov	rsi,[rsp+110h]
	mov	[rsi],rdx
	jmp	435A30h

l0000000000435FD5:
	mov	rcx,rbp
	call	42B1B0h
	test	r15b,r15b
	movzx	ebx,ax
	jz	436138h

l0000000000435FE9:
	movzx	eax,byte ptr [r12+20h]
	jmp	435EACh

l0000000000435FF4:
	cmp	esi,0Ah
	setz	al
	cmp	al,r15b
	jc	435EE0h

l0000000000436003:
	add	r13d,1h
	cmp	esi,8h
	jz	4361F6h

l0000000000436010:
	test	edi,edi
	jz	4361F6h

l0000000000436018:
	mov	rcx,[rsp+60h]
	mov	r15d,1h
	test	rcx,rcx
	jnz	435F20h

l000000000043602C:
	nop	dword ptr [rax+0h]

l0000000000436030:
	mov	rcx,[rsp+50h]
	test	rcx,rcx
	jz	435F80h

l000000000043603E:
	xor	eax,eax
	cmp	word ptr [rsp+58h],0FFh
	mov	edx,1h
	jnz	435F7Ch

l0000000000436051:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	4361A2h

l000000000043605F:
	movzx	eax,word ptr [rax]

l0000000000436062:
	cmp	ax,0FFh
	jz	4360F9h

l000000000043606C:
	mov	[rsp+58h],ax
	xor	eax,eax
	jmp	435F7Ch
0000000000436078                         0F 1F 84 00 00 00 00 00         ........

l0000000000436080:
	mov	byte ptr [rsp+45h],1h
	jmp	4358C0h

l000000000043608A:
	mov	qword ptr [rsp+60h],+0h
	jmp	435941h
0000000000436098                         0F 1F 84 00 00 00 00 00         ........

l00000000004360A0:
	mov	rax,[rcx]
	call	qword ptr [rax+48h]
	jmp	4359B3h

l00000000004360AB:
	mov	rax,[rcx]
	call	qword ptr [rax+48h]
	jmp	435BAEh

l00000000004360B6:
	lea	rcx,[rsp+80h]
	mov	edx,20h
	call	451BE0h
	jmp	4358F7h

l00000000004360CD:
	mov	rax,[rcx]
	call	qword ptr [rax+48h]
	jmp	435E12h

l00000000004360D8:
	mov	rax,[rcx]
	call	qword ptr [rax+48h]
	jmp	435D2Eh

l00000000004360E3:
	mov	rcx,rbp
	call	42B1B0h
	movzx	ebx,ax
	movzx	eax,byte ptr [r12+20h]
	jmp	435EA6h

l00000000004360F9:
	mov	qword ptr [rsp+50h],+0h
	mov	eax,1h
	jmp	435F7Ch

l000000000043610C:
	mov	qword ptr [rsp+60h],+0h
	jmp	436030h

l000000000043611A:
	mov	rax,[rcx]
	call	qword ptr [rax+50h]
	jmp	435890h

l0000000000436125:
	mov	rdx,[rsp+48h]
	lea	rcx,[rax-18h]
	call	450A50h
	jmp	435A6Bh

l0000000000436138:
	mov	[rsp+45h],r15b
	jmp	4358C0h

l0000000000436142:
	mov	rdx,[rcx]
	call	qword ptr [rdx+50h]
	mov	rcx,[rsp+60h]
	mov	r10d,0FFFFFFFFh
	mov	[rsp+68h],r10w
	test	rcx,rcx
	jz	436030h

l0000000000436162:
	mov	rdx,[rcx+10h]
	cmp	rdx,[rcx+18h]
	jc	435F50h

l0000000000436170:
	mov	rdx,[rcx]
	call	qword ptr [rdx+48h]
	jmp	435F53h

l000000000043617B:
	mov	rax,[rcx]
	call	qword ptr [rax+48h]
	movzx	ebx,ax
	jmp	435C03h

l0000000000436189:
	xor	ebx,ebx
	mov	byte ptr [rsp+47h],0h
	jmp	4358AFh

l0000000000436195:
	mov	rax,[rcx]
	call	qword ptr [rax+48h]
	mov	ebx,eax
	jmp	435D92h

l00000000004361A2:
	mov	rax,[rcx]
	mov	[rsp+28h],dl
	call	qword ptr [rax+48h]
	movzx	edx,byte ptr [rsp+28h]
	jmp	436062h

l00000000004361B6:
	mov	byte ptr [rsp+45h],1h
	jmp	4358CAh

l00000000004361C0:
	mov	ebx,1h
	jmp	4359F0h

l00000000004361CA:
	xor	esi,esi
	xor	ebp,ebp
	xor	ebx,ebx
	jmp	4359F0h
00000000004361D5                48 89 C3 48 8B 84 24 80 00 00 00      H..H..$....
00000000004361E0 48 8B 54 24 48 48 8D 48 E8 E8 72 A8 01 00 48 89 H.T$HH.H..r...H.
00000000004361F0 D9 E8 BA B3 FD FF                               ......         

l00000000004361F6:
	xor	r13d,r13d
	mov	r15d,1h
	mov	esi,8h
	jmp	435F12h
0000000000436209                            90 90 90 90 90 90 90          .......

;; fn0000000000436210: 0000000000436210
;;   Called from:
;;     0000000000437A1D (in fn0000000000437980)
;;     0000000000437C2D (in fn0000000000437B90)
;;     0000000000437E3D (in fn0000000000437DA0)
fn0000000000436210 proc
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,+98h
	mov	rax,[r8]
	mov	rdx,[r8+8h]
	xor	ebx,ebx
	mov	[rsp+0E0h],rcx
	lea	rcx,[rsp+7Eh]
	mov	rdi,[rsp+110h]
	mov	[rsp+60h],rax
	mov	rax,[r9]
	mov	[rsp+68h],rdx
	mov	rdx,[r9+8h]
	mov	[rsp+50h],rax
	mov	rax,[rsp+100h]
	mov	[rsp+58h],rdx
	lea	rdx,[rax+0D0h]
	call	42A460h
	lea	rdx,[rsp+60h]
	mov	rsi,rax
	lea	rax,[rsp+50h]
	mov	rcx,rdx
	mov	[rsp+20h],rdx
	mov	rdx,rax
	mov	[rsp+40h],rax
	call	42B0C0h
	test	al,al
	mov	r13d,eax
	jz	436AC5h

l000000000043629D:
	xor	ebp,ebp
	xor	r15d,r15d
	mov	r13d,1h
	nop	dword ptr [rax+rax+0h]

l00000000004362B0:
	lea	rax,[rsp+7Fh]
	xor	edx,edx
	xor	ecx,ecx
	mov	r8,rax
	mov	[rsp+48h],rax
	call	4505D0h
	cmp	byte ptr [rsi+20h],0h
	mov	[rsp+80h],rax
	jnz	436AABh

l00000000004362D8:
	movzx	eax,byte ptr [rsi+0C8h]
	test	al,al
	mov	[rsp+37h],al
	jnz	436450h

l00000000004362EB:
	test	r13b,r13b
	jnz	436BD6h

l00000000004362F4:
	xor	r14d,r14d

l00000000004362F7:
	lea	eax,[rbx-30h]
	cmp	ax,9h
	ja	436599h

l0000000000436304:
	mov	rax,[rdi]
	mov	rdx,[rax-18h]
	lea	r12,[rdx+1h]
	cmp	r12,[rax-10h]
	ja	43631Eh

l0000000000436315:
	mov	r15d,[rax-8h]
	test	r15d,r15d
	jle	436330h

l000000000043631E:
	mov	rdx,r12
	mov	rcx,rdi
	call	451BE0h
	mov	rax,[rdi]
	mov	rdx,[rax-18h]

l0000000000436330:
	mov	[rax+rdx],bl
	mov	rax,[rdi]
	mov	r15d,1h
	mov	dword ptr [rax-8h],0h
	mov	[rax-18h],r12
	mov	byte ptr [rax],0h

l000000000043634C:
	mov	rcx,[rsp+60h]
	test	rcx,rcx
	jz	4366D3h

l000000000043635A:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	436A31h

l0000000000436368:
	add	rax,2h
	mov	r10d,0FFFFFFFFh
	mov	[rcx+10h],rax
	mov	[rsp+68h],r10w

l000000000043637C:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	436BC0h

l000000000043638A:
	movzx	eax,word ptr [rax]

l000000000043638D:
	cmp	ax,0FFh
	jz	436933h

l0000000000436397:
	mov	rcx,[rsp+50h]
	xor	ebx,ebx
	mov	[rsp+68h],ax
	test	rcx,rcx
	jz	436580h

l00000000004363AC:
	xor	eax,eax
	cmp	word ptr [rsp+58h],0FFh
	jz	4366F4h

l00000000004363BA:
	cmp	al,bl
	jnz	436580h

l00000000004363C2:
	mov	rbx,[rsp+80h]
	cmp	qword ptr [rbx-18h],0h
	jz	436408h

l00000000004363D1:
	xor	r13d,1h
	lea	r12,[rsp+80h]
	cmp	r14b,r13b
	jc	436BE9h

l00000000004363E6:
	mov	rdx,[rsi+18h]
	mov	rcx,[rsi+10h]
	mov	r8,r12
	call	4708F0h
	test	al,al
	jnz	436408h

l00000000004363FA:
	mov	rax,[rsp+108h]
	mov	dword ptr [rax],4h

l0000000000436408:
	mov	rax,[rsp+60h]
	mov	rdi,[rsp+0E0h]
	mov	rdx,[rsp+68h]
	mov	[rdi],rax
	mov	eax,0FFFFFFFFh
	mov	[rdi+8h],rdx
	lock
	xadd	[rbx-8h],eax
	test	eax,eax
	jle	436E00h

l0000000000436433:
	mov	rax,[rsp+0E0h]
	add	rsp,+98h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret
000000000043644F                                              90                .

l0000000000436450:
	test	r13b,r13b
	jnz	436BD6h

l0000000000436459:
	lea	rax,[rsi+9Ch]
	lea	rdx,[rsp+80h]
	lea	r12,[rsi+0B0h]
	xor	r13d,r13d
	xor	r14d,r14d
	mov	[rsp+28h],rax
	movzx	eax,byte ptr [rsi+20h]
	mov	[rsp+38h],rdx

l0000000000436483:
	test	al,al
	jz	436491h

l0000000000436487:
	cmp	bx,[rsi+4Ah]
	jz	4368A0h

l0000000000436491:
	cmp	bx,[rsi+48h]
	mov	rax,[rsp+28h]
	jz	436720h

l00000000004364A0:
	cmp	bx,[rax]
	jz	436840h

l00000000004364A9:
	add	rax,2h
	cmp	rax,r12
	jnz	4364A0h

l00000000004364B2:
	cmp	bx,[rsi+0B8h]
	jz	4364C8h

l00000000004364BB:
	cmp	bx,[rsi+0C4h]
	jnz	4363C2h

l00000000004364C8:
	cmp	r15b,r13b
	jbe	4363C2h

l00000000004364D1:
	test	r14b,r14b
	jnz	4364F3h

l00000000004364D6:
	mov	rax,[rsp+80h]
	cmp	qword ptr [rax-18h],0h
	jz	4364F3h

l00000000004364E5:
	mov	rcx,[rsp+38h]
	movsx	edx,bpl
	call	451E10h

l00000000004364F3:
	mov	edx,65h
	mov	rcx,rdi
	call	451E10h
	mov	rcx,[rsp+60h]
	test	rcx,rcx
	jz	43652Ah

l000000000043650A:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	436E13h

l0000000000436518:
	add	rax,2h
	mov	[rcx+10h],rax

l0000000000436520:
	mov	ecx,0FFFFFFFFh
	mov	[rsp+68h],cx

l000000000043652A:
	mov	rbx,[rsp+20h]
	mov	rdx,[rsp+40h]
	mov	rcx,rbx
	call	42B0C0h
	test	al,al
	jnz	4369C5h

l0000000000436544:
	mov	rcx,rbx
	call	42B1B0h
	cmp	ax,[rsi+96h]
	mov	ebx,eax
	setz	dl
	jz	4368D0h

l000000000043655E:
	cmp	ax,[rsi+94h]
	jz	4368D0h

l000000000043656B:
	movzx	eax,byte ptr [rsi+20h]

l000000000043656F:
	mov	r13d,1h
	jmp	436483h
000000000043657A                               66 0F 1F 44 00 00           f..D..

l0000000000436580:
	mov	rcx,[rsp+20h]
	call	42B1B0h
	mov	ebx,eax
	lea	eax,[rbx-30h]
	cmp	ax,9h
	jbe	436304h

l0000000000436599:
	cmp	[rsi+48h],bx
	jz	4369E5h

l00000000004365A3:
	cmp	[rsi+0B8h],bx
	jz	4365B9h

l00000000004365AC:
	cmp	[rsi+0C4h],bx
	jnz	4363C2h

l00000000004365B9:
	cmp	r15b,r13b
	jbe	4363C2h

l00000000004365C2:
	mov	rax,[rdi]
	mov	rdx,[rax-18h]
	lea	rbx,[rdx+1h]
	cmp	rbx,[rax-10h]
	ja	4365DCh

l00000000004365D3:
	mov	r12d,[rax-8h]
	test	r12d,r12d
	jle	4365EEh

l00000000004365DC:
	mov	rdx,rbx
	mov	rcx,rdi
	call	451BE0h
	mov	rax,[rdi]
	mov	rdx,[rax-18h]

l00000000004365EE:
	mov	byte ptr [rax+rdx],65h
	mov	rax,[rdi]
	mov	dword ptr [rax-8h],0h
	mov	[rax-18h],rbx
	mov	byte ptr [rax+rbx],0h
	mov	rcx,[rsp+60h]
	test	rcx,rcx
	jz	43697Eh

l0000000000436612:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	43695Eh

l0000000000436620:
	add	rax,2h
	mov	ebx,0FFFFFFFFh
	mov	[rcx+10h],rax
	mov	[rsp+68h],bx

l0000000000436632:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	436E29h

l0000000000436640:
	movzx	eax,word ptr [rax]

l0000000000436643:
	cmp	ax,0FFh
	jz	436A60h

l000000000043664D:
	mov	rcx,[rsp+50h]
	xor	ebx,ebx
	mov	[rsp+68h],ax
	test	rcx,rcx
	jz	436674h

l000000000043665E:
	xor	eax,eax
	cmp	word ptr [rsp+58h],0FFh
	jz	43699Bh

l000000000043666C:
	cmp	al,bl
	jz	4369C5h

l0000000000436674:
	mov	rcx,[rsp+60h]
	mov	ebx,0FFFFFFFFh
	test	rcx,rcx
	jz	436692h

l0000000000436683:
	movzx	ebx,word ptr [rsp+68h]
	cmp	bx,0FFh
	jz	436A10h

l0000000000436692:
	cmp	[rsi+96h],bx
	jz	436954h

l000000000043669F:
	cmp	[rsi+94h],bx
	mov	r13d,1h
	mov	edx,2Dh
	jnz	4362F7h

l00000000004366B7:
	mov	rcx,rdi
	call	451E10h
	mov	rcx,[rsp+60h]
	mov	r13d,1h
	test	rcx,rcx
	jnz	43635Ah

l00000000004366D3:
	mov	rcx,[rsp+50h]
	test	rcx,rcx
	jz	4363C2h

l00000000004366E1:
	xor	eax,eax
	cmp	word ptr [rsp+58h],0FFh
	mov	ebx,1h
	jnz	4363BAh

l00000000004366F4:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	436BCBh

l0000000000436702:
	movzx	eax,word ptr [rax]

l0000000000436705:
	cmp	ax,0FFh
	jz	436941h

l000000000043670F:
	mov	[rsp+58h],ax
	xor	eax,eax
	jmp	4363BAh
000000000043671B                                  0F 1F 44 00 00            ..D..

l0000000000436720:
	mov	eax,r13d
	xor	eax,1h
	cmp	al,r14b
	jbe	4369C5h

l000000000043672F:
	mov	rax,[rsp+80h]
	cmp	qword ptr [rax-18h],0h
	jz	43674Ch

l000000000043673E:
	mov	rcx,[rsp+38h]
	movsx	edx,bpl
	call	451E10h

l000000000043674C:
	mov	edx,2Eh
	mov	rcx,rdi
	call	451E10h
	mov	r14d,1h

l000000000043675F:
	mov	rcx,[rsp+60h]
	test	rcx,rcx
	jz	4367FAh

l000000000043676D:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	4367E0h

l0000000000436777:
	add	rax,2h
	mov	edx,0FFFFFFFFh
	mov	[rcx+10h],rax
	mov	[rsp+68h],dx

l0000000000436789:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	436AA0h

l0000000000436797:
	movzx	eax,word ptr [rax]

l000000000043679A:
	cmp	ax,0FFh
	jz	436910h

l00000000004367A4:
	mov	rcx,[rsp+50h]
	xor	ebx,ebx
	mov	[rsp+68h],ax
	test	rcx,rcx
	jz	4367C7h

l00000000004367B5:
	xor	eax,eax
	cmp	word ptr [rsp+58h],0FFh
	jz	436817h

l00000000004367BF:
	cmp	al,bl
	jz	4363C2h

l00000000004367C7:
	mov	rcx,[rsp+20h]
	call	42B1B0h
	mov	ebx,eax
	movzx	eax,byte ptr [rsi+20h]
	jmp	436483h
00000000004367DC                                     0F 1F 40 00             ..@.

l00000000004367E0:
	mov	rax,[rcx]
	call	qword ptr [rax+50h]
	mov	rcx,[rsp+60h]
	mov	eax,0FFFFFFFFh
	mov	[rsp+68h],ax
	test	rcx,rcx
	jnz	436789h

l00000000004367FA:
	mov	rcx,[rsp+50h]
	test	rcx,rcx
	jz	4363C2h

l0000000000436808:
	xor	eax,eax
	cmp	word ptr [rsp+58h],0FFh
	movzx	ebx,byte ptr [rsp+37h]
	jnz	4367BFh

l0000000000436817:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	436A91h

l0000000000436825:
	movzx	eax,word ptr [rax]

l0000000000436828:
	cmp	ax,0FFh
	jz	436920h

l0000000000436832:
	mov	[rsp+58h],ax
	xor	eax,eax
	jmp	4367BFh
000000000043683B                                  0F 1F 44 00 00            ..D..

l0000000000436840:
	sub	rax,[rsp+28h]
	sar	rax,1h
	lea	ebx,[rax+30h]
	mov	rax,[rdi]
	mov	rdx,[rax-18h]
	lea	r15,[rdx+1h]
	cmp	r15,[rax-10h]
	ja	436865h

l000000000043685C:
	mov	r8d,[rax-8h]
	test	r8d,r8d
	jle	436877h

l0000000000436865:
	mov	rdx,r15
	mov	rcx,rdi
	call	451BE0h
	mov	rax,[rdi]
	mov	rdx,[rax-18h]

l0000000000436877:
	mov	[rax+rdx],bl
	mov	rax,[rdi]
	add	ebp,1h
	mov	[rax-18h],r15
	mov	dword ptr [rax-8h],0h
	mov	byte ptr [rax+r15],0h
	mov	r15d,1h
	jmp	43675Fh
000000000043689B                                  0F 1F 44 00 00            ..D..

l00000000004368A0:
	mov	eax,r13d
	xor	eax,1h
	cmp	al,r14b
	jbe	4369C5h

l00000000004368AF:
	test	ebp,ebp
	jz	436E4Ch

l00000000004368B7:
	mov	rcx,[rsp+38h]
	movsx	edx,bpl
	call	451E10h
	xor	r14d,r14d
	xor	ebp,ebp
	jmp	43675Fh
00000000004368CF                                              90                .

l00000000004368D0:
	movzx	eax,byte ptr [rsi+20h]
	test	al,al
	jz	4368E2h

l00000000004368D8:
	cmp	bx,[rsi+4Ah]
	jz	436C0Ah

l00000000004368E2:
	cmp	bx,[rsi+48h]
	jz	43656Fh

l00000000004368EC:
	cmp	dl,1h
	mov	rcx,rdi
	sbb	edx,edx
	and	edx,2h
	add	edx,2Bh
	call	451E10h
	mov	r13d,1h
	jmp	43675Fh
000000000043690A                               66 0F 1F 44 00 00           f..D..

l0000000000436910:
	mov	qword ptr [rsp+60h],+0h
	jmp	4367FAh
000000000043691E                                           66 90               f.

l0000000000436920:
	mov	qword ptr [rsp+50h],+0h
	movzx	eax,byte ptr [rsp+37h]
	jmp	4367BFh

l0000000000436933:
	mov	qword ptr [rsp+60h],+0h
	jmp	4366D3h

l0000000000436941:
	mov	qword ptr [rsp+50h],+0h
	mov	eax,1h
	jmp	4363BAh

l0000000000436954:
	mov	edx,2Bh
	jmp	4366B7h

l000000000043695E:
	mov	rax,[rcx]
	call	qword ptr [rax+50h]
	mov	rcx,[rsp+60h]
	mov	r11d,0FFFFFFFFh
	mov	[rsp+68h],r11w
	test	rcx,rcx
	jnz	436632h

l000000000043697E:
	mov	rcx,[rsp+50h]
	test	rcx,rcx
	jz	4369C5h

l0000000000436988:
	xor	eax,eax
	cmp	word ptr [rsp+58h],0FFh
	mov	ebx,1h
	jnz	43666Ch

l000000000043699B:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	436E1Eh

l00000000004369A9:
	movzx	eax,word ptr [rax]

l00000000004369AC:
	cmp	ax,0FFh
	jz	436A70h

l00000000004369B6:
	mov	[rsp+58h],ax
	xor	eax,eax
	cmp	al,bl
	jnz	436674h

l00000000004369C5:
	mov	rbx,[rsp+80h]
	lea	r12,[rsp+80h]
	cmp	qword ptr [rbx-18h],0h
	jnz	4363E6h

l00000000004369E0:
	jmp	436408h

l00000000004369E5:
	mov	eax,r13d
	xor	eax,1h
	cmp	al,r14b
	jbe	4365A3h

l00000000004369F4:
	mov	edx,2Eh
	mov	rcx,rdi
	call	451E10h
	mov	r14d,1h
	jmp	43634Ch
0000000000436A0C                                     0F 1F 40 00             ..@.

l0000000000436A10:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	436E34h

l0000000000436A1E:
	movzx	ebx,word ptr [rax]

l0000000000436A21:
	cmp	bx,0FFh
	jz	436A83h

l0000000000436A27:
	mov	[rsp+68h],bx
	jmp	436692h

l0000000000436A31:
	mov	rax,[rcx]
	call	qword ptr [rax+50h]
	mov	rcx,[rsp+60h]
	mov	r9d,0FFFFFFFFh
	mov	[rsp+68h],r9w
	test	rcx,rcx
	jz	4366D3h

l0000000000436A51:
	jmp	43637Ch
0000000000436A56                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l0000000000436A60:
	mov	qword ptr [rsp+60h],+0h
	jmp	43697Eh
0000000000436A6E                                           66 90               f.

l0000000000436A70:
	mov	qword ptr [rsp+50h],+0h
	mov	eax,1h
	jmp	43666Ch

l0000000000436A83:
	mov	qword ptr [rsp+60h],+0h
	jmp	436692h

l0000000000436A91:
	mov	rax,[rcx]
	call	qword ptr [rax+48h]
	jmp	436828h
0000000000436A9C                                     0F 1F 40 00             ..@.

l0000000000436AA0:
	mov	rax,[rcx]
	call	qword ptr [rax+48h]
	jmp	43679Ah

l0000000000436AAB:
	lea	r12,[rsp+80h]
	mov	edx,20h
	mov	rcx,r12
	call	451BE0h
	jmp	4362D8h

l0000000000436AC5:
	mov	rcx,[rsp+20h]
	call	42B1B0h
	cmp	ax,[rsi+96h]
	mov	ebx,eax
	setz	cl
	jz	436C14h

l0000000000436AE1:
	cmp	ax,[rsi+94h]
	jz	436C14h

l0000000000436AEE:
	movzx	edx,byte ptr [rsi+20h]

l0000000000436AF2:
	xor	ebp,ebp
	xor	r15d,r15d
	nop	word ptr [rax+rax+0h]

l0000000000436B00:
	test	dl,dl
	jz	436B0Eh

l0000000000436B04:
	cmp	[rsi+4Ah],ax
	jz	436DE0h

l0000000000436B0E:
	cmp	[rsi+48h],ax
	jz	436DE0h

l0000000000436B18:
	movzx	ebx,word ptr [rsi+9Ch]
	cmp	bx,ax
	jnz	436DE0h

l0000000000436B28:
	test	r15b,r15b
	jz	436D20h

l0000000000436B31:
	mov	rcx,[rsp+60h]
	add	ebp,1h
	test	rcx,rcx
	jz	436C99h

l0000000000436B42:
	mov	rdx,[rcx+10h]
	cmp	rdx,[rcx+18h]
	jnc	436DA4h

l0000000000436B50:
	add	rdx,2h
	mov	eax,0FFFFFFFFh
	mov	[rcx+10h],rdx
	mov	rdx,[rcx+10h]
	cmp	rdx,[rcx+18h]
	mov	[rsp+68h],ax
	jnc	436DD0h

l0000000000436B70:
	movzx	eax,word ptr [rdx]

l0000000000436B73:
	cmp	ax,0FFh
	jz	436C90h

l0000000000436B7D:
	mov	rcx,[rsp+50h]
	xor	r12d,r12d
	mov	[rsp+68h],ax
	test	rcx,rcx
	jz	436CF0h

l0000000000436B93:
	xor	eax,eax
	cmp	word ptr [rsp+58h],0FFh
	jz	436CBBh

l0000000000436BA1:
	cmp	al,r12b
	jnz	436CF0h

l0000000000436BAA:
	mov	r15d,1h
	mov	r13d,1h
	jmp	4362B0h
0000000000436BBB                                  0F 1F 44 00 00            ..D..

l0000000000436BC0:
	mov	rax,[rcx]
	call	qword ptr [rax+48h]
	jmp	43638Dh

l0000000000436BCB:
	mov	rax,[rcx]
	call	qword ptr [rax+48h]
	jmp	436705h

l0000000000436BD6:
	mov	rbx,[rsp+80h]
	cmp	qword ptr [rbx-18h],0h
	jz	436408h

l0000000000436BE9:
	lea	r12,[rsp+80h]
	movsx	edx,bpl
	mov	rcx,r12
	call	451E10h
	mov	rbx,[rsp+80h]
	jmp	4363E6h

l0000000000436C0A:
	mov	eax,1h
	jmp	43656Fh

l0000000000436C14:
	movzx	edx,byte ptr [rsi+20h]
	test	dl,dl
	jz	436C29h

l0000000000436C1C:
	movzx	eax,word ptr [rsi+4Ah]
	cmp	bx,ax
	jz	436E68h

l0000000000436C29:
	movzx	eax,word ptr [rsi+48h]
	cmp	bx,ax
	jz	436AF2h

l0000000000436C36:
	cmp	cl,1h
	mov	rcx,rdi
	sbb	edx,edx
	and	edx,2h
	add	edx,2Bh
	call	451E10h
	mov	rcx,[rsp+60h]
	test	rcx,rcx
	jz	436C64h

l0000000000436C53:
	call	462DD0h
	mov	r8d,0FFFFFFFFh
	mov	[rsp+68h],r8w

l0000000000436C64:
	mov	rdx,[rsp+40h]
	mov	rcx,[rsp+20h]
	call	42B0C0h
	test	al,al
	jnz	43629Dh

l0000000000436C7B:
	mov	rcx,[rsp+20h]
	call	42B1B0h
	movzx	edx,byte ptr [rsi+20h]
	jmp	436AF2h
0000000000436C8E                                           66 90               f.

l0000000000436C90:
	mov	qword ptr [rsp+60h],+0h

l0000000000436C99:
	mov	rcx,[rsp+50h]
	test	rcx,rcx
	jz	436BAAh

l0000000000436CA7:
	xor	eax,eax
	cmp	word ptr [rsp+58h],0FFh
	mov	r12d,1h
	jnz	436BA1h

l0000000000436CBB:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	436DF5h

l0000000000436CC9:
	movzx	eax,word ptr [rax]

l0000000000436CCC:
	cmp	ax,0FFh
	jz	436D70h

l0000000000436CD6:
	mov	[rsp+58h],ax
	xor	eax,eax
	cmp	al,r12b
	jz	436BAAh

l0000000000436CE6:
	nop	word ptr cs:[rax+rax+0h]

l0000000000436CF0:
	mov	rcx,[rsp+60h]
	mov	eax,0FFFFFFFFh
	test	rcx,rcx
	jz	436D0Ah

l0000000000436CFF:
	movzx	eax,word ptr [rsp+68h]
	cmp	ax,0FFh
	jz	436D83h

l0000000000436D0A:
	movzx	edx,byte ptr [rsi+20h]
	mov	r15d,1h
	jmp	436B00h
0000000000436D19                            0F 1F 80 00 00 00 00          .......

l0000000000436D20:
	mov	rax,[rdi]
	mov	rdx,[rax-18h]
	lea	r12,[rdx+1h]
	cmp	r12,[rax-10h]
	ja	436D38h

l0000000000436D31:
	mov	ecx,[rax-8h]
	test	ecx,ecx
	jle	436D4Ah

l0000000000436D38:
	mov	rdx,r12
	mov	rcx,rdi
	call	451BE0h
	mov	rax,[rdi]
	mov	rdx,[rax-18h]

l0000000000436D4A:
	mov	byte ptr [rax+rdx],30h
	mov	rax,[rdi]
	mov	dword ptr [rax-8h],0h
	mov	[rax-18h],r12
	mov	byte ptr [rax],0h
	jmp	436B31h
0000000000436D66                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l0000000000436D70:
	mov	qword ptr [rsp+50h],+0h
	mov	eax,1h
	jmp	436BA1h

l0000000000436D83:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	436E41h

l0000000000436D91:
	movzx	eax,word ptr [rax]

l0000000000436D94:
	cmp	ax,0FFh
	jz	436DE7h

l0000000000436D9A:
	mov	[rsp+68h],ax
	jmp	436D0Ah

l0000000000436DA4:
	mov	rdx,[rcx]
	call	qword ptr [rdx+50h]
	mov	rcx,[rsp+60h]
	mov	eax,0FFFFFFFFh
	mov	[rsp+68h],ax
	test	rcx,rcx
	jz	436C99h

l0000000000436DC2:
	mov	rdx,[rcx+10h]
	cmp	rdx,[rcx+18h]
	jc	436B70h

l0000000000436DD0:
	mov	rdx,[rcx]
	call	qword ptr [rdx+48h]
	jmp	436B73h
0000000000436DDB                                  0F 1F 44 00 00            ..D..

l0000000000436DE0:
	mov	ebx,eax
	jmp	4362B0h

l0000000000436DE7:
	mov	qword ptr [rsp+60h],+0h
	jmp	436D0Ah

l0000000000436DF5:
	mov	rax,[rcx]
	call	qword ptr [rax+48h]
	jmp	436CCCh

l0000000000436E00:
	mov	rdx,[rsp+48h]
	lea	rcx,[rbx-18h]
	call	450A50h
	jmp	436433h

l0000000000436E13:
	mov	rax,[rcx]
	call	qword ptr [rax+50h]
	jmp	436520h

l0000000000436E1E:
	mov	rax,[rcx]
	call	qword ptr [rax+48h]
	jmp	4369ACh

l0000000000436E29:
	mov	rax,[rcx]
	call	qword ptr [rax+48h]
	jmp	436643h

l0000000000436E34:
	mov	rax,[rcx]
	call	qword ptr [rax+48h]
	mov	ebx,eax
	jmp	436A21h

l0000000000436E41:
	mov	rax,[rcx]
	call	qword ptr [rax+48h]
	jmp	436D94h

l0000000000436E4C:
	mov	rax,[rdi]
	xor	r9d,r9d
	xor	edx,edx
	mov	rcx,rdi
	mov	r8,[rax-18h]
	call	451CC0h
	xor	r14d,r14d
	jmp	4363C2h

l0000000000436E68:
	mov	edx,1h
	jmp	436AF2h
0000000000436E72       48 89 C3 48 8B 84 24 80 00 00 00 48 8B 54   H..H..$....H.T
0000000000436E80 24 48 48 8D 48 E8 E8 D5 9B 01 00 48 89 D9 E8 1D $HH.H......H....
0000000000436E90 A7 FD FF 90 90 90 90 90 90 90 90 90 90 90 90 90 ................

;; fn0000000000436EA0: 0000000000436EA0
fn0000000000436EA0 proc
	push	rbx
	sub	rsp,60h
	mov	r10,[r9+8h]
	mov	r9,[r9]
	mov	rbx,rcx
	mov	rcx,[rsp+0A0h]
	mov	rax,[rdx]
	movdqu	xmm1,[r8]
	lea	r8,[rsp+50h]
	mov	[rsp+40h],r9
	lea	r9,[rsp+40h]
	mov	[rsp+48h],r10
	mov	[rsp+30h],rcx
	mov	rcx,[rsp+98h]
	movaps	[rsp+50h],xmm1
	mov	[rsp+28h],rcx
	mov	rcx,[rsp+90h]
	mov	[rsp+20h],rcx
	mov	rcx,rbx
	call	qword ptr [rax+60h]
	mov	rax,rbx
	add	rsp,60h
	pop	rbx
	ret
0000000000436F06                   90 90 90 90 90 90 90 90 90 90       ..........

;; fn0000000000436F10: 0000000000436F10
fn0000000000436F10 proc
	push	rbx
	sub	rsp,60h
	mov	r10,[r9+8h]
	mov	r9,[r9]
	mov	rbx,rcx
	mov	rcx,[rsp+0A0h]
	mov	rax,[rdx]
	movdqu	xmm1,[r8]
	lea	r8,[rsp+50h]
	mov	[rsp+40h],r9
	lea	r9,[rsp+40h]
	mov	[rsp+48h],r10
	mov	[rsp+30h],rcx
	mov	rcx,[rsp+98h]
	movaps	[rsp+50h],xmm1
	mov	[rsp+28h],rcx
	mov	rcx,[rsp+90h]
	mov	[rsp+20h],rcx
	mov	rcx,rbx
	call	qword ptr [rax+10h]
	mov	rax,rbx
	add	rsp,60h
	pop	rbx
	ret
0000000000436F76                   90 90 90 90 90 90 90 90 90 90       ..........

;; fn0000000000436F80: 0000000000436F80
fn0000000000436F80 proc
	push	rbx
	sub	rsp,60h
	mov	r10,[r9+8h]
	mov	r9,[r9]
	mov	rbx,rcx
	mov	rcx,[rsp+0A0h]
	mov	rax,[rdx]
	movdqu	xmm1,[r8]
	lea	r8,[rsp+50h]
	mov	[rsp+40h],r9
	lea	r9,[rsp+40h]
	mov	[rsp+48h],r10
	mov	[rsp+30h],rcx
	mov	rcx,[rsp+98h]
	movaps	[rsp+50h],xmm1
	mov	[rsp+28h],rcx
	mov	rcx,[rsp+90h]
	mov	[rsp+20h],rcx
	mov	rcx,rbx
	call	qword ptr [rax+50h]
	mov	rax,rbx
	add	rsp,60h
	pop	rbx
	ret
0000000000436FE6                   90 90 90 90 90 90 90 90 90 90       ..........

;; fn0000000000436FF0: 0000000000436FF0
fn0000000000436FF0 proc
	push	rbx
	sub	rsp,60h
	mov	r10,[r9+8h]
	mov	r9,[r9]
	mov	rbx,rcx
	mov	rcx,[rsp+0A0h]
	mov	rax,[rdx]
	movdqu	xmm1,[r8]
	lea	r8,[rsp+50h]
	mov	[rsp+40h],r9
	lea	r9,[rsp+40h]
	mov	[rsp+48h],r10
	mov	[rsp+30h],rcx
	mov	rcx,[rsp+98h]
	movaps	[rsp+50h],xmm1
	mov	[rsp+28h],rcx
	mov	rcx,[rsp+90h]
	mov	[rsp+20h],rcx
	mov	rcx,rbx
	call	qword ptr [rax+58h]
	mov	rax,rbx
	add	rsp,60h
	pop	rbx
	ret
0000000000437056                   90 90 90 90 90 90 90 90 90 90       ..........

;; fn0000000000437060: 0000000000437060
fn0000000000437060 proc
	push	rbx
	sub	rsp,60h
	mov	r10,[r9+8h]
	mov	r9,[r9]
	mov	rbx,rcx
	mov	rcx,[rsp+0A0h]
	mov	rax,[rdx]
	movdqu	xmm1,[r8]
	lea	r8,[rsp+50h]
	mov	[rsp+40h],r9
	lea	r9,[rsp+40h]
	mov	[rsp+48h],r10
	mov	[rsp+30h],rcx
	mov	rcx,[rsp+98h]
	movaps	[rsp+50h],xmm1
	mov	[rsp+28h],rcx
	mov	rcx,[rsp+90h]
	mov	[rsp+20h],rcx
	mov	rcx,rbx
	call	qword ptr [rax+48h]
	mov	rax,rbx
	add	rsp,60h
	pop	rbx
	ret
00000000004370C6                   90 90 90 90 90 90 90 90 90 90       ..........

;; fn00000000004370D0: 00000000004370D0
fn00000000004370D0 proc
	push	rbx
	sub	rsp,60h
	mov	rax,[rdx]
	lea	r10,[0000000000437FB0]                                 ; [rip+00000ED1]
	movdqu	xmm3,[r8]
	mov	rbx,rcx
	mov	r8,[rsp+98h]
	mov	rcx,[rsp+90h]
	mov	rax,[rax+28h]
	movdqu	xmm1,[r9]
	mov	r9,[rsp+0A0h]
	mov	[rsp+28h],r8
	lea	r8,[rsp+50h]
	cmp	rax,r10
	mov	[rsp+20h],rcx
	mov	rcx,rbx
	movaps	[rsp+50h],xmm3
	mov	[rsp+30h],r9
	lea	r9,[rsp+40h]
	movaps	[rsp+40h],xmm1
	jnz	437141h

l0000000000437133:
	call	432750h
	mov	rax,rbx
	add	rsp,60h
	pop	rbx
	ret

l0000000000437141:
	call	rax
	mov	rax,rbx
	add	rsp,60h
	pop	rbx
	ret
000000000043714C                                     90 90 90 90             ....

;; fn0000000000437150: 0000000000437150
fn0000000000437150 proc
	push	rbx
	sub	rsp,60h
	mov	rax,[rdx]
	lea	r10,[0000000000438020]                                 ; [rip+00000EC1]
	movdqu	xmm3,[r8]
	mov	rbx,rcx
	mov	r8,[rsp+98h]
	mov	rcx,[rsp+90h]
	mov	rax,[rax+18h]
	movdqu	xmm1,[r9]
	mov	r9,[rsp+0A0h]
	mov	[rsp+28h],r8
	lea	r8,[rsp+50h]
	cmp	rax,r10
	mov	[rsp+20h],rcx
	mov	rcx,rbx
	movaps	[rsp+50h],xmm3
	mov	[rsp+30h],r9
	lea	r9,[rsp+40h]
	movaps	[rsp+40h],xmm1
	jnz	4371C1h

l00000000004371B3:
	call	433080h
	mov	rax,rbx
	add	rsp,60h
	pop	rbx
	ret

l00000000004371C1:
	call	rax
	mov	rax,rbx
	add	rsp,60h
	pop	rbx
	ret
00000000004371CC                                     90 90 90 90             ....

;; fn00000000004371D0: 00000000004371D0
fn00000000004371D0 proc
	push	rbx
	sub	rsp,60h
	mov	rax,[rdx]
	lea	r10,[0000000000438090]                                 ; [rip+00000EB1]
	movdqu	xmm3,[r8]
	mov	rbx,rcx
	mov	r8,[rsp+98h]
	mov	rcx,[rsp+90h]
	mov	rax,[rax+30h]
	movdqu	xmm1,[r9]
	mov	r9,[rsp+0A0h]
	mov	[rsp+28h],r8
	lea	r8,[rsp+50h]
	cmp	rax,r10
	mov	[rsp+20h],rcx
	mov	rcx,rbx
	movaps	[rsp+50h],xmm3
	mov	[rsp+30h],r9
	lea	r9,[rsp+40h]
	movaps	[rsp+40h],xmm1
	jnz	437241h

l0000000000437233:
	call	4339C0h
	mov	rax,rbx
	add	rsp,60h
	pop	rbx
	ret

l0000000000437241:
	call	rax
	mov	rax,rbx
	add	rsp,60h
	pop	rbx
	ret
000000000043724C                                     90 90 90 90             ....

;; fn0000000000437250: 0000000000437250
fn0000000000437250 proc
	push	rbx
	sub	rsp,60h
	mov	rax,[rdx]
	lea	r10,[0000000000438100]                                 ; [rip+00000EA1]
	movdqu	xmm3,[r8]
	mov	rbx,rcx
	mov	r8,[rsp+98h]
	mov	rcx,[rsp+90h]
	mov	rax,[rax+20h]
	movdqu	xmm1,[r9]
	mov	r9,[rsp+0A0h]
	mov	[rsp+28h],r8
	lea	r8,[rsp+50h]
	cmp	rax,r10
	mov	[rsp+20h],rcx
	mov	rcx,rbx
	movaps	[rsp+50h],xmm3
	mov	[rsp+30h],r9
	lea	r9,[rsp+40h]
	movaps	[rsp+40h],xmm1
	jnz	4372C1h

l00000000004372B3:
	call	4343C0h
	mov	rax,rbx
	add	rsp,60h
	pop	rbx
	ret

l00000000004372C1:
	call	rax
	mov	rax,rbx
	add	rsp,60h
	pop	rbx
	ret
00000000004372CC                                     90 90 90 90             ....

;; fn00000000004372D0: 00000000004372D0
fn00000000004372D0 proc
	push	rbx
	sub	rsp,60h
	mov	rax,[rdx]
	lea	r10,[0000000000438170]                                 ; [rip+00000E91]
	movdqu	xmm3,[r8]
	mov	rbx,rcx
	mov	r8,[rsp+98h]
	mov	rcx,[rsp+90h]
	mov	rax,[rax+38h]
	movdqu	xmm1,[r9]
	mov	r9,[rsp+0A0h]
	mov	[rsp+28h],r8
	lea	r8,[rsp+50h]
	cmp	rax,r10
	mov	[rsp+20h],rcx
	mov	rcx,rbx
	movaps	[rsp+50h],xmm3
	mov	[rsp+30h],r9
	lea	r9,[rsp+40h]
	movaps	[rsp+40h],xmm1
	jnz	437341h

l0000000000437333:
	call	434E00h
	mov	rax,rbx
	add	rsp,60h
	pop	rbx
	ret

l0000000000437341:
	call	rax
	mov	rax,rbx
	add	rsp,60h
	pop	rbx
	ret
000000000043734C                                     90 90 90 90             ....

;; fn0000000000437350: 0000000000437350
fn0000000000437350 proc
	push	rbx
	sub	rsp,60h
	mov	rax,[rdx]
	lea	r10,[00000000004381E0]                                 ; [rip+00000E81]
	movdqu	xmm3,[r8]
	mov	rbx,rcx
	mov	r8,[rsp+98h]
	mov	rcx,[rsp+90h]
	mov	rax,[rax+40h]
	movdqu	xmm1,[r9]
	mov	r9,[rsp+0A0h]
	mov	[rsp+28h],r8
	lea	r8,[rsp+50h]
	cmp	rax,r10
	mov	[rsp+20h],rcx
	mov	rcx,rbx
	movaps	[rsp+50h],xmm3
	mov	[rsp+30h],r9
	lea	r9,[rsp+40h]
	movaps	[rsp+40h],xmm1
	jnz	4373C1h

l00000000004373B3:
	call	4357A0h
	mov	rax,rbx
	add	rsp,60h
	pop	rbx
	ret

l00000000004373C1:
	call	rax
	mov	rax,rbx
	add	rsp,60h
	pop	rbx
	ret
00000000004373CC                                     90 90 90 90             ....

;; fn00000000004373D0: 00000000004373D0
fn00000000004373D0 proc
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,+88h
	mov	rbx,[rsp+0D0h]
	mov	r10,[r9+8h]
	mov	r9,[r9]
	mov	r11,[r8]
	mov	rdi,rcx
	mov	rsi,[r8+8h]
	lea	rcx,[rsp+60h]
	lea	r8,[rsp+50h]
	mov	ebp,[rbx+18h]
	mov	eax,ebp
	and	eax,0B5h
	or	eax,8h
	mov	[rbx+18h],eax
	lea	rax,[rsp+78h]
	mov	[rsp+40h],r9
	lea	r9,[rsp+40h]
	mov	[rsp+20h],rbx
	mov	[rsp+58h],rsi
	mov	[rsp+30h],rax
	mov	rax,[rsp+0D8h]
	xor	si,si
	mov	[rsp+50h],r11
	mov	[rsp+48h],r10
	mov	[rsp+28h],rax
	call	4357A0h
	mov	rax,[rsp+60h]
	mov	rcx,[rsp+78h]
	mov	rdx,rax
	movzx	eax,word ptr [rsp+68h]
	mov	[rbx+18h],ebp
	mov	[rdi],rdx
	or	rsi,rax
	mov	rax,[rsp+0E0h]
	mov	[rdi+8h],rsi
	mov	[rax],rcx
	mov	rax,rdi
	add	rsp,+88h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
0000000000437482       90 90 90 90 90 90 90 90 90 90 90 90 90 90   ..............

;; fn0000000000437490: 0000000000437490
fn0000000000437490 proc
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,+0B8h
	mov	rax,[rsp+120h]
	mov	r10,[r9+8h]
	mov	rsi,[r8]
	mov	rdi,[r8+8h]
	mov	r12,rcx
	mov	r9,[r9]
	mov	r13,[rsp+128h]
	test	byte ptr [rax+18h],1h
	mov	[rsp+88h],r10
	mov	[rsp+90h],rsi
	mov	[rsp+98h],rdi
	mov	[rsp+80h],r9
	jnz	4375A0h

l00000000004374EE:
	lea	r8,[rsp+0ACh]
	mov	[rsp+50h],r9
	lea	rcx,[rsp+70h]
	lea	r9,[rsp+50h]
	mov	[rsp+20h],rax
	mov	[rsp+28h],r13
	mov	[rsp+30h],r8
	lea	r8,[rsp+60h]
	mov	dword ptr [rsp+0ACh],0FFFFFFFFh
	mov	[rsp+60h],rsi
	mov	[rsp+68h],rdi
	mov	[rsp+58h],r10
	call	433080h
	mov	rax,[rsp+70h]
	mov	[rsp+90h],rax
	movzx	eax,word ptr [rsp+78h]
	mov	[rsp+98h],ax
	mov	eax,[rsp+0ACh]
	cmp	eax,1h
	jbe	437891h

l0000000000437562:
	mov	rax,[rsp+130h]
	lea	rdx,[rsp+80h]
	lea	rcx,[rsp+90h]
	mov	byte ptr [rax],1h
	mov	dword ptr [r13+0h],4h
	call	42B0C0h
	test	al,al
	jz	43789Eh

l0000000000437592:
	or	dword ptr [r13+0h],2h
	jmp	43789Eh
000000000043759C                                     0F 1F 40 00             ..@.

l00000000004375A0:
	lea	rdx,[rax+0D0h]
	lea	rcx,[rsp+0ACh]
	mov	r15d,1h
	mov	ebp,1h
	call	42A460h
	cmp	qword ptr [rax+40h],0h
	mov	r14,rax
	setz	sil
	cmp	qword ptr [rax+30h],0h
	setz	bl
	xor	edi,edi

l00000000004375D5:
	mov	eax,ebx
	xor	eax,1h
	cmp	sil,al
	ja	437701h

l00000000004375E3:
	mov	rcx,[rsp+90h]
	test	rcx,rcx
	jz	43775Ch

l00000000004375F4:
	cmp	word ptr [rsp+98h],0FFh
	jz	437800h

l0000000000437603:
	mov	rcx,[rsp+80h]
	xor	edx,edx
	movzx	eax,word ptr [rsp+98h]
	test	rcx,rcx
	jz	437657h

l000000000043761A:
	xor	eax,eax
	cmp	word ptr [rsp+88h],0FFh
	jz	43777Fh

l000000000043762B:
	cmp	dl,al
	jz	4377B0h

l0000000000437633:
	mov	rcx,[rsp+90h]
	mov	eax,0FFFFFFFFh
	test	rcx,rcx
	jz	437657h

l0000000000437645:
	movzx	eax,word ptr [rsp+98h]
	cmp	ax,0FFh
	jz	437840h

l0000000000437657:
	test	sil,sil
	jnz	437668h

l000000000043765C:
	mov	rdx,[r14+38h]
	cmp	[rdx+rdi*2],ax
	setz	bpl

l0000000000437668:
	cmp	bpl,bl
	jc	437701h

l0000000000437671:
	test	bl,bl
	jnz	437681h

l0000000000437675:
	mov	rdx,[r14+28h]
	cmp	[rdx+rdi*2],ax
	setz	r15b

l0000000000437681:
	cmp	r15b,sil
	jc	437900h

l000000000043768A:
	mov	eax,ebp
	xor	eax,1h
	cmp	r15b,al
	jc	437900h

l0000000000437698:
	mov	rdx,[rsp+90h]
	add	rdi,1h
	test	rdx,rdx
	jz	4376CCh

l00000000004376A9:
	mov	rcx,[rdx+10h]
	cmp	rcx,[rdx+18h]
	jnc	4378F0h

l00000000004376B7:
	add	rcx,2h
	mov	[rdx+10h],rcx

l00000000004376BF:
	mov	eax,0FFFFFFFFh
	mov	[rsp+98h],ax

l00000000004376CC:
	test	bpl,bpl
	mov	esi,1h
	jz	4376DEh

l00000000004376D6:
	cmp	rdi,[r14+40h]
	setnc	sil

l00000000004376DE:
	test	r15b,r15b
	mov	ebx,1h
	jz	4375D5h

l00000000004376EC:
	cmp	rdi,[r14+30h]
	setnc	bl
	mov	eax,ebx
	xor	eax,1h
	cmp	sil,al
	jbe	4375E3h

l0000000000437701:
	xor	eax,eax
	test	bpl,bpl
	jnz	4377BEh

l000000000043770C:
	nop	dword ptr [rax+0h]

l0000000000437710:
	test	r15b,r15b
	jz	4378D0h

l0000000000437719:
	cmp	[r14+30h],rdi
	jnz	4378D0h

l0000000000437723:
	test	rdi,rdi
	jz	4378D0h

l000000000043772C:
	mov	rdi,[rsp+130h]
	shl	eax,1Fh
	sar	eax,1Fh
	and	eax,2h
	mov	byte ptr [rdi],1h
	mov	[r13+0h],eax
	jmp	43789Eh
0000000000437749                            0F 1F 80 00 00 00 00          .......

l0000000000437750:
	mov	qword ptr [rsp+90h],+0h

l000000000043775C:
	mov	rcx,[rsp+80h]
	test	rcx,rcx
	jz	4377B0h

l0000000000437769:
	xor	eax,eax
	cmp	word ptr [rsp+88h],0FFh
	mov	edx,1h
	jnz	43762Bh

l000000000043777F:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	437940h

l000000000043778D:
	movzx	eax,word ptr [rax]

l0000000000437790:
	cmp	ax,0FFh
	jz	437864h

l000000000043779A:
	mov	[rsp+88h],ax
	xor	eax,eax
	cmp	dl,al
	jnz	437633h

l00000000004377AC:
	nop	dword ptr [rax+0h]

l00000000004377B0:
	test	bpl,bpl
	mov	eax,1h
	jz	437710h

l00000000004377BE:
	cmp	rdi,[r14+40h]
	jnz	437710h

l00000000004377C8:
	test	rdi,rdi
	jz	437710h

l00000000004377D1:
	mov	rbx,[rsp+130h]
	test	r15b,r15b
	mov	byte ptr [rbx],0h
	jz	4377EBh

l00000000004377E1:
	cmp	rdi,[r14+30h]
	jz	43791Bh

l00000000004377EB:
	shl	eax,1Fh
	sar	eax,1Fh
	and	eax,2h
	jmp	43796Ch
00000000004377F9                            0F 1F 80 00 00 00 00          .......

l0000000000437800:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	437930h

l000000000043780E:
	movzx	eax,word ptr [rax]

l0000000000437811:
	cmp	ax,0FFh
	jz	437750h

l000000000043781B:
	mov	rcx,[rsp+80h]
	xor	edx,edx
	mov	[rsp+98h],ax
	test	rcx,rcx
	jnz	43761Ah

l0000000000437836:
	jmp	437633h
000000000043783B                                  0F 1F 44 00 00            ..D..

l0000000000437840:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	437954h

l000000000043784E:
	movzx	eax,word ptr [rax]

l0000000000437851:
	cmp	ax,0FFh
	jz	437880h

l0000000000437857:
	mov	[rsp+98h],ax
	jmp	437657h

l0000000000437864:
	mov	qword ptr [rsp+80h],+0h
	mov	eax,1h
	jmp	43762Bh
000000000043787A                               66 0F 1F 44 00 00           f..D..

l0000000000437880:
	mov	qword ptr [rsp+90h],+0h
	jmp	437657h

l0000000000437891:
	mov	rdi,[rsp+130h]
	mov	[rdi],al
	and	byte ptr [rdi],1h

l000000000043789E:
	mov	rax,[rsp+90h]
	mov	rdx,[rsp+98h]
	mov	[r12],rax
	mov	rax,r12
	mov	[r12+8h],rdx
	add	rsp,+0B8h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret
00000000004378CE                                           66 90               f.

l00000000004378D0:
	mov	rdi,[rsp+130h]
	test	al,al
	mov	byte ptr [rdi],0h
	jz	43791Bh

l00000000004378DF:
	mov	dword ptr [r13+0h],6h
	jmp	43789Eh
00000000004378E9                            0F 1F 80 00 00 00 00          .......

l00000000004378F0:
	mov	rax,[rdx]
	mov	rcx,rdx
	call	qword ptr [rax+50h]
	jmp	4376BFh
00000000004378FE                                           66 90               f.

l0000000000437900:
	test	bpl,bpl
	jz	437910h

l0000000000437905:
	cmp	[r14+40h],rdi
	jnz	437910h

l000000000043790B:
	test	rdi,rdi
	jnz	43795Fh

l0000000000437910:
	mov	rax,[rsp+130h]
	mov	byte ptr [rax],0h

l000000000043791B:
	mov	dword ptr [r13+0h],4h
	jmp	43789Eh
0000000000437928                         0F 1F 84 00 00 00 00 00         ........

l0000000000437930:
	mov	rax,[rcx]
	call	qword ptr [rax+48h]
	jmp	437811h
000000000043793B                                  0F 1F 44 00 00            ..D..

l0000000000437940:
	mov	rax,[rcx]
	mov	[rsp+4Fh],dl
	call	qword ptr [rax+48h]
	movzx	edx,byte ptr [rsp+4Fh]
	jmp	437790h

l0000000000437954:
	mov	rax,[rcx]
	call	qword ptr [rax+48h]
	jmp	437851h

l000000000043795F:
	mov	rax,[rsp+130h]
	mov	byte ptr [rax],0h
	xor	eax,eax

l000000000043796C:
	mov	[r13+0h],eax
	jmp	43789Eh
0000000000437975                90 90 90 90 90 90 90 90 90 90 90      ...........

;; fn0000000000437980: 0000000000437980
fn0000000000437980 proc
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,+98h
	mov	rdi,[r8]
	mov	rbx,[r8+8h]
	lea	r14,[rsp+88h]
	lea	rsi,[rsp+80h]
	mov	rbp,rcx
	mov	r15,rdx
	xor	ecx,ecx
	xor	edx,edx
	mov	r8,r14
	mov	r12,[r9]
	mov	r13,[r9+8h]
	call	4505D0h
	mov	edx,20h
	mov	rcx,rsi
	mov	[rsp+80h],rax
	call	451BE0h
	mov	rax,[rsp+108h]
	lea	rcx,[rsp+70h]
	lea	r9,[rsp+50h]
	lea	r8,[rsp+60h]
	mov	[rsp+30h],rsi
	mov	rdx,r15
	mov	[rsp+60h],rdi
	mov	[rsp+68h],rbx
	mov	[rsp+28h],rax
	mov	rax,[rsp+100h]
	mov	[rsp+50h],r12
	mov	[rsp+58h],r13
	mov	[rsp+20h],rax
	call	436210h
	mov	rsi,[rsp+78h]
	mov	rdi,[rsp+70h]
	mov	bx,si
	mov	r15,rdi
	mov	[rsp+4Eh],si
	call	46AC50h
	mov	r8,[rsp+108h]
	mov	rdx,[rsp+110h]
	mov	r9,r14
	mov	rcx,[rsp+80h]
	mov	[rsp+88h],rax
	call	46FAC0h
	test	rdi,rdi
	jz	437B20h

l0000000000437A6D:
	cmp	si,0FFh
	jz	437AF1h

l0000000000437A73:
	xor	esi,esi
	test	r12,r12
	jz	437A9Bh

l0000000000437A7A:
	cmp	r13w,0FFh
	mov	eax,r13d
	jz	437AE0h

l0000000000437A84:
	cmp	ax,0FFh
	setz	al
	cmp	sil,al
	jnz	437A9Bh

l0000000000437A90:
	mov	rax,[rsp+108h]
	or	dword ptr [rax],2h

l0000000000437A9B:
	mov	bx,[rsp+4Eh]
	mov	rcx,[rsp+80h]
	mov	eax,0FFFFFFFFh
	mov	[rbp+0h],r15
	mov	[rbp+8h],rbx
	lock
	xadd	[rcx-8h],eax
	test	eax,eax
	jle	437B41h

l0000000000437AC2:
	mov	rax,rbp
	add	rsp,+98h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret
0000000000437AD9                            0F 1F 80 00 00 00 00          .......

l0000000000437AE0:
	mov	rax,[r12+10h]
	cmp	rax,[r12+18h]
	jnc	437B60h

l0000000000437AEC:
	movzx	eax,word ptr [rax]
	jmp	437A84h

l0000000000437AF1:
	mov	rax,[rdi+10h]
	cmp	rax,[rdi+18h]
	jnc	437B52h

l0000000000437AFB:
	movzx	eax,word ptr [rax]

l0000000000437AFE:
	cmp	ax,0FFh
	jz	437B20h

l0000000000437B04:
	xor	esi,esi
	test	r12,r12
	mov	[rsp+4Eh],ax
	jnz	437A7Ah

l0000000000437B14:
	jmp	437A9Bh
0000000000437B16                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l0000000000437B20:
	xor	r15d,r15d
	test	r12,r12
	mov	esi,1h
	jz	437A90h

l0000000000437B31:
	cmp	r13w,0FFh
	mov	eax,r13d
	jnz	437A84h

l0000000000437B3F:
	jmp	437AE0h

l0000000000437B41:
	sub	rcx,18h
	mov	rdx,r14
	call	450A50h
	jmp	437AC2h

l0000000000437B52:
	mov	rax,[rdi]
	mov	rcx,rdi
	call	qword ptr [rax+48h]
	jmp	437AFEh
0000000000437B5D                                        0F 1F 00              ...

l0000000000437B60:
	mov	rax,[r12]
	mov	rcx,r12
	call	qword ptr [rax+48h]
	jmp	437A84h
0000000000437B6F                                              48                H
0000000000437B70 89 C3 48 8B 84 24 80 00 00 00 4C 89 F2 48 8D 48 ..H..$....L..H.H
0000000000437B80 E8 E8 DA 8E 01 00 48 89 D9 E8 22 9A FD FF 90 90 ......H...".....

;; fn0000000000437B90: 0000000000437B90
fn0000000000437B90 proc
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,+98h
	mov	rdi,[r8]
	mov	rbx,[r8+8h]
	lea	r14,[rsp+88h]
	lea	rsi,[rsp+80h]
	mov	rbp,rcx
	mov	r15,rdx
	xor	ecx,ecx
	xor	edx,edx
	mov	r8,r14
	mov	r12,[r9]
	mov	r13,[r9+8h]
	call	4505D0h
	mov	edx,20h
	mov	rcx,rsi
	mov	[rsp+80h],rax
	call	451BE0h
	mov	rax,[rsp+108h]
	lea	rcx,[rsp+70h]
	lea	r9,[rsp+50h]
	lea	r8,[rsp+60h]
	mov	[rsp+30h],rsi
	mov	rdx,r15
	mov	[rsp+60h],rdi
	mov	[rsp+68h],rbx
	mov	[rsp+28h],rax
	mov	rax,[rsp+100h]
	mov	[rsp+50h],r12
	mov	[rsp+58h],r13
	mov	[rsp+20h],rax
	call	436210h
	mov	rsi,[rsp+78h]
	mov	rdi,[rsp+70h]
	mov	bx,si
	mov	r15,rdi
	mov	[rsp+4Eh],si
	call	46AC50h
	mov	r8,[rsp+108h]
	mov	rdx,[rsp+110h]
	mov	r9,r14
	mov	rcx,[rsp+80h]
	mov	[rsp+88h],rax
	call	46FBE0h
	test	rdi,rdi
	jz	437D30h

l0000000000437C7D:
	cmp	si,0FFh
	jz	437D01h

l0000000000437C83:
	xor	esi,esi
	test	r12,r12
	jz	437CABh

l0000000000437C8A:
	cmp	r13w,0FFh
	mov	eax,r13d
	jz	437CF0h

l0000000000437C94:
	cmp	ax,0FFh
	setz	al
	cmp	sil,al
	jnz	437CABh

l0000000000437CA0:
	mov	rax,[rsp+108h]
	or	dword ptr [rax],2h

l0000000000437CAB:
	mov	bx,[rsp+4Eh]
	mov	rcx,[rsp+80h]
	mov	eax,0FFFFFFFFh
	mov	[rbp+0h],r15
	mov	[rbp+8h],rbx
	lock
	xadd	[rcx-8h],eax
	test	eax,eax
	jle	437D51h

l0000000000437CD2:
	mov	rax,rbp
	add	rsp,+98h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret
0000000000437CE9                            0F 1F 80 00 00 00 00          .......

l0000000000437CF0:
	mov	rax,[r12+10h]
	cmp	rax,[r12+18h]
	jnc	437D70h

l0000000000437CFC:
	movzx	eax,word ptr [rax]
	jmp	437C94h

l0000000000437D01:
	mov	rax,[rdi+10h]
	cmp	rax,[rdi+18h]
	jnc	437D62h

l0000000000437D0B:
	movzx	eax,word ptr [rax]

l0000000000437D0E:
	cmp	ax,0FFh
	jz	437D30h

l0000000000437D14:
	xor	esi,esi
	test	r12,r12
	mov	[rsp+4Eh],ax
	jnz	437C8Ah

l0000000000437D24:
	jmp	437CABh
0000000000437D26                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l0000000000437D30:
	xor	r15d,r15d
	test	r12,r12
	mov	esi,1h
	jz	437CA0h

l0000000000437D41:
	cmp	r13w,0FFh
	mov	eax,r13d
	jnz	437C94h

l0000000000437D4F:
	jmp	437CF0h

l0000000000437D51:
	sub	rcx,18h
	mov	rdx,r14
	call	450A50h
	jmp	437CD2h

l0000000000437D62:
	mov	rax,[rdi]
	mov	rcx,rdi
	call	qword ptr [rax+48h]
	jmp	437D0Eh
0000000000437D6D                                        0F 1F 00              ...

l0000000000437D70:
	mov	rax,[r12]
	mov	rcx,r12
	call	qword ptr [rax+48h]
	jmp	437C94h
0000000000437D7F                                              48                H
0000000000437D80 89 C3 48 8B 84 24 80 00 00 00 4C 89 F2 48 8D 48 ..H..$....L..H.H
0000000000437D90 E8 E8 CA 8C 01 00 48 89 D9 E8 12 98 FD FF 90 90 ......H.........

;; fn0000000000437DA0: 0000000000437DA0
fn0000000000437DA0 proc
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,+98h
	mov	rdi,[r8]
	mov	rbx,[r8+8h]
	lea	r14,[rsp+88h]
	lea	rsi,[rsp+80h]
	mov	rbp,rcx
	mov	r15,rdx
	xor	ecx,ecx
	xor	edx,edx
	mov	r8,r14
	mov	r12,[r9]
	mov	r13,[r9+8h]
	call	4505D0h
	mov	edx,20h
	mov	rcx,rsi
	mov	[rsp+80h],rax
	call	451BE0h
	mov	rax,[rsp+108h]
	lea	rcx,[rsp+70h]
	lea	r9,[rsp+50h]
	lea	r8,[rsp+60h]
	mov	[rsp+30h],rsi
	mov	rdx,r15
	mov	[rsp+60h],rdi
	mov	[rsp+68h],rbx
	mov	[rsp+28h],rax
	mov	rax,[rsp+100h]
	mov	[rsp+50h],r12
	mov	[rsp+58h],r13
	mov	[rsp+20h],rax
	call	436210h
	mov	rsi,[rsp+78h]
	mov	rdi,[rsp+70h]
	mov	bx,si
	mov	r15,rdi
	mov	[rsp+4Eh],si
	call	46AC50h
	mov	r8,[rsp+108h]
	mov	rdx,[rsp+110h]
	mov	r9,r14
	mov	rcx,[rsp+80h]
	mov	[rsp+88h],rax
	call	46FD00h
	test	rdi,rdi
	jz	437F40h

l0000000000437E8D:
	cmp	si,0FFh
	jz	437F11h

l0000000000437E93:
	xor	esi,esi
	test	r12,r12
	jz	437EBBh

l0000000000437E9A:
	cmp	r13w,0FFh
	mov	eax,r13d
	jz	437F00h

l0000000000437EA4:
	cmp	ax,0FFh
	setz	al
	cmp	sil,al
	jnz	437EBBh

l0000000000437EB0:
	mov	rax,[rsp+108h]
	or	dword ptr [rax],2h

l0000000000437EBB:
	mov	bx,[rsp+4Eh]
	mov	rcx,[rsp+80h]
	mov	eax,0FFFFFFFFh
	mov	[rbp+0h],r15
	mov	[rbp+8h],rbx
	lock
	xadd	[rcx-8h],eax
	test	eax,eax
	jle	437F61h

l0000000000437EE2:
	mov	rax,rbp
	add	rsp,+98h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret
0000000000437EF9                            0F 1F 80 00 00 00 00          .......

l0000000000437F00:
	mov	rax,[r12+10h]
	cmp	rax,[r12+18h]
	jnc	437F80h

l0000000000437F0C:
	movzx	eax,word ptr [rax]
	jmp	437EA4h

l0000000000437F11:
	mov	rax,[rdi+10h]
	cmp	rax,[rdi+18h]
	jnc	437F72h

l0000000000437F1B:
	movzx	eax,word ptr [rax]

l0000000000437F1E:
	cmp	ax,0FFh
	jz	437F40h

l0000000000437F24:
	xor	esi,esi
	test	r12,r12
	mov	[rsp+4Eh],ax
	jnz	437E9Ah

l0000000000437F34:
	jmp	437EBBh
0000000000437F36                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l0000000000437F40:
	xor	r15d,r15d
	test	r12,r12
	mov	esi,1h
	jz	437EB0h

l0000000000437F51:
	cmp	r13w,0FFh
	mov	eax,r13d
	jnz	437EA4h

l0000000000437F5F:
	jmp	437F00h

l0000000000437F61:
	sub	rcx,18h
	mov	rdx,r14
	call	450A50h
	jmp	437EE2h

l0000000000437F72:
	mov	rax,[rdi]
	mov	rcx,rdi
	call	qword ptr [rax+48h]
	jmp	437F1Eh
0000000000437F7D                                        0F 1F 00              ...

l0000000000437F80:
	mov	rax,[r12]
	mov	rcx,r12
	call	qword ptr [rax+48h]
	jmp	437EA4h
0000000000437F8F                                              48                H
0000000000437F90 89 C3 48 8B 84 24 80 00 00 00 4C 89 F2 48 8D 48 ..H..$....L..H.H
0000000000437FA0 E8 E8 BA 8A 01 00 48 89 D9 E8 02 96 FD FF 90 90 ......H.........

;; fn0000000000437FB0: 0000000000437FB0
fn0000000000437FB0 proc
	push	rbx
	sub	rsp,60h
	mov	rax,[rsp+0A0h]
	mov	r10,[r9+8h]
	movdqu	xmm1,[r8]
	lea	r8,[rsp+50h]
	mov	rbx,rcx
	mov	r9,[r9]
	mov	[rsp+30h],rax
	mov	rax,[rsp+98h]
	movaps	[rsp+50h],xmm1
	mov	[rsp+40h],r9
	lea	r9,[rsp+40h]
	mov	[rsp+48h],r10
	mov	[rsp+28h],rax
	mov	rax,[rsp+90h]
	mov	[rsp+20h],rax
	call	432750h
	mov	rax,rbx
	add	rsp,60h
	pop	rbx
	ret
0000000000438012       90 90 90 90 90 90 90 90 90 90 90 90 90 90   ..............

;; fn0000000000438020: 0000000000438020
fn0000000000438020 proc
	push	rbx
	sub	rsp,60h
	mov	rax,[rsp+0A0h]
	mov	r10,[r9+8h]
	movdqu	xmm1,[r8]
	lea	r8,[rsp+50h]
	mov	rbx,rcx
	mov	r9,[r9]
	mov	[rsp+30h],rax
	mov	rax,[rsp+98h]
	movaps	[rsp+50h],xmm1
	mov	[rsp+40h],r9
	lea	r9,[rsp+40h]
	mov	[rsp+48h],r10
	mov	[rsp+28h],rax
	mov	rax,[rsp+90h]
	mov	[rsp+20h],rax
	call	433080h
	mov	rax,rbx
	add	rsp,60h
	pop	rbx
	ret
0000000000438082       90 90 90 90 90 90 90 90 90 90 90 90 90 90   ..............

;; fn0000000000438090: 0000000000438090
fn0000000000438090 proc
	push	rbx
	sub	rsp,60h
	mov	rax,[rsp+0A0h]
	mov	r10,[r9+8h]
	movdqu	xmm1,[r8]
	lea	r8,[rsp+50h]
	mov	rbx,rcx
	mov	r9,[r9]
	mov	[rsp+30h],rax
	mov	rax,[rsp+98h]
	movaps	[rsp+50h],xmm1
	mov	[rsp+40h],r9
	lea	r9,[rsp+40h]
	mov	[rsp+48h],r10
	mov	[rsp+28h],rax
	mov	rax,[rsp+90h]
	mov	[rsp+20h],rax
	call	4339C0h
	mov	rax,rbx
	add	rsp,60h
	pop	rbx
	ret
00000000004380F2       90 90 90 90 90 90 90 90 90 90 90 90 90 90   ..............

;; fn0000000000438100: 0000000000438100
fn0000000000438100 proc
	push	rbx
	sub	rsp,60h
	mov	rax,[rsp+0A0h]
	mov	r10,[r9+8h]
	movdqu	xmm1,[r8]
	lea	r8,[rsp+50h]
	mov	rbx,rcx
	mov	r9,[r9]
	mov	[rsp+30h],rax
	mov	rax,[rsp+98h]
	movaps	[rsp+50h],xmm1
	mov	[rsp+40h],r9
	lea	r9,[rsp+40h]
	mov	[rsp+48h],r10
	mov	[rsp+28h],rax
	mov	rax,[rsp+90h]
	mov	[rsp+20h],rax
	call	4343C0h
	mov	rax,rbx
	add	rsp,60h
	pop	rbx
	ret
0000000000438162       90 90 90 90 90 90 90 90 90 90 90 90 90 90   ..............

;; fn0000000000438170: 0000000000438170
fn0000000000438170 proc
	push	rbx
	sub	rsp,60h
	mov	rax,[rsp+0A0h]
	mov	r10,[r9+8h]
	movdqu	xmm1,[r8]
	lea	r8,[rsp+50h]
	mov	rbx,rcx
	mov	r9,[r9]
	mov	[rsp+30h],rax
	mov	rax,[rsp+98h]
	movaps	[rsp+50h],xmm1
	mov	[rsp+40h],r9
	lea	r9,[rsp+40h]
	mov	[rsp+48h],r10
	mov	[rsp+28h],rax
	mov	rax,[rsp+90h]
	mov	[rsp+20h],rax
	call	434E00h
	mov	rax,rbx
	add	rsp,60h
	pop	rbx
	ret
00000000004381D2       90 90 90 90 90 90 90 90 90 90 90 90 90 90   ..............

;; fn00000000004381E0: 00000000004381E0
fn00000000004381E0 proc
	push	rbx
	sub	rsp,60h
	mov	rax,[rsp+0A0h]
	mov	r10,[r9+8h]
	movdqu	xmm1,[r8]
	lea	r8,[rsp+50h]
	mov	rbx,rcx
	mov	r9,[r9]
	mov	[rsp+30h],rax
	mov	rax,[rsp+98h]
	movaps	[rsp+50h],xmm1
	mov	[rsp+40h],r9
	lea	r9,[rsp+40h]
	mov	[rsp+48h],r10
	mov	[rsp+28h],rax
	mov	rax,[rsp+90h]
	mov	[rsp+20h],rax
	call	4357A0h
	mov	rax,rbx
	add	rsp,60h
	pop	rbx
	ret
0000000000438242       90 90 90 90 90 90 90 90 90 90 90 90 90 90   ..............

;; fn0000000000438250: 0000000000438250
fn0000000000438250 proc
	push	rsi
	push	rbx
	sub	rsp,38h
	mov	rbx,[rsp+88h]
	mov	rcx,[rsp+80h]
	mov	rsi,[rsp+78h]
	mov	r10,rdx
	movsx	edx,r9b
	mov	r9,r8
	mov	r8,r10
	movsxd	rax,dword ptr [rbx]
	mov	[rsp+20h],rcx
	add	rax,rcx
	mov	rcx,rsi
	mov	[rsp+28h],rax
	call	46F7F0h
	sub	rax,rsi
	mov	[rbx],eax
	add	rsp,38h
	pop	rbx
	pop	rsi
	ret
000000000043829C                                     90 90 90 90             ....

;; fn00000000004382A0: 00000000004382A0
;;   Called from:
;;     0000000000439860 (in fn0000000000439820)
;;     0000000000439AD4 (in fn0000000000439A70)
;;     0000000000439E48 (in fn0000000000439E20)
fn00000000004382A0 proc
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,58h
	lea	rbp,[rsp+80h]
	mov	eax,[rbp+40h]
	mov	rdi,[r8]
	mov	rsi,rcx
	lea	rcx,[000000000048B580]                                 ; [rip+000532B8]
	mov	rbx,r9
	mov	r12,[r8+8h]
	mov	[rbp-3Ch],eax
	call	42BB80h
	mov	r14,rax
	mov	rax,[rbx+0D0h]
	mov	rax,[rax+18h]
	lea	r13,[rax+r14*8]
	mov	r15,[r13+0h]
	test	r15,r15
	jz	4384F4h

l00000000004382F6:
	mov	r14d,[rbx+18h]
	lea	rax,[r15+4Ah]
	sub	rsp,30h
	mov	ecx,[rbp+48h]
	mov	edx,[rbp+48h]
	lea	r10,[rsp+30h]
	mov	r8,rax
	mov	[rbp-48h],rax
	mov	eax,r14d
	mov	r9d,r14d
	mov	[rbp-38h],r10
	and	eax,4Ah
	cmp	eax,8h
	mov	[rbp-40h],eax
	setnz	r13b
	cmp	eax,40h
	setnz	al
	and	r13d,eax
	test	ecx,ecx
	lea	rcx,[rsp+44h]
	setg	al
	neg	edx
	cmp	r13b,al
	cmovbe	edx,[rbp+48h]

l0000000000438347:
	movzx	eax,r13b
	mov	[rsp+20h],eax
	call	46F460h
	mov	r9d,14h
	movsxd	rcx,eax
	mov	r10,[rbp-38h]
	sub	r9d,ecx
	movsxd	r9,r9d
	add	r9,r10
	cmp	byte ptr [r15+20h],0h
	jnz	438434h

l0000000000438375:
	test	r13b,r13b
	jz	43848Dh

l000000000043837E:
	mov	edx,[rbp+48h]
	test	edx,edx
	js	4384E0h

l0000000000438389:
	and	r14d,800h
	jnz	438420h

l0000000000438396:
	mov	r14,[rbx+10h]
	movsxd	r13,ecx
	cmp	r14,r13
	jle	4383D6h

l00000000004383A2:
	lea	rax,[r14+1Eh]
	and	rax,0F0h
	call	4116F0h
	movsx	edx,byte ptr [rbp-3Ch]
	sub	rsp,rax
	mov	rcx,rbx
	lea	r15,[rsp+30h]
	mov	[rsp+28h],r13
	mov	[rsp+20h],r14
	movsxd	r13,r14d
	mov	r8,r15
	call	4688D0h
	mov	r9,r15

l00000000004383D6:
	test	r12b,r12b
	mov	qword ptr [rbx+10h],+0h
	mov	ebx,r12d
	jnz	438400h

l00000000004383E6:
	mov	rax,[rdi]
	mov	r8,r13
	mov	rdx,r9
	mov	rcx,rdi
	call	qword ptr [rax+60h]
	cmp	rax,r13
	mov	eax,1h
	cmovnz	ebx,eax

l0000000000438400:
	mov	rax,rsi
	mov	[rsi],rdi
	mov	[rsi+8h],bl
	lea	rsp,[rbp-28h]
	pop	rbx
	pop	rsi
	pop	rdi
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret
000000000043841A                               66 0F 1F 44 00 00           f..D..

l0000000000438420:
	movzx	eax,byte ptr [r15+4Bh]
	add	ecx,1h
	sub	r9,1h
	mov	[r9],al
	jmp	438396h

l0000000000438434:
	lea	eax,[rcx+1h]
	cdqe
	lea	rax,[rax+rax+1Eh]
	and	rax,0F0h
	call	4116F0h
	mov	r10,[r15+18h]
	movsx	edx,byte ptr [r15+49h]
	sub	rsp,rax
	mov	r8,[r15+10h]
	add	rcx,r9
	lea	r11,[rsp+32h]
	mov	[rsp+28h],rcx
	mov	[rsp+20h],r9
	mov	r9,r10
	mov	rcx,r11
	mov	[rbp-38h],r11
	call	46F7F0h
	mov	r11,[rbp-38h]
	mov	ecx,eax
	sub	ecx,r11d
	test	r13b,r13b
	mov	r9,r11
	jnz	43837Eh

l000000000043848D:
	test	r14d,200h
	jz	438396h

l000000000043849A:
	mov	eax,[rbp+48h]
	test	eax,eax
	jz	438396h

l00000000004384A5:
	cmp	dword ptr [rbp-40h],40h
	jz	438583h

l00000000004384AF:
	mov	rdx,[rbp-48h]
	xor	eax,eax
	and	r14d,4000h
	setnz	al
	add	ecx,2h
	sub	r9,2h
	movzx	eax,byte ptr [rdx+rax+2h]
	mov	[r9+1h],al
	movzx	eax,byte ptr [r15+4Eh]
	mov	[r9],al
	jmp	438396h
00000000004384DC                                     0F 1F 40 00             ..@.

l00000000004384E0:
	movzx	eax,byte ptr [r15+4Ah]
	add	ecx,1h
	sub	r9,1h
	mov	[r9],al
	jmp	438396h

l00000000004384F4:
	mov	ecx,90h
	call	475590h
	mov	r15,rax
	mov	dword ptr [rax+8h],0h
	lea	rax,[0000000000497350]                                 ; [rip+0005EE41]
	lea	rdx,[rbx+0D0h]
	mov	qword ptr [r15+10h],+0h
	mov	qword ptr [r15+18h],+0h
	mov	[r15],rax
	mov	byte ptr [r15+20h],0h
	mov	rcx,r15
	mov	qword ptr [r15+28h],+0h
	mov	qword ptr [r15+30h],+0h
	mov	qword ptr [r15+38h],+0h
	mov	qword ptr [r15+40h],+0h
	mov	byte ptr [r15+48h],0h
	mov	byte ptr [r15+49h],0h
	mov	byte ptr [r15+88h],0h
	call	463E50h
	mov	rcx,[rbx+0D0h]
	mov	rdx,r15
	mov	r8,r14
	call	469430h
	mov	r15,[r13+0h]
	jmp	4382F6h

l0000000000438583:
	movzx	eax,byte ptr [r15+4Eh]
	add	ecx,1h
	sub	r9,1h
	mov	[r9],al
	jmp	438396h
0000000000438597                      48 89 C1 E8 A1 D2 03 00 49        H.......I
00000000004385A0 8B 07 4C 89 F9 FF 50 08 E8 B3 DA 03 00 48 89 C1 ..L...P......H..
00000000004385B0 E8 8B D2 03 00 EB F1 48 89 C3 E8 B1 D4 03 00 48 .......H.......H
00000000004385C0 89 D9 E8 E9 8F FD FF 90 90 90 90 90 90 90 90 90 ................

;; fn00000000004385D0: 00000000004385D0
;;   Called from:
;;     00000000004398C0 (in fn0000000000439880)
;;     0000000000439E88 (in fn0000000000439E60)
fn00000000004385D0 proc
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,58h
	lea	rbp,[rsp+80h]
	mov	eax,[rbp+40h]
	mov	r13,[r8]
	mov	r12,rcx
	lea	rcx,[000000000048B580]                                 ; [rip+00052F88]
	mov	rbx,r9
	mov	r15,[r8+8h]
	mov	[rbp-3Ch],eax
	call	42BB80h
	mov	r14,rax
	mov	rax,[rbx+0D0h]
	mov	rax,[rax+18h]
	lea	rdi,[rax+r14*8]
	mov	rsi,[rdi]
	test	rsi,rsi
	jz	4387D0h

l0000000000438625:
	mov	r14d,[rbx+18h]
	lea	rax,[rsi+4Ah]
	sub	rsp,30h
	mov	edx,[rbp+48h]
	lea	r11,[rsp+30h]
	lea	rcx,[rsp+44h]
	mov	r8,rax
	mov	[rbp-48h],rax
	mov	eax,r14d
	mov	r9d,r14d
	mov	[rbp-38h],r11
	and	eax,4Ah
	cmp	eax,8h
	mov	[rbp-40h],eax
	setnz	dil
	cmp	eax,40h
	setnz	al
	and	edi,eax
	movzx	eax,dil
	mov	[rsp+20h],eax
	call	46F460h
	mov	r9d,14h
	movsxd	rcx,eax
	mov	r11,[rbp-38h]
	sub	r9d,ecx
	movsxd	r9,r9d
	add	r9,r11
	cmp	byte ptr [rsi+20h],0h
	jnz	438722h

l0000000000438691:
	test	dil,dil
	jz	43877Ah

l000000000043869A:
	mov	rdi,[rbx+10h]
	movsxd	rsi,ecx
	cmp	rdi,rsi
	jle	4386DAh

l00000000004386A6:
	lea	rax,[rdi+1Eh]
	and	rax,0F0h
	call	4116F0h
	movsx	edx,byte ptr [rbp-3Ch]
	sub	rsp,rax
	mov	rcx,rbx
	lea	r14,[rsp+30h]
	mov	[rsp+28h],rsi
	mov	[rsp+20h],rdi
	movsxd	rsi,edi
	mov	r8,r14
	call	4688D0h
	mov	r9,r14

l00000000004386DA:
	test	r15b,r15b
	mov	qword ptr [rbx+10h],+0h
	mov	ebx,r15d
	jnz	438705h

l00000000004386EA:
	mov	rax,[r13+0h]
	mov	r8,rsi
	mov	rdx,r9
	mov	rcx,r13
	call	qword ptr [rax+60h]
	cmp	rax,rsi
	mov	eax,1h
	cmovnz	ebx,eax

l0000000000438705:
	mov	rax,r12
	mov	[r12],r13
	mov	[r12+8h],bl
	lea	rsp,[rbp-28h]
	pop	rbx
	pop	rsi
	pop	rdi
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret

l0000000000438722:
	lea	eax,[rcx+1h]
	cdqe
	lea	rax,[rax+rax+1Eh]
	and	rax,0F0h
	call	4116F0h
	movsx	edx,byte ptr [rsi+49h]
	mov	r8,[rsi+10h]
	sub	rsp,rax
	mov	rax,[rsi+18h]
	add	rcx,r9
	lea	r11,[rsp+32h]
	mov	[rsp+28h],rcx
	mov	[rsp+20h],r9
	mov	rcx,r11
	mov	r9,rax
	mov	[rbp-38h],r11
	call	46F7F0h
	mov	r11,[rbp-38h]
	mov	ecx,eax
	sub	ecx,r11d
	test	dil,dil
	mov	r9,r11
	jnz	43869Ah

l000000000043877A:
	mov	eax,[rbp+48h]
	test	eax,eax
	jz	43869Ah

l0000000000438785:
	test	r14d,200h
	jz	43869Ah

l0000000000438792:
	cmp	dword ptr [rbp-40h],40h
	jz	43885Ah

l000000000043879C:
	mov	rdx,[rbp-48h]
	xor	eax,eax
	and	r14d,4000h
	setnz	al
	add	ecx,2h
	sub	r9,2h
	movzx	eax,byte ptr [rdx+rax+2h]
	mov	[r9+1h],al
	movzx	eax,byte ptr [rsi+4Eh]
	mov	[r9],al
	jmp	43869Ah
00000000004387C8                         0F 1F 84 00 00 00 00 00         ........

l00000000004387D0:
	mov	ecx,90h
	call	475590h
	mov	rsi,rax
	mov	dword ptr [rax+8h],0h
	lea	rax,[0000000000497350]                                 ; [rip+0005EB65]
	lea	rdx,[rbx+0D0h]
	mov	qword ptr [rsi+10h],+0h
	mov	qword ptr [rsi+18h],+0h
	mov	[rsi],rax
	mov	byte ptr [rsi+20h],0h
	mov	rcx,rsi
	mov	qword ptr [rsi+28h],+0h
	mov	qword ptr [rsi+30h],+0h
	mov	qword ptr [rsi+38h],+0h
	mov	qword ptr [rsi+40h],+0h
	mov	byte ptr [rsi+48h],0h
	mov	byte ptr [rsi+49h],0h
	mov	byte ptr [rsi+88h],0h
	call	463E50h
	mov	rcx,[rbx+0D0h]
	mov	rdx,rsi
	mov	r8,r14
	call	469430h
	mov	rsi,[rdi]
	jmp	438625h

l000000000043885A:
	movzx	eax,byte ptr [rsi+4Eh]
	add	ecx,1h
	sub	r9,1h
	mov	[r9],al
	jmp	43869Ah
000000000043886D                                        48 89 C1              H..
0000000000438870 E8 CB CF 03 00 48 8B 06 48 89 F1 FF 50 08 E8 DD .....H..H...P...
0000000000438880 D7 03 00 48 89 C1 E8 B5 CF 03 00 EB F1 48 89 C3 ...H.........H..
0000000000438890 E8 DB D1 03 00 48 89 D9 E8 13 8D FD FF 90 90 90 .....H..........

;; fn00000000004388A0: 00000000004388A0
;;   Called from:
;;     0000000000439920 (in fn00000000004398E0)
;;     0000000000439ECA (in fn0000000000439EA0)
fn00000000004388A0 proc
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,58h
	lea	rbp,[rsp+80h]
	mov	eax,[rbp+40h]
	mov	rdi,[r8]
	mov	rsi,rcx
	lea	rcx,[000000000048B580]                                 ; [rip+00052CB8]
	mov	rbx,r9
	mov	r12,[r8+8h]
	mov	[rbp-3Ch],eax
	call	42BB80h
	mov	r14,rax
	mov	rax,[rbx+0D0h]
	mov	rax,[rax+18h]
	lea	r13,[rax+r14*8]
	mov	r15,[r13+0h]
	test	r15,r15
	jz	438AF4h

l00000000004388F6:
	mov	r14d,[rbx+18h]
	lea	rax,[r15+4Ah]
	sub	rsp,40h
	mov	rdx,[rbp+48h]
	lea	r10,[rsp+30h]
	lea	rcx,[rsp+58h]
	mov	r8,rax
	mov	[rbp-48h],rax
	mov	eax,r14d
	mov	r9d,r14d
	mov	[rbp-38h],r10
	and	eax,4Ah
	cmp	eax,8h
	mov	[rbp-40h],eax
	setnz	r13b
	cmp	eax,40h
	setnz	al
	and	r13d,eax
	cmp	qword ptr [rbp+48h],0h
	setg	al
	neg	rdx
	cmp	r13b,al
	cmovbe	rdx,[rbp+48h]

l000000000043894A:
	movzx	eax,r13b
	mov	[rsp+20h],eax
	call	46F510h
	mov	r9d,28h
	movsxd	rcx,eax
	mov	r10,[rbp-38h]
	sub	r9d,ecx
	movsxd	r9,r9d
	add	r9,r10
	cmp	byte ptr [r15+20h],0h
	jnz	438A34h

l0000000000438978:
	test	r13b,r13b
	jz	438A8Dh

l0000000000438981:
	cmp	qword ptr [rbp+48h],0h
	js	438AE0h

l000000000043898C:
	and	r14d,800h
	jnz	438A20h

l0000000000438999:
	mov	r14,[rbx+10h]
	movsxd	r13,ecx
	cmp	r14,r13
	jle	4389D9h

l00000000004389A5:
	lea	rax,[r14+1Eh]
	and	rax,0F0h
	call	4116F0h
	movsx	edx,byte ptr [rbp-3Ch]
	sub	rsp,rax
	mov	rcx,rbx
	lea	r15,[rsp+30h]
	mov	[rsp+28h],r13
	mov	[rsp+20h],r14
	movsxd	r13,r14d
	mov	r8,r15
	call	4688D0h
	mov	r9,r15

l00000000004389D9:
	test	r12b,r12b
	mov	qword ptr [rbx+10h],+0h
	mov	ebx,r12d
	jnz	438A03h

l00000000004389E9:
	mov	rax,[rdi]
	mov	r8,r13
	mov	rdx,r9
	mov	rcx,rdi
	call	qword ptr [rax+60h]
	cmp	rax,r13
	mov	eax,1h
	cmovnz	ebx,eax

l0000000000438A03:
	mov	rax,rsi
	mov	[rsi],rdi
	mov	[rsi+8h],bl
	lea	rsp,[rbp-28h]
	pop	rbx
	pop	rsi
	pop	rdi
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret
0000000000438A1D                                        0F 1F 00              ...

l0000000000438A20:
	movzx	eax,byte ptr [r15+4Bh]
	add	ecx,1h
	sub	r9,1h
	mov	[r9],al
	jmp	438999h

l0000000000438A34:
	lea	eax,[rcx+1h]
	cdqe
	lea	rax,[rax+rax+1Eh]
	and	rax,0F0h
	call	4116F0h
	mov	r10,[r15+18h]
	movsx	edx,byte ptr [r15+49h]
	sub	rsp,rax
	mov	r8,[r15+10h]
	add	rcx,r9
	lea	r11,[rsp+32h]
	mov	[rsp+28h],rcx
	mov	[rsp+20h],r9
	mov	r9,r10
	mov	rcx,r11
	mov	[rbp-38h],r11
	call	46F7F0h
	mov	r11,[rbp-38h]
	mov	ecx,eax
	sub	ecx,r11d
	test	r13b,r13b
	mov	r9,r11
	jnz	438981h

l0000000000438A8D:
	test	r14d,200h
	jz	438999h

l0000000000438A9A:
	cmp	qword ptr [rbp+48h],0h
	jz	438999h

l0000000000438AA5:
	cmp	dword ptr [rbp-40h],40h
	jz	438B83h

l0000000000438AAF:
	mov	rdx,[rbp-48h]
	xor	eax,eax
	and	r14d,4000h
	setnz	al
	add	ecx,2h
	sub	r9,2h
	movzx	eax,byte ptr [rdx+rax+2h]
	mov	[r9+1h],al
	movzx	eax,byte ptr [r15+4Eh]
	mov	[r9],al
	jmp	438999h
0000000000438ADC                                     0F 1F 40 00             ..@.

l0000000000438AE0:
	movzx	eax,byte ptr [r15+4Ah]
	add	ecx,1h
	sub	r9,1h
	mov	[r9],al
	jmp	438999h

l0000000000438AF4:
	mov	ecx,90h
	call	475590h
	mov	r15,rax
	mov	dword ptr [rax+8h],0h
	lea	rax,[0000000000497350]                                 ; [rip+0005E841]
	lea	rdx,[rbx+0D0h]
	mov	qword ptr [r15+10h],+0h
	mov	qword ptr [r15+18h],+0h
	mov	[r15],rax
	mov	byte ptr [r15+20h],0h
	mov	rcx,r15
	mov	qword ptr [r15+28h],+0h
	mov	qword ptr [r15+30h],+0h
	mov	qword ptr [r15+38h],+0h
	mov	qword ptr [r15+40h],+0h
	mov	byte ptr [r15+48h],0h
	mov	byte ptr [r15+49h],0h
	mov	byte ptr [r15+88h],0h
	call	463E50h
	mov	rcx,[rbx+0D0h]
	mov	rdx,r15
	mov	r8,r14
	call	469430h
	mov	r15,[r13+0h]
	jmp	4388F6h

l0000000000438B83:
	movzx	eax,byte ptr [r15+4Eh]
	add	ecx,1h
	sub	r9,1h
	mov	[r9],al
	jmp	438999h
0000000000438B97                      48 89 C1 E8 A1 CC 03 00 49        H.......I
0000000000438BA0 8B 07 4C 89 F9 FF 50 08 E8 B3 D4 03 00 48 89 C1 ..L...P......H..
0000000000438BB0 E8 8B CC 03 00 EB F1 48 89 C3 E8 B1 CE 03 00 48 .......H.......H
0000000000438BC0 89 D9 E8 E9 89 FD FF 90 90 90 90 90 90 90 90 90 ................

;; fn0000000000438BD0: 0000000000438BD0
;;   Called from:
;;     0000000000439980 (in fn0000000000439940)
;;     0000000000439A3A (in fn00000000004399E0)
;;     0000000000439F0A (in fn0000000000439EE0)
fn0000000000438BD0 proc
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,58h
	lea	rbp,[rsp+80h]
	mov	eax,[rbp+40h]
	mov	r13,[r8]
	mov	r12,rcx
	lea	rcx,[000000000048B580]                                 ; [rip+00052988]
	mov	rbx,r9
	mov	r15,[r8+8h]
	mov	[rbp-3Ch],eax
	call	42BB80h
	mov	r14,rax
	mov	rax,[rbx+0D0h]
	mov	rax,[rax+18h]
	lea	rdi,[rax+r14*8]
	mov	rsi,[rdi]
	test	rsi,rsi
	jz	438DD0h

l0000000000438C25:
	mov	r14d,[rbx+18h]
	lea	rax,[rsi+4Ah]
	sub	rsp,40h
	mov	rdx,[rbp+48h]
	lea	r11,[rsp+30h]
	lea	rcx,[rsp+58h]
	mov	r8,rax
	mov	[rbp-48h],rax
	mov	eax,r14d
	mov	r9d,r14d
	mov	[rbp-38h],r11
	and	eax,4Ah
	cmp	eax,8h
	mov	[rbp-40h],eax
	setnz	dil
	cmp	eax,40h
	setnz	al
	and	edi,eax
	movzx	eax,dil
	mov	[rsp+20h],eax
	call	46F510h
	mov	r9d,28h
	movsxd	rcx,eax
	mov	r11,[rbp-38h]
	sub	r9d,ecx
	movsxd	r9,r9d
	add	r9,r11
	cmp	byte ptr [rsi+20h],0h
	jnz	438D23h

l0000000000438C92:
	test	dil,dil
	jz	438D7Bh

l0000000000438C9B:
	mov	rdi,[rbx+10h]
	movsxd	rsi,ecx
	cmp	rdi,rsi
	jle	438CDBh

l0000000000438CA7:
	lea	rax,[rdi+1Eh]
	and	rax,0F0h
	call	4116F0h
	movsx	edx,byte ptr [rbp-3Ch]
	sub	rsp,rax
	mov	rcx,rbx
	lea	r14,[rsp+30h]
	mov	[rsp+28h],rsi
	mov	[rsp+20h],rdi
	movsxd	rsi,edi
	mov	r8,r14
	call	4688D0h
	mov	r9,r14

l0000000000438CDB:
	test	r15b,r15b
	mov	qword ptr [rbx+10h],+0h
	mov	ebx,r15d
	jnz	438D06h

l0000000000438CEB:
	mov	rax,[r13+0h]
	mov	r8,rsi
	mov	rdx,r9
	mov	rcx,r13
	call	qword ptr [rax+60h]
	cmp	rax,rsi
	mov	eax,1h
	cmovnz	ebx,eax

l0000000000438D06:
	mov	rax,r12
	mov	[r12],r13
	mov	[r12+8h],bl
	lea	rsp,[rbp-28h]
	pop	rbx
	pop	rsi
	pop	rdi
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret

l0000000000438D23:
	lea	eax,[rcx+1h]
	cdqe
	lea	rax,[rax+rax+1Eh]
	and	rax,0F0h
	call	4116F0h
	movsx	edx,byte ptr [rsi+49h]
	mov	r8,[rsi+10h]
	sub	rsp,rax
	mov	rax,[rsi+18h]
	add	rcx,r9
	lea	r11,[rsp+32h]
	mov	[rsp+28h],rcx
	mov	[rsp+20h],r9
	mov	rcx,r11
	mov	r9,rax
	mov	[rbp-38h],r11
	call	46F7F0h
	mov	r11,[rbp-38h]
	mov	ecx,eax
	sub	ecx,r11d
	test	dil,dil
	mov	r9,r11
	jnz	438C9Bh

l0000000000438D7B:
	cmp	qword ptr [rbp+48h],0h
	jz	438C9Bh

l0000000000438D86:
	test	r14d,200h
	jz	438C9Bh

l0000000000438D93:
	cmp	dword ptr [rbp-40h],40h
	jz	438E5Ah

l0000000000438D9D:
	mov	rdx,[rbp-48h]
	xor	eax,eax
	and	r14d,4000h
	setnz	al
	add	ecx,2h
	sub	r9,2h
	movzx	eax,byte ptr [rdx+rax+2h]
	mov	[r9+1h],al
	movzx	eax,byte ptr [rsi+4Eh]
	mov	[r9],al
	jmp	438C9Bh
0000000000438DC9                            0F 1F 80 00 00 00 00          .......

l0000000000438DD0:
	mov	ecx,90h
	call	475590h
	mov	rsi,rax
	mov	dword ptr [rax+8h],0h
	lea	rax,[0000000000497350]                                 ; [rip+0005E565]
	lea	rdx,[rbx+0D0h]
	mov	qword ptr [rsi+10h],+0h
	mov	qword ptr [rsi+18h],+0h
	mov	[rsi],rax
	mov	byte ptr [rsi+20h],0h
	mov	rcx,rsi
	mov	qword ptr [rsi+28h],+0h
	mov	qword ptr [rsi+30h],+0h
	mov	qword ptr [rsi+38h],+0h
	mov	qword ptr [rsi+40h],+0h
	mov	byte ptr [rsi+48h],0h
	mov	byte ptr [rsi+49h],0h
	mov	byte ptr [rsi+88h],0h
	call	463E50h
	mov	rcx,[rbx+0D0h]
	mov	rdx,rsi
	mov	r8,r14
	call	469430h
	mov	rsi,[rdi]
	jmp	438C25h

l0000000000438E5A:
	movzx	eax,byte ptr [rsi+4Eh]
	add	ecx,1h
	sub	r9,1h
	mov	[r9],al
	jmp	438C9Bh
0000000000438E6D                                        48 89 C1              H..
0000000000438E70 E8 CB C9 03 00 48 8B 06 48 89 F1 FF 50 08 E8 DD .....H..H...P...
0000000000438E80 D1 03 00 48 89 C1 E8 B5 C9 03 00 EB F1 48 89 C3 ...H.........H..
0000000000438E90 E8 DB CB 03 00 48 89 D9 E8 13 87 FD FF 90 90 90 .....H..........

;; fn0000000000438EA0: 0000000000438EA0
;;   Called from:
;;     0000000000439202 (in fn0000000000438F60)
;;     0000000000439598 (in fn00000000004392F0)
fn0000000000438EA0 proc
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,38h
	mov	rdi,[rsp+80h]
	mov	rbx,[rsp+88h]
	mov	r10,[rsp+90h]
	mov	rsi,[rsp+98h]
	test	rdi,rdi
	jz	438F25h

l0000000000438ECD:
	mov	rbp,rdi
	movsx	eax,r9b
	mov	[rsp+20h],r10
	sub	rbp,r10
	mov	r9,r8
	mov	r8,rdx
	movsxd	rcx,ebp
	mov	edx,eax
	add	rcx,r10
	mov	[rsp+28h],rcx
	mov	rcx,rbx
	call	46F7F0h
	mov	r8d,[rsi]
	mov	rdx,rax
	mov	rcx,rax
	sub	rdx,rbx
	mov	rbx,rdx
	mov	rdx,rdi
	sub	r8d,ebp
	movsxd	r8,r8d
	call	41BCC0h
	mov	eax,[rsi]
	sub	eax,ebp
	add	eax,ebx
	mov	[rsi],eax
	add	rsp,38h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret

l0000000000438F25:
	movsxd	rcx,dword ptr [rsi]
	movsx	eax,r9b
	mov	[rsp+20h],r10
	mov	r9,r8
	mov	r8,rdx
	mov	edx,eax
	add	rcx,r10
	mov	[rsp+28h],rcx
	mov	rcx,rbx
	call	46F7F0h
	sub	eax,ebx
	mov	[rsi],eax
	add	rsp,38h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
0000000000438F56                   90 90 90 90 90 90 90 90 90 90       ..........

;; fn0000000000438F60: 0000000000438F60
;;   Called from:
;;     0000000000439750 (in fn0000000000439700)
;;     0000000000439DAA (in fn0000000000439D70)
fn0000000000438F60 proc
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,+98h
	lea	rbp,[rsp+80h]
	movaps	[rbp+0h],xmm6
	lea	r15,[r9+0D0h]
	mov	r13,rcx
	lea	rcx,[rbp-1Dh]
	mov	rax,[r8+8h]
	mov	rbx,r9
	mov	[rbp+68h],rdx
	mov	rdx,r15
	mov	esi,[rbp+88h]
	mov	r14,[r8]
	movsd	xmm6,double ptr [rbp+90h]
	lea	rdi,[rbp-10h]
	mov	[rbp-30h],rax
	mov	eax,[rbp+80h]
	mov	[rbp-3Ch],eax
	call	42A360h
	mov	r12,rax
	mov	rax,[rbx+8h]
	mov	edx,6h
	movsx	r8d,sil
	mov	rcx,rbx
	test	rax,rax
	cmovns	rdx,rax

l0000000000438FDC:
	mov	[rbp-28h],rdx
	mov	rdx,rdi
	call	452660h
	sub	rsp,40h
	call	46AC50h
	mov	rdx,[rbp-28h]
	mov	[rbp-18h],rax
	lea	rsi,[rsp+40h]
	lea	rax,[rbp-18h]
	movsd	double ptr [rsp+28h],xmm6
	mov	r9,rdi
	mov	r8d,2Dh
	mov	[rsp+20h],rdx
	mov	rcx,rax
	mov	rdx,rsi
	mov	[rbp-38h],rax
	call	46FF90h
	cmp	eax,2Ch
	mov	[rbp-1Ch],eax
	jg	439220h

l0000000000439031:
	mov	rcx,r15
	call	472FC0h
	movsxd	r15,dword ptr [rbp-1Ch]
	mov	r11,rax
	lea	rax,[r15+1Eh]
	and	rax,0F0h
	call	4116F0h
	sub	rsp,rax
	movzx	eax,byte ptr [r11+38h]
	lea	rdi,[rsp+40h]
	mov	[rbp-28h],rdi
	cmp	al,1h
	jz	4392D0h

l0000000000439066:
	test	al,al
	jz	439273h

l000000000043906E:
	mov	rax,[r11]
	lea	rdx,[000000000042B5D0]                                 ; [rip-0000DAA8]
	mov	rax,[rax+38h]
	cmp	rax,rdx
	jnz	4392B0h

l0000000000439085:
	mov	r8,r15
	mov	rdx,rsi
	mov	rcx,rdi
	call	41BCC0h
	movsxd	r15,dword ptr [rbp-1Ch]
	mov	r9,r15

l000000000043909A:
	mov	r8,r15
	mov	edx,2Eh
	mov	rcx,rsi
	mov	[rbp-38h],r9d
	call	41BD98h
	test	rax,rax
	mov	r9d,[rbp-38h]
	jz	439170h

l00000000004390BB:
	sub	rax,rsi
	lea	rcx,[rdi+rax]
	movzx	eax,byte ptr [r12+48h]
	mov	[rcx],al
	cmp	byte ptr [r12+20h],0h
	jnz	4391A8h

l00000000004390D6:
	mov	rdi,[rbx+10h]
	mov	rsi,r15
	cmp	rdi,r15
	jle	43911Eh

l00000000004390E2:
	lea	rax,[rdi+1Eh]
	and	rax,0F0h
	call	4116F0h
	movsx	edx,byte ptr [rbp-3Ch]
	mov	r9,[rbp-28h]
	sub	rsp,rax
	mov	rcx,rbx
	movsxd	rsi,edi
	lea	r12,[rsp+40h]
	mov	[rsp+28h],r15
	mov	[rsp+20h],rdi
	mov	r8,r12
	call	4688D0h
	mov	[rbp-1Ch],edi
	mov	[rbp-28h],r12

l000000000043911E:
	mov	rax,[rbp-30h]
	mov	qword ptr [rbx+10h],+0h
	test	al,al
	mov	ebx,eax
	jnz	43914Bh

l0000000000439130:
	mov	rax,[r14]
	mov	r8,rsi
	mov	rdx,[rbp-28h]
	mov	rcx,r14
	call	qword ptr [rax+60h]
	cmp	rax,rsi
	mov	eax,1h
	cmovnz	ebx,eax

l000000000043914B:
	movaps	xmm6,[rbp+0h]
	mov	rax,r13
	mov	[r13+0h],r14
	mov	[r13+8h],bl
	lea	rsp,[rbp+18h]
	pop	rbx
	pop	rsi
	pop	rdi
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret
000000000043916B                                  0F 1F 44 00 00            ..D..

l0000000000439170:
	cmp	byte ptr [r12+20h],0h
	jz	4390D6h

l000000000043917C:
	cmp	r9d,2h
	jle	4391A6h

l0000000000439182:
	movzx	eax,byte ptr [rsi+1h]
	cmp	al,39h
	jg	4390D6h

l000000000043918E:
	movzx	ecx,byte ptr [rsi+2h]
	lea	edx,[rcx-30h]
	cmp	dl,9h
	ja	4390D6h

l000000000043919E:
	cmp	al,2Fh
	jle	4390D6h

l00000000004391A6:
	xor	ecx,ecx

l00000000004391A8:
	lea	rax,[r15+r15+1Eh]
	and	rax,0F0h
	call	4116F0h
	sub	rsp,rax
	movzx	eax,byte ptr [rsi]
	lea	r15,[rsp+40h]
	sub	eax,2Bh
	test	al,0FDh
	jz	439290h

l00000000004391CC:
	xor	esi,esi
	xor	eax,eax

l00000000004391D0:
	movsx	r9d,byte ptr [r12+49h]
	mov	r8,[r12+18h]
	lea	r10,[rbp-1Ch]
	mov	rdx,[r12+10h]
	mov	[rsp+20h],rcx
	add	rdi,rax
	mov	rcx,[rbp+68h]
	add	rax,r15
	mov	[rsp+38h],r10
	mov	[rsp+30h],rdi
	mov	[rsp+28h],rax
	call	438EA0h
	add	esi,[rbp-1Ch]
	mov	[rbp-28h],r15
	mov	[rbp-1Ch],esi
	movsxd	r15,esi
	jmp	4390D6h
0000000000439219                            0F 1F 80 00 00 00 00          .......

l0000000000439220:
	lea	r8d,[rax+1h]
	movsxd	rax,r8d
	mov	[rbp-40h],r8d
	add	rax,1Eh
	and	rax,0F0h
	call	4116F0h
	sub	rsp,rax
	call	46AC50h
	mov	[rbp-18h],rax
	mov	rax,[rbp-28h]
	lea	rsi,[rsp+40h]
	mov	r8d,[rbp-40h]
	mov	rcx,[rbp-38h]
	movsd	double ptr [rsp+28h],xmm6
	mov	r9,rdi
	mov	rdx,rsi
	mov	[rsp+20h],rax
	call	46FF90h
	mov	[rbp-1Ch],eax
	jmp	439031h

l0000000000439273:
	mov	rcx,r11
	mov	[rbp-38h],r11
	call	42B320h
	mov	r11,[rbp-38h]
	jmp	43906Eh
0000000000439288                         0F 1F 84 00 00 00 00 00         ........

l0000000000439290:
	movzx	eax,byte ptr [rdi]
	lea	esi,[r9-1h]
	mov	[rbp-1Ch],esi
	mov	esi,1h
	mov	[r15],al
	mov	eax,1h
	jmp	4391D0h
00000000004392AC                                     0F 1F 40 00             ..@.

l00000000004392B0:
	mov	r9,rdi
	lea	r8,[rsi+r15]
	mov	rdx,rsi
	mov	rcx,r11
	call	rax
	movsxd	r15,dword ptr [rbp-1Ch]
	mov	r9,r15
	jmp	43909Ah
00000000004392CB                                  0F 1F 44 00 00            ..D..

l00000000004392D0:
	mov	r8,r15
	mov	rdx,rsi
	mov	rcx,rdi
	mov	[rbp-38h],r15d
	call	41BCC0h
	mov	r9d,[rbp-38h]
	jmp	43909Ah
00000000004392EB                                  90 90 90 90 90            .....

;; fn00000000004392F0: 00000000004392F0
;;   Called from:
;;     00000000004397D9 (in fn0000000000439780)
;;     0000000000439E03 (in fn0000000000439DC0)
fn00000000004392F0 proc
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,+0B8h
	lea	rbp,[rsp+80h]
	mov	rax,[r8+8h]
	mov	esi,[rbp+0A8h]
	lea	r15,[r9+0D0h]
	mov	r13,rcx
	lea	rcx,[rbp+13h]
	mov	rbx,r9
	mov	[rbp+88h],rdx
	mov	r14,[r8]
	mov	[rbp-10h],rax
	mov	eax,[rbp+0A0h]
	mov	rdx,r15
	lea	rdi,[rbp+20h]
	mov	[rbp-24h],eax
	mov	rax,[rbp+0B0h]
	fld	tword ptr [rax]
	fstp	tword ptr [rbp-20h]
	call	42A360h
	mov	r12,rax
	mov	edx,6h
	movsx	r8d,sil
	mov	rax,[rbx+8h]
	mov	rcx,rbx
	test	rax,rax
	cmovns	rdx,rax

l000000000043936F:
	mov	[rbp-8h],rdx
	mov	rdx,rdi
	call	452660h
	sub	rsp,50h
	call	46AC50h
	fld	tword ptr [rbp-20h]
	mov	rdx,[rbp-8h]
	mov	[rbp+18h],rax
	lea	rsi,[rsp+40h]
	lea	rax,[rbp+18h]
	mov	[rsp+28h],rbp
	mov	r9,rdi
	mov	r8d,36h
	mov	[rbp-38h],rbp
	mov	[rsp+20h],rdx
	mov	rcx,rax
	mov	rdx,rsi
	mov	[rbp-30h],rax
	fstp	tword ptr [rbp+0h]
	call	46FF90h
	cmp	eax,35h
	mov	[rbp+14h],eax
	jg	4395B0h

l00000000004393CD:
	mov	rcx,r15
	call	472FC0h
	movsxd	r15,dword ptr [rbp+14h]
	mov	r11,rax
	lea	rax,[r15+1Eh]
	and	rax,0F0h
	call	4116F0h
	sub	rsp,rax
	movzx	eax,byte ptr [r11+38h]
	lea	rdi,[rsp+40h]
	mov	[rbp-8h],rdi
	cmp	al,1h
	jz	439660h

l0000000000439402:
	test	al,al
	jz	439610h

l000000000043940A:
	mov	rax,[r11]
	lea	rdx,[000000000042B5D0]                                 ; [rip-0000DE44]
	mov	rax,[rax+38h]
	cmp	rax,rdx
	jnz	439641h

l0000000000439421:
	mov	r8,r15
	mov	rdx,rsi
	mov	rcx,rdi
	call	41BCC0h
	movsxd	r15,dword ptr [rbp+14h]
	mov	r9,r15

l0000000000439436:
	mov	r8,r15
	mov	edx,2Eh
	mov	rcx,rsi
	mov	[rbp-20h],r9d
	call	41BD98h
	test	rax,rax
	mov	r9d,[rbp-20h]
	jz	439503h

l0000000000439457:
	sub	rax,rsi
	lea	rcx,[rdi+rax]
	movzx	eax,byte ptr [r12+48h]
	mov	[rcx],al
	cmp	byte ptr [r12+20h],0h
	jnz	43953Bh

l0000000000439472:
	mov	rdi,[rbx+10h]
	mov	rsi,r15
	cmp	rdi,r15
	jle	4394BAh

l000000000043947E:
	lea	rax,[rdi+1Eh]
	and	rax,0F0h
	call	4116F0h
	movsx	edx,byte ptr [rbp-24h]
	mov	r9,[rbp-8h]
	sub	rsp,rax
	mov	rcx,rbx
	movsxd	rsi,edi
	lea	r12,[rsp+40h]
	mov	[rsp+28h],r15
	mov	[rsp+20h],rdi
	mov	r8,r12
	call	4688D0h
	mov	[rbp+14h],edi
	mov	[rbp-8h],r12

l00000000004394BA:
	mov	rax,[rbp-10h]
	mov	qword ptr [rbx+10h],+0h
	test	al,al
	mov	ebx,eax
	jnz	4394E7h

l00000000004394CC:
	mov	rax,[r14]
	mov	r8,rsi
	mov	rdx,[rbp-8h]
	mov	rcx,r14
	call	qword ptr [rax+60h]
	cmp	rax,rsi
	mov	eax,1h
	cmovnz	ebx,eax

l00000000004394E7:
	mov	rax,r13
	mov	[r13+0h],r14
	mov	[r13+8h],bl
	lea	rsp,[rbp+38h]
	pop	rbx
	pop	rsi
	pop	rdi
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret

l0000000000439503:
	cmp	byte ptr [r12+20h],0h
	jz	439472h

l000000000043950F:
	cmp	r9d,2h
	jle	439539h

l0000000000439515:
	movzx	eax,byte ptr [rsi+1h]
	cmp	al,39h
	jg	439472h

l0000000000439521:
	movzx	edx,byte ptr [rsi+2h]
	sub	edx,30h
	cmp	dl,9h
	ja	439472h

l0000000000439531:
	cmp	al,2Fh
	jle	439472h

l0000000000439539:
	xor	ecx,ecx

l000000000043953B:
	lea	rax,[r15+r15+1Eh]
	and	rax,0F0h
	call	4116F0h
	sub	rsp,rax
	movzx	eax,byte ptr [rsi]
	lea	r15,[rsp+40h]
	sub	eax,2Bh
	test	al,0FDh
	jz	439625h

l000000000043955F:
	xor	esi,esi
	xor	eax,eax

l0000000000439563:
	movsx	r9d,byte ptr [r12+49h]
	mov	r8,[r12+18h]
	lea	r10,[rbp+14h]
	mov	rdx,[r12+10h]
	mov	[rsp+20h],rcx
	add	rdi,rax
	mov	rcx,[rbp+88h]
	add	rax,r15
	mov	[rsp+38h],r10
	mov	[rsp+30h],rdi
	mov	[rsp+28h],rax
	call	438EA0h
	add	esi,[rbp+14h]
	mov	[rbp-8h],r15
	mov	[rbp+14h],esi
	movsxd	r15,esi
	jmp	439472h
00000000004395AF                                              90                .

l00000000004395B0:
	lea	r8d,[rax+1h]
	movsxd	rax,r8d
	mov	[rbp-28h],r8d
	add	rax,1Eh
	and	rax,0F0h
	call	4116F0h
	sub	rsp,rax
	call	46AC50h
	fld	tword ptr [rbp-20h]
	mov	[rbp+18h],rax
	mov	rax,[rbp-38h]
	lea	rsi,[rsp+40h]
	mov	r8d,[rbp-28h]
	mov	rcx,[rbp-30h]
	mov	r9,rdi
	mov	rdx,rsi
	mov	[rsp+28h],rax
	mov	rax,[rbp-8h]
	mov	[rsp+20h],rax
	fstp	tword ptr [rbp+0h]
	call	46FF90h
	mov	[rbp+14h],eax
	jmp	4393CDh
000000000043960C                                     0F 1F 40 00             ..@.

l0000000000439610:
	mov	rcx,r11
	mov	[rbp-20h],r11
	call	42B320h
	mov	r11,[rbp-20h]
	jmp	43940Ah

l0000000000439625:
	movzx	eax,byte ptr [rdi]
	lea	esi,[r9-1h]
	mov	[rbp+14h],esi
	mov	esi,1h
	mov	[r15],al
	mov	eax,1h
	jmp	439563h

l0000000000439641:
	mov	r9,rdi
	lea	r8,[rsi+r15]
	mov	rdx,rsi
	mov	rcx,r11
	call	rax
	movsxd	r15,dword ptr [rbp+14h]
	mov	r9,r15
	jmp	439436h
000000000043965C                                     0F 1F 40 00             ..@.

l0000000000439660:
	mov	r8,r15
	mov	rdx,rsi
	mov	rcx,rdi
	mov	[rbp-20h],r15d
	call	41BCC0h
	mov	r9d,[rbp-20h]
	jmp	439436h
000000000043967B                                  90 90 90 90 90            .....

;; fn0000000000439680: 0000000000439680
fn0000000000439680 proc
	push	rbx
	sub	rsp,40h
	mov	rax,[rdx]
	mov	rbx,rcx
	mov	rcx,[rsp+78h]
	movdqu	xmm1,[r8]
	lea	r8,[rsp+30h]
	mov	[rsp+28h],rcx
	movsx	ecx,byte ptr [rsp+70h]
	movaps	[rsp+30h],xmm1
	mov	[rsp+20h],ecx
	mov	rcx,rbx
	call	qword ptr [rax+48h]
	mov	rax,rbx
	add	rsp,40h
	pop	rbx
	ret
00000000004396BC                                     90 90 90 90             ....

;; fn00000000004396C0: 00000000004396C0
fn00000000004396C0 proc
	push	rbx
	sub	rsp,40h
	mov	rax,[rdx]
	mov	rbx,rcx
	movzx	ecx,byte ptr [rsp+78h]
	movdqu	xmm1,[r8]
	lea	r8,[rsp+30h]
	movaps	[rsp+30h],xmm1
	mov	[rsp+28h],ecx
	movsx	ecx,byte ptr [rsp+70h]
	mov	[rsp+20h],ecx
	mov	rcx,rbx
	call	qword ptr [rax+10h]
	mov	rax,rbx
	add	rsp,40h
	pop	rbx
	ret
00000000004396FB                                  90 90 90 90 90            .....

;; fn0000000000439700: 0000000000439700
fn0000000000439700 proc
	push	rbx
	sub	rsp,50h
	mov	rax,[rdx]
	movdqu	xmm1,[r8]
	lea	r8,[0000000000439D70]                                  ; [rip+0000065C]
	mov	rbx,rcx
	movsx	ecx,byte ptr [rsp+80h]
	mov	rax,[rax+38h]
	movsd	xmm0,double ptr [rsp+88h]
	movaps	[rsp+40h],xmm1
	cmp	rax,r8
	jnz	439760h

l0000000000439736:
	movsd	double ptr [rsp+30h],xmm0
	lea	r8,[rsp+40h]
	mov	[rsp+20h],ecx
	mov	dword ptr [rsp+28h],0h
	mov	rcx,rbx
	call	438F60h
	mov	rax,rbx
	add	rsp,50h
	pop	rbx
	ret
000000000043975E                                           66 90               f.

l0000000000439760:
	lea	r8,[rsp+40h]
	mov	[rsp+20h],ecx
	movsd	double ptr [rsp+28h],xmm0
	mov	rcx,rbx
	call	rax
	mov	rax,rbx
	add	rsp,50h
	pop	rbx
	ret
000000000043977D                                        90 90 90              ...

;; fn0000000000439780: 0000000000439780
fn0000000000439780 proc
	push	rbx
	sub	rsp,60h
	mov	rax,[rsp+98h]
	movdqu	xmm1,[r8]
	lea	r8,[0000000000439DC0]                                  ; [rip+00000627]
	mov	rbx,rcx
	movsx	ecx,byte ptr [rsp+90h]
	fld	tword ptr [rax]
	mov	rax,[rdx]
	mov	rax,[rax+40h]
	cmp	rax,r8
	movaps	[rsp+50h],xmm1
	fstp	tword ptr [rsp+40h]
	jnz	4397F0h

l00000000004397BB:
	lea	rax,[rsp+40h]
	lea	r8,[rsp+50h]
	mov	[rsp+20h],ecx
	mov	dword ptr [rsp+28h],4Ch
	mov	rcx,rbx
	mov	[rsp+30h],rax
	call	4392F0h
	mov	rax,rbx
	add	rsp,60h
	pop	rbx
	ret
00000000004397E7                      66 0F 1F 84 00 00 00 00 00        f........

l00000000004397F0:
	lea	r8,[rsp+40h]
	mov	[rsp+20h],ecx
	mov	rcx,rbx
	mov	[rsp+28h],r8
	lea	r8,[rsp+50h]
	call	rax
	mov	rax,rbx
	add	rsp,60h
	pop	rbx
	ret
0000000000439811    90 90 90 90 90 90 90 90 90 90 90 90 90 90 90  ...............

;; fn0000000000439820: 0000000000439820
fn0000000000439820 proc
	push	rbx
	sub	rsp,40h
	mov	rax,[rdx]
	lea	r10,[0000000000439E20]                                 ; [rip+000005F1]
	mov	rbx,rcx
	movsx	ecx,byte ptr [rsp+70h]
	movdqu	xmm1,[r8]
	mov	rax,[rax+18h]
	mov	r8d,[rsp+78h]
	movaps	[rsp+30h],xmm1
	mov	[rsp+20h],ecx
	mov	rcx,rbx
	cmp	rax,r10
	mov	[rsp+28h],r8d
	lea	r8,[rsp+30h]
	jnz	439870h

l0000000000439860:
	call	4382A0h
	mov	rax,rbx
	add	rsp,40h
	pop	rbx
	ret
000000000043986E                                           66 90               f.

l0000000000439870:
	call	rax
	mov	rax,rbx
	add	rsp,40h
	pop	rbx
	ret
000000000043987B                                  90 90 90 90 90            .....

;; fn0000000000439880: 0000000000439880
fn0000000000439880 proc
	push	rbx
	sub	rsp,40h
	mov	rax,[rdx]
	lea	r10,[0000000000439E60]                                 ; [rip+000005D1]
	mov	rbx,rcx
	movsx	ecx,byte ptr [rsp+70h]
	movdqu	xmm1,[r8]
	mov	rax,[rax+20h]
	mov	r8d,[rsp+78h]
	movaps	[rsp+30h],xmm1
	mov	[rsp+20h],ecx
	mov	rcx,rbx
	cmp	rax,r10
	mov	[rsp+28h],r8d
	lea	r8,[rsp+30h]
	jnz	4398D0h

l00000000004398C0:
	call	4385D0h
	mov	rax,rbx
	add	rsp,40h
	pop	rbx
	ret
00000000004398CE                                           66 90               f.

l00000000004398D0:
	call	rax
	mov	rax,rbx
	add	rsp,40h
	pop	rbx
	ret
00000000004398DB                                  90 90 90 90 90            .....

;; fn00000000004398E0: 00000000004398E0
fn00000000004398E0 proc
	push	rbx
	sub	rsp,40h
	mov	rax,[rdx]
	lea	r10,[0000000000439EA0]                                 ; [rip+000005B1]
	mov	rbx,rcx
	movsx	ecx,byte ptr [rsp+70h]
	movdqu	xmm1,[r8]
	mov	rax,[rax+28h]
	mov	r8,[rsp+78h]
	movaps	[rsp+30h],xmm1
	mov	[rsp+20h],ecx
	mov	rcx,rbx
	cmp	rax,r10
	mov	[rsp+28h],r8
	lea	r8,[rsp+30h]
	jnz	439930h

l0000000000439920:
	call	4388A0h
	mov	rax,rbx
	add	rsp,40h
	pop	rbx
	ret
000000000043992E                                           66 90               f.

l0000000000439930:
	call	rax
	mov	rax,rbx
	add	rsp,40h
	pop	rbx
	ret
000000000043993B                                  90 90 90 90 90            .....

;; fn0000000000439940: 0000000000439940
fn0000000000439940 proc
	push	rbx
	sub	rsp,40h
	mov	rax,[rdx]
	lea	r10,[0000000000439EE0]                                 ; [rip+00000591]
	mov	rbx,rcx
	movsx	ecx,byte ptr [rsp+70h]
	movdqu	xmm1,[r8]
	mov	rax,[rax+30h]
	mov	r8,[rsp+78h]
	movaps	[rsp+30h],xmm1
	mov	[rsp+20h],ecx
	mov	rcx,rbx
	cmp	rax,r10
	mov	[rsp+28h],r8
	lea	r8,[rsp+30h]
	jnz	439990h

l0000000000439980:
	call	438BD0h
	mov	rax,rbx
	add	rsp,40h
	pop	rbx
	ret
000000000043998E                                           66 90               f.

l0000000000439990:
	call	rax
	mov	rax,rbx
	add	rsp,40h
	pop	rbx
	ret
000000000043999B                                  90 90 90 90 90            .....

;; fn00000000004399A0: 00000000004399A0
fn00000000004399A0 proc
	push	rsi
	push	rbx
	sub	rsp,38h
	mov	rbx,[rsp+80h]
	mov	rsi,r8
	mov	rcx,r9
	mov	r9,[rsp+78h]
	movsx	edx,dl
	movsxd	rax,dword ptr [rbx]
	mov	[rsp+20h],r8
	mov	r8,[rsp+70h]
	mov	[rsp+28h],rax
	call	4688D0h
	mov	[rbx],esi
	add	rsp,38h
	pop	rbx
	pop	rsi
	ret
00000000004399DC                                     90 90 90 90             ....

;; fn00000000004399E0: 00000000004399E0
fn00000000004399E0 proc
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,58h
	mov	ebp,[r9+18h]
	mov	r10,[r8]
	mov	rsi,[r8+8h]
	mov	rdi,rcx
	lea	r8,[rsp+30h]
	lea	rcx,[rsp+40h]
	mov	rbx,r9
	mov	eax,ebp
	mov	[rsp+30h],r10
	and	eax,0FFFFBFB5h
	mov	[rsp+38h],rsi
	and	sil,0h
	or	eax,208h
	mov	[r9+18h],eax
	mov	rax,[rsp+0A8h]
	mov	[rsp+28h],rax
	movsx	eax,byte ptr [rsp+0A0h]
	mov	[rsp+20h],eax
	call	438BD0h
	mov	rax,[rsp+40h]
	mov	[rbx+18h],ebp
	mov	rdx,rax
	movzx	eax,byte ptr [rsp+48h]
	mov	[rdi],rdx
	or	rsi,rax
	mov	rax,rdi
	mov	[rdi+8h],rsi
	add	rsp,58h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
0000000000439A65                90 90 90 90 90 90 90 90 90 90 90      ...........

;; fn0000000000439A70: 0000000000439A70
fn0000000000439A70 proc
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,+88h
	lea	rbp,[rsp+80h]
	mov	eax,[rbp+70h]
	mov	r15d,[r9+18h]
	mov	r12,[r8]
	mov	rbx,[r8+8h]
	mov	rdi,rcx
	mov	rsi,r9
	mov	[rbp-30h],eax
	mov	eax,[rbp+78h]
	test	r15b,1h
	mov	r14,r12
	mov	r13d,ebx
	mov	[rbp-28h],eax
	jnz	439B00h

l0000000000439AB4:
	movzx	eax,byte ptr [rbp-28h]
	lea	rcx,[rbp-10h]
	lea	r8,[rbp-20h]
	mov	[rbp-20h],r12
	mov	[rbp-18h],rbx
	mov	[rsp+28h],eax
	movsx	eax,byte ptr [rbp-30h]
	mov	[rsp+20h],eax
	call	4382A0h
	movzx	r13d,byte ptr [rbp-8h]
	mov	r14,[rbp-10h]

l0000000000439AE2:
	mov	bl,r13b
	mov	[rdi],r14
	mov	[rdi+8h],rbx

l0000000000439AEC:
	mov	rax,rdi
	lea	rsp,[rbp+8h]
	pop	rbx
	pop	rsi
	pop	rdi
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret

l0000000000439B00:
	lea	rcx,[000000000048B580]                                 ; [rip+00051A79]
	call	42BB80h
	mov	rcx,rax
	mov	[rbp-38h],rax
	mov	rax,[rsi+0D0h]
	mov	rax,[rax+18h]
	lea	rax,[rax+rcx*8]
	mov	[rbp-40h],rax
	mov	rax,[rax]
	test	rax,rax
	jz	439CA2h

l0000000000439B32:
	cmp	byte ptr [rbp-28h],0h
	jnz	439C10h

l0000000000439B3C:
	movsxd	r9,dword ptr [rax+40h]
	mov	r10,[rsi+10h]
	mov	r11,[rax+38h]
	cmp	r10,r9
	jle	439C25h

l0000000000439B51:
	sub	r10,r9
	mov	[rbp-38h],r11
	mov	[rbp-28h],r9
	lea	rax,[r10+1Eh]
	mov	r14,r10
	and	rax,0F0h
	call	4116F0h
	movsx	edx,byte ptr [rbp-30h]
	sub	rsp,rax
	mov	r8,r10
	and	r15d,0B0h
	lea	rax,[rsp+30h]
	mov	rcx,rax
	mov	[rbp-40h],rax
	call	41BD88h
	cmp	r15d,20h
	mov	qword ptr [rsi+10h],+0h
	mov	r9,[rbp-28h]
	mov	r11,[rbp-38h]
	jz	439C60h

l0000000000439BA8:
	test	r13b,r13b
	mov	[rbp-30h],r9
	mov	[rbp-28h],r11
	movsxd	rsi,r14d
	jnz	439BF9h

l0000000000439BB8:
	mov	rax,[r12]
	mov	r8,rsi
	mov	rdx,[rbp-40h]
	mov	rcx,r12
	call	qword ptr [rax+60h]
	cmp	rsi,rax
	mov	r11,[rbp-28h]
	mov	r9,[rbp-30h]
	jnz	439D33h

l0000000000439BDA:
	mov	rax,[r12]
	mov	r8,r9
	mov	[rbp-28h],r9
	mov	rdx,r11
	mov	rcx,r12
	call	qword ptr [rax+60h]
	mov	r9,[rbp-28h]
	cmp	r9,rax
	setnz	r13b

l0000000000439BF9:
	mov	bl,r13b
	mov	[rdi],r12
	mov	[rdi+8h],rbx
	jmp	439AECh
0000000000439C08                         0F 1F 84 00 00 00 00 00         ........

l0000000000439C10:
	movsxd	r9,dword ptr [rax+30h]
	mov	r10,[rsi+10h]
	mov	r11,[rax+28h]
	cmp	r10,r9
	jg	439B51h

l0000000000439C25:
	test	r13b,r13b
	mov	qword ptr [rsi+10h],+0h
	jnz	439AE2h

l0000000000439C36:
	mov	rax,[r12]
	mov	r8,r9
	mov	[rbp-28h],r9
	mov	rdx,r11
	mov	rcx,r12
	call	qword ptr [rax+60h]
	mov	r9,[rbp-28h]
	cmp	r9,rax
	setnz	r13b
	jmp	439AE2h
0000000000439C5A                               66 0F 1F 44 00 00           f..D..

l0000000000439C60:
	test	r13b,r13b
	jnz	439BF9h

l0000000000439C65:
	mov	rax,[r12]
	mov	r8,r9
	mov	rdx,r11
	mov	rcx,r12
	call	qword ptr [rax+60h]
	mov	r9,[rbp-28h]
	cmp	r9,rax
	jnz	439D33h

l0000000000439C82:
	mov	rax,[r12]
	movsxd	rsi,r14d
	mov	rdx,[rbp-40h]
	mov	r8,rsi
	mov	rcx,r12
	call	qword ptr [rax+60h]
	cmp	rsi,rax
	setnz	r13b
	jmp	439BF9h

l0000000000439CA2:
	mov	ecx,90h
	call	475590h
	lea	rdx,[0000000000497350]                                 ; [rip+0005D69D]
	mov	dword ptr [rax+8h],0h
	mov	qword ptr [rax+10h],+0h
	mov	qword ptr [rax+18h],+0h
	mov	byte ptr [rax+20h],0h
	mov	rcx,rax
	mov	[rax],rdx
	lea	rdx,[rsi+0D0h]
	mov	qword ptr [rax+28h],+0h
	mov	qword ptr [rax+30h],+0h
	mov	qword ptr [rax+38h],+0h
	mov	qword ptr [rax+40h],+0h
	mov	byte ptr [rax+48h],0h
	mov	byte ptr [rax+49h],0h
	mov	byte ptr [rax+88h],0h
	mov	[rbp-48h],rax
	call	463E50h
	mov	rcx,[rsi+0D0h]
	mov	r8,[rbp-38h]
	mov	rdx,[rbp-48h]
	call	469430h
	mov	rax,[rbp-40h]
	mov	rax,[rax]
	jmp	439B32h

l0000000000439D33:
	mov	r13d,1h
	jmp	439BF9h
0000000000439D3E                                           48 89               H.
0000000000439D40 C1 E8 FA BA 03 00 48 8B 4D B8 48 8B 01 FF 50 08 ......H.M.H...P.
0000000000439D50 E8 0B C3 03 00 48 89 C1 E8 E3 BA 03 00 EB F1 48 .....H.........H
0000000000439D60 89 C3 E8 09 BD 03 00 48 89 D9 E8 41 78 FD FF 90 .......H...Ax...

;; fn0000000000439D70: 0000000000439D70
fn0000000000439D70 proc
	push	rbx
	sub	rsp,50h
	movsx	eax,byte ptr [rsp+80h]
	movsd	xmm0,double ptr [rsp+88h]
	mov	rbx,rcx
	movdqu	xmm1,[r8]
	lea	r8,[rsp+40h]
	mov	dword ptr [rsp+28h],0h
	movsd	double ptr [rsp+30h],xmm0
	mov	[rsp+20h],eax
	movaps	[rsp+40h],xmm1
	call	438F60h
	mov	rax,rbx
	add	rsp,50h
	pop	rbx
	ret
0000000000439DB8                         90 90 90 90 90 90 90 90         ........

;; fn0000000000439DC0: 0000000000439DC0
fn0000000000439DC0 proc
	push	rbx
	sub	rsp,60h
	mov	rax,[rsp+98h]
	movdqu	xmm1,[r8]
	lea	r8,[rsp+50h]
	mov	rbx,rcx
	fld	tword ptr [rax]
	lea	rax,[rsp+40h]
	mov	dword ptr [rsp+28h],4Ch
	mov	[rsp+30h],rax
	movsx	eax,byte ptr [rsp+90h]
	mov	[rsp+20h],eax
	movaps	[rsp+50h],xmm1
	fstp	tword ptr [rsp+40h]
	call	4392F0h
	mov	rax,rbx
	add	rsp,60h
	pop	rbx
	ret
0000000000439E11    90 90 90 90 90 90 90 90 90 90 90 90 90 90 90  ...............

;; fn0000000000439E20: 0000000000439E20
fn0000000000439E20 proc
	push	rbx
	sub	rsp,40h
	mov	eax,[rsp+78h]
	movdqu	xmm1,[r8]
	lea	r8,[rsp+30h]
	mov	rbx,rcx
	mov	[rsp+28h],eax
	movsx	eax,byte ptr [rsp+70h]
	movaps	[rsp+30h],xmm1
	mov	[rsp+20h],eax
	call	4382A0h
	mov	rax,rbx
	add	rsp,40h
	pop	rbx
	ret
0000000000439E56                   90 90 90 90 90 90 90 90 90 90       ..........

;; fn0000000000439E60: 0000000000439E60
fn0000000000439E60 proc
	push	rbx
	sub	rsp,40h
	mov	eax,[rsp+78h]
	movdqu	xmm1,[r8]
	lea	r8,[rsp+30h]
	mov	rbx,rcx
	mov	[rsp+28h],eax
	movsx	eax,byte ptr [rsp+70h]
	movaps	[rsp+30h],xmm1
	mov	[rsp+20h],eax
	call	4385D0h
	mov	rax,rbx
	add	rsp,40h
	pop	rbx
	ret
0000000000439E96                   90 90 90 90 90 90 90 90 90 90       ..........

;; fn0000000000439EA0: 0000000000439EA0
fn0000000000439EA0 proc
	push	rbx
	sub	rsp,40h
	mov	rax,[rsp+78h]
	movdqu	xmm1,[r8]
	lea	r8,[rsp+30h]
	mov	rbx,rcx
	mov	[rsp+28h],rax
	movsx	eax,byte ptr [rsp+70h]
	movaps	[rsp+30h],xmm1
	mov	[rsp+20h],eax
	call	4388A0h
	mov	rax,rbx
	add	rsp,40h
	pop	rbx
	ret
0000000000439ED8                         90 90 90 90 90 90 90 90         ........

;; fn0000000000439EE0: 0000000000439EE0
fn0000000000439EE0 proc
	push	rbx
	sub	rsp,40h
	mov	rax,[rsp+78h]
	movdqu	xmm1,[r8]
	lea	r8,[rsp+30h]
	mov	rbx,rcx
	mov	[rsp+28h],rax
	movsx	eax,byte ptr [rsp+70h]
	movaps	[rsp+30h],xmm1
	mov	[rsp+20h],eax
	call	438BD0h
	mov	rax,rbx
	add	rsp,40h
	pop	rbx
	ret
0000000000439F18                         90 90 90 90 90 90 90 90         ........

;; fn0000000000439F20: 0000000000439F20
fn0000000000439F20 proc
	push	rsi
	push	rbx
	sub	rsp,38h
	mov	rbx,[rsp+88h]
	mov	rax,[rsp+80h]
	mov	rcx,rdx
	movzx	edx,r9w
	mov	rsi,[rsp+78h]
	movsxd	r9,dword ptr [rbx]
	mov	[rsp+20h],rax
	lea	r9,[rax+r9*2]
	mov	[rsp+28h],r9
	mov	r9,r8
	mov	r8,rcx
	mov	rcx,rsi
	call	46F950h
	sub	rax,rsi
	sar	rax,1h
	mov	[rbx],eax
	add	rsp,38h
	pop	rbx
	pop	rsi
	ret

;; fn0000000000439F70: 0000000000439F70
;;   Called from:
;;     000000000043B640 (in fn000000000043B600)
;;     000000000043B8B7 (in fn000000000043B850)
;;     000000000043BC48 (in fn000000000043BC20)
fn0000000000439F70 proc
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,58h
	lea	rbp,[rsp+80h]
	mov	eax,[rbp+40h]
	mov	rdi,[r8]
	mov	rsi,rcx
	lea	rcx,[000000000048B590]                                 ; [rip+000515F8]
	mov	rbx,r9
	mov	r12,[r8+8h]
	mov	[rbp-3Ch],eax
	call	42BB80h
	mov	r14,rax
	mov	rax,[rbx+0D0h]
	mov	rax,[rax+18h]
	lea	r13,[rax+r14*8]
	mov	r15,[r13+0h]
	test	r15,r15
	jz	43A1D5h

l0000000000439FC6:
	mov	r14d,[rbx+18h]
	lea	rax,[r15+4Ch]
	sub	rsp,40h
	mov	ecx,[rbp+48h]
	mov	edx,[rbp+48h]
	lea	r10,[rsp+30h]
	mov	r8,rax
	mov	[rbp-48h],rax
	mov	eax,r14d
	mov	r9d,r14d
	mov	[rbp-38h],r10
	and	eax,4Ah
	cmp	eax,8h
	mov	[rbp-40h],eax
	setnz	r13b
	cmp	eax,40h
	setnz	al
	and	r13d,eax
	test	ecx,ecx
	lea	rcx,[rsp+58h]
	setg	al
	neg	edx
	cmp	r13b,al
	cmovbe	edx,[rbp+48h]

l000000000043A017:
	movzx	eax,r13b
	mov	[rsp+20h],eax
	call	46F5D0h
	movsxd	rcx,eax
	mov	eax,14h
	mov	r10,[rbp-38h]
	sub	eax,ecx
	cmp	byte ptr [r15+20h],0h
	cdqe
	lea	r9,[r10+rax*2]
	jnz	43A105h

l000000000043A043:
	test	r13b,r13b
	jz	43A166h

l000000000043A04C:
	mov	edx,[rbp+48h]
	test	edx,edx
	js	43A1C0h

l000000000043A057:
	and	r14d,800h
	jnz	43A0F0h

l000000000043A064:
	mov	r14,[rbx+10h]
	movsxd	r13,ecx
	cmp	r14,r13
	jle	43A0A5h

l000000000043A070:
	lea	rax,[r14+r14+1Eh]
	and	rax,0F0h
	call	4116F0h
	movzx	edx,word ptr [rbp-3Ch]
	sub	rsp,rax
	mov	rcx,rbx
	lea	r15,[rsp+30h]
	mov	[rsp+28h],r13
	mov	[rsp+20h],r14
	movsxd	r13,r14d
	mov	r8,r15
	call	468AD0h
	mov	r9,r15

l000000000043A0A5:
	test	r12b,r12b
	mov	qword ptr [rbx+10h],+0h
	mov	ebx,r12d
	jnz	43A0CFh

l000000000043A0B5:
	mov	rax,[rdi]
	mov	r8,r13
	mov	rdx,r9
	mov	rcx,rdi
	call	qword ptr [rax+60h]
	cmp	rax,r13
	mov	eax,1h
	cmovnz	ebx,eax

l000000000043A0CF:
	mov	rax,rsi
	mov	[rsi],rdi
	mov	[rsi+8h],bl
	lea	rsp,[rbp-28h]
	pop	rbx
	pop	rsi
	pop	rdi
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret
000000000043A0E9                            0F 1F 80 00 00 00 00          .......

l000000000043A0F0:
	movzx	eax,word ptr [r15+4Eh]
	add	ecx,1h
	sub	r9,2h
	mov	[r9],ax
	jmp	43A064h

l000000000043A105:
	lea	eax,[rcx+1h]
	cdqe
	lea	rax,[001Eh+rax*4]
	and	rax,0F0h
	call	4116F0h
	mov	r11,[r15+18h]
	movzx	edx,word ptr [r15+4Ah]
	sub	rsp,rax
	mov	r8,[r15+10h]
	lea	rax,[r9+rcx*2]
	lea	r10,[rsp+34h]
	mov	[rsp+20h],r9
	mov	[rsp+28h],rax
	mov	r9,r11
	mov	rcx,r10
	mov	[rbp-38h],r10
	call	46F950h
	mov	r10,[rbp-38h]
	sub	rax,r10
	mov	r9,r10
	mov	rcx,rax
	shr	rcx,1h
	test	r13b,r13b
	jnz	43A04Ch

l000000000043A166:
	test	r14d,200h
	jz	43A064h

l000000000043A173:
	mov	eax,[rbp+48h]
	test	eax,eax
	jz	43A064h

l000000000043A17E:
	cmp	dword ptr [rbp-40h],40h
	jz	43A26Ah

l000000000043A188:
	xor	eax,eax
	mov	rdx,[rbp-48h]
	and	r14d,4000h
	setnz	al
	add	ecx,2h
	sub	r9,4h
	add	rax,2h
	movzx	eax,word ptr [rdx+rax*2]
	mov	[r9+2h],ax
	movzx	eax,word ptr [r15+54h]
	mov	[r9],ax
	jmp	43A064h
000000000043A1BA                               66 0F 1F 44 00 00           f..D..

l000000000043A1C0:
	movzx	eax,word ptr [r15+4Ch]
	add	ecx,1h
	sub	r9,2h
	mov	[r9],ax
	jmp	43A064h

l000000000043A1D5:
	mov	ecx,0D0h
	call	475590h
	mov	r15,rax
	mov	dword ptr [rax+8h],0h
	lea	rax,[0000000000497370]                                 ; [rip+0005D180]
	xor	r8d,r8d
	xor	r9d,r9d
	lea	rdx,[rbx+0D0h]
	mov	[r15],rax
	mov	qword ptr [r15+10h],+0h
	mov	rcx,r15
	mov	qword ptr [r15+18h],+0h
	mov	byte ptr [r15+20h],0h
	mov	qword ptr [r15+28h],+0h
	mov	qword ptr [r15+30h],+0h
	mov	qword ptr [r15+38h],+0h
	mov	qword ptr [r15+40h],+0h
	mov	[r15+48h],r8w
	mov	[r15+4Ah],r9w
	mov	byte ptr [r15+0C8h],0h
	call	4645D0h
	mov	rcx,[rbx+0D0h]
	mov	rdx,r15
	mov	r8,r14
	call	469430h
	mov	r15,[r13+0h]
	jmp	439FC6h

l000000000043A26A:
	movzx	eax,word ptr [r15+54h]
	add	ecx,1h
	sub	r9,2h
	mov	[r9],ax
	jmp	43A064h
000000000043A27F                                              48                H
000000000043A280 89 C1 E8 B9 B5 03 00 49 8B 07 4C 89 F9 FF 50 08 .......I..L...P.
000000000043A290 E8 CB BD 03 00 48 89 C1 E8 A3 B5 03 00 EB F1 48 .....H.........H
000000000043A2A0 89 C3 E8 C9 B7 03 00 48 89 D9 E8 01 73 FD FF 90 .......H....s...

;; fn000000000043A2B0: 000000000043A2B0
;;   Called from:
;;     000000000043B6A0 (in fn000000000043B660)
;;     000000000043BC88 (in fn000000000043BC60)
fn000000000043A2B0 proc
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,58h
	lea	rbp,[rsp+80h]
	mov	eax,[rbp+40h]
	mov	r13,[r8]
	mov	r12,rcx
	lea	rcx,[000000000048B590]                                 ; [rip+000512B8]
	mov	rbx,r9
	mov	r15,[r8+8h]
	mov	[rbp-3Ch],eax
	call	42BB80h
	mov	r14,rax
	mov	rax,[rbx+0D0h]
	mov	rax,[rax+18h]
	lea	rdi,[rax+r14*8]
	mov	rsi,[rdi]
	test	rsi,rsi
	jz	43A4B5h

l000000000043A305:
	mov	r14d,[rbx+18h]
	lea	rax,[rsi+4Ch]
	sub	rsp,40h
	mov	edx,[rbp+48h]
	lea	r11,[rsp+30h]
	lea	rcx,[rsp+58h]
	mov	r8,rax
	mov	[rbp-48h],rax
	mov	eax,r14d
	mov	r9d,r14d
	mov	[rbp-38h],r11
	and	eax,4Ah
	cmp	eax,8h
	mov	[rbp-40h],eax
	setnz	dil
	cmp	eax,40h
	setnz	al
	and	edi,eax
	movzx	eax,dil
	mov	[rsp+20h],eax
	call	46F5D0h
	mov	edx,14h
	movsxd	rcx,eax
	mov	r11,[rbp-38h]
	sub	edx,ecx
	cmp	byte ptr [rsi+20h],0h
	movsxd	rdx,edx
	lea	r9,[r11+rdx*2]
	jnz	43A402h

l000000000043A370:
	test	dil,dil
	jz	43A462h

l000000000043A379:
	mov	rdi,[rbx+10h]
	movsxd	rsi,ecx
	cmp	rdi,rsi
	jle	43A3BAh

l000000000043A385:
	lea	rax,[rdi+rdi+1Eh]
	and	rax,0F0h
	call	4116F0h
	movzx	edx,word ptr [rbp-3Ch]
	sub	rsp,rax
	mov	rcx,rbx
	lea	r14,[rsp+30h]
	mov	[rsp+28h],rsi
	mov	[rsp+20h],rdi
	movsxd	rsi,edi
	mov	r8,r14
	call	468AD0h
	mov	r9,r14

l000000000043A3BA:
	test	r15b,r15b
	mov	qword ptr [rbx+10h],+0h
	mov	ebx,r15d
	jnz	43A3E5h

l000000000043A3CA:
	mov	rax,[r13+0h]
	mov	r8,rsi
	mov	rdx,r9
	mov	rcx,r13
	call	qword ptr [rax+60h]
	cmp	rsi,rax
	mov	eax,1h
	cmovnz	ebx,eax

l000000000043A3E5:
	mov	rax,r12
	mov	[r12],r13
	mov	[r12+8h],bl
	lea	rsp,[rbp-28h]
	pop	rbx
	pop	rsi
	pop	rdi
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret

l000000000043A402:
	lea	eax,[rcx+1h]
	cdqe
	lea	rax,[001Eh+rax*4]
	and	rax,0F0h
	call	4116F0h
	movzx	edx,word ptr [rsi+4Ah]
	mov	r8,[rsi+10h]
	sub	rsp,rax
	mov	rax,[rsi+18h]
	lea	rcx,[r9+rcx*2]
	lea	r11,[rsp+34h]
	mov	[rsp+20h],r9
	mov	[rsp+28h],rcx
	mov	r9,rax
	mov	rcx,r11
	mov	[rbp-38h],r11
	call	46F950h
	mov	r11,[rbp-38h]
	sub	rax,r11
	mov	r9,r11
	mov	rcx,rax
	shr	rcx,1h
	test	dil,dil
	jnz	43A379h

l000000000043A462:
	mov	eax,[rbp+48h]
	test	eax,eax
	jz	43A379h

l000000000043A46D:
	test	r14d,200h
	jz	43A379h

l000000000043A47A:
	cmp	dword ptr [rbp-40h],40h
	jz	43A543h

l000000000043A484:
	xor	eax,eax
	mov	rdi,[rbp-48h]
	and	r14d,4000h
	setnz	al
	add	ecx,2h
	sub	r9,4h
	add	rax,2h
	movzx	eax,word ptr [rdi+rax*2]
	mov	[r9+2h],ax
	movzx	eax,word ptr [rsi+54h]
	mov	[r9],ax
	jmp	43A379h

l000000000043A4B5:
	mov	ecx,0D0h
	call	475590h
	mov	rsi,rax
	mov	dword ptr [rax+8h],0h
	xor	edx,edx
	lea	rax,[0000000000497370]                                 ; [rip+0005CE9E]
	xor	ecx,ecx
	mov	[rsi+48h],dx
	lea	rdx,[rbx+0D0h]
	mov	[rsi+4Ah],cx
	mov	qword ptr [rsi+10h],+0h
	mov	[rsi],rax
	mov	qword ptr [rsi+18h],+0h
	mov	rcx,rsi
	mov	byte ptr [rsi+20h],0h
	mov	qword ptr [rsi+28h],+0h
	mov	qword ptr [rsi+30h],+0h
	mov	qword ptr [rsi+38h],+0h
	mov	qword ptr [rsi+40h],+0h
	mov	byte ptr [rsi+0C8h],0h
	call	4645D0h
	mov	rcx,[rbx+0D0h]
	mov	rdx,rsi
	mov	r8,r14
	call	469430h
	mov	rsi,[rdi]
	jmp	43A305h

l000000000043A543:
	movzx	eax,word ptr [rsi+54h]
	add	ecx,1h
	sub	r9,2h
	mov	[r9],ax
	jmp	43A379h
000000000043A557                      48 89 C1 E8 E1 B2 03 00 48        H.......H
000000000043A560 8B 06 48 89 F1 FF 50 08 E8 F3 BA 03 00 48 89 C1 ..H...P......H..
000000000043A570 E8 CB B2 03 00 EB F1 48 89 C3 E8 F1 B4 03 00 48 .......H.......H
000000000043A580 89 D9 E8 29 70 FD FF 90 90 90 90 90 90 90 90 90 ...)p...........

;; fn000000000043A590: 000000000043A590
;;   Called from:
;;     000000000043B700 (in fn000000000043B6C0)
;;     000000000043BCCA (in fn000000000043BCA0)
fn000000000043A590 proc
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,58h
	lea	rbp,[rsp+80h]
	mov	eax,[rbp+40h]
	mov	rdi,[r8]
	mov	rsi,rcx
	lea	rcx,[000000000048B590]                                 ; [rip+00050FD8]
	mov	rbx,r9
	mov	r12,[r8+8h]
	mov	[rbp-3Ch],eax
	call	42BB80h
	mov	r14,rax
	mov	rax,[rbx+0D0h]
	mov	rax,[rax+18h]
	lea	r13,[rax+r14*8]
	mov	r15,[r13+0h]
	test	r15,r15
	jz	43A7F5h

l000000000043A5E6:
	mov	r14d,[rbx+18h]
	lea	rax,[r15+4Ch]
	sub	rsp,60h
	mov	rdx,[rbp+48h]
	lea	r10,[rsp+30h]
	lea	rcx,[rsp+80h]
	mov	r8,rax
	mov	[rbp-48h],rax
	mov	eax,r14d
	mov	r9d,r14d
	mov	[rbp-38h],r10
	and	eax,4Ah
	cmp	eax,8h
	mov	[rbp-40h],eax
	setnz	r13b
	cmp	eax,40h
	setnz	al
	and	r13d,eax
	cmp	qword ptr [rbp+48h],0h
	setg	al
	neg	rdx
	cmp	r13b,al
	cmovbe	rdx,[rbp+48h]

l000000000043A63D:
	movzx	eax,r13b
	mov	[rsp+20h],eax
	call	46F690h
	movsxd	rcx,eax
	mov	eax,28h
	mov	r10,[rbp-38h]
	sub	eax,ecx
	cmp	byte ptr [r15+20h],0h
	cdqe
	lea	r9,[r10+rax*2]
	jnz	43A725h

l000000000043A669:
	test	r13b,r13b
	jz	43A786h

l000000000043A672:
	cmp	qword ptr [rbp+48h],0h
	js	43A7E0h

l000000000043A67D:
	and	r14d,800h
	jnz	43A710h

l000000000043A68A:
	mov	r14,[rbx+10h]
	movsxd	r13,ecx
	cmp	r14,r13
	jle	43A6CBh

l000000000043A696:
	lea	rax,[r14+r14+1Eh]
	and	rax,0F0h
	call	4116F0h
	movzx	edx,word ptr [rbp-3Ch]
	sub	rsp,rax
	mov	rcx,rbx
	lea	r15,[rsp+30h]
	mov	[rsp+28h],r13
	mov	[rsp+20h],r14
	movsxd	r13,r14d
	mov	r8,r15
	call	468AD0h
	mov	r9,r15

l000000000043A6CB:
	test	r12b,r12b
	mov	qword ptr [rbx+10h],+0h
	mov	ebx,r12d
	jnz	43A6F5h

l000000000043A6DB:
	mov	rax,[rdi]
	mov	r8,r13
	mov	rdx,r9
	mov	rcx,rdi
	call	qword ptr [rax+60h]
	cmp	rax,r13
	mov	eax,1h
	cmovnz	ebx,eax

l000000000043A6F5:
	mov	rax,rsi
	mov	[rsi],rdi
	mov	[rsi+8h],bl
	lea	rsp,[rbp-28h]
	pop	rbx
	pop	rsi
	pop	rdi
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret
000000000043A70F                                              90                .

l000000000043A710:
	movzx	eax,word ptr [r15+4Eh]
	add	ecx,1h
	sub	r9,2h
	mov	[r9],ax
	jmp	43A68Ah

l000000000043A725:
	lea	eax,[rcx+1h]
	cdqe
	lea	rax,[001Eh+rax*4]
	and	rax,0F0h
	call	4116F0h
	mov	r11,[r15+18h]
	movzx	edx,word ptr [r15+4Ah]
	sub	rsp,rax
	mov	r8,[r15+10h]
	lea	rax,[r9+rcx*2]
	lea	r10,[rsp+34h]
	mov	[rsp+20h],r9
	mov	[rsp+28h],rax
	mov	r9,r11
	mov	rcx,r10
	mov	[rbp-38h],r10
	call	46F950h
	mov	r10,[rbp-38h]
	sub	rax,r10
	mov	r9,r10
	mov	rcx,rax
	shr	rcx,1h
	test	r13b,r13b
	jnz	43A672h

l000000000043A786:
	test	r14d,200h
	jz	43A68Ah

l000000000043A793:
	cmp	qword ptr [rbp+48h],0h
	jz	43A68Ah

l000000000043A79E:
	cmp	dword ptr [rbp-40h],40h
	jz	43A888h

l000000000043A7A8:
	xor	eax,eax
	mov	rdx,[rbp-48h]
	and	r14d,4000h
	setnz	al
	add	ecx,2h
	sub	r9,4h
	add	rax,2h
	movzx	eax,word ptr [rdx+rax*2]
	mov	[r9+2h],ax
	movzx	eax,word ptr [r15+54h]
	mov	[r9],ax
	jmp	43A68Ah
000000000043A7DA                               66 0F 1F 44 00 00           f..D..

l000000000043A7E0:
	movzx	eax,word ptr [r15+4Ch]
	add	ecx,1h
	sub	r9,2h
	mov	[r9],ax
	jmp	43A68Ah

l000000000043A7F5:
	mov	ecx,0D0h
	call	475590h
	mov	r15,rax
	mov	dword ptr [rax+8h],0h
	lea	rax,[0000000000497370]                                 ; [rip+0005CB60]
	xor	edx,edx
	mov	qword ptr [r15+10h],+0h
	mov	qword ptr [r15+18h],+0h
	mov	[r15],rax
	mov	[r15+4Ah],dx
	xor	eax,eax
	lea	rdx,[rbx+0D0h]
	mov	byte ptr [r15+20h],0h
	mov	qword ptr [r15+28h],+0h
	mov	qword ptr [r15+30h],+0h
	mov	qword ptr [r15+38h],+0h
	mov	rcx,r15
	mov	qword ptr [r15+40h],+0h
	mov	[r15+48h],ax
	mov	byte ptr [r15+0C8h],0h
	call	4645D0h
	mov	rcx,[rbx+0D0h]
	mov	rdx,r15
	mov	r8,r14
	call	469430h
	mov	r15,[r13+0h]
	jmp	43A5E6h

l000000000043A888:
	movzx	eax,word ptr [r15+54h]
	add	ecx,1h
	sub	r9,2h
	mov	[r9],ax
	jmp	43A68Ah
000000000043A89D                                        48 89 C1              H..
000000000043A8A0 E8 9B AF 03 00 49 8B 07 4C 89 F9 FF 50 08 E8 AD .....I..L...P...
000000000043A8B0 B7 03 00 48 89 C1 E8 85 AF 03 00 EB F1 48 89 C3 ...H.........H..
000000000043A8C0 E8 AB B1 03 00 48 89 D9 E8 E3 6C FD FF 90 90 90 .....H....l.....

;; fn000000000043A8D0: 000000000043A8D0
;;   Called from:
;;     000000000043B760 (in fn000000000043B720)
;;     000000000043B81A (in fn000000000043B7C0)
;;     000000000043BD0A (in fn000000000043BCE0)
fn000000000043A8D0 proc
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,58h
	lea	rbp,[rsp+80h]
	mov	eax,[rbp+40h]
	mov	r13,[r8]
	mov	r12,rcx
	lea	rcx,[000000000048B590]                                 ; [rip+00050C98]
	mov	rbx,r9
	mov	r15,[r8+8h]
	mov	[rbp-3Ch],eax
	call	42BB80h
	mov	r14,rax
	mov	rax,[rbx+0D0h]
	mov	rax,[rax+18h]
	lea	rdi,[rax+r14*8]
	mov	rsi,[rdi]
	test	rsi,rsi
	jz	43AAE3h

l000000000043A925:
	mov	r14d,[rbx+18h]
	lea	rax,[rsi+4Ch]
	sub	rsp,60h
	mov	rdx,[rbp+48h]
	lea	r11,[rsp+30h]
	lea	rcx,[rsp+80h]
	mov	r8,rax
	mov	[rbp-48h],rax
	mov	eax,r14d
	mov	r9d,r14d
	mov	[rbp-38h],r11
	and	eax,4Ah
	cmp	eax,8h
	mov	[rbp-40h],eax
	setnz	dil
	cmp	eax,40h
	setnz	al
	and	edi,eax
	movzx	eax,dil
	mov	[rsp+20h],eax
	call	46F690h
	mov	edx,28h
	movsxd	rcx,eax
	mov	r11,[rbp-38h]
	sub	edx,ecx
	cmp	byte ptr [rsi+20h],0h
	movsxd	rdx,edx
	lea	r9,[r11+rdx*2]
	jnz	43AA30h

l000000000043A994:
	test	dil,dil
	jz	43AA90h

l000000000043A99D:
	mov	rdi,[rbx+10h]
	movsxd	rsi,ecx
	cmp	rdi,rsi
	jle	43A9DEh

l000000000043A9A9:
	lea	rax,[rdi+rdi+1Eh]
	and	rax,0F0h
	call	4116F0h
	movzx	edx,word ptr [rbp-3Ch]
	sub	rsp,rax
	mov	rcx,rbx
	lea	r14,[rsp+30h]
	mov	[rsp+28h],rsi
	mov	[rsp+20h],rdi
	movsxd	rsi,edi
	mov	r8,r14
	call	468AD0h
	mov	r9,r14

l000000000043A9DE:
	test	r15b,r15b
	mov	qword ptr [rbx+10h],+0h
	mov	ebx,r15d
	jnz	43AA09h

l000000000043A9EE:
	mov	rax,[r13+0h]
	mov	r8,rsi
	mov	rdx,r9
	mov	rcx,r13
	call	qword ptr [rax+60h]
	cmp	rsi,rax
	mov	eax,1h
	cmovnz	ebx,eax

l000000000043AA09:
	mov	rax,r12
	mov	[r12],r13
	mov	[r12+8h],bl
	lea	rsp,[rbp-28h]
	pop	rbx
	pop	rsi
	pop	rdi
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret
000000000043AA26                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l000000000043AA30:
	lea	eax,[rcx+1h]
	cdqe
	lea	rax,[001Eh+rax*4]
	and	rax,0F0h
	call	4116F0h
	movzx	edx,word ptr [rsi+4Ah]
	mov	r8,[rsi+10h]
	sub	rsp,rax
	mov	rax,[rsi+18h]
	lea	rcx,[r9+rcx*2]
	lea	r11,[rsp+34h]
	mov	[rsp+20h],r9
	mov	[rsp+28h],rcx
	mov	r9,rax
	mov	rcx,r11
	mov	[rbp-38h],r11
	call	46F950h
	mov	r11,[rbp-38h]
	sub	rax,r11
	mov	r9,r11
	mov	rcx,rax
	shr	rcx,1h
	test	dil,dil
	jnz	43A99Dh

l000000000043AA90:
	cmp	qword ptr [rbp+48h],0h
	jz	43A99Dh

l000000000043AA9B:
	test	r14d,200h
	jz	43A99Dh

l000000000043AAA8:
	cmp	dword ptr [rbp-40h],40h
	jz	43AB71h

l000000000043AAB2:
	xor	eax,eax
	mov	rdi,[rbp-48h]
	and	r14d,4000h
	setnz	al
	add	ecx,2h
	sub	r9,4h
	add	rax,2h
	movzx	eax,word ptr [rdi+rax*2]
	mov	[r9+2h],ax
	movzx	eax,word ptr [rsi+54h]
	mov	[r9],ax
	jmp	43A99Dh

l000000000043AAE3:
	mov	ecx,0D0h
	call	475590h
	mov	rsi,rax
	mov	dword ptr [rax+8h],0h
	lea	rax,[0000000000497370]                                 ; [rip+0005C872]
	xor	edx,edx
	mov	qword ptr [rsi+10h],+0h
	mov	qword ptr [rsi+18h],+0h
	mov	[rsi],rax
	mov	[rsi+4Ah],dx
	xor	eax,eax
	lea	rdx,[rbx+0D0h]
	mov	byte ptr [rsi+20h],0h
	mov	qword ptr [rsi+28h],+0h
	mov	qword ptr [rsi+30h],+0h
	mov	qword ptr [rsi+38h],+0h
	mov	rcx,rsi
	mov	qword ptr [rsi+40h],+0h
	mov	[rsi+48h],ax
	mov	byte ptr [rsi+0C8h],0h
	call	4645D0h
	mov	rcx,[rbx+0D0h]
	mov	rdx,rsi
	mov	r8,r14
	call	469430h
	mov	rsi,[rdi]
	jmp	43A925h

l000000000043AB71:
	movzx	eax,word ptr [rsi+54h]
	add	ecx,1h
	sub	r9,2h
	mov	[r9],ax
	jmp	43A99Dh
000000000043AB85                48 89 C1 E8 B3 AC 03 00 48 8B 06      H.......H..
000000000043AB90 48 89 F1 FF 50 08 E8 C5 B4 03 00 48 89 C1 E8 9D H...P......H....
000000000043ABA0 AC 03 00 EB F1 48 89 C3 E8 C3 AE 03 00 48 89 D9 .....H.......H..
000000000043ABB0 E8 FB 69 FD FF 90 90 90 90 90 90 90 90 90 90 90 ..i.............

;; fn000000000043ABC0: 000000000043ABC0
;;   Called from:
;;     000000000043AF14 (in fn000000000043AC90)
;;     000000000043B307 (in fn000000000043B070)
fn000000000043ABC0 proc
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,38h
	mov	rbp,[rsp+80h]
	mov	rbx,[rsp+88h]
	mov	rcx,[rsp+90h]
	mov	rdi,[rsp+98h]
	test	rbp,rbp
	jz	43AC50h

l000000000043ABED:
	mov	rsi,rbp
	movzx	eax,r9w
	mov	[rsp+20h],rcx
	sub	rsi,rcx
	sar	rsi,1h
	movsxd	r9,esi
	lea	r9,[rcx+r9*2]
	mov	rcx,rbx
	mov	[rsp+28h],r9
	mov	r9,r8
	mov	r8,rdx
	mov	edx,eax
	call	46F950h
	mov	r8d,[rdi]
	mov	rdx,rax
	mov	rcx,rax
	sub	rdx,rbx
	mov	rbx,rdx
	mov	rdx,rbp
	sub	r8d,esi
	sar	rbx,1h
	movsxd	r8,r8d
	add	r8,r8
	call	41BCC0h
	mov	eax,[rdi]
	sub	eax,esi
	add	eax,ebx
	mov	[rdi],eax
	add	rsp,38h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
000000000043AC4F                                              90                .

l000000000043AC50:
	movzx	eax,r9w
	movsxd	r9,dword ptr [rdi]
	mov	[rsp+20h],rcx
	lea	r9,[rcx+r9*2]
	mov	rcx,rbx
	mov	[rsp+28h],r9
	mov	r9,r8
	mov	r8,rdx
	mov	edx,eax
	call	46F950h
	sub	rax,rbx
	shr	rax,1h
	mov	[rdi],eax
	add	rsp,38h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
000000000043AC86                   90 90 90 90 90 90 90 90 90 90       ..........

;; fn000000000043AC90: 000000000043AC90
;;   Called from:
;;     000000000043B530 (in fn000000000043B4E0)
;;     000000000043BBAA (in fn000000000043BB70)
fn000000000043AC90 proc
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,+98h
	lea	rbp,[rsp+80h]
	movaps	[rbp+0h],xmm6
	mov	rbx,r9
	mov	rax,[r8+8h]
	mov	[rbp+60h],rcx
	lea	rcx,[000000000048B590]                                 ; [rip+000508CF]
	mov	[rbp+68h],rdx
	mov	rdi,[r8]
	mov	r14d,[rbp+88h]
	movsd	xmm6,double ptr [rbp+90h]
	mov	[rbp-30h],rax
	mov	eax,[rbp+80h]
	mov	[rbp-34h],eax
	lea	rax,[r9+0D0h]
	mov	[rbp-28h],rax
	call	42BB80h
	mov	r13,rax
	mov	rax,[rbx+0D0h]
	mov	rax,[rax+18h]
	lea	r12,[rax+r13*8]
	mov	rsi,[r12]
	test	rsi,rsi
	jz	43AFA1h

l000000000043AD13:
	mov	rax,[rbx+8h]
	lea	r13,[rbp-10h]
	movsx	r8d,r14b
	mov	rcx,rbx
	mov	r12d,6h
	lea	r15,[rbp-18h]
	mov	rdx,r13
	test	rax,rax
	cmovns	r12,rax

l000000000043AD36:
	call	452660h
	sub	rsp,40h
	lea	r14,[rsp+40h]
	call	46AC50h
	movsd	double ptr [rsp+28h],xmm6
	mov	[rsp+20h],r12
	mov	r9,r13
	mov	r8d,2Dh
	mov	rdx,r14
	mov	rcx,r15
	mov	[rbp-18h],rax
	call	46FF90h
	cmp	eax,2Ch
	mov	[rbp-1Ch],eax
	jg	43AF30h

l000000000043AD78:
	mov	rcx,[rbp-28h]
	call	473020h
	movsxd	rdx,dword ptr [rbp-1Ch]
	mov	rcx,rax
	lea	rax,[rdx+rdx+1Eh]
	and	rax,0F0h
	call	4116F0h
	sub	rsp,rax
	mov	rax,[rcx]
	lea	r8,[r14+rdx]
	lea	r13,[rsp+40h]
	mov	rdx,r14
	mov	r9,r13
	mov	r15,r13
	call	qword ptr [rax+58h]
	movsxd	r12,dword ptr [rbp-1Ch]
	mov	edx,2Eh
	mov	rcx,r14
	mov	r8,r12
	mov	[rbp-28h],r12d
	call	41BD98h
	test	rax,rax
	mov	r9d,[rbp-28h]
	jz	43AE80h

l000000000043ADD6:
	sub	rax,r14
	cmp	byte ptr [rsi+20h],0h
	lea	rcx,[r13+rax*2+0h]
	movzx	eax,word ptr [rsi+48h]
	mov	[rcx],ax
	jnz	43AEB8h

l000000000043ADEF:
	mov	r13,[rbx+10h]
	cmp	r13,r12
	jle	43AE34h

l000000000043ADF8:
	lea	rax,[r13+r13+1Eh]
	and	rax,0F0h
	call	4116F0h
	movzx	edx,word ptr [rbp-34h]
	sub	rsp,rax
	mov	r9,r15
	mov	rcx,rbx
	lea	r14,[rsp+40h]
	mov	[rsp+28h],r12
	mov	[rsp+20h],r13
	movsxd	r12,r13d
	mov	r8,r14
	mov	r15,r14
	call	468AD0h
	mov	[rbp-1Ch],r13d

l000000000043AE34:
	mov	rax,[rbp-30h]
	mov	qword ptr [rbx+10h],+0h
	test	al,al
	mov	ebx,eax
	jnz	43AE60h

l000000000043AE46:
	mov	rax,[rdi]
	mov	r8,r12
	mov	rdx,r15
	mov	rcx,rdi
	call	qword ptr [rax+60h]
	cmp	r12,rax
	mov	eax,1h
	cmovnz	ebx,eax

l000000000043AE60:
	mov	rax,[rbp+60h]
	mov	[rax],rdi
	mov	[rax+8h],bl
	movaps	xmm6,[rbp+0h]
	lea	rsp,[rbp+18h]
	pop	rbx
	pop	rsi
	pop	rdi
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret
000000000043AE7F                                              90                .

l000000000043AE80:
	cmp	byte ptr [rsi+20h],0h
	jz	43ADEFh

l000000000043AE8A:
	cmp	r9d,2h
	jle	43AEB6h

l000000000043AE90:
	movzx	eax,byte ptr [r14+1h]
	cmp	al,39h
	jg	43ADEFh

l000000000043AE9D:
	movzx	edx,byte ptr [r14+2h]
	sub	edx,30h
	cmp	dl,9h
	ja	43ADEFh

l000000000043AEAE:
	cmp	al,2Fh
	jle	43ADEFh

l000000000043AEB6:
	xor	ecx,ecx

l000000000043AEB8:
	lea	rax,[001Eh]
	and	rax,0F0h
	call	4116F0h
	sub	rsp,rax
	movzx	eax,byte ptr [r14]
	lea	r15,[rsp+40h]
	sub	eax,2Bh
	test	al,0FDh
	jz	43AF80h

l000000000043AEE0:
	xor	r12d,r12d
	xor	eax,eax

l000000000043AEE5:
	movzx	r9d,word ptr [rsi+4Ah]
	mov	r8,[rsi+18h]
	lea	r10,[rbp-1Ch]
	mov	rdx,[rsi+10h]
	mov	[rsp+20h],rcx
	add	r13,rax
	mov	rcx,[rbp+68h]
	add	rax,r15
	mov	[rsp+38h],r10
	mov	[rsp+30h],r13
	mov	[rsp+28h],rax
	call	43ABC0h
	mov	r9d,[rbp-1Ch]
	add	r9d,r12d
	mov	[rbp-1Ch],r9d
	movsxd	r12,r9d
	jmp	43ADEFh
000000000043AF2C                                     0F 1F 40 00             ..@.

l000000000043AF30:
	lea	r8d,[rax+1h]
	movsxd	rax,r8d
	mov	[rbp-38h],r8d
	add	rax,1Eh
	and	rax,0F0h
	call	4116F0h
	sub	rsp,rax
	call	46AC50h
	lea	r14,[rsp+40h]
	mov	r8d,[rbp-38h]
	movsd	double ptr [rsp+28h],xmm6
	mov	[rsp+20h],r12
	mov	r9,r13
	mov	rcx,r15
	mov	rdx,r14
	mov	[rbp-18h],rax
	call	46FF90h
	mov	[rbp-1Ch],eax
	jmp	43AD78h
000000000043AF7E                                           66 90               f.

l000000000043AF80:
	movzx	eax,word ptr [r13+0h]
	sub	r9d,1h
	mov	r12d,1h
	mov	[rbp-1Ch],r9d
	mov	[r15],ax
	mov	eax,2h
	jmp	43AEE5h

l000000000043AFA1:
	mov	ecx,0D0h
	call	475590h
	mov	r15,rax
	mov	dword ptr [rax+8h],0h
	xor	edx,edx
	lea	rax,[0000000000497370]                                 ; [rip+0005C3B2]
	mov	[r15+4Ah],dx
	mov	rdx,[rbp-28h]
	mov	qword ptr [r15+10h],+0h
	mov	qword ptr [r15+18h],+0h
	mov	rcx,r15
	mov	[r15],rax
	xor	eax,eax
	mov	byte ptr [r15+20h],0h
	mov	qword ptr [r15+28h],+0h
	mov	qword ptr [r15+30h],+0h
	mov	qword ptr [r15+38h],+0h
	mov	qword ptr [r15+40h],+0h
	mov	[r15+48h],ax
	mov	byte ptr [r15+0C8h],0h
	call	4645D0h
	mov	rcx,[rbx+0D0h]
	mov	r8,r13
	mov	rdx,r15
	call	469430h
	mov	rsi,[r12]
	jmp	43AD13h
000000000043B031    48 89 C1 E8 07 A8 03 00 E8 22 B0 03 00 48 89  H........"...H.
000000000043B040 C1 E8 FA A7 03 00 49 8B 07 4C 89 F9 FF 50 08 EB ......I..L...P..
000000000043B050 E8 48 89 C3 E8 17 AA 03 00 48 89 D9 E8 4F 65 FD .H.......H...Oe.
000000000043B060 FF 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 ................

;; fn000000000043B070: 000000000043B070
;;   Called from:
;;     000000000043B5B9 (in fn000000000043B560)
;;     000000000043BC03 (in fn000000000043BBC0)
fn000000000043B070 proc
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,+0A8h
	lea	rbp,[rsp+80h]
	mov	rax,[r8+8h]
	mov	rdi,[r8]
	mov	[rbp+70h],rcx
	lea	rcx,[000000000048B590]                                 ; [rip+000504F3]
	mov	rbx,r9
	mov	[rbp+78h],rdx
	mov	r14d,[rbp+98h]
	mov	[rbp-30h],rax
	mov	eax,[rbp+90h]
	mov	[rbp-34h],eax
	mov	rax,[rbp+0A0h]
	fld	tword ptr [rax]
	lea	rax,[r9+0D0h]
	mov	[rbp-28h],rax
	fstp	tword ptr [rbp-20h]
	call	42BB80h
	mov	r13,rax
	mov	rax,[rbx+0D0h]
	mov	rax,[rax+18h]
	lea	r12,[rax+r13*8]
	mov	rsi,[r12]
	test	rsi,rsi
	jz	43B394h

l000000000043B0F3:
	mov	rax,[rbx+8h]
	lea	r13,[rbp+10h]
	movsx	r8d,r14b
	mov	rcx,rbx
	mov	r15d,6h
	lea	r14,[rbp-10h]
	mov	rdx,r13
	test	rax,rax
	cmovns	r15,rax

l000000000043B116:
	call	452660h
	sub	rsp,50h
	call	46AC50h
	fld	tword ptr [rbp-20h]
	mov	[rbp+8h],rax
	lea	r12,[rsp+40h]
	lea	rax,[rbp+8h]
	mov	[rsp+28h],r14
	mov	[rsp+20h],r15
	mov	r9,r13
	mov	r8d,36h
	mov	rdx,r12
	mov	rcx,rax
	mov	[rbp-40h],rax
	fstp	tword ptr [rbp-10h]
	call	46FF90h
	cmp	eax,35h
	mov	[rbp+4h],eax
	jg	43B320h

l000000000043B165:
	mov	rcx,[rbp-28h]
	call	473020h
	movsxd	rdx,dword ptr [rbp+4h]
	mov	rcx,rax
	lea	rax,[rdx+rdx+1Eh]
	and	rax,0F0h
	call	4116F0h
	sub	rsp,rax
	mov	rax,[rcx]
	lea	r8,[r12+rdx]
	lea	r14,[rsp+40h]
	mov	rdx,r12
	mov	r9,r14
	mov	r15,r14
	call	qword ptr [rax+58h]
	movsxd	r13,dword ptr [rbp+4h]
	mov	edx,2Eh
	mov	rcx,r12
	mov	r8,r13
	mov	[rbp-20h],r13d
	call	41BD98h
	test	rax,rax
	mov	r9d,[rbp-20h]
	jz	43B270h

l000000000043B1C3:
	sub	rax,r12
	cmp	byte ptr [rsi+20h],0h
	lea	rcx,[r14+rax*2]
	movzx	eax,word ptr [rsi+48h]
	mov	[rcx],ax
	jnz	43B2AAh

l000000000043B1DB:
	mov	r12,[rbx+10h]
	cmp	r12,r13
	jle	43B220h

l000000000043B1E4:
	lea	rax,[r12+1Eh]
	and	rax,0F0h
	call	4116F0h
	movzx	edx,word ptr [rbp-34h]
	sub	rsp,rax
	mov	r9,r15
	mov	rcx,rbx
	lea	r14,[rsp+40h]
	mov	[rsp+28h],r13
	mov	[rsp+20h],r12
	movsxd	r13,r12d
	mov	r8,r14
	mov	r15,r14
	call	468AD0h
	mov	[rbp+4h],r12d

l000000000043B220:
	mov	rax,[rbp-30h]
	mov	qword ptr [rbx+10h],+0h
	test	al,al
	mov	ebx,eax
	jnz	43B24Ch

l000000000043B232:
	mov	rax,[rdi]
	mov	r8,r13
	mov	rdx,r15
	mov	rcx,rdi
	call	qword ptr [rax+60h]
	cmp	r13,rax
	mov	eax,1h
	cmovnz	ebx,eax

l000000000043B24C:
	mov	rax,[rbp+70h]
	mov	[rax],rdi
	mov	[rax+8h],bl
	lea	rsp,[rbp+28h]
	pop	rbx
	pop	rsi
	pop	rdi
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret
000000000043B267                      66 0F 1F 84 00 00 00 00 00        f........

l000000000043B270:
	cmp	byte ptr [rsi+20h],0h
	jz	43B1DBh

l000000000043B27A:
	cmp	r9d,2h
	jle	43B2A8h

l000000000043B280:
	movzx	eax,byte ptr [r12+1h]
	cmp	al,39h
	jg	43B1DBh

l000000000043B28E:
	movzx	edx,byte ptr [r12+2h]
	sub	edx,30h
	cmp	dl,9h
	ja	43B1DBh

l000000000043B2A0:
	cmp	al,2Fh
	jle	43B1DBh

l000000000043B2A8:
	xor	ecx,ecx

l000000000043B2AA:
	lea	rax,[001Eh+r13*4]
	and	rax,0F0h
	call	4116F0h
	sub	rsp,rax
	movzx	eax,byte ptr [r12]
	lea	r15,[rsp+40h]
	sub	eax,2Bh
	test	al,0FDh
	jz	43B374h

l000000000043B2D3:
	xor	r12d,r12d
	xor	eax,eax

l000000000043B2D8:
	movzx	r9d,word ptr [rsi+4Ah]
	mov	r8,[rsi+18h]
	lea	r10,[rbp+4h]
	mov	rdx,[rsi+10h]
	mov	[rsp+20h],rcx
	add	r14,rax
	mov	rcx,[rbp+78h]
	add	rax,r15
	mov	[rsp+38h],r10
	mov	[rsp+30h],r14
	mov	[rsp+28h],rax
	call	43ABC0h
	mov	r9d,[rbp+4h]
	add	r9d,r12d
	mov	[rbp+4h],r9d
	movsxd	r13,r9d
	jmp	43B1DBh
000000000043B31F                                              90                .

l000000000043B320:
	lea	r8d,[rax+1h]
	movsxd	rax,r8d
	mov	[rbp-38h],r8d
	add	rax,1Eh
	and	rax,0F0h
	call	4116F0h
	sub	rsp,rax
	call	46AC50h
	fld	tword ptr [rbp-20h]
	lea	r12,[rsp+40h]
	mov	r8d,[rbp-38h]
	mov	rcx,[rbp-40h]
	mov	[rsp+28h],r14
	mov	[rsp+20h],r15
	mov	r9,r13
	mov	rdx,r12
	mov	[rbp+8h],rax
	fstp	tword ptr [rbp-10h]
	call	46FF90h
	mov	[rbp+4h],eax
	jmp	43B165h

l000000000043B374:
	movzx	eax,word ptr [r14]
	sub	r9d,1h
	mov	r12d,1h
	mov	[rbp+4h],r9d
	mov	[r15],ax
	mov	eax,2h
	jmp	43B2D8h

l000000000043B394:
	mov	ecx,0D0h
	call	475590h
	mov	r15,rax
	mov	dword ptr [rax+8h],0h
	xor	edx,edx
	lea	rax,[0000000000497370]                                 ; [rip+0005BFBF]
	mov	[r15+4Ah],dx
	mov	rdx,[rbp-28h]
	mov	qword ptr [r15+10h],+0h
	mov	qword ptr [r15+18h],+0h
	mov	rcx,r15
	mov	[r15],rax
	xor	eax,eax
	mov	byte ptr [r15+20h],0h
	mov	qword ptr [r15+28h],+0h
	mov	qword ptr [r15+30h],+0h
	mov	qword ptr [r15+38h],+0h
	mov	qword ptr [r15+40h],+0h
	mov	[r15+48h],ax
	mov	byte ptr [r15+0C8h],0h
	call	4645D0h
	mov	rcx,[rbx+0D0h]
	mov	r8,r13
	mov	rdx,r15
	call	469430h
	mov	rsi,[r12]
	jmp	43B0F3h
000000000043B424             48 89 C1 E8 14 A4 03 00 E8 2F AC 03     H......../..
000000000043B430 00 48 89 C1 E8 07 A4 03 00 49 8B 07 4C 89 F9 FF .H.......I..L...
000000000043B440 50 08 EB E8 48 89 C3 E8 24 A6 03 00 48 89 D9 E8 P...H...$...H...
000000000043B450 5C 61 FD FF 90 90 90 90 90 90 90 90 90 90 90 90 \a..............

;; fn000000000043B460: 000000000043B460
fn000000000043B460 proc
	push	rbx
	sub	rsp,40h
	mov	rax,[rdx]
	mov	rbx,rcx
	mov	rcx,[rsp+78h]
	movdqu	xmm1,[r8]
	lea	r8,[rsp+30h]
	mov	[rsp+28h],rcx
	movzx	ecx,word ptr [rsp+70h]
	movaps	[rsp+30h],xmm1
	mov	[rsp+20h],ecx
	mov	rcx,rbx
	call	qword ptr [rax+48h]
	mov	rax,rbx
	add	rsp,40h
	pop	rbx
	ret
000000000043B49C                                     90 90 90 90             ....

;; fn000000000043B4A0: 000000000043B4A0
fn000000000043B4A0 proc
	push	rbx
	sub	rsp,40h
	mov	rax,[rdx]
	mov	rbx,rcx
	movzx	ecx,byte ptr [rsp+78h]
	movdqu	xmm1,[r8]
	lea	r8,[rsp+30h]
	movaps	[rsp+30h],xmm1
	mov	[rsp+28h],ecx
	movzx	ecx,word ptr [rsp+70h]
	mov	[rsp+20h],ecx
	mov	rcx,rbx
	call	qword ptr [rax+10h]
	mov	rax,rbx
	add	rsp,40h
	pop	rbx
	ret
000000000043B4DB                                  90 90 90 90 90            .....

;; fn000000000043B4E0: 000000000043B4E0
fn000000000043B4E0 proc
	push	rbx
	sub	rsp,50h
	mov	rax,[rdx]
	movdqu	xmm1,[r8]
	lea	r8,[000000000043BB70]                                  ; [rip+0000067C]
	mov	rbx,rcx
	movzx	ecx,word ptr [rsp+80h]
	mov	rax,[rax+38h]
	movsd	xmm0,double ptr [rsp+88h]
	movaps	[rsp+40h],xmm1
	cmp	rax,r8
	jnz	43B540h

l000000000043B516:
	movsd	double ptr [rsp+30h],xmm0
	lea	r8,[rsp+40h]
	mov	[rsp+20h],ecx
	mov	dword ptr [rsp+28h],0h
	mov	rcx,rbx
	call	43AC90h
	mov	rax,rbx
	add	rsp,50h
	pop	rbx
	ret
000000000043B53E                                           66 90               f.

l000000000043B540:
	lea	r8,[rsp+40h]
	mov	[rsp+20h],ecx
	movsd	double ptr [rsp+28h],xmm0
	mov	rcx,rbx
	call	rax
	mov	rax,rbx
	add	rsp,50h
	pop	rbx
	ret
000000000043B55D                                        90 90 90              ...

;; fn000000000043B560: 000000000043B560
fn000000000043B560 proc
	push	rbx
	sub	rsp,60h
	mov	rax,[rsp+98h]
	movdqu	xmm1,[r8]
	lea	r8,[000000000043BBC0]                                  ; [rip+00000647]
	mov	rbx,rcx
	movzx	ecx,word ptr [rsp+90h]
	fld	tword ptr [rax]
	mov	rax,[rdx]
	mov	rax,[rax+40h]
	cmp	rax,r8
	movaps	[rsp+50h],xmm1
	fstp	tword ptr [rsp+40h]
	jnz	43B5D0h

l000000000043B59B:
	lea	rax,[rsp+40h]
	lea	r8,[rsp+50h]
	mov	[rsp+20h],ecx
	mov	dword ptr [rsp+28h],4Ch
	mov	rcx,rbx
	mov	[rsp+30h],rax
	call	43B070h
	mov	rax,rbx
	add	rsp,60h
	pop	rbx
	ret
000000000043B5C7                      66 0F 1F 84 00 00 00 00 00        f........

l000000000043B5D0:
	lea	r8,[rsp+40h]
	mov	[rsp+20h],ecx
	mov	rcx,rbx
	mov	[rsp+28h],r8
	lea	r8,[rsp+50h]
	call	rax
	mov	rax,rbx
	add	rsp,60h
	pop	rbx
	ret
000000000043B5F1    90 90 90 90 90 90 90 90 90 90 90 90 90 90 90  ...............

;; fn000000000043B600: 000000000043B600
fn000000000043B600 proc
	push	rbx
	sub	rsp,40h
	mov	rax,[rdx]
	lea	r10,[000000000043BC20]                                 ; [rip+00000611]
	mov	rbx,rcx
	movzx	ecx,word ptr [rsp+70h]
	movdqu	xmm1,[r8]
	mov	rax,[rax+18h]
	mov	r8d,[rsp+78h]
	movaps	[rsp+30h],xmm1
	mov	[rsp+20h],ecx
	mov	rcx,rbx
	cmp	rax,r10
	mov	[rsp+28h],r8d
	lea	r8,[rsp+30h]
	jnz	43B650h

l000000000043B640:
	call	439F70h
	mov	rax,rbx
	add	rsp,40h
	pop	rbx
	ret
000000000043B64E                                           66 90               f.

l000000000043B650:
	call	rax
	mov	rax,rbx
	add	rsp,40h
	pop	rbx
	ret
000000000043B65B                                  90 90 90 90 90            .....

;; fn000000000043B660: 000000000043B660
fn000000000043B660 proc
	push	rbx
	sub	rsp,40h
	mov	rax,[rdx]
	lea	r10,[000000000043BC60]                                 ; [rip+000005F1]
	mov	rbx,rcx
	movzx	ecx,word ptr [rsp+70h]
	movdqu	xmm1,[r8]
	mov	rax,[rax+20h]
	mov	r8d,[rsp+78h]
	movaps	[rsp+30h],xmm1
	mov	[rsp+20h],ecx
	mov	rcx,rbx
	cmp	rax,r10
	mov	[rsp+28h],r8d
	lea	r8,[rsp+30h]
	jnz	43B6B0h

l000000000043B6A0:
	call	43A2B0h
	mov	rax,rbx
	add	rsp,40h
	pop	rbx
	ret
000000000043B6AE                                           66 90               f.

l000000000043B6B0:
	call	rax
	mov	rax,rbx
	add	rsp,40h
	pop	rbx
	ret
000000000043B6BB                                  90 90 90 90 90            .....

;; fn000000000043B6C0: 000000000043B6C0
fn000000000043B6C0 proc
	push	rbx
	sub	rsp,40h
	mov	rax,[rdx]
	lea	r10,[000000000043BCA0]                                 ; [rip+000005D1]
	mov	rbx,rcx
	movzx	ecx,word ptr [rsp+70h]
	movdqu	xmm1,[r8]
	mov	rax,[rax+28h]
	mov	r8,[rsp+78h]
	movaps	[rsp+30h],xmm1
	mov	[rsp+20h],ecx
	mov	rcx,rbx
	cmp	rax,r10
	mov	[rsp+28h],r8
	lea	r8,[rsp+30h]
	jnz	43B710h

l000000000043B700:
	call	43A590h
	mov	rax,rbx
	add	rsp,40h
	pop	rbx
	ret
000000000043B70E                                           66 90               f.

l000000000043B710:
	call	rax
	mov	rax,rbx
	add	rsp,40h
	pop	rbx
	ret
000000000043B71B                                  90 90 90 90 90            .....

;; fn000000000043B720: 000000000043B720
fn000000000043B720 proc
	push	rbx
	sub	rsp,40h
	mov	rax,[rdx]
	lea	r10,[000000000043BCE0]                                 ; [rip+000005B1]
	mov	rbx,rcx
	movzx	ecx,word ptr [rsp+70h]
	movdqu	xmm1,[r8]
	mov	rax,[rax+30h]
	mov	r8,[rsp+78h]
	movaps	[rsp+30h],xmm1
	mov	[rsp+20h],ecx
	mov	rcx,rbx
	cmp	rax,r10
	mov	[rsp+28h],r8
	lea	r8,[rsp+30h]
	jnz	43B770h

l000000000043B760:
	call	43A8D0h
	mov	rax,rbx
	add	rsp,40h
	pop	rbx
	ret
000000000043B76E                                           66 90               f.

l000000000043B770:
	call	rax
	mov	rax,rbx
	add	rsp,40h
	pop	rbx
	ret
000000000043B77B                                  90 90 90 90 90            .....

;; fn000000000043B780: 000000000043B780
fn000000000043B780 proc
	push	rsi
	push	rbx
	sub	rsp,38h
	mov	rbx,[rsp+80h]
	mov	rsi,r8
	mov	rcx,r9
	mov	r9,[rsp+78h]
	movzx	edx,dx
	movsxd	rax,dword ptr [rbx]
	mov	[rsp+20h],r8
	mov	r8,[rsp+70h]
	mov	[rsp+28h],rax
	call	468AD0h
	mov	[rbx],esi
	add	rsp,38h
	pop	rbx
	pop	rsi
	ret
000000000043B7BC                                     90 90 90 90             ....

;; fn000000000043B7C0: 000000000043B7C0
fn000000000043B7C0 proc
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,58h
	mov	ebp,[r9+18h]
	mov	r10,[r8]
	mov	rsi,[r8+8h]
	mov	rdi,rcx
	lea	r8,[rsp+30h]
	lea	rcx,[rsp+40h]
	mov	rbx,r9
	mov	eax,ebp
	mov	[rsp+30h],r10
	and	eax,0FFFFBFB5h
	mov	[rsp+38h],rsi
	and	sil,0h
	or	eax,208h
	mov	[r9+18h],eax
	mov	rax,[rsp+0A8h]
	mov	[rsp+28h],rax
	movzx	eax,word ptr [rsp+0A0h]
	mov	[rsp+20h],eax
	call	43A8D0h
	mov	rax,[rsp+40h]
	mov	[rbx+18h],ebp
	mov	rdx,rax
	movzx	eax,byte ptr [rsp+48h]
	mov	[rdi],rdx
	or	rsi,rax
	mov	rax,rdi
	mov	[rdi+8h],rsi
	add	rsp,58h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
000000000043B845                90 90 90 90 90 90 90 90 90 90 90      ...........

;; fn000000000043B850: 000000000043B850
fn000000000043B850 proc
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,+88h
	lea	rbp,[rsp+80h]
	mov	r12,[r8]
	mov	rbx,[r8+8h]
	mov	rdi,rcx
	mov	ecx,[rbp+78h]
	mov	eax,[rbp+70h]
	mov	rsi,r9
	mov	r15,r12
	mov	r14d,ebx
	mov	[rbp-28h],ecx
	mov	ecx,[r9+18h]
	mov	r13d,eax
	mov	[rbp-30h],ecx
	and	ecx,1h
	jnz	43B8E3h

l000000000043B896:
	movzx	r8d,byte ptr [rbp-28h]
	movzx	eax,ax
	lea	rcx,[rbp-10h]
	mov	[rsp+20h],eax
	mov	[rbp-20h],r12
	mov	[rbp-18h],rbx
	mov	[rsp+28h],r8d
	lea	r8,[rbp-20h]
	call	439F70h
	movzx	r14d,byte ptr [rbp-8h]
	mov	r15,[rbp-10h]

l000000000043B8C5:
	mov	bl,r14b
	mov	[rdi],r15
	mov	[rdi+8h],rbx

l000000000043B8CF:
	mov	rax,rdi
	lea	rsp,[rbp+8h]
	pop	rbx
	pop	rsi
	pop	rdi
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret

l000000000043B8E3:
	lea	rcx,[000000000048B590]                                 ; [rip+0004FCA6]
	call	42BB80h
	mov	rdx,rax
	mov	[rbp-38h],rax
	mov	rax,[rsi+0D0h]
	mov	rax,[rax+18h]
	lea	rax,[rax+rdx*8]
	mov	[rbp-40h],rax
	mov	rax,[rax]
	test	rax,rax
	jz	43BA90h

l000000000043B915:
	cmp	byte ptr [rbp-28h],0h
	jnz	43B9F0h

l000000000043B91F:
	movsxd	r9,dword ptr [rax+40h]
	mov	r11,[rax+38h]
	mov	rax,[rsi+10h]
	cmp	rax,r9
	jle	43BA05h

l000000000043B934:
	sub	rax,r9
	mov	r15,rax
	lea	rax,[rax+rax+1Eh]
	and	rax,0F0h
	call	4116F0h
	sub	rsp,rax
	xor	eax,eax
	test	r15,r15
	lea	r10,[rsp+30h]
	jz	43B96Eh

l000000000043B957:
	nop	word ptr [rax+rax+0h]

l000000000043B960:
	mov	[r10+rax*2],r13w
	add	rax,1h
	cmp	r15,rax
	jnz	43B960h

l000000000043B96E:
	mov	eax,[rbp-30h]
	mov	qword ptr [rsi+10h],+0h
	and	eax,0B0h
	cmp	eax,20h
	jz	43BA40h

l000000000043B987:
	test	r14b,r14b
	mov	[rbp-30h],r9
	mov	[rbp-28h],r11
	movsxd	r15,r15d
	jnz	43B9D7h

l000000000043B997:
	mov	rax,[r12]
	mov	r8,r15
	mov	rdx,r10
	mov	rcx,r12
	call	qword ptr [rax+60h]
	cmp	r15,rax
	mov	r11,[rbp-28h]
	mov	r9,[rbp-30h]
	jnz	43BB25h

l000000000043B9B8:
	mov	rax,[r12]
	mov	r8,r9
	mov	[rbp-28h],r9
	mov	rdx,r11
	mov	rcx,r12
	call	qword ptr [rax+60h]
	mov	r9,[rbp-28h]
	cmp	r9,rax
	setnz	r14b

l000000000043B9D7:
	mov	bl,r14b
	mov	[rdi],r12
	mov	[rdi+8h],rbx
	jmp	43B8CFh
000000000043B9E6                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l000000000043B9F0:
	movsxd	r9,dword ptr [rax+30h]
	mov	r11,[rax+28h]
	mov	rax,[rsi+10h]
	cmp	rax,r9
	jg	43B934h

l000000000043BA05:
	test	r14b,r14b
	mov	qword ptr [rsi+10h],+0h
	jnz	43B8C5h

l000000000043BA16:
	mov	rax,[r12]
	mov	r8,r9
	mov	[rbp-28h],r9
	mov	rdx,r11
	mov	rcx,r12
	call	qword ptr [rax+60h]
	mov	r9,[rbp-28h]
	cmp	r9,rax
	setnz	r14b
	jmp	43B8C5h
000000000043BA3A                               66 0F 1F 44 00 00           f..D..

l000000000043BA40:
	test	r14b,r14b
	mov	[rbp-28h],r10
	jnz	43B9D7h

l000000000043BA49:
	mov	rax,[r12]
	mov	r8,r9
	mov	[rbp-30h],r9
	mov	rdx,r11
	mov	rcx,r12
	call	qword ptr [rax+60h]
	mov	r9,[rbp-30h]
	mov	r10,[rbp-28h]
	cmp	r9,rax
	jnz	43BB25h

l000000000043BA6E:
	mov	rax,[r12]
	movsxd	r15,r15d
	mov	rdx,r10
	mov	r8,r15
	mov	rcx,r12
	call	qword ptr [rax+60h]
	cmp	r15,rax
	setnz	r14b
	jmp	43B9D7h
000000000043BA8D                                        0F 1F 00              ...

l000000000043BA90:
	mov	ecx,0D0h
	call	475590h
	lea	rdx,[0000000000497370]                                 ; [rip+0005B8CF]
	xor	ecx,ecx
	mov	dword ptr [rax+8h],0h
	mov	[rax+4Ah],cx
	mov	qword ptr [rax+10h],+0h
	mov	rcx,rax
	mov	[rax],rdx
	xor	edx,edx
	mov	qword ptr [rax+18h],+0h
	mov	[rax+48h],dx
	lea	rdx,[rsi+0D0h]
	mov	byte ptr [rax+20h],0h
	mov	qword ptr [rax+28h],+0h
	mov	qword ptr [rax+30h],+0h
	mov	qword ptr [rax+38h],+0h
	mov	qword ptr [rax+40h],+0h
	mov	byte ptr [rax+0C8h],0h
	mov	[rbp-48h],rax
	call	4645D0h
	mov	rcx,[rsi+0D0h]
	mov	r8,[rbp-38h]
	mov	rdx,[rbp-48h]
	call	469430h
	mov	rax,[rbp-40h]
	mov	rax,[rax]
	jmp	43B915h

l000000000043BB25:
	mov	r14d,1h
	jmp	43B9D7h
000000000043BB30 48 89 C1 E8 08 9D 03 00 48 8B 4D B8 48 8B 01 FF H.......H.M.H...
000000000043BB40 50 08 E8 19 A5 03 00 48 89 C1 E8 F1 9C 03 00 EB P......H........
000000000043BB50 F1 48 89 C3 E8 17 9F 03 00 48 89 D9 E8 4F 5A FD .H.......H...OZ.
000000000043BB60 FF 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 ................

;; fn000000000043BB70: 000000000043BB70
fn000000000043BB70 proc
	push	rbx
	sub	rsp,50h
	movzx	eax,word ptr [rsp+80h]
	movsd	xmm0,double ptr [rsp+88h]
	mov	rbx,rcx
	movdqu	xmm1,[r8]
	lea	r8,[rsp+40h]
	mov	dword ptr [rsp+28h],0h
	movsd	double ptr [rsp+30h],xmm0
	mov	[rsp+20h],eax
	movaps	[rsp+40h],xmm1
	call	43AC90h
	mov	rax,rbx
	add	rsp,50h
	pop	rbx
	ret
000000000043BBB8                         90 90 90 90 90 90 90 90         ........

;; fn000000000043BBC0: 000000000043BBC0
fn000000000043BBC0 proc
	push	rbx
	sub	rsp,60h
	mov	rax,[rsp+98h]
	movdqu	xmm1,[r8]
	lea	r8,[rsp+50h]
	mov	rbx,rcx
	fld	tword ptr [rax]
	lea	rax,[rsp+40h]
	mov	dword ptr [rsp+28h],4Ch
	mov	[rsp+30h],rax
	movzx	eax,word ptr [rsp+90h]
	mov	[rsp+20h],eax
	movaps	[rsp+50h],xmm1
	fstp	tword ptr [rsp+40h]
	call	43B070h
	mov	rax,rbx
	add	rsp,60h
	pop	rbx
	ret
000000000043BC11    90 90 90 90 90 90 90 90 90 90 90 90 90 90 90  ...............

;; fn000000000043BC20: 000000000043BC20
fn000000000043BC20 proc
	push	rbx
	sub	rsp,40h
	mov	eax,[rsp+78h]
	movdqu	xmm1,[r8]
	lea	r8,[rsp+30h]
	mov	rbx,rcx
	mov	[rsp+28h],eax
	movzx	eax,word ptr [rsp+70h]
	movaps	[rsp+30h],xmm1
	mov	[rsp+20h],eax
	call	439F70h
	mov	rax,rbx
	add	rsp,40h
	pop	rbx
	ret
000000000043BC56                   90 90 90 90 90 90 90 90 90 90       ..........

;; fn000000000043BC60: 000000000043BC60
fn000000000043BC60 proc
	push	rbx
	sub	rsp,40h
	mov	eax,[rsp+78h]
	movdqu	xmm1,[r8]
	lea	r8,[rsp+30h]
	mov	rbx,rcx
	mov	[rsp+28h],eax
	movzx	eax,word ptr [rsp+70h]
	movaps	[rsp+30h],xmm1
	mov	[rsp+20h],eax
	call	43A2B0h
	mov	rax,rbx
	add	rsp,40h
	pop	rbx
	ret
000000000043BC96                   90 90 90 90 90 90 90 90 90 90       ..........

;; fn000000000043BCA0: 000000000043BCA0
fn000000000043BCA0 proc
	push	rbx
	sub	rsp,40h
	mov	rax,[rsp+78h]
	movdqu	xmm1,[r8]
	lea	r8,[rsp+30h]
	mov	rbx,rcx
	mov	[rsp+28h],rax
	movzx	eax,word ptr [rsp+70h]
	movaps	[rsp+30h],xmm1
	mov	[rsp+20h],eax
	call	43A590h
	mov	rax,rbx
	add	rsp,40h
	pop	rbx
	ret
000000000043BCD8                         90 90 90 90 90 90 90 90         ........

;; fn000000000043BCE0: 000000000043BCE0
fn000000000043BCE0 proc
	push	rbx
	sub	rsp,40h
	mov	rax,[rsp+78h]
	movdqu	xmm1,[r8]
	lea	r8,[rsp+30h]
	mov	rbx,rcx
	mov	[rsp+28h],rax
	movzx	eax,word ptr [rsp+70h]
	movaps	[rsp+30h],xmm1
	mov	[rsp+20h],eax
	call	43A8D0h
	mov	rax,rbx
	add	rsp,40h
	pop	rbx
	ret
000000000043BD18                         90 90 90 90 90 90 90 90         ........

;; fn000000000043BD20: 000000000043BD20
fn000000000043BD20 proc
	lea	rax,[000000000048E070]                                 ; [rip+00052349]
	ret
000000000043BD28                         90 90 90 90 90 90 90 90         ........

;; fn000000000043BD30: 000000000043BD30
fn000000000043BD30 proc
	mov	rax,[rcx+8h]
	ret
000000000043BD35                90 90 90 90 90 90 90 90 90 90 90      ...........

;; fn000000000043BD40: 000000000043BD40
fn000000000043BD40 proc
	mov	rax,[rdx]
	ret
000000000043BD44             90 90 90 90 90 90 90 90 90 90 90 90     ............

;; fn000000000043BD50: 000000000043BD50
fn000000000043BD50 proc
	push	rbx
	sub	rsp,30h
	xor	edx,edx
	lea	r8,[rsp+2Fh]
	mov	rbx,rcx
	xor	ecx,ecx
	call	4505D0h
	mov	[rbx],rax
	mov	rax,rbx
	add	rsp,30h
	pop	rbx
	ret
000000000043BD72       90 90 90 90 90 90 90 90 90 90 90 90 90 90   ..............

;; fn000000000043BD80: 000000000043BD80
fn000000000043BD80 proc
	push	rbx
	sub	rsp,30h
	mov	rax,[rdx]
	mov	rbx,rcx
	mov	rcx,[rsp+68h]
	mov	[rsp+28h],rcx
	mov	ecx,[rsp+60h]
	mov	[rsp+20h],ecx
	mov	rcx,rbx
	call	qword ptr [rax+18h]
	mov	rax,rbx
	add	rsp,30h
	pop	rbx
	ret
000000000043BDAC                                     90 90 90 90             ....

;; fn000000000043BDB0: 000000000043BDB0
fn000000000043BDB0 proc
	mov	rax,[rcx]
	lea	r9,[000000000043BE50]                                  ; [rip+00000096]
	mov	rax,[rax+10h]
	cmp	rax,r9
	jnz	43BDD0h

l000000000043BDC3:
	xor	eax,eax
	ret
000000000043BDC6                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l000000000043BDD0:
	jmp	rax
000000000043BDD3          90 90 90 90 90 90 90 90 90 90 90 90 90    .............

;; fn000000000043BDE0: 000000000043BDE0
fn000000000043BDE0 proc
	mov	rax,[rcx]
	lea	r9,[000000000043BE50]                                  ; [rip+00000066]
	mov	rax,[rax+10h]
	cmp	rax,r9
	jnz	43BE00h

l000000000043BDF3:
	xor	eax,eax
	ret
000000000043BDF6                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l000000000043BE00:
	jmp	rax
000000000043BE03          90 90 90 90 90 90 90 90 90 90 90 90 90    .............

;; fn000000000043BE10: 000000000043BE10
fn000000000043BE10 proc
	mov	rax,[rcx]
	lea	r8,[000000000043BE60]                                  ; [rip+00000046]
	mov	rax,[rax+20h]
	cmp	rax,r8
	jnz	43BE25h

l000000000043BE23:
	ret

l000000000043BE25:
	jmp	rax
000000000043BE28                         90 90 90 90 90 90 90 90         ........

;; fn000000000043BE30: 000000000043BE30
fn000000000043BE30 proc
	push	rbx
	sub	rsp,20h
	mov	rdx,[rsp+58h]
	mov	rbx,rcx
	call	451F40h
	mov	rax,rbx
	add	rsp,20h
	pop	rbx
	ret
000000000043BE4B                                  90 90 90 90 90            .....

;; fn000000000043BE50: 000000000043BE50
fn000000000043BE50 proc
	xor	eax,eax
	ret
000000000043BE53          90 90 90 90 90 90 90 90 90 90 90 90 90    .............

;; fn000000000043BE60: 000000000043BE60
fn000000000043BE60 proc
	ret
000000000043BE61    90 90 90 90 90 90 90 90 90 90 90 90 90 90 90  ...............

;; fn000000000043BE70: 000000000043BE70
fn000000000043BE70 proc
	mov	rax,[rdx]
	ret
000000000043BE74             90 90 90 90 90 90 90 90 90 90 90 90     ............

;; fn000000000043BE80: 000000000043BE80
fn000000000043BE80 proc
	push	rbx
	sub	rsp,30h
	xor	edx,edx
	lea	r8,[rsp+2Fh]
	mov	rbx,rcx
	xor	ecx,ecx
	call	448EB0h
	mov	[rbx],rax
	mov	rax,rbx
	add	rsp,30h
	pop	rbx
	ret
000000000043BEA2       90 90 90 90 90 90 90 90 90 90 90 90 90 90   ..............

;; fn000000000043BEB0: 000000000043BEB0
fn000000000043BEB0 proc
	push	rbx
	sub	rsp,30h
	mov	rax,[rdx]
	mov	rbx,rcx
	mov	rcx,[rsp+68h]
	mov	[rsp+28h],rcx
	mov	ecx,[rsp+60h]
	mov	[rsp+20h],ecx
	mov	rcx,rbx
	call	qword ptr [rax+18h]
	mov	rax,rbx
	add	rsp,30h
	pop	rbx
	ret
000000000043BEDC                                     90 90 90 90             ....

;; fn000000000043BEE0: 000000000043BEE0
fn000000000043BEE0 proc
	mov	rax,[rcx]
	lea	r9,[000000000043BF80]                                  ; [rip+00000096]
	mov	rax,[rax+10h]
	cmp	rax,r9
	jnz	43BF00h

l000000000043BEF3:
	xor	eax,eax
	ret
000000000043BEF6                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l000000000043BF00:
	jmp	rax
000000000043BF03          90 90 90 90 90 90 90 90 90 90 90 90 90    .............

;; fn000000000043BF10: 000000000043BF10
fn000000000043BF10 proc
	mov	rax,[rcx]
	lea	r9,[000000000043BF80]                                  ; [rip+00000066]
	mov	rax,[rax+10h]
	cmp	rax,r9
	jnz	43BF30h

l000000000043BF23:
	xor	eax,eax
	ret
000000000043BF26                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l000000000043BF30:
	jmp	rax
000000000043BF33          90 90 90 90 90 90 90 90 90 90 90 90 90    .............

;; fn000000000043BF40: 000000000043BF40
fn000000000043BF40 proc
	mov	rax,[rcx]
	lea	r8,[000000000043BF90]                                  ; [rip+00000046]
	mov	rax,[rax+20h]
	cmp	rax,r8
	jnz	43BF55h

l000000000043BF53:
	ret

l000000000043BF55:
	jmp	rax
000000000043BF58                         90 90 90 90 90 90 90 90         ........

;; fn000000000043BF60: 000000000043BF60
fn000000000043BF60 proc
	push	rbx
	sub	rsp,20h
	mov	rdx,[rsp+58h]
	mov	rbx,rcx
	call	44A950h
	mov	rax,rbx
	add	rsp,20h
	pop	rbx
	ret
000000000043BF7B                                  90 90 90 90 90            .....

;; fn000000000043BF80: 000000000043BF80
fn000000000043BF80 proc
	xor	eax,eax
	ret
000000000043BF83          90 90 90 90 90 90 90 90 90 90 90 90 90    .............

;; fn000000000043BF90: 000000000043BF90
fn000000000043BF90 proc
	ret
000000000043BF91    90 90 90 90 90 90 90 90 90 90 90 90 90 90 90  ...............

;; fn000000000043BFA0: 000000000043BFA0
fn000000000043BFA0 proc
	push	rbx
	sub	rsp,30h
	mov	rax,[rdx+10h]
	lea	r8,[rsp+2Fh]
	mov	rbx,rcx
	mov	rdx,[rax+10h]
	call	451EA0h
	mov	rax,rbx
	add	rsp,30h
	pop	rbx
	ret
000000000043BFC3          90 90 90 90 90 90 90 90 90 90 90 90 90    .............

;; fn000000000043BFD0: 000000000043BFD0
fn000000000043BFD0 proc
	push	rbx
	sub	rsp,30h
	mov	rax,[rdx+10h]
	lea	r8,[rsp+2Fh]
	mov	rbx,rcx
	mov	rdx,[rax+28h]
	call	451EA0h
	mov	rax,rbx
	add	rsp,30h
	pop	rbx
	ret
000000000043BFF3          90 90 90 90 90 90 90 90 90 90 90 90 90    .............

;; fn000000000043C000: 000000000043C000
fn000000000043C000 proc
	push	rbx
	sub	rsp,30h
	mov	rax,[rdx+10h]
	lea	r8,[rsp+2Fh]
	mov	rbx,rcx
	mov	rdx,[rax+38h]
	call	451EA0h
	mov	rax,rbx
	add	rsp,30h
	pop	rbx
	ret
000000000043C023          90 90 90 90 90 90 90 90 90 90 90 90 90    .............

;; fn000000000043C030: 000000000043C030
fn000000000043C030 proc
	mov	rax,[rcx]
	lea	rdx,[000000000043C090]                                 ; [rip+00000056]
	mov	rax,[rax+10h]
	cmp	rax,rdx
	jnz	43C050h

l000000000043C043:
	mov	rax,[rcx+10h]
	movzx	eax,byte ptr [rax+48h]
	ret
000000000043C04C                                     0F 1F 40 00             ..@.

l000000000043C050:
	jmp	rax
000000000043C053          90 90 90 90 90 90 90 90 90 90 90 90 90    .............

;; fn000000000043C060: 000000000043C060
fn000000000043C060 proc
	mov	rax,[rcx]
	lea	rdx,[000000000043C0A0]                                 ; [rip+00000036]
	mov	rax,[rax+18h]
	cmp	rax,rdx
	jnz	43C080h

l000000000043C073:
	mov	rax,[rcx+10h]
	movzx	eax,byte ptr [rax+49h]
	ret
000000000043C07C                                     0F 1F 40 00             ..@.

l000000000043C080:
	jmp	rax
000000000043C083          90 90 90 90 90 90 90 90 90 90 90 90 90    .............

;; fn000000000043C090: 000000000043C090
fn000000000043C090 proc
	mov	rax,[rcx+10h]
	movzx	eax,byte ptr [rax+48h]
	ret
000000000043C099                            90 90 90 90 90 90 90          .......

;; fn000000000043C0A0: 000000000043C0A0
fn000000000043C0A0 proc
	mov	rax,[rcx+10h]
	movzx	eax,byte ptr [rax+49h]
	ret
000000000043C0A9                            90 90 90 90 90 90 90          .......

;; fn000000000043C0B0: 000000000043C0B0
fn000000000043C0B0 proc
	push	rbx
	sub	rsp,30h
	mov	rax,[rdx]
	mov	rbx,rcx
	lea	rcx,[000000000043BFA0]                                 ; [rip-00000122]
	mov	rax,[rax+20h]
	cmp	rax,rcx
	jnz	43C0F0h

l000000000043C0CB:
	mov	rax,[rdx+10h]
	lea	r8,[rsp+2Fh]
	mov	rcx,rbx
	mov	rdx,[rax+10h]
	call	451EA0h
	mov	rax,rbx
	add	rsp,30h
	pop	rbx
	ret
000000000043C0E9                            0F 1F 80 00 00 00 00          .......

l000000000043C0F0:
	mov	rcx,rbx
	call	rax
	mov	rax,rbx
	add	rsp,30h
	pop	rbx
	ret
000000000043C0FE                                           90 90               ..

;; fn000000000043C100: 000000000043C100
fn000000000043C100 proc
	push	rbx
	sub	rsp,30h
	mov	rax,[rdx]
	mov	rbx,rcx
	lea	rcx,[000000000043BFD0]                                 ; [rip-00000142]
	mov	rax,[rax+28h]
	cmp	rax,rcx
	jnz	43C140h

l000000000043C11B:
	mov	rax,[rdx+10h]
	lea	r8,[rsp+2Fh]
	mov	rcx,rbx
	mov	rdx,[rax+28h]
	call	451EA0h
	mov	rax,rbx
	add	rsp,30h
	pop	rbx
	ret
000000000043C139                            0F 1F 80 00 00 00 00          .......

l000000000043C140:
	mov	rcx,rbx
	call	rax
	mov	rax,rbx
	add	rsp,30h
	pop	rbx
	ret
000000000043C14E                                           90 90               ..

;; fn000000000043C150: 000000000043C150
fn000000000043C150 proc
	push	rbx
	sub	rsp,30h
	mov	rax,[rdx]
	mov	rbx,rcx
	lea	rcx,[000000000043C000]                                 ; [rip-00000162]
	mov	rax,[rax+30h]
	cmp	rax,rcx
	jnz	43C190h

l000000000043C16B:
	mov	rax,[rdx+10h]
	lea	r8,[rsp+2Fh]
	mov	rcx,rbx
	mov	rdx,[rax+38h]
	call	451EA0h
	mov	rax,rbx
	add	rsp,30h
	pop	rbx
	ret
000000000043C189                            0F 1F 80 00 00 00 00          .......

l000000000043C190:
	mov	rcx,rbx
	call	rax
	mov	rax,rbx
	add	rsp,30h
	pop	rbx
	ret
000000000043C19E                                           90 90               ..

;; fn000000000043C1A0: 000000000043C1A0
fn000000000043C1A0 proc
	push	rbx
	sub	rsp,30h
	mov	rax,[rdx+10h]
	lea	r8,[rsp+2Fh]
	mov	rbx,rcx
	mov	rdx,[rax+10h]
	call	451EA0h
	mov	rax,rbx
	add	rsp,30h
	pop	rbx
	ret
000000000043C1C3          90 90 90 90 90 90 90 90 90 90 90 90 90    .............

;; fn000000000043C1D0: 000000000043C1D0
fn000000000043C1D0 proc
	push	rbx
	sub	rsp,30h
	mov	rax,[rdx+10h]
	lea	r8,[rsp+2Fh]
	mov	rbx,rcx
	mov	rdx,[rax+28h]
	call	44A8B0h
	mov	rax,rbx
	add	rsp,30h
	pop	rbx
	ret
000000000043C1F3          90 90 90 90 90 90 90 90 90 90 90 90 90    .............

;; fn000000000043C200: 000000000043C200
fn000000000043C200 proc
	push	rbx
	sub	rsp,30h
	mov	rax,[rdx+10h]
	lea	r8,[rsp+2Fh]
	mov	rbx,rcx
	mov	rdx,[rax+38h]
	call	44A8B0h
	mov	rax,rbx
	add	rsp,30h
	pop	rbx
	ret
000000000043C223          90 90 90 90 90 90 90 90 90 90 90 90 90    .............

;; fn000000000043C230: 000000000043C230
fn000000000043C230 proc
	mov	rax,[rcx]
	lea	rdx,[000000000043C290]                                 ; [rip+00000056]
	mov	rax,[rax+10h]
	cmp	rax,rdx
	jnz	43C250h

l000000000043C243:
	mov	rax,[rcx+10h]
	movzx	eax,word ptr [rax+48h]
	ret
000000000043C24C                                     0F 1F 40 00             ..@.

l000000000043C250:
	jmp	rax
000000000043C253          90 90 90 90 90 90 90 90 90 90 90 90 90    .............

;; fn000000000043C260: 000000000043C260
fn000000000043C260 proc
	mov	rax,[rcx]
	lea	rdx,[000000000043C2A0]                                 ; [rip+00000036]
	mov	rax,[rax+18h]
	cmp	rax,rdx
	jnz	43C280h

l000000000043C273:
	mov	rax,[rcx+10h]
	movzx	eax,word ptr [rax+4Ah]
	ret
000000000043C27C                                     0F 1F 40 00             ..@.

l000000000043C280:
	jmp	rax
000000000043C283          90 90 90 90 90 90 90 90 90 90 90 90 90    .............

;; fn000000000043C290: 000000000043C290
fn000000000043C290 proc
	mov	rax,[rcx+10h]
	movzx	eax,word ptr [rax+48h]
	ret
000000000043C299                            90 90 90 90 90 90 90          .......

;; fn000000000043C2A0: 000000000043C2A0
fn000000000043C2A0 proc
	mov	rax,[rcx+10h]
	movzx	eax,word ptr [rax+4Ah]
	ret
000000000043C2A9                            90 90 90 90 90 90 90          .......

;; fn000000000043C2B0: 000000000043C2B0
fn000000000043C2B0 proc
	push	rbx
	sub	rsp,30h
	mov	rax,[rdx]
	mov	rbx,rcx
	lea	rcx,[000000000043C1A0]                                 ; [rip-00000122]
	mov	rax,[rax+20h]
	cmp	rax,rcx
	jnz	43C2F0h

l000000000043C2CB:
	mov	rax,[rdx+10h]
	lea	r8,[rsp+2Fh]
	mov	rcx,rbx
	mov	rdx,[rax+10h]
	call	451EA0h
	mov	rax,rbx
	add	rsp,30h
	pop	rbx
	ret
000000000043C2E9                            0F 1F 80 00 00 00 00          .......

l000000000043C2F0:
	mov	rcx,rbx
	call	rax
	mov	rax,rbx
	add	rsp,30h
	pop	rbx
	ret
000000000043C2FE                                           90 90               ..

;; fn000000000043C300: 000000000043C300
fn000000000043C300 proc
	push	rbx
	sub	rsp,30h
	mov	rax,[rdx]
	mov	rbx,rcx
	lea	rcx,[000000000043C1D0]                                 ; [rip-00000142]
	mov	rax,[rax+28h]
	cmp	rax,rcx
	jnz	43C340h

l000000000043C31B:
	mov	rax,[rdx+10h]
	lea	r8,[rsp+2Fh]
	mov	rcx,rbx
	mov	rdx,[rax+28h]
	call	44A8B0h
	mov	rax,rbx
	add	rsp,30h
	pop	rbx
	ret
000000000043C339                            0F 1F 80 00 00 00 00          .......

l000000000043C340:
	mov	rcx,rbx
	call	rax
	mov	rax,rbx
	add	rsp,30h
	pop	rbx
	ret
000000000043C34E                                           90 90               ..

;; fn000000000043C350: 000000000043C350
fn000000000043C350 proc
	push	rbx
	sub	rsp,30h
	mov	rax,[rdx]
	mov	rbx,rcx
	lea	rcx,[000000000043C200]                                 ; [rip-00000162]
	mov	rax,[rax+30h]
	cmp	rax,rcx
	jnz	43C390h

l000000000043C36B:
	mov	rax,[rdx+10h]
	lea	r8,[rsp+2Fh]
	mov	rcx,rbx
	mov	rdx,[rax+38h]
	call	44A8B0h
	mov	rax,rbx
	add	rsp,30h
	pop	rbx
	ret
000000000043C389                            0F 1F 80 00 00 00 00          .......

l000000000043C390:
	mov	rcx,rbx
	call	rax
	mov	rax,rbx
	add	rsp,30h
	pop	rbx
	ret
000000000043C39E                                           90 90               ..

;; fn000000000043C3A0: 000000000043C3A0
fn000000000043C3A0 proc
	mov	rax,[rcx]
	lea	rdx,[000000000043C910]                                 ; [rip+00000566]
	mov	rax,[rax+10h]
	cmp	rax,rdx
	jnz	43C3C0h

l000000000043C3B3:
	xor	eax,eax
	ret
000000000043C3B6                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l000000000043C3C0:
	jmp	rax
000000000043C3C3          90 90 90 90 90 90 90 90 90 90 90 90 90    .............

;; fn000000000043C3D0: 000000000043C3D0
fn000000000043C3D0 proc
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,78h
	mov	rbx,[rsp+0E0h]
	mov	rbp,[r8]
	mov	r15,[r8+8h]
	mov	r12,[r9]
	mov	rdi,rcx
	mov	r14,[r9+8h]
	mov	rsi,rdx
	mov	r13,[rsp+0E8h]
	lea	rcx,[rbx+0D0h]
	call	472F00h
	mov	[rsp+50h],rbp
	mov	[rsp+58h],r15
	lea	rcx,[rsp+60h]
	mov	[rsp+40h],r12
	mov	[rsp+48h],r14
	lea	r9,[rsp+40h]
	mov	rax,[rax+10h]
	lea	r8,[rsp+50h]
	mov	rdx,rsi
	mov	rax,[rax+10h]
	mov	[rsp+20h],rbx
	mov	[rsp+28h],r13
	mov	[rsp+38h],rax
	mov	rax,[rsp+0F0h]
	mov	[rsp+30h],rax
	call	43D6C0h
	mov	rdx,[rsp+68h]
	mov	rbx,[rsp+60h]
	mov	rax,0FFFFFFFF00000000h
	and	rax,r15
	mov	ebp,edx
	mov	esi,edx
	or	rbp,rax
	test	rbx,rbx
	jz	43C510h

l000000000043C486:
	cmp	edx,0FFh
	jz	43C4D2h

l000000000043C48B:
	test	r12,r12
	jz	43C4A5h

l000000000043C490:
	xor	r15d,r15d

l000000000043C493:
	xor	eax,eax
	cmp	r14d,0FFh
	jz	43C4E1h

l000000000043C49B:
	cmp	r15b,al
	jnz	43C4A5h

l000000000043C4A0:
	or	dword ptr [r13+0h],2h

l000000000043C4A5:
	mov	edx,esi
	mov	rsi,0FFFFFFFF00000000h
	mov	rax,rdi
	and	rsi,rbp
	mov	[rdi],rbx
	or	rsi,rdx
	mov	[rdi+8h],rsi
	add	rsp,78h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret

l000000000043C4D2:
	mov	rax,[rbx+10h]
	cmp	rax,[rbx+18h]
	jnc	43C522h

l000000000043C4DC:
	movzx	esi,byte ptr [rax]
	jmp	43C48Bh

l000000000043C4E1:
	mov	rax,[r12+18h]
	cmp	[r12+10h],rax
	jnc	43C4F1h

l000000000043C4ED:
	xor	eax,eax
	jmp	43C49Bh

l000000000043C4F1:
	mov	rax,[r12]
	mov	rcx,r12
	call	qword ptr [rax+48h]
	cmp	eax,0FFh
	jnz	43C4EDh

l000000000043C500:
	mov	eax,1h
	jmp	43C49Bh
000000000043C507                      66 0F 1F 84 00 00 00 00 00        f........

l000000000043C510:
	xor	ebx,ebx
	test	r12,r12
	jz	43C4A0h

l000000000043C517:
	mov	r15d,1h
	jmp	43C493h

l000000000043C522:
	mov	rax,[rbx]
	mov	rcx,rbx
	call	qword ptr [rax+48h]
	cmp	eax,0FFh
	jz	43C510h

l000000000043C530:
	mov	esi,eax
	jmp	43C48Bh
000000000043C537                      90 90 90 90 90 90 90 90 90        .........

;; fn000000000043C540: 000000000043C540
fn000000000043C540 proc
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,78h
	mov	rbx,[rsp+0E0h]
	mov	rbp,[r8]
	mov	r15,[r8+8h]
	mov	r12,[r9]
	mov	rdi,rcx
	mov	r14,[r9+8h]
	mov	rsi,rdx
	mov	r13,[rsp+0E8h]
	lea	rcx,[rbx+0D0h]
	call	472F00h
	mov	[rsp+50h],rbp
	mov	[rsp+58h],r15
	lea	rcx,[rsp+60h]
	mov	[rsp+40h],r12
	mov	[rsp+48h],r14
	lea	r9,[rsp+40h]
	mov	rax,[rax+10h]
	lea	r8,[rsp+50h]
	mov	rdx,rsi
	mov	rax,[rax+20h]
	mov	[rsp+20h],rbx
	mov	[rsp+28h],r13
	mov	[rsp+38h],rax
	mov	rax,[rsp+0F0h]
	mov	[rsp+30h],rax
	call	43D6C0h
	mov	rdx,[rsp+68h]
	mov	rbx,[rsp+60h]
	mov	rax,0FFFFFFFF00000000h
	and	rax,r15
	mov	ebp,edx
	mov	esi,edx
	or	rbp,rax
	test	rbx,rbx
	jz	43C680h

l000000000043C5F6:
	cmp	edx,0FFh
	jz	43C642h

l000000000043C5FB:
	test	r12,r12
	jz	43C615h

l000000000043C600:
	xor	r15d,r15d

l000000000043C603:
	xor	eax,eax
	cmp	r14d,0FFh
	jz	43C651h

l000000000043C60B:
	cmp	r15b,al
	jnz	43C615h

l000000000043C610:
	or	dword ptr [r13+0h],2h

l000000000043C615:
	mov	edx,esi
	mov	rsi,0FFFFFFFF00000000h
	mov	rax,rdi
	and	rsi,rbp
	mov	[rdi],rbx
	or	rsi,rdx
	mov	[rdi+8h],rsi
	add	rsp,78h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret

l000000000043C642:
	mov	rax,[rbx+10h]
	cmp	rax,[rbx+18h]
	jnc	43C692h

l000000000043C64C:
	movzx	esi,byte ptr [rax]
	jmp	43C5FBh

l000000000043C651:
	mov	rax,[r12+18h]
	cmp	[r12+10h],rax
	jnc	43C661h

l000000000043C65D:
	xor	eax,eax
	jmp	43C60Bh

l000000000043C661:
	mov	rax,[r12]
	mov	rcx,r12
	call	qword ptr [rax+48h]
	cmp	eax,0FFh
	jnz	43C65Dh

l000000000043C670:
	mov	eax,1h
	jmp	43C60Bh
000000000043C677                      66 0F 1F 84 00 00 00 00 00        f........

l000000000043C680:
	xor	ebx,ebx
	test	r12,r12
	jz	43C610h

l000000000043C687:
	mov	r15d,1h
	jmp	43C603h

l000000000043C692:
	mov	rax,[rbx]
	mov	rcx,rbx
	call	qword ptr [rax+48h]
	cmp	eax,0FFh
	jz	43C680h

l000000000043C6A0:
	mov	esi,eax
	jmp	43C5FBh
000000000043C6A7                      90 90 90 90 90 90 90 90 90        .........

;; fn000000000043C6B0: 000000000043C6B0
fn000000000043C6B0 proc
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,+98h
	mov	rbx,[rsp+100h]
	mov	r14,[r8+8h]
	mov	rsi,rcx
	mov	rdi,rdx
	mov	r15,[r8]
	mov	rbp,[r9]
	mov	r13,[r9+8h]
	lea	rcx,[rbx+0D0h]
	mov	r12,[rsp+108h]
	call	472FC0h
	lea	rax,[rsp+8Ch]
	lea	r8,[rsp+60h]
	lea	rcx,[rsp+70h]
	lea	r9,[rsp+50h]
	mov	rdx,rdi
	mov	[rsp+40h],rbx
	mov	[rsp+48h],rax
	lea	rax,[rsp+88h]
	mov	qword ptr [rsp+38h],+4h
	mov	dword ptr [rsp+30h],270Fh
	mov	dword ptr [rsp+28h],0h
	mov	[rsp+20h],rax
	mov	[rsp+68h],r14
	mov	dword ptr [rsp+8Ch],0h
	mov	[rsp+60h],r15
	mov	[rsp+50h],rbp
	mov	[rsp+58h],r13
	call	43C990h
	mov	rdx,[rsp+78h]
	mov	rax,0FFFFFFFF00000000h
	mov	r8,[rsp+70h]
	and	rax,r14
	mov	edi,edx
	mov	r14,r8
	mov	ebx,edx
	or	rdi,rax
	mov	eax,[rsp+8Ch]
	test	eax,eax
	jnz	43C810h

l000000000043C791:
	mov	ecx,[rsp+88h]
	lea	r9d,[rcx+64h]
	lea	eax,[rcx-76Ch]
	test	ecx,ecx
	mov	rcx,[rsp+110h]
	cmovs	eax,r9d

l000000000043C7B0:
	mov	[rcx+14h],eax

l000000000043C7B3:
	test	r8,r8
	jz	43C860h

l000000000043C7BC:
	cmp	edx,0FFh
	jz	43C820h

l000000000043C7C1:
	test	rbp,rbp
	jz	43C7DBh

l000000000043C7C6:
	xor	r15d,r15d

l000000000043C7C9:
	xor	eax,eax
	cmp	r13d,0FFh
	jz	43C830h

l000000000043C7D1:
	cmp	r15b,al
	jnz	43C7DBh

l000000000043C7D6:
	or	dword ptr [r12],2h

l000000000043C7DB:
	mov	edx,ebx
	mov	rbx,0FFFFFFFF00000000h
	mov	rax,rsi
	and	rbx,rdi
	mov	[rsi],r14
	or	rbx,rdx
	mov	[rsi+8h],rbx
	add	rsp,+98h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret
000000000043C80B                                  0F 1F 44 00 00            ..D..

l000000000043C810:
	or	dword ptr [r12],4h
	jmp	43C7B3h
000000000043C817                      66 0F 1F 84 00 00 00 00 00        f........

l000000000043C820:
	mov	rax,[r8+10h]
	cmp	rax,[r8+18h]
	jnc	43C880h

l000000000043C82A:
	movzx	ebx,byte ptr [rax]
	jmp	43C7C1h
000000000043C82F                                              90                .

l000000000043C830:
	mov	rax,[rbp+18h]
	cmp	[rbp+10h],rax
	jnc	43C840h

l000000000043C83A:
	xor	eax,eax
	jmp	43C7D1h
000000000043C83E                                           66 90               f.

l000000000043C840:
	mov	rax,[rbp+0h]
	mov	rcx,rbp
	call	qword ptr [rax+48h]
	cmp	eax,0FFh
	jnz	43C83Ah

l000000000043C84F:
	mov	eax,1h
	jmp	43C7D1h
000000000043C859                            0F 1F 80 00 00 00 00          .......

l000000000043C860:
	xor	r14d,r14d
	test	rbp,rbp
	jz	43C7D6h

l000000000043C86C:
	mov	r15d,1h
	jmp	43C7C9h
000000000043C877                      66 0F 1F 84 00 00 00 00 00        f........

l000000000043C880:
	mov	rax,[r8]
	mov	rcx,r8
	call	qword ptr [rax+48h]
	cmp	eax,0FFh
	jz	43C860h

l000000000043C88E:
	mov	ebx,eax
	jmp	43C7C1h
000000000043C895                90 90 90 90 90 90 90 90 90 90 90      ...........

;; fn000000000043C8A0: 000000000043C8A0
fn000000000043C8A0 proc
	push	rbx
	sub	rsp,60h
	mov	r10,[r9+8h]
	mov	r9,[r9]
	mov	rbx,rcx
	mov	rcx,[rsp+0A0h]
	mov	rax,[rdx]
	movdqu	xmm1,[r8]
	lea	r8,[rsp+50h]
	mov	[rsp+40h],r9
	lea	r9,[rsp+40h]
	mov	[rsp+48h],r10
	mov	[rsp+30h],rcx
	mov	rcx,[rsp+98h]
	movaps	[rsp+50h],xmm1
	mov	[rsp+28h],rcx
	mov	rcx,[rsp+90h]
	mov	[rsp+20h],rcx
	mov	rcx,rbx
	call	qword ptr [rax+28h]
	mov	rax,rbx
	add	rsp,60h
	pop	rbx
	ret
000000000043C906                   90 90 90 90 90 90 90 90 90 90       ..........

;; fn000000000043C910: 000000000043C910
fn000000000043C910 proc
	xor	eax,eax
	ret
000000000043C913          90 90 90 90 90 90 90 90 90 90 90 90 90    .............

;; fn000000000043C920: 000000000043C920
fn000000000043C920 proc
	push	rbx
	sub	rsp,60h
	mov	r10,[r9+8h]
	mov	r9,[r9]
	mov	rbx,rcx
	mov	rcx,[rsp+0A0h]
	mov	rax,[rdx]
	movdqu	xmm1,[r8]
	lea	r8,[rsp+50h]
	mov	[rsp+40h],r9
	lea	r9,[rsp+40h]
	mov	[rsp+48h],r10
	mov	[rsp+30h],rcx
	mov	rcx,[rsp+98h]
	movaps	[rsp+50h],xmm1
	mov	[rsp+28h],rcx
	mov	rcx,[rsp+90h]
	mov	[rsp+20h],rcx
	mov	rcx,rbx
	call	qword ptr [rax+30h]
	mov	rax,rbx
	add	rsp,60h
	pop	rbx
	ret
000000000043C986                   90 90 90 90 90 90 90 90 90 90       ..........

;; fn000000000043C990: 000000000043C990
;;   Called from:
;;     000000000043C75C (in fn000000000043C6B0)
fn000000000043C990 proc
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,48h
	mov	rax,[r8+8h]
	mov	r10d,[r9+8h]
	mov	ebx,0Ah
	mov	[rsp+90h],rcx
	mov	r14,[r9]
	mov	r15d,[rsp+0C0h]
	mov	rsi,[r8]
	mov	[rsp+28h],rax
	mov	edi,eax
	mov	rax,[rsp+0D0h]
	mov	[rsp+34h],r10d
	lea	rcx,[rax+0D0h]
	call	472FC0h
	cmp	qword ptr [rsp+0C8h],2h
	mov	r9,rax
	mov	r10d,[rsp+34h]
	jz	43CA0Bh

l000000000043C9F6:
	cmp	qword ptr [rsp+0C8h],4h
	mov	eax,1h
	mov	bx,3E8h
	cmovnz	ebx,eax

l000000000043CA0B:
	mov	[rsp+0C0h],r15d
	mov	r15,r9
	mov	r9d,[rsp+0C0h]
	xor	ebp,ebp
	xor	r13d,r13d
	mov	r11d,66666667h
	nop	dword ptr [rax+0h]

l000000000043CA30:
	test	rsi,rsi
	jz	43CC81h

l000000000043CA39:
	cmp	edi,0FFh
	jz	43CB80h

l000000000043CA42:
	test	r14,r14
	jz	43CD31h

l000000000043CA4B:
	xor	r12d,r12d

l000000000043CA4E:
	xor	eax,eax
	cmp	r10d,0FFh
	jz	43CB60h

l000000000043CA5A:
	cmp	al,r12b
	jnz	43CAC1h

l000000000043CA5F:
	cmp	[rsp+0C8h],r13
	jz	43CA85h

l000000000043CA69:
	cmp	r13,2h
	jnz	43CCA0h

l000000000043CA73:
	cmp	qword ptr [rsp+0C8h],4h
	jnz	43CCA0h

l000000000043CA82:
	sub	ebp,64h

l000000000043CA85:
	mov	rax,[rsp+0B0h]
	mov	[rax],ebp

l000000000043CA8F:
	mov	rax,0FFFFFFFF00000000h
	and	rax,[rsp+28h]
	or	rdi,rax
	mov	rax,[rsp+90h]
	mov	[rax],rsi
	mov	[rax+8h],rdi
	add	rsp,48h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret

l000000000043CAC1:
	cmp	r13,[rsp+0C8h]
	jnc	43CA5Fh

l000000000043CACB:
	test	rsi,rsi
	jz	43CD44h

l000000000043CAD4:
	cmp	edi,0FFh
	jz	43CBA0h

l000000000043CADD:
	mov	edx,edi
	movzx	r12d,dil

l000000000043CAE3:
	movsx	ecx,byte ptr [r15+139h]
	test	cl,cl
	jz	43CBC0h

l000000000043CAF4:
	lea	eax,[rcx-30h]
	cmp	al,9h
	ja	43CA5Fh

l000000000043CAFF:
	lea	eax,[rbp+rbp*4+0h]
	lea	ebp,[rcx+rax*2-30h]
	mov	eax,ebp
	imul	eax,ebx
	cmp	eax,r9d
	jg	43CA5Fh

l000000000043CB15:
	add	eax,ebx
	cmp	[rsp+0B8h],eax
	jge	43CA5Fh

l000000000043CB24:
	mov	eax,ebx
	sar	ebx,1Fh
	imul	r11d
	sar	edx,2h
	sub	edx,ebx
	test	rsi,rsi
	mov	ebx,edx
	jz	43CB53h

l000000000043CB38:
	mov	rax,[rsi+10h]
	cmp	rax,[rsi+18h]
	jnc	43CBF0h

l000000000043CB46:
	add	rax,1h
	mov	[rsi+10h],rax

l000000000043CB4E:
	mov	edi,0FFFFFFFFh

l000000000043CB53:
	add	r13,1h
	jmp	43CA30h
000000000043CB5C                                     0F 1F 40 00             ..@.

l000000000043CB60:
	mov	rax,[r14+10h]
	cmp	rax,[r14+18h]
	jnc	43CCB0h

l000000000043CB6E:
	movzx	r10d,byte ptr [rax]

l000000000043CB72:
	xor	eax,eax
	jmp	43CA5Ah
000000000043CB79                            0F 1F 80 00 00 00 00          .......

l000000000043CB80:
	mov	rax,[rsi+10h]
	cmp	rax,[rsi+18h]
	jnc	43CC51h

l000000000043CB8E:
	movzx	edi,byte ptr [rax]
	jmp	43CA42h
000000000043CB96                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l000000000043CBA0:
	mov	rax,[rsi+10h]
	cmp	rax,[rsi+18h]
	jnc	43CCF0h

l000000000043CBAE:
	movzx	edi,byte ptr [rax]
	jmp	43CADDh
000000000043CBB6                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l000000000043CBC0:
	mov	rax,[r15]
	movsx	ecx,dl
	lea	rdx,[000000000042B620]                                 ; [rip+FFFEEA53]
	mov	rax,[rax+40h]
	cmp	rax,rdx
	jnz	43CC20h

l000000000043CBD6:
	cmp	cl,2Ah
	jz	43CA5Fh

l000000000043CBDF:
	mov	[r15+139h],cl
	jmp	43CAF4h
000000000043CBEC                                     0F 1F 40 00             ..@.

l000000000043CBF0:
	mov	rax,[rsi]
	mov	[rsp+3Ch],r9d
	mov	rcx,rsi
	mov	[rsp+38h],r10d
	mov	[rsp+34h],r11d
	call	qword ptr [rax+50h]
	mov	r9d,[rsp+3Ch]
	mov	r10d,[rsp+38h]
	mov	r11d,[rsp+34h]
	jmp	43CB4Eh
000000000043CC1C                                     0F 1F 40 00             ..@.

l000000000043CC20:
	mov	[rsp+3Ch],r9d
	mov	[rsp+38h],r10d
	movsx	edx,cl
	mov	[rsp+34h],r11d
	mov	rcx,r15
	mov	r8d,2Ah
	call	rax
	mov	r9d,[rsp+3Ch]
	movsx	ecx,al
	mov	r10d,[rsp+38h]
	mov	r11d,[rsp+34h]
	jmp	43CBD6h

l000000000043CC51:
	mov	rax,[rsi]
	mov	[rsp+3Ch],r9d
	mov	rcx,rsi
	mov	[rsp+38h],r10d
	mov	[rsp+34h],r11d
	call	qword ptr [rax+48h]
	cmp	eax,0FFh
	mov	r11d,[rsp+34h]
	mov	r10d,[rsp+38h]
	mov	r9d,[rsp+3Ch]
	jnz	43CD54h

l000000000043CC81:
	xor	esi,esi
	test	r14,r14
	jz	43CA5Fh

l000000000043CC8C:
	mov	r12d,1h
	jmp	43CA4Eh
000000000043CC97                      66 0F 1F 84 00 00 00 00 00        f........

l000000000043CCA0:
	mov	rax,[rsp+0D8h]
	or	dword ptr [rax],4h
	jmp	43CA8Fh

l000000000043CCB0:
	mov	rax,[r14]
	mov	[rsp+38h],r9d
	mov	rcx,r14
	mov	[rsp+34h],r11d
	call	qword ptr [rax+48h]
	cmp	eax,0FFh
	mov	r10d,eax
	mov	r11d,[rsp+34h]
	mov	r9d,[rsp+38h]
	jnz	43CB72h

l000000000043CCD9:
	mov	eax,1h
	xor	r14d,r14d
	jmp	43CA5Ah
000000000043CCE6                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l000000000043CCF0:
	mov	rax,[rsi]
	mov	[rsp+3Ch],r9d
	mov	rcx,rsi
	mov	[rsp+38h],r10d
	mov	[rsp+34h],r11d
	call	qword ptr [rax+48h]
	mov	edi,eax
	mov	r11d,[rsp+34h]
	mov	r10d,[rsp+38h]
	cmp	edi,0FFh
	mov	r9d,[rsp+3Ch]
	jnz	43CADDh

l000000000043CD22:
	mov	r12d,0FFh
	mov	edx,edi
	xor	esi,esi
	jmp	43CAE3h

l000000000043CD31:
	cmp	r13,[rsp+0C8h]
	jnc	43CA5Fh

l000000000043CD3F:
	jmp	43CADDh

l000000000043CD44:
	mov	r12d,0FFh
	mov	edx,0FFFFFFFFh
	jmp	43CAE3h

l000000000043CD54:
	mov	edi,eax
	jmp	43CA42h
000000000043CD5B                                  90 90 90 90 90            .....

;; fn000000000043CD60: 000000000043CD60
fn000000000043CD60 proc
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,+108h
	mov	rax,[rsp+170h]
	mov	r14,[r8+8h]
	mov	rsi,rcx
	mov	r13,[r8]
	mov	r15,rdx
	mov	rdi,[r9]
	mov	r12,[r9+8h]
	lea	rbp,[rax+0D0h]
	mov	rcx,rbp
	call	472F00h
	mov	rcx,rbp
	mov	rbx,rax
	call	472FC0h
	mov	rax,[rbx+10h]
	lea	rcx,[rsp+70h]
	lea	r9,[rsp+50h]
	lea	r8,[rsp+60h]
	mov	rdx,[rax+90h]
	mov	[rsp+90h],rdx
	mov	rdx,[rax+98h]
	mov	rax,[rax+0A0h]
	mov	[rsp+98h],rdx
	mov	rdx,r15
	mov	[rsp+0A0h],rax
	mov	rax,[rbx+10h]
	mov	rax,[rax+0A8h]
	mov	[rsp+0A8h],rax
	mov	rax,[rbx+10h]
	mov	rax,[rax+0B0h]
	mov	[rsp+0B0h],rax
	mov	rax,[rbx+10h]
	mov	rax,[rax+0B8h]
	mov	[rsp+0B8h],rax
	mov	rax,[rbx+10h]
	mov	rax,[rax+0C0h]
	mov	[rsp+0C0h],rax
	mov	rax,[rbx+10h]
	mov	rax,[rax+58h]
	mov	[rsp+0C8h],rax
	mov	rax,[rbx+10h]
	mov	rax,[rax+60h]
	mov	[rsp+0D0h],rax
	mov	rax,[rbx+10h]
	mov	rax,[rax+68h]
	mov	[rsp+0D8h],rax
	mov	rax,[rbx+10h]
	mov	rax,[rax+70h]
	mov	[rsp+0E0h],rax
	mov	rax,[rbx+10h]
	mov	rax,[rax+78h]
	mov	[rsp+0E8h],rax
	mov	rax,[rbx+10h]
	mov	dword ptr [rsp+8Ch],0h
	mov	rax,[rax+80h]
	mov	[rsp+0F0h],rax
	mov	rax,[rbx+10h]
	mov	rax,[rax+88h]
	mov	qword ptr [rsp+30h],+7h
	mov	[rsp+60h],r13
	mov	[rsp+68h],r14
	mov	[rsp+50h],rdi
	mov	[rsp+58h],r12
	mov	[rsp+0F8h],rax
	lea	rax,[rsp+8Ch]
	mov	[rsp+40h],rax
	mov	rax,[rsp+170h]
	mov	[rsp+38h],rax
	lea	rax,[rsp+90h]
	mov	[rsp+28h],rax
	lea	rax,[rsp+88h]
	mov	[rsp+20h],rax
	call	43EA80h
	mov	rdx,[rsp+78h]
	mov	rax,0FFFFFFFF00000000h
	mov	rcx,[rsp+70h]
	and	rax,r14
	mov	r13d,edx
	mov	r14,rcx
	mov	ebx,edx
	or	r13,rax
	mov	eax,[rsp+8Ch]
	test	eax,eax
	jnz	43CFB0h

l000000000043CF3C:
	mov	r8d,[rsp+88h]
	mov	rax,[rsp+180h]
	mov	[rax+18h],r8d

l000000000043CF50:
	test	rcx,rcx
	jz	43D000h

l000000000043CF59:
	cmp	edx,0FFh
	jz	43CFC0h

l000000000043CF5E:
	test	rdi,rdi
	jz	43CF7Eh

l000000000043CF63:
	xor	r15d,r15d

l000000000043CF66:
	xor	eax,eax
	cmp	r12d,0FFh
	jz	43CFD0h

l000000000043CF6E:
	cmp	r15b,al
	jnz	43CF7Eh

l000000000043CF73:
	mov	rax,[rsp+178h]
	or	dword ptr [rax],2h

l000000000043CF7E:
	mov	edx,ebx
	mov	rbx,0FFFFFFFF00000000h
	mov	rax,rsi
	and	rbx,r13
	mov	[rsi],r14
	or	rbx,rdx
	mov	[rsi+8h],rbx
	add	rsp,+108h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret
000000000043CFAE                                           66 90               f.

l000000000043CFB0:
	mov	rax,[rsp+178h]
	or	dword ptr [rax],4h
	jmp	43CF50h
000000000043CFBD                                        0F 1F 00              ...

l000000000043CFC0:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	43D020h

l000000000043CFCA:
	movzx	ebx,byte ptr [rax]
	jmp	43CF5Eh
000000000043CFCF                                              90                .

l000000000043CFD0:
	mov	rax,[rdi+18h]
	cmp	[rdi+10h],rax
	jnc	43CFE0h

l000000000043CFDA:
	xor	eax,eax
	jmp	43CF6Eh
000000000043CFDE                                           66 90               f.

l000000000043CFE0:
	mov	rax,[rdi]
	mov	rcx,rdi
	call	qword ptr [rax+48h]
	cmp	eax,0FFh
	jnz	43CFDAh

l000000000043CFEE:
	mov	eax,1h
	jmp	43CF6Eh
000000000043CFF8                         0F 1F 84 00 00 00 00 00         ........

l000000000043D000:
	xor	r14d,r14d
	test	rdi,rdi
	jz	43CF73h

l000000000043D00C:
	mov	r15d,1h
	jmp	43CF66h
000000000043D017                      66 0F 1F 84 00 00 00 00 00        f........

l000000000043D020:
	mov	rax,[rcx]
	call	qword ptr [rax+48h]
	cmp	eax,0FFh
	jz	43D000h

l000000000043D02B:
	mov	ebx,eax
	jmp	43CF5Eh
000000000043D032       90 90 90 90 90 90 90 90 90 90 90 90 90 90   ..............

;; fn000000000043D040: 000000000043D040
fn000000000043D040 proc
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,68h
	lea	rbp,[rsp+80h]
	mov	rax,[r8]
	mov	rdx,[r8+8h]
	mov	rdi,[rbp+60h]
	mov	[rbp+30h],rcx
	mov	r13,[rbp+58h]
	mov	rsi,[rbp+70h]
	mov	[rbp-30h],rax
	mov	rax,[r9]
	mov	[rbp-28h],rdx
	mov	rdx,[r9+8h]
	mov	[rbp-40h],rax
	mov	rax,[rbp+68h]
	mov	[rbp-38h],rdx
	lea	rcx,[rax+0D0h]
	call	472FC0h
	mov	r15,rax
	lea	rax,[001Eh+rdi*4]
	and	rax,0F0h
	call	4116F0h
	sub	rsp,rax
	lea	rdx,[rbp-30h]
	lea	rax,[rbp-40h]
	lea	r14,[rsp+20h]
	mov	rcx,rdx
	mov	[rbp-48h],rdx
	mov	rdx,rax
	mov	[rbp-58h],rax
	call	42AF60h
	test	al,al
	jz	43D0FBh

l000000000043D0D1:
	or	dword ptr [rsi],4h

l000000000043D0D4:
	mov	rsi,[rbp+30h]
	mov	rax,[rbp-30h]
	mov	rdx,[rbp-28h]
	mov	[rsi],rax
	mov	rax,rsi
	mov	[rsi+8h],rdx
	lea	rsp,[rbp-18h]
	pop	rbx
	pop	rsi
	pop	rdi
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret

l000000000043D0FB:
	mov	rcx,[rbp-48h]
	call	42B050h
	test	rdi,rdi
	mov	r11d,eax
	jz	43D0D1h

l000000000043D10C:
	xor	ebx,ebx
	xor	r12d,r12d
	jmp	43D133h

l000000000043D113:
	mov	rax,[r15]
	mov	[rbp-49h],r11b
	mov	rcx,r15
	call	qword ptr [rax+10h]
	movzx	r11d,byte ptr [rbp-49h]
	cmp	r11b,al
	jz	43D140h

l000000000043D12A:
	add	rbx,1h
	cmp	rbx,rdi
	jz	43D151h

l000000000043D133:
	mov	rax,[r13+rbx*8+0h]
	movsx	edx,byte ptr [rax]
	cmp	dl,r11b
	jnz	43D113h

l000000000043D140:
	mov	[r14],ebx
	add	rbx,1h
	add	r12,1h
	cmp	rbx,rdi
	jnz	43D133h

l000000000043D151:
	xor	ebx,ebx

l000000000043D153:
	cmp	r12,1h
	jbe	43D273h

l000000000043D15D:
	movsxd	rax,dword ptr [r14]
	mov	r15d,1h
	mov	rcx,[r13+rax*8+0h]
	call	41BCB8h
	mov	rdi,rax

l000000000043D173:
	movsxd	rax,dword ptr [r14+r15*4]
	mov	rcx,[r13+rax*8+0h]
	call	41BCB8h
	cmp	rdi,rax
	cmova	rdi,rax

l000000000043D188:
	add	r15,1h
	cmp	r15,r12
	jc	43D173h

l000000000043D191:
	mov	rcx,[rbp-30h]
	test	rcx,rcx
	jz	43D1B7h

l000000000043D19A:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	43D268h

l000000000043D1A8:
	add	rax,1h
	mov	[rcx+10h],rax

l000000000043D1B0:
	mov	dword ptr [rbp-28h],0FFFFFFFFh

l000000000043D1B7:
	add	rbx,1h
	cmp	rbx,rdi
	jnc	43D0D1h

l000000000043D1C4:
	mov	rdx,[rbp-58h]
	mov	rcx,[rbp-48h]
	call	42AF60h
	test	al,al
	jnz	43D0D1h

l000000000043D1D9:
	xor	edi,edi
	jmp	43D1F9h
000000000043D1DD                                        0F 1F 00              ...

l000000000043D1E0:
	cmp	r10b,al
	jz	43D230h

l000000000043D1E5:
	sub	r12,1h
	mov	eax,[r14]
	mov	[r15],eax

l000000000043D1F0:
	cmp	r12,rdi
	jbe	43D153h

l000000000043D1F9:
	lea	r15,[r14+rdi*4]
	mov	rcx,[rbp-30h]
	movsxd	rax,dword ptr [r15]
	test	rcx,rcx
	mov	rax,[r13+rax*8+0h]
	movzx	r10d,byte ptr [rax+rbx]
	jz	43D25Eh

l000000000043D213:
	mov	eax,[rbp-28h]
	cmp	eax,0FFh
	jnz	43D1E0h

l000000000043D21B:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	43D240h

l000000000043D225:
	movzx	eax,byte ptr [rax]

l000000000043D228:
	cmp	r10b,al
	mov	[rbp-28h],eax
	jnz	43D1E5h

l000000000043D230:
	add	rdi,1h
	jmp	43D1F0h
000000000043D236                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l000000000043D240:
	mov	rax,[rcx]
	mov	[rbp-49h],r10b
	call	qword ptr [rax+48h]
	cmp	eax,0FFh
	movzx	r10d,byte ptr [rbp-49h]
	jnz	43D228h

l000000000043D254:
	mov	qword ptr [rbp-30h],+0h
	jmp	43D1E0h

l000000000043D25E:
	mov	eax,0FFFFFFFFh
	jmp	43D1E0h

l000000000043D268:
	mov	rax,[rcx]
	call	qword ptr [rax+50h]
	jmp	43D1B0h

l000000000043D273:
	cmp	r12,1h
	jnz	43D0D1h

l000000000043D27D:
	mov	rcx,[rbp-30h]
	test	rcx,rcx
	jz	43D292h

l000000000043D286:
	call	462490h
	mov	dword ptr [rbp-28h],0FFFFFFFFh

l000000000043D292:
	movsxd	rax,dword ptr [r14]
	add	rbx,1h
	mov	r14d,eax
	mov	rax,[r13+rax*8+0h]
	mov	rcx,rax
	mov	rdi,rax
	call	41BCB8h
	cmp	rax,rbx
	mov	r13,rax
	jbe	43D2C5h

l000000000043D2B4:
	mov	rdx,[rbp-58h]
	mov	rcx,[rbp-48h]
	call	42AF60h
	test	al,al
	jz	43D2DAh

l000000000043D2C5:
	cmp	rbx,r13
	jnz	43D0D1h

l000000000043D2CE:
	mov	rax,[rbp+50h]
	mov	[rax],r14d
	jmp	43D0D4h

l000000000043D2DA:
	movzx	r15d,byte ptr [rdi+rbx]
	mov	rcx,[rbp-48h]
	call	42B050h
	cmp	r15b,al
	jnz	43D2C5h

l000000000043D2ED:
	mov	rcx,[rbp-30h]
	test	rcx,rcx
	jz	43D302h

l000000000043D2F6:
	call	462490h
	mov	dword ptr [rbp-28h],0FFFFFFFFh

l000000000043D302:
	add	rbx,1h
	cmp	r13,rbx
	ja	43D2B4h

l000000000043D30B:
	jmp	43D2C5h
000000000043D30D                                        90 90 90              ...

;; fn000000000043D310: 000000000043D310
fn000000000043D310 proc
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,+158h
	mov	rax,[rsp+1C0h]
	mov	r14,[r8+8h]
	mov	rsi,rcx
	mov	r13,[r8]
	mov	r15,rdx
	mov	rdi,[r9]
	mov	r12,[r9+8h]
	lea	rbp,[rax+0D0h]
	mov	rcx,rbp
	call	472F00h
	mov	rcx,rbp
	mov	rbx,rax
	call	472FC0h
	mov	rax,[rbx+10h]
	lea	rcx,[rsp+70h]
	lea	r9,[rsp+50h]
	lea	r8,[rsp+60h]
	mov	rdx,[rax+128h]
	mov	[rsp+90h],rdx
	mov	rdx,[rax+130h]
	mov	rax,[rax+138h]
	mov	[rsp+98h],rdx
	mov	rdx,r15
	mov	[rsp+0A0h],rax
	mov	rax,[rbx+10h]
	mov	rax,[rax+140h]
	mov	[rsp+0A8h],rax
	mov	rax,[rbx+10h]
	mov	rax,[rax+148h]
	mov	[rsp+0B0h],rax
	mov	rax,[rbx+10h]
	mov	rax,[rax+150h]
	mov	[rsp+0B8h],rax
	mov	rax,[rbx+10h]
	mov	rax,[rax+158h]
	mov	[rsp+0C0h],rax
	mov	rax,[rbx+10h]
	mov	rax,[rax+160h]
	mov	[rsp+0C8h],rax
	mov	rax,[rbx+10h]
	mov	rax,[rax+168h]
	mov	[rsp+0D0h],rax
	mov	rax,[rbx+10h]
	mov	rax,[rax+170h]
	mov	[rsp+0D8h],rax
	mov	rax,[rbx+10h]
	mov	rax,[rax+178h]
	mov	[rsp+0E0h],rax
	mov	rax,[rbx+10h]
	mov	rax,[rax+180h]
	mov	[rsp+0E8h],rax
	mov	rax,[rbx+10h]
	mov	rax,[rax+0C8h]
	mov	[rsp+0F0h],rax
	mov	rax,[rbx+10h]
	mov	rax,[rax+0D0h]
	mov	[rsp+0F8h],rax
	mov	rax,[rbx+10h]
	mov	rax,[rax+0D8h]
	mov	[rsp+100h],rax
	mov	rax,[rbx+10h]
	mov	rax,[rax+0E0h]
	mov	[rsp+108h],rax
	mov	rax,[rbx+10h]
	mov	rax,[rax+0E8h]
	mov	[rsp+110h],rax
	mov	rax,[rbx+10h]
	mov	rax,[rax+0F0h]
	mov	[rsp+118h],rax
	mov	rax,[rbx+10h]
	mov	rax,[rax+0F8h]
	mov	[rsp+120h],rax
	mov	rax,[rbx+10h]
	mov	rax,[rax+100h]
	mov	[rsp+128h],rax
	mov	rax,[rbx+10h]
	mov	rax,[rax+108h]
	mov	[rsp+130h],rax
	mov	rax,[rbx+10h]
	mov	rax,[rax+110h]
	mov	[rsp+138h],rax
	mov	rax,[rbx+10h]
	mov	rax,[rax+118h]
	mov	[rsp+140h],rax
	mov	rax,[rbx+10h]
	mov	dword ptr [rsp+8Ch],0h
	mov	rax,[rax+120h]
	mov	qword ptr [rsp+30h],+0Ch
	mov	[rsp+60h],r13
	mov	[rsp+68h],r14
	mov	[rsp+50h],rdi
	mov	[rsp+58h],r12
	mov	[rsp+148h],rax
	lea	rax,[rsp+8Ch]
	mov	[rsp+40h],rax
	mov	rax,[rsp+1C0h]
	mov	[rsp+38h],rax
	lea	rax,[rsp+90h]
	mov	[rsp+28h],rax
	lea	rax,[rsp+88h]
	mov	[rsp+20h],rax
	call	43EA80h
	mov	rdx,[rsp+78h]
	mov	rax,0FFFFFFFF00000000h
	mov	rcx,[rsp+70h]
	and	rax,r14
	mov	r13d,edx
	mov	r14,rcx
	mov	ebx,edx
	or	r13,rax
	mov	eax,[rsp+8Ch]
	test	eax,eax
	jnz	43D630h

l000000000043D5B9:
	mov	r8d,[rsp+88h]
	mov	rax,[rsp+1D0h]
	mov	[rax+10h],r8d

l000000000043D5CD:
	test	rcx,rcx
	jz	43D680h

l000000000043D5D6:
	cmp	edx,0FFh
	jz	43D640h

l000000000043D5DB:
	test	rdi,rdi
	jz	43D5FBh

l000000000043D5E0:
	xor	r15d,r15d

l000000000043D5E3:
	xor	eax,eax
	cmp	r12d,0FFh
	jz	43D650h

l000000000043D5EB:
	cmp	r15b,al
	jnz	43D5FBh

l000000000043D5F0:
	mov	rax,[rsp+1C8h]
	or	dword ptr [rax],2h

l000000000043D5FB:
	mov	edx,ebx
	mov	rbx,0FFFFFFFF00000000h
	mov	rax,rsi
	and	rbx,r13
	mov	[rsi],r14
	or	rbx,rdx
	mov	[rsi+8h],rbx
	add	rsp,+158h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret
000000000043D62B                                  0F 1F 44 00 00            ..D..

l000000000043D630:
	mov	rax,[rsp+1C8h]
	or	dword ptr [rax],4h
	jmp	43D5CDh
000000000043D63D                                        0F 1F 00              ...

l000000000043D640:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	43D6A0h

l000000000043D64A:
	movzx	ebx,byte ptr [rax]
	jmp	43D5DBh
000000000043D64F                                              90                .

l000000000043D650:
	mov	rax,[rdi+18h]
	cmp	[rdi+10h],rax
	jnc	43D660h

l000000000043D65A:
	xor	eax,eax
	jmp	43D5EBh
000000000043D65E                                           66 90               f.

l000000000043D660:
	mov	rax,[rdi]
	mov	rcx,rdi
	call	qword ptr [rax+48h]
	cmp	eax,0FFh
	jnz	43D65Ah

l000000000043D66E:
	mov	eax,1h
	jmp	43D5EBh
000000000043D678                         0F 1F 84 00 00 00 00 00         ........

l000000000043D680:
	xor	r14d,r14d
	test	rdi,rdi
	jz	43D5F0h

l000000000043D68C:
	mov	r15d,1h
	jmp	43D5E3h
000000000043D697                      66 0F 1F 84 00 00 00 00 00        f........

l000000000043D6A0:
	mov	rax,[rcx]
	call	qword ptr [rax+48h]
	cmp	eax,0FFh
	jz	43D680h

l000000000043D6AB:
	mov	ebx,eax
	jmp	43D5DBh
000000000043D6B2       90 90 90 90 90 90 90 90 90 90 90 90 90 90   ..............

;; fn000000000043D6C0: 000000000043D6C0
;;   Called from:
;;     000000000043C45A (in fn000000000043C3D0)
;;     000000000043C5CA (in fn000000000043C540)
fn000000000043D6C0 proc
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,+148h
	mov	rax,[r8]
	mov	rbx,[rsp+1C8h]
	xor	r13d,r13d
	mov	[rsp+198h],rdx
	mov	rdx,[r8+8h]
	lea	r12,[rsp+0D8h]
	mov	[rsp+190h],rcx
	mov	[rsp+0C0h],rax
	mov	rax,[r9]
	mov	[rsp+0C8h],rdx
	mov	rdx,[r9+8h]
	mov	[rsp+0B0h],rax
	mov	rax,[rsp+1B0h]
	mov	[rsp+0B8h],rdx
	lea	rsi,[rax+0D0h]
	mov	rcx,rsi
	call	472F00h
	mov	rcx,rsi
	mov	rdi,rax
	call	472FC0h
	mov	rcx,rbx
	mov	rbp,rax
	mov	r15,rdi
	call	41BCB8h
	mov	rsi,rax
	lea	rax,[rsp+0C0h]
	mov	rdx,[rsp+0C0h]
	mov	r14,[rsp+1B0h]
	mov	rdi,[rsp+1C0h]
	mov	[rsp+68h],rax
	lea	rax,[rsp+0A0h]
	mov	dword ptr [rsp+0D8h],0h
	mov	[rsp+50h],rax
	lea	rax,[rsp+80h]
	mov	[rsp+58h],rax
	lea	rax,[rsp+90h]
	mov	[rsp+60h],rax
	nop

l000000000043D7B0:
	test	rdx,rdx
	jz	43D8AEh

l000000000043D7B9:
	cmp	dword ptr [rsp+0C8h],0FFh
	jz	43D985h

l000000000043D7C7:
	mov	rcx,[rsp+0B0h]
	test	rcx,rcx
	jz	43D7EEh

l000000000043D7D4:
	xor	edx,edx
	xor	eax,eax
	cmp	dword ptr [rsp+0B8h],0FFh
	jz	43D8D0h

l000000000043D7E6:
	cmp	dl,al
	jz	43D8F2h

l000000000043D7EE:
	cmp	r13,rsi
	mov	eax,[rsp+0D8h]
	jnc	43D8F9h

l000000000043D7FE:
	test	eax,eax
	jnz	43D8F9h

l000000000043D806:
	lea	r9,[rbx+r13]
	movsx	edx,byte ptr [r9]
	movzx	r11d,dl
	movzx	eax,byte ptr [rbp+r11+139h]
	test	al,al
	jz	43D9A2h

l000000000043D823:
	cmp	al,25h
	jnz	43D943h

l000000000043D82B:
	movzx	r9d,byte ptr [rbx+r13+1h]
	lea	r11,[r13+1h]
	movzx	ecx,byte ptr [rbp+r9+139h]
	mov	rdx,r9
	test	cl,cl
	jz	43DA70h

l000000000043D849:
	cmp	cl,4Fh
	mov	dword ptr [rsp+0DCh],0h
	jz	43D9D0h

l000000000043D85D:
	cmp	cl,45h
	jz	43D9D0h

l000000000043D866:
	mov	r13,r11

l000000000043D869:
	sub	ecx,41h
	cmp	cl,38h
	ja	43DB13h

l000000000043D875:
	lea	rax,[000000000048DF48]                                 ; [rip+000506CC]
	movzx	ecx,cl
	movsxd	rdx,dword ptr [rax+rcx*4]
	add	rax,rdx
	jmp	rax
000000000043D888                         0F 1F 84 00 00 00 00 00         ........

l000000000043D890:
	mov	rax,[rdx]
	mov	rcx,rdx
	call	qword ptr [rax+48h]
	cmp	eax,0FFh
	jnz	43D996h

l000000000043D8A2:
	mov	qword ptr [rsp+0C0h],+0h

l000000000043D8AE:
	mov	rcx,[rsp+0B0h]
	test	rcx,rcx
	jz	43D8F2h

l000000000043D8BB:
	xor	eax,eax
	cmp	dword ptr [rsp+0B8h],0FFh
	mov	edx,1h
	jnz	43D7E6h

l000000000043D8D0:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	43E8A0h

l000000000043D8DE:
	movzx	eax,byte ptr [rax]

l000000000043D8E1:
	mov	[rsp+0B8h],eax
	xor	eax,eax
	cmp	dl,al
	jnz	43D7EEh

l000000000043D8F2:
	mov	eax,[rsp+0D8h]

l000000000043D8F9:
	test	eax,eax
	jnz	43D902h

l000000000043D8FD:
	cmp	r13,rsi
	jz	43D90Dh

l000000000043D902:
	mov	rax,[rsp+1B8h]
	or	dword ptr [rax],4h

l000000000043D90D:
	mov	rdi,[rsp+190h]
	mov	rax,[rsp+0C0h]
	mov	rdx,[rsp+0C8h]
	mov	[rdi],rax
	mov	rax,rdi
	mov	[rdi+8h],rdx
	add	rsp,+148h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret

l000000000043D943:
	mov	rcx,[rsp+0C0h]
	movzx	r8d,byte ptr [r9]
	test	rcx,rcx
	mov	rdx,rcx
	jz	43DACAh

l000000000043D95B:
	mov	eax,[rsp+0C8h]
	cmp	eax,0FFh
	jz	43DA20h

l000000000043D96B:
	cmp	r8b,al
	jz	43DA3Fh

l000000000043D974:
	or	dword ptr [rsp+0D8h],4h

l000000000043D97C:
	add	r13,1h
	jmp	43D7B0h

l000000000043D985:
	mov	rax,[rdx+10h]
	cmp	rax,[rdx+18h]
	jnc	43D890h

l000000000043D993:
	movzx	eax,byte ptr [rax]

l000000000043D996:
	mov	[rsp+0C8h],eax
	jmp	43D7C7h

l000000000043D9A2:
	mov	rax,[rbp+0h]
	lea	rcx,[000000000042B620]                                 ; [rip+FFFEDC73]
	mov	rax,[rax+40h]
	cmp	rax,rcx
	jnz	43DAF0h

l000000000043D9BA:
	test	dl,dl
	jz	43D943h

l000000000043D9BE:
	mov	[rbp+r11+139h],dl
	mov	eax,edx
	jmp	43D823h
000000000043D9CD                                        0F 1F 00              ...

l000000000043D9D0:
	add	r13,2h
	movzx	r9d,byte ptr [rbx+r13]
	movzx	ecx,byte ptr [rbp+r9+139h]
	mov	rax,r9
	test	cl,cl
	jnz	43D869h

l000000000043D9ED:
	mov	rdx,[rbp+0h]
	mov	r11,[rdx+40h]
	lea	rdx,[000000000042B620]                                 ; [rip+FFFEDC24]
	cmp	r11,rdx
	jnz	43E9C2h

l000000000043DA05:
	test	al,al
	jz	43DB13h

l000000000043DA0D:
	mov	[rbp+r9+139h],al
	mov	ecx,eax
	jmp	43D869h
000000000043DA1C                                     0F 1F 40 00             ..@.

l000000000043DA20:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	43DAA4h

l000000000043DA2A:
	movzx	r9d,byte ptr [rax]
	cmp	r8b,r9b
	mov	[rsp+0C8h],r9d
	jnz	43D974h

l000000000043DA3F:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	43E9DEh

l000000000043DA4D:
	add	rax,1h
	mov	[rcx+10h],rax

l000000000043DA55:
	mov	dword ptr [rsp+0C8h],0FFFFFFFFh
	mov	rdx,rcx
	jmp	43D97Ch
000000000043DA68                         0F 1F 84 00 00 00 00 00         ........

l000000000043DA70:
	mov	rax,[rbp+0h]
	lea	rcx,[000000000042B620]                                 ; [rip+FFFEDBA5]
	mov	rax,[rax+40h]
	cmp	rax,rcx
	jnz	43E8D0h

l000000000043DA88:
	test	dl,dl
	jnz	43DAE0h

l000000000043DA8C:
	or	dword ptr [rsp+0D8h],4h
	mov	rdx,[rsp+0C0h]
	mov	r13,r11
	jmp	43D97Ch

l000000000043DAA4:
	mov	rax,[rcx]
	mov	[rsp+70h],r8b
	call	qword ptr [rax+48h]
	cmp	eax,0FFh
	movzx	r8d,byte ptr [rsp+70h]
	jnz	43EA4Ch

l000000000043DABE:
	mov	qword ptr [rsp+0C0h],+0h

l000000000043DACA:
	xor	edx,edx
	cmp	r8b,0FFh
	jnz	43D974h

l000000000043DAD6:
	jmp	43D97Ch
000000000043DADB                                  0F 1F 44 00 00            ..D..

l000000000043DAE0:
	mov	[rbp+r9+139h],dl
	mov	ecx,edx
	jmp	43D849h
000000000043DAEF                                              90                .

l000000000043DAF0:
	mov	[rsp+78h],r11
	mov	[rsp+70h],r9
	xor	r8d,r8d
	mov	rcx,rbp
	call	rax
	mov	r11,[rsp+78h]
	mov	edx,eax
	mov	r9,[rsp+70h]
	jmp	43D9BAh

l000000000043DB13:
	mov	r11,r13
	jmp	43DA8Ch
000000000043DB1B                                  0F 1F 44 00 00            ..D..
000000000043DB20 48 8B 84 24 C0 00 00 00 48 8B 94 24 C8 00 00 00 H..$....H..$....
000000000043DB30 48 89 84 24 90 00 00 00 48 89 94 24 98 00 00 00 H..$....H..$....
000000000043DB40 48 8B 84 24 B0 00 00 00 48 8B 94 24 B8 00 00 00 H..$....H..$....
000000000043DB50 48 89 84 24 80 00 00 00 48 89 94 24 88 00 00 00 H..$....H..$....
000000000043DB60 49 8B 47 10 48 8B 40 10 48 89 44 24 38 4C 8B 4C I.G.H.@.H.D$8L.L
000000000043DB70 24 58 4C 8B 44 24 60 48 8B 94 24 98 01 00 00 48 $XL.D$`H..$....H
000000000043DB80 8B 4C 24 50 48 89 7C 24 30 4C 89 64 24 28 4C 89 .L$PH.|$0L.d$(L.
000000000043DB90 74 24 20 E8 28 FB FF FF 48 8B 84 24 A0 00 00 00 t$ .(...H..$....
000000000043DBA0 48 89 C2 48 89 84 24 C0 00 00 00 8B 84 24 A8 00 H..H..$......$..
000000000043DBB0 00 00 89 84 24 C8 00 00 00 E9 BE FD FF FF 66 90 ....$.........f.
000000000043DBC0 48 8B 4C 24 68 E8 86 D4 FE FF 44 0F B6 C8 42 0F H.L$h.....D...B.
000000000043DBD0 B6 94 0D 39 01 00 00 84 D2 0F 84 B8 0D 00 00 80 ...9............
000000000043DBE0 FA 09 74 40 83 8C 24 D8 00 00 00 04 48 8B 94 24 ..t@..$.....H..$
000000000043DBF0 C0 00 00 00 E9 83 FD FF FF 0F 1F 80 00 00 00 00 ................
000000000043DC00 48 8B 4C 24 68 E8 46 D4 FE FF 44 0F B6 C8 42 0F H.L$h.F...D...B.
000000000043DC10 B6 94 0D 39 01 00 00 84 D2 0F 84 49 0D 00 00 80 ...9.......I....
000000000043DC20 FA 0A 75 C0 48 8B 94 24 C0 00 00 00 48 85 D2 0F ..u.H..$....H...
000000000043DC30 84 47 FD FF FF 48 89 D1 E8 53 48 02 00 C7 84 24 .G...H...SH....$
000000000043DC40 C8 00 00 00 FF FF FF FF 48 8B 94 24 C0 00 00 00 ........H..$....
000000000043DC50 E9 27 FD FF FF 48 8B 84 24 C0 00 00 00 48 8B 94 .'...H..$....H..
000000000043DC60 24 C8 00 00 00 4C 8B 44 24 60 4C 8B 4C 24 58 48 $....L.D$`L.L$XH
000000000043DC70 8B 4C 24 50 4C 89 64 24 48 48 89 84 24 90 00 00 .L$PL.d$HH..$...
000000000043DC80 00 48 89 94 24 98 00 00 00 48 8B 84 24 B0 00 00 .H..$....H..$...
000000000043DC90 00 48 8B 94 24 B8 00 00 00 4C 89 74 24 40 48 C7 .H..$....L.t$@H.
000000000043DCA0 44 24 38 02 00 00 00 C7 44 24 30 0C 00 00 00 C7 D$8.....D$0.....
000000000043DCB0 44 24 28 01 00 00 00 48 89 84 24 80 00 00 00 48 D$(....H..$....H
000000000043DCC0 89 94 24 88 00 00 00 48 8D 84 24 DC 00 00 00 48 ..$....H..$....H
000000000043DCD0 8B 94 24 98 01 00 00 48 89 44 24 20 E8 AF EC FF ..$....H.D$ ....
000000000043DCE0 FF 48 8B 84 24 A0 00 00 00 44 8B 84 24 D8 00 00 .H..$....D..$...
000000000043DCF0 00 48 89 C2 48 89 84 24 C0 00 00 00 8B 84 24 A8 .H..H..$......$.
000000000043DD00 00 00 00 45 85 C0 89 84 24 C8 00 00 00 0F 85 69 ...E....$......i
000000000043DD10 FC FF FF 8B 84 24 DC 00 00 00 83 E8 01 89 47 10 .....$........G.
000000000043DD20 E9 57 FC FF FF 48 8B 4C 24 68 E8 21 D3 FE FF 48 .W...H.L$h.!...H
000000000043DD30 8B 55 30 0F B6 C0 F6 04 42 20 0F 84 B7 0B 00 00 .U0.....B ......
000000000043DD40 48 8B 8C 24 C0 00 00 00 48 8D 57 0C 48 85 C9 74 H..$....H.W.H..t
000000000043DD50 1A 48 89 54 24 70 E8 35 47 02 00 48 8B 54 24 70 .H.T$p.5G..H.T$p
000000000043DD60 C7 84 24 C8 00 00 00 FF FF FF FF 66 0F 6F 8C 24 ..$........f.o.$
000000000043DD70 C0 00 00 00 4C 89 64 24 48 4C 89 74 24 40 0F 29 ....L.d$HL.t$@.)
000000000043DD80 8C 24 90 00 00 00 48 C7 44 24 38 01 00 00 00 C7 .$....H.D$8.....
000000000043DD90 44 24 30 09 00 00 00 66 0F 6F 8C 24 B0 00 00 00 D$0....f.o.$....
000000000043DDA0 C7 44 24 28 01 00 00 00 48 89 54 24 20 0F 29 8C .D$(....H.T$ .).
000000000043DDB0 24 80 00 00 00 EB 79 66 0F 1F 84 00 00 00 00 00 $.....yf........
000000000043DDC0 48 8B 84 24 C0 00 00 00 48 8B 94 24 C8 00 00 00 H..$....H..$....
000000000043DDD0 4C 89 64 24 48 4C 89 74 24 40 48 C7 44 24 38 02 L.d$HL.t$@H.D$8.
000000000043DDE0 00 00 00 C7 44 24 30 1F 00 00 00 48 89 84 24 90 ....D$0....H..$.
000000000043DDF0 00 00 00 48 8B 84 24 B0 00 00 00 48 89 94 24 98 ...H..$....H..$.
000000000043DE00 00 00 00 48 8B 94 24 B8 00 00 00 C7 44 24 28 01 ...H..$.....D$(.
000000000043DE10 00 00 00 48 89 84 24 80 00 00 00 48 8D 47 0C 48 ...H..$....H.G.H
000000000043DE20 89 94 24 88 00 00 00 48 89 44 24 20 0F 1F 40 00 ..$....H.D$ ..@.
000000000043DE30 4C 8B 4C 24 58 4C 8B 44 24 60 48 8B 94 24 98 01 L.L$XL.D$`H..$..
000000000043DE40 00 00 48 8B 4C 24 50 E8 44 EB FF FF E9 47 FD FF ..H.L$P.D....G..
000000000043DE50 FF 48 8B 84 24 C0 00 00 00 48 8B 94 24 C8 00 00 .H..$....H..$...
000000000043DE60 00 48 89 84 24 90 00 00 00 48 89 94 24 98 00 00 .H..$....H..$...
000000000043DE70 00 48 8B 84 24 B0 00 00 00 48 8B 94 24 B8 00 00 .H..$....H..$...
000000000043DE80 00 48 89 84 24 80 00 00 00 48 89 94 24 88 00 00 .H..$....H..$...
000000000043DE90 00 49 8B 47 10 48 8B 40 30 E9 CA FC FF FF 66 90 .I.G.H.@0.....f.
000000000043DEA0 49 8B 47 10 48 8B 90 28 01 00 00 48 89 94 24 E0 I.G.H..(...H..$.
000000000043DEB0 00 00 00 48 8B 90 30 01 00 00 48 89 94 24 E8 00 ...H..0...H..$..
000000000043DEC0 00 00 48 8B 80 38 01 00 00 48 89 84 24 F0 00 00 ..H..8...H..$...
000000000043DED0 00 49 8B 47 10 48 8B 80 40 01 00 00 48 89 84 24 .I.G.H..@...H..$
000000000043DEE0 F8 00 00 00 49 8B 47 10 48 8B 80 48 01 00 00 48 ....I.G.H..H...H
000000000043DEF0 89 84 24 00 01 00 00 49 8B 47 10 48 8B 80 50 01 ..$....I.G.H..P.
000000000043DF00 00 00 48 89 84 24 08 01 00 00 49 8B 47 10 48 8B ..H..$....I.G.H.
000000000043DF10 80 58 01 00 00 48 89 84 24 10 01 00 00 49 8B 47 .X...H..$....I.G
000000000043DF20 10 48 8B 80 60 01 00 00 48 89 84 24 18 01 00 00 .H..`...H..$....
000000000043DF30 49 8B 47 10 48 8B 80 68 01 00 00 48 89 84 24 20 I.G.H..h...H..$ 
000000000043DF40 01 00 00 49 8B 47 10 48 8B 80 70 01 00 00 48 89 ...I.G.H..p...H.
000000000043DF50 84 24 28 01 00 00 49 8B 47 10 48 8B 80 78 01 00 .$(...I.G.H..x..
000000000043DF60 00 48 89 84 24 30 01 00 00 49 8B 47 10 48 8B 80 .H..$0...I.G.H..
000000000043DF70 80 01 00 00 48 89 84 24 38 01 00 00 48 8B 84 24 ....H..$8...H..$
000000000043DF80 C0 00 00 00 48 8B 94 24 C8 00 00 00 4C 89 64 24 ....H..$....L.d$
000000000043DF90 40 4C 89 74 24 38 48 C7 44 24 30 0C 00 00 00 48 @L.t$8H.D$0....H
000000000043DFA0 89 84 24 90 00 00 00 48 8B 84 24 B0 00 00 00 48 ..$....H..$....H
000000000043DFB0 89 94 24 98 00 00 00 48 8B 94 24 B8 00 00 00 48 ..$....H..$....H
000000000043DFC0 89 84 24 80 00 00 00 48 8D 84 24 E0 00 00 00 48 ..$....H..$....H
000000000043DFD0 89 94 24 88 00 00 00 48 89 44 24 28 48 8D 47 10 ..$....H.D$(H.G.
000000000043DFE0 4C 8B 4C 24 58 4C 8B 44 24 60 48 8B 94 24 98 01 L.L$XL.D$`H..$..
000000000043DFF0 00 00 48 8B 4C 24 50 48 89 44 24 20 E8 3F F0 FF ..H.L$PH.D$ .?..
000000000043E000 FF E9 92 FB FF FF 66 2E 0F 1F 84 00 00 00 00 00 ......f.........
000000000043E010 49 8B 47 10 48 8B 90 90 00 00 00 48 89 94 24 E0 I.G.H......H..$.
000000000043E020 00 00 00 48 8B 90 98 00 00 00 48 89 94 24 E8 00 ...H......H..$..
000000000043E030 00 00 48 8B 80 A0 00 00 00 48 89 84 24 F0 00 00 ..H......H..$...
000000000043E040 00 49 8B 47 10 48 8B 80 A8 00 00 00 48 89 84 24 .I.G.H......H..$
000000000043E050 F8 00 00 00 49 8B 47 10 48 8B 80 B0 00 00 00 48 ....I.G.H......H
000000000043E060 89 84 24 00 01 00 00 49 8B 47 10 48 8B 80 B8 00 ..$....I.G.H....
000000000043E070 00 00 48 89 84 24 08 01 00 00 49 8B 47 10 48 8B ..H..$....I.G.H.
000000000043E080 80 C0 00 00 00 48 89 84 24 10 01 00 00 48 8B 84 .....H..$....H..
000000000043E090 24 C0 00 00 00 48 8B 94 24 C8 00 00 00 4C 89 64 $....H..$....L.d
000000000043E0A0 24 40 4C 89 74 24 38 48 C7 44 24 30 07 00 00 00 $@L.t$8H.D$0....
000000000043E0B0 48 89 84 24 90 00 00 00 48 8B 84 24 B0 00 00 00 H..$....H..$....
000000000043E0C0 48 89 94 24 98 00 00 00 48 8B 94 24 B8 00 00 00 H..$....H..$....
000000000043E0D0 48 89 84 24 80 00 00 00 48 8D 84 24 E0 00 00 00 H..$....H..$....
000000000043E0E0 48 89 94 24 88 00 00 00 48 89 44 24 28 48 8D 47 H..$....H.D$(H.G
000000000043E0F0 18 E9 EA FE FF FF 66 2E 0F 1F 84 00 00 00 00 00 ......f.........
000000000043E100 48 8B 4C 24 68 E8 46 CF FE FF 48 8B 55 30 0F B6 H.L$h.F...H.U0..
000000000043E110 C0 F6 04 42 01 0F 84 C9 FA FF FF 48 8B 84 24 C0 ...B.......H..$.
000000000043E120 00 00 00 48 8B 94 24 C8 00 00 00 4C 8B 4C 24 58 ...H..$....L.L$X
000000000043E130 4C 8B 44 24 60 48 8B 4C 24 50 4C 89 64 24 40 48 L.D$`H.L$PL.d$@H
000000000043E140 89 84 24 90 00 00 00 48 8B 84 24 B0 00 00 00 48 ..$....H..$....H
000000000043E150 89 94 24 98 00 00 00 48 8B 94 24 B8 00 00 00 4C ..$....H..$....L
000000000043E160 89 74 24 38 48 C7 44 24 30 0E 00 00 00 48 89 84 .t$8H.D$0....H..
000000000043E170 24 80 00 00 00 48 8B 05 F4 36 05 00 48 89 94 24 $....H...6..H..$
000000000043E180 88 00 00 00 48 8B 94 24 98 01 00 00 48 89 44 24 ....H..$....H.D$
000000000043E190 28 48 8D 84 24 E0 00 00 00 48 89 44 24 20 48 89 (H..$....H.D$ H.
000000000043E1A0 44 24 70 E8 98 EE FF FF 48 8B 84 24 A0 00 00 00 D$p.....H..$....
000000000043E1B0 48 8B 4C 24 68 48 8D 94 24 B0 00 00 00 48 89 84 H.L$hH..$....H..
000000000043E1C0 24 C0 00 00 00 8B 84 24 A8 00 00 00 89 84 24 C8 $......$......$.
000000000043E1D0 00 00 00 E8 88 CD FE FF 84 C0 0F 85 0C FA FF FF ................
000000000043E1E0 8B 94 24 D8 00 00 00 85 D2 0F 85 FD F9 FF FF 8B ..$.............
000000000043E1F0 84 24 E0 00 00 00 85 C0 0F 85 EE F9 FF FF 48 8B .$............H.
000000000043E200 4C 24 68 E8 48 CE FE FF 80 7D 38 00 89 44 24 78 L$h.H....}8..D$x
000000000043E210 0F 84 12 08 00 00 0F B6 45 66 38 44 24 78 74 26 ........Ef8D$xt&
000000000043E220 48 8B 4C 24 68 E8 26 CE FE FF 80 7D 38 00 89 44 H.L$h.&....}8..D
000000000043E230 24 78 0F 84 02 08 00 00 0F B6 45 64 38 44 24 78 $x........Ed8D$x
000000000043E240 0F 85 A6 F9 FF FF 48 8B 84 24 C0 00 00 00 48 8B ......H..$....H.
000000000043E250 94 24 C8 00 00 00 4C 8B 4C 24 58 4C 8B 44 24 60 .$....L.L$XL.D$`
000000000043E260 48 8B 4C 24 50 4C 89 64 24 48 48 89 84 24 90 00 H.L$PL.d$HH..$..
000000000043E270 00 00 48 8B 84 24 B0 00 00 00 48 89 94 24 98 00 ..H..$....H..$..
000000000043E280 00 00 48 8B 94 24 B8 00 00 00 4C 89 74 24 40 48 ..H..$....L.t$@H
000000000043E290 C7 44 24 38 02 00 00 00 48 89 84 24 80 00 00 00 .D$8....H..$....
000000000043E2A0 48 8B 44 24 70 48 89 94 24 88 00 00 00 48 8B 94 H.D$pH..$....H..
000000000043E2B0 24 98 01 00 00 C7 44 24 30 17 00 00 00 C7 44 24 $.....D$0.....D$
000000000043E2C0 28 00 00 00 00 48 89 44 24 20 E8 C1 E6 FF FF 48 (....H.D$ .....H
000000000043E2D0 8B 84 24 A0 00 00 00 4C 8B 4C 24 58 4C 8B 44 24 ..$....L.L$XL.D$
000000000043E2E0 60 48 8B 4C 24 50 4C 89 64 24 48 4C 89 74 24 40 `H.L$PL.d$HL.t$@
000000000043E2F0 48 89 84 24 C0 00 00 00 8B 84 24 A8 00 00 00 48 H..$......$....H
000000000043E300 C7 44 24 38 02 00 00 00 C7 44 24 30 3B 00 00 00 .D$8.....D$0;...
000000000043E310 C7 44 24 28 00 00 00 00 89 84 24 C8 00 00 00 48 .D$(......$....H
000000000043E320 8B 84 24 C0 00 00 00 48 8B 94 24 C8 00 00 00 48 ..$....H..$....H
000000000043E330 89 84 24 90 00 00 00 48 8B 84 24 B0 00 00 00 48 ..$....H..$....H
000000000043E340 89 94 24 98 00 00 00 48 8B 94 24 B8 00 00 00 48 ..$....H..$....H
000000000043E350 89 84 24 80 00 00 00 48 8B 44 24 70 48 89 94 24 ..$....H.D$pH..$
000000000043E360 88 00 00 00 48 8B 94 24 98 01 00 00 48 89 44 24 ....H..$....H.D$
000000000043E370 20 E8 1A E6 FF FF 48 8B 84 24 A0 00 00 00 48 89  .....H..$....H.
000000000043E380 84 24 C0 00 00 00 8B 84 24 A8 00 00 00 89 84 24 .$......$......$
000000000043E390 C8 00 00 00 E9 53 F8 FF FF 0F 1F 80 00 00 00 00 .....S..........
000000000043E3A0 48 8B 84 24 C0 00 00 00 48 8B 94 24 C8 00 00 00 H..$....H..$....
000000000043E3B0 48 89 84 24 90 00 00 00 48 89 94 24 98 00 00 00 H..$....H..$....
000000000043E3C0 48 8B 84 24 B0 00 00 00 48 8B 94 24 B8 00 00 00 H..$....H..$....
000000000043E3D0 48 89 84 24 80 00 00 00 48 89 94 24 88 00 00 00 H..$....H..$....
000000000043E3E0 49 8B 47 10 48 8B 40 20 E9 7B F7 FF FF 0F 1F 00 I.G.H.@ .{......
000000000043E3F0 4C 8D 9C 24 E0 00 00 00 4C 8D 05 47 FB 04 00 48 L..$....L..G...H
000000000043E400 8D 15 37 FB 04 00 4D 89 D9 4C 89 5C 24 70 48 89 ..7...M..L.\$pH.
000000000043E410 E9 E8 FA D0 FE FF 48 8B 84 24 C0 00 00 00 48 8B ......H..$....H.
000000000043E420 94 24 C8 00 00 00 4C 8B 5C 24 70 48 89 84 24 90 .$....L.\$pH..$.
000000000043E430 00 00 00 48 89 94 24 98 00 00 00 48 8B 84 24 B0 ...H..$....H..$.
000000000043E440 00 00 00 48 8B 94 24 B8 00 00 00 4C 89 5C 24 38 ...H..$....L.\$8
000000000043E450 48 89 84 24 80 00 00 00 48 89 94 24 88 00 00 00 H..$....H..$....
000000000043E460 E9 08 F7 FF FF 48 8B 84 24 C0 00 00 00 48 8B 94 .....H..$....H..
000000000043E470 24 C8 00 00 00 4C 89 64 24 48 4C 89 74 24 40 48 $....L.d$HL.t$@H
000000000043E480 C7 44 24 38 02 00 00 00 C7 44 24 30 3C 00 00 00 .D$8.....D$0<...
000000000043E490 48 89 84 24 90 00 00 00 48 89 94 24 98 00 00 00 H..$....H..$....
000000000043E4A0 48 8B 84 24 B0 00 00 00 48 8B 94 24 B8 00 00 00 H..$....H..$....
000000000043E4B0 C7 44 24 28 00 00 00 00 48 89 7C 24 20 48 89 84 .D$(....H.|$ H..
000000000043E4C0 24 80 00 00 00 48 89 94 24 88 00 00 00 E9 5E F9 $....H..$.....^.
000000000043E4D0 FF FF 4C 8D 9C 24 E0 00 00 00 4C 8D 05 5C FA 04 ..L..$....L..\..
000000000043E4E0 00 48 8D 15 4F FA 04 00 4D 89 D9 4C 89 5C 24 70 .H..O...M..L.\$p
000000000043E4F0 E9 19 FF FF FF 48 8B 84 24 C0 00 00 00 48 8B 94 .....H..$....H..
000000000043E500 24 C8 00 00 00 4C 89 64 24 48 4C 89 74 24 40 48 $....L.d$HL.t$@H
000000000043E510 C7 44 24 38 02 00 00 00 C7 44 24 30 3B 00 00 00 .D$8.....D$0;...
000000000043E520 48 89 84 24 90 00 00 00 48 8B 84 24 B0 00 00 00 H..$....H..$....
000000000043E530 48 89 94 24 98 00 00 00 48 8B 94 24 B8 00 00 00 H..$....H..$....
000000000043E540 C7 44 24 28 00 00 00 00 48 89 84 24 80 00 00 00 .D$(....H..$....
000000000043E550 48 8D 47 04 48 89 94 24 88 00 00 00 48 89 44 24 H.G.H..$....H.D$
000000000043E560 20 E9 CA F8 FF FF 66 2E 0F 1F 84 00 00 00 00 00  .....f.........
000000000043E570 48 8B 84 24 C0 00 00 00 48 8B 94 24 C8 00 00 00 H..$....H..$....
000000000043E580 4C 89 64 24 48 4C 89 74 24 40 48 C7 44 24 38 02 L.d$HL.t$@H.D$8.
000000000043E590 00 00 00 C7 44 24 30 0C 00 00 00 48 89 84 24 90 ....D$0....H..$.
000000000043E5A0 00 00 00 48 8B 84 24 B0 00 00 00 48 89 94 24 98 ...H..$....H..$.
000000000043E5B0 00 00 00 48 8B 94 24 B8 00 00 00 C7 44 24 28 01 ...H..$.....D$(.
000000000043E5C0 00 00 00 48 89 84 24 80 00 00 00 48 8D 47 08 48 ...H..$....H.G.H
000000000043E5D0 89 94 24 88 00 00 00 48 89 44 24 20 E9 4F F8 FF ..$....H.D$ .O..
000000000043E5E0 FF 48 8B 84 24 C0 00 00 00 48 8B 94 24 C8 00 00 .H..$....H..$...
000000000043E5F0 00 4C 89 64 24 48 4C 89 74 24 40 48 C7 44 24 38 .L.d$HL.t$@H.D$8
000000000043E600 02 00 00 00 C7 44 24 30 17 00 00 00 48 89 84 24 .....D$0....H..$
000000000043E610 90 00 00 00 48 8B 84 24 B0 00 00 00 48 89 94 24 ....H..$....H..$
000000000043E620 98 00 00 00 48 8B 94 24 B8 00 00 00 C7 44 24 28 ....H..$.....D$(
000000000043E630 00 00 00 00 48 89 84 24 80 00 00 00 48 8D 47 08 ....H..$....H.G.
000000000043E640 48 89 94 24 88 00 00 00 48 89 44 24 20 E9 DE F7 H..$....H.D$ ...
000000000043E650 FF FF 4C 8D 9C 24 E0 00 00 00 4C 8D 05 D6 F8 04 ..L..$....L.....
000000000043E660 00 48 8D 15 C6 F8 04 00 4D 89 D9 4C 89 5C 24 70 .H......M..L.\$p
000000000043E670 E9 99 FD FF FF 48 8B 84 24 C0 00 00 00 48 8B 94 .....H..$....H..
000000000043E680 24 C8 00 00 00 48 8B 4C 24 50 4C 8B 4C 24 58 4C $....H.L$PL.L$XL
000000000043E690 8B 44 24 60 4C 89 64 24 48 48 89 84 24 90 00 00 .D$`L.d$HH..$...
000000000043E6A0 00 48 89 94 24 98 00 00 00 48 8B 84 24 B0 00 00 .H..$....H..$...
000000000043E6B0 00 48 8B 94 24 B8 00 00 00 4C 89 74 24 40 48 C7 .H..$....L.t$@H.
000000000043E6C0 44 24 38 04 00 00 00 C7 44 24 30 0F 27 00 00 C7 D$8.....D$0.'...
000000000043E6D0 44 24 28 00 00 00 00 48 89 84 24 80 00 00 00 48 D$(....H..$....H
000000000043E6E0 89 94 24 88 00 00 00 48 8D 84 24 DC 00 00 00 48 ..$....H..$....H
000000000043E6F0 8B 94 24 98 01 00 00 48 89 44 24 20 E8 8F E2 FF ..$....H.D$ ....
000000000043E700 FF 48 8B 84 24 A0 00 00 00 8B 8C 24 D8 00 00 00 .H..$......$....
000000000043E710 48 89 C2 48 89 84 24 C0 00 00 00 8B 84 24 A8 00 H..H..$......$..
000000000043E720 00 00 85 C9 89 84 24 C8 00 00 00 0F 85 4B F2 FF ......$......K..
000000000043E730 FF 8B 8C 24 DC 00 00 00 44 8D 41 64 8D 81 94 F8 ...$....D.Ad....
000000000043E740 FF FF 85 C9 41 0F 48 C0 89 47 14 E9 2C F2 FF FF ....A.H..G..,...
000000000043E750 49 8B 47 10 48 8B 90 C8 00 00 00 48 89 94 24 E0 I.G.H......H..$.
000000000043E760 00 00 00 48 8B 90 D0 00 00 00 48 89 94 24 E8 00 ...H......H..$..
000000000043E770 00 00 48 8B 80 D8 00 00 00 48 89 84 24 F0 00 00 ..H......H..$...
000000000043E780 00 49 8B 47 10 48 8B 80 E0 00 00 00 48 89 84 24 .I.G.H......H..$
000000000043E790 F8 00 00 00 49 8B 47 10 48 8B 80 E8 00 00 00 48 ....I.G.H......H
000000000043E7A0 89 84 24 00 01 00 00 49 8B 47 10 48 8B 80 F0 00 ..$....I.G.H....
000000000043E7B0 00 00 48 89 84 24 08 01 00 00 49 8B 47 10 48 8B ..H..$....I.G.H.
000000000043E7C0 80 F8 00 00 00 48 89 84 24 10 01 00 00 49 8B 47 .....H..$....I.G
000000000043E7D0 10 48 8B 80 00 01 00 00 48 89 84 24 18 01 00 00 .H......H..$....
000000000043E7E0 49 8B 47 10 48 8B 80 08 01 00 00 48 89 84 24 20 I.G.H......H..$ 
000000000043E7F0 01 00 00 49 8B 47 10 48 8B 80 10 01 00 00 48 89 ...I.G.H......H.
000000000043E800 84 24 28 01 00 00 49 8B 47 10 48 8B 80 18 01 00 .$(...I.G.H.....
000000000043E810 00 48 89 84 24 30 01 00 00 49 8B 47 10 48 8B 80 .H..$0...I.G.H..
000000000043E820 20 01 00 00 E9 4B F7 FF FF 0F 1F 80 00 00 00 00  ....K..........
000000000043E830 49 8B 47 10 48 8B 50 58 48 89 94 24 E0 00 00 00 I.G.H.PXH..$....
000000000043E840 48 8B 50 60 48 89 94 24 E8 00 00 00 48 8B 40 68 H.P`H..$....H.@h
000000000043E850 48 89 84 24 F0 00 00 00 49 8B 47 10 48 8B 40 70 H..$....I.G.H.@p
000000000043E860 48 89 84 24 F8 00 00 00 49 8B 47 10 48 8B 40 78 H..$....I.G.H.@x
000000000043E870 48 89 84 24 00 01 00 00 49 8B 47 10 48 8B 80 80 H..$....I.G.H...
000000000043E880 00 00 00 48 89 84 24 08 01 00 00 49 8B 47 10 48 ...H..$....I.G.H
000000000043E890 8B 80 88 00 00 00 E9 EA F7 FF FF 0F 1F 44 00 00 .............D..

l000000000043E8A0:
	mov	rax,[rcx]
	mov	[rsp+70h],dl
	call	qword ptr [rax+48h]
	cmp	eax,0FFh
	movzx	edx,byte ptr [rsp+70h]
	jnz	43D8E1h

l000000000043E8B8:
	mov	qword ptr [rsp+0B0h],+0h
	mov	eax,1h
	jmp	43D7E6h
000000000043E8CE                                           66 90               f.

l000000000043E8D0:
	movsx	edx,r9b
	mov	[rsp+78h],r9
	mov	[rsp+70h],r11
	xor	r8d,r8d
	mov	rcx,rbp
	call	rax
	mov	r9,[rsp+78h]
	mov	edx,eax
	mov	r11,[rsp+70h]
	jmp	43DA88h
000000000043E8F7                      48 8B 84 24 C0 00 00 00 48        H..$....H
000000000043E900 8B 94 24 C8 00 00 00 4C 89 64 24 48 4C 89 74 24 ..$....L.d$HL.t$
000000000043E910 40 48 C7 44 24 38 02 00 00 00 C7 44 24 30 1F 00 @H.D$8.....D$0..
000000000043E920 00 00 48 89 84 24 90 00 00 00 48 8B 84 24 B0 00 ..H..$....H..$..
000000000043E930 00 00 48 89 94 24 98 00 00 00 48 8B 94 24 B8 00 ..H..$....H..$..
000000000043E940 00 00 C7 44 24 28 0A 00 00 00 48 89 84 24 80 00 ...D$(....H..$..
000000000043E950 00 00 48 8D 47 0C 48 89 94 24 88 00 00 00 48 89 ..H.G.H..$....H.
000000000043E960 44 24 20 E9 C8 F4 FF FF 48 8B 55 00 48 8D 0D AD D$ .....H.U.H...
000000000043E970 CC FE FF 4C 8B 5A 40 89 C2 49 39 CB 0F 85 89 00 ...L.Z@..I9.....
000000000043E980 00 00 84 D2 0F 84 5A F2 FF FF 42 88 94 0D 39 01 ......Z...B...9.
000000000043E990 00 00 E9 88 F2 FF FF 48 8B 55 00 48 8D 0D 7E CC .......H.U.H..~.
000000000043E9A0 FE FF 4C 8B 5A 40 89 C2 49 39 CB 75 44 84 D2 0F ..L.Z@..I9.uD...
000000000043E9B0 84 2F F2 FF FF 42 88 94 0D 39 01 00 00 E9 1D F2 ./...B...9......
000000000043E9C0 FF FF                                           ..             

l000000000043E9C2:
	mov	[rsp+70h],r9
	movsx	edx,r9b
	xor	r8d,r8d
	mov	rcx,rbp
	call	r11
	mov	r9,[rsp+70h]
	jmp	43DA05h

l000000000043E9DE:
	mov	rax,[rcx]
	call	qword ptr [rax+50h]
	mov	rcx,[rsp+0C0h]
	jmp	43DA55h
000000000043E9F1    4C 89 4C 24 70 0F BE D0 45 31 C0 48 89 E9 41  L.L$p...E1.H..A
000000000043EA00 FF D3 4C 8B 4C 24 70 89 C2 EB A2 4C 89 4C 24 70 ..L.L$p....L.L$p
000000000043EA10 0F BE D0 45 31 C0 48 89 E9 41 FF D3 4C 8B 4C 24 ...E1.H..A..L.L$
000000000043EA20 70 89 C2 E9 5A FF FF FF BA 2D 00 00 00 48 89 E9 p...Z....-...H..
000000000043EA30 E8 5B CB FE FF E9 E0 F7 FF FF BA 2B 00 00 00 48 .[.........+...H
000000000043EA40 89 E9 E8 49 CB FE FF E9 F0 F7 FF FF             ...I........   

l000000000043EA4C:
	mov	rcx,[rsp+0C0h]
	cmp	r8b,al
	mov	[rsp+0C8h],eax
	mov	rdx,rcx
	jnz	43D974h

l000000000043EA67:
	test	rcx,rcx
	jnz	43DA3Fh

l000000000043EA70:
	jmp	43D97Ch
000000000043EA75                90 90 90 90 90 90 90 90 90 90 90      ...........

;; fn000000000043EA80: 000000000043EA80
;;   Called from:
;;     000000000043CF0A (in fn000000000043CD60)
;;     000000000043D587 (in fn000000000043D310)
fn000000000043EA80 proc
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,48h
	lea	rbp,[rsp+80h]
	mov	rax,[r8]
	mov	rdx,[r8+8h]
	mov	[rbp+10h],rcx
	mov	rsi,[rbp+38h]
	mov	[rbp-50h],rax
	mov	rax,[r9]
	mov	[rbp-48h],rdx
	mov	rdx,[r9+8h]
	mov	[rbp-60h],rax
	mov	rax,[rbp+48h]
	mov	[rbp-58h],rdx
	lea	rcx,[rax+0D0h]
	call	472FC0h
	mov	r14,rax
	mov	rax,[rbp+40h]
	lea	rax,[001Eh+rax*8]
	and	rax,0F0h
	call	4116F0h
	lea	rbx,[rbp-50h]
	lea	rdx,[rbp-60h]
	sub	rsp,rax
	lea	r13,[rsp+20h]
	mov	rcx,rbx
	call	42AF60h
	test	al,al
	jz	43ED55h

l000000000043EB06:
	mov	r12,[rbp-50h]
	xor	ebx,ebx
	xor	r14d,r14d
	xor	r15d,r15d

l000000000043EB12:
	test	r12,r12
	jz	43ECC5h

l000000000043EB1B:
	mov	eax,[rbp-48h]
	cmp	eax,0FFh
	jz	43EC00h

l000000000043EB27:
	mov	rcx,[rbp-60h]
	test	rcx,rcx
	jz	43EB60h

l000000000043EB30:
	xor	edi,edi

l000000000043EB32:
	xor	eax,eax
	cmp	dword ptr [rbp-58h],0FFh
	jz	43EC30h

l000000000043EB3E:
	cmp	al,dil
	jz	43EC4Fh

l000000000043EB47:
	mov	rcx,[rbp-50h]
	test	rcx,rcx
	jz	43EE24h

l000000000043EB54:
	mov	eax,[rbp-48h]
	cmp	eax,0FFh
	jz	43EC91h

l000000000043EB60:
	test	rbx,rbx
	jz	43EC63h

l000000000043EB69:
	xor	edx,edx
	xor	r11d,r11d
	jmp	43EB7Dh

l000000000043EB70:
	add	r11,1h
	add	rdx,1h

l000000000043EB78:
	cmp	rbx,rdx
	jbe	43EBB0h

l000000000043EB7D:
	lea	r9,[r13+rdx*4+0h]
	lea	r8,[r15+rdx*8]
	movsxd	rcx,dword ptr [r9]
	cmp	r14,[r8]
	mov	rcx,[rsi+rcx*8]
	jnc	43EB70h

l000000000043EB92:
	cmp	[rcx+r14],al
	jz	43EBF0h

l000000000043EB98:
	sub	rbx,1h
	mov	ecx,[r13+rbx*4+0h]
	cmp	rbx,rdx
	mov	[r9],ecx
	mov	rcx,[r15+rbx*8]
	mov	[r8],rcx
	ja	43EB7Dh

l000000000043EBB0:
	cmp	rbx,r11
	jz	43EC4Fh

l000000000043EBB9:
	mov	r12,[rbp-50h]
	test	r12,r12
	jz	43EBE2h

l000000000043EBC2:
	mov	rax,[r12+10h]
	cmp	rax,[r12+18h]
	jnc	43ECD8h

l000000000043EBD2:
	add	rax,1h
	mov	[r12+10h],rax

l000000000043EBDB:
	mov	dword ptr [rbp-48h],0FFFFFFFFh

l000000000043EBE2:
	add	r14,1h
	jmp	43EB12h
000000000043EBEB                                  0F 1F 44 00 00            ..D..

l000000000043EBF0:
	add	rdx,1h
	jmp	43EB78h
000000000043EBF6                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l000000000043EC00:
	mov	rax,[r12+10h]
	cmp	rax,[r12+18h]
	jnc	43ECAAh

l000000000043EC10:
	movzx	eax,byte ptr [rax]

l000000000043EC13:
	mov	rcx,[rbp-60h]
	mov	[rbp-48h],eax
	test	rcx,rcx
	jnz	43EB30h

l000000000043EC23:
	jmp	43EB47h
000000000043EC28                         0F 1F 84 00 00 00 00 00         ........

l000000000043EC30:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	43ED18h

l000000000043EC3E:
	movzx	eax,byte ptr [rax]

l000000000043EC41:
	mov	[rbp-58h],eax
	xor	eax,eax
	cmp	al,dil
	jnz	43EB47h

l000000000043EC4F:
	cmp	rbx,1h
	jz	43EE16h

l000000000043EC59:
	cmp	rbx,2h
	jz	43ECEBh

l000000000043EC63:
	mov	rax,[rbp+50h]
	or	dword ptr [rax],4h

l000000000043EC6A:
	mov	rdi,[rbp+10h]
	mov	rax,[rbp-50h]
	mov	rdx,[rbp-48h]
	mov	[rdi],rax
	mov	rax,rdi
	mov	[rdi+8h],rdx
	lea	rsp,[rbp-38h]
	pop	rbx
	pop	rsi
	pop	rdi
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret

l000000000043EC91:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	43ED39h

l000000000043EC9F:
	movzx	eax,byte ptr [rax]

l000000000043ECA2:
	mov	[rbp-48h],eax
	jmp	43EB60h

l000000000043ECAA:
	mov	rax,[r12]
	mov	rcx,r12
	call	qword ptr [rax+48h]
	cmp	eax,0FFh
	jnz	43EC13h

l000000000043ECBD:
	mov	qword ptr [rbp-50h],+0h

l000000000043ECC5:
	mov	rcx,[rbp-60h]
	test	rcx,rcx
	jz	43EC4Fh

l000000000043ECCE:
	mov	edi,1h
	jmp	43EB32h

l000000000043ECD8:
	mov	rax,[r12]
	mov	rcx,r12
	call	qword ptr [rax+50h]
	mov	r12,[rbp-50h]
	jmp	43EBDBh

l000000000043ECEB:
	cmp	[r15],r14
	jz	43ECFAh

l000000000043ECF0:
	cmp	[r15+8h],r14
	jnz	43EC63h

l000000000043ECFA:
	movsxd	rcx,dword ptr [r13+0h]
	mov	edx,ecx
	sub	edx,[rbp+40h]
	cmp	[rbp+40h],rcx
	mov	rax,rcx
	cmovbe	eax,edx

l000000000043ED0D:
	mov	rdx,[rbp+30h]
	mov	[rdx],eax
	jmp	43EC6Ah

l000000000043ED18:
	mov	rax,[rcx]
	call	qword ptr [rax+48h]
	cmp	eax,0FFh
	jnz	43EC41h

l000000000043ED27:
	mov	qword ptr [rbp-60h],+0h
	mov	eax,1h
	jmp	43EB3Eh

l000000000043ED39:
	mov	rax,[rcx]
	call	qword ptr [rax+48h]
	cmp	eax,0FFh
	jnz	43ECA2h

l000000000043ED48:
	mov	qword ptr [rbp-50h],+0h
	jmp	43EB60h

l000000000043ED55:
	mov	rcx,rbx
	xor	edi,edi
	xor	ebx,ebx
	call	42B050h
	mov	r15,[rbp+40h]
	mov	r12d,eax
	add	r15,r15
	jnz	43ED89h

l000000000043ED6D:
	jmp	43EE2Eh

l000000000043ED72:
	mov	rax,[r14]
	mov	rcx,r14
	call	qword ptr [rax+10h]
	cmp	r12b,al
	jz	43ED95h

l000000000043ED80:
	add	rdi,1h
	cmp	rdi,r15
	jz	43EDA7h

l000000000043ED89:
	mov	rax,[rsi+rdi*8]
	movsx	edx,byte ptr [rax]
	cmp	dl,r12b
	jnz	43ED72h

l000000000043ED95:
	mov	[r13+rbx*4+0h],edi
	add	rdi,1h
	add	rbx,1h
	cmp	rdi,r15
	jnz	43ED89h

l000000000043EDA7:
	test	rbx,rbx
	mov	r12,[rbp-50h]
	jz	43EE3Dh

l000000000043EDB4:
	test	r12,r12
	jz	43EDCCh

l000000000043EDB9:
	mov	rcx,r12
	call	462490h
	mov	r12,[rbp-50h]
	mov	dword ptr [rbp-48h],0FFFFFFFFh

l000000000043EDCC:
	lea	rax,[001Eh+rbx*8]
	and	rax,0F0h
	call	4116F0h
	xor	edi,edi
	sub	rsp,rax
	lea	r14,[rsp+20h]
	mov	r15,r14
	nop	word ptr [rax+rax+0h]

l000000000043EDF0:
	movsxd	rax,dword ptr [r13+rdi*4+0h]
	mov	rcx,[rsi+rax*8]
	call	41BCB8h
	mov	[r14+rdi*8],rax
	add	rdi,1h
	cmp	rdi,rbx
	jnz	43EDF0h

l000000000043EE0B:
	mov	r14d,1h
	jmp	43EB12h

l000000000043EE16:
	cmp	[r15],r14
	jnz	43EC63h

l000000000043EE1F:
	jmp	43ECFAh

l000000000043EE24:
	mov	eax,0FFFFFFFFh
	jmp	43EB60h

l000000000043EE2E:
	mov	r12,[rbp-50h]
	xor	r14d,r14d
	xor	r15d,r15d
	jmp	43EB12h

l000000000043EE3D:
	xor	r14d,r14d
	xor	r15d,r15d
	jmp	43EB12h
000000000043EE48                         90 90 90 90 90 90 90 90         ........

;; fn000000000043EE50: 000000000043EE50
fn000000000043EE50 proc
	push	rbx
	sub	rsp,60h
	mov	r10,[r9+8h]
	mov	r9,[r9]
	mov	rbx,rcx
	mov	rcx,[rsp+0A0h]
	mov	rax,[rdx]
	movdqu	xmm1,[r8]
	lea	r8,[rsp+50h]
	mov	[rsp+40h],r9
	lea	r9,[rsp+40h]
	mov	[rsp+48h],r10
	mov	[rsp+30h],rcx
	mov	rcx,[rsp+98h]
	movaps	[rsp+50h],xmm1
	mov	[rsp+28h],rcx
	mov	rcx,[rsp+90h]
	mov	[rsp+20h],rcx
	mov	rcx,rbx
	call	qword ptr [rax+20h]
	mov	rax,rbx
	add	rsp,60h
	pop	rbx
	ret
000000000043EEB6                   90 90 90 90 90 90 90 90 90 90       ..........

;; fn000000000043EEC0: 000000000043EEC0
fn000000000043EEC0 proc
	push	rbx
	sub	rsp,60h
	mov	r10,[r9+8h]
	mov	r9,[r9]
	mov	rbx,rcx
	mov	rcx,[rsp+0A0h]
	mov	rax,[rdx]
	movdqu	xmm1,[r8]
	lea	r8,[rsp+50h]
	mov	[rsp+40h],r9
	lea	r9,[rsp+40h]
	mov	[rsp+48h],r10
	mov	[rsp+30h],rcx
	mov	rcx,[rsp+98h]
	movaps	[rsp+50h],xmm1
	mov	[rsp+28h],rcx
	mov	rcx,[rsp+90h]
	mov	[rsp+20h],rcx
	mov	rcx,rbx
	call	qword ptr [rax+18h]
	mov	rax,rbx
	add	rsp,60h
	pop	rbx
	ret
000000000043EF26                   90 90 90 90 90 90 90 90 90 90       ..........

;; fn000000000043EF30: 000000000043EF30
fn000000000043EF30 proc
	push	rbx
	sub	rsp,60h
	mov	r10,[r9+8h]
	mov	r9,[r9]
	mov	rbx,rcx
	mov	rcx,[rsp+0A0h]
	mov	rax,[rdx]
	movdqu	xmm1,[r8]
	lea	r8,[rsp+50h]
	mov	[rsp+40h],r9
	lea	r9,[rsp+40h]
	mov	[rsp+48h],r10
	mov	[rsp+30h],rcx
	mov	rcx,[rsp+98h]
	movaps	[rsp+50h],xmm1
	mov	[rsp+28h],rcx
	mov	rcx,[rsp+90h]
	mov	[rsp+20h],rcx
	mov	rcx,rbx
	call	qword ptr [rax+38h]
	mov	rax,rbx
	add	rsp,60h
	pop	rbx
	ret
000000000043EF96                   90 90 90 90 90 90 90 90 90 90       ..........

;; fn000000000043EFA0: 000000000043EFA0
fn000000000043EFA0 proc
	mov	rax,[rcx]
	lea	rdx,[000000000043F4B0]                                 ; [rip+00000506]
	mov	rax,[rax+10h]
	cmp	rax,rdx
	jnz	43EFC0h

l000000000043EFB3:
	xor	eax,eax
	ret
000000000043EFB6                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l000000000043EFC0:
	jmp	rax
000000000043EFC3          90 90 90 90 90 90 90 90 90 90 90 90 90    .............

;; fn000000000043EFD0: 000000000043EFD0
fn000000000043EFD0 proc
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,78h
	mov	rbx,[rsp+0E0h]
	mov	rsi,[r8+8h]
	mov	r15,[r8]
	mov	rbp,[r9]
	mov	rdi,rcx
	mov	r12,[r9+8h]
	mov	r14,rdx
	mov	r13,[rsp+0E8h]
	lea	rcx,[rbx+0D0h]
	call	472F60h
	mov	[rsp+58h],rsi
	mov	[rsp+50h],r15
	lea	rcx,[rsp+60h]
	mov	[rsp+40h],rbp
	mov	[rsp+48h],r12
	lea	r9,[rsp+40h]
	mov	rax,[rax+10h]
	lea	r8,[rsp+50h]
	mov	rdx,r14
	mov	rax,[rax+10h]
	mov	[rsp+20h],rbx
	mov	[rsp+28h],r13
	mov	[rsp+38h],rax
	mov	rax,[rsp+0F0h]
	mov	[rsp+30h],rax
	call	4401B0h
	mov	rbx,[rsp+60h]
	mov	rdx,[rsp+68h]
	test	rbx,rbx
	mov	si,dx
	mov	r14d,edx
	jz	43F0F0h

l000000000043F074:
	cmp	dx,0FFh
	jz	43F0D0h

l000000000043F07A:
	xor	r15d,r15d
	test	rbp,rbp
	jz	43F09Dh

l000000000043F082:
	cmp	r12w,0FFh
	mov	eax,r12d
	jz	43F0C0h

l000000000043F08C:
	cmp	ax,0FFh
	setz	al
	cmp	r15b,al
	jnz	43F09Dh

l000000000043F098:
	or	dword ptr [r13+0h],2h

l000000000043F09D:
	mov	si,r14w
	mov	rax,rdi
	mov	[rdi],rbx
	mov	[rdi+8h],rsi
	add	rsp,78h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret
000000000043F0BC                                     0F 1F 40 00             ..@.

l000000000043F0C0:
	mov	rax,[rbp+10h]
	cmp	rax,[rbp+18h]
	jnc	43F120h

l000000000043F0CA:
	movzx	eax,word ptr [rax]
	jmp	43F08Ch
000000000043F0CF                                              90                .

l000000000043F0D0:
	mov	rax,[rbx+10h]
	cmp	rax,[rbx+18h]
	jnc	43F110h

l000000000043F0DA:
	movzx	eax,word ptr [rax]

l000000000043F0DD:
	cmp	ax,0FFh
	jz	43F0F0h

l000000000043F0E3:
	xor	r15d,r15d
	test	rbp,rbp
	mov	r14d,eax
	jnz	43F082h

l000000000043F0EE:
	jmp	43F09Dh

l000000000043F0F0:
	xor	ebx,ebx
	test	rbp,rbp
	mov	r15d,1h
	jz	43F098h

l000000000043F0FD:
	cmp	r12w,0FFh
	mov	eax,r12d
	jnz	43F08Ch

l000000000043F107:
	jmp	43F0C0h
000000000043F109                            0F 1F 80 00 00 00 00          .......

l000000000043F110:
	mov	rax,[rbx]
	mov	rcx,rbx
	call	qword ptr [rax+48h]
	jmp	43F0DDh
000000000043F11B                                  0F 1F 44 00 00            ..D..

l000000000043F120:
	mov	rax,[rbp+0h]
	mov	rcx,rbp
	call	qword ptr [rax+48h]
	jmp	43F08Ch
000000000043F12F                                              90                .

;; fn000000000043F130: 000000000043F130
fn000000000043F130 proc
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,78h
	mov	rbx,[rsp+0E0h]
	mov	rsi,[r8+8h]
	mov	r15,[r8]
	mov	rbp,[r9]
	mov	rdi,rcx
	mov	r12,[r9+8h]
	mov	r14,rdx
	mov	r13,[rsp+0E8h]
	lea	rcx,[rbx+0D0h]
	call	472F60h
	mov	[rsp+58h],rsi
	mov	[rsp+50h],r15
	lea	rcx,[rsp+60h]
	mov	[rsp+40h],rbp
	mov	[rsp+48h],r12
	lea	r9,[rsp+40h]
	mov	rax,[rax+10h]
	lea	r8,[rsp+50h]
	mov	rdx,r14
	mov	rax,[rax+20h]
	mov	[rsp+20h],rbx
	mov	[rsp+28h],r13
	mov	[rsp+38h],rax
	mov	rax,[rsp+0F0h]
	mov	[rsp+30h],rax
	call	4401B0h
	mov	rbx,[rsp+60h]
	mov	rdx,[rsp+68h]
	test	rbx,rbx
	mov	si,dx
	mov	r14d,edx
	jz	43F250h

l000000000043F1D4:
	cmp	dx,0FFh
	jz	43F230h

l000000000043F1DA:
	xor	r15d,r15d
	test	rbp,rbp
	jz	43F1FDh

l000000000043F1E2:
	cmp	r12w,0FFh
	mov	eax,r12d
	jz	43F220h

l000000000043F1EC:
	cmp	ax,0FFh
	setz	al
	cmp	r15b,al
	jnz	43F1FDh

l000000000043F1F8:
	or	dword ptr [r13+0h],2h

l000000000043F1FD:
	mov	si,r14w
	mov	rax,rdi
	mov	[rdi],rbx
	mov	[rdi+8h],rsi
	add	rsp,78h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret
000000000043F21C                                     0F 1F 40 00             ..@.

l000000000043F220:
	mov	rax,[rbp+10h]
	cmp	rax,[rbp+18h]
	jnc	43F280h

l000000000043F22A:
	movzx	eax,word ptr [rax]
	jmp	43F1ECh
000000000043F22F                                              90                .

l000000000043F230:
	mov	rax,[rbx+10h]
	cmp	rax,[rbx+18h]
	jnc	43F270h

l000000000043F23A:
	movzx	eax,word ptr [rax]

l000000000043F23D:
	cmp	ax,0FFh
	jz	43F250h

l000000000043F243:
	xor	r15d,r15d
	test	rbp,rbp
	mov	r14d,eax
	jnz	43F1E2h

l000000000043F24E:
	jmp	43F1FDh

l000000000043F250:
	xor	ebx,ebx
	test	rbp,rbp
	mov	r15d,1h
	jz	43F1F8h

l000000000043F25D:
	cmp	r12w,0FFh
	mov	eax,r12d
	jnz	43F1ECh

l000000000043F267:
	jmp	43F220h
000000000043F269                            0F 1F 80 00 00 00 00          .......

l000000000043F270:
	mov	rax,[rbx]
	mov	rcx,rbx
	call	qword ptr [rax+48h]
	jmp	43F23Dh
000000000043F27B                                  0F 1F 44 00 00            ..D..

l000000000043F280:
	mov	rax,[rbp+0h]
	mov	rcx,rbp
	call	qword ptr [rax+48h]
	jmp	43F1ECh
000000000043F28F                                              90                .

;; fn000000000043F290: 000000000043F290
fn000000000043F290 proc
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,+98h
	mov	r13,[rsp+100h]
	mov	rbx,[r8+8h]
	mov	rsi,rcx
	mov	r14,rdx
	mov	r15,[r8]
	mov	rdi,[r9]
	mov	rbp,[r9+8h]
	lea	rcx,[r13+0D0h]
	mov	r12,[rsp+108h]
	call	473020h
	lea	rax,[rsp+8Ch]
	lea	r8,[rsp+60h]
	lea	rcx,[rsp+70h]
	lea	r9,[rsp+50h]
	mov	rdx,r14
	mov	[rsp+40h],r13
	mov	[rsp+48h],rax
	lea	rax,[rsp+88h]
	mov	qword ptr [rsp+38h],+4h
	mov	dword ptr [rsp+30h],270Fh
	mov	dword ptr [rsp+28h],0h
	mov	[rsp+20h],rax
	mov	[rsp+68h],rbx
	mov	dword ptr [rsp+8Ch],0h
	mov	[rsp+60h],r15
	mov	[rsp+50h],rdi
	mov	[rsp+58h],rbp
	call	43F530h
	mov	eax,[rsp+8Ch]
	mov	rdx,[rsp+78h]
	mov	r8,[rsp+70h]
	test	eax,eax
	mov	bx,dx
	mov	r14d,edx
	mov	r13,r8
	jnz	43F3D0h

l000000000043F35F:
	mov	ecx,[rsp+88h]
	test	ecx,ecx
	lea	r9d,[rcx+64h]
	lea	eax,[rcx-76Ch]
	mov	rcx,[rsp+110h]
	cmovs	eax,r9d

l000000000043F37E:
	test	r8,r8
	mov	[rcx+14h],eax
	jz	43F3DAh

l000000000043F386:
	cmp	dx,0FFh
	jz	43F400h

l000000000043F38C:
	xor	r15d,r15d
	test	rdi,rdi
	jz	43F3ADh

l000000000043F394:
	cmp	bp,0FFh
	mov	eax,ebp
	jz	43F3F0h

l000000000043F39C:
	cmp	ax,0FFh
	setz	al
	cmp	r15b,al
	jnz	43F3ADh

l000000000043F3A8:
	or	dword ptr [r12],2h

l000000000043F3AD:
	mov	bx,r14w
	mov	rax,rsi
	mov	[rsi],r13
	mov	[rsi+8h],rbx
	add	rsp,+98h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret
000000000043F3CF                                              90                .

l000000000043F3D0:
	or	dword ptr [r12],4h
	test	r8,r8
	jnz	43F386h

l000000000043F3DA:
	xor	r13d,r13d
	test	rdi,rdi
	mov	r15d,1h
	jz	43F3A8h

l000000000043F3E8:
	cmp	bp,0FFh
	mov	eax,ebp
	jnz	43F39Ch

l000000000043F3F0:
	mov	rax,[rdi+10h]
	cmp	rax,[rdi+18h]
	jnc	43F430h

l000000000043F3FA:
	movzx	eax,word ptr [rax]
	jmp	43F39Ch
000000000043F3FF                                              90                .

l000000000043F400:
	mov	rax,[r8+10h]
	cmp	rax,[r8+18h]
	jnc	43F424h

l000000000043F40A:
	movzx	eax,word ptr [rax]

l000000000043F40D:
	cmp	ax,0FFh
	jz	43F3DAh

l000000000043F413:
	xor	r15d,r15d
	test	rdi,rdi
	mov	r14d,eax
	jnz	43F394h

l000000000043F422:
	jmp	43F3ADh

l000000000043F424:
	mov	rax,[r8]
	mov	rcx,r8
	call	qword ptr [rax+48h]
	jmp	43F40Dh
000000000043F42F                                              90                .

l000000000043F430:
	mov	rax,[rdi]
	mov	rcx,rdi
	call	qword ptr [rax+48h]
	jmp	43F39Ch
000000000043F43E                                           90 90               ..

;; fn000000000043F440: 000000000043F440
fn000000000043F440 proc
	push	rbx
	sub	rsp,60h
	mov	r10,[r9+8h]
	mov	r9,[r9]
	mov	rbx,rcx
	mov	rcx,[rsp+0A0h]
	mov	rax,[rdx]
	movdqu	xmm1,[r8]
	lea	r8,[rsp+50h]
	mov	[rsp+40h],r9
	lea	r9,[rsp+40h]
	mov	[rsp+48h],r10
	mov	[rsp+30h],rcx
	mov	rcx,[rsp+98h]
	movaps	[rsp+50h],xmm1
	mov	[rsp+28h],rcx
	mov	rcx,[rsp+90h]
	mov	[rsp+20h],rcx
	mov	rcx,rbx
	call	qword ptr [rax+28h]
	mov	rax,rbx
	add	rsp,60h
	pop	rbx
	ret
000000000043F4A6                   90 90 90 90 90 90 90 90 90 90       ..........

;; fn000000000043F4B0: 000000000043F4B0
fn000000000043F4B0 proc
	xor	eax,eax
	ret
000000000043F4B3          90 90 90 90 90 90 90 90 90 90 90 90 90    .............

;; fn000000000043F4C0: 000000000043F4C0
fn000000000043F4C0 proc
	push	rbx
	sub	rsp,60h
	mov	r10,[r9+8h]
	mov	r9,[r9]
	mov	rbx,rcx
	mov	rcx,[rsp+0A0h]
	mov	rax,[rdx]
	movdqu	xmm1,[r8]
	lea	r8,[rsp+50h]
	mov	[rsp+40h],r9
	lea	r9,[rsp+40h]
	mov	[rsp+48h],r10
	mov	[rsp+30h],rcx
	mov	rcx,[rsp+98h]
	movaps	[rsp+50h],xmm1
	mov	[rsp+28h],rcx
	mov	rcx,[rsp+90h]
	mov	[rsp+20h],rcx
	mov	rcx,rbx
	call	qword ptr [rax+30h]
	mov	rax,rbx
	add	rsp,60h
	pop	rbx
	ret
000000000043F526                   90 90 90 90 90 90 90 90 90 90       ..........

;; fn000000000043F530: 000000000043F530
;;   Called from:
;;     000000000043F33C (in fn000000000043F290)
fn000000000043F530 proc
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,38h
	mov	rax,[r8+8h]
	mov	rsi,[r8]
	mov	ebx,0Ah
	mov	[rsp+80h],rcx
	mov	rbp,[r9]
	movzx	r12d,word ptr [r9+8h]
	mov	[rsp+20h],rax
	mov	r14d,eax
	mov	rax,[rsp+0C0h]
	lea	rcx,[rax+0D0h]
	call	473020h
	cmp	qword ptr [rsp+0B8h],2h
	mov	r15,rax
	jz	43F59Bh

l000000000043F586:
	cmp	qword ptr [rsp+0B8h],4h
	mov	eax,1h
	mov	bx,3E8h
	cmovnz	ebx,eax

l000000000043F59B:
	xor	r13d,r13d
	xor	edi,edi
	mov	eax,r13d
	mov	r13,rdi
	mov	edi,eax
	jmp	43F678h
000000000043F5AD                                        0F 1F 00              ...

l000000000043F5B0:
	xor	edx,edx
	test	rbp,rbp
	jz	43F6B5h

l000000000043F5BB:
	cmp	r12w,0FFh
	jz	43F747h

l000000000043F5C6:
	cmp	r12w,0FFh
	setz	al
	cmp	al,dl
	jz	43F6C3h

l000000000043F5D6:
	cmp	r13,[rsp+0B8h]
	jnc	43F6C3h

l000000000043F5E4:
	test	rsi,rsi
	mov	edx,0FFFFh
	jz	43F5FDh

l000000000043F5EE:
	cmp	r14w,0FFh
	jz	43F770h

l000000000043F5F9:
	movzx	edx,r14w

l000000000043F5FD:
	mov	rax,[r15]
	mov	r8d,2Ah
	mov	rcx,r15
	call	qword ptr [rax+60h]
	movsx	edx,al
	lea	eax,[rdx-30h]
	cmp	al,9h
	ja	43F6C3h

l000000000043F61A:
	lea	eax,[rdi+rdi*4]
	lea	edi,[rdx+rax*2-30h]
	mov	eax,edi
	imul	eax,ebx
	cmp	eax,[rsp+0B0h]
	jg	43F6C3h

l000000000043F633:
	add	eax,ebx
	cmp	[rsp+0A8h],eax
	jge	43F6C3h

l000000000043F642:
	mov	eax,66666667h
	imul	ebx
	sar	ebx,1Fh
	sar	edx,2h
	sub	edx,ebx
	test	rsi,rsi
	mov	ebx,edx
	jz	43F674h

l000000000043F658:
	mov	rax,[rsi+10h]
	cmp	rax,[rsi+18h]
	jnc	43F7D0h

l000000000043F666:
	add	rax,2h
	mov	[rsi+10h],rax

l000000000043F66E:
	mov	r14d,0FFFFFFFFh

l000000000043F674:
	add	r13,1h

l000000000043F678:
	test	rsi,rsi
	jz	43F730h

l000000000043F681:
	cmp	r14w,0FFh
	jnz	43F5B0h

l000000000043F68C:
	mov	rax,[rsi+10h]
	cmp	rax,[rsi+18h]
	jnc	43F7F0h

l000000000043F69A:
	movzx	eax,word ptr [rax]

l000000000043F69D:
	cmp	ax,0FFh
	jz	43F730h

l000000000043F6A7:
	xor	edx,edx
	test	rbp,rbp
	mov	r14d,eax
	jnz	43F5BBh

l000000000043F6B5:
	cmp	r13,[rsp+0B8h]
	jc	43F5F9h

l000000000043F6C3:
	mov	eax,edi
	mov	rdi,r13
	cmp	[rsp+0B8h],rdi
	mov	r13d,eax
	jz	43F7C0h

l000000000043F6D9:
	cmp	rdi,2h
	jnz	43F7E0h

l000000000043F6E3:
	cmp	qword ptr [rsp+0B8h],4h
	jnz	43F7E0h

l000000000043F6F2:
	mov	rax,[rsp+0A0h]
	lea	r9d,[r13-64h]
	mov	[rax],r9d

l000000000043F701:
	mov	rax,[rsp+80h]
	mov	[rsp+20h],r14w
	mov	rcx,[rsp+20h]
	mov	[rax],rsi
	mov	[rax+8h],rcx
	add	rsp,38h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret
000000000043F72C                                     0F 1F 40 00             ..@.

l000000000043F730:
	test	rbp,rbp
	jz	43F7A0h

l000000000043F735:
	xor	esi,esi
	cmp	r12w,0FFh
	mov	edx,1h
	jnz	43F5C6h

l000000000043F747:
	mov	rax,[rbp+10h]
	cmp	rax,[rbp+18h]
	jnc	43F800h

l000000000043F755:
	movzx	r12d,word ptr [rax]

l000000000043F759:
	cmp	r12w,0FFh
	mov	eax,0h
	cmovz	rbp,rax

l000000000043F767:
	jmp	43F5C6h
000000000043F76C                                     0F 1F 40 00             ..@.

l000000000043F770:
	mov	rax,[rsi+10h]
	cmp	rax,[rsi+18h]
	jnc	43F820h

l000000000043F77E:
	movzx	r14d,word ptr [rax]

l000000000043F782:
	cmp	r14w,0FFh
	jnz	43F5F9h

l000000000043F78D:
	mov	edx,0FFFFh
	xor	esi,esi
	jmp	43F5FDh
000000000043F799                            0F 1F 80 00 00 00 00          .......

l000000000043F7A0:
	mov	eax,edi
	xor	esi,esi
	mov	rdi,r13
	cmp	[rsp+0B8h],rdi
	mov	r13d,eax
	jnz	43F6D9h

l000000000043F7B8:
	nop	dword ptr [rax+rax+0h]

l000000000043F7C0:
	mov	rax,[rsp+0A0h]
	mov	[rax],r13d
	jmp	43F701h

l000000000043F7D0:
	mov	rax,[rsi]
	mov	rcx,rsi
	call	qword ptr [rax+50h]
	jmp	43F66Eh
000000000043F7DE                                           66 90               f.

l000000000043F7E0:
	mov	rax,[rsp+0C8h]
	or	dword ptr [rax],4h
	jmp	43F701h

l000000000043F7F0:
	mov	rax,[rsi]
	mov	rcx,rsi
	call	qword ptr [rax+48h]
	jmp	43F69Dh
000000000043F7FE                                           66 90               f.

l000000000043F800:
	mov	rax,[rbp+0h]
	mov	[rsp+2Fh],dl
	mov	rcx,rbp
	call	qword ptr [rax+48h]
	movzx	edx,byte ptr [rsp+2Fh]
	mov	r12d,eax
	jmp	43F759h
000000000043F81B                                  0F 1F 44 00 00            ..D..

l000000000043F820:
	mov	rax,[rsi]
	mov	rcx,rsi
	call	qword ptr [rax+48h]
	mov	r14d,eax
	jmp	43F782h
000000000043F831    90 90 90 90 90 90 90 90 90 90 90 90 90 90 90  ...............

;; fn000000000043F840: 000000000043F840
fn000000000043F840 proc
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,+108h
	mov	rax,[rsp+170h]
	mov	r14,[r8]
	mov	rdi,rcx
	mov	rsi,[r8+8h]
	mov	r15,rdx
	mov	rbp,[r9]
	mov	r12,[r9+8h]
	lea	r13,[rax+0D0h]
	mov	rcx,r13
	call	472F60h
	mov	rcx,r13
	mov	rbx,rax
	call	473020h
	mov	rax,[rbx+10h]
	lea	rcx,[rsp+70h]
	lea	r9,[rsp+50h]
	lea	r8,[rsp+60h]
	mov	rdx,[rax+90h]
	mov	[rsp+90h],rdx
	mov	rdx,[rax+98h]
	mov	rax,[rax+0A0h]
	mov	[rsp+98h],rdx
	mov	rdx,r15
	mov	[rsp+0A0h],rax
	mov	rax,[rbx+10h]
	mov	rax,[rax+0A8h]
	mov	[rsp+0A8h],rax
	mov	rax,[rbx+10h]
	mov	rax,[rax+0B0h]
	mov	[rsp+0B0h],rax
	mov	rax,[rbx+10h]
	mov	rax,[rax+0B8h]
	mov	[rsp+0B8h],rax
	mov	rax,[rbx+10h]
	mov	rax,[rax+0C0h]
	mov	[rsp+0C0h],rax
	mov	rax,[rbx+10h]
	mov	rax,[rax+58h]
	mov	[rsp+0C8h],rax
	mov	rax,[rbx+10h]
	mov	rax,[rax+60h]
	mov	[rsp+0D0h],rax
	mov	rax,[rbx+10h]
	mov	rax,[rax+68h]
	mov	[rsp+0D8h],rax
	mov	rax,[rbx+10h]
	mov	rax,[rax+70h]
	mov	[rsp+0E0h],rax
	mov	rax,[rbx+10h]
	mov	rax,[rax+78h]
	mov	[rsp+0E8h],rax
	mov	rax,[rbx+10h]
	mov	dword ptr [rsp+8Ch],0h
	mov	rax,[rax+80h]
	mov	[rsp+0F0h],rax
	mov	rax,[rbx+10h]
	mov	rax,[rax+88h]
	mov	qword ptr [rsp+30h],+7h
	mov	[rsp+60h],r14
	mov	[rsp+68h],rsi
	mov	[rsp+50h],rbp
	mov	[rsp+58h],r12
	mov	[rsp+0F8h],rax
	lea	rax,[rsp+8Ch]
	mov	[rsp+40h],rax
	mov	rax,[rsp+170h]
	mov	[rsp+38h],rax
	lea	rax,[rsp+90h]
	mov	[rsp+28h],rax
	lea	rax,[rsp+88h]
	mov	[rsp+20h],rax
	call	441480h
	mov	eax,[rsp+8Ch]
	mov	rdx,[rsp+78h]
	mov	rcx,[rsp+70h]
	test	eax,eax
	mov	si,dx
	mov	r14d,edx
	mov	rbx,rcx
	jnz	43FA80h

l000000000043FA0D:
	mov	r8d,[rsp+88h]
	mov	rax,[rsp+180h]
	test	rcx,rcx
	mov	[rax+18h],r8d
	jz	43FA90h

l000000000043FA26:
	cmp	dx,0FFh
	jz	43FAC0h

l000000000043FA30:
	xor	r15d,r15d
	test	rbp,rbp
	jz	43FA59h

l000000000043FA38:
	cmp	r12w,0FFh
	mov	eax,r12d
	jz	43FAA7h

l000000000043FA42:
	cmp	ax,0FFh
	setz	al
	cmp	r15b,al
	jnz	43FA59h

l000000000043FA4E:
	mov	rax,[rsp+178h]
	or	dword ptr [rax],2h

l000000000043FA59:
	mov	si,r14w
	mov	rax,rdi
	mov	[rdi],rbx
	mov	[rdi+8h],rsi
	add	rsp,+108h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret
000000000043FA7B                                  0F 1F 44 00 00            ..D..

l000000000043FA80:
	mov	rax,[rsp+178h]
	or	dword ptr [rax],4h
	test	rcx,rcx
	jnz	43FA26h

l000000000043FA90:
	xor	ebx,ebx
	test	rbp,rbp
	mov	r15d,1h
	jz	43FA4Eh

l000000000043FA9D:
	cmp	r12w,0FFh
	mov	eax,r12d
	jnz	43FA42h

l000000000043FAA7:
	mov	rax,[rbp+10h]
	cmp	rax,[rbp+18h]
	jnc	43FB00h

l000000000043FAB1:
	movzx	eax,word ptr [rax]
	jmp	43FA42h
000000000043FAB6                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l000000000043FAC0:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	43FAF0h

l000000000043FACA:
	movzx	eax,word ptr [rax]

l000000000043FACD:
	cmp	ax,0FFh
	jz	43FA90h

l000000000043FAD3:
	xor	r15d,r15d
	test	rbp,rbp
	mov	r14d,eax
	jnz	43FA38h

l000000000043FAE2:
	jmp	43FA59h
000000000043FAE7                      66 0F 1F 84 00 00 00 00 00        f........

l000000000043FAF0:
	mov	rax,[rcx]
	call	qword ptr [rax+48h]
	jmp	43FACDh
000000000043FAF8                         0F 1F 84 00 00 00 00 00         ........

l000000000043FB00:
	mov	rax,[rbp+0h]
	mov	rcx,rbp
	call	qword ptr [rax+48h]
	jmp	43FA42h
000000000043FB0F                                              90                .

;; fn000000000043FB10: 000000000043FB10
fn000000000043FB10 proc
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,68h
	lea	rbp,[rsp+80h]
	mov	rax,[r8]
	mov	rdx,[r8+8h]
	mov	rsi,[rbp+60h]
	mov	[rbp+30h],rcx
	mov	r12,[rbp+58h]
	mov	rbx,[rbp+70h]
	mov	[rbp-30h],rax
	mov	rax,[r9]
	mov	[rbp-28h],rdx
	mov	rdx,[r9+8h]
	mov	[rbp-40h],rax
	mov	rax,[rbp+68h]
	mov	[rbp-38h],rdx
	lea	rcx,[rax+0D0h]
	call	473020h
	mov	r15,rax
	lea	rax,[001Eh+rsi*4]
	and	rax,0F0h
	call	4116F0h
	sub	rsp,rax
	lea	rdx,[rbp-30h]
	lea	rax,[rbp-40h]
	lea	r13,[rsp+20h]
	mov	rcx,rdx
	mov	[rbp-48h],rdx
	mov	rdx,rax
	mov	[rbp-50h],rax
	call	42B0C0h
	test	al,al
	jz	43FBCBh

l000000000043FBA1:
	or	dword ptr [rbx],4h

l000000000043FBA4:
	mov	rbx,[rbp+30h]
	mov	rax,[rbp-30h]
	mov	rdx,[rbp-28h]
	mov	[rbx],rax
	mov	rax,rbx
	mov	[rbx+8h],rdx
	lea	rsp,[rbp-18h]
	pop	rbx
	pop	rsi
	pop	rdi
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret

l000000000043FBCB:
	mov	rcx,[rbp-48h]
	call	42B1B0h
	test	rsi,rsi
	mov	r11d,eax
	jz	43FBA1h

l000000000043FBDC:
	xor	r14d,r14d
	xor	edi,edi
	jmp	43FC03h

l000000000043FBE3:
	mov	rax,[r15]
	mov	[rbp-58h],r11d
	mov	rcx,r15
	call	qword ptr [rax+30h]
	mov	r11d,[rbp-58h]
	cmp	r11w,ax
	jz	43FC10h

l000000000043FBFA:
	add	r14,1h
	cmp	r14,rsi
	jz	43FC22h

l000000000043FC03:
	mov	rax,[r12+r14*8]
	movzx	edx,word ptr [rax]
	cmp	r11w,dx
	jnz	43FBE3h

l000000000043FC10:
	mov	[r13+rdi*4+0h],r14d
	add	r14,1h
	add	rdi,1h
	cmp	r14,rsi
	jnz	43FC03h

l000000000043FC22:
	xor	r14d,r14d

l000000000043FC25:
	cmp	rdi,1h
	jbe	43FD53h

l000000000043FC2F:
	movsxd	rax,dword ptr [r13+0h]
	mov	r15d,1h
	mov	rcx,[r12+rax*8]
	call	41BD38h
	mov	rsi,rax

l000000000043FC45:
	movsxd	rax,dword ptr [r13+r15*4+0h]
	mov	rcx,[r12+rax*8]
	call	41BD38h
	cmp	rsi,rax
	cmova	rsi,rax

l000000000043FC5A:
	add	r15,1h
	cmp	r15,rdi
	jc	43FC45h

l000000000043FC63:
	mov	rcx,[rbp-30h]
	test	rcx,rcx
	jz	43FC8Bh

l000000000043FC6C:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	43FD48h

l000000000043FC7A:
	add	rax,2h
	mov	[rcx+10h],rax

l000000000043FC82:
	mov	ecx,0FFFFFFFFh
	mov	[rbp-28h],cx

l000000000043FC8B:
	add	r14,1h
	cmp	r14,rsi
	jnc	43FBA1h

l000000000043FC98:
	mov	rdx,[rbp-50h]
	mov	rcx,[rbp-48h]
	call	42B0C0h
	test	al,al
	jnz	43FBA1h

l000000000043FCAD:
	lea	r11,[r14+r14]
	xor	edx,edx
	jmp	43FCCAh

l000000000043FCB5:
	sub	rdi,1h
	mov	eax,[r13+rdi*4+0h]
	mov	[r15],eax

l000000000043FCC1:
	cmp	rdi,rdx
	jbe	43FC25h

l000000000043FCCA:
	lea	r15,[r13+rdx*4+0h]
	mov	rcx,[rbp-30h]
	movsxd	rax,dword ptr [r15]
	test	rcx,rcx
	mov	rax,[r12+rax*8]
	movzx	esi,word ptr [rax+r11]
	mov	eax,0FFFFFFFFh
	jz	43FCF3h

l000000000043FCE9:
	movzx	eax,word ptr [rbp-28h]
	cmp	ax,0FFh
	jz	43FD00h

l000000000043FCF3:
	cmp	si,ax
	jnz	43FCB5h

l000000000043FCF8:
	add	rdx,1h
	jmp	43FCC1h
000000000043FCFE                                           66 90               f.

l000000000043FD00:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	43FD30h

l000000000043FD0A:
	movzx	eax,word ptr [rax]

l000000000043FD0D:
	cmp	ax,0FFh
	jz	43FD20h

l000000000043FD13:
	mov	[rbp-28h],ax
	jmp	43FCF3h
000000000043FD19                            0F 1F 80 00 00 00 00          .......

l000000000043FD20:
	mov	qword ptr [rbp-30h],+0h
	jmp	43FCF3h
000000000043FD2A                               66 0F 1F 44 00 00           f..D..

l000000000043FD30:
	mov	rax,[rcx]
	mov	[rbp-60h],rdx
	mov	[rbp-58h],r11
	call	qword ptr [rax+48h]
	mov	rdx,[rbp-60h]
	mov	r11,[rbp-58h]
	jmp	43FD0Dh

l000000000043FD48:
	mov	rax,[rcx]
	call	qword ptr [rax+50h]
	jmp	43FC82h

l000000000043FD53:
	cmp	rdi,1h
	jnz	43FBA1h

l000000000043FD5D:
	mov	rcx,[rbp-30h]
	test	rcx,rcx
	jz	43FD74h

l000000000043FD66:
	call	462DD0h
	mov	edx,0FFFFFFFFh
	mov	[rbp-28h],dx

l000000000043FD74:
	movsxd	rax,dword ptr [r13+0h]
	lea	r15,[r14+1h]
	mov	rsi,[r12+rax*8]
	mov	edi,eax
	mov	rcx,rsi
	call	41BD38h
	cmp	rax,r15
	mov	r12,rax
	jbe	43FDA3h

l000000000043FD92:
	mov	rdx,[rbp-50h]
	mov	rcx,[rbp-48h]
	call	42B0C0h
	test	al,al
	jz	43FDB7h

l000000000043FDA3:
	cmp	r15,r12
	jnz	43FBA1h

l000000000043FDAC:
	mov	rax,[rbp+50h]
	mov	[rax],edi
	jmp	43FBA4h

l000000000043FDB7:
	movzx	r14d,word ptr [rsi+r15*2]
	mov	rcx,[rbp-48h]
	call	42B1B0h
	cmp	ax,r14w
	jnz	43FDA3h

l000000000043FDCB:
	mov	rcx,[rbp-30h]
	test	rcx,rcx
	jz	43FDEFh

l000000000043FDD4:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	43FDFAh

l000000000043FDDE:
	add	rax,2h
	mov	[rcx+10h],rax

l000000000043FDE6:
	mov	eax,0FFFFFFFFh
	mov	[rbp-28h],ax

l000000000043FDEF:
	add	r15,1h
	cmp	r12,r15
	ja	43FD92h

l000000000043FDF8:
	jmp	43FDA3h

l000000000043FDFA:
	mov	rax,[rcx]
	call	qword ptr [rax+50h]
	jmp	43FDE6h
000000000043FE02       90 90 90 90 90 90 90 90 90 90 90 90 90 90   ..............

;; fn000000000043FE10: 000000000043FE10
fn000000000043FE10 proc
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,+158h
	mov	rax,[rsp+1C0h]
	mov	r14,[r8]
	mov	rdi,rcx
	mov	rsi,[r8+8h]
	mov	r15,rdx
	mov	rbp,[r9]
	mov	r12,[r9+8h]
	lea	r13,[rax+0D0h]
	mov	rcx,r13
	call	472F60h
	mov	rcx,r13
	mov	rbx,rax
	call	473020h
	mov	rax,[rbx+10h]
	lea	rcx,[rsp+70h]
	lea	r9,[rsp+50h]
	lea	r8,[rsp+60h]
	mov	rdx,[rax+128h]
	mov	[rsp+90h],rdx
	mov	rdx,[rax+130h]
	mov	rax,[rax+138h]
	mov	[rsp+98h],rdx
	mov	rdx,r15
	mov	[rsp+0A0h],rax
	mov	rax,[rbx+10h]
	mov	rax,[rax+140h]
	mov	[rsp+0A8h],rax
	mov	rax,[rbx+10h]
	mov	rax,[rax+148h]
	mov	[rsp+0B0h],rax
	mov	rax,[rbx+10h]
	mov	rax,[rax+150h]
	mov	[rsp+0B8h],rax
	mov	rax,[rbx+10h]
	mov	rax,[rax+158h]
	mov	[rsp+0C0h],rax
	mov	rax,[rbx+10h]
	mov	rax,[rax+160h]
	mov	[rsp+0C8h],rax
	mov	rax,[rbx+10h]
	mov	rax,[rax+168h]
	mov	[rsp+0D0h],rax
	mov	rax,[rbx+10h]
	mov	rax,[rax+170h]
	mov	[rsp+0D8h],rax
	mov	rax,[rbx+10h]
	mov	rax,[rax+178h]
	mov	[rsp+0E0h],rax
	mov	rax,[rbx+10h]
	mov	rax,[rax+180h]
	mov	[rsp+0E8h],rax
	mov	rax,[rbx+10h]
	mov	rax,[rax+0C8h]
	mov	[rsp+0F0h],rax
	mov	rax,[rbx+10h]
	mov	rax,[rax+0D0h]
	mov	[rsp+0F8h],rax
	mov	rax,[rbx+10h]
	mov	rax,[rax+0D8h]
	mov	[rsp+100h],rax
	mov	rax,[rbx+10h]
	mov	rax,[rax+0E0h]
	mov	[rsp+108h],rax
	mov	rax,[rbx+10h]
	mov	rax,[rax+0E8h]
	mov	[rsp+110h],rax
	mov	rax,[rbx+10h]
	mov	rax,[rax+0F0h]
	mov	[rsp+118h],rax
	mov	rax,[rbx+10h]
	mov	rax,[rax+0F8h]
	mov	[rsp+120h],rax
	mov	rax,[rbx+10h]
	mov	rax,[rax+100h]
	mov	[rsp+128h],rax
	mov	rax,[rbx+10h]
	mov	rax,[rax+108h]
	mov	[rsp+130h],rax
	mov	rax,[rbx+10h]
	mov	rax,[rax+110h]
	mov	[rsp+138h],rax
	mov	rax,[rbx+10h]
	mov	rax,[rax+118h]
	mov	[rsp+140h],rax
	mov	rax,[rbx+10h]
	mov	dword ptr [rsp+8Ch],0h
	mov	rax,[rax+120h]
	mov	qword ptr [rsp+30h],+0Ch
	mov	[rsp+60h],r14
	mov	[rsp+68h],rsi
	mov	[rsp+50h],rbp
	mov	[rsp+58h],r12
	mov	[rsp+148h],rax
	lea	rax,[rsp+8Ch]
	mov	[rsp+40h],rax
	mov	rax,[rsp+1C0h]
	mov	[rsp+38h],rax
	lea	rax,[rsp+90h]
	mov	[rsp+28h],rax
	lea	rax,[rsp+88h]
	mov	[rsp+20h],rax
	call	441480h
	mov	eax,[rsp+8Ch]
	mov	rdx,[rsp+78h]
	mov	rcx,[rsp+70h]
	test	eax,eax
	mov	si,dx
	mov	r14d,edx
	mov	rbx,rcx
	jnz	440120h

l00000000004400AA:
	mov	r8d,[rsp+88h]
	mov	rax,[rsp+1D0h]
	test	rcx,rcx
	mov	[rax+10h],r8d
	jz	440130h

l00000000004400C3:
	cmp	dx,0FFh
	jz	440160h

l00000000004400CD:
	xor	r15d,r15d
	test	rbp,rbp
	jz	4400F6h

l00000000004400D5:
	cmp	r12w,0FFh
	mov	eax,r12d
	jz	440147h

l00000000004400DF:
	cmp	ax,0FFh
	setz	al
	cmp	r15b,al
	jnz	4400F6h

l00000000004400EB:
	mov	rax,[rsp+1C8h]
	or	dword ptr [rax],2h

l00000000004400F6:
	mov	si,r14w
	mov	rax,rdi
	mov	[rdi],rbx
	mov	[rdi+8h],rsi
	add	rsp,+158h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret
0000000000440118                         0F 1F 84 00 00 00 00 00         ........

l0000000000440120:
	mov	rax,[rsp+1C8h]
	or	dword ptr [rax],4h
	test	rcx,rcx
	jnz	4400C3h

l0000000000440130:
	xor	ebx,ebx
	test	rbp,rbp
	mov	r15d,1h
	jz	4400EBh

l000000000044013D:
	cmp	r12w,0FFh
	mov	eax,r12d
	jnz	4400DFh

l0000000000440147:
	mov	rax,[rbp+10h]
	cmp	rax,[rbp+18h]
	jnc	4401A0h

l0000000000440151:
	movzx	eax,word ptr [rax]
	jmp	4400DFh
0000000000440156                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l0000000000440160:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	440190h

l000000000044016A:
	movzx	eax,word ptr [rax]

l000000000044016D:
	cmp	ax,0FFh
	jz	440130h

l0000000000440173:
	xor	r15d,r15d
	test	rbp,rbp
	mov	r14d,eax
	jnz	4400D5h

l0000000000440182:
	jmp	4400F6h
0000000000440187                      66 0F 1F 84 00 00 00 00 00        f........

l0000000000440190:
	mov	rax,[rcx]
	call	qword ptr [rax+48h]
	jmp	44016Dh
0000000000440198                         0F 1F 84 00 00 00 00 00         ........

l00000000004401A0:
	mov	rax,[rbp+0h]
	mov	rcx,rbp
	call	qword ptr [rax+48h]
	jmp	4400DFh
00000000004401AF                                              90                .

;; fn00000000004401B0: 00000000004401B0
;;   Called from:
;;     000000000043F05A (in fn000000000043EFD0)
;;     000000000043F1BA (in fn000000000043F130)
fn00000000004401B0 proc
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,+138h
	mov	rax,[r8]
	mov	rdi,[rsp+1B8h]
	xor	r15d,r15d
	mov	[rsp+188h],rdx
	mov	rdx,[r8+8h]
	lea	r13,[rsp+0C8h]
	mov	[rsp+180h],rcx
	mov	[rsp+0B0h],rax
	mov	rax,[r9]
	mov	[rsp+0B8h],rdx
	mov	rdx,[r9+8h]
	mov	[rsp+0A0h],rax
	mov	rax,[rsp+1A0h]
	mov	[rsp+0A8h],rdx
	lea	rbx,[rax+0D0h]
	mov	rcx,rbx
	call	472F60h
	mov	rcx,rbx
	mov	r12,rax
	call	473020h
	mov	rcx,rdi
	mov	rbx,rax
	call	41BD38h
	lea	rdx,[rsp+0B0h]
	mov	rsi,rax
	mov	dword ptr [rsp+0C8h],0h
	mov	rax,[rsp+0B0h]
	mov	[rsp+68h],rdx
	lea	rdx,[rsp+90h]
	mov	[rsp+60h],rdx
	lea	rdx,[rsp+70h]
	mov	[rsp+50h],rdx
	lea	rdx,[rsp+80h]
	mov	[rsp+58h],rdx
	jmp	440330h
000000000044028D                                        0F 1F 00              ...

l0000000000440290:
	mov	rcx,[rsp+0A0h]
	xor	ebp,ebp
	test	rcx,rcx
	jz	4402B9h

l000000000044029F:
	xor	eax,eax
	cmp	word ptr [rsp+0A8h],0FFh
	jz	44039Fh

l00000000004402B0:
	cmp	bpl,al
	jz	4403D0h

l00000000004402B9:
	cmp	r15,rsi
	mov	eax,[rsp+0C8h]
	jnc	4403D7h

l00000000004402C9:
	test	eax,eax
	jnz	4403D7h

l00000000004402D1:
	lea	rbp,[r15+r15]
	mov	rax,[rbx]
	xor	r8d,r8d
	mov	rcx,rbx
	lea	r14,[rdi+rbp]
	movzx	edx,word ptr [r14]
	call	qword ptr [rax+60h]
	cmp	al,25h
	jz	440421h

l00000000004402F1:
	mov	rcx,[rsp+0B0h]
	movzx	ebp,word ptr [r14]
	test	rcx,rcx
	mov	rax,rcx
	jz	44047Ch

l0000000000440309:
	movzx	edx,word ptr [rsp+0B8h]
	cmp	dx,0FFh
	jz	440490h

l000000000044031B:
	cmp	bp,dx
	jz	4404D5h

l0000000000440324:
	or	dword ptr [rsp+0C8h],4h

l000000000044032C:
	add	r15,1h

l0000000000440330:
	test	rax,rax
	jz	44037Ch

l0000000000440335:
	cmp	word ptr [rsp+0B8h],0FFh
	jnz	440290h

l0000000000440344:
	mov	rdx,[rax+10h]
	cmp	rdx,[rax+18h]
	jnc	440590h

l0000000000440352:
	movzx	eax,word ptr [rdx]

l0000000000440355:
	cmp	ax,0FFh
	jz	440370h

l000000000044035B:
	mov	[rsp+0B8h],ax
	jmp	440290h
0000000000440368                         0F 1F 84 00 00 00 00 00         ........

l0000000000440370:
	mov	qword ptr [rsp+0B0h],+0h

l000000000044037C:
	mov	rcx,[rsp+0A0h]
	test	rcx,rcx
	jz	4403D0h

l0000000000440389:
	xor	eax,eax
	cmp	word ptr [rsp+0A8h],0FFh
	mov	ebp,1h
	jnz	4402B0h

l000000000044039F:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	440580h

l00000000004403AD:
	movzx	eax,word ptr [rax]

l00000000004403B0:
	cmp	ax,0FFh
	jz	440500h

l00000000004403BA:
	mov	[rsp+0A8h],ax
	xor	eax,eax
	cmp	bpl,al
	jnz	4402B9h

l00000000004403CD:
	nop	dword ptr [rax]

l00000000004403D0:
	mov	eax,[rsp+0C8h]

l00000000004403D7:
	test	eax,eax
	jnz	4403E0h

l00000000004403DB:
	cmp	r15,rsi
	jz	4403EBh

l00000000004403E0:
	mov	rax,[rsp+1A8h]
	or	dword ptr [rax],4h

l00000000004403EB:
	mov	rdi,[rsp+180h]
	mov	rax,[rsp+0B0h]
	mov	rdx,[rsp+0B8h]
	mov	[rdi],rax
	mov	rax,rdi
	mov	[rdi+8h],rdx
	add	rsp,+138h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret

l0000000000440421:
	mov	rax,[rbx]
	movzx	edx,word ptr [rdi+rbp+2h]
	xor	r8d,r8d
	mov	rcx,rbx
	lea	r14,[r15+1h]
	call	qword ptr [rax+60h]
	cmp	al,4Fh
	mov	dword ptr [rsp+0CCh],0h
	jz	440520h

l0000000000440449:
	cmp	al,45h
	jz	440520h

l0000000000440451:
	sub	eax,41h
	cmp	al,38h
	ja	440562h

l000000000044045C:
	lea	rdx,[000000000048DBF8]                                 ; [rip+0004D795]
	movzx	eax,al
	movsxd	rax,dword ptr [rdx+rax*4]
	add	rdx,rax
	jmp	rdx
000000000044046F                                              90                .

l0000000000440470:
	mov	qword ptr [rsp+0B0h],+0h

l000000000044047C:
	xor	eax,eax
	cmp	bp,0FFh
	jnz	440324h

l0000000000440488:
	jmp	44032Ch
000000000044048D                                        0F 1F 00              ...

l0000000000440490:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	4405A0h

l000000000044049E:
	movzx	eax,word ptr [rax]

l00000000004404A1:
	cmp	ax,0FFh
	jz	440470h

l00000000004404A7:
	cmp	bp,ax
	mov	[rsp+0B8h],ax
	jz	4404C1h

l00000000004404B4:
	mov	rax,[rsp+0B0h]
	jmp	440324h

l00000000004404C1:
	mov	rcx,[rsp+0B0h]
	test	rcx,rcx
	mov	rax,rcx
	jz	44032Ch

l00000000004404D5:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	4413A0h

l00000000004404E3:
	add	rax,2h
	mov	[rcx+10h],rax

l00000000004404EB:
	mov	eax,0FFFFFFFFh
	mov	[rsp+0B8h],ax
	mov	rax,rcx
	jmp	44032Ch

l0000000000440500:
	mov	qword ptr [rsp+0A0h],+0h
	mov	eax,1h
	jmp	4402B0h
0000000000440516                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l0000000000440520:
	mov	rax,[rbx]
	movzx	edx,word ptr [rdi+rbp+4h]
	lea	r14,[r15+2h]
	xor	r8d,r8d
	mov	rcx,rbx
	call	qword ptr [rax+60h]
	jmp	440451h
000000000044053A                               66 0F 1F 44 00 00           f..D..
0000000000440540 48 8B 4C 24 68 E8 66 AC FE FF 4C 8B 0B 45 31 C0 H.L$h.f...L..E1.
0000000000440550 0F B7 D0 48 89 D9 41 FF 51 60 3C 09 0F 84 51 0E ...H..A.Q`<...Q.
0000000000440560 00 00                                           ..             

l0000000000440562:
	or	dword ptr [rsp+0C8h],4h
	mov	rax,[rsp+0B0h]
	mov	r15,r14
	jmp	44032Ch
000000000044057A                               66 0F 1F 44 00 00           f..D..

l0000000000440580:
	mov	rax,[rcx]
	call	qword ptr [rax+48h]
	jmp	4403B0h
000000000044058B                                  0F 1F 44 00 00            ..D..

l0000000000440590:
	mov	rdx,[rax]
	mov	rcx,rax
	call	qword ptr [rdx+48h]
	jmp	440355h
000000000044059E                                           66 90               f.

l00000000004405A0:
	mov	rax,[rcx]
	call	qword ptr [rax+48h]
	jmp	4404A1h
00000000004405AB                                  0F 1F 44 00 00            ..D..
00000000004405B0 48 8B 84 24 B0 00 00 00 48 8B 94 24 B8 00 00 00 H..$....H..$....
00000000004405C0 48 89 84 24 80 00 00 00 48 89 94 24 88 00 00 00 H..$....H..$....
00000000004405D0 48 8B 84 24 A0 00 00 00 48 8B 94 24 A8 00 00 00 H..$....H..$....
00000000004405E0 48 89 44 24 70 48 89 54 24 78 49 8B 44 24 10 48 H.D$pH.T$xI.D$.H
00000000004405F0 8B 40 10 48 89 44 24 38 48 8B 84 24 B0 01 00 00 .@.H.D$8H..$....
0000000000440600 4C 8B 4C 24 50 4C 8B 44 24 58 48 8B 94 24 88 01 L.L$PL.D$XH..$..
0000000000440610 00 00 48 8B 4C 24 60 4C 89 6C 24 28 48 89 44 24 ..H.L$`L.l$(H.D$
0000000000440620 30 48 8B 84 24 A0 01 00 00 48 89 44 24 20 E8 7D 0H..$....H.D$ .}
0000000000440630 FB FF FF 48 8B 94 24 90 00 00 00 48 89 D0 48 89 ...H..$....H..H.
0000000000440640 94 24 B0 00 00 00 0F B7 94 24 98 00 00 00 66 89 .$.......$....f.
0000000000440650 94 24 B8 00 00 00 E9 17 FF FF FF 0F 1F 44 00 00 .$...........D..
0000000000440660 49 8B 44 24 10 48 8B 50 58 48 89 94 24 D0 00 00 I.D$.H.PXH..$...
0000000000440670 00 48 8B 50 60 48 89 94 24 D8 00 00 00 48 8B 40 .H.P`H..$....H.@
0000000000440680 68 48 89 84 24 E0 00 00 00 49 8B 44 24 10 48 8B hH..$....I.D$.H.
0000000000440690 40 70 48 89 84 24 E8 00 00 00 49 8B 44 24 10 48 @pH..$....I.D$.H
00000000004406A0 8B 40 78 48 89 84 24 F0 00 00 00 49 8B 44 24 10 .@xH..$....I.D$.
00000000004406B0 48 8B 80 80 00 00 00 48 89 84 24 F8 00 00 00 49 H......H..$....I
00000000004406C0 8B 44 24 10 48 8B 80 88 00 00 00 48 89 84 24 00 .D$.H......H..$.
00000000004406D0 01 00 00 48 8B 84 24 B0 00 00 00 48 8B 94 24 B8 ...H..$....H..$.
00000000004406E0 00 00 00 4C 89 6C 24 40 48 C7 44 24 30 07 00 00 ...L.l$@H.D$0...
00000000004406F0 00 48 89 84 24 80 00 00 00 48 8B 84 24 A0 00 00 .H..$....H..$...
0000000000440700 00 48 89 94 24 88 00 00 00 48 8B 94 24 A8 00 00 .H..$....H..$...
0000000000440710 00 48 89 44 24 70 48 8B 84 24 A0 01 00 00 48 89 .H.D$pH..$....H.
0000000000440720 54 24 78 48 89 44 24 38 48 8D 84 24 D0 00 00 00 T$xH.D$8H..$....
0000000000440730 48 89 44 24 28 48 8B 84 24 B0 01 00 00 48 83 C0 H.D$(H..$....H..
0000000000440740 18 4C 8B 4C 24 50 4C 8B 44 24 58 48 8B 94 24 88 .L.L$PL.D$XH..$.
0000000000440750 01 00 00 48 8B 4C 24 60 48 89 44 24 20 E8 AE F3 ...H.L$`H.D$ ...
0000000000440760 FF FF E9 CC FE FF FF 66 0F 1F 84 00 00 00 00 00 .......f........
0000000000440770 49 8B 44 24 10 48 8B 90 C8 00 00 00 48 89 94 24 I.D$.H......H..$
0000000000440780 D0 00 00 00 48 8B 90 D0 00 00 00 48 89 94 24 D8 ....H......H..$.
0000000000440790 00 00 00 48 8B 80 D8 00 00 00 48 89 84 24 E0 00 ...H......H..$..
00000000004407A0 00 00 49 8B 44 24 10 48 8B 80 E0 00 00 00 48 89 ..I.D$.H......H.
00000000004407B0 84 24 E8 00 00 00 49 8B 44 24 10 48 8B 80 E8 00 .$....I.D$.H....
00000000004407C0 00 00 48 89 84 24 F0 00 00 00 49 8B 44 24 10 48 ..H..$....I.D$.H
00000000004407D0 8B 80 F0 00 00 00 48 89 84 24 F8 00 00 00 49 8B ......H..$....I.
00000000004407E0 44 24 10 48 8B 80 F8 00 00 00 48 89 84 24 00 01 D$.H......H..$..
00000000004407F0 00 00 49 8B 44 24 10 48 8B 80 00 01 00 00 48 89 ..I.D$.H......H.
0000000000440800 84 24 08 01 00 00 49 8B 44 24 10 48 8B 80 08 01 .$....I.D$.H....
0000000000440810 00 00 48 89 84 24 10 01 00 00 49 8B 44 24 10 48 ..H..$....I.D$.H
0000000000440820 8B 80 10 01 00 00 48 89 84 24 18 01 00 00 49 8B ......H..$....I.
0000000000440830 44 24 10 48 8B 80 18 01 00 00 48 89 84 24 20 01 D$.H......H..$ .
0000000000440840 00 00 49 8B 44 24 10 48 8B 80 20 01 00 00 48 89 ..I.D$.H.. ...H.
0000000000440850 84 24 28 01 00 00 48 8B 84 24 B0 00 00 00 48 8B .$(...H..$....H.
0000000000440860 94 24 B8 00 00 00 4C 89 6C 24 40 48 C7 44 24 30 .$....L.l$@H.D$0
0000000000440870 0C 00 00 00 48 89 84 24 80 00 00 00 48 8B 84 24 ....H..$....H..$
0000000000440880 A0 00 00 00 48 89 94 24 88 00 00 00 48 8B 94 24 ....H..$....H..$
0000000000440890 A8 00 00 00 48 89 44 24 70 48 8B 84 24 A0 01 00 ....H.D$pH..$...
00000000004408A0 00 48 89 54 24 78 48 89 44 24 38 48 8D 84 24 D0 .H.T$xH.D$8H..$.
00000000004408B0 00 00 00 48 89 44 24 28 48 8B 84 24 B0 01 00 00 ...H.D$(H..$....
00000000004408C0 48 83 C0 10 E9 78 FE FF FF 0F 1F 80 00 00 00 00 H....x..........
00000000004408D0 48 8B 84 24 B0 00 00 00 48 8B 94 24 B8 00 00 00 H..$....H..$....
00000000004408E0 4C 8B 44 24 58 4C 8B 4C 24 50 48 8B 4C 24 60 4C L.D$XL.L$PH.L$`L
00000000004408F0 89 6C 24 48 48 89 84 24 80 00 00 00 48 8B 84 24 .l$HH..$....H..$
0000000000440900 A0 00 00 00 48 89 94 24 88 00 00 00 48 8B 94 24 ....H..$....H..$
0000000000440910 A8 00 00 00 48 C7 44 24 38 04 00 00 00 C7 44 24 ....H.D$8.....D$
0000000000440920 30 0F 27 00 00 48 89 44 24 70 48 8B 84 24 A0 01 0.'..H.D$pH..$..
0000000000440930 00 00 48 89 54 24 78 48 8B 94 24 88 01 00 00 C7 ..H.T$xH..$.....
0000000000440940 44 24 28 00 00 00 00 48 89 44 24 40 48 8D 84 24 D$(....H.D$@H..$
0000000000440950 CC 00 00 00 48 89 44 24 20 E8 D2 EB FF FF 48 8B ....H.D$ .....H.
0000000000440960 94 24 90 00 00 00 44 8B 84 24 C8 00 00 00 48 89 .$....D..$....H.
0000000000440970 D0 48 89 94 24 B0 00 00 00 0F B7 94 24 98 00 00 .H..$.......$...
0000000000440980 00 45 85 C0 66 89 94 24 B8 00 00 00 0F 85 E0 FB .E..f..$........
0000000000440990 FF FF 8B 8C 24 CC 00 00 00 44 8D 41 64 8D 91 94 ....$....D.Ad...
00000000004409A0 F8 FF FF 85 C9 48 8B 8C 24 B0 01 00 00 41 0F 48 .....H..$....A.H
00000000004409B0 D0 89 51 14 E9 B9 FB FF FF 0F 1F 80 00 00 00 00 ..Q.............
00000000004409C0 48 8D AC 24 D0 00 00 00 48 8B 03 4C 8D 05 15 D2 H..$....H..L....
00000000004409D0 04 00 48 8D 15 05 D2 04 00 49 89 E9 48 89 D9 FF ..H......I..H...
00000000004409E0 50 58 48 8B 84 24 B0 00 00 00 48 8B 94 24 B8 00 PXH..$....H..$..
00000000004409F0 00 00 48 89 6C 24 38 48 89 84 24 80 00 00 00 48 ..H.l$8H..$....H
0000000000440A00 89 94 24 88 00 00 00 48 8B 84 24 A0 00 00 00 48 ..$....H..$....H
0000000000440A10 8B 94 24 A8 00 00 00 48 89 44 24 70 48 89 54 24 ..$....H.D$pH.T$
0000000000440A20 78 E9 D2 FB FF FF 66 2E 0F 1F 84 00 00 00 00 00 x.....f.........
0000000000440A30 48 8B 84 24 B0 00 00 00 48 8B 94 24 B8 00 00 00 H..$....H..$....
0000000000440A40 4C 89 6C 24 48 48 C7 44 24 38 02 00 00 00 C7 44 L.l$HH.D$8.....D
0000000000440A50 24 30 17 00 00 00 C7 44 24 28 00 00 00 00 48 89 $0.....D$(....H.
0000000000440A60 84 24 80 00 00 00 48 8B 84 24 A0 00 00 00 48 89 .$....H..$....H.
0000000000440A70 94 24 88 00 00 00 48 8B 94 24 A8 00 00 00 48 89 .$....H..$....H.
0000000000440A80 44 24 70 48 8B 84 24 A0 01 00 00 48 89 54 24 78 D$pH..$....H.T$x
0000000000440A90 48 89 44 24 40 48 8B 84 24 B0 01 00 00 48 83 C0 H.D$@H..$....H..
0000000000440AA0 08 48 89 44 24 20 4C 8B 4C 24 50 4C 8B 44 24 58 .H.D$ L.L$PL.D$X
0000000000440AB0 48 8B 94 24 88 01 00 00 48 8B 4C 24 60 E8 6E EA H..$....H.L$`.n.
0000000000440AC0 FF FF E9 6C FB FF FF 66 0F 1F 84 00 00 00 00 00 ...l...f........
0000000000440AD0 48 8B 84 24 B0 00 00 00 48 8B 94 24 B8 00 00 00 H..$....H..$....
0000000000440AE0 4C 89 6C 24 48 48 C7 44 24 38 02 00 00 00 C7 44 L.l$HH.D$8.....D
0000000000440AF0 24 30 0C 00 00 00 C7 44 24 28 01 00 00 00 48 89 $0.....D$(....H.
0000000000440B00 84 24 80 00 00 00 48 8B 84 24 A0 00 00 00 48 89 .$....H..$....H.
0000000000440B10 94 24 88 00 00 00 48 8B 94 24 A8 00 00 00 48 89 .$....H..$....H.
0000000000440B20 44 24 70 48 8B 84 24 A0 01 00 00 48 89 54 24 78 D$pH..$....H.T$x
0000000000440B30 48 89 44 24 40 48 8B 84 24 B0 01 00 00 48 83 C0 H.D$@H..$....H..
0000000000440B40 08 E9 5B FF FF FF 66 2E 0F 1F 84 00 00 00 00 00 ..[...f.........
0000000000440B50 48 8B 84 24 B0 00 00 00 48 8B 94 24 B8 00 00 00 H..$....H..$....
0000000000440B60 4C 89 6C 24 48 48 C7 44 24 38 02 00 00 00 C7 44 L.l$HH.D$8.....D
0000000000440B70 24 30 3B 00 00 00 C7 44 24 28 00 00 00 00 48 89 $0;....D$(....H.
0000000000440B80 84 24 80 00 00 00 48 8B 84 24 A0 00 00 00 48 89 .$....H..$....H.
0000000000440B90 94 24 88 00 00 00 48 8B 94 24 A8 00 00 00 48 89 .$....H..$....H.
0000000000440BA0 44 24 70 48 8B 84 24 A0 01 00 00 48 89 54 24 78 D$pH..$....H.T$x
0000000000440BB0 48 89 44 24 40 48 8B 84 24 B0 01 00 00 48 83 C0 H.D$@H..$....H..
0000000000440BC0 04 E9 DB FE FF FF 66 2E 0F 1F 84 00 00 00 00 00 ......f.........
0000000000440BD0 48 8D AC 24 D0 00 00 00 48 8B 03 4C 8D 05 0B D0 H..$....H..L....
0000000000440BE0 04 00 48 8D 15 FE CF 04 00 49 89 E9 E9 EB FD FF ..H......I......
0000000000440BF0 FF 48 8B 84 24 B0 00 00 00 48 8B 94 24 B8 00 00 .H..$....H..$...
0000000000440C00 00 4C 89 6C 24 48 48 C7 44 24 38 02 00 00 00 C7 .L.l$HH.D$8.....
0000000000440C10 44 24 30 3C 00 00 00 C7 44 24 28 00 00 00 00 48 D$0<....D$(....H
0000000000440C20 89 84 24 80 00 00 00 48 8B 84 24 A0 00 00 00 48 ..$....H..$....H
0000000000440C30 89 94 24 88 00 00 00 48 8B 94 24 A8 00 00 00 48 ..$....H..$....H
0000000000440C40 89 44 24 70 48 8B 84 24 A0 01 00 00 48 89 54 24 .D$pH..$....H.T$
0000000000440C50 78 48 89 44 24 40 48 8B 84 24 B0 01 00 00 E9 3E xH.D$@H..$.....>
0000000000440C60 FE FF FF 48 8D AC 24 D0 00 00 00 48 8B 03 4C 8D ...H..$....H..L.
0000000000440C70 05 81 CF 04 00 48 8D 15 71 CF 04 00 49 89 E9 E9 .....H..q...I...
0000000000440C80 58 FD FF FF 48 8B 84 24 B0 00 00 00 48 8B 94 24 X...H..$....H..$
0000000000440C90 B8 00 00 00 48 89 84 24 80 00 00 00 48 89 94 24 ....H..$....H..$
0000000000440CA0 88 00 00 00 48 8B 84 24 A0 00 00 00 48 8B 94 24 ....H..$....H..$
0000000000440CB0 A8 00 00 00 48 89 44 24 70 48 89 54 24 78 49 8B ....H.D$pH.T$xI.
0000000000440CC0 44 24 10 48 8B 40 20 E9 27 F9 FF FF 0F 1F 40 00 D$.H.@ .'.....@.
0000000000440CD0 48 8B 4C 24 68 E8 D6 A4 FE FF 4C 8B 0B 44 0F B7 H.L$h.....L..D..
0000000000440CE0 C0 BA 01 00 00 00 48 89 D9 41 FF 51 10 84 C0 0F ......H..A.Q....
0000000000440CF0 84 6D F8 FF FF 48 8B 84 24 B0 00 00 00 48 8B 94 .m...H..$....H..
0000000000440D00 24 B8 00 00 00 48 8D AC 24 D0 00 00 00 4C 8B 4C $....H..$....L.L
0000000000440D10 24 50 4C 8B 44 24 58 48 8B 4C 24 60 4C 89 6C 24 $PL.D$XH.L$`L.l$
0000000000440D20 40 48 89 84 24 80 00 00 00 48 8B 84 24 A0 00 00 @H..$....H..$...
0000000000440D30 00 48 89 94 24 88 00 00 00 48 8B 94 24 A8 00 00 .H..$....H..$...
0000000000440D40 00 48 C7 44 24 30 0E 00 00 00 48 89 6C 24 20 48 .H.D$0....H.l$ H
0000000000440D50 89 44 24 70 48 8B 84 24 A0 01 00 00 48 89 54 24 .D$pH..$....H.T$
0000000000440D60 78 48 8B 94 24 88 01 00 00 48 89 44 24 38 48 8B xH..$....H.D$8H.
0000000000440D70 05 0B 0B 05 00 48 89 44 24 28 E8 91 ED FF FF 48 .....H.D$(.....H
0000000000440D80 8B 84 24 90 00 00 00 48 8B 4C 24 68 48 8D 94 24 ..$....H.L$hH..$
0000000000440D90 A0 00 00 00 48 89 84 24 B0 00 00 00 0F B7 84 24 ....H..$.......$
0000000000440DA0 98 00 00 00 66 89 84 24 B8 00 00 00 E8 0F A3 FE ....f..$........
0000000000440DB0 FF 84 C0 0F 85 B1 F7 FF FF 8B 8C 24 C8 00 00 00 ...........$....
0000000000440DC0 85 C9 0F 85 A2 F7 FF FF 8B 94 24 D0 00 00 00 85 ..........$.....
0000000000440DD0 D2 0F 85 93 F7 FF FF 48 8B 4C 24 68 E8 CF A3 FE .......H.L$h....
0000000000440DE0 FF 41 89 C7 48 8B 03 BA 2D 00 00 00 48 89 D9 FF .A..H...-...H...
0000000000440DF0 50 50 66 41 39 C7 74 25 48 8B 4C 24 68 E8 AE A3 PPfA9.t%H.L$h...
0000000000440E00 FE FF 41 89 C7 48 8B 03 BA 2B 00 00 00 48 89 D9 ..A..H...+...H..
0000000000440E10 FF 50 50 66 41 39 C7 0F 85 4D F7 FF FF 48 8B 84 .PPfA9...M...H..
0000000000440E20 24 B0 00 00 00 48 8B 94 24 B8 00 00 00 4C 8B 7C $....H..$....L.|
0000000000440E30 24 60 4C 8B 4C 24 50 4C 8B 44 24 58 4C 89 6C 24 $`L.L$PL.D$XL.l$
0000000000440E40 48 48 89 84 24 80 00 00 00 48 8B 84 24 A0 00 00 HH..$....H..$...
0000000000440E50 00 48 89 94 24 88 00 00 00 48 8B 94 24 A8 00 00 .H..$....H..$...
0000000000440E60 00 4C 89 F9 48 C7 44 24 38 02 00 00 00 C7 44 24 .L..H.D$8.....D$
0000000000440E70 30 17 00 00 00 48 89 44 24 70 48 8B 84 24 A0 01 0....H.D$pH..$..
0000000000440E80 00 00 48 89 54 24 78 48 8B 94 24 88 01 00 00 C7 ..H.T$xH..$.....
0000000000440E90 44 24 28 00 00 00 00 48 89 6C 24 20 48 89 44 24 D$(....H.l$ H.D$
0000000000440EA0 40 E8 8A E6 FF FF 48 8B 84 24 90 00 00 00 4C 8B @.....H..$....L.
0000000000440EB0 4C 24 50 4C 89 F9 4C 8B 44 24 58 4C 89 6C 24 48 L$PL..L.D$XL.l$H
0000000000440EC0 48 C7 44 24 38 02 00 00 00 C7 44 24 30 3B 00 00 H.D$8.....D$0;..
0000000000440ED0 00 48 89 84 24 B0 00 00 00 0F B7 84 24 98 00 00 .H..$.......$...
0000000000440EE0 00 C7 44 24 28 00 00 00 00 48 89 6C 24 20 66 89 ..D$(....H.l$ f.
0000000000440EF0 84 24 B8 00 00 00 48 8B 84 24 B0 00 00 00 48 8B .$....H..$....H.
0000000000440F00 94 24 B8 00 00 00 48 89 84 24 80 00 00 00 48 8B .$....H..$....H.
0000000000440F10 84 24 A0 00 00 00 48 89 94 24 88 00 00 00 48 8B .$....H..$....H.
0000000000440F20 94 24 A8 00 00 00 48 89 44 24 70 48 8B 84 24 A0 .$....H.D$pH..$.
0000000000440F30 01 00 00 48 89 54 24 78 48 8B 94 24 88 01 00 00 ...H.T$xH..$....
0000000000440F40 48 89 44 24 40 E8 E6 E5 FF FF 48 8B 84 24 90 00 H.D$@.....H..$..
0000000000440F50 00 00 48 89 84 24 B0 00 00 00 0F B7 84 24 98 00 ..H..$.......$..
0000000000440F60 00 00 66 89 84 24 B8 00 00 00 E9 FB F5 FF FF 90 ..f..$..........
0000000000440F70 49 8B 44 24 10 48 8B 90 90 00 00 00 48 89 94 24 I.D$.H......H..$
0000000000440F80 D0 00 00 00 48 8B 90 98 00 00 00 48 89 94 24 D8 ....H......H..$.
0000000000440F90 00 00 00 48 8B 80 A0 00 00 00 48 89 84 24 E0 00 ...H......H..$..
0000000000440FA0 00 00 49 8B 44 24 10 48 8B 80 A8 00 00 00 48 89 ..I.D$.H......H.
0000000000440FB0 84 24 E8 00 00 00 49 8B 44 24 10 48 8B 80 B0 00 .$....I.D$.H....
0000000000440FC0 00 00 48 89 84 24 F0 00 00 00 49 8B 44 24 10 48 ..H..$....I.D$.H
0000000000440FD0 8B 80 B8 00 00 00 48 89 84 24 F8 00 00 00 49 8B ......H..$....I.
0000000000440FE0 44 24 10 48 8B 80 C0 00 00 00 E9 DC F6 FF FF 90 D$.H............
0000000000440FF0 49 8B 44 24 10 48 8B 90 28 01 00 00 48 89 94 24 I.D$.H..(...H..$
0000000000441000 D0 00 00 00 48 8B 90 30 01 00 00 48 89 94 24 D8 ....H..0...H..$.
0000000000441010 00 00 00 48 8B 80 38 01 00 00 48 89 84 24 E0 00 ...H..8...H..$..
0000000000441020 00 00 49 8B 44 24 10 48 8B 80 40 01 00 00 48 89 ..I.D$.H..@...H.
0000000000441030 84 24 E8 00 00 00 49 8B 44 24 10 48 8B 80 48 01 .$....I.D$.H..H.
0000000000441040 00 00 48 89 84 24 F0 00 00 00 49 8B 44 24 10 48 ..H..$....I.D$.H
0000000000441050 8B 80 50 01 00 00 48 89 84 24 F8 00 00 00 49 8B ..P...H..$....I.
0000000000441060 44 24 10 48 8B 80 58 01 00 00 48 89 84 24 00 01 D$.H..X...H..$..
0000000000441070 00 00 49 8B 44 24 10 48 8B 80 60 01 00 00 48 89 ..I.D$.H..`...H.
0000000000441080 84 24 08 01 00 00 49 8B 44 24 10 48 8B 80 68 01 .$....I.D$.H..h.
0000000000441090 00 00 48 89 84 24 10 01 00 00 49 8B 44 24 10 48 ..H..$....I.D$.H
00000000004410A0 8B 80 70 01 00 00 48 89 84 24 18 01 00 00 49 8B ..p...H..$....I.
00000000004410B0 44 24 10 48 8B 80 78 01 00 00 48 89 84 24 20 01 D$.H..x...H..$ .
00000000004410C0 00 00 49 8B 44 24 10 48 8B 80 80 01 00 00 E9 7B ..I.D$.H.......{
00000000004410D0 F7 FF FF 48 8B 84 24 B0 00 00 00 48 8B 94 24 B8 ...H..$....H..$.
00000000004410E0 00 00 00 48 89 84 24 80 00 00 00 48 89 94 24 88 ...H..$....H..$.
00000000004410F0 00 00 00 48 8B 84 24 A0 00 00 00 48 8B 94 24 A8 ...H..$....H..$.
0000000000441100 00 00 00 48 89 44 24 70 48 89 54 24 78 49 8B 44 ...H.D$pH.T$xI.D
0000000000441110 24 10 48 8B 40 30 E9 D8 F4 FF FF 0F 1F 44 00 00 $.H.@0.......D..
0000000000441120 48 8B 84 24 B0 00 00 00 48 8B 94 24 B8 00 00 00 H..$....H..$....
0000000000441130 4C 89 6C 24 48 48 C7 44 24 38 02 00 00 00 C7 44 L.l$HH.D$8.....D
0000000000441140 24 30 1F 00 00 00 C7 44 24 28 01 00 00 00 48 89 $0.....D$(....H.
0000000000441150 84 24 80 00 00 00 48 8B 84 24 A0 00 00 00 48 89 .$....H..$....H.
0000000000441160 94 24 88 00 00 00 48 8B 94 24 A8 00 00 00 48 89 .$....H..$....H.
0000000000441170 44 24 70 48 8B 84 24 A0 01 00 00 48 89 54 24 78 D$pH..$....H.T$x
0000000000441180 48 89 44 24 40 48 8B 84 24 B0 01 00 00 48 83 C0 H.D$@H..$....H..
0000000000441190 0C E9 0B F9 FF FF 66 2E 0F 1F 84 00 00 00 00 00 ......f.........
00000000004411A0 48 8B 4C 24 68 E8 06 A0 FE FF 4C 8B 0B 44 0F B7 H.L$h.....L..D..
00000000004411B0 C0 BA 20 00 00 00 48 89 D9 41 FF 51 10 84 C0 0F .. ...H..A.Q....
00000000004411C0 84 29 02 00 00 48 8B 8C 24 B0 00 00 00 48 8B 84 .)...H..$....H..
00000000004411D0 24 B0 01 00 00 48 85 C9 48 8D 68 0C 74 14 41 BF $....H..H.h.t.A.
00000000004411E0 FF FF FF FF E8 E7 1B 02 00 66 44 89 BC 24 B8 00 .........fD..$..
00000000004411F0 00 00 48 8B 84 24 B0 00 00 00 48 8B 94 24 B8 00 ..H..$....H..$..
0000000000441200 00 00 4C 89 6C 24 48 48 C7 44 24 38 01 00 00 00 ..L.l$HH.D$8....
0000000000441210 C7 44 24 30 09 00 00 00 C7 44 24 28 01 00 00 00 .D$0.....D$(....
0000000000441220 48 89 84 24 80 00 00 00 48 8B 84 24 A0 00 00 00 H..$....H..$....
0000000000441230 48 89 94 24 88 00 00 00 48 8B 94 24 A8 00 00 00 H..$....H..$....
0000000000441240 48 89 6C 24 20 48 89 44 24 70 48 8B 84 24 A0 01 H.l$ H.D$pH..$..
0000000000441250 00 00 48 89 54 24 78 48 89 44 24 40 E9 45 F8 FF ..H.T$xH.D$@.E..
0000000000441260 FF 48 8B 84 24 B0 00 00 00 48 8B 94 24 B8 00 00 .H..$....H..$...
0000000000441270 00 4C 8B 4C 24 50 4C 8B 44 24 58 48 8B 4C 24 60 .L.L$PL.D$XH.L$`
0000000000441280 4C 89 6C 24 48 48 89 84 24 80 00 00 00 48 8B 84 L.l$HH..$....H..
0000000000441290 24 A0 00 00 00 48 89 94 24 88 00 00 00 48 8B 94 $....H..$....H..
00000000004412A0 24 A8 00 00 00 48 C7 44 24 38 02 00 00 00 C7 44 $....H.D$8.....D
00000000004412B0 24 30 0C 00 00 00 48 89 44 24 70 48 8B 84 24 A0 $0....H.D$pH..$.
00000000004412C0 01 00 00 48 89 54 24 78 48 8B 94 24 88 01 00 00 ...H.T$xH..$....
00000000004412D0 C7 44 24 28 01 00 00 00 48 89 44 24 40 48 8D 84 .D$(....H.D$@H..
00000000004412E0 24 CC 00 00 00 48 89 44 24 20 E8 41 E2 FF FF 48 $....H.D$ .A...H
00000000004412F0 8B 94 24 90 00 00 00 44 8B 9C 24 C8 00 00 00 48 ..$....D..$....H
0000000000441300 89 D0 48 89 94 24 B0 00 00 00 0F B7 94 24 98 00 ..H..$.......$..
0000000000441310 00 00 45 85 DB 66 89 94 24 B8 00 00 00 0F 85 4F ..E..f..$......O
0000000000441320 F2 FF FF 8B 94 24 CC 00 00 00 48 8B 8C 24 B0 01 .....$....H..$..
0000000000441330 00 00 83 EA 01 89 51 10 E9 35 F2 FF FF 0F 1F 00 ......Q..5......
0000000000441340 48 8B 4C 24 68 E8 66 9E FE FF 4C 8B 0B 45 31 C0 H.L$h.f...L..E1.
0000000000441350 0F B7 D0 48 89 D9 41 FF 51 60 3C 0A 0F 85 00 F2 ...H..A.Q`<.....
0000000000441360 FF FF 48 8B 84 24 B0 00 00 00 48 85 C0 0F 84 FF ..H..$....H.....
0000000000441370 F1 FF FF 48 89 C1 E8 55 1A 02 00 41 BA FF FF FF ...H...U...A....
0000000000441380 FF 48 8B 84 24 B0 00 00 00 66 44 89 94 24 B8 00 .H..$....fD..$..
0000000000441390 00 00 E9 DB F1 FF FF 66 0F 1F 84 00 00 00 00 00 .......f........
