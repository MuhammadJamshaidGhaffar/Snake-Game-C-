;;; Segment .text (0000000000401000)

l0000000000411002:
	mov	rax,[rbx+8h]
	mov	rcx,rsi
	call	rax

l000000000041100B:
	mov	rbx,[rbx+10h]
	test	rbx,rbx
	jnz	410FF0h

l0000000000411014:
	mov	rax,[00000000004AF5FC]                                 ; [rip+0009E5E1]
	lea	rcx,[00000000004ADA00]                                 ; [rip+0009C9DE]
	add	rsp,28h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	jmp	rax
000000000041102D                                        0F 1F 00              ...

;; fn0000000000411030: 0000000000411030
fn0000000000411030 proc
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,20h
	mov	eax,[00000000004AD9E8]                                 ; [rip+0009C9AB]
	test	eax,eax
	jnz	411050h

l0000000000411041:
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	ret
0000000000411049                            0F 1F 80 00 00 00 00          .......

l0000000000411050:
	mov	rsi,rdx
	mov	edi,ecx
	mov	edx,18h
	mov	ecx,1h
	call	41BEC0h
	test	rax,rax
	mov	rbx,rax
	jz	4110A8h

l000000000041106C:
	mov	[rax],edi
	mov	[rax+8h],rsi
	lea	rcx,[00000000004ADA00]                                 ; [rip+0009C987]
	call	[00000000004AF55C]                                    ; [rip+0009E4DD]
	mov	rax,[00000000004AD9E0]                                 ; [rip+0009C95A]
	lea	rcx,[00000000004ADA00]                                 ; [rip+0009C973]
	mov	[00000000004AD9E0],rbx                                 ; [rip+0009C94C]
	mov	[rbx+10h],rax
	call	[00000000004AF5FC]                                    ; [rip+0009E55E]
	xor	eax,eax
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	ret

l00000000004110A8:
	mov	eax,0FFFFFFFFh
	jmp	411041h
00000000004110AF                                              90                .

;; fn00000000004110B0: 00000000004110B0
fn00000000004110B0 proc
	push	rbx
	sub	rsp,20h
	mov	eax,[00000000004AD9E8]                                 ; [rip+0009C92D]
	test	eax,eax
	jnz	4110D0h

l00000000004110BF:
	xor	eax,eax
	add	rsp,20h
	pop	rbx
	ret
00000000004110C7                      66 0F 1F 84 00 00 00 00 00        f........

l00000000004110D0:
	mov	ebx,ecx
	lea	rcx,[00000000004ADA00]                                 ; [rip+0009C927]
	call	[00000000004AF55C]                                    ; [rip+0009E47D]
	mov	rdx,[00000000004AD9E0]                                 ; [rip+0009C8FA]
	test	rdx,rdx
	jz	411107h

l00000000004110EB:
	mov	eax,[rdx]
	cmp	eax,ebx
	jnz	4110FEh

l00000000004110F1:
	jmp	41113Fh

l00000000004110F3:
	mov	r8d,[rax]
	cmp	r8d,ebx
	jz	411120h

l00000000004110FB:
	mov	rdx,rax

l00000000004110FE:
	mov	rax,[rdx+10h]
	test	rax,rax
	jnz	4110F3h

l0000000000411107:
	lea	rcx,[00000000004ADA00]                                 ; [rip+0009C8F2]
	call	[00000000004AF5FC]                                    ; [rip+0009E4E8]

l0000000000411114:
	xor	eax,eax
	add	rsp,20h
	pop	rbx
	ret
000000000041111C                                     0F 1F 40 00             ..@.

l0000000000411120:
	mov	rcx,rax
	mov	rax,[rax+10h]
	mov	[rdx+10h],rax

l000000000041112B:
	call	41BDA0h
	lea	rcx,[00000000004ADA00]                                 ; [rip+0009C8C9]
	call	[00000000004AF5FC]                                    ; [rip+0009E4BF]
	jmp	411114h

l000000000041113F:
	mov	rax,[rdx+10h]
	mov	rcx,rdx
	mov	[00000000004AD9E0],rax                                 ; [rip+0009C893]
	jmp	41112Bh
000000000041114F                                              90                .

;; fn0000000000411150: 0000000000411150
;;   Called from:
;;     0000000000410AB0 (in fn0000000000410A90)
;;     0000000000410B22 (in fn0000000000410AC0)
fn0000000000411150 proc
	sub	rsp,28h
	cmp	edx,1h
	jz	4111A2h

l0000000000411159:
	jc	411174h

l000000000041115B:
	cmp	edx,3h
	jnz	41116Ah

l0000000000411160:
	mov	eax,[00000000004AD9E8]                                 ; [rip+0009C882]
	test	eax,eax
	jnz	4111D0h

l000000000041116A:
	mov	eax,1h
	add	rsp,28h
	ret

l0000000000411174:
	mov	eax,[00000000004AD9E8]                                 ; [rip+0009C86E]
	test	eax,eax
	jnz	4111E0h

l000000000041117E:
	mov	eax,[00000000004AD9E8]                                 ; [rip+0009C864]
	cmp	eax,1h
	jnz	41116Ah

l0000000000411189:
	lea	rcx,[00000000004ADA00]                                 ; [rip+0009C870]
	mov	[00000000004AD9E8],0h                                  ; [rip+0009C84E]
	call	[00000000004AF54C]                                    ; [rip+0009E3AC]
	jmp	41116Ah

l00000000004111A2:
	mov	eax,[00000000004AD9E8]                                 ; [rip+0009C840]
	test	eax,eax
	jz	4111C0h

l00000000004111AC:
	mov	eax,1h
	mov	[00000000004AD9E8],1h                                  ; [rip+0009C82D]
	add	rsp,28h
	ret

l00000000004111C0:
	lea	rcx,[00000000004ADA00]                                 ; [rip+0009C839]
	call	[00000000004AF5EC]                                    ; [rip+0009E41F]
	jmp	4111ACh
00000000004111CF                                              90                .

l00000000004111D0:
	call	410FC0h
	jmp	41116Ah
00000000004111D7                      66 0F 1F 84 00 00 00 00 00        f........

l00000000004111E0:
	call	410FC0h
	jmp	41117Eh
00000000004111E7                      90 90 90 90 90 90 90 90 90        .........

;; fn00000000004111F0: 00000000004111F0
;;   Called from:
;;     0000000000411675 (in fn0000000000411660)
;;     00000000004116B4 (in fn0000000000411680)
fn00000000004111F0 proc
	sub	rsp,38h
	xor	edx,edx
	mov	r8d,1h
	mov	[rsp+40h],rcx
	lea	r9,[rsp+40h]
	mov	ecx,22474343h
	call	[00000000004AF614]                                    ; [rip+0009E403]
	mov	rax,[rsp+40h]
	mov	ecx,1h
	mov	rdx,[rax+30h]
	mov	qword ptr [rsp+20h],+0h
	mov	r9,rax
	mov	[rsp+28h],rdx
	mov	r8,[rax]
	mov	edx,1Ah
	call	qword ptr [rax+10h]
	mov	eax,10h
	add	rsp,38h
	ret
0000000000411245                66 66 2E 0F 1F 84 00 00 00 00 00      ff.........

;; fn0000000000411250: 0000000000411250
fn0000000000411250 proc
	sub	rsp,28h
	cmp	edx,2h
	ja	411266h

l0000000000411259:
	movsxd	rdx,edx
	mov	rax,[rcx+rdx*8+10h]
	add	rsp,28h
	ret

l0000000000411266:
	call	41BD30h
	nop
	nop	dword ptr [rax+0h]

;; fn0000000000411270: 0000000000411270
;;   Called from:
;;     000000000041126C (in fn0000000000411250)
;;     0000000000423D01 (in fn0000000000423C60)
;;     0000000000423D16 (in fn0000000000423C60)
fn0000000000411270 proc
	sub	rsp,28h
	cmp	edx,2h
	ja	411286h

l0000000000411279:
	movsxd	rdx,edx
	mov	[rcx+rdx*8+10h],r8
	add	rsp,28h
	ret

l0000000000411286:
	call	41BD30h
	nop
	nop	dword ptr [rax+0h]

;; fn0000000000411290: 0000000000411290
;;   Called from:
;;     000000000041128C (in fn0000000000411270)
fn0000000000411290 proc
	mov	rax,[rcx]
	ret
0000000000411294             66 66 66 2E 0F 1F 84 00 00 00 00 00     fff.........

;; fn00000000004112A0: 00000000004112A0
fn00000000004112A0 proc
	mov	rax,[rcx+8h]
	ret
00000000004112A5                66 66 2E 0F 1F 84 00 00 00 00 00      ff.........

;; fn00000000004112B0: 00000000004112B0
;;   Called from:
;;     0000000000423DCC (in fn0000000000423C60)
fn00000000004112B0 proc
	mov	rax,[rcx+8h]
	mov	dword ptr [rdx],0h
	ret
00000000004112BB                                  0F 1F 44 00 00            ..D..

;; fn00000000004112C0: 00000000004112C0
;;   Called from:
;;     0000000000423D26 (in fn0000000000423C60)
fn00000000004112C0 proc
	mov	[rcx+8h],rdx
	ret
00000000004112C5                66 66 2E 0F 1F 84 00 00 00 00 00      ff.........

;; fn00000000004112D0: 00000000004112D0
;;   Called from:
;;     0000000000423D6A (in fn0000000000423C60)
fn00000000004112D0 proc
	mov	rax,[rcx+20h]
	mov	rax,[rax+38h]
	ret
00000000004112D9                            0F 1F 80 00 00 00 00          .......

;; fn00000000004112E0: 00000000004112E0
;;   Called from:
;;     0000000000423738 (in fn0000000000423720)
;;     00000000004238E7 (in fn0000000000423890)
fn00000000004112E0 proc
	mov	rdx,[rcx+20h]
	mov	rax,[rdx+10h]
	mov	eax,[rax]
	add	rax,[rdx+8h]
	ret
00000000004112EF                                              90                .

;; fn00000000004112F0: 00000000004112F0
fn00000000004112F0 proc
	sub	rsp,38h
	xor	r8d,r8d
	lea	rdx,[rsp+28h]
	call	[00000000004AF64C]                                    ; [rip+0009E34A]
	test	rax,rax
	jz	411313h

l0000000000411307:
	mov	eax,[rax]
	add	rax,[rsp+28h]

l000000000041130E:
	add	rsp,38h
	ret

l0000000000411313:
	xor	eax,eax
	jmp	41130Eh
0000000000411317                      66 0F 1F 84 00 00 00 00 00        f........

;; fn0000000000411320: 0000000000411320
;;   Called from:
;;     00000000004238B7 (in fn0000000000423890)
fn0000000000411320 proc
	xor	eax,eax
	ret
0000000000411323          66 66 66 66 2E 0F 1F 84 00 00 00 00 00    ffff.........

;; fn0000000000411330: 0000000000411330
;;   Called from:
;;     00000000004238F7 (in fn0000000000423890)
fn0000000000411330 proc
	mov	rax,[rcx+20h]
	mov	rax,[rax+8h]
	ret
0000000000411339                            0F 1F 80 00 00 00 00          .......

;; fn0000000000411340: 0000000000411340
;;   Called from:
;;     00000000004762D0 (in fn00000000004762C0)
fn0000000000411340 proc
	push	r13
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,68h
	mov	r10d,[rcx+4h]
	mov	eax,[rcx]
	mov	rbp,[rcx+20h]
	test	r10b,20h
	jnz	4113C0h

l000000000041135C:
	cmp	eax,21474343h
	mov	rsi,r9
	mov	r12,r8
	mov	rdi,rdx
	mov	rbx,rcx
	jz	4113D1h

l000000000041136F:
	mov	rdx,[r9+28h]
	mov	ecx,0DEADBEEFh
	cmp	eax,22474343h
	mov	[rsp+40h],rcx
	mov	[rsp+48h],rcx
	mov	[rsp+50h],r9
	mov	rdx,[rdx+98h]
	mov	[rsp+30h],rdx
	mov	rdx,[r9]
	mov	[rsp+38h],rdx
	jz	411445h

l00000000004113A6:
	cmp	eax,20474343h
	jz	411400h

l00000000004113AD:
	mov	eax,1h
	add	rsp,68h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	ret
00000000004113BF                                              90                .

l00000000004113C0:
	mov	rax,[r9+28h]
	mov	rdx,[rcx+38h]
	mov	[rax+88h],rdx
	jmp	4113ADh

l00000000004113D1:
	cmp	rdx,[rcx+28h]
	jnz	4113ADh

l00000000004113D7:
	mov	rax,[r9+40h]
	mov	rdx,[rcx+30h]
	mov	r9,rbp
	mov	[rsp+20h],r8
	mov	r8,rcx
	mov	rcx,rdi
	mov	[rsp+28h],rax
	call	[00000000004AF654]                                    ; [rip+0009E25C]
	call	41BD30h
	nop	dword ptr [rax]

l0000000000411400:
	and	r10d,6h
	jz	411473h

l0000000000411406:
	lea	rsi,[rsp+30h]
	mov	edx,2h

l0000000000411410:
	mov	[rsp+20h],rsi
	mov	r9,rbp
	mov	r8,[rbp+0h]
	mov	ecx,1h
	call	qword ptr [rsp+0C0h]
	cmp	eax,8h
	jz	4113ADh

l000000000041142D:
	cmp	eax,7h
	jz	411516h

l0000000000411436:
	nop	word ptr cs:[rax+rax+0h]

l0000000000411440:
	call	41BD30h

l0000000000411445:
	mov	rax,[rbp+30h]
	lea	rsi,[rsp+30h]
	mov	edx,0Ah
	mov	r9,rbp
	mov	ecx,1h
	mov	[rsp+20h],rsi
	mov	[rsp+28h],rax
	mov	r8,[rbp+0h]
	call	qword ptr [rbp+10h]
	mov	edx,0Ah
	jmp	411410h

l0000000000411473:
	lea	r13,[rsp+30h]
	mov	r9,rbp
	mov	edx,1h
	mov	ecx,1h
	mov	[rsp+20h],r13
	mov	r8,[rbp+0h]
	call	qword ptr [rsp+0C0h]
	cmp	eax,8h
	jz	4113ADh

l000000000041149E:
	cmp	eax,6h
	jnz	411440h

l00000000004114A3:
	mov	[rsp+20h],r13
	mov	r9,rbp
	mov	r8,[rbp+0h]
	mov	edx,6h
	mov	ecx,1h
	call	qword ptr [rsp+0C0h]
	cmp	eax,7h
	jnz	411440h

l00000000004114C9:
	mov	rax,[rsp+48h]
	mov	rdx,[rsp+38h]
	mov	r8,rbx
	mov	[rbp+18h],rdi
	mov	r9,[rsp+40h]
	mov	rcx,rdi
	mov	[rbp+28h],rax
	mov	[rbp+20h],rdx
	mov	[rbx+38h],rax
	mov	rax,[rsi+40h]
	mov	dword ptr [rbx+18h],4h
	mov	[rbx+28h],rdi
	mov	[rbx+30h],rdx
	mov	[rsp+20h],r12
	mov	[rsp+28h],rax
	call	[00000000004AF654]                                    ; [rip+0009E143]
	jmp	411440h

l0000000000411516:
	mov	rax,[rsp+38h]
	mov	[rbx+28h],rdi
	lea	r9,[rbx+20h]
	mov	r8d,4h
	mov	edx,1h
	mov	ecx,21474343h
	mov	[rbx+30h],rax
	mov	rax,[rsp+48h]
	mov	[rbx+38h],rax
	call	[00000000004AF614]                                    ; [rip+0009E0CE]
	jmp	411440h
000000000041154B                                  0F 1F 44 00 00            ..D..

;; fn0000000000411550: 0000000000411550
;;   Called from:
;;     000000000041166B (in fn0000000000411660)
;;     0000000000470A2D (in fn00000000004709E0)
;;     000000000047610C (in fn00000000004760B0)
fn0000000000411550 proc
	push	rdi
	sub	rsp,20h
	xor	eax,eax
	mov	r8d,1h
	xor	edx,edx
	lea	rdi,[rcx+18h]
	mov	[rsp+30h],rcx
	mov	qword ptr [rcx+10h],+0h
	mov	qword ptr [rcx+38h],+0h
	lea	r9,[rsp+30h]
	and	rdi,0F8h
	sub	ecx,edi
	add	ecx,40h
	shr	ecx,3h

l0000000000411589:
	rep stosq

l000000000041158C:
	mov	ecx,20474343h
	call	[00000000004AF614]                                    ; [rip+0009E07D]
	mov	eax,5h
	add	rsp,20h
	pop	rdi
	ret
00000000004115A2       66 66 66 66 66 2E 0F 1F 84 00 00 00 00 00   fffff.........

;; fn00000000004115B0: 00000000004115B0
;;   Called from:
;;     0000000000423AFE (in fn0000000000423AD0)
;;     00000000004472C7 (in fn0000000000446BF0)
;;     00000000004479A7 (in fn00000000004472D0)
;;     000000000044845E (in fn0000000000447CD0)
;;     0000000000448C4E (in fn00000000004484C0)
;;     000000000044A4F3 (in fn000000000044A340)
;;     000000000044B54D (in fn000000000044B410)
;;     000000000044B69D (in fn000000000044B560)
;;     000000000044B7ED (in fn000000000044B6B0)
;;     000000000044B93D (in fn000000000044B800)
;;     000000000044BA8D (in fn000000000044B950)
;;     000000000044BBDD (in fn000000000044BAA0)
;;     000000000044BD2D (in fn000000000044BBF0)
;;     000000000044BE7D (in fn000000000044BD40)
;;     000000000044BFCD (in fn000000000044BE90)
;;     000000000044C11D (in fn000000000044BFE0)
;;     000000000044C26D (in fn000000000044C130)
;;     000000000044E53D (in fn000000000044E3F0)
;;     000000000044E70F (in fn000000000044E580)
;;     000000000044F114 (in fn000000000044EF40)
;;     000000000044F34B (in fn000000000044F160)
;;     000000000044F57B (in fn000000000044F3A0)
;;     000000000044F7B0 (in fn000000000044F5D0)
;;     000000000044F9D4 (in fn000000000044F800)
;;     000000000044FBF4 (in fn000000000044FA20)
;;     000000000044FE14 (in fn000000000044FC40)
;;     0000000000450034 (in fn000000000044FE60)
;;     0000000000451B02 (in fn0000000000451960)
;;     000000000045A60E (in fn000000000045A4D0)
;;     000000000045A75E (in fn000000000045A620)
;;     000000000045A8AE (in fn000000000045A770)
;;     000000000045A9FE (in fn000000000045A8C0)
;;     000000000045AB4E (in fn000000000045AA10)
;;     000000000045AC9E (in fn000000000045AB60)
;;     000000000045ADEE (in fn000000000045ACB0)
;;     000000000045AF3E (in fn000000000045AE00)
;;     000000000045B08E (in fn000000000045AF50)
;;     000000000045B1DE (in fn000000000045B0A0)
;;     000000000045B32E (in fn000000000045B1F0)
;;     000000000045D54D (in fn000000000045D400)
;;     000000000045D721 (in fn000000000045D590)
;;     000000000045E0F5 (in fn000000000045DF60)
;;     000000000045E2D5 (in fn000000000045E140)
;;     000000000045E4A9 (in fn000000000045E320)
;;     000000000045E696 (in fn000000000045E4F0)
;;     000000000045E875 (in fn000000000045E6E0)
;;     000000000045EA55 (in fn000000000045E8C0)
;;     000000000045EC35 (in fn000000000045EAA0)
;;     000000000045EE15 (in fn000000000045EC80)
;;     00000000004694ED (in fn0000000000469430)
;;     000000000046952E (in fn0000000000469430)
;;     000000000046ADFE (in fn000000000046AD30)
;;     000000000046AF0E (in fn000000000046AE90)
;;     000000000046C57F (in fn000000000046C440)
;;     00000000004707D8 (in fn0000000000470480)
;;     0000000000470B8E (in fn0000000000470B20)
;;     0000000000470C0E (in fn0000000000470BA0)
;;     0000000000470C9E (in fn0000000000470C30)
;;     0000000000470D03 (in fn0000000000470CC0)
;;     0000000000470D7E (in fn0000000000470D10)
;;     0000000000470ECE (in fn0000000000470E60)
;;     0000000000470F5E (in fn0000000000470EF0)
;;     000000000047130E (in fn00000000004712A0)
;;     000000000047139E (in fn0000000000471330)
;;     00000000004714AE (in fn0000000000471440)
;;     000000000047153E (in fn00000000004714D0)
;;     0000000000471615 (in fn0000000000471560)
;;     0000000000473CC1 (in fn0000000000473B60)
;;     00000000004756CE (in fn0000000000475620)
;;     00000000004757AE (in fn00000000004756E0)
;;     00000000004759A1 (in fn0000000000475910)
;;     0000000000475B80 (in fn0000000000475AF0)
;;     0000000000475C20 (in fn0000000000475BA0)
;;     0000000000475E58 (in fn0000000000475DE0)
;;     0000000000475F74 (in fn0000000000475E80)
;;     0000000000475FFB (in fn0000000000475F80)
fn00000000004115B0 proc
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,+688h
	xor	eax,eax
	lea	rsi,[rsp+30h]
	mov	rbx,rcx
	mov	ecx,13h
	lea	rbp,[rsp+0D0h]
	mov	dword ptr [rsp+1E0h],10001Fh
	mov	rdi,rsi

l00000000004115E0:
	rep stosq

l00000000004115E3:
	mov	rdi,rbp
	mov	dword ptr [rsp+30h],20474343h
	mov	dword ptr [rsp+34h],1h
	mov	dword ptr [rsp+48h],4h
	mov	[rsp+50h],rbx
	mov	cl,1Bh

l0000000000411605:
	rep stosq

l0000000000411608:
	mov	rax,[rbx+18h]
	lea	rdi,[rsp+1B0h]
	mov	rcx,rdi
	mov	[rsp+58h],rax
	mov	rax,[rbx+20h]
	mov	[rsp+60h],rax
	mov	rax,[rbx+28h]
	mov	[rsp+68h],rax
	call	[00000000004AF644]                                    ; [rip+0009E010]
	mov	rdx,[rbx+20h]
	mov	rcx,[rbx+18h]
	mov	r9,rbx
	mov	r8,rsi
	mov	[rsp+28h],rbp
	mov	[rsp+20h],rdi
	call	[00000000004AF654]                                    ; [rip+0009E002]
	call	41BD30h
	nop
	nop	dword ptr [rax+rax+0h]

;; fn0000000000411660: 0000000000411660
;;   Called from:
;;     0000000000411658 (in fn00000000004115B0)
;;     0000000000476098 (in fn0000000000476060)
fn0000000000411660 proc
	sub	rsp,28h
	cmp	qword ptr [rcx+10h],0h
	jnz	411675h

l000000000041166B:
	call	411550h

l0000000000411670:
	call	41BD30h

l0000000000411675:
	call	4111F0h
	jmp	411670h
000000000041167C                                     0F 1F 40 00             ..@.

;; fn0000000000411680: 0000000000411680
fn0000000000411680 proc
	push	rdi
	lea	rdi,[rcx+18h]
	mov	eax,ecx
	mov	r10,rcx
	mov	qword ptr [rcx+38h],+0h
	and	rdi,0F8h
	sub	eax,edi
	lea	r9d,[rax+40h]
	xor	eax,eax
	shr	r9d,3h
	mov	ecx,r9d

l00000000004116A5:
	rep stosq

l00000000004116A8:
	mov	rcx,r10
	mov	[r10+10h],rdx
	mov	[r10+30h],r8
	pop	rdi
	jmp	4111F0h
00000000004116B9                            0F 1F 80 00 00 00 00          .......

;; fn00000000004116C0: 00000000004116C0
;;   Called from:
;;     0000000000423608 (in fn00000000004235E0)
;;     0000000000475ABF (in fn0000000000475A70)
;;     0000000000475AE1 (in fn0000000000475A70)
fn00000000004116C0 proc
	mov	rax,[rcx+8h]
	test	rax,rax
	jz	4116D4h

l00000000004116C9:
	mov	rdx,rcx
	mov	ecx,1h
	jmp	rax

l00000000004116D4:
	ret
00000000004116D6                   66 2E 0F 1F 84 00 00 00 00 00       f.........

;; fn00000000004116E0: 00000000004116E0
fn00000000004116E0 proc
	mov	eax,5h
	ret
00000000004116E6                   90 90 90 90 90 90 90 90 90 90       ..........

;; fn00000000004116F0: 00000000004116F0
;;   Called from:
;;     000000000040C788 (in fn000000000040C6B0)
;;     000000000040C7A4 (in fn000000000040C6B0)
;;     000000000040C91C (in fn000000000040C6B0)
;;     000000000040C934 (in fn000000000040C6B0)
;;     00000000004100D1 (in fn0000000000410080)
;;     00000000004117E9 (in fn00000000004117B0)
;;     00000000004135FB (in fn00000000004135A0)
;;     0000000000413900 (in fn0000000000413880)
;;     0000000000413C92 (in fn0000000000413C60)
;;     0000000000421ED9 (in fn0000000000421EA0)
;;     0000000000425FD5 (in fn0000000000425EE0)
;;     00000000004383AA (in fn00000000004382A0)
;;     0000000000438442 (in fn00000000004382A0)
;;     00000000004386AE (in fn00000000004385D0)
;;     0000000000438730 (in fn00000000004385D0)
;;     00000000004389AD (in fn00000000004388A0)
;;     0000000000438A42 (in fn00000000004388A0)
;;     0000000000438CAF (in fn0000000000438BD0)
;;     0000000000438D31 (in fn0000000000438BD0)
;;     0000000000439048 (in fn0000000000438F60)
;;     00000000004390EA (in fn0000000000438F60)
;;     00000000004391B1 (in fn0000000000438F60)
;;     0000000000439233 (in fn0000000000438F60)
;;     00000000004393E4 (in fn00000000004392F0)
;;     0000000000439486 (in fn00000000004392F0)
;;     0000000000439544 (in fn00000000004392F0)
;;     00000000004395C3 (in fn00000000004392F0)
;;     0000000000439B67 (in fn0000000000439A70)
;;     000000000043A079 (in fn0000000000439F70)
;;     000000000043A116 (in fn0000000000439F70)
;;     000000000043A38E (in fn000000000043A2B0)
;;     000000000043A413 (in fn000000000043A2B0)
;;     000000000043A69F (in fn000000000043A590)
;;     000000000043A736 (in fn000000000043A590)
;;     000000000043A9B2 (in fn000000000043A8D0)
;;     000000000043AA41 (in fn000000000043A8D0)
;;     000000000043AD91 (in fn000000000043AC90)
;;     000000000043AE01 (in fn000000000043AC90)
;;     000000000043AEC4 (in fn000000000043AC90)
;;     000000000043AF43 (in fn000000000043AC90)
;;     000000000043B17E (in fn000000000043B070)
;;     000000000043B1ED (in fn000000000043B070)
;;     000000000043B2B6 (in fn000000000043B070)
;;     000000000043B333 (in fn000000000043B070)
;;     000000000043B943 (in fn000000000043B850)
;;     000000000043D0A5 (in fn000000000043D040)
;;     000000000043EAE1 (in fn000000000043EA80)
;;     000000000043EDD8 (in fn000000000043EA80)
;;     000000000043FB75 (in fn000000000043FB10)
;;     00000000004414E0 (in fn0000000000441480)
;;     0000000000441815 (in fn0000000000441480)
;;     0000000000446A67 (in fn00000000004469A0)
;;     0000000000447B98 (in fn0000000000447AD0)
;;     00000000004557A7 (in fn0000000000455750)
;;     00000000004574E7 (in fn0000000000457490)
;;     0000000000471595 (in fn0000000000471560)
fn00000000004116F0 proc
	push	rcx
	push	rax
	cmp	rax,+1000h
	lea	rcx,[rsp+18h]
	jc	411718h

l00000000004116FF:
	sub	rcx,+1000h
	or	qword ptr [rcx],0h
	sub	rax,+1000h
	cmp	rax,+1000h
	ja	4116FFh

l0000000000411718:
	sub	rcx,rax
	or	qword ptr [rcx],0h
	pop	rax
	pop	rcx
	ret
0000000000411722       90 90 90 90 90 90 90 90 90 90 90 90 90 90   ..............

;; fn0000000000411730: 0000000000411730
;;   Called from:
;;     00000000004118FA (in fn00000000004117B0)
;;     0000000000411946 (in fn00000000004117B0)
fn0000000000411730 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	movsxd	rbx,r9d
	mov	eax,r8d
	mov	rsi,rdx
	sub	eax,ebx
	cmp	eax,40h
	jg	411747h

l0000000000411746:
	int	3h

l0000000000411747:
	movzx	ecx,cx
	mov	rdx,rsi
	call	[00000000004AF56C]                                    ; [rip+0009DE19]
	test	eax,eax
	jnz	4117A3h

l0000000000411757:
	int	3h
	xor	r8d,r8d
	xor	eax,eax

l000000000041175D:
	lea	rdx,[rsi+rbx]
	mov	r10d,40h
	mov	r9d,1h
	jmp	41177Ah
000000000041176F                                              90                .

l0000000000411770:
	add	r8,1h
	cmp	r8,40h
	jz	41179Ch

l000000000041177A:
	cmp	byte ptr [rdx+r8],41h
	jnz	411770h

l0000000000411781:
	mov	ecx,r10d
	mov	esi,r9d
	sub	ecx,r8d
	add	r8,1h
	shl	esi,cl
	movsxd	rcx,esi
	or	rax,rcx
	cmp	r8,40h
	jnz	41177Ah

l000000000041179C:
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret

l00000000004117A3:
	xor	r8d,r8d
	xor	eax,eax
	jmp	41175Dh
00000000004117AA                               66 0F 1F 44 00 00           f..D..

;; fn00000000004117B0: 00000000004117B0
;;   Called from:
;;     0000000000423563 (in fn0000000000423550)
;;     000000000042357F (in fn0000000000423570)
;;     0000000000423C33 (in fn0000000000423C20)
;;     0000000000423C53 (in fn0000000000423C40)
;;     0000000000475C9E (in fn0000000000475C50)
;;     0000000000475D03 (in fn0000000000475C50)
;;     0000000000475D2C (in fn0000000000475C50)
;;     0000000000475D8E (in fn0000000000475D50)
;;     0000000000475DB3 (in fn0000000000475D50)
fn00000000004117B0 proc
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,38h
	lea	rbp,[rsp+80h]
	mov	rdi,rcx
	movsxd	r12,edx
	mov	r13,r8
	call	41BCB8h
	mov	rsi,rax
	lea	ebx,[rax+0Fh]
	lea	eax,[rax+52h]
	cdqe
	add	rax,0Fh
	and	rax,0F0h
	call	4116F0h
	sub	rsp,rax
	movsxd	r14,esi
	mov	rax,656D68732D636367h
	lea	r15,[rsp+20h]
	lea	rcx,[rsp+2Fh]
	mov	r8,r14
	mov	rdx,rdi
	mov	[rsp+20h],rax
	mov	eax,326Dh
	mov	dword ptr [rsp+28h],64742D6Dh
	mov	[rsp+2Ch],ax
	movsxd	rbx,ebx
	mov	byte ptr [rsp+2Eh],2Dh
	call	41BCC0h
	lea	rax,[r15+r14+10h]
	lea	r14d,[rsi+50h]
	mov	rdx,6161616161616161h
	xor	ecx,ecx
	mov	r8,r15
	mov	[rax],rdx
	mov	[rax+8h],rdx
	mov	[rax+10h],rdx
	mov	[rax+18h],rdx
	mov	[rax+20h],rdx
	mov	[rax+28h],rdx
	mov	[rax+30h],rdx
	mov	[rax+38h],rdx
	movsxd	rax,r14d
	xor	edx,edx
	mov	byte ptr [rsp+rax+20h],0h
	mov	byte ptr [rsp+rbx+20h],0h
	call	[00000000004AF53C]                                    ; [rip+0009DCBE]
	mov	byte ptr [rsp+rbx+20h],2Dh
	mov	rdi,rax
	mov	edx,0FFFFFFFFh
	mov	rcx,rax
	call	[00000000004AF6FC]                                    ; [rip+0009DE68]
	test	eax,eax
	jz	411899h

l0000000000411898:
	int	3h

l0000000000411899:
	mov	rcx,r15
	call	[00000000004AF564]                                    ; [rip+0009DCC2]
	test	ax,ax
	jnz	411938h

l00000000004118AB:
	mov	rcx,r12
	call	41BCB0h
	lea	r9d,[rsi+10h]
	mov	rbx,rax
	mov	r10d,40h

l00000000004118C0:
	bt	rbx,r10
	jnc	4118D4h

l00000000004118C6:
	mov	r11d,r14d
	sub	r11d,r10d
	movsxd	r11,r11d
	mov	byte ptr [r15+r11],41h

l00000000004118D4:
	sub	r10d,1h
	jnz	4118C0h

l00000000004118DA:
	mov	[rbp-54h],r9d
	mov	rcx,r15
	call	[00000000004AF524]                                    ; [rip+0009DC3D]
	test	ax,ax
	mov	r9d,[rbp-54h]
	jz	411935h

l00000000004118F0:
	lea	r8d,[rsi+51h]
	movzx	ecx,ax
	mov	rdx,r15
	call	411730h
	cmp	rax,rbx
	mov	rsi,rax
	jz	411950h

l0000000000411907:
	mov	rcx,rbx
	call	41BDA0h

l000000000041190F:
	mov	rcx,rdi
	call	[00000000004AF61C]                                    ; [rip+0009DD04]
	mov	rcx,rdi
	call	[00000000004AF52C]                                    ; [rip+0009DC0B]
	mov	rax,rsi
	lea	rsp,[rbp-48h]
	pop	rbx
	pop	rsi
	pop	rdi
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret

l0000000000411935:
	int	3h
	jmp	4118F0h

l0000000000411938:
	lea	r9d,[rsi+10h]
	lea	r8d,[rsi+51h]
	movzx	ecx,ax
	mov	rdx,r15
	call	411730h
	mov	rsi,rax
	jmp	41190Fh

l0000000000411950:
	xor	edx,edx
	mov	r8,r12
	mov	rcx,rbx
	call	41BD88h
	test	r13,r13
	jz	41190Fh

l0000000000411962:
	mov	rcx,rbx
	call	r13
	jmp	41190Fh
000000000041196A                               90 90 90 90 90 90           ......

;; fn0000000000411970: 0000000000411970
;;   Called from:
;;     0000000000411D25 (in fn0000000000411CF0)
fn0000000000411970 proc
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,28h
	mov	eax,[rcx+18h]
	mov	rsi,[rcx+10h]
	mov	rbx,rcx
	mov	edx,eax
	and	edx,3h
	cmp	edx,2h
	jz	4119A3h

l000000000041198C:
	xor	edi,edi

l000000000041198E:
	mov	eax,edi
	mov	[rbx],rsi
	mov	dword ptr [rbx+8h],0h
	add	rsp,28h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret

l00000000004119A3:
	test	eax,108h
	jz	41198Ch

l00000000004119AA:
	mov	rbp,[rcx]
	xor	edi,edi
	sub	rbp,rsi
	test	rbp,rbp
	jle	41198Eh

l00000000004119B7:
	call	41BEC8h
	mov	r8d,ebp
	mov	rdx,rsi
	mov	ecx,eax
	call	41BED0h
	cdqe
	cmp	rax,rbp
	jnz	4119E3h

l00000000004119D0:
	mov	eax,[rbx+18h]
	test	al,80h
	jz	4119DDh

l00000000004119D7:
	and	eax,0FDh
	mov	[rbx+18h],eax

l00000000004119DD:
	mov	rsi,[rbx+10h]
	jmp	41198Eh

l00000000004119E3:
	or	dword ptr [rbx+18h],20h
	mov	rsi,[rbx+10h]
	mov	edi,0FFFFFFFFh
	jmp	41198Eh
00000000004119F2       66 66 66 66 66 2E 0F 1F 84 00 00 00 00 00   fffff.........

;; fn0000000000411A00: 0000000000411A00
;;   Called from:
;;     0000000000425778 (in fn0000000000425740)
;;     00000000004257D7 (in fn00000000004257A0)
;;     0000000000425B58 (in fn0000000000425B20)
;;     0000000000425BB7 (in fn0000000000425B80)
fn0000000000411A00 proc
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,30h
	cmp	r8d,1h
	mov	rbx,rcx
	mov	rsi,rdx
	jz	411A40h

l0000000000411A13:
	cmp	r8d,2h
	jz	411A60h

l0000000000411A19:
	test	r8d,r8d
	jnz	411A83h

l0000000000411A1E:
	lea	rdi,[rsp+28h]
	mov	[rsp+28h],rdx

l0000000000411A28:
	mov	rdx,rdi
	mov	rcx,rbx
	call	41BED8h

l0000000000411A33:
	add	rsp,30h
	pop	rbx
	pop	rsi
	pop	rdi
	ret
0000000000411A3B                                  0F 1F 44 00 00            ..D..

l0000000000411A40:
	lea	rdi,[rsp+28h]
	mov	rdx,rdi
	call	41BEE0h
	test	eax,eax
	jnz	411A95h

l0000000000411A51:
	add	[rsp+28h],rsi
	jmp	411A28h
0000000000411A58                         0F 1F 84 00 00 00 00 00         ........

l0000000000411A60:
	call	41BD50h
	mov	rcx,rbx
	lea	rdi,[rsp+28h]
	call	41BEC8h
	mov	ecx,eax
	call	41BEE8h
	add	rsi,rax
	mov	[rsp+28h],rsi
	jmp	411A28h

l0000000000411A83:
	call	41BDC0h
	mov	dword ptr [rax],16h
	mov	eax,0FFFFFFFFh
	jmp	411A33h

l0000000000411A95:
	mov	eax,0FFFFFFFFh
	jmp	411A33h
0000000000411A9C                                     0F 1F 40 00             ..@.

;; fn0000000000411AA0: 0000000000411AA0
;;   Called from:
;;     0000000000411D86 (in fn0000000000411CF0)
fn0000000000411AA0 proc
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,28h
	mov	rbx,rcx
	call	41BDC0h
	mov	rcx,rbx
	mov	dword ptr [rax],0h
	call	41BEC8h
	mov	ebp,eax
	mov	eax,[rbx+8h]
	test	eax,eax
	js	411C00h

l0000000000411AD3:
	xor	edx,edx
	mov	r8d,1h
	mov	ecx,ebp
	call	41BEF0h
	test	rax,rax
	mov	rsi,rax
	js	411C30h

l0000000000411AEE:
	mov	r8d,[rbx+18h]
	test	r8d,108h
	jz	411BF0h

l0000000000411AFF:
	mov	rax,[rbx]
	mov	rdx,[rbx+10h]
	mov	r9,rax
	sub	r9,rdx
	test	r8b,3h
	jnz	411B91h

l0000000000411B12:
	test	r8b,80h
	jz	411CD3h

l0000000000411B1C:
	mov	rdi,r9

l0000000000411B1F:
	test	rsi,rsi
	mov	rax,rdi
	jz	411B80h

l0000000000411B27:
	and	r8d,1h
	jz	411C10h

l0000000000411B31:
	movsxd	rax,dword ptr [rbx+8h]
	test	eax,eax
	jz	411C20h

l0000000000411B3D:
	mov	r14,[0000000000491F10]                                 ; [rip+000803CC]
	lea	r15,[r9+rax]
	mov	r13d,ebp
	sar	r13d,5h
	mov	r12d,ebp
	movsxd	r13,r13d
	and	r12d,1Fh
	mov	rax,[r14]
	shl	r12,6h
	mov	rax,[rax+r13*8]
	cmp	byte ptr [rax+8h],0h
	js	411C40h

l0000000000411B70:
	mov	r9,r15
	mov	rax,rdi

l0000000000411B76:
	sub	rsi,r9
	add	rax,rsi
	nop	dword ptr [rax+0h]

l0000000000411B80:
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

l0000000000411B91:
	mov	rcx,[0000000000491F10]                                 ; [rip+00080378]
	mov	r10d,ebp
	mov	rdi,r9
	sar	r10d,5h
	movsxd	r10,r10d
	mov	r11,[rcx]
	mov	ecx,ebp
	and	ecx,1Fh
	shl	rcx,6h
	add	rcx,[r11+r10*8]
	cmp	byte ptr [rcx+8h],0h
	jns	411B1Fh

l0000000000411BBF:
	cmp	rax,rdx
	jbe	411B1Ch

l0000000000411BC8:
	nop	dword ptr [rax+rax+0h]

l0000000000411BD0:
	xor	ecx,ecx
	cmp	byte ptr [rdx],0Ah
	setz	cl
	add	rdx,1h
	add	rdi,rcx
	cmp	rdx,rax
	jnz	411BD0h

l0000000000411BE4:
	jmp	411B1Fh
0000000000411BE9                            0F 1F 80 00 00 00 00          .......

l0000000000411BF0:
	movsxd	rax,dword ptr [rbx+8h]
	sub	rsi,rax
	mov	rax,rsi
	jmp	411B80h
0000000000411BFC                                     0F 1F 40 00             ..@.

l0000000000411C00:
	mov	dword ptr [rbx+8h],0h
	jmp	411AD3h
0000000000411C0C                                     0F 1F 40 00             ..@.

l0000000000411C10:
	mov	rax,rdi
	add	rax,rsi
	jmp	411B80h
0000000000411C1B                                  0F 1F 44 00 00            ..D..

l0000000000411C20:
	xor	eax,eax
	xor	r9d,r9d
	jmp	411B76h
0000000000411C2A                               66 0F 1F 44 00 00           f..D..

l0000000000411C30:
	mov	rax,-1h
	jmp	411B80h
0000000000411C3C                                     0F 1F 40 00             ..@.

l0000000000411C40:
	xor	edx,edx
	mov	r8d,2h
	mov	ecx,ebp
	call	41BEF0h
	cmp	rax,rsi
	jnz	411C8Bh

l0000000000411C54:
	mov	rax,[rbx+10h]
	lea	rcx,[rax+r15]
	cmp	rax,rcx
	jnc	411C75h

l0000000000411C61:
	xor	edx,edx
	cmp	byte ptr [rax],0Ah
	setz	dl
	add	rax,1h
	add	r15,rdx
	cmp	rax,rcx
	jnz	411C61h

l0000000000411C75:
	test	byte ptr [rbx+19h],20h
	jz	411B70h

l0000000000411C7F:
	lea	r9,[r15+1h]
	mov	rax,rdi
	jmp	411B76h

l0000000000411C8B:
	xor	r8d,r8d
	mov	rdx,rsi
	mov	ecx,ebp
	call	41BEF0h
	cmp	r15,+200h
	ja	411CB4h

l0000000000411CA1:
	mov	eax,[rbx+18h]
	mov	r9d,200h
	and	eax,408h
	cmp	eax,8h
	jz	411CB8h

l0000000000411CB4:
	movsxd	r9,dword ptr [rbx+24h]

l0000000000411CB8:
	mov	rax,[r14]
	mov	rax,[rax+r13*8]
	test	byte ptr [rax+8h],4h
	jz	411CCBh

l0000000000411CC7:
	add	r9,1h

l0000000000411CCB:
	mov	rax,rdi
	jmp	411B76h

l0000000000411CD3:
	call	41BDC0h
	mov	dword ptr [rax],16h
	mov	rax,-1h
	jmp	411B80h
0000000000411CEA                               66 0F 1F 44 00 00           f..D..

;; fn0000000000411CF0: 0000000000411CF0
fn0000000000411CF0 proc
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,20h
	mov	rbx,rcx
	mov	rdi,rdx
	mov	esi,r8d
	call	41BDC0h
	test	rbx,rbx
	mov	dword ptr [rax],0h
	jz	411D90h

l0000000000411D14:
	cmp	esi,2h
	ja	411D90h

l0000000000411D19:
	and	dword ptr [rbx+18h],0EFh
	cmp	esi,1h
	jz	411D80h

l0000000000411D22:
	mov	rcx,rbx
	call	411970h
	mov	eax,[rbx+18h]
	test	al,80h
	jnz	411D64h

l0000000000411D31:
	and	eax,409h
	cmp	eax,9h
	jz	411D70h

l0000000000411D3B:
	mov	rcx,rbx
	call	41BEC8h
	mov	r8d,esi
	mov	rdx,rdi
	mov	ecx,eax
	call	41BEF0h
	cmp	rax,0FFh
	setz	al
	movzx	eax,al
	neg	eax

l0000000000411D5C:
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	ret

l0000000000411D64:
	and	eax,0FCh
	mov	[rbx+18h],eax
	jmp	411D3Bh
0000000000411D6C                                     0F 1F 40 00             ..@.

l0000000000411D70:
	mov	dword ptr [rbx+24h],200h
	jmp	411D3Bh
0000000000411D79                            0F 1F 80 00 00 00 00          .......

l0000000000411D80:
	mov	rcx,rbx
	xor	sil,sil
	call	411AA0h
	add	rdi,rax
	jmp	411D22h

l0000000000411D90:
	call	41BDC0h
	mov	dword ptr [rax],16h
	mov	eax,0FFFFFFFFh
	jmp	411D5Ch
0000000000411DA2       66 66 66 66 66 2E 0F 1F 84 00 00 00 00 00   fffff.........

;; fn0000000000411DB0: 0000000000411DB0
fn0000000000411DB0 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	xor	ebx,ebx
	mov	esi,ecx
	call	41BEF8h
	lea	rcx,[0000000000490740]                                 ; [rip+0007E97A]
	mov	[rax],esi
	jmp	411DE2h
0000000000411DCA                               66 0F 1F 44 00 00           f..D..

l0000000000411DD0:
	lea	rdx,[0000000000490744]                                 ; [rip+0007E96D]
	add	rbx,1h
	cmp	dword ptr [rdx+rax+8h],0FFh
	jz	411E10h

l0000000000411DE2:
	cmp	[rcx+rbx*8],esi
	lea	rax,[0000h+rbx*8]
	jnz	411DD0h

l0000000000411DEF:
	call	41BDC0h
	lea	rdx,[0000000000490740]                                 ; [rip+0007E945]
	mov	edx,[rdx+rbx*8+4h]
	mov	[rax],edx
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret
0000000000411E08                         0F 1F 84 00 00 00 00 00         ........

l0000000000411E10:
	lea	eax,[rsi-13h]
	cmp	eax,11h
	jbe	411E47h

l0000000000411E18:
	sub	esi,0BCh
	cmp	esi,0Eh
	jbe	411E35h

l0000000000411E23:
	call	41BDC0h
	mov	dword ptr [rax],16h
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret

l0000000000411E35:
	call	41BDC0h
	mov	dword ptr [rax],8h
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret

l0000000000411E47:
	call	41BDC0h
	mov	dword ptr [rax],0Dh
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret
0000000000411E59                            90 90 90 90 90 90 90          .......

;; fn0000000000411E60: 0000000000411E60
;;   Called from:
;;     0000000000425785 (in fn0000000000425740)
;;     00000000004257F4 (in fn00000000004257A0)
;;     0000000000425B65 (in fn0000000000425B20)
;;     0000000000425BD4 (in fn0000000000425B80)
fn0000000000411E60 proc
	sub	rsp,38h
	lea	rdx,[rsp+28h]
	call	41BEE0h
	test	eax,eax
	mov	rax,-1h
	cmovz	rax,[rsp+28h]

l0000000000411E7D:
	add	rsp,38h
	ret
0000000000411E82       90 90 90 90 90 90 90 90 90 90 90 90 90 90   ..............

;; fn0000000000411E90: 0000000000411E90
;;   Called from:
;;     000000000046FFE2 (in fn000000000046FF90)
;;     0000000000470048 (in fn000000000046FF90)
fn0000000000411E90 proc
	push	rsi
	push	rbx
	sub	rsp,38h
	test	rdx,rdx
	mov	rsi,rcx
	jz	411ED0h

l0000000000411E9E:
	lea	rbx,[rdx-1h]
	mov	[rsp+20h],r9
	mov	rdx,rcx
	mov	r9,r8
	xor	ecx,ecx
	mov	r8d,ebx
	call	4149D0h
	cmp	eax,ebx
	cmovle	ebx,eax

l0000000000411EBC:
	movsxd	rbx,ebx
	mov	byte ptr [rsi+rbx],0h
	add	rsp,38h
	pop	rbx
	pop	rsi
	ret
0000000000411ECA                               66 0F 1F 44 00 00           f..D..

l0000000000411ED0:
	mov	[rsp+20h],r9
	mov	rdx,rcx
	mov	r9,r8
	xor	ecx,ecx
	xor	r8d,r8d
	call	4149D0h
	add	rsp,38h
	pop	rbx
	pop	rsi
	ret
0000000000411EEC                                     90 90 90 90             ....

;; fn0000000000411EF0: 0000000000411EF0
;;   Called from:
;;     0000000000454D36 (in fn0000000000454D00)
fn0000000000411EF0 proc
	jmp	41BF00h
0000000000411EF5                90 90 90 90 90 90 90 90 90 90 90      ...........

;; fn0000000000411F00: 0000000000411F00
;;   Called from:
;;     0000000000454E9C (in fn0000000000454E80)
;;     0000000000455077 (in fn0000000000455020)
fn0000000000411F00 proc
	jmp	41BEF0h
0000000000411F05                90 90 90 90 90 90 90 90 90 90 90      ...........

;; fn0000000000411F10: 0000000000411F10
;;   Called from:
;;     000000000046FD5C (in fn000000000046FD00)
fn0000000000411F10 proc
	sub	rsp,58h
	lea	r8,[0000000000477070]                                  ; [rip+00065155]
	lea	rax,[rsp+40h]
	lea	r9,[rsp+4Ch]
	mov	[rsp+20h],rax
	call	415960h
	mov	edx,eax
	and	edx,7h
	cmp	edx,5h
	ja	411FB0h

l0000000000411F39:
	lea	rcx,[00000000004908C0]                                 ; [rip+0007E980]
	movsxd	rdx,dword ptr [rcx+rdx*4]
	add	rcx,rdx
	jmp	rcx
0000000000411F49                            0F 1F 80 00 00 00 00          .......

l0000000000411F50:
	mov	edx,7F800000h

l0000000000411F55:
	mov	ecx,edx
	or	ecx,80000000h
	test	al,8h
	cmovnz	edx,ecx

l0000000000411F62:
	mov	[rsp+3Ch],edx
	movss	xmm0,dword ptr [rsp+3Ch]
	add	rsp,58h
	ret

l0000000000411F71:
	mov	edx,[rsp+40h]
	jmp	411F55h
0000000000411F77                      66 0F 1F 84 00 00 00 00 00        f........

l0000000000411F80:
	mov	ecx,[rsp+4Ch]
	lea	edx,[rcx+96h]
	mov	ecx,[rsp+40h]
	shl	edx,17h
	and	ecx,7FFFFFh
	or	edx,ecx
	jmp	411F55h
0000000000411F9B                                  0F 1F 44 00 00            ..D..

l0000000000411FA0:
	mov	edx,7FC00000h
	jmp	411F55h
0000000000411FA7                      66 0F 1F 84 00 00 00 00 00        f........

l0000000000411FB0:
	xor	edx,edx
	jmp	411F55h
0000000000411FB4             90 90 90 90 90 90 90 90 90 90 90 90     ............

;; fn0000000000411FC0: 0000000000411FC0
;;   Called from:
;;     000000000046FB1C (in fn000000000046FAC0)
fn0000000000411FC0 proc
	push	rbx
	sub	rsp,60h
	lea	r8,[0000000000477090]                                  ; [rip+000650C4]
	lea	rax,[rsp+50h]
	lea	r9,[rsp+4Ch]
	mov	[rsp+20h],rax
	call	415960h
	mov	edx,eax
	and	edx,7h
	cmp	edx,6h
	ja	412015h

l0000000000411FEA:
	lea	rcx,[00000000004908E0]                                 ; [rip+0007E8EF]
	movsxd	rdx,dword ptr [rcx+rdx*4]
	add	rcx,rdx
	jmp	rcx
0000000000411FFA                               66 0F 1F 44 00 00           f..D..

l0000000000412000:
	mov	ebx,[rsp+54h]
	mov	edx,[rsp+50h]
	or	ebx,7FF00000h
	shl	rbx,20h
	or	rbx,rdx

l0000000000412015:
	test	al,8h
	jz	41202Eh

l0000000000412019:
	mov	rax,rbx
	mov	ebx,ebx
	shr	rax,20h
	or	eax,80000000h
	shl	rax,20h
	or	rbx,rax

l000000000041202E:
	mov	[rsp+38h],rbx
	movsd	xmm0,double ptr [rsp+38h]
	add	rsp,60h
	pop	rbx
	ret
000000000041203F                                              90                .

l0000000000412040:
	mov	rbx,7FF8000000000000h
	jmp	412015h
000000000041204C                                     0F 1F 40 00             ..@.

l0000000000412050:
	xor	ebx,ebx
	jmp	412015h

l0000000000412054:
	mov	ebx,[rsp+4Ch]
	mov	edx,[rsp+54h]
	add	ebx,433h
	and	edx,0FFEFFFFFh
	shl	ebx,14h
	or	ebx,edx
	mov	edx,[rsp+50h]
	shl	rbx,20h
	or	rbx,rdx
	jmp	412015h
000000000041207A                               66 0F 1F 44 00 00           f..D..

l0000000000412080:
	mov	ebx,[rsp+54h]
	mov	edx,[rsp+50h]
	shl	rbx,20h
	or	rbx,rdx
	jmp	412015h

l0000000000412091:
	mov	rbx,7FF0000000000000h
	jmp	412015h

;; fn00000000004120A0: 00000000004120A0
;;   Called from:
;;     0000000000412A7A (in fn0000000000412A50)
fn00000000004120A0 proc
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,+0D8h
	mov	rbp,rcx
	mov	[rsp+128h],rdx
	call	41BF08h
	mov	rax,[rax]
	mov	rcx,rbp
	mov	r14,rbp
	movzx	eax,byte ptr [rax]
	mov	[rsp+30h],al
	call	41BCB8h
	lea	r13d,[rax+2h]
	mov	r12,rax
	movsxd	rcx,r13d
	call	41BCB0h
	mov	rdi,rax
	jmp	4120F4h
00000000004120EC                                     0F 1F 40 00             ..@.

l00000000004120F0:
	add	r14,1h

l00000000004120F4:
	movzx	ecx,byte ptr [r14]
	mov	esi,r14d
	sub	esi,ebp
	mov	ebx,ecx
	call	41BF10h
	test	eax,eax
	jnz	4120F0h

l0000000000412108:
	test	r13d,r13d
	jle	4128D9h

l0000000000412111:
	test	bl,bl
	lea	rdx,[rdi+1h]
	lea	rax,[r14+1h]
	mov	[rdi],bl
	jz	412148h

l000000000041211F:
	add	r12d,1h
	lea	r8,[r14+1h]
	jmp	412143h
000000000041212A                               66 0F 1F 44 00 00           f..D..

l0000000000412130:
	add	rax,1h
	movzx	ecx,byte ptr [rax-1h]
	add	rdx,1h
	test	cl,cl
	mov	[rdx-1h],cl
	jz	412148h

l0000000000412143:
	cmp	rax,r8
	jnz	412130h

l0000000000412148:
	mov	byte ptr [rdx],0h
	movzx	eax,byte ptr [rdi]
	cmp	al,2Dh
	jz	412290h

l0000000000412156:
	xor	edx,edx
	mov	rbx,rdi
	cmp	al,2Bh
	mov	[rsp+4Eh],dx
	lea	rdx,[rdi+1h]
	cmovz	rbx,rdx

l000000000041216A:
	lea	rcx,[0000000000490900]                                 ; [rip+0007E78F]
	mov	r8d,3h
	mov	rdx,rbx
	call	41BF18h
	test	eax,eax
	jnz	412210h

l0000000000412187:
	lea	rbp,[rbx+3h]
	lea	rcx,[0000000000490904]                                 ; [rip+0007E772]
	mov	r8d,5h
	add	rbx,8h
	lea	r13,[rsp+70h]
	mov	rdx,rbp
	call	41BF18h
	test	eax,eax
	mov	eax,7FFFh
	mov	qword ptr [rsp+70h],+0h
	cmovz	rbp,rbx

l00000000004121BD:
	xor	r15d,r15d
	mov	qword ptr [rsp+78h],+0h
	mov	[rsp+80h],r15w
	mov	[rsp+72h],ax

l00000000004121D7:
	movzx	eax,word ptr [rsp+4Eh]
	mov	rdx,[rsp+128h]
	mov	rcx,r13
	mov	[rsp+70h],ax
	call	417BF0h

l00000000004121F1:
	sub	rbp,rdi
	add	ebp,esi

l00000000004121F6:
	mov	eax,ebp
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
000000000041220C                                     0F 1F 40 00             ..@.

l0000000000412210:
	lea	rcx,[000000000049090A]                                 ; [rip+0007E6F3]
	mov	r8d,3h
	mov	rdx,rbx
	call	41BF18h
	test	eax,eax
	jnz	4122A3h

l0000000000412229:
	xor	r13d,r13d
	lea	rbp,[rbx+3h]
	mov	r8d,7FFFh
	xor	r9d,r9d
	mov	r10d,0FFFFC000h
	xor	r11d,r11d
	xor	ebx,ebx
	xor	r12d,r12d
	xor	r14d,r14d
	mov	[rsp+7Eh],r13w
	mov	[rsp+72h],r8w
	lea	r13,[rsp+70h]
	mov	[rsp+74h],r9w
	mov	[rsp+76h],r10w
	mov	[rsp+78h],r11w
	mov	[rsp+7Ah],bx
	mov	[rsp+7Ch],r12w
	mov	[rsp+80h],r14w
	jmp	4121D7h
0000000000412286                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l0000000000412290:
	mov	ecx,0FFFFFFFFh
	lea	rbx,[rdi+1h]
	mov	[rsp+4Eh],cx
	jmp	41216Ah

l00000000004122A3:
	movzx	eax,byte ptr [rbx]
	xor	ecx,ecx
	mov	qword ptr [rsp+70h],+0h
	mov	qword ptr [rsp+78h],+0h
	mov	[rsp+80h],cx
	cmp	al,30h
	jnz	412938h

l00000000004122CA:
	nop	word ptr [rax+rax+0h]

l00000000004122D0:
	add	rbx,1h
	movzx	eax,byte ptr [rbx]
	cmp	al,30h
	jz	4122D0h

l00000000004122DB:
	mov	dword ptr [rsp+6Ch],1h

l00000000004122E3:
	mov	[rsp+68h],esi
	movsx	esi,al
	lea	r13,[rsp+70h]
	lea	r14,[rsp+90h]
	sub	esi,30h
	xor	r10d,r10d
	xor	r9d,r9d
	cmp	esi,9h
	mov	[rsp+60h],rdi
	mov	dword ptr [rsp+5Ch],0h
	lea	r15,[r13+2h]
	lea	r12,[r14+2h]
	mov	ebp,r10d
	mov	edi,r9d
	ja	41244Dh

l0000000000412324:
	movzx	eax,word ptr [rsp+74h]
	test	ax,ax
	jnz	412460h

l0000000000412332:
	cmp	edi,1h
	lea	rdx,[r13+10h]
	sbb	ebp,0FFh
	xor	r8d,r8d
	nop

l0000000000412340:
	movzx	ecx,word ptr [rdx]
	mov	r11d,r8d
	or	r11d,1h
	test	cx,cx
	cmovs	r8d,r11d

l0000000000412351:
	add	ecx,ecx
	test	r8b,2h
	jz	41235Ch

l0000000000412359:
	or	ecx,1h

l000000000041235C:
	mov	[rdx],cx
	sub	rdx,2h
	add	r8d,r8d
	cmp	rdx,r15
	jnz	412340h

l000000000041236B:
	mov	rdx,[r13+0h]
	lea	rcx,[r14+10h]
	mov	[r14],rdx
	mov	rdx,[r13+8h]
	mov	[r14+8h],rdx
	xor	edx,edx
	mov	[rsp+0A0h],dx
	xor	edx,edx
	jmp	412393h
000000000041238C                                     0F 1F 40 00             ..@.

l0000000000412390:
	movzx	eax,word ptr [rcx]

l0000000000412393:
	mov	r8d,edx
	or	r8d,1h
	test	ax,ax
	cmovs	edx,r8d

l00000000004123A1:
	add	eax,eax
	test	dl,2h
	jz	4123ABh

l00000000004123A8:
	or	eax,1h

l00000000004123AB:
	mov	[rcx],ax
	sub	rcx,2h
	add	edx,edx
	cmp	rcx,r12
	jnz	412390h

l00000000004123B9:
	lea	rcx,[r14+10h]
	xor	eax,eax
	nop

l00000000004123C0:
	movzx	edx,word ptr [rcx]
	mov	r8d,eax
	or	r8d,1h
	test	dx,dx
	cmovs	eax,r8d

l00000000004123D1:
	add	edx,edx
	test	al,2h
	jz	4123DAh

l00000000004123D7:
	or	edx,1h

l00000000004123DA:
	mov	[rcx],dx
	sub	rcx,2h
	add	eax,eax
	cmp	rcx,r12
	jnz	4123C0h

l00000000004123E8:
	mov	rdx,r13
	mov	rcx,r14
	mov	[rsp+50h],r9d
	mov	[rsp+58h],r10d
	call	417840h
	xor	eax,eax
	mov	qword ptr [r14],+0h
	mov	qword ptr [r14+8h],+0h
	mov	[r14+10h],ax
	mov	rdx,r13
	mov	rcx,r14
	mov	[rsp+9Eh],si
	call	417840h
	mov	r10d,[rsp+58h]
	mov	r9d,[rsp+50h]

l0000000000412430:
	or	r9d,esi
	add	r10d,1h

l0000000000412437:
	add	rbx,1h
	movzx	eax,byte ptr [rbx]
	movsx	esi,al
	sub	esi,30h
	cmp	esi,9h
	jbe	412324h

l000000000041244D:
	cmp	al,[rsp+30h]
	jnz	41246Ch

l0000000000412453:
	test	edi,edi
	jnz	412552h

l000000000041245B:
	mov	dil,1h
	jmp	412437h

l0000000000412460:
	or	[rsp+5Ch],esi
	cmp	edi,1h
	sbb	ebp,0h
	jmp	412430h

l000000000041246C:
	and	eax,0DFh
	mov	edx,r10d
	mov	[rsp+30h],r9d
	cmp	al,45h
	mov	r10d,ebp
	mov	rdi,[rsp+60h]
	mov	esi,[rsp+68h]
	mov	ebp,edx
	jnz	412568h

l000000000041248D:
	or	ebp,[rsp+6Ch]
	jz	412930h

l0000000000412497:
	movsx	eax,byte ptr [rbx+1h]
	cmp	al,2Dh
	jz	412974h

l00000000004124A3:
	lea	rdx,[rbx+1h]
	mov	ecx,1h

l00000000004124AC:
	cmp	al,2Bh
	jz	412967h

l00000000004124B4:
	lea	r8d,[rax-30h]
	cmp	r8b,9h
	ja	412930h

l00000000004124C2:
	mov	rbx,rdx
	xor	r12d,r12d

l00000000004124C8:
	cmp	r12d,1371h
	jg	4124DAh

l00000000004124D1:
	lea	edx,[r12]
	lea	r12d,[rax+rdx*2-30h]

l00000000004124DA:
	add	rbx,1h
	movsx	eax,byte ptr [rbx]
	lea	edx,[rax-30h]
	cmp	dl,9h
	jbe	4124C8h

l00000000004124E9:
	cmp	ecx,0FFh
	jz	4129E1h

l00000000004124F2:
	cmp	r12d,1371h
	jle	41256Fh

l00000000004124FB:
	mov	r14d,[rsp+30h]
	xor	r12d,r12d
	mov	qword ptr [rsp+70h],+0h
	mov	qword ptr [rsp+78h],+0h
	mov	[rsp+80h],r12w
	test	r14d,r14d
	jz	412A40h

l0000000000412527:
	movzx	eax,word ptr [rsp+4Eh]
	mov	rdx,[rsp+128h]
	mov	r11d,7FFFh
	mov	rcx,r13
	mov	[rsp+72h],r11w
	mov	[rsp+70h],ax
	call	417BF0h
	jmp	4126E1h

l0000000000412552:
	mov	rdi,[rsp+60h]
	mov	esi,[rsp+68h]
	mov	eax,r10d
	mov	[rsp+30h],r9d
	mov	r10d,ebp
	mov	ebp,eax

l0000000000412568:
	or	ebp,[rsp+6Ch]
	xor	r12d,r12d

l000000000041256F:
	sub	r12d,r10d
	test	r12d,r12d
	jle	412740h

l000000000041257B:
	cmp	word ptr [rsp+74h],0h
	jnz	412692h

l0000000000412587:
	lea	r15,[rsp+90h]
	lea	r14,[r15+2h]

l0000000000412593:
	mov	rax,[r13+0h]
	xor	r8d,r8d
	lea	rdx,[r15+10h]
	mov	[r15],rax
	mov	rax,[r13+8h]
	mov	[r15+8h],rax
	mov	[rsp+0A0h],r8w
	xor	eax,eax
	xor	r8d,r8d
	jmp	4125C4h
00000000004125B9                            0F 1F 80 00 00 00 00          .......

l00000000004125C0:
	movzx	r8d,word ptr [rdx]

l00000000004125C4:
	mov	ecx,eax
	or	ecx,1h
	test	r8w,r8w
	cmovs	eax,ecx

l00000000004125D0:
	add	r8d,r8d
	test	al,2h
	jz	4125DBh

l00000000004125D7:
	or	r8d,1h

l00000000004125DB:
	mov	[rdx],r8w
	sub	rdx,2h
	add	eax,eax
	cmp	rdx,r14
	jnz	4125C0h

l00000000004125EA:
	lea	rcx,[r15+10h]
	xor	eax,eax

l00000000004125F0:
	movzx	edx,word ptr [rcx]
	mov	r8d,eax
	or	r8d,1h
	test	dx,dx
	cmovs	eax,r8d

l0000000000412601:
	add	edx,edx
	test	al,2h
	jz	41260Ah

l0000000000412607:
	or	edx,1h

l000000000041260A:
	mov	[rcx],dx
	sub	rcx,2h
	add	eax,eax
	cmp	rcx,r14
	jnz	4125F0h

l0000000000412618:
	mov	rcx,r13
	mov	rdx,r15
	call	417840h
	lea	rcx,[r15+10h]
	xor	eax,eax
	nop	dword ptr [rax+0h]

l0000000000412630:
	movzx	edx,word ptr [rcx]
	mov	r8d,eax
	or	r8d,1h
	test	dx,dx
	cmovs	eax,r8d

l0000000000412641:
	add	edx,edx
	test	al,2h
	jz	41264Ah

l0000000000412647:
	or	edx,1h

l000000000041264A:
	mov	[rcx],dx
	sub	rcx,2h
	add	eax,eax
	cmp	rcx,r14
	jnz	412630h

l0000000000412658:
	cmp	word ptr [rsp+94h],0h
	jnz	412692h

l0000000000412663:
	mov	rax,[r15]
	xor	ecx,ecx
	sub	r12d,1h
	mov	[r13+0h],rax
	mov	rax,[r15+8h]
	mov	[r13+8h],rax
	mov	[rsp+80h],cx
	jz	4128E1h

l0000000000412686:
	cmp	word ptr [rsp+74h],0h
	jz	412593h

l0000000000412692:
	mov	rcx,r13
	call	417ED0h
	cmp	eax,50h
	jle	412822h

l00000000004126A3:
	xor	edx,edx
	mov	qword ptr [rsp+70h],+0h
	mov	qword ptr [rsp+78h],+0h
	mov	[rsp+80h],dx

l00000000004126BF:
	movzx	eax,word ptr [rsp+4Eh]
	mov	rdx,[rsp+128h]
	mov	rcx,r13
	mov	[rsp+70h],ax
	call	417BF0h
	mov	eax,[rsp+30h]
	test	eax,eax
	jz	41272Dh

l00000000004126E1:
	mov	rax,[rsp+128h]
	fld	tword ptr [rax]
	fld	st(0)
	fstp	tword ptr [rsp+30h]
	fldz
	fxch	st(0),st(1)
	fucomip	st(0),st(1)
	fstp	st(0)
	jpe	4126FDh

l00000000004126FB:
	jz	412722h

l00000000004126FD:
	mov	rax,[rsp+38h]
	and	ax,7FFFh
	cmp	ax,7FFFh
	jnz	41272Dh

l000000000041270C:
	mov	rax,[rsp+30h]
	mov	rdx,rax
	shr	rdx,20h
	and	edx,7FFFFFFFh
	or	edx,eax
	jnz	41272Dh

l0000000000412722:
	call	41BDC0h
	mov	dword ptr [rax],22h

l000000000041272D:
	test	ebp,ebp
	jz	4121F6h

l0000000000412735:
	jmp	412A37h
000000000041273A                               66 0F 1F 44 00 00           f..D..

l0000000000412740:
	mov	rcx,r13
	call	417ED0h
	cmp	eax,50h
	jg	4126A3h

l0000000000412751:
	mov	edx,[rsp+5Ch]
	mov	r9d,404Eh
	xor	r8d,r8d
	sub	r9d,eax
	mov	dword ptr [rsp+28h],50h
	mov	dword ptr [rsp+20h],40h
	mov	rcx,r13
	call	418080h
	movzx	eax,word ptr [rsp+72h]
	xor	edx,edx
	test	r12d,r12d
	mov	[rsp+58h],eax
	jz	4127FDh

l0000000000412789:
	mov	r9d,r12d
	neg	r9d
	cmp	r9d,1000h
	jg	412986h

l000000000041279C:
	lea	rax,[rsp+0B0h]
	mov	dword ptr [rsp+5Ch],0FFFFFFFFh
	mov	[rsp+50h],rax
	jmp	41286Bh

l00000000004127B6:
	mov	rdx,[rsp+50h]
	mov	rcx,r15
	mov	rbx,[rsp+60h]
	call	417750h
	cmp	dword ptr [rsp+5Ch],0FFh
	movzx	eax,word ptr [rsp+0B2h]
	mov	r14d,[rsp+58h]
	jz	412945h

l00000000004127E0:
	mov	rcx,[rsp+50h]
	add	r14d,eax
	mov	rdx,r13
	call	417B10h
	mov	edx,eax
	lea	eax,[r14-3FFEh]
	mov	[rsp+58h],eax

l00000000004127FD:
	mov	r9d,[rsp+58h]
	mov	dword ptr [rsp+28h],40h
	xor	r8d,r8d
	mov	dword ptr [rsp+20h],40h
	mov	rcx,r13
	call	418080h
	jmp	4126BFh

l0000000000412822:
	mov	edx,[rsp+5Ch]
	mov	r9d,404Eh
	mov	dword ptr [rsp+28h],50h
	sub	r9d,eax
	mov	dword ptr [rsp+20h],40h
	xor	r8d,r8d
	mov	rcx,r13
	call	418080h
	movzx	eax,word ptr [rsp+72h]
	mov	r9d,r12d
	mov	dword ptr [rsp+5Ch],1h
	mov	[rsp+58h],eax
	lea	rax,[rsp+0B0h]
	mov	[rsp+50h],rax

l000000000041286B:
	mov	rax,[00000000004909DC]                                 ; [rip+0007E16A]
	mov	[rsp+60h],rbx
	lea	r14,[00000000004909D0]                                 ; [rip+0007E152]
	mov	r12d,1h
	lea	r15,[rsp+90h]
	mov	ebx,r9d
	mov	[rsp+90h],rax
	mov	eax,[00000000004909E4]                                 ; [rip+0007E147]
	mov	[rsp+98h],eax
	jmp	4128C4h
00000000004128A6                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l00000000004128B0:
	add	r12d,r12d
	sub	r14,0Ch
	cmp	r12d,1000h
	jg	4127B6h

l00000000004128C4:
	test	r12d,ebx
	jz	4128B0h

l00000000004128C9:
	mov	r8,r15
	mov	rdx,r15
	mov	rcx,r14
	call	418440h
	jmp	4128B0h

l00000000004128D9:
	mov	rdx,rdi
	jmp	412148h

l00000000004128E1:
	mov	rcx,r13
	call	417ED0h
	cmp	eax,50h
	jg	4126A3h

l00000000004128F2:
	mov	edx,[rsp+5Ch]
	mov	r9d,404Eh
	mov	dword ptr [rsp+28h],50h
	sub	r9d,eax
	mov	dword ptr [rsp+20h],40h
	xor	r8d,r8d
	mov	rcx,r13
	call	418080h
	movzx	eax,word ptr [rsp+72h]
	xor	edx,edx
	mov	[rsp+58h],eax
	jmp	4127FDh
000000000041292A                               66 0F 1F 44 00 00           f..D..

l0000000000412930:
	xor	r12d,r12d
	jmp	41256Fh

l0000000000412938:
	mov	dword ptr [rsp+6Ch],0h
	jmp	4122E3h

l0000000000412945:
	mov	rcx,[rsp+50h]
	sub	r14d,eax
	mov	rdx,r13
	call	4178C0h
	mov	edx,eax
	lea	eax,[r14+3FFFh]
	mov	[rsp+58h],eax
	jmp	4127FDh

l0000000000412967:
	movsx	eax,byte ptr [rdx+1h]
	add	rdx,1h
	jmp	4124B4h

l0000000000412974:
	lea	rdx,[rbx+2h]
	movsx	eax,byte ptr [rbx+2h]
	mov	ecx,0FFFFFFFFh
	jmp	4124ACh

l0000000000412986:
	lea	rax,[rsp+0B0h]
	lea	rcx,[0000000000490940]                                 ; [rip+0007DFAB]
	mov	rdx,rax
	mov	r15,rax
	mov	[rsp+50h],rax
	call	417750h
	movzx	eax,word ptr [rsp+0B2h]
	mov	r14d,[rsp+58h]
	mov	rdx,r13
	mov	rcx,r15
	sub	r14d,eax
	call	4178C0h
	lea	eax,[r14+3FFFh]
	mov	r9d,0FFFFF000h
	mov	dword ptr [rsp+5Ch],0FFFFFFFFh
	sub	r9d,r12d
	mov	[rsp+58h],eax
	jmp	41286Bh

l00000000004129E1:
	neg	r12d
	cmp	r12d,0FFFFEC8Fh
	jge	41256Fh

l00000000004129F1:
	movzx	eax,word ptr [rsp+4Eh]
	mov	rdx,[rsp+128h]
	xor	r9d,r9d
	mov	rcx,r13
	mov	qword ptr [rsp+70h],+0h
	mov	qword ptr [rsp+78h],+0h
	mov	[rsp+80h],r9w
	mov	[rsp+70h],ax
	call	417BF0h
	mov	r10d,[rsp+30h]
	test	r10d,r10d
	jnz	4126E1h

l0000000000412A37:
	mov	rbp,rbx
	jmp	4121F1h
0000000000412A3F                                              90                .

l0000000000412A40:
	mov	rbp,rbx
	jmp	4121D7h
0000000000412A48                         0F 1F 84 00 00 00 00 00         ........

;; fn0000000000412A50: 0000000000412A50
;;   Called from:
;;     000000000046FC41 (in fn000000000046FBE0)
fn0000000000412A50 proc
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,30h
	mov	rdi,rdx
	lea	rdx,[rsp+20h]
	mov	rsi,r8
	mov	rbx,rcx
	mov	rcx,rdi
	mov	qword ptr [rsp+20h],+0h
	mov	qword ptr [rsp+28h],+0h
	call	4120A0h
	test	rsi,rsi
	jz	412A8Eh

l0000000000412A84:
	movsxd	r9,eax
	lea	rdx,[rdi+r9]
	mov	[rsi],rdx

l0000000000412A8E:
	fld	tword ptr [rsp+20h]
	mov	rax,rbx
	fstp	tword ptr [rbx]
	add	rsp,30h
	pop	rbx
	pop	rsi
	pop	rdi
	ret
0000000000412A9F                                              90                .

;; fn0000000000412AA0: 0000000000412AA0
;;   Called from:
;;     000000000042B7E3 (in fn000000000042B7B0)
;;     000000000042B812 (in fn000000000042B7B0)
;;     000000000042B833 (in fn000000000042B7B0)
;;     000000000042B853 (in fn000000000042B7B0)
;;     000000000042B867 (in fn000000000042B7B0)
;;     000000000042B877 (in fn000000000042B7B0)
;;     000000000042B88A (in fn000000000042B7B0)
;;     000000000042B897 (in fn000000000042B7B0)
;;     000000000042B8A7 (in fn000000000042B7B0)
;;     000000000042B8B7 (in fn000000000042B7B0)
;;     000000000042B8C7 (in fn000000000042B7B0)
fn0000000000412AA0 proc
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,28h
	lea	rbp,[0000000000490A80]                                 ; [rip+0007DFD1]
	xor	ebx,ebx
	mov	rdi,rcx
	mov	rsi,rbp
	nop	word ptr [rax+rax+0h]

l0000000000412AC0:
	mov	rdx,[rsi]
	mov	rcx,rdi
	call	41BDB0h
	test	eax,eax
	jz	412AF0h

l0000000000412ACF:
	add	ebx,1h
	add	rsi,10h
	cmp	ebx,0Bh
	jnz	412AC0h

l0000000000412ADB:
	xor	eax,eax
	add	rsp,28h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
0000000000412AE6                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l0000000000412AF0:
	movsxd	rbx,ebx
	shl	rbx,4h
	movzx	eax,word ptr [rbp+rbx+8h]
	add	rsp,28h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
0000000000412B05                90 90 90 90 90 90 90 90 90 90 90      ...........

;; fn0000000000412B10: 0000000000412B10
;;   Called from:
;;     000000000042BA57 (in fn000000000042BA10)
;;     000000000042BAC4 (in fn000000000042BA10)
;;     000000000042BAF7 (in fn000000000042BAE0)
;;     0000000000468EB3 (in fn0000000000468E90)
fn0000000000412B10 proc
	sub	rsp,58h
	mov	[rsp+4Ah],cx
	mov	dword ptr [rsp+4Ch],0h
	call	41BF20h
	lea	rdx,[rsp+4Ch]
	mov	qword ptr [rsp+30h],+0h
	mov	dword ptr [rsp+28h],1h
	mov	r9d,1h
	lea	r8,[rsp+4Ah]
	mov	ecx,eax
	mov	[rsp+38h],rdx
	lea	rdx,[rsp+49h]
	mov	[rsp+20h],rdx
	xor	edx,edx
	call	[00000000004AF704]                                    ; [rip+0009CBA4]
	test	eax,eax
	jz	412B80h

l0000000000412B64:
	mov	eax,[rsp+4Ch]
	test	eax,eax
	jnz	412B80h

l0000000000412B6C:
	movsx	eax,byte ptr [rsp+49h]

l0000000000412B71:
	add	rsp,58h
	ret
0000000000412B76                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l0000000000412B80:
	mov	eax,0FFFFFFFFh
	jmp	412B71h
0000000000412B87                      90 90 90 90 90 90 90 90 90        .........

;; fn0000000000412B90: 0000000000412B90
;;   Called from:
;;     0000000000468EC5 (in fn0000000000468E90)
fn0000000000412B90 proc
	sub	rsp,48h
	mov	eax,0FFFFFFFFh
	cmp	ecx,0FFh
	jz	412BDBh

l0000000000412B9E:
	mov	[rsp+3Dh],cl
	mov	[rsp+3Eh],ax
	call	41BF20h
	lea	rdx,[rsp+3Eh]
	mov	dword ptr [rsp+28h],1h
	mov	r9d,1h
	lea	r8,[rsp+3Dh]
	mov	ecx,eax
	mov	[rsp+20h],rdx
	mov	edx,8h
	call	[00000000004AF604]                                    ; [rip+0009CA2E]
	movzx	eax,word ptr [rsp+3Eh]

l0000000000412BDB:
	add	rsp,48h
	ret

;; fn0000000000412BE0: 0000000000412BE0
;;   Called from:
;;     0000000000412C95 (in fn0000000000412C60)
;;     0000000000412D25 (in fn0000000000412CB0)
;;     0000000000412DB8 (in fn0000000000412CB0)
fn0000000000412BE0 proc
	sub	rsp,58h
	test	r8d,r8d
	mov	eax,r8d
	mov	[rsp+68h],dx
	jnz	412C04h

l0000000000412BF1:
	cmp	dx,0FFh
	ja	412C4Ah

l0000000000412BF8:
	mov	[rcx],dl
	mov	eax,1h

l0000000000412BFF:
	add	rsp,58h
	ret

l0000000000412C04:
	lea	rdx,[rsp+4Ch]
	mov	[rsp+28h],r9d
	mov	[rsp+20h],rcx
	mov	dword ptr [rsp+4Ch],0h
	mov	qword ptr [rsp+30h],+0h
	mov	r9d,1h
	mov	[rsp+38h],rdx
	lea	r8,[rsp+68h]
	xor	edx,edx
	mov	ecx,eax
	call	[00000000004AF704]                                    ; [rip+0009CAC6]
	test	eax,eax
	jz	412C4Ah

l0000000000412C42:
	mov	edx,[rsp+4Ch]
	test	edx,edx
	jz	412BFFh

l0000000000412C4A:
	call	41BDC0h
	mov	dword ptr [rax],2Ah
	mov	eax,0FFFFFFFFh
	add	rsp,58h
	ret
0000000000412C5F                                              90                .

;; fn0000000000412C60: 0000000000412C60
;;   Called from:
;;     00000000004132F8 (in fn00000000004132D0)
;;     0000000000413344 (in fn00000000004132D0)
;;     0000000000413CAD (in fn0000000000413C60)
;;     000000000042C472 (in fn000000000042C3C0)
;;     000000000042C4EC (in fn000000000042C3C0)
fn0000000000412C60 proc
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,30h
	lea	rax,[rsp+20h]
	test	rcx,rcx
	mov	rbx,rcx
	mov	esi,edx
	cmovz	rbx,rax

l0000000000412C78:
	mov	rax,[0000000000491F00]                                 ; [rip+0007F281]
	mov	rax,[rax]
	mov	edi,[rax]
	call	41BF20h
	movzx	edx,si
	mov	r8d,eax
	mov	rcx,rbx
	mov	r9d,edi
	call	412BE0h
	cdqe
	add	rsp,30h
	pop	rbx
	pop	rsi
	pop	rdi
	ret
0000000000412CA4             66 66 66 2E 0F 1F 84 00 00 00 00 00     fff.........

;; fn0000000000412CB0: 0000000000412CB0
fn0000000000412CB0 proc
	push	r14
	push	r13
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,30h
	mov	r13,rdx
	mov	rbx,rcx
	mov	rdi,r8
	call	41BF20h
	mov	ebp,eax
	mov	rax,[0000000000491F00]                                 ; [rip+0007F22B]
	mov	r14,[r13+0h]
	mov	rax,[rax]
	test	r14,r14
	mov	r12d,[rax]
	jz	412DD0h

l0000000000412CE8:
	xor	esi,esi
	test	rbx,rbx
	jz	412D80h

l0000000000412CF3:
	test	rdi,rdi
	jnz	412D18h

l0000000000412CF8:
	jmp	412D44h
0000000000412CFA                               66 0F 1F 44 00 00           f..D..

l0000000000412D00:
	movsxd	r10,eax
	add	rbx,r10
	add	rsi,r10
	cmp	byte ptr [rbx-1h],0h
	jz	412D60h

l0000000000412D0F:
	add	r14,2h
	cmp	rdi,rsi
	jbe	412D44h

l0000000000412D18:
	movzx	edx,word ptr [r14]
	mov	r9d,r12d
	mov	r8d,ebp
	mov	rcx,rbx
	call	412BE0h
	test	eax,eax
	jg	412D00h

l0000000000412D2E:
	mov	rax,-1h

l0000000000412D35:
	add	rsp,30h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	ret

l0000000000412D44:
	mov	rax,rsi
	mov	[r13+0h],r14
	add	rsp,30h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	ret
0000000000412D5A                               66 0F 1F 44 00 00           f..D..

l0000000000412D60:
	lea	rax,[rsi-1h]
	mov	qword ptr [r13+0h],+0h
	add	rsp,30h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	ret
0000000000412D7B                                  0F 1F 44 00 00            ..D..

l0000000000412D80:
	test	rdi,rdi
	lea	rbx,[rsp+20h]
	jnz	412DABh

l0000000000412D8A:
	jmp	412DE1h
0000000000412D8C                                     0F 1F 40 00             ..@.

l0000000000412D90:
	movsxd	rdx,eax
	sub	eax,1h
	cdqe
	add	rsi,rdx
	cmp	byte ptr [rsp+rax+20h],0h
	jz	412DE9h

l0000000000412DA2:
	add	r14,2h
	cmp	rdi,rsi
	jbe	412DE1h

l0000000000412DAB:
	movzx	edx,word ptr [r14]
	mov	r9d,r12d
	mov	r8d,ebp
	mov	rcx,rbx
	call	412BE0h
	test	eax,eax
	jg	412D90h

l0000000000412DC1:
	jmp	412D2Eh
0000000000412DC6                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l0000000000412DD0:
	xor	eax,eax
	add	rsp,30h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	ret

l0000000000412DE1:
	mov	rax,rsi
	jmp	412D35h

l0000000000412DE9:
	lea	rax,[rsi-1h]
	jmp	412D35h
0000000000412DF2       90 90 90 90 90 90 90 90 90 90 90 90 90 90   ..............

;; fn0000000000412E00: 0000000000412E00
;;   Called from:
;;     0000000000412FCB (in fn0000000000412F70)
;;     000000000041306F (in fn0000000000412FE0)
;;     00000000004130F7 (in fn0000000000412FE0)
;;     000000000041315A (in fn0000000000413110)
fn0000000000412E00 proc
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,48h
	test	rdx,rdx
	jz	412F33h

l0000000000412E11:
	test	r8,r8
	jz	412F40h

l0000000000412E1A:
	mov	eax,[r9]
	mov	dword ptr [r9],0h
	mov	[rsp+30h],eax
	movzx	eax,byte ptr [rdx]
	test	al,al
	jz	412ED0h

l0000000000412E33:
	cmp	dword ptr [rsp+98h],1h
	mov	rsi,r9
	mov	rdi,r8
	mov	rbx,rdx
	mov	rbp,rcx
	jbe	412EB0h

l0000000000412E49:
	cmp	byte ptr [rsp+30h],0h
	jnz	412EE0h

l0000000000412E54:
	movzx	edx,al
	mov	ecx,[rsp+90h]
	call	[00000000004AF5F4]                                    ; [rip+0009C790]
	test	eax,eax
	jz	412EB0h

l0000000000412E68:
	cmp	rdi,1h
	jbe	412F5Ch

l0000000000412E72:
	mov	dword ptr [rsp+28h],1h
	mov	[rsp+20h],rbp
	mov	r9d,2h
	mov	r8,rbx

l0000000000412E88:
	mov	edx,8h
	mov	ecx,[rsp+90h]
	call	[00000000004AF604]                                    ; [rip+0009C76A]
	test	eax,eax
	jz	412F47h

l0000000000412EA2:
	mov	eax,2h
	add	rsp,48h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret

l0000000000412EB0:
	mov	eax,[rsp+90h]
	test	eax,eax
	jnz	412F00h

l0000000000412EBB:
	movzx	eax,byte ptr [rbx]
	mov	[rbp+0h],ax
	mov	eax,1h
	add	rsp,48h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret

l0000000000412ED0:
	xor	edx,edx
	xor	eax,eax
	mov	[rcx],dx

l0000000000412ED7:
	add	rsp,48h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret

l0000000000412EE0:
	mov	[rsp+31h],al
	mov	dword ptr [rsp+28h],1h
	mov	r9d,2h
	mov	[rsp+20h],rcx
	lea	r8,[rsp+30h]
	jmp	412E88h
0000000000412EFE                                           66 90               f.

l0000000000412F00:
	mov	dword ptr [rsp+28h],1h
	mov	[rsp+20h],rbp
	mov	r9d,1h
	mov	r8,rbx
	mov	edx,8h
	mov	ecx,[rsp+90h]
	call	[00000000004AF604]                                    ; [rip+0009C6DC]
	test	eax,eax
	jz	412F47h

l0000000000412F2C:
	mov	eax,1h
	jmp	412ED7h

l0000000000412F33:
	xor	eax,eax
	add	rsp,48h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
0000000000412F3E                                           66 90               f.

l0000000000412F40:
	mov	eax,0FFFFFFFEh
	jmp	412ED7h

l0000000000412F47:
	call	41BDC0h
	mov	dword ptr [rax],2Ah
	mov	eax,0FFFFFFFFh
	jmp	412ED7h

l0000000000412F5C:
	movzx	eax,byte ptr [rbx]
	mov	[rsi],al
	mov	eax,0FFFFFFFEh
	jmp	412ED7h
0000000000412F6B                                  0F 1F 44 00 00            ..D..

;; fn0000000000412F70: 0000000000412F70
;;   Called from:
;;     0000000000413D2D (in fn0000000000413C60)
;;     000000000042C37C (in fn000000000042C300)
;;     000000000042C59A (in fn000000000042C520)
fn0000000000412F70 proc
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,58h
	xor	eax,eax
	mov	[rsp+4Eh],ax
	lea	rax,[rsp+4Eh]
	test	rcx,rcx
	mov	rbx,rcx
	mov	rsi,r9
	mov	rdi,rdx
	cmovz	rbx,rax

l0000000000412F94:
	mov	rax,[0000000000491F00]                                 ; [rip+0007EF65]
	mov	[rsp+38h],r8
	mov	rax,[rax]
	mov	ebp,[rax]
	call	41BF20h
	mov	r8,[rsp+38h]
	lea	r9,[00000000004ADA48]                                  ; [rip+0009AA92]
	test	rsi,rsi
	mov	[rsp+28h],ebp
	mov	[rsp+20h],eax
	mov	rdx,rdi
	cmovnz	r9,rsi

l0000000000412FC8:
	mov	rcx,rbx
	call	412E00h
	cdqe
	add	rsp,58h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
0000000000412FDB                                  0F 1F 44 00 00            ..D..

;; fn0000000000412FE0: 0000000000412FE0
fn0000000000412FE0 proc
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,48h
	lea	rax,[00000000004ADA44]                                 ; [rip+0009AA4D]
	test	r9,r9
	mov	rdi,r9
	mov	r13,rdx
	cmovz	rdi,rax

l0000000000413004:
	mov	r14,rcx
	mov	rsi,r8
	call	41BF20h
	mov	r12d,eax
	mov	rax,[0000000000491F00]                                 ; [rip+0007EEE7]
	test	r13,r13
	mov	rax,[rax]
	mov	ebp,[rax]
	jz	4130A5h

l0000000000413027:
	mov	rdx,[r13+0h]
	test	rdx,rdx
	jz	4130A5h

l0000000000413030:
	test	r14,r14
	jz	4130B0h

l0000000000413035:
	xor	ebx,ebx
	test	rsi,rsi
	jnz	41305Ah

l000000000041303C:
	jmp	4130A5h
000000000041303E                                           66 90               f.

l0000000000413040:
	movsxd	r10,eax
	add	r14,2h
	mov	rdx,r10
	add	rdx,[r13+0h]
	add	rbx,r10
	cmp	rsi,rbx
	mov	[r13+0h],rdx
	jbe	4130A0h

l000000000041305A:
	mov	r8,rsi
	mov	[rsp+28h],ebp
	mov	[rsp+20h],r12d
	sub	r8,rbx
	mov	r9,rdi
	mov	rcx,r14
	call	412E00h
	cmp	eax,0h
	jg	413040h

l0000000000413079:
	jnz	4130A0h

l000000000041307B:
	cmp	rbx,rsi
	jnc	4130A0h

l0000000000413080:
	mov	qword ptr [r13+0h],+0h
	mov	rax,rbx

l000000000041308B:
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

l000000000041309C:
	xor	ebx,ebx
	nop

l00000000004130A0:
	mov	rax,rbx
	jmp	41308Bh

l00000000004130A5:
	xor	eax,eax
	jmp	41308Bh
00000000004130A9                            0F 1F 80 00 00 00 00          .......

l00000000004130B0:
	xor	eax,eax
	test	rsi,rsi
	mov	[rsp+3Eh],ax
	jz	41309Ch

l00000000004130BC:
	mov	r15d,ebp
	xor	ebx,ebx
	lea	r14,[rsp+3Eh]
	jmp	4130E5h
00000000004130C8                         0F 1F 84 00 00 00 00 00         ........

l00000000004130D0:
	cdqe
	mov	rdx,rax
	add	rdx,[r13+0h]
	add	rbx,rax
	cmp	rsi,rbx
	mov	[r13+0h],rdx
	jbe	4130A0h

l00000000004130E5:
	mov	[rsp+28h],ebp
	mov	[rsp+20h],r12d
	mov	r9,rdi
	mov	r8,r15
	mov	rcx,r14
	call	412E00h
	test	eax,eax
	jg	4130D0h

l0000000000413100:
	jmp	4130A0h
0000000000413102       66 66 66 66 66 2E 0F 1F 84 00 00 00 00 00   fffff.........

;; fn0000000000413110: 0000000000413110
fn0000000000413110 proc
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,48h
	xor	eax,eax
	mov	[rsp+3Eh],ax
	mov	rax,[0000000000491F00]                                 ; [rip+0007EDDA]
	mov	rbx,r8
	mov	rsi,rcx
	mov	rdi,rdx
	mov	rax,[rax]
	mov	ebp,[rax]
	call	41BF20h
	lea	r9,[00000000004ADA40]                                  ; [rip+0009A900]
	test	rbx,rbx
	lea	rcx,[rsp+3Eh]
	mov	[rsp+28h],ebp
	mov	[rsp+20h],eax
	mov	r8,rdi
	cmovnz	r9,rbx

l0000000000413157:
	mov	rdx,rsi
	call	412E00h
	cdqe
	add	rsp,48h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
000000000041316A                               90 90 90 90 90 90           ......

;; fn0000000000413170: 0000000000413170
;;   Called from:
;;     00000000004141C7 (in fn0000000000414180)
;;     0000000000414279 (in fn0000000000414230)
;;     000000000041436F (in fn0000000000414320)
fn0000000000413170 proc
	sub	rsp,58h
	mov	rax,[rdx]
	mov	r11,rdx
	mov	edx,[rdx+8h]
	mov	r10,rdx
	and	r10w,7FFFh
	jnz	4131A4h

l0000000000413188:
	mov	rdx,rax
	shr	rdx,20h
	or	eax,edx
	jnz	413210h

l0000000000413193:
	mov	dword ptr [rsp+44h],0h
	movzx	eax,word ptr [r11+8h]
	xor	edx,edx
	jmp	4131CBh

l00000000004131A4:
	cmp	r10w,7FFFh
	jz	413230h

l00000000004131B0:
	movzx	eax,word ptr [r11+8h]
	mov	dword ptr [rsp+44h],1h
	mov	edx,eax
	and	edx,7FFFh
	sub	edx,403Eh

l00000000004131CB:
	and	eax,8000h

l00000000004131D0:
	mov	r10,[rsp+80h]
	mov	[r10],eax
	lea	rax,[rsp+48h]
	mov	[rsp+30h],r9
	mov	[rsp+20h],ecx
	lea	r9,[rsp+44h]
	lea	rcx,[00000000004770B0]                                 ; [rip+00063EBB]
	mov	[rsp+28h],r8d
	mov	[rsp+38h],rax
	mov	r8,r11
	call	4187D0h
	add	rsp,58h
	ret
000000000041320C                                     0F 1F 40 00             ..@.

l0000000000413210:
	test	edx,edx
	js	4131B0h

l0000000000413214:
	mov	dword ptr [rsp+44h],2h
	movzx	eax,word ptr [r11+8h]
	mov	edx,0FFFFBFC3h
	jmp	4131CBh
0000000000413228                         0F 1F 84 00 00 00 00 00         ........

l0000000000413230:
	mov	rdx,rax
	shr	rdx,20h
	and	edx,7FFFFFFFh
	or	edx,eax
	jnz	413255h

l0000000000413241:
	mov	dword ptr [rsp+44h],3h
	movzx	eax,word ptr [r11+8h]
	xor	edx,edx
	jmp	4131CBh

l0000000000413255:
	mov	dword ptr [rsp+44h],4h
	xor	edx,edx
	xor	eax,eax
	jmp	4131D0h
0000000000413266                   66 2E 0F 1F 84 00 00 00 00 00       f.........

;; fn0000000000413270: 0000000000413270
;;   Called from:
;;     000000000041336B (in fn00000000004132D0)
;;     0000000000413388 (in fn00000000004132D0)
;;     00000000004133D8 (in fn00000000004132D0)
;;     0000000000413438 (in fn00000000004133F0)
;;     000000000041346B (in fn00000000004133F0)
;;     00000000004134C8 (in fn00000000004133F0)
;;     0000000000413738 (in fn00000000004135A0)
;;     000000000041376A (in fn00000000004135A0)
;;     0000000000413789 (in fn00000000004135A0)
;;     0000000000413A3C (in fn0000000000413880)
;;     0000000000413A8B (in fn0000000000413880)
;;     0000000000413B6A (in fn0000000000413880)
;;     0000000000413CCB (in fn0000000000413C60)
;;     0000000000413CEA (in fn0000000000413C60)
;;     0000000000413D08 (in fn0000000000413C60)
;;     0000000000413DFB (in fn0000000000413D50)
;;     0000000000413E6A (in fn0000000000413D50)
;;     0000000000413F38 (in fn0000000000413D50)
;;     0000000000413F68 (in fn0000000000413D50)
;;     0000000000413F88 (in fn0000000000413D50)
;;     0000000000413FAA (in fn0000000000413D50)
;;     0000000000413FEB (in fn0000000000413D50)
;;     0000000000414046 (in fn0000000000413D50)
;;     0000000000414078 (in fn0000000000413D50)
;;     0000000000414153 (in fn00000000004140B0)
;;     00000000004142B8 (in fn0000000000414230)
;;     00000000004143E9 (in fn0000000000414320)
;;     00000000004145E9 (in fn00000000004144C0)
;;     00000000004145FA (in fn00000000004144C0)
;;     000000000041461A (in fn00000000004144C0)
;;     0000000000414681 (in fn00000000004144C0)
;;     0000000000414858 (in fn00000000004144C0)
;;     0000000000414888 (in fn00000000004144C0)
;;     000000000041489A (in fn00000000004144C0)
;;     00000000004148B8 (in fn00000000004144C0)
;;     0000000000414978 (in fn00000000004144C0)
;;     000000000041498A (in fn00000000004144C0)
;;     0000000000414B53 (in fn00000000004149D0)
;;     0000000000415341 (in fn00000000004149D0)
fn0000000000413270 proc
	push	rbx
	sub	rsp,20h
	mov	rbx,rdx
	mov	edx,[rdx+8h]
	test	dh,40h
	jnz	413288h

l0000000000413280:
	mov	eax,[rbx+24h]
	cmp	[rbx+28h],eax
	jle	41329Ah

l0000000000413288:
	and	dh,20h
	jnz	4132B0h

l000000000041328D:
	movsxd	rax,dword ptr [rbx+24h]
	mov	rdx,[rbx]
	mov	[rdx+rax],cl
	mov	eax,[rbx+24h]

l000000000041329A:
	add	eax,1h
	mov	[rbx+24h],eax
	add	rsp,20h
	pop	rbx
	ret
00000000004132A6                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l00000000004132B0:
	mov	rdx,[rbx]
	call	41BE58h
	mov	eax,[rbx+24h]
	add	eax,1h
	mov	[rbx+24h],eax
	add	rsp,20h
	pop	rbx
	ret
00000000004132C7                      66 0F 1F 84 00 00 00 00 00        f........

;; fn00000000004132D0: 00000000004132D0
;;   Called from:
;;     0000000000413EA2 (in fn0000000000413D50)
;;     0000000000414659 (in fn00000000004144C0)
fn00000000004132D0 proc
	push	r14
	push	r13
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,40h
	lea	r14,[rsp+2Ch]
	lea	r13,[rsp+30h]
	mov	ebx,edx
	mov	rsi,r8
	xor	edx,edx
	mov	r12,rcx
	mov	r8,r14
	mov	rcx,r13
	call	412C60h
	mov	ebp,[rsi+10h]
	cmp	ebp,ebx
	jge	4133A9h

l0000000000413308:
	test	ebp,ebp
	js	4133A9h

l0000000000413310:
	mov	eax,[rsi+0Ch]
	cmp	ebp,eax
	jge	4133B6h

l000000000041331B:
	sub	eax,ebp
	test	eax,eax
	mov	[rsi+0Ch],eax
	jle	413330h

l0000000000413324:
	test	byte ptr [rsi+9h],4h
	jz	4133C2h

l000000000041332E:
	nop

l0000000000413330:
	test	ebp,ebp
	jle	41338Dh

l0000000000413334:
	add	r12,2h
	movzx	edx,word ptr [r12-2h]
	mov	r8,r14
	mov	rcx,r13
	call	412C60h
	test	eax,eax
	jle	41338Dh

l000000000041334D:
	sub	eax,1h
	mov	rbx,r13
	lea	rdi,[r13+rax+1h]
	nop	dword ptr [rax+rax+0h]

l0000000000413360:
	add	rbx,1h
	movsx	ecx,byte ptr [rbx-1h]
	mov	rdx,rsi
	call	413270h
	cmp	rbx,rdi
	jnz	413360h

l0000000000413375:
	sub	ebp,1h
	jmp	413330h
000000000041337A                               66 0F 1F 44 00 00           f..D..

l0000000000413380:
	mov	rdx,rsi
	mov	ecx,20h
	call	413270h

l000000000041338D:
	mov	eax,[rsi+0Ch]
	lea	edx,[rax-1h]
	test	eax,eax
	mov	[rsi+0Ch],edx
	jg	413380h

l000000000041339A:
	add	rsp,40h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	ret

l00000000004133A9:
	mov	eax,[rsi+0Ch]
	mov	ebp,ebx
	cmp	ebp,eax
	jl	41331Bh

l00000000004133B6:
	mov	dword ptr [rsi+0Ch],0FFFFFFFFh
	jmp	413330h

l00000000004133C2:
	sub	eax,1h
	mov	[rsi+0Ch],eax
	nop	dword ptr [rax+rax+0h]

l00000000004133D0:
	mov	rdx,rsi
	mov	ecx,20h
	call	413270h
	mov	eax,[rsi+0Ch]
	lea	edx,[rax-1h]
	test	eax,eax
	mov	[rsi+0Ch],edx
	jnz	4133D0h

l00000000004133EA:
	jmp	413330h
00000000004133EF                                              90                .

;; fn00000000004133F0: 00000000004133F0
;;   Called from:
;;     0000000000413549 (in fn0000000000413500)
fn00000000004133F0 proc
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,20h
	mov	edi,[r8+10h]
	mov	rsi,rcx
	mov	rbx,r8
	cmp	edi,edx
	jge	413480h

l0000000000413405:
	test	edi,edi
	js	413480h

l0000000000413409:
	mov	eax,[rbx+0Ch]
	cmp	edi,eax
	jge	413489h

l0000000000413410:
	sub	eax,edi
	test	eax,eax
	mov	[rbx+0Ch],eax
	jle	4134E2h

l000000000041341D:
	test	byte ptr [rbx+9h],4h
	jnz	4134B0h

l0000000000413427:
	sub	eax,1h
	mov	[rbx+0Ch],eax
	nop	dword ptr [rax]

l0000000000413430:
	mov	rdx,rbx
	mov	ecx,20h
	call	413270h
	mov	eax,[rbx+0Ch]
	mov	edx,eax
	sub	eax,1h
	test	edx,edx
	mov	[rbx+0Ch],eax
	jnz	413430h

l000000000041344C:
	test	edi,edi
	lea	edx,[rdi-1h]
	jz	4134D0h

l0000000000413453:
	lea	rdi,[rsi+rdx+1h]
	nop	dword ptr [rax+rax+0h]

l0000000000413460:
	add	rsi,1h
	movsx	ecx,byte ptr [rsi-1h]
	mov	rdx,rbx
	call	413270h
	cmp	rsi,rdi
	jnz	413460h

l0000000000413475:
	jmp	4134CDh
0000000000413477                      66 0F 1F 84 00 00 00 00 00        f........

l0000000000413480:
	mov	eax,[rbx+0Ch]
	mov	edi,edx
	cmp	edi,eax
	jl	413410h

l0000000000413489:
	test	edi,edi
	mov	dword ptr [rbx+0Ch],0FFFFFFFFh
	lea	edx,[rdi-1h]
	jnz	413453h

l0000000000413497:
	mov	dword ptr [rbx+0Ch],0FFFFFFFEh

l000000000041349E:
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	ret
00000000004134A6                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l00000000004134B0:
	test	edi,edi
	lea	edx,[rdi-1h]
	jnz	413453h

l00000000004134B7:
	sub	eax,1h
	mov	[rbx+0Ch],eax
	nop	dword ptr [rax]

l00000000004134C0:
	mov	rdx,rbx
	mov	ecx,20h
	call	413270h

l00000000004134CD:
	mov	eax,[rbx+0Ch]

l00000000004134D0:
	lea	edx,[rax-1h]
	test	eax,eax
	mov	[rbx+0Ch],edx
	jg	4134C0h

l00000000004134DA:
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	ret

l00000000004134E2:
	test	edi,edi
	lea	edx,[rdi-1h]
	jnz	413453h

l00000000004134ED:
	sub	eax,1h
	mov	[rbx+0Ch],eax
	jmp	41349Eh
00000000004134F5                66 66 2E 0F 1F 84 00 00 00 00 00      ff.........

;; fn0000000000413500: 0000000000413500
;;   Called from:
;;     000000000041421A (in fn0000000000414180)
;;     00000000004142FC (in fn0000000000414230)
;;     000000000041449A (in fn0000000000414320)
;;     000000000041454D (in fn00000000004144C0)
;;     000000000041490C (in fn00000000004144C0)
fn0000000000413500 proc
	sub	rsp,38h
	test	ecx,ecx
	mov	dword ptr [r8+10h],0FFFFFFFFh
	jz	413554h

l0000000000413510:
	lea	rcx,[rsp+20h]
	mov	r11d,[r8+8h]
	mov	byte ptr [rsp+20h],2Dh
	lea	r10,[rcx+1h]

l0000000000413522:
	and	r11d,20h
	xor	r9d,r9d

l0000000000413529:
	movzx	eax,byte ptr [rdx+r9]
	and	eax,0DFh
	or	eax,r11d
	mov	[r10+r9],al
	add	r9,1h
	cmp	r9,3h
	jnz	413529h

l0000000000413542:
	lea	rdx,[r10+3h]
	sub	rdx,rcx
	call	4133F0h
	nop
	add	rsp,38h
	ret

l0000000000413554:
	mov	r11d,[r8+8h]
	test	r11d,100h
	jz	413571h

l0000000000413561:
	lea	rcx,[rsp+20h]
	mov	byte ptr [rsp+20h],2Bh
	lea	r10,[rcx+1h]
	jmp	413522h

l0000000000413571:
	test	r11b,40h
	jz	413590h

l0000000000413577:
	lea	rcx,[rsp+20h]
	mov	byte ptr [rsp+20h],20h
	lea	r10,[rcx+1h]
	jmp	413522h
0000000000413587                      66 0F 1F 84 00 00 00 00 00        f........

l0000000000413590:
	lea	rcx,[rsp+20h]
	mov	r10,rcx
	jmp	413522h
000000000041359A                               66 0F 1F 44 00 00           f..D..

;; fn00000000004135A0: 00000000004135A0
;;   Called from:
;;     0000000000414166 (in fn00000000004140B0)
;;     00000000004148CF (in fn00000000004144C0)
fn00000000004135A0 proc
	push	rbp
	push	r13
	push	r12
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,28h
	lea	rbp,[rsp+80h]
	mov	ebx,[rdx+10h]
	mov	r11d,[rdx+8h]
	mov	r8d,0h
	mov	rsi,rdx
	mov	r9,rcx
	test	ebx,ebx
	cmovns	r8d,ebx

l00000000004135CD:
	add	r8d,17h
	test	r11d,1000h
	jz	4135E5h

l00000000004135DA:
	cmp	word ptr [rdx+20h],0h
	jnz	4137D2h

l00000000004135E5:
	movsxd	r13,dword ptr [rsi+0Ch]
	movsxd	rax,r8d
	cmp	r8d,r13d
	cmovl	rax,r13

l00000000004135F3:
	add	rax,0Fh
	and	rax,0F0h
	call	4116F0h
	sub	rsp,rax
	test	r11b,80h
	lea	r12,[rsp+20h]
	jz	41361Fh

l000000000041360E:
	test	rcx,rcx
	js	413860h

l0000000000413617:
	and	r11b,7Fh
	mov	[rsi+8h],r11d

l000000000041361F:
	test	r9,r9
	mov	rcx,r9
	jz	41386Bh

l000000000041362B:
	mov	r10d,r11d
	mov	r8,r12
	mov	r9,0CCCCCCCCCCCCCCCDh
	and	r10d,1000h
	jmp	413677h

l0000000000413644:
	cmp	r12,rdi
	jz	413674h

l0000000000413649:
	test	r10d,r10d
	jz	413674h

l000000000041364E:
	cmp	word ptr [rsi+20h],0h
	jz	413674h

l0000000000413655:
	mov	rax,rdi
	sub	rax,r12
	cqo
	shr	rdx,3Eh
	add	rax,rdx
	and	eax,3h
	sub	rax,rdx
	cmp	rax,3h
	jz	4137B0h

l0000000000413674:
	mov	r8,rdi

l0000000000413677:
	mov	rax,rcx
	lea	rdi,[r8+1h]
	mul	r9
	shr	rdx,3h
	lea	rax,[rdx+rdx*4]
	add	rax,rax
	sub	rcx,rax
	add	ecx,30h
	test	rdx,rdx
	mov	[r8],cl
	mov	rcx,rdx
	jnz	413644h

l000000000041369D:
	test	ebx,ebx
	jle	4136D5h

l00000000004136A1:
	mov	rax,r12
	sub	rax,rdi
	add	eax,ebx
	test	eax,eax
	jle	4136D5h

l00000000004136AD:
	sub	eax,1h
	mov	rdx,rax
	lea	rcx,[rdi+rax+1h]
	mov	rax,rdi
	nop	dword ptr [rax+rax+0h]

l00000000004136C0:
	add	rax,1h
	mov	byte ptr [rax-1h],30h
	cmp	rax,rcx
	jnz	4136C0h

l00000000004136CD:
	movsxd	rax,edx
	lea	rdi,[rdi+rax+1h]

l00000000004136D5:
	cmp	rdi,r12
	jnz	4136E5h

l00000000004136DA:
	test	ebx,ebx
	jz	4136E5h

l00000000004136DE:
	mov	byte ptr [rdi],30h
	add	rdi,1h

l00000000004136E5:
	test	r13d,r13d
	jle	41374Eh

l00000000004136EA:
	mov	rax,r12
	sub	rax,rdi
	add	r13d,eax
	test	r13d,r13d
	mov	[rsi+0Ch],r13d
	jle	41374Eh

l00000000004136FC:
	test	r11d,1C0h
	jz	41370Dh

l0000000000413705:
	sub	r13d,1h
	mov	[rsi+0Ch],r13d

l000000000041370D:
	test	ebx,ebx
	js	413810h

l0000000000413715:
	test	r11d,400h
	jnz	41374Eh

l000000000041371E:
	mov	eax,[rsi+0Ch]
	lea	edx,[rax-1h]
	test	eax,eax
	mov	[rsi+0Ch],edx
	jle	41374Eh

l000000000041372B:
	nop	dword ptr [rax+rax+0h]

l0000000000413730:
	mov	rdx,rsi
	mov	ecx,20h
	call	413270h
	mov	eax,[rsi+0Ch]
	lea	edx,[rax-1h]
	test	eax,eax
	mov	[rsi+0Ch],edx
	jg	413730h

l000000000041374A:
	mov	r11d,[rsi+8h]

l000000000041374E:
	test	r11b,80h
	jz	4137C0h

l0000000000413754:
	lea	rbx,[rdi+1h]
	mov	byte ptr [rdi],2Dh

l000000000041375B:
	cmp	r12,rbx
	jnc	41378Eh

l0000000000413760:
	sub	rbx,1h
	movsx	ecx,byte ptr [rbx]
	mov	rdx,rsi
	call	413270h
	cmp	rbx,r12
	jnz	413760h

l0000000000413774:
	mov	eax,[rsi+0Ch]
	lea	edx,[rax-1h]
	test	eax,eax
	mov	[rsi+0Ch],edx
	jle	41379Bh

l0000000000413781:
	mov	rdx,rsi
	mov	ecx,20h
	call	413270h

l000000000041378E:
	mov	eax,[rsi+0Ch]
	lea	edx,[rax-1h]
	test	eax,eax
	mov	[rsi+0Ch],edx
	jg	413781h

l000000000041379B:
	lea	rsp,[rbp-58h]
	pop	rbx
	pop	rsi
	pop	rdi
	pop	r12
	pop	r13
	pop	rbp
	ret
00000000004137A8                         0F 1F 84 00 00 00 00 00         ........

l00000000004137B0:
	lea	rdi,[r8+2h]
	mov	byte ptr [r8+1h],2Ch
	jmp	413674h
00000000004137BE                                           66 90               f.

l00000000004137C0:
	test	r11d,100h
	jz	4137F0h

l00000000004137C9:
	lea	rbx,[rdi+1h]
	mov	byte ptr [rdi],2Bh
	jmp	41375Bh

l00000000004137D2:
	mov	eax,r8d
	mov	edx,55555556h
	imul	edx
	mov	eax,r8d
	sar	eax,1Fh
	sub	edx,eax
	add	r8d,edx
	jmp	4135E5h
00000000004137EC                                     0F 1F 40 00             ..@.

l00000000004137F0:
	and	r11d,40h
	mov	rbx,rdi
	jz	41375Bh

l00000000004137FD:
	add	rbx,1h
	mov	byte ptr [rdi],20h
	jmp	41375Bh
0000000000413809                            0F 1F 80 00 00 00 00          .......

l0000000000413810:
	mov	eax,r11d
	and	eax,600h
	cmp	eax,200h
	jnz	413715h

l0000000000413823:
	mov	eax,[rsi+0Ch]
	lea	ecx,[rax-1h]
	test	eax,eax
	mov	[rsi+0Ch],ecx
	jle	41374Eh

l0000000000413834:
	lea	rdx,[rdi+rcx+1h]
	mov	rax,rdi
	nop	dword ptr [rax+0h]

l0000000000413840:
	add	rax,1h
	mov	byte ptr [rax-1h],30h
	cmp	rax,rdx
	jnz	413840h

l000000000041384D:
	lea	rdi,[rdi+rcx+1h]
	mov	dword ptr [rsi+0Ch],0FFFFFFFFh
	jmp	41374Eh
000000000041385E                                           66 90               f.

l0000000000413860:
	neg	rcx
	mov	r9,rcx
	jmp	41361Fh

l000000000041386B:
	mov	rdi,r12
	jmp	41369Dh
0000000000413873          66 66 66 66 2E 0F 1F 84 00 00 00 00 00    ffff.........

;; fn0000000000413880: 0000000000413880
fn0000000000413880 proc
	push	rbp
	push	r14
	push	r13
	push	r12
	push	rdi
	push	rsi
	push	rbx
	mov	rbp,rsp
	sub	rsp,20h
	mov	eax,12h
	mov	r10d,18h
	cmp	ecx,6Fh
	mov	rbx,r8
	mov	r8d,[r8+10h]
	mov	r11d,ecx
	setnz	cl
	mov	edi,[rbx+8h]
	movzx	r14d,cl
	movzx	ecx,cl
	cmovnz	r10d,eax

l00000000004138BA:
	add	ecx,3h
	mov	al,0h
	test	r8d,r8d
	cmovns	eax,r8d

l00000000004138C6:
	mov	r13,rdx
	mov	r9,rdx
	add	r10d,eax
	test	edi,1000h
	lea	r14d,[0007h+r14*8]
	jz	4138EAh

l00000000004138DF:
	cmp	word ptr [rbx+20h],0h
	jnz	413AA3h

l00000000004138EA:
	movsxd	r12,dword ptr [rbx+0Ch]
	movsxd	rax,r10d
	cmp	r10d,r12d
	cmovl	rax,r12

l00000000004138F8:
	add	rax,0Fh
	and	rax,0F0h
	call	4116F0h
	sub	rsp,rax
	test	r13,r13
	lea	rsi,[rsp+20h]
	jz	413BE0h

l0000000000413916:
	mov	r13d,r11d
	mov	edx,r14d
	mov	r10,rsi
	and	r13d,20h
	jmp	413931h

l0000000000413925:
	shr	r9,cl
	mov	[r10-1h],r14b
	test	r9,r9
	jz	413956h

l0000000000413931:
	mov	eax,edx
	add	r10,1h
	and	eax,r9d
	lea	r14d,[rax+30h]
	cmp	r14b,39h
	jbe	413925h

l0000000000413944:
	add	eax,37h
	shr	r9,cl
	or	eax,r13d
	test	r9,r9
	mov	[r10-1h],al
	jnz	413931h

l0000000000413956:
	cmp	rsi,r10
	jz	413BE3h

l000000000041395F:
	test	r8d,r8d
	jle	413B30h

l0000000000413968:
	mov	rax,rsi
	sub	rax,r10
	add	eax,r8d
	test	eax,eax
	jle	413B30h

l0000000000413979:
	sub	eax,1h
	mov	rdx,rax
	lea	rcx,[r10+rax+1h]
	mov	rax,r10
	nop	word ptr [rax+rax+0h]

l0000000000413990:
	add	rax,1h
	mov	byte ptr [rax-1h],30h
	cmp	rax,rcx
	jnz	413990h

l000000000041399D:
	movsxd	rax,edx
	lea	r10,[r10+rax+1h]

l00000000004139A5:
	cmp	r10,rsi
	jnz	4139C0h

l00000000004139AA:
	test	r8d,r8d
	jz	4139C0h

l00000000004139AF:
	mov	byte ptr [r10],30h
	add	r10,1h
	nop	word ptr [rax+rax+0h]

l00000000004139C0:
	mov	rax,r10
	sub	rax,rsi
	cmp	eax,r12d
	jge	413AF0h

l00000000004139CF:
	sub	r12d,eax
	test	r12d,r12d
	mov	[rbx+0Ch],r12d
	jle	413C48h

l00000000004139DF:
	cmp	r11d,6Fh
	mov	edx,[rbx+8h]
	jz	413BC0h

l00000000004139EC:
	test	dh,8h
	jz	413B80h

l00000000004139F5:
	lea	r13d,[r12-2h]
	test	r13d,r13d
	jle	413A08h

l00000000004139FF:
	test	r8d,r8d
	js	413ABDh

l0000000000413A08:
	test	r13d,r13d
	mov	[r10],r11b
	lea	rdi,[r10+2h]
	mov	byte ptr [r10+1h],30h
	jle	413B1Ch

l0000000000413A1D:
	and	dh,4h
	jnz	413B51h

l0000000000413A26:
	lea	r14d,[r13-1h]

l0000000000413A2A:
	mov	r12d,r14d
	nop	dword ptr [rax]

l0000000000413A30:
	sub	r12d,1h
	mov	rdx,rbx
	mov	ecx,20h
	call	413270h
	lea	eax,[r12+1h]
	test	eax,eax
	jg	413A30h

l0000000000413A4A:
	test	r14d,r14d
	lea	r13d,[r14-1h]
	mov	r12d,0h
	cmovns	r12d,r14d

l0000000000413A5B:
	sub	r13d,r12d
	cmp	rsi,rdi
	jc	413B60h

l0000000000413A67:
	nop	word ptr [rax+rax+0h]

l0000000000413A70:
	test	r13d,r13d
	lea	esi,[r13-1h]
	jle	413A95h

l0000000000413A79:
	nop	dword ptr [rax+0h]

l0000000000413A80:
	mov	rdx,rbx
	mov	ecx,20h
	sub	esi,1h
	call	413270h
	cmp	esi,0FFh
	jnz	413A80h

l0000000000413A95:
	mov	rsp,rbp
	pop	rbx
	pop	rsi
	pop	rdi
	pop	r12
	pop	r13
	pop	r14
	pop	rbp
	ret

l0000000000413AA3:
	mov	eax,r10d
	mov	edx,55555556h
	imul	edx
	mov	eax,r10d
	sar	eax,1Fh
	sub	edx,eax
	add	r10d,edx
	jmp	4138EAh

l0000000000413ABD:
	mov	eax,edx
	and	eax,600h
	cmp	eax,200h
	jz	413BF1h

l0000000000413ACF:
	mov	r12d,r13d

l0000000000413AD2:
	test	dh,8h
	mov	r13d,r12d
	mov	rdi,r10
	jz	413A1Dh

l0000000000413AE1:
	mov	r13d,r12d
	jmp	413A08h
0000000000413AE9                            0F 1F 80 00 00 00 00          .......

l0000000000413AF0:
	mov	dword ptr [rbx+0Ch],0FFFFFFFFh
	mov	r13d,0FFFFFFFFh

l0000000000413AFD:
	cmp	r11d,6Fh
	jz	413BD2h

l0000000000413B07:
	mov	edx,[rbx+8h]
	mov	eax,edx
	and	eax,800h

l0000000000413B11:
	test	eax,eax
	mov	rdi,r10
	jnz	413A08h

l0000000000413B1C:
	cmp	rdi,rsi
	ja	413B60h

l0000000000413B21:
	jmp	413A95h
0000000000413B26                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l0000000000413B30:
	cmp	r11d,6Fh
	jnz	4139A5h

l0000000000413B3A:
	test	byte ptr [rbx+9h],8h
	jz	4139A5h

l0000000000413B44:
	mov	byte ptr [r10],30h
	add	r10,1h
	jmp	4139A5h

l0000000000413B51:
	cmp	rdi,rsi
	jbe	413C50h

l0000000000413B5A:
	nop	word ptr [rax+rax+0h]

l0000000000413B60:
	sub	rdi,1h
	movsx	ecx,byte ptr [rdi]
	mov	rdx,rbx
	call	413270h

l0000000000413B6F:
	cmp	rsi,rdi
	jc	413B60h

l0000000000413B74:
	jmp	413A70h
0000000000413B79                            0F 1F 80 00 00 00 00          .......

l0000000000413B80:
	test	r8d,r8d
	jns	413AD2h

l0000000000413B89:
	mov	eax,edx
	and	eax,600h
	cmp	eax,200h
	jz	413C3Fh

l0000000000413B9B:
	cmp	r11d,6Fh
	jnz	413AD2h

l0000000000413BA5:
	and	dh,4h
	jnz	413BCAh

l0000000000413BAA:
	lea	r14d,[r12-1h]
	mov	rdi,r10
	jmp	413A2Ah
0000000000413BB7                      66 0F 1F 84 00 00 00 00 00        f........

l0000000000413BC0:
	test	r8d,r8d
	js	413B89h

l0000000000413BC5:
	and	dh,4h
	jz	413BAAh

l0000000000413BCA:
	mov	rdi,r10
	mov	r13d,r12d
	jmp	413B6Fh

l0000000000413BD2:
	cmp	rsi,r10
	mov	rdi,r10
	jc	413B60h

l0000000000413BDA:
	jmp	413A95h
0000000000413BDF                                              90                .

l0000000000413BE0:
	mov	r10,rsi

l0000000000413BE3:
	and	edi,0FFFFF7FFh
	mov	[rbx+8h],edi
	jmp	41395Fh

l0000000000413BF1:
	lea	r8d,[r12-3h]
	mov	r12d,r8d

l0000000000413BF9:
	mov	eax,r12d
	lea	rcx,[r10+rax+1h]
	mov	rax,r10

l0000000000413C04:
	add	rax,1h
	mov	byte ptr [rax-1h],30h
	cmp	rax,rcx
	jnz	413C04h

l0000000000413C11:
	movsxd	rax,r8d
	cmp	r11d,6Fh
	lea	r10,[r10+rax+1h]
	jz	413C31h

l0000000000413C1F:
	mov	eax,edx
	mov	r13d,0FFFFFFFFh
	and	eax,800h
	jmp	413B11h

l0000000000413C31:
	mov	rdi,r10
	mov	r13d,0FFFFFFFFh
	jmp	413B1Ch

l0000000000413C3F:
	sub	r12d,1h
	mov	r8d,r12d
	jmp	413BF9h

l0000000000413C48:
	mov	r13d,r12d
	jmp	413AFDh

l0000000000413C50:
	lea	esi,[r13-1h]
	jmp	413A80h
0000000000413C59                            0F 1F 80 00 00 00 00          .......

;; fn0000000000413C60: 0000000000413C60
;;   Called from:
;;     0000000000414025 (in fn0000000000413D50)
;;     000000000041409A (in fn0000000000413D50)
;;     00000000004148E5 (in fn00000000004144C0)
fn0000000000413C60 proc
	push	rbp
	push	r12
	push	rdi
	push	rsi
	push	rbx
	mov	rbp,rsp
	sub	rsp,30h
	cmp	dword ptr [rcx+14h],0FDh
	mov	rsi,rcx
	jz	413D10h

l0000000000413C7A:
	movzx	edx,word ptr [rcx+18h]

l0000000000413C7E:
	test	dx,dx
	jz	413CE2h

l0000000000413C83:
	movsxd	rax,dword ptr [rsi+14h]
	mov	r12,rsp
	add	rax,0Fh
	and	rax,0F0h
	call	4116F0h
	sub	rsp,rax
	lea	r8,[rbp-4h]
	mov	dword ptr [rbp-4h],0h
	lea	rbx,[rsp+20h]
	mov	rcx,rbx
	call	412C60h
	test	eax,eax
	jle	413D00h

l0000000000413CB6:
	sub	eax,1h
	lea	rdi,[rbx+rax+1h]
	nop

l0000000000413CC0:
	add	rbx,1h
	movsx	ecx,byte ptr [rbx-1h]
	mov	rdx,rsi
	call	413270h
	cmp	rbx,rdi
	jnz	413CC0h

l0000000000413CD5:
	mov	rsp,r12
	mov	rsp,rbp
	pop	rbx
	pop	rsi
	pop	rdi
	pop	r12
	pop	rbp
	ret

l0000000000413CE2:
	mov	rdx,rsi
	mov	ecx,2Eh
	call	413270h
	nop
	mov	rsp,rbp
	pop	rbx
	pop	rsi
	pop	rdi
	pop	r12
	pop	rbp
	ret
0000000000413CFA                               66 0F 1F 44 00 00           f..D..

l0000000000413D00:
	mov	rdx,rsi
	mov	ecx,2Eh
	call	413270h
	jmp	413CD5h
0000000000413D0F                                              90                .

l0000000000413D10:
	mov	dword ptr [rbp-4h],0h
	call	41BF08h
	mov	rdx,[rax]
	lea	rcx,[rbp-6h]
	lea	r9,[rbp-4h]
	mov	r8d,10h
	call	412F70h
	test	eax,eax
	jle	413D46h

l0000000000413D36:
	movzx	edx,word ptr [rbp-6h]
	mov	[rsi+18h],dx

l0000000000413D3E:
	mov	[rsi+14h],eax
	jmp	413C7Eh

l0000000000413D46:
	movzx	edx,word ptr [rsi+18h]
	jmp	413D3Eh
0000000000413D4C                                     0F 1F 40 00             ..@.

;; fn0000000000413D50: 0000000000413D50
;;   Called from:
;;     0000000000414132 (in fn00000000004140B0)
;;     0000000000414299 (in fn0000000000414230)
;;     00000000004143CF (in fn0000000000414320)
fn0000000000413D50 proc
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,20h
	mov	esi,r8d
	mov	ebp,ecx
	mov	rdi,rdx
	test	esi,esi
	mov	rbx,r9
	mov	r8d,[r9+0Ch]
	jle	413F42h

l0000000000413D71:
	cmp	esi,r8d
	jge	413EB0h

l0000000000413D7A:
	sub	r8d,esi
	mov	[r9+0Ch],r8d

l0000000000413D81:
	test	r8d,r8d
	js	413EB0h

l0000000000413D8A:
	mov	eax,[rbx+10h]
	cmp	eax,r8d
	jge	413EB0h

l0000000000413D96:
	sub	r8d,eax
	test	r8d,r8d
	mov	[rbx+0Ch],r8d
	jle	413EBDh

l0000000000413DA6:
	test	eax,eax
	jle	413FF5h

l0000000000413DAE:
	sub	r8d,1h
	test	esi,esi
	mov	[rbx+0Ch],r8d
	jle	413DC4h

l0000000000413DBA:
	test	byte ptr [rbx+9h],10h
	jnz	413ECFh

l0000000000413DC4:
	test	r8d,r8d
	jle	413E0Dh

l0000000000413DC9:
	test	ebp,ebp
	jnz	413DDBh

l0000000000413DCD:
	mov	eax,[rbx+8h]
	test	eax,1C0h
	jz	413FD5h

l0000000000413DDB:
	sub	r8d,1h
	test	r8d,r8d
	mov	[rbx+0Ch],r8d
	jle	413E0Dh

l0000000000413DE8:
	test	dword ptr [rbx+8h],600h
	jnz	413E0Dh

l0000000000413DF1:
	jmp	413E00h

l0000000000413DF3:
	mov	rdx,rbx
	mov	ecx,20h
	call	413270h

l0000000000413E00:
	mov	eax,[rbx+0Ch]
	lea	edx,[rax-1h]
	test	eax,eax
	mov	[rbx+0Ch],edx
	jg	413DF3h

l0000000000413E0D:
	test	ebp,ebp
	jnz	413F30h

l0000000000413E15:
	mov	eax,[rbx+8h]

l0000000000413E18:
	test	ah,1h
	jnz	413F60h

l0000000000413E21:
	test	al,40h
	jnz	413FE3h

l0000000000413E29:
	mov	edx,[rbx+0Ch]
	test	edx,edx
	jle	413E43h

l0000000000413E30:
	mov	eax,[rbx+8h]
	and	eax,600h
	cmp	eax,200h
	jz	413F72h

l0000000000413E43:
	test	esi,esi
	jle	413FA2h

l0000000000413E4B:
	lea	r12,[rbx+20h]
	mov	ebp,55555556h

l0000000000413E54:
	movzx	eax,byte ptr [rdi]
	mov	ecx,30h
	test	al,al
	jz	413E67h

l0000000000413E60:
	add	rdi,1h
	movsx	ecx,al

l0000000000413E67:
	mov	rdx,rbx
	call	413270h
	sub	esi,1h
	jz	414090h

l0000000000413E78:
	test	byte ptr [rbx+9h],10h
	jz	413E54h

l0000000000413E7E:
	cmp	word ptr [rbx+20h],0h
	jz	413E54h

l0000000000413E85:
	mov	eax,esi
	imul	ebp
	mov	eax,esi
	sar	eax,1Fh
	sub	edx,eax
	lea	eax,[rdx+rdx*2]
	cmp	esi,eax
	jnz	413E54h

l0000000000413E97:
	mov	r8,rbx
	mov	edx,1h
	mov	rcx,r12
	call	4132D0h
	jmp	413E54h
0000000000413EA9                            0F 1F 80 00 00 00 00          .......

l0000000000413EB0:
	mov	dword ptr [rbx+0Ch],0FFFFFFFFh
	mov	r8d,0FFFFFFFFh

l0000000000413EBD:
	test	esi,esi
	jle	413E0Dh

l0000000000413EC5:
	test	byte ptr [rbx+9h],10h
	jz	413E0Dh

l0000000000413ECF:
	cmp	word ptr [rbx+20h],0h
	jz	413DC4h

l0000000000413EDA:
	lea	ecx,[rsi+2h]
	mov	edx,55555556h
	mov	eax,ecx
	sar	ecx,1Fh
	imul	edx
	sub	edx,ecx
	cmp	edx,1h
	jle	413DC4h

l0000000000413EF4:
	test	r8d,r8d
	jle	413E0Dh

l0000000000413EFD:
	mov	eax,r8d
	sub	eax,edx
	add	eax,1h
	jmp	413F19h
0000000000413F07                      66 0F 1F 84 00 00 00 00 00        f........

l0000000000413F10:
	test	r8d,r8d
	jz	414084h

l0000000000413F19:
	sub	r8d,1h
	cmp	r8d,eax
	jnz	413F10h

l0000000000413F22:
	mov	[rbx+0Ch],r8d
	jmp	413DC4h
0000000000413F2B                                  0F 1F 44 00 00            ..D..

l0000000000413F30:
	mov	rdx,rbx
	mov	ecx,2Dh
	call	413270h
	jmp	413E29h

l0000000000413F42:
	test	r8d,r8d
	jle	413D81h

l0000000000413F4B:
	sub	r8d,1h
	mov	[r9+0Ch],r8d
	jmp	413D8Ah
0000000000413F58                         0F 1F 84 00 00 00 00 00         ........

l0000000000413F60:
	mov	rdx,rbx
	mov	ecx,2Bh
	call	413270h
	jmp	413E29h

l0000000000413F72:
	sub	edx,1h
	mov	[rbx+0Ch],edx
	nop	dword ptr [rax+rax+0h]

l0000000000413F80:
	mov	rdx,rbx
	mov	ecx,30h
	call	413270h
	mov	eax,[rbx+0Ch]
	lea	edx,[rax-1h]
	test	eax,eax
	mov	[rbx+0Ch],edx
	jg	413F80h

l0000000000413F9A:
	test	esi,esi
	jg	413E4Bh

l0000000000413FA2:
	mov	rdx,rbx
	mov	ecx,30h
	call	413270h
	mov	eax,[rbx+10h]
	test	eax,eax
	jg	414022h

l0000000000413FB6:
	test	byte ptr [rbx+9h],8h
	jnz	414022h

l0000000000413FBC:
	test	esi,esi
	jnz	414066h

l0000000000413FC4:
	sub	eax,1h
	mov	[rbx+10h],eax
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret

l0000000000413FD5:
	test	ah,6h
	jz	413E00h

l0000000000413FDE:
	jmp	413E18h

l0000000000413FE3:
	mov	rdx,rbx
	mov	ecx,20h
	call	413270h
	jmp	413E29h

l0000000000413FF5:
	mov	eax,[rbx+8h]
	test	ah,8h
	jnz	413DAEh

l0000000000414001:
	test	esi,esi
	jle	413DC9h

l0000000000414009:
	test	ah,10h
	jz	413DC9h

l0000000000414012:
	cmp	word ptr [rbx+20h],0h
	jnz	413EDAh

l000000000041401D:
	jmp	413DC9h

l0000000000414022:
	mov	rcx,rbx
	call	413C60h
	test	esi,esi
	jz	41404Bh

l000000000041402E:
	jmp	414063h

l0000000000414030:
	movzx	eax,byte ptr [rdi]
	mov	ecx,30h
	test	al,al
	jz	414043h

l000000000041403C:
	add	rdi,1h
	movsx	ecx,al

l0000000000414043:
	mov	rdx,rbx
	call	413270h

l000000000041404B:
	mov	eax,[rbx+10h]
	lea	edx,[rax-1h]
	test	eax,eax
	mov	[rbx+10h],edx
	jg	414030h

l0000000000414058:
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret

l0000000000414063:
	mov	eax,[rbx+10h]

l0000000000414066:
	add	eax,esi
	mov	[rbx+10h],eax
	nop	dword ptr [rax+rax+0h]

l0000000000414070:
	mov	rdx,rbx
	mov	ecx,30h
	call	413270h
	add	esi,1h
	jnz	414070h

l0000000000414082:
	jmp	41404Bh

l0000000000414084:
	mov	dword ptr [rbx+0Ch],0h
	jmp	413E0Dh

l0000000000414090:
	mov	eax,[rbx+10h]
	test	eax,eax
	jle	4140A1h

l0000000000414097:
	mov	rcx,rbx
	call	413C60h
	jmp	41404Bh

l00000000004140A1:
	test	byte ptr [rbx+9h],8h
	jnz	414097h

l00000000004140A7:
	jmp	413FC4h
00000000004140AC                                     0F 1F 40 00             ..@.

;; fn00000000004140B0: 00000000004140B0
;;   Called from:
;;     00000000004141E7 (in fn0000000000414180)
;;     0000000000414438 (in fn0000000000414320)
fn00000000004140B0 proc
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,20h
	mov	rsi,r9
	lea	r9d,[r8-1h]
	mov	r8d,66666667h
	mov	r10,rdx
	mov	eax,r9d
	movsxd	rbx,r9d
	sar	r9d,1Fh
	imul	r8d
	sar	edx,2h
	mov	r8d,edx
	sub	r8d,r9d
	mov	r9d,1h
	jz	41410Bh

l00000000004140E5:
	mov	r11d,66666667h
	nop	dword ptr [rax+rax+0h]

l00000000004140F0:
	mov	eax,r8d
	sar	r8d,1Fh
	add	r9d,1h
	imul	r11d
	mov	eax,edx
	sar	eax,2h
	sub	eax,r8d
	mov	r8d,eax
	jnz	4140F0h

l000000000041410B:
	mov	edi,[rsi+2Ch]
	mov	eax,[rsi+0Ch]
	cmp	r9d,edi
	cmovge	edi,r9d

l0000000000414118:
	lea	edx,[rdi+2h]
	cmp	eax,edx
	jg	414174h

l000000000041411F:
	mov	dword ptr [rsi+0Ch],0FFFFFFFFh

l0000000000414126:
	mov	rdx,r10
	mov	r9,rsi
	mov	r8d,1h
	call	413D50h
	mov	ecx,[rsi+8h]
	mov	eax,[rsi+2Ch]
	mov	rdx,rsi
	mov	[rsi+10h],eax
	mov	eax,ecx
	and	ecx,20h
	or	eax,1C0h
	or	ecx,45h
	mov	[rsi+8h],eax
	call	413270h
	lea	r9d,[rdi+1h]
	add	[rsi+0Ch],r9d
	mov	rdx,rsi
	mov	rcx,rbx
	call	4135A0h
	nop
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	ret

l0000000000414174:
	sub	eax,edx
	mov	[rsi+0Ch],eax
	jmp	414126h
000000000041417B                                  0F 1F 44 00 00            ..D..

;; fn0000000000414180: 0000000000414180
fn0000000000414180 proc
	push	rsi
	push	rbx
	sub	rsp,68h
	mov	eax,[rdx+10h]
	fld	tword ptr [rcx]
	mov	rbx,rdx
	test	eax,eax
	lea	r8d,[rax+1h]
	js	414200h

l0000000000414196:
	lea	rdx,[rsp+30h]
	lea	r9,[rsp+4Ch]
	mov	ecx,2h
	fstp	tword ptr [rsp+50h]
	mov	rax,[rsp+50h]
	mov	[rsp+30h],rax
	mov	rax,[rsp+58h]
	mov	[rsp+38h],rax
	lea	rax,[rsp+48h]
	mov	[rsp+20h],rax
	call	413170h
	mov	r8d,[rsp+4Ch]
	mov	rsi,rax
	cmp	r8d,0FFFF8000h
	jz	414210h

l00000000004141DD:
	mov	ecx,[rsp+48h]
	mov	r9,rbx
	mov	rdx,rax
	call	4140B0h
	mov	rcx,rsi
	call	419CC0h
	nop
	add	rsp,68h
	pop	rbx
	pop	rsi
	ret
00000000004141FC                                     0F 1F 40 00             ..@.

l0000000000414200:
	mov	dword ptr [rdx+10h],6h
	mov	r8d,7h
	jmp	414196h
000000000041420F                                              90                .

l0000000000414210:
	mov	ecx,[rsp+48h]
	mov	r8,rbx
	mov	rdx,rax
	call	413500h
	mov	rcx,rsi
	call	419CC0h
	nop
	add	rsp,68h
	pop	rbx
	pop	rsi
	ret
000000000041422F                                              90                .

;; fn0000000000414230: 0000000000414230
fn0000000000414230 proc
	push	rsi
	push	rbx
	sub	rsp,68h
	mov	r8d,[rdx+10h]
	fld	tword ptr [rcx]
	mov	rbx,rdx
	test	r8d,r8d
	js	4142E0h

l0000000000414248:
	lea	rdx,[rsp+30h]
	lea	r9,[rsp+4Ch]
	mov	ecx,3h
	fstp	tword ptr [rsp+50h]
	mov	rax,[rsp+50h]
	mov	[rsp+30h],rax
	mov	rax,[rsp+58h]
	mov	[rsp+38h],rax
	lea	rax,[rsp+48h]
	mov	[rsp+20h],rax
	call	413170h
	mov	r8d,[rsp+4Ch]
	mov	rsi,rax
	cmp	r8d,0FFFF8000h
	jz	4142F2h

l000000000041428F:
	mov	ecx,[rsp+48h]
	mov	rdx,rax
	mov	r9,rbx
	call	413D50h
	mov	eax,[rbx+0Ch]
	lea	edx,[rax-1h]
	test	eax,eax
	mov	[rbx+0Ch],edx
	jle	4142CEh

l00000000004142AB:
	nop	dword ptr [rax+rax+0h]

l00000000004142B0:
	mov	rdx,rbx
	mov	ecx,20h
	call	413270h
	mov	r8d,[rbx+0Ch]
	lea	r9d,[r8-1h]
	test	r8d,r8d
	mov	[rbx+0Ch],r9d
	jg	4142B0h

l00000000004142CE:
	mov	rcx,rsi
	call	419CC0h
	nop
	add	rsp,68h
	pop	rbx
	pop	rsi
	ret
00000000004142DE                                           66 90               f.

l00000000004142E0:
	mov	dword ptr [rdx+10h],6h
	mov	r8d,6h
	jmp	414248h

l00000000004142F2:
	mov	ecx,[rsp+48h]
	mov	r8,rbx
	mov	rdx,rax
	call	413500h
	mov	rcx,rsi
	call	419CC0h
	nop
	add	rsp,68h
	pop	rbx
	pop	rsi
	ret
0000000000414311    66 66 66 66 66 66 2E 0F 1F 84 00 00 00 00 00  ffffff.........

;; fn0000000000414320: 0000000000414320
fn0000000000414320 proc
	push	rsi
	push	rbx
	sub	rsp,78h
	mov	r8d,[rdx+10h]
	fld	tword ptr [rcx]
	mov	rbx,rdx
	test	r8d,r8d
	js	414470h

l0000000000414338:
	jz	414450h

l000000000041433E:
	lea	rdx,[rsp+40h]
	lea	r9,[rsp+5Ch]
	mov	ecx,2h
	fstp	tword ptr [rsp+60h]
	mov	rax,[rsp+60h]
	mov	[rsp+40h],rax
	mov	rax,[rsp+68h]
	mov	[rsp+48h],rax
	lea	rax,[rsp+58h]
	mov	[rsp+20h],rax
	call	413170h
	mov	r8d,[rsp+5Ch]
	mov	rsi,rax
	cmp	r8d,0FFFF8000h
	jz	414490h

l0000000000414389:
	cmp	r8d,0FDh
	jl	414410h

l0000000000414393:
	mov	eax,[rbx+10h]
	cmp	r8d,eax
	jg	414410h

l000000000041439B:
	test	byte ptr [rbx+9h],8h
	jnz	414482h

l00000000004143A5:
	mov	rcx,rsi
	mov	[rsp+3Ch],r8d
	call	41BCB8h
	mov	r8d,[rsp+3Ch]
	sub	eax,r8d
	test	eax,eax
	mov	[rbx+10h],eax
	js	4144A1h

l00000000004143C5:
	mov	ecx,[rsp+58h]
	mov	rdx,rsi
	mov	r9,rbx
	call	413D50h
	mov	eax,[rbx+0Ch]
	lea	edx,[rax-1h]
	test	eax,eax
	mov	[rbx+0Ch],edx
	jle	41443Dh

l00000000004143E1:
	mov	rdx,rbx
	mov	ecx,20h
	call	413270h
	mov	r8d,[rbx+0Ch]
	lea	r9d,[r8-1h]
	test	r8d,r8d
	mov	[rbx+0Ch],r9d
	jg	4143E1h

l00000000004143FF:
	mov	rcx,rsi
	call	419CC0h
	nop
	add	rsp,78h
	pop	rbx
	pop	rsi
	ret
000000000041440F                                              90                .

l0000000000414410:
	test	byte ptr [rbx+9h],8h
	jnz	414462h

l0000000000414416:
	mov	rcx,rsi
	mov	[rsp+3Ch],r8d
	call	41BCB8h
	mov	r8d,[rsp+3Ch]
	sub	eax,1h
	mov	[rbx+10h],eax

l000000000041442E:
	mov	ecx,[rsp+58h]
	mov	r9,rbx
	mov	rdx,rsi
	call	4140B0h

l000000000041443D:
	mov	rcx,rsi
	call	419CC0h
	nop
	add	rsp,78h
	pop	rbx
	pop	rsi
	ret
000000000041444D                                        0F 1F 00              ...

l0000000000414450:
	mov	dword ptr [rdx+10h],1h
	mov	r8d,1h
	jmp	41433Eh

l0000000000414462:
	sub	dword ptr [rbx+10h],1h
	jmp	41442Eh
0000000000414468                         0F 1F 84 00 00 00 00 00         ........

l0000000000414470:
	mov	dword ptr [rdx+10h],6h
	mov	r8d,6h
	jmp	41433Eh

l0000000000414482:
	sub	eax,r8d
	mov	[rbx+10h],eax
	jmp	4143C5h
000000000041448D                                        0F 1F 00              ...

l0000000000414490:
	mov	ecx,[rsp+58h]
	mov	r8,rbx
	mov	rdx,rax
	call	413500h
	jmp	41443Dh

l00000000004144A1:
	mov	edx,[rbx+0Ch]
	test	edx,edx
	jle	4143C5h

l00000000004144AC:
	add	eax,edx
	mov	[rbx+0Ch],eax
	jmp	4143C5h
00000000004144B6                   66 2E 0F 1F 84 00 00 00 00 00       f.........

;; fn00000000004144C0: 00000000004144C0
fn00000000004144C0 proc
	push	r13
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,68h
	mov	r9,[rcx]
	mov	r10d,[rcx+8h]
	mov	rbx,rdx
	mov	rax,r9
	mov	[rsp+30h],r9
	mov	[rsp+38h],r10d
	shr	rax,20h
	mov	r8,r10
	and	eax,7FFFFFFFh
	or	r9d,eax
	lea	eax,[r10+r10]
	mov	edx,r9d
	neg	edx
	and	eax,0FFFEh
	or	edx,r9d
	shr	edx,1Fh
	or	edx,eax
	mov	eax,0FFFEh
	sub	eax,edx
	sar	eax,10h
	test	eax,eax
	jnz	414900h

l000000000041451A:
	movzx	esi,word ptr [rsp+38h]
	mov	ecx,esi
	and	ecx,8000h
	jz	414530h

l0000000000414529:
	or	dword ptr [rbx+8h],80h

l0000000000414530:
	and	r8w,7FFFh
	cmp	r8w,7FFFh
	jnz	414560h

l000000000041453E:
	test	r9d,r9d
	jnz	414560h

l0000000000414543:
	lea	rdx,[0000000000490B44]                                 ; [rip+0007C5FA]
	mov	r8,rbx
	call	413500h
	jmp	4148D5h
0000000000414557                      66 0F 1F 84 00 00 00 00 00        f........

l0000000000414560:
	and	si,7FFFh
	jnz	414690h

l000000000041456B:
	mov	rax,[rsp+30h]
	test	rax,rax
	jnz	41491Fh

l0000000000414579:
	mov	r9d,[rbx+10h]
	cmp	r9d,0Eh
	jbe	41499Ch

l0000000000414587:
	xor	esi,esi

l0000000000414589:
	mov	r8d,[rbx+8h]
	lea	rbp,[rsp+40h]

l0000000000414592:
	test	r9d,r9d
	jle	4149ACh

l000000000041459B:
	lea	rax,[rbp+1h]
	mov	byte ptr [rsp+40h],2Eh

l00000000004145A4:
	mov	r10d,[rbx+0Ch]
	lea	rdi,[rax+1h]
	mov	byte ptr [rax],30h
	mov	r12d,2h
	test	r10d,r10d
	jg	4147BCh

l00000000004145BE:
	nop

l00000000004145C0:
	test	r8b,80h
	jnz	414880h

l00000000004145CA:
	test	r8d,100h
	jnz	414970h

l00000000004145D7:
	and	r8d,40h
	jnz	414982h

l00000000004145E1:
	mov	rdx,rbx
	mov	ecx,30h
	call	413270h
	mov	ecx,[rbx+8h]
	mov	rdx,rbx
	and	ecx,20h
	or	ecx,58h
	call	413270h
	mov	eax,[rbx+0Ch]
	test	eax,eax
	jle	41462Ch

l0000000000414606:
	test	byte ptr [rbx+9h],2h
	jz	41462Ch

l000000000041460C:
	sub	eax,1h
	mov	[rbx+0Ch],eax

l0000000000414612:
	mov	rdx,rbx
	mov	ecx,30h
	call	413270h
	mov	eax,[rbx+0Ch]
	lea	edx,[rax-1h]
	test	eax,eax
	mov	[rbx+0Ch],edx
	jg	414612h

l000000000041462C:
	cmp	rdi,rbp
	lea	r13,[rsp+2Eh]
	ja	414669h

l0000000000414636:
	jmp	41489Fh
000000000041463B                                  0F 1F 44 00 00            ..D..

l0000000000414640:
	movzx	eax,word ptr [rbx+20h]
	test	ax,ax
	mov	[rsp+2Eh],ax
	jz	414660h

l000000000041464E:
	mov	r8,rbx
	mov	edx,1h
	mov	rcx,r13
	call	4132D0h
	nop

l0000000000414660:
	cmp	rdi,rbp
	jz	41489Fh

l0000000000414669:
	sub	rdi,1h
	movsx	ecx,byte ptr [rdi]
	cmp	ecx,2Eh
	jz	4148E2h

l0000000000414679:
	cmp	ecx,2Ch
	jz	414640h

l000000000041467E:
	mov	rdx,rbx
	call	413270h
	jmp	414660h
0000000000414688                         0F 1F 84 00 00 00 00 00         ........

l0000000000414690:
	mov	r9d,[rbx+10h]
	sub	si,3FFFh
	mov	rax,[rsp+30h]
	cmp	r9d,0Eh
	ja	41494Dh

l00000000004146A8:
	test	rax,rax
	js	4146B5h

l00000000004146AD:
	nop	dword ptr [rax]

l00000000004146B0:
	add	rax,rax
	jns	4146B0h

l00000000004146B5:
	mov	ecx,0Eh
	mov	edx,4h
	shr	rax,1h
	sub	ecx,r9d
	shl	ecx,2h
	shl	rdx,cl
	add	rax,rdx
	js	414994h

l00000000004146D4:
	add	rax,rax

l00000000004146D7:
	mov	ecx,0Fh
	sub	ecx,r9d
	shl	ecx,2h
	shr	rax,cl

l00000000004146E5:
	mov	r8d,[rbx+8h]
	lea	rbp,[rsp+40h]
	mov	rdi,rbp
	mov	r11d,r8d
	mov	r10d,r8d
	and	r11d,800h
	and	r10d,20h
	jmp	414733h

l0000000000414704:
	mov	ecx,[rbx+10h]
	test	ecx,ecx
	jle	414711h

l000000000041470B:
	sub	ecx,1h
	mov	[rbx+10h],ecx

l0000000000414711:
	shr	rax,4h
	mov	r9,rdi

l0000000000414718:
	test	edx,edx
	jz	414784h

l000000000041471C:
	cmp	edx,9h
	lea	rdi,[r9+1h]
	jle	414797h

l0000000000414725:
	add	edx,37h
	or	edx,r10d

l000000000041472B:
	mov	[r9],dl

l000000000041472E:
	test	rax,rax
	jz	4147A0h

l0000000000414733:
	mov	edx,eax
	and	edx,0Fh
	cmp	edx,eax
	jnz	414704h

l000000000041473C:
	cmp	rdi,rbp
	ja	414752h

l0000000000414741:
	test	r11d,r11d
	jnz	414752h

l0000000000414746:
	mov	r12d,[rbx+10h]
	mov	r9,rdi
	test	r12d,r12d
	jle	414759h

l0000000000414752:
	lea	r9,[rdi+1h]
	mov	byte ptr [rdi],2Eh

l0000000000414759:
	cmp	rax,1h
	jbe	414969h

l0000000000414763:
	lea	ecx,[rsi-1h]
	nop	word ptr cs:[rax+rax+0h]

l0000000000414770:
	shr	rax,1h
	mov	esi,ecx
	cmp	rax,1h
	lea	ecx,[rsi-1h]
	jnz	414770h

l000000000041477E:
	xor	al,al
	test	edx,edx
	jnz	41471Ch

l0000000000414784:
	cmp	r9,rbp
	ja	414793h

l0000000000414789:
	mov	ecx,[rbx+10h]
	mov	rdi,r9
	test	ecx,ecx
	js	41472Eh

l0000000000414793:
	lea	rdi,[r9+1h]

l0000000000414797:
	add	edx,30h
	jmp	41472Bh
000000000041479C                                     0F 1F 40 00             ..@.

l00000000004147A0:
	cmp	rdi,rbp
	jz	4149A3h

l00000000004147A9:
	mov	r10d,[rbx+0Ch]
	mov	r12d,2h
	test	r10d,r10d
	jle	4145C0h

l00000000004147BC:
	mov	edx,[rbx+10h]
	mov	rax,rdi
	movsx	r11d,si
	sub	rax,rbp
	lea	ecx,[rdx+rax]
	test	edx,edx
	mov	edx,r8d
	cmovg	eax,ecx

l00000000004147D4:
	and	edx,1C0h
	mov	ecx,66666667h
	cmp	edx,1h
	sbb	edx,edx
	lea	r9d,[rax+rdx+6h]
	mov	eax,r11d
	imul	ecx
	mov	eax,r11d
	sar	eax,1Fh
	mov	ecx,edx
	sar	ecx,2h
	sub	ecx,eax
	jz	414820h

l00000000004147FD:
	mov	r11d,66666667h

l0000000000414803:
	mov	eax,ecx
	sar	ecx,1Fh
	add	r9d,1h
	imul	r11d
	add	r12d,1h
	sar	edx,2h
	sub	edx,ecx
	mov	ecx,edx
	jnz	414803h

l000000000041481C:
	movsx	r12d,r12w

l0000000000414820:
	cmp	r10d,r9d
	jle	4148F0h

l0000000000414829:
	sub	r10d,r9d
	test	r8d,600h
	jnz	414960h

l0000000000414839:
	lea	eax,[r10-1h]
	test	r10d,r10d
	mov	[rbx+0Ch],eax
	jle	4145C0h

l0000000000414849:
	nop	dword ptr [rax+0h]

l0000000000414850:
	mov	rdx,rbx
	mov	ecx,20h
	call	413270h
	mov	eax,[rbx+0Ch]
	lea	edx,[rax-1h]
	test	eax,eax
	mov	[rbx+0Ch],edx
	jg	414850h

l000000000041486A:
	mov	r8d,[rbx+8h]
	test	r8b,80h
	jz	4145CAh

l0000000000414878:
	nop	dword ptr [rax+rax+0h]

l0000000000414880:
	mov	rdx,rbx
	mov	ecx,2Dh
	call	413270h
	jmp	4145E1h

l0000000000414892:
	mov	rdx,rbx
	mov	ecx,30h
	call	413270h

l000000000041489F:
	mov	eax,[rbx+10h]
	lea	edx,[rax-1h]
	test	eax,eax
	mov	[rbx+10h],edx
	jg	414892h

l00000000004148AC:
	mov	ecx,[rbx+8h]
	mov	rdx,rbx
	and	ecx,20h
	or	ecx,50h
	call	413270h
	add	[rbx+0Ch],r12d
	or	dword ptr [rbx+8h],1C0h
	movsx	rcx,si
	mov	rdx,rbx
	call	4135A0h
	nop

l00000000004148D5:
	add	rsp,68h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	ret

l00000000004148E2:
	mov	rcx,rbx
	call	413C60h
	jmp	414660h
00000000004148EF                                              90                .

l00000000004148F0:
	mov	dword ptr [rbx+0Ch],0FFFFFFFFh
	jmp	4145C0h
00000000004148FC                                     0F 1F 40 00             ..@.

l0000000000414900:
	lea	rdx,[0000000000490B40]                                 ; [rip+0007C239]
	mov	r8,rbx
	xor	ecx,ecx
	call	413500h
	nop
	add	rsp,68h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	ret

l000000000041491F:
	js	4149C1h

l0000000000414925:
	mov	edx,0FFFFC001h
	nop	word ptr [rax+rax+0h]

l0000000000414930:
	mov	esi,edx
	sub	edx,1h
	add	rax,rax
	jns	414930h

l000000000041493A:
	mov	r9d,[rbx+10h]
	cmp	r9d,0Eh
	jbe	4146B5h

l0000000000414948:
	jmp	4146E5h

l000000000041494D:
	test	rax,rax
	jnz	4146E5h

l0000000000414956:
	jmp	414589h
000000000041495B                                  0F 1F 44 00 00            ..D..

l0000000000414960:
	mov	[rbx+0Ch],r10d
	jmp	4145C0h

l0000000000414969:
	xor	eax,eax
	jmp	414718h

l0000000000414970:
	mov	rdx,rbx
	mov	ecx,2Bh
	call	413270h
	jmp	4145E1h

l0000000000414982:
	mov	rdx,rbx
	mov	ecx,20h
	call	413270h
	jmp	4145E1h

l0000000000414994:
	add	esi,1h
	jmp	4146D7h

l000000000041499C:
	xor	eax,eax
	jmp	4146B0h

l00000000004149A3:
	mov	r9d,[rbx+10h]
	jmp	414592h

l00000000004149AC:
	test	r8d,800h
	mov	rax,rbp
	jz	4145A4h

l00000000004149BC:
	jmp	41459Bh

l00000000004149C1:
	mov	esi,0FFFFC002h
	jmp	41493Ah
00000000004149CB                                  0F 1F 44 00 00            ..D..

;; fn00000000004149D0: 00000000004149D0
;;   Called from:
;;     0000000000411EB2 (in fn0000000000411E90)
;;     0000000000411EE0 (in fn0000000000411E90)
fn00000000004149D0 proc
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,+0B8h
	mov	r13,[rsp+120h]
	mov	r15d,ecx
	mov	rdi,rdx
	mov	esi,r8d
	mov	rbx,r9
	and	r15d,6000h
	call	41BDC0h
	mov	eax,[rax]
	lea	rcx,[0000000000490B5D]                                 ; [rip+0007C151]
	xor	edx,edx
	mov	[rsp+80h],rdi
	mov	[rsp+88h],r15d
	mov	dword ptr [rsp+8Ch],0FFFFFFFFh
	mov	dword ptr [rsp+90h],0FFFFFFFFh
	mov	[rsp+34h],eax
	xor	eax,eax
	mov	dword ptr [rsp+94h],0FFFFFFFDh
	mov	[rsp+98h],ax
	mov	dword ptr [rsp+9Ch],0h
	mov	[rsp+0A0h],dx
	mov	dword ptr [rsp+0A4h],0h
	mov	[rsp+0A8h],esi
	call	41BF28h
	test	rax,rax
	jz	414A8Ch

l0000000000414A7C:
	movsx	edx,byte ptr [rax]
	mov	eax,2h
	sub	edx,30h
	cmp	edx,2h
	jbe	414A99h

l0000000000414A8C:
	call	41BFF0h
	and	eax,1h
	neg	eax
	add	eax,3h

l0000000000414A99:
	lea	rdi,[rsp+70h]
	mov	[rsp+0ACh],eax
	movzx	eax,byte ptr [rbx]
	lea	rsi,[rsp+6Eh]
	lea	r12,[rsp+80h]
	lea	rbp,[0000000000490B74]                                 ; [rip+0007C0B8]
	mov	[rsp+28h],rdi
	lea	rdi,[rsp+50h]
	mov	[rsp+38h],rsi
	mov	[rsp+20h],rdi
	mov	edi,r15d
	or	edi,200h
	mov	[rsp+48h],edi
	nop	dword ptr [rax]

l0000000000414AE0:
	movsx	ecx,al
	lea	rsi,[rbx+1h]
	test	ecx,ecx
	jz	414B6Ah

l0000000000414AEB:
	cmp	ecx,25h
	jnz	414B50h

l0000000000414AF0:
	movzx	eax,byte ptr [rbx+1h]
	xor	r10d,r10d
	xor	r14d,r14d
	mov	[rsp+88h],r15d
	mov	dword ptr [rsp+90h],0FFFFFFFFh
	mov	rdi,rsi
	mov	dword ptr [rsp+8Ch],0FFFFFFFFh
	lea	r11,[r12+0Ch]
	test	al,al
	jz	414CBBh

l0000000000414B28:
	lea	edx,[rax-20h]
	lea	rbx,[rdi+1h]
	movsx	ecx,al
	cmp	dl,5Ah
	ja	415120h

l0000000000414B3B:
	movzx	edx,dl
	movsxd	rdx,dword ptr [rbp+rdx*4+0h]
	add	rdx,rbp
	jmp	rdx
0000000000414B48                         0F 1F 84 00 00 00 00 00         ........

l0000000000414B50:
	mov	rdx,r12
	call	413270h
	movzx	eax,byte ptr [rbx+1h]
	mov	rbx,rsi
	lea	rsi,[rbx+1h]
	movsx	ecx,al
	test	ecx,ecx
	jnz	414AEBh

l0000000000414B6A:
	mov	eax,[rsp+0A4h]
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
0000000000414B85                41 83 EA 02 4C 89 E8 41 83 FA 01      A...L..A...
0000000000414B90 0F 86 CD 05 00 00 48 8B 30 49 83 C5 08 48 85 F6 ......H.0I...H..
0000000000414BA0 0F 84 AF 00 00 00 48 89 F1 E8 0A 71 00 00 89 C2 ......H....q....
0000000000414BB0 4D 89 E0 48 89 F1 E8 35 E8 FF FF 0F 1F 44 00 00 M..H...5.....D..

l0000000000414BC0:
	movzx	eax,byte ptr [rbx]
	jmp	414AE0h
0000000000414BC8                         0F 1F 84 00 00 00 00 00         ........
0000000000414BD0 45 85 F6 75 0E 44 39 BC 24 88 00 00 00 0F 84 38 E..u.D9.$......8
0000000000414BE0 07 00 00 49 8B 55 00 49 8D 75 08 4D 89 E0 B9 78 ...I.U.I.u.M...x
0000000000414BF0 00 00 00 49 89 F5 48 89 54 24 70 E8 80 EC FF FF ...I..H.T$p.....
0000000000414C00 EB BE 41 83 FA 04 49 8B 45 00 0F 84 3A 06 00 00 ..A...I.E...:...
0000000000414C10 41 83 FA 01 0F 84 CA 06 00 00 41 83 FA 02 74 0A A.........A...t.
0000000000414C20 41 83 FA 03 0F 84 62 07 00 00 8B 94 24 A4 00 00 A.....b.....$...
0000000000414C30 00 49 83 C5 08 89 10 EB 87 0F 1F 80 00 00 00 00 .I..............
0000000000414C40 8B 4C 24 34 E8 B7 71 00 00 48 85 C0 48 89 C6 0F .L$4..q..H..H...
0000000000414C50 85 51 FF FF FF BA 06 00 00 00 48 8D 35 F5 BE 07 .Q........H.5...
0000000000414C60 00 E9 4A FF FF FF 66 2E 0F 1F 84 00 00 00 00 00 ..J...f.........
0000000000414C70 0F B6 47 01 41 BA 02 00 00 00 41 BE 04 00 00 00 ..G.A.....A.....
0000000000414C80 3C 6C 75 2C 48 8D 5F 02 0F B6 47 02 41 BA 03 00 <lu,H._...G.A...
0000000000414C90 00 00 41 BE 04 00 00 00 EB 16 66 0F 1F 44 00 00 ..A.......f..D..
0000000000414CA0 0F B6 47 01 41 BA 03 00 00 00 41 BE 04 00 00 00 ..G.A.....A.....

l0000000000414CB0:
	test	al,al
	mov	rdi,rbx
	jnz	414B28h

l0000000000414CBB:
	mov	rbx,rdi
	jmp	414AE0h
0000000000414CC3          8B 84 24 88 00 00 00 4C 89 EA 49 83 C5    ..$....L..I..
0000000000414CD0 08 83 C8 20 A8 04 89 84 24 88 00 00 00 0F 84 48 ... ....$......H
0000000000414CE0 02 00 00 48 8B 02 48 8B 4C 24 20 4C 89 E2 DB 28 ...H..H.L$ L...(
0000000000414CF0 DB 7C 24 50 E8 27 F6 FF FF E9 C2 FE FF FF 66 90 .|$P.'........f.
0000000000414D00 0F B6 47 01 41 BA 01 00 00 00 41 BE 04 00 00 00 ..G.A.....A.....
0000000000414D10 3C 68 75 9C 48 8D 5F 02 0F B6 47 02 41 BA 04 00 <hu.H._...G.A...
0000000000414D20 00 00 41 BE 04 00 00 00 EB 86 66 0F 1F 44 00 00 ..A.......f..D..
0000000000414D30 8B 84 24 88 00 00 00 4C 89 EA 49 83 C5 08 83 C8 ..$....L..I.....
0000000000414D40 20 A8 04 89 84 24 88 00 00 00 0F 84 09 02 00 00  ....$..........
0000000000414D50 48 8B 02 48 8B 4C 24 20 4C 89 E2 DB 28 DB 7C 24 H..H.L$ L...(.|$
0000000000414D60 50 E8 CA F4 FF FF E9 55 FE FF FF 0F 1F 44 00 00 P......U.....D..
0000000000414D70 8B 84 24 88 00 00 00 4C 89 EA 49 83 C5 08 83 C8 ..$....L..I.....
0000000000414D80 20 A8 04 89 84 24 88 00 00 00 0F 84 F7 01 00 00  ....$..........
0000000000414D90 48 8B 02 48 8B 4C 24 20 4C 89 E2 DB 28 DB 7C 24 H..H.L$ L...(.|$
0000000000414DA0 50 E8 DA F3 FF FF E9 15 FE FF FF 0F 1F 44 00 00 P............D..
0000000000414DB0 41 83 FA 03 0F 84 7E 04 00 00 41 83 FA 02 0F 84 A.....~...A.....
0000000000414DC0 33 05 00 00 41 8B 75 00 41 83 FA 01 49 8D 45 08 3...A.u.A...I.E.
0000000000414DD0 48 89 74 24 70 0F 84 70 05 00 00 41 83 FA 04 49 H.t$p..p...A...I
0000000000414DE0 89 C5 0F 84 B8 05 00 00 83 F9 75 0F 84 D2 00 00 ..........u.....
0000000000414DF0 00 48 8B 54 24 70 4D 89 E0 E8 82 EA FF FF E9 BD .H.T$pM.........
0000000000414E00 FD FF FF 41 83 EA 02 4C 89 E8 C7 84 24 90 00 00 ...A...L....$...
0000000000414E10 00 FF FF FF FF 41 83 FA 01 0F 86 8C 01 00 00 8B .....A..........
0000000000414E20 00 48 8B 4C 24 28 4D 89 E0 BA 01 00 00 00 49 83 .H.L$(M.......I.
0000000000414E30 C5 08 88 44 24 70 E8 B5 E5 FF FF E9 80 FD FF FF ...D$p..........
0000000000414E40 8B 84 24 88 00 00 00 4C 89 EA 49 83 C5 08 83 C8 ..$....L..I.....
0000000000414E50 20 A8 04 89 84 24 88 00 00 00 0F 84 88 01 00 00  ....$..........
0000000000414E60 48 8B 02 48 8B 4C 24 20 4C 89 E2 DB 28 DB 7C 24 H..H.L$ L...(.|$
0000000000414E70 50 E8 4A F6 FF FF E9 45 FD FF FF 0F 1F 44 00 00 P.J....E.....D..
0000000000414E80 81 8C 24 88 00 00 00 80 00 00 00 41 83 FA 03 0F ..$........A....
0000000000414E90 84 E7 03 00 00 41 83 FA 02 0F 84 6A 04 00 00 49 .....A.....j...I
0000000000414EA0 63 45 00 41 83 FA 01 49 8D 55 08 48 89 44 24 70 cE.A...I.U.H.D$p
0000000000414EB0 0F 84 A7 04 00 00 41 83 FA 04 49 89 D5 0F 84 EC ......A...I.....
0000000000414EC0 04 00 00 48 8B 4C 24 70 4C 89 E2 E8 D0 E6 FF FF ...H.L$pL.......
0000000000414ED0 E9 EB FC FF FF 83 8C 24 88 00 00 00 04 0F B6 47 .......$.......G
0000000000414EE0 01 41 BE 04 00 00 00 E9 C4 FD FF FF 0F 1F 40 00 .A............@.
0000000000414EF0 0F B6 47 01 3C 36 0F 84 60 03 00 00 3C 33 0F 84 ..G.<6..`...<3..
0000000000414F00 B8 03 00 00 41 BA 03 00 00 00 41 BE 04 00 00 00 ....A.....A.....
0000000000414F10 E9 9B FD FF FF 8B 84 24 88 00 00 00 4C 89 EA 49 .......$....L..I
0000000000414F20 83 C5 08 A8 04 0F 85 B8 FD FF FF 48 8B 4C 24 20 ...........H.L$ 
0000000000414F30 DD 02 4C 89 E2 DB 7C 24 50 E8 E2 F3 FF FF E9 7D ..L...|$P......}
0000000000414F40 FC FF FF 8B 84 24 88 00 00 00 4C 89 EA 49 83 C5 .....$....L..I..
0000000000414F50 08 A8 04 0F 85 F7 FD FF FF 48 8B 4C 24 20 DD 02 .........H.L$ ..
0000000000414F60 4C 89 E2 DB 7C 24 50 E8 C4 F2 FF FF E9 4F FC FF L...|$P......O..
0000000000414F70 FF 8B 84 24 88 00 00 00 4C 89 EA 49 83 C5 08 A8 ...$....L..I....
0000000000414F80 04 0F 85 09 FE FF FF 48 8B 4C 24 20 DD 02 4C 89 .......H.L$ ..L.
0000000000414F90 E2 DB 7C 24 50 E8 E6 F1 FF FF E9 21 FC FF FF 90 ..|$P......!....
0000000000414FA0 C7 84 24 90 00 00 00 FF FF FF FF 41 8B 45 00 48 ..$........A.E.H
0000000000414FB0 8B 4C 24 28 49 8D 75 08 4D 89 E0 BA 01 00 00 00 .L$(I.u.M.......
0000000000414FC0 49 89 F5 66 89 44 24 70 E8 03 E3 FF FF E9 EE FB I..f.D$p........
0000000000414FD0 FF FF 8B 84 24 88 00 00 00 4C 89 EA 49 83 C5 08 ....$....L..I...
0000000000414FE0 A8 04 0F 85 78 FE FF FF 48 8B 4C 24 20 DD 02 4C ....x...H.L$ ..L
0000000000414FF0 89 E2 DB 7C 24 50 E8 C5 F4 FF FF E9 C0 FB FF FF ...|$P..........
0000000000415000 45 85 F6 0F 85 97 01 00 00 81 8C 24 88 00 00 00 E..........$....
0000000000415010 00 02 00 00 0F B6 47 01 E9 93 FC FF FF 0F 1F 00 ......G.........
0000000000415020 41 83 FE 01 0F 86 64 02 00 00 0F B6 47 01 41 BE A.....d.....G.A.
0000000000415030 04 00 00 00 E9 77 FC FF FF 0F 1F 80 00 00 00 00 .....w..........
0000000000415040 45 85 F6 0F 85 80 00 00 00 81 8C 24 88 00 00 00 E..........$....
0000000000415050 00 04 00 00 0F B6 47 01 E9 53 FC FF FF 0F 1F 00 ......G..S......
0000000000415060 45 85 F6 75 64 81 8C 24 88 00 00 00 00 01 00 00 E..ud..$........
0000000000415070 0F B6 47 01 E9 37 FC FF FF 0F 1F 80 00 00 00 00 ..G..7..........
0000000000415080 45 85 F6 75 44 81 8C 24 88 00 00 00 00 08 00 00 E..uD..$........
0000000000415090 0F B6 47 01 E9 17 FC FF FF 0F 1F 80 00 00 00 00 ..G.............
00000000004150A0 45 85 F6 75 24 83 8C 24 88 00 00 00 40 0F B6 47 E..u$..$....@..G
00000000004150B0 01 E9 FA FB FF FF 66 2E 0F 1F 84 00 00 00 00 00 ......f.........
00000000004150C0 45 85 F6 0F 84 09 01 00 00                      E........      

l00000000004150C9:
	movzx	eax,byte ptr [rdi+1h]
	jmp	414CB0h
00000000004150D2       4C 89 E2 E8 96 E1 FF FF E9 E1 FA FF FF 90   L.............
00000000004150E0 4D 85 DB 0F 84 41 FF FF FF 41 F7 C6 FD FF FF FF M....A...A......
00000000004150F0 0F 85 CA 00 00 00 41 8B 45 00 49 8D 55 08 85 C0 ......A.E.I.U...
0000000000415100 41 89 03 0F 88 67 02 00 00 0F B6 47 01 49 89 D5 A....g.....G.I..
0000000000415110 45 31 DB E9 98 FB FF FF 0F 1F 84 00 00 00 00 00 E1..............

l0000000000415120:
	sub	eax,30h
	cmp	al,9h
	ja	415336h

l000000000041512B:
	cmp	r14d,3h
	ja	415336h

l0000000000415135:
	test	r14d,r14d
	jnz	4151AAh

l000000000041513A:
	mov	r14d,1h

l0000000000415140:
	test	r11,r11
	jz	4150C9h

l0000000000415145:
	mov	eax,[r11]
	test	eax,eax
	js	4152ADh

l0000000000415150:
	lea	eax,[rax+rax*4]
	lea	eax,[rcx+rax*2-30h]
	mov	[r11],eax
	movzx	eax,byte ptr [rdi+1h]
	jmp	414CB0h
0000000000415163          49 8B 75 00 48 8D 05 DA B9 07 00 49 8D    I.u.H......I.
0000000000415170 7D 08 49 89 FD 48 85 F6 48 0F 44 F0 48 89 F1 E8 }.I..H..H.D.H...
0000000000415180 B4 6B 00 00 4D 89 E0 89 C2 48 89 F1 E8 3F E1 FF .k..M....H...?..
0000000000415190 FF E9 2A FA FF FF 66 2E 0F 1F 84 00 00 00 00 00 ..*...f.........
00000000004151A0 41 83 FE 03 0F 87 8C 01 00 00                   A.........     

l00000000004151AA:
	cmp	r14d,2h
	mov	eax,3h
	cmovz	r14d,eax

l00000000004151B7:
	jmp	415140h
00000000004151B9                            0F 1F 80 00 00 00 00          .......
00000000004151C0 0F B6 47 01 45 31 DB 41 BE 04 00 00 00 E9 DE FA ..G.E1.A........
00000000004151D0 FF FF 44 89 54 24 4C 4C 89 5C 24 40 81 8C 24 88 ..D.T$LL.\$@..$.
00000000004151E0 00 00 00 00 10 00 00 C7 44 24 70 00 00 00 00 E8 ........D$p.....
00000000004151F0 14 6D 00 00 4C 8B 4C 24 28 48 8B 50 08 41 B8 10 .m..L.L$(H.P.A..
0000000000415200 00 00 00 48 8B 4C 24 38 E8 63 DD FF FF 85 C0 4C ...H.L$8.c.....L
0000000000415210 8B 5C 24 40 44 8B 54 24 4C 7E 0D 0F B7 54 24 6E .\$@D.T$L~...T$n
0000000000415220 66 89 94 24 A0 00 00 00 89 84 24 9C 00 00 00 0F f..$......$.....
0000000000415230 B6 47 01 E9 78 FA FF FF 49 8B 45 00 49 83 C5 08 .G..x...I.E.I...
0000000000415240 48 89 44 24 70 E9 9E FB FF FF 8B 94 24 A4 00 00 H.D$p.......$...
0000000000415250 00 49 83 C5 08 88 10 E9 64 F9 FF FF 80 7F 02 34 .I......d......4
0000000000415260 0F 84 59 01 00 00 B8 36 00 00 00 41 BA 03 00 00 ..Y....6...A....
0000000000415270 00 41 BE 04 00 00 00 E9 34 FA FF FF 49 8B 45 00 .A......4...I.E.
0000000000415280 49 83 C5 08 48 89 44 24 70 E9 35 FC FF FF C7 84 I...H.D$p.5.....
0000000000415290 24 90 00 00 00 00 00 00 00 0F B6 47 01 4D 8D 5C $..........G.M.\
00000000004152A0 24 10 41 BE 02 00 00 00 E9 03 FA FF FF          $.A..........  

l00000000004152AD:
	sub	ecx,30h
	movzx	eax,byte ptr [rdi+1h]
	mov	[r11],ecx
	jmp	414CB0h
00000000004152BC                                     80 7F 02 32             ...2
00000000004152C0 B8 33 00 00 00 0F 85 39 FC FF FF 48 8D 5F 03 0F .3.....9...H._..
00000000004152D0 B6 47 03 41 BA 02 00 00 00 41 BE 04 00 00 00 E9 .G.A.....A......
00000000004152E0 CC F9 FF FF 8B 94 24 A4 00 00 00 49 83 C5 08 66 ......$....I...f
00000000004152F0 89 10 E9 C9 F8 FF FF 41 8B 45 00 49 83 C5 08 48 .......A.E.I...H
0000000000415300 89 44 24 70 E9 DF FA FF FF 49 63 45 00 49 83 C5 .D$p.....IcE.I..
0000000000415310 08 48 89 44 24 70 E9 A8 FB FF FF 8B 44 24 48 C7 .H.D$p......D$H.
0000000000415320 84 24 90 00 00 00 10 00 00 00 89 84 24 88 00 00 .$..........$...
0000000000415330 00 E9 AD F8 FF FF                               ......         

l0000000000415336:
	mov	rdx,r12
	mov	ecx,25h
	mov	rbx,rsi
	call	413270h
	jmp	414BC0h
000000000041534B                                  0F B7 54 24 70            ..T$p
0000000000415350 49 89 C5 48 89 54 24 70 E9 8B FA FF FF 48 0F BF I..H.T$p.....H..
0000000000415360 44 24 70 49 89 D5 48 89 44 24 70 E9 53 FB FF FF D$pI..H.D$p.S...
0000000000415370 45 85 F6 75 63 81 8C 24 88 00 00 00 00 04 00 00 E..uc..$........
0000000000415380 F7 9C 24 8C 00 00 00 E9 7D FD FF FF 48 63 94 24 ..$.....}...Hc.$
0000000000415390 A4 00 00 00 49 83 C5 08 48 89 10 E9 20 F8 FF FF ....I...H... ...
00000000004153A0 0F B6 44 24 70 48 89 44 24 70 E9 39 FA FF FF 48 ..D$pH.D$p.9...H
00000000004153B0 0F BE 44 24 70 48 89 44 24 70 E9 04 FB FF FF 48 ..D$pH.D$p.....H
00000000004153C0 8D 5F 03 0F B6 47 03 41 BA 03 00 00 00 41 BE 04 ._...G.A.....A..
00000000004153D0 00 00 00 E9 D8 F8 FF FF C7 84 24 90 00 00 00 FF ..........$.....
00000000004153E0 FF FF FF 0F B6 47 01 49 89 D5 45 31 DB E9 BE F8 .....G.I..E1....
00000000004153F0 FF FF 90 90 90 90 90 90 90 90 90 90 90 90 90 90 ................

;; fn0000000000415400: 0000000000415400
;;   Called from:
;;     000000000041556D (in fn00000000004154B0)
;;     0000000000415858 (in fn00000000004154B0)
;;     000000000041744F (in fn0000000000415960)
;;     000000000041B64A (in fn000000000041AF50)
fn0000000000415400 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	movsxd	rax,dword ptr [rcx+14h]
	lea	rdx,[rcx+18h]
	mov	rbx,rcx
	lea	r9,[rdx+rax*4]
	mov	rcx,rax
	jmp	415430h
000000000041541A                               66 0F 1F 44 00 00           f..D..

l0000000000415420:
	add	rdx,4h
	mov	dword ptr [rdx-4h],0h
	cmp	r9,rdx
	jbe	415450h

l0000000000415430:
	mov	r8d,[rdx]
	cmp	r8d,0FFh
	jz	415420h

l0000000000415439:
	add	r8d,1h
	mov	rax,rbx
	mov	[rdx],r8d
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret
000000000041544A                               66 0F 1F 44 00 00           f..D..

l0000000000415450:
	cmp	ecx,[rbx+0Ch]
	jge	415470h

l0000000000415455:
	add	ecx,1h
	mov	[rbx+14h],ecx
	mov	dword ptr [rbx+rax*4+18h],1h
	mov	rax,rbx
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret
000000000041546D                                        0F 1F 00              ...

l0000000000415470:
	mov	eax,[rbx+8h]
	lea	ecx,[rax+1h]
	call	419F80h
	mov	rsi,rax
	lea	rcx,[rax+10h]
	movsxd	rax,dword ptr [rbx+14h]
	lea	rdx,[rbx+10h]
	lea	r8,[0008h+rax*4]
	call	41BCC0h
	mov	rcx,rbx
	mov	rbx,rsi
	call	41A090h
	movsxd	rax,dword ptr [rsi+14h]
	mov	rcx,rax
	jmp	415455h
00000000004154AB                                  0F 1F 44 00 00            ..D..

;; fn00000000004154B0: 00000000004154B0
;;   Called from:
;;     0000000000416040 (in fn0000000000415960)
fn00000000004154B0 proc
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,48h
	mov	rdi,rdx
	mov	r12,r8
	lea	rdx,[rsp+3Ch]
	lea	r8,[rsp+38h]
	movsd	xmm0,double ptr [rcx]
	mov	r13,r9
	call	41A860h
	mov	r10d,[rsp+38h]
	mov	esi,[rdi]
	mov	rbx,rax
	mov	edx,[rsp+3Ch]
	sub	r10d,esi
	add	edx,r10d
	test	r10d,r10d
	mov	[rsp+38h],r10d
	mov	[rsp+3Ch],edx
	jle	4156C0h

l0000000000415502:
	cmp	esi,35h
	jz	4156F0h

l000000000041550B:
	cmp	dword ptr [rsp+0B8h],1h
	jz	4155C4h

l0000000000415519:
	cmp	dword ptr [rsp+0B8h],2h
	jz	415550h

l0000000000415523:
	mov	eax,r10d
	sub	eax,1h
	jnz	4157C0h

l000000000041552F:
	mov	ecx,[rsp+0B0h]
	xor	r15d,r15d
	test	ecx,ecx
	jz	415647h

l0000000000415541:
	test	byte ptr [rbx+18h],2h
	jz	41570Eh

l000000000041554B:
	nop	dword ptr [rax+rax+0h]

l0000000000415550:
	mov	edx,r10d
	mov	rcx,rbx
	call	41AC20h
	mov	edx,[rsp+38h]
	mov	rcx,rbx
	mov	r14d,eax
	call	41ACB0h
	mov	rcx,rbx
	call	415400h
	mov	edx,esi
	mov	rbx,rax
	and	edx,1Fh
	jnz	4157B0h

l0000000000415580:
	mov	eax,[rbx+14h]
	sub	eax,1h
	cdqe
	bsr	eax,[rbx+rax*4+18h]
	xor	eax,1Fh
	cmp	edx,eax
	jz	415840h

l0000000000415598:
	test	r14d,r14d
	jnz	4155A5h

l000000000041559D:
	mov	r14d,[rbx+18h]
	and	r14d,1h

l00000000004155A5:
	mov	edx,1h
	mov	rcx,rbx
	mov	ebp,20h
	call	41ACB0h
	mov	eax,[rsp+3Ch]
	lea	edx,[rax+1h]
	mov	[rsp+3Ch],edx
	jmp	4155EFh

l00000000004155C4:
	mov	edx,r10d
	mov	rcx,rax
	call	41AC20h
	test	eax,eax
	mov	r14d,eax
	jnz	415663h

l00000000004155DA:
	mov	edx,[rsp+38h]
	mov	rcx,rbx
	xor	r14d,r14d
	xor	ebp,ebp
	call	41ACB0h

l00000000004155EB:
	mov	edx,[rsp+3Ch]

l00000000004155EF:
	mov	eax,[rdi+4h]
	cmp	eax,edx
	jle	415680h

l00000000004155FA:
	mov	r8d,eax
	mov	[rsp+3Ch],eax
	sub	r8d,edx
	cmp	esi,r8d
	jge	415740h

l000000000041560D:
	mov	rdi,[rsp+0C0h]
	mov	dword ptr [rbx+14h],0h
	mov	edx,eax
	xor	ebp,ebp
	mov	dword ptr [rdi],50h

l0000000000415626:
	mov	[r12],edx
	mov	r8,rbx
	mov	edx,esi
	mov	rcx,r13
	mov	r15d,1h
	call	41ABB0h
	mov	rax,[rsp+0C0h]
	or	[rax],ebp

l0000000000415647:
	mov	rcx,rbx
	call	41A090h
	mov	eax,r15d
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

l0000000000415663:
	mov	edx,[rsp+38h]
	mov	rcx,rbx
	mov	ebp,10h
	call	41ACB0h
	jmp	4155EBh
0000000000415679                            0F 1F 80 00 00 00 00          .......

l0000000000415680:
	mov	eax,[rdi+8h]
	cmp	eax,edx
	jge	415626h

l0000000000415687:
	add	eax,1h
	xor	ebp,ebp
	mov	[rsp+3Ch],eax
	mov	rax,[rsp+0C0h]
	mov	dword ptr [rax],0A3h
	call	41BDC0h
	mov	dword ptr [rax],22h
	mov	dword ptr [rbx+14h],0h
	mov	edx,[rsp+3Ch]
	jmp	415626h
00000000004156B9                            0F 1F 80 00 00 00 00          .......

l00000000004156C0:
	mov	r9d,[rsp+0B0h]
	xor	r15d,r15d
	test	r9d,r9d
	jz	415647h

l00000000004156D4:
	test	r10d,r10d
	jnz	415820h

l00000000004156DD:
	xor	r14d,r14d
	xor	ebp,ebp
	jmp	4155EFh
00000000004156E7                      66 0F 1F 84 00 00 00 00 00        f........

l00000000004156F0:
	mov	r8d,[rsp+0B0h]
	xor	r15d,r15d
	test	r8d,r8d
	jz	415647h

l0000000000415704:
	cmp	dword ptr [rdi+0Ch],1h
	jnz	415647h

l000000000041570E:
	mov	edx,r10d
	mov	rcx,rbx
	call	41AC20h
	test	eax,eax
	mov	r14d,eax
	jz	4155DAh

l0000000000415724:
	mov	edx,[rsp+38h]
	mov	rcx,rbx
	mov	ebp,10h
	call	41ACB0h
	mov	edx,[rsp+3Ch]
	jmp	4155EFh
000000000041573E                                           66 90               f.

l0000000000415740:
	mov	edx,[rdi+10h]
	test	edx,edx
	jnz	41560Dh

l000000000041574B:
	lea	edi,[r8-1h]
	test	r14d,r14d
	setz	al
	test	edi,edi
	jle	4157FCh

l000000000041575D:
	test	al,al
	jnz	4157E0h

l0000000000415761:
	mov	ecx,edi
	sar	edi,5h
	mov	eax,1h
	movsxd	rdi,edi
	shl	eax,cl
	mov	edx,r8d
	and	eax,[rbx+rdi*4+18h]
	mov	rcx,rbx
	mov	edi,eax
	call	41ACB0h
	mov	rax,[rsp+0C0h]
	test	edi,edi
	mov	dword ptr [rax],2h
	jnz	415850h

l0000000000415797:
	test	r14d,r14d
	mov	edx,[rsp+3Ch]
	jz	415626h

l00000000004157A4:
	mov	ebp,50h
	jmp	415626h
00000000004157AE                                           66 90               f.

l00000000004157B0:
	mov	eax,20h
	sub	eax,edx
	mov	edx,eax
	jmp	415580h
00000000004157BE                                           66 90               f.

l00000000004157C0:
	mov	edx,eax
	sar	edx,5h
	movsxd	rdx,edx
	mov	edx,[rbx+rdx*4+18h]
	bt	edx,eax
	jc	415550h

l00000000004157D5:
	jmp	41570Eh
00000000004157DA                               66 0F 1F 44 00 00           f..D..

l00000000004157E0:
	mov	edx,edi
	mov	rcx,rbx
	mov	[rsp+2Ch],r8d
	call	41AC20h
	mov	r8d,[rsp+2Ch]
	test	eax,eax
	mov	r14d,eax
	setz	al

l00000000004157FC:
	test	al,al
	jz	415761h

l0000000000415804:
	mov	eax,[rsp+0B0h]
	xor	r15d,r15d
	test	eax,eax
	jz	415647h

l0000000000415816:
	jmp	415761h
000000000041581B                                  0F 1F 44 00 00            ..D..

l0000000000415820:
	mov	edx,r10d
	mov	rcx,rbx
	neg	edx
	call	41A490h
	mov	edx,[rsp+3Ch]
	mov	rbx,rax
	jmp	4156DDh
0000000000415839                            0F 1F 80 00 00 00 00          .......

l0000000000415840:
	mov	edx,[rsp+3Ch]
	mov	ebp,20h
	jmp	4155EFh
000000000041584E                                           66 90               f.

l0000000000415850:
	mov	rcx,rbx
	mov	ebp,60h
	call	415400h
	mov	edx,[rsp+3Ch]
	mov	rbx,rax
	jmp	415626h
0000000000415869                            0F 1F 80 00 00 00 00          .......

;; fn0000000000415870: 0000000000415870
fn0000000000415870 proc
	movsxd	rdx,dword ptr [rcx+14h]
	lea	rax,[rcx+18h]
	lea	rcx,[rax+rdx*4]
	jmp	415890h
000000000041587E                                           66 90               f.

l0000000000415880:
	add	rax,4h
	mov	dword ptr [rax-4h],0FFFFFFFFh
	cmp	rcx,rax
	jbe	4158A0h

l0000000000415890:
	mov	edx,[rax]
	test	edx,edx
	jz	415880h

l0000000000415896:
	sub	edx,1h
	mov	[rax],edx
	ret
000000000041589C                                     0F 1F 40 00             ..@.

l00000000004158A0:
	ret
00000000004158A2       66 66 66 66 66 2E 0F 1F 84 00 00 00 00 00   fffff.........

;; fn00000000004158B0: 00000000004158B0
;;   Called from:
;;     0000000000416BC4 (in fn0000000000415960)
;;     0000000000417166 (in fn0000000000415960)
fn00000000004158B0 proc
	push	rbx
	sub	rsp,30h
	lea	ebx,[rdx+1Fh]
	mov	rax,rcx
	sar	ebx,5h
	cmp	ebx,[rcx+8h]
	jg	415940h

l00000000004158C3:
	mov	r9d,edx
	sar	r9d,5h
	and	edx,1Fh
	jz	415920h

l00000000004158CF:
	add	r9d,1h
	lea	r8,[rax+18h]
	mov	[rax+14h],r9d
	movsxd	r9,r9d
	lea	r9,[r8+r9*4]
	cmp	r8,r9
	jnc	415905h

l00000000004158E7:
	nop	word ptr [rax+rax+0h]

l00000000004158F0:
	add	r8,4h
	mov	dword ptr [r8-4h],0FFFFFFFFh
	cmp	r8,r9
	jc	4158F0h

l0000000000415901:
	test	edx,edx
	jz	415910h

l0000000000415905:
	mov	ecx,20h
	sub	ecx,edx
	shr	dword ptr [r8-4h],cl

l0000000000415910:
	add	rsp,30h
	pop	rbx
	ret
0000000000415916                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l0000000000415920:
	lea	r8,[rax+18h]
	mov	[rax+14h],r9d
	movsxd	r9,r9d
	lea	r9,[r8+r9*4]
	cmp	r8,r9
	jc	4158F0h

l0000000000415934:
	jmp	415910h
0000000000415936                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l0000000000415940:
	mov	[rsp+2Ch],edx
	call	41A090h
	mov	ecx,ebx
	call	419F80h
	mov	edx,[rsp+2Ch]
	jmp	4158C3h
0000000000415959                            0F 1F 80 00 00 00 00          .......

;; fn0000000000415960: 0000000000415960
;;   Called from:
;;     0000000000411F2A (in fn0000000000411F10)
;;     0000000000411FDB (in fn0000000000411FC0)
fn0000000000415960 proc
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,+138h
	movaps	[rsp+0D0h],xmm6
	movaps	[rsp+0E0h],xmm7
	movaps	[rsp+0F0h],xmm8
	movaps	[rsp+100h],xmm9
	movaps	[rsp+110h],xmm10
	movaps	[rsp+120h],xmm11
	mov	rdi,rcx
	mov	[rsp+190h],r8
	mov	[rsp+188h],rdx
	mov	[rsp+198h],r9
	call	41BF08h
	mov	rbp,[rax]
	mov	rcx,rbp
	call	41BCB8h
	mov	r14,rax
	mov	rax,[rsp+190h]
	mov	dword ptr [rsp+0A4h],0h
	mov	qword ptr [rsp+0B0h],+0h
	mov	qword ptr [rsp+0C8h],+0h
	lea	rcx,[0000000000490D0C]                                 ; [rip+0007B305]
	mov	[rsp+0C0h],rdi
	mov	eax,[rax]
	mov	[rsp+40h],eax
	mov	rax,rdi
	movzx	r8d,byte ptr [rax]
	cmp	r8b,2Dh
	ja	415BD0h

l0000000000415A26:
	movzx	edx,r8b
	movsxd	rdx,dword ptr [rcx+rdx*4]
	add	rdx,rcx
	jmp	rdx
0000000000415A33          C7 84 24 A4 00 00 00 06 00 00 00 48 89    ..$........H.
0000000000415A40 BC 24 C0 00 00 00 45 31 C0 C7 44 24 58 00 00 00 .$....E1..D$X...
0000000000415A50 00                                              .              

l0000000000415A51:
	cmp	qword ptr [rsp+188h],0h
	jz	415A6Fh

l0000000000415A5C:
	mov	rax,[rsp+0C0h]
	mov	rsi,[rsp+188h]
	mov	[rsi],rax

l0000000000415A6F:
	mov	eax,[rsp+58h]
	test	eax,eax
	jnz	415AF0h

l0000000000415A77:
	test	r8,r8
	jz	415A9Ah

l0000000000415A7C:
	mov	rcx,[rsp+1A0h]
	mov	edx,[rsp+40h]
	call	41ABB0h
	mov	rcx,[rsp+0C8h]
	call	41A090h

l0000000000415A9A:
	mov	eax,[rsp+0A4h]
	movaps	xmm6,[rsp+0D0h]
	movaps	xmm7,[rsp+0E0h]
	movaps	xmm8,[rsp+0F0h]
	movaps	xmm9,[rsp+100h]
	movaps	xmm10,[rsp+110h]
	movaps	xmm11,[rsp+120h]
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
0000000000415AE9                            0F 1F 80 00 00 00 00          .......

l0000000000415AF0:
	or	dword ptr [rsp+0A4h],8h
	jmp	415A77h
0000000000415AFD                                        0F 1F 00              ...
0000000000415B00 48 89 C2 C7 44 24 58 00 00 00 00 48 83 C0 01 48 H...D$X....H...H
0000000000415B10 89 84 24 C0 00 00 00 44 0F B6 42 01 45 84 C0 0F ..$....D..B.E...
0000000000415B20 84 0E FF FF FF 45 31 E4 41 80 F8 30 49 89 C7 0F .....E1.A..0I...
0000000000415B30 84 B3 00 00 00                                  .....          

l0000000000415B35:
	mov	rax,[rsp+190h]
	mov	eax,[rax+10h]
	mov	[rsp+84h],eax
	movsx	eax,r8b
	lea	edx,[rax-30h]
	cmp	edx,9h
	ja	415C43h

l0000000000415B57:
	lea	rcx,[r15+1h]
	xor	edx,edx
	xor	esi,esi
	xor	ebx,ebx
	jmp	415B95h

l0000000000415B63:
	lea	eax,[rsi+rsi*4]
	movsx	r8d,r8b
	lea	esi,[r8+rax*2-30h]

l0000000000415B6F:
	mov	[rsp+0C0h],rcx
	movsx	eax,byte ptr [rcx]
	add	ebx,1h
	mov	r9,rcx
	lea	rcx,[rcx+1h]
	lea	r10d,[rax-30h]
	mov	r8d,eax
	cmp	r10d,9h
	ja	415C50h

l0000000000415B95:
	cmp	ebx,8h
	jle	415B63h

l0000000000415B9A:
	cmp	ebx,0Fh
	jg	415B6Fh

l0000000000415B9F:
	lea	eax,[rdx+rdx*4]
	movsx	r8d,r8b
	lea	edx,[r8+rax*2-30h]
	jmp	415B6Fh
0000000000415BAD                                        0F 1F 00              ...
0000000000415BB0 48 83 C0 01 48 89 84 24 C0 00 00 00 44 0F B6 00 H...H..$....D...
0000000000415BC0 41 80 F8 2D 0F 86 5C FE FF FF 66 0F 1F 44 00 00 A..-..\...f..D..

l0000000000415BD0:
	xor	r12d,r12d
	cmp	r8b,30h
	mov	dword ptr [rsp+58h],0h
	mov	r15,rax
	jnz	415B35h

l0000000000415BE8:
	movzx	edx,byte ptr [rax+1h]
	cmp	dl,58h
	jz	416DBFh

l0000000000415BF5:
	add	rax,1h
	cmp	dl,78h
	jz	416DBFh

l0000000000415C02:
	mov	r15,rax
	mov	[rsp+0C0h],rax
	add	rax,1h
	movzx	edx,byte ptr [rax-1h]
	cmp	dl,30h
	jz	415C02h

l0000000000415C1A:
	xor	r8d,r8d
	test	dl,dl
	jz	415A51h

l0000000000415C25:
	mov	r8d,edx
	mov	r12d,1h
	jmp	415B35h
0000000000415C33          48 89 C2 C7 44 24 58 01 00 00 00 E9 C8    H...D$X......
0000000000415C40 FE FF FF                                        ...            

l0000000000415C43:
	mov	r9,r15
	xor	edx,edx
	xor	esi,esi
	xor	ebx,ebx
	nop	dword ptr [rax+0h]

l0000000000415C50:
	movsx	ecx,byte ptr [rbp+0h]
	cmp	ecx,eax
	jz	416054h

l0000000000415C5C:
	mov	ebp,ebx
	xor	ecx,ecx
	xor	r13d,r13d
	xor	r11d,r11d

l0000000000415C66:
	mov	r8d,eax
	and	r8d,0DFh
	cmp	r8d,45h
	jz	415D70h

l0000000000415C77:
	xor	r8d,r8d

l0000000000415C7A:
	test	ebp,ebp
	jnz	415EE5h

l0000000000415C82:
	or	ecx,r12d
	jnz	415ED8h

l0000000000415C8B:
	test	r11d,r11d
	jnz	415EA3h

l0000000000415C94:
	cmp	eax,4Eh
	jz	415CB1h

l0000000000415C99:
	jle	415E9Ah

l0000000000415C9F:
	cmp	eax,69h
	jz	41702Fh

l0000000000415CA8:
	cmp	eax,6Eh
	jnz	415EA3h

l0000000000415CB1:
	lea	rbx,[rsp+0C0h]
	lea	rdx,[0000000000490D09]                                 ; [rip+0007B049]
	mov	rcx,rbx
	call	41AB60h
	test	eax,eax
	jz	415EA3h

l0000000000415CD0:
	mov	rax,[rsp+190h]
	mov	rsi,[rsp+198h]
	xor	ebp,ebp
	mov	rdx,[rsp+0C0h]
	mov	dword ptr [rsp+0A4h],4h
	mov	eax,[rax+8h]
	mov	[rsp+44h],eax
	add	eax,1h
	mov	[rsi],eax
	cmp	byte ptr [rdx],28h
	jz	417412h

l0000000000415D0A:
	nop	word ptr [rax+rax+0h]

l0000000000415D10:
	mov	rsi,[rsp+198h]
	mov	[rsi],eax

l0000000000415D1A:
	mov	r8,[rsp+0C8h]

l0000000000415D22:
	test	ebp,ebp
	jz	415A51h

l0000000000415D2A:
	mov	r9d,[rsp+84h]
	test	r9d,r9d
	jnz	416464h

l0000000000415D3B:
	mov	eax,[rsp+0A4h]
	mov	ecx,[r8+14h]
	xor	edx,edx
	and	eax,0F8h
	test	ecx,ecx
	setg	dl
	add	edx,edx
	or	eax,edx
	test	al,30h
	jnz	415EC3h

l0000000000415D5C:
	mov	[rsp+0A4h],eax
	jmp	415A51h
0000000000415D68                         0F 1F 84 00 00 00 00 00         ........

l0000000000415D70:
	mov	eax,ebp
	or	eax,ecx
	or	eax,r12d
	jz	415EA3h

l0000000000415D7D:
	mov	rdi,[rsp+0C0h]
	lea	rax,[rdi+1h]
	mov	[rsp+0C0h],rax
	movsx	eax,byte ptr [rdi+1h]
	cmp	al,2Bh
	jz	416F57h

l0000000000415D9D:
	cmp	al,2Dh
	jz	416361h

l0000000000415DA5:
	mov	dword ptr [rsp+44h],0h

l0000000000415DAD:
	lea	r8d,[rax-30h]
	cmp	r8d,9h
	ja	416490h

l0000000000415DBB:
	cmp	eax,30h
	jnz	415DE5h

l0000000000415DC0:
	mov	rax,[rsp+0C0h]
	lea	r8,[rax+1h]
	nop	dword ptr [rax+0h]

l0000000000415DD0:
	mov	[rsp+0C0h],r8
	movsx	eax,byte ptr [r8]
	add	r8,1h
	cmp	eax,30h
	jz	415DD0h

l0000000000415DE5:
	lea	r9d,[rax-31h]
	xor	r8d,r8d
	cmp	r9d,8h
	ja	415C7Ah

l0000000000415DF6:
	lea	r9d,[rax-30h]
	mov	rax,[rsp+0C0h]
	lea	r10,[rax+1h]
	mov	[rsp+50h],rax
	mov	[rsp+0C0h],r10
	mov	[rsp+48h],r10
	mov	r10,rax
	movsx	eax,byte ptr [rax+1h]
	lea	r8d,[rax-30h]
	cmp	r8d,9h
	ja	415E63h

l0000000000415E29:
	lea	r8,[r10+2h]
	mov	[rsp+5Ch],r11d

l0000000000415E32:
	lea	r9d,[r9+r9*4]
	mov	[rsp+0C0h],r8
	mov	r11,r8
	add	r8,1h
	lea	r9d,[rax+r9*2-30h]
	movsx	eax,byte ptr [r8-1h]
	lea	r10d,[rax-30h]
	cmp	r10d,9h
	jbe	415E32h

l0000000000415E59:
	mov	[rsp+48h],r11
	mov	r11d,[rsp+5Ch]

l0000000000415E63:
	mov	r8,[rsp+48h]
	sub	r8,[rsp+50h]
	cmp	r8,8h
	jg	417093h

l0000000000415E77:
	cmp	r9d,4E1Fh
	jg	417093h

l0000000000415E84:
	mov	r10d,[rsp+44h]
	mov	r8d,r10d
	neg	r8d
	xor	r8d,r9d
	add	r8d,r10d
	jmp	415C7Ah

l0000000000415E9A:
	cmp	eax,49h
	jz	41702Fh

l0000000000415EA3:
	mov	dword ptr [rsp+0A4h],6h
	mov	[rsp+0C0h],rdi
	mov	r8,[rsp+0C8h]
	jmp	415A51h

l0000000000415EC3:
	or	eax,40h
	mov	[rsp+0A4h],eax
	call	41BDC0h
	mov	dword ptr [rax],22h

l0000000000415ED8:
	mov	r8,[rsp+0C8h]
	jmp	415A51h

l0000000000415EE5:
	mov	rax,[rsp+190h]
	mov	ecx,[rsp+58h]
	sub	r8d,r13d
	mov	dword ptr [rsp+0A4h],1h
	mov	[rsp+68h],r8d
	mov	eax,[rax+0Ch]
	mov	[rsp+44h],eax
	and	eax,3h
	mov	edi,eax
	sub	edi,ecx
	cmp	eax,2h
	mov	[rsp+6Ch],edi
	jz	415F33h

l0000000000415F1B:
	lea	edi,[rcx+1h]
	cmp	eax,3h
	mov	[rsp+6Ch],edi
	jz	415F33h

l0000000000415F27:
	test	eax,eax
	setz	al
	movzx	eax,al
	mov	[rsp+6Ch],eax

l0000000000415F33:
	pxor	xmm0,xmm0
	mov	eax,esi
	test	ebx,ebx
	cmovz	ebx,ebp

l0000000000415F3E:
	mov	edi,10h
	cmp	ebp,10h
	cmovle	edi,ebp

l0000000000415F49:
	cvtsi2sd	xmm0,rax
	cmp	edi,9h
	movsd	double ptr [rsp+0B0h],xmm0
	jle	415F83h

l0000000000415F5C:
	pxor	xmm1,xmm1
	lea	eax,[rdi-9h]
	mov	rcx,[0000000000491FA0]                                 ; [rip+0007C036]
	cdqe
	cvtsi2sd	xmm1,rdx
	mulsd	xmm0,double ptr [rcx+rax*8]
	addsd	xmm0,xmm1
	movsd	double ptr [rsp+0B0h],xmm0

l0000000000415F83:
	cmp	ebp,0Fh
	jg	4160F5h

l0000000000415F8C:
	cmp	dword ptr [rsp+40h],35h
	jg	4160F5h

l0000000000415F97:
	cmp	dword ptr [rsp+68h],0h
	jz	416F71h

l0000000000415FA2:
	jle	416409h

l0000000000415FA8:
	cmp	dword ptr [rsp+68h],16h
	jg	416F9Bh

l0000000000415FB3:
	movsxd	rcx,dword ptr [rsp+68h]
	mov	edx,[rsp+0B0h]
	lea	rax,[0000000000490E00]                                 ; [rip+0007AE3A]
	test	edx,edx
	mov	r8d,[rax+rcx*4]
	jz	41709Eh

l0000000000415FD2:
	tzcnt	edx,edx
	mov	eax,35h
	sub	eax,edx

l0000000000415FDD:
	mov	rdx,[0000000000491FA0]                                 ; [rip+0007BFBC]
	movsd	xmm0,double ptr [rsp+0B0h]
	add	eax,r8d
	cmp	eax,35h
	mulsd	xmm0,double ptr [rdx+rcx*8]
	lea	rdx,[rsp+0A4h]
	setle	al
	movzx	eax,al
	lea	rcx,[rsp+0B0h]
	mov	[rsp+30h],rdx
	mov	edx,[rsp+6Ch]
	mov	[rsp+20h],eax
	mov	[rsp+28h],edx
	movsd	double ptr [rsp+0B0h],xmm0

l0000000000416028:
	mov	r9,[rsp+1A0h]
	mov	r8,[rsp+198h]
	mov	rdx,[rsp+190h]
	call	4154B0h
	test	eax,eax
	jnz	415ED8h

l000000000041604D:
	xor	eax,eax
	jmp	4160F9h

l0000000000416054:
	movzx	r8d,byte ptr [rbp+1h]
	test	r8b,r8b
	jz	4172D5h

l0000000000416062:
	cmp	r8b,[r9+1h]
	jnz	415C5Ch

l000000000041606C:
	mov	eax,2h
	jmp	416082h

l0000000000416073:
	add	rax,1h
	cmp	r8b,[r9+rax-1h]
	jnz	416280h

l0000000000416082:
	movzx	r8d,byte ptr [rbp+rax+0h]
	test	r8b,r8b
	jnz	416073h

l000000000041608D:
	lea	r8,[r9+rax]
	test	ebx,ebx
	mov	[rsp+0C0h],r8
	movsx	eax,byte ptr [r8]
	jz	41637Eh

l00000000004160A5:
	lea	r8d,[rax-30h]
	xor	ecx,ecx
	xor	r13d,r13d
	mov	ebp,ebx
	cmp	r8d,9h
	ja	4160EAh

l00000000004160B6:
	test	r8d,r8d
	lea	eax,[rcx+1h]
	mov	r9d,r8d
	jnz	417255h

l00000000004160C5:
	mov	r8,[rsp+0C0h]
	mov	ecx,eax

l00000000004160CF:
	lea	rax,[r8+1h]
	mov	[rsp+0C0h],rax
	movsx	eax,byte ptr [r8+1h]
	lea	r8d,[rax-30h]
	cmp	r8d,9h
	jbe	4160B6h

l00000000004160EA:
	mov	r11d,1h
	jmp	415C66h

l00000000004160F5:
	mov	eax,[rsp+68h]

l00000000004160F9:
	mov	edx,ebp
	sub	edx,edi
	add	edx,eax
	cmp	edx,0h
	jle	416E4Ah

l0000000000416108:
	mov	eax,edx
	and	eax,0Fh
	jz	41612Fh

l000000000041610F:
	mov	rcx,[0000000000491FA0]                                 ; [rip+0007BE8A]
	movsd	xmm0,double ptr [rsp+0B0h]
	cdqe
	mulsd	xmm0,double ptr [rcx+rax*8]
	movsd	double ptr [rsp+0B0h],xmm0

l000000000041612F:
	and	edx,0F0h
	jnz	416291h

l0000000000416138:
	movsd	xmm0,double ptr [rsp+0B0h]
	xor	edi,edi

l0000000000416143:
	lea	rdx,[rsp+0ACh]
	lea	r8,[rsp+0A8h]
	call	41A860h
	mov	edx,[rsp+0A8h]
	mov	r13d,[rsp+40h]
	add	edi,[rsp+0ACh]
	mov	[rsp+0C8h],rax
	mov	r12d,edx
	sub	r12d,r13d
	test	r12d,r12d
	mov	[rsp+0ACh],edi
	jle	4161ACh

l0000000000416185:
	mov	edx,r12d
	mov	rcx,rax
	call	41ACB0h
	mov	edi,[rsp+0ACh]
	mov	[rsp+0A8h],r13d
	mov	edx,r13d
	add	edi,r12d
	mov	[rsp+0ACh],edi

l00000000004161AC:
	lea	eax,[rdi+rdx]
	sub	eax,[rsp+40h]
	mov	ecx,eax
	mov	[rsp+8Ch],eax
	mov	rax,[rsp+190h]
	mov	eax,[rax+8h]
	mov	[rsp+44h],eax
	add	eax,1h
	cmp	ecx,eax
	jg	416D85h

l00000000004161D6:
	mov	rax,[rsp+190h]
	mov	eax,[rax+4h]
	cmp	ecx,eax
	mov	[rsp+50h],eax
	jge	416F64h

l00000000004161ED:
	sub	edi,eax
	cmp	edi,0h
	jle	4163DCh

l00000000004161F8:
	mov	rcx,[rsp+0C8h]
	mov	edx,edi
	call	41A490h
	add	[rsp+0A8h],edi
	mov	[rsp+0C8h],rax

l0000000000416216:
	mov	eax,[rsp+50h]
	mov	[rsp+0ACh],eax
	mov	eax,[rsp+84h]
	test	eax,eax
	jz	4164A0h

l0000000000416230:
	mov	eax,[rsp+8Ch]
	add	eax,1h
	cmp	[rsp+50h],eax
	jle	4164A0h

l0000000000416244:
	mov	r8,[rsp+0C8h]
	mov	rax,[rsp+198h]
	mov	esi,[rsp+50h]
	mov	dword ptr [rsp+0A4h],50h
	mov	dword ptr [r8+14h],0h
	mov	dword ptr [r8+18h],0h
	mov	[rax],esi
	jmp	415D2Ah
000000000041627A                               66 0F 1F 44 00 00           f..D..

l0000000000416280:
	mov	eax,ecx
	mov	ebp,ebx
	xor	ecx,ecx
	xor	r13d,r13d
	xor	r11d,r11d
	jmp	415C66h

l0000000000416291:
	sar	edx,4h
	cmp	edx,0Fh
	jle	41735Fh

l000000000041629D:
	mov	rax,[0000000000491EB0]                                 ; [rip+0007BC0C]
	mov	ecx,edx
	xor	r8d,r8d
	movsd	xmm1,double ptr [rax+20h]
	nop
	mov	eax,[rsp+0B4h]
	sub	ecx,10h
	mov	r9d,eax
	and	eax,800FFFFFh
	or	eax,3FF00000h
	and	r9d,7FF00000h
	mov	[rsp+0B4h],eax
	shr	r9d,14h
	cmp	ecx,0Fh
	movsd	xmm0,double ptr [rsp+0B0h]
	lea	r8d,[r8+r9-3FFh]
	mulsd	xmm0,xmm1
	movsd	double ptr [rsp+0B0h],xmm0
	jg	4162B0h
	and	edx,0Fh

l00000000004162FF:
	mov	eax,[rsp+0B4h]
	mov	ecx,eax
	and	eax,800FFFFFh
	or	eax,3FF00000h
	and	ecx,7FF00000h
	shr	ecx,14h
	mov	[rsp+0B4h],eax
	test	edx,edx
	lea	edi,[r8+rcx-3FFh]
	movsd	xmm0,double ptr [rsp+0B0h]
	mov	rax,[0000000000491EB0]                                 ; [rip+0007BB74]
	jz	416143h

l0000000000416342:
	test	dl,1h
	jz	41634Bh

l0000000000416347:
	mulsd	xmm0,double ptr [rax]

l000000000041634B:
	add	rax,8h
	sar	edx,1h
	jnz	416342h

l0000000000416353:
	movsd	double ptr [rsp+0B0h],xmm0
	jmp	416143h

l0000000000416361:
	mov	dword ptr [rsp+44h],1h

l0000000000416369:
	lea	rax,[rdi+2h]
	mov	[rsp+0C0h],rax
	movsx	eax,byte ptr [rdi+2h]
	jmp	415DADh

l000000000041637E:
	cmp	eax,30h
	jnz	4173C1h

l0000000000416387:
	add	r8,1h
	xor	ecx,ecx
	nop	dword ptr [rax]

l0000000000416390:
	mov	[rsp+0C0h],r8
	movsx	eax,byte ptr [r8]
	add	ecx,1h
	add	r8,1h
	cmp	eax,30h
	jz	416390h

l00000000004163A8:
	lea	r8d,[rax-31h]
	cmp	r8d,8h
	ja	417016h

l00000000004163B6:
	mov	r15,[rsp+0C0h]
	lea	r9d,[rax-30h]
	lea	r13d,[rcx+1h]
	mov	ebp,1h
	mov	r8,r15

l00000000004163CE:
	lea	eax,[rsi+rsi*4]
	xor	ecx,ecx
	lea	esi,[r9+rax*2]
	jmp	4160CFh

l00000000004163DC:
	jz	416216h

l00000000004163E2:
	add	edx,edi
	test	edx,edx
	mov	[rsp+0A8h],edx
	jle	417367h

l00000000004163F3:
	mov	rcx,[rsp+0C8h]
	neg	edi
	mov	edx,edi
	call	41ACB0h
	jmp	416216h

l0000000000416409:
	mov	edx,[rsp+68h]
	cmp	edx,0EAh
	mov	eax,edx
	jl	4160F9h

l0000000000416418:
	mov	rdx,[0000000000491FA0]                                 ; [rip+0007BB81]
	neg	eax
	movsd	xmm0,double ptr [rsp+0B0h]
	cdqe
	divsd	xmm0,double ptr [rdx+rax*8]

l0000000000416431:
	lea	rax,[rsp+0A4h]
	movsd	double ptr [rsp+0B0h],xmm0
	lea	rcx,[rsp+0B0h]
	mov	dword ptr [rsp+20h],0h
	mov	[rsp+30h],rax
	mov	eax,[rsp+6Ch]
	mov	[rsp+28h],eax
	jmp	416028h

l0000000000416464:
	mov	dword ptr [r8+14h],0h
	mov	dword ptr [rsp+0A4h],50h
	call	41BDC0h
	mov	r8,[rsp+0C8h]
	mov	dword ptr [rax],22h
	jmp	415A51h
000000000041648F                                              90                .

l0000000000416490:
	mov	[rsp+0C0h],rdi
	xor	r8d,r8d
	jmp	415C7Ah

l00000000004164A0:
	mov	eax,[rsp+50h]
	mov	dword ptr [rsp+44h],1h
	mov	[rsp+8Ch],eax

l00000000004164B3:
	mov	r8d,ebp
	mov	edx,ebx
	mov	[rsp+20h],r14d
	mov	r9d,esi
	mov	rcx,r15
	call	41A9A0h
	mov	[rsp+70h],rax
	add	rax,10h
	mov	[rsp+78h],rax
	mov	eax,[rsp+40h]
	movsd	xmm8,[0000000000490E60]                              ; [rip+0007A97D]
	movsd	xmm9,[0000000000490E70]                              ; [rip+0007A984]
	add	eax,1h
	movapd	xmm11,xmm8
	mov	[rsp+80h],eax
	mov	eax,[rsp+68h]
	movsd	xmm10,[0000000000490E90]                             ; [rip+0007A988]
	mov	edx,eax
	neg	edx
	test	eax,eax
	mov	eax,0h
	cmovs	eax,edx

l0000000000416516:
	xor	ebp,ebp
	mov	[rsp+5Ch],eax
	jmp	416760h

l0000000000416521:
	mov	rcx,rsi
	call	41A490h
	mov	rsi,rax

l000000000041652C:
	test	r15d,r15d
	jz	41653Fh

l0000000000416531:
	mov	rcx,rdi
	mov	edx,r15d
	call	41A320h
	mov	rdi,rax

l000000000041653F:
	test	r12d,r12d
	jle	416552h

l0000000000416544:
	mov	rcx,rdi
	mov	edx,r12d
	call	41A490h
	mov	rdi,rax

l0000000000416552:
	test	r14d,r14d
	jle	416565h

l0000000000416557:
	mov	rcx,r13
	mov	edx,r14d
	call	41A490h
	mov	r13,rax

l0000000000416565:
	mov	rdx,rdi
	mov	rcx,rsi
	call	41A600h
	cmp	dword ptr [rax+14h],1h
	mov	rbx,rax
	jle	416910h

l000000000041657D:
	mov	ebp,[rbx+10h]
	mov	rdx,r13
	mov	dword ptr [rbx+10h],0h
	mov	rcx,rbx
	call	41A5B0h
	test	eax,eax
	jg	4168A0h

l000000000041659A:
	mov	ecx,[rsp+6Ch]
	test	ecx,ecx
	jz	4168A0h

l00000000004165A6:
	mov	eax,ecx
	and	eax,1h
	xor	eax,ebp
	mov	[rsp+60h],eax
	jz	4170BBh

l00000000004165B7:
	test	ebp,ebp
	jz	416B11h

l00000000004165BF:
	movsd	xmm6,[0000000000490E60]                              ; [rip+0007A899]
	mov	dword ptr [rsp+0A4h],21h
	xor	r12d,r12d
	mov	dword ptr [rsp+88h],20h
	xor	r14d,r14d
	movapd	xmm7,xmm6

l00000000004165E7:
	mov	eax,[rsp+0A8h]
	mov	edx,[rsp+0ACh]
	mov	r8d,[rsp+44h]
	add	edx,eax
	test	r8d,r8d
	mov	[rsp+48h],edx
	jnz	41660Fh

l0000000000416605:
	cmp	[rsp+40h],eax
	jg	416CD3h

l000000000041660F:
	lea	rdx,[rsp+9Ch]
	lea	r8,[rsp+0A0h]
	movapd	xmm0,xmm6
	call	41A860h
	mov	edx,[rsp+9Ch]
	mov	r15,rax
	test	edx,edx
	js	416D10h

l000000000041663A:
	jz	416647h

l000000000041663C:
	mov	rcx,rax
	call	41A490h
	mov	r15,rax

l0000000000416647:
	mov	rbp,[rsp+0C8h]
	test	r14d,r14d
	mov	rdx,r15
	mov	rcx,rbp
	jz	416A40h

l000000000041665E:
	call	41A600h
	mov	ecx,[rsp+44h]
	mov	[rsp+0C8h],rax
	mov	edx,[rbp+14h]
	test	ecx,ecx
	jnz	416BE0h

l000000000041667A:
	sub	edx,1h
	cmp	edx,[rax+14h]
	jge	41669Dh

l0000000000416682:
	movsxd	rdx,edx
	add	rdx,4h
	bsr	ecx,[rax+rdx*4+8h]
	bsr	edx,[rbp+rdx*4+8h]
	xor	ecx,1Fh
	xor	edx,1Fh
	cmp	ecx,edx
	jle	4166C0h

l000000000041669D:
	mov	ecx,[rsp+50h]
	cmp	[rsp+8Ch],ecx
	jnz	416AC0h

l00000000004166AE:
	sub	dword ptr [rsp+0A8h],1h
	mov	dword ptr [rsp+44h],1h
	nop

l00000000004166C0:
	mov	rcx,r15
	call	41A090h
	mov	rcx,rbp
	call	41A090h
	mov	r14d,[rsp+60h]
	test	r14d,r14d
	jnz	416920h

l00000000004166DE:
	test	r12d,r12d
	jz	416728h

l00000000004166E3:
	mov	eax,[rsp+0A8h]
	add	eax,[rsp+0ACh]
	cmp	[rsp+48h],eax
	jnz	416728h

l00000000004166F7:
	mulsd	xmm6,[0000000000490E88]                              ; [rip+0007A789]
	movapd	xmm0,xmm7
	subsd	xmm0,[0000000000490E78]                              ; [rip+0007A76D]
	movapd	xmm1,xmm6
	xorpd	xmm1,xmm10
	ucomisd	xmm1,xmm0
	jbe	416CA0h

l000000000041671E:
	ucomisd	xmm7,xmm6
	ja	416CC0h

l0000000000416728:
	mov	r12d,[rsp+44h]
	test	r12d,r12d
	jz	416AF5h

l0000000000416736:
	mov	dword ptr [rsp+44h],1h
	xor	ebp,ebp

l0000000000416740:
	mov	rcx,rsi
	call	41A090h
	mov	rcx,rdi
	call	41A090h
	mov	rcx,r13
	call	41A090h
	mov	rcx,rbx
	call	41A090h

l0000000000416760:
	mov	rsi,[rsp+70h]
	mov	r15d,0h
	mov	ecx,[rsi+8h]
	call	419F80h
	lea	rcx,[rax+10h]
	mov	rdi,rax
	movsxd	rax,dword ptr [rsi+14h]
	mov	rdx,[rsp+78h]
	lea	r8,[0008h+rax*4]
	call	41BCC0h
	mov	rax,[rsp+0C8h]
	mov	ecx,[rax+8h]
	call	419F80h
	mov	rdx,[rsp+0C8h]
	lea	rcx,[rax+10h]
	mov	rsi,rax
	movsxd	rax,dword ptr [rdx+14h]
	add	rdx,10h
	lea	r8,[0008h+rax*4]
	call	41BCC0h
	mov	eax,[rsp+0A8h]
	mov	ecx,1h
	mov	ebx,[rsp+0ACh]
	sub	eax,ebp
	add	ebx,ebp
	mov	[rsp+48h],eax
	call	41A1C0h
	mov	r13,rax
	mov	eax,[rsp+68h]
	test	eax,eax
	cmovg	r15d,eax

l00000000004167F1:
	test	ebx,ebx
	js	416AB0h

l00000000004167F9:
	mov	eax,[rsp+5Ch]
	mov	edx,r15d
	lea	r14d,[rax+rbx]

l0000000000416804:
	mov	ecx,[rsp+48h]
	mov	eax,[rsp+80h]
	add	ebx,ecx
	sub	ebx,[rsp+40h]
	sub	eax,ecx
	cmp	[rsp+50h],ebx
	jle	416823h

l000000000041681D:
	sub	ebx,[rsp+50h]
	add	eax,ebx

l0000000000416823:
	lea	ebx,[r14+rax]
	lea	r12d,[rdx+rax]
	cmp	ebx,r12d
	mov	eax,r12d
	cmovle	eax,ebx

l0000000000416834:
	cmp	eax,r14d
	cmovg	eax,r14d

l000000000041683B:
	test	eax,eax
	jle	416847h

l000000000041683F:
	sub	ebx,eax
	sub	r12d,eax
	sub	r14d,eax

l0000000000416847:
	mov	eax,[rsp+5Ch]
	test	eax,eax
	jz	41687Ch

l000000000041684F:
	mov	rcx,r13
	mov	edx,eax
	call	41A320h
	mov	rdx,rsi
	mov	rcx,rax
	mov	r13,rax
	call	41A1F0h
	mov	rcx,rsi
	mov	[rsp+60h],rax
	call	41A090h
	mov	rax,[rsp+60h]
	mov	rsi,rax

l000000000041687C:
	sub	ebx,ebp
	cmp	ebx,0h
	mov	edx,ebx
	jg	416521h

l0000000000416889:
	jz	41652Ch

l000000000041688F:
	neg	edx
	mov	rcx,rsi
	call	41ACB0h
	jmp	41652Ch
000000000041689E                                           66 90               f.

l00000000004168A0:
	test	eax,eax
	js	4170D2h

l00000000004168A8:
	jz	417178h

l00000000004168AE:
	mov	rdx,r13
	mov	rcx,rbx
	call	41AAA0h
	ucomisd	xmm9,xmm0
	jc	416BF0h

l00000000004168C4:
	test	ebp,ebp
	jnz	416D30h

l00000000004168CC:
	mov	dword ptr [rsp+60h],0h

l00000000004168D4:
	cmp	dword ptr [rsp+48h],1h
	jg	4168E9h

l00000000004168DB:
	mov	r9d,[rsp+44h]
	test	r9d,r9d
	jnz	4172A2h

l00000000004168E9:
	movapd	xmm6,xmm8
	xor	r12d,r12d
	mov	dword ptr [rsp+88h],10h
	movapd	xmm7,xmm8
	mov	r14d,1h
	jmp	4165E7h
000000000041690C                                     0F 1F 40 00             ..@.

l0000000000416910:
	mov	r15d,[rax+18h]
	test	r15d,r15d
	jnz	41657Dh

l000000000041691D:
	nop	dword ptr [rax]

l0000000000416920:
	mov	ebp,[rsp+44h]
	test	ebp,ebp
	jz	416E28h

l000000000041692C:
	mov	eax,[rsp+0ACh]
	mov	ebp,1h

l0000000000416938:
	mov	rdx,[rsp+198h]
	mov	rcx,rsi
	mov	[rdx],eax
	call	41A090h
	mov	rcx,rdi
	call	41A090h
	mov	rcx,r13
	call	41A090h
	mov	rcx,[rsp+70h]
	call	41A090h
	mov	rcx,rbx
	call	41A090h
	mov	rax,[rsp+190h]
	mov	esi,[rsp+0ACh]
	cmp	[rax+8h],esi
	jge	415D1Ah

l0000000000416984:
	mov	rax,[rsp+190h]
	mov	eax,[rax+0Ch]
	mov	[rsp+44h],eax
	and	eax,3h
	cmp	eax,2h
	jz	41722Fh

l000000000041699F:
	cmp	eax,3h
	jz	417242h

l00000000004169A8:
	cmp	eax,1h
	jz	416D87h

l00000000004169B1:
	mov	rcx,[rsp+0C8h]
	call	41A090h
	mov	rax,[rsp+190h]
	mov	rsi,[rsp+198h]
	mov	qword ptr [rsp+0C8h],+0h
	mov	dword ptr [rsp+0A4h],11h
	mov	eax,[rax+8h]
	mov	[rsi],eax
	mov	rax,[rsp+190h]
	mov	rsi,[rsp+1A0h]
	mov	ecx,[rax]
	lea	eax,[rcx+1Fh]
	sar	eax,5h
	cdqe
	lea	rdx,[rsi+rax*4]
	mov	rax,rsi
	cmp	rsi,rdx
	jnc	416A20h

l0000000000416A10:
	add	rax,4h
	mov	dword ptr [rax-4h],0FFFFFFFFh
	cmp	rdx,rax
	ja	416A10h

l0000000000416A20:
	and	ecx,1Fh
	jz	416A31h

l0000000000416A25:
	mov	eax,20h
	sub	eax,ecx
	mov	ecx,eax
	shr	dword ptr [rdx-4h],cl

l0000000000416A31:
	xor	r8d,r8d
	jmp	415D22h
0000000000416A39                            0F 1F 80 00 00 00 00          .......

l0000000000416A40:
	call	41ADF0h
	mov	edx,[rax+14h]
	mov	[rsp+0C8h],rax
	sub	edx,1h
	cmp	edx,[rbp+14h]
	jge	416A77h

l0000000000416A58:
	movsxd	rdx,edx
	add	rdx,4h
	bsr	ecx,[rax+rdx*4+8h]
	bsr	edx,[rbp+rdx*4+8h]
	xor	ecx,1Fh
	xor	edx,1Fh
	cmp	ecx,edx
	jge	4166C0h

l0000000000416A77:
	mov	edx,[rsp+44h]
	test	edx,edx
	jz	416D60h

l0000000000416A83:
	mov	eax,[rsp+0A8h]
	add	eax,1h
	cmp	[rsp+40h],eax
	mov	[rsp+0A8h],eax
	setnz	al
	movzx	eax,al
	mov	[rsp+44h],eax
	jmp	4166C0h
0000000000416AA7                      66 0F 1F 84 00 00 00 00 00        f........

l0000000000416AB0:
	mov	edx,r15d
	mov	r14d,[rsp+5Ch]
	sub	edx,ebx
	jmp	416804h
0000000000416ABF                                              90                .

l0000000000416AC0:
	mov	edx,1h
	mov	rcx,rax
	call	41A490h
	mov	rcx,r15
	mov	[rsp+0C8h],rax
	sub	dword ptr [rsp+0ACh],1h
	sub	dword ptr [rsp+8Ch],1h
	call	41A090h
	mov	rcx,rbp
	call	41A090h

l0000000000416AF5:
	mov	rcx,[rsp+0C8h]
	call	41ADB0h
	mov	dword ptr [rsp+44h],0h
	mov	ebp,eax
	jmp	416740h

l0000000000416B11:
	mov	edx,[rsp+50h]
	cmp	[rsp+8Ch],edx
	mov	dword ptr [rsp+0A4h],11h
	jz	4168D4h

l0000000000416B2D:
	xor	ecx,ecx
	cmp	dword ptr [rsp+40h],1Fh
	mov	r9,[rsp+0C8h]
	mov	eax,[rsp+40h]
	jle	416B7Ch

l0000000000416B42:
	mov	r14d,[r9+18h]
	test	r14d,r14d
	jnz	4168D4h

l0000000000416B4F:
	lea	rdx,[r9+1Ch]
	mov	eax,[rsp+40h]
	xor	ecx,ecx
	jmp	416B71h
0000000000416B5B                                  0F 1F 44 00 00            ..D..

l0000000000416B60:
	add	rdx,4h
	mov	r12d,[rdx-4h]
	test	r12d,r12d
	jnz	4168D4h

l0000000000416B71:
	sub	eax,20h
	add	ecx,1h
	cmp	eax,1Fh
	jg	416B60h

l0000000000416B7C:
	cmp	eax,1h
	jle	416BA3h

l0000000000416B81:
	movsxd	rcx,ecx
	sub	eax,1h
	lea	r8,[r9+rcx*4]
	xor	ecx,ecx
	mov	edx,[r8+18h]
	tzcnt	ecx,edx
	shr	edx,cl
	cmp	eax,ecx
	mov	[r8+18h],edx
	jg	4168D4h

l0000000000416BA3:
	mov	eax,[rsp+8Ch]
	mov	rcx,r9
	sub	eax,1h
	mov	[rsp+0ACh],eax
	mov	eax,[rsp+40h]
	mov	edx,eax
	mov	[rsp+0A8h],eax
	call	4158B0h
	mov	[rsp+0C8h],rax
	jmp	416920h
0000000000416BD6                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l0000000000416BE0:
	mov	dword ptr [rsp+44h],1h
	jmp	4166C0h
0000000000416BED                                        0F 1F 00              ...

l0000000000416BF0:
	movapd	xmm7,xmm0
	cmp	ebp,1h
	movsd	xmm1,[0000000000490E78]                              ; [rip+0007A279]
	sbb	eax,eax
	and	eax,10h
	movsd	xmm0,[0000000000490E80]                              ; [rip+0007A274]
	mulsd	xmm7,xmm1
	add	eax,10h
	xor	r14d,r14d
	cmp	ebp,1h
	mov	[rsp+88h],eax
	setc	r14b
	ucomisd	xmm0,xmm7
	jbe	416D20h

l0000000000416C2E:
	cvttsd2si	r12d,xmm7
	pxor	xmm6,xmm6
	mov	eax,[rsp+6Ch]
	cmp	eax,1h
	cvtsi2sd	xmm6,r12d
	subsd	xmm7,xmm6
	jz	417020h

l0000000000416C4D:
	cmp	eax,2h
	jnz	416E19h

l0000000000416C56:
	test	r14b,1h
	jnz	416C90h

l0000000000416C5C:
	ucomisd	xmm7,[0000000000490E68]                            ; [rip+0007A204]
	jbe	416C90h

l0000000000416C66:
	pxor	xmm6,xmm6
	add	r12d,1h
	mov	eax,30h
	sub	eax,[rsp+88h]
	cvtsi2sd	xmm6,r12d
	mov	[rsp+88h],eax
	nop	word ptr cs:[rax+rax+0h]

l0000000000416C90:
	mov	dword ptr [rsp+60h],0h
	jmp	4165E7h
0000000000416C9D                                        0F 1F 00              ...

l0000000000416CA0:
	ucomisd	xmm0,xmm6
	jbe	416728h

l0000000000416CAA:
	movsd	xmm0,[0000000000490E60]                              ; [rip+0007A1AE]
	subsd	xmm0,xmm6
	ucomisd	xmm0,xmm7
	jbe	416728h

l0000000000416CC0:
	mov	eax,[rsp+88h]
	or	[rsp+0A4h],eax
	jmp	416920h

l0000000000416CD3:
	mov	r15d,[rsp+40h]
	mov	rcx,[rsp+0C8h]
	mov	ebp,r15d
	sub	ebp,eax
	mov	edx,ebp
	call	41A490h
	sub	[rsp+0ACh],ebp
	mov	[rsp+0C8h],rax
	mov	[rsp+0A8h],r15d
	jmp	41660Fh
0000000000416D08                         0F 1F 84 00 00 00 00 00         ........

l0000000000416D10:
	neg	edx
	mov	rcx,rax
	call	41ACB0h
	jmp	416647h
0000000000416D1F                                              90                .

l0000000000416D20:
	movapd	xmm6,xmm7
	xor	r12d,r12d
	jmp	416C90h
0000000000416D2C                                     0F 1F 40 00             ..@.

l0000000000416D30:
	movapd	xmm6,xmm11
	xor	r12d,r12d
	movapd	xmm7,xmm11
	mov	dword ptr [rsp+88h],20h
	mov	dword ptr [rsp+60h],0h
	xor	r14d,r14d
	jmp	4165E7h
0000000000416D58                         0F 1F 84 00 00 00 00 00         ........

l0000000000416D60:
	mov	edx,1h
	mov	rcx,rax
	xor	r12d,r12d
	call	41ACB0h
	add	dword ptr [rsp+0ACh],1h
	add	dword ptr [rsp+8Ch],1h
	jmp	4166C0h

l0000000000416D85:
	xor	ebp,ebp

l0000000000416D87:
	mov	rax,[rsp+0C8h]
	mov	dword ptr [rsp+0A4h],0A3h
	mov	dword ptr [rax+14h],0h
	call	41BDC0h
	mov	dword ptr [rax],22h
	mov	rax,[rsp+190h]
	mov	eax,[rax+8h]
	add	eax,1h
	jmp	415D10h

l0000000000416DBF:
	mov	eax,[rsp+58h]
	mov	r8,[rsp+198h]
	lea	rcx,[rsp+0C0h]
	mov	rdx,[rsp+190h]
	lea	r9,[rsp+0C8h]
	mov	[rsp+20h],eax
	call	41AF50h
	cmp	eax,6h
	mov	[rsp+0A4h],eax
	mov	r8,[rsp+0C8h]
	jnz	415A51h

l0000000000416E04:
	mov	[rsp+0C0h],rdi
	mov	dword ptr [rsp+58h],0h
	jmp	415A51h

l0000000000416E19:
	ucomisd	xmm7,xmm1
	jnc	416C66h

l0000000000416E23:
	jmp	416C90h

l0000000000416E28:
	mov	eax,[rsp+0A8h]

l0000000000416E2F:
	mov	ebp,[rsp+40h]
	sub	ebp,eax
	cmp	ebp,0h
	jnz	416FE2h

l0000000000416E3E:
	mov	eax,[rsp+0ACh]
	jmp	416938h

l0000000000416E4A:
	jz	416138h

l0000000000416E50:
	neg	edx
	mov	eax,edx
	and	eax,0Fh
	jz	416E79h

l0000000000416E59:
	mov	rcx,[0000000000491FA0]                                 ; [rip+0007B140]
	movsd	xmm0,double ptr [rsp+0B0h]
	cdqe
	divsd	xmm0,double ptr [rcx+rax*8]
	movsd	double ptr [rsp+0B0h],xmm0

l0000000000416E79:
	and	edx,0F0h
	jz	416138h

l0000000000416E82:
	mov	eax,edx
	sar	eax,4h
	cmp	eax,0Fh
	jle	417444h

l0000000000416E90:
	mov	rdx,[0000000000491FB0]                                 ; [rip+0007B119]
	mov	ecx,eax
	xor	r8d,r8d
	movsd	xmm1,double ptr [rdx+20h]

l0000000000416EA1:
	mov	edx,[rsp+0B4h]
	sub	ecx,10h
	mov	r9d,edx
	and	edx,800FFFFFh
	or	edx,3FF00000h
	and	r9d,7FF00000h
	mov	[rsp+0B4h],edx
	shr	r9d,14h
	cmp	ecx,0Fh
	movsd	xmm0,double ptr [rsp+0B0h]
	lea	r8d,[r8+r9-3FFh]
	mulsd	xmm0,xmm1
	movsd	double ptr [rsp+0B0h],xmm0
	jg	416EA1h

l0000000000416EEF:
	and	eax,0Fh

l0000000000416EF2:
	mov	edx,[rsp+0B4h]
	mov	ecx,edx
	and	edx,800FFFFFh
	or	edx,3FF00000h
	and	ecx,7FF00000h
	shr	ecx,14h
	mov	[rsp+0B4h],edx
	test	eax,eax
	lea	edi,[r8+rcx-3FFh]
	movsd	xmm0,double ptr [rsp+0B0h]
	mov	rdx,[0000000000491FB0]                                 ; [rip+0007B07F]
	jle	416143h

l0000000000416F37:
	nop	word ptr [rax+rax+0h]

l0000000000416F40:
	test	al,1h
	jz	416F48h

l0000000000416F44:
	mulsd	xmm0,double ptr [rdx]

l0000000000416F48:
	sar	eax,1h
	add	rdx,8h
	test	eax,eax
	jg	416F40h

l0000000000416F52:
	jmp	416353h

l0000000000416F57:
	mov	dword ptr [rsp+44h],0h
	jmp	416369h

l0000000000416F64:
	mov	dword ptr [rsp+44h],0h
	jmp	4164B3h

l0000000000416F71:
	lea	rax,[rsp+0A4h]
	lea	rcx,[rsp+0B0h]
	mov	dword ptr [rsp+20h],1h
	mov	[rsp+30h],rax
	mov	eax,[rsp+6Ch]
	mov	[rsp+28h],eax
	jmp	416028h

l0000000000416F9B:
	mov	ecx,[rsp+68h]
	mov	edx,25h
	sub	edx,ebp
	cmp	ecx,edx
	mov	eax,ecx
	jg	4160F9h

l0000000000416FB0:
	mov	rdx,[0000000000491FA0]                                 ; [rip+0007AFE9]
	mov	eax,0Fh
	sub	eax,ebp
	movsd	xmm0,double ptr [rsp+0B0h]
	movsxd	rcx,eax
	mulsd	xmm0,double ptr [rdx+rcx*8]
	mov	ecx,[rsp+68h]
	sub	ecx,eax
	movsxd	rax,ecx
	mulsd	xmm0,double ptr [rdx+rax*8]
	jmp	416431h

l0000000000416FE2:
	mov	edx,ebp
	jle	4172DFh

l0000000000416FEA:
	mov	rcx,[rsp+0C8h]
	call	41A490h
	mov	[rsp+0C8h],rax

l0000000000416FFF:
	mov	eax,[rsp+0ACh]
	sub	eax,ebp
	xor	ebp,ebp
	mov	[rsp+0ACh],eax
	jmp	416938h

l0000000000417016:
	xor	ebp,ebp
	xor	r13d,r13d
	jmp	4160EAh

l0000000000417020:
	test	r14b,1h
	jnz	416C5Ch

l000000000041702A:
	jmp	416C90h

l000000000041702F:
	lea	rbx,[rsp+0C0h]
	lea	rdx,[0000000000490D00]                                 ; [rip+00079CC2]
	mov	rcx,rbx
	call	41AB60h
	test	eax,eax
	jz	415EA3h

l000000000041704E:
	lea	rdx,[0000000000490D03]                                 ; [rip+00079CAE]
	mov	rcx,rbx
	sub	qword ptr [rsp+0C0h],1h
	call	41AB60h
	test	eax,eax
	jnz	417073h

l000000000041706A:
	add	qword ptr [rsp+0C0h],1h

l0000000000417073:
	mov	rax,[rsp+190h]
	mov	dword ptr [rsp+0A4h],3h
	xor	ebp,ebp
	mov	eax,[rax+8h]
	add	eax,1h
	jmp	415D10h

l0000000000417093:
	mov	r9d,4E1Fh
	jmp	415E84h

l000000000041709E:
	mov	edx,[rsp+0B4h]
	mov	eax,15h
	or	edx,100000h
	tzcnt	edx,edx
	sub	eax,edx
	jmp	415FDDh

l00000000004170BB:
	cmp	ebp,1h
	sbb	eax,eax
	and	eax,10h
	add	eax,11h
	mov	[rsp+0A4h],eax
	jmp	416920h

l00000000004170D2:
	cmp	ebp,1h
	sbb	eax,eax
	and	eax,10h
	add	eax,11h
	test	ebp,ebp
	mov	[rsp+0A4h],eax
	jnz	416920h

l00000000004170EC:
	cmp	dword ptr [rsp+48h],1h
	jg	416920h

l00000000004170F7:
	mov	ebp,[rsp+44h]
	test	ebp,ebp
	jnz	416920h

l0000000000417103:
	mov	edx,[rsp+8Ch]
	cmp	[rsp+50h],edx
	jz	416920h

l0000000000417114:
	mov	rcx,rbx
	mov	edx,1h
	call	41A490h
	mov	rdx,r13
	mov	rcx,rax
	mov	rbx,rax
	call	41A5B0h
	test	eax,eax
	jle	416E28h

l0000000000417137:
	mov	dword ptr [rsp+0A4h],11h
	mov	dword ptr [rsp+44h],0h

l000000000041714A:
	mov	eax,[rsp+40h]
	mov	rcx,[rsp+0C8h]
	sub	[rsp+0ACh],eax
	mov	edx,eax
	mov	[rsp+0A8h],eax
	call	4158B0h
	mov	[rsp+0C8h],rax
	jmp	416920h

l0000000000417178:
	test	ebp,ebp
	jz	4172F3h

l0000000000417180:
	mov	r11d,[rsp+44h]
	test	r11d,r11d
	jz	4173B1h

l000000000041718E:
	mov	ecx,[rsp+0A8h]
	mov	r8,[rsp+0C8h]
	mov	edx,ecx
	lea	rax,[r8+18h]
	sar	edx,5h
	movsxd	rdx,edx
	lea	rdx,[rax+rdx*4]
	cmp	rax,rdx
	jnc	4171D5h

l00000000004171B2:
	cmp	dword ptr [r8+18h],0FFh
	lea	rax,[r8+1Ch]
	jz	4171D0h

l00000000004171BD:
	jmp	4173B1h

l00000000004171C2:
	add	rax,4h
	cmp	dword ptr [rax-4h],0FFh
	jnz	4173B1h

l00000000004171D0:
	cmp	rdx,rax
	ja	4171C2h

l00000000004171D5:
	and	ecx,1Fh
	jz	4171ECh

l00000000004171DA:
	or	edx,0FFh
	shl	edx,cl
	or	edx,[rax]
	mov	eax,edx
	add	eax,1h
	jnz	4173B1h

l00000000004171EC:
	mov	eax,[rsp+40h]
	mov	edx,[rsp+50h]
	mov	dword ptr [r8+14h],1h
	mov	dword ptr [r8+18h],1h
	mov	dword ptr [rsp+0A8h],1h
	mov	dword ptr [rsp+0A4h],21h
	lea	eax,[rax+rdx-1h]
	mov	[rsp+0ACh],eax
	mov	eax,1h
	jmp	416E2Fh

l000000000041722F:
	mov	r11d,[rsp+58h]
	test	r11d,r11d
	jz	416D87h

l000000000041723D:
	jmp	4169B1h

l0000000000417242:
	mov	r10d,[rsp+58h]
	test	r10d,r10d
	jnz	416D87h

l0000000000417250:
	jmp	4169B1h

l0000000000417255:
	add	r13d,eax
	cmp	eax,1h
	jz	417284h

l000000000041725D:
	add	ecx,ebp
	mov	r10d,ecx
	jmp	41726Dh

l0000000000417264:
	lea	esi,[rsi+rsi*4]
	add	esi,esi

l0000000000417269:
	cmp	ebp,ecx
	jz	417287h

l000000000041726D:
	add	ebp,1h
	lea	eax,[rbp-1h]
	cmp	eax,8h
	jle	417264h

l0000000000417278:
	cmp	ebp,10h
	jg	417269h

l000000000041727D:
	lea	edx,[rdx+rdx*4]
	add	edx,edx
	jmp	417269h

l0000000000417284:
	mov	r10d,ebp

l0000000000417287:
	cmp	r10d,8h
	lea	ebp,[r10+1h]
	jg	417396h

l0000000000417295:
	mov	r8,[rsp+0C0h]
	jmp	4163CEh

l00000000004172A2:
	mov	r9,[rsp+0C8h]
	mov	dword ptr [rsp+44h],1h

l00000000004172B2:
	mov	eax,[rsp+50h]
	mov	dword ptr [r9+14h],0h
	mov	dword ptr [rsp+0A4h],50h
	mov	[rsp+0ACh],eax
	jmp	416920h

l00000000004172D5:
	mov	eax,1h
	jmp	41608Dh

l00000000004172DF:
	mov	rcx,[rsp+0C8h]
	neg	edx
	call	41ACB0h
	jmp	416FFFh

l00000000004172F3:
	cmp	dword ptr [rsp+48h],1h
	jz	4173C8h

l00000000004172FE:
	mov	dword ptr [rsp+0A4h],21h

l0000000000417309:
	mov	r10d,[rsp+44h]
	test	r10d,r10d
	jnz	417321h

l0000000000417313:
	mov	edx,[rsp+40h]
	cmp	[rsp+48h],edx
	jl	416E28h

l0000000000417321:
	mov	r9,[rsp+0C8h]
	mov	eax,[r9+18h]
	test	al,1h
	jz	416920h

l0000000000417335:
	test	ebp,ebp
	jnz	41744Ch

l000000000041733D:
	cmp	dword ptr [rsp+48h],1h
	jz	4172B2h

l0000000000417348:
	sub	eax,1h
	mov	dword ptr [rsp+0A4h],11h
	mov	[r9+18h],eax
	jmp	416920h

l000000000041735F:
	xor	r8d,r8d
	jmp	4162FFh

l0000000000417367:
	cmp	edx,0FFh
	jl	416244h

l0000000000417370:
	mov	rax,[rsp+0C8h]
	mov	dword ptr [rsp+0A8h],1h
	mov	dword ptr [rax+14h],1h
	mov	dword ptr [rax+18h],1h
	jmp	416216h

l0000000000417396:
	cmp	ebp,10h
	jg	4173A2h

l000000000041739B:
	lea	eax,[rdx+rdx*4]
	lea	edx,[r8+rax*2]

l00000000004173A2:
	mov	r8,[rsp+0C0h]
	xor	ecx,ecx
	jmp	4160CFh

l00000000004173B1:
	mov	dword ptr [rsp+0A4h],11h
	jmp	417309h

l00000000004173C1:
	xor	ecx,ecx
	jmp	4163A8h

l00000000004173C8:
	mov	edx,[rsp+8Ch]
	cmp	[rsp+50h],edx
	jnz	417499h

l00000000004173D9:
	mov	rax,[rsp+0C8h]
	mov	dword ptr [rsp+0A4h],21h
	cmp	dword ptr [rax+14h],1h
	jnz	416920h

l00000000004173F6:
	cmp	dword ptr [rax+18h],1h
	mov	eax,[rsp+48h]
	cmovnz	eax,[rsp+84h]

l0000000000417406:
	mov	[rsp+84h],eax
	jmp	416920h

l0000000000417412:
	mov	r8,[rsp+1A0h]
	mov	rdx,[rsp+190h]
	mov	rcx,rbx
	call	41B820h
	mov	[rsp+0A4h],eax
	mov	rax,[rsp+190h]
	mov	eax,[rax+8h]
	add	eax,1h
	jmp	415D10h

l0000000000417444:
	xor	r8d,r8d
	jmp	416EF2h

l000000000041744C:
	mov	rcx,r9
	call	415400h
	mov	edx,[rax+14h]
	mov	ecx,[rsp+0A8h]
	mov	[rsp+0C8h],rax
	sub	edx,1h
	movsxd	rdx,edx
	bsr	edx,[rax+rdx*4+18h]
	mov	eax,ecx
	neg	eax
	and	eax,1Fh
	xor	edx,1Fh
	cmp	edx,eax
	jz	417489h

l000000000041747F:
	add	ecx,1h
	mov	[rsp+0A8h],ecx

l0000000000417489:
	mov	dword ptr [rsp+0A4h],21h
	jmp	416920h

l0000000000417499:
	mov	dword ptr [rsp+0A4h],1h
	jmp	41714Ah
00000000004174A9                            90 90 90 90 90 90 90          .......

;; fn00000000004174B0: 00000000004174B0
;;   Called from:
;;     00000000004179E5 (in fn00000000004178C0)
;;     0000000000417BDA (in fn0000000000417B10)
fn00000000004174B0 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	xor	r11d,r11d
	xor	r10d,r10d
	movzx	ebx,cx
	mov	[rsp+10h],r11w
	mov	[rsp+0Eh],r10w
	mov	rcx,rsp
	lea	rax,[rsp+0Eh]
	add	rdx,0Eh
	lea	r11,[rsp+2h]
	jmp	4174F4h
00000000004174DE                                           66 90               f.

l00000000004174E0:
	xor	r9d,r9d
	sub	rax,2h
	sub	rdx,2h
	mov	[rax],r9w
	cmp	rax,r11
	jz	417540h

l00000000004174F4:
	movzx	r9d,word ptr [rdx+2h]
	test	r9w,r9w
	jz	4174E0h

l00000000004174FF:
	movzx	r10d,word ptr [rax+2h]
	sub	rax,2h
	sub	rdx,2h
	imul	r9d,ebx
	movzx	esi,r9w
	shr	r9d,10h
	add	r10d,esi
	movzx	esi,word ptr [rax+2h]
	mov	[rax+4h],r10w
	shr	r10d,10h
	add	r9d,esi
	add	r9d,r10d
	mov	[rax+2h],r9w
	shr	r9d,10h
	mov	[rax],r9w
	cmp	rax,r11
	jnz	4174F4h

l0000000000417540:
	xor	eax,eax
	add	rcx,4h
	nop	word ptr cs:[rax+rax+0h]

l0000000000417550:
	movzx	edx,word ptr [rcx+rax]
	mov	[r8+rax+4h],dx
	add	rax,2h
	cmp	rax,0Eh
	jnz	417550h

l0000000000417564:
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret
000000000041756B                                  0F 1F 44 00 00            ..D..

;; fn0000000000417570: 0000000000417570
;;   Called from:
;;     0000000000417EB4 (in fn0000000000417EB0)
;;     0000000000418263 (in fn0000000000418080)
fn0000000000417570 proc
	push	rsi
	push	rbx
	test	edx,edx
	js	417644h

l000000000041757A:
	cmp	edx,0Fh
	lea	r11,[rcx+4h]
	mov	r10d,edx
	lea	r9,[rcx+10h]
	jle	4175B8h

l000000000041758A:
	nop	word ptr [rax+rax+0h]

l0000000000417590:
	mov	rax,r11

l0000000000417593:
	add	rax,2h
	movzx	r8d,word ptr [rax]
	cmp	rax,r9
	mov	[rax-2h],r8w
	jnz	417593h

l00000000004175A5:
	sub	r10d,10h
	xor	eax,eax
	cmp	r10d,0Fh
	mov	[rcx+10h],ax
	jg	417590h

l00000000004175B5:
	and	edx,0Fh

l00000000004175B8:
	cmp	edx,7h
	jle	4175F7h

l00000000004175BD:
	lea	rax,[rcx+10h]
	lea	r10,[rcx+2h]
	xor	r11d,r11d
	nop	dword ptr [rax+rax+0h]

l00000000004175D0:
	movzx	r9d,word ptr [rax]
	sub	rax,2h
	mov	r8d,r9d
	shl	r8d,8h
	or	r8d,r11d
	mov	r11d,r9d
	mov	[rax+2h],r8w
	shr	r11w,8h
	cmp	rax,r10
	jnz	4175D0h

l00000000004175F4:
	and	edx,7h

l00000000004175F7:
	test	edx,edx
	lea	r11,[rcx+10h]
	lea	r10,[rcx+2h]
	jz	41763Fh

l0000000000417603:
	mov	r8,r11
	xor	eax,eax
	nop	dword ptr [rax+rax+0h]

l0000000000417610:
	movzx	ecx,word ptr [r8]
	mov	r9d,eax
	or	r9d,1h
	test	cx,cx
	cmovs	eax,r9d

l0000000000417622:
	add	ecx,ecx
	test	al,2h
	jz	41762Bh

l0000000000417628:
	or	ecx,1h

l000000000041762B:
	mov	[r8],cx
	sub	r8,2h
	add	eax,eax
	cmp	r8,r10
	jnz	417610h

l000000000041763A:
	sub	edx,1h
	jnz	417603h

l000000000041763F:
	xor	eax,eax
	pop	rbx
	pop	rsi
	ret

l0000000000417644:
	mov	r10d,edx
	neg	r10d
	cmp	r10d,0Fh
	jle	417742h

l0000000000417654:
	lea	r9,[rcx+12h]
	mov	ebx,r10d
	xor	r11d,r11d
	nop

l0000000000417660:
	or	r11w,[rcx+10h]
	xor	eax,eax
	nop	word ptr [rax+rax+0h]

l0000000000417670:
	movzx	r8d,word ptr [rcx+rax+0Eh]
	mov	[r9+rax-2h],r8w
	sub	rax,2h
	cmp	rax,0F4h
	jnz	417670h

l0000000000417686:
	sub	ebx,10h
	xor	r8d,r8d
	cmp	ebx,0Fh
	mov	[rcx+4h],r8w
	jg	417660h

l0000000000417696:
	mov	al,0F0h
	sub	r10d,10h
	and	r10d,0F0h
	sub	eax,edx
	sub	eax,r10d
	mov	r10d,eax

l00000000004176A8:
	cmp	r10d,7h
	jle	4176E4h

l00000000004176AE:
	movzx	edx,byte ptr [rcx+10h]
	lea	rax,[rcx+4h]
	lea	r9,[rcx+12h]
	xor	ebx,ebx
	or	r11d,edx
	nop

l00000000004176C0:
	movzx	r8d,word ptr [rax]
	add	rax,2h
	mov	edx,r8d
	shr	dx,8h
	or	edx,ebx
	mov	ebx,r8d
	mov	[rax-2h],dx
	shl	ebx,8h
	cmp	rax,r9
	jnz	4176C0h

l00000000004176E0:
	and	r10d,7h

l00000000004176E4:
	test	r10d,r10d
	jz	417730h

l00000000004176E9:
	lea	rsi,[rcx+4h]
	lea	r9,[rcx+12h]

l00000000004176F1:
	movzx	eax,word ptr [rcx+10h]
	mov	r8,rsi
	and	eax,1h
	or	r11d,eax
	xor	eax,eax

l0000000000417700:
	movzx	edx,word ptr [r8]
	mov	ebx,eax
	or	ebx,1h
	test	dl,1h
	cmovnz	eax,ebx

l000000000041770F:
	shr	dx,1h
	test	al,2h
	jz	41771Bh

l0000000000417716:
	or	dx,8000h

l000000000041771B:
	mov	[r8],dx
	add	r8,2h
	add	eax,eax
	cmp	r8,r9
	jnz	417700h

l000000000041772A:
	sub	r10d,1h
	jnz	4176F1h

l0000000000417730:
	test	r11w,r11w
	jz	41763Fh

l000000000041773A:
	mov	eax,1h
	pop	rbx
	pop	rsi
	ret

l0000000000417742:
	xor	r11d,r11d
	jmp	4176A8h
000000000041774A                               66 0F 1F 44 00 00           f..D..

;; fn0000000000417750: 0000000000417750
;;   Called from:
;;     00000000004127C3 (in fn00000000004120A0)
;;     00000000004129A0 (in fn00000000004120A0)
;;     0000000000417D91 (in fn0000000000417D50)
;;     0000000000417D9C (in fn0000000000417D50)
;;     000000000041848D (in fn0000000000418440)
;;     0000000000418498 (in fn0000000000418440)
fn0000000000417750 proc
	cmp	word ptr [rcx+0Ah],0h
	lea	r9,[rdx+2h]
	js	4177E1h

l000000000041775F:
	xor	r8d,r8d
	mov	[rdx],r8w

l0000000000417766:
	movzx	edx,word ptr [rcx+0Ah]
	lea	rax,[rcx+8h]
	and	dx,7FFFh
	cmp	dx,7FFFh
	mov	[r9],dx
	jz	4177B0h

l000000000041777E:
	xor	r11d,r11d
	lea	rdx,[r9+4h]
	sub	rcx,2h
	mov	[r9+2h],r11w

l000000000041778E:
	sub	rax,2h
	movzx	r8d,word ptr [rax+2h]
	add	rdx,2h
	cmp	rax,rcx
	mov	[rdx-2h],r8w
	jnz	41778Eh

l00000000004177A5:
	xor	r10d,r10d
	mov	[r9+0Eh],r10w
	ret
00000000004177AE                                           66 90               f.

l00000000004177B0:
	movzx	edx,word ptr [rcx+0Ah]
	and	dx,7FFFh
	cmp	dx,7FFFh
	jz	4177F0h

l00000000004177C0:
	lea	rax,[r9+2h]
	add	r9,10h
	nop	dword ptr [rax+rax+0h]

l00000000004177D0:
	add	rax,2h
	xor	edx,edx
	cmp	rax,r9
	mov	[rax-2h],dx
	jnz	4177D0h

l00000000004177DF:
	ret

l00000000004177E1:
	mov	r10d,0FFFFFFFFh
	mov	[rdx],r10w
	jmp	417766h

l00000000004177F0:
	lea	r8,[rcx+0Ah]
	mov	rdx,rcx

l00000000004177F7:
	add	rdx,2h
	cmp	word ptr [rdx-2h],0h
	jnz	417809h

l0000000000417802:
	cmp	rdx,r8
	jnz	4177F7h

l0000000000417807:
	jmp	4177C0h

l0000000000417809:
	xor	r8d,r8d
	lea	rdx,[r9+4h]
	sub	rcx,4h
	mov	[r9+2h],r8w
	nop	dword ptr [rax+0h]

l0000000000417820:
	sub	rax,2h
	movzx	r8d,word ptr [rax+2h]
	add	rdx,2h
	cmp	rax,rcx
	mov	[rdx-2h],r8w
	jnz	417820h

l0000000000417837:
	ret
0000000000417839                            0F 1F 80 00 00 00 00          .......

;; fn0000000000417840: 0000000000417840
;;   Called from:
;;     00000000004123F8 (in fn00000000004120A0)
;;     0000000000412421 (in fn00000000004120A0)
;;     000000000041261E (in fn00000000004120A0)
;;     0000000000417BE5 (in fn0000000000417B10)
;;     000000000041833E (in fn0000000000418080)
fn0000000000417840 proc
	xor	r8d,r8d
	xor	r9d,r9d
	nop	word ptr cs:[rax+rax+0h]

l0000000000417850:
	movzx	r10d,word ptr [rdx+r8+10h]
	movzx	eax,word ptr [rcx+r8+10h]
	add	eax,r10d
	add	eax,r9d
	mov	r9d,eax
	mov	[rdx+r8+10h],ax
	sub	r8,2h
	shr	r9d,10h
	and	r9d,1h
	cmp	r8,0F2h
	jnz	417850h

l000000000041787D:
	ret
000000000041787E                                           66 90               f.

;; fn0000000000417880: 0000000000417880
;;   Called from:
;;     0000000000417A14 (in fn00000000004178C0)
;;     0000000000417AB8 (in fn00000000004178C0)
;;     0000000000417AFE (in fn00000000004178C0)
fn0000000000417880 proc
	xor	r8d,r8d
	xor	r9d,r9d
	nop	word ptr cs:[rax+rax+0h]

l0000000000417890:
	movzx	eax,word ptr [rdx+r8+10h]
	movzx	r10d,word ptr [rcx+r8+10h]
	sub	eax,r10d
	sub	eax,r9d
	mov	r9d,eax
	mov	[rdx+r8+10h],ax
	sub	r8,2h
	shr	r9d,10h
	and	r9d,1h
	cmp	r8,0F2h
	jnz	417890h

l00000000004178BD:
	ret
00000000004178BE                                           66 90               f.

;; fn00000000004178C0: 00000000004178C0
;;   Called from:
;;     0000000000412950 (in fn00000000004120A0)
;;     00000000004129BB (in fn00000000004120A0)
fn00000000004178C0 proc
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,+98h
	movzx	eax,word ptr [rdx]
	xor	ebx,ebx
	xor	r9d,r9d
	mov	r15,rdx
	mov	[rsp+60h],bx
	mov	[rsp+0E0h],rcx
	lea	rbx,[r15+4h]
	xor	ecx,ecx
	xor	r8d,r8d
	xor	r10d,r10d
	xor	r11d,r11d
	mov	[rsp+56h],cx
	mov	[rsp+50h],ax
	movzx	eax,word ptr [rdx+2h]
	xor	edx,edx
	mov	[rsp+5Ah],r9w
	mov	[rsp+54h],dx
	mov	rcx,rbx
	mov	[rsp+58h],r8w
	mov	[rsp+5Ch],r10w
	mov	[rsp+5Eh],r11w
	mov	[rsp+52h],ax
	lea	rax,[r15+12h]
	mov	r9,rax
	mov	[rsp+38h],rax
	xor	eax,eax
	nop	dword ptr [rax]

l0000000000417940:
	movzx	edx,word ptr [rcx]
	mov	r8d,eax
	or	r8d,1h
	test	dl,1h
	cmovnz	eax,r8d

l0000000000417951:
	shr	dx,1h
	test	al,2h
	jz	41795Dh

l0000000000417958:
	or	dx,8000h

l000000000041795D:
	mov	[rcx],dx
	add	rcx,2h
	add	eax,eax
	cmp	rcx,r9
	jnz	417940h

l000000000041796B:
	mov	rax,[rsp+0E0h]
	lea	r13,[rsp+50h]
	lea	r12,[r15+10h]
	lea	rbp,[rsp+70h]
	mov	rsi,r13
	mov	[rsp+40h],r13
	mov	r13,r12
	movzx	eax,word ptr [rax+6h]
	mov	r12,[rsp+0E0h]
	lea	r14,[rbp+4h]
	mov	edi,eax
	mov	[rsp+48h],eax
	shl	eax,10h
	sub	eax,edi
	mov	[rsp+34h],eax
	lea	rax,[rsp+5Eh]
	mov	[rsp+28h],rax

l00000000004179B5:
	movzx	eax,word ptr [r15+4h]
	movzx	ecx,word ptr [r15+6h]
	mov	edi,0FFFFFFFFh
	shl	eax,10h
	add	eax,ecx
	cmp	eax,[rsp+34h]
	mov	ecx,0FFFFh
	ja	4179DFh

l00000000004179D4:
	xor	edx,edx
	div	dword ptr [rsp+48h]
	mov	edi,eax
	movzx	ecx,ax

l00000000004179DF:
	mov	r8,rbp
	mov	rdx,r12
	call	4174B0h
	xor	eax,eax
	nop	dword ptr [rax+0h]

l00000000004179F0:
	movzx	edx,word ptr [r14+rax]
	movzx	ecx,word ptr [r15+rax+4h]
	cmp	dx,cx
	jnz	417AA0h

l0000000000417A04:
	add	rax,2h
	cmp	rax,0Eh
	jnz	4179F0h

l0000000000417A0E:
	mov	rdx,r15
	mov	rcx,rbp
	call	417880h
	mov	[rsi+4h],di
	mov	rax,rbx

l0000000000417A20:
	add	rax,2h
	movzx	edx,word ptr [rax]
	cmp	rax,r13
	mov	[rax-2h],dx
	jnz	417A20h

l0000000000417A30:
	xor	eax,eax
	add	rsi,2h
	cmp	rsi,[rsp+28h]
	mov	[r15+10h],ax
	jnz	4179B5h

l0000000000417A46:
	mov	r13,[rsp+40h]
	mov	rdx,[rsp+38h]
	xor	eax,eax

l0000000000417A52:
	add	rbx,2h
	or	ax,[rbx-2h]
	cmp	rbx,rdx
	jnz	417A52h

l0000000000417A5F:
	test	ax,ax
	setnz	al
	xor	edx,edx
	nop	word ptr [rax+rax+0h]

l0000000000417A70:
	movzx	ecx,word ptr [r13+rdx+0h]
	mov	[r15+rdx],cx
	add	rdx,2h
	cmp	rdx,12h
	jnz	417A70h

l0000000000417A85:
	movzx	eax,al
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
0000000000417A9C                                     0F 1F 40 00             ..@.

l0000000000417AA0:
	cmp	cx,dx
	jnc	417A0Eh

l0000000000417AA9:
	lea	r8d,[rdi-1h]
	mov	rdx,rbp
	mov	rcx,r12
	mov	[rsp+4Ch],r8d
	call	417880h
	mov	r8d,[rsp+4Ch]
	xor	eax,eax

l0000000000417AC4:
	movzx	edx,word ptr [r14+rax]
	movzx	ecx,word ptr [r15+rax+4h]
	cmp	dx,cx
	jnz	417AF0h

l0000000000417AD4:
	add	rax,2h
	cmp	rax,0Eh
	jnz	417AC4h

l0000000000417ADE:
	mov	edi,r8d
	jmp	417A0Eh
0000000000417AE6                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l0000000000417AF0:
	cmp	cx,dx
	jnc	417ADEh

l0000000000417AF5:
	mov	rdx,rbp
	mov	rcx,r12
	sub	edi,2h
	call	417880h
	jmp	417A0Eh
0000000000417B08                         0F 1F 84 00 00 00 00 00         ........

;; fn0000000000417B10: 0000000000417B10
;;   Called from:
;;     00000000004127EB (in fn00000000004120A0)
;;     000000000041873E (in fn0000000000418440)
fn0000000000417B10 proc
	push	r14
	push	r13
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,60h
	movzx	eax,word ptr [rdx]
	lea	rdi,[rsp+40h]
	mov	r12,rdx
	mov	[rsp+40h],ax
	movzx	eax,word ptr [rdx+2h]
	lea	rdx,[rdi+0Eh]
	mov	[rsp+42h],ax
	mov	rax,rdi
	nop

l0000000000417B40:
	xor	r8d,r8d
	add	rax,2h
	mov	[rax+2h],r8w
	cmp	rax,rdx
	jnz	417B40h

l0000000000417B51:
	lea	rsi,[rcx+0Eh]
	lea	r14,[rcx+2h]
	lea	rbp,[rsp+20h]
	lea	rbx,[rdi+4h]
	xor	r13d,r13d

l0000000000417B65:
	movzx	r9d,word ptr [rsi+2h]
	test	r9w,r9w
	jnz	417BD0h

l0000000000417B70:
	or	r13w,[rsp+50h]
	lea	r9,[rdi+10h]
	nop	word ptr [rax+rax+0h]

l0000000000417B80:
	sub	r9,2h
	movzx	r10d,word ptr [r9]
	cmp	r9,rbx
	mov	[r9+2h],r10w
	jnz	417B80h

l0000000000417B92:
	sub	rsi,2h
	xor	eax,eax
	cmp	rsi,r14
	mov	[rsp+44h],ax
	jnz	417B65h

l0000000000417BA2:
	xor	ecx,ecx

l0000000000417BA4:
	movzx	r8d,word ptr [rdi+rcx]
	mov	[r12+rcx],r8w
	add	rcx,2h
	cmp	rcx,12h
	jnz	417BA4h

l0000000000417BB8:
	movzx	eax,r13w
	add	rsp,60h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	ret
0000000000417BCB                                  0F 1F 44 00 00            ..D..

l0000000000417BD0:
	movzx	ecx,r9w
	mov	rdx,r12
	mov	r8,rbp
	call	4174B0h
	mov	rdx,rdi
	mov	rcx,rbp
	call	417840h
	jmp	417B70h
0000000000417BEC                                     0F 1F 40 00             ..@.

;; fn0000000000417BF0: 0000000000417BF0
;;   Called from:
;;     00000000004121EC (in fn00000000004120A0)
;;     0000000000412548 (in fn00000000004120A0)
;;     00000000004126D4 (in fn00000000004120A0)
;;     0000000000412A24 (in fn00000000004120A0)
fn0000000000417BF0 proc
	push	rbx
	movzx	eax,word ptr [rcx+2h]
	mov	r8d,eax
	and	r8w,7FFFh
	cmp	r8w,7FFFh
	jz	417CB2h

l0000000000417C0A:
	test	ax,ax
	jz	417CD0h

l0000000000417C13:
	lea	r10,[rcx+4h]

l0000000000417C17:
	xor	r9d,r9d
	lea	rax,[rdx+6h]
	mov	[rdx+0Ah],r9w
	cmp	word ptr [rcx],0h
	movzx	r8d,word ptr [rcx+2h]
	jnz	417C62h

l0000000000417C2E:
	mov	[rdx+8h],r8w
	movzx	edx,word ptr [rcx+2h]
	and	dx,7FFFh
	cmp	dx,7FFFh
	jz	417C7Dh

l0000000000417C43:
	lea	rdx,[r10+2h]
	add	r10,0Ah

l0000000000417C4B:
	add	rdx,2h
	movzx	ecx,word ptr [rdx-2h]
	sub	rax,2h
	mov	[rax+2h],cx
	cmp	rdx,r10
	jnz	417C4Bh

l0000000000417C60:
	pop	rbx
	ret

l0000000000417C62:
	or	r8w,8000h
	mov	[rdx+8h],r8w
	movzx	edx,word ptr [rcx+2h]
	and	dx,7FFFh
	cmp	dx,7FFFh
	jnz	417C43h

l0000000000417C7D:
	lea	rdx,[rcx+6h]
	add	rcx,12h

l0000000000417C85:
	cmp	word ptr [rdx],0h
	jnz	417C43h

l0000000000417C8B:
	add	rdx,2h
	cmp	rdx,rcx
	jnz	417C85h

l0000000000417C94:
	mov	ebx,0FFFF8000h
	xor	edx,edx
	xor	ecx,ecx
	xor	r8d,r8d
	mov	[rax],bx
	mov	[rax-2h],dx
	mov	[rax-4h],cx
	mov	[rax-6h],r8w
	pop	rbx
	ret

l0000000000417CB2:
	lea	rax,[rcx+6h]
	lea	r8,[rcx+12h]

l0000000000417CBA:
	cmp	word ptr [rax],0h
	jnz	417D15h

l0000000000417CC0:
	add	rax,2h
	cmp	rax,r8
	jnz	417CBAh

l0000000000417CC9:
	jmp	417C13h
0000000000417CCE                                           66 90               f.

l0000000000417CD0:
	lea	r10,[rcx+4h]
	lea	rbx,[rcx+12h]
	xor	eax,eax
	mov	r9,r10
	nop	dword ptr [rax]

l0000000000417CE0:
	movzx	r8d,word ptr [r9]
	mov	r11d,eax
	or	r11d,1h
	test	r8b,1h
	cmovnz	eax,r11d

l0000000000417CF3:
	shr	r8w,1h
	test	al,2h
	jz	417D01h

l0000000000417CFB:
	or	r8w,8000h

l0000000000417D01:
	mov	[r9],r8w
	add	r9,2h
	add	eax,eax
	cmp	r9,rbx
	jnz	417CE0h

l0000000000417D10:
	jmp	417C17h

l0000000000417D15:
	xor	eax,eax
	xor	ecx,ecx
	xor	r8d,r8d
	mov	r9d,0FFFFC000h
	mov	r10d,7FFFh
	xor	r11d,r11d
	mov	[rdx],ax
	mov	[rdx+2h],cx
	mov	[rdx+4h],r8w
	mov	[rdx+6h],r9w
	mov	[rdx+8h],r10w
	mov	[rdx+0Ah],r11w
	pop	rbx
	ret
0000000000417D48                         0F 1F 84 00 00 00 00 00         ........

;; fn0000000000417D50: 0000000000417D50
fn0000000000417D50 proc
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,60h
	mov	rax,rcx
	movzx	ecx,word ptr [rcx+0Ah]
	and	cx,7FFFh
	cmp	cx,7FFFh
	jz	417DE3h

l0000000000417D6A:
	movzx	ecx,word ptr [rdx+0Ah]
	and	cx,7FFFh
	cmp	cx,7FFFh
	jz	417E12h

l0000000000417D7E:
	lea	rsi,[rsp+20h]
	lea	rdi,[rsp+40h]
	mov	rcx,rax
	mov	rbx,rdx
	mov	rdx,rsi
	call	417750h
	mov	rdx,rdi
	mov	rcx,rbx
	call	417750h
	movzx	r8d,word ptr [rsp+20h]
	xor	eax,eax
	lea	rcx,[rsi+2h]
	cmp	r8w,[rsp+40h]
	lea	rdx,[rdi+2h]
	jz	417E30h

l0000000000417DB9:
	cmp	word ptr [rcx+rax],0h
	jnz	417E70h

l0000000000417DC4:
	cmp	word ptr [rdx+rax],0h
	jnz	417E70h

l0000000000417DCF:
	add	rax,2h
	cmp	rax,0Eh
	jnz	417DB9h

l0000000000417DD9:
	xor	al,al

l0000000000417DDB:
	add	rsp,60h
	pop	rbx
	pop	rsi
	pop	rdi
	ret

l0000000000417DE3:
	lea	r8,[rax+0Ah]
	mov	rcx,rax

l0000000000417DEA:
	add	rcx,2h
	cmp	word ptr [rcx-2h],0h
	jnz	417E85h

l0000000000417DF9:
	cmp	rcx,r8
	jnz	417DEAh

l0000000000417DFE:
	movzx	ecx,word ptr [rdx+0Ah]
	and	cx,7FFFh
	cmp	cx,7FFFh
	jnz	417D7Eh

l0000000000417E12:
	lea	r8,[rdx+0Ah]
	mov	rcx,rdx

l0000000000417E19:
	add	rcx,2h
	cmp	word ptr [rcx-2h],0h
	jnz	417E85h

l0000000000417E24:
	cmp	rcx,r8
	jnz	417E19h

l0000000000417E29:
	jmp	417D7Eh
0000000000417E2E                                           66 90               f.

l0000000000417E30:
	cmp	r8w,1h
	sbb	eax,eax
	xor	ecx,ecx
	add	rsi,2h
	and	eax,2h
	sub	eax,1h

l0000000000417E43:
	movzx	edx,word ptr [rsi+rcx]
	add	rcx,2h
	movzx	r8d,word ptr [rdi+rcx]
	cmp	dx,r8w
	jnz	417E92h

l0000000000417E56:
	cmp	rcx,0Eh
	jnz	417E43h

l0000000000417E5C:
	xor	eax,eax
	add	rsp,60h
	pop	rbx
	pop	rsi
	pop	rdi
	ret
0000000000417E66                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l0000000000417E70:
	cmp	r8w,1h
	sbb	eax,eax
	and	eax,2h
	sub	eax,1h
	add	rsp,60h
	pop	rbx
	pop	rsi
	pop	rdi
	ret

l0000000000417E85:
	mov	eax,0FFFFFFFEh
	add	rsp,60h
	pop	rbx
	pop	rsi
	pop	rdi
	ret

l0000000000417E92:
	cmp	r8w,dx
	setnc	dl
	movzx	edx,dl
	mov	ecx,edx
	neg	ecx
	xor	eax,ecx
	add	eax,edx
	jmp	417DDBh
0000000000417EA9                            0F 1F 80 00 00 00 00          .......

;; fn0000000000417EB0: 0000000000417EB0
fn0000000000417EB0 proc
	test	edx,edx
	jz	417EC0h

l0000000000417EB4:
	jmp	417570h
0000000000417EB9                            0F 1F 80 00 00 00 00          .......

l0000000000417EC0:
	xor	eax,eax
	ret
0000000000417EC3          66 66 66 66 2E 0F 1F 84 00 00 00 00 00    ffff.........

;; fn0000000000417ED0: 0000000000417ED0
;;   Called from:
;;     0000000000412695 (in fn00000000004120A0)
;;     0000000000412743 (in fn00000000004120A0)
;;     00000000004128E4 (in fn00000000004120A0)
;;     00000000004180C1 (in fn0000000000418080)
;;     0000000000418731 (in fn0000000000418440)
;;     00000000004187A7 (in fn0000000000418440)
fn0000000000417ED0 proc
	push	rbx
	movzx	edx,word ptr [rcx+4h]
	test	dx,dx
	jnz	417F30h

l0000000000417EDA:
	movzx	edx,word ptr [rcx+6h]
	test	dx,dx
	js	417FD6h

l0000000000417EE7:
	lea	r8,[rcx+12h]
	xor	r9d,r9d

l0000000000417EEE:
	test	dx,dx
	jnz	417FDAh

l0000000000417EF7:
	lea	rax,[rcx+6h]
	jmp	417F03h
0000000000417EFD                                        0F 1F 00              ...

l0000000000417F00:
	movzx	edx,word ptr [rax]

l0000000000417F03:
	add	rax,2h
	mov	[rax-4h],dx
	cmp	rax,r8
	jnz	417F00h

l0000000000417F10:
	add	r9d,10h
	xor	eax,eax
	cmp	r9d,60h
	mov	[rcx+10h],ax
	jz	417FCFh

l0000000000417F24:
	movzx	edx,word ptr [rcx+6h]
	jmp	417EEEh
0000000000417F2A                               66 0F 1F 44 00 00           f..D..

l0000000000417F30:
	xor	eax,eax
	test	dx,0FF00h
	jnz	417F93h

l0000000000417F39:
	test	dx,dx
	lea	r11,[rcx+12h]
	jz	417F91h

l0000000000417F42:
	lea	r9,[rcx+4h]
	xor	r8d,r8d
	jmp	417F54h
0000000000417F4B                                  0F 1F 44 00 00            ..D..

l0000000000417F50:
	movzx	edx,word ptr [r9]

l0000000000417F54:
	mov	r10d,r8d
	or	r10d,1h
	test	dl,1h
	cmovnz	r8d,r10d

l0000000000417F62:
	shr	dx,1h
	test	r8b,2h
	jz	417F70h

l0000000000417F6B:
	or	dx,8000h

l0000000000417F70:
	mov	[r9],dx
	add	r9,2h
	add	r8d,r8d
	cmp	r9,r11
	jnz	417F50h

l0000000000417F80:
	sub	eax,1h
	cmp	eax,0AFh
	jz	417F91h

l0000000000417F88:
	movzx	edx,word ptr [rcx+4h]
	test	dx,dx
	jnz	417F42h

l0000000000417F91:
	pop	rbx
	ret

l0000000000417F93:
	lea	rax,[rcx+4h]
	lea	r10,[rcx+12h]
	xor	r8d,r8d
	jmp	417FA6h

l0000000000417FA0:
	movzx	edx,word ptr [rax]
	mov	r8d,r9d

l0000000000417FA6:
	mov	r9d,edx
	shr	dx,8h
	add	rax,2h
	or	edx,r8d
	shl	r9d,8h
	mov	[rax-2h],dx
	cmp	rax,r10
	jnz	417FA0h

l0000000000417FC1:
	movzx	edx,word ptr [rcx+4h]
	mov	eax,0FFFFFFF8h
	jmp	417F39h

l0000000000417FCF:
	mov	eax,60h
	pop	rbx
	ret

l0000000000417FD6:
	xor	eax,eax
	pop	rbx
	ret

l0000000000417FDA:
	test	dx,0FF00h
	jnz	418031h

l0000000000417FE1:
	lea	rbx,[rcx+10h]
	lea	r11,[rcx+2h]
	nop	dword ptr [rax+0h]

l0000000000417FF0:
	mov	rax,rbx
	xor	r10d,r10d
	nop	word ptr cs:[rax+rax+0h]

l0000000000418000:
	movzx	r8d,word ptr [rax]
	sub	rax,2h
	mov	edx,r8d
	shr	r8w,8h
	shl	edx,8h
	or	edx,r10d
	mov	r10d,r8d
	mov	[rax+2h],dx
	cmp	rax,r11
	jnz	418000h

l0000000000418022:
	movzx	edx,word ptr [rcx+6h]
	add	r9d,8h
	test	dx,0FF00h
	jz	417FF0h

l0000000000418031:
	lea	r11,[rcx+2h]

l0000000000418035:
	test	dx,dx
	js	41807Ah

l000000000041803A:
	lea	r8,[rcx+10h]
	xor	eax,eax

l0000000000418040:
	movzx	edx,word ptr [r8]
	mov	r10d,eax
	or	r10d,1h
	test	dx,dx
	cmovs	eax,r10d

l0000000000418052:
	add	edx,edx
	test	al,2h
	jz	41805Bh

l0000000000418058:
	or	edx,1h

l000000000041805B:
	mov	[r8],dx
	sub	r8,2h
	add	eax,eax
	cmp	r8,r11
	jnz	418040h

l000000000041806A:
	add	r9d,1h
	cmp	r9d,60h
	jg	41807Ah

l0000000000418074:
	movzx	edx,word ptr [rcx+6h]
	jmp	418035h

l000000000041807A:
	mov	eax,r9d
	pop	rbx
	ret
000000000041807F                                              90                .

;; fn0000000000418080: 0000000000418080
;;   Called from:
;;     0000000000412774 (in fn00000000004120A0)
;;     0000000000412818 (in fn00000000004120A0)
;;     0000000000412845 (in fn00000000004120A0)
;;     0000000000412915 (in fn00000000004120A0)
;;     0000000000418763 (in fn0000000000418440)
fn0000000000418080 proc
	push	r14
	push	r13
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,40h
	xor	r14d,r14d
	mov	eax,1h
	mov	ebp,r9d
	mov	[rsp+30h],r14w
	mov	qword ptr [rsp+28h],+0h
	mov	r14d,ebp
	mov	rbx,rcx
	mov	esi,edx
	mov	edi,r8d
	mov	qword ptr [rsp+20h],+0h
	mov	[rsp+2Eh],ax
	call	417ED0h
	sub	r14d,eax
	cmp	r14d,7FFEh
	jg	4180DBh

l00000000004180D2:
	cmp	eax,50h
	jg	4181D0h

l00000000004180DB:
	test	r14d,r14d
	js	418253h

l00000000004180E4:
	mov	r13d,[rsp+0A0h]
	test	r13d,r13d
	jz	418167h

l00000000004180F1:
	cmp	dword ptr [rsp+0A8h],40h
	jz	418300h

l00000000004180FF:
	mov	r8d,10h
	mov	r10d,7h
	mov	r11d,8h

l0000000000418111:
	test	r14d,r14d
	setle	bpl
	cmp	dword ptr [rsp+0A8h],50h
	setnz	al
	and	bpl,al
	jnz	418280h

l000000000041812C:
	cmp	dword ptr [rsp+0A8h],4Fh
	lea	rcx,[rbx+r8]
	movzx	eax,word ptr [rcx]
	jle	4181F0h

l0000000000418141:
	xor	r9d,r9d
	test	ax,ax
	mov	[rcx],r9w
	js	418330h

l0000000000418151:
	test	bpl,bpl
	jnz	4182C3h

l000000000041815A:
	movzx	eax,word ptr [rbx+4h]
	test	ax,ax
	jnz	418214h

l0000000000418167:
	xor	r8d,r8d
	cmp	r14d,7FFEh
	mov	[rbx+10h],r8w
	jle	4181B0h

l0000000000418178:
	mov	ecx,7FFFh
	lea	rax,[rbx+4h]
	add	rbx,10h
	mov	[rbx-0Eh],cx
	nop	dword ptr [rax+0h]

l0000000000418190:
	xor	edx,edx
	add	rax,2h
	mov	[rax-2h],dx
	cmp	rax,rbx
	jnz	418190h

l000000000041819F:
	add	rsp,40h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	ret
00000000004181AE                                           66 90               f.

l00000000004181B0:
	test	r14d,r14d
	mov	eax,0h
	cmovns	eax,r14d

l00000000004181BC:
	mov	[rbx+2h],ax
	add	rsp,40h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	ret
00000000004181CF                                              90                .

l00000000004181D0:
	mov	qword ptr [rbx+2h],+0h
	mov	qword ptr [rbx+0Ah],+0h
	add	rsp,40h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	ret
00000000004181EF                                              90                .

l00000000004181F0:
	cmp	r11d,7h
	jnz	418141h

l00000000004181FA:
	mov	edx,eax
	or	edx,1h
	cmp	word ptr [rbx+10h],0h
	cmovnz	eax,edx

l0000000000418207:
	xor	r11d,r11d
	mov	[rbx+10h],r11w
	jmp	418141h

l0000000000418214:
	lea	rcx,[rbx+4h]
	lea	r10,[rbx+12h]
	xor	edx,edx
	jmp	418223h

l0000000000418220:
	movzx	eax,word ptr [rcx]

l0000000000418223:
	mov	r8d,edx
	or	r8d,1h
	test	al,1h
	cmovnz	edx,r8d

l0000000000418230:
	shr	ax,1h
	test	dl,2h
	jz	41823Ch

l0000000000418238:
	or	ax,8000h

l000000000041823C:
	mov	[rcx],ax
	add	rcx,2h
	add	edx,edx
	cmp	rcx,r10
	jnz	418220h

l000000000041824A:
	add	r14d,1h
	jmp	418167h

l0000000000418253:
	cmp	r14d,0B0h
	jl	4181D0h

l000000000041825D:
	mov	edx,r14d
	mov	rcx,rbx
	call	417570h
	test	eax,eax
	mov	eax,1h
	cmovnz	esi,eax

l0000000000418272:
	jmp	4180E4h
0000000000418277                      66 0F 1F 84 00 00 00 00 00        f........

l0000000000418280:
	movzx	eax,word ptr [rbx+10h]
	lea	rdx,[rbx+4h]
	lea	r13,[rbx+12h]
	and	eax,1h
	or	esi,eax
	xor	eax,eax

l0000000000418293:
	movzx	ecx,word ptr [rdx]
	mov	r12d,eax
	or	r12d,1h
	test	cl,1h
	cmovnz	eax,r12d

l00000000004182A4:
	shr	cx,1h
	test	al,2h
	jz	4182B0h

l00000000004182AB:
	or	cx,8000h

l00000000004182B0:
	mov	[rdx],cx
	add	rdx,2h
	add	eax,eax
	cmp	rdx,r13
	jnz	418293h

l00000000004182BE:
	jmp	41812Ch

l00000000004182C3:
	lea	rcx,[rbx+10h]
	lea	r10,[rbx+2h]
	xor	eax,eax
	nop	dword ptr [rax]

l00000000004182D0:
	movzx	edx,word ptr [rcx]
	mov	r8d,eax
	or	r8d,1h
	test	dx,dx
	cmovs	eax,r8d

l00000000004182E1:
	add	edx,edx
	test	al,2h
	jz	4182EAh

l00000000004182E7:
	or	edx,1h

l00000000004182EA:
	mov	[rcx],dx
	sub	rcx,2h
	add	eax,eax
	cmp	rcx,r10
	jnz	4182D0h

l00000000004182F8:
	jmp	41815Ah
00000000004182FD                                        0F 1F 00              ...

l0000000000418300:
	xor	ebp,ebp
	mov	r12d,1h
	mov	r8d,0Eh
	mov	[rsp+2Eh],bp
	mov	[rsp+2Ch],r12w
	mov	r10d,6h
	mov	r11d,7h
	jmp	418111h
000000000041832A                               66 0F 1F 44 00 00           f..D..

l0000000000418330:
	cmp	ax,8000h
	jz	418350h

l0000000000418336:
	lea	rcx,[rsp+20h]
	mov	rdx,rbx
	call	417840h
	jmp	418151h
0000000000418348                         0F 1F 84 00 00 00 00 00         ........

l0000000000418350:
	test	esi,esi
	jnz	418361h

l0000000000418354:
	test	byte ptr [rbx+r10*2],1h
	jz	418151h

l000000000041835F:
	jmp	418336h

l0000000000418361:
	test	edi,edi
	jnz	418151h

l0000000000418369:
	jmp	418336h
000000000041836B                                  0F 1F 44 00 00            ..D..

;; fn0000000000418370: 0000000000418370
;;   Called from:
;;     0000000000418786 (in fn0000000000418440)
fn0000000000418370 proc
	cmp	word ptr [rcx],0h
	movzx	eax,word ptr [rcx+2h]
	lea	r8,[rdx+8h]
	lea	r9,[rcx+4h]
	jz	4183C0h

l0000000000418382:
	or	ax,8000h
	mov	[rdx+0Ah],ax

l000000000041838A:
	lea	rax,[rcx+6h]
	add	rcx,12h
	cmp	word ptr [r9-2h],7FFFh
	jz	4183D0h

l000000000041839B:
	lea	rax,[r9+2h]
	lea	rcx,[r9+0Ch]
	mov	rdx,r8

l00000000004183A6:
	add	rax,2h
	movzx	r8d,word ptr [rax-2h]
	sub	rdx,2h
	mov	[rdx+2h],r8w
	cmp	rax,rcx
	jnz	4183A6h

l00000000004183BD:
	ret
00000000004183BF                                              90                .

l00000000004183C0:
	mov	[rdx+0Ah],ax
	jmp	41838Ah
00000000004183C6                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l00000000004183D0:
	cmp	word ptr [rax],0h
	jnz	418408h

l00000000004183D6:
	add	rax,2h
	cmp	rax,rcx
	jnz	4183D0h

l00000000004183DF:
	lea	rcx,[rdx+0Ah]
	mov	rax,rdx
	nop	word ptr cs:[rax+rax+0h]

l00000000004183F0:
	add	rax,2h
	xor	r8d,r8d
	cmp	rax,rcx
	mov	[rax-2h],r8w
	jnz	4183F0h

l0000000000418401:
	or	word ptr [rdx+0Ah],7FFFh
	ret

l0000000000418408:
	xor	eax,eax
	xor	ecx,ecx
	xor	r8d,r8d
	xor	r9d,r9d
	mov	r10d,0FFFFC000h
	mov	r11d,7FFFh
	mov	[rdx],ax
	mov	[rdx+2h],cx
	mov	[rdx+4h],r8w
	mov	[rdx+6h],r9w
	mov	[rdx+8h],r10w
	mov	[rdx+0Ah],r11w
	ret
000000000041843A                               66 0F 1F 44 00 00           f..D..

;; fn0000000000418440: 0000000000418440
;;   Called from:
;;     00000000004128D2 (in fn00000000004120A0)
fn0000000000418440 proc
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,70h
	mov	rsi,rdx
	movsx	edx,word ptr [rcx+0Ah]
	mov	rbx,r8
	mov	edi,edx
	and	di,7FFFh
	cmp	di,7FFFh
	jz	4184F0h

l0000000000418466:
	movzx	r11d,word ptr [rsi+0Ah]
	mov	r8d,r11d
	and	r8w,7FFFh
	cmp	r8w,7FFFh
	jz	418590h

l0000000000418480:
	lea	rbp,[rsp+30h]
	lea	rdi,[rsp+50h]
	mov	rdx,rbp
	call	417750h
	mov	rcx,rsi
	mov	rdx,rdi
	call	417750h
	movzx	r12d,word ptr [rsp+32h]
	movzx	esi,word ptr [rsp+52h]
	test	r12w,r12w
	mov	ecx,esi
	jz	418620h

l00000000004184B4:
	test	cx,cx
	mov	rax,rdi
	lea	rdx,[rdi+0Ch]
	jz	4184D4h

l00000000004184C0:
	jmp	418738h

l00000000004184C5:
	add	rax,2h
	cmp	word ptr [rax+2h],0h
	jnz	41872Eh

l00000000004184D4:
	cmp	rax,rdx
	jnz	4184C5h

l00000000004184D9:
	mov	qword ptr [rbx],+0h
	mov	dword ptr [rbx+8h],0h
	jmp	41860Ch
00000000004184EC                                     0F 1F 40 00             ..@.

l00000000004184F0:
	lea	r9,[rcx+0Ah]
	mov	rax,rcx

l00000000004184F7:
	add	rax,2h
	cmp	word ptr [rax-2h],0h
	jnz	418600h

l0000000000418506:
	cmp	rax,r9
	jnz	4184F7h

l000000000041850B:
	movzx	r11d,word ptr [rsi+0Ah]
	mov	r8d,r11d
	and	r8w,7FFFh
	cmp	r8w,7FFFh
	jz	418590h

l0000000000418521:
	mov	rax,rcx

l0000000000418524:
	add	rax,2h
	cmp	word ptr [rax-2h],0h
	jnz	4187B9h

l0000000000418533:
	cmp	rax,r9
	jnz	418524h

l0000000000418538:
	lea	rax,[rsi+2h]
	lea	r10,[rsi+10h]

l0000000000418540:
	cmp	word ptr [rax],0h
	jnz	418650h

l000000000041854A:
	add	rax,2h
	cmp	rax,r10
	jnz	418540h

l0000000000418553:
	xor	r8d,r8d
	xor	r9d,r9d
	xor	r10d,r10d
	xor	r11d,r11d
	mov	esi,0FFFFC000h
	mov	edi,7FFFh
	mov	[rbx],r8w
	mov	[rbx+2h],r9w
	mov	[rbx+4h],r10w
	mov	[rbx+6h],r11w
	mov	[rbx+8h],si
	mov	[rbx+0Ah],di
	add	rsp,70h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
000000000041858F                                              90                .

l0000000000418590:
	lea	r9,[rsi+0Ah]
	mov	rax,rsi

l0000000000418597:
	add	rax,2h
	cmp	word ptr [rax-2h],0h
	jnz	418700h

l00000000004185A6:
	cmp	rax,r9
	jnz	418597h

l00000000004185AB:
	cmp	di,7FFFh
	jz	4185F0h

l00000000004185B2:
	xor	r10d,r10d

l00000000004185B5:
	mov	rax,rsi

l00000000004185B8:
	add	rax,2h
	cmp	word ptr [rax-2h],0h
	jnz	418790h

l00000000004185C7:
	cmp	rax,r9
	jnz	4185B8h

l00000000004185CC:
	lea	rax,[rcx+2h]
	lea	r8,[rcx+10h]

l00000000004185D4:
	cmp	word ptr [rax],0h
	jnz	4186E0h

l00000000004185DE:
	add	rax,2h
	cmp	rax,r8
	jnz	4185D4h

l00000000004185E7:
	jmp	418553h
00000000004185EC                                     0F 1F 40 00             ..@.

l00000000004185F0:
	mov	r8d,7FFFh
	lea	r9,[rcx+0Ah]
	jmp	418521h
00000000004185FF                                              90                .

l0000000000418600:
	mov	rax,[rcx]
	mov	[rbx],rax
	mov	eax,[rcx+8h]
	mov	[rbx+8h],eax

l000000000041860C:
	add	rsp,70h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
0000000000418617                      66 0F 1F 84 00 00 00 00 00        f........

l0000000000418620:
	mov	rax,rbp
	lea	rdx,[rbp+0Ch]
	jmp	41863Fh
0000000000418629                            0F 1F 80 00 00 00 00          .......

l0000000000418630:
	add	rax,2h
	cmp	word ptr [rax+2h],0h
	jnz	4187A4h

l000000000041863F:
	cmp	rax,rdx
	jnz	418630h

l0000000000418644:
	jmp	4184D9h
0000000000418649                            0F 1F 80 00 00 00 00          .......

l0000000000418650:
	cmp	r8w,7FFFh
	jz	418711h

l000000000041865C:
	nop	dword ptr [rax+0h]

l0000000000418660:
	add	rcx,2h
	cmp	word ptr [rcx-2h],0h
	jnz	418727h

l000000000041866F:
	cmp	rcx,r9
	jnz	418660h

l0000000000418674:
	shr	edx,1Fh

l0000000000418677:
	cmp	r8w,7FFFh
	jz	4186C0h

l000000000041867F:
	movsx	eax,r11w
	shr	eax,1Fh

l0000000000418686:
	cmp	edx,eax
	mov	edx,0FFFF8000h
	mov	eax,0h
	cmovnz	eax,edx

l0000000000418695:
	lea	rdx,[rbx+0Ah]
	mov	[rbx+0Ah],ax
	mov	rax,rbx

l00000000004186A0:
	add	rax,2h
	xor	ecx,ecx
	cmp	rax,rdx
	mov	[rax-2h],cx
	jnz	4186A0h

l00000000004186AF:
	or	word ptr [rbx+0Ah],7FFFh
	add	rsp,70h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret

l00000000004186C0:
	lea	rax,[rsi+0Ah]

l00000000004186C4:
	add	rsi,2h
	cmp	word ptr [rsi-2h],0h
	jnz	418720h

l00000000004186CF:
	cmp	rsi,rax
	jnz	4186C4h

l00000000004186D4:
	jmp	41867Fh
00000000004186D6                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l00000000004186E0:
	mov	r8d,7FFFh

l00000000004186E6:
	cmp	di,7FFFh
	jnz	418674h

l00000000004186ED:
	lea	r9,[rcx+0Ah]
	jmp	418660h
00000000004186F6                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l0000000000418700:
	mov	rax,[rsi]
	mov	[rbx],rax
	mov	eax,[rsi+8h]
	mov	[rbx+8h],eax
	jmp	41860Ch

l0000000000418711:
	mov	r10d,1h
	lea	r9,[rsi+0Ah]
	jmp	4185B5h

l0000000000418720:
	xor	eax,eax
	jmp	418686h

l0000000000418727:
	xor	edx,edx
	jmp	418677h

l000000000041872E:
	mov	rcx,rdi
	call	417ED0h
	sub	esi,eax

l0000000000418738:
	mov	rdx,rdi
	mov	rcx,rbp
	call	417B10h
	lea	r9d,[r12+rsi-3FFEh]
	xor	r8d,r8d
	mov	edx,eax
	mov	rcx,rdi
	mov	dword ptr [rsp+28h],50h
	mov	dword ptr [rsp+20h],40h
	call	418080h
	movzx	eax,word ptr [rsp+50h]
	mov	rdx,rbx
	mov	rcx,rdi
	cmp	[rsp+30h],ax
	setz	al
	movzx	eax,al
	sub	eax,1h
	mov	[rsp+50h],ax
	call	418370h
	jmp	41860Ch

l0000000000418790:
	test	r10d,r10d
	mov	r8d,7FFFh
	jnz	4186E6h

l000000000041879F:
	jmp	418480h

l00000000004187A4:
	mov	rcx,rbp
	call	417ED0h
	movzx	ecx,word ptr [rsp+52h]
	sub	r12d,eax
	jmp	4184B4h

l00000000004187B9:
	cmp	r8w,7FFFh
	lea	r9,[rsi+0Ah]
	jz	4185B2h

l00000000004187C9:
	jmp	418480h
00000000004187CE                                           90 90               ..

;; fn00000000004187D0: 00000000004187D0
;;   Called from:
;;     0000000000413202 (in fn0000000000413170)
fn00000000004187D0 proc
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,+0B8h
	movaps	[rsp+0A0h],xmm6
	mov	r12d,[r9]
	mov	eax,r12d
	and	eax,0CFh
	mov	[r9],eax
	mov	eax,r12d
	and	eax,7h
	cmp	eax,4h
	ja	419C33h

l0000000000418806:
	mov	r13d,edx
	lea	rdx,[0000000000490ED0]                                 ; [rip+000786C0]
	mov	[rsp+28h],r9
	mov	r15,r8
	mov	rbp,rcx
	movsxd	rax,dword ptr [rdx+rax*4]
	add	rdx,rax
	jmp	rdx

l0000000000418824:
	mov	edi,[rcx]
	xor	ecx,ecx
	cmp	edi,20h
	jle	41883Bh

l000000000041882D:
	mov	eax,20h

l0000000000418832:
	add	eax,eax
	add	ecx,1h
	cmp	edi,eax
	jg	418832h

l000000000041883B:
	call	419F80h
	mov	rsi,rax
	lea	eax,[rdi-1h]
	lea	r9,[rsi+18h]
	sar	eax,5h
	cdqe
	mov	rdx,r9
	lea	r11,[r15+rax*4]
	mov	rax,r15
	nop	dword ptr [rax+0h]

l0000000000418860:
	mov	ecx,[rax]
	add	rax,4h
	add	rdx,4h
	cmp	r11,rax
	mov	[rdx-4h],ecx
	jnc	418860h

l0000000000418872:
	sub	rdx,r9
	sar	rdx,2h
	mov	r14d,edx
	movsxd	rdx,edx
	lea	rax,[r9+rdx*4-4h]
	jmp	41889Fh
0000000000418886                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l0000000000418890:
	sub	rax,4h
	test	edx,edx
	mov	r14d,edx
	jz	418DA0h

l000000000041889F:
	mov	r8d,[rax]
	lea	edx,[r14-1h]
	test	r8d,r8d
	jz	418890h

l00000000004188AB:
	movsxd	rdx,edx
	mov	[rsi+14h],r14d
	shl	r14d,5h
	bsr	eax,[rsi+rdx*4+18h]
	xor	eax,1Fh
	sub	r14d,eax

l00000000004188C1:
	mov	rcx,rsi
	call	41ADB0h
	test	eax,eax
	mov	[rsp+9Ch],eax
	mov	r11d,r13d
	jnz	418DB0h

l00000000004188DB:
	mov	ecx,[rsi+14h]
	test	ecx,ecx
	jnz	418990h

l00000000004188E6:
	mov	rcx,rsi
	call	41A090h

l00000000004188EE:
	mov	rax,[rsp+130h]
	mov	rdx,[rsp+138h]
	lea	rcx,[0000000000490ECD]                                 ; [rip+000785C8]
	mov	r8d,1h
	mov	dword ptr [rax],1h
	call	419C70h
	nop

l0000000000418917:
	movaps	xmm6,[rsp+0A0h]
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

l0000000000418933:
	mov	rax,[rsp+130h]
	mov	rdx,[rsp+138h]
	lea	rcx,[0000000000490EC9]                                 ; [rip+0007857F]
	mov	r8d,3h
	mov	dword ptr [rax],0FFFF8000h
	call	419C70h
	jmp	418917h
000000000041895D                                        0F 1F 00              ...

l0000000000418960:
	mov	rax,[rsp+130h]
	mov	rdx,[rsp+138h]
	lea	rcx,[0000000000490EC0]                                 ; [rip+00078549]
	mov	r8d,8h
	mov	dword ptr [rax],0FFFF8000h
	call	419C70h
	jmp	418917h
000000000041898A                               66 0F 1F 44 00 00           f..D..

l0000000000418990:
	lea	rdx,[rsp+9Ch]
	mov	rcx,rsi
	mov	[rsp+30h],r11d
	call	41A740h
	movq	rax,xmm0
	movq	r9,xmm0
	mov	r11d,[rsp+30h]
	pxor	xmm0,xmm0
	shr	rax,20h
	mov	r9d,r9d
	and	eax,0FFFFFh
	lea	ecx,[r11+r14-1h]
	or	eax,3FF00000h
	mov	rdx,rax
	cvtsi2sd	xmm0,ecx
	shl	rdx,20h
	mov	ebx,ecx
	or	r9,rdx
	sar	ebx,1Fh
	mov	[rsp+30h],r9
	mov	edx,ebx
	movsd	xmm1,double ptr [rsp+30h]
	xor	edx,ecx
	sub	edx,ebx
	subsd	xmm1,[0000000000490EE8]                              ; [rip+000784EE]
	sub	edx,435h
	test	edx,edx
	mulsd	xmm0,[0000000000490F00]                              ; [rip+000784F6]
	mulsd	xmm1,[0000000000490EF0]                              ; [rip+000784DE]
	addsd	xmm1,[0000000000490EF8]                              ; [rip+000784DE]
	addsd	xmm1,xmm0
	jle	418A34h

l0000000000418A20:
	pxor	xmm0,xmm0
	cvtsi2sd	xmm0,edx
	mulsd	xmm0,[0000000000490F08]                              ; [rip+000784D8]
	addsd	xmm1,xmm0

l0000000000418A34:
	cvttsd2si	ebx,xmm1
	pxor	xmm6,xmm6
	ucomisd	xmm6,xmm1
	mov	[rsp+30h],ebx
	ja	4192D3h

l0000000000418A4A:
	mov	edx,ecx
	mov	dword ptr [rsp+6Ch],1h
	shl	edx,14h
	add	eax,edx
	mov	edx,r9d
	shl	rax,20h
	or	rdx,rax
	cmp	dword ptr [rsp+30h],16h
	mov	[rsp+80h],rdx
	mov	r9,rdx
	ja	418AA2h

l0000000000418A75:
	movsxd	rax,dword ptr [rsp+30h]
	mov	rdx,[0000000000491FA0]                                 ; [rip+0007951F]
	movsd	xmm0,double ptr [rdx+rax*8]
	ucomisd	xmm0,double ptr [rsp+80h]
	jbe	418DF0h

l0000000000418A95:
	sub	dword ptr [rsp+30h],1h
	mov	dword ptr [rsp+6Ch],0h

l0000000000418AA2:
	mov	eax,r14d
	mov	dword ptr [rsp+50h],0h
	sub	eax,ecx
	sub	eax,1h
	mov	[rsp+40h],eax
	js	4192C0h

l0000000000418ABC:
	mov	eax,[rsp+30h]
	test	eax,eax
	js	4192A0h

l0000000000418AC8:
	add	[rsp+40h],eax
	mov	[rsp+88h],eax
	mov	dword ptr [rsp+58h],0h

l0000000000418ADB:
	cmp	dword ptr [rsp+120h],9h
	ja	418DD0h

l0000000000418AE9:
	cmp	dword ptr [rsp+120h],5h
	jle	418DDBh

l0000000000418AF7:
	sub	dword ptr [rsp+120h],4h
	xor	eax,eax

l0000000000418B01:
	cmp	dword ptr [rsp+120h],3h
	jz	419494h

l0000000000418B0F:
	jle	4191F3h

l0000000000418B15:
	cmp	dword ptr [rsp+120h],4h
	mov	dword ptr [rsp+60h],1h
	jz	418E00h

l0000000000418B2B:
	cmp	dword ptr [rsp+120h],5h
	jnz	419209h

l0000000000418B39:
	mov	ebx,[rsp+30h]
	add	ebx,[rsp+128h]
	mov	[rsp+8Ch],ebx
	add	ebx,1h
	test	ebx,ebx
	mov	[rsp+68h],ebx
	mov	ecx,ebx
	jle	4196D0h

l0000000000418B5C:
	cmp	ebx,0Eh
	mov	[rsp+9Ch],ebx
	setbe	bl
	and	ebx,eax

l0000000000418B6B:
	mov	[rsp+78h],r9
	mov	[rsp+70h],r11d
	call	419C40h
	mov	[rsp+48h],rax
	mov	eax,[rbp+0Ch]
	mov	r11d,[rsp+70h]
	mov	r9,[rsp+78h]
	sub	eax,1h
	mov	[rsp+38h],eax
	jz	418BBAh

l0000000000418B95:
	mov	ecx,[rsp+38h]
	mov	eax,2h
	test	ecx,ecx
	cmovns	eax,ecx

l0000000000418BA3:
	and	r12d,8h
	mov	[rsp+38h],eax
	jz	418BBAh

l0000000000418BAD:
	mov	eax,3h
	sub	eax,[rsp+38h]
	mov	[rsp+38h],eax

l0000000000418BBA:
	test	bl,bl
	jz	418EB0h

l0000000000418BC2:
	mov	eax,[rsp+38h]
	or	eax,[rsp+30h]
	jnz	418EB0h

l0000000000418BD0:
	mov	eax,[rsp+6Ch]
	mov	dword ptr [rsp+9Ch],0h
	movsd	xmm4,double ptr [rsp+80h]
	test	eax,eax
	jz	418BFEh

l0000000000418BEC:
	movsd	xmm0,[0000000000490F18]                              ; [rip+00078324]
	ucomisd	xmm0,xmm4
	ja	419A2Bh

l0000000000418BFE:
	movapd	xmm0,xmm4
	mov	r12d,[rsp+68h]
	addsd	xmm0,xmm4
	addsd	xmm0,[0000000000490F30]                              ; [rip+0007831D]
	movq	rdx,xmm0
	movq	rax,xmm0
	shr	rdx,20h
	mov	eax,eax
	sub	edx,3400000h
	shl	rdx,20h
	or	rax,rdx
	test	r12d,r12d
	jz	418E67h

l0000000000418C39:
	mov	r9d,[rsp+68h]
	movapd	xmm0,xmm4
	xor	ecx,ecx

l0000000000418C44:
	mov	ebx,[rsp+60h]
	lea	edx,[r9-1h]
	movsxd	rdx,edx
	test	ebx,ebx
	jz	419773h

l0000000000418C57:
	mov	r10,[0000000000491FA0]                                 ; [rip+00079342]
	movsd	xmm1,[0000000000490F50]                              ; [rip+000782EA]
	mov	[rsp+38h],rax
	cvttsd2si	eax,xmm0
	pxor	xmm2,xmm2
	mov	dword ptr [rsp+9Ch],0h
	divsd	xmm1,double ptr [r10+rdx*8]
	mov	rdx,[rsp+48h]
	mov	rbx,rdx
	add	rbx,1h
	cvtsi2sd	xmm2,eax
	add	eax,30h
	mov	[rdx],al
	movsd	xmm5,double ptr [rsp+38h]
	subsd	xmm0,xmm2
	subsd	xmm1,xmm5
	ucomisd	xmm1,xmm0
	ja	418D44h

l0000000000418CB1:
	movsd	xmm5,[0000000000490F18]                              ; [rip+0007825F]
	movapd	xmm2,xmm5
	subsd	xmm2,xmm0
	ucomisd	xmm1,xmm2
	ja	419847h

l0000000000418CCB:
	mov	eax,[rsp+9Ch]
	movsd	xmm3,[0000000000490F20]                              ; [rip+00078246]
	add	eax,1h
	cmp	r9d,eax
	mov	[rsp+9Ch],eax
	jg	418D1Ch

l0000000000418CE9:
	jmp	418E9Eh
0000000000418CEE                                           66 90               f.

l0000000000418CF0:
	movapd	xmm2,xmm5
	subsd	xmm2,xmm0
	ucomisd	xmm1,xmm2
	ja	419847h

l0000000000418D02:
	mov	eax,[rsp+9Ch]
	add	eax,1h
	cmp	r9d,eax
	mov	[rsp+9Ch],eax
	jle	418E9Eh

l0000000000418D1C:
	mulsd	xmm0,xmm3
	add	rbx,1h
	pxor	xmm2,xmm2
	mulsd	xmm1,xmm3
	cvttsd2si	eax,xmm0
	cvtsi2sd	xmm2,eax
	add	eax,30h
	mov	[rbx-1h],al
	subsd	xmm0,xmm2
	ucomisd	xmm1,xmm0
	jbe	418CF0h

l0000000000418D44:
	ucomisd	xmm0,xmm6
	lea	ebp,[rcx+1h]
	jpe	418D53h

l0000000000418D4D:
	jz	4196A7h

l0000000000418D53:
	mov	r15d,10h
	nop	dword ptr [rax+0h]

l0000000000418D60:
	mov	rcx,rsi
	call	41A090h
	cmp	qword ptr [rsp+138h],0h
	mov	rax,[rsp+130h]
	mov	byte ptr [rbx],0h
	mov	[rax],ebp
	jz	418D8Bh

l0000000000418D80:
	mov	rax,[rsp+138h]
	mov	[rax],rbx

l0000000000418D8B:
	mov	rax,[rsp+28h]
	or	[rax],r15d
	mov	rax,[rsp+48h]
	jmp	418917h
0000000000418D9D                                        0F 1F 00              ...

l0000000000418DA0:
	mov	dword ptr [rsi+14h],0h
	jmp	4188C1h
0000000000418DAC                                     0F 1F 40 00             ..@.

l0000000000418DB0:
	mov	edx,eax
	mov	rcx,rsi
	call	41ACB0h
	mov	eax,[rsp+9Ch]
	lea	r11d,[r13+rax+0h]
	sub	r14d,eax
	jmp	4188DBh
0000000000418DCE                                           66 90               f.

l0000000000418DD0:
	mov	dword ptr [rsp+120h],0h

l0000000000418DDB:
	add	ecx,3FEh
	cmp	ecx,7F7h
	setbe	al
	jmp	418B01h
0000000000418DEF                                              90                .

l0000000000418DF0:
	mov	dword ptr [rsp+6Ch],0h
	jmp	418AA2h
0000000000418DFD                                        0F 1F 00              ...

l0000000000418E00:
	mov	edx,[rsp+128h]
	test	edx,edx
	jle	4196BBh

l0000000000418E0F:
	cmp	dword ptr [rsp+128h],0Eh
	setbe	bl

l0000000000418E1A:
	mov	ecx,[rsp+128h]
	and	ebx,eax
	mov	[rsp+9Ch],ecx
	mov	[rsp+8Ch],ecx
	mov	[rsp+68h],ecx
	jmp	418B6Bh

l0000000000418E3A:
	movapd	xmm0,xmm4
	addsd	xmm0,xmm4
	addsd	xmm0,[0000000000490F30]                              ; [rip+000780E6]
	movq	rdx,xmm0
	movq	rax,xmm0
	shr	rdx,20h
	mov	eax,eax
	sub	edx,3400000h
	shl	rdx,20h
	or	rax,rdx

l0000000000418E67:
	movapd	xmm1,xmm4
	mov	[rsp+38h],rax
	movsd	xmm0,double ptr [rsp+38h]
	subsd	xmm1,[0000000000490F38]                              ; [rip+000780BA]
	ucomisd	xmm1,xmm0
	ja	419764h

l0000000000418E88:
	movsd	xmm2,[0000000000490F40]                              ; [rip+000780B0]
	xorpd	xmm0,xmm2
	ucomisd	xmm0,xmm1
	ja	41927Dh

l0000000000418E9E:
	movq	r9,xmm4
	mov	dword ptr [rsp+38h],0h
	nop	dword ptr [rax+rax+0h]

l0000000000418EB0:
	test	r11d,r11d
	js	418F52h

l0000000000418EB9:
	movsxd	rax,dword ptr [rsp+30h]
	cmp	eax,[rbp+14h]
	jg	418F52h

l0000000000418EC7:
	mov	ebx,[rsp+68h]
	mov	rdx,[0000000000491FA0]                                 ; [rip+000790CE]
	test	ebx,ebx
	movsd	xmm2,double ptr [rdx+rax*8]
	jg	4195E3h

l0000000000418EDF:
	mov	eax,[rsp+128h]
	shr	eax,1Fh
	test	al,al
	jz	4195E3h

l0000000000418EF1:
	test	ebx,ebx
	jnz	41927Dh

l0000000000418EF9:
	mulsd	xmm2,[0000000000490F38]                              ; [rip+00078037]
	mov	[rsp+38h],r9
	movsd	xmm5,double ptr [rsp+38h]
	ucomisd	xmm2,xmm5
	jnc	41927Dh

l0000000000418F16:
	mov	ebp,[rsp+30h]
	xor	r12d,r12d
	xor	edi,edi
	add	ebp,2h

l0000000000418F22:
	mov	rax,[rsp+48h]
	mov	r15d,20h
	lea	rbx,[rax+1h]
	mov	byte ptr [rax],31h

l0000000000418F34:
	mov	rcx,r12
	call	41A090h
	test	rdi,rdi
	jz	418D60h

l0000000000418F45:
	mov	rcx,rdi
	call	41A090h
	jmp	418D60h

l0000000000418F52:
	mov	r9d,[rsp+60h]
	test	r9d,r9d
	jz	419460h

l0000000000418F60:
	mov	edx,[rbp+4h]
	sub	edi,r14d
	mov	ecx,r11d
	lea	eax,[rdi+1h]
	sub	ecx,edi
	cmp	ecx,edx
	mov	[rsp+9Ch],eax
	jge	418FACh

l0000000000418F79:
	mov	ebx,[rsp+120h]
	lea	ecx,[rbx-3h]
	and	ecx,0FDh
	jz	418FACh

l0000000000418F88:
	mov	ebx,[rsp+68h]
	sub	r11d,edx
	lea	eax,[r11+1h]
	test	ebx,ebx
	mov	[rsp+9Ch],eax
	setg	cl
	cmp	ebx,eax
	setl	dl
	test	cl,dl
	jz	4196EFh

l0000000000418FAC:
	cmp	dword ptr [rsp+120h],1h
	jle	4196EFh

l0000000000418FBA:
	mov	ebx,[rsp+58h]
	mov	eax,[rsp+68h]
	mov	r12d,ebx
	sub	eax,1h
	sub	r12d,eax
	cmp	ebx,eax
	jge	418FE3h

l0000000000418FCF:
	mov	edx,eax
	sub	edx,[rsp+58h]
	xor	r12d,r12d
	add	[rsp+88h],edx
	mov	[rsp+58h],eax

l0000000000418FE3:
	mov	eax,[rsp+68h]
	test	eax,eax
	js	419982h

l0000000000418FEF:
	mov	ebx,[rsp+50h]
	mov	[rsp+9Ch],eax

l0000000000418FFA:
	mov	ecx,1h
	add	[rsp+50h],eax
	add	[rsp+40h],eax
	call	41A1C0h
	mov	rdi,rax

l000000000041900F:
	mov	ecx,[rsp+40h]
	test	ecx,ecx
	mov	eax,ecx
	jle	419035h

l0000000000419019:
	test	ebx,ebx
	jle	419035h

l000000000041901D:
	cmp	ecx,ebx
	cmovg	eax,ebx

l0000000000419022:
	sub	[rsp+50h],eax
	sub	ecx,eax
	mov	[rsp+9Ch],eax
	sub	ebx,eax
	mov	[rsp+40h],ecx

l0000000000419035:
	mov	r8d,[rsp+58h]
	test	r8d,r8d
	jle	41908Bh

l000000000041903F:
	mov	ecx,[rsp+60h]
	test	ecx,ecx
	jz	419480h

l000000000041904B:
	test	r12d,r12d
	jle	41907Eh

l0000000000419050:
	mov	rcx,rdi
	mov	edx,r12d
	call	41A320h
	mov	rdx,rsi
	mov	rcx,rax
	mov	rdi,rax
	call	41A1F0h
	mov	rcx,rsi
	mov	[rsp+70h],rax
	call	41A090h
	mov	rax,[rsp+70h]
	mov	rsi,rax

l000000000041907E:
	mov	edx,[rsp+58h]
	sub	edx,r12d
	jnz	419484h

l000000000041908B:
	mov	ecx,1h
	call	41A1C0h
	mov	r12,rax
	mov	eax,[rsp+88h]
	test	eax,eax
	jle	4191D0h

l00000000004190A7:
	mov	rcx,r12
	mov	edx,eax
	call	41A320h
	cmp	dword ptr [rsp+120h],1h
	mov	r12,rax
	jg	4190C8h

l00000000004190BE:
	cmp	r14d,1h
	jz	41918Ch

l00000000004190C8:
	xor	ebp,ebp

l00000000004190CA:
	mov	eax,[r12+14h]
	sub	eax,1h
	cdqe
	bsr	eax,[r12+rax*4+18h]
	xor	eax,1Fh

l00000000004190DD:
	sub	eax,[rsp+40h]
	mov	edx,[rsp+50h]
	sub	eax,4h
	and	eax,1Fh
	add	edx,eax
	mov	r13d,eax
	mov	[rsp+9Ch],eax
	test	edx,edx
	mov	ecx,eax
	jle	41910Fh

l00000000004190FD:
	mov	rcx,rsi
	call	41A490h
	mov	ecx,[rsp+9Ch]
	mov	rsi,rax

l000000000041910F:
	mov	edx,[rsp+40h]
	add	edx,ecx
	test	edx,edx
	jle	419124h

l0000000000419119:
	mov	rcx,r12
	call	41A490h
	mov	r12,rax

l0000000000419124:
	mov	eax,[rsp+6Ch]
	test	eax,eax
	jnz	4194A1h

l0000000000419130:
	mov	r14d,[rsp+68h]
	test	r14d,r14d
	jg	4192F1h

l000000000041913E:
	cmp	dword ptr [rsp+120h],2h
	jle	4192F1h

l000000000041914C:
	mov	r11d,[rsp+68h]
	test	r11d,r11d
	jnz	419282h

l000000000041915A:
	xor	r8d,r8d
	mov	rcx,r12
	mov	edx,5h
	call	41A100h
	mov	rcx,rsi
	mov	rdx,rax
	mov	r12,rax
	call	41A5B0h
	test	eax,eax
	jle	419282h

l0000000000419180:
	mov	ebp,[rsp+30h]
	add	ebp,2h
	jmp	418F22h

l000000000041918C:
	mov	eax,[rbp+4h]
	add	eax,1h
	cmp	r13d,eax
	jle	4190C8h

l000000000041919B:
	add	dword ptr [rsp+50h],1h
	add	dword ptr [rsp+40h],1h
	mov	ebp,1h
	nop	word ptr [rax+rax+0h]

l00000000004191B0:
	mov	edx,[rsp+88h]
	mov	eax,1Fh
	test	edx,edx
	jz	4190DDh

l00000000004191C4:
	jmp	4190CAh
00000000004191C9                            0F 1F 80 00 00 00 00          .......

l00000000004191D0:
	cmp	dword ptr [rsp+120h],1h
	jg	4191E0h

l00000000004191DA:
	cmp	r14d,1h
	jz	4191E4h

l00000000004191E0:
	xor	ebp,ebp
	jmp	4191B0h

l00000000004191E4:
	mov	eax,[rbp+4h]
	xor	ebp,ebp
	add	eax,1h
	cmp	r13d,eax
	jle	4191B0h

l00000000004191F1:
	jmp	41919Bh

l00000000004191F3:
	cmp	dword ptr [rsp+120h],2h
	mov	dword ptr [rsp+60h],0h
	jz	418E00h

l0000000000419209:
	pxor	xmm0,xmm0
	mov	[rsp+60h],r9
	mov	[rsp+68h],r11d
	cvtsi2sd	xmm0,edi
	mulsd	xmm0,[0000000000490F10]                              ; [rip+00077CED]
	cvttsd2si	ecx,xmm0
	add	ecx,3h
	mov	[rsp+9Ch],ecx
	call	419C40h
	mov	[rsp+48h],rax
	mov	eax,[rbp+0Ch]
	mov	r11d,[rsp+68h]
	mov	r9,[rsp+60h]
	sub	eax,1h
	mov	[rsp+38h],eax
	jnz	4196FDh

l0000000000419255:
	mov	eax,0FFFFFFFFh
	mov	dword ptr [rsp+60h],1h
	mov	dword ptr [rsp+128h],0h
	mov	[rsp+8Ch],eax
	mov	[rsp+68h],eax
	jmp	418EB0h

l000000000041927D:
	xor	r12d,r12d
	xor	edi,edi

l0000000000419282:
	mov	ebp,[rsp+128h]
	mov	rbx,[rsp+48h]
	mov	r15d,10h
	neg	ebp
	jmp	418F34h
000000000041929B                                  0F 1F 44 00 00            ..D..

l00000000004192A0:
	mov	eax,[rsp+30h]
	sub	[rsp+50h],eax
	mov	dword ptr [rsp+88h],0h
	neg	eax
	mov	[rsp+58h],eax
	jmp	418ADBh
00000000004192BE                                           66 90               f.

l00000000004192C0:
	neg	eax
	mov	dword ptr [rsp+40h],0h
	mov	[rsp+50h],eax
	jmp	418ABCh

l00000000004192D3:
	pxor	xmm0,xmm0
	cvtsi2sd	xmm0,ebx
	ucomisd	xmm0,xmm1
	jpe	4192E7h

l00000000004192E1:
	jz	418A4Ah

l00000000004192E7:
	sub	dword ptr [rsp+30h],1h
	jmp	418A4Ah

l00000000004192F1:
	mov	r10d,[rsp+60h]
	test	r10d,r10d
	jz	419500h

l00000000004192FF:
	lea	edx,[rbx+r13]
	test	edx,edx
	jle	419312h

l0000000000419307:
	mov	rcx,rdi
	call	41A490h
	mov	rdi,rax

l0000000000419312:
	test	ebp,ebp
	mov	r13,rdi
	jnz	4199B5h

l000000000041931D:
	mov	dword ptr [rsp+9Ch],1h
	mov	rbx,[rsp+48h]
	mov	[rsp+40h],r12
	mov	[rsp+50h],r15
	jmp	4193FEh
000000000041933C                                     0F 1F 40 00             ..@.

l0000000000419340:
	mov	rcx,r8
	call	41A090h
	mov	eax,r12d
	or	eax,[rsp+120h]
	jnz	41936Ah

l0000000000419354:
	mov	ecx,[rsp+38h]
	test	ecx,ecx
	jnz	41936Ah

l000000000041935C:
	mov	rax,[rsp+50h]
	test	byte ptr [rax],1h
	jz	419B25h

l000000000041936A:
	test	r14d,r14d
	js	419880h

l0000000000419373:
	or	r14d,[rsp+120h]
	jnz	41938Bh

l000000000041937D:
	mov	rax,[rsp+50h]
	test	byte ptr [rax],1h
	jz	419880h

l000000000041938B:
	test	r12d,r12d
	jle	41939Bh

l0000000000419390:
	cmp	dword ptr [rsp+38h],2h
	jnz	419A8Fh

l000000000041939B:
	add	rbx,1h
	mov	[rbx-1h],bpl
	mov	eax,[rsp+68h]
	cmp	[rsp+9Ch],eax
	jz	419A1Bh

l00000000004193B4:
	xor	r8d,r8d
	mov	rcx,rsi
	mov	edx,0Ah
	call	41A100h
	xor	r8d,r8d
	cmp	rdi,r13
	mov	rsi,rax
	mov	edx,0Ah
	mov	rcx,rdi
	jz	419470h

l00000000004193DB:
	call	41A100h
	mov	rcx,r13
	xor	r8d,r8d
	mov	edx,0Ah
	mov	rdi,rax
	call	41A100h
	mov	r13,rax

l00000000004193F6:
	add	dword ptr [rsp+9Ch],1h

l00000000004193FE:
	mov	r12,[rsp+40h]
	mov	rcx,rsi
	mov	rdx,r12
	call	419CE0h
	mov	rdx,rdi
	mov	rcx,rsi
	mov	r15d,eax
	lea	ebp,[rax+30h]
	call	41A5B0h
	mov	rcx,r12
	mov	rdx,r13
	mov	r14d,eax
	call	41A600h
	mov	r9d,[rax+10h]
	mov	r8,rax
	mov	r12d,1h
	test	r9d,r9d
	jnz	419340h

l0000000000419443:
	mov	rdx,rax
	mov	rcx,rsi
	mov	[rsp+58h],rax
	call	41A5B0h
	mov	r8,[rsp+58h]
	mov	r12d,eax
	jmp	419340h

l0000000000419460:
	mov	r12d,[rsp+58h]
	mov	ebx,[rsp+50h]
	xor	edi,edi
	jmp	41900Fh

l0000000000419470:
	call	41A100h
	mov	rdi,rax
	mov	r13,rax
	jmp	4193F6h

l0000000000419480:
	mov	edx,[rsp+58h]

l0000000000419484:
	mov	rcx,rsi
	call	41A320h
	mov	rsi,rax
	jmp	41908Bh

l0000000000419494:
	mov	dword ptr [rsp+60h],0h
	jmp	418B39h

l00000000004194A1:
	mov	rdx,r12
	mov	rcx,rsi
	call	41A5B0h
	test	eax,eax
	jns	419130h

l00000000004194B4:
	xor	r8d,r8d
	mov	rcx,rsi
	mov	edx,0Ah
	sub	dword ptr [rsp+30h],1h
	call	41A100h
	mov	rsi,rax
	mov	eax,[rsp+60h]
	test	eax,eax
	jnz	419B98h

l00000000004194D8:
	mov	eax,[rsp+8Ch]
	test	eax,eax
	jg	4194F5h

l00000000004194E3:
	cmp	dword ptr [rsp+120h],2h
	mov	[rsp+68h],eax
	jg	41914Ch

l00000000004194F5:
	mov	eax,[rsp+8Ch]
	mov	[rsp+68h],eax

l0000000000419500:
	mov	dword ptr [rsp+9Ch],1h
	mov	rbx,[rsp+48h]
	mov	r13d,[rsp+68h]
	jmp	41953Bh
0000000000419517                      66 0F 1F 84 00 00 00 00 00        f........

l0000000000419520:
	mov	rcx,rsi
	xor	r8d,r8d
	mov	edx,0Ah
	call	41A100h
	add	dword ptr [rsp+9Ch],1h
	mov	rsi,rax

l000000000041953B:
	mov	rdx,r12
	mov	rcx,rsi
	add	rbx,1h
	call	419CE0h
	lea	ebp,[rax+30h]
	mov	[rbx-1h],bpl
	cmp	[rsp+9Ch],r13d
	jl	419520h

l000000000041955B:
	xor	r14d,r14d

l000000000041955E:
	mov	eax,[rsp+38h]
	test	eax,eax
	jz	41992Ch

l000000000041956A:
	cmp	eax,2h
	jz	41995Ch

l0000000000419573:
	cmp	dword ptr [rsi+14h],1h
	jle	419AF3h

l000000000041957D:
	movzx	edx,byte ptr [rbx-1h]
	mov	rcx,[rsp+48h]
	jmp	4195A0h
0000000000419588                         0F 1F 84 00 00 00 00 00         ........

l0000000000419590:
	cmp	rax,rcx
	jz	41974Ch

l0000000000419599:
	movzx	edx,byte ptr [rax-1h]
	mov	rbx,rax

l00000000004195A0:
	cmp	dl,39h
	lea	rax,[rbx-1h]
	jz	419590h

l00000000004195A9:
	add	edx,1h
	mov	r15d,20h
	mov	[rax],dl

l00000000004195B4:
	mov	rcx,r12
	call	41A090h
	test	rdi,rdi
	jz	4196AFh

l00000000004195C5:
	cmp	r14,rdi
	jz	4195D7h

l00000000004195CA:
	test	r14,r14
	jz	4195D7h

l00000000004195CF:
	mov	rcx,r14
	call	41A090h

l00000000004195D7:
	mov	ebp,[rsp+30h]
	add	ebp,1h
	jmp	418F45h

l00000000004195E3:
	mov	[rsp+40h],r9
	mov	rdi,[rsp+48h]
	movsd	xmm0,double ptr [rsp+40h]
	mov	dword ptr [rsp+9Ch],1h
	movapd	xmm1,xmm0
	mov	rbx,rdi
	add	rbx,1h
	divsd	xmm1,xmm2
	cvttsd2si	eax,xmm1
	pxor	xmm1,xmm1
	cvtsi2sd	xmm1,eax
	lea	edx,[rax+30h]
	mov	[rdi],dl
	mulsd	xmm1,xmm2
	subsd	xmm0,xmm1
	ucomisd	xmm0,xmm6
	jpe	41962Eh

l000000000041962C:
	jz	4196A0h

l000000000041962E:
	mov	edx,[rsp+9Ch]
	cmp	[rsp+68h],edx
	jz	419727h

l000000000041963F:
	movsd	xmm3,[0000000000490F20]                              ; [rip+000778D9]
	movapd	xmm4,xmm6
	mov	ecx,[rsp+68h]
	jmp	419660h

l0000000000419651:
	mov	edx,[rsp+9Ch]
	cmp	ecx,edx
	jz	419727h

l0000000000419660:
	mulsd	xmm0,xmm3
	add	edx,1h
	add	rbx,1h
	mov	[rsp+9Ch],edx
	movapd	xmm1,xmm0
	divsd	xmm1,xmm2
	cvttsd2si	eax,xmm1
	pxor	xmm1,xmm1
	cvtsi2sd	xmm1,eax
	lea	edx,[rax+30h]
	mov	[rbx-1h],dl
	mulsd	xmm1,xmm2
	subsd	xmm0,xmm1
	ucomisd	xmm0,xmm6
	jpe	419651h

l000000000041969A:
	ucomisd	xmm0,xmm4
	jnz	419651h

l00000000004196A0:
	mov	ebp,[rsp+30h]
	add	ebp,1h

l00000000004196A7:
	xor	r15d,r15d
	jmp	418D60h

l00000000004196AF:
	mov	ebp,[rsp+30h]
	add	ebp,1h
	jmp	418D60h

l00000000004196BB:
	mov	ebx,1h
	mov	dword ptr [rsp+128h],1h
	jmp	418E1Ah

l00000000004196D0:
	cmp	dword ptr [rsp+68h],0Eh
	mov	dword ptr [rsp+9Ch],1h
	mov	ecx,1h
	setbe	bl
	and	ebx,eax
	jmp	418B6Bh

l00000000004196EF:
	mov	r12d,[rsp+58h]
	mov	ebx,[rsp+50h]
	jmp	418FFAh

l00000000004196FD:
	mov	eax,0FFFFFFFFh
	xor	ebx,ebx
	mov	dword ptr [rsp+60h],1h
	mov	[rsp+8Ch],eax
	mov	[rsp+68h],eax
	mov	dword ptr [rsp+128h],0h
	jmp	418B95h

l0000000000419727:
	mov	r10d,[rsp+38h]
	test	r10d,r10d
	jz	4199EEh

l0000000000419735:
	cmp	dword ptr [rsp+38h],1h
	jz	419AE1h

l0000000000419740:
	mov	ebp,[rsp+30h]
	add	ebp,1h
	jmp	418D53h

l000000000041974C:
	mov	rax,[rsp+48h]
	add	dword ptr [rsp+30h],1h
	mov	r15d,20h
	mov	byte ptr [rax],31h
	jmp	4195B4h

l0000000000419764:
	mov	ebp,2h
	xor	r12d,r12d
	xor	edi,edi
	jmp	418F22h

l0000000000419773:
	mov	r10,[0000000000491FA0]                                 ; [rip+00078826]
	mov	[rsp+38h],rax
	movsd	xmm3,double ptr [rsp+38h]
	mov	dword ptr [rsp+9Ch],1h
	mov	rbx,[rsp+48h]
	movsd	xmm1,[0000000000490F20]                              ; [rip+00077783]
	mulsd	xmm3,double ptr [r10+rdx*8]
	jmp	4197B3h

l00000000004197A5:
	mulsd	xmm0,xmm1
	add	edx,1h
	mov	[rsp+9Ch],edx

l00000000004197B3:
	cvttsd2si	eax,xmm0
	test	eax,eax
	jz	4197C7h

l00000000004197BB:
	pxor	xmm2,xmm2
	cvtsi2sd	xmm2,eax
	subsd	xmm0,xmm2

l00000000004197C7:
	add	rbx,1h
	add	eax,30h
	mov	[rbx-1h],al
	mov	edx,[rsp+9Ch]
	cmp	edx,r9d
	jnz	4197A5h

l00000000004197DD:
	movsd	xmm1,[0000000000490F50]                              ; [rip+0007776B]
	movapd	xmm2,xmm3
	addsd	xmm2,xmm1
	ucomisd	xmm0,xmm2
	ja	419847h

l00000000004197F3:
	subsd	xmm1,xmm3
	ucomisd	xmm1,xmm0
	jbe	418E9Eh

l0000000000419801:
	ucomisd	xmm0,xmm6
	jpe	419B8Dh

l000000000041980B:
	jnz	419B8Dh

l0000000000419811:
	xor	r15d,r15d
	jmp	419827h
0000000000419816                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l0000000000419820:
	movzx	eax,byte ptr [rbx-2h]
	mov	rbx,rdx

l0000000000419827:
	cmp	al,30h
	lea	rdx,[rbx-1h]
	jz	419820h

l000000000041982F:
	lea	ebp,[rcx+1h]
	jmp	418D60h

l0000000000419837:
	test	al,1h
	mov	ecx,[rsp+30h]
	movzx	eax,byte ptr [rbx-1h]
	jz	419B8Dh

l0000000000419847:
	mov	r8,[rsp+48h]
	jmp	419860h
000000000041984E                                           66 90               f.

l0000000000419850:
	cmp	rdx,r8
	jz	41999Ch

l0000000000419859:
	movzx	eax,byte ptr [rdx-1h]
	mov	rbx,rdx

l0000000000419860:
	cmp	al,39h
	lea	rdx,[rbx-1h]
	jz	419850h

l0000000000419868:
	mov	[rsp+48h],r8
	add	eax,1h

l0000000000419870:
	mov	[rdx],al
	lea	ebp,[rcx+1h]
	mov	r15d,20h
	jmp	418D60h

l0000000000419880:
	mov	edx,[rsp+38h]
	mov	eax,r12d
	mov	r14d,ebp
	mov	r12,[rsp+40h]
	test	edx,edx
	jz	419AC1h

l0000000000419897:
	cmp	dword ptr [rsi+14h],1h
	jle	419AB7h

l00000000004198A1:
	cmp	dword ptr [rsp+38h],2h
	jnz	4198F7h

l00000000004198A8:
	jmp	419AD6h
00000000004198AD                                        0F 1F 00              ...

l00000000004198B0:
	add	rbx,1h
	xor	r8d,r8d
	mov	rcx,r13
	mov	[rbx-1h],r14b
	mov	edx,0Ah
	call	41A100h
	cmp	rdi,r13
	mov	rcx,rsi
	mov	edx,0Ah
	cmovz	rdi,rax

l00000000004198D7:
	xor	r8d,r8d
	mov	rbp,rax
	call	41A100h
	mov	rdx,r12
	mov	rcx,rax
	mov	rsi,rax
	call	419CE0h
	lea	r14d,[rax+30h]
	mov	r13,rbp

l00000000004198F7:
	mov	rdx,r13
	mov	rcx,r12
	call	41A5B0h
	test	eax,eax
	jg	4198B0h

l0000000000419906:
	cmp	r14d,39h
	jz	419B06h

l0000000000419910:
	add	r14d,1h
	mov	r15d,20h

l000000000041991A:
	mov	[rbx],r14b
	mov	r14,rdi
	add	rbx,1h
	mov	rdi,r13
	jmp	4195B4h

l000000000041992C:
	mov	rcx,rsi
	mov	edx,1h
	call	41A490h
	mov	rdx,r12
	mov	rcx,rax
	mov	rsi,rax
	call	41A5B0h
	cmp	eax,0h
	jg	41957Dh

l0000000000419950:
	jnz	41995Ch

l0000000000419952:
	and	bpl,1h
	jnz	41957Dh

l000000000041995C:
	cmp	dword ptr [rsi+14h],1h
	mov	r15d,10h
	jg	419973h

l0000000000419968:
	jmp	419BFDh
000000000041996D                                        0F 1F 00              ...

l0000000000419970:
	mov	rbx,rax

l0000000000419973:
	cmp	byte ptr [rbx-1h],30h
	lea	rax,[rbx-1h]
	jz	419970h

l000000000041997D:
	jmp	4195B4h

l0000000000419982:
	mov	ebx,[rsp+50h]
	mov	dword ptr [rsp+9Ch],0h
	xor	eax,eax
	sub	ebx,[rsp+68h]
	jmp	418FFAh

l000000000041999C:
	mov	[rsp+48h],r8
	add	ecx,1h
	mov	byte ptr [r8],30h
	mov	rdx,r8
	mov	eax,31h
	jmp	419870h

l00000000004199B5:
	mov	ecx,[rdi+8h]
	call	419F80h
	lea	rcx,[rax+10h]
	mov	rbx,rax
	movsxd	rax,dword ptr [rdi+14h]
	lea	rdx,[rdi+10h]
	lea	r8,[0008h+rax*4]
	call	41BCC0h
	mov	edx,1h
	mov	rcx,rbx
	call	41A490h
	mov	r13,rax
	jmp	41931Dh

l00000000004199EE:
	addsd	xmm0,xmm0
	ucomisd	xmm0,xmm2
	ja	419AE1h

l00000000004199FC:
	ucomisd	xmm2,xmm0
	jpe	419A08h

l0000000000419A02:
	jz	419837h

l0000000000419A08:
	movzx	eax,byte ptr [rbx-1h]
	mov	ecx,[rsp+30h]
	mov	r15d,10h
	jmp	419827h

l0000000000419A1B:
	mov	r14,rdi
	mov	r12,[rsp+40h]
	mov	rdi,r13
	jmp	41955Eh

l0000000000419A2B:
	mov	eax,[rsp+68h]
	test	eax,eax
	jz	418E3Ah

l0000000000419A37:
	mov	r9d,[rsp+8Ch]
	test	r9d,r9d
	jle	418E9Eh

l0000000000419A48:
	movsd	xmm0,[0000000000490F20]                              ; [rip+000774D0]
	mov	ecx,0FFFFFFFFh
	movsd	xmm1,[0000000000490F28]                              ; [rip+000774CB]
	mulsd	xmm0,xmm4
	mulsd	xmm1,xmm0
	addsd	xmm1,[0000000000490F30]                              ; [rip+000774C3]
	movq	rdx,xmm1
	movq	rax,xmm1
	shr	rdx,20h
	mov	eax,eax
	sub	edx,3400000h
	shl	rdx,20h
	or	rax,rdx
	jmp	418C44h

l0000000000419A8F:
	cmp	ebp,39h
	mov	r12,[rsp+40h]
	mov	rax,rbx
	jz	419B09h

l0000000000419A9C:
	add	ebp,1h
	mov	r14,rdi
	add	rbx,1h
	mov	[rax],bpl
	mov	rdi,r13
	mov	r15d,20h
	jmp	4195B4h

l0000000000419AB7:
	cmp	dword ptr [rsi+18h],0h
	jnz	4198A1h

l0000000000419AC1:
	test	eax,eax
	jg	419B59h

l0000000000419AC9:
	xor	r15d,r15d

l0000000000419ACC:
	cmp	dword ptr [rsi+14h],1h
	jle	419BD8h

l0000000000419AD6:
	mov	r15d,10h
	jmp	41991Ah

l0000000000419AE1:
	movzx	eax,byte ptr [rbx-1h]
	mov	ecx,[rsp+30h]
	mov	r8,[rsp+48h]
	jmp	419860h

l0000000000419AF3:
	mov	eax,[rsi+18h]
	test	eax,eax
	jnz	41957Dh

l0000000000419AFE:
	xor	r15d,r15d
	jmp	419973h

l0000000000419B06:
	mov	rax,rbx

l0000000000419B09:
	mov	r14,rdi
	add	rbx,1h
	mov	rdi,r13
	mov	byte ptr [rax],39h
	mov	edx,39h
	mov	rcx,[rsp+48h]
	jmp	4195A0h

l0000000000419B25:
	cmp	ebp,39h
	mov	r12,[rsp+40h]
	mov	rax,rbx
	jz	419B06h

l0000000000419B32:
	test	r14d,r14d
	jle	419C10h

l0000000000419B3B:
	mov	ebp,r15d
	mov	r15d,20h
	add	ebp,31h

l0000000000419B47:
	mov	r14,rdi
	add	rbx,1h
	mov	[rax],bpl
	mov	rdi,r13
	jmp	4195B4h

l0000000000419B59:
	mov	rcx,rsi
	mov	edx,1h
	call	41A490h
	mov	rdx,r12
	mov	rcx,rax
	mov	rsi,rax
	call	41A5B0h
	cmp	eax,0h
	jle	419BEAh

l0000000000419B79:
	cmp	ebp,39h
	jz	419B06h

l0000000000419B7E:
	lea	r14d,[rbp+1h]
	mov	r15d,20h
	jmp	419ACCh

l0000000000419B8D:
	mov	r15d,10h
	jmp	419827h

l0000000000419B98:
	xor	r8d,r8d
	mov	rcx,rdi
	mov	edx,0Ah
	call	41A100h
	mov	rdi,rax
	mov	eax,[rsp+8Ch]
	test	eax,eax
	jg	419BC8h

l0000000000419BB6:
	cmp	dword ptr [rsp+120h],2h
	mov	[rsp+68h],eax
	jg	41914Ch

l0000000000419BC8:
	mov	eax,[rsp+8Ch]
	mov	[rsp+68h],eax
	jmp	4192FFh

l0000000000419BD8:
	cmp	dword ptr [rsi+18h],0h
	mov	eax,10h
	cmovnz	r15d,eax

l0000000000419BE5:
	jmp	41991Ah

l0000000000419BEA:
	jnz	419BF2h

l0000000000419BEC:
	test	bpl,1h
	jnz	419B79h

l0000000000419BF2:
	mov	r15d,20h
	jmp	419ACCh

l0000000000419BFD:
	cmp	dword ptr [rsi+18h],1h
	sbb	r15d,r15d
	not	r15d
	and	r15d,10h
	jmp	419973h

l0000000000419C10:
	cmp	dword ptr [rsi+14h],1h
	mov	r15d,10h
	jg	419B47h

l0000000000419C20:
	cmp	dword ptr [rsi+18h],1h
	sbb	r15d,r15d
	not	r15d
	and	r15d,10h
	jmp	419B47h

l0000000000419C33:
	xor	eax,eax
	jmp	418917h
0000000000419C3A                               90 90 90 90 90 90           ......

;; fn0000000000419C40: 0000000000419C40
;;   Called from:
;;     0000000000418B75 (in fn00000000004187D0)
;;     0000000000419231 (in fn00000000004187D0)
;;     0000000000419C7F (in fn0000000000419C70)
fn0000000000419C40 proc
	push	rbx
	sub	rsp,20h
	xor	ebx,ebx
	cmp	ecx,1Bh
	jle	419C5Dh

l0000000000419C4C:
	mov	eax,4h

l0000000000419C51:
	add	eax,eax
	add	ebx,1h
	lea	edx,[rax+17h]
	cmp	edx,ecx
	jl	419C51h

l0000000000419C5D:
	mov	ecx,ebx
	call	419F80h
	mov	[rax],ebx
	add	rax,4h
	add	rsp,20h
	pop	rbx
	ret

;; fn0000000000419C70: 0000000000419C70
;;   Called from:
;;     0000000000418911 (in fn00000000004187D0)
;;     0000000000418956 (in fn00000000004187D0)
;;     0000000000418983 (in fn00000000004187D0)
fn0000000000419C70 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	mov	rbx,rcx
	mov	ecx,r8d
	mov	rsi,rdx
	call	419C40h
	movzx	ecx,byte ptr [rbx]
	lea	r8,[rbx+1h]
	test	cl,cl
	mov	[rax],cl
	mov	rcx,rax
	jz	419CA9h

l0000000000419C94:
	add	r8,1h
	movzx	r9d,byte ptr [r8-1h]
	add	rcx,1h
	test	r9b,r9b
	mov	[rcx],r9b
	jnz	419C94h

l0000000000419CA9:
	test	rsi,rsi
	jz	419CB1h

l0000000000419CAE:
	mov	[rsi],rcx

l0000000000419CB1:
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret
0000000000419CB8                         0F 1F 84 00 00 00 00 00         ........

;; fn0000000000419CC0: 0000000000419CC0
;;   Called from:
;;     00000000004141EF (in fn0000000000414180)
;;     0000000000414222 (in fn0000000000414180)
;;     00000000004142D1 (in fn0000000000414230)
;;     0000000000414304 (in fn0000000000414230)
;;     0000000000414402 (in fn0000000000414320)
;;     0000000000414440 (in fn0000000000414320)
fn0000000000419CC0 proc
	mov	edx,1h
	mov	rax,rcx
	mov	ecx,[rcx-4h]
	shl	edx,cl
	mov	[rax+4h],ecx
	lea	rcx,[rax-4h]
	mov	[rax+8h],edx
	jmp	41A090h
0000000000419CDC                                     0F 1F 40 00             ..@.

;; fn0000000000419CE0: 0000000000419CE0
;;   Called from:
;;     0000000000419409 (in fn00000000004187D0)
;;     0000000000419545 (in fn00000000004187D0)
;;     00000000004198EB (in fn00000000004187D0)
fn0000000000419CE0 proc
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,38h
	xor	eax,eax
	mov	edi,[rdx+14h]
	cmp	edi,[rcx+14h]
	mov	r15,rdx
	jg	419E49h

l0000000000419D01:
	sub	edi,1h
	lea	rbx,[rdx+18h]
	lea	r12,[rcx+18h]
	movsxd	r13,edi
	xor	edx,edx
	shl	r13,2h
	lea	rbp,[rbx+r13]
	add	r13,r12
	mov	eax,[rbp+0h]
	lea	r8d,[rax+1h]
	mov	eax,[r13+0h]
	div	r8d
	test	eax,eax
	mov	r14d,eax
	mov	[rsp+2Ch],eax
	jz	419DC7h

l0000000000419D39:
	mov	edx,eax
	mov	rsi,rbx
	mov	r11,r12
	xor	eax,eax
	xor	r10d,r10d
	nop	word ptr cs:[rax+rax+0h]

l0000000000419D50:
	add	rsi,4h
	mov	r8d,[rsi-4h]
	mov	r9d,[r11]
	add	r11,4h
	imul	r8,rdx
	add	r8,rax
	mov	rax,r8
	mov	r8d,r8d
	sub	r9,r8
	shr	rax,20h
	sub	r9,r10
	mov	r10,r9
	mov	[r11-4h],r9d
	shr	r10,20h
	and	r10d,1h
	cmp	rbp,rsi
	jnc	419D50h

l0000000000419D8A:
	mov	r11d,[r13+0h]
	test	r11d,r11d
	jnz	419DC7h

l0000000000419D93:
	lea	rax,[r13-4h]
	cmp	r12,rax
	jnc	419DC4h

l0000000000419D9C:
	mov	r10d,[r13-4h]
	test	r10d,r10d
	jz	419DB8h

l0000000000419DA5:
	jmp	419DC4h
0000000000419DA7                      66 0F 1F 84 00 00 00 00 00        f........

l0000000000419DB0:
	mov	r9d,[rax]
	test	r9d,r9d
	jnz	419DC4h

l0000000000419DB8:
	sub	rax,4h
	sub	edi,1h
	cmp	r12,rax
	jc	419DB0h

l0000000000419DC4:
	mov	[rcx+14h],edi

l0000000000419DC7:
	mov	rdx,r15
	mov	rsi,rcx
	call	41A5B0h
	test	eax,eax
	js	419E45h

l0000000000419DD6:
	lea	eax,[r14+1h]
	mov	rcx,r12
	xor	edx,edx
	mov	[rsp+2Ch],eax

l0000000000419DE3:
	add	rbx,4h
	mov	eax,[rcx]
	mov	r8d,[rbx-4h]
	add	rcx,4h
	sub	rax,r8
	sub	rax,rdx
	mov	rdx,rax
	mov	[rcx-4h],eax
	shr	rdx,20h
	and	edx,1h
	cmp	rbp,rbx
	jnc	419DE3h

l0000000000419E09:
	movsxd	rax,edi
	lea	rdx,[r12+rax*4]
	mov	r8d,[rdx]
	test	r8d,r8d
	jnz	419E45h

l0000000000419E18:
	lea	rax,[rdx-4h]
	cmp	r12,rax
	jnc	419E42h

l0000000000419E21:
	mov	ecx,[rdx-4h]
	test	ecx,ecx
	jz	419E36h

l0000000000419E28:
	jmp	419E42h
0000000000419E2A                               66 0F 1F 44 00 00           f..D..

l0000000000419E30:
	mov	edx,[rax]
	test	edx,edx
	jnz	419E42h

l0000000000419E36:
	sub	rax,4h
	sub	edi,1h
	cmp	r12,rax
	jc	419E30h

l0000000000419E42:
	mov	[rsi+14h],edi

l0000000000419E45:
	mov	eax,[rsp+2Ch]

l0000000000419E49:
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
0000000000419E5A                               90 90 90 90 90 90           ......

;; fn0000000000419E60: 0000000000419E60
;;   Called from:
;;     0000000000419F8B (in fn0000000000419F80)
;;     000000000041A0A5 (in fn000000000041A090)
;;     000000000041A39A (in fn000000000041A320)
;;     000000000041A412 (in fn000000000041A320)
fn0000000000419E60 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	mov	eax,[00000000004AE410]                                 ; [rip+000945A4]
	movsxd	rsi,ecx
	cmp	eax,2h
	jz	419EDDh

l0000000000419E74:
	test	eax,eax
	jz	419EA2h

l0000000000419E78:
	cmp	eax,1h
	jnz	419E9Bh

l0000000000419E7D:
	mov	rbx,[00000000004AF6A4]                                 ; [rip+00095820]

l0000000000419E84:
	mov	ecx,1h
	call	rbx
	mov	eax,[00000000004AE410]                                 ; [rip+0009457F]
	cmp	eax,1h
	jz	419E84h

l0000000000419E96:
	cmp	eax,2h
	jz	419EDDh

l0000000000419E9B:
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret

l0000000000419EA2:
	mov	al,1h
	xchg	[00000000004AE410],eax                                ; [rip+00094566]
	test	eax,eax
	jnz	419F00h

l0000000000419EAE:
	lea	rcx,[00000000004AE440]                                 ; [rip+0009458B]
	mov	rbx,[00000000004AF5EC]                                 ; [rip+00095730]
	call	rbx
	lea	rcx,[00000000004AE468]                                 ; [rip+000945A3]
	call	rbx
	lea	rcx,[0000000000419F30]                                 ; [rip+00000062]
	call	410BF0h
	mov	[00000000004AE410],2h                                  ; [rip+00094533]

l0000000000419EDD:
	lea	rdx,[rsi+rsi*4]
	lea	rax,[00000000004AE440]                                 ; [rip+00094558]
	lea	rcx,[rax+rdx*8]
	mov	rax,[00000000004AF55C]                                 ; [rip+00095669]
	add	rsp,28h
	pop	rbx
	pop	rsi
	jmp	rax
0000000000419EFC                                     0F 1F 40 00             ..@.

l0000000000419F00:
	cmp	eax,2h
	jz	419F20h

l0000000000419F05:
	mov	eax,[00000000004AE410]                                 ; [rip+00094505]
	cmp	eax,1h
	jz	419E7Dh

l0000000000419F14:
	jmp	419E96h
0000000000419F16                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l0000000000419F20:
	mov	[00000000004AE410],2h                                  ; [rip+000944E6]
	jmp	419EDDh
0000000000419F2C                                     0F 1F 40 00             ..@.

;; fn0000000000419F30: 0000000000419F30
fn0000000000419F30 proc
	push	rbx
	sub	rsp,20h
	mov	eax,3h
	xchg	[00000000004AE410],eax                                ; [rip+000944D0]
	cmp	eax,2h
	jz	419F50h

l0000000000419F45:
	add	rsp,20h
	pop	rbx
	ret
0000000000419F4B                                  0F 1F 44 00 00            ..D..

l0000000000419F50:
	mov	rbx,[00000000004AF54C]                                 ; [rip+000955F5]
	lea	rcx,[00000000004AE440]                                 ; [rip+000944E2]
	call	rbx
	lea	rcx,[00000000004AE468]                                 ; [rip+00094501]
	mov	rax,rbx
	add	rsp,20h
	pop	rbx
	jmp	rax
0000000000419F72       66 66 66 66 66 2E 0F 1F 84 00 00 00 00 00   fffff.........

;; fn0000000000419F80: 0000000000419F80
;;   Called from:
;;     0000000000415476 (in fn0000000000415400)
;;     000000000041594B (in fn00000000004158B0)
;;     000000000041676E (in fn0000000000415960)
;;     000000000041679B (in fn0000000000415960)
;;     000000000041883B (in fn00000000004187D0)
;;     00000000004199B8 (in fn00000000004187D0)
;;     0000000000419C5F (in fn0000000000419C40)
;;     000000000041A16B (in fn000000000041A100)
;;     000000000041A1CC (in fn000000000041A1C0)
;;     000000000041A232 (in fn000000000041A1F0)
;;     000000000041A447 (in fn000000000041A320)
;;     000000000041A4C9 (in fn000000000041A490)
;;     000000000041A628 (in fn000000000041A600)
;;     000000000041A702 (in fn000000000041A600)
;;     000000000041A877 (in fn000000000041A860)
;;     000000000041A9E9 (in fn000000000041A9A0)
;;     000000000041AE16 (in fn000000000041ADF0)
;;     000000000041AF19 (in fn000000000041ADF0)
;;     000000000041B0B7 (in fn000000000041AF50)
;;     000000000041B1AA (in fn000000000041AF50)
;;     000000000041B435 (in fn000000000041AF50)
fn0000000000419F80 proc
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,20h
	mov	ebx,ecx
	xor	ecx,ecx
	call	419E60h
	cmp	ebx,9h
	jg	419FD0h

l0000000000419F95:
	lea	rdx,[00000000004AE3C0]                                 ; [rip+00094424]
	movsxd	rcx,ebx
	mov	rdi,[rdx+rcx*8]
	test	rdi,rdi
	jz	41A030h

l0000000000419FAC:
	cmp	[00000000004AE410],2h                                  ; [rip+0009445D]
	mov	r8,[rdi]
	mov	[rdx+rcx*8],r8
	jnz	41A016h

l0000000000419FBC:
	lea	rcx,[00000000004AE440]                                 ; [rip+0009447D]
	call	[00000000004AF5FC]                                    ; [rip+00095633]
	jmp	41A016h
0000000000419FCB                                  0F 1F 44 00 00            ..D..

l0000000000419FD0:
	mov	eax,1h
	mov	ecx,ebx
	shl	eax,cl
	mov	esi,eax
	lea	eax,[rax-1h]
	cdqe
	lea	rdx,[0027h+rax*4]
	shr	rdx,3h
	mov	edx,edx

l0000000000419FEE:
	lea	rcx,[0000h+rdx*8]
	call	41BCB0h
	test	rax,rax
	mov	rdi,rax
	jz	41A08Ah

l000000000041A007:
	cmp	[00000000004AE410],2h                                  ; [rip+00094402]
	mov	[rdi+8h],ebx
	mov	[rdi+0Ch],esi
	jz	419FBCh

l000000000041A016:
	mov	dword ptr [rdi+14h],0h
	mov	dword ptr [rdi+10h],0h
	mov	rax,rdi

l000000000041A027:
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	ret
000000000041A02F                                              90                .

l000000000041A030:
	mov	ecx,ebx
	mov	eax,1h
	mov	rdi,[00000000004770D0]                                 ; [rip+0005D092]
	shl	eax,cl
	lea	rcx,[00000000004ADAC0]                                 ; [rip+00093A79]
	lea	edx,[rax-1h]
	mov	esi,eax
	mov	rax,rdi
	movsxd	rdx,edx
	sub	rax,rcx
	lea	rdx,[0027h+rdx*4]
	mov	rcx,rax
	sar	rcx,3h
	shr	rdx,3h
	mov	edx,edx
	add	rcx,rdx
	cmp	rcx,+120h
	ja	419FEEh

l000000000041A07A:
	lea	rdx,[rdi+rdx*8]
	mov	[00000000004770D0],rdx                                 ; [rip+0005D04B]
	jmp	41A007h

l000000000041A08A:
	xor	eax,eax
	jmp	41A027h
000000000041A08E                                           66 90               f.

;; fn000000000041A090: 000000000041A090
;;   Called from:
;;     000000000041549D (in fn0000000000415400)
;;     000000000041564A (in fn00000000004154B0)
;;     0000000000415944 (in fn00000000004158B0)
;;     0000000000415A95 (in fn0000000000415960)
;;     00000000004166C3 (in fn0000000000415960)
;;     00000000004166CB (in fn0000000000415960)
;;     0000000000416743 (in fn0000000000415960)
;;     000000000041674B (in fn0000000000415960)
;;     0000000000416753 (in fn0000000000415960)
;;     000000000041675B (in fn0000000000415960)
;;     000000000041686F (in fn0000000000415960)
;;     0000000000416945 (in fn0000000000415960)
;;     000000000041694D (in fn0000000000415960)
;;     0000000000416955 (in fn0000000000415960)
;;     000000000041695F (in fn0000000000415960)
;;     0000000000416967 (in fn0000000000415960)
;;     00000000004169B9 (in fn0000000000415960)
;;     0000000000416AE8 (in fn0000000000415960)
;;     0000000000416AF0 (in fn0000000000415960)
;;     00000000004188E9 (in fn00000000004187D0)
;;     0000000000418D63 (in fn00000000004187D0)
;;     0000000000418F37 (in fn00000000004187D0)
;;     0000000000418F48 (in fn00000000004187D0)
;;     0000000000419071 (in fn00000000004187D0)
;;     0000000000419343 (in fn00000000004187D0)
;;     00000000004195B7 (in fn00000000004187D0)
;;     00000000004195D2 (in fn00000000004187D0)
;;     0000000000419CD7 (in fn0000000000419CC0)
;;     000000000041A197 (in fn000000000041A100)
;;     000000000041A380 (in fn000000000041A320)
;;     000000000041A561 (in fn000000000041A490)
;;     000000000041AF40 (in fn000000000041ADF0)
;;     000000000041B2B3 (in fn000000000041AF50)
;;     000000000041B483 (in fn000000000041AF50)
fn000000000041A090 proc
	push	rbx
	sub	rsp,20h
	test	rcx,rcx
	jz	41A0C9h

l000000000041A09A:
	cmp	dword ptr [rcx+8h],9h
	jg	41A0D0h

l000000000041A0A0:
	mov	rbx,rcx
	xor	ecx,ecx
	call	419E60h
	movsxd	rdx,dword ptr [rbx+8h]
	lea	rax,[00000000004AE3C0]                                 ; [rip+0009430B]
	cmp	[00000000004AE410],2h                                  ; [rip+00094354]
	mov	rcx,[rax+rdx*8]
	mov	[rax+rdx*8],rbx
	mov	[rbx],rcx
	jz	41A0E0h

l000000000041A0C9:
	add	rsp,20h
	pop	rbx
	ret
000000000041A0CF                                              90                .

l000000000041A0D0:
	add	rsp,20h
	pop	rbx
	jmp	41BDA0h
000000000041A0DA                               66 0F 1F 44 00 00           f..D..

l000000000041A0E0:
	mov	rax,[00000000004AF5FC]                                 ; [rip+00095515]
	lea	rcx,[00000000004AE440]                                 ; [rip+00094352]
	add	rsp,20h
	pop	rbx
	jmp	rax
000000000041A0F6                   66 2E 0F 1F 84 00 00 00 00 00       f.........

;; fn000000000041A100: 000000000041A100
;;   Called from:
;;     0000000000419165 (in fn00000000004187D0)
;;     00000000004193BF (in fn00000000004187D0)
;;     00000000004193DB (in fn00000000004187D0)
;;     00000000004193EE (in fn00000000004187D0)
;;     0000000000419470 (in fn00000000004187D0)
;;     00000000004194C4 (in fn00000000004187D0)
;;     000000000041952B (in fn00000000004187D0)
;;     00000000004198C3 (in fn00000000004187D0)
;;     00000000004198DD (in fn00000000004187D0)
;;     0000000000419BA3 (in fn00000000004187D0)
;;     000000000041A3D2 (in fn000000000041A320)
;;     000000000041AA26 (in fn000000000041A9A0)
;;     000000000041AA65 (in fn000000000041A9A0)
fn000000000041A100 proc
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,28h
	mov	esi,[rcx+14h]
	xor	r9d,r9d
	lea	r10,[rcx+18h]
	mov	rdi,rcx
	movsxd	rbx,r8d
	movsxd	rdx,edx
	nop	dword ptr [rax+rax+0h]

l000000000041A120:
	mov	eax,[r10+r9*4]
	imul	rax,rdx
	add	rax,rbx
	mov	rbx,rax
	mov	[r10+r9*4],eax
	add	r9,1h
	shr	rbx,20h
	cmp	esi,r9d
	jg	41A120h

l000000000041A13F:
	test	rbx,rbx
	mov	rax,rdi
	jz	41A15Ch

l000000000041A147:
	cmp	esi,[rdi+0Ch]
	jge	41A165h

l000000000041A14C:
	movsxd	rax,esi
	add	esi,1h
	mov	[rdi+rax*4+18h],ebx
	mov	[rdi+14h],esi
	mov	rax,rdi

l000000000041A15C:
	add	rsp,28h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret

l000000000041A165:
	mov	eax,[rdi+8h]
	lea	ecx,[rax+1h]
	call	419F80h
	test	rax,rax
	mov	rbp,rax
	jz	41A1AEh

l000000000041A178:
	lea	rcx,[rax+10h]
	movsxd	rax,dword ptr [rdi+14h]
	lea	rdx,[rdi+10h]
	lea	r8,[0008h+rax*4]
	call	41BCC0h
	mov	rcx,rdi
	mov	rdi,rbp
	call	41A090h
	movsxd	rax,esi
	add	esi,1h
	mov	[rdi+rax*4+18h],ebx
	mov	[rdi+14h],esi
	mov	rax,rdi
	jmp	41A15Ch

l000000000041A1AE:
	xor	eax,eax
	jmp	41A15Ch
000000000041A1B2       66 66 66 66 66 2E 0F 1F 84 00 00 00 00 00   fffff.........

;; fn000000000041A1C0: 000000000041A1C0
;;   Called from:
;;     00000000004167DF (in fn0000000000415960)
;;     0000000000419007 (in fn00000000004187D0)
;;     0000000000419090 (in fn00000000004187D0)
fn000000000041A1C0 proc
	push	rbx
	sub	rsp,20h
	mov	ebx,ecx
	mov	ecx,1h
	call	419F80h
	test	rax,rax
	jz	41A1E0h

l000000000041A1D6:
	mov	[rax+18h],ebx
	mov	dword ptr [rax+14h],1h

l000000000041A1E0:
	add	rsp,20h
	pop	rbx
	ret
000000000041A1E6                   66 2E 0F 1F 84 00 00 00 00 00       f.........

;; fn000000000041A1F0: 000000000041A1F0
;;   Called from:
;;     0000000000416862 (in fn0000000000415960)
;;     0000000000419064 (in fn00000000004187D0)
;;     000000000041A36D (in fn000000000041A320)
;;     000000000041A3F4 (in fn000000000041A320)
fn000000000041A1F0 proc
	push	r14
	push	r13
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,20h
	movsxd	r13,dword ptr [rcx+14h]
	movsxd	rbx,dword ptr [rdx+14h]
	mov	r12,rcx
	mov	r14,rdx
	cmp	r13d,ebx
	jl	41A311h

l000000000041A215:
	mov	eax,ebx
	movsxd	rbx,r13d
	movsxd	r13,eax

l000000000041A21D:
	xor	eax,eax
	lea	esi,[rbx+r13]
	cmp	esi,[r12+0Ch]
	setg	al
	add	eax,[r12+8h]
	mov	ecx,eax
	call	419F80h
	test	rax,rax
	jz	41A31Ch

l000000000041A240:
	lea	rdi,[rax+18h]
	movsxd	rdx,esi
	lea	rbp,[rdi+rdx*4]
	mov	r8,rdi
	cmp	rdi,rbp
	jnc	41A263h

l000000000041A253:
	mov	dword ptr [r8],0h
	add	r8,4h
	cmp	rbp,r8
	ja	41A253h

l000000000041A263:
	lea	rdx,[r14+18h]
	add	r12,18h
	lea	rbx,[r12+rbx*4]
	lea	r13,[rdx+r13*4]
	cmp	rdx,r13
	jnc	41A2D9h

l000000000041A278:
	nop	dword ptr [rax+rax+0h]

l000000000041A280:
	add	rdx,4h
	mov	r11d,[rdx-4h]
	test	r11d,r11d
	jz	41A2D0h

l000000000041A28D:
	mov	r9,rdi
	mov	r8,r12
	xor	r10d,r10d
	jmp	41A2A3h
000000000041A298                         0F 1F 84 00 00 00 00 00         ........

l000000000041A2A0:
	mov	r9,r14

l000000000041A2A3:
	add	r8,4h
	mov	ecx,[r8-4h]
	mov	r14d,[r9]
	imul	rcx,r11
	add	rcx,r14
	lea	r14,[r9+4h]
	add	rcx,r10
	mov	r10,rcx
	mov	[r14-4h],ecx
	shr	r10,20h
	cmp	rbx,r8
	ja	41A2A0h

l000000000041A2CC:
	mov	[r9+4h],r10d

l000000000041A2D0:
	add	rdi,4h
	cmp	r13,rdx
	ja	41A280h

l000000000041A2D9:
	test	esi,esi
	jle	41A2FFh

l000000000041A2DD:
	mov	r8d,[rbp-4h]
	lea	rdx,[rbp-4h]
	test	r8d,r8d
	jz	41A2FAh

l000000000041A2EA:
	jmp	41A2FFh
000000000041A2EC                                     0F 1F 40 00             ..@.

l000000000041A2F0:
	sub	rdx,4h
	mov	ecx,[rdx]
	test	ecx,ecx
	jnz	41A2FFh

l000000000041A2FA:
	sub	esi,1h
	jnz	41A2F0h

l000000000041A2FF:
	mov	[rax+14h],esi

l000000000041A302:
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	ret

l000000000041A311:
	mov	r12,rdx
	mov	r14,rcx
	jmp	41A21Dh

l000000000041A31C:
	xor	eax,eax
	jmp	41A302h

;; fn000000000041A320: 000000000041A320
;;   Called from:
;;     0000000000416537 (in fn0000000000415960)
;;     0000000000416854 (in fn0000000000415960)
;;     0000000000419056 (in fn00000000004187D0)
;;     00000000004190AC (in fn00000000004187D0)
;;     0000000000419487 (in fn00000000004187D0)
fn000000000041A320 proc
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,28h
	mov	eax,edx
	mov	rbp,rcx
	mov	ebx,edx
	and	eax,3h
	jnz	41A3C0h

l000000000041A338:
	sar	ebx,2h
	mov	rax,rbp
	test	ebx,ebx
	jz	41A38Ch

l000000000041A342:
	mov	rdi,[00000000004ADA80]                                 ; [rip+00093737]
	test	rdi,rdi
	jnz	41A362h

l000000000041A34E:
	jmp	41A40Dh

l000000000041A353:
	sar	ebx,1h
	jz	41A389h

l000000000041A357:
	mov	rsi,[rdi]
	test	rsi,rsi
	jz	41A395h

l000000000041A35F:
	mov	rdi,rsi

l000000000041A362:
	test	bl,1h
	jz	41A353h

l000000000041A367:
	mov	rdx,rdi
	mov	rcx,rbp
	call	41A1F0h
	test	rax,rax
	mov	rsi,rax
	jz	41A3E3h

l000000000041A37A:
	mov	rcx,rbp
	mov	rbp,rsi
	call	41A090h
	sar	ebx,1h
	jnz	41A357h

l000000000041A389:
	mov	rax,rbp

l000000000041A38C:
	add	rsp,28h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret

l000000000041A395:
	mov	ecx,1h
	call	419E60h
	mov	rsi,[rdi]
	test	rsi,rsi
	jz	41A3EEh

l000000000041A3A7:
	cmp	[00000000004AE410],2h                                  ; [rip+00094062]
	jnz	41A35Fh

l000000000041A3B0:
	lea	rcx,[00000000004AE468]                                 ; [rip+000940B1]
	call	[00000000004AF5FC]                                    ; [rip+0009523F]
	jmp	41A35Fh
000000000041A3BF                                              90                .

l000000000041A3C0:
	sub	eax,1h
	lea	rdx,[0000000000490F80]                                 ; [rip+00076BB6]
	xor	r8d,r8d
	cdqe
	mov	edx,[rdx+rax*4]
	call	41A100h
	test	rax,rax
	mov	rbp,rax
	jnz	41A338h

l000000000041A3E3:
	xor	eax,eax

l000000000041A3E5:
	add	rsp,28h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret

l000000000041A3EE:
	mov	rdx,rdi
	mov	rcx,rdi
	call	41A1F0h
	test	rax,rax
	mov	rsi,rax
	mov	[rdi],rax
	jz	41A3E3h

l000000000041A404:
	mov	qword ptr [rax],+0h
	jmp	41A3A7h

l000000000041A40D:
	mov	ecx,1h
	call	419E60h
	mov	rdi,[00000000004ADA80]                                 ; [rip+00093662]
	test	rdi,rdi
	jz	41A442h

l000000000041A423:
	cmp	[00000000004AE410],2h                                  ; [rip+00093FE6]
	jnz	41A362h

l000000000041A430:
	lea	rcx,[00000000004AE468]                                 ; [rip+00094031]
	call	[00000000004AF5FC]                                    ; [rip+000951BF]
	jmp	41A362h

l000000000041A442:
	mov	ecx,1h
	call	419F80h
	test	rax,rax
	mov	rdi,rax
	jz	41A472h

l000000000041A454:
	mov	dword ptr [rax+18h],271h
	mov	dword ptr [rax+14h],1h
	mov	[00000000004ADA80],rax                                 ; [rip+00093617]
	mov	qword ptr [rax],+0h
	jmp	41A423h

l000000000041A472:
	mov	[00000000004ADA80],+0h                                 ; [rip+00093603]
	xor	eax,eax
	jmp	41A3E5h
000000000041A484             66 66 66 2E 0F 1F 84 00 00 00 00 00     fff.........

;; fn000000000041A490: 000000000041A490
;;   Called from:
;;     0000000000415828 (in fn00000000004154B0)
;;     0000000000416202 (in fn0000000000415960)
;;     0000000000416524 (in fn0000000000415960)
;;     000000000041654A (in fn0000000000415960)
;;     000000000041655D (in fn0000000000415960)
;;     000000000041663F (in fn0000000000415960)
;;     0000000000416AC8 (in fn0000000000415960)
;;     0000000000416CE7 (in fn0000000000415960)
;;     0000000000416FF2 (in fn0000000000415960)
;;     000000000041711C (in fn0000000000415960)
;;     0000000000419100 (in fn00000000004187D0)
;;     000000000041911C (in fn00000000004187D0)
;;     000000000041930A (in fn00000000004187D0)
;;     0000000000419934 (in fn00000000004187D0)
;;     00000000004199E1 (in fn00000000004187D0)
;;     0000000000419B61 (in fn00000000004187D0)
;;     000000000041B4EA (in fn000000000041AF50)
fn000000000041A490 proc
	push	r13
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,28h
	mov	rdi,rcx
	mov	ebp,edx
	mov	esi,edx
	mov	r12d,[rdi+14h]
	sar	ebp,5h
	mov	eax,[rdi+0Ch]
	mov	ecx,[rcx+8h]
	add	r12d,ebp
	lea	ebx,[r12+1h]
	cmp	ebx,eax
	jle	41A4C9h

l000000000041A4BC:
	nop	dword ptr [rax+0h]

l000000000041A4C0:
	add	eax,eax
	add	ecx,1h
	cmp	ebx,eax
	jg	41A4C0h

l000000000041A4C9:
	call	419F80h
	test	rax,rax
	mov	r13,rax
	jz	41A59Fh

l000000000041A4DA:
	test	ebp,ebp
	lea	r8,[rax+18h]
	jle	41A597h

l000000000041A4E6:
	sub	ebp,1h
	lea	r9,[r8+rbp*4+4h]
	nop

l000000000041A4F0:
	add	r8,4h
	mov	dword ptr [r8-4h],0h
	cmp	r8,r9
	jnz	41A4F0h

l000000000041A501:
	movsxd	rax,dword ptr [rdi+14h]
	lea	r8,[rdi+18h]
	mov	edx,esi
	and	edx,1Fh
	lea	rbp,[r8+rax*4]
	jz	41A580h

l000000000041A514:
	mov	eax,20h
	xor	r11d,r11d
	sub	eax,edx
	jmp	41A523h

l000000000041A520:
	mov	r9,rsi

l000000000041A523:
	mov	r10d,[r8]
	mov	ecx,edx
	lea	rsi,[r9+4h]
	add	r8,4h
	shl	r10d,cl
	mov	ecx,eax
	or	r10d,r11d
	mov	[rsi-4h],r10d
	mov	r11d,[r8-4h]
	shr	r11d,cl
	cmp	rbp,r8
	ja	41A520h

l000000000041A548:
	add	r12d,2h
	test	r11d,r11d
	mov	[r9+4h],r11d
	cmovnz	ebx,r12d

l000000000041A557:
	sub	ebx,1h
	mov	rcx,rdi
	mov	[r13+14h],ebx
	call	41A090h
	mov	rax,r13

l000000000041A569:
	add	rsp,28h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	ret
000000000041A576                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l000000000041A580:
	add	r8,4h
	mov	edx,[r8-4h]
	add	r9,4h
	cmp	rbp,r8
	mov	[r9-4h],edx
	ja	41A580h

l000000000041A595:
	jmp	41A557h

l000000000041A597:
	mov	r9,r8
	jmp	41A501h

l000000000041A59F:
	xor	eax,eax
	jmp	41A569h
000000000041A5A3          66 66 66 66 2E 0F 1F 84 00 00 00 00 00    ffff.........

;; fn000000000041A5B0: 000000000041A5B0
;;   Called from:
;;     000000000041658D (in fn0000000000415960)
;;     000000000041712A (in fn0000000000415960)
;;     0000000000419173 (in fn00000000004187D0)
;;     000000000041941A (in fn00000000004187D0)
;;     000000000041944E (in fn00000000004187D0)
;;     00000000004194A7 (in fn00000000004187D0)
;;     00000000004198FD (in fn00000000004187D0)
;;     0000000000419942 (in fn00000000004187D0)
;;     0000000000419B6F (in fn00000000004187D0)
;;     0000000000419DCD (in fn0000000000419CE0)
;;     000000000041A60D (in fn000000000041A600)
fn000000000041A5B0 proc
	movsxd	r8,dword ptr [rdx+14h]
	mov	eax,[rcx+14h]
	sub	eax,r8d
	test	eax,eax
	jnz	41A5F2h

l000000000041A5BE:
	shl	r8,2h
	add	rcx,18h
	lea	rax,[rcx+r8]
	lea	rdx,[rdx+r8+18h]
	jmp	41A5D6h

l000000000041A5D1:
	cmp	rcx,rax
	jnc	41A5F0h

l000000000041A5D6:
	sub	rdx,4h
	sub	rax,4h
	mov	r9d,[rdx]
	cmp	[rax],r9d
	jz	41A5D1h

l000000000041A5E6:
	sbb	eax,eax
	or	eax,1h
	ret
000000000041A5EC                                     0F 1F 40 00             ..@.

l000000000041A5F0:
	xor	eax,eax

l000000000041A5F2:
	ret
000000000041A5F4             66 66 66 2E 0F 1F 84 00 00 00 00 00     fff.........

;; fn000000000041A600: 000000000041A600
;;   Called from:
;;     000000000041656B (in fn0000000000415960)
;;     000000000041665E (in fn0000000000415960)
;;     0000000000419428 (in fn00000000004187D0)
fn000000000041A600 proc
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,20h
	mov	rsi,rcx
	mov	rdi,rdx
	call	41A5B0h
	test	eax,eax
	jz	41A700h

l000000000041A61A:
	mov	ebx,0h
	js	41A722h

l000000000041A625:
	mov	ecx,[rsi+8h]
	call	419F80h
	test	rax,rax
	jz	41A732h

l000000000041A636:
	movsxd	rdx,dword ptr [rsi+14h]
	lea	rcx,[rsi+18h]
	mov	[rax+10h],ebx
	lea	r10,[rdi+18h]
	xor	r9d,r9d
	mov	rbx,rdx
	lea	rsi,[rcx+rdx*4]
	movsxd	rdx,dword ptr [rdi+14h]
	lea	rdi,[r10+rdx*4]
	lea	rdx,[rax+18h]
	nop	dword ptr [rax+rax+0h]

l000000000041A660:
	add	rcx,4h
	add	r10,4h
	mov	r11d,[r10-4h]
	mov	r8d,[rcx-4h]
	add	rdx,4h
	sub	r8,r11
	sub	r8,r9
	mov	r9,r8
	mov	r11d,r8d
	mov	[rdx-4h],r8d
	shr	r9,20h
	and	r9d,1h
	cmp	rdi,r10
	ja	41A660h

l000000000041A691:
	cmp	rsi,rcx
	mov	rdi,rdx
	mov	r10,rcx
	jbe	41A6D6h

l000000000041A69C:
	nop	dword ptr [rax+0h]

l000000000041A6A0:
	add	rcx,4h
	mov	r8d,[rcx-4h]
	add	rdx,4h
	sub	r8,r9
	mov	r9,r8
	mov	r11d,r8d
	mov	[rdx-4h],r8d
	shr	r9,20h
	and	r9d,1h
	cmp	rsi,rcx
	ja	41A6A0h

l000000000041A6C6:
	not	r10
	lea	rdx,[r10+rsi]
	shr	rdx,2h
	lea	rdx,[rdi+rdx*4+4h]

l000000000041A6D6:
	sub	rdx,4h
	test	r11d,r11d
	jnz	41A6EDh

l000000000041A6DF:
	nop

l000000000041A6E0:
	sub	rdx,4h
	mov	ecx,[rdx]
	sub	ebx,1h
	test	ecx,ecx
	jz	41A6E0h

l000000000041A6ED:
	mov	[rax+14h],ebx

l000000000041A6F0:
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	ret
000000000041A6F8                         0F 1F 84 00 00 00 00 00         ........

l000000000041A700:
	xor	ecx,ecx
	call	419F80h
	test	rax,rax
	jz	41A732h

l000000000041A70C:
	mov	dword ptr [rax+14h],1h
	mov	dword ptr [rax+18h],0h
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	ret

l000000000041A722:
	mov	rax,rsi
	mov	bl,1h
	mov	rsi,rdi
	mov	rdi,rax
	jmp	41A625h

l000000000041A732:
	xor	eax,eax
	jmp	41A6F0h
000000000041A736                   66 2E 0F 1F 84 00 00 00 00 00       f.........

;; fn000000000041A740: 000000000041A740
;;   Called from:
;;     00000000004189A0 (in fn00000000004187D0)
;;     000000000041AAB7 (in fn000000000041AAA0)
;;     000000000041AACD (in fn000000000041AAA0)
fn000000000041A740 proc
	push	rsi
	push	rbx
	sub	rsp,18h
	movsxd	rax,dword ptr [rcx+14h]
	lea	r10,[rcx+18h]
	mov	ecx,20h
	lea	r9,[r10+rax*4]
	mov	eax,[r9-4h]
	lea	rbx,[r9-4h]
	bsr	r8d,eax
	xor	r8d,1Fh
	sub	ecx,r8d
	cmp	r8d,0Ah
	mov	[rdx],ecx
	jg	41A7C0h

l000000000041A772:
	mov	ecx,0Bh
	mov	r11d,eax
	xor	esi,esi
	sub	ecx,r8d
	shr	r11d,cl
	or	r11d,3FF00000h
	shl	r11,20h
	cmp	r10,rbx
	jnc	41A798h

l000000000041A792:
	mov	esi,[r9-8h]
	shr	esi,cl

l000000000041A798:
	lea	ecx,[r8+15h]
	shl	eax,cl
	mov	edx,eax
	mov	eax,esi
	or	eax,edx
	or	rax,r11

l000000000041A7A7:
	mov	[rsp+8h],rax
	movsd	xmm0,double ptr [rsp+8h]
	add	rsp,18h
	pop	rbx
	pop	rsi
	ret
000000000041A7B9                            0F 1F 80 00 00 00 00          .......

l000000000041A7C0:
	cmp	r10,rbx
	jnc	41A820h

l000000000041A7C5:
	mov	r11d,r8d
	lea	rsi,[r9-8h]
	mov	edx,[r9-8h]
	sub	r11d,0Bh
	jz	41A842h

l000000000041A7D6:
	mov	ebx,2Bh
	mov	ecx,r11d
	sub	ebx,r8d
	shl	eax,cl
	mov	r8d,edx
	mov	ecx,ebx
	shr	r8d,cl
	or	eax,r8d
	xor	r8d,r8d
	or	eax,3FF00000h
	shl	rax,20h
	cmp	r10,rsi
	jnc	41A806h

l000000000041A7FF:
	mov	r8d,[r9-0Ch]
	shr	r8d,cl

l000000000041A806:
	mov	ecx,r11d
	shl	edx,cl
	or	r8d,edx
	mov	rdx,0FFFFFFFF00000000h
	and	rax,rdx
	or	rax,r8
	jmp	41A7A7h

l000000000041A820:
	mov	r11d,r8d
	sub	r11d,0Bh
	jz	41A840h

l000000000041A829:
	mov	ecx,r11d
	xor	r8d,r8d
	xor	edx,edx
	shl	eax,cl
	or	eax,3FF00000h
	shl	rax,20h
	jmp	41A806h
000000000041A83E                                           66 90               f.

l000000000041A840:
	xor	edx,edx

l000000000041A842:
	or	eax,3FF00000h
	shl	rax,20h
	or	rax,rdx
	jmp	41A7A7h
000000000041A853          66 66 66 66 2E 0F 1F 84 00 00 00 00 00    ffff.........

;; fn000000000041A860: 000000000041A860
;;   Called from:
;;     00000000004154D7 (in fn00000000004154B0)
;;     0000000000416153 (in fn0000000000415960)
;;     0000000000416623 (in fn0000000000415960)
fn000000000041A860 proc
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,20h
	mov	ecx,1h
	movq	rbx,xmm0
	mov	rdi,rdx
	mov	rsi,r8
	call	419F80h
	test	rax,rax
	jz	41A965h

l000000000041A885:
	mov	r9,rbx
	shr	r9,20h
	mov	r10d,r9d
	and	r9d,7FFFFFFFh
	and	r10d,0FFFFFh
	shr	r9d,14h
	mov	edx,r10d
	or	edx,100000h
	test	r9d,r9d
	cmovnz	r10d,edx

l000000000041A8B1:
	test	ebx,ebx
	jnz	41A8F4h

l000000000041A8B5:
	xor	ecx,ecx
	mov	dword ptr [rax+14h],1h
	mov	edx,1h
	tzcnt	ecx,r10d
	shr	r10d,cl
	test	r9d,r9d
	lea	r11d,[rcx+20h]
	mov	[rax+18h],r10d
	jz	41A933h

l000000000041A8D8:
	lea	edx,[r11+r9-433h]
	mov	[rdi],edx
	mov	edx,35h
	sub	edx,r11d
	mov	[rsi],edx

l000000000041A8EC:
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	ret

l000000000041A8F4:
	xor	r11d,r11d
	tzcnt	r11d,ebx
	mov	ecx,r11d
	shr	ebx,cl
	test	r11d,r11d
	jz	41A960h

l000000000041A906:
	mov	ecx,20h
	mov	edx,r10d
	sub	ecx,r11d
	shl	edx,cl
	mov	ecx,r11d
	or	ebx,edx
	shr	r10d,cl
	mov	[rax+18h],ebx

l000000000041A91E:
	cmp	r10d,1h
	mov	[rax+1Ch],r10d
	sbb	edx,edx
	add	edx,2h
	test	r9d,r9d
	mov	[rax+14h],edx
	jnz	41A8D8h

l000000000041A933:
	movsxd	rcx,edx
	shl	edx,5h
	sub	r11d,432h
	bsr	ecx,[rax+rcx*4+14h]
	mov	[rdi],r11d
	xor	ecx,1Fh
	sub	edx,ecx
	mov	[rsi],edx
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	ret
000000000041A957                      66 0F 1F 84 00 00 00 00 00        f........

l000000000041A960:
	mov	[rax+18h],ebx
	jmp	41A91Eh

l000000000041A965:
	xor	eax,eax
	jmp	41A8ECh
000000000041A969                            0F 1F 80 00 00 00 00          .......

;; fn000000000041A970: 000000000041A970
fn000000000041A970 proc
	mov	rax,rcx
	lea	rcx,[rdx+1h]
	movzx	edx,byte ptr [rdx]
	test	dl,dl
	mov	[rax],dl
	jz	41A992h

l000000000041A980:
	add	rcx,1h
	movzx	edx,byte ptr [rcx-1h]
	add	rax,1h
	test	dl,dl
	mov	[rax],dl
	jnz	41A980h

l000000000041A992:
	ret
000000000041A994             90 90 90 90 90 90 90 90 90 90 90 90     ............

;; fn000000000041A9A0: 000000000041A9A0
;;   Called from:
;;     00000000004164C3 (in fn0000000000415960)
fn000000000041A9A0 proc
	push	r13
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,28h
	mov	rsi,rcx
	lea	ecx,[r8+8h]
	mov	ebp,edx
	mov	edx,38E38E39h
	mov	edi,r8d
	mov	ebx,r9d
	mov	eax,ecx
	sar	ecx,1Fh
	imul	edx
	sar	edx,1h
	sub	edx,ecx
	cmp	edx,1h
	jle	41AA94h

l000000000041A9D4:
	mov	eax,1h
	xor	ecx,ecx
	nop	dword ptr [rax+rax+0h]

l000000000041A9E0:
	add	eax,eax
	add	ecx,1h
	cmp	edx,eax
	jg	41A9E0h

l000000000041A9E9:
	call	419F80h
	cmp	ebp,9h
	mov	[rax+18h],ebx
	mov	dword ptr [rax+14h],1h
	jle	41AA80h

l000000000041AA01:
	lea	rbx,[rsi+9h]
	lea	r12d,[rbp-0Ah]
	lea	r13,[rsi+0Ah]
	mov	rsi,rbx

l000000000041AA11:
	add	rsi,1h
	movsx	r8d,byte ptr [rsi-1h]
	mov	edx,0Ah
	mov	rcx,rax
	sub	r8d,30h
	call	41A100h
	cmp	rsi,r13
	jnz	41AA11h

l000000000041AA30:
	movsxd	rdx,dword ptr [rsp+80h]
	lea	r9,[r12+rdx+1h]
	add	rbx,r9

l000000000041AA40:
	cmp	edi,ebp
	jle	41AA6Fh

l000000000041AA44:
	sub	edi,1h
	sub	edi,ebp
	lea	rsi,[rbx+rdi+1h]
	nop

l000000000041AA50:
	add	rbx,1h
	movsx	r8d,byte ptr [rbx-1h]
	mov	edx,0Ah
	mov	rcx,rax
	sub	r8d,30h
	call	41A100h
	cmp	rbx,rsi
	jnz	41AA50h

l000000000041AA6F:
	add	rsp,28h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	ret
000000000041AA7C                                     0F 1F 40 00             ..@.

l000000000041AA80:
	movsxd	rdx,dword ptr [rsp+80h]
	mov	ebp,9h
	lea	rbx,[rsi+rdx+9h]
	jmp	41AA40h

l000000000041AA94:
	xor	ecx,ecx
	jmp	41A9E9h
000000000041AA9B                                  0F 1F 44 00 00            ..D..

;; fn000000000041AAA0: 000000000041AAA0
;;   Called from:
;;     00000000004168B4 (in fn0000000000415960)
fn000000000041AAA0 proc
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,50h
	movaps	[rsp+40h],xmm6
	mov	rsi,rdx
	lea	rdx,[rsp+38h]
	mov	rdi,rcx
	call	41A740h
	lea	rdx,[rsp+3Ch]
	mov	rcx,rsi
	movq	rbx,xmm0
	movapd	xmm6,xmm0
	call	41A740h
	mov	eax,[rsp+38h]
	sub	eax,[rsp+3Ch]
	movq	rcx,xmm0
	mov	r8d,eax
	mov	eax,[rdi+14h]
	sub	eax,[rsi+14h]
	shl	eax,5h
	add	eax,r8d
	test	eax,eax
	jle	41AB30h

l000000000041AAF2:
	movq	rdx,xmm6
	shl	eax,14h
	mov	ebx,ebx
	shr	rdx,20h
	add	eax,edx
	shl	rax,20h
	or	rax,rbx
	mov	[rsp+28h],rax
	movsd	xmm6,double ptr [rsp+28h]

l000000000041AB14:
	divsd	xmm6,xmm0
	movapd	xmm0,xmm6
	movaps	xmm6,[rsp+40h]
	add	rsp,50h
	pop	rbx
	pop	rsi
	pop	rdi
	ret
000000000041AB29                            0F 1F 80 00 00 00 00          .......

l000000000041AB30:
	movq	rdx,xmm0
	shl	eax,14h
	shr	rdx,20h
	mov	esi,edx
	sub	esi,eax
	mov	rax,rsi
	shl	rax,20h
	mov	rdx,rax
	mov	eax,ecx
	or	rax,rdx
	mov	[rsp+28h],rax
	movsd	xmm0,double ptr [rsp+28h]
	jmp	41AB14h
000000000041AB5C                                     0F 1F 40 00             ..@.

;; fn000000000041AB60: 000000000041AB60
;;   Called from:
;;     0000000000415CC3 (in fn0000000000415960)
;;     0000000000417041 (in fn0000000000415960)
;;     0000000000417061 (in fn0000000000415960)
fn000000000041AB60 proc
	mov	r8,[rcx]
	jmp	41AB7Eh

l000000000041AB65:
	movsx	eax,byte ptr [r8]
	lea	r11d,[rax-41h]
	lea	r10d,[rax+20h]
	cmp	r11d,19h
	cmovbe	eax,r10d

l000000000041AB79:
	cmp	eax,r9d
	jnz	41ABA0h

l000000000041AB7E:
	add	rdx,1h
	movsx	r9d,byte ptr [rdx-1h]
	add	r8,1h
	test	r9d,r9d
	jnz	41AB65h

l000000000041AB90:
	mov	[rcx],r8
	mov	eax,1h
	ret
000000000041AB99                            0F 1F 80 00 00 00 00          .......

l000000000041ABA0:
	xor	eax,eax
	ret
000000000041ABA3          66 66 66 66 2E 0F 1F 84 00 00 00 00 00    ffff.........

;; fn000000000041ABB0: 000000000041ABB0
;;   Called from:
;;     0000000000415638 (in fn00000000004154B0)
;;     0000000000415A88 (in fn0000000000415960)
fn000000000041ABB0 proc
	sub	edx,1h
	lea	rax,[r8+18h]
	sar	edx,5h
	movsxd	rdx,edx
	lea	r11,[rcx+rdx*4+4h]
	movsxd	rdx,dword ptr [r8+14h]
	lea	r10,[rax+rdx*4]
	cmp	rax,r10
	jnc	41AC0Bh

l000000000041ABCF:
	mov	rdx,rcx

l000000000041ABD2:
	add	rax,4h
	mov	r9d,[rax-4h]
	add	rdx,4h
	cmp	r10,rax
	mov	[rdx-4h],r9d
	ja	41ABD2h

l000000000041ABE7:
	sub	r10,r8
	lea	rax,[r10-19h]
	shr	rax,2h
	lea	rcx,[rcx+rax*4+4h]
	cmp	r11,rcx
	jbe	41AC10h

l000000000041ABFC:
	nop	dword ptr [rax+0h]

l000000000041AC00:
	add	rcx,4h
	mov	dword ptr [rcx-4h],0h

l000000000041AC0B:
	cmp	r11,rcx
	ja	41AC00h

l000000000041AC10:
	ret
000000000041AC12       66 66 66 66 66 2E 0F 1F 84 00 00 00 00 00   fffff.........

;; fn000000000041AC20: 000000000041AC20
;;   Called from:
;;     0000000000415556 (in fn00000000004154B0)
;;     00000000004155CA (in fn00000000004154B0)
;;     0000000000415714 (in fn00000000004154B0)
;;     00000000004157EA (in fn00000000004154B0)
;;     000000000041B513 (in fn000000000041AF50)
;;     000000000041B545 (in fn000000000041AF50)
;;     000000000041B5DB (in fn000000000041AF50)
;;     000000000041B7C5 (in fn000000000041AF50)
fn000000000041AC20 proc
	movsxd	rax,dword ptr [rcx+14h]
	mov	r9d,edx
	lea	r8,[rcx+18h]
	sar	r9d,5h
	cmp	eax,r9d
	jge	41AC61h

l000000000041AC34:
	lea	r9,[r8+rax*4]

l000000000041AC38:
	cmp	r8,r9
	jnc	41ACA6h

l000000000041AC3D:
	mov	eax,[r9-4h]
	lea	rdx,[r9-4h]
	test	eax,eax
	jz	41AC5Ah

l000000000041AC49:
	jmp	41ACA0h
000000000041AC4B                                  0F 1F 44 00 00            ..D..

l000000000041AC50:
	sub	rdx,4h
	mov	ecx,[rdx]
	test	ecx,ecx
	jnz	41ACA0h

l000000000041AC5A:
	cmp	r8,rdx
	jc	41AC50h

l000000000041AC5F:
	ret

l000000000041AC61:
	jle	41AC90h

l000000000041AC63:
	mov	ecx,edx
	movsxd	r9,r9d
	and	ecx,1Fh
	lea	r9,[r8+r9*4]
	jz	41AC38h

l000000000041AC71:
	mov	r10d,[r9]
	mov	eax,r10d
	shr	eax,cl
	shl	eax,cl
	mov	edx,eax
	mov	eax,1h
	cmp	edx,r10d
	jz	41AC38h

l000000000041AC87:
	ret
000000000041AC89                            0F 1F 80 00 00 00 00          .......

l000000000041AC90:
	movsxd	r9,r9d
	lea	r9,[r8+r9*4]
	jmp	41AC38h
000000000041AC99                            0F 1F 80 00 00 00 00          .......

l000000000041ACA0:
	mov	eax,1h
	ret

l000000000041ACA6:
	xor	eax,eax
	ret
000000000041ACA9                            90 90 90 90 90 90 90          .......

;; fn000000000041ACB0: 000000000041ACB0
;;   Called from:
;;     0000000000415565 (in fn00000000004154B0)
;;     00000000004155B2 (in fn00000000004154B0)
;;     00000000004155E6 (in fn00000000004154B0)
;;     000000000041566F (in fn00000000004154B0)
;;     0000000000415730 (in fn00000000004154B0)
;;     000000000041577C (in fn00000000004154B0)
;;     000000000041618B (in fn0000000000415960)
;;     00000000004163FF (in fn0000000000415960)
;;     0000000000416894 (in fn0000000000415960)
;;     0000000000416D15 (in fn0000000000415960)
;;     0000000000416D6B (in fn0000000000415960)
;;     00000000004172E9 (in fn0000000000415960)
;;     0000000000418DB5 (in fn00000000004187D0)
;;     000000000041B55F (in fn000000000041AF50)
;;     000000000041B607 (in fn000000000041AF50)
;;     000000000041B689 (in fn000000000041AF50)
fn000000000041ACB0 proc
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	mov	rsi,rcx
	lea	r10,[rcx+18h]
	movsxd	rcx,dword ptr [rcx+14h]
	mov	eax,edx
	sar	eax,5h
	cmp	eax,ecx
	jge	41AD50h

l000000000041ACCC:
	cdqe
	and	edx,1Fh
	lea	rbx,[r10+rcx*4]
	lea	rdi,[r10+rax*4]
	jz	41AD63h

l000000000041ACDF:
	mov	r9d,[rdi]
	lea	r8,[rdi+4h]
	mov	ebp,20h
	mov	ecx,edx
	sub	ebp,edx
	shr	r9d,cl
	cmp	rbx,r8
	jbe	41ADA8h

l000000000041ACFB:
	mov	r11,r10
	nop

l000000000041AD00:
	mov	eax,[r8]
	mov	ecx,ebp
	add	r11,4h
	add	r8,4h
	shl	eax,cl
	mov	ecx,edx
	or	eax,r9d
	mov	[r11-4h],eax
	mov	r9d,[r8-4h]
	shr	r9d,cl
	cmp	rbx,r8
	ja	41AD00h

l000000000041AD24:
	sub	rbx,rdi
	lea	rax,[rbx-5h]
	shr	rax,2h
	lea	rax,[r10+rax*4+4h]

l000000000041AD34:
	test	r9d,r9d
	mov	[rax],r9d
	jz	41AD40h

l000000000041AD3C:
	add	rax,4h

l000000000041AD40:
	sub	rax,r10
	shr	rax,2h
	jmp	41AD9Ch
000000000041AD49                            0F 1F 80 00 00 00 00          .......

l000000000041AD50:
	mov	dword ptr [rsi+14h],0h

l000000000041AD57:
	mov	dword ptr [rsi+18h],0h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret

l000000000041AD63:
	cmp	rbx,rdi
	mov	rdx,r10
	mov	rax,rdi
	jbe	41AD50h

l000000000041AD6E:
	nop

l000000000041AD70:
	add	rax,4h
	mov	r8d,[rax-4h]
	add	rdx,4h
	cmp	rbx,rax
	mov	[rdx-4h],r8d
	ja	41AD70h

l000000000041AD85:
	not	rdi
	lea	rax,[rdi+rbx]
	shr	rax,2h
	lea	rax,[0004h+rax*4]
	shr	rax,2h

l000000000041AD9C:
	test	eax,eax
	mov	[rsi+14h],eax
	jz	41AD57h

l000000000041ADA3:
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret

l000000000041ADA8:
	mov	rax,r10
	jmp	41AD34h
000000000041ADAD                                        0F 1F 00              ...

;; fn000000000041ADB0: 000000000041ADB0
;;   Called from:
;;     0000000000416AFD (in fn0000000000415960)
;;     00000000004188C4 (in fn00000000004187D0)
fn000000000041ADB0 proc
	movsxd	rax,dword ptr [rcx+14h]
	lea	rdx,[rcx+18h]
	lea	r8,[rdx+rax*4]
	cmp	rdx,r8
	jnc	41ADEBh

l000000000041ADC1:
	mov	ecx,[rcx+18h]
	xor	eax,eax
	test	ecx,ecx
	jz	41ADD6h

l000000000041ADCA:
	jmp	41ADE4h
000000000041ADCC                                     0F 1F 40 00             ..@.

l000000000041ADD0:
	mov	ecx,[rdx]
	test	ecx,ecx
	jnz	41ADE4h

l000000000041ADD6:
	add	rdx,4h
	add	eax,20h
	cmp	r8,rdx
	ja	41ADD0h

l000000000041ADE2:
	ret

l000000000041ADE4:
	tzcnt	ecx,ecx
	add	eax,ecx
	ret

l000000000041ADEB:
	xor	eax,eax
	ret
000000000041ADEE                                           90 90               ..

;; fn000000000041ADF0: 000000000041ADF0
;;   Called from:
;;     0000000000416A40 (in fn0000000000415960)
fn000000000041ADF0 proc
	push	r13
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,28h
	mov	eax,[rdx+14h]
	cmp	[rcx+14h],eax
	mov	rsi,rcx
	mov	rdi,rdx
	jge	41AE10h

l000000000041AE0A:
	mov	rsi,rdx
	mov	rdi,rcx

l000000000041AE10:
	mov	ecx,[rsi+8h]
	xor	r12d,r12d
	call	419F80h
	movsxd	rcx,dword ptr [rsi+14h]
	mov	rbx,rax
	lea	r11,[rdi+18h]
	lea	r8,[rbx+18h]
	mov	[rax+14h],ecx
	movsxd	rdx,dword ptr [rdi+14h]
	lea	rax,[rsi+18h]
	lea	rdi,[r8+rdx*4]
	mov	rbp,rdx
	nop	dword ptr [rax+0h]

l000000000041AE40:
	mov	r10d,[rax]
	mov	r9d,[r11]
	add	r8,4h
	add	rax,4h
	add	r11,4h
	movzx	r13d,r9w
	movzx	edx,r10w
	shr	r9d,10h
	add	edx,r13d
	shr	r10d,10h
	add	edx,r12d
	add	r10d,r9d
	mov	r9d,edx
	mov	[r8-4h],dx
	and	r9d,10000h
	shr	r9d,10h
	add	r9d,r10d
	mov	r12d,r9d
	mov	[r8-2h],r9w
	and	r12d,10000h
	shr	r12d,10h
	cmp	rdi,r8
	ja	41AE40h

l000000000041AE99:
	mov	edx,[rsi+14h]
	sub	edx,ebp
	movsxd	rdx,edx
	lea	r11,[rdi+rdx*4]
	cmp	r11,r8
	jbe	41AEEBh

l000000000041AEAA:
	nop	word ptr [rax+rax+0h]

l000000000041AEB0:
	mov	r9d,[rax]
	add	r8,4h
	add	rax,4h
	movzx	r10d,r9w
	shr	r9d,10h
	add	r10d,r12d
	mov	edx,r10d
	mov	[r8-4h],r10w
	and	edx,10000h
	shr	edx,10h
	add	edx,r9d
	mov	[r8-2h],dx
	mov	r12d,edx
	shr	r12d,10h
	cmp	r11,r8
	ja	41AEB0h

l000000000041AEEB:
	test	r12d,r12d
	jz	41AF03h

l000000000041AEF0:
	cmp	ecx,[rbx+0Ch]
	jz	41AF13h

l000000000041AEF5:
	lea	eax,[rcx+1h]
	mov	[rbx+14h],eax
	mov	dword ptr [rbx+rcx*4+18h],1h

l000000000041AF03:
	mov	rax,rbx
	add	rsp,28h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	ret

l000000000041AF13:
	mov	eax,[rbx+8h]
	lea	ecx,[rax+1h]
	call	419F80h
	mov	rsi,rax
	lea	rcx,[rax+10h]
	movsxd	rax,dword ptr [rbx+14h]
	lea	rdx,[rbx+10h]
	lea	r8,[0008h+rax*4]
	call	41BCC0h
	mov	rcx,rbx
	mov	rbx,rsi
	call	41A090h
	movsxd	rcx,dword ptr [rsi+14h]
	jmp	41AEF5h
000000000041AF4B                                  90 90 90 90 90            .....

;; fn000000000041AF50: 000000000041AF50
;;   Called from:
;;     0000000000416DE7 (in fn0000000000415960)
fn000000000041AF50 proc
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,28h
	mov	r14,rcx
	mov	r13,rdx
	mov	[rsp+80h],r8
	mov	[rsp+88h],r9
	call	41BF08h
	mov	rdi,[0000000000491ED0]                                 ; [rip+00076F4E]
	mov	rsi,[rax]
	cmp	byte ptr [rdi+30h],0h
	jz	41B3B0h

l000000000041AF8F:
	mov	rax,[rsp+88h]
	xor	r8d,r8d
	mov	qword ptr [rax],+0h
	mov	rbx,[r14]
	movzx	edx,byte ptr [rbx+2h]
	lea	rax,[rbx+3h]
	add	rbx,2h
	cmp	dl,30h
	jnz	41AFC9h

l000000000041AFB5:
	mov	rbx,rax
	add	rax,1h
	movzx	edx,byte ptr [rax-1h]
	add	r8d,1h
	cmp	dl,30h
	jz	41AFB5h

l000000000041AFC9:
	cmp	byte ptr [rdi+rdx],0h
	jnz	41B120h

l000000000041AFD3:
	movzx	r9d,byte ptr [rsi]
	test	r9b,r9b
	jz	41B61Ah

l000000000041AFE0:
	movzx	edx,byte ptr [rbx]
	cmp	r9b,dl
	jnz	41B3C3h

l000000000041AFEC:
	mov	eax,1h
	jmp	41B001h

l000000000041AFF3:
	add	rax,1h
	cmp	dl,[rbx+rax-1h]
	jnz	41B3C0h

l000000000041B001:
	movzx	edx,byte ptr [rsi+rax]
	test	dl,dl
	jnz	41AFF3h

l000000000041B009:
	add	rax,rbx
	movzx	ecx,byte ptr [rax]
	movzx	r10d,byte ptr [rdi+rcx]
	mov	rdx,rcx
	test	r10b,r10b
	jnz	41B4A0h

l000000000041B020:
	cmp	dl,50h
	jz	41B2D0h

l000000000041B029:
	cmp	dl,70h
	jz	41B2D0h

l000000000041B032:
	mov	rbp,rax
	mov	r11d,1h
	xor	r12d,r12d
	xor	r15d,r15d
	xor	r10d,r10d

l000000000041B044:
	test	r8d,r8d
	jnz	41B04Dh

l000000000041B049:
	lea	rax,[rbx-1h]

l000000000041B04D:
	test	r11d,r11d
	mov	[r14],rax
	jnz	41B380h

l000000000041B059:
	test	r10d,r10d
	jz	41B190h

l000000000041B062:
	test	r15d,r15d
	mov	eax,[r13+0Ch]
	jnz	41B410h

l000000000041B06F:
	cmp	eax,2h
	jz	41B6B8h

l000000000041B078:
	cmp	eax,3h
	jz	41B6A2h

l000000000041B081:
	cmp	eax,1h
	jz	41B488h

l000000000041B08A:
	mov	esi,[r13+0h]
	mov	ebx,esi
	and	esi,1Fh
	sar	ebx,5h
	cmp	esi,1h
	mov	edi,ebx
	sbb	edi,0FFh
	xor	ecx,ecx
	mov	eax,edi
	sar	eax,1h
	jz	41B0B7h

l000000000041B0A6:
	nop	word ptr cs:[rax+rax+0h]

l000000000041B0B0:
	add	ecx,1h
	sar	eax,1h
	jnz	41B0B0h

l000000000041B0B7:
	call	419F80h
	mov	rcx,[rsp+88h]
	test	ebx,ebx
	mov	[rcx],rax
	mov	[rax+14h],edi
	jle	41B7D8h

l000000000041B0D2:
	lea	ecx,[rbx-1h]
	lea	rdx,[rax+18h]
	lea	rcx,[rax+rcx*4+1Ch]
	nop

l000000000041B0E0:
	mov	dword ptr [rdx],0FFFFFFFFh
	add	rdx,4h
	cmp	rdx,rcx
	jnz	41B0E0h

l000000000041B0EF:
	mov	edx,ebx

l000000000041B0F1:
	cmp	edi,ebx
	jle	41B108h

l000000000041B0F5:
	movsxd	r8,edx
	mov	edx,20h
	mov	ecx,edx
	sub	ecx,esi
	sar	edx,cl
	mov	[rax+r8*4+18h],edx

l000000000041B108:
	mov	eax,[r13+4h]
	mov	rdi,[rsp+80h]
	mov	[rdi],eax
	mov	eax,11h
	jmp	41B382h

l000000000041B120:
	movzx	eax,byte ptr [rbx]
	movzx	r9d,byte ptr [rsi]
	add	r8d,1h
	xor	r11d,r11d
	xor	r12d,r12d
	movzx	r10d,byte ptr [rdi+rax]
	mov	rdx,rax

l000000000041B139:
	test	r10b,r10b
	mov	rax,rbx
	jz	41B151h

l000000000041B141:
	add	rax,1h
	movzx	ecx,byte ptr [rax]
	cmp	byte ptr [rdi+rcx],0h
	mov	rdx,rcx
	jnz	41B141h

l000000000041B151:
	cmp	dl,r9b
	jz	41B3D0h

l000000000041B15A:
	test	r12,r12
	movzx	edx,byte ptr [rax]
	jz	41B169h

l000000000041B162:
	sub	r12d,eax
	shl	r12d,2h

l000000000041B169:
	cmp	dl,50h
	jz	41B2D9h

l000000000041B172:
	cmp	dl,70h
	jz	41B2D9h

l000000000041B17B:
	test	r11d,r11d
	mov	[r14],rax
	mov	rbp,rax
	jnz	41B380h

l000000000041B18A:
	nop	word ptr [rax+rax+0h]

l000000000041B190:
	mov	rax,rbp
	xor	ecx,ecx
	sub	rax,rbx
	sub	eax,1h
	cmp	eax,7h
	jle	41B1AAh

l000000000041B1A0:
	sar	eax,1h
	add	ecx,1h
	cmp	eax,7h
	jg	41B1A0h

l000000000041B1AA:
	call	419F80h
	cmp	byte ptr [rsi+1h],0h
	mov	r14,rax
	lea	r15,[rax+18h]
	jz	41B6CEh

l000000000041B1C0:
	mov	edx,1h
	jmp	41B1D3h
000000000041B1C7                      66 0F 1F 84 00 00 00 00 00        f........

l000000000041B1D0:
	mov	rdx,rax

l000000000041B1D3:
	cmp	byte ptr [rsi+rdx+1h],0h
	lea	rax,[rdx+1h]
	jnz	41B1D0h

l000000000041B1DE:
	cmp	rbx,rbp
	jnc	41B6D5h

l000000000041B1E7:
	add	rsi,rdx
	mov	rax,r15
	xor	r9d,r9d
	xor	r8d,r8d
	jmp	41B221h

l000000000041B1F5:
	cmp	r8d,20h
	jz	41B393h

l000000000041B1FF:
	movzx	r10d,cl
	mov	ecx,r8d
	add	r8d,4h

l000000000041B20A:
	movzx	r10d,byte ptr [rdi+r10]
	mov	rbp,r11
	and	r10d,0Fh
	shl	r10d,cl
	or	r9d,r10d
	cmp	rbx,rbp
	jnc	41B238h

l000000000041B221:
	movzx	ecx,byte ptr [rbp-1h]
	lea	r11,[rbp-1h]
	cmp	cl,[rsi]
	jnz	41B1F5h

l000000000041B22D:
	sub	r11,rdx
	mov	rbp,r11
	cmp	rbx,rbp
	jc	41B221h

l000000000041B238:
	bsr	edx,r9d
	xor	edx,1Fh

l000000000041B23F:
	mov	[rax],r9d
	add	rax,4h
	mov	esi,[r13+0h]
	sub	rax,r15
	sar	rax,2h
	mov	[r14+14h],eax
	shl	eax,5h
	sub	eax,edx
	cmp	eax,esi
	jg	41B508h

l000000000041B262:
	mov	edi,0h
	jl	41B4DEh

l000000000041B26D:
	cmp	r12d,[r13+8h]
	jg	41B480h

l000000000041B277:
	mov	eax,[r13+4h]
	cmp	r12d,eax
	jge	41B569h

l000000000041B284:
	mov	ebx,eax
	sub	ebx,r12d
	cmp	esi,ebx
	jg	41B5C7h

l000000000041B291:
	mov	edx,[r13+0Ch]
	cmp	edx,2h
	jz	41B7A2h

l000000000041B29E:
	cmp	edx,3h
	jz	41B77Fh

l000000000041B2A7:
	cmp	edx,1h
	jz	41B7B2h

l000000000041B2B0:
	mov	rcx,r14
	call	41A090h

l000000000041B2B8:
	call	41BDC0h
	mov	dword ptr [rax],22h
	mov	eax,50h
	jmp	41B382h
000000000041B2CD                                        0F 1F 00              ...

l000000000041B2D0:
	xor	r12d,r12d
	mov	r11d,1h

l000000000041B2D9:
	movzx	edx,byte ptr [rax+1h]
	cmp	dl,2Bh
	jz	41B500h

l000000000041B2E6:
	cmp	dl,2Dh
	jz	41B3E1h

l000000000041B2EF:
	movzx	edx,byte ptr [rdi+rdx]
	xor	r15d,r15d
	lea	r9,[rax+1h]
	lea	ecx,[rdx-1h]
	cmp	cl,18h
	ja	41B3FFh

l000000000041B306:
	lea	rcx,[r9+1h]
	movzx	r9d,byte ptr [r9+1h]
	sub	edx,10h
	xor	r10d,r10d
	movzx	ebp,byte ptr [rdi+r9]
	mov	r9d,ebp
	sub	r9d,1h
	cmp	r9b,18h
	ja	41B361h

l000000000041B327:
	nop	word ptr [rax+rax+0h]

l000000000041B330:
	test	edx,0F8000000h
	mov	r9d,1h
	lea	edx,[rdx+rdx*4]
	cmovnz	r10d,r9d

l000000000041B343:
	add	rcx,1h
	movzx	r9d,byte ptr [rcx]
	lea	edx,[rbp+rdx*2-10h]
	movzx	ebp,byte ptr [rdi+r9]
	mov	r9d,ebp
	sub	r9d,1h
	cmp	r9b,18h
	jbe	41B330h

l000000000041B361:
	mov	r9d,r15d
	mov	rbp,rax
	mov	rax,rcx
	neg	r9d
	xor	edx,r9d
	add	edx,r15d
	add	r12d,edx
	jmp	41B044h
000000000041B37B                                  0F 1F 44 00 00            ..D..

l000000000041B380:
	xor	eax,eax

l000000000041B382:
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

l000000000041B393:
	mov	[rax],r9d
	mov	r8d,4h
	movzx	r10d,byte ptr [rbp-1h]
	add	rax,4h
	xor	r9d,r9d
	xor	ecx,ecx
	jmp	41B20Ah
000000000041B3AF                                              90                .

l000000000041B3B0:
	call	41BBE0h
	jmp	41AF8Fh
000000000041B3BA                               66 0F 1F 44 00 00           f..D..

l000000000041B3C0:
	mov	edx,r9d

l000000000041B3C3:
	mov	rax,rbx
	jmp	41B020h
000000000041B3CB                                  0F 1F 44 00 00            ..D..

l000000000041B3D0:
	test	r12,r12
	jz	41B6E5h

l000000000041B3D9:
	movzx	edx,byte ptr [rax]
	jmp	41B162h

l000000000041B3E1:
	mov	r15d,1h

l000000000041B3E7:
	movzx	edx,byte ptr [rax+2h]
	lea	r9,[rax+2h]
	movzx	edx,byte ptr [rdi+rdx]
	lea	ecx,[rdx-1h]
	cmp	cl,18h
	jbe	41B306h

l000000000041B3FF:
	mov	rbp,rax
	xor	r10d,r10d
	jmp	41B044h
000000000041B40A                               66 0F 1F 44 00 00           f..D..

l000000000041B410:
	cmp	eax,2h
	jz	41B5B1h

l000000000041B419:
	cmp	eax,3h
	jnz	41B2B8h

l000000000041B422:
	mov	r10d,[rsp+90h]
	test	r10d,r10d
	jz	41B2B8h

l000000000041B433:
	xor	ecx,ecx
	call	419F80h
	mov	r14,rax
	mov	dword ptr [rax+14h],1h
	mov	dword ptr [rax+18h],1h
	mov	eax,[r13+4h]

l000000000041B44F:
	mov	rdi,[rsp+88h]
	mov	[rdi],r14
	mov	rdi,[rsp+80h]
	mov	[rdi],eax
	call	41BDC0h
	mov	dword ptr [rax],22h
	mov	eax,62h
	jmp	41B382h
000000000041B479                            0F 1F 80 00 00 00 00          .......

l000000000041B480:
	mov	rcx,r14
	call	41A090h

l000000000041B488:
	call	41BDC0h
	mov	dword ptr [rax],22h
	mov	eax,0A3h
	jmp	41B382h
000000000041B49D                                        0F 1F 00              ...

l000000000041B4A0:
	cmp	cl,30h
	mov	rbx,rax
	jnz	41B4C6h

l000000000041B4A8:
	nop	dword ptr [rax+rax+0h]

l000000000041B4B0:
	add	rbx,1h
	movzx	ecx,byte ptr [rbx]
	cmp	cl,30h
	jz	41B4B0h

l000000000041B4BC:
	movzx	edx,cl
	movzx	r10d,byte ptr [rdi+rdx]
	mov	edx,ecx

l000000000041B4C6:
	xor	r11d,r11d
	test	r10b,r10b
	mov	r12,rax
	setz	r11b
	mov	r8d,1h
	jmp	41B139h

l000000000041B4DE:
	mov	ebx,esi
	mov	rcx,r14
	sub	ebx,eax
	mov	edx,ebx
	sub	r12d,ebx
	call	41A490h
	mov	r14,rax
	lea	r15,[rax+18h]
	jmp	41B26Dh
000000000041B4FB                                  0F 1F 44 00 00            ..D..

l000000000041B500:
	xor	r15d,r15d
	jmp	41B3E7h

l000000000041B508:
	mov	ebx,eax
	mov	rcx,r14
	xor	edi,edi
	sub	ebx,esi
	mov	edx,ebx
	call	41AC20h
	test	eax,eax
	jz	41B557h

l000000000041B51C:
	lea	ecx,[rbx-1h]
	mov	r8d,1h
	mov	dil,1h
	mov	eax,ecx
	shl	r8d,cl
	sar	eax,5h
	cdqe
	test	[r15+rax*4],r8d
	jz	41B557h

l000000000041B538:
	test	ecx,ecx
	jle	41B74Fh

l000000000041B540:
	mov	edx,ecx
	mov	rcx,r14
	call	41AC20h
	test	eax,eax
	jz	41B74Fh

l000000000041B552:
	mov	edi,3h

l000000000041B557:
	mov	edx,ebx
	mov	rcx,r14
	add	r12d,ebx
	call	41ACB0h
	jmp	41B26Dh

l000000000041B569:
	mov	ebx,1h

l000000000041B56E:
	test	edi,edi
	jz	41B594h

l000000000041B572:
	mov	eax,[r13+0Ch]
	cmp	eax,2h
	jz	41B621h

l000000000041B57F:
	cmp	eax,3h
	jz	41B634h

l000000000041B588:
	cmp	eax,1h
	jz	41B759h

l000000000041B591:
	or	ebx,10h

l000000000041B594:
	mov	rax,[rsp+88h]
	mov	[rax],r14
	mov	rax,[rsp+80h]
	mov	[rax],r12d
	mov	eax,ebx
	jmp	41B382h

l000000000041B5B1:
	mov	r11d,[rsp+90h]
	test	r11d,r11d
	jnz	41B2B8h

l000000000041B5C2:
	jmp	41B433h

l000000000041B5C7:
	test	edi,edi
	lea	ebp,[rbx-1h]
	jnz	41B745h

l000000000041B5D2:
	test	ebp,ebp
	jle	41B5E2h

l000000000041B5D6:
	mov	edx,ebp
	mov	rcx,r14
	call	41AC20h
	mov	edi,eax

l000000000041B5E2:
	mov	eax,ebp
	mov	ecx,ebp
	mov	edx,edi
	sar	eax,5h
	mov	r8d,1h
	or	edx,2h
	cdqe
	shl	r8d,cl
	mov	rcx,r14
	test	[r15+rax*4],r8d
	cmovnz	edi,edx

l000000000041B603:
	mov	edx,ebx
	sub	esi,ebx
	call	41ACB0h
	mov	ebx,2h
	mov	r12d,[r13+4h]
	jmp	41B56Eh

l000000000041B61A:
	xor	eax,eax
	jmp	41B009h

l000000000041B621:
	mov	eax,1h
	sub	eax,[rsp+90h]
	mov	[rsp+90h],eax

l000000000041B634:
	mov	eax,[rsp+90h]
	test	eax,eax
	jz	41B591h

l000000000041B643:
	mov	rcx,r14
	movsxd	rdi,dword ptr [r14+14h]
	call	415400h
	cmp	ebx,2h
	mov	r14,rax
	lea	r8,[rax+18h]
	jz	41B7DFh

l000000000041B65F:
	cmp	edi,[rax+14h]
	jl	41B67Dh

l000000000041B664:
	and	esi,1Fh
	jz	41B698h

l000000000041B669:
	bsr	eax,[r8+rdi*4-4h]
	mov	edx,20h
	sub	edx,esi
	xor	eax,1Fh
	cmp	edx,eax
	jle	41B698h

l000000000041B67D:
	mov	edx,1h
	mov	rcx,r14
	add	r12d,1h
	call	41ACB0h
	cmp	r12d,[r13+8h]
	jg	41B480h

l000000000041B698:
	mov	ebx,21h
	jmp	41B594h

l000000000041B6A2:
	mov	r8d,[rsp+90h]
	test	r8d,r8d
	jnz	41B488h

l000000000041B6B3:
	jmp	41B08Ah

l000000000041B6B8:
	mov	r9d,[rsp+90h]
	test	r9d,r9d
	jz	41B488h

l000000000041B6C9:
	jmp	41B08Ah

l000000000041B6CE:
	xor	edx,edx
	jmp	41B1DEh

l000000000041B6D5:
	mov	rax,r15
	mov	edx,20h
	xor	r9d,r9d
	jmp	41B23Fh

l000000000041B6E5:
	movzx	edx,byte ptr [rsi+1h]
	test	dl,dl
	jz	41B814h

l000000000041B6F1:
	cmp	dl,[rax+1h]
	jnz	41B774h

l000000000041B6F6:
	mov	r12d,2h
	jmp	41B70Bh
000000000041B6FE                                           66 90               f.

l000000000041B700:
	add	r12,1h
	cmp	dl,[rax-1h]
	jnz	41B774h

l000000000041B70B:
	movzx	edx,byte ptr [rsi]
	test	dl,dl
	jnz	41B700h

l000000000041B714:
	add	r12,rax
	movzx	eax,byte ptr [r12]
	cmp	byte ptr [rdi+rax],0h
	mov	rdx,rax
	mov	rax,r12
	jz	41B162h

l000000000041B72C:
	nop	dword ptr [rax+0h]

l000000000041B730:
	add	rax,1h
	movzx	ecx,byte ptr [rax]
	cmp	byte ptr [rdi+rcx],0h
	mov	rdx,rcx
	jnz	41B730h

l000000000041B740:
	jmp	41B162h

l000000000041B745:
	mov	edi,1h
	jmp	41B5E2h

l000000000041B74F:
	mov	edi,2h
	jmp	41B557h

l000000000041B759:
	test	dil,2h
	jz	41B591h

l000000000041B763:
	or	edi,[r15]
	and	edi,1h
	jnz	41B643h

l000000000041B76F:
	jmp	41B591h

l000000000041B774:
	movzx	edx,byte ptr [rax]
	xor	r12d,r12d
	jmp	41B169h

l000000000041B77F:
	mov	edx,[rsp+90h]
	test	edx,edx
	jz	41B2B0h

l000000000041B78E:
	mov	dword ptr [r14+14h],1h
	mov	dword ptr [r15],1h
	jmp	41B44Fh

l000000000041B7A2:
	mov	ecx,[rsp+90h]
	test	ecx,ecx
	jz	41B78Eh

l000000000041B7AD:
	jmp	41B2B0h

l000000000041B7B2:
	cmp	ebx,esi
	jnz	41B2B0h

l000000000041B7BA:
	cmp	esi,1h
	jle	41B78Eh

l000000000041B7BF:
	lea	edx,[rsi-1h]
	mov	rcx,r14
	call	41AC20h
	test	eax,eax
	jz	41B2B0h

l000000000041B7D2:
	mov	eax,[r13+4h]
	jmp	41B78Eh

l000000000041B7D8:
	xor	edx,edx
	jmp	41B0F1h

l000000000041B7DF:
	mov	eax,[r13+0h]
	mov	bl,22h
	sub	eax,1h
	cmp	eax,esi
	jnz	41B594h

l000000000041B7F0:
	mov	edx,esi
	mov	eax,1h
	mov	ecx,esi
	sar	edx,5h
	shl	eax,cl
	movsxd	rdx,edx
	and	eax,[r8+rdx*4]
	cmp	eax,1h
	sbb	ebx,ebx
	not	ebx
	add	ebx,22h
	jmp	41B594h

l000000000041B814:
	mov	r12d,1h
	jmp	41B714h
000000000041B81F                                              90                .

;; fn000000000041B820: 000000000041B820
;;   Called from:
;;     0000000000417425 (in fn0000000000415960)
fn000000000041B820 proc
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,48h
	mov	r14,[0000000000491ED0]                                 ; [rip+00076699]
	mov	[rsp+90h],rcx
	cmp	byte ptr [r14+30h],0h
	jz	41BB16h

l000000000041B84A:
	mov	eax,[rdx]
	mov	edx,eax
	sar	edx,5h
	and	eax,1Fh
	movsxd	rdx,edx
	mov	[rsp+3Ch],eax
	mov	rax,[rsp+90h]
	lea	rdi,[r8+rdx*4]
	lea	rdx,[rdi+4h]
	mov	rax,[rax]
	cmovz	rdx,rdi

l000000000041B872:
	mov	[rsp+30h],rdx
	lea	rsi,[rdx-4h]
	mov	dword ptr [rdx-4h],0h
	jmp	41B888h

l000000000041B884:
	add	rax,1h

l000000000041B888:
	movzx	edx,byte ptr [rax+1h]
	mov	ecx,edx
	sub	edx,1h
	cmp	edx,1Fh
	jbe	41B884h

l000000000041B896:
	cmp	cl,30h
	jz	41BB34h

l000000000041B89F:
	movzx	edx,byte ptr [rax+1h]

l000000000041B8A3:
	xor	r9d,r9d
	xor	r15d,r15d
	xor	r12d,r12d
	test	edx,edx
	mov	rbp,rsi
	mov	r11,rsi
	lea	rbx,[rax+1h]
	jz	41B960h

l000000000041B8BE:
	nop

l000000000041B8C0:
	mov	ecx,edx
	movzx	ecx,byte ptr [r14+rcx]
	test	cl,cl
	jnz	41BA34h

l000000000041B8CF:
	cmp	edx,20h
	ja	41BAE5h

l000000000041B8D8:
	cmp	r12d,r15d
	jle	41BA75h

l000000000041B8E1:
	cmp	r9d,7h
	jg	41B93Ah

l000000000041B8E7:
	cmp	r11,rbp
	jnc	41B93Ah

l000000000041B8EC:
	mov	edi,8h
	mov	edx,[r11]
	mov	r13d,20h
	sub	edi,r9d
	mov	[rsp+28h],rax
	mov	r9,r11
	shl	edi,2h
	sub	r13d,edi
	nop	dword ptr [rax+rax+0h]

l000000000041B910:
	mov	r10d,[r9+4h]
	mov	ecx,r13d
	add	r9,4h
	mov	eax,r10d
	shl	eax,cl
	mov	ecx,edi
	or	edx,eax
	mov	[r9-4h],edx
	mov	edx,r10d
	shr	edx,cl
	mov	[r9],edx
	cmp	rbp,r9
	ja	41B910h

l000000000041B935:
	mov	rax,[rsp+28h]

l000000000041B93A:
	cmp	r11,r8
	ja	41BA60h

l000000000041B943:
	mov	rax,rbx
	mov	r9d,8h
	nop	dword ptr [rax+0h]

l000000000041B950:
	movzx	edx,byte ptr [rax+1h]
	lea	rbx,[rax+1h]
	test	edx,edx
	jnz	41B8C0h

l000000000041B960:
	test	r12d,r12d
	mov	eax,4h
	jz	41BA23h

l000000000041B96E:
	mov	r10,r11

l000000000041B971:
	cmp	r9d,7h
	jg	41B9C3h

l000000000041B977:
	cmp	rbp,r11
	jbe	41B9C3h

l000000000041B97C:
	mov	edi,8h
	mov	eax,[r11]
	mov	r12d,20h
	sub	edi,r9d
	mov	r9,r11
	shl	edi,2h
	sub	r12d,edi
	nop	word ptr cs:[rax+rax+0h]

l000000000041B9A0:
	mov	ebx,[r9+4h]
	mov	ecx,r12d
	add	r9,4h
	mov	edx,ebx
	shl	edx,cl
	mov	ecx,edi
	or	eax,edx
	mov	[r9-4h],eax
	mov	eax,ebx
	shr	eax,cl
	mov	[r9],eax
	cmp	rbp,r9
	ja	41B9A0h

l000000000041B9C3:
	cmp	r8,r11
	jnc	41BB64h

l000000000041B9CC:
	mov	rax,r8
	nop

l000000000041B9D0:
	add	r10,4h
	mov	edx,[r10-4h]
	add	rax,4h
	cmp	rsi,r10
	mov	[rax-4h],edx
	jnc	41B9D0h

l000000000041B9E4:
	add	rax,4h
	mov	dword ptr [rax-4h],0h
	cmp	rsi,rax
	jnc	41B9E4h

l000000000041B9F4:
	mov	rax,[rsp+30h]
	mov	eax,[rax-4h]

l000000000041B9FC:
	test	eax,eax
	jz	41BA13h

l000000000041BA00:
	jmp	41BB5Ah

l000000000041BA05:
	sub	rsi,4h
	mov	eax,[rsi]
	test	eax,eax
	jnz	41BB5Ah

l000000000041BA13:
	cmp	r8,rsi
	jnz	41BA05h

l000000000041BA18:
	mov	dword ptr [rsi],1h
	mov	eax,5h

l000000000041BA23:
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

l000000000041BA34:
	add	r9d,1h
	add	r12d,1h
	cmp	r9d,8h
	jg	41BAC0h

l000000000041BA42:
	mov	eax,[r11]
	shl	eax,4h

l000000000041BA48:
	and	ecx,0Fh
	or	ecx,eax
	mov	rax,rbx
	mov	[r11],ecx
	jmp	41B950h
000000000041BA58                         0F 1F 84 00 00 00 00 00         ........

l000000000041BA60:
	lea	rbp,[r11-4h]
	mov	dword ptr [r11-4h],0h
	mov	r15d,r12d
	xor	r9d,r9d
	mov	r11,rbp

l000000000041BA75:
	movzx	edx,byte ptr [rax+2h]
	mov	rax,rbx
	cmp	dl,20h
	ja	41BA8Eh

l000000000041BA81:
	add	rax,1h
	movzx	edx,byte ptr [rax+1h]
	cmp	dl,20h
	jbe	41BA81h

l000000000041BA8E:
	cmp	dl,30h
	jnz	41B950h

l000000000041BA97:
	movzx	edx,byte ptr [rax+2h]
	and	edx,0DFh
	cmp	dl,58h
	jnz	41B950h

l000000000041BAA7:
	cmp	byte ptr [rax+3h],21h
	lea	rdx,[rax+2h]
	cmovnc	rax,rdx

l000000000041BAB3:
	jmp	41B950h
000000000041BAB8                         0F 1F 84 00 00 00 00 00         ........

l000000000041BAC0:
	cmp	r11,r8
	mov	rax,rbx
	jbe	41B950h

l000000000041BACC:
	mov	dword ptr [r11-4h],0h
	xor	eax,eax
	sub	r11,4h
	mov	r9d,1h
	jmp	41BA48h

l000000000041BAE5:
	cmp	edx,29h
	mov	rcx,rbx
	setz	dl
	test	r12d,r12d
	jz	41BB90h

l000000000041BAF7:
	test	dl,dl
	jz	41BB94h

l000000000041BAFF:
	mov	rbx,[rsp+90h]
	add	rax,2h
	mov	r10,r11
	mov	[rbx],rax
	jmp	41B971h

l000000000041BB16:
	mov	[rsp+30h],r8
	mov	[rsp+28h],rdx
	call	41BBE0h
	mov	r8,[rsp+30h]
	mov	rdx,[rsp+28h]
	jmp	41B84Ah

l000000000041BB34:
	movzx	edx,byte ptr [rax+2h]
	and	edx,0DFh
	cmp	dl,58h
	jnz	41B89Fh

l000000000041BB44:
	movzx	edx,byte ptr [rax+3h]
	cmp	dl,20h
	jbe	41B89Fh

l000000000041BB51:
	add	rax,2h
	jmp	41B8A3h

l000000000041BB5A:
	mov	eax,5h
	jmp	41BA23h

l000000000041BB64:
	mov	edx,[rsp+3Ch]
	test	edx,edx
	jz	41B9F4h

l000000000041BB70:
	mov	ecx,20h
	sub	ecx,[rsp+3Ch]
	mov	rbx,[rsp+30h]
	mov	eax,0FFFFFFFFh
	shr	eax,cl
	and	eax,[rbx-4h]
	mov	[rbx-4h],eax
	jmp	41B9FCh

l000000000041BB90:
	test	dl,dl
	jnz	41BBB2h

l000000000041BB94:
	movsx	eax,byte ptr [rbx+1h]
	lea	rcx,[rbx+1h]
	test	eax,eax
	jnz	41BBADh

l000000000041BBA0:
	jmp	41BBCBh

l000000000041BBA2:
	add	rcx,1h
	movsx	eax,byte ptr [rcx]
	test	eax,eax
	jz	41BBCBh

l000000000041BBAD:
	cmp	eax,29h
	jnz	41BBA2h

l000000000041BBB2:
	mov	rax,[rsp+90h]
	add	rcx,1h
	mov	[rax],rcx
	mov	eax,4h
	jmp	41BA23h

l000000000041BBCB:
	mov	al,4h
	jmp	41BA23h
000000000041BBD2       90 90 90 90 90 90 90 90 90 90 90 90 90 90   ..............

;; fn000000000041BBE0: 000000000041BBE0
;;   Called from:
;;     000000000041B3B0 (in fn000000000041AF50)
;;     000000000041BB20 (in fn000000000041B820)
fn000000000041BBE0 proc
	lea	r8,[000000000049110E]                                  ; [rip+00075527]
	lea	rdx,[00000000004AE640]                                 ; [rip+00092A52]
	mov	ecx,10h
	mov	eax,30h
	nop	dword ptr [rax+rax+0h]

l000000000041BC00:
	mov	[rdx+rax],cl
	movzx	eax,byte ptr [r8+1h]
	add	ecx,1h
	add	r8,1h
	test	al,al
	jnz	41BC00h

l000000000041BC13:
	lea	r8,[0000000000491107]                                  ; [rip+000754ED]
	mov	ecx,1Ah
	mov	eax,61h

l000000000041BC24:
	mov	[rdx+rax],cl
	movzx	eax,byte ptr [r8+1h]
	add	ecx,1h
	add	r8,1h
	test	al,al
	jnz	41BC24h

l000000000041BC37:
	lea	r8,[0000000000491100]                                  ; [rip+000754C2]
	mov	ecx,1Ah
	mov	eax,41h
	nop	dword ptr [rax+rax+0h]

l000000000041BC50:
	mov	[rdx+rax],cl
	movzx	eax,byte ptr [r8+1h]
	add	ecx,1h
	add	r8,1h
	test	al,al
	jnz	41BC50h

l000000000041BC63:
	ret
000000000041BC64             90 90 90 90 90 90 90 90 90 90 90 90     ............
000000000041BC70 FF 25 9E 3A 09 00 90 90 FF 25 E6 3A 09 00 90 90 .%.:.....%.:....
000000000041BC80 FF 25 AE 3A 09 00 90 90 0F 1F 84 00 00 00 00 00 .%.:............

;; fn000000000041BC90: 000000000041BC90
fn000000000041BC90 proc
	mov	rax,[00000000004AE4C0]                                 ; [rip+00092829]
	ret
000000000041BC98                         0F 1F 84 00 00 00 00 00         ........

;; fn000000000041BCA0: 000000000041BCA0
;;   Called from:
;;     00000000004012A0 (in fn00000000004011B0)
fn000000000041BCA0 proc
	mov	rax,rcx
	xchg	[00000000004AE4C0],rax                                ; [rip+00092816]
	ret
000000000041BCAB                                  90 90 90 90 90            .....
000000000041BCB0 FF 25 3E 3C 09 00 90 90 FF 25 DE 3C 09 00 90 90 .%><.....%.<....
000000000041BCC0 FF 25 46 3C 09 00 90 90 FF 25 BE 3A 09 00 90 90 .%F<.....%.:....
000000000041BCD0 FF 25 A6 3A 09 00 90 90 FF 25 06 3B 09 00 90 90 .%.:.....%.;....
000000000041BCE0 FF 25 76 3B 09 00 90 90 FF 25 C6 3C 09 00 90 90 .%v;.....%.<....
000000000041BCF0 FF 25 E6 3A 09 00 90 90 FF 25 36 3B 09 00 90 90 .%.:.....%6;....
000000000041BD00 FF 25 6E 3C 09 00 90 90 FF 25 2E 3C 09 00 90 90 .%n<.....%.<....
000000000041BD10 FF 25 D6 3A 09 00 90 90 FF 25 2E 3C 09 00 90 90 .%.:.....%.<....
000000000041BD20 FF 25 DE 3A 09 00 90 90 FF 25 E6 3B 09 00 90 90 .%.:.....%.;....
000000000041BD30 FF 25 16 3B 09 00 90 90 FF 25 B6 3C 09 00 90 90 .%.;.....%.<....
000000000041BD40 FF 25 76 3B 09 00 90 90 FF 25 7E 3C 09 00 90 90 .%v;.....%~<....
000000000041BD50 FF 25 16 3B 09 00 90 90 FF 25 6E 3B 09 00 90 90 .%.;.....%n;....
000000000041BD60 FF 25 6E 3C 09 00 90 90 FF 25 C6 3B 09 00 90 90 .%n<.....%.;....
000000000041BD70 FF 25 3E 3B 09 00 90 90 FF 25 1E 3B 09 00 90 90 .%>;.....%.;....
000000000041BD80 FF 25 A6 3B 09 00 90 90 FF 25 8E 3B 09 00 90 90 .%.;.....%.;....
000000000041BD90 FF 25 6E 3B 09 00 90 90 FF 25 5E 3B 09 00 90 90 .%n;.....%^;....
000000000041BDA0 FF 25 FE 3A 09 00 90 90 FF 25 96 39 09 00 90 90 .%.:.....%.9....
000000000041BDB0 FF 25 C6 3B 09 00 90 90 FF 25 96 3B 09 00 90 90 .%.;.....%.;....
000000000041BDC0 FF 25 D6 39 09 00 90 90 FF 25 FE 39 09 00 90 90 .%.9.....%.9....
000000000041BDD0 FF 25 66 3A 09 00 90 90 FF 25 C6 39 09 00 90 90 .%f:.....%.9....
000000000041BDE0 FF 25 76 3B 09 00 90 90 FF 25 CE 39 09 00 90 90 .%v;.....%.9....
000000000041BDF0 FF 25 6E 3A 09 00 90 90 FF 25 16 3A 09 00 90 90 .%n:.....%.:....
000000000041BE00 FF 25 86 3B 09 00 90 90 FF 25 B6 3B 09 00 90 90 .%.;.....%.;....
000000000041BE10 FF 25 A6 3B 09 00 90 90 FF 25 BE 3A 09 00 90 90 .%.;.....%.:....
000000000041BE20 FF 25 5E 3B 09 00 90 90 FF 25 7E 3B 09 00 90 90 .%^;.....%~;....
000000000041BE30 FF 25 AE 3B 09 00 90 90 FF 25 BE 3B 09 00 90 90 .%.;.....%.;....
000000000041BE40 FF 25 4E 3B 09 00 90 90 FF 25 9E 3B 09 00 90 90 .%N;.....%.;....
000000000041BE50 FF 25 3E 3A 09 00 90 90 FF 25 2E 3A 09 00 90 90 .%>:.....%.:....
000000000041BE60 FF 25 06 3B 09 00 90 90 FF 25 D6 3A 09 00 90 90 .%.;.....%.:....
000000000041BE70 FF 25 F6 38 09 00 90 90 FF 25 06 3A 09 00 90 90 .%.8.....%.:....
000000000041BE80 FF 25 56 3B 09 00 90 90 FF 25 D6 3A 09 00 90 90 .%V;.....%.:....
000000000041BE90 FF 25 5E 39 09 00 90 90 FF 25 86 38 09 00 90 90 .%^9.....%.8....
000000000041BEA0 FF 25 86 39 09 00 90 90 FF 25 5E 39 09 00 90 90 .%.9.....%^9....
000000000041BEB0 FF 25 96 38 09 00 90 90 FF 25 E6 3A 09 00 90 90 .%.8.....%.:....
000000000041BEC0 FF 25 8E 39 09 00 90 90 FF 25 E6 38 09 00 90 90 .%.9.....%.8....
000000000041BED0 FF 25 6E 39 09 00 90 90 FF 25 CE 39 09 00 90 90 .%n9.....%.9....
000000000041BEE0 FF 25 8E 39 09 00 90 90 FF 25 BE 38 09 00 90 90 .%.9.....%.8....
000000000041BEF0 FF 25 06 39 09 00 90 90 FF 25 2E 38 09 00 90 90 .%.9.....%.8....
000000000041BF00 FF 25 76 39 09 00 90 90 FF 25 D6 39 09 00 90 90 .%v9.....%.9....
000000000041BF10 FF 25 BE 39 09 00 90 90 FF 25 06 39 09 00 90 90 .%.9.....%.9....
000000000041BF20 FF 25 F6 37 09 00 90 90 FF 25 96 39 09 00 90 90 .%.7.....%.9....

;; fn000000000041BF30: 000000000041BF30
fn000000000041BF30 proc
	mov	eax,[00000000004AE4D0]                                 ; [rip+0009259A]
	ret
000000000041BF37                      66 0F 1F 84 00 00 00 00 00        f........

;; fn000000000041BF40: 000000000041BF40
fn000000000041BF40 proc
	mov	eax,ecx
	xchg	[00000000004AE4D0],eax                                ; [rip+00092588]
	ret
000000000041BF49                            0F 1F 80 00 00 00 00          .......

;; fn000000000041BF50: 000000000041BF50
fn000000000041BF50 proc
	push	rbx
	sub	rsp,20h
	mov	ebx,ecx
	lea	rcx,[0000000000491120]                                 ; [rip+000751C2]
	call	[00000000004AF5A4]                                    ; [rip+00093640]
	lea	rdx,[0000000000491136]                                 ; [rip+000751CB]
	mov	rcx,rax
	call	[00000000004AF5AC]                                    ; [rip+00093638]
	lea	rdx,[000000000041BF40]                                 ; [rip-0000003B]
	test	rax,rax
	mov	ecx,ebx
	cmovz	rax,rdx

l000000000041BF84:
	mov	[00000000004770F8],rax                                 ; [rip+0005B16D]
	add	rsp,20h
	pop	rbx
	jmp	rax
000000000041BF93          66 66 66 66 2E 0F 1F 84 00 00 00 00 00    ffff.........

;; fn000000000041BFA0: 000000000041BFA0
fn000000000041BFA0 proc
	sub	rsp,28h
	lea	rcx,[0000000000491120]                                 ; [rip+00075175]
	call	[00000000004AF5A4]                                    ; [rip+000935F3]
	lea	rdx,[0000000000491149]                                 ; [rip+00075191]
	mov	rcx,rax
	call	[00000000004AF5AC]                                    ; [rip+000935EB]
	lea	rdx,[000000000041BF30]                                 ; [rip-00000098]
	test	rax,rax
	cmovz	rax,rdx

l000000000041BFCF:
	mov	[00000000004770F0],rax                                 ; [rip+0005B11A]
	add	rsp,28h
	jmp	rax
000000000041BFDD                                        0F 1F 00              ...

;; fn000000000041BFE0: 000000000041BFE0
fn000000000041BFE0 proc
	mov	rax,[00000000004770F8]                                 ; [rip+0005B111]
	jmp	rax
000000000041BFEA                               66 0F 1F 44 00 00           f..D..

;; fn000000000041BFF0: 000000000041BFF0
;;   Called from:
;;     0000000000414A8C (in fn00000000004149D0)
fn000000000041BFF0 proc
	mov	rax,[00000000004770F0]                                 ; [rip+0005B0F9]
	jmp	rax
000000000041BFFA                               90 90 90 90 90 90           ......

;; fn000000000041C000: 000000000041C000
;;   Called from:
;;     00000000004549B8 (in fn0000000000454950)
fn000000000041C000 proc
	push	r13
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,48h
	mov	rdi,[rcx]
	mov	rbx,rcx
	mov	r13,rdx
	test	rdi,rdi
	js	41C0B4h

l000000000041C01E:
	mov	eax,[rcx+8h]
	cmp	eax,3B9AC9FFh
	ja	41C0B4h

l000000000041C02C:
	test	rdx,rdx
	mov	ecx,eax
	jz	41C044h

l000000000041C033:
	lea	rcx,[rsp+20h]
	call	[00000000004AF5CC]                                    ; [rip+0009358E]
	mov	rdi,[rbx]
	mov	ecx,[rbx+8h]

l000000000041C044:
	mov	eax,ecx
	mov	edx,431BDE83h
	sar	ecx,1Fh
	imul	edx
	mov	esi,0FFFFFFFDh
	mov	r12d,0FFFFFFFEh
	imul	rdi,rdi,+3E8h
	mov	ebp,0FFFFFFFEh
	sar	edx,12h
	sub	edx,ecx
	movsxd	rdx,edx
	add	rdi,rdx
	test	rdi,rdi
	mov	rbx,rdi
	jnz	41C085h

l000000000041C07A:
	jmp	41C0A5h
000000000041C07C                                     0F 1F 40 00             ..@.

l000000000041C080:
	test	rbx,rbx
	jz	41C0A1h

l000000000041C085:
	cmp	rbx,rsi
	mov	ecx,r12d
	mov	rax,rbp
	cmovbe	ecx,ebx

l000000000041C091:
	cmovbe	rax,rbx

l000000000041C095:
	sub	rbx,rax
	call	41EF40h
	test	eax,eax
	jz	41C080h

l000000000041C0A1:
	test	eax,eax
	jnz	41C0C7h

l000000000041C0A5:
	xor	eax,eax

l000000000041C0A7:
	add	rsp,48h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	ret

l000000000041C0B4:
	call	[00000000004AF79C]                                    ; [rip+000936E2]
	mov	dword ptr [rax],16h
	mov	eax,0FFFFFFFFh
	jmp	41C0A7h

l000000000041C0C7:
	test	r13,r13
	jz	41C12Dh

l000000000041C0CC:
	lea	rcx,[rsp+30h]
	call	[00000000004AF5CC]                                    ; [rip+000934F5]
	mov	rdx,[rsp+30h]
	mov	rax,rdx
	sub	rax,[rsp+20h]
	mov	rdx,346DC5D63886594Bh
	mul	rdx
	shr	rdx,0Bh
	cmp	rdi,rdx
	jbe	41C143h

l000000000041C0FA:
	sub	rdi,rdx
	mov	rdx,20C49BA5E353F7CFh
	mov	rax,rdi
	shr	rax,3h
	mul	rdx
	shr	rdx,4h
	imul	rax,rdx,+3E8h
	sub	rdi,rax
	imul	eax,edi,0F4240h

l000000000041C125:
	mov	[r13+0h],rdx
	mov	[r13+8h],eax

l000000000041C12D:
	call	[00000000004AF79C]                                    ; [rip+00093669]
	mov	dword ptr [rax],4h
	mov	eax,0FFFFFFFFh
	jmp	41C0A7h

l000000000041C143:
	xor	eax,eax
	xor	edx,edx
	jmp	41C125h
000000000041C149                            90 90 90 90 90 90 90          .......

;; fn000000000041C150: 000000000041C150
fn000000000041C150 proc
	mov	dword ptr [rcx],0FFFFFFFFh
	ret
000000000041C157                      66 0F 1F 84 00 00 00 00 00        f........

;; fn000000000041C160: 000000000041C160
fn000000000041C160 proc
	mov	qword ptr [rcx],-1h
	ret
000000000041C168                         0F 1F 84 00 00 00 00 00         ........

;; fn000000000041C170: 000000000041C170
fn000000000041C170 proc
	mov	qword ptr [rcx],-3h
	ret
000000000041C178                         0F 1F 84 00 00 00 00 00         ........

;; fn000000000041C180: 000000000041C180
fn000000000041C180 proc
	mov	qword ptr [rcx],-1h
	ret
000000000041C188                         0F 1F 84 00 00 00 00 00         ........

;; fn000000000041C190: 000000000041C190
;;   Called from:
;;     000000000041C703 (in fn000000000041C600)
;;     000000000041D591 (in fn000000000041D570)
;;     000000000041F224 (in fn000000000041F200)
;;     000000000041F965 (in fn000000000041F940)
fn000000000041C190 proc
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,28h
	mov	rax,[00000000004AE508]                                 ; [rip+00092369]
	mov	rbp,rcx
	test	rax,rax
	jz	41C26Ah

l000000000041C1AB:
	cmp	qword ptr [rax],0h
	jz	41C212h

l000000000041C1B1:
	mov	rdi,[rax]
	cmp	rdi,1h
	jz	41C250h

l000000000041C1BE:
	sub	rdi,1h
	xor	esi,esi
	jmp	41C1DEh
000000000041C1C6                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l000000000041C1D0:
	cmp	rbx,rsi
	jz	41C212h

l000000000041C1D5:
	lea	rdi,[rbx-1h]
	cmp	rdi,rsi
	jc	41C212h

l000000000041C1DE:
	mov	rax,[00000000004AE510]                                 ; [rip+0009232B]
	lea	rbx,[rsi+rdi]
	shr	rbx,1h
	test	rax,rax
	jz	41C220h

l000000000041C1F1:
	mov	rax,[rax]
	mov	rdx,rbx
	shl	rdx,4h
	cmp	[rax+rdx+8h],rbp
	jz	41C240h

l000000000041C202:
	cmp	rbp,[rax+rdx+8h]
	jc	41C1D0h

l000000000041C209:
	lea	rsi,[rbx+1h]
	cmp	rdi,rsi
	jnc	41C1DEh

l000000000041C212:
	xor	eax,eax

l000000000041C214:
	add	rsp,28h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
000000000041C21D                                        0F 1F 00              ...

l000000000041C220:
	lea	rcx,[0000000000491170]                                 ; [rip+00074F49]
	xor	r8d,r8d
	mov	edx,8h
	call	421EA0h
	mov	[00000000004AE510],rax                                 ; [rip+000922D5]
	jmp	41C1F1h
000000000041C23D                                        0F 1F 00              ...

l000000000041C240:
	mov	rax,[rax+rdx]
	add	rsp,28h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
000000000041C24D                                        0F 1F 00              ...

l000000000041C250:
	mov	rax,[00000000004AE510]                                 ; [rip+000922B9]
	test	rax,rax
	jz	41C2B4h

l000000000041C25C:
	mov	rax,[rax]
	cmp	[rax+8h],rbp
	jnz	41C212h

l000000000041C265:
	mov	rax,[rax]
	jmp	41C214h

l000000000041C26A:
	lea	rcx,[0000000000491160]                                 ; [rip+00074EEF]
	xor	r8d,r8d
	mov	edx,8h
	call	421EA0h
	cmp	qword ptr [rax],0h
	mov	[00000000004AE508],rax                                 ; [rip+0009227F]
	jz	41C212h

l000000000041C28B:
	test	rax,rax
	jnz	41C1B1h

l000000000041C294:
	lea	rcx,[0000000000491160]                                 ; [rip+00074EC5]
	xor	r8d,r8d
	mov	edx,8h
	call	421EA0h
	mov	[00000000004AE508],rax                                 ; [rip+00092259]
	jmp	41C1B1h

l000000000041C2B4:
	lea	rcx,[0000000000491170]                                 ; [rip+00074EB5]
	xor	r8d,r8d
	mov	edx,8h
	call	421EA0h
	mov	[00000000004AE510],rax                                 ; [rip+00092241]
	jmp	41C25Ch
000000000041C2D1    66 66 66 66 66 66 2E 0F 1F 84 00 00 00 00 00  ffffff.........

;; fn000000000041C2E0: 000000000041C2E0
;;   Called from:
;;     000000000041D150 (in fn000000000041D140)
;;     000000000041DEFC (in fn000000000041DEE0)
fn000000000041C2E0 proc
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,20h
	mov	rdi,rcx
	mov	rcx,[00000000004AE4E8]                                 ; [rip+000921F7]
	test	rcx,rcx
	jz	41C3E5h

l000000000041C2FA:
	call	422260h
	mov	rax,[00000000004AE4F0]                                 ; [rip+000921EA]
	test	rax,rax
	jz	41C3C5h

l000000000041C30F:
	mov	rsi,[rax]
	test	rsi,rsi
	jz	41C40Ch

l000000000041C31B:
	cmp	[rsi],rdi
	jnz	41C32Ah

l000000000041C320:
	jmp	41C380h

l000000000041C322:
	cmp	[rbx],rdi
	mov	rsi,rbx
	jz	41C383h

l000000000041C32A:
	mov	rbx,[rsi+18h]
	test	rbx,rbx
	jnz	41C322h

l000000000041C333:
	mov	edx,20h
	mov	ecx,1h
	call	41BEC0h
	mov	[rax],rdi
	mov	dword ptr [rax+10h],1h
	mov	rbx,rax
	mov	[rsi+18h],rax

l000000000041C353:
	lea	rcx,[rbx+8h]
	xor	edx,edx
	call	420360h
	mov	rcx,[00000000004AE4E8]                                 ; [rip+00092183]
	test	rcx,rcx
	jz	41C393h

l000000000041C36A:
	nop	word ptr [rax+rax+0h]

l000000000041C370:
	call	422310h
	mov	rax,rbx
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	ret

l000000000041C380:
	mov	rbx,rsi

l000000000041C383:
	mov	rcx,[00000000004AE4E8]                                 ; [rip+0009215E]
	add	dword ptr [rbx+10h],1h
	test	rcx,rcx
	jnz	41C370h

l000000000041C393:
	lea	r8,[000000000041C180]                                  ; [rip-0000021A]
	lea	rcx,[000000000049117D]                                 ; [rip+00074DDC]
	mov	edx,8h
	call	421EA0h
	mov	rcx,rax
	mov	[00000000004AE4E8],rax                                 ; [rip+00092133]
	call	422310h
	mov	rax,rbx
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	ret

l000000000041C3C5:
	lea	rcx,[000000000049118F]                                 ; [rip+00074DC3]
	xor	r8d,r8d
	mov	edx,8h
	call	421EA0h
	mov	[00000000004AE4F0],rax                                 ; [rip+00092110]
	jmp	41C30Fh

l000000000041C3E5:
	lea	rcx,[000000000049117D]                                 ; [rip+00074D91]
	lea	r8,[000000000041C180]                                  ; [rip-00000273]
	mov	edx,8h
	call	421EA0h
	mov	rcx,rax
	mov	[00000000004AE4E8],rax                                 ; [rip+000920E1]
	jmp	41C2FAh

l000000000041C40C:
	mov	edx,20h
	mov	ecx,1h
	call	41BEC0h
	mov	rbx,rax
	mov	[rax],rdi
	mov	dword ptr [rax+10h],1h
	mov	rax,[00000000004AE4F0]                                 ; [rip+000920C1]
	test	rax,rax
	jz	41C43Ch

l000000000041C434:
	mov	[rax],rbx
	jmp	41C353h

l000000000041C43C:
	lea	rcx,[000000000049118F]                                 ; [rip+00074D4C]
	xor	r8d,r8d
	mov	edx,8h
	call	421EA0h
	mov	[00000000004AE4F0],rax                                 ; [rip+00092099]
	jmp	41C434h
000000000041C459                            0F 1F 80 00 00 00 00          .......

;; fn000000000041C460: 000000000041C460
;;   Called from:
;;     000000000041C5F9 (in fn000000000041C5E0)
;;     000000000041D196 (in fn000000000041D140)
;;     000000000041D1C6 (in fn000000000041D140)
;;     000000000041DF42 (in fn000000000041DEE0)
fn000000000041C460 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	test	rcx,rcx
	jz	41C514h

l000000000041C46F:
	mov	rsi,rcx
	mov	rcx,[00000000004AE4E8]                                 ; [rip+0009206F]
	test	rcx,rcx
	jz	41C546h

l000000000041C482:
	call	422260h
	mov	rax,[00000000004AE4F0]                                 ; [rip+00092062]
	test	rax,rax
	jz	41C56Dh

l000000000041C497:
	mov	rbx,[rax]
	cmp	rsi,rbx
	jz	41C51Bh

l000000000041C49F:
	test	rbx,rbx
	jnz	41C4B3h

l000000000041C4A4:
	jmp	41C51Bh
000000000041C4A6                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l000000000041C4B0:
	mov	rbx,rax

l000000000041C4B3:
	mov	rax,[rbx+18h]
	cmp	rsi,rax
	setnz	r9b
	test	rax,rax
	setnz	dl
	test	r9b,dl
	jnz	41C4B0h

l000000000041C4C9:
	test	rax,rax
	jz	41C58Dh

l000000000041C4D2:
	sub	dword ptr [rsi+10h],1h
	jz	41C4F0h

l000000000041C4D8:
	mov	rcx,[00000000004AE4E8]                                 ; [rip+00092009]
	test	rcx,rcx
	jz	41C522h

l000000000041C4E4:
	add	rsp,28h
	pop	rbx
	pop	rsi
	jmp	422310h
000000000041C4EF                                              90                .

l000000000041C4F0:
	lea	rcx,[rsi+8h]
	call	420B50h
	test	rbx,rbx
	jz	41C5ABh

l000000000041C502:
	mov	rax,[rsi+18h]
	mov	[rbx+18h],rax

l000000000041C50A:
	mov	rcx,rsi
	call	41BDA0h
	jmp	41C4D8h

l000000000041C514:
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret

l000000000041C51B:
	mov	rax,rbx
	xor	ebx,ebx
	jmp	41C4C9h

l000000000041C522:
	lea	rcx,[000000000049117D]                                 ; [rip+00074C54]
	lea	r8,[000000000041C180]                                  ; [rip-000003B0]
	mov	edx,8h
	call	421EA0h
	mov	rcx,rax
	mov	[00000000004AE4E8],rax                                 ; [rip+00091FA4]
	jmp	41C4E4h

l000000000041C546:
	lea	rcx,[000000000049117D]                                 ; [rip+00074C30]
	lea	r8,[000000000041C180]                                  ; [rip-000003D4]
	mov	edx,8h
	call	421EA0h
	mov	rcx,rax
	mov	[00000000004AE4E8],rax                                 ; [rip+00091F80]
	jmp	41C482h

l000000000041C56D:
	lea	rcx,[000000000049118F]                                 ; [rip+00074C1B]
	xor	r8d,r8d
	mov	edx,8h
	call	421EA0h
	mov	[00000000004AE4F0],rax                                 ; [rip+00091F68]
	jmp	41C497h

l000000000041C58D:
	call	[00000000004AF744]                                    ; [rip+000931B1]
	lea	rdx,[000000000049119E]                                 ; [rip+00074C04]
	lea	rcx,[rax+60h]
	mov	r8,rsi
	call	41BE78h
	jmp	41C4D8h

l000000000041C5AB:
	mov	rax,[00000000004AE4F0]                                 ; [rip+00091F3E]
	test	rax,rax
	jz	41C5C3h

l000000000041C5B7:
	mov	rdx,[rsi+18h]
	mov	[rax],rdx
	jmp	41C50Ah

l000000000041C5C3:
	lea	rcx,[000000000049118F]                                 ; [rip+00074BC5]
	xor	r8d,r8d
	mov	edx,8h
	call	421EA0h
	mov	[00000000004AE4F0],rax                                 ; [rip+00091F12]
	jmp	41C5B7h

;; fn000000000041C5E0: 000000000041C5E0
fn000000000041C5E0 proc
	push	rbx
	sub	rsp,20h
	mov	rbx,rcx
	lea	rcx,[rcx+8h]
	call	4202A0h
	mov	rcx,rbx
	add	rsp,20h
	pop	rbx
	jmp	41C460h
000000000041C5FE                                           66 90               f.

;; fn000000000041C600: 000000000041C600
;;   Called from:
;;     000000000041CB45 (in fn000000000041CB10)
;;     000000000041CBBE (in fn000000000041CB10)
fn000000000041C600 proc
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,28h
	test	rcx,rcx
	jz	41C8B7h

l000000000041C611:
	mov	rax,[00000000004AE508]                                 ; [rip+00091EF0]
	mov	rdi,rcx
	test	rax,rax
	jz	41C91Bh

l000000000041C624:
	mov	rbx,[rax]
	mov	rax,[00000000004AE500]                                 ; [rip+00091ED2]
	test	rax,rax
	jz	41C93Bh

l000000000041C637:
	cmp	rbx,[rax]
	jc	41C6C3h

l000000000041C640:
	mov	rax,[00000000004AE508]                                 ; [rip+00091EC1]
	test	rax,rax
	jz	41CA1Bh

l000000000041C650:
	cmp	qword ptr [rax],0h
	jz	41C8C2h

l000000000041C65A:
	mov	rax,[00000000004AE500]                                 ; [rip+00091E9F]
	test	rax,rax
	jz	41CA67h

l000000000041C66A:
	mov	rbx,[rax]
	mov	rax,[00000000004AE510]                                 ; [rip+00091E9C]
	add	rbx,10h
	shl	rbx,4h
	test	rax,rax
	jz	41CA87h

l000000000041C685:
	mov	rcx,[rax]
	mov	rdx,rbx
	call	41BE68h
	test	rax,rax
	mov	rbx,rax
	jz	41C8B7h

l000000000041C69C:
	mov	rax,[00000000004AE500]                                 ; [rip+00091E5D]
	test	rax,rax
	jz	41CAA7h

l000000000041C6AC:
	add	qword ptr [rax],10h
	mov	rax,[00000000004AE510]                                 ; [rip+00091E59]
	test	rax,rax
	jz	41C8FBh

l000000000041C6C0:
	mov	[rax],rbx

l000000000041C6C3:
	mov	rbx,4000000000000000h
	nop	dword ptr [rax]

l000000000041C6D0:
	mov	rax,[00000000004AE4F8]                                 ; [rip+00091E21]
	test	rax,rax
	jz	41C7B3h

l000000000041C6E0:
	mov	rsi,[rax]
	lea	rdx,[rsi+1h]
	mov	[rax],rdx

l000000000041C6EA:
	test	rdx,rbx
	jz	41C7A0h

l000000000041C6F3:
	mov	qword ptr [rax],+1h
	nop	word ptr [rax+rax+0h]

l000000000041C700:
	mov	rcx,[rax]
	call	41C190h
	test	rax,rax
	jnz	41C6D0h

l000000000041C70D:
	mov	rax,[00000000004AE508]                                 ; [rip+00091DF4]
	test	rax,rax
	jz	41C9FBh

l000000000041C71D:
	mov	rbx,[rax]
	xor	esi,esi
	test	rbx,rbx
	jnz	41C7DDh

l000000000041C72B:
	mov	rax,[00000000004AE510]                                 ; [rip+00091DDE]
	test	rax,rax
	jz	41C95Bh

l000000000041C73B:
	mov	rbx,rsi
	add	rbx,[rax]
	mov	rax,[00000000004AE4F8]                                 ; [rip+00091DB0]
	test	rax,rax
	jz	41C97Bh

l000000000041C751:
	mov	rax,[rax]
	mov	[rbx+8h],rax
	mov	rax,[00000000004AE510]                                 ; [rip+00091DB1]
	test	rax,rax
	jz	41C99Bh

l000000000041C768:
	mov	rax,[rax]
	mov	[rax+rsi],rdi
	mov	rax,[00000000004AE508]                                 ; [rip+00091D92]
	test	rax,rax
	jz	41C9BBh

l000000000041C77F:
	add	qword ptr [rax],1h
	mov	rax,[00000000004AE4F8]                                 ; [rip+00091D6E]
	test	rax,rax
	jz	41C9DBh

l000000000041C793:
	mov	rax,[rax]
	add	rsp,28h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
000000000041C79F                                              90                .

l000000000041C7A0:
	cmp	qword ptr [rax],0h
	jnz	41C700h

l000000000041C7AA:
	test	rax,rax
	jnz	41C6E0h

l000000000041C7B3:
	lea	rcx,[00000000004911C0]                                 ; [rip+00074A06]
	mov	edx,8h
	xor	r8d,r8d
	call	421EA0h
	mov	rcx,[rax]
	mov	[00000000004AE4F8],rax                                 ; [rip+00091D27]
	lea	rdx,[rcx+1h]
	mov	[rax],rdx
	jmp	41C6EAh

l000000000041C7DD:
	mov	rsi,rbx
	shl	rsi,4h
	jmp	41C817h
000000000041C7E6                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l000000000041C7F0:
	mov	rax,[rax]
	mov	rbp,[rax+rsi-8h]
	mov	rax,[00000000004AE4F8]                                 ; [rip+00091CF9]
	test	rax,rax
	jz	41C897h

l000000000041C808:
	cmp	rbp,[rax]
	jbe	41C842h

l000000000041C80D:
	sub	rsi,10h
	sub	rbx,1h
	jz	41C840h

l000000000041C817:
	mov	rax,[00000000004AE510]                                 ; [rip+00091CF2]
	test	rax,rax
	jnz	41C7F0h

l000000000041C823:
	lea	rcx,[0000000000491170]                                 ; [rip+00074946]
	xor	r8d,r8d
	mov	edx,8h
	call	421EA0h
	mov	[00000000004AE510],rax                                 ; [rip+00091CD2]
	jmp	41C7F0h

l000000000041C840:
	xor	esi,esi

l000000000041C842:
	mov	rax,[00000000004AE508]                                 ; [rip+00091CBF]
	test	rax,rax
	jz	41CA3Bh

l000000000041C852:
	mov	rax,[rax]
	cmp	rax,rbx
	jz	41C72Bh

l000000000041C85E:
	sub	rax,rbx
	shl	rax,4h
	mov	rbp,rax
	mov	rax,[00000000004AE510]                                 ; [rip+00091CA1]
	test	rax,rax
	jz	41CAE7h

l000000000041C878:
	mov	rcx,[rax]
	add	rbx,1h
	mov	r8,rbp
	shl	rbx,4h
	lea	rdx,[rcx+rsi]
	add	rcx,rbx
	call	41BD28h
	jmp	41C72Bh

l000000000041C897:
	lea	rcx,[00000000004911C0]                                 ; [rip+00074922]
	xor	r8d,r8d
	mov	edx,8h
	call	421EA0h
	mov	[00000000004AE4F8],rax                                 ; [rip+00091C46]
	jmp	41C808h

l000000000041C8B7:
	xor	eax,eax
	add	rsp,28h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret

l000000000041C8C2:
	mov	ecx,100h
	call	41BCB0h
	test	rax,rax
	mov	rbx,rax
	jz	41C8B7h

l000000000041C8D4:
	mov	rax,[00000000004AE500]                                 ; [rip+00091C25]
	test	rax,rax
	jz	41CAC7h

l000000000041C8E4:
	mov	qword ptr [rax],+10h
	mov	rax,[00000000004AE510]                                 ; [rip+00091C1E]
	test	rax,rax
	jnz	41C6C0h

l000000000041C8FB:
	lea	rcx,[0000000000491170]                                 ; [rip+0007486E]
	xor	r8d,r8d
	mov	edx,8h
	call	421EA0h
	mov	[00000000004AE510],rax                                 ; [rip+00091BFA]
	jmp	41C6C0h

l000000000041C91B:
	lea	rcx,[0000000000491160]                                 ; [rip+0007483E]
	xor	r8d,r8d
	mov	edx,8h
	call	421EA0h
	mov	[00000000004AE508],rax                                 ; [rip+00091BD2]
	jmp	41C624h

l000000000041C93B:
	lea	rcx,[00000000004911B0]                                 ; [rip+0007486E]
	xor	r8d,r8d
	mov	edx,8h
	call	421EA0h
	mov	[00000000004AE500],rax                                 ; [rip+00091BAA]
	jmp	41C637h

l000000000041C95B:
	lea	rcx,[0000000000491170]                                 ; [rip+0007480E]
	xor	r8d,r8d
	mov	edx,8h
	call	421EA0h
	mov	[00000000004AE510],rax                                 ; [rip+00091B9A]
	jmp	41C73Bh

l000000000041C97B:
	lea	rcx,[00000000004911C0]                                 ; [rip+0007483E]
	xor	r8d,r8d
	mov	edx,8h
	call	421EA0h
	mov	[00000000004AE4F8],rax                                 ; [rip+00091B62]
	jmp	41C751h

l000000000041C99B:
	lea	rcx,[0000000000491170]                                 ; [rip+000747CE]
	xor	r8d,r8d
	mov	edx,8h
	call	421EA0h
	mov	[00000000004AE510],rax                                 ; [rip+00091B5A]
	jmp	41C768h

l000000000041C9BB:
	lea	rcx,[0000000000491160]                                 ; [rip+0007479E]
	xor	r8d,r8d
	mov	edx,8h
	call	421EA0h
	mov	[00000000004AE508],rax                                 ; [rip+00091B32]
	jmp	41C77Fh

l000000000041C9DB:
	lea	rcx,[00000000004911C0]                                 ; [rip+000747DE]
	xor	r8d,r8d
	mov	edx,8h
	call	421EA0h
	mov	[00000000004AE4F8],rax                                 ; [rip+00091B02]
	jmp	41C793h

l000000000041C9FB:
	lea	rcx,[0000000000491160]                                 ; [rip+0007475E]
	xor	r8d,r8d
	mov	edx,8h
	call	421EA0h
	mov	[00000000004AE508],rax                                 ; [rip+00091AF2]
	jmp	41C71Dh

l000000000041CA1B:
	lea	rcx,[0000000000491160]                                 ; [rip+0007473E]
	xor	r8d,r8d
	mov	edx,8h
	call	421EA0h
	mov	[00000000004AE508],rax                                 ; [rip+00091AD2]
	jmp	41C650h

l000000000041CA3B:
	lea	rcx,[0000000000491160]                                 ; [rip+0007471E]
	xor	r8d,r8d
	mov	edx,8h
	call	421EA0h
	mov	[00000000004AE508],rax                                 ; [rip+00091AB2]
	mov	rax,[rax]
	cmp	rax,rbx
	jnz	41C85Eh

l000000000041CA62:
	jmp	41C72Bh

l000000000041CA67:
	lea	rcx,[00000000004911B0]                                 ; [rip+00074742]
	xor	r8d,r8d
	mov	edx,8h
	call	421EA0h
	mov	[00000000004AE500],rax                                 ; [rip+00091A7E]
	jmp	41C66Ah

l000000000041CA87:
	lea	rcx,[0000000000491170]                                 ; [rip+000746E2]
	xor	r8d,r8d
	mov	edx,8h
	call	421EA0h
	mov	[00000000004AE510],rax                                 ; [rip+00091A6E]
	jmp	41C685h

l000000000041CAA7:
	lea	rcx,[00000000004911B0]                                 ; [rip+00074702]
	xor	r8d,r8d
	mov	edx,8h
	call	421EA0h
	mov	[00000000004AE500],rax                                 ; [rip+00091A3E]
	jmp	41C6ACh

l000000000041CAC7:
	lea	rcx,[00000000004911B0]                                 ; [rip+000746E2]
	xor	r8d,r8d
	mov	edx,8h
	call	421EA0h
	mov	[00000000004AE500],rax                                 ; [rip+00091A1E]
	jmp	41C8E4h

l000000000041CAE7:
	lea	rcx,[0000000000491170]                                 ; [rip+00074682]
	xor	r8d,r8d
	mov	edx,8h
	call	421EA0h
	mov	[00000000004AE510],rax                                 ; [rip+00091A0E]
	jmp	41C878h
000000000041CB07                      66 0F 1F 84 00 00 00 00 00        f........

;; fn000000000041CB10: 000000000041CB10
;;   Called from:
;;     000000000041D213 (in fn000000000041D1D0)
;;     000000000041F59A (in fn000000000041F580)
fn000000000041CB10 proc
	push	rbx
	sub	rsp,20h
	mov	rcx,[00000000004AE518]                                 ; [rip+000919FC]
	test	rcx,rcx
	jz	41CC00h

l000000000041CB25:
	call	4208F0h
	mov	rax,[00000000004AE528]                                 ; [rip+000919F7]
	test	rax,rax
	jz	41CC30h

l000000000041CB3A:
	mov	rbx,[rax]
	test	rbx,rbx
	jz	41CBA4h

l000000000041CB42:
	mov	rcx,rbx
	call	41C600h
	test	rax,rax
	mov	[rbx+1C8h],rax
	jz	41CBA0h

l000000000041CB56:
	mov	rax,[00000000004AE528]                                 ; [rip+000919CB]
	test	rax,rax
	jz	41CC80h

l000000000041CB66:
	mov	rdx,[rbx+1C0h]
	test	rdx,rdx
	mov	[rax],rdx
	jz	41CC50h

l000000000041CB79:
	mov	qword ptr [rbx+1C0h],+0h

l000000000041CB84:
	mov	rcx,[00000000004AE518]                                 ; [rip+0009198D]
	test	rcx,rcx
	jz	41CBD5h

l000000000041CB90:
	call	4202A0h
	mov	rax,rbx
	add	rsp,20h
	pop	rbx
	ret
000000000041CB9E                                           66 90               f.

l000000000041CBA0:
	xor	ebx,ebx
	jmp	41CB84h

l000000000041CBA4:
	mov	edx,1D0h
	mov	ecx,1h
	call	41BEC0h
	test	rax,rax
	mov	rbx,rax
	jz	41CB84h

l000000000041CBBB:
	mov	rcx,rax
	call	41C600h
	test	rax,rax
	jz	41CC70h

l000000000041CBCC:
	mov	[rbx+1C8h],rax
	jmp	41CB84h

l000000000041CBD5:
	lea	rcx,[00000000004911D3]                                 ; [rip+000745F7]
	lea	r8,[000000000041C170]                                  ; [rip-00000A73]
	mov	edx,8h
	call	421EA0h
	mov	rcx,rax
	mov	[00000000004AE518],rax                                 ; [rip+00091921]
	jmp	41CB90h
000000000041CBF9                            0F 1F 80 00 00 00 00          .......

l000000000041CC00:
	lea	rcx,[00000000004911D3]                                 ; [rip+000745CC]
	lea	r8,[000000000041C170]                                  ; [rip-00000A9E]
	mov	edx,8h
	call	421EA0h
	mov	rcx,rax
	mov	[00000000004AE518],rax                                 ; [rip+000918F6]
	jmp	41CB25h
000000000041CC27                      66 0F 1F 84 00 00 00 00 00        f........

l000000000041CC30:
	lea	rcx,[00000000004911E9]                                 ; [rip+000745B2]
	xor	r8d,r8d
	mov	edx,8h
	call	421EA0h
	mov	[00000000004AE528],rax                                 ; [rip+000918DD]
	jmp	41CB3Ah

l000000000041CC50:
	mov	rax,[00000000004AE520]                                 ; [rip+000918C9]
	test	rax,rax
	jz	41CCA0h

l000000000041CC5C:
	mov	qword ptr [rax],+0h
	jmp	41CB79h
000000000041CC68                         0F 1F 84 00 00 00 00 00         ........

l000000000041CC70:
	mov	rcx,rbx
	xor	ebx,ebx
	call	41BDA0h
	jmp	41CB84h
000000000041CC7F                                              90                .

l000000000041CC80:
	lea	rcx,[00000000004911E9]                                 ; [rip+00074562]
	xor	r8d,r8d
	mov	edx,8h
	call	421EA0h
	mov	[00000000004AE528],rax                                 ; [rip+0009188D]
	jmp	41CB66h

l000000000041CCA0:
	lea	rcx,[00000000004911F9]                                 ; [rip+00074552]
	xor	r8d,r8d
	mov	dl,8h
	call	421EA0h
	mov	[00000000004AE520],rax                                 ; [rip+00091868]
	jmp	41CC5Ch
000000000041CCBA                               66 0F 1F 44 00 00           f..D..

;; fn000000000041CCC0: 000000000041CCC0
;;   Called from:
;;     000000000041D1B0 (in fn000000000041D140)
fn000000000041CCC0 proc
	push	rbx
	sub	rsp,20h
	mov	rbx,[00000000004AE548]                                 ; [rip+0009187C]
	test	rbx,rbx
	jz	41CCF0h

l000000000041CCD1:
	call	[00000000004AF6BC]                                    ; [rip+000929E5]
	mov	[rbx],eax
	mov	rax,[00000000004AE548]                                 ; [rip+00091868]
	test	rax,rax
	jz	41CD14h

l000000000041CCE5:
	cmp	dword ptr [rax],0FFh
	jz	41CD35h

l000000000041CCEA:
	add	rsp,20h
	pop	rbx
	ret

l000000000041CCF0:
	lea	r8,[000000000041C150]                                  ; [rip-00000BA7]
	lea	rcx,[0000000000491209]                                 ; [rip+0007450B]
	mov	edx,4h
	call	421EA0h
	mov	rbx,rax
	mov	[00000000004AE548],rax                                 ; [rip+00091836]
	jmp	41CCD1h

l000000000041CD14:
	lea	r8,[000000000041C150]                                  ; [rip-00000BCB]
	lea	rcx,[0000000000491209]                                 ; [rip+000744E7]
	mov	edx,4h
	call	421EA0h
	mov	[00000000004AE548],rax                                 ; [rip+00091815]
	jmp	41CCE5h

l000000000041CD35:
	call	41BD30h
	nop
	nop	dword ptr [rax+rax+0h]

;; fn000000000041CD40: 000000000041CD40
;;   Called from:
;;     000000000041CD3B (in fn000000000041CCC0)
;;     000000000041D9B8 (in fn000000000041D7F0)
;;     000000000041DC8E (in fn000000000041D9D0)
;;     000000000041EC16 (in fn000000000041EB10)
;;     000000000041F82A (in fn000000000041F580)
;;     000000000041F921 (in fn000000000041F840)
;;     000000000041FB79 (in fn000000000041F940)
;;     000000000041FD4E (in fn000000000041FBB0)
fn000000000041CD40 proc
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,20h
	mov	rbp,rcx
	mov	rcx,[00000000004AE518]                                 ; [rip+000917C4]
	test	rcx,rcx
	jz	41CFE0h

l000000000041CD5D:
	call	4208F0h
	mov	r12,[rbp+1C8h]
	test	r12,r12
	jnz	41CE01h

l000000000041CD72:
	mov	rcx,[rbp+50h]
	test	rcx,rcx
	jz	41CD80h

l000000000041CD7B:
	call	41BDA0h

l000000000041CD80:
	mov	rcx,[rbp+58h]
	test	rcx,rcx
	jz	41CD8Eh

l000000000041CD89:
	call	41BDA0h

l000000000041CD8E:
	lea	rdi,[rbp+8h]
	mov	rdx,rbp
	xor	eax,eax
	mov	qword ptr [rbp+0h],+0h
	mov	qword ptr [rbp+1C8h],+0h
	and	rdi,0F8h
	sub	rdx,rdi
	add	edx,1D0h
	shr	edx,3h
	mov	ecx,edx

l000000000041CDBC:
	rep stosq

l000000000041CDBF:
	mov	rdx,[00000000004AE520]                                 ; [rip+0009175A]
	test	rdx,rdx
	jz	41D010h

l000000000041CDCF:
	mov	rax,[rdx]
	test	rax,rax
	jz	41CE90h

l000000000041CDDB:
	mov	[rax+1C0h],rbp

l000000000041CDE2:
	mov	rcx,[00000000004AE518]                                 ; [rip+0009172F]
	test	rcx,rcx
	jz	41CFB0h

l000000000041CDF2:
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	jmp	4202A0h

l000000000041CE01:
	mov	rax,[00000000004AE508]                                 ; [rip+00091700]
	test	rax,rax
	jz	41D070h

l000000000041CE11:
	mov	rdi,[rax]
	test	rdi,rdi
	jz	41CD72h

l000000000041CE1D:
	sub	rdi,1h
	xor	esi,esi
	jmp	41CE3Bh

l000000000041CE25:
	cmp	rsi,rbx
	jz	41CD72h

l000000000041CE2E:
	lea	rdi,[rbx-1h]

l000000000041CE32:
	cmp	rdi,rsi
	jc	41CD72h

l000000000041CE3B:
	mov	rax,[00000000004AE510]                                 ; [rip+000916CE]
	lea	rbx,[rsi+rdi]
	shr	rbx,1h
	test	rax,rax
	jz	41CE70h

l000000000041CE4E:
	mov	rax,[rax]
	mov	rdx,rbx
	shl	rdx,4h
	cmp	r12,[rax+rdx+8h]
	jz	41CEB0h

l000000000041CE5F:
	jc	41CE25h

l000000000041CE61:
	lea	rsi,[rbx+1h]
	jmp	41CE32h
000000000041CE67                      66 0F 1F 84 00 00 00 00 00        f........

l000000000041CE70:
	lea	rcx,[0000000000491170]                                 ; [rip+000742F9]
	xor	r8d,r8d
	mov	edx,8h
	call	421EA0h
	mov	[00000000004AE510],rax                                 ; [rip+00091685]
	jmp	41CE4Eh
000000000041CE8D                                        0F 1F 00              ...

l000000000041CE90:
	mov	rbx,[00000000004AE528]                                 ; [rip+00091691]
	mov	rax,rdx
	test	rbx,rbx
	jz	41D090h

l000000000041CEA3:
	mov	[rax],rbp
	mov	[rbx],rbp
	jmp	41CDE2h
000000000041CEAE                                           66 90               f.

l000000000041CEB0:
	mov	rax,[00000000004AE508]                                 ; [rip+00091651]
	add	rbx,1h
	test	rax,rax
	jz	41CF21h

l000000000041CEC0:
	mov	r8,[rax]
	cmp	r8,rbx
	ja	41CF44h

l000000000041CEC8:
	sub	qword ptr [rax],1h
	cmp	qword ptr [rax],0h
	jnz	41CD72h

l000000000041CED6:
	mov	rax,[00000000004AE510]                                 ; [rip+00091633]
	test	rax,rax
	jz	41D0B0h

l000000000041CEE6:
	mov	rcx,[rax]
	call	41BDA0h
	mov	rbx,[00000000004AE508]                                 ; [rip+00091613]
	test	rbx,rbx
	jz	41D0F0h

l000000000041CEFE:
	mov	rax,[00000000004AE500]                                 ; [rip+000915FB]
	test	rax,rax
	jz	41D0D0h

l000000000041CF0E:
	mov	qword ptr [rax],+0h
	mov	qword ptr [rbx],+0h
	jmp	41CD72h

l000000000041CF21:
	lea	rcx,[0000000000491160]                                 ; [rip+00074238]
	xor	r8d,r8d
	mov	edx,8h
	call	421EA0h
	mov	r8,[rax]
	mov	[00000000004AE508],rax                                 ; [rip+000915C9]
	cmp	rbx,r8
	jnc	41CEC8h

l000000000041CF44:
	mov	rax,[00000000004AE510]                                 ; [rip+000915C5]
	sub	r8,rbx
	mov	rsi,r8
	shl	rsi,4h
	test	rax,rax
	jz	41D113h

l000000000041CF5E:
	mov	rax,[rax]
	shl	rbx,4h
	mov	r8,rsi
	lea	rdx,[rax+rbx]
	lea	rcx,[rax+rbx-10h]
	call	41BD28h
	mov	rax,[00000000004AE508]                                 ; [rip+0009158B]
	test	rax,rax
	jnz	41CEC8h

l000000000041CF86:
	lea	rcx,[0000000000491160]                                 ; [rip+000741D3]
	xor	r8d,r8d
	mov	edx,8h
	call	421EA0h
	mov	[00000000004AE508],rax                                 ; [rip+00091567]
	jmp	41CEC8h
000000000041CFA6                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l000000000041CFB0:
	lea	rcx,[00000000004911D3]                                 ; [rip+0007421C]
	lea	r8,[000000000041C170]                                  ; [rip-00000E4E]
	mov	edx,8h
	call	421EA0h
	mov	rcx,rax
	mov	[00000000004AE518],rax                                 ; [rip+00091546]
	jmp	41CDF2h
000000000041CFD7                      66 0F 1F 84 00 00 00 00 00        f........

l000000000041CFE0:
	lea	rcx,[00000000004911D3]                                 ; [rip+000741EC]
	lea	r8,[000000000041C170]                                  ; [rip-00000E7E]
	mov	edx,8h
	call	421EA0h
	mov	rcx,rax
	mov	[00000000004AE518],rax                                 ; [rip+00091516]
	jmp	41CD5Dh
000000000041D007                      66 0F 1F 84 00 00 00 00 00        f........

l000000000041D010:
	lea	rcx,[00000000004911F9]                                 ; [rip+000741E2]
	xor	r8d,r8d
	mov	dl,8h
	call	421EA0h
	mov	[00000000004AE520],rax                                 ; [rip+000914F8]
	mov	rax,[rax]
	test	rax,rax
	jnz	41CDDBh

l000000000041D034:
	mov	rbx,[00000000004AE528]                                 ; [rip+000914ED]
	test	rbx,rbx
	jz	41D090h

l000000000041D040:
	mov	rax,[00000000004AE520]                                 ; [rip+000914D9]
	test	rax,rax
	jnz	41CEA3h

l000000000041D050:
	lea	rcx,[00000000004911F9]                                 ; [rip+000741A2]
	xor	r8d,r8d
	mov	edx,8h
	call	421EA0h
	mov	[00000000004AE520],rax                                 ; [rip+000914B5]
	jmp	41CEA3h

l000000000041D070:
	lea	rcx,[0000000000491160]                                 ; [rip+000740E9]
	xor	r8d,r8d
	mov	edx,8h
	call	421EA0h
	mov	[00000000004AE508],rax                                 ; [rip+0009147D]
	jmp	41CE11h

l000000000041D090:
	lea	rcx,[00000000004911E9]                                 ; [rip+00074152]
	xor	r8d,r8d
	mov	edx,8h
	call	421EA0h
	mov	rbx,rax
	mov	[00000000004AE528],rax                                 ; [rip+0009147A]
	jmp	41D040h

l000000000041D0B0:
	lea	rcx,[0000000000491170]                                 ; [rip+000740B9]
	xor	r8d,r8d
	mov	edx,8h
	call	421EA0h
	mov	[00000000004AE510],rax                                 ; [rip+00091445]
	jmp	41CEE6h

l000000000041D0D0:
	lea	rcx,[00000000004911B0]                                 ; [rip+000740D9]
	xor	r8d,r8d
	mov	edx,8h
	call	421EA0h
	mov	[00000000004AE500],rax                                 ; [rip+00091415]
	jmp	41CF0Eh

l000000000041D0F0:
	lea	rcx,[0000000000491160]                                 ; [rip+00074069]
	xor	r8d,r8d
	mov	edx,8h
	call	421EA0h
	mov	rbx,rax
	mov	[00000000004AE508],rax                                 ; [rip+000913FA]
	jmp	41CEFEh

l000000000041D113:
	lea	rcx,[0000000000491170]                                 ; [rip+00074056]
	xor	r8d,r8d
	mov	edx,8h
	call	421EA0h
	mov	[00000000004AE510],rax                                 ; [rip+000913E2]
	jmp	41CF5Eh
000000000041D133          66 66 66 66 2E 0F 1F 84 00 00 00 00 00    ffff.........

;; fn000000000041D140: 000000000041D140
;;   Called from:
;;     000000000041D1E8 (in fn000000000041D1D0)
;;     000000000041DA16 (in fn000000000041D9D0)
fn000000000041D140 proc
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,28h
	cmp	dword ptr [rcx],1h
	jz	41D19Bh

l000000000041D14D:
	mov	rbx,rcx
	call	41C2E0h
	lea	rbp,[rax+8h]
	mov	rdi,rax
	mov	rcx,rbp
	call	4208F0h
	mov	esi,[rbx]
	test	esi,esi
	jz	41D1B0h

l000000000041D16A:
	cmp	esi,1h
	jz	41D18Bh

l000000000041D16F:
	call	[00000000004AF744]                                    ; [rip+000925CF]
	lea	rdx,[000000000049121C]                                 ; [rip+000740A0]
	lea	rcx,[rax+60h]
	mov	r9d,esi
	mov	r8,rbx
	call	41BE78h

l000000000041D18B:
	mov	rcx,rbp
	call	4202A0h
	mov	rcx,rdi
	call	41C460h

l000000000041D19B:
	xor	eax,eax
	add	rsp,28h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
000000000041D1A6                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l000000000041D1B0:
	call	41CCC0h
	mov	rcx,rbp
	mov	dword ptr [rbx],1h
	call	4202A0h
	mov	rcx,rdi
	call	41C460h
	jmp	41D19Bh
000000000041D1CD                                        0F 1F 00              ...

;; fn000000000041D1D0: 000000000041D1D0
;;   Called from:
;;     000000000041DF82 (in fn000000000041DEE0)
;;     000000000041DF98 (in fn000000000041DEE0)
;;     000000000041DFB0 (in fn000000000041DEE0)
;;     000000000041E822 (in fn000000000041E810)
;;     000000000041E89E (in fn000000000041E880)
;;     000000000041E9B4 (in fn000000000041E9B0)
;;     000000000041E9E4 (in fn000000000041E9E0)
;;     000000000041EA44 (in fn000000000041EA40)
;;     000000000041EB19 (in fn000000000041EB10)
;;     000000000041EC90 (in fn000000000041EC70)
;;     000000000041ECE7 (in fn000000000041ECE0)
;;     000000000041ED15 (in fn000000000041ED10)
;;     000000000041EDF6 (in fn000000000041EDF0)
;;     000000000041EEBE (in fn000000000041EEA0)
;;     000000000041EEF0 (in fn000000000041EEA0)
;;     000000000041EF20 (in fn000000000041EEA0)
;;     000000000041EF48 (in fn000000000041EF40)
;;     000000000041F00E (in fn000000000041EFB0)
;;     000000000041F4AD (in fn000000000041F4A0)
;;     000000000041F51D (in fn000000000041F510)
;;     000000000041F7B0 (in fn000000000041F580)
;;     000000000041F88B (in fn000000000041F840)
;;     000000000041FA30 (in fn000000000041F940)
fn000000000041D1D0 proc
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,48h
	mov	rcx,[00000000004AE550]                                 ; [rip+00091371]
	test	rcx,rcx
	jz	41D310h

l000000000041D1E8:
	call	41D140h
	mov	rax,[00000000004AE548]                                 ; [rip+00091354]
	test	rax,rax
	jz	41D333h

l000000000041D1FD:
	mov	ecx,[rax]
	call	[00000000004AF6C4]                                    ; [rip+000924BF]
	test	rax,rax
	jz	41D213h

l000000000041D20A:
	add	rsp,48h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret

l000000000041D213:
	call	41CB10h
	test	rax,rax
	mov	rbx,rax
	jz	41D37Bh

l000000000041D224:
	cmp	[00000000004B1050],0h                                  ; [rip+00093E24]
	jz	41D37Bh

l000000000041D232:
	mov	dword ptr [rax+44h],1h
	call	[00000000004AF58C]                                    ; [rip+0009234D]
	xor	r9d,r9d
	xor	r8d,r8d
	xor	ecx,ecx
	mov	edx,1h
	mov	[rbx+68h],eax
	call	[00000000004AF534]                                    ; [rip+000922DF]
	mov	rsi,[00000000004AF574]                                 ; [rip+00092318]
	mov	[rbx+30h],rax
	mov	qword ptr [rbx+38h],-1h
	mov	qword ptr [rbx+60h],-1h
	mov	dword ptr [rbx+0B0h],0h
	mov	qword ptr [rbx+28h],+0h
	call	rsi
	mov	rbp,rax
	call	[00000000004AF584]                                    ; [rip+000922F7]
	mov	rdi,rax
	call	rsi
	mov	dword ptr [rsp+30h],2h
	mov	rcx,rax
	mov	dword ptr [rsp+28h],0h
	mov	dword ptr [rsp+20h],0h
	lea	r9,[rbx+28h]
	mov	r8,rbp
	mov	rdx,rdi
	call	[00000000004AF554]                                    ; [rip+00092297]
	test	eax,eax
	jz	41D382h

l000000000041D2C5:
	mov	rcx,[rbx+28h]
	call	[00000000004AF5DC]                                    ; [rip+0009230D]
	mov	[rbx+0B8h],eax
	movzx	eax,byte ptr [rbx+40h]
	mov	dword ptr [rbx+0B4h],0h
	and	eax,0CFh
	or	eax,10h
	mov	[rbx+40h],al
	mov	rax,[00000000004AE548]                                 ; [rip+00091255]
	test	rax,rax
	jz	41D357h

l000000000041D2F8:
	mov	rdx,rbx
	mov	ecx,[rax]
	call	[00000000004AF6CC]                                    ; [rip+000923C9]
	test	eax,eax
	jz	41D382h

l000000000041D307:
	mov	rax,rbx
	jmp	41D20Ah
000000000041D30F                                              90                .

l000000000041D310:
	lea	rcx,[000000000049122C]                                 ; [rip+00073F15]
	xor	r8d,r8d
	mov	edx,4h
	call	421EA0h
	mov	rcx,rax
	mov	[00000000004AE550],rax                                 ; [rip+00091222]
	jmp	41D1E8h

l000000000041D333:
	lea	r8,[000000000041C150]                                  ; [rip-000011EA]
	lea	rcx,[0000000000491209]                                 ; [rip+00073EC8]
	mov	edx,4h
	call	421EA0h
	mov	[00000000004AE548],rax                                 ; [rip+000911F6]
	jmp	41D1FDh

l000000000041D357:
	lea	r8,[000000000041C150]                                  ; [rip-0000120E]
	lea	rcx,[0000000000491209]                                 ; [rip+00073EA4]
	mov	edx,4h
	call	421EA0h
	mov	[00000000004AE548],rax                                 ; [rip+000911D2]
	jmp	41D2F8h

l000000000041D37B:
	xor	eax,eax
	jmp	41D20Ah

l000000000041D382:
	call	41BD30h
	nop
	nop	dword ptr [rax+rax+0h]

;; fn000000000041D390: 000000000041D390
;;   Called from:
;;     000000000041D388 (in fn000000000041D1D0)
fn000000000041D390 proc
	lea	rcx,[0000000000491244]                                 ; [rip+00073EAD]
	xor	r8d,r8d
	mov	edx,8h
	jmp	421EA0h
000000000041D3A4             66 66 66 2E 0F 1F 84 00 00 00 00 00     fff.........

;; fn000000000041D3B0: 000000000041D3B0
fn000000000041D3B0 proc
	lea	rcx,[000000000049125C]                                 ; [rip+00073EA5]
	xor	r8d,r8d
	mov	edx,4h
	jmp	421EA0h
000000000041D3C4             66 66 66 2E 0F 1F 84 00 00 00 00 00     fff.........

;; fn000000000041D3D0: 000000000041D3D0
fn000000000041D3D0 proc
	lea	rcx,[0000000000491276]                                 ; [rip+00073E9F]
	xor	r8d,r8d
	mov	edx,4h
	jmp	421EA0h
000000000041D3E4             66 66 66 2E 0F 1F 84 00 00 00 00 00     fff.........

;; fn000000000041D3F0: 000000000041D3F0
fn000000000041D3F0 proc
	lea	rcx,[000000000049122C]                                 ; [rip+00073E35]
	xor	r8d,r8d
	mov	edx,4h
	jmp	421EA0h
000000000041D404             66 66 66 2E 0F 1F 84 00 00 00 00 00     fff.........

;; fn000000000041D410: 000000000041D410
fn000000000041D410 proc
	lea	r8,[000000000041C150]                                  ; [rip-000012C7]
	lea	rcx,[0000000000491209]                                 ; [rip+00073DEB]
	mov	edx,4h
	jmp	421EA0h
000000000041D428                         0F 1F 84 00 00 00 00 00         ........

;; fn000000000041D430: 000000000041D430
fn000000000041D430 proc
	lea	r8,[000000000041C160]                                  ; [rip-000012D7]
	lea	rcx,[000000000049128C]                                 ; [rip+00073E4E]
	mov	edx,8h
	jmp	421EA0h
000000000041D448                         0F 1F 84 00 00 00 00 00         ........

;; fn000000000041D450: 000000000041D450
fn000000000041D450 proc
	lea	rcx,[00000000004912A4]                                 ; [rip+00073E4D]
	xor	r8d,r8d
	mov	edx,4h
	jmp	421EA0h
000000000041D464             66 66 66 2E 0F 1F 84 00 00 00 00 00     fff.........

;; fn000000000041D470: 000000000041D470
fn000000000041D470 proc
	lea	rcx,[00000000004912BB]                                 ; [rip+00073E44]
	xor	r8d,r8d
	mov	edx,4h
	jmp	421EA0h
000000000041D484             66 66 66 2E 0F 1F 84 00 00 00 00 00     fff.........

;; fn000000000041D490: 000000000041D490
fn000000000041D490 proc
	lea	rcx,[00000000004911E9]                                 ; [rip+00073D52]
	xor	r8d,r8d
	mov	edx,8h
	jmp	421EA0h
000000000041D4A4             66 66 66 2E 0F 1F 84 00 00 00 00 00     fff.........

;; fn000000000041D4B0: 000000000041D4B0
fn000000000041D4B0 proc
	lea	rcx,[00000000004911F9]                                 ; [rip+00073D42]
	xor	r8d,r8d
	mov	edx,8h
	jmp	421EA0h
000000000041D4C4             66 66 66 2E 0F 1F 84 00 00 00 00 00     fff.........

;; fn000000000041D4D0: 000000000041D4D0
fn000000000041D4D0 proc
	lea	r8,[000000000041C170]                                  ; [rip-00001367]
	lea	rcx,[00000000004911D3]                                 ; [rip+00073CF5]
	mov	edx,8h
	jmp	421EA0h
000000000041D4E8                         0F 1F 84 00 00 00 00 00         ........

;; fn000000000041D4F0: 000000000041D4F0
fn000000000041D4F0 proc
	lea	rcx,[0000000000491170]                                 ; [rip+00073C79]
	xor	r8d,r8d
	mov	edx,8h
	jmp	421EA0h
000000000041D504             66 66 66 2E 0F 1F 84 00 00 00 00 00     fff.........

;; fn000000000041D510: 000000000041D510
fn000000000041D510 proc
	lea	rcx,[0000000000491160]                                 ; [rip+00073C49]
	xor	r8d,r8d
	mov	edx,8h
	jmp	421EA0h
000000000041D524             66 66 66 2E 0F 1F 84 00 00 00 00 00     fff.........

;; fn000000000041D530: 000000000041D530
fn000000000041D530 proc
	lea	rcx,[00000000004911B0]                                 ; [rip+00073C79]
	xor	r8d,r8d
	mov	edx,8h
	jmp	421EA0h
000000000041D544             66 66 66 2E 0F 1F 84 00 00 00 00 00     fff.........

;; fn000000000041D550: 000000000041D550
fn000000000041D550 proc
	lea	rcx,[00000000004911C0]                                 ; [rip+00073C69]
	xor	r8d,r8d
	mov	edx,8h
	jmp	421EA0h
000000000041D564             66 66 66 2E 0F 1F 84 00 00 00 00 00     fff.........

;; fn000000000041D570: 000000000041D570
;;   Called from:
;;     000000000041D61E (in fn000000000041D610)
;;     000000000041DD39 (in fn000000000041DD10)
;;     000000000041DD47 (in fn000000000041DD10)
;;     000000000041DD5B (in fn000000000041DD10)
;;     000000000041EA14 (in fn000000000041EA10)
;;     000000000041ED95 (in fn000000000041ED90)
;;     000000000041EFBE (in fn000000000041EFB0)
;;     000000000041F84D (in fn000000000041F840)
;;     000000000041FBB6 (in fn000000000041FBB0)
fn000000000041D570 proc
	push	rbx
	sub	rsp,20h
	test	rcx,rcx
	jz	41D5B3h

l000000000041D57A:
	mov	rbx,rcx
	mov	rcx,[00000000004AE518]                                 ; [rip+00090F94]
	test	rcx,rcx
	jz	41D5C0h

l000000000041D589:
	call	4208F0h
	mov	rcx,rbx
	call	41C190h
	mov	rcx,[00000000004AE518]                                 ; [rip+00090F7B]
	mov	rbx,rax
	test	rcx,rcx
	jz	41D5E4h

l000000000041D5A5:
	call	4202A0h
	mov	rax,rbx
	add	rsp,20h
	pop	rbx
	ret

l000000000041D5B3:
	xor	eax,eax
	add	rsp,20h
	pop	rbx
	ret
000000000041D5BB                                  0F 1F 44 00 00            ..D..

l000000000041D5C0:
	lea	rcx,[00000000004911D3]                                 ; [rip+00073C0C]
	lea	r8,[000000000041C170]                                  ; [rip-0000145E]
	mov	edx,8h
	call	421EA0h
	mov	rcx,rax
	mov	[00000000004AE518],rax                                 ; [rip+00090F36]
	jmp	41D589h

l000000000041D5E4:
	lea	rcx,[00000000004911D3]                                 ; [rip+00073BE8]
	lea	r8,[000000000041C170]                                  ; [rip-00001482]
	mov	edx,8h
	call	421EA0h
	mov	rcx,rax
	mov	[00000000004AE518],rax                                 ; [rip+00090F12]
	jmp	41D5A5h
000000000041D608                         0F 1F 84 00 00 00 00 00         ........

;; fn000000000041D610: 000000000041D610
;;   Called from:
;;     000000000041D950 (in fn000000000041D7F0)
;;     000000000041D960 (in fn000000000041D7F0)
;;     000000000041DBB9 (in fn000000000041D9D0)
;;     000000000041E9A0 (in fn000000000041E990)
;;     000000000041EB92 (in fn000000000041EB10)
fn000000000041D610 proc
	push	r14
	push	r13
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,20h
	call	41D570h
	test	rax,rax
	mov	rsi,rax
	jnz	41D640h

l000000000041D62B:
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	ret
000000000041D63A                               66 0F 1F 44 00 00           f..D..

l000000000041D640:
	lea	rbp,[rax+60h]
	mov	r13d,100h

l000000000041D64A:
	mov	rcx,rbp
	call	422260h
	mov	eax,[rsi+48h]
	test	eax,eax
	jz	41D7D0h

l000000000041D65D:
	xor	r12d,r12d
	xor	edi,edi

l000000000041D662:
	mov	rax,[rsi+50h]
	mov	ebx,edi
	mov	r14,[rax+rbx*8]
	mov	rax,[rsi+58h]
	cmp	byte ptr [rax+rbx],0h
	jz	41D701h

l000000000041D67A:
	mov	rcx,[00000000004AE540]                                 ; [rip+00090EBF]
	test	rcx,rcx
	jz	41D750h

l000000000041D68A:
	call	422BF0h
	mov	rax,[00000000004AE568]                                 ; [rip+00090ED2]
	test	rax,rax
	jz	41D730h

l000000000041D69F:
	mov	rax,[rax]
	cmp	qword ptr [rax+rbx*8],1h
	mov	rax,[rsi+50h]
	mov	qword ptr [rax+rbx*8],+0h
	mov	rax,[rsi+58h]
	mov	byte ptr [rax+rbx],0h
	jbe	41D6ECh

l000000000041D6BD:
	mov	rcx,rbp
	call	422310h
	mov	rax,[00000000004AE568]                                 ; [rip+00090E9C]
	test	rax,rax
	jz	41D7B0h

l000000000041D6D5:
	mov	rax,[rax]
	mov	rcx,r14
	mov	r12d,1h
	call	qword ptr [rax+rbx*8]
	mov	rcx,rbp
	call	422260h

l000000000041D6EC:
	mov	rcx,[00000000004AE540]                                 ; [rip+00090E4D]
	test	rcx,rcx
	jz	41D780h

l000000000041D6FC:
	call	422EA0h

l000000000041D701:
	add	edi,1h
	cmp	edi,[rsi+48h]
	jc	41D662h

l000000000041D70D:
	mov	rcx,rbp
	call	422310h
	test	r12d,r12d
	jz	41D62Bh

l000000000041D71E:
	sub	r13d,1h
	jnz	41D64Ah

l000000000041D728:
	jmp	41D62Bh
000000000041D72D                                        0F 1F 00              ...

l000000000041D730:
	lea	rcx,[0000000000491244]                                 ; [rip+00073B0D]
	xor	r8d,r8d
	mov	edx,8h
	call	421EA0h
	mov	[00000000004AE568],rax                                 ; [rip+00090E1D]
	jmp	41D69Fh

l000000000041D750:
	lea	rcx,[000000000049128C]                                 ; [rip+00073B35]
	lea	r8,[000000000041C160]                                  ; [rip-000015FE]
	mov	edx,8h
	call	421EA0h
	mov	rcx,rax
	mov	[00000000004AE540],rax                                 ; [rip+00090DCE]
	jmp	41D68Ah
000000000041D777                      66 0F 1F 84 00 00 00 00 00        f........

l000000000041D780:
	lea	rcx,[000000000049128C]                                 ; [rip+00073B05]
	lea	r8,[000000000041C160]                                  ; [rip-0000162E]
	mov	edx,8h
	call	421EA0h
	mov	rcx,rax
	mov	[00000000004AE540],rax                                 ; [rip+00090D9E]
	jmp	41D6FCh
000000000041D7A7                      66 0F 1F 84 00 00 00 00 00        f........

l000000000041D7B0:
	lea	rcx,[0000000000491244]                                 ; [rip+00073A8D]
	xor	r8d,r8d
	mov	edx,8h
	call	421EA0h
	mov	[00000000004AE568],rax                                 ; [rip+00090D9D]
	jmp	41D6D5h

l000000000041D7D0:
	mov	rcx,rbp
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	jmp	422310h
000000000041D7E6                   66 2E 0F 1F 84 00 00 00 00 00       f.........

;; fn000000000041D7F0: 000000000041D7F0
fn000000000041D7F0 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	cmp	edx,3h
	jz	41D810h

l000000000041D7FB:
	mov	eax,1h
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret
000000000041D807                      66 0F 1F 84 00 00 00 00 00        f........

l000000000041D810:
	mov	rax,[00000000004AE548]                                 ; [rip+00090D31]
	test	rax,rax
	jz	41D970h

l000000000041D820:
	mov	ecx,[rax]
	cmp	ecx,0FFh
	jz	41D7FBh

l000000000041D827:
	call	[00000000004AF6C4]                                    ; [rip+00091E97]
	test	rax,rax
	mov	rbx,rax
	jz	41D7FBh

l000000000041D835:
	test	byte ptr [rax+40h],30h
	jz	41D8C1h

l000000000041D83F:
	mov	rcx,[rax+1C8h]
	test	rcx,rcx
	jnz	41D960h

l000000000041D84F:
	mov	rcx,[rbx+28h]
	test	rcx,rcx
	jz	41D87Ch

l000000000041D858:
	mov	rsi,[00000000004AF52C]                                 ; [rip+00091CCD]
	call	rsi
	mov	rcx,[rbx+30h]
	test	rcx,rcx
	jz	41D86Ch

l000000000041D86A:
	call	rsi

l000000000041D86C:
	mov	qword ptr [rbx+30h],+0h

l000000000041D874:
	mov	qword ptr [rbx+28h],+0h

l000000000041D87C:
	lea	rcx,[rbx+38h]
	call	420B50h
	cmp	qword ptr [rbx+1C0h],0h
	mov	qword ptr [rbx+60h],-1h
	jz	41D9B5h

l000000000041D89B:
	mov	rax,[00000000004AE548]                                 ; [rip+00090CA6]
	test	rax,rax
	jz	41D991h

l000000000041D8AB:
	mov	ecx,[rax]
	xor	edx,edx
	call	[00000000004AF6CC]                                    ; [rip+00091E17]
	mov	eax,1h
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret

l000000000041D8C1:
	mov	eax,[rax+0B4h]
	mov	rcx,[rbx+30h]
	test	eax,eax
	jnz	41D920h

l000000000041D8CF:
	test	rcx,rcx
	jz	41D8DAh

l000000000041D8D4:
	call	[00000000004AF52C]                                    ; [rip+00091C52]

l000000000041D8DA:
	mov	rcx,[rbx+1C8h]
	mov	qword ptr [rbx+30h],+0h
	mov	dword ptr [rbx+0B4h],1h
	test	rcx,rcx
	jnz	41D950h

l000000000041D8F8:
	test	byte ptr [rbx+44h],4h
	jz	41D933h

l000000000041D8FE:
	mov	rcx,[rbx+28h]
	mov	dword ptr [rbx],0DEADBEEFh
	test	rcx,rcx
	jz	41D874h

l000000000041D911:
	call	[00000000004AF52C]                                    ; [rip+00091C15]
	jmp	41D874h
000000000041D91C                                     0F 1F 40 00             ..@.

l000000000041D920:
	test	rcx,rcx
	jz	41D92Bh

l000000000041D925:
	call	[00000000004AF52C]                                    ; [rip+00091C01]

l000000000041D92B:
	mov	qword ptr [rbx+30h],+0h

l000000000041D933:
	lea	rcx,[rbx+38h]
	call	420B50h
	mov	qword ptr [rbx+60h],-1h
	jmp	41D7FBh
000000000041D949                            0F 1F 80 00 00 00 00          .......

l000000000041D950:
	call	41D610h
	jmp	41D8F8h
000000000041D957                      66 0F 1F 84 00 00 00 00 00        f........

l000000000041D960:
	call	41D610h
	jmp	41D84Fh
000000000041D96A                               66 0F 1F 44 00 00           f..D..

l000000000041D970:
	lea	r8,[000000000041C150]                                  ; [rip-00001827]
	lea	rcx,[0000000000491209]                                 ; [rip+0007388B]
	mov	dl,4h
	call	421EA0h
	mov	[00000000004AE548],rax                                 ; [rip+00090BBC]
	jmp	41D820h

l000000000041D991:
	lea	r8,[000000000041C150]                                  ; [rip-00001848]
	lea	rcx,[0000000000491209]                                 ; [rip+0007386A]
	mov	edx,4h
	call	421EA0h
	mov	[00000000004AE548],rax                                 ; [rip+00090B98]
	jmp	41D8ABh

l000000000041D9B5:
	mov	rcx,rbx
	call	41CD40h
	jmp	41D89Bh
000000000041D9C2       66 66 66 66 66 2E 0F 1F 84 00 00 00 00 00   fffff.........

;; fn000000000041D9D0: 000000000041D9D0
fn000000000041D9D0 proc
	push	rbp
	push	r12
	push	rdi
	push	rsi
	push	rbx
	mov	rbp,rsp
	sub	rsp,20h
	mov	[rbp+30h],rcx
	mov	rcx,[00000000004AE518]                                 ; [rip+00090B30]
	test	rcx,rcx
	jz	41DB2Dh

l000000000041D9F1:
	call	4208F0h
	mov	rax,[rbp+30h]
	lea	rbx,[rax+38h]
	mov	rcx,rbx
	call	4208F0h
	mov	rcx,[00000000004AE550]                                 ; [rip+00090B43]
	test	rcx,rcx
	jz	41DBE7h

l000000000041DA16:
	call	41D140h
	mov	rax,[00000000004AE548]                                 ; [rip+00090B26]
	test	rax,rax
	jz	41DBC3h

l000000000041DA2B:
	mov	rdx,[rbp+30h]
	mov	ecx,[rax]
	call	[00000000004AF6CC]                                    ; [rip+00091C95]
	call	[00000000004AF58C]                                    ; [rip+00091B4F]
	mov	rsi,[rbp+30h]
	mov	rcx,rbx
	mov	[rsi+68h],eax
	call	4202A0h
	mov	rax,[rbp+30h]
	mov	rdx,rbp
	lea	rcx,[rax+0C0h]
	call	423530h
	test	eax,eax
	jz	41DB54h

l000000000041DA67:
	mov	rax,[00000000004AE518]                                 ; [rip+00090AAA]
	test	rax,rax
	jz	41DC0Ah

l000000000041DA77:
	mov	rcx,rax
	call	4208F0h

l000000000041DA7F:
	mov	rax,[rbp+30h]
	lea	rbx,[rax+38h]
	mov	rcx,rbx
	call	4208F0h
	mov	rax,[rbp+30h]
	mov	rcx,[rax+30h]
	mov	rsi,[rax+8h]
	test	rcx,rcx
	jz	41DAA6h

l000000000041DAA0:
	call	[00000000004AF52C]                                    ; [rip+00091A86]

l000000000041DAA6:
	mov	rax,[rbp+30h]
	cmp	qword ptr [rax+28h],0h
	mov	qword ptr [rax+30h],+0h
	jz	41DC5Ch

l000000000041DABD:
	mov	rcx,rbx
	call	4202A0h
	mov	rcx,rbx
	call	420B50h
	mov	rax,[rbp+30h]
	mov	dword ptr [rax+0B4h],1h

l000000000041DADB:
	lea	r12,[000000000041C170]                                 ; [rip-00001972]
	lea	rdi,[00000000004911D3]                                 ; [rip+000736EA]
	mov	rbx,[00000000004AF6A4]                                 ; [rip+00091BB4]
	jmp	41DAF6h

l000000000041DAF2:
	xor	ecx,ecx
	call	rbx

l000000000041DAF6:
	mov	rax,[00000000004AE518]                                 ; [rip+00090A1B]
	test	rax,rax
	jnz	41DB19h

l000000000041DB02:
	mov	r8,r12
	mov	edx,8h
	mov	rcx,rdi
	call	421EA0h
	mov	[00000000004AE518],rax                                 ; [rip+000909FF]

l000000000041DB19:
	mov	rcx,rax
	call	4202A0h
	test	eax,eax
	jz	41DAF2h

l000000000041DB25:
	mov	ecx,esi
	call	[00000000004AF794]                                    ; [rip+00091C67]

l000000000041DB2D:
	lea	rcx,[00000000004911D3]                                 ; [rip+0007369F]
	lea	r8,[000000000041C170]                                  ; [rip-000019CB]
	mov	edx,8h
	call	421EA0h
	mov	rcx,rax
	mov	[00000000004AE518],rax                                 ; [rip+000909C9]
	jmp	41D9F1h

l000000000041DB54:
	mov	rax,[00000000004AE518]                                 ; [rip+000909BD]
	test	rax,rax
	jz	41DC38h

l000000000041DB64:
	mov	rcx,rax
	call	4202A0h
	mov	rax,[rbp+30h]
	mov	rax,[rax+10h]
	test	rax,rax
	jz	41DC2Eh

l000000000041DB7D:
	mov	rdi,[rbp+30h]
	mov	rcx,[rdi+8h]
	call	rax
	mov	rbx,rax

l000000000041DB8A:
	nop
	nop
	mov	rcx,[00000000004AE518]                                 ; [rip+00090985]
	test	rcx,rcx
	jz	41DCCDh

l000000000041DB9C:
	call	4208F0h
	mov	rax,[rbp+30h]
	mov	rcx,[rax+1C8h]
	mov	[rax+8h],rbx
	test	rcx,rcx
	jz	41DA7Fh

l000000000041DBB9:
	call	41D610h
	jmp	41DA7Fh

l000000000041DBC3:
	lea	r8,[000000000041C150]                                  ; [rip-00001A7A]
	lea	rcx,[0000000000491209]                                 ; [rip+00073638]
	mov	edx,4h
	call	421EA0h
	mov	[00000000004AE548],rax                                 ; [rip+00090966]
	jmp	41DA2Bh

l000000000041DBE7:
	lea	rcx,[000000000049122C]                                 ; [rip+0007363E]
	xor	r8d,r8d
	mov	edx,4h
	call	421EA0h
	mov	rcx,rax
	mov	[00000000004AE550],rax                                 ; [rip+0009094B]
	jmp	41DA16h

l000000000041DC0A:
	lea	r8,[000000000041C170]                                  ; [rip-00001AA1]
	lea	rcx,[00000000004911D3]                                 ; [rip+000735BB]
	mov	edx,8h
	call	421EA0h
	mov	[00000000004AE518],rax                                 ; [rip+000908EF]
	jmp	41DA77h

l000000000041DC2E:
	mov	ebx,80h
	jmp	41DB8Ah

l000000000041DC38:
	lea	r8,[000000000041C170]                                  ; [rip-00001ACF]
	lea	rcx,[00000000004911D3]                                 ; [rip+0007358D]
	mov	edx,8h
	call	421EA0h
	mov	[00000000004AE518],rax                                 ; [rip+000908C1]
	jmp	41DB64h

l000000000041DC5C:
	mov	rax,[rbp+30h]
	mov	rcx,rbx
	mov	dword ptr [rax],0DEADBEEFh
	call	4202A0h
	mov	rcx,rbx
	call	420B50h
	cmp	qword ptr [rbp+30h],0h
	jz	41DC93h

l000000000041DC7D:
	mov	rax,[rbp+30h]
	cmp	qword ptr [rax+1C0h],0h
	jnz	41DC93h

l000000000041DC8B:
	mov	rcx,rax
	call	41CD40h

l000000000041DC93:
	mov	rax,[00000000004AE548]                                 ; [rip+000908AE]
	test	rax,rax
	jnz	41DCBEh

l000000000041DC9F:
	lea	r8,[000000000041C150]                                  ; [rip-00001B56]
	lea	rcx,[0000000000491209]                                 ; [rip+0007355C]
	mov	edx,4h
	call	421EA0h
	mov	[00000000004AE548],rax                                 ; [rip+0009088A]

l000000000041DCBE:
	xor	edx,edx
	mov	ecx,[rax]
	call	[00000000004AF6CC]                                    ; [rip+00091A04]
	jmp	41DADBh

l000000000041DCCD:
	lea	rcx,[00000000004911D3]                                 ; [rip+000734FF]
	lea	r8,[000000000041C170]                                  ; [rip-00001B6B]
	mov	edx,8h
	call	421EA0h
	mov	rcx,rax
	mov	[00000000004AE518],rax                                 ; [rip+00090829]
	jmp	41DB9Ch
000000000041DCF4             66 66 66 2E 0F 1F 84 00 00 00 00 00     fff.........

;; fn000000000041DD00: 000000000041DD00
fn000000000041DD00 proc
	mov	[00000000004AE570],ecx                                 ; [rip+0009086A]
	ret
000000000041DD07                      66 0F 1F 84 00 00 00 00 00        f........

;; fn000000000041DD10: 000000000041DD10
fn000000000041DD10 proc
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,38h
	mov	eax,[00000000004AE570]                                 ; [rip+00090852]
	mov	[rsp+60h],rcx
	test	eax,eax
	jz	41DD80h

l000000000041DD27:
	mov	rax,[rsp+60h]
	mov	rbx,rdx
	test	rax,rax
	jz	41DD90h

l000000000041DD34:
	mov	rcx,[rsp+60h]
	call	41D570h
	mov	rcx,[rsp+60h]
	mov	rbp,[rax+28h]
	call	41D570h
	mov	edi,[rax]
	call	[00000000004AF58C]                                    ; [rip+00091838]
	mov	rcx,[rsp+60h]
	mov	esi,eax
	call	41D570h
	lea	rcx,[00000000004912DD]                                 ; [rip+00073576]
	mov	rdx,rax
	mov	[rsp+28h],rbx
	mov	[rsp+20h],rbp
	mov	r9d,edi
	mov	r8d,esi
	call	423538h
	nop

l000000000041DD80:
	add	rsp,38h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
000000000041DD89                            0F 1F 80 00 00 00 00          .......

l000000000041DD90:
	call	[00000000004AF58C]                                    ; [rip+000917F6]
	lea	rcx,[00000000004912D2]                                 ; [rip+00073535]
	mov	r8d,eax
	mov	r9,rbx
	xor	edx,edx
	add	rsp,38h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	jmp	423538h
000000000041DDB2       66 66 66 66 66 2E 0F 1F 84 00 00 00 00 00   fffff.........

;; fn000000000041DDC0: 000000000041DDC0
fn000000000041DDC0 proc
	lea	rcx,[000000000049118F]                                 ; [rip+000733C8]
	xor	r8d,r8d
	mov	edx,8h
	jmp	421EA0h
000000000041DDD4             66 66 66 2E 0F 1F 84 00 00 00 00 00     fff.........

;; fn000000000041DDE0: 000000000041DDE0
fn000000000041DDE0 proc
	lea	r8,[000000000041C180]                                  ; [rip-00001C67]
	lea	rcx,[000000000049117D]                                 ; [rip+0007338F]
	mov	edx,8h
	jmp	421EA0h
000000000041DDF8                         0F 1F 84 00 00 00 00 00         ........

;; fn000000000041DE00: 000000000041DE00
fn000000000041DE00 proc
	xor	eax,eax
	ret
000000000041DE03          66 66 66 66 2E 0F 1F 84 00 00 00 00 00    ffff.........

;; fn000000000041DE10: 000000000041DE10
fn000000000041DE10 proc
	sub	rsp,38h
	call	[00000000004AF574]                                    ; [rip+0009175A]
	lea	rdx,[rsp+20h]
	mov	rcx,rax
	lea	r8,[rsp+28h]
	call	[00000000004AF5B4]                                    ; [rip+00091787]
	test	eax,eax
	mov	ecx,1h
	jz	41DE59h

l000000000041DE36:
	mov	rdx,[rsp+20h]
	test	rdx,rdx
	jz	41DE59h

l000000000041DE40:
	xor	eax,eax

l000000000041DE42:
	mov	rcx,rdx
	and	ecx,1h
	add	eax,ecx
	shr	rdx,1h
	jnz	41DE42h

l000000000041DE4F:
	test	eax,eax
	mov	ecx,1h
	cmovnz	ecx,eax

l000000000041DE59:
	mov	eax,ecx
	add	rsp,38h
	ret

;; fn000000000041DE60: 000000000041DE60
fn000000000041DE60 proc
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,38h
	mov	eax,1h
	mov	rbp,[00000000004AF574]                                 ; [rip+00091700]
	test	ecx,ecx
	mov	edi,ecx
	cmovz	edi,eax

l000000000041DE7B:
	xor	esi,esi
	call	rbp
	lea	rdx,[rsp+20h]
	lea	r8,[rsp+28h]
	mov	rcx,rax
	call	[00000000004AF5B4]                                    ; [rip+00091722]
	test	eax,eax
	jz	41DED2h

l000000000041DE96:
	mov	r8,[rsp+20h]
	xor	ebx,ebx
	test	r8,r8
	jz	41DEC4h

l000000000041DEA2:
	add	rbx,rbx
	test	r8b,1h
	jz	41DEB6h

l000000000041DEAB:
	cmp	esi,edi
	jge	41DEB6h

l000000000041DEAF:
	or	rbx,1h
	add	esi,1h

l000000000041DEB6:
	shr	r8,1h
	jnz	41DEA2h

l000000000041DEBB:
	mov	qword ptr [rsp+20h],+0h

l000000000041DEC4:
	call	rbp
	mov	rdx,rbx
	mov	rcx,rax
	call	[00000000004AF684]                                    ; [rip+000917B2]

l000000000041DED2:
	mov	eax,esi
	add	rsp,38h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
000000000041DEDD                                        0F 1F 00              ...

;; fn000000000041DEE0: 000000000041DEE0
;;   Called from:
;;     00000000004692F3 (in fn00000000004692E0)
;;     000000000046AC62 (in fn000000000046AC50)
;;     0000000000475DF7 (in fn0000000000475DE0)
;;     0000000000475E1E (in fn0000000000475DE0)
;;     0000000000475EB1 (in fn0000000000475E80)
;;     0000000000475EE4 (in fn0000000000475E80)
;;     0000000000475EFE (in fn0000000000475E80)
;;     0000000000475F97 (in fn0000000000475F80)
;;     0000000000475FC1 (in fn0000000000475F80)
fn000000000041DEE0 proc
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,40h
	mov	eax,[rcx]
	test	rdx,rdx
	jz	41DF61h

l000000000041DEF1:
	cmp	eax,1h
	jz	41DF54h

l000000000041DEF6:
	mov	rbx,rcx
	mov	rsi,rdx
	call	41C2E0h
	lea	r12,[rax+8h]
	mov	rdi,rax
	mov	rcx,r12
	call	4208F0h
	mov	ebp,[rbx]
	test	ebp,ebp
	jz	41DF71h

l000000000041DF16:
	cmp	ebp,1h
	jz	41DF37h

l000000000041DF1B:
	call	[00000000004AF744]                                    ; [rip+00091823]
	lea	rdx,[000000000049121C]                                 ; [rip+000732F4]
	lea	rcx,[rax+60h]
	mov	r9d,ebp
	mov	r8,rbx
	call	41BE78h

l000000000041DF37:
	mov	rcx,r12
	call	4202A0h
	mov	rcx,rdi
	call	41C460h
	xor	eax,eax
	add	rsp,40h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret

l000000000041DF54:
	xor	eax,eax
	add	rsp,40h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret

l000000000041DF61:
	mov	eax,16h
	add	rsp,40h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret

l000000000041DF71:
	lea	rax,[000000000041C5E0]                                 ; [rip-00001998]
	mov	[rsp+28h],rdi
	mov	[rsp+20h],rax
	call	41D1D0h
	test	rax,rax
	jz	41DFD0h

l000000000041DF8C:
	mov	rax,[rax+18h]
	mov	[rsp+30h],rax
	mfence
	call	41D1D0h
	test	rax,rax
	jz	41DFF0h

l000000000041DFA2:
	lea	rdx,[rsp+20h]
	mov	[rax+18h],rdx
	mfence
	call	rsi
	call	41D1D0h
	test	rax,rax
	jz	41DFE0h

l000000000041DFBA:
	mov	rdx,[rsp+30h]
	mov	[rax+18h],rdx
	mov	dword ptr [rbx],1h
	jmp	41DF37h
000000000041DFCE                                           66 90               f.

l000000000041DFD0:
	mov	rax,[0000h]
	ud2
	nop	word ptr [rax+rax+0h]

l000000000041DFE0:
	mov	rax,[rsp+30h]
	mov	[0000h],rax
	ud2
	nop

l000000000041DFF0:
	lea	rax,[rsp+20h]
	mov	[0000h],rax
	ud2
	nop

;; fn000000000041E000: 000000000041E000
;;   Called from:
;;     0000000000476319 (in fn0000000000476300)
fn000000000041E000 proc
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,28h
	mov	eax,16h
	test	rcx,rcx
	jz	41E225h

l000000000041E016:
	mov	rsi,rcx
	mov	rcx,[00000000004AE540]                                 ; [rip+00090520]
	mov	rdi,rdx
	test	rcx,rcx
	jz	41E2FAh

l000000000041E02C:
	call	422F40h
	mov	rax,[00000000004AE530]                                 ; [rip+000904F8]
	test	rax,rax
	jz	41E286h

l000000000041E041:
	mov	ebx,[rax]
	jmp	41E075h

l000000000041E045:
	cmp	ebx,[rax]
	jnc	41E0A0h

l000000000041E049:
	mov	rax,[00000000004AE568]                                 ; [rip+00090518]
	test	rax,rax
	jz	41E230h

l000000000041E059:
	mov	rax,[rax]
	mov	r8d,ebx
	lea	rbp,[0000h+r8*8]
	cmp	qword ptr [rax+r8*8],0h
	jz	41E1F0h

l000000000041E072:
	add	ebx,1h

l000000000041E075:
	mov	rax,[00000000004AE538]                                 ; [rip+000904BC]
	test	rax,rax
	jnz	41E045h

l000000000041E081:
	lea	rcx,[00000000004912A4]                                 ; [rip+0007321C]
	xor	r8d,r8d
	mov	edx,4h
	call	421EA0h
	cmp	ebx,[rax]
	mov	[00000000004AE538],rax                                 ; [rip+0009049A]
	jc	41E049h

l000000000041E0A0:
	xor	ebx,ebx
	jmp	41E0D3h

l000000000041E0A4:
	cmp	ebx,[rax]
	jnc	41E100h

l000000000041E0A8:
	mov	rax,[00000000004AE568]                                 ; [rip+000904B9]
	test	rax,rax
	jz	41E250h

l000000000041E0B8:
	mov	rax,[rax]
	mov	edx,ebx
	lea	rbp,[0000h+rdx*8]
	cmp	qword ptr [rax+rdx*8],0h
	jz	41E1F0h

l000000000041E0D0:
	add	ebx,1h

l000000000041E0D3:
	mov	rax,[00000000004AE530]                                 ; [rip+00090456]
	test	rax,rax
	jnz	41E0A4h

l000000000041E0DF:
	lea	rcx,[00000000004912BB]                                 ; [rip+000731D5]
	xor	r8d,r8d
	mov	edx,4h
	call	421EA0h
	cmp	ebx,[rax]
	mov	[00000000004AE530],rax                                 ; [rip+00090434]
	jc	41E0A8h

l000000000041E0FE:
	nop

l000000000041E100:
	mov	rax,[00000000004AE538]                                 ; [rip+00090431]
	test	rax,rax
	jz	41E341h

l000000000041E110:
	cmp	dword ptr [rax],100000h
	jz	41E2B0h

l000000000041E11C:
	mov	eax,[rax]
	mov	edx,eax
	add	edx,edx
	jnz	41E127h

l000000000041E124:
	lea	edx,[rax+1h]

l000000000041E127:
	cmp	edx,100000h
	mov	ebp,100000h
	mov	rax,[00000000004AE568]                                 ; [rip+0009042F]
	cmovle	ebp,edx

l000000000041E13C:
	movsxd	rbx,ebp
	shl	rbx,3h
	test	rax,rax
	jz	41E3D3h

l000000000041E14C:
	mov	rcx,[rax]
	mov	rdx,rbx
	call	41BE68h
	test	rax,rax
	mov	rbx,rax
	jz	41E2B0h

l000000000041E163:
	mov	rax,[00000000004AE538]                                 ; [rip+000903CE]
	test	rax,rax
	jz	41E3F3h

l000000000041E173:
	mov	edx,[rax]
	mov	r8d,ebp
	sub	r8d,edx
	lea	rcx,[rbx+rdx*8]
	xor	edx,edx
	shl	r8,3h
	call	41BD88h
	mov	rax,[00000000004AE568]                                 ; [rip+000903D7]
	test	rax,rax
	jz	41E456h

l000000000041E19A:
	mov	[rax],rbx
	mov	rbx,[00000000004AE530]                                 ; [rip+0009038C]
	test	rbx,rbx
	jz	41E433h

l000000000041E1AD:
	mov	rdx,[00000000004AE538]                                 ; [rip+00090384]
	test	rdx,rdx
	jz	41E4B6h

l000000000041E1BD:
	mov	eax,[rdx]
	lea	ecx,[rax+1h]
	mov	[rbx],ecx
	mov	eax,[rdx]
	mov	[rsi],eax

l000000000041E1C8:
	test	rdi,rdi
	mov	[rdx],ebp
	mov	rax,[00000000004AE568]                                 ; [rip+00090394]
	jz	41E391h

l000000000041E1DA:
	test	rax,rax
	jz	41E476h

l000000000041E1E3:
	mov	edx,[rsi]
	mov	rax,[rax]
	mov	[rax+rdx*8],rdi
	jmp	41E20Eh
000000000041E1EE                                           66 90               f.

l000000000041E1F0:
	test	rdi,rdi
	mov	[rsi],ebx
	mov	rax,[00000000004AE568]                                 ; [rip+0009036C]
	jz	41E270h

l000000000041E1FE:
	test	rax,rax
	jz	41E321h

l000000000041E207:
	mov	rax,[rax]
	mov	[rax+rbp],rdi

l000000000041E20E:
	mov	rcx,[00000000004AE540]                                 ; [rip+0009032B]
	test	rcx,rcx
	jz	41E2D3h

l000000000041E21E:
	call	422EA0h
	xor	eax,eax

l000000000041E225:
	add	rsp,28h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
000000000041E22E                                           66 90               f.

l000000000041E230:
	lea	rcx,[0000000000491244]                                 ; [rip+0007300D]
	xor	r8d,r8d
	mov	edx,8h
	call	421EA0h
	mov	[00000000004AE568],rax                                 ; [rip+0009031D]
	jmp	41E059h

l000000000041E250:
	lea	rcx,[0000000000491244]                                 ; [rip+00072FED]
	xor	r8d,r8d
	mov	edx,8h
	call	421EA0h
	mov	[00000000004AE568],rax                                 ; [rip+000902FD]
	jmp	41E0B8h

l000000000041E270:
	test	rax,rax
	jz	41E413h

l000000000041E279:
	mov	rax,[rax]
	mov	qword ptr [rax+rbp],+1h
	jmp	41E20Eh

l000000000041E286:
	lea	rcx,[00000000004912BB]                                 ; [rip+0007302E]
	xor	r8d,r8d
	mov	edx,4h
	call	421EA0h
	mov	[00000000004AE530],rax                                 ; [rip+0009028F]
	jmp	41E041h
000000000041E2A6                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l000000000041E2B0:
	mov	rcx,[00000000004AE540]                                 ; [rip+00090289]
	test	rcx,rcx
	jz	41E3ACh

l000000000041E2C0:
	call	422EA0h
	mov	eax,0Ch
	add	rsp,28h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret

l000000000041E2D3:
	lea	rcx,[000000000049128C]                                 ; [rip+00072FB2]
	lea	r8,[000000000041C160]                                  ; [rip-00002181]
	mov	edx,8h
	call	421EA0h
	mov	rcx,rax
	mov	[00000000004AE540],rax                                 ; [rip+0009024B]
	jmp	41E21Eh

l000000000041E2FA:
	lea	rcx,[000000000049128C]                                 ; [rip+00072F8B]
	lea	r8,[000000000041C160]                                  ; [rip-000021A8]
	mov	edx,8h
	call	421EA0h
	mov	rcx,rax
	mov	[00000000004AE540],rax                                 ; [rip+00090224]
	jmp	41E02Ch

l000000000041E321:
	lea	rcx,[0000000000491244]                                 ; [rip+00072F1C]
	xor	r8d,r8d
	mov	edx,8h
	call	421EA0h
	mov	[00000000004AE568],rax                                 ; [rip+0009022C]
	jmp	41E207h

l000000000041E341:
	lea	rcx,[00000000004912A4]                                 ; [rip+00072F5C]
	xor	r8d,r8d
	mov	edx,4h
	call	421EA0h
	cmp	dword ptr [rax],100000h
	mov	[00000000004AE538],rax                                 ; [rip+000901D6]
	jz	41E2B0h

l000000000041E368:
	test	rax,rax
	jnz	41E11Ch

l000000000041E371:
	lea	rcx,[00000000004912A4]                                 ; [rip+00072F2C]
	xor	r8d,r8d
	mov	edx,4h
	call	421EA0h
	mov	[00000000004AE538],rax                                 ; [rip+000901AC]
	jmp	41E11Ch

l000000000041E391:
	test	rax,rax
	jz	41E496h

l000000000041E39A:
	mov	edx,[rsi]
	mov	rax,[rax]
	mov	qword ptr [rax+rdx*8],+1h
	jmp	41E20Eh

l000000000041E3AC:
	lea	rcx,[000000000049128C]                                 ; [rip+00072ED9]
	lea	r8,[000000000041C160]                                  ; [rip-0000225A]
	mov	edx,8h
	call	421EA0h
	mov	rcx,rax
	mov	[00000000004AE540],rax                                 ; [rip+00090172]
	jmp	41E2C0h

l000000000041E3D3:
	lea	rcx,[0000000000491244]                                 ; [rip+00072E6A]
	xor	r8d,r8d
	mov	edx,8h
	call	421EA0h
	mov	[00000000004AE568],rax                                 ; [rip+0009017A]
	jmp	41E14Ch

l000000000041E3F3:
	lea	rcx,[00000000004912A4]                                 ; [rip+00072EAA]
	xor	r8d,r8d
	mov	edx,4h
	call	421EA0h
	mov	[00000000004AE538],rax                                 ; [rip+0009012A]
	jmp	41E173h

l000000000041E413:
	lea	rcx,[0000000000491244]                                 ; [rip+00072E2A]
	xor	r8d,r8d
	mov	edx,8h
	call	421EA0h
	mov	[00000000004AE568],rax                                 ; [rip+0009013A]
	jmp	41E279h

l000000000041E433:
	lea	rcx,[00000000004912BB]                                 ; [rip+00072E81]
	xor	r8d,r8d
	mov	edx,4h
	call	421EA0h
	mov	rbx,rax
	mov	[00000000004AE530],rax                                 ; [rip+000900DF]
	jmp	41E1ADh

l000000000041E456:
	lea	rcx,[0000000000491244]                                 ; [rip+00072DE7]
	xor	r8d,r8d
	mov	edx,8h
	call	421EA0h
	mov	[00000000004AE568],rax                                 ; [rip+000900F7]
	jmp	41E19Ah

l000000000041E476:
	lea	rcx,[0000000000491244]                                 ; [rip+00072DC7]
	xor	r8d,r8d
	mov	edx,8h
	call	421EA0h
	mov	[00000000004AE568],rax                                 ; [rip+000900D7]
	jmp	41E1E3h

l000000000041E496:
	lea	rcx,[0000000000491244]                                 ; [rip+00072DA7]
	xor	r8d,r8d
	mov	edx,8h
	call	421EA0h
	mov	[00000000004AE568],rax                                 ; [rip+000900B7]
	jmp	41E39Ah

l000000000041E4B6:
	lea	rcx,[00000000004912A4]                                 ; [rip+00072DE7]
	mov	edx,4h
	xor	r8d,r8d
	call	421EA0h
	mov	[00000000004AE538],rax                                 ; [rip+00090067]
	mov	rdx,rax
	mov	eax,[rax]
	add	eax,1h
	mov	[rbx],eax
	mov	eax,[rdx]
	mov	[rsi],eax
	jmp	41E1C8h
000000000041E4E4             66 66 66 2E 0F 1F 84 00 00 00 00 00     fff.........

;; fn000000000041E4F0: 000000000041E4F0
fn000000000041E4F0 proc
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,20h
	mov	rax,[00000000004AE538]                                 ; [rip+00090037]
	mov	ebp,ecx
	test	rax,rax
	jz	41E6D0h

l000000000041E50C:
	cmp	[rax],ebp
	ja	41E520h

l000000000041E510:
	mov	eax,16h
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret

l000000000041E520:
	mov	rax,[00000000004AE568]                                 ; [rip+00090041]
	test	rax,rax
	jz	41E737h

l000000000041E530:
	cmp	qword ptr [rax],0h
	jz	41E510h

l000000000041E536:
	mov	rcx,[00000000004AE540]                                 ; [rip+00090003]
	test	rcx,rcx
	jz	41E7C5h

l000000000041E546:
	call	422F40h
	mov	rax,[00000000004AE568]                                 ; [rip+00090016]
	test	rax,rax
	jz	41E7ECh

l000000000041E55B:
	mov	rax,[rax]
	mov	r12d,ebp
	lea	rdi,[0000h]
	mov	qword ptr [rax],+0h
	mov	rax,[00000000004AE530]                                 ; [rip+0008FFB8]
	test	rax,rax
	jz	41E7A5h

l000000000041E581:
	cmp	ebp,[rax]
	jc	41E690h

l000000000041E589:
	mov	rcx,[00000000004AE518]                                 ; [rip+0008FF88]
	test	rcx,rcx
	jz	41E77Eh

l000000000041E599:
	call	4208F0h
	mov	rax,[00000000004AE508]                                 ; [rip+0008FF63]
	xor	ebx,ebx
	xor	esi,esi
	test	rax,rax
	jz	41E631h

l000000000041E5B2:
	cmp	rsi,[rax]
	jnc	41E655h

l000000000041E5BB:
	mov	rax,[00000000004AE510]                                 ; [rip+0008FF4E]
	test	rax,rax
	jz	41E6A0h

l000000000041E5CB:
	mov	rax,[rax]
	mov	rax,[rax+rbx]
	test	rax,rax
	jz	41E61Dh

l000000000041E5D7:
	cmp	qword ptr [rax+50h],0h
	jz	41E61Dh

l000000000041E5DE:
	mov	rax,[00000000004AE510]                                 ; [rip+0008FF2B]
	mov	rax,[rax]
	mov	rax,[rax+rbx]
	cmp	ebp,[rax+48h]
	jnc	41E61Dh

l000000000041E5F1:
	mov	rax,[rax+50h]
	mov	qword ptr [rax+rdi],+0h
	mov	rax,[00000000004AE510]                                 ; [rip+0008FF0C]
	test	rax,rax
	jz	41E6F0h

l000000000041E60D:
	mov	rax,[rax]
	mov	rax,[rax+rbx]
	mov	rax,[rax+58h]
	mov	byte ptr [rax],0h

l000000000041E61D:
	mov	rax,[00000000004AE508]                                 ; [rip+0008FEE4]
	add	rsi,1h
	add	rbx,10h
	test	rax,rax
	jnz	41E5B2h

l000000000041E631:
	lea	rcx,[0000000000491160]                                 ; [rip+00072B28]
	xor	r8d,r8d
	mov	edx,8h
	call	421EA0h
	cmp	rsi,[rax]
	mov	[00000000004AE508],rax                                 ; [rip+0008FEB9]
	jc	41E5BBh

l000000000041E655:
	mov	rcx,[00000000004AE518]                                 ; [rip+0008FEBC]
	test	rcx,rcx
	jz	41E710h

l000000000041E665:
	call	4202A0h
	mov	rcx,[00000000004AE540]                                 ; [rip+0008FECF]
	test	rcx,rcx
	jz	41E757h

l000000000041E67A:
	call	422EA0h
	xor	eax,eax
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
000000000041E68C                                     0F 1F 40 00             ..@.

l000000000041E690:
	mov	[rax],ebp
	jmp	41E589h
000000000041E697                      66 0F 1F 84 00 00 00 00 00        f........

l000000000041E6A0:
	lea	rcx,[0000000000491170]                                 ; [rip+00072AC9]
	xor	r8d,r8d
	mov	edx,8h
	call	421EA0h
	mov	[00000000004AE510],rax                                 ; [rip+0008FE55]
	mov	rax,[rax]
	mov	rax,[rax+rbx]
	test	rax,rax
	jnz	41E5D7h

l000000000041E6CB:
	jmp	41E61Dh

l000000000041E6D0:
	lea	rcx,[00000000004912A4]                                 ; [rip+00072BCD]
	xor	r8d,r8d
	mov	edx,4h
	call	421EA0h
	mov	[00000000004AE538],rax                                 ; [rip+0008FE4D]
	jmp	41E50Ch

l000000000041E6F0:
	lea	rcx,[0000000000491170]                                 ; [rip+00072A79]
	xor	r8d,r8d
	mov	edx,8h
	call	421EA0h
	mov	[00000000004AE510],rax                                 ; [rip+0008FE05]
	jmp	41E60Dh

l000000000041E710:
	lea	rcx,[00000000004911D3]                                 ; [rip+00072ABC]
	lea	r8,[000000000041C170]                                  ; [rip-000025AE]
	mov	edx,8h
	call	421EA0h
	mov	rcx,rax
	mov	[00000000004AE518],rax                                 ; [rip+0008FDE6]
	jmp	41E665h

l000000000041E737:
	lea	rcx,[0000000000491244]                                 ; [rip+00072B06]
	xor	r8d,r8d
	mov	edx,8h
	call	421EA0h
	mov	[00000000004AE568],rax                                 ; [rip+0008FE16]
	jmp	41E530h

l000000000041E757:
	lea	rcx,[000000000049128C]                                 ; [rip+00072B2E]
	lea	r8,[000000000041C160]                                  ; [rip-00002605]
	mov	edx,8h
	call	421EA0h
	mov	rcx,rax
	mov	[00000000004AE540],rax                                 ; [rip+0008FDC7]
	jmp	41E67Ah

l000000000041E77E:
	lea	rcx,[00000000004911D3]                                 ; [rip+00072A4E]
	lea	r8,[000000000041C170]                                  ; [rip-0000261C]
	mov	edx,8h
	call	421EA0h
	mov	rcx,rax
	mov	[00000000004AE518],rax                                 ; [rip+0008FD78]
	jmp	41E599h

l000000000041E7A5:
	lea	rcx,[00000000004912BB]                                 ; [rip+00072B0F]
	xor	r8d,r8d
	mov	edx,4h
	call	421EA0h
	mov	[00000000004AE530],rax                                 ; [rip+0008FD70]
	jmp	41E581h

l000000000041E7C5:
	lea	rcx,[000000000049128C]                                 ; [rip+00072AC0]
	lea	r8,[000000000041C160]                                  ; [rip-00002673]
	mov	edx,8h
	call	421EA0h
	mov	rcx,rax
	mov	[00000000004AE540],rax                                 ; [rip+0008FD59]
	jmp	41E546h

l000000000041E7EC:
	lea	rcx,[0000000000491244]                                 ; [rip+00072A51]
	xor	r8d,r8d
	mov	edx,8h
	call	421EA0h
	mov	[00000000004AE568],rax                                 ; [rip+0008FD61]
	jmp	41E55Bh
000000000041E80C                                     0F 1F 40 00             ..@.

;; fn000000000041E810: 000000000041E810
;;   Called from:
;;     0000000000475C6D (in fn0000000000475C50)
;;     0000000000475D68 (in fn0000000000475D50)
fn000000000041E810 proc
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,28h
	mov	ebx,ecx
	call	[00000000004AF59C]                                    ; [rip+00090D7C]
	mov	ebp,eax
	call	41D1D0h
	lea	rdi,[rax+60h]
	mov	rsi,rax
	mov	rcx,rdi
	call	422260h
	cmp	[rsi+48h],ebx
	jbe	41E870h

l000000000041E83B:
	mov	rax,[rsi+58h]
	cmp	byte ptr [rax+rbx],0h
	jz	41E870h

l000000000041E845:
	mov	rax,[rsi+50h]
	mov	rbx,[rax+rbx*8]

l000000000041E84D:
	mov	rcx,rdi
	call	422310h
	mov	ecx,ebp
	call	[00000000004AF67C]                                    ; [rip+00090E1F]
	mov	rax,rbx
	add	rsp,28h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
000000000041E869                            0F 1F 80 00 00 00 00          .......

l000000000041E870:
	xor	ebx,ebx
	jmp	41E84Dh
000000000041E874             66 66 66 2E 0F 1F 84 00 00 00 00 00     fff.........

;; fn000000000041E880: 000000000041E880
;;   Called from:
;;     0000000000475CD3 (in fn0000000000475C50)
fn000000000041E880 proc
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,28h
	mov	esi,ecx
	mov	r13,rdx
	call	[00000000004AF59C]                                    ; [rip+00090D01]
	mov	r12d,eax
	call	41D1D0h
	lea	rbp,[rax+60h]
	mov	rbx,rax
	mov	rcx,rbp
	call	422260h
	cmp	[rbx+48h],esi
	jbe	41E8F0h

l000000000041E8B7:
	mov	rdi,[rbx+50h]

l000000000041E8BB:
	mov	[rdi+rsi*8],r13
	mov	rax,[rbx+58h]
	mov	rcx,rbp
	mov	byte ptr [rax+rsi],1h
	call	422310h
	mov	ecx,r12d
	call	[00000000004AF67C]                                    ; [rip+00090DA4]
	xor	eax,eax

l000000000041E8DA:
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
000000000041E8EB                                  0F 1F 44 00 00            ..D..

l000000000041E8F0:
	lea	r14d,[rsi+1h]
	mov	rcx,[rbx+50h]
	movsxd	r15,r14d
	lea	rdx,[0000h+r15*8]
	call	41BE68h
	test	rax,rax
	mov	rdi,rax
	jz	41E963h

l000000000041E910:
	mov	rcx,[rbx+58h]
	mov	rdx,r15
	call	41BE68h
	test	rax,rax
	mov	r15,rax
	jz	41E963h

l000000000041E924:
	mov	edx,[rbx+48h]
	mov	r8d,r14d
	lea	rcx,[rdi+rdx*8]
	sub	r8d,edx
	xor	edx,edx
	shl	r8,3h
	call	41BD88h
	mov	ecx,[rbx+48h]
	mov	r8d,r14d
	xor	edx,edx
	mov	rax,rcx
	add	rcx,r15
	sub	r8d,eax
	call	41BD88h
	mov	[rbx+50h],rdi
	mov	[rbx+58h],r15
	mov	[rbx+48h],r14d
	jmp	41E8BBh

l000000000041E963:
	mov	rcx,rbp
	call	422310h
	mov	eax,0Ch
	jmp	41E8DAh
000000000041E975                66 66 2E 0F 1F 84 00 00 00 00 00      ff.........

;; fn000000000041E980: 000000000041E980
fn000000000041E980 proc
	xor	eax,eax
	cmp	rcx,rdx
	setz	al
	ret
000000000041E989                            0F 1F 80 00 00 00 00          .......

;; fn000000000041E990: 000000000041E990
fn000000000041E990 proc
	test	rcx,rcx
	jnz	41E9A0h

l000000000041E995:
	ret
000000000041E997                      66 0F 1F 84 00 00 00 00 00        f........

l000000000041E9A0:
	jmp	41D610h
000000000041E9A5                66 66 2E 0F 1F 84 00 00 00 00 00      ff.........

;; fn000000000041E9B0: 000000000041E9B0
fn000000000041E9B0 proc
	sub	rsp,28h
	call	41D1D0h
	test	rax,rax
	jz	41E9D0h

l000000000041E9BE:
	mov	rax,[rax+1C8h]
	add	rsp,28h
	ret
000000000041E9CA                               66 0F 1F 44 00 00           f..D..

l000000000041E9D0:
	xor	eax,eax
	add	rsp,28h
	ret
000000000041E9D7                      66 0F 1F 84 00 00 00 00 00        f........

;; fn000000000041E9E0: 000000000041E9E0
;;   Called from:
;;     0000000000421263 (in fn0000000000421240)
fn000000000041E9E0 proc
	sub	rsp,28h
	call	41D1D0h
	test	rax,rax
	jz	41EA00h

l000000000041E9EE:
	mov	rax,[rax+30h]

l000000000041E9F2:
	add	rsp,28h
	ret
000000000041E9F7                      66 0F 1F 84 00 00 00 00 00        f........

l000000000041EA00:
	xor	eax,eax
	jmp	41E9F2h
000000000041EA04             66 66 66 2E 0F 1F 84 00 00 00 00 00     fff.........

;; fn000000000041EA10: 000000000041EA10
fn000000000041EA10 proc
	sub	rsp,28h
	call	41D570h
	test	rax,rax
	jz	41EA30h

l000000000041EA1E:
	mov	rax,[rax+28h]

l000000000041EA22:
	add	rsp,28h
	ret
000000000041EA27                      66 0F 1F 84 00 00 00 00 00        f........

l000000000041EA30:
	xor	eax,eax
	jmp	41EA22h
000000000041EA34             66 66 66 2E 0F 1F 84 00 00 00 00 00     fff.........

;; fn000000000041EA40: 000000000041EA40
;;   Called from:
;;     0000000000421AB9 (in fn00000000004219D0)
;;     0000000000421AC9 (in fn00000000004219D0)
;;     0000000000421AE9 (in fn00000000004219D0)
;;     0000000000421D66 (in fn0000000000421C70)
;;     0000000000421D76 (in fn0000000000421C70)
;;     0000000000421D96 (in fn0000000000421C70)
;;     0000000000422FC7 (in fn0000000000422F40)
;;     0000000000422FD7 (in fn0000000000422F40)
;;     0000000000423008 (in fn0000000000422F40)
;;     0000000000423022 (in fn0000000000422F40)
;;     0000000000423128 (in fn0000000000423070)
;;     0000000000423138 (in fn0000000000423070)
;;     000000000042316B (in fn0000000000423070)
;;     00000000004231CF (in fn0000000000423070)
fn000000000041EA40 proc
	sub	rsp,28h
	call	41D1D0h
	test	rax,rax
	jz	41EA60h

l000000000041EA4E:
	add	rax,18h

l000000000041EA52:
	add	rsp,28h
	ret
000000000041EA57                      66 0F 1F 84 00 00 00 00 00        f........

l000000000041EA60:
	xor	eax,eax
	jmp	41EA52h
000000000041EA64             66 66 66 2E 0F 1F 84 00 00 00 00 00     fff.........

;; fn000000000041EA70: 000000000041EA70
fn000000000041EA70 proc
	push	rbx
	sub	rsp,20h
	mov	rax,[00000000004AE558]                                 ; [rip+0008FADC]
	mov	rbx,rcx
	test	rax,rax
	jz	41EA90h

l000000000041EA84:
	mov	eax,[rax]
	mov	[rbx],eax
	xor	eax,eax
	add	rsp,20h
	pop	rbx
	ret

l000000000041EA90:
	lea	rcx,[0000000000491276]                                 ; [rip+000727DF]
	xor	r8d,r8d
	mov	edx,4h
	call	421EA0h
	mov	[00000000004AE558],rax                                 ; [rip+0008FAAD]
	mov	eax,[rax]
	mov	[rbx],eax
	xor	eax,eax
	add	rsp,20h
	pop	rbx
	ret
000000000041EAB7                      66 0F 1F 84 00 00 00 00 00        f........

;; fn000000000041EAC0: 000000000041EAC0
fn000000000041EAC0 proc
	push	rbx
	sub	rsp,20h
	mov	rax,[00000000004AE558]                                 ; [rip+0008FA8C]
	mov	ebx,ecx
	test	rax,rax
	jz	41EAE0h

l000000000041EAD3:
	mov	[rax],ebx
	xor	eax,eax
	add	rsp,20h
	pop	rbx
	ret
000000000041EADD                                        0F 1F 00              ...

l000000000041EAE0:
	lea	rcx,[0000000000491276]                                 ; [rip+0007278F]
	xor	r8d,r8d
	mov	edx,4h
	call	421EA0h
	mov	[00000000004AE558],rax                                 ; [rip+0008FA5D]
	mov	[rax],ebx
	xor	eax,eax
	add	rsp,20h
	pop	rbx
	ret
000000000041EB05                66 66 2E 0F 1F 84 00 00 00 00 00      ff.........

;; fn000000000041EB10: 000000000041EB10
;;   Called from:
;;     000000000041ED6B (in fn000000000041ED10)
fn000000000041EB10 proc
	push	rsi
	push	rbx
	sub	rsp,38h
	mov	rsi,rcx
	call	41D1D0h
	mov	rcx,[rax+1C8h]
	mov	[rax+8h],rsi
	test	rcx,rcx
	jnz	41EB8Dh

l000000000041EB2E:
	test	byte ptr [rax+40h],30h
	jz	41EB9Eh

l000000000041EB34:
	mov	rax,[00000000004AE548]                                 ; [rip+0008FA0D]
	test	rax,rax
	jz	41EC1Dh

l000000000041EB44:
	mov	ecx,[rax]
	call	[00000000004AF6C4]                                    ; [rip+00090B78]
	test	rax,rax
	mov	rbx,rax
	jz	41EB85h

l000000000041EB54:
	cmp	qword ptr [rax+28h],0h
	jz	41EBAFh

l000000000041EB5B:
	mov	rcx,[rax+30h]
	mov	esi,[rax+8h]
	mov	dword ptr [rax+0B4h],1h
	test	rcx,rcx
	jz	41EB77h

l000000000041EB71:
	call	[00000000004AF52C]                                    ; [rip+000909B5]

l000000000041EB77:
	test	byte ptr [rbx+44h],4h
	mov	qword ptr [rbx+30h],+0h
	jnz	41EBF1h

l000000000041EB85:
	mov	ecx,esi
	call	[00000000004AF794]                                    ; [rip+00090C07]

l000000000041EB8D:
	mov	[rsp+28h],rax
	call	41D610h
	mov	rax,[rsp+28h]
	jmp	41EB2Eh

l000000000041EB9E:
	lea	rcx,[rax+0C0h]
	mov	edx,1h
	call	423516h

l000000000041EBAF:
	mov	rcx,[rax+30h]
	mov	dword ptr [rax],0DEADBEEFh
	test	rcx,rcx
	jz	41EBC4h

l000000000041EBBE:
	call	[00000000004AF52C]                                    ; [rip+00090968]

l000000000041EBC4:
	cmp	qword ptr [rbx+1C0h],0h
	mov	qword ptr [rbx+30h],+0h
	mov	esi,[rbx+8h]
	jz	41EC13h

l000000000041EBD9:
	mov	rax,[00000000004AE548]                                 ; [rip+0008F968]
	test	rax,rax
	jz	41EC41h

l000000000041EBE5:
	xor	edx,edx
	mov	ecx,[rax]
	call	[00000000004AF6CC]                                    ; [rip+00090ADD]
	jmp	41EB85h

l000000000041EBF1:
	mov	dword ptr [rbx],0DEADBEEFh
	mov	rcx,[rbx+28h]
	call	[00000000004AF52C]                                    ; [rip+0009092B]
	cmp	qword ptr [rbx+1C0h],0h
	mov	qword ptr [rbx+28h],+0h
	jnz	41EBD9h

l000000000041EC13:
	mov	rcx,rbx
	call	41CD40h
	jmp	41EBD9h

l000000000041EC1D:
	lea	r8,[000000000041C150]                                  ; [rip-00002AD4]
	lea	rcx,[0000000000491209]                                 ; [rip+000725DE]
	mov	edx,4h
	call	421EA0h
	mov	[00000000004AE548],rax                                 ; [rip+0008F90C]
	jmp	41EB44h

l000000000041EC41:
	lea	r8,[000000000041C150]                                  ; [rip-00002AF8]
	lea	rcx,[0000000000491209]                                 ; [rip+000725BA]
	mov	edx,4h
	call	421EA0h
	mov	[00000000004AE548],rax                                 ; [rip+0008F8E8]
	jmp	41EBE5h
000000000041EC62       66 66 66 66 66 2E 0F 1F 84 00 00 00 00 00   fffff.........

;; fn000000000041EC70: 000000000041EC70
;;   Called from:
;;     00000000004212D6 (in fn0000000000421240)
;;     00000000004213E4 (in fn0000000000421240)
;;     0000000000421414 (in fn0000000000421240)
;;     0000000000421460 (in fn0000000000421240)
;;     0000000000421472 (in fn0000000000421240)
;;     00000000004214A0 (in fn0000000000421240)
fn000000000041EC70 proc
	sub	rsp,28h
	mov	rax,[00000000004AE560]                                 ; [rip+0008F8E5]
	test	rax,rax
	jz	41ECB4h

l000000000041EC80:
	mov	r8d,[rax]
	test	r8d,r8d
	jnz	41EC90h

l000000000041EC88:
	xor	eax,eax

l000000000041EC8A:
	add	rsp,28h
	ret
000000000041EC8F                                              90                .

l000000000041EC90:
	call	41D1D0h
	test	rax,rax
	mov	rdx,rax
	jz	41EC88h

l000000000041EC9D:
	mov	ecx,[rdx+20h]
	xor	eax,eax
	test	ecx,ecx
	jg	41EC8Ah

l000000000041ECA6:
	test	byte ptr [rdx+40h],3h
	jz	41EC8Ah

l000000000041ECAC:
	mov	eax,[rdx+44h]
	and	eax,1h
	jmp	41EC8Ah

l000000000041ECB4:
	lea	rcx,[000000000049125C]                                 ; [rip+000725A1]
	xor	r8d,r8d
	mov	edx,4h
	call	421EA0h
	mov	[00000000004AE560],rax                                 ; [rip+0008F891]
	jmp	41EC80h
000000000041ECD1    66 66 66 66 66 66 2E 0F 1F 84 00 00 00 00 00  ffffff.........

;; fn000000000041ECE0: 000000000041ECE0
;;   Called from:
;;     000000000041ED2F (in fn000000000041ED10)
;;     000000000041ED61 (in fn000000000041ED10)
fn000000000041ECE0 proc
	push	rbx
	sub	rsp,20h
	mov	ebx,ecx
	call	41D1D0h
	test	rax,rax
	jz	41ECFAh

l000000000041ECF1:
	test	ebx,ebx
	jle	41ED00h

l000000000041ECF5:
	lock
	add	dword ptr [rax+20h],1h

l000000000041ECFA:
	add	rsp,20h
	pop	rbx
	ret

l000000000041ED00:
	lock
	sub	dword ptr [rax+20h],1h
	add	rsp,20h
	pop	rbx
	ret
000000000041ED0B                                  0F 1F 44 00 00            ..D..

;; fn000000000041ED10: 000000000041ED10
;;   Called from:
;;     000000000041EDDC (in fn000000000041ED90)
;;     000000000041EE98 (in fn000000000041EDF0)
;;     000000000041F0EB (in fn000000000041EFB0)
fn000000000041ED10 proc
	push	rbx
	sub	rsp,20h
	call	41D1D0h
	movzx	edx,byte ptr [rax+40h]
	mov	ecx,1h
	mov	rbx,rax
	and	edx,0F3h
	or	edx,4h
	mov	[rax+40h],dl
	call	41ECE0h
	mov	rax,[00000000004AE560]                                 ; [rip+0008F825]
	test	rax,rax
	jz	41ED70h

l000000000041ED40:
	lock
	sub	dword ptr [rax],1h
	mov	rbx,[rbx+18h]
	test	rbx,rbx
	jz	41ED5Fh

l000000000041ED4D:
	nop	dword ptr [rax]

l000000000041ED50:
	mov	rcx,[rbx+8h]
	call	qword ptr [rbx]
	mov	rbx,[rbx+10h]
	test	rbx,rbx
	jnz	41ED50h

l000000000041ED5F:
	xor	ecx,ecx
	call	41ECE0h
	mov	ecx,0DEADBEEFh
	call	41EB10h

l000000000041ED70:
	lea	rcx,[000000000049125C]                                 ; [rip+000724E5]
	xor	r8d,r8d
	mov	edx,4h
	call	421EA0h
	mov	[00000000004AE560],rax                                 ; [rip+0008F7D5]
	jmp	41ED40h
000000000041ED8D                                        0F 1F 00              ...

;; fn000000000041ED90: 000000000041ED90
;;   Called from:
;;     000000000041F4FD (in fn000000000041F4A0)
;;     000000000041F56D (in fn000000000041F510)
fn000000000041ED90 proc
	push	rbx
	sub	rsp,20h
	call	41D570h
	test	rax,rax
	mov	rbx,rax
	jz	41EDBDh

l000000000041EDA2:
	test	byte ptr [rax+40h],0Ch
	jnz	41EDBDh

l000000000041EDA8:
	mov	eax,[rax+0B4h]
	test	eax,eax
	jnz	41EDBDh

l000000000041EDB2:
	mov	eax,[rbx+44h]
	and	eax,3h
	cmp	eax,3h
	jz	41EDC3h

l000000000041EDBD:
	add	rsp,20h
	pop	rbx
	ret

l000000000041EDC3:
	xor	edx,edx
	mov	rcx,[rbx+30h]
	call	[00000000004AF6FC]                                    ; [rip+0009092D]
	test	eax,eax
	jnz	41EDBDh

l000000000041EDD3:
	lea	rcx,[rbx+38h]
	call	4202A0h
	call	41ED10h
	nop
	nop	word ptr cs:[rax+rax+0h]

;; fn000000000041EDF0: 000000000041EDF0
;;   Called from:
;;     000000000041EDE2 (in fn000000000041ED90)
;;     000000000041EECB (in fn000000000041EEA0)
;;     000000000041EEE1 (in fn000000000041EEA0)
;;     000000000041EEFF (in fn000000000041EEA0)
;;     000000000041EF0C (in fn000000000041EEA0)
;;     000000000041EF54 (in fn000000000041EF40)
;;     000000000041EF6A (in fn000000000041EF40)
;;     000000000041EF80 (in fn000000000041EF40)
;;     000000000041EF8D (in fn000000000041EF40)
;;     0000000000421367 (in fn0000000000421240)
;;     00000000004213DA (in fn0000000000421240)
;;     000000000042142B (in fn0000000000421240)
fn000000000041EDF0 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	call	41D1D0h
	test	rax,rax
	mov	rbx,rax
	jz	41EE1Dh

l000000000041EE03:
	test	byte ptr [rax+40h],0Ch
	jnz	41EE1Dh

l000000000041EE09:
	mov	rax,[00000000004AE560]                                 ; [rip+0008F750]
	test	rax,rax
	jz	41EE55h

l000000000041EE15:
	mov	r8d,[rax]
	test	r8d,r8d
	jnz	41EE24h

l000000000041EE1D:
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret

l000000000041EE24:
	lea	rsi,[rbx+38h]
	mov	rcx,rsi
	call	4208F0h
	movzx	eax,byte ptr [rbx+40h]
	test	al,3h
	jz	41EE47h

l000000000041EE38:
	mov	edx,[rbx+44h]
	test	dl,1h
	jz	41EE47h

l000000000041EE40:
	mov	ecx,[rbx+20h]
	test	ecx,ecx
	jle	41EE72h

l000000000041EE47:
	mov	rcx,rsi
	add	rsp,28h
	pop	rbx
	pop	rsi
	jmp	4202A0h

l000000000041EE55:
	lea	rcx,[000000000049125C]                                 ; [rip+00072400]
	xor	r8d,r8d
	mov	edx,4h
	call	421EA0h
	mov	[00000000004AE560],rax                                 ; [rip+0008F6F0]
	jmp	41EE15h

l000000000041EE72:
	mov	rcx,[rbx+30h]
	and	eax,0F3h
	and	edx,0FEh
	or	eax,4h
	mov	[rbx+44h],edx
	mov	[rbx+40h],al
	test	rcx,rcx
	jz	41EE90h

l000000000041EE8A:
	call	[00000000004AF62C]                                    ; [rip+0009079C]

l000000000041EE90:
	mov	rcx,rsi
	call	4202A0h
	call	41ED10h
	nop
	nop

;; fn000000000041EEA0: 000000000041EEA0
;;   Called from:
;;     000000000041EE9E (in fn000000000041EDF0)
fn000000000041EEA0 proc
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,20h
	test	rcx,rcx
	jz	41EF20h

l000000000041EEAC:
	call	423290h
	mov	rbx,rax
	mov	eax,0FFFFFFFEh
	cmp	rbx,rax
	jbe	41EEF0h

l000000000041EEBE:
	call	41D1D0h
	mov	edi,0FFFFFFFFh
	mov	rsi,rax

l000000000041EECB:
	call	41EDF0h
	mov	rcx,[rsi+30h]
	test	rcx,rcx
	jz	41EF30h

l000000000041EED9:
	mov	edx,edi
	call	[00000000004AF6FC]                                    ; [rip+0009081B]

l000000000041EEE1:
	call	41EDF0h
	xor	eax,eax
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	ret

l000000000041EEF0:
	call	41D1D0h
	test	rbx,rbx
	mov	edi,ebx
	mov	rsi,rax
	jnz	41EECBh

l000000000041EEFF:
	call	41EDF0h
	xor	ecx,ecx
	call	[00000000004AF6A4]                                    ; [rip+00090798]
	call	41EDF0h
	xor	eax,eax
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	ret
000000000041EF1B                                  0F 1F 44 00 00            ..D..

l000000000041EF20:
	call	41D1D0h
	jmp	41EEFFh
000000000041EF27                      66 0F 1F 84 00 00 00 00 00        f........

l000000000041EF30:
	mov	ecx,edi
	call	[00000000004AF6A4]                                    ; [rip+0009076C]
	jmp	41EEE1h
000000000041EF3A                               66 0F 1F 44 00 00           f..D..

;; fn000000000041EF40: 000000000041EF40
;;   Called from:
;;     000000000041C098 (in fn000000000041C000)
;;     0000000000420FCB (in fn0000000000420F70)
fn000000000041EF40 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	mov	ebx,ecx
	call	41D1D0h
	test	ebx,ebx
	mov	rsi,rax
	jz	41EF80h

l000000000041EF54:
	call	41EDF0h
	mov	rcx,[rsi+30h]
	test	rcx,rcx
	jz	41EFA0h

l000000000041EF62:
	mov	edx,ebx
	call	[00000000004AF6FC]                                    ; [rip+00090792]

l000000000041EF6A:
	call	41EDF0h
	xor	eax,eax
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret
000000000041EF78                         0F 1F 84 00 00 00 00 00         ........

l000000000041EF80:
	call	41EDF0h
	xor	ecx,ecx
	call	[00000000004AF6A4]                                    ; [rip+00090717]
	call	41EDF0h
	xor	eax,eax
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret
000000000041EF9B                                  0F 1F 44 00 00            ..D..

l000000000041EFA0:
	mov	ecx,ebx
	call	[00000000004AF6A4]                                    ; [rip+000906FC]
	jmp	41EF6Ah
000000000041EFAA                               66 0F 1F 44 00 00           f..D..

;; fn000000000041EFB0: 000000000041EFB0
;;   Called from:
;;     000000000041F2AA (in fn000000000041F200)
fn000000000041EFB0 proc
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,+4F8h
	mov	rsi,rcx
	call	41D570h
	test	rax,rax
	mov	rbx,rax
	jz	41EFD9h

l000000000041EFCB:
	mov	rcx,[rax+28h]
	lea	rax,[rcx-1h]
	cmp	rax,0FDh
	jbe	41EFF0h

l000000000041EFD9:
	mov	eax,3h

l000000000041EFDE:
	add	rsp,+4F8h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
000000000041EFEA                               66 0F 1F 44 00 00           f..D..

l000000000041EFF0:
	lea	rdi,[rsp+20h]
	mov	rdx,rdi
	call	[00000000004AF594]                                    ; [rip+00090596]
	test	eax,eax
	jz	41EFD9h

l000000000041F002:
	lea	rbp,[rbx+38h]
	mov	rcx,rbp
	call	4208F0h
	call	41D1D0h
	test	rax,rax
	jz	41F195h

l000000000041F01C:
	mov	rax,[rax+1C8h]

l000000000041F023:
	cmp	rsi,rax
	jz	41F093h

l000000000041F028:
	mov	eax,[rbx+44h]
	and	eax,3h
	cmp	eax,3h
	movzx	eax,byte ptr [rbx+40h]
	jz	41F0F0h

l000000000041F03B:
	test	al,3h
	jnz	41F07Ah

l000000000041F03F:
	and	eax,0FCh
	or	eax,1h
	mov	[rbx+40h],al
	mov	rax,[00000000004AE560]                                 ; [rip+0008F511]
	test	rax,rax
	jz	41F19Ch

l000000000041F058:
	lock
	add	dword ptr [rax],1h
	mov	rcx,[rbx+30h]
	test	rcx,rcx
	jz	41F06Bh

l000000000041F065:
	call	[00000000004AF674]                                    ; [rip+00090609]

l000000000041F06B:
	mov	rcx,rbp
	call	4202A0h
	xor	eax,eax
	jmp	41EFDEh

l000000000041F07A:
	mov	rcx,rbp
	call	4202A0h
	test	byte ptr [rbx+40h],0Ch
	jnz	41EFD9h

l000000000041F08C:
	xor	eax,eax
	jmp	41EFDEh

l000000000041F093:
	movzx	eax,byte ptr [rbx+40h]
	test	al,3h
	jnz	41F07Ah

l000000000041F09B:
	and	eax,0FCh
	or	eax,1h
	mov	[rbx+40h],al
	mov	rax,[00000000004AE560]                                 ; [rip+0008F4B5]
	test	rax,rax
	jz	41F1BCh

l000000000041F0B4:
	lock
	add	dword ptr [rax],1h
	mov	rcx,[rbx+30h]
	test	rcx,rcx
	jz	41F0C7h

l000000000041F0C1:
	call	[00000000004AF674]                                    ; [rip+000905AD]

l000000000041F0C7:
	mov	eax,[rbx+44h]
	and	eax,3h
	cmp	eax,3h
	jnz	41F06Bh

l000000000041F0D2:
	movzx	eax,byte ptr [rbx+40h]
	and	dword ptr [rbx+44h],0FEh
	mov	rcx,rbp
	and	eax,0F3h
	or	eax,4h
	mov	[rbx+40h],al
	call	4202A0h
	call	41ED10h

l000000000041F0F0:
	test	al,0Ch
	jnz	41F07Ah

l000000000041F0F4:
	test	al,0Fh
	jnz	41EFD9h

l000000000041F0FC:
	mov	rcx,[rbx+28h]
	mov	dword ptr [rsp+50h],100001h
	call	[00000000004AF6AC]                                    ; [rip+0009059E]
	xor	edx,edx
	mov	rcx,[rbx+28h]
	call	[00000000004AF6FC]                                    ; [rip+000905E2]
	cmp	eax,102h
	jnz	41F06Bh

l000000000041F125:
	mov	rcx,[rbx+28h]
	mov	rdx,rdi
	call	[00000000004AF5D4]                                    ; [rip+000904A2]
	lea	rax,[000000000041ED10]                                 ; [rip-00000429]
	mov	rcx,[rbx+28h]
	mov	rdx,rdi
	mov	[rsp+118h],rax
	call	[00000000004AF68C]                                    ; [rip+0009053E]
	movzx	eax,byte ptr [rbx+40h]
	and	dword ptr [rbx+44h],0FEh
	and	eax,0F0h
	or	eax,5h
	mov	[rbx+40h],al
	mov	rax,[00000000004AE560]                                 ; [rip+0008F3FA]
	test	rax,rax
	jz	41F1DCh

l000000000041F16B:
	lock
	add	dword ptr [rax],1h
	mov	rcx,[rbx+30h]
	test	rcx,rcx
	jz	41F17Eh

l000000000041F178:
	call	[00000000004AF674]                                    ; [rip+000904F6]

l000000000041F17E:
	mov	rcx,rbp
	call	4202A0h
	mov	rcx,[rbx+28h]
	call	[00000000004AF634]                                    ; [rip+000904A4]
	jmp	41F06Bh

l000000000041F195:
	xor	eax,eax
	jmp	41F023h

l000000000041F19C:
	lea	rcx,[000000000049125C]                                 ; [rip+000720B9]
	xor	r8d,r8d
	mov	edx,4h
	call	421EA0h
	mov	[00000000004AE560],rax                                 ; [rip+0008F3A9]
	jmp	41F058h

l000000000041F1BC:
	lea	rcx,[000000000049125C]                                 ; [rip+00072099]
	xor	r8d,r8d
	mov	edx,4h
	call	421EA0h
	mov	[00000000004AE560],rax                                 ; [rip+0008F389]
	jmp	41F0B4h

l000000000041F1DC:
	lea	rcx,[000000000049125C]                                 ; [rip+00072079]
	xor	r8d,r8d
	mov	edx,4h
	call	421EA0h
	mov	[00000000004AE560],rax                                 ; [rip+0008F369]
	jmp	41F16Bh
000000000041F1FC                                     0F 1F 40 00             ..@.

;; fn000000000041F200: 000000000041F200
fn000000000041F200 proc
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,20h
	mov	rbx,rcx
	mov	rcx,[00000000004AE518]                                 ; [rip+0008F307]
	mov	edi,edx
	test	rcx,rcx
	jz	41F2E0h

l000000000041F21C:
	call	4208F0h
	mov	rcx,rbx
	call	41C190h
	test	rax,rax
	jz	41F23Ah

l000000000041F22E:
	mov	rsi,[rax+1C8h]
	cmp	rsi,rbx
	jz	41F260h

l000000000041F23A:
	mov	rcx,[00000000004AE518]                                 ; [rip+0008F2D7]
	test	rcx,rcx
	jz	41F2B0h

l000000000041F246:
	mov	ebx,3h
	call	4202A0h

l000000000041F250:
	mov	eax,ebx
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	ret
000000000041F25A                               66 0F 1F 44 00 00           f..D..

l000000000041F260:
	test	byte ptr [rax+40h],0Ch
	jnz	41F23Ah

l000000000041F266:
	mov	ebx,[rax+0B4h]
	test	ebx,ebx
	jnz	41F23Ah

l000000000041F270:
	mov	rax,[rax+28h]
	sub	rax,1h
	cmp	rax,0FDh
	ja	41F23Ah

l000000000041F27E:
	mov	rcx,[00000000004AE518]                                 ; [rip+0008F293]
	test	rcx,rcx
	jz	41F307h

l000000000041F28A:
	call	4202A0h
	test	edi,edi
	jz	41F250h

l000000000041F293:
	sub	edi,2h
	mov	ebx,16h
	cmp	edi,15h
	ja	41F250h

l000000000041F2A0:
	mov	rcx,rsi
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	jmp	41EFB0h
000000000041F2AF                                              90                .

l000000000041F2B0:
	lea	rcx,[00000000004911D3]                                 ; [rip+00071F1C]
	lea	r8,[000000000041C170]                                  ; [rip-0000314E]
	mov	edx,8h
	call	421EA0h
	mov	rcx,rax
	mov	[00000000004AE518],rax                                 ; [rip+0008F246]
	jmp	41F246h
000000000041F2D7                      66 0F 1F 84 00 00 00 00 00        f........

l000000000041F2E0:
	lea	rcx,[00000000004911D3]                                 ; [rip+00071EEC]
	lea	r8,[000000000041C170]                                  ; [rip-0000317E]
	mov	edx,8h
	call	421EA0h
	mov	rcx,rax
	mov	[00000000004AE518],rax                                 ; [rip+0008F216]
	jmp	41F21Ch

l000000000041F307:
	lea	rcx,[00000000004911D3]                                 ; [rip+00071EC5]
	lea	r8,[000000000041C170]                                  ; [rip-000031A5]
	mov	edx,8h
	call	421EA0h
	mov	rcx,rax
	mov	[00000000004AE518],rax                                 ; [rip+0008F1EF]
	jmp	41F28Ah
000000000041F32E                                           66 90               f.

;; fn000000000041F330: 000000000041F330
fn000000000041F330 proc
	mov	eax,[rcx]
	and	eax,edx
	ret
000000000041F335                66 66 2E 0F 1F 84 00 00 00 00 00      ff.........

;; fn000000000041F340: 000000000041F340
fn000000000041F340 proc
	mov	eax,16h
	not	edx
	test	edx,r8d
	jz	41F350h

l000000000041F34C:
	ret
000000000041F34E                                           66 90               f.

l000000000041F350:
	and	edx,[rcx]
	xor	al,al
	or	edx,r8d
	mov	[rcx],edx
	ret
000000000041F35A                               66 0F 1F 44 00 00           f..D..

;; fn000000000041F360: 000000000041F360
fn000000000041F360 proc
	xor	eax,eax
	mov	qword ptr [rcx],+0h
	mov	qword ptr [rcx+18h],+0h
	mov	dword ptr [rcx],1h
	mov	qword ptr [rcx+8h],+0h
	mov	qword ptr [rcx+10h],+0h
	ret
000000000041F388                         0F 1F 84 00 00 00 00 00         ........

;; fn000000000041F390: 000000000041F390
fn000000000041F390 proc
	xor	eax,eax
	mov	qword ptr [rcx],+0h
	mov	qword ptr [rcx+8h],+0h
	mov	qword ptr [rcx+10h],+0h
	mov	qword ptr [rcx+18h],+0h
	ret
000000000041F3B2       66 66 66 66 66 2E 0F 1F 84 00 00 00 00 00   fffff.........

;; fn000000000041F3C0: 000000000041F3C0
fn000000000041F3C0 proc
	mov	eax,16h
	test	edx,0FFFFFFFBh
	jz	41F3D0h

l000000000041F3CD:
	ret
000000000041F3CF                                              90                .

l000000000041F3D0:
	mov	eax,[rcx]
	and	eax,0FBh
	or	edx,eax
	xor	eax,eax
	mov	[rcx],edx
	ret
000000000041F3DC                                     0F 1F 40 00             ..@.

;; fn000000000041F3E0: 000000000041F3E0
fn000000000041F3E0 proc
	mov	eax,[rcx]
	and	eax,4h
	mov	[rdx],eax
	xor	eax,eax
	ret
000000000041F3EA                               66 0F 1F 44 00 00           f..D..

;; fn000000000041F3F0: 000000000041F3F0
fn000000000041F3F0 proc
	mov	eax,16h
	test	rcx,rcx
	jz	41F406h

l000000000041F3FA:
	mov	eax,edx
	and	eax,0F7h
	jz	41F410h

l000000000041F401:
	mov	eax,16h

l000000000041F406:
	ret
000000000041F408                         0F 1F 84 00 00 00 00 00         ........

l000000000041F410:
	mov	r8d,[rcx]
	and	r8d,0F7h
	or	edx,r8d
	mov	[rcx],edx
	ret
000000000041F41D                                        0F 1F 00              ...

;; fn000000000041F420: 000000000041F420
fn000000000041F420 proc
	mov	eax,[rcx]
	and	eax,8h
	mov	[rdx],eax
	xor	eax,eax
	ret
000000000041F42A                               66 0F 1F 44 00 00           f..D..

;; fn000000000041F430: 000000000041F430
fn000000000041F430 proc
	mov	eax,16h
	test	edx,0FFFFFFEFh
	jz	41F440h

l000000000041F43D:
	ret
000000000041F43F                                              90                .

l000000000041F440:
	mov	eax,[rcx]
	and	eax,0EFh
	or	edx,eax
	xor	eax,eax
	mov	[rcx],edx
	ret
000000000041F44C                                     0F 1F 40 00             ..@.

;; fn000000000041F450: 000000000041F450
fn000000000041F450 proc
	mov	eax,[rcx]
	and	eax,10h
	mov	[rdx],eax
	xor	eax,eax
	ret
000000000041F45A                               66 0F 1F 44 00 00           f..D..

;; fn000000000041F460: 000000000041F460
fn000000000041F460 proc
	mov	rax,[rcx+8h]
	mov	[rdx],rax
	xor	eax,eax
	ret
000000000041F46A                               66 0F 1F 44 00 00           f..D..

;; fn000000000041F470: 000000000041F470
fn000000000041F470 proc
	xor	eax,eax
	mov	[rcx+8h],rdx
	ret
000000000041F477                      66 0F 1F 84 00 00 00 00 00        f........

;; fn000000000041F480: 000000000041F480
fn000000000041F480 proc
	mov	rax,[rcx+10h]
	mov	[rdx],rax
	xor	eax,eax
	ret
000000000041F48A                               66 0F 1F 44 00 00           f..D..

;; fn000000000041F490: 000000000041F490
fn000000000041F490 proc
	xor	eax,eax
	mov	[rcx+10h],rdx
	ret
000000000041F497                      66 0F 1F 84 00 00 00 00 00        f........

;; fn000000000041F4A0: 000000000041F4A0
fn000000000041F4A0 proc
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,28h
	mov	ebx,ecx
	mov	rbp,rdx
	call	41D1D0h
	mov	rsi,rax
	mov	eax,16h
	test	rsi,rsi
	jz	41F4C8h

l000000000041F4BF:
	mov	edi,ebx
	and	edi,1h
	cmp	edi,ebx
	jz	41F4D1h

l000000000041F4C8:
	add	rsp,28h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret

l000000000041F4D1:
	lea	rbx,[rsi+38h]
	mov	rcx,rbx
	call	4208F0h
	test	rbp,rbp
	jz	41F4EBh

l000000000041F4E2:
	mov	eax,[rsi+44h]
	and	eax,1h
	mov	[rbp+0h],eax

l000000000041F4EB:
	mov	eax,[rsi+44h]
	mov	rcx,[rsi+1C8h]
	and	eax,0FEh
	or	edi,eax
	mov	[rsi+44h],edi
	call	41ED90h
	mov	rcx,rbx
	call	4202A0h
	xor	eax,eax
	jmp	41F4C8h
000000000041F50E                                           66 90               f.

;; fn000000000041F510: 000000000041F510
fn000000000041F510 proc
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,28h
	mov	ebx,ecx
	mov	rbp,rdx
	call	41D1D0h
	mov	rsi,rax
	mov	eax,16h
	test	rsi,rsi
	jz	41F538h

l000000000041F52F:
	mov	edi,ebx
	and	edi,2h
	cmp	edi,ebx
	jz	41F541h

l000000000041F538:
	add	rsp,28h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret

l000000000041F541:
	lea	rbx,[rsi+38h]
	mov	rcx,rbx
	call	4208F0h
	test	rbp,rbp
	jz	41F55Bh

l000000000041F552:
	mov	eax,[rsi+44h]
	and	eax,2h
	mov	[rbp+0h],eax

l000000000041F55B:
	mov	eax,[rsi+44h]
	mov	rcx,[rsi+1C8h]
	and	eax,0FDh
	or	edi,eax
	mov	[rsi+44h],edi
	call	41ED90h
	mov	rcx,rbx
	call	4202A0h
	xor	eax,eax
	jmp	41F538h
000000000041F57E                                           66 90               f.

;; fn000000000041F580: 000000000041F580
fn000000000041F580 proc
	push	r14
	push	r13
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,30h
	mov	r14,rcx
	mov	r12,rdx
	mov	rsi,r8
	mov	rdi,r9
	call	41CB10h
	test	rax,rax
	mov	rbx,rax
	jz	41F731h

l000000000041F5AB:
	test	r14,r14
	jz	41F5BAh

l000000000041F5B0:
	mov	rax,[rax+1C8h]
	mov	[r14],rax

l000000000041F5BA:
	mov	r13,[00000000004AF6A4]                                 ; [rip+000900E3]
	mov	[rbx+8h],rdi
	mov	rdi,[00000000004AF534]                                 ; [rip+0008FF68]
	mov	[rbx+10h],rsi
	mov	esi,1h
	mov	dword ptr [rbx+0B4h],0h
	mov	dword ptr [rbx+44h],1h
	mov	qword ptr [rbx+28h],-1h
	mov	rbp,r13

l000000000041F5F1:
	xor	r9d,r9d
	xor	r8d,r8d
	xor	ecx,ecx
	mov	edx,1h
	call	rdi
	test	rax,rax
	mov	[rbx+30h],rax
	jnz	41F7E0h

l000000000041F60D:
	cmp	esi,1h
	jnz	41F620h

l000000000041F612:
	xor	ecx,ecx
	call	r13

l000000000041F617:
	add	esi,1h
	jmp	41F5F1h
000000000041F61C                                     0F 1F 40 00             ..@.

l000000000041F620:
	mov	ecx,14h
	call	rbp
	cmp	esi,5h
	jnz	41F617h

l000000000041F62C:
	mov	rax,[rbx+30h]
	mov	qword ptr [rbx+38h],-1h
	mov	qword ptr [rbx+60h],-1h
	mov	dword ptr [rbx],0BAB1F00Dh
	mov	dword ptr [rbx+0B8h],0h
	mov	dword ptr [rbx+0B0h],0h
	test	rax,rax
	jz	41F717h

l000000000041F663:
	test	r12,r12
	jz	41F820h

l000000000041F66C:
	mov	eax,[r12]
	mov	rsi,[r12+10h]
	test	al,8h
	mov	[rbx+44h],eax
	jnz	41F7B0h

l000000000041F680:
	mov	eax,[r12+18h]
	mov	edx,esi
	mov	[rbx+0B8h],eax

l000000000041F68D:
	xor	ecx,ecx
	mov	qword ptr [rsp+28h],+0h
	mov	dword ptr [rsp+20h],4h
	mov	r9,rbx
	lea	r8,[000000000041D9D0]                                  ; [rip-00001CDA]
	call	[00000000004AF784]                                    ; [rip+000900D4]
	mov	rsi,rax
	lea	rax,[rax-1h]
	cmp	rax,0FDh
	ja	41F6E7h

l000000000041F6BD:
	mov	edx,[rbx+0B8h]
	cmp	edx,0F2h
	jl	41F745h

l000000000041F6C8:
	cmp	edx,0FFh
	jl	41F7D0h

l000000000041F6D1:
	cmp	edx,0Eh
	jg	41F810h

l000000000041F6DA:
	cmp	edx,2h
	mov	eax,2h
	cmovge	edx,eax

l000000000041F6E5:
	jmp	41F74Ah

l000000000041F6E7:
	mov	rcx,[rbx+30h]
	test	rcx,rcx
	jz	41F6F6h

l000000000041F6F0:
	call	[00000000004AF52C]                                    ; [rip+0008FE36]

l000000000041F6F6:
	lea	rcx,[rbx+38h]
	call	420B50h
	mov	qword ptr [rbx+60h],-1h
	mov	qword ptr [rbx+30h],+0h
	mov	qword ptr [rbx+28h],+0h

l000000000041F717:
	test	r14,r14
	jz	41F723h

l000000000041F71C:
	mov	qword ptr [r14],+0h

l000000000041F723:
	cmp	qword ptr [rbx+1C0h],0h
	jz	41F827h

l000000000041F731:
	mov	eax,0Bh
	add	rsp,30h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	ret

l000000000041F745:
	mov	edx,0FFFFFFF1h

l000000000041F74A:
	mov	rcx,rsi
	call	[00000000004AF694]                                    ; [rip+0008FF41]
	mov	rcx,[rbx+30h]
	call	[00000000004AF62C]                                    ; [rip+0008FECF]
	test	byte ptr [rbx+44h],4h
	jz	41F7A0h

l000000000041F763:
	mov	rcx,rsi
	mov	qword ptr [rbx+28h],+0h
	call	[00000000004AF634]                                    ; [rip+0008FEC0]
	mov	rcx,rsi
	call	[00000000004AF52C]                                    ; [rip+0008FDAF]

l000000000041F77D:
	xor	ecx,ecx
	call	[00000000004AF6A4]                                    ; [rip+0008FF1F]
	xor	eax,eax
	add	rsp,30h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	ret
000000000041F796                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l000000000041F7A0:
	mov	[rbx+28h],rsi
	mov	rcx,rsi
	call	[00000000004AF634]                                    ; [rip+0008FE87]
	jmp	41F77Dh
000000000041F7AF                                              90                .

l000000000041F7B0:
	call	41D1D0h
	mov	eax,[rax+0B8h]
	mov	edx,esi
	mov	[rbx+0B8h],eax
	jmp	41F68Dh
000000000041F7C8                         0F 1F 84 00 00 00 00 00         ........

l000000000041F7D0:
	mov	edx,0FFFFFFFEh
	jmp	41F74Ah
000000000041F7DA                               66 0F 1F 44 00 00           f..D..

l000000000041F7E0:
	mov	qword ptr [rbx+38h],-1h
	mov	qword ptr [rbx+60h],-1h
	mov	dword ptr [rbx],0BAB1F00Dh
	mov	dword ptr [rbx+0B8h],0h
	mov	dword ptr [rbx+0B0h],0h
	jmp	41F663h
000000000041F80F                                              90                .

l000000000041F810:
	mov	edx,0Fh
	jmp	41F74Ah
000000000041F81A                               66 0F 1F 44 00 00           f..D..

l000000000041F820:
	xor	edx,edx
	jmp	41F68Dh

l000000000041F827:
	mov	rcx,rbx
	call	41CD40h
	jmp	41F731h
000000000041F834             66 66 66 2E 0F 1F 84 00 00 00 00 00     fff.........

;; fn000000000041F840: 000000000041F840
fn000000000041F840 proc
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,40h
	mov	rsi,rcx
	mov	rdi,rdx
	call	41D570h
	test	rax,rax
	mov	rbx,rax
	jz	41F872h

l000000000041F85A:
	mov	rcx,[rax+28h]
	test	rcx,rcx
	jz	41F872h

l000000000041F863:
	lea	rdx,[rsp+3Ch]
	call	[00000000004AF594]                                    ; [rip+0008FD26]
	test	eax,eax
	jnz	41F880h

l000000000041F872:
	mov	eax,3h

l000000000041F877:
	add	rsp,40h
	pop	rbx
	pop	rsi
	pop	rdi
	ret
000000000041F87F                                              90                .

l000000000041F880:
	test	byte ptr [rbx+44h],4h
	mov	eax,16h
	jnz	41F877h

l000000000041F88B:
	call	41D1D0h
	test	rax,rax
	jz	41F92Fh

l000000000041F899:
	mov	rdx,[rax+1C8h]

l000000000041F8A0:
	cmp	rsi,rdx
	mov	eax,24h
	jz	41F877h

l000000000041F8AA:
	mov	eax,[rbx+0B4h]
	mov	rcx,[rbx+28h]
	test	eax,eax
	jz	41F8C2h

l000000000041F8B8:
	lea	rax,[rcx-1h]
	cmp	rax,0FDh
	ja	41F8D1h

l000000000041F8C2:
	mov	edx,0FFFFFFFFh
	call	[00000000004AF6FC]                                    ; [rip+0008FE2F]
	mov	rcx,[rbx+28h]

l000000000041F8D1:
	mov	rsi,[00000000004AF52C]                                 ; [rip+0008FC54]
	call	rsi
	mov	rcx,[rbx+30h]
	test	rcx,rcx
	jz	41F8E5h

l000000000041F8E3:
	call	rsi

l000000000041F8E5:
	test	rdi,rdi
	mov	qword ptr [rbx+30h],+0h
	jz	41F8F9h

l000000000041F8F2:
	mov	rax,[rbx+8h]
	mov	[rdi],rax

l000000000041F8F9:
	lea	rcx,[rbx+38h]
	call	420B50h
	xor	eax,eax
	cmp	qword ptr [rbx+1C0h],0h
	mov	qword ptr [rbx+60h],-1h
	jnz	41F877h

l000000000041F91A:
	mov	rcx,rbx
	mov	[rsp+2Ch],eax
	call	41CD40h
	mov	eax,[rsp+2Ch]
	jmp	41F877h

l000000000041F92F:
	xor	edx,edx
	jmp	41F8A0h
000000000041F936                   66 2E 0F 1F 84 00 00 00 00 00       f.........

;; fn000000000041F940: 000000000041F940
fn000000000041F940 proc
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,30h
	mov	rsi,rcx
	mov	rcx,[00000000004AE518]                                 ; [rip+0008EBC7]
	mov	rdi,rdx
	test	rcx,rcx
	jz	41FA04h

l000000000041F95D:
	call	4208F0h
	mov	rcx,rsi
	call	41C190h
	test	rax,rax
	mov	rbx,rax
	jz	41F98Ah

l000000000041F972:
	mov	rcx,[rax+28h]
	test	rcx,rcx
	jz	41F98Ah

l000000000041F97B:
	lea	rdx,[rsp+2Ch]
	call	[00000000004AF594]                                    ; [rip+0008FC0E]
	test	eax,eax
	jnz	41F9B0h

l000000000041F98A:
	mov	rcx,[00000000004AE518]                                 ; [rip+0008EB87]
	test	rcx,rcx
	jz	41F9E0h

l000000000041F996:
	call	4202A0h
	mov	eax,3h

l000000000041F9A0:
	add	rsp,30h
	pop	rbx
	pop	rsi
	pop	rdi
	ret
000000000041F9A8                         0F 1F 84 00 00 00 00 00         ........

l000000000041F9B0:
	test	byte ptr [rbx+44h],4h
	jz	41FA30h

l000000000041F9B6:
	mov	rcx,[00000000004AE518]                                 ; [rip+0008EB5B]
	test	rcx,rcx
	jz	41FA83h

l000000000041F9C6:
	call	4202A0h
	mov	eax,16h
	add	rsp,30h
	pop	rbx
	pop	rsi
	pop	rdi
	ret
000000000041F9D8                         0F 1F 84 00 00 00 00 00         ........

l000000000041F9E0:
	lea	rcx,[00000000004911D3]                                 ; [rip+000717EC]
	lea	r8,[000000000041C170]                                  ; [rip-0000387E]
	mov	edx,8h
	call	421EA0h
	mov	rcx,rax
	mov	[00000000004AE518],rax                                 ; [rip+0008EB16]
	jmp	41F996h

l000000000041FA04:
	lea	rcx,[00000000004911D3]                                 ; [rip+000717C8]
	lea	r8,[000000000041C170]                                  ; [rip-000038A2]
	mov	edx,8h
	call	421EA0h
	mov	rcx,rax
	mov	[00000000004AE518],rax                                 ; [rip+0008EAF2]
	jmp	41F95Dh
000000000041FA2B                                  0F 1F 44 00 00            ..D..

l000000000041FA30:
	call	41D1D0h
	test	rax,rax
	jz	41FB24h

l000000000041FA3E:
	mov	rax,[rax+1C8h]

l000000000041FA45:
	cmp	rsi,rax
	jz	41FAAAh

l000000000041FA4A:
	mov	eax,[rbx+0B4h]
	test	eax,eax
	jnz	41FAC5h

l000000000041FA54:
	xor	edx,edx
	mov	rcx,[rbx+28h]
	call	[00000000004AF6FC]                                    ; [rip+0008FC9C]
	test	eax,eax
	jz	41FAC5h

l000000000041FA64:
	mov	rcx,[00000000004AE518]                                 ; [rip+0008EAAD]
	test	rcx,rcx
	jz	41FB80h

l000000000041FA74:
	call	4202A0h
	mov	eax,10h
	jmp	41F9A0h

l000000000041FA83:
	lea	rcx,[00000000004911D3]                                 ; [rip+00071749]
	lea	r8,[000000000041C170]                                  ; [rip-00003921]
	mov	edx,8h
	call	421EA0h
	mov	rcx,rax
	mov	[00000000004AE518],rax                                 ; [rip+0008EA73]
	jmp	41F9C6h

l000000000041FAAA:
	mov	rcx,[00000000004AE518]                                 ; [rip+0008EA67]
	test	rcx,rcx
	jz	41FB2Bh

l000000000041FAB6:
	call	4202A0h
	mov	eax,24h
	jmp	41F9A0h

l000000000041FAC5:
	mov	rcx,[rbx+28h]
	mov	rsi,[00000000004AF52C]                                 ; [rip+0008FA5C]
	call	rsi
	mov	rcx,[rbx+30h]
	test	rcx,rcx
	jz	41FADDh

l000000000041FADB:
	call	rsi

l000000000041FADD:
	test	rdi,rdi
	mov	qword ptr [rbx+30h],+0h
	jz	41FAF1h

l000000000041FAEA:
	mov	rax,[rbx+8h]
	mov	[rdi],rax

l000000000041FAF1:
	lea	rcx,[rbx+38h]
	call	420B50h
	cmp	qword ptr [rbx+1C0h],0h
	mov	qword ptr [rbx+60h],-1h
	jz	41FB76h

l000000000041FB0C:
	mov	rcx,[00000000004AE518]                                 ; [rip+0008EA05]
	test	rcx,rcx
	jz	41FB52h

l000000000041FB18:
	call	4202A0h
	xor	eax,eax
	jmp	41F9A0h

l000000000041FB24:
	xor	eax,eax
	jmp	41FA45h

l000000000041FB2B:
	lea	rcx,[00000000004911D3]                                 ; [rip+000716A1]
	lea	r8,[000000000041C170]                                  ; [rip-000039C9]
	mov	edx,8h
	call	421EA0h
	mov	rcx,rax
	mov	[00000000004AE518],rax                                 ; [rip+0008E9CB]
	jmp	41FAB6h

l000000000041FB52:
	lea	rcx,[00000000004911D3]                                 ; [rip+0007167A]
	lea	r8,[000000000041C170]                                  ; [rip-000039F0]
	mov	edx,8h
	call	421EA0h
	mov	rcx,rax
	mov	[00000000004AE518],rax                                 ; [rip+0008E9A4]
	jmp	41FB18h

l000000000041FB76:
	mov	rcx,rbx
	call	41CD40h
	jmp	41FB0Ch

l000000000041FB80:
	lea	rcx,[00000000004911D3]                                 ; [rip+0007164C]
	lea	r8,[000000000041C170]                                  ; [rip-00003A1E]
	mov	edx,8h
	call	421EA0h
	mov	rcx,rax
	mov	[00000000004AE518],rax                                 ; [rip+0008E976]
	jmp	41FA74h
000000000041FBA7                      66 0F 1F 84 00 00 00 00 00        f........

;; fn000000000041FBB0: 000000000041FBB0
fn000000000041FBB0 proc
	push	rsi
	push	rbx
	sub	rsp,38h
	call	41D570h
	mov	rcx,[00000000004AE518]                                 ; [rip+0008E956]
	mov	rbx,rax
	test	rcx,rcx
	jz	41FC60h

l000000000041FBCE:
	call	4208F0h
	test	rbx,rbx
	jz	41FBF0h

l000000000041FBD8:
	mov	rcx,[rbx+28h]
	test	rcx,rcx
	jz	41FBF0h

l000000000041FBE1:
	lea	rdx,[rsp+2Ch]
	call	[00000000004AF594]                                    ; [rip+0008F9A8]
	test	eax,eax
	jnz	41FC10h

l000000000041FBF0:
	mov	rcx,[00000000004AE518]                                 ; [rip+0008E921]
	test	rcx,rcx
	jz	41FC33h

l000000000041FBFC:
	call	4202A0h
	mov	eax,3h

l000000000041FC06:
	add	rsp,38h
	pop	rbx
	pop	rsi
	ret
000000000041FC0D                                        0F 1F 00              ...

l000000000041FC10:
	mov	eax,[rbx+44h]
	test	al,4h
	jz	41FC90h

l000000000041FC17:
	mov	rcx,[00000000004AE518]                                 ; [rip+0008E8FA]
	test	rcx,rcx
	jz	41FD00h

l000000000041FC27:
	call	4202A0h
	mov	eax,16h
	jmp	41FC06h

l000000000041FC33:
	lea	rcx,[00000000004911D3]                                 ; [rip+00071599]
	lea	r8,[000000000041C170]                                  ; [rip-00003AD1]
	mov	edx,8h
	call	421EA0h
	mov	rcx,rax
	mov	[00000000004AE518],rax                                 ; [rip+0008E8C3]
	jmp	41FBFCh
000000000041FC57                      66 0F 1F 84 00 00 00 00 00        f........

l000000000041FC60:
	lea	rcx,[00000000004911D3]                                 ; [rip+0007156C]
	lea	r8,[000000000041C170]                                  ; [rip-00003AFE]
	mov	edx,8h
	call	421EA0h
	mov	rcx,rax
	mov	[00000000004AE518],rax                                 ; [rip+0008E896]
	jmp	41FBCEh
000000000041FC87                      66 0F 1F 84 00 00 00 00 00        f........

l000000000041FC90:
	or	eax,4h
	mov	rcx,[rbx+28h]
	mov	qword ptr [rbx+28h],+0h
	mov	[rbx+44h],eax
	test	rcx,rcx
	jz	41FCE8h

l000000000041FCA7:
	mov	rsi,[00000000004AF52C]                                 ; [rip+0008F87E]
	call	rsi
	mov	eax,[rbx+0B4h]
	test	eax,eax
	jz	41FCE8h

l000000000041FCBA:
	mov	rcx,[rbx+30h]
	test	rcx,rcx
	jz	41FCC5h

l000000000041FCC3:
	call	rsi

l000000000041FCC5:
	lea	rcx,[rbx+38h]
	mov	qword ptr [rbx+30h],+0h
	call	420B50h
	cmp	qword ptr [rbx+1C0h],0h
	mov	qword ptr [rbx+60h],-1h
	jz	41FD4Bh

l000000000041FCE8:
	mov	rcx,[00000000004AE518]                                 ; [rip+0008E829]
	test	rcx,rcx
	jz	41FD27h

l000000000041FCF4:
	call	4202A0h
	xor	eax,eax
	jmp	41FC06h

l000000000041FD00:
	lea	rcx,[00000000004911D3]                                 ; [rip+000714CC]
	lea	r8,[000000000041C170]                                  ; [rip-00003B9E]
	mov	edx,8h
	call	421EA0h
	mov	rcx,rax
	mov	[00000000004AE518],rax                                 ; [rip+0008E7F6]
	jmp	41FC27h

l000000000041FD27:
	lea	rcx,[00000000004911D3]                                 ; [rip+000714A5]
	lea	r8,[000000000041C170]                                  ; [rip-00003BC5]
	mov	edx,8h
	call	421EA0h
	mov	rcx,rax
	mov	[00000000004AE518],rax                                 ; [rip+0008E7CF]
	jmp	41FCF4h

l000000000041FD4B:
	mov	rcx,rbx
	call	41CD40h
	jmp	41FCE8h
000000000041FD55                66 66 2E 0F 1F 84 00 00 00 00 00      ff.........

;; fn000000000041FD60: 000000000041FD60
fn000000000041FD60 proc
	lea	rcx,[00000000004912F3]                                 ; [rip+0007158C]
	xor	r8d,r8d
	mov	edx,4h
	jmp	421EA0h
000000000041FD74             66 66 66 2E 0F 1F 84 00 00 00 00 00     fff.........

;; fn000000000041FD80: 000000000041FD80
fn000000000041FD80 proc
	sub	rsp,28h
	mov	rax,[00000000004AE4E0]                                 ; [rip+0008E755]
	test	rax,rax
	jz	41FDA0h

l000000000041FD90:
	mov	eax,[rax]
	add	rsp,28h
	ret
000000000041FD97                      66 0F 1F 84 00 00 00 00 00        f........

l000000000041FDA0:
	lea	rcx,[00000000004912F3]                                 ; [rip+0007154C]
	xor	r8d,r8d
	mov	edx,4h
	call	421EA0h
	mov	[00000000004AE4E0],rax                                 ; [rip+0008E725]
	mov	eax,[rax]
	add	rsp,28h
	ret
000000000041FDC2       66 66 66 66 66 2E 0F 1F 84 00 00 00 00 00   fffff.........

;; fn000000000041FDD0: 000000000041FDD0
fn000000000041FDD0 proc
	push	rbx
	sub	rsp,20h
	mov	rax,[00000000004AE4E0]                                 ; [rip+0008E704]
	mov	ebx,ecx
	test	rax,rax
	jz	41FDF0h

l000000000041FDE3:
	mov	[rax],ebx
	xor	eax,eax
	add	rsp,20h
	pop	rbx
	ret
000000000041FDED                                        0F 1F 00              ...

l000000000041FDF0:
	lea	rcx,[00000000004912F3]                                 ; [rip+000714FC]
	xor	r8d,r8d
	mov	edx,4h
	call	421EA0h
	mov	[00000000004AE4E0],rax                                 ; [rip+0008E6D5]
	mov	[rax],ebx
	xor	eax,eax
	add	rsp,20h
	pop	rbx
	ret
000000000041FE15                90 90 90 90 90 90 90 90 90 90 90      ...........

;; fn000000000041FE20: 000000000041FE20
fn000000000041FE20 proc
	mov	qword ptr [rcx],-1h
	ret
000000000041FE28                         0F 1F 84 00 00 00 00 00         ........

;; fn000000000041FE30: 000000000041FE30
fn000000000041FE30 proc
	mov	qword ptr [rcx],-1h
	ret
000000000041FE38                         0F 1F 84 00 00 00 00 00         ........

;; fn000000000041FE40: 000000000041FE40
fn000000000041FE40 proc
	mov	dword ptr [rcx],2h
	ret
000000000041FE47                      66 0F 1F 84 00 00 00 00 00        f........

;; fn000000000041FE50: 000000000041FE50
fn000000000041FE50 proc
	mov	dword ptr [rcx],1h
	ret
000000000041FE57                      66 0F 1F 84 00 00 00 00 00        f........

;; fn000000000041FE60: 000000000041FE60
;;   Called from:
;;     00000000004202AA (in fn00000000004202A0)
fn000000000041FE60 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	mov	rsi,[rcx]
	mov	rbx,rcx
	mov	rcx,[00000000004AE598]                                 ; [rip+0008E725]
	test	rcx,rcx
	jz	41FF00h

l000000000041FE7C:
	call	422260h
	mov	rdx,[rbx]
	mov	ebx,16h
	test	rdx,rdx
	jz	41FE96h

l000000000041FE8E:
	cmp	dword ptr [rdx],0BAB1F00Dh
	jz	41FEB0h

l000000000041FE96:
	mov	rcx,[00000000004AE598]                                 ; [rip+0008E6FB]
	test	rcx,rcx
	jz	41FED0h

l000000000041FEA2:
	call	422310h
	mov	eax,ebx
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret

l000000000041FEB0:
	lea	rax,[rdx+3h]
	mov	bl,1h
	cmp	rax,2h
	jbe	41FE96h

l000000000041FEBC:
	mov	eax,[rsi+14h]
	test	eax,eax
	jz	41FE96h

l000000000041FEC3:
	mov	eax,[rdx+4h]
	xor	bl,bl
	add	eax,1h
	mov	[rdx+4h],eax
	jmp	41FE96h

l000000000041FED0:
	lea	r8,[000000000041FE20]                                  ; [rip-000000B7]
	lea	rcx,[0000000000491320]                                 ; [rip+00071442]
	mov	edx,8h
	call	421EA0h
	mov	rcx,rax
	mov	[00000000004AE598],rax                                 ; [rip+0008E6A6]
	call	422310h
	mov	eax,ebx
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret

l000000000041FF00:
	lea	rcx,[0000000000491320]                                 ; [rip+00071419]
	lea	r8,[000000000041FE20]                                  ; [rip-000000EE]
	mov	edx,8h
	call	421EA0h
	mov	rcx,rax
	mov	[00000000004AE598],rax                                 ; [rip+0008E676]
	jmp	41FE7Ch
000000000041FF27                      66 0F 1F 84 00 00 00 00 00        f........

;; fn000000000041FF30: 000000000041FF30
;;   Called from:
;;     000000000042036D (in fn0000000000420360)
fn000000000041FF30 proc
	push	rbx
	sub	rsp,20h
	mov	rbx,rcx
	mov	rcx,[00000000004AE598]                                 ; [rip+0008E659]
	test	rcx,rcx
	jz	41FF80h

l000000000041FF44:
	call	422260h
	xor	eax,eax
	test	rbx,rbx
	jz	41FF60h

l000000000041FF50:
	add	rsp,20h
	pop	rbx
	ret
000000000041FF56                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l000000000041FF60:
	mov	rcx,[00000000004AE598]                                 ; [rip+0008E631]
	test	rcx,rcx
	jz	41FFA4h

l000000000041FF6C:
	call	422310h
	mov	eax,16h
	add	rsp,20h
	pop	rbx
	ret
000000000041FF7C                                     0F 1F 40 00             ..@.

l000000000041FF80:
	lea	rcx,[0000000000491320]                                 ; [rip+00071399]
	lea	r8,[000000000041FE20]                                  ; [rip-0000016E]
	mov	edx,8h
	call	421EA0h
	mov	rcx,rax
	mov	[00000000004AE598],rax                                 ; [rip+0008E5F6]
	jmp	41FF44h

l000000000041FFA4:
	lea	rcx,[0000000000491320]                                 ; [rip+00071375]
	lea	r8,[000000000041FE20]                                  ; [rip-00000192]
	mov	edx,8h
	call	421EA0h
	mov	rcx,rax
	mov	[00000000004AE598],rax                                 ; [rip+0008E5D2]
	jmp	41FF6Ch
000000000041FFC8                         0F 1F 84 00 00 00 00 00         ........

;; fn000000000041FFD0: 000000000041FFD0
;;   Called from:
;;     0000000000420933 (in fn0000000000420900)
;;     00000000004209F3 (in fn00000000004209D0)
fn000000000041FFD0 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	mov	eax,[rcx+8h]
	mov	rbx,rcx
	test	eax,eax
	jz	420020h

l000000000041FFE0:
	mov	esi,[rcx+14h]
	test	esi,esi
	jnz	420035h

l000000000041FFE7:
	mov	rcx,[rbx+18h]
	xor	r8d,r8d
	mov	edx,1h
	call	421240h
	cmp	eax,8Ah
	jz	420027h

l000000000041FFFF:
	test	eax,eax
	mov	esi,eax
	jnz	42002Ch

l0000000000420005:
	mov	dword ptr [rbx+0Ch],1h
	call	[00000000004AF58C]                                    ; [rip+0008F57A]
	mov	[rbx+14h],eax
	jmp	42002Ch
0000000000420017                      66 0F 1F 84 00 00 00 00 00        f........

l0000000000420020:
	mov	eax,[rcx+14h]
	test	eax,eax
	jz	41FFE7h

l0000000000420027:
	mov	esi,10h

l000000000042002C:
	mov	eax,esi
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret

l0000000000420035:
	cmp	eax,2h
	jnz	420027h

l000000000042003A:
	call	[00000000004AF58C]                                    ; [rip+0008F54C]
	cmp	esi,eax
	jnz	420027h

l0000000000420044:
	lock
	add	dword ptr [rbx+0Ch],1h
	xor	esi,esi
	jmp	42002Ch
000000000042004D                                        0F 1F 00              ...

;; fn0000000000420050: 0000000000420050
;;   Called from:
;;     00000000004202FA (in fn00000000004202A0)
;;     0000000000420320 (in fn00000000004202A0)
;;     0000000000420860 (in fn0000000000420830)
;;     00000000004208B2 (in fn0000000000420830)
;;     000000000042096B (in fn0000000000420900)
;;     00000000004209AA (in fn0000000000420900)
;;     0000000000420A02 (in fn00000000004209D0)
fn0000000000420050 proc
	push	rsi
	push	rbx
	sub	rsp,38h
	mov	rbx,rcx
	mov	rcx,[00000000004AE598]                                 ; [rip+0008E538]
	mov	esi,edx
	test	rcx,rcx
	jz	4200E0h

l0000000000420067:
	call	422260h
	cmp	dword ptr [rbx],0BAB1F00Dh
	jnz	420107h

l0000000000420078:
	mov	eax,[rbx+4h]
	test	eax,eax
	jle	420107h

l0000000000420083:
	mov	eax,[rbx+4h]
	test	eax,eax
	jle	420093h

l000000000042008A:
	mov	eax,[rbx+4h]
	sub	eax,1h
	mov	[rbx+4h],eax

l0000000000420093:
	mov	rcx,[00000000004AE598]                                 ; [rip+0008E4FE]
	test	rcx,rcx
	jz	4200B0h

l000000000042009F:
	call	422310h
	mov	eax,esi
	add	rsp,38h
	pop	rbx
	pop	rsi
	ret
00000000004200AD                                        0F 1F 00              ...

l00000000004200B0:
	lea	r8,[000000000041FE20]                                  ; [rip-00000297]
	lea	rcx,[0000000000491320]                                 ; [rip+00071262]
	mov	edx,8h
	call	421EA0h
	mov	rcx,rax
	mov	[00000000004AE598],rax                                 ; [rip+0008E4C6]
	call	422310h
	mov	eax,esi
	add	rsp,38h
	pop	rbx
	pop	rsi
	ret

l00000000004200E0:
	lea	rcx,[0000000000491320]                                 ; [rip+00071239]
	lea	r8,[000000000041FE20]                                  ; [rip-000002CE]
	mov	edx,8h
	call	421EA0h
	mov	rcx,rax
	mov	[00000000004AE598],rax                                 ; [rip+0008E496]
	jmp	420067h

l0000000000420107:
	call	[00000000004AF744]                                    ; [rip+0008F637]
	lea	r9,[0000000000491338]                                  ; [rip+00071224]
	lea	rcx,[rax+60h]
	lea	r8,[0000000000491370]                                  ; [rip+00071251]
	lea	rdx,[00000000004913A0]                                 ; [rip+0007127A]
	mov	dword ptr [rsp+20h],39h
	call	41BE78h
	mov	ecx,1h
	call	41BCE0h
000000000042013D                                        90 66 90              .f.

;; fn0000000000420140: 0000000000420140
fn0000000000420140 proc
	lea	r8,[000000000041FE20]                                  ; [rip-00000327]
	lea	rcx,[0000000000491320]                                 ; [rip+000711D2]
	mov	edx,8h
	jmp	421EA0h
0000000000420158                         0F 1F 84 00 00 00 00 00         ........

;; fn0000000000420160: 0000000000420160
fn0000000000420160 proc
	lea	r8,[000000000041FE30]                                  ; [rip-00000337]
	lea	rcx,[00000000004913CA]                                 ; [rip+0007125C]
	mov	edx,8h
	jmp	421EA0h
0000000000420178                         0F 1F 84 00 00 00 00 00         ........

;; fn0000000000420180: 0000000000420180
fn0000000000420180 proc
	mov	[0000000000477100],ecx                                 ; [rip+00056F7A]
	ret
0000000000420187                      66 0F 1F 84 00 00 00 00 00        f........

;; fn0000000000420190: 0000000000420190
fn0000000000420190 proc
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,78h
	mov	eax,[0000000000477100]                                 ; [rip+00056F5A]
	test	eax,eax
	jz	420217h

l00000000004201AA:
	mov	rax,[rcx]
	mov	rsi,rdx
	mov	rbx,rcx
	test	rax,rax
	jz	420230h

l00000000004201B8:
	mov	r9d,[rax]
	mov	r15d,[rax+0Ch]
	mov	rdi,[rax+18h]
	mov	r14d,[rax+0Ch]
	mov	r13d,[rax+14h]
	mov	r12d,[rax+8h]
	mov	ebp,[rax+4h]
	mov	[rsp+6Ch],r9d
	call	[00000000004AF58C]                                    ; [rip+0008F3AF]
	mov	rdx,[rbx]
	mov	r9d,[rsp+6Ch]
	lea	rcx,[00000000004913F0]                                 ; [rip+00071204]
	mov	r8d,eax
	mov	[rsp+50h],rsi
	mov	[rsp+48h],rdi
	mov	[rsp+40h],r15d
	mov	[rsp+38h],r14d
	mov	[rsp+30h],r13d
	mov	[rsp+28h],r12d
	mov	[rsp+20h],ebp
	call	423538h
	nop

l0000000000420217:
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
0000000000420228                         0F 1F 84 00 00 00 00 00         ........

l0000000000420230:
	call	[00000000004AF58C]                                    ; [rip+0008F356]
	mov	rdx,[rbx]
	lea	rcx,[00000000004913E4]                                 ; [rip+000711A4]
	mov	r8d,eax
	mov	r9,rsi
	add	rsp,78h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	jmp	423538h
000000000042025B                                  0F 1F 44 00 00            ..D..

;; fn0000000000420260: 0000000000420260
fn0000000000420260 proc
	lea	r8,[000000000041FE40]                                  ; [rip-00000427]
	lea	rcx,[000000000049141F]                                 ; [rip+000711B1]
	mov	edx,4h
	jmp	421EA0h
0000000000420278                         0F 1F 84 00 00 00 00 00         ........

;; fn0000000000420280: 0000000000420280
fn0000000000420280 proc
	lea	r8,[000000000041FE50]                                  ; [rip-00000437]
	lea	rcx,[0000000000491436]                                 ; [rip+000711A8]
	mov	edx,4h
	jmp	421EA0h
0000000000420298                         0F 1F 84 00 00 00 00 00         ........

;; fn00000000004202A0: 00000000004202A0
;;   Called from:
;;     000000000041C5EC (in fn000000000041C5E0)
;;     000000000041CB90 (in fn000000000041CB10)
;;     000000000041CDFC (in fn000000000041CD40)
;;     000000000041D18E (in fn000000000041D140)
;;     000000000041D1BE (in fn000000000041D140)
;;     000000000041D5A5 (in fn000000000041D570)
;;     000000000041DA47 (in fn000000000041D9D0)
;;     000000000041DAC0 (in fn000000000041D9D0)
;;     000000000041DB1C (in fn000000000041D9D0)
;;     000000000041DB67 (in fn000000000041D9D0)
;;     000000000041DC69 (in fn000000000041D9D0)
;;     000000000041DF3A (in fn000000000041DEE0)
;;     000000000041E665 (in fn000000000041E4F0)
;;     000000000041EDD7 (in fn000000000041ED90)
;;     000000000041EE50 (in fn000000000041EDF0)
;;     000000000041EE93 (in fn000000000041EDF0)
;;     000000000041F06E (in fn000000000041EFB0)
;;     000000000041F07D (in fn000000000041EFB0)
;;     000000000041F0E6 (in fn000000000041EFB0)
;;     000000000041F181 (in fn000000000041EFB0)
;;     000000000041F24B (in fn000000000041F200)
;;     000000000041F28A (in fn000000000041F200)
;;     000000000041F505 (in fn000000000041F4A0)
;;     000000000041F575 (in fn000000000041F510)
;;     000000000041F996 (in fn000000000041F940)
;;     000000000041F9C6 (in fn000000000041F940)
;;     000000000041FA74 (in fn000000000041F940)
;;     000000000041FAB6 (in fn000000000041F940)
;;     000000000041FB18 (in fn000000000041F940)
;;     000000000041FBFC (in fn000000000041FBB0)
;;     000000000041FC27 (in fn000000000041FBB0)
;;     000000000041FCF4 (in fn000000000041FBB0)
;;     0000000000420A9A (in fn0000000000420A10)
;;     0000000000421ADC (in fn00000000004219D0)
;;     0000000000421D89 (in fn0000000000421C70)
;;     0000000000422594 (in fn0000000000422550)
;;     00000000004225C0 (in fn00000000004225B0)
;;     00000000004225CB (in fn00000000004225B0)
;;     0000000000422C34 (in fn0000000000422BF0)
;;     0000000000422C62 (in fn0000000000422BF0)
;;     0000000000422CD7 (in fn0000000000422C90)
;;     0000000000422D0C (in fn0000000000422C90)
;;     0000000000422D84 (in fn0000000000422D40)
;;     0000000000422DB2 (in fn0000000000422D40)
;;     0000000000422E73 (in fn0000000000422DE0)
;;     0000000000422F01 (in fn0000000000422EA0)
;;     0000000000422F30 (in fn0000000000422EA0)
;;     00000000004231B2 (in fn0000000000423070)
;;     000000000046947D (in fn0000000000469430)
;;     000000000046953D (in fn0000000000469430)
;;     000000000046ADBA (in fn000000000046AD30)
;;     000000000046AE21 (in fn000000000046AD30)
;;     000000000046AEE3 (in fn000000000046AE90)
;;     00000000004756AA (in fn0000000000475620)
;;     0000000000475787 (in fn00000000004756E0)
;;     0000000000475B63 (in fn0000000000475AF0)
;;     0000000000475C03 (in fn0000000000475BA0)
;;     0000000000475E3A (in fn0000000000475DE0)
;;     0000000000475F22 (in fn0000000000475E80)
;;     0000000000475FDD (in fn0000000000475F80)
;;     000000000047659B (in fn0000000000476590)
fn00000000004202A0 proc
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,20h
	mov	rsi,rcx
	call	41FE60h
	test	eax,eax
	jnz	420325h

l00000000004202B3:
	mov	rbx,[rsi]
	mov	edx,[rbx+8h]
	test	edx,edx
	jnz	420300h

l00000000004202BD:
	mov	eax,[rbx+14h]
	mov	edx,1h
	mov	rcx,rbx
	test	eax,eax
	jz	4202F3h

l00000000004202CC:
	mov	rcx,[rbx+18h]
	mov	dword ptr [rbx+14h],0h
	test	rcx,rcx
	jz	4202EEh

l00000000004202DC:
	xor	r8d,r8d
	mov	edx,1h
	call	[00000000004AF624]                                    ; [rip+0008F33A]
	test	eax,eax
	jz	420335h

l00000000004202EE:
	xor	edx,edx

l00000000004202F0:
	mov	rcx,[rsi]

l00000000004202F3:
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	jmp	420050h
00000000004202FF                                              90                .

l0000000000420300:
	mov	edi,[rbx+14h]
	test	edi,edi
	jz	420330h

l0000000000420307:
	call	[00000000004AF58C]                                    ; [rip+0008F27F]
	cmp	edi,eax
	jz	420345h

l0000000000420311:
	mov	rcx,[rsi]

l0000000000420314:
	mov	edx,1h
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	jmp	420050h

l0000000000420325:
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	ret
000000000042032D                                        0F 1F 00              ...

l0000000000420330:
	mov	rcx,rbx
	jmp	420314h

l0000000000420335:
	call	[00000000004AF58C]                                    ; [rip+0008F251]
	mov	edx,1h
	mov	[rbx+14h],eax
	jmp	4202F0h

l0000000000420345:
	cmp	dword ptr [rbx+8h],2h
	jnz	4202CCh

l000000000042034B:
	lock
	sub	dword ptr [rbx+0Ch],1h
	jz	4202CCh

l0000000000420356:
	jmp	4202EEh
0000000000420358                         0F 1F 84 00 00 00 00 00         ........

;; fn0000000000420360: 0000000000420360
;;   Called from:
;;     000000000041C359 (in fn000000000041C2E0)
;;     000000000042054D (in fn0000000000420500)
;;     00000000004205C0 (in fn0000000000420500)
;;     0000000000422754 (in fn0000000000422700)
;;     0000000000422768 (in fn0000000000422700)
;;     00000000004241A9 (in fn0000000000424170)
;;     00000000004694A9 (in fn0000000000469430)
;;     00000000004763AD (in fn00000000004763A0)
fn0000000000420360 proc
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,20h
	mov	rdi,rcx
	mov	rbx,rdx
	call	41FF30h
	test	eax,eax
	jz	420380h

l0000000000420376:
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	ret
000000000042037E                                           66 90               f.

l0000000000420380:
	mov	edx,20h
	mov	ecx,1h
	call	41BEC0h
	test	rax,rax
	mov	rsi,rax
	jz	420440h

l000000000042039B:
	test	rbx,rbx
	mov	dword ptr [rax+0Ch],0h
	mov	dword ptr [rax+8h],0h
	mov	dword ptr [rax+4h],0h
	jz	4203C3h

l00000000004203B5:
	mov	eax,[rbx]
	mov	edx,eax
	and	edx,3h
	test	al,4h
	mov	[rsi+8h],edx
	jnz	420410h

l00000000004203C3:
	xor	r9d,r9d
	xor	ecx,ecx
	mov	r8d,7FFFFFFFh
	mov	edx,1h
	call	[00000000004AF544]                                    ; [rip+0008F16B]
	test	rax,rax
	mov	[rsi+18h],rax
	jz	4204E0h

l00000000004203E6:
	mov	[rdi],rsi
	mov	rcx,[00000000004AE598]                                 ; [rip+0008E1A8]
	mov	dword ptr [rsi],0BAB1F00Dh
	test	rcx,rcx
	jz	42045Eh

l00000000004203FB:
	call	422310h
	xor	eax,eax
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	ret
000000000042040A                               66 0F 1F 44 00 00           f..D..

l0000000000420410:
	mov	ebx,28h

l0000000000420415:
	mov	rcx,rsi
	call	41BDA0h
	mov	qword ptr [rdi],+0h
	mov	rcx,[00000000004AE598]                                 ; [rip+0008E16D]
	test	rcx,rcx
	jz	4204B0h

l0000000000420434:
	call	422310h
	mov	eax,ebx
	jmp	420376h

l0000000000420440:
	mov	rcx,[00000000004AE598]                                 ; [rip+0008E151]
	test	rcx,rcx
	jz	420485h

l000000000042044C:
	call	422310h
	mov	eax,0Ch
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	ret

l000000000042045E:
	lea	rcx,[0000000000491320]                                 ; [rip+00070EBB]
	lea	r8,[000000000041FE20]                                  ; [rip-0000064C]
	mov	edx,8h
	call	421EA0h
	mov	rcx,rax
	mov	[00000000004AE598],rax                                 ; [rip+0008E118]
	jmp	4203FBh

l0000000000420485:
	lea	rcx,[0000000000491320]                                 ; [rip+00070E94]
	lea	r8,[000000000041FE20]                                  ; [rip-00000673]
	mov	edx,8h
	call	421EA0h
	mov	rcx,rax
	mov	[00000000004AE598],rax                                 ; [rip+0008E0F1]
	jmp	42044Ch
00000000004204A9                            0F 1F 80 00 00 00 00          .......

l00000000004204B0:
	lea	rcx,[0000000000491320]                                 ; [rip+00070E69]
	lea	r8,[000000000041FE20]                                  ; [rip-0000069E]
	mov	edx,8h
	call	421EA0h
	mov	rcx,rax
	mov	[00000000004AE598],rax                                 ; [rip+0008E0C6]
	jmp	420434h
00000000004204D7                      66 0F 1F 84 00 00 00 00 00        f........

l00000000004204E0:
	call	[00000000004AF59C]                                    ; [rip+0008F0B6]
	mov	edx,1h
	cmp	eax,5h
	mov	eax,0Ch
	cmovz	eax,edx

l00000000004204F6:
	mov	ebx,eax
	jmp	420415h
00000000004204FD                                        0F 1F 00              ...

;; fn0000000000420500: 0000000000420500
;;   Called from:
;;     00000000004206E8 (in fn0000000000420660)
fn0000000000420500 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	mov	rsi,rcx
	mov	rcx,[00000000004AE590]                                 ; [rip+0008E080]
	test	rcx,rcx
	jz	4205D0h

l0000000000420519:
	call	422260h
	mov	rdx,[rsi]
	xor	ebx,ebx
	lea	rax,[rdx+3h]
	cmp	rax,2h
	ja	420554h

l000000000042052D:
	cmp	rdx,0FFh
	jz	420548h

l0000000000420533:
	cmp	rdx,0FDh
	jz	4205B1h

l0000000000420539:
	cmp	rdx,0FEh
	jz	420600h

l0000000000420543:
	test	rdx,rdx
	jz	420570h

l0000000000420548:
	xor	edx,edx
	mov	rcx,rsi
	call	420360h
	mov	ebx,eax

l0000000000420554:
	mov	rcx,[00000000004AE590]                                 ; [rip+0008E035]
	test	rcx,rcx
	jz	420581h

l0000000000420560:
	call	422310h
	mov	eax,ebx
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret
000000000042056E                                           66 90               f.

l0000000000420570:
	mov	rcx,[00000000004AE590]                                 ; [rip+0008E019]
	mov	ebx,16h
	test	rcx,rcx
	jnz	420560h

l0000000000420581:
	lea	r8,[000000000041FE30]                                  ; [rip-00000758]
	lea	rcx,[00000000004913CA]                                 ; [rip+00070E3B]
	mov	edx,8h
	call	421EA0h
	mov	rcx,rax
	mov	[00000000004AE590],rax                                 ; [rip+0008DFED]
	call	422310h
	mov	eax,ebx
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret

l00000000004205B1:
	mov	rdx,[00000000004AE588]                                 ; [rip+0008DFD0]
	test	rdx,rdx
	jz	42062Dh

l00000000004205BD:
	mov	rcx,rsi
	call	420360h
	mov	ebx,eax
	jmp	420554h
00000000004205C9                            0F 1F 80 00 00 00 00          .......

l00000000004205D0:
	lea	rcx,[00000000004913CA]                                 ; [rip+00070DF3]
	lea	r8,[000000000041FE30]                                  ; [rip-000007AE]
	mov	edx,8h
	call	421EA0h
	mov	rcx,rax
	mov	[00000000004AE590],rax                                 ; [rip+0008DF9E]
	jmp	420519h
00000000004205F7                      66 0F 1F 84 00 00 00 00 00        f........

l0000000000420600:
	mov	rdx,[00000000004AE580]                                 ; [rip+0008DF79]
	test	rdx,rdx
	jnz	4205BDh

l000000000042060C:
	lea	r8,[000000000041FE50]                                  ; [rip-000007C3]
	lea	rcx,[0000000000491436]                                 ; [rip+00070E1C]
	mov	dl,4h
	call	421EA0h
	mov	rdx,rax
	mov	[00000000004AE580],rax                                 ; [rip+0008DF55]
	jmp	4205BDh

l000000000042062D:
	lea	r8,[000000000041FE40]                                  ; [rip-000007F4]
	lea	rcx,[000000000049141F]                                 ; [rip+00070DE4]
	mov	dl,4h
	call	421EA0h
	mov	rdx,rax
	mov	[00000000004AE588],rax                                 ; [rip+0008DF3C]
	jmp	4205BDh
0000000000420651    66 66 66 66 66 66 2E 0F 1F 84 00 00 00 00 00  ffffff.........

;; fn0000000000420660: 0000000000420660
;;   Called from:
;;     000000000042083D (in fn0000000000420830)
;;     000000000042087C (in fn0000000000420830)
;;     0000000000420916 (in fn0000000000420900)
;;     00000000004209D8 (in fn00000000004209D0)
fn0000000000420660 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	mov	rsi,rcx
	mov	rcx,[00000000004AE598]                                 ; [rip+0008DF28]
	test	rcx,rcx
	jz	420750h

l0000000000420679:
	call	422260h
	test	rsi,rsi
	jz	420720h

l0000000000420687:
	mov	rax,[rsi]
	test	rax,rax
	jz	420720h

l0000000000420693:
	lea	rdx,[rax+3h]
	cmp	rdx,2h
	jbe	4206D0h

l000000000042069D:
	cmp	dword ptr [rax],0BAB1F00Dh
	jz	420740h

l00000000004206A9:
	mov	ebx,16h

l00000000004206AE:
	mov	rcx,[00000000004AE598]                                 ; [rip+0008DEE3]
	test	rcx,rcx
	jz	4207A4h

l00000000004206BE:
	call	422310h
	mov	eax,ebx
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret
00000000004206CC                                     0F 1F 40 00             ..@.

l00000000004206D0:
	mov	rcx,[00000000004AE598]                                 ; [rip+0008DEC1]
	test	rcx,rcx
	jz	4207D0h

l00000000004206E0:
	call	422310h
	mov	rcx,rsi
	call	420500h
	mov	rcx,[00000000004AE598]                                 ; [rip+0008DEA4]
	mov	ebx,eax
	test	rcx,rcx
	jz	420800h

l00000000004206FF:
	call	422260h
	test	ebx,0FFFFFFEFh
	jnz	4206AEh

l000000000042070C:
	mov	rax,[rsi]
	test	rax,rax
	jz	4206A9h

l0000000000420714:
	jmp	42069Dh
0000000000420716                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l0000000000420720:
	mov	rcx,[00000000004AE598]                                 ; [rip+0008DE71]
	test	rcx,rcx
	jz	420780h

l000000000042072C:
	call	422310h
	mov	eax,16h
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret
000000000042073D                                        0F 1F 00              ...

l0000000000420740:
	mov	edx,[rax+4h]
	xor	ebx,ebx
	add	edx,1h
	mov	[rax+4h],edx
	jmp	4206AEh

l0000000000420750:
	lea	rcx,[0000000000491320]                                 ; [rip+00070BC9]
	lea	r8,[000000000041FE20]                                  ; [rip-0000093E]
	mov	edx,8h
	call	421EA0h
	mov	rcx,rax
	mov	[00000000004AE598],rax                                 ; [rip+0008DE26]
	jmp	420679h
0000000000420777                      66 0F 1F 84 00 00 00 00 00        f........

l0000000000420780:
	lea	rcx,[0000000000491320]                                 ; [rip+00070B99]
	lea	r8,[000000000041FE20]                                  ; [rip-0000096E]
	mov	edx,8h
	call	421EA0h
	mov	rcx,rax
	mov	[00000000004AE598],rax                                 ; [rip+0008DDF6]
	jmp	42072Ch

l00000000004207A4:
	lea	rcx,[0000000000491320]                                 ; [rip+00070B75]
	lea	r8,[000000000041FE20]                                  ; [rip-00000992]
	mov	edx,8h
	call	421EA0h
	mov	rcx,rax
	mov	[00000000004AE598],rax                                 ; [rip+0008DDD2]
	jmp	4206BEh
00000000004207CB                                  0F 1F 44 00 00            ..D..

l00000000004207D0:
	lea	rcx,[0000000000491320]                                 ; [rip+00070B49]
	lea	r8,[000000000041FE20]                                  ; [rip-000009BE]
	mov	edx,8h
	call	421EA0h
	mov	rcx,rax
	mov	[00000000004AE598],rax                                 ; [rip+0008DDA6]
	jmp	4206E0h
00000000004207F7                      66 0F 1F 84 00 00 00 00 00        f........

l0000000000420800:
	lea	rcx,[0000000000491320]                                 ; [rip+00070B19]
	lea	r8,[000000000041FE20]                                  ; [rip-000009EE]
	mov	edx,8h
	call	421EA0h
	mov	rcx,rax
	mov	[00000000004AE598],rax                                 ; [rip+0008DD76]
	jmp	4206FFh
0000000000420827                      66 0F 1F 84 00 00 00 00 00        f........

;; fn0000000000420830: 0000000000420830
;;   Called from:
;;     00000000004208F5 (in fn00000000004208F0)
;;     0000000000420989 (in fn0000000000420900)
;;     00000000004209BC (in fn0000000000420900)
fn0000000000420830 proc
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,28h
	mov	rsi,rcx
	mov	edi,edx
	call	420660h
	test	eax,eax
	jnz	420885h

l0000000000420846:
	mov	rbx,[rsi]
	mov	eax,[rbx+8h]
	test	eax,eax
	jz	420890h

l0000000000420850:
	mov	ebp,[rbx+14h]
	mov	rcx,rbx
	test	ebp,ebp
	jnz	4208C0h

l000000000042085A:
	mov	rbp,[rbx+18h]
	xor	edx,edx
	call	420050h
	mov	r8d,edi
	mov	edx,1h
	mov	rcx,rbp
	call	421240h
	test	eax,eax
	jnz	420885h

l0000000000420879:
	mov	rcx,rsi
	call	420660h
	test	eax,eax
	jz	420895h

l0000000000420885:
	add	rsp,28h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
000000000042088E                                           66 90               f.

l0000000000420890:
	mov	rcx,rbx
	jmp	42085Ah

l0000000000420895:
	mov	dword ptr [rbx+0Ch],1h
	call	[00000000004AF58C]                                    ; [rip+0008ECEA]
	mov	[rbx+14h],eax

l00000000004208A5:
	xor	edx,edx

l00000000004208A7:
	mov	rcx,[rsi]
	add	rsp,28h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	jmp	420050h
00000000004208B7                      66 0F 1F 84 00 00 00 00 00        f........

l00000000004208C0:
	call	[00000000004AF58C]                                    ; [rip+0008ECC6]
	cmp	ebp,eax
	jz	4208D0h

l00000000004208CA:
	mov	rcx,[rsi]
	jmp	42085Ah
00000000004208CF                                              90                .

l00000000004208D0:
	cmp	dword ptr [rbx+8h],2h
	mov	edx,24h
	jnz	4208A7h

l00000000004208DB:
	lock
	add	dword ptr [rbx+0Ch],1h
	jmp	4208A5h
00000000004208E2       66 66 66 66 66 2E 0F 1F 84 00 00 00 00 00   fffff.........

;; fn00000000004208F0: 00000000004208F0
;;   Called from:
;;     000000000041CB25 (in fn000000000041CB10)
;;     000000000041CD5D (in fn000000000041CD40)
;;     000000000041D15F (in fn000000000041D140)
;;     000000000041D589 (in fn000000000041D570)
;;     000000000041D9F1 (in fn000000000041D9D0)
;;     000000000041DA01 (in fn000000000041D9D0)
;;     000000000041DA7A (in fn000000000041D9D0)
;;     000000000041DA8A (in fn000000000041D9D0)
;;     000000000041DB9C (in fn000000000041D9D0)
;;     000000000041DF0B (in fn000000000041DEE0)
;;     000000000041E599 (in fn000000000041E4F0)
;;     000000000041EE2B (in fn000000000041EDF0)
;;     000000000041F009 (in fn000000000041EFB0)
;;     000000000041F21C (in fn000000000041F200)
;;     000000000041F4D8 (in fn000000000041F4A0)
;;     000000000041F548 (in fn000000000041F510)
;;     000000000041F95D (in fn000000000041F940)
;;     000000000041FBCE (in fn000000000041FBB0)
;;     0000000000421B94 (in fn0000000000421B30)
;;     0000000000422561 (in fn0000000000422550)
;;     0000000000422584 (in fn0000000000422550)
;;     0000000000422C1A (in fn0000000000422BF0)
;;     0000000000422C54 (in fn0000000000422BF0)
;;     0000000000422DA4 (in fn0000000000422D40)
;;     0000000000422EE7 (in fn0000000000422EA0)
;;     0000000000469450 (in fn0000000000469430)
;;     000000000046AD50 (in fn000000000046AD30)
;;     000000000046AECA (in fn000000000046AE90)
;;     0000000000475657 (in fn0000000000475620)
;;     0000000000475727 (in fn00000000004756E0)
;;     0000000000475B40 (in fn0000000000475AF0)
;;     0000000000475BE0 (in fn0000000000475BA0)
;;     0000000000475E03 (in fn0000000000475DE0)
;;     0000000000475EBD (in fn0000000000475E80)
;;     0000000000475FA3 (in fn0000000000475F80)
fn00000000004208F0 proc
	mov	edx,0FFFFFFFFh
	jmp	420830h
00000000004208FA                               66 0F 1F 44 00 00           f..D..

;; fn0000000000420900: 0000000000420900
;;   Called from:
;;     0000000000422CBD (in fn0000000000422C90)
;;     0000000000422CF7 (in fn0000000000422C90)
;;     00000000004230BC (in fn0000000000423070)
;;     00000000004230D3 (in fn0000000000423070)
fn0000000000420900 proc
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,20h
	test	rdx,rdx
	jz	4209B0h

l0000000000420910:
	mov	rsi,rdx
	mov	rbx,rcx
	call	420660h
	test	eax,eax
	jz	420930h

l000000000042091F:
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	ret
0000000000420927                      66 0F 1F 84 00 00 00 00 00        f........

l0000000000420930:
	mov	rcx,[rbx]
	call	41FFD0h
	cmp	eax,10h
	mov	edx,eax
	jnz	4209A0h

l000000000042093F:
	mov	rax,[rbx]
	mov	edx,[rax+8h]
	test	edx,edx
	jz	420950h

l0000000000420949:
	mov	edi,[rax+14h]
	test	edi,edi
	jnz	420990h

l0000000000420950:
	call	423260h
	mov	rcx,rsi
	mov	rdi,rax
	call	423290h
	mov	rcx,[rbx]
	mov	rsi,rax
	mov	edx,10h
	call	420050h
	mov	edx,esi
	mov	eax,0h
	mov	rcx,rbx
	sub	edx,edi
	cmp	rdi,rsi
	cmova	edx,eax

l0000000000420982:
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	jmp	420830h
000000000042098E                                           66 90               f.

l0000000000420990:
	call	[00000000004AF58C]                                    ; [rip+0008EBF6]
	cmp	edi,eax
	jnz	420950h

l000000000042099A:
	mov	edx,24h
	nop

l00000000004209A0:
	mov	rcx,[rbx]
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	jmp	420050h
00000000004209AF                                              90                .

l00000000004209B0:
	mov	edx,0FFFFFFFFh
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	jmp	420830h
00000000004209C1    66 66 66 66 66 66 2E 0F 1F 84 00 00 00 00 00  ffffff.........

;; fn00000000004209D0: 00000000004209D0
;;   Called from:
;;     0000000000420A45 (in fn0000000000420A10)
;;     0000000000422D6A (in fn0000000000422D40)
;;     0000000000422E0A (in fn0000000000422DE0)
;;     0000000000422E17 (in fn0000000000422DE0)
fn00000000004209D0 proc
	push	rbx
	sub	rsp,20h
	mov	rbx,rcx
	call	420660h
	test	eax,eax
	jz	4209F0h

l00000000004209E1:
	add	rsp,20h
	pop	rbx
	ret
00000000004209E7                      66 0F 1F 84 00 00 00 00 00        f........

l00000000004209F0:
	mov	rcx,[rbx]
	call	41FFD0h
	mov	rcx,[rbx]
	mov	edx,eax
	add	rsp,20h
	pop	rbx
	jmp	420050h
0000000000420A07                      66 0F 1F 84 00 00 00 00 00        f........

;; fn0000000000420A10: 0000000000420A10
;;   Called from:
;;     0000000000420B7A (in fn0000000000420B50)
fn0000000000420A10 proc
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,38h
	mov	eax,16h
	test	rcx,rcx
	jz	420AA1h

l0000000000420A22:
	cmp	qword ptr [rcx],0h
	jz	420AA1h

l0000000000420A28:
	mov	qword ptr [rdx],+0h
	lea	rbp,[rsp+28h]
	mov	rax,[rcx]
	mov	rbx,rcx
	mov	rdi,rdx
	mov	rcx,rbp
	mov	[rsp+28h],rax
	call	4209D0h
	test	eax,eax
	jnz	420AA1h

l0000000000420A4E:
	mov	rcx,[00000000004AE598]                                 ; [rip+0008DB43]
	test	rcx,rcx
	jz	420AE0h

l0000000000420A5E:
	call	422260h
	mov	rax,[rbx]
	test	rax,rax
	jz	420AD2h

l0000000000420A6B:
	lea	rdx,[rax+3h]
	cmp	rdx,2h
	jbe	420AC0h

l0000000000420A75:
	cmp	dword ptr [rax],0BAB1F00Dh
	mov	esi,16h
	jz	420AB0h

l0000000000420A82:
	mov	rcx,[00000000004AE598]                                 ; [rip+0008DB0F]
	test	rcx,rcx
	jz	420B1Ah

l0000000000420A92:
	call	422310h
	mov	rcx,rbp
	call	4202A0h
	mov	eax,esi

l0000000000420AA1:
	add	rsp,38h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
0000000000420AAA                               66 0F 1F 44 00 00           f..D..

l0000000000420AB0:
	mov	edx,[rax+4h]
	test	edx,edx
	jnz	420B10h

l0000000000420AB7:
	mov	[rdi],rax
	nop	word ptr [rax+rax+0h]

l0000000000420AC0:
	xor	eax,eax
	mov	qword ptr [rbx],+0h
	add	rsp,38h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret

l0000000000420AD2:
	mov	esi,16h
	jmp	420A82h
0000000000420AD9                            0F 1F 80 00 00 00 00          .......

l0000000000420AE0:
	lea	rcx,[0000000000491320]                                 ; [rip+00070839]
	lea	r8,[000000000041FE20]                                  ; [rip-00000CCE]
	mov	edx,8h
	call	421EA0h
	mov	rcx,rax
	mov	[00000000004AE598],rax                                 ; [rip+0008DA96]
	jmp	420A5Eh
0000000000420B07                      66 0F 1F 84 00 00 00 00 00        f........

l0000000000420B10:
	mov	esi,0BEEFh
	jmp	420A82h

l0000000000420B1A:
	lea	rcx,[0000000000491320]                                 ; [rip+000707FF]
	lea	r8,[000000000041FE20]                                  ; [rip-00000D08]
	mov	edx,8h
	call	421EA0h
	mov	rcx,rax
	mov	[00000000004AE598],rax                                 ; [rip+0008DA5C]
	jmp	420A92h
0000000000420B41    66 66 66 66 66 66 2E 0F 1F 84 00 00 00 00 00  ffffff.........

;; fn0000000000420B50: 0000000000420B50
;;   Called from:
;;     000000000041C4F4 (in fn000000000041C460)
;;     000000000041D880 (in fn000000000041D7F0)
;;     000000000041D937 (in fn000000000041D7F0)
;;     000000000041DAC8 (in fn000000000041D9D0)
;;     000000000041DC71 (in fn000000000041D9D0)
;;     000000000041F6FA (in fn000000000041F580)
;;     000000000041F8FD (in fn000000000041F840)
;;     000000000041FAF5 (in fn000000000041F940)
;;     000000000041FCD1 (in fn000000000041FBB0)
;;     00000000004227A3 (in fn0000000000422700)
;;     00000000004227C3 (in fn0000000000422700)
;;     00000000004227CB (in fn0000000000422700)
;;     0000000000422BC5 (in fn0000000000422A90)
;;     0000000000422BCE (in fn0000000000422A90)
;;     0000000000476337 (in fn0000000000476330)
;;     0000000000476347 (in fn0000000000476340)
;;     0000000000476357 (in fn0000000000476350)
fn0000000000420B50 proc
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,30h
	mov	rdi,[00000000004AF6A4]                                 ; [rip+0008EB46]
	mov	rbx,rcx
	lea	rsi,[rsp+28h]
	jmp	420B74h
0000000000420B68                         0F 1F 84 00 00 00 00 00         ........

l0000000000420B70:
	xor	ecx,ecx
	call	rdi

l0000000000420B74:
	mov	rdx,rsi
	mov	rcx,rbx
	call	420A10h
	cmp	eax,0BEEFh
	jz	420B70h

l0000000000420B86:
	test	eax,eax
	jnz	420BDDh

l0000000000420B8A:
	mov	rsi,[rsp+28h]
	test	rsi,rsi
	jz	420BCAh

l0000000000420B94:
	mov	rcx,[rsi+18h]
	call	[00000000004AF52C]                                    ; [rip+0008E98E]
	mov	rcx,[rsp+28h]
	mov	dword ptr [rsi+0Ch],0h
	mov	dword ptr [rsi],0DEADBEEFh
	mov	dword ptr [rsi+8h],0h
	mov	dword ptr [rsi+4h],0h
	call	41BDA0h
	mov	qword ptr [rbx],+0h

l0000000000420BCA:
	mov	rcx,[00000000004AE598]                                 ; [rip+0008D9C7]
	test	rcx,rcx
	jz	420BE5h

l0000000000420BD6:
	call	422310h
	xor	eax,eax

l0000000000420BDD:
	add	rsp,30h
	pop	rbx
	pop	rsi
	pop	rdi
	ret

l0000000000420BE5:
	lea	rcx,[0000000000491320]                                 ; [rip+00070734]
	lea	r8,[000000000041FE20]                                  ; [rip-00000DD3]
	mov	edx,8h
	call	421EA0h
	mov	rcx,rax
	mov	[00000000004AE598],rax                                 ; [rip+0008D991]
	jmp	420BD6h
0000000000420C09                            0F 1F 80 00 00 00 00          .......

;; fn0000000000420C10: 0000000000420C10
fn0000000000420C10 proc
	xor	eax,eax
	mov	dword ptr [rcx],0h
	ret
0000000000420C19                            0F 1F 80 00 00 00 00          .......

;; fn0000000000420C20: 0000000000420C20
fn0000000000420C20 proc
	cmp	rcx,1h
	sbb	eax,eax
	and	eax,16h
	ret
0000000000420C2A                               66 0F 1F 44 00 00           f..D..

;; fn0000000000420C30: 0000000000420C30
fn0000000000420C30 proc
	test	rcx,rcx
	jz	420C3Ah

l0000000000420C35:
	test	rdx,rdx
	jnz	420C40h

l0000000000420C3A:
	mov	eax,16h
	ret

l0000000000420C40:
	mov	eax,[rcx]
	and	eax,3h
	mov	[rdx],eax
	xor	eax,eax
	ret
0000000000420C4A                               66 0F 1F 44 00 00           f..D..

;; fn0000000000420C50: 0000000000420C50
fn0000000000420C50 proc
	mov	eax,16h
	test	rcx,rcx
	jz	420C5Fh

l0000000000420C5A:
	cmp	edx,2h
	jbe	420C61h

l0000000000420C5F:
	ret

l0000000000420C61:
	mov	eax,[rcx]
	and	eax,0FCh
	or	edx,eax
	xor	eax,eax
	mov	[rcx],edx
	ret
0000000000420C6D                                        0F 1F 00              ...

;; fn0000000000420C70: 0000000000420C70
fn0000000000420C70 proc
	test	rcx,rcx
	jz	420C7Ah

l0000000000420C75:
	test	rdx,rdx
	jnz	420C80h

l0000000000420C7A:
	mov	eax,16h
	ret

l0000000000420C80:
	mov	eax,[rcx]
	shr	eax,2h
	and	eax,1h
	mov	[rdx],eax
	xor	eax,eax
	ret
0000000000420C8D                                        0F 1F 00              ...

;; fn0000000000420C90: 0000000000420C90
fn0000000000420C90 proc
	cmp	edx,1h
	ja	420C9Ah

l0000000000420C95:
	test	rcx,rcx
	jnz	420CA0h

l0000000000420C9A:
	mov	eax,16h
	ret

l0000000000420CA0:
	cmp	edx,1h
	mov	eax,28h
	mov	edx,0h
	cmovnz	eax,edx

l0000000000420CB0:
	and	dword ptr [rcx],0FBh
	ret
0000000000420CB4             66 66 66 2E 0F 1F 84 00 00 00 00 00     fff.........

;; fn0000000000420CC0: 0000000000420CC0
fn0000000000420CC0 proc
	mov	eax,[rcx]
	and	eax,18h
	mov	[rdx],eax
	xor	eax,eax
	ret
0000000000420CCA                               66 0F 1F 44 00 00           f..D..

;; fn0000000000420CD0: 0000000000420CD0
fn0000000000420CD0 proc
	mov	eax,16h
	mov	r8d,edx
	and	r8d,18h
	cmp	r8d,18h
	jz	420CE4h

l0000000000420CE2:
	ret

l0000000000420CE4:
	mov	eax,[rcx]
	and	eax,0E7h
	or	edx,eax
	xor	eax,eax
	mov	[rcx],edx
	ret

;; fn0000000000420CF0: 0000000000420CF0
fn0000000000420CF0 proc
	mov	eax,[rcx]
	shr	eax,5h
	mov	[rdx],eax
	xor	eax,eax
	ret
0000000000420CFA                               66 0F 1F 44 00 00           f..D..

;; fn0000000000420D00: 0000000000420D00
fn0000000000420D00 proc
	mov	eax,[rcx]
	shl	edx,5h
	and	eax,1Fh
	add	edx,eax
	xor	eax,eax
	mov	[rcx],edx
	ret
0000000000420D0F                                              90                .

;; fn0000000000420D10: 0000000000420D10
fn0000000000420D10 proc
	mov	qword ptr [rcx],-1h
	ret
0000000000420D18                         0F 1F 84 00 00 00 00 00         ........

;; fn0000000000420D20: 0000000000420D20
;;   Called from:
;;     000000000042166B (in fn0000000000421590)
;;     00000000004216A5 (in fn0000000000421590)
;;     00000000004216C9 (in fn0000000000421590)
;;     0000000000421812 (in fn0000000000421780)
;;     0000000000421940 (in fn00000000004218B0)
;;     0000000000421A7E (in fn00000000004219D0)
;;     0000000000421B81 (in fn0000000000421B30)
;;     0000000000421C20 (in fn0000000000421B30)
;;     0000000000421D2B (in fn0000000000421C70)
fn0000000000420D20 proc
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,28h
	mov	rbp,r9
	mov	ebx,edx
	mov	rdi,rcx
	mov	rsi,r8
	mov	rcx,r8
	call	[00000000004AF55C]                                    ; [rip+0008E820]
	movsxd	rdx,dword ptr [rbp+0h]
	movsxd	r10,ebx
	add	r10,rdx
	mov	rax,rdx
	cmp	r10,+7FFFFFFFh
	jle	420D70h

l0000000000420D52:
	mov	rcx,rsi
	call	[00000000004AF5FC]                                    ; [rip+0008E8A1]
	mov	eax,22h
	add	rsp,28h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
0000000000420D69                            0F 1F 80 00 00 00 00          .......

l0000000000420D70:
	neg	eax
	lock
	add	[rbp+0h],ebx
	test	eax,eax
	jle	420D91h

l0000000000420D7A:
	cmp	eax,ebx
	mov	rcx,rdi
	cmovg	eax,ebx

l0000000000420D82:
	xor	r8d,r8d
	mov	edx,eax
	call	[00000000004AF624]                                    ; [rip+0008E897]
	test	eax,eax
	jz	420DA5h

l0000000000420D91:
	mov	rcx,rsi
	call	[00000000004AF5FC]                                    ; [rip+0008E862]
	xor	eax,eax
	add	rsp,28h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret

l0000000000420DA5:
	neg	ebx
	lock
	add	[rbp+0h],ebx
	mov	rcx,rsi
	call	[00000000004AF5FC]                                    ; [rip+0008E848]
	mov	eax,16h
	add	rsp,28h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
0000000000420DC2       66 66 66 66 66 2E 0F 1F 84 00 00 00 00 00   fffff.........

;; fn0000000000420DD0: 0000000000420DD0
fn0000000000420DD0 proc
	sub	rsp,38h
	test	rdx,rdx
	jz	420DF0h

l0000000000420DD9:
	mov	[00000000004AE5A8],rdx                                 ; [rip+0008D7C8]

l0000000000420DE0:
	mov	[00000000004AE5B0],ecx                                 ; [rip+0008D7CA]
	add	rsp,38h
	ret
0000000000420DEB                                  0F 1F 44 00 00            ..D..

l0000000000420DF0:
	cmp	[00000000004AE5A8],0h                                  ; [rip+0008D7B0]
	jnz	420DE0h

l0000000000420DFA:
	mov	[rsp+2Ch],ecx
	call	[00000000004AF744]                                    ; [rip+0008E940]
	mov	ecx,[rsp+2Ch]
	add	rax,30h
	mov	[00000000004AE5A8],rax                                 ; [rip+0008D795]
	mov	[00000000004AE5B0],ecx                                 ; [rip+0008D797]
	add	rsp,38h
	ret
0000000000420E1E                                           66 90               f.

;; fn0000000000420E20: 0000000000420E20
fn0000000000420E20 proc
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,48h
	mov	eax,[00000000004AE5B0]                                 ; [rip+0008D782]
	test	eax,eax
	jz	420E72h

l0000000000420E32:
	mov	rax,[rcx]
	mov	rsi,rdx
	mov	rbx,rcx
	test	rax,rax
	jz	420E80h

l0000000000420E40:
	mov	ebp,[rax+8h]
	mov	edi,[rax]
	call	[00000000004AF58C]                                    ; [rip+0008E741]
	mov	r8,[rbx]
	mov	rcx,[00000000004AE5A8]                                 ; [rip+0008D753]
	lea	rdx,[000000000049145B]                                 ; [rip+000705FF]
	mov	r9d,eax
	mov	[rsp+30h],rsi
	mov	[rsp+28h],ebp
	mov	[rsp+20h],edi
	call	41BE78h
	nop

l0000000000420E72:
	add	rsp,48h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
0000000000420E7B                                  0F 1F 44 00 00            ..D..

l0000000000420E80:
	call	[00000000004AF58C]                                    ; [rip+0008E706]
	mov	r8,[rbx]
	mov	rcx,[00000000004AE5A8]                                 ; [rip+0008D718]
	lea	rdx,[0000000000491450]                                 ; [rip+000705B9]
	mov	r9d,eax
	mov	[rsp+20h],rsi
	call	41BE78h
	jmp	420E72h
0000000000420EA6                   66 2E 0F 1F 84 00 00 00 00 00       f.........

;; fn0000000000420EB0: 0000000000420EB0
fn0000000000420EB0 proc
	lea	r8,[0000000000420D10]                                  ; [rip-000001A7]
	lea	rcx,[0000000000491472]                                 ; [rip+000705B4]
	mov	edx,8h
	jmp	421EA0h
0000000000420EC8                         0F 1F 84 00 00 00 00 00         ........

;; fn0000000000420ED0: 0000000000420ED0
fn0000000000420ED0 proc
	mov	eax,16h
	test	rcx,rcx
	jz	420EE2h

l0000000000420EDA:
	mov	dword ptr [rcx],0h
	xor	al,al

l0000000000420EE2:
	ret
0000000000420EE4             66 66 66 2E 0F 1F 84 00 00 00 00 00     fff.........

;; fn0000000000420EF0: 0000000000420EF0
fn0000000000420EF0 proc
	mov	eax,16h
	test	rcx,rcx
	jz	420F02h

l0000000000420EFA:
	mov	dword ptr [rcx],0h
	xor	al,al

l0000000000420F02:
	ret
0000000000420F04             66 66 66 2E 0F 1F 84 00 00 00 00 00     fff.........

;; fn0000000000420F10: 0000000000420F10
fn0000000000420F10 proc
	test	rcx,rcx
	jz	420F1Ah

l0000000000420F15:
	test	rdx,rdx
	jnz	420F20h

l0000000000420F1A:
	mov	eax,16h
	ret

l0000000000420F20:
	mov	eax,[rcx]
	mov	[rdx],eax
	xor	eax,eax
	ret
0000000000420F27                      66 0F 1F 84 00 00 00 00 00        f........

;; fn0000000000420F30: 0000000000420F30
fn0000000000420F30 proc
	test	rcx,rcx
	jz	420F3Ah

l0000000000420F35:
	test	rdx,rdx
	jnz	420F40h

l0000000000420F3A:
	mov	eax,16h
	ret

l0000000000420F40:
	mov	dword ptr [rdx],0h
	xor	eax,eax
	ret
0000000000420F49                            0F 1F 80 00 00 00 00          .......

;; fn0000000000420F50: 0000000000420F50
fn0000000000420F50 proc
	test	rcx,rcx
	jz	420F59h

l0000000000420F55:
	test	edx,edx
	jz	420F60h

l0000000000420F59:
	mov	eax,16h
	ret
0000000000420F5F                                              90                .

l0000000000420F60:
	xor	eax,eax
	ret
0000000000420F63          66 66 66 66 2E 0F 1F 84 00 00 00 00 00    ffff.........

;; fn0000000000420F70: 0000000000420F70
fn0000000000420F70 proc
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,20h
	mov	eax,16h
	cmp	ecx,2h
	jbe	420F90h

l0000000000420F84:
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
0000000000420F8F                                              90                .

l0000000000420F90:
	and	edx,1h
	mov	r12,r9
	mov	rcx,r8
	jnz	421000h

l0000000000420F9B:
	call	423290h
	mov	rbx,rax

l0000000000420FA3:
	mov	ebp,1869Fh
	jmp	420FB5h
0000000000420FAA                               66 0F 1F 44 00 00           f..D..

l0000000000420FB0:
	sub	rbx,rax
	jz	420FDDh

l0000000000420FB5:
	cmp	rbx,+1869Eh
	mov	edi,ebp
	cmovbe	edi,ebx

l0000000000420FC1:
	call	423260h
	mov	ecx,edi
	mov	rsi,rax
	call	41EF40h
	call	423260h
	sub	rax,rsi
	cmp	rbx,rax
	ja	420FB0h

l0000000000420FDD:
	xor	eax,eax
	test	r12,r12
	jz	420F84h

l0000000000420FE4:
	mov	qword ptr [r12],+0h
	mov	qword ptr [r12+8h],+0h
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
