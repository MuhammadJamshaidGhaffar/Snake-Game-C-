;;; Segment .text (0000000000401000)

;; fn0000000000401000: 0000000000401000
fn0000000000401000 proc
	ret
0000000000401001    66 66 66 66 66 66 2E 0F 1F 84 00 00 00 00 00  ffffff.........

;; fn0000000000401010: 0000000000401010
fn0000000000401010 proc
	sub	rsp,28h
	mov	rax,[0000000000492070]                                 ; [rip+00091055]
	xor	edx,edx
	mov	dword ptr [rax],1h
	mov	rax,[0000000000492080]                                 ; [rip+00091056]
	mov	dword ptr [rax],1h
	mov	rax,[0000000000492090]                                 ; [rip+00091059]
	mov	dword ptr [rax],1h
	mov	rax,[0000000000492060]                                 ; [rip+0009101C]
	mov	dword ptr [rax],1h
	mov	rax,[0000000000491EE0]                                 ; [rip+00090E8F]
	cmp	word ptr [rax],5A4Dh
	jz	4010D0h

l0000000000401058:
	mov	rax,[0000000000492050]                                 ; [rip+00090FF1]
	mov	[00000000004AD008],edx                                 ; [rip+000ABFA3]
	mov	eax,[rax]
	test	eax,eax
	jz	4010C2h

l000000000040106B:
	mov	ecx,2h
	call	41BC78h

l0000000000401075:
	mov	rcx,-1h
	call	40FD20h
	mov	rdx,[0000000000491F90]                                 ; [rip+00090F08]
	mov	[rdx],rax
	mov	rdx,[0000000000491F80]                                 ; [rip+00090EEE]
	mov	[rdx],rax
	mov	rax,[0000000000492010]                                 ; [rip+00090F74]
	mov	edx,[rax]
	mov	rax,[0000000000491F30]                                 ; [rip+00090E8B]
	mov	rax,[rax]
	mov	[rax],edx
	call	40FD30h
	mov	rax,[00000000004915E0]                                 ; [rip+0009052A]
	cmp	dword ptr [rax],1h
	jz	401120h

l00000000004010BB:
	xor	eax,eax
	add	rsp,28h
	ret

l00000000004010C2:
	mov	ecx,1h
	call	41BC78h
	jmp	401075h
00000000004010CE                                           66 90               f.

l00000000004010D0:
	movsxd	rcx,dword ptr [rax+3Ch]
	add	rax,rcx
	cmp	dword ptr [rax],4550h
	jnz	401058h

l00000000004010E3:
	movzx	ecx,word ptr [rax+18h]
	cmp	cx,10Bh
	jz	401133h

l00000000004010EE:
	cmp	cx,20Bh
	jnz	401058h

l00000000004010F9:
	cmp	dword ptr [rax+84h],0Eh
	jbe	401058h

l0000000000401106:
	mov	ecx,[rax+0F8h]
	xor	edx,edx
	test	ecx,ecx
	setnz	dl
	jmp	401058h
0000000000401118                         0F 1F 84 00 00 00 00 00         ........

l0000000000401120:
	lea	rcx,[000000000040FDA0]                                 ; [rip+0000EC79]
	call	40FD90h
	xor	eax,eax
	add	rsp,28h
	ret

l0000000000401133:
	cmp	dword ptr [rax+74h],0Eh
	jbe	401058h

l000000000040113D:
	mov	r8d,[rax+0E8h]
	xor	edx,edx
	test	r8d,r8d
	setnz	dl
	jmp	401058h
0000000000401151    66 66 66 66 66 66 2E 0F 1F 84 00 00 00 00 00  ffffff.........

;; fn0000000000401160: 0000000000401160
fn0000000000401160 proc
	sub	rsp,38h
	mov	rax,[0000000000492040]                                 ; [rip+00090ED5]
	lea	r8,[00000000004AD018]                                  ; [rip+000ABEA6]
	lea	rdx,[00000000004AD020]                                 ; [rip+000ABEA7]
	lea	rcx,[00000000004AD028]                                 ; [rip+000ABEA8]
	mov	eax,[rax]
	mov	[00000000004AD000],eax                                 ; [rip+000ABE78]
	lea	rax,[00000000004AD000]                                 ; [rip+000ABE71]
	mov	[rsp+20h],rax
	mov	rax,[0000000000492000]                                 ; [rip+00090E65]
	mov	r9d,[rax]
	call	41BC80h
	mov	[00000000004AD010],eax                                 ; [rip+000ABE67]
	add	rsp,38h
	ret
00000000004011AE                                           66 90               f.

;; fn00000000004011B0: 00000000004011B0
;;   Called from:
;;     00000000004014E6 (in fn00000000004014D0)
;;     0000000000401516 (in Win32CrtStartup)
fn00000000004011B0 proc
	push	r13
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,+98h
	mov	rbp,[0000000000492050]                                 ; [rip+00090E8A]
	xor	eax,eax
	mov	ecx,0Dh
	lea	rdx,[rsp+20h]
	mov	r9d,[rbp+0h]
	mov	rdi,rdx

l00000000004011D9:
	rep stosq

l00000000004011DC:
	test	r9d,r9d
	jnz	401490h

l00000000004011E5:
	mov	rax,gs:[0030h]
	mov	rbx,[0000000000491F60]                                 ; [rip+00090D6B]
	mov	rsi,[rax+8h]
	xor	edi,edi
	mov	r12,[00000000004AF6A4]                                 ; [rip+000AE4A2]
	jmp	401215h

l0000000000401204:
	cmp	rsi,rax
	jz	401430h

l000000000040120D:
	mov	ecx,3E8h
	call	r12

l0000000000401215:
	mov	rax,rdi
	lock
	cmpxchg	[rbx],rsi
	test	rax,rax
	jnz	401204h

l0000000000401222:
	mov	rsi,[0000000000491F70]                                 ; [rip+00090D47]
	xor	edi,edi
	mov	eax,[rsi]
	cmp	eax,1h
	jz	401447h

l0000000000401236:
	mov	eax,[rsi]
	test	eax,eax
	jz	4014A0h

l0000000000401240:
	mov	[00000000004AD004],1h                                  ; [rip+000ABDBA]

l000000000040124A:
	mov	eax,[rsi]
	cmp	eax,1h
	jz	40145Ch

l0000000000401255:
	test	edi,edi
	jz	401480h

l000000000040125D:
	mov	rax,[0000000000491EC0]                                 ; [rip+00090C5C]
	mov	rax,[rax]
	test	rax,rax
	jz	401278h

l000000000040126C:
	xor	r8d,r8d
	mov	edx,2h
	xor	ecx,ecx
	call	rax

l0000000000401278:
	call	410080h
	lea	rcx,[0000000000410620]                                 ; [rip+0000F39C]
	call	[00000000004AF69C]                                    ; [rip+000AE412]
	mov	rdx,[0000000000491F50]                                 ; [rip+00090CBF]
	mov	[rdx],rax
	call	410530h
	lea	rcx,[0000000000401000]                                 ; [rip-000002A0]
	call	41BCA0h
	call	4107E0h
	mov	rax,[0000000000491EE0]                                 ; [rip+00090C2F]
	mov	[00000000004AE5F0],rax                                 ; [rip+000AD338]
	mov	rax,[0000000000491F20]                                 ; [rip+00090C61]
	mov	rax,[rax]
	mov	rax,[rax]
	test	rax,rax
	jz	401317h

l00000000004012CA:
	xor	ecx,ecx
	jmp	4012E2h
00000000004012CE                                           66 90               f.

l00000000004012D0:
	test	dl,dl
	jz	401310h

l00000000004012D4:
	and	ecx,1h
	jz	401304h

l00000000004012D9:
	mov	ecx,1h

l00000000004012DE:
	add	rax,1h

l00000000004012E2:
	movzx	edx,byte ptr [rax]
	cmp	dl,20h
	jle	4012D0h

l00000000004012EA:
	mov	r8d,ecx
	xor	r8d,1h
	cmp	dl,22h
	cmovz	ecx,r8d

l00000000004012F8:
	jmp	4012DEh
00000000004012FA                               66 0F 1F 44 00 00           f..D..

l0000000000401300:
	test	dl,dl
	jz	401310h

l0000000000401304:
	add	rax,1h
	movzx	edx,byte ptr [rax]
	cmp	dl,20h
	jle	401300h

l0000000000401310:
	mov	[00000000004AE5F8],rax                                 ; [rip+000AD2E1]

l0000000000401317:
	mov	r8d,[rbp+0h]
	test	r8d,r8d
	jz	401336h

l0000000000401320:
	test	byte ptr [rsp+5Ch],1h
	mov	eax,0Ah
	jnz	401421h

l0000000000401330:
	mov	[0000000000477000],eax                                 ; [rip+00075CCA]

l0000000000401336:
	mov	r12d,[00000000004AD028]                                ; [rip+000ABCEB]
	lea	r13d,[r12+1h]
	movsxd	r13,r13d
	shl	r13,3h
	mov	rcx,r13
	call	41BCB0h
	test	r12d,r12d
	mov	rbp,rax
	mov	rdi,[00000000004AD020]                                 ; [rip+000ABCC2]
	jle	4014BEh

l0000000000401364:
	xor	ebx,ebx
	nop	word ptr cs:[rax+rax+0h]

l0000000000401370:
	mov	rcx,[rdi+rbx*8]
	call	41BCB8h
	lea	rsi,[rax+1h]
	mov	rcx,rsi
	call	41BCB0h
	mov	[rbp+rbx*8+0h],rax
	mov	rdx,[rdi+rbx*8]
	mov	rcx,rax
	mov	r8,rsi
	add	rbx,1h
	call	41BCC0h
	cmp	r12d,ebx
	jg	401370h

l00000000004013A2:
	sub	r13,8h

l00000000004013A6:
	mov	qword ptr [rbp+r13+0h],+0h
	mov	[00000000004AD020],rbp                                 ; [rip+000ABC6A]
	call	410890h
	mov	rax,[0000000000491EF0]                                 ; [rip+00090B2E]
	mov	rdx,[00000000004AD018]                                 ; [rip+000ABC4F]
	mov	ecx,[00000000004AD028]                                 ; [rip+000ABC59]
	mov	rax,[rax]
	mov	[rax],rdx
	mov	r8,[00000000004AD018]                                  ; [rip+000ABC3C]
	mov	rdx,[00000000004AD020]                                 ; [rip+000ABC3D]
	call	4024FCh
	mov	ecx,[00000000004AD008]                                 ; [rip+000ABC1A]
	mov	[00000000004AD00C],eax                                 ; [rip+000ABC18]
	test	ecx,ecx
	jz	4014C6h

l00000000004013FC:
	mov	edx,[00000000004AD004]                                 ; [rip+000ABC02]
	test	edx,edx
	jnz	401411h

l0000000000401406:
	call	41BCC8h
	mov	eax,[00000000004AD00C]                                 ; [rip+000ABBFB]

l0000000000401411:
	add	rsp,+98h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	ret

l0000000000401421:
	movzx	eax,word ptr [rsp+60h]
	jmp	401330h
000000000040142B                                  0F 1F 44 00 00            ..D..

l0000000000401430:
	mov	rsi,[0000000000491F70]                                 ; [rip+00090B39]
	mov	edi,1h
	mov	eax,[rsi]
	cmp	eax,1h
	jnz	401236h

l0000000000401447:
	mov	ecx,1Fh
	call	41BCD0h
	mov	eax,[rsi]
	cmp	eax,1h
	jnz	401255h

l000000000040145C:
	mov	rdx,[0000000000491FD0]                                 ; [rip+00090B6D]
	mov	rcx,[0000000000491FC0]                                 ; [rip+00090B56]
	call	41BCD8h
	test	edi,edi
	mov	dword ptr [rsi],2h
	jnz	40125Dh

l000000000040147D:
	nop	dword ptr [rax]

l0000000000401480:
	xor	eax,eax
	xchg	[rbx],rax
	jmp	40125Dh
000000000040148A                               66 0F 1F 44 00 00           f..D..

l0000000000401490:
	mov	rcx,rdx
	call	[00000000004AF5BC]                                    ; [rip+000AE123]
	jmp	4011E5h
000000000040149E                                           66 90               f.

l00000000004014A0:
	mov	rdx,[0000000000491FF0]                                 ; [rip+00090B49]
	mov	rcx,[0000000000491FE0]                                 ; [rip+00090B32]
	mov	dword ptr [rsi],1h
	call	41BCD8h
	jmp	40124Ah

l00000000004014BE:
	xor	r13d,r13d
	jmp	4013A6h

l00000000004014C6:
	mov	ecx,eax
	call	41BCE0h
00000000004014CD                                        90 66 90              .f.

;; fn00000000004014D0: 00000000004014D0
fn00000000004014D0 proc
	sub	rsp,28h
	mov	rax,[0000000000492050]                                 ; [rip+00090B75]
	mov	dword ptr [rax],1h
	call	4108B0h
	call	4011B0h
	nop
	nop
	add	rsp,28h
	ret
00000000004014F2       66 66 66 66 66 2E 0F 1F 84 00 00 00 00 00   fffff.........

;; Win32CrtStartup: 0000000000401500
Win32CrtStartup proc
	sub	rsp,28h
	mov	rax,[0000000000492050]                                 ; [rip+00090B45]
	mov	dword ptr [rax],0h
	call	4108B0h
	call	4011B0h
	nop
	nop
	add	rsp,28h
	ret
0000000000401522       90 90 90 90 90 90 90 90 90 90 90 90 90 90   ..............

;; fn0000000000401530: 0000000000401530
;;   Called from:
;;     0000000000402975 (in fn000000000040252C)
;;     00000000004029D6 (in fn000000000040252C)
fn0000000000401530 proc
	push	rbp
	push	rbx
	sub	rsp,+128h
	lea	rbp,[rsp+80h]
	mov	[rbp+0C0h],rcx
	lea	rcx,[000000000048D003]                                 ; [rip+0008BAB4]
	call	41BCE8h
	mov	dword ptr [rbp+3Ch],0h
	mov	ecx,0FFFFFFF5h
	mov	rax,[00000000004AF5C4]                                 ; [rip+000AE05D]
	call	rax
	mov	[rbp+60h],rax
	mov	word ptr [rbp+30h],0h
	mov	word ptr [rbp+32h],2h
	mov	dword ptr [rbp+9Ch],1h
	jmp	4015BCh

l0000000000401585:
	mov	eax,[rbp+9Ch]
	mov	[rbp+30h],ax
	mov	edx,[rbp+30h]
	mov	rax,[rbp+60h]
	mov	rcx,rax
	mov	rax,[00000000004AF664]                                 ; [rip+000AE0C4]
	call	rax
	lea	rdx,[000000000048D007]                                 ; [rip+0008BA5E]
	mov	rcx,[0000000000491AD0]                                 ; [rip+00090520]
	call	4738C0h
	add	dword ptr [rbp+9Ch],1h

l00000000004015BC:
	cmp	dword ptr [rbp+9Ch],4Dh
	jle	401585h

l00000000004015C5:
	mov	dword ptr [rbp+98h],3h
	jmp	40163Ah

l00000000004015D1:
	mov	eax,[rbp+98h]
	mov	[rbp+32h],ax
	mov	word ptr [rbp+30h],1h
	mov	edx,[rbp+30h]
	mov	rax,[rbp+60h]
	mov	rcx,rax
	mov	rax,[00000000004AF664]                                 ; [rip+000AE072]
	call	rax
	lea	rdx,[000000000048D009]                                 ; [rip+0008BA0E]
	mov	rcx,[0000000000491AD0]                                 ; [rip+000904CE]
	call	4738C0h
	mov	word ptr [rbp+30h],4Dh
	mov	edx,[rbp+30h]
	mov	rax,[rbp+60h]
	mov	rcx,rax
	mov	rax,[00000000004AF664]                                 ; [rip+000AE046]
	call	rax
	lea	rdx,[000000000048D009]                                 ; [rip+0008B9E2]
	mov	rcx,[0000000000491AD0]                                 ; [rip+000904A2]
	call	4738C0h
	add	dword ptr [rbp+98h],1h

l000000000040163A:
	cmp	dword ptr [rbp+98h],14h
	jle	4015D1h

l0000000000401643:
	mov	word ptr [rbp+32h],15h
	mov	dword ptr [rbp+94h],1h
	jmp	40168Ch

l0000000000401655:
	mov	eax,[rbp+94h]
	mov	[rbp+30h],ax
	mov	edx,[rbp+30h]
	mov	rax,[rbp+60h]
	mov	rcx,rax
	mov	rax,[00000000004AF664]                                 ; [rip+000ADFF4]
	call	rax
	lea	rdx,[000000000048D007]                                 ; [rip+0008B98E]
	mov	rcx,[0000000000491AD0]                                 ; [rip+00090450]
	call	4738C0h
	add	dword ptr [rbp+94h],1h

l000000000040168C:
	cmp	dword ptr [rbp+94h],4Dh
	jle	401655h

l0000000000401695:
	mov	byte ptr [rbp+1Fh],52h
	lea	rax,[rbp-60h]
	mov	rcx,rax
	call	4248F0h
	lea	rdx,[000000000048D00B]                                 ; [rip+0008B95F]
	mov	rcx,[rbp+0C0h]
	call	473840h
	test	al,al
	jz	401729h

l00000000004016BC:
	lea	r8,[rbp-60h]
	lea	rcx,[rbp+1Fh]
	lea	rdx,[rbp+20h]
	lea	rax,[rbp+3Ch]
	mov	r9,r8
	mov	r8,rcx
	mov	rcx,rax
	call	402C4Eh
	mov	[rbp+5Fh],al
	movzx	eax,byte ptr [rbp+5Fh]
	xor	eax,1h
	test	al,al
	jz	401724h

l00000000004016E8:
	mov	word ptr [rbp+30h],0Ah
	mov	word ptr [rbp+32h],0Ah
	mov	edx,[rbp+30h]
	mov	rax,[rbp+60h]
	mov	rcx,rax
	mov	rax,[00000000004AF664]                                 ; [rip+000ADF5F]
	call	rax
	lea	rdx,[000000000048D018]                                 ; [rip+0008B90A]
	mov	rcx,[0000000000491AD0]                                 ; [rip+000903BB]
	call	4738C0h
	call	41BCF0h
	jmp	4024C9h

l0000000000401724:
	jmp	40189Ch

l0000000000401729:
	mov	rax,0FFFFFFFF00000000h
	and	rax,rbx
	or	rax,14h
	mov	rbx,rax
	mov	edx,ebx
	mov	rax,500000000h
	or	rax,rdx
	mov	rbx,rax
	lea	rax,[rbp-60h]
	mov	r8d,1h
	mov	rdx,rbx
	mov	rcx,rax
	call	424480h
	mov	ecx,0h
	call	41BCF8h
	mov	ecx,eax
	call	41BD00h

l0000000000401775:
	call	41BD08h
	mov	ecx,eax
	mov	edx,0DD67C8A7h
	mov	eax,ecx
	imul	edx
	lea	eax,[rdx+rcx]
	sar	eax,6h
	mov	edx,eax
	mov	eax,ecx
	sar	eax,1Fh
	sub	edx,eax
	mov	eax,edx
	imul	eax,eax,4Ah
	sub	ecx,eax
	mov	eax,ecx
	add	eax,2h
	mov	[rbp+20h],eax
	call	41BD08h
	mov	ecx,eax
	mov	edx,78787879h
	mov	eax,ecx
	imul	edx
	sar	edx,3h
	mov	eax,ecx
	sar	eax,1Fh
	sub	edx,eax
	mov	eax,edx
	mov	edx,eax
	shl	edx,4h
	add	edx,eax
	mov	eax,ecx
	sub	eax,edx
	add	eax,3h
	mov	[rbp+24h],eax
	mov	byte ptr [rbp+93h],1h
	mov	edx,[rbp+20h]
	mov	eax,[rbp-60h]
	cmp	edx,eax
	jnz	4017F7h

l00000000004017E1:
	mov	edx,[rbp+24h]
	mov	eax,[rbp-5Ch]
	cmp	edx,eax
	jnz	4017F7h

l00000000004017EB:
	mov	byte ptr [rbp+93h],0h
	jmp	40188Ch

l00000000004017F7:
	mov	edx,[rbp+20h]
	mov	eax,[rbp-3Ch]
	cmp	edx,eax
	jnz	401814h

l0000000000401801:
	mov	edx,[rbp+24h]
	mov	eax,[rbp-38h]
	cmp	edx,eax
	jnz	401814h

l000000000040180B:
	mov	byte ptr [rbp+93h],0h
	jmp	40188Ch

l0000000000401814:
	mov	dword ptr [rbp+8Ch],0h
	jmp	401881h

l0000000000401820:
	mov	ebx,[rbp+20h]
	mov	eax,[rbp+8Ch]
	cdqe
	lea	rdx,[rbp-60h]
	lea	rcx,[rdx+8h]
	mov	rdx,rax
	call	46B700h
	mov	eax,[rax]
	cmp	ebx,eax
	jnz	40186Ah

l0000000000401841:
	mov	ebx,[rbp+24h]
	mov	eax,[rbp+8Ch]
	cdqe
	lea	rdx,[rbp-60h]
	lea	rcx,[rdx+8h]
	mov	rdx,rax
	call	46B700h
	mov	eax,[rax+4h]
	cmp	ebx,eax
	jnz	40186Ah

l0000000000401863:
	mov	eax,1h
	jmp	40186Fh

l000000000040186A:
	mov	eax,0h

l000000000040186F:
	test	al,al
	jz	40187Ah

l0000000000401873:
	mov	byte ptr [rbp+93h],0h

l000000000040187A:
	add	dword ptr [rbp+8Ch],1h

l0000000000401881:
	mov	eax,[rbp-40h]
	cmp	eax,[rbp+8Ch]
	jg	401820h

l000000000040188C:
	cmp	byte ptr [rbp+93h],0h
	jz	401897h

l0000000000401895:
	jmp	40189Ch

l0000000000401897:
	jmp	401775h

l000000000040189C:
	mov	word ptr [rbp+30h],0Fh
	mov	word ptr [rbp+32h],1h
	mov	edx,[rbp+30h]
	mov	rax,[rbp+60h]
	mov	rcx,rax
	mov	rax,[00000000004AF664]                                 ; [rip+000ADDAB]
	call	rax
	mov	ebx,[rbp+3Ch]
	lea	rdx,[00000000004AD040]                                 ; [rip+000AB77B]
	mov	rcx,[0000000000491AD0]                                 ; [rip+00090204]
	call	473B00h
	mov	edx,ebx
	mov	rcx,rax
	call	4504B0h
	mov	word ptr [rbp+30h],28h
	mov	word ptr [rbp+32h],1h
	mov	edx,[rbp+30h]
	mov	rax,[rbp+60h]
	mov	rcx,rax
	mov	rax,[00000000004AF664]                                 ; [rip+000ADD6C]
	call	rax
	lea	rdx,[00000000004AD058]                                 ; [rip+000AB757]
	mov	rcx,[0000000000491AD0]                                 ; [rip+000901C8]
	call	473B00h
	lea	rdx,[000000000048D071]                                 ; [rip+0008B75D]
	mov	rcx,rax
	call	4738C0h
	mov	word ptr [rbp+30h],1Eh
	mov	word ptr [rbp+32h],16h
	mov	edx,[rbp+30h]
	mov	rax,[rbp+60h]
	mov	rcx,rax
	mov	rax,[00000000004AF664]                                 ; [rip+000ADD2B]
	call	rax
	lea	rdx,[00000000004AD048]                                 ; [rip+000AB706]
	mov	rcx,[0000000000491AD0]                                 ; [rip+00090187]
	call	473B00h
	mov	eax,[rbp-60h]
	mov	[rbp+30h],ax
	mov	eax,[rbp-5Ch]
	mov	[rbp+32h],ax
	mov	edx,[rbp+30h]
	mov	rax,[rbp+60h]
	mov	rcx,rax
	mov	rax,[00000000004AF664]                                 ; [rip+000ADCF7]
	call	rax
	movzx	eax,byte ptr [rbp-34h]
	movsx	eax,al
	mov	edx,eax
	mov	rcx,[0000000000491AD0]                                 ; [rip+00090151]
	call	473980h
	mov	dword ptr [rbp+88h],0h
	jmp	401A16h

l0000000000401993:
	mov	eax,[rbp+88h]
	cdqe
	lea	rdx,[rbp-60h]
	lea	rcx,[rdx+8h]
	mov	rdx,rax
	call	46B700h
	mov	eax,[rax]
	mov	[rbp+30h],ax
	mov	eax,[rbp+88h]
	cdqe
	lea	rdx,[rbp-60h]
	lea	rcx,[rdx+8h]
	mov	rdx,rax
	call	46B700h
	mov	eax,[rax+4h]
	mov	[rbp+32h],ax
	mov	edx,[rbp+30h]
	mov	rax,[rbp+60h]
	mov	rcx,rax
	mov	rax,[00000000004AF664]                                 ; [rip+000ADC83]
	call	rax
	mov	eax,[rbp+88h]
	cdqe
	lea	rdx,[rbp-60h]
	lea	rcx,[rdx+38h]
	mov	rdx,rax
	call	46BBA0h
	movzx	eax,byte ptr [rax]
	movsx	eax,al
	mov	edx,eax
	mov	rcx,[0000000000491AD0]                                 ; [rip+000900C6]
	call	473980h
	add	dword ptr [rbp+88h],1h

l0000000000401A16:
	mov	eax,[rbp-40h]
	cmp	eax,[rbp+88h]
	jg	401993h

l0000000000401A25:
	mov	eax,[rbp-3Ch]
	mov	[rbp+30h],ax
	mov	eax,[rbp-38h]
	mov	[rbp+32h],ax
	mov	edx,[rbp+30h]
	mov	rax,[rbp+60h]
	mov	rcx,rax
	mov	rax,[00000000004AF664]                                 ; [rip+000ADC20]
	call	rax
	movzx	eax,byte ptr [rbp-10h]
	movsx	eax,al
	mov	edx,eax
	mov	rcx,[0000000000491AD0]                                 ; [rip+0009007A]
	call	473980h
	mov	eax,[rbp+20h]
	mov	[rbp+30h],ax
	mov	eax,[rbp+24h]
	mov	[rbp+32h],ax
	mov	edx,[rbp+30h]
	mov	rax,[rbp+60h]
	mov	rcx,rax
	mov	rax,[00000000004AF664]                                 ; [rip+000ADBEA]
	call	rax
	mov	edx,0FFFFFFA6h
	mov	rcx,[0000000000491AD0]                                 ; [rip+00090048]
	call	473980h
	lea	rdx,[000000000048D00B]                                 ; [rip+0008B577]
	mov	rcx,[rbp+0C0h]
	call	473840h
	test	al,al
	jz	401B93h

l0000000000401AA8:
	mov	word ptr [rbp+30h],28h
	mov	word ptr [rbp+32h],1h
	mov	edx,[rbp+30h]
	mov	rax,[rbp+60h]
	mov	rcx,rax
	mov	rax,[00000000004AF664]                                 ; [rip+000ADB9F]
	call	rax
	lea	rdx,[00000000004AD058]                                 ; [rip+000AB58A]
	mov	rcx,[0000000000491AD0]                                 ; [rip+0008FFFB]
	call	473B00h
	lea	rdx,[000000000048D079]                                 ; [rip+0008B598]
	mov	rcx,rax
	call	4738C0h
	mov	word ptr [rbp+30h],1Eh
	mov	word ptr [rbp+32h],16h
	mov	edx,[rbp+30h]
	mov	rax,[rbp+60h]
	mov	rcx,rax
	mov	rax,[00000000004AF664]                                 ; [rip+000ADB5E]
	call	rax
	lea	rdx,[00000000004AD050]                                 ; [rip+000AB541]
	mov	rcx,[0000000000491AD0]                                 ; [rip+0008FFBA]
	call	473B00h
	call	41BCF0h
	mov	word ptr [rbp+30h],28h
	mov	word ptr [rbp+32h],1h
	mov	edx,[rbp+30h]
	mov	rax,[rbp+60h]
	mov	rcx,rax
	mov	rax,[00000000004AF664]                                 ; [rip+000ADB27]
	call	rax
	lea	rdx,[00000000004AD058]                                 ; [rip+000AB512]
	mov	rcx,[0000000000491AD0]                                 ; [rip+0008FF83]
	call	473B00h
	lea	rdx,[000000000048D071]                                 ; [rip+0008B518]
	mov	rcx,rax
	call	4738C0h
	mov	word ptr [rbp+30h],1Eh
	mov	word ptr [rbp+32h],16h
	mov	edx,[rbp+30h]
	mov	rax,[rbp+60h]
	mov	rcx,rax
	mov	rax,[00000000004AF664]                                 ; [rip+000ADAE6]
	call	rax
	lea	rdx,[00000000004AD048]                                 ; [rip+000AB4C1]
	mov	rcx,[0000000000491AD0]                                 ; [rip+0008FF42]
	call	473B00h

l0000000000401B93:
	mov	eax,[00000000004AD034]                                 ; [rip+000AB49B]
	mov	[rbp+84h],eax

l0000000000401B9F:
	mov	byte ptr [rbp+83h],0h
	mov	dword ptr [rbp+7Ch],0h
	jmp	401E1Eh

l0000000000401BB2:
	call	41BD10h
	test	eax,eax
	setnz	al
	test	al,al
	jz	401DE0h

l0000000000401BC4:
	call	41BCF0h
	mov	[rbp+5Eh],al
	cmp	byte ptr [rbp+5Eh],4Dh
	jnz	401BF8h

l0000000000401BD2:
	movzx	eax,byte ptr [rbp+1Fh]
	cmp	al,4Ch
	jz	401BF8h

l0000000000401BDA:
	movzx	eax,byte ptr [rbp+83h]
	xor	eax,1h
	test	al,al
	jz	401BF8h

l0000000000401BE8:
	mov	byte ptr [rbp+1Fh],52h
	mov	byte ptr [rbp+83h],1h
	jmp	401DE0h

l0000000000401BF8:
	cmp	byte ptr [rbp+5Eh],48h
	jnz	401C24h

l0000000000401BFE:
	movzx	eax,byte ptr [rbp+1Fh]
	cmp	al,44h
	jz	401C24h

l0000000000401C06:
	movzx	eax,byte ptr [rbp+83h]
	xor	eax,1h
	test	al,al
	jz	401C24h

l0000000000401C14:
	mov	byte ptr [rbp+1Fh],55h
	mov	byte ptr [rbp+83h],1h
	jmp	401DE0h

l0000000000401C24:
	cmp	byte ptr [rbp+5Eh],4Bh
	jnz	401C50h

l0000000000401C2A:
	movzx	eax,byte ptr [rbp+1Fh]
	cmp	al,52h
	jz	401C50h

l0000000000401C32:
	movzx	eax,byte ptr [rbp+83h]
	xor	eax,1h
	test	al,al
	jz	401C50h

l0000000000401C40:
	mov	byte ptr [rbp+1Fh],4Ch
	mov	byte ptr [rbp+83h],1h
	jmp	401DE0h

l0000000000401C50:
	cmp	byte ptr [rbp+5Eh],50h
	jnz	401C7Ch

l0000000000401C56:
	movzx	eax,byte ptr [rbp+1Fh]
	cmp	al,55h
	jz	401C7Ch

l0000000000401C5E:
	movzx	eax,byte ptr [rbp+83h]
	xor	eax,1h
	test	al,al
	jz	401C7Ch

l0000000000401C6C:
	mov	byte ptr [rbp+1Fh],44h
	mov	byte ptr [rbp+83h],1h
	jmp	401DE0h

l0000000000401C7C:
	cmp	byte ptr [rbp+5Eh],1Bh
	jnz	401CA6h

l0000000000401C82:
	nop
	lea	r8,[rbp-60h]
	lea	rcx,[rbp+1Fh]
	lea	rdx,[rbp+20h]
	lea	rax,[rbp+3Ch]
	mov	r9,r8
	mov	r8,rcx
	mov	rcx,rax
	call	402A94h
	jmp	4024C9h

l0000000000401CA6:
	cmp	byte ptr [rbp+5Eh],70h
	jnz	401DE0h

l0000000000401CB0:
	mov	word ptr [rbp+30h],28h
	mov	word ptr [rbp+32h],1h
	mov	edx,[rbp+30h]
	mov	rax,[rbp+60h]
	mov	rcx,rax
	mov	rax,[00000000004AF664]                                 ; [rip+000AD997]
	call	rax
	lea	rdx,[00000000004AD058]                                 ; [rip+000AB382]
	mov	rcx,[0000000000491AD0]                                 ; [rip+0008FDF3]
	call	473B00h
	lea	rdx,[000000000048D079]                                 ; [rip+0008B390]
	mov	rcx,rax
	call	4738C0h
	mov	word ptr [rbp+30h],1Eh
	mov	word ptr [rbp+32h],16h
	mov	edx,[rbp+30h]
	mov	rax,[rbp+60h]
	mov	rcx,rax
	mov	rax,[00000000004AF664]                                 ; [rip+000AD956]
	call	rax
	lea	rdx,[00000000004AD050]                                 ; [rip+000AB339]
	mov	rcx,[0000000000491AD0]                                 ; [rip+0008FDB2]
	call	473B00h
	mov	ecx,[rbp+84h]
	mov	edx,66666667h
	mov	eax,ecx
	imul	edx
	sar	edx,2h
	mov	eax,ecx
	sar	eax,1Fh
	sub	edx,eax
	mov	eax,edx
	mov	[rbp+4Ch],eax
	lea	rdx,[rbp+4Ch]
	lea	rax,[rbp+40h]
	mov	rcx,rax
	call	4691C0h
	lea	rax,[rbp+40h]
	mov	rcx,rax
	call	454950h
	nop

l0000000000401D5E:
	call	41BCF0h
	cmp	eax,70h
	setnz	al
	test	al,al
	jnz	401D5Eh

l0000000000401D6D:
	mov	word ptr [rbp+30h],28h
	mov	word ptr [rbp+32h],1h
	mov	edx,[rbp+30h]
	mov	rax,[rbp+60h]
	mov	rcx,rax
	mov	rax,[00000000004AF664]                                 ; [rip+000AD8DA]
	call	rax
	lea	rdx,[00000000004AD058]                                 ; [rip+000AB2C5]
	mov	rcx,[0000000000491AD0]                                 ; [rip+0008FD36]
	call	473B00h
	lea	rdx,[000000000048D082]                                 ; [rip+0008B2DC]
	mov	rcx,rax
	call	4738C0h
	mov	word ptr [rbp+30h],1Eh
	mov	word ptr [rbp+32h],16h
	mov	edx,[rbp+30h]
	mov	rax,[rbp+60h]
	mov	rcx,rax
	mov	rax,[00000000004AF664]                                 ; [rip+000AD899]
	call	rax
	lea	rdx,[00000000004AD048]                                 ; [rip+000AB274]
	mov	rcx,[0000000000491AD0]                                 ; [rip+0008FCF5]
	call	473B00h

l0000000000401DE0:
	mov	ecx,[rbp+84h]
	mov	edx,66666667h
	mov	eax,ecx
	imul	edx
	sar	edx,2h
	mov	eax,ecx
	sar	eax,1Fh
	sub	edx,eax
	mov	eax,edx
	mov	[rbp+58h],eax
	lea	rdx,[rbp+58h]
	lea	rax,[rbp+50h]
	mov	rcx,rax
	call	4691C0h
	lea	rax,[rbp+50h]
	mov	rcx,rax
	call	454950h
	add	dword ptr [rbp+7Ch],1h

l0000000000401E1E:
	cmp	dword ptr [rbp+7Ch],9h
	jle	401BB2h

l0000000000401E28:
	mov	eax,[rbp-3Ch]
	mov	[rbp+10h],eax
	mov	eax,[rbp-38h]
	mov	[rbp+14h],eax
	movzx	eax,byte ptr [rbp+1Fh]
	movsx	eax,al
	cmp	eax,4Ch
	jz	401F00h

l0000000000401E44:
	cmp	eax,4Ch
	jg	401E57h

l0000000000401E49:
	cmp	eax,44h
	jz	40202Ch

l0000000000401E52:
	jmp	4020BBh

l0000000000401E57:
	cmp	eax,52h
	jz	401E6Ah

l0000000000401E5C:
	cmp	eax,55h
	jz	401F96h

l0000000000401E65:
	jmp	4020BBh

l0000000000401E6A:
	mov	eax,[00000000004AD038]                                 ; [rip+000AB1C8]
	mov	[rbp+84h],eax
	mov	eax,[rbp-60h]
	cmp	eax,4Ch
	jnz	401EECh

l0000000000401E7E:
	movzx	eax,[00000000004AD030]                               ; [rip+000AB1AB]
	test	al,al
	jz	401EE0h

l0000000000401E89:
	mov	word ptr [rbp+30h],28h
	mov	word ptr [rbp+32h],1h
	mov	edx,[rbp+30h]
	mov	rax,[rbp+60h]
	mov	rcx,rax
	mov	rax,[00000000004AF664]                                 ; [rip+000AD7BE]
	call	rax
	lea	rdx,[00000000004AD058]                                 ; [rip+000AB1A9]
	mov	rcx,[0000000000491AD0]                                 ; [rip+0008FC1A]
	call	473B00h
	lea	rdx,[000000000048D08C]                                 ; [rip+0008B1CA]
	mov	rcx,rax
	call	4738C0h
	lea	rcx,[000000000048D096]                                 ; [rip+0008B1C5]
	call	41BD18h
	call	41BCF0h
	jmp	4024C9h

l0000000000401EE0:
	mov	dword ptr [rbp+0h],2h
	jmp	4020BBh

l0000000000401EEC:
	mov	eax,[rbp-60h]
	lea	edx,[rax+1h]
	mov	eax,[rbp-5Ch]
	mov	[rbp+0h],edx
	mov	[rbp+4h],eax
	jmp	4020BBh

l0000000000401F00:
	mov	eax,[00000000004AD038]                                 ; [rip+000AB132]
	mov	[rbp+84h],eax
	mov	eax,[rbp-60h]
	cmp	eax,2h
	jnz	401F82h

l0000000000401F14:
	movzx	eax,[00000000004AD030]                               ; [rip+000AB115]
	test	al,al
	jz	401F76h

l0000000000401F1F:
	mov	word ptr [rbp+30h],28h
	mov	word ptr [rbp+32h],1h
	mov	edx,[rbp+30h]
	mov	rax,[rbp+60h]
	mov	rcx,rax
	mov	rax,[00000000004AF664]                                 ; [rip+000AD728]
	call	rax
	lea	rdx,[00000000004AD058]                                 ; [rip+000AB113]
	mov	rcx,[0000000000491AD0]                                 ; [rip+0008FB84]
	call	473B00h
	lea	rdx,[000000000048D08C]                                 ; [rip+0008B134]
	mov	rcx,rax
	call	4738C0h
	lea	rcx,[000000000048D096]                                 ; [rip+0008B12F]
	call	41BD18h
	call	41BCF0h
	jmp	4024C9h

l0000000000401F76:
	mov	dword ptr [rbp+0h],4Ch
	jmp	4020BBh

l0000000000401F82:
	mov	eax,[rbp-60h]
	lea	edx,[rax-1h]
	mov	eax,[rbp-5Ch]
	mov	[rbp+0h],edx
	mov	[rbp+4h],eax
	jmp	4020BBh

l0000000000401F96:
	mov	eax,[00000000004AD034]                                 ; [rip+000AB098]
	mov	[rbp+84h],eax
	mov	eax,[rbp-5Ch]
	cmp	eax,3h
	jnz	402018h

l0000000000401FAA:
	movzx	eax,[00000000004AD030]                               ; [rip+000AB07F]
	test	al,al
	jz	40200Ch

l0000000000401FB5:
	mov	word ptr [rbp+30h],28h
	mov	word ptr [rbp+32h],1h
	mov	edx,[rbp+30h]
	mov	rax,[rbp+60h]
	mov	rcx,rax
	mov	rax,[00000000004AF664]                                 ; [rip+000AD692]
	call	rax
	lea	rdx,[00000000004AD058]                                 ; [rip+000AB07D]
	mov	rcx,[0000000000491AD0]                                 ; [rip+0008FAEE]
	call	473B00h
	lea	rdx,[000000000048D08C]                                 ; [rip+0008B09E]
	mov	rcx,rax
	call	4738C0h
	lea	rcx,[000000000048D096]                                 ; [rip+0008B099]
	call	41BD18h
	call	41BCF0h
	jmp	4024C9h

l000000000040200C:
	mov	dword ptr [rbp+4h],14h
	jmp	4020BBh

l0000000000402018:
	mov	eax,[rbp-60h]
	mov	edx,[rbp-5Ch]
	sub	edx,1h
	mov	[rbp+0h],eax
	mov	[rbp+4h],edx
	jmp	4020BBh

l000000000040202C:
	mov	eax,[00000000004AD034]                                 ; [rip+000AB002]
	mov	[rbp+84h],eax
	mov	eax,[rbp-5Ch]
	cmp	eax,14h
	jnz	4020ABh

l0000000000402040:
	movzx	eax,[00000000004AD030]                               ; [rip+000AAFE9]
	test	al,al
	jz	4020A2h

l000000000040204B:
	mov	word ptr [rbp+30h],28h
	mov	word ptr [rbp+32h],1h
	mov	edx,[rbp+30h]
	mov	rax,[rbp+60h]
	mov	rcx,rax
	mov	rax,[00000000004AF664]                                 ; [rip+000AD5FC]
	call	rax
	lea	rdx,[00000000004AD058]                                 ; [rip+000AAFE7]
	mov	rcx,[0000000000491AD0]                                 ; [rip+0008FA58]
	call	473B00h
	lea	rdx,[000000000048D08C]                                 ; [rip+0008B008]
	mov	rcx,rax
	call	4738C0h
	lea	rcx,[000000000048D096]                                 ; [rip+0008B003]
	call	41BD18h
	call	41BCF0h
	jmp	4024C9h

l00000000004020A2:
	mov	dword ptr [rbp+4h],3h
	jmp	4020BBh

l00000000004020AB:
	mov	eax,[rbp-60h]
	mov	edx,[rbp-5Ch]
	add	edx,1h
	mov	[rbp+0h],eax
	mov	[rbp+4h],edx
	nop

l00000000004020BB:
	mov	rdx,[rbp+0h]
	lea	rax,[rbp-60h]
	mov	rcx,rax
	call	424550h
	lea	rax,[rbp-60h]
	lea	rdx,[rax+24h]
	lea	rax,[rbp-60h]
	mov	rcx,rax
	call	424400h
	test	al,al
	jz	40213Ah

l00000000004020E3:
	mov	word ptr [rbp+30h],28h
	mov	word ptr [rbp+32h],1h
	mov	edx,[rbp+30h]
	mov	rax,[rbp+60h]
	mov	rcx,rax
	mov	rax,[00000000004AF664]                                 ; [rip+000AD564]
	call	rax
	lea	rdx,[00000000004AD058]                                 ; [rip+000AAF4F]
	mov	rcx,[0000000000491AD0]                                 ; [rip+0008F9C0]
	call	473B00h
	lea	rdx,[000000000048D08C]                                 ; [rip+0008AF70]
	mov	rcx,rax
	call	4738C0h
	lea	rcx,[000000000048D096]                                 ; [rip+0008AF6B]
	call	41BD18h
	call	41BCF0h
	jmp	4024C9h

l000000000040213A:
	mov	dword ptr [rbp+78h],0h
	jmp	4021C9h

l0000000000402146:
	mov	eax,[rbp+78h]
	cdqe
	lea	rdx,[rbp-60h]
	lea	rcx,[rdx+8h]
	mov	rdx,rax
	call	46B700h
	mov	rdx,rax
	lea	rax,[rbp-60h]
	mov	rcx,rax
	call	424400h
	test	al,al
	jz	4021C5h

l000000000040216E:
	mov	word ptr [rbp+30h],28h
	mov	word ptr [rbp+32h],1h
	mov	edx,[rbp+30h]
	mov	rax,[rbp+60h]
	mov	rcx,rax
	mov	rax,[00000000004AF664]                                 ; [rip+000AD4D9]
	call	rax
	lea	rdx,[00000000004AD058]                                 ; [rip+000AAEC4]
	mov	rcx,[0000000000491AD0]                                 ; [rip+0008F935]
	call	473B00h
	lea	rdx,[000000000048D08C]                                 ; [rip+0008AEE5]
	mov	rcx,rax
	call	4738C0h
	lea	rcx,[000000000048D096]                                 ; [rip+0008AEE0]
	call	41BD18h
	call	41BCF0h
	jmp	4024C9h

l00000000004021C5:
	add	dword ptr [rbp+78h],1h

l00000000004021C9:
	mov	eax,[rbp-40h]
	cmp	eax,[rbp+78h]
	jg	402146h

l00000000004021D5:
	mov	eax,[rbp+10h]
	mov	[rbp+30h],ax
	mov	eax,[rbp+14h]
	mov	[rbp+32h],ax
	mov	edx,[rbp+30h]
	mov	rax,[rbp+60h]
	mov	rcx,rax
	mov	rax,[00000000004AF664]                                 ; [rip+000AD470]
	call	rax
	lea	rdx,[000000000048D0AB]                                 ; [rip+0008AEAE]
	mov	rcx,[0000000000491AD0]                                 ; [rip+0008F8CC]
	call	4738C0h
	mov	eax,[rbp-60h]
	mov	[rbp+30h],ax
	mov	eax,[rbp-5Ch]
	mov	[rbp+32h],ax
	mov	edx,[rbp+30h]
	mov	rax,[rbp+60h]
	mov	rcx,rax
	mov	rax,[00000000004AF664]                                 ; [rip+000AD43C]
	call	rax
	movzx	eax,byte ptr [rbp-34h]
	movsx	eax,al
	mov	edx,eax
	mov	rcx,[0000000000491AD0]                                 ; [rip+0008F896]
	call	473980h
	mov	dword ptr [rbp+74h],0h
	jmp	4022BFh

l0000000000402248:
	mov	eax,[rbp+74h]
	cdqe
	lea	rdx,[rbp-60h]
	lea	rcx,[rdx+8h]
	mov	rdx,rax
	call	46B700h
	mov	eax,[rax]
	mov	[rbp+30h],ax
	mov	eax,[rbp+74h]
	cdqe
	lea	rdx,[rbp-60h]
	lea	rcx,[rdx+8h]
	mov	rdx,rax
	call	46B700h
	mov	eax,[rax+4h]
	mov	[rbp+32h],ax
	mov	edx,[rbp+30h]
	mov	rax,[rbp+60h]
	mov	rcx,rax
	mov	rax,[00000000004AF664]                                 ; [rip+000AD3D4]
	call	rax
	mov	eax,[rbp+74h]
	cdqe
	lea	rdx,[rbp-60h]
	lea	rcx,[rdx+38h]
	mov	rdx,rax
	call	46BBA0h
	movzx	eax,byte ptr [rax]
	movsx	eax,al
	mov	edx,eax
	mov	rcx,[0000000000491AD0]                                 ; [rip+0008F81A]
	call	473980h
	add	dword ptr [rbp+74h],1h

l00000000004022BF:
	mov	eax,[rbp-40h]
	cmp	eax,[rbp+74h]
	jg	402248h

l00000000004022C7:
	mov	eax,[rbp-3Ch]
	mov	[rbp+30h],ax
	mov	eax,[rbp-38h]
	mov	[rbp+32h],ax
	mov	edx,[rbp+30h]
	mov	rax,[rbp+60h]
	mov	rcx,rax
	mov	rax,[00000000004AF664]                                 ; [rip+000AD37E]
	call	rax
	movzx	eax,byte ptr [rbp-10h]
	movsx	eax,al
	mov	edx,eax
	mov	rcx,[0000000000491AD0]                                 ; [rip+0008F7D8]
	call	473980h
	lea	rdx,[rbp+20h]
	lea	rax,[rbp-60h]
	mov	rcx,rax
	call	424400h
	test	al,al
	jz	4024A5h

l0000000000402315:
	mov	eax,[rbp+3Ch]
	add	eax,1h
	mov	[rbp+3Ch],eax
	mov	word ptr [rbp+30h],0Fh
	mov	word ptr [rbp+32h],1h
	mov	edx,[rbp+30h]
	mov	rax,[rbp+60h]
	mov	rcx,rax
	mov	rax,[00000000004AF664]                                 ; [rip+000AD329]
	call	rax
	mov	ebx,[rbp+3Ch]
	lea	rdx,[00000000004AD040]                                 ; [rip+000AACF9]
	mov	rcx,[0000000000491AD0]                                 ; [rip+0008F782]
	call	473B00h
	mov	edx,ebx
	mov	rcx,rax
	call	4504B0h
	lea	rax,[rbp-60h]
	mov	rcx,rax
	call	424440h

l0000000000402369:
	call	41BD08h
	mov	ecx,eax
	mov	edx,0DD67C8A7h
	mov	eax,ecx
	imul	edx
	lea	eax,[rdx+rcx]
	sar	eax,6h
	mov	edx,eax
	mov	eax,ecx
	sar	eax,1Fh
	sub	edx,eax
	mov	eax,edx
	imul	eax,eax,4Ah
	sub	ecx,eax
	mov	eax,ecx
	add	eax,2h
	mov	[rbp+20h],eax
	call	41BD08h
	mov	ecx,eax
	mov	edx,78787879h
	mov	eax,ecx
	imul	edx
	sar	edx,3h
	mov	eax,ecx
	sar	eax,1Fh
	sub	edx,eax
	mov	eax,edx
	mov	edx,eax
	shl	edx,4h
	add	edx,eax
	mov	eax,ecx
	sub	eax,edx
	add	eax,3h
	mov	[rbp+24h],eax
	mov	byte ptr [rbp+73h],1h
	mov	edx,[rbp+20h]
	mov	eax,[rbp-60h]
	cmp	edx,eax
	jnz	4023E5h

l00000000004023D2:
	mov	edx,[rbp+24h]
	mov	eax,[rbp-5Ch]
	cmp	edx,eax
	jnz	4023E5h

l00000000004023DC:
	mov	byte ptr [rbp+73h],0h
	jmp	402465h

l00000000004023E5:
	mov	edx,[rbp+20h]
	mov	eax,[rbp-3Ch]
	cmp	edx,eax
	jnz	4023FFh

l00000000004023EF:
	mov	edx,[rbp+24h]
	mov	eax,[rbp-38h]
	cmp	edx,eax
	jnz	4023FFh

l00000000004023F9:
	mov	byte ptr [rbp+73h],0h
	jmp	402465h

l00000000004023FF:
	mov	dword ptr [rbp+6Ch],0h
	jmp	40245Dh

l0000000000402408:
	mov	ebx,[rbp+20h]
	mov	eax,[rbp+6Ch]
	cdqe
	lea	rdx,[rbp-60h]
	lea	rcx,[rdx+8h]
	mov	rdx,rax
	call	46B700h
	mov	eax,[rax]
	cmp	ebx,eax
	jnz	40244Ch

l0000000000402426:
	mov	ebx,[rbp+24h]
	mov	eax,[rbp+6Ch]
	cdqe
	lea	rdx,[rbp-60h]
	lea	rcx,[rdx+8h]
	mov	rdx,rax
	call	46B700h
	mov	eax,[rax+4h]
	cmp	ebx,eax
	jnz	40244Ch

l0000000000402445:
	mov	eax,1h
	jmp	402451h

l000000000040244C:
	mov	eax,0h

l0000000000402451:
	test	al,al
	jz	402459h

l0000000000402455:
	mov	byte ptr [rbp+73h],0h

l0000000000402459:
	add	dword ptr [rbp+6Ch],1h

l000000000040245D:
	mov	eax,[rbp-40h]
	cmp	eax,[rbp+6Ch]
	jg	402408h

l0000000000402465:
	cmp	byte ptr [rbp+73h],0h
	jz	40248Fh

l000000000040246B:
	nop
	mov	eax,[rbp+20h]
	mov	[rbp+30h],ax
	mov	eax,[rbp+24h]
	mov	[rbp+32h],ax
	mov	edx,[rbp+30h]
	mov	rax,[rbp+60h]
	mov	rcx,rax
	mov	rax,[00000000004AF664]                                 ; [rip+000AD1D9]
	call	rax
	jmp	402494h

l000000000040248F:
	jmp	402369h

l0000000000402494:
	mov	edx,0FFFFFFA6h
	mov	rcx,[0000000000491AD0]                                 ; [rip+0008F630]
	call	473980h

l00000000004024A5:
	mov	word ptr [rbp+30h],0h
	mov	word ptr [rbp+32h],0h
	mov	edx,[rbp+30h]
	mov	rax,[rbp+60h]
	mov	rcx,rax
	mov	rax,[00000000004AF664]                                 ; [rip+000AD1A2]
	call	rax
	jmp	401B9Fh

l00000000004024C9:
	lea	rax,[rbp-60h]
	mov	rcx,rax
	call	424980h
	jmp	4024F2h
00000000004024D7                      48 89 C3 48 8D 45 A0 48 89        H..H.E.H.
00000000004024E0 C1 E8 9A 24 02 00 48 89 D8 48 89 C1 E8 BF F0 00 ...$..H..H......
00000000004024F0 00 90                                           ..             

l00000000004024F2:
	add	rsp,+128h
	pop	rbx
	pop	rbp
	ret

;; fn00000000004024FC: 00000000004024FC
;;   Called from:
;;     00000000004013E3 (in fn00000000004011B0)
fn00000000004024FC proc
	push	rbp
	mov	rbp,rsp
	sub	rsp,20h
	mov	[rbp+10h],ecx
	mov	[rbp+18h],rdx
	call	410890h
	lea	rcx,[000000000048D0AD]                                 ; [rip+0008AB96]
	call	41BD20h
	call	40252Ch
	mov	eax,0h
	add	rsp,20h
	pop	rbp
	ret

;; fn000000000040252C: 000000000040252C
;;   Called from:
;;     000000000040251C (in fn00000000004024FC)
fn000000000040252C proc
	push	rbp
	push	rbx
	sub	rsp,+258h
	lea	rbp,[rsp+80h]

l000000000040253D:
	mov	ecx,0FFFFFFF5h
	mov	rax,[00000000004AF5C4]                                 ; [rip+000AD07B]
	call	rax
	mov	[rbp+1C0h],rax
	mov	dword ptr [rbp+1BCh],0Eh
	mov	dword ptr [rbp+1B8h],0Ah
	mov	dword ptr [rbp+1B4h],4h
	lea	rcx,[000000000048D003]                                 ; [rip+0008AA8C]
	call	41BCE8h
	mov	word ptr [rbp+180h],0h
	mov	word ptr [rbp+182h],0h
	lea	rdx,[000000000048D0B4]                                 ; [rip+0008AB1F]
	mov	rcx,[0000000000491AD0]                                 ; [rip+0008F534]
	call	4738C0h
	lea	rdx,[000000000048D0B8]                                 ; [rip+0008AB10]
	mov	rcx,[0000000000491AD0]                                 ; [rip+0008F521]
	call	4738C0h
	lea	rdx,[000000000048D211]                                 ; [rip+0008AC56]
	mov	rcx,[0000000000491AD0]                                 ; [rip+0008F50E]
	call	4738C0h
	lea	rdx,[000000000048D220]                                 ; [rip+0008AC52]
	mov	rcx,[0000000000491AD0]                                 ; [rip+0008F4FB]
	call	4738C0h
	lea	rdx,[000000000048D230]                                 ; [rip+0008AC4F]
	mov	rcx,[0000000000491AD0]                                 ; [rip+0008F4E8]
	call	4738C0h
	lea	rdx,[000000000048D23D]                                 ; [rip+0008AC49]
	mov	rcx,[0000000000491AD0]                                 ; [rip+0008F4D5]
	call	4738C0h
	mov	word ptr [rbp+180h],24h
	mov	word ptr [rbp+182h],0Ah
	mov	edx,[rbp+180h]
	mov	rax,[rbp+1C0h]
	mov	rcx,rax
	mov	rax,[00000000004AF664]                                 ; [rip+000AD03B]
	call	rax
	lea	rdx,[000000000048D246]                                 ; [rip+0008AC14]
	mov	rcx,[0000000000491AD0]                                 ; [rip+0008F497]
	call	4738C0h
	mov	word ptr [rbp+180h],2Ch
	mov	word ptr [rbp+182h],0Ch
	mov	edx,[rbp+180h]
	mov	rax,[rbp+1C0h]
	mov	rcx,rax
	mov	rax,[00000000004AF664]                                 ; [rip+000ACFFD]
	call	rax
	lea	rdx,[000000000048D255]                                 ; [rip+0008ABE5]
	mov	rcx,[0000000000491AD0]                                 ; [rip+0008F459]
	call	4738C0h
	lea	rax,[rbp-60h]
	mov	r8d,4h
	lea	rdx,[000000000048D26F]                                 ; [rip+0008ABE2]
	mov	rcx,rax
	call	45F530h
	lea	rax,[rbp-60h]
	add	rax,+0D0h
	mov	rcx,rax
	call	4423E0h
	test	al,al
	jz	4026E9h

l00000000004026AB:
	mov	word ptr [rbp+180h],0Eh
	mov	word ptr [rbp+182h],16h
	mov	edx,[rbp+180h]
	mov	rax,[rbp+1C0h]
	mov	rcx,rax
	mov	rax,[00000000004AF664]                                 ; [rip+000ACF90]
	call	rax
	lea	rdx,[000000000048D283]                                 ; [rip+0008ABA6]
	mov	rcx,[0000000000491AD0]                                 ; [rip+0008F3EC]
	call	4738C0h

l00000000004026E9:
	mov	edx,4h
	lea	rax,[rbp-60h]
	mov	r8,rdx
	lea	rdx,[0000000000477010]                                 ; [rip+00074914]
	mov	rcx,rax
	call	44CAB0h
	mov	edx,1h
	lea	rax,[rbp-60h]
	mov	r8,rdx
	lea	rdx,[00000000004AD030]                                 ; [rip+000AA919]
	mov	rcx,rax
	call	44CAB0h
	mov	eax,[0000000000477010]                                 ; [rip+000748EB]
	cmp	eax,1h
	jnz	402753h

l000000000040272A:
	mov	eax,[0000000000477010]                                 ; [rip+000748E0]
	imul	eax,eax,64h
	mov	[00000000004AD034],eax                                 ; [rip+000AA8FB]
	mov	edx,[0000000000477010]                                 ; [rip+000748D1]
	mov	eax,[00000000004AD034]                                 ; [rip+000AA8EF]
	imul	eax,edx
	sub	eax,1Eh
	mov	[00000000004AD038],eax                                 ; [rip+000AA8E7]
	jmp	40278Eh

l0000000000402753:
	mov	eax,[0000000000477010]                                 ; [rip+000748B7]
	imul	eax,eax,64h
	mov	[00000000004AD034],eax                                 ; [rip+000AA8D2]
	mov	edx,[0000000000477010]                                 ; [rip+000748A8]
	mov	eax,[00000000004AD034]                                 ; [rip+000AA8C6]
	mov	ecx,edx
	imul	ecx,eax
	mov	edx,55555556h
	mov	eax,ecx
	imul	edx
	mov	eax,ecx
	sar	eax,1Fh
	sub	edx,eax
	mov	eax,edx
	sub	eax,32h
	mov	[00000000004AD038],eax                                 ; [rip+000AA8AA]

l000000000040278E:
	lea	rax,[rbp-60h]
	mov	rcx,rax
	call	45FBD0h
	mov	dword ptr [rbp+1CCh],1h

l00000000004027A4:
	mov	word ptr [rbp+180h],0Eh
	mov	eax,[rbp+1CCh]
	add	eax,5h
	add	eax,eax
	mov	[rbp+182h],ax
	mov	edx,[rbp+180h]
	mov	rax,[rbp+1C0h]
	mov	rcx,rax
	mov	rax,[00000000004AF664]                                 ; [rip+000ACE8E]
	call	rax
	lea	rdx,[000000000048D2A0]                                 ; [rip+0008AAC1]
	mov	rcx,[0000000000491AD0]                                 ; [rip+0008F2EA]
	call	4738C0h
	call	41BCF0h
	mov	[rbp+1B3h],al
	movsx	eax,byte ptr [rbp+1B3h]
	cmp	eax,48h
	jz	402819h

l0000000000402802:
	cmp	eax,50h
	jz	402890h

l000000000040280B:
	cmp	eax,0Dh
	jz	402907h

l0000000000402814:
	jmp	402A08h

l0000000000402819:
	mov	word ptr [rbp+180h],0Eh
	mov	eax,[rbp+1CCh]
	add	eax,5h
	add	eax,eax
	mov	[rbp+182h],ax
	mov	edx,[rbp+180h]
	mov	rax,[rbp+1C0h]
	mov	rcx,rax
	mov	rax,[00000000004AF664]                                 ; [rip+000ACE19]
	call	rax
	lea	rdx,[000000000048D2A3]                                 ; [rip+0008AA4F]
	mov	rcx,[0000000000491AD0]                                 ; [rip+0008F275]
	call	4738C0h
	cmp	dword ptr [rbp+1CCh],1h
	jnz	402875h

l0000000000402869:
	mov	dword ptr [rbp+1CCh],4h
	jmp	40287Ch

l0000000000402875:
	sub	dword ptr [rbp+1CCh],1h

l000000000040287C:
	mov	eax,[rbp+1CCh]
	add	eax,eax
	mov	[rbp+182h],ax
	jmp	402A08h

l0000000000402890:
	mov	word ptr [rbp+180h],0Eh
	mov	eax,[rbp+1CCh]
	add	eax,5h
	add	eax,eax
	mov	[rbp+182h],ax
	mov	edx,[rbp+180h]
	mov	rax,[rbp+1C0h]
	mov	rcx,rax
	mov	rax,[00000000004AF664]                                 ; [rip+000ACDA2]
	call	rax
	lea	rdx,[000000000048D2A3]                                 ; [rip+0008A9D8]
	mov	rcx,[0000000000491AD0]                                 ; [rip+0008F1FE]
	call	4738C0h
	cmp	dword ptr [rbp+1CCh],4h
	jnz	4028ECh

l00000000004028E0:
	mov	dword ptr [rbp+1CCh],1h
	jmp	4028F3h

l00000000004028EC:
	add	dword ptr [rbp+1CCh],1h

l00000000004028F3:
	mov	eax,[rbp+1CCh]
	add	eax,eax
	mov	[rbp+182h],ax
	jmp	402A08h

l0000000000402907:
	mov	eax,[rbp+1CCh]
	cmp	eax,2h
	jz	40299Dh

l0000000000402916:
	cmp	eax,2h
	jg	402925h

l000000000040291B:
	cmp	eax,1h
	jz	40293Ch

l0000000000402920:
	jmp	402A08h

l0000000000402925:
	cmp	eax,3h
	jz	4029FEh

l000000000040292E:
	cmp	eax,4h
	jz	402A89h

l0000000000402937:
	jmp	402A08h

l000000000040293C:
	lea	rax,[rbp+19Fh]
	mov	rcx,rax
	call	448D80h
	lea	rdx,[rbp+19Fh]
	lea	rax,[rbp+190h]
	mov	r8,rdx
	lea	rdx,[000000000048D2A6]                                 ; [rip+0008A943]
	mov	rcx,rax
	call	451EA0h
	lea	rax,[rbp+190h]
	mov	rcx,rax
	call	401530h
	lea	rax,[rbp+190h]
	mov	rcx,rax
	call	452410h
	lea	rax,[rbp+19Fh]
	mov	rcx,rax
	call	448DB0h
	jmp	40253Dh

l000000000040299D:
	lea	rax,[rbp+1B2h]
	mov	rcx,rax
	call	448D80h
	lea	rdx,[rbp+1B2h]
	lea	rax,[rbp+1A0h]
	mov	r8,rdx
	lea	rdx,[000000000048D00B]                                 ; [rip+0008A647]
	mov	rcx,rax
	call	451EA0h
	lea	rax,[rbp+1A0h]
	mov	rcx,rax
	call	401530h
	lea	rax,[rbp+1A0h]
	mov	rcx,rax
	call	452410h
	lea	rax,[rbp+1B2h]
	mov	rcx,rax
	call	448DB0h
	jmp	40253Dh

l00000000004029FE:
	call	402E6Fh
	jmp	40253Dh

l0000000000402A08:
	jmp	4027A4h
0000000000402A0D                                        48 89 C3              H..
0000000000402A10 48 8D 45 A0 48 89 C1 E8 B4 D1 05 00 48 89 D8 48 H.E.H.......H..H
0000000000402A20 89 C1 E8 89 EB 00 00 48 89 C3 48 8D 85 90 01 00 .......H..H.....
0000000000402A30 00 48 89 C1 E8 D7 F9 04 00 EB 03 48 89 C3 48 8D .H.........H..H.
0000000000402A40 85 9F 01 00 00 48 89 C1 E8 63 63 04 00 48 89 D8 .....H...cc..H..
0000000000402A50 48 89 C1 E8 58 EB 00 00 48 89 C3 48 8D 85 A0 01 H...X...H..H....
0000000000402A60 00 00 48 89 C1 E8 A6 F9 04 00 EB 03 48 89 C3 48 ..H.........H..H
0000000000402A70 8D 85 B2 01 00 00 48 89 C1 E8 32 63 04 00 48 89 ......H...2c..H.
0000000000402A80 D8 48 89 C1 E8 27 EB 00 00                      .H...'...      

l0000000000402A89:
	nop
	add	rsp,+258h
	pop	rbx
	pop	rbp
	ret

;; fn0000000000402A94: 0000000000402A94
;;   Called from:
;;     0000000000401C9C (in fn0000000000401530)
fn0000000000402A94 proc
	push	rbp
	push	rbx
	sub	rsp,+208h
	lea	rbp,[rsp+80h]
	mov	[rbp+1A0h],rcx
	mov	[rbp+1A8h],rdx
	mov	[rbp+1B0h],r8
	mov	[rbp+1B8h],r9
	lea	rax,[rbp-60h]
	mov	r8d,4h
	lea	rdx,[000000000048D096]                                 ; [rip+0008A5C4]
	mov	rcx,rax
	call	460A00h
	lea	rax,[rbp-60h]
	add	rax,+0C8h
	mov	rcx,rax
	call	4423E0h
	test	al,al
	jz	402B0Dh

l0000000000402AF0:
	lea	rdx,[000000000048D2B0]                                 ; [rip+0008A7B9]
	mov	rcx,[0000000000491AD0]                                 ; [rip+0008EFD2]
	call	4738C0h
	mov	ebx,0h
	jmp	402C13h

l0000000000402B0D:
	mov	edx,4h
	lea	rax,[rbp-60h]
	mov	r8,rdx
	mov	rdx,[rbp+1A0h]
	mov	rcx,rax
	call	44EC10h
	mov	ecx,8h
	mov	rdx,[rbp+1A8h]
	lea	rax,[rbp-60h]
	mov	r8,rcx
	mov	rcx,rax
	call	44EC10h
	mov	ecx,1h
	mov	rdx,[rbp+1B0h]
	lea	rax,[rbp-60h]
	mov	r8,rcx
	mov	rcx,rax
	call	44EC10h
	mov	ecx,8h
	mov	rdx,[rbp+1B8h]
	lea	rax,[rbp-60h]
	mov	r8,rcx
	mov	rcx,rax
	call	44EC10h
	mov	ecx,4h
	mov	rax,[rbp+1B8h]
	lea	rdx,[rax+20h]
	lea	rax,[rbp-60h]
	mov	r8,rcx
	mov	rcx,rax
	call	44EC10h
	mov	dword ptr [rbp+17Ch],0h
	jmp	402BDDh

l0000000000402BA4:
	mov	ebx,8h
	mov	eax,[rbp+17Ch]
	cdqe
	mov	rdx,[rbp+1B8h]
	lea	rcx,[rdx+8h]
	mov	rdx,rax
	call	42C0B0h
	mov	rdx,rax
	lea	rax,[rbp-60h]
	mov	r8,rbx
	mov	rcx,rax
	call	44EC10h
	add	dword ptr [rbp+17Ch],1h

l0000000000402BDD:
	mov	rax,[rbp+1B8h]
	mov	eax,[rax+20h]
	cmp	eax,[rbp+17Ch]
	jg	402BA4h

l0000000000402BEF:
	mov	ecx,8h
	mov	rax,[rbp+1B8h]
	lea	rdx,[rax+24h]
	lea	rax,[rbp-60h]
	mov	r8,rcx
	mov	rcx,rax
	call	44EC10h
	mov	ebx,1h

l0000000000402C13:
	lea	rax,[rbp-60h]
	mov	rcx,rax
	call	461040h
	cmp	ebx,1h
	jz	402C26h

l0000000000402C24:
	jmp	402C44h

l0000000000402C26:
	nop
	jmp	402C44h
0000000000402C29                            48 89 C3 48 8D 45 A0          H..H.E.
0000000000402C30 48 89 C1 E8 08 E4 05 00 48 89 D8 48 89 C1 E8 6D H.......H..H...m
0000000000402C40 E9 00 00 90                                     ....           

l0000000000402C44:
	add	rsp,+208h
	pop	rbx
	pop	rbp
	ret

;; fn0000000000402C4E: 0000000000402C4E
;;   Called from:
;;     00000000004016D5 (in fn0000000000401530)
fn0000000000402C4E proc
	push	rbp
	push	rbx
	sub	rsp,+268h
	lea	rbp,[rsp+80h]
	mov	[rbp+200h],rcx
	mov	[rbp+208h],rdx
	mov	[rbp+210h],r8
	mov	[rbp+218h],r9
	lea	rax,[rbp-50h]
	mov	r8d,4h
	lea	rdx,[000000000048D096]                                 ; [rip+0008A40A]
	mov	rcx,rax
	call	45F530h
	lea	rax,[rbp-50h]
	add	rax,+0D0h
	mov	rcx,rax
	call	4423E0h
	test	al,al
	jz	402CB4h

l0000000000402CAA:
	mov	ebx,0h
	jmp	402E27h

l0000000000402CB4:
	mov	dword ptr [rbp+1D8h],0h
	mov	edx,4h
	lea	rax,[rbp-50h]
	mov	r8,rdx
	mov	rdx,[rbp+200h]
	mov	rcx,rax
	call	44CAB0h
	mov	ecx,8h
	mov	rdx,[rbp+208h]
	lea	rax,[rbp-50h]
	mov	r8,rcx
	mov	rcx,rax
	call	44CAB0h
	mov	ecx,1h
	mov	rdx,[rbp+210h]
	lea	rax,[rbp-50h]
	mov	r8,rcx
	mov	rcx,rax
	call	44CAB0h
	mov	ecx,8h
	lea	rdx,[rbp+1D0h]
	lea	rax,[rbp-50h]
	mov	r8,rcx
	mov	rcx,rax
	call	44CAB0h
	mov	dword ptr [rbp+1CCh],0h
	mov	ecx,4h
	lea	rdx,[rbp+1CCh]
	lea	rax,[rbp-50h]
	mov	r8,rcx
	mov	rcx,rax
	call	44CAB0h
	lea	rax,[rbp+1B0h]
	mov	rcx,rax
	call	46B690h
	mov	eax,[rbp+1CCh]
	movsxd	rdx,eax
	lea	rax,[rbp+1B0h]
	mov	rcx,rax
	call	46B4B0h
	mov	dword ptr [rbp+1DCh],0h
	jmp	402DBAh

l0000000000402D82:
	mov	ecx,8h
	lea	rdx,[rbp+190h]
	lea	rax,[rbp-50h]
	mov	r8,rcx
	mov	rcx,rax
	call	44CAB0h
	lea	rdx,[rbp+190h]
	lea	rax,[rbp+1B0h]
	mov	rcx,rax
	call	46B620h
	add	dword ptr [rbp+1DCh],1h

l0000000000402DBA:
	mov	eax,[rbp+1CCh]
	cmp	[rbp+1DCh],eax
	jl	402D82h

l0000000000402DC8:
	mov	ecx,8h
	lea	rdx,[rbp+1A0h]
	lea	rax,[rbp-50h]
	mov	r8,rcx
	mov	rcx,rax
	call	44CAB0h
	mov	r8d,[rbp+1CCh]
	lea	r9,[rbp+1B0h]
	lea	rdx,[rbp+1D0h]
	mov	rax,[rbp+218h]
	lea	rcx,[rbp+1A0h]
	mov	[rsp+20h],rcx
	mov	rcx,rax
	call	4247F0h
	mov	ebx,1h
	lea	rax,[rbp+1B0h]
	mov	rcx,rax
	call	46B6B0h

l0000000000402E27:
	lea	rax,[rbp-50h]
	mov	rcx,rax
	call	45FBD0h
	mov	eax,ebx
	jmp	402E65h
0000000000402E37                      48 89 C3 48 8D 85 B0 01 00        H..H.....
0000000000402E40 00 48 89 C1 E8 67 88 06 00 EB 03 48 89 C3 48 8D .H...g.....H..H.
0000000000402E50 45 B0 48 89 C1 E8 76 CD 05 00 48 89 D8 48 89 C1 E.H...v...H..H..
0000000000402E60 E8 4B E7 00 00                                  .K...          

l0000000000402E65:
	add	rsp,+268h
	pop	rbx
	pop	rbp
	ret

;; fn0000000000402E6F: 0000000000402E6F
;;   Called from:
;;     00000000004029FE (in fn000000000040252C)
fn0000000000402E6F proc
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,+248h
	lea	rbp,[rsp+80h]
	lea	rcx,[000000000048D003]                                 ; [rip+0008A17A]
	call	41BCE8h
	mov	dword ptr [rbp+1B8h],6h
	mov	dword ptr [rbp+1B4h],3h
	mov	dword ptr [rbp+1B0h],3h
	lea	rbx,[rbp+180h]
	mov	esi,2h
	lea	rax,[rbp+1A4h]
	mov	rcx,rax
	call	448D80h
	lea	rax,[rbp+1A4h]
	mov	r8,rax
	lea	rdx,[000000000048D2E9]                                 ; [rip+0008A411]
	mov	rcx,rbx
	call	451EA0h
	lea	rax,[rbp+1A4h]
	mov	rcx,rax
	call	448DB0h
	lea	rdi,[rbx+8h]
	sub	rsi,1h
	lea	rax,[rbp+1A5h]
	mov	rcx,rax
	call	448D80h
	lea	rax,[rbp+1A5h]
	mov	r8,rax
	lea	rdx,[000000000048D2F0]                                 ; [rip+0008A3D9]
	mov	rcx,rdi
	call	451EA0h
	lea	rax,[rbp+1A5h]
	mov	rcx,rax
	call	448DB0h
	add	rdi,8h
	sub	rsi,1h
	lea	rax,[rbp+1A6h]
	mov	rcx,rax
	call	448D80h
	lea	rax,[rbp+1A6h]
	mov	r8,rax
	lea	rdx,[000000000048D2F8]                                 ; [rip+0008A3A2]
	mov	rcx,rdi
	call	451EA0h
	lea	rax,[rbp+1A6h]
	mov	rcx,rax
	call	448DB0h
	mov	ecx,0FFFFFFF5h
	mov	rax,[00000000004AF5C4]                                 ; [rip+000AC64B]
	call	rax
	mov	[rbp+1A8h],rax
	mov	word ptr [rbp+170h],0h
	mov	word ptr [rbp+172h],0h
	lea	rdx,[000000000048D300]                                 ; [rip+0008A365]
	mov	rcx,[0000000000491AD0]                                 ; [rip+0008EB2E]
	call	4738C0h
	lea	rdx,[000000000048D312]                                 ; [rip+0008A364]
	mov	rcx,[0000000000491AD0]                                 ; [rip+0008EB1B]
	call	4738C0h
	lea	rdx,[000000000048D321]                                 ; [rip+0008A360]
	mov	rcx,[0000000000491AD0]                                 ; [rip+0008EB08]
	call	4738C0h
	lea	rdx,[000000000048D335]                                 ; [rip+0008A361]
	mov	rcx,[0000000000491AD0]                                 ; [rip+0008EAF5]
	call	4738C0h
	mov	dword ptr [rbp+1BCh],1h

l0000000000402FEA:
	lea	rax,[rbp-60h]
	mov	r8d,4h
	lea	rdx,[000000000048D26F]                                 ; [rip+0008A274]
	mov	rcx,rax
	call	460A00h
	lea	rax,[rbp-60h]
	add	rax,+0C8h
	mov	rcx,rax
	call	4423E0h
	test	al,al
	jz	403057h

l0000000000403019:
	mov	word ptr [rbp+170h],6h
	mov	word ptr [rbp+172h],0Dh
	mov	edx,[rbp+170h]
	mov	rax,[rbp+1A8h]
	mov	rcx,rax
	mov	rax,[00000000004AF664]                                 ; [rip+000AC622]
	call	rax
	lea	rdx,[000000000048D340]                                 ; [rip+0008A2F5]
	mov	rcx,[0000000000491AD0]                                 ; [rip+0008EA7E]
	call	4738C0h

l0000000000403057:
	mov	edx,4h
	lea	rax,[rbp-60h]
	mov	r8,rdx
	lea	rdx,[0000000000477010]                                 ; [rip+00073FA6]
	mov	rcx,rax
	call	44EC10h
	mov	edx,1h
	lea	rax,[rbp-60h]
	mov	r8,rdx
	lea	rdx,[00000000004AD030]                                 ; [rip+000A9FAB]
	mov	rcx,rax
	call	44EC10h
	lea	rax,[rbp-60h]
	mov	rcx,rax
	call	461040h
	mov	word ptr [rbp+170h],24h
	mov	word ptr [rbp+172h],5h
	mov	edx,[rbp+170h]
	mov	rax,[rbp+1A8h]
	mov	rcx,rax
	mov	rax,[00000000004AF664]                                 ; [rip+000AC5A2]
	call	rax
	mov	eax,[0000000000477010]                                 ; [rip+00073F46]
	lea	edx,[rax-1h]
	lea	rax,[rbp+180h]
	movsxd	rdx,edx
	shl	rdx,3h
	add	rax,rdx
	mov	rdx,rax
	mov	rcx,[0000000000491AD0]                                 ; [rip+0008E9E8]
	call	473B00h
	mov	word ptr [rbp+170h],24h
	mov	word ptr [rbp+172h],7h
	mov	edx,[rbp+170h]
	mov	rax,[rbp+1A8h]
	mov	rcx,rax
	mov	rax,[00000000004AF664]                                 ; [rip+000AC54E]
	call	rax
	movzx	eax,[00000000004AD030]                               ; [rip+000A9F11]
	xor	eax,1h
	test	al,al
	jz	40312Fh

l0000000000403126:
	lea	rax,[000000000048D372]                                 ; [rip+0008A245]
	jmp	403136h

l000000000040312F:
	lea	rax,[000000000048D376]                                 ; [rip+0008A240]

l0000000000403136:
	mov	rdx,rax
	mov	rcx,[0000000000491AD0]                                 ; [rip+0008E990]
	call	4738C0h
	mov	word ptr [rbp+170h],6h
	mov	eax,[rbp+1BCh]
	add	eax,eax
	add	eax,3h
	mov	[rbp+172h],ax
	mov	edx,[rbp+170h]
	mov	rax,[rbp+1A8h]
	mov	rcx,rax
	mov	rax,[00000000004AF664]                                 ; [rip+000AC4ED]
	call	rax
	lea	rdx,[000000000048D2A0]                                 ; [rip+0008A120]
	mov	rcx,[0000000000491AD0]                                 ; [rip+0008E949]
	call	4738C0h
	call	41BCF0h
	mov	[rbp+1A7h],al
	movsx	eax,byte ptr [rbp+1A7h]
	cmp	eax,48h
	jz	4031EEh

l00000000004031A3:
	cmp	eax,48h
	jg	4031BBh

l00000000004031A8:
	cmp	eax,0Dh
	jz	4031DBh

l00000000004031AD:
	cmp	eax,1Bh
	jz	4033C9h

l00000000004031B6:
	jmp	4033C4h

l00000000004031BB:
	cmp	eax,4Dh
	jz	403352h

l00000000004031C4:
	cmp	eax,50h
	jz	403265h

l00000000004031CD:
	cmp	eax,4Bh
	jz	4032DCh

l00000000004031D6:
	jmp	4033C4h

l00000000004031DB:
	cmp	dword ptr [rbp+1BCh],3h
	jnz	4031E9h

l00000000004031E4:
	jmp	4033CAh

l00000000004031E9:
	jmp	4033C4h

l00000000004031EE:
	mov	word ptr [rbp+170h],6h
	mov	eax,[rbp+1BCh]
	add	eax,eax
	add	eax,3h
	mov	[rbp+172h],ax
	mov	edx,[rbp+170h]
	mov	rax,[rbp+1A8h]
	mov	rcx,rax
	mov	rax,[00000000004AF664]                                 ; [rip+000AC444]
	call	rax
	lea	rdx,[000000000048D2A3]                                 ; [rip+0008A07A]
	mov	rcx,[0000000000491AD0]                                 ; [rip+0008E8A0]
	call	4738C0h
	cmp	dword ptr [rbp+1BCh],1h
	jnz	40324Ah

l000000000040323E:
	mov	dword ptr [rbp+1BCh],3h
	jmp	403251h

l000000000040324A:
	sub	dword ptr [rbp+1BCh],1h

l0000000000403251:
	mov	eax,[rbp+1BCh]
	add	eax,eax
	mov	[rbp+172h],ax
	jmp	4033C4h

l0000000000403265:
	mov	word ptr [rbp+170h],6h
	mov	eax,[rbp+1BCh]
	add	eax,eax
	add	eax,3h
	mov	[rbp+172h],ax
	mov	edx,[rbp+170h]
	mov	rax,[rbp+1A8h]
	mov	rcx,rax
	mov	rax,[00000000004AF664]                                 ; [rip+000AC3CD]
	call	rax
	lea	rdx,[000000000048D2A3]                                 ; [rip+0008A003]
	mov	rcx,[0000000000491AD0]                                 ; [rip+0008E829]
	call	4738C0h
	cmp	dword ptr [rbp+1BCh],3h
	jnz	4032C1h

l00000000004032B5:
	mov	dword ptr [rbp+1BCh],1h
	jmp	4032C8h

l00000000004032C1:
	add	dword ptr [rbp+1BCh],1h

l00000000004032C8:
	mov	eax,[rbp+1BCh]
	add	eax,eax
	mov	[rbp+172h],ax
	jmp	4033C4h

l00000000004032DC:
	mov	eax,[rbp+1BCh]
	cmp	eax,1h
	jz	4032F1h

l00000000004032E7:
	cmp	eax,2h
	jz	403325h

l00000000004032EC:
	jmp	4033C4h

l00000000004032F1:
	mov	eax,[0000000000477010]                                 ; [rip+00073D19]
	cmp	eax,2h
	jle	403308h

l00000000004032FC:
	mov	[0000000000477010],1h                                  ; [rip+00073D0A]
	jmp	403317h

l0000000000403308:
	mov	eax,[0000000000477010]                                 ; [rip+00073D02]
	add	eax,1h
	mov	[0000000000477010],eax                                 ; [rip+00073CF9]

l0000000000403317:
	lea	rcx,[000000000048D096]                                 ; [rip+00089D78]
	call	41BD18h
	jmp	403350h

l0000000000403325:
	movzx	eax,[00000000004AD030]                               ; [rip+000A9D04]
	xor	eax,1h
	test	al,al
	jz	40333Ch

l0000000000403333:
	mov	[00000000004AD030],1h                                  ; [rip+000A9CF6]
	jmp	403343h

l000000000040333C:
	mov	[00000000004AD030],0h                                  ; [rip+000A9CED]

l0000000000403343:
	lea	rcx,[000000000048D096]                                 ; [rip+00089D4C]
	call	41BD18h
	nop

l0000000000403350:
	jmp	4033C4h

l0000000000403352:
	mov	eax,[rbp+1BCh]
	cmp	eax,1h
	jz	403364h

l000000000040335D:
	cmp	eax,2h
	jz	403398h

l0000000000403362:
	jmp	4033C3h

l0000000000403364:
	mov	eax,[0000000000477010]                                 ; [rip+00073CA6]
	cmp	eax,1h
	jg	40337Bh

l000000000040336F:
	mov	[0000000000477010],3h                                  ; [rip+00073C97]
	jmp	40338Ah

l000000000040337B:
	mov	eax,[0000000000477010]                                 ; [rip+00073C8F]
	sub	eax,1h
	mov	[0000000000477010],eax                                 ; [rip+00073C86]

l000000000040338A:
	lea	rcx,[000000000048D096]                                 ; [rip+00089D05]
	call	41BD18h
	jmp	4033C3h

l0000000000403398:
	movzx	eax,[00000000004AD030]                               ; [rip+000A9C91]
	xor	eax,1h
	test	al,al
	jz	4033AFh

l00000000004033A6:
	mov	[00000000004AD030],1h                                  ; [rip+000A9C83]
	jmp	4033B6h

l00000000004033AF:
	mov	[00000000004AD030],0h                                  ; [rip+000A9C7A]

l00000000004033B6:
	lea	rcx,[000000000048D096]                                 ; [rip+00089CD9]
	call	41BD18h
	nop

l00000000004033C3:
	nop

l00000000004033C4:
	jmp	402FEAh

l00000000004033C9:
	nop

l00000000004033CA:
	lea	rbx,[rbp+180h]
	add	rbx,18h

l00000000004033D5:
	lea	rax,[rbp+180h]
	cmp	rbx,rax
	jz	4034A8h

l00000000004033E5:
	sub	rbx,8h
	mov	rcx,rbx
	call	452410h
	jmp	4033D5h
00000000004033F3          48 89 C7 48 8D 85 A4 01 00 00 48 89 C1    H..H......H..
0000000000403400 E8 AB 59 04 00 EB 26 48 89 C7 48 8D 85 A5 01 00 ..Y...&H..H.....
0000000000403410 00 48 89 C1 E8 97 59 04 00 EB 12 48 89 C7 48 8D .H....Y....H..H.
0000000000403420 85 A6 01 00 00 48 89 C1 E8 83 59 04 00 48 85 DB .....H....Y..H..
0000000000403430 74 23 B8 02 00 00 00 48 29 F0 48 C1 E0 03 48 8D t#.....H).H...H.
0000000000403440 34 03 48 39 DE 74 0E 48 83 EE 08 48 89 F1 E8 BD 4.H9.t.H...H....
0000000000403450 EF 04 00 EB ED 48 89 F8 48 89 C1 E8 50 E1 00 00 .....H..H...P...
0000000000403460 48 89 C3 48 8D 45 A0 48 89 C1 E8 D1 DB 05 00 48 H..H.E.H.......H
0000000000403470 89 DE EB 03 48 89 C6 48 8D 9D 80 01 00 00 48 83 ....H..H......H.
0000000000403480 C3 18 48 8D 85 80 01 00 00 48 39 C3 74 0E 48 83 ..H......H9.t.H.
0000000000403490 EB 08 48 89 D9 E8 76 EF 04 00 EB E6 48 89 F0 48 ..H...v.....H..H
00000000004034A0 89 C1 E8 09 E1 00 00 90                         ........       

l00000000004034A8:
	add	rsp,+248h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret

;; fn00000000004034B4: 00000000004034B4
fn00000000004034B4 proc
	push	rbp
	mov	rbp,rsp
	sub	rsp,20h
	lea	rcx,[00000000004AD03C]                                 ; [rip+000A9B79]
	call	46D120h
	nop
	add	rsp,20h
	pop	rbp
	ret

;; fn00000000004034CF: 00000000004034CF
fn00000000004034CF proc
	push	rbp
	mov	rbp,rsp
	sub	rsp,20h
	lea	rcx,[00000000004AD040]                                 ; [rip+000A9B62]
	call	452410h
	nop
	add	rsp,20h
	pop	rbp
	ret

;; fn00000000004034EA: 00000000004034EA
fn00000000004034EA proc
	push	rbp
	mov	rbp,rsp
	sub	rsp,20h
	lea	rcx,[00000000004AD048]                                 ; [rip+000A9B4F]
	call	452410h
	nop
	add	rsp,20h
	pop	rbp
	ret

;; fn0000000000403505: 0000000000403505
fn0000000000403505 proc
	push	rbp
	mov	rbp,rsp
	sub	rsp,20h
	lea	rcx,[00000000004AD050]                                 ; [rip+000A9B3C]
	call	452410h
	nop
	add	rsp,20h
	pop	rbp
	ret

;; fn0000000000403520: 0000000000403520
fn0000000000403520 proc
	push	rbp
	mov	rbp,rsp
	sub	rsp,20h
	lea	rcx,[00000000004AD058]                                 ; [rip+000A9B29]
	call	452410h
	nop
	add	rsp,20h
	pop	rbp
	ret

;; fn000000000040353B: 000000000040353B
;;   Called from:
;;     0000000000403721 (in fn000000000040370F)
fn000000000040353B proc
	push	rbp
	push	rbx
	sub	rsp,38h
	lea	rbp,[rsp+80h]
	mov	[rbp-30h],ecx
	mov	[rbp-28h],edx
	cmp	dword ptr [rbp-30h],1h
	jnz	403708h

l0000000000403559:
	cmp	dword ptr [rbp-28h],0FFFFh
	jnz	403708h

l0000000000403566:
	lea	rcx,[00000000004AD03C]                                 ; [rip+000A9ACF]
	call	46C940h
	lea	rcx,[00000000004034B4]                                 ; [rip-000000C5]
	call	410BF0h
	lea	rax,[rbp-54h]
	mov	rcx,rax
	call	448D80h
	lea	rax,[rbp-54h]
	mov	r8,rax
	lea	rdx,[000000000048D3A6]                                 ; [rip+00089E0E]
	lea	rcx,[00000000004AD040]                                 ; [rip+000A9AA1]
	call	451EA0h
	lea	rax,[rbp-54h]
	mov	rcx,rax
	call	448DB0h
	lea	rcx,[00000000004034CF]                                 ; [rip-000000E8]
	call	410BF0h
	lea	rax,[rbp-53h]
	mov	rcx,rax
	call	448D80h
	lea	rax,[rbp-53h]
	mov	r8,rax
	lea	rdx,[000000000048D3AF]                                 ; [rip+00089DD9]
	lea	rcx,[00000000004AD048]                                 ; [rip+000A9A6B]
	call	451EA0h
	lea	rax,[rbp-53h]
	mov	rcx,rax
	call	448DB0h
	lea	rcx,[00000000004034EA]                                 ; [rip-0000010B]
	call	410BF0h
	lea	rax,[rbp-52h]
	mov	rcx,rax
	call	448D80h
	lea	rax,[rbp-52h]
	mov	r8,rax
	lea	rdx,[000000000048D3C1]                                 ; [rip+00089DAD]
	lea	rcx,[00000000004AD050]                                 ; [rip+000A9A35]
	call	451EA0h
	lea	rax,[rbp-52h]
	mov	rcx,rax
	call	448DB0h
	lea	rcx,[0000000000403505]                                 ; [rip-0000012E]
	call	410BF0h
	lea	rax,[rbp-51h]
	mov	rcx,rax
	call	448D80h
	lea	rax,[rbp-51h]
	mov	r8,rax
	lea	rdx,[000000000048D3D4]                                 ; [rip+00089D82]
	lea	rcx,[00000000004AD058]                                 ; [rip+000A99FF]
	call	451EA0h
	lea	rax,[rbp-51h]
	mov	rcx,rax
	call	448DB0h
	lea	rcx,[0000000000403520]                                 ; [rip-00000151]
	call	410BF0h
	mov	eax,[0000000000477010]                                 ; [rip+00073994]
	imul	eax,eax,64h
	mov	[00000000004AD034],eax                                 ; [rip+000A99AF]
	mov	edx,[0000000000477010]                                 ; [rip+00073985]
	mov	eax,[00000000004AD034]                                 ; [rip+000A99A3]
	imul	eax,edx
	sub	eax,1Eh
	mov	[00000000004AD038],eax                                 ; [rip+000A999B]
	jmp	403708h
000000000040369F                                              48                H
00000000004036A0 89 C3 48 8D 45 AC 48 89 C1 E8 02 57 04 00 48 89 ..H.E.H....W..H.
00000000004036B0 D8 48 89 C1 E8 F7 DE 00 00 48 89 C3 48 8D 45 AD .H.......H..H.E.
00000000004036C0 48 89 C1 E8 E8 56 04 00 48 89 D8 48 89 C1 E8 DD H....V..H..H....
00000000004036D0 DE 00 00 48 89 C3 48 8D 45 AE 48 89 C1 E8 CE 56 ...H..H.E.H....V
00000000004036E0 04 00 48 89 D8 48 89 C1 E8 C3 DE 00 00 48 89 C3 ..H..H.......H..
00000000004036F0 48 8D 45 AF 48 89 C1 E8 B4 56 04 00 48 89 D8 48 H.E.H....V..H..H
0000000000403700 89 C1 E8 A9 DE 00 00 90                         ........       

l0000000000403708:
	add	rsp,38h
	pop	rbx
	pop	rbp
	ret

;; fn000000000040370F: 000000000040370F
fn000000000040370F proc
	push	rbp
	mov	rbp,rsp
	sub	rsp,20h
	mov	edx,0FFFFh
	mov	ecx,1h
	call	40353Bh
	nop
	add	rsp,20h
	pop	rbp
	ret
000000000040372D                                        90 90 90              ...

;; fn0000000000403730: 0000000000403730
;;   Called from:
;;     000000000040385A (in fn0000000000403810)
;;     0000000000403968 (in fn0000000000403930)
;;     0000000000403984 (in fn0000000000403930)
;;     0000000000407FE4 (in fn0000000000407F20)
;;     0000000000409540 (in fn0000000000409500)
;;     0000000000409609 (in fn00000000004095D0)
;;     0000000000409804 (in fn00000000004096B0)
;;     000000000040995E (in fn0000000000409850)
;;     0000000000409B2D (in fn0000000000409850)
;;     0000000000409CDF (in fn0000000000409C60)
;;     0000000000409EF3 (in fn0000000000409C60)
;;     0000000000409FDE (in fn0000000000409C60)
;;     000000000040A088 (in fn0000000000409C60)
;;     000000000040A0A0 (in fn0000000000409C60)
;;     000000000040A0B5 (in fn0000000000409C60)
;;     000000000040A0C8 (in fn0000000000409C60)
;;     000000000040A0FD (in fn0000000000409C60)
;;     000000000040A126 (in fn0000000000409C60)
;;     000000000040A1C2 (in fn0000000000409C60)
;;     000000000040A1D5 (in fn0000000000409C60)
;;     000000000040A209 (in fn0000000000409C60)
;;     000000000040A236 (in fn0000000000409C60)
;;     000000000040A278 (in fn0000000000409C60)
;;     000000000040A2DC (in fn0000000000409C60)
;;     000000000040A2FC (in fn0000000000409C60)
;;     000000000040A3EC (in fn0000000000409C60)
;;     000000000040A4AA (in fn0000000000409C60)
;;     000000000040A563 (in fn0000000000409C60)
;;     000000000040A646 (in fn0000000000409C60)
;;     000000000040A698 (in fn0000000000409C60)
;;     000000000040A705 (in fn0000000000409C60)
;;     000000000040A874 (in fn0000000000409C60)
;;     000000000040AA36 (in fn0000000000409C60)
;;     000000000040ABC4 (in fn0000000000409C60)
;;     000000000040ABD7 (in fn0000000000409C60)
;;     000000000040ACE9 (in fn0000000000409C60)
;;     000000000040ACFC (in fn0000000000409C60)
;;     000000000040AD11 (in fn0000000000409C60)
;;     000000000040AD36 (in fn0000000000409C60)
;;     000000000040ADF4 (in fn0000000000409C60)
;;     000000000040AE09 (in fn0000000000409C60)
;;     000000000040AF61 (in fn0000000000409C60)
;;     000000000040AF74 (in fn0000000000409C60)
;;     000000000040B02A (in fn0000000000409C60)
;;     000000000040B0AD (in fn0000000000409C60)
;;     000000000040B0F7 (in fn0000000000409C60)
;;     000000000040B219 (in fn0000000000409C60)
;;     000000000040B26D (in fn0000000000409C60)
;;     000000000040B2B9 (in fn0000000000409C60)
;;     000000000040B38B (in fn0000000000409C60)
;;     000000000040B39E (in fn0000000000409C60)
;;     000000000040B3B3 (in fn0000000000409C60)
;;     000000000040B452 (in fn0000000000409C60)
;;     000000000040B4C2 (in fn0000000000409C60)
;;     000000000040B5BF (in fn0000000000409C60)
;;     000000000040B5D5 (in fn0000000000409C60)
;;     000000000040B5EA (in fn0000000000409C60)
;;     000000000040B6E6 (in fn0000000000409C60)
;;     000000000040B72C (in fn0000000000409C60)
;;     000000000040B783 (in fn0000000000409C60)
;;     000000000040B870 (in fn0000000000409C60)
;;     000000000040B8C1 (in fn0000000000409C60)
;;     000000000040BA3D (in fn0000000000409C60)
;;     000000000040BB11 (in fn0000000000409C60)
;;     000000000040BB41 (in fn0000000000409C60)
;;     000000000040BB7E (in fn0000000000409C60)
;;     000000000040BBA1 (in fn0000000000409C60)
;;     000000000040BD64 (in fn000000000040BBC0)
;;     000000000040BDA7 (in fn000000000040BBC0)
;;     000000000040BDE7 (in fn000000000040BBC0)
;;     000000000040BE4F (in fn000000000040BBC0)
;;     000000000040BF8B (in fn000000000040BBC0)
;;     000000000040C24E (in fn000000000040C0C0)
;;     000000000040C819 (in fn000000000040C6B0)
;;     000000000040CA5D (in fn000000000040C6B0)
;;     000000000040CC17 (in fn000000000040CB30)
;;     000000000040CC62 (in fn000000000040CB30)
;;     000000000040CCD2 (in fn000000000040CB30)
;;     000000000040CE83 (in fn000000000040CB30)
;;     000000000040CE96 (in fn000000000040CB30)
;;     000000000040CEA9 (in fn000000000040CB30)
;;     000000000040CEED (in fn000000000040CB30)
;;     000000000040CF1D (in fn000000000040CB30)
;;     000000000040CF56 (in fn000000000040CB30)
;;     000000000040CFE0 (in fn000000000040CB30)
;;     000000000040CFF3 (in fn000000000040CB30)
;;     000000000040D02A (in fn000000000040CB30)
;;     000000000040D06D (in fn000000000040CB30)
;;     000000000040D0B5 (in fn000000000040CB30)
;;     000000000040D188 (in fn000000000040CB30)
;;     000000000040D1BB (in fn000000000040CB30)
;;     000000000040D469 (in fn000000000040D230)
;;     000000000040D4B9 (in fn000000000040D230)
;;     000000000040D5C6 (in fn000000000040D230)
;;     000000000040D5D9 (in fn000000000040D230)
;;     000000000040D6D1 (in fn000000000040D230)
;;     000000000040D781 (in fn000000000040D230)
;;     000000000040D7CC (in fn000000000040D230)
;;     000000000040D906 (in fn000000000040D820)
;;     000000000040D941 (in fn000000000040D820)
;;     000000000040DA45 (in fn000000000040D820)
;;     000000000040DA60 (in fn000000000040D820)
;;     000000000040DA73 (in fn000000000040D820)
;;     000000000040DBD4 (in fn000000000040D820)
;;     000000000040DBE7 (in fn000000000040D820)
;;     000000000040DBFA (in fn000000000040D820)
;;     000000000040DD50 (in fn000000000040D820)
;;     000000000040DDBF (in fn000000000040D820)
;;     000000000040DDD2 (in fn000000000040D820)
;;     000000000040DDF6 (in fn000000000040D820)
;;     000000000040DE19 (in fn000000000040D820)
;;     000000000040DE5F (in fn000000000040D820)
;;     000000000040DEA5 (in fn000000000040D820)
;;     000000000040DF74 (in fn000000000040D820)
;;     000000000040E041 (in fn000000000040D820)
;;     000000000040E0ED (in fn000000000040D820)
;;     000000000040E199 (in fn000000000040D820)
;;     000000000040E1EC (in fn000000000040D820)
;;     000000000040E22B (in fn000000000040D820)
;;     000000000040E2E9 (in fn000000000040D820)
;;     000000000040E33A (in fn000000000040D820)
;;     000000000040E405 (in fn000000000040D820)
;;     000000000040E462 (in fn000000000040D820)
;;     000000000040E4B8 (in fn000000000040D820)
;;     000000000040E4DB (in fn000000000040D820)
;;     000000000040E57A (in fn000000000040D820)
;;     000000000040E5B9 (in fn000000000040D820)
;;     000000000040E5FA (in fn000000000040D820)
;;     000000000040E6FF (in fn000000000040D820)
;;     000000000040E712 (in fn000000000040D820)
;;     000000000040E725 (in fn000000000040D820)
;;     000000000040E82F (in fn000000000040D820)
;;     000000000040E842 (in fn000000000040D820)
;;     000000000040E932 (in fn000000000040D820)
;;     000000000040E97D (in fn000000000040D820)
;;     000000000040EAA4 (in fn000000000040D820)
;;     000000000040EAB7 (in fn000000000040D820)
;;     000000000040EACA (in fn000000000040D820)
;;     000000000040EB87 (in fn000000000040D820)
;;     000000000040EB9A (in fn000000000040D820)
;;     000000000040EBE0 (in fn000000000040D820)
;;     000000000040EC2E (in fn000000000040D820)
;;     000000000040EC86 (in fn000000000040D820)
;;     000000000040ED40 (in fn000000000040D820)
;;     000000000040ED53 (in fn000000000040D820)
;;     000000000040ED66 (in fn000000000040D820)
;;     000000000040ED89 (in fn000000000040D820)
;;     000000000040EDD1 (in fn000000000040D820)
;;     000000000040EEA7 (in fn000000000040D820)
;;     000000000040EEBA (in fn000000000040D820)
;;     000000000040EF7B (in fn000000000040D820)
;;     000000000040EF8E (in fn000000000040D820)
;;     000000000040EFA1 (in fn000000000040D820)
;;     000000000040EFC4 (in fn000000000040D820)
;;     000000000040F096 (in fn000000000040D820)
;;     000000000040F0A9 (in fn000000000040D820)
;;     000000000040F1A7 (in fn000000000040D820)
;;     000000000040F1BA (in fn000000000040D820)
;;     000000000040F1CD (in fn000000000040D820)
;;     000000000040F1F0 (in fn000000000040D820)
;;     000000000040F227 (in fn000000000040D820)
;;     000000000040F25E (in fn000000000040D820)
;;     000000000040F281 (in fn000000000040D820)
;;     000000000040F2C7 (in fn000000000040D820)
;;     000000000040F30F (in fn000000000040D820)
;;     000000000040F3CB (in fn000000000040D820)
;;     000000000040F3DE (in fn000000000040D820)
;;     000000000040F401 (in fn000000000040D820)
;;     000000000040F48A (in fn000000000040D820)
;;     000000000040F510 (in fn000000000040D820)
;;     000000000040F55B (in fn000000000040D820)
;;     000000000040F5A0 (in fn000000000040D820)
;;     000000000040F656 (in fn000000000040D820)
;;     000000000040F69C (in fn000000000040D820)
;;     000000000040F71F (in fn000000000040D820)
;;     000000000040F742 (in fn000000000040D820)
;;     000000000040F7CB (in fn000000000040D820)
;;     000000000040F88E (in fn000000000040D820)
;;     000000000040F95D (in fn000000000040D820)
;;     000000000040F980 (in fn000000000040D820)
;;     000000000040FA75 (in fn000000000040D820)
;;     000000000040FA98 (in fn000000000040D820)
;;     000000000040FB5C (in fn000000000040D820)
fn0000000000403730 proc
	push	rbx
	cmp	edx,4Bh
	ja	4037A0h

l0000000000403736:
	lea	rax,[000000000048E880]                                 ; [rip+0008B143]
	mov	r10d,edx
	movsxd	r10,dword ptr [rax+r10*4]
	add	rax,r10
	jmp	rax
0000000000403749                            0F 1F 80 00 00 00 00          .......

l0000000000403750:
	test	r8,r8
	jz	4037A0h

l0000000000403755:
	mov	r11d,[rcx+28h]
	xor	eax,eax
	cmp	r11d,[rcx+2Ch]
	jge	40378Bh

l0000000000403761:
	movsxd	r10,r11d
	add	r11d,1h
	lea	rbx,[r10+r10*2]
	mov	r10,[rcx+20h]
	mov	[rcx+28h],r11d
	lea	r10,[r10+rbx*8]
	test	r10,r10
	jz	40378Bh

l000000000040377D:
	mov	[r10],edx
	mov	[r10+8h],r8
	mov	rax,r10
	mov	[r10+10h],r9

l000000000040378B:
	pop	rbx
	ret
000000000040378D                                        0F 1F 00              ...

l0000000000403790:
	test	r8,r8
	jz	4037A0h

l0000000000403795:
	test	r9,r9
	jnz	403755h

l000000000040379A:
	nop	word ptr [rax+rax+0h]

l00000000004037A0:
	xor	eax,eax
	pop	rbx
	ret
00000000004037A4             66 66 66 2E 0F 1F 84 00 00 00 00 00     fff.........

;; fn00000000004037B0: 00000000004037B0
;;   Called from:
;;     0000000000403E98 (in fn0000000000403E30)
;;     0000000000403EF7 (in fn0000000000403E30)
;;     0000000000407FD4 (in fn0000000000407F20)
;;     000000000040BDD4 (in fn000000000040BBC0)
;;     000000000040C06C (in fn000000000040BBC0)
;;     000000000040C800 (in fn000000000040C6B0)
;;     000000000040CA4A (in fn000000000040C6B0)
fn00000000004037B0 proc
	mov	r9d,[rcx+28h]
	cmp	r9d,[rcx+2Ch]
	jge	403800h

l00000000004037BA:
	movsxd	rax,r9d
	add	r9d,1h
	lea	r10,[rax+rax*2]
	mov	rax,[rcx+20h]
	mov	[rcx+28h],r9d
	lea	rax,[rax+r10*8]
	test	rax,rax
	setz	r9b
	test	rdx,rdx
	setz	cl
	or	r9b,cl
	jnz	403800h

l00000000004037E3:
	test	r8d,r8d
	jz	403800h

l00000000004037E8:
	mov	dword ptr [rax],0h
	mov	[rax+8h],rdx
	mov	[rax+10h],r8d
	ret
00000000004037F7                      66 0F 1F 84 00 00 00 00 00        f........

l0000000000403800:
	xor	eax,eax
	ret
0000000000403803          66 66 66 66 2E 0F 1F 84 00 00 00 00 00    ffff.........

;; fn0000000000403810: 0000000000403810
;;   Called from:
;;     00000000004081FB (in fn00000000004080A0)
;;     000000000040BC5C (in fn000000000040BBC0)
fn0000000000403810 proc
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,28h
	mov	rax,[rcx+18h]
	mov	rbx,rcx
	mov	rbp,rdx
	mov	edi,r8d
	mov	rsi,rdx
	movzx	ecx,byte ptr [rax]
	jmp	403872h
000000000040382D                                        0F 1F 00              ...

l0000000000403830:
	test	al,al
	jnz	403880h

l0000000000403834:
	cmp	cl,4Bh
	jnz	4038C0h

l000000000040383D:
	add	qword ptr [rbx+18h],1h

l0000000000403842:
	cmp	edi,1h
	sbb	edx,edx
	add	dword ptr [rbx+50h],6h
	and	edx,0FDh
	add	edx,1Eh

l0000000000403851:
	xor	r9d,r9d
	xor	r8d,r8d
	mov	rcx,rbx
	call	403730h
	test	rax,rax
	mov	[rsi],rax
	jz	4038B5h

l0000000000403867:
	lea	rsi,[rax+8h]
	mov	rax,[rbx+18h]
	movzx	ecx,byte ptr [rax]

l0000000000403872:
	cmp	cl,72h
	setz	al
	cmp	cl,56h
	setz	dl
	jnz	403830h

l0000000000403880:
	add	qword ptr [rbx+18h],1h
	test	al,al
	jz	4038A0h

l0000000000403889:
	cmp	edi,1h
	sbb	edx,edx
	add	dword ptr [rbx+50h],9h
	and	edx,0FDh
	add	edx,1Ch
	jmp	403851h
000000000040389A                               66 0F 1F 44 00 00           f..D..

l00000000004038A0:
	test	dl,dl
	jz	403842h

l00000000004038A4:
	cmp	edi,1h
	sbb	edx,edx
	add	dword ptr [rbx+50h],9h
	and	edx,0FDh
	add	edx,1Dh
	jmp	403851h

l00000000004038B5:
	xor	eax,eax
	add	rsp,28h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret

l00000000004038C0:
	test	edi,edi
	jnz	403910h

l00000000004038C4:
	cmp	cl,46h
	jnz	403910h

l00000000004038C9:
	cmp	rbp,rsi
	jnz	4038EAh

l00000000004038CE:
	jmp	403910h

l00000000004038D0:
	cmp	eax,1Bh
	jz	403920h

l00000000004038D5:
	cmp	eax,19h
	jnz	4038E1h

l00000000004038DA:
	mov	dword ptr [rbp+0h],1Ch

l00000000004038E1:
	add	rbp,8h
	cmp	rbp,rsi
	jz	403910h

l00000000004038EA:
	mov	rbp,[rbp+0h]
	mov	eax,[rbp+0h]
	cmp	eax,1Ah
	jnz	4038D0h

l00000000004038F6:
	mov	dword ptr [rbp+0h],1Dh
	add	rbp,8h
	cmp	rbp,rsi
	jnz	4038EAh

l0000000000403906:
	nop	word ptr cs:[rax+rax+0h]

l0000000000403910:
	mov	rax,rsi
	add	rsp,28h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
000000000040391C                                     0F 1F 40 00             ..@.

l0000000000403920:
	mov	dword ptr [rbp+0h],1Eh
	jmp	4038E1h
0000000000403929                            0F 1F 80 00 00 00 00          .......

;; fn0000000000403930: 0000000000403930
;;   Called from:
;;     0000000000409689 (in fn0000000000409640)
;;     000000000040BC70 (in fn000000000040BBC0)
fn0000000000403930 proc
	mov	r9,[rcx+18h]
	mov	r8,rdx
	movzx	r10d,byte ptr [r9]
	cmp	r10b,52h
	setz	al
	cmp	r10b,4Fh
	jz	403950h

l0000000000403948:
	test	al,al
	jnz	403970h

l000000000040394C:
	mov	rax,rdx
	ret

l0000000000403950:
	test	al,al
	jnz	403970h

l0000000000403954:
	add	dword ptr [rcx+50h],3h
	add	r9,1h
	mov	edx,20h
	mov	[rcx+18h],r9
	xor	r9d,r9d
	jmp	403730h
000000000040396D                                        0F 1F 00              ...

l0000000000403970:
	add	dword ptr [rcx+50h],2h
	add	r9,1h
	mov	edx,1Fh
	mov	[rcx+18h],r9
	xor	r9d,r9d
	jmp	403730h
0000000000403989                            0F 1F 80 00 00 00 00          .......

;; fn0000000000403990: 0000000000403990
;;   Called from:
;;     000000000040BD79 (in fn000000000040BBC0)
;;     000000000040BF18 (in fn000000000040BBC0)
fn0000000000403990 proc
	push	rdi
	push	rsi
	push	rbx
	mov	rax,[rcx+18h]
	cmp	byte ptr [rax],53h
	jz	4039A2h

l000000000040399C:
	xor	eax,eax

l000000000040399E:
	pop	rbx
	pop	rsi
	pop	rdi
	ret

l00000000004039A2:
	lea	r8,[rax+1h]
	mov	[rcx+18h],r8
	cmp	byte ptr [rax+1h],0h
	jnz	403A03h

l00000000004039B0:
	xor	eax,eax

l00000000004039B2:
	mov	r8d,[rcx+10h]
	shr	r8d,3h
	and	r8d,1h
	test	edx,edx
	setnz	dl
	cmp	r8b,dl
	jnc	4039D9h

l00000000004039C8:
	mov	rdx,[rcx+18h]
	movzx	edx,byte ptr [rdx]
	sub	edx,43h
	cmp	dl,1h
	setbe	r8b

l00000000004039D9:
	lea	rdx,[000000000048F640]                                 ; [rip+0008BC60]
	lea	r9,[000000000048F7C8]                                  ; [rip+0008BDE1]
	movzx	r8d,r8b
	nop	dword ptr [rax+rax+0h]

l00000000004039F0:
	cmp	al,[rdx]
	jz	403AA7h

l00000000004039F8:
	add	rdx,38h
	cmp	rdx,r9
	jnz	4039F0h

l0000000000403A01:
	jmp	40399Ch

l0000000000403A03:
	lea	r8,[rax+2h]
	mov	[rcx+18h],r8
	movsx	eax,byte ptr [rax+1h]
	lea	r8d,[rax-30h]
	cmp	r8b,9h
	jbe	403A21h

l0000000000403A19:
	cmp	al,5Fh
	jnz	403B53h

l0000000000403A21:
	cmp	al,5Fh
	jz	403A84h

l0000000000403A25:
	xor	edx,edx
	jmp	403A5Dh
0000000000403A29                            0F 1F 80 00 00 00 00          .......

l0000000000403A30:
	lea	r8d,[rdx+rdx*8]
	lea	r8d,[rax+r8*4-30h]

l0000000000403A39:
	cmp	edx,r8d
	ja	40399Ch

l0000000000403A42:
	mov	rax,[rcx+18h]
	cmp	byte ptr [rax],0h
	jz	403A80h

l0000000000403A4B:
	lea	rdx,[rax+1h]
	mov	[rcx+18h],rdx
	movsx	eax,byte ptr [rax]
	cmp	al,5Fh
	jz	403AA1h

l0000000000403A5A:
	mov	edx,r8d

l0000000000403A5D:
	lea	r8d,[rax-30h]
	cmp	r8b,9h
	jbe	403A30h

l0000000000403A67:
	lea	r8d,[rax-41h]
	cmp	r8b,19h
	ja	40399Ch

l0000000000403A75:
	lea	r8d,[rdx+rdx*8]
	lea	r8d,[rax+r8*4-37h]
	jmp	403A39h

l0000000000403A80:
	xor	eax,eax
	jmp	403A5Ah

l0000000000403A84:
	xor	r8d,r8d

l0000000000403A87:
	cmp	r8d,[rcx+38h]
	jnc	40399Ch

l0000000000403A91:
	mov	rax,[rcx+30h]
	add	dword ptr [rcx+40h],1h
	mov	rax,[rax+r8*8]
	pop	rbx
	pop	rsi
	pop	rdi
	ret

l0000000000403AA1:
	add	r8d,1h
	jmp	403A87h

l0000000000403AA7:
	mov	r11,[rdx+28h]
	test	r11,r11
	jz	403B40h

l0000000000403AB4:
	mov	r9d,[rcx+28h]
	mov	r10d,[rcx+2Ch]
	xor	ebx,ebx
	mov	esi,[rdx+30h]
	cmp	r9d,r10d
	jge	403AF2h

l0000000000403AC6:
	movsxd	rax,r9d
	add	r9d,1h
	lea	rdi,[rax+rax*2]
	mov	rax,[rcx+20h]
	mov	[rcx+28h],r9d
	lea	rax,[rax+rdi*8]
	test	rax,rax
	jz	403AF2h

l0000000000403AE2:
	mov	dword ptr [rax],18h
	mov	[rax+8h],r11
	mov	rbx,rax
	mov	[rax+10h],esi

l0000000000403AF2:
	mov	[rcx+48h],rbx

l0000000000403AF6:
	test	r8d,r8d
	jz	403B4Ah

l0000000000403AFB:
	mov	r8,[rdx+18h]
	mov	edx,[rdx+20h]

l0000000000403B02:
	add	[rcx+50h],edx
	cmp	r10d,r9d
	jle	40399Ch

l0000000000403B0E:
	movsxd	rax,r9d
	add	r9d,1h
	lea	r10,[rax+rax*2]
	mov	rax,[rcx+20h]
	mov	[rcx+28h],r9d
	lea	rax,[rax+r10*8]
	test	rax,rax
	jz	40399Ch

l0000000000403B2E:
	mov	dword ptr [rax],18h
	mov	[rax+8h],r8
	mov	[rax+10h],edx
	jmp	40399Eh

l0000000000403B40:
	mov	r10d,[rcx+2Ch]
	mov	r9d,[rcx+28h]
	jmp	403AF6h

l0000000000403B4A:
	mov	r8,[rdx+8h]
	mov	edx,[rdx+10h]
	jmp	403B02h

l0000000000403B53:
	lea	r8d,[rax-41h]
	cmp	r8b,19h
	jbe	403A25h

l0000000000403B61:
	jmp	4039B2h
0000000000403B66                   66 2E 0F 1F 84 00 00 00 00 00       f.........

;; fn0000000000403B70: 0000000000403B70
;;   Called from:
;;     000000000040C8EE (in fn000000000040C6B0)
fn0000000000403B70 proc
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,28h
	lea	rsi,[000000000048E9B0]                                 ; [rip+0008AE31]
	test	r8,r8
	mov	rdi,rcx
	mov	rbp,rdx
	mov	rbx,r8
	jz	403BA9h

l0000000000403B8D:
	nop	dword ptr [rax]
	cmp	dword ptr [rbx],4Bh
	ja	403BA9h

l0000000000403B95:
	mov	eax,[rbx]
	movsxd	rax,dword ptr [rsi+rax*4]
	add	rax,rsi
	jmp	rax
0000000000403BA0 48 8B 5B 10 48 85 DB 75 E7                      H.[.H..u.      

l0000000000403BA9:
	add	rsp,28h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
0000000000403BB2       48 8B 5B 08 EB EC 0F 1F 84 00 00 00 00 00   H.[...........
0000000000403BC0 4C 8B 43 08 41 83 38 05 75 08 83 45 00 01 4C 8B L.C.A.8.u..E..L.
0000000000403BD0 43 08 48 89 EA 48 89 F9 E8 93 FF FF FF 48 8B 5B C.H..H.......H.[
0000000000403BE0 10 EB C1 83 07 01 4C 8B 43 08 EB E6 0F 1F 40 00 ......L.C.....@.

;; fn0000000000403BF0: 0000000000403BF0
;;   Called from:
;;     0000000000404465 (in fn00000000004042F0)
;;     0000000000404672 (in fn00000000004042F0)
;;     00000000004046BF (in fn00000000004042F0)
;;     0000000000404A1D (in fn00000000004042F0)
;;     0000000000404B3A (in fn00000000004042F0)
;;     0000000000405D21 (in fn00000000004042F0)
;;     0000000000405E09 (in fn00000000004042F0)
;;     0000000000405E97 (in fn00000000004042F0)
;;     0000000000405EB2 (in fn00000000004042F0)
;;     000000000040602C (in fn00000000004042F0)
;;     0000000000406048 (in fn00000000004042F0)
;;     0000000000406451 (in fn00000000004042F0)
;;     00000000004064DE (in fn00000000004042F0)
;;     00000000004064F0 (in fn00000000004042F0)
;;     0000000000406645 (in fn00000000004042F0)
;;     0000000000406657 (in fn00000000004042F0)
;;     0000000000406669 (in fn00000000004042F0)
;;     0000000000406685 (in fn00000000004042F0)
;;     0000000000406697 (in fn00000000004042F0)
;;     00000000004066D0 (in fn00000000004042F0)
;;     0000000000406712 (in fn00000000004042F0)
;;     0000000000406833 (in fn00000000004042F0)
;;     0000000000406899 (in fn00000000004042F0)
;;     00000000004068B9 (in fn00000000004042F0)
;;     00000000004068E2 (in fn00000000004042F0)
;;     0000000000406A99 (in fn00000000004042F0)
;;     0000000000406AAB (in fn00000000004042F0)
fn0000000000403BF0 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	mov	rax,[rcx+100h]
	mov	rbx,rcx
	mov	esi,edx
	cmp	rax,+0FFh
	jz	403C30h

l0000000000403C0A:
	lea	rdx,[rax+1h]

l0000000000403C0E:
	mov	[rbx+100h],rdx
	mov	[rbx+rax],sil
	mov	[rbx+108h],sil
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret
0000000000403C27                      66 0F 1F 84 00 00 00 00 00        f........

l0000000000403C30:
	mov	edx,0FFh
	mov	byte ptr [rcx+0FFh],0h
	mov	r8,[rcx+118h]
	call	qword ptr [rbx+110h]
	add	dword ptr [rbx+138h],1h
	mov	edx,1h
	xor	eax,eax
	jmp	403C0Eh
0000000000403C59                            0F 1F 80 00 00 00 00          .......

;; fn0000000000403C60: 0000000000403C60
;;   Called from:
;;     0000000000403D11 (in fn0000000000403CE0)
;;     0000000000403D4B (in fn0000000000403D30)
;;     0000000000403E1B (in fn0000000000403DF0)
;;     0000000000403E3E (in fn0000000000403E30)
;;     0000000000403F4C (in fn0000000000403F10)
;;     0000000000403F65 (in fn0000000000403F10)
;;     0000000000403F74 (in fn0000000000403F10)
fn0000000000403C60 proc
	mov	r8,[rcx]
	xor	r11d,r11d
	xor	eax,eax
	movsx	edx,byte ptr [r8]
	cmp	dl,6Eh
	jz	403CC0h

l0000000000403C71:
	lea	r8d,[rdx-30h]
	xor	r9d,r9d
	cmp	r8b,9h
	ja	403CAFh

l0000000000403C7E:
	mov	r9,[rcx]
	lea	r8,[r9+1h]
	xor	r9d,r9d
	nop	dword ptr [rax+rax+0h]

l0000000000403C90:
	lea	r10d,[r9+r9*4]
	mov	[rcx],r8
	add	r8,1h
	lea	r9d,[rdx+r10*2-30h]
	movsx	edx,byte ptr [r8-1h]
	lea	r10d,[rdx-30h]
	cmp	r10b,9h
	jbe	403C90h

l0000000000403CAF:
	xor	eax,r9d
	add	eax,r11d
	ret
0000000000403CB6                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l0000000000403CC0:
	lea	rax,[r8+1h]
	mov	r11b,1h
	mov	[rcx],rax
	mov	eax,0FFFFFFFFh
	movsx	edx,byte ptr [r8+1h]
	jmp	403C71h
0000000000403CD6                   66 2E 0F 1F 84 00 00 00 00 00       f.........

;; fn0000000000403CE0: 0000000000403CE0
;;   Called from:
;;     000000000040D83C (in fn000000000040D820)
fn0000000000403CE0 proc
	push	rbx
	sub	rsp,20h
	mov	eax,[rcx+28h]
	cmp	eax,[rcx+2Ch]
	jge	403D22h

l0000000000403CED:
	movsxd	rdx,eax
	add	eax,1h
	lea	r8,[rdx+rdx*2]
	mov	rdx,[rcx+20h]
	mov	[rcx+28h],eax
	lea	rbx,[rdx+r8*8]
	test	rbx,rbx
	jz	403D22h

l0000000000403D07:
	mov	dword ptr [rbx],40h
	add	rcx,18h
	call	403C60h
	mov	[rbx+8h],eax
	mov	rax,rbx
	add	rsp,20h
	pop	rbx
	ret

l0000000000403D22:
	xor	eax,eax
	add	rsp,20h
	pop	rbx
	ret
0000000000403D2A                               66 0F 1F 44 00 00           f..D..

;; fn0000000000403D30: 0000000000403D30
;;   Called from:
;;     0000000000403DAB (in fn0000000000403D80)
;;     00000000004098CB (in fn0000000000409850)
;;     00000000004099DB (in fn0000000000409850)
;;     000000000040A28C (in fn0000000000409C60)
;;     000000000040A9D9 (in fn0000000000409C60)
;;     000000000040AE19 (in fn0000000000409C60)
;;     000000000040B053 (in fn0000000000409C60)
;;     000000000040B46C (in fn0000000000409C60)
;;     000000000040BFAC (in fn000000000040BBC0)
;;     000000000040CCFF (in fn000000000040CB30)
;;     000000000040D32B (in fn000000000040D230)
;;     000000000040DC0A (in fn000000000040D820)
;;     000000000040E4EB (in fn000000000040D820)
;;     000000000040E60A (in fn000000000040D820)
;;     000000000040E942 (in fn000000000040D820)
;;     000000000040E98D (in fn000000000040D820)
;;     000000000040E9B5 (in fn000000000040D820)
fn0000000000403D30 proc
	push	rbx
	sub	rsp,20h
	mov	rdx,[rcx+18h]
	mov	rbx,rcx
	movzx	eax,byte ptr [rdx]
	cmp	al,5Fh
	jz	403D64h

l0000000000403D43:
	cmp	al,6Eh
	jz	403D59h

l0000000000403D47:
	lea	rcx,[rcx+18h]
	call	403C60h
	mov	rdx,[rbx+18h]
	cmp	byte ptr [rdx],5Fh
	jz	403D74h

l0000000000403D59:
	mov	eax,0FFFFFFFFh
	add	rsp,20h
	pop	rbx
	ret

l0000000000403D64:
	xor	eax,eax

l0000000000403D66:
	add	rdx,1h
	mov	[rbx+18h],rdx
	add	rsp,20h
	pop	rbx
	ret

l0000000000403D74:
	add	eax,1h
	jmp	403D66h
0000000000403D79                            0F 1F 80 00 00 00 00          .......

;; fn0000000000403D80: 0000000000403D80
;;   Called from:
;;     0000000000409F97 (in fn0000000000409C60)
;;     000000000040AAA0 (in fn0000000000409C60)
;;     000000000040AE4A (in fn0000000000409C60)
;;     000000000040B03A (in fn0000000000409C60)
;;     000000000040B073 (in fn0000000000409C60)
;;     000000000040BF38 (in fn000000000040BBC0)
;;     000000000040CDA3 (in fn000000000040CB30)
;;     000000000040D50D (in fn000000000040D230)
;;     000000000040DC43 (in fn000000000040D820)
;;     000000000040E53B (in fn000000000040D820)
;;     000000000040E9A5 (in fn000000000040D820)
;;     000000000040ED99 (in fn000000000040D820)
;;     000000000040F0B9 (in fn000000000040D820)
;;     000000000040F31C (in fn000000000040D820)
fn0000000000403D80 proc
	push	rbx
	sub	rsp,20h
	mov	rax,[rcx+18h]
	cmp	byte ptr [rax],54h
	jz	403DA0h

l0000000000403D8E:
	xor	eax,eax
	add	rsp,20h
	pop	rbx
	ret
0000000000403D96                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l0000000000403DA0:
	add	rax,1h
	mov	rbx,rcx
	mov	[rcx+18h],rax
	call	403D30h
	test	eax,eax
	js	403D8Eh

l0000000000403DB4:
	add	dword ptr [rbx+40h],1h
	mov	ecx,[rbx+28h]
	cmp	ecx,[rbx+2Ch]
	jge	403D8Eh

l0000000000403DC0:
	movsxd	rdx,ecx
	add	ecx,1h
	lea	r8,[rdx+rdx*2]
	mov	rdx,[rbx+20h]
	mov	[rbx+28h],ecx
	lea	rdx,[rdx+r8*8]
	test	rdx,rdx
	jz	403D8Eh

l0000000000403DDA:
	mov	[rdx+8h],eax
	mov	rax,rdx
	mov	dword ptr [rdx],5h
	add	rsp,20h
	pop	rbx
	ret
0000000000403DEC                                     0F 1F 40 00             ..@.

;; fn0000000000403DF0: 0000000000403DF0
;;   Called from:
;;     0000000000409AD8 (in fn0000000000409850)
;;     000000000040C013 (in fn000000000040BBC0)
;;     000000000040C02B (in fn000000000040BBC0)
;;     000000000040C04F (in fn000000000040BBC0)
fn0000000000403DF0 proc
	sub	rsp,28h
	mov	rdx,[rcx+18h]
	mov	eax,1h
	cmp	byte ptr [rdx],5Fh
	jz	403E10h

l0000000000403E02:
	add	rsp,28h
	ret
0000000000403E07                      66 0F 1F 84 00 00 00 00 00        f........

l0000000000403E10:
	add	rdx,1h
	add	rcx,18h
	mov	[rcx],rdx
	call	403C60h
	not	eax
	shr	eax,1Fh
	add	rsp,28h
	ret
0000000000403E2A                               66 0F 1F 44 00 00           f..D..

;; fn0000000000403E30: 0000000000403E30
;;   Called from:
;;     00000000004096F8 (in fn00000000004096B0)
;;     0000000000409920 (in fn0000000000409850)
;;     000000000040994B (in fn0000000000409850)
;;     0000000000409AC8 (in fn0000000000409850)
;;     0000000000409B1A (in fn0000000000409850)
fn0000000000403E30 proc
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,20h
	mov	rbx,rcx
	lea	rcx,[rcx+18h]
	call	403C60h
	test	eax,eax
	mov	esi,eax
	jle	403F00h

l0000000000403E4D:
	mov	rdi,[rbx+18h]
	mov	rax,[rbx+8h]
	movsxd	r9,esi
	sub	rax,rdi
	cmp	rax,r9
	jl	403F04h

l0000000000403E64:
	add	r9,rdi
	test	byte ptr [rbx+10h],4h
	mov	[rbx+18h],r9
	jnz	403EB0h

l0000000000403E71:
	cmp	esi,9h
	jle	403E8Fh

l0000000000403E76:
	lea	rdx,[000000000048EAE0]                                 ; [rip+0008AC63]
	mov	r8d,8h
	mov	rcx,rdi
	call	41BD90h
	test	eax,eax
	jz	403EC0h

l0000000000403E8F:
	mov	r8d,esi
	mov	rdx,rdi
	mov	rcx,rbx
	call	4037B0h

l0000000000403E9D:
	mov	[rbx+48h],rax

l0000000000403EA1:
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	ret
0000000000403EA9                            0F 1F 80 00 00 00 00          .......

l0000000000403EB0:
	cmp	byte ptr [r9],24h
	jnz	403E71h

l0000000000403EB6:
	add	r9,1h
	mov	[rbx+18h],r9
	jmp	403E71h

l0000000000403EC0:
	movzx	eax,byte ptr [rdi+8h]
	cmp	al,5Fh
	setz	cl
	cmp	al,2Eh
	setz	dl
	or	cl,dl
	jnz	403ED6h

l0000000000403ED2:
	cmp	al,24h
	jnz	403E8Fh

l0000000000403ED6:
	cmp	byte ptr [rdi+9h],4Eh
	jnz	403E8Fh

l0000000000403EDC:
	mov	eax,[rbx+50h]
	lea	rdx,[000000000048EAE9]                                 ; [rip+0008AC03]
	mov	r8d,15h
	mov	rcx,rbx
	add	eax,16h
	sub	eax,esi
	mov	[rbx+50h],eax
	call	4037B0h
	jmp	403E9Dh
0000000000403EFE                                           66 90               f.

l0000000000403F00:
	xor	eax,eax
	jmp	403EA1h

l0000000000403F04:
	xor	eax,eax
	jmp	403E9Dh
0000000000403F08                         0F 1F 84 00 00 00 00 00         ........

;; fn0000000000403F10: 0000000000403F10
fn0000000000403F10 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	test	edx,edx
	mov	rbx,rcx
	jnz	403F3Bh

l0000000000403F1D:
	mov	rax,[rcx+18h]
	cmp	byte ptr [rax],0h
	jnz	403F30h

l0000000000403F26:
	xor	eax,eax

l0000000000403F28:
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret
0000000000403F2F                                              90                .

l0000000000403F30:
	lea	rdx,[rax+1h]
	mov	[rcx+18h],rdx
	movsx	edx,byte ptr [rax]

l0000000000403F3B:
	cmp	edx,68h
	jz	403F70h

l0000000000403F40:
	cmp	edx,76h
	jnz	403F26h

l0000000000403F45:
	lea	rsi,[rbx+18h]
	mov	rcx,rsi
	call	403C60h
	mov	rax,[rbx+18h]
	cmp	byte ptr [rax],5Fh
	jnz	403F26h

l0000000000403F5A:
	add	rax,1h
	mov	rcx,rsi
	mov	[rbx+18h],rax
	call	403C60h
	jmp	403F79h
0000000000403F6C                                     0F 1F 40 00             ..@.

l0000000000403F70:
	lea	rcx,[rbx+18h]
	call	403C60h

l0000000000403F79:
	mov	rax,[rbx+18h]
	cmp	byte ptr [rax],5Fh
	jnz	403F26h

l0000000000403F82:
	add	rax,1h
	mov	[rbx+18h],rax
	mov	eax,1h
	jmp	403F28h
0000000000403F91    66 66 66 66 66 66 2E 0F 1F 84 00 00 00 00 00  ffffff.........

;; fn0000000000403FA0: 0000000000403FA0
;;   Called from:
;;     0000000000405185 (in fn00000000004042F0)
;;     0000000000406011 (in fn00000000004042F0)
;;     00000000004065D0 (in fn00000000004042F0)
fn0000000000403FA0 proc
	mov	rax,[rcx+120h]
	test	rax,rax
	jz	403FF8h

l0000000000403FAC:
	mov	rax,[rax+8h]
	mov	edx,[rdx]
	mov	rax,[rax+10h]
	test	rax,rax
	jz	403FF0h

l0000000000403FBB:
	cmp	dword ptr [rax],2Fh
	jnz	403FF0h

l0000000000403FC0:
	cmp	edx,0h
	jg	403FD9h

l0000000000403FC5:
	jmp	403FE7h
0000000000403FC7                      66 0F 1F 84 00 00 00 00 00        f........

l0000000000403FD0:
	cmp	dword ptr [rax],2Fh
	jnz	403FF0h

l0000000000403FD5:
	test	edx,edx
	jz	403FF3h

l0000000000403FD9:
	mov	rax,[rax+10h]
	sub	edx,1h
	test	rax,rax
	jnz	403FD0h

l0000000000403FE5:
	ret

l0000000000403FE7:
	jz	403FF3h

l0000000000403FE9:
	nop	dword ptr [rax+0h]

l0000000000403FF0:
	xor	eax,eax
	ret

l0000000000403FF3:
	mov	rax,[rax+8h]
	ret

l0000000000403FF8:
	mov	dword ptr [rcx+130h],1h
	ret
0000000000404003          66 66 66 66 2E 0F 1F 84 00 00 00 00 00    ffff.........

;; fn0000000000404010: 0000000000404010
;;   Called from:
;;     0000000000404047 (in fn0000000000404010)
;;     00000000004044F8 (in fn00000000004042F0)
fn0000000000404010 proc
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,20h
	lea	rsi,[000000000048EB00]                                 ; [rip+0008AAE2]
	test	rdx,rdx
	mov	rdi,rcx
	mov	rbx,rdx
	jz	404060h

l0000000000404029:
	cmp	dword ptr [rbx],4Ah
	ja	404040h

l000000000040402E:
	mov	eax,[rbx]
	movsxd	rax,dword ptr [rsi+rax*4]
	add	rax,rsi
	jmp	rax
0000000000404039                            0F 1F 80 00 00 00 00          .......

l0000000000404040:
	mov	rdx,[rbx+8h]
	mov	rcx,rdi
	call	404010h
	test	rax,rax
	jnz	404062h

l0000000000404051:
	mov	rbx,[rbx+10h]
	test	rbx,rbx
	jnz	404029h

l000000000040405A:
	nop	word ptr [rax+rax+0h]

l0000000000404060:
	xor	eax,eax

l0000000000404062:
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	ret
000000000040406A                               66 0F 1F 44 00 00           f..D..
0000000000404070 48 8D 53 08 48 89 F9 E8 24 FF FF FF 48 85 C0 74 H.S.H...$...H..t
0000000000404080 DF 83 38 2F 75 DA 48 83 C4 20 5B 5E 5F C3 66 90 ..8/u.H.. [^_.f.

;; fn0000000000404090: 0000000000404090
;;   Called from:
;;     0000000000404449 (in fn00000000004042F0)
;;     0000000000404657 (in fn00000000004042F0)
;;     0000000000404686 (in fn00000000004042F0)
;;     00000000004046A4 (in fn00000000004042F0)
;;     00000000004046D3 (in fn00000000004042F0)
;;     00000000004046F6 (in fn00000000004042F0)
;;     00000000004049FB (in fn00000000004042F0)
;;     0000000000404E17 (in fn00000000004042F0)
;;     0000000000404E3A (in fn00000000004042F0)
;;     0000000000404FFC (in fn00000000004042F0)
;;     0000000000405174 (in fn00000000004042F0)
;;     00000000004056A0 (in fn00000000004042F0)
;;     00000000004056C3 (in fn00000000004042F0)
;;     00000000004056E6 (in fn00000000004042F0)
;;     0000000000405709 (in fn00000000004042F0)
;;     000000000040572C (in fn00000000004042F0)
;;     000000000040574F (in fn00000000004042F0)
;;     0000000000405780 (in fn00000000004042F0)
;;     0000000000405807 (in fn00000000004042F0)
;;     0000000000405967 (in fn00000000004042F0)
;;     0000000000405D0A (in fn00000000004042F0)
;;     0000000000406358 (in fn00000000004042F0)
;;     000000000040637B (in fn00000000004042F0)
;;     00000000004064B8 (in fn00000000004042F0)
;;     00000000004064CC (in fn00000000004042F0)
;;     0000000000406504 (in fn00000000004042F0)
;;     00000000004066F2 (in fn00000000004042F0)
;;     0000000000406887 (in fn00000000004042F0)
;;     000000000040697E (in fn00000000004042F0)
;;     00000000004069F3 (in fn00000000004042F0)
;;     0000000000406A6D (in fn00000000004042F0)
;;     0000000000406AC3 (in fn00000000004042F0)
fn0000000000404090 proc
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,28h
	mov	rsi,rcx
	mov	rcx,rdx
	mov	rbx,rdx
	call	41BCB8h
	test	rax,rax
	jz	404120h

l00000000004040AB:
	mov	r8,[rsi+100h]
	lea	rbp,[rbx+rax]
	jmp	4040E2h
00000000004040B8                         0F 1F 84 00 00 00 00 00         ........

l00000000004040C0:
	mov	rdx,r8
	add	r8,1h

l00000000004040C7:
	add	rbx,1h
	mov	[rsi+100h],r8
	mov	[rsi+rdx],dil
	cmp	rbx,rbp
	mov	[rsi+108h],dil
	jz	404120h

l00000000004040E2:
	cmp	r8,+0FFh
	movzx	edi,byte ptr [rbx]
	jnz	4040C0h

l00000000004040EE:
	mov	r8,[rsi+118h]
	mov	edx,0FFh
	mov	byte ptr [rsi+0FFh],0h
	mov	rcx,rsi
	call	qword ptr [rsi+110h]
	add	dword ptr [rsi+138h],1h
	mov	r8d,1h
	xor	edx,edx
	jmp	4040C7h
000000000040411B                                  0F 1F 44 00 00            ..D..

l0000000000404120:
	add	rsp,28h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
0000000000404129                            0F 1F 80 00 00 00 00          .......

;; fn0000000000404130: 0000000000404130
;;   Called from:
;;     0000000000404665 (in fn00000000004042F0)
;;     00000000004046B2 (in fn00000000004042F0)
;;     0000000000405D14 (in fn00000000004042F0)
;;     000000000040636C (in fn00000000004042F0)
fn0000000000404130 proc
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,40h
	lea	r12,[rsp+20h]
	mov	r8d,edx
	lea	rdx,[000000000048EC2C]                                 ; [rip+0008AAE3]
	mov	rbx,rcx
	mov	rbp,r12
	mov	rcx,r12
	call	41BE60h

l0000000000404157:
	mov	edx,[rbp+0h]
	add	rbp,4h
	lea	eax,[rdx+0FEFEFEFFh]
	not	edx
	and	eax,edx
	and	eax,80808080h
	jz	404157h

l000000000040416F:
	mov	edx,eax
	shr	edx,10h
	test	eax,8080h
	cmovz	eax,edx

l000000000040417C:
	lea	rdx,[rbp+2h]
	cmovz	rbp,rdx

l0000000000404184:
	add	al,al
	sbb	rbp,3h
	sub	rbp,r12
	jz	404200h

l000000000040418F:
	mov	rax,[rbx+100h]
	xor	esi,esi
	jmp	4041C2h
000000000040419A                               66 0F 1F 44 00 00           f..D..

l00000000004041A0:
	mov	rdx,rax
	add	rax,1h

l00000000004041A7:
	add	rsi,1h
	mov	[rbx+100h],rax
	mov	[rbx+rdx],dil
	cmp	rsi,rbp
	mov	[rbx+108h],dil
	jz	404200h

l00000000004041C2:
	cmp	rax,+0FFh
	movzx	edi,byte ptr [r12+rsi]
	jnz	4041A0h

l00000000004041CF:
	mov	edx,0FFh
	mov	byte ptr [rbx+0FFh],0h
	mov	r8,[rbx+118h]
	mov	rcx,rbx
	call	qword ptr [rbx+110h]
	add	dword ptr [rbx+138h],1h
	mov	eax,1h
	xor	edx,edx
	jmp	4041A7h
00000000004041FB                                  0F 1F 44 00 00            ..D..

l0000000000404200:
	add	rsp,40h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
000000000040420B                                  0F 1F 44 00 00            ..D..

;; fn0000000000404210: 0000000000404210
fn0000000000404210 proc
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,28h
	mov	rax,[r8+8h]
	mov	rbx,[r8+10h]
	mov	rbp,rcx
	mov	rdi,rdx
	mov	rsi,r8
	lea	rax,[rdx+rax+1h]
	cmp	rax,rbx
	ja	404272h

l0000000000404233:
	mov	eax,[rsi+18h]
	test	eax,eax
	jz	404243h

l000000000040423A:
	add	rsp,28h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret

l0000000000404243:
	mov	rax,[rsi+8h]
	add	rax,[rsi]
	mov	r8,rdi
	mov	rdx,rbp
	mov	rcx,rax
	call	41BCC0h
	mov	rax,rdi
	add	rax,[rsi]
	add	rax,[rsi+8h]
	mov	byte ptr [rax],0h
	add	[rsi+8h],rdi
	add	rsp,28h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret

l0000000000404272:
	mov	edx,[r8+18h]
	test	edx,edx
	jnz	40423Ah

l000000000040427A:
	test	rbx,rbx
	jnz	404290h

l000000000040427F:
	cmp	rax,2h
	jbe	4042B1h

l0000000000404285:
	mov	bl,2h
	nop	word ptr [rax+rax+0h]

l0000000000404290:
	add	rbx,rbx
	cmp	rax,rbx
	ja	404290h

l0000000000404298:
	mov	rcx,[rsi]
	mov	rdx,rbx
	call	41BE68h
	test	rax,rax
	jz	4042B8h

l00000000004042A8:
	mov	[rsi],rax
	mov	[rsi+10h],rbx
	jmp	404233h

l00000000004042B1:
	mov	ebx,2h
	jmp	404298h

l00000000004042B8:
	mov	rcx,[rsi]
	call	41BDA0h
	mov	qword ptr [rsi],+0h
	mov	qword ptr [rsi+8h],+0h
	mov	qword ptr [rsi+10h],+0h
	mov	dword ptr [rsi+18h],1h
	jmp	40423Ah
00000000004042E3          66 66 66 66 2E 0F 1F 84 00 00 00 00 00    ffff.........

;; fn00000000004042F0: 00000000004042F0
;;   Called from:
;;     00000000004043B4 (in fn00000000004042F0)
;;     00000000004043FF (in fn00000000004042F0)
;;     000000000040443A (in fn00000000004042F0)
;;     0000000000404458 (in fn00000000004042F0)
;;     0000000000404484 (in fn00000000004042F0)
;;     0000000000404553 (in fn00000000004042F0)
;;     0000000000404695 (in fn00000000004042F0)
;;     00000000004046E2 (in fn00000000004042F0)
;;     0000000000404705 (in fn00000000004042F0)
;;     0000000000404909 (in fn00000000004042F0)
;;     0000000000404918 (in fn00000000004042F0)
;;     0000000000404A2B (in fn00000000004042F0)
;;     0000000000404C30 (in fn00000000004042F0)
;;     0000000000404C67 (in fn00000000004042F0)
;;     0000000000404CA9 (in fn00000000004042F0)
;;     0000000000404D66 (in fn00000000004042F0)
;;     0000000000404E49 (in fn00000000004042F0)
;;     0000000000404E8E (in fn00000000004042F0)
;;     0000000000404F95 (in fn00000000004042F0)
;;     000000000040500B (in fn00000000004042F0)
;;     0000000000405140 (in fn00000000004042F0)
;;     0000000000405154 (in fn00000000004042F0)
;;     00000000004051B6 (in fn00000000004042F0)
;;     0000000000405209 (in fn00000000004042F0)
;;     000000000040524E (in fn00000000004042F0)
;;     00000000004052A6 (in fn00000000004042F0)
;;     0000000000405616 (in fn00000000004042F0)
;;     00000000004056AF (in fn00000000004042F0)
;;     00000000004056D2 (in fn00000000004042F0)
;;     00000000004056F5 (in fn00000000004042F0)
;;     0000000000405718 (in fn00000000004042F0)
;;     000000000040573B (in fn00000000004042F0)
;;     000000000040575E (in fn00000000004042F0)
;;     000000000040578F (in fn00000000004042F0)
;;     0000000000405816 (in fn00000000004042F0)
;;     0000000000405863 (in fn00000000004042F0)
;;     0000000000405976 (in fn00000000004042F0)
;;     00000000004059AA (in fn00000000004042F0)
;;     00000000004059BE (in fn00000000004042F0)
;;     00000000004059FB (in fn00000000004042F0)
;;     0000000000405A38 (in fn00000000004042F0)
;;     0000000000405AE7 (in fn00000000004042F0)
;;     0000000000405AFB (in fn00000000004042F0)
;;     0000000000405B0F (in fn00000000004042F0)
;;     0000000000405B4F (in fn00000000004042F0)
;;     0000000000405B63 (in fn00000000004042F0)
;;     0000000000405B77 (in fn00000000004042F0)
;;     0000000000405B99 (in fn00000000004042F0)
;;     0000000000405C13 (in fn00000000004042F0)
;;     0000000000405C27 (in fn00000000004042F0)
;;     0000000000405C41 (in fn00000000004042F0)
;;     0000000000405DF7 (in fn00000000004042F0)
;;     0000000000405EA5 (in fn00000000004042F0)
;;     000000000040608C (in fn00000000004042F0)
;;     000000000040642A (in fn00000000004042F0)
;;     0000000000406464 (in fn00000000004042F0)
;;     0000000000406490 (in fn00000000004042F0)
;;     0000000000406518 (in fn00000000004042F0)
;;     0000000000406678 (in fn00000000004042F0)
;;     00000000004066E3 (in fn00000000004042F0)
;;     0000000000406705 (in fn00000000004042F0)
;;     0000000000406803 (in fn00000000004042F0)
;;     0000000000406878 (in fn00000000004042F0)
;;     00000000004068AC (in fn00000000004042F0)
;;     000000000040691B (in fn00000000004042F0)
;;     0000000000406B3E (in fn0000000000406AD0)
;;     0000000000406FF9 (in fn0000000000406AD0)
;;     0000000000407079 (in fn0000000000406AD0)
;;     00000000004072D7 (in fn00000000004071F0)
;;     00000000004073A6 (in fn00000000004071F0)
;;     000000000040761E (in fn0000000000407580)
;;     0000000000407969 (in fn0000000000407820)
;;     0000000000407B86 (in fn0000000000407B40)
;;     0000000000407BB9 (in fn0000000000407B40)
;;     0000000000407C12 (in fn0000000000407B40)
;;     0000000000407D8A (in fn0000000000407D70)
;;     0000000000407E77 (in fn0000000000407E20)
;;     0000000000407EB7 (in fn0000000000407E20)
;;     000000000040C95A (in fn000000000040C6B0)
fn00000000004042F0 proc
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,+0C8h
	test	r8,r8
	mov	rbx,rcx
	mov	r12d,edx
	mov	rbp,r8
	jz	404424h

l0000000000404315:
	mov	r9d,[rcx+130h]
	test	r9d,r9d
	jnz	404405h

l0000000000404325:
	mov	ecx,[r8]
	cmp	ecx,4Bh
	ja	405980h

l0000000000404331:
	lea	rax,[000000000048EE98]                                 ; [rip+0008AB60]
	mov	edx,ecx
	movsxd	rdx,dword ptr [rax+rdx*4]
	add	rax,rdx
	jmp	rax

l0000000000404343:
	mov	rax,[r8+8h]
	xor	esi,esi
	cmp	dword ptr [rax],27h
	jnz	404381h

l000000000040434E:
	mov	rax,[rax+8h]
	mov	esi,[rax+1Ch]
	cmp	esi,1h
	jc	404381h

l000000000040435A:
	cmp	esi,6h
	jbe	40646Eh

l0000000000404363:
	cmp	esi,7h
	jnz	404381h

l0000000000404368:
	mov	rax,[r8+10h]
	mov	edx,[rax]
	test	edx,edx
	jnz	404381h

l0000000000404372:
	cmp	dword ptr [rax+10h],1h
	jnz	404381h

l0000000000404378:
	cmp	ecx,3Bh
	jz	406A50h

l0000000000404381:
	mov	rax,[rbx+100h]
	cmp	rax,+0FFh
	jz	4063BDh

l0000000000404394:
	lea	rdx,[rax+1h]

l0000000000404398:
	mov	[rbx+100h],rdx
	mov	byte ptr [rbx+rax],28h
	mov	edx,r12d
	mov	byte ptr [rbx+108h],28h
	mov	r8,[rbp+8h]
	mov	rcx,rbx
	call	4042F0h
	mov	rax,[rbx+100h]
	cmp	rax,+0FFh
	jz	40638Eh

l00000000004043CC:
	lea	rdx,[rax+1h]

l00000000004043D0:
	mov	[rbx+100h],rdx
	mov	byte ptr [rbx+rax],29h
	mov	byte ptr [rbx+108h],29h
	cmp	dword ptr [rbp+0h],3Ch
	jz	40668Fh

l00000000004043EC:
	cmp	esi,8h
	jz	406661h

l00000000004043F5:
	mov	r8,[rbp+10h]
	mov	edx,r12d
	mov	rcx,rbx
	call	4042F0h
	nop

l0000000000404405:
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

l0000000000404419:
	test	edi,edi
	jz	404424h

l000000000040441D:
	mov	[rbx+120h],rsi

l0000000000404424:
	mov	dword ptr [rbx+130h],1h
	jmp	404405h

l0000000000404430:
	mov	r8,[r8+8h]
	mov	edx,r12d
	mov	rcx,rbx
	call	4042F0h
	lea	rdx,[000000000048EE8C]                                 ; [rip+0008AA46]
	mov	rcx,rbx
	call	404090h
	mov	r8,[rbp+10h]
	mov	edx,r12d
	mov	rcx,rbx
	call	4042F0h
	mov	edx,5Dh
	mov	rcx,rbx
	call	403BF0h
	jmp	404405h

l000000000040446C:
	mov	r8,[r8+8h]
	mov	edx,r12d
	mov	rcx,rbx
	lea	rsi,[000000000048EC30]                                 ; [rip+0008A7B3]
	lea	r13,[000000000048EC35]                                 ; [rip+0008A7B1]
	call	4042F0h
	mov	rax,[rbx+100h]
	jmp	4044B8h

l0000000000404492:
	mov	rdx,rax
	add	rax,1h

l0000000000404499:
	add	rsi,1h
	mov	[rbx+100h],rax
	mov	[rbx+rdx],dil
	cmp	rsi,r13
	mov	[rbx+108h],dil
	jz	4059B4h

l00000000004044B8:
	cmp	rax,+0FFh
	movzx	edi,byte ptr [rsi]
	jnz	404492h

l00000000004044C3:
	mov	edx,0FFh
	mov	byte ptr [rbx+0FFh],0h
	mov	r8,[rbx+118h]
	mov	rcx,rbx
	call	qword ptr [rbx+110h]
	add	dword ptr [rbx+138h],1h
	mov	eax,1h
	xor	edx,edx
	jmp	404499h

l00000000004044EF:
	mov	rdx,[r8+8h]
	mov	rcx,rbx
	xor	edi,edi
	call	404010h
	test	rax,rax
	jz	4069DAh

l0000000000404506:
	nop	word ptr cs:[rax+rax+0h]

l0000000000404510:
	cmp	dword ptr [rax],2Fh
	jnz	405C82h

l0000000000404519:
	cmp	qword ptr [rax+8h],0h
	jz	405C82h

l0000000000404524:
	mov	rax,[rax+10h]
	add	edi,1h
	test	rax,rax
	jnz	404510h

l0000000000404530:
	mov	r13,[rbp+8h]

l0000000000404534:
	lea	eax,[rdi-1h]
	lea	r14,[000000000048EDC8]                                 ; [rip+0008A88A]
	xor	ebp,ebp
	mov	[rsp+28h],eax

l0000000000404544:
	mov	[rbx+134h],ebp
	mov	r8,r13
	mov	edx,r12d
	mov	rcx,rbx
	call	4042F0h
	cmp	[rsp+28h],ebp
	jle	405990h

l0000000000404562:
	mov	rax,[rbx+100h]
	lea	rsi,[000000000048EDC6]                                 ; [rip+0008A856]
	jmp	404598h

l0000000000404572:
	mov	rdx,rax
	add	rax,1h

l0000000000404579:
	add	rsi,1h
	mov	[rbx+100h],rax
	mov	[rbx+rdx],r15b
	cmp	rsi,r14
	mov	[rbx+108h],r15b
	jz	405990h

l0000000000404598:
	cmp	rax,+0FFh
	movzx	r15d,byte ptr [rsi]
	jnz	404572h

l00000000004045A4:
	mov	edx,0FFh
	mov	byte ptr [rbx+0FFh],0h
	mov	r8,[rbx+118h]
	mov	rcx,rbx
	call	qword ptr [rbx+110h]
	add	dword ptr [rbx+138h],1h
	mov	eax,1h
	xor	edx,edx
	jmp	404579h

l00000000004045D0:
	mov	rax,[rbx+100h]
	lea	rsi,[000000000048ED97]                                 ; [rip+0008A7B9]
	lea	r13,[000000000048EDB1]                                 ; [rip+0008A7CC]
	jmp	404616h
00000000004045E7                      66 0F 1F 84 00 00 00 00 00        f........

l00000000004045F0:
	mov	rdx,rax
	add	rax,1h

l00000000004045F7:
	add	rsi,1h
	mov	[rbx+100h],rax
	mov	[rbx+rdx],dil
	cmp	rsi,r13
	mov	[rbx+108h],dil
	jz	405A2Eh

l0000000000404616:
	cmp	rax,+0FFh
	movzx	edi,byte ptr [rsi]
	jnz	4045F0h

l0000000000404621:
	mov	edx,0FFh
	mov	byte ptr [rbx+0FFh],0h
	mov	r8,[rbx+118h]
	mov	rcx,rbx
	call	qword ptr [rbx+110h]
	add	dword ptr [rbx+138h],1h
	mov	eax,1h
	xor	edx,edx
	jmp	4045F7h

l000000000040464D:
	lea	rdx,[000000000048EE7D]                                 ; [rip+0008A829]
	mov	rcx,rbx
	call	404090h
	mov	edx,[rbp+8h]
	mov	rcx,rbx
	add	edx,1h
	call	404130h
	mov	edx,7Dh
	mov	rcx,rbx
	call	403BF0h
	jmp	404405h

l000000000040467C:
	lea	rdx,[000000000048EE71]                                 ; [rip+0008A7EE]
	mov	rcx,rbx
	call	404090h
	mov	r8,[rbp+8h]
	mov	edx,r12d
	mov	rcx,rbx
	call	4042F0h
	lea	rdx,[000000000048EE7A]                                 ; [rip+0008A7D9]
	mov	rcx,rbx
	call	404090h
	mov	edx,[rbp+10h]
	mov	rcx,rbx
	add	edx,1h
	call	404130h
	mov	edx,7Dh
	mov	rcx,rbx
	call	403BF0h
	jmp	404405h

l00000000004046C9:
	lea	rdx,[000000000048EE54]                                 ; [rip+0008A784]
	mov	rcx,rbx
	call	404090h
	mov	r8,[rbp+8h]
	mov	edx,r12d
	mov	rcx,rbx
	call	4042F0h
	jmp	404405h

l00000000004046EC:
	lea	rdx,[000000000048EE36]                                 ; [rip+0008A743]
	mov	rcx,rbx
	call	404090h
	mov	r8,[rbp+8h]
	mov	edx,r12d
	mov	rcx,rbx
	call	4042F0h
	jmp	404405h

l000000000040470F:
	mov	rax,[rbx+100h]
	lea	rsi,[000000000048EE1B]                                 ; [rip+0008A6FE]
	lea	r13,[000000000048EE25]                                 ; [rip+0008A701]
	jmp	404756h
0000000000404726                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l0000000000404730:
	mov	rdx,rax
	add	rax,1h

l0000000000404737:
	add	rsi,1h
	mov	[rbx+100h],rax
	mov	[rbx+rdx],dil
	cmp	rsi,r13
	mov	[rbx+108h],dil
	jz	4059F1h

l0000000000404756:
	cmp	rax,+0FFh
	movzx	edi,byte ptr [rsi]
	jnz	404730h

l0000000000404761:
	mov	edx,0FFh
	mov	byte ptr [rbx+0FFh],0h
	mov	r8,[rbx+118h]
	mov	rcx,rbx
	call	qword ptr [rbx+110h]
	add	dword ptr [rbx+138h],1h
	mov	eax,1h
	xor	edx,edx
	jmp	404737h

l000000000040478D:
	lea	rdi,[rsp+40h]
	mov	r8d,[r8+8h]
	lea	rdx,[000000000048EC2C]                                 ; [rip+0008A48F]
	mov	rcx,rdi
	mov	r12,rdi
	call	41BE60h

l00000000004047A8:
	mov	edx,[r12]
	add	r12,4h
	lea	eax,[rdx+0FEFEFEFFh]
	not	edx
	and	eax,edx
	and	eax,80808080h
	jz	4047A8h

l00000000004047C1:
	mov	edx,eax
	shr	edx,10h
	test	eax,8080h
	cmovz	eax,edx

l00000000004047CE:
	lea	rdx,[r12+2h]
	cmovz	r12,rdx

l00000000004047D7:
	add	al,al
	sbb	r12,3h
	sub	r12,rdi
	jz	404405h

l00000000004047E6:
	mov	rax,[rbx+100h]
	xor	esi,esi
	jmp	404817h

l00000000004047F1:
	mov	rdx,rax
	add	rax,1h

l00000000004047F8:
	add	rsi,1h
	mov	[rbx+100h],rax
	mov	[rbx+rdx],bpl
	cmp	rsi,r12
	mov	[rbx+108h],bpl
	jz	404405h

l0000000000404817:
	cmp	rax,+0FFh
	movzx	ebp,byte ptr [rdi+rsi]
	jnz	4047F1h

l0000000000404823:
	mov	edx,0FFh
	mov	byte ptr [rbx+0FFh],0h
	mov	r8,[rbx+118h]
	mov	rcx,rbx
	call	qword ptr [rbx+110h]
	add	dword ptr [rbx+138h],1h
	mov	eax,1h
	xor	edx,edx
	jmp	4047F8h

l000000000040484F:
	mov	rax,[rbx+100h]
	lea	rsi,[000000000048ED80]                                 ; [rip+0008A523]
	lea	r13,[000000000048ED96]                                 ; [rip+0008A532]
	jmp	404896h
0000000000404866                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l0000000000404870:
	mov	rdx,rax
	add	rax,1h

l0000000000404877:
	add	rsi,1h
	mov	[rbx+100h],rax
	mov	[rbx+rdx],dil
	cmp	rsi,r13
	mov	[rbx+108h],dil
	jz	4059A0h

l0000000000404896:
	cmp	rax,+0FFh
	movzx	edi,byte ptr [rsi]
	jnz	404870h

l00000000004048A1:
	mov	edx,0FFh
	mov	byte ptr [rbx+0FFh],0h
	mov	r8,[rbx+118h]
	mov	rcx,rbx
	call	qword ptr [rbx+110h]
	add	dword ptr [rbx+138h],1h
	mov	eax,1h
	xor	edx,edx
	jmp	404877h

l00000000004048CD:
	mov	rax,[rbx+100h]
	mov	esi,[r8+8h]
	cmp	rax,+0FFh
	jz	4062EBh

l00000000004048E4:
	lea	rdx,[rax+1h]

l00000000004048E8:
	mov	[rbx+100h],rdx
	mov	[rbx+rax],sil
	mov	[rbx+108h],sil
	jmp	404405h

l00000000004048FF:
	mov	r8,[r8+8h]
	mov	edx,r12d
	mov	rcx,rbx
	call	4042F0h
	mov	r8,[rbp+10h]
	mov	edx,r12d
	mov	rcx,rbx
	call	4042F0h
	jmp	404405h

l0000000000404922:
	mov	rax,[rbx+100h]
	lea	rsi,[000000000048EE0C]                                 ; [rip+0008A4DC]
	lea	r13,[000000000048EE1A]                                 ; [rip+0008A4E3]
	jmp	404966h
0000000000404939                            0F 1F 80 00 00 00 00          .......

l0000000000404940:
	mov	rdx,rax
	add	rax,1h

l0000000000404947:
	add	rsi,1h
	mov	[rbx+100h],rax
	mov	[rbx+rdx],dil
	cmp	rsi,r13
	mov	[rbx+108h],dil
	jz	405ADDh

l0000000000404966:
	cmp	rax,+0FFh
	movzx	edi,byte ptr [rsi]
	jnz	404940h

l0000000000404971:
	mov	edx,0FFh
	mov	byte ptr [rbx+0FFh],0h
	mov	r8,[rbx+118h]
	mov	rcx,rbx
	call	qword ptr [rbx+110h]
	add	dword ptr [rbx+138h],1h
	mov	eax,1h
	xor	edx,edx
	jmp	404947h

l000000000040499D:
	mov	dword ptr [rbx+130h],1h
	jmp	404405h

l00000000004049AC:
	mov	rax,[r8+10h]
	cmp	dword ptr [rax],39h
	jnz	404424h

l00000000004049B9:
	mov	rdx,[rax+10h]
	cmp	dword ptr [rdx],3Ah
	jnz	404424h

l00000000004049C6:
	mov	r15,[r8+8h]
	mov	r13,[rax+8h]
	lea	rdi,[000000000048EDEB]                                 ; [rip+0008A416]
	mov	ecx,3h
	mov	r14,[rdx+8h]
	mov	rbp,[rdx+10h]
	mov	rax,[r15+8h]
	mov	rsi,[rax]

l00000000004049E9:
	rep cmpsb

l00000000004049EB:
	jz	40694Ah

l00000000004049F1:
	lea	rdx,[000000000048EDF2]                                 ; [rip+0008A3FA]
	mov	rcx,rbx
	call	404090h
	cmp	qword ptr [r13+8h],0h
	jz	404A22h

l0000000000404A07:
	mov	edx,r12d
	mov	rcx,rbx
	mov	r8,r13
	call	407E20h
	mov	edx,20h
	mov	rcx,rbx
	call	403BF0h

l0000000000404A22:
	mov	r8,r14
	mov	edx,r12d
	mov	rcx,rbx
	call	4042F0h
	test	rbp,rbp
	jz	404405h

l0000000000404A39:
	mov	r8,rbp
	mov	edx,r12d
	mov	rcx,rbx
	call	407E20h
	jmp	404405h
0000000000404A4C                                     0F 1F 40 00             ..@.

l0000000000404A50:
	mov	dword ptr [rbx+130h],1h
	jmp	404405h

l0000000000404A5F:
	mov	rax,[r8+10h]
	cmp	dword ptr [rax],37h
	jnz	404424h

l0000000000404A6C:
	mov	r8,[r8+8h]
	mov	rcx,[r8+8h]
	mov	rdx,[rcx]
	cmp	byte ptr [rdx+1h],63h
	jz	4066A1h

l0000000000404A81:
	cmp	dword ptr [r8],31h
	jz	4068C3h

l0000000000404A8B:
	mov	rsi,rdx

l0000000000404A8E:
	lea	r13,[000000000048EDE5]                                 ; [rip+0008A350]
	mov	ecx,3h
	mov	r8,[rax+8h]
	mov	rdi,r13

l0000000000404AA1:
	rep cmpsb

l0000000000404AA3:
	seta	cl
	setc	dl
	cmp	cl,dl
	jnz	404AB7h

l0000000000404AAD:
	cmp	dword ptr [r8],3h
	jz	406996h

l0000000000404AB7:
	mov	edx,r12d
	mov	rcx,rbx
	call	407E20h

l0000000000404AC2:
	mov	r8,[rbp+8h]
	lea	rdi,[000000000048EDE8]                                 ; [rip+0008A31B]
	mov	ecx,3h
	mov	rax,[r8+8h]
	mov	rax,[rax]
	mov	rsi,rax

l0000000000404ADC:
	rep cmpsb

l0000000000404ADE:
	jz	406891h

l0000000000404AE4:
	mov	ecx,3h
	mov	rsi,rax
	mov	rdi,r13

l0000000000404AEF:
	rep cmpsb

l0000000000404AF1:
	jnz	40693Ah

l0000000000404AF7:
	mov	rax,[rbp+10h]
	mov	edx,r12d
	mov	rcx,rbx
	mov	r8,[rax+10h]
	call	407E20h

l0000000000404B0A:
	mov	rax,[rbp+8h]
	cmp	dword ptr [rax],31h
	jnz	404405h

l0000000000404B17:
	mov	rax,[rax+8h]
	cmp	dword ptr [rax+10h],1h
	jnz	404405h

l0000000000404B25:
	mov	rax,[rax+8h]
	cmp	byte ptr [rax],3Eh
	jnz	404405h

l0000000000404B32:
	mov	edx,29h
	mov	rcx,rbx
	call	403BF0h
	jmp	404405h

l0000000000404B44:
	mov	r13,[r8+8h]
	mov	r14,[r8+10h]
	mov	eax,[r13+0h]
	cmp	eax,31h
	jz	405E24h

l0000000000404B59:
	cmp	eax,33h
	jz	406024h

l0000000000404B62:
	mov	r8,r13
	mov	edx,r12d
	mov	rcx,rbx
	call	407D70h

l0000000000404B70:
	mov	r8,r14
	mov	edx,r12d
	mov	rcx,rbx
	call	407E20h
	jmp	404405h

l0000000000404B83:
	mov	r8,[r8+8h]
	mov	edx,r12d
	mov	rcx,rbx
	call	407D70h
	jmp	404405h

l0000000000404B97:
	mov	rbp,[r8+8h]
	mov	rax,[rbx+100h]
	lea	rsi,[000000000048EDC9]                                 ; [rip+0008A220]
	lea	r13,[000000000048EDD1]                                 ; [rip+0008A221]
	mov	r12d,[rbp+10h]
	jmp	404BE6h
0000000000404BB6                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l0000000000404BC0:
	mov	rdx,rax
	add	rax,1h

l0000000000404BC7:
	add	rsi,1h
	mov	[rbx+100h],rax
	mov	[rbx+rdx],dil
	cmp	rsi,r13
	mov	[rbx+108h],dil
	jz	405A42h

l0000000000404BE6:
	cmp	rax,+0FFh
	movzx	edi,byte ptr [rsi]
	jnz	404BC0h

l0000000000404BF1:
	mov	edx,0FFh
	mov	byte ptr [rbx+0FFh],0h
	mov	r8,[rbx+118h]
	mov	rcx,rbx
	call	qword ptr [rbx+110h]
	add	dword ptr [rbx+138h],1h
	mov	eax,1h
	xor	edx,edx
	jmp	404BC7h

l0000000000404C1D:
	mov	r8,[r8+8h]
	mov	rsi,[rbp+10h]
	test	r8,r8
	jz	404C35h

l0000000000404C2A:
	mov	edx,r12d
	mov	rcx,rbx
	call	4042F0h

l0000000000404C35:
	mov	rax,[rbx+100h]
	cmp	rax,+0FFh
	jz	4061F1h

l0000000000404C48:
	lea	rdx,[rax+1h]

l0000000000404C4C:
	mov	[rbx+100h],rdx
	mov	r8,rsi
	mov	byte ptr [rbx+rax],7Bh
	mov	edx,r12d
	mov	byte ptr [rbx+108h],7Bh
	mov	rcx,rbx
	call	4042F0h
	mov	rax,[rbx+100h]
	cmp	rax,+0FFh
	jz	4061C2h

l0000000000404C7F:
	lea	rdx,[rax+1h]

l0000000000404C83:
	mov	[rbx+100h],rdx
	mov	byte ptr [rbx+rax],7Dh
	mov	byte ptr [rbx+108h],7Dh
	jmp	404405h

l0000000000404C9A:
	mov	r8,[r8+8h]
	test	r8,r8
	jz	404CAEh

l0000000000404CA3:
	mov	edx,r12d
	mov	rcx,rbx
	call	4042F0h

l0000000000404CAE:
	cmp	qword ptr [rbp+10h],0h
	jz	404405h

l0000000000404CB9:
	mov	rsi,[rbx+100h]
	cmp	rsi,+0FDh
	ja	406052h

l0000000000404CCD:
	lea	rdi,[000000000048EDC6]                                 ; [rip+0008A0F2]
	lea	r14,[000000000048EDC8]                                 ; [rip+0008A0ED]
	jmp	404D06h
0000000000404CDD                                        0F 1F 00              ...

l0000000000404CE0:
	mov	rax,rsi
	add	rsi,1h

l0000000000404CE7:
	add	rdi,1h
	mov	[rbx+100h],rsi
	mov	[rbx+rax],r13b
	cmp	rdi,r14
	mov	[rbx+108h],r13b
	jz	405C31h

l0000000000404D06:
	cmp	rsi,+0FFh
	movzx	r13d,byte ptr [rdi]
	jnz	404CE0h

l0000000000404D13:
	mov	byte ptr [rbx+0FFh],0h
	mov	r8,[rbx+118h]
	mov	edx,0FFh
	mov	rcx,rbx
	mov	esi,1h
	call	qword ptr [rbx+110h]
	add	dword ptr [rbx+138h],1h
	xor	eax,eax
	jmp	404CE7h

l0000000000404D3F:
	cmp	word ptr [r8+12h],0h
	jnz	405EBCh

l0000000000404D4B:
	mov	r8,[rbp+8h]
	lea	rax,[0000000000490180]                                 ; [rip+0008B42A]
	cmp	[r8+8h],rax
	jz	405DBEh

l0000000000404D60:
	mov	edx,r12d
	mov	rcx,rbx
	call	4042F0h
	mov	rdx,[rbx+100h]
	cmp	rdx,+0FFh
	jz	406580h

l0000000000404D7F:
	lea	rax,[rdx+1h]

l0000000000404D83:
	mov	[rbx+100h],rax
	mov	byte ptr [rbx+rdx],20h
	mov	byte ptr [rbx+108h],20h

l0000000000404D95:
	cmp	word ptr [rbp+10h],0h
	jz	405C93h

l0000000000404DA0:
	lea	rsi,[000000000048EDB8]                                 ; [rip+0008A011]
	lea	rbp,[000000000048EDBE]                                 ; [rip+0008A010]
	jmp	404DD6h

l0000000000404DB0:
	mov	rdx,rax
	add	rax,1h

l0000000000404DB7:
	add	rsi,1h
	mov	[rbx+100h],rax
	mov	[rbx+rdx],dil
	cmp	rsi,rbp
	mov	[rbx+108h],dil
	jz	404405h

l0000000000404DD6:
	cmp	rax,+0FFh
	movzx	edi,byte ptr [rsi]
	jnz	404DB0h

l0000000000404DE1:
	mov	edx,0FFh
	mov	byte ptr [rbx+0FFh],0h
	mov	r8,[rbx+118h]
	mov	rcx,rbx
	call	qword ptr [rbx+110h]
	add	dword ptr [rbx+138h],1h
	mov	eax,1h
	xor	edx,edx
	jmp	404DB7h

l0000000000404E0D:
	lea	rdx,[000000000048EDD2]                                 ; [rip+00089FBE]
	mov	rcx,rbx
	call	404090h
	lea	r8,[rbp+8h]
	mov	edx,r12d
	mov	rcx,rbx
	call	407B40h
	jmp	404405h

l0000000000404E30:
	lea	rdx,[000000000048EDD2]                                 ; [rip+00089F9B]
	mov	rcx,rbx
	call	404090h
	mov	r8,[rbp+10h]
	mov	edx,r12d
	mov	rcx,rbx
	call	4042F0h
	jmp	404405h

l0000000000404E53:
	mov	rax,[rbx+128h]
	mov	[rsp+48h],r8
	mov	edx,r12d
	mov	rcx,rbx
	mov	dword ptr [rsp+50h],0h
	mov	[rsp+40h],rax
	lea	rax,[rsp+40h]
	mov	[rbx+128h],rax
	mov	rax,[rbx+120h]
	mov	r8,[r8+10h]
	mov	[rsp+58h],rax
	call	4042F0h
	mov	r10d,[rsp+50h]
	test	r10d,r10d
	jnz	404EABh

l0000000000404E9D:
	mov	r8,rbp
	mov	edx,r12d
	mov	rcx,rbx
	call	406AD0h

l0000000000404EAB:
	mov	rax,[rsp+40h]
	mov	[rbx+128h],rax
	jmp	404405h

l0000000000404EBC:
	mov	rcx,[rbx+128h]
	mov	rax,[rbx+120h]
	lea	rdi,[rsp+40h]
	mov	[rsp+48h],r8
	mov	dword ptr [rsp+50h],0h
	mov	[rbx+128h],rdi
	mov	r13,rcx
	mov	[rsp+40h],rcx
	mov	[rsp+58h],rax
	test	r13,r13
	mov	rcx,rdi
	jz	40650Eh

l0000000000404EFC:
	mov	rax,[r13+8h]
	mov	eax,[rax]
	sub	eax,19h
	cmp	eax,2h
	ja	40650Eh

l0000000000404F0E:
	mov	rax,r13
	mov	esi,1h
	jmp	404F2Eh
0000000000404F18                         0F 1F 84 00 00 00 00 00         ........

l0000000000404F20:
	mov	rdx,[rax+8h]
	mov	edx,[rdx]
	sub	edx,19h
	cmp	edx,2h
	ja	404F8Bh

l0000000000404F2E:
	mov	r14d,[rax+10h]
	test	r14d,r14d
	jnz	404F83h

l0000000000404F37:
	cmp	esi,3h
	ja	4062DCh

l0000000000404F40:
	mov	r8,[rax]
	mov	edx,esi
	add	esi,1h
	shl	rdx,5h
	mov	[rsp+rdx+40h],r8
	mov	r8,[rax+8h]
	mov	[rsp+rdx+48h],r8
	mov	r8,[rax+10h]
	mov	[rsp+rdx+50h],r8
	mov	r8,[rax+18h]
	mov	[rsp+rdx+40h],rcx
	lea	rcx,[rdi+rdx]
	mov	[rsp+rdx+58h],r8
	mov	[rbx+128h],rcx
	mov	dword ptr [rax+10h],1h

l0000000000404F83:
	mov	rax,[rax]
	test	rax,rax
	jnz	404F20h

l0000000000404F8B:
	mov	r8,[rbp+10h]
	mov	edx,r12d
	mov	rcx,rbx
	call	4042F0h
	mov	r11d,[rsp+50h]
	mov	[rbx+128h],r13
	test	r11d,r11d
	jnz	404405h

l0000000000404FAF:
	cmp	esi,1h
	jz	40652Fh

l0000000000404FB8:
	lea	eax,[rsi-1h]
	mov	edx,r12d
	mov	rcx,rbx
	mov	rsi,rax
	shl	rax,5h
	mov	r8,[rsp+rax+48h]
	call	406AD0h
	cmp	esi,1h
	jnz	404FB8h

l0000000000404FD7:
	mov	r9,[rbx+128h]

l0000000000404FDE:
	lea	r8,[rbp+8h]
	mov	edx,r12d
	mov	rcx,rbx
	call	407580h
	jmp	404405h

l0000000000404FF2:
	lea	rdx,[000000000048ECD0]                                 ; [rip+00089CD7]
	mov	rcx,rbx
	call	404090h
	mov	r8,[rbp+8h]
	mov	edx,r12d
	mov	rcx,rbx
	call	4042F0h
	jmp	404405h

l0000000000405015:
	movsxd	r12,dword ptr [r8+10h]
	mov	rbp,[r8+8h]
	test	r12,r12
	jz	404405h

l0000000000405026:
	mov	rax,[rbx+100h]
	xor	esi,esi
	jmp	405057h

l0000000000405031:
	mov	rdx,rax
	add	rax,1h

l0000000000405038:
	add	rsi,1h
	mov	[rbx+100h],rax
	mov	[rbx+rdx],dil
	cmp	r12,rsi
	mov	[rbx+108h],dil
	jz	404405h

l0000000000405057:
	cmp	rax,+0FFh
	movzx	edi,byte ptr [rbp+rsi+0h]
	jnz	405031h

l0000000000405064:
	mov	edx,0FFh
	mov	byte ptr [rbx+0FFh],0h
	mov	r8,[rbx+118h]
	mov	rcx,rbx
	call	qword ptr [rbx+110h]
	add	dword ptr [rbx+138h],1h
	mov	eax,1h
	xor	edx,edx
	jmp	405038h

l0000000000405090:
	mov	rax,[rbx+100h]
	lea	rsi,[000000000048ED6E]                                 ; [rip+00089CD0]
	lea	r13,[000000000048ED7F]                                 ; [rip+00089CDA]
	jmp	4050D6h
00000000004050A7                      66 0F 1F 84 00 00 00 00 00        f........

l00000000004050B0:
	mov	rdx,rax
	add	rax,1h

l00000000004050B7:
	add	rsi,1h
	mov	[rbx+100h],rax
	mov	[rbx+rdx],dil
	cmp	rsi,r13
	mov	[rbx+108h],dil
	jz	405C1Dh

l00000000004050D6:
	cmp	rax,+0FFh
	movzx	edi,byte ptr [rsi]
	jnz	4050B0h

l00000000004050E1:
	mov	edx,0FFh
	mov	byte ptr [rbx+0FFh],0h
	mov	r8,[rbx+118h]
	mov	rcx,rbx
	call	qword ptr [rbx+110h]
	add	dword ptr [rbx+138h],1h
	mov	eax,1h
	xor	edx,edx
	jmp	4050B7h

l000000000040510D:
	mov	rax,[rbx+100h]
	cmp	rax,+0FFh
	jz	40631Ah

l0000000000405120:
	lea	rdx,[rax+1h]

l0000000000405124:
	mov	[rbx+100h],rdx
	mov	byte ptr [rbx+rax],7Eh
	mov	edx,r12d
	mov	byte ptr [rbx+108h],7Eh
	mov	r8,[rbp+10h]
	mov	rcx,rbx
	call	4042F0h
	jmp	404405h

l000000000040514A:
	mov	r8,[r8+10h]
	mov	edx,r12d
	mov	rcx,rbx
	call	4042F0h
	jmp	404405h

l000000000040515E:
	mov	esi,[r8+8h]
	test	esi,esi
	jnz	405D00h

l000000000040516A:
	lea	rdx,[000000000048EE2A]                                 ; [rip+00089CB9]
	mov	rcx,rbx
	call	404090h
	jmp	404405h

l000000000040517E:
	lea	rdx,[r8+8h]
	mov	rcx,rbx
	call	403FA0h
	test	rax,rax
	jz	404424h

l0000000000405193:
	cmp	dword ptr [rax],2Fh
	jz	406096h

l000000000040519C:
	mov	rsi,[rbx+120h]
	mov	r8,rax
	mov	rcx,rbx
	mov	rdx,[rsi]
	mov	[rbx+120h],rdx
	mov	edx,r12d
	call	4042F0h
	mov	[rbx+120h],rsi
	jmp	404405h

l00000000004051C7:
	test	r12b,4h
	mov	r13,[rbx+160h]
	mov	r14,[rbx+128h]
	mov	[rbx+160h],r8
	mov	qword ptr [rbx+128h],+0h
	mov	r8,[r8+8h]
	jz	405203h

l00000000004051F1:
	mov	ecx,[r8]
	test	ecx,ecx
	jnz	405203h

l00000000004051F8:
	cmp	dword ptr [r8+10h],6h
	jz	406856h

l0000000000405203:
	mov	edx,r12d
	mov	rcx,rbx
	call	4042F0h
	cmp	byte ptr [rbx+108h],3Ch
	jz	40663Dh

l000000000040521B:
	mov	rax,[rbx+100h]
	cmp	rax,+0FFh
	jz	4062ADh

l000000000040522E:
	lea	rdx,[rax+1h]

l0000000000405232:
	mov	[rbx+100h],rdx
	mov	byte ptr [rbx+rax],3Ch
	mov	edx,r12d
	mov	byte ptr [rbx+108h],3Ch
	mov	r8,[rbp+10h]
	mov	rcx,rbx
	call	4042F0h
	cmp	byte ptr [rbx+108h],3Eh
	jz	40664Fh

l0000000000405260:
	mov	rax,[rbx+100h]
	cmp	rax,+0FFh
	jz	40627Eh

l0000000000405273:
	lea	rdx,[rax+1h]

l0000000000405277:
	mov	[rbx+100h],rdx
	mov	byte ptr [rbx+rax],3Eh
	mov	byte ptr [rbx+108h],3Eh

l0000000000405289:
	mov	[rbx+128h],r14
	mov	[rbx+160h],r13
	jmp	404405h

l000000000040529C:
	mov	r8,[r8+8h]
	mov	edx,r12d
	mov	rcx,rbx
	call	4042F0h
	test	r12b,4h
	mov	rax,[rbx+100h]
	jnz	405B19h

l00000000004052BC:
	lea	rsi,[000000000048EC36]                                 ; [rip+00089973]
	lea	r13,[000000000048EC38]                                 ; [rip+0008996E]
	jmp	4052F6h
00000000004052CC                                     0F 1F 40 00             ..@.

l00000000004052D0:
	mov	rdx,rax
	add	rax,1h

l00000000004052D7:
	add	rsi,1h
	mov	[rbx+100h],rax
	mov	[rbx+rdx],dil
	cmp	rsi,r13
	mov	[rbx+108h],dil
	jz	405B3Bh

l00000000004052F6:
	cmp	rax,+0FFh
	movzx	edi,byte ptr [rsi]
	jnz	4052D0h

l0000000000405301:
	mov	edx,0FFh
	mov	byte ptr [rbx+0FFh],0h
	mov	r8,[rbx+118h]
	mov	rcx,rbx
	call	qword ptr [rbx+110h]
	add	dword ptr [rbx+138h],1h
	mov	eax,1h
	xor	edx,edx
	jmp	4052D7h

l000000000040532D:
	and	r12d,4h
	jnz	4060E0h

l0000000000405337:
	movsxd	r12,dword ptr [r8+10h]
	mov	rbp,[r8+8h]
	test	r12,r12
	jz	404405h

l0000000000405348:
	mov	rax,[rbx+100h]
	xor	esi,esi
	jmp	405379h

l0000000000405353:
	mov	rdx,rax
	add	rax,1h

l000000000040535A:
	add	rsi,1h
	mov	[rbx+100h],rax
	mov	[rbx+rdx],dil
	cmp	r12,rsi
	mov	[rbx+108h],dil
	jz	404405h

l0000000000405379:
	cmp	rax,+0FFh
	movzx	edi,byte ptr [rbp+rsi+0h]
	jnz	405353h

l0000000000405386:
	mov	edx,0FFh
	mov	byte ptr [rbx+0FFh],0h
	mov	r8,[rbx+118h]
	mov	rcx,rbx
	call	qword ptr [rbx+110h]
	add	dword ptr [rbx+138h],1h
	mov	eax,1h
	xor	edx,edx
	jmp	40535Ah

l00000000004053B2:
	mov	r14,[rbx+128h]
	mov	qword ptr [rbx+128h],+0h
	mov	rsi,[r8+8h]
	test	rsi,rsi
	jz	405425h

l00000000004053CD:
	lea	rdi,[rsp+40h]
	mov	r9,[rbx+120h]
	xor	edx,edx
	xor	r13d,r13d
	mov	rax,rdi

l00000000004053E1:
	mov	[rax],rdx
	mov	edx,[rsi]
	add	r13d,1h
	mov	r8,rax
	mov	[rbx+128h],rax
	mov	[rax+8h],rsi
	mov	dword ptr [rax+10h],0h
	mov	[rax+18h],r9
	lea	ecx,[rdx-1Ch]
	cmp	ecx,4h
	ja	40674Bh

l000000000040540F:
	mov	rsi,[rsi+8h]
	test	rsi,rsi
	jz	405425h

l0000000000405418:
	add	rax,20h
	cmp	r13d,4h
	mov	rdx,r8
	jnz	4053E1h

l0000000000405425:
	mov	dword ptr [rbx+130h],1h
	jmp	404405h

l0000000000405434:
	mov	rax,[rbx+100h]
	lea	rsi,[000000000048EC88]                                 ; [rip+00089846]
	lea	r13,[000000000048EC95]                                 ; [rip+0008984C]
	jmp	405476h
000000000040544B                                  0F 1F 44 00 00            ..D..

l0000000000405450:
	mov	rdx,rax
	add	rax,1h

l0000000000405457:
	add	rsi,1h
	mov	[rbx+100h],rax
	mov	[rbx+rdx],dil
	cmp	rsi,r13
	mov	[rbx+108h],dil
	jz	405B6Dh

l0000000000405476:
	cmp	rax,+0FFh
	movzx	edi,byte ptr [rsi]
	jnz	405450h

l0000000000405481:
	mov	edx,0FFh
	mov	byte ptr [rbx+0FFh],0h
	mov	r8,[rbx+118h]
	mov	rcx,rbx
	call	qword ptr [rbx+110h]
	add	dword ptr [rbx+138h],1h
	mov	eax,1h
	xor	edx,edx
	jmp	405457h

l00000000004054AD:
	mov	rax,[rbx+100h]
	lea	rsi,[000000000048EC6A]                                 ; [rip+000897AF]
	lea	r13,[000000000048EC82]                                 ; [rip+000897C0]
	jmp	4054EAh

l00000000004054C4:
	mov	rdx,rax
	add	rax,1h

l00000000004054CB:
	add	rsi,1h
	mov	[rbx+100h],rax
	mov	[rbx+rdx],dil
	cmp	rsi,r13
	mov	[rbx+108h],dil
	jz	405B81h

l00000000004054EA:
	cmp	rax,+0FFh
	movzx	edi,byte ptr [rsi]
	jnz	4054C4h

l00000000004054F5:
	mov	edx,0FFh
	mov	byte ptr [rbx+0FFh],0h
	mov	r8,[rbx+118h]
	mov	rcx,rbx
	call	qword ptr [rbx+110h]
	add	dword ptr [rbx+138h],1h
	mov	eax,1h
	xor	edx,edx
	jmp	4054CBh

l0000000000405521:
	and	r12d,4h
	mov	rax,[r8+8h]
	jnz	405D2Bh

l000000000040552F:
	movsxd	rbp,dword ptr [rax+8h]
	mov	r12,[rax]
	test	rbp,rbp
	jz	404405h

l000000000040553F:
	mov	rax,[rbx+100h]
	xor	esi,esi
	jmp	405576h
000000000040554A                               66 0F 1F 44 00 00           f..D..

l0000000000405550:
	mov	rdx,rax
	add	rax,1h

l0000000000405557:
	add	rsi,1h
	mov	[rbx+100h],rax
	mov	[rbx+rdx],dil
	cmp	rbp,rsi
	mov	[rbx+108h],dil
	jz	404405h

l0000000000405576:
	cmp	rax,+0FFh
	movzx	edi,byte ptr [r12+rsi]
	jnz	405550h

l0000000000405583:
	mov	edx,0FFh
	mov	byte ptr [rbx+0FFh],0h
	mov	r8,[rbx+118h]
	mov	rcx,rbx
	call	qword ptr [rbx+110h]
	add	dword ptr [rbx+138h],1h
	mov	eax,1h
	xor	edx,edx
	jmp	405557h

l00000000004055AF:
	mov	rax,[r8+8h]
	xor	edi,edi
	mov	edx,[rax]
	cmp	edx,5h
	jz	405F30h

l00000000004055C0:
	cmp	edx,23h
	jz	405DAFh

l00000000004055C9:
	cmp	[rbp+0h],edx
	jz	405DAFh

l00000000004055D2:
	cmp	edx,24h
	jz	406537h

l00000000004055DB:
	mov	rdx,[rbx+128h]

l00000000004055E2:
	lea	rax,[rsp+40h]
	mov	[rsp+40h],rdx
	mov	[rsp+48h],rbp
	mov	dword ptr [rsp+50h],0h
	mov	[rbx+128h],rax
	mov	rax,[rbx+120h]
	mov	[rsp+58h],rax

l000000000040560C:
	mov	r8,[rbp+8h]

l0000000000405610:
	mov	edx,r12d
	mov	rcx,rbx
	call	4042F0h
	mov	eax,[rsp+50h]
	test	eax,eax
	jz	405C6Fh

l0000000000405627:
	mov	rax,[rsp+40h]
	test	edi,edi
	mov	[rbx+128h],rax
	jz	404405h

l000000000040563B:
	mov	[rbx+120h],rsi
	jmp	404405h

l0000000000405647:
	mov	rdx,[rbx+128h]
	xor	edi,edi
	jmp	4055E2h

l0000000000405652:
	mov	r9,[rbx+128h]
	test	r9,r9
	jz	406A07h

l0000000000405662:
	mov	rax,r9

l0000000000405665:
	mov	edx,[rax+10h]
	test	edx,edx
	jnz	405684h

l000000000040566C:
	mov	rdx,[rax+8h]
	mov	edx,[rdx]
	lea	r8d,[rdx-19h]
	cmp	r8d,2h
	ja	40568Ch

l000000000040567C:
	cmp	ecx,edx
	jz	406082h

l0000000000405684:
	mov	rax,[rax]
	test	rax,rax
	jnz	405665h

l000000000040568C:
	mov	rdx,r9
	xor	edi,edi
	jmp	4055E2h

l0000000000405696:
	lea	rdx,[000000000048ECA9]                                 ; [rip+0008960C]
	mov	rcx,rbx
	call	404090h
	mov	r8,[rbp+8h]
	mov	edx,r12d
	mov	rcx,rbx
	call	4042F0h
	jmp	404405h

l00000000004056B9:
	lea	rdx,[000000000048EC96]                                 ; [rip+000895D6]
	mov	rcx,rbx
	call	404090h
	mov	r8,[rbp+8h]
	mov	edx,r12d
	mov	rcx,rbx
	call	4042F0h
	jmp	404405h

l00000000004056DC:
	lea	rdx,[000000000048ED21]                                 ; [rip+0008963E]
	mov	rcx,rbx
	call	404090h
	mov	r8,[rbp+8h]
	mov	edx,r12d
	mov	rcx,rbx
	call	4042F0h
	jmp	404405h

l00000000004056FF:
	lea	rdx,[000000000048ED0D]                                 ; [rip+00089607]
	mov	rcx,rbx
	call	404090h
	mov	r8,[rbp+8h]
	mov	edx,r12d
	mov	rcx,rbx
	call	4042F0h
	jmp	404405h

l0000000000405722:
	lea	rdx,[000000000048ECFD]                                 ; [rip+000895D4]
	mov	rcx,rbx
	call	404090h
	mov	r8,[rbp+8h]
	mov	edx,r12d
	mov	rcx,rbx
	call	4042F0h
	jmp	404405h

l0000000000405745:
	lea	rdx,[000000000048ECE2]                                 ; [rip+00089596]
	mov	rcx,rbx
	call	404090h
	mov	r8,[rbp+8h]
	mov	edx,r12d
	mov	rcx,rbx
	call	4042F0h
	jmp	404405h

l0000000000405768:
	lea	rdx,[000000000048ED52]                                 ; [rip+000895E3]
	mov	rcx,rbx
	lea	rsi,[000000000048ED68]                                 ; [rip+000895EF]
	lea	r13,[000000000048ED6D]                                 ; [rip+000895ED]
	call	404090h
	mov	r8,[rbp+10h]
	mov	edx,r12d
	mov	rcx,rbx
	call	4042F0h
	mov	rax,[rbx+100h]
	jmp	4057C6h
000000000040579D                                        0F 1F 00              ...

l00000000004057A0:
	mov	rdx,rax
	add	rax,1h

l00000000004057A7:
	add	rsi,1h
	mov	[rbx+100h],rax
	mov	[rbx+rdx],dil
	cmp	rsi,r13
	mov	[rbx+108h],dil
	jz	405B59h

l00000000004057C6:
	cmp	rax,+0FFh
	movzx	edi,byte ptr [rsi]
	jnz	4057A0h

l00000000004057D1:
	mov	edx,0FFh
	mov	byte ptr [rbx+0FFh],0h
	mov	r8,[rbx+118h]
	mov	rcx,rbx
	call	qword ptr [rbx+110h]
	add	dword ptr [rbx+138h],1h
	mov	eax,1h
	xor	edx,edx
	jmp	4057A7h

l00000000004057FD:
	lea	rdx,[000000000048ED38]                                 ; [rip+00089534]
	mov	rcx,rbx
	call	404090h
	mov	r8,[rbp+8h]
	mov	edx,r12d
	mov	rcx,rbx
	call	4042F0h
	jmp	404405h

l0000000000405820:
	test	r12b,20h
	jnz	405DCAh

l000000000040582A:
	cmp	qword ptr [r8+8h],0h
	jz	40583Bh

l0000000000405831:
	test	r12b,40h
	jz	4063ECh

l000000000040583B:
	mov	r9,[rbx+128h]
	mov	edx,r12d
	lea	r8,[rbp+10h]
	and	edx,9Fh
	mov	rcx,rbx
	call	407820h
	jmp	404405h

l0000000000405859:
	mov	r8,[r8+8h]
	mov	edx,r12d
	mov	rcx,rbx
	call	4042F0h
	jmp	404405h

l000000000040586D:
	mov	rax,[rbx+100h]
	lea	rsi,[000000000048EC61]                                 ; [rip+000893E6]
	lea	r13,[000000000048EC69]                                 ; [rip+000893E7]
	jmp	4058AAh

l0000000000405884:
	mov	rdx,rax
	add	rax,1h

l000000000040588B:
	add	rsi,1h
	mov	[rbx+100h],rax
	mov	[rbx+rdx],dil
	cmp	rsi,r13
	mov	[rbx+108h],dil
	jz	405AF1h

l00000000004058AA:
	cmp	rax,+0FFh
	movzx	edi,byte ptr [rsi]
	jnz	405884h

l00000000004058B5:
	mov	edx,0FFh
	mov	byte ptr [rbx+0FFh],0h
	mov	r8,[rbx+118h]
	mov	rcx,rbx
	call	qword ptr [rbx+110h]
	add	dword ptr [rbx+138h],1h
	mov	eax,1h
	xor	edx,edx
	jmp	40588Bh

l00000000004058E1:
	mov	rax,[rbx+100h]
	lea	rsi,[000000000048EC55]                                 ; [rip+00089366]
	lea	r13,[000000000048EC60]                                 ; [rip+0008936A]
	jmp	405926h
00000000004058F8                         0F 1F 84 00 00 00 00 00         ........

l0000000000405900:
	mov	rdx,rax
	add	rax,1h

l0000000000405907:
	add	rsi,1h
	mov	[rbx+100h],rax
	mov	[rbx+rdx],dil
	cmp	rsi,r13
	mov	[rbx+108h],dil
	jz	405B05h

l0000000000405926:
	cmp	rax,+0FFh
	movzx	edi,byte ptr [rsi]
	jnz	405900h

l0000000000405931:
	mov	edx,0FFh
	mov	byte ptr [rbx+0FFh],0h
	mov	r8,[rbx+118h]
	mov	rcx,rbx
	call	qword ptr [rbx+110h]
	add	dword ptr [rbx+138h],1h
	mov	eax,1h
	xor	edx,edx
	jmp	405907h

l000000000040595D:
	lea	rdx,[000000000048ECBA]                                 ; [rip+00089356]
	mov	rcx,rbx
	call	404090h
	mov	r8,[rbp+8h]
	mov	edx,r12d
	mov	rcx,rbx
	call	4042F0h
	jmp	404405h

l0000000000405980:
	mov	dword ptr [rbx+130h],1h
	jmp	404405h
000000000040598F                                              90                .

l0000000000405990:
	add	ebp,1h
	cmp	ebp,edi
	jnz	404544h

l000000000040599B:
	jmp	404405h

l00000000004059A0:
	mov	r8,[rbp+8h]
	mov	edx,r12d
	mov	rcx,rbx
	call	4042F0h
	jmp	404405h

l00000000004059B4:
	mov	r8,[rbp+10h]
	mov	edx,r12d
	mov	rcx,rbx
	call	4042F0h
	mov	rax,[rbx+100h]
	cmp	rax,+0FFh
	jz	406220h

l00000000004059D6:
	lea	rdx,[rax+1h]

l00000000004059DA:
	mov	[rbx+100h],rdx
	mov	byte ptr [rbx+rax],5Dh
	mov	byte ptr [rbx+108h],5Dh
	jmp	404405h

l00000000004059F1:
	mov	r8,[rbp+8h]
	mov	edx,r12d
	mov	rcx,rbx
	call	4042F0h
	mov	rax,[rbx+100h]
	cmp	rax,+0FFh
	jz	40624Fh

l0000000000405A13:
	lea	rdx,[rax+1h]

l0000000000405A17:
	mov	[rbx+100h],rdx
	mov	byte ptr [rbx+rax],29h
	mov	byte ptr [rbx+108h],29h
	jmp	404405h

l0000000000405A2E:
	mov	r8,[rbp+8h]
	mov	edx,r12d
	mov	rcx,rbx
	call	4042F0h
	jmp	404405h

l0000000000405A42:
	mov	rsi,[rbp+8h]
	movzx	eax,byte ptr [rsi]
	sub	eax,61h
	cmp	al,19h
	jbe	405E01h

l0000000000405A54:
	movsxd	rbp,r12d
	cmp	byte ptr [rsi+rbp-1h],20h
	jz	405E17h

l0000000000405A62:
	test	rbp,rbp
	jz	404405h

l0000000000405A6B:
	mov	rax,[rbx+100h]
	add	rbp,rsi
	jmp	405AA6h
0000000000405A77                      66 0F 1F 84 00 00 00 00 00        f........

l0000000000405A80:
	mov	rdx,rax
	add	rax,1h

l0000000000405A87:
	add	rsi,1h
	mov	[rbx+100h],rax
	mov	[rbx+rdx],dil
	cmp	rsi,rbp
	mov	[rbx+108h],dil
	jz	404405h

l0000000000405AA6:
	cmp	rax,+0FFh
	movzx	edi,byte ptr [rsi]
	jnz	405A80h

l0000000000405AB1:
	mov	edx,0FFh
	mov	byte ptr [rbx+0FFh],0h
	mov	r8,[rbx+118h]
	mov	rcx,rbx
	call	qword ptr [rbx+110h]
	add	dword ptr [rbx+138h],1h
	mov	eax,1h
	xor	edx,edx
	jmp	405A87h

l0000000000405ADD:
	mov	r8,[rbp+8h]
	mov	edx,r12d
	mov	rcx,rbx
	call	4042F0h
	jmp	404405h

l0000000000405AF1:
	mov	r8,[rbp+8h]
	mov	edx,r12d
	mov	rcx,rbx
	call	4042F0h
	jmp	404405h

l0000000000405B05:
	mov	r8,[rbp+8h]
	mov	edx,r12d
	mov	rcx,rbx
	call	4042F0h
	jmp	404405h

l0000000000405B19:
	cmp	rax,+0FFh
	jz	40671Ch

l0000000000405B25:
	lea	rdx,[rax+1h]

l0000000000405B29:
	mov	[rbx+100h],rdx
	mov	byte ptr [rbx+rax],2Eh
	mov	byte ptr [rbx+108h],2Eh

l0000000000405B3B:
	mov	r8,[rbp+10h]
	cmp	dword ptr [r8],45h
	jz	406349h

l0000000000405B49:
	mov	edx,r12d
	mov	rcx,rbx
	call	4042F0h
	jmp	404405h

l0000000000405B59:
	mov	r8,[rbp+8h]
	mov	edx,r12d
	mov	rcx,rbx
	call	4042F0h
	jmp	404405h

l0000000000405B6D:
	mov	r8,[rbp+8h]
	mov	edx,r12d
	mov	rcx,rbx
	call	4042F0h
	jmp	404405h

l0000000000405B81:
	mov	r8,[rbp+8h]
	mov	edx,r12d
	mov	rcx,rbx
	lea	rsi,[000000000048EC83]                                 ; [rip+000890F1]
	lea	r13,[000000000048EC87]                                 ; [rip+000890EE]
	call	4042F0h
	mov	rax,[rbx+100h]
	jmp	405BD2h
0000000000405BA7                      66 0F 1F 84 00 00 00 00 00        f........

l0000000000405BB0:
	mov	rdx,rax
	add	rax,1h

l0000000000405BB7:
	add	rsi,1h
	mov	[rbx+100h],rax
	mov	[rbx+rdx],dil
	cmp	rsi,r13
	mov	[rbx+108h],dil
	jz	405C09h

l0000000000405BD2:
	cmp	rax,+0FFh
	movzx	edi,byte ptr [rsi]
	jnz	405BB0h

l0000000000405BDD:
	mov	edx,0FFh
	mov	byte ptr [rbx+0FFh],0h
	mov	r8,[rbx+118h]
	mov	rcx,rbx
	call	qword ptr [rbx+110h]
	add	dword ptr [rbx+138h],1h
	mov	eax,1h
	xor	edx,edx
	jmp	405BB7h

l0000000000405C09:
	mov	r8,[rbp+10h]
	mov	edx,r12d
	mov	rcx,rbx
	call	4042F0h
	jmp	404405h

l0000000000405C1D:
	mov	r8,[rbp+8h]
	mov	edx,r12d
	mov	rcx,rbx
	call	4042F0h
	jmp	404405h

l0000000000405C31:
	mov	r8,[rbp+10h]
	mov	edx,r12d
	mov	rcx,rbx
	mov	edi,[rbx+138h]
	call	4042F0h
	cmp	[rbx+138h],edi
	jnz	404405h

l0000000000405C52:
	cmp	[rbx+100h],rsi
	jnz	404405h

l0000000000405C5F:
	sub	rsi,2h
	mov	[rbx+100h],rsi
	jmp	404405h

l0000000000405C6F:
	mov	r8,rbp
	mov	edx,r12d
	mov	rcx,rbx
	call	406AD0h
	jmp	405627h

l0000000000405C82:
	test	edi,edi
	mov	r13,[rbp+8h]
	jnz	404534h

l0000000000405C8E:
	jmp	404405h

l0000000000405C93:
	lea	rsi,[000000000048EDBF]                                 ; [rip+00089125]
	lea	rbp,[000000000048EDC5]                                 ; [rip+00089124]
	jmp	405CC9h

l0000000000405CA3:
	mov	rdx,rax
	add	rax,1h

l0000000000405CAA:
	add	rsi,1h
	mov	[rbx+100h],rax
	mov	[rbx+rdx],dil
	cmp	rsi,rbp
	mov	[rbx+108h],dil
	jz	404405h

l0000000000405CC9:
	cmp	rax,+0FFh
	movzx	edi,byte ptr [rsi]
	jnz	405CA3h

l0000000000405CD4:
	mov	edx,0FFh
	mov	byte ptr [rbx+0FFh],0h
	mov	r8,[rbx+118h]
	mov	rcx,rbx
	call	qword ptr [rbx+110h]
	add	dword ptr [rbx+138h],1h
	mov	eax,1h
	xor	edx,edx
	jmp	405CAAh

l0000000000405D00:
	lea	rdx,[000000000048EE2F]                                 ; [rip+00089128]
	mov	rcx,rbx
	call	404090h
	mov	edx,esi
	mov	rcx,rbx
	call	404130h
	mov	edx,7Dh
	mov	rcx,rbx
	call	403BF0h
	jmp	404405h

l0000000000405D2B:
	movsxd	rbp,dword ptr [rax+18h]
	mov	r12,[rax+10h]
	test	rbp,rbp
	jz	404405h

l0000000000405D3C:
	mov	rax,[rbx+100h]
	xor	esi,esi
	jmp	405D76h
0000000000405D47                      66 0F 1F 84 00 00 00 00 00        f........

l0000000000405D50:
	mov	rdx,rax
	add	rax,1h

l0000000000405D57:
	add	rsi,1h
	mov	[rbx+100h],rax
	mov	[rbx+rdx],dil
	cmp	rbp,rsi
	mov	[rbx+108h],dil
	jz	404405h

l0000000000405D76:
	cmp	rax,+0FFh
	movzx	edi,byte ptr [r12+rsi]
	jnz	405D50h

l0000000000405D83:
	mov	edx,0FFh
	mov	byte ptr [rbx+0FFh],0h
	mov	r8,[rbx+118h]
	mov	rcx,rbx
	call	qword ptr [rbx+110h]
	add	dword ptr [rbx+138h],1h
	mov	eax,1h
	xor	edx,edx
	jmp	405D57h

l0000000000405DAF:
	mov	rdx,[rbx+128h]
	mov	rbp,rax
	jmp	4055E2h

l0000000000405DBE:
	mov	rax,[rbx+100h]
	jmp	404D95h

l0000000000405DCA:
	mov	r9,[rbx+128h]
	and	r12d,9Fh
	lea	r8,[r8+10h]
	mov	edx,r12d
	mov	rcx,rbx
	call	407820h
	mov	r8,[rbp+8h]
	test	r8,r8
	jz	404405h

l0000000000405DF1:
	mov	edx,r12d
	mov	rcx,rbx
	call	4042F0h
	jmp	404405h

l0000000000405E01:
	mov	edx,20h
	mov	rcx,rbx
	call	403BF0h
	mov	rsi,[rbp+8h]
	jmp	405A54h

l0000000000405E17:
	lea	ebp,[r12-1h]
	movsxd	rbp,ebp
	jmp	405A62h

l0000000000405E24:
	mov	rax,[r13+8h]
	lea	rdi,[000000000048EDDC]                                 ; [rip+00088FAD]
	mov	ecx,3h
	mov	rbp,[rax]
	mov	eax,[r14]
	mov	rsi,rbp

l0000000000405E3D:
	rep cmpsb

l0000000000405E3F:
	jnz	405E4Ah

l0000000000405E41:
	cmp	eax,3h
	jz	4069BDh

l0000000000405E4A:
	cmp	eax,37h
	jz	406A19h

l0000000000405E53:
	mov	rcx,rbx
	mov	r8,r13
	mov	edx,r12d
	lea	rdi,[000000000048EDDF]                                 ; [rip+00088F7C]
	mov	rsi,rbp
	call	407D70h
	mov	ecx,3h

l0000000000405E70:
	rep cmpsb

l0000000000405E72:
	jz	40645Bh

l0000000000405E78:
	lea	rdi,[000000000048EDE2]                                 ; [rip+00088F63]
	mov	ecx,3h
	mov	rsi,rbp

l0000000000405E87:
	rep cmpsb

l0000000000405E89:
	jnz	404B70h

l0000000000405E8F:
	mov	rcx,rbx
	mov	edx,28h
	call	403BF0h
	mov	edx,r12d
	mov	rcx,rbx
	mov	r8,r14
	call	4042F0h
	mov	edx,29h
	mov	rcx,rbx
	call	403BF0h
	jmp	404405h

l0000000000405EBC:
	mov	rax,[rbx+100h]
	lea	rsi,[000000000048EDB2]                                 ; [rip+00088EE8]
	lea	r13,[000000000048EDB7]                                 ; [rip+00088EE6]
	jmp	405EF9h

l0000000000405ED3:
	mov	rdx,rax
	add	rax,1h

l0000000000405EDA:
	add	rsi,1h
	mov	[rbx+100h],rax
	mov	[rbx+rdx],dil
	cmp	rsi,r13
	mov	[rbx+108h],dil
	jz	404D4Bh

l0000000000405EF9:
	cmp	rax,+0FFh
	movzx	edi,byte ptr [rsi]
	jnz	405ED3h

l0000000000405F04:
	mov	edx,0FFh
	mov	byte ptr [rbx+0FFh],0h
	mov	r8,[rbx+118h]
	mov	rcx,rbx
	call	qword ptr [rbx+110h]
	add	dword ptr [rbx+138h],1h
	mov	eax,1h
	xor	edx,edx
	jmp	405EDAh

l0000000000405F30:
	mov	r8d,[rbx+148h]
	mov	r10,[rbx+140h]
	test	r8d,r8d
	jle	405F6Ch

l0000000000405F43:
	xor	ecx,ecx
	cmp	rax,[r10]
	lea	rdx,[r10+10h]
	jnz	405F64h

l0000000000405F4E:
	jmp	4065AFh

l0000000000405F53:
	mov	r9,rdx
	add	rdx,10h
	cmp	rax,[rdx-10h]
	jz	4065B2h

l0000000000405F64:
	add	ecx,1h
	cmp	ecx,r8d
	jnz	405F53h

l0000000000405F6C:
	cmp	r8d,[rbx+14Ch]
	jge	406A41h

l0000000000405F79:
	movsxd	rdx,r8d
	mov	r9,[rbx+120h]
	add	r8d,1h
	shl	rdx,4h
	mov	[rbx+148h],r8d
	add	rdx,r10
	mov	[rdx],rax
	add	rdx,8h
	test	r9,r9
	jz	406001h

l0000000000405FA1:
	movsxd	rcx,dword ptr [rbx+158h]
	mov	r10d,[rbx+15Ch]
	cmp	ecx,r10d
	jge	406A41h

l0000000000405FB8:
	lea	r8d,[rcx+1h]
	add	r10d,1h
	shl	rcx,4h
	jmp	405FD7h

l0000000000405FC6:
	add	r8d,1h
	add	rcx,10h
	cmp	r8d,r10d
	jz	406A3Bh

l0000000000405FD7:
	mov	r11,rcx
	add	r11,[rbx+150h]
	mov	r13,[r9+8h]
	mov	edi,r8d
	mov	[r11+8h],r13
	mov	[rdx],r11
	mov	rdx,r11
	mov	r9,[r9]
	test	r9,r9
	jnz	405FC6h

l0000000000405FFA:
	mov	[rbx+158h],r8d

l0000000000406001:
	mov	qword ptr [rdx],+0h
	lea	rdx,[rax+8h]
	mov	rcx,rbx
	xor	edi,edi
	call	403FA0h
	test	rax,rax
	jnz	4065DEh

l000000000040601F:
	jmp	404424h

l0000000000406024:
	mov	rcx,rbx
	mov	edx,28h
	call	403BF0h
	lea	r8,[r13+8h]
	mov	edx,r12d
	mov	rcx,rbx
	call	407B40h
	mov	edx,29h
	mov	rcx,rbx
	call	403BF0h
	jmp	404B70h

l0000000000406052:
	mov	byte ptr [rbx+rsi],0h
	mov	rdx,rsi
	mov	r8,[rbx+118h]
	mov	rcx,rbx
	xor	esi,esi
	call	qword ptr [rbx+110h]
	mov	qword ptr [rbx+100h],+0h
	add	dword ptr [rbx+138h],1h
	jmp	404CCDh

l0000000000406082:
	mov	r8,[rbp+8h]
	mov	edx,r12d
	mov	rcx,rbx
	call	4042F0h
	jmp	404405h

l0000000000406096:
	mov	edx,[rbx+134h]
	jmp	4060B9h
000000000040609E                                           66 90               f.

l00000000004060A0:
	mov	rax,[rax+10h]
	sub	edx,1h
	test	rax,rax
	jz	404424h

l00000000004060B0:
	cmp	dword ptr [rax],2Fh
	jnz	404424h

l00000000004060B9:
	cmp	edx,0h
	jg	4060A0h

l00000000004060BE:
	jnz	404424h

l00000000004060C4:
	mov	rax,[rax+8h]
	test	rax,rax
	jnz	40519Ch

l00000000004060D1:
	jmp	404424h
00000000004060D6                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l00000000004060E0:
	movsxd	rbp,dword ptr [r8+10h]
	mov	rsi,[r8+8h]
	add	rbp,rsi
	cmp	rsi,rbp
	jc	40612Bh

l00000000004060F0:
	jmp	404405h

l00000000004060F5:
	mov	rax,[rbx+100h]
	cmp	rax,+0FFh
	jz	406193h

l0000000000406108:
	lea	rdx,[rax+1h]

l000000000040610C:
	mov	[rbx+100h],rdx
	mov	[rbx+rax],dil
	mov	[rbx+108h],dil

l000000000040611E:
	add	rsi,1h
	cmp	rbp,rsi
	jbe	404405h

l000000000040612B:
	mov	rax,rbp
	movzx	edi,byte ptr [rsi]
	sub	rax,rsi
	cmp	rax,3h
	jle	4060F5h

l000000000040613A:
	cmp	dil,5Fh
	jnz	4060F5h

l0000000000406140:
	cmp	byte ptr [rsi+1h],5Fh
	jnz	4060F5h

l0000000000406146:
	cmp	byte ptr [rsi+2h],55h
	jnz	4060F5h

l000000000040614C:
	lea	r12,[rsi+3h]
	cmp	rbp,r12
	jbe	4060F5h

l0000000000406155:
	xor	edx,edx
	jmp	406175h
0000000000406159                            0F 1F 80 00 00 00 00          .......

l0000000000406160:
	sub	eax,30h

l0000000000406163:
	shl	edx,4h
	add	r12,1h
	add	edx,eax
	cmp	r12,rbp
	jz	4069FDh

l0000000000406175:
	movsx	eax,byte ptr [r12]
	lea	ecx,[rax-30h]
	cmp	cl,9h
	jbe	406160h

l0000000000406182:
	lea	ecx,[rax-41h]
	cmp	cl,5h
	ja	406629h

l000000000040618E:
	sub	eax,37h
	jmp	406163h

l0000000000406193:
	mov	edx,0FFh
	mov	byte ptr [rbx+0FFh],0h
	mov	r8,[rbx+118h]
	mov	rcx,rbx
	call	qword ptr [rbx+110h]
	add	dword ptr [rbx+138h],1h
	mov	edx,1h
	xor	eax,eax
	jmp	40610Ch

l00000000004061C2:
	mov	edx,0FFh
	mov	byte ptr [rbx+0FFh],0h
	mov	r8,[rbx+118h]
	mov	rcx,rbx
	call	qword ptr [rbx+110h]
	add	dword ptr [rbx+138h],1h
	mov	edx,1h
	xor	eax,eax
	jmp	404C83h

l00000000004061F1:
	mov	edx,0FFh
	mov	byte ptr [rbx+0FFh],0h
	mov	r8,[rbx+118h]
	mov	rcx,rbx
	call	qword ptr [rbx+110h]
	add	dword ptr [rbx+138h],1h
	mov	edx,1h
	xor	eax,eax
	jmp	404C4Ch

l0000000000406220:
	mov	edx,0FFh
	mov	byte ptr [rbx+0FFh],0h
	mov	r8,[rbx+118h]
	mov	rcx,rbx
	call	qword ptr [rbx+110h]
	add	dword ptr [rbx+138h],1h
	mov	edx,1h
	xor	eax,eax
	jmp	4059DAh

l000000000040624F:
	mov	edx,0FFh
	mov	byte ptr [rbx+0FFh],0h
	mov	r8,[rbx+118h]
	mov	rcx,rbx
	call	qword ptr [rbx+110h]
	add	dword ptr [rbx+138h],1h
	mov	edx,1h
	xor	eax,eax
	jmp	405A17h

l000000000040627E:
	mov	edx,0FFh
	mov	byte ptr [rbx+0FFh],0h
	mov	r8,[rbx+118h]
	mov	rcx,rbx
	call	qword ptr [rbx+110h]
	add	dword ptr [rbx+138h],1h
	mov	edx,1h
	xor	eax,eax
	jmp	405277h

l00000000004062AD:
	mov	edx,0FFh
	mov	byte ptr [rbx+0FFh],0h
	mov	r8,[rbx+118h]
	mov	rcx,rbx
	call	qword ptr [rbx+110h]
	add	dword ptr [rbx+138h],1h
	mov	edx,1h
	xor	eax,eax
	jmp	405232h

l00000000004062DC:
	mov	dword ptr [rbx+130h],1h
	jmp	404405h

l00000000004062EB:
	mov	edx,0FFh
	mov	byte ptr [rbx+0FFh],0h
	mov	r8,[rbx+118h]
	mov	rcx,rbx
	call	qword ptr [rbx+110h]
	add	dword ptr [rbx+138h],1h
	mov	edx,1h
	xor	eax,eax
	jmp	4048E8h

l000000000040631A:
	mov	edx,0FFh
	mov	byte ptr [rbx+0FFh],0h
	mov	r8,[rbx+118h]
	mov	rcx,rbx
	call	qword ptr [rbx+110h]
	add	dword ptr [rbx+138h],1h
	mov	edx,1h
	xor	eax,eax
	jmp	405124h

l0000000000406349:
	lea	rdx,[000000000048EC39]                                 ; [rip+000888E9]
	mov	rcx,rbx
	mov	[rsp+28h],r8
	call	404090h
	mov	r8,[rsp+28h]
	mov	rcx,rbx
	mov	eax,[r8+10h]
	lea	edx,[rax+1h]
	call	404130h
	lea	rdx,[000000000048EC47]                                 ; [rip+000888CF]
	mov	rcx,rbx
	call	404090h
	mov	r8,[rsp+28h]
	mov	r8,[r8+8h]
	jmp	405B49h

l000000000040638E:
	mov	edx,0FFh
	mov	byte ptr [rbx+0FFh],0h
	mov	r8,[rbx+118h]
	mov	rcx,rbx
	call	qword ptr [rbx+110h]
	add	dword ptr [rbx+138h],1h
	mov	edx,1h
	xor	eax,eax
	jmp	4043D0h

l00000000004063BD:
	mov	edx,0FFh
	mov	byte ptr [rbx+0FFh],0h
	mov	r8,[rbx+118h]
	mov	rcx,rbx
	call	qword ptr [rbx+110h]
	add	dword ptr [rbx+138h],1h
	mov	edx,1h
	xor	eax,eax
	jmp	404398h

l00000000004063EC:
	mov	rax,[rbx+128h]
	mov	edx,r12d
	mov	rcx,rbx
	and	edx,9Fh
	mov	[rsp+48h],rbp
	mov	dword ptr [rsp+50h],0h
	mov	[rsp+40h],rax
	lea	rax,[rsp+40h]
	mov	[rbx+128h],rax
	mov	rax,[rbx+120h]
	mov	r8,[rbp+8h]
	mov	[rsp+58h],rax
	call	4042F0h
	mov	r15d,[rsp+50h]
	mov	rax,[rsp+40h]
	test	r15d,r15d
	mov	[rbx+128h],rax
	jnz	404405h

l0000000000406449:
	mov	edx,20h
	mov	rcx,rbx
	call	403BF0h
	jmp	40583Bh

l000000000040645B:
	mov	r8,r14
	mov	edx,r12d
	mov	rcx,rbx
	call	4042F0h
	jmp	404405h

l000000000040646E:
	mov	r8,[r8+10h]
	mov	r9d,[r8]
	test	r9d,r9d
	jnz	404381h

l000000000040647E:
	cmp	ecx,3Ch
	jz	406AA3h

l0000000000406487:
	mov	edx,r12d
	mov	rcx,rbx
	sub	esi,2h
	call	4042F0h
	cmp	esi,4h
	ja	404405h

l000000000040649E:
	lea	rax,[000000000048EFC8]                                 ; [rip+00088B23]
	movsxd	rdx,dword ptr [rax+rsi*4]
	add	rax,rdx
	jmp	rax

l00000000004064AE:
	lea	rdx,[000000000048EDFA]                                 ; [rip+00088945]
	mov	rcx,rbx
	call	404090h
	jmp	404405h

l00000000004064C2:
	lea	rdx,[000000000048EDF7]                                 ; [rip+0008892E]
	mov	rcx,rbx
	call	404090h
	jmp	404405h

l00000000004064D6:
	mov	edx,6Ch
	mov	rcx,rbx
	call	403BF0h
	jmp	404405h

l00000000004064E8:
	mov	edx,75h
	mov	rcx,rbx
	call	403BF0h
	jmp	404405h

l00000000004064FA:
	lea	rdx,[000000000048EDFD]                                 ; [rip+000888FC]
	mov	rcx,rbx
	call	404090h
	jmp	404405h

l000000000040650E:
	mov	r8,[rbp+10h]
	mov	edx,r12d
	mov	rcx,rbx
	call	4042F0h
	cmp	dword ptr [rsp+50h],0h
	mov	[rbx+128h],r13
	jnz	404405h

l000000000040652F:
	mov	r9,r13
	jmp	404FDEh

l0000000000406537:
	mov	r8,[rax+8h]
	mov	rax,[rbx+128h]
	mov	[rsp+48h],rbp
	mov	dword ptr [rsp+50h],0h
	mov	[rsp+40h],rax
	lea	rax,[rsp+40h]
	test	r8,r8
	mov	[rbx+128h],rax
	mov	rax,[rbx+120h]
	mov	[rsp+58h],rax
	jnz	405610h

l0000000000406575:
	jmp	40560Ch
000000000040657A                               66 0F 1F 44 00 00           f..D..

l0000000000406580:
	mov	edx,0FFh
	mov	byte ptr [rbx+0FFh],0h
	mov	r8,[rbx+118h]
	mov	rcx,rbx
	call	qword ptr [rbx+110h]
	add	dword ptr [rbx+138h],1h
	mov	eax,1h
	xor	edx,edx
	jmp	404D83h

l00000000004065AF:
	mov	r9,r10

l00000000004065B2:
	mov	rdx,[r9+8h]
	mov	rsi,[rbx+120h]
	mov	rcx,rbx
	mov	edi,1h
	mov	[rbx+120h],rdx
	lea	rdx,[rax+8h]
	call	403FA0h
	test	rax,rax
	jz	40441Dh

l00000000004065DE:
	mov	edx,[rax]
	cmp	edx,2Fh
	jnz	4055C0h

l00000000004065E9:
	mov	edx,[rbx+134h]
	jmp	40660Ah

l00000000004065F1:
	mov	rax,[rax+10h]
	sub	edx,1h
	test	rax,rax
	jz	404419h

l0000000000406601:
	cmp	dword ptr [rax],2Fh
	jnz	404419h

l000000000040660A:
	cmp	edx,0h
	jg	4065F1h

l000000000040660F:
	jnz	404419h

l0000000000406615:
	mov	rax,[rax+8h]
	test	rax,rax
	jz	404419h

l0000000000406622:
	mov	edx,[rax]
	jmp	4055C0h

l0000000000406629:
	lea	ecx,[rax-61h]
	cmp	cl,5h
	ja	406A77h

l0000000000406635:
	sub	eax,57h
	jmp	406163h

l000000000040663D:
	mov	edx,20h
	mov	rcx,rbx
	call	403BF0h
	jmp	40521Bh

l000000000040664F:
	mov	edx,20h
	mov	rcx,rbx
	call	403BF0h
	jmp	405260h

l0000000000406661:
	mov	rcx,rbx
	mov	edx,5Bh
	call	403BF0h
	mov	r8,[rbp+10h]
	mov	edx,r12d
	mov	rcx,rbx
	call	4042F0h
	mov	edx,5Dh
	mov	rcx,rbx
	call	403BF0h
	jmp	404405h

l000000000040668F:
	mov	edx,2Dh
	mov	rcx,rbx
	call	403BF0h
	jmp	4043ECh

l00000000004066A1:
	movzx	r9d,byte ptr [rdx]
	lea	r10d,[r9-72h]
	cmp	r10b,1h
	jbe	4066BDh

l00000000004066AF:
	sub	r9d,63h
	cmp	r9b,1h
	ja	404A81h

l00000000004066BD:
	mov	edx,r12d
	mov	rcx,rbx
	call	407D70h
	mov	rcx,rbx
	mov	edx,3Ch
	call	403BF0h
	mov	rax,[rbp+10h]
	mov	edx,r12d
	mov	rcx,rbx
	mov	r8,[rax+8h]
	call	4042F0h
	lea	rdx,[000000000048EE95]                                 ; [rip+000887A6]
	mov	rcx,rbx
	call	404090h
	mov	rax,[rbp+10h]
	mov	edx,r12d
	mov	rcx,rbx
	mov	r8,[rax+10h]
	call	4042F0h
	mov	edx,29h
	mov	rcx,rbx
	call	403BF0h
	jmp	404405h

l000000000040671C:
	mov	edx,0FFh
	mov	byte ptr [rbx+0FFh],0h
	mov	r8,[rbx+118h]
	mov	rcx,rbx
	call	qword ptr [rbx+110h]
	add	dword ptr [rbx+138h],1h
	mov	edx,1h
	xor	eax,eax
	jmp	405B29h

l000000000040674B:
	cmp	edx,4h
	jz	4068FBh

l0000000000406754:
	cmp	edx,2h
	jnz	406911h

l000000000040675D:
	mov	rcx,[rsi+10h]
	cmp	dword ptr [rcx],45h
	jz	406A10h

l000000000040676A:
	mov	eax,[rcx]
	sub	eax,1Ch
	cmp	eax,4h
	jbe	4067EEh

l0000000000406774:
	jmp	406911h
0000000000406779                            0F 1F 80 00 00 00 00          .......

l0000000000406780:
	lea	eax,[r13-1h]
	mov	edx,r13d
	add	r13d,1h
	shl	rdx,5h
	shl	rax,5h
	mov	r8,[rsp+rax+40h]
	mov	[rsp+rdx+40h],r8
	mov	r8,[rsp+rax+48h]
	mov	[rsp+rdx+48h],r8
	mov	r8,[rsp+rax+50h]
	mov	[rsp+rdx+50h],r8
	mov	r8,[rsp+rax+58h]
	mov	[rsp+rdx+58h],r8
	lea	r8,[rdi+rax]
	mov	[rsp+rdx+40h],r8
	add	rdx,rdi
	mov	[rsp+rax+48h],rcx
	mov	dword ptr [rsp+rax+50h],0h
	mov	[rsp+rax+58h],r9
	mov	[rbx+128h],rdx
	mov	rcx,[rcx+8h]
	mov	eax,[rcx]
	sub	eax,1Ch
	cmp	eax,4h
	ja	4067F9h

l00000000004067EE:
	cmp	r13d,4h
	jnz	406780h

l00000000004067F4:
	jmp	405425h

l00000000004067F9:
	mov	r8,[rbp+10h]
	mov	edx,r12d
	mov	rcx,rbx
	call	4042F0h
	cmp	dword ptr [rsi],4h
	jz	406929h

l0000000000406811:
	test	r13d,r13d
	jz	40684Ah

l0000000000406816:
	lea	esi,[r13-1h]
	mov	r13,rsi
	shl	rsi,5h
	mov	r8d,[rsp+rsi+50h]
	test	r8d,r8d
	jnz	406811h

l000000000040682B:
	mov	rcx,rbx
	mov	edx,20h
	call	403BF0h
	mov	r8,[rsp+rsi+48h]
	mov	edx,r12d
	mov	rcx,rbx
	call	406AD0h
	jmp	406811h

l000000000040684A:
	mov	[rbx+128h],r14
	jmp	404405h

l0000000000406856:
	mov	rsi,[r8+8h]
	lea	rdi,[000000000048EC4B]                                 ; [rip+000883EA]
	mov	ecx,6h

l0000000000406866:
	rep cmpsb

l0000000000406868:
	jnz	405203h

l000000000040686E:
	mov	r8,[rbp+10h]
	mov	edx,r12d
	mov	rcx,rbx
	call	4042F0h
	lea	rdx,[000000000048EC52]                                 ; [rip+000883CE]
	mov	rcx,rbx
	call	404090h
	jmp	405289h

l0000000000406891:
	mov	rcx,rbx
	mov	edx,5Bh
	call	403BF0h
	mov	rax,[rbp+10h]
	mov	edx,r12d
	mov	rcx,rbx
	mov	r8,[rax+10h]
	call	4042F0h
	mov	edx,5Dh
	mov	rcx,rbx
	call	403BF0h
	jmp	404B0Ah

l00000000004068C3:
	cmp	dword ptr [rcx+10h],1h
	jnz	404A8Bh

l00000000004068CD:
	mov	rcx,[rcx+8h]
	cmp	byte ptr [rcx],3Eh
	jnz	404A8Bh

l00000000004068DA:
	mov	edx,28h
	mov	rcx,rbx
	call	403BF0h
	mov	rax,[rbp+8h]
	mov	rax,[rax+8h]
	mov	rsi,[rax]
	mov	rax,[rbp+10h]
	jmp	404A8Eh

l00000000004068FB:
	lea	rax,[rsp+30h]
	mov	[rsp+30h],r9
	mov	[rsp+38h],rsi
	mov	[rbx+120h],rax

l0000000000406911:
	mov	r8,[rbp+10h]
	mov	edx,r12d
	mov	rcx,rbx
	call	4042F0h
	cmp	dword ptr [rsi],4h
	jnz	406816h

l0000000000406929:
	mov	rax,[rsp+30h]
	mov	[rbx+120h],rax
	jmp	406811h

l000000000040693A:
	mov	edx,r12d
	mov	rcx,rbx
	call	407D70h
	jmp	404AF7h

l000000000040694A:
	mov	r8,r13
	mov	edx,r12d
	mov	rcx,rbx
	call	407E20h
	mov	r8,r15
	mov	edx,r12d
	mov	rcx,rbx
	call	407D70h
	mov	r8,r14
	mov	edx,r12d
	mov	rcx,rbx
	call	407E20h
	lea	rdx,[000000000048EDEE]                                 ; [rip+00088473]
	mov	rcx,rbx
	call	404090h
	mov	r8,rbp
	mov	edx,r12d
	mov	rcx,rbx
	call	407E20h
	jmp	404405h

l0000000000406996:
	mov	rax,[r8+10h]
	cmp	dword ptr [rax],29h
	jz	4069A9h

l000000000040699F:
	mov	dword ptr [rbx+130h],1h

l00000000004069A9:
	mov	r8,[r8+8h]
	mov	edx,r12d
	mov	rcx,rbx
	call	407E20h
	jmp	404AC2h

l00000000004069BD:
	mov	rax,[r14+8h]
	cmp	dword ptr [rax],1h
	jnz	405E53h

l00000000004069CA:
	mov	rdx,[r14+10h]
	cmp	dword ptr [rdx],29h
	cmovz	r14,rax

l00000000004069D5:
	jmp	405E53h

l00000000004069DA:
	mov	r8,[rbp+8h]
	mov	edx,r12d
	mov	rcx,rbx
	call	407E20h
	lea	rdx,[000000000048EE26]                                 ; [rip+00088436]
	mov	rcx,rbx
	call	404090h
	jmp	404405h

l00000000004069FD:
	mov	edi,5Fh
	jmp	4060F5h

l0000000000406A07:
	xor	edx,edx
	xor	edi,edi
	jmp	4055E2h

l0000000000406A10:
	mov	rcx,[rcx+8h]
	jmp	40676Ah

l0000000000406A19:
	mov	r8,[r14+8h]
	mov	edx,r12d
	mov	rcx,rbx
	call	407E20h
	mov	r8,r13
	mov	edx,r12d
	mov	rcx,rbx
	call	407D70h
	jmp	404405h

l0000000000406A3B:
	mov	[rbx+158h],edi

l0000000000406A41:
	mov	dword ptr [rbx+130h],1h
	jmp	404405h

l0000000000406A50:
	mov	rax,[rax+8h]
	movzx	eax,byte ptr [rax]
	cmp	al,30h
	jz	406AB9h

l0000000000406A5B:
	cmp	al,31h
	jnz	404381h

l0000000000406A63:
	lea	rdx,[000000000048EE07]                                 ; [rip+0008839D]
	mov	rcx,rbx
	call	404090h
	jmp	404405h

l0000000000406A77:
	cmp	rbp,r12
	jbe	4069FDh

l0000000000406A7C:
	cmp	al,5Fh
	jnz	4069FDh

l0000000000406A84:
	cmp	edx,0FFh
	ja	4069FDh

l0000000000406A90:
	movsx	edx,dl
	mov	rcx,rbx
	mov	rsi,r12
	call	403BF0h
	jmp	40611Eh

l0000000000406AA3:
	mov	edx,2Dh
	mov	rcx,rbx
	call	403BF0h
	mov	r8,[rbp+10h]
	jmp	406487h

l0000000000406AB9:
	lea	rdx,[000000000048EE01]                                 ; [rip+00088341]
	mov	rcx,rbx
	call	404090h
	jmp	404405h
0000000000406ACD                                        0F 1F 00              ...

;; fn0000000000406AD0: 0000000000406AD0
;;   Called from:
;;     0000000000404EA6 (in fn00000000004042F0)
;;     0000000000404FCD (in fn00000000004042F0)
;;     0000000000405C78 (in fn00000000004042F0)
;;     0000000000406843 (in fn00000000004042F0)
;;     0000000000407259 (in fn00000000004071F0)
fn0000000000406AD0 proc
	push	r13
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,28h
	mov	eax,[r8]
	sub	eax,3h
	cmp	eax,2Ah
	ja	406B32h

l0000000000406AE7:
	lea	r9,[000000000048F020]                                  ; [rip+00088532]
	mov	rbp,r8
	mov	edi,edx
	mov	rbx,rcx
	movsxd	rax,dword ptr [r9+rax*4]
	add	r9,rax
	jmp	r9

l0000000000406B00:
	mov	rax,[rcx+100h]
	cmp	rax,+0FFh
	jz	4070DFh

l0000000000406B13:
	lea	rdx,[rax+1h]

l0000000000406B17:
	mov	[rbx+100h],rdx
	mov	byte ptr [rbx+rax],20h
	mov	edx,edi
	mov	byte ptr [rbx+108h],20h
	mov	r8,[rbp+10h]
	mov	rcx,rbx

l0000000000406B32:
	add	rsp,28h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	jmp	4042F0h

l0000000000406B43:
	mov	rax,[rcx+100h]
	lea	rsi,[000000000048F012]                                 ; [rip+000884C1]
	lea	r13,[000000000048F01C]                                 ; [rip+000884C4]
	jmp	406B86h
0000000000406B5A                               66 0F 1F 44 00 00           f..D..

l0000000000406B60:
	mov	rdx,rax
	add	rax,1h

l0000000000406B67:
	add	rsi,1h
	mov	[rbx+100h],rax
	mov	[rbx+rdx],r12b
	cmp	rsi,r13
	mov	[rbx+108h],r12b
	jz	407070h

l0000000000406B86:
	cmp	rax,+0FFh
	movzx	r12d,byte ptr [rsi]
	jnz	406B60h

l0000000000406B92:
	mov	edx,0FFh
	mov	byte ptr [rbx+0FFh],0h
	mov	r8,[rbx+118h]
	mov	rcx,rbx
	call	qword ptr [rbx+110h]
	add	dword ptr [rbx+138h],1h
	mov	eax,1h
	xor	edx,edx
	jmp	406B67h
0000000000406BBE                                           66 90               f.

l0000000000406BC0:
	mov	r8,[r8+8h]
	jmp	406B32h
0000000000406BC9                            0F 1F 80 00 00 00 00          .......

l0000000000406BD0:
	mov	rax,[rcx+100h]
	lea	rsi,[000000000048EFDC]                                 ; [rip+000883FE]
	lea	rbp,[000000000048EFE5]                                 ; [rip+00088400]
	jmp	406C16h
0000000000406BE7                      66 0F 1F 84 00 00 00 00 00        f........

l0000000000406BF0:
	mov	rdx,rax
	add	rax,1h

l0000000000406BF7:
	add	rsi,1h
	mov	[rbx+100h],rax
	mov	[rbx+rdx],dil
	cmp	rsi,rbp
	mov	[rbx+108h],dil
	jz	406DA0h

l0000000000406C16:
	cmp	rax,+0FFh
	movzx	edi,byte ptr [rsi]
	jnz	406BF0h

l0000000000406C21:
	mov	edx,0FFh
	mov	byte ptr [rbx+0FFh],0h
	mov	r8,[rbx+118h]
	mov	rcx,rbx
	call	qword ptr [rbx+110h]
	add	dword ptr [rbx+138h],1h
	mov	eax,1h
	xor	edx,edx
	jmp	406BF7h
0000000000406C4D                                        0F 1F 00              ...

l0000000000406C50:
	mov	rax,[rcx+100h]
	lea	rsi,[000000000048EFE6]                                 ; [rip+00088388]
	lea	rbp,[000000000048EFEF]                                 ; [rip+0008838A]
	jmp	406C96h
0000000000406C67                      66 0F 1F 84 00 00 00 00 00        f........

l0000000000406C70:
	mov	rdx,rax
	add	rax,1h

l0000000000406C77:
	add	rsi,1h
	mov	[rbx+100h],rax
	mov	[rbx+rdx],dil
	cmp	rsi,rbp
	mov	[rbx+108h],dil
	jz	406DA0h

l0000000000406C96:
	cmp	rax,+0FFh
	movzx	edi,byte ptr [rsi]
	jnz	406C70h

l0000000000406CA1:
	mov	edx,0FFh
	mov	byte ptr [rbx+0FFh],0h
	mov	r8,[rbx+118h]
	mov	rcx,rbx
	call	qword ptr [rbx+110h]
	add	dword ptr [rbx+138h],1h
	mov	eax,1h
	xor	edx,edx
	jmp	406C77h
0000000000406CCD                                        0F 1F 00              ...

l0000000000406CD0:
	mov	rax,[rcx+100h]
	lea	rsi,[000000000048EFF0]                                 ; [rip+00088312]
	lea	rbp,[000000000048EFF6]                                 ; [rip+00088311]
	jmp	406D16h
0000000000406CE7                      66 0F 1F 84 00 00 00 00 00        f........

l0000000000406CF0:
	mov	rdx,rax
	add	rax,1h

l0000000000406CF7:
	add	rsi,1h
	mov	[rbx+100h],rax
	mov	[rbx+rdx],dil
	cmp	rsi,rbp
	mov	[rbx+108h],dil
	jz	406DA0h

l0000000000406D16:
	cmp	rax,+0FFh
	movzx	edi,byte ptr [rsi]
	jnz	406CF0h

l0000000000406D21:
	mov	edx,0FFh
	mov	byte ptr [rbx+0FFh],0h
	mov	r8,[rbx+118h]
	mov	rcx,rbx
	call	qword ptr [rbx+110h]
	add	dword ptr [rbx+138h],1h
	mov	eax,1h
	xor	edx,edx
	jmp	406CF7h
0000000000406D4D                                        0F 1F 00              ...

l0000000000406D50:
	mov	rdx,[rcx+100h]
	cmp	rdx,+0FFh
	jz	40710Bh

l0000000000406D64:
	lea	rax,[rdx+1h]

l0000000000406D68:
	mov	[rbx+100h],rax
	mov	byte ptr [rbx+rdx],20h
	mov	byte ptr [rbx+108h],20h

l0000000000406D7A:
	cmp	rax,+0FFh
	jz	4070B0h

l0000000000406D86:
	lea	rdx,[rax+1h]

l0000000000406D8A:
	mov	[rbx+100h],rdx
	mov	byte ptr [rbx+rax],26h
	mov	byte ptr [rbx+108h],26h
	nop	dword ptr [rax+0h]

l0000000000406DA0:
	add	rsp,28h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	ret
0000000000406DAD                                        0F 1F 00              ...

l0000000000406DB0:
	mov	rdx,[rcx+100h]
	cmp	rdx,+0FFh
	jz	407166h

l0000000000406DC4:
	lea	rax,[rdx+1h]

l0000000000406DC8:
	mov	[rbx+100h],rax
	mov	byte ptr [rbx+rdx],20h
	mov	byte ptr [rbx+108h],20h

l0000000000406DDA:
	lea	rsi,[000000000048EFF7]                                 ; [rip+00088216]
	lea	rbp,[000000000048EFF9]                                 ; [rip+00088211]
	jmp	406E12h
0000000000406DEA                               66 0F 1F 44 00 00           f..D..

l0000000000406DF0:
	mov	rdx,rax
	add	rax,1h

l0000000000406DF7:
	add	rsi,1h
	mov	[rbx+100h],rax
	mov	[rbx+rdx],dil
	cmp	rsi,rbp
	mov	[rbx+108h],dil
	jz	406DA0h

l0000000000406E12:
	cmp	rax,+0FFh
	movzx	edi,byte ptr [rsi]
	jnz	406DF0h

l0000000000406E1D:
	mov	edx,0FFh
	mov	byte ptr [rbx+0FFh],0h
	mov	r8,[rbx+118h]
	mov	rcx,rbx
	call	qword ptr [rbx+110h]
	add	dword ptr [rbx+138h],1h
	mov	eax,1h
	xor	edx,edx
	jmp	406DF7h
0000000000406E49                            0F 1F 80 00 00 00 00          .......

l0000000000406E50:
	and	edi,4h
	jnz	406DA0h

l0000000000406E59:
	mov	rax,[rcx+100h]
	cmp	rax,+0FFh
	jz	4071BEh

l0000000000406E6C:
	lea	rdx,[rax+1h]

l0000000000406E70:
	mov	[rbx+100h],rdx
	mov	byte ptr [rbx+rax],2Ah
	mov	byte ptr [rbx+108h],2Ah
	jmp	406DA0h
0000000000406E87                      66 0F 1F 84 00 00 00 00 00        f........

l0000000000406E90:
	mov	rax,[rcx+100h]
	jmp	406D7Ah
0000000000406E9C                                     0F 1F 40 00             ..@.

l0000000000406EA0:
	mov	rax,[rcx+100h]
	jmp	406DDAh
0000000000406EAC                                     0F 1F 40 00             ..@.

l0000000000406EB0:
	mov	rax,[rcx+100h]
	lea	rsi,[000000000048EFFA]                                 ; [rip+0008813C]
	lea	rbp,[000000000048F002]                                 ; [rip+0008813D]
	jmp	406EF6h
0000000000406EC7                      66 0F 1F 84 00 00 00 00 00        f........

l0000000000406ED0:
	mov	rdx,rax
	add	rax,1h

l0000000000406ED7:
	add	rsi,1h
	mov	[rbx+100h],rax
	mov	[rbx+rdx],dil
	cmp	rsi,rbp
	mov	[rbx+108h],dil
	jz	406DA0h

l0000000000406EF6:
	cmp	rax,+0FFh
	movzx	edi,byte ptr [rsi]
	jnz	406ED0h

l0000000000406F01:
	mov	edx,0FFh
	mov	byte ptr [rbx+0FFh],0h
	mov	r8,[rbx+118h]
	mov	rcx,rbx
	call	qword ptr [rbx+110h]
	add	dword ptr [rbx+138h],1h
	mov	eax,1h
	xor	edx,edx
	jmp	406ED7h
0000000000406F2D                                        0F 1F 00              ...

l0000000000406F30:
	mov	rax,[rcx+100h]
	lea	rsi,[000000000048F003]                                 ; [rip+000880C5]
	lea	rbp,[000000000048F00D]                                 ; [rip+000880C8]
	jmp	406F76h
0000000000406F47                      66 0F 1F 84 00 00 00 00 00        f........

l0000000000406F50:
	mov	rdx,rax
	add	rax,1h

l0000000000406F57:
	add	rsi,1h
	mov	[rbx+100h],rax
	mov	[rbx+rdx],dil
	cmp	rsi,rbp
	mov	[rbx+108h],dil
	jz	406DA0h

l0000000000406F76:
	cmp	rax,+0FFh
	movzx	edi,byte ptr [rsi]
	jnz	406F50h

l0000000000406F81:
	mov	edx,0FFh
	mov	byte ptr [rbx+0FFh],0h
	mov	r8,[rbx+118h]
	mov	rcx,rbx
	call	qword ptr [rbx+110h]
	add	dword ptr [rbx+138h],1h
	mov	eax,1h
	xor	edx,edx
	jmp	406F57h
0000000000406FAD                                        0F 1F 00              ...

l0000000000406FB0:
	cmp	byte ptr [rcx+108h],28h
	jz	406FE2h

l0000000000406FB9:
	mov	rax,[rcx+100h]
	cmp	rax,+0FFh
	jz	407192h

l0000000000406FCC:
	lea	rdx,[rax+1h]

l0000000000406FD0:
	mov	[rbx+100h],rdx
	mov	byte ptr [rbx+rax],20h
	mov	byte ptr [rbx+108h],20h

l0000000000406FE2:
	mov	r8,[rbp+8h]
	mov	edx,edi
	mov	rcx,rbx
	lea	rsi,[000000000048F00E]                                 ; [rip+0008801C]
	lea	rbp,[000000000048F011]                                 ; [rip+00088018]
	call	4042F0h
	mov	rax,[rbx+100h]
	jmp	407036h
0000000000407007                      66 0F 1F 84 00 00 00 00 00        f........

l0000000000407010:
	mov	rdx,rax
	add	rax,1h

l0000000000407017:
	add	rsi,1h
	mov	[rbx+100h],rax
	mov	[rbx+rdx],dil
	cmp	rsi,rbp
	mov	[rbx+108h],dil
	jz	406DA0h

l0000000000407036:
	cmp	rax,+0FFh
	movzx	edi,byte ptr [rsi]
	jnz	407010h

l0000000000407041:
	mov	edx,0FFh
	mov	byte ptr [rbx+0FFh],0h
	mov	r8,[rbx+118h]
	mov	rcx,rbx
	call	qword ptr [rbx+110h]
	add	dword ptr [rbx+138h],1h
	mov	eax,1h
	xor	edx,edx
	jmp	407017h
000000000040706D                                        0F 1F 00              ...

l0000000000407070:
	mov	r8,[rbp+8h]
	mov	edx,edi
	mov	rcx,rbx
	call	4042F0h
	mov	rax,[rbx+100h]
	cmp	rax,+0FFh
	jz	407137h

l0000000000407091:
	lea	rdx,[rax+1h]

l0000000000407095:
	mov	[rbx+100h],rdx
	mov	byte ptr [rbx+rax],29h
	mov	byte ptr [rbx+108h],29h
	jmp	406DA0h
00000000004070AC                                     0F 1F 40 00             ..@.

l00000000004070B0:
	mov	edx,0FFh
	mov	byte ptr [rbx+0FFh],0h
	mov	r8,[rbx+118h]
	mov	rcx,rbx
	call	qword ptr [rbx+110h]
	add	dword ptr [rbx+138h],1h
	mov	edx,1h
	xor	eax,eax
	jmp	406D8Ah

l00000000004070DF:
	mov	edx,0FFh
	mov	byte ptr [rcx+0FFh],0h
	mov	r8,[rcx+118h]
	call	qword ptr [rbx+110h]
	add	dword ptr [rbx+138h],1h
	mov	edx,1h
	xor	eax,eax
	jmp	406B17h

l000000000040710B:
	mov	edx,0FFh
	mov	byte ptr [rcx+0FFh],0h
	mov	r8,[rcx+118h]
	call	qword ptr [rbx+110h]
	add	dword ptr [rbx+138h],1h
	mov	eax,1h
	xor	edx,edx
	jmp	406D68h

l0000000000407137:
	mov	edx,0FFh
	mov	byte ptr [rbx+0FFh],0h
	mov	r8,[rbx+118h]
	mov	rcx,rbx
	call	qword ptr [rbx+110h]
	add	dword ptr [rbx+138h],1h
	mov	edx,1h
	xor	eax,eax
	jmp	407095h

l0000000000407166:
	mov	edx,0FFh
	mov	byte ptr [rcx+0FFh],0h
	mov	r8,[rcx+118h]
	call	qword ptr [rbx+110h]
	add	dword ptr [rbx+138h],1h
	mov	eax,1h
	xor	edx,edx
	jmp	406DC8h

l0000000000407192:
	mov	edx,0FFh
	mov	byte ptr [rcx+0FFh],0h
	mov	r8,[rcx+118h]
	call	qword ptr [rbx+110h]
	add	dword ptr [rbx+138h],1h
	mov	edx,1h
	xor	eax,eax
	jmp	406FD0h

l00000000004071BE:
	mov	edx,0FFh
	mov	byte ptr [rcx+0FFh],0h
	mov	r8,[rcx+118h]
	call	qword ptr [rbx+110h]
	add	dword ptr [rbx+138h],1h
	mov	edx,1h
	xor	eax,eax
	jmp	406E70h
00000000004071EA                               66 0F 1F 44 00 00           f..D..

;; fn00000000004071F0: 00000000004071F0
;;   Called from:
;;     00000000004075BF (in fn0000000000407580)
;;     00000000004076EB (in fn0000000000407580)
;;     000000000040780B (in fn0000000000407580)
;;     000000000040792D (in fn0000000000407820)
;;     00000000004079A5 (in fn0000000000407820)
;;     0000000000407A1B (in fn0000000000407820)
fn00000000004071F0 proc
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,48h
	test	r8,r8
	mov	rsi,rcx
	mov	ebp,edx
	mov	rbx,r8
	mov	edi,r9d
	jnz	40726Dh

l0000000000407210:
	jmp	407277h

l0000000000407212:
	mov	eax,[rbx+10h]
	test	eax,eax
	jnz	407265h

l0000000000407219:
	mov	r8,[rbx+8h]
	test	edi,edi
	mov	eax,[r8]
	jnz	40722Ch

l0000000000407224:
	lea	edx,[rax-1Ch]
	cmp	edx,4h
	jbe	407265h

l000000000040722C:
	mov	rcx,[rbx+18h]
	cmp	eax,29h
	mov	dword ptr [rbx+10h],1h
	mov	r12,[rsi+120h]
	mov	[rsi+120h],rcx
	jz	407288h

l000000000040724A:
	cmp	eax,2Ah
	jz	4072A2h

l000000000040724F:
	cmp	eax,2h
	jz	4072BCh

l0000000000407254:
	mov	edx,ebp
	mov	rcx,rsi
	call	406AD0h
	mov	[rsi+120h],r12

l0000000000407265:
	mov	rbx,[rbx]
	test	rbx,rbx
	jz	407277h

l000000000040726D:
	mov	edx,[rsi+130h]
	test	edx,edx
	jz	407212h

l0000000000407277:
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

l0000000000407288:
	mov	r9,[rbx]
	add	r8,10h
	mov	edx,ebp
	mov	rcx,rsi
	call	407820h
	mov	[rsi+120h],r12
	jmp	407277h

l00000000004072A2:
	mov	r9,[rbx]
	add	r8,8h
	mov	edx,ebp
	mov	rcx,rsi
	call	407580h
	mov	[rsi+120h],r12
	jmp	407277h

l00000000004072BC:
	mov	rdi,[rsi+128h]
	mov	qword ptr [rsi+128h],+0h
	mov	edx,ebp
	mov	r8,[r8+8h]
	mov	rcx,rsi
	call	4042F0h
	test	bpl,4h
	mov	[rsi+128h],rdi
	mov	rax,[rsi+100h]
	jnz	40735Ah

l00000000004072F0:
	lea	rdi,[000000000048EC36]                                 ; [rip+0008793F]
	lea	r14,[000000000048EC38]                                 ; [rip+0008793A]
	jmp	407322h

l0000000000407300:
	mov	rdx,rax
	add	rax,1h

l0000000000407307:
	add	rdi,1h
	mov	[rsi+100h],rax
	mov	[rsi+rdx],r13b
	cmp	rdi,r14
	mov	[rsi+108h],r13b
	jz	407378h

l0000000000407322:
	cmp	rax,+0FFh
	movzx	r13d,byte ptr [rdi]
	jnz	407300h

l000000000040732E:
	mov	edx,0FFh
	mov	byte ptr [rsi+0FFh],0h
	mov	r8,[rsi+118h]
	mov	rcx,rsi
	call	qword ptr [rsi+110h]
	add	dword ptr [rsi+138h],1h
	mov	eax,1h
	xor	edx,edx
	jmp	407307h

l000000000040735A:
	cmp	rax,+0FFh
	jz	4073B7h

l0000000000407362:
	lea	rdx,[rax+1h]

l0000000000407366:
	mov	[rsi+100h],rdx
	mov	byte ptr [rsi+rax],2Eh
	mov	byte ptr [rsi+108h],2Eh

l0000000000407378:
	mov	rax,[rbx+8h]
	mov	rbx,[rax+10h]
	mov	eax,[rbx]
	cmp	eax,45h
	jnz	407396h

l0000000000407387:
	jmp	4073E3h
0000000000407389                            0F 1F 80 00 00 00 00          .......

l0000000000407390:
	mov	rbx,[rbx+8h]
	mov	eax,[rbx]

l0000000000407396:
	sub	eax,1Ch
	cmp	eax,4h
	jbe	407390h

l000000000040739E:
	mov	r8,rbx
	mov	edx,ebp
	mov	rcx,rsi
	call	4042F0h
	mov	[rsi+120h],r12
	jmp	407277h

l00000000004073B7:
	mov	edx,0FFh
	mov	byte ptr [rsi+0FFh],0h
	mov	r8,[rsi+118h]
	mov	rcx,rsi
	call	qword ptr [rsi+110h]
	add	dword ptr [rsi+138h],1h
	mov	edx,1h
	xor	eax,eax
	jmp	407366h

l00000000004073E3:
	mov	rax,[rsi+100h]
	lea	rdi,[000000000048EC39]                                 ; [rip+00087848]
	lea	r14,[000000000048EC46]                                 ; [rip+0008784E]
	jmp	40741Ch

l00000000004073FA:
	mov	rdx,rax
	add	rax,1h

l0000000000407401:
	add	rdi,1h
	mov	[rsi+100h],rax
	mov	[rsi+rdx],r13b
	cmp	rdi,r14
	mov	[rsi+108h],r13b
	jz	407454h

l000000000040741C:
	cmp	rax,+0FFh
	movzx	r13d,byte ptr [rdi]
	jnz	4073FAh

l0000000000407428:
	mov	edx,0FFh
	mov	byte ptr [rsi+0FFh],0h
	mov	r8,[rsi+118h]
	mov	rcx,rsi
	call	qword ptr [rsi+110h]
	add	dword ptr [rsi+138h],1h
	mov	eax,1h
	xor	edx,edx
	jmp	407401h

l0000000000407454:
	mov	eax,[rbx+10h]
	lea	r15,[rsp+20h]
	lea	rdx,[000000000048EC2C]                                 ; [rip+000877C9]
	mov	rcx,r15
	mov	r14,r15
	lea	r8d,[rax+1h]
	call	41BE60h

l0000000000407472:
	mov	edx,[r14]
	add	r14,4h
	lea	eax,[rdx+0FEFEFEFFh]
	not	edx
	and	eax,edx
	and	eax,80808080h
	jz	407472h

l000000000040748A:
	mov	edx,eax
	shr	edx,10h
	test	eax,8080h
	cmovz	eax,edx

l0000000000407497:
	lea	rdx,[r14+2h]
	cmovz	r14,rdx

l000000000040749F:
	add	al,al
	mov	rax,[rsi+100h]
	sbb	r14,3h
	sub	r14,r15
	jz	407510h

l00000000004074B1:
	xor	edi,edi
	jmp	4074D7h

l00000000004074B5:
	mov	rdx,rax
	add	rax,1h

l00000000004074BC:
	add	rdi,1h
	mov	[rsi+100h],rax
	mov	[rsi+rdx],r13b
	cmp	rdi,r14
	mov	[rsi+108h],r13b
	jz	407510h

l00000000004074D7:
	cmp	rax,+0FFh
	movzx	r13d,byte ptr [r15+rdi]
	jnz	4074B5h

l00000000004074E4:
	mov	edx,0FFh
	mov	byte ptr [rsi+0FFh],0h
	mov	r8,[rsi+118h]
	mov	rcx,rsi
	call	qword ptr [rsi+110h]
	add	dword ptr [rsi+138h],1h
	mov	eax,1h
	xor	edx,edx
	jmp	4074BCh

l0000000000407510:
	lea	rdi,[000000000048EC47]                                 ; [rip+00087730]
	lea	r14,[000000000048EC4A]                                 ; [rip+0008772C]
	jmp	407546h

l0000000000407520:
	mov	rdx,rax
	add	rax,1h

l0000000000407527:
	add	rdi,1h
	mov	[rsi+100h],rax
	mov	[rsi+rdx],r13b
	cmp	rdi,r14
	mov	[rsi+108h],r13b
	jz	407390h

l0000000000407546:
	cmp	rax,+0FFh
	movzx	r13d,byte ptr [rdi]
	jnz	407520h

l0000000000407552:
	mov	edx,0FFh
	mov	byte ptr [rsi+0FFh],0h
	mov	r8,[rsi+118h]
	mov	rcx,rsi
	call	qword ptr [rsi+110h]
	add	dword ptr [rsi+138h],1h
	mov	eax,1h
	xor	edx,edx
	jmp	407527h
000000000040757E                                           66 90               f.

;; fn0000000000407580: 0000000000407580
;;   Called from:
;;     0000000000404FE8 (in fn00000000004042F0)
;;     00000000004072AE (in fn00000000004071F0)
fn0000000000407580 proc
	push	r14
	push	r13
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,20h
	test	r9,r9
	mov	rbx,rcx
	mov	ebp,edx
	mov	r12,r8
	mov	r13,r9
	mov	rax,r9
	jz	4075C4h

l00000000004075A1:
	mov	edx,[rax+10h]
	test	edx,edx
	jz	407660h

l00000000004075AC:
	mov	rax,[rax]
	test	rax,rax
	jnz	4075A1h

l00000000004075B4:
	xor	r9d,r9d
	mov	r8,r13
	mov	edx,ebp
	mov	rcx,rbx
	call	4071F0h

l00000000004075C4:
	mov	rax,[rbx+100h]

l00000000004075CB:
	cmp	rax,+0FFh
	jz	40771Bh

l00000000004075D7:
	lea	rdx,[rax+1h]

l00000000004075DB:
	mov	[rbx+100h],rdx
	mov	byte ptr [rbx+rax],20h
	mov	byte ptr [rbx+108h],20h

l00000000004075ED:
	cmp	rdx,+0FFh
	jz	4077B0h

l00000000004075FA:
	lea	rax,[rdx+1h]
	mov	[rbx+100h],rax
	mov	byte ptr [rbx+rdx],5Bh
	mov	byte ptr [rbx+108h],5Bh
	mov	r8,[r12]
	test	r8,r8
	jz	40762Ah

l0000000000407619:
	mov	edx,ebp
	mov	rcx,rbx
	call	4042F0h
	mov	rax,[rbx+100h]

l000000000040762A:
	cmp	rax,+0FFh
	jz	407780h

l0000000000407636:
	lea	rdx,[rax+1h]

l000000000040763A:
	mov	[rbx+100h],rdx
	mov	byte ptr [rbx+rax],5Dh
	mov	byte ptr [rbx+108h],5Dh
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	ret
000000000040765B                                  0F 1F 44 00 00            ..D..

l0000000000407660:
	mov	rax,[rax+8h]
	cmp	dword ptr [rax],2Ah
	jz	407800h

l000000000040766D:
	mov	rax,[rbx+100h]
	lea	rsi,[000000000048F0CC]                                 ; [rip+00087A51]
	lea	r14,[000000000048F0CE]                                 ; [rip+00087A4C]
	jmp	4076A6h

l0000000000407684:
	mov	rdx,rax
	add	rax,1h

l000000000040768B:
	add	rsi,1h
	mov	[rbx+100h],rax
	mov	[rbx+rdx],dil
	cmp	rsi,r14
	mov	[rbx+108h],dil
	jz	4076E0h

l00000000004076A6:
	cmp	rax,+0FFh
	movzx	edi,byte ptr [rsi]
	jnz	407684h

l00000000004076B1:
	mov	edx,0FFh
	mov	byte ptr [rbx+0FFh],0h
	mov	r8,[rbx+118h]
	mov	rcx,rbx
	call	qword ptr [rbx+110h]
	add	dword ptr [rbx+138h],1h
	mov	eax,1h
	xor	edx,edx
	jmp	40768Bh
00000000004076DD                                        0F 1F 00              ...

l00000000004076E0:
	xor	r9d,r9d
	mov	edx,ebp
	mov	r8,r13
	mov	rcx,rbx
	call	4071F0h
	mov	rdx,[rbx+100h]
	cmp	rdx,+0FFh
	jz	40774Ah

l0000000000407700:
	lea	rax,[rdx+1h]

l0000000000407704:
	mov	[rbx+100h],rax
	mov	byte ptr [rbx+rdx],29h
	mov	byte ptr [rbx+108h],29h
	jmp	4075CBh

l000000000040771B:
	mov	edx,0FFh
	mov	byte ptr [rbx+0FFh],0h
	mov	r8,[rbx+118h]
	mov	rcx,rbx
	call	qword ptr [rbx+110h]
	add	dword ptr [rbx+138h],1h
	mov	edx,1h
	xor	eax,eax
	jmp	4075DBh

l000000000040774A:
	mov	edx,0FFh
	mov	byte ptr [rbx+0FFh],0h
	mov	r8,[rbx+118h]
	mov	rcx,rbx
	call	qword ptr [rbx+110h]
	add	dword ptr [rbx+138h],1h
	mov	eax,1h
	xor	edx,edx
	jmp	407704h
0000000000407776                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l0000000000407780:
	mov	edx,0FFh
	mov	byte ptr [rbx+0FFh],0h
	mov	r8,[rbx+118h]
	mov	rcx,rbx
	call	qword ptr [rbx+110h]
	add	dword ptr [rbx+138h],1h
	mov	edx,1h
	xor	eax,eax
	jmp	40763Ah
00000000004077AF                                              90                .

l00000000004077B0:
	mov	r8,[rbx+118h]
	mov	byte ptr [rbx+0FFh],0h
	mov	edx,0FFh
	mov	rcx,rbx
	call	qword ptr [rbx+110h]
	mov	byte ptr [rbx],5Bh
	mov	byte ptr [rbx+108h],5Bh
	mov	r8,[r12]
	add	dword ptr [rbx+138h],1h
	mov	qword ptr [rbx+100h],+1h
	test	r8,r8
	jnz	407619h

l00000000004077F5:
	mov	eax,1h
	jmp	407636h
00000000004077FF                                              90                .

l0000000000407800:
	mov	edx,ebp
	xor	r9d,r9d
	mov	r8,r13
	mov	rcx,rbx
	call	4071F0h
	mov	rdx,[rbx+100h]
	jmp	4075EDh
000000000040781C                                     0F 1F 40 00             ..@.

;; fn0000000000407820: 0000000000407820
;;   Called from:
;;     000000000040584F (in fn00000000004042F0)
;;     0000000000405DDF (in fn00000000004042F0)
;;     0000000000407294 (in fn00000000004071F0)
fn0000000000407820 proc
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,20h
	test	r9,r9
	mov	rbx,rcx
	mov	esi,edx
	mov	rdi,r8
	mov	rbp,r9
	jz	407910h

l000000000040783E:
	mov	r8d,[r9+10h]
	test	r8d,r8d
	jnz	407910h

l000000000040784B:
	mov	rax,r9
	mov	edx,1h
	jmp	407875h

l0000000000407855:
	and	ch,0Eh
	jnz	4079C0h

l000000000040785E:
	mov	rax,[rax]
	test	rax,rax
	jz	407910h

l000000000040786A:
	mov	ecx,[rax+10h]
	test	ecx,ecx
	jnz	407910h

l0000000000407875:
	mov	rcx,[rax+8h]
	mov	r10d,[rcx]
	lea	ecx,[r10-19h]
	cmp	ecx,12h
	ja	40785Eh

l0000000000407885:
	mov	r11,rdx
	shl	r11,cl
	test	r11d,43107h
	mov	rcx,r11
	jz	407855h

l0000000000407897:
	movzx	eax,byte ptr [rbx+108h]

l000000000040789E:
	cmp	al,20h
	jz	4079D5h

l00000000004078A6:
	mov	rdx,[rbx+100h]
	cmp	rdx,+0FFh
	jz	407B02h

l00000000004078BA:
	lea	rax,[rdx+1h]

l00000000004078BE:
	cmp	rax,+0FFh
	mov	[rbx+100h],rax
	mov	byte ptr [rbx+rdx],20h
	mov	byte ptr [rbx+108h],20h
	jnz	4079E8h

l00000000004078DC:
	mov	edx,0FFh
	mov	byte ptr [rbx+0FFh],0h
	mov	r8,[rbx+118h]
	mov	rcx,rbx
	call	qword ptr [rbx+110h]
	add	dword ptr [rbx+138h],1h
	mov	edx,1h
	xor	eax,eax
	jmp	4079ECh
000000000040790B                                  0F 1F 44 00 00            ..D..

l0000000000407910:
	mov	r12,[rbx+128h]
	xor	r9d,r9d
	mov	edx,esi
	mov	qword ptr [rbx+128h],+0h
	mov	r8,rbp
	mov	rcx,rbx
	call	4071F0h
	mov	rdx,[rbx+100h]
	cmp	rdx,+0FFh
	jz	407A56h

l0000000000407946:
	lea	rax,[rdx+1h]
	mov	[rbx+100h],rax
	mov	byte ptr [rbx+rdx],28h
	mov	byte ptr [rbx+108h],28h
	mov	r8,[rdi]
	test	r8,r8
	jz	407975h

l0000000000407964:
	mov	edx,esi
	mov	rcx,rbx
	call	4042F0h
	mov	rax,[rbx+100h]

l0000000000407975:
	cmp	rax,+0FFh
	jz	407AA4h

l0000000000407981:
	lea	rdx,[rax+1h]

l0000000000407985:
	mov	[rbx+100h],rdx
	mov	r9d,1h
	mov	byte ptr [rbx+rax],29h
	mov	r8,rbp
	mov	byte ptr [rbx+108h],29h
	mov	edx,esi
	mov	rcx,rbx
	call	4071F0h
	mov	[rbx+128h],r12
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
00000000004079BC                                     0F 1F 40 00             ..@.

l00000000004079C0:
	movzx	eax,byte ptr [rbx+108h]
	mov	edx,eax
	and	edx,0FDh
	cmp	dl,28h
	jnz	40789Eh

l00000000004079D5:
	mov	rax,[rbx+100h]
	cmp	rax,+0FFh
	jz	4078DCh

l00000000004079E8:
	lea	rdx,[rax+1h]

l00000000004079EC:
	mov	[rbx+100h],rdx
	mov	r12,[rbx+128h]
	xor	r9d,r9d
	mov	byte ptr [rbx+rax],28h
	mov	r8,rbp
	mov	byte ptr [rbx+108h],28h
	mov	qword ptr [rbx+128h],+0h
	mov	edx,esi
	mov	rcx,rbx
	call	4071F0h
	mov	rax,[rbx+100h]
	cmp	rax,+0FFh
	jz	407AD3h

l0000000000407A33:
	lea	rdx,[rax+1h]

l0000000000407A37:
	cmp	rdx,+0FFh
	mov	[rbx+100h],rdx
	mov	byte ptr [rbx+rax],29h
	mov	byte ptr [rbx+108h],29h
	jnz	407946h

l0000000000407A56:
	mov	r8,[rbx+118h]
	mov	byte ptr [rbx+0FFh],0h
	mov	edx,0FFh
	mov	rcx,rbx
	call	qword ptr [rbx+110h]
	mov	byte ptr [rbx],28h
	mov	byte ptr [rbx+108h],28h
	mov	r8,[rdi]
	add	dword ptr [rbx+138h],1h
	mov	qword ptr [rbx+100h],+1h
	test	r8,r8
	jnz	407964h

l0000000000407A9A:
	mov	eax,1h
	jmp	407981h

l0000000000407AA4:
	mov	edx,0FFh
	mov	byte ptr [rbx+0FFh],0h
	mov	r8,[rbx+118h]
	mov	rcx,rbx
	call	qword ptr [rbx+110h]
	add	dword ptr [rbx+138h],1h
	mov	edx,1h
	xor	eax,eax
	jmp	407985h

l0000000000407AD3:
	mov	edx,0FFh
	mov	byte ptr [rbx+0FFh],0h
	mov	r8,[rbx+118h]
	mov	rcx,rbx
	call	qword ptr [rbx+110h]
	add	dword ptr [rbx+138h],1h
	mov	edx,1h
	xor	eax,eax
	jmp	407A37h

l0000000000407B02:
	mov	edx,0FFh
	mov	byte ptr [rbx+0FFh],0h
	mov	r8,[rbx+118h]
	mov	rcx,rbx
	call	qword ptr [rbx+110h]
	add	dword ptr [rbx+138h],1h
	mov	eax,1h
	xor	edx,edx
	jmp	4078BEh
0000000000407B31    66 66 66 66 66 66 2E 0F 1F 84 00 00 00 00 00  ffffff.........

;; fn0000000000407B40: 0000000000407B40
;;   Called from:
;;     0000000000404E26 (in fn00000000004042F0)
;;     000000000040603B (in fn00000000004042F0)
fn0000000000407B40 proc
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,30h
	mov	rax,[rcx+160h]
	mov	rbx,rcx
	mov	edi,edx
	mov	rsi,r8
	test	rax,rax
	jz	407B78h

l0000000000407B5B:
	mov	rdx,[rcx+120h]
	mov	[rsp+28h],rax
	mov	[rsp+20h],rdx
	lea	rdx,[rsp+20h]
	mov	[rcx+120h],rdx

l0000000000407B78:
	mov	r8,[rsi]
	cmp	dword ptr [r8],4h
	jz	407BB0h

l0000000000407B81:
	mov	edx,edi
	mov	rcx,rbx
	call	4042F0h
	cmp	qword ptr [rbx+160h],0h
	jz	407BA1h

l0000000000407B95:
	mov	rax,[rsp+20h]
	mov	[rbx+120h],rax

l0000000000407BA1:
	add	rsp,30h
	pop	rbx
	pop	rsi
	pop	rdi
	ret
0000000000407BA9                            0F 1F 80 00 00 00 00          .......

l0000000000407BB0:
	mov	r8,[r8+8h]
	mov	edx,edi
	mov	rcx,rbx
	call	4042F0h
	cmp	qword ptr [rbx+160h],0h
	jz	407BD4h

l0000000000407BC8:
	mov	rax,[rsp+20h]
	mov	[rbx+120h],rax

l0000000000407BD4:
	cmp	byte ptr [rbx+108h],3Ch
	jz	407CB0h

l0000000000407BE1:
	mov	rax,[rbx+100h]

l0000000000407BE8:
	cmp	rax,+0FFh
	jz	407C51h

l0000000000407BF0:
	lea	rdx,[rax+1h]

l0000000000407BF4:
	mov	[rbx+100h],rdx
	mov	byte ptr [rbx+rax],3Ch
	mov	edx,edi
	mov	byte ptr [rbx+108h],3Ch
	mov	rax,[rsi]
	mov	rcx,rbx
	mov	r8,[rax+10h]
	call	4042F0h
	cmp	byte ptr [rbx+108h],3Eh
	jz	407CE0h

l0000000000407C24:
	mov	rax,[rbx+100h]

l0000000000407C2B:
	cmp	rax,+0FFh
	jz	407C80h

l0000000000407C33:
	lea	rdx,[rax+1h]

l0000000000407C37:
	mov	[rbx+100h],rdx
	mov	byte ptr [rbx+rax],3Eh
	mov	byte ptr [rbx+108h],3Eh
	add	rsp,30h
	pop	rbx
	pop	rsi
	pop	rdi
	ret

l0000000000407C51:
	mov	edx,0FFh
	mov	byte ptr [rbx+0FFh],0h
	mov	r8,[rbx+118h]
	mov	rcx,rbx
	call	qword ptr [rbx+110h]
	add	dword ptr [rbx+138h],1h
	mov	edx,1h
	xor	eax,eax
	jmp	407BF4h

l0000000000407C80:
	mov	edx,0FFh
	mov	byte ptr [rbx+0FFh],0h
	mov	r8,[rbx+118h]
	mov	rcx,rbx
	call	qword ptr [rbx+110h]
	add	dword ptr [rbx+138h],1h
	mov	edx,1h
	xor	eax,eax
	jmp	407C37h
0000000000407CAC                                     0F 1F 40 00             ..@.

l0000000000407CB0:
	mov	rdx,[rbx+100h]
	cmp	rdx,+0FFh
	jz	407D0Bh

l0000000000407CC0:
	lea	rax,[rdx+1h]

l0000000000407CC4:
	mov	[rbx+100h],rax
	mov	byte ptr [rbx+rdx],20h
	mov	byte ptr [rbx+108h],20h
	jmp	407BE8h
0000000000407CDB                                  0F 1F 44 00 00            ..D..

l0000000000407CE0:
	mov	rdx,[rbx+100h]
	cmp	rdx,+0FFh
	jz	407D37h

l0000000000407CF0:
	lea	rax,[rdx+1h]

l0000000000407CF4:
	mov	[rbx+100h],rax
	mov	byte ptr [rbx+rdx],20h
	mov	byte ptr [rbx+108h],20h
	jmp	407C2Bh

l0000000000407D0B:
	mov	edx,0FFh
	mov	byte ptr [rbx+0FFh],0h
	mov	r8,[rbx+118h]
	mov	rcx,rbx
	call	qword ptr [rbx+110h]
	add	dword ptr [rbx+138h],1h
	mov	eax,1h
	xor	edx,edx
	jmp	407CC4h

l0000000000407D37:
	mov	edx,0FFh
	mov	byte ptr [rbx+0FFh],0h
	mov	r8,[rbx+118h]
	mov	rcx,rbx
	call	qword ptr [rbx+110h]
	add	dword ptr [rbx+138h],1h
	mov	eax,1h
	xor	edx,edx
	jmp	407CF4h
0000000000407D63          66 66 66 66 2E 0F 1F 84 00 00 00 00 00    ffff.........

;; fn0000000000407D70: 0000000000407D70
;;   Called from:
;;     0000000000404B6B (in fn00000000004042F0)
;;     0000000000404B8D (in fn00000000004042F0)
;;     0000000000405E66 (in fn00000000004042F0)
;;     00000000004066C3 (in fn00000000004042F0)
;;     0000000000406940 (in fn00000000004042F0)
;;     0000000000406961 (in fn00000000004042F0)
;;     0000000000406A31 (in fn00000000004042F0)
fn0000000000407D70 proc
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,20h
	cmp	dword ptr [r8],31h
	jz	407D90h

l0000000000407D80:
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	jmp	4042F0h
0000000000407D8F                                              90                .

l0000000000407D90:
	mov	rax,[r8+8h]
	movsxd	rbp,dword ptr [rax+10h]
	mov	r12,[rax+8h]
	test	rbp,rbp
	jz	407E10h

l0000000000407DA1:
	mov	rbx,rcx
	mov	rax,[rcx+100h]
	xor	esi,esi
	jmp	407DD2h
0000000000407DAF                                              90                .

l0000000000407DB0:
	mov	rdx,rax
	add	rax,1h

l0000000000407DB7:
	add	rsi,1h
	mov	[rbx+100h],rax
	mov	[rbx+rdx],dil
	cmp	rbp,rsi
	mov	[rbx+108h],dil
	jz	407E10h

l0000000000407DD2:
	cmp	rax,+0FFh
	movzx	edi,byte ptr [r12+rsi]
	jnz	407DB0h

l0000000000407DDF:
	mov	edx,0FFh
	mov	byte ptr [rbx+0FFh],0h
	mov	r8,[rbx+118h]
	mov	rcx,rbx
	call	qword ptr [rbx+110h]
	add	dword ptr [rbx+138h],1h
	mov	eax,1h
	xor	edx,edx
	jmp	407DB7h
0000000000407E0B                                  0F 1F 44 00 00            ..D..

l0000000000407E10:
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
0000000000407E1B                                  0F 1F 44 00 00            ..D..

;; fn0000000000407E20: 0000000000407E20
;;   Called from:
;;     0000000000404A10 (in fn00000000004042F0)
;;     0000000000404A42 (in fn00000000004042F0)
;;     0000000000404ABD (in fn00000000004042F0)
;;     0000000000404B05 (in fn00000000004042F0)
;;     0000000000404B79 (in fn00000000004042F0)
;;     0000000000406953 (in fn00000000004042F0)
;;     000000000040696F (in fn00000000004042F0)
;;     000000000040698C (in fn00000000004042F0)
;;     00000000004069B3 (in fn00000000004042F0)
;;     00000000004069E4 (in fn00000000004042F0)
;;     0000000000406A23 (in fn00000000004042F0)
fn0000000000407E20 proc
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,20h
	mov	eax,[r8]
	cmp	eax,30h
	setz	r10b
	cmp	eax,1h
	setbe	r9b
	or	r10b,r9b
	jnz	407EB0h

l0000000000407E3D:
	cmp	eax,6h
	jz	407EB0h

l0000000000407E42:
	mov	rax,[rcx+100h]
	mov	rsi,r8
	mov	edi,edx
	mov	rbx,rcx
	cmp	rax,+0FFh
	jz	407EC0h

l0000000000407E59:
	lea	rdx,[rax+1h]

l0000000000407E5D:
	mov	[rbx+100h],rdx
	mov	r8,rsi
	mov	byte ptr [rbx+rax],28h
	mov	edx,edi
	mov	byte ptr [rbx+108h],28h
	mov	rcx,rbx
	call	4042F0h
	mov	rax,[rbx+100h]
	cmp	rax,+0FFh
	jz	407EF0h

l0000000000407E8B:
	lea	rdx,[rax+1h]

l0000000000407E8F:
	mov	[rbx+100h],rdx
	mov	byte ptr [rbx+rax],29h
	mov	byte ptr [rbx+108h],29h
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	ret
0000000000407EA9                            0F 1F 80 00 00 00 00          .......

l0000000000407EB0:
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	jmp	4042F0h
0000000000407EBC                                     0F 1F 40 00             ..@.

l0000000000407EC0:
	mov	edx,0FFh
	mov	byte ptr [rbx+0FFh],0h
	mov	r8,[rbx+118h]
	mov	rcx,rbx
	call	qword ptr [rbx+110h]
	add	dword ptr [rbx+138h],1h
	mov	edx,1h
	xor	eax,eax
	jmp	407E5Dh
0000000000407EEF                                              90                .

l0000000000407EF0:
	mov	edx,0FFh
	mov	byte ptr [rbx+0FFh],0h
	mov	r8,[rbx+118h]
	mov	rcx,rbx
	call	qword ptr [rbx+110h]
	add	dword ptr [rbx+138h],1h
	mov	edx,1h
	xor	eax,eax
	jmp	407E8Fh
0000000000407F1F                                              90                .

;; fn0000000000407F20: 0000000000407F20
;;   Called from:
;;     0000000000409DD4 (in fn0000000000409C60)
;;     0000000000409F83 (in fn0000000000409C60)
;;     000000000040AAB0 (in fn0000000000409C60)
;;     000000000040AE31 (in fn0000000000409C60)
;;     000000000040AE63 (in fn0000000000409C60)
;;     000000000040B17A (in fn0000000000409C60)
;;     000000000040CD83 (in fn000000000040CB30)
;;     000000000040D4FC (in fn000000000040D230)
;;     000000000040DC33 (in fn000000000040D820)
;;     000000000040E504 (in fn000000000040D820)
;;     000000000040E95A (in fn000000000040D820)
;;     000000000040EADA (in fn000000000040D820)
;;     000000000040EBF0 (in fn000000000040D820)
;;     000000000040EC3E (in fn000000000040D820)
fn0000000000407F20 proc
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,20h
	mov	rax,[rcx+18h]
	cmp	byte ptr [rax],4Ch
	jz	407F40h

l0000000000407F30:
	xor	eax,eax
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	ret
0000000000407F3A                               66 0F 1F 44 00 00           f..D..

l0000000000407F40:
	mov	rbx,rcx
	lea	rcx,[rax+1h]
	mov	[rbx+18h],rcx
	movzx	edx,byte ptr [rax+1h]
	cmp	dl,5Fh
	setz	r8b
	cmp	dl,5Ah
	jz	408010h

l0000000000407F5F:
	test	r8b,r8b
	jnz	408040h

l0000000000407F68:
	mov	rcx,rbx
	call	4080A0h
	test	rax,rax
	mov	rsi,rax
	jz	407F30h

l0000000000407F78:
	cmp	dword ptr [rax],27h
	jz	408070h

l0000000000407F81:
	mov	rdx,[rbx+18h]
	mov	edi,3Bh
	movzx	r9d,byte ptr [rdx]
	cmp	r9b,6Eh
	jz	408050h

l0000000000407F98:
	cmp	r9b,45h
	jz	40808Ah

l0000000000407FA2:
	test	r9b,r9b
	jz	407F30h

l0000000000407FA7:
	lea	r9,[rdx+1h]
	jmp	407FBDh
0000000000407FAD                                        0F 1F 00              ...

l0000000000407FB0:
	add	r9,1h
	test	r10b,r10b
	jz	407F30h

l0000000000407FBD:
	mov	[rbx+18h],r9
	movzx	r10d,byte ptr [r9]
	cmp	r10b,45h
	jnz	407FB0h

l0000000000407FCB:
	mov	r8d,r9d
	sub	r8d,edx

l0000000000407FD1:
	mov	rcx,rbx
	call	4037B0h
	mov	edx,edi
	mov	rcx,rbx
	mov	r9,rax
	mov	r8,rsi
	call	403730h
	mov	rcx,[rbx+18h]
	movzx	edx,byte ptr [rcx]

l0000000000407FF0:
	cmp	dl,45h
	jnz	407F30h

l0000000000407FF9:
	add	rcx,1h
	mov	[rbx+18h],rcx
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	ret
0000000000408009                            0F 1F 80 00 00 00 00          .......

l0000000000408010:
	test	r8b,r8b
	jnz	408040h

l0000000000408015:
	xor	eax,eax
	cmp	dl,5Ah
	jnz	407FF0h

l000000000040801C:
	add	rcx,1h
	xor	edx,edx
	mov	[rbx+18h],rcx
	mov	rcx,rbx
	call	40C0C0h
	mov	rcx,[rbx+18h]
	movzx	edx,byte ptr [rcx]
	jmp	407FF0h
0000000000408037                      66 0F 1F 84 00 00 00 00 00        f........

l0000000000408040:
	lea	rcx,[rax+2h]
	mov	[rbx+18h],rcx
	movzx	edx,byte ptr [rax+2h]
	jmp	408015h
000000000040804E                                           66 90               f.

l0000000000408050:
	lea	rax,[rdx+1h]
	mov	dil,3Ch
	mov	[rbx+18h],rax
	movzx	r9d,byte ptr [rdx+1h]
	mov	rdx,rax
	jmp	407F98h
0000000000408068                         0F 1F 84 00 00 00 00 00         ........

l0000000000408070:
	mov	rax,[rax+8h]
	mov	edx,[rax+1Ch]
	test	edx,edx
	jz	407F81h

l000000000040807F:
	mov	eax,[rax+8h]
	sub	[rbx+50h],eax
	jmp	407F81h

l000000000040808A:
	xor	r8d,r8d
	jmp	407FD1h
0000000000408092       66 66 66 66 66 2E 0F 1F 84 00 00 00 00 00   fffff.........

;; fn00000000004080A0: 00000000004080A0
;;   Called from:
;;     0000000000407F6B (in fn0000000000407F20)
;;     0000000000408214 (in fn00000000004080A0)
;;     000000000040957D (in fn0000000000409500)
;;     000000000040961B (in fn00000000004095D0)
;;     00000000004097E7 (in fn00000000004096B0)
;;     0000000000409DE4 (in fn0000000000409C60)
;;     000000000040A02F (in fn0000000000409C60)
;;     000000000040A24E (in fn0000000000409C60)
;;     000000000040A30C (in fn0000000000409C60)
;;     000000000040A319 (in fn0000000000409C60)
;;     000000000040A58E (in fn0000000000409C60)
;;     000000000040AB7A (in fn0000000000409C60)
;;     000000000040AC9C (in fn0000000000409C60)
;;     000000000040AF17 (in fn0000000000409C60)
;;     000000000040B10C (in fn0000000000409C60)
;;     000000000040B147 (in fn0000000000409C60)
;;     000000000040B28B (in fn0000000000409C60)
;;     000000000040B341 (in fn0000000000409C60)
;;     000000000040B627 (in fn0000000000409C60)
;;     000000000040B657 (in fn0000000000409C60)
;;     000000000040B6C4 (in fn0000000000409C60)
;;     000000000040B793 (in fn0000000000409C60)
;;     000000000040B7E0 (in fn0000000000409C60)
;;     000000000040B82A (in fn0000000000409C60)
;;     000000000040B846 (in fn0000000000409C60)
;;     000000000040B880 (in fn0000000000409C60)
;;     000000000040B89A (in fn0000000000409C60)
;;     000000000040B8E3 (in fn0000000000409C60)
;;     000000000040BA1A (in fn0000000000409C60)
;;     000000000040BA7D (in fn0000000000409C60)
;;     000000000040BB21 (in fn0000000000409C60)
;;     000000000040BEAE (in fn000000000040BBC0)
;;     000000000040C9F2 (in fn000000000040C6B0)
;;     000000000040CE3C (in fn000000000040CB30)
;;     000000000040D03F (in fn000000000040CB30)
;;     000000000040D0D3 (in fn000000000040CB30)
;;     000000000040D0E3 (in fn000000000040CB30)
;;     000000000040D15E (in fn000000000040CB30)
;;     000000000040D57C (in fn000000000040D230)
;;     000000000040D618 (in fn000000000040D230)
;;     000000000040D6E3 (in fn000000000040D230)
;;     000000000040D6F3 (in fn000000000040D230)
;;     000000000040D75E (in fn000000000040D230)
;;     000000000040D91E (in fn000000000040D820)
;;     000000000040DB8F (in fn000000000040D820)
;;     000000000040DE31 (in fn000000000040D820)
;;     000000000040DF03 (in fn000000000040D820)
;;     000000000040DF13 (in fn000000000040D820)
;;     000000000040E1C9 (in fn000000000040D820)
;;     000000000040E6B2 (in fn000000000040D820)
;;     000000000040EA5D (in fn000000000040D820)
;;     000000000040EBB2 (in fn000000000040D820)
;;     000000000040EC06 (in fn000000000040D820)
;;     000000000040ECF9 (in fn000000000040D820)
;;     000000000040EF34 (in fn000000000040D820)
;;     000000000040F15A (in fn000000000040D820)
;;     000000000040F299 (in fn000000000040D820)
;;     000000000040F411 (in fn000000000040D820)
;;     000000000040F434 (in fn000000000040D820)
;;     000000000040F45C (in fn000000000040D820)
;;     000000000040F4BD (in fn000000000040D820)
;;     000000000040F4CA (in fn000000000040D820)
;;     000000000040F4E2 (in fn000000000040D820)
;;     000000000040F5C3 (in fn000000000040D820)
;;     000000000040F628 (in fn000000000040D820)
;;     000000000040F752 (in fn000000000040D820)
;;     000000000040F7DB (in fn000000000040D820)
;;     000000000040F84E (in fn000000000040D820)
;;     000000000040F89E (in fn000000000040D820)
;;     000000000040F8F6 (in fn000000000040D820)
;;     000000000040F9DE (in fn000000000040D820)
;;     000000000040F9EE (in fn000000000040D820)
;;     000000000040F9FB (in fn000000000040D820)
;;     000000000040FAD3 (in fn000000000040D820)
fn00000000004080A0 proc
	push	r13
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,48h
	mov	rbx,rcx
	mov	rcx,[rcx+18h]
	movsx	eax,byte ptr [rcx]
	cmp	al,56h
	setz	r8b
	cmp	al,72h
	setz	dl
	or	r8b,dl
	jnz	4081F0h

l00000000004080CA:
	cmp	al,4Bh
	jz	4081F0h

l00000000004080D2:
	lea	edx,[rax-30h]
	cmp	dl,4Ah
	ja	4081E0h

l00000000004080DE:
	lea	r8,[000000000048F0DC]                                  ; [rip+00086FF7]
	movzx	edx,dl
	movsxd	rdx,dword ptr [r8+rdx*4]
	add	r8,rdx
	jmp	r8
00000000004080F2       8B 6B 54 C7 43 54 01 00 00 00 0F B6 41 02   .kT.CT......A.
0000000000408100 3C 4C 0F 84 1D 10 00 00 3C 54 0F 84 05 10 00 00 <L......<T......
0000000000408110 3C 73 0F 84 03 0B 00 00 3C 66 0F 84 65 0B 00 00 <s......<f..e...
0000000000408120 8D 50 D0 80 FA 09 0F 86 64 0A 00 00 3C 6F 0F 84 .P......d...<o..
0000000000408130 4A 0A 00 00 3C 74 0F 94 C2 74 04 3C 69 75 0A 80 J...<t...t.<iu..
0000000000408140 79 03 6C 0F 84 95 0F 00 00 48 89 D9 E8 5F 15 00 y.l......H..._..
0000000000408150 00 48 85 C0 48 89 C6 0F 84 C2 0D 00 00 8B 00 83 .H..H...........
0000000000408160 F8 31 0F 84 E2 0D 00 00 83 F8 32 0F 84 C4 0F 00 .1........2.....
0000000000408170 00 83 F8 33 0F 85 A5 0D 00 00 48 8B 43 18 80 38 ...3......H.C..8
0000000000408180 5F 0F 84 AB 12 00 00 48 89 D9 E8 A1 50 00 00 49 _......H....P..I
0000000000408190 89 F0 49 89 C1 BA 35 00 00 00 48 89 D9 E8 8E B5 ..I...5...H.....
00000000004081A0 FF FF 49 89 C0 45 31 C9 89 6B 54 BA 41 00 00 00 ..I..E1..kT.A...
00000000004081B0 48 89 D9 E8 78 B5 FF FF 48 85 C0 48 89 44 24 38 H...x...H..H.D$8
00000000004081C0 74 1E 48 8B 53 18 80 3A 00 74 15 48 8D 4A 01 48 t.H.S..:.t.H.J.H
00000000004081D0 89 4B 18 80 3A 45 0F 84 ED 00 00 00 0F 1F 40 00 .K..:E........@.

l00000000004081E0:
	xor	eax,eax
	add	rsp,48h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	ret
00000000004081EF                                              90                .

l00000000004081F0:
	lea	rdx,[rsp+38h]
	xor	r8d,r8d
	mov	rcx,rbx
	call	403810h
	test	rax,rax
	mov	rsi,rax
	jz	4081E0h

l0000000000408208:
	mov	rax,[rbx+18h]
	mov	rcx,rbx
	cmp	byte ptr [rax],46h
	jz	408260h

l0000000000408214:
	call	4080A0h
	mov	[rsi],rax

l000000000040821C:
	test	rax,rax
	jz	4081E0h

l0000000000408221:
	mov	edi,[rax]
	lea	ecx,[rdi-1Fh]
	cmp	ecx,1h
	jbe	408270h

l000000000040822B:
	mov	rdx,[rsp+38h]
	test	rdx,rdx
	jz	4081E0h

l0000000000408235:
	mov	eax,[rbx+38h]
	cmp	eax,[rbx+3Ch]
	jge	4081E0h

l000000000040823D:
	mov	rcx,[rbx+30h]
	movsxd	r8,eax
	add	eax,1h
	mov	[rcx+r8*8],rdx
	mov	[rbx+38h],eax
	mov	rax,[rsp+38h]
	add	rsp,48h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	ret

l0000000000408260:
	call	409640h
	mov	[rsi],rax
	jmp	40821Ch
000000000040826A                               66 0F 1F 44 00 00           f..D..

l0000000000408270:
	mov	rcx,[rsp+38h]
	mov	r8,[rax+8h]
	mov	[rax+8h],rcx
	mov	rdx,[rsi]
	mov	[rsp+38h],rdx
	mov	[rsi],r8
	jmp	40822Bh
000000000040828A                               66 0F 1F 44 00 00           f..D..
0000000000408290 48 83 C1 01 48 89 4B 18 48 89 D9 E8 90 BB FF FF H...H.K.H.......
00000000004082A0 45 31 C9 49 89 C0 BA 28 00 00 00 48 89 D9 E8 7D E1.I...(...H...}
00000000004082B0 B4 FF FF 48 89 44 24 38 0F 1F 84 00 00 00 00 00 ...H.D$8........
00000000004082C0 48 85 C0 0F 84 17 FF FF FF 8B 53 38 3B 53 3C 0F H.........S8;S<.
00000000004082D0 8D 0B FF FF FF 48 8B 4B 30 4C 63 C2 83 C2 01 4A .....H.K0Lc....J
00000000004082E0 89 04 C1 48 8B 44 24 38 89 53 38 48 83 C4 48 5B ...H.D$8.S8H..H[
00000000004082F0 5E 5F 5D 41 5C 41 5D C3 0F 1F 84 00 00 00 00 00 ^_]A\A].........
0000000000408300 48 89 D9 E8 B8 38 00 00 48 89 44 24 38 EB B1 90 H....8..H.D$8...
0000000000408310 48 8D 51 01 48 89 53 18 0F B6 41 01 3C 5F 0F 84 H.Q.H.S...A.<_..
0000000000408320 0F 06 00 00 83 E8 30 3C 09 0F 87 52 06 00 00 48 ......0<...R...H
0000000000408330 83 C1 02 49 89 C8 48 89 4B 18 48 83 C1 01 41 0F ...I..H.K.H...A.
0000000000408340 B6 00 83 E8 30 3C 09 76 EA 41 29 D0 48 89 D9 E8 ....0<.v.A).H...
0000000000408350 5C B4 FF FF 48 85 C0 48 89 C6 74 0D 48 8B 53 18 \...H..H..t.H.S.
0000000000408360 80 3A 5F 0F 84 CC 05 00 00 31 C0 E9 F0 00 00 00 .:_......1......
0000000000408370 48 83 C1 01 48 89 4B 18 48 89 D9 E8 20 FD FF FF H...H.K.H... ...
0000000000408380 45 31 C9 49 89 C0 BA 25 00 00 00 48 89 D9 E8 9D E1.I...%...H....
0000000000408390 B3 FF FF 48 89 44 24 38 E9 23 FF FF FF 0F 1F 00 ...H.D$8.#......
00000000004083A0 48 89 D9 E8 98 12 00 00 48 89 44 24 38 E9 0E FF H.......H.D$8...
00000000004083B0 FF FF 48 83 C1 01 48 89 4B 18 48 89 D9 E8 DE FC ..H...H.K.H.....
00000000004083C0 FF FF 45 31 C9 49 89 C0 BA 26 00 00 00 48 89 D9 ..E1.I...&...H..
00000000004083D0 E8 5B B3 FF FF 48 89 44 24 38 E9 E1 FE FF FF 90 .[...H.D$8......
00000000004083E0 48 8D 41 01 48 89 43 18 80 79 01 00 0F 84 EE FD H.A.H.C..y......
00000000004083F0 FF FF 48 8D 41 02 48 89 43 18 0F B6 41 01 83 E8 ..H.A.H.C...A...
0000000000408400 46 3C 30 0F 87 D7 FD FF FF 48 8D 15 F8 6D 08 00 F<0......H...m..
0000000000408410 0F B6 C0 48 63 04 82 48 01 C2 FF E2 0F 1F 40 00 ...Hc..H......@.
0000000000408420 48 83 C1 01 48 89 4B 18 48 89 D9 E8 70 FC FF FF H...H.K.H...p...
0000000000408430 48 85 C0 48 89 C6 0F 84 2D FF FF FF 48 89 D9 E8 H..H....-...H...
0000000000408440 5C FC FF FF 48 85 C0 49 89 C1 0F 84 19 FF FF FF \...H..I........
0000000000408450 49 89 F0 BA 2B 00 00 00 48 89 D9 E8 D0 B2 FF FF I...+...H.......
0000000000408460 48 89 44 24 38 E9 56 FE FF FF 66 0F 1F 44 00 00 H.D$8.V...f..D..
0000000000408470 48 83 C1 01 48 89 4B 18 48 89 D9 E8 20 FC FF FF H...H.K.H... ...
0000000000408480 45 31 C9 49 89 C0 BA 24 00 00 00 48 89 D9 E8 9D E1.I...$...H....
0000000000408490 B2 FF FF 48 89 44 24 38 E9 23 FE FF FF 0F 1F 00 ...H.D$8.#......
00000000004084A0 48 83 C1 01 48 89 4B 18 48 89 D9 E8 F0 FB FF FF H...H.K.H.......
00000000004084B0 45 31 C9 49 89 C0 BA 22 00 00 00 48 89 D9 E8 6D E1.I..."...H...m
00000000004084C0 B2 FF FF 48 89 44 24 38 E9 F3 FD FF FF 0F 1F 00 ...H.D$8........
00000000004084D0 48 83 C1 01 48 89 4B 18 48 89 D9 E8 C0 FB FF FF H...H.K.H.......
00000000004084E0 45 31 C9 49 89 C0 BA 23 00 00 00 48 89 D9 E8 3D E1.I...#...H...=
00000000004084F0 B2 FF FF 48 89 44 24 38 E9 C3 FD FF FF 0F 1F 00 ...H.D$8........
0000000000408500 0F B6 41 01 8D 50 D0 80 FA 09 76 0F 3C 5F 74 0B ..A..P....v.<_t.
0000000000408510 83 E8 41 3C 19 0F 87 42 04 00 00 31 D2 48 89 D9 ..A<...B...1.H..
0000000000408520 E8 6B B4 FF FF 48 8B 53 18 48 89 44 24 38 80 3A .k...H.S.H.D$8.:
0000000000408530 49 0F 85 AB FC FF FF 48 89 D9 E8 21 17 00 00 4C I......H...!...L
0000000000408540 8B 44 24 38 49 89 C1 BA 04 00 00 00 48 89 D9 E8 .D$8I.......H...
0000000000408550 DC B1 FF FF 48 89 44 24 38 E9 62 FD FF FF 66 90 ....H.D$8.b...f.
0000000000408560 48 83 C1 01 48 89 4B 18 48 89 D9 E8 C0 B8 FF FF H...H.K.H.......
0000000000408570 48 89 D9 48 89 C6 48 89 44 24 38 E8 20 FB FF FF H..H..H.D$8. ...
0000000000408580 49 89 F1 49 89 C0 BA 21 00 00 00 48 89 D9 E8 9D I..I...!...H....
0000000000408590 B1 FF FF 48 89 44 24 38 E9 23 FD FF FF 0F 1F 00 ...H.D$8.#......
00000000004085A0 83 E8 61 48 8D 15 D6 7A 08 00 44 8B 43 28 48 98 ..aH...z..D.C(H.
00000000004085B0 48 C1 E0 05 48 01 C2 44 3B 43 2C 0F 8D 5F 03 00 H...H..D;C,.._..
00000000004085C0 00 49 63 C0 41 83 C0 01 4C 8D 0C 40 48 8B 43 20 .Ic.A...L..@H.C 
00000000004085D0 44 89 43 28 4A 8D 04 C8 48 85 C0 0F 84 3F 03 00 D.C(J...H....?..
00000000004085E0 00 48 83 C1 01 48 89 50 08 C7 00 27 00 00 00 8B .H...H.P...'....
00000000004085F0 52 08 48 89 4B 18 01 53 50 E9 E4 FB FF FF 66 90 R.H.K..SP.....f.
0000000000408600 48 89 D9 E8 78 B7 FF FF 48 8B 73 18 48 89 44 24 H...x...H.s.H.D$
0000000000408610 38 80 3E 49 0F 85 A6 FC FF FF 8B 53 58 85 D2 0F 8.>I.......SX...
0000000000408620 85 2B 04 00 00 48 85 C0 0F 84 B2 FB FF FF 8B 53 .+...H.........S
0000000000408630 38 3B 53 3C 0F 8D A6 FB FF FF 48 8B 4B 30 4C 63 8;S<......H.K0Lc
0000000000408640 C2 83 C2 01 4A 89 04 C1 89 53 38 48 89 D9 E8 0D ....J....S8H....
0000000000408650 16 00 00 E9 E7 FE FF FF 8B 53 28 3B 53 2C 0F 8D .........S(;S,..
0000000000408660 BC 02 00 00 48 63 C2 83 C2 01 48 8D 0C 40 48 8B ....Hc....H..@H.
0000000000408670 43 20 89 53 28 48 8D 04 C8 48 85 C0 0F 84 9E 02 C .S(H...H......
0000000000408680 00 00 48 8D 3D D7 7D 08 00 C7 00 27 00 00 00 48 ..H.=.}....'...H
0000000000408690 89 78 08 83 43 50 08 E9 46 FB FF FF 8B 53 28 3B .x..CP..F....S(;
00000000004086A0 53 2C 0F 8D 78 02 00 00 48 63 C2 83 C2 01 48 8D S,..x...Hc....H.
00000000004086B0 0C 40 48 8B 43 20 89 53 28 48 8D 04 C8 48 85 C0 .@H.C .S(H...H..
00000000004086C0 0F 84 5A 02 00 00 48 8D 3D 53 7D 08 00 C7 00 27 ..Z...H.=S}....'
00000000004086D0 00 00 00 48 89 78 08 83 43 50 04 E9 02 FB FF FF ...H.x..CP......
00000000004086E0 8B 53 28 3B 53 2C 0F 8D 34 02 00 00 48 63 C2 83 .S(;S,..4...Hc..
00000000004086F0 C2 01 48 8D 0C 40 48 8B 43 20 89 53 28 48 8D 04 ..H..@H.C .S(H..
0000000000408700 C8 48 85 C0 0F 84 16 02 00 00 48 8D 3D AF 7C 08 .H........H.=.|.
0000000000408710 00 C7 00 27 00 00 00 48 89 78 08 83 43 50 09 E9 ...'...H.x..CP..
0000000000408720 BE FA FF FF 8B 53 28 3B 53 2C 0F 8D F0 01 00 00 .....S(;S,......
0000000000408730 48 63 C2 83 C2 01 48 8D 0C 40 48 8B 43 20 89 53 Hc....H..@H.C .S
0000000000408740 28 48 8D 04 C8 48 85 C0 0F 84 D2 01 00 00 48 8D (H...H........H.
0000000000408750 3D AB 7C 08 00 C7 00 27 00 00 00 48 89 78 08 83 =.|....'...H.x..
0000000000408760 43 50 0A E9 7A FA FF FF 48 89 D9 E8 B0 50 00 00 CP..z...H....P..
0000000000408770 E9 EB FC FF FF 8B 53 28 3B 53 2C 0F 8D 9F 01 00 ......S(;S,.....
0000000000408780 00 48 63 C2 83 C2 01 48 8D 0C 40 48 8B 43 20 89 .Hc....H..@H.C .
0000000000408790 53 28 48 8D 04 C8 48 85 C0 0F 84 81 01 00 00 48 S(H...H........H
00000000004087A0 8D 3D 9A 7C 08 00 C7 00 27 00 00 00 48 89 78 08 .=.|....'...H.x.
00000000004087B0 83 43 50 08 E9 29 FA FF FF 48 89 D9 E8 DF F8 FF .CP..)...H......
00000000004087C0 FF 45 31 C9 49 89 C0 BA 49 00 00 00 48 89 D9 E8 .E1.I...I...H...
00000000004087D0 5C AF FF FF 48 89 44 24 38 E9 E2 FA FF FF 8B 53 \...H.D$8......S
00000000004087E0 28 3B 53 2C 0F 8D 36 01 00 00 48 63 C2 83 C2 01 (;S,..6...Hc....
00000000004087F0 48 8D 0C 40 48 8B 43 20 89 53 28 48 8D 04 C8 48 H..@H.C .S(H...H
0000000000408800 85 C0 0F 84 18 01 00 00 48 8D 3D 71 7C 08 00 C7 ........H.=q|...
0000000000408810 00 27 00 00 00 48 89 78 08 83 43 50 11 E9 C0 F9 .'...H.x..CP....
0000000000408820 FF FF 8B 53 28 3B 53 2C 0F 8D F2 00 00 00 48 63 ...S(;S,......Hc
0000000000408830 C2 83 C2 01 48 8D 0C 40 48 8B 43 20 89 53 28 48 ....H..@H.C .S(H
0000000000408840 8D 04 C8 48 85 C0 0F 84 D4 00 00 00 48 8D 3D 8D ...H........H.=.
0000000000408850 7B 08 00 C7 00 27 00 00 00 48 89 78 08 83 43 50 {....'...H.x..CP
0000000000408860 09 E9 7C F9 FF FF 48 8D 15 68 68 08 00 41 B8 04 ..|...H..hh..A..
0000000000408870 00 00 00 48 89 D9 E8 35 AF FF FF E9 62 F9 FF FF ...H...5....b...
0000000000408880 8B 43 28 3B 43 2C 0F 8D 03 02 00 00 48 63 D0 83 .C(;C,......Hc..
0000000000408890 C0 01 4C 8D 04 52 48 8B 53 20 89 43 28 4A 8D 14 ..L..RH.S .C(J..
00000000004088A0 C2 48 89 54 24 38 C7 02 2C 00 00 00 0F B6 41 02 .H.T$8..,.....A.
00000000004088B0 83 E8 30 3C 09 0F 96 C0 0F B6 C8 84 C0 66 89 4A ..0<.........f.J
00000000004088C0 10 74 09 48 8D 4B 18 E8 94 B3 FF FF 48 8B 74 24 .t.H.K......H.t$
00000000004088D0 38 48 89 D9 E8 C7 F7 FF FF 48 89 46 08 48 8B 44 8H.......H.F.H.D
00000000004088E0 24 38 48 83 78 08 00 0F 84 F3 F8 FF FF 48 8D 4B $8H.x........H.K
00000000004088F0 18 E8 6A B3 FF FF 48 8B 43 18 31 D2 80 38 00 74 ..j...H.C.1..8.t
0000000000408900 10 48 8D 50 01 48 89 53 18 31 D2 80 38 73 0F 94 .H.P.H.S.1..8s..
0000000000408910 C2 48 8B 44 24 38 66 89 50 12 E9 C3 F8 FF FF 90 .H.D$8f.P.......
0000000000408920 48 C7 44 24 38 00 00 00 00 48 8B 04 25 08 00 00 H.D$8....H..%...
0000000000408930 00 0F 0B 31 F6 48 83 C2 01 48 89 D9 48 89 53 18 ...1.H...H..H.S.
0000000000408940 E8 5B F7 FF FF 49 89 F0 49 89 C1 BA 2A 00 00 00 .[...I..I...*...
0000000000408950 48 89 D9 E8 D8 AD FF FF E9 03 FB FF FF 48 89 D9 H............H..
0000000000408960 E8 5B 32 00 00 48 85 C0 48 89 44 24 38 0F 84 6D .[2..H..H.D$8..m
0000000000408970 F8 FF FF 83 38 18 0F 85 4D F9 FF FF E9 61 F8 FF ....8...M....a..
0000000000408980 FF 8B 7B 54 C7 43 54 01 00 00 00 0F B6 41 01 3C ..{T.CT......A.<
0000000000408990 4C 0F 84 74 02 00 00 3C 54 0F 84 D6 02 00 00 3C L..t...<T......<
00000000004089A0 73 0F 84 30 01 00 00 3C 66 0F 84 71 01 00 00 8D s..0...<f..q....
00000000004089B0 50 D0 80 FA 09 0F 86 F3 00 00 00 3C 6F 0F 84 D9 P..........<o...
00000000004089C0 00 00 00 3C 74 0F 94 C2 74 04 3C 69 75 0A 80 79 ...<t...t.<iu..y
00000000004089D0 02 6C 0F 84 F1 03 00 00 48 89 D9 E8 D0 0C 00 00 .l......H.......
00000000004089E0 48 85 C0 48 89 C6 0F 84 7F 02 00 00 8B 00 83 F8 H..H............
00000000004089F0 31 0F 84 09 04 00 00 83 F8 32 0F 84 E5 02 00 00 1........2......
0000000000408A00 83 F8 33 0F 85 62 02 00 00 48 8B 43 18 80 38 5F ..3..b...H.C..8_
0000000000408A10 0F 84 76 0A 00 00 48 89 D9 E8 12 48 00 00 49 89 ..v...H....H..I.
0000000000408A20 F0 49 89 C1 BA 35 00 00 00 48 89 D9 E8 FF AC FF .I...5...H......
0000000000408A30 FF 48 89 C6 48 85 F6 89 7B 54 0F 85 1C F9 FF FF .H..H...{T......
0000000000408A40 31 C0 E9 19 FA FF FF 66 0F 1F 84 00 00 00 00 00 1......f........
0000000000408A50 48 89 D9 44 8B 6B 28 44 8B 63 38 8B 6B 40 8B 7B H..D.k(D.c8.k@.{
0000000000408A60 50 E8 FA 11 00 00 48 8B 53 18 80 3A 49 0F 84 68 P.....H.S..:I..h
0000000000408A70 01 00 00 48 89 73 18 44 89 6B 28 44 89 63 38 89 ...H.s.D.k(D.c8.
0000000000408A80 6B 40 89 7B 50 48 8B 44 24 38 E9 31 F8 FF FF C7 k@.{PH.D$8.1....
0000000000408A90 04 25 00 00 00 00 00 00 00 00 0F 0B 80 79 02 6E .%...........y.n
0000000000408AA0 0F 85 32 FF FF FF 48 83 C1 03 48 89 4B 18 48 89 ..2...H...H.K.H.
0000000000408AB0 D9 E8 9A 0D 00 00 48 85 C0 48 89 C6 0F 84 A9 01 ......H..H......
0000000000408AC0 00 00 48 8B 53 18 80 3A 49 0F 84 58 04 00 00 89 ..H.S..:I..X....
0000000000408AD0 7B 54 E9 89 F8 FF FF 0F B6 41 02 3C 72 0F 84 6F {T.......A.<r..o
0000000000408AE0 05 00 00 3C 70 0F 85 ED FE FF FF 48 83 C1 03 48 ...<p......H...H
0000000000408AF0 89 4B 18 48 89 D9 E8 35 47 00 00 45 31 C9 49 89 .K.H...5G..E1.I.
0000000000408B00 C0 BA 49 00 00 00 48 89 D9 E8 22 AC FF FF 48 89 ..I...H..."...H.
0000000000408B10 C6 E9 1E FF FF FF 66 2E 0F 1F 84 00 00 00 00 00 ......f.........
0000000000408B20 80 79 02 70 0F 85 AE FE FF FF 48 8D 41 03 48 89 .y.p......H.A.H.
0000000000408B30 43 18 80 79 03 54 0F 85 1E 01 00 00 48 83 C1 04 C..y.T......H...
0000000000408B40 31 C0 48 89 4B 18 8B 53 28 3B 53 2C 0F 8D 19 01 1.H.K..S(;S,....
0000000000408B50 00 00 48 63 F2 83 C2 01 48 6B F6 18 89 53 28 48 ..Hc....Hk...S(H
0000000000408B60 03 73 20 48 85 F6 0F 84 FF 00 00 00 89 46 08 C7 .s H.........F..
0000000000408B70 06 06 00 00 00 48 8B 53 18 E9 51 FF FF FF 80 79 .....H.S..Q....y
0000000000408B80 03 6E 0F 85 C1 F5 FF FF 48 83 C1 04 48 89 4B 18 .n......H...H.K.
0000000000408B90 48 89 D9 E8 B8 0C 00 00 48 85 C0 0F 84 7E 03 00 H.......H....~..
0000000000408BA0 00 48 8B 53 18 49 89 C0 80 3A 49 0F 85 F4 F5 FF .H.S.I...:I.....
0000000000408BB0 FF 48 89 D9 48 89 44 24 28 E8 A2 10 00 00 4C 8B .H..H.D$(.....L.
0000000000408BC0 44 24 28 49 89 C1 BA 04 00 00 00 48 89 D9 E8 5D D$(I.......H...]
0000000000408BD0 AB FF FF 49 89 C0 E9 CA F5 FF FF 48 8B 4C 24 38 ...I.......H.L$8
0000000000408BE0 48 85 C9 0F 84 F7 F5 FF FF 8B 53 38 3B 53 3C 0F H.........S8;S<.
0000000000408BF0 8D EB F5 FF FF 4C 8B 43 30 4C 63 CA 83 C2 01 4B .....L.C0Lc....K
0000000000408C00 89 0C C8 89 53 38 E9 34 F9 FF FF 48 89 D9 E8 0D ....S8.4...H....
0000000000408C10 F3 FF FF 48 89 C6 E9 19 FE FF FF 0F B6 41 03 3C ...H.........A.<
0000000000408C20 72 0F 84 C4 06 00 00 3C 70 0F 85 1A F5 FF FF 48 r......<p......H
0000000000408C30 83 C1 04 48 89 4B 18 48 89 D9 E8 F1 45 00 00 45 ...H.K.H....E..E
0000000000408C40 31 C9 49 89 C0 BA 49 00 00 00 48 89 D9 E8 DE AA 1.I...I...H.....
0000000000408C50 FF FF 49 89 C0 E9 4B F5 FF FF 48 89 D9 E8 CE B0 ..I...K...H.....
0000000000408C60 FF FF 83 C0 01 0F 85 DB FE FF FF 89 7B 54 31 C0 ............{T1.
0000000000408C70 E9 EB F7 FF FF 48 89 D9 E8 03 B1 FF FF 48 89 C6 .....H.......H..
0000000000408C80 E9 AF FD FF FF 80 79 03 70 0F 85 BA F4 FF FF 48 ......y.p......H
0000000000408C90 8D 41 04 48 89 43 18 80 79 04 54 0F 85 6B 02 00 .A.H.C..y.T..k..
0000000000408CA0 00 48 83 C1 05 31 D2 48 89 4B 18 8B 4B 28 3B 4B .H...1.H.K..K(;K
0000000000408CB0 2C 0F 8D 68 02 00 00 48 63 C1 45 31 C0 83 C1 01 ,..h...Hc.E1....
0000000000408CC0 48 6B C0 18 89 4B 28 48 03 43 20 48 85 C0 0F 84 Hk...K(H.C H....
0000000000408CD0 D1 F4 FF FF C7 00 06 00 00 00 89 50 08 49 89 C0 ...........P.I..
0000000000408CE0 E9 C0 F4 FF FF 8B 46 08 83 F8 01 0F 84 25 FD FF ......F......%..
0000000000408CF0 FF 0F 8E F2 01 00 00 31 ED 83 F8 02 0F 84 44 01 .......1......D.
0000000000408D00 00 00 83 F8 03 0F 85 60 FF FF FF 48 8D 15 D9 60 .......`...H...`
0000000000408D10 08 00 48 89 E9 E8 96 30 01 00 85 C0 0F 84 3B 05 ..H....0......;.
0000000000408D20 00 00 80 7D 00 6E 0F 85 3F FF FF FF 0F B6 45 01 ...}.n..?.....E.
0000000000408D30 3C 61 74 08 3C 77 0F 85 2F FF FF FF BA 5F 00 00 <at.<w../...._..
0000000000408D40 00 48 89 D9 E8 E7 3D 00 00 48 89 D9 48 89 C5 E8 .H....=..H..H...
0000000000408D50 4C F3 FF FF 48 8B 53 18 49 89 C4 0F B6 02 3C 45 L...H.S.I.....<E
0000000000408D60 0F 84 BD 06 00 00 3C 70 0F 84 91 06 00 00 3C 69 ......<p......<i
0000000000408D70 0F 85 F5 FE FF FF 80 7A 01 6C 0F 85 EB FE FF FF .......z.l......
0000000000408D80 48 89 D9 E8 A8 44 00 00 49 89 C1 4D 89 E0 BA 3A H....D..I..M...:
0000000000408D90 00 00 00 48 89 D9 E8 95 A9 FF FF 49 89 E8 49 89 ...H.......I..I.
0000000000408DA0 C1 BA 39 00 00 00 48 89 D9 E8 82 A9 FF FF 49 89 ..9...H.......I.
0000000000408DB0 F0 49 89 C1 BA 38 00 00 00 48 89 D9 E8 6F A9 FF .I...8...H...o..
0000000000408DC0 FF 48 89 C6 E9 6B FC FF FF 31 F6 84 D2 0F 85 5E .H...k...1.....^
0000000000408DD0 05 00 00 48 83 43 18 02 BA 45 00 00 00 48 89 D9 ...H.C...E...H..
0000000000408DE0 E8 4B 3D 00 00 49 89 F0 49 89 C1 BA 30 00 00 00 .K=..I..I...0...
0000000000408DF0 48 89 D9 E8 38 A9 FF FF 48 89 C6 E9 34 FC FF FF H...8...H...4...
0000000000408E00 48 8B 46 08 48 8D 15 D7 5F 08 00 48 8B 28 8B 40 H.F.H..._..H.(.@
0000000000408E10 10 83 E8 02 01 43 50 48 89 E9 E8 91 2F 01 00 85 .....CPH..../...
0000000000408E20 C0 0F 84 59 04 00 00 48 8B 46 08 8B 40 14 83 F8 ...Y...H.F..@...
0000000000408E30 01 0F 84 61 02 00 00 0F 8E AC 00 00 00 83 F8 02 ...a............
0000000000408E40 0F 85 BC FE FF FF 48 8B 46 08 48 8B 00 80 78 01 ......H.F.H...x.
0000000000408E50 63 0F 84 59 04 00 00 48 89 D9 E8 D1 43 00 00 49 c..Y...H....C..I
0000000000408E60 89 C4 48 8D 15 7C 5F 08 00 48 89 E9 E8 3F 2F 01 ..H..|_..H...?/.
0000000000408E70 00 85 C0 0F 84 5D 04 00 00 48 8D 15 4F 62 08 00 .....]...H..Ob..
0000000000408E80 48 89 E9 E8 28 2F 01 00 85 C0 74 17 48 8D 15 3F H...(/....t.H..?
0000000000408E90 62 08 00 48 89 E9 E8 15 2F 01 00 85 C0 0F 85 AB b..H..../.......
0000000000408EA0 04 00 00 48 89 D9 E8 A5 09 00 00 48 89 C5 48 8B ...H.......H..H.
0000000000408EB0 43 18 80 38 49 0F 84 F8 05 00 00 49 89 E9 4D 89 C..8I......I..M.
0000000000408EC0 E0 BA 37 00 00 00 48 89 D9 E8 62 A8 FF FF 49 89 ..7...H...b...I.
0000000000408ED0 F0 49 89 C1 BA 36 00 00 00 48 89 D9 E8 4F A8 FF .I...6...H...O..
0000000000408EE0 FF 48 89 C6 E9 4B FB FF FF 85 C0 0F 85 7A FD FF .H...K.......z..
0000000000408EF0 FF 49 89 F0 45 31 C9 BA 34 00 00 00 48 89 D9 E8 .I..E1..4...H...
0000000000408F00 2C A8 FF FF 48 89 C6 E9 28 FB FF FF 48 89 D9 E8 ,...H...(...H...
0000000000408F10 1C AE FF FF 83 C0 01 89 C2 0F 85 8C FD FF FF 45 ...............E
0000000000408F20 31 C0 E9 7E F2 FF FF 48 89 D9 E8 31 0D 00 00 49 1..~...H...1...I
0000000000408F30 89 F0 49 89 C1 BA 04 00 00 00 48 89 D9 E8 EE A7 ..I.......H.....
0000000000408F40 FF FF 48 89 C6 E9 EA FA FF FF 48 8B 46 08 48 8D ..H.......H.F.H.
0000000000408F50 15 8D 5E 08 00 48 8B 38 8B 40 10 83 E8 02 01 43 ..^..H.8.@.....C
0000000000408F60 50 48 89 F9 E8 47 2E 01 00 85 C0 0F 84 D0 03 00 PH...G..........
0000000000408F70 00 48 8B 46 08 8B 40 14 83 F8 01 0F 84 97 02 00 .H.F..@.........
0000000000408F80 00 0F 8E 6E 02 00 00 83 F8 02 0F 84 C2 01 00 00 ...n............
0000000000408F90 83 F8 03 75 8A 48 8D 15 4F 5E 08 00 48 89 F9 E8 ...u.H..O^..H...
0000000000408FA0 0C 2E 01 00 85 C0 0F 84 A0 04 00 00 80 3F 6E 0F .............?n.
0000000000408FB0 85 6A FF FF FF 0F B6 47 01 3C 61 74 08 3C 77 0F .j.....G.<at.<w.
0000000000408FC0 85 5A FF FF FF BA 5F 00 00 00 48 89 D9 E8 5E 3B .Z...._...H...^;
0000000000408FD0 00 00 48 89 D9 48 89 C7 E8 C3 F0 FF FF 48 8B 53 ..H..H.......H.S
0000000000408FE0 18 49 89 C4 0F B6 02 3C 45 0F 84 CB 03 00 00 3C .I.....<E......<
0000000000408FF0 70 0F 84 9F 03 00 00 3C 69 0F 85 20 FF FF FF 80 p......<i.. ....
0000000000409000 7A 01 6C 0F 85 16 FF FF FF 48 89 D9 E8 1F 42 00 z.l......H....B.
0000000000409010 00 49 89 C1 4D 89 E0 BA 3A 00 00 00 48 89 D9 E8 .I..M...:...H...
0000000000409020 0C A7 FF FF 49 89 F8 49 89 C1 BA 39 00 00 00 48 ....I..I...9...H
0000000000409030 89 D9 E8 F9 A6 FF FF 49 89 F0 49 89 C1 BA 38 00 .......I..I...8.
0000000000409040 00 00 48 89 D9 E8 E6 A6 FF FF 49 89 C0 E9 53 F1 ..H.......I...S.
0000000000409050 FF FF 48 83 C1 03 48 89 4B 18 48 89 D9 E8 3E F0 ..H...H.K.H...>.
0000000000409060 FF FF 48 89 D9 48 89 C6 E8 E3 07 00 00 48 89 C5 ..H..H.......H..
0000000000409070 48 8B 43 18 80 38 49 0F 84 10 02 00 00 49 89 E9 H.C..8I......I..
0000000000409080 49 89 F0 BA 01 00 00 00 48 89 D9 E8 A0 A6 FF FF I.......H.......
0000000000409090 48 89 C6 E9 9C F9 FF FF 0F B6 45 00 3C 6D 74 08 H.........E.<mt.
00000000004090A0 3C 70 0F 85 6E F9 FF FF 3A 45 01 0F 85 65 F9 FF <p..n...:E...e..
00000000004090B0 FF 48 8B 43 18 80 38 5F 0F 84 B1 03 00 00 48 89 .H.C..8_......H.
00000000004090C0 D9 E8 6A 41 00 00 BA 37 00 00 00 49 89 C0 49 89 ..jA...7...I..I.
00000000004090D0 C1 48 89 D9 E8 57 A6 FF FF E9 40 F9 FF FF 31 F6 .H...W....@...1.
00000000004090E0 84 D2 0F 85 94 03 00 00 48 83 43 18 02 BA 45 00 ........H.C...E.
00000000004090F0 00 00 48 89 D9 E8 36 3A 00 00 49 89 F0 49 89 C1 ..H...6:..I..I..
0000000000409100 BA 30 00 00 00 48 89 D9 E8 23 A6 FF FF 49 89 C0 .0...H...#...I..
0000000000409110 E9 90 F0 FF FF 48 89 D9 E8 63 AC FF FF 49 89 C0 .....H...c...I..
0000000000409120 E9 80 F0 FF FF 48 89 D9 E8 F3 ED FF FF 49 89 C0 .....H.......I..
0000000000409130 E9 70 F0 FF FF 8B 46 08 83 F8 01 0F 84 46 F0 FF .p....F......F..
0000000000409140 FF 0F 8E AE 00 00 00 31 FF 83 F8 02 0F 85 3E FE .......1......>.
0000000000409150 FF FF 48 8B 46 08 48 8B 00 80 78 01 63 0F 84 66 ..H.F.H...x.c..f
0000000000409160 02 00 00 48 89 D9 E8 C5 40 00 00 49 89 C4 48 8D ...H....@..I..H.
0000000000409170 15 70 5C 08 00 48 89 F9 E8 33 2C 01 00 85 C0 0F .p\..H...3,.....
0000000000409180 84 D9 01 00 00 48 8D 15 43 5F 08 00 48 89 F9 E8 .....H..C_..H...
0000000000409190 1C 2C 01 00 85 C0 74 17 48 8D 15 33 5F 08 00 48 .,....t.H..3_..H
00000000004091A0 89 F9 E8 09 2C 01 00 85 C0 0F 85 40 02 00 00 48 ....,......@...H
00000000004091B0 89 D9 E8 99 06 00 00 48 89 C7 48 8B 43 18 80 38 .......H..H.C..8
00000000004091C0 49 0F 84 AC 01 00 00 49 89 F9 4D 89 E0 BA 37 00 I......I..M...7.
00000000004091D0 00 00 48 89 D9 E8 56 A5 FF FF 49 89 F0 49 89 C1 ..H...V...I..I..
00000000004091E0 BA 36 00 00 00 48 89 D9 E8 43 A5 FF FF 49 89 C0 .6...H...C...I..
00000000004091F0 E9 B0 EF FF FF 85 C0 0F 85 22 FD FF FF 49 89 F0 ........."...I..
0000000000409200 45 31 C9 BA 34 00 00 00 48 89 D9 E8 20 A5 FF FF E1..4...H... ...
0000000000409210 49 89 C0 E9 8D EF FF FF 0F B6 07 3C 6D 74 08 3C I..........<mt.<
0000000000409220 70 0F 85 60 EF FF FF 3A 47 01 0F 85 57 EF FF FF p..`...:G...W...
0000000000409230 48 8B 43 18 80 38 5F 0F 84 69 02 00 00 48 89 D9 H.C..8_..i...H..
0000000000409240 E8 EB 3F 00 00 BA 37 00 00 00 49 89 C0 49 89 C1 ..?...7...I..I..
0000000000409250 48 89 D9 E8 D8 A4 FF FF E9 32 EF FF FF 48 89 D9 H........2...H..
0000000000409260 E8 CB 3F 00 00 48 89 D9 48 89 C5 E8 C0 3F 00 00 ..?..H..H....?..
0000000000409270 48 89 D9 49 89 C4 E8 B5 3F 00 00 E9 08 FB FF FF H..I....?.......
0000000000409280 48 89 D9 E8 18 EE FF FF E9 91 F7 FF FF 48 89 D9 H............H..
0000000000409290 E8 CB 09 00 00 49 89 E8 49 89 C1 BA 04 00 00 00 .....I..I.......
00000000004092A0 48 89 D9 E8 88 A4 FF FF 49 89 C1 E9 D0 FD FF FF H.......I.......
00000000004092B0 0F B6 00 8D 50 8E 80 FA 01 76 0B 83 E8 63 3C 01 ....P....v...c<.
00000000004092C0 0F 87 91 FB FF FF 48 89 D9 E8 D2 ED FF FF 49 89 ......H.......I.
00000000004092D0 C4 E9 8C FB FF FF BA 45 00 00 00 48 89 D9 E8 4D .......E...H...M
00000000004092E0 38 00 00 48 89 C5 E9 D0 FB FF FF 48 83 C1 04 48 8..H.......H...H
00000000004092F0 89 4B 18 48 89 D9 E8 A5 ED FF FF 48 89 D9 48 89 .K.H.......H..H.
0000000000409300 C6 E8 4A 05 00 00 48 89 C7 48 8B 43 18 80 38 49 ..J...H..H.C..8I
0000000000409310 0F 84 C0 01 00 00 49 89 F9 49 89 F0 BA 01 00 00 ......I..I......
0000000000409320 00 48 89 D9 E8 07 A4 FF FF 49 89 C0 E9 74 EE FF .H.......I...t..
0000000000409330 FF 48 89 D9 E8 67 ED FF FF 48 89 C6 E9 92 FA FF .H...g...H......
0000000000409340 FF 48 89 D9 E8 57 ED FF FF E9 41 EE FF FF 48 89 .H...W....A...H.
0000000000409350 D9 E8 DA 3E 00 00 48 89 C5 E9 5D FB FF FF BA 45 ...>..H...]....E
0000000000409360 00 00 00 48 89 D9 E8 C5 37 00 00 48 89 C7 E9 54 ...H....7..H...T
0000000000409370 FE FF FF 48 89 D9 E8 E5 08 00 00 49 89 F8 49 89 ...H.......I..I.
0000000000409380 C1 BA 04 00 00 00 48 89 D9 E8 A2 A3 FF FF 48 89 ......H.......H.
0000000000409390 C7 E9 31 FE FF FF 80 7A 01 69 0F 85 7F FB FF FF ..1....z.i......
00000000004093A0 48 83 C2 02 48 89 D9 48 89 53 18 BA 45 00 00 00 H...H..H.S..E...
00000000004093B0 E8 7B 37 00 00 E9 57 FC FF FF 48 83 C2 01 31 C0 .{7...W...H...1.
00000000004093C0 48 89 53 18 E9 48 FC FF FF 0F B6 00 8D 50 8E 80 H.S..H.......P..
00000000004093D0 FA 01 76 0B 83 E8 63 3C 01 0F 87 84 FD FF FF 48 ..v...c<.......H
00000000004093E0 89 D9 E8 B9 EC FF FF 49 89 C4 E9 7F FD FF FF 48 .......I.......H
00000000004093F0 89 D9 E8 39 3E 00 00 48 89 C7 E9 C8 FD FF FF 80 ...9>..H........
0000000000409400 7A 01 69 0F 85 62 F8 FF FF 48 83 C2 02 48 89 D9 z.i..b...H...H..
0000000000409410 48 89 53 18 BA 45 00 00 00 E8 12 37 00 00 E9 65 H.S..E.....7...e
0000000000409420 F9 FF FF 48 83 C2 01 31 C0 48 89 53 18 E9 56 F9 ...H...1.H.S..V.
0000000000409430 FF FF 48 83 C0 01 BA 45 00 00 00 48 89 D9 48 89 ..H....E...H..H.
0000000000409440 43 18 E8 E9 36 00 00 E9 43 ED FF FF 48 89 D9 E8 C...6...C...H...
0000000000409450 DC 3D 00 00 48 89 D9 48 89 C7 E8 D1 3D 00 00 48 .=..H..H....=..H
0000000000409460 89 D9 49 89 C4 E8 C6 3D 00 00 E9 A2 FB FF FF 48 ..I....=.......H
0000000000409470 83 C0 01 48 89 43 18 E9 9A F5 FF FF 48 89 D9 E8 ...H.C......H...
0000000000409480 1C EC FF FF 48 89 C6 E9 5C FC FF FF 48 83 C0 01 ....H...\...H...
0000000000409490 BA 45 00 00 00 48 89 D9 48 89 43 18 E8 8F 36 00 .E...H..H.C...6.
00000000004094A0 00 E9 78 F5 FF FF 48 83 C0 01 48 89 43 18 E9 D4 ..x...H...H.C...
00000000004094B0 EC FF FF 48 89 D9 E8 A5 07 00 00 49 89 E8 49 89 ...H.......I..I.
00000000004094C0 C1 BA 04 00 00 00 48 89 D9 E8 62 A2 FF FF 48 89 ......H...b...H.
00000000004094D0 C5 E9 E5 F9 FF FF 48 89 D9 E8 82 07 00 00 49 89 ......H.......I.
00000000004094E0 F8 49 89 C1 BA 04 00 00 00 48 89 D9 E8 3F A2 FF .I.......H...?..
00000000004094F0 FF 49 89 C1 E9 20 FE FF FF 0F 1F 80 00 00 00 00 .I... ..........

;; fn0000000000409500: 0000000000409500
;;   Called from:
;;     00000000004095EB (in fn00000000004095D0)
;;     00000000004099AF (in fn0000000000409850)
fn0000000000409500 proc
	push	rsi
	push	rbx
	sub	rsp,38h
	mov	rdx,[rcx+18h]
	mov	qword ptr [rsp+28h],+0h
	movzx	eax,byte ptr [rdx]
	cmp	al,45h
	setz	r9b
	test	al,al
	setz	r8b
	or	r9b,r8b
	jnz	40958Ah

l0000000000409527:
	cmp	al,2Eh
	jz	40958Ah

l000000000040952B:
	mov	rbx,rcx
	lea	rsi,[rsp+28h]
	jmp	40956Ch

l0000000000409535:
	xor	r9d,r9d
	mov	edx,2Eh
	mov	rcx,rbx
	call	403730h
	test	rax,rax
	mov	[rsi],rax
	jz	40958Ah

l000000000040954D:
	mov	rdx,[rbx+18h]
	lea	rsi,[rax+10h]
	movzx	eax,byte ptr [rdx]
	cmp	al,45h
	setz	r8b
	test	al,al
	setz	cl
	or	r8b,cl
	jnz	409593h

l0000000000409568:
	cmp	al,2Eh
	jz	409593h

l000000000040956C:
	cmp	al,4Fh
	jz	409574h

l0000000000409570:
	cmp	al,52h
	jnz	40957Ah

l0000000000409574:
	cmp	byte ptr [rdx+1h],45h
	jz	409593h

l000000000040957A:
	mov	rcx,rbx
	call	4080A0h
	test	rax,rax
	mov	r8,rax
	jnz	409535h

l000000000040958A:
	xor	eax,eax

l000000000040958C:
	add	rsp,38h
	pop	rbx
	pop	rsi
	ret

l0000000000409593:
	mov	rax,[rsp+28h]
	test	rax,rax
	jz	40958Ah

l000000000040959D:
	cmp	qword ptr [rax+10h],0h
	jnz	40958Ch

l00000000004095A4:
	mov	rdx,[rax+8h]
	cmp	dword ptr [rdx],27h
	jnz	40958Ch

l00000000004095AD:
	mov	rdx,[rdx+8h]
	cmp	dword ptr [rdx+1Ch],9h
	jnz	40958Ch

l00000000004095B7:
	mov	edx,[rdx+8h]
	sub	[rbx+50h],edx
	mov	qword ptr [rax+8h],+0h
	jmp	40958Ch
00000000004095C7                      66 0F 1F 84 00 00 00 00 00        f........

;; fn00000000004095D0: 00000000004095D0
;;   Called from:
;;     000000000040967E (in fn0000000000409640)
;;     000000000040C22F (in fn000000000040C0C0)
fn00000000004095D0 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	mov	rax,[rcx+18h]
	mov	rbx,rcx
	cmp	byte ptr [rax],4Ah
	jz	409610h

l00000000004095E2:
	xor	esi,esi
	test	edx,edx
	jnz	409618h

l00000000004095E8:
	mov	rcx,rbx
	call	409500h
	test	rax,rax
	mov	r9,rax
	jz	409630h

l00000000004095F8:
	mov	r8,rsi
	mov	edx,29h
	mov	rcx,rbx
	add	rsp,28h
	pop	rbx
	pop	rsi
	jmp	403730h
000000000040960E                                           66 90               f.

l0000000000409610:
	add	rax,1h
	mov	[rcx+18h],rax

l0000000000409618:
	mov	rcx,rbx
	call	4080A0h
	test	rax,rax
	mov	rsi,rax
	jnz	4095E8h

l0000000000409628:
	nop	dword ptr [rax+rax+0h]

l0000000000409630:
	xor	eax,eax
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret
0000000000409639                            0F 1F 80 00 00 00 00          .......

;; fn0000000000409640: 0000000000409640
;;   Called from:
;;     0000000000408260 (in fn00000000004080A0)
fn0000000000409640 proc
	push	rbx
	sub	rsp,20h
	mov	rax,[rcx+18h]
	cmp	byte ptr [rax],46h
	jz	409660h

l000000000040964E:
	xor	eax,eax
	add	rsp,20h
	pop	rbx
	ret
0000000000409656                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l0000000000409660:
	lea	rdx,[rax+1h]
	mov	[rcx+18h],rdx
	cmp	byte ptr [rax+1h],59h
	jnz	409676h

l000000000040966E:
	add	rax,2h
	mov	[rcx+18h],rax

l0000000000409676:
	mov	rbx,rcx
	mov	edx,1h
	call	4095D0h
	mov	rcx,rbx
	mov	rdx,rax
	call	403930h
	mov	rdx,[rbx+18h]
	cmp	byte ptr [rdx],45h
	jnz	40964Eh

l0000000000409697:
	add	rdx,1h
	mov	[rbx+18h],rdx
	add	rsp,20h
	pop	rbx
	ret
00000000004096A5                66 66 2E 0F 1F 84 00 00 00 00 00      ff.........

;; fn00000000004096B0: 00000000004096B0
;;   Called from:
;;     0000000000409971 (in fn0000000000409850)
;;     0000000000409D7C (in fn0000000000409C60)
;;     000000000040A392 (in fn0000000000409C60)
;;     000000000040A450 (in fn0000000000409C60)
;;     000000000040A50E (in fn0000000000409C60)
;;     000000000040A5F1 (in fn0000000000409C60)
;;     000000000040CBC6 (in fn000000000040CB30)
;;     000000000040D2C0 (in fn000000000040D230)
;;     000000000040D969 (in fn000000000040D820)
;;     000000000040D9F4 (in fn000000000040D820)
;;     000000000040DCFF (in fn000000000040D820)
;;     000000000040DFF0 (in fn000000000040D820)
;;     000000000040E09C (in fn000000000040D820)
;;     000000000040E148 (in fn000000000040D820)
fn00000000004096B0 proc
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,20h
	mov	rax,[rcx+18h]
	cmp	byte ptr [rax],0h
	jz	409750h

l00000000004096C4:
	lea	rdx,[rax+1h]
	mov	[rcx+18h],rdx
	cmp	byte ptr [rax+1h],0h
	movzx	ebx,byte ptr [rax]
	jz	4097C0h

l00000000004096D9:
	lea	rdx,[rax+2h]
	cmp	bl,76h
	mov	rdi,rcx
	mov	[rcx+18h],rdx
	movzx	esi,byte ptr [rax+1h]
	jnz	4097C4h

l00000000004096F1:
	lea	eax,[rsi-30h]
	cmp	al,9h
	ja	409754h

l00000000004096F8:
	call	403E30h
	mov	ecx,[rdi+28h]
	cmp	ecx,[rdi+2Ch]
	jge	4097B3h

l0000000000409709:
	movsxd	rdx,ecx
	add	ecx,1h
	test	rax,rax
	lea	r8,[rdx+rdx*2]
	mov	rdx,[rdi+20h]
	mov	[rdi+28h],ecx
	lea	rdx,[rdx+r8*8]
	jz	4097B3h

l0000000000409727:
	test	rdx,rdx
	jz	4097B3h

l0000000000409730:
	movsx	ecx,sil
	mov	[rdx+10h],rax
	mov	dword ptr [rdx],32h
	sub	ecx,30h
	mov	rax,rdx
	mov	[rdx+8h],ecx
	jmp	4097B5h
0000000000409749                            0F 1F 80 00 00 00 00          .......

l0000000000409750:
	xor	esi,esi
	xor	ebx,ebx

l0000000000409754:
	mov	r9d,3Dh
	xor	edx,edx
	lea	rdi,[000000000048F980]                                 ; [rip+0008621D]
	jmp	409772h

l0000000000409765:
	cmp	r8b,bl
	jle	4097ABh

l000000000040976A:
	mov	r9d,eax
	cmp	edx,r9d
	jz	4097B3h

l0000000000409772:
	mov	eax,r9d
	sub	eax,edx
	mov	r8d,eax
	shr	r8d,1Fh
	add	eax,r8d
	sar	eax,1h
	add	eax,edx
	movsxd	r8,eax
	lea	r8,[r8+r8*2]
	lea	r11,[rdi+r8*8]
	mov	r10,[r11]
	movzx	r8d,byte ptr [r10]
	cmp	bl,r8b
	jnz	409765h

l000000000040979C:
	movzx	r8d,byte ptr [r10+1h]
	cmp	sil,r8b
	jz	409810h

l00000000004097A6:
	cmp	r8b,sil
	jg	40976Ah

l00000000004097AB:
	lea	edx,[rax+1h]
	cmp	edx,r9d
	jnz	409772h

l00000000004097B3:
	xor	eax,eax

l00000000004097B5:
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	ret
00000000004097BD                                        0F 1F 00              ...

l00000000004097C0:
	xor	esi,esi
	jmp	409754h

l00000000004097C4:
	cmp	sil,76h
	jnz	409754h

l00000000004097CE:
	cmp	bl,63h
	jnz	409754h

l00000000004097D7:
	mov	edx,[rcx+54h]
	xor	eax,eax
	mov	ebx,[rcx+58h]
	test	edx,edx
	setz	al
	mov	[rcx+58h],eax
	call	4080A0h
	xor	r9d,r9d
	mov	r8,rax
	mov	edx,33h
	mov	rcx,rdi
	mov	[rdi+58h],ebx
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	jmp	403730h
0000000000409809                            0F 1F 80 00 00 00 00          .......

l0000000000409810:
	mov	edx,[rcx+28h]
	cmp	edx,[rcx+2Ch]
	jge	4097B3h

l0000000000409818:
	movsxd	rax,edx
	add	edx,1h
	lea	r8,[rax+rax*2]
	mov	rax,[rcx+20h]
	mov	[rcx+28h],edx
	lea	rax,[rax+r8*8]
	test	rax,rax
	jz	4097B3h

l0000000000409836:
	mov	dword ptr [rax],31h
	mov	[rax+8h],r11
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	ret
0000000000409848                         0F 1F 84 00 00 00 00 00         ........

;; fn0000000000409850: 0000000000409850
;;   Called from:
;;     0000000000409E06 (in fn0000000000409C60)
;;     000000000040A19D (in fn0000000000409C60)
;;     000000000040A259 (in fn0000000000409C60)
;;     000000000040A664 (in fn0000000000409C60)
;;     000000000040A6CA (in fn0000000000409C60)
;;     000000000040A727 (in fn0000000000409C60)
;;     000000000040A779 (in fn0000000000409C60)
;;     000000000040ADCF (in fn0000000000409C60)
;;     000000000040B117 (in fn0000000000409C60)
;;     000000000040B152 (in fn0000000000409C60)
;;     000000000040B1F4 (in fn0000000000409C60)
;;     000000000040B296 (in fn0000000000409C60)
;;     000000000040B42D (in fn0000000000409C60)
;;     000000000040B598 (in fn0000000000409C60)
;;     000000000040B851 (in fn0000000000409C60)
;;     000000000040BC20 (in fn000000000040BBC0)
;;     000000000040BD13 (in fn000000000040BBC0)
;;     000000000040BDBC (in fn000000000040BBC0)
;;     000000000040BE33 (in fn000000000040BBC0)
;;     000000000040BEE0 (in fn000000000040BBC0)
;;     000000000040CC35 (in fn000000000040CB30)
;;     000000000040D003 (in fn000000000040CB30)
;;     000000000040D04A (in fn000000000040CB30)
;;     000000000040D271 (in fn000000000040D230)
;;     000000000040D446 (in fn000000000040D230)
;;     000000000040D623 (in fn000000000040D230)
;;     000000000040DA95 (in fn000000000040D820)
;;     000000000040DD9C (in fn000000000040D820)
;;     000000000040DE3C (in fn000000000040D820)
;;     000000000040DF39 (in fn000000000040D820)
;;     000000000040E2B5 (in fn000000000040D820)
;;     000000000040E3D1 (in fn000000000040D820)
;;     000000000040E427 (in fn000000000040D820)
;;     000000000040E484 (in fn000000000040D820)
;;     000000000040E80C (in fn000000000040D820)
;;     000000000040EB64 (in fn000000000040D820)
;;     000000000040EBBD (in fn000000000040D820)
;;     000000000040EE84 (in fn000000000040D820)
;;     000000000040F073 (in fn000000000040D820)
;;     000000000040F2A4 (in fn000000000040D820)
;;     000000000040F3A8 (in fn000000000040D820)
;;     000000000040F467 (in fn000000000040D820)
;;     000000000040F4ED (in fn000000000040D820)
;;     000000000040F633 (in fn000000000040D820)
fn0000000000409850 proc
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,28h
	mov	r8,[rcx+18h]
	mov	rbx,rcx
	movzx	eax,byte ptr [r8]
	lea	edx,[rax-30h]
	cmp	dl,9h
	jbe	409920h

l000000000040986F:
	lea	edx,[rax-61h]
	cmp	dl,19h
	jbe	409971h

l000000000040987B:
	lea	edx,[rax-43h]
	cmp	dl,1h
	jbe	409A50h

l0000000000409887:
	cmp	al,4Ch
	jz	409AC0h

l000000000040988F:
	cmp	al,55h
	jnz	409AB1h

l0000000000409897:
	movzx	eax,byte ptr [r8+1h]
	cmp	al,6Ch
	jz	409990h

l00000000004098A4:
	cmp	al,74h
	jnz	409AB1h

l00000000004098AC:
	lea	rdx,[r8+1h]
	xor	ebp,ebp
	mov	[rcx+18h],rdx
	movzx	ecx,byte ptr [r8+1h]
	cmp	cl,74h
	jnz	40992Fh

l00000000004098C0:
	add	r8,2h
	mov	rcx,rbx
	mov	[rbx+18h],r8
	call	403D30h
	test	eax,eax
	js	409987h

l00000000004098D8:
	mov	edx,[rbx+28h]
	cmp	edx,[rbx+2Ch]
	jge	409910h

l00000000004098E0:
	movsxd	rcx,edx
	add	edx,1h
	lea	r8,[rcx+rcx*2]
	mov	rcx,[rbx+20h]
	mov	[rbx+28h],edx
	lea	rbp,[rcx+r8*8]
	test	rbp,rbp
	jz	409910h

l00000000004098FA:
	mov	[rbp+8h],eax
	mov	eax,[rbx+38h]
	cmp	eax,[rbx+3Ch]
	mov	dword ptr [rbp+0h],46h
	jl	409A2Ch

l0000000000409910:
	mov	rdx,[rbx+18h]
	xor	ebp,ebp
	movzx	ecx,byte ptr [rdx]
	jmp	40992Fh
000000000040991B                                  0F 1F 44 00 00            ..D..

l0000000000409920:
	call	403E30h
	mov	rdx,[rbx+18h]
	mov	rbp,rax
	movzx	ecx,byte ptr [rdx]

l000000000040992F:
	cmp	cl,42h
	mov	rax,rbp
	jz	409940h

l0000000000409937:
	add	rsp,28h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret

l0000000000409940:
	add	rdx,1h
	mov	rcx,rbx
	mov	[rbx+18h],rdx
	call	403E30h
	mov	r8,rbp
	mov	edx,4Ah
	mov	r9,rax
	mov	rcx,rbx
	call	403730h
	mov	rdx,[rbx+18h]
	mov	rbp,rax
	cmp	byte ptr [rdx],42h
	jz	409940h

l000000000040996F:
	jmp	409937h

l0000000000409971:
	call	4096B0h
	test	rax,rax
	mov	rbp,rax
	jz	409987h

l000000000040997E:
	cmp	dword ptr [rax],31h
	jz	409AF0h

l0000000000409987:
	mov	rdx,[rbx+18h]
	movzx	ecx,byte ptr [rdx]
	jmp	40992Fh

l0000000000409990:
	lea	rdx,[r8+1h]
	xor	ebp,ebp
	mov	[rcx+18h],rdx
	movzx	ecx,byte ptr [r8+1h]
	cmp	cl,6Ch
	jnz	40992Fh

l00000000004099A4:
	add	r8,2h
	mov	rcx,rbx
	mov	[rbx+18h],r8
	call	409500h
	mov	rdx,[rbx+18h]
	test	rax,rax
	mov	rsi,rax
	movzx	ecx,byte ptr [rdx]
	jz	40992Fh

l00000000004099C7:
	cmp	cl,45h
	jnz	40992Fh

l00000000004099D0:
	add	rdx,1h
	mov	rcx,rbx
	mov	[rbx+18h],rdx
	call	403D30h
	test	eax,eax
	js	409910h

l00000000004099E8:
	mov	edx,[rbx+28h]
	cmp	edx,[rbx+2Ch]
	jge	409910h

l00000000004099F4:
	movsxd	rcx,edx
	add	edx,1h
	lea	r8,[rcx+rcx*2]
	mov	rcx,[rbx+20h]
	mov	[rbx+28h],edx
	lea	rbp,[rcx+r8*8]
	test	rbp,rbp
	jz	409910h

l0000000000409A12:
	mov	[rbp+8h],rsi
	mov	[rbp+10h],eax
	mov	eax,[rbx+38h]
	cmp	eax,[rbx+3Ch]
	mov	dword ptr [rbp+0h],44h
	jge	409910h

l0000000000409A2C:
	mov	rdx,[rbx+30h]
	movsxd	rcx,eax
	add	eax,1h
	mov	[rdx+rcx*8],rbp
	mov	rdx,[rbx+18h]
	mov	[rbx+38h],eax
	movzx	ecx,byte ptr [rdx]
	jmp	40992Fh
0000000000409A49                            0F 1F 80 00 00 00 00          .......

l0000000000409A50:
	mov	r9,[rcx+48h]
	test	r9,r9
	jz	409AA5h

l0000000000409A59:
	mov	edx,[r9]
	test	edx,edx
	jnz	409AA0h

l0000000000409A60:
	mov	eax,[r9+10h]
	add	[rbx+50h],eax
	movzx	ecx,byte ptr [r8]
	cmp	cl,43h
	jz	409BC0h

l0000000000409A74:
	cmp	cl,44h
	jnz	409BB4h

l0000000000409A7D:
	movzx	eax,byte ptr [r8+1h]
	sub	eax,30h
	cmp	al,5h
	ja	409AB1h

l0000000000409A89:
	lea	rdx,[000000000048F2D0]                                 ; [rip+00085840]
	movzx	eax,al
	movsxd	rax,dword ptr [rdx+rax*4]
	add	rdx,rax
	jmp	rdx
0000000000409A9C                                     0F 1F 40 00             ..@.

l0000000000409AA0:
	cmp	edx,18h
	jz	409A60h

l0000000000409AA5:
	cmp	al,43h
	jz	409BC0h

l0000000000409AAD:
	cmp	al,44h
	jz	409A7Dh

l0000000000409AB1:
	xor	eax,eax
	add	rsp,28h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
0000000000409ABC                                     0F 1F 40 00             ..@.

l0000000000409AC0:
	add	r8,1h
	mov	[rcx+18h],r8
	call	403E30h
	test	rax,rax
	mov	rbp,rax
	jz	409AB1h

l0000000000409AD5:
	mov	rcx,rbx
	call	403DF0h
	test	eax,eax
	jnz	409987h

l0000000000409AE5:
	jmp	409AB1h
0000000000409AE7                      66 0F 1F 84 00 00 00 00 00        f........

l0000000000409AF0:
	mov	rdx,[rax+8h]
	lea	rdi,[000000000048F2CC]                                 ; [rip+000857D1]
	mov	ecx,3h
	mov	eax,[rdx+10h]
	add	eax,[rbx+50h]
	mov	rsi,[rdx]
	add	eax,7h
	mov	[rbx+50h],eax

l0000000000409B0F:
	rep cmpsb

l0000000000409B11:
	jnz	409987h

l0000000000409B17:
	mov	rcx,rbx
	call	403E30h
	mov	r8,rbp
	mov	r9,rax
	mov	edx,35h
	mov	rcx,rbx
	call	403730h
	mov	rbp,rax
	jmp	409987h
0000000000409B3A                               41 BA 01 00 00 00           A.....
0000000000409B40 8B 43 28 3B 43 2C 49 8D 50 02 48 89 53 18 0F 8D .C(;C,I.P.H.S...
0000000000409B50 FD 00 00 00 48 63 C8 83 C0 01 4C 8D 1C 49 48 8B ....Hc....L..IH.
0000000000409B60 4B 20 89 43 28 4A 8D 2C D9 48 85 ED 0F 84 DF 00 K .C(J.,.H......
0000000000409B70 00 00 4D 85 C9 0F 84 D6 00 00 00 C7 45 00 08 00 ..M.........E...
0000000000409B80 00 00 44 89 55 08 4C 89 4D 10 41 0F B6 48 02 E9 ..D.U.L.M.A..H..
0000000000409B90 9B FD FF FF 41 BA 02 00 00 00 EB A4 41 BA 04 00 ....A.......A...
0000000000409BA0 00 00 EB 9C 41 BA 05 00 00 00 EB 94 41 BA 03 00 ....A.......A...
0000000000409BB0 00 00 EB 8C                                     ....           

l0000000000409BB4:
	mov	rdx,r8
	xor	ebp,ebp
	jmp	40992Fh
0000000000409BBE                                           66 90               f.

l0000000000409BC0:
	movzx	eax,byte ptr [r8+1h]
	sub	eax,31h
	cmp	al,4h
	ja	409AB1h

l0000000000409BD0:
	lea	rdx,[000000000048F2E8]                                 ; [rip+00085711]
	movzx	eax,al
	movsxd	rax,dword ptr [rdx+rax*4]
	add	rdx,rax
	jmp	rdx
0000000000409BE3          41 BA 01 00 00 00 8B 43 28 3B 43 2C 49    A......C(;C,I
0000000000409BF0 8D 50 02 48 89 53 18 7D 58 48 63 C8 83 C0 01 4C .P.H.S.}XHc....L
0000000000409C00 8D 1C 49 48 8B 4B 20 89 43 28 4A 8D 2C D9 48 85 ..IH.K .C(J.,.H.
0000000000409C10 ED 74 3E 4D 85 C9 74 39 C7 45 00 07 00 00 00 44 .t>M..t9.E.....D
0000000000409C20 89 55 08 4C 89 4D 10 41 0F B6 48 02 E9 FE FC FF .U.L.M.A..H.....
0000000000409C30 FF 41 BA 05 00 00 00 EB B0 41 BA 04 00 00 00 EB .A.......A......
0000000000409C40 A8 41 BA 03 00 00 00 EB A0 41 BA 02 00 00 00 EB .A.......A......
0000000000409C50 98 41 0F B6 48 02 31 ED E9 D2 FC FF FF 0F 1F 00 .A..H.1.........

;; fn0000000000409C60: 0000000000409C60
;;   Called from:
;;     0000000000409CC3 (in fn0000000000409C60)
;;     000000000040A0E8 (in fn0000000000409C60)
;;     000000000040A2E9 (in fn0000000000409C60)
;;     000000000040A685 (in fn0000000000409C60)
;;     000000000040A6F0 (in fn0000000000409C60)
;;     000000000040A74D (in fn0000000000409C60)
;;     000000000040A79F (in fn0000000000409C60)
;;     000000000040B5AC (in fn0000000000409C60)
;;     000000000040B770 (in fn0000000000409C60)
;;     000000000040B8AE (in fn0000000000409C60)
;;     000000000040BA2A (in fn0000000000409C60)
;;     000000000040BAFE (in fn0000000000409C60)
;;     000000000040BB2E (in fn0000000000409C60)
;;     000000000040BB6B (in fn0000000000409C60)
;;     000000000040BB8E (in fn0000000000409C60)
;;     000000000040BD51 (in fn000000000040BBC0)
;;     000000000040BD94 (in fn000000000040BBC0)
;;     000000000040BEFC (in fn000000000040BBC0)
;;     000000000040CF08 (in fn000000000040CB30)
;;     000000000040D017 (in fn000000000040CB30)
;;     000000000040D175 (in fn000000000040CB30)
;;     000000000040D5F3 (in fn000000000040D230)
;;     000000000040D76E (in fn000000000040D230)
;;     000000000040D7B9 (in fn000000000040D230)
;;     000000000040DDE3 (in fn000000000040D820)
;;     000000000040DF5F (in fn000000000040D820)
;;     000000000040E1D9 (in fn000000000040D820)
;;     000000000040E2D6 (in fn000000000040D820)
;;     000000000040E3F2 (in fn000000000040D820)
;;     000000000040E44D (in fn000000000040D820)
;;     000000000040E4A5 (in fn000000000040D820)
;;     000000000040E4C8 (in fn000000000040D820)
;;     000000000040F3EE (in fn000000000040D820)
;;     000000000040F70C (in fn000000000040D820)
;;     000000000040F72F (in fn000000000040D820)
;;     000000000040F7B8 (in fn000000000040D820)
;;     000000000040F87B (in fn000000000040D820)
;;     000000000040F94A (in fn000000000040D820)
;;     000000000040F96D (in fn000000000040D820)
;;     000000000040FA62 (in fn000000000040D820)
;;     000000000040FA85 (in fn000000000040D820)
;;     000000000040FB49 (in fn000000000040D820)
fn0000000000409C60 proc
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,68h
	mov	r8,[rcx+18h]
	mov	r14,[rcx+48h]
	movzx	eax,byte ptr [r8]
	sub	eax,49h
	cmp	al,1h
	ja	409E2Dh

l0000000000409C87:
	lea	rdx,[r8+1h]
	mov	[rcx+18h],rdx
	movzx	eax,byte ptr [r8+1h]
	cmp	al,45h
	jz	40A1E6h

l0000000000409C9C:
	mov	rbx,rcx
	mov	qword ptr [rsp+58h],+0h
	lea	rbp,[rsp+58h]
	mov	r15d,3h
	jmp	409D04h

l0000000000409CB5:
	sub	eax,49h
	cmp	al,1h
	ja	409DE1h

l0000000000409CC0:
	mov	rcx,rbx
	call	409C60h
	mov	r8,rax

l0000000000409CCB:
	test	r8,r8
	jz	409E2Dh

l0000000000409CD4:
	xor	r9d,r9d
	mov	edx,2Fh
	mov	rcx,rbx
	call	403730h
	test	rax,rax
	mov	[rbp+0h],rax
	jz	409E2Dh

l0000000000409CF1:
	mov	rdx,[rbx+18h]
	lea	rbp,[rax+10h]
	movzx	eax,byte ptr [rdx]
	cmp	al,45h
	jz	409F64h

l0000000000409D04:
	cmp	al,4Ch
	jz	409DD1h

l0000000000409D0C:
	jle	409CB5h

l0000000000409D0E:
	cmp	al,58h
	jnz	409DE1h

l0000000000409D16:
	lea	rcx,[rdx+1h]
	mov	r12d,[rbx+54h]
	mov	dword ptr [rbx+54h],1h
	mov	[rbx+18h],rcx
	movzx	eax,byte ptr [rdx+1h]
	cmp	al,4Ch
	jz	409F80h

l0000000000409D35:
	cmp	al,54h
	jz	409F94h

l0000000000409D3D:
	cmp	al,73h
	jz	409EC1h

l0000000000409D45:
	cmp	al,66h
	jz	409F04h

l0000000000409D4D:
	lea	r8d,[rax-30h]
	cmp	r8b,9h
	jbe	409E03h

l0000000000409D5B:
	cmp	al,6Fh
	jz	409DF1h

l0000000000409D63:
	cmp	al,74h
	setz	r8b
	jnz	40B9FDh

l0000000000409D6F:
	cmp	byte ptr [rdx+2h],6Ch
	jz	409FB0h

l0000000000409D79:
	mov	rcx,rbx
	call	4096B0h
	test	rax,rax
	mov	r13,rax
	jz	409EB5h

l0000000000409D8D:
	mov	eax,[rax]
	cmp	eax,31h
	jz	409E50h

l0000000000409D98:
	cmp	eax,32h
	jz	409FF0h

l0000000000409DA1:
	cmp	eax,33h
	jnz	409EB5h

l0000000000409DAA:
	mov	rax,[rbx+18h]
	cmp	byte ptr [rax],5Fh
	jnz	40A220h

l0000000000409DB7:
	add	rax,1h
	mov	edx,45h
	mov	rcx,rbx
	mov	[rbx+18h],rax
	call	40CB30h
	jmp	40A228h

l0000000000409DD1:
	mov	rcx,rbx
	call	407F20h
	mov	r8,rax
	jmp	409CCBh

l0000000000409DE1:
	mov	rcx,rbx
	call	4080A0h
	mov	r8,rax
	jmp	409CCBh

l0000000000409DF1:
	cmp	byte ptr [rdx+2h],6Eh
	jnz	409D79h

l0000000000409DFB:
	add	rdx,3h
	mov	[rbx+18h],rdx

l0000000000409E03:
	mov	rcx,rbx
	call	409850h
	test	rax,rax
	mov	rdx,[rbx+18h]
	jz	409EB9h

l0000000000409E18:
	cmp	byte ptr [rdx],49h
	mov	r8,rax
	jz	40A0E0h

l0000000000409E24:
	mov	[rbx+54h],r12d
	cmp	byte ptr [rdx],45h
	jz	409E40h

l0000000000409E2D:
	xor	eax,eax

l0000000000409E2F:
	add	rsp,68h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret

l0000000000409E40:
	add	rdx,1h
	mov	[rbx+18h],rdx
	jmp	409CCBh
0000000000409E4D                                        0F 1F 00              ...

l0000000000409E50:
	mov	r8,[r13+8h]
	lea	rdi,[000000000048EDE2]                                 ; [rip+00084F87]
	mov	rcx,r15
	mov	eax,[r8+10h]
	mov	rdx,[r8]
	sub	eax,2h
	add	[rbx+50h],eax
	mov	rsi,rdx

l0000000000409E6E:
	rep cmpsb

l0000000000409E70:
	jz	40A309h

l0000000000409E76:
	mov	eax,[r8+14h]
	cmp	eax,1h
	jz	40A2A1h

l0000000000409E83:
	jle	40A110h

l0000000000409E89:
	cmp	eax,2h
	jz	40A137h

l0000000000409E92:
	cmp	eax,3h
	jnz	409EB5h

l0000000000409E97:
	lea	rdi,[000000000048EDEB]                                 ; [rip+00084F4D]
	mov	rsi,rdx
	mov	rcx,r15

l0000000000409EA4:
	rep cmpsb

l0000000000409EA6:
	jz	40A33Fh

l0000000000409EAC:
	cmp	byte ptr [rdx],6Eh
	jz	40A00Ah

l0000000000409EB5:
	mov	rdx,[rbx+18h]

l0000000000409EB9:
	xor	r8d,r8d
	jmp	409E24h

l0000000000409EC1:
	movzx	eax,byte ptr [rdx+2h]
	cmp	al,72h
	jz	40A243h

l0000000000409ECD:
	cmp	al,70h
	jnz	409D79h

l0000000000409ED5:
	add	rdx,3h
	mov	rcx,rbx
	mov	[rbx+18h],rdx
	call	40D230h
	mov	edx,49h
	mov	r8,rax
	xor	r9d,r9d
	mov	rcx,rbx
	call	403730h
	mov	rdx,[rbx+18h]
	mov	r8,rax
	jmp	409E24h

l0000000000409F04:
	cmp	byte ptr [rdx+2h],70h
	jnz	409D79h

l0000000000409F0E:
	lea	rax,[rdx+3h]
	mov	[rbx+18h],rax
	cmp	byte ptr [rdx+3h],54h
	jnz	40A289h

l0000000000409F20:
	add	rdx,4h
	mov	[rbx+18h],rdx
	xor	edx,edx

l0000000000409F2A:
	mov	eax,[rbx+28h]
	cmp	eax,[rbx+2Ch]
	jge	409EB5h

l0000000000409F32:
	movsxd	rcx,eax
	add	eax,1h
	lea	r8,[rcx+rcx*2]
	mov	rcx,[rbx+20h]
	mov	[rbx+28h],eax
	lea	r8,[rcx+r8*8]
	test	r8,r8
	jz	40A0D0h

l0000000000409F50:
	mov	[r8+8h],edx
	mov	dword ptr [r8],6h
	mov	rdx,[rbx+18h]
	jmp	409E24h

l0000000000409F64:
	add	rdx,1h
	mov	[rbx+48h],r14
	mov	rax,[rsp+58h]
	mov	[rbx+18h],rdx
	jmp	409E2Fh
0000000000409F7A                               66 0F 1F 44 00 00           f..D..

l0000000000409F80:
	mov	rcx,rbx
	call	407F20h
	mov	rdx,[rbx+18h]
	mov	r8,rax
	jmp	409E24h

l0000000000409F94:
	mov	rcx,rbx
	call	403D80h
	mov	rdx,[rbx+18h]
	mov	r8,rax
	jmp	409E24h
0000000000409FA8                         0F 1F 84 00 00 00 00 00         ........

l0000000000409FB0:
	xor	esi,esi
	test	r8b,r8b
	jnz	40A316h

l0000000000409FBB:
	add	rcx,2h
	mov	edx,45h
	mov	[rbx+18h],rcx
	mov	rcx,rbx
	call	40CB30h
	mov	r8,rsi
	mov	edx,30h
	mov	r9,rax
	mov	rcx,rbx
	call	403730h
	mov	rdx,[rbx+18h]
	mov	r8,rax
	jmp	409E24h
0000000000409FEF                                              90                .

l0000000000409FF0:
	mov	eax,[r13+8h]
	cmp	eax,1h
	jz	40A220h

l0000000000409FFD:
	jle	40A110h

l000000000040A003:
	xor	edx,edx
	jmp	409E89h

l000000000040A00A:
	movzx	eax,byte ptr [rdx+1h]
	cmp	al,61h
	jz	40A01Ah

l000000000040A012:
	cmp	al,77h
	jnz	409EB5h

l000000000040A01A:
	mov	edx,5Fh
	mov	rcx,rbx
	call	40CB30h
	mov	rcx,rbx
	mov	[rsp+30h],rax
	call	4080A0h
	mov	rdx,[rbx+18h]
	mov	[rsp+28h],rax
	movzx	eax,byte ptr [rdx]
	cmp	al,45h
	jz	40A6A5h

l000000000040A048:
	xor	r8d,r8d
	cmp	al,70h
	jz	40A7B6h

l000000000040A053:
	cmp	al,69h
	jnz	409E24h

l000000000040A05B:
	cmp	byte ptr [rdx+1h],6Ch
	jnz	409E24h

l000000000040A065:
	add	rdx,2h
	mov	rcx,rbx
	mov	[rbx+18h],rdx
	mov	edx,45h
	call	40CB30h
	xor	r8d,r8d
	mov	r9,rax
	mov	edx,30h
	mov	rcx,rbx
	call	403730h
	mov	r8,rax

l000000000040A090:
	mov	r9,r8
	mov	r8,[rsp+28h]
	mov	edx,3Ah
	mov	rcx,rbx
	call	403730h
	mov	r8,[rsp+30h]
	mov	r9,rax
	mov	edx,39h
	mov	rcx,rbx
	call	403730h
	mov	r8,r13
	mov	r9,rax
	mov	edx,38h
	mov	rcx,rbx
	call	403730h
	mov	r8,rax

l000000000040A0D0:
	mov	rdx,[rbx+18h]
	jmp	409E24h
000000000040A0D9                            0F 1F 80 00 00 00 00          .......

l000000000040A0E0:
	mov	rcx,rbx
	mov	[rsp+28h],rax
	call	409C60h
	mov	r8,[rsp+28h]
	mov	edx,4h
	mov	r9,rax
	mov	rcx,rbx
	call	403730h
	mov	rdx,[rbx+18h]
	mov	r8,rax
	jmp	409E24h
000000000040A10E                                           66 90               f.

l000000000040A110:
	test	eax,eax
	jnz	409EB5h

l000000000040A118:
	mov	r8,r13
	mov	edx,34h
	xor	r9d,r9d
	mov	rcx,rbx
	call	403730h
	mov	rdx,[rbx+18h]
	mov	r8,rax
	jmp	409E24h

l000000000040A137:
	mov	rax,[r13+8h]
	mov	rax,[rax]
	cmp	byte ptr [rax+1h],63h
	jz	40A570h

l000000000040A148:
	mov	rcx,rbx
	mov	[rsp+30h],rdx
	call	40D230h
	mov	rdx,[rsp+30h]
	mov	[rsp+28h],rax

l000000000040A15F:
	lea	rdi,[000000000048EDE5]                                 ; [rip+00084C7F]
	mov	rsi,rdx
	mov	rcx,r15

l000000000040A16C:
	rep cmpsb

l000000000040A16E:
	jz	40A32Ah

l000000000040A174:
	lea	rdi,[000000000048F0CF]                                 ; [rip+00084F54]
	mov	rsi,rdx
	mov	rcx,r15

l000000000040A181:
	rep cmpsb

l000000000040A183:
	jz	40A19Ah

l000000000040A185:
	lea	rdi,[000000000048F0D2]                                 ; [rip+00084F46]
	mov	rsi,rdx
	mov	rcx,r15

l000000000040A192:
	rep cmpsb

l000000000040A194:
	jnz	40A5A2h

l000000000040A19A:
	mov	rcx,rbx
	call	409850h
	mov	rsi,rax
	mov	rax,[rbx+18h]
	cmp	byte ptr [rax],49h
	jz	40A682h

l000000000040A1B2:
	mov	r8,[rsp+28h]
	mov	r9,rsi
	mov	edx,37h
	mov	rcx,rbx
	call	403730h
	mov	r8,r13
	mov	edx,36h
	mov	r9,rax
	mov	rcx,rbx
	call	403730h
	mov	rdx,[rbx+18h]
	mov	r8,rax
	jmp	409E24h

l000000000040A1E6:
	add	r8,2h
	xor	r9d,r9d
	mov	edx,2Fh
	mov	[rcx+18h],r8
	xor	r8d,r8d
	add	rsp,68h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	jmp	403730h

l000000000040A20E:
	add	rax,1h
	mov	[rbx+18h],rax
	nop	word ptr cs:[rax+rax+0h]

l000000000040A220:
	mov	rcx,rbx
	call	40D230h

l000000000040A228:
	mov	r8,r13
	mov	r9,rax
	mov	edx,35h
	mov	rcx,rbx
	call	403730h
	mov	r8,rax
	jmp	40A0D0h

l000000000040A243:
	add	rdx,3h
	mov	rcx,rbx
	mov	[rbx+18h],rdx
	call	4080A0h
	mov	rcx,rbx
	mov	rdi,rax
	call	409850h
	mov	rdx,[rbx+18h]
	mov	rsi,rax
	mov	r9,rax
	cmp	byte ptr [rdx],49h
	jz	40A2E6h

l000000000040A26D:
	mov	r8,rdi
	mov	edx,1h
	mov	rcx,rbx
	call	403730h
	mov	rdx,[rbx+18h]
	mov	r8,rax
	jmp	409E24h

l000000000040A289:
	mov	rcx,rbx
	call	403D30h
	add	eax,1h
	mov	edx,eax
	jnz	409F2Ah

l000000000040A29C:
	jmp	409EB5h

l000000000040A2A1:
	movzx	eax,byte ptr [rdx]
	cmp	al,6Dh
	jz	40A2B0h

l000000000040A2A8:
	cmp	al,70h
	jnz	40A220h

l000000000040A2B0:
	cmp	al,[rdx+1h]
	jnz	40A220h

l000000000040A2B9:
	mov	rax,[rbx+18h]
	cmp	byte ptr [rax],5Fh
	jz	40A20Eh

l000000000040A2C6:
	mov	rcx,rbx
	call	40D230h
	mov	edx,37h
	mov	r8,rax
	mov	r9,rax
	mov	rcx,rbx
	call	403730h
	jmp	40A228h

l000000000040A2E6:
	mov	rcx,rbx
	call	409C60h
	mov	r8,rsi
	mov	r9,rax
	mov	edx,4h
	mov	rcx,rbx
	call	403730h
	mov	r9,rax
	jmp	40A26Dh

l000000000040A309:
	mov	rcx,rbx
	call	4080A0h
	jmp	40A228h

l000000000040A316:
	mov	rcx,rbx
	call	4080A0h
	mov	rcx,[rbx+18h]
	mov	rsi,rax
	jmp	409FBBh

l000000000040A32A:
	mov	edx,45h
	mov	rcx,rbx
	call	40CB30h
	mov	rsi,rax
	jmp	40A1B2h

l000000000040A33F:
	mov	rdx,[rbx+18h]
	movzx	eax,byte ptr [rdx]
	cmp	al,4Ch
	jz	40AE60h

l000000000040A34E:
	cmp	al,54h
	jz	40AE47h

l000000000040A356:
	cmp	al,73h
	jz	40A98Dh

l000000000040A35E:
	cmp	al,66h
	jz	40A922h

l000000000040A366:
	lea	ecx,[rax-30h]
	cmp	cl,9h
	jbe	40A776h

l000000000040A372:
	cmp	al,6Fh
	jz	40A764h

l000000000040A37A:
	cmp	al,74h
	setz	cl
	jz	40A385h

l000000000040A381:
	cmp	al,69h
	jnz	40A38Fh

l000000000040A385:
	cmp	byte ptr [rdx+1h],6Ch
	jz	40AE79h

l000000000040A38F:
	mov	rcx,rbx
	call	4096B0h
	test	rax,rax
	mov	[rsp+28h],rax
	jz	40A9EFh

l000000000040A3A5:
	mov	rax,[rsp+28h]
	mov	eax,[rax]
	cmp	eax,31h
	jz	40AF8Bh

l000000000040A3B5:
	cmp	eax,32h
	jz	40AEA8h

l000000000040A3BE:
	cmp	eax,33h
	jnz	40A9EFh

l000000000040A3C7:
	mov	rax,[rbx+18h]
	cmp	byte ptr [rax],5Fh
	jz	40B9E3h

l000000000040A3D4:
	mov	rcx,rbx
	call	40D230h

l000000000040A3DC:
	mov	r8,[rsp+28h]
	mov	r9,rax
	mov	edx,35h

l000000000040A3E9:
	mov	rcx,rbx
	call	403730h
	mov	[rsp+30h],rax
	mov	rax,[rbx+18h]

l000000000040A3FA:
	movzx	edx,byte ptr [rax]

l000000000040A3FD:
	cmp	dl,4Ch
	jz	40AE2Eh

l000000000040A406:
	cmp	dl,54h
	jz	40B037h

l000000000040A40F:
	cmp	dl,73h
	jz	40A8ECh

l000000000040A418:
	cmp	dl,66h
	jz	40A881h

l000000000040A421:
	lea	ecx,[rdx-30h]
	cmp	cl,9h
	jbe	40A724h

l000000000040A42D:
	cmp	dl,6Fh
	jz	40A712h

l000000000040A436:
	cmp	dl,74h
	setz	cl
	jz	40A443h

l000000000040A43E:
	cmp	dl,69h
	jnz	40A44Dh

l000000000040A443:
	cmp	byte ptr [rax+1h],6Ch
	jz	40AABDh

l000000000040A44D:
	mov	rcx,rbx
	call	4096B0h
	test	rax,rax
	mov	[rsp+28h],rax
	jz	40A9C1h

l000000000040A463:
	mov	rax,[rsp+28h]
	mov	eax,[rax]
	cmp	eax,31h
	jz	40AAE9h

l000000000040A473:
	cmp	eax,32h
	jz	40AFE1h

l000000000040A47C:
	cmp	eax,33h
	jnz	40A9C1h

l000000000040A485:
	mov	rax,[rbx+18h]
	cmp	byte ptr [rax],5Fh
	jz	40B753h

l000000000040A492:
	mov	rcx,rbx
	call	40D230h

l000000000040A49A:
	mov	r8,[rsp+28h]
	mov	r9,rax
	mov	edx,35h

l000000000040A4A7:
	mov	rcx,rbx
	call	403730h
	mov	[rsp+28h],rax
	mov	rax,[rbx+18h]

l000000000040A4B8:
	movzx	edx,byte ptr [rax]

l000000000040A4BB:
	cmp	dl,4Ch
	jz	40AAADh

l000000000040A4C4:
	cmp	dl,54h
	jz	40AA9Dh

l000000000040A4CD:
	cmp	dl,73h
	jz	40A840h

l000000000040A4D6:
	cmp	dl,66h
	jz	40A7DDh

l000000000040A4DF:
	lea	ecx,[rdx-30h]
	cmp	cl,9h
	jbe	40A6C7h

l000000000040A4EB:
	cmp	dl,6Fh
	jz	40A6B5h

l000000000040A4F4:
	cmp	dl,74h
	setz	cl
	jz	40A501h

l000000000040A4FC:
	cmp	dl,69h
	jnz	40A50Bh

l000000000040A501:
	cmp	byte ptr [rax+1h],6Ch
	jz	40B000h

l000000000040A50B:
	mov	rcx,rbx
	call	4096B0h
	test	rax,rax
	mov	[rsp+38h],rax
	jz	40A9E7h

l000000000040A521:
	mov	eax,[rax]
	cmp	eax,31h
	jz	40AC08h

l000000000040A52C:
	cmp	eax,32h
	jz	40AD43h

l000000000040A535:
	cmp	eax,33h
	jnz	40A9E7h

l000000000040A53E:
	mov	rax,[rbx+18h]
	cmp	byte ptr [rax],5Fh
	jz	40BAE1h

l000000000040A54B:
	mov	rcx,rbx
	call	40D230h

l000000000040A553:
	mov	r8,[rsp+38h]
	mov	r9,rax
	mov	edx,35h
	mov	rcx,rbx
	call	403730h
	mov	r8,rax
	jmp	40A090h

l000000000040A570:
	movzx	eax,byte ptr [rax]
	lea	ecx,[rax-72h]
	cmp	cl,1h
	jbe	40A586h

l000000000040A57B:
	sub	eax,63h
	cmp	al,1h
	ja	40A148h

l000000000040A586:
	mov	rcx,rbx
	mov	[rsp+30h],rdx
	call	4080A0h
	mov	rdx,[rsp+30h]
	mov	[rsp+28h],rax
	jmp	40A15Fh

l000000000040A5A2:
	mov	rdx,[rbx+18h]
	movzx	eax,byte ptr [rdx]
	cmp	al,4Ch
	jz	40B177h

l000000000040A5B1:
	cmp	al,54h
	jz	40B070h

l000000000040A5B9:
	cmp	al,73h
	jz	40AA04h

l000000000040A5C1:
	cmp	al,66h
	jz	40AA43h

l000000000040A5C9:
	lea	ecx,[rax-30h]
	cmp	cl,9h
	jbe	40A661h

l000000000040A5D5:
	cmp	al,6Fh
	jz	40A653h

l000000000040A5D9:
	cmp	al,74h
	setz	cl
	jz	40A5E4h

l000000000040A5E0:
	cmp	al,69h
	jnz	40A5EEh

l000000000040A5E4:
	cmp	byte ptr [rdx+1h],6Ch
	jz	40B080h

l000000000040A5EE:
	mov	rcx,rbx
	call	4096B0h
	test	rax,rax
	mov	[rsp+30h],rax
	jz	40AE27h

l000000000040A604:
	mov	eax,[rax]
	cmp	eax,31h
	jz	40B4D0h

l000000000040A60F:
	cmp	eax,32h
	jz	40B2C6h

l000000000040A618:
	cmp	eax,33h
	jnz	40AE27h

l000000000040A621:
	mov	rax,[rbx+18h]
	cmp	byte ptr [rax],5Fh
	jz	40BB4Eh

l000000000040A62E:
	mov	rcx,rbx
	call	40D230h

l000000000040A636:
	mov	r8,[rsp+30h]
	mov	r9,rax
	mov	edx,35h
	mov	rcx,rbx
	call	403730h
	mov	rsi,rax
	jmp	40A1B2h

l000000000040A653:
	cmp	byte ptr [rdx+1h],6Eh
	jnz	40A5EEh

l000000000040A659:
	add	rdx,2h
	mov	[rbx+18h],rdx

l000000000040A661:
	mov	rcx,rbx
	call	409850h
	test	rax,rax
	mov	rsi,rax
	jz	40AE27h

l000000000040A675:
	mov	rax,[rbx+18h]
	cmp	byte ptr [rax],49h
	jnz	40A1B2h

l000000000040A682:
	mov	rcx,rbx
	call	409C60h
	mov	r8,rsi
	mov	r9,rax
	mov	edx,4h
	mov	rcx,rbx
	call	403730h
	mov	rsi,rax
	jmp	40A1B2h

l000000000040A6A5:
	add	rdx,1h
	xor	r8d,r8d
	mov	[rbx+18h],rdx
	jmp	40A090h

l000000000040A6B5:
	cmp	byte ptr [rax+1h],6Eh
	jnz	40A50Bh

l000000000040A6BF:
	add	rax,2h
	mov	[rbx+18h],rax

l000000000040A6C7:
	mov	rcx,rbx
	call	409850h
	test	rax,rax
	mov	r8,rax
	jz	40A090h

l000000000040A6DB:
	mov	rax,[rbx+18h]
	cmp	byte ptr [rax],49h
	jnz	40A090h

l000000000040A6E8:
	mov	rcx,rbx
	mov	[rsp+38h],r8
	call	409C60h
	mov	r8,[rsp+38h]
	mov	r9,rax
	mov	edx,4h
	mov	rcx,rbx
	call	403730h
	mov	r8,rax
	jmp	40A090h

l000000000040A712:
	cmp	byte ptr [rax+1h],6Eh
	jnz	40A44Dh

l000000000040A71C:
	add	rax,2h
	mov	[rbx+18h],rax

l000000000040A724:
	mov	rcx,rbx
	call	409850h
	mov	[rsp+28h],rax
	test	rax,rax
	mov	rax,[rbx+18h]
	movzx	edx,byte ptr [rax]
	jz	40A4BBh

l000000000040A741:
	cmp	dl,49h
	jnz	40A4BBh

l000000000040A74A:
	mov	rcx,rbx
	call	409C60h
	mov	r8,[rsp+28h]
	mov	r9,rax
	mov	edx,4h
	jmp	40A4A7h

l000000000040A764:
	cmp	byte ptr [rdx+1h],6Eh
	jnz	40A38Fh

l000000000040A76E:
	lea	rax,[rdx+2h]
	mov	[rbx+18h],rax

l000000000040A776:
	mov	rcx,rbx
	call	409850h
	mov	[rsp+30h],rax
	test	rax,rax
	mov	rax,[rbx+18h]
	movzx	edx,byte ptr [rax]
	jz	40A3FDh

l000000000040A793:
	cmp	dl,49h
	jnz	40A3FDh

l000000000040A79C:
	mov	rcx,rbx
	call	409C60h
	mov	r8,[rsp+30h]
	mov	r9,rax
	mov	edx,4h
	jmp	40A3E9h

l000000000040A7B6:
	cmp	byte ptr [rdx+1h],69h
	jnz	409E24h

l000000000040A7C0:
	add	rdx,2h
	mov	rcx,rbx
	mov	[rbx+18h],rdx
	mov	edx,45h
	call	40CB30h
	mov	r8,rax
	jmp	40A090h

l000000000040A7DD:
	cmp	byte ptr [rax+1h],70h
	jnz	40A50Bh

l000000000040A7E7:
	lea	rdx,[rax+2h]
	mov	[rbx+18h],rdx
	cmp	byte ptr [rax+2h],54h
	jnz	40A9D6h

l000000000040A7F9:
	add	rax,3h
	mov	[rbx+18h],rax
	xor	eax,eax

l000000000040A803:
	mov	edx,[rbx+28h]
	xor	r8d,r8d
	cmp	edx,[rbx+2Ch]
	jge	40A090h

l000000000040A812:
	movsxd	rcx,edx
	add	edx,1h
	lea	r8,[rcx+rcx*2]
	mov	rcx,[rbx+20h]
	mov	[rbx+28h],edx
	lea	r8,[rcx+r8*8]
	test	r8,r8
	jz	40A090h

l000000000040A830:
	mov	dword ptr [r8],6h
	mov	[r8+8h],eax
	jmp	40A090h

l000000000040A840:
	movzx	edx,byte ptr [rax+1h]
	cmp	dl,72h
	jz	40B280h

l000000000040A84D:
	cmp	dl,70h
	jnz	40A50Bh

l000000000040A856:
	add	rax,2h
	mov	rcx,rbx
	mov	[rbx+18h],rax
	call	40D230h
	xor	r9d,r9d
	mov	r8,rax
	mov	edx,49h
	mov	rcx,rbx
	call	403730h
	mov	r8,rax
	jmp	40A090h

l000000000040A881:
	cmp	byte ptr [rax+1h],70h
	jnz	40A44Dh

l000000000040A88B:
	lea	rdx,[rax+2h]
	mov	[rbx+18h],rdx
	cmp	byte ptr [rax+2h],54h
	jnz	40B469h

l000000000040A89D:
	add	rax,3h
	xor	edx,edx
	mov	[rbx+18h],rax

l000000000040A8A7:
	mov	ecx,[rbx+28h]
	cmp	ecx,[rbx+2Ch]
	jge	40A9C5h

l000000000040A8B3:
	movsxd	r8,ecx
	add	ecx,1h
	lea	r9,[r8+r8*2]
	mov	r8,[rbx+20h]
	mov	[rbx+28h],ecx
	lea	rdi,[r8+r9*8]
	test	rdi,rdi
	mov	[rsp+28h],rdi
	jz	40A4B8h

l000000000040A8D6:
	mov	rdi,[rsp+28h]
	mov	dword ptr [rdi],6h
	mov	[rdi+8h],edx
	movzx	edx,byte ptr [rax]
	jmp	40A4BBh

l000000000040A8EC:
	movzx	edx,byte ptr [rax+1h]
	cmp	dl,72h
	jz	40B13Ch

l000000000040A8F9:
	cmp	dl,70h
	jnz	40A44Dh

l000000000040A902:
	add	rax,2h
	mov	rcx,rbx
	mov	[rbx+18h],rax
	call	40D230h
	xor	r9d,r9d
	mov	r8,rax
	mov	edx,49h
	jmp	40A4A7h

l000000000040A922:
	cmp	byte ptr [rdx+1h],70h
	jnz	40A38Fh

l000000000040A92C:
	lea	rax,[rdx+2h]
	mov	[rbx+18h],rax
	cmp	byte ptr [rdx+2h],54h
	jnz	40B050h

l000000000040A93E:
	lea	rax,[rdx+3h]
	xor	edx,edx
	mov	[rbx+18h],rax

l000000000040A948:
	mov	ecx,[rbx+28h]
	cmp	ecx,[rbx+2Ch]
	jge	40A9F3h

l000000000040A954:
	movsxd	r8,ecx
	add	ecx,1h
	lea	r9,[r8+r8*2]
	mov	r8,[rbx+20h]
	mov	[rbx+28h],ecx
	lea	rdi,[r8+r9*8]
	test	rdi,rdi
	mov	[rsp+30h],rdi
	jz	40A3FAh

l000000000040A977:
	mov	rdi,[rsp+30h]
	mov	dword ptr [rdi],6h
	mov	[rdi+8h],edx
	movzx	edx,byte ptr [rax]
	jmp	40A3FDh

l000000000040A98D:
	movzx	eax,byte ptr [rdx+1h]
	cmp	al,72h
	jz	40B101h

l000000000040A999:
	cmp	al,70h
	jnz	40A38Fh

l000000000040A9A1:
	lea	rax,[rdx+2h]
	mov	rcx,rbx
	mov	[rbx+18h],rax
	call	40D230h
	xor	r9d,r9d
	mov	r8,rax
	mov	edx,49h
	jmp	40A3E9h

l000000000040A9C1:
	mov	rax,[rbx+18h]

l000000000040A9C5:
	movzx	edx,byte ptr [rax]
	mov	qword ptr [rsp+28h],+0h
	jmp	40A4BBh

l000000000040A9D6:
	mov	rcx,rbx
	call	403D30h
	add	eax,1h
	jnz	40A803h

l000000000040A9E7:
	xor	r8d,r8d
	jmp	40A090h

l000000000040A9EF:
	mov	rax,[rbx+18h]

l000000000040A9F3:
	movzx	edx,byte ptr [rax]
	mov	qword ptr [rsp+30h],+0h
	jmp	40A3FDh

l000000000040AA04:
	movzx	eax,byte ptr [rdx+1h]
	cmp	al,72h
	jz	40B83Bh

l000000000040AA10:
	cmp	al,70h
	jnz	40A5EEh

l000000000040AA18:
	add	rdx,2h
	mov	rcx,rbx
	mov	[rbx+18h],rdx
	call	40D230h
	xor	r9d,r9d
	mov	r8,rax
	mov	edx,49h
	mov	rcx,rbx
	call	403730h
	mov	rsi,rax
	jmp	40A1B2h

l000000000040AA43:
	cmp	byte ptr [rdx+1h],70h
	jnz	40A5EEh

l000000000040AA4D:
	lea	rax,[rdx+2h]
	mov	[rbx+18h],rax
	cmp	byte ptr [rdx+2h],54h
	jnz	40AE16h

l000000000040AA5F:
	add	rdx,3h
	xor	eax,eax
	mov	[rbx+18h],rdx

l000000000040AA69:
	mov	edx,[rbx+28h]
	cmp	edx,[rbx+2Ch]
	jge	40AE27h

l000000000040AA75:
	movsxd	rsi,edx
	add	edx,1h
	imul	rsi,rsi,18h
	mov	[rbx+28h],edx
	add	rsi,[rbx+20h]
	test	rsi,rsi
	jz	40A1B2h

l000000000040AA8F:
	mov	dword ptr [rsi],6h
	mov	[rsi+8h],eax
	jmp	40A1B2h

l000000000040AA9D:
	mov	rcx,rbx
	call	403D80h
	mov	r8,rax
	jmp	40A090h

l000000000040AAAD:
	mov	rcx,rbx
	call	407F20h
	mov	r8,rax
	jmp	40A090h

l000000000040AABD:
	xor	esi,esi
	test	cl,cl
	jnz	40B790h

l000000000040AAC7:
	add	qword ptr [rbx+18h],2h
	mov	edx,45h
	mov	rcx,rbx
	call	40CB30h
	mov	r8,rsi
	mov	r9,rax
	mov	edx,30h
	jmp	40A4A7h

l000000000040AAE9:
	mov	rax,[rsp+28h]
	lea	rdi,[000000000048EDE2]                                 ; [rip+000842ED]
	mov	rcx,r15
	mov	rdx,[rax+8h]
	mov	eax,[rdx+10h]
	mov	r8,[rdx]
	sub	eax,2h
	add	[rbx+50h],eax
	mov	rsi,r8

l000000000040AB0B:
	rep cmpsb

l000000000040AB0D:
	jz	40B8E0h

l000000000040AB13:
	mov	eax,[rdx+14h]
	cmp	eax,1h
	jz	40B485h

l000000000040AB1F:
	jle	40ABEEh

l000000000040AB25:
	cmp	eax,2h
	jz	40B3C0h

l000000000040AB2E:
	cmp	eax,3h
	jnz	40A9C1h

l000000000040AB37:
	lea	rdi,[000000000048EDEB]                                 ; [rip+000842AD]
	mov	rsi,r8
	mov	rcx,r15

l000000000040AB44:
	rep cmpsb

l000000000040AB46:
	jz	40B69Eh

l000000000040AB4C:
	cmp	byte ptr [r8],6Eh
	jnz	40A9C1h

l000000000040AB56:
	movzx	eax,byte ptr [r8+1h]
	cmp	al,61h
	jz	40AB67h

l000000000040AB5F:
	cmp	al,77h
	jnz	40A9C1h

l000000000040AB67:
	mov	edx,5Fh
	mov	rcx,rbx
	call	40CB30h
	mov	rcx,rbx
	mov	rsi,rax
	call	4080A0h
	mov	rdi,rax
	mov	rax,[rbx+18h]
	movzx	edx,byte ptr [rax]
	cmp	dl,45h
	jz	40B96Eh

l000000000040AB92:
	cmp	dl,70h
	jz	40B94Eh

l000000000040AB9B:
	cmp	dl,69h
	jnz	40B940h

l000000000040ABA4:
	cmp	byte ptr [rax+1h],6Ch
	jnz	40B92Dh

l000000000040ABAE:
	mov	rcx,rbx
	call	40D230h

l000000000040ABB6:
	mov	r9,rax
	mov	r8,rdi
	mov	edx,3Ah
	mov	rcx,rbx
	call	403730h
	mov	r8,rsi
	mov	r9,rax
	mov	edx,39h
	mov	rcx,rbx
	call	403730h
	mov	r8,[rsp+28h]
	mov	r9,rax
	mov	edx,38h
	jmp	40A4A7h

l000000000040ABEE:
	test	eax,eax
	jnz	40A9C1h

l000000000040ABF6:
	xor	r9d,r9d
	mov	r8,[rsp+28h]
	mov	edx,34h
	jmp	40A4A7h

l000000000040AC08:
	mov	rax,[rsp+38h]
	lea	rdi,[000000000048EDE2]                                 ; [rip+000841CE]
	mov	rcx,r15
	mov	rdx,[rax+8h]
	mov	eax,[rdx+10h]
	mov	r9,[rdx]
	sub	eax,2h
	add	[rbx+50h],eax
	mov	rsi,r9

l000000000040AC2A:
	rep cmpsb

l000000000040AC2C:
	jz	40BB1Eh

l000000000040AC32:
	mov	eax,[rdx+14h]
	cmp	eax,1h
	jz	40B230h

l000000000040AC3E:
	jle	40AD1Eh

l000000000040AC44:
	cmp	eax,2h
	jz	40AD62h

l000000000040AC4D:
	cmp	eax,3h
	jnz	40A9E7h

l000000000040AC56:
	lea	rdi,[000000000048EDEB]                                 ; [rip+0008418E]
	mov	rsi,r9
	mov	rcx,r15

l000000000040AC63:
	rep cmpsb

l000000000040AC65:
	jz	40B9B0h

l000000000040AC6B:
	xor	r8d,r8d
	cmp	byte ptr [r9],6Eh
	jnz	40A090h

l000000000040AC78:
	movzx	eax,byte ptr [r9+1h]
	cmp	al,61h
	jz	40AC89h

l000000000040AC81:
	cmp	al,77h
	jnz	40A090h

l000000000040AC89:
	mov	edx,5Fh
	mov	rcx,rbx
	call	40CB30h
	mov	rcx,rbx
	mov	rsi,rax
	call	4080A0h
	mov	rdi,rax
	mov	rax,[rbx+18h]
	movzx	edx,byte ptr [rax]
	cmp	dl,45h
	jz	40B9A1h

l000000000040ACB4:
	xor	r8d,r8d
	cmp	dl,70h
	jz	40B97Dh

l000000000040ACC0:
	cmp	dl,69h
	jnz	40A090h

l000000000040ACC9:
	cmp	byte ptr [rax+1h],6Ch
	jnz	40A090h

l000000000040ACD3:
	mov	rcx,rbx
	call	40D230h

l000000000040ACDB:
	mov	r9,rax
	mov	r8,rdi
	mov	edx,3Ah
	mov	rcx,rbx
	call	403730h
	mov	r8,rsi
	mov	r9,rax
	mov	edx,39h
	mov	rcx,rbx
	call	403730h
	mov	r8,[rsp+38h]
	mov	r9,rax
	mov	edx,38h
	mov	rcx,rbx
	call	403730h
	mov	r8,rax
	jmp	40A090h

l000000000040AD1E:
	test	eax,eax
	jnz	40A9E7h

l000000000040AD26:
	mov	r8,[rsp+38h]
	xor	r9d,r9d
	mov	edx,34h
	mov	rcx,rbx
	call	403730h
	mov	r8,rax
	jmp	40A090h

l000000000040AD43:
	mov	rax,[rsp+38h]
	mov	eax,[rax+8h]
	cmp	eax,1h
	jz	40A54Bh

l000000000040AD54:
	jle	40AD1Eh

l000000000040AD56:
	xor	r9d,r9d
	cmp	eax,2h
	jnz	40AC4Dh

l000000000040AD62:
	mov	rax,[rsp+38h]
	mov	rax,[rax+8h]
	mov	rax,[rax]
	cmp	byte ptr [rax+1h],63h
	jz	40BA5Fh

l000000000040AD78:
	mov	rcx,rbx
	mov	[rsp+48h],r9
	call	40D230h
	mov	r9,[rsp+48h]
	mov	[rsp+40h],rax

l000000000040AD8F:
	lea	rdi,[000000000048EDE5]                                 ; [rip+0008404F]
	mov	rsi,r9
	mov	rcx,r15

l000000000040AD9C:
	rep cmpsb

l000000000040AD9E:
	jz	40BA4Ah

l000000000040ADA4:
	lea	rdi,[000000000048F0CF]                                 ; [rip+00084324]
	mov	rsi,r9
	mov	rcx,r15

l000000000040ADB1:
	rep cmpsb

l000000000040ADB3:
	jz	40ADCCh

l000000000040ADB5:
	lea	rdx,[000000000048F0D2]                                 ; [rip+00084316]
	mov	rcx,r9
	call	41BDB0h
	test	eax,eax
	jnz	40B9D3h

l000000000040ADCC:
	mov	rcx,rbx
	call	409850h
	mov	rsi,rax
	mov	rax,[rbx+18h]
	cmp	byte ptr [rax],49h
	jz	40BB8Bh

l000000000040ADE4:
	mov	r8,[rsp+40h]
	mov	r9,rsi
	mov	edx,37h
	mov	rcx,rbx
	call	403730h
	mov	r8,[rsp+38h]
	mov	r9,rax
	mov	edx,36h
	mov	rcx,rbx
	call	403730h
	mov	r8,rax
	jmp	40A090h

l000000000040AE16:
	mov	rcx,rbx
	call	403D30h
	add	eax,1h
	jnz	40AA69h

l000000000040AE27:
	xor	esi,esi
	jmp	40A1B2h

l000000000040AE2E:
	mov	rcx,rbx
	call	407F20h
	mov	[rsp+28h],rax
	mov	rax,[rbx+18h]
	movzx	edx,byte ptr [rax]
	jmp	40A4BBh

l000000000040AE47:
	mov	rcx,rbx
	call	403D80h
	mov	[rsp+30h],rax
	mov	rax,[rbx+18h]
	movzx	edx,byte ptr [rax]
	jmp	40A3FDh

l000000000040AE60:
	mov	rcx,rbx
	call	407F20h
	mov	[rsp+30h],rax
	mov	rax,[rbx+18h]
	movzx	edx,byte ptr [rax]
	jmp	40A3FDh

l000000000040AE79:
	xor	esi,esi
	test	cl,cl
	jnz	40B827h

l000000000040AE83:
	add	rdx,2h
	mov	rcx,rbx
	mov	[rbx+18h],rdx
	mov	edx,45h
	call	40CB30h
	mov	r8,rsi
	mov	r9,rax
	mov	edx,30h
	jmp	40A3E9h

l000000000040AEA8:
	mov	rax,[rsp+28h]
	mov	eax,[rax+8h]
	cmp	eax,1h
	jz	40A3D4h

l000000000040AEB9:
	jle	40AFC7h

l000000000040AEBF:
	xor	r8d,r8d

l000000000040AEC2:
	cmp	eax,2h
	jz	40B187h

l000000000040AECB:
	cmp	eax,3h
	jnz	40A9EFh

l000000000040AED4:
	lea	rdi,[000000000048EDEB]                                 ; [rip+00083F10]
	mov	rsi,r8
	mov	rcx,r15

l000000000040AEE1:
	rep cmpsb

l000000000040AEE3:
	jz	40B7F4h

l000000000040AEE9:
	cmp	byte ptr [r8],6Eh
	jnz	40A9EFh

l000000000040AEF3:
	movzx	eax,byte ptr [r8+1h]
	cmp	al,61h
	jz	40AF04h

l000000000040AEFC:
	cmp	al,77h
	jnz	40A9EFh

l000000000040AF04:
	mov	edx,5Fh
	mov	rcx,rbx
	call	40CB30h
	mov	rcx,rbx
	mov	rsi,rax
	call	4080A0h
	mov	rdi,rax
	mov	rax,[rbx+18h]
	movzx	edx,byte ptr [rax]
	cmp	dl,45h
	jz	40BAD2h

l000000000040AF2F:
	cmp	dl,70h
	jz	40BAB2h

l000000000040AF38:
	cmp	dl,69h
	jnz	40BAA4h

l000000000040AF41:
	cmp	byte ptr [rax+1h],6Ch
	jnz	40BA91h

l000000000040AF4B:
	mov	rcx,rbx
	call	40D230h

l000000000040AF53:
	mov	r9,rax
	mov	r8,rdi
	mov	edx,3Ah
	mov	rcx,rbx
	call	403730h
	mov	r8,rsi
	mov	r9,rax
	mov	edx,39h
	mov	rcx,rbx
	call	403730h
	mov	r8,[rsp+28h]
	mov	r9,rax
	mov	edx,38h
	jmp	40A3E9h

l000000000040AF8B:
	mov	rax,[rsp+28h]
	lea	rdi,[000000000048EDE2]                                 ; [rip+00083E4B]
	mov	rcx,r15
	mov	rdx,[rax+8h]
	mov	eax,[rdx+10h]
	mov	r8,[rdx]
	sub	eax,2h
	add	[rbx+50h],eax
	mov	rsi,r8

l000000000040AFAD:
	rep cmpsb

l000000000040AFAF:
	jz	40B87Dh

l000000000040AFB5:
	mov	eax,[rdx+14h]
	cmp	eax,1h
	jz	40B0BAh

l000000000040AFC1:
	jg	40AEC2h

l000000000040AFC7:
	test	eax,eax
	jnz	40A9EFh

l000000000040AFCF:
	xor	r9d,r9d
	mov	r8,[rsp+28h]
	mov	edx,34h
	jmp	40A3E9h

l000000000040AFE1:
	mov	rax,[rsp+28h]
	mov	eax,[rax+8h]
	cmp	eax,1h
	jz	40A492h

l000000000040AFF2:
	jle	40ABEEh

l000000000040AFF8:
	xor	r8d,r8d
	jmp	40AB25h

l000000000040B000:
	xor	esi,esi
	test	cl,cl
	jnz	40BA17h

l000000000040B00A:
	add	qword ptr [rbx+18h],2h
	mov	edx,45h
	mov	rcx,rbx
	call	40CB30h
	mov	r8,rsi
	mov	r9,rax
	mov	edx,30h
	mov	rcx,rbx
	call	403730h
	mov	r8,rax
	jmp	40A090h

l000000000040B037:
	mov	rcx,rbx
	call	403D80h
	mov	[rsp+28h],rax
	mov	rax,[rbx+18h]
	movzx	edx,byte ptr [rax]
	jmp	40A4BBh

l000000000040B050:
	mov	rcx,rbx
	call	403D30h
	add	eax,1h
	mov	edx,eax
	mov	rax,[rbx+18h]
	jnz	40A948h

l000000000040B067:
	jmp	40A9F3h
000000000040B06C                                     0F 1F 40 00             ..@.

l000000000040B070:
	mov	rcx,rbx
	call	403D80h
	mov	rsi,rax
	jmp	40A1B2h

l000000000040B080:
	xor	esi,esi
	test	cl,cl
	jnz	40B897h

l000000000040B08A:
	add	rdx,2h
	mov	rcx,rbx
	mov	[rbx+18h],rdx
	mov	edx,45h
	call	40CB30h
	mov	r8,rsi
	mov	r9,rax
	mov	edx,30h
	mov	rcx,rbx
	call	403730h
	mov	rsi,rax
	jmp	40A1B2h

l000000000040B0BA:
	movzx	eax,byte ptr [r8]
	cmp	al,6Dh
	jz	40B0CAh

l000000000040B0C2:
	cmp	al,70h
	jnz	40A3D4h

l000000000040B0CA:
	cmp	al,[r8+1h]
	jnz	40A3D4h

l000000000040B0D4:
	mov	rax,[rbx+18h]
	cmp	byte ptr [rax],5Fh
	jz	40B7A0h

l000000000040B0E1:
	mov	rcx,rbx
	call	40D230h
	mov	edx,37h
	mov	r8,rax
	mov	r9,rax
	mov	rcx,rbx
	call	403730h
	jmp	40A3DCh

l000000000040B101:
	lea	rax,[rdx+2h]
	mov	rcx,rbx
	mov	[rbx+18h],rax
	call	4080A0h
	mov	rcx,rbx
	mov	rsi,rax
	call	409850h
	mov	rdi,rax
	mov	rax,[rbx+18h]
	mov	r9,rdi
	cmp	byte ptr [rax],49h
	jz	40BA27h

l000000000040B12F:
	mov	r8,rsi
	mov	edx,1h
	jmp	40A3E9h

l000000000040B13C:
	add	rax,2h
	mov	rcx,rbx
	mov	[rbx+18h],rax
	call	4080A0h
	mov	rcx,rbx
	mov	rsi,rax
	call	409850h
	mov	rdi,rax
	mov	rax,[rbx+18h]
	mov	r9,rdi
	cmp	byte ptr [rax],49h
	jz	40B76Dh

l000000000040B16A:
	mov	r8,rsi
	mov	edx,1h
	jmp	40A4A7h

l000000000040B177:
	mov	rcx,rbx
	call	407F20h
	mov	rsi,rax
	jmp	40A1B2h

l000000000040B187:
	mov	rax,[rsp+28h]
	mov	rax,[rax+8h]
	mov	rax,[rax]
	cmp	byte ptr [rax+1h],63h
	jz	40B7C2h

l000000000040B19D:
	mov	rcx,rbx
	mov	[rsp+38h],r8
	call	40D230h
	mov	r8,[rsp+38h]
	mov	[rsp+30h],rax

l000000000040B1B4:
	lea	rdi,[000000000048EDE5]                                 ; [rip+00083C2A]
	mov	rsi,r8
	mov	rcx,r15

l000000000040B1C1:
	rep cmpsb

l000000000040B1C3:
	jz	40B7ADh

l000000000040B1C9:
	lea	rdi,[000000000048F0CF]                                 ; [rip+00083EFF]
	mov	rsi,r8
	mov	rcx,r15

l000000000040B1D6:
	rep cmpsb

l000000000040B1D8:
	jz	40B1F1h

l000000000040B1DA:
	lea	rdx,[000000000048F0D2]                                 ; [rip+00083EF1]
	mov	rcx,r8
	call	41BDB0h
	test	eax,eax
	jnz	40B817h

l000000000040B1F1:
	mov	rcx,rbx
	call	409850h
	mov	rsi,rax
	mov	rax,[rbx+18h]
	cmp	byte ptr [rax],49h
	jz	40BAFBh

l000000000040B209:
	mov	r8,[rsp+30h]
	mov	r9,rsi
	mov	edx,37h
	mov	rcx,rbx
	call	403730h
	mov	r8,[rsp+28h]
	mov	r9,rax
	mov	edx,36h
	jmp	40A3E9h

l000000000040B230:
	movzx	eax,byte ptr [r9]
	cmp	al,6Dh
	jz	40B240h

l000000000040B238:
	cmp	al,70h
	jnz	40A54Bh

l000000000040B240:
	cmp	al,[r9+1h]
	jnz	40A54Bh

l000000000040B24A:
	mov	rax,[rbx+18h]
	cmp	byte ptr [rax],5Fh
	jz	40BA0Ah

l000000000040B257:
	mov	rcx,rbx
	call	40D230h
	mov	edx,37h
	mov	r8,rax
	mov	r9,rax
	mov	rcx,rbx
	call	403730h
	jmp	40A553h
000000000040B277                      66 0F 1F 84 00 00 00 00 00        f........

l000000000040B280:
	add	rax,2h
	mov	rcx,rbx
	mov	[rbx+18h],rax
	call	4080A0h
	mov	rcx,rbx
	mov	rsi,rax
	call	409850h
	mov	rdi,rax
	mov	rax,[rbx+18h]
	mov	r9,rdi
	cmp	byte ptr [rax],49h
	jz	40BB68h

l000000000040B2AE:
	mov	r8,rsi
	mov	edx,1h
	mov	rcx,rbx
	call	403730h
	mov	r8,rax
	jmp	40A090h

l000000000040B2C6:
	mov	rax,[rsp+30h]
	mov	eax,[rax+8h]
	cmp	eax,1h
	jz	40A62Eh

l000000000040B2D7:
	jle	40B6CEh

l000000000040B2DD:
	xor	r9d,r9d
	cmp	eax,2h
	jz	40B515h

l000000000040B2E9:
	cmp	eax,3h
	jnz	40AE27h

l000000000040B2F2:
	lea	rdx,[000000000048EDEB]                                 ; [rip+00083AF2]
	mov	rcx,r9
	mov	[rsp+38h],r9
	call	41BDB0h
	test	eax,eax
	mov	r9,[rsp+38h]
	jz	40B67Bh

l000000000040B313:
	cmp	byte ptr [r9],6Eh
	jnz	40AE27h

l000000000040B31D:
	movzx	eax,byte ptr [r9+1h]
	cmp	al,61h
	jz	40B32Eh

l000000000040B326:
	cmp	al,77h
	jnz	40AE27h

l000000000040B32E:
	mov	edx,5Fh
	mov	rcx,rbx
	call	40CB30h
	mov	rcx,rbx
	mov	rsi,rax
	call	4080A0h
	mov	rdi,rax
	mov	rax,[rbx+18h]
	movzx	edx,byte ptr [rax]
	cmp	dl,45h
	jz	40B91Eh

l000000000040B359:
	cmp	dl,70h
	jz	40B8FAh

l000000000040B362:
	cmp	dl,69h
	jnz	40AE27h

l000000000040B36B:
	cmp	byte ptr [rax+1h],6Ch
	jnz	40AE27h

l000000000040B375:
	mov	rcx,rbx
	call	40D230h

l000000000040B37D:
	mov	r9,rax
	mov	r8,rdi
	mov	edx,3Ah
	mov	rcx,rbx
	call	403730h
	mov	r8,rsi
	mov	r9,rax
	mov	edx,39h
	mov	rcx,rbx
	call	403730h
	mov	r8,[rsp+30h]
	mov	r9,rax
	mov	edx,38h
	mov	rcx,rbx
	call	403730h
	mov	rsi,rax
	jmp	40A1B2h

l000000000040B3C0:
	mov	rax,[rsp+28h]
	mov	rax,[rax+8h]
	mov	rax,[rax]
	cmp	byte ptr [rax+1h],63h
	jz	40B639h

l000000000040B3D6:
	mov	rcx,rbx
	mov	[rsp+40h],r8
	call	40D230h
	mov	r8,[rsp+40h]
	mov	[rsp+38h],rax

l000000000040B3ED:
	lea	rdi,[000000000048EDE5]                                 ; [rip+000839F1]
	mov	rsi,r8
	mov	rcx,r15

l000000000040B3FA:
	rep cmpsb

l000000000040B3FC:
	jz	40B8CBh

l000000000040B402:
	lea	rdi,[000000000048F0CF]                                 ; [rip+00083CC6]
	mov	rsi,r8
	mov	rcx,r15

l000000000040B40F:
	rep cmpsb

l000000000040B411:
	jz	40B42Ah

l000000000040B413:
	lea	rdx,[000000000048F0D2]                                 ; [rip+00083CB8]
	mov	rcx,r8
	call	41BDB0h
	test	eax,eax
	jnz	40B66Bh

l000000000040B42A:
	mov	rcx,rbx
	call	409850h
	mov	rsi,rax
	mov	rax,[rbx+18h]
	cmp	byte ptr [rax],49h
	jz	40BB2Bh

l000000000040B442:
	mov	r8,[rsp+38h]
	mov	r9,rsi
	mov	edx,37h
	mov	rcx,rbx
	call	403730h
	mov	r8,[rsp+28h]
	mov	r9,rax
	mov	edx,36h
	jmp	40A4A7h

l000000000040B469:
	mov	rcx,rbx
	call	403D30h
	add	eax,1h
	mov	edx,eax
	mov	rax,[rbx+18h]
	jnz	40A8A7h

l000000000040B480:
	jmp	40A9C5h

l000000000040B485:
	movzx	eax,byte ptr [r8]
	cmp	al,6Dh
	jz	40B495h

l000000000040B48D:
	cmp	al,70h
	jnz	40A492h

l000000000040B495:
	cmp	al,[r8+1h]
	jnz	40A492h

l000000000040B49F:
	mov	rax,[rbx+18h]
	cmp	byte ptr [rax],5Fh
	jz	40BBAEh

l000000000040B4AC:
	mov	rcx,rbx
	call	40D230h
	mov	edx,37h
	mov	r8,rax
	mov	r9,rax
	mov	rcx,rbx
	call	403730h
	jmp	40A49Ah
000000000040B4CC                                     0F 1F 40 00             ..@.

l000000000040B4D0:
	mov	rax,[rsp+30h]
	lea	rdi,[000000000048EDE2]                                 ; [rip+00083906]
	mov	rcx,r15
	mov	rdx,[rax+8h]
	mov	eax,[rdx+10h]
	mov	r9,[rdx]
	sub	eax,2h
	add	[rbx+50h],eax
	mov	rsi,r9

l000000000040B4F2:
	rep cmpsb

l000000000040B4F4:
	jz	40B6C1h

l000000000040B4FA:
	mov	eax,[rdx+14h]
	cmp	eax,1h
	jz	40B6F3h

l000000000040B506:
	jle	40B6CEh

l000000000040B50C:
	cmp	eax,2h
	jnz	40B2E9h

l000000000040B515:
	mov	rax,[rsp+30h]
	mov	rax,[rax+8h]
	mov	rax,[rax]
	cmp	byte ptr [rax+1h],63h
	jz	40B609h

l000000000040B52B:
	mov	rcx,rbx
	mov	[rsp+38h],r9
	call	40D230h
	mov	r9,[rsp+38h]
	mov	rsi,rax

l000000000040B540:
	lea	rdx,[000000000048EDE5]                                 ; [rip+0008389E]
	mov	rcx,r9
	mov	[rsp+38h],r9
	call	41BDB0h
	test	eax,eax
	mov	r9,[rsp+38h]
	jz	40B5F7h

l000000000040B561:
	lea	rdx,[000000000048F0CF]                                 ; [rip+00083B67]
	mov	rcx,r9
	mov	[rsp+38h],r9
	call	41BDB0h
	test	eax,eax
	jz	40B595h

l000000000040B579:
	mov	r9,[rsp+38h]
	lea	rdx,[000000000048F0D2]                                 ; [rip+00083B4D]
	mov	rcx,r9
	call	41BDB0h
	test	eax,eax
	jnz	40B736h

l000000000040B595:
	mov	rcx,rbx
	call	409850h
	mov	rdi,rax
	mov	rax,[rbx+18h]
	cmp	byte ptr [rax],49h
	jnz	40B5C7h

l000000000040B5A9:
	mov	rcx,rbx
	call	409C60h
	mov	r8,rdi
	mov	r9,rax
	mov	edx,4h
	mov	rcx,rbx
	call	403730h
	mov	rdi,rax

l000000000040B5C7:
	mov	r8,rsi
	mov	r9,rdi
	mov	edx,37h
	mov	rcx,rbx
	call	403730h
	mov	r8,[rsp+30h]
	mov	r9,rax
	mov	edx,36h
	mov	rcx,rbx
	call	403730h
	mov	rsi,rax
	jmp	40A1B2h

l000000000040B5F7:
	mov	edx,45h
	mov	rcx,rbx
	call	40CB30h
	mov	rdi,rax
	jmp	40B5C7h

l000000000040B609:
	movzx	eax,byte ptr [rax]
	lea	edx,[rax-72h]
	cmp	dl,1h
	jbe	40B61Fh

l000000000040B614:
	sub	eax,63h
	cmp	al,1h
	ja	40B52Bh

l000000000040B61F:
	mov	rcx,rbx
	mov	[rsp+38h],r9
	call	4080A0h
	mov	r9,[rsp+38h]
	mov	rsi,rax
	jmp	40B540h

l000000000040B639:
	movzx	eax,byte ptr [rax]
	lea	edx,[rax-72h]
	cmp	dl,1h
	jbe	40B64Fh

l000000000040B644:
	sub	eax,63h
	cmp	al,1h
	ja	40B3D6h

l000000000040B64F:
	mov	rcx,rbx
	mov	[rsp+40h],r8
	call	4080A0h
	mov	r8,[rsp+40h]
	mov	[rsp+38h],rax
	jmp	40B3EDh

l000000000040B66B:
	mov	rcx,rbx
	call	40D230h
	mov	rsi,rax
	jmp	40B442h

l000000000040B67B:
	mov	rcx,rbx
	call	40D230h
	mov	rcx,rbx
	mov	rsi,rax
	call	40D230h
	mov	rcx,rbx
	mov	rdi,rax
	call	40D230h
	jmp	40B37Dh

l000000000040B69E:
	mov	rcx,rbx
	call	40D230h
	mov	rcx,rbx
	mov	rsi,rax
	call	40D230h
	mov	rcx,rbx
	mov	rdi,rax
	call	40D230h
	jmp	40ABB6h

l000000000040B6C1:
	mov	rcx,rbx
	call	4080A0h
	jmp	40A636h

l000000000040B6CE:
	test	eax,eax
	jnz	40AE27h

l000000000040B6D6:
	mov	r8,[rsp+30h]
	xor	r9d,r9d
	mov	edx,34h
	mov	rcx,rbx
	call	403730h
	mov	rsi,rax
	jmp	40A1B2h

l000000000040B6F3:
	movzx	eax,byte ptr [r9]
	cmp	al,6Dh
	jz	40B703h

l000000000040B6FB:
	cmp	al,70h
	jnz	40A62Eh

l000000000040B703:
	cmp	al,[r9+1h]
	jnz	40A62Eh

l000000000040B70D:
	mov	rax,[rbx+18h]
	cmp	byte ptr [rax],5Fh
	jz	40B746h

l000000000040B716:
	mov	rcx,rbx
	call	40D230h
	mov	edx,37h
	mov	r8,rax
	mov	r9,rax
	mov	rcx,rbx
	call	403730h
	jmp	40A636h

l000000000040B736:
	mov	rcx,rbx
	call	40D230h
	mov	rdi,rax
	jmp	40B5C7h

l000000000040B746:
	add	rax,1h
	mov	[rbx+18h],rax
	jmp	40A62Eh

l000000000040B753:
	add	rax,1h
	mov	edx,45h
	mov	rcx,rbx
	mov	[rbx+18h],rax
	call	40CB30h
	jmp	40A49Ah

l000000000040B76D:
	mov	rcx,rbx
	call	409C60h
	mov	r8,rdi
	mov	r9,rax
	mov	edx,4h
	mov	rcx,rbx
	call	403730h
	mov	r9,rax
	jmp	40B16Ah

l000000000040B790:
	mov	rcx,rbx
	call	4080A0h
	mov	rsi,rax
	jmp	40AAC7h

l000000000040B7A0:
	add	rax,1h
	mov	[rbx+18h],rax
	jmp	40A3D4h

l000000000040B7AD:
	mov	edx,45h
	mov	rcx,rbx
	call	40CB30h
	mov	rsi,rax
	jmp	40B209h

l000000000040B7C2:
	movzx	eax,byte ptr [rax]
	lea	edx,[rax-72h]
	cmp	dl,1h
	jbe	40B7D8h

l000000000040B7CD:
	sub	eax,63h
	cmp	al,1h
	ja	40B19Dh

l000000000040B7D8:
	mov	rcx,rbx
	mov	[rsp+38h],r8
	call	4080A0h
	mov	r8,[rsp+38h]
	mov	[rsp+30h],rax
	jmp	40B1B4h

l000000000040B7F4:
	mov	rcx,rbx
	call	40D230h
	mov	rcx,rbx
	mov	rsi,rax
	call	40D230h
	mov	rcx,rbx
	mov	rdi,rax
	call	40D230h
	jmp	40AF53h

l000000000040B817:
	mov	rcx,rbx
	call	40D230h
	mov	rsi,rax
	jmp	40B209h

l000000000040B827:
	mov	rcx,rbx
	call	4080A0h
	mov	rdx,[rbx+18h]
	mov	rsi,rax
	jmp	40AE83h

l000000000040B83B:
	add	rdx,2h
	mov	rcx,rbx
	mov	[rbx+18h],rdx
	call	4080A0h
	mov	rcx,rbx
	mov	rsi,rax
	call	409850h
	mov	rdi,rax
	mov	rax,[rbx+18h]
	cmp	byte ptr [rax],49h
	jz	40B8ABh

l000000000040B862:
	mov	r9,rdi

l000000000040B865:
	mov	r8,rsi
	mov	edx,1h
	mov	rcx,rbx
	call	403730h
	mov	rsi,rax
	jmp	40A1B2h

l000000000040B87D:
	mov	rcx,rbx
	call	4080A0h
	mov	r8,[rsp+28h]
	mov	r9,rax
	mov	edx,35h
	jmp	40A3E9h

l000000000040B897:
	mov	rcx,rbx
	call	4080A0h
	mov	rdx,[rbx+18h]
	mov	rsi,rax
	jmp	40B08Ah

l000000000040B8AB:
	mov	rcx,rbx
	call	409C60h
	mov	r8,rdi
	mov	r9,rax
	mov	edx,4h
	mov	rcx,rbx
	call	403730h
	mov	r9,rax
	jmp	40B865h

l000000000040B8CB:
	mov	edx,45h
	mov	rcx,rbx
	call	40CB30h
	mov	rsi,rax
	jmp	40B442h

l000000000040B8E0:
	mov	rcx,rbx
	call	4080A0h
	mov	r8,[rsp+28h]
	mov	r9,rax
	mov	edx,35h
	jmp	40A4A7h

l000000000040B8FA:
	cmp	byte ptr [rax+1h],69h
	jnz	40AE27h

l000000000040B904:
	add	rax,2h
	mov	edx,45h
	mov	rcx,rbx
	mov	[rbx+18h],rax
	call	40CB30h
	jmp	40B37Dh

l000000000040B91E:
	add	rax,1h
	mov	[rbx+18h],rax
	xor	eax,eax
	jmp	40B37Dh

l000000000040B92D:
	mov	edx,69h

l000000000040B932:
	mov	qword ptr [rsp+28h],+0h
	jmp	40A4F4h

l000000000040B940:
	mov	qword ptr [rsp+28h],+0h
	jmp	40A4BBh

l000000000040B94E:
	cmp	byte ptr [rax+1h],69h
	jnz	40B932h

l000000000040B954:
	add	rax,2h
	mov	edx,45h
	mov	rcx,rbx
	mov	[rbx+18h],rax
	call	40CB30h
	jmp	40ABB6h

l000000000040B96E:
	add	rax,1h
	mov	[rbx+18h],rax
	xor	eax,eax
	jmp	40ABB6h

l000000000040B97D:
	cmp	byte ptr [rax+1h],69h
	jnz	40A090h

l000000000040B987:
	add	rax,2h
	mov	edx,45h
	mov	rcx,rbx
	mov	[rbx+18h],rax
	call	40CB30h
	jmp	40ACDBh

l000000000040B9A1:
	add	rax,1h
	mov	[rbx+18h],rax
	xor	eax,eax
	jmp	40ACDBh

l000000000040B9B0:
	mov	rcx,rbx
	call	40D230h
	mov	rcx,rbx
	mov	rsi,rax
	call	40D230h
	mov	rcx,rbx
	mov	rdi,rax
	call	40D230h
	jmp	40ACDBh

l000000000040B9D3:
	mov	rcx,rbx
	call	40D230h
	mov	rsi,rax
	jmp	40ADE4h

l000000000040B9E3:
	add	rax,1h
	mov	edx,45h
	mov	rcx,rbx
	mov	[rbx+18h],rax
	call	40CB30h
	jmp	40A3DCh

l000000000040B9FD:
	cmp	al,69h
	jz	409D6Fh

l000000000040BA05:
	jmp	409D79h

l000000000040BA0A:
	add	rax,1h
	mov	[rbx+18h],rax
	jmp	40A54Bh

l000000000040BA17:
	mov	rcx,rbx
	call	4080A0h
	mov	rsi,rax
	jmp	40B00Ah

l000000000040BA27:
	mov	rcx,rbx
	call	409C60h
	mov	r8,rdi
	mov	r9,rax
	mov	edx,4h
	mov	rcx,rbx
	call	403730h
	mov	r9,rax
	jmp	40B12Fh

l000000000040BA4A:
	mov	edx,45h
	mov	rcx,rbx
	call	40CB30h
	mov	rsi,rax
	jmp	40ADE4h

l000000000040BA5F:
	movzx	eax,byte ptr [rax]
	lea	edx,[rax-72h]
	cmp	dl,1h
	jbe	40BA75h

l000000000040BA6A:
	sub	eax,63h
	cmp	al,1h
	ja	40AD78h

l000000000040BA75:
	mov	rcx,rbx
	mov	[rsp+48h],r9
	call	4080A0h
	mov	r9,[rsp+48h]
	mov	[rsp+40h],rax
	jmp	40AD8Fh

l000000000040BA91:
	mov	edx,69h

l000000000040BA96:
	mov	qword ptr [rsp+30h],+0h
	jmp	40A436h

l000000000040BAA4:
	mov	qword ptr [rsp+30h],+0h
	jmp	40A3FDh

l000000000040BAB2:
	cmp	byte ptr [rax+1h],69h
	jnz	40BA96h

l000000000040BAB8:
	add	rax,2h
	mov	edx,45h
	mov	rcx,rbx
	mov	[rbx+18h],rax
	call	40CB30h
	jmp	40AF53h

l000000000040BAD2:
	add	rax,1h
	mov	[rbx+18h],rax
	xor	eax,eax
	jmp	40AF53h

l000000000040BAE1:
	add	rax,1h
	mov	edx,45h
	mov	rcx,rbx
	mov	[rbx+18h],rax
	call	40CB30h
	jmp	40A553h

l000000000040BAFB:
	mov	rcx,rbx
	call	409C60h
	mov	r8,rsi
	mov	r9,rax
	mov	edx,4h
	mov	rcx,rbx
	call	403730h
	mov	rsi,rax
	jmp	40B209h

l000000000040BB1E:
	mov	rcx,rbx
	call	4080A0h
	jmp	40A553h

l000000000040BB2B:
	mov	rcx,rbx
	call	409C60h
	mov	r8,rsi
	mov	r9,rax
	mov	edx,4h
	mov	rcx,rbx
	call	403730h
	mov	rsi,rax
	jmp	40B442h

l000000000040BB4E:
	add	rax,1h
	mov	edx,45h
	mov	rcx,rbx
	mov	[rbx+18h],rax
	call	40CB30h
	jmp	40A636h

l000000000040BB68:
	mov	rcx,rbx
	call	409C60h
	mov	r8,rdi
	mov	r9,rax
	mov	edx,4h
	mov	rcx,rbx
	call	403730h
	mov	r9,rax
	jmp	40B2AEh

l000000000040BB8B:
	mov	rcx,rbx
	call	409C60h
	mov	r8,rsi
	mov	r9,rax
	mov	edx,4h
	mov	rcx,rbx
	call	403730h
	mov	rsi,rax
	jmp	40ADE4h

l000000000040BBAE:
	add	rax,1h
	mov	[rbx+18h],rax
	jmp	40A492h
000000000040BBBB                                  0F 1F 44 00 00            ..D..

;; fn000000000040BBC0: 000000000040BBC0
;;   Called from:
;;     000000000040BF5D (in fn000000000040BBC0)
;;     000000000040BFBE (in fn000000000040BBC0)
;;     000000000040C0ED (in fn000000000040C0C0)
fn000000000040BBC0 proc
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,40h
	mov	rax,[rcx+18h]
	mov	rsi,rcx
	movzx	edx,byte ptr [rax]
	cmp	dl,53h
	jz	40BD71h

l000000000040BBDD:
	jle	40BC40h

l000000000040BBDF:
	cmp	dl,55h
	jz	40BC20h

l000000000040BBE4:
	cmp	dl,5Ah
	jnz	40BD10h

l000000000040BBED:
	add	rax,1h
	xor	edx,edx
	mov	[rcx+18h],rax
	call	40C0C0h
	mov	rdx,[rsi+18h]
	mov	rdi,rax
	cmp	byte ptr [rdx],45h
	jz	40BF42h

l000000000040BC0C:
	xor	ebx,ebx

l000000000040BC0E:
	mov	rax,rbx
	add	rsp,40h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
000000000040BC1C                                     0F 1F 40 00             ..@.

l000000000040BC20:
	call	409850h
	mov	rbx,rax

l000000000040BC28:
	mov	rax,rbx
	add	rsp,40h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
000000000040BC36                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l000000000040BC40:
	cmp	dl,4Eh
	jnz	40BD10h

l000000000040BC49:
	add	rax,1h
	lea	rdx,[rsp+38h]
	mov	r8d,1h
	mov	[rcx+18h],rax
	call	403810h
	test	rax,rax
	mov	rbp,rax
	jz	40BC0Ch

l000000000040BC69:
	xor	edx,edx
	mov	rcx,rsi
	xor	edi,edi
	call	403930h
	mov	rdx,[rsi+18h]
	mov	r12,rax
	movzx	ebx,byte ptr [rdx]
	nop

l000000000040BC80:
	test	bl,bl
	jz	40BD01h

l000000000040BC84:
	cmp	bl,44h
	jz	40BEA0h

l000000000040BC8D:
	lea	eax,[rbx-30h]
	cmp	al,9h
	jbe	40BE30h

l000000000040BC98:
	lea	eax,[rbx-61h]
	cmp	al,19h
	jbe	40BE30h

l000000000040BCA3:
	cmp	bl,43h
	setz	cl
	cmp	bl,55h
	setz	al
	or	cl,al
	jnz	40BE30h

l000000000040BCB7:
	cmp	bl,4Ch
	jz	40BE30h

l000000000040BCC0:
	cmp	bl,53h
	jz	40BF10h

l000000000040BCC9:
	cmp	bl,49h
	jz	40BEF0h

l000000000040BCD2:
	cmp	bl,54h
	jz	40BF35h

l000000000040BCDB:
	cmp	bl,45h
	jz	40C079h

l000000000040BCE4:
	cmp	bl,4Dh
	jnz	40BD01h

l000000000040BCE9:
	test	rdi,rdi
	jz	40BD01h

l000000000040BCEE:
	lea	rax,[rdx+1h]
	mov	[rsi+18h],rax
	movzx	ebx,byte ptr [rdx+1h]
	mov	rdx,rax
	test	bl,bl
	jnz	40BC84h

l000000000040BD01:
	mov	qword ptr [rbp+0h],+0h
	xor	ebx,ebx
	jmp	40BC0Eh

l000000000040BD10:
	mov	rcx,rsi
	call	409850h
	mov	rdx,[rsi+18h]
	mov	rbx,rax
	cmp	byte ptr [rdx],49h
	jnz	40BC28h

l000000000040BD28:
	test	rax,rax
	jz	40BC0Ch

l000000000040BD31:
	mov	eax,[rsi+38h]
	cmp	eax,[rsi+3Ch]
	jge	40BC0Ch

l000000000040BD3D:
	mov	rdx,[rsi+30h]
	movsxd	rcx,eax
	add	eax,1h
	mov	[rdx+rcx*8],rbx
	mov	rcx,rsi
	mov	[rsi+38h],eax
	call	409C60h
	mov	r8,rbx
	mov	r9,rax
	mov	edx,4h
	mov	rcx,rsi
	call	403730h
	mov	rbx,rax
	jmp	40BC28h

l000000000040BD71:
	cmp	byte ptr [rax+1h],74h
	jz	40BDB4h

l000000000040BD77:
	xor	edx,edx
	call	403990h
	mov	rdi,rax
	mov	rax,[rsi+18h]
	mov	rbx,rdi
	cmp	byte ptr [rax],49h
	jnz	40BC28h

l000000000040BD91:
	mov	rcx,rsi
	call	409C60h
	mov	r8,rdi
	mov	r9,rax
	mov	edx,4h
	mov	rcx,rsi
	call	403730h
	mov	rbx,rax
	jmp	40BC28h

l000000000040BDB4:
	add	rax,2h
	mov	[rcx+18h],rax
	call	409850h
	lea	rdx,[000000000048F30B]                                 ; [rip+00083543]
	mov	rbx,rax
	mov	r8d,3h
	mov	rcx,rsi
	call	4037B0h
	mov	r9,rbx
	mov	r8,rax
	mov	edx,1h
	mov	rcx,rsi
	call	403730h
	mov	rdi,rax
	mov	rax,[rsi+18h]
	add	dword ptr [rsi+50h],3h
	mov	rbx,rdi
	cmp	byte ptr [rax],49h
	jnz	40BC28h

l000000000040BE03:
	test	rdi,rdi
	jz	40BC0Ch

l000000000040BE0C:
	mov	eax,[rsi+38h]
	cmp	eax,[rsi+3Ch]
	jge	40BC0Ch

l000000000040BE18:
	mov	rdx,[rsi+30h]
	movsxd	rcx,eax
	add	eax,1h
	mov	[rdx+rcx*8],rdi
	mov	[rsi+38h],eax
	jmp	40BD91h
000000000040BE2E                                           66 90               f.

l000000000040BE30:
	mov	rcx,rsi
	call	409850h
	test	rdi,rdi
	jz	40BED0h

l000000000040BE41:
	mov	edx,1h

l000000000040BE46:
	mov	r8,rdi
	mov	r9,rax
	mov	rcx,rsi
	call	403730h
	mov	rdi,rax

l000000000040BE57:
	cmp	bl,53h
	jz	40BE8Bh

l000000000040BE5C:
	mov	rdx,[rsi+18h]
	cmp	byte ptr [rdx],45h
	jz	40BEC4h

l000000000040BE65:
	test	rdi,rdi
	jz	40BD01h

l000000000040BE6E:
	mov	edx,[rsi+38h]
	cmp	edx,[rsi+3Ch]
	jge	40BD01h

l000000000040BE7A:
	mov	rax,[rsi+30h]
	movsxd	rcx,edx
	add	edx,1h
	mov	[rax+rcx*8],rdi
	mov	[rsi+38h],edx

l000000000040BE8B:
	mov	rdx,[rsi+18h]
	movzx	ebx,byte ptr [rdx]
	jmp	40BC80h
000000000040BE97                      66 0F 1F 84 00 00 00 00 00        f........

l000000000040BEA0:
	movzx	eax,byte ptr [rdx+1h]
	mov	rcx,rsi
	and	eax,0DFh
	cmp	al,54h
	jnz	40BEE0h

l000000000040BEAE:
	call	4080A0h

l000000000040BEB3:
	test	rdi,rdi
	jnz	40BE41h

l000000000040BEB8:
	mov	rdx,[rsi+18h]
	mov	rdi,rax
	cmp	byte ptr [rdx],45h
	jnz	40BE65h

l000000000040BEC4:
	mov	ebx,45h
	jmp	40BC8Dh
000000000040BECE                                           66 90               f.

l000000000040BED0:
	mov	rdi,rax
	jmp	40BE57h
000000000040BED8                         0F 1F 84 00 00 00 00 00         ........

l000000000040BEE0:
	call	409850h
	jmp	40BEB3h
000000000040BEE7                      66 0F 1F 84 00 00 00 00 00        f........

l000000000040BEF0:
	test	rdi,rdi
	jz	40BD01h

l000000000040BEF9:
	mov	rcx,rsi
	call	409C60h
	mov	edx,4h
	jmp	40BE46h
000000000040BF0B                                  0F 1F 44 00 00            ..D..

l000000000040BF10:
	mov	edx,1h
	mov	rcx,rsi
	call	403990h
	test	rdi,rdi
	jnz	40BE41h

l000000000040BF26:
	mov	rdx,[rsi+18h]
	mov	rdi,rax
	movzx	ebx,byte ptr [rdx]
	jmp	40BC80h

l000000000040BF35:
	mov	rcx,rsi
	call	403D80h
	jmp	40BEB3h

l000000000040BF42:
	lea	rax,[rdx+1h]
	mov	[rsi+18h],rax
	movzx	eax,byte ptr [rdx+1h]
	cmp	al,73h
	jz	40C044h

l000000000040BF56:
	cmp	al,64h
	jz	40BFA1h

l000000000040BF5A:
	mov	rcx,rsi
	call	40BBC0h
	test	rax,rax
	mov	r9,rax
	jz	40BF80h

l000000000040BF6A:
	mov	eax,[rax]
	cmp	eax,44h
	jz	40BF80h

l000000000040BF71:
	cmp	eax,46h
	jnz	40C023h

l000000000040BF7A:
	nop	word ptr [rax+rax+0h]

l000000000040BF80:
	mov	r8,rdi
	mov	edx,2h
	mov	rcx,rsi
	call	403730h
	mov	rbx,rax
	mov	rax,rbx
	add	rsp,40h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret

l000000000040BFA1:
	add	rdx,2h
	mov	rcx,rsi
	mov	[rsi+18h],rdx
	call	403D30h
	test	eax,eax
	mov	ebp,eax
	js	40BC0Ch

l000000000040BFBB:
	mov	rcx,rsi
	call	40BBC0h
	test	rax,rax
	mov	rbx,rax
	jz	40BFD7h

l000000000040BFCB:
	mov	edx,[rax]
	cmp	edx,44h
	jz	40BFD7h

l000000000040BFD2:
	cmp	edx,46h
	jnz	40C010h

l000000000040BFD7:
	mov	edx,[rsi+28h]
	xor	r9d,r9d
	cmp	edx,[rsi+2Ch]
	jge	40BF80h

l000000000040BFE2:
	movsxd	rax,edx
	add	edx,1h
	lea	rcx,[rax+rax*2]
	mov	rax,[rsi+20h]
	mov	[rsi+28h],edx
	lea	r9,[rax+rcx*8]
	test	r9,r9
	jz	40BF80h

l000000000040BFFC:
	mov	dword ptr [r9],45h
	mov	[r9+10h],ebp
	mov	[r9+8h],rbx
	jmp	40BF80h

l000000000040C010:
	mov	rcx,rsi
	call	403DF0h
	test	eax,eax
	jnz	40BFD7h

l000000000040C01C:
	xor	ebx,ebx
	jmp	40BC0Eh

l000000000040C023:
	mov	rcx,rsi
	mov	[rsp+28h],r9
	call	403DF0h
	test	eax,eax
	mov	r9,[rsp+28h]
	jnz	40BF80h

l000000000040C03D:
	xor	ebx,ebx
	jmp	40BC0Eh

l000000000040C044:
	add	rdx,2h
	mov	rcx,rsi
	mov	[rsi+18h],rdx
	call	403DF0h
	test	eax,eax
	jz	40BC0Ch

l000000000040C05C:
	lea	rdx,[000000000048F2FC]                                 ; [rip+00083299]
	mov	r8d,0Eh
	mov	rcx,rsi
	call	4037B0h
	mov	r9,rax
	jmp	40BF80h

l000000000040C079:
	test	rdi,rdi
	mov	[rbp+0h],rdi
	jz	40BC0Ch

l000000000040C086:
	test	r12,r12
	jz	40C09Ah

l000000000040C08B:
	mov	rax,[rsp+38h]
	mov	[rsp+38h],r12
	mov	[r12+8h],rax

l000000000040C09A:
	mov	rax,[rsi+18h]
	cmp	byte ptr [rax],45h
	jnz	40BC0Ch

l000000000040C0A7:
	add	rax,1h
	mov	rbx,[rsp+38h]
	mov	[rsi+18h],rax
	jmp	40BC28h
000000000040C0B9                            0F 1F 80 00 00 00 00          .......

;; fn000000000040C0C0: 000000000040C0C0
;;   Called from:
;;     0000000000408029 (in fn0000000000407F20)
;;     000000000040BBF7 (in fn000000000040BBC0)
;;     000000000040CA21 (in fn000000000040C6B0)
;;     000000000040CB1C (in fn000000000040C6B0)
fn000000000040C0C0 proc
	push	r13
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,28h
	mov	rax,[rcx+18h]
	mov	rsi,rcx
	mov	edi,edx
	movzx	ecx,byte ptr [rax]
	cmp	cl,54h
	jz	40C193h

l000000000040C0E1:
	cmp	cl,47h
	jz	40C193h

l000000000040C0EA:
	mov	rcx,rsi
	call	40BBC0h
	test	rax,rax
	mov	rbx,rax
	jz	40C104h

l000000000040C0FA:
	test	edi,edi
	jz	40C104h

l000000000040C0FE:
	test	byte ptr [rsi+10h],1h
	jz	40C154h

l000000000040C104:
	mov	rax,[rsi+18h]
	movzx	eax,byte ptr [rax]
	cmp	al,45h
	setz	dl
	test	al,al
	setz	al
	or	dl,al
	jnz	40C183h

l000000000040C119:
	test	rbx,rbx
	jz	40C183h

l000000000040C11E:
	mov	rdx,rbx

l000000000040C121:
	mov	eax,[rdx]
	cmp	eax,4h
	jz	40C1C0h

l000000000040C12C:
	jc	40C2D0h

l000000000040C132:
	sub	eax,1Ch
	cmp	eax,4h
	ja	40C2D0h

l000000000040C13E:
	mov	rdx,[rdx+8h]
	test	rdx,rdx
	jnz	40C121h

l000000000040C147:
	jmp	40C22Ch
000000000040C14C                                     0F 1F 40 00             ..@.

l000000000040C150:
	mov	rbx,[rbx+8h]

l000000000040C154:
	mov	eax,[rbx]
	lea	edx,[rax-1Ch]
	cmp	edx,4h
	jbe	40C150h

l000000000040C15E:
	cmp	eax,2h
	jnz	40C183h

l000000000040C163:
	mov	rdx,[rbx+10h]
	mov	eax,[rdx]
	sub	eax,1Ch
	cmp	eax,4h
	ja	40C17Fh

l000000000040C171:
	mov	rdx,[rdx+8h]
	mov	eax,[rdx]
	sub	eax,1Ch
	cmp	eax,4h
	jbe	40C171h

l000000000040C17F:
	mov	[rbx+10h],rdx

l000000000040C183:
	mov	rax,rbx
	add	rsp,28h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	ret

l000000000040C193:
	mov	ecx,[rsi+50h]
	lea	edx,[rcx+14h]
	mov	[rsi+50h],edx
	movzx	edx,byte ptr [rax]
	cmp	dl,54h
	jz	40C290h

l000000000040C1A8:
	cmp	dl,47h
	jz	40C253h

l000000000040C1B1:
	xor	eax,eax
	add	rsp,28h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	ret

l000000000040C1C0:
	mov	rax,[rdx+8h]
	test	rax,rax
	jz	40C227h

l000000000040C1C9:
	mov	edi,[rax]
	lea	ecx,[rdi-1h]
	cmp	ecx,32h
	ja	40C227h

l000000000040C1D3:
	mov	edx,1h
	mov	r8,40000000000C0h
	shl	rdx,cl
	test	rdx,r8
	jnz	40C2D0h

l000000000040C1EE:
	and	edx,3h
	mov	r9d,1h
	jnz	40C21Eh

l000000000040C1F9:
	jmp	40C227h
000000000040C1FB                                  0F 1F 44 00 00            ..D..

l000000000040C200:
	mov	edi,[rax]
	lea	ecx,[rdi-1h]
	cmp	ecx,32h
	ja	40C227h

l000000000040C20A:
	mov	rdx,r9
	shl	rdx,cl
	test	rdx,r8
	jnz	40C2D0h

l000000000040C219:
	and	edx,3h
	jz	40C227h

l000000000040C21E:
	mov	rax,[rax+10h]
	test	rax,rax
	jnz	40C200h

l000000000040C227:
	mov	edx,1h

l000000000040C22C:
	mov	rcx,rsi
	call	4095D0h
	mov	r8,rbx
	mov	r9,rax
	mov	edx,3h
	mov	rcx,rsi
	add	rsp,28h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	jmp	403730h

l000000000040C253:
	lea	rdx,[rax+1h]
	mov	[rsi+18h],rdx
	cmp	byte ptr [rax+1h],0h
	jz	40C1B1h

l000000000040C265:
	lea	rdx,[rax+2h]
	mov	[rsi+18h],rdx
	movzx	edi,byte ptr [rax+1h]
	lea	edx,[rdi-41h]
	cmp	dl,31h
	ja	40C1B1h

l000000000040C27D:
	lea	rcx,[000000000048F310]                                 ; [rip+0008308C]
	movzx	edx,dl
	movsxd	rdx,dword ptr [rcx+rdx*4]
	add	rcx,rdx
	jmp	rcx

l000000000040C290:
	lea	rdx,[rax+1h]
	mov	[rsi+18h],rdx
	cmp	byte ptr [rax+1h],0h
	jz	40C1B1h

l000000000040C2A2:
	lea	rdx,[rax+2h]
	mov	[rsi+18h],rdx
	movzx	eax,byte ptr [rax+1h]
	sub	eax,43h
	cmp	al,33h
	ja	40C1B1h

l000000000040C2B9:
	lea	rdx,[000000000048F3D8]                                 ; [rip+00083118]
	movzx	eax,al
	movsxd	rax,dword ptr [rdx+rax*4]
	add	rdx,rax
	jmp	rdx
000000000040C2CC                                     0F 1F 40 00             ..@.

l000000000040C2D0:
	xor	edx,edx
	jmp	40C22Ch
000000000040C2D7                      66 0F 1F 84 00 00 00 00 00        f........
000000000040C2E0 48 8D 4E 18 E8 77 79 FF FF 83 F8 01 0F 8E BF FE H.N..wy.........
000000000040C2F0 FF FF 48 8B 56 18 80 3A 00 0F 84 B2 FE FF FF 48 ..H.V..:.......H
000000000040C300 8D 7A 01 48 89 7E 18 80 3A 5F 0F 85 A1 FE FF FF .z.H.~..:_......
000000000040C310 8D 68 FF 45 31 ED 66 2E 0F 1F 84 00 00 00 00 00 .h.E1.f.........
000000000040C320 0F B6 07 84 C0 0F 84 86 FE FF FF 3C 24 BB 01 00 ...........<$...
000000000040C330 00 00 75 20 E9 D7 02 00 00 0F 1F 80 00 00 00 00 ..u ............
000000000040C340 0F B6 0C 1F 4C 8D 4B 01 84 C9 74 12 80 F9 24 74 ....L.K...t...$t
000000000040C350 0D 4C 89 CB 39 EB 41 89 DC 7C E5 48 63 DB 48 89 .L..9.A..|.Hc.H.
000000000040C360 FA 45 89 E0 48 89 F1 E8 44 74 FF FF 48 89 DF 48 .E..H...Dt..H..H
000000000040C370 03 7E 18 44 29 E5 48 85 C0 49 89 C1 48 89 7E 18 .~.D).H..I..H.~.
000000000040C380 0F 84 2B FE FF FF 4D 85 ED 0F 84 E1 02 00 00 4D ..+...M........M
000000000040C390 89 E8 BA 3E 00 00 00 48 89 F1 E8 91 73 FF FF 48 ...>...H....s..H
000000000040C3A0 85 C0 49 89 C5 0F 84 06 FE FF FF 85 ED 0F 8F 6D ..I............m
000000000040C3B0 FF FF FF 45 31 C9 4D 89 E8 BA 3D 00 00 00 E9 7C ...E1.M...=....|
000000000040C3C0 FE FF FF 48 89 F1 E8 F5 F7 FF FF 45 31 C9 49 89 ...H.......E1.I.
000000000040C3D0 C0 BA 13 00 00 00 E9 64 FE FF FF 0F 1F 44 00 00 .......d.....D..
000000000040C3E0 48 89 F1 E8 D8 F7 FF FF 48 89 F1 48 89 C3 E8 ED H.......H..H....
000000000040C3F0 78 FF FF 49 89 D8 49 89 C1 BA 16 00 00 00 E9 3C x..I..I........<
000000000040C400 FE FF FF 31 D2 48 89 F1 E8 B3 FC FF FF 45 31 C9 ...1.H.......E1.
000000000040C410 49 89 C0 BA 17 00 00 00 E9 22 FE FF FF 0F 1F 00 I........"......
000000000040C420 80 78 02 00 0F 84 4E 02 00 00 48 8D 50 03 48 89 .x....N...H.P.H.
000000000040C430 56 18 80 78 02 6E 0F 85 3C 02 00 00 31 D2 48 89 V..x.n..<...1.H.
000000000040C440 F1 E8 7A FC FF FF 45 31 C9 49 89 C0 BA 48 00 00 ..z...E1.I...H..
000000000040C450 00 E9 E9 FD FF FF BA 76 00 00 00 48 89 F1 E8 AD .......v...H....
000000000040C460 7A FF FF 85 C0 0F 84 46 FD FF FF 31 D2 48 89 F1 z......F...1.H..
000000000040C470 E8 4B FC FF FF 45 31 C9 49 89 C0 BA 10 00 00 00 .K...E1.I.......
000000000040C480 E9 BA FD FF FF 31 D2 48 89 F1 E8 81 7A FF FF 85 .....1.H....z...
000000000040C490 C0 0F 84 1A FD FF FF 31 D2 48 89 F1 E8 6F 7A FF .......1.H...oz.
000000000040C4A0 FF 85 C0 0F 84 08 FD FF FF 31 D2 48 89 F1 E8 0D .........1.H....
000000000040C4B0 FC FF FF 45 31 C9 49 89 C0 BA 11 00 00 00 E9 7C ...E1.I........|
000000000040C4C0 FD FF FF 48 89 F1 E8 F5 F6 FF FF 45 31 C9 49 89 ...H.......E1.I.
000000000040C4D0 C0 BA 15 00 00 00 E9 64 FD FF FF BA 68 00 00 00 .......d....h...
000000000040C4E0 48 89 F1 E8 28 7A FF FF 85 C0 0F 84 C1 FC FF FF H...(z..........
000000000040C4F0 31 D2 48 89 F1 E8 C6 FB FF FF 45 31 C9 49 89 C0 1.H.......E1.I..
000000000040C500 BA 0F 00 00 00 E9 35 FD FF FF 83 C1 0F 89 4E 50 ......5.......NP
000000000040C510 48 89 F1 E8 88 BB FF FF 45 31 C9 49 89 C0 BA 09 H.......E1.I....
000000000040C520 00 00 00 E9 17 FD FF FF 83 C1 0A 89 4E 50 48 89 ............NPH.
000000000040C530 F1 E8 6A BB FF FF 45 31 C9 49 89 C0 BA 0A 00 00 ..j...E1.I......
000000000040C540 00 E9 F9 FC FF FF 48 89 F1 E8 52 BB FF FF 45 31 ......H...R...E1
000000000040C550 C9 49 89 C0 BA 0D 00 00 00 E9 E1 FC FF FF 48 89 .I............H.
000000000040C560 F1 E8 3A BB FF FF 45 31 C9 49 89 C0 BA 12 00 00 ..:...E1.I......
000000000040C570 00 E9 C9 FC FF FF 48 89 F1 E8 22 BB FF FF 45 31 ......H..."...E1
000000000040C580 C9 49 89 C0 BA 0C 00 00 00 E9 B1 FC FF FF 48 89 .I............H.
000000000040C590 F1 E8 2A F6 FF FF 45 31 C9 49 89 C0 BA 14 00 00 ..*...E1.I......
000000000040C5A0 00 E9 99 FC FF FF 48 89 F1 E8 F2 BA FF FF 45 31 ......H.......E1
000000000040C5B0 C9 49 89 C0 BA 0E 00 00 00 E9 81 FC FF FF 48 89 .I............H.
000000000040C5C0 F1 E8 DA BA FF FF 48 8D 4E 18 48 89 C3 E8 8E 76 ......H.N.H....v
000000000040C5D0 FF FF 85 C0 0F 88 D7 FB FF FF 48 8B 56 18 80 3A ..........H.V..:
000000000040C5E0 5F 0F 85 CA FB FF FF 48 83 C2 01 48 89 F1 48 89 _......H...H..H.
000000000040C5F0 56 18 E8 A9 BA FF FF 83 46 50 05 49 89 C0 49 89 V.......FP.I..I.
000000000040C600 D9 BA 0B 00 00 00 E9 34 FC FF FF 0F 1F 44 00 00 .......4.....D..
000000000040C610 0F B6 47 01 3C 53 0F 84 7E 00 00 00 3C 5F 74 72 ..G.<S..~...<_tr
000000000040C620 3C 24 0F 85 89 FB FF FF 41 B8 24 00 00 00 8B 46 <$......A.$....F
000000000040C630 28 3B 46 2C 7D 6C 48 63 D0 83 C0 01 48 8D 0C 52 (;F,}lHc....H..R
000000000040C640 48 8B 56 20 89 46 28 4C 8D 0C CA 4D 85 C9 74 52 H.V .F(L...M..tR
000000000040C650 45 89 41 08 48 8B 46 18 83 ED 02 41 C7 01 3F 00 E.A.H.F....A..?.
000000000040C660 00 00 48 8D 78 02 48 89 7E 18 E9 17 FD FF FF 90 ..H.x.H.~.......
000000000040C670 4D 89 CD E9 33 FD FF FF 31 D2 48 89 F1 E8 3E FA M...3...1.H...>.
000000000040C680 FF FF 45 31 C9 49 89 C0 BA 47 00 00 00 E9 AD FB ..E1.I...G......
000000000040C690 FF FF 41 B8 2E 00 00 00 EB 94 41 B8 2F 00 00 00 ..A.......A./...
000000000040C6A0 EB 8C 48 83 46 18 02 E9 05 FB FF FF 0F 1F 40 00 ..H.F.........@.

;; fn000000000040C6B0: 000000000040C6B0
;;   Called from:
;;     000000000040FBF8 (in fn000000000040FB80)
;;     000000000040FCEE (in fn000000000040FCE0)
fn000000000040C6B0 proc
	push	rbp
	push	r14
	push	r13
	push	r12
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,+1F0h
	lea	rbp,[rsp+80h]
	movzx	r14d,byte ptr [rcx]
	mov	r13,rcx
	mov	r12,rdx
	mov	rbx,r8
	cmp	r14b,5Fh
	jz	40C9C0h

l000000000040C6E0:
	lea	rdi,[000000000048EAE0]                                 ; [rip+000823F9]
	mov	ecx,8h
	mov	rsi,r13

l000000000040C6EF:
	rep cmpsb

l000000000040C6F1:
	seta	dl
	setc	al
	xor	edi,edi
	cmp	dl,al
	jnz	40C71Ch

l000000000040C6FD:
	movzx	eax,byte ptr [r13+8h]
	cmp	al,5Fh
	setz	cl
	cmp	al,2Eh
	setz	dl
	or	cl,dl
	jnz	40C98Dh

l000000000040C714:
	cmp	al,24h
	jz	40C98Dh

l000000000040C71C:
	mov	rcx,r13
	call	41BCB8h
	mov	rdx,rax
	lea	rax,[r13+rax+0h]
	mov	[rbp-60h],r13
	mov	dword ptr [rbp-50h],11h
	mov	[rbp-48h],r13
	mov	[rbp-58h],rax
	lea	eax,[rdx+rdx]
	mov	dword ptr [rbp-38h],0h
	mov	[rbp-24h],edx
	mov	dword ptr [rbp-28h],0h
	mov	[rbp-34h],eax
	cdqe
	mov	dword ptr [rbp-20h],0h
	lea	rax,[rax+rax*2]
	mov	qword ptr [rbp-18h],+0h
	mov	dword ptr [rbp-10h],0h
	mov	dword ptr [rbp-0Ch],0h
	mov	dword ptr [rbp-8h],0h
	lea	rax,[0010h+rax*8]
	call	4116F0h
	movsxd	rdx,edx
	sub	rsp,rax
	lea	rax,[0016h+rdx*8]
	lea	rcx,[rsp+20h]
	and	rax,0F0h
	call	4116F0h
	sub	rsp,rax
	cmp	edi,1h
	mov	[rbp-40h],rcx
	lea	rax,[rsp+20h]
	mov	[rbp-30h],rax
	jz	40C9D4h

l000000000040C7C2:
	jc	40C9EEh

l000000000040C7C8:
	cmp	edi,3h
	ja	40C9EEh

l000000000040C7D1:
	cmp	byte ptr [r13+0Bh],5Fh
	lea	r14,[r13+0Bh]
	mov	[rbp-48h],r14
	jnz	40C7EBh

l000000000040C7E0:
	cmp	byte ptr [r13+0Ch],5Ah
	jz	40CB0Bh

l000000000040C7EB:
	lea	rsi,[rbp-60h]
	mov	rcx,r14
	call	41BCB8h
	mov	rdx,r14
	mov	r8d,eax
	mov	rcx,rsi
	call	4037B0h

l000000000040C805:
	xor	edx,edx
	cmp	edi,2h
	mov	rcx,rsi
	setnz	dl
	mov	r8,rax
	xor	r9d,r9d
	add	edx,42h
	call	403730h
	mov	rsi,[rbp-48h]
	mov	rdi,rax
	mov	rcx,rsi
	call	41BCB8h
	add	rax,rsi
	mov	[rbp-48h],rax
	movzx	eax,byte ptr [rax]

l000000000040C837:
	test	al,al
	jnz	40C9DAh

l000000000040C83F:
	test	rdi,rdi
	jz	40C9DAh

l000000000040C848:
	lea	rdx,[rbp+14Ch]
	lea	rcx,[rbp+15Ch]
	mov	r8,rdi
	mov	[rbp+118h],rbx
	mov	qword ptr [rbp+100h],+0h
	mov	rbx,rsp
	mov	byte ptr [rbp+108h],0h
	mov	qword ptr [rbp+120h],+0h
	mov	qword ptr [rbp+128h],+0h
	mov	dword ptr [rbp+134h],0h
	mov	dword ptr [rbp+138h],0h
	mov	[rbp+110h],r12
	mov	dword ptr [rbp+130h],0h
	mov	qword ptr [rbp+140h],+0h
	mov	dword ptr [rbp+148h],0h
	mov	dword ptr [rbp+14Ch],0h
	mov	qword ptr [rbp+150h],+0h
	mov	dword ptr [rbp+158h],0h
	mov	dword ptr [rbp+15Ch],0h
	call	403B70h
	movsxd	rax,dword ptr [rbp+14Ch]
	mov	edx,[rbp+15Ch]
	mov	qword ptr [rbp+160h],+0h
	imul	edx,eax
	shl	rax,4h
	add	rax,10h
	mov	[rbp+15Ch],edx
	call	4116F0h
	sub	rsp,rax
	movsxd	rax,edx
	shl	rax,4h
	lea	rcx,[rsp+20h]
	add	rax,10h
	call	4116F0h
	mov	edx,11h
	sub	rsp,rax
	mov	[rbp+140h],rcx
	mov	r8,rdi
	lea	rax,[rsp+20h]
	mov	rcx,rbp
	mov	[rbp+150h],rax
	call	4042F0h
	mov	rdx,[rbp+100h]
	mov	rsp,rbx
	mov	r8,[rbp+118h]
	mov	rcx,rbp
	mov	byte ptr [rbp+rdx+0h],0h
	call	qword ptr [rbp+110h]
	mov	edx,[rbp+130h]
	xor	eax,eax
	test	edx,edx
	setz	al
	jmp	40C9DCh

l000000000040C98D:
	movzx	eax,byte ptr [r13+9h]
	cmp	al,49h
	setz	dl
	jz	40C9A3h

l000000000040C999:
	xor	edi,edi
	cmp	al,44h
	jnz	40C71Ch

l000000000040C9A3:
	xor	edi,edi
	cmp	byte ptr [r13+0Ah],5Fh
	jnz	40C71Ch

l000000000040C9B0:
	mov	edi,edx
	shl	edi,1Fh
	sar	edi,1Fh
	add	edi,3h
	jmp	40C71Ch

l000000000040C9C0:
	cmp	byte ptr [rcx+1h],5Ah
	mov	edi,1h
	jnz	40C6E0h

l000000000040C9CF:
	jmp	40C71Ch

l000000000040C9D4:
	cmp	r14b,5Fh
	jz	40CA06h

l000000000040C9DA:
	xor	eax,eax

l000000000040C9DC:
	lea	rsp,[rbp+170h]
	pop	rbx
	pop	rsi
	pop	rdi
	pop	r12
	pop	r13
	pop	r14
	pop	rbp
	ret

l000000000040C9EE:
	lea	rcx,[rbp-60h]
	call	4080A0h
	mov	rdi,rax
	mov	rax,[rbp-48h]
	movzx	eax,byte ptr [rax]
	jmp	40C837h

l000000000040CA06:
	cmp	byte ptr [r13+1h],5Ah
	jnz	40C9DAh

l000000000040CA0D:
	lea	rsi,[rbp-60h]
	add	r13,2h
	mov	edx,1h
	mov	[rbp-48h],r13
	mov	rcx,rsi
	call	40C0C0h
	test	byte ptr [rbp-50h],1h
	mov	rdi,rax
	jnz	40CA65h

l000000000040CA2F:
	mov	rax,[rbp-48h]
	movzx	eax,byte ptr [rax]
	jmp	40C837h
000000000040CA3B                                  0F 1F 44 00 00            ..D..

l000000000040CA40:
	mov	[rbp-48h],r8
	mov	rcx,rsi
	sub	r8d,edx
	call	4037B0h
	mov	r8,rdi
	mov	r9,rax
	mov	edx,4Bh
	mov	rcx,rsi
	call	403730h
	mov	rdi,rax

l000000000040CA65:
	mov	rdx,[rbp-48h]
	movzx	eax,byte ptr [rdx]
	cmp	al,2Eh
	jnz	40C837h

l000000000040CA74:
	movzx	eax,byte ptr [rdx+1h]
	lea	ecx,[rax-61h]
	cmp	cl,19h
	jbe	40CAE2h

l000000000040CA80:
	cmp	al,5Fh
	jz	40CAE2h

l000000000040CA84:
	sub	eax,30h
	cmp	al,9h
	ja	40CB26h

l000000000040CA8F:
	movzx	r10d,byte ptr [rdx]
	mov	r8,rdx
	nop	word ptr cs:[rax+rax+0h]

l000000000040CAA0:
	cmp	r10b,2Eh
	jnz	40CA40h

l000000000040CAA6:
	movzx	eax,byte ptr [r8+1h]
	sub	eax,30h
	cmp	al,9h
	ja	40CA40h

l000000000040CAB2:
	movzx	r10d,byte ptr [r8+2h]
	lea	rcx,[r8+2h]
	mov	r8,rcx
	lea	eax,[r10-30h]
	cmp	al,9h
	ja	40CAA0h

l000000000040CAC6:
	nop	word ptr cs:[rax+rax+0h]

l000000000040CAD0:
	add	r8,1h
	movzx	r10d,byte ptr [r8]
	lea	eax,[r10-30h]
	cmp	al,9h
	jbe	40CAD0h

l000000000040CAE0:
	jmp	40CAA0h

l000000000040CAE2:
	movzx	r10d,byte ptr [rdx+2h]
	lea	r8,[rdx+2h]
	lea	eax,[r10-61h]
	cmp	al,19h
	ja	40CB03h

l000000000040CAF3:
	add	r8,1h
	movzx	r10d,byte ptr [r8]
	lea	eax,[r10-61h]
	cmp	al,19h
	jbe	40CAF3h

l000000000040CB03:
	cmp	r10b,5Fh
	jz	40CAF3h

l000000000040CB09:
	jmp	40CAA0h

l000000000040CB0B:
	lea	rsi,[rbp-60h]
	add	r13,0Dh
	xor	edx,edx
	mov	[rbp-48h],r13
	mov	rcx,rsi
	call	40C0C0h
	jmp	40C805h

l000000000040CB26:
	movzx	eax,byte ptr [rdx]
	jmp	40C837h
000000000040CB2E                                           66 90               f.

;; fn000000000040CB30: 000000000040CB30
;;   Called from:
;;     0000000000409DC7 (in fn0000000000409C60)
;;     0000000000409FCB (in fn0000000000409C60)
;;     000000000040A022 (in fn0000000000409C60)
;;     000000000040A075 (in fn0000000000409C60)
;;     000000000040A332 (in fn0000000000409C60)
;;     000000000040A7D0 (in fn0000000000409C60)
;;     000000000040AAD4 (in fn0000000000409C60)
;;     000000000040AB6F (in fn0000000000409C60)
;;     000000000040AC91 (in fn0000000000409C60)
;;     000000000040AE93 (in fn0000000000409C60)
;;     000000000040AF0C (in fn0000000000409C60)
;;     000000000040B017 (in fn0000000000409C60)
;;     000000000040B09A (in fn0000000000409C60)
;;     000000000040B336 (in fn0000000000409C60)
;;     000000000040B5FF (in fn0000000000409C60)
;;     000000000040B763 (in fn0000000000409C60)
;;     000000000040B7B5 (in fn0000000000409C60)
;;     000000000040B8D3 (in fn0000000000409C60)
;;     000000000040B914 (in fn0000000000409C60)
;;     000000000040B964 (in fn0000000000409C60)
;;     000000000040B997 (in fn0000000000409C60)
;;     000000000040B9F3 (in fn0000000000409C60)
;;     000000000040BA52 (in fn0000000000409C60)
;;     000000000040BAC8 (in fn0000000000409C60)
;;     000000000040BAF1 (in fn0000000000409C60)
;;     000000000040BB5E (in fn0000000000409C60)
;;     000000000040CE31 (in fn000000000040CB30)
;;     000000000040CEDA (in fn000000000040CB30)
;;     000000000040D0FC (in fn000000000040CB30)
;;     000000000040D1D0 (in fn000000000040CB30)
;;     000000000040D204 (in fn000000000040CB30)
;;     000000000040D49A (in fn000000000040D230)
;;     000000000040D571 (in fn000000000040D230)
;;     000000000040D688 (in fn000000000040D230)
;;     000000000040D738 (in fn000000000040D230)
;;     000000000040D7F3 (in fn000000000040D230)
;;     000000000040D8F3 (in fn000000000040D820)
;;     000000000040DB84 (in fn000000000040D820)
;;     000000000040DEC2 (in fn000000000040D820)
;;     000000000040DF89 (in fn000000000040D820)
;;     000000000040E52B (in fn000000000040D820)
;;     000000000040E6A7 (in fn000000000040D820)
;;     000000000040E91F (in fn000000000040D820)
;;     000000000040EA52 (in fn000000000040D820)
;;     000000000040EC1B (in fn000000000040D820)
;;     000000000040ECEE (in fn000000000040D820)
;;     000000000040EDBE (in fn000000000040D820)
;;     000000000040EF29 (in fn000000000040D820)
;;     000000000040F14F (in fn000000000040D820)
;;     000000000040F214 (in fn000000000040D820)
;;     000000000040F24B (in fn000000000040D820)
;;     000000000040F5FB (in fn000000000040D820)
;;     000000000040F610 (in fn000000000040D820)
;;     000000000040F6C0 (in fn000000000040D820)
;;     000000000040F779 (in fn000000000040D820)
;;     000000000040F807 (in fn000000000040D820)
;;     000000000040F828 (in fn000000000040D820)
;;     000000000040F8D0 (in fn000000000040D820)
;;     000000000040F93D (in fn000000000040D820)
;;     000000000040F99D (in fn000000000040D820)
;;     000000000040F9B7 (in fn000000000040D820)
;;     000000000040F9D1 (in fn000000000040D820)
;;     000000000040FA1F (in fn000000000040D820)
;;     000000000040FA48 (in fn000000000040D820)
;;     000000000040FAAD (in fn000000000040D820)
;;     000000000040FB2D (in fn000000000040D820)
fn000000000040CB30 proc
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,48h
	mov	r14d,3h
	mov	rbx,rcx
	mov	rcx,[rcx+18h]
	mov	r13d,edx
	mov	qword ptr [rsp+38h],+0h
	lea	rbp,[rsp+38h]
	cmp	[rcx],dl
	jz	40D195h

l000000000040CB66:
	nop	word ptr cs:[rax+rax+0h]

l000000000040CB70:
	mov	r12d,[rbx+54h]
	mov	dword ptr [rbx+54h],1h
	movzx	eax,byte ptr [rcx]
	cmp	al,4Ch
	jz	40CD80h

l000000000040CB86:
	cmp	al,54h
	jz	40CDA0h

l000000000040CB8E:
	cmp	al,73h
	jz	40CCA0h

l000000000040CB96:
	cmp	al,66h
	jz	40CCE0h

l000000000040CB9E:
	lea	edx,[rax-30h]
	cmp	dl,9h
	jbe	40CC32h

l000000000040CBAA:
	cmp	al,6Fh
	jz	40CC24h

l000000000040CBAE:
	cmp	al,74h
	setz	dl
	jnz	40D21Eh

l000000000040CBB9:
	cmp	byte ptr [rcx+1h],6Ch
	jz	40CEC0h

l000000000040CBC3:
	mov	rcx,rbx
	call	4096B0h
	test	rax,rax
	mov	r15,rax
	jz	40CD65h

l000000000040CBD7:
	mov	eax,[rax]
	cmp	eax,31h
	jz	40CDB0h

l000000000040CBE2:
	cmp	eax,32h
	jz	40CD40h

l000000000040CBEB:
	cmp	eax,33h
	jnz	40CD65h

l000000000040CBF4:
	mov	rax,[rbx+18h]
	cmp	byte ptr [rax],5Fh
	jz	40D1C0h

l000000000040CC01:
	mov	rcx,rbx
	call	40D230h

l000000000040CC09:
	mov	r8,r15
	mov	r9,rax
	mov	edx,35h
	mov	rcx,rbx
	call	403730h
	mov	r8,rax
	jmp	40CD90h

l000000000040CC24:
	cmp	byte ptr [rcx+1h],6Eh
	jnz	40CBC3h

l000000000040CC2A:
	add	rcx,2h
	mov	[rbx+18h],rcx

l000000000040CC32:
	mov	rcx,rbx
	call	409850h
	test	rax,rax
	jz	40CD65h

l000000000040CC43:
	mov	rdx,[rbx+18h]
	mov	r8,rax
	cmp	byte ptr [rdx],49h
	jz	40CF00h

l000000000040CC53:
	mov	[rbx+54h],r12d

l000000000040CC57:
	xor	r9d,r9d
	mov	edx,2Eh
	mov	rcx,rbx
	call	403730h
	test	rax,rax
	mov	[rbp+0h],rax
	jz	40CD69h

l000000000040CC74:
	mov	rcx,[rbx+18h]
	lea	rbp,[rax+10h]
	cmp	[rcx],r13b
	jnz	40CB70h

l000000000040CC85:
	add	rcx,1h
	mov	rax,[rsp+38h]
	mov	[rbx+18h],rcx
	jmp	40CD6Bh
000000000040CC97                      66 0F 1F 84 00 00 00 00 00        f........

l000000000040CCA0:
	movzx	eax,byte ptr [rcx+1h]
	cmp	al,72h
	jz	40D034h

l000000000040CCAC:
	cmp	al,70h
	jnz	40CBC3h

l000000000040CCB4:
	add	rcx,2h
	mov	[rbx+18h],rcx
	mov	rcx,rbx
	call	40D230h
	xor	r9d,r9d
	mov	r8,rax
	mov	edx,49h
	mov	rcx,rbx
	call	403730h
	mov	r8,rax
	jmp	40CD90h
000000000040CCDF                                              90                .

l000000000040CCE0:
	cmp	byte ptr [rcx+1h],70h
	jnz	40CBC3h

l000000000040CCEA:
	lea	rax,[rcx+2h]
	mov	[rbx+18h],rax
	cmp	byte ptr [rcx+2h],54h
	jz	40CF30h

l000000000040CCFC:
	mov	rcx,rbx
	call	403D30h
	add	eax,1h
	jz	40CD65h

l000000000040CD09:
	mov	edx,[rbx+28h]
	cmp	edx,[rbx+2Ch]
	jge	40CD65h

l000000000040CD11:
	movsxd	rcx,edx
	add	edx,1h
	lea	r8,[rcx+rcx*2]
	mov	rcx,[rbx+20h]
	mov	[rbx+28h],edx
	lea	r8,[rcx+r8*8]
	test	r8,r8
	jz	40CD65h

l000000000040CD2B:
	mov	dword ptr [r8],6h
	mov	[r8+8h],eax
	jmp	40CC53h
000000000040CD3B                                  0F 1F 44 00 00            ..D..

l000000000040CD40:
	mov	eax,[r15+8h]
	cmp	eax,1h
	jz	40CC01h

l000000000040CD4D:
	jle	40CF40h

l000000000040CD53:
	cmp	eax,2h
	jz	40CF63h

l000000000040CD5C:
	cmp	eax,3h
	jz	40D0C0h

l000000000040CD65:
	mov	[rbx+54h],r12d

l000000000040CD69:
	xor	eax,eax

l000000000040CD6B:
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
000000000040CD7C                                     0F 1F 40 00             ..@.

l000000000040CD80:
	mov	rcx,rbx
	call	407F20h
	mov	r8,rax
	nop	dword ptr [rax+rax+0h]

l000000000040CD90:
	test	r8,r8
	mov	[rbx+54h],r12d
	jnz	40CC57h

l000000000040CD9D:
	jmp	40CD69h
000000000040CD9F                                              90                .

l000000000040CDA0:
	mov	rcx,rbx
	call	403D80h
	mov	r8,rax
	jmp	40CD90h
000000000040CDAD                                        0F 1F 00              ...

l000000000040CDB0:
	mov	r8,[r15+8h]
	lea	rdi,[000000000048EDE2]                                 ; [rip+00082027]
	mov	rcx,r14
	mov	eax,[r8+10h]
	mov	rdx,[r8]
	sub	eax,2h
	add	[rbx+50h],eax
	mov	rsi,rdx

l000000000040CDCE:
	rep cmpsb

l000000000040CDD0:
	jz	40D0D0h

l000000000040CDD6:
	mov	eax,[r8+14h]
	cmp	eax,1h
	jz	40D07Ah

l000000000040CDE3:
	jle	40CF40h

l000000000040CDE9:
	cmp	eax,2h
	jz	40CF65h

l000000000040CDF2:
	cmp	eax,3h
	jnz	40CD65h

l000000000040CDFB:
	lea	rdi,[000000000048EDEB]                                 ; [rip+00081FE9]
	mov	rsi,rdx
	mov	rcx,r14

l000000000040CE08:
	rep cmpsb

l000000000040CE0A:
	jz	40D110h

l000000000040CE10:
	cmp	byte ptr [rdx],6Eh
	jnz	40CD65h

l000000000040CE19:
	movzx	eax,byte ptr [rdx+1h]
	cmp	al,61h
	jz	40CE29h

l000000000040CE21:
	cmp	al,77h
	jnz	40CD65h

l000000000040CE29:
	mov	edx,5Fh
	mov	rcx,rbx
	call	40CB30h
	mov	rcx,rbx
	mov	rsi,rax
	call	4080A0h
	mov	rdx,[rbx+18h]
	mov	rdi,rax
	movzx	eax,byte ptr [rdx]
	cmp	al,45h
	jz	40D1DAh

l000000000040CE53:
	cmp	al,70h
	jz	40D1EAh

l000000000040CE5B:
	cmp	al,69h
	jnz	40CD65h

l000000000040CE63:
	cmp	byte ptr [rdx+1h],6Ch
	jnz	40CD65h

l000000000040CE6D:
	mov	rcx,rbx
	call	40D230h
	mov	r9,rax

l000000000040CE78:
	mov	r8,rdi
	mov	edx,3Ah
	mov	rcx,rbx
	call	403730h
	mov	r8,rsi
	mov	r9,rax
	mov	edx,39h
	mov	rcx,rbx
	call	403730h
	mov	r8,r15
	mov	r9,rax
	mov	edx,38h
	mov	rcx,rbx
	call	403730h
	mov	r8,rax
	jmp	40CD90h
000000000040CEB6                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l000000000040CEC0:
	xor	edi,edi
	test	dl,dl
	jnz	40D0E0h

l000000000040CECA:
	add	rcx,2h
	mov	edx,45h
	mov	[rbx+18h],rcx
	mov	rcx,rbx
	call	40CB30h
	mov	r8,rdi
	mov	r9,rax
	mov	edx,30h
	mov	rcx,rbx
	call	403730h
	mov	r8,rax
	jmp	40CD90h
000000000040CEFA                               66 0F 1F 44 00 00           f..D..

l000000000040CF00:
	mov	rcx,rbx
	mov	[rsp+20h],rax
	call	409C60h
	mov	r8,[rsp+20h]
	mov	r9,rax
	mov	edx,4h
	mov	rcx,rbx
	call	403730h
	mov	r8,rax
	jmp	40CD90h
000000000040CF2A                               66 0F 1F 44 00 00           f..D..

l000000000040CF30:
	add	rcx,3h
	xor	eax,eax
	mov	[rbx+18h],rcx
	jmp	40CD09h
000000000040CF3F                                              90                .

l000000000040CF40:
	test	eax,eax
	jnz	40CD65h

l000000000040CF48:
	mov	r8,r15
	xor	r9d,r9d
	mov	edx,34h
	mov	rcx,rbx
	call	403730h
	mov	r8,rax
	jmp	40CD90h

l000000000040CF63:
	xor	edx,edx

l000000000040CF65:
	mov	rax,[r15+8h]
	mov	rax,[rax]
	cmp	byte ptr [rax+1h],63h
	jz	40D140h

l000000000040CF76:
	mov	rcx,rbx
	mov	[rsp+28h],rdx
	call	40D230h
	mov	rdx,[rsp+28h]
	mov	[rsp+20h],rax

l000000000040CF8D:
	lea	rdi,[000000000048EDE5]                                 ; [rip+00081E51]
	mov	rsi,rdx
	mov	rcx,r14

l000000000040CF9A:
	rep cmpsb

l000000000040CF9C:
	jz	40D0F4h

l000000000040CFA2:
	lea	rdi,[000000000048F0CF]                                 ; [rip+00082126]
	mov	rsi,rdx
	mov	rcx,r14

l000000000040CFAF:
	rep cmpsb

l000000000040CFB1:
	jz	40D000h

l000000000040CFB3:
	lea	rdi,[000000000048F0D2]                                 ; [rip+00082118]
	mov	rsi,rdx
	mov	rcx,r14

l000000000040CFC0:
	rep cmpsb

l000000000040CFC2:
	jz	40D000h

l000000000040CFC4:
	mov	rcx,rbx
	call	40D230h
	mov	rdi,rax
	nop

l000000000040CFD0:
	mov	r8,[rsp+20h]
	mov	r9,rdi
	mov	edx,37h
	mov	rcx,rbx
	call	403730h
	mov	r8,r15
	mov	r9,rax
	mov	edx,36h
	mov	rcx,rbx
	call	403730h
	mov	r8,rax
	jmp	40CD90h

l000000000040D000:
	mov	rcx,rbx
	call	409850h
	mov	rdi,rax
	mov	rax,[rbx+18h]
	cmp	byte ptr [rax],49h
	jnz	40CFD0h

l000000000040D014:
	mov	rcx,rbx
	call	409C60h
	mov	r8,rdi
	mov	r9,rax
	mov	edx,4h
	mov	rcx,rbx
	call	403730h
	mov	rdi,rax
	jmp	40CFD0h

l000000000040D034:
	add	rcx,2h
	mov	[rbx+18h],rcx
	mov	rcx,rbx
	call	4080A0h
	mov	rcx,rbx
	mov	rsi,rax
	call	409850h
	mov	rdx,[rbx+18h]
	mov	rdi,rax
	mov	r9,rax
	cmp	byte ptr [rdx],49h
	jz	40D172h

l000000000040D062:
	mov	r8,rsi
	mov	edx,1h
	mov	rcx,rbx
	call	403730h
	mov	r8,rax
	jmp	40CD90h

l000000000040D07A:
	movzx	eax,byte ptr [rdx]
	cmp	al,6Dh
	jz	40D089h

l000000000040D081:
	cmp	al,70h
	jnz	40CC01h

l000000000040D089:
	cmp	al,[rdx+1h]
	jnz	40CC01h

l000000000040D092:
	mov	rax,[rbx+18h]
	cmp	byte ptr [rax],5Fh
	jz	40D211h

l000000000040D09F:
	mov	rcx,rbx
	call	40D230h
	mov	edx,37h
	mov	r8,rax
	mov	r9,rax
	mov	rcx,rbx
	call	403730h
	jmp	40CC09h
000000000040D0BF                                              90                .

l000000000040D0C0:
	xor	edx,edx
	jmp	40CDFBh
000000000040D0C7                      66 0F 1F 84 00 00 00 00 00        f........

l000000000040D0D0:
	mov	rcx,rbx
	call	4080A0h
	jmp	40CC09h
000000000040D0DD                                        0F 1F 00              ...

l000000000040D0E0:
	mov	rcx,rbx
	call	4080A0h
	mov	rcx,[rbx+18h]
	mov	rdi,rax
	jmp	40CECAh

l000000000040D0F4:
	mov	edx,45h
	mov	rcx,rbx
	call	40CB30h
	mov	rdi,rax
	jmp	40CFD0h
000000000040D109                            0F 1F 80 00 00 00 00          .......

l000000000040D110:
	mov	rcx,rbx
	call	40D230h
	mov	rcx,rbx
	mov	rsi,rax
	call	40D230h
	mov	rcx,rbx
	mov	rdi,rax
	call	40D230h
	mov	r9,rax
	jmp	40CE78h
000000000040D136                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l000000000040D140:
	movzx	eax,byte ptr [rax]
	lea	ecx,[rax-72h]
	cmp	cl,1h
	jbe	40D156h

l000000000040D14B:
	sub	eax,63h
	cmp	al,1h
	ja	40CF76h

l000000000040D156:
	mov	rcx,rbx
	mov	[rsp+28h],rdx
	call	4080A0h
	mov	rdx,[rsp+28h]
	mov	[rsp+20h],rax
	jmp	40CF8Dh

l000000000040D172:
	mov	rcx,rbx
	call	409C60h
	mov	r8,rdi
	mov	r9,rax
	mov	edx,4h
	mov	rcx,rbx
	call	403730h
	mov	r9,rax
	jmp	40D062h

l000000000040D195:
	add	rcx,1h
	xor	r9d,r9d
	xor	r8d,r8d
	mov	[rbx+18h],rcx
	mov	edx,2Eh
	mov	rcx,rbx
	add	rsp,48h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	jmp	403730h

l000000000040D1C0:
	add	rax,1h
	mov	edx,45h
	mov	rcx,rbx
	mov	[rbx+18h],rax
	call	40CB30h
	jmp	40CC09h

l000000000040D1DA:
	add	rdx,1h
	xor	r9d,r9d
	mov	[rbx+18h],rdx
	jmp	40CE78h

l000000000040D1EA:
	cmp	byte ptr [rdx+1h],69h
	jnz	40CD65h

l000000000040D1F4:
	add	rdx,2h
	mov	rcx,rbx
	mov	[rbx+18h],rdx
	mov	edx,45h
	call	40CB30h
	mov	r9,rax
	jmp	40CE78h

l000000000040D211:
	add	rax,1h
	mov	[rbx+18h],rax
	jmp	40CC01h

l000000000040D21E:
	cmp	al,69h
	jz	40CBB9h

l000000000040D226:
	jmp	40CBC3h
000000000040D22B                                  0F 1F 44 00 00            ..D..

;; fn000000000040D230: 000000000040D230
;;   Called from:
;;     0000000000409EE0 (in fn0000000000409C60)
;;     000000000040A150 (in fn0000000000409C60)
;;     000000000040A223 (in fn0000000000409C60)
;;     000000000040A2C9 (in fn0000000000409C60)
;;     000000000040A3D7 (in fn0000000000409C60)
;;     000000000040A495 (in fn0000000000409C60)
;;     000000000040A54E (in fn0000000000409C60)
;;     000000000040A631 (in fn0000000000409C60)
;;     000000000040A861 (in fn0000000000409C60)
;;     000000000040A90D (in fn0000000000409C60)
;;     000000000040A9AC (in fn0000000000409C60)
;;     000000000040AA23 (in fn0000000000409C60)
;;     000000000040ABB1 (in fn0000000000409C60)
;;     000000000040ACD6 (in fn0000000000409C60)
;;     000000000040AD80 (in fn0000000000409C60)
;;     000000000040AF4E (in fn0000000000409C60)
;;     000000000040B0E4 (in fn0000000000409C60)
;;     000000000040B1A5 (in fn0000000000409C60)
;;     000000000040B25A (in fn0000000000409C60)
;;     000000000040B378 (in fn0000000000409C60)
;;     000000000040B3DE (in fn0000000000409C60)
;;     000000000040B4AF (in fn0000000000409C60)
;;     000000000040B533 (in fn0000000000409C60)
;;     000000000040B66E (in fn0000000000409C60)
;;     000000000040B67E (in fn0000000000409C60)
;;     000000000040B689 (in fn0000000000409C60)
;;     000000000040B694 (in fn0000000000409C60)
;;     000000000040B6A1 (in fn0000000000409C60)
;;     000000000040B6AC (in fn0000000000409C60)
;;     000000000040B6B7 (in fn0000000000409C60)
;;     000000000040B719 (in fn0000000000409C60)
;;     000000000040B739 (in fn0000000000409C60)
;;     000000000040B7F7 (in fn0000000000409C60)
;;     000000000040B802 (in fn0000000000409C60)
;;     000000000040B80D (in fn0000000000409C60)
;;     000000000040B81A (in fn0000000000409C60)
;;     000000000040B9B3 (in fn0000000000409C60)
;;     000000000040B9BE (in fn0000000000409C60)
;;     000000000040B9C9 (in fn0000000000409C60)
;;     000000000040B9D6 (in fn0000000000409C60)
;;     000000000040CC04 (in fn000000000040CB30)
;;     000000000040CCBF (in fn000000000040CB30)
;;     000000000040CE70 (in fn000000000040CB30)
;;     000000000040CF7E (in fn000000000040CB30)
;;     000000000040CFC7 (in fn000000000040CB30)
;;     000000000040D0A2 (in fn000000000040CB30)
;;     000000000040D113 (in fn000000000040CB30)
;;     000000000040D11E (in fn000000000040CB30)
;;     000000000040D129 (in fn000000000040CB30)
;;     000000000040D2FE (in fn000000000040D230)
;;     000000000040D38F (in fn000000000040D230)
;;     000000000040D3FA (in fn000000000040D230)
;;     000000000040D5B3 (in fn000000000040D230)
;;     000000000040D6BE (in fn000000000040D230)
;;     000000000040D707 (in fn000000000040D230)
;;     000000000040D712 (in fn000000000040D230)
;;     000000000040D71D (in fn000000000040D230)
;;     000000000040D799 (in fn000000000040D230)
;;     000000000040DA32 (in fn000000000040D820)
;;     000000000040DBBE (in fn000000000040D820)
;;     000000000040DD3D (in fn000000000040D820)
;;     000000000040DE92 (in fn000000000040D820)
;;     000000000040E02E (in fn000000000040D820)
;;     000000000040E0DA (in fn000000000040D820)
;;     000000000040E186 (in fn000000000040D820)
;;     000000000040E218 (in fn000000000040D820)
;;     000000000040E2F9 (in fn000000000040D820)
;;     000000000040E327 (in fn000000000040D820)
;;     000000000040E567 (in fn000000000040D820)
;;     000000000040E5A6 (in fn000000000040D820)
;;     000000000040E5E7 (in fn000000000040D820)
;;     000000000040E6EC (in fn000000000040D820)
;;     000000000040E7C0 (in fn000000000040D820)
;;     000000000040EA91 (in fn000000000040D820)
;;     000000000040EB18 (in fn000000000040D820)
;;     000000000040EC73 (in fn000000000040D820)
;;     000000000040ED2D (in fn000000000040D820)
;;     000000000040EE38 (in fn000000000040D820)
;;     000000000040EF68 (in fn000000000040D820)
;;     000000000040F027 (in fn000000000040D820)
;;     000000000040F194 (in fn000000000040D820)
;;     000000000040F2FC (in fn000000000040D820)
;;     000000000040F35C (in fn000000000040D820)
;;     000000000040F444 (in fn000000000040D820)
;;     000000000040F49A (in fn000000000040D820)
;;     000000000040F4A5 (in fn000000000040D820)
;;     000000000040F4B0 (in fn000000000040D820)
;;     000000000040F548 (in fn000000000040D820)
;;     000000000040F58D (in fn000000000040D820)
;;     000000000040F5D3 (in fn000000000040D820)
;;     000000000040F5DE (in fn000000000040D820)
;;     000000000040F5E9 (in fn000000000040D820)
;;     000000000040F689 (in fn000000000040D820)
;;     000000000040F6E9 (in fn000000000040D820)
;;     000000000040F6F4 (in fn000000000040D820)
;;     000000000040F6FF (in fn000000000040D820)
;;     000000000040F795 (in fn000000000040D820)
;;     000000000040F7A0 (in fn000000000040D820)
;;     000000000040F7AB (in fn000000000040D820)
;;     000000000040F85E (in fn000000000040D820)
;;     000000000040F8AE (in fn000000000040D820)
;;     000000000040F912 (in fn000000000040D820)
;;     000000000040FAE3 (in fn000000000040D820)
;;     000000000040FAEE (in fn000000000040D820)
;;     000000000040FAF9 (in fn000000000040D820)
;;     000000000040FB06 (in fn000000000040D820)
fn000000000040D230 proc
	push	r13
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,28h
	mov	rdx,[rcx+18h]
	movzx	eax,byte ptr [rdx]
	cmp	al,4Ch
	jz	40D4F0h

l000000000040D24B:
	cmp	al,54h
	jz	40D501h

l000000000040D253:
	cmp	al,73h
	mov	rbx,rcx
	jz	40D373h

l000000000040D25E:
	cmp	al,66h
	jz	40D313h

l000000000040D266:
	lea	ecx,[rax-30h]
	cmp	cl,9h
	ja	40D2A0h

l000000000040D26E:
	mov	rcx,rbx
	call	409850h
	test	rax,rax
	mov	rsi,rax
	jz	40D4C0h

l000000000040D282:
	mov	rdx,[rbx+18h]
	cmp	byte ptr [rdx],49h
	jz	40D5F0h

l000000000040D28F:
	add	rsp,28h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	ret
000000000040D29C                                     0F 1F 40 00             ..@.

l000000000040D2A0:
	cmp	al,6Fh
	jz	40D4D0h

l000000000040D2A8:
	cmp	al,74h
	setz	cl
	jnz	40D80Dh

l000000000040D2B3:
	cmp	byte ptr [rdx+1h],6Ch
	jz	40D480h

l000000000040D2BD:
	mov	rcx,rbx
	call	4096B0h
	test	rax,rax
	mov	rbp,rax
	jz	40D4C0h

l000000000040D2D1:
	mov	eax,[rax]
	cmp	eax,31h
	jz	40D3A4h

l000000000040D2DC:
	cmp	eax,32h
	jz	40D512h

l000000000040D2E5:
	cmp	eax,33h
	jnz	40D4C0h

l000000000040D2EE:
	mov	rax,[rbx+18h]
	cmp	byte ptr [rax],5Fh
	jz	40D678h

l000000000040D2FB:
	mov	rcx,rbx
	call	40D230h

l000000000040D303:
	mov	r9,rax
	mov	r8,rbp
	mov	edx,35h
	jmp	40D4AAh

l000000000040D313:
	cmp	byte ptr [rdx+1h],70h
	jnz	40D2BDh

l000000000040D319:
	lea	rax,[rdx+2h]
	mov	[rcx+18h],rax
	cmp	byte ptr [rdx+2h],54h
	jz	40D650h

l000000000040D32B:
	call	403D30h
	add	eax,1h
	mov	ecx,eax
	jz	40D4C0h

l000000000040D33B:
	mov	edx,[rbx+28h]
	cmp	edx,[rbx+2Ch]
	jge	40D4C0h

l000000000040D347:
	movsxd	rax,edx
	add	edx,1h
	lea	r8,[rax+rax*2]
	mov	rax,[rbx+20h]
	mov	[rbx+28h],edx
	lea	rax,[rax+r8*8]
	test	rax,rax
	jz	40D4C0h

l000000000040D365:
	mov	dword ptr [rax],6h
	mov	[rax+8h],ecx
	jmp	40D28Fh

l000000000040D373:
	movzx	eax,byte ptr [rdx+1h]
	cmp	al,72h
	jz	40D610h

l000000000040D37F:
	cmp	al,70h
	jnz	40D2BDh

l000000000040D387:
	add	rdx,2h
	mov	[rcx+18h],rdx
	call	40D230h
	xor	r9d,r9d
	mov	r8,rax
	mov	edx,49h
	jmp	40D4AAh

l000000000040D3A4:
	mov	rdx,[rbp+8h]
	lea	rdi,[000000000048EDE2]                                 ; [rip+00081A33]
	mov	ecx,3h
	mov	eax,[rdx+10h]
	mov	r12,[rdx]
	sub	eax,2h
	add	[rbx+50h],eax
	mov	rsi,r12

l000000000040D3C3:
	rep cmpsb

l000000000040D3C5:
	jz	40D6E0h

l000000000040D3CB:
	mov	eax,[rdx+14h]
	cmp	eax,1h
	jz	40D692h

l000000000040D3D7:
	jle	40D660h

l000000000040D3DD:
	cmp	eax,2h
	jnz	40D530h

l000000000040D3E6:
	mov	rax,[rbp+8h]
	mov	rax,[rax]
	cmp	byte ptr [rax+1h],63h
	jz	40D745h

l000000000040D3F7:
	mov	rcx,rbx
	call	40D230h
	mov	r13,rax

l000000000040D402:
	lea	rdi,[000000000048EDE5]                                 ; [rip+000819DC]
	mov	ecx,3h
	mov	rsi,r12

l000000000040D411:
	rep cmpsb

l000000000040D413:
	jz	40D730h

l000000000040D419:
	lea	rdi,[000000000048F0CF]                                 ; [rip+00081CAF]
	mov	ecx,3h
	mov	rsi,r12

l000000000040D428:
	rep cmpsb

l000000000040D42A:
	jz	40D443h

l000000000040D42C:
	lea	rdi,[000000000048F0D2]                                 ; [rip+00081C9F]
	mov	ecx,3h
	mov	rsi,r12

l000000000040D43B:
	rep cmpsb

l000000000040D43D:
	jnz	40D796h

l000000000040D443:
	mov	rcx,rbx
	call	409850h
	mov	rsi,rax
	mov	rax,[rbx+18h]
	cmp	byte ptr [rax],49h
	jz	40D7B6h

l000000000040D45B:
	mov	r9,rsi
	mov	r8,r13
	mov	edx,37h
	mov	rcx,rbx
	call	403730h
	mov	r8,rbp
	mov	r9,rax
	mov	edx,36h
	jmp	40D4AAh
000000000040D47B                                  0F 1F 44 00 00            ..D..

l000000000040D480:
	xor	esi,esi
	test	cl,cl
	jnz	40D6F0h

l000000000040D48A:
	add	rdx,2h
	mov	rcx,rbx
	mov	[rbx+18h],rdx
	mov	edx,45h
	call	40CB30h
	mov	r8,rsi
	mov	r9,rax
	mov	edx,30h

l000000000040D4AA:
	mov	rcx,rbx
	add	rsp,28h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	jmp	403730h
000000000040D4BE                                           66 90               f.

l000000000040D4C0:
	xor	eax,eax
	add	rsp,28h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	ret
000000000040D4CF                                              90                .

l000000000040D4D0:
	cmp	byte ptr [rdx+1h],6Eh
	jnz	40D2BDh

l000000000040D4DA:
	add	rdx,2h
	mov	[rbx+18h],rdx
	jmp	40D26Eh
000000000040D4E7                      66 0F 1F 84 00 00 00 00 00        f........

l000000000040D4F0:
	add	rsp,28h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	jmp	407F20h

l000000000040D501:
	add	rsp,28h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	jmp	403D80h

l000000000040D512:
	mov	eax,[rbp+8h]
	cmp	eax,1h
	jz	40D2FBh

l000000000040D51E:
	jle	40D660h

l000000000040D524:
	xor	r12d,r12d
	cmp	eax,2h
	jz	40D3E6h

l000000000040D530:
	cmp	eax,3h
	jnz	40D4C0h

l000000000040D535:
	lea	rdi,[000000000048EDEB]                                 ; [rip+000818AF]
	mov	ecx,3h
	mov	rsi,r12

l000000000040D544:
	rep cmpsb

l000000000040D546:
	jz	40D704h

l000000000040D54C:
	cmp	byte ptr [r12],6Eh
	jnz	40D4C0h

l000000000040D557:
	movzx	eax,byte ptr [r12+1h]
	cmp	al,61h
	jz	40D569h

l000000000040D561:
	cmp	al,77h
	jnz	40D4C0h

l000000000040D569:
	mov	edx,5Fh
	mov	rcx,rbx
	call	40CB30h
	mov	rcx,rbx
	mov	rsi,rax
	call	4080A0h
	mov	rdx,[rbx+18h]
	mov	rdi,rax
	movzx	ecx,byte ptr [rdx]
	cmp	cl,45h
	jz	40D7A6h

l000000000040D594:
	cmp	cl,70h
	jz	40D7D9h

l000000000040D59D:
	cmp	cl,69h
	jnz	40D4C0h

l000000000040D5A6:
	cmp	byte ptr [rdx+1h],6Ch
	jnz	40D4C0h

l000000000040D5B0:
	mov	rcx,rbx
	call	40D230h
	mov	r9,rax

l000000000040D5BB:
	mov	r8,rdi
	mov	edx,3Ah
	mov	rcx,rbx
	call	403730h
	mov	r8,rsi
	mov	r9,rax
	mov	edx,39h
	mov	rcx,rbx
	call	403730h
	mov	r8,rbp
	mov	r9,rax
	mov	edx,38h
	jmp	40D4AAh
000000000040D5EE                                           66 90               f.

l000000000040D5F0:
	mov	rcx,rbx
	call	409C60h
	mov	r8,rsi
	mov	r9,rax
	mov	edx,4h
	jmp	40D4AAh
000000000040D608                         0F 1F 84 00 00 00 00 00         ........

l000000000040D610:
	add	rdx,2h
	mov	[rcx+18h],rdx
	call	4080A0h
	mov	rcx,rbx
	mov	rsi,rax
	call	409850h
	mov	rdx,[rbx+18h]
	mov	rdi,rax
	cmp	byte ptr [rdx],49h
	jz	40D76Bh

l000000000040D638:
	mov	r9,rax
	mov	r8,rsi
	mov	edx,1h
	jmp	40D4AAh
000000000040D648                         0F 1F 84 00 00 00 00 00         ........

l000000000040D650:
	add	rdx,3h
	mov	[rcx+18h],rdx
	xor	ecx,ecx
	jmp	40D33Bh
000000000040D65F                                              90                .

l000000000040D660:
	test	eax,eax
	jnz	40D4C0h

l000000000040D668:
	xor	r9d,r9d
	mov	r8,rbp
	mov	edx,34h
	jmp	40D4AAh

l000000000040D678:
	add	rax,1h
	mov	edx,45h
	mov	rcx,rbx
	mov	[rbx+18h],rax
	call	40CB30h
	jmp	40D303h

l000000000040D692:
	movzx	eax,byte ptr [r12]
	cmp	al,6Dh
	jz	40D6A3h

l000000000040D69B:
	cmp	al,70h
	jnz	40D2FBh

l000000000040D6A3:
	cmp	al,[r12+1h]
	jnz	40D2FBh

l000000000040D6AE:
	mov	rax,[rbx+18h]
	cmp	byte ptr [rax],5Fh
	jz	40D800h

l000000000040D6BB:
	mov	rcx,rbx
	call	40D230h
	mov	edx,37h
	mov	r8,rax
	mov	r9,rax
	mov	rcx,rbx
	call	403730h
	jmp	40D303h
000000000040D6DB                                  0F 1F 44 00 00            ..D..

l000000000040D6E0:
	mov	rcx,rbx
	call	4080A0h
	jmp	40D303h
000000000040D6ED                                        0F 1F 00              ...

l000000000040D6F0:
	mov	rcx,rbx
	call	4080A0h
	mov	rdx,[rbx+18h]
	mov	rsi,rax
	jmp	40D48Ah

l000000000040D704:
	mov	rcx,rbx
	call	40D230h
	mov	rcx,rbx
	mov	rsi,rax
	call	40D230h
	mov	rcx,rbx
	mov	rdi,rax
	call	40D230h
	mov	r9,rax
	jmp	40D5BBh
000000000040D72A                               66 0F 1F 44 00 00           f..D..

l000000000040D730:
	mov	edx,45h
	mov	rcx,rbx
	call	40CB30h
	mov	rsi,rax
	jmp	40D45Bh

l000000000040D745:
	movzx	eax,byte ptr [rax]
	lea	edx,[rax-72h]
	cmp	dl,1h
	jbe	40D75Bh

l000000000040D750:
	sub	eax,63h
	cmp	al,1h
	ja	40D3F7h

l000000000040D75B:
	mov	rcx,rbx
	call	4080A0h
	mov	r13,rax
	jmp	40D402h

l000000000040D76B:
	mov	rcx,rbx
	call	409C60h
	mov	r8,rdi
	mov	r9,rax
	mov	edx,4h
	mov	rcx,rbx
	call	403730h
	mov	r8,rsi
	mov	r9,rax
	mov	edx,1h
	jmp	40D4AAh

l000000000040D796:
	mov	rcx,rbx
	call	40D230h
	mov	rsi,rax
	jmp	40D45Bh

l000000000040D7A6:
	add	rdx,1h
	xor	r9d,r9d
	mov	[rbx+18h],rdx
	jmp	40D5BBh

l000000000040D7B6:
	mov	rcx,rbx
	call	409C60h
	mov	r8,rsi
	mov	r9,rax
	mov	edx,4h
	mov	rcx,rbx
	call	403730h
	mov	rsi,rax
	jmp	40D45Bh

l000000000040D7D9:
	cmp	byte ptr [rdx+1h],69h
	jnz	40D4C0h

l000000000040D7E3:
	add	rdx,2h
	mov	rcx,rbx
	mov	[rbx+18h],rdx
	mov	edx,45h
	call	40CB30h
	mov	r9,rax
	jmp	40D5BBh

l000000000040D800:
	add	rax,1h
	mov	[rbx+18h],rax
	jmp	40D2FBh

l000000000040D80D:
	cmp	al,69h
	jz	40D2B3h

l000000000040D815:
	jmp	40D2BDh
000000000040D81A                               66 0F 1F 44 00 00           f..D..

;; fn000000000040D820: 000000000040D820
fn000000000040D820 proc
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,38h
	mov	rax,[rcx+18h]
	mov	rbx,rcx
	cmp	byte ptr [rax],5Fh
	jz	40D870h

l000000000040D83C:
	call	403CE0h
	mov	rsi,rax

l000000000040D844:
	test	rsi,rsi
	jz	40D856h

l000000000040D849:
	mov	rdx,[rbx+18h]
	cmp	byte ptr [rdx],5Fh
	jz	40D913h

l000000000040D856:
	xor	eax,eax
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
000000000040D869                            0F 1F 80 00 00 00 00          .......

l000000000040D870:
	lea	rcx,[rax+1h]
	mov	ebp,[rbx+54h]
	mov	dword ptr [rbx+54h],1h
	mov	[rbx+18h],rcx
	movzx	edx,byte ptr [rax+1h]
	cmp	dl,4Ch
	jz	40DC30h

l000000000040D88F:
	cmp	dl,54h
	jz	40DC40h

l000000000040D898:
	cmp	dl,73h
	jz	40D950h

l000000000040D8A1:
	cmp	dl,66h
	jz	40DAC0h

l000000000040D8AA:
	lea	r8d,[rdx-30h]
	cmp	r8b,9h
	jbe	40DA92h

l000000000040D8B8:
	cmp	dl,6Fh
	jz	40DA80h

l000000000040D8C1:
	cmp	dl,74h
	setz	r8b
	jnz	40F91Fh

l000000000040D8CE:
	cmp	byte ptr [rax+2h],6Ch
	jnz	40D966h

l000000000040D8D8:
	xor	esi,esi
	test	r8b,r8b
	jnz	40DF10h

l000000000040D8E3:
	add	rcx,2h
	mov	edx,45h
	mov	[rbx+18h],rcx
	mov	rcx,rbx
	call	40CB30h
	mov	r8,rsi
	mov	r9,rax
	mov	edx,30h
	mov	rcx,rbx
	call	403730h
	mov	rsi,rax
	jmp	40DAB3h

l000000000040D913:
	add	rdx,1h
	mov	rcx,rbx
	mov	[rbx+18h],rdx
	call	4080A0h
	mov	r8,rsi
	mov	r9,rax
	mov	edx,2Dh
	mov	rcx,rbx
	add	rsp,38h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	jmp	403730h
000000000040D946                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l000000000040D950:
	movzx	edx,byte ptr [rax+2h]
	cmp	dl,72h
	jz	40DE26h

l000000000040D95D:
	cmp	dl,70h
	jz	40DE87h

l000000000040D966:
	mov	rcx,rbx
	call	4096B0h
	test	rax,rax
	mov	r12,rax
	jz	40DC20h

l000000000040D97A:
	mov	eax,[rax]
	cmp	eax,31h
	jz	40DC50h

l000000000040D985:
	cmp	eax,32h
	jz	40DB20h

l000000000040D98E:
	cmp	eax,33h
	jnz	40DC20h

l000000000040D997:
	mov	rdx,[rbx+18h]
	xor	edi,edi
	movzx	eax,byte ptr [rdx]
	cmp	al,5Fh
	jz	40DEB2h

l000000000040D9A8:
	cmp	al,4Ch
	jz	40E501h

l000000000040D9B0:
	cmp	al,54h
	jz	40E538h

l000000000040D9B8:
	cmp	al,73h
	jz	40E1F9h

l000000000040D9C0:
	cmp	al,66h
	jz	40E240h

l000000000040D9C8:
	lea	ecx,[rax-30h]
	cmp	cl,9h
	jbe	40DF36h

l000000000040D9D4:
	cmp	al,6Fh
	jz	40DF24h

l000000000040D9DC:
	cmp	al,74h
	setz	cl
	jz	40D9E7h

l000000000040D9E3:
	cmp	al,69h
	jnz	40D9F1h

l000000000040D9E7:
	cmp	byte ptr [rdx+1h],6Ch
	jz	40E908h

l000000000040D9F1:
	mov	rcx,rbx
	call	4096B0h
	test	rax,rax
	mov	r13,rax
	jz	40E4F9h

l000000000040DA05:
	mov	eax,[rax]
	cmp	eax,31h
	jz	40E620h

l000000000040DA10:
	cmp	eax,32h
	jz	40E78Eh

l000000000040DA19:
	cmp	eax,33h
	jnz	40E4F9h

l000000000040DA22:
	mov	rax,[rbx+18h]
	cmp	byte ptr [rax],5Fh
	jz	40F9A7h

l000000000040DA2F:
	mov	rcx,rbx
	call	40D230h

l000000000040DA37:
	mov	r8,r13
	mov	r9,rax
	mov	edx,35h
	mov	rcx,rbx
	call	403730h
	mov	r8,rax

l000000000040DA4D:
	test	edi,edi
	jz	40DECAh

l000000000040DA55:
	mov	r9,r8
	mov	edx,37h
	mov	rcx,rbx
	call	403730h
	mov	r9,rax

l000000000040DA68:
	mov	r8,r12
	mov	edx,35h
	mov	rcx,rbx
	call	403730h
	mov	rsi,rax
	jmp	40DAB3h
000000000040DA7D                                        0F 1F 00              ...

l000000000040DA80:
	cmp	byte ptr [rax+2h],6Eh
	jnz	40D966h

l000000000040DA8A:
	add	rax,3h
	mov	[rbx+18h],rax

l000000000040DA92:
	mov	rcx,rbx
	call	409850h
	test	rax,rax
	mov	rsi,rax
	jz	40DC20h

l000000000040DAA6:
	mov	rax,[rbx+18h]
	cmp	byte ptr [rax],49h
	jz	40DDE0h

l000000000040DAB3:
	mov	[rbx+54h],ebp
	jmp	40D844h
000000000040DABB                                  0F 1F 44 00 00            ..D..

l000000000040DAC0:
	cmp	byte ptr [rax+2h],70h
	jnz	40D966h

l000000000040DACA:
	lea	rdx,[rax+3h]
	mov	[rbx+18h],rdx
	cmp	byte ptr [rax+3h],54h
	jnz	40DC07h

l000000000040DADC:
	add	rax,4h
	xor	edx,edx
	mov	[rbx+18h],rax

l000000000040DAE6:
	mov	eax,[rbx+28h]
	cmp	eax,[rbx+2Ch]
	jge	40DC20h

l000000000040DAF2:
	movsxd	rcx,eax
	add	eax,1h
	lea	r8,[rcx+rcx*2]
	mov	rcx,[rbx+20h]
	mov	[rbx+28h],eax
	lea	rsi,[rcx+r8*8]
	test	rsi,rsi
	jz	40DAB3h

l000000000040DB0C:
	mov	dword ptr [rsi],6h
	mov	[rsi+8h],edx
	jmp	40DAB3h
000000000040DB17                      66 0F 1F 84 00 00 00 00 00        f........

l000000000040DB20:
	mov	eax,[r12+8h]
	cmp	eax,1h
	jz	40DE79h

l000000000040DB2E:
	jle	40DE03h

l000000000040DB34:
	xor	r13d,r13d
	cmp	eax,2h
	jz	40DC93h

l000000000040DB40:
	cmp	eax,3h
	jnz	40DC20h

l000000000040DB49:
	lea	rdi,[000000000048EDEB]                                 ; [rip+0008129B]
	mov	ecx,3h
	mov	rsi,r13

l000000000040DB58:
	rep cmpsb

l000000000040DB5A:
	jz	40DF96h

l000000000040DB60:
	cmp	byte ptr [r13+0h],6Eh
	jnz	40DC20h

l000000000040DB6B:
	movzx	eax,byte ptr [r13+1h]
	cmp	al,61h
	jz	40DB7Ch

l000000000040DB74:
	cmp	al,77h
	jnz	40DC20h

l000000000040DB7C:
	mov	edx,5Fh
	mov	rcx,rbx
	call	40CB30h
	mov	rcx,rbx
	mov	rdi,rax
	call	4080A0h
	mov	rsi,rax
	mov	rax,[rbx+18h]
	movzx	edx,byte ptr [rax]
	cmp	dl,45h
	jz	40E350h

l000000000040DBA7:
	cmp	dl,70h
	jz	40E511h

l000000000040DBB0:
	cmp	dl,69h
	jnz	40DC20h

l000000000040DBB5:
	cmp	byte ptr [rax+1h],6Ch
	jnz	40DC20h

l000000000040DBBB:
	mov	rcx,rbx
	call	40D230h
	mov	r8,rax

l000000000040DBC6:
	mov	r9,r8
	mov	edx,3Ah
	mov	r8,rsi
	mov	rcx,rbx
	call	403730h
	mov	r8,rdi
	mov	r9,rax
	mov	edx,39h
	mov	rcx,rbx
	call	403730h
	mov	r8,r12
	mov	r9,rax
	mov	edx,38h
	mov	rcx,rbx
	call	403730h
	mov	rsi,rax
	jmp	40DAB3h

l000000000040DC07:
	mov	rcx,rbx
	call	403D30h
	add	eax,1h
	mov	edx,eax
	jnz	40DAE6h

l000000000040DC1A:
	nop	word ptr [rax+rax+0h]

l000000000040DC20:
	xor	esi,esi
	jmp	40DAB3h
000000000040DC27                      66 0F 1F 84 00 00 00 00 00        f........

l000000000040DC30:
	mov	rcx,rbx
	call	407F20h
	mov	rsi,rax
	jmp	40DAB3h

l000000000040DC40:
	mov	rcx,rbx
	call	403D80h
	mov	rsi,rax
	jmp	40DAB3h

l000000000040DC50:
	mov	rdx,[r12+8h]
	lea	rdi,[000000000048EDE2]                                 ; [rip+00081186]
	mov	ecx,3h
	mov	eax,[rdx+10h]
	mov	r13,[rdx]
	sub	eax,2h
	add	[rbx+50h],eax
	mov	rsi,r13

l000000000040DC70:
	rep cmpsb

l000000000040DC72:
	jz	40DF00h

l000000000040DC78:
	mov	eax,[rdx+14h]
	cmp	eax,1h
	jz	40DE6Ch

l000000000040DC84:
	jle	40DE03h

l000000000040DC8A:
	cmp	eax,2h
	jnz	40DB40h

l000000000040DC93:
	mov	rax,[r12+8h]
	mov	rax,[rax]
	cmp	byte ptr [rax+1h],63h
	jz	40E1B0h

l000000000040DCA5:
	mov	rax,[rbx+18h]
	movzx	edx,byte ptr [rax]
	cmp	dl,4Ch
	jz	40E957h

l000000000040DCB5:
	cmp	dl,54h
	jz	40E9A2h

l000000000040DCBE:
	cmp	dl,73h
	jz	40E306h

l000000000040DCC7:
	cmp	dl,66h
	jz	40E360h

l000000000040DCD0:
	lea	ecx,[rdx-30h]
	cmp	cl,9h
	jbe	40E2B2h

l000000000040DCDC:
	cmp	dl,6Fh
	jz	40E2A0h

l000000000040DCE5:
	cmp	dl,74h
	setz	cl
	jz	40DCF2h

l000000000040DCED:
	cmp	dl,69h
	jnz	40DCFCh

l000000000040DCF2:
	cmp	byte ptr [rax+1h],6Ch
	jz	40EBFDh

l000000000040DCFC:
	mov	rcx,rbx
	call	4096B0h
	test	rax,rax
	mov	rsi,rax
	jz	40E618h

l000000000040DD10:
	mov	eax,[rax]
	cmp	eax,31h
	jz	40E9CBh

l000000000040DD1B:
	cmp	eax,32h
	jz	40EAE7h

l000000000040DD24:
	cmp	eax,33h
	jnz	40E618h

l000000000040DD2D:
	mov	rax,[rbx+18h]
	cmp	byte ptr [rax],5Fh
	jz	40F9C1h

l000000000040DD3A:
	mov	rcx,rbx
	call	40D230h

l000000000040DD42:
	mov	r9,rax
	mov	r8,rsi
	mov	edx,35h
	mov	rcx,rbx
	call	403730h
	mov	r14,rax

l000000000040DD58:
	lea	rdi,[000000000048EDE5]                                 ; [rip+00081086]
	mov	ecx,3h
	mov	rsi,r13

l000000000040DD67:
	rep cmpsb

l000000000040DD69:
	jz	40DF81h

l000000000040DD6F:
	lea	rdi,[000000000048F0CF]                                 ; [rip+00081359]
	mov	ecx,3h
	mov	rsi,r13

l000000000040DD7E:
	rep cmpsb

l000000000040DD80:
	jz	40DD99h

l000000000040DD82:
	lea	rdi,[000000000048F0D2]                                 ; [rip+00081349]
	mov	ecx,3h
	mov	rsi,r13

l000000000040DD91:
	rep cmpsb

l000000000040DD93:
	jnz	40E2F6h

l000000000040DD99:
	mov	rcx,rbx
	call	409850h
	mov	rsi,rax
	mov	rax,[rbx+18h]
	cmp	byte ptr [rax],49h
	jz	40E4C5h

l000000000040DDB1:
	mov	r9,rsi
	mov	r8,r14
	mov	edx,37h
	mov	rcx,rbx
	call	403730h
	mov	r8,r12
	mov	r9,rax
	mov	edx,36h
	mov	rcx,rbx
	call	403730h
	mov	rsi,rax
	jmp	40DAB3h
000000000040DDDF                                              90                .

l000000000040DDE0:
	mov	rcx,rbx
	call	409C60h
	mov	r8,rsi
	mov	r9,rax
	mov	edx,4h
	mov	rcx,rbx
	call	403730h
	mov	rsi,rax
	jmp	40DAB3h

l000000000040DE03:
	test	eax,eax
	jnz	40DC20h

l000000000040DE0B:
	xor	r9d,r9d
	mov	r8,r12
	mov	edx,34h
	mov	rcx,rbx
	call	403730h
	mov	rsi,rax
	jmp	40DAB3h

l000000000040DE26:
	add	rax,3h
	mov	rcx,rbx
	mov	[rbx+18h],rax
	call	4080A0h
	mov	rcx,rbx
	mov	rsi,rax
	call	409850h
	mov	rdi,rax
	mov	rax,[rbx+18h]
	mov	r9,rdi
	cmp	byte ptr [rax],49h
	jz	40E1D6h

l000000000040DE54:
	mov	r8,rsi
	mov	edx,1h
	mov	rcx,rbx
	call	403730h
	mov	rsi,rax
	jmp	40DAB3h

l000000000040DE6C:
	movzx	eax,byte ptr [r13+0h]
	cmp	al,6Dh
	jz	40DED2h

l000000000040DE75:
	cmp	al,70h
	jz	40DED2h

l000000000040DE79:
	mov	rdx,[rbx+18h]
	xor	edi,edi
	movzx	eax,byte ptr [rdx]
	jmp	40D9A8h

l000000000040DE87:
	add	rax,3h
	mov	rcx,rbx
	mov	[rbx+18h],rax
	call	40D230h
	xor	r9d,r9d
	mov	r8,rax
	mov	edx,49h
	mov	rcx,rbx
	call	403730h
	mov	rsi,rax
	jmp	40DAB3h

l000000000040DEB2:
	add	rdx,1h
	mov	rcx,rbx
	mov	[rbx+18h],rdx
	mov	edx,45h
	call	40CB30h
	mov	r8,rax

l000000000040DECA:
	mov	r9,r8
	jmp	40DA68h

l000000000040DED2:
	cmp	al,[r13+1h]
	jnz	40DE79h

l000000000040DED8:
	mov	rdx,[rbx+18h]
	mov	edi,1h
	movzx	eax,byte ptr [rdx]
	cmp	al,5Fh
	jnz	40D9A8h

l000000000040DEEC:
	add	rdx,1h
	mov	[rbx+18h],rdx
	jmp	40DE79h
000000000040DEF6                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l000000000040DF00:
	mov	rcx,rbx
	call	4080A0h
	mov	r9,rax
	jmp	40DA68h

l000000000040DF10:
	mov	rcx,rbx
	call	4080A0h
	mov	rcx,[rbx+18h]
	mov	rsi,rax
	jmp	40D8E3h

l000000000040DF24:
	cmp	byte ptr [rdx+1h],6Eh
	jnz	40D9F1h

l000000000040DF2E:
	add	rdx,2h
	mov	[rbx+18h],rdx

l000000000040DF36:
	mov	rcx,rbx
	call	409850h
	test	rax,rax
	mov	r8,rax
	jz	40DA4Dh

l000000000040DF4A:
	mov	rax,[rbx+18h]
	cmp	byte ptr [rax],49h
	jnz	40DA4Dh

l000000000040DF57:
	mov	rcx,rbx
	mov	[rsp+28h],r8
	call	409C60h
	mov	r8,[rsp+28h]
	mov	r9,rax
	mov	edx,4h
	mov	rcx,rbx
	call	403730h
	mov	r8,rax
	jmp	40DA4Dh

l000000000040DF81:
	mov	edx,45h
	mov	rcx,rbx
	call	40CB30h
	mov	rsi,rax
	jmp	40DDB1h

l000000000040DF96:
	mov	rax,[rbx+18h]
	movzx	edx,byte ptr [rax]
	cmp	dl,4Ch
	jz	40EAD7h

l000000000040DFA6:
	cmp	dl,54h
	jz	40F319h

l000000000040DFAF:
	cmp	dl,73h
	jz	40E5C6h

l000000000040DFB8:
	cmp	dl,66h
	jz	40E84Fh

l000000000040DFC1:
	lea	ecx,[rdx-30h]
	cmp	cl,9h
	jbe	40E3CEh

l000000000040DFCD:
	cmp	dl,6Fh
	jz	40E3BCh

l000000000040DFD6:
	cmp	dl,74h
	setz	cl
	jz	40DFE3h

l000000000040DFDE:
	cmp	dl,69h
	jnz	40DFEDh

l000000000040DFE3:
	cmp	byte ptr [rax+1h],6Ch
	jz	40F234h

l000000000040DFED:
	mov	rcx,rbx
	call	4096B0h
	test	rax,rax
	mov	rsi,rax
	jz	40E950h

l000000000040E001:
	mov	eax,[rax]
	cmp	eax,31h
	jz	40EDDEh

l000000000040E00C:
	cmp	eax,32h
	jz	40EC90h

l000000000040E015:
	cmp	eax,33h
	jnz	40E950h

l000000000040E01E:
	mov	rax,[rbx+18h]
	cmp	byte ptr [rax],5Fh
	jz	40FA38h

l000000000040E02B:
	mov	rcx,rbx
	call	40D230h

l000000000040E033:
	mov	r9,rax
	mov	r8,rsi
	mov	edx,35h
	mov	rcx,rbx
	call	403730h
	mov	rdi,rax

l000000000040E049:
	mov	rdx,[rbx+18h]
	movzx	eax,byte ptr [rdx]
	cmp	al,4Ch
	jz	40EC3Bh

l000000000040E058:
	cmp	al,54h
	jz	40ED96h

l000000000040E060:
	cmp	al,73h
	jz	40E587h

l000000000040E068:
	cmp	al,66h
	jz	40E732h

l000000000040E070:
	lea	ecx,[rax-30h]
	cmp	cl,9h
	jbe	40E481h

l000000000040E07C:
	cmp	al,6Fh
	jz	40E46Fh

l000000000040E084:
	cmp	al,74h
	setz	cl
	jz	40E08Fh

l000000000040E08B:
	cmp	al,69h
	jnz	40E099h

l000000000040E08F:
	cmp	byte ptr [rdx+1h],6Ch
	jz	40F1FDh

l000000000040E099:
	mov	rcx,rbx
	call	4096B0h
	test	rax,rax
	mov	rsi,rax
	jz	40E99Bh

l000000000040E0AD:
	mov	eax,[rax]
	cmp	eax,31h
	jz	40EFD1h

l000000000040E0B8:
	cmp	eax,32h
	jz	40EEC7h

l000000000040E0C1:
	cmp	eax,33h
	jnz	40E99Bh

l000000000040E0CA:
	mov	rax,[rbx+18h]
	cmp	byte ptr [rax],5Fh
	jz	40F98Dh

l000000000040E0D7:
	mov	rcx,rbx
	call	40D230h

l000000000040E0DF:
	mov	r8,rsi
	mov	r9,rax
	mov	edx,35h
	mov	rcx,rbx
	call	403730h
	mov	rsi,rax

l000000000040E0F5:
	mov	rdx,[rbx+18h]
	movzx	eax,byte ptr [rdx]
	cmp	al,4Ch
	jz	40EBEDh

l000000000040E104:
	cmp	al,54h
	jz	40F0B6h

l000000000040E10C:
	cmp	al,73h
	jz	40E548h

l000000000040E114:
	cmp	al,66h
	jz	40E8A9h

l000000000040E11C:
	lea	ecx,[rax-30h]
	cmp	cl,9h
	jbe	40E424h

l000000000040E128:
	cmp	al,6Fh
	jz	40E412h

l000000000040E130:
	cmp	al,74h
	setz	cl
	jz	40E13Bh

l000000000040E137:
	cmp	al,69h
	jnz	40E145h

l000000000040E13B:
	cmp	byte ptr [rdx+1h],6Ch
	jz	40EDA6h

l000000000040E145:
	mov	rcx,rbx
	call	4096B0h
	test	rax,rax
	mov	r13,rax
	jz	40E9C3h

l000000000040E159:
	mov	eax,[rax]
	cmp	eax,31h
	jz	40F0C6h

l000000000040E164:
	cmp	eax,32h
	jz	40F329h

l000000000040E16D:
	cmp	eax,33h
	jnz	40E9C3h

l000000000040E176:
	mov	rax,[rbx+18h]
	cmp	byte ptr [rax],5Fh
	jz	40F92Dh

l000000000040E183:
	mov	rcx,rbx
	call	40D230h

l000000000040E18B:
	mov	r8,r13
	mov	r9,rax
	mov	edx,35h
	mov	rcx,rbx
	call	403730h
	mov	r8,rax
	jmp	40DBC6h
000000000040E1A6                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l000000000040E1B0:
	movzx	eax,byte ptr [rax]
	lea	edx,[rax-72h]
	cmp	dl,1h
	jbe	40E1C6h

l000000000040E1BB:
	sub	eax,63h
	cmp	al,1h
	ja	40DCA5h

l000000000040E1C6:
	mov	rcx,rbx
	call	4080A0h
	mov	r14,rax
	jmp	40DD58h

l000000000040E1D6:
	mov	rcx,rbx
	call	409C60h
	mov	r8,rdi
	mov	r9,rax
	mov	edx,4h
	mov	rcx,rbx
	call	403730h
	mov	r9,rax
	jmp	40DE54h

l000000000040E1F9:
	movzx	eax,byte ptr [rdx+1h]
	cmp	al,72h
	jz	40EBA7h

l000000000040E205:
	cmp	al,70h
	jnz	40D9F1h

l000000000040E20D:
	add	rdx,2h
	mov	rcx,rbx
	mov	[rbx+18h],rdx
	call	40D230h
	xor	r9d,r9d
	mov	r8,rax
	mov	edx,49h
	mov	rcx,rbx
	call	403730h
	mov	r8,rax
	jmp	40DA4Dh
000000000040E238                         0F 1F 84 00 00 00 00 00         ........

l000000000040E240:
	cmp	byte ptr [rdx+1h],70h
	jnz	40D9F1h

l000000000040E24A:
	lea	rax,[rdx+2h]
	mov	[rbx+18h],rax
	cmp	byte ptr [rdx+2h],54h
	jnz	40E4E8h

l000000000040E25C:
	add	rdx,3h
	xor	eax,eax
	mov	[rbx+18h],rdx

l000000000040E266:
	mov	edx,[rbx+28h]
	xor	r8d,r8d
	cmp	edx,[rbx+2Ch]
	jge	40DA4Dh

l000000000040E275:
	movsxd	rsi,edx
	add	edx,1h
	imul	rsi,rsi,18h
	mov	[rbx+28h],edx
	add	rsi,[rbx+20h]
	test	rsi,rsi
	mov	r8,rsi
	jz	40DA4Dh

l000000000040E292:
	mov	dword ptr [rsi],6h
	mov	[rsi+8h],eax
	jmp	40DA4Dh

l000000000040E2A0:
	cmp	byte ptr [rax+1h],6Eh
	jnz	40DCFCh

l000000000040E2AA:
	add	rax,2h
	mov	[rbx+18h],rax

l000000000040E2B2:
	mov	rcx,rbx
	call	409850h
	test	rax,rax
	mov	r14,rax
	jz	40E618h

l000000000040E2C6:
	mov	rax,[rbx+18h]
	cmp	byte ptr [rax],49h
	jnz	40DD58h

l000000000040E2D3:
	mov	rcx,rbx
	call	409C60h
	mov	r8,r14
	mov	r9,rax
	mov	edx,4h
	mov	rcx,rbx
	call	403730h
	mov	r14,rax
	jmp	40DD58h

l000000000040E2F6:
	mov	rcx,rbx
	call	40D230h
	mov	rsi,rax
	jmp	40DDB1h

l000000000040E306:
	movzx	edx,byte ptr [rax+1h]
	cmp	dl,72h
	jz	40F28Eh

l000000000040E313:
	cmp	dl,70h
	jnz	40DCFCh

l000000000040E31C:
	add	rax,2h
	mov	rcx,rbx
	mov	[rbx+18h],rax
	call	40D230h
	xor	r9d,r9d
	mov	r8,rax
	mov	edx,49h
	mov	rcx,rbx
	call	403730h
	mov	r14,rax
	jmp	40DD58h
000000000040E347                      66 0F 1F 84 00 00 00 00 00        f........

l000000000040E350:
	add	rax,1h
	xor	r8d,r8d
	mov	[rbx+18h],rax
	jmp	40DBC6h

l000000000040E360:
	cmp	byte ptr [rax+1h],70h
	jnz	40DCFCh

l000000000040E36A:
	lea	rdx,[rax+2h]
	mov	[rbx+18h],rdx
	cmp	byte ptr [rax+2h],54h
	jnz	40E607h

l000000000040E37C:
	add	rax,3h
	mov	[rbx+18h],rax
	xor	eax,eax

l000000000040E386:
	mov	edx,[rbx+28h]
	cmp	edx,[rbx+2Ch]
	jge	40E618h

l000000000040E392:
	movsxd	r14,edx
	add	edx,1h
	imul	r14,r14,18h
	mov	[rbx+28h],edx
	add	r14,[rbx+20h]
	test	r14,r14
	jz	40DD58h

l000000000040E3AC:
	mov	dword ptr [r14],6h
	mov	[r14+8h],eax
	jmp	40DD58h

l000000000040E3BC:
	cmp	byte ptr [rax+1h],6Eh
	jnz	40DFEDh

l000000000040E3C6:
	add	rax,2h
	mov	[rbx+18h],rax

l000000000040E3CE:
	mov	rcx,rbx
	call	409850h
	test	rax,rax
	mov	rdi,rax
	jz	40E950h

l000000000040E3E2:
	mov	rax,[rbx+18h]
	cmp	byte ptr [rax],49h
	jnz	40E049h

l000000000040E3EF:
	mov	rcx,rbx
	call	409C60h
	mov	r8,rdi
	mov	r9,rax
	mov	edx,4h
	mov	rcx,rbx
	call	403730h
	mov	rdi,rax
	jmp	40E049h

l000000000040E412:
	cmp	byte ptr [rdx+1h],6Eh
	jnz	40E145h

l000000000040E41C:
	add	rdx,2h
	mov	[rbx+18h],rdx

l000000000040E424:
	mov	rcx,rbx
	call	409850h
	test	rax,rax
	mov	r8,rax
	jz	40DBC6h

l000000000040E438:
	mov	rax,[rbx+18h]
	cmp	byte ptr [rax],49h
	jnz	40DBC6h

l000000000040E445:
	mov	rcx,rbx
	mov	[rsp+28h],r8
	call	409C60h
	mov	r8,[rsp+28h]
	mov	r9,rax
	mov	edx,4h
	mov	rcx,rbx
	call	403730h
	mov	r8,rax
	jmp	40DBC6h

l000000000040E46F:
	cmp	byte ptr [rdx+1h],6Eh
	jnz	40E099h

l000000000040E479:
	add	rdx,2h
	mov	[rbx+18h],rdx

l000000000040E481:
	mov	rcx,rbx
	call	409850h
	test	rax,rax
	mov	rsi,rax
	jz	40E0F5h

l000000000040E495:
	mov	rax,[rbx+18h]
	cmp	byte ptr [rax],49h
	jnz	40E0F5h

l000000000040E4A2:
	mov	rcx,rbx
	call	409C60h
	mov	r8,rsi
	mov	r9,rax
	mov	edx,4h
	mov	rcx,rbx
	call	403730h
	mov	rsi,rax
	jmp	40E0F5h

l000000000040E4C5:
	mov	rcx,rbx
	call	409C60h
	mov	r8,rsi
	mov	r9,rax
	mov	edx,4h
	mov	rcx,rbx
	call	403730h
	mov	rsi,rax
	jmp	40DDB1h

l000000000040E4E8:
	mov	rcx,rbx
	call	403D30h
	add	eax,1h
	jnz	40E266h

l000000000040E4F9:
	xor	r8d,r8d
	jmp	40DA4Dh

l000000000040E501:
	mov	rcx,rbx
	call	407F20h
	mov	r8,rax
	jmp	40DA4Dh

l000000000040E511:
	cmp	byte ptr [rax+1h],69h
	jnz	40DC20h

l000000000040E51B:
	add	rax,2h
	mov	edx,45h
	mov	rcx,rbx
	mov	[rbx+18h],rax
	call	40CB30h
	mov	r8,rax
	jmp	40DBC6h

l000000000040E538:
	mov	rcx,rbx
	call	403D80h
	mov	r8,rax
	jmp	40DA4Dh

l000000000040E548:
	movzx	eax,byte ptr [rdx+1h]
	cmp	al,72h
	jz	40F451h

l000000000040E554:
	cmp	al,70h
	jnz	40E145h

l000000000040E55C:
	add	rdx,2h
	mov	rcx,rbx
	mov	[rbx+18h],rdx
	call	40D230h
	xor	r9d,r9d
	mov	r8,rax
	mov	edx,49h
	mov	rcx,rbx
	call	403730h
	mov	r8,rax
	jmp	40DBC6h

l000000000040E587:
	movzx	eax,byte ptr [rdx+1h]
	cmp	al,72h
	jz	40F61Dh

l000000000040E593:
	cmp	al,70h
	jnz	40E099h

l000000000040E59B:
	add	rdx,2h
	mov	rcx,rbx
	mov	[rbx+18h],rdx
	call	40D230h
	xor	r9d,r9d
	mov	r8,rax
	mov	edx,49h
	mov	rcx,rbx
	call	403730h
	mov	rsi,rax
	jmp	40E0F5h

l000000000040E5C6:
	movzx	edx,byte ptr [rax+1h]
	cmp	dl,72h
	jz	40F4D7h

l000000000040E5D3:
	cmp	dl,70h
	jnz	40DFEDh

l000000000040E5DC:
	add	rax,2h
	mov	rcx,rbx
	mov	[rbx+18h],rax
	call	40D230h
	xor	r9d,r9d
	mov	r8,rax
	mov	edx,49h
	mov	rcx,rbx
	call	403730h
	mov	rdi,rax
	jmp	40E049h

l000000000040E607:
	mov	rcx,rbx
	call	403D30h
	add	eax,1h
	jnz	40E386h

l000000000040E618:
	xor	r14d,r14d
	jmp	40DD58h

l000000000040E620:
	mov	rax,[r13+8h]
	lea	rdx,[000000000048EDE2]                                 ; [rip+000807B7]
	mov	rsi,[rax]
	mov	eax,[rax+10h]
	sub	eax,2h
	add	[rbx+50h],eax
	mov	rcx,rsi
	call	41BDB0h
	test	eax,eax
	jz	40F4BAh

l000000000040E647:
	mov	rax,[r13+8h]
	mov	eax,[rax+14h]
	cmp	eax,1h
	jz	40EC4Bh

l000000000040E657:
	jle	40E967h

l000000000040E65D:
	cmp	eax,2h
	jz	40E7ACh

l000000000040E666:
	cmp	eax,3h
	jnz	40E4F9h

l000000000040E66F:
	lea	rdx,[000000000048EDEB]                                 ; [rip+00080775]
	mov	rcx,rsi
	call	41BDB0h
	test	eax,eax
	jz	40F497h

l000000000040E686:
	cmp	byte ptr [rsi],6Eh
	jnz	40E4F9h

l000000000040E68F:
	movzx	eax,byte ptr [rsi+1h]
	cmp	al,61h
	jz	40E69Fh

l000000000040E697:
	cmp	al,77h
	jnz	40E4F9h

l000000000040E69F:
	mov	edx,5Fh
	mov	rcx,rbx
	call	40CB30h
	mov	rcx,rbx
	mov	r14,rax
	call	4080A0h
	mov	r15,rax
	mov	rax,[rbx+18h]
	movzx	edx,byte ptr [rax]
	cmp	dl,45h
	jz	40F783h

l000000000040E6CA:
	xor	r8d,r8d
	cmp	dl,70h
	jz	40F75Fh

l000000000040E6D6:
	cmp	dl,69h
	jnz	40DA4Dh

l000000000040E6DF:
	cmp	byte ptr [rax+1h],6Ch
	jnz	40DA4Dh

l000000000040E6E9:
	mov	rcx,rbx
	call	40D230h

l000000000040E6F1:
	mov	r9,rax
	mov	r8,r15
	mov	edx,3Ah
	mov	rcx,rbx
	call	403730h
	mov	r8,r14
	mov	r9,rax
	mov	edx,39h
	mov	rcx,rbx
	call	403730h
	mov	r8,r13
	mov	r9,rax
	mov	edx,38h
	mov	rcx,rbx
	call	403730h
	mov	r8,rax
	jmp	40DA4Dh

l000000000040E732:
	cmp	byte ptr [rdx+1h],70h
	jnz	40E099h

l000000000040E73C:
	lea	rax,[rdx+2h]
	mov	[rbx+18h],rax
	cmp	byte ptr [rdx+2h],54h
	jnz	40E98Ah

l000000000040E74E:
	add	rdx,3h
	xor	eax,eax
	mov	[rbx+18h],rdx

l000000000040E758:
	mov	edx,[rbx+28h]
	xor	esi,esi
	cmp	edx,[rbx+2Ch]
	jge	40E0F5h

l000000000040E766:
	movsxd	rsi,edx
	add	edx,1h
	imul	rsi,rsi,18h
	mov	[rbx+28h],edx
	add	rsi,[rbx+20h]
	test	rsi,rsi
	jz	40E0F5h

l000000000040E780:
	mov	dword ptr [rsi],6h
	mov	[rsi+8h],eax
	jmp	40E0F5h

l000000000040E78E:
	mov	eax,[r13+8h]
	cmp	eax,1h
	jz	40DA2Fh

l000000000040E79B:
	jle	40E967h

l000000000040E7A1:
	xor	esi,esi
	cmp	eax,2h
	jnz	40E666h

l000000000040E7AC:
	mov	rax,[r13+8h]
	mov	rax,[rax]
	cmp	byte ptr [rax+1h],63h
	jz	40F41Bh

l000000000040E7BD:
	mov	rcx,rbx
	call	40D230h
	mov	r14,rax

l000000000040E7C8:
	lea	rdx,[000000000048EDE5]                                 ; [rip+00080616]
	mov	rcx,rsi
	call	41BDB0h
	test	eax,eax
	jz	40F5F3h

l000000000040E7DF:
	lea	rdx,[000000000048F0CF]                                 ; [rip+000808E9]
	mov	rcx,rsi
	call	41BDB0h
	test	eax,eax
	jz	40E809h

l000000000040E7F2:
	lea	rdx,[000000000048F0D2]                                 ; [rip+000808D9]
	mov	rcx,rsi
	call	41BDB0h
	test	eax,eax
	jnz	40F441h

l000000000040E809:
	mov	rcx,rbx
	call	409850h
	mov	rsi,rax
	mov	rax,[rbx+18h]
	cmp	byte ptr [rax],49h
	jz	40F72Ch

l000000000040E821:
	mov	r9,rsi
	mov	r8,r14
	mov	edx,37h
	mov	rcx,rbx
	call	403730h
	mov	r8,r13
	mov	r9,rax
	mov	edx,36h
	mov	rcx,rbx
	call	403730h
	mov	r8,rax
	jmp	40DA4Dh

l000000000040E84F:
	cmp	byte ptr [rax+1h],70h
	jnz	40DFEDh

l000000000040E859:
	lea	rdx,[rax+2h]
	mov	[rbx+18h],rdx
	cmp	byte ptr [rax+2h],54h
	jnz	40E93Fh

l000000000040E86B:
	add	rax,3h
	mov	[rbx+18h],rax
	xor	eax,eax

l000000000040E875:
	mov	edx,[rbx+28h]
	cmp	edx,[rbx+2Ch]
	jge	40E950h

l000000000040E881:
	movsxd	rdi,edx
	add	edx,1h
	imul	rdi,rdi,18h
	mov	[rbx+28h],edx
	add	rdi,[rbx+20h]
	test	rdi,rdi
	jz	40E049h

l000000000040E89B:
	mov	dword ptr [rdi],6h
	mov	[rdi+8h],eax
	jmp	40E049h

l000000000040E8A9:
	cmp	byte ptr [rdx+1h],70h
	jnz	40E145h

l000000000040E8B3:
	lea	rax,[rdx+2h]
	mov	[rbx+18h],rax
	cmp	byte ptr [rdx+2h],54h
	jnz	40E9B2h

l000000000040E8C5:
	add	rdx,3h
	xor	eax,eax
	mov	[rbx+18h],rdx

l000000000040E8CF:
	mov	edx,[rbx+28h]
	xor	r8d,r8d
	cmp	edx,[rbx+2Ch]
	jge	40DBC6h

l000000000040E8DE:
	movsxd	r8,edx
	add	edx,1h
	imul	r8,r8,18h
	mov	[rbx+28h],edx
	add	r8,[rbx+20h]
	test	r8,r8
	jz	40DBC6h

l000000000040E8F8:
	mov	dword ptr [r8],6h
	mov	[r8+8h],eax
	jmp	40DBC6h

l000000000040E908:
	xor	esi,esi
	test	cl,cl
	jnz	40F4C7h

l000000000040E912:
	add	qword ptr [rbx+18h],2h
	mov	edx,45h
	mov	rcx,rbx
	call	40CB30h
	mov	r8,rsi
	mov	r9,rax
	mov	edx,30h
	mov	rcx,rbx
	call	403730h
	mov	r8,rax
	jmp	40DA4Dh

l000000000040E93F:
	mov	rcx,rbx
	call	403D30h
	add	eax,1h
	jnz	40E875h

l000000000040E950:
	xor	edi,edi
	jmp	40E049h

l000000000040E957:
	mov	rcx,rbx
	call	407F20h
	mov	r14,rax
	jmp	40DD58h

l000000000040E967:
	test	eax,eax
	jnz	40E4F9h

l000000000040E96F:
	mov	r8,r13
	xor	r9d,r9d
	mov	edx,34h
	mov	rcx,rbx
	call	403730h
	mov	r8,rax
	jmp	40DA4Dh

l000000000040E98A:
	mov	rcx,rbx
	call	403D30h
	add	eax,1h
	jnz	40E758h

l000000000040E99B:
	xor	esi,esi
	jmp	40E0F5h

l000000000040E9A2:
	mov	rcx,rbx
	call	403D80h
	mov	r14,rax
	jmp	40DD58h

l000000000040E9B2:
	mov	rcx,rbx
	call	403D30h
	add	eax,1h
	jnz	40E8CFh

l000000000040E9C3:
	xor	r8d,r8d
	jmp	40DBC6h

l000000000040E9CB:
	mov	rax,[rsi+8h]
	lea	rdx,[000000000048EDE2]                                 ; [rip+0008040C]
	mov	rdi,[rax]
	mov	eax,[rax+10h]
	sub	eax,2h
	add	[rbx+50h],eax
	mov	rcx,rdi
	call	41BDB0h
	test	eax,eax
	jz	40F40Eh

l000000000040E9F2:
	mov	rax,[rsi+8h]
	mov	eax,[rax+14h]
	cmp	eax,1h
	jz	40F2D4h

l000000000040EA02:
	jle	40F26Bh

l000000000040EA08:
	cmp	eax,2h
	jz	40EB04h

l000000000040EA11:
	cmp	eax,3h
	jnz	40E618h

l000000000040EA1A:
	lea	rdx,[000000000048EDEB]                                 ; [rip+000803CA]
	mov	rcx,rdi
	call	41BDB0h
	test	eax,eax
	jz	40F5D0h

l000000000040EA31:
	cmp	byte ptr [rdi],6Eh
	jnz	40E618h

l000000000040EA3A:
	movzx	eax,byte ptr [rdi+1h]
	cmp	al,61h
	jz	40EA4Ah

l000000000040EA42:
	cmp	al,77h
	jnz	40E618h

l000000000040EA4A:
	mov	edx,5Fh
	mov	rcx,rbx
	call	40CB30h
	mov	rcx,rbx
	mov	rdi,rax
	call	4080A0h
	mov	rdx,[rbx+18h]
	mov	r14,rax
	movzx	eax,byte ptr [rdx]
	cmp	al,45h
	jz	40FB37h

l000000000040EA74:
	cmp	al,70h
	jz	40FB13h

l000000000040EA7C:
	cmp	al,69h
	jnz	40E618h

l000000000040EA84:
	cmp	byte ptr [rdx+1h],6Ch
	jnz	40E618h

l000000000040EA8E:
	mov	rcx,rbx
	call	40D230h

l000000000040EA96:
	mov	r8,r14
	mov	r9,rax
	mov	edx,3Ah
	mov	rcx,rbx
	call	403730h
	mov	r8,rdi
	mov	r9,rax
	mov	edx,39h
	mov	rcx,rbx
	call	403730h
	mov	r8,rsi
	mov	r9,rax
	mov	edx,38h
	mov	rcx,rbx
	call	403730h
	mov	r14,rax
	jmp	40DD58h

l000000000040EAD7:
	mov	rcx,rbx
	call	407F20h
	mov	rdi,rax
	jmp	40E049h

l000000000040EAE7:
	mov	eax,[rsi+8h]
	cmp	eax,1h
	jz	40DD3Ah

l000000000040EAF3:
	jle	40F26Bh

l000000000040EAF9:
	xor	edi,edi
	cmp	eax,2h
	jnz	40EA11h

l000000000040EB04:
	mov	rax,[rsi+8h]
	mov	rax,[rax]
	cmp	byte ptr [rax+1h],63h
	jz	40F5AAh

l000000000040EB15:
	mov	rcx,rbx
	call	40D230h
	mov	r14,rax

l000000000040EB20:
	lea	rdx,[000000000048EDE5]                                 ; [rip+000802BE]
	mov	rcx,rdi
	call	41BDB0h
	test	eax,eax
	jz	40F608h

l000000000040EB37:
	lea	rdx,[000000000048F0CF]                                 ; [rip+00080591]
	mov	rcx,rdi
	call	41BDB0h
	test	eax,eax
	jz	40EB61h

l000000000040EB4A:
	lea	rdx,[000000000048F0D2]                                 ; [rip+00080581]
	mov	rcx,rdi
	call	41BDB0h
	test	eax,eax
	jnz	40F8ABh

l000000000040EB61:
	mov	rcx,rbx
	call	409850h
	mov	rdi,rax
	mov	rax,[rbx+18h]
	cmp	byte ptr [rax],49h
	jz	40FA5Fh

l000000000040EB79:
	mov	r8,r14
	mov	r9,rdi
	mov	edx,37h
	mov	rcx,rbx
	call	403730h
	mov	r8,rsi
	mov	r9,rax
	mov	edx,36h
	mov	rcx,rbx
	call	403730h
	mov	r14,rax
	jmp	40DD58h

l000000000040EBA7:
	add	rdx,2h
	mov	rcx,rbx
	mov	[rbx+18h],rdx
	call	4080A0h
	mov	rcx,rbx
	mov	rsi,rax
	call	409850h
	mov	r13,rax
	mov	rax,[rbx+18h]
	cmp	byte ptr [rax],49h
	jz	40F3EBh

l000000000040EBD2:
	mov	r9,r13

l000000000040EBD5:
	mov	r8,rsi
	mov	edx,1h
	mov	rcx,rbx
	call	403730h
	mov	r8,rax
	jmp	40DA4Dh

l000000000040EBED:
	mov	rcx,rbx
	call	407F20h
	mov	r8,rax
	jmp	40DBC6h

l000000000040EBFD:
	xor	esi,esi
	test	cl,cl
	jz	40EC0Eh

l000000000040EC03:
	mov	rcx,rbx
	call	4080A0h
	mov	rsi,rax

l000000000040EC0E:
	add	qword ptr [rbx+18h],2h
	mov	edx,45h
	mov	rcx,rbx
	call	40CB30h
	mov	r8,rsi
	mov	r9,rax
	mov	edx,30h
	mov	rcx,rbx
	call	403730h
	mov	r14,rax
	jmp	40DD58h

l000000000040EC3B:
	mov	rcx,rbx
	call	407F20h
	mov	rsi,rax
	jmp	40E0F5h

l000000000040EC4B:
	movzx	eax,byte ptr [rsi]
	cmp	al,6Dh
	jz	40EC5Ah

l000000000040EC52:
	cmp	al,70h
	jnz	40DA2Fh

l000000000040EC5A:
	cmp	al,[rsi+1h]
	jnz	40DA2Fh

l000000000040EC63:
	mov	rax,[rbx+18h]
	cmp	byte ptr [rax],5Fh
	jz	40FA52h

l000000000040EC70:
	mov	rcx,rbx
	call	40D230h
	mov	edx,37h
	mov	r8,rax
	mov	r9,rax
	mov	rcx,rbx
	call	403730h
	jmp	40DA37h

l000000000040EC90:
	mov	eax,[rsi+8h]
	cmp	eax,1h
	jz	40E02Bh

l000000000040EC9C:
	jle	40ED73h

l000000000040ECA2:
	xor	edi,edi
	cmp	eax,2h
	jz	40EE24h

l000000000040ECAD:
	cmp	eax,3h
	jnz	40E950h

l000000000040ECB6:
	lea	rdx,[000000000048EDEB]                                 ; [rip+0008012E]
	mov	rcx,rdi
	call	41BDB0h
	test	eax,eax
	jz	40F792h

l000000000040ECCD:
	cmp	byte ptr [rdi],6Eh
	jnz	40E950h

l000000000040ECD6:
	movzx	eax,byte ptr [rdi+1h]
	cmp	al,61h
	jz	40ECE6h

l000000000040ECDE:
	cmp	al,77h
	jnz	40E950h

l000000000040ECE6:
	mov	edx,5Fh
	mov	rcx,rbx
	call	40CB30h
	mov	rcx,rbx
	mov	rdi,rax
	call	4080A0h
	mov	rdx,[rbx+18h]
	mov	r13,rax
	movzx	eax,byte ptr [rdx]
	cmp	al,45h
	jz	40F811h

l000000000040ED10:
	cmp	al,70h
	jz	40F7F1h

l000000000040ED18:
	cmp	al,69h
	jnz	40E950h

l000000000040ED20:
	cmp	byte ptr [rdx+1h],6Ch
	jnz	40F7E5h

l000000000040ED2A:
	mov	rcx,rbx
	call	40D230h

l000000000040ED32:
	mov	r9,rax
	mov	r8,r13
	mov	edx,3Ah
	mov	rcx,rbx
	call	403730h
	mov	r8,rdi
	mov	r9,rax
	mov	edx,39h
	mov	rcx,rbx
	call	403730h
	mov	r8,rsi
	mov	r9,rax
	mov	edx,38h
	mov	rcx,rbx
	call	403730h
	mov	rdi,rax
	jmp	40E049h

l000000000040ED73:
	test	eax,eax
	jnz	40E950h

l000000000040ED7B:
	xor	r9d,r9d
	mov	r8,rsi
	mov	edx,34h
	mov	rcx,rbx
	call	403730h
	mov	rdi,rax
	jmp	40E049h

l000000000040ED96:
	mov	rcx,rbx
	call	403D80h
	mov	rsi,rax
	jmp	40E0F5h

l000000000040EDA6:
	xor	r13d,r13d
	test	cl,cl
	jnz	40F74Fh

l000000000040EDB1:
	add	qword ptr [rbx+18h],2h
	mov	edx,45h
	mov	rcx,rbx
	call	40CB30h
	mov	r8,r13
	mov	r9,rax
	mov	edx,30h
	mov	rcx,rbx
	call	403730h
	mov	r8,rax
	jmp	40DBC6h

l000000000040EDDE:
	mov	rax,[rsi+8h]
	lea	rdx,[000000000048EDE2]                                 ; [rip+0007FFF9]
	mov	rdi,[rax]
	mov	eax,[rax+10h]
	sub	eax,2h
	add	[rbx+50h],eax
	mov	rcx,rdi
	call	41BDB0h
	test	eax,eax
	jz	40F7D8h

l000000000040EE05:
	mov	rax,[rsi+8h]
	mov	eax,[rax+14h]
	cmp	eax,1h
	jz	40F565h

l000000000040EE15:
	jle	40ED73h

l000000000040EE1B:
	cmp	eax,2h
	jnz	40ECADh

l000000000040EE24:
	mov	rax,[rsi+8h]
	mov	rax,[rax]
	cmp	byte ptr [rax+1h],63h
	jz	40F835h

l000000000040EE35:
	mov	rcx,rbx
	call	40D230h
	mov	r13,rax

l000000000040EE40:
	lea	rdx,[000000000048EDE5]                                 ; [rip+0007FF9E]
	mov	rcx,rdi
	call	41BDB0h
	test	eax,eax
	jz	40F820h

l000000000040EE57:
	lea	rdx,[000000000048F0CF]                                 ; [rip+00080271]
	mov	rcx,rdi
	call	41BDB0h
	test	eax,eax
	jz	40EE81h

l000000000040EE6A:
	lea	rdx,[000000000048F0D2]                                 ; [rip+00080261]
	mov	rcx,rdi
	call	41BDB0h
	test	eax,eax
	jnz	40F85Bh

l000000000040EE81:
	mov	rcx,rbx
	call	409850h
	mov	rdi,rax
	mov	rax,[rbx+18h]
	cmp	byte ptr [rax],49h
	jz	40F709h

l000000000040EE99:
	mov	r9,rdi
	mov	r8,r13
	mov	edx,37h
	mov	rcx,rbx
	call	403730h
	mov	r8,rsi
	mov	r9,rax
	mov	edx,36h
	mov	rcx,rbx
	call	403730h
	mov	rdi,rax
	jmp	40E049h

l000000000040EEC7:
	mov	eax,[rsi+8h]
	cmp	eax,1h
	jz	40E0D7h

l000000000040EED3:
	jle	40EFAEh

l000000000040EED9:
	xor	r13d,r13d
	cmp	eax,2h
	jz	40F013h

l000000000040EEE5:
	cmp	eax,3h
	jnz	40E99Bh

l000000000040EEEE:
	lea	rdx,[000000000048EDEB]                                 ; [rip+0007FEF6]
	mov	rcx,r13
	call	41BDB0h
	test	eax,eax
	jz	40F6E6h

l000000000040EF05:
	cmp	byte ptr [r13+0h],6Eh
	jnz	40E99Bh

l000000000040EF10:
	movzx	eax,byte ptr [r13+1h]
	cmp	al,61h
	jz	40EF21h

l000000000040EF19:
	cmp	al,77h
	jnz	40E99Bh

l000000000040EF21:
	mov	edx,5Fh
	mov	rcx,rbx
	call	40CB30h
	mov	rcx,rbx
	mov	r13,rax
	call	4080A0h
	mov	rdx,[rbx+18h]
	mov	r14,rax
	movzx	eax,byte ptr [rdx]
	cmp	al,45h
	jz	40FA29h

l000000000040EF4B:
	cmp	al,70h
	jz	40FA05h

l000000000040EF53:
	cmp	al,69h
	jnz	40E99Bh

l000000000040EF5B:
	cmp	byte ptr [rdx+1h],6Ch
	jnz	40F903h

l000000000040EF65:
	mov	rcx,rbx
	call	40D230h

l000000000040EF6D:
	mov	r9,rax
	mov	r8,r14
	mov	edx,3Ah
	mov	rcx,rbx
	call	403730h
	mov	r8,r13
	mov	r9,rax
	mov	edx,39h
	mov	rcx,rbx
	call	403730h
	mov	r8,rsi
	mov	r9,rax
	mov	edx,38h
	mov	rcx,rbx
	call	403730h
	mov	rsi,rax
	jmp	40E0F5h

l000000000040EFAE:
	test	eax,eax
	jnz	40E99Bh

l000000000040EFB6:
	mov	r8,rsi
	xor	r9d,r9d
	mov	edx,34h
	mov	rcx,rbx
	call	403730h
	mov	rsi,rax
	jmp	40E0F5h

l000000000040EFD1:
	mov	rax,[rsi+8h]
	lea	rdx,[000000000048EDE2]                                 ; [rip+0007FE06]
	mov	r13,[rax]
	mov	eax,[rax+10h]
	sub	eax,2h
	add	[rbx+50h],eax
	mov	rcx,r13
	call	41BDB0h
	test	eax,eax
	jz	40F9F8h

l000000000040EFF8:
	mov	rax,[rsi+8h]
	mov	eax,[rax+14h]
	cmp	eax,1h
	jz	40F51Dh

l000000000040F008:
	jle	40EFAEh

l000000000040F00A:
	cmp	eax,2h
	jnz	40EEE5h

l000000000040F013:
	mov	rax,[rsi+8h]
	mov	rax,[rax]
	cmp	byte ptr [rax+1h],63h
	jz	40F8DDh

l000000000040F024:
	mov	rcx,rbx
	call	40D230h
	mov	r14,rax

l000000000040F02F:
	lea	rdx,[000000000048EDE5]                                 ; [rip+0007FDAF]
	mov	rcx,r13
	call	41BDB0h
	test	eax,eax
	jz	40F8C8h

l000000000040F046:
	lea	rdx,[000000000048F0CF]                                 ; [rip+00080082]
	mov	rcx,r13
	call	41BDB0h
	test	eax,eax
	jz	40F070h

l000000000040F059:
	lea	rdx,[000000000048F0D2]                                 ; [rip+00080072]
	mov	rcx,r13
	call	41BDB0h
	test	eax,eax
	jnz	40F90Fh

l000000000040F070:
	mov	rcx,rbx
	call	409850h
	mov	r13,rax
	mov	rax,[rbx+18h]
	cmp	byte ptr [rax],49h
	jz	40FB46h

l000000000040F088:
	mov	r9,r13
	mov	r8,r14
	mov	edx,37h
	mov	rcx,rbx
	call	403730h
	mov	r8,rsi
	mov	r9,rax
	mov	edx,36h
	mov	rcx,rbx
	call	403730h
	mov	rsi,rax
	jmp	40E0F5h

l000000000040F0B6:
	mov	rcx,rbx
	call	403D80h
	mov	r8,rax
	jmp	40DBC6h

l000000000040F0C6:
	mov	rax,[r13+8h]
	lea	rdx,[000000000048EDE2]                                 ; [rip+0007FD11]
	mov	r14,[rax]
	mov	eax,[rax+10h]
	sub	eax,2h
	add	[rbx+50h],eax
	mov	rcx,r14
	call	41BDB0h
	test	eax,eax
	jz	40F9EBh

l000000000040F0ED:
	mov	rax,[r13+8h]
	mov	eax,[rax+14h]
	cmp	eax,1h
	jz	40F663h

l000000000040F0FD:
	jle	40F1DAh

l000000000040F103:
	cmp	eax,2h
	jz	40F348h

l000000000040F10C:
	cmp	eax,3h
	jnz	40E9C3h

l000000000040F115:
	lea	rdx,[000000000048EDEB]                                 ; [rip+0007FCCF]
	mov	rcx,r14
	call	41BDB0h
	test	eax,eax
	jz	40FAE0h

l000000000040F12C:
	cmp	byte ptr [r14],6Eh
	jnz	40E9C3h

l000000000040F136:
	movzx	eax,byte ptr [r14+1h]
	cmp	al,61h
	jz	40F147h

l000000000040F13F:
	cmp	al,77h
	jnz	40E9C3h

l000000000040F147:
	mov	edx,5Fh
	mov	rcx,rbx
	call	40CB30h
	mov	rcx,rbx
	mov	r14,rax
	call	4080A0h
	mov	r15,rax
	mov	rax,[rbx+18h]
	movzx	edx,byte ptr [rax]
	cmp	dl,45h
	jz	40F6CAh

l000000000040F172:
	xor	r8d,r8d
	cmp	dl,70h
	jz	40F6A6h

l000000000040F17E:
	cmp	dl,69h
	jnz	40DBC6h

l000000000040F187:
	cmp	byte ptr [rax+1h],6Ch
	jnz	40DBC6h

l000000000040F191:
	mov	rcx,rbx
	call	40D230h

l000000000040F199:
	mov	r9,rax
	mov	r8,r15
	mov	edx,3Ah
	mov	rcx,rbx
	call	403730h
	mov	r8,r14
	mov	r9,rax
	mov	edx,39h
	mov	rcx,rbx
	call	403730h
	mov	r8,r13
	mov	r9,rax
	mov	edx,38h
	mov	rcx,rbx
	call	403730h
	mov	r8,rax
	jmp	40DBC6h

l000000000040F1DA:
	test	eax,eax
	jnz	40E9C3h

l000000000040F1E2:
	mov	r8,r13
	xor	r9d,r9d
	mov	edx,34h
	mov	rcx,rbx
	call	403730h
	mov	r8,rax
	jmp	40DBC6h

l000000000040F1FD:
	xor	esi,esi
	test	cl,cl
	jnz	40F89Bh

l000000000040F207:
	add	qword ptr [rbx+18h],2h
	mov	edx,45h
	mov	rcx,rbx
	call	40CB30h
	mov	r8,rsi
	mov	r9,rax
	mov	edx,30h
	mov	rcx,rbx
	call	403730h
	mov	rsi,rax
	jmp	40E0F5h

l000000000040F234:
	xor	esi,esi
	test	cl,cl
	jnz	40F9DBh

l000000000040F23E:
	add	qword ptr [rbx+18h],2h
	mov	edx,45h
	mov	rcx,rbx
	call	40CB30h
	mov	r8,rsi
	mov	r9,rax
	mov	edx,30h
	mov	rcx,rbx
	call	403730h
	mov	rdi,rax
	jmp	40E049h

l000000000040F26B:
	test	eax,eax
	jnz	40E618h

l000000000040F273:
	xor	r9d,r9d
	mov	r8,rsi
	mov	edx,34h
	mov	rcx,rbx
	call	403730h
	mov	r14,rax
	jmp	40DD58h

l000000000040F28E:
	add	rax,2h
	mov	rcx,rbx
	mov	[rbx+18h],rax
	call	4080A0h
	mov	rcx,rbx
	mov	rsi,rax
	call	409850h
	mov	rdi,rax
	mov	rax,[rbx+18h]
	cmp	byte ptr [rax],49h
	jz	40F947h

l000000000040F2B9:
	mov	r9,rdi

l000000000040F2BC:
	mov	r8,rsi
	mov	edx,1h
	mov	rcx,rbx
	call	403730h
	mov	r14,rax
	jmp	40DD58h

l000000000040F2D4:
	movzx	eax,byte ptr [rdi]
	cmp	al,6Dh
	jz	40F2E3h

l000000000040F2DB:
	cmp	al,70h
	jnz	40DD3Ah

l000000000040F2E3:
	cmp	al,[rdi+1h]
	jnz	40DD3Ah

l000000000040F2EC:
	mov	rax,[rbx+18h]
	cmp	byte ptr [rax],5Fh
	jz	40FB69h

l000000000040F2F9:
	mov	rcx,rbx
	call	40D230h
	mov	edx,37h
	mov	r8,rax
	mov	r9,rax
	mov	rcx,rbx
	call	403730h
	jmp	40DD42h

l000000000040F319:
	mov	rcx,rbx
	call	403D80h
	mov	rdi,rax
	jmp	40E049h

l000000000040F329:
	mov	eax,[r13+8h]
	cmp	eax,1h
	jz	40E183h

l000000000040F336:
	jle	40F1DAh

l000000000040F33C:
	xor	r14d,r14d
	cmp	eax,2h
	jnz	40F10Ch

l000000000040F348:
	mov	rax,[r13+8h]
	mov	rax,[rax]
	cmp	byte ptr [rax+1h],63h
	jz	40FABAh

l000000000040F359:
	mov	rcx,rbx
	call	40D230h
	mov	r15,rax

l000000000040F364:
	lea	rdx,[000000000048EDE5]                                 ; [rip+0007FA7A]
	mov	rcx,r14
	call	41BDB0h
	test	eax,eax
	jz	40FAA5h

l000000000040F37B:
	lea	rdx,[000000000048F0CF]                                 ; [rip+0007FD4D]
	mov	rcx,r14
	call	41BDB0h
	test	eax,eax
	jz	40F3A5h

l000000000040F38E:
	lea	rdx,[000000000048F0D2]                                 ; [rip+0007FD3D]
	mov	rcx,r14
	call	41BDB0h
	test	eax,eax
	jnz	40FB03h

l000000000040F3A5:
	mov	rcx,rbx
	call	409850h
	mov	r14,rax
	mov	rax,[rbx+18h]
	cmp	byte ptr [rax],49h
	jz	40F7B5h

l000000000040F3BD:
	mov	r9,r14
	mov	r8,r15
	mov	edx,37h
	mov	rcx,rbx
	call	403730h
	mov	r8,r13
	mov	r9,rax
	mov	edx,36h
	mov	rcx,rbx
	call	403730h
	mov	r8,rax
	jmp	40DBC6h

l000000000040F3EB:
	mov	rcx,rbx
	call	409C60h
	mov	r8,r13
	mov	r9,rax
	mov	edx,4h
	mov	rcx,rbx
	call	403730h
	mov	r9,rax
	jmp	40EBD5h

l000000000040F40E:
	mov	rcx,rbx
	call	4080A0h
	jmp	40DD42h

l000000000040F41B:
	movzx	eax,byte ptr [rax]
	lea	edx,[rax-72h]
	cmp	dl,1h
	jbe	40F431h

l000000000040F426:
	sub	eax,63h
	cmp	al,1h
	ja	40E7BDh

l000000000040F431:
	mov	rcx,rbx
	call	4080A0h
	mov	r14,rax
	jmp	40E7C8h

l000000000040F441:
	mov	rcx,rbx
	call	40D230h
	mov	rsi,rax
	jmp	40E821h

l000000000040F451:
	add	rdx,2h
	mov	rcx,rbx
	mov	[rbx+18h],rdx
	call	4080A0h
	mov	rcx,rbx
	mov	r13,rax
	call	409850h
	mov	r14,rax
	mov	rax,[rbx+18h]
	cmp	byte ptr [rax],49h
	jz	40F96Ah

l000000000040F47C:
	mov	r9,r14

l000000000040F47F:
	mov	r8,r13
	mov	edx,1h
	mov	rcx,rbx
	call	403730h
	mov	r8,rax
	jmp	40DBC6h

l000000000040F497:
	mov	rcx,rbx
	call	40D230h
	mov	rcx,rbx
	mov	r14,rax
	call	40D230h
	mov	rcx,rbx
	mov	r15,rax
	call	40D230h
	jmp	40E6F1h

l000000000040F4BA:
	mov	rcx,rbx
	call	4080A0h
	jmp	40DA37h

l000000000040F4C7:
	mov	rcx,rbx
	call	4080A0h
	mov	rsi,rax
	jmp	40E912h

l000000000040F4D7:
	add	rax,2h
	mov	rcx,rbx
	mov	[rbx+18h],rax
	call	4080A0h
	mov	rcx,rbx
	mov	rsi,rax
	call	409850h
	mov	rdi,rax
	mov	rax,[rbx+18h]
	cmp	byte ptr [rax],49h
	jz	40FA82h

l000000000040F502:
	mov	r9,rdi

l000000000040F505:
	mov	r8,rsi
	mov	edx,1h
	mov	rcx,rbx
	call	403730h
	mov	rdi,rax
	jmp	40E049h

l000000000040F51D:
	movzx	eax,byte ptr [r13+0h]
	cmp	al,6Dh
	jz	40F52Eh

l000000000040F526:
	cmp	al,70h
	jnz	40E0D7h

l000000000040F52E:
	cmp	al,[r13+1h]
	jnz	40E0D7h

l000000000040F538:
	mov	rax,[rbx+18h]
	cmp	byte ptr [rax],5Fh
	jz	40F86Bh

l000000000040F545:
	mov	rcx,rbx
	call	40D230h
	mov	edx,37h
	mov	r8,rax
	mov	r9,rax
	mov	rcx,rbx
	call	403730h
	jmp	40E0DFh

l000000000040F565:
	movzx	eax,byte ptr [rdi]
	cmp	al,6Dh
	jz	40F574h

l000000000040F56C:
	cmp	al,70h
	jnz	40E02Bh

l000000000040F574:
	cmp	al,[rdi+1h]
	jnz	40E02Bh

l000000000040F57D:
	mov	rax,[rbx+18h]
	cmp	byte ptr [rax],5Fh
	jz	40F8BBh

l000000000040F58A:
	mov	rcx,rbx
	call	40D230h
	mov	edx,37h
	mov	r8,rax
	mov	r9,rax
	mov	rcx,rbx
	call	403730h
	jmp	40E033h

l000000000040F5AA:
	movzx	eax,byte ptr [rax]
	lea	edx,[rax-72h]
	cmp	dl,1h
	jbe	40F5C0h

l000000000040F5B5:
	sub	eax,63h
	cmp	al,1h
	ja	40EB15h

l000000000040F5C0:
	mov	rcx,rbx
	call	4080A0h
	mov	r14,rax
	jmp	40EB20h

l000000000040F5D0:
	mov	rcx,rbx
	call	40D230h
	mov	rcx,rbx
	mov	rdi,rax
	call	40D230h
	mov	rcx,rbx
	mov	r14,rax
	call	40D230h
	jmp	40EA96h

l000000000040F5F3:
	mov	edx,45h
	mov	rcx,rbx
	call	40CB30h
	mov	rsi,rax
	jmp	40E821h

l000000000040F608:
	mov	edx,45h
	mov	rcx,rbx
	call	40CB30h
	mov	rdi,rax
	jmp	40EB79h

l000000000040F61D:
	add	rdx,2h
	mov	rcx,rbx
	mov	[rbx+18h],rdx
	call	4080A0h
	mov	rcx,rbx
	mov	rsi,rax
	call	409850h
	mov	r13,rax
	mov	rax,[rbx+18h]
	cmp	byte ptr [rax],49h
	jz	40F878h

l000000000040F648:
	mov	r9,r13

l000000000040F64B:
	mov	r8,rsi
	mov	edx,1h
	mov	rcx,rbx
	call	403730h
	mov	rsi,rax
	jmp	40E0F5h

l000000000040F663:
	movzx	eax,byte ptr [r14]
	cmp	al,6Dh
	jz	40F673h

l000000000040F66B:
	cmp	al,70h
	jnz	40E183h

l000000000040F673:
	cmp	al,[r14+1h]
	jnz	40E183h

l000000000040F67D:
	mov	rax,[rbx+18h]
	cmp	byte ptr [rax],5Fh
	jz	40F6D9h

l000000000040F686:
	mov	rcx,rbx
	call	40D230h
	mov	edx,37h
	mov	r8,rax
	mov	r9,rax
	mov	rcx,rbx
	call	403730h
	jmp	40E18Bh

l000000000040F6A6:
	cmp	byte ptr [rax+1h],69h
	jnz	40DBC6h

l000000000040F6B0:
	add	rax,2h
	mov	edx,45h
	mov	rcx,rbx
	mov	[rbx+18h],rax
	call	40CB30h
	jmp	40F199h

l000000000040F6CA:
	add	rax,1h
	mov	[rbx+18h],rax
	xor	eax,eax
	jmp	40F199h

l000000000040F6D9:
	add	rax,1h
	mov	[rbx+18h],rax
	jmp	40E183h

l000000000040F6E6:
	mov	rcx,rbx
	call	40D230h
	mov	rcx,rbx
	mov	r13,rax
	call	40D230h
	mov	rcx,rbx
	mov	r14,rax
	call	40D230h
	jmp	40EF6Dh

l000000000040F709:
	mov	rcx,rbx
	call	409C60h
	mov	r8,rdi
	mov	r9,rax
	mov	edx,4h
	mov	rcx,rbx
	call	403730h
	mov	rdi,rax
	jmp	40EE99h

l000000000040F72C:
	mov	rcx,rbx
	call	409C60h
	mov	r8,rsi
	mov	r9,rax
	mov	edx,4h
	mov	rcx,rbx
	call	403730h
	mov	rsi,rax
	jmp	40E821h

l000000000040F74F:
	mov	rcx,rbx
	call	4080A0h
	mov	r13,rax
	jmp	40EDB1h

l000000000040F75F:
	cmp	byte ptr [rax+1h],69h
	jnz	40DA4Dh

l000000000040F769:
	add	rax,2h
	mov	edx,45h
	mov	rcx,rbx
	mov	[rbx+18h],rax
	call	40CB30h
	jmp	40E6F1h

l000000000040F783:
	add	rax,1h
	mov	[rbx+18h],rax
	xor	eax,eax
	jmp	40E6F1h

l000000000040F792:
	mov	rcx,rbx
	call	40D230h
	mov	rcx,rbx
	mov	rdi,rax
	call	40D230h
	mov	rcx,rbx
	mov	r13,rax
	call	40D230h
	jmp	40ED32h

l000000000040F7B5:
	mov	rcx,rbx
	call	409C60h
	mov	r8,r14
	mov	r9,rax
	mov	edx,4h
	mov	rcx,rbx
	call	403730h
	mov	r14,rax
	jmp	40F3BDh

l000000000040F7D8:
	mov	rcx,rbx
	call	4080A0h
	jmp	40E033h

l000000000040F7E5:
	mov	eax,69h

l000000000040F7EA:
	xor	edi,edi
	jmp	40E084h

l000000000040F7F1:
	cmp	byte ptr [rdx+1h],69h
	jnz	40F7EAh

l000000000040F7F7:
	add	rdx,2h
	mov	rcx,rbx
	mov	[rbx+18h],rdx
	mov	edx,45h
	call	40CB30h
	jmp	40ED32h

l000000000040F811:
	add	rdx,1h
	xor	eax,eax
	mov	[rbx+18h],rdx
	jmp	40ED32h

l000000000040F820:
	mov	edx,45h
	mov	rcx,rbx
	call	40CB30h
	mov	rdi,rax
	jmp	40EE99h

l000000000040F835:
	movzx	eax,byte ptr [rax]
	lea	edx,[rax-72h]
	cmp	dl,1h
	jbe	40F84Bh

l000000000040F840:
	sub	eax,63h
	cmp	al,1h
	ja	40EE35h

l000000000040F84B:
	mov	rcx,rbx
	call	4080A0h
	mov	r13,rax
	jmp	40EE40h

l000000000040F85B:
	mov	rcx,rbx
	call	40D230h
	mov	rdi,rax
	jmp	40EE99h

l000000000040F86B:
	add	rax,1h
	mov	[rbx+18h],rax
	jmp	40E0D7h

l000000000040F878:
	mov	rcx,rbx
	call	409C60h
	mov	r8,r13
	mov	r9,rax
	mov	edx,4h
	mov	rcx,rbx
	call	403730h
	mov	r9,rax
	jmp	40F64Bh

l000000000040F89B:
	mov	rcx,rbx
	call	4080A0h
	mov	rsi,rax
	jmp	40F207h

l000000000040F8AB:
	mov	rcx,rbx
	call	40D230h
	mov	rdi,rax
	jmp	40EB79h

l000000000040F8BB:
	add	rax,1h
	mov	[rbx+18h],rax
	jmp	40E02Bh

l000000000040F8C8:
	mov	edx,45h
	mov	rcx,rbx
	call	40CB30h
	mov	r13,rax
	jmp	40F088h

l000000000040F8DD:
	movzx	eax,byte ptr [rax]
	lea	edx,[rax-72h]
	cmp	dl,1h
	jbe	40F8F3h

l000000000040F8E8:
	sub	eax,63h
	cmp	al,1h
	ja	40F024h

l000000000040F8F3:
	mov	rcx,rbx
	call	4080A0h
	mov	r14,rax
	jmp	40F02Fh

l000000000040F903:
	mov	eax,69h

l000000000040F908:
	xor	esi,esi
	jmp	40E130h

l000000000040F90F:
	mov	rcx,rbx
	call	40D230h
	mov	r13,rax
	jmp	40F088h

l000000000040F91F:
	cmp	dl,69h
	jz	40D8CEh

l000000000040F928:
	jmp	40D966h

l000000000040F92D:
	add	rax,1h
	mov	edx,45h
	mov	rcx,rbx
	mov	[rbx+18h],rax
	call	40CB30h
	jmp	40E18Bh

l000000000040F947:
	mov	rcx,rbx
	call	409C60h
	mov	r8,rdi
	mov	r9,rax
	mov	edx,4h
	mov	rcx,rbx
	call	403730h
	mov	r9,rax
	jmp	40F2BCh

l000000000040F96A:
	mov	rcx,rbx
	call	409C60h
	mov	r8,r14
	mov	r9,rax
	mov	edx,4h
	mov	rcx,rbx
	call	403730h
	mov	r9,rax
	jmp	40F47Fh

l000000000040F98D:
	add	rax,1h
	mov	edx,45h
	mov	rcx,rbx
	mov	[rbx+18h],rax
	call	40CB30h
	jmp	40E0DFh

l000000000040F9A7:
	add	rax,1h
	mov	edx,45h
	mov	rcx,rbx
	mov	[rbx+18h],rax
	call	40CB30h
	jmp	40DA37h

l000000000040F9C1:
	add	rax,1h
	mov	edx,45h
	mov	rcx,rbx
	mov	[rbx+18h],rax
	call	40CB30h
	jmp	40DD42h

l000000000040F9DB:
	mov	rcx,rbx
	call	4080A0h
	mov	rsi,rax
	jmp	40F23Eh

l000000000040F9EB:
	mov	rcx,rbx
	call	4080A0h
	jmp	40E18Bh

l000000000040F9F8:
	mov	rcx,rbx
	call	4080A0h
	jmp	40E0DFh

l000000000040FA05:
	cmp	byte ptr [rdx+1h],69h
	jnz	40F908h

l000000000040FA0F:
	add	rdx,2h
	mov	rcx,rbx
	mov	[rbx+18h],rdx
	mov	edx,45h
	call	40CB30h
	jmp	40EF6Dh

l000000000040FA29:
	add	rdx,1h
	xor	eax,eax
	mov	[rbx+18h],rdx
	jmp	40EF6Dh

l000000000040FA38:
	add	rax,1h
	mov	edx,45h
	mov	rcx,rbx
	mov	[rbx+18h],rax
	call	40CB30h
	jmp	40E033h

l000000000040FA52:
	add	rax,1h
	mov	[rbx+18h],rax
	jmp	40DA2Fh

l000000000040FA5F:
	mov	rcx,rbx
	call	409C60h
	mov	r8,rdi
	mov	r9,rax
	mov	edx,4h
	mov	rcx,rbx
	call	403730h
	mov	rdi,rax
	jmp	40EB79h

l000000000040FA82:
	mov	rcx,rbx
	call	409C60h
	mov	r8,rdi
	mov	r9,rax
	mov	edx,4h
	mov	rcx,rbx
	call	403730h
	mov	r9,rax
	jmp	40F505h

l000000000040FAA5:
	mov	edx,45h
	mov	rcx,rbx
	call	40CB30h
	mov	r14,rax
	jmp	40F3BDh

l000000000040FABA:
	movzx	eax,byte ptr [rax]
	lea	edx,[rax-72h]
	cmp	dl,1h
	jbe	40FAD0h

l000000000040FAC5:
	sub	eax,63h
	cmp	al,1h
	ja	40F359h

l000000000040FAD0:
	mov	rcx,rbx
	call	4080A0h
	mov	r15,rax
	jmp	40F364h

l000000000040FAE0:
	mov	rcx,rbx
	call	40D230h
	mov	rcx,rbx
	mov	r14,rax
	call	40D230h
	mov	rcx,rbx
	mov	r15,rax
	call	40D230h
	jmp	40F199h

l000000000040FB03:
	mov	rcx,rbx
	call	40D230h
	mov	r14,rax
	jmp	40F3BDh

l000000000040FB13:
	cmp	byte ptr [rdx+1h],69h
	jnz	40E618h

l000000000040FB1D:
	add	rdx,2h
	mov	rcx,rbx
	mov	[rbx+18h],rdx
	mov	edx,45h
	call	40CB30h
	jmp	40EA96h

l000000000040FB37:
	add	rdx,1h
	xor	eax,eax
	mov	[rbx+18h],rdx
	jmp	40EA96h

l000000000040FB46:
	mov	rcx,rbx
	call	409C60h
	mov	r8,r13
	mov	r9,rax
	mov	edx,4h
	mov	rcx,rbx
	call	403730h
	mov	r13,rax
	jmp	40F088h

l000000000040FB69:
	add	rax,1h
	mov	[rbx+18h],rax
	jmp	40DD3Ah
000000000040FB76                   66 2E 0F 1F 84 00 00 00 00 00       f.........

;; fn000000000040FB80: 000000000040FB80
;;   Called from:
;;     00000000004260AD (in fn0000000000426060)
fn000000000040FB80 proc
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,40h
	test	rcx,rcx
	jz	40FB99h

l000000000040FB8F:
	test	rdx,rdx
	jz	40FBC0h

l000000000040FB94:
	test	r8,r8
	jnz	40FBC0h

l000000000040FB99:
	test	r9,r9
	jz	40FC81h

l000000000040FBA2:
	mov	dword ptr [r9],0FFFFFFFDh
	xor	eax,eax

l000000000040FBAB:
	add	rsp,40h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
000000000040FBB6                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l000000000040FBC0:
	mov	rbp,r8
	mov	rdi,rdx
	lea	r8,[rsp+20h]
	lea	rdx,[0000000000404210]                                 ; [rip-0000B9C2]
	mov	rsi,r9
	mov	qword ptr [rsp+20h],+0h
	mov	qword ptr [rsp+28h],+0h
	mov	qword ptr [rsp+30h],+0h
	mov	dword ptr [rsp+38h],0h
	call	40C6B0h
	test	eax,eax
	jz	40FCC0h

l000000000040FC05:
	mov	eax,[rsp+38h]
	mov	rbx,[rsp+20h]
	mov	r12d,1h
	test	eax,eax
	cmovz	r12,[rsp+30h]

l000000000040FC1C:
	test	rbx,rbx
	jz	40FC70h

l000000000040FC21:
	test	rdi,rdi
	jz	40FCA0h

l000000000040FC26:
	mov	rcx,rbx
	call	41BCB8h
	cmp	rax,[rbp+0h]
	jnc	40FC90h

l000000000040FC34:
	lea	r8,[rax+1h]
	mov	rdx,rbx
	mov	rcx,rdi
	call	41BCC0h
	mov	rcx,rbx
	mov	rbx,rdi
	call	41BDA0h

l000000000040FC4E:
	test	rsi,rsi
	jz	40FCB0h

l000000000040FC53:
	mov	rax,rbx
	mov	dword ptr [rsi],0h
	add	rsp,40h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
000000000040FC67                      66 0F 1F 84 00 00 00 00 00        f........

l000000000040FC70:
	test	rsi,rsi
	jz	40FC81h

l000000000040FC75:
	cmp	r12,1h
	jz	40FCD3h

l000000000040FC7B:
	mov	dword ptr [rsi],0FFFFFFFEh

l000000000040FC81:
	xor	eax,eax

l000000000040FC83:
	add	rsp,40h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
000000000040FC8E                                           66 90               f.

l000000000040FC90:
	mov	rcx,rdi
	call	41BDA0h

l000000000040FC98:
	mov	[rbp+0h],r12
	jmp	40FC4Eh
000000000040FC9E                                           66 90               f.

l000000000040FCA0:
	test	rbp,rbp
	jnz	40FC98h

l000000000040FCA5:
	jmp	40FC4Eh
000000000040FCA7                      66 0F 1F 84 00 00 00 00 00        f........

l000000000040FCB0:
	mov	rax,rbx
	jmp	40FBABh
000000000040FCB8                         0F 1F 84 00 00 00 00 00         ........

l000000000040FCC0:
	mov	rcx,[rsp+20h]
	call	41BDA0h
	test	rsi,rsi
	jnz	40FC7Bh

l000000000040FCCF:
	xor	eax,eax
	jmp	40FC83h

l000000000040FCD3:
	mov	dword ptr [rsi],0FFFFFFFFh
	xor	eax,eax
	jmp	40FBABh

;; fn000000000040FCE0: 000000000040FCE0
fn000000000040FCE0 proc
	sub	rsp,28h
	test	rcx,rcx
	jz	40FD00h

l000000000040FCE9:
	test	rdx,rdx
	jz	40FD00h

l000000000040FCEE:
	call	40C6B0h
	cmp	eax,1h
	sbb	eax,eax
	and	eax,0FEh

l000000000040FCFB:
	add	rsp,28h
	ret

l000000000040FD00:
	mov	eax,0FFFFFFFDh
	jmp	40FCFBh
000000000040FD07                      90 90 90 90 90 90 90 90 90        .........

;; fn000000000040FD10: 000000000040FD10
;;   Called from:
;;     0000000000410B4F (in fn0000000000410B40)
;;     0000000000410B70 (in fn0000000000410B40)
;;     0000000000410B81 (in fn0000000000410B40)
fn000000000040FD10 proc
	mov	rax,rcx
	ret
000000000040FD14             66 66 66 2E 0F 1F 84 00 00 00 00 00     fff.........

;; fn000000000040FD20: 000000000040FD20
;;   Called from:
;;     000000000040107C (in fn0000000000401010)
;;     0000000000410BA5 (in fn0000000000410B40)
;;     0000000000410BB6 (in fn0000000000410B40)
fn000000000040FD20 proc
	mov	rax,rcx
	ret
000000000040FD24             90 90 90 90 90 90 90 90 90 90 90 90     ............

;; fn000000000040FD30: 000000000040FD30
;;   Called from:
;;     00000000004010AA (in fn0000000000401010)
fn000000000040FD30 proc
	xor	eax,eax
	ret
000000000040FD33          90 90 90 90 90 90 90 90 90 90 90 90 90    .............

;; fn000000000040FD40: 000000000040FD40
fn000000000040FD40 proc
	sub	rsp,58h
	mov	rax,[00000000004AD070]                                 ; [rip+0009D325]
	test	rax,rax
	jz	40FD7Ch

l000000000040FD50:
	movsd	xmm0,double ptr [rsp+80h]
	mov	[rsp+20h],ecx
	lea	rcx,[rsp+20h]
	mov	[rsp+28h],rdx
	movsd	double ptr [rsp+30h],xmm2
	movsd	double ptr [rsp+38h],xmm3
	movsd	double ptr [rsp+40h],xmm0
	call	rax
	nop

l000000000040FD7C:
	add	rsp,58h
	ret
000000000040FD81    66 66 66 66 66 66 2E 0F 1F 84 00 00 00 00 00  ffffff.........

;; fn000000000040FD90: 000000000040FD90
;;   Called from:
;;     0000000000401127 (in fn0000000000401010)
fn000000000040FD90 proc
	mov	[00000000004AD070],rcx                                 ; [rip+0009D2D9]
	jmp	41BE70h
000000000040FD9C                                     0F 1F 40 00             ..@.

;; fn000000000040FDA0: 000000000040FDA0
fn000000000040FDA0 proc
	push	rsi
	push	rbx
	sub	rsp,78h
	movaps	[rsp+40h],xmm6
	movaps	[rsp+50h],xmm7
	movaps	[rsp+60h],xmm8
	cmp	dword ptr [rcx],6h
	ja	40FE90h

l000000000040FDBF:
	mov	edx,[rcx]
	lea	rax,[00000000004905E4]                                 ; [rip+0008081C]
	movsxd	rdx,dword ptr [rax+rdx*4]
	add	rax,rdx
	jmp	rax

l000000000040FDD1:
	lea	rbx,[00000000004904C0]                                 ; [rip+000806E8]
	nop	dword ptr [rax+rax+0h]

l000000000040FDE0:
	movsd	xmm8,double ptr [rcx+20h]
	mov	rsi,[rcx+8h]
	movsd	xmm7,double ptr [rcx+18h]
	movsd	xmm6,double ptr [rcx+10h]
	call	41BDA8h
	movsd	double ptr [rsp+30h],xmm8
	lea	rcx,[rax+60h]
	lea	rdx,[00000000004905B8]                                 ; [rip+000807AD]
	movsd	double ptr [rsp+28h],xmm7
	mov	r9,rsi
	mov	r8,rbx
	movsd	double ptr [rsp+20h],xmm6
	call	41BE78h
	nop
	movaps	xmm6,[rsp+40h]
	xor	eax,eax
	movaps	xmm7,[rsp+50h]
	movaps	xmm8,[rsp+60h]
	add	rsp,78h
	pop	rbx
	pop	rsi
	ret
000000000040FE3C                                     0F 1F 40 00             ..@.

l000000000040FE40:
	lea	rbx,[00000000004904DF]                                 ; [rip+00080698]
	jmp	40FDE0h
000000000040FE49                            0F 1F 80 00 00 00 00          .......

l000000000040FE50:
	lea	rbx,[0000000000490500]                                 ; [rip+000806A9]
	jmp	40FDE0h
000000000040FE59                            0F 1F 80 00 00 00 00          .......

l000000000040FE60:
	lea	rbx,[0000000000490570]                                 ; [rip+00080709]
	jmp	40FDE0h
000000000040FE6C                                     0F 1F 40 00             ..@.

l000000000040FE70:
	lea	rbx,[0000000000490548]                                 ; [rip+000806D1]
	jmp	40FDE0h
000000000040FE7C                                     0F 1F 40 00             ..@.

l000000000040FE80:
	lea	rbx,[0000000000490520]                                 ; [rip+00080699]
	jmp	40FDE0h
000000000040FE8C                                     0F 1F 40 00             ..@.

l000000000040FE90:
	lea	rbx,[00000000004905A6]                                 ; [rip+0008070F]
	jmp	40FDE0h
000000000040FE9C                                     90 90 90 90             ....

;; fn000000000040FEA0: 000000000040FEA0
;;   Called from:
;;     0000000000410040 (in fn000000000040FF10)
;;     000000000041005D (in fn000000000040FF10)
;;     000000000041006C (in fn000000000040FF10)
;;     000000000041031A (in fn0000000000410080)
;;     0000000000410367 (in fn0000000000410080)
;;     0000000000410373 (in fn0000000000410080)
fn000000000040FEA0 proc
	push	rsi
	push	rbx
	sub	rsp,38h
	lea	rax,[rsp+58h]
	mov	rbx,rcx
	mov	[rsp+58h],rdx
	mov	[rsp+60h],r8
	mov	[rsp+68h],r9
	mov	[rsp+28h],rax
	call	41BDA8h
	lea	rcx,[0000000000490600]                                 ; [rip+00080732]
	lea	r9,[rax+60h]
	mov	r8d,1Bh
	mov	edx,1h
	call	41BD70h
	mov	rsi,[rsp+28h]
	call	41BDA8h
	lea	rcx,[rax+60h]
	mov	rdx,rbx
	mov	r8,rsi
	call	41BE80h
	call	41BD30h
	nop
	nop	dword ptr cs:[rax+rax+0h]

;; fn000000000040FF10: 000000000040FF10
;;   Called from:
;;     000000000040FF01 (in fn000000000040FEA0)
;;     00000000004101C6 (in fn0000000000410080)
;;     000000000041028E (in fn0000000000410080)
;;     00000000004102CC (in fn0000000000410080)
;;     0000000000410301 (in fn0000000000410080)
;;     0000000000410344 (in fn0000000000410080)
fn000000000040FF10 proc
	push	r13
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,58h
	movsxd	rbp,[00000000004AD084]                              ; [rip+0009D161]
	mov	rbx,rcx
	mov	rsi,rdx
	mov	rdi,r8
	test	ebp,ebp
	jle	41002Ah

l000000000040FF34:
	mov	rax,[00000000004AD088]                                 ; [rip+0009D14D]
	xor	r9d,r9d
	add	rax,8h

l000000000040FF42:
	mov	r10,[rax]
	cmp	rbx,r10
	jc	40FF5Eh

l000000000040FF4A:
	mov	rdx,[rax+8h]
	mov	r11d,[rdx+8h]
	add	r10,r11
	cmp	rbx,r10
	jc	410010h

l000000000040FF5E:
	add	r9d,1h
	add	rax,18h
	cmp	r9d,ebp
	jnz	40FF42h

l000000000040FF6B:
	mov	rcx,rbx
	call	410D50h
	test	rax,rax
	mov	r12,rax
	jz	410062h

l000000000040FF7F:
	lea	rbp,[rbp+rbp*2+0h]
	shl	rbp,3h
	mov	r13,rbp
	add	r13,[00000000004AD088]                                 ; [rip+0009D0F6]
	mov	[r13+10h],rax
	mov	dword ptr [r13+0h],0h
	call	410E70h
	mov	edx,[r12+0Ch]
	mov	r8d,30h
	add	rax,rdx
	lea	rdx,[rsp+20h]
	mov	[r13+8h],rax
	mov	rax,[00000000004AD088]                                 ; [rip+0009D0C7]
	mov	rcx,[rax+rbp+8h]
	call	[00000000004AF6EC]                                    ; [rip+0009F720]
	test	rax,rax
	jz	410045h

l000000000040FFD1:
	mov	eax,[rsp+44h]
	lea	edx,[rax-4h]
	and	edx,0FBh
	jz	410009h

l000000000040FFDD:
	sub	eax,40h
	and	eax,0BFh
	jz	410009h

l000000000040FFE5:
	mov	r9,rbp
	add	r9,[00000000004AD088]                                  ; [rip+0009D099]
	mov	r8d,40h
	mov	rdx,[rsp+38h]
	mov	rcx,[rsp+20h]
	call	[00000000004AF6E4]                                    ; [rip+0009F6DF]
	test	eax,eax
	jz	410031h

l0000000000410009:
	add	[00000000004AD084],1h                                  ; [rip+0009D074]

l0000000000410010:
	mov	r8,rdi
	mov	rdx,rsi
	mov	rcx,rbx
	add	rsp,58h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	jmp	41BCC0h

l000000000041002A:
	xor	ebp,ebp
	jmp	40FF6Bh

l0000000000410031:
	call	[00000000004AF59C]                                    ; [rip+0009F565]
	lea	rcx,[0000000000490678]                                 ; [rip+0008063A]
	mov	edx,eax
	call	40FEA0h

l0000000000410045:
	mov	rax,[00000000004AD088]                                 ; [rip+0009D03C]
	mov	edx,[r12+8h]
	lea	rcx,[0000000000490640]                                 ; [rip+000805E8]
	mov	r8,[rax+rbp+8h]
	call	40FEA0h

l0000000000410062:
	lea	rcx,[0000000000490620]                                 ; [rip+000805B7]
	mov	rdx,rbx
	call	40FEA0h
	nop
	nop	word ptr cs:[rax+rax+0h]

;; fn0000000000410080: 0000000000410080
;;   Called from:
;;     0000000000401278 (in fn00000000004011B0)
;;     0000000000410072 (in fn000000000040FF10)
fn0000000000410080 proc
	push	rbp
	push	r14
	push	r13
	push	r12
	push	rdi
	push	rsi
	push	rbx
	mov	rbp,rsp
	sub	rsp,60h
	mov	ebx,[00000000004AD080]                                 ; [rip+0009CFE9]
	test	ebx,ebx
	jz	4100B0h

l000000000041009B:
	mov	rsp,rbp
	pop	rbx
	pop	rsi
	pop	rdi
	pop	r12
	pop	r13
	pop	r14
	pop	rbp
	ret
00000000004100A9                            0F 1F 80 00 00 00 00          .......

l00000000004100B0:
	mov	[00000000004AD080],1h                                  ; [rip+0009CFC6]
	call	410DA0h
	cdqe
	lea	rax,[rax+rax*2]
	lea	rax,[001Eh+rax*8]
	and	rax,0F0h
	call	4116F0h
	mov	rsi,[0000000000491E90]                                 ; [rip+00081DB3]
	mov	rbx,[0000000000491EA0]                                 ; [rip+00081DBC]
	sub	rsp,rax
	mov	[00000000004AD084],0h                                  ; [rip+0009CF93]
	lea	rax,[rsp+20h]
	mov	[00000000004AD088],rax                                 ; [rip+0009CF8B]
	mov	rax,rsi
	sub	rax,rbx
	cmp	rax,7h
	jle	41009Bh

l0000000000410109:
	cmp	rax,0Bh
	jle	410135h

l000000000041010F:
	mov	r11d,[rbx]
	test	r11d,r11d
	jnz	410260h

l000000000041011B:
	mov	r10d,[rbx+4h]
	test	r10d,r10d
	jnz	410260h

l0000000000410128:
	mov	r9d,[rbx+8h]
	test	r9d,r9d
	jnz	41014Ch

l0000000000410131:
	add	rbx,0Ch

l0000000000410135:
	mov	r8d,[rbx]
	test	r8d,r8d
	jnz	410260h

l0000000000410141:
	mov	ecx,[rbx+4h]
	test	ecx,ecx
	jnz	410260h

l000000000041014C:
	mov	edx,[rbx+8h]
	cmp	edx,1h
	jnz	41036Ch

l0000000000410158:
	add	rbx,0Ch
	cmp	rbx,rsi
	jnc	41009Bh

l0000000000410165:
	mov	r12,[0000000000491EE0]                                 ; [rip+00081D74]
	lea	r13,[rbp-30h]
	mov	r14,0FFFFFFFF00000000h

l000000000041017A:
	mov	ecx,[rbx+4h]
	mov	eax,[rbx]
	movzx	edx,byte ptr [rbx+8h]
	add	rax,r12
	add	rcx,r12
	cmp	edx,10h
	mov	r8,[rax]
	jz	4102D6h

l0000000000410195:
	jbe	41029Dh

l000000000041019B:
	cmp	edx,20h
	jz	41031Fh

l00000000004101A4:
	cmp	edx,40h
	jnz	41030Bh

l00000000004101AD:
	sub	r8,rax
	mov	rdx,r13
	mov	rdi,r13
	mov	rax,r8
	add	rax,[rcx]
	mov	r8d,8h
	mov	[rbp-30h],rax
	call	40FF10h

l00000000004101CB:
	add	rbx,0Ch
	cmp	rbx,rsi
	jc	41017Ah

l00000000004101D4:
	mov	eax,[00000000004AD084]                                 ; [rip+0009CEAA]
	xor	ebx,ebx
	xor	esi,esi
	test	eax,eax
	jle	41009Bh

l00000000004101E6:
	mov	r14,[00000000004AF6EC]                                 ; [rip+0009F4FF]
	lea	r13,[rbp-34h]
	mov	r12,[00000000004AF6E4]                                 ; [rip+0009F4EC]
	jmp	410213h
00000000004101FA                               66 0F 1F 44 00 00           f..D..

l0000000000410200:
	add	esi,1h
	add	rbx,18h
	cmp	esi,[00000000004AD084]                                 ; [rip+0009CE77]
	jge	41009Bh

l0000000000410213:
	mov	rax,rbx
	add	rax,[00000000004AD088]                                 ; [rip+0009CE6B]
	mov	edx,[rax]
	test	edx,edx
	jz	410200h

l0000000000410223:
	mov	rcx,[rax+8h]
	mov	r8d,30h
	mov	rdx,rdi
	call	r14
	test	rax,rax
	jz	41034Eh

l000000000041023C:
	mov	rax,[00000000004AD088]                                 ; [rip+0009CE45]
	mov	r9,r13
	mov	rdx,[rbp-18h]
	mov	rcx,[rbp-30h]
	mov	r8d,[rax+rbx]
	call	r12
	jmp	410200h
0000000000410257                      66 0F 1F 84 00 00 00 00 00        f........

l0000000000410260:
	cmp	rbx,rsi
	jnc	41009Bh

l0000000000410269:
	mov	r12,[0000000000491EE0]                                 ; [rip+00081C70]
	lea	rdi,[rbp-30h]

l0000000000410274:
	mov	ecx,[rbx+4h]
	mov	eax,[rbx]
	mov	r8d,4h
	mov	rdx,rdi
	add	rbx,8h
	add	rcx,r12
	add	eax,[rcx]
	mov	[rbp-30h],eax
	call	40FF10h
	cmp	rbx,rsi
	jc	410274h

l0000000000410298:
	jmp	4101D4h

l000000000041029D:
	cmp	edx,8h
	jnz	41030Bh

l00000000004102A2:
	movzx	edx,byte ptr [rcx]
	mov	rdi,r13
	mov	r10,rdx
	or	r10,-100h
	test	dl,dl
	cmovs	rdx,r10

l00000000004102B8:
	sub	rdx,rax
	lea	rax,[r8+rdx]
	mov	r8d,1h
	mov	rdx,r13
	mov	[rbp-30h],rax
	call	40FF10h
	jmp	4101CBh

l00000000004102D6:
	movzx	edx,word ptr [rcx]
	mov	rdi,r13
	mov	r10,rdx
	or	r10,-10000h
	test	dx,dx
	cmovs	rdx,r10

l00000000004102ED:
	sub	rdx,rax
	lea	rax,[r8+rdx]
	mov	r8d,2h
	mov	rdx,r13
	mov	[rbp-30h],rax
	call	40FF10h
	jmp	4101CBh

l000000000041030B:
	lea	rcx,[00000000004906D8]                                 ; [rip+000803C6]
	mov	qword ptr [rbp-30h],+0h
	call	40FEA0h

l000000000041031F:
	mov	edx,[rcx]
	mov	rdi,r13
	mov	r10,rdx
	or	r10,r14
	test	edx,edx
	cmovs	rdx,r10

l0000000000410330:
	sub	rdx,rax
	lea	rax,[r8+rdx]
	mov	r8d,4h
	mov	rdx,r13
	mov	[rbp-30h],rax
	call	40FF10h
	jmp	4101CBh

l000000000041034E:
	add	rbx,[00000000004AD088]                                 ; [rip+0009CD33]
	lea	rcx,[0000000000490640]                                 ; [rip+000802E4]
	mov	rax,[rbx+10h]
	mov	r8,[rbx+8h]
	mov	edx,[rax+8h]
	call	40FEA0h

l000000000041036C:
	lea	rcx,[00000000004906A0]                                 ; [rip+0008032D]
	call	40FEA0h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop

;; fn0000000000410380: 0000000000410380
;;   Called from:
;;     000000000041037F (in fn0000000000410080)
fn0000000000410380 proc
	sub	rsp,28h
	mov	eax,[rcx]
	cmp	eax,0C0000091h
	ja	4103F0h

l000000000041038D:
	cmp	eax,0C000008Dh
	jnc	41040Fh

l0000000000410394:
	cmp	eax,0C0000008h
	jz	4104B0h

l000000000041039F:
	ja	410480h

l00000000004103A5:
	cmp	eax,80000002h
	jz	4104B0h

l00000000004103B0:
	cmp	eax,0C0000005h
	jnz	41048Eh

l00000000004103BB:
	xor	edx,edx
	mov	ecx,0Bh
	call	41BE88h
	cmp	rax,1h
	jz	410510h

l00000000004103D1:
	test	rax,rax
	jz	4104F0h

l00000000004103DA:
	mov	ecx,0Bh
	call	rax
	xor	eax,eax

l00000000004103E3:
	add	rsp,28h
	ret
00000000004103E8                         0F 1F 84 00 00 00 00 00         ........

l00000000004103F0:
	cmp	eax,0C0000094h
	jz	4104C0h

l00000000004103FB:
	ja	410440h

l00000000004103FD:
	cmp	eax,0C0000092h
	jz	4104B0h

l0000000000410408:
	cmp	eax,0C0000093h
	jnz	41048Eh

l000000000041040F:
	xor	edx,edx
	mov	ecx,8h
	call	41BE88h
	cmp	rax,1h
	mov	rdx,rax
	jz	410498h

l0000000000410424:
	test	rdx,rdx
	mov	eax,1h
	jz	4103E3h

l000000000041042E:
	mov	ecx,8h
	call	rdx
	xor	eax,eax
	add	rsp,28h
	ret
000000000041043C                                     0F 1F 40 00             ..@.

l0000000000410440:
	cmp	eax,0C0000095h
	jz	4104B0h

l0000000000410447:
	cmp	eax,0C0000096h
	jnz	41048Eh

l000000000041044E:
	xor	edx,edx
	mov	ecx,4h
	call	41BE88h
	cmp	rax,1h
	jz	4104FAh

l0000000000410464:
	test	rax,rax
	jz	4104F0h

l000000000041046D:
	mov	ecx,4h
	call	rax
	xor	eax,eax
	jmp	4103E3h
000000000041047B                                  0F 1F 44 00 00            ..D..

l0000000000410480:
	cmp	eax,0C000001Dh
	jz	41044Eh

l0000000000410487:
	cmp	eax,0C000008Ch
	jz	4104B0h

l000000000041048E:
	mov	eax,1h
	add	rsp,28h
	ret

l0000000000410498:
	mov	edx,1h
	mov	ecx,8h
	call	41BE88h
	call	4107E0h
	nop	dword ptr [rax+0h]

l00000000004104B0:
	xor	eax,eax
	add	rsp,28h
	ret
00000000004104B7                      66 0F 1F 84 00 00 00 00 00        f........

l00000000004104C0:
	xor	edx,edx
	mov	ecx,8h
	call	41BE88h
	cmp	rax,1h
	mov	rdx,rax
	jnz	410424h

l00000000004104D9:
	mov	edx,1h
	mov	ecx,8h
	call	41BE88h
	xor	eax,eax
	jmp	4103E3h
00000000004104EF                                              90                .

l00000000004104F0:
	mov	eax,4h
	add	rsp,28h
	ret

l00000000004104FA:
	mov	edx,1h
	mov	ecx,4h
	call	41BE88h
	xor	eax,eax
	jmp	4103E3h

l0000000000410510:
	mov	edx,1h
	mov	ecx,0Bh
	call	41BE88h
	xor	eax,eax
	jmp	4103E3h
0000000000410526                   66 2E 0F 1F 84 00 00 00 00 00       f.........

;; fn0000000000410530: 0000000000410530
;;   Called from:
;;     0000000000401294 (in fn00000000004011B0)
fn0000000000410530 proc
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,20h
	call	410E70h
	mov	rbp,rax
	mov	eax,[00000000004AD0C8]                                 ; [rip+0009CB80]
	test	eax,eax
	jnz	410571h

l000000000041054C:
	test	rbp,rbp
	jz	410571h

l0000000000410551:
	lea	rcx,[0000000000490710]                                 ; [rip+000801B8]
	mov	[00000000004AD0C8],1h                                  ; [rip+0009CB66]
	call	410CB0h
	test	rax,rax
	jz	410580h

l000000000041056C:
	mov	eax,1h

l0000000000410571:
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
000000000041057C                                     0F 1F 40 00             ..@.

l0000000000410580:
	lea	rbx,[00000000004AD200]                                 ; [rip+0009CC79]
	mov	ecx,30h
	lea	rdx,[00000000004AD100]                                 ; [rip+0009CB6D]
	lea	r12,[0000000000410380]                                 ; [rip-0000021A]
	xor	esi,esi
	mov	rdi,rbx

l000000000041059F:
	rep stosq

l00000000004105A2:
	mov	rdi,rdx
	sub	r12,rbp
	mov	cl,20h

l00000000004105AA:
	rep stosq

l00000000004105AD:
	mov	rdi,rdx
	jmp	4105E0h

l00000000004105B2:
	mov	byte ptr [rdi],9h
	mov	[rdi+4h],r12d
	add	rsi,1h
	mov	edx,[rax+0Ch]
	add	rbx,0Ch
	mov	[rbx-0Ch],edx
	add	edx,[rax+8h]
	mov	rax,rdi
	sub	rax,rbp
	add	rdi,8h
	mov	[rbx-4h],eax
	mov	[rbx-8h],edx
	cmp	rsi,20h
	jz	410615h

l00000000004105E0:
	mov	rcx,rsi
	call	410DE0h
	test	rax,rax
	jnz	4105B2h

l00000000004105ED:
	test	rsi,rsi
	jz	41056Ch

l00000000004105F6:
	mov	edx,esi
	nop	dword ptr [rax+rax+0h]

l0000000000410600:
	mov	r8,rbp
	lea	rcx,[00000000004AD200]                                 ; [rip+0009CBF6]
	call	[00000000004AF63C]                                    ; [rip+0009F02C]
	jmp	41056Ch

l0000000000410615:
	mov	edx,20h
	jmp	410600h
000000000041061C                                     0F 1F 40 00             ..@.

;; fn0000000000410620: 0000000000410620
fn0000000000410620 proc
	push	rbx
	sub	rsp,20h
	mov	rdx,[rcx]
	mov	eax,[rdx]
	mov	r8d,eax
	and	r8d,20FFFFFFh
	cmp	r8d,20474343h
	jz	410740h

l0000000000410641:
	cmp	eax,0C0000091h
	mov	rbx,rcx
	ja	4106D0h

l000000000041064F:
	cmp	eax,0C000008Dh
	jnc	4106E7h

l000000000041065A:
	cmp	eax,0C0000008h
	jz	410693h

l0000000000410661:
	ja	4106A0h

l0000000000410663:
	cmp	eax,80000002h
	jz	410693h

l000000000041066A:
	cmp	eax,0C0000005h
	jnz	4106B2h

l0000000000410671:
	xor	edx,edx
	mov	ecx,0Bh
	call	41BE88h
	cmp	rax,1h
	jz	4107B0h

l0000000000410687:
	test	rax,rax
	jz	4106B2h

l000000000041068C:
	mov	ecx,0Bh
	call	rax

l0000000000410693:
	mov	eax,0FFFFFFFFh

l0000000000410698:
	add	rsp,20h
	pop	rbx
	ret
000000000041069E                                           66 90               f.

l00000000004106A0:
	cmp	eax,0C000001Dh
	jz	410766h

l00000000004106AB:
	cmp	eax,0C000008Ch
	jz	410693h

l00000000004106B2:
	mov	rax,[00000000004AD0C0]                                 ; [rip+0009CA07]
	test	rax,rax
	jz	410698h

l00000000004106BE:
	mov	rcx,rbx
	add	rsp,20h
	pop	rbx
	jmp	rax
00000000004106C9                            0F 1F 80 00 00 00 00          .......

l00000000004106D0:
	cmp	eax,0C0000094h
	jz	410712h

l00000000004106D7:
	ja	410750h

l00000000004106D9:
	cmp	eax,0C0000092h
	jz	410693h

l00000000004106E0:
	cmp	eax,0C0000093h
	jnz	4106B2h

l00000000004106E7:
	xor	edx,edx
	mov	ecx,8h
	call	41BE88h
	cmp	rax,1h
	jnz	410724h

l00000000004106F9:
	mov	edx,1h
	mov	ecx,8h
	call	41BE88h
	call	4107E0h
	jmp	410693h

l0000000000410712:
	xor	edx,edx
	mov	ecx,8h
	call	41BE88h
	cmp	rax,1h
	jz	410792h

l0000000000410724:
	test	rax,rax
	jz	4106B2h

l0000000000410729:
	mov	ecx,8h
	call	rax
	mov	eax,0FFFFFFFFh
	jmp	410698h
000000000041073A                               66 0F 1F 44 00 00           f..D..

l0000000000410740:
	test	byte ptr [rdx+4h],1h
	jnz	410641h

l000000000041074A:
	jmp	410693h
000000000041074F                                              90                .

l0000000000410750:
	cmp	eax,0C0000095h
	jz	410693h

l000000000041075B:
	cmp	eax,0C0000096h
	jnz	4106B2h

l0000000000410766:
	xor	edx,edx
	mov	ecx,4h
	call	41BE88h
	cmp	rax,1h
	jz	4107C4h

l0000000000410778:
	test	rax,rax
	jz	4106B2h

l0000000000410781:
	mov	ecx,4h
	call	rax
	mov	eax,0FFFFFFFFh
	jmp	410698h

l0000000000410792:
	mov	edx,1h
	mov	ecx,8h
	call	41BE88h
	jmp	410693h
00000000004107A6                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l00000000004107B0:
	mov	edx,1h
	mov	ecx,0Bh
	call	41BE88h
	jmp	410693h

l00000000004107C4:
	mov	edx,1h
	mov	ecx,4h
	call	41BE88h
	jmp	410693h
00000000004107D8                         90 90 90 90 90 90 90 90         ........

;; fn00000000004107E0: 00000000004107E0
;;   Called from:
;;     00000000004012A5 (in fn00000000004011B0)
;;     00000000004104A7 (in fn0000000000410380)
;;     0000000000410708 (in fn0000000000410620)
fn00000000004107E0 proc
	fninit
	ret
00000000004107E3          90 90 90 90 90 90 90 90 90 90 90 90 90    .............

;; fn00000000004107F0: 00000000004107F0
fn00000000004107F0 proc
	sub	rsp,28h
	mov	rax,[0000000000477020]                                 ; [rip+00066825]
	mov	rax,[rax]
	test	rax,rax
	jz	410820h

l0000000000410803:
	call	rax
	mov	rax,[0000000000477020]                                 ; [rip+00066814]
	lea	rdx,[rax+8h]
	mov	rax,[rax+8h]
	mov	[0000000000477020],rdx                                 ; [rip+00066805]
	test	rax,rax
	jnz	410803h

l0000000000410820:
	add	rsp,28h
	ret
0000000000410825                66 66 2E 0F 1F 84 00 00 00 00 00      ff.........

;; fn0000000000410830: 0000000000410830
;;   Called from:
;;     00000000004108AA (in fn0000000000410890)
fn0000000000410830 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	mov	rsi,[0000000000491E80]                                 ; [rip+00081643]
	mov	rax,[rsi]
	cmp	eax,0FFh
	mov	ebx,eax
	jz	410870h

l0000000000410847:
	test	ebx,ebx
	jz	41085Ah

l000000000041084B:
	nop	dword ptr [rax+rax+0h]

l0000000000410850:
	mov	eax,ebx
	call	qword ptr [rsi+rax*8]
	sub	ebx,1h
	jnz	410850h

l000000000041085A:
	lea	rcx,[00000000004107F0]                                 ; [rip-00000071]
	add	rsp,28h
	pop	rbx
	pop	rsi
	jmp	410BF0h
000000000041086C                                     0F 1F 40 00             ..@.

l0000000000410870:
	xor	ebx,ebx
	jmp	410876h

l0000000000410874:
	mov	ebx,eax

l0000000000410876:
	lea	edx,[rbx+1h]
	cmp	qword ptr [rsi+rdx*8],0h
	mov	rax,rdx
	jnz	410874h

l0000000000410883:
	jmp	410847h
0000000000410885                66 66 2E 0F 1F 84 00 00 00 00 00      ff.........

;; fn0000000000410890: 0000000000410890
;;   Called from:
;;     00000000004013B6 (in fn00000000004011B0)
;;     000000000040250B (in fn00000000004024FC)
fn0000000000410890 proc
	mov	eax,[00000000004AD380]                                 ; [rip+0009CAEA]
	test	eax,eax
	jz	4108A0h

l000000000041089A:
	ret
000000000041089C                                     0F 1F 40 00             ..@.

l00000000004108A0:
	mov	[00000000004AD380],1h                                  ; [rip+0009CAD6]
	jmp	410830h
00000000004108AC                                     90 90 90 90             ....

;; fn00000000004108B0: 00000000004108B0
;;   Called from:
;;     00000000004014E1 (in fn00000000004014D0)
;;     0000000000401511 (in Win32CrtStartup)
fn00000000004108B0 proc
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,40h
	mov	rbx,[000000000048C0B0]                                 ; [rip+0007B7EF]
	mov	rax,2B992DDFA232h
	mov	qword ptr [rsp+20h],+0h
	cmp	rbx,rax
	jz	4108F0h

l00000000004108D9:
	not	rbx
	mov	[000000000048C0C0],rbx                                 ; [rip+0007B7DD]
	add	rsp,40h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
00000000004108EE                                           66 90               f.

l00000000004108F0:
	lea	rcx,[rsp+20h]
	call	[00000000004AF5CC]                                    ; [rip+0009ECD1]
	mov	r12,[rsp+20h]
	call	[00000000004AF57C]                                    ; [rip+0009EC76]
	mov	ebp,eax
	call	[00000000004AF58C]                                    ; [rip+0009EC7E]
	mov	edi,eax
	call	[00000000004AF5E4]                                    ; [rip+0009ECCE]
	lea	rcx,[rsp+30h]
	mov	esi,eax
	call	[00000000004AF60C]                                    ; [rip+0009ECE9]
	xor	r12,[rsp+30h]
	mov	edx,edi
	mov	rax,0FFFFFFFFFFFFh
	xor	rbp,r12
	mov	rdi,rbp
	xor	rdi,rdx
	mov	edx,esi
	xor	rdi,rdx
	mov	rsi,rdi
	and	rsi,rax
	cmp	rsi,rbx
	jz	410970h

l000000000041094D:
	mov	rax,rsi
	not	rax

l0000000000410953:
	mov	[000000000048C0B0],rsi                                 ; [rip+0007B756]
	mov	[000000000048C0C0],rax                                 ; [rip+0007B75F]
	add	rsp,40h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
000000000041096C                                     0F 1F 40 00             ..@.

l0000000000410970:
	mov	rax,0FFFFD466D2205DCCh
	mov	rsi,2B992DDFA233h
	jmp	410953h
0000000000410986                   66 2E 0F 1F 84 00 00 00 00 00       f.........

;; fn0000000000410990: 0000000000410990
fn0000000000410990 proc
	push	rbp
	push	rsi
	push	rbx
	mov	rbp,rsp
	sub	rsp,70h
	mov	rsi,rcx
	lea	rcx,[00000000004AD3C0]                                 ; [rip+0009CA1C]
	call	[00000000004AF644]                                    ; [rip+0009EC9A]
	mov	rbx,[00000000004AD4B8]                                 ; [rip+0009CB07]
	xor	r8d,r8d
	lea	rdx,[rbp-28h]
	mov	rcx,rbx
	call	[00000000004AF64C]                                    ; [rip+0009EC8B]
	test	rax,rax
	mov	r9,rax
	jz	410A70h

l00000000004109CD:
	lea	rax,[rbp-20h]
	mov	qword ptr [rsp+38h],+0h
	mov	r8,rbx
	mov	rdx,[rbp-28h]
	xor	ecx,ecx
	mov	[rsp+30h],rax
	lea	rax,[rbp-18h]
	mov	[rsp+28h],rax
	lea	rax,[00000000004AD3C0]                                 ; [rip+0009C9C8]
	mov	[rsp+20h],rax
	call	[00000000004AF65C]                                    ; [rip+0009EC59]

l0000000000410A03:
	mov	rax,[00000000004AD4B8]                                 ; [rip+0009CAAE]
	xor	ecx,ecx
	mov	[00000000004AD440],rsi                                 ; [rip+0009CA2D]
	mov	[00000000004AD8C0],0C0000409h                          ; [rip+0009CEA3]
	mov	[00000000004AD8C4],1h                                  ; [rip+0009CE9D]
	mov	[00000000004AD8D0],rax                                 ; [rip+0009CEA2]
	mov	rax,[000000000048C0B0]                                 ; [rip+0007B67B]
	mov	[rbp-10h],rax
	mov	rax,[000000000048C0C0]                                 ; [rip+0007B680]
	mov	[rbp-8h],rax
	call	[00000000004AF69C]                                    ; [rip+0009EC52]
	lea	rcx,[0000000000490720]                                 ; [rip+0007FCCF]
	call	[00000000004AF6DC]                                    ; [rip+0009EC85]
	call	[00000000004AF574]                                    ; [rip+0009EB17]
	mov	edx,0C0000409h
	mov	rcx,rax
	call	[00000000004AF6B4]                                    ; [rip+0009EC49]
	call	41BD30h

l0000000000410A70:
	mov	rax,[rbp+18h]
	mov	[00000000004AD4B8],rax                                 ; [rip+0009CA3D]
	lea	rax,[rbp+8h]
	mov	[00000000004AD458],rax                                 ; [rip+0009C9D2]
	jmp	410A03h
0000000000410A8B                                  90 90 90 90 90            .....

;; fn0000000000410A90: 0000000000410A90
fn0000000000410A90 proc
	sub	rsp,28h
	test	edx,edx
	jz	410AB0h

l0000000000410A98:
	cmp	edx,3h
	jz	410AB0h

l0000000000410A9D:
	mov	eax,1h
	add	rsp,28h
	ret
0000000000410AA7                      66 0F 1F 84 00 00 00 00 00        f........

l0000000000410AB0:
	call	411150h
	mov	eax,1h
	add	rsp,28h
	ret
0000000000410ABF                                              90                .

;; fn0000000000410AC0: 0000000000410AC0
;;   Called from:
;;     0000000000401276 (in fn00000000004011B0)
fn0000000000410AC0 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	mov	rax,[00000000004915D0]                                 ; [rip+00080B03]
	cmp	dword ptr [rax],2h
	jz	410AD8h

l0000000000410AD2:
	mov	dword ptr [rax],2h

l0000000000410AD8:
	cmp	edx,2h
	jz	410AF0h

l0000000000410ADD:
	cmp	edx,1h
	jz	410B22h

l0000000000410AE2:
	mov	eax,1h
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret
0000000000410AEE                                           66 90               f.

l0000000000410AF0:
	lea	rbx,[00000000004B1068]                                 ; [rip+000A0571]
	lea	rsi,[00000000004B1068]                                 ; [rip+000A056A]
	cmp	rbx,rsi
	jz	410AE2h

l0000000000410B03:
	mov	rax,[rbx]
	test	rax,rax
	jz	410B0Dh

l0000000000410B0B:
	call	rax

l0000000000410B0D:
	add	rbx,8h
	cmp	rbx,rsi
	jnz	410B03h

l0000000000410B16:
	mov	eax,1h
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret

l0000000000410B22:
	call	411150h
	jmp	410AE2h
0000000000410B29                            0F 1F 80 00 00 00 00          .......

;; fn0000000000410B30: 0000000000410B30
fn0000000000410B30 proc
	xor	eax,eax
	ret
0000000000410B33          90 90 90 90 90 90 90 90 90 90 90 90 90    .............

;; fn0000000000410B40: 0000000000410B40
;;   Called from:
;;     0000000000410BF4 (in fn0000000000410BF0)
fn0000000000410B40 proc
	push	rbx
	sub	rsp,30h
	mov	rbx,rcx
	mov	rcx,[00000000004AE610]                                 ; [rip+0009DAC1]
	call	40FD10h
	cmp	rax,0FFh
	mov	[rsp+20h],rax
	jz	410BD5h

l0000000000410B5F:
	mov	ecx,8h
	call	41BE90h
	mov	rcx,[00000000004AE610]                                 ; [rip+0009DAA0]
	call	40FD10h
	mov	rcx,[00000000004AE618]                                 ; [rip+0009DA9C]
	mov	[rsp+20h],rax
	call	40FD10h
	lea	rdx,[rsp+20h]
	lea	r8,[rsp+28h]
	mov	rcx,rbx
	mov	[rsp+28h],rax
	call	41BE98h
	mov	rcx,[rsp+20h]
	mov	rbx,rax
	call	40FD20h
	mov	rcx,[rsp+28h]
	mov	[00000000004AE610],rax                                 ; [rip+0009DA5A]
	call	40FD20h
	mov	ecx,8h
	mov	[00000000004AE618],rax                                 ; [rip+0009DA51]
	call	41BEA0h
	mov	rax,rbx
	add	rsp,30h
	pop	rbx
	ret

l0000000000410BD5:
	mov	rax,[0000000000491F40]                                 ; [rip+00081364]
	mov	rcx,rbx
	call	qword ptr [rax]
	add	rsp,30h
	pop	rbx
	ret
0000000000410BE7                      66 0F 1F 84 00 00 00 00 00        f........

;; fn0000000000410BF0: 0000000000410BF0
;;   Called from:
;;     0000000000403579 (in fn000000000040353B)
;;     00000000004035B7 (in fn000000000040353B)
;;     00000000004035F5 (in fn000000000040353B)
;;     0000000000403633 (in fn000000000040353B)
;;     0000000000403671 (in fn000000000040353B)
;;     0000000000410867 (in fn0000000000410830)
;;     0000000000419ECE (in fn0000000000419E60)
;;     00000000004241C1 (in fn0000000000424170)
;;     00000000004694C1 (in fn0000000000469430)
;;     000000000046FF43 (in fn000000000046FF00)
;;     00000000004763BD (in fn00000000004763A0)
;;     000000000047657B (in fn0000000000476570)
;;     000000000047658B (in fn0000000000476570)
fn0000000000410BF0 proc
	sub	rsp,28h
	call	410B40h
	test	rax,rax
	setz	al
	movzx	eax,al
	neg	eax
	add	rsp,28h
	ret
0000000000410C09                            90 90 90 90 90 90 90          .......

;; fn0000000000410C10: 0000000000410C10
fn0000000000410C10 proc
	mov	rax,[00000000004AF74C]                                 ; [rip+0009EB35]
	jmp	rax
0000000000410C1A                               90 90 90 90 90 90           ......

;; fn0000000000410C20: 0000000000410C20
;;   Called from:
;;     0000000000410C50 (in fn0000000000410C40)
;;     0000000000410CF3 (in fn0000000000410CB0)
;;     0000000000410D76 (in fn0000000000410D50)
;;     0000000000410DC3 (in fn0000000000410DA0)
;;     0000000000410E08 (in fn0000000000410DE0)
;;     0000000000410E93 (in fn0000000000410E70)
;;     0000000000410ED6 (in fn0000000000410EB0)
;;     0000000000410F43 (in fn0000000000410F10)
fn0000000000410C20 proc
	movsxd	rax,dword ptr [rcx+3Ch]
	add	rcx,rax
	xor	eax,eax
	cmp	dword ptr [rcx],4550h
	jz	410C33h

l0000000000410C31:
	ret

l0000000000410C33:
	xor	eax,eax
	cmp	word ptr [rcx+18h],20Bh
	setz	al
	ret
0000000000410C3F                                              90                .

;; fn0000000000410C40: 0000000000410C40
fn0000000000410C40 proc
	cmp	word ptr [rcx],5A4Dh
	jz	410C50h

l0000000000410C47:
	xor	eax,eax
	ret
0000000000410C4A                               66 0F 1F 44 00 00           f..D..

l0000000000410C50:
	jmp	410C20h
0000000000410C52       66 66 66 66 66 2E 0F 1F 84 00 00 00 00 00   fffff.........

;; fn0000000000410C60: 0000000000410C60
;;   Called from:
;;     0000000000410D8E (in fn0000000000410D50)
;;     0000000000410EE8 (in fn0000000000410EB0)
;;     0000000000410F63 (in fn0000000000410F10)
fn0000000000410C60 proc
	movsxd	rax,dword ptr [rcx+3Ch]
	add	rcx,rax
	movzx	eax,word ptr [rcx+14h]
	lea	rax,[rcx+rax+18h]
	movzx	ecx,word ptr [rcx+6h]
	test	ecx,ecx
	jz	410CA1h

l0000000000410C78:
	sub	ecx,1h
	lea	rcx,[rcx+rcx*4]
	lea	r9,[rax+rcx*8+28h]

l0000000000410C84:
	mov	r8d,[rax+0Ch]
	cmp	r8,rdx
	mov	rcx,r8
	ja	410C98h

l0000000000410C90:
	add	ecx,[rax+8h]
	cmp	rdx,rcx
	jc	410CA3h

l0000000000410C98:
	add	rax,28h
	cmp	rax,r9
	jnz	410C84h

l0000000000410CA1:
	xor	eax,eax

l0000000000410CA3:
	ret
0000000000410CA5                66 66 2E 0F 1F 84 00 00 00 00 00      ff.........

;; fn0000000000410CB0: 0000000000410CB0
;;   Called from:
;;     0000000000410562 (in fn0000000000410530)
fn0000000000410CB0 proc
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,20h
	mov	rsi,rcx
	call	41BCB8h
	cmp	rax,8h
	ja	410CE0h

l0000000000410CC5:
	mov	rbx,[0000000000491EE0]                                 ; [rip+00081214]
	xor	edi,edi
	cmp	word ptr [rbx],5A4Dh
	jz	410CF0h

l0000000000410CD5:
	mov	rax,rdi
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	ret

l0000000000410CE0:
	xor	edi,edi
	mov	rax,rdi
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	ret
0000000000410CED                                        0F 1F 00              ...

l0000000000410CF0:
	mov	rcx,rbx
	call	410C20h
	test	eax,eax
	jz	410CD5h

l0000000000410CFC:
	movsxd	rdx,dword ptr [rbx+3Ch]
	add	rdx,rbx
	movzx	eax,word ptr [rdx+14h]
	lea	rbx,[rdx+rax+18h]
	movzx	edx,word ptr [rdx+6h]
	test	edx,edx
	jz	410CD5h

l0000000000410D14:
	sub	edx,1h
	lea	rax,[rdx+rdx*4]
	lea	rdi,[rbx+rax*8+28h]
	jmp	410D2Bh

l0000000000410D22:
	add	rbx,28h
	cmp	rbx,rdi
	jz	410CE0h

l0000000000410D2B:
	mov	r8d,8h
	mov	rdx,rsi
	mov	rcx,rbx
	call	41BEB8h
	test	eax,eax
	jnz	410D22h

l0000000000410D40:
	mov	rdi,rbx
	mov	rax,rdi
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	ret
0000000000410D4E                                           66 90               f.

;; fn0000000000410D50: 0000000000410D50
;;   Called from:
;;     000000000040FF6E (in fn000000000040FF10)
fn0000000000410D50 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	mov	rbx,[0000000000491EE0]                                 ; [rip+00081183]
	cmp	word ptr [rbx],5A4Dh
	jz	410D70h

l0000000000410D64:
	xor	eax,eax
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret
0000000000410D6D                                        0F 1F 00              ...

l0000000000410D70:
	mov	rsi,rcx
	mov	rcx,rbx
	call	410C20h
	test	eax,eax
	jz	410D64h

l0000000000410D7F:
	sub	rsi,rbx
	mov	rcx,rbx
	mov	rdx,rsi
	add	rsp,28h
	pop	rbx
	pop	rsi
	jmp	410C60h
0000000000410D93          66 66 66 66 2E 0F 1F 84 00 00 00 00 00    ffff.........

;; fn0000000000410DA0: 0000000000410DA0
;;   Called from:
;;     00000000004100BA (in fn0000000000410080)
fn0000000000410DA0 proc
	push	rbx
	sub	rsp,20h
	mov	rbx,[0000000000491EE0]                                 ; [rip+00081134]
	xor	eax,eax
	cmp	word ptr [rbx],5A4Dh
	jz	410DC0h

l0000000000410DB5:
	add	rsp,20h
	pop	rbx
	ret
0000000000410DBB                                  0F 1F 44 00 00            ..D..

l0000000000410DC0:
	mov	rcx,rbx
	call	410C20h
	test	eax,eax
	jz	410DB5h

l0000000000410DCC:
	movsxd	rax,dword ptr [rbx+3Ch]
	movzx	eax,word ptr [rax+rbx+6h]
	add	rsp,20h
	pop	rbx
	ret
0000000000410DDB                                  0F 1F 44 00 00            ..D..

;; fn0000000000410DE0: 0000000000410DE0
;;   Called from:
;;     00000000004105E3 (in fn0000000000410530)
fn0000000000410DE0 proc
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,20h
	mov	rsi,[0000000000491EE0]                                 ; [rip+000810F2]
	xor	edi,edi
	mov	rbx,rcx
	cmp	word ptr [rsi],5A4Dh
	jz	410E05h

l0000000000410DFA:
	mov	rax,rdi
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	ret

l0000000000410E05:
	mov	rcx,rsi
	call	410C20h
	test	eax,eax
	jz	410DFAh

l0000000000410E11:
	movsxd	rax,dword ptr [rsi+3Ch]
	add	rsi,rax
	movzx	ecx,word ptr [rsi+6h]
	movzx	eax,word ptr [rsi+14h]
	test	ecx,ecx
	lea	rdx,[rsi+rax+18h]
	jz	410DFAh

l0000000000410E29:
	sub	ecx,1h
	lea	rax,[rcx+rcx*4]
	lea	rax,[rdx+rax*8+28h]

l0000000000410E35:
	test	byte ptr [rdx+27h],20h
	jz	410E44h

l0000000000410E3B:
	test	rbx,rbx
	jz	410E60h

l0000000000410E40:
	sub	rbx,1h

l0000000000410E44:
	add	rdx,28h
	cmp	rdx,rax
	jnz	410E35h

l0000000000410E4D:
	xor	edi,edi
	mov	rax,rdi
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	ret
0000000000410E5A                               66 0F 1F 44 00 00           f..D..

l0000000000410E60:
	mov	rdi,rdx
	mov	rax,rdi
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	ret
0000000000410E6E                                           66 90               f.

;; fn0000000000410E70: 0000000000410E70
;;   Called from:
;;     000000000040FF9E (in fn000000000040FF10)
;;     000000000041053A (in fn0000000000410530)
fn0000000000410E70 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	mov	rsi,[0000000000491EE0]                                 ; [rip+00081063]
	xor	ebx,ebx
	cmp	word ptr [rsi],5A4Dh
	jz	410E90h

l0000000000410E86:
	mov	rax,rbx
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret

l0000000000410E90:
	mov	rcx,rsi
	call	410C20h
	test	eax,eax
	cmovnz	rbx,rsi

l0000000000410E9E:
	mov	rax,rbx
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret
0000000000410EA8                         0F 1F 84 00 00 00 00 00         ........

;; fn0000000000410EB0: 0000000000410EB0
fn0000000000410EB0 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	mov	rbx,[0000000000491EE0]                                 ; [rip+00081023]
	xor	eax,eax
	cmp	word ptr [rbx],5A4Dh
	jz	410ED0h

l0000000000410EC6:
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret
0000000000410ECD                                        0F 1F 00              ...

l0000000000410ED0:
	mov	rsi,rcx
	mov	rcx,rbx
	call	410C20h
	test	eax,eax
	jz	410EC6h

l0000000000410EDF:
	sub	rsi,rbx
	mov	rcx,rbx
	mov	rdx,rsi
	call	410C60h
	test	rax,rax
	jz	410F01h

l0000000000410EF2:
	mov	eax,[rax+24h]
	not	eax
	shr	eax,1Fh
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret

l0000000000410F01:
	xor	eax,eax
	jmp	410EC6h
0000000000410F05                66 66 2E 0F 1F 84 00 00 00 00 00      ff.........

;; fn0000000000410F10: 0000000000410F10
fn0000000000410F10 proc
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,28h
	mov	rdi,[0000000000491EE0]                                 ; [rip+00080FC1]
	xor	ebp,ebp
	mov	esi,ecx
	cmp	word ptr [rdi],5A4Dh
	jz	410F40h

l0000000000410F2A:
	mov	rax,rbp
	add	rsp,28h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
0000000000410F36                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l0000000000410F40:
	mov	rcx,rdi
	call	410C20h
	test	eax,eax
	jz	410F2Ah

l0000000000410F4C:
	movsxd	rax,dword ptr [rdi+3Ch]
	mov	edx,[rdi+rax+90h]
	test	edx,edx
	jz	410F2Ah

l0000000000410F5B:
	mov	ebx,edx
	mov	rcx,rdi
	mov	rdx,rbx
	call	410C60h
	test	rax,rax
	jz	410F2Ah

l0000000000410F6D:
	add	rbx,rdi
	mov	rdx,rbx
	jnz	410F87h

l0000000000410F75:
	jmp	410F2Ah
0000000000410F77                      66 0F 1F 84 00 00 00 00 00        f........

l0000000000410F80:
	sub	esi,1h
	add	rdx,14h

l0000000000410F87:
	mov	ecx,[rdx+4h]
	test	ecx,ecx
	jnz	410F95h

l0000000000410F8E:
	mov	eax,[rdx+0Ch]
	test	eax,eax
	jz	410FB0h

l0000000000410F95:
	test	esi,esi
	jg	410F80h

l0000000000410F99:
	mov	ebp,[rdx+0Ch]
	add	rbp,rdi
	mov	rax,rbp
	add	rsp,28h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
0000000000410FAB                                  0F 1F 44 00 00            ..D..

l0000000000410FB0:
	xor	ebp,ebp
	mov	rax,rbp
	add	rsp,28h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
0000000000410FBE                                           90 90               ..

;; fn0000000000410FC0: 0000000000410FC0
;;   Called from:
;;     00000000004111D0 (in fn0000000000411150)
;;     00000000004111E0 (in fn0000000000411150)
fn0000000000410FC0 proc
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,28h
	lea	rcx,[00000000004ADA00]                                 ; [rip+0009CA31]
	call	[00000000004AF55C]                                    ; [rip+0009E587]
	mov	rbx,[00000000004AD9E0]                                 ; [rip+0009CA04]
	test	rbx,rbx
	jz	411014h

l0000000000410FE1:
	mov	rbp,[00000000004AF6C4]                                 ; [rip+0009E6DC]
	mov	rdi,[00000000004AF59C]                                 ; [rip+0009E5AD]
	nop

l0000000000410FF0:
	mov	ecx,[rbx]
	call	rbp
	mov	rsi,rax
	call	rdi
	test	eax,eax
	jnz	41100Bh

l0000000000410FFD:
	test	rsi,rsi
	jz	41100Bh
