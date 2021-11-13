;;; Segment .text (0000000000401000)

l00000000004413A0:
	mov	rax,[rcx]
	call	qword ptr [rax+50h]
	mov	rcx,[rsp+0B0h]
	jmp	4404EBh
00000000004413B3          48 8B 84 24 B0 00 00 00 48 85 C0 0F 84    H..$....H....
00000000004413C0 AE F1 FF FF 48 8B 50 10 48 3B 50 18 0F 83 92 00 ....H.P.H;P.....
00000000004413D0 00 00 48 83 C2 02 48 89 50 10 41 B9 FF FF FF FF ..H...H.P.A.....
00000000004413E0 66 44 89 8C 24 B8 00 00 00 E9 84 F1 FF FF 48 8B fD..$.........H.
00000000004413F0 84 24 B0 00 00 00 48 8B 94 24 B8 00 00 00 4C 89 .$....H..$....L.
0000000000441400 6C 24 48 48 C7 44 24 38 02 00 00 00 C7 44 24 30 l$HH.D$8.....D$0
0000000000441410 1F 00 00 00 C7 44 24 28 0A 00 00 00 48 89 84 24 .....D$(....H..$
0000000000441420 80 00 00 00 48 8B 84 24 A0 00 00 00 48 89 94 24 ....H..$....H..$
0000000000441430 88 00 00 00 48 8B 94 24 A8 00 00 00 48 89 44 24 ....H..$....H.D$
0000000000441440 70 48 8B 84 24 A0 01 00 00 48 89 54 24 78 48 89 pH..$....H.T$xH.
0000000000441450 44 24 40 48 8B 84 24 B0 01 00 00 48 83 C0 0C E9 D$@H..$....H....
0000000000441460 3D F6 FF FF 48 8B 10 48 89 C1 FF 52 50 48 8B 84 =...H..H...RPH..
0000000000441470 24 B0 00 00 00 E9 60 FF FF FF 90 90 90 90 90 90 $.....`.........

;; fn0000000000441480: 0000000000441480
;;   Called from:
;;     000000000043F9EA (in fn000000000043F840)
;;     0000000000440087 (in fn000000000043FE10)
fn0000000000441480 proc
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
	mov	rax,[r8]
	mov	rdx,[r8+8h]
	mov	rsi,rcx
	mov	r15,[rbp+48h]
	mov	[rbp-40h],rax
	mov	rax,[r9]
	mov	[rbp-38h],rdx
	mov	rdx,[r9+8h]
	mov	[rbp-50h],rax
	mov	rax,[rbp+58h]
	mov	[rbp-48h],rdx
	lea	rcx,[rax+0D0h]
	call	473020h
	mov	r13,rax
	mov	rax,[rbp+50h]
	lea	rax,[001Eh+rax*8]
	and	rax,0F0h
	call	4116F0h
	lea	rbx,[rbp-40h]
	lea	rdx,[rbp-50h]
	sub	rsp,rax
	lea	r12,[rsp+20h]
	mov	rcx,rbx
	call	42B0C0h
	test	al,al
	jz	441784h

l0000000000441505:
	xor	ebx,ebx
	xor	r14d,r14d
	xor	r13d,r13d

l000000000044150D:
	mov	rcx,[rbp-40h]
	lea	rdi,[r14+r14]
	test	rcx,rcx
	jz	441607h

l000000000044151E:
	nop

l0000000000441520:
	movzx	eax,word ptr [rbp-38h]
	cmp	ax,0FFh
	jz	4416A0h

l000000000044152E:
	mov	rcx,[rbp-50h]
	xor	edx,edx
	test	rcx,rcx
	jz	44156Ah

l0000000000441539:
	xor	eax,eax
	cmp	word ptr [rbp-48h],0FFh
	jz	441622h

l0000000000441546:
	cmp	al,dl
	jz	441650h

l000000000044154E:
	mov	rcx,[rbp-40h]
	mov	eax,0FFFFFFFFh
	test	rcx,rcx
	jz	44156Ah

l000000000044155C:
	movzx	eax,word ptr [rbp-38h]
	cmp	ax,0FFh
	jz	4416D0h

l000000000044156A:
	test	rbx,rbx
	jz	441664h

l0000000000441573:
	xor	edx,edx
	xor	ecx,ecx
	jmp	44158Dh
0000000000441579                            0F 1F 80 00 00 00 00          .......

l0000000000441580:
	add	rcx,1h
	add	rdx,1h

l0000000000441588:
	cmp	rbx,rdx
	jbe	4415C5h

l000000000044158D:
	lea	r9,[r12+rdx*4]
	movsxd	r8,dword ptr [r9]
	mov	r10,[r15+r8*8]
	lea	r8,[r13+rdx*8+0h]
	cmp	r14,[r8]
	jnc	441580h

l00000000004415A2:
	cmp	[r10+rdi],ax
	jz	441690h

l00000000004415AD:
	sub	rbx,1h
	mov	r10d,[r12+rbx*4]
	cmp	rbx,rdx
	mov	[r9],r10d
	mov	r9,[r13+rbx*8+0h]
	mov	[r8],r9
	ja	44158Dh

l00000000004415C5:
	cmp	rbx,rcx
	jz	441650h

l00000000004415CE:
	mov	rcx,[rbp-40h]
	test	rcx,rcx
	jz	4415F6h

l00000000004415D7:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	44171Fh

l00000000004415E5:
	add	rax,2h
	mov	[rcx+10h],rax

l00000000004415ED:
	mov	eax,0FFFFFFFFh
	mov	[rbp-38h],ax

l00000000004415F6:
	add	r14,1h
	add	rdi,2h
	test	rcx,rcx
	jnz	441520h

l0000000000441607:
	mov	rcx,[rbp-50h]
	test	rcx,rcx
	jz	441650h

l0000000000441610:
	xor	eax,eax
	cmp	word ptr [rbp-48h],0FFh
	mov	edx,1h
	jnz	441546h

l0000000000441622:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	44175Ch

l0000000000441630:
	movzx	eax,word ptr [rax]

l0000000000441633:
	cmp	ax,0FFh
	jz	441700h

l000000000044163D:
	mov	[rbp-48h],ax
	xor	eax,eax
	cmp	al,dl
	jnz	44154Eh

l000000000044164B:
	nop	dword ptr [rax+rax+0h]

l0000000000441650:
	cmp	rbx,1h
	jz	441855h

l000000000044165A:
	cmp	rbx,2h
	jz	44172Eh

l0000000000441664:
	mov	rax,[rbp+60h]
	or	dword ptr [rax],4h

l000000000044166B:
	mov	rax,[rbp-40h]
	mov	rdx,[rbp-38h]
	mov	[rsi],rax
	mov	rax,rsi
	mov	[rsi+8h],rdx
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
000000000044168E                                           66 90               f.

l0000000000441690:
	add	rdx,1h
	jmp	441588h
0000000000441699                            0F 1F 80 00 00 00 00          .......

l00000000004416A0:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	44176Eh

l00000000004416AE:
	movzx	eax,word ptr [rax]

l00000000004416B1:
	cmp	ax,0FFh
	jz	4416F0h

l00000000004416B7:
	mov	rcx,[rbp-50h]
	xor	edx,edx
	mov	[rbp-38h],ax
	test	rcx,rcx
	jnz	441539h

l00000000004416CA:
	jmp	44154Eh
00000000004416CF                                              90                .

l00000000004416D0:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	441779h

l00000000004416DE:
	movzx	eax,word ptr [rax]

l00000000004416E1:
	cmp	ax,0FFh
	jz	441712h

l00000000004416E7:
	mov	[rbp-38h],ax
	jmp	44156Ah

l00000000004416F0:
	mov	qword ptr [rbp-40h],+0h
	jmp	441607h
00000000004416FD                                        0F 1F 00              ...

l0000000000441700:
	mov	qword ptr [rbp-50h],+0h
	mov	eax,1h
	jmp	441546h

l0000000000441712:
	mov	qword ptr [rbp-40h],+0h
	jmp	44156Ah

l000000000044171F:
	mov	rax,[rcx]
	call	qword ptr [rax+50h]
	mov	rcx,[rbp-40h]
	jmp	4415EDh

l000000000044172E:
	cmp	[r13+0h],r14
	jz	44173Eh

l0000000000441734:
	cmp	[r13+8h],r14
	jnz	441664h

l000000000044173E:
	movsxd	rcx,dword ptr [r12]
	mov	edx,ecx
	sub	edx,[rbp+50h]
	cmp	[rbp+50h],rcx
	mov	rax,rcx
	cmovbe	eax,edx

l0000000000441751:
	mov	rdx,[rbp+40h]
	mov	[rdx],eax
	jmp	44166Bh

l000000000044175C:
	mov	rax,[rcx]
	mov	[rbp-58h],dl
	call	qword ptr [rax+48h]
	movzx	edx,byte ptr [rbp-58h]
	jmp	441633h

l000000000044176E:
	mov	rax,[rcx]
	call	qword ptr [rax+48h]
	jmp	4416B1h

l0000000000441779:
	mov	rax,[rcx]
	call	qword ptr [rax+48h]
	jmp	4416E1h

l0000000000441784:
	mov	rcx,rbx
	call	42B1B0h
	mov	r14d,eax
	mov	rax,[rbp+50h]
	add	rax,rax
	mov	[rbp-58h],rax
	jz	441505h

l00000000004417A0:
	xor	edi,edi
	xor	ebx,ebx
	jmp	4417CAh
00000000004417A6                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l00000000004417B0:
	mov	rax,[r13+0h]
	mov	rcx,r13
	call	qword ptr [rax+30h]
	cmp	r14w,ax
	jz	4417D7h

l00000000004417C0:
	add	rdi,1h
	cmp	rdi,[rbp-58h]
	jz	4417E9h

l00000000004417CA:
	mov	rax,[r15+rdi*8]
	movzx	edx,word ptr [rax]
	cmp	r14w,dx
	jnz	4417B0h

l00000000004417D7:
	mov	[r12+rbx*4],edi
	add	rbx,1h
	add	rdi,1h
	cmp	rdi,[rbp-58h]
	jnz	4417CAh

l00000000004417E9:
	test	rbx,rbx
	jz	441505h

l00000000004417F2:
	mov	rcx,[rbp-40h]
	test	rcx,rcx
	jz	441809h

l00000000004417FB:
	call	462DD0h
	mov	edx,0FFFFFFFFh
	mov	[rbp-38h],dx

l0000000000441809:
	lea	rax,[001Eh+rbx*8]
	and	rax,0F0h
	call	4116F0h
	xor	edi,edi
	sub	rsp,rax
	lea	r14,[rsp+20h]
	mov	r13,r14
	nop	word ptr [rax+rax+0h]

l0000000000441830:
	movsxd	rax,dword ptr [r12+rdi*4]
	mov	rcx,[r15+rax*8]
	call	41BD38h
	mov	[r14+rdi*8],rax
	add	rdi,1h
	cmp	rdi,rbx
	jnz	441830h

l000000000044184A:
	mov	r14d,1h
	jmp	44150Dh

l0000000000441855:
	cmp	[r13+0h],r14
	jnz	441664h

l000000000044185F:
	jmp	44173Eh
0000000000441864             90 90 90 90 90 90 90 90 90 90 90 90     ............

;; fn0000000000441870: 0000000000441870
fn0000000000441870 proc
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
00000000004418D6                   90 90 90 90 90 90 90 90 90 90       ..........

;; fn00000000004418E0: 00000000004418E0
fn00000000004418E0 proc
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
0000000000441946                   90 90 90 90 90 90 90 90 90 90       ..........

;; fn0000000000441950: 0000000000441950
fn0000000000441950 proc
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
00000000004419B6                   90 90 90 90 90 90 90 90 90 90       ..........

;; fn00000000004419C0: 00000000004419C0
fn00000000004419C0 proc
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,+98h
	mov	rbx,[rsp+110h]
	mov	r13,[rsp+118h]
	mov	[rsp+0E0h],rcx
	mov	r14,[r8+8h]
	lea	rcx,[r9+0D0h]
	mov	r15,rdx
	mov	[rsp+0F8h],r9
	movzx	ebp,byte ptr [rsp+100h]
	mov	rdi,[r8]
	call	472FC0h
	cmp	rbx,r13
	mov	esi,r14d
	mov	r12,rax
	jz	441B50h

l0000000000441A20:
	lea	rax,[rsp+80h]
	mov	[rsp+48h],rax
	lea	rax,[rsp+70h]
	mov	[rsp+50h],rax
	movsx	eax,bpl
	mov	[rsp+5Ch],eax
	jmp	441B07h

l0000000000441A44:
	lea	r9,[rbx+1h]
	cmp	r13,r9
	jz	441B50h

l0000000000441A51:
	movzx	r11d,byte ptr [rbx+1h]
	movsx	ebp,byte ptr [r12+r11+139h]
	mov	rax,r11
	test	bpl,bpl
	jz	441BB0h

l0000000000441A6B:
	cmp	bpl,4Fh
	jz	441A7Bh

l0000000000441A71:
	cmp	bpl,45h
	jnz	441C20h

l0000000000441A7B:
	lea	r9,[rbx+2h]
	cmp	r13,r9
	jz	441B50h

l0000000000441A88:
	movzx	ebx,byte ptr [rbx+2h]
	movsx	edx,byte ptr [r12+rbx+139h]
	mov	rax,rbx
	test	dl,dl
	jz	441BE0h

l0000000000441AA0:
	mov	rbx,r9

l0000000000441AA3:
	mov	rcx,[rsp+108h]
	mov	rax,[r15]
	mov	r14b,sil
	mov	r9,[rsp+0F8h]
	mov	r8,[rsp+50h]
	mov	rax,[rax+10h]
	mov	[rsp+28h],rcx
	mov	ecx,[rsp+5Ch]
	mov	[rsp+70h],rdi
	mov	[rsp+78h],r14
	mov	[rsp+30h],edx
	mov	rdx,r15
	mov	[rsp+38h],ebp
	mov	[rsp+20h],ecx
	mov	rcx,[rsp+48h]
	call	rax
	mov	rsi,[rsp+88h]
	mov	rdi,[rsp+80h]
	mov	r14b,sil

l0000000000441AFE:
	add	rbx,1h
	cmp	r13,rbx
	jz	441B50h

l0000000000441B07:
	movzx	ebp,byte ptr [rbx]
	movzx	edx,byte ptr [r12+rbp+139h]
	mov	rax,rbp
	test	dl,dl
	jz	441B80h

l0000000000441B1A:
	cmp	dl,25h
	jz	441A44h

l0000000000441B23:
	test	sil,sil
	movzx	eax,byte ptr [rbx]
	jnz	441AFEh

l0000000000441B2B:
	mov	rdx,[rdi+28h]
	cmp	rdx,[rdi+30h]
	jnc	441C90h

l0000000000441B39:
	add	rbx,1h
	mov	[rdx],al
	add	qword ptr [rdi+28h],1h
	cmp	r13,rbx
	jnz	441B07h

l0000000000441B49:
	nop	dword ptr [rax+0h]

l0000000000441B50:
	mov	rax,[rsp+0E0h]
	mov	r14b,sil
	mov	[rax],rdi
	mov	[rax+8h],r14
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
0000000000441B76                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l0000000000441B80:
	mov	rdx,[r12]
	mov	r9,[rdx+40h]
	lea	rdx,[000000000042B620]                                 ; [rip+FFFE9A91]
	cmp	r9,rdx
	jnz	441C30h

l0000000000441B98:
	test	al,al
	jz	441B23h

l0000000000441B9C:
	mov	[r12+rbp+139h],al
	mov	edx,eax
	jmp	441B1Ah
0000000000441BAB                                  0F 1F 44 00 00            ..D..

l0000000000441BB0:
	mov	rdx,[r12]
	mov	rbp,[rdx+40h]
	lea	rdx,[000000000042B620]                                 ; [rip+FFFE9A61]
	cmp	rbp,rdx
	jnz	441C42h

l0000000000441BC4:
	test	al,al
	jz	441C10h

l0000000000441BC8:
	mov	[r12+r11+139h],al
	movsx	ebp,al
	jmp	441A6Bh
0000000000441BD8                         0F 1F 84 00 00 00 00 00         ........

l0000000000441BE0:
	mov	rdx,[r12]
	lea	rcx,[000000000042B620]                                 ; [rip+FFFE9A35]
	mov	r11,[rdx+40h]
	movsx	edx,bl
	cmp	r11,rcx
	jnz	441C70h

l0000000000441BF7:
	test	al,al
	jz	441AA0h

l0000000000441BFF:
	mov	[r12+rbx+139h],al
	jmp	441AA0h
0000000000441C0C                                     0F 1F 40 00             ..@.

l0000000000441C10:
	mov	rbx,r9
	xor	edx,edx
	xor	ebp,ebp
	jmp	441AA3h
0000000000441C1C                                     0F 1F 40 00             ..@.

l0000000000441C20:
	movsx	edx,bpl
	mov	rbx,r9
	xor	ebp,ebp
	jmp	441AA3h
0000000000441C2E                                           66 90               f.

l0000000000441C30:
	movsx	edx,bpl
	xor	r8d,r8d
	mov	rcx,r12
	call	r9
	jmp	441B98h

l0000000000441C42:
	mov	[rsp+68h],r11
	mov	[rsp+60h],r9
	movsx	edx,r11b
	xor	r8d,r8d
	mov	rcx,r12
	call	rbp
	mov	r11,[rsp+68h]
	mov	r9,[rsp+60h]
	jmp	441BC4h
0000000000441C67                      66 0F 1F 84 00 00 00 00 00        f........

l0000000000441C70:
	mov	[rsp+60h],r9
	xor	r8d,r8d
	mov	rcx,r12
	call	r11
	mov	r9,[rsp+60h]
	movsx	edx,al
	jmp	441BF7h
0000000000441C8B                                  0F 1F 44 00 00            ..D..

l0000000000441C90:
	mov	r8,[rdi]
	movzx	edx,al
	mov	rcx,rdi
	call	qword ptr [r8+68h]
	cmp	eax,0FFh
	setz	sil
	jmp	441AFEh
0000000000441CA9                            90 90 90 90 90 90 90          .......

;; fn0000000000441CB0: 0000000000441CB0
fn0000000000441CB0 proc
	push	rbx
	sub	rsp,50h
	mov	rax,[rdx]
	mov	rbx,rcx
	movsx	ecx,byte ptr [rsp+98h]
	movdqu	xmm1,[r8]
	lea	r8,[rsp+40h]
	movaps	[rsp+40h],xmm1
	mov	[rsp+38h],ecx
	movsx	ecx,byte ptr [rsp+90h]
	mov	[rsp+30h],ecx
	mov	rcx,[rsp+88h]
	mov	[rsp+28h],rcx
	movsx	ecx,byte ptr [rsp+80h]
	mov	[rsp+20h],ecx
	mov	rcx,rbx
	call	qword ptr [rax+10h]
	mov	rax,rbx
	add	rsp,50h
	pop	rbx
	ret
0000000000441D0A                               90 90 90 90 90 90           ......

;; fn0000000000441D10: 0000000000441D10
fn0000000000441D10 proc
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,+0C8h
	mov	rbp,[r8]
	mov	r12,[r8+8h]
	lea	rsi,[r9+0D0h]
	mov	rdi,rcx
	mov	r14d,[rsp+140h]
	mov	r13d,[rsp+148h]
	mov	rcx,rsi
	call	472FC0h
	mov	rcx,rsi
	mov	rbx,rax
	call	472F00h
	cmp	byte ptr [rbx+38h],0h
	mov	r15,rax
	jz	441E43h

l0000000000441D64:
	movzx	edx,byte ptr [rbx+5Eh]

l0000000000441D68:
	test	r13b,r13b
	mov	[rsp+30h],dl
	jz	441E34h

l0000000000441D75:
	mov	[rsp+31h],r13b
	mov	[rsp+32h],r14b
	mov	byte ptr [rsp+33h],0h

l0000000000441D84:
	mov	rax,[rsp+138h]
	lea	rsi,[rsp+40h]
	lea	r9,[rsp+30h]
	mov	r8d,80h
	mov	rcx,r15
	mov	rdx,rsi
	mov	[rsp+20h],rax
	call	429DE0h
	mov	r8,rsi

l0000000000441DAF:
	mov	r10d,[r8]
	add	r8,4h
	lea	r9d,[r10+0FEFEFEFFh]
	not	r10d
	and	r9d,r10d
	and	r9d,80808080h
	jz	441DAFh

l0000000000441DCC:
	mov	eax,r9d
	mov	r13d,r12d
	shr	eax,10h
	test	r9d,8080h
	cmovz	r9d,eax

l0000000000441DE0:
	lea	rax,[r8+2h]
	cmovz	r8,rax

l0000000000441DE8:
	add	r9b,r9b
	sbb	r8,3h
	sub	r8,rsi
	test	r12b,r12b
	movsxd	rbx,r8d
	jnz	441E16h

l0000000000441DFA:
	mov	rax,[rbp+0h]
	mov	r8,rbx
	mov	rdx,rsi
	mov	rcx,rbp
	call	qword ptr [rax+60h]
	cmp	rbx,rax
	mov	eax,1h
	cmovnz	r13d,eax

l0000000000441E16:
	mov	rax,rdi
	mov	[rdi],rbp
	mov	[rdi+8h],r13b
	add	rsp,+0C8h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret

l0000000000441E34:
	mov	[rsp+31h],r14b
	mov	byte ptr [rsp+32h],0h
	jmp	441D84h

l0000000000441E43:
	mov	rcx,rbx
	call	42B320h
	mov	rax,[rbx]
	lea	rcx,[000000000042B5F0]                                 ; [rip+FFFE979B]
	mov	edx,25h
	mov	rax,[rax+30h]
	cmp	rax,rcx
	jz	441D68h

l0000000000441E67:
	mov	edx,25h
	mov	rcx,rbx
	call	rax
	mov	edx,eax
	jmp	441D68h
0000000000441E78                         90 90 90 90 90 90 90 90         ........

;; fn0000000000441E80: 0000000000441E80
fn0000000000441E80 proc
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,+88h
	mov	rbx,[rsp+100h]
	mov	rbp,[rsp+108h]
	mov	[rsp+0D0h],rcx
	mov	r12,[r8+8h]
	lea	rcx,[r9+0D0h]
	mov	r13,rdx
	mov	[rsp+0E8h],r9
	movzx	r14d,word ptr [rsp+0F0h]
	mov	rdi,[r8]
	call	473020h
	cmp	rbx,rbp
	mov	esi,r12d
	mov	r15,rax
	jz	441FEDh

l0000000000441EE1:
	lea	rax,[rsp+70h]
	mov	[rsp+48h],rax
	lea	rax,[rsp+60h]
	mov	[rsp+50h],rax
	movzx	eax,r14w
	mov	r14,r15
	mov	[rsp+5Ch],eax
	jmp	441F1Bh

l0000000000441F02:
	test	sil,sil
	movzx	eax,word ptr [rbx]
	jz	442013h

l0000000000441F0E:
	add	rbx,2h
	cmp	rbp,rbx
	jz	441FEDh

l0000000000441F1B:
	mov	rax,[r14]
	movzx	edx,word ptr [rbx]
	xor	r8d,r8d
	mov	rcx,r14
	call	qword ptr [rax+60h]
	cmp	al,25h
	jnz	441F02h

l0000000000441F2E:
	lea	r15,[rbx+2h]
	cmp	rbp,r15
	jz	441FEDh

l0000000000441F3B:
	mov	rax,[r14]
	movzx	edx,word ptr [rbx+2h]
	xor	r8d,r8d
	mov	rcx,r14
	call	qword ptr [rax+60h]
	cmp	al,4Fh
	mov	r9d,eax
	jz	441F5Ah

l0000000000441F52:
	cmp	al,45h
	jnz	442035h

l0000000000441F5A:
	lea	r15,[rbx+4h]
	mov	[rsp+5Bh],r9b
	cmp	rbp,r15
	jz	441FEDh

l0000000000441F6C:
	mov	rax,[r14]
	movzx	edx,word ptr [rbx+4h]
	xor	r8d,r8d
	mov	rcx,r14
	mov	rbx,r15
	call	qword ptr [rax+60h]
	movsx	r9d,byte ptr [rsp+5Bh]

l0000000000441F85:
	mov	rdx,[r13+0h]
	movsx	eax,al
	mov	r12b,sil
	mov	r8,[rsp+50h]
	mov	rcx,[rsp+48h]
	add	rbx,2h
	mov	r11,[rdx+10h]
	mov	[rsp+30h],eax
	mov	rdx,r13
	mov	rax,[rsp+0F8h]
	mov	[rsp+60h],rdi
	mov	[rsp+68h],r12
	mov	[rsp+38h],r9d
	mov	r9,[rsp+0E8h]
	mov	[rsp+28h],rax
	mov	eax,[rsp+5Ch]
	mov	[rsp+20h],eax
	call	r11
	mov	rsi,[rsp+78h]
	cmp	rbp,rbx
	mov	rdi,[rsp+70h]
	mov	r12b,sil
	jnz	441F1Bh

l0000000000441FED:
	mov	rax,[rsp+0D0h]
	mov	r12b,sil
	mov	[rax],rdi
	mov	[rax+8h],r12
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

l0000000000442013:
	mov	rdx,[rdi+28h]
	cmp	rdx,[rdi+30h]
	jnc	442040h

l000000000044201D:
	mov	[rdx],ax
	add	rdx,2h
	mov	[rdi+28h],rdx

l0000000000442028:
	cmp	ax,0FFh
	setz	sil
	jmp	441F0Eh

l0000000000442035:
	mov	rbx,r15
	xor	r9d,r9d
	jmp	441F85h

l0000000000442040:
	movzx	edx,ax
	mov	rax,[rdi]
	mov	rcx,rdi
	call	qword ptr [rax+68h]
	jmp	442028h
000000000044204E                                           90 90               ..

;; fn0000000000442050: 0000000000442050
fn0000000000442050 proc
	push	rbx
	sub	rsp,50h
	mov	rax,[rdx]
	mov	rbx,rcx
	movsx	ecx,byte ptr [rsp+98h]
	movdqu	xmm1,[r8]
	lea	r8,[rsp+40h]
	movaps	[rsp+40h],xmm1
	mov	[rsp+38h],ecx
	movsx	ecx,byte ptr [rsp+90h]
	mov	[rsp+30h],ecx
	mov	rcx,[rsp+88h]
	mov	[rsp+28h],rcx
	movzx	ecx,word ptr [rsp+80h]
	mov	[rsp+20h],ecx
	mov	rcx,rbx
	call	qword ptr [rax+10h]
	mov	rax,rbx
	add	rsp,50h
	pop	rbx
	ret
00000000004420AA                               90 90 90 90 90 90           ......

;; fn00000000004420B0: 00000000004420B0
fn00000000004420B0 proc
	push	r14
	push	r13
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,+140h
	mov	rbp,[r8]
	mov	r12,[r8+8h]
	lea	r13,[r9+0D0h]
	mov	rsi,rcx
	mov	edi,[rsp+1B8h]
	mov	ebx,[rsp+1B0h]
	mov	rcx,r13
	call	473020h
	mov	rcx,r13
	mov	r14,rax
	call	472F60h
	mov	r13,rax
	mov	rax,[r14]
	mov	edx,25h
	mov	rcx,r14
	call	qword ptr [rax+50h]
	test	dil,dil
	mov	[rsp+30h],ax
	jz	4421A0h

l0000000000442112:
	movsx	di,dil
	movsx	bx,bl
	xor	eax,eax
	mov	[rsp+32h],di
	mov	[rsp+34h],bx
	mov	[rsp+36h],ax

l000000000044212C:
	mov	rax,[rsp+1A8h]
	lea	rdi,[rsp+40h]
	lea	r9,[rsp+30h]
	mov	rcx,r13
	mov	r8d,80h
	mov	r13d,r12d
	mov	rdx,rdi
	mov	[rsp+20h],rax
	call	42A170h
	mov	rcx,rdi
	call	41BD38h
	test	r12b,r12b
	movsxd	rbx,eax
	jnz	442183h

l0000000000442167:
	mov	rax,[rbp+0h]
	mov	r8,rbx
	mov	rdx,rdi
	mov	rcx,rbp
	call	qword ptr [rax+60h]
	cmp	rbx,rax
	mov	eax,1h
	cmovnz	r13d,eax

l0000000000442183:
	mov	rax,rsi
	mov	[rsi],rbp
	mov	[rsi+8h],r13b
	add	rsp,+140h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	ret
000000000044219F                                              90                .

l00000000004421A0:
	movsx	bx,bl
	xor	edx,edx
	mov	[rsp+32h],bx
	mov	[rsp+34h],dx
	jmp	44212Ch
00000000004421B5                90 90 90 90 90 90 90 90 90 90 90      ...........

;; fn00000000004421C0: 00000000004421C0
fn00000000004421C0 proc
	lea	rax,[000000000048E060]                                 ; [rip+0004BE99]
	ret
00000000004421C8                         90 90 90 90 90 90 90 90         ........

;; fn00000000004421D0: 00000000004421D0
fn00000000004421D0 proc
	mov	eax,[rcx+1Ch]
	ret
00000000004421D4             90 90 90 90 90 90 90 90 90 90 90 90     ............

;; fn00000000004421E0: 00000000004421E0
fn00000000004421E0 proc
	mov	eax,[rcx+20h]
	and	eax,1h
	ret
00000000004421E7                      90 90 90 90 90 90 90 90 90        .........

;; fn00000000004421F0: 00000000004421F0
fn00000000004421F0 proc
	test	byte ptr [rcx+20h],2h
	setnz	al
	ret
00000000004421F8                         90 90 90 90 90 90 90 90         ........

;; fn0000000000442200: 0000000000442200
fn0000000000442200 proc
	mov	rax,[rcx+0D8h]
	ret
0000000000442208                         90 90 90 90 90 90 90 90         ........

;; fn0000000000442210: 0000000000442210
fn0000000000442210 proc
	test	byte ptr [rcx+20h],5h
	setnz	al
	ret
0000000000442218                         90 90 90 90 90 90 90 90         ........

;; fn0000000000442220: 0000000000442220
fn0000000000442220 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	cmp	byte ptr [rcx+0E1h],0h
	jz	442240h

l000000000044222F:
	movzx	eax,byte ptr [rcx+0E0h]
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret
000000000044223D                                        0F 1F 00              ...

l0000000000442240:
	mov	rsi,[rcx+0F0h]
	mov	rbx,rcx
	test	rsi,rsi
	jz	44229Dh

l000000000044224F:
	cmp	byte ptr [rsi+38h],0h
	jz	442270h

l0000000000442255:
	movzx	eax,byte ptr [rsi+59h]

l0000000000442259:
	mov	[rbx+0E0h],al
	mov	byte ptr [rbx+0E1h],1h
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret
000000000044226D                                        0F 1F 00              ...

l0000000000442270:
	mov	rcx,rsi
	call	42B320h
	mov	rax,[rsi]
	lea	rdx,[000000000042B5F0]                                 ; [rip+FFFE936E]
	mov	r8,[rax+30h]
	mov	eax,20h
	cmp	r8,rdx
	jz	442259h

l0000000000442290:
	mov	edx,20h
	mov	rcx,rsi
	call	r8
	jmp	442259h

l000000000044229D:
	call	470820h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop

;; fn00000000004422B0: 00000000004422B0
;;   Called from:
;;     00000000004422AF (in fn0000000000442220)
fn00000000004422B0 proc
	mov	eax,[rcx+20h]
	test	eax,eax
	setz	al
	ret
00000000004422B9                            90 90 90 90 90 90 90          .......

;; fn00000000004422C0: 00000000004422C0
fn00000000004422C0 proc
	mov	rax,[rcx+0E8h]
	ret
00000000004422C8                         90 90 90 90 90 90 90 90         ........

;; fn00000000004422D0: 00000000004422D0
fn00000000004422D0 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	mov	rbx,[rcx+0F0h]
	mov	esi,edx
	test	rbx,rbx
	jz	44232Dh

l00000000004422E4:
	cmp	byte ptr [rbx+38h],0h
	jz	442300h

l00000000004422EA:
	movzx	esi,dl
	movzx	eax,byte ptr [rbx+rsi+39h]

l00000000004422F2:
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret
00000000004422F9                            0F 1F 80 00 00 00 00          .......

l0000000000442300:
	mov	rcx,rbx
	call	42B320h
	mov	rax,[rbx]
	lea	rdx,[000000000042B5F0]                                 ; [rip+FFFE92DE]
	mov	r8,[rax+30h]
	mov	eax,esi
	cmp	r8,rdx
	jz	4422F2h

l000000000044231D:
	movsx	edx,sil
	mov	rcx,rbx
	add	rsp,28h
	pop	rbx
	pop	rsi
	jmp	r8

l000000000044232D:
	call	470820h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop

;; fn0000000000442340: 0000000000442340
;;   Called from:
;;     000000000044233F (in fn00000000004422D0)
fn0000000000442340 proc
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,20h
	mov	rbx,[rcx+0F0h]
	mov	edi,r8d
	test	rbx,rbx
	jz	4423B4h

l0000000000442356:
	movzx	esi,dl
	movzx	eax,byte ptr [rbx+rsi+139h]
	test	al,al
	jz	442370h

l0000000000442365:
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	ret
000000000044236D                                        0F 1F 00              ...

l0000000000442370:
	mov	rax,[rbx]
	lea	rcx,[000000000042B620]                                 ; [rip+FFFE92A6]
	mov	r9,[rax+40h]
	mov	eax,edx
	cmp	r9,rcx
	jnz	4423A0h

l0000000000442385:
	cmp	dil,al
	jz	4423B0h

l000000000044238A:
	mov	[rbx+rsi+139h],al
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	ret
0000000000442399                            0F 1F 80 00 00 00 00          .......

l00000000004423A0:
	movsx	edx,dl
	movsx	r8d,r8b
	mov	rcx,rbx
	call	r9
	jmp	442385h
00000000004423AF                                              90                .

l00000000004423B0:
	mov	eax,edi
	jmp	442365h

l00000000004423B4:
	call	470820h
	nop
	nop
	nop
	nop
	nop
	nop
	nop

;; fn00000000004423C0: 00000000004423C0
;;   Called from:
;;     00000000004423BF (in fn0000000000442340)
fn00000000004423C0 proc
	mov	eax,[rcx+20h]
	ret
00000000004423C4             90 90 90 90 90 90 90 90 90 90 90 90     ............

;; fn00000000004423D0: 00000000004423D0
fn00000000004423D0 proc
	test	byte ptr [rcx+20h],5h
	mov	eax,0h
	cmovz	rax,rcx

l00000000004423DD:
	ret
00000000004423DE                                           90 90               ..

;; fn00000000004423E0: 00000000004423E0
;;   Called from:
;;     00000000004026A2 (in fn000000000040252C)
;;     0000000000402AE7 (in fn0000000000402A94)
;;     0000000000402CA1 (in fn0000000000402C4E)
;;     0000000000403010 (in fn0000000000402E6F)
fn00000000004423E0 proc
	test	byte ptr [rcx+20h],5h
	setnz	al
	ret
00000000004423E8                         90 90 90 90 90 90 90 90         ........

;; fn00000000004423F0: 00000000004423F0
fn00000000004423F0 proc
	mov	eax,[rcx+1Ch]
	ret
00000000004423F4             90 90 90 90 90 90 90 90 90 90 90 90     ............

;; fn0000000000442400: 0000000000442400
fn0000000000442400 proc
	mov	eax,[rcx+20h]
	and	eax,1h
	ret
0000000000442407                      90 90 90 90 90 90 90 90 90        .........

;; fn0000000000442410: 0000000000442410
fn0000000000442410 proc
	test	byte ptr [rcx+20h],2h
	setnz	al
	ret
0000000000442418                         90 90 90 90 90 90 90 90         ........

;; fn0000000000442420: 0000000000442420
fn0000000000442420 proc
	mov	rax,[rcx+0D8h]
	ret
0000000000442428                         90 90 90 90 90 90 90 90         ........

;; fn0000000000442430: 0000000000442430
fn0000000000442430 proc
	test	byte ptr [rcx+20h],5h
	setnz	al
	ret
0000000000442438                         90 90 90 90 90 90 90 90         ........

;; fn0000000000442440: 0000000000442440
fn0000000000442440 proc
	push	rbx
	sub	rsp,20h
	cmp	byte ptr [rcx+0E2h],0h
	jz	442460h

l000000000044244E:
	movzx	eax,word ptr [rcx+0E0h]
	add	rsp,20h
	pop	rbx
	ret
000000000044245B                                  0F 1F 44 00 00            ..D..

l0000000000442460:
	mov	rbx,rcx
	mov	rcx,[rcx+0F0h]
	test	rcx,rcx
	jz	44248Eh

l000000000044246F:
	mov	rax,[rcx]
	mov	edx,20h
	call	qword ptr [rax+50h]
	mov	[rbx+0E0h],ax
	mov	byte ptr [rbx+0E2h],1h
	add	rsp,20h
	pop	rbx
	ret

l000000000044248E:
	call	470820h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop

;; fn00000000004424A0: 00000000004424A0
;;   Called from:
;;     000000000044249F (in fn0000000000442440)
fn00000000004424A0 proc
	mov	eax,[rcx+20h]
	test	eax,eax
	setz	al
	ret
00000000004424A9                            90 90 90 90 90 90 90          .......

;; fn00000000004424B0: 00000000004424B0
fn00000000004424B0 proc
	mov	rax,[rcx+0E8h]
	ret
00000000004424B8                         90 90 90 90 90 90 90 90         ........

;; fn00000000004424C0: 00000000004424C0
fn00000000004424C0 proc
	sub	rsp,28h
	mov	rcx,[rcx+0F0h]
	test	rcx,rcx
	jz	4424E1h

l00000000004424D0:
	mov	rax,[rcx]
	movsx	edx,dl
	mov	rax,[rax+50h]
	add	rsp,28h
	jmp	rax

l00000000004424E1:
	call	470820h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop

;; fn00000000004424F0: 00000000004424F0
;;   Called from:
;;     00000000004424EF (in fn00000000004424C0)
fn00000000004424F0 proc
	sub	rsp,28h
	mov	rcx,[rcx+0F0h]
	test	rcx,rcx
	jz	442515h

l0000000000442500:
	mov	rax,[rcx]
	movzx	edx,dx
	movsx	r8d,r8b
	mov	rax,[rax+60h]
	add	rsp,28h
	jmp	rax

l0000000000442515:
	call	470820h
	nop
	nop
	nop
	nop
	nop
	nop

;; fn0000000000442520: 0000000000442520
;;   Called from:
;;     000000000044251F (in fn00000000004424F0)
fn0000000000442520 proc
	mov	eax,[rcx+20h]
	ret
0000000000442524             90 90 90 90 90 90 90 90 90 90 90 90     ............

;; fn0000000000442530: 0000000000442530
fn0000000000442530 proc
	test	byte ptr [rcx+20h],5h
	mov	eax,0h
	cmovz	rax,rcx

l000000000044253D:
	ret
000000000044253E                                           90 90               ..

;; fn0000000000442540: 0000000000442540
fn0000000000442540 proc
	test	byte ptr [rcx+20h],5h
	setnz	al
	ret
0000000000442548                         90 90 90 90 90 90 90 90         ........

;; fn0000000000442550: 0000000000442550
fn0000000000442550 proc
	lea	rax,[000000000048D810]                                 ; [rip+0004B2B9]
	ret
0000000000442558                         90 90 90 90 90 90 90 90         ........

;; fn0000000000442560: 0000000000442560
;;   Called from:
;;     0000000000444440 (in fn00000000004442A0)
;;     00000000004445D1 (in fn00000000004444B0)
fn0000000000442560 proc
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,+0E8h
	mov	rax,[r8]
	mov	rdx,[r8+8h]
	mov	[rsp+130h],rcx
	mov	[rsp+90h],rax
	mov	rax,[r9]
	mov	[rsp+98h],rdx
	mov	rdx,[r9+8h]
	mov	[rsp+80h],rax
	mov	rax,[rsp+150h]
	mov	[rsp+88h],rdx
	lea	rbx,[rax+0D0h]
	mov	rcx,rbx
	call	472FC0h
	lea	rcx,[rsp+0AEh]
	mov	rdx,rbx
	mov	r14,rax
	call	42A560h
	mov	rbp,rax
	lea	rax,[rax+64h]
	mov	byte ptr [rsp+76h],0h
	cmp	qword ptr [rbp+40h],0h
	mov	[rsp+40h],rax
	jz	4425F5h

l00000000004425EB:
	cmp	qword ptr [rbp+50h],0h
	setnz	byte ptr [rsp+76h]

l00000000004425F5:
	lea	rax,[rsp+0D0h]
	xor	edx,edx
	xor	ecx,ecx
	mov	r8,rax
	mov	[rsp+48h],rax
	call	4505D0h
	cmp	byte ptr [rbp+20h],0h
	mov	[rsp+0C0h],rax
	jz	44262Eh

l000000000044261C:
	lea	rcx,[rsp+0C0h]
	mov	edx,20h
	call	451BE0h

l000000000044262E:
	lea	rax,[rsp+0AFh]
	xor	edx,edx
	xor	ecx,ecx
	mov	r8,rax
	mov	[rsp+78h],rax
	call	4505D0h
	mov	rcx,[rsp+48h]
	mov	edx,20h
	mov	[rsp+0D0h],rax
	call	451BE0h
	lea	rax,[rbp+65h]
	mov	r15,[0000000000491720]                                 ; [rip+0004F0B7]
	xor	r12d,r12d
	mov	byte ptr [rsp+75h],0h
	xor	esi,esi
	mov	dword ptr [rsp+70h],0h
	mov	[rsp+38h],rax
	mov	eax,[rbp+60h]
	mov	qword ptr [rsp+50h],+0h
	mov	byte ptr [rsp+77h],0h
	mov	[rsp+0B0h],eax
	lea	rax,[rsp+0B0h]
	mov	[rsp+58h],rax
	lea	rax,[rsp+80h]
	mov	[rsp+68h],rax
	lea	rax,[rsp+90h]
	mov	[rsp+60h],rax
	nop

l00000000004426C0:
	mov	rax,[rsp+58h]
	cmp	byte ptr [rax],4h
	ja	4429C8h

l00000000004426D0:
	movzx	edx,byte ptr [rax]
	lea	rax,[000000000048E040]                                 ; [rip+0004B964]
	movsxd	rdx,dword ptr [rax+rdx*4]
	add	rax,rdx
	jmp	rax
00000000004426E5                BF 01 00 00 00 49 83 FC 03 0F 84      .....I.....
00000000004426F0 01 03 00 00 48 8B 8C 24 90 00 00 00 48 85 C9 0F ....H..$....H...
0000000000442700 84 0B 05 00 00 8B 94 24 98 00 00 00 83 FA FF 0F .......$........
0000000000442710 84 6F 04 00 00 48 8B 84 24 80 00 00 00 48 85 C0 .o...H..$....H..
0000000000442720 0F 84 AB 04 00 00 31 DB 31 D2 83 BC 24 88 00 00 ......1.1...$...
0000000000442730 00 FF 0F 84 FE 04 00 00 38 D3 0F 85 70 04 00 00 ........8...p...
0000000000442740 40 84 FF 0F 84 AC 02 00 00                      @........      

l0000000000442749:
	lea	eax,[r12+1h]
	cmp	eax,3h
	jg	4429F5h

l0000000000442757:
	add	r12,1h
	jmp	4426C0h
0000000000442760 48 8B 8C 24 90 00 00 00 4C 8D AC 24 C0 00 00 00 H..$....L..$....
0000000000442770 48 85 C9 0F 84 17 01 00 00 0F 1F 80 00 00 00 00 H...............
0000000000442780 8B 94 24 98 00 00 00 83 FA FF 0F 84 E0 05 00 00 ..$.............
0000000000442790 48 8B 8C 24 80 00 00 00 48 85 C9 74 3B 31 DB 31 H..$....H..t;1.1
00000000004427A0 C0 83 BC 24 88 00 00 00 FF 0F 84 03 01 00 00 38 ...$...........8
00000000004427B0 D8 0F 84 1D 01 00 00 48 8B 8C 24 90 00 00 00 48 .......H..$....H
00000000004427C0 85 C9 0F 84 E2 05 00 00 8B 94 24 98 00 00 00 83 ..........$.....
00000000004427D0 FA FF 0F 84 E8 05 00 00 89 D3 0F BE D2 48 8B 4C .............H.L
00000000004427E0 24 38 41 B8 0A 00 00 00 E8 AB 95 FD FF 48 85 C0 $8A..........H..
00000000004427F0 0F 84 0A 06 00 00 48 2B 44 24 40 49 8B 17 0F B6 ......H+D$@I....
0000000000442800 3C 02 48 8B 84 24 D0 00 00 00 48 8B 50 E8 48 8D <.H..$....H.P.H.
0000000000442810 5A 01 48 3B 58 F0 77 09 44 8B 48 F8 45 85 C9 7E Z.H;X.w.D.H.E..~
0000000000442820 19 48 8B 4C 24 48 48 89 DA E8 B2 F3 00 00 48 8B .H.L$HH.......H.
0000000000442830 84 24 D0 00 00 00 48 8B 50 E8 40 88 3C 10 48 8B .$....H.P.@.<.H.
0000000000442840 84 24 D0 00 00 00 83 C6 01 C7 40 F8 00 00 00 00 .$........@.....
0000000000442850 48 89 58 E8 C6 04 18 00 48 8B 8C 24 90 00 00 00 H.X.....H..$....
0000000000442860 48 85 C9 74 2B 48 8B 41 10 48 3B 41 18 0F 83 FD H..t+H.A.H;A....
0000000000442870 07 00 00 48 83 C0 01 48 89 41 10 48 85 C9 C7 84 ...H...H.A.H....
0000000000442880 24 98 00 00 00 FF FF FF FF 0F 85 F1 FE FF FF 90 $...............
0000000000442890 48 8B 8C 24 80 00 00 00 48 85 C9 74 37 31 C0 83 H..$....H..t71..
00000000004428A0 BC 24 88 00 00 00 FF BB 01 00 00 00 0F 85 FD FE .$..............
00000000004428B0 FF FF 48 8B 41 10 48 3B 41 18 0F 83 E0 07 00 00 ..H.A.H;A.......
00000000004428C0 0F B6 00 89 84 24 88 00 00 00 31 C0 38 D8 0F 85 .....$....1.8...
00000000004428D0 E3 FE FF FF BF 01 00 00 00 48 8B 84 24 D0 00 00 .........H..$...
00000000004428E0 00 48 83 78 E8 00 0F 84 09 06 00 00 E9 4F FE FF .H.x.........O..
00000000004428F0 FF 48 83 7D 40 00 0F 85 69 08 00 00 48 83 7D 50 .H.}@...i...H.}P
0000000000442900 00 0F 85 92 08 00 00 0F B6 7C 24 76 83 F7 01 E9 .........|$v....
0000000000442910 2C FE FF FF 48 8B 84 24 50 01 00 00 F6 40 19 02 ,...H..$P....@..
0000000000442920 75 4E 48 83 7C 24 50 01 77 46 45 85 E4 74 41 41 uNH.|$P.wFE..tAA
0000000000442930 83 FC 01 0F 84 DB 08 00 00 41 83 FC 02 BF 01 00 .........A......
0000000000442940 00 00 0F 85 01 FE FF FF 0F B6 84 24 B3 00 00 00 ...........$....
0000000000442950 3C 04 74 1C 80 7C 24 76 00 0F 84 F8 FD FF FF 3C <.t..|$v.......<
0000000000442960 03 0F 85 F0 FD FF FF 66 0F 1F 84 00 00 00 00 00 .......f........
0000000000442970 4C 8B 6D 30 48 8B 8C 24 90 00 00 00 31 DB 66 90 L.m0H..$....1.f.
0000000000442980 48 85 C9 0F 84 92 03 00 00 83 BC 24 98 00 00 00 H..........$....
0000000000442990 FF 0F 84 4B 04 00 00 48 8B 8C 24 80 00 00 00 48 ...K...H..$....H
00000000004429A0 85 C9 74 1B 31 FF 31 C0 83 BC 24 88 00 00 00 FF ..t.1.1...$.....
00000000004429B0 0F 84 87 03 00 00 40 38 C7 0F 84 A1 03 00 00 4C ......@8.......L
00000000004429C0 39 EB 0F 85 E8 04 00 00                         9.......       

l00000000004429C8:
	mov	edi,1h
	jmp	442749h
00000000004429D2       48 8B 54 24 68 48 8B 4C 24 60 E8 7F 85 FE   H.T$hH.L$`....
00000000004429E0 FF 84 C0 0F 84 6C 02 00 00 31 FF 49 83 FC 03 0F .....l...1.I....
00000000004429F0 85 FF FC FF FF                                  .....          

l00000000004429F5:
	cmp	qword ptr [rsp+50h],1h
	seta	al
	and	eax,edi
	test	al,al
	jz	443240h

l0000000000442A08:
	cmp	byte ptr [rsp+77h],0h
	jnz	44325Ch

l0000000000442A13:
	mov	r13,[rbp+38h]

l0000000000442A17:
	lea	r12,[rsp+80h]
	lea	rdi,[rsp+90h]
	mov	ebx,1h
	nop	dword ptr [rax+0h]

l0000000000442A30:
	mov	rdx,r12
	mov	rcx,rdi
	call	42AF60h
	cmp	rbx,[rsp+50h]
	setc	dl
	cmp	al,dl
	jc	443265h

l0000000000442A4B:
	cmp	rbx,[rsp+50h]
	jnz	442F05h

l0000000000442A56:
	mov	rax,[rsp+0D0h]
	cmp	qword ptr [rax-18h],1h
	jbe	442A95h

l0000000000442A65:
	mov	rcx,[rsp+48h]
	xor	r8d,r8d
	mov	edx,30h
	call	428600h
	test	rax,rax
	jz	442A95h

l0000000000442A7C:
	cmp	rax,0FFh
	mov	r8,rax
	jz	443302h

l0000000000442A89:
	mov	rcx,[rsp+48h]
	xor	edx,edx
	call	450D50h

l0000000000442A95:
	cmp	byte ptr [rsp+77h],0h
	jz	442B03h

l0000000000442A9C:
	mov	rax,[rsp+0D0h]
	mov	edx,[rax-8h]
	test	edx,edx
	js	443323h

l0000000000442AAF:
	mov	rcx,[rsp+48h]
	call	4505A0h
	mov	rax,[rsp+0D0h]
	cmp	byte ptr [rax],30h
	jz	442B03h

l0000000000442AC6:
	mov	eax,[rax-8h]
	test	eax,eax
	js	442AD7h

l0000000000442ACD:
	mov	rcx,[rsp+48h]
	call	4505A0h

l0000000000442AD7:
	mov	rcx,[rsp+48h]
	mov	dword ptr [rsp+20h],2Dh
	mov	r9d,1h
	xor	r8d,r8d
	xor	edx,edx
	call	4508E0h
	mov	rax,[rsp+0D0h]
	mov	dword ptr [rax-8h],0FFFFFFFFh

l0000000000442B03:
	mov	rax,[rsp+0C0h]
	cmp	qword ptr [rax-18h],0h
	jz	442B52h

l0000000000442B12:
	movsx	eax,byte ptr [rsp+70h]
	cmp	byte ptr [rsp+75h],0h
	lea	rbx,[rsp+0C0h]
	movsx	edx,sil
	mov	rcx,rbx
	cmovnz	edx,eax

l0000000000442B2E:
	call	451E10h
	mov	rdx,[rbp+18h]
	mov	rcx,[rbp+10h]
	mov	r8,rbx
	call	4708F0h
	test	al,al
	jnz	442B52h

l0000000000442B47:
	mov	rax,[rsp+158h]
	or	dword ptr [rax],4h

l0000000000442B52:
	cmp	byte ptr [rsp+75h],0h
	jnz	44324Eh

l0000000000442B5D:
	mov	rdx,[rsp+48h]
	mov	rcx,[rsp+160h]
	call	450C50h
	lea	r12,[rsp+80h]
	lea	rdi,[rsp+90h]
	jmp	442F10h
0000000000442B84             48 8B 41 10 48 3B 41 18 0F 83 8F 04     H.A.H;A.....
0000000000442B90 00 00 0F B6 00 89 84 24 98 00 00 00 48 8B 84 24 .......$....H..$
0000000000442BA0 80 00 00 00 48 85 C0 0F 85 79 FB FF FF 0F 1F 00 ....H....y......
0000000000442BB0 48 8B 8C 24 90 00 00 00 48 85 C9 0F 84 4A 04 00 H..$....H....J..
0000000000442BC0 00 8B 94 24 98 00 00 00 83 FA FF 0F 84 CF 00 00 ...$............
0000000000442BD0 00 49 8B 46 30 0F B6 D2 F6 04 50 20 0F 84 5E FB .I.F0.....P ..^.
0000000000442BE0 FF FF 48 8B 41 10 48 3B 41 18 0F 83 F8 00 00 00 ..H.A.H;A.......
0000000000442BF0 48 83 C0 01 48 89 41 10 48 85 C9 C7 84 24 98 00 H...H.A.H....$..
0000000000442C00 00 00 FF FF FF FF 0F 85 F9 FA FF FF 0F 1F 40 00 ..............@.
0000000000442C10 48 8B 84 24 80 00 00 00 48 85 C0 0F 84 1F FB FF H..$....H.......
0000000000442C20 FF 31 D2 83 BC 24 88 00 00 00 FF BB 01 00 00 00 .1...$..........
0000000000442C30 0F 85 02 FB FF FF 48 8B 50 10 48 3B 50 18 0F 83 ......H.P.H;P...
0000000000442C40 FD 03 00 00 0F B6 02 89 84 24 88 00 00 00 31 D2 .........$....1.
0000000000442C50 E9 E3 FA FF FF 48 8B 4C 24 60 E8 F1 83 FE FF 49 .....H.L$`.....I
0000000000442C60 8B 56 30 0F B6 C0 F6 04 42 20 0F 84 79 FD FF FF .V0.....B ..y...
0000000000442C70 48 8B 8C 24 90 00 00 00 48 85 C9 0F 84 64 FA FF H..$....H....d..
0000000000442C80 FF E8 0A F8 01 00 C7 84 24 98 00 00 00 FF FF FF ........$.......
0000000000442C90 FF BF 01 00 00 00 E9 4F FA FF FF 0F 1F 44 00 00 .......O.....D..
0000000000442CA0 48 8B 41 10 48 3B 41 18 0F 83 42 03 00 00 0F B6 H.A.H;A...B.....
0000000000442CB0 00 49 8B 56 30 89 84 24 98 00 00 00 0F B6 C0 F6 .I.V0..$........
0000000000442CC0 04 42 20 0F 84 77 FA FF FF 48 8B 8C 24 90 00 00 .B ..w...H..$...
0000000000442CD0 00 48 85 C9 0F 84 36 FF FF FF 48 8B 41 10 48 3B .H....6...H.A.H;
0000000000442CE0 41 18 0F 82 08 FF FF FF 48 8B 01 FF 50 50 48 8B A.......H...PPH.
0000000000442CF0 8C 24 90 00 00 00 E9 FD FE FF FF 0F 1F 44 00 00 .$...........D..
0000000000442D00 48 8B 01 FF 50 48 83 F8 FF 0F 85 E4 00 00 00 48 H...PH.........H
0000000000442D10 C7 84 24 90 00 00 00 00 00 00 00 48 8B 8C 24 80 ..$........H..$.
0000000000442D20 00 00 00 48 85 C9 74 38 31 C0 83 BC 24 88 00 00 ...H..t81...$...
0000000000442D30 00 FF BF 01 00 00 00 0F 85 79 FC FF FF 48 8B 41 .........y...H.A
0000000000442D40 10 48 3B 41 18 0F 83 F5 03 00 00 0F B6 00 89 84 .H;A............
0000000000442D50 24 88 00 00 00 31 C0 40 38 C7 0F 85 5F FC FF FF $....1.@8..._...
0000000000442D60 4C 39 EB 0F 85 75 01 00 00 E9 5A FC FF FF 66 90 L9...u....Z...f.
0000000000442D70 48 8B 41 10 48 3B 41 18 0F 83 47 03 00 00 0F B6 H.A.H;A...G.....
0000000000442D80 00 48 8B 8C 24 80 00 00 00 89 84 24 98 00 00 00 .H..$......$....
0000000000442D90 48 85 C9 0F 85 04 FA FF FF 48 8B 8C 24 90 00 00 H........H..$...
0000000000442DA0 00 48 85 C9 0F 85 1E FA FF FF BA FF FF FF FF 89 .H..............
0000000000442DB0 D3 E9 27 FA FF FF 66 2E 0F 1F 84 00 00 00 00 00 ..'...f.........
0000000000442DC0 48 8B 41 10 48 3B 41 18 0F 83 17 03 00 00 0F B6 H.A.H;A.........
0000000000442DD0 00 89 84 24 98 00 00 00 89 C3 0F BE D0 E9 FB F9 ...$............
0000000000442DE0 FF FF 48 8B 41 10 48 3B 41 18 0F 83 10 FF FF FF ..H.A.H;A.......
0000000000442DF0 0F B6 00 89 84 24 98 00 00 00 E9 98 FB FF FF 90 .....$..........
0000000000442E00 3A 5D 21 75 2B 80 7C 24 75 00 75 24 44 8B 45 58 :]!u+.|$u.u$D.EX
0000000000442E10 45 85 C0 0F 8E BB FA FF FF 89 74 24 70 C6 44 24 E.........t$p.D$
0000000000442E20 75 01 31 F6 E9 2F FA FF FF 0F 1F 80 00 00 00 00 u.1../..........
0000000000442E30 80 7D 20 00 0F 84 9A FA FF FF 3A 5D 22 0F 85 91 .} .......:]"...
0000000000442E40 FA FF FF 80 7C 24 75 00 0F 85 86 FA FF FF 85 F6 ....|$u.........
0000000000442E50 0F 84 71 03 00 00 48 8B 84 24 C0 00 00 00 48 8B ..q...H..$....H.
0000000000442E60 50 E8 48 8D 5A 01 48 3B 58 F0 77 07 8B 48 F8 85 P.H.Z.H;X.w..H..
0000000000442E70 C9 7E 17 48 89 DA 4C 89 E9 E8 62 ED 00 00 48 8B .~.H..L...b...H.
0000000000442E80 84 24 C0 00 00 00 48 8B 50 E8 40 88 34 10 48 8B .$....H.P.@.4.H.
0000000000442E90 84 24 C0 00 00 00 31 F6 C7 40 F8 00 00 00 00 48 .$....1..@.....H
0000000000442EA0 89 58 E8 C6 04 18 00 E9 AC F9 FF FF 0F 1F 40 00 .X............@.
0000000000442EB0 48 8B 8C 24 90 00 00 00 48 85 C9 0F 84 63 02 00 H..$....H....c..
0000000000442EC0 00 8B 84 24 98 00 00 00 83 F8 FF 0F 84 C0 00 00 ...$............
0000000000442ED0 00 48 8B 55 28 38 04 1A 0F 84 E5 00 00 00 48 85 .H.U(8........H.
0000000000442EE0 DB 75 12 48 8B 84 24 50 01 00 00 F6 40 19 02 0F .u.H..$P....@...
0000000000442EF0 84 D3 FA FF FF                                  .....          

l0000000000442EF5:
	lea	r12,[rsp+80h]
	lea	rdi,[rsp+90h]

l0000000000442F05:
	mov	rax,[rsp+158h]
	or	dword ptr [rax],4h

l0000000000442F10:
	mov	rdx,r12
	mov	rcx,rdi
	call	42AF60h
	test	al,al
	jz	442F2Ah

l0000000000442F1F:
	mov	rax,[rsp+158h]
	or	dword ptr [rax],2h

l0000000000442F2A:
	mov	rax,[rsp+90h]
	mov	rsi,[rsp+130h]
	mov	rdx,[rsp+98h]
	mov	[rsi],rax
	mov	rax,[rsp+0D0h]
	mov	[rsi+8h],rdx
	mov	rdx,[rsp+78h]
	lea	rcx,[rax-18h]
	call	450A60h
	mov	rax,[rsp+0C0h]
	mov	rdx,[rsp+48h]
	lea	rcx,[rax-18h]
	call	450A60h
	mov	rax,[rsp+130h]
	add	rsp,+0E8h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret
0000000000442F91    48 8B 41 10 48 3B 41 18 0F 83 6A 01 00 00 0F  H.A.H;A...j....
0000000000442FA0 B6 00 48 8B 55 28 89 84 24 98 00 00 00 38 04 1A ..H.U(..$....8..
0000000000442FB0 0F 85 28 FF FF FF 48 8B 8C 24 90 00 00 00 48 85 ..(...H..$....H.
0000000000442FC0 C9 74 21 48 8B 41 10 48 3B 41 18 0F 83 B2 00 00 .t!H.A.H;A......
0000000000442FD0 00 48 83 C0 01 48 89 41 10 C7 84 24 98 00 00 00 .H...H.A...$....
0000000000442FE0 FF FF FF FF 48 83 C3 01 E9 93 F9 FF FF 0F 1F 00 ....H...........
0000000000442FF0 48 8B 01 FF 50 48 83 F8 FF 0F 85 B2 FC FF FF 48 H...PH.........H
0000000000443000 C7 84 24 90 00 00 00 00 00 00 00 49 8B 46 30 F6 ..$........I.F0.
0000000000443010 80 FE 01 00 00 20 0F 84 24 F7 FF FF E9 D3 F6 FF ..... ..$.......
0000000000443020 FF 48 8B 01 FF 50 48 83 F8 FF 0F 85 65 FB FF FF .H...PH.....e...
0000000000443030 48 C7 84 24 90 00 00 00 00 00 00 00 E9 CF FB FF H..$............
0000000000443040 FF 48 8B 10 48 89 C1 FF 52 48 83 F8 FF 0F 85 F4 .H..H...RH......
0000000000443050 FB FF FF 48 C7 84 24 80 00 00 00 00 00 00 00 BA ...H..$.........
0000000000443060 01 00 00 00 E9 CF F6 FF FF 0F 1F 80 00 00 00 00 ................
0000000000443070 48 8B 01 FF 50 50 48 8B 8C 24 90 00 00 00 E9 F8 H...PPH..$......
0000000000443080 F7 FF FF 48 8B 01 FF 50 50 48 8B 8C 24 90 00 00 ...H...PPH..$...
0000000000443090 00 E9 43 FF FF FF 66 2E 0F 1F 84 00 00 00 00 00 ..C...f.........
00000000004430A0 48 8B 01 FF 50 48 83 F8 FF 0F 85 14 F8 FF FF 48 H...PH.........H
00000000004430B0 C7 84 24 80 00 00 00 00 00 00 00 B8 01 00 00 00 ..$.............
00000000004430C0 E9 EA F6 FF FF 48 8B 01 FF 50 48 83 F8 FF 0F 85 .....H...PH.....
00000000004430D0 AD FC FF FF 48 C7 84 24 90 00 00 00 00 00 00 00 ....H..$........
00000000004430E0 E9 AB F7 FF FF 48 8B 01 FF 50 48 83 F8 FF 0F 85 .....H...PH.....
00000000004430F0 DD FC FF FF 48 C7 84 24 90 00 00 00 00 00 00 00 ....H..$........
0000000000443100 89 C2 89 C3 E9 D4 F6 FF FF 48 8B 01 FF 50 48 83 .........H...PH.
0000000000443110 F8 FF 0F 85 8A FE FF FF 48 C7 84 24 90 00 00 00 ........H..$....
0000000000443120 00 00 00 00 48 8B 45 28 80 3C 18 FF 0F 85 AC FD ....H.E(.<......
0000000000443130 FF FF 48 8B 8C 24 90 00 00 00 E9 A5 FE FF FF 90 ..H..$..........
0000000000443140 48 8B 01 FF 50 48 83 F8 FF 0F 85 FF FB FF FF 48 H...PH.........H
0000000000443150 C7 84 24 80 00 00 00 00 00 00 00 B8 01 00 00 00 ..$.............
0000000000443160 E9 51 F8 FF FF 48 8B 54 24 68 48 8B 4C 24 60 E8 .Q...H.T$hH.L$`.
0000000000443170 EC 7D FE FF 84 C0 74 56 48 83 7D 50 00 75 1A 48 .}....tVH.}P.u.H
0000000000443180 83 7D 40 00 0F 84 7D F7 FF FF BF 01 00 00 00 C6 .}@...}.........
0000000000443190 44 24 77 01 E9 B0 F5 FF FF 48 8B 54 24 68 48 8B D$w......H.T$hH.
00000000004431A0 4C 24 60 E8 B8 7D FE FF 84 C0 0F 84 03 01 00 00 L$`..}..........
00000000004431B0 48 83 7D 40 00 0F 84 4C F7 FF FF 48 83 7D 50 00 H.}@...L...H.}P.
00000000004431C0 74 C8 E9 40 F7 FF FF 31 FF E9 0B F7 FF FF 48 8B t..@...1......H.
00000000004431D0 4C 24 60 E8 78 7E FE FF 48 8B 55 38 38 02 75 98 L$`.x~..H.U88.u.
00000000004431E0 48 8B 8C 24 90 00 00 00 48 8B 45 40 48 85 C9 48 H..$....H.E@H..H
00000000004431F0 89 44 24 50 0F 84 CE F7 FF FF E8 91 F2 01 00 C7 .D$P............
0000000000443200 84 24 98 00 00 00 FF FF FF FF BF 01 00 00 00 E9 .$..............
0000000000443210 35 F5 FF FF 80 7C 24 76 00 0F 85 51 F7 FF FF 80 5....|$v...Q....
0000000000443220 BC 24 B0 00 00 00 03 0F 84 43 F7 FF FF 80 BC 24 .$.......C.....$
0000000000443230 B2 00 00 00 01 0F 85 1C F5 FF FF E9 30 F7 FF FF ............0...

l0000000000443240:
	test	dil,dil
	jnz	442A56h

l0000000000443249:
	jmp	442EF5h

l000000000044324E:
	cmp	[rbp+58h],esi
	jnz	442EF5h

l0000000000443257:
	jmp	442B5Dh

l000000000044325C:
	mov	r13,[rbp+48h]
	jmp	442A17h

l0000000000443265:
	mov	rcx,rdi
	call	42B050h
	cmp	[r13+rbx+0h],al
	jnz	442A4Bh

l0000000000443278:
	mov	rcx,[rsp+90h]
	test	rcx,rcx
	jz	4432A2h

l0000000000443285:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	4432ABh

l000000000044328F:
	add	rax,1h
	mov	[rcx+10h],rax

l0000000000443297:
	mov	dword ptr [rsp+98h],0FFFFFFFFh

l00000000004432A2:
	add	rbx,1h
	jmp	442A30h

l00000000004432AB:
	mov	rax,[rcx]
	call	qword ptr [rax+50h]
	jmp	443297h
00000000004432B3          48 8B 4C 24 60 E8 93 7D FE FF 48 8B 55    H.L$`..}..H.U
00000000004432C0 48 38 02 0F 85 E7 FE FF FF 48 8B 8C 24 90 00 00 H8.......H..$...
00000000004432D0 00 48 8B 45 50 48 85 C9 48 89 44 24 50 0F 84 A7 .H.EPH..H.D$P...
00000000004432E0 FE FF FF E8 A8 F1 01 00 C7 84 24 98 00 00 00 FF ..........$.....
00000000004432F0 FF FF FF BF 01 00 00 00 C6 44 24 77 01 E9 47 F4 .........D$w..G.
0000000000443300 FF FF                                           ..             

l0000000000443302:
	mov	rax,[rsp+0D0h]
	mov	rcx,[rsp+48h]
	xor	edx,edx
	mov	r8,[rax-18h]
	sub	r8,1h
	call	450D50h
	jmp	442A95h

l0000000000443323:
	cmp	byte ptr [rax],30h
	jnz	442AD7h

l000000000044332C:
	mov	rax,[rsp+0C0h]
	cmp	qword ptr [rax-18h],0h
	jz	442B52h

l000000000044333F:
	jmp	442B12h
0000000000443344             48 89 C3 48 8B 84 24 D0 00 00 00 48     H..H..$....H
0000000000443350 8B 54 24 78 48 8D 48 E8 E8 03 D7 00 00 48 8B 84 .T$xH.H......H..
0000000000443360 24 C0 00 00 00 48 8B 54 24 48 48 8D 48 E8 E8 ED $....H.T$HH.H...
0000000000443370 D6 00 00 48 89 D9 E8 35 E2 FC FF 48 89 C3 EB DD ...H...5...H....

;; fn0000000000443380: 0000000000443380
;;   Called from:
;;     000000000044434D (in fn00000000004442A0)
;;     0000000000444548 (in fn00000000004444B0)
fn0000000000443380 proc
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,+0E8h
	mov	rax,[r8]
	mov	rdx,[r8+8h]
	mov	[rsp+130h],rcx
	mov	[rsp+90h],rax
	mov	rax,[r9]
	mov	[rsp+98h],rdx
	mov	rdx,[r9+8h]
	mov	[rsp+80h],rax
	mov	rax,[rsp+150h]
	mov	[rsp+88h],rdx
	lea	rbx,[rax+0D0h]
	mov	rcx,rbx
	call	472FC0h
	lea	rcx,[rsp+0AEh]
	mov	rdx,rbx
	mov	r14,rax
	call	42A690h
	mov	rbp,rax
	lea	rax,[rax+64h]
	mov	byte ptr [rsp+76h],0h
	cmp	qword ptr [rbp+40h],0h
	mov	[rsp+40h],rax
	jz	443415h

l000000000044340B:
	cmp	qword ptr [rbp+50h],0h
	setnz	byte ptr [rsp+76h]

l0000000000443415:
	lea	rax,[rsp+0D0h]
	xor	edx,edx
	xor	ecx,ecx
	mov	r8,rax
	mov	[rsp+48h],rax
	call	4505D0h
	cmp	byte ptr [rbp+20h],0h
	mov	[rsp+0C0h],rax
	jz	44344Eh

l000000000044343C:
	lea	rcx,[rsp+0C0h]
	mov	edx,20h
	call	451BE0h

l000000000044344E:
	lea	rax,[rsp+0AFh]
	xor	edx,edx
	xor	ecx,ecx
	mov	r8,rax
	mov	[rsp+78h],rax
	call	4505D0h
	mov	rcx,[rsp+48h]
	mov	edx,20h
	mov	[rsp+0D0h],rax
	call	451BE0h
	lea	rax,[rbp+65h]
	mov	r15,[0000000000491720]                                 ; [rip+0004E297]
	xor	r12d,r12d
	mov	byte ptr [rsp+75h],0h
	xor	esi,esi
	mov	dword ptr [rsp+70h],0h
	mov	[rsp+38h],rax
	mov	eax,[rbp+60h]
	mov	qword ptr [rsp+50h],+0h
	mov	byte ptr [rsp+77h],0h
	mov	[rsp+0B0h],eax
	lea	rax,[rsp+0B0h]
	mov	[rsp+58h],rax
	lea	rax,[rsp+80h]
	mov	[rsp+68h],rax
	lea	rax,[rsp+90h]
	mov	[rsp+60h],rax
	nop

l00000000004434E0:
	mov	rax,[rsp+58h]
	cmp	byte ptr [rax],4h
	ja	4437E8h

l00000000004434F0:
	movzx	edx,byte ptr [rax]
	lea	rax,[000000000048E02C]                                 ; [rip+0004AB30]
	movsxd	rdx,dword ptr [rax+rdx*4]
	add	rax,rdx
	jmp	rax
0000000000443505                BF 01 00 00 00 49 83 FC 03 0F 84      .....I.....
0000000000443510 01 03 00 00 48 8B 8C 24 90 00 00 00 48 85 C9 0F ....H..$....H...
0000000000443520 84 0B 05 00 00 8B 94 24 98 00 00 00 83 FA FF 0F .......$........
0000000000443530 84 6F 04 00 00 48 8B 84 24 80 00 00 00 48 85 C0 .o...H..$....H..
0000000000443540 0F 84 AB 04 00 00 31 DB 31 D2 83 BC 24 88 00 00 ......1.1...$...
0000000000443550 00 FF 0F 84 FE 04 00 00 38 D3 0F 85 70 04 00 00 ........8...p...
0000000000443560 40 84 FF 0F 84 AC 02 00 00                      @........      

l0000000000443569:
	lea	eax,[r12+1h]
	cmp	eax,3h
	jg	443815h

l0000000000443577:
	add	r12,1h
	jmp	4434E0h
0000000000443580 48 8B 8C 24 90 00 00 00 4C 8D AC 24 C0 00 00 00 H..$....L..$....
0000000000443590 48 85 C9 0F 84 17 01 00 00 0F 1F 80 00 00 00 00 H...............
00000000004435A0 8B 94 24 98 00 00 00 83 FA FF 0F 84 E0 05 00 00 ..$.............
00000000004435B0 48 8B 8C 24 80 00 00 00 48 85 C9 74 3B 31 DB 31 H..$....H..t;1.1
00000000004435C0 C0 83 BC 24 88 00 00 00 FF 0F 84 03 01 00 00 38 ...$...........8
00000000004435D0 D8 0F 84 1D 01 00 00 48 8B 8C 24 90 00 00 00 48 .......H..$....H
00000000004435E0 85 C9 0F 84 E2 05 00 00 8B 94 24 98 00 00 00 83 ..........$.....
00000000004435F0 FA FF 0F 84 E8 05 00 00 89 D3 0F BE D2 48 8B 4C .............H.L
0000000000443600 24 38 41 B8 0A 00 00 00 E8 8B 87 FD FF 48 85 C0 $8A..........H..
0000000000443610 0F 84 0A 06 00 00 48 2B 44 24 40 49 8B 17 0F B6 ......H+D$@I....
0000000000443620 3C 02 48 8B 84 24 D0 00 00 00 48 8B 50 E8 48 8D <.H..$....H.P.H.
0000000000443630 5A 01 48 3B 58 F0 77 09 44 8B 48 F8 45 85 C9 7E Z.H;X.w.D.H.E..~
0000000000443640 19 48 8B 4C 24 48 48 89 DA E8 92 E5 00 00 48 8B .H.L$HH.......H.
0000000000443650 84 24 D0 00 00 00 48 8B 50 E8 40 88 3C 10 48 8B .$....H.P.@.<.H.
0000000000443660 84 24 D0 00 00 00 83 C6 01 C7 40 F8 00 00 00 00 .$........@.....
0000000000443670 48 89 58 E8 C6 04 18 00 48 8B 8C 24 90 00 00 00 H.X.....H..$....
0000000000443680 48 85 C9 74 2B 48 8B 41 10 48 3B 41 18 0F 83 FD H..t+H.A.H;A....
0000000000443690 07 00 00 48 83 C0 01 48 89 41 10 48 85 C9 C7 84 ...H...H.A.H....
00000000004436A0 24 98 00 00 00 FF FF FF FF 0F 85 F1 FE FF FF 90 $...............
00000000004436B0 48 8B 8C 24 80 00 00 00 48 85 C9 74 37 31 C0 83 H..$....H..t71..
00000000004436C0 BC 24 88 00 00 00 FF BB 01 00 00 00 0F 85 FD FE .$..............
00000000004436D0 FF FF 48 8B 41 10 48 3B 41 18 0F 83 E0 07 00 00 ..H.A.H;A.......
00000000004436E0 0F B6 00 89 84 24 88 00 00 00 31 C0 38 D8 0F 85 .....$....1.8...
00000000004436F0 E3 FE FF FF BF 01 00 00 00 48 8B 84 24 D0 00 00 .........H..$...
0000000000443700 00 48 83 78 E8 00 0F 84 09 06 00 00 E9 4F FE FF .H.x.........O..
0000000000443710 FF 48 83 7D 40 00 0F 85 69 08 00 00 48 83 7D 50 .H.}@...i...H.}P
0000000000443720 00 0F 85 92 08 00 00 0F B6 7C 24 76 83 F7 01 E9 .........|$v....
0000000000443730 2C FE FF FF 48 8B 84 24 50 01 00 00 F6 40 19 02 ,...H..$P....@..
0000000000443740 75 4E 48 83 7C 24 50 01 77 46 45 85 E4 74 41 41 uNH.|$P.wFE..tAA
0000000000443750 83 FC 01 0F 84 DB 08 00 00 41 83 FC 02 BF 01 00 .........A......
0000000000443760 00 00 0F 85 01 FE FF FF 0F B6 84 24 B3 00 00 00 ...........$....
0000000000443770 3C 04 74 1C 80 7C 24 76 00 0F 84 F8 FD FF FF 3C <.t..|$v.......<
0000000000443780 03 0F 85 F0 FD FF FF 66 0F 1F 84 00 00 00 00 00 .......f........
0000000000443790 4C 8B 6D 30 48 8B 8C 24 90 00 00 00 31 DB 66 90 L.m0H..$....1.f.
00000000004437A0 48 85 C9 0F 84 92 03 00 00 83 BC 24 98 00 00 00 H..........$....
00000000004437B0 FF 0F 84 4B 04 00 00 48 8B 8C 24 80 00 00 00 48 ...K...H..$....H
00000000004437C0 85 C9 74 1B 31 FF 31 C0 83 BC 24 88 00 00 00 FF ..t.1.1...$.....
00000000004437D0 0F 84 87 03 00 00 40 38 C7 0F 84 A1 03 00 00 4C ......@8.......L
00000000004437E0 39 EB 0F 85 E8 04 00 00                         9.......       

l00000000004437E8:
	mov	edi,1h
	jmp	443569h
00000000004437F2       48 8B 54 24 68 48 8B 4C 24 60 E8 5F 77 FE   H.T$hH.L$`._w.
0000000000443800 FF 84 C0 0F 84 6C 02 00 00 31 FF 49 83 FC 03 0F .....l...1.I....
0000000000443810 85 FF FC FF FF                                  .....          

l0000000000443815:
	cmp	qword ptr [rsp+50h],1h
	seta	al
	and	eax,edi
	test	al,al
	jz	444060h

l0000000000443828:
	cmp	byte ptr [rsp+77h],0h
	jnz	44407Ch

l0000000000443833:
	mov	r13,[rbp+38h]

l0000000000443837:
	lea	r12,[rsp+80h]
	lea	rdi,[rsp+90h]
	mov	ebx,1h
	nop	dword ptr [rax+0h]

l0000000000443850:
	mov	rdx,r12
	mov	rcx,rdi
	call	42AF60h
	cmp	rbx,[rsp+50h]
	setc	dl
	cmp	al,dl
	jc	444085h

l000000000044386B:
	cmp	rbx,[rsp+50h]
	jnz	443D25h

l0000000000443876:
	mov	rax,[rsp+0D0h]
	cmp	qword ptr [rax-18h],1h
	jbe	4438B5h

l0000000000443885:
	mov	rcx,[rsp+48h]
	xor	r8d,r8d
	mov	edx,30h
	call	428600h
	test	rax,rax
	jz	4438B5h

l000000000044389C:
	cmp	rax,0FFh
	mov	r8,rax
	jz	444122h

l00000000004438A9:
	mov	rcx,[rsp+48h]
	xor	edx,edx
	call	450D50h

l00000000004438B5:
	cmp	byte ptr [rsp+77h],0h
	jz	443923h

l00000000004438BC:
	mov	rax,[rsp+0D0h]
	mov	edx,[rax-8h]
	test	edx,edx
	js	444143h

l00000000004438CF:
	mov	rcx,[rsp+48h]
	call	4505A0h
	mov	rax,[rsp+0D0h]
	cmp	byte ptr [rax],30h
	jz	443923h

l00000000004438E6:
	mov	eax,[rax-8h]
	test	eax,eax
	js	4438F7h

l00000000004438ED:
	mov	rcx,[rsp+48h]
	call	4505A0h

l00000000004438F7:
	mov	rcx,[rsp+48h]
	mov	dword ptr [rsp+20h],2Dh
	mov	r9d,1h
	xor	r8d,r8d
	xor	edx,edx
	call	4508E0h
	mov	rax,[rsp+0D0h]
	mov	dword ptr [rax-8h],0FFFFFFFFh

l0000000000443923:
	mov	rax,[rsp+0C0h]
	cmp	qword ptr [rax-18h],0h
	jz	443972h

l0000000000443932:
	movsx	eax,byte ptr [rsp+70h]
	cmp	byte ptr [rsp+75h],0h
	lea	rbx,[rsp+0C0h]
	movsx	edx,sil
	mov	rcx,rbx
	cmovnz	edx,eax

l000000000044394E:
	call	451E10h
	mov	rdx,[rbp+18h]
	mov	rcx,[rbp+10h]
	mov	r8,rbx
	call	4708F0h
	test	al,al
	jnz	443972h

l0000000000443967:
	mov	rax,[rsp+158h]
	or	dword ptr [rax],4h

l0000000000443972:
	cmp	byte ptr [rsp+75h],0h
	jnz	44406Eh

l000000000044397D:
	mov	rdx,[rsp+48h]
	mov	rcx,[rsp+160h]
	call	450C50h
	lea	r12,[rsp+80h]
	lea	rdi,[rsp+90h]
	jmp	443D30h
00000000004439A4             48 8B 41 10 48 3B 41 18 0F 83 8F 04     H.A.H;A.....
00000000004439B0 00 00 0F B6 00 89 84 24 98 00 00 00 48 8B 84 24 .......$....H..$
00000000004439C0 80 00 00 00 48 85 C0 0F 85 79 FB FF FF 0F 1F 00 ....H....y......
00000000004439D0 48 8B 8C 24 90 00 00 00 48 85 C9 0F 84 4A 04 00 H..$....H....J..
00000000004439E0 00 8B 94 24 98 00 00 00 83 FA FF 0F 84 CF 00 00 ...$............
00000000004439F0 00 49 8B 46 30 0F B6 D2 F6 04 50 20 0F 84 5E FB .I.F0.....P ..^.
0000000000443A00 FF FF 48 8B 41 10 48 3B 41 18 0F 83 F8 00 00 00 ..H.A.H;A.......
0000000000443A10 48 83 C0 01 48 89 41 10 48 85 C9 C7 84 24 98 00 H...H.A.H....$..
0000000000443A20 00 00 FF FF FF FF 0F 85 F9 FA FF FF 0F 1F 40 00 ..............@.
0000000000443A30 48 8B 84 24 80 00 00 00 48 85 C0 0F 84 1F FB FF H..$....H.......
0000000000443A40 FF 31 D2 83 BC 24 88 00 00 00 FF BB 01 00 00 00 .1...$..........
0000000000443A50 0F 85 02 FB FF FF 48 8B 50 10 48 3B 50 18 0F 83 ......H.P.H;P...
0000000000443A60 FD 03 00 00 0F B6 02 89 84 24 88 00 00 00 31 D2 .........$....1.
0000000000443A70 E9 E3 FA FF FF 48 8B 4C 24 60 E8 D1 75 FE FF 49 .....H.L$`..u..I
0000000000443A80 8B 56 30 0F B6 C0 F6 04 42 20 0F 84 79 FD FF FF .V0.....B ..y...
0000000000443A90 48 8B 8C 24 90 00 00 00 48 85 C9 0F 84 64 FA FF H..$....H....d..
0000000000443AA0 FF E8 EA E9 01 00 C7 84 24 98 00 00 00 FF FF FF ........$.......
0000000000443AB0 FF BF 01 00 00 00 E9 4F FA FF FF 0F 1F 44 00 00 .......O.....D..
0000000000443AC0 48 8B 41 10 48 3B 41 18 0F 83 42 03 00 00 0F B6 H.A.H;A...B.....
0000000000443AD0 00 49 8B 56 30 89 84 24 98 00 00 00 0F B6 C0 F6 .I.V0..$........
0000000000443AE0 04 42 20 0F 84 77 FA FF FF 48 8B 8C 24 90 00 00 .B ..w...H..$...
0000000000443AF0 00 48 85 C9 0F 84 36 FF FF FF 48 8B 41 10 48 3B .H....6...H.A.H;
0000000000443B00 41 18 0F 82 08 FF FF FF 48 8B 01 FF 50 50 48 8B A.......H...PPH.
0000000000443B10 8C 24 90 00 00 00 E9 FD FE FF FF 0F 1F 44 00 00 .$...........D..
0000000000443B20 48 8B 01 FF 50 48 83 F8 FF 0F 85 E4 00 00 00 48 H...PH.........H
0000000000443B30 C7 84 24 90 00 00 00 00 00 00 00 48 8B 8C 24 80 ..$........H..$.
0000000000443B40 00 00 00 48 85 C9 74 38 31 C0 83 BC 24 88 00 00 ...H..t81...$...
0000000000443B50 00 FF BF 01 00 00 00 0F 85 79 FC FF FF 48 8B 41 .........y...H.A
0000000000443B60 10 48 3B 41 18 0F 83 F5 03 00 00 0F B6 00 89 84 .H;A............
0000000000443B70 24 88 00 00 00 31 C0 40 38 C7 0F 85 5F FC FF FF $....1.@8..._...
0000000000443B80 4C 39 EB 0F 85 75 01 00 00 E9 5A FC FF FF 66 90 L9...u....Z...f.
0000000000443B90 48 8B 41 10 48 3B 41 18 0F 83 47 03 00 00 0F B6 H.A.H;A...G.....
0000000000443BA0 00 48 8B 8C 24 80 00 00 00 89 84 24 98 00 00 00 .H..$......$....
0000000000443BB0 48 85 C9 0F 85 04 FA FF FF 48 8B 8C 24 90 00 00 H........H..$...
0000000000443BC0 00 48 85 C9 0F 85 1E FA FF FF BA FF FF FF FF 89 .H..............
0000000000443BD0 D3 E9 27 FA FF FF 66 2E 0F 1F 84 00 00 00 00 00 ..'...f.........
0000000000443BE0 48 8B 41 10 48 3B 41 18 0F 83 17 03 00 00 0F B6 H.A.H;A.........
0000000000443BF0 00 89 84 24 98 00 00 00 89 C3 0F BE D0 E9 FB F9 ...$............
0000000000443C00 FF FF 48 8B 41 10 48 3B 41 18 0F 83 10 FF FF FF ..H.A.H;A.......
0000000000443C10 0F B6 00 89 84 24 98 00 00 00 E9 98 FB FF FF 90 .....$..........
0000000000443C20 3A 5D 21 75 2B 80 7C 24 75 00 75 24 44 8B 45 58 :]!u+.|$u.u$D.EX
0000000000443C30 45 85 C0 0F 8E BB FA FF FF 89 74 24 70 C6 44 24 E.........t$p.D$
0000000000443C40 75 01 31 F6 E9 2F FA FF FF 0F 1F 80 00 00 00 00 u.1../..........
0000000000443C50 80 7D 20 00 0F 84 9A FA FF FF 3A 5D 22 0F 85 91 .} .......:]"...
0000000000443C60 FA FF FF 80 7C 24 75 00 0F 85 86 FA FF FF 85 F6 ....|$u.........
0000000000443C70 0F 84 71 03 00 00 48 8B 84 24 C0 00 00 00 48 8B ..q...H..$....H.
0000000000443C80 50 E8 48 8D 5A 01 48 3B 58 F0 77 07 8B 48 F8 85 P.H.Z.H;X.w..H..
0000000000443C90 C9 7E 17 48 89 DA 4C 89 E9 E8 42 DF 00 00 48 8B .~.H..L...B...H.
0000000000443CA0 84 24 C0 00 00 00 48 8B 50 E8 40 88 34 10 48 8B .$....H.P.@.4.H.
0000000000443CB0 84 24 C0 00 00 00 31 F6 C7 40 F8 00 00 00 00 48 .$....1..@.....H
0000000000443CC0 89 58 E8 C6 04 18 00 E9 AC F9 FF FF 0F 1F 40 00 .X............@.
0000000000443CD0 48 8B 8C 24 90 00 00 00 48 85 C9 0F 84 63 02 00 H..$....H....c..
0000000000443CE0 00 8B 84 24 98 00 00 00 83 F8 FF 0F 84 C0 00 00 ...$............
0000000000443CF0 00 48 8B 55 28 38 04 1A 0F 84 E5 00 00 00 48 85 .H.U(8........H.
0000000000443D00 DB 75 12 48 8B 84 24 50 01 00 00 F6 40 19 02 0F .u.H..$P....@...
0000000000443D10 84 D3 FA FF FF                                  .....          

l0000000000443D15:
	lea	r12,[rsp+80h]
	lea	rdi,[rsp+90h]

l0000000000443D25:
	mov	rax,[rsp+158h]
	or	dword ptr [rax],4h

l0000000000443D30:
	mov	rdx,r12
	mov	rcx,rdi
	call	42AF60h
	test	al,al
	jz	443D4Ah

l0000000000443D3F:
	mov	rax,[rsp+158h]
	or	dword ptr [rax],2h

l0000000000443D4A:
	mov	rax,[rsp+90h]
	mov	rsi,[rsp+130h]
	mov	rdx,[rsp+98h]
	mov	[rsi],rax
	mov	rax,[rsp+0D0h]
	mov	[rsi+8h],rdx
	mov	rdx,[rsp+78h]
	lea	rcx,[rax-18h]
	call	450A60h
	mov	rax,[rsp+0C0h]
	mov	rdx,[rsp+48h]
	lea	rcx,[rax-18h]
	call	450A60h
	mov	rax,[rsp+130h]
	add	rsp,+0E8h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret
0000000000443DB1    48 8B 41 10 48 3B 41 18 0F 83 6A 01 00 00 0F  H.A.H;A...j....
0000000000443DC0 B6 00 48 8B 55 28 89 84 24 98 00 00 00 38 04 1A ..H.U(..$....8..
0000000000443DD0 0F 85 28 FF FF FF 48 8B 8C 24 90 00 00 00 48 85 ..(...H..$....H.
0000000000443DE0 C9 74 21 48 8B 41 10 48 3B 41 18 0F 83 B2 00 00 .t!H.A.H;A......
0000000000443DF0 00 48 83 C0 01 48 89 41 10 C7 84 24 98 00 00 00 .H...H.A...$....
0000000000443E00 FF FF FF FF 48 83 C3 01 E9 93 F9 FF FF 0F 1F 00 ....H...........
0000000000443E10 48 8B 01 FF 50 48 83 F8 FF 0F 85 B2 FC FF FF 48 H...PH.........H
0000000000443E20 C7 84 24 90 00 00 00 00 00 00 00 49 8B 46 30 F6 ..$........I.F0.
0000000000443E30 80 FE 01 00 00 20 0F 84 24 F7 FF FF E9 D3 F6 FF ..... ..$.......
0000000000443E40 FF 48 8B 01 FF 50 48 83 F8 FF 0F 85 65 FB FF FF .H...PH.....e...
0000000000443E50 48 C7 84 24 90 00 00 00 00 00 00 00 E9 CF FB FF H..$............
0000000000443E60 FF 48 8B 10 48 89 C1 FF 52 48 83 F8 FF 0F 85 F4 .H..H...RH......
0000000000443E70 FB FF FF 48 C7 84 24 80 00 00 00 00 00 00 00 BA ...H..$.........
0000000000443E80 01 00 00 00 E9 CF F6 FF FF 0F 1F 80 00 00 00 00 ................
0000000000443E90 48 8B 01 FF 50 50 48 8B 8C 24 90 00 00 00 E9 F8 H...PPH..$......
0000000000443EA0 F7 FF FF 48 8B 01 FF 50 50 48 8B 8C 24 90 00 00 ...H...PPH..$...
0000000000443EB0 00 E9 43 FF FF FF 66 2E 0F 1F 84 00 00 00 00 00 ..C...f.........
0000000000443EC0 48 8B 01 FF 50 48 83 F8 FF 0F 85 14 F8 FF FF 48 H...PH.........H
0000000000443ED0 C7 84 24 80 00 00 00 00 00 00 00 B8 01 00 00 00 ..$.............
0000000000443EE0 E9 EA F6 FF FF 48 8B 01 FF 50 48 83 F8 FF 0F 85 .....H...PH.....
0000000000443EF0 AD FC FF FF 48 C7 84 24 90 00 00 00 00 00 00 00 ....H..$........
0000000000443F00 E9 AB F7 FF FF 48 8B 01 FF 50 48 83 F8 FF 0F 85 .....H...PH.....
0000000000443F10 DD FC FF FF 48 C7 84 24 90 00 00 00 00 00 00 00 ....H..$........
0000000000443F20 89 C2 89 C3 E9 D4 F6 FF FF 48 8B 01 FF 50 48 83 .........H...PH.
0000000000443F30 F8 FF 0F 85 8A FE FF FF 48 C7 84 24 90 00 00 00 ........H..$....
0000000000443F40 00 00 00 00 48 8B 45 28 80 3C 18 FF 0F 85 AC FD ....H.E(.<......
0000000000443F50 FF FF 48 8B 8C 24 90 00 00 00 E9 A5 FE FF FF 90 ..H..$..........
0000000000443F60 48 8B 01 FF 50 48 83 F8 FF 0F 85 FF FB FF FF 48 H...PH.........H
0000000000443F70 C7 84 24 80 00 00 00 00 00 00 00 B8 01 00 00 00 ..$.............
0000000000443F80 E9 51 F8 FF FF 48 8B 54 24 68 48 8B 4C 24 60 E8 .Q...H.T$hH.L$`.
0000000000443F90 CC 6F FE FF 84 C0 74 56 48 83 7D 50 00 75 1A 48 .o....tVH.}P.u.H
0000000000443FA0 83 7D 40 00 0F 84 7D F7 FF FF BF 01 00 00 00 C6 .}@...}.........
0000000000443FB0 44 24 77 01 E9 B0 F5 FF FF 48 8B 54 24 68 48 8B D$w......H.T$hH.
0000000000443FC0 4C 24 60 E8 98 6F FE FF 84 C0 0F 84 03 01 00 00 L$`..o..........
0000000000443FD0 48 83 7D 40 00 0F 84 4C F7 FF FF 48 83 7D 50 00 H.}@...L...H.}P.
0000000000443FE0 74 C8 E9 40 F7 FF FF 31 FF E9 0B F7 FF FF 48 8B t..@...1......H.
0000000000443FF0 4C 24 60 E8 58 70 FE FF 48 8B 55 38 38 02 75 98 L$`.Xp..H.U88.u.
0000000000444000 48 8B 8C 24 90 00 00 00 48 8B 45 40 48 85 C9 48 H..$....H.E@H..H
0000000000444010 89 44 24 50 0F 84 CE F7 FF FF E8 71 E4 01 00 C7 .D$P.......q....
0000000000444020 84 24 98 00 00 00 FF FF FF FF BF 01 00 00 00 E9 .$..............
0000000000444030 35 F5 FF FF 80 7C 24 76 00 0F 85 51 F7 FF FF 80 5....|$v...Q....
0000000000444040 BC 24 B0 00 00 00 03 0F 84 43 F7 FF FF 80 BC 24 .$.......C.....$
0000000000444050 B2 00 00 00 01 0F 85 1C F5 FF FF E9 30 F7 FF FF ............0...

l0000000000444060:
	test	dil,dil
	jnz	443876h

l0000000000444069:
	jmp	443D15h

l000000000044406E:
	cmp	[rbp+58h],esi
	jnz	443D15h

l0000000000444077:
	jmp	44397Dh

l000000000044407C:
	mov	r13,[rbp+48h]
	jmp	443837h

l0000000000444085:
	mov	rcx,rdi
	call	42B050h
	cmp	[r13+rbx+0h],al
	jnz	44386Bh

l0000000000444098:
	mov	rcx,[rsp+90h]
	test	rcx,rcx
	jz	4440C2h

l00000000004440A5:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	4440CBh

l00000000004440AF:
	add	rax,1h
	mov	[rcx+10h],rax

l00000000004440B7:
	mov	dword ptr [rsp+98h],0FFFFFFFFh

l00000000004440C2:
	add	rbx,1h
	jmp	443850h

l00000000004440CB:
	mov	rax,[rcx]
	call	qword ptr [rax+50h]
	jmp	4440B7h
00000000004440D3          48 8B 4C 24 60 E8 73 6F FE FF 48 8B 55    H.L$`.so..H.U
00000000004440E0 48 38 02 0F 85 E7 FE FF FF 48 8B 8C 24 90 00 00 H8.......H..$...
00000000004440F0 00 48 8B 45 50 48 85 C9 48 89 44 24 50 0F 84 A7 .H.EPH..H.D$P...
0000000000444100 FE FF FF E8 88 E3 01 00 C7 84 24 98 00 00 00 FF ..........$.....
0000000000444110 FF FF FF BF 01 00 00 00 C6 44 24 77 01 E9 47 F4 .........D$w..G.
0000000000444120 FF FF                                           ..             

l0000000000444122:
	mov	rax,[rsp+0D0h]
	mov	rcx,[rsp+48h]
	xor	edx,edx
	mov	r8,[rax-18h]
	sub	r8,1h
	call	450D50h
	jmp	4438B5h

l0000000000444143:
	cmp	byte ptr [rax],30h
	jnz	4438F7h

l000000000044414C:
	mov	rax,[rsp+0C0h]
	cmp	qword ptr [rax-18h],0h
	jz	443972h

l000000000044415F:
	jmp	443932h
0000000000444164             48 89 C3 48 8B 84 24 D0 00 00 00 48     H..H..$....H
0000000000444170 8B 54 24 78 48 8D 48 E8 E8 E3 C8 00 00 48 8B 84 .T$xH.H......H..
0000000000444180 24 C0 00 00 00 48 8B 54 24 48 48 8D 48 E8 E8 CD $....H.T$HH.H...
0000000000444190 C8 00 00 48 89 D9 E8 15 D4 FC FF 48 89 C3 EB DD ...H.......H....

;; fn00000000004441A0: 00000000004441A0
fn00000000004441A0 proc
	push	rbx
	sub	rsp,60h
	mov	r10,[r9+8h]
	mov	r9,[r9]
	mov	rbx,rcx
	mov	rcx,[rsp+0A8h]
	mov	rax,[rdx]
	movdqu	xmm1,[r8]
	lea	r8,[rsp+50h]
	mov	[rsp+40h],r9
	lea	r9,[rsp+40h]
	mov	[rsp+48h],r10
	mov	[rsp+38h],rcx
	mov	rcx,[rsp+0A0h]
	movaps	[rsp+50h],xmm1
	mov	[rsp+30h],rcx
	mov	rcx,[rsp+98h]
	mov	[rsp+28h],rcx
	movzx	ecx,byte ptr [rsp+90h]
	mov	[rsp+20h],ecx
	mov	rcx,rbx
	call	qword ptr [rax+18h]
	mov	rax,rbx
	add	rsp,60h
	pop	rbx
	ret
0000000000444212       90 90 90 90 90 90 90 90 90 90 90 90 90 90   ..............

;; fn0000000000444220: 0000000000444220
fn0000000000444220 proc
	push	rbx
	sub	rsp,60h
	mov	r10,[r9+8h]
	mov	r9,[r9]
	mov	rbx,rcx
	mov	rcx,[rsp+0A8h]
	mov	rax,[rdx]
	movdqu	xmm1,[r8]
	lea	r8,[rsp+50h]
	mov	[rsp+40h],r9
	lea	r9,[rsp+40h]
	mov	[rsp+48h],r10
	mov	[rsp+38h],rcx
	mov	rcx,[rsp+0A0h]
	movaps	[rsp+50h],xmm1
	mov	[rsp+30h],rcx
	mov	rcx,[rsp+98h]
	mov	[rsp+28h],rcx
	movzx	ecx,byte ptr [rsp+90h]
	mov	[rsp+20h],ecx
	mov	rcx,rbx
	call	qword ptr [rax+10h]
	mov	rax,rbx
	add	rsp,60h
	pop	rbx
	ret
0000000000444292       90 90 90 90 90 90 90 90 90 90 90 90 90 90   ..............

;; fn00000000004442A0: 00000000004442A0
fn00000000004442A0 proc
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,+0A8h
	movaps	[rsp+90h],xmm7
	mov	rbx,rcx
	lea	r12,[rsp+7Fh]
	mov	rdi,rdx
	mov	rsi,[rsp+118h]
	mov	r15,[r8]
	movdqu	xmm7,[r9]
	mov	r14,[r8+8h]
	mov	ebp,[rsp+110h]
	lea	rcx,[rsi+0D0h]
	call	472FC0h
	xor	edx,edx
	xor	ecx,ecx
	mov	r8,r12
	mov	r13,rax
	call	4505D0h
	mov	[rsp+80h],rax
	lea	rax,[rsp+80h]
	test	bpl,bpl
	lea	rcx,[rsp+60h]
	mov	[rsp+50h],r15
	mov	[rsp+58h],r14
	mov	[rsp+30h],rax
	mov	rax,[rsp+120h]
	lea	r9,[rsp+40h]
	movaps	[rsp+40h],xmm7
	mov	[rsp+20h],rsi
	lea	r8,[rsp+50h]
	mov	rdx,rdi
	mov	[rsp+28h],rax
	jz	444440h

l000000000044434D:
	call	443380h

l0000000000444352:
	mov	rdx,[rsp+68h]
	mov	rax,[rsp+60h]
	mov	r9,[rsp+80h]
	mov	[rsp+68h],rdx
	mov	esi,[rsp+68h]
	mov	rdi,rax
	mov	[rsp+60h],rax
	mov	rax,0FFFFFFFF00000000h
	and	r14,rax
	or	rsi,r14
	mov	r14,[r9-18h]
	test	r14,r14
	jz	444406h

l000000000044438E:
	mov	rcx,[rsp+128h]
	xor	r8d,r8d
	mov	rdx,r14
	call	4516E0h
	mov	rax,[rsp+128h]
	mov	r15,[rax]
	mov	edx,[r15-8h]
	test	edx,edx
	js	4443C7h

l00000000004443B4:
	mov	rcx,rax
	call	4505A0h
	mov	rax,[rsp+128h]
	mov	r15,[rax]

l00000000004443C7:
	movzx	eax,byte ptr [r13+38h]
	mov	rbp,[rsp+80h]
	cmp	al,1h
	jz	4443F0h

l00000000004443D8:
	test	al,al
	jz	444450h

l00000000004443DC:
	mov	rax,[r13+0h]
	lea	rdx,[000000000042B5D0]                                 ; [rip+FFFE71E9]
	mov	rax,[rax+38h]
	cmp	rax,rdx
	jnz	444460h

l00000000004443F0:
	mov	r8,r14
	mov	rdx,rbp
	mov	rcx,r15
	call	41BCC0h
	mov	r9,[rsp+80h]

l0000000000444406:
	mov	[rbx],rdi
	mov	[rbx+8h],rsi
	mov	eax,0FFFFFFFFh
	lock
	xadd	[r9-8h],eax
	test	eax,eax
	jle	444480h

l000000000044441C:
	movaps	xmm7,[rsp+90h]
	mov	rax,rbx
	add	rsp,+0A8h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret
000000000044443B                                  0F 1F 44 00 00            ..D..

l0000000000444440:
	call	442560h
	jmp	444352h
000000000044444A                               66 0F 1F 44 00 00           f..D..

l0000000000444450:
	mov	rcx,r13
	call	42B320h
	jmp	4443DCh
000000000044445A                               66 0F 1F 44 00 00           f..D..

l0000000000444460:
	mov	r9,r15
	lea	r8,[rbp+r14+0h]
	mov	rdx,rbp
	mov	rcx,r13
	call	rax
	mov	r9,[rsp+80h]
	jmp	444406h
000000000044447A                               66 0F 1F 44 00 00           f..D..

l0000000000444480:
	lea	rcx,[r9-18h]
	mov	rdx,r12
	call	450A50h
	jmp	44441Ch
000000000044448E                                           48 89               H.
0000000000444490 C3 48 8B 84 24 80 00 00 00 4C 89 E2 48 8D 48 E8 .H..$....L..H.H.
00000000004444A0 E8 BB C5 00 00 48 89 D9 E8 03 D1 FC FF 90 90 90 .....H..........

;; fn00000000004444B0: 00000000004444B0
fn00000000004444B0 proc
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,+88h
	mov	r15,[r8]
	mov	rsi,[r8+8h]
	lea	rbp,[rsp+78h]
	mov	rdi,rdx
	mov	rbx,rcx
	xor	edx,edx
	xor	ecx,ecx
	mov	r13,[r9]
	mov	r8,rbp
	mov	r14,[r9+8h]
	mov	r12d,[rsp+0F0h]
	call	4505D0h
	mov	[rsp+70h],rax
	lea	rax,[rsp+70h]
	lea	rcx,[rsp+60h]
	test	r12b,r12b
	mov	[rsp+50h],r15
	mov	[rsp+58h],rsi
	mov	[rsp+30h],rax
	mov	rax,[rsp+100h]
	lea	r9,[rsp+40h]
	mov	[rsp+40h],r13
	mov	[rsp+48h],r14
	lea	r8,[rsp+50h]
	mov	rdx,rdi
	mov	[rsp+28h],rax
	mov	rax,[rsp+0F8h]
	mov	[rsp+20h],rax
	jz	4445D1h

l0000000000444548:
	call	443380h

l000000000044454D:
	mov	rax,[rsp+60h]
	mov	rdx,[rsp+68h]
	mov	rdi,rax
	mov	[rsp+68h],rdx
	mov	[rsp+60h],rax
	mov	eax,[rsp+68h]
	mov	rdx,0FFFFFFFF00000000h
	and	rsi,rdx
	or	rsi,rax
	call	46AC50h
	mov	r8,[rsp+100h]
	mov	rdx,[rsp+108h]
	mov	r9,rbp
	mov	rcx,[rsp+70h]
	mov	[rsp+78h],rax
	call	46FBE0h
	mov	r10,[rsp+70h]
	mov	[rbx],rdi
	mov	eax,0FFFFFFFFh
	mov	[rbx+8h],rsi
	lock
	xadd	[r10-8h],eax
	test	eax,eax
	jle	4445E0h

l00000000004445BA:
	mov	rax,rbx
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

l00000000004445D1:
	call	442560h
	jmp	44454Dh
00000000004445DB                                  0F 1F 44 00 00            ..D..

l00000000004445E0:
	lea	rcx,[r10-18h]
	mov	rdx,rbp
	call	450A50h
	jmp	4445BAh
00000000004445EE                                           48 89               H.
00000000004445F0 C3 48 8B 44 24 70 48 89 EA 48 8D 48 E8 E8 5E C4 .H.D$pH..H.H..^.
0000000000444600 00 00 48 89 D9 E8 A6 CF FC FF 90 90 90 90 90 90 ..H.............

;; fn0000000000444610: 0000000000444610
;;   Called from:
;;     00000000004466E1 (in fn0000000000446570)
;;     0000000000446840 (in fn0000000000446720)
fn0000000000444610 proc
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,+0F8h
	mov	rax,[r8]
	mov	rdx,[r8+8h]
	mov	[rsp+140h],rcx
	mov	[rsp+0A0h],rax
	mov	rax,[r9]
	mov	[rsp+0A8h],rdx
	mov	rdx,[r9+8h]
	mov	[rsp+90h],rax
	mov	rax,[rsp+160h]
	mov	[rsp+98h],rdx
	lea	rbx,[rax+0D0h]
	mov	rcx,rbx
	call	473020h
	lea	rcx,[rsp+0BEh]
	mov	rdx,rbx
	mov	r13,rax
	call	42A7C0h
	mov	r12,rax
	lea	rax,[rax+64h]
	mov	byte ptr [rsp+86h],0h
	cmp	qword ptr [r12+40h],0h
	mov	[rsp+58h],rax
	jz	4446ADh

l000000000044469F:
	cmp	qword ptr [r12+50h],0h
	setnz	byte ptr [rsp+86h]

l00000000004446AD:
	lea	rax,[rsp+0E0h]
	xor	edx,edx
	xor	ecx,ecx
	mov	r8,rax
	mov	[rsp+48h],rax
	call	4505D0h
	cmp	byte ptr [r12+20h],0h
	mov	[rsp+0D0h],rax
	jz	4446E8h

l00000000004446D6:
	lea	rcx,[rsp+0D0h]
	mov	edx,20h
	call	451BE0h

l00000000004446E8:
	lea	rax,[rsp+0BFh]
	xor	edx,edx
	xor	ecx,ecx
	mov	r8,rax
	mov	[rsp+88h],rax
	call	4505D0h
	mov	rcx,[rsp+48h]
	mov	edx,20h
	mov	[rsp+0E0h],rax
	call	451BE0h
	lea	rax,[r12+66h]
	lea	rbx,[r12+7Ah]
	xor	r14d,r14d
	xor	r15d,r15d
	xor	edi,edi
	mov	dword ptr [rsp+80h],0h
	mov	[rsp+40h],rax
	mov	eax,[r12+60h]
	mov	qword ptr [rsp+50h],+0h
	mov	byte ptr [rsp+85h],0h
	mov	[rsp+0C0h],eax
	lea	rax,[rsp+0C0h]
	mov	[rsp+60h],rax
	lea	rax,[rsp+90h]
	mov	[rsp+78h],rax
	lea	rax,[rsp+0A0h]
	mov	[rsp+70h],rax
	movzx	eax,byte ptr [rsp+86h]
	xor	eax,1h
	mov	[rsp+87h],al
	lea	rax,[rsp+0D0h]
	mov	[rsp+68h],rax

l00000000004447A0:
	mov	rax,[rsp+60h]
	cmp	byte ptr [rax+r14],4h
	ja	444C44h

l00000000004447B0:
	movzx	edx,byte ptr [rax+r14]
	lea	rax,[000000000048DCDC]                                 ; [rip+00049520]
	movsxd	rdx,dword ptr [rax+rdx*4]
	add	rax,rdx
	jmp	rax
00000000004447C5                BD 01 00 00 00 49 83 FE 03 0F 84      .....I.....
00000000004447D0 ED 01 00 00 48 8B 8C 24 A0 00 00 00 48 85 C9 0F ....H..$....H...
00000000004447E0 84 EB 04 00 00 44 0F B7 84 24 A8 00 00 00 66 41 .....D...$....fA
00000000004447F0 83 F8 FF 0F 84 E8 06 00 00 48 8B 8C 24 90 00 00 .........H..$...
0000000000444800 00 31 F6 48 85 C9 0F 84 64 05 00 00 31 C0 66 83 .1.H....d...1.f.
0000000000444810 BC 24 98 00 00 00 FF 0F 84 DA 04 00 00 0F 1F 00 .$..............
0000000000444820 40 38 C6 0F 85 FC 04 00 00 40 84 ED 0F 84 8F 01 @8.......@......
0000000000444830 00 00                                           ..             

l0000000000444832:
	lea	eax,[r14+1h]
	cmp	eax,3h
	jg	4449C1h

l000000000044483F:
	add	r14,1h
	jmp	4447A0h
0000000000444848                         48 8B 8C 24 A0 00 00 00         H..$....
0000000000444850 48 85 C9 0F 84 F2 00 00 00 0F 1F 80 00 00 00 00 H...............
0000000000444860 0F B7 84 24 A8 00 00 00 66 83 F8 FF 0F 84 EE 06 ...$....f.......
0000000000444870 00 00 48 8B 8C 24 90 00 00 00 31 F6 48 85 C9 74 ..H..$....1.H..t
0000000000444880 3D 31 C0 66 83 BC 24 98 00 00 00 FF 0F 84 DC 00 =1.f..$.........
0000000000444890 00 00 40 38 F0 0F 84 05 01 00 00 48 8B 8C 24 A0 ..@8.......H..$.
00000000004448A0 00 00 00 48 85 C9 0F 84 04 07 00 00 0F B7 84 24 ...H...........$
00000000004448B0 A8 00 00 00 66 83 F8 FF 0F 84 02 07 00 00 48 8B ....f.........H.
00000000004448C0 54 24 40 66 39 02 0F 84 24 07 00 00 48 83 C2 02 T$@f9...$...H...
00000000004448D0 48 39 DA 75 EE 66 41 39 44 24 22 0F 85 7F 07 00 H9.u.fA9D$".....
00000000004448E0 00 45 84 FF 0F 85 76 07 00 00 41 8B 74 24 58 85 .E....v...A.t$X.
00000000004448F0 F6 0F 8E A9 00 00 00 89 BC 24 80 00 00 00 41 BF .........$....A.
0000000000444900 01 00 00 00 31 FF 66 2E 0F 1F 84 00 00 00 00 00 ....1.f.........
0000000000444910 48 8B 8C 24 A0 00 00 00 48 85 C9 74 2E 48 8B 41 H..$....H..t.H.A
0000000000444920 10 48 3B 41 18 0F 83 05 09 00 00 48 83 C0 02 48 .H;A.......H...H
0000000000444930 89 41 10 41 BA FF FF FF FF 48 85 C9 66 44 89 94 .A.A.....H..fD..
0000000000444940 24 A8 00 00 00 0F 85 15 FF FF FF 48 8B 8C 24 90 $..........H..$.
0000000000444950 00 00 00 48 85 C9 74 48 31 C0 66 83 BC 24 98 00 ...H..tH1.f..$..
0000000000444960 00 00 FF BE 01 00 00 00 0F 85 24 FF FF FF 48 8B ..........$...H.
0000000000444970 41 10 48 3B 41 18 0F 83 32 09 00 00 0F B7 00 66 A.H;A...2......f
0000000000444980 83 F8 FF 0F 84 F8 07 00 00 66 89 84 24 98 00 00 .........f..$...
0000000000444990 00 31 C0 40 38 F0 0F 85 FF FE FF FF 0F 1F 40 00 .1.@8.........@.
00000000004449A0 BD 01 00 00 00 48 8B 84 24 E0 00 00 00 48 83 78 .....H..$....H.x
00000000004449B0 E8 00 0F 84 8A 04 00 00 40 84 ED 0F 85 71 FE FF ........@....q..
00000000004449C0 FF                                              .              

l00000000004449C1:
	cmp	qword ptr [rsp+50h],1h
	seta	al
	and	eax,ebp
	test	al,al
	jz	4453F3h

l00000000004449D4:
	cmp	byte ptr [rsp+85h],0h
	jnz	445411h

l00000000004449E2:
	mov	r13,[r12+38h]

l00000000004449E7:
	lea	rbp,[rsp+90h]
	lea	rsi,[rsp+0A0h]
	mov	ebx,1h
	nop	dword ptr [rax+0h]

l0000000000444A00:
	mov	rdx,rbp
	mov	rcx,rsi
	call	42B0C0h
	cmp	rbx,[rsp+50h]
	setc	dl
	cmp	al,dl
	jc	445420h

l0000000000444A1B:
	cmp	rbx,[rsp+50h]
	jnz	444E52h

l0000000000444A26:
	mov	rax,[rsp+0E0h]
	cmp	qword ptr [rax-18h],1h
	jbe	444A65h

l0000000000444A35:
	mov	rcx,[rsp+48h]
	xor	r8d,r8d
	mov	edx,30h
	call	428600h
	test	rax,rax
	jz	444A65h

l0000000000444A4C:
	cmp	rax,0FFh
	mov	r8,rax
	jz	4454EBh

l0000000000444A59:
	mov	rcx,[rsp+48h]
	xor	edx,edx
	call	450D50h

l0000000000444A65:
	cmp	byte ptr [rsp+85h],0h
	jz	444AD6h

l0000000000444A6F:
	mov	rax,[rsp+0E0h]
	mov	edx,[rax-8h]
	test	edx,edx
	js	4454CAh

l0000000000444A82:
	mov	rcx,[rsp+48h]
	call	4505A0h
	mov	rax,[rsp+0E0h]
	cmp	byte ptr [rax],30h
	jz	444AD6h

l0000000000444A99:
	mov	eax,[rax-8h]
	test	eax,eax
	js	444AAAh

l0000000000444AA0:
	mov	rcx,[rsp+48h]
	call	4505A0h

l0000000000444AAA:
	mov	rcx,[rsp+48h]
	mov	dword ptr [rsp+20h],2Dh
	mov	r9d,1h
	xor	r8d,r8d
	xor	edx,edx
	call	4508E0h
	mov	rax,[rsp+0E0h]
	mov	dword ptr [rax-8h],0FFFFFFFFh

l0000000000444AD6:
	mov	rax,[rsp+0D0h]
	cmp	qword ptr [rax-18h],0h
	jz	444B28h

l0000000000444AE5:
	movsx	eax,byte ptr [rsp+80h]
	lea	rbx,[rsp+0D0h]
	movsx	edx,dil
	test	r15b,r15b
	mov	rcx,rbx
	cmovnz	edx,eax

l0000000000444B02:
	call	451E10h
	mov	rdx,[r12+18h]
	mov	rcx,[r12+10h]
	mov	r8,rbx
	call	4708F0h
	test	al,al
	jnz	444B28h

l0000000000444B1D:
	mov	rax,[rsp+168h]
	or	dword ptr [rax],4h

l0000000000444B28:
	test	r15b,r15b
	jnz	445401h

l0000000000444B31:
	mov	rdx,[rsp+48h]
	mov	rcx,[rsp+170h]
	call	450C50h
	lea	rbp,[rsp+90h]
	lea	rsi,[rsp+0A0h]
	jmp	444E5Dh
0000000000444B58                         0F 1F 84 00 00 00 00 00         ........
0000000000444B60 49 83 7C 24 40 00 0F 85 79 07 00 00 49 83 7C 24 I.|$@...y...I.|$
0000000000444B70 50 00 0F 85 C4 07 00 00 0F B6 AC 24 87 00 00 00 P..........$....
0000000000444B80 E9 A4 FC FF FF 48 8B 84 24 60 01 00 00 F6 40 19 .....H..$`....@.
0000000000444B90 02 75 48 48 83 7C 24 50 01 77 40 45 85 F6 74 3B .uHH.|$P.w@E..t;
0000000000444BA0 41 83 FE 01 0F 84 1A 08 00 00 41 83 FE 02 BD 01 A.........A.....
0000000000444BB0 00 00 00 0F 85 79 FC FF FF 0F B6 84 24 C3 00 00 .....y......$...
0000000000444BC0 00 3C 04 74 16 80 BC 24 86 00 00 00 00 0F 84 6C .<.t...$.......l
0000000000444BD0 FC FF FF 3C 03 0F 85 64 FC FF FF 49 8B 44 24 30 ...<...d...I.D$0
0000000000444BE0 48 8B 8C 24 A0 00 00 00 31 F6 48 89 44 24 38 90 H..$....1.H.D$8.
0000000000444BF0 48 85 C9 0F 84 D5 01 00 00 66 83 BC 24 A8 00 00 H........f..$...
0000000000444C00 00 FF 0F 84 DB 04 00 00 48 8B 8C 24 90 00 00 00 ........H..$....
0000000000444C10 31 ED 48 85 C9 74 22 31 C0 66 83 BC 24 98 00 00 1.H..t"1.f..$...
0000000000444C20 00 FF 0F 84 C9 01 00 00 0F 1F 84 00 00 00 00 00 ................
0000000000444C30 40 38 E8 0F 84 E7 01 00 00 48 3B 74 24 38 0F 85 @8.......H;t$8..
0000000000444C40 CC 04 00 00                                     ....           

l0000000000444C44:
	mov	ebp,1h
	jmp	444832h
0000000000444C4E                                           48 8B               H.
0000000000444C50 54 24 78 48 8B 4C 24 70 E8 63 64 FE FF 84 C0 74 T$xH.L$p.cd....t
0000000000444C60 07 31 ED E9 62 FB FF FF 48 8B 4C 24 70 E8 3E 65 .1..b...H.L$p.>e
0000000000444C70 FE FF 4D 8B 4D 00 44 0F B7 C0 BA 20 00 00 00 4C ..M.M.D.... ...L
0000000000444C80 89 E9 41 FF 51 10 84 C0 74 D7 48 8B 8C 24 A0 00 ..A.Q...t.H..$..
0000000000444C90 00 00 48 85 C9 0F 84 2A FB FF FF E8 30 E1 01 00 ..H....*....0...
0000000000444CA0 41 B9 FF FF FF FF BD 01 00 00 00 66 44 89 8C 24 A..........fD..$
0000000000444CB0 A8 00 00 00 E9 11 FB FF FF 0F 1F 80 00 00 00 00 ................
0000000000444CC0 48 C7 84 24 A0 00 00 00 00 00 00 00 0F 1F 40 00 H..$..........@.
0000000000444CD0 48 8B 8C 24 90 00 00 00 48 85 C9 0F 84 48 FB FF H..$....H....H..
0000000000444CE0 FF 31 C0 66 83 BC 24 98 00 00 00 FF BE 01 00 00 .1.f..$.........
0000000000444CF0 00 0F 85 29 FB FF FF 48 8B 41 10 48 3B 41 18 0F ...)...H.A.H;A..
0000000000444D00 83 1B 05 00 00 0F B7 00 66 83 F8 FF 0F 84 2E 02 ........f.......
0000000000444D10 00 00 66 89 84 24 98 00 00 00 31 C0 40 38 C6 0F ..f..$....1.@8..
0000000000444D20 84 04 FB FF FF 48 8B 8C 24 A0 00 00 00 48 85 C9 .....H..$....H..
0000000000444D30 0F 84 FA 01 00 00 44 0F B7 84 24 A8 00 00 00 66 ......D...$....f
0000000000444D40 41 83 F8 FF 75 2A 48 8B 41 10 48 3B 41 18 0F 83 A...u*H.A.H;A...
0000000000444D50 86 05 00 00 0F B7 00 66 83 F8 FF 0F 84 6F 04 00 .......f.....o..
0000000000444D60 00 66 89 84 24 A8 00 00 00 44 0F B7 C0 0F 1F 00 .f..$....D......
0000000000444D70 49 8B 45 00 BA 20 00 00 00 4C 89 E9 FF 50 10 84 I.E.. ...L...P..
0000000000444D80 C0 0F 84 A2 FA FF FF 48 8B 8C 24 A0 00 00 00 48 .......H..$....H
0000000000444D90 85 C9 0F 84 38 FF FF FF 48 8B 41 10 48 3B 41 18 ....8...H.A.H;A.
0000000000444DA0 0F 83 83 05 00 00 48 83 C0 02 48 89 41 10 41 B8 ......H...H.A.A.
0000000000444DB0 FF FF FF FF 66 44 89 84 24 A8 00 00 00 E9 1A FA ....fD..$.......
0000000000444DC0 FF FF 48 C7 84 24 A0 00 00 00 00 00 00 00 48 8B ..H..$........H.
0000000000444DD0 8C 24 90 00 00 00 48 85 C9 74 45 31 C0 66 83 BC .$....H..tE1.f..
0000000000444DE0 24 98 00 00 00 FF BD 01 00 00 00 0F 85 3F FE FF $............?..
0000000000444DF0 FF 48 8B 41 10 48 3B 41 18 0F 83 C5 04 00 00 0F .H.A.H;A........
0000000000444E00 B7 00 66 83 F8 FF 0F 84 A5 03 00 00 66 89 84 24 ..f.........f..$
0000000000444E10 98 00 00 00 31 C0 40 38 E8 0F 85 1A FE FF FF 90 ....1.@8........
0000000000444E20 48 3B 74 24 38 0F 84 19 FE FF FF 48 85 F6 75 12 H;t$8......H..u.
0000000000444E30 48 8B 84 24 60 01 00 00 F6 40 19 02 0F 84 02 FE H..$`....@......
0000000000444E40 FF FF                                           ..             

l0000000000444E42:
	lea	rbp,[rsp+90h]
	lea	rsi,[rsp+0A0h]

l0000000000444E52:
	mov	rax,[rsp+168h]
	or	dword ptr [rax],4h

l0000000000444E5D:
	mov	rdx,rbp
	mov	rcx,rsi
	call	42B0C0h
	test	al,al
	jz	444E77h

l0000000000444E6C:
	mov	rax,[rsp+168h]
	or	dword ptr [rax],2h

l0000000000444E77:
	mov	rax,[rsp+0A0h]
	mov	rdi,[rsp+140h]
	mov	rdx,[rsp+0A8h]
	mov	[rdi],rax
	mov	rax,[rsp+0E0h]
	mov	[rdi+8h],rdx
	mov	rdx,[rsp+88h]
	lea	rcx,[rax-18h]
	call	450A60h
	mov	rax,[rsp+0D0h]
	mov	rdx,[rsp+48h]
	lea	rcx,[rax-18h]
	call	450A60h
	mov	rax,[rsp+140h]
	add	rsp,+0F8h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret
0000000000444EE1    48 8B 41 10 48 3B 41 18 0F 83 21 03 00 00 0F  H.A.H;A...!....
0000000000444EF0 B7 00 66 83 F8 FF 0F 84 C4 FD FF FF 48 8B 8C 24 ..f.........H..$
0000000000444F00 90 00 00 00 31 F6 66 89 84 24 A8 00 00 00 48 85 ....1.f..$....H.
0000000000444F10 C9 0F 85 F5 F8 FF FF 48 8B 8C 24 A0 00 00 00 48 .......H..$....H
0000000000444F20 85 C9 0F 85 0E FE FF FF 0F 1F 84 00 00 00 00 00 ................
0000000000444F30 41 B8 FF FF 00 00 E9 35 FE FF FF 0F 1F 44 00 00 A......5.....D..
0000000000444F40 48 C7 84 24 90 00 00 00 00 00 00 00 B8 01 00 00 H..$............
0000000000444F50 00 E9 CA F8 FF FF 66 2E 0F 1F 84 00 00 00 00 00 ......f.........
0000000000444F60 48 8B 41 10 48 3B 41 18 0F 83 35 03 00 00 0F B7 H.A.H;A...5.....
0000000000444F70 00 66 83 F8 FF 0F 84 F5 01 00 00 48 8B 8C 24 90 .f.........H..$.
0000000000444F80 00 00 00 31 F6 66 89 84 24 A8 00 00 00 48 85 C9 ...1.f..$....H..
0000000000444F90 0F 85 EB F8 FF FF 48 8B 8C 24 A0 00 00 00 48 85 ......H..$....H.
0000000000444FA0 C9 0F 85 05 F9 FF FF 66 0F 1F 84 00 00 00 00 00 .......f........
0000000000444FB0 B8 FF FF FF FF E9 04 F9 FF FF 66 0F 1F 44 00 00 ..........f..D..
0000000000444FC0 48 8B 41 10 48 3B 41 18 0F 83 EB 02 00 00 0F B7 H.A.H;A.........
0000000000444FD0 00 66 83 F8 FF 0F 84 C5 01 00 00 66 89 84 24 A8 .f.........f..$.
0000000000444FE0 00 00 00 E9 D6 F8 FF FF 0F 1F 84 00 00 00 00 00 ................
0000000000444FF0 48 8B 05 29 C7 04 00 48 2B 54 24 58 48 8B 00 48 H..)...H+T$XH..H
0000000000445000 D1 FA 0F B6 2C 10 48 8B 84 24 E0 00 00 00 48 8B ....,.H..$....H.
0000000000445010 50 E8 48 8D 72 01 48 3B 70 F0 77 07 8B 48 F8 85 P.H.r.H;p.w..H..
0000000000445020 C9 7E 19 48 8B 4C 24 48 48 89 F2 E8 B0 CB 00 00 .~.H.L$HH.......
0000000000445030 48 8B 84 24 E0 00 00 00 48 8B 50 E8 40 88 2C 10 H..$....H.P.@.,.
0000000000445040 48 8B 84 24 E0 00 00 00 83 C7 01 C7 40 F8 00 00 H..$........@...
0000000000445050 00 00 48 89 70 E8 C6 04 30 00 E9 B1 F8 FF FF 90 ..H.p...0.......
0000000000445060 41 80 7C 24 20 00 0F 84 34 F9 FF FF 66 41 39 44 A.|$ ...4...fA9D
0000000000445070 24 24 0F 85 28 F9 FF FF 45 84 FF 0F 85 1F F9 FF $$..(...E.......
0000000000445080 FF 85 FF 0F 84 E3 02 00 00 48 8B 84 24 D0 00 00 .........H..$...
0000000000445090 00 48 8B 50 E8 48 8D 72 01 48 3B 70 F0 77 09 44 .H.P.H.r.H;p.w.D
00000000004450A0 8B 58 F8 45 85 DB 7E 19 48 8B 4C 24 68 48 89 F2 .X.E..~.H.L$hH..
00000000004450B0 E8 2B CB 00 00 48 8B 84 24 D0 00 00 00 48 8B 50 .+...H..$....H.P
00000000004450C0 E8 40 88 3C 10 48 8B 84 24 D0 00 00 00 31 FF C7 .@.<.H..$....1..
00000000004450D0 40 F8 00 00 00 00 48 89 70 E8 C6 04 30 00 E9 2D @.....H.p...0..-
00000000004450E0 F8 FF FF 48 8B 41 10 48 3B 41 18 0F 83 DE 01 00 ...H.A.H;A......
00000000004450F0 00 0F B7 00 66 83 F8 FF 0F 84 C4 FC FF FF 66 89 ....f.........f.
0000000000445100 84 24 A8 00 00 00 E9 FD FA FF FF 0F 1F 44 00 00 .$...........D..
0000000000445110 48 8B 8C 24 A0 00 00 00 48 85 C9 0F 84 D2 00 00 H..$....H.......
0000000000445120 00 0F B7 84 24 A8 00 00 00 66 83 F8 FF 0F 84 10 ....$....f......
0000000000445130 01 00 00 49 8B 54 24 28 66 3B 04 72 0F 85 E9 FC ...I.T$(f;.r....
0000000000445140 FF FF 48 8B 41 10 48 3B 41 18 0F 83 40 01 00 00 ..H.A.H;A...@...
0000000000445150 48 83 C0 02 48 89 41 10 41 BA FF FF FF FF 66 44 H...H.A.A.....fD
0000000000445160 89 94 24 A8 00 00 00 48 83 C6 01 E9 80 FA FF FF ..$....H........
0000000000445170 48 C7 84 24 A0 00 00 00 00 00 00 00 E9 CA F7 FF H..$............
0000000000445180 FF 48 C7 84 24 90 00 00 00 00 00 00 00 B8 01 00 .H..$...........
0000000000445190 00 00 E9 FB F6 FF FF 66 0F 1F 84 00 00 00 00 00 .......f........
00000000004451A0 48 C7 84 24 A0 00 00 00 00 00 00 00 E9 0D F7 FF H..$............
00000000004451B0 FF 48 C7 84 24 90 00 00 00 00 00 00 00 B8 01 00 .H..$...........
00000000004451C0 00 00 E9 69 FA FF FF 66 0F 1F 84 00 00 00 00 00 ...i...f........
00000000004451D0 48 C7 84 24 A0 00 00 00 00 00 00 00 41 B8 FF FF H..$........A...
00000000004451E0 00 00 E9 89 FB FF FF 48 C7 84 24 A0 00 00 00 00 .......H..$.....
00000000004451F0 00 00 00 49 8B 44 24 28 66 83 3C 70 FF 0F 85 28 ...I.D$(f.<p...(
0000000000445200 FC FF FF 48 8B 8C 24 A0 00 00 00 E9 57 FF FF FF ...H..$.....W...
0000000000445210 48 8B 01 FF 50 48 E9 D7 FC FF FF 0F 1F 44 00 00 H...PH.......D..
0000000000445220 48 8B 01 FF 50 48 E9 DD FA FF FF 0F 1F 44 00 00 H...PH.......D..
0000000000445230 48 8B 01 FF 50 50 48 8B 8C 24 A0 00 00 00 E9 F0 H...PPH..$......
0000000000445240 F6 FF FF 48 8B 41 10 48 3B 41 18 0F 83 CD 00 00 ...H.A.H;A......
0000000000445250 00 0F B7 00 66 83 F8 FF 74 8D 49 8B 54 24 28 66 ....f...t.I.T$(f
0000000000445260 89 84 24 A8 00 00 00 66 39 04 72 0F 85 BA FB FF ..$....f9.r.....
0000000000445270 FF 48 8B 8C 24 A0 00 00 00 48 85 C9 0F 84 E5 FE .H..$....H......
0000000000445280 FF FF 48 8B 41 10 48 3B 41 18 0F 82 C0 FE FF FF ..H.A.H;A.......
0000000000445290 48 8B 01 FF 50 50 48 8B 8C 24 A0 00 00 00 E9 B5 H...PPH..$......
00000000004452A0 FE FF FF 48 8B 01 FF 50 48 E9 C3 FC FF FF 48 8B ...H...PH.....H.
00000000004452B0 01 FF 50 48 E9 C6 F6 FF FF 48 8B 01 FF 50 48 E9 ..PH.....H...PH.
00000000004452C0 0D FD FF FF 48 8B 01 FF 50 48 E9 33 FB FF FF 48 ....H...PH.3...H
00000000004452D0 8B 01 FF 50 48 E9 1A FE FF FF 48 8B 01 FF 50 48 ...PH.....H...PH
00000000004452E0 E9 72 FA FF FF 48 8B 54 24 78 48 8B 4C 24 70 E8 .r...H.T$xH.L$p.
00000000004452F0 CC 5D FE FF 84 C0 74 7B 49 83 7C 24 50 00 75 3C .]....t{I.|$P.u<
0000000000445300 49 83 7C 24 40 00 0F 84 6C F8 FF FF BD 01 00 00 I.|$@...l.......
0000000000445310 00 C6 84 24 85 00 00 00 01 E9 14 F5 FF FF 48 8B ...$..........H.
0000000000445320 01 FF 50 48 E9 2B FF FF FF 48 8B 01 FF 50 50 48 ..PH.+...H...PPH
0000000000445330 8B 8C 24 A0 00 00 00 E9 72 FA FF FF 48 8B 54 24 ..$.....r...H.T$
0000000000445340 78 48 8B 4C 24 70 E8 75 5D FE FF 84 C0 0F 84 1E xH.L$p.u].......
0000000000445350 01 00 00 49 83 7C 24 40 00 0F 84 19 F8 FF FF 49 ...I.|$@.......I
0000000000445360 83 7C 24 50 00 74 A5 E9 0C F8 FF FF 31 ED E9 32 .|$P.t......1..2
0000000000445370 F6 FF FF 48 8B 4C 24 70 E8 33 5E FE FF 49 8B 54 ...H.L$p.3^..I.T
0000000000445380 24 38 66 3B 02 0F 85 6D FF FF FF 48 8B 8C 24 A0 $8f;...m...H..$.
0000000000445390 00 00 00 49 8B 44 24 40 48 85 C9 48 89 44 24 50 ...I.D$@H..H.D$P
00000000004453A0 0F 84 9E F8 FF FF E8 25 DA 01 00 41 B9 FF FF FF .......%...A....
00000000004453B0 FF BD 01 00 00 00 66 44 89 8C 24 A8 00 00 00 E9 ......fD..$.....
00000000004453C0 6E F4 FF FF 80 BC 24 86 00 00 00 00 0F 85 09 F8 n.....$.........
00000000004453D0 FF FF 80 BC 24 C0 00 00 00 03 0F 84 FB F7 FF FF ....$...........
00000000004453E0 80 BC 24 C2 00 00 00 01 0F 85 51 F4 FF FF E9 E8 ..$.......Q.....
00000000004453F0 F7 FF FF                                        ...            

l00000000004453F3:
	test	bpl,bpl
	jnz	444A26h

l00000000004453FC:
	jmp	444E42h

l0000000000445401:
	cmp	[r12+58h],edi
	jnz	444E42h

l000000000044540C:
	jmp	444B31h

l0000000000445411:
	mov	r13,[r12+48h]
	jmp	4449E7h
000000000044541B                                  0F 1F 44 00 00            ..D..

l0000000000445420:
	mov	rcx,rsi
	call	42B1B0h
	cmp	ax,[r13+rbx*2+0h]
	jnz	444A1Bh

l0000000000445434:
	mov	rcx,[rsp+0A0h]
	test	rcx,rcx
	jz	445460h

l0000000000445441:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	445469h

l000000000044544B:
	add	rax,2h
	mov	[rcx+10h],rax

l0000000000445453:
	mov	ecx,0FFFFFFFFh
	mov	[rsp+0A8h],cx

l0000000000445460:
	add	rbx,1h
	jmp	444A00h

l0000000000445469:
	mov	rax,[rcx]
	call	qword ptr [rax+50h]
	jmp	445453h
0000000000445471    48 8B 4C 24 70 E8 35 5D FE FF 49 8B 54 24 48  H.L$p.5]..I.T$H
0000000000445480 66 3B 02 0F 85 CA FE FF FF 48 8B 8C 24 A0 00 00 f;.......H..$...
0000000000445490 00 49 8B 44 24 50 48 85 C9 48 89 44 24 50 0F 84 .I.D$PH..H.D$P..
00000000004454A0 68 FE FF FF E8 27 D9 01 00 41 B8 FF FF FF FF BD h....'...A......
00000000004454B0 01 00 00 00 C6 84 24 85 00 00 00 01 66 44 89 84 ......$.....fD..
00000000004454C0 24 A8 00 00 00 E9 68 F3 FF FF                   $.....h...     

l00000000004454CA:
	cmp	byte ptr [rax],30h
	jnz	444AAAh

l00000000004454D3:
	mov	rax,[rsp+0D0h]
	cmp	qword ptr [rax-18h],0h
	jz	444B28h

l00000000004454E6:
	jmp	444AE5h

l00000000004454EB:
	mov	rax,[rsp+0E0h]
	mov	r8,[rax-18h]
	sub	r8,1h
	jmp	444A59h
0000000000445500 48 89 C3 48 8B 84 24 D0 00 00 00 48 8B 54 24 48 H..H..$....H.T$H
0000000000445510 48 8D 48 E8 E8 47 B5 00 00 48 89 D9 E8 8F C0 FC H.H..G...H......
0000000000445520 FF 48 89 C3 48 8B 84 24 E0 00 00 00 48 8B 94 24 .H..H..$....H..$
0000000000445530 88 00 00 00 48 8D 48 E8 E8 23 B5 00 00 EB C4 90 ....H.H..#......

;; fn0000000000445540: 0000000000445540
;;   Called from:
;;     000000000044661D (in fn0000000000446570)
;;     00000000004467B8 (in fn0000000000446720)
fn0000000000445540 proc
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,+0F8h
	mov	rax,[r8]
	mov	rdx,[r8+8h]
	mov	[rsp+140h],rcx
	mov	[rsp+0A0h],rax
	mov	rax,[r9]
	mov	[rsp+0A8h],rdx
	mov	rdx,[r9+8h]
	mov	[rsp+90h],rax
	mov	rax,[rsp+160h]
	mov	[rsp+98h],rdx
	lea	rbx,[rax+0D0h]
	mov	rcx,rbx
	call	473020h
	lea	rcx,[rsp+0BEh]
	mov	rdx,rbx
	mov	r13,rax
	call	42A8F0h
	mov	r12,rax
	lea	rax,[rax+64h]
	mov	byte ptr [rsp+86h],0h
	cmp	qword ptr [r12+40h],0h
	mov	[rsp+58h],rax
	jz	4455DDh

l00000000004455CF:
	cmp	qword ptr [r12+50h],0h
	setnz	byte ptr [rsp+86h]

l00000000004455DD:
	lea	rax,[rsp+0E0h]
	xor	edx,edx
	xor	ecx,ecx
	mov	r8,rax
	mov	[rsp+48h],rax
	call	4505D0h
	cmp	byte ptr [r12+20h],0h
	mov	[rsp+0D0h],rax
	jz	445618h

l0000000000445606:
	lea	rcx,[rsp+0D0h]
	mov	edx,20h
	call	451BE0h

l0000000000445618:
	lea	rax,[rsp+0BFh]
	xor	edx,edx
	xor	ecx,ecx
	mov	r8,rax
	mov	[rsp+88h],rax
	call	4505D0h
	mov	rcx,[rsp+48h]
	mov	edx,20h
	mov	[rsp+0E0h],rax
	call	451BE0h
	lea	rax,[r12+66h]
	lea	rbx,[r12+7Ah]
	xor	r14d,r14d
	xor	r15d,r15d
	xor	edi,edi
	mov	dword ptr [rsp+80h],0h
	mov	[rsp+40h],rax
	mov	eax,[r12+60h]
	mov	qword ptr [rsp+50h],+0h
	mov	byte ptr [rsp+85h],0h
	mov	[rsp+0C0h],eax
	lea	rax,[rsp+0C0h]
	mov	[rsp+60h],rax
	lea	rax,[rsp+90h]
	mov	[rsp+78h],rax
	lea	rax,[rsp+0A0h]
	mov	[rsp+70h],rax
	movzx	eax,byte ptr [rsp+86h]
	xor	eax,1h
	mov	[rsp+87h],al
	lea	rax,[rsp+0D0h]
	mov	[rsp+68h],rax

l00000000004456D0:
	mov	rax,[rsp+60h]
	cmp	byte ptr [rax+r14],4h
	ja	445B74h

l00000000004456E0:
	movzx	edx,byte ptr [rax+r14]
	lea	rax,[000000000048DCF0]                                 ; [rip+00048604]
	movsxd	rdx,dword ptr [rax+rdx*4]
	add	rax,rdx
	jmp	rax
00000000004456F5                BD 01 00 00 00 49 83 FE 03 0F 84      .....I.....
0000000000445700 ED 01 00 00 48 8B 8C 24 A0 00 00 00 48 85 C9 0F ....H..$....H...
0000000000445710 84 EB 04 00 00 44 0F B7 84 24 A8 00 00 00 66 41 .....D...$....fA
0000000000445720 83 F8 FF 0F 84 E8 06 00 00 48 8B 8C 24 90 00 00 .........H..$...
0000000000445730 00 31 F6 48 85 C9 0F 84 64 05 00 00 31 C0 66 83 .1.H....d...1.f.
0000000000445740 BC 24 98 00 00 00 FF 0F 84 DA 04 00 00 0F 1F 00 .$..............
0000000000445750 40 38 C6 0F 85 FC 04 00 00 40 84 ED 0F 84 8F 01 @8.......@......
0000000000445760 00 00                                           ..             

l0000000000445762:
	lea	eax,[r14+1h]
	cmp	eax,3h
	jg	4458F1h

l000000000044576F:
	add	r14,1h
	jmp	4456D0h
0000000000445778                         48 8B 8C 24 A0 00 00 00         H..$....
0000000000445780 48 85 C9 0F 84 F2 00 00 00 0F 1F 80 00 00 00 00 H...............
0000000000445790 0F B7 84 24 A8 00 00 00 66 83 F8 FF 0F 84 EE 06 ...$....f.......
00000000004457A0 00 00 48 8B 8C 24 90 00 00 00 31 F6 48 85 C9 74 ..H..$....1.H..t
00000000004457B0 3D 31 C0 66 83 BC 24 98 00 00 00 FF 0F 84 DC 00 =1.f..$.........
00000000004457C0 00 00 40 38 F0 0F 84 05 01 00 00 48 8B 8C 24 A0 ..@8.......H..$.
00000000004457D0 00 00 00 48 85 C9 0F 84 04 07 00 00 0F B7 84 24 ...H...........$
00000000004457E0 A8 00 00 00 66 83 F8 FF 0F 84 02 07 00 00 48 8B ....f.........H.
00000000004457F0 54 24 40 66 39 02 0F 84 24 07 00 00 48 83 C2 02 T$@f9...$...H...
0000000000445800 48 39 DA 75 EE 66 41 39 44 24 22 0F 85 7F 07 00 H9.u.fA9D$".....
0000000000445810 00 45 84 FF 0F 85 76 07 00 00 41 8B 74 24 58 85 .E....v...A.t$X.
0000000000445820 F6 0F 8E A9 00 00 00 89 BC 24 80 00 00 00 41 BF .........$....A.
0000000000445830 01 00 00 00 31 FF 66 2E 0F 1F 84 00 00 00 00 00 ....1.f.........
0000000000445840 48 8B 8C 24 A0 00 00 00 48 85 C9 74 2E 48 8B 41 H..$....H..t.H.A
0000000000445850 10 48 3B 41 18 0F 83 05 09 00 00 48 83 C0 02 48 .H;A.......H...H
0000000000445860 89 41 10 41 BA FF FF FF FF 48 85 C9 66 44 89 94 .A.A.....H..fD..
0000000000445870 24 A8 00 00 00 0F 85 15 FF FF FF 48 8B 8C 24 90 $..........H..$.
0000000000445880 00 00 00 48 85 C9 74 48 31 C0 66 83 BC 24 98 00 ...H..tH1.f..$..
0000000000445890 00 00 FF BE 01 00 00 00 0F 85 24 FF FF FF 48 8B ..........$...H.
00000000004458A0 41 10 48 3B 41 18 0F 83 32 09 00 00 0F B7 00 66 A.H;A...2......f
00000000004458B0 83 F8 FF 0F 84 F8 07 00 00 66 89 84 24 98 00 00 .........f..$...
00000000004458C0 00 31 C0 40 38 F0 0F 85 FF FE FF FF 0F 1F 40 00 .1.@8.........@.
00000000004458D0 BD 01 00 00 00 48 8B 84 24 E0 00 00 00 48 83 78 .....H..$....H.x
00000000004458E0 E8 00 0F 84 8A 04 00 00 40 84 ED 0F 85 71 FE FF ........@....q..
00000000004458F0 FF                                              .              

l00000000004458F1:
	cmp	qword ptr [rsp+50h],1h
	seta	al
	and	eax,ebp
	test	al,al
	jz	446323h

l0000000000445904:
	cmp	byte ptr [rsp+85h],0h
	jnz	446341h

l0000000000445912:
	mov	r13,[r12+38h]

l0000000000445917:
	lea	rbp,[rsp+90h]
	lea	rsi,[rsp+0A0h]
	mov	ebx,1h
	nop	dword ptr [rax+0h]

l0000000000445930:
	mov	rdx,rbp
	mov	rcx,rsi
	call	42B0C0h
	cmp	rbx,[rsp+50h]
	setc	dl
	cmp	al,dl
	jc	446350h

l000000000044594B:
	cmp	rbx,[rsp+50h]
	jnz	445D82h

l0000000000445956:
	mov	rax,[rsp+0E0h]
	cmp	qword ptr [rax-18h],1h
	jbe	445995h

l0000000000445965:
	mov	rcx,[rsp+48h]
	xor	r8d,r8d
	mov	edx,30h
	call	428600h
	test	rax,rax
	jz	445995h

l000000000044597C:
	cmp	rax,0FFh
	mov	r8,rax
	jz	44641Bh

l0000000000445989:
	mov	rcx,[rsp+48h]
	xor	edx,edx
	call	450D50h

l0000000000445995:
	cmp	byte ptr [rsp+85h],0h
	jz	445A06h

l000000000044599F:
	mov	rax,[rsp+0E0h]
	mov	edx,[rax-8h]
	test	edx,edx
	js	4463FAh

l00000000004459B2:
	mov	rcx,[rsp+48h]
	call	4505A0h
	mov	rax,[rsp+0E0h]
	cmp	byte ptr [rax],30h
	jz	445A06h

l00000000004459C9:
	mov	eax,[rax-8h]
	test	eax,eax
	js	4459DAh

l00000000004459D0:
	mov	rcx,[rsp+48h]
	call	4505A0h

l00000000004459DA:
	mov	rcx,[rsp+48h]
	mov	dword ptr [rsp+20h],2Dh
	mov	r9d,1h
	xor	r8d,r8d
	xor	edx,edx
	call	4508E0h
	mov	rax,[rsp+0E0h]
	mov	dword ptr [rax-8h],0FFFFFFFFh

l0000000000445A06:
	mov	rax,[rsp+0D0h]
	cmp	qword ptr [rax-18h],0h
	jz	445A58h

l0000000000445A15:
	movsx	eax,byte ptr [rsp+80h]
	lea	rbx,[rsp+0D0h]
	movsx	edx,dil
	test	r15b,r15b
	mov	rcx,rbx
	cmovnz	edx,eax

l0000000000445A32:
	call	451E10h
	mov	rdx,[r12+18h]
	mov	rcx,[r12+10h]
	mov	r8,rbx
	call	4708F0h
	test	al,al
	jnz	445A58h

l0000000000445A4D:
	mov	rax,[rsp+168h]
	or	dword ptr [rax],4h

l0000000000445A58:
	test	r15b,r15b
	jnz	446331h

l0000000000445A61:
	mov	rdx,[rsp+48h]
	mov	rcx,[rsp+170h]
	call	450C50h
	lea	rbp,[rsp+90h]
	lea	rsi,[rsp+0A0h]
	jmp	445D8Dh
0000000000445A88                         0F 1F 84 00 00 00 00 00         ........
0000000000445A90 49 83 7C 24 40 00 0F 85 79 07 00 00 49 83 7C 24 I.|$@...y...I.|$
0000000000445AA0 50 00 0F 85 C4 07 00 00 0F B6 AC 24 87 00 00 00 P..........$....
0000000000445AB0 E9 A4 FC FF FF 48 8B 84 24 60 01 00 00 F6 40 19 .....H..$`....@.
0000000000445AC0 02 75 48 48 83 7C 24 50 01 77 40 45 85 F6 74 3B .uHH.|$P.w@E..t;
0000000000445AD0 41 83 FE 01 0F 84 1A 08 00 00 41 83 FE 02 BD 01 A.........A.....
0000000000445AE0 00 00 00 0F 85 79 FC FF FF 0F B6 84 24 C3 00 00 .....y......$...
0000000000445AF0 00 3C 04 74 16 80 BC 24 86 00 00 00 00 0F 84 6C .<.t...$.......l
0000000000445B00 FC FF FF 3C 03 0F 85 64 FC FF FF 49 8B 44 24 30 ...<...d...I.D$0
0000000000445B10 48 8B 8C 24 A0 00 00 00 31 F6 48 89 44 24 38 90 H..$....1.H.D$8.
0000000000445B20 48 85 C9 0F 84 D5 01 00 00 66 83 BC 24 A8 00 00 H........f..$...
0000000000445B30 00 FF 0F 84 DB 04 00 00 48 8B 8C 24 90 00 00 00 ........H..$....
0000000000445B40 31 ED 48 85 C9 74 22 31 C0 66 83 BC 24 98 00 00 1.H..t"1.f..$...
0000000000445B50 00 FF 0F 84 C9 01 00 00 0F 1F 84 00 00 00 00 00 ................
0000000000445B60 40 38 E8 0F 84 E7 01 00 00 48 3B 74 24 38 0F 85 @8.......H;t$8..
0000000000445B70 CC 04 00 00                                     ....           

l0000000000445B74:
	mov	ebp,1h
	jmp	445762h
0000000000445B7E                                           48 8B               H.
0000000000445B80 54 24 78 48 8B 4C 24 70 E8 33 55 FE FF 84 C0 74 T$xH.L$p.3U....t
0000000000445B90 07 31 ED E9 62 FB FF FF 48 8B 4C 24 70 E8 0E 56 .1..b...H.L$p..V
0000000000445BA0 FE FF 4D 8B 4D 00 44 0F B7 C0 BA 20 00 00 00 4C ..M.M.D.... ...L
0000000000445BB0 89 E9 41 FF 51 10 84 C0 74 D7 48 8B 8C 24 A0 00 ..A.Q...t.H..$..
0000000000445BC0 00 00 48 85 C9 0F 84 2A FB FF FF E8 00 D2 01 00 ..H....*........
0000000000445BD0 41 B9 FF FF FF FF BD 01 00 00 00 66 44 89 8C 24 A..........fD..$
0000000000445BE0 A8 00 00 00 E9 11 FB FF FF 0F 1F 80 00 00 00 00 ................
0000000000445BF0 48 C7 84 24 A0 00 00 00 00 00 00 00 0F 1F 40 00 H..$..........@.
0000000000445C00 48 8B 8C 24 90 00 00 00 48 85 C9 0F 84 48 FB FF H..$....H....H..
0000000000445C10 FF 31 C0 66 83 BC 24 98 00 00 00 FF BE 01 00 00 .1.f..$.........
0000000000445C20 00 0F 85 29 FB FF FF 48 8B 41 10 48 3B 41 18 0F ...)...H.A.H;A..
0000000000445C30 83 1B 05 00 00 0F B7 00 66 83 F8 FF 0F 84 2E 02 ........f.......
0000000000445C40 00 00 66 89 84 24 98 00 00 00 31 C0 40 38 C6 0F ..f..$....1.@8..
0000000000445C50 84 04 FB FF FF 48 8B 8C 24 A0 00 00 00 48 85 C9 .....H..$....H..
0000000000445C60 0F 84 FA 01 00 00 44 0F B7 84 24 A8 00 00 00 66 ......D...$....f
0000000000445C70 41 83 F8 FF 75 2A 48 8B 41 10 48 3B 41 18 0F 83 A...u*H.A.H;A...
0000000000445C80 86 05 00 00 0F B7 00 66 83 F8 FF 0F 84 6F 04 00 .......f.....o..
0000000000445C90 00 66 89 84 24 A8 00 00 00 44 0F B7 C0 0F 1F 00 .f..$....D......
0000000000445CA0 49 8B 45 00 BA 20 00 00 00 4C 89 E9 FF 50 10 84 I.E.. ...L...P..
0000000000445CB0 C0 0F 84 A2 FA FF FF 48 8B 8C 24 A0 00 00 00 48 .......H..$....H
0000000000445CC0 85 C9 0F 84 38 FF FF FF 48 8B 41 10 48 3B 41 18 ....8...H.A.H;A.
0000000000445CD0 0F 83 83 05 00 00 48 83 C0 02 48 89 41 10 41 B8 ......H...H.A.A.
0000000000445CE0 FF FF FF FF 66 44 89 84 24 A8 00 00 00 E9 1A FA ....fD..$.......
0000000000445CF0 FF FF 48 C7 84 24 A0 00 00 00 00 00 00 00 48 8B ..H..$........H.
0000000000445D00 8C 24 90 00 00 00 48 85 C9 74 45 31 C0 66 83 BC .$....H..tE1.f..
0000000000445D10 24 98 00 00 00 FF BD 01 00 00 00 0F 85 3F FE FF $............?..
0000000000445D20 FF 48 8B 41 10 48 3B 41 18 0F 83 C5 04 00 00 0F .H.A.H;A........
0000000000445D30 B7 00 66 83 F8 FF 0F 84 A5 03 00 00 66 89 84 24 ..f.........f..$
0000000000445D40 98 00 00 00 31 C0 40 38 E8 0F 85 1A FE FF FF 90 ....1.@8........
0000000000445D50 48 3B 74 24 38 0F 84 19 FE FF FF 48 85 F6 75 12 H;t$8......H..u.
0000000000445D60 48 8B 84 24 60 01 00 00 F6 40 19 02 0F 84 02 FE H..$`....@......
0000000000445D70 FF FF                                           ..             

l0000000000445D72:
	lea	rbp,[rsp+90h]
	lea	rsi,[rsp+0A0h]

l0000000000445D82:
	mov	rax,[rsp+168h]
	or	dword ptr [rax],4h

l0000000000445D8D:
	mov	rdx,rbp
	mov	rcx,rsi
	call	42B0C0h
	test	al,al
	jz	445DA7h

l0000000000445D9C:
	mov	rax,[rsp+168h]
	or	dword ptr [rax],2h

l0000000000445DA7:
	mov	rax,[rsp+0A0h]
	mov	rdi,[rsp+140h]
	mov	rdx,[rsp+0A8h]
	mov	[rdi],rax
	mov	rax,[rsp+0E0h]
	mov	[rdi+8h],rdx
	mov	rdx,[rsp+88h]
	lea	rcx,[rax-18h]
	call	450A60h
	mov	rax,[rsp+0D0h]
	mov	rdx,[rsp+48h]
	lea	rcx,[rax-18h]
	call	450A60h
	mov	rax,[rsp+140h]
	add	rsp,+0F8h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret
0000000000445E11    48 8B 41 10 48 3B 41 18 0F 83 21 03 00 00 0F  H.A.H;A...!....
0000000000445E20 B7 00 66 83 F8 FF 0F 84 C4 FD FF FF 48 8B 8C 24 ..f.........H..$
0000000000445E30 90 00 00 00 31 F6 66 89 84 24 A8 00 00 00 48 85 ....1.f..$....H.
0000000000445E40 C9 0F 85 F5 F8 FF FF 48 8B 8C 24 A0 00 00 00 48 .......H..$....H
0000000000445E50 85 C9 0F 85 0E FE FF FF 0F 1F 84 00 00 00 00 00 ................
0000000000445E60 41 B8 FF FF 00 00 E9 35 FE FF FF 0F 1F 44 00 00 A......5.....D..
0000000000445E70 48 C7 84 24 90 00 00 00 00 00 00 00 B8 01 00 00 H..$............
0000000000445E80 00 E9 CA F8 FF FF 66 2E 0F 1F 84 00 00 00 00 00 ......f.........
0000000000445E90 48 8B 41 10 48 3B 41 18 0F 83 35 03 00 00 0F B7 H.A.H;A...5.....
0000000000445EA0 00 66 83 F8 FF 0F 84 F5 01 00 00 48 8B 8C 24 90 .f.........H..$.
0000000000445EB0 00 00 00 31 F6 66 89 84 24 A8 00 00 00 48 85 C9 ...1.f..$....H..
0000000000445EC0 0F 85 EB F8 FF FF 48 8B 8C 24 A0 00 00 00 48 85 ......H..$....H.
0000000000445ED0 C9 0F 85 05 F9 FF FF 66 0F 1F 84 00 00 00 00 00 .......f........
0000000000445EE0 B8 FF FF FF FF E9 04 F9 FF FF 66 0F 1F 44 00 00 ..........f..D..
0000000000445EF0 48 8B 41 10 48 3B 41 18 0F 83 EB 02 00 00 0F B7 H.A.H;A.........
0000000000445F00 00 66 83 F8 FF 0F 84 C5 01 00 00 66 89 84 24 A8 .f.........f..$.
0000000000445F10 00 00 00 E9 D6 F8 FF FF 0F 1F 84 00 00 00 00 00 ................
0000000000445F20 48 8B 05 F9 B7 04 00 48 2B 54 24 58 48 8B 00 48 H......H+T$XH..H
0000000000445F30 D1 FA 0F B6 2C 10 48 8B 84 24 E0 00 00 00 48 8B ....,.H..$....H.
0000000000445F40 50 E8 48 8D 72 01 48 3B 70 F0 77 07 8B 48 F8 85 P.H.r.H;p.w..H..
0000000000445F50 C9 7E 19 48 8B 4C 24 48 48 89 F2 E8 80 BC 00 00 .~.H.L$HH.......
0000000000445F60 48 8B 84 24 E0 00 00 00 48 8B 50 E8 40 88 2C 10 H..$....H.P.@.,.
0000000000445F70 48 8B 84 24 E0 00 00 00 83 C7 01 C7 40 F8 00 00 H..$........@...
0000000000445F80 00 00 48 89 70 E8 C6 04 30 00 E9 B1 F8 FF FF 90 ..H.p...0.......
0000000000445F90 41 80 7C 24 20 00 0F 84 34 F9 FF FF 66 41 39 44 A.|$ ...4...fA9D
0000000000445FA0 24 24 0F 85 28 F9 FF FF 45 84 FF 0F 85 1F F9 FF $$..(...E.......
0000000000445FB0 FF 85 FF 0F 84 E3 02 00 00 48 8B 84 24 D0 00 00 .........H..$...
0000000000445FC0 00 48 8B 50 E8 48 8D 72 01 48 3B 70 F0 77 09 44 .H.P.H.r.H;p.w.D
0000000000445FD0 8B 58 F8 45 85 DB 7E 19 48 8B 4C 24 68 48 89 F2 .X.E..~.H.L$hH..
0000000000445FE0 E8 FB BB 00 00 48 8B 84 24 D0 00 00 00 48 8B 50 .....H..$....H.P
0000000000445FF0 E8 40 88 3C 10 48 8B 84 24 D0 00 00 00 31 FF C7 .@.<.H..$....1..
0000000000446000 40 F8 00 00 00 00 48 89 70 E8 C6 04 30 00 E9 2D @.....H.p...0..-
0000000000446010 F8 FF FF 48 8B 41 10 48 3B 41 18 0F 83 DE 01 00 ...H.A.H;A......
0000000000446020 00 0F B7 00 66 83 F8 FF 0F 84 C4 FC FF FF 66 89 ....f.........f.
0000000000446030 84 24 A8 00 00 00 E9 FD FA FF FF 0F 1F 44 00 00 .$...........D..
0000000000446040 48 8B 8C 24 A0 00 00 00 48 85 C9 0F 84 D2 00 00 H..$....H.......
0000000000446050 00 0F B7 84 24 A8 00 00 00 66 83 F8 FF 0F 84 10 ....$....f......
0000000000446060 01 00 00 49 8B 54 24 28 66 3B 04 72 0F 85 E9 FC ...I.T$(f;.r....
0000000000446070 FF FF 48 8B 41 10 48 3B 41 18 0F 83 40 01 00 00 ..H.A.H;A...@...
0000000000446080 48 83 C0 02 48 89 41 10 41 BA FF FF FF FF 66 44 H...H.A.A.....fD
0000000000446090 89 94 24 A8 00 00 00 48 83 C6 01 E9 80 FA FF FF ..$....H........
00000000004460A0 48 C7 84 24 A0 00 00 00 00 00 00 00 E9 CA F7 FF H..$............
00000000004460B0 FF 48 C7 84 24 90 00 00 00 00 00 00 00 B8 01 00 .H..$...........
00000000004460C0 00 00 E9 FB F6 FF FF 66 0F 1F 84 00 00 00 00 00 .......f........
00000000004460D0 48 C7 84 24 A0 00 00 00 00 00 00 00 E9 0D F7 FF H..$............
00000000004460E0 FF 48 C7 84 24 90 00 00 00 00 00 00 00 B8 01 00 .H..$...........
00000000004460F0 00 00 E9 69 FA FF FF 66 0F 1F 84 00 00 00 00 00 ...i...f........
0000000000446100 48 C7 84 24 A0 00 00 00 00 00 00 00 41 B8 FF FF H..$........A...
0000000000446110 00 00 E9 89 FB FF FF 48 C7 84 24 A0 00 00 00 00 .......H..$.....
0000000000446120 00 00 00 49 8B 44 24 28 66 83 3C 70 FF 0F 85 28 ...I.D$(f.<p...(
0000000000446130 FC FF FF 48 8B 8C 24 A0 00 00 00 E9 57 FF FF FF ...H..$.....W...
0000000000446140 48 8B 01 FF 50 48 E9 D7 FC FF FF 0F 1F 44 00 00 H...PH.......D..
0000000000446150 48 8B 01 FF 50 48 E9 DD FA FF FF 0F 1F 44 00 00 H...PH.......D..
0000000000446160 48 8B 01 FF 50 50 48 8B 8C 24 A0 00 00 00 E9 F0 H...PPH..$......
0000000000446170 F6 FF FF 48 8B 41 10 48 3B 41 18 0F 83 CD 00 00 ...H.A.H;A......
0000000000446180 00 0F B7 00 66 83 F8 FF 74 8D 49 8B 54 24 28 66 ....f...t.I.T$(f
0000000000446190 89 84 24 A8 00 00 00 66 39 04 72 0F 85 BA FB FF ..$....f9.r.....
00000000004461A0 FF 48 8B 8C 24 A0 00 00 00 48 85 C9 0F 84 E5 FE .H..$....H......
00000000004461B0 FF FF 48 8B 41 10 48 3B 41 18 0F 82 C0 FE FF FF ..H.A.H;A.......
00000000004461C0 48 8B 01 FF 50 50 48 8B 8C 24 A0 00 00 00 E9 B5 H...PPH..$......
00000000004461D0 FE FF FF 48 8B 01 FF 50 48 E9 C3 FC FF FF 48 8B ...H...PH.....H.
00000000004461E0 01 FF 50 48 E9 C6 F6 FF FF 48 8B 01 FF 50 48 E9 ..PH.....H...PH.
00000000004461F0 0D FD FF FF 48 8B 01 FF 50 48 E9 33 FB FF FF 48 ....H...PH.3...H
0000000000446200 8B 01 FF 50 48 E9 1A FE FF FF 48 8B 01 FF 50 48 ...PH.....H...PH
0000000000446210 E9 72 FA FF FF 48 8B 54 24 78 48 8B 4C 24 70 E8 .r...H.T$xH.L$p.
0000000000446220 9C 4E FE FF 84 C0 74 7B 49 83 7C 24 50 00 75 3C .N....t{I.|$P.u<
0000000000446230 49 83 7C 24 40 00 0F 84 6C F8 FF FF BD 01 00 00 I.|$@...l.......
0000000000446240 00 C6 84 24 85 00 00 00 01 E9 14 F5 FF FF 48 8B ...$..........H.
0000000000446250 01 FF 50 48 E9 2B FF FF FF 48 8B 01 FF 50 50 48 ..PH.+...H...PPH
0000000000446260 8B 8C 24 A0 00 00 00 E9 72 FA FF FF 48 8B 54 24 ..$.....r...H.T$
0000000000446270 78 48 8B 4C 24 70 E8 45 4E FE FF 84 C0 0F 84 1E xH.L$p.EN.......
0000000000446280 01 00 00 49 83 7C 24 40 00 0F 84 19 F8 FF FF 49 ...I.|$@.......I
0000000000446290 83 7C 24 50 00 74 A5 E9 0C F8 FF FF 31 ED E9 32 .|$P.t......1..2
00000000004462A0 F6 FF FF 48 8B 4C 24 70 E8 03 4F FE FF 49 8B 54 ...H.L$p..O..I.T
00000000004462B0 24 38 66 3B 02 0F 85 6D FF FF FF 48 8B 8C 24 A0 $8f;...m...H..$.
00000000004462C0 00 00 00 49 8B 44 24 40 48 85 C9 48 89 44 24 50 ...I.D$@H..H.D$P
00000000004462D0 0F 84 9E F8 FF FF E8 F5 CA 01 00 41 B9 FF FF FF ...........A....
00000000004462E0 FF BD 01 00 00 00 66 44 89 8C 24 A8 00 00 00 E9 ......fD..$.....
00000000004462F0 6E F4 FF FF 80 BC 24 86 00 00 00 00 0F 85 09 F8 n.....$.........
0000000000446300 FF FF 80 BC 24 C0 00 00 00 03 0F 84 FB F7 FF FF ....$...........
0000000000446310 80 BC 24 C2 00 00 00 01 0F 85 51 F4 FF FF E9 E8 ..$.......Q.....
0000000000446320 F7 FF FF                                        ...            

l0000000000446323:
	test	bpl,bpl
	jnz	445956h

l000000000044632C:
	jmp	445D72h

l0000000000446331:
	cmp	[r12+58h],edi
	jnz	445D72h

l000000000044633C:
	jmp	445A61h

l0000000000446341:
	mov	r13,[r12+48h]
	jmp	445917h
000000000044634B                                  0F 1F 44 00 00            ..D..

l0000000000446350:
	mov	rcx,rsi
	call	42B1B0h
	cmp	ax,[r13+rbx*2+0h]
	jnz	44594Bh

l0000000000446364:
	mov	rcx,[rsp+0A0h]
	test	rcx,rcx
	jz	446390h

l0000000000446371:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	446399h

l000000000044637B:
	add	rax,2h
	mov	[rcx+10h],rax

l0000000000446383:
	mov	ecx,0FFFFFFFFh
	mov	[rsp+0A8h],cx

l0000000000446390:
	add	rbx,1h
	jmp	445930h

l0000000000446399:
	mov	rax,[rcx]
	call	qword ptr [rax+50h]
	jmp	446383h
00000000004463A1    48 8B 4C 24 70 E8 05 4E FE FF 49 8B 54 24 48  H.L$p..N..I.T$H
00000000004463B0 66 3B 02 0F 85 CA FE FF FF 48 8B 8C 24 A0 00 00 f;.......H..$...
00000000004463C0 00 49 8B 44 24 50 48 85 C9 48 89 44 24 50 0F 84 .I.D$PH..H.D$P..
00000000004463D0 68 FE FF FF E8 F7 C9 01 00 41 B8 FF FF FF FF BD h........A......
00000000004463E0 01 00 00 00 C6 84 24 85 00 00 00 01 66 44 89 84 ......$.....fD..
00000000004463F0 24 A8 00 00 00 E9 68 F3 FF FF                   $.....h...     

l00000000004463FA:
	cmp	byte ptr [rax],30h
	jnz	4459DAh

l0000000000446403:
	mov	rax,[rsp+0D0h]
	cmp	qword ptr [rax-18h],0h
	jz	445A58h

l0000000000446416:
	jmp	445A15h

l000000000044641B:
	mov	rax,[rsp+0E0h]
	mov	r8,[rax-18h]
	sub	r8,1h
	jmp	445989h
0000000000446430 48 89 C3 48 8B 84 24 D0 00 00 00 48 8B 54 24 48 H..H..$....H.T$H
0000000000446440 48 8D 48 E8 E8 17 A6 00 00 48 89 D9 E8 5F B1 FC H.H......H..._..
0000000000446450 FF 48 89 C3 48 8B 84 24 E0 00 00 00 48 8B 94 24 .H..H..$....H..$
0000000000446460 88 00 00 00 48 8D 48 E8 E8 F3 A5 00 00 EB C4 90 ....H.H.........

;; fn0000000000446470: 0000000000446470
fn0000000000446470 proc
	push	rbx
	sub	rsp,60h
	mov	r10,[r9+8h]
	mov	r9,[r9]
	mov	rbx,rcx
	mov	rcx,[rsp+0A8h]
	mov	rax,[rdx]
	movdqu	xmm1,[r8]
	lea	r8,[rsp+50h]
	mov	[rsp+40h],r9
	lea	r9,[rsp+40h]
	mov	[rsp+48h],r10
	mov	[rsp+38h],rcx
	mov	rcx,[rsp+0A0h]
	movaps	[rsp+50h],xmm1
	mov	[rsp+30h],rcx
	mov	rcx,[rsp+98h]
	mov	[rsp+28h],rcx
	movzx	ecx,byte ptr [rsp+90h]
	mov	[rsp+20h],ecx
	mov	rcx,rbx
	call	qword ptr [rax+18h]
	mov	rax,rbx
	add	rsp,60h
	pop	rbx
	ret
00000000004464E2       90 90 90 90 90 90 90 90 90 90 90 90 90 90   ..............

;; fn00000000004464F0: 00000000004464F0
fn00000000004464F0 proc
	push	rbx
	sub	rsp,60h
	mov	r10,[r9+8h]
	mov	r9,[r9]
	mov	rbx,rcx
	mov	rcx,[rsp+0A8h]
	mov	rax,[rdx]
	movdqu	xmm1,[r8]
	lea	r8,[rsp+50h]
	mov	[rsp+40h],r9
	lea	r9,[rsp+40h]
	mov	[rsp+48h],r10
	mov	[rsp+38h],rcx
	mov	rcx,[rsp+0A0h]
	movaps	[rsp+50h],xmm1
	mov	[rsp+30h],rcx
	mov	rcx,[rsp+98h]
	mov	[rsp+28h],rcx
	movzx	ecx,byte ptr [rsp+90h]
	mov	[rsp+20h],ecx
	mov	rcx,rbx
	call	qword ptr [rax+10h]
	mov	rax,rbx
	add	rsp,60h
	pop	rbx
	ret
0000000000446562       90 90 90 90 90 90 90 90 90 90 90 90 90 90   ..............

;; fn0000000000446570: 0000000000446570
fn0000000000446570 proc
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,+0A8h
	movaps	[rsp+90h],xmm7
	mov	rsi,rcx
	lea	r12,[rsp+7Fh]
	mov	r14,rdx
	mov	rdi,[rsp+118h]
	mov	r15,[r8]
	movdqu	xmm7,[r9]
	mov	rbx,[r8+8h]
	mov	ebp,[rsp+110h]
	lea	rcx,[rdi+0D0h]
	call	473020h
	xor	edx,edx
	xor	ecx,ecx
	mov	r8,r12
	mov	r13,rax
	call	4505D0h
	mov	[rsp+80h],rax
	lea	rax,[rsp+80h]
	test	bpl,bpl
	lea	rcx,[rsp+60h]
	mov	[rsp+50h],r15
	mov	[rsp+58h],rbx
	mov	[rsp+30h],rax
	mov	rax,[rsp+120h]
	lea	r9,[rsp+40h]
	movaps	[rsp+40h],xmm7
	mov	[rsp+20h],rdi
	lea	r8,[rsp+50h]
	mov	rdx,r14
	mov	[rsp+28h],rax
	jz	4466E1h

l000000000044661D:
	call	445540h

l0000000000446622:
	mov	rax,[rsp+60h]
	mov	rdx,[rsp+68h]
	xor	bx,bx
	mov	r9,[rsp+80h]
	mov	[rsp+60h],rax
	mov	[rsp+68h],rdx
	mov	rdi,rax
	movzx	eax,word ptr [rsp+68h]
	mov	r14,[r9-18h]
	or	rbx,rax
	test	r14,r14
	jz	4466ACh

l0000000000446655:
	mov	rcx,[rsp+128h]
	xor	r8d,r8d
	mov	rdx,r14
	call	44A070h
	mov	rax,[rsp+128h]
	mov	r9,[rax]
	mov	edx,[r9-8h]
	test	edx,edx
	js	44668Eh

l000000000044667B:
	mov	rcx,rax
	call	448E80h
	mov	rax,[rsp+128h]
	mov	r9,[rax]

l000000000044668E:
	mov	rdx,[rsp+80h]
	mov	rax,[r13+0h]
	mov	rcx,r13
	lea	r8,[rdx+r14]
	call	qword ptr [rax+58h]
	mov	r9,[rsp+80h]

l00000000004466AC:
	mov	[rsi],rdi
	mov	[rsi+8h],rbx
	mov	eax,0FFFFFFFFh
	lock
	xadd	[r9-8h],eax
	test	eax,eax
	jle	4466F0h

l00000000004466C2:
	movaps	xmm7,[rsp+90h]
	mov	rax,rsi
	add	rsp,+0A8h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret

l00000000004466E1:
	call	444610h
	jmp	446622h
00000000004466EB                                  0F 1F 44 00 00            ..D..

l00000000004466F0:
	lea	rcx,[r9-18h]
	mov	rdx,r12
	call	450A50h
	jmp	4466C2h
00000000004466FE                                           48 89               H.
0000000000446700 C3 48 8B 84 24 80 00 00 00 4C 89 E2 48 8D 48 E8 .H..$....L..H.H.
0000000000446710 E8 4B A3 00 00 48 89 D9 E8 93 AE FC FF 90 90 90 .K...H..........

;; fn0000000000446720: 0000000000446720
fn0000000000446720 proc
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,+88h
	mov	r15,[r8]
	mov	rbx,[r8+8h]
	lea	rbp,[rsp+78h]
	mov	rdi,rdx
	mov	rsi,rcx
	xor	edx,edx
	xor	ecx,ecx
	mov	r13,[r9]
	mov	r8,rbp
	mov	r14,[r9+8h]
	mov	r12d,[rsp+0F0h]
	call	4505D0h
	mov	[rsp+70h],rax
	lea	rax,[rsp+70h]
	lea	rcx,[rsp+60h]
	test	r12b,r12b
	mov	[rsp+50h],r15
	mov	[rsp+58h],rbx
	mov	[rsp+30h],rax
	mov	rax,[rsp+100h]
	lea	r9,[rsp+40h]
	mov	[rsp+40h],r13
	mov	[rsp+48h],r14
	lea	r8,[rsp+50h]
	mov	rdx,rdi
	mov	[rsp+28h],rax
	mov	rax,[rsp+0F8h]
	mov	[rsp+20h],rax
	jz	446840h

l00000000004467B8:
	call	445540h

l00000000004467BD:
	mov	rax,[rsp+60h]
	mov	rdx,[rsp+68h]
	xor	bx,bx
	mov	rdi,rax
	mov	[rsp+60h],rax
	mov	[rsp+68h],rdx
	movzx	eax,word ptr [rsp+68h]
	or	rbx,rax
	call	46AC50h
	mov	r8,[rsp+100h]
	mov	rdx,[rsp+108h]
	mov	r9,rbp
	mov	rcx,[rsp+70h]
	mov	[rsp+78h],rax
	call	46FBE0h
	mov	r10,[rsp+70h]
	mov	[rsi],rdi
	mov	eax,0FFFFFFFFh
	mov	[rsi+8h],rbx
	lock
	xadd	[r10-8h],eax
	test	eax,eax
	jle	446850h

l0000000000446821:
	mov	rax,rsi
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
0000000000446838                         0F 1F 84 00 00 00 00 00         ........

l0000000000446840:
	call	444610h
	jmp	4467BDh
000000000044684A                               66 0F 1F 44 00 00           f..D..

l0000000000446850:
	lea	rcx,[r10-18h]
	mov	rdx,rbp
	call	450A50h
	jmp	446821h
000000000044685E                                           48 89               H.
0000000000446860 C3 48 8B 44 24 70 48 89 EA 48 8D 48 E8 E8 EE A1 .H.D$pH..H.H....
0000000000446870 00 00 48 89 D9 E8 36 AD FC FF 90 90 90 90 90 90 ..H...6.........

;; fn0000000000446880: 0000000000446880
fn0000000000446880 proc
	push	rbx
	sub	rsp,50h
	mov	rax,[rdx]
	mov	rbx,rcx
	mov	rcx,[rsp+90h]
	movzx	r9d,r9b
	movdqu	xmm1,[r8]
	lea	r8,[rsp+40h]
	mov	[rsp+30h],rcx
	movsx	ecx,byte ptr [rsp+88h]
	movaps	[rsp+40h],xmm1
	mov	[rsp+28h],ecx
	mov	rcx,[rsp+80h]
	mov	[rsp+20h],rcx
	mov	rcx,rbx
	call	qword ptr [rax+18h]
	mov	rax,rbx
	add	rsp,50h
	pop	rbx
	ret
00000000004468D3          90 90 90 90 90 90 90 90 90 90 90 90 90    .............

;; fn00000000004468E0: 00000000004468E0
fn00000000004468E0 proc
	push	rbx
	sub	rsp,60h
	mov	rax,[rsp+0A0h]
	mov	rbx,rcx
	lea	rcx,[rsp+40h]
	movzx	r9d,r9b
	movdqu	xmm1,[r8]
	lea	r8,[rsp+50h]
	fld	tword ptr [rax]
	mov	[rsp+30h],rcx
	movsx	ecx,byte ptr [rsp+98h]
	mov	rax,[rdx]
	mov	[rsp+28h],ecx
	mov	rcx,[rsp+90h]
	mov	[rsp+20h],rcx
	mov	rcx,rbx
	movaps	[rsp+50h],xmm1
	fstp	tword ptr [rsp+40h]
	call	qword ptr [rax+10h]
	mov	rax,rbx
	add	rsp,60h
	pop	rbx
	ret
000000000044693E                                           90 90               ..

;; fn0000000000446940: 0000000000446940
fn0000000000446940 proc
	push	rbx
	sub	rsp,40h
	mov	rax,[rsp+80h]
	movdqu	xmm1,[r8]
	test	r9b,r9b
	mov	rbx,rcx
	mov	r8d,[rsp+78h]
	mov	r9,[rsp+70h]
	movaps	[rsp+30h],xmm1
	mov	[rsp+28h],rax
	movsx	r8d,r8b
	mov	[rsp+20h],r8d
	lea	r8,[rsp+30h]
	jnz	446990h

l000000000044697C:
	call	446BF0h
	mov	rax,rbx
	add	rsp,40h
	pop	rbx
	ret
000000000044698A                               66 0F 1F 44 00 00           f..D..

l0000000000446990:
	call	4472D0h
	mov	rax,rbx
	add	rsp,40h
	pop	rbx
	ret
000000000044699E                                           90 90               ..

;; fn00000000004469A0: 00000000004469A0
fn00000000004469A0 proc
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
	movaps	[rbp+20h],xmm7
	mov	r14,rcx
	mov	rcx,rbp
	mov	rdi,rbp
	mov	eax,[rbp+0A8h]
	mov	[rbp+88h],rdx
	movdqu	xmm7,[r8]
	mov	[rbp-4Ch],r9d
	mov	[rbp-50h],eax
	mov	rax,[rbp+0B0h]
	fld	tword ptr [rax]
	mov	rax,[rbp+0A0h]
	lea	rdx,[rax+0D0h]
	fstp	tword ptr [rbp-40h]
	call	46AE80h
	mov	rcx,rbp
	call	472FC0h
	sub	rsp,50h
	mov	r12,rax
	lea	rbx,[rsp+30h]
	mov	[rbp-48h],rbx
	call	46AC50h
	fld	tword ptr [rbp-40h]
	lea	rsi,[rbp+10h]
	lea	r13,[rbp-20h]
	lea	r9,[000000000048DF28]                                  ; [rip+000474F9]
	mov	dword ptr [rsp+20h],0h
	mov	r8d,40h
	mov	rdx,rbx
	mov	[rsp+28h],r13
	mov	rcx,rsi
	mov	[rbp+10h],rax
	fstp	tword ptr [rbp-20h]
	call	46FF90h
	cmp	eax,3Fh
	jle	446AA9h

l0000000000446A59:
	lea	ebx,[rax+1h]
	movsxd	rax,ebx
	add	rax,1Eh
	and	rax,0F0h
	call	4116F0h
	sub	rsp,rax
	lea	r15,[rsp+30h]
	mov	[rbp-48h],r15
	call	46AC50h
	fld	tword ptr [rbp-40h]
	lea	r9,[000000000048DF28]                                  ; [rip+000474A1]
	mov	[rsp+28h],r13
	mov	dword ptr [rsp+20h],0h
	mov	r8d,ebx
	mov	rdx,r15
	mov	rcx,rsi
	mov	[rbp+10h],rax
	fstp	tword ptr [rbp-20h]
	call	46FF90h

l0000000000446AA9:
	lea	r15,[rbp-1h]
	movsxd	rbx,eax
	xor	r8d,r8d
	mov	rdx,rbx
	mov	rcx,rsi
	mov	r9,r15
	call	452090h
	mov	r13,[rbp+10h]
	mov	eax,[r13-8h]
	test	eax,eax
	js	446AD9h

l0000000000446ACD:
	mov	rcx,rsi
	call	4505A0h
	mov	r13,[rbp+10h]

l0000000000446AD9:
	movzx	eax,byte ptr [r12+38h]
	cmp	al,1h
	jz	446B03h

l0000000000446AE3:
	test	al,al
	jz	446B90h

l0000000000446AEB:
	mov	rax,[r12]
	lea	rdx,[000000000042B5D0]                                 ; [rip+FFFE4ADA]
	mov	rax,[rax+38h]
	cmp	rax,rdx
	jnz	446BB0h

l0000000000446B03:
	mov	rdx,[rbp-48h]
	mov	r8,rbx
	mov	rcx,r13
	call	41BCC0h

l0000000000446B12:
	movsx	eax,byte ptr [rbp-50h]
	cmp	byte ptr [rbp-4Ch],0h
	lea	r8,[rbp-30h]
	movaps	[rbp-30h],xmm7
	mov	[rsp+28h],rsi
	mov	r9,[rbp+0A0h]
	mov	rcx,r14
	mov	[rsp+20h],eax
	mov	rdx,[rbp+88h]
	jz	446B80h

l0000000000446B3E:
	call	4472D0h

l0000000000446B43:
	mov	rcx,[rbp+10h]
	mov	eax,0FFFFFFFFh
	lock
	xadd	[rcx-8h],eax
	test	eax,eax
	jle	446BA0h

l0000000000446B55:
	mov	rcx,rdi
	call	46AF20h
	nop
	movaps	xmm7,[rbp+20h]
	mov	rax,r14
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
0000000000446B76                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l0000000000446B80:
	call	446BF0h
	jmp	446B43h
0000000000446B87                      66 0F 1F 84 00 00 00 00 00        f........

l0000000000446B90:
	mov	rcx,r12
	call	42B320h
	jmp	446AEBh
0000000000446B9D                                        0F 1F 00              ...

l0000000000446BA0:
	sub	rcx,18h
	mov	rdx,r15
	call	450A50h
	jmp	446B55h
0000000000446BAE                                           66 90               f.

l0000000000446BB0:
	mov	rdx,[rbp-48h]
	mov	r9,r13
	mov	rcx,r12
	lea	r8,[rdx+rbx]
	call	rax
	jmp	446B12h
0000000000446BC5                48 89 C3 48 89 F9 E8 50 43 02 00      H..H...PC..
0000000000446BD0 48 89 D9 E8 D8 A9 FC FF 48 89 C3 48 8B 45 10 4C H.......H..H.E.L
0000000000446BE0 89 FA 48 8D 48 E8 E8 75 9E 00 00 EB DB 90 90 90 ..H.H..u........

;; fn0000000000446BF0: 0000000000446BF0
;;   Called from:
;;     000000000044697C (in fn0000000000446940)
;;     0000000000446B80 (in fn00000000004469A0)
fn0000000000446BF0 proc
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,+0D8h
	mov	rax,[r8]
	mov	r12,[r8+8h]
	lea	r14,[r9+0D0h]
	mov	r15,rcx
	mov	rbp,r9
	mov	[rsp+40h],rax
	mov	eax,[rsp+140h]
	mov	rcx,r14
	mov	[rsp+3Fh],r12b
	mov	[rsp+64h],eax
	mov	[rsp+60h],al
	call	472FC0h
	lea	rcx,[000000000048B2B0]                                 ; [rip+00044671]
	mov	r13,rax
	call	42BB80h
	mov	rsi,rax
	mov	rax,[rbp+0D0h]
	mov	rax,[rax+18h]
	lea	rbx,[rax+rsi*8]
	mov	rdi,[rbx]
	test	rdi,rdi
	jz	44713Bh

l0000000000446C65:
	mov	rax,[rsp+148h]
	mov	rsi,[rax]
	movzx	eax,byte ptr [rdi+64h]
	cmp	[rsi],al
	jz	446F43h

l0000000000446C7C:
	mov	eax,[rdi+5Ch]
	mov	rbx,[rsi-18h]
	mov	[rsp+0A0h],eax
	mov	rax,[rdi+38h]
	mov	[rsp+68h],rax
	mov	rax,[rdi+40h]
	mov	[rsp+48h],rax

l0000000000446C9C:
	lea	rax,[rsi+rbx]
	cmp	rsi,rax
	jnc	446CC6h

l0000000000446CA5:
	movzx	edx,byte ptr [rsi]
	mov	rcx,[r13+30h]
	test	byte ptr [rcx+rdx*2],8h
	jz	446CC6h

l0000000000446CB2:
	mov	r14,rsi

l0000000000446CB5:
	add	r14,1h
	cmp	r14,rax
	jnz	446D00h

l0000000000446CBE:
	test	rbx,rbx
	mov	r14,rbx
	jnz	446D15h

l0000000000446CC6:
	mov	rax,[rsp+40h]
	mov	r12b,[rsp+3Fh]
	mov	qword ptr [rbp+10h],+0h
	mov	[r15],rax
	mov	rax,r15
	mov	[r15+8h],r12
	add	rsp,+0D8h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret
0000000000446CF6                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l0000000000446D00:
	movzx	edx,byte ptr [r14]
	test	byte ptr [rcx+rdx*2],8h
	jnz	446CB5h

l0000000000446D0A:
	sub	r14,rsi
	mov	rbx,r14
	test	rbx,rbx
	jz	446CC6h

l0000000000446D15:
	lea	rax,[rsp+0C0h]
	xor	edx,edx
	xor	ecx,ecx
	mov	r8,rax
	mov	[rsp+50h],rax
	call	4505D0h
	mov	[rsp+0B0h],rax
	lea	rax,[rsp+0B0h]
	lea	rdx,[rbx+rbx]
	mov	rcx,rax
	mov	[rsp+58h],rax
	call	451BE0h
	mov	eax,[rdi+58h]
	mov	r13d,r14d
	sub	r13d,eax
	test	r13d,r13d
	jle	446E53h

l0000000000446D61:
	test	eax,eax
	cmovs	r13d,r14d

l0000000000446D67:
	cmp	qword ptr [rdi+18h],0h
	jz	4470F0h

l0000000000446D72:
	mov	rax,[rsp+0B0h]
	lea	r9d,[r13+r13+0h]
	mov	rcx,[rsp+58h]
	xor	edx,edx
	movsxd	r9,r9d
	mov	r8,[rax-18h]
	mov	dword ptr [rsp+20h],0h
	call	4508E0h
	movsxd	rax,r13d
	mov	rcx,[rsp+0B0h]
	movsx	r14d,byte ptr [rdi+22h]
	add	rax,rsi
	mov	[rsp+70h],rax
	mov	rax,[rdi+18h]
	mov	r8d,[rcx-8h]
	mov	[rsp+78h],rax
	mov	rax,[rdi+10h]
	test	r8d,r8d
	mov	[rsp+80h],rax
	js	446DE2h

l0000000000446DD0:
	mov	rcx,[rsp+58h]
	call	4505A0h
	mov	rcx,[rsp+0B0h]

l0000000000446DE2:
	mov	rax,[rsp+70h]
	mov	r9,[rsp+78h]
	mov	edx,r14d
	mov	r8,[rsp+80h]
	mov	[rsp+20h],rsi
	mov	[rsp+28h],rax
	call	46F7F0h
	mov	r14,rax
	mov	rax,[rsp+0B0h]
	mov	edx,[rax-8h]
	test	edx,edx
	js	446E2Ah

l0000000000446E18:
	mov	rcx,[rsp+58h]
	call	4505A0h
	mov	rax,[rsp+0B0h]

l0000000000446E2A:
	mov	r9,[rax-18h]
	mov	rdx,r14
	sub	rdx,rax
	mov	r8,r9
	sub	r8,rdx
	cmp	rdx,r9
	ja	4472A6h

l0000000000446E43:
	mov	rcx,[rsp+58h]
	xor	r9d,r9d
	call	451CC0h
	mov	eax,[rdi+58h]

l0000000000446E53:
	test	eax,eax
	jle	446E83h

l0000000000446E57:
	mov	r14,[rsp+58h]
	movsx	edx,byte ptr [rdi+21h]
	mov	rcx,r14
	call	451E10h
	test	r13d,r13d
	js	447108h

l0000000000446E71:
	movsxd	r8,dword ptr [rdi+58h]
	movsxd	rdx,r13d
	mov	rcx,r14
	add	rdx,rsi
	call	450E00h

l0000000000446E83:
	mov	eax,[rbp+18h]
	mov	rcx,[rsp+48h]
	mov	edx,eax
	and	edx,0B0h
	mov	[rsp+70h],edx
	mov	rdx,[rsp+0B0h]
	add	rcx,[rdx-18h]
	test	ah,2h
	mov	rdx,rcx
	jnz	4470E0h

l0000000000446EAF:
	xor	eax,eax

l0000000000446EB1:
	add	rax,rdx
	xor	ecx,ecx
	xor	edx,edx
	mov	rbx,rax
	lea	rax,[rsp+9Fh]
	mov	r8,rax
	mov	[rsp+88h],rax
	call	4505D0h
	mov	rcx,[rsp+50h]
	lea	rdx,[rbx+rbx]
	mov	[rsp+0C0h],rax
	call	451BE0h
	mov	rsi,[rbp+10h]
	mov	rcx,rbx
	lea	r13,[rsp+0A0h]
	lea	r14,[000000000048DF14]                                 ; [rip+00047015]
	cmp	rbx,rsi
	setc	dl
	cmp	dword ptr [rsp+70h],10h
	setz	al
	xor	ebx,ebx
	and	edx,eax
	movsx	eax,byte ptr [rsp+60h]
	mov	[rsp+78h],dl
	mov	rdx,rsi
	sub	rdx,rcx
	mov	[rsp+80h],rdx
	mov	[rsp+60h],eax

l0000000000446F2C:
	cmp	byte ptr [r13+rbx+0h],4h
	ja	446F81h

l0000000000446F34:
	movzx	eax,byte ptr [r13+rbx+0h]
	movsxd	rax,dword ptr [r14+rax*4]
	add	rax,r14
	jmp	rax

l0000000000446F43:
	mov	eax,[rdi+60h]
	mov	rbx,[rsi-18h]
	mov	[rsp+0A0h],eax
	mov	rax,[rdi+48h]
	test	rbx,rbx
	mov	[rsp+68h],rax
	mov	rax,[rdi+50h]
	mov	[rsp+48h],rax
	jz	446CC6h

l0000000000446F6C:
	add	rsi,1h
	jmp	446C9Ch
0000000000446F75                48 83 7C 24 48 00 0F 85 8F 02 00      H.|$H......
0000000000446F80 00                                              .              

l0000000000446F81:
	add	rbx,1h
	cmp	rbx,4h
	jnz	446F2Ch

l0000000000446F8B:
	cmp	qword ptr [rsp+48h],1h
	jbe	446FAFh

l0000000000446F93:
	mov	rax,[rsp+48h]
	mov	rdx,[rsp+68h]
	mov	rcx,[rsp+50h]
	lea	r8,[rax-1h]
	add	rdx,1h
	call	450E00h

l0000000000446FAF:
	mov	rdx,[rsp+0C0h]
	mov	rax,[rdx-18h]
	cmp	rsi,rax
	jbe	447133h

l0000000000446FC4:
	cmp	dword ptr [rsp+70h],20h
	jz	4471F5h

l0000000000446FCF:
	movsx	edx,byte ptr [rsp+64h]
	mov	rcx,[rsp+50h]
	mov	r9,rsi
	sub	r9,rax
	xor	r8d,r8d
	mov	[rsp+20h],edx
	xor	edx,edx
	call	4508E0h

l0000000000446FED:
	mov	rdx,[rsp+0C0h]

l0000000000446FF5:
	cmp	byte ptr [rsp+3Fh],0h
	movsxd	rsi,esi
	jnz	44701Eh

l0000000000446FFF:
	mov	rcx,[rsp+40h]
	mov	r8,rsi
	mov	rax,[rcx]
	call	qword ptr [rax+60h]
	cmp	rsi,rax
	mov	rdx,[rsp+0C0h]
	jnz	44723Dh

l000000000044701E:
	mov	eax,0FFFFFFFFh
	lock
	xadd	[rdx-8h],eax
	test	eax,eax
	jle	447227h

l0000000000447030:
	mov	rax,[rsp+0B0h]
	mov	edx,0FFFFFFFFh
	lock
	xadd	[rax-8h],edx
	test	edx,edx
	jg	446CC6h

l000000000044704A:
	mov	rdx,[rsp+50h]
	lea	rcx,[rax-18h]
	call	450A50h
	jmp	446CC6h
000000000044705D                                        0F 1F 00              ...
0000000000447060 F6 45 19 02 0F 84 17 FF FF FF 48 8B 57 28 4C 8B .E........H.W(L.
0000000000447070 47 30 48 8B 4C 24 50 E8 84 9D 00 00 E9 00 FF FF G0H.L$P.........
0000000000447080 FF 80 7C 24 78 00 75 37 8B 54 24 60 48 8B 4C 24 ..|$x.u7.T$`H.L$
0000000000447090 50 E8 7A AD 00 00 E9 E6 FE FF FF 0F 1F 44 00 00 P.z..........D..
00000000004470A0 48 8B 54 24 58 48 8B 4C 24 50 E8 51 9E 00 00 E9 H.T$XH.L$P.Q....
00000000004470B0 CD FE FF FF 80 7C 24 78 00 0F 84 C2 FE FF FF 44 .....|$x.......D
00000000004470C0 8B 44 24 60 48 8B 94 24 80 00 00 00 48 8B 4C 24 .D$`H..$....H.L$
00000000004470D0 50 E8 AA 9F 00 00 E9 A6 FE FF FF 0F 1F 44 00 00 P............D..

l00000000004470E0:
	mov	rax,[rdi+30h]
	jmp	446EB1h
00000000004470E9                            0F 1F 80 00 00 00 00          .......

l00000000004470F0:
	mov	rcx,[rsp+58h]
	movsxd	r8,r13d
	mov	rdx,rsi
	call	4511C0h
	mov	eax,[rdi+58h]
	jmp	446E53h

l0000000000447108:
	mov	r14,[rsp+58h]
	movsx	r8d,byte ptr [rdi+65h]
	neg	r13d
	movsxd	rdx,r13d
	mov	rcx,r14
	call	451080h
	mov	r8,rbx
	mov	rdx,rsi
	mov	rcx,r14
	call	450E00h
	jmp	446E83h

l0000000000447133:
	mov	rsi,rax
	jmp	446FF5h

l000000000044713B:
	mov	ecx,70h
	call	475590h
	mov	rdi,rax
	mov	dword ptr [rax+8h],0h
	lea	rax,[0000000000497690]                                 ; [rip+0005053A]
	mov	qword ptr [rdi+10h],+0h
	mov	qword ptr [rdi+18h],+0h
	mov	rdx,r14
	mov	[rdi],rax
	mov	byte ptr [rdi+20h],0h
	mov	rcx,rdi
	mov	byte ptr [rdi+21h],0h
	mov	byte ptr [rdi+22h],0h
	mov	qword ptr [rdi+28h],+0h
	mov	qword ptr [rdi+30h],+0h
	mov	qword ptr [rdi+38h],+0h
	mov	qword ptr [rdi+40h],+0h
	mov	qword ptr [rdi+48h],+0h
	mov	qword ptr [rdi+50h],+0h
	mov	dword ptr [rdi+58h],0h
	mov	byte ptr [rdi+5Ch],0h
	mov	byte ptr [rdi+5Dh],0h
	mov	byte ptr [rdi+5Eh],0h
	mov	byte ptr [rdi+5Fh],0h
	mov	byte ptr [rdi+60h],0h
	mov	byte ptr [rdi+61h],0h
	mov	byte ptr [rdi+62h],0h
	mov	byte ptr [rdi+63h],0h
	mov	byte ptr [rdi+6Fh],0h
	call	4661A0h
	mov	rcx,[rbp+0D0h]
	mov	rdx,rdi
	mov	r8,rsi
	call	469430h
	mov	rdi,[rbx]
	jmp	446C65h

l00000000004471F5:
	movsx	r8d,byte ptr [rsp+64h]
	mov	rcx,[rsp+50h]
	mov	rdx,rsi
	sub	rdx,rax
	call	451080h
	jmp	446FEDh
0000000000447210 48 8B 44 24 68 48 8B 4C 24 50 0F BE 10 E8 EE AB H.D$hH.L$P......
0000000000447220 00 00 E9 5A FD FF FF                            ...Z...        

l0000000000447227:
	lea	rcx,[rdx-18h]
	mov	rdx,[rsp+88h]
	call	450A50h
	jmp	447030h

l000000000044723D:
	mov	byte ptr [rsp+3Fh],1h
	jmp	44701Eh
0000000000447247                      48 89 C3 48 8B 84 24 C0 00        H..H..$..
0000000000447250 00 00 48 8B 94 24 88 00 00 00 48 8D 48 E8 E8 FD ..H..$....H.H...
0000000000447260 97 00 00 48 8B 84 24 B0 00 00 00 48 8B 54 24 50 ...H..$....H.T$P
0000000000447270 48 8D 48 E8 E8 E7 97 00 00 48 89 D9 E8 2F A3 FC H.H......H.../..
0000000000447280 FF 48 89 C3 EB DD 48 89 C1 E8 B2 E5 02 00 48 8B .H....H.......H.
0000000000447290 07 48 89 F9 FF 50 08 E8 C4 ED 02 00 48 89 C1 E8 .H...P......H...
00000000004472A0 9C E5 02 00 EB F1                               ......         

l00000000004472A6:
	mov	r8,rdx
	lea	rcx,[000000000048DEC8]                                 ; [rip+00046C18]
	lea	rdx,[000000000048DEB2]                                 ; [rip+00046BFB]
	call	471560h
	mov	rbx,rax
	call	475A70h
	mov	rcx,rbx
	call	4115B0h
	nop
	nop
	nop
	nop

;; fn00000000004472D0: 00000000004472D0
;;   Called from:
;;     0000000000446990 (in fn0000000000446940)
;;     0000000000446B3E (in fn00000000004469A0)
;;     00000000004472CF (in fn0000000000446BF0)
fn00000000004472D0 proc
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,+0D8h
	mov	rax,[r8]
	mov	r12,[r8+8h]
	lea	r14,[r9+0D0h]
	mov	r15,rcx
	mov	rbp,r9
	mov	[rsp+40h],rax
	mov	eax,[rsp+140h]
	mov	rcx,r14
	mov	[rsp+3Fh],r12b
	mov	[rsp+64h],eax
	mov	[rsp+60h],al
	call	472FC0h
	lea	rcx,[000000000048B2C0]                                 ; [rip+00043FA1]
	mov	r13,rax
	call	42BB80h
	mov	rsi,rax
	mov	rax,[rbp+0D0h]
	mov	rax,[rax+18h]
	lea	rbx,[rax+rsi*8]
	mov	rdi,[rbx]
	test	rdi,rdi
	jz	44781Bh

l0000000000447345:
	mov	rax,[rsp+148h]
	mov	rsi,[rax]
	movzx	eax,byte ptr [rdi+64h]
	cmp	[rsi],al
	jz	447623h

l000000000044735C:
	mov	eax,[rdi+5Ch]
	mov	rbx,[rsi-18h]
	mov	[rsp+0A0h],eax
	mov	rax,[rdi+38h]
	mov	[rsp+68h],rax
	mov	rax,[rdi+40h]
	mov	[rsp+48h],rax

l000000000044737C:
	lea	rax,[rsi+rbx]
	cmp	rsi,rax
	jnc	4473A6h

l0000000000447385:
	movzx	edx,byte ptr [rsi]
	mov	rcx,[r13+30h]
	test	byte ptr [rcx+rdx*2],8h
	jz	4473A6h

l0000000000447392:
	mov	r14,rsi

l0000000000447395:
	add	r14,1h
	cmp	r14,rax
	jnz	4473E0h

l000000000044739E:
	test	rbx,rbx
	mov	r14,rbx
	jnz	4473F5h

l00000000004473A6:
	mov	rax,[rsp+40h]
	mov	r12b,[rsp+3Fh]
	mov	qword ptr [rbp+10h],+0h
	mov	[r15],rax
	mov	rax,r15
	mov	[r15+8h],r12
	add	rsp,+0D8h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret
00000000004473D6                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l00000000004473E0:
	movzx	edx,byte ptr [r14]
	test	byte ptr [rcx+rdx*2],8h
	jnz	447395h

l00000000004473EA:
	sub	r14,rsi
	mov	rbx,r14
	test	rbx,rbx
	jz	4473A6h

l00000000004473F5:
	lea	rax,[rsp+0C0h]
	xor	edx,edx
	xor	ecx,ecx
	mov	r8,rax
	mov	[rsp+50h],rax
	call	4505D0h
	mov	[rsp+0B0h],rax
	lea	rax,[rsp+0B0h]
	lea	rdx,[rbx+rbx]
	mov	rcx,rax
	mov	[rsp+58h],rax
	call	451BE0h
	mov	eax,[rdi+58h]
	mov	r13d,r14d
	sub	r13d,eax
	test	r13d,r13d
	jle	447533h

l0000000000447441:
	test	eax,eax
	cmovs	r13d,r14d

l0000000000447447:
	cmp	qword ptr [rdi+18h],0h
	jz	4477D0h

l0000000000447452:
	mov	rax,[rsp+0B0h]
	lea	r9d,[r13+r13+0h]
	mov	rcx,[rsp+58h]
	xor	edx,edx
	movsxd	r9,r9d
	mov	r8,[rax-18h]
	mov	dword ptr [rsp+20h],0h
	call	4508E0h
	movsxd	rax,r13d
	mov	rcx,[rsp+0B0h]
	movsx	r14d,byte ptr [rdi+22h]
	add	rax,rsi
	mov	[rsp+70h],rax
	mov	rax,[rdi+18h]
	mov	r8d,[rcx-8h]
	mov	[rsp+78h],rax
	mov	rax,[rdi+10h]
	test	r8d,r8d
	mov	[rsp+80h],rax
	js	4474C2h

l00000000004474B0:
	mov	rcx,[rsp+58h]
	call	4505A0h
	mov	rcx,[rsp+0B0h]

l00000000004474C2:
	mov	rax,[rsp+70h]
	mov	r9,[rsp+78h]
	mov	edx,r14d
	mov	r8,[rsp+80h]
	mov	[rsp+20h],rsi
	mov	[rsp+28h],rax
	call	46F7F0h
	mov	r14,rax
	mov	rax,[rsp+0B0h]
	mov	edx,[rax-8h]
	test	edx,edx
	js	44750Ah

l00000000004474F8:
	mov	rcx,[rsp+58h]
	call	4505A0h
	mov	rax,[rsp+0B0h]

l000000000044750A:
	mov	r9,[rax-18h]
	mov	rdx,r14
	sub	rdx,rax
	mov	r8,r9
	sub	r8,rdx
	cmp	rdx,r9
	ja	447986h

l0000000000447523:
	mov	rcx,[rsp+58h]
	xor	r9d,r9d
	call	451CC0h
	mov	eax,[rdi+58h]

l0000000000447533:
	test	eax,eax
	jle	447563h

l0000000000447537:
	mov	r14,[rsp+58h]
	movsx	edx,byte ptr [rdi+21h]
	mov	rcx,r14
	call	451E10h
	test	r13d,r13d
	js	4477E8h

l0000000000447551:
	movsxd	r8,dword ptr [rdi+58h]
	movsxd	rdx,r13d
	mov	rcx,r14
	add	rdx,rsi
	call	450E00h

l0000000000447563:
	mov	eax,[rbp+18h]
	mov	rcx,[rsp+48h]
	mov	edx,eax
	and	edx,0B0h
	mov	[rsp+70h],edx
	mov	rdx,[rsp+0B0h]
	add	rcx,[rdx-18h]
	test	ah,2h
	mov	rdx,rcx
	jnz	4477C0h

l000000000044758F:
	xor	eax,eax

l0000000000447591:
	add	rax,rdx
	xor	ecx,ecx
	xor	edx,edx
	mov	rbx,rax
	lea	rax,[rsp+9Fh]
	mov	r8,rax
	mov	[rsp+88h],rax
	call	4505D0h
	mov	rcx,[rsp+50h]
	lea	rdx,[rbx+rbx]
	mov	[rsp+0C0h],rax
	call	451BE0h
	mov	rsi,[rbp+10h]
	mov	rcx,rbx
	lea	r13,[rsp+0A0h]
	lea	r14,[000000000048DF00]                                 ; [rip+00046921]
	cmp	rbx,rsi
	setc	dl
	cmp	dword ptr [rsp+70h],10h
	setz	al
	xor	ebx,ebx
	and	edx,eax
	movsx	eax,byte ptr [rsp+60h]
	mov	[rsp+78h],dl
	mov	rdx,rsi
	sub	rdx,rcx
	mov	[rsp+80h],rdx
	mov	[rsp+60h],eax

l000000000044760C:
	cmp	byte ptr [r13+rbx+0h],4h
	ja	447661h

l0000000000447614:
	movzx	eax,byte ptr [r13+rbx+0h]
	movsxd	rax,dword ptr [r14+rax*4]
	add	rax,r14
	jmp	rax

l0000000000447623:
	mov	eax,[rdi+60h]
	mov	rbx,[rsi-18h]
	mov	[rsp+0A0h],eax
	mov	rax,[rdi+48h]
	test	rbx,rbx
	mov	[rsp+68h],rax
	mov	rax,[rdi+50h]
	mov	[rsp+48h],rax
	jz	4473A6h

l000000000044764C:
	add	rsi,1h
	jmp	44737Ch
0000000000447655                48 83 7C 24 48 00 0F 85 8F 02 00      H.|$H......
0000000000447660 00                                              .              

l0000000000447661:
	add	rbx,1h
	cmp	rbx,4h
	jnz	44760Ch

l000000000044766B:
	cmp	qword ptr [rsp+48h],1h
	jbe	44768Fh

l0000000000447673:
	mov	rax,[rsp+48h]
	mov	rdx,[rsp+68h]
	mov	rcx,[rsp+50h]
	lea	r8,[rax-1h]
	add	rdx,1h
	call	450E00h

l000000000044768F:
	mov	rdx,[rsp+0C0h]
	mov	rax,[rdx-18h]
	cmp	rsi,rax
	jbe	447813h

l00000000004476A4:
	cmp	dword ptr [rsp+70h],20h
	jz	4478D5h

l00000000004476AF:
	movsx	edx,byte ptr [rsp+64h]
	mov	rcx,[rsp+50h]
	mov	r9,rsi
	sub	r9,rax
	xor	r8d,r8d
	mov	[rsp+20h],edx
	xor	edx,edx
	call	4508E0h

l00000000004476CD:
	mov	rdx,[rsp+0C0h]

l00000000004476D5:
	cmp	byte ptr [rsp+3Fh],0h
	movsxd	rsi,esi
	jnz	4476FEh

l00000000004476DF:
	mov	rcx,[rsp+40h]
	mov	r8,rsi
	mov	rax,[rcx]
	call	qword ptr [rax+60h]
	cmp	rsi,rax
	mov	rdx,[rsp+0C0h]
	jnz	44791Dh

l00000000004476FE:
	mov	eax,0FFFFFFFFh
	lock
	xadd	[rdx-8h],eax
	test	eax,eax
	jle	447907h

l0000000000447710:
	mov	rax,[rsp+0B0h]
	mov	edx,0FFFFFFFFh
	lock
	xadd	[rax-8h],edx
	test	edx,edx
	jg	4473A6h

l000000000044772A:
	mov	rdx,[rsp+50h]
	lea	rcx,[rax-18h]
	call	450A50h
	jmp	4473A6h
000000000044773D                                        0F 1F 00              ...
0000000000447740 F6 45 19 02 0F 84 17 FF FF FF 48 8B 57 28 4C 8B .E........H.W(L.
0000000000447750 47 30 48 8B 4C 24 50 E8 A4 96 00 00 E9 00 FF FF G0H.L$P.........
0000000000447760 FF 80 7C 24 78 00 75 37 8B 54 24 60 48 8B 4C 24 ..|$x.u7.T$`H.L$
0000000000447770 50 E8 9A A6 00 00 E9 E6 FE FF FF 0F 1F 44 00 00 P............D..
0000000000447780 48 8B 54 24 58 48 8B 4C 24 50 E8 71 97 00 00 E9 H.T$XH.L$P.q....
0000000000447790 CD FE FF FF 80 7C 24 78 00 0F 84 C2 FE FF FF 44 .....|$x.......D
00000000004477A0 8B 44 24 60 48 8B 94 24 80 00 00 00 48 8B 4C 24 .D$`H..$....H.L$
00000000004477B0 50 E8 CA 98 00 00 E9 A6 FE FF FF 0F 1F 44 00 00 P............D..

l00000000004477C0:
	mov	rax,[rdi+30h]
	jmp	447591h
00000000004477C9                            0F 1F 80 00 00 00 00          .......

l00000000004477D0:
	mov	rcx,[rsp+58h]
	movsxd	r8,r13d
	mov	rdx,rsi
	call	4511C0h
	mov	eax,[rdi+58h]
	jmp	447533h

l00000000004477E8:
	mov	r14,[rsp+58h]
	movsx	r8d,byte ptr [rdi+65h]
	neg	r13d
	movsxd	rdx,r13d
	mov	rcx,r14
	call	451080h
	mov	r8,rbx
	mov	rdx,rsi
	mov	rcx,r14
	call	450E00h
	jmp	447563h

l0000000000447813:
	mov	rsi,rax
	jmp	4476D5h

l000000000044781B:
	mov	ecx,70h
	call	475590h
	mov	rdi,rax
	mov	dword ptr [rax+8h],0h
	lea	rax,[00000000004976B0]                                 ; [rip+0004FE7A]
	mov	qword ptr [rdi+10h],+0h
	mov	qword ptr [rdi+18h],+0h
	mov	rdx,r14
	mov	[rdi],rax
	mov	byte ptr [rdi+20h],0h
	mov	rcx,rdi
	mov	byte ptr [rdi+21h],0h
	mov	byte ptr [rdi+22h],0h
	mov	qword ptr [rdi+28h],+0h
	mov	qword ptr [rdi+30h],+0h
	mov	qword ptr [rdi+38h],+0h
	mov	qword ptr [rdi+40h],+0h
	mov	qword ptr [rdi+48h],+0h
	mov	qword ptr [rdi+50h],+0h
	mov	dword ptr [rdi+58h],0h
	mov	byte ptr [rdi+5Ch],0h
	mov	byte ptr [rdi+5Dh],0h
	mov	byte ptr [rdi+5Eh],0h
	mov	byte ptr [rdi+5Fh],0h
	mov	byte ptr [rdi+60h],0h
	mov	byte ptr [rdi+61h],0h
	mov	byte ptr [rdi+62h],0h
	mov	byte ptr [rdi+63h],0h
	mov	byte ptr [rdi+6Fh],0h
	call	466B10h
	mov	rcx,[rbp+0D0h]
	mov	rdx,rdi
	mov	r8,rsi
	call	469430h
	mov	rdi,[rbx]
	jmp	447345h

l00000000004478D5:
	movsx	r8d,byte ptr [rsp+64h]
	mov	rcx,[rsp+50h]
	mov	rdx,rsi
	sub	rdx,rax
	call	451080h
	jmp	4476CDh
00000000004478F0 48 8B 44 24 68 48 8B 4C 24 50 0F BE 10 E8 0E A5 H.D$hH.L$P......
0000000000447900 00 00 E9 5A FD FF FF                            ...Z...        

l0000000000447907:
	lea	rcx,[rdx-18h]
	mov	rdx,[rsp+88h]
	call	450A50h
	jmp	447710h

l000000000044791D:
	mov	byte ptr [rsp+3Fh],1h
	jmp	4476FEh
0000000000447927                      48 89 C3 48 8B 84 24 C0 00        H..H..$..
0000000000447930 00 00 48 8B 94 24 88 00 00 00 48 8D 48 E8 E8 1D ..H..$....H.H...
0000000000447940 91 00 00 48 8B 84 24 B0 00 00 00 48 8B 54 24 50 ...H..$....H.T$P
0000000000447950 48 8D 48 E8 E8 07 91 00 00 48 89 D9 E8 4F 9C FC H.H......H...O..
0000000000447960 FF 48 89 C3 EB DD 48 89 C1 E8 D2 DE 02 00 48 8B .H....H.......H.
0000000000447970 07 48 89 F9 FF 50 08 E8 E4 E6 02 00 48 89 C1 E8 .H...P......H...
0000000000447980 BC DE 02 00 EB F1                               ......         

l0000000000447986:
	mov	r8,rdx
	lea	rcx,[000000000048DEC8]                                 ; [rip+00046538]
	lea	rdx,[000000000048DEB2]                                 ; [rip+0004651B]
	call	471560h
	mov	rbx,rax
	call	475A70h
	mov	rcx,rbx
	call	4115B0h
	nop
	nop
	nop
	nop

;; fn00000000004479B0: 00000000004479B0
;;   Called from:
;;     00000000004479AF (in fn00000000004472D0)
fn00000000004479B0 proc
	push	rbx
	sub	rsp,50h
	mov	rax,[rdx]
	mov	rbx,rcx
	mov	rcx,[rsp+90h]
	movzx	r9d,r9b
	movdqu	xmm1,[r8]
	lea	r8,[rsp+40h]
	mov	[rsp+30h],rcx
	movzx	ecx,word ptr [rsp+88h]
	movaps	[rsp+40h],xmm1
	mov	[rsp+28h],ecx
	mov	rcx,[rsp+80h]
	mov	[rsp+20h],rcx
	mov	rcx,rbx
	call	qword ptr [rax+18h]
	mov	rax,rbx
	add	rsp,50h
	pop	rbx
	ret
0000000000447A03          90 90 90 90 90 90 90 90 90 90 90 90 90    .............

;; fn0000000000447A10: 0000000000447A10
fn0000000000447A10 proc
	push	rbx
	sub	rsp,60h
	mov	rax,[rsp+0A0h]
	mov	rbx,rcx
	lea	rcx,[rsp+40h]
	movzx	r9d,r9b
	movdqu	xmm1,[r8]
	lea	r8,[rsp+50h]
	fld	tword ptr [rax]
	mov	[rsp+30h],rcx
	movzx	ecx,word ptr [rsp+98h]
	mov	rax,[rdx]
	mov	[rsp+28h],ecx
	mov	rcx,[rsp+90h]
	mov	[rsp+20h],rcx
	mov	rcx,rbx
	movaps	[rsp+50h],xmm1
	fstp	tword ptr [rsp+40h]
	call	qword ptr [rax+10h]
	mov	rax,rbx
	add	rsp,60h
	pop	rbx
	ret
0000000000447A6E                                           90 90               ..

;; fn0000000000447A70: 0000000000447A70
fn0000000000447A70 proc
	push	rbx
	sub	rsp,40h
	mov	rax,[rsp+80h]
	movdqu	xmm1,[r8]
	test	r9b,r9b
	mov	rbx,rcx
	mov	r8d,[rsp+78h]
	mov	r9,[rsp+70h]
	movaps	[rsp+30h],xmm1
	mov	[rsp+28h],rax
	movzx	r8d,r8w
	mov	[rsp+20h],r8d
	lea	r8,[rsp+30h]
	jnz	447AC0h

l0000000000447AAC:
	call	447CD0h
	mov	rax,rbx
	add	rsp,40h
	pop	rbx
	ret
0000000000447ABA                               66 0F 1F 44 00 00           f..D..

l0000000000447AC0:
	call	4484C0h
	mov	rax,rbx
	add	rsp,40h
	pop	rbx
	ret
0000000000447ACE                                           90 90               ..

;; fn0000000000447AD0: 0000000000447AD0
fn0000000000447AD0 proc
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
	movaps	[rbp+20h],xmm7
	mov	r15,rcx
	mov	rcx,rbp
	mov	rdi,rbp
	mov	eax,[rbp+0A8h]
	mov	[rbp+88h],rdx
	movdqu	xmm7,[r8]
	mov	[rbp-44h],r9d
	mov	[rbp-48h],eax
	mov	rax,[rbp+0B0h]
	fld	tword ptr [rax]
	mov	rax,[rbp+0A0h]
	lea	rdx,[rax+0D0h]
	fstp	tword ptr [rbp-40h]
	call	46AE80h
	mov	rcx,rbp
	call	473020h
	sub	rsp,50h
	mov	r14,rax
	lea	rbx,[rsp+30h]
	mov	r12,rbx
	call	46AC50h
	fld	tword ptr [rbp-40h]
	lea	rsi,[rbp+10h]
	lea	r13,[rbp-20h]
	lea	r9,[000000000048DBD8]                                  ; [rip+0004607A]
	mov	dword ptr [rsp+20h],0h
	mov	r8d,40h
	mov	rdx,rbx
	mov	[rsp+28h],r13
	mov	rcx,rsi
	mov	[rbp+10h],rax
	fstp	tword ptr [rbp-20h]
	call	46FF90h
	cmp	eax,3Fh
	jle	447BDAh

l0000000000447B88:
	add	eax,1h
	mov	[rbp-4Ch],eax
	cdqe
	add	rax,1Eh
	and	rax,0F0h
	call	4116F0h
	sub	rsp,rax
	lea	rbx,[rsp+30h]
	mov	r12,rbx
	call	46AC50h
	fld	tword ptr [rbp-40h]
	mov	r8d,[rbp-4Ch]
	lea	r9,[000000000048DBD8]                                  ; [rip+0004601D]
	mov	[rsp+28h],r13
	mov	dword ptr [rsp+20h],0h
	mov	rdx,rbx
	mov	rcx,rsi
	mov	[rbp+10h],rax
	fstp	tword ptr [rbp-20h]
	call	46FF90h

l0000000000447BDA:
	lea	r13,[rbp-1h]
	movsxd	rbx,eax
	xor	r8d,r8d
	mov	rdx,rbx
	mov	rcx,rsi
	mov	r9,r13
	call	44AAA0h
	mov	r9,[rbp+10h]
	mov	eax,[r9-8h]
	test	eax,eax
	js	447C0Ah

l0000000000447BFE:
	mov	rcx,rsi
	call	448E80h
	mov	r9,[rbp+10h]

l0000000000447C0A:
	mov	rax,[r14]
	lea	r8,[r12+rbx]
	mov	rdx,r12
	mov	rcx,r14
	call	qword ptr [rax+58h]
	movzx	eax,word ptr [rbp-48h]
	cmp	byte ptr [rbp-44h],0h
	lea	r8,[rbp-30h]
	movaps	[rbp-30h],xmm7
	mov	[rsp+28h],rsi
	mov	r9,[rbp+0A0h]
	mov	rcx,r15
	mov	[rsp+20h],eax
	mov	rdx,[rbp+88h]
	jz	447C80h

l0000000000447C46:
	call	4484C0h

l0000000000447C4B:
	mov	rcx,[rbp+10h]
	mov	eax,0FFFFFFFFh
	lock
	xadd	[rcx-8h],eax
	test	eax,eax
	jle	447C90h

l0000000000447C5D:
	mov	rcx,rdi
	call	46AF20h
	nop
	movaps	xmm7,[rbp+20h]
	mov	rax,r15
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
0000000000447C7E                                           66 90               f.

l0000000000447C80:
	call	447CD0h
	jmp	447C4Bh
0000000000447C87                      66 0F 1F 84 00 00 00 00 00        f........

l0000000000447C90:
	sub	rcx,18h
	mov	rdx,r13
	call	449360h
	jmp	447C5Dh
0000000000447C9E                                           48 89               H.
0000000000447CA0 C3 48 89 F9 E8 77 32 02 00 48 89 D9 E8 FF 98 FC .H...w2..H......
0000000000447CB0 FF 48 89 C3 48 8B 45 10 4C 89 EA 48 8D 48 E8 E8 .H..H.E.L..H.H..
0000000000447CC0 AC 16 00 00 EB DB 90 90 90 90 90 90 90 90 90 90 ................

;; fn0000000000447CD0: 0000000000447CD0
;;   Called from:
;;     0000000000447AAC (in fn0000000000447A70)
;;     0000000000447C80 (in fn0000000000447AD0)
fn0000000000447CD0 proc
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,+0D8h
	mov	rax,[r8]
	mov	rbp,[r8+8h]
	lea	r14,[r9+0D0h]
	mov	r15,rcx
	mov	rdi,r9
	mov	[rsp+30h],rax
	mov	eax,[rsp+140h]
	mov	rcx,r14
	mov	[rsp+61h],bpl
	mov	[rsp+64h],eax
	mov	[rsp+62h],ax
	call	473020h
	lea	rcx,[000000000048B2D0]                                 ; [rip+000435B0]
	mov	r12,rax
	call	42BB80h
	mov	r13,rax
	mov	rax,[rdi+0D0h]
	mov	rax,[rax+18h]
	lea	rsi,[rax+r13*8]
	mov	rbx,[rsi]
	test	rbx,rbx
	jz	448300h

l0000000000447D46:
	mov	rax,[rsp+148h]
	mov	rsi,[rax]
	movzx	eax,word ptr [rbx+64h]
	cmp	[rsi],ax
	jz	448260h

l0000000000447D5E:
	mov	eax,[rbx+5Ch]
	mov	[rsp+0A0h],eax
	mov	rax,[rbx+38h]
	mov	[rsp+58h],rax
	mov	rax,[rbx+40h]
	mov	[rsp+38h],rax
	mov	rax,[rsi-18h]

l0000000000447D7E:
	mov	r10,[r12]
	mov	rcx,r12
	lea	r9,[rsi+rax*2]
	mov	r8,rsi
	mov	edx,8h
	call	qword ptr [r10+28h]
	sub	rax,rsi
	mov	r14,rax
	mov	r12,rax
	sar	r14,1h
	jnz	447DD3h

l0000000000447DA3:
	mov	rax,[rsp+30h]
	mov	bpl,[rsp+61h]
	mov	qword ptr [rdi+10h],+0h
	mov	[r15],rax
	mov	rax,r15
	mov	[r15+8h],rbp
	add	rsp,+0D8h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret

l0000000000447DD3:
	lea	rax,[rsp+0C0h]
	xor	edx,edx
	xor	ecx,ecx
	mov	r8,rax
	mov	[rsp+40h],rax
	call	448EB0h
	mov	[rsp+0B0h],rax
	lea	rax,[rsp+0B0h]
	mov	rdx,r12
	mov	rcx,rax
	mov	[rsp+48h],rax
	call	44A5D0h
	mov	eax,[rbx+58h]
	mov	r12d,r14d
	sub	r12d,eax
	test	r12d,r12d
	jle	447F0Dh

l0000000000447E1E:
	test	eax,eax
	cmovs	r12d,r14d

l0000000000447E24:
	cmp	qword ptr [rbx+18h],0h
	jz	4482A0h

l0000000000447E2F:
	mov	rax,[rsp+0B0h]
	lea	r13d,[r12]
	mov	rcx,[rsp+48h]
	xor	edx,edx
	movsxd	r13,r13d
	mov	r8,[rax-18h]
	mov	r9,r13
	mov	dword ptr [rsp+20h],0h
	call	4491E0h
	lea	rax,[rsi+r13]
	mov	rcx,[rsp+0B0h]
	movzx	r13d,word ptr [rbx+24h]
	mov	[rsp+50h],rax
	mov	rax,[rbx+18h]
	mov	r8d,[rcx-8h]
	mov	[rsp+68h],rax
	mov	rax,[rbx+10h]
	test	r8d,r8d
	mov	[rsp+70h],rax
	js	447E9Ch

l0000000000447E8A:
	mov	rcx,[rsp+48h]
	call	448E80h
	mov	rcx,[rsp+0B0h]

l0000000000447E9C:
	mov	rax,[rsp+50h]
	mov	r9,[rsp+68h]
	mov	edx,r13d
	mov	r8,[rsp+70h]
	mov	[rsp+20h],rsi
	mov	[rsp+28h],rax
	call	46F950h
	mov	r13,rax
	mov	rax,[rsp+0B0h]
	mov	edx,[rax-8h]
	test	edx,edx
	js	447EE1h

l0000000000447ECF:
	mov	rcx,[rsp+48h]
	call	448E80h
	mov	rax,[rsp+0B0h]

l0000000000447EE1:
	mov	r9,[rax-18h]
	mov	rdx,r13
	sub	rdx,rax
	sar	rdx,1h
	mov	r8,r9
	sub	r8,rdx
	cmp	rdx,r9
	ja	44842Ch

l0000000000447EFD:
	mov	rcx,[rsp+48h]
	xor	r9d,r9d
	call	44A6C0h
	mov	eax,[rbx+58h]

l0000000000447F0D:
	test	eax,eax
	jle	447F87h

l0000000000447F11:
	movzx	eax,word ptr [rbx+22h]
	mov	[rsp+50h],ax
	mov	rax,[rsp+0B0h]
	mov	rdx,[rax-18h]
	lea	r13,[rdx+1h]
	cmp	r13,[rax-10h]
	jbe	4482C0h

l0000000000447F34:
	mov	rcx,[rsp+48h]
	mov	rdx,r13
	call	44A5D0h
	mov	rax,[rsp+0B0h]
	mov	rdx,[rax-18h]

l0000000000447F4D:
	movzx	ecx,word ptr [rsp+50h]
	xor	r10d,r10d
	test	r12d,r12d
	mov	[rax+rdx*2],cx
	mov	dword ptr [rax-8h],0h
	mov	[rax-18h],r13
	mov	[rax+r13*2],r10w
	js	4483E0h

l0000000000447F72:
	movsxd	r8,dword ptr [rbx+58h]
	movsxd	r12,r12d
	mov	rcx,[rsp+48h]
	lea	rdx,[rsi]
	call	449740h

l0000000000447F87:
	mov	eax,[rdi+18h]
	mov	rdx,[rsp+0B0h]
	xor	r14d,r14d
	mov	ecx,eax
	and	ecx,0B0h
	mov	[rsp+68h],ecx
	mov	rcx,[rsp+38h]
	add	rcx,[rdx-18h]
	test	ah,2h
	mov	rdx,rcx
	jnz	448290h

l0000000000447FB6:
	lea	rax,[rsp+9Fh]
	add	r14,rdx
	xor	ecx,ecx
	xor	edx,edx
	mov	r8,rax
	mov	[rsp+80h],rax
	call	448EB0h
	mov	rcx,[rsp+40h]
	lea	rdx,[r14+r14]
	mov	[rsp+0C0h],rax
	call	44A5D0h
	mov	rax,[rdi+10h]
	lea	r12,[rsp+0A0h]
	lea	r13,[000000000048DBC4]                                 ; [rip+00045BC6]
	cmp	r14,rax
	mov	rcx,rax
	mov	[rsp+50h],rax
	setc	dl
	cmp	dword ptr [rsp+68h],10h
	setz	al
	xor	esi,esi
	and	edx,eax
	movzx	eax,word ptr [rsp+62h]
	mov	[rsp+70h],dl
	mov	[rsp+88h],eax
	mov	rax,rcx
	sub	rax,r14
	mov	[rsp+78h],rax

l0000000000448033:
	cmp	byte ptr [r12+rsi],4h
	ja	448170h

l000000000044803E:
	movzx	eax,byte ptr [r12+rsi]
	movsxd	rax,dword ptr [r13+rax*4+0h]
	add	rax,r13
	jmp	rax
000000000044804D                                        0F 1F 00              ...
0000000000448050 48 83 7C 24 38 00 0F 84 14 01 00 00 48 8B 44 24 H.|$8.......H.D$
0000000000448060 58 0F B7 00 66 89 84 24 8E 00 00 00 48 8B 84 24 X...f..$....H..$
0000000000448070 C0 00 00 00 48 8B 50 E8 4C 8D 72 01 4C 3B 70 F0 ....H.P.L.r.L;p.
0000000000448080 0F 86 8A 03 00 00 48 8B 4C 24 40 4C 89 F2 E8 3D ......H.L$@L...=
0000000000448090 25 00 00 48 8B 84 24 C0 00 00 00 48 8B 50 E8 0F %..H..$....H.P..
00000000004480A0 B7 8C 24 8E 00 00 00 45 31 C0 66 89 0C 50 C7 40 ..$....E1.f..P.@
00000000004480B0 F8 00 00 00 00 4C 89 70 E8 66 46 89 04 70 E9 AD .....L.p.fF..p..
00000000004480C0 00 00 00 F6 47 19 02 0F 84 A3 00 00 00 48 8B 53 ....G........H.S
00000000004480D0 28 4C 8B 43 30 48 8B 4C 24 40 E8 61 16 00 00 E9 (L.C0H.L$@.a....
00000000004480E0 8C 00 00 00 80 7C 24 70 00 75 5C 48 8B 84 24 C0 .....|$p.u\H..$.
00000000004480F0 00 00 00 48 8B 50 E8 4C 8D 72 01 4C 3B 70 F0 77 ...H.P.L.r.L;p.w
0000000000448100 07 8B 48 F8 85 C9 7E 19 48 8B 4C 24 40 4C 89 F2 ..H...~.H.L$@L..
0000000000448110 E8 BB 24 00 00 48 8B 84 24 C0 00 00 00 48 8B 50 ..$..H..$....H.P
0000000000448120 E8 0F B7 4C 24 62 66 89 0C 50 31 D2 C7 40 F8 00 ...L$bf..P1..@..
0000000000448130 00 00 00 4C 89 70 E8 66 42 89 14 70 EB 32 66 90 ...L.p.fB..p.2f.
0000000000448140 80 7C 24 70 00 74 29 44 8B 84 24 88 00 00 00 48 .|$p.t)D..$....H
0000000000448150 8B 54 24 78 48 8B 4C 24 40 E8 72 18 00 00 EB 10 .T$xH.L$@.r.....
0000000000448160 48 8B 54 24 48 48 8B 4C 24 40 E8 D1 16 00 00 90 H.T$HH.L$@......

l0000000000448170:
	add	rsi,1h
	cmp	rsi,4h
	jnz	448033h

l000000000044817E:
	cmp	qword ptr [rsp+38h],1h
	jbe	4481A2h

l0000000000448186:
	mov	rax,[rsp+38h]
	mov	rdx,[rsp+58h]
	mov	rcx,[rsp+40h]
	lea	r8,[rax-1h]
	add	rdx,2h
	call	449740h

l00000000004481A2:
	mov	rdx,[rsp+0C0h]
	mov	rax,[rdx-18h]
	cmp	[rsp+50h],rax
	jbe	4482F0h

l00000000004481B9:
	cmp	dword ptr [rsp+68h],20h
	jz	4482D2h

l00000000004481C4:
	movzx	edx,word ptr [rsp+64h]
	mov	r9,[rsp+50h]
	xor	r8d,r8d
	mov	rcx,[rsp+40h]
	sub	r9,rax
	mov	[rsp+20h],edx
	xor	edx,edx
	call	4491E0h

l00000000004481E4:
	mov	rdx,[rsp+0C0h]

l00000000004481EC:
	cmp	byte ptr [rsp+61h],0h
	movsxd	rbx,dword ptr [rsp+50h]
	jnz	448217h

l00000000004481F8:
	mov	rcx,[rsp+30h]
	mov	r8,rbx
	mov	rax,[rcx]
	call	qword ptr [rax+60h]
	cmp	rbx,rax
	mov	rdx,[rsp+0C0h]
	jnz	448422h

l0000000000448217:
	mov	eax,0FFFFFFFFh
	lock
	xadd	[rdx-8h],eax
	test	eax,eax
	jle	4483C2h

l0000000000448229:
	mov	rcx,[rsp+0B0h]
	mov	eax,0FFFFFFFFh
	lock
	xadd	[rcx-8h],eax
	test	eax,eax
	jg	447DA3h

l0000000000448243:
	mov	rdx,[rsp+40h]
	sub	rcx,18h
	call	449360h
	jmp	447DA3h
0000000000448256                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l0000000000448260:
	mov	eax,[rbx+60h]
	lea	rdx,[rsi+2h]
	mov	[rsp+0A0h],eax
	mov	rax,[rbx+48h]
	mov	[rsp+58h],rax
	mov	rax,[rbx+50h]
	mov	[rsp+38h],rax
	mov	rax,[rsi-18h]
	test	rax,rax
	cmovnz	rsi,rdx

l000000000044828B:
	jmp	447D7Eh

l0000000000448290:
	mov	r14,[rbx+30h]
	jmp	447FB6h
0000000000448299                            0F 1F 80 00 00 00 00          .......

l00000000004482A0:
	mov	rcx,[rsp+48h]
	movsxd	r8,r12d
	mov	rdx,rsi
	call	449B10h
	mov	eax,[rbx+58h]
	jmp	447F0Dh
00000000004482B8                         0F 1F 84 00 00 00 00 00         ........

l00000000004482C0:
	mov	r11d,[rax-8h]
	test	r11d,r11d
	jg	447F34h

l00000000004482CD:
	jmp	447F4Dh

l00000000004482D2:
	mov	rdx,[rsp+50h]
	movzx	r8d,word ptr [rsp+64h]
	mov	rcx,[rsp+40h]
	sub	rdx,rax
	call	4499D0h
	jmp	4481E4h
00000000004482EF                                              90                .

l00000000004482F0:
	mov	[rsp+50h],rax
	jmp	4481ECh
00000000004482FA                               66 0F 1F 44 00 00           f..D..

l0000000000448300:
	mov	ecx,80h
	call	475590h
	mov	rbx,rax
	mov	dword ptr [rax+8h],0h
	lea	rax,[00000000004976D0]                                 ; [rip+0004F3B5]
	xor	r9d,r9d
	xor	r10d,r10d
	mov	qword ptr [rbx+10h],+0h
	mov	[rbx],rax
	mov	qword ptr [rbx+18h],+0h
	mov	rdx,r14
	mov	byte ptr [rbx+20h],0h
	mov	[rbx+22h],r9w
	mov	rcx,rbx
	mov	[rbx+24h],r10w
	mov	qword ptr [rbx+28h],+0h
	mov	qword ptr [rbx+30h],+0h
	mov	qword ptr [rbx+38h],+0h
	mov	qword ptr [rbx+40h],+0h
	mov	qword ptr [rbx+48h],+0h
	mov	qword ptr [rbx+50h],+0h
	mov	dword ptr [rbx+58h],0h
	mov	byte ptr [rbx+5Ch],0h
	mov	byte ptr [rbx+5Dh],0h
	mov	byte ptr [rbx+5Eh],0h
	mov	byte ptr [rbx+5Fh],0h
	mov	byte ptr [rbx+60h],0h
	mov	byte ptr [rbx+61h],0h
	mov	byte ptr [rbx+62h],0h
	mov	byte ptr [rbx+63h],0h
	mov	byte ptr [rbx+7Ah],0h
	call	467480h
	mov	rcx,[rdi+0D0h]
	mov	rdx,rbx
	mov	r8,r13
	call	469430h
	mov	rbx,[rsi]
	jmp	447D46h

l00000000004483C2:
	lea	rcx,[rdx-18h]
	mov	rdx,[rsp+80h]
	call	449360h
	jmp	448229h
00000000004483D8                         0F 1F 84 00 00 00 00 00         ........

l00000000004483E0:
	mov	r13,[rsp+48h]
	movzx	r8d,word ptr [rbx+66h]
	neg	r12d
	movsxd	rdx,r12d
	mov	rcx,r13
	call	4499D0h
	mov	r8,r14
	mov	rdx,rsi
	mov	rcx,r13
	call	449740h
	jmp	447F87h
000000000044840B                                  0F 1F 44 00 00            ..D..
0000000000448410 44 8B 48 F8 45 85 C9 0F 8F 69 FC FF FF E9 7D FC D.H.E....i....}.
0000000000448420 FF FF                                           ..             

l0000000000448422:
	mov	byte ptr [rsp+61h],1h
	jmp	448217h

l000000000044842C:
	mov	r8,rdx
	lea	rcx,[000000000048DB78]                                 ; [rip+00045742]
	lea	rdx,[000000000048DB62]                                 ; [rip+00045725]
	call	471560h
	mov	rbx,rax

l0000000000448445:
	mov	rax,[rsp+0B0h]
	mov	rdx,[rsp+40h]
	lea	rcx,[rax-18h]
	call	449370h
	mov	rcx,rbx
	call	4115B0h
	mov	rbx,rax
	mov	rax,[rsp+0C0h]
	mov	rdx,[rsp+80h]
	lea	rcx,[rax-18h]
	call	449370h
	jmp	448445h
0000000000448481    48 89 C1 E8 B7 D3 02 00 48 8B 03 48 89 D9 FF  H.......H..H...
0000000000448490 50 08 E8 C9 DB 02 00 48 89 C1 E8 A1 D3 02 00 EB P......H........
00000000004484A0 F1 48 89 C3 E8 C7 D5 02 00 48 89 D9 E8 FF 90 FC .H.......H......
00000000004484B0 FF 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 ................

;; fn00000000004484C0: 00000000004484C0
;;   Called from:
;;     0000000000447AC0 (in fn0000000000447A70)
;;     0000000000447C46 (in fn0000000000447AD0)
fn00000000004484C0 proc
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,+0D8h
	mov	rax,[r8]
	mov	rbp,[r8+8h]
	lea	r14,[r9+0D0h]
	mov	r15,rcx
	mov	rdi,r9
	mov	[rsp+30h],rax
	mov	eax,[rsp+140h]
	mov	rcx,r14
	mov	[rsp+61h],bpl
	mov	[rsp+64h],eax
	mov	[rsp+62h],ax
	call	473020h
	lea	rcx,[000000000048B2E0]                                 ; [rip+00042DD0]
	mov	r12,rax
	call	42BB80h
	mov	r13,rax
	mov	rax,[rdi+0D0h]
	mov	rax,[rax+18h]
	lea	rsi,[rax+r13*8]
	mov	rbx,[rsi]
	test	rbx,rbx
	jz	448AF0h

l0000000000448536:
	mov	rax,[rsp+148h]
	mov	rsi,[rax]
	movzx	eax,word ptr [rbx+64h]
	cmp	[rsi],ax
	jz	448A50h

l000000000044854E:
	mov	eax,[rbx+5Ch]
	mov	[rsp+0A0h],eax
	mov	rax,[rbx+38h]
	mov	[rsp+58h],rax
	mov	rax,[rbx+40h]
	mov	[rsp+38h],rax
	mov	rax,[rsi-18h]

l000000000044856E:
	mov	r10,[r12]
	mov	rcx,r12
	lea	r9,[rsi+rax*2]
	mov	r8,rsi
	mov	edx,8h
	call	qword ptr [r10+28h]
	sub	rax,rsi
	mov	r14,rax
	mov	r12,rax
	sar	r14,1h
	jnz	4485C3h

l0000000000448593:
	mov	rax,[rsp+30h]
	mov	bpl,[rsp+61h]
	mov	qword ptr [rdi+10h],+0h
	mov	[r15],rax
	mov	rax,r15
	mov	[r15+8h],rbp
	add	rsp,+0D8h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret

l00000000004485C3:
	lea	rax,[rsp+0C0h]
	xor	edx,edx
	xor	ecx,ecx
	mov	r8,rax
	mov	[rsp+40h],rax
	call	448EB0h
	mov	[rsp+0B0h],rax
	lea	rax,[rsp+0B0h]
	mov	rdx,r12
	mov	rcx,rax
	mov	[rsp+48h],rax
	call	44A5D0h
	mov	eax,[rbx+58h]
	mov	r12d,r14d
	sub	r12d,eax
	test	r12d,r12d
	jle	4486FDh

l000000000044860E:
	test	eax,eax
	cmovs	r12d,r14d

l0000000000448614:
	cmp	qword ptr [rbx+18h],0h
	jz	448A90h

l000000000044861F:
	mov	rax,[rsp+0B0h]
	lea	r13d,[r12]
	mov	rcx,[rsp+48h]
	xor	edx,edx
	movsxd	r13,r13d
	mov	r8,[rax-18h]
	mov	r9,r13
	mov	dword ptr [rsp+20h],0h
	call	4491E0h
	lea	rax,[rsi+r13]
	mov	rcx,[rsp+0B0h]
	movzx	r13d,word ptr [rbx+24h]
	mov	[rsp+50h],rax
	mov	rax,[rbx+18h]
	mov	r8d,[rcx-8h]
	mov	[rsp+68h],rax
	mov	rax,[rbx+10h]
	test	r8d,r8d
	mov	[rsp+70h],rax
	js	44868Ch

l000000000044867A:
	mov	rcx,[rsp+48h]
	call	448E80h
	mov	rcx,[rsp+0B0h]

l000000000044868C:
	mov	rax,[rsp+50h]
	mov	r9,[rsp+68h]
	mov	edx,r13d
	mov	r8,[rsp+70h]
	mov	[rsp+20h],rsi
	mov	[rsp+28h],rax
	call	46F950h
	mov	r13,rax
	mov	rax,[rsp+0B0h]
	mov	edx,[rax-8h]
	test	edx,edx
	js	4486D1h

l00000000004486BF:
	mov	rcx,[rsp+48h]
	call	448E80h
	mov	rax,[rsp+0B0h]

l00000000004486D1:
	mov	r9,[rax-18h]
	mov	rdx,r13
	sub	rdx,rax
	sar	rdx,1h
	mov	r8,r9
	sub	r8,rdx
	cmp	rdx,r9
	ja	448C1Ch

l00000000004486ED:
	mov	rcx,[rsp+48h]
	xor	r9d,r9d
	call	44A6C0h
	mov	eax,[rbx+58h]

l00000000004486FD:
	test	eax,eax
	jle	448777h

l0000000000448701:
	movzx	eax,word ptr [rbx+22h]
	mov	[rsp+50h],ax
	mov	rax,[rsp+0B0h]
	mov	rdx,[rax-18h]
	lea	r13,[rdx+1h]
	cmp	r13,[rax-10h]
	jbe	448AB0h

l0000000000448724:
	mov	rcx,[rsp+48h]
	mov	rdx,r13
	call	44A5D0h
	mov	rax,[rsp+0B0h]
	mov	rdx,[rax-18h]

l000000000044873D:
	movzx	ecx,word ptr [rsp+50h]
	xor	r10d,r10d
	test	r12d,r12d
	mov	[rax+rdx*2],cx
	mov	dword ptr [rax-8h],0h
	mov	[rax-18h],r13
	mov	[rax+r13*2],r10w
	js	448BD0h

l0000000000448762:
	movsxd	r8,dword ptr [rbx+58h]
	movsxd	r12,r12d
	mov	rcx,[rsp+48h]
	lea	rdx,[rsi]
	call	449740h

l0000000000448777:
	mov	eax,[rdi+18h]
	mov	rdx,[rsp+0B0h]
	xor	r14d,r14d
	mov	ecx,eax
	and	ecx,0B0h
	mov	[rsp+68h],ecx
	mov	rcx,[rsp+38h]
	add	rcx,[rdx-18h]
	test	ah,2h
	mov	rdx,rcx
	jnz	448A80h

l00000000004487A6:
	lea	rax,[rsp+9Fh]
	add	r14,rdx
	xor	ecx,ecx
	xor	edx,edx
	mov	r8,rax
	mov	[rsp+80h],rax
	call	448EB0h
	mov	rcx,[rsp+40h]
	lea	rdx,[r14+r14]
	mov	[rsp+0C0h],rax
	call	44A5D0h
	mov	rax,[rdi+10h]
	lea	r12,[rsp+0A0h]
	lea	r13,[000000000048DBB0]                                 ; [rip+000453C2]
	cmp	r14,rax
	mov	rcx,rax
	mov	[rsp+50h],rax
	setc	dl
	cmp	dword ptr [rsp+68h],10h
	setz	al
	xor	esi,esi
	and	edx,eax
	movzx	eax,word ptr [rsp+62h]
	mov	[rsp+70h],dl
	mov	[rsp+88h],eax
	mov	rax,rcx
	sub	rax,r14
	mov	[rsp+78h],rax

l0000000000448823:
	cmp	byte ptr [r12+rsi],4h
	ja	448960h

l000000000044882E:
	movzx	eax,byte ptr [r12+rsi]
	movsxd	rax,dword ptr [r13+rax*4+0h]
	add	rax,r13
	jmp	rax
000000000044883D                                        0F 1F 00              ...
0000000000448840 48 83 7C 24 38 00 0F 84 14 01 00 00 48 8B 44 24 H.|$8.......H.D$
0000000000448850 58 0F B7 00 66 89 84 24 8E 00 00 00 48 8B 84 24 X...f..$....H..$
0000000000448860 C0 00 00 00 48 8B 50 E8 4C 8D 72 01 4C 3B 70 F0 ....H.P.L.r.L;p.
0000000000448870 0F 86 8A 03 00 00 48 8B 4C 24 40 4C 89 F2 E8 4D ......H.L$@L...M
0000000000448880 1D 00 00 48 8B 84 24 C0 00 00 00 48 8B 50 E8 0F ...H..$....H.P..
0000000000448890 B7 8C 24 8E 00 00 00 45 31 C0 66 89 0C 50 C7 40 ..$....E1.f..P.@
00000000004488A0 F8 00 00 00 00 4C 89 70 E8 66 46 89 04 70 E9 AD .....L.p.fF..p..
00000000004488B0 00 00 00 F6 47 19 02 0F 84 A3 00 00 00 48 8B 53 ....G........H.S
00000000004488C0 28 4C 8B 43 30 48 8B 4C 24 40 E8 71 0E 00 00 E9 (L.C0H.L$@.q....
00000000004488D0 8C 00 00 00 80 7C 24 70 00 75 5C 48 8B 84 24 C0 .....|$p.u\H..$.
00000000004488E0 00 00 00 48 8B 50 E8 4C 8D 72 01 4C 3B 70 F0 77 ...H.P.L.r.L;p.w
00000000004488F0 07 8B 48 F8 85 C9 7E 19 48 8B 4C 24 40 4C 89 F2 ..H...~.H.L$@L..
0000000000448900 E8 CB 1C 00 00 48 8B 84 24 C0 00 00 00 48 8B 50 .....H..$....H.P
0000000000448910 E8 0F B7 4C 24 62 66 89 0C 50 31 D2 C7 40 F8 00 ...L$bf..P1..@..
0000000000448920 00 00 00 4C 89 70 E8 66 42 89 14 70 EB 32 66 90 ...L.p.fB..p.2f.
0000000000448930 80 7C 24 70 00 74 29 44 8B 84 24 88 00 00 00 48 .|$p.t)D..$....H
0000000000448940 8B 54 24 78 48 8B 4C 24 40 E8 82 10 00 00 EB 10 .T$xH.L$@.......
0000000000448950 48 8B 54 24 48 48 8B 4C 24 40 E8 E1 0E 00 00 90 H.T$HH.L$@......

l0000000000448960:
	add	rsi,1h
	cmp	rsi,4h
	jnz	448823h

l000000000044896E:
	cmp	qword ptr [rsp+38h],1h
	jbe	448992h

l0000000000448976:
	mov	rax,[rsp+38h]
	mov	rdx,[rsp+58h]
	mov	rcx,[rsp+40h]
	lea	r8,[rax-1h]
	add	rdx,2h
	call	449740h

l0000000000448992:
	mov	rdx,[rsp+0C0h]
	mov	rax,[rdx-18h]
	cmp	[rsp+50h],rax
	jbe	448AE0h

l00000000004489A9:
	cmp	dword ptr [rsp+68h],20h
	jz	448AC2h

l00000000004489B4:
	movzx	edx,word ptr [rsp+64h]
	mov	r9,[rsp+50h]
	xor	r8d,r8d
	mov	rcx,[rsp+40h]
	sub	r9,rax
	mov	[rsp+20h],edx
	xor	edx,edx
	call	4491E0h

l00000000004489D4:
	mov	rdx,[rsp+0C0h]

l00000000004489DC:
	cmp	byte ptr [rsp+61h],0h
	movsxd	rbx,dword ptr [rsp+50h]
	jnz	448A07h

l00000000004489E8:
	mov	rcx,[rsp+30h]
	mov	r8,rbx
	mov	rax,[rcx]
	call	qword ptr [rax+60h]
	cmp	rbx,rax
	mov	rdx,[rsp+0C0h]
	jnz	448C12h

l0000000000448A07:
	mov	eax,0FFFFFFFFh
	lock
	xadd	[rdx-8h],eax
	test	eax,eax
	jle	448BB2h

l0000000000448A19:
	mov	rcx,[rsp+0B0h]
	mov	eax,0FFFFFFFFh
	lock
	xadd	[rcx-8h],eax
	test	eax,eax
	jg	448593h

l0000000000448A33:
	mov	rdx,[rsp+40h]
	sub	rcx,18h
	call	449360h
	jmp	448593h
0000000000448A46                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l0000000000448A50:
	mov	eax,[rbx+60h]
	lea	rdx,[rsi+2h]
	mov	[rsp+0A0h],eax
	mov	rax,[rbx+48h]
	mov	[rsp+58h],rax
	mov	rax,[rbx+50h]
	mov	[rsp+38h],rax
	mov	rax,[rsi-18h]
	test	rax,rax
	cmovnz	rsi,rdx

l0000000000448A7B:
	jmp	44856Eh

l0000000000448A80:
	mov	r14,[rbx+30h]
	jmp	4487A6h
0000000000448A89                            0F 1F 80 00 00 00 00          .......

l0000000000448A90:
	mov	rcx,[rsp+48h]
	movsxd	r8,r12d
	mov	rdx,rsi
	call	449B10h
	mov	eax,[rbx+58h]
	jmp	4486FDh
0000000000448AA8                         0F 1F 84 00 00 00 00 00         ........

l0000000000448AB0:
	mov	r11d,[rax-8h]
	test	r11d,r11d
	jg	448724h

l0000000000448ABD:
	jmp	44873Dh

l0000000000448AC2:
	mov	rdx,[rsp+50h]
	movzx	r8d,word ptr [rsp+64h]
	mov	rcx,[rsp+40h]
	sub	rdx,rax
	call	4499D0h
	jmp	4489D4h
0000000000448ADF                                              90                .

l0000000000448AE0:
	mov	[rsp+50h],rax
	jmp	4489DCh
0000000000448AEA                               66 0F 1F 44 00 00           f..D..

l0000000000448AF0:
	mov	ecx,80h
	call	475590h
	mov	rbx,rax
	mov	dword ptr [rax+8h],0h
	lea	rax,[00000000004976F0]                                 ; [rip+0004EBE5]
	xor	r9d,r9d
	xor	r10d,r10d
	mov	qword ptr [rbx+10h],+0h
	mov	[rbx],rax
	mov	qword ptr [rbx+18h],+0h
	mov	rdx,r14
	mov	byte ptr [rbx+20h],0h
	mov	[rbx+22h],r9w
	mov	rcx,rbx
	mov	[rbx+24h],r10w
	mov	qword ptr [rbx+28h],+0h
	mov	qword ptr [rbx+30h],+0h
	mov	qword ptr [rbx+38h],+0h
	mov	qword ptr [rbx+40h],+0h
	mov	qword ptr [rbx+48h],+0h
	mov	qword ptr [rbx+50h],+0h
	mov	dword ptr [rbx+58h],0h
	mov	byte ptr [rbx+5Ch],0h
	mov	byte ptr [rbx+5Dh],0h
	mov	byte ptr [rbx+5Eh],0h
	mov	byte ptr [rbx+5Fh],0h
	mov	byte ptr [rbx+60h],0h
	mov	byte ptr [rbx+61h],0h
	mov	byte ptr [rbx+62h],0h
	mov	byte ptr [rbx+63h],0h
	mov	byte ptr [rbx+7Ah],0h
	call	467E10h
	mov	rcx,[rdi+0D0h]
	mov	rdx,rbx
	mov	r8,r13
	call	469430h
	mov	rbx,[rsi]
	jmp	448536h

l0000000000448BB2:
	lea	rcx,[rdx-18h]
	mov	rdx,[rsp+80h]
	call	449360h
	jmp	448A19h
0000000000448BC8                         0F 1F 84 00 00 00 00 00         ........

l0000000000448BD0:
	mov	r13,[rsp+48h]
	movzx	r8d,word ptr [rbx+66h]
	neg	r12d
	movsxd	rdx,r12d
	mov	rcx,r13
	call	4499D0h
	mov	r8,r14
	mov	rdx,rsi
	mov	rcx,r13
	call	449740h
	jmp	448777h
0000000000448BFB                                  0F 1F 44 00 00            ..D..
0000000000448C00 44 8B 48 F8 45 85 C9 0F 8F 69 FC FF FF E9 7D FC D.H.E....i....}.
0000000000448C10 FF FF                                           ..             

l0000000000448C12:
	mov	byte ptr [rsp+61h],1h
	jmp	448A07h

l0000000000448C1C:
	mov	r8,rdx
	lea	rcx,[000000000048DB78]                                 ; [rip+00044F52]
	lea	rdx,[000000000048DB62]                                 ; [rip+00044F35]
	call	471560h
	mov	rbx,rax

l0000000000448C35:
	mov	rax,[rsp+0B0h]
	mov	rdx,[rsp+40h]
	lea	rcx,[rax-18h]
	call	449370h
	mov	rcx,rbx
	call	4115B0h
	mov	rbx,rax
	mov	rax,[rsp+0C0h]
	mov	rdx,[rsp+80h]
	lea	rcx,[rax-18h]
	call	449370h
	jmp	448C35h
0000000000448C71    48 89 C1 E8 C7 CB 02 00 48 8B 03 48 89 D9 FF  H.......H..H...
0000000000448C80 50 08 E8 D9 D3 02 00 48 89 C1 E8 B1 CB 02 00 EB P......H........
0000000000448C90 F1 48 89 C3 E8 D7 CD 02 00 48 89 D9 E8 0F 89 FC .H.......H......
0000000000448CA0 FF 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 ................

;; fn0000000000448CB0: 0000000000448CB0
fn0000000000448CB0 proc
	jmp	448CF0h
0000000000448CB5                90 90 90 90 90 90 90 90 90 90 90      ...........

;; fn0000000000448CC0: 0000000000448CC0
fn0000000000448CC0 proc
	xor	eax,eax
	ret
0000000000448CC3          90 90 90 90 90 90 90 90 90 90 90 90 90    .............

;; fn0000000000448CD0: 0000000000448CD0
fn0000000000448CD0 proc
	xor	eax,eax
	ret
0000000000448CD3          90 90 90 90 90 90 90 90 90 90 90 90 90    .............

;; fn0000000000448CE0: 0000000000448CE0
fn0000000000448CE0 proc
	xor	eax,eax
	ret
0000000000448CE3          90 90 90 90 90 90 90 90 90 90 90 90 90    .............

;; fn0000000000448CF0: 0000000000448CF0
;;   Called from:
;;     0000000000426404 (in fn00000000004263F0)
;;     000000000042644C (in fn0000000000426440)
;;     00000000004264F2 (in fn00000000004264D0)
;;     000000000042652A (in fn00000000004264D0)
;;     00000000004265EF (in fn00000000004265B0)
;;     0000000000426696 (in fn00000000004265B0)
;;     00000000004266F1 (in fn00000000004266B0)
;;     00000000004268EA (in fn0000000000426720)
;;     00000000004269D8 (in fn0000000000426970)
;;     0000000000426EB0 (in fn0000000000426970)
;;     00000000004270C3 (in fn0000000000427000)
;;     0000000000448CB0 (in fn0000000000448CB0)
fn0000000000448CF0 proc
	sub	rsp,28h
	cmp	rdx,rcx
	jz	448D22h

l0000000000448CF9:
	mov	rcx,[rcx+8h]
	xor	eax,eax
	cmp	byte ptr [rcx],2Ah
	jz	448D1Dh

l0000000000448D04:
	mov	rdx,[rdx+8h]
	xor	eax,eax
	cmp	byte ptr [rdx],2Ah
	setz	al
	add	rdx,rax
	call	41BDB0h
	test	eax,eax
	setz	al

l0000000000448D1D:
	add	rsp,28h
	ret

l0000000000448D22:
	mov	eax,1h
	add	rsp,28h
	ret
0000000000448D2C                                     90 90 90 90             ....

;; fn0000000000448D30: 0000000000448D30
;;   Called from:
;;     0000000000454A40 (in fn0000000000454A30)
fn0000000000448D30 proc
	push	rbp
	mov	rbp,rsp
	sub	rsp,20h
	mov	[rbp+10h],rcx
	mov	rcx,[rbp+10h]
	call	424AF0h
	nop
	add	rsp,20h
	pop	rbp
	ret
0000000000448D4C                                     90 90 90 90             ....

;; fn0000000000448D50: 0000000000448D50
;;   Called from:
;;     0000000000454A80 (in fn0000000000454A70)
fn0000000000448D50 proc
	push	rbp
	mov	rbp,rsp
	sub	rsp,20h
	mov	[rbp+10h],rcx
	mov	rcx,[rbp+10h]
	call	424B00h
	nop
	add	rsp,20h
	pop	rbp
	ret
0000000000448D6C                                     90 90 90 90             ....

;; fn0000000000448D70: 0000000000448D70
fn0000000000448D70 proc
	ret
0000000000448D71    90 90 90 90 90 90 90 90 90 90 90 90 90 90 90  ...............

;; fn0000000000448D80: 0000000000448D80
;;   Called from:
;;     0000000000402946 (in fn000000000040252C)
;;     00000000004029A7 (in fn000000000040252C)
;;     0000000000402EC2 (in fn0000000000402E6F)
;;     0000000000402F01 (in fn0000000000402E6F)
;;     0000000000402F40 (in fn0000000000402E6F)
;;     0000000000403585 (in fn000000000040353B)
;;     00000000004035C3 (in fn000000000040353B)
;;     0000000000403601 (in fn000000000040353B)
;;     000000000040363F (in fn000000000040353B)
fn0000000000448D80 proc
	ret
0000000000448D81    90 90 90 90 90 90 90 90 90 90 90 90 90 90 90  ...............

;; fn0000000000448D90: 0000000000448D90
fn0000000000448D90 proc
	ret
0000000000448D91    90 90 90 90 90 90 90 90 90 90 90 90 90 90 90  ...............

;; fn0000000000448DA0: 0000000000448DA0
;;   Called from:
;;     0000000000454BB0 (in fn0000000000454BA0)
fn0000000000448DA0 proc
	ret
0000000000448DA1    90 90 90 90 90 90 90 90 90 90 90 90 90 90 90  ...............

;; fn0000000000448DB0: 0000000000448DB0
;;   Called from:
;;     0000000000402993 (in fn000000000040252C)
;;     00000000004029F4 (in fn000000000040252C)
;;     0000000000402EEA (in fn0000000000402E6F)
;;     0000000000402F29 (in fn0000000000402E6F)
;;     0000000000402F68 (in fn0000000000402E6F)
;;     00000000004035AB (in fn000000000040353B)
;;     00000000004035E9 (in fn000000000040353B)
;;     0000000000403627 (in fn000000000040353B)
;;     0000000000403665 (in fn000000000040353B)
fn0000000000448DB0 proc
	ret
0000000000448DB1    90 90 90 90 90 90 90 90 90 90 90 90 90 90 90  ...............

;; fn0000000000448DC0: 0000000000448DC0
;;   Called from:
;;     0000000000454BF0 (in fn0000000000454BE0)
fn0000000000448DC0 proc
	ret
0000000000448DC1    90 90 90 90 90 90 90 90 90 90 90 90 90 90 90  ...............

;; fn0000000000448DD0: 0000000000448DD0
fn0000000000448DD0 proc
	ret
0000000000448DD1    90 90 90 90 90 90 90 90 90 90 90 90 90 90 90  ...............

;; fn0000000000448DE0: 0000000000448DE0
fn0000000000448DE0 proc
	ret
0000000000448DE1    90 90 90 90 90 90 90 90 90 90 90 90 90 90 90  ...............

;; fn0000000000448DF0: 0000000000448DF0
fn0000000000448DF0 proc
	ret
0000000000448DF1    90 90 90 90 90 90 90 90 90 90 90 90 90 90 90  ...............

;; fn0000000000448E00: 0000000000448E00
fn0000000000448E00 proc
	ret
0000000000448E01    90 90 90 90 90 90 90 90 90 90 90 90 90 90 90  ...............

;; fn0000000000448E10: 0000000000448E10
fn0000000000448E10 proc
	ret
0000000000448E11    90 90 90 90 90 90 90 90 90 90 90 90 90 90 90  ...............

;; fn0000000000448E20: 0000000000448E20
fn0000000000448E20 proc
	ret
0000000000448E21    90 90 90 90 90 90 90 90 90 90 90 90 90 90 90  ...............

;; fn0000000000448E30: 0000000000448E30
fn0000000000448E30 proc
	mov	eax,7FFFFFFFh
	sub	rcx,rdx
	cmp	rcx,+7FFFFFFFh
	jle	448E43h

l0000000000448E41:
	ret

l0000000000448E43:
	cmp	rcx,-80000000h
	mov	eax,80000000h
	cmovge	eax,ecx

l0000000000448E52:
	ret
0000000000448E53          90 90 90 90 90 90 90 90 90 90 90 90 90    .............

;; fn0000000000448E60: 0000000000448E60
fn0000000000448E60 proc
	mov	[rcx],rdx
	ret
0000000000448E64             90 90 90 90 90 90 90 90 90 90 90 90     ............

;; fn0000000000448E70: 0000000000448E70
fn0000000000448E70 proc
	mov	[rcx],rdx
	ret
0000000000448E74             90 90 90 90 90 90 90 90 90 90 90 90     ............

;; fn0000000000448E80: 0000000000448E80
;;   Called from:
;;     000000000044667E (in fn0000000000446570)
;;     0000000000447C01 (in fn0000000000447AD0)
;;     0000000000447E8F (in fn0000000000447CD0)
;;     0000000000447ED4 (in fn0000000000447CD0)
;;     000000000044867F (in fn00000000004484C0)
;;     00000000004486C4 (in fn00000000004484C0)
;;     000000000044930F (in fn00000000004492F0)
;;     0000000000449342 (in fn0000000000449330)
;;     000000000044953B (in fn0000000000449520)
;;     000000000044956A (in fn0000000000449550)
;;     00000000004495D2 (in fn00000000004495C0)
;;     00000000004496F2 (in fn00000000004496E0)
;;     000000000044A03A (in fn000000000044A020)
;;     000000000044A11A (in fn000000000044A110)
;;     000000000044AF46 (in fn000000000044AF30)
fn0000000000448E80 proc
	push	rbx
	sub	rsp,20h
	mov	rax,[rcx]
	mov	edx,[rax-8h]
	test	edx,edx
	jle	448EA2h

l0000000000448E8F:
	mov	rbx,rcx
	xor	r9d,r9d
	xor	r8d,r8d
	xor	edx,edx
	call	44A6C0h
	mov	rax,[rbx]

l0000000000448EA2:
	mov	dword ptr [rax-8h],0FFFFFFFFh
	add	rsp,20h
	pop	rbx
	ret
0000000000448EAF                                              90                .

;; fn0000000000448EB0: 0000000000448EB0
;;   Called from:
;;     000000000042CB10 (in fn000000000042CAE0)
;;     000000000043BE91 (in fn000000000043BE80)
;;     0000000000447DE7 (in fn0000000000447CD0)
;;     0000000000447FD0 (in fn0000000000447CD0)
;;     00000000004485D7 (in fn00000000004484C0)
;;     00000000004487C0 (in fn00000000004484C0)
;;     00000000004492E3 (in fn00000000004492E0)
;;     000000000044A897 (in fn000000000044A880)
;;     000000000044A93F (in fn000000000044A930)
;;     000000000044AA91 (in fn000000000044AA80)
;;     000000000044AAB2 (in fn000000000044AAA0)
;;     000000000044AB67 (in fn000000000044AB50)
;;     000000000044AC0F (in fn000000000044AC00)
;;     000000000044AD61 (in fn000000000044AD50)
;;     000000000044AD82 (in fn000000000044AD70)
;;     000000000047404A (in fn0000000000474020)
;;     000000000047413C (in fn0000000000474120)
fn0000000000448EB0 proc
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,20h
	mov	rbx,rcx
	mov	edi,edx
	mov	esi,edx
	xor	edx,edx
	call	449490h
	test	rbx,rbx
	mov	rcx,rax
	lea	rax,[rax+18h]
	jz	448EEFh

l0000000000448ED1:
	xor	r8d,r8d
	cmp	rbx,1h
	jz	448F10h

l0000000000448EDA:
	nop	word ptr [rax+rax+0h]

l0000000000448EE0:
	mov	[rcx+r8*2+18h],si
	add	r8,1h
	cmp	r8,rbx
	jnz	448EE0h

l0000000000448EEF:
	xor	edx,edx
	mov	dword ptr [rcx+10h],0h
	mov	[rcx],rbx
	mov	[rcx+rbx*2+18h],dx
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	ret
0000000000448F08                         0F 1F 84 00 00 00 00 00         ........

l0000000000448F10:
	mov	[rcx+18h],di
	jmp	448EEFh
0000000000448F16                   90 90 90 90 90 90 90 90 90 90       ..........

;; fn0000000000448F20: 0000000000448F20
;;   Called from:
;;     000000000044AAD4 (in fn000000000044AAC0)
;;     000000000044ADA4 (in fn000000000044AD90)
fn0000000000448F20 proc
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,28h
	mov	rbx,rdx
	mov	rbp,rcx
	xor	edx,edx
	sub	rbx,rcx
	mov	rdi,rbx
	sar	rdi,1h
	mov	rcx,rdi
	call	449490h
	cmp	rdi,1h
	mov	rsi,rax
	lea	r9,[rax+18h]
	jz	448F80h

l0000000000448F4E:
	mov	rcx,r9
	mov	r8,rbx
	mov	rdx,rbp
	call	41BCC0h
	mov	r9,rax

l0000000000448F5F:
	xor	eax,eax
	mov	dword ptr [rsi+10h],0h
	mov	[rsi],rdi
	mov	[rsi+rbx+18h],ax
	mov	rax,r9
	add	rsp,28h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
0000000000448F7C                                     0F 1F 40 00             ..@.

l0000000000448F80:
	movzx	eax,word ptr [rbp+0h]
	mov	[rsi+18h],ax
	jmp	448F5Fh
0000000000448F8A                               90 90 90 90 90 90           ......

;; fn0000000000448F90: 0000000000448F90
;;   Called from:
;;     000000000044A40C (in fn000000000044A340)
;;     000000000044A8E4 (in fn000000000044A8B0)
;;     000000000044A91B (in fn000000000044A900)
;;     000000000044AA66 (in fn000000000044AA50)
;;     000000000044AB04 (in fn000000000044AAF0)
;;     000000000044ABB4 (in fn000000000044AB80)
;;     000000000044ABEB (in fn000000000044ABD0)
;;     000000000044AD36 (in fn000000000044AD20)
;;     000000000044ADD4 (in fn000000000044ADC0)
fn0000000000448F90 proc
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,28h
	test	rcx,rcx
	mov	rdi,rcx
	jnz	448FB1h

l0000000000448FA0:
	test	rdx,rdx
	jz	448FB1h

l0000000000448FA5:
	lea	rcx,[000000000048DAC8]                                 ; [rip+00044B1C]
	call	470BA0h

l0000000000448FB1:
	mov	rbx,rdx
	xor	edx,edx
	sub	rbx,rdi
	mov	rbp,rbx
	sar	rbp,1h
	mov	rcx,rbp
	call	449490h
	cmp	rbp,1h
	mov	rsi,rax
	lea	r9,[rax+18h]
	jz	449002h

l0000000000448FD4:
	mov	rcx,r9
	mov	r8,rbx
	mov	rdx,rdi
	call	41BCC0h
	mov	r9,rax

l0000000000448FE5:
	xor	eax,eax
	mov	dword ptr [rsi+10h],0h
	mov	[rsi],rbp
	mov	[rsi+rbx+18h],ax
	mov	rax,r9
	add	rsp,28h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret

l0000000000449002:
	movzx	eax,word ptr [rdi]
	mov	[rsi+18h],ax
	jmp	448FE5h
000000000044900B                                  90 90 90 90 90            .....

;; fn0000000000449010: 0000000000449010
;;   Called from:
;;     000000000042C9B4 (in fn000000000042C990)
;;     000000000042C9CA (in fn000000000042C990)
;;     000000000042CB22 (in fn000000000042CAE0)
fn0000000000449010 proc
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,28h
	test	rcx,rcx
	mov	rdi,rcx
	jnz	449031h

l0000000000449020:
	test	rdx,rdx
	jz	449031h

l0000000000449025:
	lea	rcx,[000000000048DB30]                                 ; [rip+00044B04]
	call	470BA0h

l0000000000449031:
	mov	rbx,rdx
	xor	edx,edx
	sub	rbx,rdi
	mov	rbp,rbx
	sar	rbp,1h
	mov	rcx,rbp
	call	449490h
	cmp	rbp,1h
	mov	rsi,rax
	lea	r9,[rax+18h]
	jz	449082h

l0000000000449054:
	mov	rcx,r9
	mov	r8,rbx
	mov	rdx,rdi
	call	41BCC0h
	mov	r9,rax

l0000000000449065:
	xor	eax,eax
	mov	dword ptr [rsi+10h],0h
	mov	[rsi],rbp
	mov	[rsi+rbx+18h],ax
	mov	rax,r9
	add	rsp,28h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret

l0000000000449082:
	movzx	eax,word ptr [rdi]
	mov	[rsi+18h],ax
	jmp	449065h
000000000044908B                                  90 90 90 90 90            .....

;; fn0000000000449090: 0000000000449090
;;   Called from:
;;     000000000044A9C4 (in fn000000000044A990)
;;     000000000044AA24 (in fn000000000044A9F0)
;;     000000000044AB34 (in fn000000000044AB20)
;;     000000000044AC94 (in fn000000000044AC60)
;;     000000000044ACF4 (in fn000000000044ACC0)
;;     000000000044AE04 (in fn000000000044ADF0)
fn0000000000449090 proc
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,28h
	test	rcx,rcx
	mov	rdi,rcx
	jnz	4490B1h

l00000000004490A0:
	test	rdx,rdx
	jz	4490B1h

l00000000004490A5:
	lea	rcx,[000000000048DAC8]                                 ; [rip+00044A1C]
	call	470BA0h

l00000000004490B1:
	mov	rbx,rdx
	xor	edx,edx
	sub	rbx,rdi
	mov	rbp,rbx
	sar	rbp,1h
	mov	rcx,rbp
	call	449490h
	cmp	rbp,1h
	mov	rsi,rax
	lea	r9,[rax+18h]
	jz	449102h

l00000000004490D4:
	mov	rcx,r9
	mov	r8,rbx
	mov	rdx,rdi
	call	41BCC0h
	mov	r9,rax

l00000000004490E5:
	xor	eax,eax
	mov	dword ptr [rsi+10h],0h
	mov	[rsi],rbp
	mov	[rsi+rbx+18h],ax
	mov	rax,r9
	add	rsp,28h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret

l0000000000449102:
	movzx	eax,word ptr [rdi]
	mov	[rsi+18h],ax
	jmp	4490E5h
000000000044910B                                  90 90 90 90 90            .....

;; fn0000000000449110: 0000000000449110
fn0000000000449110 proc
	lea	rax,[000000000048B240]                                 ; [rip+00042129]
	ret
0000000000449118                         90 90 90 90 90 90 90 90         ........

;; fn0000000000449120: 0000000000449120
fn0000000000449120 proc
	sub	r8,rdx
	mov	rax,r8
	sar	rax,1h
	cmp	rax,1h
	jz	449134h

l000000000044912F:
	jmp	41BCC0h

l0000000000449134:
	movzx	eax,word ptr [rdx]
	mov	[rcx],ax
	ret
000000000044913B                                  90 90 90 90 90            .....

;; fn0000000000449140: 0000000000449140
fn0000000000449140 proc
	sub	r8,rdx
	mov	rax,r8
	sar	rax,1h
	cmp	rax,1h
	jz	449154h

l000000000044914F:
	jmp	41BCC0h

l0000000000449154:
	movzx	eax,word ptr [rdx]
	mov	[rcx],ax
	ret
000000000044915B                                  90 90 90 90 90            .....

;; fn0000000000449160: 0000000000449160
fn0000000000449160 proc
	sub	r8,rdx
	mov	rax,r8
	sar	rax,1h
	cmp	rax,1h
	jz	449174h

l000000000044916F:
	jmp	41BCC0h

l0000000000449174:
	movzx	eax,word ptr [rdx]
	mov	[rcx],ax
	ret
000000000044917B                                  90 90 90 90 90            .....

;; fn0000000000449180: 0000000000449180
fn0000000000449180 proc
	sub	r8,rdx
	mov	rax,r8
	sar	rax,1h
	cmp	rax,1h
	jz	449194h

l000000000044918F:
	jmp	41BCC0h

l0000000000449194:
	movzx	eax,word ptr [rdx]
	mov	[rcx],ax
	ret
000000000044919B                                  90 90 90 90 90            .....

;; fn00000000004491A0: 00000000004491A0
fn00000000004491A0 proc
	sub	rsp,28h
	mov	rax,[rcx]
	mov	rdx,[rax-18h]
	cmp	[rax-10h],rdx
	ja	4491C0h

l00000000004491B1:
	add	rsp,28h
	ret
00000000004491B6                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l00000000004491C0:
	xor	edx,edx
	call	44A5D0h
	nop
	add	rsp,28h
	ret
00000000004491CD                                        48 89 C1              H..
00000000004491D0 E8 6B C6 02 00 90 48 83 C4 28 E9 91 C8 02 00 90 .k....H..(......

;; fn00000000004491E0: 00000000004491E0
;;   Called from:
;;     0000000000447E54 (in fn0000000000447CD0)
;;     00000000004481DF (in fn0000000000447CD0)
;;     0000000000448644 (in fn00000000004484C0)
;;     00000000004489CF (in fn00000000004484C0)
;;     0000000000449CEC (in fn0000000000449CD0)
;;     0000000000449D47 (in fn0000000000449D20)
;;     0000000000449D79 (in fn0000000000449D60)
;;     0000000000449FEF (in fn0000000000449FD0)
;;     000000000044A2F5 (in fn000000000044A2E0)
;;     000000000044A5AC (in fn000000000044A580)
;;     000000000044AF1E (in fn000000000044AF00)
fn00000000004491E0 proc
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,20h
	mov	rax,[rcx]
	mov	ebp,[rsp+70h]
	mov	rbx,r9
	mov	r9,1FFFFFFFFFFFFFFCh
	mov	rdi,rcx
	mov	r12,rdx
	sub	r9,[rax-18h]
	mov	esi,ebp
	add	r9,r8
	cmp	rbx,r9
	ja	449261h

l0000000000449212:
	mov	r9,rbx
	call	44A6C0h
	test	rbx,rbx
	jz	44923Dh

l000000000044921F:
	mov	rax,[rdi]
	cmp	rbx,1h
	lea	rdx,[rax]
	jz	449250h

l000000000044922C:
	nop	dword ptr [rax+0h]

l0000000000449230:
	mov	[rdx],si
	add	rdx,2h
	sub	rbx,1h
	jnz	449230h

l000000000044923D:
	mov	rax,rdi
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
000000000044924B                                  0F 1F 44 00 00            ..D..

l0000000000449250:
	mov	rax,rdi
	mov	[rdx],bp
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret

l0000000000449261:
	lea	rcx,[000000000048DA41]                                 ; [rip+000447D9]
	call	470E60h
	nop
	nop
	nop

;; fn0000000000449270: 0000000000449270
;;   Called from:
;;     000000000044926F (in fn00000000004491E0)
;;     0000000000449B52 (in fn0000000000449B10)
;;     0000000000449E1F (in fn0000000000449DD0)
;;     000000000044A3B4 (in fn000000000044A340)
;;     000000000044A425 (in fn000000000044A340)
fn0000000000449270 proc
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,28h
	mov	rbx,[rsp+70h]
	mov	rbp,r9
	mov	rsi,rcx
	mov	rdi,rdx
	mov	r9,rbx
	call	44A6C0h
	test	rbx,rbx
	jz	4492ACh

l0000000000449293:
	mov	rax,[rsi]
	cmp	rbx,1h
	lea	rcx,[rax+rdi*2]
	jz	4492C0h

l00000000004492A0:
	lea	r8,[rbx+rbx]
	mov	rdx,rbp
	call	41BCC0h

l00000000004492AC:
	mov	rax,rsi
	add	rsp,28h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
00000000004492B8                         0F 1F 84 00 00 00 00 00         ........

l00000000004492C0:
	movzx	eax,word ptr [rbp+0h]
	mov	[rcx],ax
	mov	rax,rsi
	add	rsp,28h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
00000000004492D3          90 90 90 90 90 90 90 90 90 90 90 90 90    .............

;; fn00000000004492E0: 00000000004492E0
fn00000000004492E0 proc
	movzx	edx,dx
	jmp	448EB0h
00000000004492E8                         90 90 90 90 90 90 90 90         ........

;; fn00000000004492F0: 00000000004492F0
fn00000000004492F0 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	mov	rax,[rcx]
	mov	rbx,rcx
	mov	rsi,rdx
	mov	r8,[rax-18h]
	cmp	rdx,r8
	jnc	449322h

l0000000000449308:
	mov	edx,[rax-8h]
	test	edx,edx
	js	449317h

l000000000044930F:
	call	448E80h
	mov	rax,[rbx]

l0000000000449317:
	lea	rax,[rax+rsi*2]
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret

l0000000000449322:
	lea	rcx,[000000000048D9A8]                                 ; [rip+0004467F]
	call	471560h
	nop
	nop

;; fn0000000000449330: 0000000000449330
;;   Called from:
;;     000000000044932F (in fn00000000004492F0)
fn0000000000449330 proc
	push	rbx
	sub	rsp,20h
	mov	rax,[rcx]
	mov	edx,[rax-8h]
	test	edx,edx
	js	44934Ah

l000000000044933F:
	mov	rbx,rcx
	call	448E80h
	mov	rax,[rbx]

l000000000044934A:
	mov	rdx,[rax-18h]
	lea	rax,[rax+rdx*2]
	add	rsp,20h
	pop	rbx
	ret
0000000000449358                         90 90 90 90 90 90 90 90         ........

;; fn0000000000449360: 0000000000449360
;;   Called from:
;;     000000000042CA8B (in fn000000000042C990)
;;     000000000042CAAB (in fn000000000042C990)
;;     000000000042CC6B (in fn000000000042CAE0)
;;     0000000000447C97 (in fn0000000000447AD0)
;;     000000000044824C (in fn0000000000447CD0)
;;     00000000004483CE (in fn0000000000447CD0)
;;     0000000000448A3C (in fn00000000004484C0)
;;     0000000000448BBE (in fn00000000004484C0)
;;     00000000004649CC (in fn00000000004645D0)
;;     00000000004649EC (in fn00000000004645D0)
;;     0000000000464A07 (in fn00000000004645D0)
;;     0000000000464A3C (in fn00000000004645D0)
;;     00000000004679DC (in fn0000000000467480)
;;     00000000004679FC (in fn0000000000467480)
;;     0000000000467A19 (in fn0000000000467480)
;;     0000000000467A2F (in fn0000000000467480)
;;     0000000000467A4C (in fn0000000000467480)
;;     0000000000467A6C (in fn0000000000467480)
;;     000000000046836C (in fn0000000000467E10)
;;     000000000046838C (in fn0000000000467E10)
;;     00000000004683A9 (in fn0000000000467E10)
;;     00000000004683BF (in fn0000000000467E10)
;;     00000000004683DC (in fn0000000000467E10)
;;     00000000004683FC (in fn0000000000467E10)
fn0000000000449360 proc
	jmp	475550h
0000000000449365                90 90 90 90 90 90 90 90 90 90 90      ...........

;; fn0000000000449370: 0000000000449370
;;   Called from:
;;     0000000000448456 (in fn0000000000447CD0)
;;     000000000044847A (in fn0000000000447CD0)
;;     0000000000448C46 (in fn00000000004484C0)
;;     0000000000448C6A (in fn00000000004484C0)
;;     000000000044A4EB (in fn000000000044A340)
fn0000000000449370 proc
	mov	eax,0FFFFFFFFh
	lock
	xadd	[rcx+10h],eax
	test	eax,eax
	jle	449380h

l000000000044937E:
	ret

l0000000000449380:
	jmp	475550h
0000000000449385                90 90 90 90 90 90 90 90 90 90 90      ...........

;; fn0000000000449390: 0000000000449390
fn0000000000449390 proc
	lock
	add	dword ptr [rcx+10h],1h
	lea	rax,[rcx+18h]
	ret
000000000044939A                               90 90 90 90 90 90           ......

;; fn00000000004493A0: 00000000004493A0
fn00000000004493A0 proc
	lea	rax,[rcx+18h]
	ret
00000000004493A5                90 90 90 90 90 90 90 90 90 90 90      ...........

;; fn00000000004493B0: 00000000004493B0
fn00000000004493B0 proc
	lea	rax,[000000000048B240]                                 ; [rip+00041E89]
	ret
00000000004493B8                         90 90 90 90 90 90 90 90         ........

;; fn00000000004493C0: 00000000004493C0
fn00000000004493C0 proc
	mov	dword ptr [rcx+10h],0FFFFFFFFh
	ret
00000000004493C8                         90 90 90 90 90 90 90 90         ........

;; fn00000000004493D0: 00000000004493D0
fn00000000004493D0 proc
	mov	dword ptr [rcx+10h],0h
	ret
00000000004493D8                         90 90 90 90 90 90 90 90         ........

;; fn00000000004493E0: 00000000004493E0
fn00000000004493E0 proc
	xor	eax,eax
	mov	dword ptr [rcx+10h],0h
	mov	[rcx],rdx
	mov	[rcx+rdx*2+18h],ax
	ret
00000000004493F2       90 90 90 90 90 90 90 90 90 90 90 90 90 90   ..............

;; fn0000000000449400: 0000000000449400
fn0000000000449400 proc
	mov	eax,[rcx+10h]
	test	eax,eax
	js	449411h

l0000000000449407:
	lock
	add	dword ptr [rcx+10h],1h
	lea	rax,[rcx+18h]
	ret

l0000000000449411:
	xor	r8d,r8d
	jmp	449420h
0000000000449419                            90 90 90 90 90 90 90          .......

;; fn0000000000449420: 0000000000449420
;;   Called from:
;;     0000000000449414 (in fn0000000000449400)
;;     0000000000449C4C (in fn0000000000449C00)
;;     000000000044A5FB (in fn000000000044A5D0)
;;     000000000044A97C (in fn000000000044A950)
;;     000000000044AC4C (in fn000000000044AC20)
;;     00000000004740EF (in fn00000000004740B0)
fn0000000000449420 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	mov	rsi,rcx
	mov	rcx,r8
	mov	r8,rdx
	add	rcx,[rsi]
	mov	rdx,[rsi+8h]
	call	449490h
	mov	r8,[rsi]
	mov	rbx,rax
	lea	rax,[rax+18h]
	test	r8,r8
	jz	449466h

l000000000044944A:
	cmp	r8,1h
	lea	r9,[rbx+18h]
	jz	449480h

l0000000000449454:
	lea	rdx,[rsi+18h]
	add	r8,r8
	mov	rcx,r9
	call	41BCC0h
	mov	r8,[rsi]

l0000000000449466:
	xor	edx,edx
	mov	dword ptr [rbx+10h],0h
	mov	[rbx],r8
	mov	[rbx+r8*2+18h],dx
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret
000000000044947F                                              90                .

l0000000000449480:
	movzx	eax,word ptr [rsi+18h]
	mov	[rbx+18h],ax
	mov	rax,r9
	jmp	449466h
000000000044948D                                        90 90 90              ...

;; fn0000000000449490: 0000000000449490
;;   Called from:
;;     0000000000448EC0 (in fn0000000000448EB0)
;;     0000000000448F3C (in fn0000000000448F20)
;;     0000000000448FC2 (in fn0000000000448F90)
;;     0000000000449042 (in fn0000000000449010)
;;     00000000004490C2 (in fn0000000000449090)
;;     0000000000449436 (in fn0000000000449420)
;;     000000000044A711 (in fn000000000044A6C0)
fn0000000000449490 proc
	push	rbx
	sub	rsp,20h
	mov	r8,1FFFFFFFFFFFFFFCh
	cmp	rcx,r8
	mov	rbx,rcx
	ja	44950Ah

l00000000004494A7:
	cmp	rbx,rdx
	lea	rcx,[rcx+rcx+1Ah]
	jbe	4494F4h

l00000000004494B1:
	lea	rax,[rdx+rdx]
	cmp	rbx,rax
	cmovc	rbx,rax

l00000000004494BC:
	lea	rcx,[rbx+rbx+2h]
	lea	rax,[rcx+38h]
	cmp	rax,+1000h
	jbe	449516h

l00000000004494CD:
	cmp	rdx,rbx
	jnc	449516h

l00000000004494D2:
	and	eax,0FFFh
	mov	rdx,rax
	mov	eax,1000h
	sub	rax,rdx
	shr	rax,1h
	add	rbx,rax
	cmp	rbx,r8
	cmova	rbx,r8

l00000000004494EF:
	lea	rcx,[rbx+rbx+1Ah]

l00000000004494F4:
	call	475590h
	mov	[rax+8h],rbx
	mov	dword ptr [rax+10h],0h
	add	rsp,20h
	pop	rbx
	ret

l000000000044950A:
	lea	rcx,[000000000048DA15]                                 ; [rip+00044504]
	call	470E60h

l0000000000449516:
	add	rcx,18h
	jmp	4494F4h
000000000044951C                                     90 90 90 90             ....

;; fn0000000000449520: 0000000000449520
fn0000000000449520 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	mov	rax,[rcx]
	mov	rdx,[rax-18h]
	lea	rsi,[rdx-1h]
	mov	edx,[rax-8h]
	test	edx,edx
	js	449543h

l0000000000449538:
	mov	rbx,rcx
	call	448E80h
	mov	rax,[rbx]

l0000000000449543:
	lea	rax,[rax+rsi*2]
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret
000000000044954E                                           90 90               ..

;; fn0000000000449550: 0000000000449550
fn0000000000449550 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	mov	r8,[rdx]
	mov	rsi,rcx
	mov	rbx,rdx
	mov	eax,[r8-8h]
	test	eax,eax
	js	449572h

l0000000000449567:
	mov	rcx,rdx
	call	448E80h
	mov	r8,[rbx]

l0000000000449572:
	mov	rax,rsi
	mov	[rsi],r8
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret
000000000044957F                                              90                .

;; fn0000000000449580: 0000000000449580
fn0000000000449580 proc
	mov	r8,[rcx]
	mov	r10d,[r8-8h]
	test	r10d,r10d
	js	4495B0h

l000000000044958C:
	mov	rax,[rdx]
	mov	r9d,[rax-8h]
	test	r9d,r9d
	jns	44959Fh

l0000000000449598:
	mov	dword ptr [rax-8h],0h

l000000000044959F:
	mov	[rcx],rax
	mov	[rdx],r8
	ret
00000000004495A6                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l00000000004495B0:
	mov	dword ptr [r8-8h],0h
	jmp	44958Ch
00000000004495BA                               90 90 90 90 90 90           ......

;; fn00000000004495C0: 00000000004495C0
fn00000000004495C0 proc
	push	rbx
	sub	rsp,20h
	mov	rax,[rcx]
	mov	edx,[rax-8h]
	test	edx,edx
	js	4495DAh

l00000000004495CF:
	mov	rbx,rcx
	call	448E80h
	mov	rax,[rbx]

l00000000004495DA:
	add	rsp,20h
	pop	rbx
	ret

;; fn00000000004495E0: 00000000004495E0
fn00000000004495E0 proc
	mov	rax,[rcx]
	xor	r9d,r9d
	xor	edx,edx
	mov	r8,[rax-18h]
	jmp	44A6C0h
00000000004495F1    90 90 90 90 90 90 90 90 90 90 90 90 90 90 90  ...............

;; fn0000000000449600: 0000000000449600
fn0000000000449600 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	xor	r9d,r9d
	mov	r8d,1h
	mov	rbx,rdx
	sub	rbx,[rcx]
	mov	rsi,rcx
	mov	rdx,rbx
	sar	rdx,1h
	call	44A6C0h
	mov	rax,[rsi]
	mov	dword ptr [rax-8h],0FFFFFFFFh
	add	rax,rbx
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret
0000000000449637                      90 90 90 90 90 90 90 90 90        .........

;; fn0000000000449640: 0000000000449640
fn0000000000449640 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	sub	r8,rdx
	mov	rax,rdx
	sar	r8,1h
	jnz	449660h

l0000000000449651:
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret
0000000000449658                         0F 1F 84 00 00 00 00 00         ........

l0000000000449660:
	sub	rax,[rcx]
	mov	rsi,rcx
	xor	r9d,r9d
	mov	rdx,rax
	mov	rbx,rax
	sar	rdx,1h
	call	44A6C0h
	mov	rdx,[rsi]
	lea	rax,[rdx+rbx]
	mov	dword ptr [rdx-8h],0FFFFFFFFh
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret
000000000044968C                                     90 90 90 90             ....

;; fn0000000000449690: 0000000000449690
fn0000000000449690 proc
	push	rbx
	sub	rsp,20h
	mov	rax,[rcx]
	mov	rbx,rcx
	mov	r9,[rax-18h]
	mov	r10,r9
	sub	r10,rdx
	cmp	r10,r8
	cmovbe	r8,r10

l00000000004496AC:
	cmp	rdx,r9
	ja	4496C2h

l00000000004496B1:
	xor	r9d,r9d
	call	44A6C0h
	mov	rax,rbx
	add	rsp,20h
	pop	rbx
	ret

l00000000004496C2:
	mov	r8,rdx
	lea	rcx,[000000000048D970]                                 ; [rip+000442A4]
	lea	rdx,[000000000048DA2D]                                 ; [rip+0004435A]
	call	471560h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop

;; fn00000000004496E0: 00000000004496E0
;;   Called from:
;;     00000000004496DF (in fn0000000000449690)
fn00000000004496E0 proc
	push	rbx
	sub	rsp,20h
	mov	rax,[rcx]
	mov	edx,[rax-8h]
	test	edx,edx
	js	4496FAh

l00000000004496EF:
	mov	rbx,rcx
	call	448E80h
	mov	rax,[rbx]

l00000000004496FA:
	add	rsp,20h
	pop	rbx
	ret

;; fn0000000000449700: 0000000000449700
fn0000000000449700 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	mov	rbx,rcx
	mov	rcx,rdx
	mov	rsi,rdx
	call	41BD38h
	test	rax,rax
	jz	449727h

l0000000000449719:
	mov	r8,rax
	mov	rdx,rsi
	mov	rcx,rbx
	call	449760h

l0000000000449727:
	mov	rax,rbx
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret
0000000000449731    90 90 90 90 90 90 90 90 90 90 90 90 90 90 90  ...............

;; fn0000000000449740: 0000000000449740
;;   Called from:
;;     000000000042CC14 (in fn000000000042CAE0)
;;     0000000000447F82 (in fn0000000000447CD0)
;;     000000000044819D (in fn0000000000447CD0)
;;     0000000000448401 (in fn0000000000447CD0)
;;     0000000000448772 (in fn00000000004484C0)
;;     000000000044898D (in fn00000000004484C0)
;;     0000000000448BF1 (in fn00000000004484C0)
;;     00000000004720D8 (in fn0000000000471F90)
;;     0000000000475087 (in fn0000000000474F00)
;;     00000000004750DC (in fn0000000000474F00)
fn0000000000449740 proc
	push	rbx
	sub	rsp,20h
	test	r8,r8
	mov	rbx,rcx
	jz	449752h

l000000000044974D:
	call	449760h

l0000000000449752:
	mov	rax,rbx
	add	rsp,20h
	pop	rbx
	ret
000000000044975B                                  90 90 90 90 90            .....

;; fn0000000000449760: 0000000000449760
;;   Called from:
;;     0000000000449722 (in fn0000000000449700)
;;     000000000044974D (in fn0000000000449740)
;;     00000000004499B7 (in fn00000000004499A0)
;;     000000000044AF82 (in fn000000000044AF60)
;;     000000000044AFC7 (in fn000000000044AFB0)
;;     0000000000474072 (in fn0000000000474020)
fn0000000000449760 proc
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,30h
	mov	rax,[rcx]
	mov	r10,1FFFFFFFFFFFFFFCh
	mov	rdi,rcx
	mov	rsi,rdx
	mov	r9,[rax-18h]
	sub	r10,r9
	cmp	r10,r8
	jc	449831h

l000000000044978A:
	lea	rbx,[r8+r9]
	cmp	rbx,[rax-10h]
	jbe	4497E0h

l0000000000449794:
	cmp	rax,rsi
	jbe	4497ECh

l0000000000449799:
	mov	rdx,rbx
	mov	rcx,rdi
	mov	[rsp+28h],r8
	call	44A5D0h
	mov	rax,[rdi]
	mov	r8,[rsp+28h]
	mov	r9,[rax-18h]

l00000000004497B5:
	cmp	r8,1h
	lea	rcx,[rax+r9*2]
	jnz	449821h

l00000000004497BF:
	movzx	edx,word ptr [rsi]
	mov	[rcx],dx

l00000000004497C5:
	xor	edx,edx
	mov	dword ptr [rax-8h],0h
	mov	[rax-18h],rbx
	mov	[rax+rbx*2],dx
	xor	eax,eax
	add	rsp,30h
	pop	rbx
	pop	rsi
	pop	rdi
	ret

l00000000004497E0:
	mov	ecx,[rax-8h]
	test	ecx,ecx
	jle	4497B5h

l00000000004497E7:
	cmp	rax,rsi
	ja	449799h

l00000000004497EC:
	lea	rdx,[rax+r9*2]
	cmp	rsi,rdx
	ja	449799h

l00000000004497F5:
	mov	rcx,rdi
	mov	rdx,rbx
	sub	rsi,rax
	mov	[rsp+28h],r8
	call	44A5D0h
	mov	rax,[rdi]
	mov	r8,[rsp+28h]
	mov	r9,[rax-18h]
	add	rsi,rax
	cmp	r8,1h
	lea	rcx,[rax+r9*2]
	jz	4497BFh

l0000000000449821:
	add	r8,r8
	mov	rdx,rsi
	call	41BCC0h
	mov	rax,[rdi]
	jmp	4497C5h

l0000000000449831:
	lea	rcx,[000000000048DA9E]                                 ; [rip+00044266]
	call	470E60h
	nop
	nop
	nop

;; fn0000000000449840: 0000000000449840
;;   Called from:
;;     000000000044983F (in fn0000000000449760)
;;     000000000044AFA0 (in fn000000000044AFA0)
;;     000000000047407D (in fn0000000000474020)
;;     00000000004740D4 (in fn00000000004740B0)
;;     000000000047416E (in fn0000000000474120)
fn0000000000449840 proc
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,28h
	mov	rax,[rdx]
	mov	rbx,rcx
	mov	rbp,rdx
	mov	rsi,[rax-18h]
	test	rsi,rsi
	jz	4498ADh

l000000000044985A:
	mov	r9,[rcx]
	mov	rdx,[r9-18h]
	lea	rdi,[rdx+rsi]
	cmp	rdi,[r9-10h]
	jbe	4498C0h

l000000000044986B:
	mov	rdx,rdi
	mov	rcx,rbx
	call	44A5D0h
	mov	r9,[rbx]
	mov	rax,[rbp+0h]
	mov	rdx,[r9-18h]

l0000000000449881:
	cmp	rsi,1h
	lea	rcx,[r9+rdx*2]
	jz	4498D0h

l000000000044988B:
	lea	r8,[rsi+rsi]
	mov	rdx,rax
	call	41BCC0h
	mov	r9,[rbx]

l000000000044989A:
	xor	eax,eax
	mov	dword ptr [r9-8h],0h
	mov	[r9-18h],rdi
	mov	[r9+rdi*2],ax

l00000000004498AD:
	mov	rax,rbx
	add	rsp,28h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
00000000004498B9                            0F 1F 80 00 00 00 00          .......

l00000000004498C0:
	mov	ecx,[r9-8h]
	test	ecx,ecx
	jg	44986Bh

l00000000004498C8:
	jmp	449881h
00000000004498CA                               66 0F 1F 44 00 00           f..D..

l00000000004498D0:
	movzx	eax,word ptr [rax]
	mov	[rcx],ax
	jmp	44989Ah
00000000004498D8                         90 90 90 90 90 90 90 90         ........

;; fn00000000004498E0: 00000000004498E0
fn00000000004498E0 proc
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,20h
	mov	rax,[rdx]
	mov	rsi,rcx
	mov	r12,rdx
	mov	rdi,r8
	mov	rbx,[rax-18h]
	cmp	r8,rbx
	ja	449988h

l0000000000449903:
	sub	rbx,r8
	cmp	rbx,r9
	cmova	rbx,r9

l000000000044990D:
	test	rbx,rbx
	jz	449966h

l0000000000449912:
	mov	r9,[rcx]
	mov	rcx,[r9-18h]
	lea	rbp,[rbx+rcx]
	cmp	rbp,[r9-10h]
	jbe	449974h

l0000000000449923:
	mov	rcx,rsi
	mov	rdx,rbp
	call	44A5D0h
	mov	r9,[rsi]
	mov	rax,[r12]
	mov	rcx,[r9-18h]

l0000000000449939:
	cmp	rbx,1h
	lea	rdx,[rax+rdi*2]
	lea	rcx,[r9+rcx*2]
	jz	449980h

l0000000000449947:
	lea	r8,[rbx+rbx]
	call	41BCC0h
	mov	r9,[rsi]

l0000000000449953:
	xor	eax,eax
	mov	dword ptr [r9-8h],0h
	mov	[r9-18h],rbp
	mov	[r9+rbp*2],ax

l0000000000449966:
	mov	rax,rsi
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret

l0000000000449974:
	mov	edx,[r9-8h]
	test	edx,edx
	jg	449923h

l000000000044997C:
	jmp	449939h
000000000044997E                                           66 90               f.

l0000000000449980:
	movzx	eax,word ptr [rdx]
	mov	[rcx],ax
	jmp	449953h

l0000000000449988:
	lea	rdx,[000000000048DA9E]                                 ; [rip+0004410F]
	lea	rcx,[000000000048D970]                                 ; [rip+00043FDA]
	mov	r9,rbx
	call	471560h
	nop
	nop

;; fn00000000004499A0: 00000000004499A0
;;   Called from:
;;     000000000044999F (in fn00000000004498E0)
fn00000000004499A0 proc
	push	rbx
	sub	rsp,20h
	mov	r8,[rdx+8h]
	mov	rax,[rdx]
	mov	rbx,rcx
	test	r8,r8
	jz	4499BCh

l00000000004499B4:
	mov	rdx,rax
	call	449760h

l00000000004499BC:
	mov	rax,rbx
	add	rsp,20h
	pop	rbx
	ret
00000000004499C5                90 90 90 90 90 90 90 90 90 90 90      ...........

;; fn00000000004499D0: 00000000004499D0
;;   Called from:
;;     00000000004482E5 (in fn0000000000447CD0)
;;     00000000004483F3 (in fn0000000000447CD0)
;;     0000000000448AD5 (in fn00000000004484C0)
;;     0000000000448BE3 (in fn00000000004484C0)
fn00000000004499D0 proc
	push	rbx
	sub	rsp,20h
	test	rdx,rdx
	mov	rbx,rcx
	jz	4499E6h

l00000000004499DD:
	movzx	r8d,r8w
	call	4499F0h

l00000000004499E6:
	mov	rax,rbx
	add	rsp,20h
	pop	rbx
	ret
00000000004499EF                                              90                .

;; fn00000000004499F0: 00000000004499F0
;;   Called from:
;;     00000000004499E1 (in fn00000000004499D0)
;;     000000000044A0AD (in fn000000000044A070)
;;     0000000000474163 (in fn0000000000474120)
fn00000000004499F0 proc
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,20h
	mov	r9,[rcx]
	mov	rbx,rdx
	mov	rdx,1FFFFFFFFFFFFFFCh
	mov	rbp,rcx
	mov	r12d,r8d
	mov	esi,r8d
	mov	rax,[r9-18h]
	sub	rdx,rax
	cmp	rdx,rbx
	jc	449A86h

l0000000000449A1F:
	lea	rdi,[rbx+rax]
	cmp	rdi,[r9-10h]
	ja	449A31h

l0000000000449A29:
	mov	edx,[r9-8h]
	test	edx,edx
	jle	449A44h

l0000000000449A31:
	mov	rdx,rdi
	mov	rcx,rbp
	call	44A5D0h
	mov	r9,[rbp+0h]
	mov	rax,[r9-18h]

l0000000000449A44:
	cmp	rbx,1h
	lea	rax,[r9+rax*2]
	jz	449A80h

l0000000000449A4E:
	test	rbx,rbx
	jz	449A60h

l0000000000449A53:
	mov	[rax],si
	add	rax,2h
	sub	rbx,1h
	jnz	449A53h

l0000000000449A60:
	xor	eax,eax
	mov	dword ptr [r9-8h],0h
	mov	[r9-18h],rdi
	mov	[r9+rdi*2],ax
	xor	eax,eax
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret

l0000000000449A80:
	mov	[rax],r12w
	jmp	449A60h

l0000000000449A86:
	lea	rcx,[000000000048DA9E]                                 ; [rip+00044011]
	call	470E60h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop

;; fn0000000000449AA0: 0000000000449AA0
;;   Called from:
;;     0000000000449A9F (in fn00000000004499F0)
fn0000000000449AA0 proc
	mov	r8,[rcx]
	mov	rax,rcx
	mov	r10d,[r8-8h]
	test	r10d,r10d
	js	449AD0h

l0000000000449AAF:
	mov	rcx,[rdx]
	mov	r9d,[rcx-8h]
	test	r9d,r9d
	jns	449AC2h

l0000000000449ABB:
	mov	dword ptr [rcx-8h],0h

l0000000000449AC2:
	mov	[rax],rcx
	mov	[rdx],r8
	ret
0000000000449AC9                            0F 1F 80 00 00 00 00          .......

l0000000000449AD0:
	mov	dword ptr [r8-8h],0h
	jmp	449AAFh
0000000000449ADA                               90 90 90 90 90 90           ......

;; fn0000000000449AE0: 0000000000449AE0
fn0000000000449AE0 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	mov	rsi,rcx
	mov	rbx,rdx
	mov	rcx,rdx
	call	41BD38h
	mov	rdx,rbx
	mov	r8,rax
	mov	rcx,rsi
	add	rsp,28h
	pop	rbx
	pop	rsi
	jmp	449B10h
0000000000449B08                         90 90 90 90 90 90 90 90         ........

;; fn0000000000449B10: 0000000000449B10
;;   Called from:
;;     00000000004482AB (in fn0000000000447CD0)
;;     0000000000448A9B (in fn00000000004484C0)
;;     0000000000449B03 (in fn0000000000449AE0)
;;     0000000000449C98 (in fn0000000000449C70)
;;     0000000000449CCA (in fn0000000000449CC0)
;;     000000000044AEC3 (in fn000000000044AEA0)
;;     000000000044AEF2 (in fn000000000044AEE0)
fn0000000000449B10 proc
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,30h
	mov	rax,1FFFFFFFFFFFFFFCh
	mov	rbx,rcx
	mov	rcx,[rcx]
	mov	rsi,r8
	cmp	rsi,rax
	mov	r8,[rcx-18h]
	ja	449BE6h

l0000000000449B37:
	cmp	rdx,rcx
	jc	449B45h

l0000000000449B3C:
	lea	rax,[rcx+r8*2]
	cmp	rdx,rax
	jbe	449B60h

l0000000000449B45:
	mov	r9,rdx
	mov	[rsp+20h],rsi
	xor	edx,edx
	mov	rcx,rbx
	call	449270h
	add	rsp,30h
	pop	rbx
	pop	rsi
	pop	rdi
	ret
0000000000449B5F                                              90                .

l0000000000449B60:
	mov	eax,[rcx-8h]
	test	eax,eax
	jg	449B45h

l0000000000449B67:
	mov	rax,rdx
	sub	rax,rcx
	sar	rax,1h
	cmp	rsi,rax
	ja	449BB0h

l0000000000449B75:
	cmp	rsi,1h
	jz	449BD0h

l0000000000449B7B:
	lea	rdi,[rsi+rsi]
	mov	r8,rdi
	call	41BCC0h
	mov	rcx,[rbx]

l0000000000449B8A:
	xor	edx,edx
	mov	rax,rbx
	mov	dword ptr [rcx-8h],0h
	mov	[rcx-18h],rsi
	mov	[rcx+rdi],dx
	add	rsp,30h
	pop	rbx
	pop	rsi
	pop	rdi
	ret
0000000000449BA6                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l0000000000449BB0:
	test	rax,rax
	jz	449BE0h

l0000000000449BB5:
	cmp	rsi,1h
	jz	449BD0h

l0000000000449BBB:
	lea	rdi,[rsi+rsi]
	mov	r8,rdi
	call	41BD28h
	mov	rcx,[rbx]
	jmp	449B8Ah
0000000000449BCC                                     0F 1F 40 00             ..@.

l0000000000449BD0:
	movzx	eax,word ptr [rdx]
	mov	edi,2h
	mov	[rcx],ax
	jmp	449B8Ah
0000000000449BDD                                        0F 1F 00              ...

l0000000000449BE0:
	lea	rdi,[rsi+rsi]
	jmp	449B8Ah

l0000000000449BE6:
	lea	rcx,[000000000048DA89]                                 ; [rip+00043E9C]
	call	470E60h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop

;; fn0000000000449C00: 0000000000449C00
;;   Called from:
;;     0000000000449BFF (in fn0000000000449C00)
;;     000000000044AED0 (in fn000000000044AED0)
fn0000000000449C00 proc
	push	rsi
	push	rbx
	sub	rsp,38h
	mov	rbx,[rdx]
	cmp	[rcx],rbx
	mov	rsi,rcx
	jz	449C31h

l0000000000449C11:
	mov	eax,[rbx-8h]
	test	eax,eax
	js	449C40h

l0000000000449C18:
	lock
	add	dword ptr [rbx-8h],1h

l0000000000449C1D:
	mov	rcx,[rsi]
	mov	eax,0FFFFFFFFh
	lock
	xadd	[rcx-8h],eax
	test	eax,eax
	jle	449C60h

l0000000000449C2E:
	mov	[rsi],rbx

l0000000000449C31:
	mov	rax,rsi
	add	rsp,38h
	pop	rbx
	pop	rsi
	ret
0000000000449C3B                                  0F 1F 44 00 00            ..D..

l0000000000449C40:
	lea	rcx,[rbx-18h]
	lea	rdx,[rsp+2Fh]
	xor	r8d,r8d
	call	449420h
	mov	rbx,rax
	jmp	449C1Dh
0000000000449C56                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l0000000000449C60:
	sub	rcx,18h
	call	475550h
	jmp	449C2Eh
0000000000449C6B                                  90 90 90 90 90            .....

;; fn0000000000449C70: 0000000000449C70
fn0000000000449C70 proc
	sub	rsp,28h
	mov	r10,[rdx]
	mov	rdx,[r10-18h]
	mov	rax,rdx
	sub	rax,r8
	cmp	rax,r9
	cmova	rax,r9

l0000000000449C88:
	cmp	r8,rdx
	ja	449C9Dh

l0000000000449C8D:
	lea	rdx,[r10+r8*2]
	mov	r8,rax
	add	rsp,28h
	jmp	449B10h

l0000000000449C9D:
	mov	r9,rdx
	lea	rcx,[000000000048D970]                                 ; [rip+00043CC9]
	lea	rdx,[000000000048DA89]                                 ; [rip+00043DDB]
	call	471560h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop

;; fn0000000000449CC0: 0000000000449CC0
;;   Called from:
;;     0000000000449CBF (in fn0000000000449C70)
fn0000000000449CC0 proc
	mov	rax,rdx
	mov	rdx,[rdx]
	mov	r8,[rax+8h]
	jmp	449B10h
0000000000449CCF                                              90                .

;; fn0000000000449CD0: 0000000000449CD0
fn0000000000449CD0 proc
	sub	rsp,38h
	mov	rax,[rcx]
	movzx	r8d,r8w
	mov	r9,rdx
	xor	edx,edx
	mov	rax,[rax-18h]
	mov	[rsp+20h],r8d
	mov	r8,rax
	call	4491E0h
	add	rsp,38h
	ret
0000000000449CF6                   90 90 90 90 90 90 90 90 90 90       ..........

;; fn0000000000449D00: 0000000000449D00
fn0000000000449D00 proc
	sub	rdx,[rcx]
	mov	r9,[r8+8h]
	mov	r8,[r8]
	sar	rdx,1h
	jmp	449DD0h
0000000000449D12       90 90 90 90 90 90 90 90 90 90 90 90 90 90   ..............

;; fn0000000000449D20: 0000000000449D20
fn0000000000449D20 proc
	push	rsi
	push	rbx
	sub	rsp,38h
	mov	r9d,1h
	mov	rbx,rdx
	sub	rbx,[rcx]
	movzx	r8d,r8w
	mov	rsi,rcx
	mov	[rsp+20h],r8d
	xor	r8d,r8d
	mov	rdx,rbx
	sar	rdx,1h
	call	4491E0h
	mov	rax,[rsi]
	mov	dword ptr [rax-8h],0FFFFFFFFh
	add	rax,rbx
	add	rsp,38h
	pop	rbx
	pop	rsi
	ret

;; fn0000000000449D60: 0000000000449D60
fn0000000000449D60 proc
	sub	rsp,38h
	sub	rdx,[rcx]
	movzx	r9d,r9w
	mov	[rsp+20h],r9d
	mov	r9,r8
	xor	r8d,r8d
	sar	rdx,1h
	call	4491E0h
	nop
	add	rsp,38h
	ret
0000000000449D84             90 90 90 90 90 90 90 90 90 90 90 90     ............

;; fn0000000000449D90: 0000000000449D90
fn0000000000449D90 proc
	push	rsi
	push	rbx
	sub	rsp,38h
	mov	rbx,rcx
	mov	rcx,r8
	mov	rsi,rdx
	mov	[rsp+28h],r8
	call	41BD38h
	mov	r8,[rsp+28h]
	mov	r9,rax
	mov	rdx,rsi
	mov	rcx,rbx
	add	rsp,38h
	pop	rbx
	pop	rsi
	jmp	449DD0h
0000000000449DC2       90 90 90 90 90 90 90 90 90 90 90 90 90 90   ..............

;; fn0000000000449DD0: 0000000000449DD0
;;   Called from:
;;     0000000000449D0D (in fn0000000000449D00)
;;     0000000000449DBD (in fn0000000000449D90)
;;     0000000000449F77 (in fn0000000000449F70)
;;     0000000000449FAD (in fn0000000000449F80)
fn0000000000449DD0 proc
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,30h
	mov	rax,[rcx]
	mov	rdi,r9
	mov	rsi,rcx
	mov	rbp,rdx
	mov	r9,[rax-18h]
	cmp	rdx,r9
	ja	449F49h

l0000000000449DF3:
	mov	rcx,1FFFFFFFFFFFFFFCh
	sub	rcx,r9
	cmp	rdi,rcx
	ja	449F5Fh

l0000000000449E09:
	cmp	r8,rax
	jnc	449E30h

l0000000000449E0E:
	mov	r9,r8
	mov	[rsp+20h],rdi
	xor	r8d,r8d
	mov	rdx,rbp
	mov	rcx,rsi
	call	449270h

l0000000000449E24:
	add	rsp,30h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
0000000000449E2F                                              90                .

l0000000000449E30:
	lea	rdx,[rax+r9*2]
	cmp	r8,rdx
	ja	449E0Eh

l0000000000449E39:
	mov	edx,[rax-8h]
	test	edx,edx
	jg	449E0Eh

l0000000000449E40:
	mov	rbx,r8
	mov	r9,rdi
	xor	r8d,r8d
	mov	rdx,rbp
	mov	rcx,rsi
	sub	rbx,rax
	call	44A6C0h
	mov	rax,[rsi]
	lea	r10,[rax+rbx]
	lea	rbx,[rdi+rdi]
	lea	r9,[rax+rbp*2]
	lea	rdx,[r10+rbx]
	cmp	r9,rdx
	jc	449E95h

l0000000000449E6F:
	cmp	rdi,1h
	jz	449EF5h

l0000000000449E79:
	mov	r8,rbx
	mov	rdx,r10
	mov	rcx,r9
	call	41BCC0h
	mov	rax,rsi
	add	rsp,30h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret

l0000000000449E95:
	cmp	r10,r9
	jnc	449EE0h

l0000000000449E9A:
	mov	rbp,r9
	sub	rbp,r10
	mov	r12,rbp
	sar	r12,1h
	cmp	r12,1h
	jnz	449F33h

l0000000000449EB0:
	movzx	eax,word ptr [r10]
	mov	[r9],ax

l0000000000449EB8:
	sub	rdi,r12
	lea	rdx,[r9+rbx]
	lea	rcx,[r9+rbp]
	cmp	rdi,1h
	mov	r8,rdi
	jnz	449F23h

l0000000000449ECC:
	movzx	eax,word ptr [rdx]
	mov	[rcx],ax
	mov	rax,rsi
	jmp	449E24h
0000000000449EDA                               66 0F 1F 44 00 00           f..D..

l0000000000449EE0:
	cmp	rdi,1h
	jnz	449F10h

l0000000000449EE6:
	movzx	eax,word ptr [rdx]
	mov	[r9],ax
	mov	rax,rsi
	jmp	449E24h

l0000000000449EF5:
	movzx	eax,word ptr [r10]
	mov	[r9],ax
	mov	rax,rsi
	add	rsp,30h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
0000000000449F0B                                  0F 1F 44 00 00            ..D..

l0000000000449F10:
	mov	r8,rbx
	mov	rcx,r9
	call	41BCC0h
	mov	rax,rsi
	jmp	449E24h

l0000000000449F23:
	add	r8,r8
	call	41BCC0h
	mov	rax,rsi
	jmp	449E24h

l0000000000449F33:
	mov	rcx,r9
	mov	r8,rbp
	mov	rdx,r10
	call	41BCC0h
	mov	r9,rax
	jmp	449EB8h

l0000000000449F49:
	mov	r8,rdx
	lea	rcx,[000000000048D970]                                 ; [rip+00043A1D]
	lea	rdx,[000000000048DA5E]                                 ; [rip+00043B04]
	call	471560h

l0000000000449F5F:
	lea	rcx,[000000000048DA5E]                                 ; [rip+00043AF8]
	call	470E60h
	nop
	nop
	nop
	nop
	nop

;; fn0000000000449F70: 0000000000449F70
;;   Called from:
;;     0000000000449F6F (in fn0000000000449DD0)
fn0000000000449F70 proc
	mov	r8,[r8]
	mov	r9,[r8-18h]
	jmp	449DD0h
0000000000449F7C                                     90 90 90 90             ....

;; fn0000000000449F80: 0000000000449F80
fn0000000000449F80 proc
	sub	rsp,28h
	mov	r8,[r8]
	mov	r10,r9
	mov	r9,[rsp+50h]
	mov	r11,[r8-18h]
	mov	rax,r11
	sub	rax,r10
	cmp	rax,r9
	cmovbe	r9,rax

l0000000000449FA0:
	cmp	r10,r11
	ja	449FB2h

l0000000000449FA5:
	lea	r8,[r8+r10*2]
	add	rsp,28h
	jmp	449DD0h

l0000000000449FB2:
	lea	rdx,[000000000048DA5E]                                 ; [rip+00043AA5]
	lea	rcx,[000000000048D970]                                 ; [rip+000439B0]
	mov	r8,r10
	mov	r9,r11
	call	471560h
	nop
	nop
	nop
	nop
	nop

;; fn0000000000449FD0: 0000000000449FD0
;;   Called from:
;;     0000000000449FCF (in fn0000000000449F80)
fn0000000000449FD0 proc
	sub	rsp,38h
	mov	rax,[rcx]
	movzx	r9d,r9w
	mov	rax,[rax-18h]
	cmp	rdx,rax
	ja	449FF9h

l0000000000449FE4:
	mov	[rsp+20h],r9d
	mov	r9,r8
	xor	r8d,r8d
	call	4491E0h
	add	rsp,38h
	ret

l0000000000449FF9:
	mov	r8,rdx
	lea	rcx,[000000000048D970]                                 ; [rip+0004396D]
	lea	rdx,[000000000048DA5E]                                 ; [rip+00043A54]
	mov	r9,rax
	call	471560h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop

;; fn000000000044A020: 000000000044A020
;;   Called from:
;;     000000000044A01F (in fn0000000000449FD0)
fn000000000044A020 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	mov	r8,[rdx]
	mov	rsi,rcx
	mov	rbx,rdx
	mov	eax,[r8-8h]
	test	eax,eax
	js	44A042h

l000000000044A037:
	mov	rcx,rdx
	call	448E80h
	mov	r8,[rbx]

l000000000044A042:
	mov	rax,[r8-18h]
	lea	rax,[r8+rax*2]
	mov	[rsi],rax
	mov	rax,rsi
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret
000000000044A057                      90 90 90 90 90 90 90 90 90        .........

;; fn000000000044A060: 000000000044A060
fn000000000044A060 proc
	xor	r8d,r8d
	jmp	44A070h
000000000044A068                         90 90 90 90 90 90 90 90         ........

;; fn000000000044A070: 000000000044A070
;;   Called from:
;;     0000000000446663 (in fn0000000000446570)
;;     000000000044A063 (in fn000000000044A060)
fn000000000044A070 proc
	sub	rsp,28h
	mov	rax,[rcx]
	mov	r9,1FFFFFFFFFFFFFFCh
	cmp	rdx,r9
	mov	rax,[rax-18h]
	ja	44A0C4h

l000000000044A08A:
	cmp	rdx,rax
	ja	44A0A0h

l000000000044A08F:
	jc	44A0B2h

l000000000044A091:
	add	rsp,28h
	ret
000000000044A096                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l000000000044A0A0:
	sub	rdx,rax
	jz	44A091h

l000000000044A0A5:
	movzx	r8d,r8w
	add	rsp,28h
	jmp	4499F0h

l000000000044A0B2:
	sub	rax,rdx
	xor	r9d,r9d
	mov	r8,rax
	add	rsp,28h
	jmp	44A6C0h

l000000000044A0C4:
	lea	rcx,[000000000048DAB3]                                 ; [rip+000439E8]
	call	470E60h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop

;; fn000000000044A0E0: 000000000044A0E0
;;   Called from:
;;     000000000044A0DF (in fn000000000044A070)
fn000000000044A0E0 proc
	cmp	r8,1h
	jz	44A0F0h

l000000000044A0E6:
	add	r8,r8
	jmp	41BCC0h
000000000044A0EE                                           66 90               f.

l000000000044A0F0:
	movzx	eax,word ptr [rdx]
	mov	[rcx],ax
	ret
000000000044A0F7                      90 90 90 90 90 90 90 90 90        .........

;; fn000000000044A100: 000000000044A100
fn000000000044A100 proc
	mov	rax,rdx
	mov	[rcx],rdx
	ret
000000000044A107                      90 90 90 90 90 90 90 90 90        .........

;; fn000000000044A110: 000000000044A110
fn000000000044A110 proc
	mov	rax,[rcx]
	mov	eax,[rax-8h]
	test	eax,eax
	js	44A120h

l000000000044A11A:
	jmp	448E80h
000000000044A11F                                              90                .

l000000000044A120:
	ret
000000000044A122       90 90 90 90 90 90 90 90 90 90 90 90 90 90   ..............

;; fn000000000044A130: 000000000044A130
fn000000000044A130 proc
	cmp	r8,1h
	jz	44A140h

l000000000044A136:
	add	r8,r8
	jmp	41BD28h
000000000044A13E                                           66 90               f.

l000000000044A140:
	movzx	eax,word ptr [rdx]
	mov	[rcx],ax
	ret
000000000044A147                      90 90 90 90 90 90 90 90 90        .........

;; fn000000000044A150: 000000000044A150
fn000000000044A150 proc
	mov	rax,[rsp+28h]
	sub	r8,rdx
	sub	rdx,[rcx]
	sar	r8,1h
	sub	rax,r9
	sar	rax,1h
	sar	rdx,1h
	mov	[rsp+28h],rax
	jmp	44A340h
000000000044A171    90 90 90 90 90 90 90 90 90 90 90 90 90 90 90  ...............

;; fn000000000044A180: 000000000044A180
fn000000000044A180 proc
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,40h
	mov	rdi,rcx
	mov	rbx,rdx
	mov	rsi,r8
	mov	rcx,r9
	mov	[rsp+38h],r9
	sub	rsi,rbx
	call	41BD38h
	sub	rbx,[rdi]
	mov	r9,[rsp+38h]
	mov	r8,rsi
	mov	[rsp+20h],rax
	sar	r8,1h
	mov	rcx,rdi
	mov	rdx,rbx
	sar	rdx,1h
	call	44A340h
	add	rsp,40h
	pop	rbx
	pop	rsi
	pop	rdi
	ret
000000000044A1C9                            90 90 90 90 90 90 90          .......

;; fn000000000044A1D0: 000000000044A1D0
fn000000000044A1D0 proc
	mov	rax,[rsp+28h]
	sub	r8,rdx
	sub	rdx,[rcx]
	sar	r8,1h
	sub	rax,r9
	sar	rax,1h
	sar	rdx,1h
	mov	[rsp+28h],rax
	jmp	44A340h
000000000044A1F1    90 90 90 90 90 90 90 90 90 90 90 90 90 90 90  ...............

;; fn000000000044A200: 000000000044A200
fn000000000044A200 proc
	sub	r8,rdx
	sub	rdx,[rcx]
	sar	r8,1h
	sar	rdx,1h
	jmp	44A340h
000000000044A211    90 90 90 90 90 90 90 90 90 90 90 90 90 90 90  ...............

;; fn000000000044A220: 000000000044A220
fn000000000044A220 proc
	sub	rsp,38h
	mov	r9,[r9]
	sub	r8,rdx
	sub	rdx,[rcx]
	sar	r8,1h
	mov	rax,[r9-18h]
	sar	rdx,1h
	mov	[rsp+20h],rax
	call	44A340h
	add	rsp,38h
	ret
000000000044A246                   90 90 90 90 90 90 90 90 90 90       ..........

;; fn000000000044A250: 000000000044A250
fn000000000044A250 proc
	mov	rax,[rsp+28h]
	sub	r8,rdx
	sub	rdx,[rcx]
	sar	r8,1h
	sub	rax,r9
	sar	rax,1h
	sar	rdx,1h
	mov	[rsp+28h],rax
	jmp	44A340h
000000000044A271    90 90 90 90 90 90 90 90 90 90 90 90 90 90 90  ...............

;; fn000000000044A280: 000000000044A280
fn000000000044A280 proc
	mov	rax,[rsp+28h]
	sub	r8,rdx
	sub	rdx,[rcx]
	sar	r8,1h
	sub	rax,r9
	sar	rax,1h
	sar	rdx,1h
	mov	[rsp+28h],rax
	jmp	44A340h
000000000044A2A1    90 90 90 90 90 90 90 90 90 90 90 90 90 90 90  ...............

;; fn000000000044A2B0: 000000000044A2B0
fn000000000044A2B0 proc
	sub	rsp,38h
	mov	rax,r9
	sub	r8,rdx
	sub	rdx,[rcx]
	mov	rax,[rax+8h]
	mov	r9,[r9]
	sar	r8,1h
	add	rax,rax
	sar	rdx,1h
	sar	rax,1h
	mov	[rsp+20h],rax
	call	44A340h
	add	rsp,38h
	ret
000000000044A2DF                                              90                .

;; fn000000000044A2E0: 000000000044A2E0
fn000000000044A2E0 proc
	movzx	eax,word ptr [rsp+28h]
	sub	r8,rdx
	sub	rdx,[rcx]
	sar	r8,1h
	mov	[rsp+28h],eax
	sar	rdx,1h
	jmp	4491E0h
000000000044A2FA                               90 90 90 90 90 90           ......

;; fn000000000044A300: 000000000044A300
fn000000000044A300 proc
	push	rsi
	push	rbx
	sub	rsp,48h
	mov	rbx,rcx
	mov	rcx,r9
	mov	rsi,rdx
	mov	[rsp+38h],r8
	mov	[rsp+30h],r9
	call	41BD38h
	mov	r9,[rsp+30h]
	mov	r8,[rsp+38h]
	mov	rdx,rsi
	mov	[rsp+20h],rax
	mov	rcx,rbx
	call	44A340h
	add	rsp,48h
	pop	rbx
	pop	rsi
	ret
000000000044A33F                                              90                .

;; fn000000000044A340: 000000000044A340
;;   Called from:
;;     000000000044A16C (in fn000000000044A150)
;;     000000000044A1BC (in fn000000000044A180)
;;     000000000044A1EC (in fn000000000044A1D0)
;;     000000000044A20C (in fn000000000044A200)
;;     000000000044A23C (in fn000000000044A220)
;;     000000000044A26C (in fn000000000044A250)
;;     000000000044A29C (in fn000000000044A280)
;;     000000000044A2D5 (in fn000000000044A2B0)
;;     000000000044A333 (in fn000000000044A300)
;;     000000000044A510 (in fn000000000044A500)
;;     000000000044A556 (in fn000000000044A520)
fn000000000044A340 proc
	push	r14
	push	r13
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,50h
	mov	r12,[rsp+0B0h]
	mov	rdi,rcx
	mov	rcx,[rcx]
	mov	r10,r9
	mov	rbp,rdx
	mov	r9,[rcx-18h]
	cmp	rdx,r9
	ja	44A4CBh

l000000000044A36F:
	mov	rsi,r9
	mov	rax,1FFFFFFFFFFFFFFCh
	sub	rsi,rdx
	cmp	rsi,r8
	cmova	rsi,r8

l000000000044A386:
	sub	rax,r9
	add	rax,rsi
	cmp	r12,rax
	ja	44A4BFh

l000000000044A395:
	cmp	r10,rcx
	jc	44A3A3h

l000000000044A39A:
	lea	rax,[rcx+r9*2]
	cmp	r10,rax
	jbe	44A3D0h

l000000000044A3A3:
	mov	[rsp+20h],r12
	mov	r9,r10
	mov	r8,rsi
	mov	rdx,rbp
	mov	rcx,rdi
	call	449270h

l000000000044A3B9:
	add	rsp,50h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	ret
000000000044A3C8                         0F 1F 84 00 00 00 00 00         ........

l000000000044A3D0:
	mov	eax,[rcx-8h]
	test	eax,eax
	jg	44A3A3h

l000000000044A3D7:
	lea	r14,[r12]
	lea	r13,[rbp+rbp+0h]
	lea	rdx,[r10+r14]
	lea	rax,[rcx+r13]
	cmp	rdx,rax
	jbe	44A450h

l000000000044A3ED:
	lea	rax,[rsi+rbp]
	lea	rax,[rcx+rax*2]
	cmp	r10,rax
	jnc	44A4B0h

l000000000044A3FE:
	lea	r13,[rsp+4Fh]
	xor	r9d,r9d
	mov	rcx,r10
	mov	r8,r13
	call	448F90h
	mov	[rsp+20h],r12
	mov	r9,rax
	mov	r8,rsi
	mov	rdx,rbp
	mov	rcx,rdi
	mov	rbx,rax
	call	449270h
	mov	edx,0FFFFFFFFh
	lock
	xadd	[rbx-8h],edx
	test	edx,edx
	jg	44A3B9h

l000000000044A438:
	lea	rcx,[rbx-18h]
	mov	[rsp+38h],rax
	call	475550h
	mov	rax,[rsp+38h]
	jmp	44A3B9h

l000000000044A450:
	sub	r10,rcx
	mov	rbx,r10
	sar	rbx,1h

l000000000044A459:
	mov	rdx,rbp
	mov	rcx,rdi
	mov	r9,r12
	mov	r8,rsi
	call	44A6C0h
	mov	rcx,[rdi]
	lea	rdx,[rcx+rbx*2]
	add	rcx,r13
	cmp	r12,1h
	jnz	44A492h

l000000000044A47A:
	movzx	eax,word ptr [rdx]
	mov	[rcx],ax
	mov	rax,rdi
	add	rsp,50h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	ret

l000000000044A492:
	mov	r8,r14
	call	41BCC0h
	mov	rax,rdi
	add	rsp,50h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	ret
000000000044A4AC                                     0F 1F 40 00             ..@.

l000000000044A4B0:
	sub	r10,rcx
	sar	r10,1h
	lea	rbx,[r10]
	sub	rbx,rsi
	jmp	44A459h

l000000000044A4BF:
	lea	rcx,[000000000048DA73]                                 ; [rip+000435AD]
	call	470E60h

l000000000044A4CB:
	mov	r8,rdx
	lea	rcx,[000000000048D970]                                 ; [rip+0004349B]
	lea	rdx,[000000000048DA73]                                 ; [rip+00043597]
	call	471560h
	lea	rcx,[rbx-18h]
	mov	rsi,rax
	mov	rdx,r13
	call	449370h
	mov	rcx,rsi
	call	4115B0h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop

;; fn000000000044A500: 000000000044A500
;;   Called from:
;;     000000000044A4FF (in fn000000000044A340)
fn000000000044A500 proc
	sub	rsp,38h
	mov	r9,[r9]
	mov	rax,[r9-18h]
	mov	[rsp+20h],rax
	call	44A340h
	add	rsp,38h
	ret
000000000044A51A                               90 90 90 90 90 90           ......

;; fn000000000044A520: 000000000044A520
fn000000000044A520 proc
	push	rbx
	sub	rsp,20h
	mov	rbx,[r9]
	mov	r10,[rsp+50h]
	mov	r11,[rsp+58h]
	mov	r9,[rbx-18h]
	mov	rax,r9
	sub	rax,r10
	cmp	rax,r11
	cmova	rax,r11

l000000000044A543:
	cmp	r10,r9
	ja	44A55Bh

l000000000044A548:
	lea	r9,[rbx+r10*2]
	mov	[rsp+50h],rax
	add	rsp,20h
	pop	rbx
	jmp	44A340h

l000000000044A55B:
	lea	rdx,[000000000048DA73]                                 ; [rip+00043511]
	lea	rcx,[000000000048D970]                                 ; [rip+00043407]
	mov	r8,r10
	call	471560h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop

;; fn000000000044A580: 000000000044A580
;;   Called from:
;;     000000000044A57F (in fn000000000044A520)
fn000000000044A580 proc
	sub	rsp,28h
	mov	rax,[rcx]
	movzx	r11d,word ptr [rsp+50h]
	mov	r10,[rax-18h]
	mov	rax,r10
	sub	rax,rdx
	cmp	rax,r8
	cmovbe	r8,rax

l000000000044A59E:
	cmp	rdx,r10
	ja	44A5B1h

l000000000044A5A3:
	mov	[rsp+50h],r11d
	add	rsp,28h
	jmp	4491E0h

l000000000044A5B1:
	mov	r8,rdx
	lea	rcx,[000000000048D970]                                 ; [rip+000433B5]
	lea	rdx,[000000000048DA73]                                 ; [rip+000434B1]
	mov	r9,r10
	call	471560h
	nop
	nop
	nop
	nop
	nop
	nop

;; fn000000000044A5D0: 000000000044A5D0
;;   Called from:
;;     000000000042CB95 (in fn000000000042CAE0)
;;     0000000000447E07 (in fn0000000000447CD0)
;;     0000000000447F3C (in fn0000000000447CD0)
;;     0000000000447FE6 (in fn0000000000447CD0)
;;     00000000004485F7 (in fn00000000004484C0)
;;     000000000044872C (in fn00000000004484C0)
;;     00000000004487D6 (in fn00000000004484C0)
;;     00000000004491C2 (in fn00000000004491A0)
;;     00000000004497A4 (in fn0000000000449760)
;;     0000000000449803 (in fn0000000000449760)
;;     0000000000449871 (in fn0000000000449840)
;;     0000000000449929 (in fn00000000004498E0)
;;     0000000000449A37 (in fn00000000004499F0)
;;     000000000044A5CF (in fn000000000044A580)
;;     000000000044A84A (in fn000000000044A820)
;;     000000000044B00B (in fn000000000044AFE0)
;;     000000000047216C (in fn0000000000471F90)
;;     000000000047405F (in fn0000000000474020)
;;     0000000000474152 (in fn0000000000474120)
fn000000000044A5D0 proc
	push	rbx
	sub	rsp,40h
	mov	rax,[rcx]
	cmp	rdx,[rax-10h]
	jz	44A620h

l000000000044A5DE:
	mov	r9,[rax-18h]
	mov	rbx,rcx
	lea	rcx,[rax-18h]
	cmp	rdx,r9
	cmovc	rdx,r9

l000000000044A5F0:
	mov	r8,rdx
	lea	rdx,[rsp+3Fh]
	sub	r8,r9
	call	449420h
	mov	rcx,[rbx]
	mov	edx,0FFFFFFFFh
	lock
	xadd	[rcx-8h],edx
	test	edx,edx
	jle	44A630h

l000000000044A611:
	mov	[rbx],rax

l000000000044A614:
	add	rsp,40h
	pop	rbx
	ret
000000000044A61A                               66 0F 1F 44 00 00           f..D..

l000000000044A620:
	mov	r8d,[rax-8h]
	test	r8d,r8d
	jg	44A5DEh

l000000000044A629:
	jmp	44A614h
000000000044A62B                                  0F 1F 44 00 00            ..D..

l000000000044A630:
	sub	rcx,18h
	mov	[rsp+28h],rax
	call	475550h
	mov	rax,[rsp+28h]
	jmp	44A611h
000000000044A645                90 90 90 90 90 90 90 90 90 90 90      ...........

;; fn000000000044A650: 000000000044A650
fn000000000044A650 proc
	sub	rsp,28h
	mov	rax,[rcx]
	mov	r9,[rax-18h]
	lea	rdx,[r9-1h]
	cmp	rdx,r9
	ja	44A676h

l000000000044A664:
	xor	r9d,r9d
	mov	r8d,1h
	add	rsp,28h
	jmp	44A6C0h

l000000000044A676:
	mov	r8,rdx
	lea	rcx,[000000000048D970]                                 ; [rip+000432F0]
	lea	rdx,[000000000048DA2D]                                 ; [rip+000433A6]
	call	471560h
	nop
	nop
	nop
	nop

;; fn000000000044A690: 000000000044A690
;;   Called from:
;;     000000000044A68F (in fn000000000044A650)
fn000000000044A690 proc
	cmp	rdx,1h
	mov	eax,r8d
	jz	44A6B0h

l000000000044A699:
	test	rdx,rdx
	jz	44A6B5h

l000000000044A69E:
	nop

l000000000044A6A0:
	mov	[rcx],ax
	add	rcx,2h
	sub	rdx,1h
	jnz	44A6A0h

l000000000044A6AD:
	ret
000000000044A6AF                                              90                .

l000000000044A6B0:
	mov	[rcx],r8w
	ret

l000000000044A6B5:
	ret
000000000044A6B7                      90 90 90 90 90 90 90 90 90        .........

;; fn000000000044A6C0: 000000000044A6C0
;;   Called from:
;;     0000000000447F05 (in fn0000000000447CD0)
;;     00000000004486F5 (in fn00000000004484C0)
;;     0000000000448E9A (in fn0000000000448E80)
;;     0000000000449215 (in fn00000000004491E0)
;;     0000000000449289 (in fn0000000000449270)
;;     00000000004495EC (in fn00000000004495E0)
;;     000000000044961E (in fn0000000000449600)
;;     0000000000449672 (in fn0000000000449640)
;;     00000000004496B4 (in fn0000000000449690)
;;     0000000000449E52 (in fn0000000000449DD0)
;;     000000000044A0BF (in fn000000000044A070)
;;     000000000044A465 (in fn000000000044A340)
;;     000000000044A671 (in fn000000000044A650)
;;     000000000047201F (in fn0000000000471F90)
;;     0000000000474F70 (in fn0000000000474F00)
fn000000000044A6C0 proc
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,38h
	mov	rax,[rcx]
	mov	rdi,r9
	mov	r12,rdx
	mov	r14,rcx
	sub	rdi,r8
	mov	rbp,r8
	mov	r13,r9
	mov	r10,[rax-18h]
	add	rdi,r10
	sub	r10,rdx
	mov	rdx,[rax-10h]
	mov	rsi,r10
	sub	rsi,r8
	cmp	rdi,rdx
	ja	44A709h

l000000000044A6FE:
	mov	ecx,[rax-8h]
	test	ecx,ecx
	jle	44A7A0h

l000000000044A709:
	lea	r8,[rsp+2Fh]
	mov	rcx,rdi
	call	449490h
	test	r12,r12
	mov	r15,rax
	mov	r10,[r14]
	lea	rbx,[rax+18h]
	jz	44A740h

l000000000044A725:
	cmp	r12,1h
	jnz	44A7F1h

l000000000044A72F:
	movzx	eax,word ptr [r10]
	mov	[r15+18h],ax
	nop	dword ptr [rax+rax+0h]

l000000000044A740:
	test	rsi,rsi
	jz	44A764h

l000000000044A745:
	add	rbp,r12
	add	r12,r13
	cmp	rsi,1h
	lea	rdx,[r10+rbp*2]
	lea	rcx,[r15+18h]
	jnz	44A7E0h

l000000000044A75E:
	movzx	eax,word ptr [rdx]
	mov	[rcx],ax

l000000000044A764:
	mov	eax,0FFFFFFFFh
	lock
	xadd	[r10-8h],eax
	test	eax,eax
	jle	44A810h

l000000000044A777:
	mov	[r14],rbx
	mov	rax,rbx

l000000000044A77D:
	xor	edx,edx
	mov	dword ptr [rax-8h],0h
	mov	[rax-18h],rdi
	mov	[rax+rdi*2],dx
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
000000000044A79F                                              90                .

l000000000044A7A0:
	cmp	r8,r9
	jz	44A77Dh

l000000000044A7A5:
	test	rsi,rsi
	jz	44A77Dh

l000000000044A7AA:
	add	rbp,r12
	add	r12,r13
	cmp	rsi,1h
	lea	rdx,[rax+rbp*2]
	lea	rcx,[rax]
	jz	44A7D0h

l000000000044A7BE:
	lea	r8,[rsi+rsi]
	call	41BD28h
	mov	rax,[r14]
	jmp	44A77Dh
000000000044A7CC                                     0F 1F 40 00             ..@.

l000000000044A7D0:
	movzx	edx,word ptr [rdx]
	mov	[rcx],dx
	jmp	44A77Dh
000000000044A7D8                         0F 1F 84 00 00 00 00 00         ........

l000000000044A7E0:
	lea	r8,[rsi+rsi]
	call	41BCC0h
	mov	r10,[r14]
	jmp	44A764h

l000000000044A7F1:
	lea	r8,[r12]
	mov	rdx,r10
	mov	rcx,rbx
	call	41BCC0h
	mov	r10,[r14]
	jmp	44A740h
000000000044A808                         0F 1F 84 00 00 00 00 00         ........

l000000000044A810:
	lea	rcx,[r10-18h]
	call	475550h
	jmp	44A777h
000000000044A81E                                           90 90               ..

;; fn000000000044A820: 000000000044A820
fn000000000044A820 proc
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,20h
	mov	rax,[rcx]
	mov	rsi,rcx
	mov	edi,edx
	mov	r8,[rax-18h]
	lea	rbx,[r8+1h]
	cmp	rbx,[rax-10h]
	ja	44A844h

l000000000044A83D:
	mov	ecx,[rax-8h]
	test	ecx,ecx
	jle	44A856h

l000000000044A844:
	mov	rdx,rbx
	mov	rcx,rsi
	call	44A5D0h
	mov	rax,[rsi]
	mov	r8,[rax-18h]

l000000000044A856:
	xor	edx,edx
	mov	[rax+r8*2],di
	mov	dword ptr [rax-8h],0h
	mov	[rax-18h],rbx
	mov	[rax+rbx*2],dx
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	ret
000000000044A874             90 90 90 90 90 90 90 90 90 90 90 90     ............

;; fn000000000044A880: 000000000044A880
fn000000000044A880 proc
	push	rbx
	sub	rsp,30h
	mov	rax,[rdx]
	lea	r8,[rsp+2Fh]
	mov	rbx,rdx
	xor	edx,edx
	mov	[rcx],rax
	xor	ecx,ecx
	call	448EB0h
	mov	[rbx],rax
	add	rsp,30h
	pop	rbx
	ret
000000000044A8A5                90 90 90 90 90 90 90 90 90 90 90      ...........

;; fn000000000044A8B0: 000000000044A8B0
;;   Called from:
;;     000000000042964B (in fn0000000000429620)
;;     000000000042974B (in fn0000000000429720)
;;     000000000042979B (in fn0000000000429770)
;;     0000000000429805 (in fn00000000004297F0)
;;     0000000000429855 (in fn0000000000429840)
;;     0000000000429885 (in fn0000000000429870)
;;     000000000042998B (in fn0000000000429960)
;;     0000000000429A8B (in fn0000000000429A60)
;;     0000000000429ADB (in fn0000000000429AB0)
;;     0000000000429B45 (in fn0000000000429B30)
;;     0000000000429B95 (in fn0000000000429B80)
;;     0000000000429BC5 (in fn0000000000429BB0)
;;     000000000043C1E5 (in fn000000000043C1D0)
;;     000000000043C215 (in fn000000000043C200)
;;     000000000043C32B (in fn000000000043C300)
;;     000000000043C37B (in fn000000000043C350)
;;     00000000004646EE (in fn00000000004645D0)
;;     0000000000464763 (in fn00000000004645D0)
;;     00000000004647C3 (in fn00000000004645D0)
;;     0000000000464843 (in fn00000000004645D0)
;;     00000000004675F9 (in fn0000000000467480)
;;     000000000046766E (in fn0000000000467480)
;;     00000000004676CB (in fn0000000000467480)
;;     0000000000467746 (in fn0000000000467480)
;;     00000000004677AE (in fn0000000000467480)
;;     000000000046782E (in fn0000000000467480)
;;     0000000000467F89 (in fn0000000000467E10)
;;     0000000000467FFE (in fn0000000000467E10)
;;     000000000046805B (in fn0000000000467E10)
;;     00000000004680D6 (in fn0000000000467E10)
;;     000000000046813E (in fn0000000000467E10)
;;     00000000004681BE (in fn0000000000467E10)
fn000000000044A8B0 proc
	push	rsi
	push	rbx
	sub	rsp,38h
	mov	rbx,rdx
	mov	rsi,rcx
	mov	rdx,-2h
	test	rbx,rbx
	jz	44A8DEh

l000000000044A8C8:
	mov	rcx,rbx
	mov	[rsp+28h],r8
	call	41BD38h
	mov	r8,[rsp+28h]
	lea	rdx,[rbx+rax*2]

l000000000044A8DE:
	xor	r9d,r9d
	mov	rcx,rbx
	call	448F90h
	mov	[rsi],rax
	add	rsp,38h
	pop	rbx
	pop	rsi
	ret
000000000044A8F3          90 90 90 90 90 90 90 90 90 90 90 90 90    .............

;; fn000000000044A900: 000000000044A900
fn000000000044A900 proc
	push	rbx
	sub	rsp,20h
	mov	rbx,rcx
	mov	rax,rdx
	mov	rcx,r9
	lea	rdx,[rdx+r8*2]
	xor	r9d,r9d
	mov	r8,rcx
	mov	rcx,rax
	call	448F90h
	mov	[rbx],rax
	add	rsp,20h
	pop	rbx
	ret
000000000044A929                            90 90 90 90 90 90 90          .......

;; fn000000000044A930: 000000000044A930
fn000000000044A930 proc
	push	rbx
	sub	rsp,20h
	mov	rbx,rcx
	mov	r8,rdx
	xor	ecx,ecx
	xor	edx,edx
	call	448EB0h
	mov	[rbx],rax
	add	rsp,20h
	pop	rbx
	ret
000000000044A94D                                        90 90 90              ...

;; fn000000000044A950: 000000000044A950
;;   Called from:
;;     000000000043BF6D (in fn000000000043BF60)
fn000000000044A950 proc
	push	rbx
	sub	rsp,30h
	mov	rax,[rdx]
	mov	rbx,rcx
	mov	edx,[rax-8h]
	test	edx,edx
	js	44A970h

l000000000044A962:
	lock
	add	dword ptr [rax-8h],1h
	mov	[rbx],rax
	add	rsp,30h
	pop	rbx
	ret

l000000000044A970:
	lea	rdx,[rsp+2Fh]
	lea	rcx,[rax-18h]
	xor	r8d,r8d
	call	449420h
	mov	[rbx],rax
	add	rsp,30h
	pop	rbx
	ret
000000000044A98A                               90 90 90 90 90 90           ......

;; fn000000000044A990: 000000000044A990
;;   Called from:
;;     0000000000427BB4 (in fn0000000000427BA0)
fn000000000044A990 proc
	push	rbx
	sub	rsp,30h
	mov	r10,[rdx]
	mov	rbx,rcx
	mov	r11,[r10-18h]
	mov	rax,r11
	sub	rax,r8
	cmp	rax,r9
	cmova	rax,r9

l000000000044A9AC:
	add	rax,r8
	cmp	r8,r11
	lea	rdx,[r10+rax*2]
	ja	44A9D2h

l000000000044A9B8:
	lea	rcx,[r10+r8*2]
	lea	r8,[rsp+2Fh]
	xor	r9d,r9d
	call	449090h
	mov	[rbx],rax
	add	rsp,30h
	pop	rbx
	ret

l000000000044A9D2:
	lea	rdx,[000000000048DAF2]                                 ; [rip+00043119]
	lea	rcx,[000000000048D970]                                 ; [rip+00042F90]
	mov	r9,r11
	call	471560h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop

;; fn000000000044A9F0: 000000000044A9F0
;;   Called from:
;;     000000000044A9EF (in fn000000000044A990)
fn000000000044A9F0 proc
	push	rbx
	sub	rsp,20h
	mov	r10,[rdx]
	mov	rbx,rcx
	mov	r11,[r10-18h]
	mov	rax,r11
	sub	rax,r8
	cmp	rax,r9
	cmova	rax,r9

l000000000044AA0C:
	add	rax,r8
	cmp	r8,r11
	lea	rdx,[r10+rax*2]
	ja	44AA32h

l000000000044AA18:
	lea	rcx,[r10+r8*2]
	mov	r8,[rsp+50h]
	xor	r9d,r9d
	call	449090h
	mov	[rbx],rax
	add	rsp,20h
	pop	rbx
	ret

l000000000044AA32:
	lea	rdx,[000000000048DAF2]                                 ; [rip+000430B9]
	lea	rcx,[000000000048D970]                                 ; [rip+00042F30]
	mov	r9,r11
	call	471560h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop

;; fn000000000044AA50: 000000000044AA50
;;   Called from:
;;     000000000044AA4F (in fn000000000044A9F0)
fn000000000044AA50 proc
	push	rbx
	sub	rsp,20h
	xor	r9d,r9d
	mov	rbx,rcx
	mov	rcx,[rdx]
	mov	rdx,[rdx+8h]
	lea	rdx,[rcx+rdx*2]
	call	448F90h
	mov	[rbx],rax
	add	rsp,20h
	pop	rbx
	ret
000000000044AA74             90 90 90 90 90 90 90 90 90 90 90 90     ............

;; fn000000000044AA80: 000000000044AA80
fn000000000044AA80 proc
	push	rbx
	sub	rsp,30h
	xor	edx,edx
	lea	r8,[rsp+2Fh]
	mov	rbx,rcx
	xor	ecx,ecx
	call	448EB0h
	mov	[rbx],rax
	add	rsp,30h
	pop	rbx
	ret
000000000044AA9F                                              90                .

;; fn000000000044AAA0: 000000000044AAA0
;;   Called from:
;;     0000000000447BED (in fn0000000000447AD0)
fn000000000044AAA0 proc
	push	rbx
	sub	rsp,20h
	mov	rbx,rcx
	mov	rcx,rdx
	movzx	edx,r8w
	mov	r8,r9
	call	448EB0h
	mov	[rbx],rax
	add	rsp,20h
	pop	rbx
	ret

;; fn000000000044AAC0: 000000000044AAC0
fn000000000044AAC0 proc
	push	rbx
	sub	rsp,20h
	mov	rbx,rcx
	mov	rcx,rdx
	mov	rdx,r8
	mov	r8,r9
	xor	r9d,r9d
	call	448F20h
	mov	[rbx],rax
	add	rsp,20h
	pop	rbx
	ret
000000000044AAE2       90 90 90 90 90 90 90 90 90 90 90 90 90 90   ..............

;; fn000000000044AAF0: 000000000044AAF0
fn000000000044AAF0 proc
	push	rbx
	sub	rsp,20h
	mov	rbx,rcx
	mov	rcx,rdx
	mov	rdx,r8
	mov	r8,r9
	xor	r9d,r9d
	call	448F90h
	mov	[rbx],rax
	add	rsp,20h
	pop	rbx
	ret
000000000044AB12       90 90 90 90 90 90 90 90 90 90 90 90 90 90   ..............

;; fn000000000044AB20: 000000000044AB20
fn000000000044AB20 proc
	push	rbx
	sub	rsp,20h
	mov	rbx,rcx
	mov	rcx,rdx
	mov	rdx,r8
	mov	r8,r9
	xor	r9d,r9d
	call	449090h
	mov	[rbx],rax
	add	rsp,20h
	pop	rbx
	ret
000000000044AB42       90 90 90 90 90 90 90 90 90 90 90 90 90 90   ..............

;; fn000000000044AB50: 000000000044AB50
fn000000000044AB50 proc
	push	rbx
	sub	rsp,30h
	mov	rax,[rdx]
	lea	r8,[rsp+2Fh]
	mov	rbx,rdx
	xor	edx,edx
	mov	[rcx],rax
	xor	ecx,ecx
	call	448EB0h
	mov	[rbx],rax
	add	rsp,30h
	pop	rbx
	ret
000000000044AB75                90 90 90 90 90 90 90 90 90 90 90      ...........

;; fn000000000044AB80: 000000000044AB80
fn000000000044AB80 proc
	push	rsi
	push	rbx
	sub	rsp,38h
	mov	rbx,rdx
	mov	rsi,rcx
	mov	rdx,-2h
	test	rbx,rbx
	jz	44ABAEh

l000000000044AB98:
	mov	rcx,rbx
	mov	[rsp+28h],r8
	call	41BD38h
	mov	r8,[rsp+28h]
	lea	rdx,[rbx+rax*2]

l000000000044ABAE:
	xor	r9d,r9d
	mov	rcx,rbx
	call	448F90h
	mov	[rsi],rax
	add	rsp,38h
	pop	rbx
	pop	rsi
	ret
000000000044ABC3          90 90 90 90 90 90 90 90 90 90 90 90 90    .............

;; fn000000000044ABD0: 000000000044ABD0
fn000000000044ABD0 proc
	push	rbx
	sub	rsp,20h
	mov	rbx,rcx
	mov	rax,rdx
	mov	rcx,r9
	lea	rdx,[rdx+r8*2]
	xor	r9d,r9d
	mov	r8,rcx
	mov	rcx,rax
	call	448F90h
	mov	[rbx],rax
	add	rsp,20h
	pop	rbx
	ret
000000000044ABF9                            90 90 90 90 90 90 90          .......

;; fn000000000044AC00: 000000000044AC00
fn000000000044AC00 proc
	push	rbx
	sub	rsp,20h
	mov	rbx,rcx
	mov	r8,rdx
	xor	ecx,ecx
	xor	edx,edx
	call	448EB0h
	mov	[rbx],rax
	add	rsp,20h
	pop	rbx
	ret
000000000044AC1D                                        90 90 90              ...

;; fn000000000044AC20: 000000000044AC20
fn000000000044AC20 proc
	push	rbx
	sub	rsp,30h
	mov	rax,[rdx]
	mov	rbx,rcx
	mov	edx,[rax-8h]
	test	edx,edx
	js	44AC40h

l000000000044AC32:
	lock
	add	dword ptr [rax-8h],1h
	mov	[rbx],rax
	add	rsp,30h
	pop	rbx
	ret

l000000000044AC40:
	lea	rdx,[rsp+2Fh]
	lea	rcx,[rax-18h]
	xor	r8d,r8d
	call	449420h
	mov	[rbx],rax
	add	rsp,30h
	pop	rbx
	ret
000000000044AC5A                               90 90 90 90 90 90           ......

;; fn000000000044AC60: 000000000044AC60
fn000000000044AC60 proc
	push	rbx
	sub	rsp,30h
	mov	r10,[rdx]
	mov	rbx,rcx
	mov	r11,[r10-18h]
	mov	rax,r11
	sub	rax,r8
	cmp	rax,r9
	cmova	rax,r9

l000000000044AC7C:
	add	rax,r8
	cmp	r8,r11
	lea	rdx,[r10+rax*2]
	ja	44ACA2h

l000000000044AC88:
	lea	rcx,[r10+r8*2]
	lea	r8,[rsp+2Fh]
	xor	r9d,r9d
	call	449090h
	mov	[rbx],rax
	add	rsp,30h
	pop	rbx
	ret

l000000000044ACA2:
	lea	rdx,[000000000048DAF2]                                 ; [rip+00042E49]
	lea	rcx,[000000000048D970]                                 ; [rip+00042CC0]
	mov	r9,r11
	call	471560h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop

;; fn000000000044ACC0: 000000000044ACC0
;;   Called from:
;;     000000000044ACBF (in fn000000000044AC60)
fn000000000044ACC0 proc
	push	rbx
	sub	rsp,20h
	mov	r10,[rdx]
	mov	rbx,rcx
	mov	r11,[r10-18h]
	mov	rax,r11
	sub	rax,r8
	cmp	rax,r9
	cmova	rax,r9

l000000000044ACDC:
	add	rax,r8
	cmp	r8,r11
	lea	rdx,[r10+rax*2]
	ja	44AD02h

l000000000044ACE8:
	lea	rcx,[r10+r8*2]
	mov	r8,[rsp+50h]
	xor	r9d,r9d
	call	449090h
	mov	[rbx],rax
	add	rsp,20h
	pop	rbx
	ret

l000000000044AD02:
	lea	rdx,[000000000048DAF2]                                 ; [rip+00042DE9]
	lea	rcx,[000000000048D970]                                 ; [rip+00042C60]
	mov	r9,r11
	call	471560h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop

;; fn000000000044AD20: 000000000044AD20
;;   Called from:
;;     000000000044AD1F (in fn000000000044ACC0)
fn000000000044AD20 proc
	push	rbx
	sub	rsp,20h
	xor	r9d,r9d
	mov	rbx,rcx
	mov	rcx,[rdx]
	mov	rdx,[rdx+8h]
	lea	rdx,[rcx+rdx*2]
	call	448F90h
	mov	[rbx],rax
	add	rsp,20h
	pop	rbx
	ret
000000000044AD44             90 90 90 90 90 90 90 90 90 90 90 90     ............

;; fn000000000044AD50: 000000000044AD50
fn000000000044AD50 proc
	push	rbx
	sub	rsp,30h
	xor	edx,edx
	lea	r8,[rsp+2Fh]
	mov	rbx,rcx
	xor	ecx,ecx
	call	448EB0h
	mov	[rbx],rax
	add	rsp,30h
	pop	rbx
	ret
000000000044AD6F                                              90                .

;; fn000000000044AD70: 000000000044AD70
fn000000000044AD70 proc
	push	rbx
	sub	rsp,20h
	mov	rbx,rcx
	mov	rcx,rdx
	movzx	edx,r8w
	mov	r8,r9
	call	448EB0h
	mov	[rbx],rax
	add	rsp,20h
	pop	rbx
	ret

;; fn000000000044AD90: 000000000044AD90
fn000000000044AD90 proc
	push	rbx
	sub	rsp,20h
	mov	rbx,rcx
	mov	rcx,rdx
	mov	rdx,r8
	mov	r8,r9
	xor	r9d,r9d
	call	448F20h
	mov	[rbx],rax
	add	rsp,20h
	pop	rbx
	ret
000000000044ADB2       90 90 90 90 90 90 90 90 90 90 90 90 90 90   ..............

;; fn000000000044ADC0: 000000000044ADC0
fn000000000044ADC0 proc
	push	rbx
	sub	rsp,20h
	mov	rbx,rcx
	mov	rcx,rdx
	mov	rdx,r8
	mov	r8,r9
	xor	r9d,r9d
	call	448F90h
	mov	[rbx],rax
	add	rsp,20h
	pop	rbx
	ret
000000000044ADE2       90 90 90 90 90 90 90 90 90 90 90 90 90 90   ..............

;; fn000000000044ADF0: 000000000044ADF0
fn000000000044ADF0 proc
	push	rbx
	sub	rsp,20h
	mov	rbx,rcx
	mov	rcx,rdx
	mov	rdx,r8
	mov	r8,r9
	xor	r9d,r9d
	call	449090h
	mov	[rbx],rax
	add	rsp,20h
	pop	rbx
	ret
000000000044AE12       90 90 90 90 90 90 90 90 90 90 90 90 90 90   ..............

;; fn000000000044AE20: 000000000044AE20
fn000000000044AE20 proc
	mov	rcx,[rcx]
	mov	eax,0FFFFFFFFh
	lock
	xadd	[rcx-8h],eax
	test	eax,eax
	jle	44AE33h

l000000000044AE31:
	ret

l000000000044AE33:
	sub	rcx,18h
	jmp	475550h
000000000044AE3C                                     90 90 90 90             ....

;; fn000000000044AE40: 000000000044AE40
fn000000000044AE40 proc
	mov	rcx,[rcx]
	mov	eax,0FFFFFFFFh
	lock
	xadd	[rcx-8h],eax
	test	eax,eax
	jle	44AE53h

l000000000044AE51:
	ret

l000000000044AE53:
	sub	rcx,18h
	jmp	475550h
000000000044AE5C                                     90 90 90 90             ....

;; fn000000000044AE60: 000000000044AE60
fn000000000044AE60 proc
	mov	r8,[rcx]
	mov	rax,rcx
	mov	r10d,[r8-8h]
	test	r10d,r10d
	js	44AE90h

l000000000044AE6F:
	mov	rcx,[rdx]
	mov	r9d,[rcx-8h]
	test	r9d,r9d
	jns	44AE82h

l000000000044AE7B:
	mov	dword ptr [rcx-8h],0h

l000000000044AE82:
	mov	[rax],rcx
	mov	[rdx],r8
	ret
000000000044AE89                            0F 1F 80 00 00 00 00          .......

l000000000044AE90:
	mov	dword ptr [r8-8h],0h
	jmp	44AE6Fh
000000000044AE9A                               90 90 90 90 90 90           ......

;; fn000000000044AEA0: 000000000044AEA0
fn000000000044AEA0 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	mov	rsi,rcx
	mov	rbx,rdx
	mov	rcx,rdx
	call	41BD38h
	mov	rdx,rbx
	mov	r8,rax
	mov	rcx,rsi
	add	rsp,28h
	pop	rbx
	pop	rsi
	jmp	449B10h
000000000044AEC8                         90 90 90 90 90 90 90 90         ........

;; fn000000000044AED0: 000000000044AED0
fn000000000044AED0 proc
	jmp	449C00h
000000000044AED5                90 90 90 90 90 90 90 90 90 90 90      ...........

;; fn000000000044AEE0: 000000000044AEE0
fn000000000044AEE0 proc
	push	rbx
	sub	rsp,20h
	mov	rax,rdx
	mov	rdx,[rdx]
	mov	rbx,rcx
	mov	r8,[rax+8h]
	call	449B10h
	mov	rax,rbx
	add	rsp,20h
	pop	rbx
	ret

;; fn000000000044AF00: 000000000044AF00
fn000000000044AF00 proc
	push	rbx
	sub	rsp,30h
	mov	rax,[rcx]
	mov	r9d,1h
	movzx	edx,dx
	mov	rbx,rcx
	mov	r8,[rax-18h]
	mov	[rsp+20h],edx
	xor	edx,edx
	call	4491E0h
	mov	rax,rbx
	add	rsp,30h
	pop	rbx
	ret
000000000044AF2C                                     90 90 90 90             ....

;; fn000000000044AF30: 000000000044AF30
fn000000000044AF30 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	mov	rax,[rcx]
	mov	rsi,rdx
	mov	rbx,rcx
	mov	edx,[rax-8h]
	test	edx,edx
	js	44AF4Eh

l000000000044AF46:
	call	448E80h
	mov	rax,[rbx]

l000000000044AF4E:
	lea	rax,[rax+rsi*2]
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret
000000000044AF59                            90 90 90 90 90 90 90          .......

;; fn000000000044AF60: 000000000044AF60
fn000000000044AF60 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	mov	rbx,rcx
	mov	rcx,rdx
	mov	rsi,rdx
	call	41BD38h
	test	rax,rax
	jz	44AF87h

l000000000044AF79:
	mov	r8,rax
	mov	rdx,rsi
	mov	rcx,rbx
	call	449760h

l000000000044AF87:
	mov	rax,rbx
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret
000000000044AF91    90 90 90 90 90 90 90 90 90 90 90 90 90 90 90  ...............

;; fn000000000044AFA0: 000000000044AFA0
fn000000000044AFA0 proc
	jmp	449840h
000000000044AFA5                90 90 90 90 90 90 90 90 90 90 90      ...........

;; fn000000000044AFB0: 000000000044AFB0
fn000000000044AFB0 proc
	push	rbx
	sub	rsp,20h
	mov	r8,[rdx+8h]
	mov	rax,[rdx]
	mov	rbx,rcx
	test	r8,r8
	jz	44AFCCh

l000000000044AFC4:
	mov	rdx,rax
	call	449760h

l000000000044AFCC:
	mov	rax,rbx
	add	rsp,20h
	pop	rbx
	ret
000000000044AFD5                90 90 90 90 90 90 90 90 90 90 90      ...........

;; fn000000000044AFE0: 000000000044AFE0
fn000000000044AFE0 proc
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,20h
	mov	r8,[rcx]
	mov	rsi,rcx
	mov	edi,edx
	mov	rax,[r8-18h]
	lea	rbx,[rax+1h]
	cmp	rbx,[r8-10h]
	ja	44B005h

l000000000044AFFD:
	mov	edx,[r8-8h]
	test	edx,edx
	jle	44B017h

l000000000044B005:
	mov	rdx,rbx
	mov	rcx,rsi
	call	44A5D0h
	mov	r8,[rsi]
	mov	rax,[r8-18h]

l000000000044B017:
	mov	[r8+rax*2],di
	xor	eax,eax
	mov	dword ptr [r8-8h],0h
	mov	[r8-18h],rbx
	mov	[r8+rbx*2],ax
	mov	rax,rsi
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	ret
000000000044B03A                               90 90 90 90 90 90           ......

;; fn000000000044B040: 000000000044B040
fn000000000044B040 proc
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,20h
	lea	rsi,[rcx+18h]
	mov	rbx,rcx
	mov	rdi,rdx
	mov	rcx,rsi
	call	46D320h
	lea	rax,[00000000004928D8]                                 ; [rip+00047878]
	mov	qword ptr [rbx+0F0h],+0h
	mov	byte ptr [rbx+0F8h],0h
	mov	byte ptr [rbx+0F9h],0h
	mov	qword ptr [rbx+100h],+0h
	mov	rdx,rdi
	mov	[rbx],rax
	lea	rax,[0000000000492900]                                 ; [rip+0004786F]
	mov	qword ptr [rbx+108h],+0h
	mov	qword ptr [rbx+110h],+0h
	mov	qword ptr [rbx+118h],+0h
	mov	rcx,rsi
	mov	[rbx+18h],rax
	mov	qword ptr [rbx+8h],+0h
	call	46E310h
	lea	rax,[0000000000492958]                                 ; [rip+0004788B]
	mov	rdx,rdi
	mov	rcx,rsi
	mov	[rbx+10h],rax
	lea	rax,[0000000000492980]                                 ; [rip+000478A2]
	mov	[rbx+18h],rax
	call	46E310h
	lea	rax,[0000000000495FD8]                                 ; [rip+0004AEEA]
	mov	[rbx],rax
	lea	rax,[0000000000496028]                                 ; [rip+0004AF30]
	mov	[rbx+18h],rax
	lea	rax,[0000000000496000]                                 ; [rip+0004AEFD]
	mov	[rbx+10h],rax
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	ret
000000000044B10F                                              48                H
000000000044B110 89 C7 48 8B 05 07 6D 04 00 48 89 F1 48 8D 50 10 ..H...m..H..H.P.
000000000044B120 48 89 53 18 E8 A7 22 02 00 48 89 F9 E8 7F 64 FC H.S..."..H....d.
000000000044B130 FF 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 ................

;; fn000000000044B140: 000000000044B140
fn000000000044B140 proc
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,20h
	lea	rsi,[rcx+18h]
	mov	rbx,rcx
	mov	rcx,rsi
	call	46D320h
	lea	rax,[00000000004928D8]                                 ; [rip+0004777B]
	mov	qword ptr [rbx+0F0h],+0h
	mov	byte ptr [rbx+0F8h],0h
	mov	byte ptr [rbx+0F9h],0h
	mov	qword ptr [rbx+100h],+0h
	xor	edx,edx
	mov	[rbx],rax
	lea	rax,[0000000000492900]                                 ; [rip+00047773]
	mov	qword ptr [rbx+108h],+0h
	mov	qword ptr [rbx+110h],+0h
	mov	qword ptr [rbx+118h],+0h
	mov	rcx,rsi
	mov	[rbx+18h],rax
	mov	qword ptr [rbx+8h],+0h
	call	46E310h
	lea	rax,[0000000000492958]                                 ; [rip+0004778F]
	xor	edx,edx
	mov	rcx,rsi
	mov	[rbx+10h],rax
	lea	rax,[0000000000492980]                                 ; [rip+000477A7]
	mov	[rbx+18h],rax
	call	46E310h
	lea	rax,[0000000000495FD8]                                 ; [rip+0004ADEF]
	mov	[rbx],rax
	lea	rax,[0000000000496028]                                 ; [rip+0004AE35]
	mov	[rbx+18h],rax
	lea	rax,[0000000000496000]                                 ; [rip+0004AE02]
	mov	[rbx+10h],rax
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	ret
000000000044B20A                               48 89 C7 48 8B 05           H..H..
000000000044B210 0C 6C 04 00 48 89 F1 48 8D 50 10 48 89 53 18 E8 .l..H..H.P.H.S..
000000000044B220 AC 21 02 00 48 89 F9 E8 84 63 FC FF 90 90 90 90 .!..H....c......

;; fn000000000044B230: 000000000044B230
fn000000000044B230 proc
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,20h
	mov	rax,[rdx+8h]
	mov	rbx,rcx
	mov	rsi,rdx
	mov	rdi,r8
	mov	[rcx],rax
	mov	rcx,[rdx+10h]
	mov	rdx,[rax-18h]
	mov	[rbx+rdx],rcx
	mov	qword ptr [rbx+8h],+0h
	mov	rcx,rbx
	add	rcx,[rax-18h]
	mov	rdx,r8
	call	46E310h
	mov	rax,[rsi+18h]
	mov	rdx,rdi
	mov	[rbx+10h],rax
	mov	rax,[rax-18h]
	lea	rcx,[rbx+rax+10h]
	mov	rax,[rsi+20h]
	mov	[rcx],rax
	call	46E310h
	mov	rax,[rsi]
	mov	[rbx],rax
	mov	rax,[rax-18h]
	mov	rdx,[rsi+28h]
	mov	[rbx+rax],rdx
	mov	rax,[rsi+30h]
	mov	[rbx+10h],rax
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	ret
000000000044B2AC                                     48 8B 56 08             H.V.
000000000044B2B0 48 89 13 48 8B 52 E8 48 8B 4E 10 48 89 0C 13 48 H..H.R.H.N.H...H
000000000044B2C0 89 C1 E8 E9 62 FC FF 90 90 90 90 90 90 90 90 90 ....b...........

;; fn000000000044B2D0: 000000000044B2D0
fn000000000044B2D0 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	mov	rax,[rdx+8h]
	mov	rbx,rcx
	mov	rsi,rdx
	mov	[rcx],rax
	mov	rcx,[rdx+10h]
	mov	rdx,[rax-18h]
	mov	[rbx+rdx],rcx
	mov	qword ptr [rbx+8h],+0h
	mov	rcx,rbx
	add	rcx,[rax-18h]
	xor	edx,edx
	call	46E310h
	mov	rax,[rsi+18h]
	xor	edx,edx
	mov	[rbx+10h],rax
	mov	rax,[rax-18h]
	lea	rcx,[rbx+rax+10h]
	mov	rax,[rsi+20h]
	mov	[rcx],rax
	call	46E310h
	mov	rax,[rsi]
	mov	[rbx],rax
	mov	rax,[rax-18h]
	mov	rdx,[rsi+28h]
	mov	[rbx+rax],rdx
	mov	rax,[rsi+30h]
	mov	[rbx+10h],rax
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret
000000000044B345                48 8B 56 08 48 89 13 48 8B 52 E8      H.V.H..H.R.
000000000044B350 48 8B 4E 10 48 89 0C 13 48 89 C1 E8 50 62 FC FF H.N.H...H...Pb..
000000000044B360 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 ................

;; fn000000000044B370: 000000000044B370
fn000000000044B370 proc
	push	rbx
	sub	rsp,20h
	mov	rax,[0000000000491E20]                                 ; [rip+00046AA4]
	mov	rbx,rcx
	lea	rcx,[rcx+18h]
	add	rax,10h
	mov	[rcx],rax
	call	46D3D0h
	mov	rcx,rbx
	add	rsp,20h
	pop	rbx
	jmp	475550h
000000000044B39C                                     90 90 90 90             ....

;; fn000000000044B3A0: 000000000044B3A0
fn000000000044B3A0 proc
	mov	rax,[0000000000491E20]                                 ; [rip+00046A79]
	add	rcx,18h
	add	rax,10h
	mov	[rcx],rax
	jmp	46D3D0h
000000000044B3B7                      90 90 90 90 90 90 90 90 90        .........

;; fn000000000044B3C0: 000000000044B3C0
fn000000000044B3C0 proc
	mov	rax,[rdx]
	mov	[rcx],rax
	mov	rax,[rax-18h]
	mov	r8,[rdx+28h]
	mov	[rcx+rax],r8
	mov	rax,[rdx+30h]
	mov	[rcx+10h],rax
	mov	rax,[rdx+18h]
	mov	[rcx+10h],rax
	mov	rax,[rax-18h]
	mov	r8,[rdx+20h]
	mov	[rcx+rax+10h],r8
	mov	rax,[rdx+8h]
	mov	[rcx],rax
	mov	rax,[rax-18h]
	mov	rdx,[rdx+10h]
	mov	[rcx+rax],rdx
	ret
000000000044B403          90 90 90 90 90 90 90 90 90 90 90 90 90    .............

;; fn000000000044B410: 000000000044B410
;;   Called from:
;;     000000000044E3A0 (in fn000000000044E3A0)
fn000000000044B410 proc
	push	rsi
	push	rbx
	sub	rsp,+88h
	xor	r8d,r8d
	mov	rbx,rcx
	lea	rcx,[rsp+7Bh]
	mov	rsi,rdx
	mov	rdx,rbx
	call	44D740h
	cmp	byte ptr [rsp+7Bh],0h
	jz	44B4B2h

l000000000044B436:
	mov	rax,[rbx]
	mov	r8,rbx
	mov	dword ptr [rsp+7Ch],0h
	add	r8,[rax-18h]
	mov	rax,[r8+100h]
	test	rax,rax
	jz	44B4DFh

l000000000044B458:
	mov	rdx,[r8+0E8h]
	mov	r9d,0FFFFFFFFh
	mov	qword ptr [rsp+40h],+0h
	mov	[rsp+58h],r9
	mov	[rsp+48h],r9
	lea	rcx,[rsp+60h]
	lea	r9,[rsp+40h]
	mov	[rsp+50h],rdx
	mov	r10,[rax]
	lea	rdx,[rsp+7Ch]
	mov	[rsp+20h],r8
	mov	[rsp+30h],rsi
	lea	r8,[rsp+50h]
	mov	[rsp+28h],rdx
	mov	rdx,rax
	call	qword ptr [r10+60h]

l000000000044B4AA:
	mov	edx,[rsp+7Ch]
	test	edx,edx
	jnz	44B4C0h

l000000000044B4B2:
	mov	rax,rbx
	add	rsp,+88h
	pop	rbx
	pop	rsi
	ret
000000000044B4BF                                              90                .

l000000000044B4C0:
	mov	rax,[rbx]
	mov	rcx,rbx
	add	rcx,[rax-18h]
	or	edx,[rcx+20h]
	call	46E370h
	mov	rax,rbx
	add	rsp,+88h
	pop	rbx
	pop	rsi
	ret

l000000000044B4DF:
	call	470820h
	sub	rdx,1h
	mov	rcx,rax
	jnz	44B508h

l000000000044B4ED:
	call	475840h
	mov	rax,[rbx]
	add	rbx,[rax-18h]
	or	dword ptr [rbx+20h],1h
	test	byte ptr [rbx+1Ch],1h
	jz	44B538h

l000000000044B503:
	call	476060h

l000000000044B508:
	call	475840h
	mov	rax,[rbx]
	mov	rsi,rbx
	add	rsi,[rax-18h]
	or	dword ptr [rsi+20h],1h
	test	byte ptr [rsi+1Ch],1h
	jnz	44B53Dh

l000000000044B521:
	call	475A70h
	jmp	44B4AAh
000000000044B528                         48 89 C3 E8 40 A5 02 00         H...@...
000000000044B530 48 89 D9 E8 78 60 FC FF                         H...x`..       

l000000000044B538:
	call	476060h

l000000000044B53D:
	call	476060h
	mov	rbx,rax
	call	475A70h
	mov	rcx,rbx
	call	4115B0h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop

;; fn000000000044B560: 000000000044B560
;;   Called from:
;;     000000000044B55F (in fn000000000044B410)
;;     000000000044E3B0 (in fn000000000044E3B0)
fn000000000044B560 proc
	push	rsi
	push	rbx
	sub	rsp,+88h
	xor	r8d,r8d
	mov	rbx,rcx
	lea	rcx,[rsp+7Bh]
	mov	rsi,rdx
	mov	rdx,rbx
	call	44D740h
	cmp	byte ptr [rsp+7Bh],0h
	jz	44B602h

l000000000044B586:
	mov	rax,[rbx]
	mov	r8,rbx
	mov	dword ptr [rsp+7Ch],0h
	add	r8,[rax-18h]
	mov	rax,[r8+100h]
	test	rax,rax
	jz	44B62Fh

l000000000044B5A8:
	mov	rdx,[r8+0E8h]
	mov	r9d,0FFFFFFFFh
	mov	qword ptr [rsp+40h],+0h
	mov	[rsp+58h],r9
	mov	[rsp+48h],r9
	lea	rcx,[rsp+60h]
	lea	r9,[rsp+40h]
	mov	[rsp+50h],rdx
	mov	r10,[rax]
	lea	rdx,[rsp+7Ch]
	mov	[rsp+20h],r8
	mov	[rsp+30h],rsi
	lea	r8,[rsp+50h]
	mov	[rsp+28h],rdx
	mov	rdx,rax
	call	qword ptr [r10+10h]

l000000000044B5FA:
	mov	edx,[rsp+7Ch]
	test	edx,edx
	jnz	44B610h

l000000000044B602:
	mov	rax,rbx
	add	rsp,+88h
	pop	rbx
	pop	rsi
	ret
000000000044B60F                                              90                .

l000000000044B610:
	mov	rax,[rbx]
	mov	rcx,rbx
	add	rcx,[rax-18h]
	or	edx,[rcx+20h]
	call	46E370h
	mov	rax,rbx
	add	rsp,+88h
	pop	rbx
	pop	rsi
	ret

l000000000044B62F:
	call	470820h
	sub	rdx,1h
	mov	rcx,rax
	jnz	44B658h

l000000000044B63D:
	call	475840h
	mov	rax,[rbx]
	add	rbx,[rax-18h]
	or	dword ptr [rbx+20h],1h
	test	byte ptr [rbx+1Ch],1h
	jz	44B688h

l000000000044B653:
	call	476060h

l000000000044B658:
	call	475840h
	mov	rax,[rbx]
	mov	rsi,rbx
	add	rsi,[rax-18h]
	or	dword ptr [rsi+20h],1h
	test	byte ptr [rsi+1Ch],1h
	jnz	44B68Dh

l000000000044B671:
	call	475A70h
	jmp	44B5FAh
000000000044B678                         48 89 C3 E8 F0 A3 02 00         H.......
000000000044B680 48 89 D9 E8 28 5F FC FF                         H...(_..       

l000000000044B688:
	call	476060h

l000000000044B68D:
	call	476060h
	mov	rbx,rax
	call	475A70h
	mov	rcx,rbx
	call	4115B0h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop

;; fn000000000044B6B0: 000000000044B6B0
;;   Called from:
;;     000000000044B6AF (in fn000000000044B560)
;;     000000000044E3C0 (in fn000000000044E3C0)
fn000000000044B6B0 proc
	push	rsi
	push	rbx
	sub	rsp,+88h
	xor	r8d,r8d
	mov	rbx,rcx
	lea	rcx,[rsp+7Bh]
	mov	rsi,rdx
	mov	rdx,rbx
	call	44D740h
	cmp	byte ptr [rsp+7Bh],0h
	jz	44B752h

l000000000044B6D6:
	mov	rax,[rbx]
	mov	r8,rbx
	mov	dword ptr [rsp+7Ch],0h
	add	r8,[rax-18h]
	mov	rax,[r8+100h]
	test	rax,rax
	jz	44B77Fh

l000000000044B6F8:
	mov	rdx,[r8+0E8h]
	mov	r9d,0FFFFFFFFh
	mov	qword ptr [rsp+40h],+0h
	mov	[rsp+58h],r9
	mov	[rsp+48h],r9
	lea	rcx,[rsp+60h]
	lea	r9,[rsp+40h]
	mov	[rsp+50h],rdx
	mov	r10,[rax]
	lea	rdx,[rsp+7Ch]
	mov	[rsp+20h],r8
	mov	[rsp+30h],rsi
	lea	r8,[rsp+50h]
	mov	[rsp+28h],rdx
	mov	rdx,rax
	call	qword ptr [r10+50h]

l000000000044B74A:
	mov	edx,[rsp+7Ch]
	test	edx,edx
	jnz	44B760h

l000000000044B752:
	mov	rax,rbx
	add	rsp,+88h
	pop	rbx
	pop	rsi
	ret
000000000044B75F                                              90                .

l000000000044B760:
	mov	rax,[rbx]
	mov	rcx,rbx
	add	rcx,[rax-18h]
	or	edx,[rcx+20h]
	call	46E370h
	mov	rax,rbx
	add	rsp,+88h
	pop	rbx
	pop	rsi
	ret

l000000000044B77F:
	call	470820h
	sub	rdx,1h
	mov	rcx,rax
	jnz	44B7A8h

l000000000044B78D:
	call	475840h
	mov	rax,[rbx]
	add	rbx,[rax-18h]
	or	dword ptr [rbx+20h],1h
	test	byte ptr [rbx+1Ch],1h
	jz	44B7D8h

l000000000044B7A3:
	call	476060h

l000000000044B7A8:
	call	475840h
	mov	rax,[rbx]
	mov	rsi,rbx
	add	rsi,[rax-18h]
	or	dword ptr [rsi+20h],1h
	test	byte ptr [rsi+1Ch],1h
	jnz	44B7DDh

l000000000044B7C1:
	call	475A70h
	jmp	44B74Ah
000000000044B7C8                         48 89 C3 E8 A0 A2 02 00         H.......
000000000044B7D0 48 89 D9 E8 D8 5D FC FF                         H....]..       

l000000000044B7D8:
	call	476060h

l000000000044B7DD:
	call	476060h
	mov	rbx,rax
	call	475A70h
	mov	rcx,rbx
	call	4115B0h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop

;; fn000000000044B800: 000000000044B800
;;   Called from:
;;     000000000044B7FF (in fn000000000044B6B0)
;;     000000000044E3D0 (in fn000000000044E3D0)
fn000000000044B800 proc
	push	rsi
	push	rbx
	sub	rsp,+88h
	xor	r8d,r8d
	mov	rbx,rcx
	lea	rcx,[rsp+7Bh]
	mov	rsi,rdx
	mov	rdx,rbx
	call	44D740h
	cmp	byte ptr [rsp+7Bh],0h
	jz	44B8A2h

l000000000044B826:
	mov	rax,[rbx]
	mov	r8,rbx
	mov	dword ptr [rsp+7Ch],0h
	add	r8,[rax-18h]
	mov	rax,[r8+100h]
	test	rax,rax
	jz	44B8CFh

l000000000044B848:
	mov	rdx,[r8+0E8h]
	mov	r9d,0FFFFFFFFh
	mov	qword ptr [rsp+40h],+0h
	mov	[rsp+58h],r9
	mov	[rsp+48h],r9
	lea	rcx,[rsp+60h]
	lea	r9,[rsp+40h]
	mov	[rsp+50h],rdx
	mov	r10,[rax]
	lea	rdx,[rsp+7Ch]
	mov	[rsp+20h],r8
	mov	[rsp+30h],rsi
	lea	r8,[rsp+50h]
	mov	[rsp+28h],rdx
	mov	rdx,rax
	call	qword ptr [r10+58h]

l000000000044B89A:
	mov	edx,[rsp+7Ch]
	test	edx,edx
	jnz	44B8B0h

l000000000044B8A2:
	mov	rax,rbx
	add	rsp,+88h
	pop	rbx
	pop	rsi
	ret
000000000044B8AF                                              90                .

l000000000044B8B0:
	mov	rax,[rbx]
	mov	rcx,rbx
	add	rcx,[rax-18h]
	or	edx,[rcx+20h]
	call	46E370h
	mov	rax,rbx
	add	rsp,+88h
	pop	rbx
	pop	rsi
	ret

l000000000044B8CF:
	call	470820h
	sub	rdx,1h
	mov	rcx,rax
	jnz	44B8F8h

l000000000044B8DD:
	call	475840h
	mov	rax,[rbx]
	add	rbx,[rax-18h]
	or	dword ptr [rbx+20h],1h
	test	byte ptr [rbx+1Ch],1h
	jz	44B928h

l000000000044B8F3:
	call	476060h

l000000000044B8F8:
	call	475840h
	mov	rax,[rbx]
	mov	rsi,rbx
	add	rsi,[rax-18h]
	or	dword ptr [rsi+20h],1h
	test	byte ptr [rsi+1Ch],1h
	jnz	44B92Dh

l000000000044B911:
	call	475A70h
	jmp	44B89Ah
000000000044B918                         48 89 C3 E8 50 A1 02 00         H...P...
000000000044B920 48 89 D9 E8 88 5C FC FF                         H....\..       

l000000000044B928:
	call	476060h

l000000000044B92D:
	call	476060h
	mov	rbx,rax
	call	475A70h
	mov	rcx,rbx
	call	4115B0h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop

;; fn000000000044B950: 000000000044B950
;;   Called from:
;;     000000000044B94F (in fn000000000044B800)
;;     000000000044E3E0 (in fn000000000044E3E0)
fn000000000044B950 proc
	push	rsi
	push	rbx
	sub	rsp,+88h
	xor	r8d,r8d
	mov	rbx,rcx
	lea	rcx,[rsp+7Bh]
	mov	rsi,rdx
	mov	rdx,rbx
	call	44D740h
	cmp	byte ptr [rsp+7Bh],0h
	jz	44B9F2h

l000000000044B976:
	mov	rax,[rbx]
	mov	r8,rbx
	mov	dword ptr [rsp+7Ch],0h
	add	r8,[rax-18h]
	mov	rax,[r8+100h]
	test	rax,rax
	jz	44BA1Fh

l000000000044B998:
	mov	rdx,[r8+0E8h]
	mov	r9d,0FFFFFFFFh
	mov	qword ptr [rsp+40h],+0h
	mov	[rsp+58h],r9
	mov	[rsp+48h],r9
	lea	rcx,[rsp+60h]
	lea	r9,[rsp+40h]
	mov	[rsp+50h],rdx
	mov	r10,[rax]
	lea	rdx,[rsp+7Ch]
	mov	[rsp+20h],r8
	mov	[rsp+30h],rsi
	lea	r8,[rsp+50h]
	mov	[rsp+28h],rdx
	mov	rdx,rax
	call	qword ptr [r10+48h]

l000000000044B9EA:
	mov	edx,[rsp+7Ch]
	test	edx,edx
	jnz	44BA00h

l000000000044B9F2:
	mov	rax,rbx
	add	rsp,+88h
	pop	rbx
	pop	rsi
	ret
000000000044B9FF                                              90                .

l000000000044BA00:
	mov	rax,[rbx]
	mov	rcx,rbx
	add	rcx,[rax-18h]
	or	edx,[rcx+20h]
	call	46E370h
	mov	rax,rbx
	add	rsp,+88h
	pop	rbx
	pop	rsi
	ret

l000000000044BA1F:
	call	470820h
	sub	rdx,1h
	mov	rcx,rax
	jnz	44BA48h

l000000000044BA2D:
	call	475840h
	mov	rax,[rbx]
	add	rbx,[rax-18h]
	or	dword ptr [rbx+20h],1h
	test	byte ptr [rbx+1Ch],1h
	jz	44BA78h

l000000000044BA43:
	call	476060h

l000000000044BA48:
	call	475840h
	mov	rax,[rbx]
	mov	rsi,rbx
	add	rsi,[rax-18h]
	or	dword ptr [rsi+20h],1h
	test	byte ptr [rsi+1Ch],1h
	jnz	44BA7Dh

l000000000044BA61:
	call	475A70h
	jmp	44B9EAh
000000000044BA68                         48 89 C3 E8 00 A0 02 00         H.......
000000000044BA70 48 89 D9 E8 38 5B FC FF                         H...8[..       

l000000000044BA78:
	call	476060h

l000000000044BA7D:
	call	476060h
	mov	rbx,rax
	call	475A70h
	mov	rcx,rbx
	call	4115B0h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop

;; fn000000000044BAA0: 000000000044BAA0
;;   Called from:
;;     000000000044BA9F (in fn000000000044B950)
;;     000000000044E550 (in fn000000000044E550)
fn000000000044BAA0 proc
	push	rsi
	push	rbx
	sub	rsp,+88h
	xor	r8d,r8d
	mov	rbx,rcx
	lea	rcx,[rsp+7Bh]
	mov	rsi,rdx
	mov	rdx,rbx
	call	44D740h
	cmp	byte ptr [rsp+7Bh],0h
	jz	44BB42h

l000000000044BAC6:
	mov	rax,[rbx]
	mov	r8,rbx
	mov	dword ptr [rsp+7Ch],0h
	add	r8,[rax-18h]
	mov	rax,[r8+100h]
	test	rax,rax
	jz	44BB6Fh

l000000000044BAE8:
	mov	rdx,[r8+0E8h]
	mov	r9d,0FFFFFFFFh
	mov	qword ptr [rsp+40h],+0h
	mov	[rsp+58h],r9
	mov	[rsp+48h],r9
	lea	rcx,[rsp+60h]
	lea	r9,[rsp+40h]
	mov	[rsp+50h],rdx
	mov	r10,[rax]
	lea	rdx,[rsp+7Ch]
	mov	[rsp+20h],r8
	mov	[rsp+30h],rsi
	lea	r8,[rsp+50h]
	mov	[rsp+28h],rdx
	mov	rdx,rax
	call	qword ptr [r10+28h]

l000000000044BB3A:
	mov	edx,[rsp+7Ch]
	test	edx,edx
	jnz	44BB50h

l000000000044BB42:
	mov	rax,rbx
	add	rsp,+88h
	pop	rbx
	pop	rsi
	ret
000000000044BB4F                                              90                .

l000000000044BB50:
	mov	rax,[rbx]
	mov	rcx,rbx
	add	rcx,[rax-18h]
	or	edx,[rcx+20h]
	call	46E370h
	mov	rax,rbx
	add	rsp,+88h
	pop	rbx
	pop	rsi
	ret

l000000000044BB6F:
	call	470820h
	sub	rdx,1h
	mov	rcx,rax
	jnz	44BB98h

l000000000044BB7D:
	call	475840h
	mov	rax,[rbx]
	add	rbx,[rax-18h]
	or	dword ptr [rbx+20h],1h
	test	byte ptr [rbx+1Ch],1h
	jz	44BBC8h

l000000000044BB93:
	call	476060h

l000000000044BB98:
	call	475840h
	mov	rax,[rbx]
	mov	rsi,rbx
	add	rsi,[rax-18h]
	or	dword ptr [rsi+20h],1h
	test	byte ptr [rsi+1Ch],1h
	jnz	44BBCDh

l000000000044BBB1:
	call	475A70h
	jmp	44BB3Ah
000000000044BBB8                         48 89 C3 E8 B0 9E 02 00         H.......
000000000044BBC0 48 89 D9 E8 E8 59 FC FF                         H....Y..       

l000000000044BBC8:
	call	476060h

l000000000044BBCD:
	call	476060h
	mov	rbx,rax
	call	475A70h
	mov	rcx,rbx
	call	4115B0h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop

;; fn000000000044BBF0: 000000000044BBF0
;;   Called from:
;;     000000000044BBEF (in fn000000000044BAA0)
;;     000000000044E560 (in fn000000000044E560)
fn000000000044BBF0 proc
	push	rsi
	push	rbx
	sub	rsp,+88h
	xor	r8d,r8d
	mov	rbx,rcx
	lea	rcx,[rsp+7Bh]
	mov	rsi,rdx
	mov	rdx,rbx
	call	44D740h
	cmp	byte ptr [rsp+7Bh],0h
	jz	44BC92h

l000000000044BC16:
	mov	rax,[rbx]
	mov	r8,rbx
	mov	dword ptr [rsp+7Ch],0h
	add	r8,[rax-18h]
	mov	rax,[r8+100h]
	test	rax,rax
	jz	44BCBFh

l000000000044BC38:
	mov	rdx,[r8+0E8h]
	mov	r9d,0FFFFFFFFh
	mov	qword ptr [rsp+40h],+0h
	mov	[rsp+58h],r9
	mov	[rsp+48h],r9
	lea	rcx,[rsp+60h]
	lea	r9,[rsp+40h]
	mov	[rsp+50h],rdx
	mov	r10,[rax]
	lea	rdx,[rsp+7Ch]
	mov	[rsp+20h],r8
	mov	[rsp+30h],rsi
	lea	r8,[rsp+50h]
	mov	[rsp+28h],rdx
	mov	rdx,rax
	call	qword ptr [r10+18h]

l000000000044BC8A:
	mov	edx,[rsp+7Ch]
	test	edx,edx
	jnz	44BCA0h

l000000000044BC92:
	mov	rax,rbx
	add	rsp,+88h
	pop	rbx
	pop	rsi
	ret
000000000044BC9F                                              90                .

l000000000044BCA0:
	mov	rax,[rbx]
	mov	rcx,rbx
	add	rcx,[rax-18h]
	or	edx,[rcx+20h]
	call	46E370h
	mov	rax,rbx
	add	rsp,+88h
	pop	rbx
	pop	rsi
	ret

l000000000044BCBF:
	call	470820h
	sub	rdx,1h
	mov	rcx,rax
	jnz	44BCE8h

l000000000044BCCD:
	call	475840h
	mov	rax,[rbx]
	add	rbx,[rax-18h]
	or	dword ptr [rbx+20h],1h
	test	byte ptr [rbx+1Ch],1h
	jz	44BD18h

l000000000044BCE3:
	call	476060h

l000000000044BCE8:
	call	475840h
	mov	rax,[rbx]
	mov	rsi,rbx
	add	rsi,[rax-18h]
	or	dword ptr [rsi+20h],1h
	test	byte ptr [rsi+1Ch],1h
	jnz	44BD1Dh

l000000000044BD01:
	call	475A70h
	jmp	44BC8Ah
000000000044BD08                         48 89 C3 E8 60 9D 02 00         H...`...
000000000044BD10 48 89 D9 E8 98 58 FC FF                         H....X..       

l000000000044BD18:
	call	476060h

l000000000044BD1D:
	call	476060h
	mov	rbx,rax
	call	475A70h
	mov	rcx,rbx
	call	4115B0h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop

;; fn000000000044BD40: 000000000044BD40
;;   Called from:
;;     000000000044BD3F (in fn000000000044BBF0)
;;     000000000044E570 (in fn000000000044E570)
fn000000000044BD40 proc
	push	rsi
	push	rbx
	sub	rsp,+88h
	xor	r8d,r8d
	mov	rbx,rcx
	lea	rcx,[rsp+7Bh]
	mov	rsi,rdx
	mov	rdx,rbx
	call	44D740h
	cmp	byte ptr [rsp+7Bh],0h
	jz	44BDE2h

l000000000044BD66:
	mov	rax,[rbx]
	mov	r8,rbx
	mov	dword ptr [rsp+7Ch],0h
	add	r8,[rax-18h]
	mov	rax,[r8+100h]
	test	rax,rax
	jz	44BE0Fh

l000000000044BD88:
	mov	rdx,[r8+0E8h]
	mov	r9d,0FFFFFFFFh
	mov	qword ptr [rsp+40h],+0h
	mov	[rsp+58h],r9
	mov	[rsp+48h],r9
	lea	rcx,[rsp+60h]
	lea	r9,[rsp+40h]
	mov	[rsp+50h],rdx
	mov	r10,[rax]
	lea	rdx,[rsp+7Ch]
	mov	[rsp+20h],r8
	mov	[rsp+30h],rsi
	lea	r8,[rsp+50h]
	mov	[rsp+28h],rdx
	mov	rdx,rax
	call	qword ptr [r10+30h]

l000000000044BDDA:
	mov	edx,[rsp+7Ch]
	test	edx,edx
	jnz	44BDF0h

l000000000044BDE2:
	mov	rax,rbx
	add	rsp,+88h
	pop	rbx
	pop	rsi
	ret
000000000044BDEF                                              90                .

l000000000044BDF0:
	mov	rax,[rbx]
	mov	rcx,rbx
	add	rcx,[rax-18h]
	or	edx,[rcx+20h]
	call	46E370h
	mov	rax,rbx
	add	rsp,+88h
	pop	rbx
	pop	rsi
	ret

l000000000044BE0F:
	call	470820h
	sub	rdx,1h
	mov	rcx,rax
	jnz	44BE38h

l000000000044BE1D:
	call	475840h
	mov	rax,[rbx]
	add	rbx,[rax-18h]
	or	dword ptr [rbx+20h],1h
	test	byte ptr [rbx+1Ch],1h
	jz	44BE68h

l000000000044BE33:
	call	476060h

l000000000044BE38:
	call	475840h
	mov	rax,[rbx]
	mov	rsi,rbx
	add	rsi,[rax-18h]
	or	dword ptr [rsi+20h],1h
	test	byte ptr [rsi+1Ch],1h
	jnz	44BE6Dh

l000000000044BE51:
	call	475A70h
	jmp	44BDDAh
000000000044BE58                         48 89 C3 E8 10 9C 02 00         H.......
000000000044BE60 48 89 D9 E8 48 57 FC FF                         H...HW..       

l000000000044BE68:
	call	476060h

l000000000044BE6D:
	call	476060h
	mov	rbx,rax
	call	475A70h
	mov	rcx,rbx
	call	4115B0h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop

;; fn000000000044BE90: 000000000044BE90
;;   Called from:
;;     000000000044BE8F (in fn000000000044BD40)
;;     000000000044E720 (in fn000000000044E720)
fn000000000044BE90 proc
	push	rsi
	push	rbx
	sub	rsp,+88h
	xor	r8d,r8d
	mov	rbx,rcx
	lea	rcx,[rsp+7Bh]
	mov	rsi,rdx
	mov	rdx,rbx
	call	44D740h
	cmp	byte ptr [rsp+7Bh],0h
	jz	44BF32h

l000000000044BEB6:
	mov	rax,[rbx]
	mov	r8,rbx
	mov	dword ptr [rsp+7Ch],0h
	add	r8,[rax-18h]
	mov	rax,[r8+100h]
	test	rax,rax
	jz	44BF5Fh

l000000000044BED8:
	mov	rdx,[r8+0E8h]
	mov	r9d,0FFFFFFFFh
	mov	qword ptr [rsp+40h],+0h
	mov	[rsp+58h],r9
	mov	[rsp+48h],r9
	lea	rcx,[rsp+60h]
	lea	r9,[rsp+40h]
	mov	[rsp+50h],rdx
	mov	r10,[rax]
	lea	rdx,[rsp+7Ch]
	mov	[rsp+20h],r8
	mov	[rsp+30h],rsi
	lea	r8,[rsp+50h]
	mov	[rsp+28h],rdx
	mov	rdx,rax
	call	qword ptr [r10+20h]

l000000000044BF2A:
	mov	edx,[rsp+7Ch]
	test	edx,edx
	jnz	44BF40h

l000000000044BF32:
	mov	rax,rbx
	add	rsp,+88h
	pop	rbx
	pop	rsi
	ret
000000000044BF3F                                              90                .

l000000000044BF40:
	mov	rax,[rbx]
	mov	rcx,rbx
	add	rcx,[rax-18h]
	or	edx,[rcx+20h]
	call	46E370h
	mov	rax,rbx
	add	rsp,+88h
	pop	rbx
	pop	rsi
	ret

l000000000044BF5F:
	call	470820h
	sub	rdx,1h
	mov	rcx,rax
	jnz	44BF88h

l000000000044BF6D:
	call	475840h
	mov	rax,[rbx]
	add	rbx,[rax-18h]
	or	dword ptr [rbx+20h],1h
	test	byte ptr [rbx+1Ch],1h
	jz	44BFB8h

l000000000044BF83:
	call	476060h

l000000000044BF88:
	call	475840h
	mov	rax,[rbx]
	mov	rsi,rbx
	add	rsi,[rax-18h]
	or	dword ptr [rsi+20h],1h
	test	byte ptr [rsi+1Ch],1h
	jnz	44BFBDh

l000000000044BFA1:
	call	475A70h
	jmp	44BF2Ah
000000000044BFA8                         48 89 C3 E8 C0 9A 02 00         H.......
000000000044BFB0 48 89 D9 E8 F8 55 FC FF                         H....U..       

l000000000044BFB8:
	call	476060h

l000000000044BFBD:
	call	476060h
	mov	rbx,rax
	call	475A70h
	mov	rcx,rbx
	call	4115B0h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop

;; fn000000000044BFE0: 000000000044BFE0
;;   Called from:
;;     000000000044BFDF (in fn000000000044BE90)
;;     000000000044E730 (in fn000000000044E730)
fn000000000044BFE0 proc
	push	rsi
	push	rbx
	sub	rsp,+88h
	xor	r8d,r8d
	mov	rbx,rcx
	lea	rcx,[rsp+7Bh]
	mov	rsi,rdx
	mov	rdx,rbx
	call	44D740h
	cmp	byte ptr [rsp+7Bh],0h
	jz	44C082h

l000000000044C006:
	mov	rax,[rbx]
	mov	r8,rbx
	mov	dword ptr [rsp+7Ch],0h
	add	r8,[rax-18h]
	mov	rax,[r8+100h]
	test	rax,rax
	jz	44C0AFh

l000000000044C028:
	mov	rdx,[r8+0E8h]
	mov	r9d,0FFFFFFFFh
	mov	qword ptr [rsp+40h],+0h
	mov	[rsp+58h],r9
	mov	[rsp+48h],r9
	lea	rcx,[rsp+60h]
	lea	r9,[rsp+40h]
	mov	[rsp+50h],rdx
	mov	r10,[rax]
	lea	rdx,[rsp+7Ch]
	mov	[rsp+20h],r8
	mov	[rsp+30h],rsi
	lea	r8,[rsp+50h]
	mov	[rsp+28h],rdx
	mov	rdx,rax
	call	qword ptr [r10+38h]

l000000000044C07A:
	mov	edx,[rsp+7Ch]
	test	edx,edx
	jnz	44C090h

l000000000044C082:
	mov	rax,rbx
	add	rsp,+88h
	pop	rbx
	pop	rsi
	ret
000000000044C08F                                              90                .

l000000000044C090:
	mov	rax,[rbx]
	mov	rcx,rbx
	add	rcx,[rax-18h]
	or	edx,[rcx+20h]
	call	46E370h
	mov	rax,rbx
	add	rsp,+88h
	pop	rbx
	pop	rsi
	ret

l000000000044C0AF:
	call	470820h
	sub	rdx,1h
	mov	rcx,rax
	jnz	44C0D8h

l000000000044C0BD:
	call	475840h
	mov	rax,[rbx]
	add	rbx,[rax-18h]
	or	dword ptr [rbx+20h],1h
	test	byte ptr [rbx+1Ch],1h
	jz	44C108h

l000000000044C0D3:
	call	476060h

l000000000044C0D8:
	call	475840h
	mov	rax,[rbx]
	mov	rsi,rbx
	add	rsi,[rax-18h]
	or	dword ptr [rsi+20h],1h
	test	byte ptr [rsi+1Ch],1h
	jnz	44C10Dh

l000000000044C0F1:
	call	475A70h
	jmp	44C07Ah
000000000044C0F8                         48 89 C3 E8 70 99 02 00         H...p...
000000000044C100 48 89 D9 E8 A8 54 FC FF                         H....T..       

l000000000044C108:
	call	476060h

l000000000044C10D:
	call	476060h
	mov	rbx,rax
	call	475A70h
	mov	rcx,rbx
	call	4115B0h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop

;; fn000000000044C130: 000000000044C130
;;   Called from:
;;     000000000044C12F (in fn000000000044BFE0)
;;     000000000044E740 (in fn000000000044E740)
fn000000000044C130 proc
	push	rsi
	push	rbx
	sub	rsp,+88h
	xor	r8d,r8d
	mov	rbx,rcx
	lea	rcx,[rsp+7Bh]
	mov	rsi,rdx
	mov	rdx,rbx
	call	44D740h
	cmp	byte ptr [rsp+7Bh],0h
	jz	44C1D2h

l000000000044C156:
	mov	rax,[rbx]
	mov	r8,rbx
	mov	dword ptr [rsp+7Ch],0h
	add	r8,[rax-18h]
	mov	rax,[r8+100h]
	test	rax,rax
	jz	44C1FFh

l000000000044C178:
	mov	rdx,[r8+0E8h]
	mov	r9d,0FFFFFFFFh
	mov	qword ptr [rsp+40h],+0h
	mov	[rsp+58h],r9
	mov	[rsp+48h],r9
	lea	rcx,[rsp+60h]
	lea	r9,[rsp+40h]
	mov	[rsp+50h],rdx
	mov	r10,[rax]
	lea	rdx,[rsp+7Ch]
	mov	[rsp+20h],r8
	mov	[rsp+30h],rsi
	lea	r8,[rsp+50h]
	mov	[rsp+28h],rdx
	mov	rdx,rax
	call	qword ptr [r10+40h]

l000000000044C1CA:
	mov	edx,[rsp+7Ch]
	test	edx,edx
	jnz	44C1E0h

l000000000044C1D2:
	mov	rax,rbx
	add	rsp,+88h
	pop	rbx
	pop	rsi
	ret
000000000044C1DF                                              90                .

l000000000044C1E0:
	mov	rax,[rbx]
	mov	rcx,rbx
	add	rcx,[rax-18h]
	or	edx,[rcx+20h]
	call	46E370h
	mov	rax,rbx
	add	rsp,+88h
	pop	rbx
	pop	rsi
	ret

l000000000044C1FF:
	call	470820h
	sub	rdx,1h
	mov	rcx,rax
	jnz	44C228h

l000000000044C20D:
	call	475840h
	mov	rax,[rbx]
	add	rbx,[rax-18h]
	or	dword ptr [rbx+20h],1h
	test	byte ptr [rbx+1Ch],1h
	jz	44C258h

l000000000044C223:
	call	476060h

l000000000044C228:
	call	475840h
	mov	rax,[rbx]
	mov	rsi,rbx
	add	rsi,[rax-18h]
	or	dword ptr [rsi+20h],1h
	test	byte ptr [rsi+1Ch],1h
	jnz	44C25Dh

l000000000044C241:
	call	475A70h
	jmp	44C1CAh
000000000044C248                         48 89 C3 E8 20 98 02 00         H... ...
000000000044C250 48 89 D9 E8 58 53 FC FF                         H...XS..       

l000000000044C258:
	call	476060h

l000000000044C25D:
	call	476060h
	mov	rbx,rax
	call	475A70h
	mov	rcx,rbx
	call	4115B0h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop

;; fn000000000044C280: 000000000044C280
;;   Called from:
;;     000000000044C27F (in fn000000000044C130)
fn000000000044C280 proc
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,30h
	mov	rax,[rcx]
	mov	rsi,rcx
	mov	rdi,rdx
	mov	rax,[rax-18h]
	mov	rbx,[rcx+rax+0F0h]
	test	rbx,rbx
	jz	44C300h

l000000000044C2A1:
	cmp	byte ptr [rbx+38h],0h
	jz	44C2C0h

l000000000044C2A7:
	movsx	r9d,byte ptr [rbx+43h]

l000000000044C2AC:
	mov	rdx,rdi
	mov	rcx,rsi
	add	rsp,30h
	pop	rbx
	pop	rsi
	pop	rdi
	jmp	44C310h
000000000044C2BE                                           66 90               f.

l000000000044C2C0:
	mov	rcx,rbx
	mov	[rsp+28h],r8
	call	42B320h
	mov	rax,[rbx]
	lea	rdx,[000000000042B5F0]                                 ; [rip+FFFDF319]
	mov	r9d,0Ah
	mov	r8,[rsp+28h]
	mov	rax,[rax+30h]
	cmp	rax,rdx
	jz	44C2ACh

l000000000044C2EB:
	mov	edx,0Ah
	mov	rcx,rbx
	call	rax
	mov	r8,[rsp+28h]
	movsx	r9d,al
	jmp	44C2ACh

l000000000044C300:
	call	470820h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop

;; fn000000000044C310: 000000000044C310
;;   Called from:
;;     000000000044C2B9 (in fn000000000044C280)
;;     000000000044C30F (in fn000000000044C280)
fn000000000044C310 proc
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,30h
	mov	rbx,rcx
	mov	qword ptr [rcx+8h],+0h
	lea	rcx,[rsp+2Fh]
	mov	rdi,rdx
	mov	r12,r8
	mov	rdx,rbx
	mov	r8d,1h
	mov	ebp,r9d
	call	44D740h
	cmp	byte ptr [rsp+2Fh],0h
	jz	44C450h

l000000000044C34C:
	mov	rax,[rbx]
	movzx	ebp,bpl
	mov	rax,[rax-18h]
	mov	rsi,[rbx+rax+0E8h]
	mov	rax,[rsi+10h]
	cmp	rax,[rsi+18h]
	jnc	44C3C0h

l000000000044C369:
	movzx	eax,byte ptr [rax]
	cmp	eax,0FFh
	setnz	cl
	cmp	eax,ebp
	setnz	dl
	test	cl,dl
	jnz	44C3E0h

l000000000044C37B:
	nop	dword ptr [rax+rax+0h]

l000000000044C380:
	xor	edx,edx
	cmp	eax,0FFh
	setz	dl
	add	edx,edx

l000000000044C38A:
	test	r12,r12
	jle	44C392h

l000000000044C38F:
	mov	byte ptr [rdi],0h

l000000000044C392:
	cmp	qword ptr [rbx+8h],0h
	jnz	44C460h

l000000000044C39D:
	or	edx,4h

l000000000044C3A0:
	mov	rax,[rbx]
	mov	rcx,rbx
	add	rcx,[rax-18h]
	or	edx,[rcx+20h]
	call	46E370h
	mov	rax,rbx
	add	rsp,30h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret

l000000000044C3C0:
	mov	rax,[rsi]
	mov	rcx,rsi
	call	qword ptr [rax+48h]

l000000000044C3C9:
	cmp	eax,0FFh
	setnz	cl
	cmp	eax,ebp
	setnz	dl
	test	cl,dl
	jz	44C380h

l000000000044C3D8:
	nop	dword ptr [rax+rax+0h]

l000000000044C3E0:
	mov	rcx,[rbx+8h]
	lea	rdx,[rcx+1h]
	cmp	rdx,r12
	jge	44C380h

l000000000044C3ED:
	add	rdi,1h
	mov	[rdi-1h],al
	mov	r10,[rsi+10h]
	mov	rax,[rsi+18h]
	add	qword ptr [rbx+8h],1h
	cmp	r10,rax
	jnc	44C430h

l000000000044C406:
	add	r10,1h
	mov	[rsi+10h],r10

l000000000044C40E:
	cmp	r10,rax
	jnc	44C3C0h

l000000000044C413:
	movzx	eax,byte ptr [r10]
	cmp	eax,0FFh
	setnz	cl
	cmp	eax,ebp
	setnz	dl
	test	cl,dl
	jnz	44C3E0h

l000000000044C426:
	jmp	44C380h
000000000044C42B                                  0F 1F 44 00 00            ..D..

l000000000044C430:
	mov	rax,[rsi]
	mov	rcx,rsi
	call	qword ptr [rax+50h]
	cmp	eax,0FFh
	jz	44C3C9h

l000000000044C43E:
	mov	r10,[rsi+10h]
	mov	rax,[rsi+18h]
	jmp	44C40Eh
000000000044C448                         0F 1F 84 00 00 00 00 00         ........

l000000000044C450:
	xor	edx,edx
	jmp	44C38Ah
000000000044C457                      66 0F 1F 84 00 00 00 00 00        f........

l000000000044C460:
	test	edx,edx
	jnz	44C3A0h

l000000000044C468:
	mov	rax,rbx
	add	rsp,30h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
000000000044C476                   48 83 FA 01 48 89 C1 75 1B E8       H...H..u..
000000000044C480 BC 93 02 00 48 8B 03 48 03 58 E8 83 4B 20 01 F6 ....H..H.X..K ..
000000000044C490 43 1C 01 74 3A E8 C6 9B 02 00 E8 A1 93 02 00 48 C..t:..........H
000000000044C4A0 8B 03 48 89 DE 48 03 70 E8 83 4E 20 01 F6 46 1C ..H..H.p..N ..F.
000000000044C4B0 01 75 21 E8 B8 95 02 00 31 D2 E9 CB FE FF FF 48 .u!.....1......H
000000000044C4C0 89 C3 E8 A9 95 02 00 48 89 D9 E8 E1 50 FC FF E8 .......H....P...
000000000044C4D0 8C 9B 02 00 E8 87 9B 02 00 48 89 C3 E8 8F 95 02 .........H......
000000000044C4E0 00 48 89 D9 E8 C7 50 FC FF 90 90 90 90 90 90 90 .H....P.........

;; fn000000000044C4F0: 000000000044C4F0
fn000000000044C4F0 proc
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,20h
	mov	rax,[rcx]
	mov	rsi,rcx
	mov	rdi,rdx
	mov	rax,[rax-18h]
	mov	rbx,[rcx+rax+0F0h]
	test	rbx,rbx
	jz	44C561h

l000000000044C511:
	cmp	byte ptr [rbx+38h],0h
	jz	44C530h

l000000000044C517:
	movsx	r8d,byte ptr [rbx+43h]

l000000000044C51C:
	mov	rdx,rdi
	mov	rcx,rsi
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	jmp	44C570h
000000000044C52E                                           66 90               f.

l000000000044C530:
	mov	rcx,rbx
	call	42B320h
	mov	rax,[rbx]
	lea	rdx,[000000000042B5F0]                                 ; [rip+FFFDF0AE]
	mov	r8d,0Ah
	mov	rax,[rax+30h]
	cmp	rax,rdx
	jz	44C51Ch

l000000000044C551:
	mov	edx,0Ah
	mov	rcx,rbx
	call	rax
	movsx	r8d,al
	jmp	44C51Ch

l000000000044C561:
	call	470820h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop

;; fn000000000044C570: 000000000044C570
;;   Called from:
;;     000000000044C529 (in fn000000000044C4F0)
;;     000000000044C56F (in fn000000000044C4F0)
fn000000000044C570 proc
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,30h
	mov	rsi,rcx
	mov	qword ptr [rcx+8h],+0h
	lea	rcx,[rsp+2Fh]
	mov	rdi,rdx
	mov	ebp,r8d
	mov	rdx,rsi
	mov	r8d,1h
	call	44D740h
	cmp	byte ptr [rsp+2Fh],0h
	jz	44C665h

l000000000044C5A9:
	mov	rax,[rsi]
	movzx	ebp,bpl
	mov	rax,[rax-18h]
	mov	rbx,[rsi+rax+0E8h]
	mov	rax,[rbx+10h]
	cmp	rax,[rbx+18h]
	jnc	44C6F0h

l000000000044C5CA:
	movzx	r12d,byte ptr [rax]
	cmp	ebp,r12d
	jz	44C665h

l000000000044C5D7:
	mov	r9d,r12d
	nop	word ptr [rax+rax+0h]

l000000000044C5E0:
	mov	rax,[rdi+28h]
	cmp	rax,[rdi+30h]
	jnc	44C6D1h

l000000000044C5EE:
	mov	[rax],r9b
	add	qword ptr [rdi+28h],1h

l000000000044C5F6:
	mov	r9,[rbx+10h]
	mov	rax,[rbx+18h]
	add	qword ptr [rsi+8h],1h
	cmp	r9,rax
	jnc	44C691h

l000000000044C60C:
	add	r9,1h
	mov	[rbx+10h],r9

l000000000044C614:
	cmp	r9,rax
	jnc	44C6B0h

l000000000044C61D:
	movzx	r12d,byte ptr [r9]
	cmp	ebp,r12d
	mov	r9d,r12d
	setnz	al

l000000000044C62A:
	test	al,al
	jnz	44C5E0h

l000000000044C62E:
	cmp	r12d,0FFh
	jnz	44C665h

l000000000044C634:
	cmp	qword ptr [rsi+8h],1h
	sbb	edx,edx
	and	edx,4h
	add	edx,2h
	jmp	44C671h
000000000044C643          E8 F8 91 02 00 48 8B 06 48 89 F2 48 03    .....H..H..H.
000000000044C650 50 E8 83 4A 20 01 F6 42 1C 01 0F 85 EF 00 00 00 P..J ..B........
000000000044C660 E8 0B 94 02 00                                  .....          

l000000000044C665:
	cmp	qword ptr [rsi+8h],0h
	jnz	44C683h

l000000000044C66C:
	mov	edx,4h

l000000000044C671:
	mov	rax,[rsi]
	mov	rcx,rsi
	add	rcx,[rax-18h]
	or	edx,[rcx+20h]
	call	46E370h

l000000000044C683:
	mov	rax,rsi
	add	rsp,30h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret

l000000000044C691:
	mov	rax,[rbx]
	mov	rcx,rbx
	call	qword ptr [rax+50h]
	cmp	eax,0FFh
	jz	44C634h

l000000000044C69F:
	mov	r9,[rbx+10h]
	mov	rax,[rbx+18h]
	jmp	44C614h
000000000044C6AC                                     0F 1F 40 00             ..@.

l000000000044C6B0:
	mov	rax,[rbx]
	mov	rcx,rbx
	call	qword ptr [rax+48h]
	cmp	ebp,eax
	mov	r12d,eax
	setnz	dl
	cmp	eax,0FFh
	mov	r9d,r12d
	setnz	al
	and	eax,edx
	jmp	44C62Ah

l000000000044C6D1:
	mov	rax,[rdi]
	movzx	edx,r9b
	mov	rcx,rdi
	call	qword ptr [rax+68h]
	cmp	eax,0FFh
	jz	44C62Eh

l000000000044C6E7:
	jmp	44C5F6h
000000000044C6EC                                     0F 1F 40 00             ..@.

l000000000044C6F0:
	mov	rax,[rbx]
	mov	rcx,rbx
	call	qword ptr [rax+48h]
	cmp	eax,0FFh
	mov	r12d,eax
	jz	44C62Eh

l000000000044C705:
	cmp	ebp,eax
	jnz	44C5D7h

l000000000044C70D:
	jmp	44C62Eh
000000000044C712       48 83 FA 01 48 89 C1 0F 85 24 FF FF FF E8   H...H....$....
000000000044C720 1C 91 02 00 48 8B 06 48 03 70 E8 83 4E 20 01 F6 ....H..H.p..N ..
000000000044C730 46 1C 01 74 15 E8 26 99 02 00 48 89 C3 E8 2E 93 F..t..&...H.....
000000000044C740 02 00 48 89 D9 E8 66 4E FC FF E8 11 99 02 00 E8 ..H...fN........
000000000044C750 0C 99 02 00 48 89 C3 E8 14 93 02 00 48 89 D9 E8 ....H.......H...
000000000044C760 4C 4E FC FF 90 90 90 90 90 90 90 90 90 90 90 90 LN..............

;; fn000000000044C770: 000000000044C770
fn000000000044C770 proc
	push	rsi
	push	rbx
	sub	rsp,38h
	mov	r8d,1h
	mov	rbx,rcx
	mov	qword ptr [rcx+8h],+0h
	lea	rcx,[rsp+2Fh]
	mov	rsi,rdx
	mov	rdx,rbx
	call	44D740h
	cmp	byte ptr [rsp+2Fh],0h
	jnz	44C7D0h

l000000000044C79E:
	cmp	qword ptr [rbx+8h],0h
	jnz	44C7BCh

l000000000044C7A5:
	mov	edx,4h

l000000000044C7AA:
	mov	rax,[rbx]
	mov	rcx,rbx
	add	rcx,[rax-18h]
	or	edx,[rcx+20h]
	call	46E370h

l000000000044C7BC:
	mov	rax,rbx
	add	rsp,38h
	pop	rbx
	pop	rsi
	ret
000000000044C7C6                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l000000000044C7D0:
	mov	rax,[rbx]
	mov	rax,[rax-18h]
	mov	rcx,[rbx+rax+0E8h]
	mov	r8,[rcx+10h]
	cmp	r8,[rcx+18h]
	jnc	44C801h

l000000000044C7E9:
	movzx	eax,byte ptr [r8]
	add	r8,1h
	mov	[rcx+10h],r8

l000000000044C7F5:
	mov	qword ptr [rbx+8h],+1h
	mov	[rsi],al
	jmp	44C79Eh

l000000000044C801:
	mov	rax,[rcx]
	call	qword ptr [rax+50h]
	cmp	eax,0FFh
	jnz	44C7F5h

l000000000044C80C:
	cmp	qword ptr [rbx+8h],1h
	sbb	edx,edx
	and	edx,4h
	add	edx,2h
	jmp	44C7AAh
000000000044C81B                                  48 83 EA 01 48            H...H
000000000044C820 89 C1 75 1B E8 17 90 02 00 48 8B 03 48 03 58 E8 ..u......H..H.X.
000000000044C830 83 4B 20 01 F6 43 1C 01 74 38 E8 21 98 02 00 E8 .K ..C..t8.!....
000000000044C840 FC 8F 02 00 48 8B 03 48 89 DE 48 03 70 E8 83 4E ....H..H..H.p..N
000000000044C850 20 01 F6 46 1C 01 75 1F E8 13 92 02 00 E9 3C FF  ..F..u.......<.
000000000044C860 FF FF 48 89 C3 E8 06 92 02 00 48 89 D9 E8 3E 4D ..H.......H...>M
000000000044C870 FC FF E8 E9 97 02 00 E8 E4 97 02 00 48 89 C3 E8 ............H...
000000000044C880 EC 91 02 00 48 89 D9 E8 24 4D FC FF 90 90 90 90 ....H...$M......

;; fn000000000044C890: 000000000044C890
fn000000000044C890 proc
	push	rbx
	sub	rsp,30h
	mov	r8d,1h
	mov	rbx,rcx
	mov	qword ptr [rcx+8h],+0h
	lea	rcx,[rsp+2Fh]
	mov	rdx,rbx
	call	44D740h
	cmp	byte ptr [rsp+2Fh],0h
	jz	44C910h

l000000000044C8BA:
	mov	rax,[rbx]
	mov	rax,[rax-18h]
	mov	rcx,[rbx+rax+0E8h]
	mov	rdx,[rcx+10h]
	cmp	rdx,[rcx+18h]
	jnc	44C940h

l000000000044C8D3:
	movzx	eax,byte ptr [rdx]
	add	rdx,1h
	mov	[rcx+10h],rdx

l000000000044C8DE:
	mov	qword ptr [rbx+8h],+1h

l000000000044C8E6:
	add	rsp,30h
	pop	rbx
	ret
000000000044C8EC                                     E8 4F 8F 02             .O..
000000000044C8F0 00 48 8B 03 48 89 DA 48 03 50 E8 83 4A 20 01 F6 .H..H..H.P..J ..
000000000044C900 42 1C 01 0F 85 8F 00 00 00 E8 62 91 02 00 66 90 B.........b...f.

l000000000044C910:
	cmp	qword ptr [rbx+8h],0h
	jnz	44C95Ah

l000000000044C917:
	mov	edx,4h

l000000000044C91C:
	mov	rax,[rbx]
	add	rbx,[rax-18h]
	or	edx,[rbx+20h]
	mov	rcx,rbx
	call	46E370h
	mov	eax,0FFFFFFFFh
	add	rsp,30h
	pop	rbx
	ret
000000000044C939                            0F 1F 80 00 00 00 00          .......

l000000000044C940:
	mov	rax,[rcx]
	call	qword ptr [rax+50h]
	cmp	eax,0FFh
	jnz	44C8DEh

l000000000044C94B:
	cmp	qword ptr [rbx+8h],1h
	sbb	edx,edx
	and	edx,4h
	add	edx,2h
	jmp	44C91Ch

l000000000044C95A:
	or	eax,0FFh
	jmp	44C8E6h
000000000044C95F                                              48                H
000000000044C960 83 EA 01 48 89 C1 75 84 E8 D3 8E 02 00 48 8B 03 ...H..u......H..
000000000044C970 48 03 58 E8 83 4B 20 01 F6 43 1C 01 74 15 E8 DD H.X..K ..C..t...
000000000044C980 96 02 00 48 89 C3 E8 E5 90 02 00 48 89 D9 E8 1D ...H.......H....
000000000044C990 4C FC FF E8 C8 96 02 00 E8 C3 96 02 00 48 89 C3 L............H..
000000000044C9A0 E8 CB 90 02 00 48 89 D9 E8 03 4C FC FF 90 90 90 .....H....L.....

;; fn000000000044C9B0: 000000000044C9B0
fn000000000044C9B0 proc
	push	rbx
	sub	rsp,40h
	mov	r8d,1h
	mov	rbx,rcx
	mov	qword ptr [rcx+8h],+0h
	lea	rcx,[rsp+3Fh]
	mov	rdx,rbx
	call	44D740h
	cmp	byte ptr [rsp+3Fh],0h
	jz	44CA50h

l000000000044C9DA:
	mov	rax,[rbx]
	mov	rax,[rax-18h]
	mov	rcx,[rbx+rax+0E8h]
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	44CA00h

l000000000044C9F3:
	movzx	eax,byte ptr [rax]

l000000000044C9F6:
	add	rsp,40h
	pop	rbx
	ret
000000000044C9FC                                     0F 1F 40 00             ..@.

l000000000044CA00:
	mov	rax,[rcx]
	call	qword ptr [rax+48h]
	cmp	eax,0FFh
	jnz	44C9F6h

l000000000044CA0B:
	mov	rdx,[rbx]
	mov	[rsp+2Ch],eax
	add	rbx,[rdx-18h]
	mov	edx,[rbx+20h]
	mov	rcx,rbx
	or	edx,2h
	call	46E370h
	mov	eax,[rsp+2Ch]
	add	rsp,40h
	pop	rbx
	ret
000000000044CA2E                                           E8 0D               ..
000000000044CA30 8E 02 00 48 8B 03 48 03 58 E8 83 4B 20 01 F6 43 ...H..H.X..K ..C
000000000044CA40 1C 01 75 4C E8 27 90 02 00 0F 1F 80 00 00 00 00 ..uL.'..........

l000000000044CA50:
	mov	eax,0FFFFFFFFh
	jmp	44C9F6h
000000000044CA57                      48 83 EA 01 48 89 C1 75 CE        H...H..u.
000000000044CA60 E8 DB 8D 02 00 48 8B 03 48 03 58 E8 83 4B 20 01 .....H..H.X..K .
000000000044CA70 F6 43 1C 01 74 15 E8 E5 95 02 00 48 89 C3 E8 ED .C..t......H....
000000000044CA80 8F 02 00 48 89 D9 E8 25 4B FC FF E8 D0 95 02 00 ...H...%K.......
000000000044CA90 E8 CB 95 02 00 48 89 C3 E8 D3 8F 02 00 48 89 D9 .....H.......H..
000000000044CAA0 E8 0B 4B FC FF 90 90 90 90 90 90 90 90 90 90 90 ..K.............

;; fn000000000044CAB0: 000000000044CAB0
;;   Called from:
;;     00000000004026FF (in fn000000000040252C)
;;     000000000040271A (in fn000000000040252C)
;;     0000000000402CD4 (in fn0000000000402C4E)
;;     0000000000402CEF (in fn0000000000402C4E)
;;     0000000000402D0A (in fn0000000000402C4E)
;;     0000000000402D25 (in fn0000000000402C4E)
;;     0000000000402D4A (in fn0000000000402C4E)
;;     0000000000402D98 (in fn0000000000402C4E)
;;     0000000000402DDE (in fn0000000000402C4E)
fn000000000044CAB0 proc
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,30h
	mov	rbx,rcx
	mov	qword ptr [rcx+8h],+0h
	lea	rcx,[rsp+2Fh]
	mov	rdi,rdx
	mov	rsi,r8
	mov	rdx,rbx
	mov	r8d,1h
	call	44D740h
	cmp	byte ptr [rsp+2Fh],0h
	jnz	44CAF0h

l000000000044CAE2:
	mov	rax,rbx
	add	rsp,30h
	pop	rbx
	pop	rsi
	pop	rdi
	ret
000000000044CAED                                        0F 1F 00              ...

l000000000044CAF0:
	mov	rax,[rbx]
	mov	r8,rsi
	mov	rdx,rdi
	mov	rax,[rax-18h]
	mov	rcx,[rbx+rax+0E8h]
	mov	rax,[rcx]
	call	qword ptr [rax+40h]
	cmp	rsi,rax
	mov	[rbx+8h],rax
	jz	44CAE2h

l000000000044CB14:
	mov	rax,[rbx]
	mov	rcx,rbx
	add	rcx,[rax-18h]
	mov	edx,[rcx+20h]
	or	edx,6h
	call	46E370h
	mov	rax,rbx
	add	rsp,30h
	pop	rbx
	pop	rsi
	pop	rdi
	ret
000000000044CB34             48 83 EA 01 48 89 C1 75 1B E8 FE 8C     H...H..u....
000000000044CB40 02 00 48 8B 03 48 03 58 E8 83 4B 20 01 F6 43 1C ..H..H.X..K ..C.
000000000044CB50 01 74 38 E8 08 95 02 00 E8 E3 8C 02 00 48 8B 03 .t8..........H..
000000000044CB60 48 89 DF 48 03 78 E8 83 4F 20 01 F6 47 1C 01 75 H..H.x..O ..G..u
000000000044CB70 1F E8 FA 8E 02 00 E9 67 FF FF FF 48 89 C3 E8 ED .......g...H....
000000000044CB80 8E 02 00 48 89 D9 E8 25 4A FC FF E8 D0 94 02 00 ...H...%J.......
000000000044CB90 E8 CB 94 02 00 48 89 C3 E8 D3 8E 02 00 48 89 D9 .....H.......H..
000000000044CBA0 E8 0B 4A FC FF 90 90 90 90 90 90 90 90 90 90 90 ..J.............

;; fn000000000044CBB0: 000000000044CBB0
fn000000000044CBB0 proc
	push	rbx
	sub	rsp,40h
	mov	r8d,1h
	mov	rbx,rcx
	lea	rcx,[rsp+3Fh]
	mov	rdx,rbx
	call	44D740h
	cmp	byte ptr [rsp+3Fh],0h
	jz	44CC00h

l000000000044CBD2:
	mov	rax,[rbx]
	mov	rax,[rax-18h]
	mov	rcx,[rbx+rax+0E8h]
	test	rcx,rcx
	jz	44CC00h

l000000000044CBE6:
	mov	rax,[rcx]
	call	qword ptr [rax+30h]
	cmp	eax,0FFh
	jz	44CC10h

l000000000044CBF1:
	xor	eax,eax
	add	rsp,40h
	pop	rbx
	ret
000000000044CBF9                            0F 1F 80 00 00 00 00          .......

l000000000044CC00:
	mov	eax,0FFFFFFFFh
	add	rsp,40h
	pop	rbx
	ret
000000000044CC0B                                  0F 1F 44 00 00            ..D..

l000000000044CC10:
	mov	rdx,[rbx]
	mov	[rsp+2Ch],eax
	add	rbx,[rdx-18h]
	mov	edx,[rbx+20h]
	mov	rcx,rbx
	or	edx,1h
	call	46E370h
	mov	eax,[rsp+2Ch]
	add	rsp,40h
	pop	rbx
	ret
000000000044CC33          48 83 EA 01 48 89 C1 75 1B E8 FF 8B 02    H...H..u.....
000000000044CC40 00 48 8B 03 48 03 58 E8 83 4B 20 01 F6 43 1C 01 .H..H.X..K ..C..
000000000044CC50 74 38 E8 09 94 02 00 E8 E4 8B 02 00 48 8B 03 48 t8..........H..H
000000000044CC60 03 58 E8 83 4B 20 01 F6 43 1C 01 75 22 E8 FE 8D .X..K ..C..u"...
000000000044CC70 02 00 83 C8 FF E9 79 FF FF FF 48 89 C3 E8 EE 8D ......y...H.....
000000000044CC80 02 00 48 89 D9 E8 26 49 FC FF E8 D1 93 02 00 E8 ..H...&I........
000000000044CC90 CC 93 02 00 48 89 C3 E8 D4 8D 02 00 48 89 D9 E8 ....H.......H...
000000000044CCA0 0C 49 FC FF 90 90 90 90 90 90 90 90 90 90 90 90 .I..............

;; fn000000000044CCB0: 000000000044CCB0
fn000000000044CCB0 proc
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,50h
	mov	rax,[rcx]
	mov	rsi,[rdx]
	mov	rbx,rcx
	mov	rdi,[rdx+8h]
	add	rcx,[rax-18h]
	mov	edx,[rcx+20h]
	and	edx,0FDh
	call	46E370h
	lea	rcx,[rsp+4Fh]
	mov	r8d,1h
	mov	rdx,rbx
	call	44D740h
	cmp	byte ptr [rsp+4Fh],0h
	jz	44CCFDh

l000000000044CCED:
	mov	rax,[rbx]
	mov	rdx,rbx
	add	rdx,[rax-18h]
	test	byte ptr [rdx+20h],5h
	jz	44CD10h

l000000000044CCFD:
	mov	rax,rbx
	add	rsp,50h
	pop	rbx
	pop	rsi
	pop	rdi
	ret
000000000044CD08                         0F 1F 84 00 00 00 00 00         ........

l000000000044CD10:
	mov	rdx,[rdx+0E8h]
	lea	rcx,[rsp+30h]
	mov	[rsp+20h],rsi
	mov	[rsp+28h],rdi
	mov	r9d,8h
	lea	r8,[rsp+20h]
	mov	rax,[rdx]
	call	qword ptr [rax+28h]
	cmp	qword ptr [rsp+30h],0FFh
	jnz	44CCFDh

l000000000044CD3F:
	mov	rax,[rbx]
	mov	rcx,rbx
	add	rcx,[rax-18h]
	mov	edx,[rcx+20h]
	or	edx,4h
	call	46E370h
	jmp	44CCFDh
000000000044CD56                   48 83 EA 01 48 89 C1 75 1B E8       H...H..u..
000000000044CD60 DC 8A 02 00 48 8B 03 48 03 58 E8 83 4B 20 01 F6 ....H..H.X..K ..
000000000044CD70 43 1C 01 74 38 E8 E6 92 02 00 E8 C1 8A 02 00 48 C..t8..........H
000000000044CD80 8B 03 48 89 DF 48 03 78 E8 83 4F 20 01 F6 47 1C ..H..H.x..O ..G.
000000000044CD90 01 75 1F E8 D8 8C 02 00 E9 60 FF FF FF 48 89 C3 .u.......`...H..
000000000044CDA0 E8 CB 8C 02 00 48 89 D9 E8 03 48 FC FF E8 AE 92 .....H....H.....
000000000044CDB0 02 00 E8 A9 92 02 00 48 89 C3 E8 B1 8C 02 00 48 .......H.......H
000000000044CDC0 89 D9 E8 E9 47 FC FF 90 90 90 90 90 90 90 90 90 ....G...........

;; fn000000000044CDD0: 000000000044CDD0
fn000000000044CDD0 proc
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,50h
	mov	rax,[rcx]
	mov	rbx,rcx
	mov	rsi,rdx
	mov	edi,r8d
	add	rcx,[rax-18h]
	mov	edx,[rcx+20h]
	and	edx,0FDh
	call	46E370h
	lea	rcx,[rsp+4Fh]
	mov	r8d,1h
	mov	rdx,rbx
	call	44D740h
	cmp	byte ptr [rsp+4Fh],0h
	jz	44CE1Ch

l000000000044CE0C:
	mov	rax,[rbx]
	mov	rdx,rbx
	add	rdx,[rax-18h]
	test	byte ptr [rdx+20h],5h
	jz	44CE30h

l000000000044CE1C:
	mov	rax,rbx
	add	rsp,50h
	pop	rbx
	pop	rsi
	pop	rdi
	ret
000000000044CE27                      66 0F 1F 84 00 00 00 00 00        f........

l000000000044CE30:
	mov	rdx,[rdx+0E8h]
	lea	rcx,[rsp+30h]
	mov	r9d,edi
	mov	r8,rsi
	mov	rax,[rdx]
	mov	dword ptr [rsp+20h],8h
	call	qword ptr [rax+20h]
	cmp	qword ptr [rsp+30h],0FFh
	jnz	44CE1Ch

l000000000044CE58:
	mov	rax,[rbx]
	mov	rcx,rbx
	add	rcx,[rax-18h]
	mov	edx,[rcx+20h]
	or	edx,4h
	call	46E370h
	jmp	44CE1Ch
000000000044CE6F                                              48                H
000000000044CE70 83 EA 01 48 89 C1 75 1B E8 C3 89 02 00 48 8B 03 ...H..u......H..
000000000044CE80 48 03 58 E8 83 4B 20 01 F6 43 1C 01 74 38 E8 CD H.X..K ..C..t8..
000000000044CE90 91 02 00 E8 A8 89 02 00 48 8B 03 48 89 DE 48 03 ........H..H..H.
000000000044CEA0 70 E8 83 4E 20 01 F6 46 1C 01 75 1F E8 BF 8B 02 p..N ..F..u.....
000000000044CEB0 00 E9 66 FF FF FF 48 89 C3 E8 B2 8B 02 00 48 89 ..f...H.......H.
000000000044CEC0 D9 E8 EA 46 FC FF E8 95 91 02 00 E8 90 91 02 00 ...F............
000000000044CED0 48 89 C3 E8 98 8B 02 00 48 89 D9 E8 D0 46 FC FF H.......H....F..
000000000044CEE0 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 ................

;; fn000000000044CEF0: 000000000044CEF0
fn000000000044CEF0 proc
	push	rsi
	push	rbx
	sub	rsp,58h
	mov	r8d,1h
	mov	qword ptr [rcx],-1h
	mov	dword ptr [rcx+8h],0h
	mov	rbx,rcx
	lea	rcx,[rsp+4Fh]
	mov	rsi,rdx
	call	44D740h
	cmp	byte ptr [rsp+4Fh],0h
	jz	44CF31h

l000000000044CF21:
	mov	rax,[rsi]
	mov	rdx,rsi
	add	rdx,[rax-18h]
	test	byte ptr [rdx+20h],5h
	jz	44CF40h

l000000000044CF31:
	mov	rax,rbx
	add	rsp,58h
	pop	rbx
	pop	rsi
	ret
000000000044CF3B                                  0F 1F 44 00 00            ..D..

l000000000044CF40:
	mov	rdx,[rdx+0E8h]
	lea	rcx,[rsp+30h]
	mov	r9d,1h
	xor	r8d,r8d
	mov	rax,[rdx]
	mov	dword ptr [rsp+20h],8h
	call	qword ptr [rax+20h]
	mov	rax,[rsp+30h]
	mov	[rbx],rax
	mov	eax,[rsp+38h]
	mov	[rbx+8h],eax
	mov	rax,rbx
	add	rsp,58h
	pop	rbx
	pop	rsi
	ret
000000000044CF7C                                     48 83 EA 01             H...
000000000044CF80 48 89 C1 75 1B E8 B6 88 02 00 48 8B 06 48 03 70 H..u......H..H.p
000000000044CF90 E8 83 4E 20 01 F6 46 1C 01 74 35 E8 C0 90 02 00 ..N ..F..t5.....
000000000044CFA0 E8 9B 88 02 00 48 8B 06 48 03 70 E8 83 4E 20 01 .....H..H.p..N .
000000000044CFB0 F6 46 1C 01 75 1F E8 B5 8A 02 00 E9 71 FF FF FF .F..u.......q...
000000000044CFC0 48 89 C3 E8 A8 8A 02 00 48 89 D9 E8 E0 45 FC FF H.......H....E..
000000000044CFD0 E8 8B 90 02 00 E8 86 90 02 00 48 89 C3 E8 8E 8A ..........H.....
000000000044CFE0 02 00 48 89 D9 E8 C6 45 FC FF 90 90 90 90 90 90 ..H....E........

;; fn000000000044CFF0: 000000000044CFF0
fn000000000044CFF0 proc
	push	rbx
	sub	rsp,30h
	mov	rax,[rcx]
	mov	rbx,rcx
	mov	qword ptr [rcx+8h],+0h
	add	rcx,[rax-18h]
	mov	edx,[rcx+20h]
	and	edx,0FDh
	call	46E370h
	lea	rcx,[rsp+2Fh]
	mov	r8d,1h
	mov	rdx,rbx
	call	44D740h
	cmp	byte ptr [rsp+2Fh],0h
	jz	44D054h

l000000000044D02C:
	mov	rax,[rbx]
	mov	rcx,rbx
	add	rcx,[rax-18h]
	mov	rax,[rcx+0E8h]
	test	rax,rax
	jz	44D080h

l000000000044D042:
	mov	rdx,[rax+10h]
	cmp	[rax+8h],rdx
	jnc	44D060h

l000000000044D04C:
	sub	rdx,1h
	mov	[rax+10h],rdx

l000000000044D054:
	mov	rax,rbx
	add	rsp,30h
	pop	rbx
	ret
000000000044D05D                                        0F 1F 00              ...

l000000000044D060:
	mov	r8,[rax]
	mov	edx,0FFFFFFFFh
	mov	rcx,rax
	call	qword ptr [r8+58h]
	cmp	eax,0FFh
	jnz	44D054h

l000000000044D074:
	mov	rax,[rbx]
	mov	rcx,rbx
	add	rcx,[rax-18h]
	nop

l000000000044D080:
	mov	edx,[rcx+20h]
	or	edx,1h
	call	46E370h
	mov	rax,rbx
	add	rsp,30h
	pop	rbx
	ret
000000000044D094             48 83 EA 01 48 89 C1 75 1B E8 9E 87     H...H..u....
000000000044D0A0 02 00 48 8B 03 48 03 58 E8 83 4B 20 01 F6 43 1C ..H..H.X..K ..C.
000000000044D0B0 01 74 38 E8 A8 8F 02 00 E8 83 87 02 00 48 8B 03 .t8..........H..
000000000044D0C0 48 89 DA 48 03 50 E8 83 4A 20 01 F6 42 1C 01 75 H..H.P..J ..B..u
000000000044D0D0 1F E8 9A 89 02 00 E9 79 FF FF FF 48 89 C3 E8 8D .......y...H....
000000000044D0E0 89 02 00 48 89 D9 E8 C5 44 FC FF E8 70 8F 02 00 ...H....D...p...
000000000044D0F0 E8 6B 8F 02 00 48 89 C3 E8 73 89 02 00 48 89 D9 .k...H...s...H..
000000000044D100 E8 AB 44 FC FF 90 90 90 90 90 90 90 90 90 90 90 ..D.............

;; fn000000000044D110: 000000000044D110
;;   Called from:
;;     000000000044D3C2 (in fn000000000044D210)
fn000000000044D110 proc
	push	rbx
	sub	rsp,30h
	mov	r8d,1h
	mov	rbx,rcx
	mov	qword ptr [rcx+8h],+0h
	lea	rcx,[rsp+2Fh]
	mov	rdx,rbx
	call	44D740h
	cmp	byte ptr [rsp+2Fh],0h
	jnz	44D143h

l000000000044D13A:
	mov	rax,rbx
	add	rsp,30h
	pop	rbx
	ret

l000000000044D143:
	mov	rax,[rbx]
	mov	rax,[rax-18h]
	mov	rcx,[rbx+rax+0E8h]
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	44D175h

l000000000044D15C:
	add	rax,1h
	mov	[rcx+10h],rax

l000000000044D164:
	mov	rax,rbx
	mov	qword ptr [rbx+8h],+1h
	add	rsp,30h
	pop	rbx
	ret

l000000000044D175:
	mov	rax,[rcx]
	call	qword ptr [rax+50h]
	cmp	eax,0FFh
	jnz	44D164h

l000000000044D180:
	mov	rax,[rbx]
	mov	rcx,rbx
	add	rcx,[rax-18h]
	mov	edx,[rcx+20h]
	or	edx,2h
	call	46E370h
	jmp	44D13Ah
000000000044D197                      48 83 EA 01 48 89 C1 75 1B        H...H..u.
000000000044D1A0 E8 9B 86 02 00 48 8B 03 48 03 58 E8 83 4B 20 01 .....H..H.X..K .
000000000044D1B0 F6 43 1C 01 74 38 E8 A5 8E 02 00 E8 80 86 02 00 .C..t8..........
000000000044D1C0 48 8B 03 48 89 DA 48 03 50 E8 83 4A 20 01 F6 42 H..H..H.P..J ..B
000000000044D1D0 1C 01 75 1F E8 97 88 02 00 E9 5C FF FF FF 48 89 ..u.......\...H.
000000000044D1E0 C3 E8 8A 88 02 00 48 89 D9 E8 C2 43 FC FF E8 6D ......H....C...m
000000000044D1F0 8E 02 00 E8 68 8E 02 00 48 89 C3 E8 70 88 02 00 ....h...H...p...
000000000044D200 48 89 D9 E8 A8 43 FC FF 90 90 90 90 90 90 90 90 H....C..........

;; fn000000000044D210: 000000000044D210
;;   Called from:
;;     000000000044D632 (in fn000000000044D460)
fn000000000044D210 proc
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,30h
	cmp	rdx,1h
	mov	rdi,rcx
	mov	rbx,rdx
	jz	44D3C2h

l000000000044D22A:
	mov	qword ptr [rcx+8h],+0h
	lea	rcx,[rsp+2Fh]
	mov	r8d,1h
	mov	rdx,rdi
	call	44D740h
	test	rbx,rbx
	jle	44D330h

l000000000044D24E:
	cmp	byte ptr [rsp+2Fh],0h
	jz	44D330h

l000000000044D259:
	mov	rax,[rdi]
	mov	rax,[rax-18h]
	mov	rsi,[rdi+rax+0E8h]
	mov	rax,[rsi+10h]
	cmp	rax,[rsi+18h]
	jnc	44D3F0h

l000000000044D276:
	movzx	eax,byte ptr [rax]

l000000000044D279:
	mov	rdx,[rdi+8h]
	xor	ebp,ebp
	mov	r12,7FFFFFFFFFFFFFFFh
	nop	dword ptr [rax+0h]

l000000000044D290:
	cmp	eax,0FFh
	setnz	cl
	cmp	rbx,rdx
	jle	44D2EEh

l000000000044D29B:
	test	cl,cl
	jz	44D340h

l000000000044D2A3:
	mov	rcx,[rsi+18h]
	mov	r8,[rsi+10h]
	mov	rax,rbx
	sub	rax,rdx
	mov	r9,rcx
	sub	r9,r8
	cmp	rax,r9
	cmovg	rax,r9

l000000000044D2BE:
	cmp	rax,1h
	jle	44D380h

l000000000044D2C8:
	add	r8,rax
	add	rdx,rax
	cmp	rcx,r8
	mov	[rsi+10h],r8
	mov	[rdi+8h],rdx
	jbe	44D3B0h

l000000000044D2DF:
	movzx	eax,byte ptr [r8]
	cmp	eax,0FFh
	setnz	cl
	cmp	rbx,rdx
	jg	44D29Bh

l000000000044D2EE:
	test	cl,cl
	jz	44D340h

l000000000044D2F2:
	cmp	rbx,r12
	jnz	44D340h

l000000000044D2F7:
	mov	rdx,8000000000000000h
	mov	ebp,1h
	mov	[rdi+8h],rdx
	jmp	44D290h
000000000044D30C                                     E8 2F 85 02             ./..
000000000044D310 00 48 8B 07 48 89 FE 48 03 70 E8 83 4E 20 01 F6 .H..H..H.p..N ..
000000000044D320 46 1C 01 0F 85 12 01 00 00 E8 42 87 02 00 66 90 F.........B...f.

l000000000044D330:
	mov	rax,rdi
	add	rsp,30h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
000000000044D33E                                           66 90               f.

l000000000044D340:
	test	bpl,bpl
	jz	44D353h

l000000000044D345:
	mov	rsi,7FFFFFFFFFFFFFFFh
	mov	[rdi+8h],rsi

l000000000044D353:
	cmp	eax,0FFh
	jnz	44D330h

l000000000044D358:
	mov	rax,[rdi]
	mov	rcx,rdi
	add	rcx,[rax-18h]
	mov	edx,[rcx+20h]
	or	edx,2h
	call	46E370h
	mov	rax,rdi
	add	rsp,30h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
000000000044D37B                                  0F 1F 44 00 00            ..D..

l000000000044D380:
	add	rdx,1h
	cmp	rcx,r8
	mov	[rdi+8h],rdx
	jbe	44D3D2h

l000000000044D38D:
	add	r8,1h
	mov	[rsi+10h],r8

l000000000044D395:
	cmp	r8,rcx
	jnc	44D3B0h

l000000000044D39A:
	movzx	eax,byte ptr [r8]
	mov	rdx,[rdi+8h]
	jmp	44D290h
000000000044D3A7                      66 0F 1F 84 00 00 00 00 00        f........

l000000000044D3B0:
	mov	rax,[rsi]
	mov	rcx,rsi
	call	qword ptr [rax+48h]

l000000000044D3B9:
	mov	rdx,[rdi+8h]
	jmp	44D290h

l000000000044D3C2:
	call	44D110h
	add	rsp,30h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret

l000000000044D3D2:
	mov	rax,[rsi]
	mov	rcx,rsi
	call	qword ptr [rax+50h]
	cmp	eax,0FFh
	jz	44D3B9h

l000000000044D3E0:
	mov	r8,[rsi+10h]
	mov	rcx,[rsi+18h]
	jmp	44D395h
000000000044D3EA                               66 0F 1F 44 00 00           f..D..

l000000000044D3F0:
	mov	rax,[rsi]
	mov	rcx,rsi
	call	qword ptr [rax+48h]
	jmp	44D279h
000000000044D3FE                                           48 83               H.
000000000044D400 FA 01 48 89 C1 0F 85 01 FF FF FF E8 30 84 02 00 ..H.........0...
000000000044D410 48 8B 07 48 03 78 E8 83 4F 20 01 F6 47 1C 01 74 H..H.x..O ..G..t
000000000044D420 15 E8 3A 8C 02 00 48 89 C3 E8 42 86 02 00 48 89 ..:...H...B...H.
000000000044D430 D9 E8 7A 41 FC FF E8 25 8C 02 00 E8 20 8C 02 00 ..zA...%.... ...
000000000044D440 48 89 C3 E8 28 86 02 00 48 89 D9 E8 60 41 FC FF H...(...H...`A..
000000000044D450 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 ................

;; fn000000000044D460: 000000000044D460
fn000000000044D460 proc
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,48h
	cmp	r8d,0FFh
	mov	rbp,rcx
	mov	rsi,rdx
	mov	r12d,r8d
	jz	44D632h

l000000000044D483:
	mov	qword ptr [rcx+8h],+0h
	lea	rcx,[rsp+3Fh]
	mov	r8d,1h
	mov	rdx,rbp
	call	44D740h
	test	rsi,rsi
	jle	44D5A2h

l000000000044D4A7:
	cmp	byte ptr [rsp+3Fh],0h
	jz	44D5A2h

l000000000044D4B2:
	mov	rax,[rbp+0h]
	mov	r14d,r12d
	mov	rax,[rax-18h]
	mov	rdi,[rbp+rax+0E8h]
	mov	rax,[rdi+10h]
	cmp	rax,[rdi+18h]
	jnc	44D6ABh

l000000000044D4D3:
	movzx	eax,byte ptr [rax]

l000000000044D4D6:
	mov	r15,[rbp+8h]
	movsx	ecx,r14b
	mov	byte ptr [rsp+2Bh],0h
	mov	[rsp+2Ch],ecx
	nop	word ptr [rax+rax+0h]

l000000000044D4F0:
	cmp	r12d,eax
	setnz	cl
	cmp	eax,0FFh
	setnz	dl
	test	cl,dl
	jz	44D577h

l000000000044D500:
	cmp	rsi,r15
	jle	44D5C0h

l000000000044D509:
	mov	r14,[rdi+18h]
	mov	rbx,[rdi+10h]
	mov	r9,rsi
	sub	r9,r15
	mov	rax,r14
	sub	rax,rbx
	cmp	r9,rax
	cmovle	rax,r9

l000000000044D524:
	cmp	rax,1h
	mov	r13,rax
	jle	44D5F0h

l000000000044D531:
	mov	edx,[rsp+2Ch]
	mov	r8,r13
	mov	rcx,rbx
	call	41BD98h
	mov	rdx,rax
	sub	rdx,rbx
	test	rax,rax
	cmovnz	r13,rdx

l000000000044D54D:
	add	rbx,r13
	add	r15,r13
	cmp	r14,rbx
	mov	[rdi+10h],rbx
	mov	[rbp+8h],r15
	jbe	44D620h

l000000000044D564:
	movzx	eax,byte ptr [rbx]
	cmp	r12d,eax
	setnz	cl
	cmp	eax,0FFh
	setnz	dl
	test	cl,dl
	jnz	44D500h

l000000000044D577:
	cmp	byte ptr [rsp+2Bh],0h
	jz	44D590h

l000000000044D57E:
	mov	rsi,7FFFFFFFFFFFFFFFh
	mov	[rbp+8h],rsi
	nop	dword ptr [rax+0h]

l000000000044D590:
	cmp	eax,0FFh
	jz	44D690h

l000000000044D599:
	cmp	r12d,eax
	jz	44D63Ch

l000000000044D5A2:
	mov	rax,rbp

l000000000044D5A5:
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
000000000044D5B6                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l000000000044D5C0:
	mov	rcx,7FFFFFFFFFFFFFFFh
	cmp	rsi,rcx
	jnz	44D577h

l000000000044D5CF:
	mov	rcx,8000000000000000h
	mov	byte ptr [rsp+2Bh],1h
	mov	[rbp+8h],rcx
	mov	r15,rcx
	jmp	44D4F0h
000000000044D5EA                               66 0F 1F 44 00 00           f..D..

l000000000044D5F0:
	lea	r10,[r15+1h]
	cmp	r14,rbx
	mov	[rbp+8h],r10
	jbe	44D66Eh

l000000000044D5FD:
	add	rbx,1h
	mov	[rdi+10h],rbx

l000000000044D605:
	cmp	rbx,r14
	jnc	44D620h

l000000000044D60A:
	movzx	eax,byte ptr [rbx]
	mov	r15,[rbp+8h]
	jmp	44D4F0h
000000000044D616                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l000000000044D620:
	mov	rax,[rdi]
	mov	rcx,rdi
	call	qword ptr [rax+48h]

l000000000044D629:
	mov	r15,[rbp+8h]
	jmp	44D4F0h

l000000000044D632:
	call	44D210h
	jmp	44D5A5h

l000000000044D63C:
	mov	rax,[rbp+8h]
	mov	rdx,7FFFFFFFFFFFFFFFh
	cmp	rax,rdx
	jz	44D657h

l000000000044D64F:
	add	rax,1h
	mov	[rbp+8h],rax

l000000000044D657:
	mov	rax,[rdi+10h]
	cmp	rax,[rdi+18h]
	jnc	44D6B9h

l000000000044D661:
	add	rax,1h
	mov	[rdi+10h],rax
	jmp	44D5A2h

l000000000044D66E:
	mov	rax,[rdi]
	mov	rcx,rdi
	call	qword ptr [rax+50h]
	cmp	eax,0FFh
	jz	44D629h

l000000000044D67C:
	mov	rbx,[rdi+10h]
	mov	r14,[rdi+18h]
	jmp	44D605h
000000000044D689                            0F 1F 80 00 00 00 00          .......

l000000000044D690:
	mov	rax,[rbp+0h]
	mov	rcx,rbp
	add	rcx,[rax-18h]
	mov	edx,[rcx+20h]
	or	edx,2h
	call	46E370h
	jmp	44D5A2h

l000000000044D6AB:
	mov	rax,[rdi]
	mov	rcx,rdi
	call	qword ptr [rax+48h]
	jmp	44D4D6h

l000000000044D6B9:
	mov	rax,[rdi]
	mov	rcx,rdi
	call	qword ptr [rax+50h]
	jmp	44D5A2h
000000000044D6C7                      48 83 FA 01 48 89 C1 75 1C        H...H..u.
000000000044D6D0 E8 6B 81 02 00 48 8B 45 00 48 03 68 E8 83 4D 20 .k...H.E.H.h..M 
000000000044D6E0 01 F6 45 1C 01 74 39 E8 74 89 02 00 E8 4F 81 02 ..E..t9.t....O..
000000000044D6F0 00 48 8B 45 00 48 89 EF 48 03 78 E8 83 4F 20 01 .H.E.H..H.x..O .
000000000044D700 F6 47 1C 01 75 1F E8 65 83 02 00 E9 92 FE FF FF .G..u..e........
000000000044D710 48 89 C3 E8 58 83 02 00 48 89 D9 E8 90 3E FC FF H...X...H....>..
000000000044D720 E8 3B 89 02 00 E8 36 89 02 00 48 89 C3 E8 3E 83 .;....6...H...>.
000000000044D730 02 00 48 89 D9 E8 76 3E FC FF 90 90 90 90 90 90 ..H...v>........

;; fn000000000044D740: 000000000044D740
;;   Called from:
;;     000000000044B42A (in fn000000000044B410)
;;     000000000044B57A (in fn000000000044B560)
;;     000000000044B6CA (in fn000000000044B6B0)
;;     000000000044B81A (in fn000000000044B800)
;;     000000000044B96A (in fn000000000044B950)
;;     000000000044BABA (in fn000000000044BAA0)
;;     000000000044BC0A (in fn000000000044BBF0)
;;     000000000044BD5A (in fn000000000044BD40)
;;     000000000044BEAA (in fn000000000044BE90)
;;     000000000044BFFA (in fn000000000044BFE0)
;;     000000000044C14A (in fn000000000044C130)
;;     000000000044C33C (in fn000000000044C310)
;;     000000000044C599 (in fn000000000044C570)
;;     000000000044C792 (in fn000000000044C770)
;;     000000000044C8AE (in fn000000000044C890)
;;     000000000044C9CE (in fn000000000044C9B0)
;;     000000000044CAD6 (in fn000000000044CAB0)
;;     000000000044CBC6 (in fn000000000044CBB0)
;;     000000000044CCE1 (in fn000000000044CCB0)
;;     000000000044CE00 (in fn000000000044CDD0)
;;     000000000044CF15 (in fn000000000044CEF0)
;;     000000000044D020 (in fn000000000044CFF0)
;;     000000000044D12E (in fn000000000044D110)
;;     000000000044D240 (in fn000000000044D210)
;;     000000000044D499 (in fn000000000044D460)
;;     000000000044DB06 (in fn000000000044DAD0)
;;     000000000044DDC3 (in fn000000000044DD90)
;;     000000000044DEE6 (in fn000000000044DEC0)
;;     000000000044E2B7 (in fn000000000044E2A0)
;;     000000000044E40A (in fn000000000044E3F0)
;;     000000000044E59A (in fn000000000044E580)
;;     0000000000471C55 (in fn0000000000471C20)
;;     0000000000474201 (in fn00000000004741E0)
;;     00000000004744E7 (in fn00000000004744D0)
;;     0000000000474731 (in fn0000000000474710)
fn000000000044D740 proc
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,38h
	mov	rax,[rdx]
	mov	r9,rdx
	mov	rdi,rcx
	mov	rbx,rdx
	mov	byte ptr [rcx],0h
	add	r9,[rax-18h]
	mov	eax,[r9+20h]
	test	eax,eax
	jnz	44D7A4h

l000000000044D763:
	mov	rcx,[r9+0D8h]
	test	rcx,rcx
	jz	44D7C0h

l000000000044D76F:
	mov	[rsp+2Ch],r8d
	call	44E8B0h
	mov	rax,[rbx]
	mov	r8d,[rsp+2Ch]
	mov	r9,rbx
	add	r9,[rax-18h]
	test	r8b,r8b
	jz	44D7C5h

l000000000044D78D:
	nop	dword ptr [rax]

l000000000044D790:
	mov	eax,[r9+20h]
	test	eax,eax
	jnz	44D7A4h

l000000000044D798:
	mov	byte ptr [rdi],1h
	add	rsp,38h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret

l000000000044D7A4:
	xor	edx,edx

l000000000044D7A6:
	or	edx,4h
	mov	rcx,r9
	or	edx,eax
	add	rsp,38h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	jmp	46E370h
000000000044D7BB                                  0F 1F 44 00 00            ..D..

l000000000044D7C0:
	test	r8b,r8b
	jnz	44D798h

l000000000044D7C5:
	test	byte ptr [r9+19h],10h
	jz	44D790h

l000000000044D7CC:
	mov	rsi,[r9+0E8h]
	mov	rax,[rsi+10h]
	cmp	rax,[rsi+18h]
	jnc	44D880h

l000000000044D7E1:
	mov	rbp,[r9+0F0h]
	movzx	eax,byte ptr [rax]
	test	rbp,rbp
	jz	44D8B7h

l000000000044D7F4:
	mov	rdx,[rbp+30h]
	movzx	eax,al
	test	byte ptr [rdx+rax*2],20h
	jz	44D790h

l000000000044D801:
	mov	rax,[rsi+10h]
	mov	rdx,[rsi+18h]
	cmp	rax,rdx
	jnc	44D840h

l000000000044D80E:
	add	rax,1h
	mov	[rsi+10h],rax

l000000000044D816:
	cmp	rax,rdx
	jnc	44D870h

l000000000044D81B:
	movzx	eax,byte ptr [rax]

l000000000044D81E:
	mov	rdx,[rbp+30h]
	movzx	eax,al
	test	byte ptr [rdx+rax*2],20h
	jnz	44D801h

l000000000044D82B:
	mov	rax,[rbx]
	add	rbx,[rax-18h]
	mov	r9,rbx
	jmp	44D790h
000000000044D83A                               66 0F 1F 44 00 00           f..D..

l000000000044D840:
	mov	rax,[rsi]
	mov	rcx,rsi
	call	qword ptr [rax+50h]
	cmp	eax,0FFh
	jnz	44D8AAh

l000000000044D84E:
	mov	rax,[rbx]
	add	rbx,[rax-18h]
	mov	r9,rbx

l000000000044D858:
	mov	eax,[r9+20h]
	mov	edx,2h
	jmp	44D7A6h
000000000044D866                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l000000000044D870:
	mov	rax,[rsi]
	mov	rcx,rsi
	call	qword ptr [rax+48h]
	cmp	eax,0FFh
	jz	44D84Eh

l000000000044D87E:
	jmp	44D81Eh

l000000000044D880:
	mov	rax,[rsi]
	mov	rcx,rsi
	call	qword ptr [rax+48h]
	mov	rdx,[rbx]
	mov	r9,rbx
	add	r9,[rdx-18h]
	mov	rbp,[r9+0F0h]
	test	rbp,rbp
	jz	44D8B7h

l000000000044D89F:
	cmp	eax,0FFh
	jnz	44D7F4h

l000000000044D8A8:
	jmp	44D858h

l000000000044D8AA:
	mov	rax,[rsi+10h]
	mov	rdx,[rsi+18h]
	jmp	44D816h

l000000000044D8B7:
	call	470820h
	nop
	nop
	nop
	nop

;; fn000000000044D8C0: 000000000044D8C0
;;   Called from:
;;     000000000044D8BF (in fn000000000044E750)
fn000000000044D8C0 proc
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,38h
	mov	rax,[rdx]
	mov	r9,rdx
	mov	rdi,rcx
	mov	rbx,rdx
	mov	byte ptr [rcx],0h
	add	r9,[rax-18h]
	mov	eax,[r9+20h]
	test	eax,eax
	jnz	44D924h

l000000000044D8E3:
	mov	rcx,[r9+0D8h]
	test	rcx,rcx
	jz	44D940h

l000000000044D8EF:
	mov	[rsp+2Ch],r8d
	call	44E8B0h
	mov	rax,[rbx]
	mov	r8d,[rsp+2Ch]
	mov	r9,rbx
	add	r9,[rax-18h]
	test	r8b,r8b
	jz	44D945h

l000000000044D90D:
	nop	dword ptr [rax]

l000000000044D910:
	mov	eax,[r9+20h]
	test	eax,eax
	jnz	44D924h

l000000000044D918:
	mov	byte ptr [rdi],1h
	add	rsp,38h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret

l000000000044D924:
	xor	edx,edx

l000000000044D926:
	or	edx,4h
	mov	rcx,r9
	or	edx,eax
	add	rsp,38h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	jmp	46E370h
000000000044D93B                                  0F 1F 44 00 00            ..D..

l000000000044D940:
	test	r8b,r8b
	jnz	44D918h

l000000000044D945:
	test	byte ptr [r9+19h],10h
	jz	44D910h

l000000000044D94C:
	mov	rsi,[r9+0E8h]
	mov	rax,[rsi+10h]
	cmp	rax,[rsi+18h]
	jnc	44DA00h

l000000000044D961:
	mov	rbp,[r9+0F0h]
	movzx	eax,byte ptr [rax]
	test	rbp,rbp
	jz	44DA37h

l000000000044D974:
	mov	rdx,[rbp+30h]
	movzx	eax,al
	test	byte ptr [rdx+rax*2],20h
	jz	44D910h

l000000000044D981:
	mov	rax,[rsi+10h]
	mov	rdx,[rsi+18h]
	cmp	rax,rdx
	jnc	44D9C0h

l000000000044D98E:
	add	rax,1h
	mov	[rsi+10h],rax

l000000000044D996:
	cmp	rax,rdx
	jnc	44D9F0h

l000000000044D99B:
	movzx	eax,byte ptr [rax]

l000000000044D99E:
	mov	rdx,[rbp+30h]
	movzx	eax,al
	test	byte ptr [rdx+rax*2],20h
	jnz	44D981h

l000000000044D9AB:
	mov	rax,[rbx]
	add	rbx,[rax-18h]
	mov	r9,rbx
	jmp	44D910h
000000000044D9BA                               66 0F 1F 44 00 00           f..D..

l000000000044D9C0:
	mov	rax,[rsi]
	mov	rcx,rsi
	call	qword ptr [rax+50h]
	cmp	eax,0FFh
	jnz	44DA2Ah

l000000000044D9CE:
	mov	rax,[rbx]
	add	rbx,[rax-18h]
	mov	r9,rbx

l000000000044D9D8:
	mov	eax,[r9+20h]
	mov	edx,2h
	jmp	44D926h
000000000044D9E6                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l000000000044D9F0:
	mov	rax,[rsi]
	mov	rcx,rsi
	call	qword ptr [rax+48h]
	cmp	eax,0FFh
	jz	44D9CEh

l000000000044D9FE:
	jmp	44D99Eh

l000000000044DA00:
	mov	rax,[rsi]
	mov	rcx,rsi
	call	qword ptr [rax+48h]
	mov	rdx,[rbx]
	mov	r9,rbx
	add	r9,[rdx-18h]
	mov	rbp,[r9+0F0h]
	test	rbp,rbp
	jz	44DA37h

l000000000044DA1F:
	cmp	eax,0FFh
	jnz	44D974h

l000000000044DA28:
	jmp	44D9D8h

l000000000044DA2A:
	mov	rax,[rsi+10h]
	mov	rdx,[rsi+18h]
	jmp	44D996h

l000000000044DA37:
	call	470820h
	nop
	nop
	nop
	nop

;; fn000000000044DA40: 000000000044DA40
;;   Called from:
;;     000000000044DA3F (in fn000000000044D8C0)
fn000000000044DA40 proc
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,30h
	mov	rax,[rcx]
	mov	rsi,rcx
	mov	rdi,rdx
	mov	rax,[rax-18h]
	mov	rbx,[rcx+rax+0F0h]
	test	rbx,rbx
	jz	44DAC0h

l000000000044DA61:
	cmp	byte ptr [rbx+38h],0h
	jz	44DA80h

l000000000044DA67:
	movsx	r9d,byte ptr [rbx+43h]

l000000000044DA6C:
	mov	rdx,rdi
	mov	rcx,rsi
	add	rsp,30h
	pop	rbx
	pop	rsi
	pop	rdi
	jmp	44DAD0h
000000000044DA7E                                           66 90               f.

l000000000044DA80:
	mov	rcx,rbx
	mov	[rsp+28h],r8
	call	42B320h
	mov	rax,[rbx]
	lea	rdx,[000000000042B5F0]                                 ; [rip+FFFDDB59]
	mov	r9d,0Ah
	mov	r8,[rsp+28h]
	mov	rax,[rax+30h]
	cmp	rax,rdx
	jz	44DA6Ch

l000000000044DAAB:
	mov	edx,0Ah
	mov	rcx,rbx
	call	rax
	mov	r8,[rsp+28h]
	movsx	r9d,al
	jmp	44DA6Ch

l000000000044DAC0:
	call	470820h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop

;; fn000000000044DAD0: 000000000044DAD0
;;   Called from:
;;     000000000044DA79 (in fn000000000044DA40)
;;     000000000044DACF (in fn000000000044DA40)
fn000000000044DAD0 proc
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,38h
	mov	rbp,rcx
	mov	qword ptr [rcx+8h],+0h
	lea	rcx,[rsp+2Fh]
	mov	rdi,rdx
	mov	r12,r8
	mov	rdx,rbp
	mov	r8d,1h
	mov	r13d,r9d
	movsx	r14d,r9b
	call	44D740h
	cmp	byte ptr [rsp+2Fh],0h
	jz	44DC04h

l000000000044DB16:
	mov	rax,[rbp+0h]
	movzx	r13d,r13b
	mov	rax,[rax-18h]
	mov	rsi,[rbp+rax+0E8h]
	mov	rax,[rsi+10h]
	cmp	rax,[rsi+18h]
	jnc	44DCFCh

l000000000044DB38:
	movzx	eax,byte ptr [rax]

l000000000044DB3B:
	mov	rbx,[rbp+8h]
	nop

l000000000044DB40:
	cmp	eax,r13d
	lea	r8,[rbx+1h]
	setnz	cl
	cmp	eax,0FFh
	setnz	dl
	test	cl,dl
	jz	44DC60h

l000000000044DB58:
	cmp	r8,r12
	jge	44DC60h

l000000000044DB61:
	mov	r15,[rsi+10h]
	mov	rcx,r12
	mov	rdx,[rsi+18h]
	sub	rcx,rbx
	mov	rbx,rcx
	sub	rbx,1h
	sub	rdx,r15
	cmp	rbx,rdx
	cmovg	rbx,rdx

l000000000044DB80:
	cmp	rbx,1h
	jle	44DCA0h

l000000000044DB8A:
	mov	r8,rbx
	mov	edx,r14d
	mov	rcx,r15
	call	41BD98h
	mov	rdx,rax
	mov	rcx,rdi
	sub	rdx,r15
	test	rax,rax
	cmovnz	rbx,rdx

l000000000044DBA8:
	mov	rdx,r15
	mov	r8,rbx
	add	rdi,rbx
	call	41BCC0h
	mov	rax,rbx
	add	rax,[rsi+10h]
	add	rbx,[rbp+8h]
	cmp	rax,[rsi+18h]
	mov	[rsi+10h],rax
	mov	[rbp+8h],rbx
	jnc	44DCD4h

l000000000044DBD3:
	movzx	eax,byte ptr [rax]
	jmp	44DB40h
000000000044DBDB                                  48 89 C1 48 89            H..H.
000000000044DBE0 EF E8 5A 7C 02 00 48 8B 45 00 48 03 78 E8 83 4F ..Z|..H.E.H.x..O
000000000044DBF0 20 01 F6 47 1C 01 0F 85 7E 01 00 00 4C 89 FF E8  ..G....~...L...
000000000044DC00 6C 7E 02 00                                     l~..           

l000000000044DC04:
	xor	edx,edx
	nop	word ptr cs:[rax+rax+0h]

l000000000044DC10:
	test	r12,r12
	jle	44DC18h

l000000000044DC15:
	mov	byte ptr [rdi],0h

l000000000044DC18:
	cmp	qword ptr [rbp+8h],0h
	jnz	44DC50h

l000000000044DC1F:
	or	edx,4h

l000000000044DC22:
	mov	rax,[rbp+0h]
	mov	rcx,rbp
	add	rcx,[rax-18h]
	or	edx,[rcx+20h]
	call	46E370h

l000000000044DC35:
	mov	rax,rbp
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
000000000044DC49                            0F 1F 80 00 00 00 00          .......

l000000000044DC50:
	test	edx,edx
	jz	44DC35h

l000000000044DC54:
	jmp	44DC22h
000000000044DC56                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l000000000044DC60:
	cmp	eax,0FFh
	jz	44DC90h

l000000000044DC65:
	cmp	r13d,eax
	mov	edx,4h
	jnz	44DC10h

l000000000044DC6F:
	mov	rax,[rsi+10h]
	cmp	rax,[rsi+18h]
	mov	[rbp+8h],r8
	jnc	44DD1Bh

l000000000044DC81:
	add	rax,1h
	xor	dl,dl
	mov	[rsi+10h],rax
	jmp	44DC10h
000000000044DC8D                                        0F 1F 00              ...

l000000000044DC90:
	mov	edx,2h
	jmp	44DC10h
000000000044DC9A                               66 0F 1F 44 00 00           f..D..

l000000000044DCA0:
	mov	[rdi],al
	mov	rax,[rsi+10h]
	lea	r15,[rdi+1h]
	mov	rdx,[rsi+18h]
	add	qword ptr [rbp+8h],1h
	cmp	rax,rdx
	jnc	44DCE2h

l000000000044DCB8:
	add	rax,1h
	mov	[rsi+10h],rax

l000000000044DCC0:
	cmp	rax,rdx
	jnc	44DD10h

l000000000044DCC5:
	movzx	eax,byte ptr [rax]
	mov	rbx,[rbp+8h]
	mov	rdi,r15
	jmp	44DB40h

l000000000044DCD4:
	mov	rax,[rsi]
	mov	rcx,rsi
	call	qword ptr [rax+48h]
	jmp	44DB3Bh

l000000000044DCE2:
	mov	rax,[rsi]
	mov	rcx,rsi
	call	qword ptr [rax+50h]
	cmp	eax,0FFh
	jnz	44DD29h

l000000000044DCF0:
	mov	rbx,[rbp+8h]
	mov	rdi,r15
	jmp	44DB40h

l000000000044DCFC:
	mov	rax,[rsi]
	mov	rcx,rsi
	call	qword ptr [rax+48h]
	jmp	44DB3Bh
000000000044DD0A                               66 0F 1F 44 00 00           f..D..

l000000000044DD10:
	mov	rax,[rsi]
	mov	rcx,rsi
	call	qword ptr [rax+48h]
	jmp	44DCF0h

l000000000044DD1B:
	mov	rax,[rsi]
	mov	rcx,rsi
	call	qword ptr [rax+50h]
	jmp	44DC04h

l000000000044DD29:
	mov	rax,[rsi+10h]
	mov	rdx,[rsi+18h]
	jmp	44DCC0h
000000000044DD33          48 83 FA 01 0F 85 9E FE FF FF 48 89 C1    H.........H..
000000000044DD40 E8 FB 7A 02 00 48 8B 45 00 48 03 68 E8 83 4D 20 ..z..H.E.H.h..M 
000000000044DD50 01 F6 45 1C 01 74 1A E8 04 83 02 00 49 89 FF EB ..E..t......I...
000000000044DD60 D2 48 89 C3 E8 07 7D 02 00 48 89 D9 E8 3F 38 FC .H....}..H...?8.
000000000044DD70 FF E8 EA 82 02 00 EB E4 EB E2 E8 E1 82 02 00 48 ...............H
000000000044DD80 89 C3 E8 E9 7C 02 00 48 89 D9 E8 21 38 FC FF 90 ....|..H...!8...

;; fn000000000044DD90: 000000000044DD90
fn000000000044DD90 proc
	push	rsi
	push	rbx
	sub	rsp,38h
	mov	rax,[rcx]
	mov	rbx,rcx
	mov	qword ptr [rcx+8h],+0h
	mov	esi,edx
	add	rcx,[rax-18h]
	mov	edx,[rcx+20h]
	and	edx,0FDh
	call	46E370h
	lea	rcx,[rsp+2Fh]
	mov	r8d,1h
	mov	rdx,rbx
	call	44D740h
	cmp	byte ptr [rsp+2Fh],0h
	jz	44DE20h

l000000000044DDCF:
	mov	rax,[rbx]
	mov	rdx,rbx
	add	rdx,[rax-18h]
	mov	rcx,[rdx+0E8h]
	test	rcx,rcx
	jz	44DE30h

l000000000044DDE5:
	mov	rax,[rcx+10h]
	cmp	[rcx+8h],rax
	jnc	44DDF5h

l000000000044DDEF:
	cmp	sil,[rax-1h]
	jz	44DE40h

l000000000044DDF5:
	mov	rax,[rcx]
	movzx	edx,sil
	call	qword ptr [rax+58h]
	cmp	eax,0FFh
	jnz	44DE20h

l000000000044DE04:
	mov	rax,[rbx]
	mov	rcx,rbx
	add	rcx,[rax-18h]
	mov	edx,[rcx+20h]
	or	edx,1h
	call	46E370h
	nop	dword ptr [rax+0h]

l000000000044DE20:
	mov	rax,rbx
	add	rsp,38h
	pop	rbx
	pop	rsi
	ret
000000000044DE2A                               66 0F 1F 44 00 00           f..D..

l000000000044DE30:
	mov	rcx,rdx
	mov	edx,[rcx+20h]
	or	edx,1h
	call	46E370h
	jmp	44DE20h

l000000000044DE40:
	sub	rax,1h
	mov	[rcx+10h],rax
	jmp	44DE20h
000000000044DE4A                               48 83 EA 01 48 89           H...H.
000000000044DE50 C1 75 1B E8 E8 79 02 00 48 8B 03 48 03 58 E8 83 .u...y..H..H.X..
000000000044DE60 4B 20 01 F6 43 1C 01 74 35 E8 F2 81 02 00 E8 CD K ..C..t5.......
000000000044DE70 79 02 00 48 8B 03 48 89 DE 48 03 70 E8 83 4E 20 y..H..H..H.p..N 
000000000044DE80 01 F6 46 1C 01 75 1C E8 E4 7B 02 00 EB 92 48 89 ..F..u...{....H.
000000000044DE90 C3 E8 DA 7B 02 00 48 89 D9 E8 12 37 FC FF E8 BD ...{..H....7....
000000000044DEA0 81 02 00 E8 B8 81 02 00 48 89 C3 E8 C0 7B 02 00 ........H....{..
000000000044DEB0 48 89 D9 E8 F8 36 FC FF 90 90 90 90 90 90 90 90 H....6..........

;; fn000000000044DEC0: 000000000044DEC0
fn000000000044DEC0 proc
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,30h
	mov	rbx,rcx
	mov	qword ptr [rcx+8h],+0h
	lea	rcx,[rsp+2Fh]
	mov	rdi,rdx
	mov	rsi,r8
	mov	rdx,rbx
	mov	r8d,1h
	call	44D740h
	cmp	byte ptr [rsp+2Fh],0h
	jz	44DF48h

l000000000044DEF2:
	mov	rax,[rbx]
	mov	rax,[rax-18h]
	mov	rcx,[rbx+rax+0E8h]
	mov	rax,[rcx+18h]
	sub	rax,[rcx+10h]
	test	rax,rax
	jz	44DF54h

l000000000044DF0E:
	test	rax,rax
	jle	44DF42h

l000000000044DF13:
	mov	rdx,[rbx]
	cmp	rax,rsi
	cmovle	rsi,rax

l000000000044DF1D:
	mov	r8,rsi
	mov	rdx,[rdx-18h]
	mov	rcx,[rbx+rdx+0E8h]
	mov	rdx,rdi
	mov	r9,[rcx]
	call	qword ptr [r9+40h]
	mov	[rbx+8h],rax
	add	rsp,30h
	pop	rbx
	pop	rsi
	pop	rdi
	ret

l000000000044DF42:
	cmp	rax,0FFh
	jz	44DF61h

l000000000044DF48:
	mov	rax,[rbx+8h]

l000000000044DF4C:
	add	rsp,30h
	pop	rbx
	pop	rsi
	pop	rdi
	ret

l000000000044DF54:
	mov	rax,[rcx]
	call	qword ptr [rax+38h]
	test	rax,rax
	jg	44DF13h

l000000000044DF5F:
	jmp	44DF42h

l000000000044DF61:
	mov	rax,[rbx]
	mov	rcx,rbx
	add	rcx,[rax-18h]
	mov	edx,[rcx+20h]
	or	edx,2h
	call	46E370h
	mov	rax,[rbx+8h]
	jmp	44DF4Ch
000000000044DF7C                                     48 83 EA 01             H...
000000000044DF80 48 89 C1 75 1B E8 B6 78 02 00 48 8B 03 48 03 58 H..u...x..H..H.X
000000000044DF90 E8 83 4B 20 01 F6 43 1C 01 74 39 E8 C0 80 02 00 ..K ..C..t9.....
000000000044DFA0 E8 9B 78 02 00 48 8B 03 48 89 DF 48 03 78 E8 83 ..x..H..H..H.x..
000000000044DFB0 4F 20 01 F6 47 1C 01 75 20 E8 B2 7A 02 00 48 8B O ..G..u ..z..H.
000000000044DFC0 43 08 EB 88 48 89 C3 E8 A4 7A 02 00 48 89 D9 E8 C...H....z..H...
000000000044DFD0 DC 35 FC FF E8 87 80 02 00 E8 82 80 02 00 48 89 .5............H.
000000000044DFE0 C3 E8 8A 7A 02 00 48 89 D9 E8 C2 35 FC FF 90 90 ...z..H....5....

;; fn000000000044DFF0: 000000000044DFF0
fn000000000044DFF0 proc
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,20h
	lea	rsi,[rcx+10h]
	mov	rbx,rcx
	mov	rdi,rdx
	mov	rcx,rsi
	call	46D320h
	lea	rax,[0000000000496058]                                 ; [rip+00048048]
	mov	qword ptr [rbx+0E8h],+0h
	mov	byte ptr [rbx+0F0h],0h
	mov	byte ptr [rbx+0F1h],0h
	mov	qword ptr [rbx+0F8h],+0h
	mov	rdx,rdi
	mov	[rbx],rax
	lea	rax,[0000000000496080]                                 ; [rip+0004803F]
	mov	qword ptr [rbx+100h],+0h
	mov	qword ptr [rbx+108h],+0h
	mov	qword ptr [rbx+110h],+0h
	mov	rcx,rsi
	mov	[rbx+10h],rax
	mov	qword ptr [rbx+8h],+0h
	call	46E310h
	nop
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	ret
000000000044E07F                                              48                H
000000000044E080 89 C7 48 8B 05 97 3D 04 00 48 89 F1 48 8D 50 10 ..H...=..H..H.P.
000000000044E090 48 89 53 10 E8 37 F3 01 00 48 89 F9 E8 0F 35 FC H.S..7...H....5.
000000000044E0A0 FF 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 ................

;; fn000000000044E0B0: 000000000044E0B0
fn000000000044E0B0 proc
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,20h
	lea	rsi,[rcx+10h]
	mov	rbx,rcx
	mov	rcx,rsi
	call	46D320h
	lea	rax,[0000000000496058]                                 ; [rip+00047F8B]
	mov	qword ptr [rbx+0E8h],+0h
	mov	byte ptr [rbx+0F0h],0h
	mov	byte ptr [rbx+0F1h],0h
	mov	qword ptr [rbx+0F8h],+0h
	xor	edx,edx
	mov	[rbx],rax
	lea	rax,[0000000000496080]                                 ; [rip+00047F83]
	mov	qword ptr [rbx+100h],+0h
	mov	qword ptr [rbx+108h],+0h
	mov	qword ptr [rbx+110h],+0h
	mov	rcx,rsi
	mov	[rbx+10h],rax
	mov	qword ptr [rbx+8h],+0h
	call	46E310h
	nop
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	ret
000000000044E13B                                  48 89 C7 48 8B            H..H.
000000000044E140 05 DB 3C 04 00 48 89 F1 48 8D 50 10 48 89 53 10 ..<..H..H.P.H.S.
000000000044E150 E8 7B F2 01 00 48 89 F9 E8 53 34 FC FF 90 90 90 .{...H...S4.....

;; fn000000000044E160: 000000000044E160
fn000000000044E160 proc
	mov	rax,[rdx]
	mov	[rcx],rax
	mov	r9,[rdx+8h]
	mov	rdx,[rax-18h]
	mov	[rcx+rdx],r9
	mov	qword ptr [rcx+8h],+0h
	mov	rdx,r8
	add	rcx,[rax-18h]
	jmp	46E310h
000000000044E186                   90 90 90 90 90 90 90 90 90 90       ..........

;; fn000000000044E190: 000000000044E190
fn000000000044E190 proc
	mov	rax,[rdx]
	mov	[rcx],rax
	mov	r8,[rdx+8h]
	mov	rdx,[rax-18h]
	mov	[rcx+rdx],r8
	mov	qword ptr [rcx+8h],+0h
	xor	edx,edx
	add	rcx,[rax-18h]
	jmp	46E310h
000000000044E1B5                90 90 90 90 90 90 90 90 90 90 90      ...........

;; fn000000000044E1C0: 000000000044E1C0
fn000000000044E1C0 proc
	push	rbx
	sub	rsp,20h
	lea	rax,[0000000000496058]                                 ; [rip+00047E8C]
	mov	rbx,rcx
	mov	qword ptr [rcx+8h],+0h
	lea	rcx,[rcx+10h]
	mov	[rcx-10h],rax
	mov	rax,[0000000000491E20]                                 ; [rip+00043C3A]
	add	rax,10h
	mov	[rcx],rax
	call	46D3D0h
	mov	rcx,rbx
	add	rsp,20h
	pop	rbx
	jmp	475550h
000000000044E1FF                                              90                .

;; fn000000000044E200: 000000000044E200
fn000000000044E200 proc
	lea	rax,[0000000000496058]                                 ; [rip+00047E51]
	mov	qword ptr [rcx+8h],+0h
	add	rcx,10h
	mov	[rcx-10h],rax
	mov	rax,[0000000000491E20]                                 ; [rip+00043C02]
	add	rax,10h
	mov	[rcx],rax
	jmp	46D3D0h
000000000044E22A                               90 90 90 90 90 90           ......

;; fn000000000044E230: 000000000044E230
fn000000000044E230 proc
	mov	rax,[rdx]
	mov	[rcx],rax
	mov	rax,[rax-18h]
	mov	rdx,[rdx+8h]
	mov	[rcx+rax],rdx
	ret
000000000044E243          90 90 90 90 90 90 90 90 90 90 90 90 90    .............

;; fn000000000044E250: 000000000044E250
fn000000000044E250 proc
	jmp	rdx
000000000044E253          90 90 90 90 90 90 90 90 90 90 90 90 90    .............

;; fn000000000044E260: 000000000044E260
fn000000000044E260 proc
	push	rbx
	sub	rsp,20h
	mov	rax,[rcx]
	mov	rbx,rcx
	add	rcx,[rax-18h]
	call	rdx
	mov	rax,rbx
	add	rsp,20h
	pop	rbx
	ret
000000000044E27A                               90 90 90 90 90 90           ......

;; fn000000000044E280: 000000000044E280
fn000000000044E280 proc
	push	rbx
	sub	rsp,20h
	mov	rax,[rcx]
	mov	rbx,rcx
	add	rcx,[rax-18h]
	call	rdx
	mov	rax,rbx
	add	rsp,20h
	pop	rbx
	ret
000000000044E29A                               90 90 90 90 90 90           ......

;; fn000000000044E2A0: 000000000044E2A0
fn000000000044E2A0 proc
	push	rsi
	push	rbx
	sub	rsp,38h
	xor	r8d,r8d
	mov	rbx,rcx
	lea	rcx,[rsp+2Eh]
	mov	rsi,rdx
	mov	rdx,rbx
	call	44D740h
	test	rsi,rsi
	jz	44E311h

l000000000044E2C1:
	cmp	byte ptr [rsp+2Eh],0h
	jz	44E311h

l000000000044E2C8:
	mov	rax,[rbx]
	lea	r8,[rsp+2Fh]
	mov	rdx,rsi
	mov	rax,[rax-18h]
	mov	rcx,[rbx+rax+0E8h]
	call	471040h
	test	rax,rax
	jz	44E320h

l000000000044E2E9:
	cmp	byte ptr [rsp+2Fh],0h
	jz	44E307h

l000000000044E2F0:
	mov	edx,2h

l000000000044E2F5:
	mov	rax,[rbx]
	mov	rcx,rbx
	add	rcx,[rax-18h]
	or	edx,[rcx+20h]
	call	46E370h

l000000000044E307:
	mov	rax,rbx
	add	rsp,38h
	pop	rbx
	pop	rsi
	ret

l000000000044E311:
	test	rsi,rsi
	jnz	44E307h

l000000000044E316:
	mov	edx,4h
	jmp	44E2F5h
000000000044E31D                                        0F 1F 00              ...

l000000000044E320:
	cmp	byte ptr [rsp+2Fh],1h
	sbb	edx,edx
	and	edx,0FEh
	add	edx,6h
	jmp	44E2F5h
000000000044E32F                                              48                H
000000000044E330 83 EA 01 48 89 C1 75 1B E8 03 75 02 00 48 8B 03 ...H..u...u..H..
000000000044E340 48 03 58 E8 83 4B 20 04 F6 43 1C 04 74 35 E8 0D H.X..K ..C..t5..
000000000044E350 7D 02 00 E8 E8 74 02 00 48 8B 03 48 89 DE 48 03 }....t..H..H..H.
000000000044E360 70 E8 83 4E 20 04 F6 46 1C 04 75 1C E8 FF 76 02 p..N ..F..u...v.
000000000044E370 00 EB 94 48 89 C3 E8 F5 76 02 00 48 89 D9 E8 2D ...H....v..H...-
000000000044E380 32 FC FF E8 D8 7C 02 00 E8 D3 7C 02 00 48 89 C3 2....|....|..H..
000000000044E390 E8 DB 76 02 00 48 89 D9 E8 13 32 FC FF 90 90 90 ..v..H....2.....

;; fn000000000044E3A0: 000000000044E3A0
fn000000000044E3A0 proc
	jmp	44B410h
000000000044E3A5                90 90 90 90 90 90 90 90 90 90 90      ...........

;; fn000000000044E3B0: 000000000044E3B0
fn000000000044E3B0 proc
	jmp	44B560h
000000000044E3B5                90 90 90 90 90 90 90 90 90 90 90      ...........

;; fn000000000044E3C0: 000000000044E3C0
fn000000000044E3C0 proc
	jmp	44B6B0h
000000000044E3C5                90 90 90 90 90 90 90 90 90 90 90      ...........

;; fn000000000044E3D0: 000000000044E3D0
fn000000000044E3D0 proc
	jmp	44B800h
000000000044E3D5                90 90 90 90 90 90 90 90 90 90 90      ...........

;; fn000000000044E3E0: 000000000044E3E0
fn000000000044E3E0 proc
	jmp	44B950h
000000000044E3E5                90 90 90 90 90 90 90 90 90 90 90      ...........

;; fn000000000044E3F0: 000000000044E3F0
fn000000000044E3F0 proc
	push	rsi
	push	rbx
	sub	rsp,+88h
	xor	r8d,r8d
	mov	rbx,rcx
	lea	rcx,[rsp+77h]
	mov	rsi,rdx
	mov	rdx,rbx
	call	44D740h
	cmp	byte ptr [rsp+77h],0h
	jz	44E4A1h

l000000000044E41A:
	mov	rax,[rbx]
	mov	r8,rbx
	mov	dword ptr [rsp+78h],0h
	add	r8,[rax-18h]
	mov	rax,[r8+100h]
	test	rax,rax
	jz	44E4CFh

l000000000044E43C:
	mov	rdx,[r8+0E8h]
	mov	r9d,0FFFFFFFFh
	mov	qword ptr [rsp+40h],+0h
	mov	[rsp+58h],r9
	mov	[rsp+48h],r9
	lea	rcx,[rsp+60h]
	lea	r9,[rsp+40h]
	mov	[rsp+50h],rdx
	lea	rdx,[rsp+7Ch]
	mov	r10,[rax]
	mov	[rsp+20h],r8
	lea	r8,[rsp+50h]
	mov	[rsp+30h],rdx
	lea	rdx,[rsp+78h]
	mov	[rsp+28h],rdx
	mov	rdx,rax
	call	qword ptr [r10+18h]
	mov	eax,[rsp+7Ch]
	mov	[rsi],eax

l000000000044E499:
	mov	edx,[rsp+78h]
	test	edx,edx
	jnz	44E4B0h

l000000000044E4A1:
	mov	rax,rbx
	add	rsp,+88h
	pop	rbx
	pop	rsi
	ret
000000000044E4AE                                           66 90               f.

l000000000044E4B0:
	mov	rax,[rbx]
	mov	rcx,rbx
	add	rcx,[rax-18h]
	or	edx,[rcx+20h]
	call	46E370h
	mov	rax,rbx
	add	rsp,+88h
	pop	rbx
	pop	rsi
	ret

l000000000044E4CF:
	call	470820h
	sub	rdx,1h
	mov	rcx,rax
	jnz	44E4F8h

l000000000044E4DD:
	call	475840h
	mov	rax,[rbx]
	add	rbx,[rax-18h]
	or	dword ptr [rbx+20h],1h
	test	byte ptr [rbx+1Ch],1h
	jz	44E528h

l000000000044E4F3:
	call	476060h

l000000000044E4F8:
	call	475840h
	mov	rax,[rbx]
	mov	rsi,rbx
	add	rsi,[rax-18h]
	or	dword ptr [rsi+20h],1h
	test	byte ptr [rsi+1Ch],1h
	jnz	44E52Dh

l000000000044E511:
	call	475A70h
	jmp	44E499h
000000000044E518                         48 89 C3 E8 50 75 02 00         H...Pu..
000000000044E520 48 89 D9 E8 88 30 FC FF                         H....0..       

l000000000044E528:
	call	476060h

l000000000044E52D:
	call	476060h
	mov	rbx,rax
	call	475A70h
	mov	rcx,rbx
	call	4115B0h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop

;; fn000000000044E550: 000000000044E550
;;   Called from:
;;     000000000044E54F (in fn000000000044E3F0)
fn000000000044E550 proc
	jmp	44BAA0h
000000000044E555                90 90 90 90 90 90 90 90 90 90 90      ...........

;; fn000000000044E560: 000000000044E560
fn000000000044E560 proc
	jmp	44BBF0h
000000000044E565                90 90 90 90 90 90 90 90 90 90 90      ...........

;; fn000000000044E570: 000000000044E570
fn000000000044E570 proc
	jmp	44BD40h
000000000044E575                90 90 90 90 90 90 90 90 90 90 90      ...........

;; fn000000000044E580: 000000000044E580
fn000000000044E580 proc
	push	rsi
	push	rbx
	sub	rsp,+88h
	xor	r8d,r8d
	mov	rbx,rcx
	lea	rcx,[rsp+77h]
	mov	rsi,rdx
	mov	rdx,rbx
	call	44D740h
	cmp	byte ptr [rsp+77h],0h
	jz	44E645h

l000000000044E5AA:
	mov	rax,[rbx]
	mov	r8,rbx
	mov	dword ptr [rsp+78h],0h
	add	r8,[rax-18h]
	mov	rax,[r8+100h]
	test	rax,rax
	jz	44E69Ah

l000000000044E5CC:
	mov	rdx,[r8+0E8h]
	mov	r9d,0FFFFFFFFh
	mov	qword ptr [rsp+40h],+0h
	mov	[rsp+58h],r9
	mov	[rsp+48h],r9
	lea	rcx,[rsp+60h]
	lea	r9,[rsp+40h]
	mov	[rsp+50h],rdx
	lea	rdx,[rsp+7Ch]
	mov	r10,[rax]
	mov	[rsp+20h],r8
	lea	r8,[rsp+50h]
	mov	[rsp+30h],rdx
	lea	rdx,[rsp+78h]
	mov	[rsp+28h],rdx
	mov	rdx,rax
	call	qword ptr [r10+18h]
	mov	eax,[rsp+7Ch]
	cmp	eax,0FFFF8000h
	jge	44E652h

l000000000044E62E:
	mov	eax,[rsp+78h]
	mov	ecx,0FFFF8000h
	mov	[rsi],cx
	or	eax,4h
	mov	[rsp+78h],eax

l000000000044E641:
	test	eax,eax
	jnz	44E670h

l000000000044E645:
	mov	rax,rbx
	add	rsp,+88h
	pop	rbx
	pop	rsi
	ret

l000000000044E652:
	cmp	eax,7FFFh
	jle	44E691h

l000000000044E659:
	mov	eax,[rsp+78h]
	mov	edx,7FFFh
	mov	[rsi],dx
	or	eax,4h
	test	eax,eax
	mov	[rsp+78h],eax
	jz	44E645h

l000000000044E670:
	mov	rdx,[rbx]
	mov	rcx,rbx
	add	rcx,[rdx-18h]
	or	eax,[rcx+20h]
	mov	edx,eax
	call	46E370h
	mov	rax,rbx
	add	rsp,+88h
	pop	rbx
	pop	rsi
	ret

l000000000044E691:
	mov	[rsi],ax
	mov	eax,[rsp+78h]
	jmp	44E641h

l000000000044E69A:
	call	470820h
	sub	rdx,1h
	mov	rcx,rax
	jnz	44E6C3h

l000000000044E6A8:
	call	475840h
	mov	rax,[rbx]
	add	rbx,[rax-18h]
	or	dword ptr [rbx+20h],1h
	test	byte ptr [rbx+1Ch],1h
	jz	44E6FAh

l000000000044E6BE:
	call	476060h

l000000000044E6C3:
	call	475840h
	mov	rax,[rbx]
	mov	rsi,rbx
	add	rsi,[rax-18h]
	or	dword ptr [rsi+20h],1h
	test	byte ptr [rsi+1Ch],1h
	jnz	44E6FFh

l000000000044E6DC:
	call	475A70h
	mov	eax,[rsp+78h]
	jmp	44E641h
000000000044E6EA                               48 89 C3 E8 7E 73           H...~s
000000000044E6F0 02 00 48 89 D9 E8 B6 2E FC FF                   ..H.......     

l000000000044E6FA:
	call	476060h

l000000000044E6FF:
	call	476060h
	mov	rbx,rax
	call	475A70h
	mov	rcx,rbx
	call	4115B0h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop

;; fn000000000044E720: 000000000044E720
;;   Called from:
;;     000000000044E71F (in fn000000000044E580)
fn000000000044E720 proc
	jmp	44BE90h
000000000044E725                90 90 90 90 90 90 90 90 90 90 90      ...........

;; fn000000000044E730: 000000000044E730
fn000000000044E730 proc
	jmp	44BFE0h
000000000044E735                90 90 90 90 90 90 90 90 90 90 90      ...........

;; fn000000000044E740: 000000000044E740
fn000000000044E740 proc
	jmp	44C130h
000000000044E745                90 90 90 90 90 90 90 90 90 90 90      ...........

;; fn000000000044E750: 000000000044E750
;;   Called from:
;;     0000000000471A6A (in fn0000000000471A40)
;;     0000000000471B02 (in fn0000000000471B00)
fn000000000044E750 proc
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,30h
	lea	rbx,[rsp+20h]
	mov	rsi,rcx
	mov	edi,edx
	mov	rdx,rcx
	mov	rcx,rbx
	call	44ED50h
	cmp	byte ptr [rsp+20h],0h
	jz	44E794h

l000000000044E773:
	mov	rax,[rsi]
	mov	rax,[rax-18h]
	mov	rax,[rsi+rax+0E8h]
	mov	rcx,[rax+28h]
	cmp	rcx,[rax+30h]
	jnc	44E800h

l000000000044E78C:
	mov	[rcx],dil
	add	qword ptr [rax+28h],1h

l000000000044E794:
	mov	r8,[rsp+28h]
	mov	rax,[r8]
	mov	rbx,r8
	add	rbx,[rax-18h]
	test	byte ptr [rbx+19h],20h
	jz	44E7C9h

l000000000044E7A9:
	call	470A80h
	test	al,al
	jnz	44E7C9h

l000000000044E7B2:
	mov	rcx,[rbx+0E8h]
	test	rcx,rcx
	jz	44E7C9h

l000000000044E7BE:
	mov	rax,[rcx]
	call	qword ptr [rax+30h]
	cmp	eax,0FFh
	jz	44E7D4h

l000000000044E7C9:
	mov	rax,rsi
	add	rsp,30h
	pop	rbx
	pop	rsi
	pop	rdi
	ret

l000000000044E7D4:
	mov	rcx,[rsp+28h]
	mov	rax,[rcx]
	add	rcx,[rax-18h]
	mov	edx,[rcx+20h]
	or	edx,1h
	call	46E370h
	mov	rax,rsi
	add	rsp,30h
	pop	rbx
	pop	rsi
	pop	rdi
	ret
000000000044E7F6                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l000000000044E800:
	mov	r8,[rax]
	movzx	edx,dil
	mov	rcx,rax
	call	qword ptr [r8+68h]
	cmp	eax,0FFh
	jnz	44E794h

l000000000044E813:
	mov	rax,[rsi]
	mov	rcx,rsi
	add	rcx,[rax-18h]
	mov	edx,[rcx+20h]
	or	edx,1h
	call	46E370h
	jmp	44E794h
000000000044E82D                                        48 83 EA              H..
000000000044E830 01 48 89 C1 75 3D E8 05 70 02 00 48 8B 06 48 03 .H..u=..p..H..H.
000000000044E840 70 E8 83 4E 20 01 F6 46 1C 01 74 22 E8 0F 78 02 p..N ..F..t"..x.
000000000044E850 00 48 89 C6 48 89 D9 E8 D4 05 00 00 48 89 F1 E8 .H..H.......H...
000000000044E860 4C 2D FC FF 48 89 C6 E8 04 72 02 00 EB E6 E8 ED L-..H....r......
000000000044E870 77 02 00 E8 C8 6F 02 00 48 8B 06 48 89 F7 48 03 w....o..H..H..H.
000000000044E880 78 E8 83 4F 20 01 F6 47 1C 01 75 0A E8 DF 71 02 x..O ..G..u...q.
000000000044E890 00 E9 FE FE FF FF E8 C5 77 02 00 48 89 C6 E8 CD ........w..H....
000000000044E8A0 71 02 00 EB AF 90 90 90 90 90 90 90 90 90 90 90 q...............

;; fn000000000044E8B0: 000000000044E8B0
;;   Called from:
;;     000000000044D774 (in fn000000000044D740)
;;     000000000044D8F4 (in fn000000000044D8C0)
;;     000000000044ED80 (in fn000000000044ED50)
;;     000000000044EDF0 (in fn000000000044EDC0)
;;     000000000046D147 (in fn000000000046D120)
;;     000000000046D153 (in fn000000000046D120)
;;     000000000046D15F (in fn000000000046D120)
;;     0000000000471A78 (in fn0000000000471A40)
;;     0000000000471B40 (in fn0000000000471B40)
fn000000000044E8B0 proc
	push	rbx
	sub	rsp,20h
	mov	rax,[rcx]
	mov	rbx,rcx
	mov	rax,[rax-18h]
	mov	rcx,[rcx+rax+0E8h]
	test	rcx,rcx
	jz	44E8D7h

l000000000044E8CC:
	mov	rax,[rcx]
	call	qword ptr [rax+30h]
	cmp	eax,0FFh
	jz	44E8E0h

l000000000044E8D7:
	mov	rax,rbx
	add	rsp,20h
	pop	rbx
	ret

l000000000044E8E0:
	mov	rax,[rbx]
	mov	rcx,rbx
	add	rcx,[rax-18h]
	mov	edx,[rcx+20h]
	or	edx,1h
	call	46E370h
	mov	rax,rbx
	add	rsp,20h
	pop	rbx
	ret
000000000044E8FE                                           48 83               H.
000000000044E900 EA 01 48 89 C1 75 1B E8 34 6F 02 00 48 8B 03 48 ..H..u..4o..H..H
000000000044E910 03 58 E8 83 4B 20 01 F6 43 1C 01 74 35 E8 3E 77 .X..K ..C..t5.>w
000000000044E920 02 00 E8 19 6F 02 00 48 8B 03 48 89 DA 48 03 50 ....o..H..H..H.P
000000000044E930 E8 83 4A 20 01 F6 42 1C 01 75 1C E8 30 71 02 00 ..J ..B..u..0q..
000000000044E940 EB 95 48 89 C3 E8 26 71 02 00 48 89 D9 E8 5E 2C ..H...&q..H...^,
000000000044E950 FC FF E8 09 77 02 00 E8 04 77 02 00 48 89 C3 E8 ....w....w..H...
000000000044E960 0C 71 02 00 48 89 D9 E8 44 2C FC FF 90 90 90 90 .q..H...D,......

;; fn000000000044E970: 000000000044E970
fn000000000044E970 proc
	push	rbx
	sub	rsp,40h
	mov	rax,[rcx]
	mov	r9,[rdx]
	mov	rbx,rcx
	mov	r10,[rdx+8h]
	add	rcx,[rax-18h]
	test	byte ptr [rcx+20h],5h
	jz	44E995h

l000000000044E98C:
	mov	rax,rbx
	add	rsp,40h
	pop	rbx
	ret

l000000000044E995:
	mov	rdx,[rcx+0E8h]
	lea	r8,[rsp+20h]
	mov	[rsp+20h],r9
	lea	rcx,[rsp+30h]
	mov	[rsp+28h],r10
	mov	r9d,10h
	mov	rax,[rdx]
	call	qword ptr [rax+28h]
	cmp	qword ptr [rsp+30h],0FFh
	jnz	44E98Ch

l000000000044E9C4:
	mov	rax,[rbx]
	mov	rcx,rbx
	add	rcx,[rax-18h]
	mov	edx,[rcx+20h]
	or	edx,4h
	call	46E370h
	jmp	44E98Ch
000000000044E9DB                                  48 83 EA 01 48            H...H
000000000044E9E0 89 C1 75 1B E8 57 6E 02 00 48 8B 03 48 03 58 E8 ..u..Wn..H..H.X.
000000000044E9F0 83 4B 20 01 F6 43 1C 01 74 38 E8 61 76 02 00 E8 .K ..C..t8.av...
000000000044EA00 3C 6E 02 00 48 8B 03 48 89 DA 48 03 50 E8 83 4A <n..H..H..H.P..J
000000000044EA10 20 01 F6 42 1C 01 75 1F E8 53 70 02 00 E9 6A FF  ..B..u..Sp...j.
000000000044EA20 FF FF 48 89 C3 E8 46 70 02 00 48 89 D9 E8 7E 2B ..H...Fp..H...~+
000000000044EA30 FC FF E8 29 76 02 00 E8 24 76 02 00 48 89 C3 E8 ...)v...$v..H...
000000000044EA40 2C 70 02 00 48 89 D9 E8 64 2B FC FF 90 90 90 90 ,p..H...d+......

;; fn000000000044EA50: 000000000044EA50
fn000000000044EA50 proc
	push	rbx
	sub	rsp,40h
	mov	rax,[rcx]
	mov	rbx,rcx
	add	rcx,[rax-18h]
	test	byte ptr [rcx+20h],5h
	jz	44EA70h

l000000000044EA65:
	mov	rax,rbx
	add	rsp,40h
	pop	rbx
	ret
000000000044EA6E                                           66 90               f.

l000000000044EA70:
	mov	rax,[rcx+0E8h]
	mov	r9d,r8d
	lea	rcx,[rsp+30h]
	mov	r8,rdx
	mov	r10,[rax]
	mov	rdx,rax
	mov	dword ptr [rsp+20h],10h
	call	qword ptr [r10+20h]
	cmp	qword ptr [rsp+30h],0FFh
	jnz	44EA65h

l000000000044EA9C:
	mov	rax,[rbx]
	mov	rcx,rbx
	add	rcx,[rax-18h]
	mov	edx,[rcx+20h]
	or	edx,4h
	call	46E370h
	jmp	44EA65h
000000000044EAB3          48 83 EA 01 48 89 C1 75 1B E8 7F 6D 02    H...H..u...m.
000000000044EAC0 00 48 8B 03 48 03 58 E8 83 4B 20 01 F6 43 1C 01 .H..H.X..K ..C..
000000000044EAD0 74 38 E8 89 75 02 00 E8 64 6D 02 00 48 8B 03 48 t8..u...dm..H..H
000000000044EAE0 89 DA 48 03 50 E8 83 4A 20 01 F6 42 1C 01 75 1F ..H.P..J ..B..u.
000000000044EAF0 E8 7B 6F 02 00 E9 6B FF FF FF 48 89 C3 E8 6E 6F .{o...k...H...no
000000000044EB00 02 00 48 89 D9 E8 A6 2A FC FF E8 51 75 02 00 E8 ..H....*...Qu...
000000000044EB10 4C 75 02 00 48 89 C3 E8 54 6F 02 00 48 89 D9 E8 Lu..H...To..H...
000000000044EB20 8C 2A FC FF 90 90 90 90 90 90 90 90 90 90 90 90 .*..............

;; fn000000000044EB30: 000000000044EB30
fn000000000044EB30 proc
	push	rsi
	push	rbx
	sub	rsp,48h
	mov	rax,[rdx]
	mov	rbx,rcx
	mov	qword ptr [rcx],-1h
	mov	dword ptr [rcx+8h],0h
	mov	rcx,rdx
	mov	rsi,rdx
	add	rcx,[rax-18h]
	test	byte ptr [rcx+20h],5h
	jz	44EB64h

l000000000044EB5A:
	mov	rax,rbx
	add	rsp,48h
	pop	rbx
	pop	rsi
	ret

l000000000044EB64:
	mov	rdx,[rcx+0E8h]
	mov	r9d,1h
	lea	rcx,[rsp+30h]
	xor	r8d,r8d
	mov	rax,[rdx]
	mov	dword ptr [rsp+20h],10h
	call	qword ptr [rax+20h]
	mov	rax,[rsp+30h]
	mov	[rbx],rax
	mov	eax,[rsp+38h]
	mov	[rbx+8h],eax
	mov	rax,rbx
	add	rsp,48h
	pop	rbx
	pop	rsi
	ret
000000000044EBA0 48 83 EA 01 48 89 C1 75 1B E8 92 6C 02 00 48 8B H...H..u...l..H.
000000000044EBB0 06 48 03 70 E8 83 4E 20 01 F6 46 1C 01 74 35 E8 .H.p..N ..F..t5.
000000000044EBC0 9C 74 02 00 E8 77 6C 02 00 48 8B 06 48 03 70 E8 .t...wl..H..H.p.
000000000044EBD0 83 4E 20 01 F6 46 1C 01 75 1F E8 91 6E 02 00 E9 .N ..F..u...n...
000000000044EBE0 76 FF FF FF 48 89 C3 E8 84 6E 02 00 48 89 D9 E8 v...H....n..H...
000000000044EBF0 BC 29 FC FF E8 67 74 02 00 E8 62 74 02 00 48 89 .)...gt...bt..H.
000000000044EC00 C3 E8 6A 6E 02 00 48 89 D9 E8 A2 29 FC FF 90 90 ..jn..H....)....

;; fn000000000044EC10: 000000000044EC10
;;   Called from:
;;     0000000000402B23 (in fn0000000000402A94)
;;     0000000000402B3E (in fn0000000000402A94)
;;     0000000000402B59 (in fn0000000000402A94)
;;     0000000000402B74 (in fn0000000000402A94)
;;     0000000000402B93 (in fn0000000000402A94)
;;     0000000000402BD1 (in fn0000000000402A94)
;;     0000000000402C09 (in fn0000000000402A94)
;;     000000000040306D (in fn0000000000402E6F)
;;     0000000000403088 (in fn0000000000402E6F)
fn000000000044EC10 proc
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,38h
	lea	rdi,[rsp+20h]
	mov	rsi,rcx
	mov	rbp,rdx
	mov	rdx,rcx
	mov	rbx,r8
	mov	rcx,rdi
	call	44ED50h
	cmp	byte ptr [rsp+20h],0h
	jz	44EC6Dh

l000000000044EC38:
	mov	rax,[rsi]
	mov	r8,rbx
	mov	rdx,rbp
	mov	rax,[rax-18h]
	mov	rcx,[rsi+rax+0E8h]
	mov	rax,[rcx]
	call	qword ptr [rax+60h]
	cmp	rbx,rax
	jz	44EC6Dh

l000000000044EC58:
	mov	rax,[rsi]
	mov	rcx,rsi
	add	rcx,[rax-18h]
	mov	edx,[rcx+20h]
	or	edx,1h
	call	46E370h

l000000000044EC6D:
	mov	r8,[rsp+28h]
	mov	rax,[r8]
	mov	rbx,r8
	add	rbx,[rax-18h]
	test	byte ptr [rbx+19h],20h
	jz	44ECA2h

l000000000044EC82:
	call	470A80h
	test	al,al
	jnz	44ECA2h

l000000000044EC8B:
	mov	rcx,[rbx+0E8h]
	test	rcx,rcx
	jz	44ECA2h

l000000000044EC97:
	mov	rax,[rcx]
	call	qword ptr [rax+30h]
	cmp	eax,0FFh
	jz	44ECB0h

l000000000044ECA2:
	mov	rax,rsi
	add	rsp,38h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
000000000044ECAE                                           66 90               f.

l000000000044ECB0:
	mov	rcx,[rsp+28h]
	mov	rax,[rcx]
	add	rcx,[rax-18h]
	mov	edx,[rcx+20h]
	or	edx,1h
	call	46E370h
	mov	rax,rsi
	add	rsp,38h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
000000000044ECD3          48 83 EA 01 48 89 C1 75 1B E8 5F 6B 02    H...H..u.._k.
000000000044ECE0 00 48 8B 06 48 03 70 E8 83 4E 20 01 F6 46 1C 01 .H..H.p..N ..F..
000000000044ECF0 74 40 E8 69 73 02 00 E8 44 6B 02 00 48 8B 06 48 t@.is...Dk..H..H
000000000044ED00 89 F2 48 03 50 E8 83 4A 20 01 F6 42 1C 01 75 2C ..H.P..J ..B..u,
000000000044ED10 E8 5B 6D 02 00 E9 53 FF FF FF 48 89 C3 E8 4E 6D .[m...S...H...Nm
000000000044ED20 02 00 48 89 F9 E8 06 01 00 00 48 89 D9 E8 7E 28 ..H.......H...~(
000000000044ED30 FC FF E8 29 73 02 00 48 89 C3 EB E6 E8 1F 73 02 ...)s..H......s.
000000000044ED40 00 48 89 C3 E8 27 6D 02 00 EB D7 90 90 90 90 90 .H...'m.........

;; fn000000000044ED50: 000000000044ED50
;;   Called from:
;;     000000000044E767 (in fn000000000044E750)
;;     000000000044EC2C (in fn000000000044EC10)
;;     000000000044EF5D (in fn000000000044EF40)
;;     000000000044F17C (in fn000000000044F160)
;;     000000000044F3C1 (in fn000000000044F3A0)
;;     000000000044F5EE (in fn000000000044F5D0)
;;     000000000044F81D (in fn000000000044F800)
;;     000000000044FA3D (in fn000000000044FA20)
;;     000000000044FC5D (in fn000000000044FC40)
;;     000000000044FE7D (in fn000000000044FE60)
;;     0000000000450328 (in fn0000000000450310)
;;     0000000000470094 (in fn0000000000470070)
fn000000000044ED50 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	mov	rsi,rcx
	mov	rbx,rdx
	mov	byte ptr [rcx],0h
	mov	[rsi+8h],rdx
	mov	rdx,[rdx]
	mov	rax,rbx
	add	rax,[rdx-18h]
	mov	rcx,[rax+0D8h]
	test	rcx,rcx
	jz	44ED88h

l000000000044ED79:
	mov	edx,[rax+20h]
	test	edx,edx
	jnz	44EDA0h

l000000000044ED80:
	call	44E8B0h
	mov	rdx,[rbx]

l000000000044ED88:
	mov	rax,rbx
	add	rax,[rdx-18h]
	mov	edx,[rax+20h]
	test	edx,edx
	jnz	44EDA0h

l000000000044ED96:
	mov	byte ptr [rsi],1h
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret

l000000000044EDA0:
	or	edx,4h
	mov	rcx,rax
	add	rsp,28h
	pop	rbx
	pop	rsi
	jmp	46E370h
000000000044EDB1    90 90 90 90 90 90 90 90 90 90 90 90 90 90 90  ...............

;; fn000000000044EDC0: 000000000044EDC0
fn000000000044EDC0 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	mov	rsi,rcx
	mov	rbx,rdx
	mov	byte ptr [rcx],0h
	mov	[rsi+8h],rdx
	mov	rdx,[rdx]
	mov	rax,rbx
	add	rax,[rdx-18h]
	mov	rcx,[rax+0D8h]
	test	rcx,rcx
	jz	44EDF8h

l000000000044EDE9:
	mov	edx,[rax+20h]
	test	edx,edx
	jnz	44EE10h

l000000000044EDF0:
	call	44E8B0h
	mov	rdx,[rbx]

l000000000044EDF8:
	mov	rax,rbx
	add	rax,[rdx-18h]
	mov	edx,[rax+20h]
	test	edx,edx
	jnz	44EE10h

l000000000044EE06:
	mov	byte ptr [rsi],1h
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret

l000000000044EE10:
	or	edx,4h
	mov	rcx,rax
	add	rsp,28h
	pop	rbx
	pop	rsi
	jmp	46E370h
000000000044EE21    90 90 90 90 90 90 90 90 90 90 90 90 90 90 90  ...............

;; fn000000000044EE30: 000000000044EE30
;;   Called from:
;;     000000000044F10C (in fn000000000044EF40)
;;     000000000044F343 (in fn000000000044F160)
;;     000000000044F573 (in fn000000000044F3A0)
;;     000000000044F7A8 (in fn000000000044F5D0)
;;     000000000044F9CC (in fn000000000044F800)
;;     000000000044FBEC (in fn000000000044FA20)
;;     000000000044FE0C (in fn000000000044FC40)
;;     000000000045002C (in fn000000000044FE60)
fn000000000044EE30 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	mov	rax,[rcx+8h]
	mov	rdx,[rax]
	add	rax,[rdx-18h]
	test	byte ptr [rax+19h],20h
	mov	rbx,rax
	jz	44EE6Dh

l000000000044EE4A:
	mov	rsi,rcx
	call	470A80h
	test	al,al
	jnz	44EE6Dh

l000000000044EE56:
	mov	rcx,[rbx+0E8h]
	test	rcx,rcx
	jz	44EE6Dh

l000000000044EE62:
	mov	rax,[rcx]
	call	qword ptr [rax+30h]
	cmp	eax,0FFh
	jz	44EE74h

l000000000044EE6D:
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret

l000000000044EE74:
	mov	rcx,[rsi+8h]
	mov	rax,[rcx]
	add	rcx,[rax-18h]
	mov	edx,[rcx+20h]
	or	edx,1h
	add	rsp,28h
	pop	rbx
	pop	rsi
	jmp	46E370h

;; fn000000000044EE90: 000000000044EE90
fn000000000044EE90 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	mov	rax,[rcx+8h]
	mov	rdx,[rax]
	add	rax,[rdx-18h]
	test	byte ptr [rax+19h],20h
	mov	rbx,rax
	jz	44EECDh

l000000000044EEAA:
	mov	rsi,rcx
	call	470A80h
	test	al,al
	jnz	44EECDh

l000000000044EEB6:
	mov	rcx,[rbx+0E8h]
	test	rcx,rcx
	jz	44EECDh

l000000000044EEC2:
	mov	rax,[rcx]
	call	qword ptr [rax+30h]
	cmp	eax,0FFh
	jz	44EED4h

l000000000044EECD:
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret

l000000000044EED4:
	mov	rcx,[rsi+8h]
	mov	rax,[rcx]
	add	rcx,[rax-18h]
	mov	edx,[rcx+20h]
	or	edx,1h
	add	rsp,28h
	pop	rbx
	pop	rsi
	jmp	46E370h

;; fn000000000044EEF0: 000000000044EEF0
fn000000000044EEF0 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	mov	rax,[rcx]
	mov	rbx,rcx
	mov	rsi,r8
	mov	rax,[rax-18h]
	mov	rcx,[rcx+rax+0E8h]
	mov	rax,[rcx]
	call	qword ptr [rax+60h]
	cmp	rsi,rax
	jz	44EF31h

l000000000044EF16:
	mov	rax,[rbx]
	add	rbx,[rax-18h]
	mov	edx,[rbx+20h]
	mov	rcx,rbx
	or	edx,1h
	add	rsp,28h
	pop	rbx
	pop	rsi
	jmp	46E370h

l000000000044EF31:
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret
000000000044EF38                         90 90 90 90 90 90 90 90         ........

;; fn000000000044EF40: 000000000044EF40
;;   Called from:
;;     0000000000450300 (in fn0000000000450300)
fn000000000044EF40 proc
	push	r13
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,68h
	lea	rbp,[rsp+50h]
	mov	rsi,rcx
	mov	r12,rdx
	mov	rdx,rcx
	mov	rcx,rbp
	call	44ED50h
	cmp	byte ptr [rsp+50h],0h
	jz	44F02Eh

l000000000044EF6D:
	mov	rax,[rsi]
	mov	rbx,rsi
	add	rbx,[rax-18h]
	mov	rdi,[rbx+0F8h]
	test	rdi,rdi
	jz	44F0D8h

l000000000044EF87:
	cmp	byte ptr [rbx+0E1h],0h
	jnz	44EFD0h

l000000000044EF90:
	mov	r13,[rbx+0F0h]
	test	r13,r13
	jz	44F101h

l000000000044EFA0:
	cmp	byte ptr [r13+38h],0h
	jz	44F0A0h

l000000000044EFAB:
	movsx	edx,byte ptr [r13+59h]
	mov	eax,edx

l000000000044EFB2:
	mov	[rbx+0E0h],al
	mov	rax,[rsi]
	mov	r9,rsi
	mov	byte ptr [rbx+0E1h],1h
	add	r9,[rax-18h]
	jmp	44EFDAh
000000000044EFCB                                  0F 1F 44 00 00            ..D..

l000000000044EFD0:
	movsx	edx,byte ptr [rbx+0E0h]
	mov	r9,rbx

l000000000044EFDA:
	mov	r8,[r9+0E8h]
	mov	eax,0h
	lea	rcx,[rsp+40h]
	test	r8,r8
	mov	[rsp+30h],r8
	lea	r8,[rsp+30h]
	setz	al
	mov	[rsp+38h],rax
	mov	rax,[rdi]
	mov	[rsp+20h],edx
	mov	[rsp+28h],r12
	mov	rdx,rdi
	call	qword ptr [rax+48h]
	cmp	byte ptr [rsp+48h],0h
	jz	44F02Eh

l000000000044F019:
	mov	rax,[rsi]
	mov	rcx,rsi
	add	rcx,[rax-18h]
	mov	edx,[rcx+20h]
	or	edx,1h
	call	46E370h

l000000000044F02E:
	mov	rax,[rsp+58h]
	mov	rdx,[rax]
	add	rax,[rdx-18h]
	test	byte ptr [rax+19h],20h
	mov	rbx,rax
	jz	44F063h

l000000000044F043:
	call	470A80h
	test	al,al
	jnz	44F063h

l000000000044F04C:
	mov	rcx,[rbx+0E8h]
	test	rcx,rcx
	jz	44F063h

l000000000044F058:
	mov	rax,[rcx]
	call	qword ptr [rax+30h]
	cmp	eax,0FFh
	jz	44F073h

l000000000044F063:
	mov	rax,rsi
	add	rsp,68h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	ret

l000000000044F073:
	mov	rcx,[rsp+58h]
	mov	rax,[rcx]
	add	rcx,[rax-18h]
	mov	edx,[rcx+20h]
	or	edx,1h
	call	46E370h
	mov	rax,rsi
	add	rsp,68h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	ret
000000000044F09A                               66 0F 1F 44 00 00           f..D..

l000000000044F0A0:
	mov	rcx,r13
	call	42B320h
	mov	rax,[r13+0h]
	lea	rcx,[000000000042B5F0]                                 ; [rip+FFFDC53D]
	mov	edx,20h
	mov	r8,[rax+30h]
	mov	eax,20h
	cmp	r8,rcx
	jz	44EFB2h

l000000000044F0CA:
	mov	rcx,r13
	call	r8
	movsx	edx,al
	jmp	44EFB2h

l000000000044F0D8:
	call	470820h
	sub	rdx,1h
	mov	rcx,rax
	jnz	44F128h

l000000000044F0E6:
	call	475840h
	mov	rax,[rsi]
	add	rsi,[rax-18h]
	or	dword ptr [rsi+20h],1h
	test	byte ptr [rsi+1Ch],1h
	jz	44F123h

l000000000044F0FC:
	call	476060h

l000000000044F101:
	call	470820h
	mov	rbx,rax

l000000000044F109:
	mov	rcx,rbp
	call	44EE30h
	mov	rcx,rbx
	call	4115B0h
	mov	rbx,rax
	call	475A70h
	jmp	44F109h

l000000000044F123:
	call	476060h

l000000000044F128:
	call	475840h
	mov	rax,[rsi]
	mov	rdi,rsi
	add	rdi,[rax-18h]
	or	dword ptr [rdi+20h],1h
	test	byte ptr [rdi+1Ch],1h
	jnz	44F14Bh

l000000000044F141:
	call	475A70h
	jmp	44F02Eh

l000000000044F14B:
	call	476060h
	mov	rbx,rax
	call	475A70h
	jmp	44F109h
000000000044F15A                               90 90 90 90 90 90           ......

;; fn000000000044F160: 000000000044F160
;;   Called from:
;;     0000000000450463 (in fn0000000000450460)
fn000000000044F160 proc
	push	r13
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,68h
	lea	r12,[rsp+50h]
	mov	rsi,rcx
	mov	edi,edx
	mov	rdx,rcx
	mov	rcx,r12
	call	44ED50h
	cmp	byte ptr [rsp+50h],0h
	jz	44F254h

l000000000044F18C:
	mov	rax,[rsi]
	mov	rbx,rsi
	add	rbx,[rax-18h]
	mov	rbp,[rbx+0F8h]
	test	rbp,rbp
	jz	44F30Fh

l000000000044F1A6:
	cmp	byte ptr [rbx+0E1h],0h
	jnz	44F1F0h

l000000000044F1AF:
	mov	r13,[rbx+0F0h]
	test	r13,r13
	jz	44F338h

l000000000044F1BF:
	cmp	byte ptr [r13+38h],0h
	jz	44F2D0h

l000000000044F1CA:
	movsx	r8d,byte ptr [r13+59h]
	mov	eax,r8d

l000000000044F1D2:
	mov	[rbx+0E0h],al
	mov	rax,[rsi]
	mov	r9,rsi
	mov	byte ptr [rbx+0E1h],1h
	add	r9,[rax-18h]
	jmp	44F1FBh
000000000044F1EB                                  0F 1F 44 00 00            ..D..

l000000000044F1F0:
	movsx	r8d,byte ptr [rbx+0E0h]
	mov	r9,rbx

l000000000044F1FB:
	mov	rdx,[r9+0E8h]
	mov	eax,0h
	movzx	edi,dil
	lea	rcx,[rsp+40h]
	test	rdx,rdx
	mov	[rsp+30h],rdx
	mov	rdx,rbp
	setz	al
	mov	[rsp+38h],rax
	mov	rax,[rbp+0h]
	mov	[rsp+20h],r8d
	mov	[rsp+28h],edi
	lea	r8,[rsp+30h]
	call	qword ptr [rax+10h]
	cmp	byte ptr [rsp+48h],0h
	jz	44F254h

l000000000044F23F:
	mov	rax,[rsi]
	mov	rcx,rsi
	add	rcx,[rax-18h]
	mov	edx,[rcx+20h]
	or	edx,1h
	call	46E370h

l000000000044F254:
	mov	rax,[rsp+58h]
	mov	rdx,[rax]
	add	rax,[rdx-18h]
	test	byte ptr [rax+19h],20h
	mov	rbx,rax
	jz	44F289h

l000000000044F269:
	call	470A80h
	test	al,al
	jnz	44F289h

l000000000044F272:
	mov	rcx,[rbx+0E8h]
	test	rcx,rcx
	jz	44F289h

l000000000044F27E:
	mov	rax,[rcx]
	call	qword ptr [rax+30h]
	cmp	eax,0FFh
	jz	44F2A0h

l000000000044F289:
	mov	rax,rsi
	add	rsp,68h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	ret
000000000044F299                            0F 1F 80 00 00 00 00          .......

l000000000044F2A0:
	mov	rcx,[rsp+58h]
	mov	rax,[rcx]
	add	rcx,[rax-18h]
	mov	edx,[rcx+20h]
	or	edx,1h
	call	46E370h
	mov	rax,rsi
	add	rsp,68h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	ret
000000000044F2C7                      66 0F 1F 84 00 00 00 00 00        f........

l000000000044F2D0:
	mov	rcx,r13
	call	42B320h
	mov	rax,[r13+0h]
	lea	rdx,[000000000042B5F0]                                 ; [rip+FFFDC30D]
	mov	r8d,20h
	mov	r9,[rax+30h]
	mov	eax,20h
	cmp	r9,rdx
	jz	44F1D2h

l000000000044F2FB:
	mov	edx,20h
	mov	rcx,r13
	call	r9
	movsx	r8d,al
	jmp	44F1D2h

l000000000044F30F:
	call	470820h
	sub	rdx,1h
	mov	rcx,rax
	jnz	44F35Fh

l000000000044F31D:
	call	475840h
	mov	rax,[rsi]
	add	rsi,[rax-18h]
	or	dword ptr [rsi+20h],1h
	test	byte ptr [rsi+1Ch],1h
	jz	44F35Ah

l000000000044F333:
	call	476060h

l000000000044F338:
	call	470820h
	mov	rbx,rax

l000000000044F340:
	mov	rcx,r12
	call	44EE30h
	mov	rcx,rbx
	call	4115B0h
	mov	rbx,rax
	call	475A70h
	jmp	44F340h

l000000000044F35A:
	call	476060h

l000000000044F35F:
	call	475840h
	mov	rax,[rsi]
	mov	rdi,rsi
	add	rdi,[rax-18h]
	or	dword ptr [rdi+20h],1h
	test	byte ptr [rdi+1Ch],1h
	jnz	44F382h

l000000000044F378:
	call	475A70h
	jmp	44F254h

l000000000044F382:
	call	476060h
	mov	rbx,rax
	call	475A70h
	jmp	44F340h
000000000044F391    90 90 90 90 90 90 90 90 90 90 90 90 90 90 90  ...............

;; fn000000000044F3A0: 000000000044F3A0
;;   Called from:
;;     0000000000450470 (in fn0000000000450470)
;;     00000000004504A4 (in fn00000000004504A0)
fn000000000044F3A0 proc
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,70h
	movaps	[rsp+60h],xmm6
	lea	rbp,[rsp+50h]
	mov	rdx,rcx
	mov	rsi,rcx
	movapd	xmm6,xmm1
	mov	rcx,rbp
	call	44ED50h
	cmp	byte ptr [rsp+50h],0h
	jz	44F493h

l000000000044F3D1:
	mov	rax,[rsi]
	mov	rbx,rsi
	add	rbx,[rax-18h]
	mov	rdi,[rbx+0F8h]
	test	rdi,rdi
	jz	44F53Fh

l000000000044F3EB:
	cmp	byte ptr [rbx+0E1h],0h
	jnz	44F432h

l000000000044F3F4:
	mov	r12,[rbx+0F0h]
	test	r12,r12
	jz	44F568h

l000000000044F404:
	cmp	byte ptr [r12+38h],0h
	jz	44F500h

l000000000044F410:
	movsx	r8d,byte ptr [r12+59h]
	mov	eax,r8d

l000000000044F419:
	mov	[rbx+0E0h],al
	mov	rax,[rsi]
	mov	r9,rsi
	mov	byte ptr [rbx+0E1h],1h
	add	r9,[rax-18h]
	jmp	44F43Dh

l000000000044F432:
	movsx	r8d,byte ptr [rbx+0E0h]
	mov	r9,rbx

l000000000044F43D:
	mov	rdx,[r9+0E8h]
	mov	eax,0h
	lea	rcx,[rsp+40h]
	test	rdx,rdx
	mov	[rsp+30h],rdx
	mov	rdx,rdi
	setz	al
	mov	[rsp+38h],rax
	mov	rax,[rdi]
	movsd	double ptr [rsp+28h],xmm6
	mov	[rsp+20h],r8d
	lea	r8,[rsp+30h]
	call	qword ptr [rax+38h]
	cmp	byte ptr [rsp+48h],0h
	jz	44F493h

l000000000044F47E:
	mov	rax,[rsi]
	mov	rcx,rsi
	add	rcx,[rax-18h]
	mov	edx,[rcx+20h]
	or	edx,1h
	call	46E370h

l000000000044F493:
	mov	rax,[rsp+58h]
	mov	rdx,[rax]
	add	rax,[rdx-18h]
	test	byte ptr [rax+19h],20h
	mov	rbx,rax
	jz	44F4C8h

l000000000044F4A8:
	call	470A80h
	test	al,al
	jnz	44F4C8h

l000000000044F4B1:
	mov	rcx,[rbx+0E8h]
	test	rcx,rcx
	jz	44F4C8h

l000000000044F4BD:
	mov	rax,[rcx]
	call	qword ptr [rax+30h]
	cmp	eax,0FFh
	jz	44F4E0h

l000000000044F4C8:
	movaps	xmm6,[rsp+60h]
	mov	rax,rsi
	add	rsp,70h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
000000000044F4DB                                  0F 1F 44 00 00            ..D..

l000000000044F4E0:
	mov	rcx,[rsp+58h]
	mov	rax,[rcx]
	add	rcx,[rax-18h]
	mov	edx,[rcx+20h]
	or	edx,1h
	call	46E370h
	jmp	44F4C8h
000000000044F4F9                            0F 1F 80 00 00 00 00          .......

l000000000044F500:
	mov	rcx,r12
	call	42B320h
	mov	rax,[r12]
	lea	rdx,[000000000042B5F0]                                 ; [rip+FFFDC0DD]
	mov	r8d,20h
	mov	r9,[rax+30h]
	mov	eax,20h
	cmp	r9,rdx
	jz	44F419h

l000000000044F52B:
	mov	edx,20h
	mov	rcx,r12
	call	r9
	movsx	r8d,al
	jmp	44F419h

l000000000044F53F:
	call	470820h
	sub	rdx,1h
	mov	rcx,rax
	jnz	44F58Fh

l000000000044F54D:
	call	475840h
	mov	rax,[rsi]
	add	rsi,[rax-18h]
	or	dword ptr [rsi+20h],1h
	test	byte ptr [rsi+1Ch],1h
	jz	44F58Ah

l000000000044F563:
	call	476060h

l000000000044F568:
	call	470820h
	mov	rbx,rax

l000000000044F570:
	mov	rcx,rbp
	call	44EE30h
	mov	rcx,rbx
	call	4115B0h
	mov	rbx,rax
	call	475A70h
	jmp	44F570h

l000000000044F58A:
	call	476060h

l000000000044F58F:
	call	475840h
	mov	rax,[rsi]
	mov	rdi,rsi
	add	rdi,[rax-18h]
	or	dword ptr [rdi+20h],1h
	test	byte ptr [rdi+1Ch],1h
	jnz	44F5B2h

l000000000044F5A8:
	call	475A70h
	jmp	44F493h

l000000000044F5B2:
	call	476060h
	mov	rbx,rax
	call	475A70h
	jmp	44F570h
000000000044F5C1    90 90 90 90 90 90 90 90 90 90 90 90 90 90 90  ...............

;; fn000000000044F5D0: 000000000044F5D0
;;   Called from:
;;     000000000045048F (in fn0000000000450480)
fn000000000044F5D0 proc
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	add	rsp,80h
	fld	tword ptr [rdx]
	lea	rbp,[rsp+70h]
	mov	rdx,rcx
	mov	rsi,rcx
	mov	rcx,rbp
	fstp	tword ptr [rsp+30h]
	call	44ED50h
	cmp	byte ptr [rsp+70h],0h
	jz	44F6CDh

l000000000044F5FE:
	mov	rax,[rsi]
	mov	rbx,rsi
	add	rbx,[rax-18h]
	mov	rdi,[rbx+0F8h]
	test	rdi,rdi
	jz	44F774h

l000000000044F618:
	cmp	byte ptr [rbx+0E1h],0h
	jnz	44F660h

l000000000044F621:
	mov	r12,[rbx+0F0h]
	test	r12,r12
	jz	44F79Dh

l000000000044F631:
	cmp	byte ptr [r12+38h],0h
	jz	44F735h

l000000000044F63D:
	movsx	r8d,byte ptr [r12+59h]
	mov	eax,r8d

l000000000044F646:
	mov	[rbx+0E0h],al
	mov	rax,[rsi]
	mov	r9,rsi
	mov	byte ptr [rbx+0E1h],1h
	add	r9,[rax-18h]
	jmp	44F66Bh
000000000044F65F                                              90                .

l000000000044F660:
	movsx	r8d,byte ptr [rbx+0E0h]
	mov	r9,rbx

l000000000044F66B:
	fld	tword ptr [rsp+30h]
	mov	rdx,[r9+0E8h]
	mov	eax,0h
	lea	rcx,[rsp+60h]
	test	rdx,rdx
	mov	[rsp+50h],rdx
	lea	rdx,[rsp+40h]
	setz	al
	mov	[rsp+58h],rax
	mov	rax,[rdi]
	mov	[rsp+28h],rdx
	mov	[rsp+20h],r8d
	mov	rdx,rdi
	lea	r8,[rsp+50h]
	fstp	tword ptr [rsp+40h]
	call	qword ptr [rax+40h]
	cmp	byte ptr [rsp+68h],0h
	jz	44F6CDh

l000000000044F6B8:
	mov	rax,[rsi]
	mov	rcx,rsi
	add	rcx,[rax-18h]
	mov	edx,[rcx+20h]
	or	edx,1h
	call	46E370h

l000000000044F6CD:
	mov	rax,[rsp+78h]
	mov	rdx,[rax]
	add	rax,[rdx-18h]
	test	byte ptr [rax+19h],20h
	mov	rbx,rax
	jz	44F702h

l000000000044F6E2:
	call	470A80h
	test	al,al
	jnz	44F702h

l000000000044F6EB:
	mov	rcx,[rbx+0E8h]
	test	rcx,rcx
	jz	44F702h

l000000000044F6F7:
	mov	rax,[rcx]
	call	qword ptr [rax+30h]
	cmp	eax,0FFh
	jz	44F710h

l000000000044F702:
	mov	rax,rsi
	sub	rsp,80h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret

l000000000044F710:
	mov	rcx,[rsp+78h]
	mov	rax,[rcx]
	add	rcx,[rax-18h]
	mov	edx,[rcx+20h]
	or	edx,1h
	call	46E370h
	mov	rax,rsi
	sub	rsp,80h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret

l000000000044F735:
	mov	rcx,r12
	call	42B320h
	mov	rax,[r12]
	lea	rdx,[000000000042B5F0]                                 ; [rip+FFFDBEA8]
	mov	r8d,20h
	mov	r9,[rax+30h]
	mov	eax,20h
	cmp	r9,rdx
	jz	44F646h

l000000000044F760:
	mov	edx,20h
	mov	rcx,r12
	call	r9
	movsx	r8d,al
	jmp	44F646h

l000000000044F774:
	call	470820h
	sub	rdx,1h
	mov	rcx,rax
	jnz	44F7C4h

l000000000044F782:
	call	475840h
	mov	rax,[rsi]
	add	rsi,[rax-18h]
	or	dword ptr [rsi+20h],1h
	test	byte ptr [rsi+1Ch],1h
	jz	44F7BFh

l000000000044F798:
	call	476060h

l000000000044F79D:
	call	470820h
	mov	rbx,rax

l000000000044F7A5:
	mov	rcx,rbp
	call	44EE30h
	mov	rcx,rbx
	call	4115B0h
	mov	rbx,rax
	call	475A70h
	jmp	44F7A5h

l000000000044F7BF:
	call	476060h

l000000000044F7C4:
	call	475840h
	mov	rax,[rsi]
	mov	rdi,rsi
	add	rdi,[rax-18h]
	or	dword ptr [rdi+20h],1h
	test	byte ptr [rdi+1Ch],1h
	jnz	44F7E7h

l000000000044F7DD:
	call	475A70h
	jmp	44F6CDh

l000000000044F7E7:
	call	476060h
	mov	rbx,rax
	call	475A70h
	jmp	44F7A5h
000000000044F7F6                   90 90 90 90 90 90 90 90 90 90       ..........

;; fn000000000044F800: 000000000044F800
;;   Called from:
;;     00000000004504B0 (in fn00000000004504B0)
;;     00000000004504D0 (in fn00000000004504D0)
;;     000000000045050B (in fn00000000004504F0)
;;     0000000000450513 (in fn00000000004504F0)
fn000000000044F800 proc
	push	r13
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,68h
	lea	rbp,[rsp+50h]
	mov	rsi,rcx
	mov	r12d,edx
	mov	rdx,rcx
	mov	rcx,rbp
	call	44ED50h
	cmp	byte ptr [rsp+50h],0h
	jz	44F8EEh

l000000000044F82D:
	mov	rax,[rsi]
	mov	rbx,rsi
	add	rbx,[rax-18h]
	mov	rdi,[rbx+0F8h]
	test	rdi,rdi
	jz	44F998h

l000000000044F847:
	cmp	byte ptr [rbx+0E1h],0h
	jnz	44F890h

l000000000044F850:
	mov	r13,[rbx+0F0h]
	test	r13,r13
	jz	44F9C1h

l000000000044F860:
	cmp	byte ptr [r13+38h],0h
	jz	44F960h

l000000000044F86B:
	movsx	edx,byte ptr [r13+59h]
	mov	eax,edx

l000000000044F872:
	mov	[rbx+0E0h],al
	mov	rax,[rsi]
	mov	r9,rsi
	mov	byte ptr [rbx+0E1h],1h
	add	r9,[rax-18h]
	jmp	44F89Ah
000000000044F88B                                  0F 1F 44 00 00            ..D..

l000000000044F890:
	movsx	edx,byte ptr [rbx+0E0h]
	mov	r9,rbx

l000000000044F89A:
	mov	r8,[r9+0E8h]
	mov	eax,0h
	lea	rcx,[rsp+40h]
	test	r8,r8
	mov	[rsp+30h],r8
	lea	r8,[rsp+30h]
	setz	al
	mov	[rsp+38h],rax
	mov	rax,[rdi]
	mov	[rsp+20h],edx
	mov	[rsp+28h],r12d
	mov	rdx,rdi
	call	qword ptr [rax+18h]
	cmp	byte ptr [rsp+48h],0h
	jz	44F8EEh

l000000000044F8D9:
	mov	rax,[rsi]
	mov	rcx,rsi
	add	rcx,[rax-18h]
	mov	edx,[rcx+20h]
	or	edx,1h
	call	46E370h

l000000000044F8EE:
	mov	rax,[rsp+58h]
	mov	rdx,[rax]
	add	rax,[rdx-18h]
	test	byte ptr [rax+19h],20h
	mov	rbx,rax
	jz	44F923h

l000000000044F903:
	call	470A80h
	test	al,al
	jnz	44F923h

l000000000044F90C:
	mov	rcx,[rbx+0E8h]
	test	rcx,rcx
	jz	44F923h

l000000000044F918:
	mov	rax,[rcx]
	call	qword ptr [rax+30h]
	cmp	eax,0FFh
	jz	44F933h

l000000000044F923:
	mov	rax,rsi
	add	rsp,68h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	ret

l000000000044F933:
	mov	rcx,[rsp+58h]
	mov	rax,[rcx]
	add	rcx,[rax-18h]
	mov	edx,[rcx+20h]
	or	edx,1h
	call	46E370h
	mov	rax,rsi
	add	rsp,68h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	ret
000000000044F95A                               66 0F 1F 44 00 00           f..D..

l000000000044F960:
	mov	rcx,r13
	call	42B320h
	mov	rax,[r13+0h]
	lea	rcx,[000000000042B5F0]                                 ; [rip+FFFDBC7D]
	mov	edx,20h
	mov	r8,[rax+30h]
	mov	eax,20h
	cmp	r8,rcx
	jz	44F872h

l000000000044F98A:
	mov	rcx,r13
	call	r8
	movsx	edx,al
	jmp	44F872h

l000000000044F998:
	call	470820h
	sub	rdx,1h
	mov	rcx,rax
	jnz	44F9E8h

l000000000044F9A6:
	call	475840h
	mov	rax,[rsi]
	add	rsi,[rax-18h]
	or	dword ptr [rsi+20h],1h
	test	byte ptr [rsi+1Ch],1h
	jz	44F9E3h

l000000000044F9BC:
	call	476060h

l000000000044F9C1:
	call	470820h
	mov	rbx,rax

l000000000044F9C9:
	mov	rcx,rbp
	call	44EE30h
	mov	rcx,rbx
	call	4115B0h
	mov	rbx,rax
	call	475A70h
	jmp	44F9C9h

l000000000044F9E3:
	call	476060h

l000000000044F9E8:
	call	475840h
	mov	rax,[rsi]
	mov	rdi,rsi
	add	rdi,[rax-18h]
	or	dword ptr [rdi+20h],1h
	test	byte ptr [rdi+1Ch],1h
	jnz	44FA0Bh

l000000000044FA01:
	call	475A70h
	jmp	44F8EEh

l000000000044FA0B:
	call	476060h
	mov	rbx,rax
	call	475A70h
	jmp	44F9C9h
000000000044FA1A                               90 90 90 90 90 90           ......

;; fn000000000044FA20: 000000000044FA20
;;   Called from:
;;     00000000004504C0 (in fn00000000004504C0)
;;     00000000004504E0 (in fn00000000004504E0)
;;     0000000000450523 (in fn0000000000450520)
fn000000000044FA20 proc
	push	r13
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,68h
	lea	rbp,[rsp+50h]
	mov	rsi,rcx
	mov	r12d,edx
	mov	rdx,rcx
	mov	rcx,rbp
	call	44ED50h
	cmp	byte ptr [rsp+50h],0h
	jz	44FB0Eh

l000000000044FA4D:
	mov	rax,[rsi]
	mov	rbx,rsi
	add	rbx,[rax-18h]
	mov	rdi,[rbx+0F8h]
	test	rdi,rdi
	jz	44FBB8h

l000000000044FA67:
	cmp	byte ptr [rbx+0E1h],0h
	jnz	44FAB0h

l000000000044FA70:
	mov	r13,[rbx+0F0h]
	test	r13,r13
	jz	44FBE1h

l000000000044FA80:
	cmp	byte ptr [r13+38h],0h
	jz	44FB80h

l000000000044FA8B:
	movsx	edx,byte ptr [r13+59h]
	mov	eax,edx

l000000000044FA92:
	mov	[rbx+0E0h],al
	mov	rax,[rsi]
	mov	r9,rsi
	mov	byte ptr [rbx+0E1h],1h
	add	r9,[rax-18h]
	jmp	44FABAh
000000000044FAAB                                  0F 1F 44 00 00            ..D..

l000000000044FAB0:
	movsx	edx,byte ptr [rbx+0E0h]
	mov	r9,rbx

l000000000044FABA:
	mov	r8,[r9+0E8h]
	mov	eax,0h
	lea	rcx,[rsp+40h]
	test	r8,r8
	mov	[rsp+30h],r8
	lea	r8,[rsp+30h]
	setz	al
	mov	[rsp+38h],rax
	mov	rax,[rdi]
	mov	[rsp+20h],edx
	mov	[rsp+28h],r12d
	mov	rdx,rdi
	call	qword ptr [rax+20h]
	cmp	byte ptr [rsp+48h],0h
	jz	44FB0Eh

l000000000044FAF9:
	mov	rax,[rsi]
	mov	rcx,rsi
	add	rcx,[rax-18h]
	mov	edx,[rcx+20h]
	or	edx,1h
	call	46E370h

l000000000044FB0E:
	mov	rax,[rsp+58h]
	mov	rdx,[rax]
	add	rax,[rdx-18h]
	test	byte ptr [rax+19h],20h
	mov	rbx,rax
	jz	44FB43h

l000000000044FB23:
	call	470A80h
	test	al,al
	jnz	44FB43h

l000000000044FB2C:
	mov	rcx,[rbx+0E8h]
	test	rcx,rcx
	jz	44FB43h

l000000000044FB38:
	mov	rax,[rcx]
	call	qword ptr [rax+30h]
	cmp	eax,0FFh
	jz	44FB53h

l000000000044FB43:
	mov	rax,rsi
	add	rsp,68h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	ret

l000000000044FB53:
	mov	rcx,[rsp+58h]
	mov	rax,[rcx]
	add	rcx,[rax-18h]
	mov	edx,[rcx+20h]
	or	edx,1h
	call	46E370h
	mov	rax,rsi
	add	rsp,68h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	ret
000000000044FB7A                               66 0F 1F 44 00 00           f..D..

l000000000044FB80:
	mov	rcx,r13
	call	42B320h
	mov	rax,[r13+0h]
	lea	rcx,[000000000042B5F0]                                 ; [rip+FFFDBA5D]
	mov	edx,20h
	mov	r8,[rax+30h]
	mov	eax,20h
	cmp	r8,rcx
	jz	44FA92h

l000000000044FBAA:
	mov	rcx,r13
	call	r8
	movsx	edx,al
	jmp	44FA92h

l000000000044FBB8:
	call	470820h
	sub	rdx,1h
	mov	rcx,rax
	jnz	44FC08h

l000000000044FBC6:
	call	475840h
	mov	rax,[rsi]
	add	rsi,[rax-18h]
	or	dword ptr [rsi+20h],1h
	test	byte ptr [rsi+1Ch],1h
	jz	44FC03h

l000000000044FBDC:
	call	476060h

l000000000044FBE1:
	call	470820h
	mov	rbx,rax

l000000000044FBE9:
	mov	rcx,rbp
	call	44EE30h
	mov	rcx,rbx
	call	4115B0h
	mov	rbx,rax
	call	475A70h
	jmp	44FBE9h

l000000000044FC03:
	call	476060h

l000000000044FC08:
	call	475840h
	mov	rax,[rsi]
	mov	rdi,rsi
	add	rdi,[rax-18h]
	or	dword ptr [rdi+20h],1h
	test	byte ptr [rdi+1Ch],1h
	jnz	44FC2Bh

l000000000044FC21:
	call	475A70h
	jmp	44FB0Eh

l000000000044FC2B:
	call	476060h
	mov	rbx,rax
	call	475A70h
	jmp	44FBE9h
000000000044FC3A                               90 90 90 90 90 90           ......

;; fn000000000044FC40: 000000000044FC40
;;   Called from:
;;     0000000000450530 (in fn0000000000450530)
fn000000000044FC40 proc
	push	r13
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,68h
	lea	rbp,[rsp+50h]
	mov	rsi,rcx
	mov	r12,rdx
	mov	rdx,rcx
	mov	rcx,rbp
	call	44ED50h
	cmp	byte ptr [rsp+50h],0h
	jz	44FD2Eh

l000000000044FC6D:
	mov	rax,[rsi]
	mov	rbx,rsi
	add	rbx,[rax-18h]
	mov	rdi,[rbx+0F8h]
	test	rdi,rdi
	jz	44FDD8h

l000000000044FC87:
	cmp	byte ptr [rbx+0E1h],0h
	jnz	44FCD0h

l000000000044FC90:
	mov	r13,[rbx+0F0h]
	test	r13,r13
	jz	44FE01h

l000000000044FCA0:
	cmp	byte ptr [r13+38h],0h
	jz	44FDA0h

l000000000044FCAB:
	movsx	edx,byte ptr [r13+59h]
	mov	eax,edx

l000000000044FCB2:
	mov	[rbx+0E0h],al
	mov	rax,[rsi]
	mov	r9,rsi
	mov	byte ptr [rbx+0E1h],1h
	add	r9,[rax-18h]
	jmp	44FCDAh
000000000044FCCB                                  0F 1F 44 00 00            ..D..

l000000000044FCD0:
	movsx	edx,byte ptr [rbx+0E0h]
	mov	r9,rbx

l000000000044FCDA:
	mov	r8,[r9+0E8h]
	mov	eax,0h
	lea	rcx,[rsp+40h]
	test	r8,r8
	mov	[rsp+30h],r8
	lea	r8,[rsp+30h]
	setz	al
	mov	[rsp+38h],rax
	mov	rax,[rdi]
	mov	[rsp+20h],edx
	mov	[rsp+28h],r12
	mov	rdx,rdi
	call	qword ptr [rax+28h]
	cmp	byte ptr [rsp+48h],0h
	jz	44FD2Eh

l000000000044FD19:
	mov	rax,[rsi]
	mov	rcx,rsi
	add	rcx,[rax-18h]
	mov	edx,[rcx+20h]
	or	edx,1h
	call	46E370h

l000000000044FD2E:
	mov	rax,[rsp+58h]
	mov	rdx,[rax]
	add	rax,[rdx-18h]
	test	byte ptr [rax+19h],20h
	mov	rbx,rax
	jz	44FD63h

l000000000044FD43:
	call	470A80h
	test	al,al
	jnz	44FD63h

l000000000044FD4C:
	mov	rcx,[rbx+0E8h]
	test	rcx,rcx
	jz	44FD63h

l000000000044FD58:
	mov	rax,[rcx]
	call	qword ptr [rax+30h]
	cmp	eax,0FFh
	jz	44FD73h

l000000000044FD63:
	mov	rax,rsi
	add	rsp,68h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	ret

l000000000044FD73:
	mov	rcx,[rsp+58h]
	mov	rax,[rcx]
	add	rcx,[rax-18h]
	mov	edx,[rcx+20h]
	or	edx,1h
	call	46E370h
	mov	rax,rsi
	add	rsp,68h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	ret
000000000044FD9A                               66 0F 1F 44 00 00           f..D..

l000000000044FDA0:
	mov	rcx,r13
	call	42B320h
	mov	rax,[r13+0h]
	lea	rcx,[000000000042B5F0]                                 ; [rip+FFFDB83D]
	mov	edx,20h
	mov	r8,[rax+30h]
	mov	eax,20h
	cmp	r8,rcx
	jz	44FCB2h

l000000000044FDCA:
	mov	rcx,r13
	call	r8
	movsx	edx,al
	jmp	44FCB2h

l000000000044FDD8:
	call	470820h
	sub	rdx,1h
	mov	rcx,rax
	jnz	44FE28h

l000000000044FDE6:
	call	475840h
	mov	rax,[rsi]
	add	rsi,[rax-18h]
	or	dword ptr [rsi+20h],1h
	test	byte ptr [rsi+1Ch],1h
	jz	44FE23h

l000000000044FDFC:
	call	476060h

l000000000044FE01:
	call	470820h
	mov	rbx,rax

l000000000044FE09:
	mov	rcx,rbp
	call	44EE30h
	mov	rcx,rbx
	call	4115B0h
	mov	rbx,rax
	call	475A70h
	jmp	44FE09h

l000000000044FE23:
	call	476060h

l000000000044FE28:
	call	475840h
	mov	rax,[rsi]
	mov	rdi,rsi
	add	rdi,[rax-18h]
	or	dword ptr [rdi+20h],1h
	test	byte ptr [rdi+1Ch],1h
	jnz	44FE4Bh

l000000000044FE41:
	call	475A70h
	jmp	44FD2Eh

l000000000044FE4B:
	call	476060h
	mov	rbx,rax
	call	475A70h
	jmp	44FE09h
000000000044FE5A                               90 90 90 90 90 90           ......

;; fn000000000044FE60: 000000000044FE60
;;   Called from:
;;     0000000000450540 (in fn0000000000450540)
fn000000000044FE60 proc
	push	r13
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,68h
	lea	rbp,[rsp+50h]
	mov	rsi,rcx
	mov	r12,rdx
	mov	rdx,rcx
	mov	rcx,rbp
	call	44ED50h
	cmp	byte ptr [rsp+50h],0h
	jz	44FF4Eh

l000000000044FE8D:
	mov	rax,[rsi]
	mov	rbx,rsi
	add	rbx,[rax-18h]
	mov	rdi,[rbx+0F8h]
	test	rdi,rdi
	jz	44FFF8h

l000000000044FEA7:
	cmp	byte ptr [rbx+0E1h],0h
	jnz	44FEF0h

l000000000044FEB0:
	mov	r13,[rbx+0F0h]
	test	r13,r13
	jz	450021h

l000000000044FEC0:
	cmp	byte ptr [r13+38h],0h
	jz	44FFC0h

l000000000044FECB:
	movsx	edx,byte ptr [r13+59h]
	mov	eax,edx

l000000000044FED2:
	mov	[rbx+0E0h],al
	mov	rax,[rsi]
	mov	r9,rsi
	mov	byte ptr [rbx+0E1h],1h
	add	r9,[rax-18h]
	jmp	44FEFAh
000000000044FEEB                                  0F 1F 44 00 00            ..D..

l000000000044FEF0:
	movsx	edx,byte ptr [rbx+0E0h]
	mov	r9,rbx

l000000000044FEFA:
	mov	r8,[r9+0E8h]
	mov	eax,0h
	lea	rcx,[rsp+40h]
	test	r8,r8
	mov	[rsp+30h],r8
	lea	r8,[rsp+30h]
	setz	al
	mov	[rsp+38h],rax
	mov	rax,[rdi]
	mov	[rsp+20h],edx
	mov	[rsp+28h],r12
	mov	rdx,rdi
	call	qword ptr [rax+30h]
	cmp	byte ptr [rsp+48h],0h
	jz	44FF4Eh

l000000000044FF39:
	mov	rax,[rsi]
	mov	rcx,rsi
	add	rcx,[rax-18h]
	mov	edx,[rcx+20h]
	or	edx,1h
	call	46E370h

l000000000044FF4E:
	mov	rax,[rsp+58h]
	mov	rdx,[rax]
	add	rax,[rdx-18h]
	test	byte ptr [rax+19h],20h
	mov	rbx,rax
	jz	44FF83h

l000000000044FF63:
	call	470A80h
	test	al,al
	jnz	44FF83h

l000000000044FF6C:
	mov	rcx,[rbx+0E8h]
	test	rcx,rcx
	jz	44FF83h

l000000000044FF78:
	mov	rax,[rcx]
	call	qword ptr [rax+30h]
	cmp	eax,0FFh
	jz	44FF93h

l000000000044FF83:
	mov	rax,rsi
	add	rsp,68h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	ret

l000000000044FF93:
	mov	rcx,[rsp+58h]
	mov	rax,[rcx]
	add	rcx,[rax-18h]
	mov	edx,[rcx+20h]
	or	edx,1h
	call	46E370h
	mov	rax,rsi
	add	rsp,68h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	ret
000000000044FFBA                               66 0F 1F 44 00 00           f..D..

l000000000044FFC0:
	mov	rcx,r13
	call	42B320h
	mov	rax,[r13+0h]
	lea	rcx,[000000000042B5F0]                                 ; [rip+FFFDB61D]
	mov	edx,20h
	mov	r8,[rax+30h]
	mov	eax,20h
	cmp	r8,rcx
	jz	44FED2h

l000000000044FFEA:
	mov	rcx,r13
	call	r8
	movsx	edx,al
	jmp	44FED2h

l000000000044FFF8:
	call	470820h
	sub	rdx,1h
	mov	rcx,rax
	jnz	450048h

l0000000000450006:
	call	475840h
	mov	rax,[rsi]
	add	rsi,[rax-18h]
	or	dword ptr [rsi+20h],1h
	test	byte ptr [rsi+1Ch],1h
	jz	450043h

l000000000045001C:
	call	476060h

l0000000000450021:
	call	470820h
	mov	rbx,rax

l0000000000450029:
	mov	rcx,rbp
	call	44EE30h
	mov	rcx,rbx
	call	4115B0h
	mov	rbx,rax
	call	475A70h
	jmp	450029h

l0000000000450043:
	call	476060h

l0000000000450048:
	call	475840h
	mov	rax,[rsi]
	mov	rdi,rsi
	add	rdi,[rax-18h]
	or	dword ptr [rdi+20h],1h
	test	byte ptr [rdi+1Ch],1h
	jnz	45006Bh

l0000000000450061:
	call	475A70h
	jmp	44FF4Eh

l000000000045006B:
	call	476060h
	mov	rbx,rax
	call	475A70h
	jmp	450029h
000000000045007A                               90 90 90 90 90 90           ......

;; fn0000000000450080: 0000000000450080
fn0000000000450080 proc
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,20h
	lea	rsi,[rcx+8h]
	mov	rbx,rcx
	mov	rdi,rdx
	mov	rcx,rsi
	call	46D320h
	lea	rax,[00000000004960D8]                                 ; [rip+00046038]
	mov	qword ptr [rbx+0E0h],+0h
	mov	byte ptr [rbx+0E8h],0h
	mov	byte ptr [rbx+0E9h],0h
	mov	qword ptr [rbx+0F0h],+0h
	mov	rdx,rdi
	mov	[rbx],rax
	lea	rax,[0000000000496100]                                 ; [rip+0004602F]
	mov	qword ptr [rbx+0F8h],+0h
	mov	qword ptr [rbx+100h],+0h
	mov	qword ptr [rbx+108h],+0h
	mov	rcx,rsi
	mov	[rbx+8h],rax
	call	46E310h
	nop
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	ret
0000000000450107                      48 89 C7 48 8B 05 0F 1D 04        H..H.....
0000000000450110 00 48 89 F1 48 8D 50 10 48 89 53 08 E8 AF D2 01 .H..H.P.H.S.....
0000000000450120 00 48 89 F9 E8 87 14 FC FF 90 90 90 90 90 90 90 .H..............

;; fn0000000000450130: 0000000000450130
fn0000000000450130 proc
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,20h
	lea	rsi,[rcx+8h]
	mov	rbx,rcx
	mov	rcx,rsi
	call	46D320h
	lea	rax,[00000000004960D8]                                 ; [rip+00045F8B]
	mov	qword ptr [rbx+0E0h],+0h
	mov	byte ptr [rbx+0E8h],0h
	mov	byte ptr [rbx+0E9h],0h
	mov	qword ptr [rbx+0F0h],+0h
	xor	edx,edx
	mov	[rbx],rax
	lea	rax,[0000000000496100]                                 ; [rip+00045F83]
	mov	qword ptr [rbx+0F8h],+0h
	mov	qword ptr [rbx+100h],+0h
	mov	qword ptr [rbx+108h],+0h
	mov	rcx,rsi
	mov	[rbx+8h],rax
	call	46E310h
	nop
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	ret
00000000004501B3          48 89 C7 48 8B 05 63 1C 04 00 48 89 F1    H..H..c...H..
00000000004501C0 48 8D 50 10 48 89 53 08 E8 03 D2 01 00 48 89 F9 H.P.H.S......H..
00000000004501D0 E8 DB 13 FC FF 90 90 90 90 90 90 90 90 90 90 90 ................

;; fn00000000004501E0: 00000000004501E0
fn00000000004501E0 proc
	mov	r9,[rdx]
	mov	[rcx],r9
	add	rcx,[r9-18h]
	mov	rax,[rdx+8h]
	mov	rdx,r8
	mov	[rcx],rax
	jmp	46E310h
00000000004501F9                            90 90 90 90 90 90 90          .......

;; fn0000000000450200: 0000000000450200
fn0000000000450200 proc
	mov	rax,[rdx]
	mov	[rcx],rax
	add	rcx,[rax-18h]
	mov	rax,[rdx+8h]
	xor	edx,edx
	mov	[rcx],rax
	jmp	46E310h
0000000000450218                         90 90 90 90 90 90 90 90         ........

;; fn0000000000450220: 0000000000450220
fn0000000000450220 proc
	push	rbx
	sub	rsp,20h
	lea	rax,[00000000004960D8]                                 ; [rip+00045EAC]
	mov	rbx,rcx
	lea	rcx,[rcx+8h]
	mov	[rcx-8h],rax
	mov	rax,[0000000000491E20]                                 ; [rip+00041BE2]
	add	rax,10h
	mov	[rcx],rax
	call	46D3D0h
	mov	rcx,rbx
	add	rsp,20h
	pop	rbx
	jmp	475550h
0000000000450257                      90 90 90 90 90 90 90 90 90        .........

;; fn0000000000450260: 0000000000450260
fn0000000000450260 proc
	lea	rax,[00000000004960D8]                                 ; [rip+00045E71]
	add	rcx,8h
	mov	[rcx-8h],rax
	mov	rax,[0000000000491E20]                                 ; [rip+00041BAA]
	add	rax,10h
	mov	[rcx],rax
	jmp	46D3D0h
0000000000450282       90 90 90 90 90 90 90 90 90 90 90 90 90 90   ..............

;; fn0000000000450290: 0000000000450290
fn0000000000450290 proc
	mov	rax,[rdx]
	mov	[rcx],rax
	mov	rax,[rax-18h]
	mov	rdx,[rdx+8h]
	mov	[rcx+rax],rdx
	ret
00000000004502A3          90 90 90 90 90 90 90 90 90 90 90 90 90    .............

;; fn00000000004502B0: 00000000004502B0
fn00000000004502B0 proc
	jmp	rdx
00000000004502B3          90 90 90 90 90 90 90 90 90 90 90 90 90    .............

;; fn00000000004502C0: 00000000004502C0
fn00000000004502C0 proc
	push	rbx
	sub	rsp,20h
	mov	rax,[rcx]
	mov	rbx,rcx
	add	rcx,[rax-18h]
	call	rdx
	mov	rax,rbx
	add	rsp,20h
	pop	rbx
	ret
00000000004502DA                               90 90 90 90 90 90           ......

;; fn00000000004502E0: 00000000004502E0
fn00000000004502E0 proc
	push	rbx
	sub	rsp,20h
	mov	rax,[rcx]
	mov	rbx,rcx
	add	rcx,[rax-18h]
	call	rdx
	mov	rax,rbx
	add	rsp,20h
	pop	rbx
	ret
00000000004502FA                               90 90 90 90 90 90           ......

;; fn0000000000450300: 0000000000450300
fn0000000000450300 proc
	jmp	44EF40h
0000000000450305                90 90 90 90 90 90 90 90 90 90 90      ...........

;; fn0000000000450310: 0000000000450310
fn0000000000450310 proc
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,40h
	lea	rdi,[rsp+30h]
	mov	rbx,rdx
	mov	rsi,rcx
	mov	rdx,rcx
	mov	rcx,rdi
	call	44ED50h
	test	rbx,rbx
	jz	4503A0h

l0000000000450332:
	cmp	byte ptr [rsp+30h],0h
	jz	4503A0h

l0000000000450339:
	mov	rax,[rsi]
	lea	r8,[rsp+2Fh]
	mov	rcx,rbx
	mov	rax,[rax-18h]
	mov	rdx,[rsi+rax+0E8h]
	call	471040h
	test	rax,rax
	mov	edx,4h
	jz	4503AAh

l000000000045035F:
	mov	r8,[rsp+38h]
	mov	rax,[r8]
	mov	rbx,r8
	add	rbx,[rax-18h]
	test	byte ptr [rbx+19h],20h
	jz	450394h

l0000000000450374:
	call	470A80h
	test	al,al
	jnz	450394h

l000000000045037D:
	mov	rcx,[rbx+0E8h]
	test	rcx,rcx
	jz	450394h

l0000000000450389:
	mov	rax,[rcx]
	call	qword ptr [rax+30h]
	cmp	eax,0FFh
	jz	4503C0h

l0000000000450394:
	mov	rax,rsi
	add	rsp,40h
	pop	rbx
	pop	rsi
	pop	rdi
	ret
000000000045039F                                              90                .

l00000000004503A0:
	test	rbx,rbx
	jnz	45035Fh

l00000000004503A5:
	mov	edx,1h

l00000000004503AA:
	mov	rax,[rsi]
	mov	rcx,rsi
	add	rcx,[rax-18h]
	or	edx,[rcx+20h]
	call	46E370h
	jmp	45035Fh
00000000004503BE                                           66 90               f.

l00000000004503C0:
	mov	rcx,[rsp+38h]
	mov	rax,[rcx]
	add	rcx,[rax-18h]
	mov	edx,[rcx+20h]
	or	edx,1h
	call	46E370h
	mov	rax,rsi
	add	rsp,40h
	pop	rbx
	pop	rsi
	pop	rdi
	ret
00000000004503E2       48 89 C3 48 89 F9 E8 43 EA FF FF 48 89 D9   H..H...C...H..
00000000004503F0 E8 BB 11 FC FF 48 83 EA 01 48 89 C1 75 1B E8 3D .....H...H..u..=
0000000000450400 54 02 00 48 8B 06 48 03 70 E8 83 4E 20 01 F6 46 T..H..H.p..N ..F
0000000000450410 1C 01 74 32 E8 47 5C 02 00 E8 22 54 02 00 48 8B ..t2.G\..."T..H.
0000000000450420 06 48 89 F2 48 03 50 E8 83 4A 20 04 F6 42 1C 04 .H..H.P..J ..B..
0000000000450430 75 19 E8 39 56 02 00 E9 23 FF FF FF 48 89 C3 E8 u..9V...#...H...
0000000000450440 2C 56 02 00 EB 9F E8 15 5C 02 00 E8 10 5C 02 00 ,V......\....\..
0000000000450450 48 89 C3 E8 18 56 02 00 EB 8B 90 90 90 90 90 90 H....V..........

;; fn0000000000450460: 0000000000450460
fn0000000000450460 proc
	movzx	edx,dl
	jmp	44F160h
0000000000450468                         90 90 90 90 90 90 90 90         ........

;; fn0000000000450470: 0000000000450470
fn0000000000450470 proc
	jmp	44F3A0h
0000000000450475                90 90 90 90 90 90 90 90 90 90 90      ...........

;; fn0000000000450480: 0000000000450480
fn0000000000450480 proc
	sub	rsp,38h
	fld	tword ptr [rdx]
	lea	rdx,[rsp+20h]
	fstp	tword ptr [rsp+20h]
	call	44F5D0h
	add	rsp,38h
	ret
0000000000450499                            90 90 90 90 90 90 90          .......

;; fn00000000004504A0: 00000000004504A0
fn00000000004504A0 proc
	cvtss2sd	xmm1,xmm1
	jmp	44F3A0h
00000000004504A9                            90 90 90 90 90 90 90          .......

;; fn00000000004504B0: 00000000004504B0
;;   Called from:
;;     00000000004018D6 (in fn0000000000401530)
;;     0000000000402358 (in fn0000000000401530)
fn00000000004504B0 proc
	jmp	44F800h
00000000004504B5                90 90 90 90 90 90 90 90 90 90 90      ...........

;; fn00000000004504C0: 00000000004504C0
fn00000000004504C0 proc
	jmp	44FA20h
00000000004504C5                90 90 90 90 90 90 90 90 90 90 90      ...........

;; fn00000000004504D0: 00000000004504D0
fn00000000004504D0 proc
	jmp	44F800h
00000000004504D5                90 90 90 90 90 90 90 90 90 90 90      ...........

;; fn00000000004504E0: 00000000004504E0
fn00000000004504E0 proc
	jmp	44FA20h
00000000004504E5                90 90 90 90 90 90 90 90 90 90 90      ...........

;; fn00000000004504F0: 00000000004504F0
fn00000000004504F0 proc
	mov	rax,[rcx]
	mov	rax,[rax-18h]
	mov	eax,[rcx+rax+18h]
	and	eax,4Ah
	cmp	eax,8h
	jz	450510h

l0000000000450503:
	cmp	eax,40h
	jz	450510h

l0000000000450508:
	movsx	edx,dx
	jmp	44F800h

l0000000000450510:
	movzx	edx,dx
	jmp	44F800h
0000000000450518                         90 90 90 90 90 90 90 90         ........

;; fn0000000000450520: 0000000000450520
fn0000000000450520 proc
	movzx	edx,dx
	jmp	44FA20h
0000000000450528                         90 90 90 90 90 90 90 90         ........

;; fn0000000000450530: 0000000000450530
fn0000000000450530 proc
	jmp	44FC40h
0000000000450535                90 90 90 90 90 90 90 90 90 90 90      ...........

;; fn0000000000450540: 0000000000450540
fn0000000000450540 proc
	jmp	44FE60h
0000000000450545                90 90 90 90 90 90 90 90 90 90 90      ...........

;; fn0000000000450550: 0000000000450550
fn0000000000450550 proc
	mov	eax,7FFFFFFFh
	sub	rcx,rdx
	cmp	rcx,+7FFFFFFFh
	jle	450563h

l0000000000450561:
	ret

l0000000000450563:
	cmp	rcx,-80000000h
	mov	eax,80000000h
	cmovge	eax,ecx

l0000000000450572:
	ret
0000000000450573          90 90 90 90 90 90 90 90 90 90 90 90 90    .............

;; fn0000000000450580: 0000000000450580
fn0000000000450580 proc
	mov	[rcx],rdx
	ret
0000000000450584             90 90 90 90 90 90 90 90 90 90 90 90     ............

;; fn0000000000450590: 0000000000450590
fn0000000000450590 proc
	mov	[rcx],rdx
	ret
0000000000450594             90 90 90 90 90 90 90 90 90 90 90 90     ............

;; fn00000000004505A0: 00000000004505A0
;;   Called from:
;;     0000000000442AB4 (in fn0000000000442560)
;;     0000000000442AD2 (in fn0000000000442560)
;;     00000000004438D4 (in fn0000000000443380)
;;     00000000004438F2 (in fn0000000000443380)
;;     00000000004443B7 (in fn00000000004442A0)
;;     0000000000444A87 (in fn0000000000444610)
;;     0000000000444AA5 (in fn0000000000444610)
;;     00000000004459B7 (in fn0000000000445540)
;;     00000000004459D5 (in fn0000000000445540)
;;     0000000000446AD0 (in fn00000000004469A0)
;;     0000000000446DD5 (in fn0000000000446BF0)
;;     0000000000446E1D (in fn0000000000446BF0)
;;     00000000004474B5 (in fn00000000004472D0)
;;     00000000004474FD (in fn00000000004472D0)
;;     00000000004509FF (in fn00000000004509E0)
;;     0000000000450A32 (in fn0000000000450A20)
;;     0000000000450C0B (in fn0000000000450BF0)
;;     0000000000450C3A (in fn0000000000450C20)
;;     0000000000450CA2 (in fn0000000000450C90)
;;     0000000000450DB2 (in fn0000000000450DA0)
;;     00000000004516AA (in fn0000000000451690)
;;     000000000045178A (in fn0000000000451780)
;;     0000000000452536 (in fn0000000000452520)
fn00000000004505A0 proc
	push	rbx
	sub	rsp,20h
	mov	rax,[rcx]
	mov	edx,[rax-8h]
	test	edx,edx
	jle	4505C2h

l00000000004505AF:
	mov	rbx,rcx
	xor	r9d,r9d
	xor	r8d,r8d
	xor	edx,edx
	call	451CC0h
	mov	rax,[rbx]

l00000000004505C2:
	mov	dword ptr [rax-8h],0FFFFFFFFh
	add	rsp,20h
	pop	rbx
	ret
00000000004505CF                                              90                .

;; fn00000000004505D0: 00000000004505D0
;;   Called from:
;;     0000000000427109 (in fn00000000004270F0)
;;     000000000042AA8C (in fn000000000042AA60)
;;     000000000042BBC0 (in fn000000000042BBA0)
;;     000000000042C760 (in fn000000000042C730)
;;     000000000042CE99 (in fn000000000042CD70)
;;     000000000042D839 (in fn000000000042D710)
;;     000000000042E1F9 (in fn000000000042E0D0)
;;     000000000042EB99 (in fn000000000042EA70)
;;     000000000042F54C (in fn000000000042F430)
;;     000000000042FF4C (in fn000000000042FE30)
;;     00000000004308A4 (in fn0000000000430800)
;;     0000000000431E8E (in fn0000000000431E50)
;;     00000000004320AE (in fn0000000000432070)
;;     00000000004322CE (in fn0000000000432290)
;;     0000000000432887 (in fn0000000000432750)
;;     00000000004331B7 (in fn0000000000433080)
;;     0000000000433AF7 (in fn00000000004339C0)
;;     00000000004344F5 (in fn00000000004343C0)
;;     0000000000434F2A (in fn0000000000434E00)
;;     00000000004358DE (in fn00000000004357A0)
;;     00000000004362C1 (in fn0000000000436210)
;;     00000000004379BE (in fn0000000000437980)
;;     0000000000437BCE (in fn0000000000437B90)
;;     0000000000437DDE (in fn0000000000437DA0)
;;     000000000043BD61 (in fn000000000043BD50)
;;     0000000000442609 (in fn0000000000442560)
;;     0000000000442642 (in fn0000000000442560)
;;     0000000000443429 (in fn0000000000443380)
;;     0000000000443462 (in fn0000000000443380)
;;     00000000004442F7 (in fn00000000004442A0)
;;     00000000004444EB (in fn00000000004444B0)
;;     00000000004446C1 (in fn0000000000444610)
;;     00000000004446FF (in fn0000000000444610)
;;     00000000004455F1 (in fn0000000000445540)
;;     000000000044562F (in fn0000000000445540)
;;     00000000004465C7 (in fn0000000000446570)
;;     000000000044675B (in fn0000000000446720)
;;     0000000000446D29 (in fn0000000000446BF0)
;;     0000000000446ECE (in fn0000000000446BF0)
;;     0000000000447409 (in fn00000000004472D0)
;;     00000000004475AE (in fn00000000004472D0)
;;     00000000004509D3 (in fn00000000004509D0)
;;     0000000000451E87 (in fn0000000000451E70)
;;     0000000000451F2F (in fn0000000000451F20)
;;     0000000000452081 (in fn0000000000452070)
;;     00000000004520A2 (in fn0000000000452090)
;;     0000000000452157 (in fn0000000000452140)
;;     00000000004521FF (in fn00000000004521F0)
;;     0000000000452351 (in fn0000000000452340)
;;     0000000000452372 (in fn0000000000452360)
;;     0000000000473ECA (in fn0000000000473EA0)
;;     0000000000473FBC (in fn0000000000473FA0)
fn00000000004505D0 proc
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,20h
	mov	rbx,rcx
	mov	edi,edx
	xor	edx,edx
	call	450B70h
	test	rbx,rbx
	mov	rsi,rax
	lea	rax,[rax+18h]
	jz	450608h

l00000000004505EF:
	cmp	rbx,1h
	lea	r9,[rsi+18h]
	jz	450620h

l00000000004505F9:
	movsx	edx,dil
	mov	r8,rbx
	mov	rcx,r9
	call	41BD88h

l0000000000450608:
	mov	dword ptr [rsi+10h],0h
	mov	[rsi],rbx
	mov	byte ptr [rsi+rbx+18h],0h
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	ret
000000000045061F                                              90                .

l0000000000450620:
	mov	[rsi+18h],dil
	mov	rax,r9
	jmp	450608h
0000000000450629                            90 90 90 90 90 90 90          .......

;; fn0000000000450630: 0000000000450630
;;   Called from:
;;     00000000004520C4 (in fn00000000004520B0)
;;     0000000000452394 (in fn0000000000452380)
fn0000000000450630 proc
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,20h
	sub	rdx,rcx
	mov	rdi,rcx
	mov	rbx,rdx
	xor	edx,edx
	mov	rcx,rbx
	call	450B70h
	cmp	rbx,1h
	mov	rsi,rax
	lea	r9,[rax+18h]
	jz	450682h

l0000000000450657:
	mov	rcx,r9
	mov	r8,rbx
	mov	rdx,rdi
	call	41BCC0h
	mov	r9,rax

l0000000000450668:
	mov	rax,r9
	mov	dword ptr [rsi+10h],0h
	mov	[rsi],rbx
	mov	byte ptr [rsi+rbx+18h],0h
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	ret

l0000000000450682:
	movzx	eax,byte ptr [rdi]
	mov	[rsi+18h],al
	jmp	450668h
000000000045068A                               90 90 90 90 90 90           ......

;; fn0000000000450690: 0000000000450690
;;   Called from:
;;     0000000000451A15 (in fn0000000000451960)
;;     0000000000451ED4 (in fn0000000000451EA0)
;;     0000000000451F0B (in fn0000000000451EF0)
;;     0000000000452058 (in fn0000000000452040)
;;     00000000004520F4 (in fn00000000004520E0)
;;     00000000004521A4 (in fn0000000000452170)
;;     00000000004521DB (in fn00000000004521C0)
;;     0000000000452328 (in fn0000000000452310)
;;     00000000004523C4 (in fn00000000004523B0)
fn0000000000450690 proc
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,20h
	test	rcx,rcx
	mov	rdi,rcx
	jnz	4506B0h

l000000000045069F:
	test	rdx,rdx
	jz	4506B0h

l00000000004506A4:
	lea	rcx,[000000000048D728]                                 ; [rip+0003D07D]
	call	470BA0h

l00000000004506B0:
	mov	rbx,rdx
	xor	edx,edx
	sub	rbx,rdi
	mov	rcx,rbx
	call	450B70h
	cmp	rbx,1h
	mov	rsi,rax
	lea	r9,[rax+18h]
	jz	450700h

l00000000004506CD:
	mov	rcx,r9
	mov	r8,rbx
	mov	rdx,rdi
	call	41BCC0h
	mov	r9,rax

l00000000004506DE:
	mov	rax,r9
	mov	dword ptr [rsi+10h],0h
	mov	[rsi],rbx
	mov	byte ptr [rsi+rbx+18h],0h
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	ret
00000000004506F8                         0F 1F 84 00 00 00 00 00         ........

l0000000000450700:
	movzx	eax,byte ptr [rdi]
	mov	[rsi+18h],al
	jmp	4506DEh
0000000000450708                         90 90 90 90 90 90 90 90         ........

;; fn0000000000450710: 0000000000450710
;;   Called from:
;;     000000000042C604 (in fn000000000042C5E0)
;;     000000000042C61A (in fn000000000042C5E0)
;;     000000000042C771 (in fn000000000042C730)
fn0000000000450710 proc
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,20h
	test	rcx,rcx
	mov	rdi,rcx
	jnz	450730h

l000000000045071F:
	test	rdx,rdx
	jz	450730h

l0000000000450724:
	lea	rcx,[000000000048DE80]                                 ; [rip+0003D755]
	call	470BA0h

l0000000000450730:
	mov	rbx,rdx
	xor	edx,edx
	sub	rbx,rdi
	mov	rcx,rbx
	call	450B70h
	cmp	rbx,1h
	mov	rsi,rax
	lea	r9,[rax+18h]
	jz	450780h

l000000000045074D:
	mov	rcx,r9
	mov	r8,rbx
	mov	rdx,rdi
	call	41BCC0h
	mov	r9,rax

l000000000045075E:
	mov	rax,r9
	mov	dword ptr [rsi+10h],0h
	mov	[rsi],rbx
	mov	byte ptr [rsi+rbx+18h],0h
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	ret
0000000000450778                         0F 1F 84 00 00 00 00 00         ........

l0000000000450780:
	movzx	eax,byte ptr [rdi]
	mov	[rsi+18h],al
	jmp	45075Eh
0000000000450788                         90 90 90 90 90 90 90 90         ........

;; fn0000000000450790: 0000000000450790
;;   Called from:
;;     0000000000451FB6 (in fn0000000000451F80)
;;     0000000000452016 (in fn0000000000451FE0)
;;     0000000000452124 (in fn0000000000452110)
;;     0000000000452286 (in fn0000000000452250)
;;     00000000004522E6 (in fn00000000004522B0)
;;     00000000004523F4 (in fn00000000004523E0)
fn0000000000450790 proc
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,20h
	test	rcx,rcx
	mov	rdi,rcx
	jnz	4507B0h

l000000000045079F:
	test	rdx,rdx
	jz	4507B0h

l00000000004507A4:
	lea	rcx,[000000000048D728]                                 ; [rip+0003CF7D]
	call	470BA0h

l00000000004507B0:
	mov	rbx,rdx
	xor	edx,edx
	sub	rbx,rdi
	mov	rcx,rbx
	call	450B70h
	cmp	rbx,1h
	mov	rsi,rax
	lea	r9,[rax+18h]
	jz	450800h

l00000000004507CD:
	mov	rcx,r9
	mov	r8,rbx
	mov	rdx,rdi
	call	41BCC0h
	mov	r9,rax

l00000000004507DE:
	mov	rax,r9
	mov	dword ptr [rsi+10h],0h
	mov	[rsi],rbx
	mov	byte ptr [rsi+rbx+18h],0h
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	ret
00000000004507F8                         0F 1F 84 00 00 00 00 00         ........

l0000000000450800:
	movzx	eax,byte ptr [rdi]
	mov	[rsi+18h],al
	jmp	4507DEh
0000000000450808                         90 90 90 90 90 90 90 90         ........

;; fn0000000000450810: 0000000000450810
fn0000000000450810 proc
	lea	rax,[000000000048B260]                                 ; [rip+0003AA49]
	ret
0000000000450818                         90 90 90 90 90 90 90 90         ........

;; fn0000000000450820: 0000000000450820
fn0000000000450820 proc
	sub	r8,rdx
	cmp	r8,1h
	jz	450830h

l0000000000450829:
	jmp	41BCC0h
000000000045082E                                           66 90               f.

l0000000000450830:
	movzx	eax,byte ptr [rdx]
	mov	[rcx],al
	ret
0000000000450836                   90 90 90 90 90 90 90 90 90 90       ..........

;; fn0000000000450840: 0000000000450840
fn0000000000450840 proc
	sub	r8,rdx
	cmp	r8,1h
	jz	450850h

l0000000000450849:
	jmp	41BCC0h
000000000045084E                                           66 90               f.

l0000000000450850:
	movzx	eax,byte ptr [rdx]
	mov	[rcx],al
	ret
0000000000450856                   90 90 90 90 90 90 90 90 90 90       ..........

;; fn0000000000450860: 0000000000450860
fn0000000000450860 proc
	sub	r8,rdx
	cmp	r8,1h
	jz	450870h

l0000000000450869:
	jmp	41BCC0h
000000000045086E                                           66 90               f.

l0000000000450870:
	movzx	eax,byte ptr [rdx]
	mov	[rcx],al
	ret
0000000000450876                   90 90 90 90 90 90 90 90 90 90       ..........

;; fn0000000000450880: 0000000000450880
fn0000000000450880 proc
	sub	r8,rdx
	cmp	r8,1h
	jz	450890h

l0000000000450889:
	jmp	41BCC0h
000000000045088E                                           66 90               f.

l0000000000450890:
	movzx	eax,byte ptr [rdx]
	mov	[rcx],al
	ret
0000000000450896                   90 90 90 90 90 90 90 90 90 90       ..........

;; fn00000000004508A0: 00000000004508A0
fn00000000004508A0 proc
	sub	rsp,28h
	mov	rax,[rcx]
	mov	rdx,[rax-18h]
	cmp	[rax-10h],rdx
	ja	4508C0h

l00000000004508B1:
	add	rsp,28h
	ret
00000000004508B6                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l00000000004508C0:
	xor	edx,edx
	call	451BE0h
	nop
	add	rsp,28h
	ret
00000000004508CD                                        48 89 C1              H..
00000000004508D0 E8 6B 4F 02 00 90 48 83 C4 28 E9 91 51 02 00 90 .kO...H..(..Q...

;; fn00000000004508E0: 00000000004508E0
;;   Called from:
;;     000000000042BDBF (in fn000000000042BBA0)
;;     0000000000442AEF (in fn0000000000442560)
;;     000000000044390F (in fn0000000000443380)
;;     0000000000444AC2 (in fn0000000000444610)
;;     00000000004459F2 (in fn0000000000445540)
;;     0000000000446D95 (in fn0000000000446BF0)
;;     0000000000446FE8 (in fn0000000000446BF0)
;;     0000000000447475 (in fn00000000004472D0)
;;     00000000004476C8 (in fn00000000004472D0)
;;     000000000045137C (in fn0000000000451360)
;;     00000000004513C4 (in fn00000000004513A0)
;;     00000000004513F6 (in fn00000000004513E0)
;;     000000000045165F (in fn0000000000451640)
;;     0000000000451914 (in fn0000000000451900)
;;     0000000000451BBC (in fn0000000000451B90)
;;     000000000045250E (in fn00000000004524F0)
fn00000000004508E0 proc
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,28h
	mov	rax,[rcx]
	mov	r10,3FFFFFFFFFFFFFF9h
	mov	ebp,[rsp+70h]
	mov	rsi,rcx
	mov	rdi,rdx
	mov	rbx,r9
	sub	r10,[rax-18h]
	add	r10,r8
	cmp	r9,r10
	ja	45094Fh

l000000000045090E:
	call	451CC0h
	test	rbx,rbx
	jz	450930h

l0000000000450918:
	add	rdi,[rsi]
	cmp	rbx,1h
	mov	rcx,rdi
	jz	450940h

l0000000000450924:
	movsx	edx,bpl
	mov	r8,rbx
	call	41BD88h

l0000000000450930:
	mov	rax,rsi
	add	rsp,28h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
000000000045093C                                     0F 1F 40 00             ..@.

l0000000000450940:
	mov	rax,rsi
	mov	[rdi],bpl
	add	rsp,28h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret

l000000000045094F:
	lea	rcx,[000000000048D6A1]                                 ; [rip+0003CD4B]
	call	470E60h
	nop
	nop
	nop
	nop
	nop

;; fn0000000000450960: 0000000000450960
;;   Called from:
;;     000000000045095F (in fn00000000004508E0)
;;     0000000000451201 (in fn00000000004511C0)
;;     000000000045149D (in fn0000000000451450)
;;     00000000004519D1 (in fn0000000000451960)
;;     0000000000451A2E (in fn0000000000451960)
fn0000000000450960 proc
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,28h
	mov	rbx,[rsp+70h]
	mov	rbp,r9
	mov	rdi,rcx
	mov	rsi,rdx
	mov	r9,rbx
	call	451CC0h
	test	rbx,rbx
	jz	45099Ah

l0000000000450983:
	add	rsi,[rdi]
	cmp	rbx,1h
	mov	rcx,rsi
	jz	4509B0h

l000000000045098F:
	mov	r8,rbx
	mov	rdx,rbp
	call	41BCC0h

l000000000045099A:
	mov	rax,rdi
	add	rsp,28h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
00000000004509A6                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l00000000004509B0:
	movzx	eax,byte ptr [rbp+0h]
	mov	[rsi],al
	mov	rax,rdi
	add	rsp,28h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
00000000004509C2       90 90 90 90 90 90 90 90 90 90 90 90 90 90   ..............

;; fn00000000004509D0: 00000000004509D0
fn00000000004509D0 proc
	movsx	edx,dl
	jmp	4505D0h
00000000004509D8                         90 90 90 90 90 90 90 90         ........

;; fn00000000004509E0: 00000000004509E0
fn00000000004509E0 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	mov	rax,[rcx]
	mov	rsi,rcx
	mov	rbx,rdx
	mov	r8,[rax-18h]
	cmp	rdx,r8
	jnc	450A11h

l00000000004509F8:
	mov	edx,[rax-8h]
	test	edx,edx
	js	450A07h

l00000000004509FF:
	call	4505A0h
	mov	rax,[rsi]

l0000000000450A07:
	add	rax,rbx
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret

l0000000000450A11:
	lea	rcx,[000000000048D608]                                 ; [rip+0003CBF0]
	call	471560h
	nop
	nop
	nop

;; fn0000000000450A20: 0000000000450A20
;;   Called from:
;;     0000000000450A1F (in fn00000000004509E0)
fn0000000000450A20 proc
	push	rbx
	sub	rsp,20h
	mov	rax,[rcx]
	mov	edx,[rax-8h]
	test	edx,edx
	js	450A3Ah

l0000000000450A2F:
	mov	rbx,rcx
	call	4505A0h
	mov	rax,[rbx]

l0000000000450A3A:
	add	rax,[rax-18h]
	add	rsp,20h
	pop	rbx
	ret
0000000000450A44             90 90 90 90 90 90 90 90 90 90 90 90     ............

;; fn0000000000450A50: 0000000000450A50
;;   Called from:
;;     000000000042AB3E (in fn000000000042AA60)
;;     000000000042BEEB (in fn000000000042BDF0)
;;     000000000042BF0D (in fn000000000042BDF0)
;;     000000000042C6DC (in fn000000000042C5E0)
;;     000000000042C6FB (in fn000000000042C5E0)
;;     000000000042D5C9 (in fn000000000042CD70)
;;     000000000042DF89 (in fn000000000042D710)
;;     000000000042E929 (in fn000000000042E0D0)
;;     000000000042F2E9 (in fn000000000042EA70)
;;     000000000042FCE9 (in fn000000000042F430)
;;     00000000004306B9 (in fn000000000042FE30)
;;     0000000000431FE7 (in fn0000000000431E50)
;;     0000000000432207 (in fn0000000000432070)
;;     0000000000432427 (in fn0000000000432290)
;;     0000000000432FDF (in fn0000000000432750)
;;     0000000000433926 (in fn0000000000433080)
;;     00000000004342E0 (in fn00000000004339C0)
;;     0000000000434D1E (in fn00000000004343C0)
;;     00000000004356FC (in fn0000000000434E00)
;;     000000000043612E (in fn00000000004357A0)
;;     0000000000436E09 (in fn0000000000436210)
;;     0000000000437B48 (in fn0000000000437980)
;;     0000000000437D58 (in fn0000000000437B90)
;;     0000000000437F68 (in fn0000000000437DA0)
;;     0000000000444487 (in fn00000000004442A0)
;;     00000000004445E7 (in fn00000000004444B0)
;;     00000000004466F7 (in fn0000000000446570)
;;     0000000000446857 (in fn0000000000446720)
;;     0000000000446BA7 (in fn00000000004469A0)
;;     0000000000447053 (in fn0000000000446BF0)
;;     0000000000447233 (in fn0000000000446BF0)
;;     0000000000447733 (in fn00000000004472D0)
;;     0000000000447913 (in fn00000000004472D0)
;;     000000000045480C (in fn00000000004547D0)
;;     00000000004548E9 (in fn0000000000454880)
;;     000000000045F42C (in fn000000000045F3F0)
;;     000000000046428F (in fn0000000000463E50)
;;     00000000004642AC (in fn0000000000463E50)
;;     00000000004642C7 (in fn0000000000463E50)
;;     00000000004642DD (in fn0000000000463E50)
;;     00000000004642FC (in fn0000000000463E50)
;;     000000000046431C (in fn0000000000463E50)
;;     00000000004649AF (in fn00000000004645D0)
;;     0000000000464A1D (in fn00000000004645D0)
;;     00000000004666E9 (in fn00000000004661A0)
;;     00000000004666FF (in fn00000000004661A0)
;;     000000000046671C (in fn00000000004661A0)
;;     000000000046673C (in fn00000000004661A0)
;;     000000000046675C (in fn00000000004661A0)
;;     000000000046677C (in fn00000000004661A0)
;;     000000000046679C (in fn00000000004661A0)
;;     00000000004667BC (in fn00000000004661A0)
;;     0000000000467059 (in fn0000000000466B10)
;;     000000000046706F (in fn0000000000466B10)
;;     000000000046708C (in fn0000000000466B10)
;;     00000000004670AC (in fn0000000000466B10)
;;     00000000004670CC (in fn0000000000466B10)
;;     00000000004670EC (in fn0000000000466B10)
;;     000000000046710C (in fn0000000000466B10)
;;     000000000046712C (in fn0000000000466B10)
;;     0000000000467A8C (in fn0000000000467480)
;;     0000000000467AAC (in fn0000000000467480)
;;     000000000046841C (in fn0000000000467E10)
;;     000000000046843C (in fn0000000000467E10)
;;     000000000046ADE9 (in fn000000000046AD30)
;;     000000000046D30C (in fn000000000046D2D0)
;;     0000000000470E2B (in fn0000000000470DA0)
;;     0000000000471006 (in fn0000000000470F80)
fn0000000000450A50 proc
	jmp	475550h
0000000000450A55                90 90 90 90 90 90 90 90 90 90 90      ...........

;; fn0000000000450A60: 0000000000450A60
;;   Called from:
;;     000000000042C855 (in fn000000000042C730)
;;     00000000004309FD (in fn0000000000430800)
;;     0000000000442F5A (in fn0000000000442560)
;;     0000000000442F70 (in fn0000000000442560)
;;     0000000000443D7A (in fn0000000000443380)
;;     0000000000443D90 (in fn0000000000443380)
;;     0000000000444EAA (in fn0000000000444610)
;;     0000000000444EC0 (in fn0000000000444610)
;;     0000000000445DDA (in fn0000000000445540)
;;     0000000000445DF0 (in fn0000000000445540)
;;     0000000000451AFA (in fn0000000000451960)
;;     000000000046AE19 (in fn000000000046AD30)
;;     0000000000470B65 (in fn0000000000470B20)
;;     0000000000470BE5 (in fn0000000000470BA0)
;;     0000000000470C24 (in fn0000000000470BA0)
;;     0000000000470C75 (in fn0000000000470C30)
;;     0000000000470CB4 (in fn0000000000470C30)
;;     0000000000470D55 (in fn0000000000470D10)
;;     0000000000470D94 (in fn0000000000470D10)
;;     0000000000470EA5 (in fn0000000000470E60)
;;     0000000000470EE4 (in fn0000000000470E60)
;;     0000000000470F35 (in fn0000000000470EF0)
;;     0000000000470F74 (in fn0000000000470EF0)
;;     00000000004712E5 (in fn00000000004712A0)
;;     0000000000471324 (in fn00000000004712A0)
;;     0000000000471375 (in fn0000000000471330)
;;     00000000004713B4 (in fn0000000000471330)
;;     0000000000471485 (in fn0000000000471440)
;;     00000000004714C4 (in fn0000000000471440)
;;     0000000000471515 (in fn00000000004714D0)
;;     0000000000471554 (in fn00000000004714D0)
;;     00000000004715EC (in fn0000000000471560)
;;     0000000000471629 (in fn0000000000471560)
fn0000000000450A60 proc
	mov	eax,0FFFFFFFFh
	lock
	xadd	[rcx+10h],eax
	test	eax,eax
	jle	450A70h

l0000000000450A6E:
	ret

l0000000000450A70:
	jmp	475550h
0000000000450A75                90 90 90 90 90 90 90 90 90 90 90      ...........

;; fn0000000000450A80: 0000000000450A80
fn0000000000450A80 proc
	lock
	add	dword ptr [rcx+10h],1h
	lea	rax,[rcx+18h]
	ret
0000000000450A8A                               90 90 90 90 90 90           ......

;; fn0000000000450A90: 0000000000450A90
fn0000000000450A90 proc
	lea	rax,[rcx+18h]
	ret
0000000000450A95                90 90 90 90 90 90 90 90 90 90 90      ...........

;; fn0000000000450AA0: 0000000000450AA0
fn0000000000450AA0 proc
	lea	rax,[000000000048B260]                                 ; [rip+0003A7B9]
	ret
0000000000450AA8                         90 90 90 90 90 90 90 90         ........

;; fn0000000000450AB0: 0000000000450AB0
fn0000000000450AB0 proc
	mov	dword ptr [rcx+10h],0FFFFFFFFh
	ret
0000000000450AB8                         90 90 90 90 90 90 90 90         ........

;; fn0000000000450AC0: 0000000000450AC0
fn0000000000450AC0 proc
	mov	dword ptr [rcx+10h],0h
	ret
0000000000450AC8                         90 90 90 90 90 90 90 90         ........

;; fn0000000000450AD0: 0000000000450AD0
fn0000000000450AD0 proc
	mov	dword ptr [rcx+10h],0h
	mov	[rcx],rdx
	mov	byte ptr [rcx+rdx+18h],0h
	ret

;; fn0000000000450AE0: 0000000000450AE0
fn0000000000450AE0 proc
	mov	eax,[rcx+10h]
	test	eax,eax
	js	450AF1h

l0000000000450AE7:
	lock
	add	dword ptr [rcx+10h],1h
	lea	rax,[rcx+18h]
	ret

l0000000000450AF1:
	xor	r8d,r8d
	jmp	450B00h
0000000000450AF9                            90 90 90 90 90 90 90          .......

;; fn0000000000450B00: 0000000000450B00
;;   Called from:
;;     0000000000450AF4 (in fn0000000000450AE0)
;;     00000000004512DC (in fn0000000000451290)
;;     0000000000451C0B (in fn0000000000451BE0)
;;     0000000000451F6C (in fn0000000000451F40)
;;     000000000045223C (in fn0000000000452210)
;;     0000000000473F6F (in fn0000000000473F30)
fn0000000000450B00 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	mov	rsi,rcx
	mov	rcx,r8
	mov	r8,rdx
	add	rcx,[rsi]
	mov	rdx,[rsi+8h]
	call	450B70h
	mov	r8,[rsi]
	mov	rbx,rax
	lea	rax,[rax+18h]
	test	r8,r8
	jz	450B43h

l0000000000450B2A:
	cmp	r8,1h
	lea	r9,[rbx+18h]
	jz	450B60h

l0000000000450B34:
	lea	rdx,[rsi+18h]
	mov	rcx,r9
	call	41BCC0h
	mov	r8,[rsi]

l0000000000450B43:
	mov	dword ptr [rbx+10h],0h
	mov	[rbx],r8
	mov	byte ptr [rbx+r8+18h],0h
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret
0000000000450B5A                               66 0F 1F 44 00 00           f..D..

l0000000000450B60:
	movzx	eax,byte ptr [rsi+18h]
	mov	[rbx+18h],al
	mov	rax,r9
	mov	r8,[rsi]
	jmp	450B43h
0000000000450B6F                                              90                .

;; fn0000000000450B70: 0000000000450B70
;;   Called from:
;;     00000000004505DE (in fn00000000004505D0)
;;     0000000000450645 (in fn0000000000450630)
;;     00000000004506BB (in fn0000000000450690)
;;     000000000045073B (in fn0000000000450710)
;;     00000000004507BB (in fn0000000000450790)
;;     0000000000450B16 (in fn0000000000450B00)
;;     0000000000451D11 (in fn0000000000451CC0)
fn0000000000450B70 proc
	push	rbx
	sub	rsp,20h
	mov	rax,3FFFFFFFFFFFFFF9h
	cmp	rcx,rax
	mov	rbx,rcx
	ja	450BDEh

l0000000000450B87:
	cmp	rbx,rdx
	lea	rcx,[rcx+19h]
	jbe	450BC8h

l0000000000450B90:
	lea	rcx,[rdx+rdx]
	cmp	rbx,rcx
	cmovc	rbx,rcx

l0000000000450B9B:
	lea	rcx,[rbx+39h]
	cmp	rcx,+1000h
	jbe	450BC4h

l0000000000450BA8:
	cmp	rdx,rbx
	jnc	450BC4h

l0000000000450BAD:
	add	rbx,+1000h
	and	ecx,0FFFh
	sub	rbx,rcx
	cmp	rbx,rax
	cmova	rbx,rax

l0000000000450BC4:
	lea	rcx,[rbx+19h]

l0000000000450BC8:
	call	475590h
	mov	[rax+8h],rbx
	mov	dword ptr [rax+10h],0h
	add	rsp,20h
	pop	rbx
	ret

l0000000000450BDE:
	lea	rcx,[000000000048D675]                                 ; [rip+0003CA90]
	call	470E60h
	nop
	nop
	nop
	nop
	nop
	nop

;; fn0000000000450BF0: 0000000000450BF0
;;   Called from:
;;     0000000000450BEF (in fn0000000000450B70)
fn0000000000450BF0 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	mov	rax,[rcx]
	mov	rdx,[rax-18h]
	lea	rbx,[rdx-1h]
	mov	edx,[rax-8h]
	test	edx,edx
	js	450C13h

l0000000000450C08:
	mov	rsi,rcx
	call	4505A0h
	mov	rax,[rsi]

l0000000000450C13:
	add	rax,rbx
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret
0000000000450C1D                                        90 90 90              ...

;; fn0000000000450C20: 0000000000450C20
fn0000000000450C20 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	mov	r8,[rdx]
	mov	rsi,rcx
	mov	rbx,rdx
	mov	eax,[r8-8h]
	test	eax,eax
	js	450C42h

l0000000000450C37:
	mov	rcx,rdx
	call	4505A0h
	mov	r8,[rbx]

l0000000000450C42:
	mov	rax,rsi
	mov	[rsi],r8
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret
0000000000450C4F                                              90                .

;; fn0000000000450C50: 0000000000450C50
;;   Called from:
;;     0000000000442B6A (in fn0000000000442560)
;;     000000000044398A (in fn0000000000443380)
;;     0000000000444B3E (in fn0000000000444610)
;;     0000000000445A6E (in fn0000000000445540)
fn0000000000450C50 proc
	mov	r8,[rcx]
	mov	r10d,[r8-8h]
	test	r10d,r10d
	js	450C80h

l0000000000450C5C:
	mov	rax,[rdx]
	mov	r9d,[rax-8h]
	test	r9d,r9d
	jns	450C6Fh

l0000000000450C68:
	mov	dword ptr [rax-8h],0h

l0000000000450C6F:
	mov	[rcx],rax
	mov	[rdx],r8
	ret
0000000000450C76                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l0000000000450C80:
	mov	dword ptr [r8-8h],0h
	jmp	450C5Ch
0000000000450C8A                               90 90 90 90 90 90           ......

;; fn0000000000450C90: 0000000000450C90
fn0000000000450C90 proc
	push	rbx
	sub	rsp,20h
	mov	rax,[rcx]
	mov	edx,[rax-8h]
	test	edx,edx
	js	450CAAh

l0000000000450C9F:
	mov	rbx,rcx
	call	4505A0h
	mov	rax,[rbx]

l0000000000450CAA:
	add	rsp,20h
	pop	rbx
	ret

;; fn0000000000450CB0: 0000000000450CB0
fn0000000000450CB0 proc
	mov	rax,[rcx]
	xor	r9d,r9d
	xor	edx,edx
	mov	r8,[rax-18h]
	jmp	451CC0h
0000000000450CC1    90 90 90 90 90 90 90 90 90 90 90 90 90 90 90  ...............

;; fn0000000000450CD0: 0000000000450CD0
fn0000000000450CD0 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	xor	r9d,r9d
	mov	r8d,1h
	mov	rbx,rdx
	sub	rbx,[rcx]
	mov	rsi,rcx
	mov	rdx,rbx
	call	451CC0h
	mov	rax,[rsi]
	mov	dword ptr [rax-8h],0FFFFFFFFh
	add	rax,rbx
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret
0000000000450D04             90 90 90 90 90 90 90 90 90 90 90 90     ............

;; fn0000000000450D10: 0000000000450D10
fn0000000000450D10 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	sub	r8,rdx
	mov	rax,rdx
	jnz	450D25h

l0000000000450D1E:
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret

l0000000000450D25:
	sub	rax,[rcx]
	mov	rsi,rcx
	xor	r9d,r9d
	mov	rdx,rax
	mov	rbx,rax
	call	451CC0h
	mov	rax,[rsi]
	mov	dword ptr [rax-8h],0FFFFFFFFh
	add	rax,rbx
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret
0000000000450D4D                                        90 90 90              ...

;; fn0000000000450D50: 0000000000450D50
;;   Called from:
;;     0000000000442A90 (in fn0000000000442560)
;;     0000000000443319 (in fn0000000000442560)
;;     00000000004438B0 (in fn0000000000443380)
;;     0000000000444139 (in fn0000000000443380)
;;     0000000000444A60 (in fn0000000000444610)
;;     0000000000445990 (in fn0000000000445540)
fn0000000000450D50 proc
	push	rbx
	sub	rsp,20h
	mov	rax,[rcx]
	mov	rbx,rcx
	mov	r9,[rax-18h]
	mov	r10,r9
	sub	r10,rdx
	cmp	r10,r8
	cmovbe	r8,r10

l0000000000450D6C:
	cmp	rdx,r9
	ja	450D82h

l0000000000450D71:
	xor	r9d,r9d
	call	451CC0h
	mov	rax,rbx
	add	rsp,20h
	pop	rbx
	ret

l0000000000450D82:
	mov	r8,rdx
	lea	rcx,[000000000048D5D0]                                 ; [rip+0003C844]
	lea	rdx,[000000000048D68D]                                 ; [rip+0003C8FA]
	call	471560h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop

;; fn0000000000450DA0: 0000000000450DA0
;;   Called from:
;;     0000000000450D9F (in fn0000000000450D50)
fn0000000000450DA0 proc
	push	rbx
	sub	rsp,20h
	mov	rax,[rcx]
	mov	edx,[rax-8h]
	test	edx,edx
	js	450DBAh

l0000000000450DAF:
	mov	rbx,rcx
	call	4505A0h
	mov	rax,[rbx]

l0000000000450DBA:
	add	rsp,20h
	pop	rbx
	ret

;; fn0000000000450DC0: 0000000000450DC0
fn0000000000450DC0 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	mov	rbx,rcx
	mov	rcx,rdx
	mov	rsi,rdx
	call	41BCB8h
	test	rax,rax
	jz	450DE7h

l0000000000450DD9:
	mov	r8,rax
	mov	rdx,rsi
	mov	rcx,rbx
	call	450E20h

l0000000000450DE7:
	mov	rax,rbx
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret
0000000000450DF1    90 90 90 90 90 90 90 90 90 90 90 90 90 90 90  ...............

;; fn0000000000450E00: 0000000000450E00
;;   Called from:
;;     000000000042BC3E (in fn000000000042BBA0)
;;     000000000042BCA1 (in fn000000000042BBA0)
;;     000000000042BD03 (in fn000000000042BBA0)
;;     000000000042BD65 (in fn000000000042BBA0)
;;     000000000042C82B (in fn000000000042C730)
;;     0000000000446E7E (in fn0000000000446BF0)
;;     0000000000446FAA (in fn0000000000446BF0)
;;     0000000000447129 (in fn0000000000446BF0)
;;     000000000044755E (in fn00000000004472D0)
;;     000000000044768A (in fn00000000004472D0)
;;     0000000000447809 (in fn00000000004472D0)
;;     0000000000471D52 (in fn0000000000471C20)
;;     000000000047484F (in fn0000000000474710)
fn0000000000450E00 proc
	push	rbx
	sub	rsp,20h
	test	r8,r8
	mov	rbx,rcx
	jz	450E12h

l0000000000450E0D:
	call	450E20h

l0000000000450E12:
	mov	rax,rbx
	add	rsp,20h
	pop	rbx
	ret
0000000000450E1B                                  90 90 90 90 90            .....

;; fn0000000000450E20: 0000000000450E20
;;   Called from:
;;     0000000000450DE2 (in fn0000000000450DC0)
;;     0000000000450E0D (in fn0000000000450E00)
;;     0000000000451067 (in fn0000000000451050)
;;     0000000000452572 (in fn0000000000452550)
;;     00000000004525B7 (in fn00000000004525A0)
;;     0000000000473EF2 (in fn0000000000473EA0)
fn0000000000450E20 proc
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,30h
	mov	r10,[rcx]
	mov	r9,3FFFFFFFFFFFFFF9h
	mov	rsi,rcx
	mov	rdi,rdx
	mov	rax,[r10-18h]
	sub	r9,rax
	cmp	r9,r8
	jc	450EECh

l0000000000450E4A:
	lea	rbx,[r8+rax]
	cmp	rbx,[r10-10h]
	jbe	450EA0h

l0000000000450E54:
	cmp	r10,rdi
	jbe	450EADh

l0000000000450E59:
	mov	rdx,rbx
	mov	rcx,rsi
	mov	[rsp+28h],r8
	call	451BE0h
	mov	r10,[rsi]
	mov	r8,[rsp+28h]
	mov	rax,[r10-18h]

l0000000000450E75:
	cmp	r8,1h
	lea	rcx,[r10+rax]
	jnz	450EE2h

l0000000000450E7F:
	movzx	edx,byte ptr [rdi]
	mov	[rcx],dl

l0000000000450E84:
	mov	rax,[rsi]
	mov	dword ptr [rax-8h],0h
	mov	[rax-18h],rbx
	mov	byte ptr [rax+rbx],0h
	xor	eax,eax
	add	rsp,30h
	pop	rbx
	pop	rsi
	pop	rdi
	ret

l0000000000450EA0:
	mov	edx,[r10-8h]
	test	edx,edx
	jle	450E75h

l0000000000450EA8:
	cmp	r10,rdi
	ja	450E59h

l0000000000450EAD:
	lea	r9,[r10+rax]
	cmp	rdi,r9
	ja	450E59h

l0000000000450EB6:
	mov	rcx,rsi
	mov	rdx,rbx
	sub	rdi,r10
	mov	[rsp+28h],r8
	call	451BE0h
	mov	r10,[rsi]
	mov	r8,[rsp+28h]
	mov	rax,[r10-18h]
	add	rdi,r10
	cmp	r8,1h
	lea	rcx,[r10+rax]
	jz	450E7Fh

l0000000000450EE2:
	mov	rdx,rdi
	call	41BCC0h
	jmp	450E84h

l0000000000450EEC:
	lea	rcx,[000000000048D6FE]                                 ; [rip+0003C80B]
	call	470E60h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop

;; fn0000000000450F00: 0000000000450F00
;;   Called from:
;;     0000000000450EFF (in fn0000000000450E20)
;;     0000000000452590 (in fn0000000000452590)
;;     0000000000473EFD (in fn0000000000473EA0)
;;     0000000000473F54 (in fn0000000000473F30)
;;     0000000000473FEE (in fn0000000000473FA0)
fn0000000000450F00 proc
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,28h
	mov	rbp,rdx
	mov	rdx,[rdx]
	mov	rbx,rcx
	mov	rsi,[rdx-18h]
	test	rsi,rsi
	jz	450F64h

l0000000000450F1A:
	mov	rax,[rcx]
	mov	rcx,[rax-18h]
	lea	rdi,[rcx+rsi]
	cmp	rdi,[rax-10h]
	jbe	450F70h

l0000000000450F2B:
	mov	rdx,rdi
	mov	rcx,rbx
	call	451BE0h
	mov	rax,[rbx]
	mov	rdx,[rbp+0h]
	mov	rcx,[rax-18h]

l0000000000450F41:
	add	rcx,rax
	cmp	rsi,1h
	jz	450F80h

l0000000000450F4A:
	mov	r8,rsi
	call	41BCC0h

l0000000000450F52:
	mov	rax,[rbx]
	mov	dword ptr [rax-8h],0h
	mov	[rax-18h],rdi
	mov	byte ptr [rax+rdi],0h

l0000000000450F64:
	mov	rax,rbx
	add	rsp,28h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret

l0000000000450F70:
	mov	r8d,[rax-8h]
	test	r8d,r8d
	jg	450F2Bh

l0000000000450F79:
	jmp	450F41h
0000000000450F7B                                  0F 1F 44 00 00            ..D..

l0000000000450F80:
	movzx	eax,byte ptr [rdx]
	mov	[rcx],al
	jmp	450F52h
0000000000450F87                      90 90 90 90 90 90 90 90 90        .........

;; fn0000000000450F90: 0000000000450F90
fn0000000000450F90 proc
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,20h
	mov	r10,[rdx]
	mov	rdi,rcx
	mov	r12,rdx
	mov	rsi,r8
	mov	rbx,[r10-18h]
	cmp	r8,rbx
	ja	451037h

l0000000000450FB3:
	sub	rbx,r8
	cmp	rbx,r9
	cmova	rbx,r9

l0000000000450FBD:
	test	rbx,rbx
	jz	451010h

l0000000000450FC2:
	mov	rax,[rcx]
	mov	rcx,[rax-18h]
	lea	rbp,[rbx+rcx]
	cmp	rbp,[rax-10h]
	jbe	451020h

l0000000000450FD3:
	mov	rcx,rdi
	mov	rdx,rbp
	call	451BE0h
	mov	rax,[rdi]
	mov	r10,[r12]
	mov	rcx,[rax-18h]

l0000000000450FE9:
	add	rcx,rax
	cmp	rbx,1h
	lea	rdx,[r10+rsi]
	jz	451030h

l0000000000450FF6:
	mov	r8,rbx
	call	41BCC0h

l0000000000450FFE:
	mov	rax,[rdi]
	mov	dword ptr [rax-8h],0h
	mov	[rax-18h],rbp
	mov	byte ptr [rax+rbp],0h
