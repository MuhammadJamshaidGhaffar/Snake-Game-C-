;;; Segment .text (0000000000401000)

l0000000000451010:
	mov	rax,rdi
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
000000000045101E                                           66 90               f.

l0000000000451020:
	mov	edx,[rax-8h]
	test	edx,edx
	jg	450FD3h

l0000000000451027:
	jmp	450FE9h
0000000000451029                            0F 1F 80 00 00 00 00          .......

l0000000000451030:
	movzx	eax,byte ptr [rdx]
	mov	[rcx],al
	jmp	450FFEh

l0000000000451037:
	lea	rdx,[000000000048D6FE]                                 ; [rip+0003C6C0]
	lea	rcx,[000000000048D5D0]                                 ; [rip+0003C58B]
	mov	r9,rbx
	call	471560h
	nop
	nop
	nop

;; fn0000000000451050: 0000000000451050
;;   Called from:
;;     000000000045104F (in fn0000000000450F90)
fn0000000000451050 proc
	push	rbx
	sub	rsp,20h
	mov	r8,[rdx+8h]
	mov	rax,[rdx]
	mov	rbx,rcx
	test	r8,r8
	jz	45106Ch

l0000000000451064:
	mov	rdx,rax
	call	450E20h

l000000000045106C:
	mov	rax,rbx
	add	rsp,20h
	pop	rbx
	ret
0000000000451075                90 90 90 90 90 90 90 90 90 90 90      ...........

;; fn0000000000451080: 0000000000451080
;;   Called from:
;;     000000000044711B (in fn0000000000446BF0)
;;     0000000000447206 (in fn0000000000446BF0)
;;     00000000004477FB (in fn00000000004472D0)
;;     00000000004478E6 (in fn00000000004472D0)
fn0000000000451080 proc
	push	rbx
	sub	rsp,20h
	test	rdx,rdx
	mov	rbx,rcx
	jz	451096h

l000000000045108D:
	movsx	r8d,r8b
	call	4510A0h

l0000000000451096:
	mov	rax,rbx
	add	rsp,20h
	pop	rbx
	ret
000000000045109F                                              90                .

;; fn00000000004510A0: 00000000004510A0
;;   Called from:
;;     0000000000451091 (in fn0000000000451080)
;;     000000000045171D (in fn00000000004516E0)
;;     0000000000473FE3 (in fn0000000000473FA0)
fn00000000004510A0 proc
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,28h
	mov	r9,[rcx]
	mov	rsi,rcx
	mov	rcx,3FFFFFFFFFFFFFF9h
	mov	rdi,rdx
	mov	ebp,r8d
	mov	rax,[r9-18h]
	sub	rcx,rax
	cmp	rcx,rdx
	jc	451137h

l00000000004510CA:
	lea	rbx,[rdx+rax]
	cmp	rbx,[r9-10h]
	jbe	451120h

l00000000004510D4:
	mov	rcx,rsi
	mov	rdx,rbx
	call	451BE0h
	mov	r9,[rsi]
	cmp	rdi,1h
	mov	rax,[r9-18h]
	lea	rcx,[r9+rax]
	jz	451132h

l00000000004510F0:
	movsx	edx,bpl
	mov	r8,rdi
	call	41BD88h

l00000000004510FC:
	mov	rax,[rsi]
	mov	dword ptr [rax-8h],0h
	mov	[rax-18h],rbx
	mov	byte ptr [rax+rbx],0h
	xor	eax,eax
	add	rsp,28h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
0000000000451119                            0F 1F 80 00 00 00 00          .......

l0000000000451120:
	mov	edx,[r9-8h]
	test	edx,edx
	jg	4510D4h

l0000000000451128:
	cmp	rdi,1h
	lea	rcx,[r9+rax]
	jnz	4510F0h

l0000000000451132:
	mov	[rcx],bpl
	jmp	4510FCh

l0000000000451137:
	lea	rcx,[000000000048D6FE]                                 ; [rip+0003C5C0]
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

;; fn0000000000451150: 0000000000451150
;;   Called from:
;;     000000000045114F (in fn00000000004510A0)
fn0000000000451150 proc
	mov	r8,[rcx]
	mov	rax,rcx
	mov	r10d,[r8-8h]
	test	r10d,r10d
	js	451180h

l000000000045115F:
	mov	rcx,[rdx]
	mov	r9d,[rcx-8h]
	test	r9d,r9d
	jns	451172h

l000000000045116B:
	mov	dword ptr [rcx-8h],0h

l0000000000451172:
	mov	[rax],rcx
	mov	[rdx],r8
	ret
0000000000451179                            0F 1F 80 00 00 00 00          .......

l0000000000451180:
	mov	dword ptr [r8-8h],0h
	jmp	45115Fh
000000000045118A                               90 90 90 90 90 90           ......

;; fn0000000000451190: 0000000000451190
fn0000000000451190 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	mov	rsi,rcx
	mov	rbx,rdx
	mov	rcx,rdx
	call	41BCB8h
	mov	rdx,rbx
	mov	r8,rax
	mov	rcx,rsi
	add	rsp,28h
	pop	rbx
	pop	rsi
	jmp	4511C0h
00000000004511B8                         90 90 90 90 90 90 90 90         ........

;; fn00000000004511C0: 00000000004511C0
;;   Called from:
;;     0000000000427136 (in fn00000000004270F0)
;;     0000000000427160 (in fn00000000004270F0)
;;     0000000000427185 (in fn00000000004270F0)
;;     00000000004271A5 (in fn00000000004270F0)
;;     00000000004271C5 (in fn00000000004270F0)
;;     000000000042AAC1 (in fn000000000042AA60)
;;     000000000042AAE7 (in fn000000000042AA60)
;;     000000000042AB26 (in fn000000000042AA60)
;;     000000000042AB62 (in fn000000000042AA60)
;;     000000000042AB82 (in fn000000000042AA60)
;;     000000000042BDA1 (in fn000000000042BBA0)
;;     00000000004470FB (in fn0000000000446BF0)
;;     00000000004477DB (in fn00000000004472D0)
;;     00000000004511B3 (in fn0000000000451190)
;;     000000000045132A (in fn0000000000451300)
;;     000000000045135A (in fn0000000000451350)
;;     00000000004524B3 (in fn0000000000452490)
;;     00000000004524E2 (in fn00000000004524D0)
fn00000000004511C0 proc
	push	rsi
	push	rbx
	sub	rsp,38h
	mov	rax,3FFFFFFFFFFFFFF9h
	mov	rbx,rcx
	mov	rcx,[rcx]
	mov	rsi,r8
	cmp	rsi,rax
	mov	r8,[rcx-18h]
	ja	45127Ah

l00000000004511E6:
	cmp	rdx,rcx
	jc	4511F4h

l00000000004511EB:
	lea	rax,[rcx+r8]
	cmp	rdx,rax
	jbe	451210h

l00000000004511F4:
	mov	r9,rdx
	mov	[rsp+20h],rsi
	xor	edx,edx
	mov	rcx,rbx
	call	450960h
	add	rsp,38h
	pop	rbx
	pop	rsi
	ret
000000000045120D                                        0F 1F 00              ...

l0000000000451210:
	mov	eax,[rcx-8h]
	test	eax,eax
	jg	4511F4h

l0000000000451217:
	mov	rax,rdx
	sub	rax,rcx
	cmp	rsi,rax
	ja	451250h

l0000000000451222:
	cmp	rsi,1h
	jz	451270h

l0000000000451228:
	mov	r8,rsi
	call	41BCC0h
	mov	rcx,[rbx]

l0000000000451233:
	mov	rax,rbx
	mov	dword ptr [rcx-8h],0h
	mov	[rcx-18h],rsi
	mov	byte ptr [rcx+rsi],0h
	add	rsp,38h
	pop	rbx
	pop	rsi
	ret
000000000045124C                                     0F 1F 40 00             ..@.

l0000000000451250:
	test	rax,rax
	jz	451233h

l0000000000451255:
	cmp	rsi,1h
	jz	451270h

l000000000045125B:
	mov	r8,rsi
	call	41BD28h
	mov	rcx,[rbx]
	jmp	451233h
0000000000451268                         0F 1F 84 00 00 00 00 00         ........

l0000000000451270:
	movzx	eax,byte ptr [rdx]
	mov	[rcx],al
	mov	rcx,[rbx]
	jmp	451233h

l000000000045127A:
	lea	rcx,[000000000048D6E9]                                 ; [rip+0003C468]
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

;; fn0000000000451290: 0000000000451290
;;   Called from:
;;     000000000045128F (in fn0000000000451290)
;;     00000000004524C0 (in fn00000000004524C0)
fn0000000000451290 proc
	push	rsi
	push	rbx
	sub	rsp,38h
	mov	rbx,[rdx]
	cmp	[rcx],rbx
	mov	rsi,rcx
	jz	4512C1h

l00000000004512A1:
	mov	eax,[rbx-8h]
	test	eax,eax
	js	4512D0h

l00000000004512A8:
	lock
	add	dword ptr [rbx-8h],1h

l00000000004512AD:
	mov	rcx,[rsi]
	mov	eax,0FFFFFFFFh
	lock
	xadd	[rcx-8h],eax
	test	eax,eax
	jle	4512F0h

l00000000004512BE:
	mov	[rsi],rbx

l00000000004512C1:
	mov	rax,rsi
	add	rsp,38h
	pop	rbx
	pop	rsi
	ret
00000000004512CB                                  0F 1F 44 00 00            ..D..

l00000000004512D0:
	lea	rcx,[rbx-18h]
	lea	rdx,[rsp+2Fh]
	xor	r8d,r8d
	call	450B00h
	mov	rbx,rax
	jmp	4512ADh
00000000004512E6                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l00000000004512F0:
	sub	rcx,18h
	call	475550h
	jmp	4512BEh
00000000004512FB                                  90 90 90 90 90            .....

;; fn0000000000451300: 0000000000451300
fn0000000000451300 proc
	sub	rsp,28h
	mov	rdx,[rdx]
	mov	rax,r8
	mov	r11,[rdx-18h]
	mov	r10,r11
	sub	r10,r8
	mov	r8,r9
	cmp	r10,r9
	cmovbe	r8,r10

l000000000045131E:
	cmp	rax,r11
	ja	45132Fh

l0000000000451323:
	add	rdx,rax
	add	rsp,28h
	jmp	4511C0h

l000000000045132F:
	lea	rdx,[000000000048D6E9]                                 ; [rip+0003C3B3]
	lea	rcx,[000000000048D5D0]                                 ; [rip+0003C293]
	mov	r8,rax
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

;; fn0000000000451350: 0000000000451350
;;   Called from:
;;     000000000045134F (in fn0000000000451300)
fn0000000000451350 proc
	mov	rax,rdx
	mov	rdx,[rdx]
	mov	r8,[rax+8h]
	jmp	4511C0h
000000000045135F                                              90                .

;; fn0000000000451360: 0000000000451360
fn0000000000451360 proc
	sub	rsp,38h
	mov	rax,[rcx]
	movsx	r8d,r8b
	mov	r9,rdx
	xor	edx,edx
	mov	rax,[rax-18h]
	mov	[rsp+20h],r8d
	mov	r8,rax
	call	4508E0h
	add	rsp,38h
	ret
0000000000451386                   90 90 90 90 90 90 90 90 90 90       ..........

;; fn0000000000451390: 0000000000451390
fn0000000000451390 proc
	sub	rdx,[rcx]
	mov	r9,[r8+8h]
	mov	r8,[r8]
	jmp	451450h
000000000045139F                                              90                .

;; fn00000000004513A0: 00000000004513A0
fn00000000004513A0 proc
	push	rsi
	push	rbx
	sub	rsp,38h
	mov	r9d,1h
	mov	rbx,rdx
	sub	rbx,[rcx]
	movsx	r8d,r8b
	mov	rsi,rcx
	mov	[rsp+20h],r8d
	xor	r8d,r8d
	mov	rdx,rbx
	call	4508E0h
	mov	rax,[rsi]
	mov	dword ptr [rax-8h],0FFFFFFFFh
	add	rax,rbx
	add	rsp,38h
	pop	rbx
	pop	rsi
	ret
00000000004513DD                                        90 90 90              ...

;; fn00000000004513E0: 00000000004513E0
fn00000000004513E0 proc
	sub	rsp,38h
	sub	rdx,[rcx]
	movsx	r9d,r9b
	mov	[rsp+20h],r9d
	mov	r9,r8
	xor	r8d,r8d
	call	4508E0h
	nop
	add	rsp,38h
	ret
0000000000451401    90 90 90 90 90 90 90 90 90 90 90 90 90 90 90  ...............

;; fn0000000000451410: 0000000000451410
fn0000000000451410 proc
	push	rsi
	push	rbx
	sub	rsp,38h
	mov	rbx,rcx
	mov	rcx,r8
	mov	rsi,rdx
	mov	[rsp+28h],r8
	call	41BCB8h
	mov	r8,[rsp+28h]
	mov	r9,rax
	mov	rdx,rsi
	mov	rcx,rbx
	add	rsp,38h
	pop	rbx
	pop	rsi
	jmp	451450h
0000000000451442       90 90 90 90 90 90 90 90 90 90 90 90 90 90   ..............

;; fn0000000000451450: 0000000000451450
;;   Called from:
;;     000000000045139A (in fn0000000000451390)
;;     000000000045143D (in fn0000000000451410)
;;     00000000004515E7 (in fn00000000004515E0)
;;     000000000045161C (in fn00000000004515F0)
fn0000000000451450 proc
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,38h
	mov	rax,[rcx]
	mov	rdi,r9
	mov	rsi,rcx
	mov	rbp,rdx
	mov	r9,[rax-18h]
	cmp	rdx,r9
	ja	4515B6h

l0000000000451471:
	mov	r10,3FFFFFFFFFFFFFF9h
	sub	r10,r9
	cmp	rdi,r10
	ja	4515CCh

l0000000000451487:
	cmp	r8,rax
	jnc	4514B0h

l000000000045148C:
	mov	r9,r8
	mov	[rsp+20h],rdi
	xor	r8d,r8d
	mov	rdx,rbp
	mov	rcx,rsi
	call	450960h

l00000000004514A2:
	add	rsp,38h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
00000000004514AB                                  0F 1F 44 00 00            ..D..

l00000000004514B0:
	add	r9,rax
	cmp	r8,r9
	ja	45148Ch

l00000000004514B8:
	mov	edx,[rax-8h]
	test	edx,edx
	jg	45148Ch

l00000000004514BF:
	mov	rbx,r8
	mov	r9,rdi
	xor	r8d,r8d
	mov	rdx,rbp
	mov	rcx,rsi
	sub	rbx,rax
	call	451CC0h
	mov	rax,[rsi]
	lea	r10,[rax+rbx]
	lea	r9,[rax+rbp]
	lea	rdx,[r10+rdi]
	cmp	r9,rdx
	jc	451510h

l00000000004514EA:
	cmp	rdi,1h
	jz	451564h

l00000000004514F0:
	mov	r8,rdi
	mov	rdx,r10
	mov	rcx,r9
	call	41BCC0h
	mov	rax,rsi
	add	rsp,38h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
000000000045150A                               66 0F 1F 44 00 00           f..D..

l0000000000451510:
	cmp	r10,r9
	jnc	451550h

l0000000000451515:
	mov	rbx,r9
	sub	rbx,r10
	cmp	rbx,1h
	jnz	4515A0h

l0000000000451521:
	movzx	eax,byte ptr [r10]
	mov	[r9],al

l0000000000451528:
	mov	r8,rdi
	lea	rdx,[r9+rdi]
	lea	rcx,[r9+rbx]
	sub	r8,rbx
	cmp	r8,1h
	jnz	451593h

l000000000045153C:
	movzx	eax,byte ptr [rdx]
	mov	[rcx],al
	mov	rax,rsi
	jmp	4514A2h
0000000000451549                            0F 1F 80 00 00 00 00          .......

l0000000000451550:
	cmp	rdi,1h
	jnz	451580h

l0000000000451556:
	movzx	eax,byte ptr [rdx]
	mov	[r9],al
	mov	rax,rsi
	jmp	4514A2h

l0000000000451564:
	movzx	eax,byte ptr [r10]
	mov	[r9],al
	mov	rax,rsi
	add	rsp,38h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
0000000000451577                      66 0F 1F 84 00 00 00 00 00        f........

l0000000000451580:
	mov	r8,rdi
	mov	rcx,r9
	call	41BCC0h
	mov	rax,rsi
	jmp	4514A2h

l0000000000451593:
	call	41BCC0h
	mov	rax,rsi
	jmp	4514A2h

l00000000004515A0:
	mov	rcx,r9
	mov	r8,rbx
	mov	rdx,r10
	call	41BCC0h
	mov	r9,rax
	jmp	451528h

l00000000004515B6:
	mov	r8,rdx
	lea	rcx,[000000000048D5D0]                                 ; [rip+0003C010]
	lea	rdx,[000000000048D6BE]                                 ; [rip+0003C0F7]
	call	471560h

l00000000004515CC:
	lea	rcx,[000000000048D6BE]                                 ; [rip+0003C0EB]
	call	470E60h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop

;; fn00000000004515E0: 00000000004515E0
;;   Called from:
;;     00000000004515DF (in fn0000000000451450)
fn00000000004515E0 proc
	mov	r8,[r8]
	mov	r9,[r8-18h]
	jmp	451450h
00000000004515EC                                     90 90 90 90             ....

;; fn00000000004515F0: 00000000004515F0
fn00000000004515F0 proc
	sub	rsp,28h
	mov	r8,[r8]
	mov	r10,r9
	mov	r9,[rsp+50h]
	mov	r11,[r8-18h]
	mov	rax,r11
	sub	rax,r10
	cmp	rax,r9
	cmovbe	r9,rax

l0000000000451610:
	cmp	r10,r11
	ja	451621h

l0000000000451615:
	add	r8,r10
	add	rsp,28h
	jmp	451450h

l0000000000451621:
	lea	rdx,[000000000048D6BE]                                 ; [rip+0003C096]
	lea	rcx,[000000000048D5D0]                                 ; [rip+0003BFA1]
	mov	r8,r10
	mov	r9,r11
	call	471560h
	nop
	nop
	nop
	nop
	nop
	nop

;; fn0000000000451640: 0000000000451640
;;   Called from:
;;     000000000045163F (in fn00000000004515F0)
fn0000000000451640 proc
	sub	rsp,38h
	mov	rax,[rcx]
	movsx	r9d,r9b
	mov	rax,[rax-18h]
	cmp	rdx,rax
	ja	451669h

l0000000000451654:
	mov	[rsp+20h],r9d
	mov	r9,r8
	xor	r8d,r8d
	call	4508E0h
	add	rsp,38h
	ret

l0000000000451669:
	mov	r8,rdx
	lea	rcx,[000000000048D5D0]                                 ; [rip+0003BF5D]
	lea	rdx,[000000000048D6BE]                                 ; [rip+0003C044]
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

;; fn0000000000451690: 0000000000451690
;;   Called from:
;;     000000000045168F (in fn0000000000451640)
fn0000000000451690 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	mov	r8,[rdx]
	mov	rsi,rcx
	mov	rbx,rdx
	mov	eax,[r8-8h]
	test	eax,eax
	js	4516B2h

l00000000004516A7:
	mov	rcx,rdx
	call	4505A0h
	mov	r8,[rbx]

l00000000004516B2:
	add	r8,[r8-18h]
	mov	rax,rsi
	mov	[rsi],r8
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret
00000000004516C3          90 90 90 90 90 90 90 90 90 90 90 90 90    .............

;; fn00000000004516D0: 00000000004516D0
fn00000000004516D0 proc
	xor	r8d,r8d
	jmp	4516E0h
00000000004516D8                         90 90 90 90 90 90 90 90         ........

;; fn00000000004516E0: 00000000004516E0
;;   Called from:
;;     000000000044439C (in fn00000000004442A0)
;;     00000000004516D3 (in fn00000000004516D0)
fn00000000004516E0 proc
	sub	rsp,28h
	mov	rax,[rcx]
	mov	r9,3FFFFFFFFFFFFFF9h
	cmp	rdx,r9
	mov	rax,[rax-18h]
	ja	451734h

l00000000004516FA:
	cmp	rdx,rax
	ja	451710h

l00000000004516FF:
	jc	451722h

l0000000000451701:
	add	rsp,28h
	ret
0000000000451706                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l0000000000451710:
	sub	rdx,rax
	jz	451701h

l0000000000451715:
	movsx	r8d,r8b
	add	rsp,28h
	jmp	4510A0h

l0000000000451722:
	sub	rax,rdx
	xor	r9d,r9d
	mov	r8,rax
	add	rsp,28h
	jmp	451CC0h

l0000000000451734:
	lea	rcx,[000000000048D713]                                 ; [rip+0003BFD8]
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

;; fn0000000000451750: 0000000000451750
;;   Called from:
;;     000000000045174F (in fn00000000004516E0)
fn0000000000451750 proc
	cmp	r8,1h
	jz	451760h

l0000000000451756:
	jmp	41BCC0h
000000000045175B                                  0F 1F 44 00 00            ..D..

l0000000000451760:
	movzx	eax,byte ptr [rdx]
	mov	[rcx],al
	ret
0000000000451766                   90 90 90 90 90 90 90 90 90 90       ..........

;; fn0000000000451770: 0000000000451770
fn0000000000451770 proc
	mov	rax,rdx
	mov	[rcx],rdx
	ret
0000000000451777                      90 90 90 90 90 90 90 90 90        .........

;; fn0000000000451780: 0000000000451780
fn0000000000451780 proc
	mov	rax,[rcx]
	mov	eax,[rax-8h]
	test	eax,eax
	js	451790h

l000000000045178A:
	jmp	4505A0h
000000000045178F                                              90                .

l0000000000451790:
	ret
0000000000451792       90 90 90 90 90 90 90 90 90 90 90 90 90 90   ..............

;; fn00000000004517A0: 00000000004517A0
fn00000000004517A0 proc
	cmp	r8,1h
	jz	4517B0h

l00000000004517A6:
	jmp	41BD28h
00000000004517AB                                  0F 1F 44 00 00            ..D..

l00000000004517B0:
	movzx	eax,byte ptr [rdx]
	mov	[rcx],al
	ret
00000000004517B6                   90 90 90 90 90 90 90 90 90 90       ..........

;; fn00000000004517C0: 00000000004517C0
fn00000000004517C0 proc
	sub	[rsp+28h],r9
	mov	rax,rdx
	sub	rdx,[rcx]
	sub	r8,rax
	jmp	451960h
00000000004517D3          90 90 90 90 90 90 90 90 90 90 90 90 90    .............

;; fn00000000004517E0: 00000000004517E0
fn00000000004517E0 proc
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,40h
	mov	rbx,rcx
	mov	rsi,rdx
	mov	rcx,r9
	mov	rdi,r8
	mov	[rsp+38h],r9
	call	41BCB8h
	mov	rdx,rsi
	sub	rdx,[rbx]
	mov	r9,[rsp+38h]
	sub	rdi,rsi
	mov	[rsp+20h],rax
	mov	rcx,rbx
	mov	r8,rdi
	call	451960h
	add	rsp,40h
	pop	rbx
	pop	rsi
	pop	rdi
	ret
0000000000451823          90 90 90 90 90 90 90 90 90 90 90 90 90    .............

;; fn0000000000451830: 0000000000451830
fn0000000000451830 proc
	sub	[rsp+28h],r9
	mov	rax,rdx
	sub	rdx,[rcx]
	sub	r8,rax
	jmp	451960h
0000000000451843          90 90 90 90 90 90 90 90 90 90 90 90 90    .............

;; fn0000000000451850: 0000000000451850
fn0000000000451850 proc
	mov	rax,rdx
	sub	rdx,[rcx]
	sub	r8,rax
	jmp	451960h
000000000045185E                                           90 90               ..

;; fn0000000000451860: 0000000000451860
fn0000000000451860 proc
	sub	rsp,38h
	mov	r9,[r9]
	mov	rax,rdx
	sub	rdx,[rcx]
	sub	r8,rax
	mov	r10,[r9-18h]
	mov	[rsp+20h],r10
	call	451960h
	add	rsp,38h
	ret
0000000000451883          90 90 90 90 90 90 90 90 90 90 90 90 90    .............

;; fn0000000000451890: 0000000000451890
fn0000000000451890 proc
	sub	[rsp+28h],r9
	mov	rax,rdx
	sub	rdx,[rcx]
	sub	r8,rax
	jmp	451960h
00000000004518A3          90 90 90 90 90 90 90 90 90 90 90 90 90    .............

;; fn00000000004518B0: 00000000004518B0
fn00000000004518B0 proc
	sub	[rsp+28h],r9
	mov	rax,rdx
	sub	rdx,[rcx]
	sub	r8,rax
	jmp	451960h
00000000004518C3          90 90 90 90 90 90 90 90 90 90 90 90 90    .............

;; fn00000000004518D0: 00000000004518D0
fn00000000004518D0 proc
	sub	rsp,38h
	mov	rax,rdx
	mov	rdx,r9
	mov	r9,[r9]
	mov	r10,[rdx+8h]
	mov	rdx,rax
	sub	rdx,[rcx]
	sub	r8,rax
	mov	[rsp+20h],r10
	call	451960h
	add	rsp,38h
	ret
00000000004518F9                            90 90 90 90 90 90 90          .......

;; fn0000000000451900: 0000000000451900
fn0000000000451900 proc
	movsx	r10d,byte ptr [rsp+28h]
	mov	rax,rdx
	sub	rdx,[rcx]
	sub	r8,rax
	mov	[rsp+28h],r10d
	jmp	4508E0h
0000000000451919                            90 90 90 90 90 90 90          .......

;; fn0000000000451920: 0000000000451920
fn0000000000451920 proc
	push	rsi
	push	rbx
	sub	rsp,48h
	mov	rbx,rcx
	mov	rcx,r9
	mov	rsi,rdx
	mov	[rsp+38h],r8
	mov	[rsp+30h],r9
	call	41BCB8h
	mov	r9,[rsp+30h]
	mov	r8,[rsp+38h]
	mov	rdx,rsi
	mov	[rsp+20h],rax
	mov	rcx,rbx
	call	451960h
	add	rsp,48h
	pop	rbx
	pop	rsi
	ret
000000000045195F                                              90                .

;; fn0000000000451960: 0000000000451960
;;   Called from:
;;     00000000004517CE (in fn00000000004517C0)
;;     0000000000451816 (in fn00000000004517E0)
;;     000000000045183E (in fn0000000000451830)
;;     0000000000451859 (in fn0000000000451850)
;;     0000000000451879 (in fn0000000000451860)
;;     000000000045189E (in fn0000000000451890)
;;     00000000004518BE (in fn00000000004518B0)
;;     00000000004518EF (in fn00000000004518D0)
;;     0000000000451953 (in fn0000000000451920)
;;     0000000000451B20 (in fn0000000000451B10)
;;     0000000000451B66 (in fn0000000000451B30)
fn0000000000451960 proc
	push	r13
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,58h
	mov	r12,[rsp+0B0h]
	mov	rdi,rcx
	mov	rcx,[rcx]
	mov	r10,r9
	mov	rbp,rdx
	mov	r9,[rcx-18h]
	cmp	rdx,r9
	ja	451ADAh

l000000000045198D:
	mov	rsi,r9
	mov	rax,3FFFFFFFFFFFFFF9h
	sub	rsi,rdx
	cmp	rsi,r8
	cmova	rsi,r8

l00000000004519A4:
	sub	rax,r9
	add	rax,rsi
	cmp	r12,rax
	ja	451ACEh

l00000000004519B3:
	cmp	r10,rcx
	jc	4519C0h

l00000000004519B8:
	add	r9,rcx
	cmp	r10,r9
	jbe	4519E3h

l00000000004519C0:
	mov	[rsp+20h],r12
	mov	r9,r10
	mov	r8,rsi
	mov	rdx,rbp
	mov	rcx,rdi
	call	450960h

l00000000004519D6:
	add	rsp,58h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	ret

l00000000004519E3:
	mov	eax,[rcx-8h]
	test	eax,eax
	jg	4519C0h

l00000000004519EA:
	lea	rdx,[r10]
	lea	rax,[rcx+rbp]
	cmp	rdx,rax
	jbe	451A60h

l00000000004519F7:
	lea	rax,[rsi+rbp]
	add	rax,rcx
	cmp	r10,rax
	jnc	451AC0h

l0000000000451A07:
	lea	r13,[rsp+4Fh]
	xor	r9d,r9d
	mov	rcx,r10
	mov	r8,r13
	call	450690h
	mov	[rsp+20h],r12
	mov	r9,rax
	mov	r8,rsi
	mov	rdx,rbp
	mov	rcx,rdi
	mov	rbx,rax
	call	450960h
	mov	edx,0FFFFFFFFh
	lock
	xadd	[rbx-8h],edx
	test	edx,edx
	jg	4519D6h

l0000000000451A41:
	lea	rcx,[rbx-18h]
	mov	[rsp+38h],rax
	call	475550h
	mov	rax,[rsp+38h]
	jmp	4519D6h
0000000000451A56                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l0000000000451A60:
	mov	rbx,r10
	sub	rbx,rcx

l0000000000451A66:
	mov	rdx,rbp
	mov	rcx,rdi
	mov	r9,r12
	mov	r8,rsi
	call	451CC0h
	mov	rcx,[rdi]
	lea	rdx,[rcx+rbx]
	add	rcx,rbp
	cmp	r12,1h
	jnz	451AA0h

l0000000000451A87:
	movzx	eax,byte ptr [rdx]
	mov	[rcx],al
	mov	rax,rdi
	add	rsp,58h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	ret
0000000000451A9C                                     0F 1F 40 00             ..@.

l0000000000451AA0:
	mov	r8,r12
	call	41BCC0h
	mov	rax,rdi
	add	rsp,58h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	ret
0000000000451AB8                         0F 1F 84 00 00 00 00 00         ........

l0000000000451AC0:
	sub	r10,rcx
	add	r10,r12
	mov	rbx,r10
	sub	rbx,rsi
	jmp	451A66h

l0000000000451ACE:
	lea	rcx,[000000000048D6D3]                                 ; [rip+0003BBFE]
	call	470E60h

l0000000000451ADA:
	mov	r8,rdx
	lea	rcx,[000000000048D5D0]                                 ; [rip+0003BAEC]
	lea	rdx,[000000000048D6D3]                                 ; [rip+0003BBE8]
	call	471560h
	lea	rcx,[rbx-18h]
	mov	rsi,rax
	mov	rdx,r13
	call	450A60h
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
	nop

;; fn0000000000451B10: 0000000000451B10
;;   Called from:
;;     0000000000451B0F (in fn0000000000451960)
fn0000000000451B10 proc
	sub	rsp,38h
	mov	r9,[r9]
	mov	rax,[r9-18h]
	mov	[rsp+20h],rax
	call	451960h
	add	rsp,38h
	ret
0000000000451B2A                               90 90 90 90 90 90           ......

;; fn0000000000451B30: 0000000000451B30
fn0000000000451B30 proc
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

l0000000000451B53:
	cmp	r10,r9
	ja	451B6Bh

l0000000000451B58:
	lea	r9,[rbx+r10]
	mov	[rsp+50h],rax
	add	rsp,20h
	pop	rbx
	jmp	451960h

l0000000000451B6B:
	lea	rdx,[000000000048D6D3]                                 ; [rip+0003BB61]
	lea	rcx,[000000000048D5D0]                                 ; [rip+0003BA57]
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

;; fn0000000000451B90: 0000000000451B90
;;   Called from:
;;     0000000000451B8F (in fn0000000000451B30)
fn0000000000451B90 proc
	sub	rsp,28h
	mov	rax,[rcx]
	movsx	r11d,byte ptr [rsp+50h]
	mov	r10,[rax-18h]
	mov	rax,r10
	sub	rax,rdx
	cmp	rax,r8
	cmovbe	r8,rax

l0000000000451BAE:
	cmp	rdx,r10
	ja	451BC1h

l0000000000451BB3:
	mov	[rsp+50h],r11d
	add	rsp,28h
	jmp	4508E0h

l0000000000451BC1:
	mov	r8,rdx
	lea	rcx,[000000000048D5D0]                                 ; [rip+0003BA05]
	lea	rdx,[000000000048D6D3]                                 ; [rip+0003BB01]
	mov	r9,r10
	call	471560h
	nop
	nop
	nop
	nop
	nop
	nop

;; fn0000000000451BE0: 0000000000451BE0
;;   Called from:
;;     000000000042BC1A (in fn000000000042BBA0)
;;     000000000042BC63 (in fn000000000042BBA0)
;;     000000000042BCCB (in fn000000000042BBA0)
;;     000000000042BD26 (in fn000000000042BBA0)
;;     000000000042C7C2 (in fn000000000042C730)
;;     000000000042D42F (in fn000000000042CD70)
;;     000000000042DDEE (in fn000000000042D710)
;;     000000000042E78F (in fn000000000042E0D0)
;;     000000000042F15A (in fn000000000042EA70)
;;     000000000042FB5F (in fn000000000042F430)
;;     0000000000430531 (in fn000000000042FE30)
;;     0000000000430905 (in fn0000000000430800)
;;     0000000000430A66 (in fn0000000000430800)
;;     0000000000430D11 (in fn0000000000430800)
;;     0000000000431032 (in fn0000000000430800)
;;     0000000000431EA3 (in fn0000000000431E50)
;;     00000000004320C3 (in fn0000000000432070)
;;     00000000004322E3 (in fn0000000000432290)
;;     0000000000432FA0 (in fn0000000000432750)
;;     00000000004338E7 (in fn0000000000433080)
;;     0000000000434280 (in fn00000000004339C0)
;;     0000000000434CC0 (in fn00000000004343C0)
;;     00000000004356BD (in fn0000000000434E00)
;;     00000000004360C3 (in fn00000000004357A0)
;;     0000000000436324 (in fn0000000000436210)
;;     00000000004365E2 (in fn0000000000436210)
;;     000000000043686B (in fn0000000000436210)
;;     0000000000436ABB (in fn0000000000436210)
;;     0000000000436D3E (in fn0000000000436210)
;;     00000000004379D3 (in fn0000000000437980)
;;     0000000000437BE3 (in fn0000000000437B90)
;;     0000000000437DF3 (in fn0000000000437DA0)
;;     0000000000442629 (in fn0000000000442560)
;;     0000000000442659 (in fn0000000000442560)
;;     0000000000443449 (in fn0000000000443380)
;;     0000000000443479 (in fn0000000000443380)
;;     00000000004446E3 (in fn0000000000444610)
;;     0000000000444716 (in fn0000000000444610)
;;     0000000000445613 (in fn0000000000445540)
;;     0000000000445646 (in fn0000000000445540)
;;     0000000000446D4A (in fn0000000000446BF0)
;;     0000000000446EE4 (in fn0000000000446BF0)
;;     000000000044742A (in fn00000000004472D0)
;;     00000000004475C4 (in fn00000000004472D0)
;;     00000000004508C2 (in fn00000000004508A0)
;;     0000000000450E64 (in fn0000000000450E20)
;;     0000000000450EC4 (in fn0000000000450E20)
;;     0000000000450F31 (in fn0000000000450F00)
;;     0000000000450FD9 (in fn0000000000450F90)
;;     00000000004510DA (in fn00000000004510A0)
;;     0000000000451BDF (in fn0000000000451B90)
;;     0000000000451E3A (in fn0000000000451E10)
;;     00000000004525FB (in fn00000000004525D0)
;;     0000000000471DD6 (in fn0000000000471C20)
;;     0000000000473EDF (in fn0000000000473EA0)
;;     0000000000473FD2 (in fn0000000000473FA0)
;;     00000000004748EA (in fn0000000000474710)
fn0000000000451BE0 proc
	push	rbx
	sub	rsp,40h
	mov	rax,[rcx]
	cmp	rdx,[rax-10h]
	jz	451C30h

l0000000000451BEE:
	mov	r9,[rax-18h]
	mov	rbx,rcx
	lea	rcx,[rax-18h]
	cmp	rdx,r9
	cmovc	rdx,r9

l0000000000451C00:
	mov	r8,rdx
	lea	rdx,[rsp+3Fh]
	sub	r8,r9
	call	450B00h
	mov	rcx,[rbx]
	mov	edx,0FFFFFFFFh
	lock
	xadd	[rcx-8h],edx
	test	edx,edx
	jle	451C40h

l0000000000451C21:
	mov	[rbx],rax

l0000000000451C24:
	add	rsp,40h
	pop	rbx
	ret
0000000000451C2A                               66 0F 1F 44 00 00           f..D..

l0000000000451C30:
	mov	r8d,[rax-8h]
	test	r8d,r8d
	jg	451BEEh

l0000000000451C39:
	jmp	451C24h
0000000000451C3B                                  0F 1F 44 00 00            ..D..

l0000000000451C40:
	sub	rcx,18h
	mov	[rsp+28h],rax
	call	475550h
	mov	rax,[rsp+28h]
	jmp	451C21h
0000000000451C55                90 90 90 90 90 90 90 90 90 90 90      ...........

;; fn0000000000451C60: 0000000000451C60
fn0000000000451C60 proc
	sub	rsp,28h
	mov	rax,[rcx]
	mov	r9,[rax-18h]
	lea	rdx,[r9-1h]
	cmp	rdx,r9
	ja	451C86h

l0000000000451C74:
	xor	r9d,r9d
	mov	r8d,1h
	add	rsp,28h
	jmp	451CC0h

l0000000000451C86:
	mov	r8,rdx
	lea	rcx,[000000000048D5D0]                                 ; [rip+0003B940]
	lea	rdx,[000000000048D68D]                                 ; [rip+0003B9F6]
	call	471560h
	nop
	nop
	nop
	nop

;; fn0000000000451CA0: 0000000000451CA0
;;   Called from:
;;     0000000000451C9F (in fn0000000000451C60)
fn0000000000451CA0 proc
	cmp	rdx,1h
	jz	451CB4h

l0000000000451CA6:
	movsx	eax,r8b
	mov	r8,rdx
	mov	edx,eax
	jmp	41BD88h

l0000000000451CB4:
	mov	[rcx],r8b
	ret
0000000000451CB8                         90 90 90 90 90 90 90 90         ........

;; fn0000000000451CC0: 0000000000451CC0
;;   Called from:
;;     000000000043135F (in fn0000000000430800)
;;     0000000000436E5B (in fn0000000000436210)
;;     0000000000446E4B (in fn0000000000446BF0)
;;     000000000044752B (in fn00000000004472D0)
;;     00000000004505BA (in fn00000000004505A0)
;;     000000000045090E (in fn00000000004508E0)
;;     0000000000450979 (in fn0000000000450960)
;;     0000000000450CBC (in fn0000000000450CB0)
;;     0000000000450CEB (in fn0000000000450CD0)
;;     0000000000450D34 (in fn0000000000450D10)
;;     0000000000450D74 (in fn0000000000450D50)
;;     00000000004514D1 (in fn0000000000451450)
;;     000000000045172F (in fn00000000004516E0)
;;     0000000000451A72 (in fn0000000000451960)
;;     0000000000451C81 (in fn0000000000451C60)
;;     0000000000471CB0 (in fn0000000000471C20)
;;     0000000000474778 (in fn0000000000474710)
fn0000000000451CC0 proc
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
	mov	rsi,r9
	mov	r13,rdx
	mov	r14,rcx
	sub	rsi,r8
	mov	rbp,r8
	mov	r12,r9
	mov	r10,[rax-18h]
	add	rsi,r10
	sub	r10,rdx
	mov	rdx,[rax-10h]
	mov	rdi,r10
	sub	rdi,r8
	cmp	rsi,rdx
	ja	451D09h

l0000000000451CFE:
	mov	ecx,[rax-8h]
	test	ecx,ecx
	jle	451DA0h

l0000000000451D09:
	lea	r8,[rsp+2Fh]
	mov	rcx,rsi
	call	450B70h
	test	r13,r13
	mov	r15,rax
	lea	rbx,[rax+18h]
	jz	451D40h

l0000000000451D22:
	cmp	r13,1h
	mov	rdx,[r14]
	lea	rbx,[r15+18h]
	jnz	451DF0h

l0000000000451D33:
	movzx	eax,byte ptr [rdx]
	mov	[r15+18h],al
	nop	word ptr [rax+rax+0h]

l0000000000451D40:
	test	rdi,rdi
	jz	451D64h

l0000000000451D45:
	lea	rcx,[r13+18h]
	lea	rdx,[rbp+r13+0h]
	add	rdx,[r14]
	add	rcx,r15
	cmp	rdi,1h
	jnz	451DE0h

l0000000000451D5F:
	movzx	eax,byte ptr [rdx]
	mov	[rcx],al

l0000000000451D64:
	mov	rcx,[r14]
	mov	eax,0FFFFFFFFh
	lock
	xadd	[rcx-8h],eax
	test	eax,eax
	jle	451E00h

l0000000000451D79:
	mov	[r14],rbx
	mov	rax,rbx

l0000000000451D7F:
	mov	dword ptr [rax-8h],0h
	mov	[rax-18h],rsi
	mov	byte ptr [rax+rsi],0h
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
0000000000451D9F                                              90                .

l0000000000451DA0:
	cmp	r8,r9
	jz	451D7Fh

l0000000000451DA5:
	test	rdi,rdi
	jz	451D7Fh

l0000000000451DAA:
	add	rbp,r13
	add	r12,r13
	cmp	rdi,1h
	lea	rdx,[rax+rbp]
	lea	rcx,[rax]
	jz	451DD0h

l0000000000451DBE:
	mov	r8,rdi
	call	41BD28h
	mov	rax,[r14]
	jmp	451D7Fh
0000000000451DCB                                  0F 1F 44 00 00            ..D..

l0000000000451DD0:
	movzx	eax,byte ptr [rdx]
	mov	[rcx],al
	mov	rax,[r14]
	jmp	451D7Fh
0000000000451DDA                               66 0F 1F 44 00 00           f..D..

l0000000000451DE0:
	mov	r8,rdi
	call	41BCC0h
	jmp	451D64h
0000000000451DED                                        0F 1F 00              ...

l0000000000451DF0:
	mov	r8,r13
	mov	rcx,rbx
	call	41BCC0h
	jmp	451D40h

l0000000000451E00:
	sub	rcx,18h
	call	475550h
	jmp	451D79h
0000000000451E0E                                           90 90               ..

;; fn0000000000451E10: 0000000000451E10
;;   Called from:
;;     000000000042D020 (in fn000000000042CD70)
;;     000000000042D342 (in fn000000000042CD70)
;;     000000000042D9CC (in fn000000000042D710)
;;     000000000042DD02 (in fn000000000042D710)
;;     000000000042E380 (in fn000000000042E0D0)
;;     000000000042E6A2 (in fn000000000042E0D0)
;;     000000000042ED2C (in fn000000000042EA70)
;;     000000000042F062 (in fn000000000042EA70)
;;     000000000042F703 (in fn000000000042F430)
;;     000000000042FA62 (in fn000000000042F430)
;;     00000000004300EF (in fn000000000042FE30)
;;     0000000000430432 (in fn000000000042FE30)
;;     0000000000430B27 (in fn0000000000430800)
;;     0000000000430BF7 (in fn0000000000430800)
;;     0000000000430DD9 (in fn0000000000430800)
;;     0000000000430E57 (in fn0000000000430800)
;;     0000000000430E64 (in fn0000000000430800)
;;     0000000000430EAE (in fn0000000000430800)
;;     0000000000430EBB (in fn0000000000430800)
;;     0000000000430F4B (in fn0000000000430800)
;;     0000000000431162 (in fn0000000000430800)
;;     000000000043119B (in fn0000000000430800)
;;     000000000043122B (in fn0000000000430800)
;;     0000000000432A27 (in fn0000000000432750)
;;     0000000000432D96 (in fn0000000000432750)
;;     0000000000433362 (in fn0000000000433080)
;;     00000000004336E6 (in fn0000000000433080)
;;     0000000000433C97 (in fn00000000004339C0)
;;     0000000000434006 (in fn00000000004339C0)
;;     0000000000434699 (in fn00000000004343C0)
;;     0000000000434A38 (in fn00000000004343C0)
;;     00000000004350FD (in fn0000000000434E00)
;;     00000000004354B6 (in fn0000000000434E00)
;;     0000000000435A96 (in fn00000000004357A0)
;;     0000000000435E36 (in fn00000000004357A0)
;;     00000000004364EE (in fn0000000000436210)
;;     00000000004364FB (in fn0000000000436210)
;;     00000000004366BA (in fn0000000000436210)
;;     0000000000436747 (in fn0000000000436210)
;;     0000000000436754 (in fn0000000000436210)
;;     00000000004368C0 (in fn0000000000436210)
;;     00000000004368FA (in fn0000000000436210)
;;     00000000004369FC (in fn0000000000436210)
;;     0000000000436BF8 (in fn0000000000436210)
;;     0000000000436C44 (in fn0000000000436210)
;;     0000000000442B2E (in fn0000000000442560)
;;     000000000044394E (in fn0000000000443380)
;;     0000000000444B02 (in fn0000000000444610)
;;     0000000000445A32 (in fn0000000000445540)
;;     0000000000446E63 (in fn0000000000446BF0)
;;     0000000000447543 (in fn00000000004472D0)
fn0000000000451E10 proc
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,20h
	mov	rax,[rcx]
	mov	rsi,rcx
	mov	edi,edx
	mov	rcx,[rax-18h]
	lea	rbx,[rcx+1h]
	cmp	rbx,[rax-10h]
	ja	451E34h

l0000000000451E2D:
	mov	edx,[rax-8h]
	test	edx,edx
	jle	451E46h

l0000000000451E34:
	mov	rcx,rsi
	mov	rdx,rbx
	call	451BE0h
	mov	rax,[rsi]
	mov	rcx,[rax-18h]

l0000000000451E46:
	mov	[rax+rcx],dil
	mov	rax,[rsi]
	mov	dword ptr [rax-8h],0h
	mov	[rax-18h],rbx
	mov	byte ptr [rax+rbx],0h
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	ret
0000000000451E64             90 90 90 90 90 90 90 90 90 90 90 90     ............

;; fn0000000000451E70: 0000000000451E70
fn0000000000451E70 proc
	push	rbx
	sub	rsp,30h
	mov	rax,[rdx]
	lea	r8,[rsp+2Fh]
	mov	rbx,rdx
	xor	edx,edx
	mov	[rcx],rax
	xor	ecx,ecx
	call	4505D0h
	mov	[rbx],rax
	add	rsp,30h
	pop	rbx
	ret
0000000000451E95                90 90 90 90 90 90 90 90 90 90 90      ...........

;; fn0000000000451EA0: 0000000000451EA0
;;   Called from:
;;     0000000000402966 (in fn000000000040252C)
;;     00000000004029C7 (in fn000000000040252C)
;;     0000000000402EDB (in fn0000000000402E6F)
;;     0000000000402F1A (in fn0000000000402E6F)
;;     0000000000402F59 (in fn0000000000402E6F)
;;     000000000040359F (in fn000000000040353B)
;;     00000000004035DD (in fn000000000040353B)
;;     000000000040361B (in fn000000000040353B)
;;     0000000000403659 (in fn000000000040353B)
;;     000000000042721B (in fn0000000000427200)
;;     000000000042725B (in fn0000000000427240)
;;     0000000000428FCB (in fn0000000000428FA0)
;;     0000000000429005 (in fn0000000000428FF0)
;;     00000000004290CB (in fn00000000004290A0)
;;     000000000042911B (in fn00000000004290F0)
;;     0000000000429185 (in fn0000000000429170)
;;     00000000004291D5 (in fn00000000004291C0)
;;     0000000000429205 (in fn00000000004291F0)
;;     000000000042925B (in fn0000000000429230)
;;     000000000042930B (in fn00000000004292E0)
;;     0000000000429345 (in fn0000000000429330)
;;     000000000042940B (in fn00000000004293E0)
;;     000000000042945B (in fn0000000000429430)
;;     00000000004294C5 (in fn00000000004294B0)
;;     0000000000429515 (in fn0000000000429500)
;;     0000000000429545 (in fn0000000000429530)
;;     000000000042959B (in fn0000000000429570)
;;     0000000000429685 (in fn0000000000429670)
;;     00000000004298DB (in fn00000000004298B0)
;;     00000000004299C5 (in fn00000000004299B0)
;;     0000000000429C1B (in fn0000000000429BF0)
;;     000000000043BFB5 (in fn000000000043BFA0)
;;     000000000043BFE5 (in fn000000000043BFD0)
;;     000000000043C015 (in fn000000000043C000)
;;     000000000043C0DB (in fn000000000043C0B0)
;;     000000000043C12B (in fn000000000043C100)
;;     000000000043C17B (in fn000000000043C150)
;;     000000000043C1B5 (in fn000000000043C1A0)
;;     000000000043C2DB (in fn000000000043C2B0)
;;     00000000004548A0 (in fn0000000000454880)
;;     0000000000463EA4 (in fn0000000000463E50)
;;     0000000000463EFD (in fn0000000000463E50)
;;     0000000000463F6E (in fn0000000000463E50)
;;     0000000000463FC7 (in fn0000000000463E50)
;;     0000000000464027 (in fn0000000000463E50)
;;     000000000046408B (in fn0000000000463E50)
;;     0000000000464624 (in fn00000000004645D0)
;;     000000000046467D (in fn00000000004645D0)
;;     0000000000466253 (in fn00000000004661A0)
;;     00000000004662AC (in fn00000000004661A0)
;;     000000000046631D (in fn00000000004661A0)
;;     0000000000466376 (in fn00000000004661A0)
;;     00000000004663D3 (in fn00000000004661A0)
;;     0000000000466432 (in fn00000000004661A0)
;;     000000000046649A (in fn00000000004661A0)
;;     00000000004664FE (in fn00000000004661A0)
;;     0000000000466BC3 (in fn0000000000466B10)
;;     0000000000466C1C (in fn0000000000466B10)
;;     0000000000466C8D (in fn0000000000466B10)
;;     0000000000466CE6 (in fn0000000000466B10)
;;     0000000000466D43 (in fn0000000000466B10)
;;     0000000000466DA2 (in fn0000000000466B10)
;;     0000000000466E0A (in fn0000000000466B10)
;;     0000000000466E6E (in fn0000000000466B10)
;;     000000000046752F (in fn0000000000467480)
;;     0000000000467588 (in fn0000000000467480)
;;     0000000000467EBF (in fn0000000000467E10)
;;     0000000000467F18 (in fn0000000000467E10)
;;     0000000000470B47 (in fn0000000000470B20)
;;     0000000000470BC7 (in fn0000000000470BA0)
;;     0000000000470C57 (in fn0000000000470C30)
;;     0000000000470D37 (in fn0000000000470D10)
;;     0000000000470DD3 (in fn0000000000470DA0)
;;     0000000000470E87 (in fn0000000000470E60)
;;     0000000000470F17 (in fn0000000000470EF0)
;;     00000000004712C7 (in fn00000000004712A0)
;;     0000000000471357 (in fn0000000000471330)
;;     0000000000471467 (in fn0000000000471440)
;;     00000000004714F7 (in fn00000000004714D0)
;;     00000000004715D0 (in fn0000000000471560)
fn0000000000451EA0 proc
	push	rsi
	push	rbx
	sub	rsp,38h
	mov	rbx,rdx
	mov	rsi,rcx
	mov	rdx,-1h
	test	rbx,rbx
	jz	451ECEh

l0000000000451EB8:
	mov	rcx,rbx
	mov	[rsp+28h],r8
	call	41BCB8h
	mov	r8,[rsp+28h]
	lea	rdx,[rbx+rax]

l0000000000451ECE:
	xor	r9d,r9d
	mov	rcx,rbx
	call	450690h
	mov	[rsi],rax
	add	rsp,38h
	pop	rbx
	pop	rsi
	ret
0000000000451EE3          90 90 90 90 90 90 90 90 90 90 90 90 90    .............

;; fn0000000000451EF0: 0000000000451EF0
fn0000000000451EF0 proc
	push	rbx
	sub	rsp,20h
	mov	rbx,rcx
	mov	rax,rdx
	mov	rcx,r9
	lea	rdx,[rdx+r8]
	xor	r9d,r9d
	mov	r8,rcx
	mov	rcx,rax
	call	450690h
	mov	[rbx],rax
	add	rsp,20h
	pop	rbx
	ret
0000000000451F19                            90 90 90 90 90 90 90          .......

;; fn0000000000451F20: 0000000000451F20
fn0000000000451F20 proc
	push	rbx
	sub	rsp,20h
	mov	rbx,rcx
	mov	r8,rdx
	xor	ecx,ecx
	xor	edx,edx
	call	4505D0h
	mov	[rbx],rax
	add	rsp,20h
	pop	rbx
	ret
0000000000451F3D                                        90 90 90              ...

;; fn0000000000451F40: 0000000000451F40
;;   Called from:
;;     000000000043BE3D (in fn000000000043BE30)
;;     0000000000454788 (in fn0000000000454770)
;;     000000000045F3A8 (in fn000000000045F390)
;;     000000000046D279 (in fn000000000046D260)
fn0000000000451F40 proc
	push	rbx
	sub	rsp,30h
	mov	rax,[rdx]
	mov	rbx,rcx
	mov	edx,[rax-8h]
	test	edx,edx
	js	451F60h

l0000000000451F52:
	lock
	add	dword ptr [rax-8h],1h
	mov	[rbx],rax
	add	rsp,30h
	pop	rbx
	ret

l0000000000451F60:
	lea	rdx,[rsp+2Fh]
	lea	rcx,[rax-18h]
	xor	r8d,r8d
	call	450B00h
	mov	[rbx],rax
	add	rsp,30h
	pop	rbx
	ret
0000000000451F7A                               90 90 90 90 90 90           ......

;; fn0000000000451F80: 0000000000451F80
;;   Called from:
;;     0000000000428A84 (in fn0000000000428A70)
fn0000000000451F80 proc
	push	rbx
	sub	rsp,30h
	mov	r10,[rdx]
	mov	rdx,r9
	mov	rbx,rcx
	mov	r11,[r10-18h]
	mov	rax,r11
	sub	rax,r8
	cmp	rax,r9
	cmovbe	rdx,rax

l0000000000451F9F:
	add	rdx,r8
	add	rdx,r10
	cmp	r8,r11
	ja	451FC4h

l0000000000451FAA:
	lea	rcx,[r10+r8]
	lea	r8,[rsp+2Fh]
	xor	r9d,r9d
	call	450790h
	mov	[rbx],rax
	add	rsp,30h
	pop	rbx
	ret

l0000000000451FC4:
	lea	rdx,[000000000048D752]                                 ; [rip+0003B787]
	lea	rcx,[000000000048D5D0]                                 ; [rip+0003B5FE]
	mov	r9,r11
	call	471560h
	nop
	nop
	nop
	nop
	nop
	nop

;; fn0000000000451FE0: 0000000000451FE0
;;   Called from:
;;     0000000000451FDF (in fn0000000000451F80)
fn0000000000451FE0 proc
	push	rbx
	sub	rsp,20h
	mov	r10,[rdx]
	mov	rdx,r9
	mov	rbx,rcx
	mov	r11,[r10-18h]
	mov	rax,r11
	sub	rax,r8
	cmp	rax,r9
	cmovbe	rdx,rax

l0000000000451FFF:
	add	rdx,r8
	add	rdx,r10
	cmp	r8,r11
	ja	452024h

l000000000045200A:
	lea	rcx,[r10+r8]
	mov	r8,[rsp+50h]
	xor	r9d,r9d
	call	450790h
	mov	[rbx],rax
	add	rsp,20h
	pop	rbx
	ret

l0000000000452024:
	lea	rdx,[000000000048D752]                                 ; [rip+0003B727]
	lea	rcx,[000000000048D5D0]                                 ; [rip+0003B59E]
	mov	r9,r11
	call	471560h
	nop
	nop
	nop
	nop
	nop
	nop

;; fn0000000000452040: 0000000000452040
;;   Called from:
;;     000000000045203F (in fn0000000000451FE0)
fn0000000000452040 proc
	push	rbx
	sub	rsp,20h
	xor	r9d,r9d
	mov	rbx,rcx
	mov	rcx,[rdx]
	mov	rax,rcx
	add	rax,[rdx+8h]
	mov	rdx,rax
	call	450690h
	mov	[rbx],rax
	add	rsp,20h
	pop	rbx
	ret
0000000000452066                   90 90 90 90 90 90 90 90 90 90       ..........

;; fn0000000000452070: 0000000000452070
fn0000000000452070 proc
	push	rbx
	sub	rsp,30h
	xor	edx,edx
	lea	r8,[rsp+2Fh]
	mov	rbx,rcx
	xor	ecx,ecx
	call	4505D0h
	mov	[rbx],rax
	add	rsp,30h
	pop	rbx
	ret
000000000045208F                                              90                .

;; fn0000000000452090: 0000000000452090
;;   Called from:
;;     0000000000446ABC (in fn00000000004469A0)
fn0000000000452090 proc
	push	rbx
	sub	rsp,20h
	mov	rbx,rcx
	mov	rcx,rdx
	movsx	edx,r8b
	mov	r8,r9
	call	4505D0h
	mov	[rbx],rax
	add	rsp,20h
	pop	rbx
	ret

;; fn00000000004520B0: 00000000004520B0
fn00000000004520B0 proc
	push	rbx
	sub	rsp,20h
	mov	rbx,rcx
	mov	rcx,rdx
	mov	rdx,r8
	mov	r8,r9
	xor	r9d,r9d
	call	450630h
	mov	[rbx],rax
	add	rsp,20h
	pop	rbx
	ret
00000000004520D2       90 90 90 90 90 90 90 90 90 90 90 90 90 90   ..............

;; fn00000000004520E0: 00000000004520E0
fn00000000004520E0 proc
	push	rbx
	sub	rsp,20h
	mov	rbx,rcx
	mov	rcx,rdx
	mov	rdx,r8
	mov	r8,r9
	xor	r9d,r9d
	call	450690h
	mov	[rbx],rax
	add	rsp,20h
	pop	rbx
	ret
0000000000452102       90 90 90 90 90 90 90 90 90 90 90 90 90 90   ..............

;; fn0000000000452110: 0000000000452110
fn0000000000452110 proc
	push	rbx
	sub	rsp,20h
	mov	rbx,rcx
	mov	rcx,rdx
	mov	rdx,r8
	mov	r8,r9
	xor	r9d,r9d
	call	450790h
	mov	[rbx],rax
	add	rsp,20h
	pop	rbx
	ret
0000000000452132       90 90 90 90 90 90 90 90 90 90 90 90 90 90   ..............

;; fn0000000000452140: 0000000000452140
fn0000000000452140 proc
	push	rbx
	sub	rsp,30h
	mov	rax,[rdx]
	lea	r8,[rsp+2Fh]
	mov	rbx,rdx
	xor	edx,edx
	mov	[rcx],rax
	xor	ecx,ecx
	call	4505D0h
	mov	[rbx],rax
	add	rsp,30h
	pop	rbx
	ret
0000000000452165                90 90 90 90 90 90 90 90 90 90 90      ...........

;; fn0000000000452170: 0000000000452170
fn0000000000452170 proc
	push	rsi
	push	rbx
	sub	rsp,38h
	mov	rbx,rdx
	mov	rsi,rcx
	mov	rdx,-1h
	test	rbx,rbx
	jz	45219Eh

l0000000000452188:
	mov	rcx,rbx
	mov	[rsp+28h],r8
	call	41BCB8h
	mov	r8,[rsp+28h]
	lea	rdx,[rbx+rax]

l000000000045219E:
	xor	r9d,r9d
	mov	rcx,rbx
	call	450690h
	mov	[rsi],rax
	add	rsp,38h
	pop	rbx
	pop	rsi
	ret
00000000004521B3          90 90 90 90 90 90 90 90 90 90 90 90 90    .............

;; fn00000000004521C0: 00000000004521C0
fn00000000004521C0 proc
	push	rbx
	sub	rsp,20h
	mov	rbx,rcx
	mov	rax,rdx
	mov	rcx,r9
	lea	rdx,[rdx+r8]
	xor	r9d,r9d
	mov	r8,rcx
	mov	rcx,rax
	call	450690h
	mov	[rbx],rax
	add	rsp,20h
	pop	rbx
	ret
00000000004521E9                            90 90 90 90 90 90 90          .......

;; fn00000000004521F0: 00000000004521F0
fn00000000004521F0 proc
	push	rbx
	sub	rsp,20h
	mov	rbx,rcx
	mov	r8,rdx
	xor	ecx,ecx
	xor	edx,edx
	call	4505D0h
	mov	[rbx],rax
	add	rsp,20h
	pop	rbx
	ret
000000000045220D                                        90 90 90              ...

;; fn0000000000452210: 0000000000452210
fn0000000000452210 proc
	push	rbx
	sub	rsp,30h
	mov	rax,[rdx]
	mov	rbx,rcx
	mov	edx,[rax-8h]
	test	edx,edx
	js	452230h

l0000000000452222:
	lock
	add	dword ptr [rax-8h],1h
	mov	[rbx],rax
	add	rsp,30h
	pop	rbx
	ret

l0000000000452230:
	lea	rdx,[rsp+2Fh]
	lea	rcx,[rax-18h]
	xor	r8d,r8d
	call	450B00h
	mov	[rbx],rax
	add	rsp,30h
	pop	rbx
	ret
000000000045224A                               90 90 90 90 90 90           ......

;; fn0000000000452250: 0000000000452250
fn0000000000452250 proc
	push	rbx
	sub	rsp,30h
	mov	r10,[rdx]
	mov	rdx,r9
	mov	rbx,rcx
	mov	r11,[r10-18h]
	mov	rax,r11
	sub	rax,r8
	cmp	rax,r9
	cmovbe	rdx,rax

l000000000045226F:
	add	rdx,r8
	add	rdx,r10
	cmp	r8,r11
	ja	452294h

l000000000045227A:
	lea	rcx,[r10+r8]
	lea	r8,[rsp+2Fh]
	xor	r9d,r9d
	call	450790h
	mov	[rbx],rax
	add	rsp,30h
	pop	rbx
	ret

l0000000000452294:
	lea	rdx,[000000000048D752]                                 ; [rip+0003B4B7]
	lea	rcx,[000000000048D5D0]                                 ; [rip+0003B32E]
	mov	r9,r11
	call	471560h
	nop
	nop
	nop
	nop
	nop
	nop

;; fn00000000004522B0: 00000000004522B0
;;   Called from:
;;     00000000004522AF (in fn0000000000452250)
fn00000000004522B0 proc
	push	rbx
	sub	rsp,20h
	mov	r10,[rdx]
	mov	rdx,r9
	mov	rbx,rcx
	mov	r11,[r10-18h]
	mov	rax,r11
	sub	rax,r8
	cmp	rax,r9
	cmovbe	rdx,rax

l00000000004522CF:
	add	rdx,r8
	add	rdx,r10
	cmp	r8,r11
	ja	4522F4h

l00000000004522DA:
	lea	rcx,[r10+r8]
	mov	r8,[rsp+50h]
	xor	r9d,r9d
	call	450790h
	mov	[rbx],rax
	add	rsp,20h
	pop	rbx
	ret

l00000000004522F4:
	lea	rdx,[000000000048D752]                                 ; [rip+0003B457]
	lea	rcx,[000000000048D5D0]                                 ; [rip+0003B2CE]
	mov	r9,r11
	call	471560h
	nop
	nop
	nop
	nop
	nop
	nop

;; fn0000000000452310: 0000000000452310
;;   Called from:
;;     000000000045230F (in fn00000000004522B0)
fn0000000000452310 proc
	push	rbx
	sub	rsp,20h
	xor	r9d,r9d
	mov	rbx,rcx
	mov	rcx,[rdx]
	mov	rax,rcx
	add	rax,[rdx+8h]
	mov	rdx,rax
	call	450690h
	mov	[rbx],rax
	add	rsp,20h
	pop	rbx
	ret
0000000000452336                   90 90 90 90 90 90 90 90 90 90       ..........

;; fn0000000000452340: 0000000000452340
fn0000000000452340 proc
	push	rbx
	sub	rsp,30h
	xor	edx,edx
	lea	r8,[rsp+2Fh]
	mov	rbx,rcx
	xor	ecx,ecx
	call	4505D0h
	mov	[rbx],rax
	add	rsp,30h
	pop	rbx
	ret
000000000045235F                                              90                .

;; fn0000000000452360: 0000000000452360
fn0000000000452360 proc
	push	rbx
	sub	rsp,20h
	mov	rbx,rcx
	mov	rcx,rdx
	movsx	edx,r8b
	mov	r8,r9
	call	4505D0h
	mov	[rbx],rax
	add	rsp,20h
	pop	rbx
	ret

;; fn0000000000452380: 0000000000452380
fn0000000000452380 proc
	push	rbx
	sub	rsp,20h
	mov	rbx,rcx
	mov	rcx,rdx
	mov	rdx,r8
	mov	r8,r9
	xor	r9d,r9d
	call	450630h
	mov	[rbx],rax
	add	rsp,20h
	pop	rbx
	ret
00000000004523A2       90 90 90 90 90 90 90 90 90 90 90 90 90 90   ..............

;; fn00000000004523B0: 00000000004523B0
fn00000000004523B0 proc
	push	rbx
	sub	rsp,20h
	mov	rbx,rcx
	mov	rcx,rdx
	mov	rdx,r8
	mov	r8,r9
	xor	r9d,r9d
	call	450690h
	mov	[rbx],rax
	add	rsp,20h
	pop	rbx
	ret
00000000004523D2       90 90 90 90 90 90 90 90 90 90 90 90 90 90   ..............

;; fn00000000004523E0: 00000000004523E0
fn00000000004523E0 proc
	push	rbx
	sub	rsp,20h
	mov	rbx,rcx
	mov	rcx,rdx
	mov	rdx,r8
	mov	r8,r9
	xor	r9d,r9d
	call	450790h
	mov	[rbx],rax
	add	rsp,20h
	pop	rbx
	ret
0000000000452402       90 90 90 90 90 90 90 90 90 90 90 90 90 90   ..............

;; fn0000000000452410: 0000000000452410
;;   Called from:
;;     0000000000402984 (in fn000000000040252C)
;;     00000000004029E5 (in fn000000000040252C)
;;     00000000004033EC (in fn0000000000402E6F)
;;     00000000004034DE (in fn00000000004034CF)
;;     00000000004034F9 (in fn00000000004034EA)
;;     0000000000403514 (in fn0000000000403505)
;;     000000000040352F (in fn0000000000403520)
fn0000000000452410 proc
	mov	rcx,[rcx]
	mov	eax,0FFFFFFFFh
	lock
	xadd	[rcx-8h],eax
	test	eax,eax
	jle	452423h

l0000000000452421:
	ret

l0000000000452423:
	sub	rcx,18h
	jmp	475550h
000000000045242C                                     90 90 90 90             ....

;; fn0000000000452430: 0000000000452430
fn0000000000452430 proc
	mov	rcx,[rcx]
	mov	eax,0FFFFFFFFh
	lock
	xadd	[rcx-8h],eax
	test	eax,eax
	jle	452443h

l0000000000452441:
	ret

l0000000000452443:
	sub	rcx,18h
	jmp	475550h
000000000045244C                                     90 90 90 90             ....

;; fn0000000000452450: 0000000000452450
fn0000000000452450 proc
	mov	r8,[rcx]
	mov	rax,rcx
	mov	r10d,[r8-8h]
	test	r10d,r10d
	js	452480h

l000000000045245F:
	mov	rcx,[rdx]
	mov	r9d,[rcx-8h]
	test	r9d,r9d
	jns	452472h

l000000000045246B:
	mov	dword ptr [rcx-8h],0h

l0000000000452472:
	mov	[rax],rcx
	mov	[rdx],r8
	ret
0000000000452479                            0F 1F 80 00 00 00 00          .......

l0000000000452480:
	mov	dword ptr [r8-8h],0h
	jmp	45245Fh
000000000045248A                               90 90 90 90 90 90           ......

;; fn0000000000452490: 0000000000452490
fn0000000000452490 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	mov	rsi,rcx
	mov	rbx,rdx
	mov	rcx,rdx
	call	41BCB8h
	mov	rdx,rbx
	mov	r8,rax
	mov	rcx,rsi
	add	rsp,28h
	pop	rbx
	pop	rsi
	jmp	4511C0h
00000000004524B8                         90 90 90 90 90 90 90 90         ........

;; fn00000000004524C0: 00000000004524C0
fn00000000004524C0 proc
	jmp	451290h
00000000004524C5                90 90 90 90 90 90 90 90 90 90 90      ...........

;; fn00000000004524D0: 00000000004524D0
fn00000000004524D0 proc
	push	rbx
	sub	rsp,20h
	mov	rax,rdx
	mov	rdx,[rdx]
	mov	rbx,rcx
	mov	r8,[rax+8h]
	call	4511C0h
	mov	rax,rbx
	add	rsp,20h
	pop	rbx
	ret

;; fn00000000004524F0: 00000000004524F0
fn00000000004524F0 proc
	push	rbx
	sub	rsp,30h
	mov	rax,[rcx]
	mov	r9d,1h
	movsx	edx,dl
	mov	rbx,rcx
	mov	r8,[rax-18h]
	mov	[rsp+20h],edx
	xor	edx,edx
	call	4508E0h
	mov	rax,rbx
	add	rsp,30h
	pop	rbx
	ret
000000000045251C                                     90 90 90 90             ....

;; fn0000000000452520: 0000000000452520
fn0000000000452520 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	mov	rax,[rcx]
	mov	rbx,rdx
	mov	rsi,rcx
	mov	edx,[rax-8h]
	test	edx,edx
	js	45253Eh

l0000000000452536:
	call	4505A0h
	mov	rax,[rsi]

l000000000045253E:
	add	rax,rbx
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret
0000000000452548                         90 90 90 90 90 90 90 90         ........

;; fn0000000000452550: 0000000000452550
fn0000000000452550 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	mov	rbx,rcx
	mov	rcx,rdx
	mov	rsi,rdx
	call	41BCB8h
	test	rax,rax
	jz	452577h

l0000000000452569:
	mov	r8,rax
	mov	rdx,rsi
	mov	rcx,rbx
	call	450E20h

l0000000000452577:
	mov	rax,rbx
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret
0000000000452581    90 90 90 90 90 90 90 90 90 90 90 90 90 90 90  ...............

;; fn0000000000452590: 0000000000452590
fn0000000000452590 proc
	jmp	450F00h
0000000000452595                90 90 90 90 90 90 90 90 90 90 90      ...........

;; fn00000000004525A0: 00000000004525A0
fn00000000004525A0 proc
	push	rbx
	sub	rsp,20h
	mov	r8,[rdx+8h]
	mov	rax,[rdx]
	mov	rbx,rcx
	test	r8,r8
	jz	4525BCh

l00000000004525B4:
	mov	rdx,rax
	call	450E20h

l00000000004525BC:
	mov	rax,rbx
	add	rsp,20h
	pop	rbx
	ret
00000000004525C5                90 90 90 90 90 90 90 90 90 90 90      ...........

;; fn00000000004525D0: 00000000004525D0
fn00000000004525D0 proc
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,20h
	mov	r8,[rcx]
	mov	rbx,rcx
	mov	edi,edx
	mov	rax,[r8-18h]
	lea	rsi,[rax+1h]
	cmp	rsi,[r8-10h]
	ja	4525F5h

l00000000004525ED:
	mov	edx,[r8-8h]
	test	edx,edx
	jle	452607h

l00000000004525F5:
	mov	rdx,rsi
	mov	rcx,rbx
	call	451BE0h
	mov	r8,[rbx]
	mov	rax,[r8-18h]

l0000000000452607:
	mov	[r8+rax],dil
	mov	rax,[rbx]
	mov	dword ptr [rax-8h],0h
	mov	[rax-18h],rsi
	mov	byte ptr [rax+rsi],0h
	mov	rax,rbx
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	ret
0000000000452628                         90 90 90 90 90 90 90 90         ........

;; fn0000000000452630: 0000000000452630
;;   Called from:
;;     000000000046F410 (in fn000000000046F400)
fn0000000000452630 proc
	push	rbp
	mov	rbp,rsp
	mov	[rbp+10h],rcx
	mov	rax,[rbp+10h]
	pop	rbp
	ret
000000000045263E                                           90 90               ..

;; fn0000000000452640: 0000000000452640
;;   Called from:
;;     000000000046F3F0 (in fn000000000046F3E0)
fn0000000000452640 proc
	push	rbp
	mov	rbp,rsp
	sub	rsp,20h
	mov	[rbp+10h],rcx
	lea	rcx,[rbp+10h]
	call	42AC50h
	add	rsp,20h
	pop	rbp
	ret
000000000045265B                                  90 90 90 90 90            .....

;; fn0000000000452660: 0000000000452660
;;   Called from:
;;     0000000000438FE3 (in fn0000000000438F60)
;;     0000000000439376 (in fn00000000004392F0)
;;     000000000043AD36 (in fn000000000043AC90)
;;     000000000043B116 (in fn000000000043B070)
fn0000000000452660 proc
	mov	eax,[rcx+18h]
	mov	byte ptr [rdx],25h
	lea	rcx,[rdx+1h]
	test	ah,8h
	jz	452677h

l000000000045266F:
	lea	rcx,[rdx+2h]
	mov	byte ptr [rdx+1h],2Bh

l0000000000452677:
	test	ah,4h
	jz	452683h

l000000000045267C:
	mov	byte ptr [rcx],23h
	add	rcx,1h

l0000000000452683:
	test	r8b,r8b
	mov	byte ptr [rcx],2Eh
	mov	byte ptr [rcx+1h],2Ah
	lea	rdx,[rcx+2h]
	jz	45269Bh

l0000000000452693:
	lea	rdx,[rcx+3h]
	mov	[rcx+2h],r8b

l000000000045269B:
	mov	ecx,eax
	and	ecx,104h
	cmp	ecx,4h
	jz	4526E0h

l00000000004526A8:
	and	eax,4000h
	cmp	eax,1h
	sbb	eax,eax
	and	eax,20h
	cmp	ecx,100h
	lea	rcx,[rdx+1h]
	jz	4526D0h

l00000000004526C1:
	add	eax,47h
	mov	[rdx],al
	mov	byte ptr [rcx],0h
	ret
00000000004526CA                               66 0F 1F 44 00 00           f..D..

l00000000004526D0:
	add	eax,45h
	mov	[rdx],al
	mov	byte ptr [rcx],0h
	ret
00000000004526D9                            0F 1F 80 00 00 00 00          .......

l00000000004526E0:
	lea	rcx,[rdx+1h]
	mov	byte ptr [rdx],66h
	mov	byte ptr [rcx],0h
	ret
00000000004526EB                                  90 90 90 90 90            .....

;; fn00000000004526F0: 00000000004526F0
fn00000000004526F0 proc
	push	rbx
	sub	rsp,20h
	lea	rax,[0000000000496150]                                 ; [rip+00043A54]
	mov	rbx,rcx
	mov	[rcx],rax
	call	46F0F0h
	mov	rcx,rbx
	add	rsp,20h
	pop	rbx
	jmp	475550h
0000000000452714             90 90 90 90 90 90 90 90 90 90 90 90     ............

;; fn0000000000452720: 0000000000452720
fn0000000000452720 proc
	lea	rax,[0000000000496150]                                 ; [rip+00043A29]
	mov	[rcx],rax
	jmp	46F0F0h
000000000045272F                                              90                .

;; fn0000000000452730: 0000000000452730
fn0000000000452730 proc
	mov	rax,[0000000000491710]                                 ; [rip+0003EFD9]
	mov	eax,[rax]
	ret
000000000045273A                               90 90 90 90 90 90           ......

;; fn0000000000452740: 0000000000452740
;;   Called from:
;;     00000000004528A7 (in fn0000000000452880)
;;     00000000004528F6 (in fn00000000004528D0)
;;     000000000045294B (in fn0000000000452920)
;;     0000000000452997 (in fn0000000000452970)
;;     00000000004529E6 (in fn00000000004529C0)
;;     0000000000452A3B (in fn0000000000452A10)
;;     0000000000465A10 (in fn00000000004659E0)
;;     0000000000465A6E (in fn00000000004659E0)
;;     0000000000465AE0 (in fn0000000000465AB0)
;;     0000000000465B3E (in fn0000000000465AB0)
;;     0000000000469D59 (in fn00000000004699E0)
fn0000000000452740 proc
	push	rbx
	sub	rsp,20h
	mov	rax,[rcx+10h]
	mov	rbx,rcx
	test	rax,rax
	jz	4527E0h

l0000000000452755:
	mov	byte ptr [rax+21h],2Eh
	mov	rdx,[0000000000491710]                                 ; [rip+0003EFB0]
	lea	rcx,[000000000048E370]                                 ; [rip+0003BC09]
	mov	rax,[rbx+10h]
	mov	edx,[rdx]
	mov	byte ptr [rax+22h],2Ch
	mov	rax,[rbx+10h]
	mov	[rax+10h],rcx
	mov	[rax+28h],rcx
	mov	[rax+38h],rcx
	mov	[rax+48h],rcx
	mov	qword ptr [rax+18h],+0h
	mov	qword ptr [rax+30h],+0h
	mov	qword ptr [rax+40h],+0h
	mov	qword ptr [rax+50h],+0h
	mov	dword ptr [rax+58h],0h
	mov	[rax+5Ch],edx
	mov	rax,[rbx+10h]
	mov	[rax+60h],edx
	mov	rax,[0000000000491720]                                 ; [rip+0003EF63]
	mov	rcx,[rax]
	xor	eax,eax

l00000000004527C2:
	movzx	r8d,byte ptr [rcx+rax]
	mov	rdx,[rbx+10h]
	mov	[rdx+rax+64h],r8b
	add	rax,1h
	cmp	rax,0Bh
	jnz	4527C2h

l00000000004527DA:
	add	rsp,20h
	pop	rbx
	ret

l00000000004527E0:
	mov	ecx,70h
	call	475590h
	mov	rcx,[0000000000491CB0]                                 ; [rip+0003F4BF]
	mov	dword ptr [rax+8h],0h
	mov	qword ptr [rax+10h],+0h
	mov	qword ptr [rax+18h],+0h
	mov	byte ptr [rax+20h],0h
	mov	byte ptr [rax+21h],0h
	lea	rdx,[rcx+10h]
	mov	byte ptr [rax+22h],0h
	mov	qword ptr [rax+28h],+0h
	mov	qword ptr [rax+30h],+0h
	mov	qword ptr [rax+38h],+0h
	mov	[rax],rdx
	mov	qword ptr [rax+40h],+0h
	mov	qword ptr [rax+48h],+0h
	mov	qword ptr [rax+50h],+0h
	mov	dword ptr [rax+58h],0h
	mov	byte ptr [rax+5Ch],0h
	mov	byte ptr [rax+5Dh],0h
	mov	byte ptr [rax+5Eh],0h
	mov	byte ptr [rax+5Fh],0h
	mov	byte ptr [rax+60h],0h
	mov	byte ptr [rax+61h],0h
	mov	byte ptr [rax+62h],0h
	mov	byte ptr [rax+63h],0h
	mov	byte ptr [rax+6Fh],0h
	mov	[rbx+10h],rax
	jmp	452755h
000000000045287F                                              90                .

;; fn0000000000452880: 0000000000452880
fn0000000000452880 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	xor	eax,eax
	test	r8,r8
	mov	[rcx+10h],rdx
	mov	rbx,rcx
	setnz	al
	xor	r8d,r8d
	xor	edx,edx
	mov	[rcx+8h],eax
	lea	rax,[0000000000496190]                                 ; [rip+000438EC]
	mov	[rcx],rax
	call	452740h
	nop
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret
00000000004528B4             48 89 C6 48 89 D9 E8 61 84 01 00 48     H..H...a...H
00000000004528C0 89 F1 E8 E9 EC FB FF 90 90 90 90 90 90 90 90 90 ................

;; fn00000000004528D0: 00000000004528D0
fn00000000004528D0 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	xor	eax,eax
	test	r9,r9
	mov	qword ptr [rcx+10h],+0h
	mov	rbx,rcx
	setnz	al
	mov	[rcx+8h],eax
	lea	rax,[0000000000496190]                                 ; [rip+0004389D]
	mov	[rcx],rax
	call	452740h
	nop
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret
0000000000452903          48 89 C6 48 89 D9 E8 12 84 01 00 48 89    H..H.......H.
0000000000452910 F1 E8 9A EC FB FF 90 90 90 90 90 90 90 90 90 90 ................

;; fn0000000000452920: 0000000000452920
fn0000000000452920 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	xor	eax,eax
	test	rdx,rdx
	mov	qword ptr [rcx+10h],+0h
	mov	rbx,rcx
	setnz	al
	xor	r8d,r8d
	xor	edx,edx
	mov	[rcx+8h],eax
	lea	rax,[0000000000496190]                                 ; [rip+00043848]
	mov	[rcx],rax
	call	452740h
	nop
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret
0000000000452958                         48 89 C6 48 89 D9 E8 BD         H..H....
0000000000452960 83 01 00 48 89 F1 E8 45 EC FB FF 90 90 90 90 90 ...H...E........

;; fn0000000000452970: 0000000000452970
fn0000000000452970 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	xor	eax,eax
	test	r8,r8
	mov	[rcx+10h],rdx
	mov	rbx,rcx
	setnz	al
	xor	r8d,r8d
	xor	edx,edx
	mov	[rcx+8h],eax
	lea	rax,[0000000000496190]                                 ; [rip+000437FC]
	mov	[rcx],rax
	call	452740h
	nop
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret
00000000004529A4             48 89 C6 48 89 D9 E8 71 83 01 00 48     H..H...q...H
00000000004529B0 89 F1 E8 F9 EB FB FF 90 90 90 90 90 90 90 90 90 ................

;; fn00000000004529C0: 00000000004529C0
fn00000000004529C0 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	xor	eax,eax
	test	r9,r9
	mov	qword ptr [rcx+10h],+0h
	mov	rbx,rcx
	setnz	al
	mov	[rcx+8h],eax
	lea	rax,[0000000000496190]                                 ; [rip+000437AD]
	mov	[rcx],rax
	call	452740h
	nop
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret
00000000004529F3          48 89 C6 48 89 D9 E8 22 83 01 00 48 89    H..H..."...H.
0000000000452A00 F1 E8 AA EB FB FF 90 90 90 90 90 90 90 90 90 90 ................

;; fn0000000000452A10: 0000000000452A10
fn0000000000452A10 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	xor	eax,eax
	test	rdx,rdx
	mov	qword ptr [rcx+10h],+0h
	mov	rbx,rcx
	setnz	al
	xor	r8d,r8d
	xor	edx,edx
	mov	[rcx+8h],eax
	lea	rax,[0000000000496190]                                 ; [rip+00043758]
	mov	[rcx],rax
	call	452740h
	nop
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret
0000000000452A48                         48 89 C6 48 89 D9 E8 CD         H..H....
0000000000452A50 82 01 00 48 89 F1 E8 55 EB FB FF 90 90 90 90 90 ...H...U........

;; fn0000000000452A60: 0000000000452A60
fn0000000000452A60 proc
	push	rbx
	sub	rsp,20h
	mov	rbx,rcx
	call	452A80h
	mov	rcx,rbx
	add	rsp,20h
	pop	rbx
	jmp	475550h
0000000000452A7A                               90 90 90 90 90 90           ......

;; fn0000000000452A80: 0000000000452A80
;;   Called from:
;;     0000000000452A68 (in fn0000000000452A60)
;;     0000000000465B92 (in fn0000000000465B80)
;;     0000000000465BBA (in fn0000000000465BB0)
;;     0000000000465BCA (in fn0000000000465BC0)
fn0000000000452A80 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	mov	rax,[0000000000491B80]                                 ; [rip+0003F0F3]
	mov	rbx,rcx
	add	rax,10h
	mov	[rcx],rax
	mov	rcx,[rcx+10h]
	test	rcx,rcx
	jz	452AA6h

l0000000000452AA0:
	mov	rax,[rcx]
	call	qword ptr [rax+8h]

l0000000000452AA6:
	mov	rcx,rbx
	add	rsp,28h
	pop	rbx
	pop	rsi
	jmp	46AD20h
0000000000452AB4             48 89 C6 48 89 D9 E8 61 82 01 00 48     H..H...a...H
0000000000452AC0 89 F1 E8 E9 EA FB FF 90 90 90 90 90 90 90 90 90 ................

;; fn0000000000452AD0: 0000000000452AD0
;;   Called from:
;;     0000000000452C37 (in fn0000000000452C10)
;;     0000000000452C86 (in fn0000000000452C60)
;;     0000000000452CDB (in fn0000000000452CB0)
;;     0000000000452D27 (in fn0000000000452D00)
;;     0000000000452D76 (in fn0000000000452D50)
;;     0000000000452DCB (in fn0000000000452DA0)
;;     0000000000465C00 (in fn0000000000465BD0)
;;     0000000000465C5E (in fn0000000000465BD0)
;;     0000000000465CD0 (in fn0000000000465CA0)
;;     0000000000465D2E (in fn0000000000465CA0)
;;     0000000000469E7C (in fn00000000004699E0)
fn0000000000452AD0 proc
	push	rbx
	sub	rsp,20h
	mov	rax,[rcx+10h]
	mov	rbx,rcx
	test	rax,rax
	jz	452B70h

l0000000000452AE5:
	mov	byte ptr [rax+21h],2Eh
	mov	rdx,[0000000000491710]                                 ; [rip+0003EC20]
	lea	rcx,[000000000048E370]                                 ; [rip+0003B879]
	mov	rax,[rbx+10h]
	mov	edx,[rdx]
	mov	byte ptr [rax+22h],2Ch
	mov	rax,[rbx+10h]
	mov	[rax+10h],rcx
	mov	[rax+28h],rcx
	mov	[rax+38h],rcx
	mov	[rax+48h],rcx
	mov	qword ptr [rax+18h],+0h
	mov	qword ptr [rax+30h],+0h
	mov	qword ptr [rax+40h],+0h
	mov	qword ptr [rax+50h],+0h
	mov	dword ptr [rax+58h],0h
	mov	[rax+5Ch],edx
	mov	rax,[rbx+10h]
	mov	[rax+60h],edx
	mov	rax,[0000000000491720]                                 ; [rip+0003EBD3]
	mov	rcx,[rax]
	xor	eax,eax

l0000000000452B52:
	movzx	r8d,byte ptr [rcx+rax]
	mov	rdx,[rbx+10h]
	mov	[rdx+rax+64h],r8b
	add	rax,1h
	cmp	rax,0Bh
	jnz	452B52h

l0000000000452B6A:
	add	rsp,20h
	pop	rbx
	ret

l0000000000452B70:
	mov	ecx,70h
	call	475590h
	mov	rcx,[0000000000491CC0]                                 ; [rip+0003F13F]
	mov	dword ptr [rax+8h],0h
	mov	qword ptr [rax+10h],+0h
	mov	qword ptr [rax+18h],+0h
	mov	byte ptr [rax+20h],0h
	mov	byte ptr [rax+21h],0h
	lea	rdx,[rcx+10h]
	mov	byte ptr [rax+22h],0h
	mov	qword ptr [rax+28h],+0h
	mov	qword ptr [rax+30h],+0h
	mov	qword ptr [rax+38h],+0h
	mov	[rax],rdx
	mov	qword ptr [rax+40h],+0h
	mov	qword ptr [rax+48h],+0h
	mov	qword ptr [rax+50h],+0h
	mov	dword ptr [rax+58h],0h
	mov	byte ptr [rax+5Ch],0h
	mov	byte ptr [rax+5Dh],0h
	mov	byte ptr [rax+5Eh],0h
	mov	byte ptr [rax+5Fh],0h
	mov	byte ptr [rax+60h],0h
	mov	byte ptr [rax+61h],0h
	mov	byte ptr [rax+62h],0h
	mov	byte ptr [rax+63h],0h
	mov	byte ptr [rax+6Fh],0h
	mov	[rbx+10h],rax
	jmp	452AE5h
0000000000452C0F                                              90                .

;; fn0000000000452C10: 0000000000452C10
fn0000000000452C10 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	xor	eax,eax
	test	r8,r8
	mov	[rcx+10h],rdx
	mov	rbx,rcx
	setnz	al
	xor	r8d,r8d
	xor	edx,edx
	mov	[rcx+8h],eax
	lea	rax,[0000000000496210]                                 ; [rip+000435DC]
	mov	[rcx],rax
	call	452AD0h
	nop
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret
0000000000452C44             48 89 C6 48 89 D9 E8 D1 80 01 00 48     H..H.......H
0000000000452C50 89 F1 E8 59 E9 FB FF 90 90 90 90 90 90 90 90 90 ...Y............

;; fn0000000000452C60: 0000000000452C60
fn0000000000452C60 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	xor	eax,eax
	test	r9,r9
	mov	qword ptr [rcx+10h],+0h
	mov	rbx,rcx
	setnz	al
	mov	[rcx+8h],eax
	lea	rax,[0000000000496210]                                 ; [rip+0004358D]
	mov	[rcx],rax
	call	452AD0h
	nop
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret
0000000000452C93          48 89 C6 48 89 D9 E8 82 80 01 00 48 89    H..H.......H.
0000000000452CA0 F1 E8 0A E9 FB FF 90 90 90 90 90 90 90 90 90 90 ................

;; fn0000000000452CB0: 0000000000452CB0
fn0000000000452CB0 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	xor	eax,eax
	test	rdx,rdx
	mov	qword ptr [rcx+10h],+0h
	mov	rbx,rcx
	setnz	al
	xor	r8d,r8d
	xor	edx,edx
	mov	[rcx+8h],eax
	lea	rax,[0000000000496210]                                 ; [rip+00043538]
	mov	[rcx],rax
	call	452AD0h
	nop
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret
0000000000452CE8                         48 89 C6 48 89 D9 E8 2D         H..H...-
0000000000452CF0 80 01 00 48 89 F1 E8 B5 E8 FB FF 90 90 90 90 90 ...H............

;; fn0000000000452D00: 0000000000452D00
fn0000000000452D00 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	xor	eax,eax
	test	r8,r8
	mov	[rcx+10h],rdx
	mov	rbx,rcx
	setnz	al
	xor	r8d,r8d
	xor	edx,edx
	mov	[rcx+8h],eax
	lea	rax,[0000000000496210]                                 ; [rip+000434EC]
	mov	[rcx],rax
	call	452AD0h
	nop
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret
0000000000452D34             48 89 C6 48 89 D9 E8 E1 7F 01 00 48     H..H.......H
0000000000452D40 89 F1 E8 69 E8 FB FF 90 90 90 90 90 90 90 90 90 ...i............

;; fn0000000000452D50: 0000000000452D50
fn0000000000452D50 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	xor	eax,eax
	test	r9,r9
	mov	qword ptr [rcx+10h],+0h
	mov	rbx,rcx
	setnz	al
	mov	[rcx+8h],eax
	lea	rax,[0000000000496210]                                 ; [rip+0004349D]
	mov	[rcx],rax
	call	452AD0h
	nop
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret
0000000000452D83          48 89 C6 48 89 D9 E8 92 7F 01 00 48 89    H..H.......H.
0000000000452D90 F1 E8 1A E8 FB FF 90 90 90 90 90 90 90 90 90 90 ................

;; fn0000000000452DA0: 0000000000452DA0
fn0000000000452DA0 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	xor	eax,eax
	test	rdx,rdx
	mov	qword ptr [rcx+10h],+0h
	mov	rbx,rcx
	setnz	al
	xor	r8d,r8d
	xor	edx,edx
	mov	[rcx+8h],eax
	lea	rax,[0000000000496210]                                 ; [rip+00043448]
	mov	[rcx],rax
	call	452AD0h
	nop
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret
0000000000452DD8                         48 89 C6 48 89 D9 E8 3D         H..H...=
0000000000452DE0 7F 01 00 48 89 F1 E8 C5 E7 FB FF 90 90 90 90 90 ...H............

;; fn0000000000452DF0: 0000000000452DF0
fn0000000000452DF0 proc
	push	rbx
	sub	rsp,20h
	mov	rbx,rcx
	call	452E10h
	mov	rcx,rbx
	add	rsp,20h
	pop	rbx
	jmp	475550h
0000000000452E0A                               90 90 90 90 90 90           ......

;; fn0000000000452E10: 0000000000452E10
;;   Called from:
;;     0000000000452DF8 (in fn0000000000452DF0)
;;     0000000000465D82 (in fn0000000000465D70)
;;     0000000000465DAA (in fn0000000000465DA0)
;;     0000000000465DBA (in fn0000000000465DB0)
fn0000000000452E10 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	mov	rax,[0000000000491B90]                                 ; [rip+0003ED73]
	mov	rbx,rcx
	add	rax,10h
	mov	[rcx],rax
	mov	rcx,[rcx+10h]
	test	rcx,rcx
	jz	452E36h

l0000000000452E30:
	mov	rax,[rcx]
	call	qword ptr [rax+8h]

l0000000000452E36:
	mov	rcx,rbx
	add	rsp,28h
	pop	rbx
	pop	rsi
	jmp	46AD20h
0000000000452E44             48 89 C6 48 89 D9 E8 D1 7E 01 00 48     H..H....~..H
0000000000452E50 89 F1 E8 59 E7 FB FF 90 90 90 90 90 90 90 90 90 ...Y............

;; fn0000000000452E60: 0000000000452E60
;;   Called from:
;;     0000000000452FE7 (in fn0000000000452FC0)
;;     0000000000453036 (in fn0000000000453010)
;;     000000000045308B (in fn0000000000453060)
;;     00000000004530D7 (in fn00000000004530B0)
;;     0000000000453126 (in fn0000000000453100)
;;     000000000045317B (in fn0000000000453150)
;;     0000000000465DF0 (in fn0000000000465DC0)
;;     0000000000465E4E (in fn0000000000465DC0)
;;     0000000000465EC0 (in fn0000000000465E90)
;;     0000000000465F1E (in fn0000000000465E90)
;;     000000000046A4AB (in fn00000000004699E0)
fn0000000000452E60 proc
	push	rbx
	sub	rsp,20h
	mov	rax,[rcx+10h]
	mov	rbx,rcx
	test	rax,rax
	jz	452F0Bh

l0000000000452E75:
	mov	edx,2Eh
	mov	ecx,2Ch
	mov	qword ptr [rax+18h],+0h
	mov	[rax+22h],dx
	mov	rdx,[0000000000491710]                                 ; [rip+0003E87E]
	mov	[rax+24h],cx
	lea	rcx,[000000000048E370]                                 ; [rip+0003B4D3]
	mov	qword ptr [rax+30h],+0h
	mov	qword ptr [rax+40h],+0h
	mov	qword ptr [rax+50h],+0h
	mov	edx,[rdx]
	mov	[rax+10h],rcx
	lea	rcx,[000000000048E372]                                 ; [rip+0003B4B0]
	mov	dword ptr [rax+58h],0h
	mov	[rax+28h],rcx
	mov	[rax+38h],rcx
	mov	[rax+48h],rcx
	mov	[rax+5Ch],edx
	mov	rax,[rbx+10h]
	mov	[rax+60h],edx
	mov	rax,[0000000000491720]                                 ; [rip+0003E83A]
	mov	r8,[rbx+10h]
	mov	rcx,[rax]
	xor	eax,eax
	nop

l0000000000452EF0:
	movsx	dx,byte ptr [rcx+rax]
	mov	[r8+rax*2+64h],dx
	add	rax,1h
	cmp	rax,0Bh
	jnz	452EF0h

l0000000000452F05:
	add	rsp,20h
	pop	rbx
	ret

l0000000000452F0B:
	mov	ecx,80h
	call	475590h
	mov	rcx,[0000000000491CD0]                                 ; [rip+0003EDB4]
	xor	r8d,r8d
	xor	r9d,r9d
	mov	dword ptr [rax+8h],0h
	mov	qword ptr [rax+10h],+0h
	mov	qword ptr [rax+18h],+0h
	mov	byte ptr [rax+20h],0h
	lea	rdx,[rcx+10h]
	mov	[rax+22h],r8w
	mov	[rax+24h],r9w
	mov	qword ptr [rax+28h],+0h
	mov	qword ptr [rax+30h],+0h
	mov	[rax],rdx
	mov	qword ptr [rax+38h],+0h
	mov	qword ptr [rax+40h],+0h
	mov	qword ptr [rax+48h],+0h
	mov	qword ptr [rax+50h],+0h
	mov	dword ptr [rax+58h],0h
	mov	byte ptr [rax+5Ch],0h
	mov	byte ptr [rax+5Dh],0h
	mov	byte ptr [rax+5Eh],0h
	mov	byte ptr [rax+5Fh],0h
	mov	byte ptr [rax+60h],0h
	mov	byte ptr [rax+61h],0h
	mov	byte ptr [rax+62h],0h
	mov	byte ptr [rax+63h],0h
	mov	byte ptr [rax+7Ah],0h
	mov	[rbx+10h],rax
	jmp	452E75h
0000000000452FB2       90 90 90 90 90 90 90 90 90 90 90 90 90 90   ..............

;; fn0000000000452FC0: 0000000000452FC0
fn0000000000452FC0 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	xor	eax,eax
	test	r8,r8
	mov	[rcx+10h],rdx
	mov	rbx,rcx
	setnz	al
	xor	r8d,r8d
	xor	edx,edx
	mov	[rcx+8h],eax
	lea	rax,[0000000000496290]                                 ; [rip+000432AC]
	mov	[rcx],rax
	call	452E60h
	nop
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret
0000000000452FF4             48 89 C6 48 89 D9 E8 21 7D 01 00 48     H..H...!}..H
0000000000453000 89 F1 E8 A9 E5 FB FF 90 90 90 90 90 90 90 90 90 ................

;; fn0000000000453010: 0000000000453010
fn0000000000453010 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	xor	eax,eax
	test	r9,r9
	mov	qword ptr [rcx+10h],+0h
	mov	rbx,rcx
	setnz	al
	mov	[rcx+8h],eax
	lea	rax,[0000000000496290]                                 ; [rip+0004325D]
	mov	[rcx],rax
	call	452E60h
	nop
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret
0000000000453043          48 89 C6 48 89 D9 E8 D2 7C 01 00 48 89    H..H....|..H.
0000000000453050 F1 E8 5A E5 FB FF 90 90 90 90 90 90 90 90 90 90 ..Z.............

;; fn0000000000453060: 0000000000453060
fn0000000000453060 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	xor	eax,eax
	test	rdx,rdx
	mov	qword ptr [rcx+10h],+0h
	mov	rbx,rcx
	setnz	al
	xor	r8d,r8d
	xor	edx,edx
	mov	[rcx+8h],eax
	lea	rax,[0000000000496290]                                 ; [rip+00043208]
	mov	[rcx],rax
	call	452E60h
	nop
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret
0000000000453098                         48 89 C6 48 89 D9 E8 7D         H..H...}
00000000004530A0 7C 01 00 48 89 F1 E8 05 E5 FB FF 90 90 90 90 90 |..H............

;; fn00000000004530B0: 00000000004530B0
fn00000000004530B0 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	xor	eax,eax
	test	r8,r8
	mov	[rcx+10h],rdx
	mov	rbx,rcx
	setnz	al
	xor	r8d,r8d
	xor	edx,edx
	mov	[rcx+8h],eax
	lea	rax,[0000000000496290]                                 ; [rip+000431BC]
	mov	[rcx],rax
	call	452E60h
	nop
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret
00000000004530E4             48 89 C6 48 89 D9 E8 31 7C 01 00 48     H..H...1|..H
00000000004530F0 89 F1 E8 B9 E4 FB FF 90 90 90 90 90 90 90 90 90 ................

;; fn0000000000453100: 0000000000453100
fn0000000000453100 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	xor	eax,eax
	test	r9,r9
	mov	qword ptr [rcx+10h],+0h
	mov	rbx,rcx
	setnz	al
	mov	[rcx+8h],eax
	lea	rax,[0000000000496290]                                 ; [rip+0004316D]
	mov	[rcx],rax
	call	452E60h
	nop
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret
0000000000453133          48 89 C6 48 89 D9 E8 E2 7B 01 00 48 89    H..H....{..H.
0000000000453140 F1 E8 6A E4 FB FF 90 90 90 90 90 90 90 90 90 90 ..j.............

;; fn0000000000453150: 0000000000453150
fn0000000000453150 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	xor	eax,eax
	test	rdx,rdx
	mov	qword ptr [rcx+10h],+0h
	mov	rbx,rcx
	setnz	al
	xor	r8d,r8d
	xor	edx,edx
	mov	[rcx+8h],eax
	lea	rax,[0000000000496290]                                 ; [rip+00043118]
	mov	[rcx],rax
	call	452E60h
	nop
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret
0000000000453188                         48 89 C6 48 89 D9 E8 8D         H..H....
0000000000453190 7B 01 00 48 89 F1 E8 15 E4 FB FF 90 90 90 90 90 {..H............

;; fn00000000004531A0: 00000000004531A0
fn00000000004531A0 proc
	push	rbx
	sub	rsp,20h
	mov	rbx,rcx
	call	4531C0h
	mov	rcx,rbx
	add	rsp,20h
	pop	rbx
	jmp	475550h
00000000004531BA                               90 90 90 90 90 90           ......

;; fn00000000004531C0: 00000000004531C0
;;   Called from:
;;     00000000004531A8 (in fn00000000004531A0)
;;     0000000000465F72 (in fn0000000000465F60)
;;     0000000000465F9A (in fn0000000000465F90)
;;     0000000000465FAA (in fn0000000000465FA0)
fn00000000004531C0 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	mov	rax,[0000000000491BA0]                                 ; [rip+0003E9D3]
	mov	rbx,rcx
	add	rax,10h
	mov	[rcx],rax
	mov	rcx,[rcx+10h]
	test	rcx,rcx
	jz	4531E6h

l00000000004531E0:
	mov	rax,[rcx]
	call	qword ptr [rax+8h]

l00000000004531E6:
	mov	rcx,rbx
	add	rsp,28h
	pop	rbx
	pop	rsi
	jmp	46AD20h
00000000004531F4             48 89 C6 48 89 D9 E8 21 7B 01 00 48     H..H...!{..H
0000000000453200 89 F1 E8 A9 E3 FB FF 90 90 90 90 90 90 90 90 90 ................

;; fn0000000000453210: 0000000000453210
;;   Called from:
;;     0000000000453397 (in fn0000000000453370)
;;     00000000004533E6 (in fn00000000004533C0)
;;     000000000045343B (in fn0000000000453410)
;;     0000000000453487 (in fn0000000000453460)
;;     00000000004534D6 (in fn00000000004534B0)
;;     000000000045352B (in fn0000000000453500)
;;     0000000000465FE0 (in fn0000000000465FB0)
;;     000000000046603E (in fn0000000000465FB0)
;;     00000000004660B0 (in fn0000000000466080)
;;     000000000046610E (in fn0000000000466080)
;;     000000000046A5D2 (in fn00000000004699E0)
fn0000000000453210 proc
	push	rbx
	sub	rsp,20h
	mov	rax,[rcx+10h]
	mov	rbx,rcx
	test	rax,rax
	jz	4532BBh

l0000000000453225:
	mov	edx,2Eh
	mov	ecx,2Ch
	mov	qword ptr [rax+18h],+0h
	mov	[rax+22h],dx
	mov	rdx,[0000000000491710]                                 ; [rip+0003E4CE]
	mov	[rax+24h],cx
	lea	rcx,[000000000048E370]                                 ; [rip+0003B123]
	mov	qword ptr [rax+30h],+0h
	mov	qword ptr [rax+40h],+0h
	mov	qword ptr [rax+50h],+0h
	mov	edx,[rdx]
	mov	[rax+10h],rcx
	lea	rcx,[000000000048E372]                                 ; [rip+0003B100]
	mov	dword ptr [rax+58h],0h
	mov	[rax+28h],rcx
	mov	[rax+38h],rcx
	mov	[rax+48h],rcx
	mov	[rax+5Ch],edx
	mov	rax,[rbx+10h]
	mov	[rax+60h],edx
	mov	rax,[0000000000491720]                                 ; [rip+0003E48A]
	mov	r8,[rbx+10h]
	mov	rcx,[rax]
	xor	eax,eax
	nop

l00000000004532A0:
	movsx	dx,byte ptr [rcx+rax]
	mov	[r8+rax*2+64h],dx
	add	rax,1h
	cmp	rax,0Bh
	jnz	4532A0h

l00000000004532B5:
	add	rsp,20h
	pop	rbx
	ret

l00000000004532BB:
	mov	ecx,80h
	call	475590h
	mov	rcx,[0000000000491CE0]                                 ; [rip+0003EA14]
	xor	r8d,r8d
	xor	r9d,r9d
	mov	dword ptr [rax+8h],0h
	mov	qword ptr [rax+10h],+0h
	mov	qword ptr [rax+18h],+0h
	mov	byte ptr [rax+20h],0h
	lea	rdx,[rcx+10h]
	mov	[rax+22h],r8w
	mov	[rax+24h],r9w
	mov	qword ptr [rax+28h],+0h
	mov	qword ptr [rax+30h],+0h
	mov	[rax],rdx
	mov	qword ptr [rax+38h],+0h
	mov	qword ptr [rax+40h],+0h
	mov	qword ptr [rax+48h],+0h
	mov	qword ptr [rax+50h],+0h
	mov	dword ptr [rax+58h],0h
	mov	byte ptr [rax+5Ch],0h
	mov	byte ptr [rax+5Dh],0h
	mov	byte ptr [rax+5Eh],0h
	mov	byte ptr [rax+5Fh],0h
	mov	byte ptr [rax+60h],0h
	mov	byte ptr [rax+61h],0h
	mov	byte ptr [rax+62h],0h
	mov	byte ptr [rax+63h],0h
	mov	byte ptr [rax+7Ah],0h
	mov	[rbx+10h],rax
	jmp	453225h
0000000000453362       90 90 90 90 90 90 90 90 90 90 90 90 90 90   ..............

;; fn0000000000453370: 0000000000453370
fn0000000000453370 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	xor	eax,eax
	test	r8,r8
	mov	[rcx+10h],rdx
	mov	rbx,rcx
	setnz	al
	xor	r8d,r8d
	xor	edx,edx
	mov	[rcx+8h],eax
	lea	rax,[0000000000496310]                                 ; [rip+00042F7C]
	mov	[rcx],rax
	call	453210h
	nop
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret
00000000004533A4             48 89 C6 48 89 D9 E8 71 79 01 00 48     H..H...qy..H
00000000004533B0 89 F1 E8 F9 E1 FB FF 90 90 90 90 90 90 90 90 90 ................

;; fn00000000004533C0: 00000000004533C0
fn00000000004533C0 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	xor	eax,eax
	test	r9,r9
	mov	qword ptr [rcx+10h],+0h
	mov	rbx,rcx
	setnz	al
	mov	[rcx+8h],eax
	lea	rax,[0000000000496310]                                 ; [rip+00042F2D]
	mov	[rcx],rax
	call	453210h
	nop
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret
00000000004533F3          48 89 C6 48 89 D9 E8 22 79 01 00 48 89    H..H..."y..H.
0000000000453400 F1 E8 AA E1 FB FF 90 90 90 90 90 90 90 90 90 90 ................

;; fn0000000000453410: 0000000000453410
fn0000000000453410 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	xor	eax,eax
	test	rdx,rdx
	mov	qword ptr [rcx+10h],+0h
	mov	rbx,rcx
	setnz	al
	xor	r8d,r8d
	xor	edx,edx
	mov	[rcx+8h],eax
	lea	rax,[0000000000496310]                                 ; [rip+00042ED8]
	mov	[rcx],rax
	call	453210h
	nop
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret
0000000000453448                         48 89 C6 48 89 D9 E8 CD         H..H....
0000000000453450 78 01 00 48 89 F1 E8 55 E1 FB FF 90 90 90 90 90 x..H...U........

;; fn0000000000453460: 0000000000453460
fn0000000000453460 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	xor	eax,eax
	test	r8,r8
	mov	[rcx+10h],rdx
	mov	rbx,rcx
	setnz	al
	xor	r8d,r8d
	xor	edx,edx
	mov	[rcx+8h],eax
	lea	rax,[0000000000496310]                                 ; [rip+00042E8C]
	mov	[rcx],rax
	call	453210h
	nop
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret
0000000000453494             48 89 C6 48 89 D9 E8 81 78 01 00 48     H..H....x..H
00000000004534A0 89 F1 E8 09 E1 FB FF 90 90 90 90 90 90 90 90 90 ................

;; fn00000000004534B0: 00000000004534B0
fn00000000004534B0 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	xor	eax,eax
	test	r9,r9
	mov	qword ptr [rcx+10h],+0h
	mov	rbx,rcx
	setnz	al
	mov	[rcx+8h],eax
	lea	rax,[0000000000496310]                                 ; [rip+00042E3D]
	mov	[rcx],rax
	call	453210h
	nop
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret
00000000004534E3          48 89 C6 48 89 D9 E8 32 78 01 00 48 89    H..H...2x..H.
00000000004534F0 F1 E8 BA E0 FB FF 90 90 90 90 90 90 90 90 90 90 ................

;; fn0000000000453500: 0000000000453500
fn0000000000453500 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	xor	eax,eax
	test	rdx,rdx
	mov	qword ptr [rcx+10h],+0h
	mov	rbx,rcx
	setnz	al
	xor	r8d,r8d
	xor	edx,edx
	mov	[rcx+8h],eax
	lea	rax,[0000000000496310]                                 ; [rip+00042DE8]
	mov	[rcx],rax
	call	453210h
	nop
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret
0000000000453538                         48 89 C6 48 89 D9 E8 DD         H..H....
0000000000453540 77 01 00 48 89 F1 E8 65 E0 FB FF 90 90 90 90 90 w..H...e........

;; fn0000000000453550: 0000000000453550
fn0000000000453550 proc
	push	rbx
	sub	rsp,20h
	mov	rbx,rcx
	call	453570h
	mov	rcx,rbx
	add	rsp,20h
	pop	rbx
	jmp	475550h
000000000045356A                               90 90 90 90 90 90           ......

;; fn0000000000453570: 0000000000453570
;;   Called from:
;;     0000000000453558 (in fn0000000000453550)
;;     0000000000466162 (in fn0000000000466150)
;;     000000000046618A (in fn0000000000466180)
;;     000000000046619A (in fn0000000000466190)
fn0000000000453570 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	mov	rax,[0000000000491BB0]                                 ; [rip+0003E633]
	mov	rbx,rcx
	add	rax,10h
	mov	[rcx],rax
	mov	rcx,[rcx+10h]
	test	rcx,rcx
	jz	453596h

l0000000000453590:
	mov	rax,[rcx]
	call	qword ptr [rax+8h]

l0000000000453596:
	mov	rcx,rbx
	add	rsp,28h
	pop	rbx
	pop	rsi
	jmp	46AD20h
00000000004535A4             48 89 C6 48 89 D9 E8 71 77 01 00 48     H..H...qw..H
00000000004535B0 89 F1 E8 F9 DF FB FF 90 90 90 90 90 90 90 90 90 ................

;; fn00000000004535C0: 00000000004535C0
;;   Called from:
;;     000000000046F44A (in fn000000000046F420)
fn00000000004535C0 proc
	push	rbp
	mov	rbp,rsp
	sub	rsp,30h
	mov	[rbp+10h],rcx
	mov	[rbp+18h],rdx
	mov	[rbp+20h],r8
	mov	rdx,[rbp+18h]
	mov	rax,[rbp+10h]
	sub	rdx,rax
	mov	rax,rdx
	sar	rax,3h
	mov	[rbp-8h],rax
	cmp	qword ptr [rbp-8h],0h
	jz	453610h

l00000000004535F1:
	mov	rax,[rbp-8h]
	lea	rdx,[0000h+rax*8]
	mov	rax,[rbp+20h]
	mov	r8,rdx
	mov	rdx,[rbp+10h]
	mov	rcx,rax
	call	41BD28h

l0000000000453610:
	mov	rax,[rbp-8h]
	lea	rdx,[0000h+rax*8]
	mov	rax,[rbp+20h]
	add	rax,rdx
	add	rsp,30h
	pop	rbp
	ret
0000000000453629                            90 90 90 90 90 90 90          .......

;; fn0000000000453630: 0000000000453630
;;   Called from:
;;     0000000000453AE0 (in fn0000000000453AB0)
;;     0000000000453B61 (in fn0000000000453B10)
;;     0000000000453C14 (in fn0000000000453BE0)
;;     0000000000453C70 (in fn0000000000453C40)
;;     0000000000453CF1 (in fn0000000000453CA0)
;;     0000000000453DA4 (in fn0000000000453D70)
fn0000000000453630 proc
	push	rbx
	sub	rsp,20h
	mov	rax,[rcx+10h]
	test	rax,rax
	jz	4538A0h

l0000000000453642:
	lea	rdx,[000000000048E3B0]                                 ; [rip+0003AD67]
	lea	rcx,[000000000048E3C2]                                 ; [rip+0003AD72]
	lea	rbx,[000000000048E3C3]                                 ; [rip+0003AD6C]
	mov	[rax+10h],rdx
	mov	[rax+18h],rdx
	lea	rdx,[000000000048E3B9]                                 ; [rip+0003AD53]
	mov	[rax+30h],rcx
	mov	[rax+38h],rcx
	mov	[rax+20h],rdx
	mov	[rax+28h],rdx
	mov	rdx,rcx
	lea	rcx,[000000000048E3C6]                                 ; [rip+0003AD46]
	mov	[rax+40h],rbx
	lea	rbx,[000000000048E3C9]                                 ; [rip+0003AD3E]
	mov	[rax+50h],rdx
	lea	rdx,[000000000048E3D7]                                 ; [rip+0003AD41]
	mov	[rax+48h],rcx
	lea	rcx,[000000000048E3D0]                                 ; [rip+0003AD2F]
	mov	[rax+58h],rbx
	lea	rbx,[000000000048E3DF]                                 ; [rip+0003AD33]
	mov	[rax+68h],rdx
	lea	rdx,[000000000048E3F2]                                 ; [rip+0003AD3B]
	mov	[rax+60h],rcx
	lea	rcx,[000000000048E3E9]                                 ; [rip+0003AD27]
	mov	[rax+70h],rbx
	lea	rbx,[000000000048E3F9]                                 ; [rip+0003AD2C]
	mov	[rax+80h],rdx
	mov	[rax+78h],rcx
	lea	rcx,[000000000048E402]                                 ; [rip+0003AD23]
	lea	rdx,[000000000048E406]                                 ; [rip+0003AD20]
	mov	[rax+88h],rbx
	lea	rbx,[000000000048E40A]                                 ; [rip+0003AD16]
	mov	[rax+90h],rcx
	lea	rcx,[000000000048E40E]                                 ; [rip+0003AD0C]
	mov	[rax+98h],rdx
	mov	[rax+0A0h],rbx
	lea	rdx,[000000000048E412]                                 ; [rip+0003ACFB]
	lea	rbx,[000000000048E416]                                 ; [rip+0003ACF8]
	mov	[rax+0A8h],rcx
	lea	rcx,[000000000048E41A]                                 ; [rip+0003ACEE]
	mov	[rax+0B0h],rdx
	mov	[rax+0B8h],rbx
	lea	rdx,[000000000048E41E]                                 ; [rip+0003ACDD]
	mov	[rax+0C0h],rcx
	lea	rbx,[000000000048E426]                                 ; [rip+0003ACD7]
	lea	rcx,[000000000048E42F]                                 ; [rip+0003ACD9]
	mov	[rax+0C8h],rdx
	lea	rdx,[000000000048E435]                                 ; [rip+0003ACD1]
	mov	[rax+0D0h],rbx
	mov	[rax+0D8h],rcx
	lea	rbx,[000000000048E43B]                                 ; [rip+0003ACC2]
	lea	rcx,[000000000048E43F]                                 ; [rip+0003ACBF]
	mov	[rax+0E0h],rdx
	lea	rdx,[000000000048E444]                                 ; [rip+0003ACB6]
	mov	[rax+0E8h],rbx
	lea	rbx,[000000000048E449]                                 ; [rip+0003ACAD]
	mov	[rax+0F0h],rcx
	lea	rcx,[000000000048E450]                                 ; [rip+0003ACA6]
	mov	[rax+0F8h],rdx
	mov	[rax+100h],rbx
	lea	rdx,[000000000048E45A]                                 ; [rip+0003AC9B]
	lea	rbx,[000000000048E462]                                 ; [rip+0003AC9C]
	mov	[rax+108h],rcx
	lea	rcx,[000000000048E46B]                                 ; [rip+0003AC97]
	mov	[rax+110h],rdx
	mov	[rax+118h],rbx
	lea	rdx,[000000000048E474]                                 ; [rip+0003AC8B]
	mov	[rax+120h],rcx
	lea	rbx,[000000000048E478]                                 ; [rip+0003AC81]
	lea	rcx,[000000000048E47C]                                 ; [rip+0003AC7E]
	mov	[rax+128h],rdx
	lea	rdx,[000000000048E480]                                 ; [rip+0003AC74]
	mov	[rax+130h],rbx
	mov	[rax+138h],rcx
	lea	rbx,[000000000048E43B]                                 ; [rip+0003AC1A]
	lea	rcx,[000000000048E484]                                 ; [rip+0003AC5C]
	mov	[rax+140h],rdx
	lea	rdx,[000000000048E488]                                 ; [rip+0003AC52]
	mov	[rax+148h],rbx
	lea	rbx,[000000000048E48C]                                 ; [rip+0003AC48]
	mov	[rax+150h],rcx
	lea	rcx,[000000000048E490]                                 ; [rip+0003AC3E]
	mov	[rax+158h],rdx
	mov	[rax+160h],rbx
	lea	rdx,[000000000048E494]                                 ; [rip+0003AC2D]
	lea	rbx,[000000000048E498]                                 ; [rip+0003AC2A]
	mov	[rax+168h],rcx
	lea	rcx,[000000000048E49C]                                 ; [rip+0003AC20]
	mov	[rax+170h],rdx
	mov	[rax+178h],rbx
	mov	[rax+180h],rcx
	add	rsp,20h
	pop	rbx
	ret
0000000000453897                      66 0F 1F 84 00 00 00 00 00        f........

l00000000004538A0:
	mov	rbx,rcx
	mov	ecx,190h
	call	475590h
	mov	rdx,[0000000000491C80]                                 ; [rip+0003E3CC]
	mov	dword ptr [rax+8h],0h
	mov	qword ptr [rax+10h],+0h
	mov	qword ptr [rax+18h],+0h
	mov	qword ptr [rax+20h],+0h
	mov	qword ptr [rax+28h],+0h
	add	rdx,10h
	mov	qword ptr [rax+30h],+0h
	mov	qword ptr [rax+38h],+0h
	mov	[rax],rdx
	mov	qword ptr [rax+40h],+0h
	mov	qword ptr [rax+48h],+0h
	mov	qword ptr [rax+50h],+0h
	mov	qword ptr [rax+58h],+0h
	mov	qword ptr [rax+60h],+0h
	mov	qword ptr [rax+68h],+0h
	mov	qword ptr [rax+70h],+0h
	mov	qword ptr [rax+78h],+0h
	mov	qword ptr [rax+80h],+0h
	mov	qword ptr [rax+88h],+0h
	mov	qword ptr [rax+90h],+0h
	mov	qword ptr [rax+98h],+0h
	mov	qword ptr [rax+0A0h],+0h
	mov	qword ptr [rax+0A8h],+0h
	mov	qword ptr [rax+0B0h],+0h
	mov	qword ptr [rax+0B8h],+0h
	mov	qword ptr [rax+0C0h],+0h
	mov	qword ptr [rax+0C8h],+0h
	mov	qword ptr [rax+0D0h],+0h
	mov	qword ptr [rax+0D8h],+0h
	mov	qword ptr [rax+0E0h],+0h
	mov	qword ptr [rax+0E8h],+0h
	mov	qword ptr [rax+0F0h],+0h
	mov	qword ptr [rax+0F8h],+0h
	mov	qword ptr [rax+100h],+0h
	mov	qword ptr [rax+108h],+0h
	mov	qword ptr [rax+110h],+0h
	mov	qword ptr [rax+118h],+0h
	mov	qword ptr [rax+120h],+0h
	mov	qword ptr [rax+128h],+0h
	mov	qword ptr [rax+130h],+0h
	mov	qword ptr [rax+138h],+0h
	mov	qword ptr [rax+140h],+0h
	mov	qword ptr [rax+148h],+0h
	mov	qword ptr [rax+150h],+0h
	mov	qword ptr [rax+158h],+0h
	mov	qword ptr [rax+160h],+0h
	mov	qword ptr [rax+168h],+0h
	mov	qword ptr [rax+170h],+0h
	mov	qword ptr [rax+178h],+0h
	mov	qword ptr [rax+180h],+0h
	mov	byte ptr [rax+188h],0h
	mov	[rbx+10h],rax
	jmp	453642h
0000000000453AAD                                        90 90 90              ...

;; fn0000000000453AB0: 0000000000453AB0
;;   Called from:
;;     000000000046A137 (in fn00000000004699E0)
fn0000000000453AB0 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	xor	eax,eax
	test	r8,r8
	mov	rbx,rcx
	mov	[rcx+10h],rdx
	setnz	al
	mov	[rcx+8h],eax
	lea	rax,[0000000000496390]                                 ; [rip+000428C1]
	mov	[rcx],rax
	call	46AC40h
	xor	edx,edx
	mov	[rbx+20h],rax
	mov	rcx,rbx
	call	453630h
	nop
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret
0000000000453AED                                        48 89 C6              H..
0000000000453AF0 48 89 D9 E8 28 72 01 00 48 89 F1 E8 B0 DA FB FF H...(r..H.......
0000000000453B00 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 ................

;; fn0000000000453B10: 0000000000453B10
fn0000000000453B10 proc
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,20h
	xor	eax,eax
	test	r9,r9
	mov	rdi,r8
	mov	qword ptr [rcx+10h],+0h
	setnz	al
	mov	rbx,rcx
	mov	rbp,rdx
	mov	[rcx+8h],eax
	lea	rax,[0000000000496390]                                 ; [rip+00042853]
	mov	[rcx],rax
	call	46AC40h
	mov	rcx,rdi
	mov	rdx,rax
	mov	rsi,rax
	call	41BDB0h
	test	eax,eax
	jnz	453B72h

l0000000000453B57:
	mov	[rbx+20h],rsi

l0000000000453B5B:
	mov	rdx,rbp
	mov	rcx,rbx
	call	453630h
	nop
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret

l0000000000453B72:
	mov	rcx,rdi
	call	41BCB8h
	lea	r12,[rax+1h]
	mov	rcx,r12
	call	475560h
	mov	r8,r12
	mov	rdx,rdi
	mov	rcx,rax
	call	41BCC0h
	mov	[rbx+20h],rax
	jmp	453B5Bh
0000000000453B9A                               48 89 C6 48 89 D9           H..H..
0000000000453BA0 E8 7B 71 01 00 48 89 F1 E8 03 DA FB FF 48 89 C1 .{q..H.......H..
0000000000453BB0 E8 8B 1C 02 00 48 8B 4B 20 48 39 CE 74 0A 48 85 .....H.K H9.t.H.
0000000000453BC0 C9 74 05 E8 78 19 02 00 E8 93 24 02 00 48 89 C6 .t..x.....$..H..
0000000000453BD0 E8 9B 1E 02 00 EB C6 90 90 90 90 90 90 90 90 90 ................

;; fn0000000000453BE0: 0000000000453BE0
fn0000000000453BE0 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	xor	eax,eax
	test	rdx,rdx
	mov	rbx,rcx
	mov	qword ptr [rcx+10h],+0h
	setnz	al
	mov	[rcx+8h],eax
	lea	rax,[0000000000496390]                                 ; [rip+0004278D]
	mov	[rcx],rax
	call	46AC40h
	xor	edx,edx
	mov	[rbx+20h],rax
	mov	rcx,rbx
	call	453630h
	nop
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret
0000000000453C21    48 89 C6 48 89 D9 E8 F4 70 01 00 48 89 F1 E8  H..H....p..H...
0000000000453C30 7C D9 FB FF 90 90 90 90 90 90 90 90 90 90 90 90 |...............

;; fn0000000000453C40: 0000000000453C40
fn0000000000453C40 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	xor	eax,eax
	test	r8,r8
	mov	rbx,rcx
	mov	[rcx+10h],rdx
	setnz	al
	mov	[rcx+8h],eax
	lea	rax,[0000000000496390]                                 ; [rip+00042731]
	mov	[rcx],rax
	call	46AC40h
	xor	edx,edx
	mov	[rbx+20h],rax
	mov	rcx,rbx
	call	453630h
	nop
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret
0000000000453C7D                                        48 89 C6              H..
0000000000453C80 48 89 D9 E8 98 70 01 00 48 89 F1 E8 20 D9 FB FF H....p..H... ...
0000000000453C90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 ................

;; fn0000000000453CA0: 0000000000453CA0
fn0000000000453CA0 proc
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,20h
	xor	eax,eax
	test	r9,r9
	mov	rdi,r8
	mov	qword ptr [rcx+10h],+0h
	setnz	al
	mov	rbx,rcx
	mov	rbp,rdx
	mov	[rcx+8h],eax
	lea	rax,[0000000000496390]                                 ; [rip+000426C3]
	mov	[rcx],rax
	call	46AC40h
	mov	rcx,rdi
	mov	rdx,rax
	mov	rsi,rax
	call	41BDB0h
	test	eax,eax
	jnz	453D02h

l0000000000453CE7:
	mov	[rbx+20h],rsi

l0000000000453CEB:
	mov	rdx,rbp
	mov	rcx,rbx
	call	453630h
	nop
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret

l0000000000453D02:
	mov	rcx,rdi
	call	41BCB8h
	lea	r12,[rax+1h]
	mov	rcx,r12
	call	475560h
	mov	r8,r12
	mov	rdx,rdi
	mov	rcx,rax
	call	41BCC0h
	mov	[rbx+20h],rax
	jmp	453CEBh
0000000000453D2A                               48 89 C6 48 89 D9           H..H..
0000000000453D30 E8 EB 6F 01 00 48 89 F1 E8 73 D8 FB FF 48 89 C1 ..o..H...s...H..
0000000000453D40 E8 FB 1A 02 00 48 8B 4B 20 48 39 CE 74 0A 48 85 .....H.K H9.t.H.
0000000000453D50 C9 74 05 E8 E8 17 02 00 E8 03 23 02 00 48 89 C6 .t........#..H..
0000000000453D60 E8 0B 1D 02 00 EB C6 90 90 90 90 90 90 90 90 90 ................

;; fn0000000000453D70: 0000000000453D70
fn0000000000453D70 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	xor	eax,eax
	test	rdx,rdx
	mov	rbx,rcx
	mov	qword ptr [rcx+10h],+0h
	setnz	al
	mov	[rcx+8h],eax
	lea	rax,[0000000000496390]                                 ; [rip+000425FD]
	mov	[rcx],rax
	call	46AC40h
	xor	edx,edx
	mov	[rbx+20h],rax
	mov	rcx,rbx
	call	453630h
	nop
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret
0000000000453DB1    48 89 C6 48 89 D9 E8 64 6F 01 00 48 89 F1 E8  H..H...do..H...
0000000000453DC0 EC D7 FB FF 90 90 90 90 90 90 90 90 90 90 90 90 ................

;; fn0000000000453DD0: 0000000000453DD0
fn0000000000453DD0 proc
	push	rbx
	sub	rsp,20h
	mov	rbx,rcx
	call	453DF0h
	mov	rcx,rbx
	add	rsp,20h
	pop	rbx
	jmp	475550h
0000000000453DEA                               90 90 90 90 90 90           ......

;; fn0000000000453DF0: 0000000000453DF0
;;   Called from:
;;     0000000000453DD8 (in fn0000000000453DD0)
fn0000000000453DF0 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	lea	rax,[0000000000496390]                                 ; [rip+00042593]
	mov	rsi,[rcx+20h]
	mov	rbx,rcx
	mov	[rcx],rax
	call	46AC40h
	cmp	rsi,rax
	jz	453E1Eh

l0000000000453E11:
	test	rsi,rsi
	jz	453E1Eh

l0000000000453E16:
	mov	rcx,rsi
	call	475540h

l0000000000453E1E:
	mov	rcx,[rbx+10h]
	test	rcx,rcx
	jz	453E2Dh

l0000000000453E27:
	mov	rax,[rcx]
	call	qword ptr [rax+8h]

l0000000000453E2D:
	lea	rcx,[rbx+18h]
	call	46ACF0h
	mov	rcx,rbx
	add	rsp,28h
	pop	rbx
	pop	rsi
	jmp	46AD20h
0000000000453E44             48 89 C6 48 89 D9 E8 D1 6E 01 00 48     H..H....n..H
0000000000453E50 89 F1 E8 59 D7 FB FF 90 90 90 90 90 90 90 90 90 ...Y............

;; fn0000000000453E60: 0000000000453E60
fn0000000000453E60 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	lea	rax,[0000000000496390]                                 ; [rip+00042523]
	mov	rsi,[rcx+20h]
	mov	rbx,rcx
	mov	[rcx],rax
	call	46AC40h
	cmp	rsi,rax
	jz	453E8Eh

l0000000000453E81:
	test	rsi,rsi
	jz	453E8Eh

l0000000000453E86:
	mov	rcx,rsi
	call	475540h

l0000000000453E8E:
	mov	rcx,[rbx+10h]
	test	rcx,rcx
	jz	453E9Dh

l0000000000453E97:
	mov	rax,[rcx]
	call	qword ptr [rax+8h]

l0000000000453E9D:
	lea	rcx,[rbx+18h]
	call	46ACF0h
	mov	rcx,rbx
	add	rsp,28h
	pop	rbx
	pop	rsi
	jmp	46AD20h
0000000000453EB4             48 89 C6 48 89 D9 E8 61 6E 01 00 48     H..H...an..H
0000000000453EC0 89 F1 E8 E9 D6 FB FF 90 90 90 90 90 90 90 90 90 ................

;; fn0000000000453ED0: 0000000000453ED0
;;   Called from:
;;     0000000000454380 (in fn0000000000454350)
;;     0000000000454401 (in fn00000000004543B0)
;;     00000000004544B4 (in fn0000000000454480)
;;     0000000000454510 (in fn00000000004544E0)
;;     0000000000454591 (in fn0000000000454540)
;;     0000000000454644 (in fn0000000000454610)
fn0000000000453ED0 proc
	push	rbx
	sub	rsp,20h
	mov	rax,[rcx+10h]
	test	rax,rax
	jz	454140h

l0000000000453EE2:
	lea	rdx,[000000000048E4A0]                                 ; [rip+0003A5B7]
	lea	rcx,[000000000048E4C4]                                 ; [rip+0003A5D4]
	lea	rbx,[000000000048E4C6]                                 ; [rip+0003A5CF]
	mov	[rax+10h],rdx
	mov	[rax+18h],rdx
	lea	rdx,[000000000048E4B2]                                 ; [rip+0003A5AC]
	mov	[rax+30h],rcx
	mov	[rax+38h],rcx
	mov	[rax+20h],rdx
	mov	[rax+28h],rdx
	mov	rdx,rcx
	lea	rcx,[000000000048E4CC]                                 ; [rip+0003A5AC]
	mov	[rax+40h],rbx
	lea	rbx,[000000000048E4D2]                                 ; [rip+0003A5A7]
	mov	[rax+50h],rdx
	lea	rdx,[000000000048E4EE]                                 ; [rip+0003A5B8]
	mov	[rax+48h],rcx
	lea	rcx,[000000000048E4E0]                                 ; [rip+0003A59F]
	mov	[rax+58h],rbx
	lea	rbx,[000000000048E4FE]                                 ; [rip+0003A5B2]
	mov	[rax+68h],rdx
	lea	rdx,[000000000048E524]                                 ; [rip+0003A5CD]
	mov	[rax+60h],rcx
	lea	rcx,[000000000048E512]                                 ; [rip+0003A5B0]
	mov	[rax+70h],rbx
	lea	rbx,[000000000048E532]                                 ; [rip+0003A5C5]
	mov	[rax+80h],rdx
	mov	[rax+78h],rcx
	lea	rcx,[000000000048E544]                                 ; [rip+0003A5C5]
	lea	rdx,[000000000048E54C]                                 ; [rip+0003A5C6]
	mov	[rax+88h],rbx
	lea	rbx,[000000000048E554]                                 ; [rip+0003A5C0]
	mov	[rax+90h],rcx
	lea	rcx,[000000000048E55C]                                 ; [rip+0003A5BA]
	mov	[rax+98h],rdx
	mov	[rax+0A0h],rbx
	lea	rdx,[000000000048E564]                                 ; [rip+0003A5AD]
	lea	rbx,[000000000048E56C]                                 ; [rip+0003A5AE]
	mov	[rax+0A8h],rcx
	lea	rcx,[000000000048E574]                                 ; [rip+0003A5A8]
	mov	[rax+0B0h],rdx
	mov	[rax+0B8h],rbx
	lea	rdx,[000000000048E57C]                                 ; [rip+0003A59B]
	mov	[rax+0C0h],rcx
	lea	rbx,[000000000048E58C]                                 ; [rip+0003A59D]
	lea	rcx,[000000000048E59E]                                 ; [rip+0003A5A8]
	mov	[rax+0C8h],rdx
	lea	rdx,[000000000048E5AA]                                 ; [rip+0003A5A6]
	mov	[rax+0D0h],rbx
	mov	[rax+0D8h],rcx
	lea	rbx,[000000000048E5B6]                                 ; [rip+0003A59D]
	lea	rcx,[000000000048E5BE]                                 ; [rip+0003A59E]
	mov	[rax+0E0h],rdx
	lea	rdx,[000000000048E5C8]                                 ; [rip+0003A59A]
	mov	[rax+0E8h],rbx
	lea	rbx,[000000000048E5D2]                                 ; [rip+0003A596]
	mov	[rax+0F0h],rcx
	lea	rcx,[000000000048E5E0]                                 ; [rip+0003A596]
	mov	[rax+0F8h],rdx
	mov	[rax+100h],rbx
	lea	rdx,[000000000048E5F4]                                 ; [rip+0003A595]
	lea	rbx,[000000000048E604]                                 ; [rip+0003A59E]
	mov	[rax+108h],rcx
	lea	rcx,[000000000048E616]                                 ; [rip+0003A5A2]
	mov	[rax+110h],rdx
	mov	[rax+118h],rbx
	lea	rdx,[000000000048E628]                                 ; [rip+0003A59F]
	mov	[rax+120h],rcx
	lea	rbx,[000000000048E630]                                 ; [rip+0003A599]
	lea	rcx,[000000000048E638]                                 ; [rip+0003A59A]
	mov	[rax+128h],rdx
	lea	rdx,[000000000048E640]                                 ; [rip+0003A594]
	mov	[rax+130h],rbx
	mov	[rax+138h],rcx
	lea	rbx,[000000000048E5B6]                                 ; [rip+0003A4F5]
	lea	rcx,[000000000048E648]                                 ; [rip+0003A580]
	mov	[rax+140h],rdx
	lea	rdx,[000000000048E650]                                 ; [rip+0003A57A]
	mov	[rax+148h],rbx
	lea	rbx,[000000000048E658]                                 ; [rip+0003A574]
	mov	[rax+150h],rcx
	lea	rcx,[000000000048E660]                                 ; [rip+0003A56E]
	mov	[rax+158h],rdx
	mov	[rax+160h],rbx
	lea	rdx,[000000000048E668]                                 ; [rip+0003A561]
	lea	rbx,[000000000048E670]                                 ; [rip+0003A562]
	mov	[rax+168h],rcx
	lea	rcx,[000000000048E678]                                 ; [rip+0003A55C]
	mov	[rax+170h],rdx
	mov	[rax+178h],rbx
	mov	[rax+180h],rcx
	add	rsp,20h
	pop	rbx
	ret
0000000000454137                      66 0F 1F 84 00 00 00 00 00        f........

l0000000000454140:
	mov	rbx,rcx
	mov	ecx,190h
	call	475590h
	mov	rdx,[0000000000491C90]                                 ; [rip+0003DB3C]
	mov	dword ptr [rax+8h],0h
	mov	qword ptr [rax+10h],+0h
	mov	qword ptr [rax+18h],+0h
	mov	qword ptr [rax+20h],+0h
	mov	qword ptr [rax+28h],+0h
	add	rdx,10h
	mov	qword ptr [rax+30h],+0h
	mov	qword ptr [rax+38h],+0h
	mov	[rax],rdx
	mov	qword ptr [rax+40h],+0h
	mov	qword ptr [rax+48h],+0h
	mov	qword ptr [rax+50h],+0h
	mov	qword ptr [rax+58h],+0h
	mov	qword ptr [rax+60h],+0h
	mov	qword ptr [rax+68h],+0h
	mov	qword ptr [rax+70h],+0h
	mov	qword ptr [rax+78h],+0h
	mov	qword ptr [rax+80h],+0h
	mov	qword ptr [rax+88h],+0h
	mov	qword ptr [rax+90h],+0h
	mov	qword ptr [rax+98h],+0h
	mov	qword ptr [rax+0A0h],+0h
	mov	qword ptr [rax+0A8h],+0h
	mov	qword ptr [rax+0B0h],+0h
	mov	qword ptr [rax+0B8h],+0h
	mov	qword ptr [rax+0C0h],+0h
	mov	qword ptr [rax+0C8h],+0h
	mov	qword ptr [rax+0D0h],+0h
	mov	qword ptr [rax+0D8h],+0h
	mov	qword ptr [rax+0E0h],+0h
	mov	qword ptr [rax+0E8h],+0h
	mov	qword ptr [rax+0F0h],+0h
	mov	qword ptr [rax+0F8h],+0h
	mov	qword ptr [rax+100h],+0h
	mov	qword ptr [rax+108h],+0h
	mov	qword ptr [rax+110h],+0h
	mov	qword ptr [rax+118h],+0h
	mov	qword ptr [rax+120h],+0h
	mov	qword ptr [rax+128h],+0h
	mov	qword ptr [rax+130h],+0h
	mov	qword ptr [rax+138h],+0h
	mov	qword ptr [rax+140h],+0h
	mov	qword ptr [rax+148h],+0h
	mov	qword ptr [rax+150h],+0h
	mov	qword ptr [rax+158h],+0h
	mov	qword ptr [rax+160h],+0h
	mov	qword ptr [rax+168h],+0h
	mov	qword ptr [rax+170h],+0h
	mov	qword ptr [rax+178h],+0h
	mov	qword ptr [rax+180h],+0h
	mov	byte ptr [rax+188h],0h
	mov	[rbx+10h],rax
	jmp	453EE2h
000000000045434D                                        90 90 90              ...

;; fn0000000000454350: 0000000000454350
;;   Called from:
;;     000000000046A88D (in fn00000000004699E0)
fn0000000000454350 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	xor	eax,eax
	test	r8,r8
	mov	rbx,rcx
	mov	[rcx+10h],rdx
	setnz	al
	mov	[rcx+8h],eax
	lea	rax,[00000000004963B0]                                 ; [rip+00042041]
	mov	[rcx],rax
	call	46AC40h
	xor	edx,edx
	mov	[rbx+20h],rax
	mov	rcx,rbx
	call	453ED0h
	nop
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret
000000000045438D                                        48 89 C6              H..
0000000000454390 48 89 D9 E8 88 69 01 00 48 89 F1 E8 10 D2 FB FF H....i..H.......
00000000004543A0 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 ................

;; fn00000000004543B0: 00000000004543B0
fn00000000004543B0 proc
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,20h
	xor	eax,eax
	test	r9,r9
	mov	rdi,r8
	mov	qword ptr [rcx+10h],+0h
	setnz	al
	mov	rbx,rcx
	mov	rbp,rdx
	mov	[rcx+8h],eax
	lea	rax,[00000000004963B0]                                 ; [rip+00041FD3]
	mov	[rcx],rax
	call	46AC40h
	mov	rcx,rdi
	mov	rdx,rax
	mov	rsi,rax
	call	41BDB0h
	test	eax,eax
	jnz	454412h

l00000000004543F7:
	mov	[rbx+20h],rsi

l00000000004543FB:
	mov	rdx,rbp
	mov	rcx,rbx
	call	453ED0h
	nop
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret

l0000000000454412:
	mov	rcx,rdi
	call	41BCB8h
	lea	r12,[rax+1h]
	mov	rcx,r12
	call	475560h
	mov	r8,r12
	mov	rdx,rdi
	mov	rcx,rax
	call	41BCC0h
	mov	[rbx+20h],rax
	jmp	4543FBh
000000000045443A                               48 89 C6 48 89 D9           H..H..
0000000000454440 E8 DB 68 01 00 48 89 F1 E8 63 D1 FB FF 48 89 C1 ..h..H...c...H..
0000000000454450 E8 EB 13 02 00 48 8B 4B 20 48 39 CE 74 0A 48 85 .....H.K H9.t.H.
0000000000454460 C9 74 05 E8 D8 10 02 00 E8 F3 1B 02 00 48 89 C6 .t...........H..
0000000000454470 E8 FB 15 02 00 EB C6 90 90 90 90 90 90 90 90 90 ................

;; fn0000000000454480: 0000000000454480
fn0000000000454480 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	xor	eax,eax
	test	rdx,rdx
	mov	rbx,rcx
	mov	qword ptr [rcx+10h],+0h
	setnz	al
	mov	[rcx+8h],eax
	lea	rax,[00000000004963B0]                                 ; [rip+00041F0D]
	mov	[rcx],rax
	call	46AC40h
	xor	edx,edx
	mov	[rbx+20h],rax
	mov	rcx,rbx
	call	453ED0h
	nop
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret
00000000004544C1    48 89 C6 48 89 D9 E8 54 68 01 00 48 89 F1 E8  H..H...Th..H...
00000000004544D0 DC D0 FB FF 90 90 90 90 90 90 90 90 90 90 90 90 ................

;; fn00000000004544E0: 00000000004544E0
fn00000000004544E0 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	xor	eax,eax
	test	r8,r8
	mov	rbx,rcx
	mov	[rcx+10h],rdx
	setnz	al
	mov	[rcx+8h],eax
	lea	rax,[00000000004963B0]                                 ; [rip+00041EB1]
	mov	[rcx],rax
	call	46AC40h
	xor	edx,edx
	mov	[rbx+20h],rax
	mov	rcx,rbx
	call	453ED0h
	nop
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret
000000000045451D                                        48 89 C6              H..
0000000000454520 48 89 D9 E8 F8 67 01 00 48 89 F1 E8 80 D0 FB FF H....g..H.......
0000000000454530 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 ................

;; fn0000000000454540: 0000000000454540
fn0000000000454540 proc
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,20h
	xor	eax,eax
	test	r9,r9
	mov	rdi,r8
	mov	qword ptr [rcx+10h],+0h
	setnz	al
	mov	rbx,rcx
	mov	rbp,rdx
	mov	[rcx+8h],eax
	lea	rax,[00000000004963B0]                                 ; [rip+00041E43]
	mov	[rcx],rax
	call	46AC40h
	mov	rcx,rdi
	mov	rdx,rax
	mov	rsi,rax
	call	41BDB0h
	test	eax,eax
	jnz	4545A2h

l0000000000454587:
	mov	[rbx+20h],rsi

l000000000045458B:
	mov	rdx,rbp
	mov	rcx,rbx
	call	453ED0h
	nop
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret

l00000000004545A2:
	mov	rcx,rdi
	call	41BCB8h
	lea	r12,[rax+1h]
	mov	rcx,r12
	call	475560h
	mov	r8,r12
	mov	rdx,rdi
	mov	rcx,rax
	call	41BCC0h
	mov	[rbx+20h],rax
	jmp	45458Bh
00000000004545CA                               48 89 C6 48 89 D9           H..H..
00000000004545D0 E8 4B 67 01 00 48 89 F1 E8 D3 CF FB FF 48 89 C1 .Kg..H.......H..
00000000004545E0 E8 5B 12 02 00 48 8B 4B 20 48 39 CE 74 0A 48 85 .[...H.K H9.t.H.
00000000004545F0 C9 74 05 E8 48 0F 02 00 E8 63 1A 02 00 48 89 C6 .t..H....c...H..
0000000000454600 E8 6B 14 02 00 EB C6 90 90 90 90 90 90 90 90 90 .k..............

;; fn0000000000454610: 0000000000454610
fn0000000000454610 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	xor	eax,eax
	test	rdx,rdx
	mov	rbx,rcx
	mov	qword ptr [rcx+10h],+0h
	setnz	al
	mov	[rcx+8h],eax
	lea	rax,[00000000004963B0]                                 ; [rip+00041D7D]
	mov	[rcx],rax
	call	46AC40h
	xor	edx,edx
	mov	[rbx+20h],rax
	mov	rcx,rbx
	call	453ED0h
	nop
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret
0000000000454651    48 89 C6 48 89 D9 E8 C4 66 01 00 48 89 F1 E8  H..H....f..H...
0000000000454660 4C CF FB FF 90 90 90 90 90 90 90 90 90 90 90 90 L...............

;; fn0000000000454670: 0000000000454670
fn0000000000454670 proc
	push	rbx
	sub	rsp,20h
	mov	rbx,rcx
	call	454690h
	mov	rcx,rbx
	add	rsp,20h
	pop	rbx
	jmp	475550h
000000000045468A                               90 90 90 90 90 90           ......

;; fn0000000000454690: 0000000000454690
;;   Called from:
;;     0000000000454678 (in fn0000000000454670)
fn0000000000454690 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	lea	rax,[00000000004963B0]                                 ; [rip+00041D13]
	mov	rsi,[rcx+20h]
	mov	rbx,rcx
	mov	[rcx],rax
	call	46AC40h
	cmp	rsi,rax
	jz	4546BEh

l00000000004546B1:
	test	rsi,rsi
	jz	4546BEh

l00000000004546B6:
	mov	rcx,rsi
	call	475540h

l00000000004546BE:
	mov	rcx,[rbx+10h]
	test	rcx,rcx
	jz	4546CDh

l00000000004546C7:
	mov	rax,[rcx]
	call	qword ptr [rax+8h]

l00000000004546CD:
	lea	rcx,[rbx+18h]
	call	46ACF0h
	mov	rcx,rbx
	add	rsp,28h
	pop	rbx
	pop	rsi
	jmp	46AD20h
00000000004546E4             48 89 C6 48 89 D9 E8 31 66 01 00 48     H..H...1f..H
00000000004546F0 89 F1 E8 B9 CE FB FF 90 90 90 90 90 90 90 90 90 ................

;; fn0000000000454700: 0000000000454700
fn0000000000454700 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	lea	rax,[00000000004963B0]                                 ; [rip+00041CA3]
	mov	rsi,[rcx+20h]
	mov	rbx,rcx
	mov	[rcx],rax
	call	46AC40h
	cmp	rsi,rax
	jz	45472Eh

l0000000000454721:
	test	rsi,rsi
	jz	45472Eh

l0000000000454726:
	mov	rcx,rsi
	call	475540h

l000000000045472E:
	mov	rcx,[rbx+10h]
	test	rcx,rcx
	jz	45473Dh

l0000000000454737:
	mov	rax,[rcx]
	call	qword ptr [rax+8h]

l000000000045473D:
	lea	rcx,[rbx+18h]
	call	46ACF0h
	mov	rcx,rbx
	add	rsp,28h
	pop	rbx
	pop	rsi
	jmp	46AD20h
0000000000454754             48 89 C6 48 89 D9 E8 C1 65 01 00 48     H..H....e..H
0000000000454760 89 F1 E8 49 CE FB FF 90 90 90 90 90 90 90 90 90 ...I............

;; fn0000000000454770: 0000000000454770
;;   Called from:
;;     0000000000455258 (in fn0000000000455250)
;;     00000000004552F8 (in fn00000000004552F0)
;;     0000000000455358 (in fn0000000000455350)
;;     00000000004650A8 (in fn00000000004650A0)
;;     0000000000470BD2 (in fn0000000000470BA0)
;;     0000000000470DDE (in fn0000000000470DA0)
fn0000000000454770 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	lea	rax,[00000000004963D0]                                 ; [rip+00041C53]
	mov	rbx,rcx
	lea	rcx,[rcx+8h]
	mov	[rcx-8h],rax
	call	451F40h
	nop
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret
0000000000454795                48 89 C6 48 89 D9 E8 50 A9 01 00      H..H...P...
00000000004547A0 48 89 F1 E8 08 CE FB FF 90 90 90 90 90 90 90 90 H...............

;; fn00000000004547B0: 00000000004547B0
fn00000000004547B0 proc
	push	rbx
	sub	rsp,20h
	mov	rbx,rcx
	call	4547D0h
	mov	rcx,rbx
	add	rsp,20h
	pop	rbx
	jmp	475550h
00000000004547CA                               90 90 90 90 90 90           ......

;; fn00000000004547D0: 00000000004547D0
;;   Called from:
;;     00000000004547B8 (in fn00000000004547B0)
;;     0000000000455282 (in fn0000000000455270)
;;     00000000004552AA (in fn00000000004552A0)
;;     00000000004552C2 (in fn00000000004552B0)
;;     00000000004552EA (in fn00000000004552E0)
;;     0000000000455322 (in fn0000000000455310)
;;     000000000045534A (in fn0000000000455340)
;;     0000000000455382 (in fn0000000000455370)
;;     00000000004553AA (in fn00000000004553A0)
;;     00000000004650D2 (in fn00000000004650C0)
;;     00000000004650FA (in fn00000000004650F0)
fn00000000004547D0 proc
	push	rbx
	sub	rsp,30h
	lea	rax,[00000000004963D0]                                 ; [rip+00041BF4]
	mov	edx,0FFFFFFFFh
	mov	rbx,rcx
	mov	[rcx],rax
	mov	rax,[rcx+8h]
	lock
	xadd	[rax-8h],edx
	test	edx,edx
	jle	454803h

l00000000004547F4:
	mov	rcx,rbx
	call	46F0F0h
	nop
	add	rsp,30h
	pop	rbx
	ret

l0000000000454803:
	lea	rcx,[rax-18h]
	lea	rdx,[rsp+2Fh]
	call	450A50h
	mov	rcx,rbx
	call	46F0F0h
	nop
	add	rsp,30h
	pop	rbx
	ret

;; fn0000000000454820: 0000000000454820
;;   Called from:
;;     0000000000470C62 (in fn0000000000470C30)
fn0000000000454820 proc
	push	rbx
	sub	rsp,20h
	mov	rbx,rcx
	call	45F390h
	lea	rax,[0000000000496410]                                 ; [rip+00041BDC]
	mov	[rbx],rax
	add	rsp,20h
	pop	rbx
	ret
000000000045483D                                        90 90 90              ...

;; fn0000000000454840: 0000000000454840
fn0000000000454840 proc
	push	rbx
	sub	rsp,20h
	lea	rax,[0000000000496410]                                 ; [rip+00041BC4]
	mov	rbx,rcx
	mov	[rcx],rax
	call	45F3F0h
	mov	rcx,rbx
	add	rsp,20h
	pop	rbx
	jmp	475550h
0000000000454864             90 90 90 90 90 90 90 90 90 90 90 90     ............

;; fn0000000000454870: 0000000000454870
fn0000000000454870 proc
	lea	rax,[0000000000496410]                                 ; [rip+00041B99]
	mov	[rcx],rax
	jmp	45F3F0h
000000000045487F                                              90                .

;; fn0000000000454880: 0000000000454880
;;   Called from:
;;     0000000000470CDA (in fn0000000000470CC0)
fn0000000000454880 proc
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,40h
	lea	rsi,[rsp+30h]
	mov	edi,edx
	lea	r8,[rsp+2Eh]
	lea	rdx,[000000000048E130]                                 ; [rip+00039896]
	mov	rbx,rcx
	mov	rcx,rsi
	call	451EA0h
	mov	rdx,rsi
	mov	rcx,rbx
	call	45F390h
	mov	rax,[rsp+30h]
	mov	edx,0FFFFFFFFh
	lock
	xadd	[rax-8h],edx
	test	edx,edx
	jle	4548E0h

l00000000004548C3:
	lea	rax,[0000000000496450]                                 ; [rip+00041B86]
	mov	[rbx+10h],edi
	mov	[rbx],rax
	add	rsp,40h
	pop	rbx
	pop	rsi
	pop	rdi
	ret
00000000004548D8                         0F 1F 84 00 00 00 00 00         ........

l00000000004548E0:
	lea	rdx,[rsp+2Fh]
	lea	rcx,[rax-18h]
	call	450A50h
	jmp	4548C3h
00000000004548F0 48 89 C3 48 8B 44 24 30 48 8D 54 24 2F 48 8D 48 H..H.D$0H.T$/H.H
0000000000454900 E8 E8 5A C1 FF FF 48 89 D9 E8 A2 CC FB FF 90 90 ..Z...H.........

;; fn0000000000454910: 0000000000454910
fn0000000000454910 proc
	push	rbx
	sub	rsp,20h
	lea	rax,[0000000000496450]                                 ; [rip+00041B34]
	mov	rbx,rcx
	mov	[rcx],rax
	call	45F3F0h
	mov	rcx,rbx
	add	rsp,20h
	pop	rbx
	jmp	475550h
0000000000454934             90 90 90 90 90 90 90 90 90 90 90 90     ............

;; fn0000000000454940: 0000000000454940
fn0000000000454940 proc
	lea	rax,[0000000000496450]                                 ; [rip+00041B09]
	mov	[rcx],rax
	jmp	45F3F0h
000000000045494F                                              90                .

;; fn0000000000454950: 0000000000454950
;;   Called from:
;;     0000000000401D58 (in fn0000000000401530)
;;     0000000000401E15 (in fn0000000000401530)
fn0000000000454950 proc
	push	rbp
	mov	rbp,rsp
	sub	rsp,60h
	mov	[rbp+10h],rcx
	mov	rcx,[rbp+10h]
	call	4690A0h
	mov	[rbp-20h],rax
	lea	rax,[rbp-20h]
	mov	rdx,rax
	mov	rcx,[rbp+10h]
	call	469260h
	mov	[rbp-10h],rax
	lea	rax,[rbp-10h]
	mov	rcx,rax
	call	469060h
	mov	[rbp-30h],rax
	lea	rax,[rbp-20h]
	mov	rcx,rax
	call	42BB60h
	mov	[rbp-40h],rax
	lea	rax,[rbp-30h]
	mov	rcx,rax
	call	42BB20h
	mov	[rbp-38h],eax
	lea	rax,[rbp-40h]
	mov	edx,0h
	mov	rcx,rax
	call	41C000h
	nop
	add	rsp,60h
	pop	rbp
	ret
00000000004549C4             90 90 90 90 90 90 90 90 90 90 90 90     ............

;; fn00000000004549D0: 00000000004549D0
;;   Called from:
;;     00000000004722FB (in fn00000000004722E0)
fn00000000004549D0 proc
	push	rbp
	mov	rbp,rsp
	mov	[rbp+10h],rcx
	mov	[rbp+18h],rdx
	pop	rbp
	ret
00000000004549DE                                           90 90               ..

;; fn00000000004549E0: 00000000004549E0
;;   Called from:
;;     000000000047235B (in fn0000000000472340)
fn00000000004549E0 proc
	push	rbp
	mov	rbp,rsp
	mov	[rbp+10h],rcx
	mov	[rbp+18h],rdx
	pop	rbp
	ret
00000000004549EE                                           90 90               ..

;; fn00000000004549F0: 00000000004549F0
;;   Called from:
;;     000000000046B06A (in fn000000000046B030)
;;     000000000046B25A (in fn000000000046B220)
;;     000000000046B439 (in fn000000000046B410)
fn00000000004549F0 proc
	push	rbp
	mov	rbp,rsp
	sub	rsp,20h
	mov	[rbp+10h],rcx
	mov	[rbp+18h],rdx
	cmp	qword ptr [rbp+18h],0h
	jz	454A19h

l0000000000454A07:
	mov	rax,[rbp+10h]
	mov	rdx,[rbp+18h]
	mov	rcx,rax
	call	464E00h
	jmp	454A1Eh

l0000000000454A19:
	mov	eax,0h

l0000000000454A1E:
	add	rsp,20h
	pop	rbp
	ret
0000000000454A24             90 90 90 90 90 90 90 90 90 90 90 90     ............

;; fn0000000000454A30: 0000000000454A30
;;   Called from:
;;     0000000000454AF3 (in fn0000000000454AE0)
fn0000000000454A30 proc
	push	rbp
	mov	rbp,rsp
	sub	rsp,20h
	mov	[rbp+10h],rcx
	mov	rcx,[rbp+10h]
	call	448D30h
	mov	rax,[rbp+10h]
	mov	qword ptr [rax],+0h
	mov	rax,[rbp+10h]
	mov	qword ptr [rax+8h],+0h
	mov	rax,[rbp+10h]
	mov	qword ptr [rax+10h],+0h
	add	rsp,20h
	pop	rbp
	ret
0000000000454A6E                                           90 90               ..

;; fn0000000000454A70: 0000000000454A70
;;   Called from:
;;     0000000000454B48 (in fn0000000000454B00)
fn0000000000454A70 proc
	push	rbp
	mov	rbp,rsp
	sub	rsp,20h
	mov	[rbp+10h],rcx
	mov	rcx,[rbp+10h]
	call	448D50h
	nop
	add	rsp,20h
	pop	rbp
	ret
0000000000454A8C                                     90 90 90 90             ....

;; fn0000000000454A90: 0000000000454A90
;;   Called from:
;;     0000000000454B3C (in fn0000000000454B00)
;;     000000000046B14B (in fn000000000046B030)
;;     000000000046B33B (in fn000000000046B220)
;;     000000000046B5A3 (in fn000000000046B4B0)
fn0000000000454A90 proc
	push	rbp
	mov	rbp,rsp
	sub	rsp,20h
	mov	[rbp+10h],rcx
	mov	[rbp+18h],rdx
	mov	[rbp+20h],r8
	cmp	qword ptr [rbp+18h],0h
	jz	454AC3h

l0000000000454AAB:
	mov	rax,[rbp+10h]
	mov	rcx,[rbp+20h]
	mov	rdx,[rbp+18h]
	mov	r8,rcx
	mov	rcx,rax
	call	464CF0h
	nop

l0000000000454AC3:
	add	rsp,20h
	pop	rbp
	ret
0000000000454AC9                            90 90 90 90 90 90 90          .......

;; fn0000000000454AD0: 0000000000454AD0
;;   Called from:
;;     000000000046B0C0 (in fn000000000046B030)
;;     000000000046B0F9 (in fn000000000046B030)
;;     000000000046B2B0 (in fn000000000046B220)
;;     000000000046B2E9 (in fn000000000046B220)
;;     000000000046B449 (in fn000000000046B410)
;;     000000000046B551 (in fn000000000046B4B0)
;;     000000000046B6C3 (in fn000000000046B6B0)
fn0000000000454AD0 proc
	push	rbp
	mov	rbp,rsp
	mov	[rbp+10h],rcx
	mov	rax,[rbp+10h]
	pop	rbp
	ret
0000000000454ADE                                           90 90               ..

;; fn0000000000454AE0: 0000000000454AE0
;;   Called from:
;;     000000000046B6A3 (in fn000000000046B690)
fn0000000000454AE0 proc
	push	rbp
	mov	rbp,rsp
	sub	rsp,20h
	mov	[rbp+10h],rcx
	mov	rax,[rbp+10h]
	mov	rcx,rax
	call	454A30h
	nop
	add	rsp,20h
	pop	rbp
	ret
0000000000454AFF                                              90                .

;; fn0000000000454B00: 0000000000454B00
;;   Called from:
;;     000000000046B6EC (in fn000000000046B6B0)
fn0000000000454B00 proc
	push	rbp
	mov	rbp,rsp
	sub	rsp,20h
	mov	[rbp+10h],rcx
	mov	rax,[rbp+10h]
	mov	rax,[rax+10h]
	mov	rdx,rax
	mov	rax,[rbp+10h]
	mov	rax,[rax]
	sub	rdx,rax
	mov	rax,rdx
	sar	rax,3h
	mov	rdx,rax
	mov	rax,[rbp+10h]
	mov	rax,[rax]
	mov	r8,rdx
	mov	rdx,rax
	mov	rcx,[rbp+10h]
	call	454A90h
	mov	rax,[rbp+10h]
	mov	rcx,rax
	call	454A70h
	nop
	add	rsp,20h
	pop	rbp
	ret
0000000000454B54             90 90 90 90 90 90 90 90 90 90 90 90     ............

;; fn0000000000454B60: 0000000000454B60
;;   Called from:
;;     000000000046B75A (in fn000000000046B720)
;;     000000000046B919 (in fn000000000046B8F0)
fn0000000000454B60 proc
	push	rbp
	mov	rbp,rsp
	sub	rsp,20h
	mov	[rbp+10h],rcx
	mov	[rbp+18h],rdx
	cmp	qword ptr [rbp+18h],0h
	jz	454B89h

l0000000000454B77:
	mov	rax,[rbp+10h]
	mov	rdx,[rbp+18h]
	mov	rcx,rax
	call	464FD0h
	jmp	454B8Eh

l0000000000454B89:
	mov	eax,0h

l0000000000454B8E:
	add	rsp,20h
	pop	rbp
	ret
0000000000454B94             90 90 90 90 90 90 90 90 90 90 90 90     ............

;; fn0000000000454BA0: 0000000000454BA0
;;   Called from:
;;     0000000000454C63 (in fn0000000000454C50)
fn0000000000454BA0 proc
	push	rbp
	mov	rbp,rsp
	sub	rsp,20h
	mov	[rbp+10h],rcx
	mov	rcx,[rbp+10h]
	call	448DA0h
	mov	rax,[rbp+10h]
	mov	qword ptr [rax],+0h
	mov	rax,[rbp+10h]
	mov	qword ptr [rax+8h],+0h
	mov	rax,[rbp+10h]
	mov	qword ptr [rax+10h],+0h
	add	rsp,20h
	pop	rbp
	ret
0000000000454BDE                                           90 90               ..

;; fn0000000000454BE0: 0000000000454BE0
;;   Called from:
;;     0000000000454CB4 (in fn0000000000454C70)
fn0000000000454BE0 proc
	push	rbp
	mov	rbp,rsp
	sub	rsp,20h
	mov	[rbp+10h],rcx
	mov	rcx,[rbp+10h]
	call	448DC0h
	nop
	add	rsp,20h
	pop	rbp
	ret
0000000000454BFC                                     90 90 90 90             ....

;; fn0000000000454C00: 0000000000454C00
;;   Called from:
;;     0000000000454CA8 (in fn0000000000454C70)
;;     000000000046B832 (in fn000000000046B720)
;;     000000000046BA7F (in fn000000000046B990)
fn0000000000454C00 proc
	push	rbp
	mov	rbp,rsp
	sub	rsp,20h
	mov	[rbp+10h],rcx
	mov	[rbp+18h],rdx
	mov	[rbp+20h],r8
	cmp	qword ptr [rbp+18h],0h
	jz	454C33h

l0000000000454C1B:
	mov	rax,[rbp+10h]
	mov	rcx,[rbp+20h]
	mov	rdx,[rbp+18h]
	mov	r8,rcx
	mov	rcx,rax
	call	464F00h
	nop

l0000000000454C33:
	add	rsp,20h
	pop	rbp
	ret
0000000000454C39                            90 90 90 90 90 90 90          .......

;; fn0000000000454C40: 0000000000454C40
;;   Called from:
;;     000000000046B7AB (in fn000000000046B720)
;;     000000000046B7E4 (in fn000000000046B720)
;;     000000000046B929 (in fn000000000046B8F0)
;;     000000000046BA31 (in fn000000000046B990)
;;     000000000046BB63 (in fn000000000046BB50)
fn0000000000454C40 proc
	push	rbp
	mov	rbp,rsp
	mov	[rbp+10h],rcx
	mov	rax,[rbp+10h]
	pop	rbp
	ret
0000000000454C4E                                           90 90               ..

;; fn0000000000454C50: 0000000000454C50
;;   Called from:
;;     000000000046BB43 (in fn000000000046BB30)
fn0000000000454C50 proc
	push	rbp
	mov	rbp,rsp
	sub	rsp,20h
	mov	[rbp+10h],rcx
	mov	rax,[rbp+10h]
	mov	rcx,rax
	call	454BA0h
	nop
	add	rsp,20h
	pop	rbp
	ret
0000000000454C6F                                              90                .

;; fn0000000000454C70: 0000000000454C70
;;   Called from:
;;     000000000046BB8C (in fn000000000046BB50)
fn0000000000454C70 proc
	push	rbp
	mov	rbp,rsp
	sub	rsp,20h
	mov	[rbp+10h],rcx
	mov	rax,[rbp+10h]
	mov	rax,[rax+10h]
	mov	rdx,rax
	mov	rax,[rbp+10h]
	mov	rax,[rax]
	sub	rdx,rax
	mov	rax,rdx
	mov	rdx,rax
	mov	rax,[rbp+10h]
	mov	rax,[rax]
	mov	r8,rdx
	mov	rdx,rax
	mov	rcx,[rbp+10h]
	call	454C00h
	mov	rax,[rbp+10h]
	mov	rcx,rax
	call	454BE0h
	nop
	add	rsp,20h
	pop	rbp
	ret

;; fn0000000000454CC0: 0000000000454CC0
;;   Called from:
;;     0000000000424BE4 (in fn0000000000424BE0)
;;     0000000000425084 (in fn0000000000425080)
;;     0000000000454DFD (in fn0000000000454DE0)
;;     0000000000454E5D (in fn0000000000454E50)
;;     0000000000454E8D (in fn0000000000454E80)
;;     0000000000454FBC (in fn0000000000454FA0)
;;     0000000000454FED (in fn0000000000454FA0)
;;     0000000000455029 (in fn0000000000455020)
;;     0000000000455068 (in fn0000000000455020)
fn0000000000454CC0 proc
	sub	rsp,28h
	mov	rcx,[rcx]
	call	41BDE8h
	nop
	add	rsp,28h
	ret
0000000000454CD2       48 83 C2 01 48 89 C1 74 05 E8 D0 C8 FB FF   H...H..t......
0000000000454CE0 E8 2B 0C 02 00 90 90 90 90 90 90 90 90 90 90 90 .+..............

;; fn0000000000454CF0: 0000000000454CF0
;;   Called from:
;;     0000000000424BF4 (in fn0000000000424BF0)
;;     0000000000425094 (in fn0000000000425090)
fn0000000000454CF0 proc
	mov	rax,[rcx]
	ret
0000000000454CF4             90 90 90 90 90 90 90 90 90 90 90 90     ............

;; fn0000000000454D00: 0000000000454D00
;;   Called from:
;;     00000000004559A4 (in fn0000000000455970)
;;     0000000000457704 (in fn00000000004576D0)
fn0000000000454D00 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	mov	rbx,rcx
	mov	ecx,r8d
	mov	rsi,rdx
	call	424270h
	test	rax,rax
	jz	454D1Fh

l0000000000454D19:
	cmp	qword ptr [rbx],0h
	jz	454D30h

l0000000000454D1F:
	xor	eax,eax
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret
0000000000454D28                         0F 1F 84 00 00 00 00 00         ........

l0000000000454D30:
	mov	rdx,rax
	mov	rcx,rsi
	call	411EF0h
	test	rax,rax
	mov	[rbx],rax
	jz	454D1Fh

l0000000000454D43:
	mov	rax,rbx
	mov	byte ptr [rbx+8h],1h
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret
0000000000454D51    90 90 90 90 90 90 90 90 90 90 90 90 90 90 90  ...............

;; fn0000000000454D60: 0000000000454D60
fn0000000000454D60 proc
	mov	rcx,[rcx]
	jmp	41BD50h
0000000000454D68                         90 90 90 90 90 90 90 90         ........

;; fn0000000000454D70: 0000000000454D70
;;   Called from:
;;     00000000004550A0 (in fn00000000004550A0)
;;     0000000000455B39 (in fn0000000000455AB0)
;;     0000000000457889 (in fn0000000000457800)
fn0000000000454D70 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	cmp	qword ptr [rcx],0h
	jz	454DC9h

l0000000000454D7C:
	cmp	byte ptr [rcx+8h],0h
	mov	rbx,rcx
	jnz	454DA0h

l0000000000454D85:
	mov	rax,rbx
	mov	qword ptr [rbx],+0h
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret
0000000000454D96                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l0000000000454DA0:
	mov	rsi,[00000000004AF79C]                                 ; [rip+0005A9F5]
	call	rsi
	mov	dword ptr [rax],0h

l0000000000454DAF:
	mov	rcx,[rbx]
	call	41BDF0h
	test	eax,eax
	jz	454D85h

l0000000000454DBB:
	call	rsi
	cmp	dword ptr [rax],4h
	jz	454DAFh

l0000000000454DC2:
	mov	qword ptr [rbx],+0h

l0000000000454DC9:
	xor	eax,eax
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret
0000000000454DD2       90 90 90 90 90 90 90 90 90 90 90 90 90 90   ..............

;; fn0000000000454DE0: 0000000000454DE0
;;   Called from:
;;     0000000000455EF8 (in fn0000000000455E10)
;;     0000000000456AED (in fn0000000000456940)
;;     0000000000456B1B (in fn0000000000456940)
;;     0000000000457C59 (in fn0000000000457B60)
;;     0000000000458890 (in fn00000000004586D0)
;;     00000000004588BB (in fn00000000004586D0)
fn0000000000454DE0 proc
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,20h
	mov	r12,[00000000004AF79C]                                 ; [rip+0005A9AB]
	mov	rbp,rcx
	mov	rdi,rdx
	mov	esi,r8d

l0000000000454DFA:
	mov	rcx,rbp
	call	454CC0h
	mov	r8d,esi
	mov	rdx,rdi
	mov	ecx,eax
	call	41BDF8h
	movsxd	rbx,eax
	cmp	rbx,0FFh
	jz	454E30h

l0000000000454E18:
	mov	rax,rbx
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
0000000000454E26                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l0000000000454E30:
	call	r12
	cmp	dword ptr [rax],4h
	jz	454DFAh

l0000000000454E38:
	mov	rax,rbx
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
0000000000454E46                   90 90 90 90 90 90 90 90 90 90       ..........

;; fn0000000000454E50: 0000000000454E50
;;   Called from:
;;     000000000045570E (in fn0000000000455600)
;;     0000000000455806 (in fn0000000000455750)
;;     0000000000455840 (in fn0000000000455750)
;;     0000000000455899 (in fn0000000000455750)
;;     000000000045744E (in fn0000000000457340)
;;     0000000000457546 (in fn0000000000457490)
;;     0000000000457580 (in fn0000000000457490)
;;     00000000004575D9 (in fn0000000000457490)
fn0000000000454E50 proc
	push	rbx
	sub	rsp,30h
	mov	rbx,rdx
	mov	[rsp+28h],r8
	call	454CC0h
	mov	r8,[rsp+28h]
	mov	rdx,rbx
	mov	ecx,eax
	add	rsp,30h
	pop	rbx
	jmp	4243A0h
0000000000454E76                   90 90 90 90 90 90 90 90 90 90       ..........

;; fn0000000000454E80: 0000000000454E80
;;   Called from:
;;     000000000045622A (in fn00000000004561E0)
;;     0000000000456353 (in fn00000000004562A0)
;;     0000000000457F8A (in fn0000000000457F40)
;;     00000000004580B6 (in fn0000000000458000)
fn0000000000454E80 proc
	push	rbx
	sub	rsp,30h
	mov	rbx,rdx
	mov	[rsp+2Ch],r8d
	call	454CC0h
	mov	r8d,[rsp+2Ch]
	mov	rdx,rbx
	mov	ecx,eax
	call	411F00h
	nop
	add	rsp,30h
	pop	rbx
	ret
0000000000454EA8                         48 83 C2 01 48 89 C1 74         H...H..t
0000000000454EB0 05 E8 FA C6 FB FF E8 55 0A 02 00 90 90 90 90 90 .......U........

;; fn0000000000454EC0: 0000000000454EC0
;;   Called from:
;;     0000000000424C32 (in fn0000000000424C00)
;;     0000000000424DB2 (in fn0000000000424D80)
;;     00000000004250D2 (in fn00000000004250A0)
;;     0000000000425252 (in fn0000000000425220)
fn0000000000454EC0 proc
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,20h
	test	rdx,rdx
	jz	454F0Ch

l0000000000454ECC:
	cmp	qword ptr [rcx],0h
	jnz	454F0Ch

l0000000000454ED2:
	mov	rsi,rdx
	mov	rbx,rcx
	mov	rdi,[00000000004AF79C]                                 ; [rip+0005A8BD]
	call	rdi
	mov	dword ptr [rax],0h

l0000000000454EE7:
	mov	rcx,[rbx]
	call	41BD50h
	test	eax,eax
	jnz	454F05h

l0000000000454EF3:
	mov	rax,rbx
	mov	[rbx],rsi
	mov	byte ptr [rbx+8h],0h
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	ret

l0000000000454F05:
	call	rdi
	cmp	dword ptr [rax],4h
	jz	454EE7h

l0000000000454F0C:
	xor	eax,eax
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	ret
0000000000454F16                   90 90 90 90 90 90 90 90 90 90       ..........

;; fn0000000000454F20: 0000000000454F20
;;   Called from:
;;     0000000000424CE0 (in fn0000000000424CB0)
;;     0000000000424E60 (in fn0000000000424E30)
;;     0000000000425180 (in fn0000000000425150)
;;     0000000000425300 (in fn00000000004252D0)
fn0000000000454F20 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	mov	rbx,rcx
	mov	ecx,r8d
	mov	esi,edx
	call	424270h
	test	rax,rax
	jz	454F3Eh

l0000000000454F38:
	cmp	qword ptr [rbx],0h
	jz	454F50h

l0000000000454F3E:
	xor	eax,eax

l0000000000454F40:
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret
0000000000454F47                      66 0F 1F 84 00 00 00 00 00        f........

l0000000000454F50:
	mov	rdx,rax
	mov	ecx,esi
	call	41BDD8h
	test	rax,rax
	mov	rcx,rax
	mov	[rbx],rax
	jz	454F3Eh

l0000000000454F65:
	test	esi,esi
	mov	byte ptr [rbx+8h],1h
	mov	rax,rbx
	jnz	454F40h

l0000000000454F70:
	xor	r9d,r9d
	mov	r8d,4h
	xor	edx,edx
	call	41BDE0h
	mov	rax,rbx
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret
0000000000454F8A                               48 83 C2 01 48 89           H...H.
0000000000454F90 C1 74 05 E8 18 C6 FB FF E8 73 09 02 00 90 90 90 .t.......s......

;; fn0000000000454FA0: 0000000000454FA0
;;   Called from:
;;     000000000045612C (in fn00000000004560A0)
;;     0000000000457E8A (in fn0000000000457DF0)
fn0000000000454FA0 proc
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,30h
	xor	ebx,ebx
	test	r8,r8
	mov	rdi,rcx
	mov	rsi,r8
	jnz	454FE3h

l0000000000454FB4:
	mov	rcx,rdi
	mov	[rsp+20h],r9
	call	454CC0h
	mov	r9,[rsp+20h]
	mov	r8,[rsp+70h]
	mov	ecx,eax
	mov	rdx,r9
	call	4243A0h
	add	rbx,rax
	mov	rax,rbx
	add	rsp,30h
	pop	rbx
	pop	rsi
	pop	rdi
	ret

l0000000000454FE3:
	mov	[rsp+28h],r9
	mov	[rsp+20h],rdx
	call	454CC0h
	mov	rdx,[rsp+20h]
	mov	r8,rsi
	mov	ecx,eax
	call	4243A0h
	cmp	rsi,rax
	mov	rbx,rax
	mov	r9,[rsp+28h]
	jz	454FB4h

l000000000045500E:
	mov	rax,rbx
	add	rsp,30h
	pop	rbx
	pop	rsi
	pop	rdi
	ret
0000000000455019                            90 90 90 90 90 90 90          .......

;; fn0000000000455020: 0000000000455020
;;   Called from:
;;     00000000004568EB (in fn00000000004568A0)
;;     000000000045867E (in fn0000000000458630)
fn0000000000455020 proc
	push	rsi
	push	rbx
	sub	rsp,68h
	mov	rsi,rcx
	call	454CC0h
	lea	rdx,[rsp+20h]
	mov	ecx,eax
	call	[00000000004AF7CC]                                    ; [rip+0005A791]
	xor	r8d,r8d
	test	eax,eax
	jnz	455053h

l0000000000455042:
	movzx	edx,word ptr [rsp+26h]
	and	dx,0F000h
	cmp	dx,8000h
	jz	455060h

l0000000000455053:
	mov	rax,r8
	add	rsp,68h
	pop	rbx
	pop	rsi
	ret
000000000045505D                                        0F 1F 00              ...

l0000000000455060:
	mov	rbx,[rsp+38h]
	mov	rcx,rsi
	call	454CC0h
	mov	r8d,1h
	xor	edx,edx
	mov	ecx,eax
	call	411F00h
	sub	rbx,rax
	mov	r8,rbx
	mov	rax,r8
	add	rsp,68h
	pop	rbx
	pop	rsi
	ret
000000000045508C                                     90 90 90 90             ....

;; fn0000000000455090: 0000000000455090
;;   Called from:
;;     0000000000456E95 (in fn0000000000456E20)
;;     0000000000456FF5 (in fn0000000000456F80)
;;     0000000000458C55 (in fn0000000000458BE0)
;;     0000000000458DC5 (in fn0000000000458D50)
fn0000000000455090 proc
	mov	qword ptr [rcx],+0h
	mov	byte ptr [rcx+8h],0h
	ret
000000000045509C                                     90 90 90 90             ....

;; fn00000000004550A0: 00000000004550A0
;;   Called from:
;;     0000000000424F20 (in fn0000000000424F00)
;;     0000000000424FA0 (in fn0000000000424F80)
;;     0000000000425020 (in fn0000000000425000)
;;     00000000004253C0 (in fn00000000004253A0)
;;     0000000000425440 (in fn0000000000425420)
;;     00000000004254C0 (in fn00000000004254A0)
;;     00000000004570FB (in fn00000000004570E0)
;;     000000000045714B (in fn0000000000457130)
;;     000000000045718B (in fn0000000000457170)
;;     0000000000458EDB (in fn0000000000458EC0)
;;     0000000000458F2B (in fn0000000000458F10)
;;     0000000000458F6B (in fn0000000000458F50)
;;     00000000004598A3 (in fn0000000000459860)
;;     0000000000459933 (in fn00000000004598F0)
;;     00000000004599BF (in fn0000000000459980)
;;     000000000045A343 (in fn000000000045A300)
;;     000000000045A3D3 (in fn000000000045A390)
;;     000000000045A45F (in fn000000000045A420)
;;     000000000045FB88 (in fn000000000045FB50)
;;     000000000045FC08 (in fn000000000045FBD0)
;;     000000000045FC87 (in fn000000000045FC50)
;;     0000000000460408 (in fn00000000004603D0)
;;     0000000000460488 (in fn0000000000460450)
;;     0000000000460507 (in fn00000000004604D0)
;;     0000000000460FF8 (in fn0000000000460FC0)
;;     0000000000461078 (in fn0000000000461040)
;;     00000000004610F7 (in fn00000000004610C0)
;;     0000000000461828 (in fn00000000004617F0)
;;     00000000004618A8 (in fn0000000000461870)
;;     0000000000461927 (in fn00000000004618F0)
fn00000000004550A0 proc
	jmp	454D70h
00000000004550A5                90 90 90 90 90 90 90 90 90 90 90      ...........

;; fn00000000004550B0: 00000000004550B0
fn00000000004550B0 proc
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,28h
	lea	rdi,[000000000048E270]                                 ; [rip+000391B1]
	mov	rbp,rdx
	mov	r9,r8
	xor	edx,edx
	xor	r8d,r8d
	mov	rbx,rcx
	mov	rsi,rbp
	call	468C90h
	lea	rax,[0000000000496490]                                 ; [rip+000413B4]
	mov	ecx,2h
	mov	[rbx],rax

l00000000004550E4:
	rep cmpsb

l00000000004550E6:
	jz	4550FBh

l00000000004550E8:
	lea	rdi,[000000000048E272]                                 ; [rip+00039183]
	mov	ecx,6h
	mov	rsi,rbp

l00000000004550F7:
	rep cmpsb

l00000000004550F9:
	jnz	455104h

l00000000004550FB:
	add	rsp,28h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret

l0000000000455104:
	lea	rsi,[rbx+10h]
	mov	rcx,rsi
	call	46ACF0h
	xor	r8d,r8d
	mov	rdx,rbp
	mov	rcx,rsi
	call	46AC90h
	nop
	add	rsp,28h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
0000000000455128                         48 89 C6 48 89 D9 E8 FD         H..H....
0000000000455130 3C 01 00 48 89 F1 E8 75 C4 FB FF 90 90 90 90 90 <..H...u........

;; fn0000000000455140: 0000000000455140
fn0000000000455140 proc
	push	rbx
	sub	rsp,20h
	lea	rax,[0000000000496490]                                 ; [rip+00041344]
	mov	rbx,rcx
	mov	[rcx],rax
	call	468E30h
	mov	rcx,rbx
	add	rsp,20h
	pop	rbx
	jmp	475550h
0000000000455164             90 90 90 90 90 90 90 90 90 90 90 90     ............

;; fn0000000000455170: 0000000000455170
fn0000000000455170 proc
	lea	rax,[0000000000496490]                                 ; [rip+00041319]
	mov	[rcx],rax
	jmp	468E30h
000000000045517F                                              90                .

;; fn0000000000455180: 0000000000455180
fn0000000000455180 proc
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,28h
	lea	rdi,[000000000048D8A0]                                 ; [rip+00038711]
	mov	rbp,rdx
	mov	rdx,r8
	mov	rbx,rcx
	call	468F80h
	lea	rax,[0000000000496510]                                 ; [rip+0004136C]
	mov	ecx,2h
	mov	rsi,rbp
	mov	[rbx],rax

l00000000004551AF:
	rep cmpsb

l00000000004551B1:
	jz	4551C6h

l00000000004551B3:
	lea	rdi,[000000000048D8A2]                                 ; [rip+000386E8]
	mov	ecx,6h
	mov	rsi,rbp

l00000000004551C2:
	rep cmpsb

l00000000004551C4:
	jnz	4551D0h

l00000000004551C6:
	add	rsp,28h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
00000000004551CF                                              90                .

l00000000004551D0:
	lea	rsi,[rbx+10h]
	mov	rcx,rsi
	call	46ACF0h
	xor	r8d,r8d
	mov	rdx,rbp
	mov	rcx,rsi
	call	46AC90h
	mov	rcx,rbx
	add	rsp,28h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	jmp	468E90h
00000000004551FA                               48 89 C6 48 89 D9           H..H..
0000000000455200 E8 FB 3D 01 00 48 89 F1 E8 A3 C3 FB FF 90 90 90 ..=..H..........

;; fn0000000000455210: 0000000000455210
fn0000000000455210 proc
	push	rbx
	sub	rsp,20h
	lea	rax,[0000000000496510]                                 ; [rip+000412F4]
	mov	rbx,rcx
	mov	[rcx],rax
	call	469000h
	mov	rcx,rbx
	add	rsp,20h
	pop	rbx
	jmp	475550h
0000000000455234             90 90 90 90 90 90 90 90 90 90 90 90     ............

;; fn0000000000455240: 0000000000455240
fn0000000000455240 proc
	lea	rax,[0000000000496510]                                 ; [rip+000412C9]
	mov	[rcx],rax
	jmp	469000h
000000000045524F                                              90                .

;; fn0000000000455250: 0000000000455250
;;   Called from:
;;     0000000000470D42 (in fn0000000000470D10)
fn0000000000455250 proc
	push	rbx
	sub	rsp,20h
	mov	rbx,rcx
	call	454770h
	lea	rax,[0000000000496590]                                 ; [rip+0004132C]
	mov	[rbx],rax
	add	rsp,20h
	pop	rbx
	ret
000000000045526D                                        90 90 90              ...

;; fn0000000000455270: 0000000000455270
fn0000000000455270 proc
	push	rbx
	sub	rsp,20h
	lea	rax,[0000000000496590]                                 ; [rip+00041314]
	mov	rbx,rcx
	mov	[rcx],rax
	call	4547D0h
	mov	rcx,rbx
	add	rsp,20h
	pop	rbx
	jmp	475550h
0000000000455294             90 90 90 90 90 90 90 90 90 90 90 90     ............

;; fn00000000004552A0: 00000000004552A0
fn00000000004552A0 proc
	lea	rax,[0000000000496590]                                 ; [rip+000412E9]
	mov	[rcx],rax
	jmp	4547D0h
00000000004552AF                                              90                .

;; fn00000000004552B0: 00000000004552B0
fn00000000004552B0 proc
	push	rbx
	sub	rsp,20h
	lea	rax,[00000000004965D0]                                 ; [rip+00041314]
	mov	rbx,rcx
	mov	[rcx],rax
	call	4547D0h
	mov	rcx,rbx
	add	rsp,20h
	pop	rbx
	jmp	475550h
00000000004552D4             90 90 90 90 90 90 90 90 90 90 90 90     ............

;; fn00000000004552E0: 00000000004552E0
fn00000000004552E0 proc
	lea	rax,[00000000004965D0]                                 ; [rip+000412E9]
	mov	[rcx],rax
	jmp	4547D0h
00000000004552EF                                              90                .

;; fn00000000004552F0: 00000000004552F0
;;   Called from:
;;     0000000000470E92 (in fn0000000000470E60)
fn00000000004552F0 proc
	push	rbx
	sub	rsp,20h
	mov	rbx,rcx
	call	454770h
	lea	rax,[0000000000496610]                                 ; [rip+0004130C]
	mov	[rbx],rax
	add	rsp,20h
	pop	rbx
	ret
000000000045530D                                        90 90 90              ...

;; fn0000000000455310: 0000000000455310
fn0000000000455310 proc
	push	rbx
	sub	rsp,20h
	lea	rax,[0000000000496610]                                 ; [rip+000412F4]
	mov	rbx,rcx
	mov	[rcx],rax
	call	4547D0h
	mov	rcx,rbx
	add	rsp,20h
	pop	rbx
	jmp	475550h
0000000000455334             90 90 90 90 90 90 90 90 90 90 90 90     ............

;; fn0000000000455340: 0000000000455340
fn0000000000455340 proc
	lea	rax,[0000000000496610]                                 ; [rip+000412C9]
	mov	[rcx],rax
	jmp	4547D0h
000000000045534F                                              90                .

;; fn0000000000455350: 0000000000455350
;;   Called from:
;;     0000000000470F22 (in fn0000000000470EF0)
;;     00000000004715DB (in fn0000000000471560)
fn0000000000455350 proc
	push	rbx
	sub	rsp,20h
	mov	rbx,rcx
	call	454770h
	lea	rax,[0000000000496650]                                 ; [rip+000412EC]
	mov	[rbx],rax
	add	rsp,20h
	pop	rbx
	ret
000000000045536D                                        90 90 90              ...

;; fn0000000000455370: 0000000000455370
fn0000000000455370 proc
	push	rbx
	sub	rsp,20h
	lea	rax,[0000000000496650]                                 ; [rip+000412D4]
	mov	rbx,rcx
	mov	[rcx],rax
	call	4547D0h
	mov	rcx,rbx
	add	rsp,20h
	pop	rbx
	jmp	475550h
0000000000455394             90 90 90 90 90 90 90 90 90 90 90 90     ............

;; fn00000000004553A0: 00000000004553A0
fn00000000004553A0 proc
	lea	rax,[0000000000496650]                                 ; [rip+000412A9]
	mov	[rcx],rax
	jmp	4547D0h
00000000004553AF                                              90                .

;; fn00000000004553B0: 00000000004553B0
fn00000000004553B0 proc
	push	rbx
	sub	rsp,20h
	lea	rax,[0000000000496690]                                 ; [rip+000412D4]
	mov	rbx,rcx
	mov	[rcx],rax
	call	45F3F0h
	mov	rcx,rbx
	add	rsp,20h
	pop	rbx
	jmp	475550h
00000000004553D4             90 90 90 90 90 90 90 90 90 90 90 90     ............

;; fn00000000004553E0: 00000000004553E0
fn00000000004553E0 proc
	lea	rax,[0000000000496690]                                 ; [rip+000412A9]
	mov	[rcx],rax
	jmp	45F3F0h
00000000004553EF                                              90                .

;; fn00000000004553F0: 00000000004553F0
fn00000000004553F0 proc
	lea	rax,[0000000000495F10]                                 ; [rip+00040B19]
	add	rcx,8h
	mov	[rcx-8h],rax
	jmp	4621F0h
0000000000455404             90 90 90 90 90 90 90 90 90 90 90 90     ............

;; fn0000000000455410: 0000000000455410
fn0000000000455410 proc
	push	rbx
	sub	rsp,20h
	lea	rax,[0000000000495F10]                                 ; [rip+00040AF4]
	mov	rbx,rcx
	lea	rcx,[rcx+8h]
	mov	[rcx-8h],rax
	call	462200h
	mov	rcx,rbx
	add	rsp,20h
	pop	rbx
	jmp	475550h
0000000000455439                            90 90 90 90 90 90 90          .......

;; fn0000000000455440: 0000000000455440
fn0000000000455440 proc
	lea	rax,[0000000000495F10]                                 ; [rip+00040AC9]
	add	rcx,8h
	mov	[rcx-8h],rax
	jmp	462200h
0000000000455454             90 90 90 90 90 90 90 90 90 90 90 90     ............

;; fn0000000000455460: 0000000000455460
fn0000000000455460 proc
	jmp	475550h
0000000000455465                90 90 90 90 90 90 90 90 90 90 90      ...........

;; fn0000000000455470: 0000000000455470
fn0000000000455470 proc
	ret
0000000000455471    90 90 90 90 90 90 90 90 90 90 90 90 90 90 90  ...............

;; fn0000000000455480: 0000000000455480
fn0000000000455480 proc
	mov	eax,[rcx+58h]
	test	al,11h
	setnz	r8b
	test	al,8h
	mov	rax,[rcx+68h]
	mov	[rcx+8h],rax
	mov	[rcx+10h],rax
	jz	4554F0h

l0000000000455499:
	test	rdx,rdx
	jle	4554F0h

l000000000045549E:
	lea	r9,[rax+rdx]
	mov	[rcx+18h],r9

l00000000004554A6:
	test	rdx,rdx
	jnz	4554D0h

l00000000004554AB:
	test	r8b,r8b
	jz	4554D0h

l00000000004554B0:
	mov	rdx,[rcx+70h]
	cmp	rdx,1h
	jbe	4554D0h

l00000000004554BA:
	mov	[rcx+28h],rax
	mov	[rcx+20h],rax
	lea	rax,[rax+rdx-1h]
	mov	[rcx+30h],rax
	ret
00000000004554CC                                     0F 1F 40 00             ..@.

l00000000004554D0:
	mov	qword ptr [rcx+28h],+0h
	mov	qword ptr [rcx+20h],+0h
	mov	qword ptr [rcx+30h],+0h
	ret
00000000004554E9                            0F 1F 80 00 00 00 00          .......

l00000000004554F0:
	mov	[rcx+18h],rax
	jmp	4554A6h
00000000004554F6                   90 90 90 90 90 90 90 90 90 90       ..........

;; fn0000000000455500: 0000000000455500
;;   Called from:
;;     000000000045642F (in fn00000000004562A0)
;;     0000000000456454 (in fn00000000004562A0)
;;     000000000045654F (in fn0000000000456520)
fn0000000000455500 proc
	push	rsi
	push	rbx
	sub	rsp,38h
	mov	rbx,rcx
	mov	rcx,[rcx+98h]
	mov	rsi,rdx
	mov	rax,[rcx]
	call	qword ptr [rax+30h]
	test	al,al
	jz	455530h

l000000000045551D:
	mov	rax,[rbx+10h]
	sub	eax,[rbx+18h]
	add	rsp,38h
	pop	rbx
	pop	rsi
	ret
000000000045552B                                  0F 1F 44 00 00            ..D..

l0000000000455530:
	mov	rcx,[rbx+98h]
	mov	rax,[rbx+10h]
	mov	rdx,rsi
	sub	rax,[rbx+8h]
	mov	r9,[rbx+0B0h]
	mov	r8,[rbx+0A0h]
	mov	r10,[rcx]
	mov	[rsp+20h],rax
	call	qword ptr [r10+38h]
	add	eax,[rbx+0A0h]
	sub	eax,[rbx+0B8h]
	add	rsp,38h
	pop	rbx
	pop	rsi
	ret
000000000045556F                                              90                .

;; fn0000000000455570: 0000000000455570
fn0000000000455570 proc
	cmp	byte ptr [rcx+90h],0h
	jnz	4555AAh

l0000000000455579:
	mov	rax,[rcx+10h]
	mov	byte ptr [rcx+90h],1h
	mov	[rcx+80h],rax
	mov	rax,[rcx+18h]
	mov	[rcx+88h],rax
	lea	rax,[rcx+7Bh]
	mov	[rcx+8h],rax
	mov	[rcx+10h],rax
	lea	rax,[rcx+7Ch]
	mov	[rcx+18h],rax

l00000000004555AA:
	ret
00000000004555AC                                     90 90 90 90             ....

;; fn00000000004555B0: 00000000004555B0
fn00000000004555B0 proc
	cmp	byte ptr [rcx+90h],0h
	jz	4555F3h

l00000000004555B9:
	mov	rax,[rcx+8h]
	cmp	[rcx+10h],rax
	mov	rdx,[rcx+88h]
	mov	r8,[rcx+68h]
	mov	byte ptr [rcx+90h],0h
	setnz	al
	mov	[rcx+8h],r8
	mov	[rcx+18h],rdx
	movzx	eax,al
	add	rax,[rcx+80h]
	mov	[rcx+80h],rax
	mov	[rcx+10h],rax

l00000000004555F3:
	ret
00000000004555F5                90 90 90 90 90 90 90 90 90 90 90      ...........

;; fn0000000000455600: 0000000000455600
;;   Called from:
;;     0000000000455AD6 (in fn0000000000455AB0)
;;     0000000000455CAD (in fn0000000000455BB0)
;;     0000000000456205 (in fn00000000004561E0)
fn0000000000455600 proc
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,+0D8h
	mov	rax,[rcx+28h]
	cmp	[rcx+20h],rax
	mov	esi,1h
	mov	r15,rcx
	jc	455730h

l0000000000455629:
	cmp	byte ptr [r15+7Ah],0h
	jz	4556E0h

l0000000000455634:
	mov	rcx,[r15+98h]
	test	rcx,rcx
	jz	455747h

l0000000000455644:
	mov	rax,[rcx]
	call	qword ptr [rax+30h]
	cmp	sil,al
	jbe	4556E0h

l0000000000455653:
	lea	r12,[r15+60h]
	xor	r13d,r13d
	lea	rdi,[rsp+50h]
	lea	rbp,[rsp+48h]
	lea	r14,[r15+48h]
	jmp	455683h
000000000045566A                               66 0F 1F 44 00 00           f..D..

l0000000000455670:
	test	r13,r13
	jle	4556BCh

l0000000000455675:
	cmp	ebx,1h
	jnz	4556BCh

l000000000045567A:
	test	sil,sil
	jz	455724h

l0000000000455683:
	mov	rcx,[r15+98h]
	lea	r9,[rsp+0D0h]
	mov	r8,rdi
	mov	rdx,r12
	mov	rax,[rcx]
	mov	[rsp+20h],rbp
	call	qword ptr [rax+18h]
	cmp	eax,2h
	mov	ebx,eax
	jz	455724h

l00000000004556AA:
	cmp	eax,1h
	ja	455670h

l00000000004556AF:
	mov	r9,[rsp+48h]
	sub	r9,rdi
	test	r9,r9
	jg	455700h

l00000000004556BC:
	test	sil,sil
	jz	4556E0h

l00000000004556C1:
	mov	rax,[r15]
	mov	edx,0FFFFFFFFh
	mov	rcx,r15
	call	qword ptr [rax+68h]
	cmp	eax,0FFh
	setnz	sil
	nop	word ptr cs:[rax+rax+0h]

l00000000004556E0:
	mov	eax,esi
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
00000000004556F6                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l0000000000455700:
	mov	r8,r9
	mov	rdx,rdi
	mov	rcx,r14
	mov	[rsp+38h],r9
	call	454E50h
	mov	r9,[rsp+38h]
	mov	r13,rax
	cmp	r9,rax
	jz	455670h

l0000000000455724:
	xor	esi,esi
	jmp	4556E0h
0000000000455728                         0F 1F 84 00 00 00 00 00         ........

l0000000000455730:
	mov	rax,[rcx]
	mov	edx,0FFFFFFFFh
	call	qword ptr [rax+68h]
	cmp	eax,0FFh
	setnz	sil
	jmp	455629h

l0000000000455747:
	call	470820h
	nop
	nop
	nop
	nop

;; fn0000000000455750: 0000000000455750
;;   Called from:
;;     000000000045574F (in fn0000000000455600)
;;     00000000004565A9 (in fn0000000000456520)
;;     000000000045672E (in fn0000000000456520)
fn0000000000455750 proc
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
	mov	rbx,rcx
	mov	rcx,[rcx+98h]
	mov	rdi,rdx
	mov	rsi,r8
	test	rcx,rcx
	jz	4558AFh

l0000000000455781:
	mov	rax,[rcx]
	call	qword ptr [rax+30h]
	test	al,al
	jnz	4557FCh

l000000000045578B:
	mov	rcx,[rbx+98h]
	mov	rax,[rcx]
	call	qword ptr [rax+40h]
	movsxd	r9,eax
	imul	r9,rsi
	lea	rax,[r9+1Eh]
	and	rax,0F0h
	call	4116F0h
	mov	rcx,[rbx+98h]
	sub	rsp,rax
	lea	r12,[rbx+60h]
	lea	r13,[rbp-30h]
	lea	r14,[rsp+40h]
	lea	r15,[rbp-28h]
	mov	r8,rdi
	mov	rax,[rcx]
	mov	rdx,r12
	mov	[rsp+38h],r13
	add	r9,r14
	mov	[rsp+28h],r14
	mov	[rsp+20h],r15
	mov	[rsp+30h],r9
	lea	r9,[rdi+rsi]
	call	qword ptr [rax+10h]
	cmp	eax,1h
	jbe	455822h

l00000000004557F3:
	cmp	eax,3h
	jnz	4558A3h

l00000000004557FC:
	lea	rcx,[rbx+48h]
	mov	r8,rsi
	mov	rdx,rdi
	call	454E50h

l000000000045580B:
	cmp	rax,rsi
	setz	al
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

l0000000000455822:
	mov	r10,[rbp-30h]
	lea	rdi,[rbx+48h]
	mov	rdx,r14
	mov	[rbp-3Ch],eax
	mov	rcx,rdi
	mov	rsi,r10
	mov	[rbp-38h],r10
	sub	rsi,r14
	mov	r8,rsi
	call	454E50h
	cmp	rsi,rax
	jnz	45580Bh

l000000000045584A:
	mov	r9d,[rbp-3Ch]
	mov	r10,[rbp-38h]
	and	r9d,1h
	jz	45580Bh

l0000000000455858:
	mov	rcx,[rbx+98h]
	mov	r9,[rbx+28h]
	mov	rdx,r12
	mov	r8,[rbp-28h]
	mov	rax,[rcx]
	mov	[rsp+38h],r13
	mov	[rsp+30h],r10
	mov	[rsp+28h],r14
	mov	[rsp+20h],r15
	call	qword ptr [rax+10h]
	cmp	eax,2h
	jz	4558A3h

l0000000000455889:
	mov	rsi,[rbp-30h]
	mov	rdx,r14
	mov	rcx,rdi
	sub	rsi,r14
	mov	r8,rsi
	call	454E50h
	jmp	45580Bh

l00000000004558A3:
	lea	rcx,[000000000048D570]                                 ; [rip+00037CC6]
	call	470B20h

l00000000004558AF:
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

;; fn00000000004558C0: 00000000004558C0
;;   Called from:
;;     00000000004558BF (in fn0000000000455750)
;;     0000000000455AF3 (in fn0000000000455AB0)
;;     0000000000475499 (in fn0000000000475480)
fn00000000004558C0 proc
	push	rbx
	sub	rsp,20h
	cmp	byte ptr [rcx+78h],0h
	mov	rbx,rcx
	jz	4558E8h

l00000000004558CE:
	mov	rcx,[rcx+68h]
	test	rcx,rcx
	jz	4558DCh

l00000000004558D7:
	call	475540h

l00000000004558DC:
	mov	qword ptr [rbx+68h],+0h
	mov	byte ptr [rbx+78h],0h

l00000000004558E8:
	mov	rcx,[rbx+0A0h]
	test	rcx,rcx
	jz	4558F9h

l00000000004558F4:
	call	475540h

l00000000004558F9:
	mov	qword ptr [rbx+0A0h],+0h
	mov	qword ptr [rbx+0A8h],+0h
	mov	qword ptr [rbx+0B0h],+0h
	mov	qword ptr [rbx+0B8h],+0h
	add	rsp,20h
	pop	rbx
	ret
000000000045592B                                  90 90 90 90 90            .....

;; fn0000000000455930: 0000000000455930
;;   Called from:
;;     0000000000424C5A (in fn0000000000424C00)
;;     0000000000424D0A (in fn0000000000424CB0)
;;     0000000000424DDA (in fn0000000000424D80)
;;     0000000000424E8A (in fn0000000000424E30)
fn0000000000455930 proc
	push	rbx
	sub	rsp,20h
	cmp	byte ptr [rcx+78h],0h
	jnz	455942h

l000000000045593B:
	cmp	qword ptr [rcx+68h],0h
	jz	455950h

l0000000000455942:
	add	rsp,20h
	pop	rbx
	ret
0000000000455948                         0F 1F 84 00 00 00 00 00         ........

l0000000000455950:
	mov	rbx,rcx
	mov	rcx,[rcx+70h]
	call	475560h
	mov	byte ptr [rbx+78h],1h
	mov	[rbx+68h],rax
	jmp	455942h
0000000000455966                   90 90 90 90 90 90 90 90 90 90       ..........

;; fn0000000000455970: 0000000000455970
;;   Called from:
;;     0000000000455A73 (in fn0000000000455A70)
;;     0000000000458F9C (in fn0000000000458F90)
;;     0000000000458FEF (in fn0000000000458FE0)
;;     0000000000459177 (in fn0000000000459080)
;;     0000000000459308 (in fn0000000000459210)
;;     000000000045959A (in fn00000000004594E0)
;;     00000000004596DB (in fn0000000000459620)
;;     000000000045F450 (in fn000000000045F440)
;;     000000000045F4A3 (in fn000000000045F490)
;;     000000000045F5FD (in fn000000000045F530)
;;     000000000045F74E (in fn000000000045F680)
;;     000000000045F94C (in fn000000000045F8D0)
;;     000000000045FA3D (in fn000000000045F9C0)
;;     0000000000460920 (in fn0000000000460910)
;;     0000000000460973 (in fn0000000000460960)
;;     0000000000460AC5 (in fn0000000000460A00)
;;     0000000000460C06 (in fn0000000000460B40)
;;     0000000000460DDC (in fn0000000000460D70)
;;     0000000000460EBD (in fn0000000000460E50)
fn0000000000455970 proc
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,48h
	lea	rsi,[rcx+48h]
	mov	rbx,rcx
	mov	rbp,rdx
	mov	edi,r8d
	mov	rcx,rsi
	call	42AA50h
	test	al,al
	jnz	455A60h

l0000000000455995:
	mov	r9d,1B4h
	mov	r8d,edi
	mov	rdx,rbp
	mov	rcx,rsi
	call	454D00h
	mov	rcx,rsi
	call	42AA50h
	test	al,al
	jz	455A60h

l00000000004559B9:
	cmp	byte ptr [rbx+78h],0h
	mov	rax,[rbx+68h]
	jz	455A10h

l00000000004559C3:
	mov	[rbx+8h],rax
	mov	[rbx+10h],rax
	test	dil,2h
	mov	[rbx+18h],rax
	mov	eax,[rbx+5Ch]
	mov	[rbx+58h],edi
	mov	byte ptr [rbx+79h],0h
	mov	byte ptr [rbx+7Ah],0h
	mov	qword ptr [rbx+28h],+0h
	mov	qword ptr [rbx+20h],+0h
	mov	qword ptr [rbx+30h],+0h
	mov	[rbx+60h],eax
	mov	[rbx+64h],eax
	jnz	455A30h

l0000000000455A01:
	mov	rax,rbx
	add	rsp,48h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
0000000000455A0D                                        0F 1F 00              ...

l0000000000455A10:
	test	rax,rax
	jnz	4559C3h

l0000000000455A15:
	mov	rcx,[rbx+70h]
	call	475560h
	mov	byte ptr [rbx+78h],1h
	mov	[rbx+68h],rax
	jmp	4559C3h
0000000000455A28                         0F 1F 84 00 00 00 00 00         ........

l0000000000455A30:
	mov	rax,[rbx]
	xor	r8d,r8d
	lea	rcx,[rsp+30h]
	mov	[rsp+20h],edi
	mov	r9d,2h
	mov	rdx,rbx
	call	qword ptr [rax+20h]
	cmp	qword ptr [rsp+30h],0FFh
	jnz	455A01h

l0000000000455A53:
	mov	rcx,rbx
	call	455AB0h
	nop	dword ptr [rax+rax+0h]

l0000000000455A60:
	xor	eax,eax
	add	rsp,48h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
0000000000455A6B                                  90 90 90 90 90            .....

;; fn0000000000455A70: 0000000000455A70
fn0000000000455A70 proc
	mov	rdx,[rdx]
	jmp	455970h
0000000000455A78                         90 90 90 90 90 90 90 90         ........

;; fn0000000000455A80: 0000000000455A80
fn0000000000455A80 proc
	sub	rsp,28h
	xor	eax,eax
	mov	rdx,[rcx+28h]
	cmp	[rcx+20h],rdx
	jnc	455AA6h

l0000000000455A90:
	mov	rax,[rcx]
	mov	edx,0FFFFFFFFh
	call	qword ptr [rax+68h]
	cmp	eax,0FFh
	setz	al
	movzx	eax,al
	neg	eax

l0000000000455AA6:
	add	rsp,28h
	ret
0000000000455AAB                                  90 90 90 90 90            .....

;; fn0000000000455AB0: 0000000000455AB0
;;   Called from:
;;     0000000000424F17 (in fn0000000000424F00)
;;     0000000000424F97 (in fn0000000000424F80)
;;     0000000000425017 (in fn0000000000425000)
;;     0000000000455A56 (in fn0000000000455970)
;;     00000000004570F2 (in fn00000000004570E0)
;;     0000000000457142 (in fn0000000000457130)
;;     0000000000457182 (in fn0000000000457170)
;;     000000000045903C (in fn0000000000459030)
;;     000000000045989A (in fn0000000000459860)
;;     000000000045992A (in fn00000000004598F0)
;;     00000000004599B6 (in fn0000000000459980)
;;     000000000045F4EC (in fn000000000045F4E0)
;;     000000000045FB7F (in fn000000000045FB50)
;;     000000000045FBFF (in fn000000000045FBD0)
;;     000000000045FC7E (in fn000000000045FC50)
;;     00000000004609BC (in fn00000000004609B0)
;;     0000000000460FEF (in fn0000000000460FC0)
;;     000000000046106F (in fn0000000000461040)
;;     00000000004610EE (in fn00000000004610C0)
fn0000000000455AB0 proc
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,30h
	lea	rdi,[rcx+48h]
	mov	rbx,rcx
	mov	rcx,rdi
	call	42AA50h
	test	al,al
	jz	455B53h

l0000000000455ACE:
	mov	rcx,rbx
	mov	[rsp+20h],rbx
	call	455600h
	xor	eax,1h
	mov	esi,eax
	mov	rcx,[rsp+20h]
	mov	dword ptr [rcx+58h],0h
	mov	byte ptr [rcx+90h],0h
	call	4558C0h
	mov	rdx,[rsp+20h]
	mov	rcx,rdi
	mov	rax,[rdx+68h]
	mov	byte ptr [rdx+79h],0h
	mov	byte ptr [rdx+7Ah],0h
	mov	qword ptr [rdx+28h],+0h
	mov	qword ptr [rdx+20h],+0h
	mov	qword ptr [rdx+30h],+0h
	mov	[rdx+8h],rax
	mov	[rdx+10h],rax
	mov	[rdx+18h],rax
	mov	eax,[rdx+5Ch]
	mov	[rdx+60h],eax
	mov	[rdx+64h],eax
	call	454D70h
	test	rax,rax
	jz	455B53h

l0000000000455B43:
	test	sil,sil
	jnz	455B53h

l0000000000455B48:
	mov	rax,rbx
	add	rsp,30h
	pop	rbx
	pop	rsi
	pop	rdi
	ret

l0000000000455B53:
	xor	eax,eax
	add	rsp,30h
	pop	rbx
	pop	rsi
	pop	rdi
	ret
0000000000455B5D                                        48 83 EA              H..
0000000000455B60 01 48 89 C1 75 12 E8 D5 FC 01 00 48 89 F9 E8 FD .H..u......H....
0000000000455B70 F1 FF FF E8 E8 04 02 00 E8 C3 FC 01 00 E8 EE FE ................
0000000000455B80 01 00 BE 01 00 00 00 E9 54 FF FF FF 48 89 C3 E8 ........T...H...
0000000000455B90 DC FE 01 00 48 8D 4C 24 20 E8 E2 F8 01 00 48 89 ....H.L$ .....H.
0000000000455BA0 D9 E8 0A BA FB FF 48 89 C3 EB E9 90 90 90 90 90 ......H.........

;; fn0000000000455BB0: 0000000000455BB0
fn0000000000455BB0 proc
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,40h
	mov	rbx,rcx
	mov	rcx,rdx
	mov	rsi,rdx
	call	4725E0h
	test	al,al
	jz	455CE3h

l0000000000455BCD:
	mov	rcx,rsi
	call	473080h
	mov	rsi,rax

l0000000000455BD8:
	lea	rcx,[rbx+48h]
	call	42AA50h
	test	al,al
	jnz	455BF4h

l0000000000455BE5:
	mov	[rbx+98h],rsi
	add	rsp,40h
	pop	rbx
	pop	rsi
	pop	rdi
	ret

l0000000000455BF4:
	cmp	byte ptr [rbx+79h],0h
	jz	455C90h

l0000000000455BFE:
	mov	rcx,[rbx+98h]
	test	rcx,rcx
	jz	455DA4h

l0000000000455C0E:
	mov	rax,[rcx]
	call	qword ptr [rax+28h]
	cmp	eax,0FFh
	jz	455C7Dh

l0000000000455C19:
	cmp	byte ptr [rbx+79h],0h
	jz	455CA0h

l0000000000455C23:
	mov	rcx,[rbx+98h]
	test	rcx,rcx
	jz	455DA4h

l0000000000455C33:
	mov	rax,[rcx]
	call	qword ptr [rax+30h]
	test	al,al
	jz	455CF0h

l0000000000455C41:
	test	rsi,rsi
	jz	455BE5h

l0000000000455C46:
	mov	rax,[rsi]
	mov	rcx,rsi
	call	qword ptr [rax+30h]
	test	al,al
	jnz	455BE5h

l0000000000455C53:
	mov	edx,[rbx+58h]
	mov	rax,[rbx]
	xor	r8d,r8d
	lea	rcx,[rsp+30h]
	mov	r9d,1h
	mov	[rsp+20h],edx
	mov	rdx,rbx
	call	qword ptr [rax+20h]
	cmp	qword ptr [rsp+30h],0FFh
	jnz	455BE5h

l0000000000455C7D:
	mov	qword ptr [rbx+98h],+0h
	add	rsp,40h
	pop	rbx
	pop	rsi
	pop	rdi
	ret

l0000000000455C90:
	cmp	byte ptr [rbx+7Ah],0h
	jz	455BE5h

l0000000000455C9A:
	jmp	455BFEh
0000000000455C9F                                              90                .

l0000000000455CA0:
	cmp	byte ptr [rbx+7Ah],0h
	jz	455BE5h

l0000000000455CAA:
	mov	rcx,rbx
	call	455600h
	test	al,al
	jz	455C7Dh

l0000000000455CB6:
	mov	rax,[rbx+68h]
	mov	qword ptr [rbx+28h],+0h
	mov	qword ptr [rbx+20h],+0h
	mov	qword ptr [rbx+30h],+0h
	mov	[rbx+8h],rax
	mov	[rbx+10h],rax
	mov	[rbx+18h],rax
	jmp	455BE5h

l0000000000455CE3:
	xor	esi,esi
	jmp	455BD8h
0000000000455CEA                               66 0F 1F 44 00 00           f..D..

l0000000000455CF0:
	mov	rcx,[rbx+98h]
	mov	rax,[rbx+10h]
	lea	rdx,[rbx+64h]
	sub	rax,[rbx+8h]
	mov	rdi,[rbx+0A0h]
	mov	r9,[rbx+0B0h]
	mov	r10,[rcx]
	mov	r8,rdi
	mov	[rsp+20h],rax
	call	qword ptr [r10+38h]
	cdqe
	lea	rdx,[rdi+rax]
	mov	rax,[rbx+0B8h]
	xor	edi,edi
	mov	[rbx+0B0h],rdx
	sub	rax,rdx
	jnz	455D90h

l0000000000455D3B:
	mov	rax,[rbx+0A0h]
	mov	qword ptr [rbx+28h],+0h
	mov	qword ptr [rbx+20h],+0h
	mov	qword ptr [rbx+30h],+0h
	add	rdi,rax
	mov	[rbx+0B0h],rax
	mov	rax,[rbx+68h]
	mov	[rbx+0B8h],rdi
	mov	[rbx+8h],rax
	mov	[rbx+10h],rax
	mov	[rbx+18h],rax
	mov	eax,[rbx+5Ch]
	mov	[rbx+60h],eax
	mov	[rbx+64h],eax
	jmp	455BE5h
0000000000455D89                            0F 1F 80 00 00 00 00          .......

l0000000000455D90:
	mov	rcx,[rbx+0A0h]
	mov	r8,rax
	mov	rdi,rax
	call	41BD28h
	jmp	455D3Bh

l0000000000455DA4:
	call	470820h
	nop
	nop
	nop
	nop
	nop
	nop
	nop

;; fn0000000000455DB0: 0000000000455DB0
;;   Called from:
;;     0000000000455DAF (in fn0000000000455BB0)
fn0000000000455DB0 proc
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,20h
	mov	rbx,rcx
	lea	rcx,[rcx+48h]
	mov	rsi,rdx
	mov	rdi,r8
	call	42AA50h
	test	al,al
	jnz	455DDFh

l0000000000455DCD:
	test	rsi,rsi
	jnz	455DF0h

l0000000000455DD2:
	test	rdi,rdi
	jnz	455DF0h

l0000000000455DD7:
	mov	qword ptr [rbx+70h],+1h

l0000000000455DDF:
	mov	rax,rbx
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	ret
0000000000455DEA                               66 0F 1F 44 00 00           f..D..

l0000000000455DF0:
	test	rsi,rsi
	jz	455DDFh

l0000000000455DF5:
	test	rdi,rdi
	jle	455DDFh

l0000000000455DFA:
	mov	rax,rbx
	mov	[rbx+68h],rsi
	mov	[rbx+70h],rdi
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	ret
0000000000455E0D                                        90 90 90              ...

;; fn0000000000455E10: 0000000000455E10
fn0000000000455E10 proc
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,20h
	cmp	byte ptr [rcx+90h],0h
	mov	rbp,rcx
	mov	rsi,rdx
	mov	rbx,r8
	jz	455F50h

l0000000000455E30:
	test	r8,r8
	mov	rax,[rcx+10h]
	mov	rdx,[rcx+8h]
	jle	455E46h

l0000000000455E3D:
	cmp	rax,rdx
	jz	455FBFh

l0000000000455E46:
	xor	edi,edi

l0000000000455E48:
	cmp	rax,rdx
	mov	rcx,[rbp+68h]
	mov	rdx,[rbp+88h]
	setnz	al
	mov	byte ptr [rbp+90h],0h
	movzx	eax,al
	add	rax,[rbp+80h]
	mov	[rbp+8h],rcx
	mov	[rbp+18h],rdx
	mov	[rbp+80h],rax
	mov	[rbp+10h],rax

l0000000000455E7D:
	mov	rdx,[rbp+70h]
	mov	r12d,[rbp+58h]
	lea	rax,[rdx-1h]
	cmp	rdx,2h
	mov	edx,1h
	cmovc	rax,rdx

l0000000000455E96:
	cmp	rbx,rax
	jle	455FA0h

l0000000000455E9F:
	mov	rcx,[rbp+98h]
	test	rcx,rcx
	jz	45609Ah

l0000000000455EAF:
	mov	rax,[rcx]
	call	qword ptr [rax+30h]
	test	al,al
	jz	455FA0h

l0000000000455EBD:
	and	r12d,8h
	jz	455FA0h

l0000000000455EC7:
	mov	rdx,[rbp+10h]
	mov	r12,[rbp+18h]
	sub	r12,rdx
	jnz	455FF2h

l0000000000455ED8:
	lea	r12,[rbp+48h]
	jmp	455EEFh
0000000000455EDE                                           66 90               f.

l0000000000455EE0:
	add	rdi,rax
	sub	rbx,rax
	jz	456010h

l0000000000455EEC:
	add	rsi,rax

l0000000000455EEF:
	mov	r8,rbx
	mov	rdx,rsi
	mov	rcx,r12
	call	454DE0h
	cmp	rax,0FFh
	jz	45607Dh

l0000000000455F07:
	test	rax,rax
	jnz	455EE0h

l0000000000455F0C:
	test	rbx,rbx
	jz	456010h

l0000000000455F15:
	mov	rax,[rbp+68h]
	mov	qword ptr [rbp+28h],+0h
	mov	qword ptr [rbp+20h],+0h
	mov	qword ptr [rbp+30h],+0h
	mov	byte ptr [rbp+79h],0h
	mov	[rbp+8h],rax
	mov	[rbp+10h],rax
	mov	[rbp+18h],rax
	mov	rax,rdi
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
0000000000455F4F                                              90                .

l0000000000455F50:
	xor	edi,edi
	cmp	byte ptr [rcx+7Ah],0h
	jz	455E7Dh

l0000000000455F5C:
	mov	rax,[rcx]
	mov	edx,0FFFFFFFFh
	call	qword ptr [rax+68h]
	cmp	eax,0FFh
	jz	455FB1h

l0000000000455F6C:
	mov	rax,[rbp+68h]
	mov	qword ptr [rbp+28h],+0h
	mov	qword ptr [rbp+20h],+0h
	mov	qword ptr [rbp+30h],+0h
	mov	byte ptr [rbp+7Ah],0h
	mov	[rbp+8h],rax
	mov	[rbp+10h],rax
	mov	[rbp+18h],rax
	jmp	455E7Dh
0000000000455F9D                                        0F 1F 00              ...

l0000000000455FA0:
	mov	r8,rbx
	mov	rdx,rsi
	mov	rcx,rbp
	call	462650h
	add	rdi,rax

l0000000000455FB1:
	mov	rax,rdi
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret

l0000000000455FBF:
	movzx	eax,byte ptr [rax]
	sub	rbx,1h
	lea	rcx,[rsi+1h]
	mov	[rsi],al
	mov	rax,[rbp+10h]
	add	rax,1h
	cmp	byte ptr [rbp+90h],0h
	mov	[rbp+10h],rax
	jnz	456089h

l0000000000455FE5:
	mov	rsi,rcx
	mov	edi,1h
	jmp	455E7Dh

l0000000000455FF2:
	mov	rcx,rsi
	mov	r8,r12
	add	rsi,r12
	call	41BCC0h
	add	rdi,r12
	add	[rbp+10h],r12
	sub	rbx,r12
	jmp	455ED8h
000000000045600F                                              90                .

l0000000000456010:
	test	byte ptr [rbp+58h],11h
	jnz	456050h

l0000000000456016:
	mov	rax,[rbp+68h]
	mov	[rbp+8h],rax
	mov	[rbp+10h],rax
	mov	[rbp+18h],rax

l0000000000456026:
	mov	qword ptr [rbp+28h],+0h
	mov	qword ptr [rbp+20h],+0h
	mov	qword ptr [rbp+30h],+0h

l000000000045603E:
	mov	rax,rdi
	mov	byte ptr [rbp+79h],1h
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret

l0000000000456050:
	mov	rdx,[rbp+70h]
	mov	rax,[rbp+68h]
	cmp	rdx,1h
	mov	[rbp+8h],rax
	mov	[rbp+10h],rax
	mov	[rbp+18h],rax
	jbe	456026h

l000000000045606A:
	mov	[rbp+28h],rax
	mov	[rbp+20h],rax
	lea	rax,[rax+rdx-1h]
	mov	[rbp+30h],rax
	jmp	45603Eh

l000000000045607D:
	lea	rcx,[000000000048D540]                                 ; [rip+000374BC]
	call	470B20h

l0000000000456089:
	mov	rdx,[rbp+8h]
	mov	rsi,rcx
	mov	edi,1h
	jmp	455E48h

l000000000045609A:
	call	470820h
	nop

;; fn00000000004560A0: 00000000004560A0
;;   Called from:
;;     000000000045609F (in fn0000000000455E10)
fn00000000004560A0 proc
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,38h
	test	byte ptr [rcx+58h],11h
	mov	rbx,rcx
	mov	rcx,[rcx+98h]
	mov	rdi,rdx
	mov	rsi,r8
	setnz	bpl
	test	rcx,rcx
	jz	4561D1h

l00000000004560C9:
	mov	rax,[rcx]
	call	qword ptr [rax+30h]
	test	al,al
	jz	456151h

l00000000004560D3:
	test	bpl,bpl
	jz	456151h

l00000000004560D8:
	cmp	byte ptr [rbx+79h],0h
	jnz	456151h

l00000000004560DE:
	mov	rbp,[rbx+28h]
	mov	rax,[rbx+30h]
	sub	rax,rbp
	cmp	byte ptr [rbx+7Ah],0h
	jnz	4560FFh

l00000000004560EF:
	mov	rdx,[rbx+70h]
	lea	rcx,[rdx-1h]
	cmp	rdx,2h
	cmovnc	rax,rcx

l00000000004560FF:
	cmp	rax,+3FFh
	mov	edx,400h
	cmovg	rax,rdx

l000000000045610E:
	cmp	rax,rsi
	jg	456151h

l0000000000456113:
	mov	rdx,[rbx+20h]
	lea	rcx,[rbx+48h]
	mov	[rsp+20h],rsi
	mov	r9,rdi
	sub	rbp,rdx
	mov	r8,rbp
	add	rsi,rbp
	call	454FA0h
	cmp	rax,rsi
	jz	456170h

l0000000000456136:
	mov	rdx,rax
	sub	rdx,rbp
	cmp	rbp,rax
	mov	eax,0h
	cmovl	rax,rdx

l0000000000456148:
	add	rsp,38h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret

l0000000000456151:
	mov	r8,rsi
	mov	rdx,rdi
	mov	rcx,rbx
	add	rsp,38h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	jmp	462720h
0000000000456167                      66 0F 1F 84 00 00 00 00 00        f........

l0000000000456170:
	test	byte ptr [rbx+58h],11h
	jnz	4561A4h

l0000000000456176:
	mov	rdx,[rbx+68h]
	mov	[rbx+8h],rdx
	mov	[rbx+10h],rdx
	mov	[rbx+18h],rdx

l0000000000456186:
	mov	qword ptr [rbx+28h],+0h
	mov	qword ptr [rbx+20h],+0h
	mov	qword ptr [rbx+30h],+0h

l000000000045619E:
	mov	byte ptr [rbx+7Ah],1h
	jmp	456136h

l00000000004561A4:
	mov	rcx,[rbx+70h]
	mov	rdx,[rbx+68h]
	cmp	rcx,1h
	mov	[rbx+8h],rdx
	mov	[rbx+10h],rdx
	mov	[rbx+18h],rdx
	jbe	456186h

l00000000004561BE:
	mov	[rbx+28h],rdx
	mov	[rbx+20h],rdx
	lea	rdx,[rdx+rcx-1h]
	mov	[rbx+30h],rdx
	jmp	45619Eh

l00000000004561D1:
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

;; fn00000000004561E0: 00000000004561E0
;;   Called from:
;;     00000000004561DF (in fn00000000004560A0)
;;     0000000000456400 (in fn00000000004562A0)
;;     00000000004564BB (in fn0000000000456470)
;;     000000000045656C (in fn0000000000456520)
fn00000000004561E0 proc
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,28h
	mov	qword ptr [rcx],-1h
	mov	dword ptr [rcx+8h],0h
	mov	rsi,rcx
	mov	rcx,rdx
	mov	rbx,rdx
	mov	rdi,r8
	mov	ebp,r9d
	call	455600h
	test	al,al
	jnz	456220h

l000000000045620E:
	mov	rax,rsi
	add	rsp,28h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
000000000045621A                               66 0F 1F 44 00 00           f..D..

l0000000000456220:
	lea	rcx,[rbx+48h]
	mov	r8d,ebp
	mov	rdx,rdi
	call	454E80h
	cmp	rax,0FFh
	jz	45620Eh

l0000000000456235:
	mov	rdx,[rbx+0A0h]
	mov	edi,[rsp+70h]
	mov	[rsi],rax
	mov	rax,rsi
	mov	byte ptr [rbx+79h],0h
	mov	byte ptr [rbx+7Ah],0h
	mov	qword ptr [rbx+28h],+0h
	mov	[rbx+0B8h],rdx
	mov	[rbx+0B0h],rdx
	mov	rdx,[rbx+68h]
	mov	qword ptr [rbx+20h],+0h
	mov	qword ptr [rbx+30h],+0h
	mov	[rbx+60h],edi
	mov	[rsi+8h],edi
	mov	[rbx+8h],rdx
	mov	[rbx+10h],rdx
	mov	[rbx+18h],rdx
	add	rsp,28h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
0000000000456293          90 90 90 90 90 90 90 90 90 90 90 90 90    .............

;; fn00000000004562A0: 00000000004562A0
fn00000000004562A0 proc
	push	r14
	push	r13
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,60h
	mov	rsi,rcx
	mov	rcx,[rdx+98h]
	mov	rbx,rdx
	mov	rbp,r8
	mov	r12d,r9d
	test	rcx,rcx
	jz	4562E0h

l00000000004562C6:
	mov	rax,[rcx]
	call	qword ptr [rax+28h]
	cmp	eax,0h
	mov	r13d,eax
	jl	4562E0h

l00000000004562D4:
	setle	dil
	jmp	4562E8h
00000000004562DA                               66 0F 1F 44 00 00           f..D..

l00000000004562E0:
	mov	edi,1h
	xor	r13d,r13d

l00000000004562E8:
	test	rbp,rbp
	lea	r14,[rbx+48h]
	mov	qword ptr [rsi],-1h
	setnz	dl
	mov	dword ptr [rsi+8h],0h
	and	edi,edx
	mov	rcx,r14
	call	42AA50h
	cmp	al,dil
	jbe	45636Bh

l000000000045630F:
	cmp	r12d,1h
	setz	dil
	test	rbp,rbp
	jnz	456391h

l000000000045631C:
	test	dil,dil
	jz	456391h

l0000000000456321:
	cmp	byte ptr [rbx+7Ah],0h
	jnz	456380h

l0000000000456327:
	cmp	byte ptr [rbx+79h],0h
	mov	eax,[rbx+5Ch]
	mov	[rsp+5Ch],eax
	jnz	456420h

l0000000000456338:
	xor	edi,edi

l000000000045633A:
	cmp	byte ptr [rbx+7Ah],0h
	jz	456348h

l0000000000456340:
	mov	rdi,[rbx+28h]
	sub	rdi,[rbx+20h]

l0000000000456348:
	xor	edx,edx
	mov	r8d,1h
	mov	rcx,r14
	call	454E80h
	cmp	rax,0FFh
	jz	45636Bh

l000000000045635E:
	add	rdi,rax
	mov	eax,[rsp+5Ch]
	mov	[rsi],rdi
	mov	[rsi+8h],eax

l000000000045636B:
	mov	rax,rsi
	add	rsp,60h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	ret
000000000045637D                                        0F 1F 00              ...

l0000000000456380:
	mov	rcx,[rbx+98h]
	mov	rax,[rcx]
	call	qword ptr [rax+30h]
	test	al,al
	jnz	456327h

l0000000000456391:
	cmp	byte ptr [rbx+90h],0h
	jz	4563D4h

l000000000045639A:
	mov	rax,[rbx+8h]
	cmp	[rbx+10h],rax
	mov	rdx,[rbx+88h]
	mov	rcx,[rbx+68h]
	mov	byte ptr [rbx+90h],0h
	setnz	al
	mov	[rbx+8h],rcx
	mov	[rbx+18h],rdx
	movzx	eax,al
	add	rax,[rbx+80h]
	mov	[rbx+80h],rax
	mov	[rbx+10h],rax

l00000000004563D4:
	mov	eax,[rbx+5Ch]
	movsxd	r8,r13d
	imul	r8,rbp
	test	dil,dil
	mov	[rsp+5Ch],eax
	jz	4563EDh

l00000000004563E7:
	cmp	byte ptr [rbx+79h],0h
	jnz	456440h

l00000000004563ED:
	mov	eax,[rsp+5Ch]
	lea	rcx,[rsp+40h]
	mov	r9d,r12d
	mov	rdx,rbx
	mov	[rsp+20h],eax
	call	4561E0h
	mov	rax,[rsp+40h]
	mov	[rsi],rax
	mov	eax,[rsp+48h]
	mov	[rsi+8h],eax
	jmp	45636Bh
0000000000456419                            0F 1F 80 00 00 00 00          .......

l0000000000456420:
	mov	eax,[rbx+64h]
	lea	rdx,[rsp+5Ch]
	mov	rcx,rbx
	mov	[rsp+5Ch],eax
	call	455500h
	movsxd	rdi,eax
	jmp	45633Ah
000000000045643C                                     0F 1F 40 00             ..@.

l0000000000456440:
	mov	eax,[rbx+64h]
	lea	rdx,[rsp+5Ch]
	mov	rcx,rbx
	mov	[rsp+38h],r8
	mov	[rsp+5Ch],eax
	call	455500h
	mov	r8,[rsp+38h]
	cdqe
	add	r8,rax
	jmp	4563EDh
0000000000456465                90 90 90 90 90 90 90 90 90 90 90      ...........

;; fn0000000000456470: 0000000000456470
fn0000000000456470 proc
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,48h
	mov	rdi,[r8]
	mov	rbp,[r8+8h]
	mov	qword ptr [rcx],-1h
	mov	dword ptr [rcx+8h],0h
	mov	rbx,rcx
	lea	rcx,[rdx+48h]
	mov	rsi,rdx
	call	42AA50h
	test	al,al
	jz	4564CFh

l00000000004564A0:
	cmp	byte ptr [rsi+90h],0h
	jnz	4564E0h

l00000000004564A9:
	lea	rcx,[rsp+30h]
	mov	[rsp+20h],ebp
	xor	r9d,r9d
	mov	r8,rdi
	mov	rdx,rsi
	call	4561E0h
	mov	rax,[rsp+30h]
	mov	[rbx],rax
	mov	eax,[rsp+38h]
	mov	[rbx+8h],eax

l00000000004564CF:
	mov	rax,rbx
	add	rsp,48h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
00000000004564DB                                  0F 1F 44 00 00            ..D..

l00000000004564E0:
	mov	rax,[rsi+8h]
	cmp	[rsi+10h],rax
	mov	rdx,[rsi+88h]
	mov	rcx,[rsi+68h]
	mov	byte ptr [rsi+90h],0h
	setnz	al
	mov	[rsi+8h],rcx
	mov	[rsi+18h],rdx
	movzx	eax,al
	add	rax,[rsi+80h]
	mov	[rsi+80h],rax
	mov	[rsi+10h],rax
	jmp	4564A9h
000000000045651C                                     90 90 90 90             ....

;; fn0000000000456520: 0000000000456520
fn0000000000456520 proc
	push	rsi
	push	rbx
	sub	rsp,58h
	test	byte ptr [rcx+58h],11h
	mov	rbx,rcx
	mov	esi,edx
	jz	4565B6h

l0000000000456535:
	cmp	byte ptr [rcx+79h],0h
	jz	456579h

l000000000045653B:
	cmp	byte ptr [rbx+90h],0h
	jnz	456645h

l0000000000456548:
	lea	rdx,[rbx+64h]
	mov	rcx,rbx
	call	455500h
	mov	edx,[rbx+64h]
	lea	rcx,[rsp+30h]
	mov	r9d,1h
	movsxd	r8,eax
	mov	[rsp+20h],edx
	mov	rdx,rbx
	call	4561E0h
	cmp	qword ptr [rsp+30h],0FFh
	jz	4565B6h

l0000000000456579:
	mov	rdx,[rbx+20h]
	mov	r8,[rbx+28h]
	cmp	esi,0FFh
	setz	al
	cmp	rdx,r8
	jnc	4565C4h

l000000000045658C:
	test	al,al
	jnz	4565A3h

l0000000000456590:
	mov	[r8],sil
	mov	rax,[rbx+28h]
	mov	rdx,[rbx+20h]
	lea	r8,[rax+1h]
	mov	[rbx+28h],r8

l00000000004565A3:
	sub	r8,rdx
	mov	rcx,rbx
	call	455750h
	test	al,al
	jnz	456684h

l00000000004565B6:
	mov	esi,0FFFFFFFFh
	mov	eax,esi
	add	rsp,58h
	pop	rbx
	pop	rsi
	ret

l00000000004565C4:
	mov	rcx,[rbx+70h]
	cmp	rcx,1h
	jbe	456620h

l00000000004565CE:
	test	byte ptr [rbx+58h],11h
	jnz	4566F0h

l00000000004565D8:
	mov	rdx,[rbx+68h]
	mov	qword ptr [rbx+28h],+0h
	mov	qword ptr [rbx+20h],+0h
	mov	qword ptr [rbx+30h],+0h
	mov	[rbx+8h],rdx
	mov	[rbx+10h],rdx
	mov	[rbx+18h],rdx

l0000000000456600:
	test	al,al
	mov	byte ptr [rbx+7Ah],1h
	jnz	456631h

l0000000000456608:
	mov	rax,[rbx+28h]
	mov	[rax],sil
	add	qword ptr [rbx+28h],1h
	jmp	456631h
0000000000456616                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l0000000000456620:
	test	al,al
	mov	[rsp+4Fh],sil
	jz	456720h

l000000000045662D:
	mov	byte ptr [rbx+7Ah],1h

l0000000000456631:
	cmp	esi,0FFh
	mov	eax,0h
	cmovz	esi,eax

l000000000045663C:
	mov	eax,esi
	add	rsp,58h
	pop	rbx
	pop	rsi
	ret

l0000000000456645:
	mov	rax,[rbx+8h]
	cmp	[rbx+10h],rax
	mov	rdx,[rbx+88h]
	mov	rcx,[rbx+68h]
	mov	byte ptr [rbx+90h],0h
	setnz	al
	mov	[rbx+8h],rcx
	mov	[rbx+18h],rdx
	movzx	eax,al
	add	rax,[rbx+80h]
	mov	[rbx+80h],rax
	mov	[rbx+10h],rax
	jmp	456548h

l0000000000456684:
	test	byte ptr [rbx+58h],11h
	jnz	4566C0h

l000000000045668A:
	mov	rax,[rbx+68h]
	mov	[rbx+8h],rax
	mov	[rbx+10h],rax
	mov	[rbx+18h],rax

l000000000045669A:
	mov	qword ptr [rbx+28h],+0h
	mov	qword ptr [rbx+20h],+0h
	mov	qword ptr [rbx+30h],+0h
	jmp	456631h
00000000004566B7                      66 0F 1F 84 00 00 00 00 00        f........

l00000000004566C0:
	mov	rdx,[rbx+70h]
	mov	rax,[rbx+68h]
	cmp	rdx,1h
	mov	[rbx+8h],rax
	mov	[rbx+10h],rax
	mov	[rbx+18h],rax
	jbe	45669Ah

l00000000004566DA:
	mov	[rbx+28h],rax
	mov	[rbx+20h],rax
	lea	rax,[rax+rdx-1h]
	mov	[rbx+30h],rax
	jmp	456631h

l00000000004566F0:
	mov	rdx,[rbx+68h]
	mov	[rbx+8h],rdx
	mov	[rbx+10h],rdx
	mov	[rbx+18h],rdx
	mov	[rbx+28h],rdx
	mov	[rbx+20h],rdx
	lea	rdx,[rdx+rcx-1h]
	mov	[rbx+30h],rdx
	jmp	456600h
0000000000456716                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l0000000000456720:
	lea	rdx,[rsp+4Fh]
	mov	r8d,1h
	mov	rcx,rbx
	call	455750h
	test	al,al
	jnz	45662Dh

l000000000045673B:
	jmp	4565B6h

;; fn0000000000456740: 0000000000456740
fn0000000000456740 proc
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,48h
	test	byte ptr [rcx+58h],8h
	mov	rbx,rcx
	mov	esi,edx
	jz	456840h

l0000000000456757:
	cmp	byte ptr [rcx+7Ah],0h
	jnz	4567B2h

l000000000045675D:
	cmp	edx,0FFh
	mov	rax,[rcx+10h]
	movzx	ebp,byte ptr [rcx+90h]
	setz	dil
	cmp	[rcx+8h],rax
	jnc	4567FCh

l0000000000456779:
	lea	rdx,[rax-1h]
	mov	[rcx+10h],rdx
	movzx	eax,byte ptr [rax-1h]

l0000000000456785:
	cmp	esi,eax
	setz	al
	cmp	dil,al
	jc	456845h

l0000000000456793:
	test	dil,dil
	jz	456850h

l000000000045679C:
	cmp	esi,0FFh
	mov	eax,0h
	cmovz	esi,eax

l00000000004567A7:
	mov	eax,esi
	add	rsp,48h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret

l00000000004567B2:
	mov	rax,[rcx]
	mov	edx,0FFFFFFFFh
	call	qword ptr [rax+68h]
	cmp	eax,0FFh
	jz	456840h

l00000000004567C2:
	mov	rax,[rbx+68h]
	movzx	ebp,byte ptr [rbx+90h]
	cmp	esi,0FFh
	mov	qword ptr [rbx+28h],+0h
	mov	qword ptr [rbx+20h],+0h
	setz	dil
	mov	qword ptr [rbx+30h],+0h
	mov	byte ptr [rbx+7Ah],0h
	mov	[rbx+8h],rax
	mov	[rbx+10h],rax
	mov	[rbx+18h],rax

l00000000004567FC:
	mov	rax,[rbx]
	lea	rcx,[rsp+30h]
	mov	dword ptr [rsp+20h],18h
	mov	r9d,1h
	mov	r8,-1h
	mov	rdx,rbx
	call	qword ptr [rax+20h]
	cmp	qword ptr [rsp+30h],0FFh
	jz	456840h

l0000000000456827:
	mov	rax,[rbx]
	mov	rcx,rbx
	call	qword ptr [rax+48h]
	cmp	eax,0FFh
	jnz	456785h

l0000000000456839:
	nop	dword ptr [rax+0h]

l0000000000456840:
	mov	esi,0FFFFFFFFh

l0000000000456845:
	mov	eax,esi
	add	rsp,48h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret

l0000000000456850:
	test	bpl,bpl
	jnz	456840h

l0000000000456855:
	cmp	byte ptr [rbx+90h],0h
	mov	rax,[rbx+10h]
	jz	456870h

l0000000000456862:
	mov	byte ptr [rbx+79h],1h
	mov	[rax],sil
	jmp	456845h
000000000045686B                                  0F 1F 44 00 00            ..D..

l0000000000456870:
	mov	[rbx+80h],rax
	mov	rax,[rbx+18h]
	lea	rdx,[rbx+7Ch]
	mov	byte ptr [rbx+90h],1h
	mov	[rbx+18h],rdx
	mov	[rbx+88h],rax
	lea	rax,[rbx+7Bh]
	mov	[rbx+8h],rax
	mov	[rbx+10h],rax
	jmp	456862h
000000000045689F                                              90                .

;; fn00000000004568A0: 00000000004568A0
fn00000000004568A0 proc
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,28h
	mov	ebx,[rcx+58h]
	test	bl,8h
	jz	456920h

l00000000004568B0:
	lea	rbp,[rcx+48h]
	mov	rsi,rcx
	mov	rcx,rbp
	call	42AA50h
	test	al,al
	jz	456920h

l00000000004568C3:
	mov	rcx,[rsi+98h]
	mov	rdi,[rsi+18h]
	and	ebx,4h
	sub	rdi,[rsi+10h]
	test	rcx,rcx
	jz	456933h

l00000000004568DA:
	mov	rdx,[rcx]
	call	qword ptr [rdx+28h]
	test	eax,eax
	js	456927h

l00000000004568E4:
	test	ebx,ebx
	jz	456927h

l00000000004568E8:
	mov	rcx,rbp
	call	455020h
	mov	rcx,[rsi+98h]
	mov	rbx,rax
	mov	rax,[rcx]
	call	qword ptr [rax+40h]
	movsxd	rcx,eax
	mov	rax,rbx
	cqo
	idiv	rcx
	add	rdi,rax
	mov	rax,rdi
	add	rsp,28h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
000000000045691A                               66 0F 1F 44 00 00           f..D..

l0000000000456920:
	mov	rdi,-1h

l0000000000456927:
	mov	rax,rdi
	add	rsp,28h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret

l0000000000456933:
	call	470820h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop

;; fn0000000000456940: 0000000000456940
;;   Called from:
;;     000000000045693F (in fn00000000004568A0)
fn0000000000456940 proc
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,58h
	test	byte ptr [rcx+58h],8h
	jz	456B65h

l000000000045695A:
	cmp	byte ptr [rcx+7Ah],0h
	mov	rbx,rcx
	jnz	456BD0h

l0000000000456967:
	mov	rax,[rcx+10h]

l000000000045696B:
	cmp	byte ptr [rbx+90h],0h
	jnz	456CA0h

l0000000000456978:
	mov	rdx,[rbx+18h]

l000000000045697C:
	cmp	rdx,rax
	ja	456BC2h

l0000000000456985:
	mov	rax,[rbx+70h]
	mov	rcx,[rbx+98h]
	lea	rbp,[rax-1h]
	cmp	rax,2h
	mov	eax,1h
	cmovc	rbp,rax

l00000000004569A1:
	test	rcx,rcx
	jz	456E0Eh

l00000000004569AA:
	mov	rax,[rcx]
	call	qword ptr [rax+30h]
	test	al,al
	jnz	456B10h

l00000000004569B8:
	mov	rcx,[rbx+98h]
	mov	rax,[rcx]
	call	qword ptr [rax+28h]
	test	eax,eax
	jle	456DCCh

l00000000004569CD:
	cdqe
	imul	rax,rbp
	mov	rsi,rax

l00000000004569D6:
	mov	rdx,[rbx+0B0h]
	mov	rdi,[rbx+0B8h]
	mov	r15,rax
	xor	ecx,ecx
	sub	rdi,rdx
	sub	r15,rdi
	cmp	rax,rdi
	cmovle	r15,rcx

l00000000004569F6:
	cmp	byte ptr [rbx+79h],0h
	jz	456A0Dh

l00000000004569FC:
	mov	rax,[rbx+8h]
	cmp	[rbx+18h],rax
	jnz	456A0Dh

l0000000000456A06:
	test	rdi,rdi
	cmovnz	r15,rcx

l0000000000456A0D:
	cmp	rsi,[rbx+0A8h]
	jg	456D61h

l0000000000456A1A:
	test	rdi,rdi
	jnz	456DA0h

l0000000000456A23:
	mov	rax,[rbx+0A0h]
	xor	r13d,r13d

l0000000000456A2D:
	lea	rdx,[rax+r13]
	mov	[rbx+0B0h],rax
	mov	eax,[rbx+60h]
	xor	edi,edi
	xor	esi,esi
	test	r15,r15
	mov	[rbx+0B8h],rdx
	lea	r12,[rbx+48h]
	lea	r13,[rbx+60h]
	mov	[rbx+64h],eax
	lea	r14,[rsp+48h]
	jg	456ACDh

l0000000000456A5B:
	jmp	456C90h

l0000000000456A60:
	xor	r15d,r15d
	cmp	rax,0FFh
	jz	456B80h

l0000000000456A6D:
	add	rax,[rbx+0B8h]
	mov	rdx,rax
	mov	[rbx+0B8h],rax

l0000000000456A7E:
	mov	r8,[rbx+0B0h]
	mov	r9,[rbx+8h]
	cmp	rdx,r8
	mov	[rsp+48h],r9
	ja	456C11h

l0000000000456A97:
	cmp	edi,3h
	jz	456C52h

l0000000000456AA0:
	mov	rsi,[rsp+48h]
	sub	rsi,r9
	cmp	edi,2h
	jz	456B80h

l0000000000456AB1:
	test	rsi,rsi
	setz	al
	cmp	r15b,al
	jnc	456B80h

l0000000000456AC0:
	mov	rdx,[rbx+0B8h]
	mov	r15d,1h

l0000000000456ACD:
	mov	rax,rdx
	sub	rax,[rbx+0A0h]
	add	rax,r15
	cmp	rax,[rbx+0A8h]
	jg	456E02h

l0000000000456AE7:
	mov	r8,r15
	mov	rcx,r12
	call	454DE0h
	test	rax,rax
	jnz	456A60h

l0000000000456AFB:
	mov	r15d,1h
	jmp	456A6Dh
0000000000456B06                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l0000000000456B10:
	mov	rdx,[rbx+8h]
	lea	rcx,[rbx+48h]
	mov	r8,rbp
	call	454DE0h
	cmp	rax,0h
	mov	rsi,rax
	jnz	456D10h

l0000000000456B2D:
	xor	edi,edi
	test	byte ptr [rbx+58h],10h
	jz	456D20h

l0000000000456B39:
	mov	rax,[rbx+68h]
	mov	qword ptr [rbx+28h],+0h
	mov	qword ptr [rbx+20h],+0h
	mov	qword ptr [rbx+30h],+0h
	mov	byte ptr [rbx+79h],0h
	mov	[rbx+8h],rax
	mov	[rbx+10h],rax
	mov	[rbx+18h],rax

l0000000000456B65:
	mov	eax,0FFFFFFFFh

l0000000000456B6A:
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
0000000000456B7B                                  0F 1F 44 00 00            ..D..

l0000000000456B80:
	test	rsi,rsi
	jle	456CE0h

l0000000000456B89:
	test	byte ptr [rbx+58h],8h
	mov	rax,[rbx+68h]
	mov	[rbx+8h],rax
	mov	[rbx+10h],rax
	jz	456D00h

l0000000000456B9F:
	add	rsi,rax
	mov	[rbx+18h],rsi

l0000000000456BA6:
	mov	qword ptr [rbx+28h],+0h
	mov	qword ptr [rbx+20h],+0h
	mov	qword ptr [rbx+30h],+0h
	mov	byte ptr [rbx+79h],1h

l0000000000456BC2:
	movzx	eax,byte ptr [rax]
	jmp	456B6Ah
0000000000456BC7                      66 0F 1F 84 00 00 00 00 00        f........

l0000000000456BD0:
	mov	rax,[rcx]
	mov	edx,0FFFFFFFFh
	call	qword ptr [rax+68h]
	cmp	eax,0FFh
	jz	456B6Ah

l0000000000456BE0:
	mov	rax,[rbx+68h]
	mov	qword ptr [rbx+28h],+0h
	mov	qword ptr [rbx+20h],+0h
	mov	qword ptr [rbx+30h],+0h
	mov	byte ptr [rbx+7Ah],0h
	mov	[rbx+8h],rax
	mov	[rbx+10h],rax
	mov	[rbx+18h],rax
	jmp	45696Bh

l0000000000456C11:
	mov	rcx,[rbx+98h]
	lea	r10,[r9+rbp]
	mov	rax,[rcx]
	mov	[rsp+28h],r9
	lea	r9,[rbx+0B0h]
	mov	[rsp+38h],r14
	mov	[rsp+30h],r10
	mov	[rsp+20h],r9
	mov	r9,rdx
	mov	rdx,r13
	call	qword ptr [rax+20h]
	mov	edi,eax
	mov	r9,[rbx+8h]
	cmp	edi,3h
	jnz	456AA0h

l0000000000456C52:
	mov	rdx,[rbx+0A0h]
	mov	rsi,[rbx+0B8h]
	mov	rcx,r9
	sub	rsi,rdx
	cmp	rbp,rsi
	cmovbe	rsi,rbp

l0000000000456C6D:
	mov	r8,rsi
	call	41BCC0h
	mov	rax,rsi
	add	rax,[rbx+0A0h]
	mov	[rbx+0B0h],rax
	jmp	456AB1h
0000000000456C8B                                  0F 1F 44 00 00            ..D..

l0000000000456C90:
	xor	r15d,r15d
	jmp	456A7Eh
0000000000456C98                         0F 1F 84 00 00 00 00 00         ........

l0000000000456CA0:
	cmp	[rbx+8h],rax
	mov	rdx,[rbx+88h]
	mov	rcx,[rbx+68h]
	mov	byte ptr [rbx+90h],0h
	mov	[rbx+18h],rdx
	setnz	al
	mov	[rbx+8h],rcx
	movzx	eax,al
	add	rax,[rbx+80h]
	mov	[rbx+80h],rax
	mov	[rbx+10h],rax
	jmp	45697Ch
0000000000456CDB                                  0F 1F 44 00 00            ..D..

l0000000000456CE0:
	test	r15b,r15b
	jnz	456D20h

l0000000000456CE5:
	cmp	edi,2h
	jz	456DC0h

l0000000000456CEE:
	lea	rcx,[000000000048D510]                                 ; [rip+0003681B]
	call	470B20h
	nop	word ptr [rax+rax+0h]

l0000000000456D00:
	mov	[rbx+18h],rax
	jmp	456BA6h
0000000000456D09                            0F 1F 80 00 00 00 00          .......

l0000000000456D10:
	jg	456B89h

l0000000000456D16:
	jmp	456CEEh
0000000000456D18                         0F 1F 84 00 00 00 00 00         ........

l0000000000456D20:
	mov	rax,[rbx+68h]
	cmp	edi,1h
	mov	qword ptr [rbx+28h],+0h
	mov	qword ptr [rbx+20h],+0h
	mov	qword ptr [rbx+30h],+0h
	mov	byte ptr [rbx+79h],0h
	mov	[rbx+8h],rax
	mov	[rbx+10h],rax
	mov	[rbx+18h],rax
	jnz	456B65h

l0000000000456D55:
	lea	rcx,[000000000048D4A0]                                 ; [rip+00036744]
	call	470B20h

l0000000000456D61:
	mov	rcx,rsi
	xor	r13d,r13d
	call	475560h
	test	rdi,rdi
	mov	r12,rax
	jnz	456DE8h

l0000000000456D74:
	mov	rcx,[rbx+0A0h]
	test	rcx,rcx
	jz	456D85h

l0000000000456D80:
	call	475540h

l0000000000456D85:
	mov	[rbx+0A0h],r12
	mov	[rbx+0A8h],rsi
	mov	rax,r12
	jmp	456A2Dh
0000000000456D9B                                  0F 1F 44 00 00            ..D..

l0000000000456DA0:
	mov	rcx,[rbx+0A0h]
	mov	r8,rdi
	mov	r13,rdi
	call	41BD28h
	mov	rax,[rbx+0A0h]
	jmp	456A2Dh
0000000000456DBE                                           66 90               f.

l0000000000456DC0:
	lea	rcx,[000000000048D4D8]                                 ; [rip+00036711]
	call	470B20h

l0000000000456DCC:
	mov	rcx,[rbx+98h]
	mov	rax,[rcx]
	call	qword ptr [rax+40h]
	cdqe
	lea	rsi,[rbp+rax-1h]
	mov	rax,rbp
	jmp	4569D6h

l0000000000456DE8:
	mov	rdx,[rbx+0B0h]
	mov	r8,rdi
	mov	rcx,rax
	mov	r13,rdi
	call	41BCC0h
	jmp	456D74h

l0000000000456E02:
	lea	rcx,[000000000048D460]                                 ; [rip+00036657]
	call	470B20h

l0000000000456E0E:
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

;; fn0000000000456E20: 0000000000456E20
;;   Called from:
;;     0000000000456E1F (in fn0000000000456940)
;;     000000000045915E (in fn0000000000459080)
;;     00000000004592EE (in fn0000000000459210)
;;     0000000000459476 (in fn00000000004593A0)
;;     000000000045957A (in fn00000000004594E0)
;;     00000000004596BA (in fn0000000000459620)
;;     00000000004597F2 (in fn0000000000459760)
;;     000000000045F5E0 (in fn000000000045F530)
;;     000000000045F730 (in fn000000000045F680)
;;     000000000045F878 (in fn000000000045F7D0)
;;     000000000045F928 (in fn000000000045F8D0)
;;     000000000045FA18 (in fn000000000045F9C0)
;;     000000000045FB00 (in fn000000000045FAB0)
;;     0000000000460AA8 (in fn0000000000460A00)
;;     0000000000460BE8 (in fn0000000000460B40)
;;     0000000000460D20 (in fn0000000000460C80)
;;     0000000000460DB8 (in fn0000000000460D70)
;;     0000000000460E98 (in fn0000000000460E50)
;;     0000000000460F70 (in fn0000000000460F30)
fn0000000000456E20 proc
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,20h
	mov	r12,[0000000000491C30]                                 ; [rip+0003ADFF]
	lea	rsi,[rcx+38h]
	mov	rbx,rcx
	mov	qword ptr [rcx+8h],+0h
	mov	qword ptr [rcx+10h],+0h
	mov	qword ptr [rcx+18h],+0h
	lea	rdi,[rbx+48h]
	lea	rax,[r12+10h]
	mov	qword ptr [rcx+20h],+0h
	mov	qword ptr [rcx+28h],+0h
	mov	qword ptr [rcx+30h],+0h
	mov	[rcx],rax
	mov	rcx,rsi
	call	46AE90h
	lea	rax,[0000000000496710]                                 ; [rip+0003F88D]
	lea	rdx,[rbx+40h]
	mov	rcx,rdi
	mov	qword ptr [rbx+40h],+0h
	mov	[rbx],rax
	call	455090h
	mov	dword ptr [rbx+58h],0h
	mov	dword ptr [rbx+5Ch],0h
	mov	rcx,rsi
	mov	dword ptr [rbx+60h],0h
	mov	dword ptr [rbx+64h],0h
	mov	qword ptr [rbx+68h],+0h
	mov	qword ptr [rbx+70h],+200h
	mov	byte ptr [rbx+78h],0h
	mov	byte ptr [rbx+79h],0h
	mov	byte ptr [rbx+7Ah],0h
	mov	byte ptr [rbx+7Bh],0h
	mov	qword ptr [rbx+80h],+0h
	mov	qword ptr [rbx+88h],+0h
	mov	byte ptr [rbx+90h],0h
	mov	qword ptr [rbx+98h],+0h
	mov	qword ptr [rbx+0A0h],+0h
	mov	qword ptr [rbx+0A8h],+0h
	mov	qword ptr [rbx+0B0h],+0h
	mov	qword ptr [rbx+0B8h],+0h
	call	4725E0h
	test	al,al
	jnz	456F41h

l0000000000456F36:
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret

l0000000000456F41:
	mov	rcx,rsi
	call	473080h
	mov	[rbx+98h],rax
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
0000000000456F5B                                  48 89 F9 48 89            H..H.
0000000000456F60 C5 E8 3A E1 FF FF 49 8D 54 24 10 48 89 F1 48 89 ..:...I.T$.H..H.
0000000000456F70 13 E8 AA 3F 01 00 48 89 E9 E8 32 A6 FB FF 90 90 ...?..H...2.....

;; fn0000000000456F80: 0000000000456F80
;;   Called from:
;;     0000000000424C1A (in fn0000000000424C00)
;;     0000000000424CC9 (in fn0000000000424CB0)
;;     0000000000424D68 (in fn0000000000424D60)
;;     0000000000424D9A (in fn0000000000424D80)
;;     0000000000424E49 (in fn0000000000424E30)
;;     0000000000424EE8 (in fn0000000000424EE0)
fn0000000000456F80 proc
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,20h
	mov	r12,[0000000000491C30]                                 ; [rip+0003AC9F]
	lea	rsi,[rcx+38h]
	mov	rbx,rcx
	mov	qword ptr [rcx+8h],+0h
	mov	qword ptr [rcx+10h],+0h
	mov	qword ptr [rcx+18h],+0h
	lea	rdi,[rbx+48h]
	lea	rax,[r12+10h]
	mov	qword ptr [rcx+20h],+0h
	mov	qword ptr [rcx+28h],+0h
	mov	qword ptr [rcx+30h],+0h
	mov	[rcx],rax
	mov	rcx,rsi
	call	46AE90h
	lea	rax,[0000000000496710]                                 ; [rip+0003F72D]
	lea	rdx,[rbx+40h]
	mov	rcx,rdi
	mov	qword ptr [rbx+40h],+0h
	mov	[rbx],rax
	call	455090h
	mov	dword ptr [rbx+58h],0h
	mov	dword ptr [rbx+5Ch],0h
	mov	rcx,rsi
	mov	dword ptr [rbx+60h],0h
	mov	dword ptr [rbx+64h],0h
	mov	qword ptr [rbx+68h],+0h
	mov	qword ptr [rbx+70h],+200h
	mov	byte ptr [rbx+78h],0h
	mov	byte ptr [rbx+79h],0h
	mov	byte ptr [rbx+7Ah],0h
	mov	byte ptr [rbx+7Bh],0h
	mov	qword ptr [rbx+80h],+0h
	mov	qword ptr [rbx+88h],+0h
	mov	byte ptr [rbx+90h],0h
	mov	qword ptr [rbx+98h],+0h
	mov	qword ptr [rbx+0A0h],+0h
	mov	qword ptr [rbx+0A8h],+0h
	mov	qword ptr [rbx+0B0h],+0h
	mov	qword ptr [rbx+0B8h],+0h
	call	4725E0h
	test	al,al
	jnz	4570A1h

l0000000000457096:
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret

l00000000004570A1:
	mov	rcx,rsi
	call	473080h
	mov	[rbx+98h],rax
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
00000000004570BB                                  48 89 F9 48 89            H..H.
00000000004570C0 C5 E8 DA DF FF FF 49 8D 54 24 10 48 89 F1 48 89 ......I.T$.H..H.
00000000004570D0 13 E8 4A 3E 01 00 48 89 E9 E8 D2 A4 FB FF 90 90 ..J>..H.........

;; fn00000000004570E0: 00000000004570E0
fn00000000004570E0 proc
	push	rbx
	sub	rsp,20h
	lea	rax,[0000000000496710]                                 ; [rip+0003F624]
	mov	rbx,rcx
	mov	[rcx],rax
	call	455AB0h
	lea	rcx,[rbx+48h]
	call	4550A0h
	mov	rax,[0000000000491C30]                                 ; [rip+0003AB29]
	lea	rcx,[rbx+38h]
	add	rax,10h
	mov	[rbx],rax
	call	46AF20h
	mov	rcx,rbx
	add	rsp,20h
	pop	rbx
	jmp	475550h
0000000000457124             90 90 90 90 90 90 90 90 90 90 90 90     ............

;; fn0000000000457130: 0000000000457130
fn0000000000457130 proc
	push	rbx
	sub	rsp,20h
	lea	rax,[0000000000496710]                                 ; [rip+0003F5D4]
	mov	rbx,rcx
	mov	[rcx],rax
	call	455AB0h
	lea	rcx,[rbx+48h]
	call	4550A0h
	mov	rax,[0000000000491C30]                                 ; [rip+0003AAD9]
	lea	rcx,[rbx+38h]
	add	rax,10h
	mov	[rbx],rax
	add	rsp,20h
	pop	rbx
	jmp	46AF20h
000000000045716C                                     90 90 90 90             ....

;; fn0000000000457170: 0000000000457170
fn0000000000457170 proc
	push	rbx
	sub	rsp,20h
	lea	rax,[0000000000496710]                                 ; [rip+0003F594]
	mov	rbx,rcx
	mov	[rcx],rax
	call	455AB0h
	lea	rcx,[rbx+48h]
	call	4550A0h
	mov	rax,[0000000000491C30]                                 ; [rip+0003AA99]
	lea	rcx,[rbx+38h]
	add	rax,10h
	mov	[rbx],rax
	add	rsp,20h
	pop	rbx
	jmp	46AF20h
00000000004571AC                                     90 90 90 90             ....

;; fn00000000004571B0: 00000000004571B0
fn00000000004571B0 proc
	mov	eax,[rcx+58h]
	test	al,11h
	setnz	r8b
	test	al,8h
	mov	rax,[rcx+68h]
	mov	[rcx+8h],rax
	mov	[rcx+10h],rax
	jz	457220h

l00000000004571C9:
	test	rdx,rdx
	jle	457220h

l00000000004571CE:
	lea	r9,[rax+rdx*2]
	mov	[rcx+18h],r9

l00000000004571D6:
	test	rdx,rdx
	jnz	457200h

l00000000004571DB:
	test	r8b,r8b
	jz	457200h

l00000000004571E0:
	mov	rdx,[rcx+70h]
	cmp	rdx,1h
	jbe	457200h

l00000000004571EA:
	mov	[rcx+28h],rax
	mov	[rcx+20h],rax
	lea	rax,[rax+rdx*2-2h]
	mov	[rcx+30h],rax
	ret
00000000004571FC                                     0F 1F 40 00             ..@.

l0000000000457200:
	mov	qword ptr [rcx+28h],+0h
	mov	qword ptr [rcx+20h],+0h
	mov	qword ptr [rcx+30h],+0h
	ret
0000000000457219                            0F 1F 80 00 00 00 00          .......

l0000000000457220:
	mov	[rcx+18h],rax
	jmp	4571D6h
0000000000457226                   90 90 90 90 90 90 90 90 90 90       ..........

;; fn0000000000457230: 0000000000457230
;;   Called from:
;;     000000000045818F (in fn0000000000458000)
;;     00000000004581B4 (in fn0000000000458000)
;;     00000000004582B3 (in fn0000000000458280)
fn0000000000457230 proc
	push	rsi
	push	rbx
	sub	rsp,38h
	mov	rbx,rcx
	mov	rcx,[rcx+98h]
	mov	rsi,rdx
	mov	rax,[rcx]
	call	qword ptr [rax+30h]
	test	al,al
	jz	457260h

l000000000045724D:
	mov	rax,[rbx+10h]
	sub	rax,[rbx+18h]
	shr	rax,1h
	add	rsp,38h
	pop	rbx
	pop	rsi
	ret
000000000045725F                                              90                .

l0000000000457260:
	mov	rcx,[rbx+98h]
	mov	rax,[rbx+10h]
	mov	rdx,rsi
	sub	rax,[rbx+8h]
	mov	r9,[rbx+0B0h]
	mov	r8,[rbx+0A0h]
	mov	r10,[rcx]
	sar	rax,1h
	mov	[rsp+20h],rax
	call	qword ptr [r10+38h]
	add	eax,[rbx+0A0h]
	sub	eax,[rbx+0B8h]
	add	rsp,38h
	pop	rbx
	pop	rsi
	ret
00000000004572A2       90 90 90 90 90 90 90 90 90 90 90 90 90 90   ..............

;; fn00000000004572B0: 00000000004572B0
fn00000000004572B0 proc
	cmp	byte ptr [rcx+90h],0h
	jnz	4572EAh

l00000000004572B9:
	mov	rax,[rcx+10h]
	mov	byte ptr [rcx+90h],1h
	mov	[rcx+80h],rax
	mov	rax,[rcx+18h]
	mov	[rcx+88h],rax
	lea	rax,[rcx+7Ch]
	mov	[rcx+8h],rax
	mov	[rcx+10h],rax
	lea	rax,[rcx+7Eh]
	mov	[rcx+18h],rax

l00000000004572EA:
	ret
00000000004572EC                                     90 90 90 90             ....

;; fn00000000004572F0: 00000000004572F0
fn00000000004572F0 proc
	cmp	byte ptr [rcx+90h],0h
	jz	457336h

l00000000004572F9:
	mov	rax,[rcx+8h]
	xor	edx,edx
	cmp	[rcx+10h],rax
	mov	rax,[rcx+80h]
	mov	r8,[rcx+68h]
	mov	byte ptr [rcx+90h],0h
	setnz	dl
	mov	[rcx+8h],r8
	lea	rax,[rax+rdx*2]
	mov	rdx,[rcx+88h]
	mov	[rcx+80h],rax
	mov	[rcx+10h],rax
	mov	[rcx+18h],rdx

l0000000000457336:
	ret
0000000000457338                         90 90 90 90 90 90 90 90         ........

;; fn0000000000457340: 0000000000457340
;;   Called from:
;;     0000000000457826 (in fn0000000000457800)
;;     00000000004579FD (in fn0000000000457900)
;;     0000000000457F65 (in fn0000000000457F40)
fn0000000000457340 proc
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,+0D8h
	mov	rax,[rcx+28h]
	cmp	[rcx+20h],rax
	mov	esi,1h
	mov	r15,rcx
	jc	457470h

l0000000000457369:
	cmp	byte ptr [r15+7Ah],0h
	jz	457420h

l0000000000457374:
	mov	rcx,[r15+98h]
	test	rcx,rcx
	jz	457488h

l0000000000457384:
	mov	rax,[rcx]
	call	qword ptr [rax+30h]
	cmp	sil,al
	jbe	457420h

l0000000000457393:
	lea	r12,[r15+60h]
	xor	r13d,r13d
	lea	rdi,[rsp+50h]
	lea	rbp,[rsp+48h]
	lea	r14,[r15+48h]
	jmp	4573C3h
00000000004573AA                               66 0F 1F 44 00 00           f..D..

l00000000004573B0:
	test	r13,r13
	jle	4573FCh

l00000000004573B5:
	cmp	ebx,1h
	jnz	4573FCh

l00000000004573BA:
	test	sil,sil
	jz	457464h

l00000000004573C3:
	mov	rcx,[r15+98h]
	lea	r9,[rsp+0D0h]
	mov	r8,rdi
	mov	rdx,r12
	mov	rax,[rcx]
	mov	[rsp+20h],rbp
	call	qword ptr [rax+18h]
	cmp	eax,2h
	mov	ebx,eax
	jz	457464h

l00000000004573EA:
	cmp	eax,1h
	ja	4573B0h

l00000000004573EF:
	mov	r9,[rsp+48h]
	sub	r9,rdi
	test	r9,r9
	jg	457440h

l00000000004573FC:
	test	sil,sil
	jz	457420h

l0000000000457401:
	mov	rax,[r15]
	mov	edx,0FFFFh
	mov	rcx,r15
	call	qword ptr [rax+68h]
	cmp	ax,0FFh
	setnz	sil
	nop	word ptr [rax+rax+0h]

l0000000000457420:
	mov	eax,esi
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
0000000000457436                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l0000000000457440:
	mov	r8,r9
	mov	rdx,rdi
	mov	rcx,r14
	mov	[rsp+38h],r9
	call	454E50h
	mov	r9,[rsp+38h]
	mov	r13,rax
	cmp	r9,rax
	jz	4573B0h

l0000000000457464:
	xor	esi,esi
	jmp	457420h
0000000000457468                         0F 1F 84 00 00 00 00 00         ........

l0000000000457470:
	mov	rax,[rcx]
	mov	edx,0FFFFh
	call	qword ptr [rax+68h]
	cmp	ax,0FFh
	setnz	sil
	jmp	457369h

l0000000000457488:
	call	470820h
	nop
	nop
	nop

;; fn0000000000457490: 0000000000457490
;;   Called from:
;;     000000000045748F (in fn0000000000457340)
;;     0000000000458310 (in fn0000000000458280)
;;     000000000045849E (in fn0000000000458280)
fn0000000000457490 proc
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
	mov	rbx,rcx
	mov	rcx,[rcx+98h]
	mov	rdi,rdx
	mov	rsi,r8
	test	rcx,rcx
	jz	4575EFh

l00000000004574C1:
	mov	rax,[rcx]
	call	qword ptr [rax+30h]
	test	al,al
	jnz	45753Ch

l00000000004574CB:
	mov	rcx,[rbx+98h]
	mov	rax,[rcx]
	call	qword ptr [rax+40h]
	movsxd	r9,eax
	imul	r9,rsi
	lea	rax,[r9+1Eh]
	and	rax,0F0h
	call	4116F0h
	mov	rcx,[rbx+98h]
	sub	rsp,rax
	lea	r12,[rbx+60h]
	lea	r13,[rbp-30h]
	lea	r14,[rsp+40h]
	lea	r15,[rbp-28h]
	mov	r8,rdi
	mov	rax,[rcx]
	mov	rdx,r12
	mov	[rsp+38h],r13
	add	r9,r14
	mov	[rsp+28h],r14
	mov	[rsp+20h],r15
	mov	[rsp+30h],r9
	lea	r9,[rdi+rsi*2]
	call	qword ptr [rax+10h]
	cmp	eax,1h
	jbe	457562h

l0000000000457533:
	cmp	eax,3h
	jnz	4575E3h

l000000000045753C:
	lea	rcx,[rbx+48h]
	mov	r8,rsi
	mov	rdx,rdi
	call	454E50h

l000000000045754B:
	cmp	rax,rsi
	setz	al
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

l0000000000457562:
	mov	r10,[rbp-30h]
	lea	rdi,[rbx+48h]
	mov	rdx,r14
	mov	[rbp-3Ch],eax
	mov	rcx,rdi
	mov	rsi,r10
	mov	[rbp-38h],r10
	sub	rsi,r14
	mov	r8,rsi
	call	454E50h
	cmp	rsi,rax
	jnz	45754Bh

l000000000045758A:
	mov	r9d,[rbp-3Ch]
	mov	r10,[rbp-38h]
	and	r9d,1h
	jz	45754Bh

l0000000000457598:
	mov	rcx,[rbx+98h]
	mov	r9,[rbx+28h]
	mov	rdx,r12
	mov	r8,[rbp-28h]
	mov	rax,[rcx]
	mov	[rsp+38h],r13
	mov	[rsp+30h],r10
	mov	[rsp+28h],r14
	mov	[rsp+20h],r15
	call	qword ptr [rax+10h]
	cmp	eax,2h
	jz	4575E3h

l00000000004575C9:
	mov	rsi,[rbp-30h]
	mov	rdx,r14
	mov	rcx,rdi
	sub	rsi,r14
	mov	r8,rsi
	call	454E50h
	jmp	45754Bh

l00000000004575E3:
	lea	rcx,[000000000048D570]                                 ; [rip+00035F86]
	call	470B20h

l00000000004575EF:
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

;; fn0000000000457600: 0000000000457600
;;   Called from:
;;     00000000004575FF (in fn0000000000457490)
;;     0000000000457843 (in fn0000000000457800)
;;     00000000004754F9 (in fn00000000004754E0)
fn0000000000457600 proc
	push	rbx
	sub	rsp,20h
	cmp	byte ptr [rcx+78h],0h
	mov	rbx,rcx
	jz	457628h

l000000000045760E:
	mov	rcx,[rcx+68h]
	test	rcx,rcx
	jz	45761Ch

l0000000000457617:
	call	475540h

l000000000045761C:
	mov	qword ptr [rbx+68h],+0h
	mov	byte ptr [rbx+78h],0h

l0000000000457628:
	mov	rcx,[rbx+0A0h]
	test	rcx,rcx
	jz	457639h

l0000000000457634:
	call	475540h

l0000000000457639:
	mov	qword ptr [rbx+0A0h],+0h
	mov	qword ptr [rbx+0A8h],+0h
	mov	qword ptr [rbx+0B0h],+0h
	mov	qword ptr [rbx+0B8h],+0h
	add	rsp,20h
	pop	rbx
	ret
000000000045766B                                  90 90 90 90 90            .....

;; fn0000000000457670: 0000000000457670
;;   Called from:
;;     00000000004250FA (in fn00000000004250A0)
;;     00000000004251AA (in fn0000000000425150)
;;     000000000042527A (in fn0000000000425220)
;;     000000000042532A (in fn00000000004252D0)
fn0000000000457670 proc
	cmp	byte ptr [rcx+78h],0h
	jnz	45767Dh

l0000000000457676:
	cmp	qword ptr [rcx+68h],0h
	jz	457680h

l000000000045767D:
	ret
000000000045767F                                              90                .

l0000000000457680:
	jmp	457690h
0000000000457685                90 90 90 90 90 90 90 90 90 90 90      ...........

;; fn0000000000457690: 0000000000457690
;;   Called from:
;;     0000000000457680 (in fn0000000000457670)
;;     0000000000457778 (in fn00000000004576D0)
fn0000000000457690 proc
	push	rbx
	sub	rsp,20h
	mov	rax,[rcx+70h]
	mov	rdx,3F80000000000000h
	mov	rbx,rcx
	cmp	rax,rdx
	ja	4576C2h

l00000000004576AB:
	lea	rcx,[rax+rax]
	call	475560h
	mov	byte ptr [rbx+78h],1h
	mov	[rbx+68h],rax
	add	rsp,20h
	pop	rbx
	ret

l00000000004576C2:
	call	476160h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop

;; fn00000000004576D0: 00000000004576D0
;;   Called from:
;;     00000000004576CF (in fn0000000000457690)
;;     00000000004577C3 (in fn00000000004577C0)
;;     0000000000459A3C (in fn0000000000459A30)
;;     0000000000459A8F (in fn0000000000459A80)
;;     0000000000459C19 (in fn0000000000459B20)
;;     0000000000459DAA (in fn0000000000459CB0)
;;     000000000045A03A (in fn0000000000459F80)
;;     000000000045A17B (in fn000000000045A0C0)
;;     000000000045FCD0 (in fn000000000045FCC0)
;;     000000000045FD23 (in fn000000000045FD10)
;;     000000000045FE7F (in fn000000000045FDB0)
;;     000000000045FFD0 (in fn000000000045FF00)
;;     00000000004601CC (in fn0000000000460150)
;;     00000000004602BD (in fn0000000000460240)
;;     0000000000461140 (in fn0000000000461130)
;;     0000000000461193 (in fn0000000000461180)
;;     00000000004612E7 (in fn0000000000461220)
;;     0000000000461428 (in fn0000000000461360)
;;     000000000046160C (in fn00000000004615A0)
;;     00000000004616ED (in fn0000000000461680)
fn00000000004576D0 proc
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,48h
	lea	rsi,[rcx+48h]
	mov	rbx,rcx
	mov	rbp,rdx
	mov	edi,r8d
	mov	rcx,rsi
	call	42AA50h
	test	al,al
	jnz	4577B0h

l00000000004576F5:
	mov	r9d,1B4h
	mov	r8d,edi
	mov	rdx,rbp
	mov	rcx,rsi
	call	454D00h
	mov	rcx,rsi
	call	42AA50h
	test	al,al
	jz	4577B0h

l0000000000457719:
	cmp	byte ptr [rbx+78h],0h
	mov	rax,[rbx+68h]
	jz	457770h

l0000000000457723:
	mov	[rbx+8h],rax
	mov	[rbx+10h],rax
	test	dil,2h
	mov	[rbx+18h],rax
	mov	eax,[rbx+5Ch]
	mov	[rbx+58h],edi
	mov	byte ptr [rbx+79h],0h
	mov	byte ptr [rbx+7Ah],0h
	mov	qword ptr [rbx+28h],+0h
	mov	qword ptr [rbx+20h],+0h
	mov	qword ptr [rbx+30h],+0h
	mov	[rbx+60h],eax
	mov	[rbx+64h],eax
	jnz	457783h

l0000000000457761:
	mov	rax,rbx
	add	rsp,48h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
000000000045776D                                        0F 1F 00              ...

l0000000000457770:
	test	rax,rax
	jnz	457723h

l0000000000457775:
	mov	rcx,rbx
	call	457690h
	mov	rax,[rbx+68h]
	jmp	457723h

l0000000000457783:
	mov	rax,[rbx]
	xor	r8d,r8d
	lea	rcx,[rsp+30h]
	mov	[rsp+20h],edi
	mov	r9d,2h
	mov	rdx,rbx
	call	qword ptr [rax+20h]
	cmp	qword ptr [rsp+30h],0FFh
	jnz	457761h

l00000000004577A6:
	mov	rcx,rbx
	call	457800h
	nop

l00000000004577B0:
	xor	eax,eax
	add	rsp,48h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
00000000004577BB                                  90 90 90 90 90            .....

;; fn00000000004577C0: 00000000004577C0
fn00000000004577C0 proc
	mov	rdx,[rdx]
	jmp	4576D0h
00000000004577C8                         90 90 90 90 90 90 90 90         ........

;; fn00000000004577D0: 00000000004577D0
fn00000000004577D0 proc
	sub	rsp,28h
	xor	eax,eax
	mov	rdx,[rcx+28h]
	cmp	[rcx+20h],rdx
	jnc	4577F7h

l00000000004577E0:
	mov	rax,[rcx]
	mov	edx,0FFFFh
	call	qword ptr [rax+68h]
	cmp	ax,0FFh
	setz	al
	movzx	eax,al
	neg	eax

l00000000004577F7:
	add	rsp,28h
	ret
00000000004577FC                                     90 90 90 90             ....

;; fn0000000000457800: 0000000000457800
;;   Called from:
;;     00000000004253B7 (in fn00000000004253A0)
;;     0000000000425437 (in fn0000000000425420)
;;     00000000004254B7 (in fn00000000004254A0)
;;     00000000004577A9 (in fn00000000004576D0)
;;     0000000000458ED2 (in fn0000000000458EC0)
;;     0000000000458F22 (in fn0000000000458F10)
;;     0000000000458F62 (in fn0000000000458F50)
;;     0000000000459ADC (in fn0000000000459AD0)
;;     000000000045A33A (in fn000000000045A300)
;;     000000000045A3CA (in fn000000000045A390)
;;     000000000045A456 (in fn000000000045A420)
;;     000000000045FD6C (in fn000000000045FD60)
;;     00000000004603FF (in fn00000000004603D0)
;;     000000000046047F (in fn0000000000460450)
;;     00000000004604FE (in fn00000000004604D0)
;;     00000000004611DC (in fn00000000004611D0)
;;     000000000046181F (in fn00000000004617F0)
;;     000000000046189F (in fn0000000000461870)
;;     000000000046191E (in fn00000000004618F0)
fn0000000000457800 proc
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,30h
	lea	rdi,[rcx+48h]
	mov	rbx,rcx
	mov	rcx,rdi
	call	42AA50h
	test	al,al
	jz	4578A3h

l000000000045781E:
	mov	rcx,rbx
	mov	[rsp+20h],rbx
	call	457340h
	xor	eax,1h
	mov	esi,eax
	mov	rcx,[rsp+20h]
	mov	dword ptr [rcx+58h],0h
	mov	byte ptr [rcx+90h],0h
	call	457600h
	mov	rdx,[rsp+20h]
	mov	rcx,rdi
	mov	rax,[rdx+68h]
	mov	byte ptr [rdx+79h],0h
	mov	byte ptr [rdx+7Ah],0h
	mov	qword ptr [rdx+28h],+0h
	mov	qword ptr [rdx+20h],+0h
	mov	qword ptr [rdx+30h],+0h
	mov	[rdx+8h],rax
	mov	[rdx+10h],rax
	mov	[rdx+18h],rax
	mov	eax,[rdx+5Ch]
	mov	[rdx+60h],eax
	mov	[rdx+64h],eax
	call	454D70h
	test	rax,rax
	jz	4578A3h

l0000000000457893:
	test	sil,sil
	jnz	4578A3h

l0000000000457898:
	mov	rax,rbx
	add	rsp,30h
	pop	rbx
	pop	rsi
	pop	rdi
	ret

l00000000004578A3:
	xor	eax,eax
	add	rsp,30h
	pop	rbx
	pop	rsi
	pop	rdi
	ret
00000000004578AD                                        48 83 EA              H..
00000000004578B0 01 48 89 C1 75 12 E8 85 DF 01 00 48 89 F9 E8 AD .H..u......H....
00000000004578C0 D4 FF FF E8 98 E7 01 00 E8 73 DF 01 00 E8 9E E1 .........s......
00000000004578D0 01 00 BE 01 00 00 00 E9 54 FF FF FF 48 89 C3 E8 ........T...H...
00000000004578E0 8C E1 01 00 48 8D 4C 24 20 E8 F2 DB 01 00 48 89 ....H.L$ .....H.
00000000004578F0 D9 E8 BA 9C FB FF 48 89 C3 EB E9 90 90 90 90 90 ......H.........

;; fn0000000000457900: 0000000000457900
fn0000000000457900 proc
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,40h
	mov	rbx,rcx
	mov	rcx,rdx
	mov	rsi,rdx
	call	472640h
	test	al,al
	jz	457A33h

l000000000045791D:
	mov	rcx,rsi
	call	4730E0h
	mov	rsi,rax

l0000000000457928:
	lea	rcx,[rbx+48h]
	call	42AA50h
	test	al,al
	jnz	457944h

l0000000000457935:
	mov	[rbx+98h],rsi
	add	rsp,40h
	pop	rbx
	pop	rsi
	pop	rdi
	ret

l0000000000457944:
	cmp	byte ptr [rbx+79h],0h
	jz	4579E0h

l000000000045794E:
	mov	rcx,[rbx+98h]
	test	rcx,rcx
	jz	457AF4h

l000000000045795E:
	mov	rax,[rcx]
	call	qword ptr [rax+28h]
	cmp	eax,0FFh
	jz	4579CDh

l0000000000457969:
	cmp	byte ptr [rbx+79h],0h
	jz	4579F0h

l0000000000457973:
	mov	rcx,[rbx+98h]
	test	rcx,rcx
	jz	457AF4h

l0000000000457983:
	mov	rax,[rcx]
	call	qword ptr [rax+30h]
	test	al,al
	jz	457A40h

l0000000000457991:
	test	rsi,rsi
	jz	457935h

l0000000000457996:
	mov	rax,[rsi]
	mov	rcx,rsi
	call	qword ptr [rax+30h]
	test	al,al
	jnz	457935h

l00000000004579A3:
	mov	edx,[rbx+58h]
	mov	rax,[rbx]
	xor	r8d,r8d
	lea	rcx,[rsp+30h]
	mov	r9d,1h
	mov	[rsp+20h],edx
	mov	rdx,rbx
	call	qword ptr [rax+20h]
	cmp	qword ptr [rsp+30h],0FFh
	jnz	457935h

l00000000004579CD:
	mov	qword ptr [rbx+98h],+0h
	add	rsp,40h
	pop	rbx
	pop	rsi
	pop	rdi
	ret

l00000000004579E0:
	cmp	byte ptr [rbx+7Ah],0h
	jz	457935h

l00000000004579EA:
	jmp	45794Eh
00000000004579EF                                              90                .

l00000000004579F0:
	cmp	byte ptr [rbx+7Ah],0h
	jz	457935h

l00000000004579FA:
	mov	rcx,rbx
	call	457340h
	test	al,al
	jz	4579CDh

l0000000000457A06:
	mov	rax,[rbx+68h]
	mov	qword ptr [rbx+28h],+0h
	mov	qword ptr [rbx+20h],+0h
	mov	qword ptr [rbx+30h],+0h
	mov	[rbx+8h],rax
	mov	[rbx+10h],rax
	mov	[rbx+18h],rax
	jmp	457935h

l0000000000457A33:
	xor	esi,esi
	jmp	457928h
0000000000457A3A                               66 0F 1F 44 00 00           f..D..

l0000000000457A40:
	mov	rcx,[rbx+98h]
	mov	rax,[rbx+10h]
	lea	rdx,[rbx+64h]
	sub	rax,[rbx+8h]
	mov	rdi,[rbx+0A0h]
	mov	r9,[rbx+0B0h]
	mov	r10,[rcx]
	mov	r8,rdi
	sar	rax,1h
	mov	[rsp+20h],rax
	call	qword ptr [r10+38h]
	cdqe
	lea	rdx,[rdi+rax]
	mov	rax,[rbx+0B8h]
	xor	edi,edi
	mov	[rbx+0B0h],rdx
	sub	rax,rdx
	jnz	457AE0h

l0000000000457A8E:
	mov	rax,[rbx+0A0h]
	mov	qword ptr [rbx+28h],+0h
	mov	qword ptr [rbx+20h],+0h
	mov	qword ptr [rbx+30h],+0h
	add	rdi,rax
	mov	[rbx+0B0h],rax
	mov	rax,[rbx+68h]
	mov	[rbx+0B8h],rdi
	mov	[rbx+8h],rax
	mov	[rbx+10h],rax
	mov	[rbx+18h],rax
	mov	eax,[rbx+5Ch]
	mov	[rbx+60h],eax
	mov	[rbx+64h],eax
	jmp	457935h
0000000000457ADC                                     0F 1F 40 00             ..@.

l0000000000457AE0:
	mov	rcx,[rbx+0A0h]
	mov	r8,rax
	mov	rdi,rax
	call	41BD28h
	jmp	457A8Eh

l0000000000457AF4:
	call	470820h
	nop
	nop
	nop
	nop
	nop
	nop
	nop

;; fn0000000000457B00: 0000000000457B00
;;   Called from:
;;     0000000000457AFF (in fn0000000000457900)
fn0000000000457B00 proc
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,20h
	mov	rbx,rcx
	lea	rcx,[rcx+48h]
	mov	rsi,rdx
	mov	rdi,r8
	call	42AA50h
	test	al,al
	jnz	457B2Fh

l0000000000457B1D:
	test	rsi,rsi
	jnz	457B40h

l0000000000457B22:
	test	rdi,rdi
	jnz	457B40h

l0000000000457B27:
	mov	qword ptr [rbx+70h],+1h

l0000000000457B2F:
	mov	rax,rbx
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	ret
0000000000457B3A                               66 0F 1F 44 00 00           f..D..

l0000000000457B40:
	test	rsi,rsi
	jz	457B2Fh

l0000000000457B45:
	test	rdi,rdi
	jle	457B2Fh

l0000000000457B4A:
	mov	rax,rbx
	mov	[rbx+68h],rsi
	mov	[rbx+70h],rdi
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	ret
0000000000457B5D                                        90 90 90              ...

;; fn0000000000457B60: 0000000000457B60
fn0000000000457B60 proc
	push	r13
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,28h
	cmp	byte ptr [rcx+90h],0h
	mov	rbp,rcx
	mov	rsi,rdx
	mov	rbx,r8
	jz	457CB2h

l0000000000457B82:
	test	r8,r8
	mov	rax,[rcx+10h]
	mov	rdx,[rcx+8h]
	jle	457B98h

l0000000000457B8F:
	cmp	rax,rdx
	jz	457D21h

l0000000000457B98:
	xor	edi,edi

l0000000000457B9A:
	cmp	rdx,rax
	mov	rax,[rbp+80h]
	mov	rcx,[rbp+68h]
	setnz	dl
	mov	byte ptr [rbp+90h],0h
	movzx	edx,dl
	lea	rax,[rax+rdx*2]
	mov	rdx,[rbp+88h]
	mov	[rbp+8h],rcx
	mov	[rbp+80h],rax
	mov	[rbp+10h],rax
	mov	[rbp+18h],rdx

l0000000000457BD3:
	mov	rdx,[rbp+70h]
	mov	r12d,[rbp+58h]
	lea	rax,[rdx-1h]
	cmp	rdx,2h
	mov	edx,1h
	cmovc	rax,rdx

l0000000000457BEC:
	cmp	rbx,rax
	jle	457D00h

l0000000000457BF5:
	mov	rcx,[rbp+98h]
	test	rcx,rcx
	jz	457DDBh

l0000000000457C05:
	mov	rax,[rcx]
	call	qword ptr [rax+30h]
	test	al,al
	jz	457D00h

l0000000000457C13:
	and	r12d,8h
	jz	457D00h

l0000000000457C1D:
	mov	rdx,[rbp+10h]
	mov	r12,[rbp+18h]
	sub	r12,rdx
	mov	r13,r12
	sar	r13,1h
	jnz	457D3Eh

l0000000000457C34:
	lea	r12,[rbp+48h]
	jmp	457C50h
0000000000457C3A                               66 0F 1F 44 00 00           f..D..

l0000000000457C40:
	add	rdi,rax
	sub	rbx,rax
	jz	457D60h

l0000000000457C4C:
	lea	rsi,[rsi+rax*2]

l0000000000457C50:
	mov	r8,rbx
	mov	rdx,rsi
	mov	rcx,r12
	call	454DE0h
	cmp	rax,0FFh
	jz	457DCFh

l0000000000457C68:
	test	rax,rax
	jnz	457C40h

l0000000000457C6D:
	test	rbx,rbx
	jz	457D60h

l0000000000457C76:
	mov	rax,[rbp+68h]
	mov	qword ptr [rbp+28h],+0h
	mov	qword ptr [rbp+20h],+0h
	mov	qword ptr [rbp+30h],+0h
	mov	byte ptr [rbp+79h],0h
	mov	[rbp+8h],rax
	mov	[rbp+10h],rax
	mov	[rbp+18h],rax
	mov	rax,rdi
	add	rsp,28h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	ret

l0000000000457CB2:
	xor	edi,edi
	cmp	byte ptr [rcx+7Ah],0h
	jz	457BD3h

l0000000000457CBE:
	mov	rax,[rcx]
	mov	edx,0FFFFh
	call	qword ptr [rax+68h]
	cmp	ax,0FFh
	jz	457D11h

l0000000000457CCF:
	mov	rax,[rbp+68h]
	mov	qword ptr [rbp+28h],+0h
	mov	qword ptr [rbp+20h],+0h
	mov	qword ptr [rbp+30h],+0h
	mov	byte ptr [rbp+7Ah],0h
	mov	[rbp+8h],rax
	mov	[rbp+10h],rax
	mov	[rbp+18h],rax
	jmp	457BD3h

l0000000000457D00:
	mov	r8,rbx
	mov	rdx,rsi
	mov	rcx,rbp
	call	462F80h
	add	rdi,rax

l0000000000457D11:
	mov	rax,rdi
	add	rsp,28h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	ret

l0000000000457D21:
	movzx	ecx,word ptr [rax]
	sub	rbx,1h
	add	rax,2h
	add	rsi,2h
	mov	edi,1h
	mov	[rsi-2h],cx
	jmp	457B9Ah

l0000000000457D3E:
	mov	rcx,rsi
	mov	r8,r12
	add	rsi,r12
	call	41BCC0h
	add	rdi,r13
	add	[rbp+10h],r12
	sub	rbx,r13
	jmp	457C34h
0000000000457D5B                                  0F 1F 44 00 00            ..D..

l0000000000457D60:
	test	byte ptr [rbp+58h],11h
	jnz	457DA2h

l0000000000457D66:
	mov	rax,[rbp+68h]
	mov	[rbp+8h],rax
	mov	[rbp+10h],rax
	mov	[rbp+18h],rax

l0000000000457D76:
	mov	qword ptr [rbp+28h],+0h
	mov	qword ptr [rbp+20h],+0h
	mov	qword ptr [rbp+30h],+0h

l0000000000457D8E:
	mov	rax,rdi
	mov	byte ptr [rbp+79h],1h
	add	rsp,28h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	ret

l0000000000457DA2:
	mov	rdx,[rbp+70h]
	mov	rax,[rbp+68h]
	cmp	rdx,1h
	mov	[rbp+8h],rax
	mov	[rbp+10h],rax
	mov	[rbp+18h],rax
	jbe	457D76h

l0000000000457DBC:
	mov	[rbp+28h],rax
	mov	[rbp+20h],rax
	lea	rax,[rax+rdx*2-2h]
	mov	[rbp+30h],rax
	jmp	457D8Eh

l0000000000457DCF:
	lea	rcx,[000000000048D540]                                 ; [rip+0003576A]
	call	470B20h

l0000000000457DDB:
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
	nop
	nop

;; fn0000000000457DF0: 0000000000457DF0
;;   Called from:
;;     0000000000457DEF (in fn0000000000457B60)
fn0000000000457DF0 proc
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,38h
	test	byte ptr [rcx+58h],11h
	mov	rbx,rcx
	mov	rcx,[rcx+98h]
	mov	rbp,rdx
	mov	rsi,r8
	setnz	dil
	test	rcx,rcx
	jz	457F31h

l0000000000457E19:
	mov	rax,[rcx]
	call	qword ptr [rax+30h]
	test	al,al
	jz	457EB0h

l0000000000457E27:
	test	dil,dil
	jz	457EB0h

l0000000000457E30:
	cmp	byte ptr [rbx+79h],0h
	jnz	457EB0h

l0000000000457E36:
	mov	rdi,[rbx+28h]
	mov	rax,[rbx+30h]
	sub	rax,rdi
	sar	rax,1h
	cmp	byte ptr [rbx+7Ah],0h
	jnz	457E5Ah

l0000000000457E4A:
	mov	rdx,[rbx+70h]
	lea	rcx,[rdx-1h]
	cmp	rdx,2h
	cmovnc	rax,rcx

l0000000000457E5A:
	cmp	rax,+3FFh
	mov	edx,400h
	cmovg	rax,rdx

l0000000000457E69:
	cmp	rax,rsi
	jg	457EB0h

l0000000000457E6E:
	mov	rdx,[rbx+20h]
	lea	rcx,[rbx+48h]
	mov	[rsp+20h],rsi
	mov	r9,rbp
	sub	rdi,rdx
	sar	rdi,1h
	mov	r8,rdi
	add	rsi,rdi
	call	454FA0h
	cmp	rax,rsi
	jz	457ED0h

l0000000000457E94:
	mov	rdx,rax
	sub	rdx,rdi
	cmp	rdi,rax
	mov	eax,0h
	cmovl	rax,rdx

l0000000000457EA6:
	add	rsp,38h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
0000000000457EAF                                              90                .

l0000000000457EB0:
	mov	r8,rsi
	mov	rdx,rbp
	mov	rcx,rbx
	add	rsp,38h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	jmp	463060h
0000000000457EC6                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l0000000000457ED0:
	test	byte ptr [rbx+58h],11h
	jnz	457F04h

l0000000000457ED6:
	mov	rdx,[rbx+68h]
	mov	[rbx+8h],rdx
	mov	[rbx+10h],rdx
	mov	[rbx+18h],rdx

l0000000000457EE6:
	mov	qword ptr [rbx+28h],+0h
	mov	qword ptr [rbx+20h],+0h
	mov	qword ptr [rbx+30h],+0h

l0000000000457EFE:
	mov	byte ptr [rbx+7Ah],1h
	jmp	457E94h

l0000000000457F04:
	mov	rcx,[rbx+70h]
	mov	rdx,[rbx+68h]
	cmp	rcx,1h
	mov	[rbx+8h],rdx
	mov	[rbx+10h],rdx
	mov	[rbx+18h],rdx
	jbe	457EE6h

l0000000000457F1E:
	mov	[rbx+28h],rdx
	mov	[rbx+20h],rdx
	lea	rdx,[rdx+rcx*2-2h]
	mov	[rbx+30h],rdx
	jmp	457EFEh

l0000000000457F31:
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

;; fn0000000000457F40: 0000000000457F40
;;   Called from:
;;     0000000000457F3F (in fn0000000000457DF0)
;;     0000000000458163 (in fn0000000000458000)
;;     000000000045821B (in fn00000000004581D0)
;;     00000000004582D0 (in fn0000000000458280)
fn0000000000457F40 proc
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,28h
	mov	qword ptr [rcx],-1h
	mov	dword ptr [rcx+8h],0h
	mov	rsi,rcx
	mov	rcx,rdx
	mov	rbx,rdx
	mov	rdi,r8
	mov	ebp,r9d
	call	457340h
	test	al,al
	jnz	457F80h

l0000000000457F6E:
	mov	rax,rsi
	add	rsp,28h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
0000000000457F7A                               66 0F 1F 44 00 00           f..D..

l0000000000457F80:
	lea	rcx,[rbx+48h]
	mov	r8d,ebp
	mov	rdx,rdi
	call	454E80h
	cmp	rax,0FFh
	jz	457F6Eh

l0000000000457F95:
	mov	rdx,[rbx+0A0h]
	mov	edi,[rsp+70h]
	mov	[rsi],rax
	mov	rax,rsi
	mov	byte ptr [rbx+79h],0h
	mov	byte ptr [rbx+7Ah],0h
	mov	qword ptr [rbx+28h],+0h
	mov	[rbx+0B8h],rdx
	mov	[rbx+0B0h],rdx
	mov	rdx,[rbx+68h]
	mov	qword ptr [rbx+20h],+0h
	mov	qword ptr [rbx+30h],+0h
	mov	[rbx+60h],edi
	mov	[rsi+8h],edi
	mov	[rbx+8h],rdx
	mov	[rbx+10h],rdx
	mov	[rbx+18h],rdx
	add	rsp,28h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
0000000000457FF3          90 90 90 90 90 90 90 90 90 90 90 90 90    .............

;; fn0000000000458000: 0000000000458000
fn0000000000458000 proc
	push	r14
	push	r13
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,60h
	mov	rsi,rcx
	mov	rcx,[rdx+98h]
	mov	rbx,rdx
	mov	rbp,r8
	mov	r12d,r9d
	test	rcx,rcx
	jz	458040h

l0000000000458026:
	mov	rax,[rcx]
	call	qword ptr [rax+28h]
	cmp	eax,0h
	mov	r13d,eax
	jl	458040h

l0000000000458034:
	setle	dil
	jmp	458048h
000000000045803A                               66 0F 1F 44 00 00           f..D..

l0000000000458040:
	mov	edi,1h
	xor	r13d,r13d

l0000000000458048:
	test	rbp,rbp
	lea	r14,[rbx+48h]
	mov	qword ptr [rsi],-1h
	setnz	dl
	mov	dword ptr [rsi+8h],0h
	and	edi,edx
	mov	rcx,r14
	call	42AA50h
	cmp	al,dil
	jbe	4580CEh

l000000000045806F:
	cmp	r12d,1h
	setz	dil
	test	rbp,rbp
	jnz	4580F1h

l000000000045807C:
	test	dil,dil
	jz	4580F1h

l0000000000458081:
	cmp	byte ptr [rbx+7Ah],0h
	jnz	4580E0h

l0000000000458087:
	cmp	byte ptr [rbx+79h],0h
	mov	eax,[rbx+5Ch]
	mov	[rsp+5Ch],eax
	jnz	458180h

l0000000000458098:
	xor	edi,edi

l000000000045809A:
	cmp	byte ptr [rbx+7Ah],0h
	jz	4580ABh

l00000000004580A0:
	mov	rdi,[rbx+28h]
	sub	rdi,[rbx+20h]
	sar	rdi,1h

l00000000004580AB:
	xor	edx,edx
	mov	r8d,1h
	mov	rcx,r14
	call	454E80h
	cmp	rax,0FFh
	jz	4580CEh

l00000000004580C1:
	add	rdi,rax
	mov	eax,[rsp+5Ch]
	mov	[rsi],rdi
	mov	[rsi+8h],eax

l00000000004580CE:
	mov	rax,rsi
	add	rsp,60h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	ret

l00000000004580E0:
	mov	rcx,[rbx+98h]
	mov	rax,[rcx]
	call	qword ptr [rax+30h]
	test	al,al
	jnz	458087h

l00000000004580F1:
	cmp	byte ptr [rbx+90h],0h
	jz	458137h

l00000000004580FA:
	mov	rax,[rbx+8h]
	xor	edx,edx
	cmp	[rbx+10h],rax
	mov	rax,[rbx+80h]
	mov	rcx,[rbx+68h]
	mov	byte ptr [rbx+90h],0h
	setnz	dl
	mov	[rbx+8h],rcx
	lea	rax,[rax+rdx*2]
	mov	rdx,[rbx+88h]
	mov	[rbx+80h],rax
	mov	[rbx+10h],rax
	mov	[rbx+18h],rdx

l0000000000458137:
	mov	eax,[rbx+5Ch]
	movsxd	r8,r13d
	imul	r8,rbp
	test	dil,dil
	mov	[rsp+5Ch],eax
	jz	458150h

l000000000045814A:
	cmp	byte ptr [rbx+79h],0h
	jnz	4581A0h

l0000000000458150:
	mov	eax,[rsp+5Ch]
	lea	rcx,[rsp+40h]
	mov	r9d,r12d
	mov	rdx,rbx
	mov	[rsp+20h],eax
	call	457F40h
	mov	rax,[rsp+40h]
	mov	[rsi],rax
	mov	eax,[rsp+48h]
	mov	[rsi+8h],eax
	jmp	4580CEh
000000000045817C                                     0F 1F 40 00             ..@.

l0000000000458180:
	mov	eax,[rbx+64h]
	lea	rdx,[rsp+5Ch]
	mov	rcx,rbx
	mov	[rsp+5Ch],eax
	call	457230h
	movsxd	rdi,eax
	jmp	45809Ah
000000000045819C                                     0F 1F 40 00             ..@.

l00000000004581A0:
	mov	eax,[rbx+64h]
	lea	rdx,[rsp+5Ch]
	mov	rcx,rbx
	mov	[rsp+38h],r8
	mov	[rsp+5Ch],eax
	call	457230h
	mov	r8,[rsp+38h]
	cdqe
	add	r8,rax
	jmp	458150h
00000000004581C5                90 90 90 90 90 90 90 90 90 90 90      ...........

;; fn00000000004581D0: 00000000004581D0
fn00000000004581D0 proc
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,48h
	mov	rdi,[r8]
	mov	rbp,[r8+8h]
	mov	qword ptr [rcx],-1h
	mov	dword ptr [rcx+8h],0h
	mov	rbx,rcx
	lea	rcx,[rdx+48h]
	mov	rsi,rdx
	call	42AA50h
	test	al,al
	jz	45822Fh

l0000000000458200:
	cmp	byte ptr [rsi+90h],0h
	jnz	458240h

l0000000000458209:
	lea	rcx,[rsp+30h]
	mov	[rsp+20h],ebp
	xor	r9d,r9d
	mov	r8,rdi
	mov	rdx,rsi
	call	457F40h
	mov	rax,[rsp+30h]
	mov	[rbx],rax
	mov	eax,[rsp+38h]
	mov	[rbx+8h],eax

l000000000045822F:
	mov	rax,rbx
	add	rsp,48h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
000000000045823B                                  0F 1F 44 00 00            ..D..

l0000000000458240:
	mov	rax,[rsi+8h]
	xor	edx,edx
	cmp	[rsi+10h],rax
	mov	rax,[rsi+80h]
	mov	rcx,[rsi+68h]
	mov	byte ptr [rsi+90h],0h
	setnz	dl
	mov	[rsi+8h],rcx
	lea	rax,[rax+rdx*2]
	mov	rdx,[rsi+88h]
	mov	[rsi+80h],rax
	mov	[rsi+10h],rax
	mov	[rsi+18h],rdx
	jmp	458209h
000000000045827F                                              90                .

;; fn0000000000458280: 0000000000458280
fn0000000000458280 proc
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,58h
	test	byte ptr [rcx+58h],11h
	mov	rbx,rcx
	mov	edi,edx
	mov	esi,edx
	jz	458360h

l0000000000458299:
	cmp	byte ptr [rcx+79h],0h
	jz	4582E1h

l000000000045829F:
	cmp	byte ptr [rbx+90h],0h
	jnz	4583D0h

l00000000004582AC:
	lea	rdx,[rbx+64h]
	mov	rcx,rbx
	call	457230h
	mov	edx,[rbx+64h]
	lea	rcx,[rsp+30h]
	mov	r9d,1h
	movsxd	r8,eax
	mov	[rsp+20h],edx
	mov	rdx,rbx
	call	457F40h
	cmp	qword ptr [rsp+30h],0FFh
	jz	458360h

l00000000004582E1:
	mov	rdx,[rbx+20h]
	mov	r8,[rbx+28h]
	cmp	di,0FFh
	setz	bpl
	cmp	rdx,r8
	jnc	458370h

l00000000004582F6:
	test	bpl,bpl
	jnz	458307h

l00000000004582FB:
	mov	[r8],di
	add	r8,2h
	mov	[rbx+28h],r8

l0000000000458307:
	sub	r8,rdx
	mov	rcx,rbx
	sar	r8,1h
	call	457490h
	test	al,al
	jz	458360h

l0000000000458319:
	test	byte ptr [rbx+58h],11h
	jz	458460h

l0000000000458323:
	mov	rdx,[rbx+70h]
	mov	rax,[rbx+68h]
	cmp	rdx,1h
	mov	[rbx+8h],rax
	mov	[rbx+10h],rax
	mov	[rbx+18h],rax
	jbe	458470h

l0000000000458341:
	mov	[rbx+28h],rax
	mov	[rbx+20h],rax
	lea	rax,[rax+rdx*2-2h]
	mov	[rbx+30h],rax

l0000000000458352:
	test	bpl,bpl
	mov	eax,0h
	cmovnz	esi,eax

l000000000045835D:
	jmp	458365h
000000000045835F                                              90                .

l0000000000458360:
	mov	esi,0FFFFFFFFh

l0000000000458365:
	mov	eax,esi
	add	rsp,58h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret

l0000000000458370:
	mov	rdx,[rbx+70h]
	cmp	rdx,1h
	jbe	458412h

l000000000045837E:
	test	byte ptr [rbx+58h],11h
	jnz	458430h

l0000000000458388:
	mov	rax,[rbx+68h]
	mov	qword ptr [rbx+28h],+0h
	mov	qword ptr [rbx+20h],+0h
	mov	qword ptr [rbx+30h],+0h
	mov	[rbx+8h],rax
	mov	[rbx+10h],rax
	mov	[rbx+18h],rax

l00000000004583B0:
	test	bpl,bpl
	mov	byte ptr [rbx+7Ah],1h
	jnz	458420h

l00000000004583B9:
	mov	rax,[rbx+28h]
	mov	[rax],di
	add	rax,2h
	mov	[rbx+28h],rax
	jmp	458365h
00000000004583CA                               66 0F 1F 44 00 00           f..D..

l00000000004583D0:
	mov	rax,[rbx+8h]
	xor	edx,edx
	cmp	[rbx+10h],rax
	mov	rax,[rbx+80h]
	mov	rcx,[rbx+68h]
	mov	byte ptr [rbx+90h],0h
	setnz	dl
	mov	[rbx+8h],rcx
	lea	rax,[rax+rdx*2]
	mov	rdx,[rbx+88h]
	mov	[rbx+80h],rax
	mov	[rbx+10h],rax
	mov	[rbx+18h],rdx
	jmp	4582ACh

l0000000000458412:
	test	bpl,bpl
	mov	[rsp+4Eh],di
	jz	458490h

l000000000045841C:
	mov	byte ptr [rbx+7Ah],1h

l0000000000458420:
	xor	esi,esi
	mov	eax,esi
	add	rsp,58h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
000000000045842D                                        0F 1F 00              ...

l0000000000458430:
	mov	rax,[rbx+68h]
	mov	[rbx+8h],rax
	mov	[rbx+10h],rax
	mov	[rbx+18h],rax
	mov	[rbx+28h],rax
	mov	[rbx+20h],rax
	lea	rax,[rax+rdx*2-2h]
	mov	[rbx+30h],rax
	jmp	4583B0h
0000000000458456                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l0000000000458460:
	mov	rax,[rbx+68h]
	mov	[rbx+8h],rax
	mov	[rbx+10h],rax
	mov	[rbx+18h],rax

l0000000000458470:
	mov	qword ptr [rbx+28h],+0h
	mov	qword ptr [rbx+20h],+0h
	mov	qword ptr [rbx+30h],+0h
	jmp	458352h
000000000045848D                                        0F 1F 00              ...

l0000000000458490:
	lea	rdx,[rsp+4Eh]
	mov	r8d,1h
	mov	rcx,rbx
	call	457490h
	test	al,al
	jz	458360h

l00000000004584AB:
	mov	byte ptr [rbx+7Ah],1h
	jmp	458365h
00000000004584B4             90 90 90 90 90 90 90 90 90 90 90 90     ............

;; fn00000000004584C0: 00000000004584C0
fn00000000004584C0 proc
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,40h
	test	byte ptr [rcx+58h],8h
	mov	rbx,rcx
	mov	edi,edx
	mov	esi,edx
	jz	458541h

l00000000004584D7:
	cmp	byte ptr [rcx+7Ah],0h
	jnz	458530h

l00000000004584DD:
	cmp	dx,0FFh
	mov	rax,[rcx+10h]
	movzx	r12d,byte ptr [rcx+90h]
	setz	bpl
	cmp	[rcx+8h],rax
	jnc	4585AEh

l00000000004584FB:
	lea	rdx,[rax-2h]
	movzx	eax,word ptr [rax-2h]
	mov	[rcx+10h],rdx

l0000000000458507:
	cmp	di,ax
	setz	al
	cmp	bpl,al
	jc	458546h

l0000000000458512:
	test	bpl,bpl
	jz	458553h

l0000000000458517:
	xor	esi,esi
	mov	eax,esi
	add	rsp,40h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
0000000000458526                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l0000000000458530:
	mov	rax,[rcx]
	mov	edx,0FFFFh
	call	qword ptr [rax+68h]
	cmp	ax,0FFh
	jnz	458572h

l0000000000458541:
	mov	esi,0FFFFFFFFh

l0000000000458546:
	mov	eax,esi
	add	rsp,40h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret

l0000000000458553:
	test	r12b,r12b
	jnz	458541h

l0000000000458558:
	cmp	byte ptr [rbx+90h],0h
	mov	rax,[rbx+10h]
	jz	4585F5h

l0000000000458569:
	mov	byte ptr [rbx+79h],1h
	mov	[rax],di
	jmp	458546h

l0000000000458572:
	mov	rax,[rbx+68h]
	movzx	r12d,byte ptr [rbx+90h]
	cmp	di,0FFh
	mov	qword ptr [rbx+28h],+0h
	mov	qword ptr [rbx+20h],+0h
	setz	bpl
	mov	qword ptr [rbx+30h],+0h
	mov	byte ptr [rbx+7Ah],0h
	mov	[rbx+8h],rax
	mov	[rbx+10h],rax
	mov	[rbx+18h],rax

l00000000004585AE:
	mov	rax,[rbx]
	lea	rcx,[rsp+30h]
	mov	dword ptr [rsp+20h],18h
	mov	r9d,1h
	mov	r8,-1h
	mov	rdx,rbx
	call	qword ptr [rax+20h]
	cmp	qword ptr [rsp+30h],0FFh
	jz	458541h

l00000000004585DD:
	mov	rax,[rbx]
	mov	rcx,rbx
	call	qword ptr [rax+48h]
	cmp	ax,0FFh
	jnz	458507h

l00000000004585F0:
	jmp	458541h

l00000000004585F5:
	mov	[rbx+80h],rax
	mov	rax,[rbx+18h]
	lea	rdx,[rbx+7Eh]
	mov	byte ptr [rbx+90h],1h
	mov	[rbx+18h],rdx
	mov	[rbx+88h],rax
	lea	rax,[rbx+7Ch]
	mov	[rbx+8h],rax
	mov	[rbx+10h],rax
	jmp	458569h
0000000000458627                      90 90 90 90 90 90 90 90 90        .........

;; fn0000000000458630: 0000000000458630
fn0000000000458630 proc
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,28h
	mov	ebx,[rcx+58h]
	test	bl,8h
	jz	4586B0h

l0000000000458640:
	lea	rbp,[rcx+48h]
	mov	rsi,rcx
	mov	rcx,rbp
	call	42AA50h
	test	al,al
	jz	4586B0h

l0000000000458653:
	mov	rdi,[rsi+18h]
	sub	rdi,[rsi+10h]
	and	ebx,4h
	mov	rcx,[rsi+98h]
	sar	rdi,1h
	test	rcx,rcx
	jz	4586C3h

l000000000045866D:
	mov	rdx,[rcx]
	call	qword ptr [rdx+28h]
	test	eax,eax
	js	4586B7h

l0000000000458677:
	test	ebx,ebx
	jz	4586B7h

l000000000045867B:
	mov	rcx,rbp
	call	455020h
	mov	rcx,[rsi+98h]
	mov	rbx,rax
	mov	rax,[rcx]
	call	qword ptr [rax+40h]
	movsxd	rcx,eax
	mov	rax,rbx
	cqo
	idiv	rcx
	add	rdi,rax
	mov	rax,rdi
	add	rsp,28h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
00000000004586AD                                        0F 1F 00              ...

l00000000004586B0:
	mov	rdi,-1h

l00000000004586B7:
	mov	rax,rdi
	add	rsp,28h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret

l00000000004586C3:
	call	470820h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop

;; fn00000000004586D0: 00000000004586D0
;;   Called from:
;;     00000000004586CF (in fn0000000000458630)
fn00000000004586D0 proc
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,68h
	test	byte ptr [rcx+58h],8h
	jz	458905h

l00000000004586EA:
	cmp	byte ptr [rcx+7Ah],0h
	mov	rbx,rcx
	jnz	458970h

l00000000004586F7:
	mov	rax,[rcx+10h]

l00000000004586FB:
	cmp	byte ptr [rbx+90h],0h
	jnz	458A40h

l0000000000458708:
	mov	rdx,[rbx+18h]

l000000000045870C:
	cmp	rdx,rax
	ja	458963h

l0000000000458715:
	mov	rax,[rbx+70h]
	mov	rcx,[rbx+98h]
	lea	rdi,[rax-1h]
	cmp	rax,2h
	mov	eax,1h
	cmovc	rdi,rax

l0000000000458731:
	test	rcx,rcx
	jz	458BD3h

l000000000045873A:
	mov	rax,[rcx]
	call	qword ptr [rax+30h]
	test	al,al
	jnz	4588B0h

l0000000000458748:
	mov	rcx,[rbx+98h]
	mov	rax,[rcx]
	call	qword ptr [rax+28h]
	test	eax,eax
	jle	458B8Ch

l000000000045875D:
	cdqe
	imul	rax,rdi
	mov	rsi,rax

l0000000000458766:
	mov	rdx,[rbx+0B0h]
	mov	rbp,[rbx+0B8h]
	mov	r10,rax
	xor	ecx,ecx
	sub	rbp,rdx
	sub	r10,rbp
	cmp	rax,rbp
	cmovle	r10,rcx

l0000000000458786:
	cmp	byte ptr [rbx+79h],0h
	jz	45879Dh

l000000000045878C:
	mov	rax,[rbx+8h]
	cmp	[rbx+18h],rax
	jnz	45879Dh

l0000000000458796:
	test	rbp,rbp
	cmovnz	r10,rcx

l000000000045879D:
	cmp	rsi,[rbx+0A8h]
	jg	458B01h

l00000000004587AA:
	test	rbp,rbp
	jnz	458B53h

l00000000004587B3:
	mov	rax,[rbx+0A0h]
	xor	r13d,r13d

l00000000004587BD:
	lea	rdx,[rax+r13]
	mov	[rbx+0B0h],rax
	mov	eax,[rbx+60h]
	xor	esi,esi
	xor	r15d,r15d
	test	r10,r10
	mov	[rbx+0B8h],rdx
	lea	r12,[rdi+rdi]
	lea	rbp,[rbx+48h]
	mov	[rbx+64h],eax
	lea	rax,[rbx+60h]
	lea	r14,[rsp+58h]
	mov	[rsp+48h],rax
	jg	458870h

l00000000004587F5:
	jmp	458A30h
00000000004587FA                               66 0F 1F 44 00 00           f..D..

l0000000000458800:
	xor	r13d,r13d
	cmp	rax,0FFh
	jz	458920h

l000000000045880D:
	add	rax,[rbx+0B8h]
	mov	rdx,rax
	mov	[rbx+0B8h],rax

l000000000045881E:
	mov	r8,[rbx+0B0h]
	mov	r9,[rbx+8h]
	cmp	rdx,r8
	mov	[rsp+58h],r9
	ja	4589B2h

l0000000000458837:
	cmp	esi,3h
	jz	4589F5h

l0000000000458840:
	mov	r15,[rsp+58h]
	sub	r15,r9
	sar	r15,1h
	cmp	esi,2h
	jz	458920h

l0000000000458854:
	test	r15,r15
	setz	al
	cmp	r13b,al
	jnc	458920h

l0000000000458863:
	mov	rdx,[rbx+0B8h]
	mov	r10d,1h

l0000000000458870:
	mov	rax,rdx
	sub	rax,[rbx+0A0h]
	add	rax,r10
	cmp	rax,[rbx+0A8h]
	jg	458BC7h

l000000000045888A:
	mov	r8,r10
	mov	rcx,rbp
	call	454DE0h
	test	rax,rax
	jnz	458800h

l000000000045889E:
	mov	r13d,1h
	jmp	45880Dh
00000000004588A9                            0F 1F 80 00 00 00 00          .......

l00000000004588B0:
	mov	rdx,[rbx+8h]
	lea	rcx,[rbx+48h]
	mov	r8,rdi
	call	454DE0h
	cmp	rax,0h
	mov	r15,rax
	jnz	458AB0h

l00000000004588CD:
	xor	esi,esi
	test	byte ptr [rbx+58h],10h
	jz	458AC0h

l00000000004588D9:
	mov	rax,[rbx+68h]
	mov	qword ptr [rbx+28h],+0h
	mov	qword ptr [rbx+20h],+0h
	mov	qword ptr [rbx+30h],+0h
	mov	byte ptr [rbx+79h],0h
	mov	[rbx+8h],rax
	mov	[rbx+10h],rax
	mov	[rbx+18h],rax

l0000000000458905:
	mov	eax,0FFFFFFFFh

l000000000045890A:
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
000000000045891B                                  0F 1F 44 00 00            ..D..

l0000000000458920:
	test	r15,r15
	jle	458A80h

l0000000000458929:
	test	byte ptr [rbx+58h],8h
	mov	rax,[rbx+68h]
	mov	[rbx+8h],rax
	mov	[rbx+10h],rax
	jz	458AA0h

l000000000045893F:
	lea	rdx,[rax+r15*2]
	mov	[rbx+18h],rdx

l0000000000458947:
	mov	qword ptr [rbx+28h],+0h
	mov	qword ptr [rbx+20h],+0h
	mov	qword ptr [rbx+30h],+0h
	mov	byte ptr [rbx+79h],1h

l0000000000458963:
	movzx	eax,word ptr [rax]
	jmp	45890Ah
0000000000458968                         0F 1F 84 00 00 00 00 00         ........

l0000000000458970:
	mov	rax,[rcx]
	mov	edx,0FFFFh
	call	qword ptr [rax+68h]
	cmp	ax,0FFh
	jz	45890Ah

l0000000000458981:
	mov	rax,[rbx+68h]
	mov	qword ptr [rbx+28h],+0h
	mov	qword ptr [rbx+20h],+0h
	mov	qword ptr [rbx+30h],+0h
	mov	byte ptr [rbx+7Ah],0h
	mov	[rbx+8h],rax
	mov	[rbx+10h],rax
	mov	[rbx+18h],rax
	jmp	4586FBh

l00000000004589B2:
	mov	rcx,[rbx+98h]
	lea	r11,[r9]
	mov	rax,[rcx]
	mov	[rsp+28h],r9
	lea	r9,[rbx+0B0h]
	mov	[rsp+38h],r14
	mov	[rsp+30h],r11
	mov	[rsp+20h],r9
	mov	r9,rdx
	mov	rdx,[rsp+48h]
	call	qword ptr [rax+20h]
	mov	esi,eax
	mov	r9,[rbx+8h]
	cmp	esi,3h
	jnz	458840h

l00000000004589F5:
	mov	rdx,[rbx+0A0h]
	mov	r15,[rbx+0B8h]
	mov	rcx,r9
	sub	r15,rdx
	cmp	rdi,r15
	cmovbe	r15,rdi

l0000000000458A10:
	lea	r8,[r15+r15]
	call	41BCC0h
	mov	rax,r15
	add	rax,[rbx+0A0h]
	mov	[rbx+0B0h],rax
	jmp	458854h
0000000000458A2F                                              90                .

l0000000000458A30:
	xor	r13d,r13d
	jmp	45881Eh
0000000000458A38                         0F 1F 84 00 00 00 00 00         ........

l0000000000458A40:
	xor	edx,edx
	cmp	[rbx+8h],rax
	mov	rax,[rbx+80h]
	mov	rcx,[rbx+68h]
	mov	byte ptr [rbx+90h],0h
	setnz	dl
	mov	[rbx+8h],rcx
	lea	rax,[rax+rdx*2]
	mov	rdx,[rbx+88h]
	mov	[rbx+80h],rax
	mov	[rbx+10h],rax
	mov	[rbx+18h],rdx
	jmp	45870Ch
0000000000458A7E                                           66 90               f.

l0000000000458A80:
	test	r13b,r13b
	jnz	458AC0h

l0000000000458A85:
	cmp	esi,2h
	jz	458B80h

l0000000000458A8E:
	lea	rcx,[000000000048D510]                                 ; [rip+00034A7B]
	call	470B20h
	nop	word ptr [rax+rax+0h]

l0000000000458AA0:
	mov	[rbx+18h],rax
	jmp	458947h
0000000000458AA9                            0F 1F 80 00 00 00 00          .......

l0000000000458AB0:
	jg	458929h

l0000000000458AB6:
	jmp	458A8Eh
0000000000458AB8                         0F 1F 84 00 00 00 00 00         ........

l0000000000458AC0:
	mov	rax,[rbx+68h]
	cmp	esi,1h
	mov	qword ptr [rbx+28h],+0h
	mov	qword ptr [rbx+20h],+0h
	mov	qword ptr [rbx+30h],+0h
	mov	byte ptr [rbx+79h],0h
	mov	[rbx+8h],rax
	mov	[rbx+10h],rax
	mov	[rbx+18h],rax
	jnz	458905h

l0000000000458AF5:
	lea	rcx,[000000000048D4A0]                                 ; [rip+000349A4]
	call	470B20h

l0000000000458B01:
	mov	rcx,rsi
	mov	[rsp+48h],r10
	xor	r13d,r13d
	call	475560h
	test	rbp,rbp
	mov	r12,rax
	mov	r10,[rsp+48h]
	jnz	458BA8h

l0000000000458B22:
	mov	rcx,[rbx+0A0h]
	test	rcx,rcx
	jz	458B3Dh

l0000000000458B2E:
	mov	[rsp+48h],r10
	call	475540h
	mov	r10,[rsp+48h]

l0000000000458B3D:
	mov	[rbx+0A0h],r12
	mov	[rbx+0A8h],rsi
	mov	rax,r12
	jmp	4587BDh

l0000000000458B53:
	mov	rcx,[rbx+0A0h]
	mov	r8,rbp
	mov	[rsp+48h],r10
	mov	r13,rbp
	call	41BD28h
	mov	rax,[rbx+0A0h]
	mov	r10,[rsp+48h]
	jmp	4587BDh
0000000000458B7B                                  0F 1F 44 00 00            ..D..

l0000000000458B80:
	lea	rcx,[000000000048D4D8]                                 ; [rip+00034951]
	call	470B20h

l0000000000458B8C:
	mov	rcx,[rbx+98h]
	mov	rax,[rcx]
	call	qword ptr [rax+40h]
	cdqe
	lea	rsi,[rdi+rax-1h]
	mov	rax,rdi
	jmp	458766h

l0000000000458BA8:
	mov	rdx,[rbx+0B0h]
	mov	r8,rbp
	mov	rcx,rax
	mov	r13,rbp
	call	41BCC0h
	mov	r10,[rsp+48h]
	jmp	458B22h

l0000000000458BC7:
	lea	rcx,[000000000048D460]                                 ; [rip+00034892]
	call	470B20h

l0000000000458BD3:
	call	470820h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop

;; fn0000000000458BE0: 0000000000458BE0
;;   Called from:
;;     0000000000458BDF (in fn00000000004586D0)
;;     0000000000459C00 (in fn0000000000459B20)
;;     0000000000459D90 (in fn0000000000459CB0)
;;     0000000000459F18 (in fn0000000000459E40)
;;     000000000045A01A (in fn0000000000459F80)
;;     000000000045A15A (in fn000000000045A0C0)
;;     000000000045A292 (in fn000000000045A200)
;;     000000000045FE62 (in fn000000000045FDB0)
;;     000000000045FFB2 (in fn000000000045FF00)
;;     00000000004600FA (in fn0000000000460050)
;;     00000000004601A8 (in fn0000000000460150)
;;     0000000000460298 (in fn0000000000460240)
;;     0000000000460380 (in fn0000000000460330)
;;     00000000004612CA (in fn0000000000461220)
;;     000000000046140A (in fn0000000000461360)
;;     0000000000461542 (in fn00000000004614A0)
;;     00000000004615E8 (in fn00000000004615A0)
;;     00000000004616C8 (in fn0000000000461680)
;;     00000000004617A0 (in fn0000000000461760)
fn0000000000458BE0 proc
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,20h
	mov	r12,[0000000000491C40]                                 ; [rip+0003904F]
	lea	rsi,[rcx+38h]
	mov	rbx,rcx
	mov	qword ptr [rcx+8h],+0h
	mov	qword ptr [rcx+10h],+0h
	mov	qword ptr [rcx+18h],+0h
	lea	rdi,[rbx+48h]
	lea	rax,[r12+10h]
	mov	qword ptr [rcx+20h],+0h
	mov	qword ptr [rcx+28h],+0h
	mov	qword ptr [rcx+30h],+0h
	mov	[rcx],rax
	mov	rcx,rsi
	call	46AE90h
	lea	rax,[0000000000496790]                                 ; [rip+0003DB4D]
	lea	rdx,[rbx+40h]
	mov	rcx,rdi
	mov	qword ptr [rbx+40h],+0h
	mov	[rbx],rax
	call	455090h
	xor	eax,eax
	mov	dword ptr [rbx+58h],0h
	mov	dword ptr [rbx+5Ch],0h
	mov	dword ptr [rbx+60h],0h
	mov	dword ptr [rbx+64h],0h
	mov	rcx,rsi
	mov	qword ptr [rbx+68h],+0h
	mov	qword ptr [rbx+70h],+200h
	mov	byte ptr [rbx+78h],0h
	mov	byte ptr [rbx+79h],0h
	mov	byte ptr [rbx+7Ah],0h
	mov	[rbx+7Ch],ax
	mov	qword ptr [rbx+80h],+0h
	mov	qword ptr [rbx+88h],+0h
	mov	byte ptr [rbx+90h],0h
	mov	qword ptr [rbx+98h],+0h
	mov	qword ptr [rbx+0A0h],+0h
	mov	qword ptr [rbx+0A8h],+0h
	mov	qword ptr [rbx+0B0h],+0h
	mov	qword ptr [rbx+0B8h],+0h
	call	472640h
	test	al,al
	jnz	458D03h

l0000000000458CF8:
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret

l0000000000458D03:
	mov	rcx,rsi
	call	4730E0h
	mov	[rbx+98h],rax
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
0000000000458D1D                                        48 89 F9              H..
0000000000458D20 48 89 C5 E8 78 C3 FF FF 49 8D 54 24 10 48 89 F1 H...x...I.T$.H..
0000000000458D30 48 89 13 E8 E8 21 01 00 48 89 E9 E8 70 88 FB FF H....!..H...p...
0000000000458D40 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 ................

;; fn0000000000458D50: 0000000000458D50
;;   Called from:
;;     00000000004250BA (in fn00000000004250A0)
;;     0000000000425169 (in fn0000000000425150)
;;     0000000000425208 (in fn0000000000425200)
;;     000000000042523A (in fn0000000000425220)
;;     00000000004252E9 (in fn00000000004252D0)
;;     0000000000425388 (in fn0000000000425380)
fn0000000000458D50 proc
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,20h
	mov	r12,[0000000000491C40]                                 ; [rip+00038EDF]
	lea	rsi,[rcx+38h]
	mov	rbx,rcx
	mov	qword ptr [rcx+8h],+0h
	mov	qword ptr [rcx+10h],+0h
	mov	qword ptr [rcx+18h],+0h
	lea	rdi,[rbx+48h]
	lea	rax,[r12+10h]
	mov	qword ptr [rcx+20h],+0h
	mov	qword ptr [rcx+28h],+0h
	mov	qword ptr [rcx+30h],+0h
	mov	[rcx],rax
	mov	rcx,rsi
	call	46AE90h
	lea	rax,[0000000000496790]                                 ; [rip+0003D9DD]
	lea	rdx,[rbx+40h]
	mov	rcx,rdi
	mov	qword ptr [rbx+40h],+0h
	mov	[rbx],rax
	call	455090h
	xor	eax,eax
	mov	dword ptr [rbx+58h],0h
	mov	dword ptr [rbx+5Ch],0h
	mov	dword ptr [rbx+60h],0h
	mov	dword ptr [rbx+64h],0h
	mov	rcx,rsi
	mov	qword ptr [rbx+68h],+0h
	mov	qword ptr [rbx+70h],+200h
	mov	byte ptr [rbx+78h],0h
	mov	byte ptr [rbx+79h],0h
	mov	byte ptr [rbx+7Ah],0h
	mov	[rbx+7Ch],ax
	mov	qword ptr [rbx+80h],+0h
	mov	qword ptr [rbx+88h],+0h
	mov	byte ptr [rbx+90h],0h
	mov	qword ptr [rbx+98h],+0h
	mov	qword ptr [rbx+0A0h],+0h
	mov	qword ptr [rbx+0A8h],+0h
	mov	qword ptr [rbx+0B0h],+0h
	mov	qword ptr [rbx+0B8h],+0h
	call	472640h
	test	al,al
	jnz	458E73h

l0000000000458E68:
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret

l0000000000458E73:
	mov	rcx,rsi
	call	4730E0h
	mov	[rbx+98h],rax
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
0000000000458E8D                                        48 89 F9              H..
0000000000458E90 48 89 C5 E8 08 C2 FF FF 49 8D 54 24 10 48 89 F1 H.......I.T$.H..
0000000000458EA0 48 89 13 E8 78 20 01 00 48 89 E9 E8 00 87 FB FF H...x ..H.......
0000000000458EB0 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 ................

;; fn0000000000458EC0: 0000000000458EC0
fn0000000000458EC0 proc
	push	rbx
	sub	rsp,20h
	lea	rax,[0000000000496790]                                 ; [rip+0003D8C4]
	mov	rbx,rcx
	mov	[rcx],rax
	call	457800h
	lea	rcx,[rbx+48h]
	call	4550A0h
	mov	rax,[0000000000491C40]                                 ; [rip+00038D59]
	lea	rcx,[rbx+38h]
	add	rax,10h
	mov	[rbx],rax
	call	46AF20h
	mov	rcx,rbx
	add	rsp,20h
	pop	rbx
	jmp	475550h
0000000000458F04             90 90 90 90 90 90 90 90 90 90 90 90     ............

;; fn0000000000458F10: 0000000000458F10
fn0000000000458F10 proc
	push	rbx
	sub	rsp,20h
	lea	rax,[0000000000496790]                                 ; [rip+0003D874]
	mov	rbx,rcx
	mov	[rcx],rax
	call	457800h
	lea	rcx,[rbx+48h]
	call	4550A0h
	mov	rax,[0000000000491C40]                                 ; [rip+00038D09]
	lea	rcx,[rbx+38h]
	add	rax,10h
	mov	[rbx],rax
	add	rsp,20h
	pop	rbx
	jmp	46AF20h
0000000000458F4C                                     90 90 90 90             ....

;; fn0000000000458F50: 0000000000458F50
fn0000000000458F50 proc
	push	rbx
	sub	rsp,20h
	lea	rax,[0000000000496790]                                 ; [rip+0003D834]
	mov	rbx,rcx
	mov	[rcx],rax
	call	457800h
	lea	rcx,[rbx+48h]
	call	4550A0h
	mov	rax,[0000000000491C40]                                 ; [rip+00038CC9]
	lea	rcx,[rbx+38h]
	add	rax,10h
	mov	[rbx],rax
	add	rsp,20h
	pop	rbx
	jmp	46AF20h
0000000000458F8C                                     90 90 90 90             ....

;; fn0000000000458F90: 0000000000458F90
fn0000000000458F90 proc
	push	rbx
	sub	rsp,20h
	mov	rbx,rcx
	lea	rcx,[rcx+18h]
	call	455970h
	test	rax,rax
	mov	rax,[rbx]
	jz	458FC0h

l0000000000458FA9:
	add	rbx,[rax-18h]
	xor	edx,edx
	mov	rcx,rbx
	add	rsp,20h
	pop	rbx
	jmp	46E370h
0000000000458FBC                                     0F 1F 40 00             ..@.

l0000000000458FC0:
	add	rbx,[rax-18h]
	mov	edx,[rbx+20h]
	mov	rcx,rbx
	or	edx,4h
	add	rsp,20h
	pop	rbx
	jmp	46E370h
0000000000458FD7                      90 90 90 90 90 90 90 90 90        .........

;; fn0000000000458FE0: 0000000000458FE0
fn0000000000458FE0 proc
	push	rbx
	sub	rsp,20h
	mov	rdx,[rdx]
	mov	rbx,rcx
	lea	rcx,[rcx+18h]
	call	455970h
	test	rax,rax
	mov	rax,[rbx]
	jz	459010h

l0000000000458FFC:
	add	rbx,[rax-18h]
	xor	edx,edx
	mov	rcx,rbx
	add	rsp,20h
	pop	rbx
	jmp	46E370h
000000000045900F                                              90                .

l0000000000459010:
	add	rbx,[rax-18h]
	mov	edx,[rbx+20h]
	mov	rcx,rbx
	or	edx,4h
	add	rsp,20h
	pop	rbx
	jmp	46E370h
0000000000459027                      90 90 90 90 90 90 90 90 90        .........

;; fn0000000000459030: 0000000000459030
fn0000000000459030 proc
	push	rbx
	sub	rsp,20h
	mov	rbx,rcx
	lea	rcx,[rcx+18h]
	call	455AB0h
	test	rax,rax
	jz	459050h

l0000000000459046:
	add	rsp,20h
	pop	rbx
	ret
000000000045904C                                     0F 1F 40 00             ..@.

l0000000000459050:
	mov	rax,[rbx]
	add	rbx,[rax-18h]
	mov	edx,[rbx+20h]
	mov	rcx,rbx
	or	edx,4h
	add	rsp,20h
	pop	rbx
	jmp	46E370h
000000000045906A                               90 90 90 90 90 90           ......

;; fn0000000000459070: 0000000000459070
fn0000000000459070 proc
	add	rcx,60h
	jmp	42AA50h
0000000000459079                            90 90 90 90 90 90 90          .......

;; fn0000000000459080: 0000000000459080
fn0000000000459080 proc
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,20h
	lea	rsi,[rcx+0D8h]
	mov	rbx,rcx
	mov	rbp,rdx
	mov	r12d,r8d
	mov	rcx,rsi
	call	46D320h
	lea	rax,[0000000000492A58]                                 ; [rip+000399AF]
	mov	qword ptr [rbx+1B0h],+0h
	mov	byte ptr [rbx+1B8h],0h
	mov	byte ptr [rbx+1B9h],0h
	mov	qword ptr [rbx+1C0h],+0h
	xor	edx,edx
	mov	[rbx],rax
	lea	rax,[0000000000492A80]                                 ; [rip+000399A7]
	mov	qword ptr [rbx+1C8h],+0h
	mov	qword ptr [rbx+1D0h],+0h
	mov	qword ptr [rbx+1D8h],+0h
	mov	rcx,rsi
	mov	[rbx+0D8h],rax
	mov	qword ptr [rbx+8h],+0h
	call	46E310h
	lea	rax,[0000000000492AD8]                                 ; [rip+000399C0]
	xor	edx,edx
	mov	rcx,rsi
	mov	[rbx+10h],rax
	lea	rax,[0000000000492B00]                                 ; [rip+000399D8]
	mov	[rbx+0D8h],rax
	call	46E310h
	lea	rax,[0000000000496818]                                 ; [rip+0003D6DD]
	lea	rdi,[rbx+18h]
	mov	[rbx],rax
	lea	rax,[0000000000496868]                                 ; [rip+0003D71F]
	mov	rcx,rdi
	mov	[rbx+0D8h],rax
	lea	rax,[0000000000496840]                                 ; [rip+0003D6E6]
	mov	[rbx+10h],rax
	call	456E20h
	mov	rdx,rdi
	mov	rcx,rsi
	call	46E310h
	mov	r8d,r12d
	mov	rdx,rbp
	mov	rcx,rdi
	call	455970h
	test	rax,rax
	mov	rcx,rbx
	mov	rax,[rbx]
	jz	4591A0h

l0000000000459187:
	add	rcx,[rax-18h]
	xor	edx,edx
	call	46E370h
	nop
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
000000000045919E                                           66 90               f.

l00000000004591A0:
	add	rcx,[rax-18h]
	mov	edx,[rcx+20h]
	or	edx,4h
	call	46E370h
	nop
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
00000000004591BB                                  48 89 C7 48 8B            H..H.
00000000004591C0 05 5B 8C 03 00 48 89 F1 48 83 C0 10 48 89 83 D8 .[...H..H...H...
00000000004591D0 00 00 00 E8 F8 41 01 00 48 89 F9 E8 D0 83 FB FF .....A..H.......
00000000004591E0 48 89 C5 48 89 F9 48 89 EF E8 42 DF FF FF 48 8D H..H..H...B...H.
00000000004591F0 15 93 C4 03 00 48 89 D9 E8 C3 21 FF FF EB BF 48 .....H....!....H
0000000000459200 89 C7 EB EA 90 90 90 90 90 90 90 90 90 90 90 90 ................

;; fn0000000000459210: 0000000000459210
fn0000000000459210 proc
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,20h
	lea	rsi,[rcx+0D8h]
	mov	rbx,rcx
	mov	rbp,rdx
	mov	r12d,r8d
	mov	rcx,rsi
	call	46D320h
	lea	rax,[0000000000492A58]                                 ; [rip+0003981F]
	mov	qword ptr [rbx+1B0h],+0h
	mov	byte ptr [rbx+1B8h],0h
	mov	byte ptr [rbx+1B9h],0h
	mov	qword ptr [rbx+1C0h],+0h
	xor	edx,edx
	mov	[rbx],rax
	lea	rax,[0000000000492A80]                                 ; [rip+00039817]
	mov	qword ptr [rbx+1C8h],+0h
	mov	qword ptr [rbx+1D0h],+0h
	mov	qword ptr [rbx+1D8h],+0h
	mov	rcx,rsi
	mov	[rbx+0D8h],rax
	mov	qword ptr [rbx+8h],+0h
	call	46E310h
	lea	rax,[0000000000492AD8]                                 ; [rip+00039830]
	xor	edx,edx
	mov	rcx,rsi
	mov	[rbx+10h],rax
	lea	rax,[0000000000492B00]                                 ; [rip+00039848]
	mov	[rbx+0D8h],rax
	call	46E310h
	lea	rax,[0000000000496818]                                 ; [rip+0003D54D]
	lea	rdi,[rbx+18h]
	mov	[rbx],rax
	lea	rax,[0000000000496868]                                 ; [rip+0003D58F]
	mov	rcx,rdi
	mov	[rbx+0D8h],rax
	lea	rax,[0000000000496840]                                 ; [rip+0003D556]
	mov	[rbx+10h],rax
	call	456E20h
	mov	rdx,rdi
	mov	rcx,rsi
	call	46E310h
	mov	rdx,[rbp+0h]
	mov	r8d,r12d
	mov	rcx,rdi
	call	455970h
	test	rax,rax
	mov	rcx,rbx
	mov	rax,[rbx]
	jz	459330h

l0000000000459318:
	add	rcx,[rax-18h]
	xor	edx,edx
	call	46E370h
	nop
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
000000000045932F                                              90                .

l0000000000459330:
	add	rcx,[rax-18h]
	mov	edx,[rcx+20h]
	or	edx,4h
	call	46E370h
	nop
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
000000000045934B                                  48 89 C7 48 8B            H..H.
0000000000459350 05 CB 8A 03 00 48 89 F1 48 83 C0 10 48 89 83 D8 .....H..H...H...
0000000000459360 00 00 00 E8 68 40 01 00 48 89 F9 E8 40 82 FB FF ....h@..H...@...
0000000000459370 48 89 C5 48 89 F9 48 89 EF E8 B2 DD FF FF 48 8D H..H..H.......H.
0000000000459380 15 03 C3 03 00 48 89 D9 E8 33 20 FF FF EB BF 48 .....H...3 ....H
0000000000459390 89 C7 EB EA 90 90 90 90 90 90 90 90 90 90 90 90 ................

;; fn00000000004593A0: 00000000004593A0
fn00000000004593A0 proc
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,28h
	lea	rsi,[rcx+0D8h]
	mov	rbx,rcx
	mov	rcx,rsi
	call	46D320h
	lea	rax,[0000000000492A58]                                 ; [rip+00039697]
	mov	qword ptr [rbx+1B0h],+0h
	mov	byte ptr [rbx+1B8h],0h
	mov	byte ptr [rbx+1B9h],0h
	mov	qword ptr [rbx+1C0h],+0h
	xor	edx,edx
	mov	[rbx],rax
	lea	rax,[0000000000492A80]                                 ; [rip+0003968F]
	mov	qword ptr [rbx+1C8h],+0h
	mov	qword ptr [rbx+1D0h],+0h
	mov	qword ptr [rbx+1D8h],+0h
	mov	rcx,rsi
	mov	[rbx+0D8h],rax
	mov	qword ptr [rbx+8h],+0h
	call	46E310h
	lea	rax,[0000000000492AD8]                                 ; [rip+000396A8]
	xor	edx,edx
	mov	rcx,rsi
	mov	[rbx+10h],rax
	lea	rax,[0000000000492B00]                                 ; [rip+000396C0]
	mov	[rbx+0D8h],rax
	call	46E310h
	lea	rax,[0000000000496818]                                 ; [rip+0003D3C5]
	lea	rdi,[rbx+18h]
	mov	[rbx],rax
	lea	rax,[0000000000496868]                                 ; [rip+0003D407]
	mov	rcx,rdi
	mov	[rbx+0D8h],rax
	lea	rax,[0000000000496840]                                 ; [rip+0003D3CE]
	mov	[rbx+10h],rax
	call	456E20h
	mov	rdx,rdi
	mov	rcx,rsi
	call	46E310h
	nop
	add	rsp,28h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
0000000000459490 48 89 C7 48 8B 05 86 89 03 00 48 89 F1 48 83 C0 H..H......H..H..
00000000004594A0 10 48 89 83 D8 00 00 00 E8 23 3F 01 00 48 89 F9 .H.......#?..H..
00000000004594B0 E8 FB 80 FB FF 48 89 C5 48 89 F9 48 89 EF E8 6D .....H..H..H...m
00000000004594C0 DC FF FF 48 8D 15 BE C1 03 00 48 89 D9 E8 EE 1E ...H......H.....
00000000004594D0 FF FF EB BF 48 89 C7 EB EA 90 90 90 90 90 90 90 ....H...........

;; fn00000000004594E0: 00000000004594E0
fn00000000004594E0 proc
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,20h
	mov	rax,[rdx+10h]
	mov	rbx,rcx
	mov	rsi,rdx
	mov	rbp,r8
	mov	r12d,r9d
	mov	[rcx],rax
	mov	rcx,[rdx+18h]
	mov	rdx,[rax-18h]
	mov	[rbx+rdx],rcx
	mov	qword ptr [rbx+8h],+0h
	mov	rcx,rbx
	add	rcx,[rax-18h]
	xor	edx,edx
	call	46E310h
	mov	rax,[rsi+20h]
	xor	edx,edx
	mov	[rbx+10h],rax
	mov	rax,[rax-18h]
	lea	rcx,[rbx+rax+10h]
	mov	rax,[rsi+28h]
	mov	[rcx],rax
	call	46E310h
	mov	rax,[rsi+8h]
	lea	rdi,[rbx+18h]
	mov	rcx,rdi
	mov	[rbx],rax
	mov	rax,[rax-18h]
	mov	rdx,[rsi+30h]
	mov	[rbx+rax],rdx
	mov	rax,[rsi+38h]
	mov	[rbx+10h],rax
	mov	rax,[rsi]
	mov	[rbx],rax
	mov	rax,[rax-18h]
	mov	rdx,[rsi+40h]
	mov	[rbx+rax],rdx
	mov	rax,[rsi+48h]
	mov	[rbx+10h],rax
	call	456E20h
	mov	rax,[rbx]
	mov	rcx,rbx
	mov	rdx,rdi
	add	rcx,[rax-18h]
	call	46E310h
	mov	r8d,r12d
	mov	rdx,rbp
	mov	rcx,rdi
	call	455970h
	test	rax,rax
	mov	rcx,rbx
	mov	rax,[rbx]
	jz	4595C1h

l00000000004595AA:
	add	rcx,[rax-18h]
	xor	edx,edx
	call	46E370h
	nop
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret

l00000000004595C1:
	add	rcx,[rax-18h]
	mov	edx,[rcx+20h]
	or	edx,4h
	call	46E370h
	nop
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
00000000004595DC                                     48 8B 56 10             H.V.
00000000004595E0 48 89 13 48 8B 52 E8 48 8B 4E 18 48 89 0C 13 48 H..H.R.H.N.H...H
00000000004595F0 89 C1 E8 B9 7F FB FF 48 89 C5 48 89 F9 48 89 EF .......H..H..H..
0000000000459600 E8 2B DB FF FF 48 8D 56 08 48 89 D9 E8 AF 1D FF .+...H.V.H......
0000000000459610 FF 48 89 F9 E8 97 7F FB FF 48 89 C7 EB E7 90 90 .H.......H......

;; fn0000000000459620: 0000000000459620
fn0000000000459620 proc
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,20h
	mov	rax,[rdx+10h]
	mov	rbx,rcx
	mov	rsi,rdx
	mov	rbp,r8
	mov	r12d,r9d
	mov	[rcx],rax
	mov	rcx,[rdx+18h]
	mov	rdx,[rax-18h]
	mov	[rbx+rdx],rcx
	mov	qword ptr [rbx+8h],+0h
	mov	rcx,rbx
	add	rcx,[rax-18h]
	xor	edx,edx
	call	46E310h
	mov	rax,[rsi+20h]
	xor	edx,edx
	mov	[rbx+10h],rax
	mov	rax,[rax-18h]
	lea	rcx,[rbx+rax+10h]
	mov	rax,[rsi+28h]
	mov	[rcx],rax
	call	46E310h
	mov	rax,[rsi+8h]
	lea	rdi,[rbx+18h]
	mov	rcx,rdi
	mov	[rbx],rax
	mov	rax,[rax-18h]
	mov	rdx,[rsi+30h]
	mov	[rbx+rax],rdx
	mov	rax,[rsi+38h]
	mov	[rbx+10h],rax
	mov	rax,[rsi]
	mov	[rbx],rax
	mov	rax,[rax-18h]
	mov	rdx,[rsi+40h]
	mov	[rbx+rax],rdx
	mov	rax,[rsi+48h]
	mov	[rbx+10h],rax
	call	456E20h
	mov	rax,[rbx]
	mov	rcx,rbx
	mov	rdx,rdi
	add	rcx,[rax-18h]
	call	46E310h
	mov	rdx,[rbp+0h]
	mov	r8d,r12d
	mov	rcx,rdi
	call	455970h
	test	rax,rax
	mov	rcx,rbx
	mov	rax,[rbx]
	jz	459702h

l00000000004596EB:
	add	rcx,[rax-18h]
	xor	edx,edx
	call	46E370h
	nop
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret

l0000000000459702:
	add	rcx,[rax-18h]
	mov	edx,[rcx+20h]
	or	edx,4h
	call	46E370h
	nop
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
000000000045971D                                        48 8B 56              H.V
0000000000459720 10 48 89 13 48 8B 52 E8 48 8B 4E 18 48 89 0C 13 .H..H.R.H.N.H...
0000000000459730 48 89 C1 E8 78 7E FB FF 48 89 C5 48 89 F9 48 89 H...x~..H..H..H.
0000000000459740 EF E8 EA D9 FF FF 48 8D 56 08 48 89 D9 E8 6E 1C ......H.V.H...n.
0000000000459750 FF FF 48 89 F9 E8 56 7E FB FF 48 89 C7 EB E7 90 ..H...V~..H.....

;; fn0000000000459760: 0000000000459760
fn0000000000459760 proc
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,28h
	mov	rax,[rdx+10h]
	mov	rbx,rcx
	mov	rsi,rdx
	mov	[rcx],rax
	mov	rcx,[rdx+18h]
	mov	rdx,[rax-18h]
	mov	[rbx+rdx],rcx
	mov	qword ptr [rbx+8h],+0h
	mov	rcx,rbx
	add	rcx,[rax-18h]
	xor	edx,edx
	call	46E310h
	mov	rax,[rsi+20h]
	xor	edx,edx
	mov	[rbx+10h],rax
	mov	rax,[rax-18h]
	lea	rcx,[rbx+rax+10h]
	mov	rax,[rsi+28h]
	mov	[rcx],rax
	call	46E310h
	mov	rax,[rsi+8h]
	lea	rdi,[rbx+18h]
	mov	rcx,rdi
	mov	[rbx],rax
	mov	rax,[rax-18h]
	mov	rdx,[rsi+30h]
	mov	[rbx+rax],rdx
	mov	rax,[rsi+38h]
	mov	[rbx+10h],rax
	mov	rax,[rsi]
	mov	[rbx],rax
	mov	rax,[rax-18h]
	mov	rdx,[rsi+40h]
	mov	[rbx+rax],rdx
	mov	rax,[rsi+48h]
	mov	[rbx+10h],rax
	call	456E20h
	mov	rax,[rbx]
	mov	rcx,rbx
	mov	rdx,rdi
	add	rcx,[rax-18h]
	call	46E310h
	nop
	add	rsp,28h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
0000000000459813          48 8B 56 10 48 89 13 48 8B 52 E8 48 8B    H.V.H..H.R.H.
0000000000459820 4E 18 48 89 0C 13 48 89 C1 E8 82 7D FB FF 48 89 N.H...H....}..H.
0000000000459830 C5 48 89 F9 48 89 EF E8 F4 D8 FF FF 48 8D 56 08 .H..H.......H.V.
0000000000459840 48 89 D9 E8 78 1B FF FF 48 89 F9 E8 60 7D FB FF H...x...H...`}..
0000000000459850 48 89 C7 EB E7 90 90 90 90 90 90 90 90 90 90 90 H...............

;; fn0000000000459860: 0000000000459860
fn0000000000459860 proc
	push	rbx
	sub	rsp,20h
	lea	rax,[0000000000496818]                                 ; [rip+0003CFAC]
	mov	rbx,rcx
	lea	rcx,[rcx+18h]
	mov	[rcx-18h],rax
	lea	rax,[0000000000496868]                                 ; [rip+0003CFEA]
	mov	[rcx+0C0h],rax
	lea	rax,[0000000000496840]                                 ; [rip+0003CFB4]
	mov	[rcx-8h],rax
	lea	rax,[0000000000496710]                                 ; [rip+0003CE79]
	mov	[rcx],rax
	call	455AB0h
	lea	rcx,[rbx+60h]
	call	4550A0h
	mov	rax,[0000000000491C30]                                 ; [rip+00038381]
	lea	rcx,[rbx+50h]
	add	rax,10h
	mov	[rbx+18h],rax
	call	46AF20h
	mov	rax,[0000000000491E20]                                 ; [rip+00038559]
	lea	rcx,[rbx+0D8h]
	add	rax,10h
	mov	[rbx+0D8h],rax
	call	46D3D0h
	mov	rcx,rbx
	add	rsp,20h
	pop	rbx
	jmp	475550h
00000000004598EB                                  90 90 90 90 90            .....

;; fn00000000004598F0: 00000000004598F0
fn00000000004598F0 proc
	push	rbx
	sub	rsp,20h
	lea	rax,[0000000000496818]                                 ; [rip+0003CF1C]
	mov	rbx,rcx
	lea	rcx,[rcx+18h]
	mov	[rcx-18h],rax
	lea	rax,[0000000000496868]                                 ; [rip+0003CF5A]
	mov	[rcx+0C0h],rax
	lea	rax,[0000000000496840]                                 ; [rip+0003CF24]
	mov	[rcx-8h],rax
	lea	rax,[0000000000496710]                                 ; [rip+0003CDE9]
	mov	[rcx],rax
	call	455AB0h
	lea	rcx,[rbx+60h]
	call	4550A0h
	mov	rax,[0000000000491C30]                                 ; [rip+000382F1]
	lea	rcx,[rbx+50h]
	add	rax,10h
	mov	[rbx+18h],rax
	call	46AF20h
	mov	rax,[0000000000491E20]                                 ; [rip+000384C9]
	lea	rcx,[rbx+0D8h]
	add	rax,10h
	mov	[rbx+0D8h],rax
	add	rsp,20h
	pop	rbx
	jmp	46D3D0h
0000000000459973          90 90 90 90 90 90 90 90 90 90 90 90 90    .............

;; fn0000000000459980: 0000000000459980
fn0000000000459980 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	mov	rax,[rdx]
	mov	rsi,rdx
	mov	rbx,rcx
	lea	rcx,[rcx+18h]
	mov	[rcx-18h],rax
	mov	rax,[rax-18h]
	mov	rdx,[rdx+40h]
	mov	[rcx+rax-18h],rdx
	mov	rax,[rsi+48h]
	mov	[rcx-8h],rax
	lea	rax,[0000000000496710]                                 ; [rip+0003CD5D]
	mov	[rcx],rax
	call	455AB0h
	lea	rcx,[rbx+60h]
	call	4550A0h
	mov	rax,[0000000000491C30]                                 ; [rip+00038265]
	lea	rcx,[rbx+50h]
	add	rax,10h
	mov	[rbx+18h],rax
	call	46AF20h
	mov	rax,[rsi+8h]
	mov	[rbx],rax
	mov	rax,[rax-18h]
	mov	rdx,[rsi+30h]
	mov	[rbx+rax],rdx
	mov	rax,[rsi+38h]
	mov	[rbx+10h],rax
	mov	rax,[rsi+20h]
	mov	[rbx+10h],rax
	mov	rax,[rax-18h]
	mov	rdx,[rsi+28h]
	mov	[rbx+rax+10h],rdx
	mov	rax,[rsi+10h]
	mov	[rbx],rax
	mov	rax,[rax-18h]
	mov	rdx,[rsi+18h]
	mov	[rbx+rax],rdx
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret
0000000000459A26                   90 90 90 90 90 90 90 90 90 90       ..........

;; fn0000000000459A30: 0000000000459A30
fn0000000000459A30 proc
	push	rbx
	sub	rsp,20h
	mov	rbx,rcx
	lea	rcx,[rcx+18h]
	call	4576D0h
	test	rax,rax
	mov	rax,[rbx]
	jz	459A60h

l0000000000459A49:
	add	rbx,[rax-18h]
	xor	edx,edx
	mov	rcx,rbx
	add	rsp,20h
	pop	rbx
	jmp	46EB40h
0000000000459A5C                                     0F 1F 40 00             ..@.

l0000000000459A60:
	add	rbx,[rax-18h]
	mov	edx,[rbx+20h]
	mov	rcx,rbx
	or	edx,4h
	add	rsp,20h
	pop	rbx
	jmp	46EB40h
0000000000459A77                      90 90 90 90 90 90 90 90 90        .........

;; fn0000000000459A80: 0000000000459A80
fn0000000000459A80 proc
	push	rbx
	sub	rsp,20h
	mov	rdx,[rdx]
	mov	rbx,rcx
	lea	rcx,[rcx+18h]
	call	4576D0h
	test	rax,rax
	mov	rax,[rbx]
	jz	459AB0h

l0000000000459A9C:
	add	rbx,[rax-18h]
	xor	edx,edx
	mov	rcx,rbx
	add	rsp,20h
	pop	rbx
	jmp	46EB40h
0000000000459AAF                                              90                .

l0000000000459AB0:
	add	rbx,[rax-18h]
	mov	edx,[rbx+20h]
	mov	rcx,rbx
	or	edx,4h
	add	rsp,20h
	pop	rbx
	jmp	46EB40h
0000000000459AC7                      90 90 90 90 90 90 90 90 90        .........

;; fn0000000000459AD0: 0000000000459AD0
fn0000000000459AD0 proc
	push	rbx
	sub	rsp,20h
	mov	rbx,rcx
	lea	rcx,[rcx+18h]
	call	457800h
	test	rax,rax
	jz	459AF0h

l0000000000459AE6:
	add	rsp,20h
	pop	rbx
	ret
0000000000459AEC                                     0F 1F 40 00             ..@.

l0000000000459AF0:
	mov	rax,[rbx]
	add	rbx,[rax-18h]
	mov	edx,[rbx+20h]
	mov	rcx,rbx
	or	edx,4h
	add	rsp,20h
	pop	rbx
	jmp	46EB40h
0000000000459B0A                               90 90 90 90 90 90           ......

;; fn0000000000459B10: 0000000000459B10
fn0000000000459B10 proc
	add	rcx,60h
	jmp	42AA50h
0000000000459B19                            90 90 90 90 90 90 90          .......

;; fn0000000000459B20: 0000000000459B20
fn0000000000459B20 proc
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,20h
	lea	rsi,[rcx+0D8h]
	mov	rbx,rcx
	mov	rbp,rdx
	mov	r12d,r8d
	mov	rcx,rsi
	call	46D320h
	xor	eax,eax
	mov	qword ptr [rbx+1B0h],+0h
	mov	byte ptr [rbx+1BAh],0h
	mov	[rbx+1B8h],ax
	lea	rax,[0000000000492B58]                                 ; [rip+00038FF4]
	mov	qword ptr [rbx+1C0h],+0h
	mov	qword ptr [rbx+1C8h],+0h
	mov	qword ptr [rbx+1D0h],+0h
	xor	edx,edx
	mov	[rbx],rax
	lea	rax,[0000000000492B80]                                 ; [rip+00038FEF]
	mov	qword ptr [rbx+1D8h],+0h
	mov	qword ptr [rbx+8h],+0h
	mov	rcx,rsi
	mov	[rbx+0D8h],rax
	call	46EAE0h
	lea	rax,[0000000000492C58]                                 ; [rip+0003909E]
	xor	edx,edx
	mov	rcx,rsi
	mov	[rbx+10h],rax
	lea	rax,[0000000000492C80]                                 ; [rip+000390B6]
	mov	[rbx+0D8h],rax
	call	46EAE0h
	lea	rax,[0000000000496898]                                 ; [rip+0003CCBB]
	lea	rdi,[rbx+18h]
	mov	[rbx],rax
	lea	rax,[00000000004968E8]                                 ; [rip+0003CCFD]
	mov	rcx,rdi
	mov	[rbx+0D8h],rax
	lea	rax,[00000000004968C0]                                 ; [rip+0003CCC4]
	mov	[rbx+10h],rax
	call	458BE0h
	mov	rdx,rdi
	mov	rcx,rsi
	call	46EAE0h
	mov	r8d,r12d
	mov	rdx,rbp
	mov	rcx,rdi
	call	4576D0h
	test	rax,rax
	mov	rcx,rbx
	mov	rax,[rbx]
	jz	459C40h

l0000000000459C29:
	add	rcx,[rax-18h]
	xor	edx,edx
	call	46EB40h
	nop
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret

l0000000000459C40:
	add	rcx,[rax-18h]
	mov	edx,[rcx+20h]
	or	edx,4h
	call	46EB40h
	nop
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
0000000000459C5B                                  48 89 C7 48 8B            H..H.
0000000000459C60 05 CB 81 03 00 48 89 F1 48 83 C0 10 48 89 83 D8 .....H..H...H...
0000000000459C70 00 00 00 E8 58 37 01 00 48 89 F9 E8 30 79 FB FF ....X7..H...0y..
0000000000459C80 48 89 C5 48 89 F9 48 89 EF E8 82 F2 FF FF 48 8D H..H..H.......H.
0000000000459C90 15 73 BA 03 00 48 89 D9 E8 23 6C 00 00 EB BF 48 .s...H...#l....H
0000000000459CA0 89 C7 EB EA 90 90 90 90 90 90 90 90 90 90 90 90 ................

;; fn0000000000459CB0: 0000000000459CB0
fn0000000000459CB0 proc
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,20h
	lea	rsi,[rcx+0D8h]
	mov	rbx,rcx
	mov	rbp,rdx
	mov	r12d,r8d
	mov	rcx,rsi
	call	46D320h
	xor	eax,eax
	mov	qword ptr [rbx+1B0h],+0h
	mov	byte ptr [rbx+1BAh],0h
	mov	[rbx+1B8h],ax
	lea	rax,[0000000000492B58]                                 ; [rip+00038E64]
	mov	qword ptr [rbx+1C0h],+0h
	mov	qword ptr [rbx+1C8h],+0h
	mov	qword ptr [rbx+1D0h],+0h
	xor	edx,edx
	mov	[rbx],rax
	lea	rax,[0000000000492B80]                                 ; [rip+00038E5F]
	mov	qword ptr [rbx+1D8h],+0h
	mov	qword ptr [rbx+8h],+0h
	mov	rcx,rsi
	mov	[rbx+0D8h],rax
	call	46EAE0h
	lea	rax,[0000000000492C58]                                 ; [rip+00038F0E]
	xor	edx,edx
	mov	rcx,rsi
	mov	[rbx+10h],rax
	lea	rax,[0000000000492C80]                                 ; [rip+00038F26]
	mov	[rbx+0D8h],rax
	call	46EAE0h
	lea	rax,[0000000000496898]                                 ; [rip+0003CB2B]
	lea	rdi,[rbx+18h]
	mov	[rbx],rax
	lea	rax,[00000000004968E8]                                 ; [rip+0003CB6D]
	mov	rcx,rdi
	mov	[rbx+0D8h],rax
	lea	rax,[00000000004968C0]                                 ; [rip+0003CB34]
	mov	[rbx+10h],rax
	call	458BE0h
	mov	rdx,rdi
	mov	rcx,rsi
	call	46EAE0h
	mov	rdx,[rbp+0h]
	mov	r8d,r12d
	mov	rcx,rdi
	call	4576D0h
	test	rax,rax
	mov	rcx,rbx
	mov	rax,[rbx]
	jz	459DD1h

l0000000000459DBA:
	add	rcx,[rax-18h]
	xor	edx,edx
	call	46EB40h
	nop
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret

l0000000000459DD1:
	add	rcx,[rax-18h]
	mov	edx,[rcx+20h]
	or	edx,4h
	call	46EB40h
	nop
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
0000000000459DEC                                     48 89 C7 48             H..H
0000000000459DF0 8B 05 3A 80 03 00 48 89 F1 48 83 C0 10 48 89 83 ..:...H..H...H..
0000000000459E00 D8 00 00 00 E8 C7 35 01 00 48 89 F9 E8 9F 77 FB ......5..H....w.
0000000000459E10 FF 48 89 C5 48 89 F9 48 89 EF E8 F1 F0 FF FF 48 .H..H..H.......H
0000000000459E20 8D 15 E2 B8 03 00 48 89 D9 E8 92 6A 00 00 EB BF ......H....j....
0000000000459E30 48 89 C7 EB EA 90 90 90 90 90 90 90 90 90 90 90 H...............

;; fn0000000000459E40: 0000000000459E40
fn0000000000459E40 proc
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,28h
	lea	rsi,[rcx+0D8h]
	mov	rbx,rcx
	mov	rcx,rsi
	call	46D320h
	xor	eax,eax
	mov	qword ptr [rbx+1B0h],+0h
	mov	byte ptr [rbx+1BAh],0h
	mov	[rbx+1B8h],ax
	lea	rax,[0000000000492B58]                                 ; [rip+00038CDC]
	mov	qword ptr [rbx+1C0h],+0h
	mov	qword ptr [rbx+1C8h],+0h
	mov	qword ptr [rbx+1D0h],+0h
	xor	edx,edx
	mov	[rbx],rax
	lea	rax,[0000000000492B80]                                 ; [rip+00038CD7]
	mov	qword ptr [rbx+1D8h],+0h
	mov	qword ptr [rbx+8h],+0h
	mov	rcx,rsi
	mov	[rbx+0D8h],rax
	call	46EAE0h
	lea	rax,[0000000000492C58]                                 ; [rip+00038D86]
	xor	edx,edx
	mov	rcx,rsi
	mov	[rbx+10h],rax
	lea	rax,[0000000000492C80]                                 ; [rip+00038D9E]
	mov	[rbx+0D8h],rax
	call	46EAE0h
	lea	rax,[0000000000496898]                                 ; [rip+0003C9A3]
	lea	rdi,[rbx+18h]
	mov	[rbx],rax
	lea	rax,[00000000004968E8]                                 ; [rip+0003C9E5]
	mov	rcx,rdi
	mov	[rbx+0D8h],rax
	lea	rax,[00000000004968C0]                                 ; [rip+0003C9AC]
	mov	[rbx+10h],rax
	call	458BE0h
	mov	rdx,rdi
	mov	rcx,rsi
	call	46EAE0h
	nop
	add	rsp,28h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
0000000000459F32       48 89 C7 48 8B 05 F4 7E 03 00 48 89 F1 48   H..H...~..H..H
0000000000459F40 83 C0 10 48 89 83 D8 00 00 00 E8 81 34 01 00 48 ...H........4..H
0000000000459F50 89 F9 E8 59 76 FB FF 48 89 C5 48 89 F9 48 89 EF ...Yv..H..H..H..
0000000000459F60 E8 AB EF FF FF 48 8D 15 9C B7 03 00 48 89 D9 E8 .....H......H...
0000000000459F70 4C 69 00 00 EB BF 48 89 C7 EB EA 90 90 90 90 90 Li....H.........

;; fn0000000000459F80: 0000000000459F80
fn0000000000459F80 proc
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,20h
	mov	rax,[rdx+10h]
	mov	rbx,rcx
	mov	rsi,rdx
	mov	rbp,r8
	mov	r12d,r9d
	mov	[rcx],rax
	mov	rcx,[rdx+18h]
	mov	rdx,[rax-18h]
	mov	[rbx+rdx],rcx
	mov	qword ptr [rbx+8h],+0h
	mov	rcx,rbx
	add	rcx,[rax-18h]
	xor	edx,edx
	call	46EAE0h
	mov	rax,[rsi+20h]
	xor	edx,edx
	mov	[rbx+10h],rax
	mov	rax,[rax-18h]
	lea	rcx,[rbx+rax+10h]
	mov	rax,[rsi+28h]
	mov	[rcx],rax
	call	46EAE0h
	mov	rax,[rsi+8h]
	lea	rdi,[rbx+18h]
	mov	rcx,rdi
	mov	[rbx],rax
	mov	rax,[rax-18h]
	mov	rdx,[rsi+30h]
	mov	[rbx+rax],rdx
	mov	rax,[rsi+38h]
	mov	[rbx+10h],rax
	mov	rax,[rsi]
	mov	[rbx],rax
	mov	rax,[rax-18h]
	mov	rdx,[rsi+40h]
	mov	[rbx+rax],rdx
	mov	rax,[rsi+48h]
	mov	[rbx+10h],rax
	call	458BE0h
	mov	rax,[rbx]
	mov	rcx,rbx
	mov	rdx,rdi
	add	rcx,[rax-18h]
	call	46EAE0h
	mov	r8d,r12d
	mov	rdx,rbp
	mov	rcx,rdi
	call	4576D0h
	test	rax,rax
	mov	rcx,rbx
	mov	rax,[rbx]
	jz	45A061h

l000000000045A04A:
	add	rcx,[rax-18h]
	xor	edx,edx
	call	46EB40h
	nop
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret

l000000000045A061:
	add	rcx,[rax-18h]
	mov	edx,[rcx+20h]
	or	edx,4h
	call	46EB40h
	nop
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
000000000045A07C                                     48 8B 56 10             H.V.
000000000045A080 48 89 13 48 8B 52 E8 48 8B 4E 18 48 89 0C 13 48 H..H.R.H.N.H...H
000000000045A090 89 C1 E8 19 75 FB FF 48 89 C5 48 89 F9 48 89 EF ....u..H..H..H..
000000000045A0A0 E8 6B EE FF FF 48 8D 56 08 48 89 D9 E8 0F 68 00 .k...H.V.H....h.
000000000045A0B0 00 48 89 F9 E8 F7 74 FB FF 48 89 C7 EB E7 90 90 .H....t..H......

;; fn000000000045A0C0: 000000000045A0C0
fn000000000045A0C0 proc
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,20h
	mov	rax,[rdx+10h]
	mov	rbx,rcx
	mov	rsi,rdx
	mov	rbp,r8
	mov	r12d,r9d
	mov	[rcx],rax
	mov	rcx,[rdx+18h]
	mov	rdx,[rax-18h]
	mov	[rbx+rdx],rcx
	mov	qword ptr [rbx+8h],+0h
	mov	rcx,rbx
	add	rcx,[rax-18h]
	xor	edx,edx
	call	46EAE0h
	mov	rax,[rsi+20h]
	xor	edx,edx
	mov	[rbx+10h],rax
	mov	rax,[rax-18h]
	lea	rcx,[rbx+rax+10h]
	mov	rax,[rsi+28h]
	mov	[rcx],rax
	call	46EAE0h
	mov	rax,[rsi+8h]
	lea	rdi,[rbx+18h]
	mov	rcx,rdi
	mov	[rbx],rax
	mov	rax,[rax-18h]
	mov	rdx,[rsi+30h]
	mov	[rbx+rax],rdx
	mov	rax,[rsi+38h]
	mov	[rbx+10h],rax
	mov	rax,[rsi]
	mov	[rbx],rax
	mov	rax,[rax-18h]
	mov	rdx,[rsi+40h]
	mov	[rbx+rax],rdx
	mov	rax,[rsi+48h]
	mov	[rbx+10h],rax
	call	458BE0h
	mov	rax,[rbx]
	mov	rcx,rbx
	mov	rdx,rdi
	add	rcx,[rax-18h]
	call	46EAE0h
	mov	rdx,[rbp+0h]
	mov	r8d,r12d
	mov	rcx,rdi
	call	4576D0h
	test	rax,rax
	mov	rcx,rbx
	mov	rax,[rbx]
	jz	45A1A2h

l000000000045A18B:
	add	rcx,[rax-18h]
	xor	edx,edx
	call	46EB40h
	nop
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret

l000000000045A1A2:
	add	rcx,[rax-18h]
	mov	edx,[rcx+20h]
	or	edx,4h
	call	46EB40h
	nop
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
000000000045A1BD                                        48 8B 56              H.V
000000000045A1C0 10 48 89 13 48 8B 52 E8 48 8B 4E 18 48 89 0C 13 .H..H.R.H.N.H...
000000000045A1D0 48 89 C1 E8 D8 73 FB FF 48 89 C5 48 89 F9 48 89 H....s..H..H..H.
000000000045A1E0 EF E8 2A ED FF FF 48 8D 56 08 48 89 D9 E8 CE 66 ..*...H.V.H....f
000000000045A1F0 00 00 48 89 F9 E8 B6 73 FB FF 48 89 C7 EB E7 90 ..H....s..H.....

;; fn000000000045A200: 000000000045A200
fn000000000045A200 proc
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,28h
	mov	rax,[rdx+10h]
	mov	rbx,rcx
	mov	rsi,rdx
	mov	[rcx],rax
	mov	rcx,[rdx+18h]
	mov	rdx,[rax-18h]
	mov	[rbx+rdx],rcx
	mov	qword ptr [rbx+8h],+0h
	mov	rcx,rbx
	add	rcx,[rax-18h]
	xor	edx,edx
	call	46EAE0h
	mov	rax,[rsi+20h]
	xor	edx,edx
	mov	[rbx+10h],rax
	mov	rax,[rax-18h]
	lea	rcx,[rbx+rax+10h]
	mov	rax,[rsi+28h]
	mov	[rcx],rax
	call	46EAE0h
	mov	rax,[rsi+8h]
	lea	rdi,[rbx+18h]
	mov	rcx,rdi
	mov	[rbx],rax
	mov	rax,[rax-18h]
	mov	rdx,[rsi+30h]
	mov	[rbx+rax],rdx
	mov	rax,[rsi+38h]
	mov	[rbx+10h],rax
	mov	rax,[rsi]
	mov	[rbx],rax
	mov	rax,[rax-18h]
	mov	rdx,[rsi+40h]
	mov	[rbx+rax],rdx
	mov	rax,[rsi+48h]
	mov	[rbx+10h],rax
	call	458BE0h
	mov	rax,[rbx]
	mov	rcx,rbx
	mov	rdx,rdi
	add	rcx,[rax-18h]
	call	46EAE0h
	nop
	add	rsp,28h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
000000000045A2B3          48 8B 56 10 48 89 13 48 8B 52 E8 48 8B    H.V.H..H.R.H.
000000000045A2C0 4E 18 48 89 0C 13 48 89 C1 E8 E2 72 FB FF 48 89 N.H...H....r..H.
000000000045A2D0 C5 48 89 F9 48 89 EF E8 34 EC FF FF 48 8D 56 08 .H..H...4...H.V.
000000000045A2E0 48 89 D9 E8 D8 65 00 00 48 89 F9 E8 C0 72 FB FF H....e..H....r..
000000000045A2F0 48 89 C7 EB E7 90 90 90 90 90 90 90 90 90 90 90 H...............

;; fn000000000045A300: 000000000045A300
fn000000000045A300 proc
	push	rbx
	sub	rsp,20h
	lea	rax,[0000000000496898]                                 ; [rip+0003C58C]
	mov	rbx,rcx
	lea	rcx,[rcx+18h]
	mov	[rcx-18h],rax
	lea	rax,[00000000004968E8]                                 ; [rip+0003C5CA]
	mov	[rcx+0C0h],rax
	lea	rax,[00000000004968C0]                                 ; [rip+0003C594]
	mov	[rcx-8h],rax
	lea	rax,[0000000000496790]                                 ; [rip+0003C459]
	mov	[rcx],rax
	call	457800h
	lea	rcx,[rbx+60h]
	call	4550A0h
	mov	rax,[0000000000491C40]                                 ; [rip+000378F1]
	lea	rcx,[rbx+50h]
	add	rax,10h
	mov	[rbx+18h],rax
	call	46AF20h
	mov	rax,[0000000000491E30]                                 ; [rip+00037AC9]
	lea	rcx,[rbx+0D8h]
	add	rax,10h
	mov	[rbx+0D8h],rax
	call	46D3D0h
	mov	rcx,rbx
	add	rsp,20h
	pop	rbx
	jmp	475550h
000000000045A38B                                  90 90 90 90 90            .....

;; fn000000000045A390: 000000000045A390
fn000000000045A390 proc
	push	rbx
	sub	rsp,20h
	lea	rax,[0000000000496898]                                 ; [rip+0003C4FC]
	mov	rbx,rcx
	lea	rcx,[rcx+18h]
	mov	[rcx-18h],rax
	lea	rax,[00000000004968E8]                                 ; [rip+0003C53A]
	mov	[rcx+0C0h],rax
	lea	rax,[00000000004968C0]                                 ; [rip+0003C504]
	mov	[rcx-8h],rax
	lea	rax,[0000000000496790]                                 ; [rip+0003C3C9]
	mov	[rcx],rax
	call	457800h
	lea	rcx,[rbx+60h]
	call	4550A0h
	mov	rax,[0000000000491C40]                                 ; [rip+00037861]
	lea	rcx,[rbx+50h]
	add	rax,10h
	mov	[rbx+18h],rax
	call	46AF20h
	mov	rax,[0000000000491E30]                                 ; [rip+00037A39]
	lea	rcx,[rbx+0D8h]
	add	rax,10h
	mov	[rbx+0D8h],rax
	add	rsp,20h
	pop	rbx
	jmp	46D3D0h
000000000045A413          90 90 90 90 90 90 90 90 90 90 90 90 90    .............

;; fn000000000045A420: 000000000045A420
fn000000000045A420 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	mov	rax,[rdx]
	mov	rsi,rdx
	mov	rbx,rcx
	lea	rcx,[rcx+18h]
	mov	[rcx-18h],rax
	mov	rax,[rax-18h]
	mov	rdx,[rdx+40h]
	mov	[rcx+rax-18h],rdx
	mov	rax,[rsi+48h]
	mov	[rcx-8h],rax
	lea	rax,[0000000000496790]                                 ; [rip+0003C33D]
	mov	[rcx],rax
	call	457800h
	lea	rcx,[rbx+60h]
	call	4550A0h
	mov	rax,[0000000000491C40]                                 ; [rip+000377D5]
	lea	rcx,[rbx+50h]
	add	rax,10h
	mov	[rbx+18h],rax
	call	46AF20h
	mov	rax,[rsi+8h]
	mov	[rbx],rax
	mov	rax,[rax-18h]
	mov	rdx,[rsi+30h]
	mov	[rbx+rax],rdx
	mov	rax,[rsi+38h]
	mov	[rbx+10h],rax
	mov	rax,[rsi+20h]
	mov	[rbx+10h],rax
	mov	rax,[rax-18h]
	mov	rdx,[rsi+28h]
	mov	[rbx+rax+10h],rdx
	mov	rax,[rsi+10h]
	mov	[rbx],rax
	mov	rax,[rax-18h]
	mov	rdx,[rsi+18h]
	mov	[rbx+rax],rdx
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret
000000000045A4C6                   90 90 90 90 90 90 90 90 90 90       ..........

;; fn000000000045A4D0: 000000000045A4D0
;;   Called from:
;;     000000000045D3B0 (in fn000000000045D3B0)
fn000000000045A4D0 proc
	push	rsi
	push	rbx
	sub	rsp,+88h
	xor	r8d,r8d
	mov	rbx,rcx
	lea	rcx,[rsp+7Bh]
	mov	rsi,rdx
	mov	rdx,rbx
	call	45C740h
	cmp	byte ptr [rsp+7Bh],0h
	jz	45A574h

l000000000045A4F6:
	mov	rax,[rbx]
	mov	r8,rbx
	mov	dword ptr [rsp+7Ch],0h
	add	r8,[rax-18h]
	mov	rax,[r8+100h]
	test	rax,rax
	jz	45A5A0h

l000000000045A518:
	mov	rdx,[r8+0E8h]
	mov	qword ptr [rsp+58h],+0FFFFh
	lea	rcx,[rsp+60h]
	mov	qword ptr [rsp+40h],+0h
	mov	qword ptr [rsp+48h],+0FFFFh
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

l000000000045A56C:
	mov	edx,[rsp+7Ch]
	test	edx,edx
	jnz	45A581h

l000000000045A574:
	mov	rax,rbx
	add	rsp,+88h
	pop	rbx
	pop	rsi
	ret

l000000000045A581:
	mov	rax,[rbx]
	mov	rcx,rbx
	add	rcx,[rax-18h]
	or	edx,[rcx+20h]
	call	46EB40h
	mov	rax,rbx
	add	rsp,+88h
	pop	rbx
	pop	rsi
	ret

l000000000045A5A0:
	call	470820h
	sub	rdx,1h
	mov	rcx,rax
	jnz	45A5C9h

l000000000045A5AE:
	call	475840h
	mov	rax,[rbx]
	add	rbx,[rax-18h]
	or	dword ptr [rbx+20h],1h
	test	byte ptr [rbx+1Ch],1h
	jz	45A5F9h

l000000000045A5C4:
	call	476060h

l000000000045A5C9:
	call	475840h
	mov	rax,[rbx]
	mov	rsi,rbx
	add	rsi,[rax-18h]
	or	dword ptr [rsi+20h],1h
	test	byte ptr [rsi+1Ch],1h
	jnz	45A5FEh

l000000000045A5E2:
	call	475A70h
	jmp	45A56Ch
000000000045A5E9                            48 89 C3 E8 7F B4 01          H......
000000000045A5F0 00 48 89 D9 E8 B7 6F FB FF                      .H....o..      

l000000000045A5F9:
	call	476060h

l000000000045A5FE:
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

;; fn000000000045A620: 000000000045A620
;;   Called from:
;;     000000000045A61F (in fn000000000045A4D0)
;;     000000000045D3C0 (in fn000000000045D3C0)
fn000000000045A620 proc
	push	rsi
	push	rbx
	sub	rsp,+88h
	xor	r8d,r8d
	mov	rbx,rcx
	lea	rcx,[rsp+7Bh]
	mov	rsi,rdx
	mov	rdx,rbx
	call	45C740h
	cmp	byte ptr [rsp+7Bh],0h
	jz	45A6C4h

l000000000045A646:
	mov	rax,[rbx]
	mov	r8,rbx
	mov	dword ptr [rsp+7Ch],0h
	add	r8,[rax-18h]
	mov	rax,[r8+100h]
	test	rax,rax
	jz	45A6F0h

l000000000045A668:
	mov	rdx,[r8+0E8h]
	mov	qword ptr [rsp+58h],+0FFFFh
	lea	rcx,[rsp+60h]
	mov	qword ptr [rsp+40h],+0h
	mov	qword ptr [rsp+48h],+0FFFFh
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

l000000000045A6BC:
	mov	edx,[rsp+7Ch]
	test	edx,edx
	jnz	45A6D1h

l000000000045A6C4:
	mov	rax,rbx
	add	rsp,+88h
	pop	rbx
	pop	rsi
	ret

l000000000045A6D1:
	mov	rax,[rbx]
	mov	rcx,rbx
	add	rcx,[rax-18h]
	or	edx,[rcx+20h]
	call	46EB40h
	mov	rax,rbx
	add	rsp,+88h
	pop	rbx
	pop	rsi
	ret

l000000000045A6F0:
	call	470820h
	sub	rdx,1h
	mov	rcx,rax
	jnz	45A719h

l000000000045A6FE:
	call	475840h
	mov	rax,[rbx]
	add	rbx,[rax-18h]
	or	dword ptr [rbx+20h],1h
	test	byte ptr [rbx+1Ch],1h
	jz	45A749h

l000000000045A714:
	call	476060h

l000000000045A719:
	call	475840h
	mov	rax,[rbx]
	mov	rsi,rbx
	add	rsi,[rax-18h]
	or	dword ptr [rsi+20h],1h
	test	byte ptr [rsi+1Ch],1h
	jnz	45A74Eh

l000000000045A732:
	call	475A70h
	jmp	45A6BCh
000000000045A739                            48 89 C3 E8 2F B3 01          H.../..
000000000045A740 00 48 89 D9 E8 67 6E FB FF                      .H...gn..      

l000000000045A749:
	call	476060h

l000000000045A74E:
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

;; fn000000000045A770: 000000000045A770
;;   Called from:
;;     000000000045A76F (in fn000000000045A620)
;;     000000000045D3D0 (in fn000000000045D3D0)
fn000000000045A770 proc
	push	rsi
	push	rbx
	sub	rsp,+88h
	xor	r8d,r8d
	mov	rbx,rcx
	lea	rcx,[rsp+7Bh]
	mov	rsi,rdx
	mov	rdx,rbx
	call	45C740h
	cmp	byte ptr [rsp+7Bh],0h
	jz	45A814h

l000000000045A796:
	mov	rax,[rbx]
	mov	r8,rbx
	mov	dword ptr [rsp+7Ch],0h
	add	r8,[rax-18h]
	mov	rax,[r8+100h]
	test	rax,rax
	jz	45A840h

l000000000045A7B8:
	mov	rdx,[r8+0E8h]
	mov	qword ptr [rsp+58h],+0FFFFh
	lea	rcx,[rsp+60h]
	mov	qword ptr [rsp+40h],+0h
	mov	qword ptr [rsp+48h],+0FFFFh
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

l000000000045A80C:
	mov	edx,[rsp+7Ch]
	test	edx,edx
	jnz	45A821h

l000000000045A814:
	mov	rax,rbx
	add	rsp,+88h
	pop	rbx
	pop	rsi
	ret

l000000000045A821:
	mov	rax,[rbx]
	mov	rcx,rbx
	add	rcx,[rax-18h]
	or	edx,[rcx+20h]
	call	46EB40h
	mov	rax,rbx
	add	rsp,+88h
	pop	rbx
	pop	rsi
	ret

l000000000045A840:
	call	470820h
	sub	rdx,1h
	mov	rcx,rax
	jnz	45A869h

l000000000045A84E:
	call	475840h
	mov	rax,[rbx]
	add	rbx,[rax-18h]
	or	dword ptr [rbx+20h],1h
	test	byte ptr [rbx+1Ch],1h
	jz	45A899h

l000000000045A864:
	call	476060h

l000000000045A869:
	call	475840h
	mov	rax,[rbx]
	mov	rsi,rbx
	add	rsi,[rax-18h]
	or	dword ptr [rsi+20h],1h
	test	byte ptr [rsi+1Ch],1h
	jnz	45A89Eh

l000000000045A882:
	call	475A70h
	jmp	45A80Ch
000000000045A889                            48 89 C3 E8 DF B1 01          H......
000000000045A890 00 48 89 D9 E8 17 6D FB FF                      .H....m..      

l000000000045A899:
	call	476060h

l000000000045A89E:
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

;; fn000000000045A8C0: 000000000045A8C0
;;   Called from:
;;     000000000045A8BF (in fn000000000045A770)
;;     000000000045D3E0 (in fn000000000045D3E0)
fn000000000045A8C0 proc
	push	rsi
	push	rbx
	sub	rsp,+88h
	xor	r8d,r8d
	mov	rbx,rcx
	lea	rcx,[rsp+7Bh]
	mov	rsi,rdx
	mov	rdx,rbx
	call	45C740h
	cmp	byte ptr [rsp+7Bh],0h
	jz	45A964h

l000000000045A8E6:
	mov	rax,[rbx]
	mov	r8,rbx
	mov	dword ptr [rsp+7Ch],0h
	add	r8,[rax-18h]
	mov	rax,[r8+100h]
	test	rax,rax
	jz	45A990h

l000000000045A908:
	mov	rdx,[r8+0E8h]
	mov	qword ptr [rsp+58h],+0FFFFh
	lea	rcx,[rsp+60h]
	mov	qword ptr [rsp+40h],+0h
	mov	qword ptr [rsp+48h],+0FFFFh
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

l000000000045A95C:
	mov	edx,[rsp+7Ch]
	test	edx,edx
	jnz	45A971h

l000000000045A964:
	mov	rax,rbx
	add	rsp,+88h
	pop	rbx
	pop	rsi
	ret

l000000000045A971:
	mov	rax,[rbx]
	mov	rcx,rbx
	add	rcx,[rax-18h]
	or	edx,[rcx+20h]
	call	46EB40h
	mov	rax,rbx
	add	rsp,+88h
	pop	rbx
	pop	rsi
	ret

l000000000045A990:
	call	470820h
	sub	rdx,1h
	mov	rcx,rax
	jnz	45A9B9h

l000000000045A99E:
	call	475840h
	mov	rax,[rbx]
	add	rbx,[rax-18h]
	or	dword ptr [rbx+20h],1h
	test	byte ptr [rbx+1Ch],1h
	jz	45A9E9h

l000000000045A9B4:
	call	476060h

l000000000045A9B9:
	call	475840h
	mov	rax,[rbx]
	mov	rsi,rbx
	add	rsi,[rax-18h]
	or	dword ptr [rsi+20h],1h
	test	byte ptr [rsi+1Ch],1h
	jnz	45A9EEh

l000000000045A9D2:
	call	475A70h
	jmp	45A95Ch
000000000045A9D9                            48 89 C3 E8 8F B0 01          H......
000000000045A9E0 00 48 89 D9 E8 C7 6B FB FF                      .H....k..      

l000000000045A9E9:
	call	476060h

l000000000045A9EE:
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

;; fn000000000045AA10: 000000000045AA10
;;   Called from:
;;     000000000045AA0F (in fn000000000045A8C0)
;;     000000000045D3F0 (in fn000000000045D3F0)
fn000000000045AA10 proc
	push	rsi
	push	rbx
	sub	rsp,+88h
	xor	r8d,r8d
	mov	rbx,rcx
	lea	rcx,[rsp+7Bh]
	mov	rsi,rdx
	mov	rdx,rbx
	call	45C740h
	cmp	byte ptr [rsp+7Bh],0h
	jz	45AAB4h

l000000000045AA36:
	mov	rax,[rbx]
	mov	r8,rbx
	mov	dword ptr [rsp+7Ch],0h
	add	r8,[rax-18h]
	mov	rax,[r8+100h]
	test	rax,rax
	jz	45AAE0h

l000000000045AA58:
	mov	rdx,[r8+0E8h]
	mov	qword ptr [rsp+58h],+0FFFFh
	lea	rcx,[rsp+60h]
	mov	qword ptr [rsp+40h],+0h
	mov	qword ptr [rsp+48h],+0FFFFh
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

l000000000045AAAC:
	mov	edx,[rsp+7Ch]
	test	edx,edx
	jnz	45AAC1h

l000000000045AAB4:
	mov	rax,rbx
	add	rsp,+88h
	pop	rbx
	pop	rsi
	ret

l000000000045AAC1:
	mov	rax,[rbx]
	mov	rcx,rbx
	add	rcx,[rax-18h]
	or	edx,[rcx+20h]
	call	46EB40h
	mov	rax,rbx
	add	rsp,+88h
	pop	rbx
	pop	rsi
	ret

l000000000045AAE0:
	call	470820h
	sub	rdx,1h
	mov	rcx,rax
	jnz	45AB09h

l000000000045AAEE:
	call	475840h
	mov	rax,[rbx]
	add	rbx,[rax-18h]
	or	dword ptr [rbx+20h],1h
	test	byte ptr [rbx+1Ch],1h
	jz	45AB39h

l000000000045AB04:
	call	476060h

l000000000045AB09:
	call	475840h
	mov	rax,[rbx]
	mov	rsi,rbx
	add	rsi,[rax-18h]
	or	dword ptr [rsi+20h],1h
	test	byte ptr [rsi+1Ch],1h
	jnz	45AB3Eh

l000000000045AB22:
	call	475A70h
	jmp	45AAACh
000000000045AB29                            48 89 C3 E8 3F AF 01          H...?..
000000000045AB30 00 48 89 D9 E8 77 6A FB FF                      .H...wj..      

l000000000045AB39:
	call	476060h

l000000000045AB3E:
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

;; fn000000000045AB60: 000000000045AB60
;;   Called from:
;;     000000000045AB5F (in fn000000000045AA10)
;;     000000000045D560 (in fn000000000045D560)
fn000000000045AB60 proc
	push	rsi
	push	rbx
	sub	rsp,+88h
	xor	r8d,r8d
	mov	rbx,rcx
	lea	rcx,[rsp+7Bh]
	mov	rsi,rdx
	mov	rdx,rbx
	call	45C740h
	cmp	byte ptr [rsp+7Bh],0h
	jz	45AC04h

l000000000045AB86:
	mov	rax,[rbx]
	mov	r8,rbx
	mov	dword ptr [rsp+7Ch],0h
	add	r8,[rax-18h]
	mov	rax,[r8+100h]
	test	rax,rax
	jz	45AC30h

l000000000045ABA8:
	mov	rdx,[r8+0E8h]
	mov	qword ptr [rsp+58h],+0FFFFh
	lea	rcx,[rsp+60h]
	mov	qword ptr [rsp+40h],+0h
	mov	qword ptr [rsp+48h],+0FFFFh
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

l000000000045ABFC:
	mov	edx,[rsp+7Ch]
	test	edx,edx
	jnz	45AC11h

l000000000045AC04:
	mov	rax,rbx
	add	rsp,+88h
	pop	rbx
	pop	rsi
	ret

l000000000045AC11:
	mov	rax,[rbx]
	mov	rcx,rbx
	add	rcx,[rax-18h]
	or	edx,[rcx+20h]
	call	46EB40h
	mov	rax,rbx
	add	rsp,+88h
	pop	rbx
	pop	rsi
	ret

l000000000045AC30:
	call	470820h
	sub	rdx,1h
	mov	rcx,rax
	jnz	45AC59h

l000000000045AC3E:
	call	475840h
	mov	rax,[rbx]
	add	rbx,[rax-18h]
	or	dword ptr [rbx+20h],1h
	test	byte ptr [rbx+1Ch],1h
	jz	45AC89h

l000000000045AC54:
	call	476060h

l000000000045AC59:
	call	475840h
	mov	rax,[rbx]
	mov	rsi,rbx
	add	rsi,[rax-18h]
	or	dword ptr [rsi+20h],1h
	test	byte ptr [rsi+1Ch],1h
	jnz	45AC8Eh

l000000000045AC72:
	call	475A70h
	jmp	45ABFCh
000000000045AC79                            48 89 C3 E8 EF AD 01          H......
000000000045AC80 00 48 89 D9 E8 27 69 FB FF                      .H...'i..      

l000000000045AC89:
	call	476060h

l000000000045AC8E:
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

;; fn000000000045ACB0: 000000000045ACB0
;;   Called from:
;;     000000000045ACAF (in fn000000000045AB60)
;;     000000000045D570 (in fn000000000045D570)
fn000000000045ACB0 proc
	push	rsi
	push	rbx
	sub	rsp,+88h
	xor	r8d,r8d
	mov	rbx,rcx
	lea	rcx,[rsp+7Bh]
	mov	rsi,rdx
	mov	rdx,rbx
	call	45C740h
	cmp	byte ptr [rsp+7Bh],0h
	jz	45AD54h

l000000000045ACD6:
	mov	rax,[rbx]
	mov	r8,rbx
	mov	dword ptr [rsp+7Ch],0h
	add	r8,[rax-18h]
	mov	rax,[r8+100h]
	test	rax,rax
	jz	45AD80h

l000000000045ACF8:
	mov	rdx,[r8+0E8h]
	mov	qword ptr [rsp+58h],+0FFFFh
	lea	rcx,[rsp+60h]
	mov	qword ptr [rsp+40h],+0h
	mov	qword ptr [rsp+48h],+0FFFFh
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

l000000000045AD4C:
	mov	edx,[rsp+7Ch]
	test	edx,edx
	jnz	45AD61h

l000000000045AD54:
	mov	rax,rbx
	add	rsp,+88h
	pop	rbx
	pop	rsi
	ret

l000000000045AD61:
	mov	rax,[rbx]
	mov	rcx,rbx
	add	rcx,[rax-18h]
	or	edx,[rcx+20h]
	call	46EB40h
	mov	rax,rbx
	add	rsp,+88h
	pop	rbx
	pop	rsi
	ret

l000000000045AD80:
	call	470820h
	sub	rdx,1h
	mov	rcx,rax
	jnz	45ADA9h

l000000000045AD8E:
	call	475840h
	mov	rax,[rbx]
	add	rbx,[rax-18h]
	or	dword ptr [rbx+20h],1h
	test	byte ptr [rbx+1Ch],1h
	jz	45ADD9h

l000000000045ADA4:
	call	476060h

l000000000045ADA9:
	call	475840h
	mov	rax,[rbx]
	mov	rsi,rbx
	add	rsi,[rax-18h]
	or	dword ptr [rsi+20h],1h
	test	byte ptr [rsi+1Ch],1h
	jnz	45ADDEh

l000000000045ADC2:
	call	475A70h
	jmp	45AD4Ch
000000000045ADC9                            48 89 C3 E8 9F AC 01          H......
000000000045ADD0 00 48 89 D9 E8 D7 67 FB FF                      .H....g..      

l000000000045ADD9:
	call	476060h

l000000000045ADDE:
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

;; fn000000000045AE00: 000000000045AE00
;;   Called from:
;;     000000000045ADFF (in fn000000000045ACB0)
;;     000000000045D580 (in fn000000000045D580)
fn000000000045AE00 proc
	push	rsi
	push	rbx
	sub	rsp,+88h
	xor	r8d,r8d
	mov	rbx,rcx
	lea	rcx,[rsp+7Bh]
	mov	rsi,rdx
	mov	rdx,rbx
	call	45C740h
	cmp	byte ptr [rsp+7Bh],0h
	jz	45AEA4h

l000000000045AE26:
	mov	rax,[rbx]
	mov	r8,rbx
	mov	dword ptr [rsp+7Ch],0h
	add	r8,[rax-18h]
	mov	rax,[r8+100h]
	test	rax,rax
	jz	45AED0h

l000000000045AE48:
	mov	rdx,[r8+0E8h]
	mov	qword ptr [rsp+58h],+0FFFFh
	lea	rcx,[rsp+60h]
	mov	qword ptr [rsp+40h],+0h
	mov	qword ptr [rsp+48h],+0FFFFh
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

l000000000045AE9C:
	mov	edx,[rsp+7Ch]
	test	edx,edx
	jnz	45AEB1h

l000000000045AEA4:
	mov	rax,rbx
	add	rsp,+88h
	pop	rbx
	pop	rsi
	ret

l000000000045AEB1:
	mov	rax,[rbx]
	mov	rcx,rbx
	add	rcx,[rax-18h]
	or	edx,[rcx+20h]
	call	46EB40h
	mov	rax,rbx
	add	rsp,+88h
	pop	rbx
	pop	rsi
	ret

l000000000045AED0:
	call	470820h
	sub	rdx,1h
	mov	rcx,rax
	jnz	45AEF9h

l000000000045AEDE:
	call	475840h
	mov	rax,[rbx]
	add	rbx,[rax-18h]
	or	dword ptr [rbx+20h],1h
	test	byte ptr [rbx+1Ch],1h
	jz	45AF29h

l000000000045AEF4:
	call	476060h

l000000000045AEF9:
	call	475840h
	mov	rax,[rbx]
	mov	rsi,rbx
	add	rsi,[rax-18h]
	or	dword ptr [rsi+20h],1h
	test	byte ptr [rsi+1Ch],1h
	jnz	45AF2Eh

l000000000045AF12:
	call	475A70h
	jmp	45AE9Ch
000000000045AF19                            48 89 C3 E8 4F AB 01          H...O..
000000000045AF20 00 48 89 D9 E8 87 66 FB FF                      .H....f..      

l000000000045AF29:
	call	476060h

l000000000045AF2E:
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

;; fn000000000045AF50: 000000000045AF50
;;   Called from:
;;     000000000045AF4F (in fn000000000045AE00)
;;     000000000045D730 (in fn000000000045D730)
fn000000000045AF50 proc
	push	rsi
	push	rbx
	sub	rsp,+88h
	xor	r8d,r8d
	mov	rbx,rcx
	lea	rcx,[rsp+7Bh]
	mov	rsi,rdx
	mov	rdx,rbx
	call	45C740h
	cmp	byte ptr [rsp+7Bh],0h
	jz	45AFF4h

l000000000045AF76:
	mov	rax,[rbx]
	mov	r8,rbx
	mov	dword ptr [rsp+7Ch],0h
	add	r8,[rax-18h]
	mov	rax,[r8+100h]
	test	rax,rax
	jz	45B020h

l000000000045AF98:
	mov	rdx,[r8+0E8h]
	mov	qword ptr [rsp+58h],+0FFFFh
	lea	rcx,[rsp+60h]
	mov	qword ptr [rsp+40h],+0h
	mov	qword ptr [rsp+48h],+0FFFFh
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

l000000000045AFEC:
	mov	edx,[rsp+7Ch]
	test	edx,edx
	jnz	45B001h

l000000000045AFF4:
	mov	rax,rbx
	add	rsp,+88h
	pop	rbx
	pop	rsi
	ret

l000000000045B001:
	mov	rax,[rbx]
	mov	rcx,rbx
	add	rcx,[rax-18h]
	or	edx,[rcx+20h]
	call	46EB40h
	mov	rax,rbx
	add	rsp,+88h
	pop	rbx
	pop	rsi
	ret

l000000000045B020:
	call	470820h
	sub	rdx,1h
	mov	rcx,rax
	jnz	45B049h

l000000000045B02E:
	call	475840h
	mov	rax,[rbx]
	add	rbx,[rax-18h]
	or	dword ptr [rbx+20h],1h
	test	byte ptr [rbx+1Ch],1h
	jz	45B079h

l000000000045B044:
	call	476060h

l000000000045B049:
	call	475840h
	mov	rax,[rbx]
	mov	rsi,rbx
	add	rsi,[rax-18h]
	or	dword ptr [rsi+20h],1h
	test	byte ptr [rsi+1Ch],1h
	jnz	45B07Eh

l000000000045B062:
	call	475A70h
	jmp	45AFECh
000000000045B069                            48 89 C3 E8 FF A9 01          H......
000000000045B070 00 48 89 D9 E8 37 65 FB FF                      .H...7e..      

l000000000045B079:
	call	476060h

l000000000045B07E:
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

;; fn000000000045B0A0: 000000000045B0A0
;;   Called from:
;;     000000000045B09F (in fn000000000045AF50)
;;     000000000045D740 (in fn000000000045D740)
fn000000000045B0A0 proc
	push	rsi
	push	rbx
	sub	rsp,+88h
	xor	r8d,r8d
	mov	rbx,rcx
	lea	rcx,[rsp+7Bh]
	mov	rsi,rdx
	mov	rdx,rbx
	call	45C740h
	cmp	byte ptr [rsp+7Bh],0h
	jz	45B144h

l000000000045B0C6:
	mov	rax,[rbx]
	mov	r8,rbx
	mov	dword ptr [rsp+7Ch],0h
	add	r8,[rax-18h]
	mov	rax,[r8+100h]
	test	rax,rax
	jz	45B170h

l000000000045B0E8:
	mov	rdx,[r8+0E8h]
	mov	qword ptr [rsp+58h],+0FFFFh
	lea	rcx,[rsp+60h]
	mov	qword ptr [rsp+40h],+0h
	mov	qword ptr [rsp+48h],+0FFFFh
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

l000000000045B13C:
	mov	edx,[rsp+7Ch]
	test	edx,edx
	jnz	45B151h

l000000000045B144:
	mov	rax,rbx
	add	rsp,+88h
	pop	rbx
	pop	rsi
	ret

l000000000045B151:
	mov	rax,[rbx]
	mov	rcx,rbx
	add	rcx,[rax-18h]
	or	edx,[rcx+20h]
	call	46EB40h
	mov	rax,rbx
	add	rsp,+88h
	pop	rbx
	pop	rsi
	ret

l000000000045B170:
	call	470820h
	sub	rdx,1h
	mov	rcx,rax
	jnz	45B199h

l000000000045B17E:
	call	475840h
	mov	rax,[rbx]
	add	rbx,[rax-18h]
	or	dword ptr [rbx+20h],1h
	test	byte ptr [rbx+1Ch],1h
	jz	45B1C9h

l000000000045B194:
	call	476060h

l000000000045B199:
	call	475840h
	mov	rax,[rbx]
	mov	rsi,rbx
	add	rsi,[rax-18h]
	or	dword ptr [rsi+20h],1h
	test	byte ptr [rsi+1Ch],1h
	jnz	45B1CEh

l000000000045B1B2:
	call	475A70h
	jmp	45B13Ch
000000000045B1B9                            48 89 C3 E8 AF A8 01          H......
000000000045B1C0 00 48 89 D9 E8 E7 63 FB FF                      .H....c..      

l000000000045B1C9:
	call	476060h

l000000000045B1CE:
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

;; fn000000000045B1F0: 000000000045B1F0
;;   Called from:
;;     000000000045B1EF (in fn000000000045B0A0)
;;     000000000045D750 (in fn000000000045D750)
fn000000000045B1F0 proc
	push	rsi
	push	rbx
	sub	rsp,+88h
	xor	r8d,r8d
	mov	rbx,rcx
	lea	rcx,[rsp+7Bh]
	mov	rsi,rdx
	mov	rdx,rbx
	call	45C740h
	cmp	byte ptr [rsp+7Bh],0h
	jz	45B294h

l000000000045B216:
	mov	rax,[rbx]
	mov	r8,rbx
	mov	dword ptr [rsp+7Ch],0h
	add	r8,[rax-18h]
	mov	rax,[r8+100h]
	test	rax,rax
	jz	45B2C0h

l000000000045B238:
	mov	rdx,[r8+0E8h]
	mov	qword ptr [rsp+58h],+0FFFFh
	lea	rcx,[rsp+60h]
	mov	qword ptr [rsp+40h],+0h
	mov	qword ptr [rsp+48h],+0FFFFh
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

l000000000045B28C:
	mov	edx,[rsp+7Ch]
	test	edx,edx
	jnz	45B2A1h

l000000000045B294:
	mov	rax,rbx
	add	rsp,+88h
	pop	rbx
	pop	rsi
	ret

l000000000045B2A1:
	mov	rax,[rbx]
	mov	rcx,rbx
	add	rcx,[rax-18h]
	or	edx,[rcx+20h]
	call	46EB40h
	mov	rax,rbx
	add	rsp,+88h
	pop	rbx
	pop	rsi
	ret

l000000000045B2C0:
	call	470820h
	sub	rdx,1h
	mov	rcx,rax
	jnz	45B2E9h

l000000000045B2CE:
	call	475840h
	mov	rax,[rbx]
	add	rbx,[rax-18h]
	or	dword ptr [rbx+20h],1h
	test	byte ptr [rbx+1Ch],1h
	jz	45B319h

l000000000045B2E4:
	call	476060h

l000000000045B2E9:
	call	475840h
	mov	rax,[rbx]
	mov	rsi,rbx
	add	rsi,[rax-18h]
	or	dword ptr [rsi+20h],1h
	test	byte ptr [rsi+1Ch],1h
	jnz	45B31Eh

l000000000045B302:
	call	475A70h
	jmp	45B28Ch
000000000045B309                            48 89 C3 E8 5F A7 01          H..._..
000000000045B310 00 48 89 D9 E8 97 62 FB FF                      .H....b..      

l000000000045B319:
	call	476060h

l000000000045B31E:
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

;; fn000000000045B340: 000000000045B340
;;   Called from:
;;     000000000045B33F (in fn000000000045B1F0)
fn000000000045B340 proc
	push	rsi
	push	rbx
	sub	rsp,38h
	mov	rax,[rcx]
	mov	rbx,rcx
	mov	rsi,rdx
	mov	rax,[rax-18h]
	mov	rcx,[rcx+rax+0F0h]
	test	rcx,rcx
	jz	45B38Ah

l000000000045B360:
	mov	rax,[rcx]
	mov	[rsp+28h],r8
	mov	edx,0Ah
	call	qword ptr [rax+50h]
	mov	r8,[rsp+28h]
	movzx	r9d,ax
	mov	rdx,rsi
	mov	rcx,rbx
	add	rsp,38h
	pop	rbx
	pop	rsi
	jmp	45B390h

l000000000045B38A:
	call	470820h
	nop

;; fn000000000045B390: 000000000045B390
;;   Called from:
;;     000000000045B385 (in fn000000000045B340)
;;     000000000045B38F (in fn000000000045B340)
fn000000000045B390 proc
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
	mov	r12,r8
	mov	rdx,rsi
	mov	r8d,1h
	mov	ebp,r9d
	call	45C740h
	cmp	byte ptr [rsp+2Fh],0h
	jz	45B4B0h

l000000000045B3CC:
	mov	rax,[rsi]
	mov	rax,[rax-18h]
	mov	rbx,[rsi+rax+0E8h]
	mov	rax,[rbx+10h]
	cmp	rax,[rbx+18h]
	jc	45B427h

l000000000045B3E5:
	mov	rax,[rbx]
	mov	rcx,rbx
	call	qword ptr [rax+48h]
	jmp	45B42Ah

l000000000045B3F0:
	cmp	rdx,r12
	jge	45B446h

l000000000045B3F5:
	add	rdi,2h
	mov	r10,[rbx+10h]
	cmp	r10,[rbx+18h]
	mov	[rdi-2h],ax
	mov	[rsi+8h],rdx
	jnc	45B483h

l000000000045B40B:
	movzx	eax,word ptr [r10]
	add	r10,2h
	mov	[rbx+10h],r10

l000000000045B417:
	cmp	ax,0FFh
	jz	45B42Ah

l000000000045B41D:
	mov	rax,[rbx+10h]
	cmp	rax,[rbx+18h]
	jnc	45B3E5h

l000000000045B427:
	movzx	eax,word ptr [rax]

l000000000045B42A:
	cmp	ax,0FFh
	mov	rcx,[rsi+8h]
	setnz	r9b
	cmp	bp,ax
	setnz	r8b
	test	r9b,r8b
	lea	rdx,[rcx+1h]
	jnz	45B3F0h

l000000000045B446:
	xor	edx,edx
	cmp	ax,0FFh
	setz	dl
	add	edx,edx

l000000000045B451:
	test	r12,r12
	jle	45B45Bh

l000000000045B456:
	xor	eax,eax
	mov	[rdi],ax

l000000000045B45B:
	test	rcx,rcx
	jnz	45B4C0h

l000000000045B460:
	or	edx,4h

l000000000045B463:
	mov	rax,[rsi]
	mov	rcx,rsi
	add	rcx,[rax-18h]
	or	edx,[rcx+20h]
	call	46EB40h
	mov	rax,rsi
	add	rsp,30h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret

l000000000045B483:
	mov	rax,[rbx]
	mov	rcx,rbx
	call	qword ptr [rax+50h]
	jmp	45B417h
000000000045B48E                                           E8 AD               ..
000000000045B490 A3 01 00 48 8B 06 48 89 F1 48 03 48 E8 83 49 20 ...H..H..H.H..I 
000000000045B4A0 01 F6 41 1C 01 75 64 E8 C4 A5 01 00 0F 1F 40 00 ..A..ud.......@.

l000000000045B4B0:
	mov	rcx,[rsi+8h]
	xor	edx,edx
	jmp	45B451h
000000000045B4B8                         0F 1F 84 00 00 00 00 00         ........

l000000000045B4C0:
	test	edx,edx
	jnz	45B463h

l000000000045B4C4:
	mov	rax,rsi
	add	rsp,30h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
000000000045B4D2       48 83 FA 01 48 89 C1 75 B3 E8 60 A3 01 00   H...H..u..`...
000000000045B4E0 48 8B 06 48 03 70 E8 83 4E 20 01 F6 46 1C 01 74 H..H.p..N ..F..t
000000000045B4F0 15 E8 6A AB 01 00 48 89 C3 E8 72 A5 01 00 48 89 ..j...H...r...H.
000000000045B500 D9 E8 AA 60 FB FF E8 55 AB 01 00 E8 50 AB 01 00 ...`...U....P...
000000000045B510 48 89 C3 E8 58 A5 01 00 48 89 D9 E8 90 60 FB FF H...X...H....`..
000000000045B520 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 ................

;; fn000000000045B530: 000000000045B530
fn000000000045B530 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	mov	rax,[rcx]
	mov	rbx,rcx
	mov	rsi,rdx
	mov	rax,[rax-18h]
	mov	rcx,[rcx+rax+0F0h]
	test	rcx,rcx
	jz	45B570h

l000000000045B550:
	mov	rax,[rcx]
	mov	edx,0Ah
	call	qword ptr [rax+50h]
	mov	rdx,rsi
	movzx	r8d,ax
	mov	rcx,rbx
	add	rsp,28h
	pop	rbx
	pop	rsi
	jmp	45B580h

l000000000045B570:
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

;; fn000000000045B580: 000000000045B580
;;   Called from:
;;     000000000045B56B (in fn000000000045B530)
;;     000000000045B57F (in fn000000000045B530)
fn000000000045B580 proc
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,38h
	mov	rsi,rcx
	mov	qword ptr [rcx+8h],+0h
	lea	rcx,[rsp+2Fh]
	mov	rdi,rdx
	mov	ebp,r8d
	mov	rdx,rsi
	mov	r8d,1h
	call	45C740h
	cmp	byte ptr [rsp+2Fh],0h
	jz	45B638h

l000000000045B5B7:
	mov	rax,[rsi]
	mov	rax,[rax-18h]
	mov	rbx,[rsi+rax+0E8h]
	mov	rax,[rbx+10h]
	cmp	rax,[rbx+18h]
	jc	45B629h

l000000000045B5D0:
	mov	rax,[rbx]
	mov	rcx,rbx
	call	qword ptr [rax+48h]
	cmp	ax,0FFh
	jz	45B632h

l000000000045B5DF:
	nop

l000000000045B5E0:
	cmp	ax,bp
	jz	45B632h

l000000000045B5E5:
	mov	rdx,[rdi+28h]
	cmp	rdx,[rdi+30h]
	jnc	45B670h

l000000000045B5F3:
	mov	[rdx],ax
	add	rdx,2h
	mov	[rdi+28h],rdx

l000000000045B5FE:
	add	qword ptr [rsi+8h],1h
	mov	r9,[rbx+10h]
	cmp	r9,[rbx+18h]
	jnc	45B662h

l000000000045B60D:
	movzx	eax,word ptr [r9]
	add	r9,2h
	mov	[rbx+10h],r9

l000000000045B619:
	cmp	ax,0FFh
	jz	45B62Ch

l000000000045B61F:
	mov	rax,[rbx+10h]
	cmp	rax,[rbx+18h]
	jnc	45B5D0h

l000000000045B629:
	movzx	eax,word ptr [rax]

l000000000045B62C:
	cmp	ax,0FFh
	jnz	45B5E0h

l000000000045B632:
	cmp	ax,0FFh
	jz	45B690h

l000000000045B638:
	cmp	qword ptr [rsi+8h],0h
	jnz	45B656h

l000000000045B63F:
	mov	edx,4h

l000000000045B644:
	mov	rax,[rsi]
	mov	rcx,rsi
	add	rcx,[rax-18h]
	or	edx,[rcx+20h]
	call	46EB40h

l000000000045B656:
	mov	rax,rsi
	add	rsp,38h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret

l000000000045B662:
	mov	rax,[rbx]
	mov	rcx,rbx
	call	qword ptr [rax+50h]
	jmp	45B619h
000000000045B66D                                        0F 1F 00              ...

l000000000045B670:
	mov	r8,[rdi]
	movzx	edx,ax
	mov	rcx,rdi
	call	qword ptr [r8+68h]
	cmp	ax,0FFh
	jz	45B638h

l000000000045B683:
	jmp	45B5FEh
000000000045B688                         0F 1F 84 00 00 00 00 00         ........

l000000000045B690:
	cmp	qword ptr [rsi+8h],1h
	sbb	edx,edx
	and	edx,4h
	add	edx,2h
	jmp	45B644h
000000000045B69F                                              48                H
000000000045B6A0 83 FA 01 48 89 C1 75 1B E8 93 A1 01 00 48 8B 06 ...H..u......H..
000000000045B6B0 48 03 70 E8 83 4E 20 01 F6 46 1C 01 74 38 E8 9D H.p..N ..F..t8..
000000000045B6C0 A9 01 00 E8 78 A1 01 00 48 8B 06 48 89 F1 48 03 ....x...H..H..H.
000000000045B6D0 48 E8 83 49 20 01 F6 41 1C 01 75 1F E8 8F A3 01 H..I ..A..u.....
000000000045B6E0 00 E9 52 FF FF FF 48 89 C3 E8 82 A3 01 00 48 89 ..R...H.......H.
000000000045B6F0 D9 E8 BA 5E FB FF E8 65 A9 01 00 E8 60 A9 01 00 ...^...e....`...
000000000045B700 48 89 C3 E8 68 A3 01 00 48 89 D9 E8 A0 5E FB FF H...h...H....^..
000000000045B710 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 ................

;; fn000000000045B720: 000000000045B720
fn000000000045B720 proc
	push	rsi
	push	rbx
	sub	rsp,38h
	mov	r8d,1h
	mov	rbx,rcx
	mov	qword ptr [rcx+8h],+0h
	lea	rcx,[rsp+2Fh]
	mov	rsi,rdx
	mov	rdx,rbx
	call	45C740h
	cmp	byte ptr [rsp+2Fh],0h
	jnz	45B780h

l000000000045B74E:
	mov	rax,[rbx+8h]
	test	rax,rax
	mov	edx,4h
	jnz	45B76Eh

l000000000045B75C:
	mov	rax,[rbx]
	mov	rcx,rbx
	add	rcx,[rax-18h]
	or	edx,[rcx+20h]
	call	46EB40h

l000000000045B76E:
	mov	rax,rbx
	add	rsp,38h
	pop	rbx
	pop	rsi
	ret
000000000045B778                         0F 1F 84 00 00 00 00 00         ........

l000000000045B780:
	mov	rax,[rbx]
	mov	rax,[rax-18h]
	mov	rcx,[rbx+rax+0E8h]
	mov	r8,[rcx+10h]
	cmp	r8,[rcx+18h]
	jnc	45B7D0h

l000000000045B799:
	movzx	eax,word ptr [r8]
	add	r8,2h
	mov	[rcx+10h],r8

l000000000045B7A5:
	cmp	ax,0FFh
	jz	45B7C0h

l000000000045B7AB:
	mov	qword ptr [rbx+8h],+1h
	mov	[rsi],ax
	mov	rax,rbx
	add	rsp,38h
	pop	rbx
	pop	rsi
	ret

l000000000045B7C0:
	cmp	qword ptr [rbx+8h],1h
	sbb	edx,edx
	and	edx,4h
	add	edx,2h
	jmp	45B75Ch
000000000045B7CF                                              90                .

l000000000045B7D0:
	mov	rax,[rcx]
	call	qword ptr [rax+50h]
	jmp	45B7A5h
000000000045B7D8                         48 83 EA 01 48 89 C1 75         H...H..u
000000000045B7E0 1B E8 5A A0 01 00 48 8B 03 48 03 58 E8 83 4B 20 ..Z...H..H.X..K 
000000000045B7F0 01 F6 43 1C 01 74 3C E8 64 A8 01 00 E8 3F A0 01 ..C..t<.d....?..
000000000045B800 00 48 8B 03 48 89 DE 48 03 70 E8 83 4E 20 01 F6 .H..H..H.p..N ..
000000000045B810 46 1C 01 75 23 E8 56 A2 01 00 48 8B 43 08 E9 2F F..u#.V...H.C../
000000000045B820 FF FF FF 48 89 C3 E8 45 A2 01 00 48 89 D9 E8 7D ...H...E...H...}
000000000045B830 5D FB FF E8 28 A8 01 00 E8 23 A8 01 00 48 89 C3 ]...(....#...H..
000000000045B840 E8 2B A2 01 00 48 89 D9 E8 63 5D FB FF 90 90 90 .+...H...c].....

;; fn000000000045B850: 000000000045B850
fn000000000045B850 proc
	push	rbx
	sub	rsp,30h
	mov	r8d,1h
	mov	rbx,rcx
	mov	qword ptr [rcx+8h],+0h
	lea	rcx,[rsp+2Fh]
	mov	rdx,rbx
	call	45C740h
	cmp	byte ptr [rsp+2Fh],0h
	jnz	45B8B0h

l000000000045B87A:
	cmp	qword ptr [rbx+8h],0h
	mov	edx,4h
	jnz	45B8A3h

l000000000045B886:
	mov	rax,[rbx]
	add	rbx,[rax-18h]
	or	edx,[rbx+20h]
	mov	rcx,rbx
	call	46EB40h
	mov	eax,0FFFFFFFFh
	add	rsp,30h
	pop	rbx
	ret

l000000000045B8A3:
	mov	eax,0FFFFFFFFh
	add	rsp,30h
	pop	rbx
	ret
000000000045B8AE                                           66 90               f.

l000000000045B8B0:
	mov	rax,[rbx]
	mov	rax,[rax-18h]
	mov	rcx,[rbx+rax+0E8h]
	mov	rdx,[rcx+10h]
	cmp	rdx,[rcx+18h]
	jnc	45B900h

l000000000045B8C9:
	movzx	eax,word ptr [rdx]
	add	rdx,2h
	mov	[rcx+10h],rdx

l000000000045B8D4:
	cmp	ax,0FFh
	jz	45B8F0h

l000000000045B8DA:
	mov	qword ptr [rbx+8h],+1h
	add	rsp,30h
	pop	rbx
	ret
000000000045B8E8                         0F 1F 84 00 00 00 00 00         ........

l000000000045B8F0:
	cmp	qword ptr [rbx+8h],1h
	sbb	edx,edx
	and	edx,4h
	add	edx,2h
	jmp	45B886h
000000000045B8FF                                              90                .

l000000000045B900:
	mov	rax,[rcx]
	call	qword ptr [rax+50h]
	jmp	45B8D4h
000000000045B908                         48 83 EA 01 48 89 C1 75         H...H..u
000000000045B910 1B E8 2A 9F 01 00 48 8B 03 48 03 58 E8 83 4B 20 ..*...H..H.X..K 
000000000045B920 01 F6 43 1C 01 74 38 E8 34 A7 01 00 E8 0F 9F 01 ..C..t8.4.......
000000000045B930 00 48 8B 03 48 89 DA 48 03 50 E8 83 4A 20 01 F6 .H..H..H.P..J ..
000000000045B940 42 1C 01 75 1F E8 26 A1 01 00 E9 2B FF FF FF 48 B..u..&....+...H
000000000045B950 89 C3 E8 19 A1 01 00 48 89 D9 E8 51 5C FB FF E8 .......H...Q\...
000000000045B960 FC A6 01 00 E8 F7 A6 01 00 48 89 C3 E8 FF A0 01 .........H......
000000000045B970 00 48 89 D9 E8 37 5C FB FF 90 90 90 90 90 90 90 .H...7\.........

;; fn000000000045B980: 000000000045B980
fn000000000045B980 proc
	push	rbx
	sub	rsp,40h
	mov	r8d,1h
	mov	rbx,rcx
	mov	qword ptr [rcx+8h],+0h
	lea	rcx,[rsp+3Fh]
	mov	rdx,rbx
	call	45C740h
	cmp	byte ptr [rsp+3Fh],0h
	mov	eax,0FFFFFFFFh
	jnz	45B9B5h

l000000000045B9AF:
	add	rsp,40h
	pop	rbx
	ret

l000000000045B9B5:
	mov	rax,[rbx]
	mov	rax,[rax-18h]
	mov	rcx,[rbx+rax+0E8h]
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	45BA00h

l000000000045B9CE:
	movzx	eax,word ptr [rax]

l000000000045B9D1:
	cmp	ax,0FFh
	jnz	45B9AFh

l000000000045B9D7:
	mov	rdx,[rbx]
	mov	[rsp+2Ch],eax
	add	rbx,[rdx-18h]
	mov	edx,[rbx+20h]
	mov	rcx,rbx
	or	edx,2h
	call	46EB40h
	mov	eax,[rsp+2Ch]
	jmp	45B9AFh
000000000045B9F6                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l000000000045BA00:
	mov	rax,[rcx]
	call	qword ptr [rax+48h]
	jmp	45B9D1h
000000000045BA08                         48 83 EA 01 48 89 C1 75         H...H..u
000000000045BA10 1B E8 2A 9E 01 00 48 8B 03 48 03 58 E8 83 4B 20 ..*...H..H.X..K 
000000000045BA20 01 F6 43 1C 01 74 38 E8 34 A6 01 00 E8 0F 9E 01 ..C..t8.4.......
000000000045BA30 00 48 8B 03 48 03 58 E8 83 4B 20 01 F6 43 1C 01 .H..H.X..K ..C..
000000000045BA40 75 22 E8 29 A0 01 00 83 C8 FF E9 60 FF FF FF 48 u".).......`...H
000000000045BA50 89 C3 E8 19 A0 01 00 48 89 D9 E8 51 5B FB FF E8 .......H...Q[...
000000000045BA60 FC A5 01 00 E8 F7 A5 01 00 48 89 C3 E8 FF 9F 01 .........H......
000000000045BA70 00 48 89 D9 E8 37 5B FB FF 90 90 90 90 90 90 90 .H...7[.........

;; fn000000000045BA80: 000000000045BA80
fn000000000045BA80 proc
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
	call	45C740h
	cmp	byte ptr [rsp+2Fh],0h
	jnz	45BAC0h

l000000000045BAB2:
	mov	rax,rbx
	add	rsp,30h
	pop	rbx
	pop	rsi
	pop	rdi
	ret
000000000045BABD                                        0F 1F 00              ...

l000000000045BAC0:
	mov	rax,[rbx]
	mov	r8,rsi
	mov	rdx,rdi
	mov	rax,[rax-18h]
	mov	rcx,[rbx+rax+0E8h]
	mov	rax,[rcx]
	call	qword ptr [rax+40h]
	cmp	rsi,rax
	mov	[rbx+8h],rax
	jz	45BAB2h

l000000000045BAE4:
	mov	rax,[rbx]
	mov	rcx,rbx
	add	rcx,[rax-18h]
	mov	edx,[rcx+20h]
	or	edx,6h
	call	46EB40h
	mov	rax,rbx
	add	rsp,30h
	pop	rbx
	pop	rsi
	pop	rdi
	ret
000000000045BB04             48 83 EA 01 48 89 C1 75 1B E8 2E 9D     H...H..u....
000000000045BB10 01 00 48 8B 03 48 03 58 E8 83 4B 20 01 F6 43 1C ..H..H.X..K ..C.
000000000045BB20 01 74 38 E8 38 A5 01 00 E8 13 9D 01 00 48 8B 03 .t8.8........H..
000000000045BB30 48 89 DF 48 03 78 E8 83 4F 20 01 F6 47 1C 01 75 H..H.x..O ..G..u
000000000045BB40 1F E8 2A 9F 01 00 E9 67 FF FF FF 48 89 C3 E8 1D ..*....g...H....
000000000045BB50 9F 01 00 48 89 D9 E8 55 5A FB FF E8 00 A5 01 00 ...H...UZ.......
000000000045BB60 E8 FB A4 01 00 48 89 C3 E8 03 9F 01 00 48 89 D9 .....H.......H..
000000000045BB70 E8 3B 5A FB FF 90 90 90 90 90 90 90 90 90 90 90 .;Z.............

;; fn000000000045BB80: 000000000045BB80
fn000000000045BB80 proc
	push	rbx
	sub	rsp,40h
	mov	r8d,1h
	mov	rbx,rcx
	lea	rcx,[rsp+3Fh]
	mov	rdx,rbx
	call	45C740h
	cmp	byte ptr [rsp+3Fh],0h
	jz	45BBD0h

l000000000045BBA2:
	mov	rax,[rbx]
	mov	rax,[rax-18h]
	mov	rcx,[rbx+rax+0E8h]
	test	rcx,rcx
	jz	45BBD0h

l000000000045BBB6:
	mov	rax,[rcx]
	call	qword ptr [rax+30h]
	cmp	eax,0FFh
	jz	45BBE0h

l000000000045BBC1:
	xor	eax,eax
	add	rsp,40h
	pop	rbx
	ret
000000000045BBC9                            0F 1F 80 00 00 00 00          .......

l000000000045BBD0:
	mov	eax,0FFFFFFFFh
	add	rsp,40h
	pop	rbx
	ret
000000000045BBDB                                  0F 1F 44 00 00            ..D..

l000000000045BBE0:
	mov	rdx,[rbx]
	mov	[rsp+2Ch],eax
	add	rbx,[rdx-18h]
	mov	edx,[rbx+20h]
	mov	rcx,rbx
	or	edx,1h
	call	46EB40h
	mov	eax,[rsp+2Ch]
	add	rsp,40h
	pop	rbx
	ret
000000000045BC03          48 83 EA 01 48 89 C1 75 1B E8 2F 9C 01    H...H..u../..
000000000045BC10 00 48 8B 03 48 03 58 E8 83 4B 20 01 F6 43 1C 01 .H..H.X..K ..C..
000000000045BC20 74 38 E8 39 A4 01 00 E8 14 9C 01 00 48 8B 03 48 t8.9........H..H
000000000045BC30 03 58 E8 83 4B 20 01 F6 43 1C 01 75 22 E8 2E 9E .X..K ..C..u"...
000000000045BC40 01 00 83 C8 FF E9 79 FF FF FF 48 89 C3 E8 1E 9E ......y...H.....
000000000045BC50 01 00 48 89 D9 E8 56 59 FB FF E8 01 A4 01 00 E8 ..H...VY........
000000000045BC60 FC A3 01 00 48 89 C3 E8 04 9E 01 00 48 89 D9 E8 ....H.......H...
000000000045BC70 3C 59 FB FF 90 90 90 90 90 90 90 90 90 90 90 90 <Y..............

;; fn000000000045BC80: 000000000045BC80
fn000000000045BC80 proc
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
	call	46EB40h
	lea	rcx,[rsp+4Fh]
	mov	r8d,1h
	mov	rdx,rbx
	call	45C740h
	cmp	byte ptr [rsp+4Fh],0h
	jz	45BCCDh

l000000000045BCBD:
	mov	rax,[rbx]
	mov	rdx,rbx
	add	rdx,[rax-18h]
	test	byte ptr [rdx+20h],5h
	jz	45BCE0h

l000000000045BCCD:
	mov	rax,rbx
	add	rsp,50h
	pop	rbx
	pop	rsi
	pop	rdi
	ret
000000000045BCD8                         0F 1F 84 00 00 00 00 00         ........

l000000000045BCE0:
	mov	rdx,[rdx+0E8h]
	lea	rcx,[rsp+30h]
	mov	[rsp+20h],rsi
	mov	[rsp+28h],rdi
	mov	r9d,8h
	lea	r8,[rsp+20h]
	mov	rax,[rdx]
	call	qword ptr [rax+28h]
	cmp	qword ptr [rsp+30h],0FFh
	jnz	45BCCDh

l000000000045BD0F:
	mov	rax,[rbx]
	mov	rcx,rbx
	add	rcx,[rax-18h]
	mov	edx,[rcx+20h]
	or	edx,4h
	call	46EB40h
	jmp	45BCCDh
000000000045BD26                   48 83 EA 01 48 89 C1 75 1B E8       H...H..u..
000000000045BD30 0C 9B 01 00 48 8B 03 48 03 58 E8 83 4B 20 01 F6 ....H..H.X..K ..
000000000045BD40 43 1C 01 74 38 E8 16 A3 01 00 E8 F1 9A 01 00 48 C..t8..........H
000000000045BD50 8B 03 48 89 DF 48 03 78 E8 83 4F 20 01 F6 47 1C ..H..H.x..O ..G.
000000000045BD60 01 75 1F E8 08 9D 01 00 E9 60 FF FF FF 48 89 C3 .u.......`...H..
000000000045BD70 E8 FB 9C 01 00 48 89 D9 E8 33 58 FB FF E8 DE A2 .....H...3X.....
000000000045BD80 01 00 E8 D9 A2 01 00 48 89 C3 E8 E1 9C 01 00 48 .......H.......H
000000000045BD90 89 D9 E8 19 58 FB FF 90 90 90 90 90 90 90 90 90 ....X...........

;; fn000000000045BDA0: 000000000045BDA0
fn000000000045BDA0 proc
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
	call	46EB40h
	lea	rcx,[rsp+4Fh]
	mov	r8d,1h
	mov	rdx,rbx
	call	45C740h
	cmp	byte ptr [rsp+4Fh],0h
	jz	45BDECh

l000000000045BDDC:
	mov	rax,[rbx]
	mov	rdx,rbx
	add	rdx,[rax-18h]
	test	byte ptr [rdx+20h],5h
	jz	45BE00h

l000000000045BDEC:
	mov	rax,rbx
	add	rsp,50h
	pop	rbx
	pop	rsi
	pop	rdi
	ret
000000000045BDF7                      66 0F 1F 84 00 00 00 00 00        f........

l000000000045BE00:
	mov	rdx,[rdx+0E8h]
	lea	rcx,[rsp+30h]
	mov	r9d,edi
	mov	r8,rsi
	mov	rax,[rdx]
	mov	dword ptr [rsp+20h],8h
	call	qword ptr [rax+20h]
	cmp	qword ptr [rsp+30h],0FFh
	jnz	45BDECh

l000000000045BE28:
	mov	rax,[rbx]
	mov	rcx,rbx
	add	rcx,[rax-18h]
	mov	edx,[rcx+20h]
	or	edx,4h
	call	46EB40h
	jmp	45BDECh
000000000045BE3F                                              48                H
000000000045BE40 83 EA 01 48 89 C1 75 1B E8 F3 99 01 00 48 8B 03 ...H..u......H..
000000000045BE50 48 03 58 E8 83 4B 20 01 F6 43 1C 01 74 38 E8 FD H.X..K ..C..t8..
000000000045BE60 A1 01 00 E8 D8 99 01 00 48 8B 03 48 89 DE 48 03 ........H..H..H.
000000000045BE70 70 E8 83 4E 20 01 F6 46 1C 01 75 1F E8 EF 9B 01 p..N ..F..u.....
000000000045BE80 00 E9 66 FF FF FF 48 89 C3 E8 E2 9B 01 00 48 89 ..f...H.......H.
000000000045BE90 D9 E8 1A 57 FB FF E8 C5 A1 01 00 E8 C0 A1 01 00 ...W............
000000000045BEA0 48 89 C3 E8 C8 9B 01 00 48 89 D9 E8 00 57 FB FF H.......H....W..
000000000045BEB0 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 ................

;; fn000000000045BEC0: 000000000045BEC0
fn000000000045BEC0 proc
	push	rsi
	push	rbx
	sub	rsp,58h
	mov	r8d,1h
	mov	qword ptr [rcx],-1h
	mov	dword ptr [rcx+8h],0h
	mov	rbx,rcx
	lea	rcx,[rsp+4Fh]
	mov	rsi,rdx
	call	45C740h
	cmp	byte ptr [rsp+4Fh],0h
	jz	45BF01h

l000000000045BEF1:
	mov	rax,[rsi]
	mov	rdx,rsi
	add	rdx,[rax-18h]
	test	byte ptr [rdx+20h],5h
	jz	45BF10h

l000000000045BF01:
	mov	rax,rbx
	add	rsp,58h
	pop	rbx
	pop	rsi
	ret
000000000045BF0B                                  0F 1F 44 00 00            ..D..

l000000000045BF10:
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
000000000045BF4C                                     48 83 EA 01             H...
000000000045BF50 48 89 C1 75 1B E8 E6 98 01 00 48 8B 06 48 03 70 H..u......H..H.p
000000000045BF60 E8 83 4E 20 01 F6 46 1C 01 74 35 E8 F0 A0 01 00 ..N ..F..t5.....
000000000045BF70 E8 CB 98 01 00 48 8B 06 48 03 70 E8 83 4E 20 01 .....H..H.p..N .
000000000045BF80 F6 46 1C 01 75 1F E8 E5 9A 01 00 E9 71 FF FF FF .F..u.......q...
000000000045BF90 48 89 C3 E8 D8 9A 01 00 48 89 D9 E8 10 56 FB FF H.......H....V..
000000000045BFA0 E8 BB A0 01 00 E8 B6 A0 01 00 48 89 C3 E8 BE 9A ..........H.....
000000000045BFB0 01 00 48 89 D9 E8 F6 55 FB FF 90 90 90 90 90 90 ..H....U........

;; fn000000000045BFC0: 000000000045BFC0
fn000000000045BFC0 proc
	push	rbx
	sub	rsp,30h
	mov	rax,[rcx]
	mov	rbx,rcx
	mov	qword ptr [rcx+8h],+0h
	add	rcx,[rax-18h]
	mov	edx,[rcx+20h]
	and	edx,0FDh
	call	46EB40h
	lea	rcx,[rsp+2Fh]
	mov	r8d,1h
	mov	rdx,rbx
	call	45C740h
	cmp	byte ptr [rsp+2Fh],0h
	jz	45C02Eh

l000000000045BFFC:
	mov	rax,[rbx]
	mov	rcx,rbx
	add	rcx,[rax-18h]
	mov	rax,[rcx+0E8h]
	test	rax,rax
	jz	45C04Ah

l000000000045C012:
	mov	rdx,[rax+10h]
	cmp	[rax+8h],rdx
	jnc	45C060h

l000000000045C01C:
	lea	rcx,[rdx-2h]
	mov	[rax+10h],rcx
	movzx	eax,word ptr [rdx-2h]

l000000000045C028:
	cmp	ax,0FFh
	jz	45C040h

l000000000045C02E:
	mov	rax,rbx
	add	rsp,30h
	pop	rbx
	ret
000000000045C037                      66 0F 1F 84 00 00 00 00 00        f........

l000000000045C040:
	mov	rax,[rbx]
	mov	rcx,rbx
	add	rcx,[rax-18h]

l000000000045C04A:
	mov	edx,[rcx+20h]
	or	edx,1h
	call	46EB40h
	mov	rax,rbx
	add	rsp,30h
	pop	rbx
	ret
000000000045C05E                                           66 90               f.

l000000000045C060:
	mov	r8,[rax]
	mov	edx,0FFFFh
	mov	rcx,rax
	call	qword ptr [r8+58h]
	jmp	45C028h
000000000045C071    48 83 EA 01 48 89 C1 75 1B E8 C1 97 01 00 48  H...H..u......H
000000000045C080 8B 03 48 03 58 E8 83 4B 20 01 F6 43 1C 01 74 38 ..H.X..K ..C..t8
000000000045C090 E8 CB 9F 01 00 E8 A6 97 01 00 48 8B 03 48 89 DA ..........H..H..
000000000045C0A0 48 03 50 E8 83 4A 20 01 F6 42 1C 01 75 1F E8 BD H.P..J ..B..u...
000000000045C0B0 99 01 00 E9 76 FF FF FF 48 89 C3 E8 B0 99 01 00 ....v...H.......
000000000045C0C0 48 89 D9 E8 E8 54 FB FF E8 93 9F 01 00 E8 8E 9F H....T..........
000000000045C0D0 01 00 48 89 C3 E8 96 99 01 00 48 89 D9 E8 CE 54 ..H.......H....T
000000000045C0E0 FB FF 90 90 90 90 90 90 90 90 90 90 90 90 90 90 ................

;; fn000000000045C0F0: 000000000045C0F0
;;   Called from:
;;     000000000045C3C6 (in fn000000000045C200)
fn000000000045C0F0 proc
	push	rbx
	sub	rsp,30h
	mov	r8d,1h
	mov	rbx,rcx
	mov	qword ptr [rcx+8h],+0h
	lea	rcx,[rsp+2Fh]
	mov	rdx,rbx
	call	45C740h
	cmp	byte ptr [rsp+2Fh],0h
	jnz	45C123h

l000000000045C11A:
	mov	rax,rbx
	add	rsp,30h
	pop	rbx
	ret

l000000000045C123:
	mov	rax,[rbx]
	mov	rax,[rax-18h]
	mov	rcx,[rbx+rax+0E8h]
	mov	rdx,[rcx+10h]
	cmp	rdx,[rcx+18h]
	jnc	45C180h

l000000000045C13C:
	movzx	eax,word ptr [rdx]
	add	rdx,2h
	mov	[rcx+10h],rdx

l000000000045C147:
	cmp	ax,0FFh
	jz	45C160h

l000000000045C14D:
	mov	rax,rbx
	mov	qword ptr [rbx+8h],+1h
	add	rsp,30h
	pop	rbx
	ret
000000000045C15E                                           66 90               f.

l000000000045C160:
	mov	rax,[rbx]
	mov	rcx,rbx
	add	rcx,[rax-18h]
	mov	edx,[rcx+20h]
	or	edx,2h
	call	46EB40h
	mov	rax,rbx
	add	rsp,30h
	pop	rbx
	ret
000000000045C17E                                           66 90               f.

l000000000045C180:
	mov	rax,[rcx]
	call	qword ptr [rax+50h]
	jmp	45C147h
000000000045C188                         48 83 EA 01 48 89 C1 75         H...H..u
000000000045C190 1B E8 AA 96 01 00 48 8B 03 48 03 58 E8 83 4B 20 ......H..H.X..K 
000000000045C1A0 01 F6 43 1C 01 74 38 E8 B4 9E 01 00 E8 8F 96 01 ..C..t8.........
000000000045C1B0 00 48 8B 03 48 89 DA 48 03 50 E8 83 4A 20 01 F6 .H..H..H.P..J ..
000000000045C1C0 42 1C 01 75 1F E8 A6 98 01 00 E9 4B FF FF FF 48 B..u.......K...H
000000000045C1D0 89 C3 E8 99 98 01 00 48 89 D9 E8 D1 53 FB FF E8 .......H....S...
000000000045C1E0 7C 9E 01 00 E8 77 9E 01 00 48 89 C3 E8 7F 98 01 |....w...H......
000000000045C1F0 00 48 89 D9 E8 B7 53 FB FF 90 90 90 90 90 90 90 .H....S.........

;; fn000000000045C200: 000000000045C200
;;   Called from:
;;     000000000045C662 (in fn000000000045C450)
fn000000000045C200 proc
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,30h
	cmp	rdx,1h
	mov	rdi,rcx
	mov	rbx,rdx
	jz	45C3C6h

l000000000045C21A:
	mov	qword ptr [rcx+8h],+0h
	lea	rcx,[rsp+2Fh]
	mov	r8d,1h
	mov	rdx,rdi
	call	45C740h
	test	rbx,rbx
	jle	45C330h

l000000000045C23E:
	cmp	byte ptr [rsp+2Fh],0h
	jz	45C330h

l000000000045C249:
	mov	rax,[rdi]
	mov	rax,[rax-18h]
	mov	rsi,[rdi+rax+0E8h]
	mov	rax,[rsi+10h]
	cmp	rax,[rsi+18h]
	jnc	45C3E1h

l000000000045C266:
	movzx	eax,word ptr [rax]

l000000000045C269:
	mov	r8,[rdi+8h]
	xor	ebp,ebp
	mov	r12,7FFFFFFFFFFFFFFFh
	nop	dword ptr [rax+0h]

l000000000045C280:
	cmp	ax,0FFh
	setnz	dl
	cmp	r8,rbx
	jge	45C2E3h

l000000000045C28C:
	test	dl,dl
	jz	45C340h

l000000000045C294:
	mov	rcx,[rsi+18h]
	mov	rdx,[rsi+10h]
	mov	r10,rbx
	sub	r10,r8
	mov	r9,rcx
	sub	r9,rdx
	sar	r9,1h
	cmp	r10,r9
	cmovle	r9,r10

l000000000045C2B2:
	cmp	r9,1h
	jle	45C380h

l000000000045C2BC:
	lea	rax,[rdx+r9*2]
	add	r8,r9
	cmp	rcx,rax
	mov	[rsi+10h],rax
	mov	[rdi+8h],r8
	jbe	45C3B4h

l000000000045C2D4:
	movzx	eax,word ptr [rax]
	cmp	ax,0FFh
	setnz	dl
	cmp	r8,rbx
	jl	45C28Ch

l000000000045C2E3:
	test	dl,dl
	jz	45C340h

l000000000045C2E7:
	cmp	rbx,r12
	jnz	45C340h

l000000000045C2EC:
	mov	rcx,8000000000000000h
	mov	ebp,1h
	mov	[rdi+8h],rcx
	mov	r8,rcx
	jmp	45C280h
000000000045C307                      E8 34 95 01 00 48 8B 07 48        .4...H..H
000000000045C310 89 FE 48 03 70 E8 83 4E 20 01 F6 46 1C 01 0F 85 ..H.p..N ..F....
000000000045C320 08 01 00 00 E8 47 97 01 00 0F 1F 80 00 00 00 00 .....G..........

l000000000045C330:
	mov	rax,rdi
	add	rsp,30h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
000000000045C33E                                           66 90               f.

l000000000045C340:
	test	bpl,bpl
	jz	45C353h

l000000000045C345:
	mov	rsi,7FFFFFFFFFFFFFFFh
	mov	[rdi+8h],rsi

l000000000045C353:
	cmp	ax,0FFh
	jnz	45C330h

l000000000045C359:
	mov	rax,[rdi]
	mov	rcx,rdi
	add	rcx,[rax-18h]
	mov	edx,[rcx+20h]
	or	edx,2h
	call	46EB40h
	mov	rax,rdi
	add	rsp,30h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
000000000045C37C                                     0F 1F 40 00             ..@.

l000000000045C380:
	add	r8,1h
	cmp	rcx,rdx
	mov	[rdi+8h],r8
	jbe	45C3D6h

l000000000045C38D:
	movzx	eax,word ptr [rdx]
	add	rdx,2h
	mov	[rsi+10h],rdx

l000000000045C398:
	cmp	ax,0FFh
	jz	45C3BDh

l000000000045C39E:
	mov	rax,[rsi+10h]
	cmp	rax,[rsi+18h]
	jnc	45C3B4h

l000000000045C3A8:
	movzx	eax,word ptr [rax]
	mov	r8,[rdi+8h]
	jmp	45C280h

l000000000045C3B4:
	mov	rax,[rsi]
	mov	rcx,rsi
	call	qword ptr [rax+48h]

l000000000045C3BD:
	mov	r8,[rdi+8h]
	jmp	45C280h

l000000000045C3C6:
	call	45C0F0h
	add	rsp,30h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret

l000000000045C3D6:
	mov	rax,[rsi]
	mov	rcx,rsi
	call	qword ptr [rax+50h]
	jmp	45C398h

l000000000045C3E1:
	mov	rax,[rsi]
	mov	rcx,rsi
	call	qword ptr [rax+48h]
	jmp	45C269h
000000000045C3EF                                              48                H
000000000045C3F0 83 FA 01 48 89 C1 0F 85 0B FF FF FF E8 3F 94 01 ...H.........?..
000000000045C400 00 48 8B 07 48 03 78 E8 83 4F 20 01 F6 47 1C 01 .H..H.x..O ..G..
000000000045C410 74 15 E8 49 9C 01 00 48 89 C3 E8 51 96 01 00 48 t..I...H...Q...H
000000000045C420 89 D9 E8 89 51 FB FF E8 34 9C 01 00 E8 2F 9C 01 ....Q...4..../..
000000000045C430 00 48 89 C3 E8 37 96 01 00 48 89 D9 E8 6F 51 FB .H...7...H...oQ.
000000000045C440 FF 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 ................

;; fn000000000045C450: 000000000045C450
fn000000000045C450 proc
	push	r14
	push	r13
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,30h
	cmp	r8w,0FFh
	mov	rbp,rcx
	mov	rsi,rdx
	mov	r14d,r8d
	mov	ebx,r8d
	jz	45C662h

l000000000045C475:
	mov	qword ptr [rcx+8h],+0h
	lea	rcx,[rsp+2Fh]
	mov	r8d,1h
	mov	rdx,rbp
	call	45C740h
	test	rsi,rsi
	jle	45C5C4h

l000000000045C499:
	cmp	byte ptr [rsp+2Fh],0h
	jz	45C5C4h

l000000000045C4A4:
	mov	rax,[rbp+0h]
	mov	rax,[rax-18h]
	mov	rdi,[rbp+rax+0E8h]
	mov	rax,[rdi+10h]
	cmp	rax,[rdi+18h]
	jnc	45C6A9h

l000000000045C4C2:
	movzx	eax,word ptr [rax]

l000000000045C4C5:
	mov	rdx,[rbp+8h]
	xor	r12d,r12d
	mov	r13,7FFFFFFFFFFFFFFFh
	nop	word ptr cs:[rax+rax+0h]

l000000000045C4E0:
	cmp	bx,ax
	setnz	r8b
	cmp	ax,0FFh
	setnz	cl
	test	r8b,cl
	jz	45C570h

l000000000045C4F3:
	cmp	rsi,rdx
	jle	45C5E0h

l000000000045C4FC:
	mov	r10,[rdi+18h]
	mov	r8,[rdi+10h]
	mov	rax,rsi
	sub	rax,rdx
	mov	r9,r10
	sub	r9,r8
	sar	r9,1h
	cmp	rax,r9
	mov	rcx,r9
	cmovle	rcx,rax

l000000000045C51D:
	cmp	rcx,1h
	jle	45C611h

l000000000045C527:
	test	r8,r8
	mov	rax,rcx
	jz	45C549h

l000000000045C52F:
	mov	r9,r8

l000000000045C532:
	cmp	bx,[r9]
	jz	45C600h

l000000000045C53C:
	add	r9,2h
	sub	rax,1h
	jnz	45C532h

l000000000045C546:
	mov	rax,rcx

l000000000045C549:
	lea	rax,[r8+rax*2]
	add	rdx,rcx
	cmp	r10,rax
	mov	[rdi+10h],rax
	mov	[rbp+8h],rdx
	jbe	45C650h

l000000000045C561:
	movzx	eax,word ptr [rax]
	jmp	45C4E0h
000000000045C569                            0F 1F 80 00 00 00 00          .......

l000000000045C570:
	test	r12b,r12b
	jz	45C583h

l000000000045C575:
	mov	rsi,7FFFFFFFFFFFFFFFh
	mov	[rbp+8h],rsi

l000000000045C583:
	cmp	ax,0FFh
	jz	45C681h

l000000000045C58D:
	cmp	r14w,ax
	jnz	45C5C4h

l000000000045C593:
	mov	rax,[rbp+8h]
	mov	rdx,7FFFFFFFFFFFFFFFh
	cmp	rax,rdx
	jz	45C5AEh

l000000000045C5A6:
	add	rax,1h
	mov	[rbp+8h],rax

l000000000045C5AE:
	mov	rax,[rdi+10h]
	cmp	rax,[rdi+18h]
	jnc	45C6B7h

l000000000045C5BC:
	add	rax,2h
	mov	[rdi+10h],rax

l000000000045C5C4:
	mov	rax,rbp
	add	rsp,30h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	ret
000000000045C5D6                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l000000000045C5E0:
	cmp	rsi,r13
	jnz	45C570h

l000000000045C5E5:
	mov	rdx,8000000000000000h
	mov	r12d,1h
	mov	[rbp+8h],rdx
	jmp	45C4E0h
000000000045C5FE                                           66 90               f.

l000000000045C600:
	sub	r9,r8
	mov	rcx,r9
	sar	rcx,1h
	mov	rax,rcx
	jmp	45C549h

l000000000045C611:
	add	rdx,1h
	cmp	r10,r8
	mov	[rbp+8h],rdx
	jbe	45C676h

l000000000045C61E:
	movzx	eax,word ptr [r8]
	add	r8,2h
	mov	[rdi+10h],r8

l000000000045C62A:
	cmp	ax,0FFh
	jz	45C659h

l000000000045C630:
	mov	rax,[rdi+10h]
	cmp	rax,[rdi+18h]
	jnc	45C650h

l000000000045C63A:
	movzx	eax,word ptr [rax]
	mov	rdx,[rbp+8h]
	jmp	45C4E0h
000000000045C646                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l000000000045C650:
	mov	rax,[rdi]
	mov	rcx,rdi
	call	qword ptr [rax+48h]

l000000000045C659:
	mov	rdx,[rbp+8h]
	jmp	45C4E0h

l000000000045C662:
	call	45C200h
	add	rsp,30h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	ret

l000000000045C676:
	mov	rax,[rdi]
	mov	rcx,rdi
	call	qword ptr [rax+50h]
	jmp	45C62Ah

l000000000045C681:
	mov	rax,[rbp+0h]
	mov	rcx,rbp
	add	rcx,[rax-18h]
	mov	edx,[rcx+20h]
	or	edx,2h
	call	46EB40h
	mov	rax,rbp
	add	rsp,30h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	ret

l000000000045C6A9:
	mov	rax,[rdi]
	mov	rcx,rdi
	call	qword ptr [rax+48h]
	jmp	45C4C5h

l000000000045C6B7:
	mov	rax,[rdi]
	mov	rcx,rdi
	call	qword ptr [rax+50h]
	jmp	45C5C4h
000000000045C6C5                48 83 FA 01 48 89 C1 75 1C E8 6D      H...H..u..m
000000000045C6D0 91 01 00 48 8B 45 00 48 03 68 E8 83 4D 20 01 F6 ...H.E.H.h..M ..
000000000045C6E0 45 1C 01 74 39 E8 76 99 01 00 E8 51 91 01 00 48 E..t9.v....Q...H
000000000045C6F0 8B 45 00 48 89 EF 48 03 78 E8 83 4F 20 01 F6 47 .E.H..H.x..O ..G
000000000045C700 1C 01 75 1F E8 67 93 01 00 E9 B6 FE FF FF 48 89 ..u..g........H.
000000000045C710 C3 E8 5A 93 01 00 48 89 D9 E8 92 4E FB FF E8 3D ..Z...H....N...=
000000000045C720 99 01 00 E8 38 99 01 00 48 89 C3 E8 40 93 01 00 ....8...H...@...
000000000045C730 48 89 D9 E8 78 4E FB FF 90 90 90 90 90 90 90 90 H...xN..........

;; fn000000000045C740: 000000000045C740
;;   Called from:
;;     000000000045A4EA (in fn000000000045A4D0)
;;     000000000045A63A (in fn000000000045A620)
;;     000000000045A78A (in fn000000000045A770)
;;     000000000045A8DA (in fn000000000045A8C0)
;;     000000000045AA2A (in fn000000000045AA10)
;;     000000000045AB7A (in fn000000000045AB60)
;;     000000000045ACCA (in fn000000000045ACB0)
;;     000000000045AE1A (in fn000000000045AE00)
;;     000000000045AF6A (in fn000000000045AF50)
;;     000000000045B0BA (in fn000000000045B0A0)
;;     000000000045B20A (in fn000000000045B1F0)
;;     000000000045B3BC (in fn000000000045B390)
;;     000000000045B5A7 (in fn000000000045B580)
;;     000000000045B742 (in fn000000000045B720)
;;     000000000045B86E (in fn000000000045B850)
;;     000000000045B99E (in fn000000000045B980)
;;     000000000045BAA6 (in fn000000000045BA80)
;;     000000000045BB96 (in fn000000000045BB80)
;;     000000000045BCB1 (in fn000000000045BC80)
;;     000000000045BDD0 (in fn000000000045BDA0)
;;     000000000045BEE5 (in fn000000000045BEC0)
;;     000000000045BFF0 (in fn000000000045BFC0)
;;     000000000045C10E (in fn000000000045C0F0)
;;     000000000045C230 (in fn000000000045C200)
;;     000000000045C48B (in fn000000000045C450)
;;     000000000045CAE5 (in fn000000000045CAB0)
;;     000000000045CDB6 (in fn000000000045CD80)
;;     000000000045CED6 (in fn000000000045CEB0)
;;     000000000045D2C7 (in fn000000000045D2B0)
;;     000000000045D41A (in fn000000000045D400)
;;     000000000045D5AA (in fn000000000045D590)
;;     0000000000471FC6 (in fn0000000000471F90)
;;     0000000000474A9F (in fn0000000000474A80)
;;     0000000000474CE7 (in fn0000000000474CD0)
;;     0000000000474F24 (in fn0000000000474F00)
fn000000000045C740 proc
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,38h
	mov	rax,[rdx]
	mov	rdi,rcx
	mov	byte ptr [rcx],0h
	mov	rcx,rdx
	mov	rsi,rdx
	add	rcx,[rax-18h]
	mov	r9d,[rcx+20h]
	mov	rax,rcx
	test	r9d,r9d
	jnz	45C7B0h

l000000000045C767:
	mov	rcx,[rcx+0D8h]
	test	rcx,rcx
	jz	45C7D0h

l000000000045C773:
	mov	[rsp+2Ch],r8d
	call	45D8D0h
	mov	rax,[rsi]
	mov	rcx,rsi
	mov	r8d,[rsp+2Ch]
	add	rcx,[rax-18h]
	test	r8b,r8b
	mov	rax,rcx
	jz	45C7D5h

l000000000045C794:
	mov	r9d,[rax+20h]
	test	r9d,r9d
	jnz	45C7B0h

l000000000045C79D:
	mov	byte ptr [rdi],1h
	add	rsp,38h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
000000000045C7A9                            0F 1F 80 00 00 00 00          .......

l000000000045C7B0:
	xor	edx,edx

l000000000045C7B2:
	or	edx,4h
	mov	rcx,rax
	or	edx,r9d
	add	rsp,38h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	jmp	46EB40h
000000000045C7C8                         0F 1F 84 00 00 00 00 00         ........

l000000000045C7D0:
	test	r8b,r8b
	jnz	45C79Dh

l000000000045C7D5:
	test	byte ptr [rax+19h],10h
	jz	45C794h

l000000000045C7DB:
	mov	rbx,[rax+0E8h]
	mov	rdx,[rbx+10h]
	cmp	rdx,[rbx+18h]
	jnc	45C89Fh

l000000000045C7F0:
	movzx	r8d,word ptr [rdx]

l000000000045C7F4:
	mov	rbp,[rax+0F0h]
	test	rbp,rbp
	jz	45C8BEh

l000000000045C804:
	cmp	r8w,0FFh
	jnz	45C820h

l000000000045C80B:
	nop	dword ptr [rax+rax+0h]

l000000000045C810:
	mov	r9d,[rax+20h]
	mov	edx,2h
	jmp	45C7B2h
000000000045C81B                                  0F 1F 44 00 00            ..D..

l000000000045C820:
	mov	rax,[rbp+0h]
	mov	edx,20h
	mov	rcx,rbp
	call	qword ptr [rax+10h]
	test	al,al
	jz	45C870h

l000000000045C833:
	mov	r8,[rbx+10h]
	cmp	r8,[rbx+18h]
	jnc	45C880h

l000000000045C83D:
	movzx	eax,word ptr [r8]
	add	r8,2h
	mov	[rbx+10h],r8

l000000000045C849:
	cmp	ax,0FFh
	jz	45C864h

l000000000045C84F:
	mov	rax,[rbx+10h]
	cmp	rax,[rbx+18h]
	jnc	45C890h

l000000000045C859:
	movzx	r8d,word ptr [rax]

l000000000045C85D:
	cmp	r8w,0FFh
	jnz	45C820h

l000000000045C864:
	mov	rax,[rsi]
	add	rsi,[rax-18h]
	mov	rax,rsi
	jmp	45C810h

l000000000045C870:
	mov	rax,[rsi]
	add	rsi,[rax-18h]
	mov	rax,rsi
	jmp	45C794h
000000000045C87F                                              90                .

l000000000045C880:
	mov	rax,[rbx]
	mov	rcx,rbx
	call	qword ptr [rax+50h]
	jmp	45C849h
000000000045C88B                                  0F 1F 44 00 00            ..D..

l000000000045C890:
	mov	rax,[rbx]
	mov	rcx,rbx
	call	qword ptr [rax+48h]
	movzx	r8d,ax
	jmp	45C85Dh

l000000000045C89F:
	mov	rax,[rbx]
	mov	rcx,rbx
	call	qword ptr [rax+48h]
	movzx	r8d,ax
	mov	rax,[rsi]
	mov	rdx,rsi
	add	rdx,[rax-18h]
	mov	rax,rdx
	jmp	45C7F4h

l000000000045C8BE:
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

;; fn000000000045C8D0: 000000000045C8D0
;;   Called from:
;;     000000000045C8CF (in fn000000000045D760)
fn000000000045C8D0 proc
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,38h
	mov	rax,[rdx]
	mov	rdi,rcx
	mov	byte ptr [rcx],0h
	mov	rcx,rdx
	mov	rsi,rdx
	add	rcx,[rax-18h]
	mov	r9d,[rcx+20h]
	mov	rax,rcx
	test	r9d,r9d
	jnz	45C940h

l000000000045C8F7:
	mov	rcx,[rcx+0D8h]
	test	rcx,rcx
	jz	45C960h

l000000000045C903:
	mov	[rsp+2Ch],r8d
	call	45D8D0h
	mov	rax,[rsi]
	mov	rcx,rsi
	mov	r8d,[rsp+2Ch]
	add	rcx,[rax-18h]
	test	r8b,r8b
	mov	rax,rcx
	jz	45C965h

l000000000045C924:
	mov	r9d,[rax+20h]
	test	r9d,r9d
	jnz	45C940h

l000000000045C92D:
	mov	byte ptr [rdi],1h
	add	rsp,38h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
000000000045C939                            0F 1F 80 00 00 00 00          .......

l000000000045C940:
	xor	edx,edx

l000000000045C942:
	or	edx,4h
	mov	rcx,rax
	or	edx,r9d
	add	rsp,38h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	jmp	46EB40h
000000000045C958                         0F 1F 84 00 00 00 00 00         ........

l000000000045C960:
	test	r8b,r8b
	jnz	45C92Dh

l000000000045C965:
	test	byte ptr [rax+19h],10h
	jz	45C924h

l000000000045C96B:
	mov	rbx,[rax+0E8h]
	mov	rdx,[rbx+10h]
	cmp	rdx,[rbx+18h]
	jnc	45CA2Fh

l000000000045C980:
	movzx	r8d,word ptr [rdx]

l000000000045C984:
	mov	rbp,[rax+0F0h]
	test	rbp,rbp
	jz	45CA4Eh

l000000000045C994:
	cmp	r8w,0FFh
	jnz	45C9B0h

l000000000045C99B:
	nop	dword ptr [rax+rax+0h]

l000000000045C9A0:
	mov	r9d,[rax+20h]
	mov	edx,2h
	jmp	45C942h
000000000045C9AB                                  0F 1F 44 00 00            ..D..

l000000000045C9B0:
	mov	rax,[rbp+0h]
	mov	edx,20h
	mov	rcx,rbp
	call	qword ptr [rax+10h]
	test	al,al
	jz	45CA00h

l000000000045C9C3:
	mov	r8,[rbx+10h]
	cmp	r8,[rbx+18h]
	jnc	45CA10h

l000000000045C9CD:
	movzx	eax,word ptr [r8]
	add	r8,2h
	mov	[rbx+10h],r8

l000000000045C9D9:
	cmp	ax,0FFh
	jz	45C9F4h

l000000000045C9DF:
	mov	rax,[rbx+10h]
	cmp	rax,[rbx+18h]
	jnc	45CA20h

l000000000045C9E9:
	movzx	r8d,word ptr [rax]

l000000000045C9ED:
	cmp	r8w,0FFh
	jnz	45C9B0h

l000000000045C9F4:
	mov	rax,[rsi]
	add	rsi,[rax-18h]
	mov	rax,rsi
	jmp	45C9A0h

l000000000045CA00:
	mov	rax,[rsi]
	add	rsi,[rax-18h]
	mov	rax,rsi
	jmp	45C924h
000000000045CA0F                                              90                .

l000000000045CA10:
	mov	rax,[rbx]
	mov	rcx,rbx
	call	qword ptr [rax+50h]
	jmp	45C9D9h
000000000045CA1B                                  0F 1F 44 00 00            ..D..

l000000000045CA20:
	mov	rax,[rbx]
	mov	rcx,rbx
	call	qword ptr [rax+48h]
	movzx	r8d,ax
	jmp	45C9EDh

l000000000045CA2F:
	mov	rax,[rbx]
	mov	rcx,rbx
	call	qword ptr [rax+48h]
	movzx	r8d,ax
	mov	rax,[rsi]
	mov	rdx,rsi
	add	rdx,[rax-18h]
	mov	rax,rdx
	jmp	45C984h

l000000000045CA4E:
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

;; fn000000000045CA60: 000000000045CA60
;;   Called from:
;;     000000000045CA5F (in fn000000000045C8D0)
fn000000000045CA60 proc
	push	rsi
	push	rbx
	sub	rsp,38h
	mov	rax,[rcx]
	mov	rbx,rcx
	mov	rsi,rdx
	mov	rax,[rax-18h]
	mov	rcx,[rcx+rax+0F0h]
	test	rcx,rcx
	jz	45CAAAh

l000000000045CA80:
	mov	rax,[rcx]
	mov	[rsp+28h],r8
	mov	edx,0Ah
	call	qword ptr [rax+50h]
	mov	r8,[rsp+28h]
	movzx	r9d,ax
	mov	rdx,rsi
	mov	rcx,rbx
	add	rsp,38h
	pop	rbx
	pop	rsi
	jmp	45CAB0h

l000000000045CAAA:
	call	470820h
	nop

;; fn000000000045CAB0: 000000000045CAB0
;;   Called from:
;;     000000000045CAA5 (in fn000000000045CA60)
;;     000000000045CAAF (in fn000000000045CA60)
fn000000000045CAB0 proc
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
	mov	ebx,r9d
	call	45C740h
	cmp	byte ptr [rsp+2Fh],0h
	jz	45CBD7h

l000000000045CAF5:
	mov	rax,[rbp+0h]
	mov	rax,[rax-18h]
	mov	rsi,[rbp+rax+0E8h]
	mov	rax,[rsi+10h]
	cmp	rax,[rsi+18h]
	jnc	45CCE2h

l000000000045CB13:
	movzx	eax,word ptr [rax]

l000000000045CB16:
	mov	r10,[rbp+8h]
	nop	word ptr [rax+rax+0h]

l000000000045CB20:
	cmp	bx,ax
	lea	rcx,[r10+1h]
	setnz	r8b
	cmp	ax,0FFh
	setnz	dl
	test	r8b,dl
	jz	45CC31h

l000000000045CB3B:
	cmp	rcx,r12
	jge	45CC31h

l000000000045CB44:
	mov	r8,[rsi+18h]
	mov	rdx,[rsi+10h]
	mov	r14,r12
	sub	r14,r10
	sub	r14,1h
	mov	r10,r8
	sub	r10,rdx
	sar	r10,1h
	cmp	r14,r10
	cmovg	r14,r10

l000000000045CB66:
	cmp	r14,1h
	jle	45CC7Ah

l000000000045CB70:
	test	rdx,rdx
	jz	45CB94h

l000000000045CB75:
	mov	rax,r14
	mov	r10,rdx
	nop	dword ptr [rax+rax+0h]

l000000000045CB80:
	cmp	bx,[r10]
	jz	45CC20h

l000000000045CB8A:
	add	r10,2h
	sub	rax,1h
	jnz	45CB80h

l000000000045CB94:
	mov	r15,r14

l000000000045CB97:
	add	r15,r15
	mov	rcx,rdi
	mov	r8,r15
	add	rdi,r15
	call	41BCC0h
	add	r15,[rsi+10h]
	add	r14,[rbp+8h]
	cmp	r15,[rsi+18h]
	mov	[rsi+10h],r15
	mov	r10,r14
	mov	[rbp+8h],r14
	jnc	45CCB4h

l000000000045CBC5:
	movzx	eax,word ptr [r15]
	jmp	45CB20h

l000000000045CBCE:
	mov	rax,[rsi]
	mov	rcx,rsi
	call	qword ptr [rax+50h]

l000000000045CBD7:
	mov	r10,[rbp+8h]
	xor	edx,edx
	nop	dword ptr [rax]

l000000000045CBE0:
	test	r12,r12
	jle	45CBEAh

l000000000045CBE5:
	xor	eax,eax
	mov	[rdi],ax

l000000000045CBEA:
	test	r10,r10
	jnz	45CC19h

l000000000045CBEF:
	or	edx,4h

l000000000045CBF2:
	mov	rax,[rbp+0h]
	mov	rcx,rbp
	add	rcx,[rax-18h]
	or	edx,[rcx+20h]
	call	46EB40h

l000000000045CC05:
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

l000000000045CC19:
	test	edx,edx
	jz	45CC05h

l000000000045CC1D:
	jmp	45CBF2h
000000000045CC1F                                              90                .

l000000000045CC20:
	sub	r10,rdx
	mov	r14,r10
	sar	r14,1h
	mov	r15,r14
	jmp	45CB97h

l000000000045CC31:
	cmp	ax,0FFh
	jz	45CC70h

l000000000045CC37:
	cmp	r13w,ax
	mov	edx,4h
	jnz	45CBE0h

l000000000045CC42:
	mov	rax,[rsi+10h]
	cmp	rax,[rsi+18h]
	mov	[rbp+8h],rcx
	jnc	45CBCEh

l000000000045CC54:
	add	rax,2h
	mov	r10,rcx
	xor	dl,dl
	mov	[rsi+10h],rax
	jmp	45CBE0h
000000000045CC66                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l000000000045CC70:
	mov	edx,2h
	jmp	45CBE0h

l000000000045CC7A:
	cmp	r8,rdx
	mov	[rdi],ax
	lea	r15,[rdi+2h]
	mov	[rbp+8h],rcx
	jbe	45CCD7h

l000000000045CC8A:
	movzx	eax,word ptr [rdx]
	add	rdx,2h
	mov	[rsi+10h],rdx

l000000000045CC95:
	cmp	ax,0FFh
	jz	45CCCBh

l000000000045CC9B:
	mov	rax,[rsi+10h]
	cmp	rax,[rsi+18h]
	jnc	45CCC2h

l000000000045CCA5:
	movzx	eax,word ptr [rax]
	mov	r10,[rbp+8h]
	mov	rdi,r15
	jmp	45CB20h

l000000000045CCB4:
	mov	rax,[rsi]
	mov	rcx,rsi
	call	qword ptr [rax+48h]
	jmp	45CB16h

l000000000045CCC2:
	mov	rax,[rsi]
	mov	rcx,rsi
	call	qword ptr [rax+48h]

l000000000045CCCB:
	mov	r10,[rbp+8h]
	mov	rdi,r15
	jmp	45CB20h

l000000000045CCD7:
	mov	rax,[rsi]
	mov	rcx,rsi
	call	qword ptr [rax+50h]
	jmp	45CC95h

l000000000045CCE2:
	mov	rax,[rsi]
	mov	rcx,rsi
	call	qword ptr [rax+48h]
	jmp	45CB16h
000000000045CCF0 49 89 FF 48 83 FA 01 75 36 48 89 C1 E8 3F 8B 01 I..H...u6H...?..
000000000045CD00 00 48 8B 45 00 48 03 68 E8 83 4D 20 01 F6 45 1C .H.E.H.h..M ..E.
000000000045CD10 01 74 17 E8 48 93 01 00 EB D6 48 89 C3 E8 4E 8D .t..H.....H...N.
000000000045CD20 01 00 48 89 D9 E8 86 48 FB FF E8 31 93 01 00 48 ..H....H...1...H
000000000045CD30 89 C1 48 89 EF E8 06 8B 01 00 48 8B 45 00 48 03 ..H.......H.E.H.
000000000045CD40 78 E8 83 4F 20 01 F6 47 1C 01 75 17 E8 1F 8D 01 x..O ..G..u.....
000000000045CD50 00 4C 89 FF 4C 8B 55 08 31 D2 E9 81 FE FF FF EB .L..L.U.1.......
000000000045CD60 92 EB 8D E8 F8 92 01 00 48 89 C3 E8 00 8D 01 00 ........H.......
000000000045CD70 48 89 D9 E8 38 48 FB FF 90 90 90 90 90 90 90 90 H...8H..........

;; fn000000000045CD80: 000000000045CD80
fn000000000045CD80 proc
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,30h
	mov	rax,[rcx]
	mov	rbx,rcx
	mov	qword ptr [rcx+8h],+0h
	mov	esi,edx
	mov	edi,edx
	add	rcx,[rax-18h]
	mov	edx,[rcx+20h]
	and	edx,0FDh
	call	46EB40h
	lea	rcx,[rsp+2Fh]
	mov	r8d,1h
	mov	rdx,rbx
	call	45C740h
	cmp	byte ptr [rsp+2Fh],0h
	jz	45CDF9h

l000000000045CDC2:
	mov	rax,[rbx]
	mov	rdx,rbx
	add	rdx,[rax-18h]
	mov	rcx,[rdx+0E8h]
	test	rcx,rcx
	jz	45CE04h

l000000000045CDD8:
	mov	rax,[rcx+10h]
	cmp	[rcx+8h],rax
	jnc	45CDE8h

l000000000045CDE2:
	cmp	si,[rax-2h]
	jz	45CE30h

l000000000045CDE8:
	mov	rax,[rcx]
	movzx	edx,si
	call	qword ptr [rax+58h]
	mov	edi,eax

l000000000045CDF3:
	cmp	di,0FFh
	jz	45CE20h

l000000000045CDF9:
	mov	rax,rbx
	add	rsp,30h
	pop	rbx
	pop	rsi
	pop	rdi
	ret

l000000000045CE04:
	mov	rcx,rdx

l000000000045CE07:
	mov	edx,[rcx+20h]
	or	edx,1h
	call	46EB40h
	mov	rax,rbx
	add	rsp,30h
	pop	rbx
	pop	rsi
	pop	rdi
	ret
000000000045CE1D                                        0F 1F 00              ...

l000000000045CE20:
	mov	rax,[rbx]
	mov	rcx,rbx
	add	rcx,[rax-18h]
	jmp	45CE07h
000000000045CE2C                                     0F 1F 40 00             ..@.

l000000000045CE30:
	sub	rax,2h
	mov	[rcx+10h],rax
	jmp	45CDF3h
000000000045CE3A                               48 83 EA 01 48 89           H...H.
000000000045CE40 C1 75 1B E8 F8 89 01 00 48 8B 03 48 03 58 E8 83 .u......H..H.X..
000000000045CE50 4B 20 01 F6 43 1C 01 74 38 E8 02 92 01 00 E8 DD K ..C..t8.......
000000000045CE60 89 01 00 48 8B 03 48 89 DF 48 03 78 E8 83 4F 20 ...H..H..H.x..O 
000000000045CE70 01 F6 47 1C 01 75 1F E8 F4 8B 01 00 E9 78 FF FF ..G..u.......x..
000000000045CE80 FF 48 89 C3 E8 E7 8B 01 00 48 89 D9 E8 1F 47 FB .H.......H....G.
000000000045CE90 FF E8 CA 91 01 00 E8 C5 91 01 00 48 89 C3 E8 CD ...........H....
000000000045CEA0 8B 01 00 48 89 D9 E8 05 47 FB FF 90 90 90 90 90 ...H....G.......

;; fn000000000045CEB0: 000000000045CEB0
fn000000000045CEB0 proc
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
	call	45C740h
	cmp	byte ptr [rsp+2Fh],0h
	jz	45CF3Bh

l000000000045CEE2:
	mov	rax,[rbx]
	mov	rax,[rax-18h]
	mov	rcx,[rbx+rax+0E8h]
	mov	rax,[rcx+18h]
	sub	rax,[rcx+10h]
	sar	rax,1h
	test	rax,rax
	jz	45CF50h

l000000000045CF01:
	test	rax,rax
	jle	45CF35h

l000000000045CF06:
	mov	rdx,[rbx]
	cmp	rax,rsi
	cmovle	rsi,rax

l000000000045CF10:
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

l000000000045CF35:
	cmp	rax,0FFh
	jz	45CF60h

l000000000045CF3B:
	mov	rax,[rbx+8h]

l000000000045CF3F:
	add	rsp,30h
	pop	rbx
	pop	rsi
	pop	rdi
	ret
000000000045CF47                      66 0F 1F 84 00 00 00 00 00        f........

l000000000045CF50:
	mov	rax,[rcx]
	call	qword ptr [rax+38h]
	test	rax,rax
	jg	45CF06h

l000000000045CF5B:
	jmp	45CF35h
000000000045CF5D                                        0F 1F 00              ...

l000000000045CF60:
	mov	rax,[rbx]
	mov	rcx,rbx
	add	rcx,[rax-18h]
	mov	edx,[rcx+20h]
	or	edx,2h
	call	46EB40h
	mov	rax,[rbx+8h]
	jmp	45CF3Fh
000000000045CF7B                                  48 83 EA 01 48            H...H
000000000045CF80 89 C1 75 1B E8 B7 88 01 00 48 8B 03 48 03 58 E8 ..u......H..H.X.
000000000045CF90 83 4B 20 01 F6 43 1C 01 74 3C E8 C1 90 01 00 E8 .K ..C..t<......
000000000045CFA0 9C 88 01 00 48 8B 03 48 89 DF 48 03 78 E8 83 4F ....H..H..H.x..O
000000000045CFB0 20 01 F6 47 1C 01 75 23 E8 B3 8A 01 00 48 8B 43  ..G..u#.....H.C
000000000045CFC0 08 E9 79 FF FF FF 48 89 C3 E8 A2 8A 01 00 48 89 ..y...H.......H.
000000000045CFD0 D9 E8 DA 45 FB FF E8 85 90 01 00 E8 80 90 01 00 ...E............
000000000045CFE0 48 89 C3 E8 88 8A 01 00 48 89 D9 E8 C0 45 FB FF H.......H....E..
000000000045CFF0 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 ................

;; fn000000000045D000: 000000000045D000
fn000000000045D000 proc
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,20h
	lea	rsi,[rcx+10h]
	mov	rbx,rcx
	mov	rdi,rdx
	mov	rcx,rsi
	call	46D320h
	xor	eax,eax
	mov	qword ptr [rbx+0E8h],+0h
	mov	byte ptr [rbx+0F2h],0h
	mov	[rbx+0F0h],ax
	lea	rax,[0000000000496918]                                 ; [rip+000398DD]
	mov	qword ptr [rbx+0F8h],+0h
	mov	qword ptr [rbx+100h],+0h
	mov	qword ptr [rbx+108h],+0h
	mov	rdx,rdi
	mov	[rbx],rax
	lea	rax,[0000000000496940]                                 ; [rip+000398D7]
	mov	qword ptr [rbx+110h],+0h
	mov	qword ptr [rbx+8h],+0h
	mov	rcx,rsi
	mov	[rbx+10h],rax
	call	46EAE0h
	nop
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	ret
000000000045D091    48 89 C7 48 8B 05 95 4D 03 00 48 89 F1 48 8D  H..H...M..H..H.
000000000045D0A0 50 10 48 89 53 10 E8 25 03 01 00 48 89 F9 E8 FD P.H.S..%...H....
000000000045D0B0 44 FB FF 90 90 90 90 90 90 90 90 90 90 90 90 90 D...............

;; fn000000000045D0C0: 000000000045D0C0
fn000000000045D0C0 proc
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,20h
	lea	rsi,[rcx+10h]
	mov	rbx,rcx
	mov	rcx,rsi
	call	46D320h
	xor	eax,eax
	mov	qword ptr [rbx+0E8h],+0h
	mov	byte ptr [rbx+0F2h],0h
	mov	[rbx+0F0h],ax
	lea	rax,[0000000000496918]                                 ; [rip+00039820]
	mov	qword ptr [rbx+0F8h],+0h
	mov	qword ptr [rbx+100h],+0h
	mov	qword ptr [rbx+108h],+0h
	xor	edx,edx
	mov	[rbx],rax
	lea	rax,[0000000000496940]                                 ; [rip+0003981B]
	mov	qword ptr [rbx+110h],+0h
	mov	qword ptr [rbx+8h],+0h
	mov	rcx,rsi
	mov	[rbx+10h],rax
	call	46EAE0h
	nop
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	ret
000000000045D14D                                        48 89 C7              H..
000000000045D150 48 8B 05 D9 4C 03 00 48 89 F1 48 8D 50 10 48 89 H...L..H..H.P.H.
000000000045D160 53 10 E8 69 02 01 00 48 89 F9 E8 41 44 FB FF 90 S..i...H...AD...

;; fn000000000045D170: 000000000045D170
fn000000000045D170 proc
	mov	rax,[rdx]
	mov	[rcx],rax
	mov	r9,[rdx+8h]
	mov	rdx,[rax-18h]
	mov	[rcx+rdx],r9
	mov	qword ptr [rcx+8h],+0h
	mov	rdx,r8
	add	rcx,[rax-18h]
	jmp	46EAE0h
000000000045D196                   90 90 90 90 90 90 90 90 90 90       ..........

;; fn000000000045D1A0: 000000000045D1A0
fn000000000045D1A0 proc
	mov	rax,[rdx]
	mov	[rcx],rax
	mov	r8,[rdx+8h]
	mov	rdx,[rax-18h]
	mov	[rcx+rdx],r8
	mov	qword ptr [rcx+8h],+0h
	xor	edx,edx
	add	rcx,[rax-18h]
	jmp	46EAE0h
000000000045D1C5                90 90 90 90 90 90 90 90 90 90 90      ...........

;; fn000000000045D1D0: 000000000045D1D0
fn000000000045D1D0 proc
	push	rbx
	sub	rsp,20h
	lea	rax,[0000000000496918]                                 ; [rip+0003973C]
	mov	rbx,rcx
	mov	qword ptr [rcx+8h],+0h
	lea	rcx,[rcx+10h]
	mov	[rcx-10h],rax
	mov	rax,[0000000000491E30]                                 ; [rip+00034C3A]
	add	rax,10h
	mov	[rcx],rax
	call	46D3D0h
	mov	rcx,rbx
	add	rsp,20h
	pop	rbx
	jmp	475550h
000000000045D20F                                              90                .

;; fn000000000045D210: 000000000045D210
fn000000000045D210 proc
	lea	rax,[0000000000496918]                                 ; [rip+00039701]
	mov	qword ptr [rcx+8h],+0h
	add	rcx,10h
	mov	[rcx-10h],rax
	mov	rax,[0000000000491E30]                                 ; [rip+00034C02]
	add	rax,10h
	mov	[rcx],rax
	jmp	46D3D0h
000000000045D23A                               90 90 90 90 90 90           ......

;; fn000000000045D240: 000000000045D240
fn000000000045D240 proc
	mov	rax,[rdx]
	mov	[rcx],rax
	mov	rax,[rax-18h]
	mov	rdx,[rdx+8h]
	mov	[rcx+rax],rdx
	ret
000000000045D253          90 90 90 90 90 90 90 90 90 90 90 90 90    .............

;; fn000000000045D260: 000000000045D260
fn000000000045D260 proc
	jmp	rdx
000000000045D263          90 90 90 90 90 90 90 90 90 90 90 90 90    .............

;; fn000000000045D270: 000000000045D270
fn000000000045D270 proc
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
000000000045D28A                               90 90 90 90 90 90           ......

;; fn000000000045D290: 000000000045D290
fn000000000045D290 proc
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
000000000045D2AA                               90 90 90 90 90 90           ......

;; fn000000000045D2B0: 000000000045D2B0
fn000000000045D2B0 proc
	push	rsi
	push	rbx
	sub	rsp,38h
	xor	r8d,r8d
	mov	rbx,rcx
	lea	rcx,[rsp+2Eh]
	mov	rsi,rdx
	mov	rdx,rbx
	call	45C740h
	test	rsi,rsi
	jz	45D321h

l000000000045D2D1:
	cmp	byte ptr [rsp+2Eh],0h
	jz	45D321h

l000000000045D2D8:
	mov	rax,[rbx]
	lea	r8,[rsp+2Fh]
	mov	rdx,rsi
	mov	rax,[rax-18h]
	mov	rcx,[rbx+rax+0E8h]
	call	471150h
	test	rax,rax
	jz	45D330h

l000000000045D2F9:
	cmp	byte ptr [rsp+2Fh],0h
	jz	45D317h

l000000000045D300:
	mov	edx,2h

l000000000045D305:
	mov	rax,[rbx]
	mov	rcx,rbx
	add	rcx,[rax-18h]
	or	edx,[rcx+20h]
	call	46EB40h

l000000000045D317:
	mov	rax,rbx
	add	rsp,38h
	pop	rbx
	pop	rsi
	ret

l000000000045D321:
	test	rsi,rsi
	jnz	45D317h

l000000000045D326:
	mov	edx,4h
	jmp	45D305h
000000000045D32D                                        0F 1F 00              ...

l000000000045D330:
	cmp	byte ptr [rsp+2Fh],1h
	sbb	edx,edx
	and	edx,0FEh
	add	edx,6h
	jmp	45D305h
000000000045D33F                                              48                H
000000000045D340 83 EA 01 48 89 C1 75 1B E8 F3 84 01 00 48 8B 03 ...H..u......H..
000000000045D350 48 03 58 E8 83 4B 20 04 F6 43 1C 04 74 35 E8 FD H.X..K ..C..t5..
000000000045D360 8C 01 00 E8 D8 84 01 00 48 8B 03 48 89 DE 48 03 ........H..H..H.
000000000045D370 70 E8 83 4E 20 04 F6 46 1C 04 75 1C E8 EF 86 01 p..N ..F..u.....
000000000045D380 00 EB 94 48 89 C3 E8 E5 86 01 00 48 89 D9 E8 1D ...H.......H....
000000000045D390 42 FB FF E8 C8 8C 01 00 E8 C3 8C 01 00 48 89 C3 B............H..
000000000045D3A0 E8 CB 86 01 00 48 89 D9 E8 03 42 FB FF 90 90 90 .....H....B.....

;; fn000000000045D3B0: 000000000045D3B0
fn000000000045D3B0 proc
	jmp	45A4D0h
000000000045D3B5                90 90 90 90 90 90 90 90 90 90 90      ...........

;; fn000000000045D3C0: 000000000045D3C0
fn000000000045D3C0 proc
	jmp	45A620h
000000000045D3C5                90 90 90 90 90 90 90 90 90 90 90      ...........

;; fn000000000045D3D0: 000000000045D3D0
fn000000000045D3D0 proc
	jmp	45A770h
000000000045D3D5                90 90 90 90 90 90 90 90 90 90 90      ...........

;; fn000000000045D3E0: 000000000045D3E0
fn000000000045D3E0 proc
	jmp	45A8C0h
000000000045D3E5                90 90 90 90 90 90 90 90 90 90 90      ...........

;; fn000000000045D3F0: 000000000045D3F0
fn000000000045D3F0 proc
	jmp	45AA10h
000000000045D3F5                90 90 90 90 90 90 90 90 90 90 90      ...........

;; fn000000000045D400: 000000000045D400
fn000000000045D400 proc
	push	rsi
	push	rbx
	sub	rsp,+88h
	xor	r8d,r8d
	mov	rbx,rcx
	lea	rcx,[rsp+77h]
	mov	rsi,rdx
	mov	rdx,rbx
	call	45C740h
	cmp	byte ptr [rsp+77h],0h
	jz	45D4B3h

l000000000045D42A:
	mov	rax,[rbx]
	mov	r8,rbx
	mov	dword ptr [rsp+78h],0h
	add	r8,[rax-18h]
	mov	rax,[r8+100h]
	test	rax,rax
	jz	45D4DFh

l000000000045D44C:
	mov	rdx,[r8+0E8h]
	mov	qword ptr [rsp+58h],+0FFFFh
	lea	rcx,[rsp+60h]
	mov	qword ptr [rsp+40h],+0h
	mov	qword ptr [rsp+48h],+0FFFFh
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

l000000000045D4AB:
	mov	edx,[rsp+78h]
	test	edx,edx
	jnz	45D4C0h

l000000000045D4B3:
	mov	rax,rbx
	add	rsp,+88h
	pop	rbx
	pop	rsi
	ret

l000000000045D4C0:
	mov	rax,[rbx]
	mov	rcx,rbx
	add	rcx,[rax-18h]
	or	edx,[rcx+20h]
	call	46EB40h
	mov	rax,rbx
	add	rsp,+88h
	pop	rbx
	pop	rsi
	ret

l000000000045D4DF:
	call	470820h
	sub	rdx,1h
	mov	rcx,rax
	jnz	45D508h

l000000000045D4ED:
	call	475840h
	mov	rax,[rbx]
	add	rbx,[rax-18h]
	or	dword ptr [rbx+20h],1h
	test	byte ptr [rbx+1Ch],1h
	jz	45D538h

l000000000045D503:
	call	476060h

l000000000045D508:
	call	475840h
	mov	rax,[rbx]
	mov	rsi,rbx
	add	rsi,[rax-18h]
	or	dword ptr [rsi+20h],1h
	test	byte ptr [rsi+1Ch],1h
	jnz	45D53Dh

l000000000045D521:
	call	475A70h
	jmp	45D4ABh
000000000045D528                         48 89 C3 E8 40 85 01 00         H...@...
000000000045D530 48 89 D9 E8 78 40 FB FF                         H...x@..       

l000000000045D538:
	call	476060h

l000000000045D53D:
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

;; fn000000000045D560: 000000000045D560
;;   Called from:
;;     000000000045D55F (in fn000000000045D400)
fn000000000045D560 proc
	jmp	45AB60h
000000000045D565                90 90 90 90 90 90 90 90 90 90 90      ...........

;; fn000000000045D570: 000000000045D570
fn000000000045D570 proc
	jmp	45ACB0h
000000000045D575                90 90 90 90 90 90 90 90 90 90 90      ...........

;; fn000000000045D580: 000000000045D580
fn000000000045D580 proc
	jmp	45AE00h
000000000045D585                90 90 90 90 90 90 90 90 90 90 90      ...........

;; fn000000000045D590: 000000000045D590
fn000000000045D590 proc
	push	rsi
	push	rbx
	sub	rsp,+88h
	xor	r8d,r8d
	mov	rbx,rcx
	lea	rcx,[rsp+77h]
	mov	rsi,rdx
	mov	rdx,rbx
	call	45C740h
	cmp	byte ptr [rsp+77h],0h
	jz	45D657h

l000000000045D5BA:
	mov	rax,[rbx]
	mov	r8,rbx
	mov	dword ptr [rsp+78h],0h
	add	r8,[rax-18h]
	mov	rax,[r8+100h]
	test	rax,rax
	jz	45D6ACh

l000000000045D5DC:
	mov	rdx,[r8+0E8h]
	mov	qword ptr [rsp+58h],+0FFFFh
	lea	rcx,[rsp+60h]
	mov	qword ptr [rsp+40h],+0h
	mov	qword ptr [rsp+48h],+0FFFFh
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
	jge	45D664h

l000000000045D640:
	mov	eax,[rsp+78h]
	mov	ecx,0FFFF8000h
	mov	[rsi],cx
	or	eax,4h
	mov	[rsp+78h],eax

l000000000045D653:
	test	eax,eax
	jnz	45D682h

l000000000045D657:
	mov	rax,rbx
	add	rsp,+88h
	pop	rbx
	pop	rsi
	ret

l000000000045D664:
	cmp	eax,7FFFh
	jle	45D6A3h

l000000000045D66B:
	mov	eax,[rsp+78h]
	mov	edx,7FFFh
	mov	[rsi],dx
	or	eax,4h
	test	eax,eax
	mov	[rsp+78h],eax
	jz	45D657h

l000000000045D682:
	mov	rdx,[rbx]
	mov	rcx,rbx
	add	rcx,[rdx-18h]
	or	eax,[rcx+20h]
	mov	edx,eax
	call	46EB40h
	mov	rax,rbx
	add	rsp,+88h
	pop	rbx
	pop	rsi
	ret

l000000000045D6A3:
	mov	[rsi],ax
	mov	eax,[rsp+78h]
	jmp	45D653h

l000000000045D6AC:
	call	470820h
	sub	rdx,1h
	mov	rcx,rax
	jnz	45D6D5h

l000000000045D6BA:
	call	475840h
	mov	rax,[rbx]
	add	rbx,[rax-18h]
	or	dword ptr [rbx+20h],1h
	test	byte ptr [rbx+1Ch],1h
	jz	45D70Ch

l000000000045D6D0:
	call	476060h

l000000000045D6D5:
	call	475840h
	mov	rax,[rbx]
	mov	rsi,rbx
	add	rsi,[rax-18h]
	or	dword ptr [rsi+20h],1h
	test	byte ptr [rsi+1Ch],1h
	jnz	45D711h

l000000000045D6EE:
	call	475A70h
	mov	eax,[rsp+78h]
	jmp	45D653h
000000000045D6FC                                     48 89 C3 E8             H...
000000000045D700 6C 83 01 00 48 89 D9 E8 A4 3E FB FF             l...H....>..   

l000000000045D70C:
	call	476060h

l000000000045D711:
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

;; fn000000000045D730: 000000000045D730
;;   Called from:
;;     000000000045D72F (in fn000000000045D590)
fn000000000045D730 proc
	jmp	45AF50h
000000000045D735                90 90 90 90 90 90 90 90 90 90 90      ...........

;; fn000000000045D740: 000000000045D740
fn000000000045D740 proc
	jmp	45B0A0h
000000000045D745                90 90 90 90 90 90 90 90 90 90 90      ...........

;; fn000000000045D750: 000000000045D750
fn000000000045D750 proc
	jmp	45B1F0h
000000000045D755                90 90 90 90 90 90 90 90 90 90 90      ...........

;; fn000000000045D760: 000000000045D760
;;   Called from:
;;     0000000000471ADD (in fn0000000000471AB0)
;;     0000000000471B12 (in fn0000000000471B10)
fn000000000045D760 proc
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,38h
	lea	rdi,[rsp+20h]
	mov	rsi,rcx
	mov	ebx,edx
	mov	ebp,edx
	mov	rdx,rcx
	mov	rcx,rdi
	call	45DD70h
	cmp	byte ptr [rsp+20h],0h
	jz	45D7B5h

l000000000045D786:
	mov	rax,[rsi]
	mov	rax,[rax-18h]
	mov	rcx,[rsi+rax+0E8h]
	mov	r8,[rcx+28h]
	cmp	r8,[rcx+30h]
	jnc	45D843h

l000000000045D7A3:
	mov	[r8],bx
	add	r8,2h
	mov	[rcx+28h],r8

l000000000045D7AF:
	cmp	bp,0FFh
	jz	45D800h

l000000000045D7B5:
	mov	r8,[rsp+28h]
	mov	rax,[r8]
	mov	rbx,r8
	add	rbx,[rax-18h]
	test	byte ptr [rbx+19h],20h
	jz	45D7EAh

l000000000045D7CA:
	call	470A80h
	test	al,al
	jnz	45D7EAh

l000000000045D7D3:
	mov	rcx,[rbx+0E8h]
	test	rcx,rcx
	jz	45D7EAh

l000000000045D7DF:
	mov	rax,[rcx]
	call	qword ptr [rax+30h]
	cmp	eax,0FFh
	jz	45D820h

l000000000045D7EA:
	mov	rax,rsi
	add	rsp,38h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
000000000045D7F6                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l000000000045D800:
	mov	rax,[rsi]
	mov	rcx,rsi
	add	rcx,[rax-18h]
	mov	edx,[rcx+20h]
	or	edx,1h
	call	46EB40h
	jmp	45D7B5h
000000000045D817                      66 0F 1F 84 00 00 00 00 00        f........

l000000000045D820:
	mov	rcx,[rsp+28h]
	mov	rax,[rcx]
	add	rcx,[rax-18h]
	mov	edx,[rcx+20h]
	or	edx,1h
	call	46EB40h
	mov	rax,rsi
	add	rsp,38h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret

l000000000045D843:
	mov	rax,[rcx]
	movzx	edx,bx
	call	qword ptr [rax+68h]
	mov	ebp,eax
	jmp	45D7AFh
000000000045D853          48 89 C3 48 89 F9 E8 F2 05 00 00 48 89    H..H.......H.
000000000045D860 D9 E8 4A 3D FB FF 48 83 EA 01 48 89 C1 75 1B E8 ..J=..H...H..u..
000000000045D870 CC 7F 01 00 48 8B 06 48 03 70 E8 83 4E 20 01 F6 ....H..H.p..N ..
000000000045D880 46 1C 01 74 32 E8 D6 87 01 00 E8 B1 7F 01 00 48 F..t2..........H
000000000045D890 8B 06 48 89 F2 48 03 50 E8 83 4A 20 01 F6 42 1C ..H..H.P..J ..B.
000000000045D8A0 01 75 19 E8 C8 81 01 00 E9 08 FF FF FF 48 89 C3 .u...........H..
000000000045D8B0 E8 BB 81 01 00 EB 9F E8 A4 87 01 00 E8 9F 87 01 ................
000000000045D8C0 00 48 89 C3 E8 A7 81 01 00 EB 8B 90 90 90 90 90 .H..............

;; fn000000000045D8D0: 000000000045D8D0
;;   Called from:
;;     000000000045C778 (in fn000000000045C740)
;;     000000000045C908 (in fn000000000045C8D0)
;;     000000000045DDA3 (in fn000000000045DD70)
;;     000000000045DE13 (in fn000000000045DDE0)
;;     000000000046D16B (in fn000000000046D120)
;;     000000000046D177 (in fn000000000046D120)
;;     000000000046D183 (in fn000000000046D120)
;;     0000000000471AEA (in fn0000000000471AB0)
;;     0000000000471B50 (in fn0000000000471B50)
fn000000000045D8D0 proc
	push	rbx
	sub	rsp,20h
	mov	rax,[rcx]
	mov	rbx,rcx
	mov	rax,[rax-18h]
	mov	rcx,[rcx+rax+0E8h]
	test	rcx,rcx
	jz	45D8F7h

l000000000045D8EC:
	mov	rax,[rcx]
	call	qword ptr [rax+30h]
	cmp	eax,0FFh
	jz	45D900h

l000000000045D8F7:
	mov	rax,rbx
	add	rsp,20h
	pop	rbx
	ret

l000000000045D900:
	mov	rax,[rbx]
	mov	rcx,rbx
	add	rcx,[rax-18h]
	mov	edx,[rcx+20h]
	or	edx,1h
	call	46EB40h
	mov	rax,rbx
	add	rsp,20h
	pop	rbx
	ret
000000000045D91E                                           48 83               H.
000000000045D920 EA 01 48 89 C1 75 1B E8 14 7F 01 00 48 8B 03 48 ..H..u......H..H
000000000045D930 03 58 E8 83 4B 20 01 F6 43 1C 01 74 35 E8 1E 87 .X..K ..C..t5...
000000000045D940 01 00 E8 F9 7E 01 00 48 8B 03 48 89 DA 48 03 50 ....~..H..H..H.P
000000000045D950 E8 83 4A 20 01 F6 42 1C 01 75 1C E8 10 81 01 00 ..J ..B..u......
000000000045D960 EB 95 48 89 C3 E8 06 81 01 00 48 89 D9 E8 3E 3C ..H.......H...><
000000000045D970 FB FF E8 E9 86 01 00 E8 E4 86 01 00 48 89 C3 E8 ............H...
000000000045D980 EC 80 01 00 48 89 D9 E8 24 3C FB FF 90 90 90 90 ....H...$<......

;; fn000000000045D990: 000000000045D990
fn000000000045D990 proc
	push	rbx
	sub	rsp,40h
	mov	rax,[rcx]
	mov	r9,[rdx]
	mov	rbx,rcx
	mov	r10,[rdx+8h]
	add	rcx,[rax-18h]
	test	byte ptr [rcx+20h],5h
	jz	45D9B5h

l000000000045D9AC:
	mov	rax,rbx
	add	rsp,40h
	pop	rbx
	ret

l000000000045D9B5:
	mov	rdx,[rcx+0E8h]
	lea	r8,[rsp+20h]
	mov	[rsp+20h],r9
	lea	rcx,[rsp+30h]
	mov	[rsp+28h],r10
	mov	r9d,10h
	mov	rax,[rdx]
	call	qword ptr [rax+28h]
	cmp	qword ptr [rsp+30h],0FFh
	jnz	45D9ACh

l000000000045D9E4:
	mov	rax,[rbx]
	mov	rcx,rbx
	add	rcx,[rax-18h]
	mov	edx,[rcx+20h]
	or	edx,4h
	call	46EB40h
	jmp	45D9ACh
000000000045D9FB                                  48 83 EA 01 48            H...H
000000000045DA00 89 C1 75 1B E8 37 7E 01 00 48 8B 03 48 03 58 E8 ..u..7~..H..H.X.
000000000045DA10 83 4B 20 01 F6 43 1C 01 74 38 E8 41 86 01 00 E8 .K ..C..t8.A....
000000000045DA20 1C 7E 01 00 48 8B 03 48 89 DA 48 03 50 E8 83 4A .~..H..H..H.P..J
000000000045DA30 20 01 F6 42 1C 01 75 1F E8 33 80 01 00 E9 6A FF  ..B..u..3....j.
000000000045DA40 FF FF 48 89 C3 E8 26 80 01 00 48 89 D9 E8 5E 3B ..H...&...H...^;
000000000045DA50 FB FF E8 09 86 01 00 E8 04 86 01 00 48 89 C3 E8 ............H...
000000000045DA60 0C 80 01 00 48 89 D9 E8 44 3B FB FF 90 90 90 90 ....H...D;......

;; fn000000000045DA70: 000000000045DA70
fn000000000045DA70 proc
	push	rbx
	sub	rsp,40h
	mov	rax,[rcx]
	mov	rbx,rcx
	add	rcx,[rax-18h]
	test	byte ptr [rcx+20h],5h
	jz	45DA90h

l000000000045DA85:
	mov	rax,rbx
	add	rsp,40h
	pop	rbx
	ret
000000000045DA8E                                           66 90               f.

l000000000045DA90:
	mov	rax,[rcx+0E8h]
	mov	r9d,r8d
	lea	rcx,[rsp+30h]
	mov	r8,rdx
	mov	r10,[rax]
	mov	rdx,rax
	mov	dword ptr [rsp+20h],10h
	call	qword ptr [r10+20h]
	cmp	qword ptr [rsp+30h],0FFh
	jnz	45DA85h

l000000000045DABC:
	mov	rax,[rbx]
	mov	rcx,rbx
	add	rcx,[rax-18h]
	mov	edx,[rcx+20h]
	or	edx,4h
	call	46EB40h
	jmp	45DA85h
000000000045DAD3          48 83 EA 01 48 89 C1 75 1B E8 5F 7D 01    H...H..u.._}.
000000000045DAE0 00 48 8B 03 48 03 58 E8 83 4B 20 01 F6 43 1C 01 .H..H.X..K ..C..
000000000045DAF0 74 38 E8 69 85 01 00 E8 44 7D 01 00 48 8B 03 48 t8.i....D}..H..H
000000000045DB00 89 DA 48 03 50 E8 83 4A 20 01 F6 42 1C 01 75 1F ..H.P..J ..B..u.
000000000045DB10 E8 5B 7F 01 00 E9 6B FF FF FF 48 89 C3 E8 4E 7F .[....k...H...N.
000000000045DB20 01 00 48 89 D9 E8 86 3A FB FF E8 31 85 01 00 E8 ..H....:...1....
000000000045DB30 2C 85 01 00 48 89 C3 E8 34 7F 01 00 48 89 D9 E8 ,...H...4...H...
000000000045DB40 6C 3A FB FF 90 90 90 90 90 90 90 90 90 90 90 90 l:..............

;; fn000000000045DB50: 000000000045DB50
fn000000000045DB50 proc
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
	jz	45DB84h

l000000000045DB7A:
	mov	rax,rbx
	add	rsp,48h
	pop	rbx
	pop	rsi
	ret

l000000000045DB84:
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
000000000045DBC0 48 83 EA 01 48 89 C1 75 1B E8 72 7C 01 00 48 8B H...H..u..r|..H.
000000000045DBD0 06 48 03 70 E8 83 4E 20 01 F6 46 1C 01 74 35 E8 .H.p..N ..F..t5.
000000000045DBE0 7C 84 01 00 E8 57 7C 01 00 48 8B 06 48 03 70 E8 |....W|..H..H.p.
000000000045DBF0 83 4E 20 01 F6 46 1C 01 75 1F E8 71 7E 01 00 E9 .N ..F..u..q~...
000000000045DC00 76 FF FF FF 48 89 C3 E8 64 7E 01 00 48 89 D9 E8 v...H...d~..H...
000000000045DC10 9C 39 FB FF E8 47 84 01 00 E8 42 84 01 00 48 89 .9...G....B...H.
000000000045DC20 C3 E8 4A 7E 01 00 48 89 D9 E8 82 39 FB FF 90 90 ..J~..H....9....

;; fn000000000045DC30: 000000000045DC30
fn000000000045DC30 proc
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
	call	45DD70h
	cmp	byte ptr [rsp+20h],0h
	jz	45DC8Dh

l000000000045DC58:
	mov	rax,[rsi]
	mov	r8,rbx
	mov	rdx,rbp
	mov	rax,[rax-18h]
	mov	rcx,[rsi+rax+0E8h]
	mov	rax,[rcx]
	call	qword ptr [rax+60h]
	cmp	rbx,rax
	jz	45DC8Dh

l000000000045DC78:
	mov	rax,[rsi]
	mov	rcx,rsi
	add	rcx,[rax-18h]
	mov	edx,[rcx+20h]
	or	edx,1h
	call	46EB40h

l000000000045DC8D:
	mov	r8,[rsp+28h]
	mov	rax,[r8]
	mov	rbx,r8
	add	rbx,[rax-18h]
	test	byte ptr [rbx+19h],20h
	jz	45DCC2h

l000000000045DCA2:
	call	470A80h
	test	al,al
	jnz	45DCC2h

l000000000045DCAB:
	mov	rcx,[rbx+0E8h]
	test	rcx,rcx
	jz	45DCC2h

l000000000045DCB7:
	mov	rax,[rcx]
	call	qword ptr [rax+30h]
	cmp	eax,0FFh
	jz	45DCD0h

l000000000045DCC2:
	mov	rax,rsi
	add	rsp,38h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
000000000045DCCE                                           66 90               f.

l000000000045DCD0:
	mov	rcx,[rsp+28h]
	mov	rax,[rcx]
	add	rcx,[rax-18h]
	mov	edx,[rcx+20h]
	or	edx,1h
	call	46EB40h
	mov	rax,rsi
	add	rsp,38h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
000000000045DCF3          48 83 EA 01 48 89 C1 75 1B E8 3F 7B 01    H...H..u..?{.
000000000045DD00 00 48 8B 06 48 03 70 E8 83 4E 20 01 F6 46 1C 01 .H..H.p..N ..F..
000000000045DD10 74 40 E8 49 83 01 00 E8 24 7B 01 00 48 8B 06 48 t@.I....${..H..H
000000000045DD20 89 F2 48 03 50 E8 83 4A 20 01 F6 42 1C 01 75 2C ..H.P..J ..B..u,
000000000045DD30 E8 3B 7D 01 00 E9 53 FF FF FF 48 89 C3 E8 2E 7D .;}...S...H....}
000000000045DD40 01 00 48 89 F9 E8 06 01 00 00 48 89 D9 E8 5E 38 ..H.......H...^8
000000000045DD50 FB FF E8 09 83 01 00 48 89 C3 EB E6 E8 FF 82 01 .......H........
000000000045DD60 00 48 89 C3 E8 07 7D 01 00 EB D7 90 90 90 90 90 .H....}.........

;; fn000000000045DD70: 000000000045DD70
;;   Called from:
;;     000000000045D77A (in fn000000000045D760)
;;     000000000045DC4C (in fn000000000045DC30)
;;     000000000045DF7B (in fn000000000045DF60)
;;     000000000045E15A (in fn000000000045E140)
;;     000000000045E33F (in fn000000000045E320)
;;     000000000045E50F (in fn000000000045E4F0)
;;     000000000045E6FB (in fn000000000045E6E0)
;;     000000000045E8DB (in fn000000000045E8C0)
;;     000000000045EABB (in fn000000000045EAA0)
;;     000000000045EC9B (in fn000000000045EC80)
;;     000000000045F108 (in fn000000000045F0F0)
;;     00000000004704A4 (in fn0000000000470480)
fn000000000045DD70 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	mov	rax,[rdx]
	mov	rsi,rcx
	mov	byte ptr [rcx],0h
	mov	rcx,rdx
	mov	[rsi+8h],rdx
	mov	rbx,rdx
	add	rcx,[rax-18h]
	mov	rax,rcx
	mov	rcx,[rcx+0D8h]
	test	rcx,rcx
	jz	45DDB2h

l000000000045DD9C:
	mov	edx,[rax+20h]
	test	edx,edx
	jnz	45DDC3h

l000000000045DDA3:
	call	45D8D0h
	mov	rax,[rbx]
	add	rbx,[rax-18h]
	mov	rax,rbx

l000000000045DDB2:
	mov	edx,[rax+20h]
	test	edx,edx
	jnz	45DDC3h

l000000000045DDB9:
	mov	byte ptr [rsi],1h
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret

l000000000045DDC3:
	or	edx,4h
	mov	rcx,rax
	add	rsp,28h
	pop	rbx
	pop	rsi
	jmp	46EB40h
000000000045DDD4             90 90 90 90 90 90 90 90 90 90 90 90     ............

;; fn000000000045DDE0: 000000000045DDE0
fn000000000045DDE0 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	mov	rax,[rdx]
	mov	rsi,rcx
	mov	byte ptr [rcx],0h
	mov	rcx,rdx
	mov	[rsi+8h],rdx
	mov	rbx,rdx
	add	rcx,[rax-18h]
	mov	rax,rcx
	mov	rcx,[rcx+0D8h]
	test	rcx,rcx
	jz	45DE22h

l000000000045DE0C:
	mov	edx,[rax+20h]
	test	edx,edx
	jnz	45DE33h

l000000000045DE13:
	call	45D8D0h
	mov	rax,[rbx]
	add	rbx,[rax-18h]
	mov	rax,rbx

l000000000045DE22:
	mov	edx,[rax+20h]
	test	edx,edx
	jnz	45DE33h

l000000000045DE29:
	mov	byte ptr [rsi],1h
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret

l000000000045DE33:
	or	edx,4h
	mov	rcx,rax
	add	rsp,28h
	pop	rbx
	pop	rsi
	jmp	46EB40h
000000000045DE44             90 90 90 90 90 90 90 90 90 90 90 90     ............

;; fn000000000045DE50: 000000000045DE50
;;   Called from:
;;     000000000045E0ED (in fn000000000045DF60)
;;     000000000045E2CD (in fn000000000045E140)
;;     000000000045E4A1 (in fn000000000045E320)
;;     000000000045E68E (in fn000000000045E4F0)
;;     000000000045E86D (in fn000000000045E6E0)
;;     000000000045EA4D (in fn000000000045E8C0)
;;     000000000045EC2D (in fn000000000045EAA0)
;;     000000000045EE0D (in fn000000000045EC80)
;;     00000000004707D0 (in fn0000000000470480)
fn000000000045DE50 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	mov	rax,[rcx+8h]
	mov	rdx,[rax]
	add	rax,[rdx-18h]
	test	byte ptr [rax+19h],20h
	mov	rbx,rax
	jz	45DE8Dh

l000000000045DE6A:
	mov	rsi,rcx
	call	470A80h
	test	al,al
	jnz	45DE8Dh

l000000000045DE76:
	mov	rcx,[rbx+0E8h]
	test	rcx,rcx
	jz	45DE8Dh

l000000000045DE82:
	mov	rax,[rcx]
	call	qword ptr [rax+30h]
	cmp	eax,0FFh
	jz	45DE94h

l000000000045DE8D:
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret

l000000000045DE94:
	mov	rcx,[rsi+8h]
	mov	rax,[rcx]
	add	rcx,[rax-18h]
	mov	edx,[rcx+20h]
	or	edx,1h
	add	rsp,28h
	pop	rbx
	pop	rsi
	jmp	46EB40h

;; fn000000000045DEB0: 000000000045DEB0
fn000000000045DEB0 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	mov	rax,[rcx+8h]
	mov	rdx,[rax]
	add	rax,[rdx-18h]
	test	byte ptr [rax+19h],20h
	mov	rbx,rax
	jz	45DEEDh

l000000000045DECA:
	mov	rsi,rcx
	call	470A80h
	test	al,al
	jnz	45DEEDh

l000000000045DED6:
	mov	rcx,[rbx+0E8h]
	test	rcx,rcx
	jz	45DEEDh

l000000000045DEE2:
	mov	rax,[rcx]
	call	qword ptr [rax+30h]
	cmp	eax,0FFh
	jz	45DEF4h

l000000000045DEED:
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret

l000000000045DEF4:
	mov	rcx,[rsi+8h]
	mov	rax,[rcx]
	add	rcx,[rax-18h]
	mov	edx,[rcx+20h]
	or	edx,1h
	add	rsp,28h
	pop	rbx
	pop	rsi
	jmp	46EB40h

;; fn000000000045DF10: 000000000045DF10
fn000000000045DF10 proc
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
	jz	45DF51h

l000000000045DF36:
	mov	rax,[rbx]
	add	rbx,[rax-18h]
	mov	edx,[rbx+20h]
	mov	rcx,rbx
	or	edx,1h
	add	rsp,28h
	pop	rbx
	pop	rsi
	jmp	46EB40h

l000000000045DF51:
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret
000000000045DF58                         90 90 90 90 90 90 90 90         ........

;; fn000000000045DF60: 000000000045DF60
;;   Called from:
;;     000000000045F0E0 (in fn000000000045F0E0)
fn000000000045DF60 proc
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,60h
	lea	rbp,[rsp+50h]
	mov	rsi,rcx
	mov	r12,rdx
	mov	rdx,rcx
	mov	rcx,rbp
	call	45DD70h
	cmp	byte ptr [rsp+50h],0h
	jz	45E016h

l000000000045DF8B:
	mov	rax,[rsi]
	mov	rbx,rsi
	add	rbx,[rax-18h]
	mov	rdi,[rbx+0F8h]
	test	rdi,rdi
	jz	45E0B9h

l000000000045DFA5:
	cmp	byte ptr [rbx+0E2h],0h
	jz	45E060h

l000000000045DFB2:
	movzx	eax,word ptr [rbx+0E0h]
	mov	r9,rbx

l000000000045DFBC:
	mov	rdx,[r9+0E8h]
	mov	r8d,0h
	movzx	eax,ax
	lea	rcx,[rsp+40h]
	test	rdx,rdx
	mov	[rsp+30h],rdx
	mov	rdx,rdi
	setz	r8b
	mov	[rsp+38h],r8
	mov	r10,[rdi]
	lea	r8,[rsp+30h]
	mov	[rsp+28h],r12
	mov	[rsp+20h],eax
	call	qword ptr [r10+48h]
	cmp	byte ptr [rsp+48h],0h
	jz	45E016h

l000000000045E001:
	mov	rax,[rsi]
	mov	rcx,rsi
	add	rcx,[rax-18h]
	mov	edx,[rcx+20h]
	or	edx,1h
	call	46EB40h

l000000000045E016:
	mov	rax,[rsp+58h]
	mov	rdx,[rax]
	add	rax,[rdx-18h]
	test	byte ptr [rax+19h],20h
	mov	rbx,rax
	jz	45E04Bh

l000000000045E02B:
	call	470A80h
	test	al,al
	jnz	45E04Bh

l000000000045E034:
	mov	rcx,[rbx+0E8h]
	test	rcx,rcx
	jz	45E04Bh

l000000000045E040:
	mov	rax,[rcx]
	call	qword ptr [rax+30h]
	cmp	eax,0FFh
	jz	45E094h

l000000000045E04B:
	mov	rax,rsi
	add	rsp,60h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
000000000045E059                            0F 1F 80 00 00 00 00          .......

l000000000045E060:
	mov	rcx,[rbx+0F0h]
	test	rcx,rcx
	jz	45E0E2h

l000000000045E06C:
	mov	rax,[rcx]
	mov	edx,20h
	call	qword ptr [rax+50h]
	mov	rdx,[rsi]
	mov	r9,rsi
	mov	[rbx+0E0h],ax
	mov	byte ptr [rbx+0E2h],1h
	add	r9,[rdx-18h]
	jmp	45DFBCh

l000000000045E094:
	mov	rcx,[rsp+58h]
	mov	rax,[rcx]
	add	rcx,[rax-18h]
	mov	edx,[rcx+20h]
	or	edx,1h
	call	46EB40h
	mov	rax,rsi
	add	rsp,60h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret

l000000000045E0B9:
	call	470820h
	sub	rdx,1h
	mov	rcx,rax
	jnz	45E109h

l000000000045E0C7:
	call	475840h
	mov	rax,[rsi]
	add	rsi,[rax-18h]
	or	dword ptr [rsi+20h],1h
	test	byte ptr [rsi+1Ch],1h
	jz	45E104h

l000000000045E0DD:
	call	476060h

l000000000045E0E2:
	call	470820h
	mov	rbx,rax

l000000000045E0EA:
	mov	rcx,rbp
	call	45DE50h
	mov	rcx,rbx
	call	4115B0h
	mov	rbx,rax
	call	475A70h
	jmp	45E0EAh

l000000000045E104:
	call	476060h

l000000000045E109:
	call	475840h
	mov	rax,[rsi]
	mov	rdi,rsi
	add	rdi,[rax-18h]
	or	dword ptr [rdi+20h],1h
	test	byte ptr [rdi+1Ch],1h
	jnz	45E12Ch

l000000000045E122:
	call	475A70h
	jmp	45E016h

l000000000045E12C:
	call	476060h
	mov	rbx,rax
	call	475A70h
	jmp	45E0EAh
000000000045E13B                                  90 90 90 90 90            .....

;; fn000000000045E140: 000000000045E140
;;   Called from:
;;     000000000045F243 (in fn000000000045F240)
fn000000000045E140 proc
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,60h
	lea	r12,[rsp+50h]
	mov	rsi,rcx
	mov	edi,edx
	mov	rdx,rcx
	mov	rcx,r12
	call	45DD70h
	cmp	byte ptr [rsp+50h],0h
	jz	45E1F7h

l000000000045E16A:
	mov	rax,[rsi]
	mov	rbx,rsi
	add	rbx,[rax-18h]
	mov	rbp,[rbx+0F8h]
	test	rbp,rbp
	jz	45E299h

l000000000045E184:
	cmp	byte ptr [rbx+0E2h],0h
	jz	45E240h

l000000000045E191:
	movzx	eax,word ptr [rbx+0E0h]
	mov	r9,rbx

l000000000045E19B:
	mov	r8,[r9+0E8h]
	mov	edx,0h
	movzx	edi,dil
	movzx	eax,ax
	lea	rcx,[rsp+40h]
	test	r8,r8
	mov	[rsp+30h],r8
	lea	r8,[rsp+30h]
	setz	dl
	mov	[rsp+38h],rdx
	mov	r10,[rbp+0h]
	mov	rdx,rbp
	mov	[rsp+28h],edi
	mov	[rsp+20h],eax
	call	qword ptr [r10+10h]
	cmp	byte ptr [rsp+48h],0h
	jz	45E1F7h

l000000000045E1E2:
	mov	rax,[rsi]
	mov	rcx,rsi
	add	rcx,[rax-18h]
	mov	edx,[rcx+20h]
	or	edx,1h
	call	46EB40h

l000000000045E1F7:
	mov	rax,[rsp+58h]
	mov	rdx,[rax]
	add	rax,[rdx-18h]
	test	byte ptr [rax+19h],20h
	mov	rbx,rax
	jz	45E22Ch

l000000000045E20C:
	call	470A80h
	test	al,al
	jnz	45E22Ch

l000000000045E215:
	mov	rcx,[rbx+0E8h]
	test	rcx,rcx
	jz	45E22Ch

l000000000045E221:
	mov	rax,[rcx]
	call	qword ptr [rax+30h]
	cmp	eax,0FFh
	jz	45E274h

l000000000045E22C:
	mov	rax,rsi
	add	rsp,60h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
000000000045E23A                               66 0F 1F 44 00 00           f..D..

l000000000045E240:
	mov	rcx,[rbx+0F0h]
	test	rcx,rcx
	jz	45E2C2h

l000000000045E24C:
	mov	rax,[rcx]
	mov	edx,20h
	call	qword ptr [rax+50h]
	mov	rdx,[rsi]
	mov	r9,rsi
	mov	[rbx+0E0h],ax
	mov	byte ptr [rbx+0E2h],1h
	add	r9,[rdx-18h]
	jmp	45E19Bh

l000000000045E274:
	mov	rcx,[rsp+58h]
	mov	rax,[rcx]
	add	rcx,[rax-18h]
	mov	edx,[rcx+20h]
	or	edx,1h
	call	46EB40h
	mov	rax,rsi
	add	rsp,60h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret

l000000000045E299:
	call	470820h
	sub	rdx,1h
	mov	rcx,rax
	jnz	45E2E9h

l000000000045E2A7:
	call	475840h
	mov	rax,[rsi]
	add	rsi,[rax-18h]
	or	dword ptr [rsi+20h],1h
	test	byte ptr [rsi+1Ch],1h
	jz	45E2E4h

l000000000045E2BD:
	call	476060h

l000000000045E2C2:
	call	470820h
	mov	rbx,rax

l000000000045E2CA:
	mov	rcx,r12
	call	45DE50h
	mov	rcx,rbx
	call	4115B0h
	mov	rbx,rax
	call	475A70h
	jmp	45E2CAh

l000000000045E2E4:
	call	476060h

l000000000045E2E9:
	call	475840h
	mov	rax,[rsi]
	mov	rdi,rsi
	add	rdi,[rax-18h]
	or	dword ptr [rdi+20h],1h
	test	byte ptr [rdi+1Ch],1h
	jnz	45E30Ch

l000000000045E302:
	call	475A70h
	jmp	45E1F7h

l000000000045E30C:
	call	476060h
	mov	rbx,rax
	call	475A70h
	jmp	45E2CAh
000000000045E31B                                  90 90 90 90 90            .....

;; fn000000000045E320: 000000000045E320
;;   Called from:
;;     000000000045F250 (in fn000000000045F250)
;;     000000000045F284 (in fn000000000045F280)
fn000000000045E320 proc
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,78h
	movaps	[rsp+60h],xmm6
	lea	rbp,[rsp+50h]
	mov	rdx,rcx
	mov	rsi,rcx
	movapd	xmm6,xmm1
	mov	rcx,rbp
	call	45DD70h
	cmp	byte ptr [rsp+50h],0h
	jz	45E3D9h

l000000000045E34F:
	mov	rax,[rsi]
	mov	rbx,rsi
	add	rbx,[rax-18h]
	mov	rdi,[rbx+0F8h]
	test	rdi,rdi
	jz	45E46Dh

l000000000045E369:
	cmp	byte ptr [rbx+0E2h],0h
	jz	45E420h

l000000000045E376:
	movzx	eax,word ptr [rbx+0E0h]
	mov	r9,rbx

l000000000045E380:
	mov	r8,[r9+0E8h]
	mov	edx,0h
	movzx	eax,ax
	lea	rcx,[rsp+40h]
	test	r8,r8
	mov	[rsp+30h],r8
	lea	r8,[rsp+30h]
	setz	dl
	mov	[rsp+38h],rdx
	mov	r10,[rdi]
	mov	rdx,rdi
	movsd	double ptr [rsp+28h],xmm6
	mov	[rsp+20h],eax
	call	qword ptr [r10+38h]
	cmp	byte ptr [rsp+48h],0h
	jz	45E3D9h

l000000000045E3C4:
	mov	rax,[rsi]
	mov	rcx,rsi
	add	rcx,[rax-18h]
	mov	edx,[rcx+20h]
	or	edx,1h
	call	46EB40h

l000000000045E3D9:
	mov	rax,[rsp+58h]
	mov	rdx,[rax]
	add	rax,[rdx-18h]
	test	byte ptr [rax+19h],20h
	mov	rbx,rax
	jz	45E40Eh

l000000000045E3EE:
	call	470A80h
	test	al,al
	jnz	45E40Eh

l000000000045E3F7:
	mov	rcx,[rbx+0E8h]
	test	rcx,rcx
	jz	45E40Eh

l000000000045E403:
	mov	rax,[rcx]
	call	qword ptr [rax+30h]
	cmp	eax,0FFh
	jz	45E454h

l000000000045E40E:
	movaps	xmm6,[rsp+60h]
	mov	rax,rsi
	add	rsp,78h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
000000000045E41F                                              90                .

l000000000045E420:
	mov	rcx,[rbx+0F0h]
	test	rcx,rcx
	jz	45E496h

l000000000045E42C:
	mov	rax,[rcx]
	mov	edx,20h
	call	qword ptr [rax+50h]
	mov	rdx,[rsi]
	mov	r9,rsi
	mov	[rbx+0E0h],ax
	mov	byte ptr [rbx+0E2h],1h
	add	r9,[rdx-18h]
	jmp	45E380h

l000000000045E454:
	mov	rcx,[rsp+58h]
	mov	rax,[rcx]
	add	rcx,[rax-18h]
	mov	edx,[rcx+20h]
	or	edx,1h
	call	46EB40h
	jmp	45E40Eh

l000000000045E46D:
	call	470820h
	sub	rdx,1h
	mov	rcx,rax
	jnz	45E4BDh

l000000000045E47B:
	call	475840h
	mov	rax,[rsi]
	add	rsi,[rax-18h]
	or	dword ptr [rsi+20h],1h
	test	byte ptr [rsi+1Ch],1h
	jz	45E4B8h

l000000000045E491:
	call	476060h

l000000000045E496:
	call	470820h
	mov	rbx,rax

l000000000045E49E:
	mov	rcx,rbp
	call	45DE50h
	mov	rcx,rbx
	call	4115B0h
	mov	rbx,rax
	call	475A70h
	jmp	45E49Eh

l000000000045E4B8:
	call	476060h

l000000000045E4BD:
	call	475840h
	mov	rax,[rsi]
	mov	rdi,rsi
	add	rdi,[rax-18h]
	or	dword ptr [rdi+20h],1h
	test	byte ptr [rdi+1Ch],1h
	jnz	45E4E0h

l000000000045E4D6:
	call	475A70h
	jmp	45E3D9h

l000000000045E4E0:
	call	476060h
	mov	rbx,rax
	call	475A70h
	jmp	45E49Eh
000000000045E4EF                                              90                .

;; fn000000000045E4F0: 000000000045E4F0
;;   Called from:
;;     000000000045F26F (in fn000000000045F260)
fn000000000045E4F0 proc
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,+88h
	fld	tword ptr [rdx]
	lea	rbp,[rsp+70h]
	mov	rdx,rcx
	mov	rsi,rcx
	mov	rcx,rbp
	fstp	tword ptr [rsp+30h]
	call	45DD70h
	cmp	byte ptr [rsp+70h],0h
	jz	45E5B5h

l000000000045E51F:
	mov	rax,[rsi]
	mov	rbx,rsi
	add	rbx,[rax-18h]
	mov	rdi,[rbx+0F8h]
	test	rdi,rdi
	jz	45E65Ah

l000000000045E539:
	cmp	byte ptr [rbx+0E2h],0h
	jz	45E600h

l000000000045E546:
	movzx	eax,word ptr [rbx+0E0h]
	mov	r9,rbx

l000000000045E550:
	fld	tword ptr [rsp+30h]
	mov	r8,[r9+0E8h]
	mov	edx,0h
	movzx	eax,ax
	lea	rcx,[rsp+60h]
	test	r8,r8
	mov	[rsp+50h],r8
	lea	r8,[rsp+50h]
	setz	dl
	mov	[rsp+58h],rdx
	mov	r10,[rdi]
	lea	rdx,[rsp+40h]
	mov	[rsp+20h],eax
	mov	[rsp+28h],rdx
	mov	rdx,rdi
	fstp	tword ptr [rsp+40h]
	call	qword ptr [r10+40h]
	cmp	byte ptr [rsp+68h],0h
	jz	45E5B5h

l000000000045E5A0:
	mov	rax,[rsi]
	mov	rcx,rsi
	add	rcx,[rax-18h]
	mov	edx,[rcx+20h]
	or	edx,1h
	call	46EB40h

l000000000045E5B5:
	mov	rax,[rsp+78h]
	mov	rdx,[rax]
	add	rax,[rdx-18h]
	test	byte ptr [rax+19h],20h
	mov	rbx,rax
	jz	45E5EAh

l000000000045E5CA:
	call	470A80h
	test	al,al
	jnz	45E5EAh

l000000000045E5D3:
	mov	rcx,[rbx+0E8h]
	test	rcx,rcx
	jz	45E5EAh

l000000000045E5DF:
	mov	rax,[rcx]
	call	qword ptr [rax+30h]
	cmp	eax,0FFh
	jz	45E634h

l000000000045E5EA:
	mov	rax,rsi
	add	rsp,+88h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
000000000045E5F9                            0F 1F 80 00 00 00 00          .......

l000000000045E600:
	mov	rcx,[rbx+0F0h]
	test	rcx,rcx
	jz	45E683h

l000000000045E60C:
	mov	rax,[rcx]
	mov	edx,20h
	call	qword ptr [rax+50h]
	mov	rdx,[rsi]
	mov	r9,rsi
	mov	[rbx+0E0h],ax
	mov	byte ptr [rbx+0E2h],1h
	add	r9,[rdx-18h]
	jmp	45E550h

l000000000045E634:
	mov	rcx,[rsp+78h]
	mov	rax,[rcx]
	add	rcx,[rax-18h]
	mov	edx,[rcx+20h]
	or	edx,1h
	call	46EB40h
	mov	rax,rsi
	add	rsp,+88h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret

l000000000045E65A:
	call	470820h
	sub	rdx,1h
	mov	rcx,rax
	jnz	45E6AAh

l000000000045E668:
	call	475840h
	mov	rax,[rsi]
	add	rsi,[rax-18h]
	or	dword ptr [rsi+20h],1h
	test	byte ptr [rsi+1Ch],1h
	jz	45E6A5h

l000000000045E67E:
	call	476060h

l000000000045E683:
	call	470820h
	mov	rbx,rax

l000000000045E68B:
	mov	rcx,rbp
	call	45DE50h
	mov	rcx,rbx
	call	4115B0h
	mov	rbx,rax
	call	475A70h
	jmp	45E68Bh

l000000000045E6A5:
	call	476060h

l000000000045E6AA:
	call	475840h
	mov	rax,[rsi]
	mov	rdi,rsi
	add	rdi,[rax-18h]
	or	dword ptr [rdi+20h],1h
	test	byte ptr [rdi+1Ch],1h
	jnz	45E6CDh

l000000000045E6C3:
	call	475A70h
	jmp	45E5B5h

l000000000045E6CD:
	call	476060h
	mov	rbx,rax
	call	475A70h
	jmp	45E68Bh
000000000045E6DC                                     90 90 90 90             ....

;; fn000000000045E6E0: 000000000045E6E0
;;   Called from:
;;     000000000045F290 (in fn000000000045F290)
;;     000000000045F2B0 (in fn000000000045F2B0)
;;     000000000045F2EB (in fn000000000045F2D0)
;;     000000000045F2F3 (in fn000000000045F2D0)
fn000000000045E6E0 proc
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,60h
	lea	rbp,[rsp+50h]
	mov	rsi,rcx
	mov	r12d,edx
	mov	rdx,rcx
	mov	rcx,rbp
	call	45DD70h
	cmp	byte ptr [rsp+50h],0h
	jz	45E796h

l000000000045E70B:
	mov	rax,[rsi]
	mov	rbx,rsi
	add	rbx,[rax-18h]
	mov	rdi,[rbx+0F8h]
	test	rdi,rdi
	jz	45E839h

l000000000045E725:
	cmp	byte ptr [rbx+0E2h],0h
	jz	45E7E0h

l000000000045E732:
	movzx	eax,word ptr [rbx+0E0h]
	mov	r9,rbx

l000000000045E73C:
	mov	rdx,[r9+0E8h]
	mov	r8d,0h
	movzx	eax,ax
	lea	rcx,[rsp+40h]
	test	rdx,rdx
	mov	[rsp+30h],rdx
	mov	rdx,rdi
	setz	r8b
	mov	[rsp+38h],r8
	mov	r10,[rdi]
	lea	r8,[rsp+30h]
	mov	[rsp+28h],r12d
	mov	[rsp+20h],eax
	call	qword ptr [r10+18h]
	cmp	byte ptr [rsp+48h],0h
	jz	45E796h

l000000000045E781:
	mov	rax,[rsi]
	mov	rcx,rsi
	add	rcx,[rax-18h]
	mov	edx,[rcx+20h]
	or	edx,1h
	call	46EB40h

l000000000045E796:
	mov	rax,[rsp+58h]
	mov	rdx,[rax]
	add	rax,[rdx-18h]
	test	byte ptr [rax+19h],20h
	mov	rbx,rax
	jz	45E7CBh

l000000000045E7AB:
	call	470A80h
	test	al,al
	jnz	45E7CBh

l000000000045E7B4:
	mov	rcx,[rbx+0E8h]
	test	rcx,rcx
	jz	45E7CBh

l000000000045E7C0:
	mov	rax,[rcx]
	call	qword ptr [rax+30h]
	cmp	eax,0FFh
	jz	45E814h

l000000000045E7CB:
	mov	rax,rsi
	add	rsp,60h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
000000000045E7D9                            0F 1F 80 00 00 00 00          .......

l000000000045E7E0:
	mov	rcx,[rbx+0F0h]
	test	rcx,rcx
	jz	45E862h

l000000000045E7EC:
	mov	rax,[rcx]
	mov	edx,20h
	call	qword ptr [rax+50h]
	mov	rdx,[rsi]
	mov	r9,rsi
	mov	[rbx+0E0h],ax
	mov	byte ptr [rbx+0E2h],1h
	add	r9,[rdx-18h]
	jmp	45E73Ch

l000000000045E814:
	mov	rcx,[rsp+58h]
	mov	rax,[rcx]
	add	rcx,[rax-18h]
	mov	edx,[rcx+20h]
	or	edx,1h
	call	46EB40h
	mov	rax,rsi
	add	rsp,60h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret

l000000000045E839:
	call	470820h
	sub	rdx,1h
	mov	rcx,rax
	jnz	45E889h

l000000000045E847:
	call	475840h
	mov	rax,[rsi]
	add	rsi,[rax-18h]
	or	dword ptr [rsi+20h],1h
	test	byte ptr [rsi+1Ch],1h
	jz	45E884h

l000000000045E85D:
	call	476060h

l000000000045E862:
	call	470820h
	mov	rbx,rax

l000000000045E86A:
	mov	rcx,rbp
	call	45DE50h
	mov	rcx,rbx
	call	4115B0h
	mov	rbx,rax
	call	475A70h
	jmp	45E86Ah

l000000000045E884:
	call	476060h

l000000000045E889:
	call	475840h
	mov	rax,[rsi]
	mov	rdi,rsi
	add	rdi,[rax-18h]
	or	dword ptr [rdi+20h],1h
	test	byte ptr [rdi+1Ch],1h
	jnz	45E8ACh

l000000000045E8A2:
	call	475A70h
	jmp	45E796h

l000000000045E8AC:
	call	476060h
	mov	rbx,rax
	call	475A70h
	jmp	45E86Ah
000000000045E8BB                                  90 90 90 90 90            .....

;; fn000000000045E8C0: 000000000045E8C0
;;   Called from:
;;     000000000045F2A0 (in fn000000000045F2A0)
;;     000000000045F2C0 (in fn000000000045F2C0)
;;     000000000045F303 (in fn000000000045F300)
fn000000000045E8C0 proc
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,60h
	lea	rbp,[rsp+50h]
	mov	rsi,rcx
	mov	r12d,edx
	mov	rdx,rcx
	mov	rcx,rbp
	call	45DD70h
	cmp	byte ptr [rsp+50h],0h
	jz	45E976h

l000000000045E8EB:
	mov	rax,[rsi]
	mov	rbx,rsi
	add	rbx,[rax-18h]
	mov	rdi,[rbx+0F8h]
	test	rdi,rdi
	jz	45EA19h

l000000000045E905:
	cmp	byte ptr [rbx+0E2h],0h
	jz	45E9C0h

l000000000045E912:
	movzx	eax,word ptr [rbx+0E0h]
	mov	r9,rbx

l000000000045E91C:
	mov	rdx,[r9+0E8h]
	mov	r8d,0h
	movzx	eax,ax
	lea	rcx,[rsp+40h]
	test	rdx,rdx
	mov	[rsp+30h],rdx
	mov	rdx,rdi
	setz	r8b
	mov	[rsp+38h],r8
	mov	r10,[rdi]
	lea	r8,[rsp+30h]
	mov	[rsp+28h],r12d
	mov	[rsp+20h],eax
	call	qword ptr [r10+20h]
	cmp	byte ptr [rsp+48h],0h
	jz	45E976h

l000000000045E961:
	mov	rax,[rsi]
	mov	rcx,rsi
	add	rcx,[rax-18h]
	mov	edx,[rcx+20h]
	or	edx,1h
	call	46EB40h

l000000000045E976:
	mov	rax,[rsp+58h]
	mov	rdx,[rax]
	add	rax,[rdx-18h]
	test	byte ptr [rax+19h],20h
	mov	rbx,rax
	jz	45E9ABh

l000000000045E98B:
	call	470A80h
	test	al,al
	jnz	45E9ABh

l000000000045E994:
	mov	rcx,[rbx+0E8h]
	test	rcx,rcx
	jz	45E9ABh

l000000000045E9A0:
	mov	rax,[rcx]
	call	qword ptr [rax+30h]
	cmp	eax,0FFh
	jz	45E9F4h

l000000000045E9AB:
	mov	rax,rsi
	add	rsp,60h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
000000000045E9B9                            0F 1F 80 00 00 00 00          .......

l000000000045E9C0:
	mov	rcx,[rbx+0F0h]
	test	rcx,rcx
	jz	45EA42h

l000000000045E9CC:
	mov	rax,[rcx]
	mov	edx,20h
	call	qword ptr [rax+50h]
	mov	rdx,[rsi]
	mov	r9,rsi
	mov	[rbx+0E0h],ax
	mov	byte ptr [rbx+0E2h],1h
	add	r9,[rdx-18h]
	jmp	45E91Ch

l000000000045E9F4:
	mov	rcx,[rsp+58h]
	mov	rax,[rcx]
	add	rcx,[rax-18h]
	mov	edx,[rcx+20h]
	or	edx,1h
	call	46EB40h
	mov	rax,rsi
	add	rsp,60h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret

l000000000045EA19:
	call	470820h
	sub	rdx,1h
	mov	rcx,rax
	jnz	45EA69h

l000000000045EA27:
	call	475840h
	mov	rax,[rsi]
	add	rsi,[rax-18h]
	or	dword ptr [rsi+20h],1h
	test	byte ptr [rsi+1Ch],1h
	jz	45EA64h

l000000000045EA3D:
	call	476060h

l000000000045EA42:
	call	470820h
	mov	rbx,rax

l000000000045EA4A:
	mov	rcx,rbp
	call	45DE50h
	mov	rcx,rbx
	call	4115B0h
	mov	rbx,rax
	call	475A70h
	jmp	45EA4Ah

l000000000045EA64:
	call	476060h

l000000000045EA69:
	call	475840h
	mov	rax,[rsi]
	mov	rdi,rsi
	add	rdi,[rax-18h]
	or	dword ptr [rdi+20h],1h
	test	byte ptr [rdi+1Ch],1h
	jnz	45EA8Ch

l000000000045EA82:
	call	475A70h
	jmp	45E976h

l000000000045EA8C:
	call	476060h
	mov	rbx,rax
	call	475A70h
	jmp	45EA4Ah
000000000045EA9B                                  90 90 90 90 90            .....

;; fn000000000045EAA0: 000000000045EAA0
;;   Called from:
;;     000000000045F310 (in fn000000000045F310)
fn000000000045EAA0 proc
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,60h
	lea	rbp,[rsp+50h]
	mov	rsi,rcx
	mov	r12,rdx
	mov	rdx,rcx
	mov	rcx,rbp
	call	45DD70h
	cmp	byte ptr [rsp+50h],0h
	jz	45EB56h

l000000000045EACB:
	mov	rax,[rsi]
	mov	rbx,rsi
	add	rbx,[rax-18h]
	mov	rdi,[rbx+0F8h]
	test	rdi,rdi
	jz	45EBF9h

l000000000045EAE5:
	cmp	byte ptr [rbx+0E2h],0h
	jz	45EBA0h

l000000000045EAF2:
	movzx	eax,word ptr [rbx+0E0h]
	mov	r9,rbx

l000000000045EAFC:
	mov	rdx,[r9+0E8h]
	mov	r8d,0h
	movzx	eax,ax
	lea	rcx,[rsp+40h]
	test	rdx,rdx
	mov	[rsp+30h],rdx
	mov	rdx,rdi
	setz	r8b
	mov	[rsp+38h],r8
	mov	r10,[rdi]
	lea	r8,[rsp+30h]
	mov	[rsp+28h],r12
	mov	[rsp+20h],eax
	call	qword ptr [r10+28h]
	cmp	byte ptr [rsp+48h],0h
	jz	45EB56h

l000000000045EB41:
	mov	rax,[rsi]
	mov	rcx,rsi
	add	rcx,[rax-18h]
	mov	edx,[rcx+20h]
	or	edx,1h
	call	46EB40h

l000000000045EB56:
	mov	rax,[rsp+58h]
	mov	rdx,[rax]
	add	rax,[rdx-18h]
	test	byte ptr [rax+19h],20h
	mov	rbx,rax
	jz	45EB8Bh

l000000000045EB6B:
	call	470A80h
	test	al,al
	jnz	45EB8Bh

l000000000045EB74:
	mov	rcx,[rbx+0E8h]
	test	rcx,rcx
	jz	45EB8Bh

l000000000045EB80:
	mov	rax,[rcx]
	call	qword ptr [rax+30h]
	cmp	eax,0FFh
	jz	45EBD4h

l000000000045EB8B:
	mov	rax,rsi
	add	rsp,60h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
000000000045EB99                            0F 1F 80 00 00 00 00          .......

l000000000045EBA0:
	mov	rcx,[rbx+0F0h]
	test	rcx,rcx
	jz	45EC22h

l000000000045EBAC:
	mov	rax,[rcx]
	mov	edx,20h
	call	qword ptr [rax+50h]
	mov	rdx,[rsi]
	mov	r9,rsi
	mov	[rbx+0E0h],ax
	mov	byte ptr [rbx+0E2h],1h
	add	r9,[rdx-18h]
	jmp	45EAFCh

l000000000045EBD4:
	mov	rcx,[rsp+58h]
	mov	rax,[rcx]
	add	rcx,[rax-18h]
	mov	edx,[rcx+20h]
	or	edx,1h
	call	46EB40h
	mov	rax,rsi
	add	rsp,60h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret

l000000000045EBF9:
	call	470820h
	sub	rdx,1h
	mov	rcx,rax
	jnz	45EC49h

l000000000045EC07:
	call	475840h
	mov	rax,[rsi]
	add	rsi,[rax-18h]
	or	dword ptr [rsi+20h],1h
	test	byte ptr [rsi+1Ch],1h
	jz	45EC44h

l000000000045EC1D:
	call	476060h

l000000000045EC22:
	call	470820h
	mov	rbx,rax

l000000000045EC2A:
	mov	rcx,rbp
	call	45DE50h
	mov	rcx,rbx
	call	4115B0h
	mov	rbx,rax
	call	475A70h
	jmp	45EC2Ah

l000000000045EC44:
	call	476060h

l000000000045EC49:
	call	475840h
	mov	rax,[rsi]
	mov	rdi,rsi
	add	rdi,[rax-18h]
	or	dword ptr [rdi+20h],1h
	test	byte ptr [rdi+1Ch],1h
	jnz	45EC6Ch

l000000000045EC62:
	call	475A70h
	jmp	45EB56h

l000000000045EC6C:
	call	476060h
	mov	rbx,rax
	call	475A70h
	jmp	45EC2Ah
000000000045EC7B                                  90 90 90 90 90            .....

;; fn000000000045EC80: 000000000045EC80
;;   Called from:
;;     000000000045F320 (in fn000000000045F320)
fn000000000045EC80 proc
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,60h
	lea	rbp,[rsp+50h]
	mov	rsi,rcx
	mov	r12,rdx
	mov	rdx,rcx
	mov	rcx,rbp
	call	45DD70h
	cmp	byte ptr [rsp+50h],0h
	jz	45ED36h

l000000000045ECAB:
	mov	rax,[rsi]
	mov	rbx,rsi
	add	rbx,[rax-18h]
	mov	rdi,[rbx+0F8h]
	test	rdi,rdi
	jz	45EDD9h

l000000000045ECC5:
	cmp	byte ptr [rbx+0E2h],0h
	jz	45ED80h

l000000000045ECD2:
	movzx	eax,word ptr [rbx+0E0h]
	mov	r9,rbx

l000000000045ECDC:
	mov	rdx,[r9+0E8h]
	mov	r8d,0h
	movzx	eax,ax
	lea	rcx,[rsp+40h]
	test	rdx,rdx
	mov	[rsp+30h],rdx
	mov	rdx,rdi
	setz	r8b
	mov	[rsp+38h],r8
	mov	r10,[rdi]
	lea	r8,[rsp+30h]
	mov	[rsp+28h],r12
	mov	[rsp+20h],eax
	call	qword ptr [r10+30h]
	cmp	byte ptr [rsp+48h],0h
	jz	45ED36h

l000000000045ED21:
	mov	rax,[rsi]
	mov	rcx,rsi
	add	rcx,[rax-18h]
	mov	edx,[rcx+20h]
	or	edx,1h
	call	46EB40h

l000000000045ED36:
	mov	rax,[rsp+58h]
	mov	rdx,[rax]
	add	rax,[rdx-18h]
	test	byte ptr [rax+19h],20h
	mov	rbx,rax
	jz	45ED6Bh

l000000000045ED4B:
	call	470A80h
	test	al,al
	jnz	45ED6Bh

l000000000045ED54:
	mov	rcx,[rbx+0E8h]
	test	rcx,rcx
	jz	45ED6Bh

l000000000045ED60:
	mov	rax,[rcx]
	call	qword ptr [rax+30h]
	cmp	eax,0FFh
	jz	45EDB4h

l000000000045ED6B:
	mov	rax,rsi
	add	rsp,60h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
000000000045ED79                            0F 1F 80 00 00 00 00          .......

l000000000045ED80:
	mov	rcx,[rbx+0F0h]
	test	rcx,rcx
	jz	45EE02h

l000000000045ED8C:
	mov	rax,[rcx]
	mov	edx,20h
	call	qword ptr [rax+50h]
	mov	rdx,[rsi]
	mov	r9,rsi
	mov	[rbx+0E0h],ax
	mov	byte ptr [rbx+0E2h],1h
	add	r9,[rdx-18h]
	jmp	45ECDCh

l000000000045EDB4:
	mov	rcx,[rsp+58h]
	mov	rax,[rcx]
	add	rcx,[rax-18h]
	mov	edx,[rcx+20h]
	or	edx,1h
	call	46EB40h
	mov	rax,rsi
	add	rsp,60h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret

l000000000045EDD9:
	call	470820h
	sub	rdx,1h
	mov	rcx,rax
	jnz	45EE29h

l000000000045EDE7:
	call	475840h
	mov	rax,[rsi]
	add	rsi,[rax-18h]
	or	dword ptr [rsi+20h],1h
	test	byte ptr [rsi+1Ch],1h
	jz	45EE24h

l000000000045EDFD:
	call	476060h

l000000000045EE02:
	call	470820h
	mov	rbx,rax

l000000000045EE0A:
	mov	rcx,rbp
	call	45DE50h
	mov	rcx,rbx
	call	4115B0h
	mov	rbx,rax
	call	475A70h
	jmp	45EE0Ah

l000000000045EE24:
	call	476060h

l000000000045EE29:
	call	475840h
	mov	rax,[rsi]
	mov	rdi,rsi
	add	rdi,[rax-18h]
	or	dword ptr [rdi+20h],1h
	test	byte ptr [rdi+1Ch],1h
	jnz	45EE4Ch

l000000000045EE42:
	call	475A70h
	jmp	45ED36h

l000000000045EE4C:
	call	476060h
	mov	rbx,rax
	call	475A70h
	jmp	45EE0Ah
000000000045EE5B                                  90 90 90 90 90            .....

;; fn000000000045EE60: 000000000045EE60
fn000000000045EE60 proc
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,20h
	lea	rsi,[rcx+8h]
	mov	rbx,rcx
	mov	rdi,rdx
	mov	rcx,rsi
	call	46D320h
	xor	eax,eax
	mov	qword ptr [rbx+0E0h],+0h
	mov	byte ptr [rbx+0EAh],0h
	mov	[rbx+0E8h],ax
	lea	rax,[0000000000496998]                                 ; [rip+00037AFD]
	mov	qword ptr [rbx+0F0h],+0h
	mov	qword ptr [rbx+0F8h],+0h
	mov	qword ptr [rbx+100h],+0h
	mov	rdx,rdi
	mov	[rbx],rax
	lea	rax,[00000000004969C0]                                 ; [rip+00037AF7]
	mov	qword ptr [rbx+108h],+0h
	mov	rcx,rsi
	mov	[rbx+8h],rax
	call	46EAE0h
	nop
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	ret
000000000045EEE9                            48 89 C7 48 8B 05 3D          H..H..=
000000000045EEF0 2F 03 00 48 89 F1 48 8D 50 10 48 89 53 08 E8 CD /..H..H.P.H.S...
000000000045EF00 E4 00 00 48 89 F9 E8 A5 26 FB FF 90 90 90 90 90 ...H....&.......

;; fn000000000045EF10: 000000000045EF10
fn000000000045EF10 proc
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,20h
	lea	rsi,[rcx+8h]
	mov	rbx,rcx
	mov	rcx,rsi
	call	46D320h
	xor	eax,eax
	mov	qword ptr [rbx+0E0h],+0h
	mov	byte ptr [rbx+0EAh],0h
	mov	[rbx+0E8h],ax
	lea	rax,[0000000000496998]                                 ; [rip+00037A50]
	mov	qword ptr [rbx+0F0h],+0h
	mov	qword ptr [rbx+0F8h],+0h
	mov	qword ptr [rbx+100h],+0h
	xor	edx,edx
	mov	[rbx],rax
	lea	rax,[00000000004969C0]                                 ; [rip+00037A4B]
	mov	qword ptr [rbx+108h],+0h
	mov	rcx,rsi
	mov	[rbx+8h],rax
	call	46EAE0h
	nop
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	ret
000000000045EF95                48 89 C7 48 8B 05 91 2E 03 00 48      H..H......H
000000000045EFA0 89 F1 48 8D 50 10 48 89 53 08 E8 21 E4 00 00 48 ..H.P.H.S..!...H
000000000045EFB0 89 F9 E8 F9 25 FB FF 90 90 90 90 90 90 90 90 90 ....%...........

;; fn000000000045EFC0: 000000000045EFC0
fn000000000045EFC0 proc
	mov	r9,[rdx]
	mov	[rcx],r9
	add	rcx,[r9-18h]
	mov	rax,[rdx+8h]
	mov	rdx,r8
	mov	[rcx],rax
	jmp	46EAE0h
000000000045EFD9                            90 90 90 90 90 90 90          .......

;; fn000000000045EFE0: 000000000045EFE0
fn000000000045EFE0 proc
	mov	rax,[rdx]
	mov	[rcx],rax
	add	rcx,[rax-18h]
	mov	rax,[rdx+8h]
	xor	edx,edx
	mov	[rcx],rax
	jmp	46EAE0h
000000000045EFF8                         90 90 90 90 90 90 90 90         ........

;; fn000000000045F000: 000000000045F000
fn000000000045F000 proc
	push	rbx
	sub	rsp,20h
	lea	rax,[0000000000496998]                                 ; [rip+0003798C]
	mov	rbx,rcx
	lea	rcx,[rcx+8h]
	mov	[rcx-8h],rax
	mov	rax,[0000000000491E30]                                 ; [rip+00032E12]
	add	rax,10h
	mov	[rcx],rax
	call	46D3D0h
	mov	rcx,rbx
	add	rsp,20h
	pop	rbx
	jmp	475550h
000000000045F037                      90 90 90 90 90 90 90 90 90        .........

;; fn000000000045F040: 000000000045F040
fn000000000045F040 proc
	lea	rax,[0000000000496998]                                 ; [rip+00037951]
	add	rcx,8h
	mov	[rcx-8h],rax
	mov	rax,[0000000000491E30]                                 ; [rip+00032DDA]
	add	rax,10h
	mov	[rcx],rax
	jmp	46D3D0h
000000000045F062       90 90 90 90 90 90 90 90 90 90 90 90 90 90   ..............

;; fn000000000045F070: 000000000045F070
fn000000000045F070 proc
	mov	rax,[rdx]
	mov	[rcx],rax
	mov	rax,[rax-18h]
	mov	rdx,[rdx+8h]
	mov	[rcx+rax],rdx
	ret
000000000045F083          90 90 90 90 90 90 90 90 90 90 90 90 90    .............

;; fn000000000045F090: 000000000045F090
fn000000000045F090 proc
	jmp	rdx
000000000045F093          90 90 90 90 90 90 90 90 90 90 90 90 90    .............

;; fn000000000045F0A0: 000000000045F0A0
fn000000000045F0A0 proc
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
000000000045F0BA                               90 90 90 90 90 90           ......

;; fn000000000045F0C0: 000000000045F0C0
fn000000000045F0C0 proc
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
000000000045F0DA                               90 90 90 90 90 90           ......

;; fn000000000045F0E0: 000000000045F0E0
fn000000000045F0E0 proc
	jmp	45DF60h
000000000045F0E5                90 90 90 90 90 90 90 90 90 90 90      ...........

;; fn000000000045F0F0: 000000000045F0F0
fn000000000045F0F0 proc
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,40h
	lea	rdi,[rsp+30h]
	mov	rbx,rdx
	mov	rsi,rcx
	mov	rdx,rcx
	mov	rcx,rdi
	call	45DD70h
	test	rbx,rbx
	jz	45F180h

l000000000045F112:
	cmp	byte ptr [rsp+30h],0h
	jz	45F180h

l000000000045F119:
	mov	rax,[rsi]
	lea	r8,[rsp+2Fh]
	mov	rcx,rbx
	mov	rax,[rax-18h]
	mov	rdx,[rsi+rax+0E8h]
	call	471150h
	test	rax,rax
	mov	edx,4h
	jz	45F18Ah

l000000000045F13F:
	mov	r8,[rsp+38h]
	mov	rax,[r8]
	mov	rbx,r8
	add	rbx,[rax-18h]
	test	byte ptr [rbx+19h],20h
	jz	45F174h

l000000000045F154:
	call	470A80h
	test	al,al
	jnz	45F174h

l000000000045F15D:
	mov	rcx,[rbx+0E8h]
	test	rcx,rcx
	jz	45F174h

l000000000045F169:
	mov	rax,[rcx]
	call	qword ptr [rax+30h]
	cmp	eax,0FFh
	jz	45F1A0h

l000000000045F174:
	mov	rax,rsi
	add	rsp,40h
	pop	rbx
	pop	rsi
	pop	rdi
	ret
000000000045F17F                                              90                .

l000000000045F180:
	test	rbx,rbx
	jnz	45F13Fh

l000000000045F185:
	mov	edx,1h

l000000000045F18A:
	mov	rax,[rsi]
	mov	rcx,rsi
	add	rcx,[rax-18h]
	or	edx,[rcx+20h]
	call	46EB40h
	jmp	45F13Fh
000000000045F19E                                           66 90               f.

l000000000045F1A0:
	mov	rcx,[rsp+38h]
	mov	rax,[rcx]
	add	rcx,[rax-18h]
	mov	edx,[rcx+20h]
	or	edx,1h
	call	46EB40h
	mov	rax,rsi
	add	rsp,40h
	pop	rbx
	pop	rsi
	pop	rdi
	ret
000000000045F1C2       48 89 C3 48 89 F9 E8 83 EC FF FF 48 89 D9   H..H.......H..
000000000045F1D0 E8 DB 23 FB FF 48 83 EA 01 48 89 C1 75 1B E8 5D ..#..H...H..u..]
000000000045F1E0 66 01 00 48 8B 06 48 03 70 E8 83 4E 20 01 F6 46 f..H..H.p..N ..F
000000000045F1F0 1C 01 74 32 E8 67 6E 01 00 E8 42 66 01 00 48 8B ..t2.gn...Bf..H.
000000000045F200 06 48 89 F2 48 03 50 E8 83 4A 20 04 F6 42 1C 04 .H..H.P..J ..B..
000000000045F210 75 19 E8 59 68 01 00 E9 23 FF FF FF 48 89 C3 E8 u..Yh...#...H...
000000000045F220 4C 68 01 00 EB 9F E8 35 6E 01 00 E8 30 6E 01 00 Lh.....5n...0n..
000000000045F230 48 89 C3 E8 38 68 01 00 EB 8B 90 90 90 90 90 90 H...8h..........

;; fn000000000045F240: 000000000045F240
fn000000000045F240 proc
	movzx	edx,dl
	jmp	45E140h
000000000045F248                         90 90 90 90 90 90 90 90         ........

;; fn000000000045F250: 000000000045F250
fn000000000045F250 proc
	jmp	45E320h
000000000045F255                90 90 90 90 90 90 90 90 90 90 90      ...........

;; fn000000000045F260: 000000000045F260
fn000000000045F260 proc
	sub	rsp,38h
	fld	tword ptr [rdx]
	lea	rdx,[rsp+20h]
	fstp	tword ptr [rsp+20h]
	call	45E4F0h
	add	rsp,38h
	ret
000000000045F279                            90 90 90 90 90 90 90          .......

;; fn000000000045F280: 000000000045F280
fn000000000045F280 proc
	cvtss2sd	xmm1,xmm1
	jmp	45E320h
000000000045F289                            90 90 90 90 90 90 90          .......

;; fn000000000045F290: 000000000045F290
fn000000000045F290 proc
	jmp	45E6E0h
000000000045F295                90 90 90 90 90 90 90 90 90 90 90      ...........

;; fn000000000045F2A0: 000000000045F2A0
fn000000000045F2A0 proc
	jmp	45E8C0h
000000000045F2A5                90 90 90 90 90 90 90 90 90 90 90      ...........

;; fn000000000045F2B0: 000000000045F2B0
fn000000000045F2B0 proc
	jmp	45E6E0h
000000000045F2B5                90 90 90 90 90 90 90 90 90 90 90      ...........

;; fn000000000045F2C0: 000000000045F2C0
fn000000000045F2C0 proc
	jmp	45E8C0h
000000000045F2C5                90 90 90 90 90 90 90 90 90 90 90      ...........

;; fn000000000045F2D0: 000000000045F2D0
fn000000000045F2D0 proc
	mov	rax,[rcx]
	mov	rax,[rax-18h]
	mov	eax,[rcx+rax+18h]
	and	eax,4Ah
	cmp	eax,8h
	jz	45F2F0h

l000000000045F2E3:
	cmp	eax,40h
	jz	45F2F0h

l000000000045F2E8:
	movsx	edx,dx
	jmp	45E6E0h

l000000000045F2F0:
	movzx	edx,dx
	jmp	45E6E0h
000000000045F2F8                         90 90 90 90 90 90 90 90         ........

;; fn000000000045F300: 000000000045F300
fn000000000045F300 proc
	movzx	edx,dx
	jmp	45E8C0h
000000000045F308                         90 90 90 90 90 90 90 90         ........

;; fn000000000045F310: 000000000045F310
fn000000000045F310 proc
	jmp	45EAA0h
000000000045F315                90 90 90 90 90 90 90 90 90 90 90      ...........

;; fn000000000045F320: 000000000045F320
fn000000000045F320 proc
	jmp	45EC80h
000000000045F325                90 90 90 90 90 90 90 90 90 90 90      ...........

;; fn000000000045F330: 000000000045F330
;;   Called from:
;;     00000000004718B7 (in fn00000000004718A0)
fn000000000045F330 proc
	push	rbp
	mov	rbp,rsp
	mov	[rbp+10h],rcx
	mov	[rbp+18h],rdx
	mov	rax,[rbp+10h]
	mov	rdx,[rbp+18h]
	mov	[rax],rdx
	pop	rbp
	ret
000000000045F349                            90 90 90 90 90 90 90          .......

;; fn000000000045F350: 000000000045F350
;;   Called from:
;;     00000000004718E7 (in fn00000000004718D0)
fn000000000045F350 proc
	push	rbp
	mov	rbp,rsp
	mov	[rbp+10h],rcx
	mov	[rbp+18h],rdx
	mov	rax,[rbp+10h]
	mov	rdx,[rbp+18h]
	mov	[rax],rdx
	pop	rbp
	ret
000000000045F369                            90 90 90 90 90 90 90          .......

;; fn000000000045F370: 000000000045F370
;;   Called from:
;;     00000000004687EB (in fn00000000004687A0)
fn000000000045F370 proc
	push	rbp
	mov	rbp,rsp
	mov	[rbp+10h],rcx
	mov	rax,[rbp+10h]
	mov	rax,[rax]
	lea	rdx,[rax+1h]
	mov	rax,[rbp+10h]
	mov	[rax],rdx
	mov	rax,[rbp+10h]
	pop	rbp
	ret

;; fn000000000045F390: 000000000045F390
;;   Called from:
;;     0000000000454828 (in fn0000000000454820)
;;     00000000004548AB (in fn0000000000454880)
;;     00000000004620C8 (in fn00000000004620C0)
;;     0000000000463DF8 (in fn0000000000463DF0)
;;     0000000000470FB9 (in fn0000000000470F80)
;;     00000000004712D2 (in fn00000000004712A0)
fn000000000045F390 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	lea	rax,[0000000000496A10]                                 ; [rip+00037673]
	mov	rbx,rcx
	lea	rcx,[rcx+8h]
	mov	[rcx-8h],rax
	call	451F40h
	nop
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret
000000000045F3B5                48 89 C6 48 89 D9 E8 30 FD 00 00      H..H...0...
000000000045F3C0 48 89 F1 E8 E8 21 FB FF 90 90 90 90 90 90 90 90 H....!..........

;; fn000000000045F3D0: 000000000045F3D0
fn000000000045F3D0 proc
	push	rbx
	sub	rsp,20h
	mov	rbx,rcx
	call	45F3F0h
	mov	rcx,rbx
	add	rsp,20h
	pop	rbx
	jmp	475550h
000000000045F3EA                               90 90 90 90 90 90           ......

;; fn000000000045F3F0: 000000000045F3F0
;;   Called from:
;;     0000000000454852 (in fn0000000000454840)
;;     000000000045487A (in fn0000000000454870)
;;     0000000000454922 (in fn0000000000454910)
;;     000000000045494A (in fn0000000000454940)
;;     00000000004553C2 (in fn00000000004553B0)
;;     00000000004553EA (in fn00000000004553E0)
;;     000000000045F3D8 (in fn000000000045F3D0)
;;     00000000004620F2 (in fn00000000004620E0)
;;     000000000046211A (in fn0000000000462110)
;;     0000000000463E22 (in fn0000000000463E10)
;;     0000000000463E4A (in fn0000000000463E40)
fn000000000045F3F0 proc
	push	rbx
	sub	rsp,30h
	lea	rax,[0000000000496A10]                                 ; [rip+00037614]
	mov	edx,0FFFFFFFFh
	mov	rbx,rcx
	mov	[rcx],rax
	mov	rax,[rcx+8h]
	lock
	xadd	[rax-8h],edx
	test	edx,edx
	jle	45F423h

l000000000045F414:
	mov	rcx,rbx
	call	46F0F0h
	nop
	add	rsp,30h
	pop	rbx
	ret

l000000000045F423:
	lea	rcx,[rax-18h]
	lea	rdx,[rsp+2Fh]
	call	450A50h
	mov	rcx,rbx
	call	46F0F0h
	nop
	add	rsp,30h
	pop	rbx
	ret

;; fn000000000045F440: 000000000045F440
fn000000000045F440 proc
	push	rbx
	sub	rsp,20h
	mov	rbx,rcx
	lea	rcx,[rcx+10h]
	or	r8d,8h
	call	455970h
	test	rax,rax
	mov	rax,[rbx]
	jz	45F470h

l000000000045F45D:
	add	rbx,[rax-18h]
	xor	edx,edx
	mov	rcx,rbx
	add	rsp,20h
	pop	rbx
	jmp	46E370h

l000000000045F470:
	add	rbx,[rax-18h]
	mov	edx,[rbx+20h]
	mov	rcx,rbx
	or	edx,4h
	add	rsp,20h
	pop	rbx
	jmp	46E370h
000000000045F487                      90 90 90 90 90 90 90 90 90        .........

;; fn000000000045F490: 000000000045F490
fn000000000045F490 proc
	push	rbx
	sub	rsp,20h
	mov	rdx,[rdx]
	mov	rbx,rcx
	lea	rcx,[rcx+10h]
	or	r8d,8h
	call	455970h
	test	rax,rax
	mov	rax,[rbx]
	jz	45F4C3h

l000000000045F4B0:
	add	rbx,[rax-18h]
	xor	edx,edx
	mov	rcx,rbx
	add	rsp,20h
	pop	rbx
	jmp	46E370h

l000000000045F4C3:
	add	rbx,[rax-18h]
	mov	edx,[rbx+20h]
	mov	rcx,rbx
	or	edx,4h
	add	rsp,20h
	pop	rbx
	jmp	46E370h
000000000045F4DA                               90 90 90 90 90 90           ......

;; fn000000000045F4E0: 000000000045F4E0
fn000000000045F4E0 proc
	push	rbx
	sub	rsp,20h
	mov	rbx,rcx
	lea	rcx,[rcx+10h]
	call	455AB0h
	test	rax,rax
	jz	45F500h

l000000000045F4F6:
	add	rsp,20h
	pop	rbx
	ret
000000000045F4FC                                     0F 1F 40 00             ..@.

l000000000045F500:
	mov	rax,[rbx]
	add	rbx,[rax-18h]
	mov	edx,[rbx+20h]
	mov	rcx,rbx
	or	edx,4h
	add	rsp,20h
	pop	rbx
	jmp	46E370h
000000000045F51A                               90 90 90 90 90 90           ......

;; fn000000000045F520: 000000000045F520
fn000000000045F520 proc
	add	rcx,58h
	jmp	42AA50h
000000000045F529                            90 90 90 90 90 90 90          .......

;; fn000000000045F530: 000000000045F530
;;   Called from:
;;     0000000000402690 (in fn000000000040252C)
;;     0000000000402C8F (in fn0000000000402C4E)
fn000000000045F530 proc
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,20h
	lea	rsi,[rcx+0D0h]
	mov	rbx,rcx
	mov	rbp,rdx
	mov	r12d,r8d
	mov	rcx,rsi
	call	46D320h
	lea	rax,[0000000000492CD8]                                 ; [rip+0003377F]
	mov	qword ptr [rbx+1A8h],+0h
	mov	byte ptr [rbx+1B0h],0h
	mov	byte ptr [rbx+1B1h],0h
	mov	qword ptr [rbx+1B8h],+0h
	xor	edx,edx
	mov	[rbx],rax
	lea	rax,[0000000000492D00]                                 ; [rip+00033777]
	mov	qword ptr [rbx+1C0h],+0h
	mov	qword ptr [rbx+1C8h],+0h
	mov	qword ptr [rbx+1D0h],+0h
	mov	rcx,rsi
	mov	[rbx+0D0h],rax
	mov	qword ptr [rbx+8h],+0h
	call	46E310h
	lea	rax,[0000000000496A58]                                 ; [rip+00037490]
	lea	rdi,[rbx+10h]
	mov	[rbx],rax
	lea	rax,[0000000000496A80]                                 ; [rip+000374AA]
	mov	rcx,rdi
	mov	[rbx+0D0h],rax
	call	456E20h
	mov	rdx,rdi
	mov	rcx,rsi
	call	46E310h
	mov	r8d,r12d
	mov	rdx,rbp
	mov	rcx,rdi
	or	r8d,8h
	call	455970h
	test	rax,rax
	mov	rcx,rbx
	mov	rax,[rbx]
	jz	45F624h

l000000000045F60D:
	add	rcx,[rax-18h]
	xor	edx,edx
	call	46E370h
	nop
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret

l000000000045F624:
	add	rcx,[rax-18h]
	mov	edx,[rcx+20h]
	or	edx,4h
	call	46E370h
	nop
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
000000000045F63F                                              48                H
000000000045F640 89 C7 48 8B 05 D7 27 03 00 48 89 F1 48 83 C0 10 ..H...'..H..H...
000000000045F650 48 89 83 D0 00 00 00 E8 74 DD 00 00 48 89 F9 E8 H.......t...H...
000000000045F660 4C 1F FB FF 48 89 C5 48 89 F9 E8 C1 7A FF FF 48 L...H..H....z..H
000000000045F670 89 EF EB CE 90 90 90 90 90 90 90 90 90 90 90 90 ................

;; fn000000000045F680: 000000000045F680
fn000000000045F680 proc
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,20h
	lea	rsi,[rcx+0D0h]
	mov	rbx,rcx
	mov	rbp,rdx
	mov	r12d,r8d
	mov	rcx,rsi
	call	46D320h
	lea	rax,[0000000000492CD8]                                 ; [rip+0003362F]
	mov	qword ptr [rbx+1A8h],+0h
	mov	byte ptr [rbx+1B0h],0h
	mov	byte ptr [rbx+1B1h],0h
	mov	qword ptr [rbx+1B8h],+0h
	xor	edx,edx
	mov	[rbx],rax
	lea	rax,[0000000000492D00]                                 ; [rip+00033627]
	mov	qword ptr [rbx+1C0h],+0h
	mov	qword ptr [rbx+1C8h],+0h
	mov	qword ptr [rbx+1D0h],+0h
	mov	rcx,rsi
	mov	[rbx+0D0h],rax
	mov	qword ptr [rbx+8h],+0h
	call	46E310h
	lea	rax,[0000000000496A58]                                 ; [rip+00037340]
	lea	rdi,[rbx+10h]
	mov	[rbx],rax
	lea	rax,[0000000000496A80]                                 ; [rip+0003735A]
	mov	rcx,rdi
	mov	[rbx+0D0h],rax
	call	456E20h
	mov	rdx,rdi
	mov	rcx,rsi
	call	46E310h
	mov	rdx,[rbp+0h]
	mov	r8d,r12d
	mov	rcx,rdi
	or	r8d,8h
	call	455970h
	test	rax,rax
	mov	rcx,rbx
	mov	rax,[rbx]
	jz	45F775h

l000000000045F75E:
	add	rcx,[rax-18h]
	xor	edx,edx
	call	46E370h
	nop
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret

l000000000045F775:
	add	rcx,[rax-18h]
	mov	edx,[rcx+20h]
	or	edx,4h
	call	46E370h
	nop
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
000000000045F790 48 89 C7 48 8B 05 86 26 03 00 48 89 F1 48 83 C0 H..H...&..H..H..
000000000045F7A0 10 48 89 83 D0 00 00 00 E8 23 DC 00 00 48 89 F9 .H.......#...H..
000000000045F7B0 E8 FB 1D FB FF 48 89 C5 48 89 F9 E8 70 79 FF FF .....H..H...py..
000000000045F7C0 48 89 EF EB CE 90 90 90 90 90 90 90 90 90 90 90 H...............

;; fn000000000045F7D0: 000000000045F7D0
fn000000000045F7D0 proc
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,28h
	lea	rsi,[rcx+0D0h]
	mov	rbx,rcx
	mov	rcx,rsi
	call	46D320h
	lea	rax,[0000000000492CD8]                                 ; [rip+000334E7]
	mov	qword ptr [rbx+1A8h],+0h
	mov	byte ptr [rbx+1B0h],0h
	mov	byte ptr [rbx+1B1h],0h
	mov	qword ptr [rbx+1B8h],+0h
	xor	edx,edx
	mov	[rbx],rax
	lea	rax,[0000000000492D00]                                 ; [rip+000334DF]
	mov	qword ptr [rbx+1C0h],+0h
	mov	qword ptr [rbx+1C8h],+0h
	mov	qword ptr [rbx+1D0h],+0h
	mov	rcx,rsi
	mov	[rbx+0D0h],rax
	mov	qword ptr [rbx+8h],+0h
	call	46E310h
	lea	rax,[0000000000496A58]                                 ; [rip+000371F8]
	lea	rdi,[rbx+10h]
	mov	[rbx],rax
	lea	rax,[0000000000496A80]                                 ; [rip+00037212]
	mov	rcx,rdi
	mov	[rbx+0D0h],rax
	call	456E20h
	mov	rdx,rdi
	mov	rcx,rsi
	call	46E310h
	nop
	add	rsp,28h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
000000000045F892       48 89 C7 48 8B 05 84 25 03 00 48 89 F1 48   H..H...%..H..H
000000000045F8A0 83 C0 10 48 89 83 D0 00 00 00 E8 21 DB 00 00 48 ...H.......!...H
000000000045F8B0 89 F9 E8 F9 1C FB FF 48 89 C5 48 89 F9 E8 6E 78 .......H..H...nx
000000000045F8C0 FF FF 48 89 EF EB CE 90 90 90 90 90 90 90 90 90 ..H.............

;; fn000000000045F8D0: 000000000045F8D0
fn000000000045F8D0 proc
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,20h
	mov	rax,[rdx+8h]
	mov	rbx,rcx
	mov	rsi,rdx
	mov	rbp,r8
	mov	r12d,r9d
	lea	rdi,[rbx+10h]
	mov	[rcx],rax
	mov	rcx,[rdx+10h]
	mov	rdx,[rax-18h]
	mov	[rbx+rdx],rcx
	mov	qword ptr [rbx+8h],+0h
	mov	rcx,rbx
	add	rcx,[rax-18h]
	xor	edx,edx
	call	46E310h
	mov	rax,[rsi]
	mov	rcx,rdi
	mov	[rbx],rax
	mov	rax,[rax-18h]
	mov	rdx,[rsi+18h]
	mov	[rbx+rax],rdx
	call	456E20h
	mov	rax,[rbx]
	mov	rcx,rbx
	mov	rdx,rdi
	add	rcx,[rax-18h]
	call	46E310h
	mov	r8d,r12d
	mov	rdx,rbp
	mov	rcx,rdi
	or	r8d,8h
	call	455970h
	test	rax,rax
	mov	rcx,rbx
	mov	rax,[rbx]
	jz	45F973h

l000000000045F95C:
	add	rcx,[rax-18h]
	xor	edx,edx
	call	46E370h
	nop
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret

l000000000045F973:
	add	rcx,[rax-18h]
	mov	edx,[rcx+20h]
	or	edx,4h
	call	46E370h
	nop
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
000000000045F98E                                           48 8B               H.
000000000045F990 56 08 48 89 13 48 8B 52 E8 48 8B 4E 10 48 89 0C V.H..H.R.H.N.H..
000000000045F9A0 13 48 89 C1 E8 07 1C FB FF 48 89 C5 48 89 F9 E8 .H.......H..H...
000000000045F9B0 7C 77 FF FF 48 89 E8 EB D5 90 90 90 90 90 90 90 |w..H...........

;; fn000000000045F9C0: 000000000045F9C0
fn000000000045F9C0 proc
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,20h
	mov	rax,[rdx+8h]
	mov	rbx,rcx
	mov	rsi,rdx
	mov	rbp,r8
	mov	r12d,r9d
	lea	rdi,[rbx+10h]
	mov	[rcx],rax
	mov	rcx,[rdx+10h]
	mov	rdx,[rax-18h]
	mov	[rbx+rdx],rcx
	mov	qword ptr [rbx+8h],+0h
	mov	rcx,rbx
	add	rcx,[rax-18h]
	xor	edx,edx
	call	46E310h
	mov	rax,[rsi]
	mov	rcx,rdi
	mov	[rbx],rax
	mov	rax,[rax-18h]
	mov	rdx,[rsi+18h]
	mov	[rbx+rax],rdx
	call	456E20h
	mov	rax,[rbx]
	mov	rcx,rbx
	mov	rdx,rdi
	add	rcx,[rax-18h]
	call	46E310h
	mov	rdx,[rbp+0h]
	mov	r8d,r12d
	mov	rcx,rdi
	or	r8d,8h
	call	455970h
	test	rax,rax
	mov	rcx,rbx
	mov	rax,[rbx]
	jz	45FA64h

l000000000045FA4D:
	add	rcx,[rax-18h]
	xor	edx,edx
	call	46E370h
	nop
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret

l000000000045FA64:
	add	rcx,[rax-18h]
	mov	edx,[rcx+20h]
	or	edx,4h
	call	46E370h
	nop
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
000000000045FA7F                                              48                H
000000000045FA80 8B 56 08 48 89 13 48 8B 52 E8 48 8B 4E 10 48 89 .V.H..H.R.H.N.H.
000000000045FA90 0C 13 48 89 C1 E8 16 1B FB FF 48 89 C5 48 89 F9 ..H.......H..H..
000000000045FAA0 E8 8B 76 FF FF 48 89 E8 EB D5 90 90 90 90 90 90 ..v..H..........

;; fn000000000045FAB0: 000000000045FAB0
fn000000000045FAB0 proc
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,28h
	mov	rax,[rdx+8h]
	mov	rbx,rcx
	mov	rsi,rdx
	lea	rdi,[rbx+10h]
	mov	[rcx],rax
	mov	rcx,[rdx+10h]
	mov	rdx,[rax-18h]
	mov	[rbx+rdx],rcx
	mov	qword ptr [rbx+8h],+0h
	mov	rcx,rbx
	add	rcx,[rax-18h]
	xor	edx,edx
	call	46E310h
	mov	rax,[rsi]
	mov	rcx,rdi
	mov	[rbx],rax
	mov	rax,[rax-18h]
	mov	rdx,[rsi+18h]
	mov	[rbx+rax],rdx
	call	456E20h
	mov	rax,[rbx]
	mov	rcx,rbx
	mov	rdx,rdi
	add	rcx,[rax-18h]
	call	46E310h
	nop
	add	rsp,28h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
000000000045FB21    48 8B 56 08 48 89 13 48 8B 52 E8 48 8B 4E 10  H.V.H..H.R.H.N.
000000000045FB30 48 89 0C 13 48 89 C1 E8 74 1A FB FF 48 89 C5 48 H...H...t...H..H
000000000045FB40 89 F9 E8 E9 75 FF FF 48 89 E8 EB D5 90 90 90 90 ....u..H........

;; fn000000000045FB50: 000000000045FB50
fn000000000045FB50 proc
	push	rbx
	sub	rsp,20h
	lea	rax,[0000000000496A58]                                 ; [rip+00036EFC]
	mov	rbx,rcx
	lea	rcx,[rcx+10h]
	mov	[rcx-10h],rax
	lea	rax,[0000000000496A80]                                 ; [rip+00036F12]
	mov	[rcx+0C0h],rax
	lea	rax,[0000000000496710]                                 ; [rip+00036B94]
	mov	[rcx],rax
	call	455AB0h
	lea	rcx,[rbx+58h]
	call	4550A0h
	mov	rax,[0000000000491C30]                                 ; [rip+0003209C]
	lea	rcx,[rbx+48h]
	add	rax,10h
	mov	[rbx+10h],rax
	call	46AF20h
	mov	rax,[0000000000491E20]                                 ; [rip+00032274]
	lea	rcx,[rbx+0D0h]
	add	rax,10h
	mov	[rbx+0D0h],rax
	call	46D3D0h
	mov	rcx,rbx
	add	rsp,20h
	pop	rbx
	jmp	475550h

;; fn000000000045FBD0: 000000000045FBD0
;;   Called from:
;;     0000000000402795 (in fn000000000040252C)
;;     0000000000402E2E (in fn0000000000402C4E)
fn000000000045FBD0 proc
	push	rbx
	sub	rsp,20h
	lea	rax,[0000000000496A58]                                 ; [rip+00036E7C]
	mov	rbx,rcx
	lea	rcx,[rcx+10h]
	mov	[rcx-10h],rax
	lea	rax,[0000000000496A80]                                 ; [rip+00036E92]
	mov	[rcx+0C0h],rax
	lea	rax,[0000000000496710]                                 ; [rip+00036B14]
	mov	[rcx],rax
	call	455AB0h
	lea	rcx,[rbx+58h]
	call	4550A0h
	mov	rax,[0000000000491C30]                                 ; [rip+0003201C]
	lea	rcx,[rbx+48h]
	add	rax,10h
	mov	[rbx+10h],rax
	call	46AF20h
	mov	rax,[0000000000491E20]                                 ; [rip+000321F4]
	lea	rcx,[rbx+0D0h]
	add	rax,10h
	mov	[rbx+0D0h],rax
	add	rsp,20h
	pop	rbx
	jmp	46D3D0h
000000000045FC48                         90 90 90 90 90 90 90 90         ........

;; fn000000000045FC50: 000000000045FC50
fn000000000045FC50 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	mov	rax,[rdx]
	mov	rsi,rdx
	mov	rbx,rcx
	lea	rcx,[rcx+10h]
	mov	[rcx-10h],rax
	mov	rax,[rax-18h]
	mov	rdx,[rdx+18h]
	mov	[rcx+rax-10h],rdx
	lea	rax,[0000000000496710]                                 ; [rip+00036A95]
	mov	[rcx],rax
	call	455AB0h
	lea	rcx,[rbx+58h]
	call	4550A0h
	mov	rax,[0000000000491C30]                                 ; [rip+00031F9D]
	lea	rcx,[rbx+48h]
	add	rax,10h
	mov	[rbx+10h],rax
	call	46AF20h
	mov	rax,[rsi+8h]
	mov	[rbx],rax
	mov	rax,[rax-18h]
	mov	rdx,[rsi+10h]
	mov	[rbx+rax],rdx
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret
000000000045FCBE                                           90 90               ..

;; fn000000000045FCC0: 000000000045FCC0
fn000000000045FCC0 proc
	push	rbx
	sub	rsp,20h
	mov	rbx,rcx
	lea	rcx,[rcx+10h]
	or	r8d,8h
	call	4576D0h
	test	rax,rax
	mov	rax,[rbx]
	jz	45FCF0h

l000000000045FCDD:
	add	rbx,[rax-18h]
	xor	edx,edx
	mov	rcx,rbx
	add	rsp,20h
	pop	rbx
	jmp	46EB40h

l000000000045FCF0:
	add	rbx,[rax-18h]
	mov	edx,[rbx+20h]
	mov	rcx,rbx
	or	edx,4h
	add	rsp,20h
	pop	rbx
	jmp	46EB40h
000000000045FD07                      90 90 90 90 90 90 90 90 90        .........

;; fn000000000045FD10: 000000000045FD10
fn000000000045FD10 proc
	push	rbx
	sub	rsp,20h
	mov	rdx,[rdx]
	mov	rbx,rcx
	lea	rcx,[rcx+10h]
	or	r8d,8h
	call	4576D0h
	test	rax,rax
	mov	rax,[rbx]
	jz	45FD43h

l000000000045FD30:
	add	rbx,[rax-18h]
	xor	edx,edx
	mov	rcx,rbx
	add	rsp,20h
	pop	rbx
	jmp	46EB40h

l000000000045FD43:
	add	rbx,[rax-18h]
	mov	edx,[rbx+20h]
	mov	rcx,rbx
	or	edx,4h
	add	rsp,20h
	pop	rbx
	jmp	46EB40h
000000000045FD5A                               90 90 90 90 90 90           ......

;; fn000000000045FD60: 000000000045FD60
fn000000000045FD60 proc
	push	rbx
	sub	rsp,20h
	mov	rbx,rcx
	lea	rcx,[rcx+10h]
	call	457800h
	test	rax,rax
	jz	45FD80h

l000000000045FD76:
	add	rsp,20h
	pop	rbx
	ret
000000000045FD7C                                     0F 1F 40 00             ..@.

l000000000045FD80:
	mov	rax,[rbx]
	add	rbx,[rax-18h]
	mov	edx,[rbx+20h]
	mov	rcx,rbx
	or	edx,4h
	add	rsp,20h
	pop	rbx
	jmp	46EB40h
000000000045FD9A                               90 90 90 90 90 90           ......

;; fn000000000045FDA0: 000000000045FDA0
fn000000000045FDA0 proc
	add	rcx,58h
	jmp	42AA50h
000000000045FDA9                            90 90 90 90 90 90 90          .......

;; fn000000000045FDB0: 000000000045FDB0
fn000000000045FDB0 proc
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,20h
	lea	rsi,[rcx+0D0h]
	mov	rbx,rcx
	mov	rbp,rdx
	mov	r12d,r8d
	mov	rcx,rsi
	call	46D320h
	xor	eax,eax
	mov	qword ptr [rbx+1A8h],+0h
	mov	byte ptr [rbx+1B2h],0h
	mov	[rbx+1B0h],ax
	lea	rax,[0000000000492D58]                                 ; [rip+00032F64]
	mov	qword ptr [rbx+1B8h],+0h
	mov	qword ptr [rbx+1C0h],+0h
	mov	qword ptr [rbx+1C8h],+0h
	xor	edx,edx
	mov	[rbx],rax
	lea	rax,[0000000000492D80]                                 ; [rip+00032F5F]
	mov	qword ptr [rbx+1D0h],+0h
	mov	qword ptr [rbx+8h],+0h
	mov	rcx,rsi
	mov	[rbx+0D0h],rax
	call	46EAE0h
	lea	rax,[0000000000496AD8]                                 ; [rip+00036C8E]
	lea	rdi,[rbx+10h]
	mov	[rbx],rax
	lea	rax,[0000000000496B00]                                 ; [rip+00036CA8]
	mov	rcx,rdi
	mov	[rbx+0D0h],rax
	call	458BE0h
	mov	rdx,rdi
	mov	rcx,rsi
	call	46EAE0h
	mov	r8d,r12d
	mov	rdx,rbp
	mov	rcx,rdi
	or	r8d,8h
	call	4576D0h
	test	rax,rax
	mov	rcx,rbx
	mov	rax,[rbx]
	jz	45FEB0h

l000000000045FE8F:
	add	rcx,[rax-18h]
	xor	edx,edx
	call	46EB40h
	nop
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
000000000045FEA6                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l000000000045FEB0:
	add	rcx,[rax-18h]
	mov	edx,[rcx+20h]
	or	edx,4h
	call	46EB40h
	nop
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
000000000045FECB                                  48 89 C7 48 8B            H..H.
000000000045FED0 05 5B 1F 03 00 48 89 F1 48 83 C0 10 48 89 83 D0 .[...H..H...H...
000000000045FEE0 00 00 00 E8 E8 D4 00 00 48 89 F9 E8 C0 16 FB FF ........H.......
000000000045FEF0 48 89 C5 48 89 F9 E8 15 90 FF FF 48 89 EF EB CE H..H.......H....

;; fn000000000045FF00: 000000000045FF00
fn000000000045FF00 proc
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,20h
	lea	rsi,[rcx+0D0h]
	mov	rbx,rcx
	mov	rbp,rdx
	mov	r12d,r8d
	mov	rcx,rsi
	call	46D320h
	xor	eax,eax
	mov	qword ptr [rbx+1A8h],+0h
	mov	byte ptr [rbx+1B2h],0h
	mov	[rbx+1B0h],ax
	lea	rax,[0000000000492D58]                                 ; [rip+00032E14]
	mov	qword ptr [rbx+1B8h],+0h
	mov	qword ptr [rbx+1C0h],+0h
	mov	qword ptr [rbx+1C8h],+0h
	xor	edx,edx
	mov	[rbx],rax
	lea	rax,[0000000000492D80]                                 ; [rip+00032E0F]
	mov	qword ptr [rbx+1D0h],+0h
	mov	qword ptr [rbx+8h],+0h
	mov	rcx,rsi
	mov	[rbx+0D0h],rax
	call	46EAE0h
	lea	rax,[0000000000496AD8]                                 ; [rip+00036B3E]
	lea	rdi,[rbx+10h]
	mov	[rbx],rax
	lea	rax,[0000000000496B00]                                 ; [rip+00036B58]
	mov	rcx,rdi
	mov	[rbx+0D0h],rax
	call	458BE0h
	mov	rdx,rdi
	mov	rcx,rsi
	call	46EAE0h
	mov	rdx,[rbp+0h]
	mov	r8d,r12d
	mov	rcx,rdi
	or	r8d,8h
	call	4576D0h
	test	rax,rax
	mov	rcx,rbx
	mov	rax,[rbx]
	jz	460000h

l000000000045FFE0:
	add	rcx,[rax-18h]
	xor	edx,edx
	call	46EB40h
	nop
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
000000000045FFF7                      66 0F 1F 84 00 00 00 00 00        f........

l0000000000460000:
	add	rcx,[rax-18h]
	mov	edx,[rcx+20h]
	or	edx,4h
	call	46EB40h
	nop
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
000000000046001B                                  48 89 C7 48 8B            H..H.
0000000000460020 05 0B 1E 03 00 48 89 F1 48 83 C0 10 48 89 83 D0 .....H..H...H...
0000000000460030 00 00 00 E8 98 D3 00 00 48 89 F9 E8 70 15 FB FF ........H...p...
0000000000460040 48 89 C5 48 89 F9 E8 C5 8E FF FF 48 89 EF EB CE H..H.......H....

;; fn0000000000460050: 0000000000460050
fn0000000000460050 proc
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,28h
	lea	rsi,[rcx+0D0h]
	mov	rbx,rcx
	mov	rcx,rsi
	call	46D320h
	xor	eax,eax
	mov	qword ptr [rbx+1A8h],+0h
	mov	byte ptr [rbx+1B2h],0h
	mov	[rbx+1B0h],ax
	lea	rax,[0000000000492D58]                                 ; [rip+00032CCC]
	mov	qword ptr [rbx+1B8h],+0h
	mov	qword ptr [rbx+1C0h],+0h
	mov	qword ptr [rbx+1C8h],+0h
	xor	edx,edx
	mov	[rbx],rax
	lea	rax,[0000000000492D80]                                 ; [rip+00032CC7]
	mov	qword ptr [rbx+1D0h],+0h
	mov	qword ptr [rbx+8h],+0h
	mov	rcx,rsi
	mov	[rbx+0D0h],rax
	call	46EAE0h
	lea	rax,[0000000000496AD8]                                 ; [rip+000369F6]
	lea	rdi,[rbx+10h]
	mov	[rbx],rax
	lea	rax,[0000000000496B00]                                 ; [rip+00036A10]
	mov	rcx,rdi
	mov	[rbx+0D0h],rax
	call	458BE0h
	mov	rdx,rdi
	mov	rcx,rsi
	call	46EAE0h
	nop
	add	rsp,28h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
0000000000460114             48 89 C7 48 8B 05 12 1D 03 00 48 89     H..H......H.
0000000000460120 F1 48 83 C0 10 48 89 83 D0 00 00 00 E8 9F D2 00 .H...H..........
0000000000460130 00 48 89 F9 E8 77 14 FB FF 48 89 C5 48 89 F9 E8 .H...w...H..H...
0000000000460140 CC 8D FF FF 48 89 EF EB CE 90 90 90 90 90 90 90 ....H...........

;; fn0000000000460150: 0000000000460150
fn0000000000460150 proc
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,20h
	mov	rax,[rdx+8h]
	mov	rbx,rcx
	mov	rsi,rdx
	mov	rbp,r8
	mov	r12d,r9d
	lea	rdi,[rbx+10h]
	mov	[rcx],rax
	mov	rcx,[rdx+10h]
	mov	rdx,[rax-18h]
	mov	[rbx+rdx],rcx
	mov	qword ptr [rbx+8h],+0h
	mov	rcx,rbx
	add	rcx,[rax-18h]
	xor	edx,edx
	call	46EAE0h
	mov	rax,[rsi]
	mov	rcx,rdi
	mov	[rbx],rax
	mov	rax,[rax-18h]
	mov	rdx,[rsi+18h]
	mov	[rbx+rax],rdx
	call	458BE0h
	mov	rax,[rbx]
	mov	rcx,rbx
	mov	rdx,rdi
	add	rcx,[rax-18h]
	call	46EAE0h
	mov	r8d,r12d
	mov	rdx,rbp
	mov	rcx,rdi
	or	r8d,8h
	call	4576D0h
	test	rax,rax
	mov	rcx,rbx
	mov	rax,[rbx]
	jz	4601F3h

l00000000004601DC:
	add	rcx,[rax-18h]
	xor	edx,edx
	call	46EB40h
	nop
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret

l00000000004601F3:
	add	rcx,[rax-18h]
	mov	edx,[rcx+20h]
	or	edx,4h
	call	46EB40h
	nop
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
000000000046020E                                           48 8B               H.
0000000000460210 56 08 48 89 13 48 8B 52 E8 48 8B 4E 10 48 89 0C V.H..H.R.H.N.H..
0000000000460220 13 48 89 C1 E8 87 13 FB FF 48 89 C5 48 89 F9 E8 .H.......H..H...
0000000000460230 DC 8C FF FF 48 89 E8 EB D5 90 90 90 90 90 90 90 ....H...........

;; fn0000000000460240: 0000000000460240
fn0000000000460240 proc
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,20h
	mov	rax,[rdx+8h]
	mov	rbx,rcx
	mov	rsi,rdx
	mov	rbp,r8
	mov	r12d,r9d
	lea	rdi,[rbx+10h]
	mov	[rcx],rax
	mov	rcx,[rdx+10h]
	mov	rdx,[rax-18h]
	mov	[rbx+rdx],rcx
	mov	qword ptr [rbx+8h],+0h
	mov	rcx,rbx
	add	rcx,[rax-18h]
	xor	edx,edx
	call	46EAE0h
	mov	rax,[rsi]
	mov	rcx,rdi
	mov	[rbx],rax
	mov	rax,[rax-18h]
	mov	rdx,[rsi+18h]
	mov	[rbx+rax],rdx
	call	458BE0h
	mov	rax,[rbx]
	mov	rcx,rbx
	mov	rdx,rdi
	add	rcx,[rax-18h]
	call	46EAE0h
	mov	rdx,[rbp+0h]
	mov	r8d,r12d
	mov	rcx,rdi
	or	r8d,8h
	call	4576D0h
	test	rax,rax
	mov	rcx,rbx
	mov	rax,[rbx]
	jz	4602E4h

l00000000004602CD:
	add	rcx,[rax-18h]
	xor	edx,edx
	call	46EB40h
	nop
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret

l00000000004602E4:
	add	rcx,[rax-18h]
	mov	edx,[rcx+20h]
	or	edx,4h
	call	46EB40h
	nop
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
00000000004602FF                                              48                H
0000000000460300 8B 56 08 48 89 13 48 8B 52 E8 48 8B 4E 10 48 89 .V.H..H.R.H.N.H.
0000000000460310 0C 13 48 89 C1 E8 96 12 FB FF 48 89 C5 48 89 F9 ..H.......H..H..
0000000000460320 E8 EB 8B FF FF 48 89 E8 EB D5 90 90 90 90 90 90 .....H..........

;; fn0000000000460330: 0000000000460330
fn0000000000460330 proc
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,28h
	mov	rax,[rdx+8h]
	mov	rbx,rcx
	mov	rsi,rdx
	lea	rdi,[rbx+10h]
	mov	[rcx],rax
	mov	rcx,[rdx+10h]
	mov	rdx,[rax-18h]
	mov	[rbx+rdx],rcx
	mov	qword ptr [rbx+8h],+0h
	mov	rcx,rbx
	add	rcx,[rax-18h]
	xor	edx,edx
	call	46EAE0h
	mov	rax,[rsi]
	mov	rcx,rdi
	mov	[rbx],rax
	mov	rax,[rax-18h]
	mov	rdx,[rsi+18h]
	mov	[rbx+rax],rdx
	call	458BE0h
	mov	rax,[rbx]
	mov	rcx,rbx
	mov	rdx,rdi
	add	rcx,[rax-18h]
	call	46EAE0h
	nop
	add	rsp,28h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
00000000004603A1    48 8B 56 08 48 89 13 48 8B 52 E8 48 8B 4E 10  H.V.H..H.R.H.N.
00000000004603B0 48 89 0C 13 48 89 C1 E8 F4 11 FB FF 48 89 C5 48 H...H.......H..H
00000000004603C0 89 F9 E8 49 8B FF FF 48 89 E8 EB D5 90 90 90 90 ...I...H........

;; fn00000000004603D0: 00000000004603D0
fn00000000004603D0 proc
	push	rbx
	sub	rsp,20h
	lea	rax,[0000000000496AD8]                                 ; [rip+000366FC]
	mov	rbx,rcx
	lea	rcx,[rcx+10h]
	mov	[rcx-10h],rax
	lea	rax,[0000000000496B00]                                 ; [rip+00036712]
	mov	[rcx+0C0h],rax
	lea	rax,[0000000000496790]                                 ; [rip+00036394]
	mov	[rcx],rax
	call	457800h
	lea	rcx,[rbx+58h]
	call	4550A0h
	mov	rax,[0000000000491C40]                                 ; [rip+0003182C]
	lea	rcx,[rbx+48h]
	add	rax,10h
	mov	[rbx+10h],rax
	call	46AF20h
	mov	rax,[0000000000491E30]                                 ; [rip+00031A04]
	lea	rcx,[rbx+0D0h]
	add	rax,10h
	mov	[rbx+0D0h],rax
	call	46D3D0h
	mov	rcx,rbx
	add	rsp,20h
	pop	rbx
	jmp	475550h

;; fn0000000000460450: 0000000000460450
fn0000000000460450 proc
	push	rbx
	sub	rsp,20h
	lea	rax,[0000000000496AD8]                                 ; [rip+0003667C]
	mov	rbx,rcx
	lea	rcx,[rcx+10h]
	mov	[rcx-10h],rax
	lea	rax,[0000000000496B00]                                 ; [rip+00036692]
	mov	[rcx+0C0h],rax
	lea	rax,[0000000000496790]                                 ; [rip+00036314]
	mov	[rcx],rax
	call	457800h
	lea	rcx,[rbx+58h]
	call	4550A0h
	mov	rax,[0000000000491C40]                                 ; [rip+000317AC]
	lea	rcx,[rbx+48h]
	add	rax,10h
	mov	[rbx+10h],rax
	call	46AF20h
	mov	rax,[0000000000491E30]                                 ; [rip+00031984]
	lea	rcx,[rbx+0D0h]
	add	rax,10h
	mov	[rbx+0D0h],rax
	add	rsp,20h
	pop	rbx
	jmp	46D3D0h
00000000004604C8                         90 90 90 90 90 90 90 90         ........

;; fn00000000004604D0: 00000000004604D0
fn00000000004604D0 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	mov	rax,[rdx]
	mov	rsi,rdx
	mov	rbx,rcx
	lea	rcx,[rcx+10h]
	mov	[rcx-10h],rax
	mov	rax,[rax-18h]
	mov	rdx,[rdx+18h]
	mov	[rcx+rax-10h],rdx
	lea	rax,[0000000000496790]                                 ; [rip+00036295]
	mov	[rcx],rax
	call	457800h
	lea	rcx,[rbx+58h]
	call	4550A0h
	mov	rax,[0000000000491C40]                                 ; [rip+0003172D]
	lea	rcx,[rbx+48h]
	add	rax,10h
	mov	[rbx+10h],rax
	call	46AF20h
	mov	rax,[rsi+8h]
	mov	[rbx],rax
	mov	rax,[rax-18h]
	mov	rdx,[rsi+10h]
	mov	[rbx+rax],rdx
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret
000000000046053E                                           90 90               ..

;; fn0000000000460540: 0000000000460540
fn0000000000460540 proc
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,20h
	lea	rsi,[rcx+18h]
	mov	rbx,rcx
	mov	rdi,rdx
	mov	rcx,rsi
	call	46D320h
	xor	eax,eax
	mov	qword ptr [rbx+0F0h],+0h
	mov	byte ptr [rbx+0FAh],0h
	mov	[rbx+0F8h],ax
	lea	rax,[0000000000492DD8]                                 ; [rip+0003285D]
	mov	qword ptr [rbx+100h],+0h
	mov	qword ptr [rbx+108h],+0h
	mov	qword ptr [rbx+110h],+0h
	mov	rdx,rdi
	mov	[rbx],rax
	lea	rax,[0000000000492E00]                                 ; [rip+00032857]
	mov	qword ptr [rbx+118h],+0h
	mov	qword ptr [rbx+8h],+0h
	mov	rcx,rsi
	mov	[rbx+18h],rax
	call	46EAE0h
	lea	rax,[0000000000492E58]                                 ; [rip+00032889]
	mov	rdx,rdi
	mov	rcx,rsi
	mov	[rbx+10h],rax
	lea	rax,[0000000000492E80]                                 ; [rip+000328A0]
	mov	[rbx+18h],rax
	call	46EAE0h
	lea	rax,[0000000000496B58]                                 ; [rip+00036568]
	mov	[rbx],rax
	lea	rax,[0000000000496BA8]                                 ; [rip+000365AE]
	mov	[rbx+18h],rax
	lea	rax,[0000000000496B80]                                 ; [rip+0003657B]
	mov	[rbx+10h],rax
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	ret
0000000000460611    48 89 C7 48 8B 05 15 18 03 00 48 89 F1 48 8D  H..H......H..H.
0000000000460620 50 10 48 89 53 18 E8 A5 CD 00 00 48 89 F9 E8 7D P.H.S......H...}
0000000000460630 0F FB FF 90 90 90 90 90 90 90 90 90 90 90 90 90 ................

;; fn0000000000460640: 0000000000460640
fn0000000000460640 proc
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,20h
	lea	rsi,[rcx+18h]
	mov	rbx,rcx
	mov	rcx,rsi
	call	46D320h
	xor	eax,eax
	mov	qword ptr [rbx+0F0h],+0h
	mov	byte ptr [rbx+0FAh],0h
	mov	[rbx+0F8h],ax
	lea	rax,[0000000000492DD8]                                 ; [rip+00032760]
	mov	qword ptr [rbx+100h],+0h
	mov	qword ptr [rbx+108h],+0h
	mov	qword ptr [rbx+110h],+0h
	xor	edx,edx
	mov	[rbx],rax
	lea	rax,[0000000000492E00]                                 ; [rip+0003275B]
	mov	qword ptr [rbx+118h],+0h
	mov	qword ptr [rbx+8h],+0h
	mov	rcx,rsi
	mov	[rbx+18h],rax
	call	46EAE0h
	lea	rax,[0000000000492E58]                                 ; [rip+0003278D]
	xor	edx,edx
	mov	rcx,rsi
	mov	[rbx+10h],rax
	lea	rax,[0000000000492E80]                                 ; [rip+000327A5]
	mov	[rbx+18h],rax
	call	46EAE0h
	lea	rax,[0000000000496B58]                                 ; [rip+0003646D]
	mov	[rbx],rax
	lea	rax,[0000000000496BA8]                                 ; [rip+000364B3]
	mov	[rbx+18h],rax
	lea	rax,[0000000000496B80]                                 ; [rip+00036480]
	mov	[rbx+10h],rax
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	ret
000000000046070C                                     48 89 C7 48             H..H
0000000000460710 8B 05 1A 17 03 00 48 89 F1 48 8D 50 10 48 89 53 ......H..H.P.H.S
0000000000460720 18 E8 AA CC 00 00 48 89 F9 E8 82 0E FB FF 90 90 ......H.........

;; fn0000000000460730: 0000000000460730
fn0000000000460730 proc
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
	call	46EAE0h
	mov	rax,[rsi+18h]
	mov	rdx,rdi
	mov	[rbx+10h],rax
	mov	rax,[rax-18h]
	lea	rcx,[rbx+rax+10h]
	mov	rax,[rsi+20h]
	mov	[rcx],rax
	call	46EAE0h
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
00000000004607AC                                     48 8B 56 08             H.V.
00000000004607B0 48 89 13 48 8B 52 E8 48 8B 4E 10 48 89 0C 13 48 H..H.R.H.N.H...H
00000000004607C0 89 C1 E8 E9 0D FB FF 90 90 90 90 90 90 90 90 90 ................

;; fn00000000004607D0: 00000000004607D0
fn00000000004607D0 proc
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
	call	46EAE0h
	mov	rax,[rsi+18h]
	xor	edx,edx
	mov	[rbx+10h],rax
	mov	rax,[rax-18h]
	lea	rcx,[rbx+rax+10h]
	mov	rax,[rsi+20h]
	mov	[rcx],rax
	call	46EAE0h
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
0000000000460845                48 8B 56 08 48 89 13 48 8B 52 E8      H.V.H..H.R.
0000000000460850 48 8B 4E 10 48 89 0C 13 48 89 C1 E8 50 0D FB FF H.N.H...H...P...
0000000000460860 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 ................

;; fn0000000000460870: 0000000000460870
fn0000000000460870 proc
	push	rbx
	sub	rsp,20h
	mov	rax,[0000000000491E30]                                 ; [rip+000315B4]
	mov	rbx,rcx
	lea	rcx,[rcx+18h]
	add	rax,10h
	mov	[rcx],rax
	call	46D3D0h
	mov	rcx,rbx
	add	rsp,20h
	pop	rbx
	jmp	475550h
000000000046089C                                     90 90 90 90             ....

;; fn00000000004608A0: 00000000004608A0
fn00000000004608A0 proc
	mov	rax,[0000000000491E30]                                 ; [rip+00031589]
	add	rcx,18h
	add	rax,10h
	mov	[rcx],rax
	jmp	46D3D0h
00000000004608B7                      90 90 90 90 90 90 90 90 90        .........

;; fn00000000004608C0: 00000000004608C0
fn00000000004608C0 proc
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
0000000000460903          90 90 90 90 90 90 90 90 90 90 90 90 90    .............

;; fn0000000000460910: 0000000000460910
fn0000000000460910 proc
	push	rbx
	sub	rsp,20h
	mov	rbx,rcx
	lea	rcx,[rcx+8h]
	or	r8d,10h
	call	455970h
	test	rax,rax
	mov	rax,[rbx]
	jz	460940h

l000000000046092D:
	add	rbx,[rax-18h]
	xor	edx,edx
	mov	rcx,rbx
	add	rsp,20h
	pop	rbx
	jmp	46E370h

l0000000000460940:
	add	rbx,[rax-18h]
	mov	edx,[rbx+20h]
	mov	rcx,rbx
	or	edx,4h
	add	rsp,20h
	pop	rbx
	jmp	46E370h
0000000000460957                      90 90 90 90 90 90 90 90 90        .........

;; fn0000000000460960: 0000000000460960
fn0000000000460960 proc
	push	rbx
	sub	rsp,20h
	mov	rdx,[rdx]
	mov	rbx,rcx
	lea	rcx,[rcx+8h]
	or	r8d,10h
	call	455970h
	test	rax,rax
	mov	rax,[rbx]
	jz	460993h

l0000000000460980:
	add	rbx,[rax-18h]
	xor	edx,edx
	mov	rcx,rbx
	add	rsp,20h
	pop	rbx
	jmp	46E370h

l0000000000460993:
	add	rbx,[rax-18h]
	mov	edx,[rbx+20h]
	mov	rcx,rbx
	or	edx,4h
	add	rsp,20h
	pop	rbx
	jmp	46E370h
00000000004609AA                               90 90 90 90 90 90           ......

;; fn00000000004609B0: 00000000004609B0
fn00000000004609B0 proc
	push	rbx
	sub	rsp,20h
	mov	rbx,rcx
	lea	rcx,[rcx+8h]
	call	455AB0h
	test	rax,rax
	jz	4609D0h

l00000000004609C6:
	add	rsp,20h
	pop	rbx
	ret
00000000004609CC                                     0F 1F 40 00             ..@.

l00000000004609D0:
	mov	rax,[rbx]
	add	rbx,[rax-18h]
	mov	edx,[rbx+20h]
	mov	rcx,rbx
	or	edx,4h
	add	rsp,20h
	pop	rbx
	jmp	46E370h
00000000004609EA                               90 90 90 90 90 90           ......

;; fn00000000004609F0: 00000000004609F0
fn00000000004609F0 proc
	add	rcx,50h
	jmp	42AA50h
00000000004609F9                            90 90 90 90 90 90 90          .......

;; fn0000000000460A00: 0000000000460A00
;;   Called from:
;;     0000000000402AD5 (in fn0000000000402A94)
;;     0000000000402FFE (in fn0000000000402E6F)
fn0000000000460A00 proc
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,20h
	lea	rsi,[rcx+0C8h]
	mov	rbx,rcx
	mov	rbp,rdx
	mov	r12d,r8d
	mov	rcx,rsi
	call	46D320h
	lea	rax,[0000000000492ED8]                                 ; [rip+000324AF]
	mov	qword ptr [rbx+1A0h],+0h
	mov	byte ptr [rbx+1A8h],0h
	mov	byte ptr [rbx+1A9h],0h
	mov	qword ptr [rbx+1B0h],+0h
	xor	edx,edx
	mov	[rbx],rax
	lea	rax,[0000000000492F00]                                 ; [rip+000324A7]
	mov	qword ptr [rbx+1B8h],+0h
	mov	qword ptr [rbx+1C0h],+0h
	mov	qword ptr [rbx+1C8h],+0h
	mov	rcx,rsi
	mov	[rbx+0C8h],rax
	call	46E310h
	lea	rax,[0000000000496BD8]                                 ; [rip+00036148]
	lea	rdi,[rbx+8h]
	mov	[rbx],rax
	lea	rax,[0000000000496C00]                                 ; [rip+00036162]
	mov	rcx,rdi
	mov	[rbx+0C8h],rax
	call	456E20h
	mov	rdx,rdi
	mov	rcx,rsi
	call	46E310h
	mov	r8d,r12d
	mov	rdx,rbp
	mov	rcx,rdi
	or	r8d,10h
	call	455970h
	test	rax,rax
	mov	rcx,rbx
	mov	rax,[rbx]
	jz	460AF0h

l0000000000460AD5:
	add	rcx,[rax-18h]
	xor	edx,edx
	call	46E370h
	nop
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
0000000000460AEC                                     0F 1F 40 00             ..@.

l0000000000460AF0:
	add	rcx,[rax-18h]
	mov	edx,[rcx+20h]
	or	edx,4h
	call	46E370h
	nop
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
0000000000460B0B                                  48 89 C7 48 8B            H..H.
0000000000460B10 05 0B 13 03 00 48 89 F1 48 83 C0 10 48 89 83 C8 .....H..H...H...
0000000000460B20 00 00 00 E8 A8 C8 00 00 48 89 F9 E8 80 0A FB FF ........H.......
0000000000460B30 48 89 C5 48 89 F9 E8 F5 65 FF FF 48 89 EF EB CE H..H....e..H....

;; fn0000000000460B40: 0000000000460B40
fn0000000000460B40 proc
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,20h
	lea	rsi,[rcx+0C8h]
	mov	rbx,rcx
	mov	rbp,rdx
	mov	r12d,r8d
	mov	rcx,rsi
	call	46D320h
	lea	rax,[0000000000492ED8]                                 ; [rip+0003236F]
	mov	qword ptr [rbx+1A0h],+0h
	mov	byte ptr [rbx+1A8h],0h
	mov	byte ptr [rbx+1A9h],0h
	mov	qword ptr [rbx+1B0h],+0h
	xor	edx,edx
	mov	[rbx],rax
	lea	rax,[0000000000492F00]                                 ; [rip+00032367]
	mov	qword ptr [rbx+1B8h],+0h
	mov	qword ptr [rbx+1C0h],+0h
	mov	qword ptr [rbx+1C8h],+0h
	mov	rcx,rsi
	mov	[rbx+0C8h],rax
	call	46E310h
	lea	rax,[0000000000496BD8]                                 ; [rip+00036008]
	lea	rdi,[rbx+8h]
	mov	[rbx],rax
	lea	rax,[0000000000496C00]                                 ; [rip+00036022]
	mov	rcx,rdi
	mov	[rbx+0C8h],rax
	call	456E20h
	mov	rdx,rdi
	mov	rcx,rsi
	call	46E310h
	mov	rdx,[rbp+0h]
	mov	r8d,r12d
	mov	rcx,rdi
	or	r8d,10h
	call	455970h
	test	rax,rax
	mov	rcx,rbx
	mov	rax,[rbx]
	jz	460C30h

l0000000000460C16:
	add	rcx,[rax-18h]
	xor	edx,edx
	call	46E370h
	nop
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
0000000000460C2D                                        0F 1F 00              ...

l0000000000460C30:
	add	rcx,[rax-18h]
	mov	edx,[rcx+20h]
	or	edx,4h
	call	46E370h
	nop
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
0000000000460C4B                                  48 89 C7 48 8B            H..H.
0000000000460C50 05 CB 11 03 00 48 89 F1 48 83 C0 10 48 89 83 C8 .....H..H...H...
0000000000460C60 00 00 00 E8 68 C7 00 00 48 89 F9 E8 40 09 FB FF ....h...H...@...
0000000000460C70 48 89 C5 48 89 F9 E8 B5 64 FF FF 48 89 EF EB CE H..H....d..H....

;; fn0000000000460C80: 0000000000460C80
fn0000000000460C80 proc
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,28h
	lea	rsi,[rcx+0C8h]
	mov	rbx,rcx
	mov	rcx,rsi
	call	46D320h
	lea	rax,[0000000000492ED8]                                 ; [rip+00032237]
	mov	qword ptr [rbx+1A0h],+0h
	mov	byte ptr [rbx+1A8h],0h
	mov	byte ptr [rbx+1A9h],0h
	mov	qword ptr [rbx+1B0h],+0h
	xor	edx,edx
	mov	[rbx],rax
	lea	rax,[0000000000492F00]                                 ; [rip+0003222F]
	mov	qword ptr [rbx+1B8h],+0h
	mov	qword ptr [rbx+1C0h],+0h
	mov	qword ptr [rbx+1C8h],+0h
	mov	rcx,rsi
	mov	[rbx+0C8h],rax
	call	46E310h
	lea	rax,[0000000000496BD8]                                 ; [rip+00035ED0]
	lea	rdi,[rbx+8h]
	mov	[rbx],rax
	lea	rax,[0000000000496C00]                                 ; [rip+00035EEA]
	mov	rcx,rdi
	mov	[rbx+0C8h],rax
	call	456E20h
	mov	rdx,rdi
	mov	rcx,rsi
	call	46E310h
	nop
	add	rsp,28h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
0000000000460D3A                               48 89 C7 48 8B 05           H..H..
0000000000460D40 DC 10 03 00 48 89 F1 48 83 C0 10 48 89 83 C8 00 ....H..H...H....
0000000000460D50 00 00 E8 79 C6 00 00 48 89 F9 E8 51 08 FB FF 48 ...y...H...Q...H
0000000000460D60 89 C5 48 89 F9 E8 C6 63 FF FF 48 89 EF EB CE 90 ..H....c..H.....

;; fn0000000000460D70: 0000000000460D70
fn0000000000460D70 proc
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,20h
	mov	rax,[rdx+8h]
	mov	rbx,rcx
	mov	rsi,rdx
	mov	rbp,r8
	mov	r12d,r9d
	lea	rdi,[rbx+8h]
	mov	[rcx],rax
	add	rcx,[rax-18h]
	mov	rax,[rdx+10h]
	xor	edx,edx
	mov	[rcx],rax
	call	46E310h
	mov	rax,[rsi]
	mov	rcx,rdi
	mov	[rbx],rax
	mov	rax,[rax-18h]
	mov	rdx,[rsi+18h]
	mov	[rbx+rax],rdx
	call	456E20h
	mov	rax,[rbx]
	mov	rcx,rbx
	mov	rdx,rdi
	add	rcx,[rax-18h]
	call	46E310h
	mov	r8d,r12d
	mov	rdx,rbp
	mov	rcx,rdi
	or	r8d,10h
	call	455970h
	test	rax,rax
	mov	rcx,rbx
	mov	rax,[rbx]
	jz	460E03h

l0000000000460DEC:
	add	rcx,[rax-18h]
	xor	edx,edx
	call	46E370h
	nop
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret

l0000000000460E03:
	add	rcx,[rax-18h]
	mov	edx,[rcx+20h]
	or	edx,4h
	call	46E370h
	nop
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
0000000000460E1E                                           48 8B               H.
0000000000460E20 56 08 48 89 13 48 8B 52 E8 48 8B 4E 10 48 89 0C V.H..H.R.H.N.H..
0000000000460E30 13 48 89 C1 E8 77 07 FB FF 48 89 C5 48 89 F9 E8 .H...w...H..H...
0000000000460E40 EC 62 FF FF 48 89 E8 EB D5 90 90 90 90 90 90 90 .b..H...........

;; fn0000000000460E50: 0000000000460E50
fn0000000000460E50 proc
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,20h
	mov	rax,[rdx+8h]
	mov	rbx,rcx
	mov	rsi,rdx
	mov	rbp,r8
	mov	r12d,r9d
	lea	rdi,[rbx+8h]
	mov	[rcx],rax
	add	rcx,[rax-18h]
	mov	rax,[rdx+10h]
	xor	edx,edx
	mov	[rcx],rax
	call	46E310h
	mov	rax,[rsi]
	mov	rcx,rdi
	mov	[rbx],rax
	mov	rax,[rax-18h]
	mov	rdx,[rsi+18h]
	mov	[rbx+rax],rdx
	call	456E20h
	mov	rax,[rbx]
	mov	rcx,rbx
	mov	rdx,rdi
	add	rcx,[rax-18h]
	call	46E310h
	mov	rdx,[rbp+0h]
	mov	r8d,r12d
	mov	rcx,rdi
	or	r8d,10h
	call	455970h
	test	rax,rax
	mov	rcx,rbx
	mov	rax,[rbx]
	jz	460EE4h

l0000000000460ECD:
	add	rcx,[rax-18h]
	xor	edx,edx
	call	46E370h
	nop
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret

l0000000000460EE4:
	add	rcx,[rax-18h]
	mov	edx,[rcx+20h]
	or	edx,4h
	call	46E370h
	nop
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
0000000000460EFF                                              48                H
0000000000460F00 8B 56 08 48 89 13 48 8B 52 E8 48 8B 4E 10 48 89 .V.H..H.R.H.N.H.
0000000000460F10 0C 13 48 89 C1 E8 96 06 FB FF 48 89 C5 48 89 F9 ..H.......H..H..
0000000000460F20 E8 0B 62 FF FF 48 89 E8 EB D5 90 90 90 90 90 90 ..b..H..........

;; fn0000000000460F30: 0000000000460F30
fn0000000000460F30 proc
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,28h
	mov	rax,[rdx+8h]
	mov	rbx,rcx
	mov	rsi,rdx
	lea	rdi,[rbx+8h]
	mov	[rcx],rax
	add	rcx,[rax-18h]
	mov	rax,[rdx+10h]
	xor	edx,edx
	mov	[rcx],rax
	call	46E310h
	mov	rax,[rsi]
	mov	rcx,rdi
	mov	[rbx],rax
	mov	rax,[rax-18h]
	mov	rdx,[rsi+18h]
	mov	[rbx+rax],rdx
	call	456E20h
	mov	rax,[rbx]
	mov	rcx,rbx
	mov	rdx,rdi
	add	rcx,[rax-18h]
	call	46E310h
	nop
	add	rsp,28h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
0000000000460F91    48 8B 56 08 48 89 13 48 8B 52 E8 48 8B 4E 10  H.V.H..H.R.H.N.
0000000000460FA0 48 89 0C 13 48 89 C1 E8 04 06 FB FF 48 89 C5 48 H...H.......H..H
0000000000460FB0 89 F9 E8 79 61 FF FF 48 89 E8 EB D5 90 90 90 90 ...ya..H........

;; fn0000000000460FC0: 0000000000460FC0
fn0000000000460FC0 proc
	push	rbx
	sub	rsp,20h
	lea	rax,[0000000000496BD8]                                 ; [rip+00035C0C]
	mov	rbx,rcx
	lea	rcx,[rcx+8h]
	mov	[rcx-8h],rax
	lea	rax,[0000000000496C00]                                 ; [rip+00035C22]
	mov	[rcx+0C0h],rax
	lea	rax,[0000000000496710]                                 ; [rip+00035724]
	mov	[rcx],rax
	call	455AB0h
	lea	rcx,[rbx+50h]
	call	4550A0h
	mov	rax,[0000000000491C30]                                 ; [rip+00030C2C]
	lea	rcx,[rbx+40h]
	add	rax,10h
	mov	[rbx+8h],rax
	call	46AF20h
	mov	rax,[0000000000491E20]                                 ; [rip+00030E04]
	lea	rcx,[rbx+0C8h]
	add	rax,10h
	mov	[rbx+0C8h],rax
	call	46D3D0h
	mov	rcx,rbx
	add	rsp,20h
	pop	rbx
	jmp	475550h
