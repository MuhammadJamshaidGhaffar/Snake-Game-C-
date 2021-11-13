;;; Segment .text (0000000000401000)

l0000000000421000:
	call	4232C0h
	mov	rbx,rax
	jmp	420FA3h
000000000042100A                               66 0F 1F 44 00 00           f..D..

;; fn0000000000421010: 0000000000421010
fn0000000000421010 proc
	cmp	edx,1h
	ja	42101Ah

l0000000000421015:
	test	rcx,rcx
	jnz	421020h

l000000000042101A:
	mov	eax,16h
	ret

l0000000000421020:
	cmp	edx,1h
	mov	dword ptr [rcx],0h
	jz	421030h

l000000000042102B:
	xor	eax,eax
	ret
000000000042102E                                           66 90               f.

l0000000000421030:
	mov	eax,28h
	ret
0000000000421036                   66 2E 0F 1F 84 00 00 00 00 00       f.........

;; fn0000000000421040: 0000000000421040
;;   Called from:
;;     0000000000421225 (in fn0000000000421170)
;;     0000000000422779 (in fn0000000000422700)
fn0000000000421040 proc
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,20h
	mov	eax,16h
	test	rcx,rcx
	jz	421123h

l0000000000421055:
	test	rdx,rdx
	jz	421065h

l000000000042105A:
	cmp	dword ptr [rdx],1h
	mov	al,28h
	jz	421123h

l0000000000421065:
	mov	rsi,rcx
	mov	edx,0B0h
	mov	ecx,1h
	call	41BEC0h
	mov	rbx,rax
	mov	eax,0Ch
	test	rbx,rbx
	jz	421123h

l0000000000421088:
	xor	r9d,r9d
	xor	edx,edx
	xor	ecx,ecx
	mov	r8d,7FFFFFFFh
	mov	rdi,[00000000004AF544]                                 ; [rip+0008E4A8]
	mov	dword ptr [rbx],0C0DEADBFh
	mov	dword ptr [rbx+4h],0h
	mov	dword ptr [rbx+8h],0h
	mov	dword ptr [rbx+10h],0h
	mov	dword ptr [rbx+0Ch],0h
	call	rdi
	xor	ecx,ecx
	xor	r9d,r9d
	xor	edx,edx
	mov	[rbx+0A0h],rax
	mov	r8d,7FFFFFFFh
	call	rdi
	mov	rcx,[rbx+0A0h]
	mov	[rbx+0A8h],rax
	test	rcx,rcx
	jz	42113Dh

l00000000004210E9:
	test	rax,rax
	jz	421130h

l00000000004210EE:
	mov	rdi,[00000000004AF5EC]                                 ; [rip+0008E4F7]
	lea	rcx,[rbx+18h]
	call	rdi
	lea	rcx,[rbx+70h]
	call	rdi
	lea	rcx,[rbx+40h]
	call	rdi
	mov	dword ptr [rbx+68h],0h
	mov	dword ptr [rbx+98h],1h
	xor	eax,eax
	mov	dword ptr [rbx],0C0BAB1FDh
	mov	[rsi],rbx

l0000000000421123:
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	ret
000000000042112B                                  0F 1F 44 00 00            ..D..

l0000000000421130:
	call	[00000000004AF52C]                                    ; [rip+0008E3F6]
	mov	rax,[rbx+0A8h]

l000000000042113D:
	test	rax,rax
	jz	42114Bh

l0000000000421142:
	mov	rcx,rax
	call	[00000000004AF52C]                                    ; [rip+0008E3E1]

l000000000042114B:
	mov	rcx,rbx
	call	41BDA0h
	mov	qword ptr [rsi],+0h
	mov	eax,0Bh
	jmp	421123h
0000000000421161    66 66 66 66 66 66 2E 0F 1F 84 00 00 00 00 00  ffffff.........

;; fn0000000000421170: 0000000000421170
;;   Called from:
;;     0000000000421A10 (in fn00000000004219D0)
;;     0000000000421CB1 (in fn0000000000421C70)
fn0000000000421170 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	mov	rsi,rcx
	mov	rcx,[00000000004AE5A0]                                 ; [rip+0008D420]
	test	rcx,rcx
	jz	4211F0h

l0000000000421185:
	call	422260h
	test	rsi,rsi
	mov	ebx,16h
	jz	4211A0h

l0000000000421194:
	xor	bl,bl
	cmp	qword ptr [rsi],0FFh
	jz	421220h

l00000000004211A0:
	mov	rcx,[00000000004AE5A0]                                 ; [rip+0008D3F9]
	test	rcx,rcx
	jz	4211C0h

l00000000004211AC:
	call	422310h
	mov	eax,ebx
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret
00000000004211BA                               66 0F 1F 44 00 00           f..D..

l00000000004211C0:
	lea	r8,[0000000000420D10]                                  ; [rip-000004B7]
	lea	rcx,[0000000000491472]                                 ; [rip+000702A4]
	mov	edx,8h
	call	421EA0h
	mov	rcx,rax
	mov	[00000000004AE5A0],rax                                 ; [rip+0008D3BE]
	call	422310h
	mov	eax,ebx
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret

l00000000004211F0:
	lea	rcx,[0000000000491472]                                 ; [rip+0007027B]
	lea	r8,[0000000000420D10]                                  ; [rip-000004EE]
	mov	edx,8h
	call	421EA0h
	mov	rcx,rax
	mov	[00000000004AE5A0],rax                                 ; [rip+0008D38E]
	jmp	421185h
0000000000421217                      66 0F 1F 84 00 00 00 00 00        f........

l0000000000421220:
	xor	edx,edx
	mov	rcx,rsi
	call	421040h
	mov	ebx,eax
	jmp	4211A0h
0000000000421231    66 66 66 66 66 66 2E 0F 1F 84 00 00 00 00 00  ffffff.........

;; fn0000000000421240: 0000000000421240
;;   Called from:
;;     000000000041FFF3 (in fn000000000041FFD0)
;;     0000000000420870 (in fn0000000000420830)
;;     0000000000421569 (in fn0000000000421500)
fn0000000000421240 proc
	push	r13
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,38h
	cmp	edx,1h
	mov	rbp,rcx
	mov	r13d,edx
	mov	esi,r8d
	jz	421300h

l000000000042125E:
	mov	[rsp+20h],rcx
	call	41E9E0h
	test	rax,rax
	mov	[rsp+28h],rax
	jz	421371h

l0000000000421276:
	lea	rbx,[rsp+20h]

l000000000042127B:
	xor	r8d,r8d
	mov	r9d,esi
	mov	rdx,rbx
	mov	ecx,2h
	call	[00000000004AF6F4]                                    ; [rip+0008E465]
	cmp	eax,1h
	jz	421352h

l0000000000421298:
	jc	421330h

l000000000042129E:
	cmp	eax,80h
	jz	4214EDh

l00000000004212A9:
	cmp	eax,102h
	jnz	4214DBh

l00000000004212B4:
	mov	r12d,8Ah

l00000000004212BA:
	xor	edx,edx
	mov	rcx,[rsp+20h]
	call	[00000000004AF6FC]                                    ; [rip+0008E435]
	test	eax,eax
	jz	421330h

l00000000004212CB:
	cmp	r13d,2h
	setnz	al

l00000000004212D2:
	test	al,al
	jz	421333h

l00000000004212D6:
	call	41EC70h
	test	eax,eax
	jz	421333h

l00000000004212DF:
	nop

l00000000004212E0:
	mov	r12d,16h
	mov	eax,r12d
	add	rsp,38h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	ret
00000000004212F6                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l0000000000421300:
	mov	edx,r8d
	mov	rdi,[00000000004AF6FC]                                 ; [rip+0008E3F2]
	call	rdi
	cmp	eax,80h
	jz	4214D0h

l0000000000421317:
	cmp	eax,102h
	jnz	421343h

l000000000042131E:
	mov	r12d,8Ah

l0000000000421324:
	xor	edx,edx
	mov	rcx,rbp
	call	rdi
	test	eax,eax
	jnz	421333h

l000000000042132F:
	nop

l0000000000421330:
	xor	r12d,r12d

l0000000000421333:
	mov	eax,r12d
	add	rsp,38h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	ret

l0000000000421343:
	cmp	eax,1h
	sbb	r12d,r12d
	not	r12d
	and	r12d,16h
	jmp	421333h

l0000000000421352:
	mov	rcx,[rsp+28h]
	call	[00000000004AF62C]                                    ; [rip+0008E2CF]
	cmp	r13d,2h
	jnz	42142Bh

l0000000000421367:
	call	41EDF0h
	jmp	42127Bh

l0000000000421371:
	cmp	esi,0FFh
	mov	rdi,[00000000004AF6FC]                                 ; [rip+0008E381]
	jz	4213EDh

l000000000042137D:
	mov	rdi,[00000000004AF6FC]                                 ; [rip+0008E378]
	mov	ebx,14h

l0000000000421389:
	cmp	ebx,esi
	mov	rcx,rbp
	cmova	ebx,esi

l0000000000421391:
	mov	edx,ebx
	call	rdi
	cmp	eax,80h
	jz	421490h

l00000000004213A0:
	cmp	eax,102h
	jz	421440h

l00000000004213AB:
	test	eax,eax
	mov	r12d,16h
	jz	421484h

l00000000004213B9:
	cmp	esi,ebx
	jnz	421460h

l00000000004213C1:
	test	r12d,r12d
	jz	421333h

l00000000004213CA:
	nop	word ptr [rax+rax+0h]

l00000000004213D0:
	cmp	r13d,2h
	jz	421333h

l00000000004213DA:
	call	41EDF0h
	jmp	421333h

l00000000004213E4:
	call	41EC70h
	test	eax,eax
	jnz	421421h

l00000000004213ED:
	mov	edx,28h
	mov	rcx,rbp
	call	rdi
	cmp	eax,80h
	jz	4214A0h

l0000000000421402:
	cmp	eax,102h
	jz	4213E4h

l0000000000421409:
	xor	r12d,r12d
	test	eax,eax
	jz	421333h

l0000000000421414:
	call	41EC70h
	test	eax,eax
	jz	4212E0h

l0000000000421421:
	cmp	r13d,2h
	jz	4212E0h

l000000000042142B:
	call	41EDF0h
	mov	r12d,16h
	jmp	421333h
000000000042143B                                  0F 1F 44 00 00            ..D..

l0000000000421440:
	sub	esi,ebx
	jnz	421472h

l0000000000421444:
	xor	edx,edx
	mov	rcx,rbp
	mov	r12d,8Ah
	call	rdi
	test	eax,eax
	jnz	4213D0h

l0000000000421459:
	jmp	421330h
000000000042145E                                           66 90               f.

l0000000000421460:
	call	41EC70h
	test	eax,eax
	jz	4213C1h

l000000000042146D:
	jmp	4212E0h

l0000000000421472:
	call	41EC70h
	test	eax,eax
	jz	421389h

l000000000042147F:
	jmp	4212E0h

l0000000000421484:
	xor	r12d,r12d
	jmp	4213C1h
000000000042148C                                     0F 1F 40 00             ..@.

l0000000000421490:
	mov	r12d,1h
	jmp	4213B9h
000000000042149B                                  0F 1F 44 00 00            ..D..

l00000000004214A0:
	call	41EC70h
	test	eax,eax
	jnz	421421h

l00000000004214AD:
	xor	edx,edx
	mov	rcx,rbp
	mov	r12d,1h
	call	rdi
	test	eax,eax
	jz	421330h

l00000000004214C2:
	jmp	421333h
00000000004214C7                      66 0F 1F 84 00 00 00 00 00        f........

l00000000004214D0:
	mov	r12d,1h
	jmp	421324h

l00000000004214DB:
	cmp	r13d,2h
	mov	r12d,16h
	setnz	al
	jmp	4212D2h

l00000000004214ED:
	mov	r12d,1h
	jmp	4212BAh
00000000004214F8                         0F 1F 84 00 00 00 00 00         ........

;; fn0000000000421500: 0000000000421500
;;   Called from:
;;     00000000004215D9 (in fn0000000000421590)
;;     000000000042184A (in fn0000000000421780)
;;     000000000042196F (in fn00000000004218B0)
;;     0000000000421A45 (in fn00000000004219D0)
;;     0000000000421B24 (in fn00000000004219D0)
;;     0000000000421BFC (in fn0000000000421B30)
;;     0000000000421D08 (in fn0000000000421C70)
;;     0000000000421DE8 (in fn0000000000421C70)
fn0000000000421500 proc
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,28h
	mov	r12,[00000000004AF55C]                                 ; [rip+0008E045]
	mov	rbx,[rsp+90h]
	mov	r13,rcx
	mov	r14d,edx
	mov	r15d,r8d
	mov	rsi,r9
	mov	rcx,r9
	call	r12
	lock
	sub	dword ptr [rbx],1h
	mov	edi,[rbx]
	mov	rbp,[00000000004AF5FC]                                 ; [rip+0008E0BE]
	mov	rcx,rsi
	call	rbp
	xor	eax,eax
	test	edi,edi
	js	421560h

l0000000000421549:
	add	rsp,28h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret
000000000042155A                               66 0F 1F 44 00 00           f..D..

l0000000000421560:
	mov	r8d,r15d
	mov	edx,r14d
	mov	rcx,r13
	call	421240h
	mov	edi,eax
	mov	rcx,rsi
	call	r12
	test	edi,edi
	jnz	421583h

l000000000042157A:
	mov	rcx,rsi
	call	rbp
	mov	eax,edi
	jmp	421549h

l0000000000421583:
	lock
	add	dword ptr [rbx],1h
	jmp	42157Ah
0000000000421589                            0F 1F 80 00 00 00 00          .......

;; fn0000000000421590: 0000000000421590
;;   Called from:
;;     0000000000422BBC (in fn0000000000422A90)
fn0000000000421590 proc
	push	r13
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,38h
	mov	esi,16h
	test	rcx,rcx
	jz	4215E4h

l00000000004215A6:
	mov	rbx,[rcx]
	test	rbx,rbx
	jz	4215E4h

l00000000004215AE:
	cmp	rbx,0FFh
	mov	rdi,rcx
	jz	4215F3h

l00000000004215B7:
	mov	rcx,[rbx+0A8h]
	lea	r12,[rbx+98h]
	lea	rbp,[rbx+70h]
	xor	edx,edx
	mov	r8d,0FFFFFFFFh
	mov	[rsp+20h],r12
	mov	r9,rbp
	call	421500h
	test	eax,eax
	mov	esi,eax
	jz	421640h

l00000000004215E4:
	mov	eax,esi
	add	rsp,38h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	ret

l00000000004215F3:
	mov	rcx,[00000000004AE5A0]                                 ; [rip+0008CFA6]
	test	rcx,rcx
	jz	421750h

l0000000000421603:
	call	422260h
	cmp	qword ptr [rdi],0FFh
	mov	esi,10h
	jz	421714h

l0000000000421617:
	mov	rcx,[00000000004AE5A0]                                 ; [rip+0008CF82]
	test	rcx,rcx
	jz	421723h

l0000000000421627:
	call	422310h
	mov	eax,esi
	add	rsp,38h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	ret
000000000042163B                                  0F 1F 44 00 00            ..D..

l0000000000421640:
	lea	r13,[rbx+18h]
	mov	rcx,r13
	call	[00000000004AF6D4]                                    ; [rip+0008E087]
	test	eax,eax
	jz	421690h

l0000000000421651:
	mov	eax,[rbx+10h]
	cmp	[rbx+8h],eax
	jle	4216B0h

l0000000000421659:
	mov	rcx,[rbx+0A8h]
	mov	r9,r12
	mov	r8,rbp
	mov	edx,1h
	call	420D20h
	test	eax,eax
	mov	esi,eax
	mov	eax,10h
	cmovz	esi,eax

l000000000042167C:
	mov	rcx,r13
	call	[00000000004AF5FC]                                    ; [rip+0008DF77]
	jmp	4215E4h
000000000042168A                               66 0F 1F 44 00 00           f..D..

l0000000000421690:
	mov	rcx,[rbx+0A8h]
	mov	r9,r12
	mov	r8,rbp
	mov	edx,1h
	mov	sil,10h
	call	420D20h
	jmp	4215E4h
00000000004216AF                                              90                .

l00000000004216B0:
	mov	qword ptr [rdi],+0h
	mov	rcx,[rbx+0A8h]
	mov	r9,r12
	mov	r8,rbp
	mov	edx,1h
	call	420D20h
	mov	rcx,[rbx+0A0h]
	mov	rdi,[00000000004AF52C]                                 ; [rip+0008DE50]
	call	rdi
	mov	rcx,[rbx+0A8h]
	call	rdi
	mov	rcx,r13
	call	[00000000004AF5FC]                                    ; [rip+0008DF0C]
	mov	rdi,[00000000004AF54C]                                 ; [rip+0008DE55]
	mov	rcx,r13
	call	rdi
	mov	rcx,rbp
	call	rdi
	lea	rcx,[rbx+40h]
	call	rdi
	mov	rcx,rbx
	call	41BDA0h
	jmp	4215E4h

l0000000000421714:
	mov	qword ptr [rdi],+0h
	xor	sil,sil
	jmp	421617h

l0000000000421723:
	lea	rcx,[0000000000491472]                                 ; [rip+0006FD48]
	lea	r8,[0000000000420D10]                                  ; [rip-00000A21]
	mov	edx,8h
	call	421EA0h
	mov	rcx,rax
	mov	[00000000004AE5A0],rax                                 ; [rip+0008CE5B]
	jmp	421627h
000000000042174A                               66 0F 1F 44 00 00           f..D..

l0000000000421750:
	lea	rcx,[0000000000491472]                                 ; [rip+0006FD1B]
	lea	r8,[0000000000420D10]                                  ; [rip-00000A4E]
	mov	edx,8h
	call	421EA0h
	mov	rcx,rax
	mov	[00000000004AE5A0],rax                                 ; [rip+0008CE2E]
	jmp	421603h
0000000000421777                      66 0F 1F 84 00 00 00 00 00        f........

;; fn0000000000421780: 0000000000421780
;;   Called from:
;;     0000000000422F24 (in fn0000000000422EA0)
fn0000000000421780 proc
	push	rsi
	push	rbx
	sub	rsp,48h
	test	rcx,rcx
	jz	4217B0h

l000000000042178B:
	mov	rbx,[rcx]
	test	rbx,rbx
	jz	4217B0h

l0000000000421793:
	cmp	rbx,0FFh
	jz	4217C0h

l0000000000421799:
	cmp	dword ptr [rbx],0C0BAB1FDh
	mov	eax,16h
	jz	4217C4h

l00000000004217A6:
	add	rsp,48h
	pop	rbx
	pop	rsi
	ret
00000000004217AD                                        0F 1F 00              ...

l00000000004217B0:
	mov	eax,16h
	add	rsp,48h
	pop	rbx
	pop	rsi
	ret
00000000004217BC                                     0F 1F 40 00             ..@.

l00000000004217C0:
	xor	eax,eax
	jmp	4217A6h

l00000000004217C4:
	lea	rsi,[rbx+18h]
	mov	rcx,rsi
	call	[00000000004AF55C]                                    ; [rip+0008DD8B]
	mov	eax,[rbx+0Ch]
	test	eax,eax
	jz	421820h

l00000000004217D8:
	mov	edx,[rbx+8h]
	test	edx,edx
	jz	421870h

l00000000004217E3:
	sub	edx,1h
	add	eax,1h
	mov	[rbx+8h],edx
	mov	[rbx+0Ch],eax

l00000000004217EF:
	mov	rcx,rsi
	call	[00000000004AF5FC]                                    ; [rip+0008DE04]
	mov	rcx,[rbx+0A0h]
	lea	r9,[rbx+68h]
	lea	r8,[rbx+40h]
	mov	edx,1h
	add	rsp,48h
	pop	rbx
	pop	rsi
	jmp	420D20h
0000000000421817                      66 0F 1F 84 00 00 00 00 00        f........

l0000000000421820:
	mov	eax,[rbx+10h]
	cmp	[rbx+8h],eax
	jle	421870h

l0000000000421828:
	mov	rcx,[rbx+0A8h]
	lea	rax,[rbx+98h]
	lea	r9,[rbx+70h]
	mov	r8d,0FFFFFFFFh
	mov	edx,1h
	mov	[rsp+20h],rax
	call	421500h
	test	eax,eax
	jnz	421890h

l0000000000421853:
	mov	eax,[rbx+10h]
	test	eax,eax
	jnz	421880h

l000000000042185A:
	mov	eax,[rbx+8h]

l000000000042185D:
	sub	eax,1h
	mov	dword ptr [rbx+0Ch],1h
	mov	[rbx+8h],eax
	jmp	4217EFh
000000000042186C                                     0F 1F 40 00             ..@.

l0000000000421870:
	mov	rcx,rsi
	call	[00000000004AF5FC]                                    ; [rip+0008DD83]
	xor	eax,eax
	jmp	4217A6h

l0000000000421880:
	mov	edx,[rbx+8h]
	mov	dword ptr [rbx+10h],0h
	sub	edx,eax
	mov	eax,edx
	jmp	42185Dh

l0000000000421890:
	mov	[rsp+3Ch],eax
	mov	rcx,rsi
	call	[00000000004AF5FC]                                    ; [rip+0008DD5F]
	mov	eax,[rsp+3Ch]
	jmp	4217A6h
00000000004218A6                   66 2E 0F 1F 84 00 00 00 00 00       f.........

;; fn00000000004218B0: 00000000004218B0
;;   Called from:
;;     0000000000475E2A (in fn0000000000475DE0)
;;     0000000000475FCD (in fn0000000000475F80)
fn00000000004218B0 proc
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,40h
	test	rcx,rcx
	jz	4218E0h

l00000000004218BC:
	mov	rbx,[rcx]
	test	rbx,rbx
	jz	4218E0h

l00000000004218C4:
	cmp	rbx,0FFh
	jz	4218F0h

l00000000004218CA:
	cmp	dword ptr [rbx],0C0BAB1FDh
	mov	eax,16h
	jz	4218F4h

l00000000004218D7:
	add	rsp,40h
	pop	rbx
	pop	rsi
	pop	rdi
	ret
00000000004218DF                                              90                .

l00000000004218E0:
	mov	eax,16h
	add	rsp,40h
	pop	rbx
	pop	rsi
	pop	rdi
	ret
00000000004218ED                                        0F 1F 00              ...

l00000000004218F0:
	xor	eax,eax
	jmp	4218D7h

l00000000004218F4:
	lea	rsi,[rbx+18h]
	mov	rcx,rsi
	call	[00000000004AF55C]                                    ; [rip+0008DC5B]
	mov	eax,[rbx+0Ch]
	test	eax,eax
	jz	421945h

l0000000000421908:
	mov	edi,[rbx+8h]
	test	edi,edi
	jz	421990h

l0000000000421913:
	add	eax,edi
	mov	dword ptr [rbx+8h],0h
	mov	[rbx+0Ch],eax

l000000000042191F:
	mov	rcx,rsi
	call	[00000000004AF5FC]                                    ; [rip+0008DCD4]
	mov	rcx,[rbx+0A0h]
	lea	r9,[rbx+68h]
	lea	r8,[rbx+40h]
	mov	edx,edi
	add	rsp,40h
	pop	rbx
	pop	rsi
	pop	rdi
	jmp	420D20h

l0000000000421945:
	mov	eax,[rbx+10h]
	cmp	[rbx+8h],eax
	jle	421990h

l000000000042194D:
	mov	rcx,[rbx+0A8h]
	lea	rax,[rbx+98h]
	lea	r9,[rbx+70h]
	mov	r8d,0FFFFFFFFh
	mov	edx,1h
	mov	[rsp+20h],rax
	call	421500h
	test	eax,eax
	jnz	4219AEh

l0000000000421978:
	mov	eax,[rbx+10h]
	test	eax,eax
	jnz	4219A0h

l000000000042197F:
	mov	edi,[rbx+8h]

l0000000000421982:
	mov	dword ptr [rbx+8h],0h
	mov	[rbx+0Ch],edi
	jmp	42191Fh
000000000042198E                                           66 90               f.

l0000000000421990:
	mov	rcx,rsi
	call	[00000000004AF5FC]                                    ; [rip+0008DC63]
	xor	eax,eax
	jmp	4218D7h

l00000000004219A0:
	mov	edi,[rbx+8h]
	mov	dword ptr [rbx+10h],0h
	sub	edi,eax
	jmp	421982h

l00000000004219AE:
	mov	[rsp+3Ch],eax
	mov	rcx,rsi
	call	[00000000004AF5FC]                                    ; [rip+0008DC41]
	mov	eax,[rsp+3Ch]
	jmp	4218D7h
00000000004219C4             66 66 66 2E 0F 1F 84 00 00 00 00 00     fff.........

;; fn00000000004219D0: 00000000004219D0
;;   Called from:
;;     0000000000422FFD (in fn0000000000422F40)
;;     0000000000475F0D (in fn0000000000475E80)
fn00000000004219D0 proc
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	add	rsp,80h
	mov	eax,16h
	test	rcx,rcx
	jz	421A00h

l00000000004219E4:
	mov	rsi,[rcx]
	test	rsi,rsi
	jz	421A00h

l00000000004219EC:
	cmp	rsi,0FFh
	mov	rdi,rdx
	mov	rbx,rcx
	jz	421A10h

l00000000004219F8:
	cmp	dword ptr [rsi],0C0BAB1FDh
	jz	421A23h

l0000000000421A00:
	sub	rsp,80h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
0000000000421A0B                                  0F 1F 44 00 00            ..D..

l0000000000421A10:
	call	421170h
	test	eax,0FFFFFFEFh
	mov	[rsp+3Ch],eax
	jnz	421A00h

l0000000000421A20:
	mov	rsi,[rbx]

l0000000000421A23:
	mov	rcx,[rsi+0A8h]
	lea	rbp,[rsi+98h]
	lea	rbx,[rsi+70h]
	xor	edx,edx
	mov	r8d,0FFFFFFFFh
	mov	[rsp+20h],rbp
	mov	r9,rbx
	call	421500h
	test	eax,eax
	mov	[rsp+3Ch],eax
	jnz	421A00h

l0000000000421A52:
	lea	r12,[rsi+18h]
	mov	rcx,r12
	call	[00000000004AF55C]                                    ; [rip+0008DAFD]
	add	dword ptr [rsi+8h],1h
	mov	rcx,r12
	call	[00000000004AF5FC]                                    ; [rip+0008DB90]
	mov	rcx,[rsi+0A8h]
	mov	r9,rbp
	mov	r8,rbx
	mov	edx,1h
	call	420D20h
	test	eax,eax
	mov	[rsp+3Ch],eax
	jnz	421A00h

l0000000000421A8F:
	lea	rax,[rsp+3Ch]
	mov	[rsp+40h],rsi
	mov	[rsp+48h],rdi
	mov	[rsp+50h],rax
	lea	rax,[0000000000421B30]                                 ; [rip+00000086]
	mov	[rsp+60h],rax
	lea	rax,[rsp+40h]
	mov	[rsp+68h],rax
	call	41EA40h
	mov	rax,[rax]
	mov	[rsp+70h],rax
	mfence
	call	41EA40h
	lea	rdx,[rsp+60h]
	mov	rcx,rdi
	mov	[rax],rdx
	mfence
	call	4202A0h
	test	eax,eax
	mov	[rsp+3Ch],eax
	jz	421B08h

l0000000000421AE9:
	call	41EA40h
	mov	rdx,[rsp+70h]
	mov	[rax],rdx
	mov	rcx,[rsp+68h]
	call	qword ptr [rsp+60h]
	mov	eax,[rsp+3Ch]
	jmp	421A00h

l0000000000421B08:
	mov	rcx,[rsi+0A0h]
	lea	rax,[rsi+68h]
	lea	r9,[rsi+40h]
	mov	r8d,0FFFFFFFFh
	xor	edx,edx
	mov	[rsp+20h],rax
	call	421500h
	mov	[rsp+3Ch],eax
	jmp	421AE9h
0000000000421B2F                                              90                .

;; fn0000000000421B30: 0000000000421B30
fn0000000000421B30 proc
	push	r13
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,48h
	mov	rbx,[rcx]
	mov	rsi,rcx
	lea	rbp,[rbx+18h]
	mov	rcx,rbp
	call	[00000000004AF55C]                                    ; [rip+0008DA0D]
	mov	edi,[rbx+0Ch]
	test	edi,edi
	jz	421BB0h

l0000000000421B56:
	lea	eax,[rdi-1h]
	mov	rcx,rbp
	mov	[rbx+0Ch],eax
	call	[00000000004AF5FC]                                    ; [rip+0008DA97]
	cmp	edi,1h
	jnz	421B90h

l0000000000421B6A:
	mov	rcx,[rbx+0A8h]
	lea	r9,[rbx+98h]
	lea	r8,[rbx+70h]
	mov	edx,1h
	call	420D20h
	test	eax,eax
	jnz	421B9Dh

l0000000000421B8A:
	nop	word ptr [rax+rax+0h]

l0000000000421B90:
	mov	rcx,[rsi+8h]
	call	4208F0h
	test	eax,eax
	jz	421BA3h

l0000000000421B9D:
	mov	rdx,[rsi+10h]
	mov	[rdx],eax

l0000000000421BA3:
	add	rsp,48h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	ret

l0000000000421BB0:
	mov	eax,[rbx+10h]
	cmp	eax,3FFFFFFEh
	jz	421BD0h

l0000000000421BBA:
	add	eax,1h
	mov	[rbx+10h],eax

l0000000000421BC0:
	mov	rcx,rbp
	call	[00000000004AF5FC]                                    ; [rip+0008DA33]
	jmp	421B90h
0000000000421BCB                                  0F 1F 44 00 00            ..D..

l0000000000421BD0:
	mov	rcx,[rbx+0A8h]
	lea	r12,[rbx+98h]
	lea	rdi,[rbx+70h]
	mov	dword ptr [rbx+10h],3FFFFFFFh
	mov	r8d,0FFFFFFFFh
	mov	edx,1h
	mov	[rsp+20h],r12
	mov	r9,rdi
	call	421500h
	test	eax,eax
	mov	r13d,eax
	jnz	421C32h

l0000000000421C08:
	mov	eax,[rbx+10h]
	sub	[rbx+8h],eax
	mov	r9,r12
	mov	rcx,[rbx+0A8h]
	mov	r8,rdi
	mov	edx,1h
	call	420D20h
	test	eax,eax
	jnz	421C47h

l0000000000421C29:
	mov	dword ptr [rbx+10h],0h
	jmp	421BC0h

l0000000000421C32:
	mov	rcx,rbp
	call	[00000000004AF5FC]                                    ; [rip+0008D9C1]
	mov	rdx,[rsi+10h]
	mov	[rdx],r13d
	jmp	421BA3h

l0000000000421C47:
	mov	[rsp+3Ch],eax
	mov	rcx,rbp
	call	[00000000004AF5FC]                                    ; [rip+0008D9A8]
	mov	rdx,[rsi+10h]
	mov	eax,[rsp+3Ch]
	mov	[rdx],eax
	jmp	421BA3h
0000000000421C63          66 66 66 66 2E 0F 1F 84 00 00 00 00 00    ffff.........

;; fn0000000000421C70: 0000000000421C70
;;   Called from:
;;     0000000000421E03 (in fn0000000000421E00)
;;     0000000000421E16 (in fn0000000000421E10)
fn0000000000421C70 proc
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	add	rsp,80h
	mov	eax,16h
	test	rcx,rcx
	jz	421CA6h

l0000000000421C84:
	mov	rbx,[rcx]
	test	rbx,rbx
	jz	421CA6h

l0000000000421C8C:
	cmp	rbx,0FFh
	mov	ebp,r9d
	mov	rdi,r8
	mov	rsi,rdx
	mov	r12,rcx
	jz	421CB1h

l0000000000421C9E:
	cmp	dword ptr [rbx],0C0BAB1FDh
	jz	421CC5h

l0000000000421CA6:
	sub	rsp,80h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret

l0000000000421CB1:
	call	421170h
	test	eax,0FFFFFFEFh
	mov	[rsp+3Ch],eax
	jnz	421CA6h

l0000000000421CC1:
	mov	rbx,[r12]

l0000000000421CC5:
	test	ebp,ebp
	mov	rcx,rdi
	jnz	421DB5h

l0000000000421CD0:
	call	4232C0h
	mov	edx,0FFFFFFFEh
	mov	edi,eax
	cmp	rax,rdx
	jbe	421CE6h

l0000000000421CE1:
	mov	edi,0FFFFFFFFh

l0000000000421CE6:
	mov	rcx,[rbx+0A8h]
	lea	r12,[rbx+98h]
	lea	rbp,[rbx+70h]
	xor	edx,edx
	mov	r8d,0FFFFFFFFh
	mov	[rsp+20h],r12
	mov	r9,rbp
	call	421500h
	test	eax,eax
	mov	[rsp+3Ch],eax
	jnz	421CA6h

l0000000000421D15:
	add	dword ptr [rbx+8h],1h
	mov	rcx,[rbx+0A8h]
	mov	r9,r12
	mov	r8,rbp
	mov	edx,1h
	call	420D20h
	test	eax,eax
	mov	[rsp+3Ch],eax
	jnz	421CA6h

l0000000000421D3C:
	lea	rax,[rsp+3Ch]
	mov	[rsp+40h],rbx
	mov	[rsp+48h],rsi
	mov	[rsp+50h],rax
	lea	rax,[0000000000421B30]                                 ; [rip-00000227]
	mov	[rsp+60h],rax
	lea	rax,[rsp+40h]
	mov	[rsp+68h],rax
	call	41EA40h
	mov	rax,[rax]
	mov	[rsp+70h],rax
	mfence
	call	41EA40h
	lea	rdx,[rsp+60h]
	mov	rcx,rsi
	mov	[rax],rdx
	mfence
	call	4202A0h
	test	eax,eax
	mov	[rsp+3Ch],eax
	jz	421DCFh

l0000000000421D96:
	call	41EA40h
	mov	rdx,[rsp+70h]
	mov	[rax],rdx
	mov	rcx,[rsp+68h]
	call	qword ptr [rsp+60h]
	mov	eax,[rsp+3Ch]
	jmp	421CA6h

l0000000000421DB5:
	call	423290h
	mov	edx,0FFFFFFFEh
	cmp	rax,rdx
	ja	421CE1h

l0000000000421DC8:
	mov	edi,eax
	jmp	421CE6h

l0000000000421DCF:
	mov	rcx,[rbx+0A0h]
	lea	rax,[rbx+68h]
	lea	r9,[rbx+40h]
	mov	r8d,edi
	xor	edx,edx
	mov	[rsp+20h],rax
	call	421500h
	mov	[rsp+3Ch],eax
	jmp	421D96h
0000000000421DF3          66 66 66 66 2E 0F 1F 84 00 00 00 00 00    ffff.........

;; fn0000000000421E00: 0000000000421E00
;;   Called from:
;;     000000000042315D (in fn0000000000423070)
fn0000000000421E00 proc
	xor	r9d,r9d
	jmp	421C70h
0000000000421E08                         0F 1F 84 00 00 00 00 00         ........

;; fn0000000000421E10: 0000000000421E10
fn0000000000421E10 proc
	mov	r9d,1h
	jmp	421C70h
0000000000421E1B                                  90 90 90 90 90            .....

;; fn0000000000421E20: 0000000000421E20
;;   Called from:
;;     0000000000421FE4 (in fn0000000000421EA0)
;;     000000000042202F (in fn0000000000421EA0)
fn0000000000421E20 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	movsxd	rbx,r9d
	mov	eax,r8d
	mov	rsi,rdx
	sub	eax,ebx
	cmp	eax,3Fh
	jg	421E37h

l0000000000421E36:
	int	3h

l0000000000421E37:
	movzx	ecx,cx
	mov	rdx,rsi
	call	[00000000004AF56C]                                    ; [rip+0008D729]
	test	eax,eax
	jnz	421E93h

l0000000000421E47:
	int	3h
	xor	r8d,r8d
	xor	eax,eax

l0000000000421E4D:
	lea	rdx,[rsi+rbx]
	mov	r10d,40h
	mov	r9d,1h
	jmp	421E6Ah
0000000000421E5F                                              90                .

l0000000000421E60:
	add	r8,1h
	cmp	r8,40h
	jz	421E8Ch

l0000000000421E6A:
	cmp	byte ptr [rdx+r8],41h
	jnz	421E60h

l0000000000421E71:
	mov	ecx,r10d
	mov	esi,r9d
	sub	ecx,r8d
	add	r8,1h
	shl	esi,cl
	movsxd	rcx,esi
	or	rax,rcx
	cmp	r8,40h
	jnz	421E6Ah

l0000000000421E8C:
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret

l0000000000421E93:
	xor	r8d,r8d
	xor	eax,eax
	jmp	421E4Dh
0000000000421E9A                               66 0F 1F 44 00 00           f..D..

;; fn0000000000421EA0: 0000000000421EA0
;;   Called from:
;;     000000000041C22F (in fn000000000041C190)
;;     000000000041C279 (in fn000000000041C190)
;;     000000000041C2A3 (in fn000000000041C190)
;;     000000000041C2C3 (in fn000000000041C190)
;;     000000000041C3A6 (in fn000000000041C2E0)
;;     000000000041C3D4 (in fn000000000041C2E0)
;;     000000000041C3F8 (in fn000000000041C2E0)
;;     000000000041C44B (in fn000000000041C2E0)
;;     000000000041C535 (in fn000000000041C460)
;;     000000000041C559 (in fn000000000041C460)
;;     000000000041C57C (in fn000000000041C460)
;;     000000000041C5D2 (in fn000000000041C460)
;;     000000000041C7C2 (in fn000000000041C600)
;;     000000000041C832 (in fn000000000041C600)
;;     000000000041C8A6 (in fn000000000041C600)
;;     000000000041C90A (in fn000000000041C600)
;;     000000000041C92A (in fn000000000041C600)
;;     000000000041C94A (in fn000000000041C600)
;;     000000000041C96A (in fn000000000041C600)
;;     000000000041C98A (in fn000000000041C600)
;;     000000000041C9AA (in fn000000000041C600)
;;     000000000041C9CA (in fn000000000041C600)
;;     000000000041C9EA (in fn000000000041C600)
;;     000000000041CA0A (in fn000000000041C600)
;;     000000000041CA2A (in fn000000000041C600)
;;     000000000041CA4A (in fn000000000041C600)
;;     000000000041CA76 (in fn000000000041C600)
;;     000000000041CA96 (in fn000000000041C600)
;;     000000000041CAB6 (in fn000000000041C600)
;;     000000000041CAD6 (in fn000000000041C600)
;;     000000000041CAF6 (in fn000000000041C600)
;;     000000000041CBE8 (in fn000000000041CB10)
;;     000000000041CC13 (in fn000000000041CB10)
;;     000000000041CC3F (in fn000000000041CB10)
;;     000000000041CC8F (in fn000000000041CB10)
;;     000000000041CCAC (in fn000000000041CB10)
;;     000000000041CD03 (in fn000000000041CCC0)
;;     000000000041CD27 (in fn000000000041CCC0)
;;     000000000041CE7F (in fn000000000041CD40)
;;     000000000041CF30 (in fn000000000041CD40)
;;     000000000041CF95 (in fn000000000041CD40)
;;     000000000041CFC3 (in fn000000000041CD40)
;;     000000000041CFF3 (in fn000000000041CD40)
;;     000000000041D01C (in fn000000000041CD40)
;;     000000000041D05F (in fn000000000041CD40)
;;     000000000041D07F (in fn000000000041CD40)
;;     000000000041D09F (in fn000000000041CD40)
;;     000000000041D0BF (in fn000000000041CD40)
;;     000000000041D0DF (in fn000000000041CD40)
;;     000000000041D0FF (in fn000000000041CD40)
;;     000000000041D122 (in fn000000000041CD40)
;;     000000000041D31F (in fn000000000041D1D0)
;;     000000000041D346 (in fn000000000041D1D0)
;;     000000000041D36A (in fn000000000041D1D0)
;;     000000000041D39F (in fn000000000041D390)
;;     000000000041D3BF (in fn000000000041D3B0)
;;     000000000041D3DF (in fn000000000041D3D0)
;;     000000000041D3FF (in fn000000000041D3F0)
;;     000000000041D423 (in fn000000000041D410)
;;     000000000041D443 (in fn000000000041D430)
;;     000000000041D45F (in fn000000000041D450)
;;     000000000041D47F (in fn000000000041D470)
;;     000000000041D49F (in fn000000000041D490)
;;     000000000041D4BF (in fn000000000041D4B0)
;;     000000000041D4E3 (in fn000000000041D4D0)
;;     000000000041D4FF (in fn000000000041D4F0)
;;     000000000041D51F (in fn000000000041D510)
;;     000000000041D53F (in fn000000000041D530)
;;     000000000041D55F (in fn000000000041D550)
;;     000000000041D5D3 (in fn000000000041D570)
;;     000000000041D5F7 (in fn000000000041D570)
;;     000000000041D73F (in fn000000000041D610)
;;     000000000041D763 (in fn000000000041D610)
;;     000000000041D793 (in fn000000000041D610)
;;     000000000041D7BF (in fn000000000041D610)
;;     000000000041D980 (in fn000000000041D7F0)
;;     000000000041D9A4 (in fn000000000041D7F0)
;;     000000000041DB0D (in fn000000000041D9D0)
;;     000000000041DB40 (in fn000000000041D9D0)
;;     000000000041DBD6 (in fn000000000041D9D0)
;;     000000000041DBF6 (in fn000000000041D9D0)
;;     000000000041DC1D (in fn000000000041D9D0)
;;     000000000041DC4B (in fn000000000041D9D0)
;;     000000000041DCB2 (in fn000000000041D9D0)
;;     000000000041DCE0 (in fn000000000041D9D0)
;;     000000000041DDCF (in fn000000000041DDC0)
;;     000000000041DDF3 (in fn000000000041DDE0)
;;     000000000041E090 (in fn000000000041E000)
;;     000000000041E0EE (in fn000000000041E000)
;;     000000000041E23F (in fn000000000041E000)
;;     000000000041E25F (in fn000000000041E000)
;;     000000000041E295 (in fn000000000041E000)
;;     000000000041E2E6 (in fn000000000041E000)
;;     000000000041E30D (in fn000000000041E000)
;;     000000000041E330 (in fn000000000041E000)
;;     000000000041E350 (in fn000000000041E000)
;;     000000000041E380 (in fn000000000041E000)
;;     000000000041E3BF (in fn000000000041E000)
;;     000000000041E3E2 (in fn000000000041E000)
;;     000000000041E402 (in fn000000000041E000)
;;     000000000041E422 (in fn000000000041E000)
;;     000000000041E442 (in fn000000000041E000)
;;     000000000041E465 (in fn000000000041E000)
;;     000000000041E485 (in fn000000000041E000)
;;     000000000041E4A5 (in fn000000000041E000)
;;     000000000041E4C5 (in fn000000000041E000)
;;     000000000041E640 (in fn000000000041E4F0)
;;     000000000041E6AF (in fn000000000041E4F0)
;;     000000000041E6DF (in fn000000000041E4F0)
;;     000000000041E6FF (in fn000000000041E4F0)
;;     000000000041E723 (in fn000000000041E4F0)
;;     000000000041E746 (in fn000000000041E4F0)
;;     000000000041E76A (in fn000000000041E4F0)
;;     000000000041E791 (in fn000000000041E4F0)
;;     000000000041E7B4 (in fn000000000041E4F0)
;;     000000000041E7D8 (in fn000000000041E4F0)
;;     000000000041E7FB (in fn000000000041E4F0)
;;     000000000041EA9F (in fn000000000041EA70)
;;     000000000041EAEF (in fn000000000041EAC0)
;;     000000000041EC30 (in fn000000000041EB10)
;;     000000000041EC54 (in fn000000000041EB10)
;;     000000000041ECC3 (in fn000000000041EC70)
;;     000000000041ED7F (in fn000000000041ED10)
;;     000000000041EE64 (in fn000000000041EDF0)
;;     000000000041F1AB (in fn000000000041EFB0)
;;     000000000041F1CB (in fn000000000041EFB0)
;;     000000000041F1EB (in fn000000000041EFB0)
;;     000000000041F2C3 (in fn000000000041F200)
;;     000000000041F2F3 (in fn000000000041F200)
;;     000000000041F31A (in fn000000000041F200)
;;     000000000041F9F3 (in fn000000000041F940)
;;     000000000041FA17 (in fn000000000041F940)
;;     000000000041FA96 (in fn000000000041F940)
;;     000000000041FB3E (in fn000000000041F940)
;;     000000000041FB65 (in fn000000000041F940)
;;     000000000041FB93 (in fn000000000041F940)
;;     000000000041FC46 (in fn000000000041FBB0)
;;     000000000041FC73 (in fn000000000041FBB0)
;;     000000000041FD13 (in fn000000000041FBB0)
;;     000000000041FD3A (in fn000000000041FBB0)
;;     000000000041FD6F (in fn000000000041FD60)
;;     000000000041FDAF (in fn000000000041FD80)
;;     000000000041FDFF (in fn000000000041FDD0)
;;     000000000041FEE3 (in fn000000000041FE60)
;;     000000000041FF13 (in fn000000000041FE60)
;;     000000000041FF93 (in fn000000000041FF30)
;;     000000000041FFB7 (in fn000000000041FF30)
;;     00000000004200C3 (in fn0000000000420050)
;;     00000000004200F3 (in fn0000000000420050)
;;     0000000000420153 (in fn0000000000420140)
;;     0000000000420173 (in fn0000000000420160)
;;     0000000000420273 (in fn0000000000420260)
;;     0000000000420293 (in fn0000000000420280)
;;     0000000000420471 (in fn0000000000420360)
;;     0000000000420498 (in fn0000000000420360)
;;     00000000004204C3 (in fn0000000000420360)
;;     0000000000420594 (in fn0000000000420500)
;;     00000000004205E3 (in fn0000000000420500)
;;     000000000042061C (in fn0000000000420500)
;;     000000000042063D (in fn0000000000420500)
;;     0000000000420763 (in fn0000000000420660)
;;     0000000000420793 (in fn0000000000420660)
;;     00000000004207B7 (in fn0000000000420660)
;;     00000000004207E3 (in fn0000000000420660)
;;     0000000000420813 (in fn0000000000420660)
;;     0000000000420AF3 (in fn0000000000420A10)
;;     0000000000420B2D (in fn0000000000420A10)
;;     0000000000420BF8 (in fn0000000000420B50)
;;     0000000000420EC3 (in fn0000000000420EB0)
;;     00000000004211D3 (in fn0000000000421170)
;;     0000000000421203 (in fn0000000000421170)
;;     0000000000421736 (in fn0000000000421590)
;;     0000000000421763 (in fn0000000000421590)
;;     000000000042209E (in fn0000000000422060)
;;     00000000004220EF (in fn00000000004220C0)
;;     000000000042219F (in fn0000000000422190)
;;     0000000000422433 (in fn0000000000422390)
;;     0000000000422464 (in fn0000000000422390)
;;     00000000004224F3 (in fn0000000000422480)
;;     0000000000422523 (in fn0000000000422480)
;;     0000000000422683 (in fn0000000000422610)
;;     00000000004226B3 (in fn0000000000422610)
;;     0000000000422833 (in fn00000000004227E0)
;;     0000000000422857 (in fn00000000004227E0)
;;     00000000004228A0 (in fn00000000004227E0)
;;     0000000000422943 (in fn00000000004228C0)
;;     0000000000422967 (in fn00000000004228C0)
;;     0000000000422993 (in fn0000000000422980)
;;     0000000000422A63 (in fn0000000000422A50)
;;     0000000000422B57 (in fn0000000000422A90)
;;     0000000000422B83 (in fn0000000000422A90)
fn0000000000421EA0 proc
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,28h
	lea	rbp,[rsp+80h]
	mov	rdi,rcx
	movsxd	r12,edx
	mov	r13,r8
	call	41BCB8h
	mov	r14,rax
	lea	ebx,[rax+0Fh]
	lea	eax,[rax+51h]
	cdqe
	add	rax,0Fh
	and	rax,0F0h
	call	4116F0h
	sub	rsp,rax
	movsxd	r15,r14d
	mov	rax,656D68732D636367h
	lea	rsi,[rsp+20h]
	lea	rcx,[rsp+2Fh]
	mov	r8,r15
	mov	rdx,rdi
	mov	[rsp+20h],rax
	mov	eax,326Dh
	mov	dword ptr [rsp+28h],64742D6Dh
	mov	[rsp+2Ch],ax
	movsxd	rbx,ebx
	mov	byte ptr [rsp+2Eh],2Dh
	call	41BCC0h
	lea	rax,[rsi+r15+10h]
	lea	r15d,[r14+50h]
	mov	rdx,6161616161616161h
	xor	ecx,ecx
	mov	r8,rsi
	mov	[rax],rdx
	mov	[rax+8h],rdx
	mov	[rax+10h],rdx
	mov	[rax+18h],rdx
	mov	[rax+20h],rdx
	mov	[rax+28h],rdx
	mov	[rax+30h],rdx
	mov	[rax+38h],rdx
	movsxd	rax,r15d
	xor	edx,edx
	mov	byte ptr [rsp+rax+20h],0h
	mov	byte ptr [rsp+rbx+20h],0h
	call	[00000000004AF53C]                                    ; [rip+0008D5CE]
	mov	byte ptr [rsp+rbx+20h],2Dh
	mov	rdi,rax
	mov	edx,0FFFFFFFFh
	mov	rcx,rax
	call	[00000000004AF6FC]                                    ; [rip+0008D778]
	test	eax,eax
	jz	421F89h

l0000000000421F88:
	int	3h

l0000000000421F89:
	mov	rcx,rsi
	call	[00000000004AF564]                                    ; [rip+0008D5D2]
	test	ax,ax
	jnz	422022h

l0000000000421F9B:
	mov	rcx,r12
	add	r14d,10h
	call	41BCB0h
	mov	r10d,40h
	mov	rbx,rax

l0000000000421FB0:
	bt	rbx,r10
	jnc	421FC4h

l0000000000421FB6:
	mov	r11d,r15d
	sub	r11d,r10d
	movsxd	r11,r11d
	mov	byte ptr [rsi+r11],41h

l0000000000421FC4:
	sub	r10d,1h
	jnz	421FB0h

l0000000000421FCA:
	mov	rcx,rsi
	call	[00000000004AF524]                                    ; [rip+0008D551]
	test	ax,ax
	jz	42201Fh

l0000000000421FD8:
	mov	rdx,rsi
	movzx	ecx,ax
	mov	r9d,r14d
	mov	r8d,r15d
	call	421E20h
	cmp	rax,rbx
	mov	rsi,rax
	jz	422039h

l0000000000421FF1:
	mov	rcx,rbx
	call	41BDA0h

l0000000000421FF9:
	mov	rcx,rdi
	call	[00000000004AF61C]                                    ; [rip+0008D61A]
	mov	rcx,rdi
	call	[00000000004AF52C]                                    ; [rip+0008D521]
	mov	rax,rsi
	lea	rsp,[rbp-58h]
	pop	rbx
	pop	rsi
	pop	rdi
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret

l000000000042201F:
	int	3h
	jmp	421FD8h

l0000000000422022:
	lea	r9d,[r14+10h]
	mov	rdx,rsi
	movzx	ecx,ax
	mov	r8d,r15d
	call	421E20h
	mov	rsi,rax
	jmp	421FF9h

l0000000000422039:
	xor	edx,edx
	mov	r8,r12
	mov	rcx,rbx
	call	41BD88h
	test	r13,r13
	jz	421FF9h

l000000000042204B:
	mov	rcx,rbx
	call	r13
	jmp	421FF9h
0000000000422053          90 90 90 90 90 90 90 90 90 90 90 90 90    .............

;; fn0000000000422060: 0000000000422060
;;   Called from:
;;     0000000000422158 (in fn0000000000422150)
;;     00000000004221FA (in fn00000000004221E0)
fn0000000000422060 proc
	push	rbx
	sub	rsp,20h
	mov	rax,[00000000004AE5C0]                                 ; [rip+0008C554]
	mov	ebx,1h
	jmp	42208Ah

l0000000000422073:
	mov	edx,[rax]
	test	edx,edx
	jnz	422088h

l0000000000422079:
	mov	edx,ebx
	xchg	[rax],edx
	test	edx,edx
	jz	4220B0h

l0000000000422081:
	mov	rax,[00000000004AE5C0]                                 ; [rip+0008C538]

l0000000000422088:
	pause

l000000000042208A:
	test	rax,rax
	jnz	422073h

l000000000042208F:
	lea	rcx,[0000000000491490]                                 ; [rip+0006F3FA]
	xor	r8d,r8d
	mov	edx,4h
	call	421EA0h
	mov	[00000000004AE5C0],rax                                 ; [rip+0008C516]
	jmp	422073h
00000000004220AC                                     0F 1F 40 00             ..@.

l00000000004220B0:
	add	rsp,20h
	pop	rbx
	ret
00000000004220B6                   66 2E 0F 1F 84 00 00 00 00 00       f.........

;; fn00000000004220C0: 00000000004220C0
;;   Called from:
;;     0000000000422163 (in fn0000000000422150)
;;     0000000000422180 (in fn0000000000422150)
;;     0000000000422218 (in fn00000000004221E0)
;;     0000000000422249 (in fn00000000004221E0)
fn00000000004220C0 proc
	sub	rsp,28h
	mov	rax,[00000000004AE5C0]                                 ; [rip+0008C4F5]
	test	rax,rax
	jz	4220E0h

l00000000004220D0:
	xor	edx,edx
	xchg	[rax],edx
	add	rsp,28h
	ret
00000000004220D9                            0F 1F 80 00 00 00 00          .......

l00000000004220E0:
	lea	rcx,[0000000000491490]                                 ; [rip+0006F3A9]
	xor	r8d,r8d
	mov	edx,4h
	call	421EA0h
	mov	[00000000004AE5C0],rax                                 ; [rip+0008C4C5]
	jmp	4220D0h
00000000004220FD                                        0F 1F 00              ...

;; fn0000000000422100: 0000000000422100
;;   Called from:
;;     0000000000422173 (in fn0000000000422150)
;;     00000000004221D0 (in fn00000000004221B0)
fn0000000000422100 proc
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,20h
	mov	edx,30h
	mov	rdi,rcx
	mov	ecx,1h
	call	41BEC0h
	mov	rbx,rax
	mov	eax,0Ch
	test	rbx,rbx
	jz	422146h

l0000000000422126:
	lea	rsi,[rbx+8h]
	mov	rcx,rsi
	call	[00000000004AF5EC]                                    ; [rip+0008D4B9]
	mov	edx,0FA0h
	mov	rcx,rsi
	call	[00000000004AF66C]                                    ; [rip+0008D52B]
	mov	[rdi],rbx
	xor	eax,eax

l0000000000422146:
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	ret
000000000042214E                                           66 90               f.

;; fn0000000000422150: 0000000000422150
;;   Called from:
;;     00000000004222A0 (in fn0000000000422260)
;;     0000000000422300 (in fn00000000004222B0)
fn0000000000422150 proc
	push	rbx
	sub	rsp,30h
	mov	rbx,rcx
	call	422060h
	cmp	qword ptr [rbx],0FFh
	jz	422170h

l0000000000422163:
	call	4220C0h
	xor	eax,eax

l000000000042216A:
	add	rsp,30h
	pop	rbx
	ret

l0000000000422170:
	mov	rcx,rbx
	call	422100h
	test	eax,eax
	jns	422163h

l000000000042217C:
	mov	[rsp+2Ch],eax
	call	4220C0h
	mov	eax,[rsp+2Ch]
	jmp	42216Ah
000000000042218B                                  0F 1F 44 00 00            ..D..

;; fn0000000000422190: 0000000000422190
fn0000000000422190 proc
	lea	rcx,[0000000000491490]                                 ; [rip+0006F2F9]
	xor	r8d,r8d
	mov	edx,4h
	jmp	421EA0h
00000000004221A4             66 66 66 2E 0F 1F 84 00 00 00 00 00     fff.........

;; fn00000000004221B0: 00000000004221B0
fn00000000004221B0 proc
	test	rcx,rcx
	jz	4221C0h

l00000000004221B5:
	test	edx,edx
	mov	eax,81h
	jz	4221D0h

l00000000004221BE:
	ret

l00000000004221C0:
	mov	eax,16h
	ret
00000000004221C6                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l00000000004221D0:
	jmp	422100h
00000000004221D5                66 66 2E 0F 1F 84 00 00 00 00 00      ff.........

;; fn00000000004221E0: 00000000004221E0
fn00000000004221E0 proc
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,20h
	mov	eax,16h
	test	rcx,rcx
	jz	422222h

l00000000004221F1:
	cmp	qword ptr [rcx],0h
	jz	422222h

l00000000004221F7:
	mov	rbx,rcx
	call	422060h
	mov	rsi,[rbx]
	cmp	rsi,0FFh
	jz	422242h

l0000000000422208:
	mov	edi,[rsi]
	test	edi,edi
	jz	422230h

l000000000042220E:
	call	[00000000004AF58C]                                    ; [rip+0008D378]
	cmp	edi,eax
	jz	422230h

l0000000000422218:
	call	4220C0h
	mov	eax,1h

l0000000000422222:
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	ret
000000000042222A                               66 0F 1F 44 00 00           f..D..

l0000000000422230:
	lea	rcx,[rsi+8h]
	call	[00000000004AF54C]                                    ; [rip+0008D312]
	mov	rcx,rsi
	call	41BDA0h

l0000000000422242:
	mov	qword ptr [rbx],+0h
	call	4220C0h
	xor	eax,eax
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	ret
0000000000422258                         0F 1F 84 00 00 00 00 00         ........

;; fn0000000000422260: 0000000000422260
;;   Called from:
;;     000000000041C2FA (in fn000000000041C2E0)
;;     000000000041C482 (in fn000000000041C460)
;;     000000000041D64D (in fn000000000041D610)
;;     000000000041D6E7 (in fn000000000041D610)
;;     000000000041E831 (in fn000000000041E810)
;;     000000000041E8AD (in fn000000000041E880)
;;     000000000041FE7C (in fn000000000041FE60)
;;     000000000041FF44 (in fn000000000041FF30)
;;     0000000000420067 (in fn0000000000420050)
;;     0000000000420519 (in fn0000000000420500)
;;     0000000000420679 (in fn0000000000420660)
;;     00000000004206FF (in fn0000000000420660)
;;     0000000000420A5E (in fn0000000000420A10)
;;     0000000000421185 (in fn0000000000421170)
;;     0000000000421603 (in fn0000000000421590)
;;     00000000004223B4 (in fn0000000000422390)
;;     0000000000422495 (in fn0000000000422480)
;;     0000000000422627 (in fn0000000000422610)
;;     00000000004227F4 (in fn00000000004227E0)
;;     00000000004228DA (in fn00000000004228C0)
;;     0000000000422AAA (in fn0000000000422A90)
fn0000000000422260 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	mov	eax,16h
	test	rcx,rcx
	jz	422299h

l0000000000422270:
	mov	rsi,[rcx]
	test	rsi,rsi
	jz	422299h

l0000000000422278:
	cmp	rsi,0FFh
	mov	rbx,rcx
	jz	4222A0h

l0000000000422281:
	lea	rcx,[rsi+8h]
	call	[00000000004AF55C]                                    ; [rip+0008D2D1]
	call	[00000000004AF58C]                                    ; [rip+0008D2FB]
	add	dword ptr [rsi+4h],1h
	mov	[rsi],eax
	xor	eax,eax

l0000000000422299:
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret

l00000000004222A0:
	call	422150h
	test	eax,eax
	js	422299h

l00000000004222A9:
	mov	rsi,[rbx]
	jmp	422281h
00000000004222AE                                           66 90               f.

;; fn00000000004222B0: 00000000004222B0
fn00000000004222B0 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	mov	eax,16h
	test	rcx,rcx
	jz	4222E6h

l00000000004222C0:
	mov	rsi,[rcx]
	test	rsi,rsi
	jz	4222E6h

l00000000004222C8:
	cmp	rsi,0FFh
	mov	rbx,rcx
	jz	422300h

l00000000004222D1:
	lea	rcx,[rsi+8h]
	call	[00000000004AF6D4]                                    ; [rip+0008D3F9]
	mov	edx,eax
	mov	eax,10h
	test	edx,edx
	jnz	4222F0h

l00000000004222E6:
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret
00000000004222ED                                        0F 1F 00              ...

l00000000004222F0:
	call	[00000000004AF58C]                                    ; [rip+0008D296]
	add	dword ptr [rsi+4h],1h
	mov	[rsi],eax
	xor	eax,eax
	jmp	4222E6h

l0000000000422300:
	call	422150h
	test	eax,eax
	js	4222E6h

l0000000000422309:
	mov	rsi,[rbx]
	jmp	4222D1h
000000000042230E                                           66 90               f.

;; fn0000000000422310: 0000000000422310
;;   Called from:
;;     000000000041C370 (in fn000000000041C2E0)
;;     000000000041C3B5 (in fn000000000041C2E0)
;;     000000000041C4EA (in fn000000000041C460)
;;     000000000041D6C0 (in fn000000000041D610)
;;     000000000041D710 (in fn000000000041D610)
;;     000000000041D7E1 (in fn000000000041D610)
;;     000000000041E850 (in fn000000000041E810)
;;     000000000041E8CA (in fn000000000041E880)
;;     000000000041E966 (in fn000000000041E880)
;;     000000000041FEA2 (in fn000000000041FE60)
;;     000000000041FEF2 (in fn000000000041FE60)
;;     000000000041FF6C (in fn000000000041FF30)
;;     000000000042009F (in fn0000000000420050)
;;     00000000004200D2 (in fn0000000000420050)
;;     00000000004203FB (in fn0000000000420360)
;;     0000000000420434 (in fn0000000000420360)
;;     000000000042044C (in fn0000000000420360)
;;     0000000000420560 (in fn0000000000420500)
;;     00000000004205A3 (in fn0000000000420500)
;;     00000000004206BE (in fn0000000000420660)
;;     00000000004206E0 (in fn0000000000420660)
;;     000000000042072C (in fn0000000000420660)
;;     0000000000420A92 (in fn0000000000420A10)
;;     0000000000420BD6 (in fn0000000000420B50)
;;     00000000004211AC (in fn0000000000421170)
;;     00000000004211E2 (in fn0000000000421170)
;;     0000000000421627 (in fn0000000000421590)
;;     00000000004223E5 (in fn0000000000422390)
;;     0000000000422442 (in fn0000000000422390)
;;     00000000004224C0 (in fn0000000000422480)
;;     0000000000422502 (in fn0000000000422480)
;;     000000000042265C (in fn0000000000422610)
;;     0000000000422692 (in fn0000000000422610)
;;     0000000000422810 (in fn00000000004227E0)
;;     0000000000422886 (in fn00000000004227E0)
;;     0000000000422900 (in fn00000000004228C0)
;;     0000000000422ACE (in fn0000000000422A90)
fn0000000000422310 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	mov	eax,16h
	test	rcx,rcx
	jz	42233Fh

l0000000000422320:
	mov	rbx,[rcx]
	test	rbx,rbx
	jz	42233Fh

l0000000000422328:
	cmp	rbx,0FFh
	jz	42233Ah

l000000000042232E:
	mov	esi,[rbx]
	call	[00000000004AF58C]                                    ; [rip+0008D256]
	cmp	esi,eax
	jz	422350h

l000000000042233A:
	mov	eax,1h

l000000000042233F:
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret
0000000000422346                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l0000000000422350:
	sub	dword ptr [rbx+4h],1h
	jnz	42235Ch

l0000000000422356:
	mov	dword ptr [rbx],0h

l000000000042235C:
	lea	rcx,[rbx+8h]
	call	[00000000004AF5FC]                                    ; [rip+0008D296]
	xor	eax,eax
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret
000000000042236F                                              90                .

;; fn0000000000422370: 0000000000422370
fn0000000000422370 proc
	mov	qword ptr [rcx],-1h
	ret
0000000000422378                         0F 1F 84 00 00 00 00 00         ........

;; fn0000000000422380: 0000000000422380
fn0000000000422380 proc
	mov	qword ptr [rcx],-1h
	ret
0000000000422388                         0F 1F 84 00 00 00 00 00         ........

;; fn0000000000422390: 0000000000422390
;;   Called from:
;;     0000000000422AB7 (in fn0000000000422A90)
fn0000000000422390 proc
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,20h
	mov	rbx,rcx
	mov	qword ptr [rdx],+0h
	mov	rcx,[00000000004AE5D8]                                 ; [rip+0008C230]
	mov	rdi,rdx
	test	rcx,rcx
	jz	422451h

l00000000004223B4:
	call	422260h
	test	rbx,rbx
	mov	esi,16h
	jz	4223D9h

l00000000004223C3:
	mov	rcx,[rbx]
	test	rcx,rcx
	jz	4223D9h

l00000000004223CB:
	cmp	rcx,0FFh
	jz	422403h

l00000000004223D1:
	cmp	dword ptr [rcx],0BAB1F0EDh
	jz	4223F4h

l00000000004223D9:
	mov	rcx,[00000000004AE5D8]                                 ; [rip+0008C1F8]
	test	rcx,rcx
	jz	422420h

l00000000004223E5:
	call	422310h
	mov	eax,esi
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	ret

l00000000004223F4:
	mov	eax,[rcx+4h]
	mov	esi,10h
	test	eax,eax
	jnz	4223D9h

l0000000000422400:
	mov	[rdi],rcx

l0000000000422403:
	mov	qword ptr [rbx],+0h
	mov	rcx,[00000000004AE5D8]                                 ; [rip+0008C1C7]
	xor	sil,sil
	test	rcx,rcx
	jnz	4223E5h

l0000000000422419:
	nop	dword ptr [rax+0h]

l0000000000422420:
	lea	r8,[0000000000422370]                                  ; [rip-000000B7]
	lea	rcx,[00000000004914B0]                                 ; [rip+0006F082]
	mov	edx,8h
	call	421EA0h
	mov	rcx,rax
	mov	[00000000004AE5D8],rax                                 ; [rip+0008C196]
	call	422310h
	mov	eax,esi
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	ret

l0000000000422451:
	lea	rcx,[00000000004914B0]                                 ; [rip+0006F058]
	lea	r8,[0000000000422370]                                  ; [rip-000000EF]
	mov	edx,8h
	call	421EA0h
	mov	rcx,rax
	mov	[00000000004AE5D8],rax                                 ; [rip+0008C165]
	jmp	4223B4h
0000000000422478                         0F 1F 84 00 00 00 00 00         ........

;; fn0000000000422480: 0000000000422480
;;   Called from:
;;     0000000000422EAA (in fn0000000000422EA0)
fn0000000000422480 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	mov	rbx,rcx
	mov	rcx,[00000000004AE5D8]                                 ; [rip+0008C148]
	test	rcx,rcx
	jz	422510h

l0000000000422495:
	call	422260h
	test	rbx,rbx
	mov	esi,16h
	jz	4224B4h

l00000000004224A4:
	mov	rdx,[rbx]
	test	rdx,rdx
	jz	4224B4h

l00000000004224AC:
	cmp	dword ptr [rdx],0BAB1F0EDh
	jz	4224D0h

l00000000004224B4:
	mov	rcx,[00000000004AE5D8]                                 ; [rip+0008C11D]
	test	rcx,rcx
	jz	4224E0h

l00000000004224C0:
	call	422310h
	mov	eax,esi
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret
00000000004224CE                                           66 90               f.

l00000000004224D0:
	cmp	rdx,0FFh
	jz	422540h

l00000000004224D6:
	add	dword ptr [rdx+4h],1h
	xor	sil,sil
	jmp	4224B4h
00000000004224DF                                              90                .

l00000000004224E0:
	lea	r8,[0000000000422370]                                  ; [rip-00000177]
	lea	rcx,[00000000004914B0]                                 ; [rip+0006EFC2]
	mov	edx,8h
	call	421EA0h
	mov	rcx,rax
	mov	[00000000004AE5D8],rax                                 ; [rip+0008C0D6]
	call	422310h
	mov	eax,esi
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret

l0000000000422510:
	lea	rcx,[00000000004914B0]                                 ; [rip+0006EF99]
	lea	r8,[0000000000422370]                                  ; [rip-000001AE]
	mov	edx,8h
	call	421EA0h
	mov	rcx,rax
	mov	[00000000004AE5D8],rax                                 ; [rip+0008C0A6]
	jmp	422495h
0000000000422537                      66 0F 1F 84 00 00 00 00 00        f........

l0000000000422540:
	mov	esi,1h
	jmp	4224B4h
000000000042254A                               66 0F 1F 44 00 00           f..D..

;; fn0000000000422550: 0000000000422550
;;   Called from:
;;     0000000000422AE4 (in fn0000000000422A90)
;;     0000000000422F6B (in fn0000000000422F40)
fn0000000000422550 proc
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,20h
	lea	rdi,[rcx+18h]
	mov	rbx,rcx
	mov	rcx,rdi
	call	4208F0h
	test	eax,eax
	mov	esi,eax
	jz	422580h

l000000000042256C:
	mov	eax,esi
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	ret
0000000000422576                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l0000000000422580:
	lea	rcx,[rbx+20h]
	call	4208F0h
	test	eax,eax
	mov	ebx,eax
	jz	42256Ch

l000000000042258F:
	mov	rcx,rdi
	mov	esi,ebx
	call	4202A0h
	mov	eax,esi
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	ret
00000000004225A3          66 66 66 66 2E 0F 1F 84 00 00 00 00 00    ffff.........

;; fn00000000004225B0: 00000000004225B0
;;   Called from:
;;     0000000000422601 (in fn00000000004225F0)
;;     0000000000422B15 (in fn0000000000422A90)
;;     0000000000422BAB (in fn0000000000422A90)
;;     0000000000422C82 (in fn0000000000422BF0)
;;     0000000000422D32 (in fn0000000000422C90)
;;     0000000000422DD2 (in fn0000000000422D40)
;;     0000000000422E4F (in fn0000000000422DE0)
;;     0000000000422EC7 (in fn0000000000422EA0)
fn00000000004225B0 proc
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,20h
	mov	rbx,rcx
	lea	rcx,[rcx+20h]
	mov	esi,edx
	call	4202A0h
	lea	rcx,[rbx+18h]
	mov	edi,eax
	call	4202A0h
	test	eax,eax
	jz	4225E0h

l00000000004225D4:
	test	esi,esi
	jz	4225E0h

l00000000004225D8:
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	ret

l00000000004225E0:
	or	esi,edi
	cmovnz	eax,edi

l00000000004225E5:
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	ret
00000000004225ED                                        0F 1F 00              ...

;; fn00000000004225F0: 00000000004225F0
fn00000000004225F0 proc
	mov	eax,[rcx+10h]
	xor	edx,edx
	mov	dword ptr [rcx+10h],0h
	neg	eax
	mov	[rcx+0Ch],eax
	jmp	4225B0h
0000000000422603          66 66 66 66 2E 0F 1F 84 00 00 00 00 00    ffff.........

;; fn0000000000422610: 0000000000422610
;;   Called from:
;;     0000000000422C46 (in fn0000000000422BF0)
;;     0000000000422CE9 (in fn0000000000422C90)
;;     0000000000422D96 (in fn0000000000422D40)
;;     0000000000422E6B (in fn0000000000422DE0)
;;     0000000000422ED8 (in fn0000000000422EA0)
;;     000000000042304A (in fn0000000000422F40)
;;     000000000042318E (in fn0000000000423070)
;;     00000000004231A5 (in fn0000000000423070)
;;     00000000004231BD (in fn0000000000423070)
fn0000000000422610 proc
	push	rsi
	push	rbx
	sub	rsp,38h
	mov	rbx,rcx
	mov	rcx,[00000000004AE5D8]                                 ; [rip+0008BFB8]
	mov	esi,edx
	test	rcx,rcx
	jz	4226A0h

l0000000000422627:
	call	422260h
	mov	rcx,[rbx]
	cmp	dword ptr [rcx],0BAB1F0EDh
	jnz	4226C7h

l000000000042263B:
	mov	rax,[rbx]
	mov	eax,[rax+4h]
	test	eax,eax
	jle	4226C7h

l0000000000422649:
	mov	rcx,[rbx]
	sub	dword ptr [rcx+4h],1h
	mov	rcx,[00000000004AE5D8]                                 ; [rip+0008BF81]
	test	rcx,rcx
	jz	422670h

l000000000042265C:
	call	422310h
	mov	eax,esi
	add	rsp,38h
	pop	rbx
	pop	rsi
	ret
000000000042266A                               66 0F 1F 44 00 00           f..D..

l0000000000422670:
	lea	r8,[0000000000422370]                                  ; [rip-00000307]
	lea	rcx,[00000000004914B0]                                 ; [rip+0006EE32]
	mov	edx,8h
	call	421EA0h
	mov	rcx,rax
	mov	[00000000004AE5D8],rax                                 ; [rip+0008BF46]
	call	422310h
	mov	eax,esi
	add	rsp,38h
	pop	rbx
	pop	rsi
	ret

l00000000004226A0:
	lea	rcx,[00000000004914B0]                                 ; [rip+0006EE09]
	lea	r8,[0000000000422370]                                  ; [rip-0000033E]
	mov	edx,8h
	call	421EA0h
	mov	rcx,rax
	mov	[00000000004AE5D8],rax                                 ; [rip+0008BF16]
	jmp	422627h

l00000000004226C7:
	call	[00000000004AF744]                                    ; [rip+0008D077]
	lea	r9,[00000000004914C8]                                  ; [rip+0006EDF4]
	lea	rcx,[rax+60h]
	lea	r8,[0000000000491500]                                  ; [rip+0006EE21]
	lea	rdx,[0000000000491550]                                 ; [rip+0006EE6A]
	mov	dword ptr [rsp+20h],2Fh
	call	41BE78h
	mov	ecx,1h
	call	41BCE0h
00000000004226FD                                        90 66 90              .f.

;; fn0000000000422700: 0000000000422700
;;   Called from:
;;     0000000000422873 (in fn00000000004227E0)
;;     0000000000422A75 (in fn0000000000422A70)
fn0000000000422700 proc
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,20h
	mov	edx,30h
	mov	qword ptr [rcx],+0h
	mov	rdi,rcx
	mov	ecx,1h
	call	41BEC0h
	mov	rbx,rax
	mov	eax,0Ch
	test	rbx,rbx
	jz	42278Fh

l0000000000422730:
	lea	rbp,[rbx+18h]
	xor	edx,edx
	mov	dword ptr [rbx],0DEADB0EFh
	mov	dword ptr [rbx+10h],0h
	mov	dword ptr [rbx+0Ch],0h
	mov	rcx,rbp
	mov	dword ptr [rbx+8h],0h
	call	420360h
	test	eax,eax
	mov	esi,eax
	jnz	4227A8h

l000000000042275F:
	lea	r12,[rbx+20h]
	xor	edx,edx
	mov	rcx,r12
	call	420360h
	test	eax,eax
	mov	esi,eax
	jnz	4227A0h

l0000000000422773:
	lea	rcx,[rbx+28h]
	xor	edx,edx
	call	421040h
	test	eax,eax
	mov	esi,eax
	jnz	4227C0h

l0000000000422784:
	mov	dword ptr [rbx],0BAB1F0EDh
	mov	[rdi],rbx
	xor	eax,eax

l000000000042278F:
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
000000000042279A                               66 0F 1F 44 00 00           f..D..

l00000000004227A0:
	mov	rcx,rbp
	call	420B50h

l00000000004227A8:
	mov	rcx,rbx
	call	41BDA0h
	mov	eax,esi
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
00000000004227BD                                        0F 1F 00              ...

l00000000004227C0:
	mov	rcx,rbp
	call	420B50h
	mov	rcx,r12
	call	420B50h
	mov	rcx,rbx
	call	41BDA0h
	mov	eax,esi
	jmp	42278Fh
00000000004227DC                                     0F 1F 40 00             ..@.

;; fn00000000004227E0: 00000000004227E0
;;   Called from:
;;     0000000000422920 (in fn00000000004228C0)
fn00000000004227E0 proc
	push	rbx
	sub	rsp,20h
	mov	rbx,rcx
	mov	rcx,[00000000004AE5D0]                                 ; [rip+0008BDE1]
	test	rcx,rcx
	jz	422844h

l00000000004227F4:
	call	422260h
	cmp	qword ptr [rbx],0FFh
	jz	422870h

l00000000004227FF:
	mov	rcx,[00000000004AE5D0]                                 ; [rip+0008BDCA]
	test	rcx,rcx
	jz	422820h

l000000000042280B:
	mov	ebx,16h
	call	422310h

l0000000000422815:
	mov	eax,ebx
	add	rsp,20h
	pop	rbx
	ret
000000000042281D                                        0F 1F 00              ...

l0000000000422820:
	lea	rcx,[000000000049157A]                                 ; [rip+0006ED53]
	lea	r8,[0000000000422380]                                  ; [rip-000004AE]
	mov	edx,8h
	call	421EA0h
	mov	rcx,rax
	mov	[00000000004AE5D0],rax                                 ; [rip+0008BD8E]
	jmp	42280Bh

l0000000000422844:
	lea	rcx,[000000000049157A]                                 ; [rip+0006ED2F]
	lea	r8,[0000000000422380]                                  ; [rip-000004D2]
	mov	edx,8h
	call	421EA0h
	mov	rcx,rax
	mov	[00000000004AE5D0],rax                                 ; [rip+0008BD6A]
	jmp	4227F4h
0000000000422868                         0F 1F 84 00 00 00 00 00         ........

l0000000000422870:
	mov	rcx,rbx
	call	422700h
	mov	rcx,[00000000004AE5D0]                                 ; [rip+0008BD51]
	mov	ebx,eax
	test	rcx,rcx
	jz	42288Dh

l0000000000422886:
	call	422310h
	jmp	422815h

l000000000042288D:
	lea	rcx,[000000000049157A]                                 ; [rip+0006ECE6]
	lea	r8,[0000000000422380]                                  ; [rip-0000051B]
	mov	edx,8h
	call	421EA0h
	mov	rcx,rax
	mov	[00000000004AE5D0],rax                                 ; [rip+0008BD21]
	jmp	422886h
00000000004228B1    66 66 66 66 66 66 2E 0F 1F 84 00 00 00 00 00  ffffff.........

;; fn00000000004228C0: 00000000004228C0
;;   Called from:
;;     0000000000422BFB (in fn0000000000422BF0)
;;     0000000000422C9E (in fn0000000000422C90)
;;     0000000000422D4B (in fn0000000000422D40)
;;     0000000000422DEB (in fn0000000000422DE0)
;;     0000000000422F4F (in fn0000000000422F40)
;;     00000000004230A6 (in fn0000000000423070)
fn00000000004228C0 proc
	push	rbx
	sub	rsp,20h
	cmp	qword ptr [rcx],0FFh
	mov	rbx,rcx
	jz	422920h

l00000000004228CE:
	mov	rcx,[00000000004AE5D8]                                 ; [rip+0008BD03]
	test	rcx,rcx
	jz	422954h

l00000000004228DA:
	call	422260h
	mov	rax,[rbx]
	mov	ebx,16h
	test	rax,rax
	jz	4228F4h

l00000000004228EC:
	cmp	dword ptr [rax],0BAB1F0EDh
	jz	422910h

l00000000004228F4:
	mov	rcx,[00000000004AE5D8]                                 ; [rip+0008BCDD]
	test	rcx,rcx
	jz	422930h

l0000000000422900:
	call	422310h
	mov	eax,ebx

l0000000000422907:
	add	rsp,20h
	pop	rbx
	ret
000000000042290D                                        0F 1F 00              ...

l0000000000422910:
	add	dword ptr [rax+4h],1h
	xor	bl,bl
	jmp	4228F4h
0000000000422918                         0F 1F 84 00 00 00 00 00         ........

l0000000000422920:
	call	4227E0h
	test	eax,0FFFFFFEFh
	jnz	422907h

l000000000042292C:
	jmp	4228CEh
000000000042292E                                           66 90               f.

l0000000000422930:
	lea	rcx,[00000000004914B0]                                 ; [rip+0006EB79]
	lea	r8,[0000000000422370]                                  ; [rip-000005CE]
	mov	edx,8h
	call	421EA0h
	mov	rcx,rax
	mov	[00000000004AE5D8],rax                                 ; [rip+0008BC86]
	jmp	422900h

l0000000000422954:
	lea	rcx,[00000000004914B0]                                 ; [rip+0006EB55]
	lea	r8,[0000000000422370]                                  ; [rip-000005F2]
	mov	edx,8h
	call	421EA0h
	mov	rcx,rax
	mov	[00000000004AE5D8],rax                                 ; [rip+0008BC62]
	jmp	4228DAh
000000000042297B                                  0F 1F 44 00 00            ..D..

;; fn0000000000422980: 0000000000422980
fn0000000000422980 proc
	lea	r8,[0000000000422370]                                  ; [rip-00000617]
	lea	rcx,[00000000004914B0]                                 ; [rip+0006EB22]
	mov	edx,8h
	jmp	421EA0h
0000000000422998                         0F 1F 84 00 00 00 00 00         ........

;; fn00000000004229A0: 00000000004229A0
fn00000000004229A0 proc
	mov	[00000000004AE5E0],ecx                                 ; [rip+0008BC3A]
	ret
00000000004229A7                      66 0F 1F 84 00 00 00 00 00        f........

;; fn00000000004229B0: 00000000004229B0
fn00000000004229B0 proc
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,58h
	mov	eax,[00000000004AE5E0]                                 ; [rip+0008BC22]
	test	eax,eax
	jz	422A13h

l00000000004229C2:
	mov	rax,[rcx]
	mov	rsi,rdx
	mov	rbx,rcx
	test	rax,rax
	jz	422A20h

l00000000004229D0:
	mov	ebp,[rax+4h]
	mov	edi,[rax]
	call	[00000000004AF58C]                                    ; [rip+0008CBB1]
	mov	rdx,[rbx]
	lea	rcx,[00000000004915A0]                                 ; [rip+0006EBBB]
	mov	r8d,eax
	mov	[rsp+40h],rsi
	mov	qword ptr [rsp+38h],+0h
	mov	r9d,edi
	mov	dword ptr [rsp+30h],0h
	mov	dword ptr [rsp+28h],0h
	mov	[rsp+20h],ebp
	call	423538h
	nop

l0000000000422A13:
	add	rsp,58h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
0000000000422A1C                                     0F 1F 40 00             ..@.

l0000000000422A20:
	call	[00000000004AF58C]                                    ; [rip+0008CB66]
	mov	rdx,[rbx]
	lea	rcx,[0000000000491593]                                 ; [rip+0006EB63]
	mov	r8d,eax
	mov	r9,rsi
	add	rsp,58h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	jmp	423538h
0000000000422A43          66 66 66 66 2E 0F 1F 84 00 00 00 00 00    ffff.........

;; fn0000000000422A50: 0000000000422A50
fn0000000000422A50 proc
	lea	r8,[0000000000422380]                                  ; [rip-000006D7]
	lea	rcx,[000000000049157A]                                 ; [rip+0006EB1C]
	mov	edx,8h
	jmp	421EA0h
0000000000422A68                         0F 1F 84 00 00 00 00 00         ........

;; fn0000000000422A70: 0000000000422A70
fn0000000000422A70 proc
	test	rcx,rcx
	jz	422A80h

l0000000000422A75:
	jmp	422700h
0000000000422A7A                               66 0F 1F 44 00 00           f..D..

l0000000000422A80:
	mov	eax,16h
	ret
0000000000422A86                   66 2E 0F 1F 84 00 00 00 00 00       f.........

;; fn0000000000422A90: 0000000000422A90
fn0000000000422A90 proc
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,30h
	mov	rdi,rcx
	mov	rcx,[00000000004AE5D0]                                 ; [rip+0008BB2F]
	test	rcx,rcx
	jz	422B44h

l0000000000422AAA:
	call	422260h
	lea	rdx,[rsp+28h]
	mov	rcx,rdi
	call	422390h
	mov	rcx,[00000000004AE5D0]                                 ; [rip+0008BB0D]
	mov	ebx,eax
	test	rcx,rcx
	jz	422B70h

l0000000000422ACE:
	call	422310h
	test	ebx,ebx
	jnz	422B1Fh

l0000000000422AD7:
	mov	rsi,[rsp+28h]
	test	rsi,rsi
	jz	422B1Fh

l0000000000422AE1:
	mov	rcx,rsi
	call	422550h
	test	eax,eax
	jnz	422B30h

l0000000000422AED:
	mov	eax,[rsi+10h]
	cmp	[rsi+0Ch],eax
	jg	422B00h

l0000000000422AF5:
	mov	eax,[rsi+8h]
	test	eax,eax
	jle	422BA0h

l0000000000422B00:
	mov	rax,[rsp+28h]
	mov	edx,1h
	mov	rcx,rsi
	mov	ebx,10h
	mov	[rdi],rax
	call	4225B0h
	test	eax,eax
	cmovnz	ebx,eax

l0000000000422B1F:
	mov	eax,ebx
	add	rsp,30h
	pop	rbx
	pop	rsi
	pop	rdi
	ret
0000000000422B29                            0F 1F 80 00 00 00 00          .......

l0000000000422B30:
	mov	rdx,[rsp+28h]
	mov	ebx,eax
	mov	eax,ebx
	mov	[rdi],rdx
	add	rsp,30h
	pop	rbx
	pop	rsi
	pop	rdi
	ret

l0000000000422B44:
	lea	rcx,[000000000049157A]                                 ; [rip+0006EA2F]
	lea	r8,[0000000000422380]                                  ; [rip-000007D2]
	mov	edx,8h
	call	421EA0h
	mov	rcx,rax
	mov	[00000000004AE5D0],rax                                 ; [rip+0008BA6A]
	jmp	422AAAh
0000000000422B6B                                  0F 1F 44 00 00            ..D..

l0000000000422B70:
	lea	rcx,[000000000049157A]                                 ; [rip+0006EA03]
	lea	r8,[0000000000422380]                                  ; [rip-000007FE]
	mov	edx,8h
	call	421EA0h
	mov	rcx,rax
	mov	[00000000004AE5D0],rax                                 ; [rip+0008BA3E]
	jmp	422ACEh
0000000000422B97                      66 0F 1F 84 00 00 00 00 00        f........

l0000000000422BA0:
	xor	edx,edx
	mov	dword ptr [rsi],0DEADB0EFh
	mov	rcx,rsi
	call	4225B0h
	test	eax,eax
	jnz	422B30h

l0000000000422BB8:
	lea	rcx,[rsi+28h]
	call	421590h
	lea	rcx,[rsi+18h]
	call	420B50h
	lea	rcx,[rsi+20h]
	call	420B50h
	mov	rcx,[rsp+28h]
	mov	dword ptr [rsi],0DEADB0EFh
	call	41BDA0h
	jmp	422B1Fh
0000000000422BE8                         0F 1F 84 00 00 00 00 00         ........

;; fn0000000000422BF0: 0000000000422BF0
;;   Called from:
;;     000000000041D68A (in fn000000000041D610)
fn0000000000422BF0 proc
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,28h
	mov	rbx,rcx
	call	4228C0h
	test	eax,eax
	jz	422C10h

l0000000000422C04:
	add	rsp,28h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
0000000000422C0D                                        0F 1F 00              ...

l0000000000422C10:
	mov	rsi,[rbx]
	lea	rdi,[rsi+18h]
	mov	rcx,rdi
	call	4208F0h
	test	eax,eax
	jnz	422C39h

l0000000000422C23:
	lock
	add	dword ptr [rsi+0Ch],1h
	cmp	dword ptr [rsi+0Ch],7FFFFFFFh
	jz	422C50h

l0000000000422C31:
	mov	rcx,rdi
	call	4202A0h

l0000000000422C39:
	mov	edx,eax

l0000000000422C3B:
	mov	rcx,rbx
	add	rsp,28h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	jmp	422610h
0000000000422C4B                                  0F 1F 44 00 00            ..D..

l0000000000422C50:
	lea	rcx,[rsi+20h]
	call	4208F0h
	test	eax,eax
	mov	ebp,eax
	jz	422C70h

l0000000000422C5F:
	mov	rcx,rdi
	call	4202A0h
	mov	edx,ebp
	jmp	422C3Bh
0000000000422C6B                                  0F 1F 44 00 00            ..D..

l0000000000422C70:
	mov	eax,[rsi+10h]
	sub	[rsi+0Ch],eax
	xor	edx,edx
	mov	dword ptr [rsi+10h],0h
	mov	rcx,rsi
	call	4225B0h
	jmp	422C39h
0000000000422C89                            0F 1F 80 00 00 00 00          .......

;; fn0000000000422C90: 0000000000422C90
fn0000000000422C90 proc
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,28h
	mov	rbx,rcx
	mov	rdi,rdx
	call	4228C0h
	test	eax,eax
	jz	422CB0h

l0000000000422CA7:
	add	rsp,28h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret

l0000000000422CB0:
	mov	rsi,[rbx]
	mov	rdx,rdi
	lea	rbp,[rsi+18h]
	mov	rcx,rbp
	call	420900h
	test	eax,eax
	jnz	422CDCh

l0000000000422CC6:
	lock
	add	dword ptr [rsi+0Ch],1h
	cmp	dword ptr [rsi+0Ch],7FFFFFFFh
	jz	422CF0h

l0000000000422CD4:
	mov	rcx,rbp
	call	4202A0h

l0000000000422CDC:
	mov	edx,eax

l0000000000422CDE:
	mov	rcx,rbx
	add	rsp,28h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	jmp	422610h
0000000000422CEE                                           66 90               f.

l0000000000422CF0:
	lea	rcx,[rsi+20h]
	mov	rdx,rdi
	call	420900h
	test	eax,eax
	mov	edi,eax
	jz	422D20h

l0000000000422D02:
	cmp	eax,8Ah
	jz	422D15h

l0000000000422D09:
	mov	rcx,rbp
	call	4202A0h
	mov	edx,edi
	jmp	422CDEh

l0000000000422D15:
	lock
	add	dword ptr [rsi+10h],1h
	jmp	422D09h
0000000000422D1C                                     0F 1F 40 00             ..@.

l0000000000422D20:
	mov	eax,[rsi+10h]
	sub	[rsi+0Ch],eax
	xor	edx,edx
	mov	dword ptr [rsi+10h],0h
	mov	rcx,rsi
	call	4225B0h
	jmp	422CDCh
0000000000422D39                            0F 1F 80 00 00 00 00          .......

;; fn0000000000422D40: 0000000000422D40
fn0000000000422D40 proc
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,28h
	mov	rbx,rcx
	call	4228C0h
	test	eax,eax
	jz	422D60h

l0000000000422D54:
	add	rsp,28h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
0000000000422D5D                                        0F 1F 00              ...

l0000000000422D60:
	mov	rsi,[rbx]
	lea	rdi,[rsi+18h]
	mov	rcx,rdi
	call	4209D0h
	test	eax,eax
	jnz	422D89h

l0000000000422D73:
	lock
	add	dword ptr [rsi+0Ch],1h
	cmp	dword ptr [rsi+0Ch],7FFFFFFFh
	jz	422DA0h

l0000000000422D81:
	mov	rcx,rdi
	call	4202A0h

l0000000000422D89:
	mov	edx,eax

l0000000000422D8B:
	mov	rcx,rbx
	add	rsp,28h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	jmp	422610h
0000000000422D9B                                  0F 1F 44 00 00            ..D..

l0000000000422DA0:
	lea	rcx,[rsi+20h]
	call	4208F0h
	test	eax,eax
	mov	ebp,eax
	jz	422DC0h

l0000000000422DAF:
	mov	rcx,rdi
	call	4202A0h
	mov	edx,ebp
	jmp	422D8Bh
0000000000422DBB                                  0F 1F 44 00 00            ..D..

l0000000000422DC0:
	mov	eax,[rsi+10h]
	sub	[rsi+0Ch],eax
	xor	edx,edx
	mov	dword ptr [rsi+10h],0h
	mov	rcx,rsi
	call	4225B0h
	jmp	422D89h
0000000000422DD9                            0F 1F 80 00 00 00 00          .......

;; fn0000000000422DE0: 0000000000422DE0
fn0000000000422DE0 proc
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,28h
	mov	rbx,rcx
	call	4228C0h
	test	eax,eax
	jz	422E00h

l0000000000422DF4:
	add	rsp,28h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
0000000000422DFD                                        0F 1F 00              ...

l0000000000422E00:
	mov	rsi,[rbx]
	lea	rdi,[rsi+18h]
	mov	rcx,rdi
	call	4209D0h
	test	eax,eax
	jnz	422E5Eh

l0000000000422E13:
	lea	rcx,[rsi+20h]
	call	4209D0h
	test	eax,eax
	mov	ebp,eax
	jnz	422E70h

l0000000000422E22:
	mov	eax,[rsi+8h]
	mov	edx,10h
	test	eax,eax
	jnz	422E60h

l0000000000422E2E:
	mov	eax,[rsi+10h]
	test	eax,eax
	jle	422E81h

l0000000000422E35:
	mov	edx,[rsi+0Ch]
	mov	dword ptr [rsi+10h],0h
	sub	edx,eax
	mov	eax,edx
	mov	[rsi+0Ch],edx

l0000000000422E46:
	test	eax,eax
	jle	422E90h

l0000000000422E4A:
	xor	edx,edx
	mov	rcx,rsi
	call	4225B0h
	mov	edx,10h
	test	eax,eax
	cmovz	eax,edx

l0000000000422E5E:
	mov	edx,eax

l0000000000422E60:
	mov	rcx,rbx
	add	rsp,28h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	jmp	422610h

l0000000000422E70:
	mov	rcx,rdi
	call	4202A0h
	test	eax,eax
	cmovnz	ebp,eax

l0000000000422E7D:
	mov	edx,ebp
	jmp	422E60h

l0000000000422E81:
	mov	eax,[rsi+0Ch]
	jmp	422E46h
0000000000422E86                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l0000000000422E90:
	mov	dword ptr [rsi+8h],1h
	xor	edx,edx
	jmp	422E60h
0000000000422E9B                                  0F 1F 44 00 00            ..D..

;; fn0000000000422EA0: 0000000000422EA0
;;   Called from:
;;     000000000041D6FC (in fn000000000041D610)
;;     000000000041E21E (in fn000000000041E000)
;;     000000000041E2C0 (in fn000000000041E000)
;;     000000000041E67A (in fn000000000041E4F0)
fn0000000000422EA0 proc
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,30h
	mov	rbx,rcx
	call	422480h
	test	eax,eax
	jnz	422F10h

l0000000000422EB3:
	mov	rsi,[rbx]
	mov	edx,[rsi+8h]
	test	edx,edx
	jz	422EE0h

l0000000000422EBD:
	lock
	sub	dword ptr [rsi+8h],1h
	xor	edx,edx
	mov	rcx,rsi
	call	4225B0h
	mov	edx,eax

l0000000000422ECE:
	mov	rcx,rbx
	add	rsp,30h
	pop	rbx
	pop	rsi
	pop	rdi
	jmp	422610h
0000000000422EDD                                        0F 1F 00              ...

l0000000000422EE0:
	lea	rdi,[rsi+20h]
	mov	rcx,rdi
	call	4208F0h
	test	eax,eax
	mov	edx,eax
	jnz	422ECEh

l0000000000422EF2:
	lock
	add	dword ptr [rsi+10h],1h
	mov	eax,[rsi+10h]
	test	eax,eax
	jz	422F20h

l0000000000422EFE:
	mov	rcx,rdi
	call	4202A0h
	mov	edx,eax
	jmp	422ECEh
0000000000422F0A                               66 0F 1F 44 00 00           f..D..

l0000000000422F10:
	add	rsp,30h
	pop	rbx
	pop	rsi
	pop	rdi
	ret
0000000000422F18                         0F 1F 84 00 00 00 00 00         ........

l0000000000422F20:
	lea	rcx,[rsi+28h]
	call	421780h
	mov	rcx,rdi
	mov	[rsp+2Ch],eax
	call	4202A0h
	mov	edx,[rsp+2Ch]
	test	edx,edx
	cmovz	edx,eax

l0000000000422F3E:
	jmp	422ECEh

;; fn0000000000422F40: 0000000000422F40
;;   Called from:
;;     000000000041E02C (in fn000000000041E000)
;;     000000000041E546 (in fn000000000041E4F0)
fn0000000000422F40 proc
	push	r13
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,48h
	mov	rsi,rcx
	call	4228C0h
	test	eax,eax
	jz	422F65h

l0000000000422F58:
	add	rsp,48h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	ret

l0000000000422F65:
	mov	rbx,[rsi]
	mov	rcx,rbx
	call	422550h
	test	eax,eax
	mov	ebp,eax
	jnz	423045h

l0000000000422F7A:
	mov	edx,[rbx+8h]
	test	edx,edx
	jnz	423040h

l0000000000422F85:
	mov	eax,[rbx+10h]
	test	eax,eax
	jle	423060h

l0000000000422F90:
	mov	edx,[rbx+0Ch]
	mov	dword ptr [rbx+10h],0h
	sub	edx,eax
	mov	eax,edx
	mov	[rbx+0Ch],edx

l0000000000422FA1:
	test	eax,eax
	jle	423040h

l0000000000422FA9:
	neg	eax
	mov	[rsp+28h],rbx
	lea	r13,[rbx+20h]
	mov	[rbx+10h],eax
	lea	rax,[00000000004225F0]                                 ; [rip-000009CE]
	lea	r12,[rbx+28h]
	mov	[rsp+20h],rax
	call	41EA40h
	mov	rax,[rax]
	mov	[rsp+30h],rax
	mfence
	call	41EA40h
	lea	rdx,[rsp+20h]
	mov	[rax],rdx
	mfence
	jmp	422FF7h
0000000000422FE9                            0F 1F 80 00 00 00 00          .......

l0000000000422FF0:
	mov	eax,[rbx+10h]
	test	eax,eax
	jns	423022h

l0000000000422FF7:
	mov	rdx,r13
	mov	rcx,r12
	call	4219D0h
	test	eax,eax
	mov	edi,eax
	jz	422FF0h

l0000000000423008:
	call	41EA40h
	mov	rdx,[rsp+30h]
	mov	ebp,edi
	mov	[rax],rdx
	mov	rcx,[rsp+28h]
	call	qword ptr [rsp+20h]
	jmp	423045h

l0000000000423022:
	call	41EA40h
	mov	rdx,[rsp+30h]
	mov	[rax],rdx
	mov	dword ptr [rbx+0Ch],0h
	nop	word ptr cs:[rax+rax+0h]

l0000000000423040:
	lock
	add	dword ptr [rbx+8h],1h

l0000000000423045:
	mov	edx,ebp
	mov	rcx,rsi
	call	422610h
	add	rsp,48h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	ret
000000000042305C                                     0F 1F 40 00             ..@.

l0000000000423060:
	mov	eax,[rbx+0Ch]
	jmp	422FA1h
0000000000423068                         0F 1F 84 00 00 00 00 00         ........

;; fn0000000000423070: 0000000000423070
fn0000000000423070 proc
	push	r14
	push	r13
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,40h
	test	rcx,rcx
	jz	423088h

l0000000000423083:
	test	rdx,rdx
	jnz	4230A0h

l0000000000423088:
	mov	eax,16h

l000000000042308D:
	add	rsp,40h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	ret
000000000042309C                                     0F 1F 40 00             ..@.

l00000000004230A0:
	mov	rsi,rdx
	mov	rbx,rcx
	call	4228C0h
	test	eax,eax
	jnz	42308Dh

l00000000004230AF:
	mov	rdi,[rbx]
	mov	rdx,rsi
	lea	rbp,[rdi+18h]
	mov	rcx,rbp
	call	420900h
	test	eax,eax
	jnz	4231A0h

l00000000004230C9:
	lea	r12,[rdi+20h]
	mov	rdx,rsi
	mov	rcx,r12
	call	420900h
	test	eax,eax
	mov	r13d,eax
	jnz	4231AFh

l00000000004230E3:
	mov	edx,[rdi+8h]
	test	edx,edx
	jnz	423183h

l00000000004230EE:
	mov	eax,[rdi+10h]
	test	eax,eax
	jle	4231C7h

l00000000004230F9:
	mov	edx,[rdi+0Ch]
	mov	dword ptr [rdi+10h],0h
	sub	edx,eax
	mov	eax,edx
	mov	[rdi+0Ch],edx

l000000000042310A:
	test	eax,eax
	jle	423183h

l000000000042310E:
	neg	eax
	mov	[rsp+28h],rdi
	lea	r14,[rdi+28h]
	mov	[rdi+10h],eax
	lea	rax,[00000000004225F0]                                 ; [rip-00000B33]
	mov	[rsp+20h],rax
	call	41EA40h
	mov	rax,[rax]
	mov	[rsp+30h],rax
	mfence
	call	41EA40h
	lea	rdx,[rsp+20h]
	mov	[rax],rdx
	mfence
	jmp	423154h
000000000042314A                               66 0F 1F 44 00 00           f..D..

l0000000000423150:
	test	ebp,ebp
	jnz	4231CFh

l0000000000423154:
	mov	r8,rsi
	mov	rdx,r12
	mov	rcx,r14
	call	421E00h
	mov	ebp,eax
	mov	eax,[rdi+10h]
	test	eax,eax
	js	423150h

l000000000042316B:
	call	41EA40h
	mov	rdx,[rsp+30h]
	test	ebp,ebp
	mov	[rax],rdx
	jnz	4231DCh

l000000000042317C:
	mov	dword ptr [rdi+0Ch],0h

l0000000000423183:
	lock
	add	dword ptr [rdi+8h],1h

l0000000000423188:
	mov	edx,r13d
	mov	rcx,rbx
	call	422610h
	jmp	42308Dh
0000000000423198                         0F 1F 84 00 00 00 00 00         ........

l00000000004231A0:
	mov	edx,eax
	mov	rcx,rbx
	call	422610h
	jmp	42308Dh

l00000000004231AF:
	mov	rcx,rbp
	call	4202A0h
	mov	edx,r13d
	mov	rcx,rbx
	call	422610h
	jmp	42308Dh

l00000000004231C7:
	mov	eax,[rdi+0Ch]
	jmp	42310Ah

l00000000004231CF:
	call	41EA40h
	mov	rdx,[rsp+30h]
	mov	[rax],rdx

l00000000004231DC:
	mov	rcx,[rsp+28h]
	mov	r13d,ebp
	call	qword ptr [rsp+20h]
	jmp	423188h
00000000004231EA                               66 0F 1F 44 00 00           f..D..

;; fn00000000004231F0: 00000000004231F0
fn00000000004231F0 proc
	cmp	rcx,1h
	sbb	eax,eax
	and	eax,16h
	ret
00000000004231FA                               66 0F 1F 44 00 00           f..D..

;; fn0000000000423200: 0000000000423200
fn0000000000423200 proc
	mov	eax,16h
	test	rcx,rcx
	jz	423212h

l000000000042320A:
	mov	dword ptr [rcx],0h
	xor	al,al

l0000000000423212:
	ret
0000000000423214             66 66 66 2E 0F 1F 84 00 00 00 00 00     fff.........

;; fn0000000000423220: 0000000000423220
fn0000000000423220 proc
	test	rcx,rcx
	jz	42322Ah

l0000000000423225:
	test	rdx,rdx
	jnz	423230h

l000000000042322A:
	mov	eax,16h
	ret

l0000000000423230:
	mov	eax,[rcx]
	mov	[rdx],eax
	xor	eax,eax
	ret
0000000000423237                      66 0F 1F 84 00 00 00 00 00        f........

;; fn0000000000423240: 0000000000423240
fn0000000000423240 proc
	cmp	edx,1h
	ja	42324Ah

l0000000000423245:
	test	rcx,rcx
	jnz	423250h

l000000000042324A:
	mov	eax,16h
	ret

l0000000000423250:
	mov	[rcx],edx
	xor	eax,eax
	ret
0000000000423255                90 90 90 90 90 90 90 90 90 90 90      ...........

;; fn0000000000423260: 0000000000423260
;;   Called from:
;;     0000000000420950 (in fn0000000000420900)
;;     0000000000420FC1 (in fn0000000000420F70)
;;     0000000000420FD0 (in fn0000000000420F70)
fn0000000000423260 proc
	sub	rsp,38h
	lea	rcx,[rsp+20h]
	call	[00000000004AF7D4]                                    ; [rip+0008C565]
	imul	rdx,[rsp+20h],+3E8h
	movzx	eax,word ptr [rsp+28h]
	add	rax,rdx
	add	rsp,38h
	ret
0000000000423285                66 66 2E 0F 1F 84 00 00 00 00 00      ff.........

;; fn0000000000423290: 0000000000423290
;;   Called from:
;;     000000000041EEAC (in fn000000000041EEA0)
;;     000000000042095B (in fn0000000000420900)
;;     0000000000420F9B (in fn0000000000420F70)
;;     0000000000421DB5 (in fn0000000000421C70)
fn0000000000423290 proc
	imul	r8,[rcx],+3E8h
	mov	ecx,[rcx+8h]
	mov	edx,431BDE83h
	mov	eax,ecx
	sar	ecx,1Fh
	imul	edx
	sar	edx,12h
	sub	edx,ecx
	movsxd	rdx,edx
	lea	rax,[rdx+r8]
	ret
00000000004232B3          66 66 66 66 2E 0F 1F 84 00 00 00 00 00    ffff.........

;; fn00000000004232C0: 00000000004232C0
;;   Called from:
;;     0000000000421000 (in fn0000000000420F70)
;;     0000000000421CD0 (in fn0000000000421C70)
fn00000000004232C0 proc
	push	rbx
	sub	rsp,30h
	mov	r8d,[rcx+8h]
	mov	edx,431BDE83h
	imul	rbx,[rcx],+3E8h
	lea	rcx,[rsp+20h]
	mov	eax,r8d
	sar	r8d,1Fh
	imul	edx
	sar	edx,12h
	sub	edx,r8d
	movsxd	rdx,edx
	add	rbx,rdx
	call	[00000000004AF7D4]                                    ; [rip+0008C4DF]
	imul	rcx,[rsp+20h],+3E8h
	movzx	eax,word ptr [rsp+28h]
	mov	edx,0h
	add	rcx,rax
	mov	rax,rbx
	sub	rax,rcx
	cmp	rbx,rcx
	cmovc	rax,rdx

l0000000000423318:
	add	rsp,30h
	pop	rbx
	ret
000000000042331E                                           90 90               ..
0000000000423320 FF 25 7E C3 08 00 90 90 FF 25 6E C3 08 00 90 90 .%~......%n.....
0000000000423330 FF 25 86 C2 08 00 90 90 FF 25 86 C2 08 00 90 90 .%.......%......
0000000000423340 FF 25 1E C3 08 00 90 90 FF 25 9E C3 08 00 90 90 .%.......%......
0000000000423350 FF 25 8E C3 08 00 90 90 FF 25 3E C2 08 00 90 90 .%.......%>.....
0000000000423360 FF 25 D6 C2 08 00 90 90 FF 25 5E C2 08 00 90 90 .%.......%^.....
0000000000423370 FF 25 06 C2 08 00 90 90 FF 25 0E C2 08 00 90 90 .%.......%......
0000000000423380 FF 25 5E C2 08 00 90 90 FF 25 7E C2 08 00 90 90 .%^......%~.....
0000000000423390 FF 25 AE C2 08 00 90 90 FF 25 AE C2 08 00 90 90 .%.......%......
00000000004233A0 FF 25 B6 C2 08 00 90 90 FF 25 2E C3 08 00 90 90 .%.......%......
00000000004233B0 FF 25 BE C1 08 00 90 90 FF 25 F6 C2 08 00 90 90 .%.......%......
00000000004233C0 FF 25 96 C1 08 00 90 90 FF 25 F6 C2 08 00 90 90 .%.......%......
00000000004233D0 FF 25 26 C2 08 00 90 90 FF 25 6E C1 08 00 90 90 .%&......%n.....
00000000004233E0 FF 25 06 C2 08 00 90 90 FF 25 26 C2 08 00 90 90 .%.......%&.....
00000000004233F0 FF 25 5E C2 08 00 90 90 FF 25 6E C1 08 00 90 90 .%^......%n.....
0000000000423400 FF 25 36 C1 08 00 90 90 FF 25 EE C2 08 00 90 90 .%6......%......
0000000000423410 FF 25 4E C1 08 00 90 90 FF 25 06 C1 08 00 90 90 .%N......%......
0000000000423420 FF 25 F6 C1 08 00 90 90 FF 25 FE C0 08 00 90 90 .%.......%......
0000000000423430 FF 25 CE C2 08 00 90 90 FF 25 C6 C1 08 00 90 90 .%.......%......
0000000000423440 FF 25 AE C1 08 00 90 90 FF 25 56 C1 08 00 90 90 .%.......%V.....
0000000000423450 FF 25 56 C1 08 00 90 90 FF 25 5E C2 08 00 90 90 .%V......%^.....
0000000000423460 FF 25 CE C0 08 00 90 90 FF 25 16 C1 08 00 90 90 .%.......%......
0000000000423470 FF 25 DE C0 08 00 90 90 FF 25 5E C1 08 00 90 90 .%.......%^.....
0000000000423480 FF 25 46 C2 08 00 90 90 FF 25 26 C1 08 00 90 90 .%F......%&.....
0000000000423490 FF 25 EE C1 08 00 90 90 FF 25 DE C1 08 00 90 90 .%.......%......
00000000004234A0 FF 25 86 C1 08 00 90 90 FF 25 E6 C0 08 00 90 90 .%.......%......
00000000004234B0 FF 25 BE C1 08 00 90 90 FF 25 EE C1 08 00 90 90 .%.......%......
00000000004234C0 FF 25 0E C1 08 00 90 90 FF 25 BE C1 08 00 90 90 .%.......%......
00000000004234D0 FF 25 5E C1 08 00 90 90 FF 25 B6 C1 08 00 90 90 .%^......%......
00000000004234E0 FF 25 3E C1 08 00 90 90 FF 25 56 C0 08 00 90 90 .%>......%V.....
00000000004234F0 FF 25 FE C1 08 00 90 90 FF 25 D6 C1 08 00 90 90 .%.......%......
0000000000423500 FF 25 66 C1 08 00 90 90 0F 1F 84 00 00 00 00 00 .%f.............
0000000000423510 48 8D 44 24 08 C3                               H.D$..         

;; fn0000000000423516: 0000000000423516
;;   Called from:
;;     000000000041EBAA (in fn000000000041EB10)
fn0000000000423516 proc
	lea	rax,[00000000004AF8EC]                                 ; [rip+0008C3CF]
	jmp	qword ptr [rax]
000000000042351F                                              90                .
0000000000423520 FF 25 6E C2 08 00 90 90 FF 25 56 C2 08 00 90 90 .%n......%V.....
0000000000423530 FF 25 E6 C2 08 00 90 90 FF 25 E6 C3 08 00 90 90 .%.......%......
0000000000423540 FF 25 8E C2 08 00 90 90 0F 1F 84 00 00 00 00 00 .%..............

;; fn0000000000423550: 0000000000423550
fn0000000000423550 proc
	lea	r8,[0000000000476300]                                  ; [rip+00052DA9]
	lea	rcx,[000000000048D7BB]                                 ; [rip+0006A25D]
	mov	edx,8h
	jmp	4117B0h
0000000000423568                         90 90 90 90 90 90 90 90         ........

;; fn0000000000423570: 0000000000423570
fn0000000000423570 proc
	lea	rcx,[000000000048D7B0]                                 ; [rip+0006A239]
	xor	r8d,r8d
	mov	edx,10h
	jmp	4117B0h
0000000000423584             90 90 90 90 90 90 90 90 90 90 90 90     ............

;; fn0000000000423590: 0000000000423590
;;   Called from:
;;     0000000000423FE9 (in fn0000000000423C60)
;;     0000000000423FF7 (in fn0000000000423C60)
fn0000000000423590 proc
	xor	r10d,r10d
	mov	rax,rcx
	xor	ecx,ecx
	nop	dword ptr [rax+rax+0h]

l00000000004235A0:
	add	rax,1h
	movzx	r9d,byte ptr [rax-1h]
	mov	r8,r9
	and	r8d,7Fh
	shl	r8,cl
	add	ecx,7h
	or	r10,r8
	test	r9b,r9b
	js	4235A0h

l00000000004235BE:
	cmp	ecx,3Fh
	ja	4235D6h

l00000000004235C3:
	and	r9d,40h
	jz	4235D6h

l00000000004235C9:
	mov	r8,-1h
	shl	r8,cl
	or	r10,r8

l00000000004235D6:
	mov	[rdx],r10
	ret
00000000004235DA                               90 90 90 90 90 90           ......

;; fn00000000004235E0: 00000000004235E0
fn00000000004235E0 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	test	rcx,rcx
	jz	423623h

l00000000004235EB:
	mov	rax,[rcx]
	mov	rsi,rcx
	test	rax,rax
	jz	423615h

l00000000004235F6:
	nop	word ptr cs:[rax+rax+0h]

l0000000000423600:
	mov	rbx,[rax+20h]
	lea	rcx,[rax+50h]
	call	4116C0h
	test	rbx,rbx
	mov	rax,rbx
	jnz	423600h

l0000000000423615:
	mov	rcx,rsi
	add	rsp,28h
	pop	rbx
	pop	rsi
	jmp	41BDA0h

l0000000000423623:
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret
000000000042362A                               90 90 90 90 90 90           ......

;; fn0000000000423630: 0000000000423630
;;   Called from:
;;     0000000000423865 (in fn0000000000423810)
;;     0000000000424089 (in fn0000000000423C60)
fn0000000000423630 proc
	sub	rsp,38h
	movzx	eax,byte ptr [rcx+28h]
	cmp	al,0FFh
	jz	4236B0h

l000000000042363C:
	mov	r8d,eax
	and	r8d,7h
	cmp	r8b,2h
	jz	4236A0h

l0000000000423649:
	jbe	423680h

l000000000042364B:
	cmp	r8b,3h
	jz	423690h

l0000000000423651:
	cmp	r8b,4h
	jnz	423685h

l0000000000423657:
	lea	r8,[0000h+rdx*8]
	neg	r8

l0000000000423662:
	add	r8,[rcx+18h]
	mov	rdx,[rcx+10h]
	lea	r9,[rsp+28h]
	mov	ecx,eax
	call	423940h
	mov	rax,[rsp+28h]
	add	rsp,38h
	ret

l0000000000423680:
	test	r8b,r8b
	jz	423657h

l0000000000423685:
	call	41BD30h
	nop	word ptr [rax+rax+0h]

l0000000000423690:
	lea	r8,[0000h+rdx*4]
	neg	r8
	jmp	423662h
000000000042369D                                        0F 1F 00              ...

l00000000004236A0:
	lea	r8,[rdx+rdx]
	neg	r8
	jmp	423662h
00000000004236A9                            0F 1F 80 00 00 00 00          .......

l00000000004236B0:
	xor	r8d,r8d
	jmp	423662h
00000000004236B5                90 90 90 90 90 90 90 90 90 90 90      ...........

;; fn00000000004236C0: 00000000004236C0
;;   Called from:
;;     0000000000423873 (in fn0000000000423810)
;;     00000000004240A3 (in fn0000000000423C60)
fn00000000004236C0 proc
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,30h
	mov	rax,[r8]
	mov	rsi,rcx
	mov	rbx,rdx
	mov	rdi,r8
	mov	rcx,rdx
	mov	[rsp+28h],rax
	mov	rax,[rdx]
	call	qword ptr [rax+10h]
	test	al,al
	jz	4236F2h

l00000000004236E5:
	mov	rax,[rsp+28h]
	mov	rax,[rax]
	mov	[rsp+28h],rax

l00000000004236F2:
	mov	rax,[rsi]
	mov	r9d,1h
	lea	r8,[rsp+28h]
	mov	rdx,rbx
	mov	rcx,rsi
	call	qword ptr [rax+20h]
	test	al,al
	jz	423715h

l000000000042370D:
	mov	rdx,[rsp+28h]
	mov	[rdi],rdx

l0000000000423715:
	add	rsp,30h
	pop	rbx
	pop	rsi
	pop	rdi
	ret
000000000042371D                                        90 90 90              ...

;; fn0000000000423720: 0000000000423720
;;   Called from:
;;     0000000000423D9A (in fn0000000000423C60)
;;     00000000004240EF (in fn0000000000423C60)
;;     000000000047596D (in fn0000000000475910)
fn0000000000423720 proc
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,28h
	xor	eax,eax
	test	rcx,rcx
	mov	rbp,rcx
	mov	rsi,rdx
	mov	rbx,r8
	jz	42373Dh

l0000000000423738:
	call	4112E0h

l000000000042373D:
	mov	[rbx],rax
	movzx	r9d,byte ptr [rsi]
	lea	rdi,[rsi+1h]
	cmp	r9b,0FFh
	jz	4237F0h

l0000000000423752:
	movzx	esi,r9b
	mov	rdx,rbp
	mov	ecx,esi
	call	423890h
	lea	r9,[rbx+8h]
	mov	r8,rdi
	mov	rdx,rax
	mov	ecx,esi
	call	423940h
	mov	rdi,rax
	movzx	eax,byte ptr [rdi]
	lea	rdx,[rdi+1h]
	cmp	al,0FFh
	mov	[rbx+28h],al
	jz	423802h

l0000000000423786:
	xor	r9d,r9d
	xor	ecx,ecx
	nop	dword ptr [rax+rax+0h]

l0000000000423790:
	add	rdx,1h
	movzx	r8d,byte ptr [rdx-1h]
	mov	rax,r8
	and	eax,7Fh
	shl	rax,cl
	add	ecx,7h
	or	r9,rax
	test	r8b,r8b
	js	423790h

l00000000004237AD:
	add	r9,rdx
	mov	[rbx+18h],r9

l00000000004237B4:
	lea	rax,[rdx+1h]
	movzx	edx,byte ptr [rdx]
	xor	r10d,r10d
	xor	ecx,ecx
	mov	[rbx+29h],dl

l00000000004237C3:
	add	rax,1h
	movzx	r9d,byte ptr [rax-1h]
	mov	rdx,r9
	and	edx,7Fh
	shl	rdx,cl
	add	ecx,7h
	or	r10,rdx
	test	r9b,r9b
	js	4237C3h

l00000000004237E0:
	add	r10,rax
	mov	[rbx+20h],r10
	add	rsp,28h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret

l00000000004237F0:
	mov	[rbx+8h],rax
	movzx	eax,byte ptr [rdi]
	lea	rdx,[rdi+1h]
	cmp	al,0FFh
	mov	[rbx+28h],al
	jnz	423786h

l0000000000423802:
	mov	qword ptr [rbx+18h],+0h
	jmp	4237B4h
000000000042380C                                     90 90 90 90             ....

;; fn0000000000423810: 0000000000423810
;;   Called from:
;;     000000000042413D (in fn0000000000423C60)
;;     0000000000475983 (in fn0000000000475910)
;;     00000000004759B6 (in fn0000000000475910)
fn0000000000423810 proc
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,28h
	not	r9
	lea	rbp,[rsp+60h]
	mov	rsi,rcx
	mov	rbx,r9
	add	rbx,[rcx+18h]
	mov	rdi,rdx
	mov	[rsp+60h],r8

l0000000000423832:
	xor	edx,edx
	xor	ecx,ecx
	nop	word ptr cs:[rax+rax+0h]

l0000000000423840:
	add	rbx,1h
	movzx	r9d,byte ptr [rbx-1h]
	mov	rax,r9
	and	eax,7Fh
	shl	rax,cl
	add	ecx,7h
	or	rdx,rax
	test	r9b,r9b
	js	423840h

l000000000042385D:
	test	rdx,rdx
	jz	423885h

l0000000000423862:
	mov	rcx,rsi
	call	423630h
	mov	r8,rbp
	mov	rdx,rdi
	mov	rcx,rax
	call	4236C0h
	test	al,al
	jz	423832h

l000000000042387C:
	add	rsp,28h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret

l0000000000423885:
	xor	eax,eax
	add	rsp,28h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret

;; fn0000000000423890: 0000000000423890
;;   Called from:
;;     000000000042375B (in fn0000000000423720)
;;     0000000000423DB2 (in fn0000000000423C60)
;;     0000000000423E08 (in fn0000000000423C60)
;;     0000000000423E2F (in fn0000000000423C60)
;;     0000000000423E56 (in fn0000000000423C60)
;;     0000000000424104 (in fn0000000000423C60)
;;     0000000000424121 (in fn0000000000423C60)
fn0000000000423890 proc
	sub	rsp,28h
	cmp	cl,0FFh
	jz	4238C0h

l0000000000423899:
	mov	eax,ecx
	and	eax,70h
	cmp	al,20h
	jz	4238F0h

l00000000004238A2:
	jbe	4238D0h

l00000000004238A4:
	cmp	al,40h
	jz	4238E0h

l00000000004238A8:
	cmp	al,50h
	jz	4238C0h

l00000000004238AC:
	cmp	al,30h
	jnz	4238D8h

l00000000004238B0:
	mov	rcx,rdx
	add	rsp,28h
	jmp	411320h
00000000004238BC                                     0F 1F 40 00             ..@.

l00000000004238C0:
	xor	eax,eax
	add	rsp,28h
	ret
00000000004238C7                      66 0F 1F 84 00 00 00 00 00        f........

l00000000004238D0:
	test	al,al
	jz	4238C0h

l00000000004238D4:
	cmp	al,10h
	jz	4238C0h

l00000000004238D8:
	call	41BD30h
	nop	dword ptr [rax]

l00000000004238E0:
	mov	rcx,rdx
	add	rsp,28h
	jmp	4112E0h
00000000004238EC                                     0F 1F 40 00             ..@.

l00000000004238F0:
	mov	rcx,rdx
	add	rsp,28h
	jmp	411330h
00000000004238FC                                     90 90 90 90             ....

;; fn0000000000423900: 0000000000423900
fn0000000000423900 proc
	push	rbx
	sub	rsp,20h
	cmp	ecx,1h
	ja	423936h

l000000000042390A:
	lock
	sub	dword ptr [rdx-60h],1h
	jnz	423930h

l0000000000423911:
	mov	rax,[rdx-48h]
	lea	rbx,[rdx+40h]
	test	rax,rax
	jz	423923h

l000000000042391E:
	mov	rcx,rbx
	call	rax

l0000000000423923:
	mov	rcx,rbx
	add	rsp,20h
	pop	rbx
	jmp	475BA0h

l0000000000423930:
	add	rsp,20h
	pop	rbx
	ret

l0000000000423936:
	mov	rcx,[rdx-38h]
	call	423AD0h
	nop

;; fn0000000000423940: 0000000000423940
;;   Called from:
;;     0000000000423671 (in fn0000000000423630)
;;     000000000042376C (in fn0000000000423720)
;;     000000000042393F (in fn0000000000423900)
;;     0000000000423E19 (in fn0000000000423C60)
;;     0000000000423E40 (in fn0000000000423C60)
;;     0000000000423E67 (in fn0000000000423C60)
fn0000000000423940 proc
	push	rsi
	push	rbx
	sub	rsp,48h
	cmp	cl,50h
	mov	ebx,ecx
	mov	rsi,rdx
	jz	423A55h

l0000000000423954:
	mov	r10d,ecx
	and	r10d,0Fh
	cmp	r10b,0Ch
	ja	423A50h

l0000000000423965:
	lea	r11,[000000000048D420]                                 ; [rip+00069AB4]
	movzx	r10d,r10b
	movsxd	rax,dword ptr [r11+r10*4]
	add	r11,rax
	jmp	r11
000000000042397A                               66 0F 1F 44 00 00           f..D..
0000000000423980 4D 8B 10 49 8D 40 08 4D 85 D2 74 16 89 DA 83 E2 M..I.@.M..t.....
0000000000423990 70 80 FA 10 4C 0F 45 C6 4D 01 C2 84 DB 79 03 4D p...L.E.M....y.M
00000000004239A0 8B 12 4D 89 11 48 83 C4 48 5B 5E C3 0F 1F 40 00 ..M..H..H[^...@.
00000000004239B0 4D 0F BF 10 49 8D 40 02 EB CD 66 0F 1F 44 00 00 M...I.@...f..D..
00000000004239C0 4C 89 C0 45 31 D2 31 C9 0F 1F 84 00 00 00 00 00 L..E1.1.........
00000000004239D0 48 83 C0 01 44 0F B6 58 FF 4C 89 DA 83 E2 7F 48 H...D..X.L.....H
00000000004239E0 D3 E2 83 C1 07 49 09 D2 45 84 DB 78 E3 EB 98 90 .....I..E..x....
00000000004239F0 45 0F B7 10 49 8D 40 02 EB 8D 66 0F 1F 44 00 00 E...I.@...f..D..
0000000000423A00 45 8B 10 49 8D 40 04 E9 7B FF FF FF 0F 1F 40 00 E..I.@..{.....@.
0000000000423A10 4D 63 10 49 8D 40 04 E9 6B FF FF FF 0F 1F 40 00 Mc.I.@..k.....@.
0000000000423A20 48 8D 54 24 38 4C 89 C1 4C 89 4C 24 28 4C 89 44 H.T$8L..L.L$(L.D
0000000000423A30 24 20 E8 59 FB FF FF 4C 8B 54 24 38 4C 8B 44 24 $ .Y...L.T$8L.D$
0000000000423A40 20 4C 8B 4C 24 28 E9 3C FF FF FF 0F 1F 44 00 00  L.L$(.<.....D..

l0000000000423A50:
	call	41BD30h

l0000000000423A55:
	lea	rax,[r8+7h]
	and	rax,0F8h
	mov	r10,[rax]
	add	rax,8h
	mov	[r9],r10
	add	rsp,48h
	pop	rbx
	pop	rsi
	ret
0000000000423A6E                                           90 90               ..

;; fn0000000000423A70: 0000000000423A70
fn0000000000423A70 proc
	push	rbx
	sub	rsp,20h
	mov	rbx,[rdx-50h]
	mov	eax,ecx
	lea	rcx,[rdx-50h]
	cmp	eax,1h
	ja	423AB7h

l0000000000423A84:
	call	475AF0h
	lock
	sub	dword ptr [rbx-0A0h],1h
	jnz	423AB1h

l0000000000423A93:
	mov	rax,[rbx-88h]
	test	rax,rax
	jz	423AA4h

l0000000000423A9F:
	mov	rcx,rbx
	call	rax

l0000000000423AA4:
	mov	rcx,rbx
	add	rsp,20h
	pop	rbx
	jmp	475BA0h

l0000000000423AB1:
	add	rsp,20h
	pop	rbx
	ret

l0000000000423AB7:
	mov	rcx,[rbx-78h]
	call	423AD0h
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

;; fn0000000000423AD0: 0000000000423AD0
;;   Called from:
;;     000000000042393A (in fn0000000000423900)
;;     0000000000423ABB (in fn0000000000423A70)
;;     0000000000423ACF (in fn0000000000423A70)
;;     0000000000472D6C (in fn0000000000472D60)
;;     00000000004758FE (in fn00000000004758D0)
;;     00000000004759F0 (in fn0000000000475910)
fn0000000000423AD0 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	call	rcx
	call	41BD30h
	mov	rcx,rax
	call	475840h
	call	41BD30h
	mov	rsi,rdx
	mov	rbx,rax
	call	475A70h
	add	rsi,1h
	jz	423B03h

l0000000000423AFB:
	mov	rcx,rbx
	call	4115B0h

l0000000000423B03:
	mov	rcx,rbx
	call	475910h
	nop
	nop
	nop
	nop
	nop

;; fn0000000000423B10: 0000000000423B10
;;   Called from:
;;     0000000000423B0F (in fn0000000000423AD0)
;;     000000000046F3BC (in fn000000000046F3B0)
;;     000000000047593B (in fn0000000000475910)
fn0000000000423B10 proc
	sub	rsp,28h
	call	rcx
	call	472D60h
	nop
	nop
	nop
	nop
	nop

;; fn0000000000423B20: 0000000000423B20
;;   Called from:
;;     0000000000423B1F (in fn0000000000423B70)
fn0000000000423B20 proc
	jmp	475550h
0000000000423B25                90 90 90 90 90 90 90 90 90 90 90      ...........

;; fn0000000000423B30: 0000000000423B30
fn0000000000423B30 proc
	ret
0000000000423B31    90 90 90 90 90 90 90 90 90 90 90 90 90 90 90  ...............

;; fn0000000000423B40: 0000000000423B40
fn0000000000423B40 proc
	push	rbx
	sub	rsp,20h
	lea	rax,[00000000004958D0]                                 ; [rip+00071D84]
	mov	rbx,rcx
	mov	[rcx],rax
	call	46F350h
	mov	rcx,rbx
	add	rsp,20h
	pop	rbx
	jmp	475550h
0000000000423B64             90 90 90 90 90 90 90 90 90 90 90 90     ............

;; fn0000000000423B70: 0000000000423B70
;;   Called from:
;;     0000000000423BB2 (in fn0000000000423BA0)
;;     0000000000423BDA (in fn0000000000423BD0)
;;     0000000000423BF2 (in fn0000000000423BE0)
;;     0000000000423C1A (in fn0000000000423C10)
fn0000000000423B70 proc
	lea	rax,[00000000004958D0]                                 ; [rip+00071D59]
	mov	[rcx],rax
	jmp	46F350h
0000000000423B7F                                              90                .

;; fn0000000000423B80: 0000000000423B80
fn0000000000423B80 proc
	jmp	475550h
0000000000423B85                90 90 90 90 90 90 90 90 90 90 90      ...........

;; fn0000000000423B90: 0000000000423B90
fn0000000000423B90 proc
	ret
0000000000423B91    90 90 90 90 90 90 90 90 90 90 90 90 90 90 90  ...............

;; fn0000000000423BA0: 0000000000423BA0
fn0000000000423BA0 proc
	push	rbx
	sub	rsp,20h
	lea	rax,[0000000000495990]                                 ; [rip+00071DE4]
	mov	rbx,rcx
	mov	[rcx],rax
	call	423B70h
	mov	rcx,rbx
	add	rsp,20h
	pop	rbx
	jmp	475550h
0000000000423BC4             90 90 90 90 90 90 90 90 90 90 90 90     ............

;; fn0000000000423BD0: 0000000000423BD0
fn0000000000423BD0 proc
	lea	rax,[0000000000495990]                                 ; [rip+00071DB9]
	mov	[rcx],rax
	jmp	423B70h
0000000000423BDF                                              90                .

;; fn0000000000423BE0: 0000000000423BE0
fn0000000000423BE0 proc
	push	rbx
	sub	rsp,20h
	lea	rax,[0000000000495A10]                                 ; [rip+00071E24]
	mov	rbx,rcx
	mov	[rcx],rax
	call	423B70h
	mov	rcx,rbx
	add	rsp,20h
	pop	rbx
	jmp	475550h
0000000000423C04             90 90 90 90 90 90 90 90 90 90 90 90     ............

;; fn0000000000423C10: 0000000000423C10
fn0000000000423C10 proc
	lea	rax,[0000000000495A10]                                 ; [rip+00071DF9]
	mov	[rcx],rax
	jmp	423B70h
0000000000423C1F                                              90                .

;; fn0000000000423C20: 0000000000423C20
;;   Called from:
;;     000000000046F780 (in fn000000000046F760)
;;     000000000046F7C5 (in fn000000000046F7A0)
fn0000000000423C20 proc
	lea	r8,[00000000004762E0]                                  ; [rip+000526B9]
	lea	rcx,[000000000048E140]                                 ; [rip+0006A512]
	mov	edx,8h
	jmp	4117B0h
0000000000423C38                         90 90 90 90 90 90 90 90         ........

;; fn0000000000423C40: 0000000000423C40
;;   Called from:
;;     000000000046FE90 (in fn000000000046FE70)
;;     000000000046FED5 (in fn000000000046FEB0)
fn0000000000423C40 proc
	lea	r8,[00000000004762F0]                                  ; [rip+000526A9]
	lea	rcx,[000000000048E160]                                 ; [rip+0006A512]
	mov	edx,8h
	jmp	4117B0h
0000000000423C58                         90 90 90 90 90 90 90 90         ........

;; fn0000000000423C60: 0000000000423C60
fn0000000000423C60 proc
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,+0B8h
	mov	eax,3h
	cmp	ecx,1h
	mov	qword ptr [rsp+60h],+0h
	mov	dword ptr [rsp+5Ch],0h
	jz	423CA2h

l0000000000423C8E:
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

l0000000000423CA2:
	mov	rax,0B8B1AABCBCD4D500h
	mov	rbx,r9
	mov	esi,edx
	add	r8,rax
	cmp	r8,1h
	seta	byte ptr [rsp+43h]
	movzx	edi,byte ptr [rsp+43h]
	cmp	edx,6h
	setz	al
	cmp	dil,al
	jnc	423D62h

l0000000000423CD1:
	mov	r12,[r9-10h]
	mov	rax,[r9-18h]
	mov	edi,[r9-24h]
	test	r12,r12
	mov	[rsp+20h],rax
	jz	423D35h

l0000000000423CE7:
	and	esi,8h
	jnz	423D59h

l0000000000423CEC:
	test	edi,edi
	js	4240DAh

l0000000000423CF4:
	mov	rcx,[rsp+120h]
	mov	r8,rbx
	xor	edx,edx
	call	411270h
	mov	rcx,[rsp+120h]
	movsxd	r8,edi
	mov	edx,1h
	call	411270h
	mov	rcx,[rsp+120h]
	mov	rdx,r12
	call	4112C0h
	mov	eax,7h
	jmp	423C8Eh

l0000000000423D35:
	and	esi,8h
	jnz	423F37h

l0000000000423D3E:
	mov	rcx,rbx
	call	4758D0h
	nop	word ptr cs:[rax+rax+0h]

l0000000000423D50:
	cmp	eax,1h
	jz	423F37h

l0000000000423D59:
	test	edi,edi
	jns	423CF4h

l0000000000423D5D:
	call	46F3B0h

l0000000000423D62:
	mov	rcx,[rsp+120h]
	call	4112D0h
	test	rax,rax
	mov	[rsp+20h],rax
	jz	423F3Ch

l0000000000423D7D:
	lea	rax,[rsp+80h]
	mov	rdx,[rsp+20h]
	mov	rcx,[rsp+120h]
	mov	r8,rax
	mov	[rsp+28h],rax
	call	423720h
	movzx	ecx,byte ptr [rsp+0A8h]
	mov	rdx,[rsp+120h]
	mov	r15,rax
	call	423890h
	mov	rcx,[rsp+120h]
	lea	rdx,[rsp+5Ch]
	mov	[rsp+90h],rax
	call	4112B0h
	cmp	dword ptr [rsp+5Ch],1h
	mov	r12,rax
	sbb	r12,0h
	cmp	r15,[rsp+0A0h]
	jnc	423EA2h

l0000000000423DEB:
	lea	r14,[rsp+68h]
	lea	rdi,[rsp+70h]
	lea	rbp,[rsp+78h]

l0000000000423DFA:
	movzx	r13d,byte ptr [rsp+0A9h]
	xor	edx,edx
	mov	ecx,r13d
	call	423890h
	mov	r8,r15
	mov	r9,r14
	mov	ecx,r13d
	mov	rdx,rax
	call	423940h
	movzx	r13d,byte ptr [rsp+0A9h]
	mov	r15,rax
	xor	edx,edx
	mov	ecx,r13d
	call	423890h
	mov	r8,r15
	mov	r9,rdi
	mov	ecx,r13d
	mov	rdx,rax
	call	423940h
	movzx	r13d,byte ptr [rsp+0A9h]
	mov	r15,rax
	xor	edx,edx
	mov	ecx,r13d
	call	423890h
	mov	r9,rbp
	mov	r8,r15
	mov	ecx,r13d
	mov	rdx,rax
	call	423940h
	xor	r9d,r9d
	mov	r15,rax
	xor	ecx,ecx

l0000000000423E74:
	add	r15,1h
	movzx	eax,byte ptr [r15-1h]
	mov	rdx,rax
	and	edx,7Fh
	shl	rdx,cl
	add	ecx,7h
	or	r9,rdx
	test	al,al
	js	423E74h

l0000000000423E90:
	mov	rax,[rsp+80h]
	add	rax,[rsp+68h]
	cmp	r12,rax
	jnc	423F12h

l0000000000423EA2:
	xor	r12d,r12d
	mov	eax,1h

l0000000000423EAA:
	xor	edi,edi
	xor	ecx,ecx

l0000000000423EAE:
	test	sil,1h
	jz	423EF0h

l0000000000423EB4:
	cmp	eax,2h
	jz	423F3Ch

l0000000000423EBD:
	cmp	byte ptr [rsp+43h],0h
	mov	eax,6h
	jnz	423C8Eh

l0000000000423ECD:
	mov	rsi,[rsp+20h]
	mov	rdx,[rsp+60h]
	mov	[rbx-24h],edi
	mov	[rbx-20h],rcx
	mov	[rbx-10h],r12
	mov	[rbx-18h],rsi
	mov	[rbx-8h],rdx
	jmp	423C8Eh
0000000000423EEF                                              90                .

l0000000000423EF0:
	and	esi,8h
	jnz	423D50h

l0000000000423EF9:
	cmp	byte ptr [rsp+43h],0h
	jnz	423D50h

l0000000000423F04:
	cmp	eax,1h
	jnz	423CECh

l0000000000423F0D:
	jmp	423D3Eh

l0000000000423F12:
	add	rax,[rsp+70h]
	cmp	r12,rax
	jc	423F46h

l0000000000423F1C:
	cmp	r15,[rsp+0A0h]
	jc	423DFAh

l0000000000423F2A:
	jmp	423EA2h
0000000000423F2F                                              48                H
0000000000423F30 89 C1 E8 09 19 05 00                            .......        

l0000000000423F37:
	call	472D60h

l0000000000423F3C:
	mov	eax,8h
	jmp	423C8Eh

l0000000000423F46:
	mov	r12,[rsp+78h]
	test	r12,r12
	jz	423F3Ch

l0000000000423F50:
	add	r12,[rsp+88h]
	test	r9,r9
	jz	4240C7h

l0000000000423F61:
	mov	rax,[rsp+0A0h]
	test	r12,r12
	lea	rax,[rax+r9-1h]
	mov	rcx,rax
	jz	423F3Ch

l0000000000423F76:
	test	rax,rax
	jz	4240D0h

l0000000000423F7F:
	lea	rax,[0000000000492FC0]                                 ; [rip+0006F03A]
	mov	rdx,rax
	mov	eax,esi
	and	eax,8h
	mov	[rsp+44h],eax
	jnz	423FC1h

l0000000000423F94:
	cmp	byte ptr [rsp+43h],0h
	lea	rax,[0000000000492FF0]                                 ; [rip+0006F050]
	mov	rdx,rax
	jnz	423FC1h

l0000000000423FA5:
	test	byte ptr [rbx],1h
	lea	rax,[rbx+40h]
	jz	423FB2h

l0000000000423FAE:
	mov	rax,[rbx-50h]

l0000000000423FB2:
	mov	[rsp+60h],rax
	mov	rax,[rax-90h]
	mov	rdx,rax

l0000000000423FC1:
	lea	rax,[rsp+60h]
	mov	[rsp+38h],rbx
	mov	rbx,[rsp+28h]
	xor	r14d,r14d
	mov	r13,rcx
	mov	r15,rdx
	mov	[rsp+48h],rax
	mov	[rsp+30h],r12

l0000000000423FE3:
	mov	rdx,rdi
	mov	rcx,r13
	call	423590h
	mov	rdx,rbp
	mov	rcx,rax
	mov	r12,rax
	call	423590h
	mov	rdx,[rsp+70h]
	cmp	rdx,0h
	jz	42407Eh

l0000000000424007:
	jg	424086h

l0000000000424009:
	mov	eax,[rsp+44h]
	test	r15,r15
	setnz	cl
	test	eax,eax
	setz	al
	and	eax,ecx
	cmp	al,[rsp+43h]
	ja	42412Fh

l0000000000424024:
	not	rdx
	xor	r9d,r9d
	xor	ecx,ecx
	mov	rax,rdx
	add	rax,[rsp+98h]
	nop	word ptr [rax+rax+0h]

l0000000000424040:
	add	rax,1h
	movzx	r8d,byte ptr [rax-1h]
	mov	rdx,r8
	and	edx,7Fh
	shl	rdx,cl
	add	ecx,7h
	or	r9,rdx
	test	r8b,r8b
	js	424040h

l000000000042405D:
	test	r9,r9
	setz	al

l0000000000424063:
	test	al,al
	jnz	4240ACh

l0000000000424067:
	mov	rax,[rsp+78h]
	test	rax,rax
	jz	42414Ah

l0000000000424075:
	lea	r13,[r12+rax]
	jmp	423FE3h

l000000000042407E:
	mov	r14d,1h
	jmp	424067h

l0000000000424086:
	mov	rcx,rbx
	call	423630h
	test	rax,rax
	jz	4240ACh

l0000000000424093:
	test	r15,r15
	jz	424067h

l0000000000424098:
	mov	r8,[rsp+48h]
	mov	rdx,r15
	mov	rcx,rax
	call	4236C0h
	test	al,al
	jz	424067h

l00000000004240AC:
	mov	rcx,r13
	mov	r12,[rsp+30h]
	mov	rbx,[rsp+38h]
	mov	edi,[rsp+70h]
	mov	eax,3h
	jmp	423EAEh

l00000000004240C7:
	test	r12,r12
	jz	423F3Ch

l00000000004240D0:
	mov	eax,2h
	jmp	423EAAh

l00000000004240DA:
	mov	rdx,[rsp+20h]
	mov	rcx,[rsp+120h]
	lea	r8,[rsp+80h]
	call	423720h
	movzx	ecx,byte ptr [rsp+0A8h]
	mov	rdx,[rsp+120h]
	call	423890h
	movzx	ecx,byte ptr [rsp+0A8h]
	mov	rdx,[rsp+120h]
	mov	[rsp+90h],rax
	call	423890h
	mov	[rbx-10h],rax
	jmp	423CF4h

l000000000042412F:
	mov	r8,[rsp+60h]
	mov	r9,rdx
	mov	rcx,rbx
	mov	rdx,r15
	call	423810h
	xor	eax,1h
	jmp	424063h

l000000000042414A:
	test	r14b,r14b
	mov	rcx,r13
	mov	r12,[rsp+30h]
	mov	rbx,[rsp+38h]
	jz	423F3Ch

l0000000000424160:
	xor	edi,edi
	mov	eax,2h
	jmp	423EAEh
000000000042416C                                     90 90 90 90             ....

;; fn0000000000424170: 0000000000424170
;;   Called from:
;;     000000000046AD45 (in fn000000000046AD30)
;;     000000000046AEBF (in fn000000000046AE90)
fn0000000000424170 proc
	push	rbx
	sub	rsp,20h
	cmp	[0000000000477320],0h                                  ; [rip+000531A4]
	jz	424190h

l000000000042417E:
	lea	rax,[000000000048C050]                                 ; [rip+00067ECB]
	add	rsp,20h
	pop	rbx
	ret
000000000042418B                                  0F 1F 44 00 00            ..D..

l0000000000424190:
	lea	rcx,[0000000000477320]                                 ; [rip+00053189]
	call	475E80h
	test	eax,eax
	jz	42417Eh

l00000000004241A0:
	lea	rcx,[000000000048C050]                                 ; [rip+00067EA9]
	xor	edx,edx
	call	420360h
	lea	rcx,[0000000000477320]                                 ; [rip+0005316B]
	call	475F80h
	lea	rcx,[0000000000476350]                                 ; [rip+0005218F]
	call	410BF0h
	lea	rax,[000000000048C050]                                 ; [rip+00067E83]
	add	rsp,20h
	pop	rbx
	ret
00000000004241D3          48 8D 0D 46 31 05 00 48 89 C3 E8 FE 1B    H..F1..H.....
00000000004241E0 05 00 48 89 D9 E8 C6 D3 FE FF 90 90 90 90 90 90 ..H.............

;; fn00000000004241F0: 00000000004241F0
fn00000000004241F0 proc
	push	rbx
	sub	rsp,20h
	lea	rax,[0000000000495A90]                                 ; [rip+00071894]
	mov	rbx,rcx
	mov	[rcx],rax
	call	4620B0h
	mov	rcx,rbx
	add	rsp,20h
	pop	rbx
	jmp	475550h
0000000000424214             90 90 90 90 90 90 90 90 90 90 90 90     ............

;; fn0000000000424220: 0000000000424220
fn0000000000424220 proc
	lea	rax,[0000000000495A90]                                 ; [rip+00071869]
	mov	[rcx],rax
	jmp	4620B0h
000000000042422F                                              90                .

;; fn0000000000424230: 0000000000424230
fn0000000000424230 proc
	jmp	475550h
0000000000424235                90 90 90 90 90 90 90 90 90 90 90      ...........

;; fn0000000000424240: 0000000000424240
fn0000000000424240 proc
	ret
0000000000424241    90 90 90 90 90 90 90 90 90 90 90 90 90 90 90  ...............

;; fn0000000000424250: 0000000000424250
fn0000000000424250 proc
	jmp	475550h
0000000000424255                90 90 90 90 90 90 90 90 90 90 90      ...........

;; fn0000000000424260: 0000000000424260
fn0000000000424260 proc
	ret
0000000000424261    90 90 90 90 90 90 90 90 90 90 90 90 90 90 90  ...............

;; fn0000000000424270: 0000000000424270
;;   Called from:
;;     0000000000454D0F (in fn0000000000454D00)
;;     0000000000454F2E (in fn0000000000454F20)
fn0000000000424270 proc
	and	ecx,3Dh
	cmp	ecx,3Ch
	ja	424350h

l000000000042427C:
	lea	rax,[000000000048DD84]                                 ; [rip+00069B01]
	movsxd	rdx,dword ptr [rax+rcx*4]
	add	rax,rdx
	jmp	rax
000000000042428C                                     0F 1F 40 00             ..@.

l0000000000424290:
	lea	rax,[000000000048DD62]                                 ; [rip+00069ACB]
	ret
0000000000424298                         0F 1F 84 00 00 00 00 00         ........

l00000000004242A0:
	lea	rax,[000000000048DD73]                                 ; [rip+00069ACC]
	ret
00000000004242A8                         0F 1F 84 00 00 00 00 00         ........

l00000000004242B0:
	lea	rax,[000000000048DD76]                                 ; [rip+00069ABF]
	ret
00000000004242B8                         0F 1F 84 00 00 00 00 00         ........

l00000000004242C0:
	lea	rax,[000000000048DD70]                                 ; [rip+00069AA9]
	ret
00000000004242C8                         0F 1F 84 00 00 00 00 00         ........

l00000000004242D0:
	lea	rax,[000000000048DD64]                                 ; [rip+00069A8D]
	ret
00000000004242D8                         0F 1F 84 00 00 00 00 00         ........

l00000000004242E0:
	lea	rax,[000000000048DD60]                                 ; [rip+00069A79]
	ret
00000000004242E8                         0F 1F 84 00 00 00 00 00         ........

l00000000004242F0:
	lea	rax,[000000000048DD79]                                 ; [rip+00069A82]
	ret
00000000004242F8                         0F 1F 84 00 00 00 00 00         ........

l0000000000424300:
	lea	rax,[000000000048DD68]                                 ; [rip+00069A61]
	ret
0000000000424308                         0F 1F 84 00 00 00 00 00         ........

l0000000000424310:
	lea	rax,[000000000048DD6D]                                 ; [rip+00069A56]
	ret
0000000000424318                         0F 1F 84 00 00 00 00 00         ........

l0000000000424320:
	lea	rax,[000000000048DD6A]                                 ; [rip+00069A43]
	ret
0000000000424328                         0F 1F 84 00 00 00 00 00         ........

l0000000000424330:
	lea	rax,[000000000048DD7C]                                 ; [rip+00069A45]
	ret
0000000000424338                         0F 1F 84 00 00 00 00 00         ........

l0000000000424340:
	lea	rax,[000000000048DD80]                                 ; [rip+00069A39]
	ret
0000000000424348                         0F 1F 84 00 00 00 00 00         ........

l0000000000424350:
	xor	eax,eax
	ret
0000000000424353          90 90 90 90 90 90 90 90 90 90 90 90 90    .............

;; fn0000000000424360: 0000000000424360
fn0000000000424360 proc
	lea	rax,[000000000048AA00]                                 ; [rip+00066699]
	mov	[000000000048AA00],-1h                                 ; [rip+0006668E]
	mov	[000000000048AA50],rax                                 ; [rip+000666D7]
	ret
000000000042437A                               90 90 90 90 90 90           ......

;; fn0000000000424380: 0000000000424380
fn0000000000424380 proc
	lea	rax,[00000000004897A0]                                 ; [rip+00065419]
	mov	[00000000004897A0],-3h                                 ; [rip+0006540E]
	mov	[000000000048AA60],rax                                 ; [rip+000666C7]
	ret
000000000042439A                               90 90 90 90 90 90           ......

;; fn00000000004243A0: 00000000004243A0
;;   Called from:
;;     0000000000454E71 (in fn0000000000454E50)
;;     0000000000454FD0 (in fn0000000000454FA0)
;;     0000000000454FFC (in fn0000000000454FA0)
fn00000000004243A0 proc
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,20h
	mov	r12,[00000000004AF79C]                                 ; [rip+0008B3EB]
	mov	edi,ecx
	mov	rsi,rdx
	mov	rbp,r8
	mov	rbx,r8
	nop	dword ptr [rax+0h]

l00000000004243C0:
	mov	r8d,ebx
	mov	rdx,rsi
	mov	ecx,edi
	call	41BDD0h
	cdqe
	cmp	rax,0FFh
	jz	4243E0h

l00000000004243D5:
	sub	rbx,rax
	jz	4243E8h

l00000000004243DA:
	add	rsi,rax
	jmp	4243C0h
00000000004243DF                                              90                .

l00000000004243E0:
	call	r12
	cmp	dword ptr [rax],4h
	jz	4243C0h

l00000000004243E8:
	mov	rax,rbp
	sub	rax,rbx
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
00000000004243F9                            90 90 90 90 90 90 90          .......

;; fn0000000000424400: 0000000000424400
;;   Called from:
;;     00000000004020DA (in fn0000000000401530)
;;     0000000000402165 (in fn0000000000401530)
;;     0000000000402308 (in fn0000000000401530)
fn0000000000424400 proc
	push	rbp
	mov	rbp,rsp
	mov	[rbp+10h],rcx
	mov	[rbp+18h],rdx
	mov	rax,[rbp+10h]
	mov	edx,[rax]
	mov	rax,[rbp+18h]
	mov	eax,[rax]
	cmp	edx,eax
	jnz	424435h

l000000000042441C:
	mov	rax,[rbp+10h]
	mov	edx,[rax+4h]
	mov	rax,[rbp+18h]
	mov	eax,[rax+4h]
	cmp	edx,eax
	jnz	424435h

l000000000042442E:
	mov	eax,1h
	jmp	42443Ah

l0000000000424435:
	mov	eax,0h

l000000000042443A:
	pop	rbp
	ret
000000000042443C                                     90 90 90 90             ....

;; fn0000000000424440: 0000000000424440
;;   Called from:
;;     0000000000402364 (in fn0000000000401530)
fn0000000000424440 proc
	push	rbp
	mov	rbp,rsp
	sub	rsp,20h
	mov	[rbp+10h],rcx
	mov	rax,[rbp+10h]
	lea	rdx,[rax+24h]
	mov	rax,[rbp+10h]
	add	rax,8h
	mov	rcx,rax
	call	46B620h
	mov	rax,[rbp+10h]
	mov	eax,[rax+20h]
	lea	edx,[rax+1h]
	mov	rax,[rbp+10h]
	mov	[rax+20h],edx
	add	rsp,20h
	pop	rbp
	ret
000000000042447B                                  90 90 90 90 90            .....

;; fn0000000000424480: 0000000000424480
;;   Called from:
;;     000000000040175F (in fn0000000000401530)
fn0000000000424480 proc
	push	rbp
	mov	rbp,rsp
	sub	rsp,30h
	mov	[rbp+10h],rcx
	mov	[rbp+18h],rdx
	mov	[rbp+20h],r8d
	mov	ecx,[rbp+18h]
	mov	edx,[rbp+1Ch]
	mov	rax,[rbp+10h]
	mov	[rax],ecx
	mov	rax,[rbp+10h]
	mov	[rax+4h],edx
	mov	rax,[rbp+10h]
	mov	edx,[rbp+20h]
	mov	[rax+20h],edx
	mov	eax,[rbp+20h]
	cdqe
	mov	rdx,[rbp+10h]
	lea	rcx,[rdx+8h]
	mov	rdx,rax
	call	46B4B0h
	mov	eax,[rbp+20h]
	cdqe
	mov	rdx,[rbp+10h]
	lea	rcx,[rdx+38h]
	mov	rdx,rax
	call	46B990h
	mov	dword ptr [rbp-4h],1h
	jmp	424523h

l00000000004244E4:
	mov	eax,[rbp+18h]
	sub	eax,[rbp-4h]
	mov	[rbp-10h],eax
	mov	eax,[rbp+1Ch]
	mov	[rbp-0Ch],eax
	mov	rax,[rbp+10h]
	lea	rcx,[rax+8h]
	lea	rax,[rbp-10h]
	mov	rdx,rax
	call	46B5F0h
	mov	rax,[rbp+10h]
	lea	rdx,[rax+2Dh]
	mov	rax,[rbp+10h]
	add	rax,38h
	mov	rcx,rax
	call	46BAC0h
	add	dword ptr [rbp-4h],1h

l0000000000424523:
	mov	eax,[rbp-4h]
	cmp	eax,[rbp+20h]
	jle	4244E4h

l000000000042452B:
	mov	eax,[rbp+18h]
	sub	eax,[rbp+20h]
	lea	ecx,[rax-1h]
	mov	edx,[rbp+1Ch]
	mov	rax,[rbp+10h]
	mov	[rax+24h],ecx
	mov	rax,[rbp+10h]
	mov	[rax+28h],edx
	add	rsp,30h
	pop	rbp
	ret
000000000042454B                                  90 90 90 90 90            .....

;; fn0000000000424550: 0000000000424550
;;   Called from:
;;     00000000004020C6 (in fn0000000000401530)
fn0000000000424550 proc
	push	rbp
	push	rbx
	sub	rsp,38h
	lea	rbp,[rsp+80h]
	mov	[rbp-30h],rcx
	mov	[rbp-28h],rdx
	mov	rax,[rbp-30h]
	mov	ebx,[rax+24h]
	mov	rax,[rbp-30h]
	mov	eax,[rax+20h]
	sub	eax,1h
	cdqe
	mov	rdx,[rbp-30h]
	lea	rcx,[rdx+8h]
	mov	rdx,rax
	call	46B700h
	mov	eax,[rax]
	cmp	ebx,eax
	setz	al
	test	al,al
	jz	4245A5h

l0000000000424594:
	mov	rax,[rbp-30h]
	movzx	edx,byte ptr [rax+30h]
	mov	rax,[rbp-30h]
	mov	[rax+50h],dl
	jmp	4245E3h

l00000000004245A5:
	mov	rax,[rbp-30h]
	mov	ebx,[rax+28h]
	mov	rax,[rbp-30h]
	mov	eax,[rax+20h]
	sub	eax,1h
	cdqe
	mov	rdx,[rbp-30h]
	lea	rcx,[rdx+8h]
	mov	rdx,rax
	call	46B700h
	mov	eax,[rax+4h]
	cmp	ebx,eax
	setz	al
	test	al,al
	jz	4245E3h

l00000000004245D4:
	mov	rax,[rbp-30h]
	movzx	edx,byte ptr [rax+2Fh]
	mov	rax,[rbp-30h]
	mov	[rax+50h],dl

l00000000004245E3:
	mov	rax,[rbp-30h]
	mov	eax,[rax+20h]
	sub	eax,1h
	cdqe
	mov	rdx,[rbp-30h]
	lea	rcx,[rdx+8h]
	mov	rdx,rax
	call	46B700h
	mov	rdx,rax
	mov	rax,[rbp-30h]
	mov	rdx,[rdx]
	mov	[rax+24h],rdx
	mov	rax,[rbp-30h]
	mov	eax,[rax+20h]
	mov	[rbp-54h],eax
	jmp	424712h

l000000000042461C:
	mov	eax,[rbp-54h]
	cdqe
	mov	rdx,[rbp-30h]
	lea	rcx,[rdx+8h]
	mov	rdx,rax
	call	46B700h
	mov	ebx,[rax]
	mov	eax,[rbp-54h]
	sub	eax,1h
	cdqe
	mov	rdx,[rbp-30h]
	lea	rcx,[rdx+8h]
	mov	rdx,rax
	call	46B700h
	mov	eax,[rax]
	cmp	ebx,eax
	setz	al
	test	al,al
	jz	42467Ah

l0000000000424656:
	mov	eax,[rbp-54h]
	cdqe
	mov	rdx,[rbp-30h]
	lea	rcx,[rdx+38h]
	mov	rdx,rax
	call	46BBA0h
	mov	rdx,rax
	mov	rax,[rbp-30h]
	movzx	eax,byte ptr [rax+2Eh]
	mov	[rdx],al
	jmp	4246D8h

l000000000042467A:
	mov	eax,[rbp-54h]
	cdqe
	mov	rdx,[rbp-30h]
	lea	rcx,[rdx+8h]
	mov	rdx,rax
	call	46B700h
	mov	ebx,[rax+4h]
	mov	eax,[rbp-54h]
	sub	eax,1h
	cdqe
	mov	rdx,[rbp-30h]
	lea	rcx,[rdx+8h]
	mov	rdx,rax
	call	46B700h
	mov	eax,[rax+4h]
	cmp	ebx,eax
	setz	al
	test	al,al
	jz	4246D8h

l00000000004246B6:
	mov	eax,[rbp-54h]
	cdqe
	mov	rdx,[rbp-30h]
	lea	rcx,[rdx+38h]
	mov	rdx,rax
	call	46BBA0h
	mov	rdx,rax
	mov	rax,[rbp-30h]
	movzx	eax,byte ptr [rax+2Dh]
	mov	[rdx],al

l00000000004246D8:
	mov	eax,[rbp-54h]
	cdqe
	mov	rdx,[rbp-30h]
	lea	rcx,[rdx+8h]
	mov	rdx,rax
	call	46B700h
	mov	rbx,rax
	mov	eax,[rbp-54h]
	sub	eax,1h
	cdqe
	mov	rdx,[rbp-30h]
	lea	rcx,[rdx+8h]
	mov	rdx,rax
	call	46B700h
	mov	rax,[rax]
	mov	[rbx],rax
	sub	dword ptr [rbp-54h],1h

l0000000000424712:
	cmp	dword ptr [rbp-54h],0h
	jg	42461Ch

l000000000042471C:
	mov	rax,[rbp-30h]
	add	rax,8h
	mov	edx,0h
	mov	rcx,rax
	call	46B700h
	mov	edx,[rax]
	mov	rax,[rbp-30h]
	mov	eax,[rax]
	cmp	edx,eax
	setz	al
	test	al,al
	jz	424766h

l0000000000424742:
	mov	rax,[rbp-30h]
	add	rax,38h
	mov	edx,0h
	mov	rcx,rax
	call	46BBA0h
	mov	rdx,rax
	mov	rax,[rbp-30h]
	movzx	eax,byte ptr [rax+2Eh]
	mov	[rdx],al
	jmp	4247B0h

l0000000000424766:
	mov	rax,[rbp-30h]
	add	rax,8h
	mov	edx,0h
	mov	rcx,rax
	call	46B700h
	mov	edx,[rax+4h]
	mov	rax,[rbp-30h]
	mov	eax,[rax+4h]
	cmp	edx,eax
	setz	al
	test	al,al
	jz	4247B0h

l000000000042478E:
	mov	rax,[rbp-30h]
	add	rax,38h
	mov	edx,0h
	mov	rcx,rax
	call	46BBA0h
	mov	rdx,rax
	mov	rax,[rbp-30h]
	movzx	eax,byte ptr [rax+2Dh]
	mov	[rdx],al

l00000000004247B0:
	mov	rax,[rbp-30h]
	add	rax,8h
	mov	edx,0h
	mov	rcx,rax
	call	46B700h
	mov	rdx,rax
	mov	rax,[rbp-30h]
	mov	rax,[rax]
	mov	[rdx],rax
	mov	rax,[rbp-30h]
	mov	rdx,[rbp-28h]
	mov	[rax],rdx
	add	rsp,38h
	pop	rbx
	pop	rbp
	ret
00000000004247E4             90 90 90 90 90 90 90 90 90 90 90 90     ............

;; fn00000000004247F0: 00000000004247F0
;;   Called from:
;;     0000000000402E0E (in fn0000000000402C4E)
fn00000000004247F0 proc
	push	rbp
	mov	rbp,rsp
	sub	rsp,30h
	mov	[rbp+10h],rcx
	mov	[rbp+18h],rdx
	mov	[rbp+20h],r8d
	mov	[rbp+28h],r9
	mov	rax,[rbp+18h]
	mov	ecx,[rax]
	mov	rax,[rbp+18h]
	mov	edx,[rax+4h]
	mov	rax,[rbp+10h]
	mov	[rax],ecx
	mov	rax,[rbp+10h]
	mov	[rax+4h],edx
	mov	eax,[rbp+20h]
	cdqe
	mov	rdx,[rbp+10h]
	lea	rcx,[rdx+8h]
	mov	rdx,rax
	call	46B4B0h
	mov	eax,[rbp+20h]
	cdqe
	mov	rdx,[rbp+10h]
	lea	rcx,[rdx+38h]
	mov	rdx,rax
	call	46B990h
	mov	dword ptr [rbp-4h],0h
	jmp	4248B4h

l0000000000424855:
	mov	eax,[rbp-4h]
	movsxd	rdx,eax
	mov	rax,[rbp+28h]
	mov	rcx,rax
	call	42C0B0h
	mov	eax,[rax]
	mov	[rbp-10h],eax
	mov	eax,[rbp-4h]
	movsxd	rdx,eax
	mov	rax,[rbp+28h]
	mov	rcx,rax
	call	42C0B0h
	mov	eax,[rax+4h]
	mov	[rbp-0Ch],eax
	mov	rax,[rbp+10h]
	lea	rcx,[rax+8h]
	lea	rax,[rbp-10h]
	mov	rdx,rax
	call	46B5F0h
	mov	rax,[rbp+10h]
	lea	rdx,[rax+2Dh]
	mov	rax,[rbp+10h]
	add	rax,38h
	mov	rcx,rax
	call	46BAC0h
	add	dword ptr [rbp-4h],1h

l00000000004248B4:
	mov	eax,[rbp-4h]
	cmp	eax,[rbp+20h]
	jl	424855h

l00000000004248BC:
	mov	rax,[rbp+10h]
	mov	edx,[rbp+20h]
	mov	[rax+20h],edx
	mov	rax,[rbp+30h]
	mov	ecx,[rax]
	mov	rax,[rbp+30h]
	mov	edx,[rax+4h]
	mov	rax,[rbp+10h]
	mov	[rax+24h],ecx
	mov	rax,[rbp+10h]
	mov	[rax+28h],edx
	add	rsp,30h
	pop	rbp
	ret
00000000004248E7                      90 90 90 90 90 90 90 90 90        .........

;; fn00000000004248F0: 00000000004248F0
;;   Called from:
;;     00000000004016A0 (in fn0000000000401530)
fn00000000004248F0 proc
	push	rbp
	mov	rbp,rsp
	sub	rsp,20h
	mov	[rbp+10h],rcx
	mov	rax,[rbp+10h]
	add	rax,8h
	mov	rcx,rax
	call	46B690h
	mov	rax,[rbp+10h]
	add	rax,8h
	mov	rcx,rax
	call	42C020h
	mov	edx,eax
	mov	rax,[rbp+10h]
	mov	[rax+20h],edx
	mov	rax,[rbp+10h]
	mov	byte ptr [rax+2Ch],4Fh
	mov	rax,[rbp+10h]
	mov	byte ptr [rax+2Dh],2Ah
	mov	rax,[rbp+10h]
	mov	byte ptr [rax+2Eh],2Ah
	mov	rax,[rbp+10h]
	mov	byte ptr [rax+2Fh],5Eh
	mov	rax,[rbp+10h]
	mov	byte ptr [rax+30h],5Eh
	mov	rax,[rbp+10h]
	add	rax,38h
	mov	rcx,rax
	call	46BB30h
	mov	rax,[rbp+10h]
	movzx	edx,byte ptr [rax+2Fh]
	mov	rax,[rbp+10h]
	mov	[rax+50h],dl
	add	rsp,20h
	pop	rbp
	ret
0000000000424972       90 90 90 90 90 90 90 90 90 90 90 90 90 90   ..............

;; fn0000000000424980: 0000000000424980
;;   Called from:
;;     00000000004024D0 (in fn0000000000401530)
fn0000000000424980 proc
	push	rbp
	mov	rbp,rsp
	sub	rsp,20h
	mov	[rbp+10h],rcx
	mov	rax,[rbp+10h]
	add	rax,38h
	mov	rcx,rax
	call	46BB50h
	mov	rax,[rbp+10h]
	add	rax,8h
	mov	rcx,rax
	call	46B6B0h
	nop
	add	rsp,20h
	pop	rbp
	ret
00000000004249B3          90 90 90 90 90 90 90 90 90 90 90 90 90    .............

;; fn00000000004249C0: 00000000004249C0
;;   Called from:
;;     0000000000464D16 (in fn0000000000464CF0)
fn00000000004249C0 proc
	push	rbp
	mov	rbp,rsp
	sub	rsp,20h
	mov	[rbp+10h],rcx
	mov	[rbp+18h],rdx
	mov	[rbp+20h],r8
	mov	rax,[rbp+18h]
	mov	rcx,rax
	call	475550h
	nop
	add	rsp,20h
	pop	rbp
	ret
00000000004249E7                      90 90 90 90 90 90 90 90 90        .........

;; fn00000000004249F0: 00000000004249F0
;;   Called from:
;;     0000000000464CDB (in fn0000000000464CC0)
fn00000000004249F0 proc
	push	rbp
	mov	rbp,rsp
	mov	[rbp+10h],rcx
	mov	[rbp+18h],rdx
	pop	rbp
	ret
00000000004249FE                                           90 90               ..

;; fn0000000000424A00: 0000000000424A00
;;   Called from:
;;     0000000000464E21 (in fn0000000000464E00)
fn0000000000424A00 proc
	push	rbp
	mov	rbp,rsp
	sub	rsp,20h
	mov	[rbp+10h],rcx
	mov	[rbp+18h],rdx
	mov	[rbp+20h],r8
	mov	rcx,[rbp+10h]
	call	427270h
	cmp	rax,[rbp+18h]
	setc	al
	test	al,al
	jz	424A2Dh

l0000000000424A28:
	call	4708B0h

l0000000000424A2D:
	mov	rax,[rbp+18h]
	shl	rax,3h
	mov	rcx,rax
	call	475590h
	add	rsp,20h
	pop	rbp
	ret
0000000000424A43          90 90 90 90 90 90 90 90 90 90 90 90 90    .............

;; fn0000000000424A50: 0000000000424A50
;;   Called from:
;;     0000000000464D81 (in fn0000000000464D50)
fn0000000000424A50 proc
	push	rbp
	push	rbx
	sub	rsp,28h
	lea	rbp,[rsp+80h]
	mov	[rbp-40h],rcx
	mov	[rbp-38h],rdx
	mov	[rbp-30h],r8
	mov	rax,[rbp-30h]
	mov	rcx,rax
	call	471B70h
	mov	rbx,rax
	mov	rax,[rbp-38h]
	mov	rdx,rax
	mov	ecx,8h
	call	475600h
	test	rax,rax
	jz	424A95h

l0000000000424A8F:
	mov	rdx,[rbx]
	mov	[rax],rdx

l0000000000424A95:
	add	rsp,28h
	pop	rbx
	pop	rbp
	ret
0000000000424A9C                                     90 90 90 90             ....

;; fn0000000000424AA0: 0000000000424AA0
;;   Called from:
;;     0000000000464DC1 (in fn0000000000464D90)
fn0000000000424AA0 proc
	push	rbp
	push	rbx
	sub	rsp,28h
	lea	rbp,[rsp+80h]
	mov	[rbp-40h],rcx
	mov	[rbp-38h],rdx
	mov	[rbp-30h],r8
	mov	rax,[rbp-30h]
	mov	rcx,rax
	call	471B60h
	mov	rbx,rax
	mov	rax,[rbp-38h]
	mov	rdx,rax
	mov	ecx,8h
	call	475600h
	test	rax,rax
	jz	424AE5h

l0000000000424ADF:
	mov	rdx,[rbx]
	mov	[rax],rdx

l0000000000424AE5:
	add	rsp,28h
	pop	rbx
	pop	rbp
	ret
0000000000424AEC                                     90 90 90 90             ....

;; fn0000000000424AF0: 0000000000424AF0
;;   Called from:
;;     0000000000448D40 (in fn0000000000448D30)
fn0000000000424AF0 proc
	push	rbp
	mov	rbp,rsp
	mov	[rbp+10h],rcx
	pop	rbp
	ret
0000000000424AFA                               90 90 90 90 90 90           ......

;; fn0000000000424B00: 0000000000424B00
;;   Called from:
;;     0000000000448D60 (in fn0000000000448D50)
fn0000000000424B00 proc
	push	rbp
	mov	rbp,rsp
	mov	[rbp+10h],rcx
	pop	rbp
	ret
0000000000424B0A                               90 90 90 90 90 90           ......

;; fn0000000000424B10: 0000000000424B10
;;   Called from:
;;     0000000000464F26 (in fn0000000000464F00)
fn0000000000424B10 proc
	push	rbp
	mov	rbp,rsp
	sub	rsp,20h
	mov	[rbp+10h],rcx
	mov	[rbp+18h],rdx
	mov	[rbp+20h],r8
	mov	rax,[rbp+18h]
	mov	rcx,rax
	call	475550h
	nop
	add	rsp,20h
	pop	rbp
	ret
0000000000424B37                      90 90 90 90 90 90 90 90 90        .........

;; fn0000000000424B40: 0000000000424B40
;;   Called from:
;;     0000000000464EEB (in fn0000000000464ED0)
fn0000000000424B40 proc
	push	rbp
	mov	rbp,rsp
	mov	[rbp+10h],rcx
	mov	[rbp+18h],rdx
	pop	rbp
	ret
0000000000424B4E                                           90 90               ..

;; fn0000000000424B50: 0000000000424B50
;;   Called from:
;;     0000000000464FF1 (in fn0000000000464FD0)
fn0000000000424B50 proc
	push	rbp
	mov	rbp,rsp
	sub	rsp,20h
	mov	[rbp+10h],rcx
	mov	[rbp+18h],rdx
	mov	[rbp+20h],r8
	mov	rcx,[rbp+10h]
	call	427290h
	cmp	rax,[rbp+18h]
	setc	al
	test	al,al
	jz	424B7Dh

l0000000000424B78:
	call	4708B0h

l0000000000424B7D:
	mov	rax,[rbp+18h]
	mov	rcx,rax
	call	475590h
	add	rsp,20h
	pop	rbp
	ret
0000000000424B8F                                              90                .

;; fn0000000000424B90: 0000000000424B90
;;   Called from:
;;     0000000000464F91 (in fn0000000000464F60)
fn0000000000424B90 proc
	push	rbp
	push	rbx
	sub	rsp,28h
	lea	rbp,[rsp+80h]
	mov	[rbp-40h],rcx
	mov	[rbp-38h],rdx
	mov	[rbp-30h],r8
	mov	rax,[rbp-30h]
	mov	rcx,rax
	call	471B80h
	movzx	ebx,byte ptr [rax]
	mov	rax,[rbp-38h]
	mov	rdx,rax
	mov	ecx,1h
	call	475600h
	test	rax,rax
	jz	424BD1h

l0000000000424BCF:
	mov	[rax],bl

l0000000000424BD1:
	add	rsp,28h
	pop	rbx
	pop	rbp
	ret
0000000000424BD8                         90 90 90 90 90 90 90 90         ........

;; fn0000000000424BE0: 0000000000424BE0
fn0000000000424BE0 proc
	add	rcx,48h
	jmp	454CC0h
0000000000424BE9                            90 90 90 90 90 90 90          .......

;; fn0000000000424BF0: 0000000000424BF0
fn0000000000424BF0 proc
	add	rcx,48h
	jmp	454CF0h
0000000000424BF9                            90 90 90 90 90 90 90          .......

;; fn0000000000424C00: 0000000000424C00
;;   Called from:
;;     000000000046C6CD (in fn000000000046C5F0)
;;     000000000046C6EA (in fn000000000046C5F0)
;;     000000000046C708 (in fn000000000046C5F0)
fn0000000000424C00 proc
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,20h
	mov	rbx,rcx
	mov	rbp,rdx
	mov	edi,r8d
	mov	r12,r9
	lea	rsi,[rbx+48h]
	call	456F80h
	lea	rax,[0000000000495C10]                                 ; [rip+00070FEA]
	mov	r8d,edi
	mov	rdx,rbp
	mov	rcx,rsi
	mov	[rbx],rax
	call	454EC0h
	mov	rcx,rsi
	call	42AA50h
	test	al,al
	jnz	424C50h

l0000000000424C43:
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
0000000000424C4E                                           66 90               f.

l0000000000424C50:
	mov	[rbx+58h],edi
	mov	[rbx+70h],r12
	mov	rcx,rbx
	call	455930h
	mov	rax,[rbx+68h]
	mov	byte ptr [rbx+79h],0h
	mov	byte ptr [rbx+7Ah],0h
	mov	qword ptr [rbx+28h],+0h
	mov	qword ptr [rbx+20h],+0h
	mov	qword ptr [rbx+30h],+0h
	mov	[rbx+8h],rax
	mov	[rbx+10h],rax
	mov	[rbx+18h],rax
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
0000000000424C9A                               48 89 C6 48 89 D9           H..H..
0000000000424CA0 E8 CB 24 03 00 48 89 F1 E8 03 C9 FE FF 90 90 90 ..$..H..........

;; fn0000000000424CB0: 0000000000424CB0
fn0000000000424CB0 proc
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,20h
	mov	rbx,rcx
	mov	r12,r9
	mov	ebp,edx
	mov	edi,r8d
	lea	rsi,[rbx+48h]
	call	456F80h
	lea	rax,[0000000000495C10]                                 ; [rip+00070F3B]
	mov	r8d,edi
	mov	edx,ebp
	mov	rcx,rsi
	mov	[rbx],rax
	call	454F20h
	mov	rcx,rsi
	call	42AA50h
	test	al,al
	jnz	424D00h

l0000000000424CF1:
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
0000000000424CFC                                     0F 1F 40 00             ..@.

l0000000000424D00:
	mov	[rbx+58h],edi
	mov	[rbx+70h],r12
	mov	rcx,rbx
	call	455930h
	mov	rax,[rbx+68h]
	mov	byte ptr [rbx+79h],0h
	mov	byte ptr [rbx+7Ah],0h
	mov	qword ptr [rbx+28h],+0h
	mov	qword ptr [rbx+20h],+0h
	mov	qword ptr [rbx+30h],+0h
	mov	[rbx+8h],rax
	mov	[rbx+10h],rax
	mov	[rbx+18h],rax
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
0000000000424D4A                               48 89 C6 48 89 D9           H..H..
0000000000424D50 E8 1B 24 03 00 48 89 F1 E8 53 C8 FE FF 90 90 90 ..$..H...S......

;; fn0000000000424D60: 0000000000424D60
fn0000000000424D60 proc
	push	rbx
	sub	rsp,20h
	mov	rbx,rcx
	call	456F80h
	lea	rax,[0000000000495C10]                                 ; [rip+00070E9C]
	mov	[rbx],rax
	add	rsp,20h
	pop	rbx
	ret
0000000000424D7D                                        90 90 90              ...

;; fn0000000000424D80: 0000000000424D80
fn0000000000424D80 proc
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,20h
	mov	rbx,rcx
	mov	rbp,rdx
	mov	edi,r8d
	mov	r12,r9
	lea	rsi,[rbx+48h]
	call	456F80h
	lea	rax,[0000000000495C10]                                 ; [rip+00070E6A]
	mov	r8d,edi
	mov	rdx,rbp
	mov	rcx,rsi
	mov	[rbx],rax
	call	454EC0h
	mov	rcx,rsi
	call	42AA50h
	test	al,al
	jnz	424DD0h

l0000000000424DC3:
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
0000000000424DCE                                           66 90               f.

l0000000000424DD0:
	mov	[rbx+58h],edi
	mov	[rbx+70h],r12
	mov	rcx,rbx
	call	455930h
	mov	rax,[rbx+68h]
	mov	byte ptr [rbx+79h],0h
	mov	byte ptr [rbx+7Ah],0h
	mov	qword ptr [rbx+28h],+0h
	mov	qword ptr [rbx+20h],+0h
	mov	qword ptr [rbx+30h],+0h
	mov	[rbx+8h],rax
	mov	[rbx+10h],rax
	mov	[rbx+18h],rax
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
0000000000424E1A                               48 89 C6 48 89 D9           H..H..
0000000000424E20 E8 4B 23 03 00 48 89 F1 E8 83 C7 FE FF 90 90 90 .K#..H..........

;; fn0000000000424E30: 0000000000424E30
fn0000000000424E30 proc
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,20h
	mov	rbx,rcx
	mov	r12,r9
	mov	ebp,edx
	mov	edi,r8d
	lea	rsi,[rbx+48h]
	call	456F80h
	lea	rax,[0000000000495C10]                                 ; [rip+00070DBB]
	mov	r8d,edi
	mov	edx,ebp
	mov	rcx,rsi
	mov	[rbx],rax
	call	454F20h
	mov	rcx,rsi
	call	42AA50h
	test	al,al
	jnz	424E80h

l0000000000424E71:
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
0000000000424E7C                                     0F 1F 40 00             ..@.

l0000000000424E80:
	mov	[rbx+58h],edi
	mov	[rbx+70h],r12
	mov	rcx,rbx
	call	455930h
	mov	rax,[rbx+68h]
	mov	byte ptr [rbx+79h],0h
	mov	byte ptr [rbx+7Ah],0h
	mov	qword ptr [rbx+28h],+0h
	mov	qword ptr [rbx+20h],+0h
	mov	qword ptr [rbx+30h],+0h
	mov	[rbx+8h],rax
	mov	[rbx+10h],rax
	mov	[rbx+18h],rax
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
0000000000424ECA                               48 89 C6 48 89 D9           H..H..
0000000000424ED0 E8 9B 22 03 00 48 89 F1 E8 D3 C6 FE FF 90 90 90 .."..H..........

;; fn0000000000424EE0: 0000000000424EE0
fn0000000000424EE0 proc
	push	rbx
	sub	rsp,20h
	mov	rbx,rcx
	call	456F80h
	lea	rax,[0000000000495C10]                                 ; [rip+00070D1C]
	mov	[rbx],rax
	add	rsp,20h
	pop	rbx
	ret
0000000000424EFD                                        90 90 90              ...

;; fn0000000000424F00: 0000000000424F00
fn0000000000424F00 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	mov	rax,[0000000000491BF0]                                 ; [rip+0006CCE3]
	mov	rbx,rcx
	add	rax,10h
	mov	[rcx],rax
	call	455AB0h
	lea	rcx,[rbx+48h]
	call	4550A0h
	mov	rax,[0000000000491C30]                                 ; [rip+0006CD04]
	lea	rcx,[rbx+38h]
	add	rax,10h
	mov	[rbx],rax
	call	46AF20h
	mov	rcx,rbx
	add	rsp,28h
	pop	rbx
	pop	rsi
	jmp	475550h
0000000000424F4A                               48 8D 4B 48 48 89           H.KHH.
0000000000424F50 C6 E8 4A 01 03 00 48 8B 05 D3 CC 06 00 48 8D 4B ..J...H......H.K
0000000000424F60 38 48 8D 50 10 48 89 13 E8 B3 5F 04 00 48 89 F1 8H.P.H...._..H..
0000000000424F70 E8 3B C6 FE FF 48 89 C6 EB DC 90 90 90 90 90 90 .;...H..........

;; fn0000000000424F80: 0000000000424F80
fn0000000000424F80 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	mov	rax,[0000000000491BF0]                                 ; [rip+0006CC63]
	mov	rbx,rcx
	add	rax,10h
	mov	[rcx],rax
	call	455AB0h
	lea	rcx,[rbx+48h]
	call	4550A0h
	mov	rax,[0000000000491C30]                                 ; [rip+0006CC84]
	lea	rcx,[rbx+38h]
	add	rax,10h
	mov	[rbx],rax
	add	rsp,28h
	pop	rbx
	pop	rsi
	jmp	46AF20h
0000000000424FC2       48 8D 4B 48 48 89 C6 E8 D2 00 03 00 48 8B   H.KHH.......H.
0000000000424FD0 05 5B CC 06 00 48 8D 4B 38 48 8D 50 10 48 89 13 .[...H.K8H.P.H..
0000000000424FE0 E8 3B 5F 04 00 48 89 F1 E8 C3 C5 FE FF 48 89 C6 .;_..H.......H..
0000000000424FF0 EB DC 90 90 90 90 90 90 90 90 90 90 90 90 90 90 ................

;; fn0000000000425000: 0000000000425000
fn0000000000425000 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	mov	rax,[0000000000491BF0]                                 ; [rip+0006CBE3]
	mov	rbx,rcx
	add	rax,10h
	mov	[rcx],rax
	call	455AB0h
	lea	rcx,[rbx+48h]
	call	4550A0h
	mov	rax,[0000000000491C30]                                 ; [rip+0006CC04]
	lea	rcx,[rbx+38h]
	add	rax,10h
	mov	[rbx],rax
	add	rsp,28h
	pop	rbx
	pop	rsi
	jmp	46AF20h
0000000000425042       48 8D 4B 48 48 89 C6 E8 52 00 03 00 48 8B   H.KHH...R...H.
0000000000425050 05 DB CB 06 00 48 8D 4B 38 48 8D 50 10 48 89 13 .....H.K8H.P.H..
0000000000425060 E8 BB 5E 04 00 48 89 F1 E8 43 C5 FE FF 48 89 C6 ..^..H...C...H..
0000000000425070 EB DC 90 90 90 90 90 90 90 90 90 90 90 90 90 90 ................

;; fn0000000000425080: 0000000000425080
fn0000000000425080 proc
	add	rcx,48h
	jmp	454CC0h
0000000000425089                            90 90 90 90 90 90 90          .......

;; fn0000000000425090: 0000000000425090
fn0000000000425090 proc
	add	rcx,48h
	jmp	454CF0h
0000000000425099                            90 90 90 90 90 90 90          .......

;; fn00000000004250A0: 00000000004250A0
;;   Called from:
;;     000000000046C782 (in fn000000000046C5F0)
;;     000000000046C79F (in fn000000000046C5F0)
;;     000000000046C7BD (in fn000000000046C5F0)
fn00000000004250A0 proc
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,20h
	mov	rbx,rcx
	mov	rbp,rdx
	mov	edi,r8d
	mov	r12,r9
	lea	rsi,[rbx+48h]
	call	458D50h
	lea	rax,[0000000000495C90]                                 ; [rip+00070BCA]
	mov	r8d,edi
	mov	rdx,rbp
	mov	rcx,rsi
	mov	[rbx],rax
	call	454EC0h
	mov	rcx,rsi
	call	42AA50h
	test	al,al
	jnz	4250F0h

l00000000004250E3:
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
00000000004250EE                                           66 90               f.

l00000000004250F0:
	mov	[rbx+58h],edi
	mov	[rbx+70h],r12
	mov	rcx,rbx
	call	457670h
	mov	rax,[rbx+68h]
	mov	byte ptr [rbx+79h],0h
	mov	byte ptr [rbx+7Ah],0h
	mov	qword ptr [rbx+28h],+0h
	mov	qword ptr [rbx+20h],+0h
	mov	qword ptr [rbx+30h],+0h
	mov	[rbx+8h],rax
	mov	[rbx+10h],rax
	mov	[rbx+18h],rax
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
000000000042513A                               48 89 C6 48 89 D9           H..H..
0000000000425140 E8 0B 3E 03 00 48 89 F1 E8 63 C4 FE FF 90 90 90 ..>..H...c......

;; fn0000000000425150: 0000000000425150
fn0000000000425150 proc
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,20h
	mov	rbx,rcx
	mov	r12,r9
	mov	ebp,edx
	mov	edi,r8d
	lea	rsi,[rbx+48h]
	call	458D50h
	lea	rax,[0000000000495C90]                                 ; [rip+00070B1B]
	mov	r8d,edi
	mov	edx,ebp
	mov	rcx,rsi
	mov	[rbx],rax
	call	454F20h
	mov	rcx,rsi
	call	42AA50h
	test	al,al
	jnz	4251A0h

l0000000000425191:
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
000000000042519C                                     0F 1F 40 00             ..@.

l00000000004251A0:
	mov	[rbx+58h],edi
	mov	[rbx+70h],r12
	mov	rcx,rbx
	call	457670h
	mov	rax,[rbx+68h]
	mov	byte ptr [rbx+79h],0h
	mov	byte ptr [rbx+7Ah],0h
	mov	qword ptr [rbx+28h],+0h
	mov	qword ptr [rbx+20h],+0h
	mov	qword ptr [rbx+30h],+0h
	mov	[rbx+8h],rax
	mov	[rbx+10h],rax
	mov	[rbx+18h],rax
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
00000000004251EA                               48 89 C6 48 89 D9           H..H..
00000000004251F0 E8 5B 3D 03 00 48 89 F1 E8 B3 C3 FE FF 90 90 90 .[=..H..........

;; fn0000000000425200: 0000000000425200
fn0000000000425200 proc
	push	rbx
	sub	rsp,20h
	mov	rbx,rcx
	call	458D50h
	lea	rax,[0000000000495C90]                                 ; [rip+00070A7C]
	mov	[rbx],rax
	add	rsp,20h
	pop	rbx
	ret
000000000042521D                                        90 90 90              ...

;; fn0000000000425220: 0000000000425220
fn0000000000425220 proc
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,20h
	mov	rbx,rcx
	mov	rbp,rdx
	mov	edi,r8d
	mov	r12,r9
	lea	rsi,[rbx+48h]
	call	458D50h
	lea	rax,[0000000000495C90]                                 ; [rip+00070A4A]
	mov	r8d,edi
	mov	rdx,rbp
	mov	rcx,rsi
	mov	[rbx],rax
	call	454EC0h
	mov	rcx,rsi
	call	42AA50h
	test	al,al
	jnz	425270h

l0000000000425263:
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
000000000042526E                                           66 90               f.

l0000000000425270:
	mov	[rbx+58h],edi
	mov	[rbx+70h],r12
	mov	rcx,rbx
	call	457670h
	mov	rax,[rbx+68h]
	mov	byte ptr [rbx+79h],0h
	mov	byte ptr [rbx+7Ah],0h
	mov	qword ptr [rbx+28h],+0h
	mov	qword ptr [rbx+20h],+0h
	mov	qword ptr [rbx+30h],+0h
	mov	[rbx+8h],rax
	mov	[rbx+10h],rax
	mov	[rbx+18h],rax
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
00000000004252BA                               48 89 C6 48 89 D9           H..H..
00000000004252C0 E8 8B 3C 03 00 48 89 F1 E8 E3 C2 FE FF 90 90 90 ..<..H..........

;; fn00000000004252D0: 00000000004252D0
fn00000000004252D0 proc
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,20h
	mov	rbx,rcx
	mov	r12,r9
	mov	ebp,edx
	mov	edi,r8d
	lea	rsi,[rbx+48h]
	call	458D50h
	lea	rax,[0000000000495C90]                                 ; [rip+0007099B]
	mov	r8d,edi
	mov	edx,ebp
	mov	rcx,rsi
	mov	[rbx],rax
	call	454F20h
	mov	rcx,rsi
	call	42AA50h
	test	al,al
	jnz	425320h

l0000000000425311:
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
000000000042531C                                     0F 1F 40 00             ..@.

l0000000000425320:
	mov	[rbx+58h],edi
	mov	[rbx+70h],r12
	mov	rcx,rbx
	call	457670h
	mov	rax,[rbx+68h]
	mov	byte ptr [rbx+79h],0h
	mov	byte ptr [rbx+7Ah],0h
	mov	qword ptr [rbx+28h],+0h
	mov	qword ptr [rbx+20h],+0h
	mov	qword ptr [rbx+30h],+0h
	mov	[rbx+8h],rax
	mov	[rbx+10h],rax
	mov	[rbx+18h],rax
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
000000000042536A                               48 89 C6 48 89 D9           H..H..
0000000000425370 E8 DB 3B 03 00 48 89 F1 E8 33 C2 FE FF 90 90 90 ..;..H...3......

;; fn0000000000425380: 0000000000425380
fn0000000000425380 proc
	push	rbx
	sub	rsp,20h
	mov	rbx,rcx
	call	458D50h
	lea	rax,[0000000000495C90]                                 ; [rip+000708FC]
	mov	[rbx],rax
	add	rsp,20h
	pop	rbx
	ret
000000000042539D                                        90 90 90              ...

;; fn00000000004253A0: 00000000004253A0
fn00000000004253A0 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	mov	rax,[0000000000491C00]                                 ; [rip+0006C853]
	mov	rbx,rcx
	add	rax,10h
	mov	[rcx],rax
	call	457800h
	lea	rcx,[rbx+48h]
	call	4550A0h
	mov	rax,[0000000000491C40]                                 ; [rip+0006C874]
	lea	rcx,[rbx+38h]
	add	rax,10h
	mov	[rbx],rax
	call	46AF20h
	mov	rcx,rbx
	add	rsp,28h
	pop	rbx
	pop	rsi
	jmp	475550h
00000000004253EA                               48 8D 4B 48 48 89           H.KHH.
00000000004253F0 C6 E8 AA FC 02 00 48 8B 05 43 C8 06 00 48 8D 4B ......H..C...H.K
0000000000425400 38 48 8D 50 10 48 89 13 E8 13 5B 04 00 48 89 F1 8H.P.H....[..H..
0000000000425410 E8 9B C1 FE FF 48 89 C6 EB DC 90 90 90 90 90 90 .....H..........

;; fn0000000000425420: 0000000000425420
fn0000000000425420 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	mov	rax,[0000000000491C00]                                 ; [rip+0006C7D3]
	mov	rbx,rcx
	add	rax,10h
	mov	[rcx],rax
	call	457800h
	lea	rcx,[rbx+48h]
	call	4550A0h
	mov	rax,[0000000000491C40]                                 ; [rip+0006C7F4]
	lea	rcx,[rbx+38h]
	add	rax,10h
	mov	[rbx],rax
	add	rsp,28h
	pop	rbx
	pop	rsi
	jmp	46AF20h
0000000000425462       48 8D 4B 48 48 89 C6 E8 32 FC 02 00 48 8B   H.KHH...2...H.
0000000000425470 05 CB C7 06 00 48 8D 4B 38 48 8D 50 10 48 89 13 .....H.K8H.P.H..
0000000000425480 E8 9B 5A 04 00 48 89 F1 E8 23 C1 FE FF 48 89 C6 ..Z..H...#...H..
0000000000425490 EB DC 90 90 90 90 90 90 90 90 90 90 90 90 90 90 ................

;; fn00000000004254A0: 00000000004254A0
fn00000000004254A0 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	mov	rax,[0000000000491C00]                                 ; [rip+0006C753]
	mov	rbx,rcx
	add	rax,10h
	mov	[rcx],rax
	call	457800h
	lea	rcx,[rbx+48h]
	call	4550A0h
	mov	rax,[0000000000491C40]                                 ; [rip+0006C774]
	lea	rcx,[rbx+38h]
	add	rax,10h
	mov	[rbx],rax
	add	rsp,28h
	pop	rbx
	pop	rsi
	jmp	46AF20h
00000000004254E2       48 8D 4B 48 48 89 C6 E8 B2 FB 02 00 48 8B   H.KHH.......H.
00000000004254F0 05 4B C7 06 00 48 8D 4B 38 48 8D 50 10 48 89 13 .K...H.K8H.P.H..
0000000000425500 E8 1B 5A 04 00 48 89 F1 E8 A3 C0 FE FF 48 89 C6 ..Z..H.......H..
0000000000425510 EB DC 90 90 90 90 90 90 90 90 90 90 90 90 90 90 ................

;; fn0000000000425520: 0000000000425520
;;   Called from:
;;     0000000000425670 (in fn00000000004255A0)
fn0000000000425520 proc
	push	rbp
	push	r12
	push	rdi
	push	rsi
	push	rbx
	mov	rbp,rsp
	sub	rsp,30h
	mov	rax,[00000000004916F0]                                 ; [rip+0006C1BC]
	mov	r9d,2h
	sub	rsp,30h
	mov	rdi,rdx
	mov	rdx,r8
	mov	dword ptr [rsp+20h],1h
	mov	r12,rcx
	lea	rcx,[rsp+48h]
	mov	r8,[rax]
	lea	rbx,[rsp+30h]
	call	46F510h
	movsxd	r8,eax
	cmp	r8,rdi
	mov	rsi,r8
	ja	425590h

l000000000042556C:
	sub	rbx,r8
	mov	rcx,r12
	lea	rdx,[rbx+18h]
	call	41BCC0h

l000000000042557B:
	mov	eax,esi
	mov	rsp,rbp
	pop	rbx
	pop	rsi
	pop	rdi
	pop	r12
	pop	rbp
	ret
0000000000425587                      66 0F 1F 84 00 00 00 00 00        f........

l0000000000425590:
	mov	esi,0FFFFFFFFh
	jmp	42557Bh
0000000000425597                      90 90 90 90 90 90 90 90 90        .........

;; fn00000000004255A0: 00000000004255A0
;;   Called from:
;;     00000000004715B4 (in fn0000000000471560)
fn00000000004255A0 proc
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,20h
	mov	rbp,rcx
	mov	rsi,r8
	lea	rdi,[rcx+rdx-1h]
	mov	rbx,rcx
	jmp	4255CAh
00000000004255BA                               66 0F 1F 44 00 00           f..D..

l00000000004255C0:
	mov	[rbx],dl
	add	rsi,1h
	add	rbx,1h

l00000000004255CA:
	movzx	eax,byte ptr [rsi]
	test	al,al
	jz	425640h

l00000000004255D1:
	cmp	rbx,rdi
	jnc	425690h

l00000000004255DA:
	cmp	al,25h
	mov	edx,eax
	jnz	4255C0h

l00000000004255E0:
	movzx	r8d,byte ptr [rsi+1h]
	cmp	r8b,73h
	jz	425600h

l00000000004255EB:
	cmp	r8b,7Ah
	jz	425654h

l00000000004255F1:
	xor	eax,eax
	cmp	r8b,25h
	setz	al
	add	rsi,rax
	jmp	4255C0h
00000000004255FF                                              90                .

l0000000000425600:
	mov	rdx,[r9]
	movzx	eax,byte ptr [rdx]
	test	al,al
	jnz	425615h

l000000000042560A:
	jmp	425627h
000000000042560C                                     0F 1F 40 00             ..@.

l0000000000425610:
	cmp	rbx,rdi
	jz	425690h

l0000000000425615:
	add	rbx,1h
	add	rdx,1h
	mov	[rbx-1h],al
	movzx	eax,byte ptr [rdx]
	test	al,al
	jnz	425610h

l0000000000425627:
	add	rsi,2h
	movzx	eax,byte ptr [rsi]
	add	r9,8h
	test	al,al
	jnz	4255D1h

l0000000000425636:
	nop	word ptr cs:[rax+rax+0h]

l0000000000425640:
	mov	rax,rbx
	mov	byte ptr [rbx],0h
	sub	rax,rbp
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret

l0000000000425654:
	cmp	byte ptr [rsi+2h],75h
	mov	edx,eax
	jnz	4255C0h

l0000000000425660:
	mov	r8,[r9]
	mov	rdx,rdi
	mov	rcx,rbx
	sub	rdx,rbx
	lea	r12,[r9+8h]
	call	425520h
	test	eax,eax
	jle	425690h

l0000000000425679:
	cdqe
	add	rsi,3h
	mov	r9,r12
	add	rbx,rax
	jmp	4255CAh
000000000042568A                               66 0F 1F 44 00 00           f..D..

l0000000000425690:
	mov	rdx,rbx
	mov	rcx,rbp
	call	425EE0h
	nop
	nop
	nop
	nop
	nop

;; fn00000000004256A0: 00000000004256A0
;;   Called from:
;;     000000000042569F (in fn00000000004255A0)
fn00000000004256A0 proc
	mov	rax,[rcx+40h]
	ret
00000000004256A5                90 90 90 90 90 90 90 90 90 90 90      ...........

;; fn00000000004256B0: 00000000004256B0
fn00000000004256B0 proc
	mov	rcx,[rcx+40h]
	jmp	41BD50h
00000000004256B9                            90 90 90 90 90 90 90          .......

;; fn00000000004256C0: 00000000004256C0
fn00000000004256C0 proc
	push	rbx
	sub	rsp,20h
	mov	rbx,rcx
	mov	rcx,[rcx+40h]
	call	41BD40h
	mov	[rbx+48h],eax
	add	rsp,20h
	pop	rbx
	ret
00000000004256DA                               90 90 90 90 90 90           ......

;; fn00000000004256E0: 00000000004256E0
fn00000000004256E0 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	mov	r9,[rcx+40h]
	mov	rsi,rdx
	mov	rbx,rcx
	mov	edx,1h
	mov	rcx,rsi
	call	41BD78h
	test	rax,rax
	jle	425711h

l0000000000425702:
	movzx	edx,byte ptr [rsi+rax-1h]
	mov	[rbx+48h],edx
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret

l0000000000425711:
	mov	dword ptr [rbx+48h],0FFFFFFFFh
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret
000000000042571F                                              90                .

;; fn0000000000425720: 0000000000425720
fn0000000000425720 proc
	mov	r9,[rcx+40h]
	mov	rax,rdx
	mov	edx,1h
	mov	rcx,rax
	jmp	41BD70h
0000000000425734             90 90 90 90 90 90 90 90 90 90 90 90     ............

;; fn0000000000425740: 0000000000425740
fn0000000000425740 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	mov	rsi,rdx
	mov	rdx,r8
	xor	r8d,r8d
	test	r9d,r9d
	mov	rbx,rcx
	mov	qword ptr [rcx],-1h
	mov	dword ptr [rcx+8h],0h
	jz	425774h

l0000000000425765:
	xor	r8d,r8d
	cmp	r9d,1h
	setnz	r8b
	add	r8d,1h

l0000000000425774:
	mov	rcx,[rsi+40h]
	call	411A00h
	test	eax,eax
	jnz	42578Dh

l0000000000425781:
	mov	rcx,[rsi+40h]
	call	411E60h
	mov	[rbx],rax

l000000000042578D:
	mov	rax,rbx
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret
0000000000425797                      90 90 90 90 90 90 90 90 90        .........

;; fn00000000004257A0: 00000000004257A0
fn00000000004257A0 proc
	push	rsi
	push	rbx
	sub	rsp,38h
	mov	rsi,rdx
	mov	rbx,rcx
	lea	rcx,[0000000000425740]                                 ; [rip-00000073]
	mov	rax,[rsi]
	mov	rdx,[r8]
	mov	rax,[rax+20h]
	cmp	rax,rcx
	jnz	425810h

l00000000004257C2:
	mov	rcx,[rsi+40h]
	xor	r8d,r8d
	mov	qword ptr [rbx],-1h
	mov	dword ptr [rbx+8h],0h
	call	411A00h
	test	eax,eax
	jz	4257F0h

l00000000004257E0:
	mov	rax,rbx
	add	rsp,38h
	pop	rbx
	pop	rsi
	ret
00000000004257EA                               66 0F 1F 44 00 00           f..D..

l00000000004257F0:
	mov	rcx,[rsi+40h]
	call	411E60h
	mov	[rbx],rax
	mov	rax,rbx
	add	rsp,38h
	pop	rbx
	pop	rsi
	ret
0000000000425806                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l0000000000425810:
	mov	[rsp+20h],r9d
	mov	r8,rdx
	xor	r9d,r9d
	mov	rdx,rsi
	mov	rcx,rbx
	call	rax
	mov	rax,rbx
	add	rsp,38h
	pop	rbx
	pop	rsi
	ret
000000000042582D                                        90 90 90              ...

;; fn0000000000425830: 0000000000425830
fn0000000000425830 proc
	sub	rsp,28h
	cmp	edx,0FFh
	mov	eax,edx
	jz	425850h

l000000000042583B:
	mov	rdx,[rcx+40h]
	mov	ecx,eax
	add	rsp,28h
	jmp	41BD80h
000000000042584A                               66 0F 1F 44 00 00           f..D..

l0000000000425850:
	mov	rcx,[rcx+40h]
	call	41BD50h
	test	eax,eax
	setnz	al
	movzx	eax,al
	neg	eax
	add	rsp,28h
	ret
0000000000425868                         90 90 90 90 90 90 90 90         ........

;; fn0000000000425870: 0000000000425870
fn0000000000425870 proc
	push	rbx
	sub	rsp,20h
	cmp	edx,0FFh
	mov	rbx,rcx
	mov	ecx,edx
	jz	425895h

l000000000042587F:
	mov	rdx,[rbx+40h]
	call	41BD48h

l0000000000425888:
	mov	dword ptr [rbx+48h],0FFFFFFFFh
	add	rsp,20h
	pop	rbx
	ret

l0000000000425895:
	mov	ecx,[rbx+48h]
	cmp	ecx,0FFh
	jnz	42587Fh

l000000000042589D:
	mov	eax,ecx
	jmp	425888h
00000000004258A1    90 90 90 90 90 90 90 90 90 90 90 90 90 90 90  ...............

;; fn00000000004258B0: 00000000004258B0
fn00000000004258B0 proc
	push	rbx
	sub	rsp,20h
	mov	rbx,rcx
	mov	rcx,[rcx+40h]
	call	41BD40h
	mov	rdx,[rbx+40h]
	mov	ecx,eax
	add	rsp,20h
	pop	rbx
	jmp	41BD48h
00000000004258D1    90 90 90 90 90 90 90 90 90 90 90 90 90 90 90  ...............

;; fn00000000004258E0: 00000000004258E0
fn00000000004258E0 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	mov	rax,[0000000000491C30]                                 ; [rip+0006C343]
	mov	rbx,rcx
	mov	qword ptr [rcx+8h],+0h
	mov	qword ptr [rcx+10h],+0h
	mov	qword ptr [rcx+18h],+0h
	mov	qword ptr [rcx+20h],+0h
	lea	rcx,[rcx+38h]
	add	rax,10h
	mov	qword ptr [rcx-10h],+0h
	mov	qword ptr [rcx-8h],+0h
	mov	[rcx-38h],rax
	mov	rsi,rdx
	call	46AE90h
	lea	rax,[0000000000495D10]                                 ; [rip+000703D5]
	mov	[rbx+40h],rsi
	mov	dword ptr [rbx+48h],0FFFFFFFFh
	mov	[rbx],rax
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret

;; fn0000000000425950: 0000000000425950
fn0000000000425950 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	mov	rax,[0000000000491C30]                                 ; [rip+0006C2D3]
	mov	rbx,rcx
	mov	qword ptr [rcx+8h],+0h
	mov	qword ptr [rcx+10h],+0h
	mov	qword ptr [rcx+18h],+0h
	mov	qword ptr [rcx+20h],+0h
	lea	rcx,[rcx+38h]
	add	rax,10h
	mov	qword ptr [rcx-10h],+0h
	mov	qword ptr [rcx-8h],+0h
	mov	[rcx-38h],rax
	mov	rsi,rdx
	call	46AE90h
	lea	rax,[0000000000495D10]                                 ; [rip+00070365]
	mov	[rbx+40h],rsi
	mov	dword ptr [rbx+48h],0FFFFFFFFh
	mov	[rbx],rax
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret

;; fn00000000004259C0: 00000000004259C0
fn00000000004259C0 proc
	push	rbx
	sub	rsp,20h
	mov	rax,[0000000000491C30]                                 ; [rip+0006C264]
	mov	rbx,rcx
	lea	rcx,[rcx+38h]
	add	rax,10h
	mov	[rcx-38h],rax
	call	46AF20h
	mov	rcx,rbx
	add	rsp,20h
	pop	rbx
	jmp	475550h
00000000004259ED                                        90 90 90              ...

;; fn00000000004259F0: 00000000004259F0
fn00000000004259F0 proc
	mov	rax,[0000000000491C30]                                 ; [rip+0006C239]
	add	rcx,38h
	add	rax,10h
	mov	[rcx-38h],rax
	jmp	46AF20h
0000000000425A08                         90 90 90 90 90 90 90 90         ........

;; fn0000000000425A10: 0000000000425A10
fn0000000000425A10 proc
	mov	rax,[rcx+40h]
	ret
0000000000425A15                90 90 90 90 90 90 90 90 90 90 90      ...........

;; fn0000000000425A20: 0000000000425A20
fn0000000000425A20 proc
	mov	rcx,[rcx+40h]
	jmp	41BD50h
0000000000425A29                            90 90 90 90 90 90 90          .......

;; fn0000000000425A30: 0000000000425A30
fn0000000000425A30 proc
	push	rbx
	sub	rsp,20h
	mov	rbx,rcx
	mov	rcx,[rcx+40h]
	call	41BD58h
	mov	[rbx+48h],ax
	add	rsp,20h
	pop	rbx
	ret
0000000000425A4B                                  90 90 90 90 90            .....

;; fn0000000000425A50: 0000000000425A50
fn0000000000425A50 proc
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,28h
	test	r8,r8
	mov	rsi,rcx
	mov	rbp,rdx
	mov	rdi,r8
	jz	425A92h

l0000000000425A66:
	xor	ebx,ebx
	jmp	425A7Eh
0000000000425A6A                               66 0F 1F 44 00 00           f..D..

l0000000000425A70:
	mov	[rbp+rbx*2+0h],ax
	add	rbx,1h
	cmp	rdi,rbx
	jz	425AB0h

l0000000000425A7E:
	mov	rcx,[rsi+40h]
	call	41BD58h
	cmp	ax,0FFh
	jnz	425A70h

l0000000000425A8D:
	test	rbx,rbx
	jnz	425AB0h

l0000000000425A92:
	mov	eax,0FFFFFFFFh
	xor	ebx,ebx
	mov	[rsi+48h],ax
	mov	rax,rbx
	add	rsp,28h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
0000000000425AA9                            0F 1F 80 00 00 00 00          .......

l0000000000425AB0:
	movzx	eax,word ptr [rbp+rbx*2-2h]
	mov	[rsi+48h],ax
	mov	rax,rbx
	add	rsp,28h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
0000000000425AC5                90 90 90 90 90 90 90 90 90 90 90      ...........

;; fn0000000000425AD0: 0000000000425AD0
fn0000000000425AD0 proc
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,28h
	test	r8,r8
	jz	425B19h

l0000000000425ADD:
	mov	rsi,r8
	mov	rbp,rdx
	mov	rdi,rcx
	xor	ebx,ebx
	jmp	425AF9h
0000000000425AEA                               66 0F 1F 44 00 00           f..D..

l0000000000425AF0:
	add	rbx,1h
	cmp	rsi,rbx
	jz	425B0Dh

l0000000000425AF9:
	movzx	ecx,word ptr [rbp+rbx*2+0h]
	mov	rdx,[rdi+40h]
	call	41BD68h
	cmp	ax,0FFh
	jnz	425AF0h

l0000000000425B0D:
	mov	rax,rbx
	add	rsp,28h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret

l0000000000425B19:
	xor	ebx,ebx
	jmp	425B0Dh
0000000000425B1D                                        90 90 90              ...

;; fn0000000000425B20: 0000000000425B20
fn0000000000425B20 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	mov	rsi,rdx
	mov	rdx,r8
	xor	r8d,r8d
	test	r9d,r9d
	mov	rbx,rcx
	mov	qword ptr [rcx],-1h
	mov	dword ptr [rcx+8h],0h
	jz	425B54h

l0000000000425B45:
	xor	r8d,r8d
	cmp	r9d,1h
	setnz	r8b
	add	r8d,1h

l0000000000425B54:
	mov	rcx,[rsi+40h]
	call	411A00h
	test	eax,eax
	jnz	425B6Dh

l0000000000425B61:
	mov	rcx,[rsi+40h]
	call	411E60h
	mov	[rbx],rax

l0000000000425B6D:
	mov	rax,rbx
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret
0000000000425B77                      90 90 90 90 90 90 90 90 90        .........

;; fn0000000000425B80: 0000000000425B80
fn0000000000425B80 proc
	push	rsi
	push	rbx
	sub	rsp,38h
	mov	rsi,rdx
	mov	rbx,rcx
	lea	rcx,[0000000000425B20]                                 ; [rip-00000073]
	mov	rax,[rsi]
	mov	rdx,[r8]
	mov	rax,[rax+20h]
	cmp	rax,rcx
	jnz	425BF0h

l0000000000425BA2:
	mov	rcx,[rsi+40h]
	xor	r8d,r8d
	mov	qword ptr [rbx],-1h
	mov	dword ptr [rbx+8h],0h
	call	411A00h
	test	eax,eax
	jz	425BD0h

l0000000000425BC0:
	mov	rax,rbx
	add	rsp,38h
	pop	rbx
	pop	rsi
	ret
0000000000425BCA                               66 0F 1F 44 00 00           f..D..

l0000000000425BD0:
	mov	rcx,[rsi+40h]
	call	411E60h
	mov	[rbx],rax
	mov	rax,rbx
	add	rsp,38h
	pop	rbx
	pop	rsi
	ret
0000000000425BE6                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l0000000000425BF0:
	mov	[rsp+20h],r9d
	mov	r8,rdx
	xor	r9d,r9d
	mov	rdx,rsi
	mov	rcx,rbx
	call	rax
	mov	rax,rbx
	add	rsp,38h
	pop	rbx
	pop	rsi
	ret
0000000000425C0D                                        90 90 90              ...

;; fn0000000000425C10: 0000000000425C10
fn0000000000425C10 proc
	sub	rsp,28h
	cmp	dx,0FFh
	mov	eax,edx
	jz	425C30h

l0000000000425C1C:
	mov	rdx,[rcx+40h]
	movzx	ecx,ax
	add	rsp,28h
	jmp	41BD68h
0000000000425C2C                                     0F 1F 40 00             ..@.

l0000000000425C30:
	mov	rcx,[rcx+40h]
	call	41BD50h
	test	eax,eax
	setnz	al
	movzx	eax,al
	neg	eax
	add	rsp,28h
	ret
0000000000425C48                         90 90 90 90 90 90 90 90         ........

;; fn0000000000425C50: 0000000000425C50
fn0000000000425C50 proc
	push	rbx
	sub	rsp,20h
	cmp	dx,0FFh
	mov	rbx,rcx
	movzx	ecx,dx
	jz	425C80h

l0000000000425C61:
	mov	rdx,[rbx+40h]
	call	41BD60h
	mov	edx,0FFFFFFFFh
	mov	[rbx+48h],dx
	add	rsp,20h
	pop	rbx
	ret
0000000000425C79                            0F 1F 80 00 00 00 00          .......

l0000000000425C80:
	movzx	ecx,word ptr [rbx+48h]
	mov	eax,edx
	cmp	cx,0FFh
	jnz	425C61h

l0000000000425C8C:
	mov	edx,0FFFFFFFFh
	mov	[rbx+48h],dx
	add	rsp,20h
	pop	rbx
	ret
0000000000425C9B                                  90 90 90 90 90            .....

;; fn0000000000425CA0: 0000000000425CA0
fn0000000000425CA0 proc
	push	rbx
	sub	rsp,20h
	mov	rbx,rcx
	mov	rcx,[rcx+40h]
	call	41BD58h
	mov	rdx,[rbx+40h]
	movzx	ecx,ax
	add	rsp,20h
	pop	rbx
	jmp	41BD60h
0000000000425CC2       90 90 90 90 90 90 90 90 90 90 90 90 90 90   ..............

;; fn0000000000425CD0: 0000000000425CD0
fn0000000000425CD0 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	mov	rax,[0000000000491C40]                                 ; [rip+0006BF63]
	mov	rbx,rcx
	mov	qword ptr [rcx+8h],+0h
	mov	qword ptr [rcx+10h],+0h
	mov	qword ptr [rcx+18h],+0h
	mov	qword ptr [rcx+20h],+0h
	lea	rcx,[rcx+38h]
	add	rax,10h
	mov	qword ptr [rcx-10h],+0h
	mov	qword ptr [rcx-8h],+0h
	mov	[rcx-38h],rax
	mov	rsi,rdx
	call	46AE90h
	lea	rax,[0000000000495D90]                                 ; [rip+00070065]
	mov	[rbx+40h],rsi
	mov	[rbx],rax
	mov	eax,0FFFFFFFFh
	mov	[rbx+48h],ax
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret
0000000000425D42       90 90 90 90 90 90 90 90 90 90 90 90 90 90   ..............

;; fn0000000000425D50: 0000000000425D50
fn0000000000425D50 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	mov	rax,[0000000000491C40]                                 ; [rip+0006BEE3]
	mov	rbx,rcx
	mov	qword ptr [rcx+8h],+0h
	mov	qword ptr [rcx+10h],+0h
	mov	qword ptr [rcx+18h],+0h
	mov	qword ptr [rcx+20h],+0h
	lea	rcx,[rcx+38h]
	add	rax,10h
	mov	qword ptr [rcx-10h],+0h
	mov	qword ptr [rcx-8h],+0h
	mov	[rcx-38h],rax
	mov	rsi,rdx
	call	46AE90h
	lea	rax,[0000000000495D90]                                 ; [rip+0006FFE5]
	mov	[rbx+40h],rsi
	mov	[rbx],rax
	mov	eax,0FFFFFFFFh
	mov	[rbx+48h],ax
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret
0000000000425DC2       90 90 90 90 90 90 90 90 90 90 90 90 90 90   ..............

;; fn0000000000425DD0: 0000000000425DD0
fn0000000000425DD0 proc
	push	rbx
	sub	rsp,20h
	mov	rax,[0000000000491C40]                                 ; [rip+0006BE64]
	mov	rbx,rcx
	lea	rcx,[rcx+38h]
	add	rax,10h
	mov	[rcx-38h],rax
	call	46AF20h
	mov	rcx,rbx
	add	rsp,20h
	pop	rbx
	jmp	475550h
0000000000425DFD                                        90 90 90              ...

;; fn0000000000425E00: 0000000000425E00
fn0000000000425E00 proc
	mov	rax,[0000000000491C40]                                 ; [rip+0006BE39]
	add	rcx,38h
	add	rax,10h
	mov	[rcx-38h],rax
	jmp	46AF20h
0000000000425E18                         90 90 90 90 90 90 90 90         ........

;; fn0000000000425E20: 0000000000425E20
fn0000000000425E20 proc
	push	rbx
	sub	rsp,20h
	lea	rax,[0000000000495E10]                                 ; [rip+0006FFE4]
	mov	rbx,rcx
	mov	[rcx],rax
	call	46F0F0h
	mov	rcx,rbx
	add	rsp,20h
	pop	rbx
	jmp	475550h
0000000000425E44             90 90 90 90 90 90 90 90 90 90 90 90     ............

;; fn0000000000425E50: 0000000000425E50
fn0000000000425E50 proc
	lea	rax,[0000000000495E10]                                 ; [rip+0006FFB9]
	mov	[rcx],rax
	jmp	46F0F0h
0000000000425E5F                                              90                .

;; fn0000000000425E60: 0000000000425E60
fn0000000000425E60 proc
	push	rbx
	sub	rsp,20h
	lea	rax,[0000000000495E50]                                 ; [rip+0006FFE4]
	mov	rbx,rcx
	mov	[rcx],rax
	call	46F0F0h
	mov	rcx,rbx
	add	rsp,20h
	pop	rbx
	jmp	475550h
0000000000425E84             90 90 90 90 90 90 90 90 90 90 90 90     ............

;; fn0000000000425E90: 0000000000425E90
fn0000000000425E90 proc
	lea	rax,[0000000000495E50]                                 ; [rip+0006FFB9]
	mov	[rcx],rax
	jmp	46F0F0h
0000000000425E9F                                              90                .

;; fn0000000000425EA0: 0000000000425EA0
fn0000000000425EA0 proc
	push	rbx
	sub	rsp,20h
	lea	rax,[0000000000495E90]                                 ; [rip+0006FFE4]
	mov	rbx,rcx
	mov	[rcx],rax
	call	46F0F0h
	mov	rcx,rbx
	add	rsp,20h
	pop	rbx
	jmp	475550h
0000000000425EC4             90 90 90 90 90 90 90 90 90 90 90 90     ............

;; fn0000000000425ED0: 0000000000425ED0
fn0000000000425ED0 proc
	lea	rax,[0000000000495E90]                                 ; [rip+0006FFB9]
	mov	[rcx],rax
	jmp	46F0F0h
0000000000425EDF                                              90                .

;; fn0000000000425EE0: 0000000000425EE0
;;   Called from:
;;     0000000000425696 (in fn00000000004255A0)
fn0000000000425EE0 proc
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
	mov	rbx,6F2E756E672E6363h
	mov	r15,756F6E6520746F6Eh
	mov	r14,6563617073206867h
	sub	rdx,rcx
	mov	[rbp+70h],rcx
	mov	r13,726F6620726F6620h
	lea	rax,[rdx+1h]
	mov	r8,rdx
	mov	r12,617078652074616Dh
	mov	rdi,5028206E6F69736Eh
	mov	rsi,757320657361656Ch
	mov	r11,6C75662074696D62h
	mov	[rbp-58h],rax
	lea	rax,[r8+8Ah]
	mov	r10,657220677562206Ch
	mov	rcx,2074612074726F70h
	mov	rdx,672F2F3A70747468h
	mov	[rbp+0h],rbx
	mov	r9,200A3A296C6D7468h
	mov	rbx,2E736775622F6772h
	and	rax,0F0h
	mov	[rbp-50h],r15
	mov	[rbp-48h],r14
	mov	[rbp-40h],r13
	mov	[rbp-38h],r12
	mov	[rbp-30h],rdi
	mov	[rbp-28h],rsi
	mov	[rbp-20h],r11
	mov	[rbp-18h],r10
	mov	[rbp-10h],rcx
	mov	[rbp-8h],rdx
	mov	[rbp+8h],rbx
	mov	[rbp+10h],r9
	mov	dword ptr [rbp+18h],202020h
	call	4116F0h
	sub	rsp,rax
	mov	eax,2020h
	lea	rbx,[rsp+20h]
	mov	[rbx+48h],rdx
	mov	rdx,[rbp+70h]
	mov	[rbx+20h],rdi
	mov	[rbx+28h],rsi
	mov	rdi,2E736775622F6772h
	mov	[rbx+40h],rcx
	mov	rsi,6F2E756E672E6363h
	lea	rcx,[rbx+6Bh]
	mov	[rbx],r15
	mov	[rbx+8h],r14
	mov	[rbx+10h],r13
	mov	[rbx+18h],r12
	mov	[rbx+30h],r11
	mov	[rbx+38h],r10
	mov	[rbx+50h],rsi
	mov	[rbx+58h],rdi
	mov	[rbx+60h],r9
	mov	[rbx+68h],ax
	mov	byte ptr [rbx+6Ah],20h
	call	41BCC0h
	mov	rax,[rbp-58h]
	mov	rcx,rbx
	mov	byte ptr [rbx+rax+6Ah],0h
	call	470BA0h
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

;; fn0000000000426060: 0000000000426060
;;   Called from:
;;     000000000042605F (in fn0000000000425EE0)
fn0000000000426060 proc
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,30h
	cmp	[000000000048C090],0h                                  ; [rip+00066022]
	jnz	426127h

l0000000000426074:
	mov	[000000000048C090],1h                                  ; [rip+00066015]
	call	475A00h
	test	rax,rax
	jz	4261BAh

l0000000000426089:
	mov	rbx,[rax+8h]
	xor	eax,eax
	lea	r9,[rsp+2Ch]
	cmp	byte ptr [rbx],2Ah
	mov	dword ptr [rsp+2Ch],0FFFFFFFFh
	setz	al
	xor	r8d,r8d
	xor	edx,edx
	add	rbx,rax
	mov	rcx,rbx
	call	40FB80h
	mov	rsi,[00000000004AF744]                                 ; [rip+0008968B]
	mov	rdi,rax
	call	rsi
	lea	rcx,[000000000048E7D0]                                 ; [rip+0006870B]
	lea	r9,[rax+60h]
	mov	r8d,30h
	mov	edx,1h
	call	41BD70h
	cmp	dword ptr [rsp+2Ch],0h
	jz	426117h

l00000000004260E0:
	call	rsi
	lea	rdx,[rax+60h]
	mov	rcx,rbx
	call	41BE50h

l00000000004260EE:
	call	rsi
	lea	rcx,[000000000048E801]                                 ; [rip+0006870A]
	lea	r9,[rax+60h]
	mov	r8d,2h
	mov	edx,1h
	call	41BD70h
	cmp	dword ptr [rsp+2Ch],0h
	jz	42614Dh

l0000000000426112:
	call	476060h

l0000000000426117:
	call	rsi
	lea	rdx,[rax+60h]
	mov	rcx,rdi
	call	41BE50h
	jmp	4260EEh

l0000000000426127:
	call	[00000000004AF744]                                    ; [rip+00089617]
	lea	rcx,[000000000048E7B0]                                 ; [rip+0006867C]
	lea	r9,[rax+60h]
	mov	r8d,1Dh
	mov	edx,1h
	call	41BD70h
	call	41BD30h

l000000000042614D:
	mov	rcx,rdi
	call	41BDA0h
	jmp	426112h
0000000000426157                      48 83 EA 01 48 89 C1 0F 85        H...H....
0000000000426160 89 00 00 00 E8 D7 F6 04 00 48 8B 10 48 89 C1 FF .........H..H...
0000000000426170 52 10 48 89 C3 FF D6 4C 8D 48 60 48 8D 0D B4 86 R.H....L.H`H....
0000000000426180 06 00 41 B8 0B 00 00 00 BA 01 00 00 00 E8 DE 5B ..A............[
0000000000426190 FF FF FF D6 48 8D 50 60 48 89 D9 E8 B0 5C FF FF ....H.P`H....\..
00000000004261A0 FF D6 48 8D 50 60 B9 0A 00 00 00 E8 A8 5C FF FF ..H.P`.......\..
00000000004261B0 E8 BB F8 04 00                                  .....          

l00000000004261B5:
	call	41BD30h

l00000000004261BA:
	call	[00000000004AF744]                                    ; [rip+00089584]
	lea	rcx,[000000000048E808]                                 ; [rip+00068641]
	lea	r9,[rax+60h]
	mov	r8d,2Dh
	mov	edx,1h
	call	41BD70h
	jmp	4261B5h
00000000004261DD                                        48 89 C3              H..
00000000004261E0 E8 8B F8 04 00 48 89 D9 E8 C3 B3 FE FF E8 4E F6 .....H........N.
00000000004261F0 04 00 E8 79 F8 04 00 EB BC 90 90 90 90 90 90 90 ...y............

;; fn0000000000426200: 0000000000426200
fn0000000000426200 proc
	push	rbx
	sub	rsp,20h
	lea	rax,[0000000000495ED0]                                 ; [rip+0006FCC4]
	mov	rbx,rcx
	mov	[rcx],rax
	call	46F0F0h
	mov	rcx,rbx
	add	rsp,20h
	pop	rbx
	jmp	475550h
0000000000426224             90 90 90 90 90 90 90 90 90 90 90 90     ............

;; fn0000000000426230: 0000000000426230
fn0000000000426230 proc
	lea	rax,[0000000000495ED0]                                 ; [rip+0006FC99]
	mov	[rcx],rax
	jmp	46F0F0h
000000000042623F                                              90                .

;; fn0000000000426240: 0000000000426240
;;   Called from:
;;     000000000046AE03 (in fn000000000046AD30)
;;     000000000046AF00 (in fn000000000046AE90)
;;     00000000004756DA (in fn0000000000475620)
;;     00000000004757BA (in fn00000000004756E0)
;;     0000000000475B72 (in fn0000000000475AF0)
;;     0000000000475C12 (in fn0000000000475BA0)
;;     0000000000475E4A (in fn0000000000475DE0)
;;     0000000000475F79 (in fn0000000000475E80)
;;     0000000000475FED (in fn0000000000475F80)
fn0000000000426240 proc
	sub	rsp,28h
	mov	ecx,8h
	call	4756E0h
	lea	rdx,[0000000000495E10]                                 ; [rip+0006FBBB]
	lea	r8,[0000000000425E50]                                  ; [rip-0000040C]
	mov	rcx,rax
	mov	[rax],rdx
	lea	rdx,[0000000000493120]                                 ; [rip+0006CEB7]
	call	4760B0h
	nop
	nop

;; fn0000000000426270: 0000000000426270
;;   Called from:
;;     000000000042626F (in fn0000000000426240)
;;     00000000004694DF (in fn0000000000469430)
;;     0000000000469549 (in fn0000000000469430)
;;     000000000046ADF0 (in fn000000000046AD30)
;;     000000000046AE2D (in fn000000000046AD30)
;;     000000000046AF13 (in fn000000000046AE90)
;;     00000000004756B3 (in fn0000000000475620)
;;     0000000000475794 (in fn00000000004756E0)
;;     0000000000475B85 (in fn0000000000475AF0)
;;     0000000000475C25 (in fn0000000000475BA0)
;;     0000000000475E75 (in fn0000000000475DE0)
;;     0000000000475F2F (in fn0000000000475E80)
;;     0000000000476018 (in fn0000000000475F80)
;;     00000000004765A4 (in fn0000000000476590)
fn0000000000426270 proc
	sub	rsp,28h
	mov	ecx,8h
	call	4756E0h
	lea	rdx,[0000000000495E90]                                 ; [rip+0006FC0B]
	lea	r8,[0000000000425ED0]                                  ; [rip-000003BC]
	mov	rcx,rax
	mov	[rax],rdx
	lea	rdx,[0000000000493160]                                 ; [rip+0006CEC7]
	call	4760B0h
	nop
	nop

;; fn00000000004262A0: 00000000004262A0
;;   Called from:
;;     000000000042629F (in fn0000000000426270)
;;     0000000000475E5D (in fn0000000000475DE0)
;;     0000000000476000 (in fn0000000000475F80)
fn00000000004262A0 proc
	sub	rsp,28h
	mov	ecx,8h
	call	4756E0h
	lea	rdx,[0000000000495ED0]                                 ; [rip+0006FC1B]
	lea	r8,[0000000000426230]                                  ; [rip-0000008C]
	mov	rcx,rax
	mov	[rax],rdx
	lea	rdx,[0000000000493180]                                 ; [rip+0006CEB7]
	call	4760B0h
	nop
	nop

;; fn00000000004262D0: 00000000004262D0
;;   Called from:
;;     00000000004262CF (in fn00000000004262A0)
fn00000000004262D0 proc
	sub	rsp,38h
	mov	rax,[rcx+20h]
	test	rax,rax
	jz	4262FFh

l00000000004262DD:
	movzx	eax,byte ptr [rax+rdx]
	add	rsp,38h
	ret
00000000004262E6                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l00000000004262F0:
	mov	rax,[rcx+30h]
	mov	r8,[rax]
	cmp	r8,rdx
	jbe	426336h

l00000000004262FC:
	mov	rcx,rax

l00000000004262FF:
	movzx	eax,byte ptr [rcx+18h]

l0000000000426303:
	cmp	al,1h
	jz	4262F0h

l0000000000426307:
	jc	426330h

l0000000000426309:
	cmp	al,3h
	ja	426303h

l000000000042630D:
	mov	rcx,[rcx+30h]
	lea	r9,[rsp+2Fh]
	mov	r8d,1h
	mov	rax,[rcx]
	call	qword ptr [rax+10h]
	movzx	eax,byte ptr [rsp+2Fh]
	add	rsp,38h
	ret
000000000042632C                                     0F 1F 40 00             ..@.

l0000000000426330:
	mov	rax,[rcx+30h]
	jmp	4262DDh

l0000000000426336:
	sub	rdx,r8
	mov	rcx,[rcx+38h]
	jmp	4262FFh
000000000042633F                                              90                .

;; fn0000000000426340: 0000000000426340
fn0000000000426340 proc
	sub	rsp,38h
	mov	rax,[rcx+20h]
	test	rax,rax
	jz	42636Fh

l000000000042634D:
	movzx	eax,word ptr [rax+rdx*2]
	add	rsp,38h
	ret
0000000000426356                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l0000000000426360:
	mov	rax,[rcx+30h]
	mov	r8,[rax]
	cmp	r8,rdx
	jbe	4263A6h

l000000000042636C:
	mov	rcx,rax

l000000000042636F:
	movzx	eax,byte ptr [rcx+18h]

l0000000000426373:
	cmp	al,1h
	jz	426360h

l0000000000426377:
	jc	4263A0h

l0000000000426379:
	cmp	al,3h
	ja	426373h

l000000000042637D:
	mov	rcx,[rcx+30h]
	lea	r9,[rsp+2Eh]
	mov	r8d,1h
	mov	rax,[rcx]
	call	qword ptr [rax+10h]
	movzx	eax,word ptr [rsp+2Eh]
	add	rsp,38h
	ret
000000000042639C                                     0F 1F 40 00             ..@.

l00000000004263A0:
	mov	rax,[rcx+30h]
	jmp	42634Dh

l00000000004263A6:
	sub	rdx,r8
	mov	rcx,[rcx+38h]
	jmp	42636Fh
00000000004263AF                                              90                .

;; fn00000000004263B0: 00000000004263B0
fn00000000004263B0 proc
	mov	rax,[rdx]
	cmp	[rcx],rax
	setz	al
	ret
00000000004263BA                               90 90 90 90 90 90           ......

;; fn00000000004263C0: 00000000004263C0
fn00000000004263C0 proc
	mov	rax,[rdx]
	cmp	[rcx],rax
	setz	al
	ret
00000000004263CA                               90 90 90 90 90 90           ......

;; fn00000000004263D0: 00000000004263D0
fn00000000004263D0 proc
	mov	rax,[rdx]
	cmp	[rcx],rax
	setz	al
	ret
00000000004263DA                               90 90 90 90 90 90           ......

;; fn00000000004263E0: 00000000004263E0
fn00000000004263E0 proc
	mov	rax,[rdx]
	cmp	[rcx],rax
	setz	al
	ret
00000000004263EA                               90 90 90 90 90 90           ......

;; fn00000000004263F0: 00000000004263F0
fn00000000004263F0 proc
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,28h
	mov	rsi,rcx
	mov	rbx,rdx
	mov	rbp,r8
	mov	edi,r9d
	call	448CF0h
	test	al,al
	jnz	426412h

l000000000042640D:
	cmp	edi,3h
	jbe	426420h

l0000000000426412:
	add	rsp,28h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
000000000042641B                                  0F 1F 44 00 00            ..D..

l0000000000426420:
	mov	rax,[rbx]
	mov	r8,rbp
	mov	rdx,rsi
	mov	rcx,rbx
	mov	rax,[rax+28h]
	add	rsp,28h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	jmp	rax
000000000042643B                                  90 90 90 90 90            .....

;; fn0000000000426440: 0000000000426440
;;   Called from:
;;     0000000000426574 (in fn0000000000426560)
;;     0000000000426746 (in fn0000000000426720)
fn0000000000426440 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	mov	rsi,r8
	mov	rbx,r9
	call	448CF0h
	test	al,al
	jz	426467h

l0000000000426455:
	mov	[rbx],rsi
	mov	qword ptr [rbx+10h],+10h
	mov	dword ptr [rbx+8h],6h

l0000000000426467:
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret
000000000042646E                                           90 90               ..

;; fn0000000000426470: 0000000000426470
fn0000000000426470 proc
	push	rbx
	sub	rsp,40h
	mov	rax,[rcx]
	mov	rbx,r8
	mov	qword ptr [rsp+20h],+0h
	mov	dword ptr [rsp+28h],0h
	mov	dword ptr [rsp+2Ch],10h
	mov	qword ptr [rsp+30h],+0h
	lea	r9,[rsp+20h]
	mov	r8,[r8]
	call	qword ptr [rax+30h]
	mov	edx,[rsp+28h]
	xor	eax,eax
	and	edx,6h
	cmp	edx,6h
	jnz	4264C3h

l00000000004264B6:
	mov	rax,[rsp+20h]
	mov	[rbx],rax
	mov	eax,1h

l00000000004264C3:
	add	rsp,40h
	pop	rbx
	ret
00000000004264C9                            90 90 90 90 90 90 90          .......

;; fn00000000004264D0: 00000000004264D0
fn00000000004264D0 proc
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,30h
	mov	rbx,[rsp+70h]
	cmp	rbx,[rsp+80h]
	mov	rsi,rcx
	mov	edi,r8d
	jz	426520h

l00000000004264EC:
	mov	rdx,r9
	mov	rcx,rsi
	call	448CF0h
	test	al,al
	jz	426510h

l00000000004264FB:
	mov	rax,[rsp+88h]
	mov	[rax],rbx
	mov	[rax+8h],edi
	mov	dword ptr [rax+10h],1h

l0000000000426510:
	xor	eax,eax
	add	rsp,30h
	pop	rbx
	pop	rsi
	pop	rdi
	ret
000000000042651A                               66 0F 1F 44 00 00           f..D..

l0000000000426520:
	mov	rdx,[rsp+78h]
	mov	[rsp+28h],r9
	call	448CF0h
	test	al,al
	mov	r9,[rsp+28h]
	jz	4264ECh

l0000000000426538:
	mov	rax,[rsp+88h]
	mov	[rax+0Ch],edi
	jmp	426510h
0000000000426545                90 90 90 90 90 90 90 90 90 90 90      ...........

;; fn0000000000426550: 0000000000426550
fn0000000000426550 proc
	xor	eax,eax
	cmp	[rsp+28h],r8
	setz	al
	lea	eax,[rax+rax*4+1h]
	ret
000000000042655F                                              90                .

;; fn0000000000426560: 0000000000426560
fn0000000000426560 proc
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,28h
	mov	rbp,rcx
	mov	rbx,rdx
	mov	rsi,r8
	mov	rdi,r9
	call	426440h
	test	al,al
	jz	426590h

l000000000042657D:
	add	rsp,28h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
0000000000426586                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l0000000000426590:
	mov	rcx,[rbp+10h]
	mov	r9,rdi
	mov	r8,rsi
	mov	rdx,rbx
	mov	rax,[rcx]
	mov	rax,[rax+30h]
	add	rsp,28h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	jmp	rax
00000000004265AF                                              90                .

;; fn00000000004265B0: 00000000004265B0
fn00000000004265B0 proc
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,28h
	mov	rbx,[rsp+90h]
	mov	r14,[rsp+98h]
	mov	rbp,rdx
	mov	rdx,r9
	mov	rdi,rcx
	mov	r15d,r8d
	mov	r12,r9
	mov	r13,[rsp+0A0h]
	mov	rsi,[rsp+0A8h]
	call	448CF0h
	test	al,al
	jz	426630h

l00000000004265F8:
	test	rbp,rbp
	mov	[rsi],rbx
	mov	[rsi+8h],r15d
	js	426680h

l0000000000426604:
	add	rbx,rbp
	xor	eax,eax
	cmp	r13,rbx
	setz	al
	lea	eax,[rax+rax*4+1h]
	mov	[rsi+10h],eax

l0000000000426616:
	xor	eax,eax
	add	rsp,28h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret
0000000000426629                            0F 1F 80 00 00 00 00          .......

l0000000000426630:
	cmp	rbx,r13
	jz	426690h

l0000000000426635:
	mov	rcx,[rdi+10h]
	mov	r9,r12
	mov	r8d,r15d
	mov	rdx,rbp
	mov	rax,[rcx]
	mov	[rsp+0A8h],rsi
	mov	[rsp+0A0h],r13
	mov	[rsp+98h],r14
	mov	[rsp+90h],rbx
	mov	rax,[rax+38h]
	add	rsp,28h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	jmp	rax
000000000042667C                                     0F 1F 40 00             ..@.

l0000000000426680:
	cmp	rbp,0FEh
	jnz	426616h

l0000000000426686:
	mov	dword ptr [rsi+10h],1h
	jmp	426616h
000000000042668F                                              90                .

l0000000000426690:
	mov	rdx,r14
	mov	rcx,rdi
	call	448CF0h
	test	al,al
	jz	426635h

l000000000042669F:
	mov	[rsi+0Ch],r15d
	jmp	426616h
00000000004266A8                         90 90 90 90 90 90 90 90         ........

;; fn00000000004266B0: 00000000004266B0
fn00000000004266B0 proc
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,30h
	mov	rbx,[rsp+70h]
	mov	rsi,rcx
	mov	rdi,rdx
	cmp	rbx,r8
	jz	4266E4h

l00000000004266C7:
	mov	rcx,[rsi+10h]
	mov	rdx,rdi
	mov	rax,[rcx]
	mov	[rsp+70h],rbx
	mov	rax,[rax+40h]
	add	rsp,30h
	pop	rbx
	pop	rsi
	pop	rdi
	jmp	rax

l00000000004266E4:
	mov	rdx,r9
	mov	[rsp+28h],r8
	mov	[rsp+20h],r9
	call	448CF0h
	test	al,al
	mov	r9,[rsp+20h]
	mov	r8,[rsp+28h]
	jz	4266C7h

l0000000000426704:
	mov	eax,6h
	add	rsp,30h
	pop	rbx
	pop	rsi
	pop	rdi
	ret
0000000000426711    90 90 90 90 90 90 90 90 90 90 90 90 90 90 90  ...............

;; fn0000000000426720: 0000000000426720
fn0000000000426720 proc
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,58h
	mov	rdi,r8
	mov	[rsp+0A0h],rcx
	mov	[rsp+0A8h],rdx
	mov	rbp,r9
	call	426440h
	test	al,al
	mov	r8d,eax
	jnz	4268C0h

l0000000000426756:
	mov	r12d,[rbp+0Ch]
	test	r12b,10h
	jnz	426930h

l0000000000426764:
	mov	rax,[rsp+0A0h]
	mov	rdx,[rsp+0A0h]
	xor	r15d,r15d
	mov	r13d,[rax+14h]
	mov	rax,r13
	shl	rax,4h
	lea	rsi,[rdx+rax+8h]
	lea	rax,[rsp+30h]
	mov	[rsp+20h],rax
	mov	eax,r12d
	and	eax,1h
	mov	[rsp+28h],eax
	jmp	426828h

l00000000004267A0:
	sar	r8,8h
	test	r14,r14
	jz	4267AFh

l00000000004267A9:
	add	r8,[rdi]
	mov	r8,[r8]

l00000000004267AF:
	add	r8,rdi

l00000000004267B2:
	mov	rcx,[rsi]
	mov	r9,[rsp+20h]
	mov	rdx,[rsp+0A8h]
	mov	rax,[rcx]
	call	qword ptr [rax+30h]
	test	al,al
	mov	r8d,eax
	jz	426820h

l00000000004267CF:
	test	r14,r14
	jz	4267E4h

l00000000004267D4:
	cmp	qword ptr [rsp+40h],10h
	jnz	4267E4h

l00000000004267DC:
	mov	rax,[rsi]
	mov	[rsp+40h],rax

l00000000004267E4:
	test	bl,bl
	mov	eax,[rsp+38h]
	jnz	4267F8h

l00000000004267EC:
	cmp	eax,3h
	jle	4267F8h

l00000000004267F1:
	and	eax,0FDh
	mov	[rsp+38h],eax

l00000000004267F8:
	mov	rdx,[rbp+10h]
	test	rdx,rdx
	jz	426880h

l0000000000426801:
	mov	rax,[rbp+0h]
	cmp	rax,[rsp+30h]
	jnz	42694Fh

l0000000000426810:
	test	rax,rax
	jz	4268D4h

l0000000000426819:
	mov	eax,[rsp+38h]
	or	[rbp+8h],eax

l0000000000426820:
	add	r15,1h
	sub	rsi,10h

l0000000000426828:
	cmp	r13,r15
	jz	426941h

l0000000000426831:
	mov	r8,[rsi+8h]
	mov	qword ptr [rsp+30h],+0h
	mov	dword ptr [rsp+38h],0h
	mov	[rsp+3Ch],r12d
	mov	qword ptr [rsp+40h],+0h
	mov	rbx,r8
	mov	r14,r8
	shr	rbx,1h
	and	r14d,1h
	and	ebx,1h
	jnz	42686Eh

l0000000000426866:
	mov	edx,[rsp+28h]
	test	edx,edx
	jz	426820h

l000000000042686E:
	test	rdi,rdi
	jnz	4267A0h

l0000000000426877:
	xor	r8d,r8d
	jmp	4267B2h
000000000042687F                                              90                .

l0000000000426880:
	mov	rax,[rsp+30h]
	mov	rdx,[rsp+40h]
	mov	[rbp+0h],rax
	mov	rax,[rsp+38h]
	mov	[rbp+10h],rdx
	cmp	eax,3h
	mov	[rbp+8h],rax
	jle	4268C0h

l00000000004268A0:
	test	al,2h
	jz	426910h

l00000000004268A4:
	mov	rax,[rsp+0A0h]
	test	byte ptr [rax+10h],1h
	jnz	426820h

l00000000004268B6:
	nop	word ptr cs:[rax+rax+0h]

l00000000004268C0:
	mov	eax,r8d
	add	rsp,58h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret

l00000000004268D4:
	mov	rcx,[rsp+40h]
	cmp	rcx,10h
	jz	4268FDh

l00000000004268DF:
	cmp	rdx,10h
	jz	4268FDh

l00000000004268E5:
	mov	[rsp+2Fh],r8b
	call	448CF0h
	test	al,al
	movzx	r8d,byte ptr [rsp+2Fh]
	jnz	426819h

l00000000004268FD:
	mov	dword ptr [rbp+8h],2h
	jmp	4268C0h
0000000000426906                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l0000000000426910:
	test	al,1h
	jz	4268C0h

l0000000000426914:
	mov	rax,[rsp+0A0h]
	test	byte ptr [rax+10h],2h
	jnz	426820h

l0000000000426926:
	jmp	4268C0h
0000000000426928                         0F 1F 84 00 00 00 00 00         ........

l0000000000426930:
	mov	rax,[rsp+0A0h]
	mov	r12d,[rax+10h]
	jmp	426764h

l0000000000426941:
	mov	eax,[rbp+8h]
	test	eax,eax
	setnz	r8b
	jmp	4268C0h

l000000000042694F:
	mov	qword ptr [rbp+0h],+0h
	mov	dword ptr [rbp+8h],2h
	jmp	4268C0h
0000000000426963          90 90 90 90 90 90 90 90 90 90 90 90 90    .............

;; fn0000000000426970: 0000000000426970
fn0000000000426970 proc
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,+88h
	mov	rbp,[rsp+108h]
	mov	[rsp+0D0h],rcx
	mov	r14,rdx
	mov	[rsp+0E0h],r8d
	mov	[rsp+0E8h],r9
	test	byte ptr [rbp+14h],10h
	jz	4269B2h

l00000000004269AC:
	mov	eax,[rcx+10h]
	mov	[rbp+14h],eax

l00000000004269B2:
	mov	rax,[rsp+100h]
	cmp	[rsp+0F0h],rax
	jz	426EA0h

l00000000004269C8:
	mov	rdx,[rsp+0E8h]
	mov	rcx,[rsp+0D0h]
	call	448CF0h
	test	al,al
	mov	[rsp+5Ah],al
	jnz	426C12h

l00000000004269E9:
	mov	r10,[rsp+100h]
	mov	eax,0h
	mov	[rsp+0D8h],r14
	mov	byte ptr [rsp+52h],0h
	mov	byte ptr [rsp+5Bh],0h
	mov	byte ptr [rsp+53h],1h
	sub	r10,r14
	test	r14,r14
	mov	r14,[rsp+0F0h]
	cmovns	rax,r10

l0000000000426A1F:
	mov	r15,rax
	mov	eax,[rsp+0E0h]
	or	eax,1h
	mov	[rsp+54h],eax
	lea	rax,[rsp+60h]
	mov	[rsp+48h],rax

l0000000000426A3A:
	mov	rax,[rsp+0D0h]
	mov	rbx,[rsp+0D0h]
	xor	r13d,r13d
	mov	eax,[rax+14h]
	mov	[rsp+40h],rax
	shl	rax,4h
	lea	r12,[rbx+rax+8h]
	jmp	426A9Ah

l0000000000426A60:
	test	rcx,rcx
	jz	426E40h

l0000000000426A69:
	mov	r8,[rsp+60h]
	cmp	rcx,r8
	jz	426DC0h

l0000000000426A77:
	test	al,al
	jnz	426BAAh

l0000000000426A7F:
	test	r8,r8
	jnz	426BAAh

l0000000000426A88:
	cmp	r9d,4h
	jz	426E90h

l0000000000426A92:
	add	r13,1h
	sub	r12,10h

l0000000000426A9A:
	cmp	[rsp+40h],r13
	jz	426E71h

l0000000000426AA5:
	mov	rdx,[r12+8h]
	mov	ecx,[rbp+14h]
	mov	qword ptr [rsp+60h],+0h
	mov	dword ptr [rsp+68h],0h
	mov	dword ptr [rsp+6Ch],0h
	mov	dword ptr [rsp+70h],0h
	mov	rax,rdx
	mov	[rsp+74h],ecx
	mov	r8d,[rsp+0E0h]
	sar	rax,8h
	test	dl,1h
	jz	426AF1h

l0000000000426AE6:
	add	rax,[r14]
	mov	r8d,[rsp+54h]
	mov	rax,[rax]

l0000000000426AF1:
	add	rax,r14
	test	r15,r15
	jz	426B0Bh

l0000000000426AF9:
	cmp	rax,r15
	seta	r9b
	cmp	r9b,[rsp+53h]
	jz	426D71h

l0000000000426B0B:
	and	edx,2h
	jnz	426B23h

l0000000000426B10:
	cmp	qword ptr [rsp+0D8h],0FEh
	jz	426D80h

l0000000000426B1F:
	and	r8d,0FDh

l0000000000426B23:
	mov	rcx,[r12]
	mov	rdi,[rsp+48h]
	mov	rsi,[rsp+0F8h]
	mov	r9,[rsp+0E8h]
	mov	rdx,[rsp+0D8h]
	mov	r11,[rcx]
	mov	[rsp+38h],rdi
	mov	rdi,[rsp+100h]
	mov	[rsp+28h],rsi
	mov	[rsp+20h],rax
	mov	[rsp+30h],rdi
	call	qword ptr [r11+38h]
	mov	ebx,[rsp+70h]
	mov	edx,[rsp+6Ch]
	or	edx,[rbp+0Ch]
	mov	ecx,ebx
	and	ecx,0FBh
	cmp	ecx,2h
	mov	r9d,edx
	mov	[rbp+0Ch],edx
	jz	426ED1h

l0000000000426B86:
	cmp	byte ptr [rsp+52h],0h
	mov	rcx,[rbp+0h]
	jz	426A60h

l0000000000426B95:
	test	rcx,rcx
	jnz	426A69h

l0000000000426B9E:
	cmp	qword ptr [rsp+60h],0h
	jz	426A88h

l0000000000426BAA:
	cmp	edx,3h
	mov	edi,[rbp+10h]
	jle	426C70h

l0000000000426BB6:
	and	edx,1h
	jz	426BC5h

l0000000000426BBB:
	test	byte ptr [rbp+14h],2h
	jnz	426C70h

l0000000000426BC5:
	test	edi,edi
	jnz	426D63h

l0000000000426BCD:
	test	ebx,ebx
	jz	426CDEh

l0000000000426BD5:
	mov	r11d,ebx
	mov	esi,1h
	mov	edi,1h

l0000000000426BE2:
	mov	eax,ebx
	xor	eax,esi
	cmp	eax,3h
	jle	426D43h

l0000000000426BEF:
	cmp	ebx,3h
	jg	426D90h

l0000000000426BF8:
	mov	eax,esi
	and	eax,2h

l0000000000426BFD:
	test	eax,eax
	mov	[rbp+10h],edi
	jnz	426C52h

l0000000000426C04:
	and	esi,1h
	jz	426C52h

l0000000000426C09:
	mov	r9d,[rbp+0Ch]
	jmp	426A88h

l0000000000426C12:
	mov	rax,[rsp+0F0h]
	test	r14,r14
	mov	[rbp+0h],rax
	mov	eax,[rsp+0E0h]
	mov	[rbp+8h],eax
	js	426EF0h

l0000000000426C31:
	add	r14,[rsp+0F0h]
	xor	eax,eax
	mov	byte ptr [rsp+5Ah],0h
	cmp	[rsp+100h],r14
	setz	al
	lea	eax,[rax+rax*4+1h]
	mov	[rbp+10h],eax

l0000000000426C52:
	movzx	eax,byte ptr [rsp+5Ah]
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
0000000000426C6B                                  0F 1F 44 00 00            ..D..

l0000000000426C70:
	test	edi,edi
	mov	esi,edi
	mov	r11d,ebx
	jle	426D14h

l0000000000426C7D:
	test	ebx,ebx
	jg	426BE2h

l0000000000426C85:
	cmp	edi,3h
	jle	426C9Eh

l0000000000426C8A:
	test	dil,1h
	jz	426D00h

l0000000000426C90:
	mov	rax,[rsp+0D0h]
	test	byte ptr [rax+10h],2h
	jz	426D00h

l0000000000426C9E:
	cmp	qword ptr [rsp+0D8h],0h
	mov	r8,[rsp+60h]
	js	426F10h

l0000000000426CB2:
	mov	rax,r8
	add	rax,[rsp+0D8h]
	cmp	[rsp+100h],rax
	jz	426FE2h

l0000000000426CCB:
	mov	edx,esi
	xor	edx,1h

l0000000000426CD0:
	mov	eax,esi
	and	eax,2h
	cmp	edx,3h
	jg	426BFDh

l0000000000426CDE:
	mov	qword ptr [rbp+0h],+0h
	mov	dword ptr [rbp+10h],1h
	mov	r9d,[rbp+0Ch]
	mov	byte ptr [rsp+52h],1h
	jmp	426A88h
0000000000426CFB                                  0F 1F 44 00 00            ..D..

l0000000000426D00:
	mov	eax,edi
	xor	eax,1h
	cmp	eax,3h
	jle	426CDEh

l0000000000426D0A:
	mov	eax,edi
	and	eax,2h
	jmp	426BFDh

l0000000000426D14:
	cmp	ebx,3h
	jle	426DD0h

l0000000000426D1D:
	test	bl,1h
	jz	426D34h

l0000000000426D22:
	mov	rax,[rsp+0D0h]
	test	byte ptr [rax+10h],2h
	jnz	426DD0h

l0000000000426D34:
	mov	eax,ebx
	mov	esi,1h
	xor	eax,1h
	cmp	eax,3h
	jg	426D90h

l0000000000426D43:
	and	ebx,esi

l0000000000426D45:
	cmp	ebx,3h
	jle	426CDEh

l0000000000426D4A:
	mov	qword ptr [rbp+0h],+0h
	mov	dword ptr [rbp+10h],2h
	mov	byte ptr [rsp+5Ah],1h
	jmp	426C52h

l0000000000426D63:
	test	ebx,ebx
	jz	426DB4h

l0000000000426D67:
	mov	r11d,ebx
	mov	esi,edi
	jmp	426BE2h

l0000000000426D71:
	mov	byte ptr [rsp+5Bh],1h
	jmp	426A92h
0000000000426D7B                                  0F 1F 44 00 00            ..D..

l0000000000426D80:
	and	ecx,3h
	jz	426A92h

l0000000000426D89:
	jmp	426B1Fh
0000000000426D8E                                           66 90               f.

l0000000000426D90:
	mov	r8,[rsp+60h]
	mov	eax,ebx
	and	eax,2h

l0000000000426D9A:
	mov	edx,[rsp+68h]
	mov	[rbp+0h],r8
	mov	esi,r11d
	mov	edi,ebx
	mov	byte ptr [rsp+52h],0h
	mov	[rbp+8h],edx
	jmp	426BFDh

l0000000000426DB4:
	mov	esi,edi

l0000000000426DB6:
	mov	edx,edi
	xor	edx,1h
	jmp	426CD0h

l0000000000426DC0:
	mov	eax,[rsp+68h]
	or	[rbp+8h],eax
	jmp	426A88h
0000000000426DCC                                     0F 1F 40 00             ..@.

l0000000000426DD0:
	cmp	qword ptr [rsp+0D8h],0h
	js	426F60h

l0000000000426DDF:
	add	rcx,[rsp+0D8h]
	cmp	[rsp+100h],rcx
	jz	426FCBh

l0000000000426DF5:
	test	ebx,ebx
	mov	esi,1h
	mov	edi,1h
	jg	426BE2h

l0000000000426E07:
	mov	r8,[rsp+60h]
	mov	rax,r8
	add	rax,[rsp+0D8h]
	cmp	[rsp+100h],rax
	jnz	426CCBh

l0000000000426E25:
	mov	eax,2h
	mov	r11d,6h
	mov	ebx,6h
	jmp	426D9Ah
0000000000426E3A                               66 0F 1F 44 00 00           f..D..

l0000000000426E40:
	mov	rdx,[rsp+60h]
	mov	ecx,[rsp+68h]
	test	r9d,r9d
	mov	[rbp+0h],rdx
	mov	[rbp+8h],ecx
	jz	426E68h

l0000000000426E55:
	test	rdx,rdx
	jz	426E68h

l0000000000426E5A:
	mov	rbx,[rsp+0D0h]
	test	byte ptr [rbx+10h],1h
	jz	426E95h

l0000000000426E68:
	mov	[rsp+52h],al
	jmp	426A88h

l0000000000426E71:
	movzx	eax,byte ptr [rsp+5Bh]
	mov	byte ptr [rsp+5Bh],1h
	and	al,[rsp+53h]
	mov	byte ptr [rsp+53h],0h
	test	al,al
	jnz	426A3Ah

l0000000000426E8C:
	nop	dword ptr [rax+0h]

l0000000000426E90:
	movzx	eax,byte ptr [rsp+52h]

l0000000000426E95:
	mov	[rsp+5Ah],al
	jmp	426C52h
0000000000426E9E                                           66 90               f.

l0000000000426EA0:
	mov	rdx,[rsp+0F8h]
	mov	rcx,[rsp+0D0h]
	call	448CF0h
	test	al,al
	jz	4269C8h

l0000000000426EBD:
	mov	eax,[rsp+0E0h]
	mov	byte ptr [rsp+5Ah],0h
	mov	[rbp+0Ch],eax
	jmp	426C52h

l0000000000426ED1:
	mov	rdx,[rsp+60h]
	mov	[rbp+10h],ebx
	mov	[rsp+5Ah],al
	mov	[rbp+0h],rdx
	mov	edx,[rsp+68h]
	mov	[rbp+8h],edx
	jmp	426C52h
0000000000426EED                                        0F 1F 00              ...

l0000000000426EF0:
	cmp	r14,0FEh
	mov	byte ptr [rsp+5Ah],0h
	jnz	426C52h

l0000000000426EFF:
	mov	dword ptr [rbp+10h],1h
	jmp	426C52h
0000000000426F0B                                  0F 1F 44 00 00            ..D..

l0000000000426F10:
	cmp	qword ptr [rsp+0D8h],0FEh
	jz	426DB6h

l0000000000426F1F:
	mov	rax,[rsp+0E8h]
	mov	rbx,[rsp+100h]
	mov	r9,[rsp+0F8h]
	mov	rdx,[rsp+0D8h]
	mov	rcx,[rsp+0E8h]
	mov	rax,[rax]
	mov	[rsp+20h],rbx
	call	qword ptr [rax+40h]
	mov	ebx,eax
	mov	r11d,eax
	jmp	426BE2h
0000000000426F5C                                     0F 1F 40 00             ..@.

l0000000000426F60:
	cmp	qword ptr [rsp+0D8h],0FEh
	jz	426FB4h

l0000000000426F6B:
	mov	rax,[rsp+0E8h]
	mov	rsi,[rsp+100h]
	mov	r8,rcx
	mov	[rsp+5Ch],r11d
	mov	r9,[rsp+0F8h]
	mov	rdx,[rsp+0D8h]
	mov	rcx,[rsp+0E8h]
	mov	rax,[rax]
	mov	[rsp+20h],rsi
	call	qword ptr [rax+40h]
	mov	r11d,[rsp+5Ch]
	mov	edi,eax
	mov	esi,eax
	jmp	426C7Dh

l0000000000426FB4:
	test	ebx,ebx
	mov	esi,1h
	mov	edi,1h
	jg	426BE2h

l0000000000426FC6:
	jmp	426CDEh

l0000000000426FCB:
	test	ebx,ebx
	mov	esi,6h
	mov	edi,6h
	jg	426BE2h

l0000000000426FDD:
	jmp	426BF8h

l0000000000426FE2:
	mov	eax,edi
	xor	eax,6h
	cmp	eax,3h
	jg	426E25h

l0000000000426FF0:
	mov	ebx,edi
	and	ebx,6h
	jmp	426D45h
0000000000426FFA                               90 90 90 90 90 90           ......

;; fn0000000000427000: 0000000000427000
fn0000000000427000 proc
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,38h
	mov	r12,[rsp+0A0h]
	mov	rbx,rcx
	mov	rbp,rdx
	mov	r15,r8
	mov	r13,r9
	cmp	r8,r12
	jz	4270C0h

l000000000042702D:
	mov	r14d,[rbx+14h]
	xor	edi,edi
	mov	rax,r14
	shl	rax,4h
	lea	rbx,[rbx+rax+8h]
	jmp	42708Eh

l0000000000427041:
	mov	rax,[rbx+8h]
	test	al,2h
	jz	427086h

l0000000000427049:
	mov	r10,rax
	sar	r10,8h
	and	eax,1h
	mov	rsi,rax
	jz	42705Eh

l0000000000427058:
	cmp	rbp,0FDh
	jz	427086h

l000000000042705E:
	test	rsi,rsi
	jz	427069h

l0000000000427063:
	add	r10,[r15]
	mov	r10,[r10]

l0000000000427069:
	mov	rcx,[rbx]
	mov	r9,r13
	lea	r8,[r15+r10]
	mov	rdx,rbp
	mov	rax,[rcx]
	mov	[rsp+20h],r12
	call	qword ptr [rax+40h]
	cmp	eax,3h
	jg	4270B0h

l0000000000427086:
	add	rdi,1h
	sub	rbx,10h

l000000000042708E:
	cmp	rdi,r14
	jnz	427041h

l0000000000427093:
	mov	eax,1h

l0000000000427098:
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
00000000004270A9                            0F 1F 80 00 00 00 00          .......

l00000000004270B0:
	mov	edx,eax
	or	edx,1h
	test	rsi,rsi
	cmovnz	eax,edx

l00000000004270BB:
	jmp	427098h
00000000004270BD                                        0F 1F 00              ...

l00000000004270C0:
	mov	rdx,r9
	call	448CF0h
	mov	edx,eax
	mov	eax,6h
	test	dl,dl
	jnz	427098h

l00000000004270D3:
	jmp	42702Dh
00000000004270D8                         90 90 90 90 90 90 90 90         ........

;; fn00000000004270E0: 00000000004270E0
fn00000000004270E0 proc
	lea	rax,[000000000048E0A0]                                 ; [rip+00066FB9]
	ret
00000000004270E8                         90 90 90 90 90 90 90 90         ........

;; fn00000000004270F0: 00000000004270F0
fn00000000004270F0 proc
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,30h
	xor	edx,edx
	lea	rdi,[rsp+2Fh]
	mov	rbx,rcx
	mov	esi,r8d
	xor	ecx,ecx
	mov	r8,rdi
	call	4505D0h
	cmp	esi,2h
	mov	[rbx],rax
	jz	4271B5h

l000000000042711A:
	jle	427170h

l000000000042711C:
	cmp	esi,3h
	jz	427150h

l0000000000427121:
	cmp	esi,4h
	jnz	427195h

l0000000000427126:
	lea	rdx,[000000000048E0A7]                                 ; [rip+00066F7A]
	mov	r8d,0Eh
	mov	rcx,rbx
	call	4511C0h
	mov	rax,rbx
	add	rsp,30h
	pop	rbx
	pop	rsi
	pop	rdi
	ret
0000000000427146                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l0000000000427150:
	lea	rdx,[000000000048E0E9]                                 ; [rip+00066F92]
	mov	r8d,13h
	mov	rcx,rbx
	call	4511C0h
	mov	rax,rbx
	add	rsp,30h
	pop	rbx
	pop	rsi
	pop	rdi
	ret

l0000000000427170:
	cmp	esi,1h
	jnz	427195h

l0000000000427175:
	lea	rdx,[000000000048E0B6]                                 ; [rip+00066F3A]
	mov	r8d,18h
	mov	rcx,rbx
	call	4511C0h
	mov	rax,rbx
	add	rsp,30h
	pop	rbx
	pop	rsi
	pop	rdi
	ret

l0000000000427195:
	lea	rdx,[000000000048E0FD]                                 ; [rip+00066F61]
	mov	r8d,0Dh
	mov	rcx,rbx
	call	4511C0h
	mov	rax,rbx
	add	rsp,30h
	pop	rbx
	pop	rsi
	pop	rdi
	ret

l00000000004271B5:
	lea	rdx,[000000000048E0CF]                                 ; [rip+00066F13]
	mov	r8d,19h
	mov	rcx,rbx
	call	4511C0h
	mov	rax,rbx
	add	rsp,30h
	pop	rbx
	pop	rsi
	pop	rdi
	ret
00000000004271D5                48 8B 13 48 89 C6 48 8D 4A E8 48      H..H..H.J.H
00000000004271E0 89 FA E8 79 98 02 00 48 89 F1 E8 C1 A3 FE FF 90 ...y...H........

;; fn00000000004271F0: 00000000004271F0
fn00000000004271F0 proc
	lea	rax,[000000000048E098]                                 ; [rip+00066EA1]
	ret
00000000004271F8                         90 90 90 90 90 90 90 90         ........

;; fn0000000000427200: 0000000000427200
fn0000000000427200 proc
	push	rbx
	sub	rsp,30h
	mov	rbx,rcx
	mov	ecx,r8d
	call	41BE00h
	lea	r8,[rsp+2Fh]
	mov	rdx,rax
	mov	rcx,rbx
	call	451EA0h
	mov	rax,rbx
	add	rsp,30h
	pop	rbx
	ret
0000000000427229                            90 90 90 90 90 90 90          .......

;; fn0000000000427230: 0000000000427230
fn0000000000427230 proc
	lea	rax,[000000000048E090]                                 ; [rip+00066E59]
	ret
0000000000427238                         90 90 90 90 90 90 90 90         ........

;; fn0000000000427240: 0000000000427240
fn0000000000427240 proc
	push	rbx
	sub	rsp,30h
	mov	rbx,rcx
	mov	ecx,r8d
	call	41BE00h
	lea	r8,[rsp+2Fh]
	mov	rdx,rax
	mov	rcx,rbx
	call	451EA0h
	mov	rax,rbx
	add	rsp,30h
	pop	rbx
	ret
0000000000427269                            90 90 90 90 90 90 90          .......

;; fn0000000000427270: 0000000000427270
;;   Called from:
;;     0000000000424A18 (in fn0000000000424A00)
;;     0000000000464D43 (in fn0000000000464D30)
fn0000000000427270 proc
	push	rbp
	mov	rbp,rsp
	mov	[rbp+10h],rcx
	mov	rax,1FFFFFFFFFFFFFFFh
	pop	rbp
	ret
0000000000427284             90 90 90 90 90 90 90 90 90 90 90 90     ............

;; fn0000000000427290: 0000000000427290
;;   Called from:
;;     0000000000424B68 (in fn0000000000424B50)
;;     0000000000464F53 (in fn0000000000464F40)
fn0000000000427290 proc
	push	rbp
	mov	rbp,rsp
	mov	[rbp+10h],rcx
	mov	rax,-1h
	pop	rbp
	ret
00000000004272A1    90 90 90 90 90 90 90 90 90 90 90 90 90 90 90  ...............

;; fn00000000004272B0: 00000000004272B0
fn00000000004272B0 proc
	lea	rax,[000000000048D7C0]                                 ; [rip+00066509]
	ret
00000000004272B8                         90 90 90 90 90 90 90 90         ........

;; fn00000000004272C0: 00000000004272C0
fn00000000004272C0 proc
	lea	rax,[000000000048E340]                                 ; [rip+00067079]
	ret
00000000004272C8                         90 90 90 90 90 90 90 90         ........

;; fn00000000004272D0: 00000000004272D0
fn00000000004272D0 proc
	lea	rax,[000000000048D7E8]                                 ; [rip+00066511]
	ret
00000000004272D8                         90 90 90 90 90 90 90 90         ........

;; fn00000000004272E0: 00000000004272E0
fn00000000004272E0 proc
	lea	rax,[000000000048E310]                                 ; [rip+00067029]
	ret
00000000004272E8                         90 90 90 90 90 90 90 90         ........

;; fn00000000004272F0: 00000000004272F0
fn00000000004272F0 proc
	mov	rcx,[rcx]
	mov	eax,1h
	cmp	rdx,rcx
	jc	42730Bh

l00000000004272FD:
	mov	rax,[rcx-18h]
	lea	rax,[rcx+rax*2]
	cmp	rdx,rax
	seta	al

l000000000042730B:
	ret
000000000042730D                                        90 90 90              ...

;; fn0000000000427310: 0000000000427310
fn0000000000427310 proc
	push	rsi
	push	rbx
	sub	rsp,38h
	mov	rsi,rcx
	mov	rcx,rdx
	mov	rbx,rdx
	mov	[rsp+28h],r8
	call	41BD38h
	mov	r8,[rsp+28h]
	mov	r9,rax
	mov	rdx,rbx
	mov	rcx,rsi
	add	rsp,38h
	pop	rbx
	pop	rsi
	jmp	427350h
0000000000427342       90 90 90 90 90 90 90 90 90 90 90 90 90 90   ..............

;; fn0000000000427350: 0000000000427350
;;   Called from:
;;     000000000042733D (in fn0000000000427310)
;;     00000000004273B7 (in fn00000000004273B0)
fn0000000000427350 proc
	mov	r11,[rcx]
	test	r9,r9
	mov	rax,[r11-18h]
	jz	427361h

l000000000042735C:
	test	rax,rax
	jnz	42736Ah

l0000000000427361:
	mov	rax,-1h

l0000000000427368:
	ret

l000000000042736A:
	sub	rax,1h
	cmp	r8,rax
	cmovbe	rax,r8

l0000000000427375:
	test	rdx,rdx
	movzx	r10d,word ptr [r11+rax*2]
	jz	427395h

l000000000042737F:
	mov	r8,r9
	mov	rcx,rdx

l0000000000427385:
	cmp	r10w,[rcx]
	jz	427368h

l000000000042738B:
	add	rcx,2h
	sub	r8,1h
	jnz	427385h

l0000000000427395:
	test	rax,rax
	lea	rcx,[rax-1h]
	jz	427361h

l000000000042739E:
	mov	rax,rcx
	jmp	427375h
00000000004273A3          90 90 90 90 90 90 90 90 90 90 90 90 90    .............

;; fn00000000004273B0: 00000000004273B0
fn00000000004273B0 proc
	mov	rdx,[rdx]
	mov	r9,[rdx-18h]
	jmp	427350h
00000000004273BC                                     90 90 90 90             ....

;; fn00000000004273C0: 00000000004273C0
fn00000000004273C0 proc
	mov	r9,[rcx]
	mov	rax,-1h
	mov	rcx,[r9-18h]
	test	rcx,rcx
	jnz	4273D5h

l00000000004273D3:
	ret

l00000000004273D5:
	add	rax,rcx
	cmp	r8,rax
	cmovbe	rax,r8

l00000000004273DF:
	jmp	4273F0h

l00000000004273E1:
	lea	rcx,[rax-1h]
	cmp	dx,[r9+rcx*2+2h]
	jz	4273D3h

l00000000004273ED:
	mov	rax,rcx

l00000000004273F0:
	cmp	rax,0FFh
	jnz	4273E1h

l00000000004273F6:
	ret
00000000004273F8                         90 90 90 90 90 90 90 90         ........

;; fn0000000000427400: 0000000000427400
fn0000000000427400 proc
	push	rsi
	push	rbx
	sub	rsp,38h
	mov	rsi,rcx
	mov	rcx,rdx
	mov	rbx,rdx
	mov	[rsp+28h],r8
	call	41BD38h
	mov	r8,[rsp+28h]
	mov	r9,rax
	mov	rdx,rbx
	mov	rcx,rsi
	add	rsp,38h
	pop	rbx
	pop	rsi
	jmp	427440h
0000000000427432       90 90 90 90 90 90 90 90 90 90 90 90 90 90   ..............

;; fn0000000000427440: 0000000000427440
;;   Called from:
;;     000000000042742D (in fn0000000000427400)
;;     00000000004274B7 (in fn00000000004274B0)
fn0000000000427440 proc
	mov	rax,-1h
	test	r9,r9
	jz	427492h

l000000000042744C:
	mov	r11,[rcx]
	mov	r10,[r11-18h]
	cmp	r8,r10
	jnc	427494h

l0000000000427458:
	sub	r9,1h
	nop	dword ptr [rax+0h]

l0000000000427460:
	test	rdx,rdx
	movzx	ecx,word ptr [r11+r8*2]
	jz	427482h

l000000000042746A:
	cmp	cx,[rdx]
	jz	4274A0h

l000000000042746F:
	xor	eax,eax
	jmp	42747Dh

l0000000000427473:
	add	rax,1h
	cmp	cx,[rdx+rax*2]
	jz	4274A0h

l000000000042747D:
	cmp	rax,r9
	jnz	427473h

l0000000000427482:
	add	r8,1h
	cmp	r8,r10
	jc	427460h

l000000000042748B:
	mov	rax,-1h

l0000000000427492:
	ret

l0000000000427494:
	ret
0000000000427496                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l00000000004274A0:
	mov	rax,r8
	ret
00000000004274A4             90 90 90 90 90 90 90 90 90 90 90 90     ............

;; fn00000000004274B0: 00000000004274B0
fn00000000004274B0 proc
	mov	rdx,[rdx]
	mov	r9,[rdx-18h]
	jmp	427440h
00000000004274BC                                     90 90 90 90             ....

;; fn00000000004274C0: 00000000004274C0
fn00000000004274C0 proc
	movzx	edx,dx
	jmp	427940h
00000000004274C8                         90 90 90 90 90 90 90 90         ........

;; fn00000000004274D0: 00000000004274D0
fn00000000004274D0 proc
	mov	rax,rcx
	ret
00000000004274D4             90 90 90 90 90 90 90 90 90 90 90 90     ............

;; fn00000000004274E0: 00000000004274E0
fn00000000004274E0 proc
	sub	rsp,28h
	mov	rcx,[rcx]
	mov	rax,1FFFFFFFFFFFFFFCh
	sub	rax,[rcx-18h]
	add	rdx,rax
	cmp	rdx,r8
	jc	427502h

l00000000004274FD:
	add	rsp,28h
	ret

l0000000000427502:
	mov	rcx,r9
	call	470E60h
	nop
	nop
	nop
	nop
	nop
	nop

;; fn0000000000427510: 0000000000427510
;;   Called from:
;;     000000000042750F (in fn00000000004274E0)
fn0000000000427510 proc
	push	rsi
	push	rbx
	sub	rsp,38h
	mov	rsi,rcx
	mov	rcx,rdx
	mov	rbx,rdx
	mov	[rsp+28h],r8
	call	41BD38h
	mov	r8,[rsp+28h]
	mov	r9,rax
	mov	rdx,rbx
	mov	rcx,rsi
	add	rsp,38h
	pop	rbx
	pop	rsi
	jmp	427550h
0000000000427542       90 90 90 90 90 90 90 90 90 90 90 90 90 90   ..............

;; fn0000000000427550: 0000000000427550
;;   Called from:
;;     000000000042753D (in fn0000000000427510)
;;     00000000004275D7 (in fn00000000004275D0)
fn0000000000427550 proc
	mov	r11,[rcx]
	mov	rax,-1h
	mov	rcx,[r11-18h]
	test	rcx,rcx
	jnz	427565h

l0000000000427563:
	ret

l0000000000427565:
	add	rcx,rax
	lea	r10,[r9-1h]
	cmp	r8,rcx
	mov	rax,rcx
	cmovbe	rax,r8

l0000000000427576:
	nop	word ptr cs:[rax+rax+0h]

l0000000000427580:
	test	rdx,rdx
	movzx	r8d,word ptr [r11+rax*2]
	jz	427563h

l000000000042758A:
	test	r9,r9
	jz	427563h

l000000000042758F:
	cmp	r8w,[rdx]
	jz	4275B2h

l0000000000427595:
	xor	ecx,ecx
	jmp	4275ABh
0000000000427599                            0F 1F 80 00 00 00 00          .......

l00000000004275A0:
	add	rcx,1h
	cmp	r8w,[rdx+rcx*2]
	jz	4275B2h

l00000000004275AB:
	cmp	rcx,r10
	jnz	4275A0h

l00000000004275B0:
	ret

l00000000004275B2:
	test	rax,rax
	lea	rcx,[rax-1h]
	jz	4275C0h

l00000000004275BB:
	mov	rax,rcx
	jmp	427580h

l00000000004275C0:
	mov	rax,-1h
	ret
00000000004275C8                         90 90 90 90 90 90 90 90         ........

;; fn00000000004275D0: 00000000004275D0
fn00000000004275D0 proc
	mov	rdx,[rdx]
	mov	r9,[rdx-18h]
	jmp	427550h
00000000004275DC                                     90 90 90 90             ....

;; fn00000000004275E0: 00000000004275E0
fn00000000004275E0 proc
	mov	r9,[rcx]
	mov	rax,-1h
	mov	rcx,[r9-18h]
	test	rcx,rcx
	jnz	4275F5h

l00000000004275F3:
	ret

l00000000004275F5:
	add	rcx,rax
	cmp	r8,rcx
	mov	rax,rcx
	cmovbe	rax,r8

l0000000000427602:
	jmp	427610h

l0000000000427604:
	test	rax,rax
	lea	rcx,[rax-1h]
	jz	427620h

l000000000042760D:
	mov	rax,rcx

l0000000000427610:
	cmp	[r9+rax*2],dx
	jz	427604h

l0000000000427617:
	jmp	4275F3h
0000000000427619                            0F 1F 80 00 00 00 00          .......

l0000000000427620:
	mov	rax,-1h
	ret
0000000000427628                         90 90 90 90 90 90 90 90         ........

;; fn0000000000427630: 0000000000427630
fn0000000000427630 proc
	push	rsi
	push	rbx
	sub	rsp,38h
	mov	rsi,rcx
	mov	rcx,rdx
	mov	rbx,rdx
	mov	[rsp+28h],r8
	call	41BD38h
	mov	r8,[rsp+28h]
	mov	r9,rax
	mov	rdx,rbx
	mov	rcx,rsi
	add	rsp,38h
	pop	rbx
	pop	rsi
	jmp	427670h
0000000000427662       90 90 90 90 90 90 90 90 90 90 90 90 90 90   ..............

;; fn0000000000427670: 0000000000427670
;;   Called from:
;;     000000000042765D (in fn0000000000427630)
;;     00000000004276E7 (in fn00000000004276E0)
fn0000000000427670 proc
	push	rbx
	mov	rbx,[rcx]
	mov	rax,-1h
	mov	r11,[rbx-18h]
	cmp	r8,r11
	jnc	4276B4h

l0000000000427684:
	test	rdx,rdx
	movzx	r10d,word ptr [rbx+r8*2]
	jz	4276B1h

l000000000042768E:
	lea	rcx,[r9+rax]

l0000000000427692:
	test	r9,r9
	jz	4276B1h

l0000000000427697:
	cmp	r10w,[rdx]
	jz	4276C0h

l000000000042769D:
	xor	eax,eax
	jmp	4276ACh

l00000000004276A1:
	add	rax,1h
	cmp	r10w,[rdx+rax*2]
	jz	4276C0h

l00000000004276AC:
	cmp	rax,rcx
	jnz	4276A1h

l00000000004276B1:
	mov	rax,r8

l00000000004276B4:
	pop	rbx
	ret
00000000004276B6                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l00000000004276C0:
	add	r8,1h
	cmp	r11,r8
	jbe	4276D0h

l00000000004276C9:
	movzx	r10d,word ptr [rbx+r8*2]
	jmp	427692h

l00000000004276D0:
	mov	rax,-1h
	pop	rbx
	ret
00000000004276D9                            90 90 90 90 90 90 90          .......

;; fn00000000004276E0: 00000000004276E0
fn00000000004276E0 proc
	mov	rdx,[rdx]
	mov	r9,[rdx-18h]
	jmp	427670h
00000000004276EC                                     90 90 90 90             ....

;; fn00000000004276F0: 00000000004276F0
fn00000000004276F0 proc
	mov	rcx,[rcx]
	mov	rax,-1h
	mov	r9,[rcx-18h]
	cmp	r8,r9
	jnc	427727h

l0000000000427703:
	movzx	eax,word ptr [rcx+r8*2]
	cmp	ax,dx
	jz	427717h

l000000000042770D:
	jmp	427730h
000000000042770F                                              90                .

l0000000000427710:
	cmp	[rcx+r8*2],ax
	jnz	427730h

l0000000000427717:
	add	r8,1h
	cmp	r8,r9
	jc	427710h

l0000000000427720:
	mov	rax,-1h

l0000000000427727:
	ret
0000000000427729                            0F 1F 80 00 00 00 00          .......

l0000000000427730:
	mov	rax,r8
	ret
0000000000427734             90 90 90 90 90 90 90 90 90 90 90 90     ............

;; fn0000000000427740: 0000000000427740
fn0000000000427740 proc
	sub	rsp,28h
	mov	rax,[rcx]
	mov	r8,[rax-18h]
	cmp	rdx,r8
	jnc	427759h

l0000000000427750:
	lea	rax,[rax+rdx*2]
	add	rsp,28h
	ret

l0000000000427759:
	lea	rcx,[000000000048D9A8]                                 ; [rip+00066248]
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

;; fn0000000000427770: 0000000000427770
;;   Called from:
;;     000000000042776F (in fn0000000000427740)
fn0000000000427770 proc
	mov	rax,[rcx]
	mov	rdx,[rax-18h]
	lea	rax,[rax+rdx*2]
	ret
000000000042777C                                     90 90 90 90             ....

;; fn0000000000427780: 0000000000427780
fn0000000000427780 proc
	mov	eax,[rcx+10h]
	shr	eax,1Fh
	ret
0000000000427787                      90 90 90 90 90 90 90 90 90        .........

;; fn0000000000427790: 0000000000427790
fn0000000000427790 proc
	mov	eax,[rcx+10h]
	test	eax,eax
	setg	al
	ret
0000000000427799                            90 90 90 90 90 90 90          .......

;; fn00000000004277A0: 00000000004277A0
fn00000000004277A0 proc
	mov	rax,[rcx]
	mov	rdx,[rax-18h]
	lea	rax,[rax+rdx*2-2h]
	ret
00000000004277AD                                        90 90 90              ...

;; fn00000000004277B0: 00000000004277B0
fn00000000004277B0 proc
	mov	rax,[rcx]
	mov	rdx,[rax-18h]
	lea	rax,[rax+rdx*2]
	ret
00000000004277BC                                     90 90 90 90             ....

;; fn00000000004277C0: 00000000004277C0
;;   Called from:
;;     0000000000464774 (in fn00000000004645D0)
;;     0000000000464856 (in fn00000000004645D0)
;;     000000000046767F (in fn0000000000467480)
;;     0000000000467757 (in fn0000000000467480)
;;     0000000000467841 (in fn0000000000467480)
;;     000000000046800F (in fn0000000000467E10)
;;     00000000004680E7 (in fn0000000000467E10)
;;     00000000004681D1 (in fn0000000000467E10)
fn00000000004277C0 proc
	push	rbx
	sub	rsp,20h
	mov	rax,r9
	mov	r9,[rcx]
	mov	r10,rdx
	mov	rbx,[r9-18h]
	cmp	rax,rbx
	ja	427815h

l00000000004277D7:
	sub	rbx,rax
	cmp	rbx,r8
	cmova	rbx,r8

l00000000004277E1:
	test	rbx,rbx
	jz	4277FCh

l00000000004277E6:
	cmp	rbx,1h
	lea	rdx,[r9+rax*2]
	jz	427805h

l00000000004277F0:
	lea	r8,[rbx+rbx]
	mov	rcx,r10
	call	41BCC0h

l00000000004277FC:
	mov	rax,rbx
	add	rsp,20h
	pop	rbx
	ret

l0000000000427805:
	movzx	eax,word ptr [rdx]
	mov	[r10],ax
	mov	rax,rbx
	add	rsp,20h
	pop	rbx
	ret

l0000000000427815:
	lea	rdx,[000000000048D9EC]                                 ; [rip+000661D0]
	lea	rcx,[000000000048D970]                                 ; [rip+0006614D]
	mov	r9,rbx
	mov	r8,rax
	call	471560h
	nop
	nop

;; fn0000000000427830: 0000000000427830
;;   Called from:
;;     000000000042782F (in fn0000000000428570)
fn0000000000427830 proc
	mov	rax,[rcx]
	ret
0000000000427834             90 90 90 90 90 90 90 90 90 90 90 90     ............

;; fn0000000000427840: 0000000000427840
fn0000000000427840 proc
	push	rsi
	push	rbx
	sub	rsp,38h
	mov	rsi,rcx
	mov	rcx,rdx
	mov	rbx,rdx
	mov	[rsp+28h],r8
	call	41BD38h
	mov	r8,[rsp+28h]
	mov	r9,rax
	mov	rdx,rbx
	mov	rcx,rsi
	add	rsp,38h
	pop	rbx
	pop	rsi
	jmp	427880h
0000000000427872       90 90 90 90 90 90 90 90 90 90 90 90 90 90   ..............

;; fn0000000000427880: 0000000000427880
;;   Called from:
;;     000000000042786D (in fn0000000000427840)
;;     0000000000427937 (in fn0000000000427930)
fn0000000000427880 proc
	push	r14
	push	rdi
	push	rsi
	push	rbx
	mov	r11,[rcx]
	test	r9,r9
	mov	rcx,[r11-18h]
	jnz	4278A5h

l0000000000427891:
	cmp	r8,rcx
	mov	rax,-1h
	cmovbe	rax,r8

l000000000042789F:
	pop	rbx
	pop	rsi
	pop	rdi
	pop	r14
	ret

l00000000004278A5:
	cmp	r9,rcx
	mov	rax,-1h
	ja	42789Fh

l00000000004278B1:
	sub	rcx,r9
	cmp	r8,rcx
	mov	r10,rcx
	ja	42789Fh

l00000000004278BC:
	add	r8,1h
	movzx	esi,word ptr [rdx]
	add	r9,rax
	lea	rcx,[r11+r8*2]
	lea	rdi,[rdx+2h]
	jmp	4278DDh

l00000000004278D0:
	add	r8,1h
	add	rcx,2h
	cmp	r11,r10
	ja	427920h

l00000000004278DD:
	cmp	[rcx-2h],si
	lea	rax,[r8-1h]
	mov	r11,r8
	jnz	4278D0h

l00000000004278EA:
	cmp	rdi,rcx
	mov	rbx,r9
	jz	42789Fh

l00000000004278F2:
	test	r9,r9
	jz	42789Fh

l00000000004278F7:
	test	rdi,rdi
	jz	4278D0h

l00000000004278FC:
	xor	r11d,r11d
	jmp	42790Bh

l0000000000427901:
	add	r11,2h
	sub	rbx,1h
	jz	42789Fh

l000000000042790B:
	movzx	r14d,word ptr [rdx+r11+2h]
	cmp	[rcx+r11],r14w
	jz	427901h

l0000000000427918:
	mov	r11,r8
	jmp	4278D0h
000000000042791D                                        0F 1F 00              ...

l0000000000427920:
	mov	rax,-1h
	jmp	42789Fh
000000000042792C                                     90 90 90 90             ....

;; fn0000000000427930: 0000000000427930
fn0000000000427930 proc
	mov	rdx,[rdx]
	mov	r9,[rdx-18h]
	jmp	427880h
000000000042793C                                     90 90 90 90             ....

;; fn0000000000427940: 0000000000427940
;;   Called from:
;;     00000000004274C3 (in fn00000000004274C0)
fn0000000000427940 proc
	mov	r10,[rcx]
	mov	rax,-1h
	mov	r9d,edx
	mov	rcx,[r10-18h]
	cmp	r8,rcx
	jc	427960h

l0000000000427956:
	ret
0000000000427958                         0F 1F 84 00 00 00 00 00         ........

l0000000000427960:
	sub	rcx,r8
	lea	r8,[r10+r8*2]
	test	r8,r8
	jz	427956h

l000000000042796C:
	test	rcx,rcx
	jz	427956h

l0000000000427971:
	cmp	[r8],dx
	jz	4279A0h

l0000000000427977:
	mov	rdx,rcx
	jmp	427986h
000000000042797C                                     0F 1F 40 00             ..@.

l0000000000427980:
	cmp	[r8],r9w
	jz	4279A0h

l0000000000427986:
	add	r8,2h
	sub	rdx,1h
	jnz	427980h

l0000000000427990:
	mov	rax,-1h
	ret
0000000000427998                         0F 1F 84 00 00 00 00 00         ........

l00000000004279A0:
	sub	r8,r10
	mov	rax,r8
	sar	rax,1h
	ret
00000000004279AA                               90 90 90 90 90 90           ......

;; fn00000000004279B0: 00000000004279B0
fn00000000004279B0 proc
	mov	rdx,[rdx]
	mov	rax,rcx
	mov	[rcx],rdx
	ret
00000000004279BA                               90 90 90 90 90 90           ......

;; fn00000000004279C0: 00000000004279C0
fn00000000004279C0 proc
	mov	rax,[rcx]
	mov	rax,[rax-18h]
	ret
00000000004279C8                         90 90 90 90 90 90 90 90         ........

;; fn00000000004279D0: 00000000004279D0
fn00000000004279D0 proc
	mov	rax,[rcx]
	ret
00000000004279D4             90 90 90 90 90 90 90 90 90 90 90 90     ............

;; fn00000000004279E0: 00000000004279E0
fn00000000004279E0 proc
	mov	rax,[rcx]
	ret
00000000004279E4             90 90 90 90 90 90 90 90 90 90 90 90     ............

;; fn00000000004279F0: 00000000004279F0
fn00000000004279F0 proc
	mov	rdx,[rdx]
	mov	rax,rcx
	mov	[rcx],rdx
	ret
00000000004279FA                               90 90 90 90 90 90           ......

;; fn0000000000427A00: 0000000000427A00
fn0000000000427A00 proc
	mov	rax,[rcx]
	cmp	qword ptr [rax-18h],0h
	setz	al
	ret
0000000000427A0C                                     90 90 90 90             ....

;; fn0000000000427A10: 0000000000427A10
fn0000000000427A10 proc
	mov	rax,[rcx]
	ret
0000000000427A14             90 90 90 90 90 90 90 90 90 90 90 90     ............

;; fn0000000000427A20: 0000000000427A20
fn0000000000427A20 proc
	push	rsi
	push	rbx
	sub	rsp,38h
	mov	rsi,rcx
	mov	rcx,rdx
	mov	rbx,rdx
	mov	[rsp+28h],r8
	call	41BD38h
	mov	r8,[rsp+28h]
	mov	r9,rax
	mov	rdx,rbx
	mov	rcx,rsi
	add	rsp,38h
	pop	rbx
	pop	rsi
	jmp	427A60h
0000000000427A52       90 90 90 90 90 90 90 90 90 90 90 90 90 90   ..............

;; fn0000000000427A60: 0000000000427A60
;;   Called from:
;;     0000000000427A4D (in fn0000000000427A20)
;;     0000000000427B07 (in fn0000000000427B00)
fn0000000000427A60 proc
	push	rsi
	push	rbx
	mov	r10,[rcx]
	mov	rax,-1h
	mov	rcx,[r10-18h]
	cmp	r9,rcx
	jbe	427A80h

l0000000000427A75:
	pop	rbx
	pop	rsi
	ret
0000000000427A78                         0F 1F 84 00 00 00 00 00         ........

l0000000000427A80:
	sub	rcx,r9
	mov	rax,r8
	cmp	rcx,r8
	cmovbe	rax,rcx

l0000000000427A8D:
	test	r9,r9
	setz	bl
	lea	r8,[r10+rax*2]
	jmp	427AB0h
0000000000427A99                            0F 1F 80 00 00 00 00          .......

l0000000000427AA0:
	sub	r8,2h
	test	rax,rax
	lea	rcx,[rax-1h]
	jz	427AF0h

l0000000000427AAD:
	mov	rax,rcx

l0000000000427AB0:
	cmp	rdx,r8
	mov	rcx,r8
	jz	427A75h

l0000000000427AB8:
	test	bl,bl
	jnz	427A75h

l0000000000427ABC:
	test	r8,r8
	setnz	r11b
	test	rdx,rdx
	setnz	r10b
	cmp	r11b,r10b
	jnz	427AA0h

l0000000000427ACF:
	mov	r11,r9
	mov	r10,rdx

l0000000000427AD5:
	movzx	esi,word ptr [r10]
	cmp	[rcx],si
	jnz	427AA0h

l0000000000427ADE:
	add	rcx,2h
	add	r10,2h
	sub	r11,1h
	jnz	427AD5h

l0000000000427AEC:
	pop	rbx
	pop	rsi
	ret
0000000000427AEF                                              90                .

l0000000000427AF0:
	mov	rax,-1h
	pop	rbx
	pop	rsi
	ret
0000000000427AFA                               90 90 90 90 90 90           ......

;; fn0000000000427B00: 0000000000427B00
fn0000000000427B00 proc
	mov	rdx,[rdx]
	mov	r9,[rdx-18h]
	jmp	427A60h
0000000000427B0C                                     90 90 90 90             ....

;; fn0000000000427B10: 0000000000427B10
fn0000000000427B10 proc
	mov	r9,[rcx]
	mov	rax,-1h
	mov	rcx,[r9-18h]
	test	rcx,rcx
	jnz	427B25h

l0000000000427B23:
	ret

l0000000000427B25:
	add	rax,rcx
	cmp	r8,rax
	cmovbe	rax,r8

l0000000000427B2F:
	jmp	427B40h

l0000000000427B31:
	lea	rcx,[rax-1h]
	cmp	[r9+rcx*2+2h],dx
	jz	427B23h

l0000000000427B3D:
	mov	rax,rcx

l0000000000427B40:
	cmp	rax,0FFh
	jnz	427B31h

l0000000000427B46:
	ret
0000000000427B48                         90 90 90 90 90 90 90 90         ........

;; fn0000000000427B50: 0000000000427B50
fn0000000000427B50 proc
	mov	rax,[rcx]
	sub	rax,18h
	ret
0000000000427B58                         90 90 90 90 90 90 90 90         ........

;; fn0000000000427B60: 0000000000427B60
fn0000000000427B60 proc
	mov	rax,[rcx]
	ret
0000000000427B64             90 90 90 90 90 90 90 90 90 90 90 90     ............

;; fn0000000000427B70: 0000000000427B70
fn0000000000427B70 proc
	mov	rax,[rcx]
	mov	rax,[rax-18h]
	ret
0000000000427B78                         90 90 90 90 90 90 90 90         ........

;; fn0000000000427B80: 0000000000427B80
fn0000000000427B80 proc
	mov	rdx,[rdx]
	mov	rax,rcx
	mov	rcx,[rdx-18h]
	lea	rdx,[rdx+rcx*2]
	mov	[rax],rdx
	ret
0000000000427B92       90 90 90 90 90 90 90 90 90 90 90 90 90 90   ..............

;; fn0000000000427BA0: 0000000000427BA0
fn0000000000427BA0 proc
	push	rbx
	sub	rsp,20h
	mov	rax,[rdx]
	mov	rbx,rcx
	mov	rax,[rax-18h]
	cmp	r8,rax
	ja	427BC2h

l0000000000427BB4:
	call	44A990h
	mov	rax,rbx
	add	rsp,20h
	pop	rbx
	ret

l0000000000427BC2:
	lea	rdx,[000000000048DB0D]                                 ; [rip+00065F44]
	lea	rcx,[000000000048D970]                                 ; [rip+00065DA0]
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

;; fn0000000000427BE0: 0000000000427BE0
;;   Called from:
;;     0000000000427BDF (in fn0000000000427BA0)
fn0000000000427BE0 proc
	mov	rax,[rcx]
	ret
0000000000427BE4             90 90 90 90 90 90 90 90 90 90 90 90     ............

;; fn0000000000427BF0: 0000000000427BF0
fn0000000000427BF0 proc
	mov	rax,[rcx]
	mov	rdx,[rax-18h]
	lea	rax,[rax+rdx*2]
	ret
0000000000427BFC                                     90 90 90 90             ....

;; fn0000000000427C00: 0000000000427C00
fn0000000000427C00 proc
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,20h
	mov	rax,[rcx]
	mov	rdi,rcx
	mov	rcx,rdx
	mov	rbx,rdx
	mov	rsi,[rax-18h]
	call	41BD38h
	mov	rdx,[rdi]
	cmp	rax,rsi
	mov	r8,rsi
	cmovbe	r8,rax

l0000000000427C29:
	test	r8,r8
	jz	427C80h

l0000000000427C2E:
	cmp	rbx,rdx
	jz	427C80h

l0000000000427C33:
	test	rdx,rdx
	setnz	r9b
	test	rbx,rbx
	setnz	cl
	cmp	r9b,cl
	jz	427C60h

l0000000000427C45:
	cmp	rbx,1h
	sbb	eax,eax
	and	eax,2h
	sub	eax,1h

l0000000000427C51:
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	ret
0000000000427C59                            0F 1F 80 00 00 00 00          .......

l0000000000427C60:
	mov	rcx,r8

l0000000000427C63:
	movzx	edi,word ptr [rbx]
	cmp	[rdx],di
	jnz	427CB0h

l0000000000427C6B:
	add	rdx,2h
	add	rbx,2h
	sub	rcx,1h
	jnz	427C63h

l0000000000427C79:
	nop	dword ptr [rax+0h]

l0000000000427C80:
	sub	rsi,rax
	mov	eax,7FFFFFFFh
	cmp	rsi,+7FFFFFFFh
	jg	427C51h

l0000000000427C91:
	cmp	rsi,-80000000h
	mov	eax,80000000h
	cmovge	eax,esi

l0000000000427CA0:
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	ret
0000000000427CA8                         0F 1F 84 00 00 00 00 00         ........

l0000000000427CB0:
	sbb	eax,eax
	or	eax,1h
	jmp	427C51h
0000000000427CB7                      90 90 90 90 90 90 90 90 90        .........

;; fn0000000000427CC0: 0000000000427CC0
fn0000000000427CC0 proc
	mov	rax,[rdx]
	mov	rcx,[rcx]
	mov	r9,[rax-18h]
	mov	r8,[rcx-18h]
	cmp	r9,r8
	mov	rdx,r8
	cmovbe	rdx,r9

l0000000000427CD8:
	test	rdx,rdx
	jz	427D00h

l0000000000427CDD:
	cmp	rcx,rax
	jz	427D00h

l0000000000427CE2:
	movzx	r10d,word ptr [rax]
	cmp	[rcx],r10w
	jnz	427D24h

l0000000000427CEC:
	add	rcx,2h
	add	rax,2h
	sub	rdx,1h
	jnz	427CE2h

l0000000000427CFA:
	nop	word ptr [rax+rax+0h]

l0000000000427D00:
	sub	r8,r9
	mov	eax,7FFFFFFFh
	cmp	r8,+7FFFFFFFh
	jle	427D13h

l0000000000427D11:
	ret

l0000000000427D13:
	cmp	r8,-80000000h
	mov	eax,80000000h
	cmovge	eax,r8d

l0000000000427D23:
	ret

l0000000000427D24:
	sbb	eax,eax
	or	eax,1h
	ret
0000000000427D2A                               90 90 90 90 90 90           ......

;; fn0000000000427D30: 0000000000427D30
fn0000000000427D30 proc
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,28h
	mov	rax,[rcx]
	mov	rsi,r9
	mov	rbp,rcx
	mov	rdi,rdx
	mov	r9,[rax-18h]
	cmp	rdx,r9
	ja	427E07h

l0000000000427D51:
	mov	rbx,r9
	mov	rcx,rsi
	sub	rbx,rdx
	cmp	rbx,r8
	cmova	rbx,r8

l0000000000427D61:
	call	41BD38h
	mov	r9,rbx
	cmp	rax,rbx
	mov	rdx,[rbp+0h]
	cmovbe	r9,rax

l0000000000427D74:
	test	r9,r9
	lea	rdx,[rdx+rdi*2]
	jz	427DD0h

l0000000000427D7D:
	cmp	rsi,rdx
	jz	427DD0h

l0000000000427D82:
	test	rdx,rdx
	setnz	r8b
	test	rsi,rsi
	setnz	cl
	cmp	r8b,cl
	jz	427DB0h

l0000000000427D94:
	cmp	rsi,1h
	sbb	eax,eax
	and	eax,2h
	sub	eax,1h

l0000000000427DA0:
	add	rsp,28h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
0000000000427DA9                            0F 1F 80 00 00 00 00          .......

l0000000000427DB0:
	mov	rcx,r9

l0000000000427DB3:
	movzx	edi,word ptr [rsi]
	cmp	[rdx],di
	jnz	427E00h

l0000000000427DBB:
	add	rdx,2h
	add	rsi,2h
	sub	rcx,1h
	jnz	427DB3h

l0000000000427DC9:
	nop	dword ptr [rax+0h]

l0000000000427DD0:
	sub	rbx,rax
	mov	eax,7FFFFFFFh
	cmp	rbx,+7FFFFFFFh
	jg	427DA0h

l0000000000427DE1:
	cmp	rbx,-80000000h
	mov	eax,80000000h
	cmovge	eax,ebx

l0000000000427DF0:
	add	rsp,28h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
0000000000427DF9                            0F 1F 80 00 00 00 00          .......

l0000000000427E00:
	sbb	eax,eax
	or	eax,1h
	jmp	427DA0h

l0000000000427E07:
	mov	r8,rdx
	lea	rcx,[000000000048D970]                                 ; [rip+00065B5F]
	lea	rdx,[000000000048D9FF]                                 ; [rip+00065BE7]
	call	471560h
	nop
	nop
	nop

;; fn0000000000427E20: 0000000000427E20
;;   Called from:
;;     0000000000427E1F (in fn0000000000427D30)
fn0000000000427E20 proc
	sub	rsp,28h
	mov	r11,[rcx]
	mov	r10,[rsp+50h]
	mov	rax,[r11-18h]
	cmp	rdx,rax
	ja	427ED7h

l0000000000427E39:
	sub	rax,rdx
	mov	rcx,r10
	cmp	rax,r8
	cmovbe	r8,rax

l0000000000427E46:
	lea	rax,[r11+rdx*2]
	cmp	r8,r10
	cmovbe	rcx,r8

l0000000000427E51:
	test	rcx,rcx
	jz	427EA0h

l0000000000427E56:
	cmp	rax,r9
	jz	427EA0h

l0000000000427E5B:
	test	rax,rax
	setnz	r11b
	test	r9,r9
	setnz	dl
	cmp	r11b,dl
	jz	427E80h

l0000000000427E6D:
	cmp	r9,1h
	sbb	eax,eax
	and	eax,2h
	sub	eax,1h

l0000000000427E79:
	add	rsp,28h
	ret
0000000000427E7E                                           66 90               f.

l0000000000427E80:
	mov	rdx,rcx

l0000000000427E83:
	movzx	ecx,word ptr [r9]
	cmp	[rax],cx
	jnz	427ED0h

l0000000000427E8C:
	add	rax,2h
	add	r9,2h
	sub	rdx,1h
	jnz	427E83h

l0000000000427E9A:
	nop	word ptr [rax+rax+0h]

l0000000000427EA0:
	sub	r8,r10
	mov	eax,7FFFFFFFh
	cmp	r8,+7FFFFFFFh
	jg	427E79h

l0000000000427EB1:
	cmp	r8,-80000000h
	mov	eax,80000000h
	cmovge	eax,r8d

l0000000000427EC1:
	add	rsp,28h
	ret
0000000000427EC6                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l0000000000427ED0:
	sbb	eax,eax
	or	eax,1h
	jmp	427E79h

l0000000000427ED7:
	mov	r8,rdx
	lea	rcx,[000000000048D970]                                 ; [rip+00065A8F]
	lea	rdx,[000000000048D9FF]                                 ; [rip+00065B17]
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
	nop
	nop

;; fn0000000000427F00: 0000000000427F00
;;   Called from:
;;     0000000000427EFF (in fn0000000000427E20)
fn0000000000427F00 proc
	sub	rsp,28h
	mov	r11,[rcx]
	mov	rax,[r11-18h]
	cmp	rdx,rax
	ja	427FA7h

l0000000000427F14:
	mov	rcx,[r9]
	sub	rax,rdx
	lea	rdx,[r11+rdx*2]
	cmp	rax,r8
	cmovbe	r8,rax

l0000000000427F25:
	mov	r10,[rcx-18h]
	cmp	r8,r10
	mov	r9,r10
	cmovbe	r9,r8

l0000000000427F33:
	test	r9,r9
	jz	427F70h

l0000000000427F38:
	cmp	rdx,rcx
	jz	427F70h

l0000000000427F3D:
	test	rdx,rdx
	mov	eax,0FFFFFFFFh
	jnz	427F50h

l0000000000427F47:
	add	rsp,28h
	ret
0000000000427F4C                                     0F 1F 40 00             ..@.

l0000000000427F50:
	mov	rax,r9

l0000000000427F53:
	movzx	r11d,word ptr [rcx]
	cmp	[rdx],r11w
	jnz	427FA0h

l0000000000427F5D:
	add	rdx,2h
	add	rcx,2h
	sub	rax,1h
	jnz	427F53h

l0000000000427F6B:
	nop	dword ptr [rax+rax+0h]

l0000000000427F70:
	sub	r8,r10
	mov	eax,7FFFFFFFh
	cmp	r8,+7FFFFFFFh
	jg	427F47h

l0000000000427F81:
	cmp	r8,-80000000h
	mov	eax,80000000h
	cmovge	eax,r8d

l0000000000427F91:
	add	rsp,28h
	ret
0000000000427F96                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l0000000000427FA0:
	sbb	eax,eax
	or	eax,1h
	jmp	427F47h

l0000000000427FA7:
	mov	r8,rdx
	lea	rcx,[000000000048D970]                                 ; [rip+000659BF]
	lea	rdx,[000000000048D9FF]                                 ; [rip+00065A47]
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
	nop
	nop

;; fn0000000000427FD0: 0000000000427FD0
;;   Called from:
;;     0000000000427FCF (in fn0000000000427F00)
fn0000000000427FD0 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	mov	r11,[rcx]
	mov	r10,[rsp+60h]
	mov	rsi,[rsp+68h]
	mov	rax,[r11-18h]
	cmp	rdx,rax
	ja	4280B7h

l0000000000427FF0:
	mov	rbx,[r9]
	mov	r9,[rbx-18h]
	cmp	r10,r9
	ja	4280D0h

l0000000000428000:
	sub	rax,rdx
	lea	rdx,[r11+rdx*2]
	cmp	rax,r8
	cmovbe	r8,rax

l000000000042800E:
	sub	r9,r10
	lea	rax,[rbx+r10*2]
	cmp	r9,rsi
	cmova	r9,rsi

l000000000042801C:
	cmp	r8,r9
	mov	rcx,r9
	cmovbe	rcx,r8

l0000000000428026:
	test	rcx,rcx
	jz	428080h

l000000000042802B:
	cmp	rax,rdx
	jz	428080h

l0000000000428030:
	test	rdx,rdx
	setnz	r11b
	test	rax,rax
	setnz	r10b
	cmp	r11b,r10b
	jz	428060h

l0000000000428043:
	cmp	rax,1h
	sbb	eax,eax
	and	eax,2h
	sub	eax,1h

l000000000042804F:
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret
0000000000428056                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l0000000000428060:
	movzx	ebx,word ptr [rax]
	cmp	[rdx],bx
	jnz	4280B0h

l0000000000428068:
	add	rdx,2h
	add	rax,2h
	sub	rcx,1h
	jnz	428060h

l0000000000428076:
	nop	word ptr cs:[rax+rax+0h]

l0000000000428080:
	sub	r8,r9
	mov	eax,7FFFFFFFh
	cmp	r8,+7FFFFFFFh
	jg	42804Fh

l0000000000428091:
	cmp	r8,-80000000h
	mov	eax,80000000h
	cmovge	eax,r8d

l00000000004280A1:
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret
00000000004280A8                         0F 1F 84 00 00 00 00 00         ........

l00000000004280B0:
	sbb	eax,eax
	or	eax,1h
	jmp	42804Fh

l00000000004280B7:
	mov	r8,rdx
	lea	rcx,[000000000048D970]                                 ; [rip+000658AF]
	lea	rdx,[000000000048D9FF]                                 ; [rip+00065937]
	mov	r9,rax
	call	471560h

l00000000004280D0:
	lea	rdx,[000000000048D9FF]                                 ; [rip+00065928]
	lea	rcx,[000000000048D970]                                 ; [rip+00065892]
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

;; fn00000000004280F0: 00000000004280F0
;;   Called from:
;;     00000000004280EF (in fn0000000000427FD0)
fn00000000004280F0 proc
	mov	rdx,[rdx]
	mov	rax,rcx
	mov	rcx,[rdx-18h]
	lea	rdx,[rdx+rcx*2]
	mov	[rax],rdx
	ret
0000000000428102       90 90 90 90 90 90 90 90 90 90 90 90 90 90   ..............

;; fn0000000000428110: 0000000000428110
fn0000000000428110 proc
	sub	rsp,28h
	mov	rax,rdx
	mov	rdx,[rcx]
	mov	r9,[rdx-18h]
	cmp	rax,r9
	ja	428128h

l0000000000428123:
	add	rsp,28h
	ret

l0000000000428128:
	lea	rcx,[000000000048D970]                                 ; [rip+00065841]
	mov	rdx,r8
	mov	r8,rax
	call	471560h
	nop
	nop
	nop
	nop
	nop
	nop

;; fn0000000000428140: 0000000000428140
;;   Called from:
;;     000000000042813F (in fn0000000000428110)
fn0000000000428140 proc
	mov	rax,[rcx]
	mov	rax,[rax-18h]
	sub	rax,rdx
	cmp	rax,r8
	cmova	rax,r8

l0000000000428151:
	ret
0000000000428152       90 90 90 90 90 90 90 90 90 90 90 90 90 90   ..............

;; fn0000000000428160: 0000000000428160
fn0000000000428160 proc
	mov	rax,[rcx]
	mov	rax,[rax-10h]
	ret
0000000000428168                         90 90 90 90 90 90 90 90         ........

;; fn0000000000428170: 0000000000428170
fn0000000000428170 proc
	mov	rax,1FFFFFFFFFFFFFFCh
	ret
000000000042817B                                  90 90 90 90 90            .....

;; fn0000000000428180: 0000000000428180
fn0000000000428180 proc
	mov	rax,[rcx]
	ret
0000000000428184             90 90 90 90 90 90 90 90 90 90 90 90     ............

;; fn0000000000428190: 0000000000428190
fn0000000000428190 proc
	mov	rax,[rcx]
	lea	rax,[rax+rdx*2]
	ret
0000000000428198                         90 90 90 90 90 90 90 90         ........

;; fn00000000004281A0: 00000000004281A0
fn00000000004281A0 proc
	mov	rax,[rcx+8h]
	ret
00000000004281A5                90 90 90 90 90 90 90 90 90 90 90      ...........

;; fn00000000004281B0: 00000000004281B0
fn00000000004281B0 proc
	movzx	eax,byte ptr [rcx]
	ret
00000000004281B4             90 90 90 90 90 90 90 90 90 90 90 90     ............

;; fn00000000004281C0: 00000000004281C0
fn00000000004281C0 proc
	movzx	eax,byte ptr [rcx]
	ret
00000000004281C4             90 90 90 90 90 90 90 90 90 90 90 90     ............

;; fn00000000004281D0: 00000000004281D0
fn00000000004281D0 proc
	mov	rcx,[rcx]
	mov	eax,1h
	cmp	rdx,rcx
	jc	4281E7h

l00000000004281DD:
	add	rcx,[rcx-18h]
	cmp	rdx,rcx
	seta	al

l00000000004281E7:
	ret
00000000004281E9                            90 90 90 90 90 90 90          .......

;; fn00000000004281F0: 00000000004281F0
fn00000000004281F0 proc
	push	rsi
	push	rbx
	sub	rsp,38h
	mov	rsi,rcx
	mov	rcx,rdx
	mov	rbx,rdx
	mov	[rsp+28h],r8
	call	41BCB8h
	mov	r8,[rsp+28h]
	mov	r9,rax
	mov	rdx,rbx
	mov	rcx,rsi
	add	rsp,38h
	pop	rbx
	pop	rsi
	jmp	428230h
0000000000428222       90 90 90 90 90 90 90 90 90 90 90 90 90 90   ..............

;; fn0000000000428230: 0000000000428230
;;   Called from:
;;     000000000042821D (in fn00000000004281F0)
;;     00000000004282B7 (in fn00000000004282B0)
fn0000000000428230 proc
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,28h
	mov	rdi,[rcx]
	test	r9,r9
	mov	rax,[rdi-18h]
	jz	428249h

l0000000000428244:
	test	rax,rax
	jnz	428260h

l0000000000428249:
	mov	rax,-1h
	add	rsp,28h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
0000000000428259                            0F 1F 80 00 00 00 00          .......

l0000000000428260:
	sub	rax,1h
	mov	rbx,r8
	mov	rsi,r9
	cmp	r8,rax
	mov	rbp,rdx
	cmova	rbx,rax

l0000000000428274:
	jmp	42828Ch
0000000000428276                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l0000000000428280:
	test	rbx,rbx
	lea	rax,[rbx-1h]
	jz	428249h

l0000000000428289:
	mov	rbx,rax

l000000000042828C:
	movsx	edx,byte ptr [rdi+rbx]
	mov	r8,rsi
	mov	rcx,rbp
	call	41BD98h
	test	rax,rax
	jz	428280h

l00000000004282A0:
	mov	rax,rbx
	add	rsp,28h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
00000000004282AC                                     90 90 90 90             ....

;; fn00000000004282B0: 00000000004282B0
fn00000000004282B0 proc
	mov	rdx,[rdx]
	mov	r9,[rdx-18h]
	jmp	428230h
00000000004282BC                                     90 90 90 90             ....

;; fn00000000004282C0: 00000000004282C0
fn00000000004282C0 proc
	mov	r9,[rcx]
	mov	rax,-1h
	mov	rcx,[r9-18h]
	test	rcx,rcx
	jnz	4282D5h

l00000000004282D3:
	ret

l00000000004282D5:
	add	rax,rcx
	cmp	r8,rax
	cmovbe	rax,r8

l00000000004282DF:
	jmp	4282EEh

l00000000004282E1:
	cmp	dl,[r9+rax]
	lea	rcx,[rax-1h]
	jz	4282D3h

l00000000004282EB:
	mov	rax,rcx

l00000000004282EE:
	cmp	rax,0FFh
	jnz	4282E1h

l00000000004282F4:
	ret
00000000004282F6                   90 90 90 90 90 90 90 90 90 90       ..........

;; fn0000000000428300: 0000000000428300
fn0000000000428300 proc
	push	rsi
	push	rbx
	sub	rsp,38h
	mov	rsi,rcx
	mov	rcx,rdx
	mov	rbx,rdx
	mov	[rsp+28h],r8
	call	41BCB8h
	mov	r8,[rsp+28h]
	mov	r9,rax
	mov	rdx,rbx
	mov	rcx,rsi
	add	rsp,38h
	pop	rbx
	pop	rsi
	jmp	428340h
0000000000428332       90 90 90 90 90 90 90 90 90 90 90 90 90 90   ..............

;; fn0000000000428340: 0000000000428340
;;   Called from:
;;     000000000042832D (in fn0000000000428300)
;;     00000000004283B7 (in fn00000000004283B0)
fn0000000000428340 proc
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,20h
	mov	rax,-1h
	test	r9,r9
	mov	r12,rdx
	mov	rbx,r8
	mov	rdi,r9
	jz	428395h

l000000000042835F:
	mov	rbp,[rcx]
	mov	rsi,[rbp-18h]
	cmp	rsi,r8
	jbe	428395h

l000000000042836B:
	nop	dword ptr [rax+rax+0h]

l0000000000428370:
	movsx	edx,byte ptr [rbp+rbx+0h]
	mov	r8,rdi
	mov	rcx,r12
	call	41BD98h
	test	rax,rax
	jnz	4283A0h

l0000000000428385:
	add	rbx,1h
	cmp	rsi,rbx
	ja	428370h

l000000000042838E:
	mov	rax,-1h

l0000000000428395:
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret

l00000000004283A0:
	mov	rax,rbx
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
00000000004283AE                                           90 90               ..

;; fn00000000004283B0: 00000000004283B0
fn00000000004283B0 proc
	mov	rdx,[rdx]
	mov	r9,[rdx-18h]
	jmp	428340h
00000000004283BC                                     90 90 90 90             ....

;; fn00000000004283C0: 00000000004283C0
fn00000000004283C0 proc
	movsx	edx,dl
	jmp	428860h
00000000004283C8                         90 90 90 90 90 90 90 90         ........

;; fn00000000004283D0: 00000000004283D0
fn00000000004283D0 proc
	mov	rax,rcx
	ret
00000000004283D4             90 90 90 90 90 90 90 90 90 90 90 90     ............

;; fn00000000004283E0: 00000000004283E0
fn00000000004283E0 proc
	sub	rsp,28h
	mov	rcx,[rcx]
	mov	rax,3FFFFFFFFFFFFFF9h
	sub	rax,[rcx-18h]
	add	rdx,rax
	cmp	rdx,r8
	jc	428402h

l00000000004283FD:
	add	rsp,28h
	ret

l0000000000428402:
	mov	rcx,r9
	call	470E60h
	nop
	nop
	nop
	nop
	nop
	nop

;; fn0000000000428410: 0000000000428410
;;   Called from:
;;     000000000042840F (in fn00000000004283E0)
fn0000000000428410 proc
	push	rsi
	push	rbx
	sub	rsp,38h
	mov	rsi,rcx
	mov	rcx,rdx
	mov	rbx,rdx
	mov	[rsp+28h],r8
	call	41BCB8h
	mov	r8,[rsp+28h]
	mov	r9,rax
	mov	rdx,rbx
	mov	rcx,rsi
	add	rsp,38h
	pop	rbx
	pop	rsi
	jmp	428450h
0000000000428442       90 90 90 90 90 90 90 90 90 90 90 90 90 90   ..............

;; fn0000000000428450: 0000000000428450
;;   Called from:
;;     000000000042843D (in fn0000000000428410)
;;     00000000004284D7 (in fn00000000004284D0)
fn0000000000428450 proc
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,28h
	mov	rsi,[rcx]
	mov	rax,-1h
	mov	rcx,[rsi-18h]
	test	rcx,rcx
	jnz	428474h

l000000000042846B:
	add	rsp,28h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret

l0000000000428474:
	add	rcx,rax
	mov	rbp,r9
	mov	rdi,rdx
	cmp	r8,rcx
	cmovbe	rcx,r8

l0000000000428484:
	mov	rbx,rcx
	jmp	42849Ch
0000000000428489                            0F 1F 80 00 00 00 00          .......

l0000000000428490:
	test	rbx,rbx
	lea	rax,[rbx-1h]
	jz	4284C0h

l0000000000428499:
	mov	rbx,rax

l000000000042849C:
	movsx	edx,byte ptr [rsi+rbx]
	mov	r8,rbp
	mov	rcx,rdi
	call	41BD98h
	test	rax,rax
	jnz	428490h

l00000000004284B0:
	mov	rax,rbx
	add	rsp,28h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
00000000004284BC                                     0F 1F 40 00             ..@.

l00000000004284C0:
	mov	rax,-1h
	add	rsp,28h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret

;; fn00000000004284D0: 00000000004284D0
fn00000000004284D0 proc
	mov	rdx,[rdx]
	mov	r9,[rdx-18h]
	jmp	428450h
00000000004284DC                                     90 90 90 90             ....

;; fn00000000004284E0: 00000000004284E0
fn00000000004284E0 proc
	mov	r9,[rcx]
	mov	rax,-1h
	mov	rcx,[r9-18h]
	test	rcx,rcx
	jnz	4284F5h

l00000000004284F3:
	ret

l00000000004284F5:
	add	rcx,rax
	cmp	r8,rcx
	mov	rax,rcx
	cmovbe	rax,r8

l0000000000428502:
	jmp	428510h

l0000000000428504:
	test	rax,rax
	lea	rcx,[rax-1h]
	jz	428520h

l000000000042850D:
	mov	rax,rcx

l0000000000428510:
	cmp	[r9+rax],dl
	jz	428504h

l0000000000428516:
	jmp	4284F3h
0000000000428518                         0F 1F 84 00 00 00 00 00         ........

l0000000000428520:
	mov	rax,-1h
	ret
0000000000428528                         90 90 90 90 90 90 90 90         ........

;; fn0000000000428530: 0000000000428530
fn0000000000428530 proc
	push	rsi
	push	rbx
	sub	rsp,38h
	mov	rsi,rcx
	mov	rcx,rdx
	mov	rbx,rdx
	mov	[rsp+28h],r8
	call	41BCB8h
	mov	r8,[rsp+28h]
	mov	r9,rax
	mov	rdx,rbx
	mov	rcx,rsi
	add	rsp,38h
	pop	rbx
	pop	rsi
	jmp	428570h
0000000000428562       90 90 90 90 90 90 90 90 90 90 90 90 90 90   ..............

;; fn0000000000428570: 0000000000428570
;;   Called from:
;;     000000000042855D (in fn0000000000428530)
;;     00000000004285F7 (in fn00000000004285F0)
fn0000000000428570 proc
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,20h
	mov	rsi,[rcx]
	mov	rax,-1h
	mov	r12,rdx
	mov	rbx,r8
	mov	rbp,r9
	mov	rdi,[rsi-18h]
	cmp	r8,rdi
	jc	4285A9h

l0000000000428596:
	jmp	4285C0h
0000000000428598                         0F 1F 84 00 00 00 00 00         ........

l00000000004285A0:
	add	rbx,1h
	cmp	rbx,rdi
	jnc	4285D0h

l00000000004285A9:
	movsx	edx,byte ptr [rsi+rbx]
	mov	r8,rbp
	mov	rcx,r12
	call	41BD98h
	test	rax,rax
	jnz	4285A0h

l00000000004285BD:
	mov	rax,rbx

l00000000004285C0:
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
00000000004285CB                                  0F 1F 44 00 00            ..D..

l00000000004285D0:
	mov	rax,-1h
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
00000000004285E2       90 90 90 90 90 90 90 90 90 90 90 90 90 90   ..............

;; fn00000000004285F0: 00000000004285F0
fn00000000004285F0 proc
	mov	rdx,[rdx]
	mov	r9,[rdx-18h]
	jmp	428570h
00000000004285FC                                     90 90 90 90             ....

;; fn0000000000428600: 0000000000428600
;;   Called from:
;;     0000000000442A72 (in fn0000000000442560)
;;     0000000000443892 (in fn0000000000443380)
;;     0000000000444A42 (in fn0000000000444610)
;;     0000000000445972 (in fn0000000000445540)
fn0000000000428600 proc
	mov	rcx,[rcx]
	mov	rax,-1h
	mov	r9,[rcx-18h]
	cmp	r8,r9
	jnc	428636h

l0000000000428613:
	movzx	eax,byte ptr [rcx+r8]
	cmp	al,dl
	jz	428626h

l000000000042861C:
	jmp	428640h
000000000042861E                                           66 90               f.

l0000000000428620:
	cmp	[rcx+r8],al
	jnz	428640h

l0000000000428626:
	add	r8,1h
	cmp	r8,r9
	jc	428620h

l000000000042862F:
	mov	rax,-1h

l0000000000428636:
	ret
0000000000428638                         0F 1F 84 00 00 00 00 00         ........

l0000000000428640:
	mov	rax,r8
	ret
0000000000428644             90 90 90 90 90 90 90 90 90 90 90 90     ............

;; fn0000000000428650: 0000000000428650
fn0000000000428650 proc
	sub	rsp,28h
	mov	rax,[rcx]
	mov	r8,[rax-18h]
	cmp	rdx,r8
	jnc	428668h

l0000000000428660:
	add	rax,rdx
	add	rsp,28h
	ret

l0000000000428668:
	lea	rcx,[000000000048D608]                                 ; [rip+00064F99]
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

;; fn0000000000428680: 0000000000428680
;;   Called from:
;;     000000000042867F (in fn0000000000428650)
fn0000000000428680 proc
	mov	rax,[rcx]
	add	rax,[rax-18h]
	ret
0000000000428688                         90 90 90 90 90 90 90 90         ........

;; fn0000000000428690: 0000000000428690
fn0000000000428690 proc
	mov	eax,[rcx+10h]
	shr	eax,1Fh
	ret
0000000000428697                      90 90 90 90 90 90 90 90 90        .........

;; fn00000000004286A0: 00000000004286A0
fn00000000004286A0 proc
	mov	eax,[rcx+10h]
	test	eax,eax
	setg	al
	ret
00000000004286A9                            90 90 90 90 90 90 90          .......

;; fn00000000004286B0: 00000000004286B0
fn00000000004286B0 proc
	mov	rax,[rcx]
	mov	rdx,[rax-18h]
	lea	rax,[rax+rdx-1h]
	ret
00000000004286BD                                        90 90 90              ...

;; fn00000000004286C0: 00000000004286C0
fn00000000004286C0 proc
	mov	rax,[rcx]
	add	rax,[rax-18h]
	ret
00000000004286C8                         90 90 90 90 90 90 90 90         ........

;; fn00000000004286D0: 00000000004286D0
;;   Called from:
;;     0000000000463F0E (in fn0000000000463E50)
;;     0000000000463FD8 (in fn0000000000463E50)
;;     000000000046409E (in fn0000000000463E50)
;;     000000000046468E (in fn00000000004645D0)
;;     00000000004662BD (in fn00000000004661A0)
;;     0000000000466387 (in fn00000000004661A0)
;;     0000000000466443 (in fn00000000004661A0)
;;     0000000000466511 (in fn00000000004661A0)
;;     0000000000466C2D (in fn0000000000466B10)
;;     0000000000466CF7 (in fn0000000000466B10)
;;     0000000000466DB3 (in fn0000000000466B10)
;;     0000000000466E81 (in fn0000000000466B10)
;;     0000000000467599 (in fn0000000000467480)
;;     0000000000467F29 (in fn0000000000467E10)
fn00000000004286D0 proc
	push	rbx
	sub	rsp,20h
	mov	rax,r9
	mov	r9,[rcx]
	mov	r10,rdx
	mov	rbx,[r9-18h]
	cmp	rax,rbx
	ja	428723h

l00000000004286E7:
	sub	rbx,rax
	cmp	rbx,r8
	cmova	rbx,r8

l00000000004286F1:
	test	rbx,rbx
	jz	42870Bh

l00000000004286F6:
	cmp	rbx,1h
	lea	rdx,[r9+rax]
	jz	428714h

l0000000000428700:
	mov	r8,rbx
	mov	rcx,r10
	call	41BCC0h

l000000000042870B:
	mov	rax,rbx
	add	rsp,20h
	pop	rbx
	ret

l0000000000428714:
	movzx	eax,byte ptr [rdx]
	mov	[r10],al
	mov	rax,rbx
	add	rsp,20h
	pop	rbx
	ret

l0000000000428723:
	lea	rdx,[000000000048D64C]                                 ; [rip+00064F22]
	lea	rcx,[000000000048D5D0]                                 ; [rip+00064E9F]
	mov	r9,rbx
	mov	r8,rax
	call	471560h
	nop
	nop
	nop
	nop

;; fn0000000000428740: 0000000000428740
;;   Called from:
;;     000000000042873F (in fn0000000000428960)
fn0000000000428740 proc
	mov	rax,[rcx]
	ret
0000000000428744             90 90 90 90 90 90 90 90 90 90 90 90     ............

;; fn0000000000428750: 0000000000428750
fn0000000000428750 proc
	push	rsi
	push	rbx
	sub	rsp,38h
	mov	rsi,rcx
	mov	rcx,rdx
	mov	rbx,rdx
	mov	[rsp+28h],r8
	call	41BCB8h
	mov	r8,[rsp+28h]
	mov	r9,rax
	mov	rdx,rbx
	mov	rcx,rsi
	add	rsp,38h
	pop	rbx
	pop	rsi
	jmp	428790h
0000000000428782       90 90 90 90 90 90 90 90 90 90 90 90 90 90   ..............

;; fn0000000000428790: 0000000000428790
;;   Called from:
;;     000000000042877D (in fn0000000000428750)
;;     0000000000428857 (in fn0000000000428850)
fn0000000000428790 proc
	push	r14
	push	r13
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,20h
	mov	rsi,[rcx]
	test	r9,r9
	mov	rbp,[rsi-18h]
	jnz	4287D0h

l00000000004287AA:
	cmp	r8,rbp
	mov	rax,-1h
	cmovbe	rax,r8

l00000000004287B8:
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	ret
00000000004287C7                      66 0F 1F 84 00 00 00 00 00        f........

l00000000004287D0:
	cmp	r9,rbp
	mov	rax,-1h
	ja	4287B8h

l00000000004287DC:
	sub	rbp,r9
	cmp	r8,rbp
	ja	4287B8h

l00000000004287E4:
	lea	rbx,[r8+1h]
	movzx	r14d,byte ptr [rdx]
	lea	r12,[r9+rax]
	lea	r13,[rdx+1h]
	add	rsi,rbx
	jmp	42880Dh
00000000004287F9                            0F 1F 80 00 00 00 00          .......

l0000000000428800:
	add	rbx,1h
	add	rsi,1h
	cmp	rax,rbp
	ja	428831h

l000000000042880D:
	cmp	[rsi-1h],r14b
	lea	rdi,[rbx-1h]
	mov	rax,rbx
	jnz	428800h

l000000000042881A:
	mov	r8,r12
	mov	rdx,r13
	mov	rcx,rsi
	call	41BD90h
	test	eax,eax
	jz	428840h

l000000000042882C:
	mov	rax,rbx
	jmp	428800h

l0000000000428831:
	mov	rax,-1h
	jmp	4287B8h
000000000042883D                                        0F 1F 00              ...

l0000000000428840:
	mov	rax,rdi
	jmp	4287B8h
0000000000428848                         90 90 90 90 90 90 90 90         ........

;; fn0000000000428850: 0000000000428850
fn0000000000428850 proc
	mov	rdx,[rdx]
	mov	r9,[rdx-18h]
	jmp	428790h
000000000042885C                                     90 90 90 90             ....

;; fn0000000000428860: 0000000000428860
;;   Called from:
;;     00000000004283C3 (in fn00000000004283C0)
fn0000000000428860 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	mov	rsi,[rcx]
	mov	rbx,-1h
	mov	rax,[rsi-18h]
	cmp	r8,rax
	jc	428883h

l0000000000428879:
	mov	rax,rbx
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret

l0000000000428883:
	lea	rcx,[rsi+r8]
	sub	rax,r8
	movsx	edx,dl
	mov	r8,rax
	call	41BD98h
	mov	rdx,rax
	sub	rdx,rsi
	test	rax,rax
	cmovnz	rbx,rdx

l00000000004288A2:
	mov	rax,rbx
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret
00000000004288AC                                     90 90 90 90             ....

;; fn00000000004288B0: 00000000004288B0
fn00000000004288B0 proc
	mov	rdx,[rdx]
	mov	rax,rcx
	mov	[rcx],rdx
	ret
00000000004288BA                               90 90 90 90 90 90           ......

;; fn00000000004288C0: 00000000004288C0
fn00000000004288C0 proc
	mov	rax,[rcx]
	mov	rax,[rax-18h]
	ret
00000000004288C8                         90 90 90 90 90 90 90 90         ........

;; fn00000000004288D0: 00000000004288D0
fn00000000004288D0 proc
	mov	rax,[rcx]
	ret
00000000004288D4             90 90 90 90 90 90 90 90 90 90 90 90     ............

;; fn00000000004288E0: 00000000004288E0
fn00000000004288E0 proc
	mov	rax,[rcx]
	ret
00000000004288E4             90 90 90 90 90 90 90 90 90 90 90 90     ............

;; fn00000000004288F0: 00000000004288F0
fn00000000004288F0 proc
	mov	rdx,[rdx]
	mov	rax,rcx
	mov	[rcx],rdx
	ret
00000000004288FA                               90 90 90 90 90 90           ......

;; fn0000000000428900: 0000000000428900
fn0000000000428900 proc
	mov	rax,[rcx]
	cmp	qword ptr [rax-18h],0h
	setz	al
	ret
000000000042890C                                     90 90 90 90             ....

;; fn0000000000428910: 0000000000428910
fn0000000000428910 proc
	mov	rax,[rcx]
	ret
0000000000428914             90 90 90 90 90 90 90 90 90 90 90 90     ............

;; fn0000000000428920: 0000000000428920
fn0000000000428920 proc
	push	rsi
	push	rbx
	sub	rsp,38h
	mov	rsi,rcx
	mov	rcx,rdx
	mov	rbx,rdx
	mov	[rsp+28h],r8
	call	41BCB8h
	mov	r8,[rsp+28h]
	mov	r9,rax
	mov	rdx,rbx
	mov	rcx,rsi
	add	rsp,38h
	pop	rbx
	pop	rsi
	jmp	428960h
0000000000428952       90 90 90 90 90 90 90 90 90 90 90 90 90 90   ..............

;; fn0000000000428960: 0000000000428960
;;   Called from:
;;     000000000042894D (in fn0000000000428920)
;;     00000000004289E7 (in fn00000000004289E0)
fn0000000000428960 proc
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,28h
	mov	rdi,[rcx]
	mov	rax,-1h
	mov	rcx,[rdi-18h]
	cmp	r9,rcx
	jbe	428984h

l000000000042897B:
	add	rsp,28h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret

l0000000000428984:
	sub	rcx,r9
	mov	rbx,r8
	mov	rsi,r9
	cmp	rcx,r8
	mov	rbp,rdx
	cmovbe	rbx,rcx

l0000000000428997:
	jmp	4289ACh
0000000000428999                            0F 1F 80 00 00 00 00          .......

l00000000004289A0:
	test	rbx,rbx
	lea	rax,[rbx-1h]
	jz	4289D0h

l00000000004289A9:
	mov	rbx,rax

l00000000004289AC:
	lea	rcx,[rdi+rbx]
	mov	r8,rsi
	mov	rdx,rbp
	call	41BD90h
	test	eax,eax
	jnz	4289A0h

l00000000004289BF:
	mov	rax,rbx
	add	rsp,28h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
00000000004289CB                                  0F 1F 44 00 00            ..D..

l00000000004289D0:
	mov	rax,-1h
	add	rsp,28h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret

;; fn00000000004289E0: 00000000004289E0
fn00000000004289E0 proc
	mov	rdx,[rdx]
	mov	r9,[rdx-18h]
	jmp	428960h
00000000004289EC                                     90 90 90 90             ....

;; fn00000000004289F0: 00000000004289F0
fn00000000004289F0 proc
	mov	r9,[rcx]
	mov	rax,-1h
	mov	rcx,[r9-18h]
	test	rcx,rcx
	jnz	428A05h

l0000000000428A03:
	ret

l0000000000428A05:
	add	rax,rcx
	cmp	r8,rax
	cmovbe	rax,r8

l0000000000428A0F:
	jmp	428A1Eh

l0000000000428A11:
	cmp	[r9+rax],dl
	lea	rcx,[rax-1h]
	jz	428A03h

l0000000000428A1B:
	mov	rax,rcx

l0000000000428A1E:
	cmp	rax,0FFh
	jnz	428A11h

l0000000000428A24:
	ret
0000000000428A26                   90 90 90 90 90 90 90 90 90 90       ..........

;; fn0000000000428A30: 0000000000428A30
fn0000000000428A30 proc
	mov	rax,[rcx]
	sub	rax,18h
	ret
0000000000428A38                         90 90 90 90 90 90 90 90         ........

;; fn0000000000428A40: 0000000000428A40
fn0000000000428A40 proc
	mov	rax,[rcx]
	ret
0000000000428A44             90 90 90 90 90 90 90 90 90 90 90 90     ............

;; fn0000000000428A50: 0000000000428A50
fn0000000000428A50 proc
	mov	rax,[rcx]
	mov	rax,[rax-18h]
	ret
0000000000428A58                         90 90 90 90 90 90 90 90         ........

;; fn0000000000428A60: 0000000000428A60
fn0000000000428A60 proc
	mov	rdx,[rdx]
	mov	rax,rcx
	add	rdx,[rdx-18h]
	mov	[rcx],rdx
	ret
0000000000428A6E                                           90 90               ..

;; fn0000000000428A70: 0000000000428A70
fn0000000000428A70 proc
	push	rbx
	sub	rsp,20h
	mov	rax,[rdx]
	mov	rbx,rcx
	mov	rax,[rax-18h]
	cmp	r8,rax
	ja	428A92h

l0000000000428A84:
	call	451F80h
	mov	rax,rbx
	add	rsp,20h
	pop	rbx
	ret

l0000000000428A92:
	lea	rdx,[000000000048D76D]                                 ; [rip+00064CD4]
	lea	rcx,[000000000048D5D0]                                 ; [rip+00064B30]
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

;; fn0000000000428AB0: 0000000000428AB0
;;   Called from:
;;     0000000000428AAF (in fn0000000000428A70)
fn0000000000428AB0 proc
	mov	rax,[rcx]
	ret
0000000000428AB4             90 90 90 90 90 90 90 90 90 90 90 90     ............

;; fn0000000000428AC0: 0000000000428AC0
fn0000000000428AC0 proc
	mov	rax,[rcx]
	add	rax,[rax-18h]
	ret
0000000000428AC8                         90 90 90 90 90 90 90 90         ........

;; fn0000000000428AD0: 0000000000428AD0
;;   Called from:
;;     000000000046AD8E (in fn000000000046AD30)
;;     000000000047385B (in fn0000000000473840)
fn0000000000428AD0 proc
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,28h
	mov	rdi,[rcx]
	mov	rcx,rdx
	mov	rbp,rdx
	call	41BCB8h
	mov	rbx,[rdi-18h]
	mov	rdx,rbp
	mov	rcx,rdi
	mov	rsi,rax
	cmp	rax,rbx
	mov	r8,rbx
	cmovbe	r8,rax

l0000000000428AFD:
	call	41BD90h
	test	eax,eax
	jnz	428B17h

l0000000000428B06:
	sub	rbx,rsi
	mov	eax,7FFFFFFFh
	cmp	rbx,+7FFFFFFFh
	jle	428B20h

l0000000000428B17:
	add	rsp,28h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret

l0000000000428B20:
	mov	edx,80000000h
	cmp	rbx,-80000000h
	mov	eax,edx
	cmovge	eax,ebx

l0000000000428B31:
	add	rsp,28h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
0000000000428B3A                               90 90 90 90 90 90           ......

;; fn0000000000428B40: 0000000000428B40
fn0000000000428B40 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	mov	rcx,[rcx]
	mov	rdx,[rdx]
	mov	rbx,[rcx-18h]
	mov	rsi,[rdx-18h]
	mov	r8,rbx
	cmp	rsi,rbx
	cmovbe	r8,rsi

l0000000000428B5E:
	call	41BD90h
	test	eax,eax
	jnz	428B78h

l0000000000428B67:
	sub	rbx,rsi
	mov	eax,7FFFFFFFh
	cmp	rbx,+7FFFFFFFh
	jle	428B80h

l0000000000428B78:
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret
0000000000428B7F                                              90                .

l0000000000428B80:
	cmp	rbx,-80000000h
	mov	eax,80000000h
	cmovge	eax,ebx

l0000000000428B8F:
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret
0000000000428B96                   90 90 90 90 90 90 90 90 90 90       ..........

;; fn0000000000428BA0: 0000000000428BA0
fn0000000000428BA0 proc
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,20h
	mov	rbp,[rcx]
	mov	r12,r9
	mov	rsi,rdx
	mov	r9,[rbp-18h]
	cmp	rdx,r9
	ja	428C2Ch

l0000000000428BBC:
	mov	rbx,r9
	mov	rcx,r12
	sub	rbx,rdx
	cmp	rbx,r8
	cmova	rbx,r8

l0000000000428BCC:
	call	41BCB8h
	mov	r8,rbx
	cmp	rax,rbx
	lea	rcx,[rbp+rsi+0h]
	cmovbe	r8,rax

l0000000000428BE0:
	mov	rdx,r12
	mov	rdi,rax
	call	41BD90h
	test	eax,eax
	jnz	428C00h

l0000000000428BEF:
	sub	rbx,rdi
	mov	eax,7FFFFFFFh
	cmp	rbx,+7FFFFFFFh
	jle	428C10h

l0000000000428C00:
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
0000000000428C0B                                  0F 1F 44 00 00            ..D..

l0000000000428C10:
	mov	edx,80000000h
	cmp	rbx,-80000000h
	mov	eax,edx
	cmovge	eax,ebx

l0000000000428C21:
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret

l0000000000428C2C:
	mov	r8,rdx
	lea	rcx,[000000000048D5D0]                                 ; [rip+0006499A]
	lea	rdx,[000000000048D65F]                                 ; [rip+00064A22]
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

;; fn0000000000428C50: 0000000000428C50
;;   Called from:
;;     0000000000428C4F (in fn0000000000428BA0)
fn0000000000428C50 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	mov	rcx,[rcx]
	mov	rsi,[rsp+60h]
	mov	rbx,[rcx-18h]
	cmp	rdx,rbx
	ja	428CB8h

l0000000000428C67:
	sub	rbx,rdx
	cmp	rbx,r8
	cmova	rbx,r8

l0000000000428C71:
	mov	r8,rsi
	cmp	rbx,rsi
	cmovbe	r8,rbx

l0000000000428C7B:
	add	rcx,rdx
	mov	rdx,r9
	call	41BD90h
	test	eax,eax
	jnz	428C9Bh

l0000000000428C8A:
	sub	rbx,rsi
	mov	eax,7FFFFFFFh
	cmp	rbx,+7FFFFFFFh
	jle	428CA2h

l0000000000428C9B:
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret

l0000000000428CA2:
	cmp	rbx,-80000000h
	mov	eax,80000000h
	cmovge	eax,ebx

l0000000000428CB1:
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret

l0000000000428CB8:
	mov	r8,rdx
	lea	rcx,[000000000048D5D0]                                 ; [rip+0006490E]
	lea	rdx,[000000000048D65F]                                 ; [rip+00064996]
	mov	r9,rbx
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

;; fn0000000000428CE0: 0000000000428CE0
;;   Called from:
;;     0000000000428CDF (in fn0000000000428C50)
fn0000000000428CE0 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	mov	rcx,[rcx]
	mov	rax,rdx
	mov	rbx,[rcx-18h]
	cmp	rdx,rbx
	ja	428D4Ah

l0000000000428CF5:
	sub	rbx,rdx
	mov	rdx,[r9]
	cmp	rbx,r8
	cmova	rbx,r8

l0000000000428D02:
	mov	rsi,[rdx-18h]
	cmp	rbx,rsi
	mov	r8,rsi
	cmovbe	r8,rbx

l0000000000428D10:
	add	rcx,rax
	call	41BD90h
	test	eax,eax
	jnz	428D2Dh

l0000000000428D1C:
	sub	rbx,rsi
	mov	eax,7FFFFFFFh
	cmp	rbx,+7FFFFFFFh
	jle	428D34h

l0000000000428D2D:
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret

l0000000000428D34:
	cmp	rbx,-80000000h
	mov	eax,80000000h
	cmovge	eax,ebx

l0000000000428D43:
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret

l0000000000428D4A:
	mov	r8,rdx
	lea	rcx,[000000000048D5D0]                                 ; [rip+0006487C]
	lea	rdx,[000000000048D65F]                                 ; [rip+00064904]
	mov	r9,rbx
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

;; fn0000000000428D70: 0000000000428D70
;;   Called from:
;;     0000000000428D6F (in fn0000000000428CE0)
fn0000000000428D70 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	mov	rcx,[rcx]
	mov	r10,[rsp+60h]
	mov	rax,rdx
	mov	r11,[rsp+68h]
	mov	rbx,[rcx-18h]
	cmp	rdx,rbx
	ja	428E1Ch

l0000000000428D93:
	mov	rdx,[r9]
	mov	r9,[rdx-18h]
	cmp	r10,r9
	ja	428E06h

l0000000000428D9F:
	sub	rbx,rax
	mov	rsi,r9
	cmp	rbx,r8
	cmova	rbx,r8

l0000000000428DAC:
	sub	rsi,r10
	cmp	rsi,r11
	cmova	rsi,r11

l0000000000428DB6:
	cmp	rbx,rsi
	mov	r8,rsi
	cmovbe	r8,rbx

l0000000000428DC0:
	add	rdx,r10
	add	rcx,rax
	call	41BD90h
	test	eax,eax
	jnz	428DE0h

l0000000000428DCF:
	sub	rbx,rsi
	mov	eax,7FFFFFFFh
	cmp	rbx,+7FFFFFFFh
	jle	428DF0h

l0000000000428DE0:
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret
0000000000428DE7                      66 0F 1F 84 00 00 00 00 00        f........

l0000000000428DF0:
	cmp	rbx,-80000000h
	mov	eax,80000000h
	cmovge	eax,ebx

l0000000000428DFF:
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret

l0000000000428E06:
	lea	rdx,[000000000048D65F]                                 ; [rip+00064852]
	lea	rcx,[000000000048D5D0]                                 ; [rip+000647BC]
	mov	r8,r10
	call	471560h

l0000000000428E1C:
	mov	r8,rdx
	lea	rcx,[000000000048D5D0]                                 ; [rip+000647AA]
	lea	rdx,[000000000048D65F]                                 ; [rip+00064832]
	mov	r9,rbx
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

;; fn0000000000428E40: 0000000000428E40
;;   Called from:
;;     0000000000428E3F (in fn0000000000428D70)
fn0000000000428E40 proc
	mov	rdx,[rdx]
	mov	rax,rcx
	add	rdx,[rdx-18h]
	mov	[rcx],rdx
	ret
0000000000428E4E                                           90 90               ..

;; fn0000000000428E50: 0000000000428E50
fn0000000000428E50 proc
	sub	rsp,28h
	mov	rax,rdx
	mov	rdx,[rcx]
	mov	r9,[rdx-18h]
	cmp	rax,r9
	ja	428E68h

l0000000000428E63:
	add	rsp,28h
	ret

l0000000000428E68:
	lea	rcx,[000000000048D5D0]                                 ; [rip+00064761]
	mov	rdx,r8
	mov	r8,rax
	call	471560h
	nop
	nop
	nop
	nop
	nop
	nop

;; fn0000000000428E80: 0000000000428E80
;;   Called from:
;;     0000000000428E7F (in fn0000000000428E50)
fn0000000000428E80 proc
	mov	rax,[rcx]
	mov	rax,[rax-18h]
	sub	rax,rdx
	cmp	rax,r8
	cmova	rax,r8

l0000000000428E91:
	ret
0000000000428E92       90 90 90 90 90 90 90 90 90 90 90 90 90 90   ..............

;; fn0000000000428EA0: 0000000000428EA0
fn0000000000428EA0 proc
	mov	rax,[rcx]
	mov	rax,[rax-10h]
	ret
0000000000428EA8                         90 90 90 90 90 90 90 90         ........

;; fn0000000000428EB0: 0000000000428EB0
fn0000000000428EB0 proc
	mov	rax,3FFFFFFFFFFFFFF9h
	ret
0000000000428EBB                                  90 90 90 90 90            .....

;; fn0000000000428EC0: 0000000000428EC0
fn0000000000428EC0 proc
	mov	rax,[rcx]
	ret
0000000000428EC4             90 90 90 90 90 90 90 90 90 90 90 90     ............

;; fn0000000000428ED0: 0000000000428ED0
fn0000000000428ED0 proc
	mov	rax,rdx
	add	rax,[rcx]
	ret
0000000000428ED7                      90 90 90 90 90 90 90 90 90        .........

;; fn0000000000428EE0: 0000000000428EE0
fn0000000000428EE0 proc
	lea	rax,[000000000048E080]                                 ; [rip+00065199]
	ret
0000000000428EE8                         90 90 90 90 90 90 90 90         ........

;; fn0000000000428EF0: 0000000000428EF0
fn0000000000428EF0 proc
	sub	rsp,38h
	mov	rax,rcx
	mov	rcx,[rdx+8h]
	mov	r8,[rcx]
	mov	r9,[r8+20h]
	mov	r8d,[rdx]
	lea	rdx,[000000000042ADD0]                                 ; [rip+00001EC4]
	cmp	r9,rdx
	jnz	428F20h

l0000000000428F11:
	mov	[rax],r8d
	mov	[rax+8h],rcx
	add	rsp,38h
	ret
0000000000428F1D                                        0F 1F 00              ...

l0000000000428F20:
	mov	rdx,rcx
	mov	[rsp+28h],rax
	mov	rcx,rax
	call	r9
	mov	rax,[rsp+28h]
	add	rsp,38h
	ret
0000000000428F38                         90 90 90 90 90 90 90 90         ........

;; fn0000000000428F40: 0000000000428F40
fn0000000000428F40 proc
	sub	rsp,28h
	mov	rax,[rcx]
	lea	rdx,[0000000000429080]                                 ; [rip+00000132]
	mov	rax,[rax+50h]
	cmp	rax,rdx
	jnz	428F63h

l0000000000428F57:
	mov	rax,[rcx+10h]
	mov	eax,[rax+60h]
	add	rsp,28h
	ret

l0000000000428F63:
	call	rax
	add	rsp,28h
	ret
0000000000428F6A                               90 90 90 90 90 90           ......

;; fn0000000000428F70: 0000000000428F70
fn0000000000428F70 proc
	sub	rsp,28h
	mov	rax,[rcx]
	lea	rdx,[0000000000429090]                                 ; [rip+00000112]
	mov	rax,[rax+48h]
	cmp	rax,rdx
	jnz	428F93h

l0000000000428F87:
	mov	rax,[rcx+10h]
	mov	eax,[rax+5Ch]
	add	rsp,28h
	ret

l0000000000428F93:
	call	rax
	add	rsp,28h
	ret
0000000000428F9A                               90 90 90 90 90 90           ......

;; fn0000000000428FA0: 0000000000428FA0
fn0000000000428FA0 proc
	push	rbx
	sub	rsp,30h
	mov	rax,[rdx]
	mov	rbx,rcx
	lea	rcx,[0000000000429170]                                 ; [rip+000001BE]
	mov	rax,[rax+28h]
	cmp	rax,rcx
	jnz	428FE0h

l0000000000428FBB:
	mov	rax,[rdx+10h]
	lea	r8,[rsp+2Fh]
	mov	rcx,rbx
	mov	rdx,[rax+28h]
	call	451EA0h
	mov	rax,rbx
	add	rsp,30h
	pop	rbx
	ret
0000000000428FD9                            0F 1F 80 00 00 00 00          .......

l0000000000428FE0:
	mov	rcx,rbx
	call	rax
	mov	rax,rbx
	add	rsp,30h
	pop	rbx
	ret
0000000000428FEE                                           90 90               ..

;; fn0000000000428FF0: 0000000000428FF0
fn0000000000428FF0 proc
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
0000000000429013          90 90 90 90 90 90 90 90 90 90 90 90 90    .............

;; fn0000000000429020: 0000000000429020
fn0000000000429020 proc
	mov	rax,[rcx]
	lea	rdx,[00000000004291A0]                                 ; [rip+00000176]
	mov	rax,[rax+40h]
	cmp	rax,rdx
	jnz	429040h

l0000000000429033:
	mov	rax,[rcx+10h]
	mov	eax,[rax+58h]
	ret
000000000042903B                                  0F 1F 44 00 00            ..D..

l0000000000429040:
	jmp	rax
0000000000429043          90 90 90 90 90 90 90 90 90 90 90 90 90    .............

;; fn0000000000429050: 0000000000429050
fn0000000000429050 proc
	mov	rax,[rcx]
	lea	rdx,[00000000004291B0]                                 ; [rip+00000156]
	mov	rax,[rax+10h]
	cmp	rax,rdx
	jnz	429070h

l0000000000429063:
	mov	rax,[rcx+10h]
	movzx	eax,byte ptr [rax+21h]
	ret
000000000042906C                                     0F 1F 40 00             ..@.

l0000000000429070:
	jmp	rax
0000000000429073          90 90 90 90 90 90 90 90 90 90 90 90 90    .............

;; fn0000000000429080: 0000000000429080
fn0000000000429080 proc
	mov	rax,[rcx+10h]
	mov	eax,[rax+60h]
	ret
0000000000429088                         90 90 90 90 90 90 90 90         ........

;; fn0000000000429090: 0000000000429090
fn0000000000429090 proc
	mov	rax,[rcx+10h]
	mov	eax,[rax+5Ch]
	ret
0000000000429098                         90 90 90 90 90 90 90 90         ........

;; fn00000000004290A0: 00000000004290A0
fn00000000004290A0 proc
	push	rbx
	sub	rsp,30h
	mov	rax,[rdx]
	mov	rbx,rcx
	lea	rcx,[00000000004291C0]                                 ; [rip+0000010E]
	mov	rax,[rax+38h]
	cmp	rax,rcx
	jnz	4290E0h

l00000000004290BB:
	mov	rax,[rdx+10h]
	lea	r8,[rsp+2Fh]
	mov	rcx,rbx
	mov	rdx,[rax+48h]
	call	451EA0h
	mov	rax,rbx
	add	rsp,30h
	pop	rbx
	ret
00000000004290D9                            0F 1F 80 00 00 00 00          .......

l00000000004290E0:
	mov	rcx,rbx
	call	rax
	mov	rax,rbx
	add	rsp,30h
	pop	rbx
	ret
00000000004290EE                                           90 90               ..

;; fn00000000004290F0: 00000000004290F0
fn00000000004290F0 proc
	push	rbx
	sub	rsp,30h
	mov	rax,[rdx]
	mov	rbx,rcx
	lea	rcx,[00000000004291F0]                                 ; [rip+000000EE]
	mov	rax,[rax+30h]
	cmp	rax,rcx
	jnz	429130h

l000000000042910B:
	mov	rax,[rdx+10h]
	lea	r8,[rsp+2Fh]
	mov	rcx,rbx
	mov	rdx,[rax+38h]
	call	451EA0h
	mov	rax,rbx
	add	rsp,30h
	pop	rbx
	ret
0000000000429129                            0F 1F 80 00 00 00 00          .......

l0000000000429130:
	mov	rcx,rbx
	call	rax
	mov	rax,rbx
	add	rsp,30h
	pop	rbx
	ret
000000000042913E                                           90 90               ..

;; fn0000000000429140: 0000000000429140
fn0000000000429140 proc
	mov	rax,[rcx]
	lea	rdx,[0000000000429220]                                 ; [rip+000000D6]
	mov	rax,[rax+18h]
	cmp	rax,rdx
	jnz	429160h

l0000000000429153:
	mov	rax,[rcx+10h]
	movzx	eax,byte ptr [rax+22h]
	ret
000000000042915C                                     0F 1F 40 00             ..@.

l0000000000429160:
	jmp	rax
0000000000429163          90 90 90 90 90 90 90 90 90 90 90 90 90    .............

;; fn0000000000429170: 0000000000429170
fn0000000000429170 proc
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
0000000000429193          90 90 90 90 90 90 90 90 90 90 90 90 90    .............

;; fn00000000004291A0: 00000000004291A0
fn00000000004291A0 proc
	mov	rax,[rcx+10h]
	mov	eax,[rax+58h]
	ret
00000000004291A8                         90 90 90 90 90 90 90 90         ........

;; fn00000000004291B0: 00000000004291B0
fn00000000004291B0 proc
	mov	rax,[rcx+10h]
	movzx	eax,byte ptr [rax+21h]
	ret
00000000004291B9                            90 90 90 90 90 90 90          .......

;; fn00000000004291C0: 00000000004291C0
fn00000000004291C0 proc
	push	rbx
	sub	rsp,30h
	mov	rax,[rdx+10h]
	lea	r8,[rsp+2Fh]
	mov	rbx,rcx
	mov	rdx,[rax+48h]
	call	451EA0h
	mov	rax,rbx
	add	rsp,30h
	pop	rbx
	ret
00000000004291E3          90 90 90 90 90 90 90 90 90 90 90 90 90    .............

;; fn00000000004291F0: 00000000004291F0
fn00000000004291F0 proc
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
0000000000429213          90 90 90 90 90 90 90 90 90 90 90 90 90    .............

;; fn0000000000429220: 0000000000429220
fn0000000000429220 proc
	mov	rax,[rcx+10h]
	movzx	eax,byte ptr [rax+22h]
	ret
0000000000429229                            90 90 90 90 90 90 90          .......

;; fn0000000000429230: 0000000000429230
fn0000000000429230 proc
	push	rbx
	sub	rsp,30h
	mov	rax,[rdx]
	mov	rbx,rcx
	lea	rcx,[0000000000428FF0]                                 ; [rip-00000252]
	mov	rax,[rax+20h]
	cmp	rax,rcx
	jnz	429270h

l000000000042924B:
	mov	rax,[rdx+10h]
	lea	r8,[rsp+2Fh]
	mov	rcx,rbx
	mov	rdx,[rax+10h]
	call	451EA0h
	mov	rax,rbx
	add	rsp,30h
	pop	rbx
	ret
0000000000429269                            0F 1F 80 00 00 00 00          .......

l0000000000429270:
	mov	rcx,rbx
	call	rax
	mov	rax,rbx
	add	rsp,30h
	pop	rbx
	ret
000000000042927E                                           90 90               ..

;; fn0000000000429280: 0000000000429280
fn0000000000429280 proc
	sub	rsp,28h
	mov	rax,[rcx]
	lea	rdx,[00000000004293C0]                                 ; [rip+00000132]
	mov	rax,[rax+50h]
	cmp	rax,rdx
	jnz	4292A3h

l0000000000429297:
	mov	rax,[rcx+10h]
	mov	eax,[rax+60h]
	add	rsp,28h
	ret

l00000000004292A3:
	call	rax
	add	rsp,28h
	ret
00000000004292AA                               90 90 90 90 90 90           ......

;; fn00000000004292B0: 00000000004292B0
fn00000000004292B0 proc
	sub	rsp,28h
	mov	rax,[rcx]
	lea	rdx,[00000000004293D0]                                 ; [rip+00000112]
	mov	rax,[rax+48h]
	cmp	rax,rdx
	jnz	4292D3h

l00000000004292C7:
	mov	rax,[rcx+10h]
	mov	eax,[rax+5Ch]
	add	rsp,28h
	ret

l00000000004292D3:
	call	rax
	add	rsp,28h
	ret
00000000004292DA                               90 90 90 90 90 90           ......

;; fn00000000004292E0: 00000000004292E0
fn00000000004292E0 proc
	push	rbx
	sub	rsp,30h
	mov	rax,[rdx]
	mov	rbx,rcx
	lea	rcx,[00000000004294B0]                                 ; [rip+000001BE]
	mov	rax,[rax+28h]
	cmp	rax,rcx
	jnz	429320h

l00000000004292FB:
	mov	rax,[rdx+10h]
	lea	r8,[rsp+2Fh]
	mov	rcx,rbx
	mov	rdx,[rax+28h]
	call	451EA0h
	mov	rax,rbx
	add	rsp,30h
	pop	rbx
	ret
0000000000429319                            0F 1F 80 00 00 00 00          .......

l0000000000429320:
	mov	rcx,rbx
	call	rax
	mov	rax,rbx
	add	rsp,30h
	pop	rbx
	ret
000000000042932E                                           90 90               ..

;; fn0000000000429330: 0000000000429330
fn0000000000429330 proc
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
0000000000429353          90 90 90 90 90 90 90 90 90 90 90 90 90    .............

;; fn0000000000429360: 0000000000429360
fn0000000000429360 proc
	mov	rax,[rcx]
	lea	rdx,[00000000004294E0]                                 ; [rip+00000176]
	mov	rax,[rax+40h]
	cmp	rax,rdx
	jnz	429380h

l0000000000429373:
	mov	rax,[rcx+10h]
	mov	eax,[rax+58h]
	ret
000000000042937B                                  0F 1F 44 00 00            ..D..

l0000000000429380:
	jmp	rax
0000000000429383          90 90 90 90 90 90 90 90 90 90 90 90 90    .............

;; fn0000000000429390: 0000000000429390
fn0000000000429390 proc
	mov	rax,[rcx]
	lea	rdx,[00000000004294F0]                                 ; [rip+00000156]
	mov	rax,[rax+10h]
	cmp	rax,rdx
	jnz	4293B0h

l00000000004293A3:
	mov	rax,[rcx+10h]
	movzx	eax,byte ptr [rax+21h]
	ret
00000000004293AC                                     0F 1F 40 00             ..@.

l00000000004293B0:
	jmp	rax
00000000004293B3          90 90 90 90 90 90 90 90 90 90 90 90 90    .............

;; fn00000000004293C0: 00000000004293C0
fn00000000004293C0 proc
	mov	rax,[rcx+10h]
	mov	eax,[rax+60h]
	ret
00000000004293C8                         90 90 90 90 90 90 90 90         ........

;; fn00000000004293D0: 00000000004293D0
fn00000000004293D0 proc
	mov	rax,[rcx+10h]
	mov	eax,[rax+5Ch]
	ret
00000000004293D8                         90 90 90 90 90 90 90 90         ........

;; fn00000000004293E0: 00000000004293E0
fn00000000004293E0 proc
	push	rbx
	sub	rsp,30h
	mov	rax,[rdx]
	mov	rbx,rcx
	lea	rcx,[0000000000429500]                                 ; [rip+0000010E]
	mov	rax,[rax+38h]
	cmp	rax,rcx
	jnz	429420h

l00000000004293FB:
	mov	rax,[rdx+10h]
	lea	r8,[rsp+2Fh]
	mov	rcx,rbx
	mov	rdx,[rax+48h]
	call	451EA0h
	mov	rax,rbx
	add	rsp,30h
	pop	rbx
	ret
0000000000429419                            0F 1F 80 00 00 00 00          .......

l0000000000429420:
	mov	rcx,rbx
	call	rax
	mov	rax,rbx
	add	rsp,30h
	pop	rbx
	ret
000000000042942E                                           90 90               ..

;; fn0000000000429430: 0000000000429430
fn0000000000429430 proc
	push	rbx
	sub	rsp,30h
	mov	rax,[rdx]
	mov	rbx,rcx
	lea	rcx,[0000000000429530]                                 ; [rip+000000EE]
	mov	rax,[rax+30h]
	cmp	rax,rcx
	jnz	429470h

l000000000042944B:
	mov	rax,[rdx+10h]
	lea	r8,[rsp+2Fh]
	mov	rcx,rbx
	mov	rdx,[rax+38h]
	call	451EA0h
	mov	rax,rbx
	add	rsp,30h
	pop	rbx
	ret
0000000000429469                            0F 1F 80 00 00 00 00          .......

l0000000000429470:
	mov	rcx,rbx
	call	rax
	mov	rax,rbx
	add	rsp,30h
	pop	rbx
	ret
000000000042947E                                           90 90               ..

;; fn0000000000429480: 0000000000429480
fn0000000000429480 proc
	mov	rax,[rcx]
	lea	rdx,[0000000000429560]                                 ; [rip+000000D6]
	mov	rax,[rax+18h]
	cmp	rax,rdx
	jnz	4294A0h

l0000000000429493:
	mov	rax,[rcx+10h]
	movzx	eax,byte ptr [rax+22h]
	ret
000000000042949C                                     0F 1F 40 00             ..@.

l00000000004294A0:
	jmp	rax
00000000004294A3          90 90 90 90 90 90 90 90 90 90 90 90 90    .............

;; fn00000000004294B0: 00000000004294B0
fn00000000004294B0 proc
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
00000000004294D3          90 90 90 90 90 90 90 90 90 90 90 90 90    .............

;; fn00000000004294E0: 00000000004294E0
fn00000000004294E0 proc
	mov	rax,[rcx+10h]
	mov	eax,[rax+58h]
	ret
00000000004294E8                         90 90 90 90 90 90 90 90         ........

;; fn00000000004294F0: 00000000004294F0
fn00000000004294F0 proc
	mov	rax,[rcx+10h]
	movzx	eax,byte ptr [rax+21h]
	ret
00000000004294F9                            90 90 90 90 90 90 90          .......

;; fn0000000000429500: 0000000000429500
fn0000000000429500 proc
	push	rbx
	sub	rsp,30h
	mov	rax,[rdx+10h]
	lea	r8,[rsp+2Fh]
	mov	rbx,rcx
	mov	rdx,[rax+48h]
	call	451EA0h
	mov	rax,rbx
	add	rsp,30h
	pop	rbx
	ret
0000000000429523          90 90 90 90 90 90 90 90 90 90 90 90 90    .............

;; fn0000000000429530: 0000000000429530
fn0000000000429530 proc
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
0000000000429553          90 90 90 90 90 90 90 90 90 90 90 90 90    .............

;; fn0000000000429560: 0000000000429560
fn0000000000429560 proc
	mov	rax,[rcx+10h]
	movzx	eax,byte ptr [rax+22h]
	ret
0000000000429569                            90 90 90 90 90 90 90          .......

;; fn0000000000429570: 0000000000429570
fn0000000000429570 proc
	push	rbx
	sub	rsp,30h
	mov	rax,[rdx]
	mov	rbx,rcx
	lea	rcx,[0000000000429330]                                 ; [rip-00000252]
	mov	rax,[rax+20h]
	cmp	rax,rcx
	jnz	4295B0h

l000000000042958B:
	mov	rax,[rdx+10h]
	lea	r8,[rsp+2Fh]
	mov	rcx,rbx
	mov	rdx,[rax+10h]
	call	451EA0h
	mov	rax,rbx
	add	rsp,30h
	pop	rbx
	ret
00000000004295A9                            0F 1F 80 00 00 00 00          .......

l00000000004295B0:
	mov	rcx,rbx
	call	rax
	mov	rax,rbx
	add	rsp,30h
	pop	rbx
	ret
00000000004295BE                                           90 90               ..

;; fn00000000004295C0: 00000000004295C0
fn00000000004295C0 proc
	sub	rsp,28h
	mov	rax,[rcx]
	lea	rdx,[0000000000429700]                                 ; [rip+00000132]
	mov	rax,[rax+50h]
	cmp	rax,rdx
	jnz	4295E3h

l00000000004295D7:
	mov	rax,[rcx+10h]
	mov	eax,[rax+60h]
	add	rsp,28h
	ret

l00000000004295E3:
	call	rax
	add	rsp,28h
	ret
00000000004295EA                               90 90 90 90 90 90           ......

;; fn00000000004295F0: 00000000004295F0
fn00000000004295F0 proc
	sub	rsp,28h
	mov	rax,[rcx]
	lea	rdx,[0000000000429710]                                 ; [rip+00000112]
	mov	rax,[rax+48h]
	cmp	rax,rdx
	jnz	429613h

l0000000000429607:
	mov	rax,[rcx+10h]
	mov	eax,[rax+5Ch]
	add	rsp,28h
	ret

l0000000000429613:
	call	rax
	add	rsp,28h
	ret
000000000042961A                               90 90 90 90 90 90           ......

;; fn0000000000429620: 0000000000429620
fn0000000000429620 proc
	push	rbx
	sub	rsp,30h
	mov	rax,[rdx]
	mov	rbx,rcx
	lea	rcx,[00000000004297F0]                                 ; [rip+000001BE]
	mov	rax,[rax+28h]
	cmp	rax,rcx
	jnz	429660h

l000000000042963B:
	mov	rax,[rdx+10h]
	lea	r8,[rsp+2Fh]
	mov	rcx,rbx
	mov	rdx,[rax+28h]
	call	44A8B0h
	mov	rax,rbx
	add	rsp,30h
	pop	rbx
	ret
0000000000429659                            0F 1F 80 00 00 00 00          .......

l0000000000429660:
	mov	rcx,rbx
	call	rax
	mov	rax,rbx
	add	rsp,30h
	pop	rbx
	ret
000000000042966E                                           90 90               ..

;; fn0000000000429670: 0000000000429670
fn0000000000429670 proc
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
0000000000429693          90 90 90 90 90 90 90 90 90 90 90 90 90    .............

;; fn00000000004296A0: 00000000004296A0
fn00000000004296A0 proc
	mov	rax,[rcx]
	lea	rdx,[0000000000429820]                                 ; [rip+00000176]
	mov	rax,[rax+40h]
	cmp	rax,rdx
	jnz	4296C0h

l00000000004296B3:
	mov	rax,[rcx+10h]
	mov	eax,[rax+58h]
	ret
00000000004296BB                                  0F 1F 44 00 00            ..D..

l00000000004296C0:
	jmp	rax
00000000004296C3          90 90 90 90 90 90 90 90 90 90 90 90 90    .............

;; fn00000000004296D0: 00000000004296D0
fn00000000004296D0 proc
	mov	rax,[rcx]
	lea	rdx,[0000000000429830]                                 ; [rip+00000156]
	mov	rax,[rax+10h]
	cmp	rax,rdx
	jnz	4296F0h

l00000000004296E3:
	mov	rax,[rcx+10h]
	movzx	eax,word ptr [rax+22h]
	ret
00000000004296EC                                     0F 1F 40 00             ..@.

l00000000004296F0:
	jmp	rax
00000000004296F3          90 90 90 90 90 90 90 90 90 90 90 90 90    .............

;; fn0000000000429700: 0000000000429700
fn0000000000429700 proc
	mov	rax,[rcx+10h]
	mov	eax,[rax+60h]
	ret
0000000000429708                         90 90 90 90 90 90 90 90         ........

;; fn0000000000429710: 0000000000429710
fn0000000000429710 proc
	mov	rax,[rcx+10h]
	mov	eax,[rax+5Ch]
	ret
0000000000429718                         90 90 90 90 90 90 90 90         ........

;; fn0000000000429720: 0000000000429720
fn0000000000429720 proc
	push	rbx
	sub	rsp,30h
	mov	rax,[rdx]
	mov	rbx,rcx
	lea	rcx,[0000000000429840]                                 ; [rip+0000010E]
	mov	rax,[rax+38h]
	cmp	rax,rcx
	jnz	429760h

l000000000042973B:
	mov	rax,[rdx+10h]
	lea	r8,[rsp+2Fh]
	mov	rcx,rbx
	mov	rdx,[rax+48h]
	call	44A8B0h
	mov	rax,rbx
	add	rsp,30h
	pop	rbx
	ret
0000000000429759                            0F 1F 80 00 00 00 00          .......

l0000000000429760:
	mov	rcx,rbx
	call	rax
	mov	rax,rbx
	add	rsp,30h
	pop	rbx
	ret
000000000042976E                                           90 90               ..

;; fn0000000000429770: 0000000000429770
fn0000000000429770 proc
	push	rbx
	sub	rsp,30h
	mov	rax,[rdx]
	mov	rbx,rcx
	lea	rcx,[0000000000429870]                                 ; [rip+000000EE]
	mov	rax,[rax+30h]
	cmp	rax,rcx
	jnz	4297B0h

l000000000042978B:
	mov	rax,[rdx+10h]
	lea	r8,[rsp+2Fh]
	mov	rcx,rbx
	mov	rdx,[rax+38h]
	call	44A8B0h
	mov	rax,rbx
	add	rsp,30h
	pop	rbx
	ret
00000000004297A9                            0F 1F 80 00 00 00 00          .......

l00000000004297B0:
	mov	rcx,rbx
	call	rax
	mov	rax,rbx
	add	rsp,30h
	pop	rbx
	ret
00000000004297BE                                           90 90               ..

;; fn00000000004297C0: 00000000004297C0
fn00000000004297C0 proc
	mov	rax,[rcx]
	lea	rdx,[00000000004298A0]                                 ; [rip+000000D6]
	mov	rax,[rax+18h]
	cmp	rax,rdx
	jnz	4297E0h

l00000000004297D3:
	mov	rax,[rcx+10h]
	movzx	eax,word ptr [rax+24h]
	ret
00000000004297DC                                     0F 1F 40 00             ..@.

l00000000004297E0:
	jmp	rax
00000000004297E3          90 90 90 90 90 90 90 90 90 90 90 90 90    .............

;; fn00000000004297F0: 00000000004297F0
fn00000000004297F0 proc
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
0000000000429813          90 90 90 90 90 90 90 90 90 90 90 90 90    .............

;; fn0000000000429820: 0000000000429820
fn0000000000429820 proc
	mov	rax,[rcx+10h]
	mov	eax,[rax+58h]
	ret
0000000000429828                         90 90 90 90 90 90 90 90         ........

;; fn0000000000429830: 0000000000429830
fn0000000000429830 proc
	mov	rax,[rcx+10h]
	movzx	eax,word ptr [rax+22h]
	ret
0000000000429839                            90 90 90 90 90 90 90          .......

;; fn0000000000429840: 0000000000429840
fn0000000000429840 proc
	push	rbx
	sub	rsp,30h
	mov	rax,[rdx+10h]
	lea	r8,[rsp+2Fh]
	mov	rbx,rcx
	mov	rdx,[rax+48h]
	call	44A8B0h
	mov	rax,rbx
	add	rsp,30h
	pop	rbx
	ret
0000000000429863          90 90 90 90 90 90 90 90 90 90 90 90 90    .............

;; fn0000000000429870: 0000000000429870
fn0000000000429870 proc
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
0000000000429893          90 90 90 90 90 90 90 90 90 90 90 90 90    .............

;; fn00000000004298A0: 00000000004298A0
fn00000000004298A0 proc
	mov	rax,[rcx+10h]
	movzx	eax,word ptr [rax+24h]
	ret
00000000004298A9                            90 90 90 90 90 90 90          .......

;; fn00000000004298B0: 00000000004298B0
fn00000000004298B0 proc
	push	rbx
	sub	rsp,30h
	mov	rax,[rdx]
	mov	rbx,rcx
	lea	rcx,[0000000000429670]                                 ; [rip-00000252]
	mov	rax,[rax+20h]
	cmp	rax,rcx
	jnz	4298F0h

l00000000004298CB:
	mov	rax,[rdx+10h]
	lea	r8,[rsp+2Fh]
	mov	rcx,rbx
	mov	rdx,[rax+10h]
	call	451EA0h
	mov	rax,rbx
	add	rsp,30h
	pop	rbx
	ret
00000000004298E9                            0F 1F 80 00 00 00 00          .......

l00000000004298F0:
	mov	rcx,rbx
	call	rax
	mov	rax,rbx
	add	rsp,30h
	pop	rbx
	ret
00000000004298FE                                           90 90               ..

;; fn0000000000429900: 0000000000429900
fn0000000000429900 proc
	sub	rsp,28h
	mov	rax,[rcx]
	lea	rdx,[0000000000429A40]                                 ; [rip+00000132]
	mov	rax,[rax+50h]
	cmp	rax,rdx
	jnz	429923h

l0000000000429917:
	mov	rax,[rcx+10h]
	mov	eax,[rax+60h]
	add	rsp,28h
	ret

l0000000000429923:
	call	rax
	add	rsp,28h
	ret
000000000042992A                               90 90 90 90 90 90           ......

;; fn0000000000429930: 0000000000429930
fn0000000000429930 proc
	sub	rsp,28h
	mov	rax,[rcx]
	lea	rdx,[0000000000429A50]                                 ; [rip+00000112]
	mov	rax,[rax+48h]
	cmp	rax,rdx
	jnz	429953h

l0000000000429947:
	mov	rax,[rcx+10h]
	mov	eax,[rax+5Ch]
	add	rsp,28h
	ret

l0000000000429953:
	call	rax
	add	rsp,28h
	ret
000000000042995A                               90 90 90 90 90 90           ......

;; fn0000000000429960: 0000000000429960
fn0000000000429960 proc
	push	rbx
	sub	rsp,30h
	mov	rax,[rdx]
	mov	rbx,rcx
	lea	rcx,[0000000000429B30]                                 ; [rip+000001BE]
	mov	rax,[rax+28h]
	cmp	rax,rcx
	jnz	4299A0h

l000000000042997B:
	mov	rax,[rdx+10h]
	lea	r8,[rsp+2Fh]
	mov	rcx,rbx
	mov	rdx,[rax+28h]
	call	44A8B0h
	mov	rax,rbx
	add	rsp,30h
	pop	rbx
	ret
0000000000429999                            0F 1F 80 00 00 00 00          .......

l00000000004299A0:
	mov	rcx,rbx
	call	rax
	mov	rax,rbx
	add	rsp,30h
	pop	rbx
	ret
00000000004299AE                                           90 90               ..

;; fn00000000004299B0: 00000000004299B0
fn00000000004299B0 proc
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
00000000004299D3          90 90 90 90 90 90 90 90 90 90 90 90 90    .............

;; fn00000000004299E0: 00000000004299E0
fn00000000004299E0 proc
	mov	rax,[rcx]
	lea	rdx,[0000000000429B60]                                 ; [rip+00000176]
	mov	rax,[rax+40h]
	cmp	rax,rdx
	jnz	429A00h

l00000000004299F3:
	mov	rax,[rcx+10h]
	mov	eax,[rax+58h]
	ret
00000000004299FB                                  0F 1F 44 00 00            ..D..

l0000000000429A00:
	jmp	rax
0000000000429A03          90 90 90 90 90 90 90 90 90 90 90 90 90    .............

;; fn0000000000429A10: 0000000000429A10
fn0000000000429A10 proc
	mov	rax,[rcx]
	lea	rdx,[0000000000429B70]                                 ; [rip+00000156]
	mov	rax,[rax+10h]
	cmp	rax,rdx
	jnz	429A30h

l0000000000429A23:
	mov	rax,[rcx+10h]
	movzx	eax,word ptr [rax+22h]
	ret
0000000000429A2C                                     0F 1F 40 00             ..@.

l0000000000429A30:
	jmp	rax
0000000000429A33          90 90 90 90 90 90 90 90 90 90 90 90 90    .............

;; fn0000000000429A40: 0000000000429A40
fn0000000000429A40 proc
	mov	rax,[rcx+10h]
	mov	eax,[rax+60h]
	ret
0000000000429A48                         90 90 90 90 90 90 90 90         ........

;; fn0000000000429A50: 0000000000429A50
fn0000000000429A50 proc
	mov	rax,[rcx+10h]
	mov	eax,[rax+5Ch]
	ret
0000000000429A58                         90 90 90 90 90 90 90 90         ........

;; fn0000000000429A60: 0000000000429A60
fn0000000000429A60 proc
	push	rbx
	sub	rsp,30h
	mov	rax,[rdx]
	mov	rbx,rcx
	lea	rcx,[0000000000429B80]                                 ; [rip+0000010E]
	mov	rax,[rax+38h]
	cmp	rax,rcx
	jnz	429AA0h

l0000000000429A7B:
	mov	rax,[rdx+10h]
	lea	r8,[rsp+2Fh]
	mov	rcx,rbx
	mov	rdx,[rax+48h]
	call	44A8B0h
	mov	rax,rbx
	add	rsp,30h
	pop	rbx
	ret
0000000000429A99                            0F 1F 80 00 00 00 00          .......

l0000000000429AA0:
	mov	rcx,rbx
	call	rax
	mov	rax,rbx
	add	rsp,30h
	pop	rbx
	ret
0000000000429AAE                                           90 90               ..

;; fn0000000000429AB0: 0000000000429AB0
fn0000000000429AB0 proc
	push	rbx
	sub	rsp,30h
	mov	rax,[rdx]
	mov	rbx,rcx
	lea	rcx,[0000000000429BB0]                                 ; [rip+000000EE]
	mov	rax,[rax+30h]
	cmp	rax,rcx
	jnz	429AF0h

l0000000000429ACB:
	mov	rax,[rdx+10h]
	lea	r8,[rsp+2Fh]
	mov	rcx,rbx
	mov	rdx,[rax+38h]
	call	44A8B0h
	mov	rax,rbx
	add	rsp,30h
	pop	rbx
	ret
0000000000429AE9                            0F 1F 80 00 00 00 00          .......

l0000000000429AF0:
	mov	rcx,rbx
	call	rax
	mov	rax,rbx
	add	rsp,30h
	pop	rbx
	ret
0000000000429AFE                                           90 90               ..

;; fn0000000000429B00: 0000000000429B00
fn0000000000429B00 proc
	mov	rax,[rcx]
	lea	rdx,[0000000000429BE0]                                 ; [rip+000000D6]
	mov	rax,[rax+18h]
	cmp	rax,rdx
	jnz	429B20h

l0000000000429B13:
	mov	rax,[rcx+10h]
	movzx	eax,word ptr [rax+24h]
	ret
0000000000429B1C                                     0F 1F 40 00             ..@.

l0000000000429B20:
	jmp	rax
0000000000429B23          90 90 90 90 90 90 90 90 90 90 90 90 90    .............

;; fn0000000000429B30: 0000000000429B30
fn0000000000429B30 proc
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
0000000000429B53          90 90 90 90 90 90 90 90 90 90 90 90 90    .............

;; fn0000000000429B60: 0000000000429B60
fn0000000000429B60 proc
	mov	rax,[rcx+10h]
	mov	eax,[rax+58h]
	ret
0000000000429B68                         90 90 90 90 90 90 90 90         ........

;; fn0000000000429B70: 0000000000429B70
fn0000000000429B70 proc
	mov	rax,[rcx+10h]
	movzx	eax,word ptr [rax+22h]
	ret
0000000000429B79                            90 90 90 90 90 90 90          .......

;; fn0000000000429B80: 0000000000429B80
fn0000000000429B80 proc
	push	rbx
	sub	rsp,30h
	mov	rax,[rdx+10h]
	lea	r8,[rsp+2Fh]
	mov	rbx,rcx
	mov	rdx,[rax+48h]
	call	44A8B0h
	mov	rax,rbx
	add	rsp,30h
	pop	rbx
	ret
0000000000429BA3          90 90 90 90 90 90 90 90 90 90 90 90 90    .............

;; fn0000000000429BB0: 0000000000429BB0
fn0000000000429BB0 proc
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
0000000000429BD3          90 90 90 90 90 90 90 90 90 90 90 90 90    .............

;; fn0000000000429BE0: 0000000000429BE0
fn0000000000429BE0 proc
	mov	rax,[rcx+10h]
	movzx	eax,word ptr [rax+24h]
	ret
0000000000429BE9                            90 90 90 90 90 90 90          .......

;; fn0000000000429BF0: 0000000000429BF0
fn0000000000429BF0 proc
	push	rbx
	sub	rsp,30h
	mov	rax,[rdx]
	mov	rbx,rcx
	lea	rcx,[00000000004299B0]                                 ; [rip-00000252]
	mov	rax,[rax+20h]
	cmp	rax,rcx
	jnz	429C30h

l0000000000429C0B:
	mov	rax,[rdx+10h]
	lea	r8,[rsp+2Fh]
	mov	rcx,rbx
	mov	rdx,[rax+10h]
	call	451EA0h
	mov	rax,rbx
	add	rsp,30h
	pop	rbx
	ret
0000000000429C29                            0F 1F 80 00 00 00 00          .......

l0000000000429C30:
	mov	rcx,rbx
	call	rax
	mov	rax,rbx
	add	rsp,30h
	pop	rbx
	ret
0000000000429C3E                                           90 90               ..

;; fn0000000000429C40: 0000000000429C40
fn0000000000429C40 proc
	ret
0000000000429C41    90 90 90 90 90 90 90 90 90 90 90 90 90 90 90  ...............

;; fn0000000000429C50: 0000000000429C50
fn0000000000429C50 proc
	mov	rax,[rcx+10h]
	mov	rax,[rax+10h]
	mov	[rdx],rax
	mov	rax,[rcx+10h]
	mov	rax,[rax+18h]
	mov	[rdx+8h],rax
	ret
0000000000429C68                         90 90 90 90 90 90 90 90         ........

;; fn0000000000429C70: 0000000000429C70
fn0000000000429C70 proc
	mov	rax,[rcx+10h]
	mov	rax,[rax+20h]
	mov	[rdx],rax
	mov	rax,[rcx+10h]
	mov	rax,[rax+28h]
	mov	[rdx+8h],rax
	ret
0000000000429C88                         90 90 90 90 90 90 90 90         ........

;; fn0000000000429C90: 0000000000429C90
fn0000000000429C90 proc
	mov	rax,[rcx+10h]
	mov	rax,[rax+90h]
	mov	[rdx],rax
	mov	rax,[rcx+10h]
	mov	rax,[rax+98h]
	mov	[rdx+8h],rax
	mov	rax,[rcx+10h]
	mov	rax,[rax+0A0h]
	mov	[rdx+10h],rax
	mov	rax,[rcx+10h]
	mov	rax,[rax+0A8h]
	mov	[rdx+18h],rax
	mov	rax,[rcx+10h]
	mov	rax,[rax+0B0h]
	mov	[rdx+20h],rax
	mov	rax,[rcx+10h]
	mov	rax,[rax+0B8h]
	mov	[rdx+28h],rax
	mov	rax,[rcx+10h]
	mov	rax,[rax+0C0h]
	mov	[rdx+30h],rax
	ret
0000000000429CF9                            90 90 90 90 90 90 90          .......

;; fn0000000000429D00: 0000000000429D00
fn0000000000429D00 proc
	mov	rax,[rcx+10h]
	mov	rax,[rax+30h]
	mov	[rdx],rax
	mov	rax,[rcx+10h]
	mov	rax,[rax+38h]
	mov	[rdx+8h],rax
	ret
0000000000429D18                         90 90 90 90 90 90 90 90         ........

;; fn0000000000429D20: 0000000000429D20
fn0000000000429D20 proc
	mov	rax,[rcx+10h]
	mov	rax,[rax+128h]
	mov	[rdx],rax
	mov	rax,[rcx+10h]
	mov	rax,[rax+130h]
	mov	[rdx+8h],rax
	mov	rax,[rcx+10h]
	mov	rax,[rax+138h]
	mov	[rdx+10h],rax
	mov	rax,[rcx+10h]
	mov	rax,[rax+140h]
	mov	[rdx+18h],rax
	mov	rax,[rcx+10h]
	mov	rax,[rax+148h]
	mov	[rdx+20h],rax
	mov	rax,[rcx+10h]
	mov	rax,[rax+150h]
	mov	[rdx+28h],rax
	mov	rax,[rcx+10h]
	mov	rax,[rax+158h]
	mov	[rdx+30h],rax
	mov	rax,[rcx+10h]
	mov	rax,[rax+160h]
	mov	[rdx+38h],rax
	mov	rax,[rcx+10h]
	mov	rax,[rax+168h]
	mov	[rdx+40h],rax
	mov	rax,[rcx+10h]
	mov	rax,[rax+170h]
	mov	[rdx+48h],rax
	mov	rax,[rcx+10h]
	mov	rax,[rax+178h]
	mov	[rdx+50h],rax
	mov	rax,[rcx+10h]
	mov	rax,[rax+180h]
	mov	[rdx+58h],rax
	ret
0000000000429DD4             90 90 90 90 90 90 90 90 90 90 90 90     ............

;; fn0000000000429DE0: 0000000000429DE0
;;   Called from:
;;     0000000000441DA7 (in fn0000000000441D10)
fn0000000000429DE0 proc
	push	r14
	push	r13
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,20h
	mov	r14,rcx
	mov	rbp,rdx
	xor	ecx,ecx
	xor	edx,edx
	mov	r12,r8
	mov	r13,r9
	call	41BDB8h
	mov	rcx,rax
	mov	rdi,rax
	call	41BCB8h
	lea	rbx,[rax+1h]
	mov	rcx,rbx
	call	475560h
	mov	r8,rbx
	mov	rdx,rdi
	mov	rcx,rax
	mov	rsi,rax
	call	41BCC0h
	mov	rdx,[r14+20h]
	xor	ecx,ecx
	call	41BDB8h
	mov	r9,[rsp+80h]
	mov	r8,r13
	mov	rdx,r12
	mov	rcx,rbp
	call	41BE40h
	xor	ecx,ecx
	mov	rdx,rsi
	mov	rbx,rax
	call	41BDB8h
	mov	rcx,rsi
	call	475540h
	test	rbx,rbx
	jnz	429E6Ah

l0000000000429E66:
	mov	byte ptr [rbp+0h],0h

l0000000000429E6A:
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	ret
0000000000429E79                            48 83 C2 01 48 89 C1          H...H..
0000000000429E80 74 05 E8 29 77 FE FF E8 84 BA 04 00 90 90 90 90 t..)w...........

;; fn0000000000429E90: 0000000000429E90
fn0000000000429E90 proc
	mov	rax,[rcx+10h]
	mov	rax,[rax+58h]
	mov	[rdx],rax
	mov	rax,[rcx+10h]
	mov	rax,[rax+60h]
	mov	[rdx+8h],rax
	mov	rax,[rcx+10h]
	mov	rax,[rax+68h]
	mov	[rdx+10h],rax
	mov	rax,[rcx+10h]
	mov	rax,[rax+70h]
	mov	[rdx+18h],rax
	mov	rax,[rcx+10h]
	mov	rax,[rax+78h]
	mov	[rdx+20h],rax
	mov	rax,[rcx+10h]
	mov	rax,[rax+80h]
	mov	[rdx+28h],rax
	mov	rax,[rcx+10h]
	mov	rax,[rax+88h]
	mov	[rdx+30h],rax
	ret
0000000000429EEA                               90 90 90 90 90 90           ......

;; fn0000000000429EF0: 0000000000429EF0
fn0000000000429EF0 proc
	mov	rax,[rcx+10h]
	mov	rax,[rax+40h]
	mov	[rdx],rax
	mov	rax,[rcx+10h]
	mov	rax,[rax+48h]
	mov	[rdx+8h],rax
	ret
0000000000429F08                         90 90 90 90 90 90 90 90         ........

;; fn0000000000429F10: 0000000000429F10
fn0000000000429F10 proc
	mov	rax,[rcx+10h]
	mov	rax,[rax+0C8h]
	mov	[rdx],rax
	mov	rax,[rcx+10h]
	mov	rax,[rax+0D0h]
	mov	[rdx+8h],rax
	mov	rax,[rcx+10h]
	mov	rax,[rax+0D8h]
	mov	[rdx+10h],rax
	mov	rax,[rcx+10h]
	mov	rax,[rax+0E0h]
	mov	[rdx+18h],rax
	mov	rax,[rcx+10h]
	mov	rax,[rax+0E8h]
	mov	[rdx+20h],rax
	mov	rax,[rcx+10h]
	mov	rax,[rax+0F0h]
	mov	[rdx+28h],rax
	mov	rax,[rcx+10h]
	mov	rax,[rax+0F8h]
	mov	[rdx+30h],rax
	mov	rax,[rcx+10h]
	mov	rax,[rax+100h]
	mov	[rdx+38h],rax
	mov	rax,[rcx+10h]
	mov	rax,[rax+108h]
	mov	[rdx+40h],rax
	mov	rax,[rcx+10h]
	mov	rax,[rax+110h]
	mov	[rdx+48h],rax
	mov	rax,[rcx+10h]
	mov	rax,[rax+118h]
	mov	[rdx+50h],rax
	mov	rax,[rcx+10h]
	mov	rax,[rax+120h]
	mov	[rdx+58h],rax
	ret
0000000000429FC4             90 90 90 90 90 90 90 90 90 90 90 90     ............

;; fn0000000000429FD0: 0000000000429FD0
fn0000000000429FD0 proc
	ret
0000000000429FD1    90 90 90 90 90 90 90 90 90 90 90 90 90 90 90  ...............

;; fn0000000000429FE0: 0000000000429FE0
fn0000000000429FE0 proc
	mov	rax,[rcx+10h]
	mov	rax,[rax+10h]
	mov	[rdx],rax
	mov	rax,[rcx+10h]
	mov	rax,[rax+18h]
	mov	[rdx+8h],rax
	ret
0000000000429FF8                         90 90 90 90 90 90 90 90         ........

;; fn000000000042A000: 000000000042A000
fn000000000042A000 proc
	mov	rax,[rcx+10h]
	mov	rax,[rax+20h]
	mov	[rdx],rax
	mov	rax,[rcx+10h]
	mov	rax,[rax+28h]
	mov	[rdx+8h],rax
	ret
000000000042A018                         90 90 90 90 90 90 90 90         ........

;; fn000000000042A020: 000000000042A020
fn000000000042A020 proc
	mov	rax,[rcx+10h]
	mov	rax,[rax+90h]
	mov	[rdx],rax
	mov	rax,[rcx+10h]
	mov	rax,[rax+98h]
	mov	[rdx+8h],rax
	mov	rax,[rcx+10h]
	mov	rax,[rax+0A0h]
	mov	[rdx+10h],rax
	mov	rax,[rcx+10h]
	mov	rax,[rax+0A8h]
	mov	[rdx+18h],rax
	mov	rax,[rcx+10h]
	mov	rax,[rax+0B0h]
	mov	[rdx+20h],rax
	mov	rax,[rcx+10h]
	mov	rax,[rax+0B8h]
	mov	[rdx+28h],rax
	mov	rax,[rcx+10h]
	mov	rax,[rax+0C0h]
	mov	[rdx+30h],rax
	ret
000000000042A089                            90 90 90 90 90 90 90          .......

;; fn000000000042A090: 000000000042A090
fn000000000042A090 proc
	mov	rax,[rcx+10h]
	mov	rax,[rax+30h]
	mov	[rdx],rax
	mov	rax,[rcx+10h]
	mov	rax,[rax+38h]
	mov	[rdx+8h],rax
	ret
000000000042A0A8                         90 90 90 90 90 90 90 90         ........

;; fn000000000042A0B0: 000000000042A0B0
fn000000000042A0B0 proc
	mov	rax,[rcx+10h]
	mov	rax,[rax+128h]
	mov	[rdx],rax
	mov	rax,[rcx+10h]
	mov	rax,[rax+130h]
	mov	[rdx+8h],rax
	mov	rax,[rcx+10h]
	mov	rax,[rax+138h]
	mov	[rdx+10h],rax
	mov	rax,[rcx+10h]
	mov	rax,[rax+140h]
	mov	[rdx+18h],rax
	mov	rax,[rcx+10h]
	mov	rax,[rax+148h]
	mov	[rdx+20h],rax
	mov	rax,[rcx+10h]
	mov	rax,[rax+150h]
	mov	[rdx+28h],rax
	mov	rax,[rcx+10h]
	mov	rax,[rax+158h]
	mov	[rdx+30h],rax
	mov	rax,[rcx+10h]
	mov	rax,[rax+160h]
	mov	[rdx+38h],rax
	mov	rax,[rcx+10h]
	mov	rax,[rax+168h]
	mov	[rdx+40h],rax
	mov	rax,[rcx+10h]
	mov	rax,[rax+170h]
	mov	[rdx+48h],rax
	mov	rax,[rcx+10h]
	mov	rax,[rax+178h]
	mov	[rdx+50h],rax
	mov	rax,[rcx+10h]
	mov	rax,[rax+180h]
	mov	[rdx+58h],rax
	ret
000000000042A164             90 90 90 90 90 90 90 90 90 90 90 90     ............

;; fn000000000042A170: 000000000042A170
;;   Called from:
;;     0000000000442152 (in fn00000000004420B0)
fn000000000042A170 proc
	push	r14
	push	r13
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,20h
	mov	r14,rcx
	mov	rbp,rdx
	xor	ecx,ecx
	xor	edx,edx
	mov	r12,r8
	mov	r13,r9
	call	41BDB8h
	mov	rcx,rax
	mov	rdi,rax
	call	41BCB8h
	lea	rbx,[rax+1h]
	mov	rcx,rbx
	call	475560h
	mov	r8,rbx
	mov	rdx,rdi
	mov	rcx,rax
	mov	rsi,rax
	call	41BCC0h
	mov	rdx,[r14+20h]
	xor	ecx,ecx
	call	41BDB8h
	mov	r9,[rsp+80h]
	mov	r8,r13
	mov	rdx,r12
	mov	rcx,rbp
	call	41BE48h
	xor	ecx,ecx
	mov	rdx,rsi
	mov	rbx,rax
	call	41BDB8h
	mov	rcx,rsi
	call	475540h
	test	rbx,rbx
	jnz	42A1FCh

l000000000042A1F6:
	xor	eax,eax
	mov	[rbp+0h],ax

l000000000042A1FC:
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	ret
000000000042A20B                                  48 83 C2 01 48            H...H
000000000042A210 89 C1 74 05 E8 97 73 FE FF E8 F2 B6 04 00 90 90 ..t...s.........

;; fn000000000042A220: 000000000042A220
fn000000000042A220 proc
	mov	rax,[rcx+10h]
	mov	rax,[rax+58h]
	mov	[rdx],rax
	mov	rax,[rcx+10h]
	mov	rax,[rax+60h]
	mov	[rdx+8h],rax
	mov	rax,[rcx+10h]
	mov	rax,[rax+68h]
	mov	[rdx+10h],rax
	mov	rax,[rcx+10h]
	mov	rax,[rax+70h]
	mov	[rdx+18h],rax
	mov	rax,[rcx+10h]
	mov	rax,[rax+78h]
	mov	[rdx+20h],rax
	mov	rax,[rcx+10h]
	mov	rax,[rax+80h]
	mov	[rdx+28h],rax
	mov	rax,[rcx+10h]
	mov	rax,[rax+88h]
	mov	[rdx+30h],rax
	ret
000000000042A27A                               90 90 90 90 90 90           ......

;; fn000000000042A280: 000000000042A280
fn000000000042A280 proc
	mov	rax,[rcx+10h]
	mov	rax,[rax+40h]
	mov	[rdx],rax
	mov	rax,[rcx+10h]
	mov	rax,[rax+48h]
	mov	[rdx+8h],rax
	ret
000000000042A298                         90 90 90 90 90 90 90 90         ........

;; fn000000000042A2A0: 000000000042A2A0
fn000000000042A2A0 proc
	mov	rax,[rcx+10h]
	mov	rax,[rax+0C8h]
	mov	[rdx],rax
	mov	rax,[rcx+10h]
	mov	rax,[rax+0D0h]
	mov	[rdx+8h],rax
	mov	rax,[rcx+10h]
	mov	rax,[rax+0D8h]
	mov	[rdx+10h],rax
	mov	rax,[rcx+10h]
	mov	rax,[rax+0E0h]
	mov	[rdx+18h],rax
	mov	rax,[rcx+10h]
	mov	rax,[rax+0E8h]
	mov	[rdx+20h],rax
	mov	rax,[rcx+10h]
	mov	rax,[rax+0F0h]
	mov	[rdx+28h],rax
	mov	rax,[rcx+10h]
	mov	rax,[rax+0F8h]
	mov	[rdx+30h],rax
	mov	rax,[rcx+10h]
	mov	rax,[rax+100h]
	mov	[rdx+38h],rax
	mov	rax,[rcx+10h]
	mov	rax,[rax+108h]
	mov	[rdx+40h],rax
	mov	rax,[rcx+10h]
	mov	rax,[rax+110h]
	mov	[rdx+48h],rax
	mov	rax,[rcx+10h]
	mov	rax,[rax+118h]
	mov	[rdx+50h],rax
	mov	rax,[rcx+10h]
	mov	rax,[rax+120h]
	mov	[rdx+58h],rax
	ret
000000000042A354             90 90 90 90 90 90 90 90 90 90 90 90     ............

;; fn000000000042A360: 000000000042A360
;;   Called from:
;;     000000000042CDC1 (in fn000000000042CD70)
;;     000000000042D761 (in fn000000000042D710)
;;     000000000042E121 (in fn000000000042E0D0)
;;     000000000042EAC1 (in fn000000000042EA70)
;;     000000000042F486 (in fn000000000042F430)
;;     000000000042FE86 (in fn000000000042FE30)
;;     0000000000430860 (in fn0000000000430800)
;;     0000000000431ABB (in fn0000000000431990)
;;     0000000000438FBD (in fn0000000000438F60)
;;     0000000000439350 (in fn00000000004392F0)
fn000000000042A360 proc
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,28h
	lea	rcx,[000000000048B580]                                 ; [rip+00061211]
	mov	rbx,rdx
	call	42BB80h
	mov	rdi,rax
	mov	rax,[rbx]
	mov	rax,[rax+18h]
	lea	rsi,[rax+rdi*8]
	mov	rax,[rsi]
	test	rax,rax
	jz	42A3A0h

l000000000042A38D:
	add	rsp,28h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
000000000042A396                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l000000000042A3A0:
	mov	ecx,90h
	call	475590h
	mov	rbp,rax
	mov	dword ptr [rax+8h],0h
	lea	rax,[0000000000497350]                                 ; [rip+0006CF95]
	mov	qword ptr [rbp+10h],+0h
	mov	qword ptr [rbp+18h],+0h
	mov	rdx,rbx
	mov	[rbp+0h],rax
	mov	byte ptr [rbp+20h],0h
	mov	rcx,rbp
	mov	qword ptr [rbp+28h],+0h
	mov	qword ptr [rbp+30h],+0h
	mov	qword ptr [rbp+38h],+0h
	mov	qword ptr [rbp+40h],+0h
	mov	byte ptr [rbp+48h],0h
	mov	byte ptr [rbp+49h],0h
	mov	byte ptr [rbp+88h],0h
	call	463E50h
	mov	rcx,[rbx]
	mov	r8,rdi
	mov	rdx,rbp
	call	469430h
	mov	rax,[rsi]
	add	rsp,28h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
000000000042A427                      48 89 C1 E8 11 B4 04 00 E8        H........
000000000042A430 2C BC 04 00 48 89 C1 E8 04 B4 04 00 48 8B 45 00 ,...H.......H.E.
000000000042A440 48 89 E9 FF 50 08 EB E7 48 89 C3 E8 20 B6 04 00 H...P...H... ...
000000000042A450 48 89 D9 E8 58 71 FE FF 90 90 90 90 90 90 90 90 H...Xq..........

;; fn000000000042A460: 000000000042A460
;;   Called from:
;;     00000000004327A1 (in fn0000000000432750)
;;     00000000004330D1 (in fn0000000000433080)
;;     0000000000433A11 (in fn00000000004339C0)
;;     0000000000434411 (in fn00000000004343C0)
;;     0000000000434E56 (in fn0000000000434E00)
;;     00000000004357F6 (in fn00000000004357A0)
;;     000000000043626B (in fn0000000000436210)
;;     00000000004375BA (in fn0000000000437490)
fn000000000042A460 proc
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,28h
	lea	rcx,[000000000048B590]                                 ; [rip+00061121]
	mov	rbx,rdx
	call	42BB80h
	mov	rdi,rax
	mov	rax,[rbx]
	mov	rax,[rax+18h]
	lea	rsi,[rax+rdi*8]
	mov	rax,[rsi]
	test	rax,rax
	jz	42A4A0h

l000000000042A48D:
	add	rsp,28h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
000000000042A496                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l000000000042A4A0:
	mov	ecx,0D0h
	call	475590h
	mov	rbp,rax
	mov	dword ptr [rax+8h],0h
	lea	rax,[0000000000497370]                                 ; [rip+0006CEB5]
	xor	edx,edx
	mov	qword ptr [rbp+10h],+0h
	mov	qword ptr [rbp+18h],+0h
	mov	[rbp+0h],rax
	xor	eax,eax
	mov	[rbp+4Ah],dx
	mov	byte ptr [rbp+20h],0h
	mov	qword ptr [rbp+28h],+0h
	mov	rdx,rbx
	mov	qword ptr [rbp+30h],+0h
	mov	qword ptr [rbp+38h],+0h
	mov	rcx,rbp
	mov	qword ptr [rbp+40h],+0h
	mov	[rbp+48h],ax
	mov	byte ptr [rbp+0C8h],0h
	call	4645D0h
	mov	rcx,[rbx]
	mov	r8,rdi
	mov	rdx,rbp
	call	469430h
	mov	rax,[rsi]
	add	rsp,28h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
000000000042A52B                                  48 89 C1 E8 0D            H....
000000000042A530 B3 04 00 E8 28 BB 04 00 48 89 C1 E8 00 B3 04 00 ....(...H.......
000000000042A540 48 8B 45 00 48 89 E9 FF 50 08 EB E7 48 89 C3 E8 H.E.H...P...H...
000000000042A550 1C B5 04 00 48 89 D9 E8 54 70 FE FF 90 90 90 90 ....H...Tp......

;; fn000000000042A560: 000000000042A560
;;   Called from:
;;     00000000004425CE (in fn0000000000442560)
fn000000000042A560 proc
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,28h
	lea	rcx,[000000000048B2B0]                                 ; [rip+00060D41]
	mov	rsi,rdx
	call	42BB80h
	mov	rbp,rax
	mov	rax,[rsi]
	mov	rax,[rax+18h]
	lea	rdi,[rax+rbp*8]
	mov	rax,[rdi]
	test	rax,rax
	jz	42A5A0h

l000000000042A58D:
	add	rsp,28h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
000000000042A596                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l000000000042A5A0:
	mov	ecx,70h
	call	475590h
	mov	rbx,rax
	mov	dword ptr [rax+8h],0h
	lea	rax,[0000000000497690]                                 ; [rip+0006D0D5]
	mov	qword ptr [rbx+10h],+0h
	mov	qword ptr [rbx+18h],+0h
	mov	rdx,rsi
	mov	[rbx],rax
	mov	byte ptr [rbx+20h],0h
	mov	rcx,rbx
	mov	byte ptr [rbx+21h],0h
	mov	byte ptr [rbx+22h],0h
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
	mov	byte ptr [rbx+6Fh],0h
	call	4661A0h
	mov	rcx,[rsi]
	mov	r8,rbp
	mov	rdx,rbx
	call	469430h
	mov	rax,[rdi]
	add	rsp,28h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
000000000042A65A                               48 89 C1 E8 DE B1           H.....
000000000042A660 04 00 E8 F9 B9 04 00 48 89 C1 E8 D1 B1 04 00 48 .......H.......H
000000000042A670 8B 03 48 89 D9 FF 50 08 EB E8 48 89 C3 E8 EE B3 ..H...P...H.....
000000000042A680 04 00 48 89 D9 E8 26 6F FE FF 90 90 90 90 90 90 ..H...&o........

;; fn000000000042A690: 000000000042A690
;;   Called from:
;;     00000000004433EE (in fn0000000000443380)
fn000000000042A690 proc
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,28h
	lea	rcx,[000000000048B2C0]                                 ; [rip+00060C21]
	mov	rsi,rdx
	call	42BB80h
	mov	rbp,rax
	mov	rax,[rsi]
	mov	rax,[rax+18h]
	lea	rdi,[rax+rbp*8]
	mov	rax,[rdi]
	test	rax,rax
	jz	42A6D0h

l000000000042A6BD:
	add	rsp,28h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
000000000042A6C6                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l000000000042A6D0:
	mov	ecx,70h
	call	475590h
	mov	rbx,rax
	mov	dword ptr [rax+8h],0h
	lea	rax,[00000000004976B0]                                 ; [rip+0006CFC5]
	mov	qword ptr [rbx+10h],+0h
	mov	qword ptr [rbx+18h],+0h
	mov	rdx,rsi
	mov	[rbx],rax
	mov	byte ptr [rbx+20h],0h
	mov	rcx,rbx
	mov	byte ptr [rbx+21h],0h
	mov	byte ptr [rbx+22h],0h
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
	mov	byte ptr [rbx+6Fh],0h
	call	466B10h
	mov	rcx,[rsi]
	mov	r8,rbp
	mov	rdx,rbx
	call	469430h
	mov	rax,[rdi]
	add	rsp,28h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
000000000042A78A                               48 89 C1 E8 AE B0           H.....
000000000042A790 04 00 E8 C9 B8 04 00 48 89 C1 E8 A1 B0 04 00 48 .......H.......H
000000000042A7A0 8B 03 48 89 D9 FF 50 08 EB E8 48 89 C3 E8 BE B2 ..H...P...H.....
000000000042A7B0 04 00 48 89 D9 E8 F6 6D FE FF 90 90 90 90 90 90 ..H....m........

;; fn000000000042A7C0: 000000000042A7C0
;;   Called from:
;;     000000000044467E (in fn0000000000444610)
fn000000000042A7C0 proc
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,28h
	lea	rcx,[000000000048B2D0]                                 ; [rip+00060B01]
	mov	rsi,rdx
	call	42BB80h
	mov	rbp,rax
	mov	rax,[rsi]
	mov	rax,[rax+18h]
	lea	rdi,[rax+rbp*8]
	mov	rax,[rdi]
	test	rax,rax
	jz	42A800h

l000000000042A7ED:
	add	rsp,28h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
000000000042A7F6                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l000000000042A800:
	mov	ecx,80h
	call	475590h
	mov	rbx,rax
	mov	dword ptr [rax+8h],0h
	lea	rax,[00000000004976D0]                                 ; [rip+0006CEB5]
	xor	edx,edx
	mov	qword ptr [rbx+10h],+0h
	mov	qword ptr [rbx+18h],+0h
	mov	[rbx],rax
	xor	eax,eax
	mov	[rbx+24h],dx
	mov	byte ptr [rbx+20h],0h
	mov	[rbx+22h],ax
	mov	rdx,rsi
	mov	qword ptr [rbx+28h],+0h
	mov	qword ptr [rbx+30h],+0h
	mov	rcx,rbx
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
	mov	rcx,[rsi]
	mov	r8,rbp
	mov	rdx,rbx
	call	469430h
	mov	rax,[rdi]
	add	rsp,28h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
000000000042A8BE                                           48 89               H.
000000000042A8C0 C1 E8 7A AF 04 00 E8 95 B7 04 00 48 89 C1 E8 6D ..z........H...m
000000000042A8D0 AF 04 00 48 8B 03 48 89 D9 FF 50 08 EB E8 48 89 ...H..H...P...H.
000000000042A8E0 C3 E8 8A B1 04 00 48 89 D9 E8 C2 6C FE FF 90 90 ......H....l....

;; fn000000000042A8F0: 000000000042A8F0
;;   Called from:
;;     00000000004455AE (in fn0000000000445540)
fn000000000042A8F0 proc
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,28h
	lea	rcx,[000000000048B2E0]                                 ; [rip+000609E1]
	mov	rsi,rdx
	call	42BB80h
	mov	rbp,rax
	mov	rax,[rsi]
	mov	rax,[rax+18h]
	lea	rdi,[rax+rbp*8]
	mov	rax,[rdi]
	test	rax,rax
	jz	42A930h

l000000000042A91D:
	add	rsp,28h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
000000000042A926                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l000000000042A930:
	mov	ecx,80h
	call	475590h
	mov	rbx,rax
	mov	dword ptr [rax+8h],0h
	lea	rax,[00000000004976F0]                                 ; [rip+0006CDA5]
	xor	edx,edx
	mov	qword ptr [rbx+10h],+0h
	mov	qword ptr [rbx+18h],+0h
	mov	[rbx],rax
	xor	eax,eax
	mov	[rbx+24h],dx
	mov	byte ptr [rbx+20h],0h
	mov	[rbx+22h],ax
	mov	rdx,rsi
	mov	qword ptr [rbx+28h],+0h
	mov	qword ptr [rbx+30h],+0h
	mov	rcx,rbx
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
	mov	rcx,[rsi]
	mov	r8,rbp
	mov	rdx,rbx
	call	469430h
	mov	rax,[rdi]
	add	rsp,28h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
000000000042A9EE                                           48 89               H.
000000000042A9F0 C1 E8 4A AE 04 00 E8 65 B6 04 00 48 89 C1 E8 3D ..J....e...H...=
000000000042AA00 AE 04 00 48 8B 03 48 89 D9 FF 50 08 EB E8 48 89 ...H..H...P...H.
000000000042AA10 C3 E8 5A B0 04 00 48 89 D9 E8 92 6B FE FF 90 90 ..Z...H....k....

;; fn000000000042AA20: 000000000042AA20
fn000000000042AA20 proc
	mov	rax,[rcx+8h]
	ret
000000000042AA25                90 90 90 90 90 90 90 90 90 90 90      ...........

;; fn000000000042AA30: 000000000042AA30
;;   Called from:
;;     000000000042C093 (in fn000000000042C080)
fn000000000042AA30 proc
	push	rbp
	mov	rbp,rsp
	mov	[rbp+10h],rcx
	mov	rax,[rbp+10h]
	pop	rbp
	ret
000000000042AA3E                                           90 90               ..

;; fn000000000042AA40: 000000000042AA40
;;   Called from:
;;     000000000042C203 (in fn000000000042C1F0)
fn000000000042AA40 proc
	push	rbp
	mov	rbp,rsp
	mov	[rbp+10h],rcx
	mov	rax,[rbp+10h]
	pop	rbp
	ret
000000000042AA4E                                           90 90               ..

;; fn000000000042AA50: 000000000042AA50
;;   Called from:
;;     0000000000424C3A (in fn0000000000424C00)
;;     0000000000424CE8 (in fn0000000000424CB0)
;;     0000000000424DBA (in fn0000000000424D80)
;;     0000000000424E68 (in fn0000000000424E30)
;;     00000000004250DA (in fn00000000004250A0)
;;     0000000000425188 (in fn0000000000425150)
;;     000000000042525A (in fn0000000000425220)
;;     0000000000425308 (in fn00000000004252D0)
;;     000000000042ABC4 (in fn000000000042ABC0)
;;     000000000042ABD4 (in fn000000000042ABD0)
;;     000000000042ABF4 (in fn000000000042ABF0)
;;     000000000042AC14 (in fn000000000042AC10)
;;     000000000042ACE4 (in fn000000000042ACE0)
;;     000000000042AD04 (in fn000000000042AD00)
;;     000000000042AD24 (in fn000000000042AD20)
;;     000000000042AD44 (in fn000000000042AD40)
;;     0000000000455988 (in fn0000000000455970)
;;     00000000004559AC (in fn0000000000455970)
;;     0000000000455AC1 (in fn0000000000455AB0)
;;     0000000000455BDC (in fn0000000000455BB0)
;;     0000000000455DC4 (in fn0000000000455DB0)
;;     0000000000456305 (in fn00000000004562A0)
;;     0000000000456497 (in fn0000000000456470)
;;     00000000004568BA (in fn00000000004568A0)
;;     00000000004576E8 (in fn00000000004576D0)
;;     000000000045770C (in fn00000000004576D0)
;;     0000000000457811 (in fn0000000000457800)
;;     000000000045792C (in fn0000000000457900)
;;     0000000000457B14 (in fn0000000000457B00)
;;     0000000000458065 (in fn0000000000458000)
;;     00000000004581F7 (in fn00000000004581D0)
;;     000000000045864A (in fn0000000000458630)
;;     0000000000459074 (in fn0000000000459070)
;;     0000000000459B14 (in fn0000000000459B10)
;;     000000000045F524 (in fn000000000045F520)
;;     000000000045FDA4 (in fn000000000045FDA0)
;;     00000000004609F4 (in fn00000000004609F0)
;;     0000000000461214 (in fn0000000000461210)
fn000000000042AA50 proc
	cmp	qword ptr [rcx],0h
	setnz	al
	ret
000000000042AA58                         90 90 90 90 90 90 90 90         ........

;; fn000000000042AA60: 000000000042AA60
fn000000000042AA60 proc
	push	rsi
	push	rbx
	sub	rsp,58h
	mov	rdx,[rcx+18h]
	mov	ebx,[rcx+10h]
	lea	rcx,[00000000004270F0]                                 ; [rip-00003984]
	mov	rax,[rdx]
	mov	rax,[rax+18h]
	cmp	rax,rcx
	jnz	42AAF0h

l000000000042AA80:
	lea	rsi,[rsp+3Fh]
	xor	edx,edx
	xor	ecx,ecx
	mov	r8,rsi
	call	4505D0h
	cmp	ebx,2h
	mov	[rsp+40h],rax
	jz	42AB70h

l000000000042AA9F:
	jle	42AAD0h

l000000000042AAA1:
	cmp	ebx,3h
	jz	42AB50h

l000000000042AAAA:
	cmp	ebx,4h
	jnz	42AB14h

l000000000042AAAF:
	lea	rcx,[rsp+40h]
	lea	rdx,[000000000048E0A7]                                 ; [rip+000635EC]
	mov	r8d,0Eh
	call	4511C0h
	jmp	42AAFAh
000000000042AAC8                         0F 1F 84 00 00 00 00 00         ........

l000000000042AAD0:
	cmp	ebx,1h
	jnz	42AB14h

l000000000042AAD5:
	lea	rcx,[rsp+40h]
	lea	rdx,[000000000048E0B6]                                 ; [rip+000635D5]
	mov	r8d,18h
	call	4511C0h
	jmp	42AAFAh
000000000042AAEE                                           66 90               f.

l000000000042AAF0:
	lea	rcx,[rsp+40h]
	mov	r8d,ebx
	call	rax

l000000000042AAFA:
	mov	rax,[rsp+40h]
	mov	edx,0FFFFFFFFh
	lock
	xadd	[rax-8h],edx
	test	edx,edx
	jle	42AB30h

l000000000042AB0D:
	add	rsp,58h
	pop	rbx
	pop	rsi
	ret

l000000000042AB14:
	lea	rcx,[rsp+40h]
	lea	rdx,[000000000048E0FD]                                 ; [rip+000635DD]
	mov	r8d,0Dh
	call	4511C0h
	jmp	42AAFAh
000000000042AB2D                                        0F 1F 00              ...

l000000000042AB30:
	lea	rcx,[rax-18h]
	lea	rdx,[rsp+3Fh]
	mov	[rsp+28h],rax
	call	450A50h
	mov	rax,[rsp+28h]
	add	rsp,58h
	pop	rbx
	pop	rsi
	ret
000000000042AB4F                                              90                .

l000000000042AB50:
	lea	rcx,[rsp+40h]
	lea	rdx,[000000000048E0E9]                                 ; [rip+0006358D]
	mov	r8d,13h
	call	4511C0h
	jmp	42AAFAh
000000000042AB69                            0F 1F 80 00 00 00 00          .......

l000000000042AB70:
	lea	rcx,[rsp+40h]
	lea	rdx,[000000000048E0CF]                                 ; [rip+00063553]
	mov	r8d,19h
	call	4511C0h
	jmp	42AAFAh
000000000042AB8C                                     48 89 C3 48             H..H
000000000042AB90 8B 44 24 40 48 89 F2 48 8D 48 E8 E8 C0 5E 02 00 .D$@H..H.H...^..
000000000042ABA0 48 89 D9 E8 08 6A FE FF 90 90 90 90 90 90 90 90 H....j..........

;; fn000000000042ABB0: 000000000042ABB0
fn000000000042ABB0 proc
	lea	rax,[000000000048D81F]                                 ; [rip+00062C68]
	ret
000000000042ABB8                         90 90 90 90 90 90 90 90         ........

;; fn000000000042ABC0: 000000000042ABC0
fn000000000042ABC0 proc
	add	rcx,48h
	jmp	42AA50h
000000000042ABC9                            90 90 90 90 90 90 90          .......

;; fn000000000042ABD0: 000000000042ABD0
fn000000000042ABD0 proc
	add	rcx,48h
	jmp	42AA50h
000000000042ABD9                            90 90 90 90 90 90 90          .......

;; fn000000000042ABE0: 000000000042ABE0
fn000000000042ABE0 proc
	lea	rax,[rcx+18h]
	ret
000000000042ABE5                90 90 90 90 90 90 90 90 90 90 90      ...........

;; fn000000000042ABF0: 000000000042ABF0
fn000000000042ABF0 proc
	add	rcx,60h
	jmp	42AA50h
000000000042ABF9                            90 90 90 90 90 90 90          .......

;; fn000000000042AC00: 000000000042AC00
fn000000000042AC00 proc
	lea	rax,[rcx+18h]
	ret
000000000042AC05                90 90 90 90 90 90 90 90 90 90 90      ...........

;; fn000000000042AC10: 000000000042AC10
fn000000000042AC10 proc
	add	rcx,60h
	jmp	42AA50h
000000000042AC19                            90 90 90 90 90 90 90          .......

;; fn000000000042AC20: 000000000042AC20
fn000000000042AC20 proc
	mov	rax,[rcx+8h]
	ret
000000000042AC25                90 90 90 90 90 90 90 90 90 90 90      ...........

;; fn000000000042AC30: 000000000042AC30
fn000000000042AC30 proc
	movzx	eax,byte ptr [rcx]
	ret
000000000042AC34             90 90 90 90 90 90 90 90 90 90 90 90     ............

;; fn000000000042AC40: 000000000042AC40
fn000000000042AC40 proc
	movzx	eax,byte ptr [rcx]
	ret
000000000042AC44             90 90 90 90 90 90 90 90 90 90 90 90     ............

;; fn000000000042AC50: 000000000042AC50
;;   Called from:
;;     0000000000452650 (in fn0000000000452640)
fn000000000042AC50 proc
	push	rbp
	mov	rbp,rsp
	mov	[rbp+10h],rcx
	mov	rax,[rbp+10h]
	mov	rax,[rax]
	pop	rbp
	ret
000000000042AC61    90 90 90 90 90 90 90 90 90 90 90 90 90 90 90  ...............

;; fn000000000042AC70: 000000000042AC70
;;   Called from:
;;     000000000047381A (in fn0000000000473800)
;;     0000000000473829 (in fn0000000000473800)
fn000000000042AC70 proc
	push	rbp
	mov	rbp,rsp
	mov	[rbp+10h],rcx
	mov	rax,[rbp+10h]
	mov	rax,[rax]
	pop	rbp
	ret
000000000042AC81    90 90 90 90 90 90 90 90 90 90 90 90 90 90 90  ...............

;; fn000000000042AC90: 000000000042AC90
;;   Called from:
;;     00000000004687C8 (in fn00000000004687A0)
fn000000000042AC90 proc
	push	rbp
	mov	rbp,rsp
	sub	rsp,20h
	mov	[rbp+10h],rcx
	mov	rax,[rbp+10h]
	mov	rax,[rax]
	mov	rcx,rax
	call	471B30h
	add	rsp,20h
	pop	rbp
	ret
000000000042ACB1    90 90 90 90 90 90 90 90 90 90 90 90 90 90 90  ...............

;; fn000000000042ACC0: 000000000042ACC0
fn000000000042ACC0 proc
	mov	rax,[rcx+8h]
	ret
000000000042ACC5                90 90 90 90 90 90 90 90 90 90 90      ...........

;; fn000000000042ACD0: 000000000042ACD0
fn000000000042ACD0 proc
	lea	rax,[rcx+10h]
	ret
000000000042ACD5                90 90 90 90 90 90 90 90 90 90 90      ...........

;; fn000000000042ACE0: 000000000042ACE0
fn000000000042ACE0 proc
	add	rcx,58h
	jmp	42AA50h
000000000042ACE9                            90 90 90 90 90 90 90          .......

;; fn000000000042ACF0: 000000000042ACF0
fn000000000042ACF0 proc
	lea	rax,[rcx+10h]
	ret
000000000042ACF5                90 90 90 90 90 90 90 90 90 90 90      ...........

;; fn000000000042AD00: 000000000042AD00
fn000000000042AD00 proc
	add	rcx,58h
	jmp	42AA50h
000000000042AD09                            90 90 90 90 90 90 90          .......

;; fn000000000042AD10: 000000000042AD10
fn000000000042AD10 proc
	lea	rax,[rcx+8h]
	ret
000000000042AD15                90 90 90 90 90 90 90 90 90 90 90      ...........

;; fn000000000042AD20: 000000000042AD20
fn000000000042AD20 proc
	add	rcx,50h
	jmp	42AA50h
000000000042AD29                            90 90 90 90 90 90 90          .......

;; fn000000000042AD30: 000000000042AD30
fn000000000042AD30 proc
	lea	rax,[rcx+8h]
	ret
000000000042AD35                90 90 90 90 90 90 90 90 90 90 90      ...........

;; fn000000000042AD40: 000000000042AD40
fn000000000042AD40 proc
	add	rcx,50h
	jmp	42AA50h
000000000042AD49                            90 90 90 90 90 90 90          .......

;; fn000000000042AD50: 000000000042AD50
fn000000000042AD50 proc
	xor	eax,eax
	cmp	[rdx+8h],rcx
	jz	42AD60h

l000000000042AD58:
	ret
000000000042AD5A                               66 0F 1F 44 00 00           f..D..

l000000000042AD60:
	cmp	[rdx],r8d
	setz	al
	ret
000000000042AD67                      90 90 90 90 90 90 90 90 90        .........

;; fn000000000042AD70: 000000000042AD70
fn000000000042AD70 proc
	push	rbx
	sub	rsp,30h
	mov	rax,[rcx]
	mov	rbx,r8
	lea	r8,[000000000042ADD0]                                  ; [rip+0000004E]
	mov	rax,[rax+20h]
	cmp	rax,r8
	jnz	42ADA0h

l000000000042AD8B:
	xor	eax,eax
	cmp	[rbx+8h],rcx
	jz	42ADC1h

l000000000042AD93:
	add	rsp,30h
	pop	rbx
	ret
000000000042AD99                            0F 1F 80 00 00 00 00          .......

l000000000042ADA0:
	lea	r9,[rsp+20h]
	mov	r8d,edx
	mov	rdx,rcx
	mov	rcx,r9
	call	rax
	mov	rcx,[rsp+28h]
	xor	eax,eax
	cmp	[rbx+8h],rcx
	mov	edx,[rsp+20h]
	jnz	42AD93h

l000000000042ADC1:
	cmp	[rbx],edx
	setz	al
	add	rsp,30h
	pop	rbx
	ret
000000000042ADCC                                     90 90 90 90             ....

;; fn000000000042ADD0: 000000000042ADD0
fn000000000042ADD0 proc
	mov	rax,rcx
	mov	[rcx],r8d
	mov	[rcx+8h],rdx
	ret
000000000042ADDB                                  90 90 90 90 90            .....

;; fn000000000042ADE0: 000000000042ADE0
fn000000000042ADE0 proc
	mov	rax,[rcx]
	mov	rax,[rax-90h]
	ret
000000000042ADEB                                  90 90 90 90 90            .....

;; fn000000000042ADF0: 000000000042ADF0
fn000000000042ADF0 proc
	mov	rax,[rcx]
	ret
000000000042ADF4             90 90 90 90 90 90 90 90 90 90 90 90     ............

;; fn000000000042AE00: 000000000042AE00
fn000000000042AE00 proc
	cmp	qword ptr [rdx],0h
	mov	rax,rcx
	jz	42AE20h

l000000000042AE09:
	lea	rcx,[0000000000462160]                                 ; [rip+00037350]
	mov	qword ptr [rax+8h],+0h
	mov	[rax],rcx
	ret
000000000042AE1C                                     0F 1F 40 00             ..@.

l000000000042AE20:
	mov	qword ptr [rcx],+0h
	mov	qword ptr [rcx+8h],+0h
	ret

;; fn000000000042AE30: 000000000042AE30
fn000000000042AE30 proc
	cmp	qword ptr [rcx],0h
	setz	al
	ret
000000000042AE38                         90 90 90 90 90 90 90 90         ........

;; fn000000000042AE40: 000000000042AE40
fn000000000042AE40 proc
	mov	rax,[rcx+10h]
	ret
000000000042AE45                90 90 90 90 90 90 90 90 90 90 90      ...........

;; fn000000000042AE50: 000000000042AE50
fn000000000042AE50 proc
	mov	rax,[rcx+28h]
	ret
000000000042AE55                90 90 90 90 90 90 90 90 90 90 90      ...........

;; fn000000000042AE60: 000000000042AE60
fn000000000042AE60 proc
	mov	rax,[rcx+8h]
	ret
000000000042AE65                90 90 90 90 90 90 90 90 90 90 90      ...........

;; fn000000000042AE70: 000000000042AE70
fn000000000042AE70 proc
	mov	rax,[rcx+18h]
	ret
000000000042AE75                90 90 90 90 90 90 90 90 90 90 90      ...........

;; fn000000000042AE80: 000000000042AE80
fn000000000042AE80 proc
	mov	rax,[rcx+30h]
	ret
000000000042AE85                90 90 90 90 90 90 90 90 90 90 90      ...........

;; fn000000000042AE90: 000000000042AE90
fn000000000042AE90 proc
	mov	rax,[rcx+20h]
	ret
000000000042AE95                90 90 90 90 90 90 90 90 90 90 90      ...........

;; fn000000000042AEA0: 000000000042AEA0
fn000000000042AEA0 proc
	push	rbx
	sub	rsp,20h
	mov	rbx,rcx
	add	rdx,38h
	call	46AE80h
	mov	rax,rbx
	add	rsp,20h
	pop	rbx
	ret
000000000042AEBA                               90 90 90 90 90 90           ......

;; fn000000000042AEC0: 000000000042AEC0
fn000000000042AEC0 proc
	mov	rax,[rcx+10h]
	ret
000000000042AEC5                90 90 90 90 90 90 90 90 90 90 90      ...........

;; fn000000000042AED0: 000000000042AED0
fn000000000042AED0 proc
	mov	rax,[rcx+28h]
	ret
000000000042AED5                90 90 90 90 90 90 90 90 90 90 90      ...........

;; fn000000000042AEE0: 000000000042AEE0
fn000000000042AEE0 proc
	mov	rax,[rcx+8h]
	ret
000000000042AEE5                90 90 90 90 90 90 90 90 90 90 90      ...........

;; fn000000000042AEF0: 000000000042AEF0
fn000000000042AEF0 proc
	mov	rax,[rcx+18h]
	ret
000000000042AEF5                90 90 90 90 90 90 90 90 90 90 90      ...........

;; fn000000000042AF00: 000000000042AF00
fn000000000042AF00 proc
	mov	rax,[rcx+30h]
	ret
000000000042AF05                90 90 90 90 90 90 90 90 90 90 90      ...........

;; fn000000000042AF10: 000000000042AF10
fn000000000042AF10 proc
	mov	rax,[rcx+20h]
	ret
000000000042AF15                90 90 90 90 90 90 90 90 90 90 90      ...........

;; fn000000000042AF20: 000000000042AF20
fn000000000042AF20 proc
	push	rbx
	sub	rsp,20h
	mov	rbx,rcx
	add	rdx,38h
	call	46AE80h
	mov	rax,rbx
	add	rsp,20h
	pop	rbx
	ret
000000000042AF3A                               90 90 90 90 90 90           ......

;; fn000000000042AF40: 000000000042AF40
fn000000000042AF40 proc
	lea	rax,[000000000048E790]                                 ; [rip+00063849]
	ret
000000000042AF48                         90 90 90 90 90 90 90 90         ........

;; fn000000000042AF50: 000000000042AF50
fn000000000042AF50 proc
	lea	rax,[000000000048E110]                                 ; [rip+000631B9]
	ret
000000000042AF58                         90 90 90 90 90 90 90 90         ........

;; fn000000000042AF60: 000000000042AF60
;;   Called from:
;;     000000000042CE00 (in fn000000000042CD70)
;;     000000000042CE5B (in fn000000000042CD70)
;;     000000000042D7A0 (in fn000000000042D710)
;;     000000000042D7FB (in fn000000000042D710)
;;     000000000042E160 (in fn000000000042E0D0)
;;     000000000042E1BB (in fn000000000042E0D0)
;;     000000000042EB00 (in fn000000000042EA70)
;;     000000000042EB5B (in fn000000000042EA70)
;;     000000000042F4B7 (in fn000000000042F430)
;;     000000000042F512 (in fn000000000042F430)
;;     000000000042FEB7 (in fn000000000042FE30)
;;     000000000042FF12 (in fn000000000042FE30)
;;     0000000000430878 (in fn0000000000430800)
;;     0000000000430EF0 (in fn0000000000430800)
;;     00000000004311BF (in fn0000000000430800)
;;     0000000000431A82 (in fn0000000000431990)
;;     000000000043D0C8 (in fn000000000043D040)
;;     000000000043D1CC (in fn000000000043D040)
;;     000000000043D2BC (in fn000000000043D040)
;;     000000000043EAF9 (in fn000000000043EA80)
;;     0000000000442A36 (in fn0000000000442560)
;;     0000000000442F16 (in fn0000000000442560)
;;     0000000000443856 (in fn0000000000443380)
;;     0000000000443D36 (in fn0000000000443380)
fn000000000042AF60 proc
	push	rsi
	push	rbx
	sub	rsp,38h
	mov	rbx,rcx
	mov	rcx,[rcx]
	test	rcx,rcx
	jz	42B02Eh

l000000000042AF75:
	xor	esi,esi
	cmp	dword ptr [rbx+8h],0FFh
	jz	42AFA0h

l000000000042AF7D:
	mov	rcx,[rdx]
	test	rcx,rcx
	jz	42B038h

l000000000042AF89:
	xor	eax,eax
	cmp	dword ptr [rdx+8h],0FFh
	jz	42AFB4h

l000000000042AF91:
	cmp	al,sil
	setz	al
	add	rsp,38h
	pop	rbx
	pop	rsi
	ret
000000000042AF9E                                           66 90               f.

l000000000042AFA0:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	42AFD3h

l000000000042AFAA:
	movzx	eax,byte ptr [rax]

l000000000042AFAD:
	mov	[rbx+8h],eax
	xor	esi,esi
	jmp	42AF7Dh

l000000000042AFB4:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	42B000h

l000000000042AFBE:
	movzx	eax,byte ptr [rax]

l000000000042AFC1:
	mov	[rdx+8h],eax
	xor	eax,eax
	cmp	al,sil
	setz	al
	add	rsp,38h
	pop	rbx
	pop	rsi
	ret

l000000000042AFD3:
	mov	rax,[rcx]
	mov	[rsp+28h],rdx
	call	qword ptr [rax+48h]
	cmp	eax,0FFh
	mov	rdx,[rsp+28h]
	jnz	42AFADh

l000000000042AFE8:
	mov	qword ptr [rbx],+0h
	mov	esi,1h
	jmp	42AF7Dh
000000000042AFF6                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l000000000042B000:
	mov	rax,[rcx]
	mov	[rsp+28h],rdx
	call	qword ptr [rax+48h]
	cmp	eax,0FFh
	mov	rdx,[rsp+28h]
	jnz	42AFC1h

l000000000042B015:
	mov	eax,1h
	mov	qword ptr [rdx],+0h
	cmp	al,sil
	setz	al
	add	rsp,38h
	pop	rbx
	pop	rsi
	ret

l000000000042B02E:
	mov	esi,1h
	jmp	42AF7Dh

l000000000042B038:
	mov	eax,1h
	jmp	42AF91h
000000000042B042       90 90 90 90 90 90 90 90 90 90 90 90 90 90   ..............

;; fn000000000042B050: 000000000042B050
;;   Called from:
;;     000000000042CE13 (in fn000000000042CD70)
;;     000000000042D443 (in fn000000000042CD70)
;;     000000000042D59C (in fn000000000042CD70)
;;     000000000042D7B3 (in fn000000000042D710)
;;     000000000042DE03 (in fn000000000042D710)
;;     000000000042DF5C (in fn000000000042D710)
;;     000000000042E173 (in fn000000000042E0D0)
;;     000000000042E7A3 (in fn000000000042E0D0)
;;     000000000042E8FC (in fn000000000042E0D0)
;;     000000000042EB13 (in fn000000000042EA70)
;;     000000000042F167 (in fn000000000042EA70)
;;     000000000042F2BC (in fn000000000042EA70)
;;     000000000042F4CA (in fn000000000042F430)
;;     000000000042FB73 (in fn000000000042F430)
;;     000000000042FCBA (in fn000000000042F430)
;;     000000000042FECA (in fn000000000042FE30)
;;     0000000000430543 (in fn000000000042FE30)
;;     000000000043068A (in fn000000000042FE30)
;;     0000000000430B82 (in fn0000000000430800)
;;     0000000000430D9D (in fn0000000000430800)
;;     0000000000430F00 (in fn0000000000430800)
;;     0000000000431043 (in fn0000000000430800)
;;     00000000004311CF (in fn0000000000430800)
;;     0000000000431209 (in fn0000000000430800)
;;     000000000043D0FF (in fn000000000043D040)
;;     000000000043D2E3 (in fn000000000043D040)
;;     000000000043ED5C (in fn000000000043EA80)
;;     0000000000443268 (in fn0000000000442560)
;;     0000000000444088 (in fn0000000000443380)
fn000000000042B050 proc
	push	rbx
	sub	rsp,20h
	mov	rdx,[rcx]
	test	rdx,rdx
	jz	42B0ABh

l000000000042B05D:
	mov	eax,[rcx+8h]
	cmp	eax,0FFh
	jz	42B070h

l000000000042B065:
	add	rsp,20h
	pop	rbx
	ret
000000000042B06B                                  0F 1F 44 00 00            ..D..

l000000000042B070:
	mov	rax,[rdx+10h]
	cmp	rax,[rdx+18h]
	mov	rbx,rcx
	jnc	42B090h

l000000000042B07D:
	movzx	eax,byte ptr [rax]

l000000000042B080:
	mov	[rbx+8h],eax
	add	rsp,20h
	pop	rbx
	ret
000000000042B089                            0F 1F 80 00 00 00 00          .......

l000000000042B090:
	mov	rax,[rdx]
	mov	rcx,rdx
	call	qword ptr [rax+48h]
	cmp	eax,0FFh
	jnz	42B080h

l000000000042B09E:
	mov	qword ptr [rbx],+0h
	add	rsp,20h
	pop	rbx
	ret

l000000000042B0AB:
	mov	eax,0FFFFFFFFh
	jmp	42B065h
000000000042B0B2       90 90 90 90 90 90 90 90 90 90 90 90 90 90   ..............

;; fn000000000042B0C0: 000000000042B0C0
;;   Called from:
;;     00000000004327E0 (in fn0000000000432750)
;;     000000000043284A (in fn0000000000432750)
;;     0000000000432EA9 (in fn0000000000432750)
;;     0000000000433110 (in fn0000000000433080)
;;     000000000043317A (in fn0000000000433080)
;;     00000000004337F9 (in fn0000000000433080)
;;     0000000000433A50 (in fn00000000004339C0)
;;     0000000000433ABA (in fn00000000004339C0)
;;     0000000000434450 (in fn00000000004343C0)
;;     00000000004344B2 (in fn00000000004343C0)
;;     0000000000434E87 (in fn0000000000434E00)
;;     0000000000434EF1 (in fn0000000000434E00)
;;     00000000004355D1 (in fn0000000000434E00)
;;     0000000000435827 (in fn00000000004357A0)
;;     00000000004358A2 (in fn00000000004357A0)
;;     000000000043628D (in fn0000000000436210)
;;     0000000000436537 (in fn0000000000436210)
;;     0000000000436C6E (in fn0000000000436210)
;;     0000000000437585 (in fn0000000000437490)
;;     000000000043FB98 (in fn000000000043FB10)
;;     000000000043FCA0 (in fn000000000043FB10)
;;     000000000043FD9A (in fn000000000043FB10)
;;     00000000004414F8 (in fn0000000000441480)
;;     0000000000444A06 (in fn0000000000444610)
;;     0000000000444E63 (in fn0000000000444610)
;;     0000000000445936 (in fn0000000000445540)
;;     0000000000445D93 (in fn0000000000445540)
fn000000000042B0C0 proc
	push	rsi
	push	rbx
	sub	rsp,38h
	mov	ebx,1h
	mov	rsi,rcx
	mov	rcx,[rcx]
	test	rcx,rcx
	jz	42B0DFh

l000000000042B0D6:
	xor	ebx,ebx
	cmp	word ptr [rsi+8h],0FFh
	jz	42B130h

l000000000042B0DF:
	mov	rcx,[rdx]
	mov	eax,1h
	test	rcx,rcx
	jz	42B0F5h

l000000000042B0EC:
	xor	eax,eax
	cmp	word ptr [rdx+8h],0FFh
	jz	42B101h

l000000000042B0F5:
	cmp	al,bl
	setz	al
	add	rsp,38h
	pop	rbx
	pop	rsi
	ret

l000000000042B101:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	42B193h

l000000000042B10F:
	movzx	eax,word ptr [rax]

l000000000042B112:
	cmp	ax,0FFh
	jz	42B150h

l000000000042B118:
	mov	[rdx+8h],ax
	xor	eax,eax
	cmp	al,bl
	setz	al
	add	rsp,38h
	pop	rbx
	pop	rsi
	ret
000000000042B12A                               66 0F 1F 44 00 00           f..D..

l000000000042B130:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	42B181h

l000000000042B13A:
	movzx	eax,word ptr [rax]

l000000000042B13D:
	cmp	ax,0FFh
	jz	42B170h

l000000000042B143:
	mov	[rsi+8h],ax
	xor	ebx,ebx
	jmp	42B0DFh
000000000042B14B                                  0F 1F 44 00 00            ..D..

l000000000042B150:
	mov	eax,1h
	mov	qword ptr [rdx],+0h
	cmp	al,bl
	setz	al
	add	rsp,38h
	pop	rbx
	pop	rsi
	ret
000000000042B168                         0F 1F 84 00 00 00 00 00         ........

l000000000042B170:
	mov	qword ptr [rsi],+0h
	mov	ebx,1h
	jmp	42B0DFh

l000000000042B181:
	mov	rax,[rcx]
	mov	[rsp+28h],rdx
	call	qword ptr [rax+48h]
	mov	rdx,[rsp+28h]
	jmp	42B13Dh

l000000000042B193:
	mov	rax,[rcx]
	mov	[rsp+28h],rdx
	call	qword ptr [rax+48h]
	mov	rdx,[rsp+28h]
	jmp	42B112h
000000000042B1A8                         90 90 90 90 90 90 90 90         ........

;; fn000000000042B1B0: 000000000042B1B0
;;   Called from:
;;     00000000004327F3 (in fn0000000000432750)
;;     0000000000432F50 (in fn0000000000432750)
;;     0000000000432FC3 (in fn0000000000432750)
;;     0000000000433123 (in fn0000000000433080)
;;     000000000043389D (in fn0000000000433080)
;;     000000000043390A (in fn0000000000433080)
;;     0000000000433A63 (in fn00000000004339C0)
;;     00000000004341A8 (in fn00000000004339C0)
;;     00000000004342A3 (in fn00000000004339C0)
;;     0000000000434463 (in fn00000000004343C0)
;;     0000000000434BE2 (in fn00000000004343C0)
;;     0000000000434CE3 (in fn00000000004343C0)
;;     0000000000434E9A (in fn0000000000434E00)
;;     0000000000435670 (in fn0000000000434E00)
;;     00000000004356E0 (in fn0000000000434E00)
;;     000000000043583A (in fn00000000004357A0)
;;     0000000000435FD8 (in fn00000000004357A0)
;;     00000000004360E6 (in fn00000000004357A0)
;;     0000000000436547 (in fn0000000000436210)
;;     0000000000436585 (in fn0000000000436210)
;;     00000000004367CC (in fn0000000000436210)
;;     0000000000436ACA (in fn0000000000436210)
;;     0000000000436C80 (in fn0000000000436210)
;;     000000000043FBCF (in fn000000000043FB10)
;;     000000000043FDC0 (in fn000000000043FB10)
;;     0000000000441787 (in fn0000000000441480)
;;     0000000000445423 (in fn0000000000444610)
;;     0000000000446353 (in fn0000000000445540)
fn000000000042B1B0 proc
	push	rbx
	sub	rsp,20h
	mov	rdx,[rcx]
	mov	eax,0FFFFFFFFh
	test	rdx,rdx
	jz	42B1CCh

l000000000042B1C2:
	movzx	eax,word ptr [rcx+8h]
	cmp	ax,0FFh
	jz	42B1D2h

l000000000042B1CC:
	add	rsp,20h
	pop	rbx
	ret

l000000000042B1D2:
	mov	rax,[rdx+10h]
	cmp	rax,[rdx+18h]
	mov	rbx,rcx
	jnc	42B200h

l000000000042B1DF:
	movzx	eax,word ptr [rax]

l000000000042B1E2:
	cmp	ax,0FFh
	jz	42B1F2h

l000000000042B1E8:
	mov	[rbx+8h],ax
	add	rsp,20h
	pop	rbx
	ret

l000000000042B1F2:
	mov	qword ptr [rbx],+0h
	add	rsp,20h
	pop	rbx
	ret
000000000042B1FF                                              90                .

l000000000042B200:
	mov	rax,[rdx]
	mov	rcx,rdx
	call	qword ptr [rax+48h]
	jmp	42B1E2h
000000000042B20B                                  90 90 90 90 90            .....

;; fn000000000042B210: 000000000042B210
fn000000000042B210 proc
	lea	rax,[000000000048E770]                                 ; [rip+00063559]
	ret
000000000042B218                         90 90 90 90 90 90 90 90         ........

;; fn000000000042B220: 000000000042B220
fn000000000042B220 proc
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,28h
	lea	rbp,[000000000042B280]                                 ; [rip+00000051]
	cmp	rdx,r8
	mov	rsi,rcx
	mov	rbx,rdx
	mov	rdi,r8
	jc	42B251h

l000000000042B23D:
	jmp	42B272h
000000000042B23F                                              90                .

l000000000042B240:
	call	42B280h
	add	rbx,1h
	mov	[rbx-1h],al
	cmp	rbx,rdi
	jz	42B272h

l000000000042B251:
	mov	rdx,[rsi]
	mov	rcx,rsi
	mov	r9,[rdx+20h]
	movsx	edx,byte ptr [rbx]
	cmp	r9,rbp
	jz	42B240h

l000000000042B263:
	call	r9
	add	rbx,1h
	mov	[rbx-1h],al
	cmp	rbx,rdi
	jnz	42B251h

l000000000042B272:
	mov	rax,rdi
	add	rsp,28h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
000000000042B27E                                           90 90               ..

;; fn000000000042B280: 000000000042B280
;;   Called from:
;;     000000000042B240 (in fn000000000042B220)
fn000000000042B280 proc
	mov	rcx,[rcx+30h]
	movzx	r8d,dl
	lea	eax,[rdx+20h]
	test	byte ptr [rcx+r8*2],1h
	cmovz	eax,edx

l000000000042B293:
	ret
000000000042B294             90 90 90 90 90 90 90 90 90 90 90 90     ............

;; fn000000000042B2A0: 000000000042B2A0
fn000000000042B2A0 proc
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,28h
	lea	rbp,[000000000042B300]                                 ; [rip+00000051]
	cmp	rdx,r8
	mov	rsi,rcx
	mov	rbx,rdx
	mov	rdi,r8
	jc	42B2D1h

l000000000042B2BD:
	jmp	42B2F2h
000000000042B2BF                                              90                .

l000000000042B2C0:
	call	42B300h
	add	rbx,1h
	mov	[rbx-1h],al
	cmp	rbx,rdi
	jz	42B2F2h

l000000000042B2D1:
	mov	rdx,[rsi]
	mov	rcx,rsi
	mov	r9,[rdx+10h]
	movsx	edx,byte ptr [rbx]
	cmp	r9,rbp
	jz	42B2C0h

l000000000042B2E3:
	call	r9
	add	rbx,1h
	mov	[rbx-1h],al
	cmp	rbx,rdi
	jnz	42B2D1h

l000000000042B2F2:
	mov	rax,rdi
	add	rsp,28h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
000000000042B2FE                                           90 90               ..

;; fn000000000042B300: 000000000042B300
;;   Called from:
;;     000000000042B2C0 (in fn000000000042B2A0)
fn000000000042B300 proc
	mov	rcx,[rcx+30h]
	movzx	r8d,dl
	lea	eax,[rdx-20h]
	test	byte ptr [rcx+r8*2],2h
	cmovz	eax,edx

l000000000042B313:
	ret
000000000042B314             90 90 90 90 90 90 90 90 90 90 90 90     ............

;; fn000000000042B320: 000000000042B320
;;   Called from:
;;     000000000042B56A (in fn000000000042B510)
;;     000000000042B59B (in fn000000000042B590)
;;     000000000043927A (in fn0000000000438F60)
;;     0000000000439617 (in fn00000000004392F0)
;;     0000000000441E46 (in fn0000000000441D10)
;;     0000000000442273 (in fn0000000000442220)
;;     0000000000442303 (in fn00000000004422D0)
;;     0000000000444453 (in fn00000000004442A0)
;;     0000000000446B93 (in fn00000000004469A0)
;;     000000000044C2C8 (in fn000000000044C280)
;;     000000000044C533 (in fn000000000044C4F0)
;;     000000000044DA88 (in fn000000000044DA40)
;;     000000000044F0A3 (in fn000000000044EF40)
;;     000000000044F2D3 (in fn000000000044F160)
;;     000000000044F503 (in fn000000000044F3A0)
;;     000000000044F738 (in fn000000000044F5D0)
;;     000000000044F963 (in fn000000000044F800)
;;     000000000044FB83 (in fn000000000044FA20)
;;     000000000044FDA3 (in fn000000000044FC40)
;;     000000000044FFC3 (in fn000000000044FE60)
;;     00000000004641D7 (in fn0000000000463E50)
;;     00000000004641E4 (in fn0000000000463E50)
;;     00000000004665E3 (in fn00000000004661A0)
;;     0000000000466F53 (in fn0000000000466B10)
;;     00000000004689F3 (in fn00000000004688D0)
;;     000000000046E2D3 (in fn000000000046E270)
;;     000000000046E6A8 (in fn000000000046E490)
;;     000000000046E6D3 (in fn000000000046E490)
;;     0000000000470383 (in fn0000000000470070)
;;     00000000004703B3 (in fn0000000000470070)
;;     0000000000471A83 (in fn0000000000471A40)
;;     0000000000471BE3 (in fn0000000000471BA0)
;;     0000000000473AD3 (in fn0000000000473A80)
;;     00000000004746E3 (in fn0000000000474690)
fn000000000042B320 proc
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,+120h
	xor	eax,eax
	lea	rbx,[rsp+20h]
	mov	rbp,rcx
	nop	word ptr [rax+rax+0h]

l000000000042B340:
	mov	[rbx+rax],al
	add	rax,1h
	cmp	rax,+100h
	jnz	42B340h

l000000000042B34F:
	mov	rax,[rbp+0h]
	lea	rdx,[000000000042B5D0]                                 ; [rip+00000276]
	lea	r12,[rbp+39h]
	mov	rax,[rax+38h]
	cmp	rax,rdx
	jnz	42B3C9h

l000000000042B367:
	mov	rax,[rbx]
	lea	rdi,[rbp+41h]
	mov	rsi,rbx
	and	rdi,0F8h
	mov	[rbp+39h],rax
	mov	rax,[rsp+118h]
	mov	[rbp+131h],rax
	mov	rax,r12
	sub	rax,rdi
	sub	rsi,rax
	add	eax,100h
	shr	eax,3h
	mov	ecx,eax

l000000000042B39B:
	rep movsq

l000000000042B39E:
	mov	byte ptr [rbp+38h],1h
	mov	r8d,100h
	mov	rdx,r12
	mov	rcx,rbx
	call	41BD90h
	test	eax,eax
	jz	42B3BBh

l000000000042B3B7:
	mov	byte ptr [rbp+38h],2h

l000000000042B3BB:
	add	rsp,+120h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret

l000000000042B3C9:
	mov	r9,r12
	lea	r8,[rsp+120h]
	mov	rdx,rbx
	mov	rcx,rbp
	call	rax
	jmp	42B39Eh
000000000042B3DE                                           90 90               ..

;; fn000000000042B3E0: 000000000042B3E0
fn000000000042B3E0 proc
	push	r13
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,+148h
	xor	eax,eax
	lea	rbx,[rsp+40h]
	mov	r12,rcx
	nop	dword ptr [rax+0h]

l000000000042B400:
	mov	[rbx+rax],al
	add	rax,1h
	cmp	rax,+100h
	jnz	42B400h

l000000000042B40F:
	mov	rax,[r12]
	lea	rbp,[000000000042B600]                                 ; [rip+000001E6]
	lea	r13,[r12+139h]
	mov	rax,[rax+48h]
	cmp	rax,rbp
	jnz	42B4CCh

l000000000042B42F:
	mov	rax,[rbx]
	lea	rdi,[r12+141h]
	mov	rsi,rbx
	and	rdi,0F8h
	mov	[r12+139h],rax
	mov	rax,[rsp+138h]
	mov	[r12+231h],rax
	mov	rax,r13
	sub	rax,rdi
	sub	rsi,rax
	add	eax,100h
	shr	eax,3h
	mov	ecx,eax

l000000000042B46C:
	rep movsq

l000000000042B46F:
	mov	byte ptr [r12+239h],1h
	mov	r8d,100h
	mov	rdx,r13
	mov	rcx,rbx
	call	41BD90h
	test	eax,eax
	jz	42B4A6h

l000000000042B48D:
	mov	byte ptr [r12+239h],2h
	add	rsp,+148h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	ret

l000000000042B4A6:
	mov	rax,[r12]
	mov	rax,[rax+48h]
	cmp	rax,rbp
	jnz	42B4E6h

l000000000042B4B3:
	movzx	eax,byte ptr [rsp+40h]

l000000000042B4B8:
	cmp	al,1h
	jz	42B48Dh

l000000000042B4BC:
	add	rsp,+148h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	ret

l000000000042B4CC:
	mov	[rsp+20h],r13
	xor	r9d,r9d
	lea	r8,[rsp+140h]
	mov	rdx,rbx
	mov	rcx,r12
	call	rax
	jmp	42B46Fh

l000000000042B4E6:
	lea	rdx,[rsp+3Fh]
	mov	r9d,1h
	lea	r8,[rbx+1h]
	mov	rcx,r12
	mov	[rsp+20h],rdx
	mov	rdx,rbx
	call	rax
	movzx	eax,byte ptr [rsp+3Fh]
	jmp	42B4B8h
000000000042B509                            90 90 90 90 90 90 90          .......

;; fn000000000042B510: 000000000042B510
fn000000000042B510 proc
	push	rsi
	push	rbx
	sub	rsp,38h
	movzx	r10d,byte ptr [rcx+38h]
	mov	rbx,rcx
	mov	rsi,r8
	cmp	r10b,1h
	jz	42B53Fh

l000000000042B527:
	test	r10b,r10b
	jz	42B560h

l000000000042B52C:
	mov	rax,[rbx]
	lea	rcx,[000000000042B5D0]                                 ; [rip+0000009A]
	mov	rax,[rax+38h]
	cmp	rax,rcx
	jnz	42B580h

l000000000042B53F:
	mov	r8,rsi
	mov	rcx,r9
	sub	r8,rdx
	call	41BCC0h
	mov	rax,rsi
	add	rsp,38h
	pop	rbx
	pop	rsi
	ret
000000000042B557                      66 0F 1F 84 00 00 00 00 00        f........

l000000000042B560:
	mov	[rsp+28h],r9
	mov	[rsp+20h],rdx
	call	42B320h
	mov	r9,[rsp+28h]
	mov	rdx,[rsp+20h]
	jmp	42B52Ch
000000000042B57B                                  0F 1F 44 00 00            ..D..

l000000000042B580:
	mov	r8,rsi
	mov	rcx,rbx
	add	rsp,38h
	pop	rbx
	pop	rsi
	jmp	rax
000000000042B58F                                              90                .

;; fn000000000042B590: 000000000042B590
;;   Called from:
;;     0000000000468A33 (in fn00000000004688D0)
;;     0000000000468A57 (in fn00000000004688D0)
;;     0000000000468A82 (in fn00000000004688D0)
;;     0000000000468AA9 (in fn00000000004688D0)
fn000000000042B590 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	mov	rbx,rcx
	mov	esi,edx
	call	42B320h
	mov	rax,[rbx]
	lea	rdx,[000000000042B5F0]                                 ; [rip+00000046]
	mov	rax,[rax+30h]
	cmp	rax,rdx
	jnz	42B5C0h

l000000000042B5B3:
	mov	eax,esi
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret
000000000042B5BC                                     0F 1F 40 00             ..@.

l000000000042B5C0:
	movsx	edx,sil
	mov	rcx,rbx
	add	rsp,28h
	pop	rbx
	pop	rsi
	jmp	rax

;; fn000000000042B5D0: 000000000042B5D0
fn000000000042B5D0 proc
	push	rbx
	sub	rsp,20h
	mov	rbx,r8
	mov	rcx,r9
	sub	r8,rdx
	call	41BCC0h
	mov	rax,rbx
	add	rsp,20h
	pop	rbx
	ret
000000000042B5EC                                     90 90 90 90             ....

;; fn000000000042B5F0: 000000000042B5F0
fn000000000042B5F0 proc
	mov	eax,edx
	ret
000000000042B5F3          90 90 90 90 90 90 90 90 90 90 90 90 90    .............

;; fn000000000042B600: 000000000042B600
fn000000000042B600 proc
	push	rbx
	sub	rsp,20h
	mov	rcx,[rsp+50h]
	mov	rbx,r8
	sub	r8,rdx
	call	41BCC0h
	mov	rax,rbx
	add	rsp,20h
	pop	rbx
	ret
000000000042B61E                                           90 90               ..

;; fn000000000042B620: 000000000042B620
fn000000000042B620 proc
	mov	eax,edx
	ret
000000000042B623          90 90 90 90 90 90 90 90 90 90 90 90 90    .............

;; fn000000000042B630: 000000000042B630
fn000000000042B630 proc
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,28h
	cmp	r8,r9
	mov	rdi,rcx
	mov	rbx,r8
	mov	rsi,r9
	movzx	ebp,dx
	jc	42B655h

l000000000042B649:
	mov	rax,rbx
	add	rsp,28h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret

l000000000042B655:
	mov	rax,[rdi]
	movzx	r8d,word ptr [rbx]
	mov	edx,ebp
	mov	rcx,rdi
	call	qword ptr [rax+10h]
	test	al,al
	jnz	42B649h

l000000000042B668:
	add	rbx,2h
	cmp	rsi,rbx
	ja	42B655h

l000000000042B671:
	mov	rax,rbx
	add	rsp,28h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
000000000042B67D                                        90 90 90              ...

;; fn000000000042B680: 000000000042B680
fn000000000042B680 proc
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,28h
	cmp	rdx,r8
	mov	rsi,rdx
	mov	rbp,r8
	jnc	42B6C7h

l000000000042B693:
	lea	rdx,[r8+1h]
	lea	rbx,[rsi+2h]
	sub	rdx,rbx
	shr	rdx,1h
	lea	rdi,[rsi+rdx*2+2h]
	jmp	42B6B4h
000000000042B6A8                         0F 1F 84 00 00 00 00 00         ........

l000000000042B6B0:
	add	rbx,2h

l000000000042B6B4:
	movzx	ecx,word ptr [rsi]
	call	41BE10h
	cmp	rbx,rdi
	mov	[rsi],ax
	mov	rsi,rbx
	jnz	42B6B0h

l000000000042B6C7:
	mov	rax,rbp
	add	rsp,28h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
000000000042B6D3          90 90 90 90 90 90 90 90 90 90 90 90 90    .............

;; fn000000000042B6E0: 000000000042B6E0
fn000000000042B6E0 proc
	movzx	ecx,dx
	jmp	41BE10h
000000000042B6E8                         90 90 90 90 90 90 90 90         ........

;; fn000000000042B6F0: 000000000042B6F0
fn000000000042B6F0 proc
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,28h
	cmp	rdx,r8
	mov	rsi,rdx
	mov	rbp,r8
	jnc	42B737h

l000000000042B703:
	lea	rdx,[r8+1h]
	lea	rbx,[rsi+2h]
	sub	rdx,rbx
	shr	rdx,1h
	lea	rdi,[rsi+rdx*2+2h]
	jmp	42B724h
000000000042B718                         0F 1F 84 00 00 00 00 00         ........

l000000000042B720:
	add	rbx,2h

l000000000042B724:
	movzx	ecx,word ptr [rsi]
	call	41BE08h
	cmp	rbx,rdi
	mov	[rsi],ax
	mov	rsi,rbx
	jnz	42B720h

l000000000042B737:
	mov	rax,rbp
	add	rsp,28h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
000000000042B743          90 90 90 90 90 90 90 90 90 90 90 90 90    .............

;; fn000000000042B750: 000000000042B750
fn000000000042B750 proc
	movzx	ecx,dx
	jmp	41BE08h
000000000042B758                         90 90 90 90 90 90 90 90         ........

;; fn000000000042B760: 000000000042B760
fn000000000042B760 proc
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,28h
	cmp	r8,r9
	mov	rdi,rcx
	mov	rbx,r8
	mov	rsi,r9
	movzx	ebp,dx
	jc	42B785h

l000000000042B779:
	mov	rax,rbx
	add	rsp,28h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret

l000000000042B785:
	mov	rax,[rdi]
	movzx	r8d,word ptr [rbx]
	mov	edx,ebp
	mov	rcx,rdi
	call	qword ptr [rax+10h]
	test	al,al
	jz	42B779h

l000000000042B798:
	add	rbx,2h
	cmp	rsi,rbx
	ja	42B785h

l000000000042B7A1:
	mov	rax,rbx
	add	rsp,28h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
000000000042B7AD                                        90 90 90              ...

;; fn000000000042B7B0: 000000000042B7B0
;;   Called from:
;;     0000000000468F01 (in fn0000000000468E90)
fn000000000042B7B0 proc
	cmp	dx,10h
	jz	42B890h

l000000000042B7BA:
	ja	42B7F0h

l000000000042B7BC:
	cmp	dx,4h
	jz	42B860h

l000000000042B7C6:
	jbe	42B820h

l000000000042B7C8:
	cmp	dx,8h
	jz	42B8A0h

l000000000042B7D2:
	cmp	dx,0Ch
	jnz	42B880h

l000000000042B7DC:
	lea	rcx,[000000000048E2AF]                                 ; [rip+00062ACC]
	jmp	412AA0h
000000000042B7E8                         0F 1F 84 00 00 00 00 00         ........

l000000000042B7F0:
	cmp	dx,100h
	jz	42B8B0h

l000000000042B7FB:
	jbe	42B840h

l000000000042B7FD:
	cmp	dx,200h
	jz	42B870h

l000000000042B804:
	cmp	dx,20Ch
	jnz	42B880h

l000000000042B80B:
	lea	rcx,[000000000048E2B5]                                 ; [rip+00062AA3]
	jmp	412AA0h
000000000042B817                      66 0F 1F 84 00 00 00 00 00        f........

l000000000042B820:
	cmp	dx,1h
	jz	42B883h

l000000000042B826:
	cmp	dx,2h
	jnz	42B880h

l000000000042B82C:
	lea	rcx,[000000000048E290]                                 ; [rip+00062A5D]
	jmp	412AA0h
000000000042B838                         0F 1F 84 00 00 00 00 00         ........

l000000000042B840:
	cmp	dx,20h
	jz	42B8C0h

l000000000042B846:
	cmp	dx,40h
	jnz	42B880h

l000000000042B84C:
	lea	rcx,[000000000048E27E]                                 ; [rip+00062A2B]
	jmp	412AA0h
000000000042B858                         0F 1F 84 00 00 00 00 00         ........

l000000000042B860:
	lea	rcx,[000000000048E296]                                 ; [rip+00062A2F]
	jmp	412AA0h
000000000042B86C                                     0F 1F 40 00             ..@.

l000000000042B870:
	lea	rcx,[000000000048E2A2]                                 ; [rip+00062A2B]
	jmp	412AA0h
000000000042B87C                                     0F 1F 40 00             ..@.

l000000000042B880:
	xor	eax,eax
	ret

l000000000042B883:
	lea	rcx,[000000000048E28A]                                 ; [rip+00062A00]
	jmp	412AA0h
000000000042B88F                                              90                .

l000000000042B890:
	lea	rcx,[000000000048E2A8]                                 ; [rip+00062A11]
	jmp	412AA0h
000000000042B89C                                     0F 1F 40 00             ..@.

l000000000042B8A0:
	lea	rcx,[000000000048E29C]                                 ; [rip+000629F5]
	jmp	412AA0h
000000000042B8AC                                     0F 1F 40 00             ..@.

l000000000042B8B0:
	lea	rcx,[000000000048E284]                                 ; [rip+000629CD]
	jmp	412AA0h
000000000042B8BC                                     0F 1F 40 00             ..@.

l000000000042B8C0:
	lea	rcx,[000000000048E278]                                 ; [rip+000629B1]
	jmp	412AA0h
000000000042B8CC                                     90 90 90 90             ....

;; fn000000000042B8D0: 000000000042B8D0
fn000000000042B8D0 proc
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,28h
	cmp	rdx,r8
	mov	rdi,rdx
	mov	[rsp+80h],r8
	mov	r14,r9
	jnc	42B952h

l000000000042B8F3:
	mov	rsi,[rsp+80h]
	mov	rax,rdx
	lea	r13,[rcx+2BAh]
	not	rax
	lea	rbp,[rcx+2DAh]
	xor	ebx,ebx
	lea	r12,[rax+rsi]
	shr	r12,1h
	add	r12,1h
	nop	dword ptr [rax+0h]

l000000000042B920:
	mov	r15,r13
	xor	esi,esi

l000000000042B925:
	movzx	edx,word ptr [r15]
	movzx	ecx,word ptr [rdi+rbx*2]
	call	41BE18h
	test	eax,eax
	jz	42B93Bh

l000000000042B936:
	or	si,[r15-20h]

l000000000042B93B:
	add	r15,2h
	cmp	r15,rbp
	jnz	42B925h

l000000000042B944:
	mov	[r14+rbx*2],si
	add	rbx,1h
	cmp	rbx,r12
	jnz	42B920h

l000000000042B952:
	mov	rax,[rsp+80h]
	add	rsp,28h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret
000000000042B96B                                  90 90 90 90 90            .....

;; fn000000000042B970: 000000000042B970
fn000000000042B970 proc
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,28h
	mov	edi,edx
	lea	rbx,[rcx+29Ah]
	lea	rsi,[rcx+2BAh]
	movzx	ebp,r8w
	jmp	42B999h
000000000042B98E                                           66 90               f.

l000000000042B990:
	add	rbx,2h
	cmp	rbx,rsi
	jz	42B9C0h

l000000000042B999:
	test	[rbx],di
	jz	42B990h

l000000000042B99E:
	movzx	edx,word ptr [rbx+20h]
	mov	ecx,ebp
	call	41BE18h
	test	eax,eax
	jz	42B990h

l000000000042B9AD:
	mov	eax,1h
	add	rsp,28h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
000000000042B9BB                                  0F 1F 44 00 00            ..D..

l000000000042B9C0:
	xor	eax,eax
	add	rsp,28h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
000000000042B9CB                                  90 90 90 90 90            .....

;; fn000000000042B9D0: 000000000042B9D0
fn000000000042B9D0 proc
	cmp	rdx,r8
	jnc	42B9F4h

l000000000042B9D5:
	movzx	r10d,byte ptr [rdx]
	add	rdx,1h
	add	r9,2h
	movzx	r10d,word ptr [rcx+r10*2+9Ah]
	mov	[r9-2h],r10w
	cmp	rdx,r8
	jnz	42B9D5h

l000000000042B9F4:
	mov	rax,r8
	ret
000000000042B9F8                         90 90 90 90 90 90 90 90         ........

;; fn000000000042BA00: 000000000042BA00
fn000000000042BA00 proc
	movzx	edx,dl
	movzx	eax,word ptr [rcx+rdx*2+9Ah]
	ret
000000000042BA0C                                     90 90 90 90             ....

;; fn000000000042BA10: 000000000042BA10
fn000000000042BA10 proc
	push	r13
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,28h
	cmp	byte ptr [rcx+18h],0h
	mov	rbx,[rsp+80h]
	mov	r12,rcx
	mov	rbp,r8
	mov	edi,r9d
	jnz	42BA83h

l000000000042BA33:
	cmp	rdx,r8
	jnc	42BA73h

l000000000042BA38:
	lea	rax,[r8+1h]
	lea	rsi,[rdx+2h]
	sub	rax,rsi
	shr	rax,1h
	lea	r12,[rbx+rax+1h]
	jmp	42BA54h
000000000042BA4D                                        0F 1F 00              ...

l000000000042BA50:
	add	rsi,2h

l000000000042BA54:
	movzx	ecx,word ptr [rdx]
	call	412B10h
	cmp	eax,0FFh
	mov	edx,eax
	cmovz	edx,edi

l000000000042BA64:
	add	rbx,1h
	mov	[rbx-1h],dl
	cmp	rbx,r12
	mov	rdx,rsi
	jnz	42BA50h

l000000000042BA73:
	mov	rax,rbp
	add	rsp,28h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	ret

l000000000042BA83:
	cmp	rdx,r8
	jnc	42BA73h

l000000000042BA88:
	lea	rax,[r8+1h]
	lea	rsi,[rdx+2h]
	sub	rax,rsi
	shr	rax,1h
	lea	r13,[rbx+rax+1h]
	jmp	42BAB8h
000000000042BA9D                                        0F 1F 00              ...

l000000000042BAA0:
	movzx	eax,byte ptr [r12+rdx+19h]
	mov	[rbx],al

l000000000042BAA8:
	add	rbx,1h
	mov	rdx,rsi
	cmp	rbx,r13
	jz	42BA73h

l000000000042BAB4:
	add	rsi,2h

l000000000042BAB8:
	movzx	edx,word ptr [rdx]
	cmp	dx,7Fh
	jbe	42BAA0h

l000000000042BAC1:
	movzx	ecx,dx
	call	412B10h
	cmp	eax,0FFh
	cmovz	eax,edi

l000000000042BACF:
	mov	[rbx],al
	jmp	42BAA8h
000000000042BAD3          90 90 90 90 90 90 90 90 90 90 90 90 90    .............

;; fn000000000042BAE0: 000000000042BAE0
fn000000000042BAE0 proc
	push	rbx
	sub	rsp,20h
	cmp	dx,7Fh
	mov	ebx,r8d
	ja	42BAF4h

l000000000042BAEE:
	cmp	byte ptr [rcx+18h],0h
	jnz	42BB10h

l000000000042BAF4:
	movzx	ecx,dx
	call	412B10h
	cmp	eax,0FFh
	cmovz	eax,ebx

l000000000042BB02:
	add	rsp,20h
	pop	rbx
	ret
000000000042BB08                         0F 1F 84 00 00 00 00 00         ........

l000000000042BB10:
	movzx	edx,dx
	movzx	eax,byte ptr [rcx+rdx+19h]
	add	rsp,20h
	pop	rbx
	ret
000000000042BB1E                                           90 90               ..

;; fn000000000042BB20: 000000000042BB20
;;   Called from:
;;     00000000004549A4 (in fn0000000000454950)
fn000000000042BB20 proc
	push	rbp
	mov	rbp,rsp
	mov	[rbp+10h],rcx
	mov	rax,[rbp+10h]
	mov	rax,[rax]
	pop	rbp
	ret
000000000042BB31    90 90 90 90 90 90 90 90 90 90 90 90 90 90 90  ...............

;; fn000000000042BB40: 000000000042BB40
;;   Called from:
;;     00000000004690D0 (in fn00000000004690C0)
;;     0000000000469150 (in fn0000000000469140)
;;     0000000000469207 (in fn00000000004691E0)
;;     0000000000469288 (in fn0000000000469260)
;;     00000000004692A7 (in fn0000000000469260)
fn000000000042BB40 proc
	push	rbp
	mov	rbp,rsp
	mov	[rbp+10h],rcx
	mov	rax,[rbp+10h]
	mov	rax,[rax]
	pop	rbp
	ret
000000000042BB51    90 90 90 90 90 90 90 90 90 90 90 90 90 90 90  ...............

;; fn000000000042BB60: 000000000042BB60
;;   Called from:
;;     0000000000454994 (in fn0000000000454950)
;;     0000000000469110 (in fn0000000000469100)
fn000000000042BB60 proc
	push	rbp
	mov	rbp,rsp
	mov	[rbp+10h],rcx
	mov	rax,[rbp+10h]
	mov	rax,[rax]
	pop	rbp
	ret
000000000042BB71    90 90 90 90 90 90 90 90 90 90 90 90 90 90 90  ...............

;; fn000000000042BB80: 000000000042BB80
;;   Called from:
;;     000000000042A372 (in fn000000000042A360)
;;     000000000042A472 (in fn000000000042A460)
;;     000000000042A572 (in fn000000000042A560)
;;     000000000042A6A2 (in fn000000000042A690)
;;     000000000042A7D2 (in fn000000000042A7C0)
;;     000000000042A902 (in fn000000000042A8F0)
;;     00000000004382D2 (in fn00000000004382A0)
;;     0000000000438602 (in fn00000000004385D0)
;;     00000000004388D2 (in fn00000000004388A0)
;;     0000000000438C02 (in fn0000000000438BD0)
;;     0000000000439B07 (in fn0000000000439A70)
;;     0000000000439FA2 (in fn0000000000439F70)
;;     000000000043A2E2 (in fn000000000043A2B0)
;;     000000000043A5C2 (in fn000000000043A590)
;;     000000000043A902 (in fn000000000043A8D0)
;;     000000000043ACEF (in fn000000000043AC90)
;;     000000000043B0CF (in fn000000000043B070)
;;     000000000043B8EA (in fn000000000043B850)
;;     0000000000446C42 (in fn0000000000446BF0)
;;     0000000000447322 (in fn00000000004472D0)
;;     0000000000447D23 (in fn0000000000447CD0)
;;     0000000000448513 (in fn00000000004484C0)
;;     0000000000469580 (in fn0000000000469560)
;;     00000000004697A3 (in fn0000000000469790)
;;     000000000046A93E (in fn00000000004699E0)
;;     000000000046A959 (in fn00000000004699E0)
;;     000000000046A974 (in fn00000000004699E0)
;;     000000000046A98F (in fn00000000004699E0)
;;     000000000046A9AA (in fn00000000004699E0)
;;     000000000046A9C5 (in fn00000000004699E0)
;;     000000000046A9E0 (in fn00000000004699E0)
;;     000000000046AA02 (in fn00000000004699E0)
;;     00000000004723AF (in fn00000000004723A0)
;;     000000000047240F (in fn0000000000472400)
;;     000000000047246F (in fn0000000000472460)
;;     00000000004724CF (in fn00000000004724C0)
;;     000000000047252F (in fn0000000000472520)
;;     000000000047258F (in fn0000000000472580)
;;     00000000004725EF (in fn00000000004725E0)
;;     000000000047264F (in fn0000000000472640)
;;     00000000004726AF (in fn00000000004726A0)
;;     000000000047270F (in fn0000000000472700)
;;     000000000047276F (in fn0000000000472760)
;;     00000000004727CF (in fn00000000004727C0)
;;     000000000047282F (in fn0000000000472820)
;;     000000000047288F (in fn0000000000472880)
;;     00000000004728EF (in fn00000000004728E0)
;;     000000000047294F (in fn0000000000472940)
;;     00000000004729AF (in fn00000000004729A0)
;;     0000000000472A0F (in fn0000000000472A00)
;;     0000000000472A6F (in fn0000000000472A60)
;;     0000000000472ACF (in fn0000000000472AC0)
;;     0000000000472B2F (in fn0000000000472B20)
;;     0000000000472B8F (in fn0000000000472B80)
;;     0000000000472BEF (in fn0000000000472BE0)
;;     0000000000472C4F (in fn0000000000472C40)
;;     0000000000472CAF (in fn0000000000472CA0)
;;     0000000000472D0F (in fn0000000000472D00)
;;     0000000000472D8F (in fn0000000000472D80)
;;     0000000000472DEF (in fn0000000000472DE0)
;;     0000000000472E4F (in fn0000000000472E40)
;;     0000000000472EAF (in fn0000000000472EA0)
;;     0000000000472F0F (in fn0000000000472F00)
;;     0000000000472F6F (in fn0000000000472F60)
;;     0000000000472FCF (in fn0000000000472FC0)
;;     000000000047302F (in fn0000000000473020)
;;     000000000047308F (in fn0000000000473080)
;;     00000000004730EF (in fn00000000004730E0)
;;     000000000047314F (in fn0000000000473140)
;;     00000000004731AF (in fn00000000004731A0)
;;     000000000047320F (in fn0000000000473200)
;;     000000000047326F (in fn0000000000473260)
;;     00000000004732CF (in fn00000000004732C0)
;;     000000000047332F (in fn0000000000473320)
;;     000000000047338F (in fn0000000000473380)
;;     00000000004733EF (in fn00000000004733E0)
;;     000000000047344F (in fn0000000000473440)
;;     00000000004734AF (in fn00000000004734A0)
;;     000000000047350F (in fn0000000000473500)
;;     000000000047356F (in fn0000000000473560)
;;     00000000004735CF (in fn00000000004735C0)
;;     000000000047362F (in fn0000000000473620)
;;     000000000047368F (in fn0000000000473680)
;;     00000000004736EF (in fn00000000004736E0)
;;     000000000047374F (in fn0000000000473740)
;;     00000000004737AF (in fn00000000004737A0)
fn000000000042BB80 proc
	mov	rax,[rcx]
	test	rax,rax
	jnz	42BB9Ah

l000000000042BB88:
	mov	al,1h
	lock
	xadd	[000000000048B470],eax                                ; [rip+0005F8DE]
	add	eax,1h
	cdqe
	mov	[rcx],rax

l000000000042BB9A:
	sub	rax,1h
	ret
000000000042BB9F                                              90                .

;; fn000000000042BBA0: 000000000042BBA0
;;   Called from:
;;     000000000042BE48 (in fn000000000042BDF0)
;;     000000000042BE58 (in fn000000000042BDF0)
;;     000000000046AD7F (in fn000000000046AD30)
fn000000000042BBA0 proc
	push	r14
	push	r13
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,40h
	lea	r14,[rsp+3Fh]
	mov	rsi,rcx
	mov	r12,rdx
	xor	ecx,ecx
	xor	edx,edx
	mov	r8,r14
	call	4505D0h
	mov	rdx,[r12]
	mov	[rsi],rax
	mov	rbp,[rdx+20h]
	mov	r13,[rbp+0h]
	test	r13,r13
	jz	42BDA8h

l000000000042BBDD:
	cmp	qword ptr [rbp+8h],0h
	jz	42BD90h

l000000000042BBE8:
	mov	rcx,r13
	xor	ebx,ebx
	jmp	42BBFAh
000000000042BBEF                                              90                .

l000000000042BBF0:
	cmp	rbx,4h
	ja	42BD90h

l000000000042BBFA:
	add	rbx,1h
	mov	rdi,[rbp+rbx*8+0h]
	mov	rdx,rdi
	call	41BDB0h
	test	eax,eax
	mov	rcx,rdi
	jz	42BBF0h

l000000000042BC12:
	mov	edx,80h
	mov	rcx,rsi
	call	451BE0h
	mov	rax,[00000000004918E0]                                 ; [rip+00065CBA]
	mov	rbp,[rax]
	mov	rbx,[rbp+0h]
	mov	rcx,rbx
	call	41BCB8h
	mov	rdx,rbx
	mov	r8,rax
	mov	rcx,rsi
	call	450E00h
	mov	rax,[rsi]
	mov	rdx,[rax-18h]
	lea	rbx,[rdx+1h]
	cmp	rbx,[rax-10h]
	ja	42BC5Dh

l000000000042BC54:
	mov	r9d,[rax-8h]
	test	r9d,r9d
	jle	42BC6Fh

l000000000042BC5D:
	mov	rdx,rbx
	mov	rcx,rsi
	call	451BE0h
	mov	rax,[rsi]
	mov	rdx,[rax-18h]

l000000000042BC6F:
	mov	byte ptr [rax+rdx],3Dh
	mov	rax,[rsi]
	mov	[rax-18h],rbx
	mov	dword ptr [rax-8h],0h
	mov	byte ptr [rax+rbx],0h
	mov	rax,[r12]
	mov	rax,[rax+20h]
	mov	rbx,[rax]
	mov	rcx,rbx
	call	41BCB8h
	mov	rdx,rbx
	mov	r8,rax
	mov	rcx,rsi
	call	450E00h
	mov	ebx,8h

l000000000042BCAB:
	mov	rax,[rsi]
	mov	rdx,[rax-18h]
	lea	rdi,[rdx+1h]
	cmp	rdi,[rax-10h]
	ja	42BCC5h

l000000000042BCBC:
	mov	r8d,[rax-8h]
	test	r8d,r8d
	jle	42BCD7h

l000000000042BCC5:
	mov	rdx,rdi
	mov	rcx,rsi
	call	451BE0h
	mov	rax,[rsi]
	mov	rdx,[rax-18h]

l000000000042BCD7:
	mov	byte ptr [rax+rdx],3Bh
	mov	rax,[rsi]
	mov	[rax-18h],rdi
	mov	dword ptr [rax-8h],0h
	mov	byte ptr [rax+rdi],0h
	mov	rdi,[rbp+rbx+0h]
	mov	rcx,rdi
	call	41BCB8h
	mov	rdx,rdi
	mov	r8,rax
	mov	rcx,rsi
	call	450E00h
	mov	rax,[rsi]
	mov	rdx,[rax-18h]
	lea	rdi,[rdx+1h]
	cmp	rdi,[rax-10h]
	ja	42BD20h

l000000000042BD19:
	mov	ecx,[rax-8h]
	test	ecx,ecx
	jle	42BD32h

l000000000042BD20:
	mov	rdx,rdi
	mov	rcx,rsi
	call	451BE0h
	mov	rax,[rsi]
	mov	rdx,[rax-18h]

l000000000042BD32:
	mov	byte ptr [rax+rdx],3Dh
	mov	rax,[rsi]
	mov	[rax-18h],rdi
	mov	dword ptr [rax-8h],0h
	mov	byte ptr [rax+rdi],0h
	mov	rax,[r12]
	mov	rax,[rax+20h]
	mov	rdi,[rax+rbx]
	mov	rcx,rdi
	call	41BCB8h
	mov	rdx,rdi
	mov	r8,rax
	mov	rcx,rsi
	call	450E00h
	add	rbx,8h
	cmp	rbx,30h
	jnz	42BCABh

l000000000042BD78:
	mov	rax,rsi
	add	rsp,40h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	ret
000000000042BD8A                               66 0F 1F 44 00 00           f..D..

l000000000042BD90:
	mov	rcx,r13
	call	41BCB8h
	mov	rdx,r13
	mov	r8,rax
	mov	rcx,rsi
	call	4511C0h
	jmp	42BD78h

l000000000042BDA8:
	mov	r8,[rax-18h]
	mov	r9d,1h
	mov	dword ptr [rsp+20h],2Ah
	xor	edx,edx
	mov	rcx,rsi
	call	4508E0h
	jmp	42BD78h
000000000042BDC6                   48 8B 16 48 89 C3 48 8D 4A E8       H..H..H.J.
000000000042BDD0 4C 89 F2 E8 88 4C 02 00 48 89 D9 E8 D0 57 FE FF L....L..H....W..
000000000042BDE0 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 ................

;; fn000000000042BDF0: 000000000042BDF0
fn000000000042BDF0 proc
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,68h
	mov	rax,[rcx]
	mov	r8,[rdx]
	mov	r9,rcx
	cmp	rax,r8
	jz	42BEC0h

l000000000042BE0A:
	mov	rdi,[rax+20h]
	mov	rcx,[rdi]
	test	rcx,rcx
	jz	42BEA0h

l000000000042BE1A:
	mov	rbp,[r8+20h]
	mov	rax,[rbp+0h]
	test	rax,rax
	jz	42BEA0h

l000000000042BE27:
	mov	rsi,rdx
	mov	rdx,rax
	mov	rbx,r9
	call	41BDB0h
	test	eax,eax
	jnz	42BEA0h

l000000000042BE39:
	cmp	qword ptr [rdi+8h],0h
	jz	42BEB0h

l000000000042BE40:
	lea	rcx,[rsp+50h]
	mov	rdx,rsi
	call	42BBA0h
	lea	rsi,[rsp+40h]
	mov	rdx,rbx
	mov	rcx,rsi
	call	42BBA0h
	mov	rbx,[rsp+40h]
	mov	rdx,[rsp+50h]
	xor	eax,eax
	mov	r8,[rbx-18h]
	cmp	r8,[rdx-18h]
	jz	42BED0h

l000000000042BE73:
	mov	edx,0FFFFFFFFh
	lock
	xadd	[rbx-8h],edx
	test	edx,edx
	jle	42BF00h

l000000000042BE81:
	mov	r8,[rsp+50h]
	mov	edx,0FFFFFFFFh
	lock
	xadd	[r8-8h],edx
	test	edx,edx
	jle	42BEE0h

l000000000042BE95:
	add	rsp,68h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
000000000042BE9E                                           66 90               f.

l000000000042BEA0:
	xor	eax,eax
	add	rsp,68h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
000000000042BEAB                                  0F 1F 44 00 00            ..D..

l000000000042BEB0:
	cmp	qword ptr [rbp+8h],0h
	jnz	42BE40h

l000000000042BEB7:
	nop	word ptr [rax+rax+0h]

l000000000042BEC0:
	mov	eax,1h
	add	rsp,68h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
000000000042BECE                                           66 90               f.

l000000000042BED0:
	mov	rcx,rbx
	call	41BD90h
	test	eax,eax
	setz	al
	jmp	42BE73h
000000000042BEDF                                              90                .

l000000000042BEE0:
	lea	rcx,[r8-18h]
	mov	rdx,rsi
	mov	[rsp+2Fh],al
	call	450A50h
	movzx	eax,byte ptr [rsp+2Fh]
	jmp	42BE95h
000000000042BEF7                      66 0F 1F 84 00 00 00 00 00        f........

l000000000042BF00:
	lea	rdx,[rsp+3Fh]
	lea	rcx,[rbx-18h]
	mov	[rsp+2Fh],al
	call	450A50h
	movzx	eax,byte ptr [rsp+2Fh]
	jmp	42BE81h
000000000042BF1C                                     48 89 C3 48             H..H
000000000042BF20 8B 44 24 50 48 89 D6 48 8D 54 24 3F 48 8D 48 E8 .D$PH..H.T$?H.H.
000000000042BF30 E8 2B 4B 02 00 48 89 D9 48 89 F2 48 83 C2 01 74 .+K..H..H..H...t
000000000042BF40 0A E8 6A 56 FE FF 48 89 C1 EB F0 E8 C0 99 04 00 ..jV..H.........
000000000042BF50 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 ................

;; fn000000000042BF60: 000000000042BF60
;;   Called from:
;;     000000000046B056 (in fn000000000046B030)
;;     000000000046B246 (in fn000000000046B220)
fn000000000042BF60 proc
	push	rbp
	push	rbx
	sub	rsp,38h
	lea	rbp,[rsp+80h]
	mov	[rbp-30h],rcx
	mov	[rbp-28h],rdx
	mov	[rbp-20h],r8
	mov	rcx,[rbp-30h]
	call	42C080h
	mov	rbx,rax
	mov	rcx,[rbp-30h]
	call	42C020h
	sub	rbx,rax
	mov	rdx,rbx
	mov	rax,[rbp-28h]
	cmp	rdx,rax
	setc	al
	test	al,al
	jz	42BFAFh

l000000000042BFA3:
	mov	rax,[rbp-20h]
	mov	rcx,rax
	call	470E60h

l000000000042BFAF:
	mov	rcx,[rbp-30h]
	call	42C020h
	mov	rbx,rax
	mov	rcx,[rbp-30h]
	call	42C020h
	mov	[rbp-60h],rax
	lea	rdx,[rbp-28h]
	lea	rax,[rbp-60h]
	mov	rcx,rax
	call	4719C0h
	mov	rax,[rax]
	add	rax,rbx
	mov	[rbp-58h],rax
	mov	rcx,[rbp-30h]
	call	42C020h
	cmp	rax,[rbp-58h]
	ja	42C000h

l000000000042BFF1:
	mov	rcx,[rbp-30h]
	call	42C080h
	cmp	rax,[rbp-58h]
	jnc	42C00Bh

l000000000042C000:
	mov	rcx,[rbp-30h]
	call	42C080h
	jmp	42C00Fh

l000000000042C00B:
	mov	rax,[rbp-58h]

l000000000042C00F:
	add	rsp,38h
	pop	rbx
	pop	rbp
	ret
000000000042C016                   90 90 90 90 90 90 90 90 90 90       ..........

;; fn000000000042C020: 000000000042C020
;;   Called from:
;;     0000000000424917 (in fn00000000004248F0)
;;     000000000042BF8A (in fn000000000042BF60)
;;     000000000042BFB3 (in fn000000000042BF60)
;;     000000000042BFBF (in fn000000000042BF60)
;;     000000000042BFE6 (in fn000000000042BF60)
;;     000000000046B08E (in fn000000000046B030)
;;     000000000046B27E (in fn000000000046B220)
;;     000000000046B502 (in fn000000000046B4B0)
fn000000000042C020 proc
	push	rbp
	mov	rbp,rsp
	mov	[rbp+10h],rcx
	mov	rax,[rbp+10h]
	mov	rax,[rax+8h]
	mov	rdx,rax
	mov	rax,[rbp+10h]
	mov	rax,[rax]
	sub	rdx,rax
	mov	rax,rdx
	sar	rax,3h
	pop	rbp
	ret
000000000042C046                   90 90 90 90 90 90 90 90 90 90       ..........

;; fn000000000042C050: 000000000042C050
;;   Called from:
;;     000000000046B4EA (in fn000000000046B4B0)
fn000000000042C050 proc
	push	rbp
	mov	rbp,rsp
	mov	[rbp+10h],rcx
	mov	rax,[rbp+10h]
	mov	rax,[rax+10h]
	mov	rdx,rax
	mov	rax,[rbp+10h]
	mov	rax,[rax]
	sub	rdx,rax
	mov	rax,rdx
	sar	rax,3h
	pop	rbp
	ret
000000000042C076                   90 90 90 90 90 90 90 90 90 90       ..........

;; fn000000000042C080: 000000000042C080
;;   Called from:
;;     000000000042BF7E (in fn000000000042BF60)
;;     000000000042BFF5 (in fn000000000042BF60)
;;     000000000042C004 (in fn000000000042BF60)
;;     000000000046B4CA (in fn000000000046B4B0)
fn000000000042C080 proc
	push	rbp
	mov	rbp,rsp
	sub	rsp,20h
	mov	[rbp+10h],rcx
	mov	rax,[rbp+10h]
	mov	rcx,rax
	call	42AA30h
	mov	rcx,rax
	call	464E30h
	add	rsp,20h
	pop	rbp
	ret
000000000042C0A6                   90 90 90 90 90 90 90 90 90 90       ..........

;; fn000000000042C0B0: 000000000042C0B0
;;   Called from:
;;     0000000000402BBF (in fn0000000000402A94)
;;     0000000000424862 (in fn00000000004247F0)
;;     0000000000424879 (in fn00000000004247F0)
fn000000000042C0B0 proc
	push	rbp
	mov	rbp,rsp
	mov	[rbp+10h],rcx
	mov	[rbp+18h],rdx
	mov	rax,[rbp+10h]
	mov	rax,[rax]
	mov	rdx,[rbp+18h]
	shl	rdx,3h
	add	rax,rdx
	pop	rbp
	ret

;; fn000000000042C0D0: 000000000042C0D0
;;   Called from:
;;     000000000046B746 (in fn000000000046B720)
fn000000000042C0D0 proc
	push	rbp
	push	rbx
	sub	rsp,38h
	lea	rbp,[rsp+80h]
	mov	[rbp-30h],rcx
	mov	[rbp-28h],rdx
	mov	[rbp-20h],r8
	mov	rcx,[rbp-30h]
	call	42C1F0h
	mov	rbx,rax
	mov	rcx,[rbp-30h]
	call	42C190h
	sub	rbx,rax
	mov	rdx,rbx
	mov	rax,[rbp-28h]
	cmp	rdx,rax
	setc	al
	test	al,al
	jz	42C11Fh

l000000000042C113:
	mov	rax,[rbp-20h]
	mov	rcx,rax
	call	470E60h

l000000000042C11F:
	mov	rcx,[rbp-30h]
	call	42C190h
	mov	rbx,rax
	mov	rcx,[rbp-30h]
	call	42C190h
	mov	[rbp-60h],rax
	lea	rdx,[rbp-28h]
	lea	rax,[rbp-60h]
	mov	rcx,rax
	call	4719C0h
	mov	rax,[rax]
	add	rax,rbx
	mov	[rbp-58h],rax
	mov	rcx,[rbp-30h]
	call	42C190h
	cmp	rax,[rbp-58h]
	ja	42C170h

l000000000042C161:
	mov	rcx,[rbp-30h]
	call	42C1F0h
	cmp	rax,[rbp-58h]
	jnc	42C17Bh

l000000000042C170:
	mov	rcx,[rbp-30h]
	call	42C1F0h
	jmp	42C17Fh

l000000000042C17B:
	mov	rax,[rbp-58h]

l000000000042C17F:
	add	rsp,38h
	pop	rbx
	pop	rbp
	ret
000000000042C186                   90 90 90 90 90 90 90 90 90 90       ..........

;; fn000000000042C190: 000000000042C190
;;   Called from:
;;     000000000042C0FA (in fn000000000042C0D0)
;;     000000000042C123 (in fn000000000042C0D0)
;;     000000000042C12F (in fn000000000042C0D0)
;;     000000000042C156 (in fn000000000042C0D0)
;;     000000000046B77E (in fn000000000046B720)
;;     000000000046B9E2 (in fn000000000046B990)
fn000000000042C190 proc
	push	rbp
	mov	rbp,rsp
	mov	[rbp+10h],rcx
	mov	rax,[rbp+10h]
	mov	rax,[rax+8h]
	mov	rdx,rax
	mov	rax,[rbp+10h]
	mov	rax,[rax]
	sub	rdx,rax
	mov	rax,rdx
	pop	rbp
	ret
000000000042C1B2       90 90 90 90 90 90 90 90 90 90 90 90 90 90   ..............

;; fn000000000042C1C0: 000000000042C1C0
;;   Called from:
;;     000000000046B9CA (in fn000000000046B990)
fn000000000042C1C0 proc
	push	rbp
	mov	rbp,rsp
	mov	[rbp+10h],rcx
	mov	rax,[rbp+10h]
	mov	rax,[rax+10h]
	mov	rdx,rax
	mov	rax,[rbp+10h]
	mov	rax,[rax]
	sub	rdx,rax
	mov	rax,rdx
	pop	rbp
	ret
000000000042C1E2       90 90 90 90 90 90 90 90 90 90 90 90 90 90   ..............

;; fn000000000042C1F0: 000000000042C1F0
;;   Called from:
;;     000000000042C0EE (in fn000000000042C0D0)
;;     000000000042C165 (in fn000000000042C0D0)
;;     000000000042C174 (in fn000000000042C0D0)
;;     000000000046B9AA (in fn000000000046B990)
fn000000000042C1F0 proc
	push	rbp
	mov	rbp,rsp
	sub	rsp,20h
	mov	[rbp+10h],rcx
	mov	rax,[rbp+10h]
	mov	rcx,rax
	call	42AA40h
	mov	rcx,rax
	call	465000h
	add	rsp,20h
	pop	rbp
	ret
000000000042C216                   90 90 90 90 90 90 90 90 90 90       ..........

;; fn000000000042C220: 000000000042C220
fn000000000042C220 proc
	mov	rax,[rsp+28h]
	mov	[rax],r8
	mov	eax,3h
	ret
000000000042C22E                                           90 90               ..

;; fn000000000042C230: 000000000042C230
fn000000000042C230 proc
	mov	eax,1h
	ret
000000000042C236                   90 90 90 90 90 90 90 90 90 90       ..........

;; fn000000000042C240: 000000000042C240
fn000000000042C240 proc
	mov	eax,1h
	ret
000000000042C246                   90 90 90 90 90 90 90 90 90 90       ..........

;; fn000000000042C250: 000000000042C250
fn000000000042C250 proc
	mov	eax,1h
	ret
000000000042C256                   90 90 90 90 90 90 90 90 90 90       ..........

;; fn000000000042C260: 000000000042C260
fn000000000042C260 proc
	mov	rax,[rsp+28h]
	mov	rdx,[rsp+30h]
	mov	[rax],r8
	mov	rax,[rsp+40h]
	mov	[rax],rdx
	mov	eax,3h
	ret
000000000042C27B                                  90 90 90 90 90            .....

;; fn000000000042C280: 000000000042C280
fn000000000042C280 proc
	mov	rax,[rsp+28h]
	mov	rdx,[rsp+30h]
	mov	[rax],r8
	mov	rax,[rsp+40h]
	mov	[rax],rdx
	mov	eax,3h
	ret
000000000042C29B                                  90 90 90 90 90            .....

;; fn000000000042C2A0: 000000000042C2A0
fn000000000042C2A0 proc
	mov	rax,[rsp+28h]
	sub	r9,r8
	cmp	r9,rax
	cmovbe	rax,r9

l000000000042C2AF:
	ret

;; fn000000000042C2B0: 000000000042C2B0
fn000000000042C2B0 proc
	mov	rax,[rsp+28h]
	mov	[rax],r8
	mov	eax,3h
	ret
000000000042C2BE                                           90 90               ..

;; fn000000000042C2C0: 000000000042C2C0
fn000000000042C2C0 proc
	mov	rax,[0000000000491F00]                                 ; [rip+00065C39]
	mov	rax,[rax]
	cmp	dword ptr [rax],1h
	setz	al
	movzx	eax,al
	ret
000000000042C2D4             90 90 90 90 90 90 90 90 90 90 90 90     ............

;; fn000000000042C2E0: 000000000042C2E0
fn000000000042C2E0 proc
	mov	rax,[0000000000491F00]                                 ; [rip+00065C19]
	mov	rax,[rax]
	mov	eax,[rax]
	ret
000000000042C2ED                                        90 90 90              ...

;; fn000000000042C2F0: 000000000042C2F0
fn000000000042C2F0 proc
	xor	eax,eax
	ret
000000000042C2F3          90 90 90 90 90 90 90 90 90 90 90 90 90    .............

;; fn000000000042C300: 000000000042C300
fn000000000042C300 proc
	push	r13
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,38h
	mov	eax,[rdx]
	mov	rsi,[rsp+98h]
	cmp	r8,r9
	mov	rbp,rdx
	mov	rbx,r8
	mov	rdi,r9
	mov	r12,[rsp+0A0h]
	mov	[rsp+2Ch],eax
	setc	al
	jnc	42C3B0h

l000000000042C333:
	cmp	rsi,r12
	jnc	42C3B0h

l000000000042C338:
	lea	r13,[rsp+2Ch]
	jmp	42C36Dh
000000000042C33F                                              90                .

l000000000042C340:
	cmp	rax,0FEh
	jz	42C3B5h

l000000000042C346:
	test	rax,rax
	jnz	42C352h

l000000000042C34B:
	xor	edx,edx
	mov	al,1h
	mov	[rsi],dx

l000000000042C352:
	mov	ecx,[rsp+2Ch]
	add	rbx,rax
	add	rsi,2h
	cmp	rdi,rbx
	seta	al
	mov	[rbp+0h],ecx
	jbe	42C3B0h

l000000000042C368:
	cmp	r12,rsi
	jbe	42C3B0h

l000000000042C36D:
	mov	r8,rdi
	mov	r9,r13
	mov	rdx,rbx
	sub	r8,rbx
	mov	rcx,rsi
	call	412F70h
	cmp	rax,0FFh
	jnz	42C340h

l000000000042C387:
	mov	eax,2h

l000000000042C38C:
	mov	rdx,[rsp+90h]
	mov	[rdx],rbx
	mov	rdx,[rsp+0A8h]
	mov	[rdx],rsi
	add	rsp,38h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	ret
000000000042C3AF                                              90                .

l000000000042C3B0:
	movzx	eax,al
	jmp	42C38Ch

l000000000042C3B5:
	mov	eax,1h
	jmp	42C38Ch
000000000042C3BC                                     90 90 90 90             ....

;; fn000000000042C3C0: 000000000042C3C0
fn000000000042C3C0 proc
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,48h
	mov	eax,[rdx]
	mov	rbx,[rsp+0B8h]
	mov	r14,rdx
	mov	rbp,[rsp+0C0h]
	mov	rsi,r8
	mov	r13,r9
	mov	[rsp+2Ch],eax
	mov	rax,[0000000000491F00]                                 ; [rip+00065B0A]
	mov	rax,[rax]
	movsxd	rdx,dword ptr [rax]
	mov	rax,r9
	sub	rax,r8
	sar	rax,1h
	imul	rax,rdx
	mov	rdx,rbx
	sub	rdx,rbp
	add	rax,rdx
	test	rax,rax
	jle	42C4C0h

l000000000042C41B:
	cmp	r9,r8
	seta	al
	jbe	42C496h

l000000000042C423:
	cmp	rbx,rbp
	jnc	42C496h

l000000000042C428:
	lea	r15,[rsp+2Ch]
	lea	r12,[rsp+30h]
	jmp	42C469h

l000000000042C434:
	mov	rax,rbp
	sub	rax,rbx
	cmp	rdi,rax
	ja	42C500h

l000000000042C443:
	mov	rcx,rbx
	mov	r8,rdi
	mov	rdx,r12
	call	41BCC0h
	mov	eax,[rsp+2Ch]
	add	rbx,rdi
	add	rsi,2h
	cmp	rbp,rbx
	mov	[r14],eax
	jbe	42C490h

l000000000042C464:
	cmp	r13,rsi
	jbe	42C490h

l000000000042C469:
	movzx	edx,word ptr [rsi]
	mov	r8,r15
	mov	rcx,r12
	call	412C60h
	cmp	rax,0FFh
	mov	rdi,rax
	jnz	42C434h

l000000000042C480:
	mov	eax,2h
	jmp	42C499h
000000000042C487                      66 0F 1F 84 00 00 00 00 00        f........

l000000000042C490:
	cmp	r13,rsi
	seta	al

l000000000042C496:
	and	eax,1h

l000000000042C499:
	mov	rdx,[rsp+0B0h]
	mov	[rdx],rsi
	mov	rdx,[rsp+0C8h]
	mov	[rdx],rbx
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

l000000000042C4C0:
	cmp	r9,r8
	jbe	42C510h

l000000000042C4C5:
	lea	r15,[rsp+2Ch]
	jmp	42C4E3h
000000000042C4CC                                     0F 1F 40 00             ..@.

l000000000042C4D0:
	mov	edx,[rsp+2Ch]
	add	rsi,2h
	add	rbx,rax
	cmp	r13,rsi
	mov	[r14],edx
	jbe	42C510h

l000000000042C4E3:
	movzx	edx,word ptr [rsi]
	mov	r8,r15
	mov	rcx,rbx
	call	412C60h
	cmp	rax,0FFh
	jnz	42C4D0h

l000000000042C4F7:
	jmp	42C480h
000000000042C4F9                            0F 1F 80 00 00 00 00          .......

l000000000042C500:
	mov	eax,1h
	jmp	42C499h
000000000042C507                      66 0F 1F 84 00 00 00 00 00        f........

l000000000042C510:
	xor	eax,eax
	jmp	42C499h
000000000042C514             90 90 90 90 90 90 90 90 90 90 90 90     ............

;; fn000000000042C520: 000000000042C520
fn000000000042C520 proc
	push	r13
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,38h
	mov	eax,[rdx]
	xor	ebp,ebp
	mov	rsi,[rsp+90h]
	cmp	r8,r9
	mov	r12,rdx
	mov	rbx,r8
	mov	rdi,r9
	mov	[rsp+2Ch],eax
	jnc	42C5ACh

l000000000042C54A:
	test	rsi,rsi
	jz	42C5ACh

l000000000042C54F:
	lea	r13,[rsp+2Ch]
	jmp	42C58Ch
000000000042C556                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l000000000042C560:
	test	rcx,rcx
	mov	eax,ecx
	jnz	42C571h

l000000000042C567:
	mov	eax,1h
	mov	ecx,1h

l000000000042C571:
	mov	edx,[rsp+2Ch]
	add	rbx,rcx
	add	ebp,eax
	sub	rsi,1h
	cmp	rdi,rbx
	mov	[r12],edx
	jbe	42C5ACh

l000000000042C587:
	test	rsi,rsi
	jz	42C5ACh

l000000000042C58C:
	mov	r8,rdi
	xor	ecx,ecx
	mov	r9,r13
	sub	r8,rbx
	mov	rdx,rbx
	call	412F70h
	mov	rcx,rax
	lea	rax,[rax+2h]
	cmp	rax,1h
	ja	42C560h

l000000000042C5AC:
	mov	eax,ebp
	add	rsp,38h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	ret
000000000042C5BB                                  90 90 90 90 90            .....

;; fn000000000042C5C0: 000000000042C5C0
;;   Called from:
;;     000000000042C649 (in fn000000000042C5E0)
fn000000000042C5C0 proc
	sub	rsp,28h
	mov	rcx,rdx
	mov	rdx,r8
	call	41BE20h
	xor	edx,edx
	test	eax,eax
	setnz	dl
	sar	eax,1Eh
	or	eax,edx
	add	rsp,28h
	ret

;; fn000000000042C5E0: 000000000042C5E0
fn000000000042C5E0 proc
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,48h
	lea	r14,[rsp+3Fh]
	mov	rsi,rcx
	mov	rcx,rdx
	mov	rdx,r8
	mov	rbx,r9
	mov	r8,r14
	call	450710h
	mov	rdx,[rsp+0B0h]
	mov	r8,r14
	mov	rcx,rbx
	mov	r12,rax
	call	450710h
	mov	rbp,r12
	mov	rdi,rax
	add	rbp,[r12-18h]
	add	rdi,[rax-18h]
	mov	r13,rax
	mov	r15,rax
	mov	rbx,r12
	nop	word ptr [rax+rax+0h]

l000000000042C640:
	mov	r8,r15
	mov	rdx,rbx
	mov	rcx,rsi
	call	42C5C0h
	test	eax,eax
	jnz	42C67Ch

l000000000042C652:
	mov	rcx,rbx
	call	41BCB8h
	mov	rcx,r15
	add	rbx,rax
	call	41BCB8h
	lea	r9,[r15+rax]
	cmp	rbx,rbp
	setz	al
	cmp	r9,rdi
	jnz	42C6B0h

l000000000042C674:
	test	al,al
	setz	al
	movzx	eax,al

l000000000042C67C:
	mov	edx,0FFFFFFFFh
	lock
	xadd	[r13-8h],edx
	test	edx,edx
	jle	42C6F0h

l000000000042C68B:
	mov	edx,0FFFFFFFFh
	lock
	xadd	[r12-8h],edx
	test	edx,edx
	jle	42C6D0h

l000000000042C69B:
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
000000000042C6AC                                     0F 1F 40 00             ..@.

l000000000042C6B0:
	test	al,al
	jnz	42C6C0h

l000000000042C6B4:
	add	rbx,1h
	lea	r15,[r9+1h]
	jmp	42C640h
000000000042C6BE                                           66 90               f.

l000000000042C6C0:
	mov	eax,0FFFFFFFFh
	jmp	42C67Ch
000000000042C6C7                      66 0F 1F 84 00 00 00 00 00        f........

l000000000042C6D0:
	lea	rcx,[r12-18h]
	mov	rdx,r14
	mov	[rsp+2Ch],eax
	call	450A50h
	mov	eax,[rsp+2Ch]
	jmp	42C69Bh
000000000042C6E7                      66 0F 1F 84 00 00 00 00 00        f........

l000000000042C6F0:
	lea	rcx,[r13-18h]
	mov	rdx,r14
	mov	[rsp+2Ch],eax
	call	450A50h
	mov	eax,[rsp+2Ch]
	jmp	42C68Bh
000000000042C706                   49 8D 4C 24 E8 48 89 C3 4C 89       I.L$.H..L.
000000000042C710 F2 E8 4A 43 02 00 48 89 D9 E8 92 4E FE FF 90 90 ..JC..H....N....

;; fn000000000042C720: 000000000042C720
;;   Called from:
;;     000000000042C7F0 (in fn000000000042C730)
;;     000000000042C81D (in fn000000000042C730)
fn000000000042C720 proc
	mov	rcx,rdx
	mov	rdx,r8
	mov	r8,r9
	jmp	41BE28h
000000000042C72E                                           90 90               ..

;; fn000000000042C730: 000000000042C730
fn000000000042C730 proc
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,48h
	lea	rax,[rsp+3Fh]
	mov	rsi,rcx
	mov	rbx,r8
	mov	rbp,r9
	xor	ecx,ecx
	mov	r13,rdx
	mov	rdi,rax
	mov	r8,rax
	xor	edx,edx
	mov	[rsp+28h],rax
	call	4505D0h
	mov	r8,rdi
	mov	[rsi],rax
	mov	rdx,rbp
	mov	rcx,rbx
	call	450710h
	sub	rbp,rbx
	mov	r14,rax
	mov	r15,rax
	add	rbp,rbp
	add	r14,[rax-18h]
	mov	rcx,rbp
	call	475560h
	mov	r12,rax
	mov	rdi,r15
	jmp	42C7E4h
000000000042C796                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l000000000042C7A0:
	mov	rax,[rsi]
	add	rdi,1h
	mov	rdx,[rax-18h]
	lea	rbx,[rdx+1h]
	cmp	rbx,[rax-10h]
	ja	42C7BCh

l000000000042C7B5:
	mov	ecx,[rax-8h]
	test	ecx,ecx
	jle	42C7CEh

l000000000042C7BC:
	mov	rdx,rbx
	mov	rcx,rsi
	call	451BE0h
	mov	rax,[rsi]
	mov	rdx,[rax-18h]

l000000000042C7CE:
	mov	byte ptr [rax+rdx],0h
	mov	rax,[rsi]
	mov	dword ptr [rax-8h],0h
	mov	[rax-18h],rbx
	mov	byte ptr [rax+rbx],0h

l000000000042C7E4:
	mov	r9,rbp
	mov	r8,rdi
	mov	rdx,r12
	mov	rcx,r13
	call	42C720h
	cmp	rbp,rax
	ja	42C822h

l000000000042C7FA:
	lea	rbp,[rax+1h]
	mov	rcx,r12
	call	475540h
	mov	rcx,rbp
	call	475560h
	mov	r9,rbp
	mov	r8,rdi
	mov	rdx,rax
	mov	rcx,r13
	mov	r12,rax
	call	42C720h

l000000000042C822:
	mov	r8,rax
	mov	rdx,r12
	mov	rcx,rsi
	call	450E00h
	mov	rcx,rdi
	call	41BCB8h
	add	rdi,rax
	cmp	rdi,r14
	jnz	42C7A0h

l000000000042C844:
	mov	rcx,r12
	call	475540h
	mov	rdx,[rsp+28h]
	lea	rcx,[r15-18h]
	call	450A60h
	mov	rax,rsi
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
000000000042C86E                                           48 89               H.
000000000042C870 C3 48 8B 0E 48 8B 54 24 28 48 83 E9 18 E8 DE 41 .H..H.T$(H.....A
000000000042C880 02 00 48 89 D9 E8 26 4D FE FF 48 89 C1 E8 AE 8F ..H...&M..H.....
000000000042C890 04 00 4C 89 E1 E8 A6 8C 04 00 E8 C1 97 04 00 48 ..L............H
000000000042C8A0 89 C1 E8 99 8F 04 00 EB F1 48 89 C3 48 8B 54 24 .........H..H.T$
000000000042C8B0 28 49 8D 4F E8 E8 A6 41 02 00 EB B5 48 89 C3 E8 (I.O...A....H...
000000000042C8C0 AC 91 04 00 EB E6 90 90 90 90 90 90 90 90 90 90 ................

;; fn000000000042C8D0: 000000000042C8D0
fn000000000042C8D0 proc
	mov	rax,[rcx]
	lea	r9,[000000000042C920]                                  ; [rip+00000046]
	mov	rax,[rax+20h]
	cmp	rax,r9
	jnz	42C903h

l000000000042C8E3:
	xor	eax,eax
	cmp	rdx,r8
	jnc	42C906h

l000000000042C8EA:
	nop	word ptr [rax+rax+0h]

l000000000042C8F0:
	movsx	ecx,byte ptr [rdx]
	rol	eax,7h
	add	rdx,1h
	add	eax,ecx
	cmp	rdx,r8
	jnz	42C8F0h

l000000000042C901:
	ret

l000000000042C903:
	jmp	rax

l000000000042C906:
	ret
000000000042C908                         90 90 90 90 90 90 90 90         ........

;; fn000000000042C910: 000000000042C910
fn000000000042C910 proc
	mov	rax,[rcx]
	mov	rax,[rax+10h]
	jmp	rax
000000000042C91A                               90 90 90 90 90 90           ......

;; fn000000000042C920: 000000000042C920
fn000000000042C920 proc
	xor	eax,eax
	cmp	rdx,r8
	jnc	42C943h

l000000000042C927:
	nop	word ptr [rax+rax+0h]

l000000000042C930:
	movsx	ecx,byte ptr [rdx]
	rol	eax,7h
	add	rdx,1h
	add	eax,ecx
	cmp	rdx,r8
	jnz	42C930h

l000000000042C941:
	ret

l000000000042C943:
	ret
000000000042C945                90 90 90 90 90 90 90 90 90 90 90      ...........

;; fn000000000042C950: 000000000042C950
fn000000000042C950 proc
	push	rbx
	sub	rsp,20h
	mov	rax,[rdx]
	mov	rbx,rcx
	call	qword ptr [rax+18h]
	mov	rax,rbx
	add	rsp,20h
	pop	rbx
	ret
000000000042C967                      90 90 90 90 90 90 90 90 90        .........

;; fn000000000042C970: 000000000042C970
;;   Called from:
;;     000000000042C9F9 (in fn000000000042C990)
fn000000000042C970 proc
	sub	rsp,28h
	mov	rcx,rdx
	mov	rdx,r8
	call	41BE30h
	xor	edx,edx
	test	eax,eax
	setnz	dl
	sar	eax,1Eh
	or	eax,edx
	add	rsp,28h
	ret

;; fn000000000042C990: 000000000042C990
fn000000000042C990 proc
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,48h
	lea	r15,[rsp+3Fh]
	mov	rdi,rcx
	mov	rcx,rdx
	mov	rdx,r8
	mov	rbx,r9
	mov	r8,r15
	call	449010h
	mov	rdx,[rsp+0B0h]
	mov	r8,r15
	mov	rcx,rbx
	mov	r13,rax
	call	449010h
	mov	r14,rax
	mov	rax,[r13-18h]
	mov	rbx,r13
	mov	rsi,r14
	lea	r12,[r13+rax*2+0h]
	mov	rax,[r14-18h]
	lea	rbp,[r14+rax*2]
	nop	dword ptr [rax+0h]

l000000000042C9F0:
	mov	r8,rsi
	mov	rdx,rbx
	mov	rcx,rdi
	call	42C970h
	test	eax,eax
	jnz	42CA2Dh

l000000000042CA02:
	mov	rcx,rbx
	call	41BD38h
	mov	rcx,rsi
	lea	rbx,[rbx+rax*2]
	call	41BD38h
	lea	rsi,[rsi+rax*2]
	cmp	rbx,r12
	setz	al
	cmp	rsi,rbp
	jnz	42CA60h

l000000000042CA25:
	test	al,al
	setz	al
	movzx	eax,al

l000000000042CA2D:
	mov	edx,0FFFFFFFFh
	lock
	xadd	[r14-8h],edx
	test	edx,edx
	jle	42CAA0h

l000000000042CA3C:
	mov	edx,0FFFFFFFFh
	lock
	xadd	[r13-8h],edx
	test	edx,edx
	jle	42CA80h

l000000000042CA4B:
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
000000000042CA5C                                     0F 1F 40 00             ..@.

l000000000042CA60:
	test	al,al
	jnz	42CA70h

l000000000042CA64:
	add	rbx,2h
	add	rsi,2h
	jmp	42C9F0h
000000000042CA6E                                           66 90               f.

l000000000042CA70:
	mov	eax,0FFFFFFFFh
	jmp	42CA2Dh
000000000042CA77                      66 0F 1F 84 00 00 00 00 00        f........

l000000000042CA80:
	lea	rcx,[r13-18h]
	mov	rdx,r15
	mov	[rsp+2Ch],eax
	call	449360h
	mov	eax,[rsp+2Ch]
	jmp	42CA4Bh
000000000042CA96                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l000000000042CAA0:
	lea	rcx,[r14-18h]
	mov	rdx,r15
	mov	[rsp+2Ch],eax
	call	449360h
	mov	eax,[rsp+2Ch]
	jmp	42CA3Ch
000000000042CAB6                   49 8D 4D E8 48 89 C3 4C 89 FA       I.M.H..L..
000000000042CAC0 E8 AB C8 01 00 48 89 D9 E8 E3 4A FE FF 90 90 90 .....H....J.....

;; fn000000000042CAD0: 000000000042CAD0
;;   Called from:
;;     000000000042CBC7 (in fn000000000042CAE0)
;;     000000000042CC06 (in fn000000000042CAE0)
fn000000000042CAD0 proc
	mov	rcx,rdx
	mov	rdx,r8
	mov	r8,r9
	jmp	41BE38h
000000000042CADE                                           90 90               ..

;; fn000000000042CAE0: 000000000042CAE0
fn000000000042CAE0 proc
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,48h
	lea	rax,[rsp+3Fh]
	mov	r12,rcx
	mov	rbx,r8
	mov	rsi,r9
	xor	ecx,ecx
	mov	r13,rdx
	mov	rdi,rax
	mov	r8,rax
	xor	edx,edx
	mov	[rsp+28h],rax
	call	448EB0h
	mov	r8,rdi
	mov	[r12],rax
	mov	rdx,rsi
	mov	rcx,rbx
	call	449010h
	mov	rdi,rax
	mov	[rsp+20h],rax
	mov	rax,[rax-18h]
	sub	rsi,rbx
	mov	rdx,3F80000000000000h
	mov	rcx,-1h
	cmp	rsi,rdx
	lea	r14,[rdi+rax*2]
	lea	rax,[rsi+rsi]
	cmovbe	rcx,rax

l000000000042CB56:
	call	475560h
	mov	rbp,rax
	mov	rbx,rdi
	mov	r15,-1h
	jmp	42CBBBh
000000000042CB6A                               66 0F 1F 44 00 00           f..D..

l000000000042CB70:
	mov	rax,[r12]
	add	rbx,2h
	mov	rdx,[rax-18h]
	lea	rdi,[rdx+1h]
	cmp	rdi,[rax-10h]
	ja	42CB8Fh

l000000000042CB86:
	mov	r9d,[rax-8h]
	test	r9d,r9d
	jle	42CBA2h

l000000000042CB8F:
	mov	rdx,rdi
	mov	rcx,r12
	call	44A5D0h
	mov	rax,[r12]
	mov	rdx,[rax-18h]

l000000000042CBA2:
	xor	ecx,ecx
	xor	r8d,r8d
	mov	[rax+rdx*2],cx
	mov	dword ptr [rax-8h],0h
	mov	[rax-18h],rdi
	mov	[rax+rdi*2],r8w

l000000000042CBBB:
	mov	r9,rsi
	mov	r8,rbx
	mov	rdx,rbp
	mov	rcx,r13
	call	42CAD0h
	cmp	rsi,rax
	ja	42CC0Bh

l000000000042CBD1:
	lea	rsi,[rax+1h]
	mov	rcx,rbp
	call	475540h
	lea	rcx,[rsi+rsi]
	mov	rax,3F80000000000000h
	cmp	rsi,rax
	cmova	rcx,r15

l000000000042CBF2:
	call	475560h
	mov	r9,rsi
	mov	r8,rbx
	mov	rdx,rax
	mov	rcx,r13
	mov	rbp,rax
	call	42CAD0h

l000000000042CC0B:
	mov	r8,rax
	mov	rdx,rbp
	mov	rcx,r12
	call	449740h
	mov	rcx,rbx
	call	41BD38h
	lea	rbx,[rbx+rax*2]
	cmp	rbx,r14
	jnz	42CB70h

l000000000042CC2E:
	mov	rcx,rbp
	call	475540h
	mov	rsi,[rsp+20h]
	mov	eax,0FFFFFFFFh
	lock
	xadd	[rsi-8h],eax
	test	eax,eax
	jle	42CC5Dh

l000000000042CC49:
	mov	rax,r12
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

l000000000042CC5D:
	mov	rcx,[rsp+20h]
	mov	rdx,[rsp+28h]
	sub	rcx,18h
	call	449360h
	jmp	42CC49h
000000000042CC72       48 89 C3 49 8B 0C 24 48 8B 54 24 28 48 83   H..I..$H.T$(H.
000000000042CC80 E9 18 E8 E9 C6 01 00 48 89 D9 E8 21 49 FE FF 48 .......H...!I..H
000000000042CC90 89 C1 E8 A9 8B 04 00 48 89 E9 E8 A1 88 04 00 E8 .......H........
000000000042CCA0 BC 93 04 00 48 89 C1 E8 94 8B 04 00 EB F1 48 89 ....H.........H.
000000000042CCB0 C3 48 8B 4C 24 20 48 8B 54 24 28 48 83 E9 18 E8 .H.L$ H.T$(H....
000000000042CCC0 AC C6 01 00 EB AF 48 89 C3 E8 A2 8D 04 00 EB E1 ......H.........

;; fn000000000042CCD0: 000000000042CCD0
fn000000000042CCD0 proc
	mov	rax,[rcx]
	lea	r9,[000000000042CD20]                                  ; [rip+00000046]
	mov	rax,[rax+20h]
	cmp	rax,r9
	jnz	42CD03h

l000000000042CCE3:
	xor	eax,eax
	cmp	rdx,r8
	jnc	42CD06h

l000000000042CCEA:
	nop	word ptr [rax+rax+0h]

l000000000042CCF0:
	movzx	ecx,word ptr [rdx]
	rol	eax,7h
	add	rdx,2h
	add	eax,ecx
	cmp	r8,rdx
	ja	42CCF0h

l000000000042CD01:
	ret

l000000000042CD03:
	jmp	rax

l000000000042CD06:
	ret
000000000042CD08                         90 90 90 90 90 90 90 90         ........

;; fn000000000042CD10: 000000000042CD10
fn000000000042CD10 proc
	mov	rax,[rcx]
	mov	rax,[rax+10h]
	jmp	rax
000000000042CD1A                               90 90 90 90 90 90           ......

;; fn000000000042CD20: 000000000042CD20
fn000000000042CD20 proc
	xor	eax,eax
	cmp	rdx,r8
	jnc	42CD43h

l000000000042CD27:
	nop	word ptr [rax+rax+0h]

l000000000042CD30:
	movzx	ecx,word ptr [rdx]
	rol	eax,7h
	add	rdx,2h
	add	eax,ecx
	cmp	r8,rdx
	ja	42CD30h

l000000000042CD41:
	ret

l000000000042CD43:
	ret
000000000042CD45                90 90 90 90 90 90 90 90 90 90 90      ...........

;; fn000000000042CD50: 000000000042CD50
fn000000000042CD50 proc
	push	rbx
	sub	rsp,20h
	mov	rax,[rdx]
	mov	rbx,rcx
	call	qword ptr [rax+18h]
	mov	rax,rbx
	add	rsp,20h
	pop	rbx
	ret
000000000042CD67                      90 90 90 90 90 90 90 90 90        .........

;; fn000000000042CD70: 000000000042CD70
;;   Called from:
;;     0000000000431633 (in fn00000000004315D0)
;;     0000000000432504 (in fn00000000004324B0)
fn000000000042CD70 proc
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
	call	42A360h
	mov	esi,[rbx+18h]
	mov	rbp,rax
	mov	dword ptr [rsp+24h],8h
	and	esi,4Ah
	cmp	esi,40h
	jz	42CDF0h

l000000000042CDDC:
	cmp	esi,8h
	mov	eax,0Ah
	mov	edx,10h
	cmovz	eax,edx

l000000000042CDEC:
	mov	[rsp+24h],eax

l000000000042CDF0:
	lea	r12,[rsp+40h]
	lea	rdi,[rsp+50h]
	mov	rdx,r12
	mov	rcx,rdi
	call	42AF60h
	test	al,al
	mov	r14d,eax
	jnz	42D66Fh

l000000000042CE10:
	mov	rcx,rdi
	call	42B050h
	cmp	[rbp+6Eh],al
	movsx	ebx,al
	setz	byte ptr [rsp+37h]
	jnz	42D3A0h

l000000000042CE29:
	movzx	edx,byte ptr [rbp+20h]
	test	dl,dl
	jnz	42D3B2h

l000000000042CE35:
	cmp	[rbp+48h],al
	jz	42D69Dh

l000000000042CE3E:
	mov	rcx,[rsp+50h]
	test	rcx,rcx
	jz	42CE55h

l000000000042CE48:
	call	462490h
	mov	dword ptr [rsp+58h],0FFFFFFFFh

l000000000042CE55:
	mov	rdx,r12
	mov	rcx,rdi
	call	42AF60h
	test	al,al
	jz	42D440h

l000000000042CE68:
	mov	r14d,1h
	xor	r13d,r13d
	mov	byte ptr [rsp+35h],0h

l000000000042CE76:
	cmp	dword ptr [rsp+24h],10h
	mov	r12d,16h
	jz	42CE88h

l000000000042CE83:
	movsxd	r12,dword ptr [rsp+24h]

l000000000042CE88:
	lea	rax,[rsp+6Fh]
	xor	edx,edx
	xor	ecx,ecx
	mov	r8,rax
	mov	[rsp+38h],rax
	call	4505D0h
	cmp	byte ptr [rbp+20h],0h
	mov	[rsp+70h],rax
	jnz	42D425h

l000000000042CEAD:
	xor	edx,edx
	mov	eax,0FFFFFFFFh
	lea	r15,[rbp+72h]
	div	dword ptr [rsp+24h]
	mov	[rsp+30h],eax
	movzx	eax,byte ptr [rbp+88h]
	test	al,al
	mov	[rsp+36h],al
	jnz	42D095h

l000000000042CED3:
	xor	esi,esi
	xor	edi,edi
	test	r14b,r14b
	jnz	42D0A2h

l000000000042CEE0:
	lea	r15d,[r12+30h]

l000000000042CEE5:
	cmp	r12,0Ah
	ja	42D0B0h

l000000000042CEEF:
	cmp	bl,2Fh
	jle	42D0A2h

l000000000042CEF8:
	cmp	r15b,bl
	jle	42D0A2h

l000000000042CF01:
	sub	ebx,30h

l000000000042CF04:
	cmp	[rsp+30h],esi
	jnc	42D0DAh

l000000000042CF0E:
	mov	rcx,[rsp+50h]
	mov	edi,1h
	test	rcx,rcx
	jz	42D0FEh

l000000000042CF21:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	42D190h

l000000000042CF2F:
	add	rax,1h
	mov	dword ptr [rsp+58h],0FFFFFFFFh
	mov	[rcx+10h],rax
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	42D1C0h

l000000000042CF4D:
	movzx	eax,byte ptr [rax]

l000000000042CF50:
	mov	rcx,[rsp+40h]
	mov	[rsp+58h],eax
	test	rcx,rcx
	jz	42D13Dh

l000000000042CF62:
	xor	ebx,ebx
	xor	eax,eax
	cmp	dword ptr [rsp+48h],0FFh
	jz	42D11Eh

l000000000042CF71:
	cmp	al,bl
	jnz	42D13Dh

l000000000042CF79:
	xor	ebx,ebx
	mov	r14d,1h

l000000000042CF81:
	mov	rax,[rsp+70h]
	cmp	qword ptr [rax-18h],0h
	jnz	42D014h

l000000000042CF91:
	test	r13d,r13d
	setz	dl
	cmp	[rsp+35h],dl
	jnc	42D063h

l000000000042CFA1:
	mov	rdi,[rsp+100h]
	mov	dword ptr [rdi],0h
	mov	rdi,[rsp+0F8h]
	mov	dword ptr [rdi],4h

l000000000042CFBD:
	test	r14b,r14b
	jz	42CFCDh

l000000000042CFC2:
	mov	rdi,[rsp+0F8h]
	or	dword ptr [rdi],2h

l000000000042CFCD:
	mov	rdi,[rsp+0D0h]
	mov	rcx,[rsp+50h]
	mov	edx,0FFFFFFFFh
	mov	rbx,[rsp+58h]
	mov	[rdi],rcx
	mov	[rdi+8h],rbx
	lock
	xadd	[rax-8h],edx
	test	edx,edx
	jle	42D5C0h

l000000000042CFF8:
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

l000000000042D014:
	lea	r12,[rsp+70h]
	movsx	edx,r13b
	mov	rcx,r12
	call	451E10h
	mov	rdx,[rbp+18h]
	mov	rcx,[rbp+10h]
	mov	r8,r12
	call	4708F0h
	test	al,al
	jnz	42D047h

l000000000042D039:
	mov	rax,[rsp+0F8h]
	mov	dword ptr [rax],4h

l000000000042D047:
	test	r13d,r13d
	setz	al
	cmp	[rsp+35h],al
	mov	rax,[rsp+70h]
	jnc	42D063h

l000000000042D058:
	cmp	qword ptr [rax-18h],0h
	jz	42CFA1h

l000000000042D063:
	test	bl,bl
	jnz	42CFA1h

l000000000042D06B:
	test	dil,dil
	jz	42D3C5h

l000000000042D074:
	mov	rdi,[rsp+100h]
	mov	dword ptr [rdi],0FFFFFFFFh
	mov	rdi,[rsp+0F8h]
	mov	dword ptr [rdi],4h
	jmp	42CFBDh

l000000000042D095:
	xor	esi,esi
	xor	edi,edi
	test	r14b,r14b
	jz	42D1E0h

l000000000042D0A2:
	xor	ebx,ebx
	jmp	42CF81h
000000000042D0A9                            0F 1F 80 00 00 00 00          .......

l000000000042D0B0:
	lea	eax,[rbx-30h]
	cmp	al,9h
	jbe	42CF01h

l000000000042D0BB:
	lea	eax,[rbx-61h]
	cmp	al,5h
	jbe	42D160h

l000000000042D0C6:
	lea	eax,[rbx-41h]
	cmp	al,5h
	ja	42D0A2h

l000000000042D0CD:
	sub	ebx,37h
	cmp	[rsp+30h],esi
	jc	42CF0Eh

l000000000042D0DA:
	imul	esi,[rsp+24h]
	mov	eax,ebx
	mov	rcx,[rsp+50h]
	not	eax
	cmp	eax,esi
	setc	al
	add	esi,ebx
	add	r13d,1h
	or	edi,eax
	test	rcx,rcx
	jnz	42CF21h

l000000000042D0FE:
	mov	rcx,[rsp+40h]
	test	rcx,rcx
	jz	42CF79h

l000000000042D10C:
	xor	eax,eax
	cmp	dword ptr [rsp+48h],0FFh
	mov	ebx,1h
	jnz	42CF71h

l000000000042D11E:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	42D3E1h

l000000000042D12C:
	movzx	eax,byte ptr [rax]

l000000000042D12F:
	mov	[rsp+48h],eax
	xor	eax,eax
	cmp	al,bl
	jz	42CF79h

l000000000042D13D:
	mov	rcx,[rsp+50h]
	test	rcx,rcx
	jz	42D6AEh

l000000000042D14B:
	mov	eax,[rsp+58h]
	cmp	eax,0FFh
	jz	42D170h

l000000000042D154:
	movsx	ebx,al
	jmp	42CEE5h
000000000042D15C                                     0F 1F 40 00             ..@.

l000000000042D160:
	sub	ebx,57h
	jmp	42CF04h
000000000042D168                         0F 1F 84 00 00 00 00 00         ........

l000000000042D170:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	42D630h

l000000000042D17E:
	movzx	eax,byte ptr [rax]

l000000000042D181:
	mov	[rsp+58h],eax
	jmp	42D154h
000000000042D187                      66 0F 1F 84 00 00 00 00 00        f........

l000000000042D190:
	mov	rax,[rcx]
	call	qword ptr [rax+50h]
	mov	rcx,[rsp+50h]
	mov	dword ptr [rsp+58h],0FFFFFFFFh
	test	rcx,rcx
	jz	42D0FEh

l000000000042D1AC:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jc	42CF4Dh

l000000000042D1BA:
	nop	word ptr [rax+rax+0h]

l000000000042D1C0:
	mov	rax,[rcx]
	call	qword ptr [rax+48h]
	cmp	eax,0FFh
	jnz	42CF50h

l000000000042D1CF:
	mov	qword ptr [rsp+50h],+0h
	jmp	42D0FEh
000000000042D1DD                                        0F 1F 00              ...

l000000000042D1E0:
	lea	rax,[rsp+70h]
	mov	[rsp+28h],rax

l000000000042D1EA:
	cmp	byte ptr [rbp+20h],0h
	jz	42D1F9h

l000000000042D1F0:
	cmp	bl,[rbp+49h]
	jz	42D330h

l000000000042D1F9:
	cmp	bl,[rbp+48h]
	jz	42D0A2h

l000000000042D202:
	movsx	edx,bl
	mov	r8,r12
	mov	rcx,r15
	call	41BD98h
	test	rax,rax
	jz	42D0A2h

l000000000042D219:
	sub	rax,r15
	lea	edx,[rax-6h]
	cmp	eax,10h
	cmovge	eax,edx

l000000000042D225:
	cmp	[rsp+30h],esi
	jc	42D2E0h

l000000000042D22F:
	imul	esi,[rsp+24h]
	mov	edx,eax
	not	edx
	cmp	edx,esi
	setc	dl
	add	esi,eax
	add	r13d,1h
	or	edi,edx

l000000000042D245:
	mov	rcx,[rsp+50h]
	test	rcx,rcx
	jz	42D2F3h

l000000000042D253:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	42D350h

l000000000042D261:
	add	rax,1h
	mov	dword ptr [rsp+58h],0FFFFFFFFh
	mov	[rcx+10h],rax
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	42D380h

l000000000042D27F:
	movzx	eax,byte ptr [rax]

l000000000042D282:
	mov	rcx,[rsp+40h]
	mov	[rsp+58h],eax
	test	rcx,rcx
	jz	42D2A3h

l000000000042D290:
	xor	ebx,ebx
	xor	eax,eax
	cmp	dword ptr [rsp+48h],0FFh
	jz	42D30Fh

l000000000042D29B:
	cmp	al,bl
	jz	42CF79h

l000000000042D2A3:
	mov	rcx,[rsp+50h]
	test	rcx,rcx
	jz	42D6C2h

l000000000042D2B1:
	mov	eax,[rsp+58h]
	cmp	eax,0FFh
	jz	42D2C1h

l000000000042D2BA:
	mov	ebx,eax
	jmp	42D1EAh

l000000000042D2C1:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	42D650h

l000000000042D2CF:
	movzx	eax,byte ptr [rax]

l000000000042D2D2:
	mov	[rsp+58h],eax
	mov	ebx,eax
	jmp	42D1EAh
000000000042D2DD                                        0F 1F 00              ...

l000000000042D2E0:
	mov	rcx,[rsp+50h]
	mov	edi,1h
	test	rcx,rcx
	jnz	42D253h

l000000000042D2F3:
	mov	rcx,[rsp+40h]
	test	rcx,rcx
	jz	42CF79h

l000000000042D301:
	xor	eax,eax
	cmp	dword ptr [rsp+48h],0FFh
	movzx	ebx,byte ptr [rsp+36h]
	jnz	42D29Bh

l000000000042D30F:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	42D403h

l000000000042D31D:
	movzx	eax,byte ptr [rax]

l000000000042D320:
	mov	[rsp+48h],eax
	xor	eax,eax
	jmp	42D29Bh
000000000042D32B                                  0F 1F 44 00 00            ..D..

l000000000042D330:
	test	r13d,r13d
	jz	42D6B8h

l000000000042D339:
	mov	rcx,[rsp+28h]
	movsx	edx,r13b
	call	451E10h
	xor	r13d,r13d
	jmp	42D245h
000000000042D34F                                              90                .

l000000000042D350:
	mov	rax,[rcx]
	call	qword ptr [rax+50h]
	mov	rcx,[rsp+50h]
	mov	dword ptr [rsp+58h],0FFFFFFFFh
	test	rcx,rcx
	jz	42D2F3h

l000000000042D368:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jc	42D27Fh

l000000000042D376:
	nop	word ptr cs:[rax+rax+0h]

l000000000042D380:
	mov	rax,[rcx]
	call	qword ptr [rax+48h]
	cmp	eax,0FFh
	jnz	42D282h

l000000000042D38F:
	mov	qword ptr [rsp+50h],+0h
	jmp	42D2F3h
000000000042D39D                                        0F 1F 00              ...

l000000000042D3A0:
	cmp	[rbp+6Fh],al
	jz	42CE29h

l000000000042D3A9:
	movzx	eax,byte ptr [rbp+20h]
	jmp	42D44Fh

l000000000042D3B2:
	cmp	[rbp+49h],al
	jnz	42CE35h

l000000000042D3BB:
	mov	eax,1h
	jmp	42D44Fh

l000000000042D3C5:
	movzx	edx,byte ptr [rsp+37h]
	mov	rdi,[rsp+100h]
	mov	ecx,edx
	neg	ecx
	xor	esi,ecx
	add	edx,esi
	mov	[rdi],edx
	jmp	42CFBDh

l000000000042D3E1:
	mov	rax,[rcx]
	call	qword ptr [rax+48h]
	cmp	eax,0FFh
	jnz	42D12Fh

l000000000042D3F0:
	mov	qword ptr [rsp+40h],+0h
	mov	eax,1h
	jmp	42CF71h

l000000000042D403:
	mov	rax,[rcx]
	call	qword ptr [rax+48h]
	cmp	eax,0FFh
	jnz	42D320h

l000000000042D412:
	mov	qword ptr [rsp+40h],+0h
	movzx	eax,byte ptr [rsp+36h]
	jmp	42D29Bh

l000000000042D425:
	lea	rcx,[rsp+70h]
	mov	edx,20h
	call	451BE0h
	jmp	42CEADh
000000000042D439                            0F 1F 80 00 00 00 00          .......

l000000000042D440:
	mov	rcx,rdi
	call	42B050h
	movsx	ebx,al
	movzx	eax,byte ptr [rbp+20h]

l000000000042D44F:
	xor	r13d,r13d
	xor	r12d,r12d

l000000000042D455:
	test	al,al
	jz	42D462h

l000000000042D459:
	cmp	[rbp+49h],bl
	jz	42D5D3h

l000000000042D462:
	cmp	[rbp+48h],bl
	jz	42D5D3h

l000000000042D46B:
	cmp	[rbp+72h],bl
	jz	42D520h

l000000000042D474:
	test	r12b,r12b
	jz	42D5D3h

l000000000042D47D:
	cmp	[rbp+70h],bl
	jz	42D48Bh

l000000000042D482:
	cmp	[rbp+71h],bl
	jnz	42D5B2h

l000000000042D48B:
	cmp	dword ptr [rsp+24h],10h
	jz	42D49Ah

l000000000042D492:
	test	esi,esi
	jnz	42D6A4h

l000000000042D49A:
	xor	r13d,r13d
	xor	r12d,r12d
	mov	dword ptr [rsp+24h],10h

l000000000042D4A8:
	mov	rcx,[rsp+50h]
	test	rcx,rcx
	jz	42D560h

l000000000042D4B6:
	mov	rdx,[rcx+10h]
	cmp	rdx,[rcx+18h]
	jnc	42D5E0h

l000000000042D4C4:
	add	rdx,1h
	mov	dword ptr [rsp+58h],0FFFFFFFFh
	mov	[rcx+10h],rdx
	mov	rdx,[rcx+10h]
	cmp	rdx,[rcx+18h]
	jnc	42D610h

l000000000042D4E2:
	movzx	eax,byte ptr [rdx]

l000000000042D4E5:
	mov	rcx,[rsp+40h]
	mov	[rsp+58h],eax
	test	rcx,rcx
	jz	42D599h

l000000000042D4F7:
	xor	r15d,r15d
	xor	eax,eax
	cmp	dword ptr [rsp+48h],0FFh
	jz	42D579h

l000000000042D503:
	cmp	r15b,al
	jnz	42D599h

l000000000042D50C:
	mov	[rsp+35h],r12b
	mov	r14d,1h
	jmp	42CE76h
000000000042D51C                                     0F 1F 40 00             ..@.

l000000000042D520:
	cmp	dword ptr [rsp+24h],0Ah
	setz	al
	cmp	al,r12b
	jc	42D47Dh

l000000000042D531:
	add	r13d,1h
	cmp	dword ptr [rsp+24h],8h
	jz	42D6CCh

l000000000042D540:
	test	esi,esi
	jz	42D6CCh

l000000000042D548:
	mov	rcx,[rsp+50h]
	mov	r12d,1h
	test	rcx,rcx
	jnz	42D4B6h

l000000000042D55C:
	nop	dword ptr [rax+0h]

l000000000042D560:
	mov	rcx,[rsp+40h]
	test	rcx,rcx
	jz	42D50Ch

l000000000042D56A:
	xor	eax,eax
	cmp	dword ptr [rsp+48h],0FFh
	mov	r15d,1h
	jnz	42D503h

l000000000042D579:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	42D67Bh

l000000000042D587:
	movzx	eax,byte ptr [rax]

l000000000042D58A:
	mov	[rsp+48h],eax
	xor	eax,eax
	cmp	r15b,al
	jz	42D50Ch

l000000000042D599:
	mov	rcx,rdi
	call	42B050h
	test	r12b,r12b
	movsx	ebx,al
	jz	42D5D3h

l000000000042D5A9:
	movzx	eax,byte ptr [rbp+20h]
	jmp	42D455h

l000000000042D5B2:
	mov	byte ptr [rsp+35h],1h
	jmp	42CE76h
000000000042D5BC                                     0F 1F 40 00             ..@.

l000000000042D5C0:
	mov	rdx,[rsp+38h]
	lea	rcx,[rax-18h]
	call	450A50h
	jmp	42CFF8h

l000000000042D5D3:
	mov	[rsp+35h],r12b
	jmp	42CE76h
000000000042D5DD                                        0F 1F 00              ...

l000000000042D5E0:
	mov	rdx,[rcx]
	call	qword ptr [rdx+50h]
	mov	rcx,[rsp+50h]
	mov	dword ptr [rsp+58h],0FFFFFFFFh
	test	rcx,rcx
	jz	42D560h

l000000000042D5FC:
	mov	rdx,[rcx+10h]
	cmp	rdx,[rcx+18h]
	jc	42D4E2h

l000000000042D60A:
	nop	word ptr [rax+rax+0h]

l000000000042D610:
	mov	rdx,[rcx]
	call	qword ptr [rdx+48h]
	cmp	eax,0FFh
	jnz	42D4E5h

l000000000042D61F:
	mov	qword ptr [rsp+50h],+0h
	jmp	42D560h
000000000042D62D                                        0F 1F 00              ...

l000000000042D630:
	mov	rax,[rcx]
	call	qword ptr [rax+48h]
	cmp	eax,0FFh
	jnz	42D181h

l000000000042D63F:
	mov	qword ptr [rsp+50h],+0h
	movsx	ebx,al
	jmp	42CEE5h

l000000000042D650:
	mov	rax,[rcx]
	call	qword ptr [rax+48h]
	cmp	eax,0FFh
	jnz	42D2D2h

l000000000042D65F:
	mov	qword ptr [rsp+50h],+0h
	mov	ebx,eax
	jmp	42D1EAh

l000000000042D66F:
	xor	ebx,ebx
	mov	byte ptr [rsp+37h],0h
	jmp	42CE68h

l000000000042D67B:
	mov	rax,[rcx]
	call	qword ptr [rax+48h]
	cmp	eax,0FFh
	jnz	42D58Ah

l000000000042D68A:
	mov	qword ptr [rsp+40h],+0h
	mov	eax,1h
	jmp	42D503h

l000000000042D69D:
	mov	eax,edx
	jmp	42D44Fh

l000000000042D6A4:
	mov	byte ptr [rsp+35h],1h
	jmp	42CE83h

l000000000042D6AE:
	mov	ebx,0FFFFFFFFh
	jmp	42CEE5h

l000000000042D6B8:
	mov	ebx,1h
	jmp	42CF81h

l000000000042D6C2:
	mov	ebx,0FFFFFFFFh
	jmp	42D1EAh

l000000000042D6CC:
	xor	r13d,r13d
	mov	r12d,1h
	mov	dword ptr [rsp+24h],8h
	jmp	42D4A8h
000000000042D6E2       48 89 C3 48 8B 44 24 70 48 8B 54 24 38 48   H..H.D$pH.T$8H
000000000042D6F0 8D 48 E8 E8 68 33 02 00 48 89 D9 E8 B0 3E FE FF .H..h3..H....>..
000000000042D700 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 ................

;; fn000000000042D710: 000000000042D710
;;   Called from:
;;     00000000004316B3 (in fn0000000000431650)
;;     0000000000431A33 (in fn0000000000431990)
;;     0000000000432574 (in fn0000000000432520)
fn000000000042D710 proc
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
	call	42A360h
	mov	esi,[rbx+18h]
	mov	rbp,rax
	mov	dword ptr [rsp+20h],8h
	and	esi,4Ah
	cmp	esi,40h
	jz	42D790h

l000000000042D77C:
	cmp	esi,8h
	mov	eax,0Ah
	mov	edx,10h
	cmovz	eax,edx

l000000000042D78C:
	mov	[rsp+20h],eax

l000000000042D790:
	lea	r12,[rsp+40h]
	lea	rdi,[rsp+50h]
	mov	rdx,r12
	mov	rcx,rdi
	call	42AF60h
	test	al,al
	mov	r14d,eax
	jnz	42E02Fh

l000000000042D7B0:
	mov	rcx,rdi
	call	42B050h
	cmp	[rbp+6Eh],al
	movsx	ebx,al
	setz	byte ptr [rsp+37h]
	jnz	42DD60h

l000000000042D7C9:
	movzx	edx,byte ptr [rbp+20h]
	test	dl,dl
	jnz	42DD72h

l000000000042D7D5:
	cmp	[rbp+48h],al
	jz	42E05Dh

l000000000042D7DE:
	mov	rcx,[rsp+50h]
	test	rcx,rcx
	jz	42D7F5h

l000000000042D7E8:
	call	462490h
	mov	dword ptr [rsp+58h],0FFFFFFFFh

l000000000042D7F5:
	mov	rdx,r12
	mov	rcx,rdi
	call	42AF60h
	test	al,al
	jz	42DE00h

l000000000042D808:
	mov	r14d,1h
	xor	r13d,r13d
	mov	byte ptr [rsp+35h],0h

l000000000042D816:
	cmp	dword ptr [rsp+20h],10h
	mov	r12d,16h
	jz	42D828h

l000000000042D823:
	movsxd	r12,dword ptr [rsp+20h]

l000000000042D828:
	lea	rax,[rsp+6Fh]
	xor	edx,edx
	xor	ecx,ecx
	mov	r8,rax
	mov	[rsp+38h],rax
	call	4505D0h
	cmp	byte ptr [rbp+20h],0h
	mov	[rsp+70h],rax
	jnz	42DDE4h

l000000000042D84D:
	cmp	byte ptr [rsp+37h],1h
	lea	r15,[rbp+72h]
	sbb	eax,eax
	xor	edx,edx
	add	eax,80000000h
	mov	[rsp+30h],eax
	div	dword ptr [rsp+20h]
	mov	[rsp+24h],eax
	movzx	eax,byte ptr [rbp+88h]
	test	al,al
	mov	[rsp+36h],al
	jnz	42DA50h

l000000000042D87E:
	xor	esi,esi
	xor	edi,edi
	test	r14b,r14b
	jnz	42DA60h

l000000000042D88B:
	lea	r15d,[r12+30h]

l000000000042D890:
	cmp	r12,0Ah
	ja	42DA70h

l000000000042D89A:
	cmp	bl,2Fh
	jle	42DA60h

l000000000042D8A3:
	cmp	r15b,bl
	jle	42DA60h

l000000000042D8AC:
	sub	ebx,30h

l000000000042D8AF:
	cmp	[rsp+24h],esi
	jnc	42DA9Ah

l000000000042D8B9:
	mov	rcx,[rsp+50h]
	mov	edi,1h
	test	rcx,rcx
	jz	42DAC0h

l000000000042D8CC:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	42DB50h

l000000000042D8DA:
	add	rax,1h
	mov	dword ptr [rsp+58h],0FFFFFFFFh
	mov	[rcx+10h],rax
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	42DB80h

l000000000042D8F8:
	movzx	eax,byte ptr [rax]

l000000000042D8FB:
	mov	rcx,[rsp+40h]
	mov	[rsp+58h],eax
	test	rcx,rcx
	jz	42DAFFh

l000000000042D90D:
	xor	ebx,ebx
	xor	eax,eax
	cmp	dword ptr [rsp+48h],0FFh
	jz	42DAE0h

l000000000042D91C:
	cmp	al,bl
	jnz	42DAFFh

l000000000042D924:
	xor	ebx,ebx
	mov	r14d,1h

l000000000042D92C:
	mov	rax,[rsp+70h]
	cmp	qword ptr [rax-18h],0h
	jnz	42D9C0h

l000000000042D93C:
	test	r13d,r13d
	setz	dl
	cmp	[rsp+35h],dl
	jnc	42DA0Fh

l000000000042D94C:
	mov	rdi,[rsp+100h]
	mov	dword ptr [rdi],0h
	mov	rdi,[rsp+0F8h]
	mov	dword ptr [rdi],4h

l000000000042D968:
	test	r14b,r14b
	jz	42D978h

l000000000042D96D:
	mov	rdi,[rsp+0F8h]
	or	dword ptr [rdi],2h

l000000000042D978:
	mov	rdi,[rsp+0D0h]
	mov	rcx,[rsp+50h]
	mov	edx,0FFFFFFFFh
	mov	rbx,[rsp+58h]
	mov	[rdi],rcx
	mov	[rdi+8h],rbx
	lock
	xadd	[rax-8h],edx
	test	edx,edx
	jle	42DF80h

l000000000042D9A3:
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
000000000042D9BF                                              90                .

l000000000042D9C0:
	lea	r12,[rsp+70h]
	movsx	edx,r13b
	mov	rcx,r12
	call	451E10h
	mov	rdx,[rbp+18h]
	mov	rcx,[rbp+10h]
	mov	r8,r12
	call	4708F0h
	test	al,al
	jnz	42D9F3h

l000000000042D9E5:
	mov	rax,[rsp+0F8h]
	mov	dword ptr [rax],4h

l000000000042D9F3:
	test	r13d,r13d
	setz	al
	cmp	al,[rsp+35h]
	mov	rax,[rsp+70h]
	jbe	42DA0Fh

l000000000042DA04:
	cmp	qword ptr [rax-18h],0h
	jz	42D94Ch

l000000000042DA0F:
	test	bl,bl
	jnz	42D94Ch

l000000000042DA17:
	test	dil,dil
	jz	42DD85h

l000000000042DA20:
	cmp	byte ptr [rsp+37h],1h
	mov	rdi,[rsp+100h]
	sbb	edx,edx
	add	edx,80000000h
	mov	[rdi],edx
	mov	rdi,[rsp+0F8h]
	mov	dword ptr [rdi],4h
	jmp	42D968h
000000000042DA4A                               66 0F 1F 44 00 00           f..D..

l000000000042DA50:
	xor	esi,esi
	xor	edi,edi
	test	r14b,r14b
	jz	42DBA0h

l000000000042DA5D:
	nop	dword ptr [rax]

l000000000042DA60:
	xor	ebx,ebx
	jmp	42D92Ch
000000000042DA67                      66 0F 1F 84 00 00 00 00 00        f........

l000000000042DA70:
	lea	eax,[rbx-30h]
	cmp	al,9h
	jbe	42D8ACh

l000000000042DA7B:
	lea	eax,[rbx-61h]
	cmp	al,5h
	jbe	42DB20h

l000000000042DA86:
	lea	eax,[rbx-41h]
	cmp	al,5h
	ja	42DA60h

l000000000042DA8D:
	sub	ebx,37h
	cmp	[rsp+24h],esi
	jc	42D8B9h

l000000000042DA9A:
	imul	esi,[rsp+20h]
	mov	eax,[rsp+30h]
	mov	rcx,[rsp+50h]
	sub	eax,ebx
	cmp	eax,esi
	setc	al
	add	esi,ebx
	add	r13d,1h
	or	edi,eax
	test	rcx,rcx
	jnz	42D8CCh

l000000000042DAC0:
	mov	rcx,[rsp+40h]
	test	rcx,rcx
	jz	42D924h

l000000000042DACE:
	xor	eax,eax
	cmp	dword ptr [rsp+48h],0FFh
	mov	ebx,1h
	jnz	42D91Ch

l000000000042DAE0:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	42DDA0h

l000000000042DAEE:
	movzx	eax,byte ptr [rax]

l000000000042DAF1:
	mov	[rsp+48h],eax
	xor	eax,eax
	cmp	al,bl
	jz	42D924h

l000000000042DAFF:
	mov	rcx,[rsp+50h]
	test	rcx,rcx
	jz	42E06Eh

l000000000042DB0D:
	mov	eax,[rsp+58h]
	cmp	eax,0FFh
	jz	42DB30h

l000000000042DB16:
	movsx	ebx,al
	jmp	42D890h
000000000042DB1E                                           66 90               f.

l000000000042DB20:
	sub	ebx,57h
	jmp	42D8AFh
000000000042DB28                         0F 1F 84 00 00 00 00 00         ........

l000000000042DB30:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	42DFF0h

l000000000042DB3E:
	movzx	eax,byte ptr [rax]

l000000000042DB41:
	mov	[rsp+58h],eax
	jmp	42DB16h
000000000042DB47                      66 0F 1F 84 00 00 00 00 00        f........

l000000000042DB50:
	mov	rax,[rcx]
	call	qword ptr [rax+50h]
	mov	rcx,[rsp+50h]
	mov	dword ptr [rsp+58h],0FFFFFFFFh
	test	rcx,rcx
	jz	42DAC0h

l000000000042DB6C:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jc	42D8F8h

l000000000042DB7A:
	nop	word ptr [rax+rax+0h]

l000000000042DB80:
	mov	rax,[rcx]
	call	qword ptr [rax+48h]
	cmp	eax,0FFh
	jnz	42D8FBh

l000000000042DB8F:
	mov	qword ptr [rsp+50h],+0h
	jmp	42DAC0h
000000000042DB9D                                        0F 1F 00              ...

l000000000042DBA0:
	lea	rax,[rsp+70h]
	mov	[rsp+28h],rax

l000000000042DBAA:
	cmp	byte ptr [rbp+20h],0h
	jz	42DBB9h

l000000000042DBB0:
	cmp	bl,[rbp+49h]
	jz	42DCF0h

l000000000042DBB9:
	cmp	bl,[rbp+48h]
	jz	42DA60h

l000000000042DBC2:
	movsx	edx,bl
	mov	r8,r12
	mov	rcx,r15
	call	41BD98h
	test	rax,rax
	jz	42DA60h

l000000000042DBD9:
	sub	rax,r15
	lea	edx,[rax-6h]
	cmp	eax,10h
	cmovge	eax,edx

l000000000042DBE5:
	cmp	[rsp+24h],esi
	jc	42DCA0h

l000000000042DBEF:
	imul	esi,[rsp+20h]
	mov	edx,[rsp+30h]
	sub	edx,eax
	cmp	edx,esi
	setc	dl
	add	esi,eax
	add	r13d,1h
	or	edi,edx

l000000000042DC07:
	mov	rcx,[rsp+50h]
	test	rcx,rcx
	jz	42DCB3h

l000000000042DC15:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	42DD10h

l000000000042DC23:
	add	rax,1h
	mov	dword ptr [rsp+58h],0FFFFFFFFh
	mov	[rcx+10h],rax
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	42DD40h

l000000000042DC41:
	movzx	eax,byte ptr [rax]

l000000000042DC44:
	mov	rcx,[rsp+40h]
	mov	[rsp+58h],eax
	test	rcx,rcx
	jz	42DC65h

l000000000042DC52:
	xor	ebx,ebx
	xor	eax,eax
	cmp	dword ptr [rsp+48h],0FFh
	jz	42DCCFh

l000000000042DC5D:
	cmp	al,bl
	jz	42D924h

l000000000042DC65:
	mov	rcx,[rsp+50h]
	test	rcx,rcx
	jz	42E082h

l000000000042DC73:
	mov	eax,[rsp+58h]
	cmp	eax,0FFh
	jz	42DC83h

l000000000042DC7C:
	mov	ebx,eax
	jmp	42DBAAh

l000000000042DC83:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	42E010h

l000000000042DC91:
	movzx	eax,byte ptr [rax]

l000000000042DC94:
	mov	[rsp+58h],eax
	mov	ebx,eax
	jmp	42DBAAh
000000000042DC9F                                              90                .

l000000000042DCA0:
	mov	rcx,[rsp+50h]
	mov	edi,1h
	test	rcx,rcx
	jnz	42DC15h

l000000000042DCB3:
	mov	rcx,[rsp+40h]
	test	rcx,rcx
	jz	42D924h

l000000000042DCC1:
	xor	eax,eax
	cmp	dword ptr [rsp+48h],0FFh
	movzx	ebx,byte ptr [rsp+36h]
	jnz	42DC5Dh

l000000000042DCCF:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	42DDC2h

l000000000042DCDD:
	movzx	eax,byte ptr [rax]

l000000000042DCE0:
	mov	[rsp+48h],eax
	xor	eax,eax
	jmp	42DC5Dh
000000000042DCEB                                  0F 1F 44 00 00            ..D..

l000000000042DCF0:
	test	r13d,r13d
	jz	42E078h

l000000000042DCF9:
	mov	rcx,[rsp+28h]
	movsx	edx,r13b
	call	451E10h
	xor	r13d,r13d
	jmp	42DC07h
000000000042DD0F                                              90                .

l000000000042DD10:
	mov	rax,[rcx]
	call	qword ptr [rax+50h]
	mov	rcx,[rsp+50h]
	mov	dword ptr [rsp+58h],0FFFFFFFFh
	test	rcx,rcx
	jz	42DCB3h

l000000000042DD28:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jc	42DC41h

l000000000042DD36:
	nop	word ptr cs:[rax+rax+0h]

l000000000042DD40:
	mov	rax,[rcx]
	call	qword ptr [rax+48h]
	cmp	eax,0FFh
	jnz	42DC44h

l000000000042DD4F:
	mov	qword ptr [rsp+50h],+0h
	jmp	42DCB3h
000000000042DD5D                                        0F 1F 00              ...

l000000000042DD60:
	cmp	[rbp+6Fh],al
	jz	42D7C9h

l000000000042DD69:
	movzx	eax,byte ptr [rbp+20h]
	jmp	42DE0Fh

l000000000042DD72:
	cmp	[rbp+49h],al
	jnz	42D7D5h

l000000000042DD7B:
	mov	eax,1h
	jmp	42DE0Fh

l000000000042DD85:
	mov	edx,esi
	mov	rdi,[rsp+100h]
	neg	edx
	cmp	byte ptr [rsp+37h],0h
	cmovnz	esi,edx

l000000000042DD99:
	mov	[rdi],esi
	jmp	42D968h

l000000000042DDA0:
	mov	rax,[rcx]
	call	qword ptr [rax+48h]
	cmp	eax,0FFh
	jnz	42DAF1h

l000000000042DDAF:
	mov	qword ptr [rsp+40h],+0h
	mov	eax,1h
	jmp	42D91Ch

l000000000042DDC2:
	mov	rax,[rcx]
	call	qword ptr [rax+48h]
	cmp	eax,0FFh
	jnz	42DCE0h

l000000000042DDD1:
	mov	qword ptr [rsp+40h],+0h
	movzx	eax,byte ptr [rsp+36h]
	jmp	42DC5Dh

l000000000042DDE4:
	lea	rcx,[rsp+70h]
	mov	edx,20h
	call	451BE0h
	jmp	42D84Dh
000000000042DDF8                         0F 1F 84 00 00 00 00 00         ........

l000000000042DE00:
	mov	rcx,rdi
	call	42B050h
	movsx	ebx,al
	movzx	eax,byte ptr [rbp+20h]

l000000000042DE0F:
	xor	r13d,r13d
	xor	r12d,r12d

l000000000042DE15:
	test	al,al
	jz	42DE22h

l000000000042DE19:
	cmp	[rbp+49h],bl
	jz	42DF93h

l000000000042DE22:
	cmp	[rbp+48h],bl
	jz	42DF93h

l000000000042DE2B:
	cmp	[rbp+72h],bl
	jz	42DEE0h

l000000000042DE34:
	test	r12b,r12b
	jz	42DF93h

l000000000042DE3D:
	cmp	[rbp+70h],bl
	jz	42DE4Bh

l000000000042DE42:
	cmp	[rbp+71h],bl
	jnz	42DF72h

l000000000042DE4B:
	cmp	dword ptr [rsp+20h],10h
	jz	42DE5Ah

l000000000042DE52:
	test	esi,esi
	jnz	42E064h

l000000000042DE5A:
	xor	r13d,r13d
	xor	r12d,r12d
	mov	dword ptr [rsp+20h],10h

l000000000042DE68:
	mov	rcx,[rsp+50h]
	test	rcx,rcx
	jz	42DF20h

l000000000042DE76:
	mov	rdx,[rcx+10h]
	cmp	rdx,[rcx+18h]
	jnc	42DFA0h

l000000000042DE84:
	add	rdx,1h
	mov	dword ptr [rsp+58h],0FFFFFFFFh
	mov	[rcx+10h],rdx
	mov	rdx,[rcx+10h]
	cmp	rdx,[rcx+18h]
	jnc	42DFD0h

l000000000042DEA2:
	movzx	eax,byte ptr [rdx]

l000000000042DEA5:
	mov	rcx,[rsp+40h]
	mov	[rsp+58h],eax
	test	rcx,rcx
	jz	42DF59h

l000000000042DEB7:
	xor	r15d,r15d
	xor	eax,eax
	cmp	dword ptr [rsp+48h],0FFh
	jz	42DF39h

l000000000042DEC3:
	cmp	al,r15b
	jnz	42DF59h

l000000000042DECC:
	mov	[rsp+35h],r12b
	mov	r14d,1h
	jmp	42D816h
000000000042DEDC                                     0F 1F 40 00             ..@.

l000000000042DEE0:
	cmp	dword ptr [rsp+20h],0Ah
	setz	al
	cmp	al,r12b
	jc	42DE3Dh

l000000000042DEF1:
	add	r13d,1h
	cmp	dword ptr [rsp+20h],8h
	jz	42E08Ch

l000000000042DF00:
	test	esi,esi
	jz	42E08Ch

l000000000042DF08:
	mov	rcx,[rsp+50h]
	mov	r12d,1h
	test	rcx,rcx
	jnz	42DE76h

l000000000042DF1C:
	nop	dword ptr [rax+0h]

l000000000042DF20:
	mov	rcx,[rsp+40h]
	test	rcx,rcx
	jz	42DECCh

l000000000042DF2A:
	xor	eax,eax
	cmp	dword ptr [rsp+48h],0FFh
	mov	r15d,1h
	jnz	42DEC3h

l000000000042DF39:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	42E03Bh

l000000000042DF47:
	movzx	eax,byte ptr [rax]

l000000000042DF4A:
	mov	[rsp+48h],eax
	xor	eax,eax
	cmp	al,r15b
	jz	42DECCh

l000000000042DF59:
	mov	rcx,rdi
	call	42B050h
	test	r12b,r12b
	movsx	ebx,al
	jz	42DF93h

l000000000042DF69:
	movzx	eax,byte ptr [rbp+20h]
	jmp	42DE15h

l000000000042DF72:
	mov	byte ptr [rsp+35h],1h
	jmp	42D816h
000000000042DF7C                                     0F 1F 40 00             ..@.

l000000000042DF80:
	mov	rdx,[rsp+38h]
	lea	rcx,[rax-18h]
	call	450A50h
	jmp	42D9A3h

l000000000042DF93:
	mov	[rsp+35h],r12b
	jmp	42D816h
000000000042DF9D                                        0F 1F 00              ...

l000000000042DFA0:
	mov	rdx,[rcx]
	call	qword ptr [rdx+50h]
	mov	rcx,[rsp+50h]
	mov	dword ptr [rsp+58h],0FFFFFFFFh
	test	rcx,rcx
	jz	42DF20h

l000000000042DFBC:
	mov	rdx,[rcx+10h]
	cmp	rdx,[rcx+18h]
	jc	42DEA2h

l000000000042DFCA:
	nop	word ptr [rax+rax+0h]

l000000000042DFD0:
	mov	rdx,[rcx]
	call	qword ptr [rdx+48h]
	cmp	eax,0FFh
	jnz	42DEA5h

l000000000042DFDF:
	mov	qword ptr [rsp+50h],+0h
	jmp	42DF20h
000000000042DFED                                        0F 1F 00              ...

l000000000042DFF0:
	mov	rax,[rcx]
	call	qword ptr [rax+48h]
	cmp	eax,0FFh
	jnz	42DB41h

l000000000042DFFF:
	mov	qword ptr [rsp+50h],+0h
	movsx	ebx,al
	jmp	42D890h

l000000000042E010:
	mov	rax,[rcx]
	call	qword ptr [rax+48h]
	cmp	eax,0FFh
	jnz	42DC94h

l000000000042E01F:
	mov	qword ptr [rsp+50h],+0h
	mov	ebx,eax
	jmp	42DBAAh

l000000000042E02F:
	xor	ebx,ebx
	mov	byte ptr [rsp+37h],0h
	jmp	42D808h

l000000000042E03B:
	mov	rax,[rcx]
	call	qword ptr [rax+48h]
	cmp	eax,0FFh
	jnz	42DF4Ah

l000000000042E04A:
	mov	qword ptr [rsp+40h],+0h
	mov	eax,1h
	jmp	42DEC3h

l000000000042E05D:
	mov	eax,edx
	jmp	42DE0Fh

l000000000042E064:
	mov	byte ptr [rsp+35h],1h
	jmp	42D823h

l000000000042E06E:
	mov	ebx,0FFFFFFFFh
	jmp	42D890h

l000000000042E078:
	mov	ebx,1h
	jmp	42D92Ch

l000000000042E082:
	mov	ebx,0FFFFFFFFh
	jmp	42DBAAh

l000000000042E08C:
	xor	r13d,r13d
	mov	r12d,1h
	mov	dword ptr [rsp+20h],8h
	jmp	42DE68h
000000000042E0A2       48 89 C3 48 8B 44 24 70 48 8B 54 24 38 48   H..H.D$pH.T$8H
000000000042E0B0 8D 48 E8 E8 A8 29 02 00 48 89 D9 E8 F0 34 FE FF .H...)..H....4..
000000000042E0C0 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 ................

;; fn000000000042E0D0: 000000000042E0D0
;;   Called from:
;;     0000000000431733 (in fn00000000004316D0)
;;     00000000004325E4 (in fn0000000000432590)
fn000000000042E0D0 proc
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
	call	42A360h
	mov	esi,[rbx+18h]
	mov	rbp,rax
	mov	dword ptr [rsp+24h],8h
	and	esi,4Ah
	cmp	esi,40h
	jz	42E150h

l000000000042E13C:
	cmp	esi,8h
	mov	eax,0Ah
	mov	edx,10h
	cmovz	eax,edx

l000000000042E14C:
	mov	[rsp+24h],eax

l000000000042E150:
	lea	r12,[rsp+40h]
	lea	rdi,[rsp+50h]
	mov	rdx,r12
	mov	rcx,rdi
	call	42AF60h
	test	al,al
	mov	r14d,eax
	jnz	42E9CFh

l000000000042E170:
	mov	rcx,rdi
	call	42B050h
	cmp	[rbp+6Eh],al
	movsx	ebx,al
	setz	byte ptr [rsp+37h]
	jnz	42E700h

l000000000042E189:
	movzx	edx,byte ptr [rbp+20h]
	test	dl,dl
	jnz	42E712h

l000000000042E195:
	cmp	[rbp+48h],al
	jz	42E9FDh

l000000000042E19E:
	mov	rcx,[rsp+50h]
	test	rcx,rcx
	jz	42E1B5h

l000000000042E1A8:
	call	462490h
	mov	dword ptr [rsp+58h],0FFFFFFFFh

l000000000042E1B5:
	mov	rdx,r12
	mov	rcx,rdi
	call	42AF60h
	test	al,al
	jz	42E7A0h

l000000000042E1C8:
	mov	r14d,1h
	xor	r13d,r13d
	mov	byte ptr [rsp+35h],0h

l000000000042E1D6:
	cmp	dword ptr [rsp+24h],10h
	mov	r12d,16h
	jz	42E1E8h

l000000000042E1E3:
	movsxd	r12,dword ptr [rsp+24h]

l000000000042E1E8:
	lea	rax,[rsp+6Fh]
	xor	edx,edx
	xor	ecx,ecx
	mov	r8,rax
	mov	[rsp+38h],rax
	call	4505D0h
	cmp	byte ptr [rbp+20h],0h
	mov	[rsp+70h],rax
	jnz	42E785h

l000000000042E20D:
	xor	edx,edx
	mov	eax,0FFFFFFFFh
	lea	r15,[rbp+72h]
	div	dword ptr [rsp+24h]
	mov	[rsp+30h],eax
	movzx	eax,byte ptr [rbp+88h]
	test	al,al
	mov	[rsp+36h],al
	jnz	42E3F5h

l000000000042E233:
	xor	esi,esi
	xor	edi,edi
	test	r14b,r14b
	jnz	42E402h

l000000000042E240:
	lea	r15d,[r12+30h]

l000000000042E245:
	cmp	r12,0Ah
	ja	42E410h

l000000000042E24F:
	cmp	bl,2Fh
	jle	42E402h

l000000000042E258:
	cmp	r15b,bl
	jle	42E402h

l000000000042E261:
	sub	ebx,30h

l000000000042E264:
	cmp	[rsp+30h],esi
	jnc	42E43Ah

l000000000042E26E:
	mov	rcx,[rsp+50h]
	mov	edi,1h
	test	rcx,rcx
	jz	42E45Eh

l000000000042E281:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	42E4F0h

l000000000042E28F:
	add	rax,1h
	mov	dword ptr [rsp+58h],0FFFFFFFFh
	mov	[rcx+10h],rax
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	42E520h

l000000000042E2AD:
	movzx	eax,byte ptr [rax]

l000000000042E2B0:
	mov	rcx,[rsp+40h]
	mov	[rsp+58h],eax
	test	rcx,rcx
	jz	42E49Dh

l000000000042E2C2:
	xor	ebx,ebx
	xor	eax,eax
	cmp	dword ptr [rsp+48h],0FFh
	jz	42E47Eh

l000000000042E2D1:
	cmp	al,bl
	jnz	42E49Dh

l000000000042E2D9:
	xor	ebx,ebx
	mov	r14d,1h

l000000000042E2E1:
	mov	rax,[rsp+70h]
	cmp	qword ptr [rax-18h],0h
	jnz	42E374h

l000000000042E2F1:
	test	r13d,r13d
	setz	dl
	cmp	[rsp+35h],dl
	jnc	42E3C3h

l000000000042E301:
	mov	rdi,[rsp+100h]
	mov	dword ptr [rdi],0h
	mov	rdi,[rsp+0F8h]
	mov	dword ptr [rdi],4h

l000000000042E31D:
	test	r14b,r14b
	jz	42E32Dh

l000000000042E322:
	mov	rdi,[rsp+0F8h]
	or	dword ptr [rdi],2h

l000000000042E32D:
	mov	rdi,[rsp+0D0h]
	mov	rcx,[rsp+50h]
	mov	edx,0FFFFFFFFh
	mov	rbx,[rsp+58h]
	mov	[rdi],rcx
	mov	[rdi+8h],rbx
	lock
	xadd	[rax-8h],edx
	test	edx,edx
	jle	42E920h

l000000000042E358:
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

l000000000042E374:
	lea	r12,[rsp+70h]
	movsx	edx,r13b
	mov	rcx,r12
	call	451E10h
	mov	rdx,[rbp+18h]
	mov	rcx,[rbp+10h]
	mov	r8,r12
	call	4708F0h
	test	al,al
	jnz	42E3A7h

l000000000042E399:
	mov	rax,[rsp+0F8h]
	mov	dword ptr [rax],4h

l000000000042E3A7:
	test	r13d,r13d
	setz	al
	cmp	[rsp+35h],al
	mov	rax,[rsp+70h]
	jnc	42E3C3h

l000000000042E3B8:
	cmp	qword ptr [rax-18h],0h
	jz	42E301h

l000000000042E3C3:
	test	bl,bl
	jnz	42E301h

l000000000042E3CB:
	test	dil,dil
	jz	42E725h

l000000000042E3D4:
	mov	rdi,[rsp+100h]
	mov	dword ptr [rdi],0FFFFFFFFh
	mov	rdi,[rsp+0F8h]
	mov	dword ptr [rdi],4h
	jmp	42E31Dh

l000000000042E3F5:
	xor	esi,esi
	xor	edi,edi
	test	r14b,r14b
	jz	42E540h

l000000000042E402:
	xor	ebx,ebx
	jmp	42E2E1h
000000000042E409                            0F 1F 80 00 00 00 00          .......

l000000000042E410:
	lea	eax,[rbx-30h]
	cmp	al,9h
	jbe	42E261h

l000000000042E41B:
	lea	eax,[rbx-61h]
	cmp	al,5h
	jbe	42E4C0h

l000000000042E426:
	lea	eax,[rbx-41h]
	cmp	al,5h
	ja	42E402h

l000000000042E42D:
	sub	ebx,37h
	cmp	[rsp+30h],esi
	jc	42E26Eh

l000000000042E43A:
	imul	esi,[rsp+24h]
	mov	eax,ebx
	mov	rcx,[rsp+50h]
	not	eax
	cmp	eax,esi
	setc	al
	add	esi,ebx
	add	r13d,1h
	or	edi,eax
	test	rcx,rcx
	jnz	42E281h

l000000000042E45E:
	mov	rcx,[rsp+40h]
	test	rcx,rcx
	jz	42E2D9h

l000000000042E46C:
	xor	eax,eax
	cmp	dword ptr [rsp+48h],0FFh
	mov	ebx,1h
	jnz	42E2D1h

l000000000042E47E:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	42E741h

l000000000042E48C:
	movzx	eax,byte ptr [rax]

l000000000042E48F:
	mov	[rsp+48h],eax
	xor	eax,eax
	cmp	al,bl
	jz	42E2D9h

l000000000042E49D:
	mov	rcx,[rsp+50h]
	test	rcx,rcx
	jz	42EA0Eh

l000000000042E4AB:
	mov	eax,[rsp+58h]
	cmp	eax,0FFh
	jz	42E4D0h

l000000000042E4B4:
	movsx	ebx,al
	jmp	42E245h
000000000042E4BC                                     0F 1F 40 00             ..@.

l000000000042E4C0:
	sub	ebx,57h
	jmp	42E264h
000000000042E4C8                         0F 1F 84 00 00 00 00 00         ........

l000000000042E4D0:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	42E990h

l000000000042E4DE:
	movzx	eax,byte ptr [rax]

l000000000042E4E1:
	mov	[rsp+58h],eax
	jmp	42E4B4h
000000000042E4E7                      66 0F 1F 84 00 00 00 00 00        f........

l000000000042E4F0:
	mov	rax,[rcx]
	call	qword ptr [rax+50h]
	mov	rcx,[rsp+50h]
	mov	dword ptr [rsp+58h],0FFFFFFFFh
	test	rcx,rcx
	jz	42E45Eh

l000000000042E50C:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jc	42E2ADh

l000000000042E51A:
	nop	word ptr [rax+rax+0h]

l000000000042E520:
	mov	rax,[rcx]
	call	qword ptr [rax+48h]
	cmp	eax,0FFh
	jnz	42E2B0h

l000000000042E52F:
	mov	qword ptr [rsp+50h],+0h
	jmp	42E45Eh
000000000042E53D                                        0F 1F 00              ...

l000000000042E540:
	lea	rax,[rsp+70h]
	mov	[rsp+28h],rax

l000000000042E54A:
	cmp	byte ptr [rbp+20h],0h
	jz	42E559h

l000000000042E550:
	cmp	bl,[rbp+49h]
	jz	42E690h

l000000000042E559:
	cmp	bl,[rbp+48h]
	jz	42E402h

l000000000042E562:
	movsx	edx,bl
	mov	r8,r12
	mov	rcx,r15
	call	41BD98h
	test	rax,rax
	jz	42E402h

l000000000042E579:
	sub	rax,r15
	lea	edx,[rax-6h]
	cmp	eax,10h
	cmovge	eax,edx

l000000000042E585:
	cmp	[rsp+30h],esi
	jc	42E640h

l000000000042E58F:
	imul	esi,[rsp+24h]
	mov	edx,eax
	not	edx
	cmp	edx,esi
	setc	dl
	add	esi,eax
	add	r13d,1h
	or	edi,edx

l000000000042E5A5:
	mov	rcx,[rsp+50h]
	test	rcx,rcx
	jz	42E653h

l000000000042E5B3:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	42E6B0h

l000000000042E5C1:
	add	rax,1h
	mov	dword ptr [rsp+58h],0FFFFFFFFh
	mov	[rcx+10h],rax
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	42E6E0h

l000000000042E5DF:
	movzx	eax,byte ptr [rax]

l000000000042E5E2:
	mov	rcx,[rsp+40h]
	mov	[rsp+58h],eax
	test	rcx,rcx
	jz	42E603h

l000000000042E5F0:
	xor	ebx,ebx
	xor	eax,eax
	cmp	dword ptr [rsp+48h],0FFh
	jz	42E66Fh

l000000000042E5FB:
	cmp	al,bl
	jz	42E2D9h

l000000000042E603:
	mov	rcx,[rsp+50h]
	test	rcx,rcx
	jz	42EA22h

l000000000042E611:
	mov	eax,[rsp+58h]
	cmp	eax,0FFh
	jz	42E621h

l000000000042E61A:
	mov	ebx,eax
	jmp	42E54Ah

l000000000042E621:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	42E9B0h

l000000000042E62F:
	movzx	eax,byte ptr [rax]

l000000000042E632:
	mov	[rsp+58h],eax
	mov	ebx,eax
	jmp	42E54Ah
000000000042E63D                                        0F 1F 00              ...

l000000000042E640:
	mov	rcx,[rsp+50h]
	mov	edi,1h
	test	rcx,rcx
	jnz	42E5B3h

l000000000042E653:
	mov	rcx,[rsp+40h]
	test	rcx,rcx
	jz	42E2D9h

l000000000042E661:
	xor	eax,eax
	cmp	dword ptr [rsp+48h],0FFh
	movzx	ebx,byte ptr [rsp+36h]
	jnz	42E5FBh

l000000000042E66F:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	42E763h

l000000000042E67D:
	movzx	eax,byte ptr [rax]

l000000000042E680:
	mov	[rsp+48h],eax
	xor	eax,eax
	jmp	42E5FBh
000000000042E68B                                  0F 1F 44 00 00            ..D..

l000000000042E690:
	test	r13d,r13d
	jz	42EA18h

l000000000042E699:
	mov	rcx,[rsp+28h]
	movsx	edx,r13b
	call	451E10h
	xor	r13d,r13d
	jmp	42E5A5h
000000000042E6AF                                              90                .

l000000000042E6B0:
	mov	rax,[rcx]
	call	qword ptr [rax+50h]
	mov	rcx,[rsp+50h]
	mov	dword ptr [rsp+58h],0FFFFFFFFh
	test	rcx,rcx
	jz	42E653h

l000000000042E6C8:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jc	42E5DFh

l000000000042E6D6:
	nop	word ptr cs:[rax+rax+0h]

l000000000042E6E0:
	mov	rax,[rcx]
	call	qword ptr [rax+48h]
	cmp	eax,0FFh
	jnz	42E5E2h

l000000000042E6EF:
	mov	qword ptr [rsp+50h],+0h
	jmp	42E653h
000000000042E6FD                                        0F 1F 00              ...

l000000000042E700:
	cmp	[rbp+6Fh],al
	jz	42E189h

l000000000042E709:
	movzx	eax,byte ptr [rbp+20h]
	jmp	42E7AFh

l000000000042E712:
	cmp	[rbp+49h],al
	jnz	42E195h

l000000000042E71B:
	mov	eax,1h
	jmp	42E7AFh

l000000000042E725:
	movzx	edx,byte ptr [rsp+37h]
	mov	rdi,[rsp+100h]
	mov	ecx,edx
	neg	ecx
	xor	esi,ecx
	add	edx,esi
	mov	[rdi],edx
	jmp	42E31Dh

l000000000042E741:
	mov	rax,[rcx]
	call	qword ptr [rax+48h]
	cmp	eax,0FFh
	jnz	42E48Fh

l000000000042E750:
	mov	qword ptr [rsp+40h],+0h
	mov	eax,1h
	jmp	42E2D1h

l000000000042E763:
	mov	rax,[rcx]
	call	qword ptr [rax+48h]
	cmp	eax,0FFh
	jnz	42E680h

l000000000042E772:
	mov	qword ptr [rsp+40h],+0h
	movzx	eax,byte ptr [rsp+36h]
	jmp	42E5FBh

l000000000042E785:
	lea	rcx,[rsp+70h]
	mov	edx,20h
	call	451BE0h
	jmp	42E20Dh
000000000042E799                            0F 1F 80 00 00 00 00          .......

l000000000042E7A0:
	mov	rcx,rdi
	call	42B050h
	movsx	ebx,al
	movzx	eax,byte ptr [rbp+20h]

l000000000042E7AF:
	xor	r13d,r13d
	xor	r12d,r12d

l000000000042E7B5:
	test	al,al
	jz	42E7C2h

l000000000042E7B9:
	cmp	[rbp+49h],bl
	jz	42E933h

l000000000042E7C2:
	cmp	[rbp+48h],bl
	jz	42E933h

l000000000042E7CB:
	cmp	[rbp+72h],bl
	jz	42E880h

l000000000042E7D4:
	test	r12b,r12b
	jz	42E933h

l000000000042E7DD:
	cmp	[rbp+70h],bl
	jz	42E7EBh

l000000000042E7E2:
	cmp	[rbp+71h],bl
	jnz	42E912h

l000000000042E7EB:
	cmp	dword ptr [rsp+24h],10h
	jz	42E7FAh

l000000000042E7F2:
	test	esi,esi
	jnz	42EA04h

l000000000042E7FA:
	xor	r13d,r13d
	xor	r12d,r12d
	mov	dword ptr [rsp+24h],10h

l000000000042E808:
	mov	rcx,[rsp+50h]
	test	rcx,rcx
	jz	42E8C0h

l000000000042E816:
	mov	rdx,[rcx+10h]
	cmp	rdx,[rcx+18h]
	jnc	42E940h

l000000000042E824:
	add	rdx,1h
	mov	dword ptr [rsp+58h],0FFFFFFFFh
	mov	[rcx+10h],rdx
	mov	rdx,[rcx+10h]
	cmp	rdx,[rcx+18h]
	jnc	42E970h

l000000000042E842:
	movzx	eax,byte ptr [rdx]

l000000000042E845:
	mov	rcx,[rsp+40h]
	mov	[rsp+58h],eax
	test	rcx,rcx
	jz	42E8F9h

l000000000042E857:
	xor	r15d,r15d
	xor	eax,eax
	cmp	dword ptr [rsp+48h],0FFh
	jz	42E8D9h

l000000000042E863:
	cmp	r15b,al
	jnz	42E8F9h

l000000000042E86C:
	mov	[rsp+35h],r12b
	mov	r14d,1h
	jmp	42E1D6h
000000000042E87C                                     0F 1F 40 00             ..@.

l000000000042E880:
	cmp	dword ptr [rsp+24h],0Ah
	setz	al
	cmp	al,r12b
	jc	42E7DDh

l000000000042E891:
	add	r13d,1h
	cmp	dword ptr [rsp+24h],8h
	jz	42EA2Ch

l000000000042E8A0:
	test	esi,esi
	jz	42EA2Ch

l000000000042E8A8:
	mov	rcx,[rsp+50h]
	mov	r12d,1h
	test	rcx,rcx
	jnz	42E816h

l000000000042E8BC:
	nop	dword ptr [rax+0h]

l000000000042E8C0:
	mov	rcx,[rsp+40h]
	test	rcx,rcx
	jz	42E86Ch

l000000000042E8CA:
	xor	eax,eax
	cmp	dword ptr [rsp+48h],0FFh
	mov	r15d,1h
	jnz	42E863h

l000000000042E8D9:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	42E9DBh

l000000000042E8E7:
	movzx	eax,byte ptr [rax]

l000000000042E8EA:
	mov	[rsp+48h],eax
	xor	eax,eax
	cmp	r15b,al
	jz	42E86Ch

l000000000042E8F9:
	mov	rcx,rdi
	call	42B050h
	test	r12b,r12b
	movsx	ebx,al
	jz	42E933h

l000000000042E909:
	movzx	eax,byte ptr [rbp+20h]
	jmp	42E7B5h

l000000000042E912:
	mov	byte ptr [rsp+35h],1h
	jmp	42E1D6h
000000000042E91C                                     0F 1F 40 00             ..@.

l000000000042E920:
	mov	rdx,[rsp+38h]
	lea	rcx,[rax-18h]
	call	450A50h
	jmp	42E358h

l000000000042E933:
	mov	[rsp+35h],r12b
	jmp	42E1D6h
000000000042E93D                                        0F 1F 00              ...

l000000000042E940:
	mov	rdx,[rcx]
	call	qword ptr [rdx+50h]
	mov	rcx,[rsp+50h]
	mov	dword ptr [rsp+58h],0FFFFFFFFh
	test	rcx,rcx
	jz	42E8C0h

l000000000042E95C:
	mov	rdx,[rcx+10h]
	cmp	rdx,[rcx+18h]
	jc	42E842h

l000000000042E96A:
	nop	word ptr [rax+rax+0h]

l000000000042E970:
	mov	rdx,[rcx]
	call	qword ptr [rdx+48h]
	cmp	eax,0FFh
	jnz	42E845h

l000000000042E97F:
	mov	qword ptr [rsp+50h],+0h
	jmp	42E8C0h
000000000042E98D                                        0F 1F 00              ...

l000000000042E990:
	mov	rax,[rcx]
	call	qword ptr [rax+48h]
	cmp	eax,0FFh
	jnz	42E4E1h

l000000000042E99F:
	mov	qword ptr [rsp+50h],+0h
	movsx	ebx,al
	jmp	42E245h

l000000000042E9B0:
	mov	rax,[rcx]
	call	qword ptr [rax+48h]
	cmp	eax,0FFh
	jnz	42E632h

l000000000042E9BF:
	mov	qword ptr [rsp+50h],+0h
	mov	ebx,eax
	jmp	42E54Ah

l000000000042E9CF:
	xor	ebx,ebx
	mov	byte ptr [rsp+37h],0h
	jmp	42E1C8h

l000000000042E9DB:
	mov	rax,[rcx]
	call	qword ptr [rax+48h]
	cmp	eax,0FFh
	jnz	42E8EAh

l000000000042E9EA:
	mov	qword ptr [rsp+40h],+0h
	mov	eax,1h
	jmp	42E863h

l000000000042E9FD:
	mov	eax,edx
	jmp	42E7AFh

l000000000042EA04:
	mov	byte ptr [rsp+35h],1h
	jmp	42E1E3h

l000000000042EA0E:
	mov	ebx,0FFFFFFFFh
	jmp	42E245h

l000000000042EA18:
	mov	ebx,1h
	jmp	42E2E1h

l000000000042EA22:
	mov	ebx,0FFFFFFFFh
	jmp	42E54Ah

l000000000042EA2C:
	xor	r13d,r13d
	mov	r12d,1h
	mov	dword ptr [rsp+24h],8h
	jmp	42E808h
000000000042EA42       48 89 C3 48 8B 44 24 70 48 8B 54 24 38 48   H..H.D$pH.T$8H
000000000042EA50 8D 48 E8 E8 08 20 02 00 48 89 D9 E8 50 2B FE FF .H... ..H...P+..
000000000042EA60 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 ................

;; fn000000000042EA70: 000000000042EA70
;;   Called from:
;;     00000000004317B3 (in fn0000000000431750)
;;     0000000000432654 (in fn0000000000432600)
fn000000000042EA70 proc
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
	call	42A360h
	mov	esi,[rbx+18h]
	mov	rbp,rax
	mov	dword ptr [rsp+24h],8h
	and	esi,4Ah
	cmp	esi,40h
	jz	42EAF0h

l000000000042EADC:
	cmp	esi,8h
	mov	eax,0Ah
	mov	edx,10h
	cmovz	eax,edx

l000000000042EAEC:
	mov	[rsp+24h],eax

l000000000042EAF0:
	lea	r12,[rsp+40h]
	lea	rdi,[rsp+50h]
	mov	rdx,r12
	mov	rcx,rdi
	call	42AF60h
	test	al,al
	mov	r15d,eax
	jnz	42F38Fh

l000000000042EB10:
	mov	rcx,rdi
	call	42B050h
	cmp	[rbp+6Eh],al
	movsx	ebx,al
	setz	byte ptr [rsp+37h]
	jnz	42F0C0h

l000000000042EB29:
	movzx	edx,byte ptr [rbp+20h]
	test	dl,dl
	jnz	42F0D2h

l000000000042EB35:
	cmp	[rbp+48h],al
	jz	42F3BDh

l000000000042EB3E:
	mov	rcx,[rsp+50h]
	test	rcx,rcx
	jz	42EB55h

l000000000042EB48:
	call	462490h
	mov	dword ptr [rsp+58h],0FFFFFFFFh

l000000000042EB55:
	mov	rdx,r12
	mov	rcx,rdi
	call	42AF60h
	test	al,al
	jz	42F164h

l000000000042EB68:
	mov	r15d,1h
	xor	r13d,r13d
	mov	byte ptr [rsp+35h],0h

l000000000042EB76:
	cmp	dword ptr [rsp+24h],10h
	mov	r12d,16h
	jz	42EB88h

l000000000042EB83:
	movsxd	r12,dword ptr [rsp+24h]

l000000000042EB88:
	lea	rax,[rsp+6Fh]
	xor	edx,edx
	xor	ecx,ecx
	mov	r8,rax
	mov	[rsp+38h],rax
	call	4505D0h
	cmp	byte ptr [rbp+20h],0h
	mov	[rsp+70h],rax
	jnz	42F150h

l000000000042EBAD:
	mov	eax,0FFFFh
	lea	r14,[rbp+72h]
	cdq
	idiv	dword ptr [rsp+24h]
	mov	[rsp+32h],ax
	movzx	eax,byte ptr [rbp+88h]
	test	al,al
	mov	[rsp+36h],al
	jnz	42EDA3h

l000000000042EBD3:
	xor	esi,esi
	xor	edi,edi
	test	r15b,r15b
	jnz	42EDB0h

l000000000042EBE0:
	lea	eax,[r12+30h]
	mov	r14d,0FFFFh
	mov	[rsp+28h],al

l000000000042EBEF:
	cmp	r12,0Ah
	ja	42EDC0h

l000000000042EBF9:
	cmp	bl,2Fh
	jle	42EDB0h

l000000000042EC02:
	cmp	[rsp+28h],bl
	jle	42EDB0h

l000000000042EC0C:
	sub	ebx,30h

l000000000042EC0F:
	cmp	[rsp+32h],si
	jnc	42EDEBh

l000000000042EC1A:
	mov	rcx,[rsp+50h]
	mov	edi,1h
	test	rcx,rcx
	jz	42EE14h

l000000000042EC2D:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	42EEA0h

l000000000042EC3B:
	add	rax,1h
	mov	dword ptr [rsp+58h],0FFFFFFFFh
	mov	[rcx+10h],rax
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	42EED0h

l000000000042EC59:
	movzx	eax,byte ptr [rax]

l000000000042EC5C:
	mov	rcx,[rsp+40h]
	mov	[rsp+58h],eax
	test	rcx,rcx
	jz	42EE53h

l000000000042EC6E:
	xor	ebx,ebx
	xor	eax,eax
	cmp	dword ptr [rsp+48h],0FFh
	jz	42EE34h

l000000000042EC7D:
	cmp	al,bl
	jnz	42EE53h

l000000000042EC85:
	xor	ebx,ebx
	mov	r15d,1h

l000000000042EC8D:
	mov	rax,[rsp+70h]
	cmp	qword ptr [rax-18h],0h
	jnz	42ED20h

l000000000042EC9D:
	test	r13d,r13d
	setz	dl
	cmp	[rsp+35h],dl
	jnc	42ED6Fh

l000000000042ECAD:
	mov	rdi,[rsp+100h]
	xor	edx,edx
	mov	[rdi],dx
	mov	rdi,[rsp+0F8h]
	mov	dword ptr [rdi],4h

l000000000042ECC8:
	test	r15b,r15b
	jz	42ECD8h

l000000000042ECCD:
	mov	rdi,[rsp+0F8h]
	or	dword ptr [rdi],2h

l000000000042ECD8:
	mov	rdi,[rsp+0D0h]
	mov	rcx,[rsp+50h]
	mov	edx,0FFFFFFFFh
	mov	rbx,[rsp+58h]
	mov	[rdi],rcx
	mov	[rdi+8h],rbx
	lock
	xadd	[rax-8h],edx
	test	edx,edx
	jle	42F2E0h

l000000000042ED03:
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
000000000042ED1F                                              90                .

l000000000042ED20:
	lea	r12,[rsp+70h]
	movsx	edx,r13b
	mov	rcx,r12
	call	451E10h
	mov	rdx,[rbp+18h]
	mov	rcx,[rbp+10h]
	mov	r8,r12
	call	4708F0h
	test	al,al
	jnz	42ED53h

l000000000042ED45:
	mov	rax,[rsp+0F8h]
	mov	dword ptr [rax],4h

l000000000042ED53:
	test	r13d,r13d
	setz	al
	cmp	[rsp+35h],al
	mov	rax,[rsp+70h]
	jnc	42ED6Fh

l000000000042ED64:
	cmp	qword ptr [rax-18h],0h
	jz	42ECADh

l000000000042ED6F:
	test	bl,bl
	jnz	42ECADh

l000000000042ED77:
	test	dil,dil
	jz	42F0E5h

l000000000042ED80:
	mov	rdi,[rsp+100h]
	mov	ecx,0FFFFFFFFh
	mov	[rdi],cx
	mov	rdi,[rsp+0F8h]
	mov	dword ptr [rdi],4h
	jmp	42ECC8h

l000000000042EDA3:
	xor	esi,esi
	xor	edi,edi
	test	r15b,r15b
	jz	42EEF0h

l000000000042EDB0:
	xor	ebx,ebx
	jmp	42EC8Dh
000000000042EDB7                      66 0F 1F 84 00 00 00 00 00        f........

l000000000042EDC0:
	lea	eax,[rbx-30h]
	cmp	al,9h
	jbe	42EC0Ch

l000000000042EDCB:
	lea	eax,[rbx-61h]
	cmp	al,5h
	jbe	42EE72h

l000000000042EDD6:
	lea	eax,[rbx-41h]
	cmp	al,5h
	ja	42EDB0h

l000000000042EDDD:
	sub	ebx,37h
	cmp	[rsp+32h],si
	jc	42EC1Ah

l000000000042EDEB:
	imul	si,[rsp+24h]
	mov	eax,r14d
	mov	rcx,[rsp+50h]
	sub	eax,ebx
	movzx	edx,si
	cmp	edx,eax
	setg	al
	add	esi,ebx
	add	r13d,1h
	or	edi,eax
	test	rcx,rcx
	jnz	42EC2Dh

l000000000042EE14:
	mov	rcx,[rsp+40h]
	test	rcx,rcx
	jz	42EC85h

l000000000042EE22:
	xor	eax,eax
	cmp	dword ptr [rsp+48h],0FFh
	mov	ebx,1h
	jnz	42EC7Dh

l000000000042EE34:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	42F102h

l000000000042EE42:
	movzx	eax,byte ptr [rax]

l000000000042EE45:
	mov	[rsp+48h],eax
	xor	eax,eax
	cmp	al,bl
	jz	42EC85h

l000000000042EE53:
	mov	rcx,[rsp+50h]
	test	rcx,rcx
	jz	42F3CEh

l000000000042EE61:
	mov	eax,[rsp+58h]
	cmp	eax,0FFh
	jz	42EE80h

l000000000042EE6A:
	movsx	ebx,al
	jmp	42EBEFh

l000000000042EE72:
	sub	ebx,57h
	jmp	42EC0Fh
000000000042EE7A                               66 0F 1F 44 00 00           f..D..

l000000000042EE80:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	42F350h

l000000000042EE8E:
	movzx	eax,byte ptr [rax]

l000000000042EE91:
	mov	[rsp+58h],eax
	jmp	42EE6Ah
000000000042EE97                      66 0F 1F 84 00 00 00 00 00        f........

l000000000042EEA0:
	mov	rax,[rcx]
	call	qword ptr [rax+50h]
	mov	rcx,[rsp+50h]
	mov	dword ptr [rsp+58h],0FFFFFFFFh
	test	rcx,rcx
	jz	42EE14h

l000000000042EEBC:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jc	42EC59h

l000000000042EECA:
	nop	word ptr [rax+rax+0h]

l000000000042EED0:
	mov	rax,[rcx]
	call	qword ptr [rax+48h]
	cmp	eax,0FFh
	jnz	42EC5Ch

l000000000042EEDF:
	mov	qword ptr [rsp+50h],+0h
	jmp	42EE14h
000000000042EEED                                        0F 1F 00              ...

l000000000042EEF0:
	lea	rax,[rsp+70h]
	mov	[rsp+28h],rax

l000000000042EEFA:
	cmp	byte ptr [rbp+20h],0h
	jz	42EF09h

l000000000042EF00:
	cmp	bl,[rbp+49h]
	jz	42F050h

l000000000042EF09:
	cmp	bl,[rbp+48h]
	jz	42EDB0h

l000000000042EF12:
	movsx	edx,bl
	mov	r8,r12
	mov	rcx,r14
	call	41BD98h
	test	rax,rax
	jz	42EDB0h

l000000000042EF29:
	sub	rax,r14
	lea	edx,[rax-6h]
	cmp	eax,10h
	cmovge	eax,edx

l000000000042EF35:
	cmp	[rsp+32h],si
	jc	42F000h

l000000000042EF40:
	imul	si,[rsp+24h]
	mov	edx,0FFFFh
	sub	edx,eax
	movzx	ecx,si
	cmp	ecx,edx
	setg	dl
	add	esi,eax
	add	r13d,1h
	or	edi,edx

l000000000042EF5D:
	mov	rcx,[rsp+50h]
	test	rcx,rcx
	jz	42F013h

l000000000042EF6B:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	42F070h

l000000000042EF79:
	add	rax,1h
	mov	dword ptr [rsp+58h],0FFFFFFFFh
	mov	[rcx+10h],rax
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	42F0A0h

l000000000042EF97:
	movzx	eax,byte ptr [rax]

l000000000042EF9A:
	mov	rcx,[rsp+40h]
	mov	[rsp+58h],eax
	test	rcx,rcx
	jz	42EFBBh

l000000000042EFA8:
	xor	ebx,ebx
	xor	eax,eax
	cmp	dword ptr [rsp+48h],0FFh
	jz	42F02Fh

l000000000042EFB3:
	cmp	al,bl
	jz	42EC85h

l000000000042EFBB:
	mov	rcx,[rsp+50h]
	test	rcx,rcx
	jz	42F3E2h

l000000000042EFC9:
	mov	eax,[rsp+58h]
	cmp	eax,0FFh
	jz	42EFE0h

l000000000042EFD2:
	mov	ebx,eax
	jmp	42EEFAh
000000000042EFD9                            0F 1F 80 00 00 00 00          .......

l000000000042EFE0:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	42F370h

l000000000042EFEE:
	movzx	eax,byte ptr [rax]

l000000000042EFF1:
	mov	[rsp+58h],eax
	mov	ebx,eax
	jmp	42EEFAh
000000000042EFFC                                     0F 1F 40 00             ..@.

l000000000042F000:
	mov	rcx,[rsp+50h]
	mov	edi,1h
	test	rcx,rcx
	jnz	42EF6Bh

l000000000042F013:
	mov	rcx,[rsp+40h]
	test	rcx,rcx
	jz	42EC85h

l000000000042F021:
	xor	eax,eax
	cmp	dword ptr [rsp+48h],0FFh
	movzx	ebx,byte ptr [rsp+36h]
	jnz	42EFB3h

l000000000042F02F:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	42F124h

l000000000042F03D:
	movzx	eax,byte ptr [rax]

l000000000042F040:
	mov	[rsp+48h],eax
	xor	eax,eax
	jmp	42EFB3h
000000000042F04B                                  0F 1F 44 00 00            ..D..

l000000000042F050:
	test	r13d,r13d
	jz	42F3D8h

l000000000042F059:
	mov	rcx,[rsp+28h]
	movsx	edx,r13b
	call	451E10h
	xor	r13d,r13d
	jmp	42EF5Dh
000000000042F06F                                              90                .

l000000000042F070:
	mov	rax,[rcx]
	call	qword ptr [rax+50h]
	mov	rcx,[rsp+50h]
	mov	dword ptr [rsp+58h],0FFFFFFFFh
	test	rcx,rcx
	jz	42F013h

l000000000042F088:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jc	42EF97h

l000000000042F096:
	nop	word ptr cs:[rax+rax+0h]

l000000000042F0A0:
	mov	rax,[rcx]
	call	qword ptr [rax+48h]
	cmp	eax,0FFh
	jnz	42EF9Ah

l000000000042F0AF:
	mov	qword ptr [rsp+50h],+0h
	jmp	42F013h
000000000042F0BD                                        0F 1F 00              ...

l000000000042F0C0:
	cmp	[rbp+6Fh],al
	jz	42EB29h

l000000000042F0C9:
	movzx	eax,byte ptr [rbp+20h]
	jmp	42F173h

l000000000042F0D2:
	cmp	[rbp+49h],al
	jnz	42EB35h

l000000000042F0DB:
	mov	eax,1h
	jmp	42F173h

l000000000042F0E5:
	movzx	edx,byte ptr [rsp+37h]
	mov	rdi,[rsp+100h]
	mov	ecx,edx
	neg	ecx
	xor	esi,ecx
	add	edx,esi
	mov	[rdi],dx
	jmp	42ECC8h

l000000000042F102:
	mov	rax,[rcx]
	call	qword ptr [rax+48h]
	cmp	eax,0FFh
	jnz	42EE45h

l000000000042F111:
	mov	qword ptr [rsp+40h],+0h
	mov	eax,1h
	jmp	42EC7Dh

l000000000042F124:
	mov	rax,[rcx]
	call	qword ptr [rax+48h]
	cmp	eax,0FFh
	jnz	42F040h

l000000000042F133:
	mov	qword ptr [rsp+40h],+0h
	movzx	eax,byte ptr [rsp+36h]
	jmp	42EFB3h
000000000042F146                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l000000000042F150:
	lea	rcx,[rsp+70h]
	mov	edx,20h
	call	451BE0h
	jmp	42EBADh

l000000000042F164:
	mov	rcx,rdi
	call	42B050h
	movsx	ebx,al
	movzx	eax,byte ptr [rbp+20h]

l000000000042F173:
	xor	r13d,r13d
	xor	r12d,r12d

l000000000042F179:
	test	al,al
	jz	42F186h

l000000000042F17D:
	cmp	[rbp+49h],bl
	jz	42F2F3h

l000000000042F186:
	cmp	[rbp+48h],bl
	jz	42F2F3h

l000000000042F18F:
	cmp	[rbp+72h],bl
	jz	42F240h

l000000000042F198:
	test	r12b,r12b
	jz	42F2F3h

l000000000042F1A1:
	cmp	[rbp+70h],bl
	jz	42F1AFh

l000000000042F1A6:
	cmp	[rbp+71h],bl
	jnz	42F2D2h

l000000000042F1AF:
	cmp	dword ptr [rsp+24h],10h
	jz	42F1BEh

l000000000042F1B6:
	test	esi,esi
	jnz	42F3C4h

l000000000042F1BE:
	xor	r13d,r13d
	xor	r12d,r12d
	mov	dword ptr [rsp+24h],10h

l000000000042F1CC:
	mov	rcx,[rsp+50h]
	test	rcx,rcx
	jz	42F280h

l000000000042F1DA:
	mov	rdx,[rcx+10h]
	cmp	rdx,[rcx+18h]
	jnc	42F300h

l000000000042F1E8:
	add	rdx,1h
	mov	dword ptr [rsp+58h],0FFFFFFFFh
	mov	[rcx+10h],rdx
	mov	rdx,[rcx+10h]
	cmp	rdx,[rcx+18h]
	jnc	42F330h

l000000000042F206:
	movzx	eax,byte ptr [rdx]

l000000000042F209:
	mov	rcx,[rsp+40h]
	mov	[rsp+58h],eax
	test	rcx,rcx
	jz	42F2B9h

l000000000042F21B:
	xor	r14d,r14d
	xor	eax,eax
	cmp	dword ptr [rsp+48h],0FFh
	jz	42F299h

l000000000042F227:
	cmp	r14b,al
	jnz	42F2B9h

l000000000042F230:
	mov	[rsp+35h],r12b
	mov	r15d,1h
	jmp	42EB76h

l000000000042F240:
	cmp	dword ptr [rsp+24h],0Ah
	setz	al
	cmp	al,r12b
	jc	42F1A1h

l000000000042F251:
	add	r13d,1h
	cmp	dword ptr [rsp+24h],8h
	jz	42F3ECh

l000000000042F260:
	test	esi,esi
	jz	42F3ECh

l000000000042F268:
	mov	rcx,[rsp+50h]
	mov	r12d,1h
	test	rcx,rcx
	jnz	42F1DAh

l000000000042F27C:
	nop	dword ptr [rax+0h]

l000000000042F280:
	mov	rcx,[rsp+40h]
	test	rcx,rcx
	jz	42F230h

l000000000042F28A:
	xor	eax,eax
	cmp	dword ptr [rsp+48h],0FFh
	mov	r14d,1h
	jnz	42F227h

l000000000042F299:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	42F39Bh

l000000000042F2A7:
	movzx	eax,byte ptr [rax]

l000000000042F2AA:
	mov	[rsp+48h],eax
	xor	eax,eax
	cmp	r14b,al
	jz	42F230h

l000000000042F2B9:
	mov	rcx,rdi
	call	42B050h
	test	r12b,r12b
	movsx	ebx,al
	jz	42F2F3h

l000000000042F2C9:
	movzx	eax,byte ptr [rbp+20h]
	jmp	42F179h

l000000000042F2D2:
	mov	byte ptr [rsp+35h],1h
	jmp	42EB76h
000000000042F2DC                                     0F 1F 40 00             ..@.

l000000000042F2E0:
	mov	rdx,[rsp+38h]
	lea	rcx,[rax-18h]
	call	450A50h
	jmp	42ED03h

l000000000042F2F3:
	mov	[rsp+35h],r12b
	jmp	42EB76h
000000000042F2FD                                        0F 1F 00              ...

l000000000042F300:
	mov	rdx,[rcx]
	call	qword ptr [rdx+50h]
	mov	rcx,[rsp+50h]
	mov	dword ptr [rsp+58h],0FFFFFFFFh
	test	rcx,rcx
	jz	42F280h

l000000000042F31C:
	mov	rdx,[rcx+10h]
	cmp	rdx,[rcx+18h]
	jc	42F206h

l000000000042F32A:
	nop	word ptr [rax+rax+0h]

l000000000042F330:
	mov	rdx,[rcx]
	call	qword ptr [rdx+48h]
	cmp	eax,0FFh
	jnz	42F209h

l000000000042F33F:
	mov	qword ptr [rsp+50h],+0h
	jmp	42F280h
000000000042F34D                                        0F 1F 00              ...

l000000000042F350:
	mov	rax,[rcx]
	call	qword ptr [rax+48h]
	cmp	eax,0FFh
	jnz	42EE91h

l000000000042F35F:
	mov	qword ptr [rsp+50h],+0h
	movsx	ebx,al
	jmp	42EBEFh

l000000000042F370:
	mov	rax,[rcx]
	call	qword ptr [rax+48h]
	cmp	eax,0FFh
	jnz	42EFF1h

l000000000042F37F:
	mov	qword ptr [rsp+50h],+0h
	mov	ebx,eax
	jmp	42EEFAh

l000000000042F38F:
	xor	ebx,ebx
	mov	byte ptr [rsp+37h],0h
	jmp	42EB68h

l000000000042F39B:
	mov	rax,[rcx]
	call	qword ptr [rax+48h]
	cmp	eax,0FFh
	jnz	42F2AAh

l000000000042F3AA:
	mov	qword ptr [rsp+40h],+0h
	mov	eax,1h
	jmp	42F227h

l000000000042F3BD:
	mov	eax,edx
	jmp	42F173h

l000000000042F3C4:
	mov	byte ptr [rsp+35h],1h
	jmp	42EB83h

l000000000042F3CE:
	mov	ebx,0FFFFFFFFh
	jmp	42EBEFh

l000000000042F3D8:
	mov	ebx,1h
	jmp	42EC8Dh

l000000000042F3E2:
	mov	ebx,0FFFFFFFFh
	jmp	42EEFAh

l000000000042F3EC:
	xor	r13d,r13d
	mov	r12d,1h
	mov	dword ptr [rsp+24h],8h
	jmp	42F1CCh
000000000042F402       48 89 C3 48 8B 44 24 70 48 8B 54 24 38 48   H..H.D$pH.T$8H
000000000042F410 8D 48 E8 E8 48 16 02 00 48 89 D9 E8 90 21 FE FF .H..H...H....!..
000000000042F420 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 ................

;; fn000000000042F430: 000000000042F430
;;   Called from:
;;     0000000000431833 (in fn00000000004317D0)
;;     00000000004326C4 (in fn0000000000432670)
fn000000000042F430 proc
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
	call	42A360h
	mov	edi,[rbx+18h]
	mov	rbp,rax
	and	edi,4Ah
	cmp	edi,40h
	jz	42F4A7h

l000000000042F499:
	cmp	edi,8h
	mov	eax,0Ah
	mov	sil,10h
	cmovnz	esi,eax

l000000000042F4A7:
	lea	r13,[rsp+50h]
	lea	r12,[rsp+60h]
	mov	rdx,r13
	mov	rcx,r12
	call	42AF60h
	test	al,al
	mov	r14d,eax
	jnz	42FD8Fh

l000000000042F4C7:
	mov	rcx,r12
	call	42B050h
	cmp	[rbp+6Eh],al
	movsx	ebx,al
	setz	byte ptr [rsp+47h]
	jnz	42FAC0h

l000000000042F4E0:
	movzx	edx,byte ptr [rbp+20h]
	test	dl,dl
	jnz	42FAD2h

l000000000042F4EC:
	cmp	[rbp+48h],al
	jz	42FDC6h

l000000000042F4F5:
	mov	rcx,[rsp+60h]
	test	rcx,rcx
	jz	42F50Ch

l000000000042F4FF:
	call	462490h
	mov	dword ptr [rsp+68h],0FFFFFFFFh

l000000000042F50C:
	mov	rdx,r13
	mov	rcx,r12
	call	42AF60h
	test	al,al
	jz	42FB70h

l000000000042F51F:
	mov	r14d,1h
	xor	r13d,r13d
	mov	byte ptr [rsp+45h],0h

l000000000042F52D:
	cmp	esi,10h
	mov	r12d,16h
	jz	42F53Bh

l000000000042F538:
	movsxd	r12,esi

l000000000042F53B:
	lea	rax,[rsp+7Fh]
	xor	edx,edx
	xor	ecx,ecx
	mov	r8,rax
	mov	[rsp+48h],rax
	call	4505D0h
	cmp	byte ptr [rbp+20h],0h
	mov	[rsp+80h],rax
	jnz	42FB52h

l000000000042F563:
	cmp	byte ptr [rsp+47h],0h
	mov	rdx,7FFFFFFFFFFFFFFFh
	mov	rax,8000000000000000h
	movsxd	rdi,esi
	lea	r15,[rbp+72h]
	mov	[rsp+30h],rdi
	cmovz	rax,rdx

l000000000042F58C:
	xor	edx,edx
	mov	[rsp+28h],rax
	div	rdi
	mov	[rsp+20h],rax
	movzx	eax,byte ptr [rbp+88h]
	test	al,al
	mov	[rsp+46h],al
	jnz	42F795h

l000000000042F5AE:
	xor	esi,esi
	xor	edi,edi
	test	r14b,r14b
	jnz	42F7A2h

l000000000042F5BB:
	lea	r15d,[r12+30h]

l000000000042F5C0:
	cmp	r12,0Ah
	ja	42F7B0h

l000000000042F5CA:
	cmp	bl,2Fh
	jle	42F7A2h

l000000000042F5D3:
	cmp	r15b,bl
	jle	42F7A2h

l000000000042F5DC:
	sub	ebx,30h

l000000000042F5DF:
	cmp	[rsp+20h],rsi
	jnc	42F7DBh

l000000000042F5EA:
	mov	rcx,[rsp+60h]
	mov	edi,1h
	test	rcx,rcx
	jz	42F809h

l000000000042F5FD:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	42F8A0h

l000000000042F60B:
	add	rax,1h
	mov	dword ptr [rsp+68h],0FFFFFFFFh
	mov	[rcx+10h],rax
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	42F8D0h

l000000000042F629:
	movzx	eax,byte ptr [rax]

l000000000042F62C:
	mov	rcx,[rsp+50h]
	mov	[rsp+68h],eax
	test	rcx,rcx
	jz	42F848h

l000000000042F63E:
	xor	ebx,ebx
	xor	eax,eax
	cmp	dword ptr [rsp+58h],0FFh
	jz	42F829h

l000000000042F64D:
	cmp	al,bl
	jnz	42F848h

l000000000042F655:
	xor	ebx,ebx
	mov	r14d,1h

l000000000042F65D:
	mov	rax,[rsp+80h]
	cmp	qword ptr [rax-18h],0h
	jnz	42F6F4h

l000000000042F670:
	test	r13d,r13d
	setz	dl
	cmp	[rsp+45h],dl
	jnc	42F749h

l000000000042F680:
	mov	rdi,[rsp+110h]
	mov	qword ptr [rdi],+0h
	mov	rdi,[rsp+108h]
	mov	dword ptr [rdi],4h

l000000000042F69D:
	test	r14b,r14b
	jz	42F6ADh

l000000000042F6A2:
	mov	rdi,[rsp+108h]
	or	dword ptr [rdi],2h

l000000000042F6AD:
	mov	rdi,[rsp+0E0h]
	mov	rcx,[rsp+60h]
	mov	edx,0FFFFFFFFh
	mov	rbx,[rsp+68h]
	mov	[rdi],rcx
	mov	[rdi+8h],rbx
	lock
	xadd	[rax-8h],edx
	test	edx,edx
	jle	42FCE0h

l000000000042F6D8:
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

l000000000042F6F4:
	lea	r12,[rsp+80h]
	movsx	edx,r13b
	mov	rcx,r12
	call	451E10h
	mov	rdx,[rbp+18h]
	mov	rcx,[rbp+10h]
	mov	r8,r12
	call	4708F0h
	test	al,al
	jnz	42F72Ah

l000000000042F71C:
	mov	rax,[rsp+108h]
	mov	dword ptr [rax],4h

l000000000042F72A:
	test	r13d,r13d
	setz	al
	cmp	al,[rsp+45h]
	mov	rax,[rsp+80h]
	jbe	42F749h

l000000000042F73E:
	cmp	qword ptr [rax-18h],0h
	jz	42F680h

l000000000042F749:
	test	bl,bl
	jnz	42F680h

l000000000042F751:
	test	dil,dil
	jz	42FAE5h

l000000000042F75A:
	cmp	byte ptr [rsp+47h],0h
	mov	rdi,[rsp+110h]
	mov	rcx,8000000000000000h
	mov	rdx,7FFFFFFFFFFFFFFFh
	cmovnz	rdx,rcx

l000000000042F77F:
	mov	[rdi],rdx
	mov	rdi,[rsp+108h]
	mov	dword ptr [rdi],4h
	jmp	42F69Dh

l000000000042F795:
	xor	esi,esi
	xor	edi,edi
	test	r14b,r14b
	jz	42F8F0h

l000000000042F7A2:
	xor	ebx,ebx
	jmp	42F65Dh
000000000042F7A9                            0F 1F 80 00 00 00 00          .......

l000000000042F7B0:
	lea	eax,[rbx-30h]
	cmp	al,9h
	jbe	42F5DCh

l000000000042F7BB:
	lea	eax,[rbx-61h]
	cmp	al,5h
	jbe	42F870h

l000000000042F7C6:
	lea	eax,[rbx-41h]
	cmp	al,5h
	ja	42F7A2h

l000000000042F7CD:
	sub	ebx,37h
	cmp	[rsp+20h],rsi
	jc	42F5EAh

l000000000042F7DB:
	imul	rsi,[rsp+30h]
	mov	rax,[rsp+28h]
	movsxd	rbx,ebx
	mov	rcx,[rsp+60h]
	sub	rax,rbx
	cmp	rax,rsi
	setc	al
	add	rsi,rbx
	add	r13d,1h
	or	edi,eax
	test	rcx,rcx
	jnz	42F5FDh

l000000000042F809:
	mov	rcx,[rsp+50h]
	test	rcx,rcx
	jz	42F655h

l000000000042F817:
	xor	eax,eax
	cmp	dword ptr [rsp+58h],0FFh
	mov	ebx,1h
	jnz	42F64Dh

l000000000042F829:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	42FB04h

l000000000042F837:
	movzx	eax,byte ptr [rax]

l000000000042F83A:
	mov	[rsp+58h],eax
	xor	eax,eax
	cmp	al,bl
	jz	42F655h

l000000000042F848:
	mov	rcx,[rsp+60h]
	test	rcx,rcx
	jz	42FDD7h

l000000000042F856:
	mov	eax,[rsp+68h]
	cmp	eax,0FFh
	jz	42F880h

l000000000042F85F:
	movsx	ebx,al
	jmp	42F5C0h
000000000042F867                      66 0F 1F 84 00 00 00 00 00        f........

l000000000042F870:
	sub	ebx,57h
	jmp	42F5DFh
000000000042F878                         0F 1F 84 00 00 00 00 00         ........

l000000000042F880:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	42FD50h

l000000000042F88E:
	movzx	eax,byte ptr [rax]

l000000000042F891:
	mov	[rsp+68h],eax
	jmp	42F85Fh
000000000042F897                      66 0F 1F 84 00 00 00 00 00        f........

l000000000042F8A0:
	mov	rax,[rcx]
	call	qword ptr [rax+50h]
	mov	rcx,[rsp+60h]
	mov	dword ptr [rsp+68h],0FFFFFFFFh
	test	rcx,rcx
	jz	42F809h

l000000000042F8BC:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jc	42F629h

l000000000042F8CA:
	nop	word ptr [rax+rax+0h]

l000000000042F8D0:
	mov	rax,[rcx]
	call	qword ptr [rax+48h]
	cmp	eax,0FFh
	jnz	42F62Ch

l000000000042F8DF:
	mov	qword ptr [rsp+60h],+0h
	jmp	42F809h
000000000042F8ED                                        0F 1F 00              ...

l000000000042F8F0:
	lea	rax,[rsp+80h]
	mov	[rsp+38h],rax

l000000000042F8FD:
	cmp	byte ptr [rbp+20h],0h
	jz	42F90Ch

l000000000042F903:
	cmp	bl,[rbp+49h]
	jz	42FA50h

l000000000042F90C:
	cmp	bl,[rbp+48h]
	jz	42F7A2h

l000000000042F915:
	movsx	edx,bl
	mov	r8,r12
	mov	rcx,r15
	call	41BD98h
	test	rax,rax
	jz	42F7A2h

l000000000042F92C:
	sub	rax,r15
	lea	edx,[rax-6h]
	cmp	eax,10h
	cmovge	eax,edx

l000000000042F938:
	cmp	[rsp+20h],rsi
	jc	42FA00h

l000000000042F943:
	imul	rsi,[rsp+30h]
	mov	rdx,[rsp+28h]
	cdqe
	sub	rdx,rax
	cmp	rdx,rsi
	setc	dl
	add	rsi,rax
	add	r13d,1h
	or	edi,edx

l000000000042F962:
	mov	rcx,[rsp+60h]
	test	rcx,rcx
	jz	42FA13h

l000000000042F970:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	42FA70h

l000000000042F97E:
	add	rax,1h
	mov	dword ptr [rsp+68h],0FFFFFFFFh
	mov	[rcx+10h],rax
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	42FAA0h

l000000000042F99C:
	movzx	eax,byte ptr [rax]

l000000000042F99F:
	mov	rcx,[rsp+50h]
	mov	[rsp+68h],eax
	test	rcx,rcx
	jz	42F9C0h

l000000000042F9AD:
	xor	ebx,ebx
	xor	eax,eax
	cmp	dword ptr [rsp+58h],0FFh
	jz	42FA2Fh

l000000000042F9B8:
	cmp	al,bl
	jz	42F655h

l000000000042F9C0:
	mov	rcx,[rsp+60h]
	test	rcx,rcx
	jz	42FDEBh

l000000000042F9CE:
	mov	eax,[rsp+68h]
	cmp	eax,0FFh
	jz	42F9E0h

l000000000042F9D7:
	mov	ebx,eax
	jmp	42F8FDh
000000000042F9DE                                           66 90               f.

l000000000042F9E0:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	42FD70h

l000000000042F9EE:
	movzx	eax,byte ptr [rax]

l000000000042F9F1:
	mov	[rsp+68h],eax
	mov	ebx,eax
	jmp	42F8FDh
000000000042F9FC                                     0F 1F 40 00             ..@.

l000000000042FA00:
	mov	rcx,[rsp+60h]
	mov	edi,1h
	test	rcx,rcx
	jnz	42F970h

l000000000042FA13:
	mov	rcx,[rsp+50h]
	test	rcx,rcx
	jz	42F655h

l000000000042FA21:
	xor	eax,eax
	cmp	dword ptr [rsp+58h],0FFh
	movzx	ebx,byte ptr [rsp+46h]
	jnz	42F9B8h

l000000000042FA2F:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	42FB30h

l000000000042FA3D:
	movzx	eax,byte ptr [rax]

l000000000042FA40:
	mov	[rsp+58h],eax
	xor	eax,eax
	jmp	42F9B8h
000000000042FA4B                                  0F 1F 44 00 00            ..D..

l000000000042FA50:
	test	r13d,r13d
	jz	42FDE1h

l000000000042FA59:
	mov	rcx,[rsp+38h]
	movsx	edx,r13b
	call	451E10h
	xor	r13d,r13d
	jmp	42F962h
000000000042FA6F                                              90                .

l000000000042FA70:
	mov	rax,[rcx]
	call	qword ptr [rax+50h]
	mov	rcx,[rsp+60h]
	mov	dword ptr [rsp+68h],0FFFFFFFFh
	test	rcx,rcx
	jz	42FA13h

l000000000042FA88:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jc	42F99Ch

l000000000042FA96:
	nop	word ptr cs:[rax+rax+0h]

l000000000042FAA0:
	mov	rax,[rcx]
	call	qword ptr [rax+48h]
	cmp	eax,0FFh
	jnz	42F99Fh

l000000000042FAAF:
	mov	qword ptr [rsp+60h],+0h
	jmp	42FA13h
000000000042FABD                                        0F 1F 00              ...

l000000000042FAC0:
	cmp	[rbp+6Fh],al
	jz	42F4E0h

l000000000042FAC9:
	movzx	eax,byte ptr [rbp+20h]
	jmp	42FB7Fh

l000000000042FAD2:
	cmp	[rbp+49h],al
	jnz	42F4ECh

l000000000042FADB:
	mov	eax,1h
	jmp	42FB7Fh

l000000000042FAE5:
	mov	rdx,rsi
	mov	rdi,[rsp+110h]
	neg	rdx
	cmp	byte ptr [rsp+47h],0h
	cmovnz	rsi,rdx

l000000000042FAFC:
	mov	[rdi],rsi
	jmp	42F69Dh

l000000000042FB04:
	mov	rax,[rcx]
	call	qword ptr [rax+48h]
	cmp	eax,0FFh
	jnz	42F83Ah

l000000000042FB13:
	mov	qword ptr [rsp+50h],+0h
	mov	eax,1h
	jmp	42F64Dh
000000000042FB26                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l000000000042FB30:
	mov	rax,[rcx]
	call	qword ptr [rax+48h]
	cmp	eax,0FFh
	jnz	42FA40h

l000000000042FB3F:
	mov	qword ptr [rsp+50h],+0h
	movzx	eax,byte ptr [rsp+46h]
	jmp	42F9B8h

l000000000042FB52:
	lea	rcx,[rsp+80h]
	mov	edx,20h
	call	451BE0h
	jmp	42F563h
000000000042FB69                            0F 1F 80 00 00 00 00          .......

l000000000042FB70:
	mov	rcx,r12
	call	42B050h
	movsx	ebx,al
	movzx	eax,byte ptr [rbp+20h]

l000000000042FB7F:
	xor	r13d,r13d
	xor	r15d,r15d

l000000000042FB85:
	test	al,al
	jz	42FB92h

l000000000042FB89:
	cmp	[rbp+49h],bl
	jz	42FCF3h

l000000000042FB92:
	cmp	[rbp+48h],bl
	jz	42FCF3h

l000000000042FB9B:
	cmp	[rbp+72h],bl
	jz	42FC45h

l000000000042FBA4:
	test	r15b,r15b
	jz	42FCF3h

l000000000042FBAD:
	cmp	[rbp+70h],bl
	jz	42FBBBh

l000000000042FBB2:
	cmp	[rbp+71h],bl
	jnz	42FCD0h

l000000000042FBBB:
	cmp	esi,10h
	jz	42FBC8h

l000000000042FBC0:
	test	edi,edi
	jnz	42FDCDh

l000000000042FBC8:
	xor	r13d,r13d
	xor	r15d,r15d
	mov	esi,10h

l000000000042FBD3:
	mov	rcx,[rsp+60h]
	test	rcx,rcx
	jz	42FC80h

l000000000042FBE1:
	mov	rdx,[rcx+10h]
	cmp	rdx,[rcx+18h]
	jnc	42FD00h

l000000000042FBEF:
	add	rdx,1h
	mov	dword ptr [rsp+68h],0FFFFFFFFh
	mov	[rcx+10h],rdx
	mov	rdx,[rcx+10h]
	cmp	rdx,[rcx+18h]
	jnc	42FD30h

l000000000042FC0D:
	movzx	eax,byte ptr [rdx]

l000000000042FC10:
	mov	rcx,[rsp+50h]
	mov	[rsp+68h],eax
	test	rcx,rcx
	jz	42FCB7h

l000000000042FC22:
	xor	edx,edx
	xor	eax,eax
	cmp	dword ptr [rsp+58h],0FFh
	jz	42FC98h

l000000000042FC2D:
	cmp	al,dl
	jnz	42FCB7h

l000000000042FC35:
	mov	[rsp+45h],r15b
	mov	r14d,1h
	jmp	42F52Dh

l000000000042FC45:
	cmp	esi,0Ah
	setz	al
	cmp	al,r15b
	jc	42FBADh

l000000000042FC54:
	add	r13d,1h
	cmp	esi,8h
	jz	42FDF5h

l000000000042FC61:
	test	edi,edi
	jz	42FDF5h

l000000000042FC69:
	mov	rcx,[rsp+60h]
	mov	r15d,1h
	test	rcx,rcx
	jnz	42FBE1h

l000000000042FC7D:
	nop	dword ptr [rax]

l000000000042FC80:
	mov	rcx,[rsp+50h]
	test	rcx,rcx
	jz	42FC35h

l000000000042FC8A:
	xor	eax,eax
	cmp	dword ptr [rsp+58h],0FFh
	mov	edx,1h
	jnz	42FC2Dh

l000000000042FC98:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	42FD9Bh

l000000000042FCA6:
	movzx	eax,byte ptr [rax]

l000000000042FCA9:
	mov	[rsp+58h],eax
	xor	eax,eax
	cmp	al,dl
	jz	42FC35h

l000000000042FCB7:
	mov	rcx,r12
	call	42B050h
	test	r15b,r15b
	movsx	ebx,al
	jz	42FCF3h

l000000000042FCC7:
	movzx	eax,byte ptr [rbp+20h]
	jmp	42FB85h

l000000000042FCD0:
	mov	byte ptr [rsp+45h],1h
	jmp	42F52Dh
000000000042FCDA                               66 0F 1F 44 00 00           f..D..

l000000000042FCE0:
	mov	rdx,[rsp+48h]
	lea	rcx,[rax-18h]
	call	450A50h
	jmp	42F6D8h

l000000000042FCF3:
	mov	[rsp+45h],r15b
	jmp	42F52Dh
000000000042FCFD                                        0F 1F 00              ...

l000000000042FD00:
	mov	rdx,[rcx]
	call	qword ptr [rdx+50h]
	mov	rcx,[rsp+60h]
	mov	dword ptr [rsp+68h],0FFFFFFFFh
	test	rcx,rcx
	jz	42FC80h

l000000000042FD1C:
	mov	rdx,[rcx+10h]
	cmp	rdx,[rcx+18h]
	jc	42FC0Dh

l000000000042FD2A:
	nop	word ptr [rax+rax+0h]

l000000000042FD30:
	mov	rdx,[rcx]
	call	qword ptr [rdx+48h]
	cmp	eax,0FFh
	jnz	42FC10h

l000000000042FD3F:
	mov	qword ptr [rsp+60h],+0h
	jmp	42FC80h
000000000042FD4D                                        0F 1F 00              ...

l000000000042FD50:
	mov	rax,[rcx]
	call	qword ptr [rax+48h]
	cmp	eax,0FFh
	jnz	42F891h

l000000000042FD5F:
	mov	qword ptr [rsp+60h],+0h
	movsx	ebx,al
	jmp	42F5C0h

l000000000042FD70:
	mov	rax,[rcx]
	call	qword ptr [rax+48h]
	cmp	eax,0FFh
	jnz	42F9F1h

l000000000042FD7F:
	mov	qword ptr [rsp+60h],+0h
	mov	ebx,eax
	jmp	42F8FDh

l000000000042FD8F:
	xor	ebx,ebx
	mov	byte ptr [rsp+47h],0h
	jmp	42F51Fh

l000000000042FD9B:
	mov	rax,[rcx]
	mov	[rsp+20h],dl
	call	qword ptr [rax+48h]
	cmp	eax,0FFh
	movzx	edx,byte ptr [rsp+20h]
	jnz	42FCA9h

l000000000042FDB3:
	mov	qword ptr [rsp+50h],+0h
	mov	eax,1h
	jmp	42FC2Dh

l000000000042FDC6:
	mov	eax,edx
	jmp	42FB7Fh

l000000000042FDCD:
	mov	byte ptr [rsp+45h],1h
	jmp	42F538h

l000000000042FDD7:
	mov	ebx,0FFFFFFFFh
	jmp	42F5C0h

l000000000042FDE1:
	mov	ebx,1h
	jmp	42F65Dh

l000000000042FDEB:
	mov	ebx,0FFFFFFFFh
	jmp	42F8FDh

l000000000042FDF5:
	xor	r13d,r13d
	mov	r15d,1h
	mov	esi,8h
	jmp	42FBD3h
000000000042FE08                         48 89 C3 48 8B 84 24 80         H..H..$.
000000000042FE10 00 00 00 48 8B 54 24 48 48 8D 48 E8 E8 3F 0C 02 ...H.T$HH.H..?..
000000000042FE20 00 48 89 D9 E8 87 17 FE FF 90 90 90 90 90 90 90 .H..............

;; fn000000000042FE30: 000000000042FE30
;;   Called from:
;;     00000000004318B3 (in fn0000000000431850)
;;     0000000000431941 (in fn00000000004318D0)
;;     0000000000432734 (in fn00000000004326E0)
fn000000000042FE30 proc
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
	call	42A360h
	mov	edi,[rbx+18h]
	mov	rbp,rax
	and	edi,4Ah
	cmp	edi,40h
	jz	42FEA7h

l000000000042FE99:
	cmp	edi,8h
	mov	eax,0Ah
	mov	sil,10h
	cmovnz	esi,eax

l000000000042FEA7:
	lea	r13,[rsp+50h]
	lea	r12,[rsp+60h]
	mov	rdx,r13
	mov	rcx,r12
	call	42AF60h
	test	al,al
	mov	r14d,eax
	jnz	43075Fh

l000000000042FEC7:
	mov	rcx,r12
	call	42B050h
	cmp	[rbp+6Eh],al
	movsx	ebx,al
	setz	byte ptr [rsp+47h]
	jnz	430490h

l000000000042FEE0:
	movzx	edx,byte ptr [rbp+20h]
	test	dl,dl
	jnz	4304A2h

l000000000042FEEC:
	cmp	[rbp+48h],al
	jz	430796h

l000000000042FEF5:
	mov	rcx,[rsp+60h]
	test	rcx,rcx
	jz	42FF0Ch

l000000000042FEFF:
	call	462490h
	mov	dword ptr [rsp+68h],0FFFFFFFFh

l000000000042FF0C:
	mov	rdx,r13
	mov	rcx,r12
	call	42AF60h
	test	al,al
	jz	430540h

l000000000042FF1F:
	mov	r14d,1h
	xor	r13d,r13d
	mov	byte ptr [rsp+45h],0h

l000000000042FF2D:
	cmp	esi,10h
	mov	r12d,16h
	jz	42FF3Bh

l000000000042FF38:
	movsxd	r12,esi

l000000000042FF3B:
	lea	rax,[rsp+7Fh]
	xor	edx,edx
	xor	ecx,ecx
	mov	r8,rax
	mov	[rsp+48h],rax
	call	4505D0h
	cmp	byte ptr [rbp+20h],0h
	mov	[rsp+80h],rax
	jnz	430524h

l000000000042FF63:
	movsxd	rax,esi
	xor	edx,edx
	lea	r15,[rbp+72h]
	mov	rdi,rax
	mov	[rsp+30h],rax
	mov	rax,-1h
	div	rdi
	mov	[rsp+28h],rax
	movzx	eax,byte ptr [rbp+88h]
	test	al,al
	mov	[rsp+46h],al
	jnz	430170h

l000000000042FF96:
	xor	esi,esi
	xor	edi,edi
	test	r14b,r14b
	jnz	430180h

l000000000042FFA3:
	lea	r15d,[r12+30h]

l000000000042FFA8:
	cmp	r12,0Ah
	ja	430190h

l000000000042FFB2:
	cmp	bl,2Fh
	jle	430180h

l000000000042FFBB:
	cmp	r15b,bl
	jle	430180h

l000000000042FFC4:
	sub	ebx,30h

l000000000042FFC7:
	cmp	[rsp+28h],rsi
	jnc	4301BBh

l000000000042FFD2:
	mov	rcx,[rsp+60h]
	mov	edi,1h
	test	rcx,rcx
	jz	4301E7h

l000000000042FFE5:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	430270h

l000000000042FFF3:
	add	rax,1h
	mov	dword ptr [rsp+68h],0FFFFFFFFh
	mov	[rcx+10h],rax
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	4302A0h

l0000000000430011:
	movzx	eax,byte ptr [rax]

l0000000000430014:
	mov	rcx,[rsp+50h]
	mov	[rsp+68h],eax
	test	rcx,rcx
	jz	430226h

l0000000000430026:
	xor	ebx,ebx
	xor	eax,eax
	cmp	dword ptr [rsp+58h],0FFh
	jz	430207h

l0000000000430035:
	cmp	al,bl
	jnz	430226h

l000000000043003D:
	xor	ebx,ebx
	mov	r14d,1h

l0000000000430045:
	mov	rax,[rsp+80h]
	cmp	qword ptr [rax-18h],0h
	jnz	4300E0h

l0000000000430058:
	test	r13d,r13d
	setz	dl
	cmp	[rsp+45h],dl
	jnc	430135h

l0000000000430068:
	mov	rdi,[rsp+110h]
	mov	qword ptr [rdi],+0h
	mov	rdi,[rsp+108h]
	mov	dword ptr [rdi],4h

l0000000000430085:
	test	r14b,r14b
	jz	430095h

l000000000043008A:
	mov	rdi,[rsp+108h]
	or	dword ptr [rdi],2h

l0000000000430095:
	mov	rdi,[rsp+0E0h]
	mov	rcx,[rsp+60h]
	mov	edx,0FFFFFFFFh
	mov	rbx,[rsp+68h]
	mov	[rdi],rcx
	mov	[rdi+8h],rbx
	lock
	xadd	[rax-8h],edx
	test	edx,edx
	jle	4306B0h

l00000000004300C0:
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
00000000004300DC                                     0F 1F 40 00             ..@.

l00000000004300E0:
	lea	r12,[rsp+80h]
	movsx	edx,r13b
	mov	rcx,r12
	call	451E10h
	mov	rdx,[rbp+18h]
	mov	rcx,[rbp+10h]
	mov	r8,r12
	call	4708F0h
	test	al,al
	jnz	430116h

l0000000000430108:
	mov	rax,[rsp+108h]
	mov	dword ptr [rax],4h

l0000000000430116:
	test	r13d,r13d
	setz	al
	cmp	[rsp+45h],al
	mov	rax,[rsp+80h]
	jnc	430135h

l000000000043012A:
	cmp	qword ptr [rax-18h],0h
	jz	430068h

l0000000000430135:
	test	bl,bl
	jnz	430068h

l000000000043013D:
	test	dil,dil
	jz	4304B5h

l0000000000430146:
	mov	rdi,[rsp+110h]
	mov	qword ptr [rdi],-1h
	mov	rdi,[rsp+108h]
	mov	dword ptr [rdi],4h
	jmp	430085h
0000000000430168                         0F 1F 84 00 00 00 00 00         ........

l0000000000430170:
	xor	esi,esi
	xor	edi,edi
	test	r14b,r14b
	jz	4302C0h

l000000000043017D:
	nop	dword ptr [rax]

l0000000000430180:
	xor	ebx,ebx
	jmp	430045h
0000000000430187                      66 0F 1F 84 00 00 00 00 00        f........

l0000000000430190:
	lea	eax,[rbx-30h]
	cmp	al,9h
	jbe	42FFC4h

l000000000043019B:
	lea	eax,[rbx-61h]
	cmp	al,5h
	jbe	430245h

l00000000004301A6:
	lea	eax,[rbx-41h]
	cmp	al,5h
	ja	430180h

l00000000004301AD:
	sub	ebx,37h
	cmp	[rsp+28h],rsi
	jc	42FFD2h

l00000000004301BB:
	imul	rsi,[rsp+30h]
	movsxd	rbx,ebx
	mov	rcx,[rsp+60h]
	mov	rax,rbx
	not	rax
	cmp	rax,rsi
	setc	al
	add	rsi,rbx
	add	r13d,1h
	or	edi,eax
	test	rcx,rcx
	jnz	42FFE5h

l00000000004301E7:
	mov	rcx,[rsp+50h]
	test	rcx,rcx
	jz	43003Dh

l00000000004301F5:
	xor	eax,eax
	cmp	dword ptr [rsp+58h],0FFh
	mov	ebx,1h
	jnz	430035h

l0000000000430207:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	4304E0h

l0000000000430215:
	movzx	eax,byte ptr [rax]

l0000000000430218:
	mov	[rsp+58h],eax
	xor	eax,eax
	cmp	al,bl
	jz	43003Dh

l0000000000430226:
	mov	rcx,[rsp+60h]
	test	rcx,rcx
	jz	4307A7h

l0000000000430234:
	mov	eax,[rsp+68h]
	cmp	eax,0FFh
	jz	430250h

l000000000043023D:
	movsx	ebx,al
	jmp	42FFA8h

l0000000000430245:
	sub	ebx,57h
	jmp	42FFC7h
000000000043024D                                        0F 1F 00              ...

l0000000000430250:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	430720h

l000000000043025E:
	movzx	eax,byte ptr [rax]

l0000000000430261:
	mov	[rsp+68h],eax
	jmp	43023Dh
0000000000430267                      66 0F 1F 84 00 00 00 00 00        f........

l0000000000430270:
	mov	rax,[rcx]
	call	qword ptr [rax+50h]
	mov	rcx,[rsp+60h]
	mov	dword ptr [rsp+68h],0FFFFFFFFh
	test	rcx,rcx
	jz	4301E7h

l000000000043028C:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jc	430011h

l000000000043029A:
	nop	word ptr [rax+rax+0h]

l00000000004302A0:
	mov	rax,[rcx]
	call	qword ptr [rax+48h]
	cmp	eax,0FFh
	jnz	430014h

l00000000004302AF:
	mov	qword ptr [rsp+60h],+0h
	jmp	4301E7h
00000000004302BD                                        0F 1F 00              ...

l00000000004302C0:
	lea	rax,[rsp+80h]
	mov	[rsp+38h],rax

l00000000004302CD:
	cmp	byte ptr [rbp+20h],0h
	jz	4302DCh

l00000000004302D3:
	cmp	bl,[rbp+49h]
	jz	430420h

l00000000004302DC:
	cmp	bl,[rbp+48h]
	jz	430180h

l00000000004302E5:
	movsx	edx,bl
	mov	r8,r12
	mov	rcx,r15
	call	41BD98h
	test	rax,rax
	jz	430180h

l00000000004302FC:
	sub	rax,r15
	lea	edx,[rax-6h]
	cmp	eax,10h
	cmovge	eax,edx

l0000000000430308:
	cmp	[rsp+28h],rsi
	jc	4303D0h

l0000000000430313:
	imul	rsi,[rsp+30h]
	cdqe
	mov	rdx,rax
	not	rdx
	cmp	rdx,rsi
	setc	dl
	add	rsi,rax
	add	r13d,1h
	or	edi,edx

l0000000000430330:
	mov	rcx,[rsp+60h]
	test	rcx,rcx
	jz	4303E3h

l000000000043033E:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	430440h

l000000000043034C:
	add	rax,1h
	mov	dword ptr [rsp+68h],0FFFFFFFFh
	mov	[rcx+10h],rax
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	430470h

l000000000043036A:
	movzx	eax,byte ptr [rax]

l000000000043036D:
	mov	rcx,[rsp+50h]
	mov	[rsp+68h],eax
	test	rcx,rcx
	jz	43038Eh

l000000000043037B:
	xor	ebx,ebx
	xor	eax,eax
	cmp	dword ptr [rsp+58h],0FFh
	jz	4303FFh

l0000000000430386:
	cmp	al,bl
	jz	43003Dh

l000000000043038E:
	mov	rcx,[rsp+60h]
	test	rcx,rcx
	jz	4307BBh

l000000000043039C:
	mov	eax,[rsp+68h]
	cmp	eax,0FFh
	jz	4303B0h

l00000000004303A5:
	mov	ebx,eax
	jmp	4302CDh
00000000004303AC                                     0F 1F 40 00             ..@.

l00000000004303B0:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	430740h

l00000000004303BE:
	movzx	eax,byte ptr [rax]

l00000000004303C1:
	mov	[rsp+68h],eax
	mov	ebx,eax
	jmp	4302CDh
00000000004303CC                                     0F 1F 40 00             ..@.

l00000000004303D0:
	mov	rcx,[rsp+60h]
	mov	edi,1h
	test	rcx,rcx
	jnz	43033Eh

l00000000004303E3:
	mov	rcx,[rsp+50h]
	test	rcx,rcx
	jz	43003Dh

l00000000004303F1:
	xor	eax,eax
	cmp	dword ptr [rsp+58h],0FFh
	movzx	ebx,byte ptr [rsp+46h]
	jnz	430386h

l00000000004303FF:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	430502h

l000000000043040D:
	movzx	eax,byte ptr [rax]

l0000000000430410:
	mov	[rsp+58h],eax
	xor	eax,eax
	jmp	430386h
000000000043041B                                  0F 1F 44 00 00            ..D..

l0000000000430420:
	test	r13d,r13d
	jz	4307B1h

l0000000000430429:
	mov	rcx,[rsp+38h]
	movsx	edx,r13b
	call	451E10h
	xor	r13d,r13d
	jmp	430330h
000000000043043F                                              90                .

l0000000000430440:
	mov	rax,[rcx]
	call	qword ptr [rax+50h]
	mov	rcx,[rsp+60h]
	mov	dword ptr [rsp+68h],0FFFFFFFFh
	test	rcx,rcx
	jz	4303E3h

l0000000000430458:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jc	43036Ah

l0000000000430466:
	nop	word ptr cs:[rax+rax+0h]

l0000000000430470:
	mov	rax,[rcx]
	call	qword ptr [rax+48h]
	cmp	eax,0FFh
	jnz	43036Dh

l000000000043047F:
	mov	qword ptr [rsp+60h],+0h
	jmp	4303E3h
000000000043048D                                        0F 1F 00              ...

l0000000000430490:
	cmp	[rbp+6Fh],al
	jz	42FEE0h

l0000000000430499:
	movzx	eax,byte ptr [rbp+20h]
	jmp	43054Fh

l00000000004304A2:
	cmp	[rbp+49h],al
	jnz	42FEECh

l00000000004304AB:
	mov	eax,1h
	jmp	43054Fh

l00000000004304B5:
	movzx	edx,byte ptr [rsp+47h]
	mov	rdi,[rsp+110h]
	mov	rcx,rdx
	neg	rcx
	xor	rsi,rcx
	add	rdx,rsi
	mov	[rdi],rdx
	jmp	430085h
00000000004304D6                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l00000000004304E0:
	mov	rax,[rcx]
	call	qword ptr [rax+48h]
	cmp	eax,0FFh
	jnz	430218h

l00000000004304EF:
	mov	qword ptr [rsp+50h],+0h
	mov	eax,1h
	jmp	430035h

l0000000000430502:
	mov	rax,[rcx]
	call	qword ptr [rax+48h]
	cmp	eax,0FFh
	jnz	430410h

l0000000000430511:
	mov	qword ptr [rsp+50h],+0h
	movzx	eax,byte ptr [rsp+46h]
	jmp	430386h

l0000000000430524:
	lea	rcx,[rsp+80h]
	mov	edx,20h
	call	451BE0h
	jmp	42FF63h
000000000043053B                                  0F 1F 44 00 00            ..D..

l0000000000430540:
	mov	rcx,r12
	call	42B050h
	movsx	ebx,al
	movzx	eax,byte ptr [rbp+20h]

l000000000043054F:
	xor	r13d,r13d
	xor	r15d,r15d

l0000000000430555:
	test	al,al
	jz	430562h

l0000000000430559:
	cmp	[rbp+49h],bl
	jz	4306C3h

l0000000000430562:
	cmp	[rbp+48h],bl
	jz	4306C3h

l000000000043056B:
	cmp	[rbp+72h],bl
	jz	430615h

l0000000000430574:
	test	r15b,r15b
	jz	4306C3h

l000000000043057D:
	cmp	[rbp+70h],bl
	jz	43058Bh

l0000000000430582:
	cmp	[rbp+71h],bl
	jnz	4306A0h

l000000000043058B:
	cmp	esi,10h
	jz	430598h

l0000000000430590:
	test	edi,edi
	jnz	43079Dh

l0000000000430598:
	xor	r13d,r13d
	xor	r15d,r15d
	mov	esi,10h

l00000000004305A3:
	mov	rcx,[rsp+60h]
	test	rcx,rcx
	jz	430650h

l00000000004305B1:
	mov	rdx,[rcx+10h]
	cmp	rdx,[rcx+18h]
	jnc	4306D0h

l00000000004305BF:
	add	rdx,1h
	mov	dword ptr [rsp+68h],0FFFFFFFFh
	mov	[rcx+10h],rdx
	mov	rdx,[rcx+10h]
	cmp	rdx,[rcx+18h]
	jnc	430700h

l00000000004305DD:
	movzx	eax,byte ptr [rdx]

l00000000004305E0:
	mov	rcx,[rsp+50h]
	mov	[rsp+68h],eax
	test	rcx,rcx
	jz	430687h

l00000000004305F2:
	xor	edx,edx
	xor	eax,eax
	cmp	dword ptr [rsp+58h],0FFh
	jz	430668h

l00000000004305FD:
	cmp	dl,al
	jnz	430687h

l0000000000430605:
	mov	[rsp+45h],r15b
	mov	r14d,1h
	jmp	42FF2Dh

l0000000000430615:
	cmp	esi,0Ah
	setz	al
	cmp	al,r15b
	jc	43057Dh

l0000000000430624:
	add	r13d,1h
	cmp	esi,8h
	jz	4307C5h

l0000000000430631:
	test	edi,edi
	jz	4307C5h

l0000000000430639:
	mov	rcx,[rsp+60h]
	mov	r15d,1h
	test	rcx,rcx
	jnz	4305B1h

l000000000043064D:
	nop	dword ptr [rax]

l0000000000430650:
	mov	rcx,[rsp+50h]
	test	rcx,rcx
	jz	430605h

l000000000043065A:
	xor	eax,eax
	cmp	dword ptr [rsp+58h],0FFh
	mov	edx,1h
	jnz	4305FDh

l0000000000430668:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	43076Bh

l0000000000430676:
	movzx	eax,byte ptr [rax]

l0000000000430679:
	mov	[rsp+58h],eax
	xor	eax,eax
	cmp	dl,al
	jz	430605h

l0000000000430687:
	mov	rcx,r12
	call	42B050h
	test	r15b,r15b
	movsx	ebx,al
	jz	4306C3h

l0000000000430697:
	movzx	eax,byte ptr [rbp+20h]
	jmp	430555h

l00000000004306A0:
	mov	byte ptr [rsp+45h],1h
	jmp	42FF2Dh
00000000004306AA                               66 0F 1F 44 00 00           f..D..

l00000000004306B0:
	mov	rdx,[rsp+48h]
	lea	rcx,[rax-18h]
	call	450A50h
	jmp	4300C0h

l00000000004306C3:
	mov	[rsp+45h],r15b
	jmp	42FF2Dh
00000000004306CD                                        0F 1F 00              ...

l00000000004306D0:
	mov	rdx,[rcx]
	call	qword ptr [rdx+50h]
	mov	rcx,[rsp+60h]
	mov	dword ptr [rsp+68h],0FFFFFFFFh
	test	rcx,rcx
	jz	430650h

l00000000004306EC:
	mov	rdx,[rcx+10h]
	cmp	rdx,[rcx+18h]
	jc	4305DDh

l00000000004306FA:
	nop	word ptr [rax+rax+0h]

l0000000000430700:
	mov	rdx,[rcx]
	call	qword ptr [rdx+48h]
	cmp	eax,0FFh
	jnz	4305E0h

l000000000043070F:
	mov	qword ptr [rsp+60h],+0h
	jmp	430650h
000000000043071D                                        0F 1F 00              ...

l0000000000430720:
	mov	rax,[rcx]
	call	qword ptr [rax+48h]
	cmp	eax,0FFh
	jnz	430261h

l000000000043072F:
	mov	qword ptr [rsp+60h],+0h
	movsx	ebx,al
	jmp	42FFA8h

l0000000000430740:
	mov	rax,[rcx]
	call	qword ptr [rax+48h]
	cmp	eax,0FFh
	jnz	4303C1h

l000000000043074F:
	mov	qword ptr [rsp+60h],+0h
	mov	ebx,eax
	jmp	4302CDh

l000000000043075F:
	xor	ebx,ebx
	mov	byte ptr [rsp+47h],0h
	jmp	42FF1Fh

l000000000043076B:
	mov	rax,[rcx]
	mov	[rsp+28h],dl
	call	qword ptr [rax+48h]
	cmp	eax,0FFh
	movzx	edx,byte ptr [rsp+28h]
	jnz	430679h

l0000000000430783:
	mov	qword ptr [rsp+50h],+0h
	mov	eax,1h
	jmp	4305FDh

l0000000000430796:
	mov	eax,edx
	jmp	43054Fh

l000000000043079D:
	mov	byte ptr [rsp+45h],1h
	jmp	42FF38h

l00000000004307A7:
	mov	ebx,0FFFFFFFFh
	jmp	42FFA8h

l00000000004307B1:
	mov	ebx,1h
	jmp	430045h

l00000000004307BB:
	mov	ebx,0FFFFFFFFh
	jmp	4302CDh

l00000000004307C5:
	xor	r13d,r13d
	mov	r15d,1h
	mov	esi,8h
	jmp	4305A3h
00000000004307D8                         48 89 C3 48 8B 84 24 80         H..H..$.
00000000004307E0 00 00 00 48 8B 54 24 48 48 8D 48 E8 E8 6F 02 02 ...H.T$HH.H..o..
00000000004307F0 00 48 89 D9 E8 B7 0D FE FF 90 90 90 90 90 90 90 .H..............

;; fn0000000000430800: 0000000000430800
;;   Called from:
;;     0000000000431EED (in fn0000000000431E50)
;;     000000000043210D (in fn0000000000432070)
;;     000000000043232D (in fn0000000000432290)
fn0000000000430800 proc
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
	lea	r14,[rsp+60h]
	mov	[rsp+60h],rax
	mov	rax,[r9]
	mov	[rsp+68h],rdx
	mov	rdx,[r9+8h]
	mov	[rsp+50h],rax
	mov	rax,[rsp+100h]
	mov	[rsp+58h],rdx
	lea	rdx,[rax+0D0h]
	call	42A360h
	mov	rsi,rax
	lea	rax,[rsp+50h]
	mov	rcx,r14
	mov	rdx,rax
	mov	[rsp+40h],rax
	call	42AF60h
	test	al,al
	mov	r15d,eax
	jz	431040h

l0000000000430888:
	xor	ebp,ebp
	xor	r12d,r12d
	mov	r15d,1h

l0000000000430893:
	lea	rax,[rsp+7Fh]
	xor	edx,edx
	xor	ecx,ecx
	mov	r8,rax
	mov	[rsp+48h],rax
	call	4505D0h
	cmp	byte ptr [rsi+20h],0h
	mov	[rsp+80h],rax
	jnz	431022h

l00000000004308BB:
	movzx	eax,byte ptr [rsi+88h]
	test	al,al
	mov	[rsp+3Fh],al
	jnz	430C90h

l00000000004308CE:
	test	r15b,r15b
	jnz	431140h

l00000000004308D7:
	xor	r13d,r13d

l00000000004308DA:
	lea	eax,[rbx-30h]
	cmp	al,9h
	ja	430A20h

l00000000004308E5:
	mov	rax,[rdi]
	mov	rdx,[rax-18h]
	lea	r12,[rdx+1h]
	cmp	r12,[rax-10h]
	ja	4308FFh

l00000000004308F6:
	mov	r9d,[rax-8h]
	test	r9d,r9d
	jle	430911h

l00000000004308FF:
	mov	rdx,r12
	mov	rcx,rdi
	call	451BE0h
	mov	rax,[rdi]
	mov	rdx,[rax-18h]

l0000000000430911:
	mov	[rax+rdx],bl
	mov	rax,[rdi]
	mov	[rax-18h],r12
	mov	dword ptr [rax-8h],0h
	mov	byte ptr [rax],0h
	mov	r12d,1h

l000000000043092D:
	mov	rcx,[rsp+60h]
	test	rcx,rcx
	jz	430B40h

l000000000043093B:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	430C10h

l0000000000430949:
	add	rax,1h
	mov	dword ptr [rsp+68h],0FFFFFFFFh
	mov	[rcx+10h],rax
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	430C40h

l0000000000430967:
	movzx	eax,byte ptr [rax]

l000000000043096A:
	mov	rcx,[rsp+50h]
	mov	[rsp+68h],eax
	test	rcx,rcx
	jz	430B7Fh

l000000000043097C:
	xor	ebx,ebx
	xor	eax,eax
	cmp	dword ptr [rsp+58h],0FFh
	jz	430B60h

l000000000043098B:
	cmp	al,bl
	jnz	430B7Fh

l0000000000430993:
	mov	rbx,[rsp+80h]
	cmp	qword ptr [rbx-18h],0h
	jz	4309DBh

l00000000004309A2:
	mov	eax,r13d
	lea	r13,[rsp+80h]
	xor	eax,1h
	cmp	r15b,al
	jc	431153h

l00000000004309B9:
	mov	rdx,[rsi+18h]
	mov	rcx,[rsi+10h]
	mov	r8,r13
	call	4708F0h
	test	al,al
	jnz	4309DBh

l00000000004309CD:
	mov	rax,[rsp+108h]
	mov	dword ptr [rax],4h

l00000000004309DB:
	mov	rdx,[rsp+68h]
	mov	rdi,[rsp+0E0h]
	lea	rcx,[rbx-18h]
	mov	rax,[rsp+60h]
	mov	[rdi+8h],rdx
	mov	rdx,[rsp+48h]
	mov	[rdi],rax
	call	450A60h
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
0000000000430A1E                                           66 90               f.

l0000000000430A20:
	cmp	[rsi+48h],bl
	jz	430BE0h

l0000000000430A29:
	cmp	[rsi+80h],bl
	jz	430A3Dh

l0000000000430A31:
	cmp	[rsi+86h],bl
	jnz	430993h

l0000000000430A3D:
	cmp	r13b,r12b
	jnc	430993h

l0000000000430A46:
	mov	rax,[rdi]
	mov	rdx,[rax-18h]
	lea	rbx,[rdx+1h]
	cmp	rbx,[rax-10h]
	ja	430A60h

l0000000000430A57:
	mov	r8d,[rax-8h]
	test	r8d,r8d
	jle	430A72h

l0000000000430A60:
	mov	rdx,rbx
	mov	rcx,rdi
	call	451BE0h
	mov	rax,[rdi]
	mov	rdx,[rax-18h]

l0000000000430A72:
	mov	byte ptr [rax+rdx],65h
	mov	rax,[rdi]
	mov	dword ptr [rax-8h],0h
	mov	[rax-18h],rbx
	mov	byte ptr [rax+rbx],0h
	mov	rcx,[rsp+60h]
	test	rcx,rcx
	jz	430C78h

l0000000000430A96:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	430FB0h

l0000000000430AA4:
	add	rax,1h
	mov	dword ptr [rsp+68h],0FFFFFFFFh
	mov	[rcx+10h],rax

l0000000000430AB4:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	430C60h

l0000000000430AC2:
	movzx	eax,byte ptr [rax]

l0000000000430AC5:
	mov	rcx,[rsp+50h]
	mov	[rsp+68h],eax
	test	rcx,rcx
	jz	430AEAh

l0000000000430AD3:
	xor	ebx,ebx

l0000000000430AD5:
	xor	eax,eax
	cmp	dword ptr [rsp+58h],0FFh
	jz	430BC0h

l0000000000430AE2:
	cmp	al,bl
	jz	431120h

l0000000000430AEA:
	mov	rcx,[rsp+60h]
	test	rcx,rcx
	jz	431346h

l0000000000430AF8:
	mov	eax,[rsp+68h]
	cmp	eax,0FFh
	jz	430B90h

l0000000000430B05:
	mov	ebx,eax

l0000000000430B07:
	cmp	bl,[rsi+6Fh]
	jz	430BB0h

l0000000000430B10:
	cmp	bl,[rsi+6Eh]
	mov	r13d,1h
	mov	edx,2Dh
	jnz	4308DAh

l0000000000430B24:
	mov	rcx,rdi
	call	451E10h
	mov	rcx,[rsp+60h]
	mov	r13d,1h
	test	rcx,rcx
	jnz	43093Bh

l0000000000430B40:
	mov	rcx,[rsp+50h]
	test	rcx,rcx
	jz	430993h

l0000000000430B4E:
	xor	eax,eax
	cmp	dword ptr [rsp+58h],0FFh
	mov	ebx,1h
	jnz	43098Bh

l0000000000430B60:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	430FF3h

l0000000000430B6E:
	movzx	eax,byte ptr [rax]

l0000000000430B71:
	mov	[rsp+58h],eax
	xor	eax,eax
	cmp	al,bl
	jz	430993h

l0000000000430B7F:
	mov	rcx,r14
	call	42B050h
	mov	ebx,eax
	jmp	4308DAh
0000000000430B8E                                           66 90               f.

l0000000000430B90:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	431322h

l0000000000430B9E:
	movzx	eax,byte ptr [rax]

l0000000000430BA1:
	mov	ebx,eax
	cmp	bl,[rsi+6Fh]
	mov	[rsp+68h],eax
	jnz	430B10h

l0000000000430BB0:
	mov	edx,2Bh
	jmp	430B24h
0000000000430BBA                               66 0F 1F 44 00 00           f..D..

l0000000000430BC0:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	431300h

l0000000000430BCE:
	movzx	eax,byte ptr [rax]

l0000000000430BD1:
	mov	[rsp+58h],eax
	xor	eax,eax
	jmp	430AE2h
0000000000430BDC                                     0F 1F 40 00             ..@.

l0000000000430BE0:
	mov	eax,r13d
	xor	eax,1h
	cmp	al,r15b
	jbe	430A29h

l0000000000430BEF:
	mov	edx,2Eh
	mov	rcx,rdi
	call	451E10h
	mov	r15d,1h
	jmp	43092Dh
0000000000430C07                      66 0F 1F 84 00 00 00 00 00        f........

l0000000000430C10:
	mov	rax,[rcx]
	call	qword ptr [rax+50h]
	mov	rcx,[rsp+60h]
	mov	dword ptr [rsp+68h],0FFFFFFFFh
	test	rcx,rcx
	jz	430B40h

l0000000000430C2C:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jc	430967h

l0000000000430C3A:
	nop	word ptr [rax+rax+0h]

l0000000000430C40:
	mov	rax,[rcx]
	call	qword ptr [rax+48h]
	cmp	eax,0FFh
	jnz	43096Ah

l0000000000430C4F:
	mov	qword ptr [rsp+60h],+0h
	jmp	430B40h
0000000000430C5D                                        0F 1F 00              ...

l0000000000430C60:
	mov	rax,[rcx]
	call	qword ptr [rax+48h]
	cmp	eax,0FFh
	jnz	430AC5h

l0000000000430C6F:
	mov	qword ptr [rsp+60h],+0h

l0000000000430C78:
	mov	rcx,[rsp+50h]
	test	rcx,rcx
	jz	431120h

l0000000000430C86:
	mov	ebx,1h
	jmp	430AD5h

l0000000000430C90:
	test	r15b,r15b
	jnz	431140h

l0000000000430C99:
	lea	rax,[rsi+72h]
	lea	rdx,[rsp+80h]
	xor	r13d,r13d
	xor	r15d,r15d
	mov	[rsp+28h],rax
	movzx	eax,byte ptr [rsi+20h]
	mov	[rsp+30h],rdx

l0000000000430CB9:
	test	al,al
	jz	430CC6h

l0000000000430CBD:
	cmp	bl,[rsi+49h]
	jz	430DB9h

l0000000000430CC6:
	cmp	bl,[rsi+48h]
	jz	430E30h

l0000000000430CCF:
	mov	rcx,[rsp+28h]
	movsx	edx,bl
	mov	r8d,0Ah
	call	41BD98h
	test	rax,rax
	jz	430E74h

l0000000000430CEB:
	sub	rax,[rsp+28h]
	lea	ebx,[rax+30h]
	mov	rax,[rdi]
	mov	rdx,[rax-18h]
	lea	r12,[rdx+1h]
	cmp	r12,[rax-10h]
	ja	430D0Bh

l0000000000430D04:
	mov	ecx,[rax-8h]
	test	ecx,ecx
	jle	430D1Dh

l0000000000430D0B:
	mov	rdx,r12
	mov	rcx,rdi
	call	451BE0h
	mov	rax,[rdi]
	mov	rdx,[rax-18h]

l0000000000430D1D:
	mov	[rax+rdx],bl
	mov	rax,[rdi]
	add	ebp,1h
	mov	[rax-18h],r12
	mov	dword ptr [rax-8h],0h
	mov	byte ptr [rax],0h
	mov	r12d,1h

l0000000000430D3C:
	mov	rcx,[rsp+60h]
	test	rcx,rcx
	jz	430DF1h

l0000000000430D4A:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	430F60h

l0000000000430D58:
	add	rax,1h
	mov	dword ptr [rsp+68h],0FFFFFFFFh
	mov	[rcx+10h],rax
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	430F90h

l0000000000430D76:
	movzx	eax,byte ptr [rax]

l0000000000430D79:
	mov	rcx,[rsp+50h]
	mov	[rsp+68h],eax
	test	rcx,rcx
	jz	430D9Ah

l0000000000430D87:
	xor	ebx,ebx
	xor	eax,eax
	cmp	dword ptr [rsp+58h],0FFh
	jz	430E0Dh

l0000000000430D92:
	cmp	al,bl
	jz	430993h

l0000000000430D9A:
	mov	rcx,r14
	call	42B050h
	mov	ebx,eax
	movzx	eax,byte ptr [rsi+20h]
	test	al,al
	jz	430CC6h

l0000000000430DB0:
	cmp	bl,[rsi+49h]
	jnz	430CC6h

l0000000000430DB9:
	mov	eax,r13d
	xor	eax,1h
	cmp	al,r15b
	jbe	431120h

l0000000000430DC8:
	test	ebp,ebp
	jz	431350h

l0000000000430DD0:
	mov	rcx,[rsp+30h]
	movsx	edx,bpl
	call	451E10h
	mov	rcx,[rsp+60h]
	xor	r15d,r15d
	xor	ebp,ebp
	test	rcx,rcx
	jnz	430D4Ah

l0000000000430DF1:
	mov	rcx,[rsp+50h]
	test	rcx,rcx
	jz	430993h

l0000000000430DFF:
	xor	eax,eax
	cmp	dword ptr [rsp+58h],0FFh
	movzx	ebx,byte ptr [rsp+3Fh]
	jnz	430D92h

l0000000000430E0D:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	430FD1h

l0000000000430E1B:
	movzx	eax,byte ptr [rax]

l0000000000430E1E:
	mov	[rsp+58h],eax
	xor	eax,eax
	jmp	430D92h
0000000000430E29                            0F 1F 80 00 00 00 00          .......

l0000000000430E30:
	mov	eax,r13d
	xor	eax,1h
	cmp	al,r15b
	jbe	431120h

l0000000000430E3F:
	mov	rax,[rsp+80h]
	cmp	qword ptr [rax-18h],0h
	jz	430E5Ch

l0000000000430E4E:
	mov	rcx,[rsp+30h]
	movsx	edx,bpl
	call	451E10h

l0000000000430E5C:
	mov	edx,2Eh
	mov	rcx,rdi
	call	451E10h
	mov	r15d,1h
	jmp	430D3Ch

l0000000000430E74:
	cmp	bl,[rsi+80h]
	jz	430E88h

l0000000000430E7C:
	cmp	bl,[rsi+86h]
	jnz	430993h

l0000000000430E88:
	cmp	r13b,r12b
	jnc	430993h

l0000000000430E91:
	test	r15b,r15b
	jnz	430EB3h

l0000000000430E96:
	mov	rax,[rsp+80h]
	cmp	qword ptr [rax-18h],0h
	jz	430EB3h

l0000000000430EA5:
	mov	rcx,[rsp+30h]
	movsx	edx,bpl
	call	451E10h

l0000000000430EB3:
	mov	edx,65h
	mov	rcx,rdi
	call	451E10h
	mov	rcx,[rsp+60h]
	test	rcx,rcx
	jz	430EE8h

l0000000000430ECA:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	4312F0h

l0000000000430ED8:
	add	rax,1h
	mov	[rcx+10h],rax

l0000000000430EE0:
	mov	dword ptr [rsp+68h],0FFFFFFFFh

l0000000000430EE8:
	mov	rdx,[rsp+40h]
	mov	rcx,r14
	call	42AF60h
	test	al,al
	jnz	431120h

l0000000000430EFD:
	mov	rcx,r14
	call	42B050h
	cmp	[rsi+6Fh],al
	mov	ebx,eax
	setz	cl
	jz	430F23h

l0000000000430F0F:
	cmp	[rsi+6Eh],al
	jz	430F23h

l0000000000430F14:
	movzx	eax,byte ptr [rsi+20h]
	mov	r13d,1h
	jmp	430CB9h

l0000000000430F23:
	movzx	edx,byte ptr [rsi+20h]
	test	dl,dl
	jz	430F34h

l0000000000430F2B:
	cmp	[rsi+49h],al
	jz	4312E2h

l0000000000430F34:
	cmp	[rsi+48h],al
	jz	431015h

l0000000000430F3D:
	cmp	cl,1h
	mov	rcx,rdi
	sbb	edx,edx
	and	edx,2h
	add	edx,2Bh
	call	451E10h
	mov	r13d,1h
	jmp	430D3Ch
0000000000430F5B                                  0F 1F 44 00 00            ..D..

l0000000000430F60:
	mov	rax,[rcx]
	call	qword ptr [rax+50h]
	mov	rcx,[rsp+60h]
	mov	dword ptr [rsp+68h],0FFFFFFFFh
	test	rcx,rcx
	jz	430DF1h

l0000000000430F7C:
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jc	430D76h

l0000000000430F8A:
	nop	word ptr [rax+rax+0h]

l0000000000430F90:
	mov	rax,[rcx]
	call	qword ptr [rax+48h]
	cmp	eax,0FFh
	jnz	430D79h

l0000000000430F9F:
	mov	qword ptr [rsp+60h],+0h
	jmp	430DF1h
0000000000430FAD                                        0F 1F 00              ...

l0000000000430FB0:
	mov	rax,[rcx]
	call	qword ptr [rax+50h]
	mov	rcx,[rsp+60h]
	mov	dword ptr [rsp+68h],0FFFFFFFFh
	test	rcx,rcx
	jnz	430AB4h

l0000000000430FCC:
	jmp	430C78h

l0000000000430FD1:
	mov	rax,[rcx]
	call	qword ptr [rax+48h]
	cmp	eax,0FFh
	jnz	430E1Eh

l0000000000430FE0:
	mov	qword ptr [rsp+50h],+0h
	movzx	eax,byte ptr [rsp+3Fh]
	jmp	430D92h

l0000000000430FF3:
	mov	rax,[rcx]
	call	qword ptr [rax+48h]
	cmp	eax,0FFh
	jnz	430B71h
