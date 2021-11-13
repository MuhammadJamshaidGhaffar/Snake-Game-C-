;;; Segment .text (0000000000401000)

;; fn0000000000461040: 0000000000461040
;;   Called from:
;;     0000000000402C1A (in fn0000000000402A94)
;;     0000000000403094 (in fn0000000000402E6F)
fn0000000000461040 proc
	push	rbx
	sub	rsp,20h
	lea	rax,[0000000000496BD8]                                 ; [rip+00035B8C]
	mov	rbx,rcx
	lea	rcx,[rcx+8h]
	mov	[rcx-8h],rax
	lea	rax,[0000000000496C00]                                 ; [rip+00035BA2]
	mov	[rcx+0C0h],rax
	lea	rax,[0000000000496710]                                 ; [rip+000356A4]
	mov	[rcx],rax
	call	455AB0h
	lea	rcx,[rbx+50h]
	call	4550A0h
	mov	rax,[0000000000491C30]                                 ; [rip+00030BAC]
	lea	rcx,[rbx+40h]
	add	rax,10h
	mov	[rbx+8h],rax
	call	46AF20h
	mov	rax,[0000000000491E20]                                 ; [rip+00030D84]
	lea	rcx,[rbx+0C8h]
	add	rax,10h
	mov	[rbx+0C8h],rax
	add	rsp,20h
	pop	rbx
	jmp	46D3D0h
00000000004610B8                         90 90 90 90 90 90 90 90         ........

;; fn00000000004610C0: 00000000004610C0
fn00000000004610C0 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	mov	rax,[rdx]
	mov	rsi,rdx
	mov	rbx,rcx
	lea	rcx,[rcx+8h]
	mov	[rcx-8h],rax
	mov	rax,[rax-18h]
	mov	rdx,[rdx+18h]
	mov	[rcx+rax-8h],rdx
	lea	rax,[0000000000496710]                                 ; [rip+00035625]
	mov	[rcx],rax
	call	455AB0h
	lea	rcx,[rbx+50h]
	call	4550A0h
	mov	rax,[0000000000491C30]                                 ; [rip+00030B2D]
	lea	rcx,[rbx+40h]
	add	rax,10h
	mov	[rbx+8h],rax
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
000000000046112E                                           90 90               ..

;; fn0000000000461130: 0000000000461130
fn0000000000461130 proc
	push	rbx
	sub	rsp,20h
	mov	rbx,rcx
	lea	rcx,[rcx+8h]
	or	r8d,10h
	call	4576D0h
	test	rax,rax
	mov	rax,[rbx]
	jz	461160h

l000000000046114D:
	add	rbx,[rax-18h]
	xor	edx,edx
	mov	rcx,rbx
	add	rsp,20h
	pop	rbx
	jmp	46EB40h

l0000000000461160:
	add	rbx,[rax-18h]
	mov	edx,[rbx+20h]
	mov	rcx,rbx
	or	edx,4h
	add	rsp,20h
	pop	rbx
	jmp	46EB40h
0000000000461177                      90 90 90 90 90 90 90 90 90        .........

;; fn0000000000461180: 0000000000461180
fn0000000000461180 proc
	push	rbx
	sub	rsp,20h
	mov	rdx,[rdx]
	mov	rbx,rcx
	lea	rcx,[rcx+8h]
	or	r8d,10h
	call	4576D0h
	test	rax,rax
	mov	rax,[rbx]
	jz	4611B3h

l00000000004611A0:
	add	rbx,[rax-18h]
	xor	edx,edx
	mov	rcx,rbx
	add	rsp,20h
	pop	rbx
	jmp	46EB40h

l00000000004611B3:
	add	rbx,[rax-18h]
	mov	edx,[rbx+20h]
	mov	rcx,rbx
	or	edx,4h
	add	rsp,20h
	pop	rbx
	jmp	46EB40h
00000000004611CA                               90 90 90 90 90 90           ......

;; fn00000000004611D0: 00000000004611D0
fn00000000004611D0 proc
	push	rbx
	sub	rsp,20h
	mov	rbx,rcx
	lea	rcx,[rcx+8h]
	call	457800h
	test	rax,rax
	jz	4611F0h

l00000000004611E6:
	add	rsp,20h
	pop	rbx
	ret
00000000004611EC                                     0F 1F 40 00             ..@.

l00000000004611F0:
	mov	rax,[rbx]
	add	rbx,[rax-18h]
	mov	edx,[rbx+20h]
	mov	rcx,rbx
	or	edx,4h
	add	rsp,20h
	pop	rbx
	jmp	46EB40h
000000000046120A                               90 90 90 90 90 90           ......

;; fn0000000000461210: 0000000000461210
fn0000000000461210 proc
	add	rcx,50h
	jmp	42AA50h
0000000000461219                            90 90 90 90 90 90 90          .......

;; fn0000000000461220: 0000000000461220
fn0000000000461220 proc
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
	xor	eax,eax
	mov	qword ptr [rbx+1A0h],+0h
	mov	byte ptr [rbx+1AAh],0h
	mov	[rbx+1A8h],ax
	lea	rax,[0000000000492F58]                                 ; [rip+00031CF4]
	mov	qword ptr [rbx+1B0h],+0h
	mov	qword ptr [rbx+1B8h],+0h
	mov	qword ptr [rbx+1C0h],+0h
	xor	edx,edx
	mov	[rbx],rax
	lea	rax,[0000000000492F80]                                 ; [rip+00031CEF]
	mov	qword ptr [rbx+1C8h],+0h
	mov	rcx,rsi
	mov	[rbx+0C8h],rax
	call	46EAE0h
	lea	rax,[0000000000496C58]                                 ; [rip+000359A6]
	lea	rdi,[rbx+8h]
	mov	[rbx],rax
	lea	rax,[0000000000496C80]                                 ; [rip+000359C0]
	mov	rcx,rdi
	mov	[rbx+0C8h],rax
	call	458BE0h
	mov	rdx,rdi
	mov	rcx,rsi
	call	46EAE0h
	mov	r8d,r12d
	mov	rdx,rbp
	mov	rcx,rdi
	or	r8d,10h
	call	4576D0h
	test	rax,rax
	mov	rcx,rbx
	mov	rax,[rbx]
	jz	461310h

l00000000004612F7:
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
000000000046130E                                           66 90               f.

l0000000000461310:
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
000000000046132B                                  48 89 C7 48 8B            H..H.
0000000000461330 05 FB 0A 03 00 48 89 F1 48 83 C0 10 48 89 83 C8 .....H..H...H...
0000000000461340 00 00 00 E8 88 C0 00 00 48 89 F9 E8 60 02 FB FF ........H...`...
0000000000461350 48 89 C5 48 89 F9 E8 B5 7B FF FF 48 89 EF EB CE H..H....{..H....

;; fn0000000000461360: 0000000000461360
fn0000000000461360 proc
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
	xor	eax,eax
	mov	qword ptr [rbx+1A0h],+0h
	mov	byte ptr [rbx+1AAh],0h
	mov	[rbx+1A8h],ax
	lea	rax,[0000000000492F58]                                 ; [rip+00031BB4]
	mov	qword ptr [rbx+1B0h],+0h
	mov	qword ptr [rbx+1B8h],+0h
	mov	qword ptr [rbx+1C0h],+0h
	xor	edx,edx
	mov	[rbx],rax
	lea	rax,[0000000000492F80]                                 ; [rip+00031BAF]
	mov	qword ptr [rbx+1C8h],+0h
	mov	rcx,rsi
	mov	[rbx+0C8h],rax
	call	46EAE0h
	lea	rax,[0000000000496C58]                                 ; [rip+00035866]
	lea	rdi,[rbx+8h]
	mov	[rbx],rax
	lea	rax,[0000000000496C80]                                 ; [rip+00035880]
	mov	rcx,rdi
	mov	[rbx+0C8h],rax
	call	458BE0h
	mov	rdx,rdi
	mov	rcx,rsi
	call	46EAE0h
	mov	rdx,[rbp+0h]
	mov	r8d,r12d
	mov	rcx,rdi
	or	r8d,10h
	call	4576D0h
	test	rax,rax
	mov	rcx,rbx
	mov	rax,[rbx]
	jz	461450h

l0000000000461438:
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
000000000046144F                                              90                .

l0000000000461450:
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
000000000046146B                                  48 89 C7 48 8B            H..H.
0000000000461470 05 BB 09 03 00 48 89 F1 48 83 C0 10 48 89 83 C8 .....H..H...H...
0000000000461480 00 00 00 E8 48 BF 00 00 48 89 F9 E8 20 01 FB FF ....H...H... ...
0000000000461490 48 89 C5 48 89 F9 E8 75 7A FF FF 48 89 EF EB CE H..H...uz..H....

;; fn00000000004614A0: 00000000004614A0
fn00000000004614A0 proc
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,28h
	lea	rsi,[rcx+0C8h]
	mov	rbx,rcx
	mov	rcx,rsi
	call	46D320h
	xor	eax,eax
	mov	qword ptr [rbx+1A0h],+0h
	mov	byte ptr [rbx+1AAh],0h
	mov	[rbx+1A8h],ax
	lea	rax,[0000000000492F58]                                 ; [rip+00031A7C]
	mov	qword ptr [rbx+1B0h],+0h
	mov	qword ptr [rbx+1B8h],+0h
	mov	qword ptr [rbx+1C0h],+0h
	xor	edx,edx
	mov	[rbx],rax
	lea	rax,[0000000000492F80]                                 ; [rip+00031A77]
	mov	qword ptr [rbx+1C8h],+0h
	mov	rcx,rsi
	mov	[rbx+0C8h],rax
	call	46EAE0h
	lea	rax,[0000000000496C58]                                 ; [rip+0003572E]
	lea	rdi,[rbx+8h]
	mov	[rbx],rax
	lea	rax,[0000000000496C80]                                 ; [rip+00035748]
	mov	rcx,rdi
	mov	[rbx+0C8h],rax
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
000000000046155C                                     48 89 C7 48             H..H
0000000000461560 8B 05 CA 08 03 00 48 89 F1 48 83 C0 10 48 89 83 ......H..H...H..
0000000000461570 C8 00 00 00 E8 57 BE 00 00 48 89 F9 E8 2F 00 FB .....W...H.../..
0000000000461580 FF 48 89 C5 48 89 F9 E8 84 79 FF FF 48 89 EF EB .H..H....y..H...
0000000000461590 CE 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 ................

;; fn00000000004615A0: 00000000004615A0
fn00000000004615A0 proc
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
	or	r8d,10h
	call	4576D0h
	test	rax,rax
	mov	rcx,rbx
	mov	rax,[rbx]
	jz	461633h

l000000000046161C:
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

l0000000000461633:
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
000000000046164E                                           48 8B               H.
0000000000461650 56 08 48 89 13 48 8B 52 E8 48 8B 4E 10 48 89 0C V.H..H.R.H.N.H..
0000000000461660 13 48 89 C1 E8 47 FF FA FF 48 89 C5 48 89 F9 E8 .H...G...H..H...
0000000000461670 9C 78 FF FF 48 89 E8 EB D5 90 90 90 90 90 90 90 .x..H...........

;; fn0000000000461680: 0000000000461680
fn0000000000461680 proc
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
	or	r8d,10h
	call	4576D0h
	test	rax,rax
	mov	rcx,rbx
	mov	rax,[rbx]
	jz	461714h

l00000000004616FD:
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

l0000000000461714:
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
000000000046172F                                              48                H
0000000000461730 8B 56 08 48 89 13 48 8B 52 E8 48 8B 4E 10 48 89 .V.H..H.R.H.N.H.
0000000000461740 0C 13 48 89 C1 E8 66 FE FA FF 48 89 C5 48 89 F9 ..H...f...H..H..
0000000000461750 E8 BB 77 FF FF 48 89 E8 EB D5 90 90 90 90 90 90 ..w..H..........

;; fn0000000000461760: 0000000000461760
fn0000000000461760 proc
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
00000000004617C1    48 8B 56 08 48 89 13 48 8B 52 E8 48 8B 4E 10  H.V.H..H.R.H.N.
00000000004617D0 48 89 0C 13 48 89 C1 E8 D4 FD FA FF 48 89 C5 48 H...H.......H..H
00000000004617E0 89 F9 E8 29 77 FF FF 48 89 E8 EB D5 90 90 90 90 ...)w..H........

;; fn00000000004617F0: 00000000004617F0
fn00000000004617F0 proc
	push	rbx
	sub	rsp,20h
	lea	rax,[0000000000496C58]                                 ; [rip+0003545C]
	mov	rbx,rcx
	lea	rcx,[rcx+8h]
	mov	[rcx-8h],rax
	lea	rax,[0000000000496C80]                                 ; [rip+00035472]
	mov	[rcx+0C0h],rax
	lea	rax,[0000000000496790]                                 ; [rip+00034F74]
	mov	[rcx],rax
	call	457800h
	lea	rcx,[rbx+50h]
	call	4550A0h
	mov	rax,[0000000000491C40]                                 ; [rip+0003040C]
	lea	rcx,[rbx+40h]
	add	rax,10h
	mov	[rbx+8h],rax
	call	46AF20h
	mov	rax,[0000000000491E30]                                 ; [rip+000305E4]
	lea	rcx,[rbx+0C8h]
	add	rax,10h
	mov	[rbx+0C8h],rax
	call	46D3D0h
	mov	rcx,rbx
	add	rsp,20h
	pop	rbx
	jmp	475550h

;; fn0000000000461870: 0000000000461870
fn0000000000461870 proc
	push	rbx
	sub	rsp,20h
	lea	rax,[0000000000496C58]                                 ; [rip+000353DC]
	mov	rbx,rcx
	lea	rcx,[rcx+8h]
	mov	[rcx-8h],rax
	lea	rax,[0000000000496C80]                                 ; [rip+000353F2]
	mov	[rcx+0C0h],rax
	lea	rax,[0000000000496790]                                 ; [rip+00034EF4]
	mov	[rcx],rax
	call	457800h
	lea	rcx,[rbx+50h]
	call	4550A0h
	mov	rax,[0000000000491C40]                                 ; [rip+0003038C]
	lea	rcx,[rbx+40h]
	add	rax,10h
	mov	[rbx+8h],rax
	call	46AF20h
	mov	rax,[0000000000491E30]                                 ; [rip+00030564]
	lea	rcx,[rbx+0C8h]
	add	rax,10h
	mov	[rbx+0C8h],rax
	add	rsp,20h
	pop	rbx
	jmp	46D3D0h
00000000004618E8                         90 90 90 90 90 90 90 90         ........

;; fn00000000004618F0: 00000000004618F0
fn00000000004618F0 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	mov	rax,[rdx]
	mov	rsi,rdx
	mov	rbx,rcx
	lea	rcx,[rcx+8h]
	mov	[rcx-8h],rax
	mov	rax,[rax-18h]
	mov	rdx,[rdx+18h]
	mov	[rcx+rax-8h],rdx
	lea	rax,[0000000000496790]                                 ; [rip+00034E75]
	mov	[rcx],rax
	call	457800h
	lea	rcx,[rbx+50h]
	call	4550A0h
	mov	rax,[0000000000491C40]                                 ; [rip+0003030D]
	lea	rcx,[rbx+40h]
	add	rax,10h
	mov	[rbx+8h],rax
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
000000000046195E                                           90 90               ..

;; fn0000000000461960: 0000000000461960
fn0000000000461960 proc
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,28h
	lea	rdi,[000000000048DEAA]                                 ; [rip+0002C53B]
	mov	rbp,rdx
	mov	rdx,r8
	mov	rbx,rcx
	call	46BC00h
	lea	rax,[0000000000496CD0]                                 ; [rip+0003534C]
	mov	ecx,2h
	mov	rsi,rbp
	mov	[rbx],rax

l000000000046198F:
	rep cmpsb

l0000000000461991:
	jz	4619A6h

l0000000000461993:
	lea	rdi,[000000000048DEAC]                                 ; [rip+0002C512]
	mov	ecx,6h
	mov	rsi,rbp

l00000000004619A2:
	rep cmpsb

l00000000004619A4:
	jnz	4619B0h

l00000000004619A6:
	add	rsp,28h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
00000000004619AF                                              90                .

l00000000004619B0:
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
00000000004619D4             48 89 C6 48 89 D9 E8 91 A2 00 00 48     H..H.......H
00000000004619E0 89 F1 E8 C9 FB FA FF 90 90 90 90 90 90 90 90 90 ................

;; fn00000000004619F0: 00000000004619F0
fn00000000004619F0 proc
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,28h
	lea	rdi,[000000000048DEAA]                                 ; [rip+0002C4AB]
	mov	rbp,rdx
	mov	rdx,r8
	mov	rbx,rcx
	call	46BC00h
	lea	rax,[0000000000496CD0]                                 ; [rip+000352BC]
	mov	ecx,2h
	mov	rsi,rbp
	mov	[rbx],rax

l0000000000461A1F:
	rep cmpsb

l0000000000461A21:
	jz	461A36h

l0000000000461A23:
	lea	rdi,[000000000048DEAC]                                 ; [rip+0002C482]
	mov	ecx,6h
	mov	rsi,rbp

l0000000000461A32:
	rep cmpsb

l0000000000461A34:
	jnz	461A40h

l0000000000461A36:
	add	rsp,28h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
0000000000461A3F                                              90                .

l0000000000461A40:
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
0000000000461A64             48 89 C6 48 89 D9 E8 01 A2 00 00 48     H..H.......H
0000000000461A70 89 F1 E8 39 FB FA FF 90 90 90 90 90 90 90 90 90 ...9............

;; fn0000000000461A80: 0000000000461A80
fn0000000000461A80 proc
	push	rbx
	sub	rsp,20h
	lea	rax,[0000000000496CD0]                                 ; [rip+00035244]
	mov	rbx,rcx
	mov	[rcx],rax
	call	46BC70h
	mov	rcx,rbx
	add	rsp,20h
	pop	rbx
	jmp	475550h
0000000000461AA4             90 90 90 90 90 90 90 90 90 90 90 90     ............

;; fn0000000000461AB0: 0000000000461AB0
fn0000000000461AB0 proc
	lea	rax,[0000000000496CD0]                                 ; [rip+00035219]
	mov	[rcx],rax
	jmp	46BC70h
0000000000461ABF                                              90                .

;; fn0000000000461AC0: 0000000000461AC0
fn0000000000461AC0 proc
	lea	rax,[0000000000496CD0]                                 ; [rip+00035209]
	mov	[rcx],rax
	jmp	46BC70h
0000000000461ACF                                              90                .

;; fn0000000000461AD0: 0000000000461AD0
fn0000000000461AD0 proc
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,28h
	lea	rdi,[000000000048DB5A]                                 ; [rip+0002C07B]
	mov	rbp,rdx
	mov	rdx,r8
	mov	rbx,rcx
	call	46BD10h
	lea	rax,[0000000000496D50]                                 ; [rip+0003525C]
	mov	ecx,2h
	mov	rsi,rbp
	mov	[rbx],rax

l0000000000461AFF:
	rep cmpsb

l0000000000461B01:
	jz	461B16h

l0000000000461B03:
	lea	rdi,[000000000048DB5C]                                 ; [rip+0002C052]
	mov	ecx,6h
	mov	rsi,rbp

l0000000000461B12:
	rep cmpsb

l0000000000461B14:
	jnz	461B20h

l0000000000461B16:
	add	rsp,28h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
0000000000461B1F                                              90                .

l0000000000461B20:
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
0000000000461B44             48 89 C6 48 89 D9 E8 31 A2 00 00 48     H..H...1...H
0000000000461B50 89 F1 E8 59 FA FA FF 90 90 90 90 90 90 90 90 90 ...Y............

;; fn0000000000461B60: 0000000000461B60
fn0000000000461B60 proc
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,28h
	lea	rdi,[000000000048DB5A]                                 ; [rip+0002BFEB]
	mov	rbp,rdx
	mov	rdx,r8
	mov	rbx,rcx
	call	46BD10h
	lea	rax,[0000000000496D50]                                 ; [rip+000351CC]
	mov	ecx,2h
	mov	rsi,rbp
	mov	[rbx],rax

l0000000000461B8F:
	rep cmpsb

l0000000000461B91:
	jz	461BA6h

l0000000000461B93:
	lea	rdi,[000000000048DB5C]                                 ; [rip+0002BFC2]
	mov	ecx,6h
	mov	rsi,rbp

l0000000000461BA2:
	rep cmpsb

l0000000000461BA4:
	jnz	461BB0h

l0000000000461BA6:
	add	rsp,28h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
0000000000461BAF                                              90                .

l0000000000461BB0:
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
0000000000461BD4             48 89 C6 48 89 D9 E8 A1 A1 00 00 48     H..H.......H
0000000000461BE0 89 F1 E8 C9 F9 FA FF 90 90 90 90 90 90 90 90 90 ................

;; fn0000000000461BF0: 0000000000461BF0
fn0000000000461BF0 proc
	push	rbx
	sub	rsp,20h
	lea	rax,[0000000000496D50]                                 ; [rip+00035154]
	mov	rbx,rcx
	mov	[rcx],rax
	call	46BD80h
	mov	rcx,rbx
	add	rsp,20h
	pop	rbx
	jmp	475550h
0000000000461C14             90 90 90 90 90 90 90 90 90 90 90 90     ............

;; fn0000000000461C20: 0000000000461C20
fn0000000000461C20 proc
	lea	rax,[0000000000496D50]                                 ; [rip+00035129]
	mov	[rcx],rax
	jmp	46BD80h
0000000000461C2F                                              90                .

;; fn0000000000461C30: 0000000000461C30
fn0000000000461C30 proc
	lea	rax,[0000000000496D50]                                 ; [rip+00035119]
	mov	[rcx],rax
	jmp	46BD80h
0000000000461C3F                                              90                .

;; fn0000000000461C40: 0000000000461C40
fn0000000000461C40 proc
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,28h
	xor	eax,eax
	test	r8,r8
	mov	rbx,rcx
	mov	rbp,rdx
	setnz	al
	mov	[rcx+8h],eax
	lea	rax,[0000000000497B50]                                 ; [rip+00035EF0]
	mov	[rcx],rax
	call	46AC50h
	mov	[rbx+10h],rax
	lea	rax,[0000000000496DD0]                                 ; [rip+0003515D]
	lea	rdi,[000000000048DEAA]                                 ; [rip+0002C230]
	mov	ecx,2h
	mov	rsi,rbp
	mov	[rbx],rax

l0000000000461C85:
	rep cmpsb

l0000000000461C87:
	jz	461C9Ch

l0000000000461C89:
	lea	rdi,[000000000048DEAC]                                 ; [rip+0002C21C]
	mov	ecx,6h
	mov	rsi,rbp

l0000000000461C98:
	rep cmpsb

l0000000000461C9A:
	jnz	461CA5h

l0000000000461C9C:
	add	rsp,28h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret

l0000000000461CA5:
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
0000000000461CC9                            48 89 C6 48 89 D9 E8          H..H...
0000000000461CD0 BC A2 00 00 48 89 F1 E8 D4 F8 FA FF 48 89 C6 48 ....H.......H..H
0000000000461CE0 89 D9 E8 39 90 00 00 48 89 F1 E8 C1 F8 FA FF 90 ...9...H........

;; fn0000000000461CF0: 0000000000461CF0
fn0000000000461CF0 proc
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,28h
	xor	eax,eax
	test	r8,r8
	mov	rbx,rcx
	mov	rbp,rdx
	setnz	al
	mov	[rcx+8h],eax
	lea	rax,[0000000000497B50]                                 ; [rip+00035E40]
	mov	[rcx],rax
	call	46AC50h
	mov	[rbx+10h],rax
	lea	rax,[0000000000496DD0]                                 ; [rip+000350AD]
	lea	rdi,[000000000048DEAA]                                 ; [rip+0002C180]
	mov	ecx,2h
	mov	rsi,rbp
	mov	[rbx],rax

l0000000000461D35:
	rep cmpsb

l0000000000461D37:
	jz	461D4Ch

l0000000000461D39:
	lea	rdi,[000000000048DEAC]                                 ; [rip+0002C16C]
	mov	ecx,6h
	mov	rsi,rbp

l0000000000461D48:
	rep cmpsb

l0000000000461D4A:
	jnz	461D55h

l0000000000461D4C:
	add	rsp,28h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret

l0000000000461D55:
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
0000000000461D79                            48 89 C6 48 89 D9 E8          H..H...
0000000000461D80 0C A2 00 00 48 89 F1 E8 24 F8 FA FF 48 89 C6 48 ....H...$...H..H
0000000000461D90 89 D9 E8 89 8F 00 00 48 89 F1 E8 11 F8 FA FF 90 .......H........

;; fn0000000000461DA0: 0000000000461DA0
fn0000000000461DA0 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	lea	rax,[0000000000497B50]                                 ; [rip+00035DA3]
	mov	rbx,rcx
	lea	rcx,[rcx+10h]
	mov	[rcx-10h],rax
	call	46ACF0h
	mov	rcx,rbx
	call	46AD20h
	mov	rcx,rbx
	add	rsp,28h
	pop	rbx
	pop	rsi
	jmp	475550h
0000000000461DD3          48 89 C6 48 89 D9 E8 42 8F 00 00 48 89    H..H...B...H.
0000000000461DE0 F1 E8 CA F7 FA FF 90 90 90 90 90 90 90 90 90 90 ................

;; fn0000000000461DF0: 0000000000461DF0
fn0000000000461DF0 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	lea	rax,[0000000000497B50]                                 ; [rip+00035D53]
	mov	rbx,rcx
	lea	rcx,[rcx+10h]
	mov	[rcx-10h],rax
	call	46ACF0h
	mov	rcx,rbx
	add	rsp,28h
	pop	rbx
	pop	rsi
	jmp	46AD20h
0000000000461E1B                                  48 89 C6 48 89            H..H.
0000000000461E20 D9 E8 FA 8E 00 00 48 89 F1 E8 82 F7 FA FF 90 90 ......H.........

;; fn0000000000461E30: 0000000000461E30
fn0000000000461E30 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	lea	rax,[0000000000497B50]                                 ; [rip+00035D13]
	mov	rbx,rcx
	lea	rcx,[rcx+10h]
	mov	[rcx-10h],rax
	call	46ACF0h
	mov	rcx,rbx
	add	rsp,28h
	pop	rbx
	pop	rsi
	jmp	46AD20h
0000000000461E5B                                  48 89 C6 48 89            H..H.
0000000000461E60 D9 E8 BA 8E 00 00 48 89 F1 E8 42 F7 FA FF 90 90 ......H...B.....

;; fn0000000000461E70: 0000000000461E70
fn0000000000461E70 proc
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,28h
	xor	eax,eax
	test	r8,r8
	mov	rbx,rcx
	mov	rbp,rdx
	setnz	al
	mov	[rcx+8h],eax
	lea	rax,[0000000000497B90]                                 ; [rip+00035D00]
	mov	[rcx],rax
	call	46AC50h
	mov	[rbx+10h],rax
	lea	rax,[0000000000496E10]                                 ; [rip+00034F6D]
	lea	rdi,[000000000048DB5A]                                 ; [rip+0002BCB0]
	mov	ecx,2h
	mov	rsi,rbp
	mov	[rbx],rax

l0000000000461EB5:
	rep cmpsb

l0000000000461EB7:
	jz	461ECCh

l0000000000461EB9:
	lea	rdi,[000000000048DB5C]                                 ; [rip+0002BC9C]
	mov	ecx,6h
	mov	rsi,rbp

l0000000000461EC8:
	rep cmpsb

l0000000000461ECA:
	jnz	461ED5h

l0000000000461ECC:
	add	rsp,28h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret

l0000000000461ED5:
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
0000000000461EF9                            48 89 C6 48 89 D9 E8          H..H...
0000000000461F00 7C A2 00 00 48 89 F1 E8 A4 F6 FA FF 48 89 C6 48 |...H.......H..H
0000000000461F10 89 D9 E8 09 8E 00 00 48 89 F1 E8 91 F6 FA FF 90 .......H........

;; fn0000000000461F20: 0000000000461F20
fn0000000000461F20 proc
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,28h
	xor	eax,eax
	test	r8,r8
	mov	rbx,rcx
	mov	rbp,rdx
	setnz	al
	mov	[rcx+8h],eax
	lea	rax,[0000000000497B90]                                 ; [rip+00035C50]
	mov	[rcx],rax
	call	46AC50h
	mov	[rbx+10h],rax
	lea	rax,[0000000000496E10]                                 ; [rip+00034EBD]
	lea	rdi,[000000000048DB5A]                                 ; [rip+0002BC00]
	mov	ecx,2h
	mov	rsi,rbp
	mov	[rbx],rax

l0000000000461F65:
	rep cmpsb

l0000000000461F67:
	jz	461F7Ch

l0000000000461F69:
	lea	rdi,[000000000048DB5C]                                 ; [rip+0002BBEC]
	mov	ecx,6h
	mov	rsi,rbp

l0000000000461F78:
	rep cmpsb

l0000000000461F7A:
	jnz	461F85h

l0000000000461F7C:
	add	rsp,28h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret

l0000000000461F85:
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
0000000000461FA9                            48 89 C6 48 89 D9 E8          H..H...
0000000000461FB0 CC A1 00 00 48 89 F1 E8 F4 F5 FA FF 48 89 C6 48 ....H.......H..H
0000000000461FC0 89 D9 E8 59 8D 00 00 48 89 F1 E8 E1 F5 FA FF 90 ...Y...H........

;; fn0000000000461FD0: 0000000000461FD0
fn0000000000461FD0 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	lea	rax,[0000000000497B90]                                 ; [rip+00035BB3]
	mov	rbx,rcx
	lea	rcx,[rcx+10h]
	mov	[rcx-10h],rax
	call	46ACF0h
	mov	rcx,rbx
	call	46AD20h
	mov	rcx,rbx
	add	rsp,28h
	pop	rbx
	pop	rsi
	jmp	475550h
0000000000462003          48 89 C6 48 89 D9 E8 12 8D 00 00 48 89    H..H.......H.
0000000000462010 F1 E8 9A F5 FA FF 90 90 90 90 90 90 90 90 90 90 ................

;; fn0000000000462020: 0000000000462020
fn0000000000462020 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	lea	rax,[0000000000497B90]                                 ; [rip+00035B63]
	mov	rbx,rcx
	lea	rcx,[rcx+10h]
	mov	[rcx-10h],rax
	call	46ACF0h
	mov	rcx,rbx
	add	rsp,28h
	pop	rbx
	pop	rsi
	jmp	46AD20h
000000000046204B                                  48 89 C6 48 89            H..H.
0000000000462050 D9 E8 CA 8C 00 00 48 89 F1 E8 52 F5 FA FF 90 90 ......H...R.....

;; fn0000000000462060: 0000000000462060
fn0000000000462060 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	lea	rax,[0000000000497B90]                                 ; [rip+00035B23]
	mov	rbx,rcx
	lea	rcx,[rcx+10h]
	mov	[rcx-10h],rax
	call	46ACF0h
	mov	rcx,rbx
	add	rsp,28h
	pop	rbx
	pop	rsi
	jmp	46AD20h
000000000046208B                                  48 89 C6 48 89            H..H.
0000000000462090 D9 E8 8A 8C 00 00 48 89 F1 E8 12 F5 FA FF 90 90 ......H.........

;; fn00000000004620A0: 00000000004620A0
fn00000000004620A0 proc
	jmp	475550h
00000000004620A5                90 90 90 90 90 90 90 90 90 90 90      ...........

;; fn00000000004620B0: 00000000004620B0
;;   Called from:
;;     0000000000424202 (in fn00000000004241F0)
;;     000000000042422A (in fn0000000000424220)
;;     0000000000476385 (in fn0000000000476370)
fn00000000004620B0 proc
	ret
00000000004620B1    90 90 90 90 90 90 90 90 90 90 90 90 90 90 90  ...............

;; fn00000000004620C0: 00000000004620C0
;;   Called from:
;;     0000000000471362 (in fn0000000000471330)
fn00000000004620C0 proc
	push	rbx
	sub	rsp,20h
	mov	rbx,rcx
	call	45F390h
	lea	rax,[0000000000496ED0]                                 ; [rip+00034DFC]
	mov	[rbx],rax
	add	rsp,20h
	pop	rbx
	ret
00000000004620DD                                        90 90 90              ...

;; fn00000000004620E0: 00000000004620E0
fn00000000004620E0 proc
	push	rbx
	sub	rsp,20h
	lea	rax,[0000000000496ED0]                                 ; [rip+00034DE4]
	mov	rbx,rcx
	mov	[rcx],rax
	call	45F3F0h
	mov	rcx,rbx
	add	rsp,20h
	pop	rbx
	jmp	475550h
0000000000462104             90 90 90 90 90 90 90 90 90 90 90 90     ............

;; fn0000000000462110: 0000000000462110
fn0000000000462110 proc
	lea	rax,[0000000000496ED0]                                 ; [rip+00034DB9]
	mov	[rcx],rax
	jmp	45F3F0h
000000000046211F                                              90                .

;; fn0000000000462120: 0000000000462120
;;   Called from:
;;     0000000000462200 (in fn0000000000462200)
;;     0000000000462242 (in fn0000000000462210)
fn0000000000462120 proc
	push	rbx
	sub	rsp,20h
	mov	rax,[rcx]
	test	rax,rax
	jz	46215Ah

l000000000046212D:
	lock
	sub	dword ptr [rax-0A0h],1h
	jnz	46215Ah

l0000000000462137:
	mov	rax,[rax-88h]
	mov	rbx,rcx
	test	rax,rax
	jz	46214Bh

l0000000000462146:
	mov	rcx,[rcx]
	call	rax

l000000000046214B:
	mov	rcx,[rbx]
	call	475BA0h
	mov	qword ptr [rbx],+0h

l000000000046215A:
	add	rsp,20h
	pop	rbx
	ret

;; fn0000000000462160: 0000000000462160
fn0000000000462160 proc
	ret
0000000000462161    90 90 90 90 90 90 90 90 90 90 90 90 90 90 90  ...............

;; fn0000000000462170: 0000000000462170
fn0000000000462170 proc
	mov	rax,[rcx]
	mov	r8,[rdx]
	mov	[rcx],r8
	mov	[rdx],rax
	ret
000000000046217D                                        90 90 90              ...

;; fn0000000000462180: 0000000000462180
fn0000000000462180 proc
	mov	rax,[rcx]
	test	rax,rax
	jz	462190h

l0000000000462188:
	lock
	add	dword ptr [rax-0A0h],1h

l0000000000462190:
	ret
0000000000462192       90 90 90 90 90 90 90 90 90 90 90 90 90 90   ..............

;; fn00000000004621A0: 00000000004621A0
fn00000000004621A0 proc
	mov	qword ptr [rcx],+0h
	ret
00000000004621A8                         90 90 90 90 90 90 90 90         ........

;; fn00000000004621B0: 00000000004621B0
fn00000000004621B0 proc
	test	rdx,rdx
	mov	[rcx],rdx
	jz	4621C0h

l00000000004621B8:
	lock
	add	dword ptr [rdx-0A0h],1h

l00000000004621C0:
	ret
00000000004621C2       90 90 90 90 90 90 90 90 90 90 90 90 90 90   ..............

;; fn00000000004621D0: 00000000004621D0
fn00000000004621D0 proc
	mov	rax,[rdx]
	test	rax,rax
	mov	[rcx],rax
	jz	4621E3h

l00000000004621DB:
	lock
	add	dword ptr [rax-0A0h],1h

l00000000004621E3:
	ret
00000000004621E5                90 90 90 90 90 90 90 90 90 90 90      ...........

;; fn00000000004621F0: 00000000004621F0
;;   Called from:
;;     00000000004553FF (in fn00000000004553F0)
fn00000000004621F0 proc
	mov	qword ptr [rcx],+0h
	ret
00000000004621F8                         90 90 90 90 90 90 90 90         ........

;; fn0000000000462200: 0000000000462200
;;   Called from:
;;     0000000000455427 (in fn0000000000455410)
;;     000000000045544F (in fn0000000000455440)
fn0000000000462200 proc
	jmp	462120h
0000000000462205                90 90 90 90 90 90 90 90 90 90 90      ...........

;; fn0000000000462210: 0000000000462210
fn0000000000462210 proc
	push	rbx
	sub	rsp,30h
	mov	rdx,[rdx]
	mov	rbx,rcx
	test	rdx,rdx
	mov	[rsp+20h],rdx
	jz	462232h

l0000000000462225:
	lock
	add	dword ptr [rdx-0A0h],1h
	mov	rdx,[rsp+20h]

l0000000000462232:
	mov	rax,[rbx]
	lea	rcx,[rsp+20h]
	mov	[rbx],rdx
	mov	[rsp+20h],rax
	call	462120h
	mov	rax,rbx
	add	rsp,30h
	pop	rbx
	ret

;; fn0000000000462250: 0000000000462250
fn0000000000462250 proc
	mov	rax,[rdx]
	cmp	[rcx],rax
	setz	al
	ret
000000000046225A                               90 90 90 90 90 90           ......

;; fn0000000000462260: 0000000000462260
fn0000000000462260 proc
	mov	rax,[rdx]
	cmp	[rcx],rax
	setnz	al
	ret
000000000046226A                               90 90 90 90 90 90           ......

;; fn0000000000462270: 0000000000462270
fn0000000000462270 proc
	sub	rsp,48h
	mov	rax,rcx
	mov	rcx,[rdx]
	mov	r10,[rcx+20h]
	lea	rcx,[00000000004627F0]                                 ; [rip+0000056B]
	cmp	r10,rcx
	jnz	4622A0h

l000000000046228A:
	mov	qword ptr [rax],-1h
	mov	dword ptr [rax+8h],0h
	add	rsp,48h
	ret
000000000046229D                                        0F 1F 00              ...

l00000000004622A0:
	mov	ecx,[rsp+70h]
	mov	[rsp+38h],rax
	mov	[rsp+20h],ecx
	mov	rcx,rax
	call	r10
	mov	rax,[rsp+38h]
	add	rsp,48h
	ret
00000000004622BD                                        90 90 90              ...

;; fn00000000004622C0: 00000000004622C0
fn00000000004622C0 proc
	sub	rsp,48h
	mov	rax,rcx
	mov	rcx,[rdx]
	movdqu	xmm1,[r8]
	mov	r10,[rcx+28h]
	lea	rcx,[0000000000462810]                                 ; [rip+00000536]
	cmp	r10,rcx
	jnz	4622F2h

l00000000004622DF:
	mov	qword ptr [rax],-1h
	mov	dword ptr [rax+8h],0h
	add	rsp,48h
	ret

l00000000004622F2:
	mov	rcx,rax
	mov	[rsp+28h],rax
	lea	r8,[rsp+30h]
	movaps	[rsp+30h],xmm1
	call	r10
	mov	rax,[rsp+28h]
	add	rsp,48h
	ret
0000000000462311    90 90 90 90 90 90 90 90 90 90 90 90 90 90 90  ...............

;; fn0000000000462320: 0000000000462320
fn0000000000462320 proc
	add	[rcx+10h],rdx
	ret
0000000000462325                90 90 90 90 90 90 90 90 90 90 90      ...........

;; fn0000000000462330: 0000000000462330
fn0000000000462330 proc
	add	[rcx+28h],rdx
	ret
0000000000462335                90 90 90 90 90 90 90 90 90 90 90      ...........

;; fn0000000000462340: 0000000000462340
fn0000000000462340 proc
	mov	[rcx+8h],rdx
	mov	[rcx+10h],r8
	mov	[rcx+18h],r9
	ret
000000000046234D                                        90 90 90              ...

;; fn0000000000462350: 0000000000462350
fn0000000000462350 proc
	mov	[rcx+28h],rdx
	mov	[rcx+20h],rdx
	mov	[rcx+30h],r8
	ret
000000000046235D                                        90 90 90              ...

;; fn0000000000462360: 0000000000462360
fn0000000000462360 proc
	xor	eax,eax
	ret
0000000000462363          90 90 90 90 90 90 90 90 90 90 90 90 90    .............

;; fn0000000000462370: 0000000000462370
fn0000000000462370 proc
	movsxd	rdx,edx
	add	[rcx+10h],rdx
	ret
0000000000462378                         90 90 90 90 90 90 90 90         ........

;; fn0000000000462380: 0000000000462380
fn0000000000462380 proc
	ret
0000000000462381    90 90 90 90 90 90 90 90 90 90 90 90 90 90 90  ...............

;; fn0000000000462390: 0000000000462390
fn0000000000462390 proc
	movsxd	rdx,edx
	add	[rcx+28h],rdx
	ret
0000000000462398                         90 90 90 90 90 90 90 90         ........

;; fn00000000004623A0: 00000000004623A0
fn00000000004623A0 proc
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	4623B0h

l00000000004623AA:
	movzx	eax,byte ptr [rax]
	ret
00000000004623AE                                           66 90               f.

l00000000004623B0:
	mov	rax,[rcx]
	lea	r8,[00000000004629D0]                                  ; [rip+00000616]
	mov	rdx,[rax+48h]
	mov	eax,0FFFFFFFFh
	cmp	rdx,r8
	jnz	4623D0h

l00000000004623C8:
	ret
00000000004623CA                               66 0F 1F 44 00 00           f..D..

l00000000004623D0:
	jmp	rdx
00000000004623D3          90 90 90 90 90 90 90 90 90 90 90 90 90    .............

;; fn00000000004623E0: 00000000004623E0
fn00000000004623E0 proc
	mov	rax,[rcx]
	mov	rax,[rax+40h]
	jmp	rax
00000000004623EA                               90 90 90 90 90 90           ......

;; fn00000000004623F0: 00000000004623F0
fn00000000004623F0 proc
	mov	rax,[rcx+28h]
	cmp	rax,[rcx+30h]
	jnc	462405h

l00000000004623FA:
	mov	[rax],dl
	movzx	eax,dl
	add	qword ptr [rcx+28h],1h
	ret

l0000000000462405:
	mov	rax,[rcx]
	lea	r9,[00000000004628B0]                                  ; [rip+000004A1]
	mov	r8,[rax+68h]
	mov	eax,0FFFFFFFFh
	cmp	r8,r9
	jnz	462420h

l000000000046241D:
	ret
000000000046241F                                              90                .

l0000000000462420:
	movzx	edx,dl
	jmp	r8
0000000000462426                   90 90 90 90 90 90 90 90 90 90       ..........

;; fn0000000000462430: 0000000000462430
fn0000000000462430 proc
	mov	rax,[rcx]
	mov	rax,[rax+60h]
	jmp	rax
000000000046243A                               90 90 90 90 90 90           ......

;; fn0000000000462440: 0000000000462440
fn0000000000462440 proc
	push	rbx
	sub	rsp,20h
	mov	rax,[rcx]
	lea	rdx,[00000000004629D0]                                 ; [rip+00000581]
	mov	rax,[rax+48h]
	cmp	rax,rdx
	jnz	462463h

l0000000000462458:
	mov	eax,0FFFFFFFFh
	add	rsp,20h
	pop	rbx
	ret

l0000000000462463:
	mov	rbx,rcx
	call	rax
	cmp	eax,0FFh
	jz	462458h

l000000000046246D:
	mov	rdx,[rbx+10h]
	movzx	eax,byte ptr [rdx]
	add	rdx,1h
	mov	[rbx+10h],rdx
	add	rsp,20h
	pop	rbx
	ret
0000000000462482       90 90 90 90 90 90 90 90 90 90 90 90 90 90   ..............

;; fn0000000000462490: 0000000000462490
;;   Called from:
;;     000000000042CE48 (in fn000000000042CD70)
;;     000000000042D7E8 (in fn000000000042D710)
;;     000000000042E1A8 (in fn000000000042E0D0)
;;     000000000042EB48 (in fn000000000042EA70)
;;     000000000042F4FF (in fn000000000042F430)
;;     000000000042FEFF (in fn000000000042FE30)
;;     00000000004311AA (in fn0000000000430800)
;;     000000000043D286 (in fn000000000043D040)
;;     000000000043D2F6 (in fn000000000043D040)
;;     000000000043EDBC (in fn000000000043EA80)
fn0000000000462490 proc
	push	rbx
	sub	rsp,20h
	mov	rdx,[rcx+10h]
	cmp	rdx,[rcx+18h]
	jnc	4624B0h

l000000000046249F:
	movzx	eax,byte ptr [rdx]
	add	rdx,1h
	mov	[rcx+10h],rdx

l00000000004624AA:
	add	rsp,20h
	pop	rbx
	ret

l00000000004624B0:
	mov	rax,[rcx]
	lea	r8,[0000000000462440]                                  ; [rip-0000007A]
	mov	rdx,[rax+50h]
	cmp	rdx,r8
	jnz	4624E0h

l00000000004624C3:
	mov	rax,[rax+48h]
	lea	rdx,[00000000004629D0]                                 ; [rip+00000502]
	cmp	rax,rdx
	jnz	4624F0h

l00000000004624D3:
	mov	eax,0FFFFFFFFh
	jmp	4624AAh
00000000004624DA                               66 0F 1F 44 00 00           f..D..

l00000000004624E0:
	add	rsp,20h
	pop	rbx
	jmp	rdx
00000000004624E8                         0F 1F 84 00 00 00 00 00         ........

l00000000004624F0:
	mov	rbx,rcx
	call	rax
	cmp	eax,0FFh
	jz	4624D3h

l00000000004624FA:
	mov	rdx,[rbx+10h]
	movzx	eax,byte ptr [rdx]
	add	rdx,1h
	mov	[rbx+10h],rdx
	jmp	4624AAh
000000000046250B                                  90 90 90 90 90            .....

;; fn0000000000462510: 0000000000462510
fn0000000000462510 proc
	mov	rax,rcx
	ret
0000000000462514             90 90 90 90 90 90 90 90 90 90 90 90     ............

;; fn0000000000462520: 0000000000462520
fn0000000000462520 proc
	push	rbx
	sub	rsp,20h
	mov	rax,[rcx+10h]
	mov	rdx,[rcx+18h]
	mov	rbx,rcx
	cmp	rax,rdx
	jnc	462550h

l0000000000462535:
	add	rax,1h
	mov	[rcx+10h],rax

l000000000046253D:
	cmp	rdx,rax
	jbe	462580h

l0000000000462542:
	movzx	eax,byte ptr [rax]
	add	rsp,20h
	pop	rbx
	ret
000000000046254B                                  0F 1F 44 00 00            ..D..

l0000000000462550:
	mov	rax,[rcx]
	lea	rcx,[0000000000462440]                                 ; [rip-0000011A]
	mov	rdx,[rax+50h]
	cmp	rdx,rcx
	jnz	4625A0h

l0000000000462563:
	mov	rax,[rax+48h]
	lea	rdx,[00000000004629D0]                                 ; [rip+00000462]
	cmp	rax,rdx
	jnz	4625B4h

l0000000000462573:
	mov	eax,0FFFFFFFFh
	add	rsp,20h
	pop	rbx
	ret
000000000046257E                                           66 90               f.

l0000000000462580:
	mov	rax,[rbx]
	lea	rdx,[00000000004629D0]                                 ; [rip+00000446]
	mov	rax,[rax+48h]
	cmp	rax,rdx
	jz	462573h

l0000000000462593:
	mov	rcx,rbx
	add	rsp,20h
	pop	rbx
	jmp	rax
000000000046259E                                           66 90               f.

l00000000004625A0:
	mov	rcx,rbx
	call	rdx
	cmp	eax,0FFh
	jz	462573h

l00000000004625AA:
	mov	rax,[rbx+10h]
	mov	rdx,[rbx+18h]
	jmp	46253Dh

l00000000004625B4:
	mov	rcx,rbx
	call	rax
	cmp	eax,0FFh
	jz	462573h

l00000000004625BE:
	mov	rax,[rbx+10h]
	mov	rdx,[rbx+18h]
	add	rax,1h
	mov	[rbx+10h],rax
	jmp	46253Dh
00000000004625D3          90 90 90 90 90 90 90 90 90 90 90 90 90    .............

;; fn00000000004625E0: 00000000004625E0
fn00000000004625E0 proc
	push	rbx
	sub	rsp,20h
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	462600h

l00000000004625EF:
	add	rax,1h
	mov	[rcx+10h],rax

l00000000004625F7:
	add	rsp,20h
	pop	rbx
	ret
00000000004625FD                                        0F 1F 00              ...

l0000000000462600:
	mov	rax,[rcx]
	lea	r8,[0000000000462440]                                  ; [rip-000001CA]
	mov	rdx,[rax+50h]
	cmp	rdx,r8
	jnz	462640h

l0000000000462613:
	mov	rax,[rax+48h]
	lea	rdx,[00000000004629D0]                                 ; [rip+000003B2]
	cmp	rax,rdx
	jz	4625F7h

l0000000000462623:
	mov	rbx,rcx
	call	rax
	cmp	eax,0FFh
	jz	4625F7h

l000000000046262D:
	add	qword ptr [rbx+10h],1h
	add	rsp,20h
	pop	rbx
	ret
0000000000462638                         0F 1F 84 00 00 00 00 00         ........

l0000000000462640:
	add	rsp,20h
	pop	rbx
	jmp	rdx
0000000000462648                         90 90 90 90 90 90 90 90         ........

;; fn0000000000462650: 0000000000462650
;;   Called from:
;;     0000000000455FA9 (in fn0000000000455E10)
fn0000000000462650 proc
	push	r14
	push	r13
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,20h
	xor	esi,esi
	test	r8,r8
	mov	rbx,rcx
	mov	r14,rdx
	mov	r13,r8
	jle	46269Eh

l000000000046266E:
	lea	rbp,[0000000000462440]                                 ; [rip-00000235]
	lea	r12,[00000000004629D0]                                 ; [rip+00000354]

l000000000046267C:
	mov	rdx,[rbx+10h]
	mov	r9,[rbx+18h]
	sub	r9,rdx
	jnz	4626B0h

l0000000000462689:
	mov	rax,[rbx]
	mov	rdx,[rax+50h]
	cmp	rdx,rbp
	jnz	4626E0h

l0000000000462695:
	mov	rax,[rax+48h]
	cmp	rax,r12
	jnz	462702h

l000000000046269E:
	mov	rax,rsi
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	ret

l00000000004626B0:
	mov	rdi,r13
	mov	rcx,r14
	sub	rdi,rsi
	cmp	rdi,r9
	cmovg	rdi,r9

l00000000004626C0:
	mov	r8,rdi
	add	rsi,rdi
	call	41BCC0h
	add	[rbx+10h],rdi
	cmp	r13,rsi
	jle	46269Eh

l00000000004626D4:
	add	r14,rdi
	jmp	462689h
00000000004626D9                            0F 1F 80 00 00 00 00          .......

l00000000004626E0:
	mov	rcx,rbx
	call	rdx
	cmp	eax,0FFh
	jz	46269Eh

l00000000004626EA:
	add	rsi,1h
	lea	rdx,[r14+1h]
	mov	[r14],al
	cmp	r13,rsi
	jle	46269Eh

l00000000004626FA:
	mov	r14,rdx
	jmp	46267Ch

l0000000000462702:
	mov	rcx,rbx
	call	rax
	cmp	eax,0FFh
	jz	46269Eh

l000000000046270C:
	mov	rdx,[rbx+10h]
	movzx	eax,byte ptr [rdx]
	add	rdx,1h
	mov	[rbx+10h],rdx
	jmp	4626EAh
000000000046271D                                        90 90 90              ...

;; fn0000000000462720: 0000000000462720
;;   Called from:
;;     0000000000456162 (in fn00000000004560A0)
fn0000000000462720 proc
	push	r13
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,28h
	xor	ebx,ebx
	test	r8,r8
	mov	rdi,rcx
	mov	rbp,rdx
	mov	r13,r8
	jle	462760h

l000000000046273C:
	lea	r12,[00000000004628B0]                                 ; [rip+0000016D]

l0000000000462743:
	mov	rcx,[rdi+28h]
	mov	r9,[rdi+30h]
	sub	r9,rcx
	jnz	462770h

l0000000000462750:
	mov	rax,[rdi]
	movzx	edx,byte ptr [rbp+0h]
	mov	rax,[rax+68h]
	cmp	rax,r12
	jnz	4627A0h

l0000000000462760:
	mov	rax,rbx
	add	rsp,28h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	ret

l0000000000462770:
	mov	rsi,r13
	mov	rdx,rbp
	sub	rsi,rbx
	cmp	rsi,r9
	cmovg	rsi,r9

l0000000000462780:
	mov	r8,rsi
	add	rbx,rsi
	call	41BCC0h
	add	[rdi+28h],rsi
	cmp	r13,rbx
	jle	462760h

l0000000000462794:
	add	rbp,rsi
	jmp	462750h
0000000000462799                            0F 1F 80 00 00 00 00          .......

l00000000004627A0:
	mov	rcx,rdi
	call	rax
	cmp	eax,0FFh
	jz	462760h

l00000000004627AA:
	add	rbx,1h
	add	rbp,1h
	cmp	r13,rbx
	jg	462743h

l00000000004627B7:
	jmp	462760h
00000000004627B9                            90 90 90 90 90 90 90          .......

;; fn00000000004627C0: 00000000004627C0
fn00000000004627C0 proc
	mov	rax,[rcx]
	lea	rdx,[0000000000462360]                                 ; [rip-0000046A]
	mov	rax,[rax+30h]
	cmp	rax,rdx
	jnz	4627E0h

l00000000004627D3:
	xor	eax,eax
	ret
00000000004627D6                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l00000000004627E0:
	jmp	rax
00000000004627E3          90 90 90 90 90 90 90 90 90 90 90 90 90    .............

;; fn00000000004627F0: 00000000004627F0
fn00000000004627F0 proc
	mov	rax,rcx
	mov	qword ptr [rcx],-1h
	mov	dword ptr [rcx+8h],0h
	ret
0000000000462802       90 90 90 90 90 90 90 90 90 90 90 90 90 90   ..............

;; fn0000000000462810: 0000000000462810
fn0000000000462810 proc
	mov	rax,rcx
	mov	qword ptr [rcx],-1h
	mov	dword ptr [rcx+8h],0h
	ret
0000000000462822       90 90 90 90 90 90 90 90 90 90 90 90 90 90   ..............

;; fn0000000000462830: 0000000000462830
fn0000000000462830 proc
	mov	rax,[rcx+10h]
	cmp	[rcx+8h],rax
	jnc	462850h

l000000000046283A:
	lea	rdx,[rax-1h]
	mov	[rcx+10h],rdx
	movzx	eax,byte ptr [rax-1h]
	ret
0000000000462847                      66 0F 1F 84 00 00 00 00 00        f........

l0000000000462850:
	mov	rax,[rcx]
	lea	rdx,[0000000000462930]                                 ; [rip+000000D6]
	mov	r8,[rax+58h]
	mov	eax,0FFFFFFFFh
	cmp	r8,rdx
	jnz	462870h

l0000000000462868:
	ret
000000000046286A                               66 0F 1F 44 00 00           f..D..

l0000000000462870:
	mov	edx,eax
	jmp	r8
0000000000462875                90 90 90 90 90 90 90 90 90 90 90      ...........

;; fn0000000000462880: 0000000000462880
fn0000000000462880 proc
	mov	rdx,[rcx+18h]
	sub	rdx,[rcx+10h]
	test	rdx,rdx
	mov	rax,rdx
	jz	462892h

l0000000000462890:
	ret

l0000000000462892:
	mov	rax,[rcx]
	mov	r8,[rax+38h]
	mov	rax,rdx
	lea	rdx,[0000000000462970]                                 ; [rip+000000CD]
	cmp	r8,rdx
	jz	462890h

l00000000004628A8:
	jmp	r8
00000000004628AB                                  90 90 90 90 90            .....

;; fn00000000004628B0: 00000000004628B0
fn00000000004628B0 proc
	mov	eax,0FFFFFFFFh
	ret
00000000004628B6                   90 90 90 90 90 90 90 90 90 90       ..........

;; fn00000000004628C0: 00000000004628C0
fn00000000004628C0 proc
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,28h
	lea	rdi,[rdx+38h]
	mov	rbx,rdx
	mov	rsi,rcx
	mov	rbp,r8
	mov	rdx,rdi
	call	46AE80h
	mov	rax,[rbx]
	lea	rdx,[0000000000462380]                                 ; [rip-00000567]
	mov	rax,[rax+10h]
	cmp	rax,rdx
	jnz	462910h

l00000000004628F0:
	mov	rdx,rbp
	mov	rcx,rdi
	call	46AF60h
	mov	rax,rsi
	add	rsp,28h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
0000000000462907                      66 0F 1F 84 00 00 00 00 00        f........

l0000000000462910:
	mov	rdx,rbp
	mov	rcx,rbx
	call	rax
	jmp	4628F0h
000000000046291A                               48 89 C3 48 89 F1           H..H..
0000000000462920 E8 FB 85 00 00 48 89 D9 E8 83 EC FA FF 90 90 90 .....H..........

;; fn0000000000462930: 0000000000462930
fn0000000000462930 proc
	mov	eax,0FFFFFFFFh
	ret
0000000000462936                   90 90 90 90 90 90 90 90 90 90       ..........

;; fn0000000000462940: 0000000000462940
fn0000000000462940 proc
	mov	rax,[rcx]
	lea	r9,[0000000000462510]                                  ; [rip-0000043A]
	mov	rax,[rax+18h]
	cmp	rax,r9
	jnz	462960h

l0000000000462953:
	mov	rax,rcx
	ret
0000000000462957                      66 0F 1F 84 00 00 00 00 00        f........

l0000000000462960:
	jmp	rax
0000000000462963          90 90 90 90 90 90 90 90 90 90 90 90 90    .............

;; fn0000000000462970: 0000000000462970
fn0000000000462970 proc
	xor	eax,eax
	ret
0000000000462973          90 90 90 90 90 90 90 90 90 90 90 90 90    .............

;; fn0000000000462980: 0000000000462980
fn0000000000462980 proc
	mov	rax,[rcx+10h]
	cmp	[rcx+8h],rax
	jnc	46298Fh

l000000000046298A:
	cmp	[rax-1h],dl
	jz	4629B0h

l000000000046298F:
	mov	rax,[rcx]
	lea	r9,[0000000000462930]                                  ; [rip-00000069]
	mov	r8,[rax+58h]
	mov	eax,0FFFFFFFFh
	cmp	r8,r9
	jnz	4629C0h

l00000000004629A7:
	ret
00000000004629A9                            0F 1F 80 00 00 00 00          .......

l00000000004629B0:
	lea	rdx,[rax-1h]
	mov	[rcx+10h],rdx
	movzx	eax,byte ptr [rax-1h]
	ret
00000000004629BD                                        0F 1F 00              ...

l00000000004629C0:
	movzx	edx,dl
	jmp	r8
00000000004629C6                   90 90 90 90 90 90 90 90 90 90       ..........

;; fn00000000004629D0: 00000000004629D0
fn00000000004629D0 proc
	mov	eax,0FFFFFFFFh
	ret
00000000004629D6                   90 90 90 90 90 90 90 90 90 90       ..........

;; fn00000000004629E0: 00000000004629E0
fn00000000004629E0 proc
	lea	rax,[0000000000496F10]                                 ; [rip+00034529]
	add	rdx,38h
	add	rcx,38h
	mov	[rcx-38h],rax
	mov	rax,[rdx-30h]
	mov	[rcx-30h],rax
	mov	rax,[rdx-28h]
	mov	[rcx-28h],rax
	mov	rax,[rdx-20h]
	mov	[rcx-20h],rax
	mov	rax,[rdx-18h]
	mov	[rcx-18h],rax
	mov	rax,[rdx-10h]
	mov	[rcx-10h],rax
	mov	rax,[rdx-10h]
	mov	[rcx-8h],rax
	jmp	46AE80h
0000000000462A28                         90 90 90 90 90 90 90 90         ........

;; fn0000000000462A30: 0000000000462A30
fn0000000000462A30 proc
	lea	rax,[0000000000496F10]                                 ; [rip+000344D9]
	mov	qword ptr [rcx+8h],+0h
	mov	qword ptr [rcx+10h],+0h
	add	rcx,38h
	mov	[rcx-38h],rax
	mov	qword ptr [rcx-20h],+0h
	mov	qword ptr [rcx-18h],+0h
	mov	qword ptr [rcx-10h],+0h
	mov	qword ptr [rcx-8h],+0h
	jmp	46AE90h
0000000000462A74             90 90 90 90 90 90 90 90 90 90 90 90     ............

;; fn0000000000462A80: 0000000000462A80
fn0000000000462A80 proc
	lea	rax,[0000000000496F10]                                 ; [rip+00034489]
	add	rdx,38h
	add	rcx,38h
	mov	[rcx-38h],rax
	mov	rax,[rdx-30h]
	mov	[rcx-30h],rax
	mov	rax,[rdx-28h]
	mov	[rcx-28h],rax
	mov	rax,[rdx-20h]
	mov	[rcx-20h],rax
	mov	rax,[rdx-18h]
	mov	[rcx-18h],rax
	mov	rax,[rdx-10h]
	mov	[rcx-10h],rax
	mov	rax,[rdx-10h]
	mov	[rcx-8h],rax
	jmp	46AE80h
0000000000462AC8                         90 90 90 90 90 90 90 90         ........

;; fn0000000000462AD0: 0000000000462AD0
fn0000000000462AD0 proc
	lea	rax,[0000000000496F10]                                 ; [rip+00034439]
	mov	qword ptr [rcx+8h],+0h
	mov	qword ptr [rcx+10h],+0h
	add	rcx,38h
	mov	[rcx-38h],rax
	mov	qword ptr [rcx-20h],+0h
	mov	qword ptr [rcx-18h],+0h
	mov	qword ptr [rcx-10h],+0h
	mov	qword ptr [rcx-8h],+0h
	jmp	46AE90h
0000000000462B14             90 90 90 90 90 90 90 90 90 90 90 90     ............

;; fn0000000000462B20: 0000000000462B20
fn0000000000462B20 proc
	push	rbx
	sub	rsp,20h
	lea	rax,[0000000000496F10]                                 ; [rip+000343E4]
	mov	rbx,rcx
	lea	rcx,[rcx+38h]
	mov	[rcx-38h],rax
	call	46AF20h
	mov	rcx,rbx
	add	rsp,20h
	pop	rbx
	jmp	475550h
0000000000462B49                            90 90 90 90 90 90 90          .......

;; fn0000000000462B50: 0000000000462B50
fn0000000000462B50 proc
	lea	rax,[0000000000496F10]                                 ; [rip+000343B9]
	add	rcx,38h
	mov	[rcx-38h],rax
	jmp	46AF20h
0000000000462B64             90 90 90 90 90 90 90 90 90 90 90 90     ............

;; fn0000000000462B70: 0000000000462B70
fn0000000000462B70 proc
	lea	rax,[0000000000496F10]                                 ; [rip+00034399]
	add	rcx,38h
	mov	[rcx-38h],rax
	jmp	46AF20h
0000000000462B84             90 90 90 90 90 90 90 90 90 90 90 90     ............

;; fn0000000000462B90: 0000000000462B90
fn0000000000462B90 proc
	mov	rax,rcx
	ret
0000000000462B94             90 90 90 90 90 90 90 90 90 90 90 90     ............

;; fn0000000000462BA0: 0000000000462BA0
fn0000000000462BA0 proc
	sub	rsp,48h
	mov	rax,rcx
	mov	rcx,[rdx]
	mov	r10,[rcx+20h]
	lea	rcx,[0000000000463140]                                 ; [rip+0000058B]
	cmp	r10,rcx
	jnz	462BD0h

l0000000000462BBA:
	mov	qword ptr [rax],-1h
	mov	dword ptr [rax+8h],0h
	add	rsp,48h
	ret
0000000000462BCD                                        0F 1F 00              ...

l0000000000462BD0:
	mov	ecx,[rsp+70h]
	mov	[rsp+38h],rax
	mov	[rsp+20h],ecx
	mov	rcx,rax
	call	r10
	mov	rax,[rsp+38h]
	add	rsp,48h
	ret
0000000000462BED                                        90 90 90              ...

;; fn0000000000462BF0: 0000000000462BF0
fn0000000000462BF0 proc
	sub	rsp,48h
	mov	rax,rcx
	mov	rcx,[rdx]
	movdqu	xmm1,[r8]
	mov	r10,[rcx+28h]
	lea	rcx,[0000000000463160]                                 ; [rip+00000556]
	cmp	r10,rcx
	jnz	462C22h

l0000000000462C0F:
	mov	qword ptr [rax],-1h
	mov	dword ptr [rax+8h],0h
	add	rsp,48h
	ret

l0000000000462C22:
	mov	rcx,rax
	mov	[rsp+28h],rax
	lea	r8,[rsp+30h]
	movaps	[rsp+30h],xmm1
	call	r10
	mov	rax,[rsp+28h]
	add	rsp,48h
	ret
0000000000462C41    90 90 90 90 90 90 90 90 90 90 90 90 90 90 90  ...............

;; fn0000000000462C50: 0000000000462C50
fn0000000000462C50 proc
	add	rdx,rdx
	add	[rcx+10h],rdx
	ret
0000000000462C58                         90 90 90 90 90 90 90 90         ........

;; fn0000000000462C60: 0000000000462C60
fn0000000000462C60 proc
	add	rdx,rdx
	add	[rcx+28h],rdx
	ret
0000000000462C68                         90 90 90 90 90 90 90 90         ........

;; fn0000000000462C70: 0000000000462C70
fn0000000000462C70 proc
	mov	[rcx+8h],rdx
	mov	[rcx+10h],r8
	mov	[rcx+18h],r9
	ret
0000000000462C7D                                        90 90 90              ...

;; fn0000000000462C80: 0000000000462C80
fn0000000000462C80 proc
	mov	[rcx+28h],rdx
	mov	[rcx+20h],rdx
	mov	[rcx+30h],r8
	ret
0000000000462C8D                                        90 90 90              ...

;; fn0000000000462C90: 0000000000462C90
fn0000000000462C90 proc
	xor	eax,eax
	ret
0000000000462C93          90 90 90 90 90 90 90 90 90 90 90 90 90    .............

;; fn0000000000462CA0: 0000000000462CA0
fn0000000000462CA0 proc
	movsxd	rdx,edx
	add	rdx,rdx
	add	[rcx+10h],rdx
	ret
0000000000462CAB                                  90 90 90 90 90            .....

;; fn0000000000462CB0: 0000000000462CB0
fn0000000000462CB0 proc
	ret
0000000000462CB1    90 90 90 90 90 90 90 90 90 90 90 90 90 90 90  ...............

;; fn0000000000462CC0: 0000000000462CC0
fn0000000000462CC0 proc
	movsxd	rdx,edx
	add	rdx,rdx
	add	[rcx+28h],rdx
	ret
0000000000462CCB                                  90 90 90 90 90            .....

;; fn0000000000462CD0: 0000000000462CD0
fn0000000000462CD0 proc
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	462CE0h

l0000000000462CDA:
	movzx	eax,word ptr [rax]
	ret
0000000000462CDE                                           66 90               f.

l0000000000462CE0:
	mov	rax,[rcx]
	lea	r8,[0000000000463320]                                  ; [rip+00000636]
	mov	rdx,[rax+48h]
	mov	eax,0FFFFFFFFh
	cmp	rdx,r8
	jnz	462D00h

l0000000000462CF8:
	ret
0000000000462CFA                               66 0F 1F 44 00 00           f..D..

l0000000000462D00:
	jmp	rdx
0000000000462D03          90 90 90 90 90 90 90 90 90 90 90 90 90    .............

;; fn0000000000462D10: 0000000000462D10
fn0000000000462D10 proc
	mov	rax,[rcx]
	mov	rax,[rax+40h]
	jmp	rax
0000000000462D1A                               90 90 90 90 90 90           ......

;; fn0000000000462D20: 0000000000462D20
fn0000000000462D20 proc
	mov	r8,[rcx+28h]
	cmp	r8,[rcx+30h]
	mov	eax,edx
	jnc	462D40h

l0000000000462D2C:
	mov	[r8],dx
	add	r8,2h
	mov	[rcx+28h],r8
	ret
0000000000462D39                            0F 1F 80 00 00 00 00          .......

l0000000000462D40:
	mov	rax,[rcx]
	lea	r9,[0000000000463200]                                  ; [rip+000004B6]
	mov	r8,[rax+68h]
	mov	eax,0FFFFFFFFh
	cmp	r8,r9
	jnz	462D60h

l0000000000462D58:
	ret
0000000000462D5A                               66 0F 1F 44 00 00           f..D..

l0000000000462D60:
	movzx	edx,dx
	jmp	r8
0000000000462D66                   90 90 90 90 90 90 90 90 90 90       ..........

;; fn0000000000462D70: 0000000000462D70
fn0000000000462D70 proc
	mov	rax,[rcx]
	mov	rax,[rax+60h]
	jmp	rax
0000000000462D7A                               90 90 90 90 90 90           ......

;; fn0000000000462D80: 0000000000462D80
fn0000000000462D80 proc
	push	rbx
	sub	rsp,20h
	mov	rax,[rcx]
	lea	rdx,[0000000000463320]                                 ; [rip+00000591]
	mov	rax,[rax+48h]
	cmp	rax,rdx
	jnz	462DA3h

l0000000000462D98:
	mov	eax,0FFFFFFFFh
	add	rsp,20h
	pop	rbx
	ret

l0000000000462DA3:
	mov	rbx,rcx
	call	rax
	cmp	ax,0FFh
	jz	462D98h

l0000000000462DAE:
	mov	rdx,[rbx+10h]
	movzx	eax,word ptr [rdx]
	add	rdx,2h
	mov	[rbx+10h],rdx
	add	rsp,20h
	pop	rbx
	ret
0000000000462DC3          90 90 90 90 90 90 90 90 90 90 90 90 90    .............

;; fn0000000000462DD0: 0000000000462DD0
;;   Called from:
;;     0000000000432833 (in fn0000000000432750)
;;     0000000000433163 (in fn0000000000433080)
;;     0000000000433AA9 (in fn00000000004339C0)
;;     000000000043449D (in fn00000000004343C0)
;;     0000000000434EE0 (in fn0000000000434E00)
;;     0000000000436C53 (in fn0000000000436210)
;;     000000000043FD66 (in fn000000000043FB10)
;;     00000000004417FB (in fn0000000000441480)
fn0000000000462DD0 proc
	push	rbx
	sub	rsp,20h
	mov	rdx,[rcx+10h]
	cmp	rdx,[rcx+18h]
	jnc	462DF0h

l0000000000462DDF:
	movzx	eax,word ptr [rdx]
	add	rdx,2h
	mov	[rcx+10h],rdx

l0000000000462DEA:
	add	rsp,20h
	pop	rbx
	ret

l0000000000462DF0:
	mov	rax,[rcx]
	lea	r8,[0000000000462D80]                                  ; [rip-0000007A]
	mov	rdx,[rax+50h]
	cmp	rdx,r8
	jnz	462E20h

l0000000000462E03:
	mov	rax,[rax+48h]
	lea	rdx,[0000000000463320]                                 ; [rip+00000512]
	cmp	rax,rdx
	jnz	462E30h

l0000000000462E13:
	mov	eax,0FFFFFFFFh
	jmp	462DEAh
0000000000462E1A                               66 0F 1F 44 00 00           f..D..

l0000000000462E20:
	add	rsp,20h
	pop	rbx
	jmp	rdx
0000000000462E28                         0F 1F 84 00 00 00 00 00         ........

l0000000000462E30:
	mov	rbx,rcx
	call	rax
	cmp	ax,0FFh
	jz	462E13h

l0000000000462E3B:
	mov	rdx,[rbx+10h]
	movzx	eax,word ptr [rdx]
	add	rdx,2h
	mov	[rbx+10h],rdx
	jmp	462DEAh
0000000000462E4C                                     90 90 90 90             ....

;; fn0000000000462E50: 0000000000462E50
fn0000000000462E50 proc
	mov	rax,rcx
	ret
0000000000462E54             90 90 90 90 90 90 90 90 90 90 90 90     ............

;; fn0000000000462E60: 0000000000462E60
fn0000000000462E60 proc
	push	rbx
	sub	rsp,20h
	mov	rdx,[rcx+10h]
	cmp	rdx,[rcx+18h]
	mov	rbx,rcx
	jnc	462EA0h

l0000000000462E72:
	movzx	eax,word ptr [rdx]
	add	rdx,2h
	mov	[rbx+10h],rdx

l0000000000462E7D:
	cmp	ax,0FFh
	jz	462EC3h

l0000000000462E83:
	mov	rax,[rbx+10h]
	cmp	rax,[rbx+18h]
	jnc	462ED0h

l0000000000462E8D:
	movzx	eax,word ptr [rax]
	add	rsp,20h
	pop	rbx
	ret
0000000000462E96                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l0000000000462EA0:
	mov	rax,[rcx]
	lea	rcx,[0000000000462D80]                                 ; [rip-0000012A]
	mov	rdx,[rax+50h]
	cmp	rdx,rcx
	jnz	462F04h

l0000000000462EB3:
	mov	rax,[rax+48h]
	lea	rdx,[0000000000463320]                                 ; [rip+00000462]
	cmp	rax,rdx
	jnz	462EF0h

l0000000000462EC3:
	mov	eax,0FFFFFFFFh
	add	rsp,20h
	pop	rbx
	ret
0000000000462ECE                                           66 90               f.

l0000000000462ED0:
	mov	rax,[rbx]
	lea	rdx,[0000000000463320]                                 ; [rip+00000446]
	mov	rax,[rax+48h]
	cmp	rax,rdx
	jz	462EC3h

l0000000000462EE3:
	mov	rcx,rbx
	add	rsp,20h
	pop	rbx
	jmp	rax
0000000000462EEE                                           66 90               f.

l0000000000462EF0:
	mov	rcx,rbx
	call	rax
	cmp	ax,0FFh
	jz	462EC3h

l0000000000462EFB:
	mov	rdx,[rbx+10h]
	jmp	462E72h

l0000000000462F04:
	mov	rcx,rbx
	call	rdx
	jmp	462E7Dh
0000000000462F0E                                           90 90               ..

;; fn0000000000462F10: 0000000000462F10
fn0000000000462F10 proc
	push	rbx
	sub	rsp,20h
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	jnc	462F30h

l0000000000462F1F:
	add	rax,2h
	mov	[rcx+10h],rax

l0000000000462F27:
	add	rsp,20h
	pop	rbx
	ret
0000000000462F2D                                        0F 1F 00              ...

l0000000000462F30:
	mov	rax,[rcx]
	lea	r8,[0000000000462D80]                                  ; [rip-000001BA]
	mov	rdx,[rax+50h]
	cmp	rdx,r8
	jnz	462F70h

l0000000000462F43:
	mov	rax,[rax+48h]
	lea	rdx,[0000000000463320]                                 ; [rip+000003D2]
	cmp	rax,rdx
	jz	462F27h

l0000000000462F53:
	mov	rbx,rcx
	call	rax
	cmp	ax,0FFh
	jz	462F27h

l0000000000462F5E:
	add	qword ptr [rbx+10h],2h
	add	rsp,20h
	pop	rbx
	ret
0000000000462F69                            0F 1F 80 00 00 00 00          .......

l0000000000462F70:
	add	rsp,20h
	pop	rbx
	jmp	rdx
0000000000462F78                         90 90 90 90 90 90 90 90         ........

;; fn0000000000462F80: 0000000000462F80
;;   Called from:
;;     0000000000457D09 (in fn0000000000457B60)
fn0000000000462F80 proc
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,28h
	xor	esi,esi
	test	r8,r8
	mov	rbx,rcx
	mov	r14,rdx
	mov	r13,r8
	jle	462FD3h

l0000000000462FA0:
	lea	rbp,[0000000000462D80]                                 ; [rip-00000227]
	lea	r12,[0000000000463320]                                 ; [rip+00000372]

l0000000000462FAE:
	mov	rdx,[rbx+10h]
	mov	r9,[rbx+18h]
	sub	r9,rdx
	sar	r9,1h
	jnz	462FF0h

l0000000000462FBE:
	mov	rax,[rbx]
	mov	rdx,[rax+50h]
	cmp	rdx,rbp
	jnz	463020h

l0000000000462FCA:
	mov	rax,[rax+48h]
	cmp	rax,r12
	jnz	463044h

l0000000000462FD3:
	mov	rax,rsi
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
0000000000462FE7                      66 0F 1F 84 00 00 00 00 00        f........

l0000000000462FF0:
	mov	rdi,r13
	mov	rcx,r14
	sub	rdi,rsi
	cmp	rdi,r9
	cmovg	rdi,r9

l0000000000463000:
	lea	r15,[rdi+rdi]
	add	rsi,rdi
	mov	r8,r15
	call	41BCC0h
	add	[rbx+10h],r15
	cmp	r13,rsi
	jle	462FD3h

l0000000000463018:
	add	r14,r15
	jmp	462FBEh
000000000046301D                                        0F 1F 00              ...

l0000000000463020:
	mov	rcx,rbx
	call	rdx

l0000000000463025:
	cmp	ax,0FFh
	jz	462FD3h

l000000000046302B:
	add	rsi,1h
	lea	rdx,[r14+2h]
	mov	[r14],ax
	cmp	r13,rsi
	jle	462FD3h

l000000000046303C:
	mov	r14,rdx
	jmp	462FAEh

l0000000000463044:
	mov	rcx,rbx
	call	rax
	cmp	ax,0FFh
	jz	462FD3h

l000000000046304F:
	mov	rdx,[rbx+10h]
	movzx	eax,word ptr [rdx]
	add	rdx,2h
	mov	[rbx+10h],rdx
	jmp	463025h

;; fn0000000000463060: 0000000000463060
;;   Called from:
;;     0000000000457EC1 (in fn0000000000457DF0)
fn0000000000463060 proc
	push	r14
	push	r13
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,20h
	xor	ebx,ebx
	test	r8,r8
	mov	rsi,rcx
	mov	r13,rdx
	mov	r14,r8
	jle	4630A6h

l000000000046307E:
	lea	rbp,[0000000000463200]                                 ; [rip+0000017B]

l0000000000463085:
	mov	rcx,[rsi+28h]
	mov	r9,[rsi+30h]
	sub	r9,rcx
	sar	r9,1h
	jnz	4630C0h

l0000000000463095:
	mov	rax,[rsi]
	movzx	edx,word ptr [r13+0h]
	mov	rax,[rax+68h]
	cmp	rax,rbp
	jnz	4630F0h

l00000000004630A6:
	mov	rax,rbx
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	ret
00000000004630B8                         0F 1F 84 00 00 00 00 00         ........

l00000000004630C0:
	mov	rdi,r14
	mov	rdx,r13
	sub	rdi,rbx
	cmp	rdi,r9
	cmovg	rdi,r9

l00000000004630D0:
	lea	r12,[rdi+rdi]
	add	rbx,rdi
	mov	r8,r12
	call	41BCC0h
	add	[rsi+28h],r12
	cmp	r14,rbx
	jle	4630A6h

l00000000004630E8:
	add	r13,r12
	jmp	463095h
00000000004630ED                                        0F 1F 00              ...

l00000000004630F0:
	mov	rcx,rsi
	call	rax
	cmp	ax,0FFh
	jz	4630A6h

l00000000004630FB:
	add	rbx,1h
	add	r13,2h
	cmp	r14,rbx
	jg	463085h

l000000000046310C:
	jmp	4630A6h
000000000046310E                                           90 90               ..

;; fn0000000000463110: 0000000000463110
fn0000000000463110 proc
	mov	rax,[rcx]
	lea	rdx,[0000000000462C90]                                 ; [rip-0000048A]
	mov	rax,[rax+30h]
	cmp	rax,rdx
	jnz	463130h

l0000000000463123:
	xor	eax,eax
	ret
0000000000463126                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l0000000000463130:
	jmp	rax
0000000000463133          90 90 90 90 90 90 90 90 90 90 90 90 90    .............

;; fn0000000000463140: 0000000000463140
fn0000000000463140 proc
	mov	rax,rcx
	mov	qword ptr [rcx],-1h
	mov	dword ptr [rcx+8h],0h
	ret
0000000000463152       90 90 90 90 90 90 90 90 90 90 90 90 90 90   ..............

;; fn0000000000463160: 0000000000463160
fn0000000000463160 proc
	mov	rax,rcx
	mov	qword ptr [rcx],-1h
	mov	dword ptr [rcx+8h],0h
	ret
0000000000463172       90 90 90 90 90 90 90 90 90 90 90 90 90 90   ..............

;; fn0000000000463180: 0000000000463180
fn0000000000463180 proc
	mov	rax,[rcx+10h]
	cmp	[rcx+8h],rax
	jnc	4631A0h

l000000000046318A:
	lea	rdx,[rax-2h]
	movzx	eax,word ptr [rax-2h]
	mov	[rcx+10h],rdx
	ret
0000000000463197                      66 0F 1F 84 00 00 00 00 00        f........

l00000000004631A0:
	mov	rax,[rcx]
	lea	rdx,[0000000000463280]                                 ; [rip+000000D6]
	mov	r8,[rax+58h]
	mov	eax,0FFFFFFFFh
	cmp	r8,rdx
	jnz	4631C0h

l00000000004631B8:
	ret
00000000004631BA                               66 0F 1F 44 00 00           f..D..

l00000000004631C0:
	mov	edx,0FFFFh
	jmp	r8
00000000004631C8                         90 90 90 90 90 90 90 90         ........

;; fn00000000004631D0: 00000000004631D0
fn00000000004631D0 proc
	mov	rdx,[rcx+18h]
	sub	rdx,[rcx+10h]
	sar	rdx,1h
	test	rdx,rdx
	mov	rax,rdx
	jz	4631E5h

l00000000004631E3:
	ret

l00000000004631E5:
	mov	rax,[rcx]
	mov	r8,[rax+38h]
	mov	rax,rdx
	lea	rdx,[00000000004632C0]                                 ; [rip+000000CA]
	cmp	r8,rdx
	jz	4631E3h

l00000000004631FB:
	jmp	r8
00000000004631FE                                           90 90               ..

;; fn0000000000463200: 0000000000463200
fn0000000000463200 proc
	mov	eax,0FFFFFFFFh
	ret
0000000000463206                   90 90 90 90 90 90 90 90 90 90       ..........

;; fn0000000000463210: 0000000000463210
fn0000000000463210 proc
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,28h
	lea	rdi,[rdx+38h]
	mov	rbx,rdx
	mov	rsi,rcx
	mov	rbp,r8
	mov	rdx,rdi
	call	46AE80h
	mov	rax,[rbx]
	lea	rdx,[0000000000462CB0]                                 ; [rip-00000587]
	mov	rax,[rax+10h]
	cmp	rax,rdx
	jnz	463260h

l0000000000463240:
	mov	rdx,rbp
	mov	rcx,rdi
	call	46AF60h
	mov	rax,rsi
	add	rsp,28h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
0000000000463257                      66 0F 1F 84 00 00 00 00 00        f........

l0000000000463260:
	mov	rdx,rbp
	mov	rcx,rbx
	call	rax
	jmp	463240h
000000000046326A                               48 89 C3 48 89 F1           H..H..
0000000000463270 E8 AB 7C 00 00 48 89 D9 E8 33 E3 FA FF 90 90 90 ..|..H...3......

;; fn0000000000463280: 0000000000463280
fn0000000000463280 proc
	mov	eax,0FFFFFFFFh
	ret
0000000000463286                   90 90 90 90 90 90 90 90 90 90       ..........

;; fn0000000000463290: 0000000000463290
fn0000000000463290 proc
	mov	rax,[rcx]
	lea	r9,[0000000000462E50]                                  ; [rip-0000044A]
	mov	rax,[rax+18h]
	cmp	rax,r9
	jnz	4632B0h

l00000000004632A3:
	mov	rax,rcx
	ret
00000000004632A7                      66 0F 1F 84 00 00 00 00 00        f........

l00000000004632B0:
	jmp	rax
00000000004632B3          90 90 90 90 90 90 90 90 90 90 90 90 90    .............

;; fn00000000004632C0: 00000000004632C0
fn00000000004632C0 proc
	xor	eax,eax
	ret
00000000004632C3          90 90 90 90 90 90 90 90 90 90 90 90 90    .............

;; fn00000000004632D0: 00000000004632D0
fn00000000004632D0 proc
	mov	r8,[rcx+10h]
	cmp	[rcx+8h],r8
	jnc	4632E4h

l00000000004632DA:
	movzx	eax,word ptr [r8-2h]
	cmp	ax,dx
	jz	463300h

l00000000004632E4:
	mov	rax,[rcx]
	lea	r9,[0000000000463280]                                  ; [rip-0000006E]
	mov	r8,[rax+58h]
	mov	eax,0FFFFFFFFh
	cmp	r8,r9
	jnz	463310h

l00000000004632FC:
	ret
00000000004632FE                                           66 90               f.

l0000000000463300:
	sub	r8,2h
	mov	[rcx+10h],r8
	ret
0000000000463309                            0F 1F 80 00 00 00 00          .......

l0000000000463310:
	movzx	edx,dx
	jmp	r8
0000000000463316                   90 90 90 90 90 90 90 90 90 90       ..........

;; fn0000000000463320: 0000000000463320
fn0000000000463320 proc
	mov	eax,0FFFFFFFFh
	ret
0000000000463326                   90 90 90 90 90 90 90 90 90 90       ..........

;; fn0000000000463330: 0000000000463330
fn0000000000463330 proc
	lea	rax,[0000000000496F90]                                 ; [rip+00033C59]
	add	rdx,38h
	add	rcx,38h
	mov	[rcx-38h],rax
	mov	rax,[rdx-30h]
	mov	[rcx-30h],rax
	mov	rax,[rdx-28h]
	mov	[rcx-28h],rax
	mov	rax,[rdx-20h]
	mov	[rcx-20h],rax
	mov	rax,[rdx-18h]
	mov	[rcx-18h],rax
	mov	rax,[rdx-10h]
	mov	[rcx-10h],rax
	mov	rax,[rdx-10h]
	mov	[rcx-8h],rax
	jmp	46AE80h
0000000000463378                         90 90 90 90 90 90 90 90         ........

;; fn0000000000463380: 0000000000463380
fn0000000000463380 proc
	lea	rax,[0000000000496F90]                                 ; [rip+00033C09]
	mov	qword ptr [rcx+8h],+0h
	mov	qword ptr [rcx+10h],+0h
	add	rcx,38h
	mov	[rcx-38h],rax
	mov	qword ptr [rcx-20h],+0h
	mov	qword ptr [rcx-18h],+0h
	mov	qword ptr [rcx-10h],+0h
	mov	qword ptr [rcx-8h],+0h
	jmp	46AE90h
00000000004633C4             90 90 90 90 90 90 90 90 90 90 90 90     ............

;; fn00000000004633D0: 00000000004633D0
fn00000000004633D0 proc
	lea	rax,[0000000000496F90]                                 ; [rip+00033BB9]
	add	rdx,38h
	add	rcx,38h
	mov	[rcx-38h],rax
	mov	rax,[rdx-30h]
	mov	[rcx-30h],rax
	mov	rax,[rdx-28h]
	mov	[rcx-28h],rax
	mov	rax,[rdx-20h]
	mov	[rcx-20h],rax
	mov	rax,[rdx-18h]
	mov	[rcx-18h],rax
	mov	rax,[rdx-10h]
	mov	[rcx-10h],rax
	mov	rax,[rdx-10h]
	mov	[rcx-8h],rax
	jmp	46AE80h
0000000000463418                         90 90 90 90 90 90 90 90         ........

;; fn0000000000463420: 0000000000463420
fn0000000000463420 proc
	lea	rax,[0000000000496F90]                                 ; [rip+00033B69]
	mov	qword ptr [rcx+8h],+0h
	mov	qword ptr [rcx+10h],+0h
	add	rcx,38h
	mov	[rcx-38h],rax
	mov	qword ptr [rcx-20h],+0h
	mov	qword ptr [rcx-18h],+0h
	mov	qword ptr [rcx-10h],+0h
	mov	qword ptr [rcx-8h],+0h
	jmp	46AE90h
0000000000463464             90 90 90 90 90 90 90 90 90 90 90 90     ............

;; fn0000000000463470: 0000000000463470
fn0000000000463470 proc
	push	rbx
	sub	rsp,20h
	lea	rax,[0000000000496F90]                                 ; [rip+00033B14]
	mov	rbx,rcx
	lea	rcx,[rcx+38h]
	mov	[rcx-38h],rax
	call	46AF20h
	mov	rcx,rbx
	add	rsp,20h
	pop	rbx
	jmp	475550h
0000000000463499                            90 90 90 90 90 90 90          .......

;; fn00000000004634A0: 00000000004634A0
fn00000000004634A0 proc
	lea	rax,[0000000000496F90]                                 ; [rip+00033AE9]
	add	rcx,38h
	mov	[rcx-38h],rax
	jmp	46AF20h
00000000004634B4             90 90 90 90 90 90 90 90 90 90 90 90     ............

;; fn00000000004634C0: 00000000004634C0
fn00000000004634C0 proc
	lea	rax,[0000000000496F90]                                 ; [rip+00033AC9]
	add	rcx,38h
	mov	[rcx-38h],rax
	jmp	46AF20h
00000000004634D4             90 90 90 90 90 90 90 90 90 90 90 90     ............

;; fn00000000004634E0: 00000000004634E0
fn00000000004634E0 proc
	mov	rax,rcx
	ret
00000000004634E4             90 90 90 90 90 90 90 90 90 90 90 90     ............

;; fn00000000004634F0: 00000000004634F0
fn00000000004634F0 proc
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,28h
	lea	rdi,[000000000048DEAA]                                 ; [rip+0002A9AB]
	mov	rbp,rdx
	mov	rdx,r8
	mov	rbx,rcx
	call	46D520h
	lea	rax,[0000000000497010]                                 ; [rip+00033AFC]
	mov	ecx,2h
	mov	rsi,rbp
	mov	[rbx],rax

l000000000046351F:
	rep cmpsb

l0000000000463521:
	jz	463536h

l0000000000463523:
	lea	rdi,[000000000048DEAC]                                 ; [rip+0002A982]
	mov	ecx,6h
	mov	rsi,rbp

l0000000000463532:
	rep cmpsb

l0000000000463534:
	jnz	463540h

l0000000000463536:
	add	rsp,28h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
000000000046353F                                              90                .

l0000000000463540:
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
0000000000463564             48 89 C6 48 89 D9 E8 61 A0 00 00 48     H..H...a...H
0000000000463570 89 F1 E8 39 E0 FA FF 90 90 90 90 90 90 90 90 90 ...9............

;; fn0000000000463580: 0000000000463580
fn0000000000463580 proc
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,28h
	lea	rdi,[000000000048DEAA]                                 ; [rip+0002A91B]
	mov	rbp,rdx
	mov	rdx,r8
	mov	rbx,rcx
	call	46D520h
	lea	rax,[0000000000497010]                                 ; [rip+00033A6C]
	mov	ecx,2h
	mov	rsi,rbp
	mov	[rbx],rax

l00000000004635AF:
	rep cmpsb

l00000000004635B1:
	jz	4635C6h

l00000000004635B3:
	lea	rdi,[000000000048DEAC]                                 ; [rip+0002A8F2]
	mov	ecx,6h
	mov	rsi,rbp

l00000000004635C2:
	rep cmpsb

l00000000004635C4:
	jnz	4635D0h

l00000000004635C6:
	add	rsp,28h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
00000000004635CF                                              90                .

l00000000004635D0:
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
00000000004635F4             48 89 C6 48 89 D9 E8 D1 9F 00 00 48     H..H.......H
0000000000463600 89 F1 E8 A9 DF FA FF 90 90 90 90 90 90 90 90 90 ................

;; fn0000000000463610: 0000000000463610
fn0000000000463610 proc
	push	rbx
	sub	rsp,20h
	lea	rax,[0000000000497010]                                 ; [rip+000339F4]
	mov	rbx,rcx
	mov	[rcx],rax
	call	46D5D0h
	mov	rcx,rbx
	add	rsp,20h
	pop	rbx
	jmp	475550h
0000000000463634             90 90 90 90 90 90 90 90 90 90 90 90     ............

;; fn0000000000463640: 0000000000463640
fn0000000000463640 proc
	lea	rax,[0000000000497010]                                 ; [rip+000339C9]
	mov	[rcx],rax
	jmp	46D5D0h
000000000046364F                                              90                .

;; fn0000000000463650: 0000000000463650
fn0000000000463650 proc
	lea	rax,[0000000000497010]                                 ; [rip+000339B9]
	mov	[rcx],rax
	jmp	46D5D0h
000000000046365F                                              90                .

;; fn0000000000463660: 0000000000463660
fn0000000000463660 proc
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,28h
	lea	rdi,[000000000048DB5A]                                 ; [rip+0002A4EB]
	mov	rbp,rdx
	mov	rdx,r8
	mov	rbx,rcx
	call	46D700h
	lea	rax,[0000000000497050]                                 ; [rip+000339CC]
	mov	ecx,2h
	mov	rsi,rbp
	mov	[rbx],rax

l000000000046368F:
	rep cmpsb

l0000000000463691:
	jz	4636A6h

l0000000000463693:
	lea	rdi,[000000000048DB5C]                                 ; [rip+0002A4C2]
	mov	ecx,6h
	mov	rsi,rbp

l00000000004636A2:
	rep cmpsb

l00000000004636A4:
	jnz	4636B0h

l00000000004636A6:
	add	rsp,28h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
00000000004636AF                                              90                .

l00000000004636B0:
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
00000000004636D4             48 89 C6 48 89 D9 E8 D1 A0 00 00 48     H..H.......H
00000000004636E0 89 F1 E8 C9 DE FA FF 90 90 90 90 90 90 90 90 90 ................

;; fn00000000004636F0: 00000000004636F0
fn00000000004636F0 proc
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,28h
	lea	rdi,[000000000048DB5A]                                 ; [rip+0002A45B]
	mov	rbp,rdx
	mov	rdx,r8
	mov	rbx,rcx
	call	46D700h
	lea	rax,[0000000000497050]                                 ; [rip+0003393C]
	mov	ecx,2h
	mov	rsi,rbp
	mov	[rbx],rax

l000000000046371F:
	rep cmpsb

l0000000000463721:
	jz	463736h

l0000000000463723:
	lea	rdi,[000000000048DB5C]                                 ; [rip+0002A432]
	mov	ecx,6h
	mov	rsi,rbp

l0000000000463732:
	rep cmpsb

l0000000000463734:
	jnz	463740h

l0000000000463736:
	add	rsp,28h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
000000000046373F                                              90                .

l0000000000463740:
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
0000000000463764             48 89 C6 48 89 D9 E8 41 A0 00 00 48     H..H...A...H
0000000000463770 89 F1 E8 39 DE FA FF 90 90 90 90 90 90 90 90 90 ...9............

;; fn0000000000463780: 0000000000463780
fn0000000000463780 proc
	push	rbx
	sub	rsp,20h
	lea	rax,[0000000000497050]                                 ; [rip+000338C4]
	mov	rbx,rcx
	mov	[rcx],rax
	call	46D7B0h
	mov	rcx,rbx
	add	rsp,20h
	pop	rbx
	jmp	475550h
00000000004637A4             90 90 90 90 90 90 90 90 90 90 90 90     ............

;; fn00000000004637B0: 00000000004637B0
fn00000000004637B0 proc
	lea	rax,[0000000000497050]                                 ; [rip+00033899]
	mov	[rcx],rax
	jmp	46D7B0h
00000000004637BF                                              90                .

;; fn00000000004637C0: 00000000004637C0
fn00000000004637C0 proc
	lea	rax,[0000000000497050]                                 ; [rip+00033889]
	mov	[rcx],rax
	jmp	46D7B0h
00000000004637CF                                              90                .

;; fn00000000004637D0: 00000000004637D0
fn00000000004637D0 proc
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,38h
	xor	eax,eax
	test	r8,r8
	mov	rbp,rdx
	mov	qword ptr [rcx+10h],+0h
	setnz	al
	xor	edx,edx
	mov	rbx,rcx
	mov	[rcx+8h],eax
	lea	rax,[0000000000497ED0]                                 ; [rip+000346D6]
	mov	[rcx],rax
	call	46D7F0h
	lea	rax,[0000000000497090]                                 ; [rip+00033887]
	lea	rdi,[000000000048DEAA]                                 ; [rip+0002A69A]
	mov	ecx,2h
	mov	rsi,rbp
	mov	[rbx],rax

l000000000046381B:
	rep cmpsb

l000000000046381D:
	jz	463832h

l000000000046381F:
	lea	rdi,[000000000048DEAC]                                 ; [rip+0002A686]
	mov	ecx,6h
	mov	rsi,rbp

l000000000046382E:
	rep cmpsb

l0000000000463830:
	jnz	463840h

l0000000000463832:
	add	rsp,38h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
000000000046383B                                  0F 1F 44 00 00            ..D..

l0000000000463840:
	lea	rsi,[rsp+28h]
	xor	r8d,r8d
	mov	rdx,rbp
	mov	rcx,rsi
	call	46AC90h
	mov	rdx,[rsp+28h]
	mov	rcx,rbx
	call	46D7F0h
	mov	rcx,rsi
	call	46ACF0h
	nop
	add	rsp,38h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
0000000000463872       48 89 C6 48 89 D9 E8 A3 A2 00 00 48 89 F1   H..H.......H..
0000000000463880 E8 2B DD FA FF 48 89 C6 48 89 D9 E8 90 74 00 00 .+...H..H....t..
0000000000463890 48 89 F1 E8 18 DD FA FF 90 90 90 90 90 90 90 90 H...............

;; fn00000000004638A0: 00000000004638A0
fn00000000004638A0 proc
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,38h
	xor	eax,eax
	test	r8,r8
	mov	rbp,rdx
	mov	qword ptr [rcx+10h],+0h
	setnz	al
	xor	edx,edx
	mov	rbx,rcx
	mov	[rcx+8h],eax
	lea	rax,[0000000000497ED0]                                 ; [rip+00034606]
	mov	[rcx],rax
	call	46D7F0h
	lea	rax,[0000000000497090]                                 ; [rip+000337B7]
	lea	rdi,[000000000048DEAA]                                 ; [rip+0002A5CA]
	mov	ecx,2h
	mov	rsi,rbp
	mov	[rbx],rax

l00000000004638EB:
	rep cmpsb

l00000000004638ED:
	jz	463902h

l00000000004638EF:
	lea	rdi,[000000000048DEAC]                                 ; [rip+0002A5B6]
	mov	ecx,6h
	mov	rsi,rbp

l00000000004638FE:
	rep cmpsb

l0000000000463900:
	jnz	463910h

l0000000000463902:
	add	rsp,38h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
000000000046390B                                  0F 1F 44 00 00            ..D..

l0000000000463910:
	lea	rsi,[rsp+28h]
	xor	r8d,r8d
	mov	rdx,rbp
	mov	rcx,rsi
	call	46AC90h
	mov	rdx,[rsp+28h]
	mov	rcx,rbx
	call	46D7F0h
	mov	rcx,rsi
	call	46ACF0h
	nop
	add	rsp,38h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
0000000000463942       48 89 C6 48 89 D9 E8 D3 A1 00 00 48 89 F1   H..H.......H..
0000000000463950 E8 5B DC FA FF 48 89 C6 48 89 D9 E8 C0 73 00 00 .[...H..H....s..
0000000000463960 48 89 F1 E8 48 DC FA FF 90 90 90 90 90 90 90 90 H...H...........

;; fn0000000000463970: 0000000000463970
fn0000000000463970 proc
	push	rbx
	sub	rsp,20h
	lea	rax,[0000000000497090]                                 ; [rip+00033714]
	mov	rbx,rcx
	mov	[rcx],rax
	call	46DB20h
	mov	rcx,rbx
	add	rsp,20h
	pop	rbx
	jmp	475550h
0000000000463994             90 90 90 90 90 90 90 90 90 90 90 90     ............

;; fn00000000004639A0: 00000000004639A0
fn00000000004639A0 proc
	lea	rax,[0000000000497090]                                 ; [rip+000336E9]
	mov	[rcx],rax
	jmp	46DB20h
00000000004639AF                                              90                .

;; fn00000000004639B0: 00000000004639B0
fn00000000004639B0 proc
	lea	rax,[0000000000497090]                                 ; [rip+000336D9]
	mov	[rcx],rax
	jmp	46DB20h
00000000004639BF                                              90                .

;; fn00000000004639C0: 00000000004639C0
fn00000000004639C0 proc
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,38h
	xor	eax,eax
	test	r8,r8
	mov	rbp,rdx
	mov	qword ptr [rcx+10h],+0h
	setnz	al
	xor	edx,edx
	mov	rbx,rcx
	mov	[rcx+8h],eax
	lea	rax,[0000000000497F50]                                 ; [rip+00034566]
	mov	[rcx],rax
	call	46DB70h
	lea	rax,[0000000000497110]                                 ; [rip+00033717]
	lea	rdi,[000000000048DB5A]                                 ; [rip+0002A15A]
	mov	ecx,2h
	mov	rsi,rbp
	mov	[rbx],rax

l0000000000463A0B:
	rep cmpsb

l0000000000463A0D:
	jz	463A22h

l0000000000463A0F:
	lea	rdi,[000000000048DB5C]                                 ; [rip+0002A146]
	mov	ecx,6h
	mov	rsi,rbp

l0000000000463A1E:
	rep cmpsb

l0000000000463A20:
	jnz	463A30h

l0000000000463A22:
	add	rsp,38h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
0000000000463A2B                                  0F 1F 44 00 00            ..D..

l0000000000463A30:
	lea	rsi,[rsp+28h]
	xor	r8d,r8d
	mov	rdx,rbp
	mov	rcx,rsi
	call	46AC90h
	mov	rdx,[rsp+28h]
	mov	rcx,rbx
	call	46DB70h
	mov	rcx,rsi
	call	46ACF0h
	nop
	add	rsp,38h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
0000000000463A62       48 89 C6 48 89 D9 E8 33 A4 00 00 48 89 F1   H..H...3...H..
0000000000463A70 E8 3B DB FA FF 48 89 C6 48 89 D9 E8 A0 72 00 00 .;...H..H....r..
0000000000463A80 48 89 F1 E8 28 DB FA FF 90 90 90 90 90 90 90 90 H...(...........

;; fn0000000000463A90: 0000000000463A90
fn0000000000463A90 proc
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,38h
	xor	eax,eax
	test	r8,r8
	mov	rbp,rdx
	mov	qword ptr [rcx+10h],+0h
	setnz	al
	xor	edx,edx
	mov	rbx,rcx
	mov	[rcx+8h],eax
	lea	rax,[0000000000497F50]                                 ; [rip+00034496]
	mov	[rcx],rax
	call	46DB70h
	lea	rax,[0000000000497110]                                 ; [rip+00033647]
	lea	rdi,[000000000048DB5A]                                 ; [rip+0002A08A]
	mov	ecx,2h
	mov	rsi,rbp
	mov	[rbx],rax

l0000000000463ADB:
	rep cmpsb

l0000000000463ADD:
	jz	463AF2h

l0000000000463ADF:
	lea	rdi,[000000000048DB5C]                                 ; [rip+0002A076]
	mov	ecx,6h
	mov	rsi,rbp

l0000000000463AEE:
	rep cmpsb

l0000000000463AF0:
	jnz	463B00h

l0000000000463AF2:
	add	rsp,38h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
0000000000463AFB                                  0F 1F 44 00 00            ..D..

l0000000000463B00:
	lea	rsi,[rsp+28h]
	xor	r8d,r8d
	mov	rdx,rbp
	mov	rcx,rsi
	call	46AC90h
	mov	rdx,[rsp+28h]
	mov	rcx,rbx
	call	46DB70h
	mov	rcx,rsi
	call	46ACF0h
	nop
	add	rsp,38h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
0000000000463B32       48 89 C6 48 89 D9 E8 63 A3 00 00 48 89 F1   H..H...c...H..
0000000000463B40 E8 6B DA FA FF 48 89 C6 48 89 D9 E8 D0 71 00 00 .k...H..H....q..
0000000000463B50 48 89 F1 E8 58 DA FA FF 90 90 90 90 90 90 90 90 H...X...........

;; fn0000000000463B60: 0000000000463B60
fn0000000000463B60 proc
	push	rbx
	sub	rsp,20h
	lea	rax,[0000000000497110]                                 ; [rip+000335A4]
	mov	rbx,rcx
	mov	[rcx],rax
	call	46DEA0h
	mov	rcx,rbx
	add	rsp,20h
	pop	rbx
	jmp	475550h
0000000000463B84             90 90 90 90 90 90 90 90 90 90 90 90     ............

;; fn0000000000463B90: 0000000000463B90
fn0000000000463B90 proc
	lea	rax,[0000000000497110]                                 ; [rip+00033579]
	mov	[rcx],rax
	jmp	46DEA0h
0000000000463B9F                                              90                .

;; fn0000000000463BA0: 0000000000463BA0
fn0000000000463BA0 proc
	lea	rax,[0000000000497110]                                 ; [rip+00033569]
	mov	[rcx],rax
	jmp	46DEA0h
0000000000463BAF                                              90                .

;; fn0000000000463BB0: 0000000000463BB0
fn0000000000463BB0 proc
	xor	eax,eax
	test	r8,r8
	setnz	al
	mov	[rcx+8h],eax
	lea	rax,[0000000000497190]                                 ; [rip+000335CE]
	mov	[rcx],rax
	ret
0000000000463BC6                   90 90 90 90 90 90 90 90 90 90       ..........

;; fn0000000000463BD0: 0000000000463BD0
fn0000000000463BD0 proc
	xor	eax,eax
	test	r8,r8
	setnz	al
	mov	[rcx+8h],eax
	lea	rax,[0000000000497190]                                 ; [rip+000335AE]
	mov	[rcx],rax
	ret
0000000000463BE6                   90 90 90 90 90 90 90 90 90 90       ..........

;; fn0000000000463BF0: 0000000000463BF0
fn0000000000463BF0 proc
	push	rbx
	sub	rsp,20h
	lea	rax,[0000000000497FD0]                                 ; [rip+000343D4]
	mov	rbx,rcx
	mov	[rcx],rax
	call	46AD20h
	mov	rcx,rbx
	add	rsp,20h
	pop	rbx
	jmp	475550h
0000000000463C14             90 90 90 90 90 90 90 90 90 90 90 90     ............

;; fn0000000000463C20: 0000000000463C20
fn0000000000463C20 proc
	lea	rax,[0000000000497FD0]                                 ; [rip+000343A9]
	mov	[rcx],rax
	jmp	46AD20h
0000000000463C2F                                              90                .

;; fn0000000000463C30: 0000000000463C30
fn0000000000463C30 proc
	lea	rax,[0000000000497FD0]                                 ; [rip+00034399]
	mov	[rcx],rax
	jmp	46AD20h
0000000000463C3F                                              90                .

;; fn0000000000463C40: 0000000000463C40
fn0000000000463C40 proc
	xor	eax,eax
	test	r8,r8
	setnz	al
	mov	[rcx+8h],eax
	lea	rax,[0000000000497210]                                 ; [rip+000335BE]
	mov	[rcx],rax
	ret
0000000000463C56                   90 90 90 90 90 90 90 90 90 90       ..........

;; fn0000000000463C60: 0000000000463C60
fn0000000000463C60 proc
	xor	eax,eax
	test	r8,r8
	setnz	al
	mov	[rcx+8h],eax
	lea	rax,[0000000000497210]                                 ; [rip+0003359E]
	mov	[rcx],rax
	ret
0000000000463C76                   90 90 90 90 90 90 90 90 90 90       ..........

;; fn0000000000463C80: 0000000000463C80
fn0000000000463C80 proc
	push	rbx
	sub	rsp,20h
	lea	rax,[0000000000498050]                                 ; [rip+000343C4]
	mov	rbx,rcx
	mov	[rcx],rax
	call	46AD20h
	mov	rcx,rbx
	add	rsp,20h
	pop	rbx
	jmp	475550h
0000000000463CA4             90 90 90 90 90 90 90 90 90 90 90 90     ............

;; fn0000000000463CB0: 0000000000463CB0
fn0000000000463CB0 proc
	lea	rax,[0000000000498050]                                 ; [rip+00034399]
	mov	[rcx],rax
	jmp	46AD20h
0000000000463CBF                                              90                .

;; fn0000000000463CC0: 0000000000463CC0
fn0000000000463CC0 proc
	lea	rax,[0000000000498050]                                 ; [rip+00034389]
	mov	[rcx],rax
	jmp	46AD20h
0000000000463CCF                                              90                .

;; fn0000000000463CD0: 0000000000463CD0
fn0000000000463CD0 proc
	xor	eax,eax
	test	r8,r8
	setnz	al
	mov	[rcx+8h],eax
	lea	rax,[0000000000497290]                                 ; [rip+000335AE]
	mov	[rcx],rax
	ret
0000000000463CE6                   90 90 90 90 90 90 90 90 90 90       ..........

;; fn0000000000463CF0: 0000000000463CF0
fn0000000000463CF0 proc
	xor	eax,eax
	test	r8,r8
	setnz	al
	mov	[rcx+8h],eax
	lea	rax,[0000000000497290]                                 ; [rip+0003358E]
	mov	[rcx],rax
	ret
0000000000463D06                   90 90 90 90 90 90 90 90 90 90       ..........

;; fn0000000000463D10: 0000000000463D10
fn0000000000463D10 proc
	push	rbx
	sub	rsp,20h
	lea	rax,[00000000004980D0]                                 ; [rip+000343B4]
	mov	rbx,rcx
	mov	[rcx],rax
	call	46AD20h
	mov	rcx,rbx
	add	rsp,20h
	pop	rbx
	jmp	475550h
0000000000463D34             90 90 90 90 90 90 90 90 90 90 90 90     ............

;; fn0000000000463D40: 0000000000463D40
fn0000000000463D40 proc
	lea	rax,[00000000004980D0]                                 ; [rip+00034389]
	mov	[rcx],rax
	jmp	46AD20h
0000000000463D4F                                              90                .

;; fn0000000000463D50: 0000000000463D50
fn0000000000463D50 proc
	lea	rax,[00000000004980D0]                                 ; [rip+00034379]
	mov	[rcx],rax
	jmp	46AD20h
0000000000463D5F                                              90                .

;; fn0000000000463D60: 0000000000463D60
fn0000000000463D60 proc
	xor	eax,eax
	test	r8,r8
	setnz	al
	mov	[rcx+8h],eax
	lea	rax,[00000000004972D0]                                 ; [rip+0003355E]
	mov	[rcx],rax
	ret
0000000000463D76                   90 90 90 90 90 90 90 90 90 90       ..........

;; fn0000000000463D80: 0000000000463D80
fn0000000000463D80 proc
	xor	eax,eax
	test	r8,r8
	setnz	al
	mov	[rcx+8h],eax
	lea	rax,[00000000004972D0]                                 ; [rip+0003353E]
	mov	[rcx],rax
	ret
0000000000463D96                   90 90 90 90 90 90 90 90 90 90       ..........

;; fn0000000000463DA0: 0000000000463DA0
fn0000000000463DA0 proc
	push	rbx
	sub	rsp,20h
	lea	rax,[0000000000498110]                                 ; [rip+00034364]
	mov	rbx,rcx
	mov	[rcx],rax
	call	46AD20h
	mov	rcx,rbx
	add	rsp,20h
	pop	rbx
	jmp	475550h
0000000000463DC4             90 90 90 90 90 90 90 90 90 90 90 90     ............

;; fn0000000000463DD0: 0000000000463DD0
fn0000000000463DD0 proc
	lea	rax,[0000000000498110]                                 ; [rip+00034339]
	mov	[rcx],rax
	jmp	46AD20h
0000000000463DDF                                              90                .

;; fn0000000000463DE0: 0000000000463DE0
fn0000000000463DE0 proc
	lea	rax,[0000000000498110]                                 ; [rip+00034329]
	mov	[rcx],rax
	jmp	46AD20h
0000000000463DEF                                              90                .

;; fn0000000000463DF0: 0000000000463DF0
;;   Called from:
;;     0000000000471472 (in fn0000000000471440)
fn0000000000463DF0 proc
	push	rbx
	sub	rsp,20h
	mov	rbx,rcx
	call	45F390h
	lea	rax,[0000000000497310]                                 ; [rip+0003350C]
	mov	[rbx],rax
	add	rsp,20h
	pop	rbx
	ret
0000000000463E0D                                        90 90 90              ...

;; fn0000000000463E10: 0000000000463E10
fn0000000000463E10 proc
	push	rbx
	sub	rsp,20h
	lea	rax,[0000000000497310]                                 ; [rip+000334F4]
	mov	rbx,rcx
	mov	[rcx],rax
	call	45F3F0h
	mov	rcx,rbx
	add	rsp,20h
	pop	rbx
	jmp	475550h
0000000000463E34             90 90 90 90 90 90 90 90 90 90 90 90     ............

;; fn0000000000463E40: 0000000000463E40
fn0000000000463E40 proc
	lea	rax,[0000000000497310]                                 ; [rip+000334C9]
	mov	[rcx],rax
	jmp	45F3F0h
0000000000463E4F                                              90                .

;; fn0000000000463E50: 0000000000463E50
;;   Called from:
;;     000000000042A408 (in fn000000000042A360)
;;     0000000000438563 (in fn00000000004382A0)
;;     000000000043883B (in fn00000000004385D0)
;;     0000000000438B63 (in fn00000000004388A0)
;;     0000000000438E3B (in fn0000000000438BD0)
;;     0000000000439D0E (in fn0000000000439A70)
fn0000000000463E50 proc
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,+0A8h
	lea	rbp,[000000000043BFA0]                                 ; [rip+FFFD8136]
	mov	byte ptr [rcx+88h],1h
	mov	rbx,rcx
	mov	rcx,rdx
	mov	r13,rdx
	call	473440h
	mov	rsi,rax
	mov	rax,[rax]
	mov	rax,[rax+20h]
	cmp	rax,rbp
	jnz	464240h

l0000000000463E92:
	mov	rax,[rsi+10h]
	lea	rcx,[rsp+40h]
	lea	r8,[rsp+3Ah]
	mov	rdx,[rax+10h]
	call	451EA0h

l0000000000463EA9:
	mov	rcx,[rsp+40h]
	mov	rax,[rcx-18h]
	mov	[rbx+18h],rax
	mov	eax,0FFFFFFFFh
	lock
	xadd	[rcx-8h],eax
	test	eax,eax
	jle	464310h

l0000000000463EC8:
	mov	rcx,[rbx+18h]
	call	475560h
	mov	rdi,rax
	mov	rax,[rsi]
	mov	r12,[rbx+18h]
	mov	rax,[rax+20h]
	cmp	rax,rbp
	jnz	464250h

l0000000000463EE8:
	mov	rax,[rsi+10h]
	lea	rbp,[rsp+50h]
	lea	r8,[rsp+3Bh]
	mov	rcx,rbp
	mov	rdx,[rax+10h]
	call	451EA0h

l0000000000463F02:
	xor	r9d,r9d
	mov	r8,r12
	mov	rdx,rdi
	mov	rcx,rbp
	call	4286D0h
	mov	rcx,[rsp+50h]
	mov	eax,0FFFFFFFFh
	lock
	xadd	[rcx-8h],eax
	test	eax,eax
	jle	4642F0h

l0000000000463F2A:
	xor	eax,eax
	cmp	qword ptr [rbx+18h],0h
	mov	[rbx+10h],rdi
	jz	463F42h

l0000000000463F37:
	movzx	eax,byte ptr [rdi]
	sub	eax,1h
	cmp	al,7Dh
	setbe	al

l0000000000463F42:
	mov	[rbx+20h],al
	mov	rax,[rsi]
	lea	rbp,[000000000043BFD0]                                 ; [rip+FFFD8081]
	mov	rax,[rax+28h]
	cmp	rax,rbp
	jnz	464274h

l0000000000463F5C:
	mov	rax,[rsi+10h]
	lea	rcx,[rsp+60h]
	lea	r8,[rsp+3Ch]
	mov	rdx,[rax+28h]
	call	451EA0h

l0000000000463F73:
	mov	rcx,[rsp+60h]
	mov	rax,[rcx-18h]
	mov	[rbx+30h],rax
	mov	eax,0FFFFFFFFh
	lock
	xadd	[rcx-8h],eax
	test	eax,eax
	jle	464283h

l0000000000463F92:
	mov	rcx,[rbx+30h]
	call	475560h
	mov	r12,rax
	mov	rax,[rsi]
	mov	r14,[rbx+30h]
	mov	rax,[rax+28h]
	cmp	rax,rbp
	jnz	464262h

l0000000000463FB2:
	mov	rax,[rsi+10h]
	lea	rbp,[rsp+70h]
	lea	r8,[rsp+3Dh]
	mov	rcx,rbp
	mov	rdx,[rax+28h]
	call	451EA0h

l0000000000463FCC:
	xor	r9d,r9d
	mov	r8,r14
	mov	rdx,r12
	mov	rcx,rbp
	call	4286D0h
	mov	rcx,[rsp+70h]
	mov	eax,0FFFFFFFFh
	lock
	xadd	[rcx-8h],eax
	test	eax,eax
	jle	4642D1h

l0000000000463FF4:
	mov	rax,[rsi]
	mov	[rbx+28h],r12
	lea	r14,[000000000043C000]                                 ; [rip+FFFD7FFE]
	mov	rax,[rax+30h]
	cmp	rax,r14
	jnz	464205h

l000000000046400F:
	mov	rax,[rsi+10h]
	lea	r15,[rsp+80h]
	lea	r8,[rsp+3Eh]
	mov	rcx,r15
	mov	rdx,[rax+38h]
	call	451EA0h

l000000000046402C:
	mov	rcx,[rsp+80h]
	mov	rax,[rcx-18h]
	mov	[rbx+40h],rax
	mov	eax,0FFFFFFFFh
	lock
	xadd	[rcx-8h],eax
	test	eax,eax
	jle	4642A0h

l000000000046404E:
	mov	rcx,[rbx+40h]
	call	475560h
	mov	rbp,rax
	mov	rax,[rbx+40h]
	mov	[rsp+28h],rax
	mov	rax,[rsi]
	mov	rax,[rax+30h]
	cmp	rax,r14
	jnz	4641F0h

l0000000000464073:
	mov	rax,[rsi+10h]
	lea	r14,[rsp+90h]
	lea	r8,[rsp+3Fh]
	mov	rcx,r14
	mov	rdx,[rax+38h]
	call	451EA0h

l0000000000464090:
	mov	r8,[rsp+28h]
	xor	r9d,r9d
	mov	rdx,rbp
	mov	rcx,r14
	call	4286D0h
	mov	rcx,[rsp+90h]
	mov	eax,0FFFFFFFFh
	lock
	xadd	[rcx-8h],eax
	test	eax,eax
	jle	4642C0h

l00000000004640BD:
	mov	rax,[rsi]
	mov	[rbx+38h],rbp
	lea	rdx,[000000000043C090]                                 ; [rip+FFFD7FC5]
	mov	rax,[rax+10h]
	cmp	rax,rdx
	jnz	464230h

l00000000004640D8:
	mov	rax,[rsi+10h]
	movzx	eax,byte ptr [rax+48h]

l00000000004640E0:
	mov	[rbx+48h],al
	mov	rax,[rsi]
	lea	rdx,[000000000043C0A0]                                 ; [rip+FFFD7FB3]
	mov	rax,[rax+18h]
	cmp	rax,rdx
	jnz	464220h

l00000000004640FA:
	mov	rax,[rsi+10h]
	movzx	eax,byte ptr [rax+49h]

l0000000000464102:
	mov	[rbx+49h],al
	mov	rcx,r13
	call	472FC0h
	mov	rsi,rax
	mov	rax,[00000000004916F0]                                 ; [rip+0002D5D9]
	lea	r14,[rbx+4Ah]
	mov	r13,[rax]
	movzx	eax,byte ptr [rsi+38h]
	cmp	al,1h
	jz	464145h

l0000000000464126:
	test	al,al
	jz	4641D4h

l000000000046412E:
	mov	rax,[rsi]
	lea	rdx,[000000000042B5D0]                                 ; [rip+FFFC7498]
	mov	rax,[rax+38h]
	cmp	rax,rdx
	jnz	464344h

l0000000000464145:
	mov	rax,[r13+0h]
	mov	[rbx+4Ah],rax
	mov	rax,[r13+8h]
	mov	[r14+8h],rax
	mov	rax,[r13+10h]
	mov	[r14+10h],rax
	mov	rax,[r13+18h]
	mov	[r14+18h],rax
	mov	eax,[r13+20h]
	mov	[r14+20h],eax

l000000000046416D:
	mov	rax,[00000000004916E0]                                 ; [rip+0002D56C]
	lea	r14,[rbx+6Eh]
	mov	r13,[rax]
	movzx	eax,byte ptr [rsi+38h]
	cmp	al,1h
	jz	46419Eh

l0000000000464183:
	test	al,al
	jz	4641E1h

l0000000000464187:
	mov	rax,[rsi]
	lea	rdx,[000000000042B5D0]                                 ; [rip+FFFC743F]
	mov	rax,[rax+38h]
	cmp	rax,rdx
	jnz	464330h

l000000000046419E:
	mov	rax,[r13+0h]
	mov	[rbx+6Eh],rax
	mov	rax,[r13+8h]
	mov	[r14+8h],rax
	mov	rax,[r13+10h]
	mov	[r14+10h],rax
	movzx	eax,word ptr [r13+18h]
	mov	[r14+18h],ax

l00000000004641C0:
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

l00000000004641D4:
	mov	rcx,rsi
	call	42B320h
	jmp	46412Eh

l00000000004641E1:
	mov	rcx,rsi
	call	42B320h
	jmp	464187h
00000000004641EB                                  0F 1F 44 00 00            ..D..

l00000000004641F0:
	lea	r14,[rsp+90h]
	mov	rdx,rsi
	mov	rcx,r14
	call	rax
	jmp	464090h

l0000000000464205:
	lea	r15,[rsp+80h]
	mov	rdx,rsi
	mov	rcx,r15
	call	rax
	jmp	46402Ch
000000000046421A                               66 0F 1F 44 00 00           f..D..

l0000000000464220:
	mov	rcx,rsi
	call	rax
	jmp	464102h
000000000046422A                               66 0F 1F 44 00 00           f..D..

l0000000000464230:
	mov	rcx,rsi
	call	rax
	jmp	4640E0h
000000000046423A                               66 0F 1F 44 00 00           f..D..

l0000000000464240:
	lea	rcx,[rsp+40h]
	mov	rdx,rsi
	call	rax
	jmp	463EA9h
000000000046424F                                              90                .

l0000000000464250:
	lea	rbp,[rsp+50h]
	mov	rdx,rsi
	mov	rcx,rbp
	call	rax
	jmp	463F02h

l0000000000464262:
	lea	rbp,[rsp+70h]
	mov	rdx,rsi
	mov	rcx,rbp
	call	rax
	jmp	463FCCh

l0000000000464274:
	lea	rcx,[rsp+60h]
	mov	rdx,rsi
	call	rax
	jmp	463F73h

l0000000000464283:
	lea	rdx,[rsp+90h]
	sub	rcx,18h
	call	450A50h
	jmp	463F92h
0000000000464299                            0F 1F 80 00 00 00 00          .......

l00000000004642A0:
	lea	rdx,[rsp+90h]
	sub	rcx,18h
	call	450A50h
	jmp	46404Eh
00000000004642B6                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l00000000004642C0:
	sub	rcx,18h
	mov	rdx,r15
	call	450A50h
	jmp	4640BDh

l00000000004642D1:
	lea	rdx,[rsp+90h]
	sub	rcx,18h
	call	450A50h
	jmp	463FF4h
00000000004642E7                      66 0F 1F 84 00 00 00 00 00        f........

l00000000004642F0:
	lea	rdx,[rsp+90h]
	sub	rcx,18h
	call	450A50h
	jmp	463F2Ah
0000000000464306                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l0000000000464310:
	lea	rdx,[rsp+90h]
	sub	rcx,18h
	call	450A50h
	jmp	463EC8h
0000000000464326                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l0000000000464330:
	mov	r9,r14
	lea	r8,[r13+1Ah]
	mov	rdx,r13
	mov	rcx,rsi
	call	rax
	jmp	4641C0h

l0000000000464344:
	mov	r9,r14
	lea	r8,[r13+24h]
	mov	rdx,r13
	mov	rcx,rsi
	call	rax
	jmp	46416Dh
0000000000464358                         48 89 C1 E8 E0 14 01 00         H.......
0000000000464360 48 89 F9 E8 D8 11 01 00 4D 85 E4 74 08 4C 89 E1 H.......M..t.L..
0000000000464370 E8 CB 11 01 00 48 85 ED 74 08 48 89 E9 E8 BE 11 .....H..t.H.....
0000000000464380 01 00 E8 D9 1C 01 00 31 ED EB CD EB FA 48 89 C3 .......1.....H..
0000000000464390 E8 DB 16 01 00 48 89 D9 E8 13 D2 FA FF 48 89 C3 .....H.......H..
00000000004643A0 48 8B 44 24 70 48 8D 94 24 90 00 00 00 48 8D 48 H.D$pH..$....H.H
00000000004643B0 E8 E8 AA C6 FE FF 48 89 D8 EB CC 48 89 C3 48 8B ......H....H..H.
00000000004643C0 84 24 90 00 00 00 4C 89 FA 48 8D 48 E8 E8 8E C6 .$....L..H.H....
00000000004643D0 FE FF 48 89 D8 EB 81 48 89 C1 E8 61 14 01 00 EB ..H....H...a....
00000000004643E0 A1 48 89 C3 48 8B 44 24 50 48 8D 94 24 90 00 00 .H..H.D$PH..$...
00000000004643F0 00 31 ED 45 31 E4 48 8D 48 E8 E8 61 C6 FE FF 48 .1.E1.H.H..a...H
0000000000464400 89 D9 E8 39 14 01 00 E9 54 FF FF FF 48 89 C1 31 ...9....T...H..1
0000000000464410 ED 45 31 E4 E8 27 14 01 00 E9 42 FF FF FF E9 64 .E1..'....B....d
0000000000464420 FF FF FF E9 5F FF FF FF E9 5A FF FF FF 90 90 90 ...._....Z......

;; fn0000000000464430: 0000000000464430
fn0000000000464430 proc
	xor	eax,eax
	test	rdx,rdx
	mov	qword ptr [rcx+10h],+0h
	mov	qword ptr [rcx+18h],+0h
	setnz	al
	mov	byte ptr [rcx+20h],0h
	mov	qword ptr [rcx+28h],+0h
	mov	[rcx+8h],eax
	lea	rax,[0000000000497350]                                 ; [rip+00032EF2]
	mov	qword ptr [rcx+30h],+0h
	mov	qword ptr [rcx+38h],+0h
	mov	qword ptr [rcx+40h],+0h
	mov	[rcx],rax
	mov	byte ptr [rcx+48h],0h
	mov	byte ptr [rcx+49h],0h
	mov	byte ptr [rcx+88h],0h
	ret
0000000000464489                            90 90 90 90 90 90 90          .......

;; fn0000000000464490: 0000000000464490
fn0000000000464490 proc
	xor	eax,eax
	test	rdx,rdx
	mov	qword ptr [rcx+10h],+0h
	mov	qword ptr [rcx+18h],+0h
	setnz	al
	mov	byte ptr [rcx+20h],0h
	mov	qword ptr [rcx+28h],+0h
	mov	[rcx+8h],eax
	lea	rax,[0000000000497350]                                 ; [rip+00032E92]
	mov	qword ptr [rcx+30h],+0h
	mov	qword ptr [rcx+38h],+0h
	mov	qword ptr [rcx+40h],+0h
	mov	[rcx],rax
	mov	byte ptr [rcx+48h],0h
	mov	byte ptr [rcx+49h],0h
	mov	byte ptr [rcx+88h],0h
	ret
00000000004644E9                            90 90 90 90 90 90 90          .......

;; fn00000000004644F0: 00000000004644F0
fn00000000004644F0 proc
	push	rbx
	sub	rsp,20h
	mov	rbx,rcx
	call	464510h
	mov	rcx,rbx
	add	rsp,20h
	pop	rbx
	jmp	475550h
000000000046450A                               90 90 90 90 90 90           ......

;; fn0000000000464510: 0000000000464510
;;   Called from:
;;     00000000004644F8 (in fn00000000004644F0)
fn0000000000464510 proc
	push	rbx
	sub	rsp,20h
	cmp	byte ptr [rcx+88h],0h
	lea	rax,[0000000000497350]                                 ; [rip+00032E2D]
	mov	rbx,rcx
	mov	[rcx],rax
	jz	464555h

l000000000046452B:
	mov	rcx,[rcx+10h]
	test	rcx,rcx
	jz	464539h

l0000000000464534:
	call	475540h

l0000000000464539:
	mov	rcx,[rbx+28h]
	test	rcx,rcx
	jz	464547h

l0000000000464542:
	call	475540h

l0000000000464547:
	mov	rcx,[rbx+38h]
	test	rcx,rcx
	jz	464555h

l0000000000464550:
	call	475540h

l0000000000464555:
	mov	rcx,rbx
	add	rsp,20h
	pop	rbx
	jmp	46AD20h
0000000000464562       90 90 90 90 90 90 90 90 90 90 90 90 90 90   ..............

;; fn0000000000464570: 0000000000464570
fn0000000000464570 proc
	push	rbx
	sub	rsp,20h
	cmp	byte ptr [rcx+88h],0h
	lea	rax,[0000000000497350]                                 ; [rip+00032DCD]
	mov	rbx,rcx
	mov	[rcx],rax
	jz	4645B5h

l000000000046458B:
	mov	rcx,[rcx+10h]
	test	rcx,rcx
	jz	464599h

l0000000000464594:
	call	475540h

l0000000000464599:
	mov	rcx,[rbx+28h]
	test	rcx,rcx
	jz	4645A7h

l00000000004645A2:
	call	475540h

l00000000004645A7:
	mov	rcx,[rbx+38h]
	test	rcx,rcx
	jz	4645B5h

l00000000004645B0:
	call	475540h

l00000000004645B5:
	mov	rcx,rbx
	add	rsp,20h
	pop	rbx
	jmp	46AD20h
00000000004645C2       90 90 90 90 90 90 90 90 90 90 90 90 90 90   ..............

;; fn00000000004645D0: 00000000004645D0
;;   Called from:
;;     000000000042A50C (in fn000000000042A460)
;;     000000000043A24A (in fn0000000000439F70)
;;     000000000043A524 (in fn000000000043A2B0)
;;     000000000043A868 (in fn000000000043A590)
;;     000000000043AB52 (in fn000000000043A8D0)
;;     000000000043B011 (in fn000000000043AC90)
;;     000000000043B404 (in fn000000000043B070)
;;     000000000043BB00 (in fn000000000043B850)
fn00000000004645D0 proc
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,+0A8h
	lea	rbp,[000000000043C1A0]                                 ; [rip+FFFD7BB6]
	mov	byte ptr [rcx+0C8h],1h
	mov	rbx,rcx
	mov	rcx,rdx
	mov	r13,rdx
	call	4734A0h
	mov	rsi,rax
	mov	rax,[rax]
	mov	rax,[rax+20h]
	cmp	rax,rbp
	jnz	464911h

l0000000000464612:
	mov	rax,[rsi+10h]
	lea	rcx,[rsp+40h]
	lea	r8,[rsp+3Ah]
	mov	rdx,[rax+10h]
	call	451EA0h

l0000000000464629:
	mov	rcx,[rsp+40h]
	mov	rax,[rcx-18h]
	mov	[rbx+18h],rax
	mov	eax,0FFFFFFFFh
	lock
	xadd	[rcx-8h],eax
	test	eax,eax
	jle	4649A3h

l0000000000464648:
	mov	rcx,[rbx+18h]
	call	475560h
	mov	rdi,rax
	mov	rax,[rsi]
	mov	r12,[rbx+18h]
	mov	rax,[rax+20h]
	cmp	rax,rbp
	jnz	464991h

l0000000000464668:
	mov	rax,[rsi+10h]
	lea	rbp,[rsp+50h]
	lea	r8,[rsp+3Bh]
	mov	rcx,rbp
	mov	rdx,[rax+10h]
	call	451EA0h

l0000000000464682:
	xor	r9d,r9d
	mov	r8,r12
	mov	rdx,rdi
	mov	rcx,rbp
	call	4286D0h
	mov	rcx,[rsp+50h]
	mov	eax,0FFFFFFFFh
	lock
	xadd	[rcx-8h],eax
	test	eax,eax
	jle	464A11h

l00000000004646AA:
	xor	eax,eax
	cmp	qword ptr [rbx+18h],0h
	mov	[rbx+10h],rdi
	jz	4646C2h

l00000000004646B7:
	movzx	eax,byte ptr [rdi]
	sub	eax,1h
	cmp	al,7Dh
	setbe	al

l00000000004646C2:
	mov	[rbx+20h],al
	mov	rax,[rsi]
	lea	rbp,[000000000043C1D0]                                 ; [rip+FFFD7B01]
	mov	rax,[rax+28h]
	cmp	rax,rbp
	jnz	464982h

l00000000004646DC:
	mov	rax,[rsi+10h]
	lea	rcx,[rsp+60h]
	lea	r8,[rsp+3Ch]
	mov	rdx,[rax+28h]
	call	44A8B0h

l00000000004646F3:
	mov	rcx,[rsp+60h]
	mov	rax,[rcx-18h]
	mov	[rbx+30h],rax
	mov	eax,0FFFFFFFFh
	lock
	xadd	[rcx-8h],eax
	test	eax,eax
	jle	464A30h

l0000000000464712:
	mov	rdx,[rbx+30h]
	mov	rcx,3F80000000000000h
	lea	rax,[rdx+rdx]
	cmp	rdx,rcx
	mov	rcx,-1h
	cmovbe	rcx,rax

l0000000000464732:
	call	475560h
	mov	r12,rax
	mov	rax,[rsi]
	mov	r14,[rbx+30h]
	mov	rax,[rax+28h]
	cmp	rax,rbp
	jnz	464970h

l000000000046474E:
	mov	rax,[rsi+10h]
	lea	rbp,[rsp+70h]
	lea	r8,[rsp+3Dh]
	mov	rcx,rbp
	mov	rdx,[rax+28h]
	call	44A8B0h

l0000000000464768:
	xor	r9d,r9d
	mov	r8,r14
	mov	rdx,r12
	mov	rcx,rbp
	call	4277C0h
	mov	rcx,[rsp+70h]
	mov	eax,0FFFFFFFFh
	lock
	xadd	[rcx-8h],eax
	test	eax,eax
	jle	4649E0h

l0000000000464790:
	mov	rax,[rsi]
	mov	[rbx+28h],r12
	lea	r14,[000000000043C200]                                 ; [rip+FFFD7A62]
	mov	rax,[rax+30h]
	cmp	rax,r14
	jnz	464955h

l00000000004647AB:
	mov	rax,[rsi+10h]
	lea	r15,[rsp+80h]
	lea	r8,[rsp+3Eh]
	mov	rcx,r15
	mov	rdx,[rax+38h]
	call	44A8B0h

l00000000004647C8:
	mov	rcx,[rsp+80h]
	mov	rax,[rcx-18h]
	mov	[rbx+40h],rax
	mov	eax,0FFFFFFFFh
	lock
	xadd	[rcx-8h],eax
	test	eax,eax
	jle	4649C0h

l00000000004647EA:
	mov	rdx,[rbx+40h]
	mov	rcx,3F80000000000000h
	lea	rax,[rdx+rdx]
	cmp	rdx,rcx
	mov	rcx,-1h
	cmovbe	rcx,rax

l000000000046480A:
	call	475560h
	mov	rbp,rax
	mov	rax,[rbx+40h]
	mov	[rsp+28h],rax
	mov	rax,[rsi]
	mov	rax,[rax+30h]
	cmp	rax,r14
	jnz	464940h

l000000000046482B:
	mov	rax,[rsi+10h]
	lea	r14,[rsp+90h]
	lea	r8,[rsp+3Fh]
	mov	rcx,r14
	mov	rdx,[rax+38h]
	call	44A8B0h

l0000000000464848:
	mov	r8,[rsp+28h]
	xor	r9d,r9d
	mov	rdx,rbp
	mov	rcx,r14
	call	4277C0h
	mov	rcx,[rsp+90h]
	mov	eax,0FFFFFFFFh
	lock
	xadd	[rcx-8h],eax
	test	eax,eax
	jle	464A00h

l0000000000464875:
	mov	rdx,[rsi]
	mov	[rbx+38h],rbp
	lea	rcx,[000000000043C290]                                 ; [rip+FFFD7A0D]
	mov	rax,[rdx+10h]
	cmp	rax,rcx
	jnz	464930h

l0000000000464890:
	mov	rax,[rsi+10h]
	movzx	eax,word ptr [rax+48h]

l0000000000464898:
	mov	[rbx+48h],ax
	mov	rax,[rdx+18h]
	lea	rdx,[000000000043C2A0]                                 ; [rip+FFFD79F9]
	cmp	rax,rdx
	jnz	464920h

l00000000004648AC:
	mov	rax,[rsi+10h]
	movzx	eax,word ptr [rax+4Ah]

l00000000004648B4:
	mov	[rbx+4Ah],ax
	mov	rcx,r13
	call	473020h
	mov	rsi,rax
	mov	rax,[00000000004916F0]                                 ; [rip+0002CE26]
	lea	r9,[rbx+4Ch]
	mov	rcx,rsi
	mov	rdx,[rax]
	mov	rax,[rsi]
	lea	r8,[rdx+24h]
	call	qword ptr [rax+58h]
	mov	rax,[00000000004916E0]                                 ; [rip+0002CDFB]
	lea	r9,[rbx+94h]
	mov	rcx,rsi
	mov	rdx,[rax]
	mov	rax,[rsi]
	lea	r8,[rdx+1Ah]
	call	qword ptr [rax+58h]
	nop
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

l0000000000464911:
	lea	rcx,[rsp+40h]
	mov	rdx,rsi
	call	rax
	jmp	464629h

l0000000000464920:
	mov	rcx,rsi
	call	rax
	jmp	4648B4h
0000000000464927                      66 0F 1F 84 00 00 00 00 00        f........

l0000000000464930:
	mov	rcx,rsi
	call	rax
	mov	rdx,[rsi]
	jmp	464898h
000000000046493D                                        0F 1F 00              ...

l0000000000464940:
	lea	r14,[rsp+90h]
	mov	rdx,rsi
	mov	rcx,r14
	call	rax
	jmp	464848h

l0000000000464955:
	lea	r15,[rsp+80h]
	mov	rdx,rsi
	mov	rcx,r15
	call	rax
	jmp	4647C8h
000000000046496A                               66 0F 1F 44 00 00           f..D..

l0000000000464970:
	lea	rbp,[rsp+70h]
	mov	rdx,rsi
	mov	rcx,rbp
	call	rax
	jmp	464768h

l0000000000464982:
	lea	rcx,[rsp+60h]
	mov	rdx,rsi
	call	rax
	jmp	4646F3h

l0000000000464991:
	lea	rbp,[rsp+50h]
	mov	rdx,rsi
	mov	rcx,rbp
	call	rax
	jmp	464682h

l00000000004649A3:
	lea	rdx,[rsp+90h]
	sub	rcx,18h
	call	450A50h
	jmp	464648h
00000000004649B9                            0F 1F 80 00 00 00 00          .......

l00000000004649C0:
	lea	rdx,[rsp+90h]
	sub	rcx,18h
	call	449360h
	jmp	4647EAh
00000000004649D6                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l00000000004649E0:
	lea	rdx,[rsp+90h]
	sub	rcx,18h
	call	449360h
	jmp	464790h
00000000004649F6                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l0000000000464A00:
	sub	rcx,18h
	mov	rdx,r15
	call	449360h
	jmp	464875h

l0000000000464A11:
	lea	rdx,[rsp+90h]
	sub	rcx,18h
	call	450A50h
	jmp	4646AAh
0000000000464A27                      66 0F 1F 84 00 00 00 00 00        f........

l0000000000464A30:
	lea	rdx,[rsp+90h]
	sub	rcx,18h
	call	449360h
	jmp	464712h
0000000000464A46                   31 ED 48 89 C1 E8 F0 0D 01 00       1.H.......
0000000000464A50 48 89 F9 E8 E8 0A 01 00 4D 85 E4 74 08 4C 89 E1 H.......M..t.L..
0000000000464A60 E8 DB 0A 01 00 48 85 ED 74 08 48 89 E9 E8 CE 0A .....H..t.H.....
0000000000464A70 01 00 E8 E9 15 01 00 EB CF EB CB 48 89 C3 E8 ED ...........H....
0000000000464A80 0F 01 00 48 89 D9 E8 25 CB FA FF EB B9 48 89 C3 ...H...%.....H..
0000000000464A90 48 8B 44 24 50 48 8D 94 24 90 00 00 00 31 ED 45 H.D$PH..$....1.E
0000000000464AA0 31 E4 48 8D 48 E8 E8 B5 BF FE FF 48 89 D9 E8 8D 1.H.H......H....
0000000000464AB0 0D 01 00 EB 9B 48 89 C1 31 ED 45 31 E4 E8 7E 0D .....H..1.E1..~.
0000000000464AC0 01 00 EB 8C 48 89 C1 E8 74 0D 01 00 EB A4 E9 73 ....H...t......s
0000000000464AD0 FF FF FF E9 6E FF FF FF 48 89 C3 48 8B 84 24 90 ....n...H..H..$.
0000000000464AE0 00 00 00 4C 89 FA 48 8D 48 E8 E8 81 48 FE FF 48 ...L..H.H...H..H
0000000000464AF0 89 D8 E9 51 FF FF FF 48 89 C3 48 8B 44 24 70 48 ...Q...H..H.D$pH
0000000000464B00 8D 94 24 90 00 00 00 48 8D 48 E8 E8 60 48 FE FF ..$....H.H..`H..
0000000000464B10 48 89 D8 E9 2E FF FF FF 90 90 90 90 90 90 90 90 H...............

;; fn0000000000464B20: 0000000000464B20
fn0000000000464B20 proc
	xor	eax,eax
	test	rdx,rdx
	mov	qword ptr [rcx+10h],+0h
	mov	qword ptr [rcx+18h],+0h
	setnz	al
	xor	edx,edx
	mov	byte ptr [rcx+20h],0h
	mov	[rcx+8h],eax
	lea	rax,[0000000000497370]                                 ; [rip+00032828]
	mov	qword ptr [rcx+28h],+0h
	mov	qword ptr [rcx+30h],+0h
	mov	qword ptr [rcx+38h],+0h
	mov	[rcx],rax
	xor	eax,eax
	mov	qword ptr [rcx+40h],+0h
	mov	[rcx+48h],ax
	mov	[rcx+4Ah],dx
	mov	byte ptr [rcx+0C8h],0h
	ret
0000000000464B7D                                        90 90 90              ...

;; fn0000000000464B80: 0000000000464B80
fn0000000000464B80 proc
	xor	eax,eax
	test	rdx,rdx
	mov	qword ptr [rcx+10h],+0h
	mov	qword ptr [rcx+18h],+0h
	setnz	al
	xor	edx,edx
	mov	byte ptr [rcx+20h],0h
	mov	[rcx+8h],eax
	lea	rax,[0000000000497370]                                 ; [rip+000327C8]
	mov	qword ptr [rcx+28h],+0h
	mov	qword ptr [rcx+30h],+0h
	mov	qword ptr [rcx+38h],+0h
	mov	[rcx],rax
	xor	eax,eax
	mov	qword ptr [rcx+40h],+0h
	mov	[rcx+48h],ax
	mov	[rcx+4Ah],dx
	mov	byte ptr [rcx+0C8h],0h
	ret
0000000000464BDD                                        90 90 90              ...

;; fn0000000000464BE0: 0000000000464BE0
fn0000000000464BE0 proc
	push	rbx
	sub	rsp,20h
	mov	rbx,rcx
	call	464C00h
	mov	rcx,rbx
	add	rsp,20h
	pop	rbx
	jmp	475550h
0000000000464BFA                               90 90 90 90 90 90           ......

;; fn0000000000464C00: 0000000000464C00
;;   Called from:
;;     0000000000464BE8 (in fn0000000000464BE0)
fn0000000000464C00 proc
	push	rbx
	sub	rsp,20h
	cmp	byte ptr [rcx+0C8h],0h
	lea	rax,[0000000000497370]                                 ; [rip+0003275D]
	mov	rbx,rcx
	mov	[rcx],rax
	jz	464C45h

l0000000000464C1B:
	mov	rcx,[rcx+10h]
	test	rcx,rcx
	jz	464C29h

l0000000000464C24:
	call	475540h

l0000000000464C29:
	mov	rcx,[rbx+28h]
	test	rcx,rcx
	jz	464C37h

l0000000000464C32:
	call	475540h

l0000000000464C37:
	mov	rcx,[rbx+38h]
	test	rcx,rcx
	jz	464C45h

l0000000000464C40:
	call	475540h

l0000000000464C45:
	mov	rcx,rbx
	add	rsp,20h
	pop	rbx
	jmp	46AD20h
0000000000464C52       90 90 90 90 90 90 90 90 90 90 90 90 90 90   ..............

;; fn0000000000464C60: 0000000000464C60
fn0000000000464C60 proc
	push	rbx
	sub	rsp,20h
	cmp	byte ptr [rcx+0C8h],0h
	lea	rax,[0000000000497370]                                 ; [rip+000326FD]
	mov	rbx,rcx
	mov	[rcx],rax
	jz	464CA5h

l0000000000464C7B:
	mov	rcx,[rcx+10h]
	test	rcx,rcx
	jz	464C89h

l0000000000464C84:
	call	475540h

l0000000000464C89:
	mov	rcx,[rbx+28h]
	test	rcx,rcx
	jz	464C97h

l0000000000464C92:
	call	475540h

l0000000000464C97:
	mov	rcx,[rbx+38h]
	test	rcx,rcx
	jz	464CA5h

l0000000000464CA0:
	call	475540h

l0000000000464CA5:
	mov	rcx,rbx
	add	rsp,20h
	pop	rbx
	jmp	46AD20h
0000000000464CB2       90 90 90 90 90 90 90 90 90 90 90 90 90 90   ..............

;; fn0000000000464CC0: 0000000000464CC0
;;   Called from:
;;     0000000000464DEB (in fn0000000000464DD0)
fn0000000000464CC0 proc
	push	rbp
	mov	rbp,rsp
	sub	rsp,20h
	mov	[rbp+10h],rcx
	mov	[rbp+18h],rdx
	mov	rax,[rbp+18h]
	mov	rdx,rax
	mov	rcx,[rbp+10h]
	call	4249F0h
	nop
	add	rsp,20h
	pop	rbp
	ret
0000000000464CE7                      90 90 90 90 90 90 90 90 90        .........

;; fn0000000000464CF0: 0000000000464CF0
;;   Called from:
;;     0000000000454ABD (in fn0000000000454A90)
fn0000000000464CF0 proc
	push	rbp
	mov	rbp,rsp
	sub	rsp,20h
	mov	[rbp+10h],rcx
	mov	[rbp+18h],rdx
	mov	[rbp+20h],r8
	mov	rdx,[rbp+20h]
	mov	rax,[rbp+18h]
	mov	r8,rdx
	mov	rdx,rax
	mov	rcx,[rbp+10h]
	call	4249C0h
	nop
	add	rsp,20h
	pop	rbp
	ret
0000000000464D22       90 90 90 90 90 90 90 90 90 90 90 90 90 90   ..............

;; fn0000000000464D30: 0000000000464D30
;;   Called from:
;;     0000000000464E45 (in fn0000000000464E30)
fn0000000000464D30 proc
	push	rbp
	mov	rbp,rsp
	sub	rsp,20h
	mov	[rbp+10h],rcx
	mov	[rbp+18h],edx
	mov	rcx,[rbp+10h]
	call	427270h
	add	rsp,20h
	pop	rbp
	ret
0000000000464D4E                                           90 90               ..

;; fn0000000000464D50: 0000000000464D50
;;   Called from:
;;     0000000000464E81 (in fn0000000000464E50)
fn0000000000464D50 proc
	push	rbp
	mov	rbp,rsp
	sub	rsp,20h
	mov	[rbp+10h],rcx
	mov	[rbp+18h],rdx
	mov	[rbp+20h],r8
	mov	rax,[rbp+20h]
	mov	rcx,rax
	call	471B70h
	mov	rdx,rax
	mov	rax,[rbp+18h]
	mov	r8,rdx
	mov	rdx,rax
	mov	rcx,[rbp+10h]
	call	424A50h
	nop
	add	rsp,20h
	pop	rbp
	ret
0000000000464D8D                                        90 90 90              ...

;; fn0000000000464D90: 0000000000464D90
;;   Called from:
;;     0000000000464EC1 (in fn0000000000464E90)
fn0000000000464D90 proc
	push	rbp
	mov	rbp,rsp
	sub	rsp,20h
	mov	[rbp+10h],rcx
	mov	[rbp+18h],rdx
	mov	[rbp+20h],r8
	mov	rax,[rbp+20h]
	mov	rcx,rax
	call	471B60h
	mov	rdx,rax
	mov	rax,[rbp+18h]
	mov	r8,rdx
	mov	rdx,rax
	mov	rcx,[rbp+10h]
	call	424AA0h
	nop
	add	rsp,20h
	pop	rbp
	ret
0000000000464DCD                                        90 90 90              ...

;; fn0000000000464DD0: 0000000000464DD0
fn0000000000464DD0 proc
	push	rbp
	mov	rbp,rsp
	sub	rsp,20h
	mov	[rbp+10h],rcx
	mov	[rbp+18h],rdx
	mov	rax,[rbp+18h]
	mov	rdx,rax
	mov	rcx,[rbp+10h]
	call	464CC0h
	nop
	add	rsp,20h
	pop	rbp
	ret
0000000000464DF7                      90 90 90 90 90 90 90 90 90        .........

;; fn0000000000464E00: 0000000000464E00
;;   Called from:
;;     0000000000454A12 (in fn00000000004549F0)
fn0000000000464E00 proc
	push	rbp
	mov	rbp,rsp
	sub	rsp,20h
	mov	[rbp+10h],rcx
	mov	[rbp+18h],rdx
	mov	rax,[rbp+18h]
	mov	r8d,0h
	mov	rdx,rax
	mov	rcx,[rbp+10h]
	call	424A00h
	add	rsp,20h
	pop	rbp
	ret
0000000000464E2C                                     90 90 90 90             ....

;; fn0000000000464E30: 0000000000464E30
;;   Called from:
;;     000000000042C09B (in fn000000000042C080)
fn0000000000464E30 proc
	push	rbp
	mov	rbp,rsp
	sub	rsp,20h
	mov	[rbp+10h],rcx
	mov	edx,0h
	mov	rcx,[rbp+10h]
	call	464D30h
	add	rsp,20h
	pop	rbp
	ret

;; fn0000000000464E50: 0000000000464E50
;;   Called from:
;;     000000000046B0AC (in fn000000000046B030)
;;     000000000046B65B (in fn000000000046B620)
fn0000000000464E50 proc
	push	rbp
	mov	rbp,rsp
	sub	rsp,20h
	mov	[rbp+10h],rcx
	mov	[rbp+18h],rdx
	mov	[rbp+20h],r8
	mov	rax,[rbp+20h]
	mov	rcx,rax
	call	471B70h
	mov	rdx,rax
	mov	rax,[rbp+18h]
	mov	r8,rdx
	mov	rdx,rax
	mov	rcx,[rbp+10h]
	call	464D50h
	nop
	add	rsp,20h
	pop	rbp
	ret
0000000000464E8D                                        90 90 90              ...

;; fn0000000000464E90: 0000000000464E90
;;   Called from:
;;     000000000046AFF6 (in fn000000000046AFB0)
;;     000000000046B29C (in fn000000000046B220)
fn0000000000464E90 proc
	push	rbp
	mov	rbp,rsp
	sub	rsp,20h
	mov	[rbp+10h],rcx
	mov	[rbp+18h],rdx
	mov	[rbp+20h],r8
	mov	rax,[rbp+20h]
	mov	rcx,rax
	call	471B60h
	mov	rdx,rax
	mov	rax,[rbp+18h]
	mov	r8,rdx
	mov	rdx,rax
	mov	rcx,[rbp+10h]
	call	464D90h
	nop
	add	rsp,20h
	pop	rbp
	ret
0000000000464ECD                                        90 90 90              ...

;; fn0000000000464ED0: 0000000000464ED0
;;   Called from:
;;     0000000000464FBB (in fn0000000000464FA0)
fn0000000000464ED0 proc
	push	rbp
	mov	rbp,rsp
	sub	rsp,20h
	mov	[rbp+10h],rcx
	mov	[rbp+18h],rdx
	mov	rax,[rbp+18h]
	mov	rdx,rax
	mov	rcx,[rbp+10h]
	call	424B40h
	nop
	add	rsp,20h
	pop	rbp
	ret
0000000000464EF7                      90 90 90 90 90 90 90 90 90        .........

;; fn0000000000464F00: 0000000000464F00
;;   Called from:
;;     0000000000454C2D (in fn0000000000454C00)
fn0000000000464F00 proc
	push	rbp
	mov	rbp,rsp
	sub	rsp,20h
	mov	[rbp+10h],rcx
	mov	[rbp+18h],rdx
	mov	[rbp+20h],r8
	mov	rdx,[rbp+20h]
	mov	rax,[rbp+18h]
	mov	r8,rdx
	mov	rdx,rax
	mov	rcx,[rbp+10h]
	call	424B10h
	nop
	add	rsp,20h
	pop	rbp
	ret
0000000000464F32       90 90 90 90 90 90 90 90 90 90 90 90 90 90   ..............

;; fn0000000000464F40: 0000000000464F40
;;   Called from:
;;     0000000000465015 (in fn0000000000465000)
fn0000000000464F40 proc
	push	rbp
	mov	rbp,rsp
	sub	rsp,20h
	mov	[rbp+10h],rcx
	mov	[rbp+18h],edx
	mov	rcx,[rbp+10h]
	call	427290h
	add	rsp,20h
	pop	rbp
	ret
0000000000464F5E                                           90 90               ..

;; fn0000000000464F60: 0000000000464F60
;;   Called from:
;;     0000000000465051 (in fn0000000000465020)
fn0000000000464F60 proc
	push	rbp
	mov	rbp,rsp
	sub	rsp,20h
	mov	[rbp+10h],rcx
	mov	[rbp+18h],rdx
	mov	[rbp+20h],r8
	mov	rax,[rbp+20h]
	mov	rcx,rax
	call	471B80h
	mov	rdx,rax
	mov	rax,[rbp+18h]
	mov	r8,rdx
	mov	rdx,rax
	mov	rcx,[rbp+10h]
	call	424B90h
	nop
	add	rsp,20h
	pop	rbp
	ret
0000000000464F9D                                        90 90 90              ...

;; fn0000000000464FA0: 0000000000464FA0
fn0000000000464FA0 proc
	push	rbp
	mov	rbp,rsp
	sub	rsp,20h
	mov	[rbp+10h],rcx
	mov	[rbp+18h],rdx
	mov	rax,[rbp+18h]
	mov	rdx,rax
	mov	rcx,[rbp+10h]
	call	464ED0h
	nop
	add	rsp,20h
	pop	rbp
	ret
0000000000464FC7                      90 90 90 90 90 90 90 90 90        .........

;; fn0000000000464FD0: 0000000000464FD0
;;   Called from:
;;     0000000000454B82 (in fn0000000000454B60)
fn0000000000464FD0 proc
	push	rbp
	mov	rbp,rsp
	sub	rsp,20h
	mov	[rbp+10h],rcx
	mov	[rbp+18h],rdx
	mov	rax,[rbp+18h]
	mov	r8d,0h
	mov	rdx,rax
	mov	rcx,[rbp+10h]
	call	424B50h
	add	rsp,20h
	pop	rbp
	ret
0000000000464FFC                                     90 90 90 90             ....

;; fn0000000000465000: 0000000000465000
;;   Called from:
;;     000000000042C20B (in fn000000000042C1F0)
fn0000000000465000 proc
	push	rbp
	mov	rbp,rsp
	sub	rsp,20h
	mov	[rbp+10h],rcx
	mov	edx,0h
	mov	rcx,[rbp+10h]
	call	464F40h
	add	rsp,20h
	pop	rbp
	ret

;; fn0000000000465020: 0000000000465020
;;   Called from:
;;     000000000046B797 (in fn000000000046B720)
;;     000000000046BAFB (in fn000000000046BAC0)
fn0000000000465020 proc
	push	rbp
	mov	rbp,rsp
	sub	rsp,20h
	mov	[rbp+10h],rcx
	mov	[rbp+18h],rdx
	mov	[rbp+20h],r8
	mov	rax,[rbp+20h]
	mov	rcx,rax
	call	471B80h
	mov	rdx,rax
	mov	rax,[rbp+18h]
	mov	r8,rdx
	mov	rdx,rax
	mov	rcx,[rbp+10h]
	call	464F60h
	nop
	add	rsp,20h
	pop	rbp
	ret
000000000046505D                                        90 90 90              ...

;; fn0000000000465060: 0000000000465060
fn0000000000465060 proc
	push	rbx
	sub	rsp,20h
	lea	rax,[0000000000497390]                                 ; [rip+00032324]
	mov	rbx,rcx
	mov	[rcx],rax
	call	46E160h
	mov	rcx,rbx
	add	rsp,20h
	pop	rbx
	jmp	475550h
0000000000465084             90 90 90 90 90 90 90 90 90 90 90 90     ............

;; fn0000000000465090: 0000000000465090
fn0000000000465090 proc
	lea	rax,[0000000000497390]                                 ; [rip+000322F9]
	mov	[rcx],rax
	jmp	46E160h
000000000046509F                                              90                .

;; fn00000000004650A0: 00000000004650A0
;;   Called from:
;;     0000000000471502 (in fn00000000004714D0)
fn00000000004650A0 proc
	push	rbx
	sub	rsp,20h
	mov	rbx,rcx
	call	454770h
	lea	rax,[00000000004973D0]                                 ; [rip+0003231C]
	mov	[rbx],rax
	add	rsp,20h
	pop	rbx
	ret
00000000004650BD                                        90 90 90              ...

;; fn00000000004650C0: 00000000004650C0
fn00000000004650C0 proc
	push	rbx
	sub	rsp,20h
	lea	rax,[00000000004973D0]                                 ; [rip+00032304]
	mov	rbx,rcx
	mov	[rcx],rax
	call	4547D0h
	mov	rcx,rbx
	add	rsp,20h
	pop	rbx
	jmp	475550h
00000000004650E4             90 90 90 90 90 90 90 90 90 90 90 90     ............

;; fn00000000004650F0: 00000000004650F0
fn00000000004650F0 proc
	lea	rax,[00000000004973D0]                                 ; [rip+000322D9]
	mov	[rcx],rax
	jmp	4547D0h
00000000004650FF                                              90                .

;; fn0000000000465100: 0000000000465100
fn0000000000465100 proc
	xor	eax,eax
	test	rdx,rdx
	mov	qword ptr [rcx+10h],+0h
	mov	qword ptr [rcx+18h],+0h
	setnz	al
	mov	qword ptr [rcx+20h],+0h
	mov	qword ptr [rcx+28h],+0h
	mov	[rcx+8h],eax
	lea	rax,[0000000000497410]                                 ; [rip+000322DE]
	mov	qword ptr [rcx+30h],+0h
	mov	qword ptr [rcx+38h],+0h
	mov	qword ptr [rcx+40h],+0h
	mov	[rcx],rax
	mov	qword ptr [rcx+48h],+0h
	mov	qword ptr [rcx+50h],+0h
	mov	qword ptr [rcx+58h],+0h
	mov	qword ptr [rcx+60h],+0h
	mov	qword ptr [rcx+68h],+0h
	mov	qword ptr [rcx+70h],+0h
	mov	qword ptr [rcx+78h],+0h
	mov	qword ptr [rcx+80h],+0h
	mov	qword ptr [rcx+88h],+0h
	mov	qword ptr [rcx+90h],+0h
	mov	qword ptr [rcx+98h],+0h
	mov	qword ptr [rcx+0A0h],+0h
	mov	qword ptr [rcx+0A8h],+0h
	mov	qword ptr [rcx+0B0h],+0h
	mov	qword ptr [rcx+0B8h],+0h
	mov	qword ptr [rcx+0C0h],+0h
	mov	qword ptr [rcx+0C8h],+0h
	mov	qword ptr [rcx+0D0h],+0h
	mov	qword ptr [rcx+0D8h],+0h
	mov	qword ptr [rcx+0E0h],+0h
	mov	qword ptr [rcx+0E8h],+0h
	mov	qword ptr [rcx+0F0h],+0h
	mov	qword ptr [rcx+0F8h],+0h
	mov	qword ptr [rcx+100h],+0h
	mov	qword ptr [rcx+108h],+0h
	mov	qword ptr [rcx+110h],+0h
	mov	qword ptr [rcx+118h],+0h
	mov	qword ptr [rcx+120h],+0h
	mov	qword ptr [rcx+128h],+0h
	mov	qword ptr [rcx+130h],+0h
	mov	qword ptr [rcx+138h],+0h
	mov	qword ptr [rcx+140h],+0h
	mov	qword ptr [rcx+148h],+0h
	mov	qword ptr [rcx+150h],+0h
	mov	qword ptr [rcx+158h],+0h
	mov	qword ptr [rcx+160h],+0h
	mov	qword ptr [rcx+168h],+0h
	mov	qword ptr [rcx+170h],+0h
	mov	qword ptr [rcx+178h],+0h
	mov	qword ptr [rcx+180h],+0h
	mov	byte ptr [rcx+188h],0h
	ret
00000000004652F8                         90 90 90 90 90 90 90 90         ........

;; fn0000000000465300: 0000000000465300
fn0000000000465300 proc
	xor	eax,eax
	test	rdx,rdx
	mov	qword ptr [rcx+10h],+0h
	mov	qword ptr [rcx+18h],+0h
	setnz	al
	mov	qword ptr [rcx+20h],+0h
	mov	qword ptr [rcx+28h],+0h
	mov	[rcx+8h],eax
	lea	rax,[0000000000497410]                                 ; [rip+000320DE]
	mov	qword ptr [rcx+30h],+0h
	mov	qword ptr [rcx+38h],+0h
	mov	qword ptr [rcx+40h],+0h
	mov	[rcx],rax
	mov	qword ptr [rcx+48h],+0h
	mov	qword ptr [rcx+50h],+0h
	mov	qword ptr [rcx+58h],+0h
	mov	qword ptr [rcx+60h],+0h
	mov	qword ptr [rcx+68h],+0h
	mov	qword ptr [rcx+70h],+0h
	mov	qword ptr [rcx+78h],+0h
	mov	qword ptr [rcx+80h],+0h
	mov	qword ptr [rcx+88h],+0h
	mov	qword ptr [rcx+90h],+0h
	mov	qword ptr [rcx+98h],+0h
	mov	qword ptr [rcx+0A0h],+0h
	mov	qword ptr [rcx+0A8h],+0h
	mov	qword ptr [rcx+0B0h],+0h
	mov	qword ptr [rcx+0B8h],+0h
	mov	qword ptr [rcx+0C0h],+0h
	mov	qword ptr [rcx+0C8h],+0h
	mov	qword ptr [rcx+0D0h],+0h
	mov	qword ptr [rcx+0D8h],+0h
	mov	qword ptr [rcx+0E0h],+0h
	mov	qword ptr [rcx+0E8h],+0h
	mov	qword ptr [rcx+0F0h],+0h
	mov	qword ptr [rcx+0F8h],+0h
	mov	qword ptr [rcx+100h],+0h
	mov	qword ptr [rcx+108h],+0h
	mov	qword ptr [rcx+110h],+0h
	mov	qword ptr [rcx+118h],+0h
	mov	qword ptr [rcx+120h],+0h
	mov	qword ptr [rcx+128h],+0h
	mov	qword ptr [rcx+130h],+0h
	mov	qword ptr [rcx+138h],+0h
	mov	qword ptr [rcx+140h],+0h
	mov	qword ptr [rcx+148h],+0h
	mov	qword ptr [rcx+150h],+0h
	mov	qword ptr [rcx+158h],+0h
	mov	qword ptr [rcx+160h],+0h
	mov	qword ptr [rcx+168h],+0h
	mov	qword ptr [rcx+170h],+0h
	mov	qword ptr [rcx+178h],+0h
	mov	qword ptr [rcx+180h],+0h
	mov	byte ptr [rcx+188h],0h
	ret
00000000004654F8                         90 90 90 90 90 90 90 90         ........

;; fn0000000000465500: 0000000000465500
fn0000000000465500 proc
	push	rbx
	sub	rsp,20h
	lea	rax,[0000000000497410]                                 ; [rip+00031F04]
	mov	rbx,rcx
	mov	[rcx],rax
	call	46AD20h
	mov	rcx,rbx
	add	rsp,20h
	pop	rbx
	jmp	475550h
0000000000465524             90 90 90 90 90 90 90 90 90 90 90 90     ............

;; fn0000000000465530: 0000000000465530
fn0000000000465530 proc
	lea	rax,[0000000000497410]                                 ; [rip+00031ED9]
	mov	[rcx],rax
	jmp	46AD20h
000000000046553F                                              90                .

;; fn0000000000465540: 0000000000465540
fn0000000000465540 proc
	lea	rax,[0000000000497410]                                 ; [rip+00031EC9]
	mov	[rcx],rax
	jmp	46AD20h
000000000046554F                                              90                .

;; fn0000000000465550: 0000000000465550
fn0000000000465550 proc
	xor	eax,eax
	test	rdx,rdx
	mov	qword ptr [rcx+10h],+0h
	mov	qword ptr [rcx+18h],+0h
	setnz	al
	mov	qword ptr [rcx+20h],+0h
	mov	qword ptr [rcx+28h],+0h
	mov	[rcx+8h],eax
	lea	rax,[0000000000497430]                                 ; [rip+00031EAE]
	mov	qword ptr [rcx+30h],+0h
	mov	qword ptr [rcx+38h],+0h
	mov	qword ptr [rcx+40h],+0h
	mov	[rcx],rax
	mov	qword ptr [rcx+48h],+0h
	mov	qword ptr [rcx+50h],+0h
	mov	qword ptr [rcx+58h],+0h
	mov	qword ptr [rcx+60h],+0h
	mov	qword ptr [rcx+68h],+0h
	mov	qword ptr [rcx+70h],+0h
	mov	qword ptr [rcx+78h],+0h
	mov	qword ptr [rcx+80h],+0h
	mov	qword ptr [rcx+88h],+0h
	mov	qword ptr [rcx+90h],+0h
	mov	qword ptr [rcx+98h],+0h
	mov	qword ptr [rcx+0A0h],+0h
	mov	qword ptr [rcx+0A8h],+0h
	mov	qword ptr [rcx+0B0h],+0h
	mov	qword ptr [rcx+0B8h],+0h
	mov	qword ptr [rcx+0C0h],+0h
	mov	qword ptr [rcx+0C8h],+0h
	mov	qword ptr [rcx+0D0h],+0h
	mov	qword ptr [rcx+0D8h],+0h
	mov	qword ptr [rcx+0E0h],+0h
	mov	qword ptr [rcx+0E8h],+0h
	mov	qword ptr [rcx+0F0h],+0h
	mov	qword ptr [rcx+0F8h],+0h
	mov	qword ptr [rcx+100h],+0h
	mov	qword ptr [rcx+108h],+0h
	mov	qword ptr [rcx+110h],+0h
	mov	qword ptr [rcx+118h],+0h
	mov	qword ptr [rcx+120h],+0h
	mov	qword ptr [rcx+128h],+0h
	mov	qword ptr [rcx+130h],+0h
	mov	qword ptr [rcx+138h],+0h
	mov	qword ptr [rcx+140h],+0h
	mov	qword ptr [rcx+148h],+0h
	mov	qword ptr [rcx+150h],+0h
	mov	qword ptr [rcx+158h],+0h
	mov	qword ptr [rcx+160h],+0h
	mov	qword ptr [rcx+168h],+0h
	mov	qword ptr [rcx+170h],+0h
	mov	qword ptr [rcx+178h],+0h
	mov	qword ptr [rcx+180h],+0h
	mov	byte ptr [rcx+188h],0h
	ret
0000000000465748                         90 90 90 90 90 90 90 90         ........

;; fn0000000000465750: 0000000000465750
fn0000000000465750 proc
	xor	eax,eax
	test	rdx,rdx
	mov	qword ptr [rcx+10h],+0h
	mov	qword ptr [rcx+18h],+0h
	setnz	al
	mov	qword ptr [rcx+20h],+0h
	mov	qword ptr [rcx+28h],+0h
	mov	[rcx+8h],eax
	lea	rax,[0000000000497430]                                 ; [rip+00031CAE]
	mov	qword ptr [rcx+30h],+0h
	mov	qword ptr [rcx+38h],+0h
	mov	qword ptr [rcx+40h],+0h
	mov	[rcx],rax
	mov	qword ptr [rcx+48h],+0h
	mov	qword ptr [rcx+50h],+0h
	mov	qword ptr [rcx+58h],+0h
	mov	qword ptr [rcx+60h],+0h
	mov	qword ptr [rcx+68h],+0h
	mov	qword ptr [rcx+70h],+0h
	mov	qword ptr [rcx+78h],+0h
	mov	qword ptr [rcx+80h],+0h
	mov	qword ptr [rcx+88h],+0h
	mov	qword ptr [rcx+90h],+0h
	mov	qword ptr [rcx+98h],+0h
	mov	qword ptr [rcx+0A0h],+0h
	mov	qword ptr [rcx+0A8h],+0h
	mov	qword ptr [rcx+0B0h],+0h
	mov	qword ptr [rcx+0B8h],+0h
	mov	qword ptr [rcx+0C0h],+0h
	mov	qword ptr [rcx+0C8h],+0h
	mov	qword ptr [rcx+0D0h],+0h
	mov	qword ptr [rcx+0D8h],+0h
	mov	qword ptr [rcx+0E0h],+0h
	mov	qword ptr [rcx+0E8h],+0h
	mov	qword ptr [rcx+0F0h],+0h
	mov	qword ptr [rcx+0F8h],+0h
	mov	qword ptr [rcx+100h],+0h
	mov	qword ptr [rcx+108h],+0h
	mov	qword ptr [rcx+110h],+0h
	mov	qword ptr [rcx+118h],+0h
	mov	qword ptr [rcx+120h],+0h
	mov	qword ptr [rcx+128h],+0h
	mov	qword ptr [rcx+130h],+0h
	mov	qword ptr [rcx+138h],+0h
	mov	qword ptr [rcx+140h],+0h
	mov	qword ptr [rcx+148h],+0h
	mov	qword ptr [rcx+150h],+0h
	mov	qword ptr [rcx+158h],+0h
	mov	qword ptr [rcx+160h],+0h
	mov	qword ptr [rcx+168h],+0h
	mov	qword ptr [rcx+170h],+0h
	mov	qword ptr [rcx+178h],+0h
	mov	qword ptr [rcx+180h],+0h
	mov	byte ptr [rcx+188h],0h
	ret
0000000000465948                         90 90 90 90 90 90 90 90         ........

;; fn0000000000465950: 0000000000465950
fn0000000000465950 proc
	push	rbx
	sub	rsp,20h
	lea	rax,[0000000000497430]                                 ; [rip+00031AD4]
	mov	rbx,rcx
	mov	[rcx],rax
	call	46AD20h
	mov	rcx,rbx
	add	rsp,20h
	pop	rbx
	jmp	475550h
0000000000465974             90 90 90 90 90 90 90 90 90 90 90 90     ............

;; fn0000000000465980: 0000000000465980
fn0000000000465980 proc
	lea	rax,[0000000000497430]                                 ; [rip+00031AA9]
	mov	[rcx],rax
	jmp	46AD20h
000000000046598F                                              90                .

;; fn0000000000465990: 0000000000465990
fn0000000000465990 proc
	lea	rax,[0000000000497430]                                 ; [rip+00031A99]
	mov	[rcx],rax
	jmp	46AD20h
000000000046599F                                              90                .

;; fn00000000004659A0: 00000000004659A0
fn00000000004659A0 proc
	push	rbx
	sub	rsp,20h
	lea	rax,[0000000000497450]                                 ; [rip+00031AA4]
	mov	rbx,rcx
	mov	[rcx],rax
	call	46F0F0h
	mov	rcx,rbx
	add	rsp,20h
	pop	rbx
	jmp	475550h
00000000004659C4             90 90 90 90 90 90 90 90 90 90 90 90     ............

;; fn00000000004659D0: 00000000004659D0
fn00000000004659D0 proc
	lea	rax,[0000000000497450]                                 ; [rip+00031A79]
	mov	[rcx],rax
	jmp	46F0F0h
00000000004659DF                                              90                .

;; fn00000000004659E0: 00000000004659E0
fn00000000004659E0 proc
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,38h
	xor	eax,eax
	test	r8,r8
	mov	rbp,rdx
	mov	qword ptr [rcx+10h],+0h
	setnz	al
	xor	r8d,r8d
	xor	edx,edx
	mov	[rcx+8h],eax
	lea	rax,[0000000000496190]                                 ; [rip+00030786]
	mov	rbx,rcx
	mov	[rcx],rax
	call	452740h
	lea	rax,[0000000000497490]                                 ; [rip+00031A74]
	lea	rdi,[000000000048DEAA]                                 ; [rip+00028487]
	mov	ecx,2h
	mov	rsi,rbp
	mov	[rbx],rax

l0000000000465A2E:
	rep cmpsb

l0000000000465A30:
	jz	465A45h

l0000000000465A32:
	lea	rdi,[000000000048DEAC]                                 ; [rip+00028473]
	mov	ecx,6h
	mov	rsi,rbp

l0000000000465A41:
	rep cmpsb

l0000000000465A43:
	jnz	465A50h

l0000000000465A45:
	add	rsp,38h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
0000000000465A4E                                           66 90               f.

l0000000000465A50:
	lea	rsi,[rsp+28h]
	xor	r8d,r8d
	mov	rdx,rbp
	mov	rcx,rsi
	call	46AC90h
	mov	rdx,[rsp+28h]
	xor	r8d,r8d
	mov	rcx,rbx
	call	452740h
	mov	rcx,rsi
	call	46ACF0h
	nop
	add	rsp,38h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
0000000000465A85                48 89 C6 48 89 D9 E8 F0 CF FE FF      H..H.......
0000000000465A90 48 89 F1 E8 18 BB FA FF 48 89 C6 48 89 D9 E8 7D H.......H..H...}
0000000000465AA0 52 00 00 48 89 F1 E8 05 BB FA FF 90 90 90 90 90 R..H............

;; fn0000000000465AB0: 0000000000465AB0
fn0000000000465AB0 proc
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,38h
	xor	eax,eax
	test	r8,r8
	mov	rbp,rdx
	mov	qword ptr [rcx+10h],+0h
	setnz	al
	xor	r8d,r8d
	xor	edx,edx
	mov	[rcx+8h],eax
	lea	rax,[0000000000496190]                                 ; [rip+000306B6]
	mov	rbx,rcx
	mov	[rcx],rax
	call	452740h
	lea	rax,[0000000000497490]                                 ; [rip+000319A4]
	lea	rdi,[000000000048DEAA]                                 ; [rip+000283B7]
	mov	ecx,2h
	mov	rsi,rbp
	mov	[rbx],rax

l0000000000465AFE:
	rep cmpsb

l0000000000465B00:
	jz	465B15h

l0000000000465B02:
	lea	rdi,[000000000048DEAC]                                 ; [rip+000283A3]
	mov	ecx,6h
	mov	rsi,rbp

l0000000000465B11:
	rep cmpsb

l0000000000465B13:
	jnz	465B20h

l0000000000465B15:
	add	rsp,38h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
0000000000465B1E                                           66 90               f.

l0000000000465B20:
	lea	rsi,[rsp+28h]
	xor	r8d,r8d
	mov	rdx,rbp
	mov	rcx,rsi
	call	46AC90h
	mov	rdx,[rsp+28h]
	xor	r8d,r8d
	mov	rcx,rbx
	call	452740h
	mov	rcx,rsi
	call	46ACF0h
	nop
	add	rsp,38h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
0000000000465B55                48 89 C6 48 89 D9 E8 20 CF FE FF      H..H... ...
0000000000465B60 48 89 F1 E8 48 BA FA FF 48 89 C6 48 89 D9 E8 AD H...H...H..H....
0000000000465B70 51 00 00 48 89 F1 E8 35 BA FA FF 90 90 90 90 90 Q..H...5........

;; fn0000000000465B80: 0000000000465B80
fn0000000000465B80 proc
	push	rbx
	sub	rsp,20h
	lea	rax,[0000000000497490]                                 ; [rip+00031904]
	mov	rbx,rcx
	mov	[rcx],rax
	call	452A80h
	mov	rcx,rbx
	add	rsp,20h
	pop	rbx
	jmp	475550h
0000000000465BA4             90 90 90 90 90 90 90 90 90 90 90 90     ............

;; fn0000000000465BB0: 0000000000465BB0
fn0000000000465BB0 proc
	lea	rax,[0000000000497490]                                 ; [rip+000318D9]
	mov	[rcx],rax
	jmp	452A80h
0000000000465BBF                                              90                .

;; fn0000000000465BC0: 0000000000465BC0
fn0000000000465BC0 proc
	lea	rax,[0000000000497490]                                 ; [rip+000318C9]
	mov	[rcx],rax
	jmp	452A80h
0000000000465BCF                                              90                .

;; fn0000000000465BD0: 0000000000465BD0
fn0000000000465BD0 proc
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,38h
	xor	eax,eax
	test	r8,r8
	mov	rbp,rdx
	mov	qword ptr [rcx+10h],+0h
	setnz	al
	xor	r8d,r8d
	xor	edx,edx
	mov	[rcx+8h],eax
	lea	rax,[0000000000496210]                                 ; [rip+00030616]
	mov	rbx,rcx
	mov	[rcx],rax
	call	452AD0h
	lea	rax,[0000000000497510]                                 ; [rip+00031904]
	lea	rdi,[000000000048DEAA]                                 ; [rip+00028297]
	mov	ecx,2h
	mov	rsi,rbp
	mov	[rbx],rax

l0000000000465C1E:
	rep cmpsb

l0000000000465C20:
	jz	465C35h

l0000000000465C22:
	lea	rdi,[000000000048DEAC]                                 ; [rip+00028283]
	mov	ecx,6h
	mov	rsi,rbp

l0000000000465C31:
	rep cmpsb

l0000000000465C33:
	jnz	465C40h

l0000000000465C35:
	add	rsp,38h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
0000000000465C3E                                           66 90               f.

l0000000000465C40:
	lea	rsi,[rsp+28h]
	xor	r8d,r8d
	mov	rdx,rbp
	mov	rcx,rsi
	call	46AC90h
	mov	rdx,[rsp+28h]
	xor	r8d,r8d
	mov	rcx,rbx
	call	452AD0h
	mov	rcx,rsi
	call	46ACF0h
	nop
	add	rsp,38h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
0000000000465C75                48 89 C6 48 89 D9 E8 90 D1 FE FF      H..H.......
0000000000465C80 48 89 F1 E8 28 B9 FA FF 48 89 C6 48 89 D9 E8 8D H...(...H..H....
0000000000465C90 50 00 00 48 89 F1 E8 15 B9 FA FF 90 90 90 90 90 P..H............

;; fn0000000000465CA0: 0000000000465CA0
fn0000000000465CA0 proc
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,38h
	xor	eax,eax
	test	r8,r8
	mov	rbp,rdx
	mov	qword ptr [rcx+10h],+0h
	setnz	al
	xor	r8d,r8d
	xor	edx,edx
	mov	[rcx+8h],eax
	lea	rax,[0000000000496210]                                 ; [rip+00030546]
	mov	rbx,rcx
	mov	[rcx],rax
	call	452AD0h
	lea	rax,[0000000000497510]                                 ; [rip+00031834]
	lea	rdi,[000000000048DEAA]                                 ; [rip+000281C7]
	mov	ecx,2h
	mov	rsi,rbp
	mov	[rbx],rax

l0000000000465CEE:
	rep cmpsb

l0000000000465CF0:
	jz	465D05h

l0000000000465CF2:
	lea	rdi,[000000000048DEAC]                                 ; [rip+000281B3]
	mov	ecx,6h
	mov	rsi,rbp

l0000000000465D01:
	rep cmpsb

l0000000000465D03:
	jnz	465D10h

l0000000000465D05:
	add	rsp,38h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
0000000000465D0E                                           66 90               f.

l0000000000465D10:
	lea	rsi,[rsp+28h]
	xor	r8d,r8d
	mov	rdx,rbp
	mov	rcx,rsi
	call	46AC90h
	mov	rdx,[rsp+28h]
	xor	r8d,r8d
	mov	rcx,rbx
	call	452AD0h
	mov	rcx,rsi
	call	46ACF0h
	nop
	add	rsp,38h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
0000000000465D45                48 89 C6 48 89 D9 E8 C0 D0 FE FF      H..H.......
0000000000465D50 48 89 F1 E8 58 B8 FA FF 48 89 C6 48 89 D9 E8 BD H...X...H..H....
0000000000465D60 4F 00 00 48 89 F1 E8 45 B8 FA FF 90 90 90 90 90 O..H...E........

;; fn0000000000465D70: 0000000000465D70
fn0000000000465D70 proc
	push	rbx
	sub	rsp,20h
	lea	rax,[0000000000497510]                                 ; [rip+00031794]
	mov	rbx,rcx
	mov	[rcx],rax
	call	452E10h
	mov	rcx,rbx
	add	rsp,20h
	pop	rbx
	jmp	475550h
0000000000465D94             90 90 90 90 90 90 90 90 90 90 90 90     ............

;; fn0000000000465DA0: 0000000000465DA0
fn0000000000465DA0 proc
	lea	rax,[0000000000497510]                                 ; [rip+00031769]
	mov	[rcx],rax
	jmp	452E10h
0000000000465DAF                                              90                .

;; fn0000000000465DB0: 0000000000465DB0
fn0000000000465DB0 proc
	lea	rax,[0000000000497510]                                 ; [rip+00031759]
	mov	[rcx],rax
	jmp	452E10h
0000000000465DBF                                              90                .

;; fn0000000000465DC0: 0000000000465DC0
fn0000000000465DC0 proc
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,38h
	xor	eax,eax
	test	r8,r8
	mov	rbp,rdx
	mov	qword ptr [rcx+10h],+0h
	setnz	al
	xor	r8d,r8d
	xor	edx,edx
	mov	[rcx+8h],eax
	lea	rax,[0000000000496290]                                 ; [rip+000304A6]
	mov	rbx,rcx
	mov	[rcx],rax
	call	452E60h
	lea	rax,[0000000000497590]                                 ; [rip+00031794]
	lea	rdi,[000000000048DB5A]                                 ; [rip+00027D57]
	mov	ecx,2h
	mov	rsi,rbp
	mov	[rbx],rax

l0000000000465E0E:
	rep cmpsb

l0000000000465E10:
	jz	465E25h

l0000000000465E12:
	lea	rdi,[000000000048DB5C]                                 ; [rip+00027D43]
	mov	ecx,6h
	mov	rsi,rbp

l0000000000465E21:
	rep cmpsb

l0000000000465E23:
	jnz	465E30h

l0000000000465E25:
	add	rsp,38h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
0000000000465E2E                                           66 90               f.

l0000000000465E30:
	lea	rsi,[rsp+28h]
	xor	r8d,r8d
	mov	rdx,rbp
	mov	rcx,rsi
	call	46AC90h
	mov	rdx,[rsp+28h]
	xor	r8d,r8d
	mov	rcx,rbx
	call	452E60h
	mov	rcx,rsi
	call	46ACF0h
	nop
	add	rsp,38h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
0000000000465E65                48 89 C6 48 89 D9 E8 50 D3 FE FF      H..H...P...
0000000000465E70 48 89 F1 E8 38 B7 FA FF 48 89 C6 48 89 D9 E8 9D H...8...H..H....
0000000000465E80 4E 00 00 48 89 F1 E8 25 B7 FA FF 90 90 90 90 90 N..H...%........

;; fn0000000000465E90: 0000000000465E90
fn0000000000465E90 proc
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,38h
	xor	eax,eax
	test	r8,r8
	mov	rbp,rdx
	mov	qword ptr [rcx+10h],+0h
	setnz	al
	xor	r8d,r8d
	xor	edx,edx
	mov	[rcx+8h],eax
	lea	rax,[0000000000496290]                                 ; [rip+000303D6]
	mov	rbx,rcx
	mov	[rcx],rax
	call	452E60h
	lea	rax,[0000000000497590]                                 ; [rip+000316C4]
	lea	rdi,[000000000048DB5A]                                 ; [rip+00027C87]
	mov	ecx,2h
	mov	rsi,rbp
	mov	[rbx],rax

l0000000000465EDE:
	rep cmpsb

l0000000000465EE0:
	jz	465EF5h

l0000000000465EE2:
	lea	rdi,[000000000048DB5C]                                 ; [rip+00027C73]
	mov	ecx,6h
	mov	rsi,rbp

l0000000000465EF1:
	rep cmpsb

l0000000000465EF3:
	jnz	465F00h

l0000000000465EF5:
	add	rsp,38h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
0000000000465EFE                                           66 90               f.

l0000000000465F00:
	lea	rsi,[rsp+28h]
	xor	r8d,r8d
	mov	rdx,rbp
	mov	rcx,rsi
	call	46AC90h
	mov	rdx,[rsp+28h]
	xor	r8d,r8d
	mov	rcx,rbx
	call	452E60h
	mov	rcx,rsi
	call	46ACF0h
	nop
	add	rsp,38h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
0000000000465F35                48 89 C6 48 89 D9 E8 80 D2 FE FF      H..H.......
0000000000465F40 48 89 F1 E8 68 B6 FA FF 48 89 C6 48 89 D9 E8 CD H...h...H..H....
0000000000465F50 4D 00 00 48 89 F1 E8 55 B6 FA FF 90 90 90 90 90 M..H...U........

;; fn0000000000465F60: 0000000000465F60
fn0000000000465F60 proc
	push	rbx
	sub	rsp,20h
	lea	rax,[0000000000497590]                                 ; [rip+00031624]
	mov	rbx,rcx
	mov	[rcx],rax
	call	4531C0h
	mov	rcx,rbx
	add	rsp,20h
	pop	rbx
	jmp	475550h
0000000000465F84             90 90 90 90 90 90 90 90 90 90 90 90     ............

;; fn0000000000465F90: 0000000000465F90
fn0000000000465F90 proc
	lea	rax,[0000000000497590]                                 ; [rip+000315F9]
	mov	[rcx],rax
	jmp	4531C0h
0000000000465F9F                                              90                .

;; fn0000000000465FA0: 0000000000465FA0
fn0000000000465FA0 proc
	lea	rax,[0000000000497590]                                 ; [rip+000315E9]
	mov	[rcx],rax
	jmp	4531C0h
0000000000465FAF                                              90                .

;; fn0000000000465FB0: 0000000000465FB0
fn0000000000465FB0 proc
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,38h
	xor	eax,eax
	test	r8,r8
	mov	rbp,rdx
	mov	qword ptr [rcx+10h],+0h
	setnz	al
	xor	r8d,r8d
	xor	edx,edx
	mov	[rcx+8h],eax
	lea	rax,[0000000000496310]                                 ; [rip+00030336]
	mov	rbx,rcx
	mov	[rcx],rax
	call	453210h
	lea	rax,[0000000000497610]                                 ; [rip+00031624]
	lea	rdi,[000000000048DB5A]                                 ; [rip+00027B67]
	mov	ecx,2h
	mov	rsi,rbp
	mov	[rbx],rax

l0000000000465FFE:
	rep cmpsb

l0000000000466000:
	jz	466015h

l0000000000466002:
	lea	rdi,[000000000048DB5C]                                 ; [rip+00027B53]
	mov	ecx,6h
	mov	rsi,rbp

l0000000000466011:
	rep cmpsb

l0000000000466013:
	jnz	466020h

l0000000000466015:
	add	rsp,38h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
000000000046601E                                           66 90               f.

l0000000000466020:
	lea	rsi,[rsp+28h]
	xor	r8d,r8d
	mov	rdx,rbp
	mov	rcx,rsi
	call	46AC90h
	mov	rdx,[rsp+28h]
	xor	r8d,r8d
	mov	rcx,rbx
	call	453210h
	mov	rcx,rsi
	call	46ACF0h
	nop
	add	rsp,38h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
0000000000466055                48 89 C6 48 89 D9 E8 10 D5 FE FF      H..H.......
0000000000466060 48 89 F1 E8 48 B5 FA FF 48 89 C6 48 89 D9 E8 AD H...H...H..H....
0000000000466070 4C 00 00 48 89 F1 E8 35 B5 FA FF 90 90 90 90 90 L..H...5........

;; fn0000000000466080: 0000000000466080
fn0000000000466080 proc
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,38h
	xor	eax,eax
	test	r8,r8
	mov	rbp,rdx
	mov	qword ptr [rcx+10h],+0h
	setnz	al
	xor	r8d,r8d
	xor	edx,edx
	mov	[rcx+8h],eax
	lea	rax,[0000000000496310]                                 ; [rip+00030266]
	mov	rbx,rcx
	mov	[rcx],rax
	call	453210h
	lea	rax,[0000000000497610]                                 ; [rip+00031554]
	lea	rdi,[000000000048DB5A]                                 ; [rip+00027A97]
	mov	ecx,2h
	mov	rsi,rbp
	mov	[rbx],rax

l00000000004660CE:
	rep cmpsb

l00000000004660D0:
	jz	4660E5h

l00000000004660D2:
	lea	rdi,[000000000048DB5C]                                 ; [rip+00027A83]
	mov	ecx,6h
	mov	rsi,rbp

l00000000004660E1:
	rep cmpsb

l00000000004660E3:
	jnz	4660F0h

l00000000004660E5:
	add	rsp,38h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
00000000004660EE                                           66 90               f.

l00000000004660F0:
	lea	rsi,[rsp+28h]
	xor	r8d,r8d
	mov	rdx,rbp
	mov	rcx,rsi
	call	46AC90h
	mov	rdx,[rsp+28h]
	xor	r8d,r8d
	mov	rcx,rbx
	call	453210h
	mov	rcx,rsi
	call	46ACF0h
	nop
	add	rsp,38h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
0000000000466125                48 89 C6 48 89 D9 E8 40 D4 FE FF      H..H...@...
0000000000466130 48 89 F1 E8 78 B4 FA FF 48 89 C6 48 89 D9 E8 DD H...x...H..H....
0000000000466140 4B 00 00 48 89 F1 E8 65 B4 FA FF 90 90 90 90 90 K..H...e........

;; fn0000000000466150: 0000000000466150
fn0000000000466150 proc
	push	rbx
	sub	rsp,20h
	lea	rax,[0000000000497610]                                 ; [rip+000314B4]
	mov	rbx,rcx
	mov	[rcx],rax
	call	453570h
	mov	rcx,rbx
	add	rsp,20h
	pop	rbx
	jmp	475550h
0000000000466174             90 90 90 90 90 90 90 90 90 90 90 90     ............

;; fn0000000000466180: 0000000000466180
fn0000000000466180 proc
	lea	rax,[0000000000497610]                                 ; [rip+00031489]
	mov	[rcx],rax
	jmp	453570h
000000000046618F                                              90                .

;; fn0000000000466190: 0000000000466190
fn0000000000466190 proc
	lea	rax,[0000000000497610]                                 ; [rip+00031479]
	mov	[rcx],rax
	jmp	453570h
000000000046619F                                              90                .

;; fn00000000004661A0: 00000000004661A0
;;   Called from:
;;     000000000042A63B (in fn000000000042A560)
;;     00000000004471D6 (in fn0000000000446BF0)
fn00000000004661A0 proc
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,+0C8h
	mov	byte ptr [rcx+6Fh],1h
	mov	rbx,rcx
	mov	rcx,rdx
	mov	r15,rdx
	call	472D80h
	mov	rsi,rax
	mov	rax,[rax]
	lea	rdx,[00000000004291B0]                                 ; [rip+FFFC2FDE]
	mov	rax,[rax+10h]
	cmp	rax,rdx
	jnz	4666D0h

l00000000004661DF:
	mov	rax,[rsi+10h]
	movzx	eax,byte ptr [rax+21h]

l00000000004661E7:
	mov	[rbx+21h],al
	mov	rax,[rsi]
	lea	rdx,[0000000000429220]                                 ; [rip+FFFC302C]
	mov	rax,[rax+18h]
	cmp	rax,rdx
	jnz	4666C0h

l0000000000466201:
	mov	rax,[rsi+10h]
	movzx	eax,byte ptr [rax+22h]

l0000000000466209:
	mov	[rbx+22h],al
	mov	rdx,[rsi]
	lea	rcx,[00000000004291A0]                                 ; [rip+FFFC2F8A]
	mov	rax,[rdx+40h]
	cmp	rax,rcx
	jnz	4666B2h

l0000000000466223:
	mov	rax,[rsi+10h]
	mov	eax,[rax+58h]

l000000000046622A:
	mov	[rbx+58h],eax
	mov	rax,[rdx+20h]
	lea	rbp,[0000000000428FF0]                                 ; [rip+FFFC2DB8]
	cmp	rax,rbp
	jnz	4666A3h

l0000000000466241:
	mov	rax,[rsi+10h]
	lea	rcx,[rsp+40h]
	lea	r8,[rsp+38h]
	mov	rdx,[rax+10h]
	call	451EA0h

l0000000000466258:
	mov	rcx,[rsp+40h]
	mov	rax,[rcx-18h]
	mov	[rbx+18h],rax
	mov	eax,0FFFFFFFFh
	lock
	xadd	[rcx-8h],eax
	test	eax,eax
	jle	466770h

l0000000000466277:
	mov	rcx,[rbx+18h]
	call	475560h
	mov	rdi,rax
	mov	rax,[rsi]
	mov	r12,[rbx+18h]
	mov	rax,[rax+20h]
	cmp	rax,rbp
	jnz	466691h

l0000000000466297:
	mov	rax,[rsi+10h]
	lea	rbp,[rsp+50h]
	lea	r8,[rsp+39h]
	mov	rcx,rbp
	mov	rdx,[rax+10h]
	call	451EA0h

l00000000004662B1:
	xor	r9d,r9d
	mov	r8,r12
	mov	rdx,rdi
	mov	rcx,rbp
	call	4286D0h
	mov	rcx,[rsp+50h]
	mov	eax,0FFFFFFFFh
	lock
	xadd	[rcx-8h],eax
	test	eax,eax
	jle	466790h

l00000000004662D9:
	xor	eax,eax
	cmp	qword ptr [rbx+18h],0h
	mov	[rbx+10h],rdi
	jz	4662F1h

l00000000004662E6:
	movzx	eax,byte ptr [rdi]
	sub	eax,1h
	cmp	al,7Dh
	setbe	al

l00000000004662F1:
	mov	[rbx+20h],al
	mov	rax,[rsi]
	lea	rbp,[0000000000429170]                                 ; [rip+FFFC2E72]
	mov	rax,[rax+28h]
	cmp	rax,rbp
	jnz	466682h

l000000000046630B:
	mov	rax,[rsi+10h]
	lea	rcx,[rsp+60h]
	lea	r8,[rsp+3Ah]
	mov	rdx,[rax+28h]
	call	451EA0h

l0000000000466322:
	mov	rcx,[rsp+60h]
	mov	rax,[rcx-18h]
	mov	[rbx+30h],rax
	mov	eax,0FFFFFFFFh
	lock
	xadd	[rcx-8h],eax
	test	eax,eax
	jle	4666F3h

l0000000000466341:
	mov	rcx,[rbx+30h]
	call	475560h
	mov	r13,rax
	mov	rax,[rsi]
	mov	r12,[rbx+30h]
	mov	rax,[rax+28h]
	cmp	rax,rbp
	jnz	466670h

l0000000000466361:
	mov	rax,[rsi+10h]
	lea	rbp,[rsp+70h]
	lea	r8,[rsp+3Bh]
	mov	rcx,rbp
	mov	rdx,[rax+28h]
	call	451EA0h

l000000000046637B:
	xor	r9d,r9d
	mov	r8,r12
	mov	rdx,r13
	mov	rcx,rbp
	call	4286D0h
	mov	rcx,[rsp+70h]
	mov	eax,0FFFFFFFFh
	lock
	xadd	[rcx-8h],eax
	test	eax,eax
	jle	466710h

l00000000004663A3:
	mov	rax,[rsi]
	mov	[rbx+28h],r13
	lea	rbp,[00000000004291F0]                                 ; [rip+FFFC2E3F]
	mov	rax,[rax+30h]
	cmp	rax,rbp
	jnz	466655h

l00000000004663BE:
	mov	rax,[rsi+10h]
	lea	rcx,[rsp+80h]
	lea	r8,[rsp+3Ch]
	mov	rdx,[rax+38h]
	call	451EA0h

l00000000004663D8:
	mov	rcx,[rsp+80h]
	mov	rax,[rcx-18h]
	mov	[rbx+40h],rax
	mov	eax,0FFFFFFFFh
	lock
	xadd	[rcx-8h],eax
	test	eax,eax
	jle	466730h

l00000000004663FA:
	mov	rcx,[rbx+40h]
	call	475560h
	mov	r12,rax
	mov	rax,[rsi]
	mov	r14,[rbx+40h]
	mov	rax,[rax+30h]
	cmp	rax,rbp
	jnz	466640h

l000000000046641A:
	mov	rax,[rsi+10h]
	lea	rbp,[rsp+90h]
	lea	r8,[rsp+3Dh]
	mov	rcx,rbp
	mov	rdx,[rax+38h]
	call	451EA0h

l0000000000466437:
	xor	r9d,r9d
	mov	r8,r14
	mov	rdx,r12
	mov	rcx,rbp
	call	4286D0h
	mov	rcx,[rsp+90h]
	mov	eax,0FFFFFFFFh
	lock
	xadd	[rcx-8h],eax
	test	eax,eax
	jle	466750h

l0000000000466462:
	mov	rax,[rsi]
	mov	[rbx+38h],r12
	lea	r14,[00000000004291C0]                                 ; [rip+FFFC2D50]
	mov	rax,[rax+38h]
	cmp	rax,r14
	jnz	466625h

l000000000046647D:
	mov	rax,[rsi+10h]
	lea	r8,[rsp+3Eh]
	mov	rdx,[rax+48h]
	lea	rax,[rsp+0A0h]
	mov	rcx,rax
	mov	[rsp+28h],rax
	call	451EA0h

l000000000046649F:
	mov	rcx,[rsp+0A0h]
	mov	rax,[rcx-18h]
	mov	[rbx+50h],rax
	mov	eax,0FFFFFFFFh
	lock
	xadd	[rcx-8h],eax
	test	eax,eax
	jle	4667B0h

l00000000004664C1:
	mov	rcx,[rbx+50h]
	call	475560h
	mov	rbp,rax
	mov	rax,[rbx+50h]
	mov	[rsp+20h],rax
	mov	rax,[rsi]
	mov	rax,[rax+38h]
	cmp	rax,r14
	jnz	466610h

l00000000004664E6:
	mov	rax,[rsi+10h]
	lea	r14,[rsp+0B0h]
	lea	r8,[rsp+3Fh]
	mov	rcx,r14
	mov	rdx,[rax+48h]
	call	451EA0h

l0000000000466503:
	mov	r8,[rsp+20h]
	xor	r9d,r9d
	mov	rdx,rbp
	mov	rcx,r14
	call	4286D0h
	mov	rcx,[rsp+0B0h]
	mov	eax,0FFFFFFFFh
	lock
	xadd	[rcx-8h],eax
	test	eax,eax
	jle	4666E0h

l0000000000466530:
	mov	rax,[rsi]
	mov	[rbx+48h],rbp
	lea	rdx,[0000000000429090]                                 ; [rip+FFFC2B52]
	mov	rax,[rax+48h]
	cmp	rax,rdx
	jnz	466600h

l000000000046654B:
	mov	rax,[rsi+10h]
	mov	eax,[rax+5Ch]

l0000000000466552:
	mov	[rbx+5Ch],eax
	mov	rax,[rsi]
	lea	rdx,[0000000000429080]                                 ; [rip+FFFC2B21]
	mov	rax,[rax+50h]
	cmp	rax,rdx
	jnz	4665F0h

l000000000046656C:
	mov	rax,[rsi+10h]
	mov	eax,[rax+60h]

l0000000000466573:
	mov	[rbx+60h],eax
	mov	rcx,r15
	call	472FC0h
	mov	r14,rax
	mov	rax,[0000000000491720]                                 ; [rip+0002B198]
	lea	r15,[rbx+64h]
	mov	rsi,[rax]
	movzx	eax,byte ptr [r14+38h]
	cmp	al,1h
	jz	4665B3h

l0000000000466598:
	test	al,al
	jz	4665E0h

l000000000046659C:
	mov	rax,[r14]
	lea	rdx,[000000000042B5D0]                                 ; [rip+FFFC502A]
	mov	rax,[rax+38h]
	cmp	rax,rdx
	jnz	4667D0h

l00000000004665B3:
	mov	rax,[rsi]
	mov	[rbx+64h],rax
	movzx	eax,word ptr [rsi+8h]
	mov	[r15+8h],ax
	movzx	eax,byte ptr [rsi+0Ah]
	mov	[r15+0Ah],al

l00000000004665CB:
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
00000000004665DF                                              90                .

l00000000004665E0:
	mov	rcx,r14
	call	42B320h
	jmp	46659Ch
00000000004665EA                               66 0F 1F 44 00 00           f..D..

l00000000004665F0:
	mov	rcx,rsi
	call	rax
	jmp	466573h
00000000004665FA                               66 0F 1F 44 00 00           f..D..

l0000000000466600:
	mov	rcx,rsi
	call	rax
	jmp	466552h
000000000046660A                               66 0F 1F 44 00 00           f..D..

l0000000000466610:
	lea	r14,[rsp+0B0h]
	mov	rdx,rsi
	mov	rcx,r14
	call	rax
	jmp	466503h

l0000000000466625:
	lea	rdx,[rsp+0A0h]
	mov	rcx,rdx
	mov	[rsp+28h],rdx
	mov	rdx,rsi
	call	rax
	jmp	46649Fh
000000000046663F                                              90                .

l0000000000466640:
	lea	rbp,[rsp+90h]
	mov	rdx,rsi
	mov	rcx,rbp
	call	rax
	jmp	466437h

l0000000000466655:
	lea	rcx,[rsp+80h]
	mov	rdx,rsi
	call	rax
	jmp	4663D8h
0000000000466667                      66 0F 1F 84 00 00 00 00 00        f........

l0000000000466670:
	lea	rbp,[rsp+70h]
	mov	rdx,rsi
	mov	rcx,rbp
	call	rax
	jmp	46637Bh

l0000000000466682:
	lea	rcx,[rsp+60h]
	mov	rdx,rsi
	call	rax
	jmp	466322h

l0000000000466691:
	lea	rbp,[rsp+50h]
	mov	rdx,rsi
	mov	rcx,rbp
	call	rax
	jmp	4662B1h

l00000000004666A3:
	lea	rcx,[rsp+40h]
	mov	rdx,rsi
	call	rax
	jmp	466258h

l00000000004666B2:
	mov	rcx,rsi
	call	rax
	mov	rdx,[rsi]
	jmp	46622Ah
00000000004666BF                                              90                .

l00000000004666C0:
	mov	rcx,rsi
	call	rax
	jmp	466209h
00000000004666CA                               66 0F 1F 44 00 00           f..D..

l00000000004666D0:
	mov	rcx,rsi
	call	rax
	jmp	4661E7h
00000000004666DA                               66 0F 1F 44 00 00           f..D..

l00000000004666E0:
	mov	rdx,[rsp+28h]
	sub	rcx,18h
	call	450A50h
	jmp	466530h

l00000000004666F3:
	lea	rdx,[rsp+0B0h]
	sub	rcx,18h
	call	450A50h
	jmp	466341h
0000000000466709                            0F 1F 80 00 00 00 00          .......

l0000000000466710:
	lea	rdx,[rsp+0B0h]
	sub	rcx,18h
	call	450A50h
	jmp	4663A3h
0000000000466726                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l0000000000466730:
	lea	rdx,[rsp+0B0h]
	sub	rcx,18h
	call	450A50h
	jmp	4663FAh
0000000000466746                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l0000000000466750:
	lea	rdx,[rsp+0B0h]
	sub	rcx,18h
	call	450A50h
	jmp	466462h
0000000000466766                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l0000000000466770:
	lea	rdx,[rsp+0B0h]
	sub	rcx,18h
	call	450A50h
	jmp	466277h
0000000000466786                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l0000000000466790:
	lea	rdx,[rsp+0B0h]
	sub	rcx,18h
	call	450A50h
	jmp	4662D9h
00000000004667A6                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l00000000004667B0:
	lea	rdx,[rsp+0B0h]
	sub	rcx,18h
	call	450A50h
	jmp	4664C1h
00000000004667C6                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l00000000004667D0:
	mov	r9,r15
	lea	r8,[rsi+0Bh]
	mov	rdx,rsi
	mov	rcx,r14
	call	rax
	jmp	4665CBh
00000000004667E4             31 ED 45 31 E4 45 31 ED 48 89 C1 E8     1.E1.E1.H...
00000000004667F0 4C F0 00 00 48 89 F9 E8 44 ED 00 00 4D 85 ED 74 L...H...D...M..t
0000000000466800 08 4C 89 E9 E8 37 ED 00 00 4D 85 E4 74 08 4C 89 .L...7...M..t.L.
0000000000466810 E1 E8 2A ED 00 00 48 85 ED 74 08 48 89 E9 E8 1D ..*...H..t.H....
0000000000466820 ED 00 00 E8 38 F8 00 00 48 89 C1 E8 10 F0 00 00 ....8...H.......
0000000000466830 EB F1 31 ED EB B6 48 89 C3 48 8B 84 24 B0 00 00 ..1...H..H..$...
0000000000466840 00 48 8B 54 24 28 48 8D 48 E8 E8 11 A2 FE FF 48 .H.T$(H.H......H
0000000000466850 89 D8 EB 98 EB DC 48 89 C3 E8 12 F2 00 00 48 89 ......H.......H.
0000000000466860 D9 E8 4A AD FA FF EB 84 48 89 C3 48 8B 84 24 90 ..J.....H..H..$.
0000000000466870 00 00 00 48 8D 94 24 B0 00 00 00 48 8D 48 E8 E8 ...H..$....H.H..
0000000000466880 DC A1 FE FF 48 89 D8 EB A9 EB A7 E9 54 FF FF FF ....H.......T...
0000000000466890 E9 4F FF FF FF 31 ED 45 31 E4 E9 4D FF FF FF EB .O...1.E1..M....
00000000004668A0 F4 48 89 C3 48 8B 44 24 70 48 8D 94 24 B0 00 00 .H..H.D$pH..$...
00000000004668B0 00 48 8D 48 E8 E8 A6 A1 FE FF 48 89 D8 EB D6 EB .H.H......H.....
00000000004668C0 D4 48 89 C3 48 8B 44 24 50 48 8D 94 24 B0 00 00 .H..H.D$PH..$...
00000000004668D0 00 31 ED 45 31 E4 45 31 ED 48 8D 48 E8 E8 7E A1 .1.E1.E1.H.H..~.
00000000004668E0 FE FF 48 89 D9 E8 56 EF 00 00 E9 05 FF FF FF E9 ..H...V.........
00000000004668F0 F0 FE FF FF E9 39 FF FF FF E9 34 FF FF FF EB 95 .....9....4.....
0000000000466900 EB 93 E9 DD FE FF FF 90 90 90 90 90 90 90 90 90 ................

;; fn0000000000466910: 0000000000466910
fn0000000000466910 proc
	xor	eax,eax
	test	rdx,rdx
	mov	qword ptr [rcx+10h],+0h
	mov	qword ptr [rcx+18h],+0h
	setnz	al
	mov	byte ptr [rcx+20h],0h
	mov	byte ptr [rcx+21h],0h
	mov	[rcx+8h],eax
	lea	rax,[0000000000497690]                                 ; [rip+00030D56]
	mov	byte ptr [rcx+22h],0h
	mov	qword ptr [rcx+28h],+0h
	mov	qword ptr [rcx+30h],+0h
	mov	[rcx],rax
	mov	qword ptr [rcx+38h],+0h
	mov	qword ptr [rcx+40h],+0h
	mov	qword ptr [rcx+48h],+0h
	mov	qword ptr [rcx+50h],+0h
	mov	dword ptr [rcx+58h],0h
	mov	byte ptr [rcx+5Ch],0h
	mov	byte ptr [rcx+5Dh],0h
	mov	byte ptr [rcx+5Eh],0h
	mov	byte ptr [rcx+5Fh],0h
	mov	byte ptr [rcx+60h],0h
	mov	byte ptr [rcx+61h],0h
	mov	byte ptr [rcx+62h],0h
	mov	byte ptr [rcx+63h],0h
	mov	byte ptr [rcx+6Fh],0h
	ret
000000000046699D                                        90 90 90              ...

;; fn00000000004669A0: 00000000004669A0
fn00000000004669A0 proc
	xor	eax,eax
	test	rdx,rdx
	mov	qword ptr [rcx+10h],+0h
	mov	qword ptr [rcx+18h],+0h
	setnz	al
	mov	byte ptr [rcx+20h],0h
	mov	byte ptr [rcx+21h],0h
	mov	[rcx+8h],eax
	lea	rax,[0000000000497690]                                 ; [rip+00030CC6]
	mov	byte ptr [rcx+22h],0h
	mov	qword ptr [rcx+28h],+0h
	mov	qword ptr [rcx+30h],+0h
	mov	[rcx],rax
	mov	qword ptr [rcx+38h],+0h
	mov	qword ptr [rcx+40h],+0h
	mov	qword ptr [rcx+48h],+0h
	mov	qword ptr [rcx+50h],+0h
	mov	dword ptr [rcx+58h],0h
	mov	byte ptr [rcx+5Ch],0h
	mov	byte ptr [rcx+5Dh],0h
	mov	byte ptr [rcx+5Eh],0h
	mov	byte ptr [rcx+5Fh],0h
	mov	byte ptr [rcx+60h],0h
	mov	byte ptr [rcx+61h],0h
	mov	byte ptr [rcx+62h],0h
	mov	byte ptr [rcx+63h],0h
	mov	byte ptr [rcx+6Fh],0h
	ret
0000000000466A2D                                        90 90 90              ...

;; fn0000000000466A30: 0000000000466A30
fn0000000000466A30 proc
	push	rbx
	sub	rsp,20h
	mov	rbx,rcx
	call	466A50h
	mov	rcx,rbx
	add	rsp,20h
	pop	rbx
	jmp	475550h
0000000000466A4A                               90 90 90 90 90 90           ......

;; fn0000000000466A50: 0000000000466A50
;;   Called from:
;;     0000000000466A38 (in fn0000000000466A30)
fn0000000000466A50 proc
	push	rbx
	sub	rsp,20h
	cmp	byte ptr [rcx+6Fh],0h
	lea	rax,[0000000000497690]                                 ; [rip+00030C30]
	mov	rbx,rcx
	mov	[rcx],rax
	jz	466AA0h

l0000000000466A68:
	mov	rcx,[rcx+10h]
	test	rcx,rcx
	jz	466A76h

l0000000000466A71:
	call	475540h

l0000000000466A76:
	mov	rcx,[rbx+28h]
	test	rcx,rcx
	jz	466A84h

l0000000000466A7F:
	call	475540h

l0000000000466A84:
	mov	rcx,[rbx+38h]
	test	rcx,rcx
	jz	466A92h

l0000000000466A8D:
	call	475540h

l0000000000466A92:
	mov	rcx,[rbx+48h]
	test	rcx,rcx
	jz	466AA0h

l0000000000466A9B:
	call	475540h

l0000000000466AA0:
	mov	rcx,rbx
	add	rsp,20h
	pop	rbx
	jmp	46AD20h
0000000000466AAD                                        90 90 90              ...

;; fn0000000000466AB0: 0000000000466AB0
fn0000000000466AB0 proc
	push	rbx
	sub	rsp,20h
	cmp	byte ptr [rcx+6Fh],0h
	lea	rax,[0000000000497690]                                 ; [rip+00030BD0]
	mov	rbx,rcx
	mov	[rcx],rax
	jz	466B00h

l0000000000466AC8:
	mov	rcx,[rcx+10h]
	test	rcx,rcx
	jz	466AD6h

l0000000000466AD1:
	call	475540h

l0000000000466AD6:
	mov	rcx,[rbx+28h]
	test	rcx,rcx
	jz	466AE4h

l0000000000466ADF:
	call	475540h

l0000000000466AE4:
	mov	rcx,[rbx+38h]
	test	rcx,rcx
	jz	466AF2h

l0000000000466AED:
	call	475540h

l0000000000466AF2:
	mov	rcx,[rbx+48h]
	test	rcx,rcx
	jz	466B00h

l0000000000466AFB:
	call	475540h

l0000000000466B00:
	mov	rcx,rbx
	add	rsp,20h
	pop	rbx
	jmp	46AD20h
0000000000466B0D                                        90 90 90              ...

;; fn0000000000466B10: 0000000000466B10
;;   Called from:
;;     000000000042A76B (in fn000000000042A690)
;;     00000000004478B6 (in fn00000000004472D0)
fn0000000000466B10 proc
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,+0C8h
	mov	byte ptr [rcx+6Fh],1h
	mov	rbx,rcx
	mov	rcx,rdx
	mov	r15,rdx
	call	472DE0h
	mov	rsi,rax
	mov	rax,[rax]
	lea	rdx,[00000000004294F0]                                 ; [rip+FFFC29AE]
	mov	rax,[rax+10h]
	cmp	rax,rdx
	jnz	467040h

l0000000000466B4F:
	mov	rax,[rsi+10h]
	movzx	eax,byte ptr [rax+21h]

l0000000000466B57:
	mov	[rbx+21h],al
	mov	rax,[rsi]
	lea	rdx,[0000000000429560]                                 ; [rip+FFFC29FC]
	mov	rax,[rax+18h]
	cmp	rax,rdx
	jnz	467030h

l0000000000466B71:
	mov	rax,[rsi+10h]
	movzx	eax,byte ptr [rax+22h]

l0000000000466B79:
	mov	[rbx+22h],al
	mov	rdx,[rsi]
	lea	rcx,[00000000004294E0]                                 ; [rip+FFFC295A]
	mov	rax,[rdx+40h]
	cmp	rax,rcx
	jnz	467022h

l0000000000466B93:
	mov	rax,[rsi+10h]
	mov	eax,[rax+58h]

l0000000000466B9A:
	mov	[rbx+58h],eax
	mov	rax,[rdx+20h]
	lea	rbp,[0000000000429330]                                 ; [rip+FFFC2788]
	cmp	rax,rbp
	jnz	467013h

l0000000000466BB1:
	mov	rax,[rsi+10h]
	lea	rcx,[rsp+40h]
	lea	r8,[rsp+38h]
	mov	rdx,[rax+10h]
	call	451EA0h

l0000000000466BC8:
	mov	rcx,[rsp+40h]
	mov	rax,[rcx-18h]
	mov	[rbx+18h],rax
	mov	eax,0FFFFFFFFh
	lock
	xadd	[rcx-8h],eax
	test	eax,eax
	jle	4670E0h

l0000000000466BE7:
	mov	rcx,[rbx+18h]
	call	475560h
	mov	rdi,rax
	mov	rax,[rsi]
	mov	r12,[rbx+18h]
	mov	rax,[rax+20h]
	cmp	rax,rbp
	jnz	467001h

l0000000000466C07:
	mov	rax,[rsi+10h]
	lea	rbp,[rsp+50h]
	lea	r8,[rsp+39h]
	mov	rcx,rbp
	mov	rdx,[rax+10h]
	call	451EA0h

l0000000000466C21:
	xor	r9d,r9d
	mov	r8,r12
	mov	rdx,rdi
	mov	rcx,rbp
	call	4286D0h
	mov	rcx,[rsp+50h]
	mov	eax,0FFFFFFFFh
	lock
	xadd	[rcx-8h],eax
	test	eax,eax
	jle	467100h

l0000000000466C49:
	xor	eax,eax
	cmp	qword ptr [rbx+18h],0h
	mov	[rbx+10h],rdi
	jz	466C61h

l0000000000466C56:
	movzx	eax,byte ptr [rdi]
	sub	eax,1h
	cmp	al,7Dh
	setbe	al

l0000000000466C61:
	mov	[rbx+20h],al
	mov	rax,[rsi]
	lea	rbp,[00000000004294B0]                                 ; [rip+FFFC2842]
	mov	rax,[rax+28h]
	cmp	rax,rbp
	jnz	466FF2h

l0000000000466C7B:
	mov	rax,[rsi+10h]
	lea	rcx,[rsp+60h]
	lea	r8,[rsp+3Ah]
	mov	rdx,[rax+28h]
	call	451EA0h

l0000000000466C92:
	mov	rcx,[rsp+60h]
	mov	rax,[rcx-18h]
	mov	[rbx+30h],rax
	mov	eax,0FFFFFFFFh
	lock
	xadd	[rcx-8h],eax
	test	eax,eax
	jle	467063h

l0000000000466CB1:
	mov	rcx,[rbx+30h]
	call	475560h
	mov	r13,rax
	mov	rax,[rsi]
	mov	r12,[rbx+30h]
	mov	rax,[rax+28h]
	cmp	rax,rbp
	jnz	466FE0h

l0000000000466CD1:
	mov	rax,[rsi+10h]
	lea	rbp,[rsp+70h]
	lea	r8,[rsp+3Bh]
	mov	rcx,rbp
	mov	rdx,[rax+28h]
	call	451EA0h

l0000000000466CEB:
	xor	r9d,r9d
	mov	r8,r12
	mov	rdx,r13
	mov	rcx,rbp
	call	4286D0h
	mov	rcx,[rsp+70h]
	mov	eax,0FFFFFFFFh
	lock
	xadd	[rcx-8h],eax
	test	eax,eax
	jle	467080h

l0000000000466D13:
	mov	rax,[rsi]
	mov	[rbx+28h],r13
	lea	rbp,[0000000000429530]                                 ; [rip+FFFC280F]
	mov	rax,[rax+30h]
	cmp	rax,rbp
	jnz	466FC5h

l0000000000466D2E:
	mov	rax,[rsi+10h]
	lea	rcx,[rsp+80h]
	lea	r8,[rsp+3Ch]
	mov	rdx,[rax+38h]
	call	451EA0h

l0000000000466D48:
	mov	rcx,[rsp+80h]
	mov	rax,[rcx-18h]
	mov	[rbx+40h],rax
	mov	eax,0FFFFFFFFh
	lock
	xadd	[rcx-8h],eax
	test	eax,eax
	jle	4670A0h

l0000000000466D6A:
	mov	rcx,[rbx+40h]
	call	475560h
	mov	r12,rax
	mov	rax,[rsi]
	mov	r14,[rbx+40h]
	mov	rax,[rax+30h]
	cmp	rax,rbp
	jnz	466FB0h

l0000000000466D8A:
	mov	rax,[rsi+10h]
	lea	rbp,[rsp+90h]
	lea	r8,[rsp+3Dh]
	mov	rcx,rbp
	mov	rdx,[rax+38h]
	call	451EA0h

l0000000000466DA7:
	xor	r9d,r9d
	mov	r8,r14
	mov	rdx,r12
	mov	rcx,rbp
	call	4286D0h
	mov	rcx,[rsp+90h]
	mov	eax,0FFFFFFFFh
	lock
	xadd	[rcx-8h],eax
	test	eax,eax
	jle	4670C0h

l0000000000466DD2:
	mov	rax,[rsi]
	mov	[rbx+38h],r12
	lea	r14,[0000000000429500]                                 ; [rip+FFFC2720]
	mov	rax,[rax+38h]
	cmp	rax,r14
	jnz	466F95h

l0000000000466DED:
	mov	rax,[rsi+10h]
	lea	r8,[rsp+3Eh]
	mov	rdx,[rax+48h]
	lea	rax,[rsp+0A0h]
	mov	rcx,rax
	mov	[rsp+28h],rax
	call	451EA0h

l0000000000466E0F:
	mov	rcx,[rsp+0A0h]
	mov	rax,[rcx-18h]
	mov	[rbx+50h],rax
	mov	eax,0FFFFFFFFh
	lock
	xadd	[rcx-8h],eax
	test	eax,eax
	jle	467120h

l0000000000466E31:
	mov	rcx,[rbx+50h]
	call	475560h
	mov	rbp,rax
	mov	rax,[rbx+50h]
	mov	[rsp+20h],rax
	mov	rax,[rsi]
	mov	rax,[rax+38h]
	cmp	rax,r14
	jnz	466F80h

l0000000000466E56:
	mov	rax,[rsi+10h]
	lea	r14,[rsp+0B0h]
	lea	r8,[rsp+3Fh]
	mov	rcx,r14
	mov	rdx,[rax+48h]
	call	451EA0h

l0000000000466E73:
	mov	r8,[rsp+20h]
	xor	r9d,r9d
	mov	rdx,rbp
	mov	rcx,r14
	call	4286D0h
	mov	rcx,[rsp+0B0h]
	mov	eax,0FFFFFFFFh
	lock
	xadd	[rcx-8h],eax
	test	eax,eax
	jle	467050h

l0000000000466EA0:
	mov	rax,[rsi]
	mov	[rbx+48h],rbp
	lea	rdx,[00000000004293D0]                                 ; [rip+FFFC2522]
	mov	rax,[rax+48h]
	cmp	rax,rdx
	jnz	466F70h

l0000000000466EBB:
	mov	rax,[rsi+10h]
	mov	eax,[rax+5Ch]

l0000000000466EC2:
	mov	[rbx+5Ch],eax
	mov	rax,[rsi]
	lea	rdx,[00000000004293C0]                                 ; [rip+FFFC24F1]
	mov	rax,[rax+50h]
	cmp	rax,rdx
	jnz	466F60h

l0000000000466EDC:
	mov	rax,[rsi+10h]
	mov	eax,[rax+60h]

l0000000000466EE3:
	mov	[rbx+60h],eax
	mov	rcx,r15
	call	472FC0h
	mov	r14,rax
	mov	rax,[0000000000491720]                                 ; [rip+0002A828]
	lea	r15,[rbx+64h]
	mov	rsi,[rax]
	movzx	eax,byte ptr [r14+38h]
	cmp	al,1h
	jz	466F23h

l0000000000466F08:
	test	al,al
	jz	466F50h

l0000000000466F0C:
	mov	rax,[r14]
	lea	rdx,[000000000042B5D0]                                 ; [rip+FFFC46BA]
	mov	rax,[rax+38h]
	cmp	rax,rdx
	jnz	467140h

l0000000000466F23:
	mov	rax,[rsi]
	mov	[rbx+64h],rax
	movzx	eax,word ptr [rsi+8h]
	mov	[r15+8h],ax
	movzx	eax,byte ptr [rsi+0Ah]
	mov	[r15+0Ah],al

l0000000000466F3B:
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
0000000000466F4F                                              90                .

l0000000000466F50:
	mov	rcx,r14
	call	42B320h
	jmp	466F0Ch
0000000000466F5A                               66 0F 1F 44 00 00           f..D..

l0000000000466F60:
	mov	rcx,rsi
	call	rax
	jmp	466EE3h
0000000000466F6A                               66 0F 1F 44 00 00           f..D..

l0000000000466F70:
	mov	rcx,rsi
	call	rax
	jmp	466EC2h
0000000000466F7A                               66 0F 1F 44 00 00           f..D..

l0000000000466F80:
	lea	r14,[rsp+0B0h]
	mov	rdx,rsi
	mov	rcx,r14
	call	rax
	jmp	466E73h

l0000000000466F95:
	lea	rdx,[rsp+0A0h]
	mov	rcx,rdx
	mov	[rsp+28h],rdx
	mov	rdx,rsi
	call	rax
	jmp	466E0Fh
0000000000466FAF                                              90                .

l0000000000466FB0:
	lea	rbp,[rsp+90h]
	mov	rdx,rsi
	mov	rcx,rbp
	call	rax
	jmp	466DA7h

l0000000000466FC5:
	lea	rcx,[rsp+80h]
	mov	rdx,rsi
	call	rax
	jmp	466D48h
0000000000466FD7                      66 0F 1F 84 00 00 00 00 00        f........

l0000000000466FE0:
	lea	rbp,[rsp+70h]
	mov	rdx,rsi
	mov	rcx,rbp
	call	rax
	jmp	466CEBh

l0000000000466FF2:
	lea	rcx,[rsp+60h]
	mov	rdx,rsi
	call	rax
	jmp	466C92h

l0000000000467001:
	lea	rbp,[rsp+50h]
	mov	rdx,rsi
	mov	rcx,rbp
	call	rax
	jmp	466C21h

l0000000000467013:
	lea	rcx,[rsp+40h]
	mov	rdx,rsi
	call	rax
	jmp	466BC8h

l0000000000467022:
	mov	rcx,rsi
	call	rax
	mov	rdx,[rsi]
	jmp	466B9Ah
000000000046702F                                              90                .

l0000000000467030:
	mov	rcx,rsi
	call	rax
	jmp	466B79h
000000000046703A                               66 0F 1F 44 00 00           f..D..

l0000000000467040:
	mov	rcx,rsi
	call	rax
	jmp	466B57h
000000000046704A                               66 0F 1F 44 00 00           f..D..

l0000000000467050:
	mov	rdx,[rsp+28h]
	sub	rcx,18h
	call	450A50h
	jmp	466EA0h

l0000000000467063:
	lea	rdx,[rsp+0B0h]
	sub	rcx,18h
	call	450A50h
	jmp	466CB1h
0000000000467079                            0F 1F 80 00 00 00 00          .......

l0000000000467080:
	lea	rdx,[rsp+0B0h]
	sub	rcx,18h
	call	450A50h
	jmp	466D13h
0000000000467096                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l00000000004670A0:
	lea	rdx,[rsp+0B0h]
	sub	rcx,18h
	call	450A50h
	jmp	466D6Ah
00000000004670B6                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l00000000004670C0:
	lea	rdx,[rsp+0B0h]
	sub	rcx,18h
	call	450A50h
	jmp	466DD2h
00000000004670D6                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l00000000004670E0:
	lea	rdx,[rsp+0B0h]
	sub	rcx,18h
	call	450A50h
	jmp	466BE7h
00000000004670F6                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l0000000000467100:
	lea	rdx,[rsp+0B0h]
	sub	rcx,18h
	call	450A50h
	jmp	466C49h
0000000000467116                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l0000000000467120:
	lea	rdx,[rsp+0B0h]
	sub	rcx,18h
	call	450A50h
	jmp	466E31h
0000000000467136                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l0000000000467140:
	mov	r9,r15
	lea	r8,[rsi+0Bh]
	mov	rdx,rsi
	mov	rcx,r14
	call	rax
	jmp	466F3Bh
0000000000467154             31 ED 45 31 E4 45 31 ED 48 89 C1 E8     1.E1.E1.H...
0000000000467160 DC E6 00 00 48 89 F9 E8 D4 E3 00 00 4D 85 ED 74 ....H.......M..t
0000000000467170 08 4C 89 E9 E8 C7 E3 00 00 4D 85 E4 74 08 4C 89 .L.......M..t.L.
0000000000467180 E1 E8 BA E3 00 00 48 85 ED 74 08 48 89 E9 E8 AD ......H..t.H....
0000000000467190 E3 00 00 E8 C8 EE 00 00 48 89 C1 E8 A0 E6 00 00 ........H.......
00000000004671A0 EB F1 31 ED EB B6 48 89 C3 48 8B 84 24 B0 00 00 ..1...H..H..$...
00000000004671B0 00 48 8B 54 24 28 48 8D 48 E8 E8 A1 98 FE FF 48 .H.T$(H.H......H
00000000004671C0 89 D8 EB 98 EB DC 48 89 C3 E8 A2 E8 00 00 48 89 ......H.......H.
00000000004671D0 D9 E8 DA A3 FA FF EB 84 48 89 C3 48 8B 84 24 90 ........H..H..$.
00000000004671E0 00 00 00 48 8D 94 24 B0 00 00 00 48 8D 48 E8 E8 ...H..$....H.H..
00000000004671F0 6C 98 FE FF 48 89 D8 EB A9 EB A7 E9 54 FF FF FF l...H.......T...
0000000000467200 E9 4F FF FF FF 31 ED 45 31 E4 E9 4D FF FF FF EB .O...1.E1..M....
0000000000467210 F4 48 89 C3 48 8B 44 24 70 48 8D 94 24 B0 00 00 .H..H.D$pH..$...
0000000000467220 00 48 8D 48 E8 E8 36 98 FE FF 48 89 D8 EB D6 EB .H.H..6...H.....
0000000000467230 D4 48 89 C3 48 8B 44 24 50 48 8D 94 24 B0 00 00 .H..H.D$PH..$...
0000000000467240 00 31 ED 45 31 E4 45 31 ED 48 8D 48 E8 E8 0E 98 .1.E1.E1.H.H....
0000000000467250 FE FF 48 89 D9 E8 E6 E5 00 00 E9 05 FF FF FF E9 ..H.............
0000000000467260 F0 FE FF FF E9 39 FF FF FF E9 34 FF FF FF EB 95 .....9....4.....
0000000000467270 EB 93 E9 DD FE FF FF 90 90 90 90 90 90 90 90 90 ................

;; fn0000000000467280: 0000000000467280
fn0000000000467280 proc
	xor	eax,eax
	test	rdx,rdx
	mov	qword ptr [rcx+10h],+0h
	mov	qword ptr [rcx+18h],+0h
	setnz	al
	mov	byte ptr [rcx+20h],0h
	mov	byte ptr [rcx+21h],0h
	mov	[rcx+8h],eax
	lea	rax,[00000000004976B0]                                 ; [rip+00030406]
	mov	byte ptr [rcx+22h],0h
	mov	qword ptr [rcx+28h],+0h
	mov	qword ptr [rcx+30h],+0h
	mov	[rcx],rax
	mov	qword ptr [rcx+38h],+0h
	mov	qword ptr [rcx+40h],+0h
	mov	qword ptr [rcx+48h],+0h
	mov	qword ptr [rcx+50h],+0h
	mov	dword ptr [rcx+58h],0h
	mov	byte ptr [rcx+5Ch],0h
	mov	byte ptr [rcx+5Dh],0h
	mov	byte ptr [rcx+5Eh],0h
	mov	byte ptr [rcx+5Fh],0h
	mov	byte ptr [rcx+60h],0h
	mov	byte ptr [rcx+61h],0h
	mov	byte ptr [rcx+62h],0h
	mov	byte ptr [rcx+63h],0h
	mov	byte ptr [rcx+6Fh],0h
	ret
000000000046730D                                        90 90 90              ...

;; fn0000000000467310: 0000000000467310
fn0000000000467310 proc
	xor	eax,eax
	test	rdx,rdx
	mov	qword ptr [rcx+10h],+0h
	mov	qword ptr [rcx+18h],+0h
	setnz	al
	mov	byte ptr [rcx+20h],0h
	mov	byte ptr [rcx+21h],0h
	mov	[rcx+8h],eax
	lea	rax,[00000000004976B0]                                 ; [rip+00030376]
	mov	byte ptr [rcx+22h],0h
	mov	qword ptr [rcx+28h],+0h
	mov	qword ptr [rcx+30h],+0h
	mov	[rcx],rax
	mov	qword ptr [rcx+38h],+0h
	mov	qword ptr [rcx+40h],+0h
	mov	qword ptr [rcx+48h],+0h
	mov	qword ptr [rcx+50h],+0h
	mov	dword ptr [rcx+58h],0h
	mov	byte ptr [rcx+5Ch],0h
	mov	byte ptr [rcx+5Dh],0h
	mov	byte ptr [rcx+5Eh],0h
	mov	byte ptr [rcx+5Fh],0h
	mov	byte ptr [rcx+60h],0h
	mov	byte ptr [rcx+61h],0h
	mov	byte ptr [rcx+62h],0h
	mov	byte ptr [rcx+63h],0h
	mov	byte ptr [rcx+6Fh],0h
	ret
000000000046739D                                        90 90 90              ...

;; fn00000000004673A0: 00000000004673A0
fn00000000004673A0 proc
	push	rbx
	sub	rsp,20h
	mov	rbx,rcx
	call	4673C0h
	mov	rcx,rbx
	add	rsp,20h
	pop	rbx
	jmp	475550h
00000000004673BA                               90 90 90 90 90 90           ......

;; fn00000000004673C0: 00000000004673C0
;;   Called from:
;;     00000000004673A8 (in fn00000000004673A0)
fn00000000004673C0 proc
	push	rbx
	sub	rsp,20h
	cmp	byte ptr [rcx+6Fh],0h
	lea	rax,[00000000004976B0]                                 ; [rip+000302E0]
	mov	rbx,rcx
	mov	[rcx],rax
	jz	467410h

l00000000004673D8:
	mov	rcx,[rcx+10h]
	test	rcx,rcx
	jz	4673E6h

l00000000004673E1:
	call	475540h

l00000000004673E6:
	mov	rcx,[rbx+28h]
	test	rcx,rcx
	jz	4673F4h

l00000000004673EF:
	call	475540h

l00000000004673F4:
	mov	rcx,[rbx+38h]
	test	rcx,rcx
	jz	467402h

l00000000004673FD:
	call	475540h

l0000000000467402:
	mov	rcx,[rbx+48h]
	test	rcx,rcx
	jz	467410h

l000000000046740B:
	call	475540h

l0000000000467410:
	mov	rcx,rbx
	add	rsp,20h
	pop	rbx
	jmp	46AD20h
000000000046741D                                        90 90 90              ...

;; fn0000000000467420: 0000000000467420
fn0000000000467420 proc
	push	rbx
	sub	rsp,20h
	cmp	byte ptr [rcx+6Fh],0h
	lea	rax,[00000000004976B0]                                 ; [rip+00030280]
	mov	rbx,rcx
	mov	[rcx],rax
	jz	467470h

l0000000000467438:
	mov	rcx,[rcx+10h]
	test	rcx,rcx
	jz	467446h

l0000000000467441:
	call	475540h

l0000000000467446:
	mov	rcx,[rbx+28h]
	test	rcx,rcx
	jz	467454h

l000000000046744F:
	call	475540h

l0000000000467454:
	mov	rcx,[rbx+38h]
	test	rcx,rcx
	jz	467462h

l000000000046745D:
	call	475540h

l0000000000467462:
	mov	rcx,[rbx+48h]
	test	rcx,rcx
	jz	467470h

l000000000046746B:
	call	475540h

l0000000000467470:
	mov	rcx,rbx
	add	rsp,20h
	pop	rbx
	jmp	46AD20h
000000000046747D                                        90 90 90              ...

;; fn0000000000467480: 0000000000467480
;;   Called from:
;;     000000000042A89F (in fn000000000042A7C0)
;;     00000000004483A3 (in fn0000000000447CD0)
fn0000000000467480 proc
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,+0C8h
	mov	byte ptr [rcx+7Ah],1h
	mov	rbx,rcx
	mov	rcx,rdx
	mov	r15,rdx
	call	472E40h
	mov	rdx,[rax]
	mov	rsi,rax
	lea	rcx,[0000000000429830]                                 ; [rip+FFFC237E]
	mov	rax,[rdx+10h]
	cmp	rax,rcx
	jnz	4678E0h

l00000000004674BF:
	mov	rax,[rsi+10h]
	movzx	eax,word ptr [rax+22h]

l00000000004674C7:
	mov	[rbx+22h],ax
	mov	rax,[rdx+18h]
	lea	rcx,[00000000004298A0]                                 ; [rip+FFFC23CA]
	cmp	rax,rcx
	jnz	4679C0h

l00000000004674DF:
	mov	rax,[rsi+10h]
	movzx	eax,word ptr [rax+24h]

l00000000004674E7:
	mov	[rbx+24h],ax
	mov	rax,[rdx+40h]
	lea	rcx,[0000000000429820]                                 ; [rip+FFFC232A]
	cmp	rax,rcx
	jnz	4679B2h

l00000000004674FF:
	mov	rax,[rsi+10h]
	mov	eax,[rax+58h]

l0000000000467506:
	mov	[rbx+58h],eax
	mov	rax,[rdx+20h]
	lea	rbp,[0000000000429670]                                 ; [rip+FFFC215C]
	cmp	rax,rbp
	jnz	4679A3h

l000000000046751D:
	mov	rax,[rsi+10h]
	lea	rcx,[rsp+40h]
	lea	r8,[rsp+38h]
	mov	rdx,[rax+10h]
	call	451EA0h

l0000000000467534:
	mov	rcx,[rsp+40h]
	mov	rax,[rcx-18h]
	mov	[rbx+18h],rax
	mov	eax,0FFFFFFFFh
	lock
	xadd	[rcx-8h],eax
	test	eax,eax
	jle	467A80h

l0000000000467553:
	mov	rcx,[rbx+18h]
	call	475560h
	mov	rdi,rax
	mov	rax,[rsi]
	mov	r12,[rbx+18h]
	mov	rax,[rax+20h]
	cmp	rax,rbp
	jnz	467991h

l0000000000467573:
	mov	rax,[rsi+10h]
	lea	rbp,[rsp+50h]
	lea	r8,[rsp+39h]
	mov	rcx,rbp
	mov	rdx,[rax+10h]
	call	451EA0h

l000000000046758D:
	xor	r9d,r9d
	mov	r8,r12
	mov	rdx,rdi
	mov	rcx,rbp
	call	4286D0h
	mov	rcx,[rsp+50h]
	mov	eax,0FFFFFFFFh
	lock
	xadd	[rcx-8h],eax
	test	eax,eax
	jle	467AA0h

l00000000004675B5:
	xor	eax,eax
	cmp	qword ptr [rbx+18h],0h
	mov	[rbx+10h],rdi
	jz	4675CDh

l00000000004675C2:
	movzx	eax,byte ptr [rdi]
	sub	eax,1h
	cmp	al,7Dh
	setbe	al

l00000000004675CD:
	mov	[rbx+20h],al
	mov	rax,[rsi]
	lea	rbp,[00000000004297F0]                                 ; [rip+FFFC2216]
	mov	rax,[rax+28h]
	cmp	rax,rbp
	jnz	467982h

l00000000004675E7:
	mov	rax,[rsi+10h]
	lea	rcx,[rsp+60h]
	lea	r8,[rsp+3Ah]
	mov	rdx,[rax+28h]
	call	44A8B0h

l00000000004675FE:
	mov	rcx,[rsp+60h]
	mov	rax,[rcx-18h]
	mov	[rbx+30h],rax
	mov	eax,0FFFFFFFFh
	lock
	xadd	[rcx-8h],eax
	test	eax,eax
	jle	4679D0h

l000000000046761D:
	mov	rdx,[rbx+30h]
	mov	rcx,3F80000000000000h
	lea	rax,[rdx+rdx]
	cmp	rdx,rcx
	mov	rcx,-1h
	cmovbe	rcx,rax

l000000000046763D:
	call	475560h
	mov	r13,rax
	mov	rax,[rsi]
	mov	r12,[rbx+30h]
	mov	rax,[rax+28h]
	cmp	rax,rbp
	jnz	467970h

l0000000000467659:
	mov	rax,[rsi+10h]
	lea	rbp,[rsp+70h]
	lea	r8,[rsp+3Bh]
	mov	rcx,rbp
	mov	rdx,[rax+28h]
	call	44A8B0h

l0000000000467673:
	xor	r9d,r9d
	mov	r8,r12
	mov	rdx,r13
	mov	rcx,rbp
	call	4277C0h
	mov	rcx,[rsp+70h]
	mov	eax,0FFFFFFFFh
	lock
	xadd	[rcx-8h],eax
	test	eax,eax
	jle	4679F0h

l000000000046769B:
	mov	rax,[rsi]
	mov	[rbx+28h],r13
	lea	rbp,[0000000000429870]                                 ; [rip+FFFC21C7]
	mov	rax,[rax+30h]
	cmp	rax,rbp
	jnz	467955h

l00000000004676B6:
	mov	rax,[rsi+10h]
	lea	rcx,[rsp+80h]
	lea	r8,[rsp+3Ch]
	mov	rdx,[rax+38h]
	call	44A8B0h

l00000000004676D0:
	mov	rcx,[rsp+80h]
	mov	rax,[rcx-18h]
	mov	[rbx+40h],rax
	mov	eax,0FFFFFFFFh
	lock
	xadd	[rcx-8h],eax
	test	eax,eax
	jle	467A40h

l00000000004676F2:
	mov	rdx,[rbx+40h]
	mov	rcx,3F80000000000000h
	lea	rax,[rdx+rdx]
	cmp	rdx,rcx
	mov	rcx,-1h
	cmovbe	rcx,rax

l0000000000467712:
	call	475560h
	mov	r12,rax
	mov	rax,[rsi]
	mov	r14,[rbx+40h]
	mov	rax,[rax+30h]
	cmp	rax,rbp
	jnz	467940h

l000000000046772E:
	mov	rax,[rsi+10h]
	lea	rbp,[rsp+90h]
	lea	r8,[rsp+3Dh]
	mov	rcx,rbp
	mov	rdx,[rax+38h]
	call	44A8B0h

l000000000046774B:
	xor	r9d,r9d
	mov	r8,r14
	mov	rdx,r12
	mov	rcx,rbp
	call	4277C0h
	mov	rcx,[rsp+90h]
	mov	eax,0FFFFFFFFh
	lock
	xadd	[rcx-8h],eax
	test	eax,eax
	jle	467A23h

l0000000000467776:
	mov	rax,[rsi]
	mov	[rbx+38h],r12
	lea	r14,[0000000000429840]                                 ; [rip+FFFC20BC]
	mov	rax,[rax+38h]
	cmp	rax,r14
	jnz	467925h

l0000000000467791:
	mov	rax,[rsi+10h]
	lea	r8,[rsp+3Eh]
	mov	rdx,[rax+48h]
	lea	rax,[rsp+0A0h]
	mov	rcx,rax
	mov	[rsp+28h],rax
	call	44A8B0h

l00000000004677B3:
	mov	rcx,[rsp+0A0h]
	mov	rax,[rcx-18h]
	mov	[rbx+50h],rax
	mov	eax,0FFFFFFFFh
	lock
	xadd	[rcx-8h],eax
	test	eax,eax
	jle	467A60h

l00000000004677D5:
	mov	rdx,[rbx+50h]
	mov	rcx,3F80000000000000h
	lea	rax,[rdx+rdx]
	cmp	rdx,rcx
	mov	rcx,-1h
	cmovbe	rcx,rax

l00000000004677F5:
	call	475560h
	mov	rbp,rax
	mov	rax,[rbx+50h]
	mov	[rsp+20h],rax
	mov	rax,[rsi]
	mov	rax,[rax+38h]
	cmp	rax,r14
	jnz	467910h

l0000000000467816:
	mov	rax,[rsi+10h]
	lea	r14,[rsp+0B0h]
	lea	r8,[rsp+3Fh]
	mov	rcx,r14
	mov	rdx,[rax+48h]
	call	44A8B0h

l0000000000467833:
	mov	r8,[rsp+20h]
	xor	r9d,r9d
	mov	rdx,rbp
	mov	rcx,r14
	call	4277C0h
	mov	rcx,[rsp+0B0h]
	mov	eax,0FFFFFFFFh
	lock
	xadd	[rcx-8h],eax
	test	eax,eax
	jle	467A10h

l0000000000467860:
	mov	rax,[rsi]
	mov	[rbx+48h],rbp
	lea	rdx,[0000000000429710]                                 ; [rip+FFFC1EA2]
	mov	rax,[rax+48h]
	cmp	rax,rdx
	jnz	467900h

l000000000046787B:
	mov	rax,[rsi+10h]
	mov	eax,[rax+5Ch]

l0000000000467882:
	mov	[rbx+5Ch],eax
	mov	rax,[rsi]
	lea	rdx,[0000000000429700]                                 ; [rip+FFFC1E71]
	mov	rax,[rax+50h]
	cmp	rax,rdx
	jnz	4678F0h

l0000000000467898:
	mov	rax,[rsi+10h]
	mov	eax,[rax+60h]

l000000000046789F:
	mov	[rbx+60h],eax
	mov	rcx,r15
	call	473020h
	mov	rdx,[0000000000491720]                                 ; [rip+00029E6F]
	mov	r10,[rax]
	lea	r9,[rbx+64h]
	mov	rcx,rax
	mov	rdx,[rdx]
	lea	r8,[rdx+0Bh]
	call	qword ptr [r10+58h]
	nop
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
00000000004678DB                                  0F 1F 44 00 00            ..D..

l00000000004678E0:
	mov	rcx,rsi
	call	rax
	mov	rdx,[rsi]
	jmp	4674C7h
00000000004678ED                                        0F 1F 00              ...

l00000000004678F0:
	mov	rcx,rsi
	call	rax
	jmp	46789Fh
00000000004678F7                      66 0F 1F 84 00 00 00 00 00        f........

l0000000000467900:
	mov	rcx,rsi
	call	rax
	jmp	467882h
000000000046790A                               66 0F 1F 44 00 00           f..D..

l0000000000467910:
	lea	r14,[rsp+0B0h]
	mov	rdx,rsi
	mov	rcx,r14
	call	rax
	jmp	467833h

l0000000000467925:
	lea	rdx,[rsp+0A0h]
	mov	rcx,rdx
	mov	[rsp+28h],rdx
	mov	rdx,rsi
	call	rax
	jmp	4677B3h
000000000046793F                                              90                .

l0000000000467940:
	lea	rbp,[rsp+90h]
	mov	rdx,rsi
	mov	rcx,rbp
	call	rax
	jmp	46774Bh

l0000000000467955:
	lea	rcx,[rsp+80h]
	mov	rdx,rsi
	call	rax
	jmp	4676D0h
0000000000467967                      66 0F 1F 84 00 00 00 00 00        f........

l0000000000467970:
	lea	rbp,[rsp+70h]
	mov	rdx,rsi
	mov	rcx,rbp
	call	rax
	jmp	467673h

l0000000000467982:
	lea	rcx,[rsp+60h]
	mov	rdx,rsi
	call	rax
	jmp	4675FEh

l0000000000467991:
	lea	rbp,[rsp+50h]
	mov	rdx,rsi
	mov	rcx,rbp
	call	rax
	jmp	46758Dh

l00000000004679A3:
	lea	rcx,[rsp+40h]
	mov	rdx,rsi
	call	rax
	jmp	467534h

l00000000004679B2:
	mov	rcx,rsi
	call	rax
	mov	rdx,[rsi]
	jmp	467506h
00000000004679BF                                              90                .

l00000000004679C0:
	mov	rcx,rsi
	call	rax
	mov	rdx,[rsi]
	jmp	4674E7h
00000000004679CD                                        0F 1F 00              ...

l00000000004679D0:
	lea	rdx,[rsp+0B0h]
	sub	rcx,18h
	call	449360h
	jmp	46761Dh
00000000004679E6                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l00000000004679F0:
	lea	rdx,[rsp+0B0h]
	sub	rcx,18h
	call	449360h
	jmp	46769Bh
0000000000467A06                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l0000000000467A10:
	mov	rdx,[rsp+28h]
	sub	rcx,18h
	call	449360h
	jmp	467860h

l0000000000467A23:
	lea	rdx,[rsp+0B0h]
	sub	rcx,18h
	call	449360h
	jmp	467776h
0000000000467A39                            0F 1F 80 00 00 00 00          .......

l0000000000467A40:
	lea	rdx,[rsp+0B0h]
	sub	rcx,18h
	call	449360h
	jmp	4676F2h
0000000000467A56                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l0000000000467A60:
	lea	rdx,[rsp+0B0h]
	sub	rcx,18h
	call	449360h
	jmp	4677D5h
0000000000467A76                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l0000000000467A80:
	lea	rdx,[rsp+0B0h]
	sub	rcx,18h
	call	450A50h
	jmp	467553h
0000000000467A96                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l0000000000467AA0:
	lea	rdx,[rsp+0B0h]
	sub	rcx,18h
	call	450A50h
	jmp	4675B5h
0000000000467AB6                   31 ED 45 31 E4 45 31 ED 48 89       1.E1.E1.H.
0000000000467AC0 C1 E8 7A DD 00 00 48 89 F9 E8 72 DA 00 00 4D 85 ..z...H...r...M.
0000000000467AD0 ED 74 08 4C 89 E9 E8 65 DA 00 00 4D 85 E4 74 08 .t.L...e...M..t.
0000000000467AE0 4C 89 E1 E8 58 DA 00 00 48 85 ED 74 08 48 89 E9 L...X...H..t.H..
0000000000467AF0 E8 4B DA 00 00 E8 66 E5 00 00 48 89 C3 48 8B 44 .K....f...H..H.D
0000000000467B00 24 70 48 8D 94 24 B0 00 00 00 31 ED 45 31 E4 48 $pH..$....1.E1.H
0000000000467B10 8D 48 E8 E8 58 18 FE FF 48 89 D8 EB A1 31 ED 45 .H..X...H....1.E
0000000000467B20 31 E4 EB 9A 31 ED EB 96 EB F3 48 89 C3 E8 3E DF 1...1.....H...>.
0000000000467B30 00 00 48 89 D9 E8 76 9A FA FF 48 89 C3 48 8B 84 ..H...v...H..H..
0000000000467B40 24 B0 00 00 00 48 8B 54 24 28 48 8D 48 E8 E8 1D $....H.T$(H.H...
0000000000467B50 18 FE FF 48 89 D8 E9 63 FF FF FF E9 5E FF FF FF ...H...c....^...
0000000000467B60 EB C2 EB B9 48 89 C3 48 8B 84 24 90 00 00 00 48 ....H..H..$....H
0000000000467B70 8D 94 24 B0 00 00 00 48 8D 48 E8 E8 F0 17 FE FF ..$....H.H......
0000000000467B80 48 89 D8 EB 9F EB 9D 48 89 C1 E8 B1 DC 00 00 E9 H......H........
0000000000467B90 61 FF FF FF E9 1D FF FF FF 48 89 C3 48 8B 44 24 a........H..H.D$
0000000000467BA0 50 48 8D 94 24 B0 00 00 00 31 ED 45 31 E4 45 31 PH..$....1.E1.E1
0000000000467BB0 ED 48 8D 48 E8 E8 A6 8E FE FF 48 89 D9 E8 7E DC .H.H......H...~.
0000000000467BC0 00 00 E9 FF FE FF FF E9 EA FE FF FF E9 53 FF FF .............S..
0000000000467BD0 FF E9 4E FF FF FF E9 42 FF FF FF E9 3D FF FF FF ..N....B....=...
0000000000467BE0 E9 D1 FE FF FF E9 CC FE FF FF 90 90 90 90 90 90 ................

;; fn0000000000467BF0: 0000000000467BF0
fn0000000000467BF0 proc
	xor	eax,eax
	test	rdx,rdx
	mov	qword ptr [rcx+10h],+0h
	mov	qword ptr [rcx+18h],+0h
	setnz	al
	xor	edx,edx
	mov	byte ptr [rcx+20h],0h
	mov	[rcx+8h],eax
	lea	rax,[00000000004976D0]                                 ; [rip+0002FAB8]
	mov	[rcx+24h],dx
	mov	qword ptr [rcx+28h],+0h
	mov	qword ptr [rcx+30h],+0h
	mov	[rcx],rax
	xor	eax,eax
	mov	qword ptr [rcx+38h],+0h
	mov	[rcx+22h],ax
	mov	qword ptr [rcx+40h],+0h
	mov	qword ptr [rcx+48h],+0h
	mov	qword ptr [rcx+50h],+0h
	mov	dword ptr [rcx+58h],0h
	mov	byte ptr [rcx+5Ch],0h
	mov	byte ptr [rcx+5Dh],0h
	mov	byte ptr [rcx+5Eh],0h
	mov	byte ptr [rcx+5Fh],0h
	mov	byte ptr [rcx+60h],0h
	mov	byte ptr [rcx+61h],0h
	mov	byte ptr [rcx+62h],0h
	mov	byte ptr [rcx+63h],0h
	mov	byte ptr [rcx+7Ah],0h
	ret
0000000000467C81    90 90 90 90 90 90 90 90 90 90 90 90 90 90 90  ...............

;; fn0000000000467C90: 0000000000467C90
fn0000000000467C90 proc
	xor	eax,eax
	test	rdx,rdx
	mov	qword ptr [rcx+10h],+0h
	mov	qword ptr [rcx+18h],+0h
	setnz	al
	xor	edx,edx
	mov	byte ptr [rcx+20h],0h
	mov	[rcx+8h],eax
	lea	rax,[00000000004976D0]                                 ; [rip+0002FA18]
	mov	[rcx+24h],dx
	mov	qword ptr [rcx+28h],+0h
	mov	qword ptr [rcx+30h],+0h
	mov	[rcx],rax
	xor	eax,eax
	mov	qword ptr [rcx+38h],+0h
	mov	[rcx+22h],ax
	mov	qword ptr [rcx+40h],+0h
	mov	qword ptr [rcx+48h],+0h
	mov	qword ptr [rcx+50h],+0h
	mov	dword ptr [rcx+58h],0h
	mov	byte ptr [rcx+5Ch],0h
	mov	byte ptr [rcx+5Dh],0h
	mov	byte ptr [rcx+5Eh],0h
	mov	byte ptr [rcx+5Fh],0h
	mov	byte ptr [rcx+60h],0h
	mov	byte ptr [rcx+61h],0h
	mov	byte ptr [rcx+62h],0h
	mov	byte ptr [rcx+63h],0h
	mov	byte ptr [rcx+7Ah],0h
	ret
0000000000467D21    90 90 90 90 90 90 90 90 90 90 90 90 90 90 90  ...............

;; fn0000000000467D30: 0000000000467D30
fn0000000000467D30 proc
	push	rbx
	sub	rsp,20h
	mov	rbx,rcx
	call	467D50h
	mov	rcx,rbx
	add	rsp,20h
	pop	rbx
	jmp	475550h
0000000000467D4A                               90 90 90 90 90 90           ......

;; fn0000000000467D50: 0000000000467D50
;;   Called from:
;;     0000000000467D38 (in fn0000000000467D30)
fn0000000000467D50 proc
	push	rbx
	sub	rsp,20h
	cmp	byte ptr [rcx+7Ah],0h
	lea	rax,[00000000004976D0]                                 ; [rip+0002F970]
	mov	rbx,rcx
	mov	[rcx],rax
	jz	467DA0h

l0000000000467D68:
	mov	rcx,[rcx+10h]
	test	rcx,rcx
	jz	467D76h

l0000000000467D71:
	call	475540h

l0000000000467D76:
	mov	rcx,[rbx+28h]
	test	rcx,rcx
	jz	467D84h

l0000000000467D7F:
	call	475540h

l0000000000467D84:
	mov	rcx,[rbx+38h]
	test	rcx,rcx
	jz	467D92h

l0000000000467D8D:
	call	475540h

l0000000000467D92:
	mov	rcx,[rbx+48h]
	test	rcx,rcx
	jz	467DA0h

l0000000000467D9B:
	call	475540h

l0000000000467DA0:
	mov	rcx,rbx
	add	rsp,20h
	pop	rbx
	jmp	46AD20h
0000000000467DAD                                        90 90 90              ...

;; fn0000000000467DB0: 0000000000467DB0
fn0000000000467DB0 proc
	push	rbx
	sub	rsp,20h
	cmp	byte ptr [rcx+7Ah],0h
	lea	rax,[00000000004976D0]                                 ; [rip+0002F910]
	mov	rbx,rcx
	mov	[rcx],rax
	jz	467E00h

l0000000000467DC8:
	mov	rcx,[rcx+10h]
	test	rcx,rcx
	jz	467DD6h

l0000000000467DD1:
	call	475540h

l0000000000467DD6:
	mov	rcx,[rbx+28h]
	test	rcx,rcx
	jz	467DE4h

l0000000000467DDF:
	call	475540h

l0000000000467DE4:
	mov	rcx,[rbx+38h]
	test	rcx,rcx
	jz	467DF2h

l0000000000467DED:
	call	475540h

l0000000000467DF2:
	mov	rcx,[rbx+48h]
	test	rcx,rcx
	jz	467E00h

l0000000000467DFB:
	call	475540h

l0000000000467E00:
	mov	rcx,rbx
	add	rsp,20h
	pop	rbx
	jmp	46AD20h
0000000000467E0D                                        90 90 90              ...

;; fn0000000000467E10: 0000000000467E10
;;   Called from:
;;     000000000042A9CF (in fn000000000042A8F0)
;;     0000000000448B93 (in fn00000000004484C0)
fn0000000000467E10 proc
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,+0C8h
	mov	byte ptr [rcx+7Ah],1h
	mov	rbx,rcx
	mov	rcx,rdx
	mov	r15,rdx
	call	472EA0h
	mov	rdx,[rax]
	mov	rsi,rax
	lea	rcx,[0000000000429B70]                                 ; [rip+FFFC1D2E]
	mov	rax,[rdx+10h]
	cmp	rax,rcx
	jnz	468270h

l0000000000467E4F:
	mov	rax,[rsi+10h]
	movzx	eax,word ptr [rax+22h]

l0000000000467E57:
	mov	[rbx+22h],ax
	mov	rax,[rdx+18h]
	lea	rcx,[0000000000429BE0]                                 ; [rip+FFFC1D7A]
	cmp	rax,rcx
	jnz	468350h

l0000000000467E6F:
	mov	rax,[rsi+10h]
	movzx	eax,word ptr [rax+24h]

l0000000000467E77:
	mov	[rbx+24h],ax
	mov	rax,[rdx+40h]
	lea	rcx,[0000000000429B60]                                 ; [rip+FFFC1CDA]
	cmp	rax,rcx
	jnz	468342h

l0000000000467E8F:
	mov	rax,[rsi+10h]
	mov	eax,[rax+58h]

l0000000000467E96:
	mov	[rbx+58h],eax
	mov	rax,[rdx+20h]
	lea	rbp,[00000000004299B0]                                 ; [rip+FFFC1B0C]
	cmp	rax,rbp
	jnz	468333h

l0000000000467EAD:
	mov	rax,[rsi+10h]
	lea	rcx,[rsp+40h]
	lea	r8,[rsp+38h]
	mov	rdx,[rax+10h]
	call	451EA0h

l0000000000467EC4:
	mov	rcx,[rsp+40h]
	mov	rax,[rcx-18h]
	mov	[rbx+18h],rax
	mov	eax,0FFFFFFFFh
	lock
	xadd	[rcx-8h],eax
	test	eax,eax
	jle	468410h

l0000000000467EE3:
	mov	rcx,[rbx+18h]
	call	475560h
	mov	rdi,rax
	mov	rax,[rsi]
	mov	r12,[rbx+18h]
	mov	rax,[rax+20h]
	cmp	rax,rbp
	jnz	468321h

l0000000000467F03:
	mov	rax,[rsi+10h]
	lea	rbp,[rsp+50h]
	lea	r8,[rsp+39h]
	mov	rcx,rbp
	mov	rdx,[rax+10h]
	call	451EA0h

l0000000000467F1D:
	xor	r9d,r9d
	mov	r8,r12
	mov	rdx,rdi
	mov	rcx,rbp
	call	4286D0h
	mov	rcx,[rsp+50h]
	mov	eax,0FFFFFFFFh
	lock
	xadd	[rcx-8h],eax
	test	eax,eax
	jle	468430h

l0000000000467F45:
	xor	eax,eax
	cmp	qword ptr [rbx+18h],0h
	mov	[rbx+10h],rdi
	jz	467F5Dh

l0000000000467F52:
	movzx	eax,byte ptr [rdi]
	sub	eax,1h
	cmp	al,7Dh
	setbe	al

l0000000000467F5D:
	mov	[rbx+20h],al
	mov	rax,[rsi]
	lea	rbp,[0000000000429B30]                                 ; [rip+FFFC1BC6]
	mov	rax,[rax+28h]
	cmp	rax,rbp
	jnz	468312h

l0000000000467F77:
	mov	rax,[rsi+10h]
	lea	rcx,[rsp+60h]
	lea	r8,[rsp+3Ah]
	mov	rdx,[rax+28h]
	call	44A8B0h

l0000000000467F8E:
	mov	rcx,[rsp+60h]
	mov	rax,[rcx-18h]
	mov	[rbx+30h],rax
	mov	eax,0FFFFFFFFh
	lock
	xadd	[rcx-8h],eax
	test	eax,eax
	jle	468360h

l0000000000467FAD:
	mov	rdx,[rbx+30h]
	mov	rcx,3F80000000000000h
	lea	rax,[rdx+rdx]
	cmp	rdx,rcx
	mov	rcx,-1h
	cmovbe	rcx,rax

l0000000000467FCD:
	call	475560h
	mov	r13,rax
	mov	rax,[rsi]
	mov	r12,[rbx+30h]
	mov	rax,[rax+28h]
	cmp	rax,rbp
	jnz	468300h

l0000000000467FE9:
	mov	rax,[rsi+10h]
	lea	rbp,[rsp+70h]
	lea	r8,[rsp+3Bh]
	mov	rcx,rbp
	mov	rdx,[rax+28h]
	call	44A8B0h

l0000000000468003:
	xor	r9d,r9d
	mov	r8,r12
	mov	rdx,r13
	mov	rcx,rbp
	call	4277C0h
	mov	rcx,[rsp+70h]
	mov	eax,0FFFFFFFFh
	lock
	xadd	[rcx-8h],eax
	test	eax,eax
	jle	468380h

l000000000046802B:
	mov	rax,[rsi]
	mov	[rbx+28h],r13
	lea	rbp,[0000000000429BB0]                                 ; [rip+FFFC1B77]
	mov	rax,[rax+30h]
	cmp	rax,rbp
	jnz	4682E5h

l0000000000468046:
	mov	rax,[rsi+10h]
	lea	rcx,[rsp+80h]
	lea	r8,[rsp+3Ch]
	mov	rdx,[rax+38h]
	call	44A8B0h

l0000000000468060:
	mov	rcx,[rsp+80h]
	mov	rax,[rcx-18h]
	mov	[rbx+40h],rax
	mov	eax,0FFFFFFFFh
	lock
	xadd	[rcx-8h],eax
	test	eax,eax
	jle	4683D0h

l0000000000468082:
	mov	rdx,[rbx+40h]
	mov	rcx,3F80000000000000h
	lea	rax,[rdx+rdx]
	cmp	rdx,rcx
	mov	rcx,-1h
	cmovbe	rcx,rax

l00000000004680A2:
	call	475560h
	mov	r12,rax
	mov	rax,[rsi]
	mov	r14,[rbx+40h]
	mov	rax,[rax+30h]
	cmp	rax,rbp
	jnz	4682D0h

l00000000004680BE:
	mov	rax,[rsi+10h]
	lea	rbp,[rsp+90h]
	lea	r8,[rsp+3Dh]
	mov	rcx,rbp
	mov	rdx,[rax+38h]
	call	44A8B0h

l00000000004680DB:
	xor	r9d,r9d
	mov	r8,r14
	mov	rdx,r12
	mov	rcx,rbp
	call	4277C0h
	mov	rcx,[rsp+90h]
	mov	eax,0FFFFFFFFh
	lock
	xadd	[rcx-8h],eax
	test	eax,eax
	jle	4683B3h

l0000000000468106:
	mov	rax,[rsi]
	mov	[rbx+38h],r12
	lea	r14,[0000000000429B80]                                 ; [rip+FFFC1A6C]
	mov	rax,[rax+38h]
	cmp	rax,r14
	jnz	4682B5h

l0000000000468121:
	mov	rax,[rsi+10h]
	lea	r8,[rsp+3Eh]
	mov	rdx,[rax+48h]
	lea	rax,[rsp+0A0h]
	mov	rcx,rax
	mov	[rsp+28h],rax
	call	44A8B0h

l0000000000468143:
	mov	rcx,[rsp+0A0h]
	mov	rax,[rcx-18h]
	mov	[rbx+50h],rax
	mov	eax,0FFFFFFFFh
	lock
	xadd	[rcx-8h],eax
	test	eax,eax
	jle	4683F0h

l0000000000468165:
	mov	rdx,[rbx+50h]
	mov	rcx,3F80000000000000h
	lea	rax,[rdx+rdx]
	cmp	rdx,rcx
	mov	rcx,-1h
	cmovbe	rcx,rax

l0000000000468185:
	call	475560h
	mov	rbp,rax
	mov	rax,[rbx+50h]
	mov	[rsp+20h],rax
	mov	rax,[rsi]
	mov	rax,[rax+38h]
	cmp	rax,r14
	jnz	4682A0h

l00000000004681A6:
	mov	rax,[rsi+10h]
	lea	r14,[rsp+0B0h]
	lea	r8,[rsp+3Fh]
	mov	rcx,r14
	mov	rdx,[rax+48h]
	call	44A8B0h

l00000000004681C3:
	mov	r8,[rsp+20h]
	xor	r9d,r9d
	mov	rdx,rbp
	mov	rcx,r14
	call	4277C0h
	mov	rcx,[rsp+0B0h]
	mov	eax,0FFFFFFFFh
	lock
	xadd	[rcx-8h],eax
	test	eax,eax
	jle	4683A0h

l00000000004681F0:
	mov	rax,[rsi]
	mov	[rbx+48h],rbp
	lea	rdx,[0000000000429A50]                                 ; [rip+FFFC1852]
	mov	rax,[rax+48h]
	cmp	rax,rdx
	jnz	468290h

l000000000046820B:
	mov	rax,[rsi+10h]
	mov	eax,[rax+5Ch]

l0000000000468212:
	mov	[rbx+5Ch],eax
	mov	rax,[rsi]
	lea	rdx,[0000000000429A40]                                 ; [rip+FFFC1821]
	mov	rax,[rax+50h]
	cmp	rax,rdx
	jnz	468280h

l0000000000468228:
	mov	rax,[rsi+10h]
	mov	eax,[rax+60h]

l000000000046822F:
	mov	[rbx+60h],eax
	mov	rcx,r15
	call	473020h
	mov	rdx,[0000000000491720]                                 ; [rip+000294DF]
	mov	r10,[rax]
	lea	r9,[rbx+64h]
	mov	rcx,rax
	mov	rdx,[rdx]
	lea	r8,[rdx+0Bh]
	call	qword ptr [r10+58h]
	nop
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
000000000046826B                                  0F 1F 44 00 00            ..D..

l0000000000468270:
	mov	rcx,rsi
	call	rax
	mov	rdx,[rsi]
	jmp	467E57h
000000000046827D                                        0F 1F 00              ...

l0000000000468280:
	mov	rcx,rsi
	call	rax
	jmp	46822Fh
0000000000468287                      66 0F 1F 84 00 00 00 00 00        f........

l0000000000468290:
	mov	rcx,rsi
	call	rax
	jmp	468212h
000000000046829A                               66 0F 1F 44 00 00           f..D..

l00000000004682A0:
	lea	r14,[rsp+0B0h]
	mov	rdx,rsi
	mov	rcx,r14
	call	rax
	jmp	4681C3h

l00000000004682B5:
	lea	rdx,[rsp+0A0h]
	mov	rcx,rdx
	mov	[rsp+28h],rdx
	mov	rdx,rsi
	call	rax
	jmp	468143h
00000000004682CF                                              90                .

l00000000004682D0:
	lea	rbp,[rsp+90h]
	mov	rdx,rsi
	mov	rcx,rbp
	call	rax
	jmp	4680DBh

l00000000004682E5:
	lea	rcx,[rsp+80h]
	mov	rdx,rsi
	call	rax
	jmp	468060h
00000000004682F7                      66 0F 1F 84 00 00 00 00 00        f........

l0000000000468300:
	lea	rbp,[rsp+70h]
	mov	rdx,rsi
	mov	rcx,rbp
	call	rax
	jmp	468003h

l0000000000468312:
	lea	rcx,[rsp+60h]
	mov	rdx,rsi
	call	rax
	jmp	467F8Eh

l0000000000468321:
	lea	rbp,[rsp+50h]
	mov	rdx,rsi
	mov	rcx,rbp
	call	rax
	jmp	467F1Dh

l0000000000468333:
	lea	rcx,[rsp+40h]
	mov	rdx,rsi
	call	rax
	jmp	467EC4h

l0000000000468342:
	mov	rcx,rsi
	call	rax
	mov	rdx,[rsi]
	jmp	467E96h
000000000046834F                                              90                .

l0000000000468350:
	mov	rcx,rsi
	call	rax
	mov	rdx,[rsi]
	jmp	467E77h
000000000046835D                                        0F 1F 00              ...

l0000000000468360:
	lea	rdx,[rsp+0B0h]
	sub	rcx,18h
	call	449360h
	jmp	467FADh
0000000000468376                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l0000000000468380:
	lea	rdx,[rsp+0B0h]
	sub	rcx,18h
	call	449360h
	jmp	46802Bh
0000000000468396                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l00000000004683A0:
	mov	rdx,[rsp+28h]
	sub	rcx,18h
	call	449360h
	jmp	4681F0h

l00000000004683B3:
	lea	rdx,[rsp+0B0h]
	sub	rcx,18h
	call	449360h
	jmp	468106h
00000000004683C9                            0F 1F 80 00 00 00 00          .......

l00000000004683D0:
	lea	rdx,[rsp+0B0h]
	sub	rcx,18h
	call	449360h
	jmp	468082h
00000000004683E6                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l00000000004683F0:
	lea	rdx,[rsp+0B0h]
	sub	rcx,18h
	call	449360h
	jmp	468165h
0000000000468406                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l0000000000468410:
	lea	rdx,[rsp+0B0h]
	sub	rcx,18h
	call	450A50h
	jmp	467EE3h
0000000000468426                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l0000000000468430:
	lea	rdx,[rsp+0B0h]
	sub	rcx,18h
	call	450A50h
	jmp	467F45h
0000000000468446                   31 ED 45 31 E4 45 31 ED 48 89       1.E1.E1.H.
0000000000468450 C1 E8 EA D3 00 00 48 89 F9 E8 E2 D0 00 00 4D 85 ......H.......M.
0000000000468460 ED 74 08 4C 89 E9 E8 D5 D0 00 00 4D 85 E4 74 08 .t.L.......M..t.
0000000000468470 4C 89 E1 E8 C8 D0 00 00 48 85 ED 74 08 48 89 E9 L.......H..t.H..
0000000000468480 E8 BB D0 00 00 E8 D6 DB 00 00 48 89 C3 48 8B 44 ..........H..H.D
0000000000468490 24 70 48 8D 94 24 B0 00 00 00 31 ED 45 31 E4 48 $pH..$....1.E1.H
00000000004684A0 8D 48 E8 E8 C8 0E FE FF 48 89 D8 EB A1 31 ED 45 .H......H....1.E
00000000004684B0 31 E4 EB 9A 31 ED EB 96 EB F3 48 89 C3 E8 AE D5 1...1.....H.....
00000000004684C0 00 00 48 89 D9 E8 E6 90 FA FF 48 89 C3 48 8B 84 ..H.......H..H..
00000000004684D0 24 B0 00 00 00 48 8B 54 24 28 48 8D 48 E8 E8 8D $....H.T$(H.H...
00000000004684E0 0E FE FF 48 89 D8 E9 63 FF FF FF E9 5E FF FF FF ...H...c....^...
00000000004684F0 EB C2 EB B9 48 89 C3 48 8B 84 24 90 00 00 00 48 ....H..H..$....H
0000000000468500 8D 94 24 B0 00 00 00 48 8D 48 E8 E8 60 0E FE FF ..$....H.H..`...
0000000000468510 48 89 D8 EB 9F EB 9D 48 89 C1 E8 21 D3 00 00 E9 H......H...!....
0000000000468520 61 FF FF FF E9 1D FF FF FF 48 89 C3 48 8B 44 24 a........H..H.D$
0000000000468530 50 48 8D 94 24 B0 00 00 00 31 ED 45 31 E4 45 31 PH..$....1.E1.E1
0000000000468540 ED 48 8D 48 E8 E8 16 85 FE FF 48 89 D9 E8 EE D2 .H.H......H.....
0000000000468550 00 00 E9 FF FE FF FF E9 EA FE FF FF E9 53 FF FF .............S..
0000000000468560 FF E9 4E FF FF FF E9 42 FF FF FF E9 3D FF FF FF ..N....B....=...
0000000000468570 E9 D1 FE FF FF E9 CC FE FF FF 90 90 90 90 90 90 ................

;; fn0000000000468580: 0000000000468580
fn0000000000468580 proc
	xor	eax,eax
	test	rdx,rdx
	mov	qword ptr [rcx+10h],+0h
	mov	qword ptr [rcx+18h],+0h
	setnz	al
	xor	edx,edx
	mov	byte ptr [rcx+20h],0h
	mov	[rcx+8h],eax
	lea	rax,[00000000004976F0]                                 ; [rip+0002F148]
	mov	[rcx+24h],dx
	mov	qword ptr [rcx+28h],+0h
	mov	qword ptr [rcx+30h],+0h
	mov	[rcx],rax
	xor	eax,eax
	mov	qword ptr [rcx+38h],+0h
	mov	[rcx+22h],ax
	mov	qword ptr [rcx+40h],+0h
	mov	qword ptr [rcx+48h],+0h
	mov	qword ptr [rcx+50h],+0h
	mov	dword ptr [rcx+58h],0h
	mov	byte ptr [rcx+5Ch],0h
	mov	byte ptr [rcx+5Dh],0h
	mov	byte ptr [rcx+5Eh],0h
	mov	byte ptr [rcx+5Fh],0h
	mov	byte ptr [rcx+60h],0h
	mov	byte ptr [rcx+61h],0h
	mov	byte ptr [rcx+62h],0h
	mov	byte ptr [rcx+63h],0h
	mov	byte ptr [rcx+7Ah],0h
	ret
0000000000468611    90 90 90 90 90 90 90 90 90 90 90 90 90 90 90  ...............

;; fn0000000000468620: 0000000000468620
fn0000000000468620 proc
	xor	eax,eax
	test	rdx,rdx
	mov	qword ptr [rcx+10h],+0h
	mov	qword ptr [rcx+18h],+0h
	setnz	al
	xor	edx,edx
	mov	byte ptr [rcx+20h],0h
	mov	[rcx+8h],eax
	lea	rax,[00000000004976F0]                                 ; [rip+0002F0A8]
	mov	[rcx+24h],dx
	mov	qword ptr [rcx+28h],+0h
	mov	qword ptr [rcx+30h],+0h
	mov	[rcx],rax
	xor	eax,eax
	mov	qword ptr [rcx+38h],+0h
	mov	[rcx+22h],ax
	mov	qword ptr [rcx+40h],+0h
	mov	qword ptr [rcx+48h],+0h
	mov	qword ptr [rcx+50h],+0h
	mov	dword ptr [rcx+58h],0h
	mov	byte ptr [rcx+5Ch],0h
	mov	byte ptr [rcx+5Dh],0h
	mov	byte ptr [rcx+5Eh],0h
	mov	byte ptr [rcx+5Fh],0h
	mov	byte ptr [rcx+60h],0h
	mov	byte ptr [rcx+61h],0h
	mov	byte ptr [rcx+62h],0h
	mov	byte ptr [rcx+63h],0h
	mov	byte ptr [rcx+7Ah],0h
	ret
00000000004686B1    90 90 90 90 90 90 90 90 90 90 90 90 90 90 90  ...............

;; fn00000000004686C0: 00000000004686C0
fn00000000004686C0 proc
	push	rbx
	sub	rsp,20h
	mov	rbx,rcx
	call	4686E0h
	mov	rcx,rbx
	add	rsp,20h
	pop	rbx
	jmp	475550h
00000000004686DA                               90 90 90 90 90 90           ......

;; fn00000000004686E0: 00000000004686E0
;;   Called from:
;;     00000000004686C8 (in fn00000000004686C0)
fn00000000004686E0 proc
	push	rbx
	sub	rsp,20h
	cmp	byte ptr [rcx+7Ah],0h
	lea	rax,[00000000004976F0]                                 ; [rip+0002F000]
	mov	rbx,rcx
	mov	[rcx],rax
	jz	468730h

l00000000004686F8:
	mov	rcx,[rcx+10h]
	test	rcx,rcx
	jz	468706h

l0000000000468701:
	call	475540h

l0000000000468706:
	mov	rcx,[rbx+28h]
	test	rcx,rcx
	jz	468714h

l000000000046870F:
	call	475540h

l0000000000468714:
	mov	rcx,[rbx+38h]
	test	rcx,rcx
	jz	468722h

l000000000046871D:
	call	475540h

l0000000000468722:
	mov	rcx,[rbx+48h]
	test	rcx,rcx
	jz	468730h

l000000000046872B:
	call	475540h

l0000000000468730:
	mov	rcx,rbx
	add	rsp,20h
	pop	rbx
	jmp	46AD20h
000000000046873D                                        90 90 90              ...

;; fn0000000000468740: 0000000000468740
fn0000000000468740 proc
	push	rbx
	sub	rsp,20h
	cmp	byte ptr [rcx+7Ah],0h
	lea	rax,[00000000004976F0]                                 ; [rip+0002EFA0]
	mov	rbx,rcx
	mov	[rcx],rax
	jz	468790h

l0000000000468758:
	mov	rcx,[rcx+10h]
	test	rcx,rcx
	jz	468766h

l0000000000468761:
	call	475540h

l0000000000468766:
	mov	rcx,[rbx+28h]
	test	rcx,rcx
	jz	468774h

l000000000046876F:
	call	475540h

l0000000000468774:
	mov	rcx,[rbx+38h]
	test	rcx,rcx
	jz	468782h

l000000000046877D:
	call	475540h

l0000000000468782:
	mov	rcx,[rbx+48h]
	test	rcx,rcx
	jz	468790h

l000000000046878B:
	call	475540h

l0000000000468790:
	mov	rcx,rbx
	add	rsp,20h
	pop	rbx
	jmp	46AD20h
000000000046879D                                        90 90 90              ...

;; fn00000000004687A0: 00000000004687A0
;;   Called from:
;;     0000000000470B0A (in fn0000000000470AE0)
fn00000000004687A0 proc
	push	rbp
	push	rbx
	sub	rsp,38h
	lea	rbp,[rsp+80h]
	mov	[rbp-30h],rcx
	mov	[rbp-28h],rdx
	mov	[rbp-20h],r8
	mov	rax,[rbp-20h]
	mov	[rbp-58h],rax
	jmp	4687F5h

l00000000004687C4:
	lea	rcx,[rbp-30h]
	call	42AC90h
	mov	rbx,rax
	mov	rax,[rbp-58h]
	mov	rcx,rax
	call	46F3D0h
	mov	rdx,rbx
	mov	rcx,rax
	call	46F360h
	lea	rcx,[rbp-30h]
	call	45F370h
	add	qword ptr [rbp-58h],1h

l00000000004687F5:
	lea	rax,[rbp-28h]
	mov	rdx,rax
	lea	rcx,[rbp-30h]
	call	473E70h
	test	al,al
	jnz	4687C4h

l0000000000468809:
	mov	rax,[rbp-58h]
	jmp	468840h
000000000046880F                                              48                H
0000000000468810 89 C3 E8 59 D2 00 00 48 89 D8 48 89 C1 E8 8E 8D ...Y...H..H.....
0000000000468820 FA FF 48 89 C1 E8 16 D0 00 00 48 8B 55 A8 48 8B ..H.......H.U.H.
0000000000468830 45 E0 48 89 C1 E8 06 9B 00 00 E8 21 D8 00 00 90 E.H........!....

l0000000000468840:
	add	rsp,38h
	pop	rbx
	pop	rbp
	ret
0000000000468847                      90 90 90 90 90 90 90 90 90        .........

;; fn0000000000468850: 0000000000468850
;;   Called from:
;;     0000000000470ACA (in fn0000000000470AA0)
fn0000000000468850 proc
	push	rbp
	mov	rbp,rsp
	sub	rsp,20h
	mov	[rbp+10h],rcx
	mov	[rbp+18h],rdx
	mov	[rbp+20h],r8
	mov	rdx,[rbp+20h]
	mov	rax,[rbp+18h]
	mov	r8,rdx
	mov	rdx,rax
	mov	rcx,[rbp+10h]
	call	4719F0h
	add	rsp,20h
	pop	rbp
	ret
0000000000468881    90 90 90 90 90 90 90 90 90 90 90 90 90 90 90  ...............

;; fn0000000000468890: 0000000000468890
fn0000000000468890 proc
	push	rbx
	sub	rsp,20h
	lea	rax,[0000000000497710]                                 ; [rip+0002EE74]
	mov	rbx,rcx
	mov	[rcx],rax
	call	46E160h
	mov	rcx,rbx
	add	rsp,20h
	pop	rbx
	jmp	475550h
00000000004688B4             90 90 90 90 90 90 90 90 90 90 90 90     ............

;; fn00000000004688C0: 00000000004688C0
fn00000000004688C0 proc
	lea	rax,[0000000000497710]                                 ; [rip+0002EE49]
	mov	[rcx],rax
	jmp	46E160h
00000000004688CF                                              90                .

;; fn00000000004688D0: 00000000004688D0
;;   Called from:
;;     00000000004383CE (in fn00000000004382A0)
;;     00000000004386D2 (in fn00000000004385D0)
;;     00000000004389D1 (in fn00000000004388A0)
;;     0000000000438CD3 (in fn0000000000438BD0)
;;     0000000000439112 (in fn0000000000438F60)
;;     00000000004394AE (in fn00000000004392F0)
;;     00000000004399CE (in fn00000000004399A0)
fn00000000004688D0 proc
	push	r13
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,28h
	mov	eax,[rcx+18h]
	mov	r13,[rsp+88h]
	mov	rbp,[rsp+80h]
	mov	esi,edx
	mov	rbx,r8
	mov	r12,r9
	and	eax,0B0h
	sub	rbp,r13
	cmp	eax,20h
	jz	4689A5h

l0000000000468908:
	xor	edi,edi
	cmp	eax,10h
	jz	468940h

l000000000046890F:
	movsx	edx,sil
	mov	r8,rbp
	mov	rcx,rbx
	call	41BD88h
	mov	r8,r13
	lea	rcx,[rbx+rbp]
	lea	rdx,[r12+rdi]
	sub	r8,rdi
	add	rsp,28h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	jmp	41BCC0h
000000000046893D                                        0F 1F 00              ...

l0000000000468940:
	add	rcx,+0D0h
	call	472FC0h
	cmp	byte ptr [rax+38h],0h
	mov	rdi,rax
	jz	4689F0h

l0000000000468959:
	movzx	edx,byte ptr [r12]
	cmp	dl,[rax+66h]
	jz	468995h

l0000000000468963:
	cmp	[rdi+64h],dl
	jz	468995h

l0000000000468968:
	cmp	[rdi+69h],dl
	jnz	46898Ch

l000000000046896D:
	cmp	r13,1h
	jle	46898Ch

l0000000000468973:
	movzx	eax,byte ptr [r12+1h]
	cmp	[rdi+0B1h],al
	jz	4689D0h

l0000000000468981:
	movzx	edx,byte ptr [rdi+91h]

l0000000000468988:
	cmp	al,dl
	jz	4689D0h

l000000000046898C:
	xor	edi,edi
	jmp	46890Fh

l0000000000468993:
	mov	edx,eax

l0000000000468995:
	mov	[rbx],dl
	mov	edi,1h
	add	rbx,1h
	jmp	46890Fh

l00000000004689A5:
	mov	r8,r13
	mov	rdx,r9
	mov	rcx,rbx
	call	41BCC0h
	lea	rcx,[rbx+r13]
	movsx	edx,sil
	mov	r8,rbp
	add	rsp,28h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	jmp	41BD88h
00000000004689CF                                              90                .

l00000000004689D0:
	movzx	eax,byte ptr [r12]
	add	rbx,2h
	mov	edi,2h
	mov	[rbx-2h],al
	movzx	eax,byte ptr [r12+1h]
	mov	[rbx-1h],al
	jmp	46890Fh
00000000004689EF                                              90                .

l00000000004689F0:
	mov	rcx,rax
	call	42B320h
	mov	rax,[rdi]
	lea	rdx,[000000000042B5F0]                                 ; [rip+FFFC2BEE]
	mov	r8,[rax+30h]
	mov	eax,2Dh
	cmp	r8,rdx
	jnz	468ABBh

l0000000000468A14:
	movzx	edx,byte ptr [r12]
	cmp	dl,al
	jz	468993h

l0000000000468A21:
	cmp	byte ptr [rdi+38h],0h
	jnz	468963h

l0000000000468A2B:
	mov	edx,2Bh
	mov	rcx,rdi
	call	42B590h
	movzx	edx,byte ptr [r12]
	cmp	dl,al
	jz	468995h

l0000000000468A45:
	cmp	byte ptr [rdi+38h],0h
	jnz	468968h

l0000000000468A4F:
	mov	edx,30h
	mov	rcx,rdi
	call	42B590h
	cmp	[r12],al
	jnz	46898Ch

l0000000000468A66:
	cmp	r13,1h
	jle	46898Ch

l0000000000468A70:
	cmp	byte ptr [rdi+38h],0h
	jnz	468973h

l0000000000468A7A:
	mov	edx,78h
	mov	rcx,rdi
	call	42B590h
	mov	edx,eax
	movzx	eax,byte ptr [r12+1h]
	cmp	al,dl
	jz	4689D0h

l0000000000468A97:
	cmp	byte ptr [rdi+38h],0h
	jnz	468981h

l0000000000468AA1:
	mov	edx,58h
	mov	rcx,rdi
	call	42B590h
	mov	edx,eax
	movzx	eax,byte ptr [r12+1h]
	jmp	468988h

l0000000000468ABB:
	mov	edx,2Dh
	mov	rcx,rdi
	call	r8
	jmp	468A14h
0000000000468ACB                                  90 90 90 90 90            .....

;; fn0000000000468AD0: 0000000000468AD0
;;   Called from:
;;     000000000043A09D (in fn0000000000439F70)
;;     000000000043A3B2 (in fn000000000043A2B0)
;;     000000000043A6C3 (in fn000000000043A590)
;;     000000000043A9D6 (in fn000000000043A8D0)
;;     000000000043AE2B (in fn000000000043AC90)
;;     000000000043B217 (in fn000000000043B070)
;;     000000000043B7AE (in fn000000000043B780)
fn0000000000468AD0 proc
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,30h
	mov	eax,[rcx+18h]
	mov	rbp,[rsp+88h]
	mov	rbx,[rsp+80h]
	mov	rdi,r8
	mov	esi,edx
	and	eax,0B0h
	sub	rbx,rbp
	cmp	eax,20h
	jz	468B40h

l0000000000468AFF:
	xor	r10d,r10d
	xor	edx,edx
	cmp	eax,10h
	jz	468B80h

l0000000000468B09:
	xor	eax,eax
	test	rbx,rbx
	jz	468B1Dh

l0000000000468B10:
	mov	[rdi+rax*2],si
	add	rax,1h
	cmp	rbx,rax
	jnz	468B10h

l0000000000468B1D:
	mov	r8,rbp
	lea	rcx,[rdi+rbx*2]
	sub	r8,rdx
	lea	rdx,[r9+r10]
	add	r8,r8
	add	rsp,30h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	jmp	41BCC0h
0000000000468B3D                                        0F 1F 00              ...

l0000000000468B40:
	add	rbp,rbp
	mov	rcx,rdi
	mov	rdx,r9
	mov	r8,rbp
	add	rdi,rbp
	call	41BCC0h
	xor	eax,eax
	test	rbx,rbx
	jz	468B6Dh

l0000000000468B5B:
	nop	dword ptr [rax+rax+0h]

l0000000000468B60:
	mov	[rdi+rax*2],si
	add	rax,1h
	cmp	rbx,rax
	jnz	468B60h

l0000000000468B6D:
	add	rsp,30h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
0000000000468B78                         0F 1F 84 00 00 00 00 00         ........

l0000000000468B80:
	add	rcx,+0D0h
	mov	[rsp+28h],r9
	call	473020h
	mov	r12,rax
	mov	rax,[rax]
	mov	edx,2Dh
	mov	rcx,r12
	call	qword ptr [rax+50h]
	mov	r9,[rsp+28h]
	cmp	[r9],ax
	jz	468C35h

l0000000000468BB1:
	mov	rax,[r12]
	mov	edx,2Bh
	mov	rcx,r12
	call	qword ptr [rax+50h]
	mov	r9,[rsp+28h]
	cmp	[r9],ax
	jz	468C35h

l0000000000468BCB:
	mov	rax,[r12]
	mov	[rsp+28h],r9
	mov	edx,30h
	mov	rcx,r12
	call	qword ptr [rax+50h]
	mov	r9,[rsp+28h]
	cmp	[r9],ax
	jnz	468C2Bh

l0000000000468BEA:
	cmp	rbp,1h
	jle	468C2Bh

l0000000000468BF0:
	mov	rax,[r12]
	mov	[rsp+28h],r9
	mov	edx,78h
	mov	rcx,r12
	call	qword ptr [rax+50h]
	mov	r9,[rsp+28h]
	cmp	[r9+2h],ax
	jz	468C4Ch

l0000000000468C10:
	mov	rax,[r12]
	mov	edx,58h
	mov	rcx,r12
	call	qword ptr [rax+50h]
	mov	r9,[rsp+28h]
	cmp	[r9+2h],ax
	jz	468C4Ch

l0000000000468C2B:
	xor	r10d,r10d
	xor	edx,edx
	jmp	468B09h

l0000000000468C35:
	mov	[rdi],ax
	mov	r10d,2h
	add	rdi,2h
	mov	edx,1h
	jmp	468B09h

l0000000000468C4C:
	movzx	eax,word ptr [r9]
	add	rdi,4h
	mov	r10d,4h
	mov	edx,2h
	mov	[rdi-4h],ax
	movzx	eax,word ptr [r9+2h]
	mov	[rdi-2h],ax
	jmp	468B09h
0000000000468C71    90 90 90 90 90 90 90 90 90 90 90 90 90 90 90  ...............

;; fn0000000000468C80: 0000000000468C80
fn0000000000468C80 proc
	lea	rax,[0000000000498340]                                 ; [rip+0002F6B9]
	ret
0000000000468C88                         90 90 90 90 90 90 90 90         ........

;; fn0000000000468C90: 0000000000468C90
;;   Called from:
;;     00000000004550D0 (in fn00000000004550B0)
;;     0000000000469AA5 (in fn00000000004699E0)
fn0000000000468C90 proc
	push	rdi
	xor	eax,eax
	test	r9,r9
	lea	rdi,[rcx+41h]
	mov	qword ptr [rcx+20h],+0h
	setnz	al
	mov	qword ptr [rcx+28h],+0h
	mov	qword ptr [rcx+39h],+0h
	mov	[rcx+8h],eax
	mov	rax,[0000000000491D30]                                 ; [rip+00029071]
	mov	r10,rcx
	mov	qword ptr [rcx+131h],+0h
	add	rax,10h
	test	rdx,rdx
	mov	[rcx],rax
	setnz	al
	and	r8d,eax
	lea	rax,[0000000000498340]                                 ; [rip+0002F65C]
	test	rdx,rdx
	mov	[rcx+18h],r8b
	cmovz	rdx,rax

l0000000000468CEF:
	and	rdi,0F8h
	xor	eax,eax
	mov	[rcx+30h],rdx
	lea	rdx,[rcx+141h]
	sub	ecx,edi
	add	ecx,139h
	shr	ecx,3h

l0000000000468D0B:
	rep stosq

l0000000000468D0E:
	mov	rdi,rdx
	mov	edx,r10d
	mov	byte ptr [r10+38h],0h
	and	rdi,0F8h
	mov	qword ptr [r10+139h],+0h
	mov	qword ptr [r10+231h],+0h
	sub	edx,edi
	lea	ecx,[rdx+239h]
	shr	ecx,3h

l0000000000468D3E:
	rep stosq

l0000000000468D41:
	mov	byte ptr [r10+239h],0h
	pop	rdi
	ret
0000000000468D4B                                  90 90 90 90 90            .....

;; fn0000000000468D50: 0000000000468D50
fn0000000000468D50 proc
	push	rdi
	xor	eax,eax
	cmp	qword ptr [rsp+30h],0h
	lea	rdi,[rcx+41h]
	mov	qword ptr [rcx+20h],+0h
	mov	qword ptr [rcx+28h],+0h
	mov	qword ptr [rcx+39h],+0h
	mov	qword ptr [rcx+131h],+0h
	mov	rdx,rcx
	setnz	al
	mov	[rcx+8h],eax
	mov	rax,[0000000000491D30]                                 ; [rip+00028FA0]
	add	rax,10h
	test	r8,r8
	mov	[rcx],rax
	setnz	al
	and	r9d,eax
	lea	rax,[0000000000498340]                                 ; [rip+0002F599]
	test	r8,r8
	mov	[rcx+18h],r9b
	cmovz	r8,rax

l0000000000468DB2:
	and	rdi,0F8h
	xor	eax,eax
	mov	[rcx+30h],r8
	lea	r8,[rcx+141h]
	sub	ecx,edi
	add	ecx,139h
	shr	ecx,3h

l0000000000468DCE:
	rep stosq

l0000000000468DD1:
	mov	rdi,r8
	mov	ecx,edx
	mov	byte ptr [rdx+38h],0h
	and	rdi,0F8h
	mov	qword ptr [rdx+139h],+0h
	mov	qword ptr [rdx+231h],+0h
	sub	ecx,edi
	add	ecx,239h
	shr	ecx,3h

l0000000000468DFF:
	rep stosq

l0000000000468E02:
	mov	byte ptr [rdx+239h],0h
	pop	rdi
	ret
0000000000468E0B                                  90 90 90 90 90            .....

;; fn0000000000468E10: 0000000000468E10
fn0000000000468E10 proc
	push	rbx
	sub	rsp,20h
	mov	rbx,rcx
	call	468E30h
	mov	rcx,rbx
	add	rsp,20h
	pop	rbx
	jmp	475550h
0000000000468E2A                               90 90 90 90 90 90           ......

;; fn0000000000468E30: 0000000000468E30
;;   Called from:
;;     0000000000455152 (in fn0000000000455140)
;;     000000000045517A (in fn0000000000455170)
;;     0000000000468E18 (in fn0000000000468E10)
fn0000000000468E30 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	lea	rax,[0000000000497950]                                 ; [rip+0002EB13]
	mov	rbx,rcx
	lea	rcx,[rcx+10h]
	mov	[rcx-10h],rax
	call	46ACF0h
	cmp	byte ptr [rbx+18h],0h
	jz	468E61h

l0000000000468E53:
	mov	rcx,[rbx+30h]
	test	rcx,rcx
	jz	468E61h

l0000000000468E5C:
	call	475540h

l0000000000468E61:
	mov	rcx,rbx
	add	rsp,28h
	pop	rbx
	pop	rsi
	jmp	46AD20h
0000000000468E6F                                              48                H
0000000000468E70 89 C6 48 89 D9 E8 A6 1E 00 00 48 89 F1 E8 2E 87 ..H.......H.....
0000000000468E80 FA FF 90 90 90 90 90 90 90 90 90 90 90 90 90 90 ................

;; fn0000000000468E90: 0000000000468E90
;;   Called from:
;;     00000000004551F5 (in fn0000000000455180)
;;     0000000000468F67 (in fn0000000000468F30)
;;     0000000000468FB4 (in fn0000000000468F80)
fn0000000000468E90 proc
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,20h
	xor	ebx,ebx
	mov	rsi,rcx
	jmp	468EB1h
0000000000468E9E                                           66 90               f.

l0000000000468EA0:
	mov	[rsi+rbx+19h],al
	add	rbx,1h
	cmp	rbx,+80h
	jz	468F20h

l0000000000468EB1:
	mov	ecx,ebx
	call	412B10h
	cmp	eax,0FFh
	jnz	468EA0h

l0000000000468EBD:
	mov	byte ptr [rsi+18h],0h

l0000000000468EC1:
	xor	ebx,ebx

l0000000000468EC3:
	mov	ecx,ebx
	call	412B90h
	mov	[rsi+rbx*2+9Ah],ax
	add	rbx,1h
	cmp	rbx,+100h
	jnz	468EC3h

l0000000000468EDF:
	xor	bx,bx
	mov	edi,1h
	nop	word ptr [rax+rax+0h]

l0000000000468EF0:
	mov	ecx,ebx
	mov	edx,edi
	shl	edx,cl
	mov	rcx,rsi
	mov	[rsi+rbx*2+29Ah],dx
	call	42B7B0h
	mov	[rsi+rbx*2+2BAh],ax
	add	rbx,1h
	cmp	rbx,10h
	jnz	468EF0h

l0000000000468F18:
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	ret

l0000000000468F20:
	mov	byte ptr [rsi+18h],1h
	jmp	468EC1h
0000000000468F26                   90 90 90 90 90 90 90 90 90 90       ..........

;; fn0000000000468F30: 0000000000468F30
fn0000000000468F30 proc
	push	rbx
	sub	rsp,20h
	xor	eax,eax
	test	r8,r8
	mov	rbx,rcx
	mov	[rsp+38h],rdx
	setnz	al
	mov	[rcx+8h],eax
	lea	rax,[00000000004979D0]                                 ; [rip+0002EA81]
	mov	[rcx],rax
	lea	rcx,[rsp+38h]
	call	46AC80h
	mov	byte ptr [rbx+18h],0h
	mov	[rbx+10h],rax
	mov	rcx,rbx
	call	468E90h
	nop
	add	rsp,20h
	pop	rbx
	ret
0000000000468F73          90 90 90 90 90 90 90 90 90 90 90 90 90    .............

;; fn0000000000468F80: 0000000000468F80
;;   Called from:
;;     0000000000455198 (in fn0000000000455180)
;;     000000000046A1E9 (in fn00000000004699E0)
fn0000000000468F80 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	xor	eax,eax
	test	rdx,rdx
	mov	rbx,rcx
	setnz	al
	mov	[rcx+8h],eax
	lea	rax,[00000000004979D0]                                 ; [rip+0002EA35]
	mov	[rcx],rax
	call	46AC50h
	mov	rcx,rbx
	mov	[rbx+10h],rax
	mov	byte ptr [rbx+18h],0h
	add	rsp,28h
	pop	rbx
	pop	rsi
	jmp	468E90h
0000000000468FB9                            48 89 C6 48 8B 05 3D          H..H..=
0000000000468FC0 8D 02 00 48 89 D9 48 8D 50 10 48 89 13 E8 4E 1D ...H..H.P.H...N.
0000000000468FD0 00 00 48 89 F1 E8 D6 85 FA FF 90 90 90 90 90 90 ..H.............

;; fn0000000000468FE0: 0000000000468FE0
fn0000000000468FE0 proc
	push	rbx
	sub	rsp,20h
	mov	rbx,rcx
	call	469000h
	mov	rcx,rbx
	add	rsp,20h
	pop	rbx
	jmp	475550h
0000000000468FFA                               90 90 90 90 90 90           ......

;; fn0000000000469000: 0000000000469000
;;   Called from:
;;     0000000000455222 (in fn0000000000455210)
;;     000000000045524A (in fn0000000000455240)
;;     0000000000468FE8 (in fn0000000000468FE0)
fn0000000000469000 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	lea	rax,[00000000004979D0]                                 ; [rip+0002E9C3]
	mov	rbx,rcx
	lea	rcx,[rcx+10h]
	mov	[rcx-10h],rax
	call	46ACF0h
	mov	rax,[0000000000491D00]                                 ; [rip+00028CDC]
	mov	rcx,rbx
	add	rax,10h
	mov	[rbx],rax
	add	rsp,28h
	pop	rbx
	pop	rsi
	jmp	46AD20h
0000000000469039                            48 89 C6 48 8B 05 BD          H..H...
0000000000469040 8C 02 00 48 89 D9 48 8D 50 10 48 89 13 E8 CE 1C ...H..H.P.H.....
0000000000469050 00 00 48 89 F1 E8 56 85 FA FF 90 90 90 90 90 90 ..H...V.........

;; fn0000000000469060: 0000000000469060
;;   Called from:
;;     0000000000454984 (in fn0000000000454950)
fn0000000000469060 proc
	push	rbp
	mov	rbp,rsp
	sub	rsp,20h
	mov	[rbp+10h],rcx
	mov	rcx,[rbp+10h]
	call	4690C0h
	add	rsp,20h
	pop	rbp
	ret
000000000046907B                                  90 90 90 90 90            .....

;; fn0000000000469080: 0000000000469080
;;   Called from:
;;     00000000004691F7 (in fn00000000004691E0)
fn0000000000469080 proc
	push	rbp
	mov	rbp,rsp
	sub	rsp,20h
	mov	[rbp+10h],rcx
	mov	rcx,[rbp+10h]
	call	469100h
	add	rsp,20h
	pop	rbp
	ret
000000000046909B                                  90 90 90 90 90            .....

;; fn00000000004690A0: 00000000004690A0
;;   Called from:
;;     0000000000454960 (in fn0000000000454950)
fn00000000004690A0 proc
	push	rbp
	mov	rbp,rsp
	sub	rsp,20h
	mov	[rbp+10h],rcx
	mov	rcx,[rbp+10h]
	call	469140h
	add	rsp,20h
	pop	rbp
	ret
00000000004690BB                                  90 90 90 90 90            .....

;; fn00000000004690C0: 00000000004690C0
;;   Called from:
;;     0000000000469070 (in fn0000000000469060)
fn00000000004690C0 proc
	push	rbp
	mov	rbp,rsp
	sub	rsp,30h
	mov	[rbp+10h],rcx
	mov	rcx,[rbp+10h]
	call	42BB40h
	imul	rax,rax,+0F4240h
	mov	[rbp-8h],rax
	lea	rdx,[rbp-8h]
	lea	rax,[rbp-10h]
	mov	rcx,rax
	call	4691A0h
	mov	rax,[rbp-10h]
	add	rsp,30h
	pop	rbp
	ret
00000000004690FA                               90 90 90 90 90 90           ......

;; fn0000000000469100: 0000000000469100
;;   Called from:
;;     0000000000469090 (in fn0000000000469080)
fn0000000000469100 proc
	push	rbp
	mov	rbp,rsp
	sub	rsp,30h
	mov	[rbp+10h],rcx
	mov	rcx,[rbp+10h]
	call	42BB60h
	imul	rax,rax,+3E8h
	mov	[rbp-8h],rax
	lea	rdx,[rbp-8h]
	lea	rax,[rbp-10h]
	mov	rcx,rax
	call	469220h
	mov	rax,[rbp-10h]
	add	rsp,30h
	pop	rbp
	ret
000000000046913A                               90 90 90 90 90 90           ......

;; fn0000000000469140: 0000000000469140
;;   Called from:
;;     00000000004690B0 (in fn00000000004690A0)
fn0000000000469140 proc
	push	rbp
	mov	rbp,rsp
	sub	rsp,30h
	mov	[rbp+10h],rcx
	mov	rcx,[rbp+10h]
	call	42BB40h
	mov	rcx,rax
	mov	rdx,20C49BA5E353F7CFh
	mov	rax,rcx
	imul	rdx
	sar	rdx,7h
	mov	rax,rcx
	sar	rax,3Fh
	sub	rdx,rax
	mov	rax,rdx
	mov	[rbp-8h],rax
	lea	rdx,[rbp-8h]
	lea	rax,[rbp-10h]
	mov	rcx,rax
	call	469240h
	mov	rax,[rbp-10h]
	add	rsp,30h
	pop	rbp
	ret
0000000000469197                      90 90 90 90 90 90 90 90 90        .........

;; fn00000000004691A0: 00000000004691A0
;;   Called from:
;;     00000000004690EB (in fn00000000004690C0)
fn00000000004691A0 proc
	push	rbp
	mov	rbp,rsp
	mov	[rbp+10h],rcx
	mov	[rbp+18h],rdx
	mov	rax,[rbp+18h]
	mov	rdx,[rax]
	mov	rax,[rbp+10h]
	mov	[rax],rdx
	pop	rbp
	ret
00000000004691BC                                     90 90 90 90             ....

;; fn00000000004691C0: 00000000004691C0
;;   Called from:
;;     0000000000401D4C (in fn0000000000401530)
;;     0000000000401E09 (in fn0000000000401530)
fn00000000004691C0 proc
	push	rbp
	mov	rbp,rsp
	mov	[rbp+10h],rcx
	mov	[rbp+18h],rdx
	mov	rax,[rbp+18h]
	mov	eax,[rax]
	movsxd	rdx,eax
	mov	rax,[rbp+10h]
	mov	[rax],rdx
	pop	rbp
	ret
00000000004691DE                                           90 90               ..

;; fn00000000004691E0: 00000000004691E0
;;   Called from:
;;     000000000046929B (in fn0000000000469260)
fn00000000004691E0 proc
	push	rbp
	mov	rbp,rsp
	sub	rsp,30h
	mov	[rbp+10h],rcx
	mov	[rbp+18h],rdx
	mov	rax,[rbp+18h]
	mov	rcx,rax
	call	469080h
	mov	[rbp-10h],rax
	lea	rax,[rbp-10h]
	mov	rcx,rax
	call	42BB40h
	mov	rdx,rax
	mov	rax,[rbp+10h]
	mov	[rax],rdx
	add	rsp,30h
	pop	rbp
	ret
000000000046921C                                     90 90 90 90             ....

;; fn0000000000469220: 0000000000469220
;;   Called from:
;;     000000000046912B (in fn0000000000469100)
;;     00000000004692C1 (in fn0000000000469260)
fn0000000000469220 proc
	push	rbp
	mov	rbp,rsp
	mov	[rbp+10h],rcx
	mov	[rbp+18h],rdx
	mov	rax,[rbp+18h]
	mov	rdx,[rax]
	mov	rax,[rbp+10h]
	mov	[rax],rdx
	pop	rbp
	ret
000000000046923C                                     90 90 90 90             ....

;; fn0000000000469240: 0000000000469240
;;   Called from:
;;     0000000000469188 (in fn0000000000469140)
fn0000000000469240 proc
	push	rbp
	mov	rbp,rsp
	mov	[rbp+10h],rcx
	mov	[rbp+18h],rdx
	mov	rax,[rbp+18h]
	mov	rdx,[rax]
	mov	rax,[rbp+10h]
	mov	[rax],rdx
	pop	rbp
	ret
000000000046925C                                     90 90 90 90             ....

;; fn0000000000469260: 0000000000469260
;;   Called from:
;;     0000000000454974 (in fn0000000000454950)
fn0000000000469260 proc
	push	rbp
	push	rbx
	sub	rsp,58h
	lea	rbp,[rsp+80h]
	mov	[rbp-10h],rcx
	mov	[rbp-8h],rdx
	mov	rax,[rbp-10h]
	mov	rax,[rax]
	mov	[rbp-50h],rax
	lea	rax,[rbp-50h]
	mov	rcx,rax
	call	42BB40h
	mov	rbx,rax
	mov	rdx,[rbp-8h]
	lea	rax,[rbp-40h]
	mov	rcx,rax
	call	4691E0h
	lea	rax,[rbp-40h]
	mov	rcx,rax
	call	42BB40h
	sub	rbx,rax
	mov	rax,rbx
	mov	[rbp-58h],rax
	lea	rdx,[rbp-58h]
	lea	rax,[rbp-60h]
	mov	rcx,rax
	call	469220h
	mov	rax,[rbp-60h]
	add	rsp,58h
	pop	rbx
	pop	rbp
	ret
00000000004692D1    90 90 90 90 90 90 90 90 90 90 90 90 90 90 90  ...............

;; fn00000000004692E0: 00000000004692E0
;;   Called from:
;;     000000000046AD40 (in fn000000000046AD30)
;;     000000000046AE44 (in fn000000000046AE40)
;;     000000000046AEA1 (in fn000000000046AE90)
fn00000000004692E0 proc
	push	rbx
	sub	rsp,20h
	mov	rcx,[00000000004918F0]                                 ; [rip+00028604]
	lea	rdx,[0000000000469350]                                 ; [rip+0000005D]
	call	41DEE0h
	mov	rbx,[00000000004918D0]                                 ; [rip+000285D1]
	cmp	qword ptr [rbx],0h
	jz	469310h

l0000000000469305:
	add	rsp,20h
	pop	rbx
	ret
000000000046930B                                  0F 1F 44 00 00            ..D..

l0000000000469310:
	lea	rcx,[0000000000489960]                                 ; [rip+00020649]
	mov	edx,2h
	call	4699E0h
	lea	rax,[0000000000489960]                                 ; [rip+00020638]
	lea	rdx,[0000000000489960]                                 ; [rip+00020631]
	mov	[rbx],rax
	mov	rax,[0000000000491900]                                 ; [rip+000285C7]
	mov	[rax],rdx
	add	rsp,20h
	pop	rbx
	ret
0000000000469342       90 90 90 90 90 90 90 90 90 90 90 90 90 90   ..............

;; fn0000000000469350: 0000000000469350
fn0000000000469350 proc
	sub	rsp,28h
	lea	rcx,[0000000000489960]                                 ; [rip+00020605]
	mov	edx,2h
	call	4699E0h
	mov	rdx,[00000000004918D0]                                 ; [rip+00028564]
	lea	rax,[0000000000489960]                                 ; [rip+000205ED]
	mov	[rdx],rax
	mov	rdx,[0000000000491900]                                 ; [rip+00028583]
	mov	[rdx],rax
	add	rsp,28h
	ret
0000000000469385                90 90 90 90 90 90 90 90 90 90 90      ...........

;; fn0000000000469390: 0000000000469390
fn0000000000469390 proc
	sub	rsp,28h
	test	ecx,ecx
	jz	4693C0h

l0000000000469398:
	test	cl,3Fh
	jnz	4693D0h

l000000000046939D:
	cmp	ecx,5h
	ja	469420h

l00000000004693A2:
	lea	rax,[000000000048D934]                                 ; [rip+0002458B]
	mov	ecx,ecx
	movsxd	rdx,dword ptr [rax+rcx*4]
	add	rax,rdx
	jmp	rax

l00000000004693B4:
	mov	ecx,4h
	nop	dword ptr [rax+0h]

l00000000004693C0:
	mov	eax,ecx
	add	rsp,28h
	ret
00000000004693C7                      66 0F 1F 84 00 00 00 00 00        f........

l00000000004693D0:
	test	ecx,0FFFFFFC0h
	jnz	46939Dh

l00000000004693D8:
	mov	eax,ecx
	add	rsp,28h
	ret
00000000004693DF                                              90                .

l00000000004693E0:
	mov	ecx,8h
	jmp	4693C0h
00000000004693E7                      66 0F 1F 84 00 00 00 00 00        f........

l00000000004693F0:
	mov	ecx,2h
	jmp	4693C0h
00000000004693F7                      66 0F 1F 84 00 00 00 00 00        f........

l0000000000469400:
	mov	ecx,10h
	jmp	4693C0h
0000000000469407                      66 0F 1F 84 00 00 00 00 00        f........

l0000000000469410:
	mov	ecx,1h
	jmp	4693C0h
0000000000469417                      66 0F 1F 84 00 00 00 00 00        f........

l0000000000469420:
	lea	rcx,[000000000048D900]                                 ; [rip+000244D9]
	call	4712A0h
	nop
	nop
	nop
	nop

;; fn0000000000469430: 0000000000469430
;;   Called from:
;;     000000000042A416 (in fn000000000042A360)
;;     000000000042A51A (in fn000000000042A460)
;;     000000000042A649 (in fn000000000042A560)
;;     000000000042A779 (in fn000000000042A690)
;;     000000000042A8AD (in fn000000000042A7C0)
;;     000000000042A9DD (in fn000000000042A8F0)
;;     0000000000438575 (in fn00000000004382A0)
;;     000000000043884D (in fn00000000004385D0)
;;     0000000000438B75 (in fn00000000004388A0)
;;     0000000000438E4D (in fn0000000000438BD0)
;;     0000000000439D22 (in fn0000000000439A70)
;;     000000000043A25C (in fn0000000000439F70)
;;     000000000043A536 (in fn000000000043A2B0)
;;     000000000043A87A (in fn000000000043A590)
;;     000000000043AB64 (in fn000000000043A8D0)
;;     000000000043B023 (in fn000000000043AC90)
;;     000000000043B416 (in fn000000000043B070)
;;     000000000043BB14 (in fn000000000043B850)
;;     00000000004471E8 (in fn0000000000446BF0)
;;     00000000004478C8 (in fn00000000004472D0)
;;     00000000004483B5 (in fn0000000000447CD0)
;;     0000000000448BA5 (in fn00000000004484C0)
;;     000000000046942F (in fn0000000000469390)
fn0000000000469430 proc
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,20h
	cmp	[0000000000477330],0h                                  ; [rip+0000DEF2]
	mov	rdi,rcx
	mov	rbx,rdx
	mov	rsi,r8
	jz	469490h

l0000000000469449:
	lea	rcx,[000000000048C070]                                 ; [rip+00022C20]
	call	4208F0h
	test	eax,eax
	jnz	4694F2h

l000000000046945D:
	mov	rax,[rdi+18h]
	cmp	qword ptr [rax+rsi*8],0h
	jz	4694D0h

l0000000000469468:
	test	rbx,rbx
	jz	469476h

l000000000046946D:
	mov	rax,[rbx]
	mov	rcx,rbx
	call	qword ptr [rax+8h]

l0000000000469476:
	lea	rcx,[000000000048C070]                                 ; [rip+00022BF3]
	call	4202A0h
	test	eax,eax
	jnz	4694DFh

l0000000000469486:
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	ret
000000000046948E                                           66 90               f.

l0000000000469490:
	lea	rcx,[0000000000477330]                                 ; [rip+0000DE99]
	call	475E80h
	test	eax,eax
	jz	469449h

l00000000004694A0:
	lea	rcx,[000000000048C070]                                 ; [rip+00022BC9]
	xor	edx,edx
	call	420360h
	lea	rcx,[0000000000477330]                                 ; [rip+0000DE7B]
	call	475F80h
	lea	rcx,[0000000000476340]                                 ; [rip+0000CE7F]
	call	410BF0h
	jmp	469449h
00000000004694C8                         0F 1F 84 00 00 00 00 00         ........

l00000000004694D0:
	lock
	add	dword ptr [rbx+8h],1h
	mov	rax,[rdi+18h]
	mov	[rax+rsi*8],rbx
	jmp	469476h

l00000000004694DF:
	call	426270h

l00000000004694E4:
	add	rdx,1h
	mov	rcx,rax
	jz	46954Eh

l00000000004694ED:
	call	4115B0h

l00000000004694F2:
	mov	ecx,8h
	call	4756E0h
	lea	rdx,[0000000000495E10]                                 ; [rip+0002C90D]
	lea	r8,[0000000000425E50]                                  ; [rip+FFFBC946]
	mov	rcx,rax
	mov	[rax],rdx
	lea	rdx,[0000000000493120]                                 ; [rip+00029C09]
	call	4760B0h
	lea	rcx,[0000000000477330]                                 ; [rip+0000DE0D]
	mov	rbx,rax
	call	475DE0h
	mov	rcx,rbx
	call	4115B0h
	lea	rcx,[000000000048C070]                                 ; [rip+00022B36]
	mov	rbx,rax
	call	4202A0h
	test	eax,eax
	mov	rcx,rbx
	jz	4694EDh

l0000000000469549:
	call	426270h

l000000000046954E:
	call	475910h
	jmp	4694E4h
0000000000469555                90 90 90 90 90 90 90 90 90 90 90      ...........

;; fn0000000000469560: 0000000000469560
;;   Called from:
;;     00000000004697CF (in fn0000000000469790)
;;     0000000000469ABB (in fn00000000004699E0)
;;     0000000000469AE2 (in fn00000000004699E0)
;;     0000000000469BAA (in fn00000000004699E0)
;;     0000000000469BDC (in fn00000000004699E0)
;;     0000000000469C0E (in fn00000000004699E0)
;;     0000000000469C4C (in fn00000000004699E0)
;;     0000000000469D6F (in fn00000000004699E0)
;;     0000000000469E92 (in fn00000000004699E0)
;;     0000000000469EC4 (in fn00000000004699E0)
;;     0000000000469EF6 (in fn00000000004699E0)
;;     000000000046A14D (in fn00000000004699E0)
;;     000000000046A17F (in fn00000000004699E0)
;;     000000000046A1B1 (in fn00000000004699E0)
;;     000000000046A1D8 (in fn00000000004699E0)
;;     000000000046A1FF (in fn00000000004699E0)
;;     000000000046A226 (in fn00000000004699E0)
;;     000000000046A2F6 (in fn00000000004699E0)
;;     000000000046A328 (in fn00000000004699E0)
;;     000000000046A35A (in fn00000000004699E0)
;;     000000000046A398 (in fn00000000004699E0)
;;     000000000046A4C1 (in fn00000000004699E0)
;;     000000000046A5E8 (in fn00000000004699E0)
;;     000000000046A61A (in fn00000000004699E0)
;;     000000000046A64C (in fn00000000004699E0)
;;     000000000046A8A3 (in fn00000000004699E0)
;;     000000000046A8D5 (in fn00000000004699E0)
;;     000000000046A907 (in fn00000000004699E0)
;;     000000000046A92E (in fn00000000004699E0)
fn0000000000469560 proc
	push	r14
	push	r13
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,20h
	test	r8,r8
	jz	469710h

l0000000000469577:
	mov	rbx,rcx
	mov	rcx,rdx
	mov	rbp,r8
	call	42BB80h
	mov	r12,rax
	mov	rax,[rbx+10h]
	sub	rax,1h
	cmp	r12,rax
	jbe	4696A7h

l0000000000469599:
	lea	rsi,[r12+4h]
	mov	rdx,0FE0000000000000h
	mov	rcx,-1h
	mov	r13,[rbx+8h]
	lea	rax,[0000h+rsi*8]
	cmp	rsi,rdx
	cmovbe	rcx,rax

l00000000004695C2:
	call	475560h
	mov	rdi,rax
	mov	rax,[rbx+10h]
	test	rax,rax
	jz	4695F5h

l00000000004695D3:
	lea	r8,[0000h+rax*8]
	xor	edx,edx
	nop	dword ptr [rax]

l00000000004695E0:
	mov	rcx,[rbx+8h]
	mov	rcx,[rcx+rdx]
	mov	[rdi+rdx],rcx
	add	rdx,8h
	cmp	rdx,r8
	jnz	4695E0h

l00000000004695F5:
	cmp	rsi,rax
	jbe	469611h

l00000000004695FA:
	nop	word ptr [rax+rax+0h]

l0000000000469600:
	mov	qword ptr [rdi+rax*8],+0h
	add	rax,1h
	cmp	rsi,rax
	jnz	469600h

l0000000000469611:
	lea	rax,[0000h+rsi*8]
	mov	rdx,0FE0000000000000h
	mov	rcx,-1h
	cmp	rsi,rdx
	mov	r14,[rbx+18h]
	cmovbe	rcx,rax

l0000000000469635:
	call	475560h
	mov	rcx,[rbx+10h]
	test	rcx,rcx
	jz	469665h

l0000000000469643:
	lea	r9,[0000h+rcx*8]
	xor	edx,edx
	nop	dword ptr [rax]

l0000000000469650:
	mov	r8,[rbx+18h]
	mov	r8,[r8+rdx]
	mov	[rax+rdx],r8
	add	rdx,8h
	cmp	rdx,r9
	jnz	469650h

l0000000000469665:
	cmp	rsi,rcx
	jbe	469681h

l000000000046966A:
	nop	word ptr [rax+rax+0h]

l0000000000469670:
	mov	qword ptr [rax+rcx*8],+0h
	add	rcx,1h
	cmp	rsi,rcx
	jnz	469670h

l0000000000469681:
	test	r13,r13
	mov	[rbx+10h],rsi
	mov	[rbx+8h],rdi
	mov	[rbx+18h],rax
	jz	46969Ah

l0000000000469692:
	mov	rcx,r13
	call	475540h

l000000000046969A:
	test	r14,r14
	jz	4696A7h

l000000000046969F:
	mov	rcx,r14
	call	475540h

l00000000004696A7:
	lock
	add	dword ptr [rbp+8h],1h
	mov	rax,[rbx+8h]
	lea	rsi,[rax]
	mov	rcx,[rsi]
	test	rcx,rcx
	jz	4696C3h

l00000000004696BC:
	lock
	sub	dword ptr [rcx+8h],1h
	jz	469720h

l00000000004696C3:
	cmp	qword ptr [rbx+10h],0h
	mov	[rsi],rbp
	jz	469710h

l00000000004696CD:
	xor	esi,esi
	jmp	4696E7h

l00000000004696D1:
	mov	rax,[rbx+18h]
	mov	qword ptr [rax+rdi],+0h

l00000000004696DD:
	add	rsi,1h
	cmp	[rbx+10h],rsi
	jbe	469710h

l00000000004696E7:
	mov	rax,[rbx+18h]
	lea	rdi,[0000h+rsi*8]
	mov	rcx,[rax+rsi*8]
	test	rcx,rcx
	jz	4696DDh

l00000000004696FC:
	lock
	sub	dword ptr [rcx+8h],1h
	jnz	4696D1h

l0000000000469703:
	mov	rax,[rcx]
	call	qword ptr [rax+8h]
	jmp	4696D1h
000000000046970B                                  0F 1F 44 00 00            ..D..

l0000000000469710:
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	ret
000000000046971F                                              90                .

l0000000000469720:
	mov	rax,[rcx]
	call	qword ptr [rax+8h]
	jmp	4696C3h
0000000000469728                         48 89 C1 E8 10 C1 00 00         H.......
0000000000469730 E8 3B C3 00 00 EB 8C 48 89 C1 E8 01 C1 00 00 48 .;.....H.......H
0000000000469740 89 F9 E8 F9 BD 00 00 E8 14 C9 00 00 48 89 C1 E8 ............H...
0000000000469750 EC C0 00 00 E8 17 C3 00 00 E9 73 FF FF FF 48 83 ..........s...H.
0000000000469760 C2 01 48 89 C1 74 14 E8 44 7E FA FF 48 89 C3 E8 ..H..t..D~..H...
0000000000469770 FC C2 00 00 48 89 D9 EB EE EB E3 E8 90 C1 00 00 ....H...........
0000000000469780 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 ................

;; fn0000000000469790: 0000000000469790
;;   Called from:
;;     000000000046981A (in fn00000000004697F0)
fn0000000000469790 proc
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,20h
	mov	rsi,rdx
	mov	rdi,rcx
	mov	rcx,r8
	mov	rbx,r8
	call	42BB80h
	mov	rcx,[rsi+10h]
	lea	r9,[rcx-1h]
	cmp	rax,r9
	ja	4697D4h

l00000000004697B5:
	mov	rdx,[rsi+8h]
	mov	r8,[rdx+rax*8]
	test	r8,r8
	jz	4697D4h

l00000000004697C2:
	mov	rdx,rbx
	mov	rcx,rdi
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	jmp	469560h

l00000000004697D4:
	lea	rcx,[000000000048D950]                                 ; [rip+00024175]
	call	4712A0h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop

;; fn00000000004697F0: 00000000004697F0
;;   Called from:
;;     00000000004697EF (in fn0000000000469790)
fn00000000004697F0 proc
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,20h
	mov	rbx,r8
	mov	r8,[r8]
	mov	rdi,rcx
	mov	rsi,rdx
	test	r8,r8
	jz	469827h

l0000000000469808:
	nop	dword ptr [rax+rax+0h]

l0000000000469810:
	add	rbx,8h
	mov	rdx,rsi
	mov	rcx,rdi
	call	469790h
	mov	r8,[rbx]
	test	r8,r8
	jnz	469810h

l0000000000469827:
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	ret
000000000046982F                                              90                .

;; fn0000000000469830: 0000000000469830
fn0000000000469830 proc
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,20h
	mov	rdi,rdx
	mov	rdx,[rdx+10h]
	mov	rbx,rcx
	mov	[rcx],r8d
	mov	qword ptr [rcx+8h],+0h
	mov	qword ptr [rcx+18h],+0h
	mov	qword ptr [rcx+20h],+0h
	mov	[rcx+10h],rdx
	lea	rax,[0000h+rdx*8]
	mov	rcx,0FE0000000000000h
	cmp	rdx,rcx
	mov	rcx,-1h
	cmovbe	rcx,rax

l0000000000469883:
	call	475560h
	mov	rdx,[rbx+10h]
	mov	[rbx+8h],rax
	test	rdx,rdx
	mov	rcx,rdx
	jz	4698EFh

l0000000000469898:
	xor	ecx,ecx
	jmp	4698A4h
000000000046989C                                     0F 1F 40 00             ..@.

l00000000004698A0:
	mov	rax,[rbx+8h]

l00000000004698A4:
	mov	r8,[rdi+8h]
	mov	r8,[r8+rcx*8]
	mov	[rax+rcx*8],r8
	mov	rax,[rbx+8h]
	mov	rax,[rax+rcx*8]
	test	rax,rax
	jz	4698C6h

l00000000004698BD:
	lock
	add	dword ptr [rax+8h],1h
	mov	rdx,[rbx+10h]

l00000000004698C6:
	add	rcx,1h
	cmp	rdx,rcx
	ja	4698A0h

l00000000004698CF:
	mov	rcx,0FE0000000000000h
	lea	rax,[0000h+rdx*8]
	cmp	rdx,rcx
	mov	rcx,-1h
	cmovbe	rcx,rax

l00000000004698EF:
	call	475560h
	cmp	qword ptr [rbx+10h],0h
	mov	[rbx+18h],rax
	jz	46992Fh

l00000000004698FF:
	xor	ecx,ecx
	jmp	469907h

l0000000000469903:
	mov	rax,[rbx+18h]

l0000000000469907:
	mov	rdx,[rdi+18h]
	mov	rdx,[rdx+rcx*8]
	mov	[rax+rcx*8],rdx
	mov	rax,[rbx+18h]
	mov	rax,[rax+rcx*8]
	test	rax,rax
	jz	469925h

l0000000000469920:
	lock
	add	dword ptr [rax+8h],1h

l0000000000469925:
	add	rcx,1h
	cmp	[rbx+10h],rcx
	ja	469903h

l000000000046992F:
	mov	ecx,30h
	call	475560h
	mov	[rbx+20h],rax
	xor	edx,edx
	jmp	469945h

l0000000000469941:
	mov	rax,[rbx+20h]

l0000000000469945:
	mov	qword ptr [rax+rdx],+0h
	add	rdx,8h
	cmp	rdx,30h
	jnz	469941h

l0000000000469957:
	xor	esi,esi
	nop	dword ptr [rax+0h]

l0000000000469960:
	mov	rax,[rdi+20h]
	mov	rcx,[rax+rsi]
	test	rcx,rcx
	jz	4699ABh

l000000000046996D:
	call	41BCB8h
	lea	rbp,[rax+1h]
	mov	r12,rsi
	add	r12,[rbx+20h]
	mov	rcx,rbp
	call	475560h
	mov	[r12],rax
	mov	rax,[rbx+20h]
	mov	r8,rbp
	mov	rcx,[rax+rsi]
	mov	rax,[rdi+20h]
	mov	rdx,[rax+rsi]
	add	rsi,8h
	call	41BCC0h
	cmp	rsi,30h
	jnz	469960h

l00000000004699AB:
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
00000000004699B6                   48 89 C1 E8 82 BE 00 00 48 89       H.......H.
00000000004699C0 D9 E8 4A 11 00 00 E8 95 C6 00 00 48 89 C3 E8 9D ..J........H....
00000000004699D0 C0 00 00 48 89 D9 E8 D5 7B FA FF 90 90 90 90 90 ...H....{.......

;; fn00000000004699E0: 00000000004699E0
;;   Called from:
;;     000000000046931C (in fn00000000004692E0)
;;     0000000000469360 (in fn0000000000469350)
fn00000000004699E0 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	lea	rax,[000000000048A900]                                 ; [rip+00020F13]
	mov	[rcx],edx
	mov	rbx,rcx
	mov	qword ptr [rcx+10h],+1Ch
	mov	[rcx+8h],rax
	lea	rax,[000000000048A780]                                 ; [rip+00020D7B]
	mov	qword ptr [rcx+20h],+0h
	lea	rdx,[000000000048A900]                                 ; [rip+00020EEC]
	mov	[rcx+18h],rax
	xor	eax,eax
	lea	rcx,[000000000048A780]                                 ; [rip+00020D5F]
	jmp	469A2Bh

l0000000000469A23:
	mov	rdx,[rbx+8h]
	mov	rcx,[rbx+18h]

l0000000000469A2B:
	mov	qword ptr [rcx+rax],+0h
	mov	qword ptr [rdx+rax],+0h
	add	rax,8h
	cmp	rax,+0E0h
	jnz	469A23h

l0000000000469A47:
	lea	rax,[000000000048A720]                                 ; [rip+00020CD2]
	mov	[rbx+20h],rax
	lea	rax,[000000000048A180]                                 ; [rip+00020727]
	mov	[000000000048A720],rax                                 ; [rip+00020CC0]
	call	46AC40h
	movzx	eax,word ptr [rax]
	lea	rdx,[000000000048A720]                                 ; [rip+00020CB1]
	mov	[000000000048A180],ax                                  ; [rip+0002070A]
	mov	eax,8h

l0000000000469A7B:
	mov	qword ptr [rdx+rax],+0h
	add	rax,8h
	cmp	rax,30h
	jz	469A93h

l0000000000469A8D:
	mov	rdx,[rbx+20h]
	jmp	469A7Bh

l0000000000469A93:
	lea	rcx,[000000000048A1C0]                                 ; [rip+00020726]
	mov	r9d,1h
	xor	r8d,r8d
	xor	edx,edx
	call	468C90h
	mov	rdx,[00000000004918B0]                                 ; [rip+00027DFF]
	lea	r8,[000000000048A1C0]                                  ; [rip+00020708]
	mov	rcx,rbx
	call	469560h
	lea	rcx,[000000000048A880]                                 ; [rip+00020DB9]
	mov	edx,1h
	call	46BC00h
	mov	rdx,[0000000000491910]                                 ; [rip+00027E38]
	lea	r8,[000000000048A880]                                  ; [rip+00020DA1]
	mov	rcx,rbx
	call	469560h
	mov	rax,[0000000000491C50]                                 ; [rip+00028162]
	lea	rcx,[0000000000489800]                                 ; [rip+0001FD0B]
	xor	edx,edx
	mov	[0000000000489A48],1h                                  ; [rip+0001FF47]
	mov	[0000000000489A50],+0h                                 ; [rip+0001FF44]
	mov	[0000000000489A58],+0h                                 ; [rip+0001FF41]
	mov	[0000000000489A60],0h                                  ; [rip+0001FF42]
	add	rax,10h
	mov	[0000000000489A68],+0h                                 ; [rip+0001FF3B]
	mov	[0000000000489A70],+0h                                 ; [rip+0001FF38]
	mov	[0000000000489A40],rax                                 ; [rip+0001FF01]
	mov	rax,[0000000000491DB0]                                 ; [rip+0002826A]
	mov	[0000000000489A78],+0h                                 ; [rip+0001FF27]
	mov	[0000000000489A80],+0h                                 ; [rip+0001FF24]
	mov	[0000000000489A88],0h                                  ; [rip+0001FF25]
	mov	[0000000000489A89],0h                                  ; [rip+0001FF1F]
	add	rax,10h
	mov	[0000000000489AC8],0h                                  ; [rip+0001FF53]
	mov	[0000000000489808],1h                                  ; [rip+0001FC89]
	mov	[0000000000489800],rax                                 ; [rip+0001FC7A]
	lea	rax,[0000000000489A40]                                 ; [rip+0001FEB3]
	mov	[0000000000489810],rax                                 ; [rip+0001FC7C]
	call	46D7F0h
	mov	rdx,[00000000004919F0]                                 ; [rip+00027E50]
	lea	r8,[0000000000489800]                                  ; [rip+0001FC59]
	mov	rcx,rbx
	call	469560h
	mov	rax,[0000000000491D60]                                 ; [rip+000281AA]
	mov	rdx,[0000000000491950]                                 ; [rip+00027D93]
	lea	r8,[000000000048AA10]                                  ; [rip+00020E4C]
	mov	rcx,rbx
	mov	[000000000048AA18],1h                                  ; [rip+00020E47]
	add	rax,10h
	mov	[000000000048AA10],rax                                 ; [rip+00020E34]
	call	469560h
	mov	rax,[0000000000491D80]                                 ; [rip+00028198]
	mov	rdx,[0000000000491970]                                 ; [rip+00027D81]
	lea	r8,[000000000048AA30]                                  ; [rip+00020E3A]
	mov	rcx,rbx
	mov	[000000000048AA38],1h                                  ; [rip+00020E35]
	add	rax,10h
	mov	[000000000048AA30],rax                                 ; [rip+00020E22]
	call	469560h
	mov	rax,[0000000000491D40]                                 ; [rip+00028126]
	mov	[000000000048A8C8],1h                                  ; [rip+00020CA4]
	add	rax,10h
	mov	[000000000048A8C0],rax                                 ; [rip+00020C91]
	call	46AC50h
	mov	rdx,[0000000000491930]                                 ; [rip+00027CF5]
	lea	r8,[000000000048A8C0]                                  ; [rip+00020C7E]
	mov	rcx,rbx
	mov	[000000000048A8D0],rax                                 ; [rip+00020C84]
	call	469560h
	mov	rax,[0000000000491CB0]                                 ; [rip+00028058]
	lea	rcx,[00000000004899A0]                                 ; [rip+0001FD41]
	xor	r8d,r8d
	xor	edx,edx
	mov	[0000000000489F88],1h                                  ; [rip+0002031A]
	mov	[0000000000489F90],+0h                                 ; [rip+00020317]
	mov	[0000000000489F98],+0h                                 ; [rip+00020314]
	mov	[0000000000489FA0],0h                                  ; [rip+00020315]
	add	rax,10h
	mov	[0000000000489FA1],0h                                  ; [rip+0002030B]
	mov	[0000000000489FA2],0h                                  ; [rip+00020305]
	mov	[0000000000489F80],rax                                 ; [rip+000202DC]
	mov	rax,[0000000000491B80]                                 ; [rip+00027ED5]
	mov	[0000000000489FA8],+0h                                 ; [rip+000202F2]
	mov	[0000000000489FB0],+0h                                 ; [rip+000202EF]
	mov	[0000000000489FB8],+0h                                 ; [rip+000202EC]
	mov	[0000000000489FC0],+0h                                 ; [rip+000202E9]
	add	rax,10h
	mov	[0000000000489FC8],+0h                                 ; [rip+000202E2]
	mov	[0000000000489FD0],+0h                                 ; [rip+000202DF]
	mov	[00000000004899A0],rax                                 ; [rip+0001FCA8]
	lea	rax,[0000000000489F80]                                 ; [rip+00020281]
	mov	[0000000000489FD8],0h                                  ; [rip+000202CF]
	mov	[0000000000489FDC],0h                                  ; [rip+000202CC]
	mov	[0000000000489FDD],0h                                  ; [rip+000202C6]
	mov	[0000000000489FDE],0h                                  ; [rip+000202C0]
	mov	[0000000000489FDF],0h                                  ; [rip+000202BA]
	mov	[0000000000489FE0],0h                                  ; [rip+000202B4]
	mov	[0000000000489FE1],0h                                  ; [rip+000202AE]
	mov	[0000000000489FE2],0h                                  ; [rip+000202A8]
	mov	[0000000000489FE3],0h                                  ; [rip+000202A2]
	mov	[0000000000489FEF],0h                                  ; [rip+000202A7]
	mov	[00000000004899A8],1h                                  ; [rip+0001FC56]
	mov	[00000000004899B0],rax                                 ; [rip+0001FC57]
	call	452740h
	mov	rdx,[0000000000491730]                                 ; [rip+000279CB]
	lea	r8,[00000000004899A0]                                  ; [rip+0001FC34]
	mov	rcx,rbx
	call	469560h
	mov	rax,[0000000000491CC0]                                 ; [rip+00027F45]
	lea	rcx,[00000000004899C0]                                 ; [rip+0001FC3E]
	xor	r8d,r8d
	xor	edx,edx
	mov	[000000000048A008],1h                                  ; [rip+00020277]
	mov	[000000000048A010],+0h                                 ; [rip+00020274]
	mov	[000000000048A018],+0h                                 ; [rip+00020271]
	mov	[000000000048A020],0h                                  ; [rip+00020272]
	add	rax,10h
	mov	[000000000048A021],0h                                  ; [rip+00020268]
	mov	[000000000048A022],0h                                  ; [rip+00020262]
	mov	[000000000048A000],rax                                 ; [rip+00020239]
	mov	rax,[0000000000491B90]                                 ; [rip+00027DC2]
	mov	[000000000048A028],+0h                                 ; [rip+0002024F]
	mov	[000000000048A030],+0h                                 ; [rip+0002024C]
	mov	[000000000048A038],+0h                                 ; [rip+00020249]
	mov	[000000000048A040],+0h                                 ; [rip+00020246]
	add	rax,10h
	mov	[000000000048A048],+0h                                 ; [rip+0002023F]
	mov	[000000000048A050],+0h                                 ; [rip+0002023C]
	mov	[00000000004899C0],rax                                 ; [rip+0001FBA5]
	lea	rax,[000000000048A000]                                 ; [rip+000201DE]
	mov	[000000000048A058],0h                                  ; [rip+0002022C]
	mov	[000000000048A05C],0h                                  ; [rip+00020229]
	mov	[000000000048A05D],0h                                  ; [rip+00020223]
	mov	[000000000048A05E],0h                                  ; [rip+0002021D]
	mov	[000000000048A05F],0h                                  ; [rip+00020217]
	mov	[000000000048A060],0h                                  ; [rip+00020211]
	mov	[000000000048A061],0h                                  ; [rip+0002020B]
	mov	[000000000048A062],0h                                  ; [rip+00020205]
	mov	[000000000048A063],0h                                  ; [rip+000201FF]
	mov	[000000000048A06F],0h                                  ; [rip+00020204]
	mov	[00000000004899C8],1h                                  ; [rip+0001FB53]
	mov	[00000000004899D0],rax                                 ; [rip+0001FB54]
	call	452AD0h
	mov	rdx,[0000000000491740]                                 ; [rip+000278B8]
	lea	r8,[00000000004899C0]                                  ; [rip+0001FB31]
	mov	rcx,rbx
	call	469560h
	mov	rax,[0000000000491E40]                                 ; [rip+00027FA2]
	mov	rdx,[0000000000491A60]                                 ; [rip+00027BBB]
	lea	r8,[0000000000489880]                                  ; [rip+0001F9D4]
	mov	rcx,rbx
	mov	[0000000000489888],1h                                  ; [rip+0001F9CF]
	add	rax,10h
	mov	[0000000000489880],rax                                 ; [rip+0001F9BC]
	call	469560h
	mov	rax,[0000000000491E60]                                 ; [rip+00027F90]
	mov	rdx,[0000000000491A80]                                 ; [rip+00027BA9]
	lea	r8,[00000000004898A0]                                  ; [rip+0001F9C2]
	mov	rcx,rbx
	mov	[00000000004898A8],1h                                  ; [rip+0001F9BD]
	add	rax,10h
	mov	[00000000004898A0],rax                                 ; [rip+0001F9AA]
	call	469560h
	mov	rax,[0000000000491C80]                                 ; [rip+00027D7E]
	lea	rdx,[0000000000489C00]                                 ; [rip+0001FCF7]
	lea	rcx,[00000000004898C0]                                 ; [rip+0001F9B0]
	mov	r8d,1h
	mov	[0000000000489C08],1h                                  ; [rip+0001FCE8]
	mov	[0000000000489C10],+0h                                 ; [rip+0001FCE5]
	mov	[0000000000489C18],+0h                                 ; [rip+0001FCE2]
	mov	[0000000000489C20],+0h                                 ; [rip+0001FCDF]
	add	rax,10h
	mov	[0000000000489C28],+0h                                 ; [rip+0001FCD8]
	mov	[0000000000489C30],+0h                                 ; [rip+0001FCD5]
	mov	[0000000000489C00],rax                                 ; [rip+0001FC9E]
	mov	[0000000000489C38],+0h                                 ; [rip+0001FCCB]
	mov	[0000000000489C40],+0h                                 ; [rip+0001FCC8]
	mov	[0000000000489C48],+0h                                 ; [rip+0001FCC5]
	mov	[0000000000489C50],+0h                                 ; [rip+0001FCC2]
	mov	[0000000000489C58],+0h                                 ; [rip+0001FCBF]
	mov	[0000000000489C60],+0h                                 ; [rip+0001FCBC]
	mov	[0000000000489C68],+0h                                 ; [rip+0001FCB9]
	mov	[0000000000489C70],+0h                                 ; [rip+0001FCB6]
	mov	[0000000000489C78],+0h                                 ; [rip+0001FCB3]
	mov	[0000000000489C80],+0h                                 ; [rip+0001FCB0]
	mov	[0000000000489C88],+0h                                 ; [rip+0001FCAD]
	mov	[0000000000489C90],+0h                                 ; [rip+0001FCAA]
	mov	[0000000000489C98],+0h                                 ; [rip+0001FCA7]
	mov	[0000000000489CA0],+0h                                 ; [rip+0001FCA4]
	mov	[0000000000489CA8],+0h                                 ; [rip+0001FCA1]
	mov	[0000000000489CB0],+0h                                 ; [rip+0001FC9E]
	mov	[0000000000489CB8],+0h                                 ; [rip+0001FC9B]
	mov	[0000000000489CC0],+0h                                 ; [rip+0001FC98]
	mov	[0000000000489CC8],+0h                                 ; [rip+0001FC95]
	mov	[0000000000489CD0],+0h                                 ; [rip+0001FC92]
	mov	[0000000000489CD8],+0h                                 ; [rip+0001FC8F]
	mov	[0000000000489CE0],+0h                                 ; [rip+0001FC8C]
	mov	[0000000000489CE8],+0h                                 ; [rip+0001FC89]
	mov	[0000000000489CF0],+0h                                 ; [rip+0001FC86]
	mov	[0000000000489CF8],+0h                                 ; [rip+0001FC83]
	mov	[0000000000489D00],+0h                                 ; [rip+0001FC80]
	mov	[0000000000489D08],+0h                                 ; [rip+0001FC7D]
	mov	[0000000000489D10],+0h                                 ; [rip+0001FC7A]
	mov	[0000000000489D18],+0h                                 ; [rip+0001FC77]
	mov	[0000000000489D20],+0h                                 ; [rip+0001FC74]
	mov	[0000000000489D28],+0h                                 ; [rip+0001FC71]
	mov	[0000000000489D30],+0h                                 ; [rip+0001FC6E]
	mov	[0000000000489D38],+0h                                 ; [rip+0001FC6B]
	mov	[0000000000489D40],+0h                                 ; [rip+0001FC68]
	mov	[0000000000489D48],+0h                                 ; [rip+0001FC65]
	mov	[0000000000489D50],+0h                                 ; [rip+0001FC62]
	mov	[0000000000489D58],+0h                                 ; [rip+0001FC5F]
	mov	[0000000000489D60],+0h                                 ; [rip+0001FC5C]
	mov	[0000000000489D68],+0h                                 ; [rip+0001FC59]
	mov	[0000000000489D70],+0h                                 ; [rip+0001FC56]
	mov	[0000000000489D78],+0h                                 ; [rip+0001FC53]
	mov	[0000000000489D80],+0h                                 ; [rip+0001FC50]
	mov	[0000000000489D88],0h                                  ; [rip+0001FC51]
	call	453AB0h
	mov	rdx,[0000000000491770]                                 ; [rip+0002762D]
	lea	r8,[00000000004898C0]                                  ; [rip+0001F776]
	mov	rcx,rbx
	call	469560h
	mov	rax,[0000000000491DD0]                                 ; [rip+00027C77]
	mov	rdx,[0000000000491A10]                                 ; [rip+000278B0]
	lea	r8,[0000000000489840]                                  ; [rip+0001F6D9]
	mov	rcx,rbx
	mov	[0000000000489848],1h                                  ; [rip+0001F6D4]
	add	rax,10h
	mov	[0000000000489840],rax                                 ; [rip+0001F6C1]
	call	469560h
	mov	rax,[0000000000491DF0]                                 ; [rip+00027C65]
	mov	rdx,[0000000000491A30]                                 ; [rip+0002789E]
	lea	r8,[0000000000489860]                                  ; [rip+0001F6C7]
	mov	rcx,rbx
	mov	[0000000000489868],1h                                  ; [rip+0001F6C2]
	add	rax,10h
	mov	[0000000000489860],rax                                 ; [rip+0001F6AF]
	call	469560h
	lea	rcx,[00000000004897C0]                                 ; [rip+0001F603]
	mov	edx,1h
	call	46D480h
	mov	rdx,[00000000004919D0]                                 ; [rip+00027802]
	lea	r8,[00000000004897C0]                                  ; [rip+0001F5EB]
	mov	rcx,rbx
	call	469560h
	lea	rcx,[000000000048A400]                                 ; [rip+0002021C]
	mov	edx,1h
	call	468F80h
	mov	rdx,[00000000004918C0]                                 ; [rip+000276CB]
	lea	r8,[000000000048A400]                                  ; [rip+00020204]
	mov	rcx,rbx
	call	469560h
	lea	rcx,[000000000048A8A0]                                 ; [rip+00020695]
	mov	edx,1h
	call	46BD10h
	mov	rdx,[0000000000491920]                                 ; [rip+00027704]
	lea	r8,[000000000048A8A0]                                  ; [rip+0002067D]
	mov	rcx,rbx
	call	469560h
	mov	rax,[0000000000491C60]                                 ; [rip+00027A2E]
	lea	rcx,[0000000000489820]                                 ; [rip+0001F5E7]
	xor	r9d,r9d
	xor	r10d,r10d
	xor	edx,edx
	mov	[0000000000489B08],1h                                  ; [rip+0001F8BD]
	mov	[0000000000489B10],+0h                                 ; [rip+0001F8BA]
	mov	[0000000000489B18],+0h                                 ; [rip+0001F8B7]
	add	rax,10h
	mov	[0000000000489B20],0h                                  ; [rip+0001F8B4]
	mov	[0000000000489B28],+0h                                 ; [rip+0001F8B1]
	mov	[0000000000489B00],rax                                 ; [rip+0001F882]
	mov	rax,[0000000000491DC0]                                 ; [rip+00027B3B]
	mov	[0000000000489B30],+0h                                 ; [rip+0001F8A0]
	mov	[0000000000489B38],+0h                                 ; [rip+0001F89D]
	mov	[0000000000489B40],+0h                                 ; [rip+0001F89A]
	mov	[0000000000489B48],r9w                                 ; [rip+0001F89A]
	add	rax,10h
	mov	[0000000000489B4A],r10w                                ; [rip+0001F890]
	mov	[0000000000489BC8],0h                                  ; [rip+0001F907]
	mov	[0000000000489820],rax                                 ; [rip+0001F558]
	lea	rax,[0000000000489B00]                                 ; [rip+0001F831]
	mov	[0000000000489828],1h                                  ; [rip+0001F54F]
	mov	[0000000000489830],rax                                 ; [rip+0001F550]
	call	46DB70h
	mov	rdx,[0000000000491A00]                                 ; [rip+00027714]
	lea	r8,[0000000000489820]                                  ; [rip+0001F52D]
	mov	rcx,rbx
	call	469560h
	mov	rax,[0000000000491D70]                                 ; [rip+00027A6E]
	mov	rdx,[0000000000491960]                                 ; [rip+00027657]
	lea	r8,[000000000048AA20]                                  ; [rip+00020710]
	mov	rcx,rbx
	mov	[000000000048AA28],1h                                  ; [rip+0002070B]
	add	rax,10h
	mov	[000000000048AA20],rax                                 ; [rip+000206F8]
	call	469560h
	mov	rax,[0000000000491D90]                                 ; [rip+00027A5C]
	mov	rdx,[0000000000491980]                                 ; [rip+00027645]
	lea	r8,[000000000048AA40]                                  ; [rip+000206FE]
	mov	rcx,rbx
	mov	[000000000048AA48],1h                                  ; [rip+000206F9]
	add	rax,10h
	mov	[000000000048AA40],rax                                 ; [rip+000206E6]
	call	469560h
	mov	rax,[0000000000491D50]                                 ; [rip+000279EA]
	mov	[000000000048A8E8],1h                                  ; [rip+00020578]
	add	rax,10h
	mov	[000000000048A8E0],rax                                 ; [rip+00020565]
	call	46AC50h
	mov	rdx,[0000000000491940]                                 ; [rip+000275B9]
	lea	r8,[000000000048A8E0]                                  ; [rip+00020552]
	mov	rcx,rbx
	mov	[000000000048A8F0],rax                                 ; [rip+00020558]
	call	469560h
	mov	rax,[0000000000491CD0]                                 ; [rip+0002792C]
	xor	ecx,ecx
	xor	r8d,r8d
	mov	[000000000048A0A2],cx                                  ; [rip+0001FCF2]
	lea	rcx,[00000000004899E0]                                 ; [rip+0001F629]
	mov	[000000000048A0A4],r8w                                 ; [rip+0001FCE5]
	xor	edx,edx
	xor	r8d,r8d
	mov	[000000000048A088],1h                                  ; [rip+0001FCBA]
	add	rax,10h
	mov	[000000000048A090],+0h                                 ; [rip+0001FCB3]
	mov	[000000000048A098],+0h                                 ; [rip+0001FCB0]
	mov	[000000000048A080],rax                                 ; [rip+0001FC91]
	mov	rax,[0000000000491BA0]                                 ; [rip+000277AA]
	mov	[000000000048A0A0],0h                                  ; [rip+0001FCA3]
	mov	[000000000048A0A8],+0h                                 ; [rip+0001FCA0]
	mov	[000000000048A0B0],+0h                                 ; [rip+0001FC9D]
	mov	[000000000048A0B8],+0h                                 ; [rip+0001FC9A]
	add	rax,10h
	mov	[000000000048A0C0],+0h                                 ; [rip+0001FC93]
	mov	[000000000048A0C8],+0h                                 ; [rip+0001FC90]
	mov	[00000000004899E0],rax                                 ; [rip+0001F5A1]
	lea	rax,[000000000048A080]                                 ; [rip+0001FC3A]
	mov	[000000000048A0D0],+0h                                 ; [rip+0001FC7F]
	mov	[000000000048A0D8],0h                                  ; [rip+0001FC7D]
	mov	[000000000048A0DC],0h                                  ; [rip+0001FC7A]
	mov	[000000000048A0DD],0h                                  ; [rip+0001FC74]
	mov	[000000000048A0DE],0h                                  ; [rip+0001FC6E]
	mov	[000000000048A0DF],0h                                  ; [rip+0001FC68]
	mov	[000000000048A0E0],0h                                  ; [rip+0001FC62]
	mov	[000000000048A0E1],0h                                  ; [rip+0001FC5C]
	mov	[000000000048A0E2],0h                                  ; [rip+0001FC56]
	mov	[000000000048A0E3],0h                                  ; [rip+0001FC50]
	mov	[000000000048A0FA],0h                                  ; [rip+0001FC60]
	mov	[00000000004899E8],1h                                  ; [rip+0001F544]
	mov	[00000000004899F0],rax                                 ; [rip+0001F545]
	call	452E60h
	mov	rdx,[0000000000491750]                                 ; [rip+00027299]
	lea	r8,[00000000004899E0]                                  ; [rip+0001F522]
	mov	rcx,rbx
	call	469560h
	mov	rax,[0000000000491CE0]                                 ; [rip+00027813]
	xor	edx,edx
	lea	rcx,[0000000000489A00]                                 ; [rip+0001F52A]
	mov	[000000000048A124],dx                                  ; [rip+0001FC47]
	xor	r8d,r8d
	xor	edx,edx
	mov	[000000000048A108],1h                                  ; [rip+0001FC1C]
	mov	[000000000048A110],+0h                                 ; [rip+0001FC19]
	add	rax,10h
	mov	[000000000048A118],+0h                                 ; [rip+0001FC12]
	mov	[000000000048A120],0h                                  ; [rip+0001FC13]
	mov	[000000000048A100],rax                                 ; [rip+0001FBEC]
	xor	eax,eax
	mov	[000000000048A128],+0h                                 ; [rip+0001FC07]
	mov	[000000000048A122],ax                                  ; [rip+0001FBFA]
	mov	rax,[0000000000491BB0]                                 ; [rip+00027681]
	mov	[000000000048A130],+0h                                 ; [rip+0001FBF6]
	mov	[000000000048A138],+0h                                 ; [rip+0001FBF3]
	mov	[000000000048A140],+0h                                 ; [rip+0001FBF0]
	mov	[000000000048A148],+0h                                 ; [rip+0001FBED]
	add	rax,10h
	mov	[000000000048A150],+0h                                 ; [rip+0001FBE6]
	mov	[000000000048A158],0h                                  ; [rip+0001FBE4]
	mov	[0000000000489A00],rax                                 ; [rip+0001F485]
	lea	rax,[000000000048A100]                                 ; [rip+0001FB7E]
	mov	[000000000048A15C],0h                                  ; [rip+0001FBD3]
	mov	[000000000048A15D],0h                                  ; [rip+0001FBCD]
	mov	[000000000048A15E],0h                                  ; [rip+0001FBC7]
	mov	[000000000048A15F],0h                                  ; [rip+0001FBC1]
	mov	[000000000048A160],0h                                  ; [rip+0001FBBB]
	mov	[000000000048A161],0h                                  ; [rip+0001FBB5]
	mov	[000000000048A162],0h                                  ; [rip+0001FBAF]
	mov	[000000000048A163],0h                                  ; [rip+0001FBA9]
	mov	[000000000048A17A],0h                                  ; [rip+0001FBB9]
	mov	[0000000000489A08],1h                                  ; [rip+0001F43D]
	mov	[0000000000489A10],rax                                 ; [rip+0001F43E]
	call	453210h
	mov	rdx,[0000000000491760]                                 ; [rip+00027182]
	lea	r8,[0000000000489A00]                                  ; [rip+0001F41B]
	mov	rcx,rbx
	call	469560h
	mov	rax,[0000000000491E50]                                 ; [rip+0002785C]
	mov	rdx,[0000000000491A70]                                 ; [rip+00027475]
	lea	r8,[0000000000489890]                                  ; [rip+0001F28E]
	mov	rcx,rbx
	mov	[0000000000489898],1h                                  ; [rip+0001F289]
	add	rax,10h
	mov	[0000000000489890],rax                                 ; [rip+0001F276]
	call	469560h
	mov	rax,[0000000000491E70]                                 ; [rip+0002784A]
	mov	rdx,[0000000000491A90]                                 ; [rip+00027463]
	lea	r8,[00000000004898B0]                                  ; [rip+0001F27C]
	mov	rcx,rbx
	mov	[00000000004898B8],1h                                  ; [rip+0001F277]
	add	rax,10h
	mov	[00000000004898B0],rax                                 ; [rip+0001F264]
	call	469560h
	mov	rax,[0000000000491C90]                                 ; [rip+00027638]
	lea	rdx,[0000000000489DC0]                                 ; [rip+0001F761]
	lea	rcx,[0000000000489900]                                 ; [rip+0001F29A]
	mov	r8d,1h
	mov	[0000000000489DC8],1h                                  ; [rip+0001F752]
	mov	[0000000000489DD0],+0h                                 ; [rip+0001F74F]
	mov	[0000000000489DD8],+0h                                 ; [rip+0001F74C]
	mov	[0000000000489DE0],+0h                                 ; [rip+0001F749]
	add	rax,10h
	mov	[0000000000489DE8],+0h                                 ; [rip+0001F742]
	mov	[0000000000489DF0],+0h                                 ; [rip+0001F73F]
	mov	[0000000000489DC0],rax                                 ; [rip+0001F708]
	mov	[0000000000489DF8],+0h                                 ; [rip+0001F735]
	mov	[0000000000489E00],+0h                                 ; [rip+0001F732]
	mov	[0000000000489E08],+0h                                 ; [rip+0001F72F]
	mov	[0000000000489E10],+0h                                 ; [rip+0001F72C]
	mov	[0000000000489E18],+0h                                 ; [rip+0001F729]
	mov	[0000000000489E20],+0h                                 ; [rip+0001F726]
	mov	[0000000000489E28],+0h                                 ; [rip+0001F723]
	mov	[0000000000489E30],+0h                                 ; [rip+0001F720]
	mov	[0000000000489E38],+0h                                 ; [rip+0001F71D]
	mov	[0000000000489E40],+0h                                 ; [rip+0001F71A]
	mov	[0000000000489E48],+0h                                 ; [rip+0001F717]
	mov	[0000000000489E50],+0h                                 ; [rip+0001F714]
	mov	[0000000000489E58],+0h                                 ; [rip+0001F711]
	mov	[0000000000489E60],+0h                                 ; [rip+0001F70E]
	mov	[0000000000489E68],+0h                                 ; [rip+0001F70B]
	mov	[0000000000489E70],+0h                                 ; [rip+0001F708]
	mov	[0000000000489E78],+0h                                 ; [rip+0001F705]
	mov	[0000000000489E80],+0h                                 ; [rip+0001F702]
	mov	[0000000000489E88],+0h                                 ; [rip+0001F6FF]
	mov	[0000000000489E90],+0h                                 ; [rip+0001F6FC]
	mov	[0000000000489E98],+0h                                 ; [rip+0001F6F9]
	mov	[0000000000489EA0],+0h                                 ; [rip+0001F6F6]
	mov	[0000000000489EA8],+0h                                 ; [rip+0001F6F3]
	mov	[0000000000489EB0],+0h                                 ; [rip+0001F6F0]
	mov	[0000000000489EB8],+0h                                 ; [rip+0001F6ED]
	mov	[0000000000489EC0],+0h                                 ; [rip+0001F6EA]
	mov	[0000000000489EC8],+0h                                 ; [rip+0001F6E7]
	mov	[0000000000489ED0],+0h                                 ; [rip+0001F6E4]
	mov	[0000000000489ED8],+0h                                 ; [rip+0001F6E1]
	mov	[0000000000489EE0],+0h                                 ; [rip+0001F6DE]
	mov	[0000000000489EE8],+0h                                 ; [rip+0001F6DB]
	mov	[0000000000489EF0],+0h                                 ; [rip+0001F6D8]
	mov	[0000000000489EF8],+0h                                 ; [rip+0001F6D5]
	mov	[0000000000489F00],+0h                                 ; [rip+0001F6D2]
	mov	[0000000000489F08],+0h                                 ; [rip+0001F6CF]
	mov	[0000000000489F10],+0h                                 ; [rip+0001F6CC]
	mov	[0000000000489F18],+0h                                 ; [rip+0001F6C9]
	mov	[0000000000489F20],+0h                                 ; [rip+0001F6C6]
	mov	[0000000000489F28],+0h                                 ; [rip+0001F6C3]
	mov	[0000000000489F30],+0h                                 ; [rip+0001F6C0]
	mov	[0000000000489F38],+0h                                 ; [rip+0001F6BD]
	mov	[0000000000489F40],+0h                                 ; [rip+0001F6BA]
	mov	[0000000000489F48],0h                                  ; [rip+0001F6BB]
	call	454350h
	mov	rdx,[0000000000491780]                                 ; [rip+00026EE7]
	lea	r8,[0000000000489900]                                  ; [rip+0001F060]
	mov	rcx,rbx
	call	469560h
	mov	rax,[0000000000491DE0]                                 ; [rip+00027531]
	mov	rdx,[0000000000491A20]                                 ; [rip+0002716A]
	lea	r8,[0000000000489850]                                  ; [rip+0001EF93]
	mov	rcx,rbx
	mov	[0000000000489858],1h                                  ; [rip+0001EF8E]
	add	rax,10h
	mov	[0000000000489850],rax                                 ; [rip+0001EF7B]
	call	469560h
	mov	rax,[0000000000491E00]                                 ; [rip+0002751F]
	mov	rdx,[0000000000491A40]                                 ; [rip+00027158]
	lea	r8,[0000000000489870]                                  ; [rip+0001EF81]
	mov	rcx,rbx
	mov	[0000000000489878],1h                                  ; [rip+0001EF7C]
	add	rax,10h
	mov	[0000000000489870],rax                                 ; [rip+0001EF69]
	call	469560h
	lea	rcx,[00000000004897E0]                                 ; [rip+0001EECD]
	mov	edx,1h
	call	46D660h
	mov	rdx,[00000000004919E0]                                 ; [rip+000270BC]
	lea	r8,[00000000004897E0]                                  ; [rip+0001EEB5]
	mov	rcx,rbx
	call	469560h
	mov	rcx,[00000000004919F0]                                 ; [rip+000270B6]
	mov	rsi,[rbx+18h]
	call	42BB80h
	lea	rcx,[0000000000489A40]                                 ; [rip+0001F0F6]
	mov	[rsi+rax*8],rcx
	mov	rcx,[0000000000491730]                                 ; [rip+00026DDB]
	mov	rsi,[rbx+18h]
	call	42BB80h
	lea	rcx,[0000000000489F80]                                 ; [rip+0001F61B]
	mov	[rsi+rax*8],rcx
	mov	rcx,[0000000000491740]                                 ; [rip+00026DD0]
	mov	rsi,[rbx+18h]
	call	42BB80h
	lea	rcx,[000000000048A000]                                 ; [rip+0001F680]
	mov	[rsi+rax*8],rcx
	mov	rcx,[0000000000491770]                                 ; [rip+00026DE5]
	mov	rsi,[rbx+18h]
	call	42BB80h
	lea	rdx,[0000000000489C00]                                 ; [rip+0001F265]
	mov	rcx,[0000000000491A00]                                 ; [rip+0002705E]
	mov	[rsi+rax*8],rdx
	mov	rsi,[rbx+18h]
	call	42BB80h
	lea	rcx,[0000000000489B00]                                 ; [rip+0001F14A]
	mov	[rsi+rax*8],rcx
	mov	rcx,[0000000000491750]                                 ; [rip+00026D8F]
	mov	rsi,[rbx+18h]
	call	42BB80h
	lea	rdx,[000000000048A080]                                 ; [rip+0001F6AF]
	mov	rcx,[0000000000491760]                                 ; [rip+00026D88]
	mov	[rsi+rax*8],rdx
	mov	rsi,[rbx+18h]
	call	42BB80h
	lea	rcx,[000000000048A100]                                 ; [rip+0001F714]
	mov	[rsi+rax*8],rcx
	mov	rcx,[0000000000491780]                                 ; [rip+00026D89]
	lea	rsi,[0000000000489DC0]                                 ; [rip+0001F3C2]
	mov	rbx,[rbx+18h]
	call	42BB80h
	mov	[rbx+rax*8],rsi
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret
000000000046AA12       48 89 C1 48 83 FA FF 0F 84 E1 00 00 00 E8   H..H..........
000000000046AA20 8C 6B FA FF 48 8D 0D D5 EF 01 00 48 89 C3 48 89 .k..H......H..H.
000000000046AA30 D6 E8 EA 02 00 00 48 89 D9 48 89 F2 EB D7 48 8D ......H..H....H.
000000000046AA40 0D 7B EF 01 00 48 89 C3 48 89 D6 E8 D0 02 00 00 .{...H..H.......
000000000046AA50 48 89 D9 48 89 F2 EB BD 48 8D 0D 41 EF 01 00 48 H..H....H..A...H
000000000046AA60 89 C3 48 89 D6 E8 B6 02 00 00 48 89 D9 48 89 F2 ..H.......H..H..
000000000046AA70 EB A3 48 8D 0D 47 FE 01 00 48 89 C3 48 89 D6 E8 ..H..G...H..H...
000000000046AA80 9C 02 00 00 48 89 D9 48 89 F2 EB 89 48 8D 0D 6D ....H..H....H..m
000000000046AA90 ED 01 00 48 89 C3 48 89 D6 E8 82 02 00 00 48 89 ...H..H.......H.
000000000046AAA0 D9 48 89 F2 E9 6C FF FF FF 48 8D 0D 30 FE 01 00 .H...l...H..0...
000000000046AAB0 48 89 C3 48 89 D6 E8 65 02 00 00 48 89 D9 48 89 H..H...e...H..H.
000000000046AAC0 F2 E9 4F FF FF FF 48 8D 0D 53 ED 01 00 48 89 C3 ..O...H..S...H..
000000000046AAD0 48 89 D6 E8 48 02 00 00 48 89 D9 48 89 F2 E9 32 H...H...H..H...2
000000000046AAE0 FF FF FF 48 8D 0D F6 EE 01 00 48 89 C3 48 89 D6 ...H......H..H..
000000000046AAF0 E8 2B 02 00 00 48 89 D9 48 89 F2 E9 15 FF FF FF .+...H..H.......
000000000046AB00 E8 0B AE 00 00 90 90 90 90 90 90 90 90 90 90 90 ................

;; fn000000000046AB10: 000000000046AB10
;;   Called from:
;;     000000000046AF36 (in fn000000000046AF20)
;;     000000000046AF8A (in fn000000000046AF60)
fn000000000046AB10 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	mov	rbx,rcx
	mov	rcx,[rcx+8h]
	test	rcx,rcx
	jz	46AB6Ah

l000000000046AB22:
	cmp	qword ptr [rbx+10h],0h
	jz	46AB65h

l000000000046AB29:
	xor	esi,esi
	jmp	46AB3Eh
000000000046AB2D                                        0F 1F 00              ...

l000000000046AB30:
	mov	rcx,[rbx+8h]

l000000000046AB34:
	add	rsi,1h
	cmp	[rbx+10h],rsi
	jbe	46AB60h

l000000000046AB3E:
	mov	rax,[rcx+rsi*8]
	test	rax,rax
	jz	46AB34h

l000000000046AB47:
	lock
	sub	dword ptr [rax+8h],1h
	jnz	46AB30h

l000000000046AB4E:
	mov	rdx,[rax]
	mov	rcx,rax
	call	qword ptr [rdx+8h]
	jmp	46AB30h
000000000046AB59                            0F 1F 80 00 00 00 00          .......

l000000000046AB60:
	test	rcx,rcx
	jz	46AB6Ah

l000000000046AB65:
	call	475540h

l000000000046AB6A:
	mov	rcx,[rbx+18h]
	test	rcx,rcx
	jz	46ABBAh

l000000000046AB73:
	cmp	qword ptr [rbx+10h],0h
	jz	46ABB5h

l000000000046AB7A:
	xor	esi,esi
	jmp	46AB8Eh
000000000046AB7E                                           66 90               f.

l000000000046AB80:
	mov	rcx,[rbx+18h]

l000000000046AB84:
	add	rsi,1h
	cmp	[rbx+10h],rsi
	jbe	46ABB0h

l000000000046AB8E:
	mov	rax,[rcx+rsi*8]
	test	rax,rax
	jz	46AB84h

l000000000046AB97:
	lock
	sub	dword ptr [rax+8h],1h
	jnz	46AB80h

l000000000046AB9E:
	mov	rdx,[rax]
	mov	rcx,rax
	call	qword ptr [rdx+8h]
	jmp	46AB80h
000000000046ABA9                            0F 1F 80 00 00 00 00          .......

l000000000046ABB0:
	test	rcx,rcx
	jz	46ABBAh

l000000000046ABB5:
	call	475540h

l000000000046ABBA:
	mov	rax,[rbx+20h]
	xor	esi,esi
	test	rax,rax
	jz	46ABF4h

l000000000046ABC5:
	mov	rcx,[rax+rsi]
	test	rcx,rcx
	jz	46ABD7h

l000000000046ABCE:
	call	475540h
	mov	rax,[rbx+20h]

l000000000046ABD7:
	add	rsi,8h
	cmp	rsi,30h
	jnz	46ABC5h

l000000000046ABE1:
	test	rax,rax
	jz	46ABF4h

l000000000046ABE6:
	mov	rcx,rax
	add	rsp,28h
	pop	rbx
	pop	rsi
	jmp	475540h

l000000000046ABF4:
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret
000000000046ABFB                                  48 89 C1 E8 3D            H...=
000000000046AC00 AC 00 00 E8 68 AE 00 00 E9 73 FF FF FF 48 89 C1 ....h....s...H..
000000000046AC10 E8 2B AC 00 00 E8 56 AE 00 00 E9 11 FF FF FF 48 .+....V........H
000000000046AC20 83 C2 01 48 89 C1 74 07 E8 83 69 FA FF EB F0 E8 ...H..t...i.....
000000000046AC30 DC AC 00 00 90 90 90 90 90 90 90 90 90 90 90 90 ................

;; fn000000000046AC40: 000000000046AC40
;;   Called from:
;;     0000000000453AD2 (in fn0000000000453AB0)
;;     0000000000453B40 (in fn0000000000453B10)
;;     0000000000453C06 (in fn0000000000453BE0)
;;     0000000000453C62 (in fn0000000000453C40)
;;     0000000000453CD0 (in fn0000000000453CA0)
;;     0000000000453D96 (in fn0000000000453D70)
;;     0000000000453E07 (in fn0000000000453DF0)
;;     0000000000453E77 (in fn0000000000453E60)
;;     0000000000454372 (in fn0000000000454350)
;;     00000000004543E0 (in fn00000000004543B0)
;;     00000000004544A6 (in fn0000000000454480)
;;     0000000000454502 (in fn00000000004544E0)
;;     0000000000454570 (in fn0000000000454540)
;;     0000000000454636 (in fn0000000000454610)
;;     00000000004546A7 (in fn0000000000454690)
;;     0000000000454717 (in fn0000000000454700)
;;     0000000000469A60 (in fn00000000004699E0)
fn000000000046AC40 proc
	lea	rax,[0000000000492650]                                 ; [rip+00027A09]
	ret
000000000046AC48                         90 90 90 90 90 90 90 90         ........

;; fn000000000046AC50: 000000000046AC50
;;   Called from:
;;     0000000000431F18 (in fn0000000000431E50)
;;     0000000000432138 (in fn0000000000432070)
;;     0000000000432358 (in fn0000000000432290)
;;     0000000000437A37 (in fn0000000000437980)
;;     0000000000437C47 (in fn0000000000437B90)
;;     0000000000437E57 (in fn0000000000437DA0)
;;     0000000000438FEC (in fn0000000000438F60)
;;     000000000043923B (in fn0000000000438F60)
;;     000000000043937F (in fn00000000004392F0)
;;     00000000004395CB (in fn00000000004392F0)
;;     000000000043AD44 (in fn000000000043AC90)
;;     000000000043AF4B (in fn000000000043AC90)
;;     000000000043B11F (in fn000000000043B070)
;;     000000000043B33B (in fn000000000043B070)
;;     0000000000444578 (in fn00000000004444B0)
;;     00000000004467DF (in fn0000000000446720)
;;     0000000000446A18 (in fn00000000004469A0)
;;     0000000000446A78 (in fn00000000004469A0)
;;     0000000000447B47 (in fn0000000000447AD0)
;;     0000000000447BA8 (in fn0000000000447AD0)
;;     0000000000461C63 (in fn0000000000461C40)
;;     0000000000461D13 (in fn0000000000461CF0)
;;     0000000000461E93 (in fn0000000000461E70)
;;     0000000000461F43 (in fn0000000000461F20)
;;     0000000000468F9E (in fn0000000000468F80)
;;     0000000000469C2F (in fn00000000004699E0)
;;     000000000046A37B (in fn00000000004699E0)
;;     000000000046BC1E (in fn000000000046BC00)
;;     000000000046BD2E (in fn000000000046BD10)
;;     000000000046BE3E (in fn000000000046BE20)
;;     000000000046BECE (in fn000000000046BEB0)
;;     000000000046C02E (in fn000000000046C010)
;;     000000000046C0BE (in fn000000000046C0A0)
;;     000000000046D44E (in fn000000000046D430)
;;     000000000046D49E (in fn000000000046D480)
;;     000000000046D4EE (in fn000000000046D4D0)
;;     000000000046D53E (in fn000000000046D520)
;;     000000000046D62E (in fn000000000046D610)
;;     000000000046D67E (in fn000000000046D660)
;;     000000000046D6CE (in fn000000000046D6B0)
;;     000000000046D71E (in fn000000000046D700)
fn000000000046AC50 proc
	sub	rsp,28h
	lea	rdx,[000000000046ACD0]                                 ; [rip+00000075]
	lea	rcx,[000000000048B490]                                 ; [rip+0002082E]
	call	41DEE0h
	mov	rax,[000000000048B480]                                 ; [rip+00020812]
	add	rsp,28h
	ret
000000000046AC73          90 90 90 90 90 90 90 90 90 90 90 90 90    .............

;; fn000000000046AC80: 000000000046AC80
;;   Called from:
;;     0000000000468F57 (in fn0000000000468F30)
;;     000000000046BBE7 (in fn000000000046BBC0)
;;     000000000046BCF7 (in fn000000000046BCD0)
;;     000000000046BE07 (in fn000000000046BDE0)
;;     000000000046BE97 (in fn000000000046BE70)
;;     000000000046BFF7 (in fn000000000046BFD0)
;;     000000000046C087 (in fn000000000046C060)
fn000000000046AC80 proc
	xor	eax,eax
	ret
000000000046AC83          90 90 90 90 90 90 90 90 90 90 90 90 90    .............

;; fn000000000046AC90: 000000000046AC90
;;   Called from:
;;     0000000000455119 (in fn00000000004550B0)
;;     00000000004551E5 (in fn0000000000455180)
;;     00000000004619C5 (in fn0000000000461960)
;;     0000000000461A55 (in fn00000000004619F0)
;;     0000000000461B35 (in fn0000000000461AD0)
;;     0000000000461BC5 (in fn0000000000461B60)
;;     0000000000461CBA (in fn0000000000461C40)
;;     0000000000461D6A (in fn0000000000461CF0)
;;     0000000000461EEA (in fn0000000000461E70)
;;     0000000000461F9A (in fn0000000000461F20)
;;     0000000000463555 (in fn00000000004634F0)
;;     00000000004635E5 (in fn0000000000463580)
;;     00000000004636C5 (in fn0000000000463660)
;;     0000000000463755 (in fn00000000004636F0)
;;     000000000046384E (in fn00000000004637D0)
;;     000000000046391E (in fn00000000004638A0)
;;     0000000000463A3E (in fn00000000004639C0)
;;     0000000000463B0E (in fn0000000000463A90)
;;     0000000000465A5E (in fn00000000004659E0)
;;     0000000000465B2E (in fn0000000000465AB0)
;;     0000000000465C4E (in fn0000000000465BD0)
;;     0000000000465D1E (in fn0000000000465CA0)
;;     0000000000465E3E (in fn0000000000465DC0)
;;     0000000000465F0E (in fn0000000000465E90)
;;     000000000046602E (in fn0000000000465FB0)
;;     00000000004660FE (in fn0000000000466080)
;;     000000000046ACE1 (in fn000000000046ACD0)
fn000000000046AC90 proc
	push	rdi
	push	rsi
	sub	rsp,28h
	lea	rdi,[000000000048E1C0]                                 ; [rip+00023523]
	mov	qword ptr [rcx],+0h
	mov	rsi,rdx
	mov	ecx,2h

l000000000046ACAC:
	rep cmpsb

l000000000046ACAE:
	jnz	46ACB7h

l000000000046ACB0:
	add	rsp,28h
	pop	rsi
	pop	rdi
	ret

l000000000046ACB7:
	lea	rcx,[000000000048E1C8]                                 ; [rip+0002350A]
	call	4712A0h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop

;; fn000000000046ACD0: 000000000046ACD0
;;   Called from:
;;     000000000046ACBE (in fn000000000046AC90)
fn000000000046ACD0 proc
	lea	rdx,[0000000000492650]                                 ; [rip+00027979]
	lea	rcx,[000000000048B480]                                 ; [rip+000207A2]
	xor	r8d,r8d
	jmp	46AC90h
000000000046ACE6                   90 90 90 90 90 90 90 90 90 90       ..........

;; fn000000000046ACF0: 000000000046ACF0
;;   Called from:
;;     0000000000453E31 (in fn0000000000453DF0)
;;     0000000000453EA1 (in fn0000000000453E60)
;;     00000000004546D1 (in fn0000000000454690)
;;     0000000000454741 (in fn0000000000454700)
;;     000000000045510B (in fn00000000004550B0)
;;     00000000004551D7 (in fn0000000000455180)
;;     00000000004619B7 (in fn0000000000461960)
;;     0000000000461A47 (in fn00000000004619F0)
;;     0000000000461B27 (in fn0000000000461AD0)
;;     0000000000461BB7 (in fn0000000000461B60)
;;     0000000000461CAC (in fn0000000000461C40)
;;     0000000000461D5C (in fn0000000000461CF0)
;;     0000000000461DB8 (in fn0000000000461DA0)
;;     0000000000461E08 (in fn0000000000461DF0)
;;     0000000000461E48 (in fn0000000000461E30)
;;     0000000000461EDC (in fn0000000000461E70)
;;     0000000000461F8C (in fn0000000000461F20)
;;     0000000000461FE8 (in fn0000000000461FD0)
;;     0000000000462038 (in fn0000000000462020)
;;     0000000000462078 (in fn0000000000462060)
;;     0000000000463547 (in fn00000000004634F0)
;;     00000000004635D7 (in fn0000000000463580)
;;     00000000004636B7 (in fn0000000000463660)
;;     0000000000463747 (in fn00000000004636F0)
;;     0000000000463863 (in fn00000000004637D0)
;;     0000000000463933 (in fn00000000004638A0)
;;     0000000000463A53 (in fn00000000004639C0)
;;     0000000000463B23 (in fn0000000000463A90)
;;     0000000000465A76 (in fn00000000004659E0)
;;     0000000000465B46 (in fn0000000000465AB0)
;;     0000000000465C66 (in fn0000000000465BD0)
;;     0000000000465D36 (in fn0000000000465CA0)
;;     0000000000465E56 (in fn0000000000465DC0)
;;     0000000000465F26 (in fn0000000000465E90)
;;     0000000000466046 (in fn0000000000465FB0)
;;     0000000000466116 (in fn0000000000466080)
;;     0000000000468E48 (in fn0000000000468E30)
;;     0000000000469018 (in fn0000000000469000)
;;     000000000046BC88 (in fn000000000046BC70)
;;     000000000046BD98 (in fn000000000046BD80)
;;     000000000046BF18 (in fn000000000046BF00)
;;     000000000046BF68 (in fn000000000046BF50)
;;     000000000046BFA8 (in fn000000000046BF90)
;;     000000000046C108 (in fn000000000046C0F0)
;;     000000000046C158 (in fn000000000046C140)
;;     000000000046C198 (in fn000000000046C180)
;;     000000000046D5A8 (in fn000000000046D590)
;;     000000000046D5E8 (in fn000000000046D5D0)
;;     000000000046D788 (in fn000000000046D770)
;;     000000000046D7C8 (in fn000000000046D7B0)
fn000000000046ACF0 proc
	mov	qword ptr [rcx],+0h
	ret
000000000046ACF8                         90 90 90 90 90 90 90 90         ........

;; fn000000000046AD00: 000000000046AD00
fn000000000046AD00 proc
	xor	eax,eax
	ret
000000000046AD03          90 90 90 90 90 90 90 90 90 90 90 90 90    .............

;; fn000000000046AD10: 000000000046AD10
fn000000000046AD10 proc
	jmp	475550h
000000000046AD15                90 90 90 90 90 90 90 90 90 90 90      ...........

;; fn000000000046AD20: 000000000046AD20
;;   Called from:
;;     0000000000452AAF (in fn0000000000452A80)
;;     0000000000452E3F (in fn0000000000452E10)
;;     00000000004531EF (in fn00000000004531C0)
;;     000000000045359F (in fn0000000000453570)
;;     0000000000453E3F (in fn0000000000453DF0)
;;     0000000000453EAF (in fn0000000000453E60)
;;     00000000004546DF (in fn0000000000454690)
;;     000000000045474F (in fn0000000000454700)
;;     0000000000461DC0 (in fn0000000000461DA0)
;;     0000000000461E16 (in fn0000000000461DF0)
;;     0000000000461E56 (in fn0000000000461E30)
;;     0000000000461FF0 (in fn0000000000461FD0)
;;     0000000000462046 (in fn0000000000462020)
;;     0000000000462086 (in fn0000000000462060)
;;     0000000000463C02 (in fn0000000000463BF0)
;;     0000000000463C2A (in fn0000000000463C20)
;;     0000000000463C3A (in fn0000000000463C30)
;;     0000000000463C92 (in fn0000000000463C80)
;;     0000000000463CBA (in fn0000000000463CB0)
;;     0000000000463CCA (in fn0000000000463CC0)
;;     0000000000463D22 (in fn0000000000463D10)
;;     0000000000463D4A (in fn0000000000463D40)
;;     0000000000463D5A (in fn0000000000463D50)
;;     0000000000463DB2 (in fn0000000000463DA0)
;;     0000000000463DDA (in fn0000000000463DD0)
;;     0000000000463DEA (in fn0000000000463DE0)
;;     000000000046455D (in fn0000000000464510)
;;     00000000004645BD (in fn0000000000464570)
;;     0000000000464C4D (in fn0000000000464C00)
;;     0000000000464CAD (in fn0000000000464C60)
;;     0000000000465512 (in fn0000000000465500)
;;     000000000046553A (in fn0000000000465530)
;;     000000000046554A (in fn0000000000465540)
;;     0000000000465962 (in fn0000000000465950)
;;     000000000046598A (in fn0000000000465980)
;;     000000000046599A (in fn0000000000465990)
;;     0000000000466AA8 (in fn0000000000466A50)
;;     0000000000466B08 (in fn0000000000466AB0)
;;     0000000000467418 (in fn00000000004673C0)
;;     0000000000467478 (in fn0000000000467420)
;;     0000000000467DA8 (in fn0000000000467D50)
;;     0000000000467E08 (in fn0000000000467DB0)
;;     0000000000468738 (in fn00000000004686E0)
;;     0000000000468798 (in fn0000000000468740)
;;     0000000000468E6A (in fn0000000000468E30)
;;     0000000000469034 (in fn0000000000469000)
;;     000000000046BCA4 (in fn000000000046BC70)
;;     000000000046BDB4 (in fn000000000046BD80)
;;     000000000046BF20 (in fn000000000046BF00)
;;     000000000046BF76 (in fn000000000046BF50)
;;     000000000046BFB6 (in fn000000000046BF90)
;;     000000000046C110 (in fn000000000046C0F0)
;;     000000000046C166 (in fn000000000046C140)
;;     000000000046C1A6 (in fn000000000046C180)
;;     000000000046C212 (in fn000000000046C200)
;;     000000000046C23A (in fn000000000046C230)
;;     000000000046C24A (in fn000000000046C240)
;;     000000000046C2A2 (in fn000000000046C290)
;;     000000000046C2CA (in fn000000000046C2C0)
;;     000000000046C2DA (in fn000000000046C2D0)
;;     000000000046C332 (in fn000000000046C320)
;;     000000000046C35A (in fn000000000046C350)
;;     000000000046C36A (in fn000000000046C360)
;;     000000000046C3C2 (in fn000000000046C3B0)
;;     000000000046C3EA (in fn000000000046C3E0)
;;     000000000046C3FA (in fn000000000046C3F0)
;;     000000000046D5B6 (in fn000000000046D590)
;;     000000000046D5F6 (in fn000000000046D5D0)
;;     000000000046D796 (in fn000000000046D770)
;;     000000000046D7D6 (in fn000000000046D7B0)
;;     000000000046DB4F (in fn000000000046DB20)
;;     000000000046DECF (in fn000000000046DEA0)
;;     000000000046DF42 (in fn000000000046DF30)
;;     000000000046DF6A (in fn000000000046DF60)
;;     000000000046DF7A (in fn000000000046DF70)
;;     000000000046DFD2 (in fn000000000046DFC0)
;;     000000000046DFFA (in fn000000000046DFF0)
;;     000000000046E00A (in fn000000000046E000)
;;     000000000046E062 (in fn000000000046E050)
;;     000000000046E08A (in fn000000000046E080)
;;     000000000046E09A (in fn000000000046E090)
;;     000000000046E0F2 (in fn000000000046E0E0)
;;     000000000046E11A (in fn000000000046E110)
;;     000000000046E12A (in fn000000000046E120)
;;     000000000046F152 (in fn000000000046F140)
;;     000000000046F17A (in fn000000000046F170)
;;     000000000046F18A (in fn000000000046F180)
;;     000000000046F1E2 (in fn000000000046F1D0)
;;     000000000046F20A (in fn000000000046F200)
;;     000000000046F21A (in fn000000000046F210)
;;     000000000046F272 (in fn000000000046F260)
;;     000000000046F29A (in fn000000000046F290)
;;     000000000046F2AA (in fn000000000046F2A0)
;;     000000000046F302 (in fn000000000046F2F0)
;;     000000000046F32A (in fn000000000046F320)
;;     000000000046F33A (in fn000000000046F330)
fn000000000046AD20 proc
	ret
000000000046AD21    90 90 90 90 90 90 90 90 90 90 90 90 90 90 90  ...............

;; fn000000000046AD30: 000000000046AD30
fn000000000046AD30 proc
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,40h
	mov	rdi,rcx
	mov	rbx,rdx
	call	4692E0h
	call	424170h
	mov	rcx,rax
	mov	rsi,rax
	call	4208F0h
	test	eax,eax
	jnz	46AE03h

l000000000046AD5D:
	mov	rax,[0000000000491900]                                 ; [rip+00026B9C]
	mov	rdx,[rbx]
	mov	r12,[rax]
	lock
	add	dword ptr [rdx],1h
	mov	rdx,[rbx]
	lea	rbp,[rsp+30h]
	mov	[rax],rdx
	mov	rcx,rbp
	mov	rdx,rbx
	call	42BBA0h
	lea	rdx,[000000000048DD5E]                                 ; [rip+00022FD3]
	mov	rcx,rbp
	call	428AD0h
	test	eax,eax
	jz	46ADA3h

l000000000046AD97:
	mov	rdx,[rsp+30h]
	xor	ecx,ecx
	call	41BDB8h

l000000000046ADA3:
	mov	r8,[rsp+30h]
	mov	eax,0FFFFFFFFh
	lock
	xadd	[r8-8h],eax
	test	eax,eax
	jle	46ADE0h

l000000000046ADB7:
	mov	rcx,rsi
	call	4202A0h
	test	eax,eax
	jnz	46ADF0h

l000000000046ADC3:
	mov	rdx,r12
	mov	rcx,rdi
	call	46AE70h
	mov	rax,rdi
	add	rsp,40h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
000000000046ADDC                                     0F 1F 40 00             ..@.

l000000000046ADE0:
	lea	rdx,[rsp+2Fh]
	lea	rcx,[r8-18h]
	call	450A50h
	jmp	46ADB7h

l000000000046ADF0:
	call	426270h

l000000000046ADF5:
	add	rdx,1h
	mov	rcx,rax
	jz	46AE37h

l000000000046ADFE:
	call	4115B0h

l000000000046AE03:
	call	426240h
	mov	rbx,rax
	mov	rax,[rsp+30h]
	lea	rdx,[rsp+2Fh]
	lea	rcx,[rax-18h]
	call	450A60h

l000000000046AE1E:
	mov	rcx,rsi
	call	4202A0h
	test	eax,eax
	mov	rcx,rbx
	jz	46ADFEh

l000000000046AE2D:
	call	426270h
	mov	rbx,rax
	jmp	46AE1Eh

l000000000046AE37:
	call	475910h
	jmp	46ADF5h
000000000046AE3E                                           90 90               ..

;; fn000000000046AE40: 000000000046AE40
fn000000000046AE40 proc
	sub	rsp,28h
	call	4692E0h
	mov	rax,[00000000004918D0]                                 ; [rip+00026A80]
	lea	rcx,[000000000048A700]                                 ; [rip+0001F8A9]
	mov	rdx,[rax]
	call	46AE70h
	lea	rax,[000000000048A700]                                 ; [rip+0001F89A]
	add	rsp,28h
	ret
000000000046AE6B                                  90 90 90 90 90            .....

;; fn000000000046AE70: 000000000046AE70
;;   Called from:
;;     000000000046ADC9 (in fn000000000046AD30)
;;     000000000046AE5A (in fn000000000046AE40)
fn000000000046AE70 proc
	mov	[rcx],rdx
	ret
000000000046AE74             90 90 90 90 90 90 90 90 90 90 90 90     ............

;; fn000000000046AE80: 000000000046AE80
;;   Called from:
;;     000000000042AEAC (in fn000000000042AEA0)
;;     000000000042AF2C (in fn000000000042AF20)
;;     00000000004469FB (in fn00000000004469A0)
;;     0000000000447B2B (in fn0000000000447AD0)
;;     00000000004628D8 (in fn00000000004628C0)
;;     0000000000462A23 (in fn00000000004629E0)
;;     0000000000462AC3 (in fn0000000000462A80)
;;     0000000000463228 (in fn0000000000463210)
;;     0000000000463373 (in fn0000000000463330)
;;     0000000000463413 (in fn00000000004633D0)
;;     000000000046D1BB (in fn000000000046D1A0)
;;     000000000046E3CF (in fn000000000046E3B0)
;;     000000000046E40B (in fn000000000046E3B0)
;;     000000000046E5B1 (in fn000000000046E490)
;;     000000000046EB9F (in fn000000000046EB80)
;;     000000000046EBDB (in fn000000000046EB80)
;;     000000000046ED81 (in fn000000000046EC60)
;;     0000000000471693 (in fn0000000000471670)
;;     00000000004717B3 (in fn0000000000471790)
;;     0000000000474240 (in fn00000000004741E0)
;;     00000000004747AC (in fn0000000000474710)
;;     0000000000474ADE (in fn0000000000474A80)
;;     0000000000474FA3 (in fn0000000000474F00)
fn000000000046AE80 proc
	mov	rax,[rdx]
	mov	[rcx],rax
	lock
	add	dword ptr [rax],1h
	ret
000000000046AE8B                                  90 90 90 90 90            .....

;; fn000000000046AE90: 000000000046AE90
;;   Called from:
;;     000000000042592F (in fn00000000004258E0)
;;     000000000042599F (in fn0000000000425950)
;;     0000000000425D1F (in fn0000000000425CD0)
;;     0000000000425D9F (in fn0000000000425D50)
;;     0000000000456E77 (in fn0000000000456E20)
;;     0000000000456FD7 (in fn0000000000456F80)
;;     0000000000458C37 (in fn0000000000458BE0)
;;     0000000000458DA7 (in fn0000000000458D50)
;;     0000000000462A6F (in fn0000000000462A30)
;;     0000000000462B0F (in fn0000000000462AD0)
;;     00000000004633BF (in fn0000000000463380)
;;     000000000046345F (in fn0000000000463420)
;;     000000000046C9D6 (in fn000000000046C940)
;;     000000000046CA38 (in fn000000000046C940)
;;     000000000046CA93 (in fn000000000046C940)
;;     000000000046CCFD (in fn000000000046C940)
;;     000000000046CD63 (in fn000000000046C940)
;;     000000000046CDC2 (in fn000000000046C940)
;;     000000000046D238 (in fn000000000046D210)
;;     000000000046D3A3 (in fn000000000046D320)
fn000000000046AE90 proc
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,20h
	mov	qword ptr [rcx],+0h
	mov	rbx,rcx
	call	4692E0h
	mov	rsi,[0000000000491900]                                 ; [rip+00026A53]
	mov	rdx,[00000000004918D0]                                 ; [rip+00026A1C]
	mov	rax,[rsi]
	mov	[rbx],rax
	cmp	rax,[rdx]
	jz	46AEF4h

l000000000046AEBF:
	call	424170h
	mov	rcx,rax
	mov	rdi,rax
	call	4208F0h
	test	eax,eax
	jnz	46AF00h

l000000000046AED3:
	mov	rax,[rsi]
	lock
	add	dword ptr [rax],1h
	mov	rax,[rsi]
	mov	rcx,rdi
	mov	[rbx],rax
	call	4202A0h
	test	eax,eax
	jnz	46AF13h

l000000000046AEEC:
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	ret

l000000000046AEF4:
	lock
	add	dword ptr [rax],1h
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	ret

l000000000046AF00:
	call	426240h

l000000000046AF05:
	add	rdx,1h
	mov	rcx,rax
	jz	46AF1Ah

l000000000046AF0E:
	call	4115B0h

l000000000046AF13:
	call	426270h
	jmp	46AF05h

l000000000046AF1A:
	call	475910h
	nop

;; fn000000000046AF20: 000000000046AF20
;;   Called from:
;;     0000000000424F37 (in fn0000000000424F00)
;;     0000000000424FBD (in fn0000000000424F80)
;;     000000000042503D (in fn0000000000425000)
;;     00000000004253D7 (in fn00000000004253A0)
;;     000000000042545D (in fn0000000000425420)
;;     00000000004254DD (in fn00000000004254A0)
;;     00000000004259DB (in fn00000000004259C0)
;;     0000000000425A03 (in fn00000000004259F0)
;;     0000000000425DEB (in fn0000000000425DD0)
;;     0000000000425E13 (in fn0000000000425E00)
;;     0000000000446B58 (in fn00000000004469A0)
;;     0000000000447C60 (in fn0000000000447AD0)
;;     0000000000457112 (in fn00000000004570E0)
;;     0000000000457167 (in fn0000000000457130)
;;     00000000004571A7 (in fn0000000000457170)
;;     0000000000458EF2 (in fn0000000000458EC0)
;;     0000000000458F47 (in fn0000000000458F10)
;;     0000000000458F87 (in fn0000000000458F50)
;;     00000000004598BB (in fn0000000000459860)
;;     000000000045994B (in fn00000000004598F0)
;;     00000000004599D7 (in fn0000000000459980)
;;     000000000045A35B (in fn000000000045A300)
;;     000000000045A3EB (in fn000000000045A390)
;;     000000000045A477 (in fn000000000045A420)
;;     000000000045FBA0 (in fn000000000045FB50)
;;     000000000045FC20 (in fn000000000045FBD0)
;;     000000000045FC9F (in fn000000000045FC50)
;;     0000000000460420 (in fn00000000004603D0)
;;     00000000004604A0 (in fn0000000000460450)
;;     000000000046051F (in fn00000000004604D0)
;;     0000000000461010 (in fn0000000000460FC0)
;;     0000000000461090 (in fn0000000000461040)
;;     000000000046110F (in fn00000000004610C0)
;;     0000000000461840 (in fn00000000004617F0)
;;     00000000004618C0 (in fn0000000000461870)
;;     000000000046193F (in fn00000000004618F0)
;;     0000000000462B37 (in fn0000000000462B20)
;;     0000000000462B5F (in fn0000000000462B50)
;;     0000000000462B7F (in fn0000000000462B70)
;;     0000000000463487 (in fn0000000000463470)
;;     00000000004634AF (in fn00000000004634A0)
;;     00000000004634CF (in fn00000000004634C0)
;;     000000000046AF1F (in fn000000000046AE90)
;;     000000000046C63D (in fn000000000046C5F0)
;;     000000000046C650 (in fn000000000046C5F0)
;;     000000000046C663 (in fn000000000046C5F0)
;;     000000000046C682 (in fn000000000046C5F0)
;;     000000000046C695 (in fn000000000046C5F0)
;;     000000000046C6A8 (in fn000000000046C5F0)
;;     000000000046D24F (in fn000000000046D210)
;;     000000000046D422 (in fn000000000046D3D0)
;;     000000000046E3E5 (in fn000000000046E3B0)
;;     000000000046E42A (in fn000000000046E3B0)
;;     000000000046E5C4 (in fn000000000046E490)
;;     000000000046EBB5 (in fn000000000046EB80)
;;     000000000046EBFA (in fn000000000046EB80)
;;     000000000046ED94 (in fn000000000046EC60)
;;     00000000004716A6 (in fn0000000000471670)
;;     00000000004717C6 (in fn0000000000471790)
;;     0000000000474253 (in fn00000000004741E0)
;;     00000000004747BF (in fn0000000000474710)
;;     0000000000474AF1 (in fn0000000000474A80)
;;     0000000000474FB6 (in fn0000000000474F00)
fn000000000046AF20 proc
	push	rbx
	sub	rsp,20h
	mov	rbx,[rcx]
	lock
	sub	dword ptr [rbx],1h
	jnz	46AF50h

l000000000046AF2E:
	test	rbx,rbx
	jz	46AF50h

l000000000046AF33:
	mov	rcx,rbx
	call	46AB10h
	mov	rcx,rbx
	add	rsp,20h
	pop	rbx
	jmp	475550h
000000000046AF48                         0F 1F 84 00 00 00 00 00         ........

l000000000046AF50:
	add	rsp,20h
	pop	rbx
	ret
000000000046AF56                   90 90 90 90 90 90 90 90 90 90       ..........

;; fn000000000046AF60: 000000000046AF60
;;   Called from:
;;     00000000004628F6 (in fn00000000004628C0)
;;     0000000000463246 (in fn0000000000463210)
;;     000000000046D1C6 (in fn000000000046D1A0)
;;     000000000046D247 (in fn000000000046D210)
;;     000000000046E422 (in fn000000000046E3B0)
;;     000000000046E5BC (in fn000000000046E490)
;;     000000000046EBF2 (in fn000000000046EB80)
;;     000000000046ED8C (in fn000000000046EC60)
fn000000000046AF60 proc
	push	rbx
	sub	rsp,30h
	mov	rax,rcx
	mov	rcx,[rdx]
	lock
	add	dword ptr [rcx],1h
	mov	rbx,[rax]
	lock
	sub	dword ptr [rbx],1h
	jnz	46AFA1h

l000000000046AF78:
	test	rbx,rbx
	jz	46AFA1h

l000000000046AF7D:
	mov	rcx,rbx
	mov	[rsp+28h],rdx
	mov	[rsp+20h],rax
	call	46AB10h
	mov	rcx,rbx
	call	475550h
	mov	rdx,[rsp+28h]
	mov	rax,[rsp+20h]

l000000000046AFA1:
	mov	rdx,[rdx]
	mov	[rax],rdx
	add	rsp,30h
	pop	rbx
	ret
000000000046AFAD                                        90 90 90              ...

;; fn000000000046AFB0: 000000000046AFB0
;;   Called from:
;;     000000000046B613 (in fn000000000046B5F0)
fn000000000046AFB0 proc
	push	rbp
	mov	rbp,rsp
	sub	rsp,20h
	mov	[rbp+10h],rcx
	mov	[rbp+18h],rdx
	mov	rax,[rbp+10h]
	mov	rdx,[rax+8h]
	mov	rax,[rbp+10h]
	mov	rax,[rax+10h]
	cmp	rdx,rax
	jz	46B011h

l000000000046AFD5:
	mov	rax,[rbp+18h]
	mov	rcx,rax
	call	471B60h
	mov	rcx,rax
	mov	rax,[rbp+10h]
	mov	rdx,[rax+8h]
	mov	rax,[rbp+10h]
	mov	r8,rcx
	mov	rcx,rax
	call	464E90h
	mov	rax,[rbp+10h]
	mov	rax,[rax+8h]
	lea	rdx,[rax+8h]
	mov	rax,[rbp+10h]
	mov	[rax+8h],rdx
	jmp	46B02Ah

l000000000046B011:
	mov	rax,[rbp+18h]
	mov	rcx,rax
	call	471B60h
	mov	rdx,rax
	mov	rcx,[rbp+10h]
	call	46B220h
	nop

l000000000046B02A:
	add	rsp,20h
	pop	rbp
	ret

;; fn000000000046B030: 000000000046B030
;;   Called from:
;;     000000000046B681 (in fn000000000046B620)
fn000000000046B030 proc
	push	rbp
	push	rbx
	sub	rsp,48h
	lea	rbp,[rsp+80h]
	mov	[rbp-20h],rcx
	mov	[rbp-18h],rdx
	lea	r8,[000000000048D38A]                                  ; [rip+0002233D]
	mov	edx,1h
	mov	rcx,[rbp-20h]
	call	42BF60h
	mov	[rbp-50h],rax
	mov	rax,[rbp-20h]
	mov	rdx,[rbp-50h]
	mov	rcx,rax
	call	4549F0h
	mov	[rbp-58h],rax
	mov	rax,[rbp-58h]
	mov	[rbp-48h],rax
	mov	rax,[rbp-18h]
	mov	rcx,rax
	call	471B70h
	mov	rbx,rax
	mov	rcx,[rbp-20h]
	call	42C020h
	lea	rdx,[0000h+rax*8]
	mov	rax,[rbp-58h]
	add	rdx,rax
	mov	rax,[rbp-20h]
	mov	r8,rbx
	mov	rcx,rax
	call	464E50h
	mov	qword ptr [rbp-48h],+0h
	mov	rax,[rbp-20h]
	mov	rcx,rax
	call	454AD0h
	mov	r8,rax
	mov	rax,[rbp-20h]
	mov	rdx,[rax+8h]
	mov	rax,[rbp-20h]
	mov	rax,[rax]
	mov	rcx,[rbp-58h]
	mov	r9,r8
	mov	r8,rcx
	mov	rcx,rax
	call	471900h
	mov	[rbp-48h],rax
	add	qword ptr [rbp-48h],8h
	mov	rax,[rbp-20h]
	mov	rcx,rax
	call	454AD0h
	mov	rcx,rax
	mov	rax,[rbp-20h]
	mov	rdx,[rax+8h]
	mov	rax,[rbp-20h]
	mov	rax,[rax]
	mov	r8,rcx
	mov	rcx,rax
	call	472310h
	mov	rax,[rbp-20h]
	mov	rax,[rax+10h]
	mov	rdx,rax
	mov	rax,[rbp-20h]
	mov	rax,[rax]
	sub	rdx,rax
	mov	rax,rdx
	sar	rax,3h
	mov	rcx,rax
	mov	rax,[rbp-20h]
	mov	rdx,[rax]
	mov	rax,[rbp-20h]
	mov	r8,rcx
	mov	rcx,rax
	call	454A90h
	mov	rax,[rbp-20h]
	mov	rdx,[rbp-58h]
	mov	[rax],rdx
	mov	rax,[rbp-20h]
	mov	rdx,[rbp-48h]
	mov	[rax+8h],rdx
	mov	rax,[rbp-50h]
	lea	rdx,[0000h+rax*8]
	mov	rax,[rbp-58h]
	add	rdx,rax
	mov	rax,[rbp-20h]
	mov	[rax+10h],rdx
	jmp	46B20Eh
000000000046B187                      48 89 C3 E8 E1 A8 00 00 48        H.......H
000000000046B190 89 D8 48 89 C1 E8 16 64 FA FF 48 89 C1 E8 9E A6 ..H....d..H.....
000000000046B1A0 00 00 48 83 7D B8 00 75 26 48 8B 4D E0 E8 6E 0E ..H.}..u&H.M..n.
000000000046B1B0 FC FF 48 8D 14 C5 00 00 00 00 48 8B 45 A8 48 01 ..H.......H.E.H.
000000000046B1C0 C2 48 8B 45 E0 48 89 C1 E8 03 9C FF FF EB 22 48 .H.E.H........"H
000000000046B1D0 8B 45 E0 48 89 C1 E8 F5 98 FE FF 48 89 C1 48 8B .E.H.......H..H.
000000000046B1E0 55 B8 48 8B 45 A8 49 89 C8 48 89 C1 E8 1F 71 00 U.H.E.I..H....q.
000000000046B1F0 00 48 8B 45 E0 48 8B 4D B0 48 8B 55 A8 49 89 C8 .H.E.H.M.H.U.I..
000000000046B200 48 89 C1 E8 88 98 FE FF E8 53 AE 00 00 90       H........S.... 

l000000000046B20E:
	add	rsp,48h
	pop	rbx
	pop	rbp
	ret
000000000046B215                90 90 90 90 90 90 90 90 90 90 90      ...........

;; fn000000000046B220: 000000000046B220
;;   Called from:
;;     000000000046B024 (in fn000000000046AFB0)
fn000000000046B220 proc
	push	rbp
	push	rbx
	sub	rsp,48h
	lea	rbp,[rsp+80h]
	mov	[rbp-20h],rcx
	mov	[rbp-18h],rdx
	lea	r8,[000000000048D38A]                                  ; [rip+0002214D]
	mov	edx,1h
	mov	rcx,[rbp-20h]
	call	42BF60h
	mov	[rbp-50h],rax
	mov	rax,[rbp-20h]
	mov	rdx,[rbp-50h]
	mov	rcx,rax
	call	4549F0h
	mov	[rbp-58h],rax
	mov	rax,[rbp-58h]
	mov	[rbp-48h],rax
	mov	rax,[rbp-18h]
	mov	rcx,rax
	call	471B60h
	mov	rbx,rax
	mov	rcx,[rbp-20h]
	call	42C020h
	lea	rdx,[0000h+rax*8]
	mov	rax,[rbp-58h]
	add	rdx,rax
	mov	rax,[rbp-20h]
	mov	r8,rbx
	mov	rcx,rax
	call	464E90h
	mov	qword ptr [rbp-48h],+0h
	mov	rax,[rbp-20h]
	mov	rcx,rax
	call	454AD0h
	mov	r8,rax
	mov	rax,[rbp-20h]
	mov	rdx,[rax+8h]
	mov	rax,[rbp-20h]
	mov	rax,[rax]
	mov	rcx,[rbp-58h]
	mov	r9,r8
	mov	r8,rcx
	mov	rcx,rax
	call	471900h
	mov	[rbp-48h],rax
	add	qword ptr [rbp-48h],8h
	mov	rax,[rbp-20h]
	mov	rcx,rax
	call	454AD0h
	mov	rcx,rax
	mov	rax,[rbp-20h]
	mov	rdx,[rax+8h]
	mov	rax,[rbp-20h]
	mov	rax,[rax]
	mov	r8,rcx
	mov	rcx,rax
	call	472310h
	mov	rax,[rbp-20h]
	mov	rax,[rax+10h]
	mov	rdx,rax
	mov	rax,[rbp-20h]
	mov	rax,[rax]
	sub	rdx,rax
	mov	rax,rdx
	sar	rax,3h
	mov	rcx,rax
	mov	rax,[rbp-20h]
	mov	rdx,[rax]
	mov	rax,[rbp-20h]
	mov	r8,rcx
	mov	rcx,rax
	call	454A90h
	mov	rax,[rbp-20h]
	mov	rdx,[rbp-58h]
	mov	[rax],rdx
	mov	rax,[rbp-20h]
	mov	rdx,[rbp-48h]
	mov	[rax+8h],rdx
	mov	rax,[rbp-50h]
	lea	rdx,[0000h+rax*8]
	mov	rax,[rbp-58h]
	add	rdx,rax
	mov	rax,[rbp-20h]
	mov	[rax+10h],rdx
	jmp	46B3FEh
000000000046B377                      48 89 C3 E8 F1 A6 00 00 48        H.......H
000000000046B380 89 D8 48 89 C1 E8 26 62 FA FF 48 89 C1 E8 AE A4 ..H...&b..H.....
000000000046B390 00 00 48 83 7D B8 00 75 26 48 8B 4D E0 E8 7E 0C ..H.}..u&H.M..~.
000000000046B3A0 FC FF 48 8D 14 C5 00 00 00 00 48 8B 45 A8 48 01 ..H.......H.E.H.
000000000046B3B0 C2 48 8B 45 E0 48 89 C1 E8 13 9A FF FF EB 22 48 .H.E.H........"H
000000000046B3C0 8B 45 E0 48 89 C1 E8 05 97 FE FF 48 89 C1 48 8B .E.H.......H..H.
000000000046B3D0 55 B8 48 8B 45 A8 49 89 C8 48 89 C1 E8 2F 6F 00 U.H.E.I..H.../o.
000000000046B3E0 00 48 8B 45 E0 48 8B 4D B0 48 8B 55 A8 49 89 C8 .H.E.H.M.H.U.I..
000000000046B3F0 48 89 C1 E8 98 96 FE FF E8 63 AC 00 00 90       H........c.... 

l000000000046B3FE:
	add	rsp,48h
	pop	rbx
	pop	rbp
	ret
000000000046B405                90 90 90 90 90 90 90 90 90 90 90      ...........

;; fn000000000046B410: 000000000046B410
;;   Called from:
;;     000000000046B541 (in fn000000000046B4B0)
fn000000000046B410 proc
	push	rbp
	push	rbx
	sub	rsp,38h
	lea	rbp,[rsp+80h]
	mov	[rbp-30h],rcx
	mov	[rbp-28h],rdx
	mov	[rbp-20h],r8
	mov	[rbp-18h],r9
	mov	rax,[rbp-30h]
	mov	rdx,[rbp-28h]
	mov	rcx,rax
	call	4549F0h
	mov	[rbp-58h],rax
	mov	rax,[rbp-30h]
	mov	rcx,rax
	call	454AD0h
	mov	r8,rax
	mov	rcx,[rbp-58h]
	mov	rdx,[rbp-18h]
	mov	rax,[rbp-20h]
	mov	r9,r8
	mov	r8,rcx
	mov	rcx,rax
	call	4713C0h
	mov	rax,[rbp-58h]
	jmp	46B4A9h
000000000046B471    48 89 C3 E8 F7 A5 00 00 48 89 D8 48 89 C1 E8  H.......H..H...
000000000046B480 2C 61 FA FF 48 89 C1 E8 B4 A3 00 00 48 8B 45 D0 ,a..H.......H.E.
000000000046B490 48 8B 4D D8 48 8B 55 A8 49 89 C8 48 89 C1 E8 ED H.M.H.U.I..H....
000000000046B4A0 95 FE FF E8 B8 AB 00 00 90                      .........      

l000000000046B4A9:
	add	rsp,38h
	pop	rbx
	pop	rbp
	ret

;; fn000000000046B4B0: 000000000046B4B0
;;   Called from:
;;     0000000000402D71 (in fn0000000000402C4E)
;;     00000000004244C1 (in fn0000000000424480)
;;     0000000000424832 (in fn00000000004247F0)
fn000000000046B4B0 proc
	push	rbp
	push	rbx
	sub	rsp,38h
	lea	rbp,[rsp+80h]
	mov	[rbp-30h],rcx
	mov	[rbp-28h],rdx
	mov	rcx,[rbp-30h]
	call	42C080h
	cmp	rax,[rbp-28h]
	setc	al
	test	al,al
	jz	46B4E6h

l000000000046B4DA:
	lea	rcx,[000000000048D37A]                                 ; [rip+00021E99]
	call	470E60h

l000000000046B4E6:
	mov	rcx,[rbp-30h]
	call	42C050h
	cmp	rax,[rbp-28h]
	setc	al
	test	al,al
	jz	46B5E8h

l000000000046B4FE:
	mov	rcx,[rbp-30h]
	call	42C020h
	mov	[rbp-58h],rax
	mov	rax,[rbp-30h]
	mov	rax,[rax+8h]
	mov	rcx,rax
	call	4718A0h
	mov	rbx,rax
	mov	rax,[rbp-30h]
	mov	rax,[rax]
	mov	rcx,rax
	call	4718A0h
	mov	rdx,rax
	mov	rax,[rbp-28h]
	mov	r9,rbx
	mov	r8,rdx
	mov	rdx,rax
	mov	rcx,[rbp-30h]
	call	46B410h
	mov	[rbp-60h],rax
	mov	rax,[rbp-30h]
	mov	rcx,rax
	call	454AD0h
	mov	rcx,rax
	mov	rax,[rbp-30h]
	mov	rdx,[rax+8h]
	mov	rax,[rbp-30h]
	mov	rax,[rax]
	mov	r8,rcx
	mov	rcx,rax
	call	472310h
	mov	rax,[rbp-30h]
	mov	rax,[rax+10h]
	mov	rdx,rax
	mov	rax,[rbp-30h]
	mov	rax,[rax]
	sub	rdx,rax
	mov	rax,rdx
	sar	rax,3h
	mov	rcx,rax
	mov	rax,[rbp-30h]
	mov	rdx,[rax]
	mov	rax,[rbp-30h]
	mov	r8,rcx
	mov	rcx,rax
	call	454A90h
	mov	rax,[rbp-30h]
	mov	rdx,[rbp-60h]
	mov	[rax],rdx
	mov	rax,[rbp-58h]
	lea	rdx,[0000h+rax*8]
	mov	rax,[rbp-60h]
	add	rdx,rax
	mov	rax,[rbp-30h]
	mov	[rax+8h],rdx
	mov	rax,[rbp-30h]
	mov	rax,[rax]
	mov	rdx,[rbp-28h]
	shl	rdx,3h
	add	rdx,rax
	mov	rax,[rbp-30h]
	mov	[rax+10h],rdx

l000000000046B5E8:
	add	rsp,38h
	pop	rbx
	pop	rbp
	ret
000000000046B5EF                                              90                .

;; fn000000000046B5F0: 000000000046B5F0
;;   Called from:
;;     0000000000424502 (in fn0000000000424480)
;;     0000000000424893 (in fn00000000004247F0)
fn000000000046B5F0 proc
	push	rbp
	mov	rbp,rsp
	sub	rsp,20h
	mov	[rbp+10h],rcx
	mov	[rbp+18h],rdx
	mov	rax,[rbp+18h]
	mov	rcx,rax
	call	471B20h
	mov	rdx,rax
	mov	rcx,[rbp+10h]
	call	46AFB0h
	nop
	add	rsp,20h
	pop	rbp
	ret
000000000046B61F                                              90                .

;; fn000000000046B620: 000000000046B620
;;   Called from:
;;     0000000000402DAE (in fn0000000000402C4E)
;;     000000000042445F (in fn0000000000424440)
fn000000000046B620 proc
	push	rbp
	mov	rbp,rsp
	sub	rsp,20h
	mov	[rbp+10h],rcx
	mov	[rbp+18h],rdx
	mov	rax,[rbp+10h]
	mov	rdx,[rax+8h]
	mov	rax,[rbp+10h]
	mov	rax,[rax+10h]
	cmp	rdx,rax
	jz	46B676h

l000000000046B645:
	mov	rax,[rbp+10h]
	mov	rdx,[rax+8h]
	mov	rax,[rbp+10h]
	mov	rcx,[rbp+18h]
	mov	r8,rcx
	mov	rcx,rax
	call	464E50h
	mov	rax,[rbp+10h]
	mov	rax,[rax+8h]
	lea	rdx,[rax+8h]
	mov	rax,[rbp+10h]
	mov	[rax+8h],rdx
	jmp	46B687h

l000000000046B676:
	mov	rax,[rbp+18h]
	mov	rdx,rax
	mov	rcx,[rbp+10h]
	call	46B030h
	nop

l000000000046B687:
	add	rsp,20h
	pop	rbp
	ret
000000000046B68D                                        90 90 90              ...

;; fn000000000046B690: 000000000046B690
;;   Called from:
;;     0000000000402D59 (in fn0000000000402C4E)
;;     0000000000424907 (in fn00000000004248F0)
fn000000000046B690 proc
	push	rbp
	mov	rbp,rsp
	sub	rsp,20h
	mov	[rbp+10h],rcx
	mov	rax,[rbp+10h]
	mov	rcx,rax
	call	454AE0h
	nop
	add	rsp,20h
	pop	rbp
	ret
000000000046B6AF                                              90                .

;; fn000000000046B6B0: 000000000046B6B0
;;   Called from:
;;     0000000000402E22 (in fn0000000000402C4E)
;;     00000000004249A7 (in fn0000000000424980)
fn000000000046B6B0 proc
	push	rbp
	mov	rbp,rsp
	sub	rsp,20h
	mov	[rbp+10h],rcx
	mov	rax,[rbp+10h]
	mov	rcx,rax
	call	454AD0h
	mov	rcx,rax
	mov	rax,[rbp+10h]
	mov	rdx,[rax+8h]
	mov	rax,[rbp+10h]
	mov	rax,[rax]
	mov	r8,rcx
	mov	rcx,rax
	call	472310h
	mov	rax,[rbp+10h]
	mov	rcx,rax
	call	454B00h
	nop
	add	rsp,20h
	pop	rbp
	ret
000000000046B6F8                         90 90 90 90 90 90 90 90         ........

;; fn000000000046B700: 000000000046B700
;;   Called from:
;;     0000000000401836 (in fn0000000000401530)
;;     0000000000401857 (in fn0000000000401530)
;;     00000000004019A6 (in fn0000000000401530)
;;     00000000004019C4 (in fn0000000000401530)
;;     0000000000402156 (in fn0000000000401530)
;;     0000000000402258 (in fn0000000000401530)
;;     0000000000402273 (in fn0000000000401530)
;;     000000000040241B (in fn0000000000401530)
;;     0000000000402439 (in fn0000000000401530)
;;     0000000000424584 (in fn0000000000424550)
;;     00000000004245C3 (in fn0000000000424550)
;;     00000000004245FA (in fn0000000000424550)
;;     000000000042462C (in fn0000000000424550)
;;     0000000000424646 (in fn0000000000424550)
;;     000000000042468A (in fn0000000000424550)
;;     00000000004246A5 (in fn0000000000424550)
;;     00000000004246E8 (in fn0000000000424550)
;;     0000000000424703 (in fn0000000000424550)
;;     000000000042472C (in fn0000000000424550)
;;     0000000000424776 (in fn0000000000424550)
;;     00000000004247C0 (in fn0000000000424550)
fn000000000046B700 proc
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

;; fn000000000046B720: 000000000046B720
;;   Called from:
;;     000000000046BB21 (in fn000000000046BAC0)
fn000000000046B720 proc
	push	rbp
	push	rbx
	sub	rsp,48h
	lea	rbp,[rsp+80h]
	mov	[rbp-20h],rcx
	mov	[rbp-18h],rdx
	lea	r8,[000000000048D38A]                                  ; [rip+00021C4D]
	mov	edx,1h
	mov	rcx,[rbp-20h]
	call	42C0D0h
	mov	[rbp-50h],rax
	mov	rax,[rbp-20h]
	mov	rdx,[rbp-50h]
	mov	rcx,rax
	call	454B60h
	mov	[rbp-58h],rax
	mov	rax,[rbp-58h]
	mov	[rbp-48h],rax
	mov	rax,[rbp-18h]
	mov	rcx,rax
	call	471B80h
	mov	rbx,rax
	mov	rcx,[rbp-20h]
	call	42C190h
	mov	rdx,rax
	mov	rax,[rbp-58h]
	add	rdx,rax
	mov	rax,[rbp-20h]
	mov	r8,rbx
	mov	rcx,rax
	call	465020h
	mov	qword ptr [rbp-48h],+0h
	mov	rax,[rbp-20h]
	mov	rcx,rax
	call	454C40h
	mov	r8,rax
	mov	rax,[rbp-20h]
	mov	rdx,[rax+8h]
	mov	rax,[rbp-20h]
	mov	rax,[rax]
	mov	rcx,[rbp-58h]
	mov	r9,r8
	mov	r8,rcx
	mov	rcx,rax
	call	471960h
	mov	[rbp-48h],rax
	add	qword ptr [rbp-48h],1h
	mov	rax,[rbp-20h]
	mov	rcx,rax
	call	454C40h
	mov	rcx,rax
	mov	rax,[rbp-20h]
	mov	rdx,[rax+8h]
	mov	rax,[rbp-20h]
	mov	rax,[rax]
	mov	r8,rcx
	mov	rcx,rax
	call	472370h
	mov	rax,[rbp-20h]
	mov	rax,[rax+10h]
	mov	rdx,rax
	mov	rax,[rbp-20h]
	mov	rax,[rax]
	sub	rdx,rax
	mov	rax,rdx
	mov	rcx,rax
	mov	rax,[rbp-20h]
	mov	rdx,[rax]
	mov	rax,[rbp-20h]
	mov	r8,rcx
	mov	rcx,rax
	call	454C00h
	mov	rax,[rbp-20h]
	mov	rdx,[rbp-58h]
	mov	[rax],rdx
	mov	rax,[rbp-20h]
	mov	rdx,[rbp-48h]
	mov	[rax+8h],rdx
	mov	rdx,[rbp-58h]
	mov	rax,[rbp-50h]
	add	rdx,rax
	mov	rax,[rbp-20h]
	mov	[rax+10h],rdx
	jmp	46B8E8h
000000000046B866                   48 89 C3 E8 02 A2 00 00 48 89       H.......H.
000000000046B870 D8 48 89 C1 E8 37 5D FA FF 48 89 C1 E8 BF 9F 00 .H...7]..H......
000000000046B880 00 48 83 7D B8 00 75 21 48 8B 4D E0 E8 FF 08 FC .H.}..u!H.M.....
000000000046B890 FF 48 89 C2 48 8B 45 A8 48 01 C2 48 8B 45 E0 48 .H..H.E.H..H.E.H
000000000046B8A0 89 C1 E8 F9 96 FF FF EB 22 48 8B 45 E0 48 89 C1 ........"H.E.H..
000000000046B8B0 E8 8B 93 FE FF 48 89 C1 48 8B 55 B8 48 8B 45 A8 .....H..H.U.H.E.
000000000046B8C0 49 89 C8 48 89 C1 E8 A5 6A 00 00 48 8B 45 E0 48 I..H....j..H.E.H
000000000046B8D0 8B 4D B0 48 8B 55 A8 49 89 C8 48 89 C1 E8 1E 93 .M.H.U.I..H.....
000000000046B8E0 FE FF E8 79 A7 00 00 90                         ...y....       

l000000000046B8E8:
	add	rsp,48h
	pop	rbx
	pop	rbp
	ret
000000000046B8EF                                              90                .

;; fn000000000046B8F0: 000000000046B8F0
;;   Called from:
;;     000000000046BA21 (in fn000000000046B990)
fn000000000046B8F0 proc
	push	rbp
	push	rbx
	sub	rsp,38h
	lea	rbp,[rsp+80h]
	mov	[rbp-30h],rcx
	mov	[rbp-28h],rdx
	mov	[rbp-20h],r8
	mov	[rbp-18h],r9
	mov	rax,[rbp-30h]
	mov	rdx,[rbp-28h]
	mov	rcx,rax
	call	454B60h
	mov	[rbp-58h],rax
	mov	rax,[rbp-30h]
	mov	rcx,rax
	call	454C40h
	mov	r8,rax
	mov	rcx,[rbp-58h]
	mov	rdx,[rbp-18h]
	mov	rax,[rbp-20h]
	mov	r9,r8
	mov	r8,rcx
	mov	rcx,rax
	call	471400h
	mov	rax,[rbp-58h]
	jmp	46B989h
000000000046B951    48 89 C3 E8 17 A1 00 00 48 89 D8 48 89 C1 E8  H.......H..H...
000000000046B960 4C 5C FA FF 48 89 C1 E8 D4 9E 00 00 48 8B 45 D0 L\..H.......H.E.
000000000046B970 48 8B 4D D8 48 8B 55 A8 49 89 C8 48 89 C1 E8 7D H.M.H.U.I..H...}
000000000046B980 92 FE FF E8 D8 A6 00 00 90                      .........      

l000000000046B989:
	add	rsp,38h
	pop	rbx
	pop	rbp
	ret

;; fn000000000046B990: 000000000046B990
;;   Called from:
;;     00000000004244D6 (in fn0000000000424480)
;;     0000000000424847 (in fn00000000004247F0)
fn000000000046B990 proc
	push	rbp
	push	rbx
	sub	rsp,38h
	lea	rbp,[rsp+80h]
	mov	[rbp-30h],rcx
	mov	[rbp-28h],rdx
	mov	rcx,[rbp-30h]
	call	42C1F0h
	cmp	rax,[rbp-28h]
	setc	al
	test	al,al
	jz	46B9C6h

l000000000046B9BA:
	lea	rcx,[000000000048D37A]                                 ; [rip+000219B9]
	call	470E60h

l000000000046B9C6:
	mov	rcx,[rbp-30h]
	call	42C1C0h
	cmp	rax,[rbp-28h]
	setc	al
	test	al,al
	jz	46BAB8h

l000000000046B9DE:
	mov	rcx,[rbp-30h]
	call	42C190h
	mov	[rbp-58h],rax
	mov	rax,[rbp-30h]
	mov	rax,[rax+8h]
	mov	rcx,rax
	call	4718D0h
	mov	rbx,rax
	mov	rax,[rbp-30h]
	mov	rax,[rax]
	mov	rcx,rax
	call	4718D0h
	mov	rdx,rax
	mov	rax,[rbp-28h]
	mov	r9,rbx
	mov	r8,rdx
	mov	rdx,rax
	mov	rcx,[rbp-30h]
	call	46B8F0h
	mov	[rbp-60h],rax
	mov	rax,[rbp-30h]
	mov	rcx,rax
	call	454C40h
	mov	rcx,rax
	mov	rax,[rbp-30h]
	mov	rdx,[rax+8h]
	mov	rax,[rbp-30h]
	mov	rax,[rax]
	mov	r8,rcx
	mov	rcx,rax
	call	472370h
	mov	rax,[rbp-30h]
	mov	rax,[rax+10h]
	mov	rdx,rax
	mov	rax,[rbp-30h]
	mov	rax,[rax]
	sub	rdx,rax
	mov	rax,rdx
	mov	rcx,rax
	mov	rax,[rbp-30h]
	mov	rdx,[rax]
	mov	rax,[rbp-30h]
	mov	r8,rcx
	mov	rcx,rax
	call	454C00h
	mov	rax,[rbp-30h]
	mov	rdx,[rbp-60h]
	mov	[rax],rdx
	mov	rdx,[rbp-60h]
	mov	rax,[rbp-58h]
	add	rdx,rax
	mov	rax,[rbp-30h]
	mov	[rax+8h],rdx
	mov	rax,[rbp-30h]
	mov	rdx,[rax]
	mov	rax,[rbp-28h]
	add	rdx,rax
	mov	rax,[rbp-30h]
	mov	[rax+10h],rdx

l000000000046BAB8:
	add	rsp,38h
	pop	rbx
	pop	rbp
	ret
000000000046BABF                                              90                .

;; fn000000000046BAC0: 000000000046BAC0
;;   Called from:
;;     000000000042451A (in fn0000000000424480)
;;     00000000004248AB (in fn00000000004247F0)
fn000000000046BAC0 proc
	push	rbp
	mov	rbp,rsp
	sub	rsp,20h
	mov	[rbp+10h],rcx
	mov	[rbp+18h],rdx
	mov	rax,[rbp+10h]
	mov	rdx,[rax+8h]
	mov	rax,[rbp+10h]
	mov	rax,[rax+10h]
	cmp	rdx,rax
	jz	46BB16h

l000000000046BAE5:
	mov	rax,[rbp+10h]
	mov	rdx,[rax+8h]
	mov	rax,[rbp+10h]
	mov	rcx,[rbp+18h]
	mov	r8,rcx
	mov	rcx,rax
	call	465020h
	mov	rax,[rbp+10h]
	mov	rax,[rax+8h]
	lea	rdx,[rax+1h]
	mov	rax,[rbp+10h]
	mov	[rax+8h],rdx
	jmp	46BB27h

l000000000046BB16:
	mov	rax,[rbp+18h]
	mov	rdx,rax
	mov	rcx,[rbp+10h]
	call	46B720h
	nop

l000000000046BB27:
	add	rsp,20h
	pop	rbp
	ret
000000000046BB2D                                        90 90 90              ...

;; fn000000000046BB30: 000000000046BB30
;;   Called from:
;;     0000000000424958 (in fn00000000004248F0)
fn000000000046BB30 proc
	push	rbp
	mov	rbp,rsp
	sub	rsp,20h
	mov	[rbp+10h],rcx
	mov	rax,[rbp+10h]
	mov	rcx,rax
	call	454C50h
	nop
	add	rsp,20h
	pop	rbp
	ret
000000000046BB4F                                              90                .

;; fn000000000046BB50: 000000000046BB50
;;   Called from:
;;     0000000000424997 (in fn0000000000424980)
fn000000000046BB50 proc
	push	rbp
	mov	rbp,rsp
	sub	rsp,20h
	mov	[rbp+10h],rcx
	mov	rax,[rbp+10h]
	mov	rcx,rax
	call	454C40h
	mov	rcx,rax
	mov	rax,[rbp+10h]
	mov	rdx,[rax+8h]
	mov	rax,[rbp+10h]
	mov	rax,[rax]
	mov	r8,rcx
	mov	rcx,rax
	call	472370h
	mov	rax,[rbp+10h]
	mov	rcx,rax
	call	454C70h
	nop
	add	rsp,20h
	pop	rbp
	ret
000000000046BB98                         90 90 90 90 90 90 90 90         ........

;; fn000000000046BBA0: 000000000046BBA0
;;   Called from:
;;     00000000004019F6 (in fn0000000000401530)
;;     00000000004022A2 (in fn0000000000401530)
;;     0000000000424666 (in fn0000000000424550)
;;     00000000004246C6 (in fn0000000000424550)
;;     0000000000424752 (in fn0000000000424550)
;;     000000000042479E (in fn0000000000424550)
fn000000000046BBA0 proc
	push	rbp
	mov	rbp,rsp
	mov	[rbp+10h],rcx
	mov	[rbp+18h],rdx
	mov	rax,[rbp+10h]
	mov	rdx,[rax]
	mov	rax,[rbp+18h]
	add	rax,rdx
	pop	rbp
	ret
000000000046BBBC                                     90 90 90 90             ....

;; fn000000000046BBC0: 000000000046BBC0
fn000000000046BBC0 proc
	push	rbx
	sub	rsp,20h
	xor	eax,eax
	test	r8,r8
	mov	rbx,rcx
	mov	[rsp+38h],rdx
	setnz	al
	mov	[rcx+8h],eax
	lea	rax,[0000000000497A50]                                 ; [rip+0002BE71]
	mov	[rcx],rax
	lea	rcx,[rsp+38h]
	call	46AC80h
	mov	[rbx+10h],rax
	add	rsp,20h
	pop	rbx
	ret
000000000046BBF6                   90 90 90 90 90 90 90 90 90 90       ..........

;; fn000000000046BC00: 000000000046BC00
;;   Called from:
;;     0000000000461978 (in fn0000000000461960)
;;     0000000000461A08 (in fn00000000004619F0)
;;     0000000000469ACC (in fn00000000004699E0)
fn000000000046BC00 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	xor	eax,eax
	test	rdx,rdx
	mov	rbx,rcx
	setnz	al
	mov	[rcx+8h],eax
	lea	rax,[0000000000497A50]                                 ; [rip+0002BE35]
	mov	[rcx],rax
	call	46AC50h
	mov	[rbx+10h],rax
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret
000000000046BC2E                                           48 89               H.
000000000046BC30 C6 48 8B 05 D8 60 02 00 48 89 D9 48 8D 50 10 48 .H...`..H..H.P.H
000000000046BC40 89 13 E8 D9 F0 FF FF 48 89 F1 E8 61 59 FA FF 90 .......H...aY...

;; fn000000000046BC50: 000000000046BC50
fn000000000046BC50 proc
	push	rbx
	sub	rsp,20h
	mov	rbx,rcx
	call	46BC70h
	mov	rcx,rbx
	add	rsp,20h
	pop	rbx
	jmp	475550h
000000000046BC6A                               90 90 90 90 90 90           ......

;; fn000000000046BC70: 000000000046BC70
;;   Called from:
;;     0000000000461A92 (in fn0000000000461A80)
;;     0000000000461ABA (in fn0000000000461AB0)
;;     0000000000461ACA (in fn0000000000461AC0)
;;     000000000046BC58 (in fn000000000046BC50)
fn000000000046BC70 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	lea	rax,[0000000000497A50]                                 ; [rip+0002BDD3]
	mov	rbx,rcx
	lea	rcx,[rcx+10h]
	mov	[rcx-10h],rax
	call	46ACF0h
	mov	rax,[0000000000491D10]                                 ; [rip+0002607C]
	mov	rcx,rbx
	add	rax,10h
	mov	[rbx],rax
	add	rsp,28h
	pop	rbx
	pop	rsi
	jmp	46AD20h
000000000046BCA9                            48 89 C6 48 8B 05 5D          H..H..]
000000000046BCB0 60 02 00 48 89 D9 48 8D 50 10 48 89 13 E8 5E F0 `..H..H.P.H...^.
000000000046BCC0 FF FF 48 89 F1 E8 E6 58 FA FF 90 90 90 90 90 90 ..H....X........

;; fn000000000046BCD0: 000000000046BCD0
fn000000000046BCD0 proc
	push	rbx
	sub	rsp,20h
	xor	eax,eax
	test	r8,r8
	mov	rbx,rcx
	mov	[rsp+38h],rdx
	setnz	al
	mov	[rcx+8h],eax
	lea	rax,[0000000000497AD0]                                 ; [rip+0002BDE1]
	mov	[rcx],rax
	lea	rcx,[rsp+38h]
	call	46AC80h
	mov	[rbx+10h],rax
	add	rsp,20h
	pop	rbx
	ret
000000000046BD06                   90 90 90 90 90 90 90 90 90 90       ..........

;; fn000000000046BD10: 000000000046BD10
;;   Called from:
;;     0000000000461AE8 (in fn0000000000461AD0)
;;     0000000000461B78 (in fn0000000000461B60)
;;     000000000046A210 (in fn00000000004699E0)
fn000000000046BD10 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	xor	eax,eax
	test	rdx,rdx
	mov	rbx,rcx
	setnz	al
	mov	[rcx+8h],eax
	lea	rax,[0000000000497AD0]                                 ; [rip+0002BDA5]
	mov	[rcx],rax
	call	46AC50h
	mov	[rbx+10h],rax
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret
000000000046BD3E                                           48 89               H.
000000000046BD40 C6 48 8B 05 D8 5F 02 00 48 89 D9 48 8D 50 10 48 .H..._..H..H.P.H
000000000046BD50 89 13 E8 C9 EF FF FF 48 89 F1 E8 51 58 FA FF 90 .......H...QX...

;; fn000000000046BD60: 000000000046BD60
fn000000000046BD60 proc
	push	rbx
	sub	rsp,20h
	mov	rbx,rcx
	call	46BD80h
	mov	rcx,rbx
	add	rsp,20h
	pop	rbx
	jmp	475550h
000000000046BD7A                               90 90 90 90 90 90           ......

;; fn000000000046BD80: 000000000046BD80
;;   Called from:
;;     0000000000461C02 (in fn0000000000461BF0)
;;     0000000000461C2A (in fn0000000000461C20)
;;     0000000000461C3A (in fn0000000000461C30)
;;     000000000046BD68 (in fn000000000046BD60)
fn000000000046BD80 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	lea	rax,[0000000000497AD0]                                 ; [rip+0002BD43]
	mov	rbx,rcx
	lea	rcx,[rcx+10h]
	mov	[rcx-10h],rax
	call	46ACF0h
	mov	rax,[0000000000491D20]                                 ; [rip+00025F7C]
	mov	rcx,rbx
	add	rax,10h
	mov	[rbx],rax
	add	rsp,28h
	pop	rbx
	pop	rsi
	jmp	46AD20h
000000000046BDB9                            48 89 C6 48 8B 05 5D          H..H..]
000000000046BDC0 5F 02 00 48 89 D9 48 8D 50 10 48 89 13 E8 4E EF _..H..H.P.H...N.
000000000046BDD0 FF FF 48 89 F1 E8 D6 57 FA FF 90 90 90 90 90 90 ..H....W........

;; fn000000000046BDE0: 000000000046BDE0
fn000000000046BDE0 proc
	push	rbx
	sub	rsp,20h
	xor	eax,eax
	test	r8,r8
	mov	rbx,rcx
	mov	[rsp+38h],rdx
	setnz	al
	mov	[rcx+8h],eax
	lea	rax,[0000000000497B50]                                 ; [rip+0002BD51]
	mov	[rcx],rax
	lea	rcx,[rsp+38h]
	call	46AC80h
	mov	[rbx+10h],rax
	add	rsp,20h
	pop	rbx
	ret
000000000046BE16                   90 90 90 90 90 90 90 90 90 90       ..........

;; fn000000000046BE20: 000000000046BE20
fn000000000046BE20 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	xor	eax,eax
	test	rdx,rdx
	mov	rbx,rcx
	setnz	al
	mov	[rcx+8h],eax
	lea	rax,[0000000000497B50]                                 ; [rip+0002BD15]
	mov	[rcx],rax
	call	46AC50h
	mov	[rbx+10h],rax
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret
000000000046BE4E                                           48 89               H.
000000000046BE50 C6 48 89 D9 E8 C7 EE FF FF 48 89 F1 E8 4F 57 FA .H.......H...OW.
000000000046BE60 FF 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 ................

;; fn000000000046BE70: 000000000046BE70
fn000000000046BE70 proc
	push	rbx
	sub	rsp,20h
	xor	eax,eax
	test	r8,r8
	mov	rbx,rcx
	mov	[rsp+38h],rdx
	setnz	al
	mov	[rcx+8h],eax
	lea	rax,[0000000000497B50]                                 ; [rip+0002BCC1]
	mov	[rcx],rax
	lea	rcx,[rsp+38h]
	call	46AC80h
	mov	[rbx+10h],rax
	add	rsp,20h
	pop	rbx
	ret
000000000046BEA6                   90 90 90 90 90 90 90 90 90 90       ..........

;; fn000000000046BEB0: 000000000046BEB0
fn000000000046BEB0 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	xor	eax,eax
	test	rdx,rdx
	mov	rbx,rcx
	setnz	al
	mov	[rcx+8h],eax
	lea	rax,[0000000000497B50]                                 ; [rip+0002BC85]
	mov	[rcx],rax
	call	46AC50h
	mov	[rbx+10h],rax
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret
000000000046BEDE                                           48 89               H.
000000000046BEE0 C6 48 89 D9 E8 37 EE FF FF 48 89 F1 E8 BF 56 FA .H...7...H....V.
000000000046BEF0 FF 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 ................

;; fn000000000046BF00: 000000000046BF00
fn000000000046BF00 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	lea	rax,[0000000000497B50]                                 ; [rip+0002BC43]
	mov	rbx,rcx
	lea	rcx,[rcx+10h]
	mov	[rcx-10h],rax
	call	46ACF0h
	mov	rcx,rbx
	call	46AD20h
	mov	rcx,rbx
	add	rsp,28h
	pop	rbx
	pop	rsi
	jmp	475550h
000000000046BF33          48 89 C6 48 89 D9 E8 E2 ED FF FF 48 89    H..H.......H.
000000000046BF40 F1 E8 6A 56 FA FF 90 90 90 90 90 90 90 90 90 90 ..jV............

;; fn000000000046BF50: 000000000046BF50
fn000000000046BF50 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	lea	rax,[0000000000497B50]                                 ; [rip+0002BBF3]
	mov	rbx,rcx
	lea	rcx,[rcx+10h]
	mov	[rcx-10h],rax
	call	46ACF0h
	mov	rcx,rbx
	add	rsp,28h
	pop	rbx
	pop	rsi
	jmp	46AD20h
000000000046BF7B                                  48 89 C6 48 89            H..H.
000000000046BF80 D9 E8 9A ED FF FF 48 89 F1 E8 22 56 FA FF 90 90 ......H..."V....

;; fn000000000046BF90: 000000000046BF90
fn000000000046BF90 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	lea	rax,[0000000000497B50]                                 ; [rip+0002BBB3]
	mov	rbx,rcx
	lea	rcx,[rcx+10h]
	mov	[rcx-10h],rax
	call	46ACF0h
	mov	rcx,rbx
	add	rsp,28h
	pop	rbx
	pop	rsi
	jmp	46AD20h
000000000046BFBB                                  48 89 C6 48 89            H..H.
000000000046BFC0 D9 E8 5A ED FF FF 48 89 F1 E8 E2 55 FA FF 90 90 ..Z...H....U....

;; fn000000000046BFD0: 000000000046BFD0
fn000000000046BFD0 proc
	push	rbx
	sub	rsp,20h
	xor	eax,eax
	test	r8,r8
	mov	rbx,rcx
	mov	[rsp+38h],rdx
	setnz	al
	mov	[rcx+8h],eax
	lea	rax,[0000000000497B90]                                 ; [rip+0002BBA1]
	mov	[rcx],rax
	lea	rcx,[rsp+38h]
	call	46AC80h
	mov	[rbx+10h],rax
	add	rsp,20h
	pop	rbx
	ret
000000000046C006                   90 90 90 90 90 90 90 90 90 90       ..........

;; fn000000000046C010: 000000000046C010
fn000000000046C010 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	xor	eax,eax
	test	rdx,rdx
	mov	rbx,rcx
	setnz	al
	mov	[rcx+8h],eax
	lea	rax,[0000000000497B90]                                 ; [rip+0002BB65]
	mov	[rcx],rax
	call	46AC50h
	mov	[rbx+10h],rax
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret
000000000046C03E                                           48 89               H.
000000000046C040 C6 48 89 D9 E8 D7 EC FF FF 48 89 F1 E8 5F 55 FA .H.......H..._U.
000000000046C050 FF 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 ................

;; fn000000000046C060: 000000000046C060
fn000000000046C060 proc
	push	rbx
	sub	rsp,20h
	xor	eax,eax
	test	r8,r8
	mov	rbx,rcx
	mov	[rsp+38h],rdx
	setnz	al
	mov	[rcx+8h],eax
	lea	rax,[0000000000497B90]                                 ; [rip+0002BB11]
	mov	[rcx],rax
	lea	rcx,[rsp+38h]
	call	46AC80h
	mov	[rbx+10h],rax
	add	rsp,20h
	pop	rbx
	ret
000000000046C096                   90 90 90 90 90 90 90 90 90 90       ..........

;; fn000000000046C0A0: 000000000046C0A0
fn000000000046C0A0 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	xor	eax,eax
	test	rdx,rdx
	mov	rbx,rcx
	setnz	al
	mov	[rcx+8h],eax
	lea	rax,[0000000000497B90]                                 ; [rip+0002BAD5]
	mov	[rcx],rax
	call	46AC50h
	mov	[rbx+10h],rax
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret
000000000046C0CE                                           48 89               H.
000000000046C0D0 C6 48 89 D9 E8 47 EC FF FF 48 89 F1 E8 CF 54 FA .H...G...H....T.
000000000046C0E0 FF 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 ................

;; fn000000000046C0F0: 000000000046C0F0
fn000000000046C0F0 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	lea	rax,[0000000000497B90]                                 ; [rip+0002BA93]
	mov	rbx,rcx
	lea	rcx,[rcx+10h]
	mov	[rcx-10h],rax
	call	46ACF0h
	mov	rcx,rbx
	call	46AD20h
	mov	rcx,rbx
	add	rsp,28h
	pop	rbx
	pop	rsi
	jmp	475550h
000000000046C123          48 89 C6 48 89 D9 E8 F2 EB FF FF 48 89    H..H.......H.
000000000046C130 F1 E8 7A 54 FA FF 90 90 90 90 90 90 90 90 90 90 ..zT............

;; fn000000000046C140: 000000000046C140
fn000000000046C140 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	lea	rax,[0000000000497B90]                                 ; [rip+0002BA43]
	mov	rbx,rcx
	lea	rcx,[rcx+10h]
	mov	[rcx-10h],rax
	call	46ACF0h
	mov	rcx,rbx
	add	rsp,28h
	pop	rbx
	pop	rsi
	jmp	46AD20h
000000000046C16B                                  48 89 C6 48 89            H..H.
000000000046C170 D9 E8 AA EB FF FF 48 89 F1 E8 32 54 FA FF 90 90 ......H...2T....

;; fn000000000046C180: 000000000046C180
fn000000000046C180 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	lea	rax,[0000000000497B90]                                 ; [rip+0002BA03]
	mov	rbx,rcx
	lea	rcx,[rcx+10h]
	mov	[rcx-10h],rax
	call	46ACF0h
	mov	rcx,rbx
	add	rsp,28h
	pop	rbx
	pop	rsi
	jmp	46AD20h
000000000046C1AB                                  48 89 C6 48 89            H..H.
000000000046C1B0 D9 E8 6A EB FF FF 48 89 F1 E8 F2 53 FA FF 90 90 ..j...H....S....

;; fn000000000046C1C0: 000000000046C1C0
fn000000000046C1C0 proc
	xor	eax,eax
	test	rdx,rdx
	setnz	al
	mov	[rcx+8h],eax
	lea	rax,[0000000000497BD0]                                 ; [rip+0002B9FE]
	mov	[rcx],rax
	ret
000000000046C1D6                   90 90 90 90 90 90 90 90 90 90       ..........

;; fn000000000046C1E0: 000000000046C1E0
fn000000000046C1E0 proc
	xor	eax,eax
	test	rdx,rdx
	setnz	al
	mov	[rcx+8h],eax
	lea	rax,[0000000000497BD0]                                 ; [rip+0002B9DE]
	mov	[rcx],rax
	ret
000000000046C1F6                   90 90 90 90 90 90 90 90 90 90       ..........

;; fn000000000046C200: 000000000046C200
fn000000000046C200 proc
	push	rbx
	sub	rsp,20h
	lea	rax,[0000000000497BD0]                                 ; [rip+0002B9C4]
	mov	rbx,rcx
	mov	[rcx],rax
	call	46AD20h
	mov	rcx,rbx
	add	rsp,20h
	pop	rbx
	jmp	475550h
000000000046C224             90 90 90 90 90 90 90 90 90 90 90 90     ............

;; fn000000000046C230: 000000000046C230
fn000000000046C230 proc
	lea	rax,[0000000000497BD0]                                 ; [rip+0002B999]
	mov	[rcx],rax
	jmp	46AD20h
000000000046C23F                                              90                .

;; fn000000000046C240: 000000000046C240
fn000000000046C240 proc
	lea	rax,[0000000000497BD0]                                 ; [rip+0002B989]
	mov	[rcx],rax
	jmp	46AD20h
000000000046C24F                                              90                .

;; fn000000000046C250: 000000000046C250
fn000000000046C250 proc
	xor	eax,eax
	test	rdx,rdx
	setnz	al
	mov	[rcx+8h],eax
	lea	rax,[0000000000497C50]                                 ; [rip+0002B9EE]
	mov	[rcx],rax
	ret
000000000046C266                   90 90 90 90 90 90 90 90 90 90       ..........

;; fn000000000046C270: 000000000046C270
fn000000000046C270 proc
	xor	eax,eax
	test	rdx,rdx
	setnz	al
	mov	[rcx+8h],eax
	lea	rax,[0000000000497C50]                                 ; [rip+0002B9CE]
	mov	[rcx],rax
	ret
000000000046C286                   90 90 90 90 90 90 90 90 90 90       ..........

;; fn000000000046C290: 000000000046C290
fn000000000046C290 proc
	push	rbx
	sub	rsp,20h
	lea	rax,[0000000000497C50]                                 ; [rip+0002B9B4]
	mov	rbx,rcx
	mov	[rcx],rax
	call	46AD20h
	mov	rcx,rbx
	add	rsp,20h
	pop	rbx
	jmp	475550h
000000000046C2B4             90 90 90 90 90 90 90 90 90 90 90 90     ............

;; fn000000000046C2C0: 000000000046C2C0
fn000000000046C2C0 proc
	lea	rax,[0000000000497C50]                                 ; [rip+0002B989]
	mov	[rcx],rax
	jmp	46AD20h
000000000046C2CF                                              90                .

;; fn000000000046C2D0: 000000000046C2D0
fn000000000046C2D0 proc
	lea	rax,[0000000000497C50]                                 ; [rip+0002B979]
	mov	[rcx],rax
	jmp	46AD20h
000000000046C2DF                                              90                .

;; fn000000000046C2E0: 000000000046C2E0
fn000000000046C2E0 proc
	xor	eax,eax
	test	rdx,rdx
	setnz	al
	mov	[rcx+8h],eax
	lea	rax,[0000000000497CD0]                                 ; [rip+0002B9DE]
	mov	[rcx],rax
	ret
000000000046C2F6                   90 90 90 90 90 90 90 90 90 90       ..........

;; fn000000000046C300: 000000000046C300
fn000000000046C300 proc
	xor	eax,eax
	test	rdx,rdx
	setnz	al
	mov	[rcx+8h],eax
	lea	rax,[0000000000497CD0]                                 ; [rip+0002B9BE]
	mov	[rcx],rax
	ret
000000000046C316                   90 90 90 90 90 90 90 90 90 90       ..........

;; fn000000000046C320: 000000000046C320
fn000000000046C320 proc
	push	rbx
	sub	rsp,20h
	lea	rax,[0000000000497CD0]                                 ; [rip+0002B9A4]
	mov	rbx,rcx
	mov	[rcx],rax
	call	46AD20h
	mov	rcx,rbx
	add	rsp,20h
	pop	rbx
	jmp	475550h
000000000046C344             90 90 90 90 90 90 90 90 90 90 90 90     ............

;; fn000000000046C350: 000000000046C350
fn000000000046C350 proc
	lea	rax,[0000000000497CD0]                                 ; [rip+0002B979]
	mov	[rcx],rax
	jmp	46AD20h
000000000046C35F                                              90                .

;; fn000000000046C360: 000000000046C360
fn000000000046C360 proc
	lea	rax,[0000000000497CD0]                                 ; [rip+0002B969]
	mov	[rcx],rax
	jmp	46AD20h
000000000046C36F                                              90                .

;; fn000000000046C370: 000000000046C370
fn000000000046C370 proc
	xor	eax,eax
	test	rdx,rdx
	setnz	al
	mov	[rcx+8h],eax
	lea	rax,[0000000000497D50]                                 ; [rip+0002B9CE]
	mov	[rcx],rax
	ret
000000000046C386                   90 90 90 90 90 90 90 90 90 90       ..........

;; fn000000000046C390: 000000000046C390
fn000000000046C390 proc
	xor	eax,eax
	test	rdx,rdx
	setnz	al
	mov	[rcx+8h],eax
	lea	rax,[0000000000497D50]                                 ; [rip+0002B9AE]
	mov	[rcx],rax
	ret
000000000046C3A6                   90 90 90 90 90 90 90 90 90 90       ..........

;; fn000000000046C3B0: 000000000046C3B0
fn000000000046C3B0 proc
	push	rbx
	sub	rsp,20h
	lea	rax,[0000000000497D50]                                 ; [rip+0002B994]
	mov	rbx,rcx
	mov	[rcx],rax
	call	46AD20h
	mov	rcx,rbx
	add	rsp,20h
	pop	rbx
	jmp	475550h
000000000046C3D4             90 90 90 90 90 90 90 90 90 90 90 90     ............

;; fn000000000046C3E0: 000000000046C3E0
fn000000000046C3E0 proc
	lea	rax,[0000000000497D50]                                 ; [rip+0002B969]
	mov	[rcx],rax
	jmp	46AD20h
000000000046C3EF                                              90                .

;; fn000000000046C3F0: 000000000046C3F0
fn000000000046C3F0 proc
	lea	rax,[0000000000497D50]                                 ; [rip+0002B959]
	mov	[rcx],rax
	jmp	46AD20h
000000000046C3FF                                              90                .

;; fn000000000046C400: 000000000046C400
fn000000000046C400 proc
	push	rbx
	sub	rsp,20h
	lea	rax,[0000000000497DD0]                                 ; [rip+0002B9C4]
	mov	rbx,rcx
	mov	[rcx],rax
	call	46F0F0h
	mov	rcx,rbx
	add	rsp,20h
	pop	rbx
	jmp	475550h
000000000046C424             90 90 90 90 90 90 90 90 90 90 90 90     ............

;; fn000000000046C430: 000000000046C430
fn000000000046C430 proc
	lea	rax,[0000000000497DD0]                                 ; [rip+0002B999]
	mov	[rcx],rax
	jmp	46F0F0h
000000000046C43F                                              90                .

;; fn000000000046C440: 000000000046C440
fn000000000046C440 proc
	push	r13
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,38h
	cmp	edx,7h
	mov	rdi,rcx
	mov	ebx,edx
	mov	r12d,r8d
	lea	rsi,[rcx+40h]
	jle	46C502h

l000000000046C461:
	cmp	edx,7FFFFFFFh
	jz	46C530h

l000000000046C46D:
	lea	ebp,[rdx+1h]
	movsxd	r13,ebp
	mov	rcx,r13
	shl	rcx,4h
	call	475560h
	lea	r9,[r13-1h]
	mov	r12,rax
	mov	r8,rax
	nop	dword ptr [rax+0h]

l000000000046C490:
	sub	r9,1h
	mov	qword ptr [r8],+0h
	mov	dword ptr [r8+8h],0h
	add	r8,10h
	cmp	r9,0FFh
	jnz	46C490h

l000000000046C4AD:
	mov	edx,[rdi+0C0h]
	test	edx,edx
	jle	46C4E7h

l000000000046C4B7:
	sub	edx,1h
	xor	r8d,r8d
	add	rdx,1h
	shl	rdx,4h

l000000000046C4C5:
	mov	r9,[rdi+0C8h]
	mov	rax,[r9+r8]
	mov	[r12+r8],rax
	mov	eax,[r9+r8+8h]
	mov	[r12+r8+8h],eax
	add	r8,10h
	cmp	r8,rdx
	jnz	46C4C5h

l000000000046C4E7:
	mov	rcx,[rdi+0C8h]
	test	rcx,rcx
	jz	46C4FDh

l000000000046C4F3:
	cmp	rsi,rcx
	jz	46C4FDh

l000000000046C4F8:
	call	475540h

l000000000046C4FD:
	mov	rsi,r12
	jmp	46C507h

l000000000046C502:
	mov	ebp,8h

l000000000046C507:
	movsxd	rax,ebx
	mov	[rdi+0C8h],rsi
	mov	[rdi+0C0h],ebp
	shl	rax,4h
	lea	rax,[rsi+rax]

l000000000046C51F:
	add	rsp,38h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	ret
000000000046C52C                                     0F 1F 40 00             ..@.

l000000000046C530:
	mov	eax,[rcx+20h]
	or	eax,1h
	test	[rcx+1Ch],eax
	mov	[rcx+20h],eax
	jnz	46C56Ah

l000000000046C53E:
	test	r8b,r8b
	jz	46C560h

l000000000046C543:
	mov	dword ptr [rcx+38h],0h

l000000000046C54A:
	lea	rax,[rdi+30h]
	add	rsp,38h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	ret
000000000046C55B                                  0F 1F 44 00 00            ..D..

l000000000046C560:
	mov	qword ptr [rcx+30h],+0h
	jmp	46C54Ah

l000000000046C56A:
	lea	rcx,[000000000048D840]                                 ; [rip+000212CF]
	call	470B20h
	sub	rdx,1h
	mov	rcx,rax
	jz	46C584h

l000000000046C57F:
	call	4115B0h

l000000000046C584:
	call	475840h
	mov	eax,[rdi+20h]
	or	eax,1h
	test	[rdi+1Ch],eax
	mov	[rdi+20h],eax
	jnz	46C5BBh

l000000000046C597:
	test	r12b,r12b
	jz	46C5C7h

l000000000046C59C:
	mov	dword ptr [rdi+38h],0h

l000000000046C5A3:
	lea	rax,[rdi+30h]
	mov	[rsp+28h],rax
	call	475A70h
	mov	rax,[rsp+28h]
	jmp	46C51Fh

l000000000046C5BB:
	lea	rcx,[000000000048D868]                                 ; [rip+000212A6]
	call	470B20h

l000000000046C5C7:
	mov	qword ptr [rdi+30h],+0h
	jmp	46C5A3h
000000000046C5D1    48 89 C3 E8 97 94 00 00 48 89 D9 E8 CF 4F FA  H.......H....O.
000000000046C5E0 FF 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 ................

;; fn000000000046C5F0: 000000000046C5F0
fn000000000046C5F0 proc
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,38h
	mov	rsi,[00000000004919B0]                                 ; [rip+000253B1]
	mov	edi,ecx
	movzx	ebx,byte ptr [rsi]
	cmp	bl,cl
	ja	46C613h

l000000000046C608:
	mov	eax,ebx
	add	rsp,38h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret

l000000000046C613:
	lea	rbp,[rsp+2Fh]
	mov	rcx,rbp
	call	46C940h
	mov	rax,[0000000000491C30]                                 ; [rip+00025609]
	mov	rcx,[0000000000491630]                                 ; [rip+00025002]
	mov	[rsi],dil
	lea	rsi,[rax+10h]
	add	rcx,38h
	mov	[rcx-38h],rsi
	call	46AF20h
	mov	rcx,[0000000000491610]                                 ; [rip+00024FC7]
	mov	[rcx],rsi
	add	rcx,38h
	call	46AF20h
	mov	rcx,[0000000000491620]                                 ; [rip+00024FC4]
	mov	[rcx],rsi
	add	rcx,38h
	call	46AF20h
	mov	rax,[0000000000491C40]                                 ; [rip+000255D1]
	mov	rcx,[0000000000491660]                                 ; [rip+00024FEA]
	lea	rsi,[rax+10h]
	add	rcx,38h
	mov	[rcx-38h],rsi
	call	46AF20h
	mov	rcx,[0000000000491640]                                 ; [rip+00024FB2]
	mov	[rcx],rsi
	add	rcx,38h
	call	46AF20h
	mov	rcx,[0000000000491650]                                 ; [rip+00024FAF]
	mov	[rcx],rsi
	add	rcx,38h
	call	46AF20h
	mov	rsi,[00000000004AF744]                                 ; [rip+00043090]
	call	rsi
	mov	rcx,[0000000000491690]                                 ; [rip+00024FD3]
	lea	rdx,[rax+30h]
	mov	r9d,200h
	mov	r8d,10h
	call	424C00h
	call	rsi
	mov	rcx,[0000000000491670]                                 ; [rip+00024F95]
	mov	r9d,200h
	mov	r8d,8h
	mov	rdx,rax
	call	424C00h
	call	rsi
	mov	rcx,[0000000000491680]                                 ; [rip+00024F88]
	lea	rdx,[rax+60h]
	mov	r9d,200h
	mov	r8d,10h
	call	424C00h
	mov	rcx,[0000000000491AD0]                                 ; [rip+000253BC]
	mov	rdx,[0000000000491690]                                 ; [rip+00024F75]
	add	rcx,8h
	call	46E460h
	mov	rcx,[0000000000491AA0]                                 ; [rip+00025375]
	mov	rdx,[0000000000491670]                                 ; [rip+00024F3E]
	add	rcx,10h
	call	46E460h
	mov	rcx,[0000000000491AB0]                                 ; [rip+0002536E]
	mov	rdx,[0000000000491680]                                 ; [rip+00024F37]
	add	rcx,8h
	call	46E460h
	mov	rcx,[0000000000491AC0]                                 ; [rip+00025367]
	mov	rdx,[0000000000491680]                                 ; [rip+00024F20]
	add	rcx,8h
	call	46E460h
	call	rsi
	mov	rcx,[00000000004916C0]                                 ; [rip+00024F4E]
	lea	rdx,[rax+30h]
	mov	r9d,200h
	mov	r8d,10h
	call	4250A0h
	call	rsi
	mov	rcx,[00000000004916A0]                                 ; [rip+00024F10]
	mov	r9d,200h
	mov	r8d,8h
	mov	rdx,rax
	call	4250A0h
	call	rsi
	mov	rcx,[00000000004916B0]                                 ; [rip+00024F03]
	lea	rdx,[rax+60h]
	mov	r9d,200h
	mov	r8d,10h
	call	4250A0h
	mov	rcx,[0000000000491B10]                                 ; [rip+00025347]
	mov	rdx,[00000000004916C0]                                 ; [rip+00024EF0]
	add	rcx,8h
	call	46EC30h
	mov	rcx,[0000000000491AE0]                                 ; [rip+00025300]
	mov	rdx,[00000000004916A0]                                 ; [rip+00024EB9]
	add	rcx,10h
	call	46EC30h
	mov	rcx,[0000000000491AF0]                                 ; [rip+000252F9]
	mov	rdx,[00000000004916B0]                                 ; [rip+00024EB2]
	add	rcx,8h
	call	46EC30h
	mov	rcx,[0000000000491B00]                                 ; [rip+000252F2]
	mov	rdx,[00000000004916B0]                                 ; [rip+00024E9B]
	add	rcx,8h
	call	46EC30h
	mov	rcx,rbp
	call	46D120h
	mov	eax,ebx
	add	rsp,38h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
000000000046C831    48 89 C3 48 89 E9 E8 E4 08 00 00 48 89 D9 E8  H..H.......H...
000000000046C840 6C 4D FA FF 90 90 90 90 90 90 90 90 90 90 90 90 lM..............

;; fn000000000046C850: 000000000046C850
;;   Called from:
;;     000000000046D1D3 (in fn000000000046D1A0)
;;     000000000046D3E4 (in fn000000000046D3D0)
;;     000000000046E4D2 (in fn000000000046E490)
;;     000000000046E5DC (in fn000000000046E490)
;;     000000000046ECA2 (in fn000000000046EC60)
;;     000000000046EDAC (in fn000000000046EC60)
fn000000000046C850 proc
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,20h
	mov	rbx,[rcx+28h]
	mov	rsi,rcx
	mov	edi,edx
	test	rbx,rbx
	jz	46C879h

l000000000046C865:
	mov	r8d,[rbx+10h]
	mov	rdx,rsi
	mov	ecx,edi
	call	qword ptr [rbx+8h]
	mov	rbx,[rbx]
	test	rbx,rbx
	jnz	46C865h

l000000000046C879:
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	ret
000000000046C881    48 89 C1 E8 B7 8F 00 00 E8 E2 91 00 00 EB E1  H..............
000000000046C890 48 83 FA FF 48 89 C1 74 05 E8 12 4D FA FF E8 6D H...H..t...M...m
000000000046C8A0 90 00 00 90 90 90 90 90 90 90 90 90 90 90 90 90 ................

;; fn000000000046C8B0: 000000000046C8B0
fn000000000046C8B0 proc
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,20h
	mov	rbx,rcx
	mov	ecx,18h
	mov	rdi,rdx
	mov	esi,r8d
	call	475590h
	mov	rdx,[rbx+28h]
	mov	[rax+8h],rdi
	mov	[rax+10h],esi
	mov	dword ptr [rax+14h],0h
	mov	[rax],rdx
	mov	[rbx+28h],rax
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	ret
000000000046C8EB                                  90 90 90 90 90            .....

;; fn000000000046C8F0: 000000000046C8F0
;;   Called from:
;;     000000000046D3EC (in fn000000000046D3D0)
;;     000000000046E4FB (in fn000000000046E490)
;;     000000000046ECCB (in fn000000000046EC60)
fn000000000046C8F0 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	mov	rsi,rcx
	mov	rcx,[rcx+28h]
	test	rcx,rcx
	jz	46C910h

l000000000046C902:
	mov	edx,0FFFFFFFFh
	lock
	xadd	[rcx+14h],edx
	test	edx,edx
	jz	46C920h

l000000000046C910:
	mov	qword ptr [rsi+28h],+0h
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret
000000000046C91F                                              90                .

l000000000046C920:
	mov	rbx,[rcx]
	call	475550h
	test	rbx,rbx
	jz	46C910h

l000000000046C92D:
	mov	rcx,rbx
	jmp	46C902h
000000000046C932       90 90 90 90 90 90 90 90 90 90 90 90 90 90   ..............

;; fn000000000046C940: 000000000046C940
;;   Called from:
;;     000000000040356D (in fn000000000040353B)
;;     000000000046C61B (in fn000000000046C5F0)
fn000000000046C940 proc
	push	r14
	push	r13
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,20h
	mov	rbp,[00000000004919A0]                                 ; [rip+0002504B]
	mov	eax,1h
	lock
	xadd	[rbp+0h],eax
	test	eax,eax
	jz	46C972h

l000000000046C963:
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	ret

l000000000046C972:
	mov	rax,[00000000004919B0]                                 ; [rip+00025037]
	mov	r13,[00000000004AF744]                                 ; [rip+00042DC4]
	mov	byte ptr [rax],1h
	call	r13
	mov	rsi,rax
	mov	rax,[0000000000491C30]                                 ; [rip+000252A0]
	mov	rbx,[0000000000491630]                                 ; [rip+00024C99]
	add	rsi,30h
	lea	r12,[rax+10h]
	lea	rcx,[rbx+38h]
	mov	qword ptr [rbx+8h],+0h
	mov	qword ptr [rbx+10h],+0h
	mov	qword ptr [rbx+18h],+0h
	mov	[rbx],r12
	mov	qword ptr [rbx+20h],+0h
	mov	qword ptr [rbx+28h],+0h
	mov	qword ptr [rbx+30h],+0h
	call	46AE90h
	mov	rax,[0000000000491B30]                                 ; [rip+0002514E]
	mov	[rbx+40h],rsi
	mov	dword ptr [rbx+48h],0FFFFFFFFh
	lea	rdi,[rax+10h]
	mov	[rbx],rdi
	call	r13
	mov	rsi,[0000000000491610]                                 ; [rip+00024C12]
	mov	r14,rax
	lea	rcx,[rsi+38h]
	mov	[rsi],r12
	mov	qword ptr [rsi+8h],+0h
	mov	qword ptr [rsi+10h],+0h
	mov	qword ptr [rsi+18h],+0h
	mov	qword ptr [rsi+20h],+0h
	mov	qword ptr [rsi+28h],+0h
	mov	qword ptr [rsi+30h],+0h
	call	46AE90h
	mov	[rsi+40h],r14
	mov	[rsi],rdi
	mov	dword ptr [rsi+48h],0FFFFFFFFh
	call	r13
	mov	rsi,[0000000000491620]                                 ; [rip+00024BCB]
	mov	r14,rax
	add	r14,60h
	lea	rcx,[rsi+38h]
	mov	[rsi],r12
	mov	qword ptr [rsi+8h],+0h
	mov	qword ptr [rsi+10h],+0h
	mov	qword ptr [rsi+18h],+0h
	mov	qword ptr [rsi+20h],+0h
	mov	qword ptr [rsi+28h],+0h
	mov	qword ptr [rsi+30h],+0h
	call	46AE90h
	mov	[rsi+40h],r14
	mov	[rsi],rdi
	mov	dword ptr [rsi+48h],0FFFFFFFFh
	mov	rsi,[0000000000491AD0]                                 ; [rip+00025023]
	lea	rcx,[rsi+8h]
	call	46D320h
	mov	r14,[0000000000491B60]                                 ; [rip+000250A3]
	lea	rcx,[rsi+8h]
	mov	qword ptr [rsi+0E0h],+0h
	mov	byte ptr [rsi+0E8h],0h
	mov	byte ptr [rsi+0E9h],0h
	mov	rdx,rbx
	mov	qword ptr [rsi+0F0h],+0h
	mov	qword ptr [rsi+0F8h],+0h
	lea	rax,[r14+18h]
	mov	qword ptr [rsi+100h],+0h
	mov	qword ptr [rsi+108h],+0h
	mov	[rsi],rax
	lea	rax,[r14+40h]
	mov	[rsi+8h],rax
	call	46E310h
	mov	rdi,[0000000000491AA0]                                 ; [rip+00024F7C]
	lea	rcx,[rdi+10h]
	call	46D320h
	mov	rax,[0000000000491B50]                                 ; [rip+0002501C]
	lea	rcx,[rdi+10h]
	mov	qword ptr [rdi+0E8h],+0h
	mov	byte ptr [rdi+0F0h],0h
	mov	byte ptr [rdi+0F1h],0h
	mov	qword ptr [rdi+0F8h],+0h
	mov	qword ptr [rdi+100h],+0h
	lea	rdx,[rax+18h]
	add	rax,40h
	mov	qword ptr [rdi+108h],+0h
	mov	qword ptr [rdi+110h],+0h
	mov	[rdi+10h],rax
	mov	[rdi],rdx
	mov	rdx,[0000000000491610]                                 ; [rip+00024A7D]
	mov	qword ptr [rdi+8h],+0h
	call	46E310h
	mov	rbx,[0000000000491AB0]                                 ; [rip+00024F09]
	lea	rcx,[rbx+8h]
	call	46D320h
	lea	rax,[r14+18h]
	mov	rdx,[0000000000491620]                                 ; [rip+00024A65]
	lea	rcx,[rbx+8h]
	mov	qword ptr [rbx+0E0h],+0h
	mov	byte ptr [rbx+0E8h],0h
	mov	[rbx],rax
	lea	rax,[r14+40h]
	mov	byte ptr [rbx+0E9h],0h
	mov	qword ptr [rbx+0F0h],+0h
	mov	qword ptr [rbx+0F8h],+0h
	mov	qword ptr [rbx+100h],+0h
	mov	qword ptr [rbx+108h],+0h
	mov	[rbx+8h],rax
	call	46E310h
	mov	r12,[0000000000491AC0]                                 ; [rip+00024EA5]
	lea	rcx,[r12+8h]
	call	46D320h
	mov	rdx,[0000000000491620]                                 ; [rip+000249F4]
	lea	rax,[r14+18h]
	lea	rcx,[r12+8h]
	add	r14,40h
	mov	qword ptr [r12+0E0h],+0h
	mov	byte ptr [r12+0E8h],0h
	mov	byte ptr [r12+0E9h],0h
	mov	qword ptr [r12+0F0h],+0h
	mov	qword ptr [r12+0F8h],+0h
	mov	qword ptr [r12+100h],+0h
	mov	qword ptr [r12+108h],+0h
	mov	[r12+8h],r14
	mov	[r12],rax
	call	46E310h
	or	dword ptr [rbx+20h],2000h
	mov	[rdi+0E8h],rsi
	mov	[rbx+0E0h],rsi
	call	r13
	mov	rsi,rax
	mov	rax,[0000000000491C40]                                 ; [rip+00024F89]
	mov	rbx,[0000000000491660]                                 ; [rip+000249A2]
	add	rsi,30h
	lea	r12,[rax+10h]
	lea	rcx,[rbx+38h]
	mov	qword ptr [rbx+8h],+0h
	mov	qword ptr [rbx+10h],+0h
	mov	[rbx],r12
	mov	qword ptr [rbx+18h],+0h
	mov	qword ptr [rbx+20h],+0h
	mov	qword ptr [rbx+28h],+0h
	mov	qword ptr [rbx+30h],+0h
	call	46AE90h
	mov	rax,[0000000000491B40]                                 ; [rip+00024E37]
	mov	r8d,0FFFFFFFFh
	mov	[rbx+40h],rsi
	mov	[rbx+48h],r8w
	lea	rdi,[rax+10h]
	mov	[rbx],rdi
	call	r13
	mov	rsi,[0000000000491640]                                 ; [rip+00024917]
	mov	r14,rax
	lea	rcx,[rsi+38h]
	mov	[rsi],r12
	mov	qword ptr [rsi+8h],+0h
	mov	qword ptr [rsi+10h],+0h
	mov	qword ptr [rsi+18h],+0h
	mov	qword ptr [rsi+20h],+0h
	mov	qword ptr [rsi+28h],+0h
	mov	qword ptr [rsi+30h],+0h
	call	46AE90h
	mov	r9d,0FFFFFFFFh
	mov	[rsi],rdi
	mov	[rsi+40h],r14
	mov	[rsi+48h],r9w
	call	r13
	mov	rsi,[0000000000491650]                                 ; [rip+000248CC]
	mov	r13,rax
	add	r13,60h
	lea	rcx,[rsi+38h]
	mov	[rsi],r12
	mov	qword ptr [rsi+8h],+0h
	mov	qword ptr [rsi+10h],+0h
	mov	qword ptr [rsi+18h],+0h
	mov	qword ptr [rsi+20h],+0h
	mov	qword ptr [rsi+28h],+0h
	mov	qword ptr [rsi+30h],+0h
	call	46AE90h
	mov	r10d,0FFFFFFFFh
	mov	[rsi+40h],r13
	mov	[rsi],rdi
	mov	[rsi+48h],r10w
	mov	rsi,[0000000000491B10]                                 ; [rip+00024D30]
	lea	rcx,[rsi+8h]
	call	46D320h
	mov	r13,[0000000000491C20]                                 ; [rip+00024E30]
	xor	r11d,r11d
	lea	rcx,[rsi+8h]
	mov	qword ptr [rsi+0E0h],+0h
	mov	[rsi+0E8h],r11w
	mov	rdx,rbx
	mov	byte ptr [rsi+0EAh],0h
	mov	qword ptr [rsi+0F0h],+0h
	lea	rax,[r13+18h]
	mov	qword ptr [rsi+0F8h],+0h
	mov	qword ptr [rsi+100h],+0h
	mov	qword ptr [rsi+108h],+0h
	mov	[rsi],rax
	lea	rax,[r13+40h]
	mov	[rsi+8h],rax
	call	46EAE0h
	mov	rdi,[0000000000491AE0]                                 ; [rip+00024C85]
	lea	rcx,[rdi+10h]
	call	46D320h
	mov	rax,[0000000000491C10]                                 ; [rip+00024DA5]
	xor	ecx,ecx
	mov	qword ptr [rdi+0E8h],+0h
	mov	[rdi+0F0h],cx
	lea	rcx,[rdi+10h]
	mov	byte ptr [rdi+0F2h],0h
	mov	qword ptr [rdi+0F8h],+0h
	mov	qword ptr [rdi+100h],+0h
	lea	rdx,[rax+18h]
	add	rax,40h
	mov	qword ptr [rdi+108h],+0h
	mov	qword ptr [rdi+110h],+0h
	mov	[rdi+10h],rax
	mov	[rdi],rdx
	mov	rdx,[0000000000491640]                                 ; [rip+00024774]
	mov	qword ptr [rdi+8h],+0h
	call	46EAE0h
	mov	rbx,[0000000000491AF0]                                 ; [rip+00024C10]
	lea	rcx,[rbx+8h]
	call	46D320h
	lea	rax,[r13+18h]
	xor	edx,edx
	lea	rcx,[rbx+8h]
	mov	[rbx+0E8h],dx
	mov	rdx,[0000000000491650]                                 ; [rip+0002474F]
	mov	[rbx],rax
	lea	rax,[r13+40h]
	mov	qword ptr [rbx+0E0h],+0h
	mov	byte ptr [rbx+0EAh],0h
	mov	qword ptr [rbx+0F0h],+0h
	mov	qword ptr [rbx+0F8h],+0h
	mov	qword ptr [rbx+100h],+0h
	mov	qword ptr [rbx+108h],+0h
	mov	[rbx+8h],rax
	call	46EAE0h
	mov	r12,[0000000000491B00]                                 ; [rip+00024BAA]
	lea	rcx,[r12+8h]
	call	46D320h
	xor	eax,eax
	mov	rdx,[0000000000491650]                                 ; [rip+000246E7]
	lea	rcx,[r12+8h]
	mov	[r12+0E8h],ax
	lea	rax,[r13+18h]
	add	r13,40h
	mov	qword ptr [r12+0E0h],+0h
	mov	byte ptr [r12+0EAh],0h
	mov	qword ptr [r12+0F0h],+0h
	mov	qword ptr [r12+0F8h],+0h
	mov	qword ptr [r12+100h],+0h
	mov	qword ptr [r12+108h],+0h
	mov	[r12+8h],r13
	mov	[r12],rax
	call	46EAE0h
	or	dword ptr [rbx+20h],2000h
	mov	[rdi+0E8h],rsi
	mov	[rbx+0E0h],rsi
	lock
	add	dword ptr [rbp+0h],1h
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	ret
000000000046CFFB                                  48 89 C3 48 8B            H..H.
000000000046D000 05 1B 4E 02 00 48 8D 4E 08 48 8D 50 10 48 89 56 ..N..H.N.H.P.H.V
000000000046D010 08 E8 BA 03 00 00 48 89 D9 E8 92 45 FA FF 48 89 ......H....E..H.
000000000046D020 C3 48 8B 05 F8 4D 02 00 48 8D 4F 10 48 8D 50 10 .H...M..H.O.H.P.
000000000046D030 48 89 57 10 E8 97 03 00 00 48 89 D9 E8 6F 45 FA H.W......H...oE.
000000000046D040 FF 48 89 C6 48 8B 05 D5 4D 02 00 48 8D 4B 08 48 .H..H...M..H.K.H
000000000046D050 8D 50 10 48 89 53 08 E8 74 03 00 00 48 89 F1 E8 .P.H.S..t...H...
000000000046D060 4C 45 FA FF 48 89 C3 48 8B 05 B2 4D 02 00 49 8D LE..H..H...M..I.
000000000046D070 4C 24 08 48 8D 50 10 49 89 54 24 08 E8 4F 03 00 L$.H.P.I.T$..O..
000000000046D080 00 48 89 D9 E8 27 45 FA FF 48 89 C3 48 8B 05 9D .H...'E..H..H...
000000000046D090 4D 02 00 48 8D 4E 08 48 8D 50 10 48 89 56 08 E8 M..H.N.H.P.H.V..
000000000046D0A0 2C 03 00 00 48 89 D9 E8 04 45 FA FF 48 89 C3 48 ,...H....E..H..H
000000000046D0B0 8B 05 7A 4D 02 00 48 8D 4F 10 48 8D 50 10 48 89 ..zM..H.O.H.P.H.
000000000046D0C0 57 10 E8 09 03 00 00 48 89 D9 E8 E1 44 FA FF 48 W......H....D..H
000000000046D0D0 89 C6 48 8B 05 57 4D 02 00 48 8D 4B 08 48 8D 50 ..H..WM..H.K.H.P
000000000046D0E0 10 48 89 53 08 E8 E6 02 00 00 48 89 F1 E8 BE 44 .H.S......H....D
000000000046D0F0 FA FF 48 89 C3 48 8B 05 34 4D 02 00 49 8D 4C 24 ..H..H..4M..I.L$
000000000046D100 08 48 8D 50 10 49 89 54 24 08 E8 C1 02 00 00 48 .H.P.I.T$......H
000000000046D110 89 D9 E8 99 44 FA FF 90 90 90 90 90 90 90 90 90 ....D...........

;; fn000000000046D120: 000000000046D120
;;   Called from:
;;     00000000004034C3 (in fn00000000004034B4)
;;     000000000046C821 (in fn000000000046C5F0)
fn000000000046D120 proc
	sub	rsp,28h
	mov	rax,[00000000004919A0]                                 ; [rip+00024875]
	mov	edx,0FFFFFFFFh
	lock
	xadd	[rax],edx
	cmp	edx,2h
	jz	46D140h

l000000000046D139:
	add	rsp,28h
	ret
000000000046D13E                                           66 90               f.

l000000000046D140:
	mov	rcx,[0000000000491AD0]                                 ; [rip+00024989]
	call	44E8B0h
	mov	rcx,[0000000000491AB0]                                 ; [rip+0002495D]
	call	44E8B0h
	mov	rcx,[0000000000491AC0]                                 ; [rip+00024961]
	call	44E8B0h
	mov	rcx,[0000000000491B10]                                 ; [rip+000249A5]
	call	45D8D0h
	mov	rcx,[0000000000491AF0]                                 ; [rip+00024979]
	call	45D8D0h
	mov	rcx,[0000000000491B00]                                 ; [rip+0002497D]
	call	45D8D0h
	nop
	add	rsp,28h
	ret
000000000046D18E                                           48 89               H.
000000000046D190 C1 E8 AA 86 00 00 90 48 83 C4 28 E9 D0 88 00 00 .......H..(.....

;; fn000000000046D1A0: 000000000046D1A0
;;   Called from:
;;     000000000046E3DD (in fn000000000046E3B0)
;;     000000000046EBAD (in fn000000000046EB80)
fn000000000046D1A0 proc
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,28h
	lea	rdi,[rdx+0D0h]
	mov	rbp,r8
	mov	rsi,rdx
	mov	rbx,rcx
	mov	rdx,rdi
	call	46AE80h
	mov	rdx,rbp
	mov	rcx,rdi
	call	46AF60h
	mov	edx,1h
	mov	rcx,rsi
	call	46C850h
	mov	rax,rbx
	add	rsp,28h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
000000000046D1E4             90 90 90 90 90 90 90 90 90 90 90 90     ............

;; fn000000000046D1F0: 000000000046D1F0
fn000000000046D1F0 proc
	mov	eax,1h
	lock
	xadd	[000000000048C0A0],eax                                ; [rip+0001EEA3]
	add	eax,4h
	ret
000000000046D201    90 90 90 90 90 90 90 90 90 90 90 90 90 90 90  ...............

;; fn000000000046D210: 000000000046D210
;;   Called from:
;;     000000000046E31C (in fn000000000046E310)
;;     000000000046EAEC (in fn000000000046EAE0)
fn000000000046D210 proc
	push	rsi
	push	rbx
	sub	rsp,38h
	lea	rsi,[rsp+20h]
	mov	rbx,rcx
	mov	qword ptr [rcx+8h],+6h
	mov	qword ptr [rcx+10h],+0h
	mov	dword ptr [rcx+18h],1002h
	mov	rcx,rsi
	call	46AE90h
	lea	rcx,[rbx+0D0h]
	mov	rdx,rsi
	call	46AF60h
	mov	rcx,rsi
	call	46AF20h
	nop
	add	rsp,38h
	pop	rbx
	pop	rsi
	ret
000000000046D25C                                     90 90 90 90             ....

;; fn000000000046D260: 000000000046D260
;;   Called from:
;;     0000000000470B52 (in fn0000000000470B20)
fn000000000046D260 proc
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,20h
	lea	rax,[0000000000495F70]                                 ; [rip+00028D02]
	mov	rbx,rcx
	lea	rcx,[rcx+8h]
	mov	[rcx-8h],rax
	call	451F40h
	nop
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	ret
000000000046D287                      48 89 D7 48 89 D9 48 89 C6        H..H..H..
000000000046D290 E8 5B 1E 00 00 48 83 C7 01 48 89 F1 74 05 E8 0D .[...H...H..t...
000000000046D2A0 43 FA FF E8 68 86 00 00 90 90 90 90 90 90 90 90 C...h...........

;; fn000000000046D2B0: 000000000046D2B0
fn000000000046D2B0 proc
	push	rbx
	sub	rsp,20h
	mov	rbx,rcx
	call	46D2D0h
	mov	rcx,rbx
	add	rsp,20h
	pop	rbx
	jmp	475550h
000000000046D2CA                               90 90 90 90 90 90           ......

;; fn000000000046D2D0: 000000000046D2D0
;;   Called from:
;;     000000000046D2B8 (in fn000000000046D2B0)
fn000000000046D2D0 proc
	push	rbx
	sub	rsp,30h
	lea	rax,[0000000000495F70]                                 ; [rip+00028C94]
	mov	edx,0FFFFFFFFh
	mov	rbx,rcx
	mov	[rcx],rax
	mov	rax,[rcx+8h]
	lock
	xadd	[rax-8h],edx
	test	edx,edx
	jle	46D303h

l000000000046D2F4:
	mov	rcx,rbx
	call	46F0F0h
	nop
	add	rsp,30h
	pop	rbx
	ret

l000000000046D303:
	lea	rcx,[rax-18h]
	lea	rdx,[rsp+2Fh]
	call	450A50h
	mov	rcx,rbx
	call	46F0F0h
	nop
	add	rsp,30h
	pop	rbx
	ret

;; fn000000000046D320: 000000000046D320
;;   Called from:
;;     000000000044B054 (in fn000000000044B040)
;;     000000000044B151 (in fn000000000044B140)
;;     000000000044E004 (in fn000000000044DFF0)
;;     000000000044E0C1 (in fn000000000044E0B0)
;;     0000000000450094 (in fn0000000000450080)
;;     0000000000450141 (in fn0000000000450130)
;;     000000000045909D (in fn0000000000459080)
;;     000000000045922D (in fn0000000000459210)
;;     00000000004593B5 (in fn00000000004593A0)
;;     0000000000459B3D (in fn0000000000459B20)
;;     0000000000459CCD (in fn0000000000459CB0)
;;     0000000000459E55 (in fn0000000000459E40)
;;     000000000045D014 (in fn000000000045D000)
;;     000000000045D0D1 (in fn000000000045D0C0)
;;     000000000045EE74 (in fn000000000045EE60)
;;     000000000045EF21 (in fn000000000045EF10)
;;     000000000045F54D (in fn000000000045F530)
;;     000000000045F69D (in fn000000000045F680)
;;     000000000045F7E5 (in fn000000000045F7D0)
;;     000000000045FDCD (in fn000000000045FDB0)
;;     000000000045FF1D (in fn000000000045FF00)
;;     0000000000460065 (in fn0000000000460050)
;;     0000000000460554 (in fn0000000000460540)
;;     0000000000460651 (in fn0000000000460640)
;;     0000000000460A1D (in fn0000000000460A00)
;;     0000000000460B5D (in fn0000000000460B40)
;;     0000000000460C95 (in fn0000000000460C80)
;;     000000000046123D (in fn0000000000461220)
;;     000000000046137D (in fn0000000000461360)
;;     00000000004614B5 (in fn00000000004614A0)
;;     000000000046CAB1 (in fn000000000046C940)
;;     000000000046CB28 (in fn000000000046C940)
;;     000000000046CBAB (in fn000000000046C940)
;;     000000000046CC20 (in fn000000000046C940)
;;     000000000046CDE4 (in fn000000000046C940)
;;     000000000046CE5F (in fn000000000046C940)
;;     000000000046CEE4 (in fn000000000046C940)
;;     000000000046CF5B (in fn000000000046C940)
;;     000000000046E72C (in fn000000000046E720)
;;     000000000046E7B8 (in fn000000000046E7B0)
;;     000000000046E82C (in fn000000000046E820)
;;     000000000046E8B8 (in fn000000000046E8B0)
;;     000000000046EE9C (in fn000000000046EE90)
;;     000000000046EF28 (in fn000000000046EF20)
;;     000000000046EF9C (in fn000000000046EF90)
;;     000000000046F028 (in fn000000000046F020)
fn000000000046D320 proc
	lea	rax,[0000000000497E10]                                 ; [rip+0002AAE9]
	lea	r8,[rcx+40h]
	lea	rdx,[rcx+0C0h]
	mov	qword ptr [rcx+8h],+0h
	mov	[rcx],rax
	mov	qword ptr [rcx+10h],+0h
	mov	dword ptr [rcx+18h],0h
	mov	dword ptr [rcx+1Ch],0h
	mov	rax,r8
	mov	dword ptr [rcx+20h],0h
	mov	qword ptr [rcx+28h],+0h
	mov	qword ptr [rcx+30h],+0h
	mov	dword ptr [rcx+38h],0h

l000000000046D374:
	mov	qword ptr [rax],+0h
	mov	dword ptr [rax+8h],0h
	add	rax,10h
	cmp	rax,rdx
	jnz	46D374h

l000000000046D38B:
	mov	dword ptr [rcx+0C0h],8h
	mov	[rcx+0C8h],r8
	add	rcx,+0D0h
	jmp	46AE90h
000000000046D3A8                         90 90 90 90 90 90 90 90         ........

;; fn000000000046D3B0: 000000000046D3B0
fn000000000046D3B0 proc
	push	rbx
	sub	rsp,20h
	mov	rbx,rcx
	call	46D3D0h
	mov	rcx,rbx
	add	rsp,20h
	pop	rbx
	jmp	475550h
000000000046D3CA                               90 90 90 90 90 90           ......

;; fn000000000046D3D0: 000000000046D3D0
;;   Called from:
;;     000000000044B38A (in fn000000000044B370)
;;     000000000044B3B2 (in fn000000000044B3A0)
;;     000000000044E1ED (in fn000000000044E1C0)
;;     000000000044E225 (in fn000000000044E200)
;;     0000000000450245 (in fn0000000000450220)
;;     000000000045027D (in fn0000000000450260)
;;     00000000004598D9 (in fn0000000000459860)
;;     000000000045996E (in fn00000000004598F0)
;;     000000000045A379 (in fn000000000045A300)
;;     000000000045A40E (in fn000000000045A390)
;;     000000000045D1FD (in fn000000000045D1D0)
;;     000000000045D235 (in fn000000000045D210)
;;     000000000045F025 (in fn000000000045F000)
;;     000000000045F05D (in fn000000000045F040)
;;     000000000045FBBE (in fn000000000045FB50)
;;     000000000045FC43 (in fn000000000045FBD0)
;;     000000000046043E (in fn00000000004603D0)
;;     00000000004604C3 (in fn0000000000460450)
;;     000000000046088A (in fn0000000000460870)
;;     00000000004608B2 (in fn00000000004608A0)
;;     000000000046102E (in fn0000000000460FC0)
;;     00000000004610B3 (in fn0000000000461040)
;;     000000000046185E (in fn00000000004617F0)
;;     00000000004618E3 (in fn0000000000461870)
;;     000000000046D3B8 (in fn000000000046D3B0)
;;     000000000046E932 (in fn000000000046E920)
;;     000000000046E95A (in fn000000000046E950)
;;     000000000046E96A (in fn000000000046E960)
;;     000000000046F0A2 (in fn000000000046F090)
;;     000000000046F0CA (in fn000000000046F0C0)
;;     000000000046F0DA (in fn000000000046F0D0)
fn000000000046D3D0 proc
	push	rbx
	sub	rsp,20h
	lea	rax,[0000000000497E10]                                 ; [rip+0002AA34]
	xor	edx,edx
	mov	rbx,rcx
	mov	[rcx],rax
	call	46C850h
	mov	rcx,rbx
	call	46C8F0h
	mov	rcx,[rbx+0C8h]
	lea	rax,[rbx+40h]
	cmp	rcx,rax
	jz	46D416h

l000000000046D401:
	test	rcx,rcx
	jz	46D40Bh

l000000000046D406:
	call	475540h

l000000000046D40B:
	mov	qword ptr [rbx+0C8h],+0h

l000000000046D416:
	lea	rcx,[rbx+0D0h]
	add	rsp,20h
	pop	rbx
	jmp	46AF20h
000000000046D427                      90 90 90 90 90 90 90 90 90        .........

;; fn000000000046D430: 000000000046D430
fn000000000046D430 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	xor	eax,eax
	test	r9,r9
	mov	rbx,rcx
	setnz	al
	mov	[rcx+8h],eax
	lea	rax,[0000000000497E30]                                 ; [rip+0002A9E5]
	mov	[rcx],rax
	call	46AC50h
	mov	[rbx+10h],rax
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret
000000000046D45E                                           48 89               H.
000000000046D460 C6 48 89 D9 E8 B7 D8 FF FF 48 89 F1 E8 3F 41 FA .H.......H...?A.
000000000046D470 FF 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 ................

;; fn000000000046D480: 000000000046D480
;;   Called from:
;;     000000000046A1C2 (in fn00000000004699E0)
fn000000000046D480 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	xor	eax,eax
	test	rdx,rdx
	mov	rbx,rcx
	setnz	al
	mov	[rcx+8h],eax
	lea	rax,[0000000000497E30]                                 ; [rip+0002A995]
	mov	[rcx],rax
	call	46AC50h
	mov	[rbx+10h],rax
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret
000000000046D4AE                                           48 89               H.
000000000046D4B0 C6 48 89 D9 E8 67 D8 FF FF 48 89 F1 E8 EF 40 FA .H...g...H....@.
000000000046D4C0 FF 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 ................

;; fn000000000046D4D0: 000000000046D4D0
fn000000000046D4D0 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	xor	eax,eax
	test	r9,r9
	mov	rbx,rcx
	setnz	al
	mov	[rcx+8h],eax
	lea	rax,[0000000000497E30]                                 ; [rip+0002A945]
	mov	[rcx],rax
	call	46AC50h
	mov	[rbx+10h],rax
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret
000000000046D4FE                                           48 89               H.
000000000046D500 C6 48 89 D9 E8 17 D8 FF FF 48 89 F1 E8 9F 40 FA .H.......H....@.
000000000046D510 FF 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 ................

;; fn000000000046D520: 000000000046D520
;;   Called from:
;;     0000000000463508 (in fn00000000004634F0)
;;     0000000000463598 (in fn0000000000463580)
fn000000000046D520 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	xor	eax,eax
	test	rdx,rdx
	mov	rbx,rcx
	setnz	al
	mov	[rcx+8h],eax
	lea	rax,[0000000000497E30]                                 ; [rip+0002A8F5]
	mov	[rcx],rax
	call	46AC50h
	mov	[rbx+10h],rax
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret
000000000046D54E                                           48 89               H.
000000000046D550 C6 48 89 D9 E8 C7 D7 FF FF 48 89 F1 E8 4F 40 FA .H.......H...O@.
000000000046D560 FF 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 ................

;; fn000000000046D570: 000000000046D570
fn000000000046D570 proc
	push	rbx
	sub	rsp,20h
	mov	rbx,rcx
	call	46D590h
	mov	rcx,rbx
	add	rsp,20h
	pop	rbx
	jmp	475550h
000000000046D58A                               90 90 90 90 90 90           ......

;; fn000000000046D590: 000000000046D590
;;   Called from:
;;     000000000046D578 (in fn000000000046D570)
fn000000000046D590 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	lea	rax,[0000000000497E30]                                 ; [rip+0002A893]
	mov	rbx,rcx
	lea	rcx,[rcx+10h]
	mov	[rcx-10h],rax
	call	46ACF0h
	mov	rcx,rbx
	add	rsp,28h
	pop	rbx
	pop	rsi
	jmp	46AD20h
000000000046D5BB                                  48 89 C6 48 89            H..H.
000000000046D5C0 D9 E8 5A D7 FF FF 48 89 F1 E8 E2 3F FA FF 90 90 ..Z...H....?....

;; fn000000000046D5D0: 000000000046D5D0
;;   Called from:
;;     0000000000463622 (in fn0000000000463610)
;;     000000000046364A (in fn0000000000463640)
;;     000000000046365A (in fn0000000000463650)
fn000000000046D5D0 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	lea	rax,[0000000000497E30]                                 ; [rip+0002A853]
	mov	rbx,rcx
	lea	rcx,[rcx+10h]
	mov	[rcx-10h],rax
	call	46ACF0h
	mov	rcx,rbx
	add	rsp,28h
	pop	rbx
	pop	rsi
	jmp	46AD20h
000000000046D5FB                                  48 89 C6 48 89            H..H.
000000000046D600 D9 E8 1A D7 FF FF 48 89 F1 E8 A2 3F FA FF 90 90 ......H....?....

;; fn000000000046D610: 000000000046D610
fn000000000046D610 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	xor	eax,eax
	test	r9,r9
	mov	rbx,rcx
	setnz	al
	mov	[rcx+8h],eax
	lea	rax,[0000000000497E70]                                 ; [rip+0002A845]
	mov	[rcx],rax
	call	46AC50h
	mov	[rbx+10h],rax
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret
000000000046D63E                                           48 89               H.
000000000046D640 C6 48 89 D9 E8 D7 D6 FF FF 48 89 F1 E8 5F 3F FA .H.......H..._?.
000000000046D650 FF 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 ................

;; fn000000000046D660: 000000000046D660
;;   Called from:
;;     000000000046A918 (in fn00000000004699E0)
fn000000000046D660 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	xor	eax,eax
	test	rdx,rdx
	mov	rbx,rcx
	setnz	al
	mov	[rcx+8h],eax
	lea	rax,[0000000000497E70]                                 ; [rip+0002A7F5]
	mov	[rcx],rax
	call	46AC50h
	mov	[rbx+10h],rax
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret
000000000046D68E                                           48 89               H.
000000000046D690 C6 48 89 D9 E8 87 D6 FF FF 48 89 F1 E8 0F 3F FA .H.......H....?.
000000000046D6A0 FF 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 ................

;; fn000000000046D6B0: 000000000046D6B0
fn000000000046D6B0 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	xor	eax,eax
	test	r9,r9
	mov	rbx,rcx
	setnz	al
	mov	[rcx+8h],eax
	lea	rax,[0000000000497E70]                                 ; [rip+0002A7A5]
	mov	[rcx],rax
	call	46AC50h
	mov	[rbx+10h],rax
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret
000000000046D6DE                                           48 89               H.
000000000046D6E0 C6 48 89 D9 E8 37 D6 FF FF 48 89 F1 E8 BF 3E FA .H...7...H....>.
000000000046D6F0 FF 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 ................

;; fn000000000046D700: 000000000046D700
;;   Called from:
;;     0000000000463678 (in fn0000000000463660)
;;     0000000000463708 (in fn00000000004636F0)
fn000000000046D700 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	xor	eax,eax
	test	rdx,rdx
	mov	rbx,rcx
	setnz	al
	mov	[rcx+8h],eax
	lea	rax,[0000000000497E70]                                 ; [rip+0002A755]
	mov	[rcx],rax
	call	46AC50h
	mov	[rbx+10h],rax
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret
000000000046D72E                                           48 89               H.
000000000046D730 C6 48 89 D9 E8 E7 D5 FF FF 48 89 F1 E8 6F 3E FA .H.......H...o>.
000000000046D740 FF 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 ................

;; fn000000000046D750: 000000000046D750
fn000000000046D750 proc
	push	rbx
	sub	rsp,20h
	mov	rbx,rcx
	call	46D770h
	mov	rcx,rbx
	add	rsp,20h
	pop	rbx
	jmp	475550h
000000000046D76A                               90 90 90 90 90 90           ......

;; fn000000000046D770: 000000000046D770
;;   Called from:
;;     000000000046D758 (in fn000000000046D750)
fn000000000046D770 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	lea	rax,[0000000000497E70]                                 ; [rip+0002A6F3]
	mov	rbx,rcx
	lea	rcx,[rcx+10h]
	mov	[rcx-10h],rax
	call	46ACF0h
	mov	rcx,rbx
	add	rsp,28h
	pop	rbx
	pop	rsi
	jmp	46AD20h
000000000046D79B                                  48 89 C6 48 89            H..H.
000000000046D7A0 D9 E8 7A D5 FF FF 48 89 F1 E8 02 3E FA FF 90 90 ..z...H....>....

;; fn000000000046D7B0: 000000000046D7B0
;;   Called from:
;;     0000000000463792 (in fn0000000000463780)
;;     00000000004637BA (in fn00000000004637B0)
;;     00000000004637CA (in fn00000000004637C0)
fn000000000046D7B0 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	lea	rax,[0000000000497E70]                                 ; [rip+0002A6B3]
	mov	rbx,rcx
	lea	rcx,[rcx+10h]
	mov	[rcx-10h],rax
	call	46ACF0h
	mov	rcx,rbx
	add	rsp,28h
	pop	rbx
	pop	rsi
	jmp	46AD20h
000000000046D7DB                                  48 89 C6 48 89            H..H.
000000000046D7E0 D9 E8 3A D5 FF FF 48 89 F1 E8 C2 3D FA FF 90 90 ..:...H....=....

;; fn000000000046D7F0: 000000000046D7F0
;;   Called from:
;;     00000000004637FD (in fn00000000004637D0)
;;     000000000046385B (in fn00000000004637D0)
;;     00000000004638CD (in fn00000000004638A0)
;;     000000000046392B (in fn00000000004638A0)
;;     0000000000469B94 (in fn00000000004699E0)
;;     000000000046D944 (in fn000000000046D920)
;;     000000000046D996 (in fn000000000046D970)
;;     000000000046D9E8 (in fn000000000046D9C0)
;;     000000000046DA34 (in fn000000000046DA10)
;;     000000000046DA86 (in fn000000000046DA60)
;;     000000000046DAD8 (in fn000000000046DAB0)
fn000000000046D7F0 proc
	push	rbx
	sub	rsp,20h
	mov	rax,[rcx+10h]
	mov	rbx,rcx
	test	rax,rax
	jz	46D8A7h

l000000000046D805:
	lea	rcx,[000000000048E380]                                 ; [rip+00020B74]
	mov	qword ptr [rax+18h],+0h
	mov	byte ptr [rax+20h],0h
	mov	byte ptr [rax+48h],2Eh
	mov	[rax+10h],rcx
	mov	rax,[rbx+10h]
	mov	byte ptr [rax+49h],2Ch
	mov	rax,[00000000004916F0]                                 ; [rip+00023EC1]
	mov	rcx,[rax]
	xor	eax,eax

l000000000046D834:
	movzx	r8d,byte ptr [rcx+rax]
	mov	rdx,[rbx+10h]
	mov	[rdx+rax+4Ah],r8b
	add	rax,1h
	cmp	rax,24h
	jnz	46D834h

l000000000046D84C:
	mov	rax,[00000000004916E0]                                 ; [rip+00023E8D]
	mov	r8,[rax]
	xor	eax,eax
	nop	dword ptr [rax+rax+0h]

l000000000046D860:
	movzx	ecx,byte ptr [r8+rax]
	mov	rdx,[rbx+10h]
	mov	[rdx+rax+6Eh],cl
	add	rax,1h
	cmp	rax,1Ah
	jnz	46D860h

l000000000046D877:
	mov	rax,[rbx+10h]
	lea	rbx,[000000000048E381]                                 ; [rip+00020AFF]
	mov	[rax+28h],rbx
	lea	rbx,[000000000048E386]                                 ; [rip+00020AF9]
	mov	qword ptr [rax+30h],+4h
	mov	qword ptr [rax+40h],+5h
	mov	[rax+38h],rbx
	add	rsp,20h
	pop	rbx
	ret

l000000000046D8A7:
	mov	ecx,90h
	call	475590h
	mov	rcx,[0000000000491C50]                                 ; [rip+00024398]
	mov	dword ptr [rax+8h],0h
	mov	qword ptr [rax+10h],+0h
	mov	qword ptr [rax+18h],+0h
	mov	byte ptr [rax+20h],0h
	mov	qword ptr [rax+28h],+0h
	lea	rdx,[rcx+10h]
	mov	qword ptr [rax+30h],+0h
	mov	qword ptr [rax+38h],+0h
	mov	qword ptr [rax+40h],+0h
	mov	byte ptr [rax+48h],0h
	mov	[rax],rdx
	mov	byte ptr [rax+49h],0h
	mov	byte ptr [rax+88h],0h
	mov	[rbx+10h],rax
	jmp	46D805h
000000000046D912       90 90 90 90 90 90 90 90 90 90 90 90 90 90   ..............

;; fn000000000046D920: 000000000046D920
fn000000000046D920 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	xor	eax,eax
	test	r8,r8
	mov	[rcx+10h],rdx
	mov	rbx,rcx
	setnz	al
	xor	edx,edx
	mov	[rcx+8h],eax
	lea	rax,[0000000000497ED0]                                 ; [rip+0002A58F]
	mov	[rcx],rax
	call	46D7F0h
	nop
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret
000000000046D951    48 89 C6 48 89 D9 E8 C4 D3 FF FF 48 89 F1 E8  H..H.......H...
000000000046D960 4C 3C FA FF 90 90 90 90 90 90 90 90 90 90 90 90 L<..............

;; fn000000000046D970: 000000000046D970
fn000000000046D970 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	xor	eax,eax
	test	r8,r8
	mov	qword ptr [rcx+10h],+0h
	mov	rbx,rcx
	setnz	al
	mov	[rcx+8h],eax
	lea	rax,[0000000000497ED0]                                 ; [rip+0002A53D]
	mov	[rcx],rax
	call	46D7F0h
	nop
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret
000000000046D9A3          48 89 C6 48 89 D9 E8 72 D3 FF FF 48 89    H..H...r...H.
000000000046D9B0 F1 E8 FA 3B FA FF 90 90 90 90 90 90 90 90 90 90 ...;............

;; fn000000000046D9C0: 000000000046D9C0
fn000000000046D9C0 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	xor	eax,eax
	test	rdx,rdx
	mov	qword ptr [rcx+10h],+0h
	mov	rbx,rcx
	setnz	al
	xor	edx,edx
	mov	[rcx+8h],eax
	lea	rax,[0000000000497ED0]                                 ; [rip+0002A4EB]
	mov	[rcx],rax
	call	46D7F0h
	nop
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret
000000000046D9F5                48 89 C6 48 89 D9 E8 20 D3 FF FF      H..H... ...
000000000046DA00 48 89 F1 E8 A8 3B FA FF 90 90 90 90 90 90 90 90 H....;..........

;; fn000000000046DA10: 000000000046DA10
fn000000000046DA10 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	xor	eax,eax
	test	r8,r8
	mov	[rcx+10h],rdx
	mov	rbx,rcx
	setnz	al
	xor	edx,edx
	mov	[rcx+8h],eax
	lea	rax,[0000000000497ED0]                                 ; [rip+0002A49F]
	mov	[rcx],rax
	call	46D7F0h
	nop
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret
000000000046DA41    48 89 C6 48 89 D9 E8 D4 D2 FF FF 48 89 F1 E8  H..H.......H...
000000000046DA50 5C 3B FA FF 90 90 90 90 90 90 90 90 90 90 90 90 \;..............

;; fn000000000046DA60: 000000000046DA60
fn000000000046DA60 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	xor	eax,eax
	test	r8,r8
	mov	qword ptr [rcx+10h],+0h
	mov	rbx,rcx
	setnz	al
	mov	[rcx+8h],eax
	lea	rax,[0000000000497ED0]                                 ; [rip+0002A44D]
	mov	[rcx],rax
	call	46D7F0h
	nop
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret
000000000046DA93          48 89 C6 48 89 D9 E8 82 D2 FF FF 48 89    H..H.......H.
000000000046DAA0 F1 E8 0A 3B FA FF 90 90 90 90 90 90 90 90 90 90 ...;............

;; fn000000000046DAB0: 000000000046DAB0
fn000000000046DAB0 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	xor	eax,eax
	test	rdx,rdx
	mov	qword ptr [rcx+10h],+0h
	mov	rbx,rcx
	setnz	al
	xor	edx,edx
	mov	[rcx+8h],eax
	lea	rax,[0000000000497ED0]                                 ; [rip+0002A3FB]
	mov	[rcx],rax
	call	46D7F0h
	nop
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret
000000000046DAE5                48 89 C6 48 89 D9 E8 30 D2 FF FF      H..H...0...
000000000046DAF0 48 89 F1 E8 B8 3A FA FF 90 90 90 90 90 90 90 90 H....:..........

;; fn000000000046DB00: 000000000046DB00
fn000000000046DB00 proc
	push	rbx
	sub	rsp,20h
	mov	rbx,rcx
	call	46DB20h
	mov	rcx,rbx
	add	rsp,20h
	pop	rbx
	jmp	475550h
000000000046DB1A                               90 90 90 90 90 90           ......

;; fn000000000046DB20: 000000000046DB20
;;   Called from:
;;     0000000000463982 (in fn0000000000463970)
;;     00000000004639AA (in fn00000000004639A0)
;;     00000000004639BA (in fn00000000004639B0)
;;     000000000046DB08 (in fn000000000046DB00)
fn000000000046DB20 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	mov	rax,[0000000000491DB0]                                 ; [rip+00024283]
	mov	rbx,rcx
	add	rax,10h
	mov	[rcx],rax
	mov	rcx,[rcx+10h]
	test	rcx,rcx
	jz	46DB46h

l000000000046DB40:
	mov	rax,[rcx]
	call	qword ptr [rax+8h]

l000000000046DB46:
	mov	rcx,rbx
	add	rsp,28h
	pop	rbx
	pop	rsi
	jmp	46AD20h
000000000046DB54             48 89 C6 48 89 D9 E8 C1 D1 FF FF 48     H..H.......H
000000000046DB60 89 F1 E8 49 3A FA FF 90 90 90 90 90 90 90 90 90 ...I:...........

;; fn000000000046DB70: 000000000046DB70
;;   Called from:
;;     00000000004639ED (in fn00000000004639C0)
;;     0000000000463A4B (in fn00000000004639C0)
;;     0000000000463ABD (in fn0000000000463A90)
;;     0000000000463B1B (in fn0000000000463A90)
;;     000000000046A2E0 (in fn00000000004699E0)
;;     000000000046DCC4 (in fn000000000046DCA0)
;;     000000000046DD16 (in fn000000000046DCF0)
;;     000000000046DD68 (in fn000000000046DD40)
;;     000000000046DDB4 (in fn000000000046DD90)
;;     000000000046DE06 (in fn000000000046DDE0)
;;     000000000046DE58 (in fn000000000046DE30)
fn000000000046DB70 proc
	push	rbx
	sub	rsp,20h
	mov	rdx,[rcx+10h]
	test	rdx,rdx
	jz	46DC25h

l000000000046DB82:
	lea	rax,[000000000048E380]                                 ; [rip+000207F7]
	mov	ecx,2Ch
	mov	qword ptr [rdx+18h],+0h
	mov	byte ptr [rdx+20h],0h
	mov	[rdx+4Ah],cx
	mov	[rdx+10h],rax
	mov	eax,2Eh
	mov	[rdx+48h],ax
	mov	rax,[00000000004916F0]                                 ; [rip+00023B3E]
	mov	r8,[rax]
	xor	eax,eax
	nop	word ptr [rax+rax+0h]

l000000000046DBC0:
	movsx	cx,byte ptr [r8+rax]
	mov	[rdx+rax*2+4Ch],cx
	add	rax,1h
	cmp	rax,24h
	jnz	46DBC0h

l000000000046DBD5:
	mov	rax,[00000000004916E0]                                 ; [rip+00023B04]
	mov	r8,[rax]
	xor	eax,eax

l000000000046DBE1:
	movsx	cx,byte ptr [r8+rax]
	mov	[rdx+rax*2+94h],cx
	add	rax,1h
	cmp	rax,1Ah
	jnz	46DBE1h

l000000000046DBF9:
	lea	rax,[000000000048E38C]                                 ; [rip+0002078C]
	mov	qword ptr [rdx+30h],+4h
	mov	qword ptr [rdx+40h],+5h
	mov	[rdx+28h],rax
	lea	rax,[000000000048E396]                                 ; [rip+0002077B]
	mov	[rdx+38h],rax
	add	rsp,20h
	pop	rbx
	ret

l000000000046DC25:
	mov	rbx,rcx
	mov	ecx,0D0h
	call	475590h
	mov	rdx,[0000000000491C60]                                 ; [rip+00024027]
	xor	r8d,r8d
	xor	r9d,r9d
	mov	dword ptr [rax+8h],0h
	mov	qword ptr [rax+10h],+0h
	mov	qword ptr [rax+18h],+0h
	mov	byte ptr [rax+20h],0h
	add	rdx,10h
	mov	qword ptr [rax+28h],+0h
	mov	qword ptr [rax+30h],+0h
	mov	[rax],rdx
	mov	qword ptr [rax+38h],+0h
	mov	rdx,rax
	mov	qword ptr [rax+40h],+0h
	mov	[rax+48h],r8w
	mov	[rax+4Ah],r9w
	mov	byte ptr [rax+0C8h],0h
	mov	[rbx+10h],rax
	jmp	46DB82h
000000000046DC9E                                           90 90               ..

;; fn000000000046DCA0: 000000000046DCA0
fn000000000046DCA0 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	xor	eax,eax
	test	r8,r8
	mov	[rcx+10h],rdx
	mov	rbx,rcx
	setnz	al
	xor	edx,edx
	mov	[rcx+8h],eax
	lea	rax,[0000000000497F50]                                 ; [rip+0002A28F]
	mov	[rcx],rax
	call	46DB70h
	nop
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret
000000000046DCD1    48 89 C6 48 89 D9 E8 44 D0 FF FF 48 89 F1 E8  H..H...D...H...
000000000046DCE0 CC 38 FA FF 90 90 90 90 90 90 90 90 90 90 90 90 .8..............

;; fn000000000046DCF0: 000000000046DCF0
fn000000000046DCF0 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	xor	eax,eax
	test	r8,r8
	mov	qword ptr [rcx+10h],+0h
	mov	rbx,rcx
	setnz	al
	mov	[rcx+8h],eax
	lea	rax,[0000000000497F50]                                 ; [rip+0002A23D]
	mov	[rcx],rax
	call	46DB70h
	nop
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret
000000000046DD23          48 89 C6 48 89 D9 E8 F2 CF FF FF 48 89    H..H.......H.
000000000046DD30 F1 E8 7A 38 FA FF 90 90 90 90 90 90 90 90 90 90 ..z8............

;; fn000000000046DD40: 000000000046DD40
fn000000000046DD40 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	xor	eax,eax
	test	rdx,rdx
	mov	qword ptr [rcx+10h],+0h
	mov	rbx,rcx
	setnz	al
	xor	edx,edx
	mov	[rcx+8h],eax
	lea	rax,[0000000000497F50]                                 ; [rip+0002A1EB]
	mov	[rcx],rax
	call	46DB70h
	nop
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret
000000000046DD75                48 89 C6 48 89 D9 E8 A0 CF FF FF      H..H.......
000000000046DD80 48 89 F1 E8 28 38 FA FF 90 90 90 90 90 90 90 90 H...(8..........

;; fn000000000046DD90: 000000000046DD90
fn000000000046DD90 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	xor	eax,eax
	test	r8,r8
	mov	[rcx+10h],rdx
	mov	rbx,rcx
	setnz	al
	xor	edx,edx
	mov	[rcx+8h],eax
	lea	rax,[0000000000497F50]                                 ; [rip+0002A19F]
	mov	[rcx],rax
	call	46DB70h
	nop
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret
000000000046DDC1    48 89 C6 48 89 D9 E8 54 CF FF FF 48 89 F1 E8  H..H...T...H...
000000000046DDD0 DC 37 FA FF 90 90 90 90 90 90 90 90 90 90 90 90 .7..............

;; fn000000000046DDE0: 000000000046DDE0
fn000000000046DDE0 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	xor	eax,eax
	test	r8,r8
	mov	qword ptr [rcx+10h],+0h
	mov	rbx,rcx
	setnz	al
	mov	[rcx+8h],eax
	lea	rax,[0000000000497F50]                                 ; [rip+0002A14D]
	mov	[rcx],rax
	call	46DB70h
	nop
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret
000000000046DE13          48 89 C6 48 89 D9 E8 02 CF FF FF 48 89    H..H.......H.
000000000046DE20 F1 E8 8A 37 FA FF 90 90 90 90 90 90 90 90 90 90 ...7............

;; fn000000000046DE30: 000000000046DE30
fn000000000046DE30 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	xor	eax,eax
	test	rdx,rdx
	mov	qword ptr [rcx+10h],+0h
	mov	rbx,rcx
	setnz	al
	xor	edx,edx
	mov	[rcx+8h],eax
	lea	rax,[0000000000497F50]                                 ; [rip+0002A0FB]
	mov	[rcx],rax
	call	46DB70h
	nop
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret
000000000046DE65                48 89 C6 48 89 D9 E8 B0 CE FF FF      H..H.......
000000000046DE70 48 89 F1 E8 38 37 FA FF 90 90 90 90 90 90 90 90 H...87..........

;; fn000000000046DE80: 000000000046DE80
fn000000000046DE80 proc
	push	rbx
	sub	rsp,20h
	mov	rbx,rcx
	call	46DEA0h
	mov	rcx,rbx
	add	rsp,20h
	pop	rbx
	jmp	475550h
000000000046DE9A                               90 90 90 90 90 90           ......

;; fn000000000046DEA0: 000000000046DEA0
;;   Called from:
;;     0000000000463B72 (in fn0000000000463B60)
;;     0000000000463B9A (in fn0000000000463B90)
;;     0000000000463BAA (in fn0000000000463BA0)
;;     000000000046DE88 (in fn000000000046DE80)
fn000000000046DEA0 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	mov	rax,[0000000000491DC0]                                 ; [rip+00023F13]
	mov	rbx,rcx
	add	rax,10h
	mov	[rcx],rax
	mov	rcx,[rcx+10h]
	test	rcx,rcx
	jz	46DEC6h

l000000000046DEC0:
	mov	rax,[rcx]
	call	qword ptr [rax+8h]

l000000000046DEC6:
	mov	rcx,rbx
	add	rsp,28h
	pop	rbx
	pop	rsi
	jmp	46AD20h
000000000046DED4             48 89 C6 48 89 D9 E8 41 CE FF FF 48     H..H...A...H
000000000046DEE0 89 F1 E8 C9 36 FA FF 90 90 90 90 90 90 90 90 90 ....6...........

;; fn000000000046DEF0: 000000000046DEF0
fn000000000046DEF0 proc
	xor	eax,eax
	test	rdx,rdx
	setnz	al
	mov	[rcx+8h],eax
	lea	rax,[0000000000497FD0]                                 ; [rip+0002A0CE]
	mov	[rcx],rax
	ret
000000000046DF06                   90 90 90 90 90 90 90 90 90 90       ..........

;; fn000000000046DF10: 000000000046DF10
fn000000000046DF10 proc
	xor	eax,eax
	test	rdx,rdx
	setnz	al
	mov	[rcx+8h],eax
	lea	rax,[0000000000497FD0]                                 ; [rip+0002A0AE]
	mov	[rcx],rax
	ret
000000000046DF26                   90 90 90 90 90 90 90 90 90 90       ..........

;; fn000000000046DF30: 000000000046DF30
fn000000000046DF30 proc
	push	rbx
	sub	rsp,20h
	lea	rax,[0000000000497FD0]                                 ; [rip+0002A094]
	mov	rbx,rcx
	mov	[rcx],rax
	call	46AD20h
	mov	rcx,rbx
	add	rsp,20h
	pop	rbx
	jmp	475550h
000000000046DF54             90 90 90 90 90 90 90 90 90 90 90 90     ............

;; fn000000000046DF60: 000000000046DF60
fn000000000046DF60 proc
	lea	rax,[0000000000497FD0]                                 ; [rip+0002A069]
	mov	[rcx],rax
	jmp	46AD20h
000000000046DF6F                                              90                .

;; fn000000000046DF70: 000000000046DF70
fn000000000046DF70 proc
	lea	rax,[0000000000497FD0]                                 ; [rip+0002A059]
	mov	[rcx],rax
	jmp	46AD20h
000000000046DF7F                                              90                .

;; fn000000000046DF80: 000000000046DF80
fn000000000046DF80 proc
	xor	eax,eax
	test	rdx,rdx
	setnz	al
	mov	[rcx+8h],eax
	lea	rax,[0000000000498050]                                 ; [rip+0002A0BE]
	mov	[rcx],rax
	ret
000000000046DF96                   90 90 90 90 90 90 90 90 90 90       ..........

;; fn000000000046DFA0: 000000000046DFA0
fn000000000046DFA0 proc
	xor	eax,eax
	test	rdx,rdx
	setnz	al
	mov	[rcx+8h],eax
	lea	rax,[0000000000498050]                                 ; [rip+0002A09E]
	mov	[rcx],rax
	ret
000000000046DFB6                   90 90 90 90 90 90 90 90 90 90       ..........

;; fn000000000046DFC0: 000000000046DFC0
fn000000000046DFC0 proc
	push	rbx
	sub	rsp,20h
	lea	rax,[0000000000498050]                                 ; [rip+0002A084]
	mov	rbx,rcx
	mov	[rcx],rax
	call	46AD20h
	mov	rcx,rbx
	add	rsp,20h
	pop	rbx
	jmp	475550h
000000000046DFE4             90 90 90 90 90 90 90 90 90 90 90 90     ............

;; fn000000000046DFF0: 000000000046DFF0
fn000000000046DFF0 proc
	lea	rax,[0000000000498050]                                 ; [rip+0002A059]
	mov	[rcx],rax
	jmp	46AD20h
000000000046DFFF                                              90                .

;; fn000000000046E000: 000000000046E000
fn000000000046E000 proc
	lea	rax,[0000000000498050]                                 ; [rip+0002A049]
	mov	[rcx],rax
	jmp	46AD20h
000000000046E00F                                              90                .

;; fn000000000046E010: 000000000046E010
fn000000000046E010 proc
	xor	eax,eax
	test	rdx,rdx
	setnz	al
	mov	[rcx+8h],eax
	lea	rax,[00000000004980D0]                                 ; [rip+0002A0AE]
	mov	[rcx],rax
	ret
000000000046E026                   90 90 90 90 90 90 90 90 90 90       ..........

;; fn000000000046E030: 000000000046E030
fn000000000046E030 proc
	xor	eax,eax
	test	rdx,rdx
	setnz	al
	mov	[rcx+8h],eax
	lea	rax,[00000000004980D0]                                 ; [rip+0002A08E]
	mov	[rcx],rax
	ret
000000000046E046                   90 90 90 90 90 90 90 90 90 90       ..........

;; fn000000000046E050: 000000000046E050
fn000000000046E050 proc
	push	rbx
	sub	rsp,20h
	lea	rax,[00000000004980D0]                                 ; [rip+0002A074]
	mov	rbx,rcx
	mov	[rcx],rax
	call	46AD20h
	mov	rcx,rbx
	add	rsp,20h
	pop	rbx
	jmp	475550h
000000000046E074             90 90 90 90 90 90 90 90 90 90 90 90     ............

;; fn000000000046E080: 000000000046E080
fn000000000046E080 proc
	lea	rax,[00000000004980D0]                                 ; [rip+0002A049]
	mov	[rcx],rax
	jmp	46AD20h
000000000046E08F                                              90                .

;; fn000000000046E090: 000000000046E090
fn000000000046E090 proc
	lea	rax,[00000000004980D0]                                 ; [rip+0002A039]
	mov	[rcx],rax
	jmp	46AD20h
000000000046E09F                                              90                .

;; fn000000000046E0A0: 000000000046E0A0
fn000000000046E0A0 proc
	xor	eax,eax
	test	rdx,rdx
	setnz	al
	mov	[rcx+8h],eax
	lea	rax,[0000000000498110]                                 ; [rip+0002A05E]
	mov	[rcx],rax
	ret
000000000046E0B6                   90 90 90 90 90 90 90 90 90 90       ..........

;; fn000000000046E0C0: 000000000046E0C0
fn000000000046E0C0 proc
	xor	eax,eax
	test	rdx,rdx
	setnz	al
	mov	[rcx+8h],eax
	lea	rax,[0000000000498110]                                 ; [rip+0002A03E]
	mov	[rcx],rax
	ret
000000000046E0D6                   90 90 90 90 90 90 90 90 90 90       ..........

;; fn000000000046E0E0: 000000000046E0E0
fn000000000046E0E0 proc
	push	rbx
	sub	rsp,20h
	lea	rax,[0000000000498110]                                 ; [rip+0002A024]
	mov	rbx,rcx
	mov	[rcx],rax
	call	46AD20h
	mov	rcx,rbx
	add	rsp,20h
	pop	rbx
	jmp	475550h
000000000046E104             90 90 90 90 90 90 90 90 90 90 90 90     ............

;; fn000000000046E110: 000000000046E110
fn000000000046E110 proc
	lea	rax,[0000000000498110]                                 ; [rip+00029FF9]
	mov	[rcx],rax
	jmp	46AD20h
000000000046E11F                                              90                .

;; fn000000000046E120: 000000000046E120
fn000000000046E120 proc
	lea	rax,[0000000000498110]                                 ; [rip+00029FE9]
	mov	[rcx],rax
	jmp	46AD20h
000000000046E12F                                              90                .

;; fn000000000046E130: 000000000046E130
fn000000000046E130 proc
	push	rbx
	sub	rsp,20h
	lea	rax,[0000000000498150]                                 ; [rip+0002A014]
	mov	rbx,rcx
	mov	[rcx],rax
	call	46F0F0h
	mov	rcx,rbx
	add	rsp,20h
	pop	rbx
	jmp	475550h
000000000046E154             90 90 90 90 90 90 90 90 90 90 90 90     ............

;; fn000000000046E160: 000000000046E160
;;   Called from:
;;     0000000000465072 (in fn0000000000465060)
;;     000000000046509A (in fn0000000000465090)
;;     00000000004688A2 (in fn0000000000468890)
;;     00000000004688CA (in fn00000000004688C0)
fn000000000046E160 proc
	lea	rax,[0000000000498150]                                 ; [rip+00029FE9]
	mov	[rcx],rax
	jmp	46F0F0h
000000000046E16F                                              90                .

;; fn000000000046E170: 000000000046E170
fn000000000046E170 proc
	mov	[rcx+1Ch],edx
	mov	edx,[rcx+20h]
	jmp	46E370h
000000000046E17B                                  90 90 90 90 90            .....

;; fn000000000046E180: 000000000046E180
fn000000000046E180 proc
	sub	rsp,28h
	or	[rcx+20h],edx
	test	[rcx+1Ch],edx
	jnz	46E191h

l000000000046E18C:
	add	rsp,28h
	ret

l000000000046E191:
	call	476060h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop

;; fn000000000046E1A0: 000000000046E1A0
;;   Called from:
;;     000000000046E19F (in fn000000000046E180)
;;     000000000046E32B (in fn000000000046E310)
;;     000000000046E3F0 (in fn000000000046E3B0)
;;     000000000046E5CF (in fn000000000046E490)
fn000000000046E1A0 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	mov	rsi,rcx
	mov	rcx,rdx
	mov	rbx,rdx
	call	472520h
	test	al,al
	jz	46E204h

l000000000046E1B8:
	mov	rcx,rbx
	call	472FC0h
	mov	rcx,rbx
	mov	[rsi+0F0h],rax
	call	472820h
	test	al,al
	jz	46E220h

l000000000046E1D3:
	mov	rcx,rbx
	call	4732C0h
	mov	rcx,rbx
	mov	[rsi+0F8h],rax
	call	472760h
	test	al,al
	jz	46E240h

l000000000046E1EE:
	mov	rcx,rbx
	call	473200h
	mov	[rsi+100h],rax
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret

l000000000046E204:
	mov	qword ptr [rsi+0F0h],+0h
	mov	rcx,rbx
	call	472820h
	test	al,al
	jnz	46E1D3h

l000000000046E21B:
	nop	dword ptr [rax+rax+0h]

l000000000046E220:
	mov	qword ptr [rsi+0F8h],+0h
	mov	rcx,rbx
	call	472760h
	test	al,al
	jnz	46E1EEh

l000000000046E237:
	nop	word ptr [rax+rax+0h]

l000000000046E240:
	mov	qword ptr [rsi+100h],+0h
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret
000000000046E252       90 90 90 90 90 90 90 90 90 90 90 90 90 90   ..............

;; fn000000000046E260: 000000000046E260
fn000000000046E260 proc
	mov	rax,[rcx+0D8h]
	mov	[rcx+0D8h],rdx
	ret
000000000046E26F                                              90                .

;; fn000000000046E270: 000000000046E270
fn000000000046E270 proc
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,20h
	cmp	byte ptr [rcx+0E1h],0h
	mov	rbx,rcx
	mov	esi,edx
	jz	46E2A0h

l000000000046E285:
	movzx	eax,byte ptr [rcx+0E0h]
	mov	[rbx+0E0h],sil
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	ret
000000000046E29B                                  0F 1F 44 00 00            ..D..

l000000000046E2A0:
	mov	rdi,[rcx+0F0h]
	test	rdi,rdi
	jz	46E2FDh

l000000000046E2AC:
	cmp	byte ptr [rdi+38h],0h
	jz	46E2D0h

l000000000046E2B2:
	movzx	eax,byte ptr [rdi+59h]

l000000000046E2B6:
	mov	byte ptr [rbx+0E1h],1h
	mov	[rbx+0E0h],sil
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	ret
000000000046E2CC                                     0F 1F 40 00             ..@.

l000000000046E2D0:
	mov	rcx,rdi
	call	42B320h
	mov	rax,[rdi]
	lea	rdx,[000000000042B5F0]                                 ; [rip+FFFBD30E]
	mov	r8,[rax+30h]
	mov	eax,20h
	cmp	r8,rdx
	jz	46E2B6h

l000000000046E2F0:
	mov	edx,20h
	mov	rcx,rdi
	call	r8
	jmp	46E2B6h

l000000000046E2FD:
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

;; fn000000000046E310: 000000000046E310
;;   Called from:
;;     000000000044B0C1 (in fn000000000044B040)
;;     000000000044B0E2 (in fn000000000044B040)
;;     000000000044B1BD (in fn000000000044B140)
;;     000000000044B1DD (in fn000000000044B140)
;;     000000000044B265 (in fn000000000044B230)
;;     000000000044B285 (in fn000000000044B230)
;;     000000000044B300 (in fn000000000044B2D0)
;;     000000000044B31F (in fn000000000044B2D0)
;;     000000000044E071 (in fn000000000044DFF0)
;;     000000000044E12D (in fn000000000044E0B0)
;;     000000000044E181 (in fn000000000044E160)
;;     000000000044E1B0 (in fn000000000044E190)
;;     00000000004500F9 (in fn0000000000450080)
;;     00000000004501A5 (in fn0000000000450130)
;;     00000000004501F4 (in fn00000000004501E0)
;;     0000000000450213 (in fn0000000000450200)
;;     000000000045910C (in fn0000000000459080)
;;     000000000045912F (in fn0000000000459080)
;;     0000000000459169 (in fn0000000000459080)
;;     000000000045929C (in fn0000000000459210)
;;     00000000004592BF (in fn0000000000459210)
;;     00000000004592F9 (in fn0000000000459210)
;;     0000000000459424 (in fn00000000004593A0)
;;     0000000000459447 (in fn00000000004593A0)
;;     0000000000459481 (in fn00000000004593A0)
;;     000000000045951A (in fn00000000004594E0)
;;     0000000000459539 (in fn00000000004594E0)
;;     000000000045958C (in fn00000000004594E0)
;;     000000000045965A (in fn0000000000459620)
;;     0000000000459679 (in fn0000000000459620)
;;     00000000004596CC (in fn0000000000459620)
;;     0000000000459792 (in fn0000000000459760)
;;     00000000004597B1 (in fn0000000000459760)
;;     0000000000459804 (in fn0000000000459760)
;;     000000000045F5BC (in fn000000000045F530)
;;     000000000045F5EB (in fn000000000045F530)
;;     000000000045F70C (in fn000000000045F680)
;;     000000000045F73B (in fn000000000045F680)
;;     000000000045F854 (in fn000000000045F7D0)
;;     000000000045F883 (in fn000000000045F7D0)
;;     000000000045F90E (in fn000000000045F8D0)
;;     000000000045F93A (in fn000000000045F8D0)
;;     000000000045F9FE (in fn000000000045F9C0)
;;     000000000045FA2A (in fn000000000045F9C0)
;;     000000000045FAE6 (in fn000000000045FAB0)
;;     000000000045FB12 (in fn000000000045FAB0)
;;     0000000000460A84 (in fn0000000000460A00)
;;     0000000000460AB3 (in fn0000000000460A00)
;;     0000000000460BC4 (in fn0000000000460B40)
;;     0000000000460BF3 (in fn0000000000460B40)
;;     0000000000460CFC (in fn0000000000460C80)
;;     0000000000460D2B (in fn0000000000460C80)
;;     0000000000460D9E (in fn0000000000460D70)
;;     0000000000460DCA (in fn0000000000460D70)
;;     0000000000460E7E (in fn0000000000460E50)
;;     0000000000460EAA (in fn0000000000460E50)
;;     0000000000460F56 (in fn0000000000460F30)
;;     0000000000460F82 (in fn0000000000460F30)
;;     000000000046CB18 (in fn000000000046C940)
;;     000000000046CB9B (in fn000000000046C940)
;;     000000000046CC0F (in fn000000000046C940)
;;     000000000046CC90 (in fn000000000046C940)
;;     000000000046E30F (in fn000000000046E270)
;;     000000000046E786 (in fn000000000046E720)
;;     000000000046E886 (in fn000000000046E820)
fn000000000046E310 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	mov	rbx,rcx
	mov	rsi,rdx
	call	46D210h
	lea	rdx,[rbx+0D0h]
	mov	rcx,rbx
	call	46E1A0h
	xor	eax,eax
	test	rsi,rsi
	mov	byte ptr [rbx+0E0h],0h
	setz	al
	mov	byte ptr [rbx+0E1h],0h
	mov	qword ptr [rbx+0D8h],+0h
	mov	dword ptr [rbx+1Ch],0h
	mov	[rbx+0E8h],rsi
	mov	[rbx+20h],eax
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret
000000000046E369                            90 90 90 90 90 90 90          .......

;; fn000000000046E370: 000000000046E370
;;   Called from:
;;     000000000044B4CD (in fn000000000044B410)
;;     000000000044B61D (in fn000000000044B560)
;;     000000000044B76D (in fn000000000044B6B0)
;;     000000000044B8BD (in fn000000000044B800)
;;     000000000044BA0D (in fn000000000044B950)
;;     000000000044BB5D (in fn000000000044BAA0)
;;     000000000044BCAD (in fn000000000044BBF0)
;;     000000000044BDFD (in fn000000000044BD40)
;;     000000000044BF4D (in fn000000000044BE90)
;;     000000000044C09D (in fn000000000044BFE0)
;;     000000000044C1ED (in fn000000000044C130)
;;     000000000044C3AD (in fn000000000044C310)
;;     000000000044C67E (in fn000000000044C570)
;;     000000000044C7B7 (in fn000000000044C770)
;;     000000000044C929 (in fn000000000044C890)
;;     000000000044CA1F (in fn000000000044C9B0)
;;     000000000044CB24 (in fn000000000044CAB0)
;;     000000000044CC24 (in fn000000000044CBB0)
;;     000000000044CCCE (in fn000000000044CCB0)
;;     000000000044CD4F (in fn000000000044CCB0)
;;     000000000044CDED (in fn000000000044CDD0)
;;     000000000044CE68 (in fn000000000044CDD0)
;;     000000000044D00D (in fn000000000044CFF0)
;;     000000000044D086 (in fn000000000044CFF0)
;;     000000000044D190 (in fn000000000044D110)
;;     000000000044D368 (in fn000000000044D210)
;;     000000000044D6A1 (in fn000000000044D460)
;;     000000000044D7B6 (in fn000000000044D740)
;;     000000000044D936 (in fn000000000044D8C0)
;;     000000000044DC30 (in fn000000000044DAD0)
;;     000000000044DDB0 (in fn000000000044DD90)
;;     000000000044DE14 (in fn000000000044DD90)
;;     000000000044DE39 (in fn000000000044DD90)
;;     000000000044DF71 (in fn000000000044DEC0)
;;     000000000044E302 (in fn000000000044E2A0)
;;     000000000044E4BD (in fn000000000044E3F0)
;;     000000000044E67F (in fn000000000044E580)
;;     000000000044E7E6 (in fn000000000044E750)
;;     000000000044E823 (in fn000000000044E750)
;;     000000000044E8F0 (in fn000000000044E8B0)
;;     000000000044E9D4 (in fn000000000044E970)
;;     000000000044EAAC (in fn000000000044EA50)
;;     000000000044EC68 (in fn000000000044EC10)
;;     000000000044ECC2 (in fn000000000044EC10)
;;     000000000044EDAC (in fn000000000044ED50)
;;     000000000044EE1C (in fn000000000044EDC0)
;;     000000000044EE8B (in fn000000000044EE30)
;;     000000000044EEEB (in fn000000000044EE90)
;;     000000000044EF2C (in fn000000000044EEF0)
;;     000000000044F029 (in fn000000000044EF40)
;;     000000000044F085 (in fn000000000044EF40)
;;     000000000044F24F (in fn000000000044F160)
;;     000000000044F2B2 (in fn000000000044F160)
;;     000000000044F48E (in fn000000000044F3A0)
;;     000000000044F4F2 (in fn000000000044F3A0)
;;     000000000044F6C8 (in fn000000000044F5D0)
;;     000000000044F722 (in fn000000000044F5D0)
;;     000000000044F8E9 (in fn000000000044F800)
;;     000000000044F945 (in fn000000000044F800)
;;     000000000044FB09 (in fn000000000044FA20)
;;     000000000044FB65 (in fn000000000044FA20)
;;     000000000044FD29 (in fn000000000044FC40)
;;     000000000044FD85 (in fn000000000044FC40)
;;     000000000044FF49 (in fn000000000044FE60)
;;     000000000044FFA5 (in fn000000000044FE60)
;;     00000000004503B7 (in fn0000000000450310)
;;     00000000004503D2 (in fn0000000000450310)
;;     0000000000458FB7 (in fn0000000000458F90)
;;     0000000000458FD2 (in fn0000000000458F90)
;;     000000000045900A (in fn0000000000458FE0)
;;     0000000000459022 (in fn0000000000458FE0)
;;     0000000000459065 (in fn0000000000459030)
;;     000000000045918D (in fn0000000000459080)
;;     00000000004591AA (in fn0000000000459080)
;;     000000000045931E (in fn0000000000459210)
;;     000000000045933A (in fn0000000000459210)
;;     00000000004595B0 (in fn00000000004594E0)
;;     00000000004595CB (in fn00000000004594E0)
;;     00000000004596F1 (in fn0000000000459620)
;;     000000000045970C (in fn0000000000459620)
;;     000000000045F46B (in fn000000000045F440)
;;     000000000045F482 (in fn000000000045F440)
;;     000000000045F4BE (in fn000000000045F490)
;;     000000000045F4D5 (in fn000000000045F490)
;;     000000000045F515 (in fn000000000045F4E0)
;;     000000000045F613 (in fn000000000045F530)
;;     000000000045F62E (in fn000000000045F530)
;;     000000000045F764 (in fn000000000045F680)
;;     000000000045F77F (in fn000000000045F680)
;;     000000000045F962 (in fn000000000045F8D0)
;;     000000000045F97D (in fn000000000045F8D0)
;;     000000000045FA53 (in fn000000000045F9C0)
;;     000000000045FA6E (in fn000000000045F9C0)
;;     000000000046093B (in fn0000000000460910)
;;     0000000000460952 (in fn0000000000460910)
;;     000000000046098E (in fn0000000000460960)
;;     00000000004609A5 (in fn0000000000460960)
;;     00000000004609E5 (in fn00000000004609B0)
;;     0000000000460ADB (in fn0000000000460A00)
;;     0000000000460AFA (in fn0000000000460A00)
;;     0000000000460C1C (in fn0000000000460B40)
;;     0000000000460C3A (in fn0000000000460B40)
;;     0000000000460DF2 (in fn0000000000460D70)
;;     0000000000460E0D (in fn0000000000460D70)
;;     0000000000460ED3 (in fn0000000000460E50)
;;     0000000000460EEE (in fn0000000000460E50)
;;     000000000046E176 (in fn000000000046E170)
;;     000000000046E475 (in fn000000000046E460)
;;     000000000046E5ED (in fn000000000046E490)
;;     000000000046E713 (in fn000000000046E710)
;;     0000000000470168 (in fn0000000000470070)
;;     00000000004701A8 (in fn0000000000470070)
;;     0000000000470248 (in fn0000000000470070)
;;     0000000000470272 (in fn0000000000470070)
;;     0000000000471733 (in fn0000000000471670)
;;     0000000000471C80 (in fn0000000000471C20)
;;     00000000004738AE (in fn0000000000473870)
;;     00000000004738FE (in fn00000000004738C0)
;;     000000000047394E (in fn0000000000473910)
;;     000000000047436C (in fn00000000004741E0)
;;     000000000047454C (in fn00000000004744D0)
;;     0000000000474750 (in fn0000000000474710)
fn000000000046E370 proc
	sub	rsp,28h
	cmp	qword ptr [rcx+0E8h],0h
	jz	46E390h

l000000000046E37E:
	test	[rcx+1Ch],edx
	mov	[rcx+20h],edx
	jnz	46E395h

l000000000046E386:
	add	rsp,28h
	ret
000000000046E38B                                  0F 1F 44 00 00            ..D..

l000000000046E390:
	or	edx,1h
	jmp	46E37Eh

l000000000046E395:
	lea	rcx,[000000000048D5B0]                                 ; [rip+0001F214]
	call	470B20h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop

;; fn000000000046E3B0: 000000000046E3B0
;;   Called from:
;;     000000000046E3AF (in fn000000000046E370)
fn000000000046E3B0 proc
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,30h
	mov	rbx,rdx
	lea	rsi,[rsp+20h]
	lea	rdx,[rdx+0D0h]
	mov	rdi,r8
	mov	rbp,rcx
	call	46AE80h
	mov	rdx,rbx
	mov	r8,rdi
	mov	rcx,rsi
	call	46D1A0h
	mov	rcx,rsi
	call	46AF20h
	mov	rdx,rdi
	mov	rcx,rbx
	call	46E1A0h
	mov	rbx,[rbx+0E8h]
	test	rbx,rbx
	jz	46E42Fh

l000000000046E401:
	lea	r12,[rbx+38h]
	mov	rcx,rsi
	mov	rdx,r12
	call	46AE80h
	mov	rax,[rbx]
	mov	rdx,rdi
	mov	rcx,rbx
	call	qword ptr [rax+10h]
	mov	rcx,r12
	mov	rdx,rdi
	call	46AF60h
	mov	rcx,rsi
	call	46AF20h

l000000000046E42F:
	mov	rax,rbp
	add	rsp,30h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
000000000046E43D                                        48 89 C3              H..
000000000046E440 48 89 E9 E8 D8 CA FF FF 48 89 D9 E8 60 31 FA FF H.......H...`1..
000000000046E450 48 89 F1 48 89 C3 E8 C5 CA FF FF EB E3 90 90 90 H..H............

;; fn000000000046E460: 000000000046E460
;;   Called from:
;;     000000000046C71F (in fn000000000046C5F0)
;;     000000000046C736 (in fn000000000046C5F0)
;;     000000000046C74D (in fn000000000046C5F0)
;;     000000000046C764 (in fn000000000046C5F0)
fn000000000046E460 proc
	push	rbx
	sub	rsp,20h
	mov	rbx,[rcx+0E8h]
	mov	[rcx+0E8h],rdx
	xor	edx,edx
	call	46E370h
	mov	rax,rbx
	add	rsp,20h
	pop	rbx
	ret
000000000046E483          90 90 90 90 90 90 90 90 90 90 90 90 90    .............

;; fn000000000046E490: 000000000046E490
fn000000000046E490 proc
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,30h
	cmp	rcx,rdx
	mov	rsi,rcx
	mov	rbx,rdx
	jz	46E5F2h

l000000000046E4A9:
	mov	eax,[rdx+0C0h]
	cmp	eax,8h
	jg	46E600h

l000000000046E4B8:
	lea	rdi,[rcx+40h]
	mov	r12,rdi

l000000000046E4BF:
	mov	rbp,[rbx+28h]
	test	rbp,rbp
	jz	46E4CDh

l000000000046E4C8:
	lock
	add	dword ptr [rbp+14h],1h

l000000000046E4CD:
	xor	edx,edx
	mov	rcx,rsi
	call	46C850h
	mov	rcx,[rsi+0C8h]
	cmp	rcx,r12
	jz	46E4F8h

l000000000046E4E3:
	test	rcx,rcx
	jz	46E4EDh

l000000000046E4E8:
	call	475540h

l000000000046E4ED:
	mov	qword ptr [rsi+0C8h],+0h

l000000000046E4F8:
	mov	rcx,rsi
	call	46C8F0h
	mov	ecx,[rbx+0C0h]
	mov	[rsi+28h],rbp
	test	ecx,ecx
	jle	46E542h

l000000000046E50E:
	lea	edx,[rcx-1h]
	xor	r8d,r8d
	add	rdx,1h
	shl	rdx,4h
	nop	dword ptr [rax+0h]

l000000000046E520:
	mov	r9,[rbx+0C8h]
	mov	rax,[r9+r8]
	mov	[rdi+r8],rax
	mov	eax,[r9+r8+8h]
	mov	[rdi+r8+8h],eax
	add	r8,10h
	cmp	r8,rdx
	jnz	46E520h

l000000000046E542:
	mov	eax,[rbx+18h]
	cmp	byte ptr [rbx+0E1h],0h
	mov	[rsi+0C8h],rdi
	mov	[rsi+0C0h],ecx
	mov	[rsi+18h],eax
	mov	rax,[rbx+10h]
	mov	[rsi+10h],rax
	mov	rax,[rbx+8h]
	mov	[rsi+8h],rax
	mov	rax,[rbx+0D8h]
	mov	[rsi+0D8h],rax
	jz	46E670h

l000000000046E580:
	movzx	edi,byte ptr [rbx+0E0h]

l000000000046E587:
	cmp	byte ptr [rsi+0E1h],0h
	jz	46E644h

l000000000046E594:
	mov	[rsi+0E0h],dil
	lea	rdi,[rsp+20h]
	lea	rdx,[rbx+0D0h]
	lea	rbp,[rsi+0D0h]
	mov	rcx,rdi
	call	46AE80h
	mov	rdx,rdi
	mov	rcx,rbp
	call	46AF60h
	mov	rcx,rdi
	call	46AF20h
	mov	rdx,rbp
	mov	rcx,rsi
	call	46E1A0h
	mov	edx,2h
	mov	rcx,rsi
	call	46C850h
	mov	eax,[rbx+1Ch]
	mov	edx,[rsi+20h]
	mov	rcx,rsi
	mov	[rsi+1Ch],eax
	call	46E370h

l000000000046E5F2:
	mov	rax,rsi
	add	rsp,30h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret

l000000000046E600:
	movsxd	rcx,eax
	shl	rcx,4h
	call	475560h
	movsxd	rcx,dword ptr [rbx+0C0h]
	xor	edx,edx
	mov	rdi,rax
	test	rcx,rcx
	jz	46E63Bh

l000000000046E61D:
	nop	dword ptr [rax]

l000000000046E620:
	add	rdx,1h
	mov	qword ptr [rax],+0h
	mov	dword ptr [rax+8h],0h
	add	rax,10h
	cmp	rcx,rdx
	jnz	46E620h

l000000000046E63B:
	lea	r12,[rsi+40h]
	jmp	46E4BFh

l000000000046E644:
	mov	rbp,[rsi+0F0h]
	test	rbp,rbp
	jz	46E6FFh

l000000000046E654:
	cmp	byte ptr [rbp+38h],0h
	jz	46E6D0h

l000000000046E65A:
	mov	byte ptr [rsi+0E1h],1h
	jmp	46E594h
000000000046E666                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l000000000046E670:
	mov	rbp,[rbx+0F0h]
	test	rbp,rbp
	jz	46E6FFh

l000000000046E680:
	cmp	byte ptr [rbp+38h],0h
	jz	46E6A0h

l000000000046E686:
	movzx	edi,byte ptr [rbp+59h]

l000000000046E68A:
	mov	[rbx+0E0h],dil
	mov	byte ptr [rbx+0E1h],1h
	jmp	46E587h
000000000046E69D                                        0F 1F 00              ...

l000000000046E6A0:
	mov	rcx,rbp
	mov	edi,20h
	call	42B320h
	mov	rax,[rbp+0h]
	lea	rdx,[000000000042B5F0]                                 ; [rip+FFFBCF38]
	mov	rax,[rax+30h]
	cmp	rax,rdx
	jz	46E68Ah

l000000000046E6C1:
	mov	edx,20h
	mov	rcx,rbp
	call	rax
	mov	edi,eax
	jmp	46E68Ah
000000000046E6CF                                              90                .

l000000000046E6D0:
	mov	rcx,rbp
	call	42B320h
	mov	rax,[rbp+0h]
	lea	rdx,[000000000042B5F0]                                 ; [rip+FFFBCF0D]
	mov	rax,[rax+30h]
	cmp	rax,rdx
	jz	46E65Ah

l000000000046E6F0:
	mov	edx,20h
	mov	rcx,rbp
	call	rax
	jmp	46E65Ah

l000000000046E6FF:
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

;; fn000000000046E710: 000000000046E710
;;   Called from:
;;     000000000046E70F (in fn000000000046E490)
fn000000000046E710 proc
	or	edx,[rcx+20h]
	jmp	46E370h
000000000046E718                         90 90 90 90 90 90 90 90         ........

;; fn000000000046E720: 000000000046E720
fn000000000046E720 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	mov	rbx,rcx
	mov	rsi,rdx
	call	46D320h
	lea	rax,[0000000000498190]                                 ; [rip+00029A58]
	mov	qword ptr [rbx+0D8h],+0h
	mov	byte ptr [rbx+0E0h],0h
	mov	byte ptr [rbx+0E1h],0h
	mov	qword ptr [rbx+0E8h],+0h
	mov	rdx,rsi
	mov	[rbx],rax
	mov	qword ptr [rbx+0F0h],+0h
	mov	rcx,rbx
	mov	qword ptr [rbx+0F8h],+0h
	mov	qword ptr [rbx+100h],+0h
	call	46E310h
	nop
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret
000000000046E793          48 89 C6 48 89 D9 E8 32 EC FF FF 48 89    H..H...2...H.
000000000046E7A0 F1 E8 0A 2E FA FF 90 90 90 90 90 90 90 90 90 90 ................

;; fn000000000046E7B0: 000000000046E7B0
fn000000000046E7B0 proc
	push	rbx
	sub	rsp,20h
	mov	rbx,rcx
	call	46D320h
	lea	rax,[0000000000498190]                                 ; [rip+000299CC]
	mov	qword ptr [rbx+0D8h],+0h
	mov	byte ptr [rbx+0E0h],0h
	mov	byte ptr [rbx+0E1h],0h
	mov	qword ptr [rbx+0E8h],+0h
	mov	[rbx],rax
	mov	qword ptr [rbx+0F0h],+0h
	mov	qword ptr [rbx+0F8h],+0h
	mov	qword ptr [rbx+100h],+0h
	add	rsp,20h
	pop	rbx
	ret
000000000046E812       90 90 90 90 90 90 90 90 90 90 90 90 90 90   ..............

;; fn000000000046E820: 000000000046E820
fn000000000046E820 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	mov	rbx,rcx
	mov	rsi,rdx
	call	46D320h
	lea	rax,[0000000000498190]                                 ; [rip+00029958]
	mov	qword ptr [rbx+0D8h],+0h
	mov	byte ptr [rbx+0E0h],0h
	mov	byte ptr [rbx+0E1h],0h
	mov	qword ptr [rbx+0E8h],+0h
	mov	rdx,rsi
	mov	[rbx],rax
	mov	qword ptr [rbx+0F0h],+0h
	mov	rcx,rbx
	mov	qword ptr [rbx+0F8h],+0h
	mov	qword ptr [rbx+100h],+0h
	call	46E310h
	nop
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret
000000000046E893          48 89 C6 48 89 D9 E8 32 EB FF FF 48 89    H..H...2...H.
000000000046E8A0 F1 E8 0A 2D FA FF 90 90 90 90 90 90 90 90 90 90 ...-............

;; fn000000000046E8B0: 000000000046E8B0
fn000000000046E8B0 proc
	push	rbx
	sub	rsp,20h
	mov	rbx,rcx
	call	46D320h
	lea	rax,[0000000000498190]                                 ; [rip+000298CC]
	mov	qword ptr [rbx+0D8h],+0h
	mov	byte ptr [rbx+0E0h],0h
	mov	byte ptr [rbx+0E1h],0h
	mov	qword ptr [rbx+0E8h],+0h
	mov	[rbx],rax
	mov	qword ptr [rbx+0F0h],+0h
	mov	qword ptr [rbx+0F8h],+0h
	mov	qword ptr [rbx+100h],+0h
	add	rsp,20h
	pop	rbx
	ret
000000000046E912       90 90 90 90 90 90 90 90 90 90 90 90 90 90   ..............

;; fn000000000046E920: 000000000046E920
fn000000000046E920 proc
	push	rbx
	sub	rsp,20h
	lea	rax,[0000000000498190]                                 ; [rip+00029864]
	mov	rbx,rcx
	mov	[rcx],rax
	call	46D3D0h
	mov	rcx,rbx
	add	rsp,20h
	pop	rbx
	jmp	475550h
000000000046E944             90 90 90 90 90 90 90 90 90 90 90 90     ............

;; fn000000000046E950: 000000000046E950
fn000000000046E950 proc
	lea	rax,[0000000000498190]                                 ; [rip+00029839]
	mov	[rcx],rax
	jmp	46D3D0h
000000000046E95F                                              90                .

;; fn000000000046E960: 000000000046E960
fn000000000046E960 proc
	lea	rax,[0000000000498190]                                 ; [rip+00029829]
	mov	[rcx],rax
	jmp	46D3D0h
000000000046E96F                                              90                .

;; fn000000000046E970: 000000000046E970
fn000000000046E970 proc
	mov	[rcx+1Ch],edx
	mov	edx,[rcx+20h]
	jmp	46EB40h
000000000046E97B                                  90 90 90 90 90            .....

;; fn000000000046E980: 000000000046E980
fn000000000046E980 proc
	sub	rsp,28h
	or	[rcx+20h],edx
	test	[rcx+1Ch],edx
	jnz	46E991h

l000000000046E98C:
	add	rsp,28h
	ret

l000000000046E991:
	call	476060h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop

;; fn000000000046E9A0: 000000000046E9A0
;;   Called from:
;;     000000000046E99F (in fn000000000046E980)
;;     000000000046EAFB (in fn000000000046EAE0)
;;     000000000046EBC0 (in fn000000000046EB80)
;;     000000000046ED9F (in fn000000000046EC60)
fn000000000046E9A0 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	mov	rsi,rcx
	mov	rcx,rdx
	mov	rbx,rdx
	call	472580h
	test	al,al
	jz	46EA04h

l000000000046E9B8:
	mov	rcx,rbx
	call	473020h
	mov	rcx,rbx
	mov	[rsi+0F0h],rax
	call	472880h
	test	al,al
	jz	46EA20h

l000000000046E9D3:
	mov	rcx,rbx
	call	473320h
	mov	rcx,rbx
	mov	[rsi+0F8h],rax
	call	4727C0h
	test	al,al
	jz	46EA40h

l000000000046E9EE:
	mov	rcx,rbx
	call	473260h
	mov	[rsi+100h],rax
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret

l000000000046EA04:
	mov	qword ptr [rsi+0F0h],+0h
	mov	rcx,rbx
	call	472880h
	test	al,al
	jnz	46E9D3h

l000000000046EA1B:
	nop	dword ptr [rax+rax+0h]

l000000000046EA20:
	mov	qword ptr [rsi+0F8h],+0h
	mov	rcx,rbx
	call	4727C0h
	test	al,al
	jnz	46E9EEh

l000000000046EA37:
	nop	word ptr [rax+rax+0h]

l000000000046EA40:
	mov	qword ptr [rsi+100h],+0h
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret
000000000046EA52       90 90 90 90 90 90 90 90 90 90 90 90 90 90   ..............

;; fn000000000046EA60: 000000000046EA60
fn000000000046EA60 proc
	mov	rax,[rcx+0D8h]
	mov	[rcx+0D8h],rdx
	ret
000000000046EA6F                                              90                .

;; fn000000000046EA70: 000000000046EA70
fn000000000046EA70 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	cmp	byte ptr [rcx+0E2h],0h
	mov	rbx,rcx
	mov	esi,edx
	jz	46EAA0h

l000000000046EA84:
	movzx	eax,word ptr [rcx+0E0h]
	mov	[rbx+0E0h],si
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret
000000000046EA99                            0F 1F 80 00 00 00 00          .......

l000000000046EAA0:
	mov	rcx,[rcx+0F0h]
	test	rcx,rcx
	jz	46EACCh

l000000000046EAAC:
	mov	rax,[rcx]
	mov	edx,20h
	call	qword ptr [rax+50h]
	mov	byte ptr [rbx+0E2h],1h
	mov	[rbx+0E0h],si
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret

l000000000046EACC:
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

;; fn000000000046EAE0: 000000000046EAE0
;;   Called from:
;;     0000000000459BAE (in fn0000000000459B20)
;;     0000000000459BD1 (in fn0000000000459B20)
;;     0000000000459C0B (in fn0000000000459B20)
;;     0000000000459D3E (in fn0000000000459CB0)
;;     0000000000459D61 (in fn0000000000459CB0)
;;     0000000000459D9B (in fn0000000000459CB0)
;;     0000000000459EC6 (in fn0000000000459E40)
;;     0000000000459EE9 (in fn0000000000459E40)
;;     0000000000459F23 (in fn0000000000459E40)
;;     0000000000459FBA (in fn0000000000459F80)
;;     0000000000459FD9 (in fn0000000000459F80)
;;     000000000045A02C (in fn0000000000459F80)
;;     000000000045A0FA (in fn000000000045A0C0)
;;     000000000045A119 (in fn000000000045A0C0)
;;     000000000045A16C (in fn000000000045A0C0)
;;     000000000045A232 (in fn000000000045A200)
;;     000000000045A251 (in fn000000000045A200)
;;     000000000045A2A4 (in fn000000000045A200)
;;     000000000045D083 (in fn000000000045D000)
;;     000000000045D13F (in fn000000000045D0C0)
;;     000000000045D191 (in fn000000000045D170)
;;     000000000045D1C0 (in fn000000000045D1A0)
;;     000000000045EEDB (in fn000000000045EE60)
;;     000000000045EF87 (in fn000000000045EF10)
;;     000000000045EFD4 (in fn000000000045EFC0)
;;     000000000045EFF3 (in fn000000000045EFE0)
;;     000000000045FE3E (in fn000000000045FDB0)
;;     000000000045FE6D (in fn000000000045FDB0)
;;     000000000045FF8E (in fn000000000045FF00)
;;     000000000045FFBD (in fn000000000045FF00)
;;     00000000004600D6 (in fn0000000000460050)
;;     0000000000460105 (in fn0000000000460050)
;;     000000000046018E (in fn0000000000460150)
;;     00000000004601BA (in fn0000000000460150)
;;     000000000046027E (in fn0000000000460240)
;;     00000000004602AA (in fn0000000000460240)
;;     0000000000460366 (in fn0000000000460330)
;;     0000000000460392 (in fn0000000000460330)
;;     00000000004605C3 (in fn0000000000460540)
;;     00000000004605E4 (in fn0000000000460540)
;;     00000000004606BF (in fn0000000000460640)
;;     00000000004606DF (in fn0000000000460640)
;;     0000000000460765 (in fn0000000000460730)
;;     0000000000460785 (in fn0000000000460730)
;;     0000000000460800 (in fn00000000004607D0)
;;     000000000046081F (in fn00000000004607D0)
;;     00000000004612A6 (in fn0000000000461220)
;;     00000000004612D5 (in fn0000000000461220)
;;     00000000004613E6 (in fn0000000000461360)
;;     0000000000461415 (in fn0000000000461360)
;;     000000000046151E (in fn00000000004614A0)
;;     000000000046154D (in fn00000000004614A0)
;;     00000000004615CE (in fn00000000004615A0)
;;     00000000004615FA (in fn00000000004615A0)
;;     00000000004616AE (in fn0000000000461680)
;;     00000000004616DA (in fn0000000000461680)
;;     0000000000461786 (in fn0000000000461760)
;;     00000000004617B2 (in fn0000000000461760)
;;     000000000046CE4F (in fn000000000046C940)
;;     000000000046CED4 (in fn000000000046C940)
;;     000000000046CF4A (in fn000000000046C940)
;;     000000000046CFCD (in fn000000000046C940)
;;     000000000046EADF (in fn000000000046EA70)
;;     000000000046EEF8 (in fn000000000046EE90)
;;     000000000046EFF8 (in fn000000000046EF90)
fn000000000046EAE0 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	mov	rbx,rcx
	mov	rsi,rdx
	call	46D210h
	lea	rdx,[rbx+0D0h]
	mov	rcx,rbx
	call	46E9A0h
	xor	eax,eax
	mov	byte ptr [rbx+0E2h],0h
	mov	qword ptr [rbx+0D8h],+0h
	mov	[rbx+0E0h],ax
	xor	eax,eax
	test	rsi,rsi
	setz	al
	mov	dword ptr [rbx+1Ch],0h
	mov	[rbx+0E8h],rsi
	mov	[rbx+20h],eax
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret
000000000046EB3B                                  90 90 90 90 90            .....

;; fn000000000046EB40: 000000000046EB40
;;   Called from:
;;     0000000000459A57 (in fn0000000000459A30)
;;     0000000000459A72 (in fn0000000000459A30)
;;     0000000000459AAA (in fn0000000000459A80)
;;     0000000000459AC2 (in fn0000000000459A80)
;;     0000000000459B05 (in fn0000000000459AD0)
;;     0000000000459C2F (in fn0000000000459B20)
;;     0000000000459C4A (in fn0000000000459B20)
;;     0000000000459DC0 (in fn0000000000459CB0)
;;     0000000000459DDB (in fn0000000000459CB0)
;;     000000000045A050 (in fn0000000000459F80)
;;     000000000045A06B (in fn0000000000459F80)
;;     000000000045A191 (in fn000000000045A0C0)
;;     000000000045A1AC (in fn000000000045A0C0)
;;     000000000045A58E (in fn000000000045A4D0)
;;     000000000045A6DE (in fn000000000045A620)
;;     000000000045A82E (in fn000000000045A770)
;;     000000000045A97E (in fn000000000045A8C0)
;;     000000000045AACE (in fn000000000045AA10)
;;     000000000045AC1E (in fn000000000045AB60)
;;     000000000045AD6E (in fn000000000045ACB0)
;;     000000000045AEBE (in fn000000000045AE00)
;;     000000000045B00E (in fn000000000045AF50)
;;     000000000045B15E (in fn000000000045B0A0)
;;     000000000045B2AE (in fn000000000045B1F0)
;;     000000000045B470 (in fn000000000045B390)
;;     000000000045B651 (in fn000000000045B580)
;;     000000000045B769 (in fn000000000045B720)
;;     000000000045B893 (in fn000000000045B850)
;;     000000000045B9EB (in fn000000000045B980)
;;     000000000045BAF4 (in fn000000000045BA80)
;;     000000000045BBF4 (in fn000000000045BB80)
;;     000000000045BC9E (in fn000000000045BC80)
;;     000000000045BD1F (in fn000000000045BC80)
;;     000000000045BDBD (in fn000000000045BDA0)
;;     000000000045BE38 (in fn000000000045BDA0)
;;     000000000045BFDD (in fn000000000045BFC0)
;;     000000000045C050 (in fn000000000045BFC0)
;;     000000000045C170 (in fn000000000045C0F0)
;;     000000000045C369 (in fn000000000045C200)
;;     000000000045C692 (in fn000000000045C450)
;;     000000000045C7C3 (in fn000000000045C740)
;;     000000000045C953 (in fn000000000045C8D0)
;;     000000000045CC00 (in fn000000000045CAB0)
;;     000000000045CDA3 (in fn000000000045CD80)
;;     000000000045CE0D (in fn000000000045CD80)
;;     000000000045CF70 (in fn000000000045CEB0)
;;     000000000045D312 (in fn000000000045D2B0)
;;     000000000045D4CD (in fn000000000045D400)
;;     000000000045D691 (in fn000000000045D590)
;;     000000000045D810 (in fn000000000045D760)
;;     000000000045D832 (in fn000000000045D760)
;;     000000000045D910 (in fn000000000045D8D0)
;;     000000000045D9F4 (in fn000000000045D990)
;;     000000000045DACC (in fn000000000045DA70)
;;     000000000045DC88 (in fn000000000045DC30)
;;     000000000045DCE2 (in fn000000000045DC30)
;;     000000000045DDCF (in fn000000000045DD70)
;;     000000000045DE3F (in fn000000000045DDE0)
;;     000000000045DEAB (in fn000000000045DE50)
;;     000000000045DF0B (in fn000000000045DEB0)
;;     000000000045DF4C (in fn000000000045DF10)
;;     000000000045E011 (in fn000000000045DF60)
;;     000000000045E0A6 (in fn000000000045DF60)
;;     000000000045E1F2 (in fn000000000045E140)
;;     000000000045E286 (in fn000000000045E140)
;;     000000000045E3D4 (in fn000000000045E320)
;;     000000000045E466 (in fn000000000045E320)
;;     000000000045E5B0 (in fn000000000045E4F0)
;;     000000000045E646 (in fn000000000045E4F0)
;;     000000000045E791 (in fn000000000045E6E0)
;;     000000000045E826 (in fn000000000045E6E0)
;;     000000000045E971 (in fn000000000045E8C0)
;;     000000000045EA06 (in fn000000000045E8C0)
;;     000000000045EB51 (in fn000000000045EAA0)
;;     000000000045EBE6 (in fn000000000045EAA0)
;;     000000000045ED31 (in fn000000000045EC80)
;;     000000000045EDC6 (in fn000000000045EC80)
;;     000000000045F197 (in fn000000000045F0F0)
;;     000000000045F1B2 (in fn000000000045F0F0)
;;     000000000045FCEB (in fn000000000045FCC0)
;;     000000000045FD02 (in fn000000000045FCC0)
;;     000000000045FD3E (in fn000000000045FD10)
;;     000000000045FD55 (in fn000000000045FD10)
;;     000000000045FD95 (in fn000000000045FD60)
;;     000000000045FE95 (in fn000000000045FDB0)
;;     000000000045FEBA (in fn000000000045FDB0)
;;     000000000045FFE6 (in fn000000000045FF00)
;;     000000000046000A (in fn000000000045FF00)
;;     00000000004601E2 (in fn0000000000460150)
;;     00000000004601FD (in fn0000000000460150)
;;     00000000004602D3 (in fn0000000000460240)
;;     00000000004602EE (in fn0000000000460240)
;;     000000000046115B (in fn0000000000461130)
;;     0000000000461172 (in fn0000000000461130)
;;     00000000004611AE (in fn0000000000461180)
;;     00000000004611C5 (in fn0000000000461180)
;;     0000000000461205 (in fn00000000004611D0)
;;     00000000004612FD (in fn0000000000461220)
;;     000000000046131A (in fn0000000000461220)
;;     000000000046143E (in fn0000000000461360)
;;     000000000046145A (in fn0000000000461360)
;;     0000000000461622 (in fn00000000004615A0)
;;     000000000046163D (in fn00000000004615A0)
;;     0000000000461703 (in fn0000000000461680)
;;     000000000046171E (in fn0000000000461680)
;;     000000000046E976 (in fn000000000046E970)
;;     000000000046EC45 (in fn000000000046EC30)
;;     000000000046EDBD (in fn000000000046EC60)
;;     000000000046EE83 (in fn000000000046EE80)
;;     0000000000470568 (in fn0000000000470480)
;;     00000000004705A8 (in fn0000000000470480)
;;     00000000004706C4 (in fn0000000000470480)
;;     00000000004706DD (in fn0000000000470480)
;;     00000000004706FD (in fn0000000000470480)
;;     0000000000471851 (in fn0000000000471790)
;;     0000000000471FF1 (in fn0000000000471F90)
;;     0000000000473B4E (in fn0000000000473B10)
;;     0000000000473C33 (in fn0000000000473B60)
;;     0000000000474BB3 (in fn0000000000474A80)
;;     0000000000474D50 (in fn0000000000474CD0)
;;     0000000000474F42 (in fn0000000000474F00)
fn000000000046EB40 proc
	sub	rsp,28h
	cmp	qword ptr [rcx+0E8h],0h
	jz	46EB60h

l000000000046EB4E:
	test	[rcx+1Ch],edx
	mov	[rcx+20h],edx
	jnz	46EB65h

l000000000046EB56:
	add	rsp,28h
	ret
000000000046EB5B                                  0F 1F 44 00 00            ..D..

l000000000046EB60:
	or	edx,1h
	jmp	46EB4Eh

l000000000046EB65:
	lea	rcx,[000000000048D5B0]                                 ; [rip+0001EA44]
	call	470B20h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop

;; fn000000000046EB80: 000000000046EB80
;;   Called from:
;;     000000000046EB7F (in fn000000000046EB40)
fn000000000046EB80 proc
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,30h
	mov	rbx,rdx
	lea	rsi,[rsp+20h]
	lea	rdx,[rdx+0D0h]
	mov	rdi,r8
	mov	rbp,rcx
	call	46AE80h
	mov	rdx,rbx
	mov	r8,rdi
	mov	rcx,rsi
	call	46D1A0h
	mov	rcx,rsi
	call	46AF20h
	mov	rdx,rdi
	mov	rcx,rbx
	call	46E9A0h
	mov	rbx,[rbx+0E8h]
	test	rbx,rbx
	jz	46EBFFh

l000000000046EBD1:
	lea	r12,[rbx+38h]
	mov	rcx,rsi
	mov	rdx,r12
	call	46AE80h
	mov	rax,[rbx]
	mov	rdx,rdi
	mov	rcx,rbx
	call	qword ptr [rax+10h]
	mov	rcx,r12
	mov	rdx,rdi
	call	46AF60h
	mov	rcx,rsi
	call	46AF20h

l000000000046EBFF:
	mov	rax,rbp
	add	rsp,30h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
000000000046EC0D                                        48 89 C3              H..
000000000046EC10 48 89 E9 E8 08 C3 FF FF 48 89 D9 E8 90 29 FA FF H.......H....)..
000000000046EC20 48 89 F1 48 89 C3 E8 F5 C2 FF FF EB E3 90 90 90 H..H............

;; fn000000000046EC30: 000000000046EC30
;;   Called from:
;;     000000000046C7D4 (in fn000000000046C5F0)
;;     000000000046C7EB (in fn000000000046C5F0)
;;     000000000046C802 (in fn000000000046C5F0)
;;     000000000046C819 (in fn000000000046C5F0)
fn000000000046EC30 proc
	push	rbx
	sub	rsp,20h
	mov	rbx,[rcx+0E8h]
	mov	[rcx+0E8h],rdx
	xor	edx,edx
	call	46EB40h
	mov	rax,rbx
	add	rsp,20h
	pop	rbx
	ret
000000000046EC53          90 90 90 90 90 90 90 90 90 90 90 90 90    .............

;; fn000000000046EC60: 000000000046EC60
fn000000000046EC60 proc
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,30h
	cmp	rcx,rdx
	mov	rsi,rcx
	mov	rbx,rdx
	jz	46EDC2h

l000000000046EC79:
	mov	eax,[rdx+0C0h]
	cmp	eax,8h
	jg	46EDD0h

l000000000046EC88:
	lea	rdi,[rcx+40h]
	mov	r12,rdi

l000000000046EC8F:
	mov	rbp,[rbx+28h]
	test	rbp,rbp
	jz	46EC9Dh

l000000000046EC98:
	lock
	add	dword ptr [rbp+14h],1h

l000000000046EC9D:
	xor	edx,edx
	mov	rcx,rsi
	call	46C850h
	mov	rcx,[rsi+0C8h]
	cmp	r12,rcx
	jz	46ECC8h

l000000000046ECB3:
	test	rcx,rcx
	jz	46ECBDh

l000000000046ECB8:
	call	475540h

l000000000046ECBD:
	mov	qword ptr [rsi+0C8h],+0h

l000000000046ECC8:
	mov	rcx,rsi
	call	46C8F0h
	mov	ecx,[rbx+0C0h]
	mov	[rsi+28h],rbp
	test	ecx,ecx
	jle	46ED12h

l000000000046ECDE:
	lea	edx,[rcx-1h]
	xor	r8d,r8d
	add	rdx,1h
	shl	rdx,4h
	nop	dword ptr [rax+0h]

l000000000046ECF0:
	mov	r9,[rbx+0C8h]
	mov	rax,[r9+r8]
	mov	[rdi+r8],rax
	mov	eax,[r9+r8+8h]
	mov	[rdi+r8+8h],eax
	add	r8,10h
	cmp	r8,rdx
	jnz	46ECF0h

l000000000046ED12:
	mov	eax,[rbx+18h]
	cmp	byte ptr [rbx+0E2h],0h
	mov	[rsi+0C8h],rdi
	mov	[rsi+0C0h],ecx
	mov	[rsi+18h],eax
	mov	rax,[rbx+10h]
	mov	[rsi+10h],rax
	mov	rax,[rbx+8h]
	mov	[rsi+8h],rax
	mov	rax,[rbx+0D8h]
	mov	[rsi+0D8h],rax
	jz	46EE40h

l000000000046ED50:
	movzx	edi,word ptr [rbx+0E0h]

l000000000046ED57:
	cmp	byte ptr [rsi+0E2h],0h
	jz	46EE14h

l000000000046ED64:
	mov	[rsi+0E0h],di
	lea	rdi,[rsp+20h]
	lea	rdx,[rbx+0D0h]
	lea	rbp,[rsi+0D0h]
	mov	rcx,rdi
	call	46AE80h
	mov	rdx,rdi
	mov	rcx,rbp
	call	46AF60h
	mov	rcx,rdi
	call	46AF20h
	mov	rdx,rbp
	mov	rcx,rsi
	call	46E9A0h
	mov	edx,2h
	mov	rcx,rsi
	call	46C850h
	mov	eax,[rbx+1Ch]
	mov	edx,[rsi+20h]
	mov	rcx,rsi
	mov	[rsi+1Ch],eax
	call	46EB40h

l000000000046EDC2:
	mov	rax,rsi
	add	rsp,30h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret

l000000000046EDD0:
	movsxd	rcx,eax
	shl	rcx,4h
	call	475560h
	movsxd	rcx,dword ptr [rbx+0C0h]
	xor	edx,edx
	mov	rdi,rax
	test	rcx,rcx
	jz	46EE0Bh

l000000000046EDED:
	nop	dword ptr [rax]

l000000000046EDF0:
	add	rdx,1h
	mov	qword ptr [rax],+0h
	mov	dword ptr [rax+8h],0h
	add	rax,10h
	cmp	rcx,rdx
	jnz	46EDF0h

l000000000046EE0B:
	lea	r12,[rsi+40h]
	jmp	46EC8Fh

l000000000046EE14:
	mov	rcx,[rsi+0F0h]
	test	rcx,rcx
	jz	46EE6Ch

l000000000046EE20:
	mov	rax,[rcx]
	mov	edx,20h
	call	qword ptr [rax+50h]
	mov	byte ptr [rsi+0E2h],1h
	jmp	46ED64h
000000000046EE37                      66 0F 1F 84 00 00 00 00 00        f........

l000000000046EE40:
	mov	rcx,[rbx+0F0h]
	test	rcx,rcx
	jz	46EE6Ch

l000000000046EE4C:
	mov	rax,[rcx]
	mov	edx,20h
	call	qword ptr [rax+50h]
	mov	byte ptr [rbx+0E2h],1h
	mov	edi,eax
	mov	[rbx+0E0h],ax
	jmp	46ED57h

l000000000046EE6C:
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

;; fn000000000046EE80: 000000000046EE80
;;   Called from:
;;     000000000046EE7F (in fn000000000046EC60)
fn000000000046EE80 proc
	or	edx,[rcx+20h]
	jmp	46EB40h
000000000046EE88                         90 90 90 90 90 90 90 90         ........

;; fn000000000046EE90: 000000000046EE90
fn000000000046EE90 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	mov	rbx,rcx
	mov	rsi,rdx
	call	46D320h
	lea	rax,[00000000004981B0]                                 ; [rip+00029308]
	mov	qword ptr [rbx+0D8h],+0h
	mov	byte ptr [rbx+0E2h],0h
	mov	qword ptr [rbx+0E8h],+0h
	mov	qword ptr [rbx+0F0h],+0h
	mov	rdx,rsi
	mov	[rbx],rax
	xor	eax,eax
	mov	qword ptr [rbx+0F8h],+0h
	mov	[rbx+0E0h],ax
	mov	qword ptr [rbx+100h],+0h
	mov	rcx,rbx
	call	46EAE0h
	nop
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret
000000000046EF05                48 89 C6 48 89 D9 E8 C0 E4 FF FF      H..H.......
000000000046EF10 48 89 F1 E8 98 26 FA FF 90 90 90 90 90 90 90 90 H....&..........

;; fn000000000046EF20: 000000000046EF20
fn000000000046EF20 proc
	push	rbx
	sub	rsp,20h
	mov	rbx,rcx
	call	46D320h
	lea	rax,[00000000004981B0]                                 ; [rip+0002927C]
	mov	qword ptr [rbx+0D8h],+0h
	mov	byte ptr [rbx+0E2h],0h
	mov	qword ptr [rbx+0E8h],+0h
	mov	qword ptr [rbx+0F0h],+0h
	mov	[rbx],rax
	xor	eax,eax
	mov	qword ptr [rbx+0F8h],+0h
	mov	[rbx+0E0h],ax
	mov	qword ptr [rbx+100h],+0h
	add	rsp,20h
	pop	rbx
	ret
000000000046EF84             90 90 90 90 90 90 90 90 90 90 90 90     ............

;; fn000000000046EF90: 000000000046EF90
fn000000000046EF90 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	mov	rbx,rcx
	mov	rsi,rdx
	call	46D320h
	lea	rax,[00000000004981B0]                                 ; [rip+00029208]
	mov	qword ptr [rbx+0D8h],+0h
	mov	byte ptr [rbx+0E2h],0h
	mov	qword ptr [rbx+0E8h],+0h
	mov	qword ptr [rbx+0F0h],+0h
	mov	rdx,rsi
	mov	[rbx],rax
	xor	eax,eax
	mov	qword ptr [rbx+0F8h],+0h
	mov	[rbx+0E0h],ax
	mov	qword ptr [rbx+100h],+0h
	mov	rcx,rbx
	call	46EAE0h
	nop
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret
000000000046F005                48 89 C6 48 89 D9 E8 C0 E3 FF FF      H..H.......
000000000046F010 48 89 F1 E8 98 25 FA FF 90 90 90 90 90 90 90 90 H....%..........

;; fn000000000046F020: 000000000046F020
fn000000000046F020 proc
	push	rbx
	sub	rsp,20h
	mov	rbx,rcx
	call	46D320h
	lea	rax,[00000000004981B0]                                 ; [rip+0002917C]
	mov	qword ptr [rbx+0D8h],+0h
	mov	byte ptr [rbx+0E2h],0h
	mov	qword ptr [rbx+0E8h],+0h
	mov	qword ptr [rbx+0F0h],+0h
	mov	[rbx],rax
	xor	eax,eax
	mov	qword ptr [rbx+0F8h],+0h
	mov	[rbx+0E0h],ax
	mov	qword ptr [rbx+100h],+0h
	add	rsp,20h
	pop	rbx
	ret
000000000046F084             90 90 90 90 90 90 90 90 90 90 90 90     ............

;; fn000000000046F090: 000000000046F090
fn000000000046F090 proc
	push	rbx
	sub	rsp,20h
	lea	rax,[00000000004981B0]                                 ; [rip+00029114]
	mov	rbx,rcx
	mov	[rcx],rax
	call	46D3D0h
	mov	rcx,rbx
	add	rsp,20h
	pop	rbx
	jmp	475550h
000000000046F0B4             90 90 90 90 90 90 90 90 90 90 90 90     ............

;; fn000000000046F0C0: 000000000046F0C0
fn000000000046F0C0 proc
	lea	rax,[00000000004981B0]                                 ; [rip+000290E9]
	mov	[rcx],rax
	jmp	46D3D0h
000000000046F0CF                                              90                .

;; fn000000000046F0D0: 000000000046F0D0
fn000000000046F0D0 proc
	lea	rax,[00000000004981B0]                                 ; [rip+000290D9]
	mov	[rcx],rax
	jmp	46D3D0h
000000000046F0DF                                              90                .

;; fn000000000046F0E0: 000000000046F0E0
fn000000000046F0E0 proc
	jmp	475550h
000000000046F0E5                90 90 90 90 90 90 90 90 90 90 90      ...........

;; fn000000000046F0F0: 000000000046F0F0
;;   Called from:
;;     0000000000425E32 (in fn0000000000425E20)
;;     0000000000425E5A (in fn0000000000425E50)
;;     0000000000425E72 (in fn0000000000425E60)
;;     0000000000425E9A (in fn0000000000425E90)
;;     0000000000425EB2 (in fn0000000000425EA0)
;;     0000000000425EDA (in fn0000000000425ED0)
;;     0000000000426212 (in fn0000000000426200)
;;     000000000042623A (in fn0000000000426230)
;;     0000000000452702 (in fn00000000004526F0)
;;     000000000045272A (in fn0000000000452720)
;;     00000000004547F7 (in fn00000000004547D0)
;;     0000000000454814 (in fn00000000004547D0)
;;     000000000045F417 (in fn000000000045F3F0)
;;     000000000045F434 (in fn000000000045F3F0)
;;     00000000004659B2 (in fn00000000004659A0)
;;     00000000004659DA (in fn00000000004659D0)
;;     000000000046C412 (in fn000000000046C400)
;;     000000000046C43A (in fn000000000046C430)
;;     000000000046D2F7 (in fn000000000046D2D0)
;;     000000000046D314 (in fn000000000046D2D0)
;;     000000000046E142 (in fn000000000046E130)
;;     000000000046E16A (in fn000000000046E160)
fn000000000046F0F0 proc
	ret
000000000046F0F1    90 90 90 90 90 90 90 90 90 90 90 90 90 90 90  ...............

;; fn000000000046F100: 000000000046F100
fn000000000046F100 proc
	xor	eax,eax
	test	rdx,rdx
	setnz	al
	mov	[rcx+8h],eax
	lea	rax,[0000000000498210]                                 ; [rip+000290FE]
	mov	[rcx],rax
	ret
000000000046F116                   90 90 90 90 90 90 90 90 90 90       ..........

;; fn000000000046F120: 000000000046F120
fn000000000046F120 proc
	xor	eax,eax
	test	rdx,rdx
	setnz	al
	mov	[rcx+8h],eax
	lea	rax,[0000000000498210]                                 ; [rip+000290DE]
	mov	[rcx],rax
	ret
000000000046F136                   90 90 90 90 90 90 90 90 90 90       ..........

;; fn000000000046F140: 000000000046F140
fn000000000046F140 proc
	push	rbx
	sub	rsp,20h
	lea	rax,[0000000000498210]                                 ; [rip+000290C4]
	mov	rbx,rcx
	mov	[rcx],rax
	call	46AD20h
	mov	rcx,rbx
	add	rsp,20h
	pop	rbx
	jmp	475550h
000000000046F164             90 90 90 90 90 90 90 90 90 90 90 90     ............

;; fn000000000046F170: 000000000046F170
fn000000000046F170 proc
	lea	rax,[0000000000498210]                                 ; [rip+00029099]
	mov	[rcx],rax
	jmp	46AD20h
000000000046F17F                                              90                .

;; fn000000000046F180: 000000000046F180
fn000000000046F180 proc
	lea	rax,[0000000000498210]                                 ; [rip+00029089]
	mov	[rcx],rax
	jmp	46AD20h
000000000046F18F                                              90                .

;; fn000000000046F190: 000000000046F190
fn000000000046F190 proc
	xor	eax,eax
	test	rdx,rdx
	setnz	al
	mov	[rcx+8h],eax
	lea	rax,[0000000000498250]                                 ; [rip+000290AE]
	mov	[rcx],rax
	ret
000000000046F1A6                   90 90 90 90 90 90 90 90 90 90       ..........

;; fn000000000046F1B0: 000000000046F1B0
fn000000000046F1B0 proc
	xor	eax,eax
	test	rdx,rdx
	setnz	al
	mov	[rcx+8h],eax
	lea	rax,[0000000000498250]                                 ; [rip+0002908E]
	mov	[rcx],rax
	ret
000000000046F1C6                   90 90 90 90 90 90 90 90 90 90       ..........

;; fn000000000046F1D0: 000000000046F1D0
fn000000000046F1D0 proc
	push	rbx
	sub	rsp,20h
	lea	rax,[0000000000498250]                                 ; [rip+00029074]
	mov	rbx,rcx
	mov	[rcx],rax
	call	46AD20h
	mov	rcx,rbx
	add	rsp,20h
	pop	rbx
	jmp	475550h
000000000046F1F4             90 90 90 90 90 90 90 90 90 90 90 90     ............

;; fn000000000046F200: 000000000046F200
fn000000000046F200 proc
	lea	rax,[0000000000498250]                                 ; [rip+00029049]
	mov	[rcx],rax
	jmp	46AD20h
000000000046F20F                                              90                .

;; fn000000000046F210: 000000000046F210
fn000000000046F210 proc
	lea	rax,[0000000000498250]                                 ; [rip+00029039]
	mov	[rcx],rax
	jmp	46AD20h
000000000046F21F                                              90                .

;; fn000000000046F220: 000000000046F220
fn000000000046F220 proc
	xor	eax,eax
	test	rdx,rdx
	setnz	al
	mov	[rcx+8h],eax
	lea	rax,[0000000000498290]                                 ; [rip+0002905E]
	mov	[rcx],rax
	ret
000000000046F236                   90 90 90 90 90 90 90 90 90 90       ..........

;; fn000000000046F240: 000000000046F240
fn000000000046F240 proc
	xor	eax,eax
	test	rdx,rdx
	setnz	al
	mov	[rcx+8h],eax
	lea	rax,[0000000000498290]                                 ; [rip+0002903E]
	mov	[rcx],rax
	ret
000000000046F256                   90 90 90 90 90 90 90 90 90 90       ..........

;; fn000000000046F260: 000000000046F260
fn000000000046F260 proc
	push	rbx
	sub	rsp,20h
	lea	rax,[0000000000498290]                                 ; [rip+00029024]
	mov	rbx,rcx
	mov	[rcx],rax
	call	46AD20h
	mov	rcx,rbx
	add	rsp,20h
	pop	rbx
	jmp	475550h
000000000046F284             90 90 90 90 90 90 90 90 90 90 90 90     ............

;; fn000000000046F290: 000000000046F290
fn000000000046F290 proc
	lea	rax,[0000000000498290]                                 ; [rip+00028FF9]
	mov	[rcx],rax
	jmp	46AD20h
000000000046F29F                                              90                .

;; fn000000000046F2A0: 000000000046F2A0
fn000000000046F2A0 proc
	lea	rax,[0000000000498290]                                 ; [rip+00028FE9]
	mov	[rcx],rax
	jmp	46AD20h
000000000046F2AF                                              90                .

;; fn000000000046F2B0: 000000000046F2B0
fn000000000046F2B0 proc
	xor	eax,eax
	test	rdx,rdx
	setnz	al
	mov	[rcx+8h],eax
	lea	rax,[00000000004982D0]                                 ; [rip+0002900E]
	mov	[rcx],rax
	ret
000000000046F2C6                   90 90 90 90 90 90 90 90 90 90       ..........

;; fn000000000046F2D0: 000000000046F2D0
fn000000000046F2D0 proc
	xor	eax,eax
	test	rdx,rdx
	setnz	al
	mov	[rcx+8h],eax
	lea	rax,[00000000004982D0]                                 ; [rip+00028FEE]
	mov	[rcx],rax
	ret
000000000046F2E6                   90 90 90 90 90 90 90 90 90 90       ..........

;; fn000000000046F2F0: 000000000046F2F0
fn000000000046F2F0 proc
	push	rbx
	sub	rsp,20h
	lea	rax,[00000000004982D0]                                 ; [rip+00028FD4]
	mov	rbx,rcx
	mov	[rcx],rax
	call	46AD20h
	mov	rcx,rbx
	add	rsp,20h
	pop	rbx
	jmp	475550h
000000000046F314             90 90 90 90 90 90 90 90 90 90 90 90     ............

;; fn000000000046F320: 000000000046F320
fn000000000046F320 proc
	lea	rax,[00000000004982D0]                                 ; [rip+00028FA9]
	mov	[rcx],rax
	jmp	46AD20h
000000000046F32F                                              90                .

;; fn000000000046F330: 000000000046F330
fn000000000046F330 proc
	lea	rax,[00000000004982D0]                                 ; [rip+00028F99]
	mov	[rcx],rax
	jmp	46AD20h
000000000046F33F                                              90                .

;; fn000000000046F340: 000000000046F340
fn000000000046F340 proc
	jmp	475550h
000000000046F345                90 90 90 90 90 90 90 90 90 90 90      ...........

;; fn000000000046F350: 000000000046F350
;;   Called from:
;;     0000000000423B52 (in fn0000000000423B40)
;;     0000000000423B7A (in fn0000000000423B70)
fn000000000046F350 proc
	ret
000000000046F351    90 90 90 90 90 90 90 90 90 90 90 90 90 90 90  ...............

;; fn000000000046F360: 000000000046F360
;;   Called from:
;;     00000000004687E2 (in fn00000000004687A0)
fn000000000046F360 proc
	push	rbp
	push	rbx
	sub	rsp,28h
	lea	rbp,[rsp+80h]
	mov	[rbp-40h],rcx
	mov	[rbp-38h],rdx
	mov	rax,[rbp-38h]
	mov	rcx,rax
	call	471B90h
	movzx	ebx,byte ptr [rax]
	mov	rax,[rbp-40h]
	mov	rdx,rax
	mov	ecx,1h
	call	475600h
	test	rax,rax
	jz	46F39Dh

l000000000046F39B:
	mov	[rax],bl

l000000000046F39D:
	add	rsp,28h
	pop	rbx
	pop	rbp
	ret
000000000046F3A4             90 90 90 90 90 90 90 90 90 90 90 90     ............

;; fn000000000046F3B0: 000000000046F3B0
;;   Called from:
;;     0000000000423D5D (in fn0000000000423C60)
fn000000000046F3B0 proc
	sub	rsp,28h
	call	46FE70h
	mov	rcx,rax
	call	423B10h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop

;; fn000000000046F3D0: 000000000046F3D0
;;   Called from:
;;     00000000004687D7 (in fn00000000004687A0)
;;     000000000046F3CF (in fn000000000046F3B0)
fn000000000046F3D0 proc
	push	rbp
	mov	rbp,rsp
	mov	[rbp+10h],rcx
	mov	rax,[rbp+10h]
	pop	rbp
	ret
000000000046F3DE                                           90 90               ..

;; fn000000000046F3E0: 000000000046F3E0
;;   Called from:
;;     0000000000471A11 (in fn00000000004719F0)
;;     0000000000471A1D (in fn00000000004719F0)
fn000000000046F3E0 proc
	push	rbp
	mov	rbp,rsp
	sub	rsp,20h
	mov	[rbp+10h],rcx
	mov	rcx,[rbp+10h]
	call	452640h
	add	rsp,20h
	pop	rbp
	ret
000000000046F3FB                                  90 90 90 90 90            .....

;; fn000000000046F400: 000000000046F400
;;   Called from:
;;     000000000046FE2D (in fn000000000046FE10)
;;     000000000046FE3C (in fn000000000046FE10)
;;     000000000046FE48 (in fn000000000046FE10)
fn000000000046F400 proc
	push	rbp
	mov	rbp,rsp
	sub	rsp,20h
	mov	[rbp+10h],rcx
	mov	rcx,[rbp+10h]
	call	452630h
	add	rsp,20h
	pop	rbp
	ret
000000000046F41B                                  90 90 90 90 90            .....

;; fn000000000046F420: 000000000046F420
;;   Called from:
;;     000000000046FE56 (in fn000000000046FE10)
fn000000000046F420 proc
	push	rbp
	mov	rbp,rsp
	sub	rsp,30h
	mov	[rbp+10h],rcx
	mov	[rbp+18h],rdx
	mov	[rbp+20h],r8
	mov	byte ptr [rbp-1h],1h
	mov	rdx,[rbp+20h]
	mov	rax,[rbp+18h]
	mov	r8,rdx
	mov	rdx,rax
	mov	rcx,[rbp+10h]
	call	4535C0h
	add	rsp,30h
	pop	rbp
	ret
000000000046F455                90 90 90 90 90 90 90 90 90 90 90      ...........

;; fn000000000046F460: 000000000046F460
;;   Called from:
;;     000000000043834F (in fn00000000004382A0)
;;     000000000043866C (in fn00000000004385D0)
fn000000000046F460 proc
	push	rbx
	cmp	byte ptr [rsp+30h],0h
	mov	r10d,edx
	jz	46F4A4h

l000000000046F46B:
	mov	r11,rcx
	mov	ebx,0CCCCCCCDh

l000000000046F473:
	mov	eax,r10d
	sub	r11,1h
	mul	ebx
	shr	edx,3h
	lea	r9d,[rdx+rdx*4]
	add	r9d,r9d
	sub	r10d,r9d
	add	r10d,4h
	test	edx,edx
	movzx	r9d,byte ptr [r8+r10]
	mov	r10d,edx
	mov	[r11],r9b
	jnz	46F473h

l000000000046F49C:
	mov	rax,rcx
	sub	rax,r11
	pop	rbx
	ret

l000000000046F4A4:
	mov	eax,r9d
	and	eax,4Ah
	cmp	eax,40h
	jz	46F4E4h

l000000000046F4AF:
	and	r9d,4000h
	mov	r11,rcx
	cmp	r9d,1h
	sbb	edx,edx
	and	edx,0F0h
	add	edx,14h

l000000000046F4C5:
	mov	eax,r10d
	shr	r10d,4h
	sub	r11,1h
	and	eax,0Fh
	add	eax,edx
	test	r10d,r10d
	movzx	eax,byte ptr [r8+rax]
	mov	[r11],al
	jnz	46F4C5h

l000000000046F4E2:
	jmp	46F49Ch

l000000000046F4E4:
	mov	r11,rcx
	nop	word ptr [rax+rax+0h]

l000000000046F4F0:
	mov	eax,r10d
	shr	r10d,3h
	sub	r11,1h
	and	eax,7h
	test	r10d,r10d
	movzx	eax,byte ptr [r8+rax+4h]
	mov	[r11],al
	jnz	46F4F0h

l000000000046F50C:
	jmp	46F49Ch
000000000046F50E                                           90 90               ..

;; fn000000000046F510: 000000000046F510
;;   Called from:
;;     000000000042555C (in fn0000000000425520)
;;     0000000000438952 (in fn00000000004388A0)
;;     0000000000438C6D (in fn0000000000438BD0)
fn000000000046F510 proc
	push	rbx
	cmp	byte ptr [rsp+30h],0h
	mov	r10,rdx
	jz	46F561h

l000000000046F51B:
	mov	r11,rcx
	mov	rbx,0CCCCCCCCCCCCCCCDh
	nop	dword ptr [rax+rax+0h]

l000000000046F530:
	mov	rax,r10
	sub	r11,1h
	mul	rbx
	shr	rdx,3h
	lea	r9,[rdx+rdx*4]
	add	r9,r9
	sub	r10,r9
	test	rdx,rdx
	movzx	r9d,byte ptr [r8+r10+4h]
	mov	r10,rdx
	mov	[r11],r9b
	jnz	46F530h

l000000000046F559:
	mov	rax,rcx
	sub	rax,r11
	pop	rbx
	ret

l000000000046F561:
	mov	eax,r9d
	and	eax,4Ah
	cmp	eax,40h
	jz	46F5ACh

l000000000046F56C:
	and	r9d,4000h
	mov	r11,rcx
	cmp	r9d,1h
	sbb	rax,rax
	and	rax,0F0h
	lea	rdx,[r8+rax+14h]
	nop	word ptr cs:[rax+rax+0h]

l000000000046F590:
	mov	rax,r10
	shr	r10,4h
	sub	r11,1h
	and	eax,0Fh
	test	r10,r10
	movzx	eax,byte ptr [rdx+rax]
	mov	[r11],al
	jnz	46F590h

l000000000046F5AA:
	jmp	46F559h

l000000000046F5AC:
	mov	r11,rcx
	nop

l000000000046F5B0:
	mov	rax,r10
	shr	r10,3h
	sub	r11,1h
	and	eax,7h
	test	r10,r10
	movzx	eax,byte ptr [r8+rax+4h]
	mov	[r11],al
	jnz	46F5B0h

l000000000046F5CC:
	jmp	46F559h
000000000046F5CE                                           90 90               ..

;; fn000000000046F5D0: 000000000046F5D0
;;   Called from:
;;     000000000043A01F (in fn0000000000439F70)
;;     000000000043A34C (in fn000000000043A2B0)
fn000000000046F5D0 proc
	push	rbx
	cmp	byte ptr [rsp+30h],0h
	mov	r10d,edx
	jz	46F618h

l000000000046F5DB:
	mov	r11,rcx
	mov	ebx,0CCCCCCCDh

l000000000046F5E3:
	mov	eax,r10d
	sub	r11,2h
	mul	ebx
	shr	edx,3h
	lea	r9d,[rdx+rdx*4]
	add	r9d,r9d
	sub	r10d,r9d
	add	r10d,4h
	test	edx,edx
	movzx	r9d,word ptr [r8+r10*2]
	mov	r10d,edx
	mov	[r11],r9w
	jnz	46F5E3h

l000000000046F60D:
	sub	rcx,r11
	mov	rax,rcx
	sar	rax,1h
	pop	rbx
	ret

l000000000046F618:
	mov	eax,r9d
	and	eax,4Ah
	cmp	eax,40h
	jz	46F660h

l000000000046F623:
	and	r9d,4000h
	mov	r11,rcx
	cmp	r9d,1h
	sbb	edx,edx
	and	edx,0F0h
	add	edx,14h
	nop	dword ptr [rax+0h]

l000000000046F640:
	mov	eax,r10d
	shr	r10d,4h
	sub	r11,2h
	and	eax,0Fh
	add	eax,edx
	test	r10d,r10d
	movzx	eax,word ptr [r8+rax*2]
	mov	[r11],ax
	jnz	46F640h

l000000000046F65E:
	jmp	46F60Dh

l000000000046F660:
	mov	r11,rcx

l000000000046F663:
	mov	eax,r10d
	shr	r10d,3h
	sub	r11,2h
	and	eax,7h
	test	r10d,r10d
	movzx	eax,word ptr [r8+rax*2+8h]
	mov	[r11],ax
	jnz	46F663h

l000000000046F680:
	jmp	46F60Dh
000000000046F682       90 90 90 90 90 90 90 90 90 90 90 90 90 90   ..............

;; fn000000000046F690: 000000000046F690
;;   Called from:
;;     000000000043A645 (in fn000000000043A590)
;;     000000000043A970 (in fn000000000043A8D0)
fn000000000046F690 proc
	push	rbx
	cmp	byte ptr [rsp+30h],0h
	mov	r10,rdx
	jz	46F6E5h

l000000000046F69B:
	mov	r11,rcx
	mov	rbx,0CCCCCCCCCCCCCCCDh
	nop	dword ptr [rax+rax+0h]

l000000000046F6B0:
	mov	rax,r10
	sub	r11,2h
	mul	rbx
	shr	rdx,3h
	lea	r9,[rdx+rdx*4]
	add	r9,r9
	sub	r10,r9
	test	rdx,rdx
	movzx	r9d,word ptr [r8+r10*2+8h]
	mov	r10,rdx
	mov	[r11],r9w
	jnz	46F6B0h

l000000000046F6DA:
	sub	rcx,r11
	mov	rax,rcx
	sar	rax,1h
	pop	rbx
	ret

l000000000046F6E5:
	mov	eax,r9d
	and	eax,4Ah
	cmp	eax,40h
	jz	46F731h

l000000000046F6F0:
	and	r9d,4000h
	mov	r11,rcx
	cmp	r9d,1h
	sbb	rdx,rdx
	and	rdx,0F0h
	add	rdx,14h
	nop	dword ptr [rax+0h]

l000000000046F710:
	mov	rax,r10
	shr	r10,4h
	sub	r11,2h
	and	eax,0Fh
	add	rax,rdx
	test	r10,r10
	movzx	eax,word ptr [r8+rax*2]
	mov	[r11],ax
	jnz	46F710h

l000000000046F72F:
	jmp	46F6DAh

l000000000046F731:
	mov	r11,rcx

l000000000046F734:
	mov	rax,r10
	shr	r10,3h
	sub	r11,2h
	and	eax,7h
	test	r10,r10
	movzx	eax,word ptr [r8+rax*2+8h]
	mov	[r11],ax
	jnz	46F734h

l000000000046F751:
	jmp	46F6DAh
000000000046F753          90 90 90 90 90 90 90 90 90 90 90 90 90    .............

;; fn000000000046F760: 000000000046F760
;;   Called from:
;;     0000000000470A09 (in fn00000000004709E0)
;;     0000000000472D64 (in fn0000000000472D60)
;;     00000000004760E8 (in fn00000000004760B0)
fn000000000046F760 proc
	push	rbx
	sub	rsp,20h
	mov	rbx,[00000000004915F0]                                 ; [rip+00021E84]
	mov	rax,[rbx]
	test	rax,rax
	jz	46F780h

l000000000046F774:
	mov	rax,[rax]
	add	rsp,20h
	pop	rbx
	ret
000000000046F77D                                        0F 1F 00              ...

l000000000046F780:
	call	423C20h
	mov	[rbx],rax
	mov	rax,[rax]
	add	rsp,20h
	pop	rbx
	ret
000000000046F791    90 90 90 90 90 90 90 90 90 90 90 90 90 90 90  ...............

;; fn000000000046F7A0: 000000000046F7A0
fn000000000046F7A0 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	mov	rsi,[00000000004915F0]                                 ; [rip+00021E43]
	mov	rbx,rcx
	mov	rdx,[rsi]
	test	rdx,rdx
	jz	46F7C5h

l000000000046F7B8:
	mov	rax,rbx
	xchg	[rdx],rax
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret

l000000000046F7C5:
	call	423C20h
	mov	rdx,rax
	mov	[rsi],rax
	jmp	46F7B8h
000000000046F7D2       48 83 C2 01 48 89 C1 74 05 E8 D0 1D FA FF   H...H..t......
000000000046F7E0 E8 2B 61 00 00 90 90 90 90 90 90 90 90 90 90 90 .+a.............

;; fn000000000046F7F0: 000000000046F7F0
;;   Called from:
;;     000000000043828B (in fn0000000000438250)
;;     0000000000438473 (in fn00000000004382A0)
;;     0000000000438760 (in fn00000000004385D0)
;;     0000000000438A73 (in fn00000000004388A0)
;;     0000000000438D61 (in fn0000000000438BD0)
;;     0000000000438EF2 (in fn0000000000438EA0)
;;     0000000000438F44 (in fn0000000000438EA0)
;;     0000000000446E01 (in fn0000000000446BF0)
;;     00000000004474E1 (in fn00000000004472D0)
fn000000000046F7F0 proc
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	mov	rbp,[rsp+48h]
	mov	r10,[rsp+50h]
	xor	esi,esi
	mov	rax,rcx
	movsx	rcx,byte ptr [r8]
	xor	ebx,ebx
	sub	r9,1h
	mov	r11,rcx

l000000000046F810:
	mov	rdi,r10
	sub	rdi,rbp
	cmp	rdi,rcx
	jle	46F848h

l000000000046F81B:
	lea	edi,[r11-1h]
	cmp	dil,7Dh
	ja	46F848h

l000000000046F825:
	sub	r10,rcx
	cmp	rbx,r9
	jnc	46F930h

l000000000046F831:
	add	rbx,1h
	mov	rdi,r10
	movsx	rcx,byte ptr [r8+rbx]
	sub	rdi,rbp
	cmp	rdi,rcx
	mov	r11,rcx
	jg	46F81Bh

l000000000046F848:
	cmp	rbp,r10
	lea	rdi,[r8+rbx]
	jz	46F87Fh

l000000000046F851:
	mov	rcx,rbp
	mov	r9,rax
	nop	word ptr [rax+rax+0h]

l000000000046F860:
	add	rcx,1h
	movzx	r11d,byte ptr [rcx-1h]
	add	r9,1h
	cmp	rcx,r10
	mov	[r9-1h],r11b
	jnz	46F860h

l000000000046F876:
	mov	rcx,r10
	sub	rcx,rbp
	add	rax,rcx

l000000000046F87F:
	sub	rsi,1h
	cmp	rsi,0FFh
	jz	46F8D7h

l000000000046F889:
	nop	dword ptr [rax+0h]

l000000000046F890:
	mov	[rax],dl
	movzx	r11d,byte ptr [rdi]
	lea	rbp,[rax+1h]
	test	r11b,r11b
	jle	46F93Eh

l000000000046F8A3:
	sub	r11d,1h
	xor	r9d,r9d
	movzx	r11d,r11b
	add	r11,1h

l000000000046F8B2:
	movzx	ecx,byte ptr [r10+r9]
	mov	[rax+r9+1h],cl
	add	r9,1h
	cmp	r9,r11
	jnz	46F8B2h

l000000000046F8C5:
	sub	rsi,1h
	add	r10,r9
	lea	rax,[rbp+r9+0h]
	cmp	rsi,0FFh
	jnz	46F890h

l000000000046F8D7:
	sub	rbx,1h
	cmp	rbx,0FFh
	jz	46F924h

l000000000046F8E1:
	mov	[rax],dl
	movzx	r11d,byte ptr [r8+rbx]
	lea	rsi,[rax+1h]
	test	r11b,r11b
	jle	46F939h

l000000000046F8F1:
	sub	r11d,1h
	xor	r9d,r9d
	movzx	r11d,r11b
	add	r11,1h

l000000000046F900:
	movzx	ecx,byte ptr [r10+r9]
	mov	[rax+r9+1h],cl
	add	r9,1h
	cmp	r9,r11
	jnz	46F900h

l000000000046F913:
	sub	rbx,1h
	add	r10,r9
	lea	rax,[rsi+r9]
	cmp	rbx,0FFh
	jnz	46F8E1h

l000000000046F924:
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
000000000046F929                            0F 1F 80 00 00 00 00          .......

l000000000046F930:
	add	rsi,1h
	jmp	46F810h

l000000000046F939:
	mov	rax,rsi
	jmp	46F8D7h

l000000000046F93E:
	mov	rax,rbp
	jmp	46F87Fh
000000000046F946                   90 90 90 90 90 90 90 90 90 90       ..........

;; fn000000000046F950: 000000000046F950
;;   Called from:
;;     0000000000439F5C (in fn0000000000439F20)
;;     000000000043A148 (in fn0000000000439F70)
;;     000000000043A444 (in fn000000000043A2B0)
;;     000000000043A768 (in fn000000000043A590)
;;     000000000043AA72 (in fn000000000043A8D0)
;;     000000000043AC16 (in fn000000000043ABC0)
;;     000000000043AC70 (in fn000000000043ABC0)
;;     0000000000447EB8 (in fn0000000000447CD0)
;;     00000000004486A8 (in fn00000000004484C0)
fn000000000046F950 proc
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	movsx	r11,byte ptr [r8]
	mov	rbp,[rsp+48h]
	xor	esi,esi
	mov	r10,[rsp+50h]
	mov	rax,rcx
	xor	ebx,ebx
	sub	r9,1h
	mov	rdi,r11

l000000000046F970:
	mov	rcx,r10
	sub	rcx,rbp
	sar	rcx,1h
	cmp	rcx,r11
	jle	46F9B0h

l000000000046F97E:
	lea	ecx,[rdi-1h]
	cmp	cl,7Dh
	ja	46F9B0h

l000000000046F986:
	lea	rcx,[r11+r11]
	sub	r10,rcx
	cmp	rbx,r9
	jnc	46FAA0h

l000000000046F996:
	add	rbx,1h
	mov	rcx,r10
	movsx	r11,byte ptr [r8+rbx]
	sub	rcx,rbp
	sar	rcx,1h
	cmp	rcx,r11
	mov	rdi,r11
	jg	46F97Eh

l000000000046F9B0:
	cmp	rbp,r10
	lea	rdi,[r8+rbx]
	jz	46F9E9h

l000000000046F9B9:
	mov	rcx,rbp
	mov	r9,rax
	nop

l000000000046F9C0:
	add	rcx,2h
	movzx	r11d,word ptr [rcx-2h]
	add	r9,2h
	cmp	rcx,r10
	mov	[r9-2h],r11w
	jnz	46F9C0h

l000000000046F9D7:
	add	rbp,2h
	mov	rcx,r10
	sub	rcx,rbp
	shr	rcx,1h
	lea	rax,[rax+rcx*2+2h]

l000000000046F9E9:
	sub	rsi,1h
	cmp	rsi,0FFh
	jz	46FA49h

l000000000046F9F3:
	mov	[rax],dx
	movzx	r11d,byte ptr [rdi]
	lea	rbp,[rax+2h]
	test	r11b,r11b
	jle	46FAAEh

l000000000046FA07:
	sub	r11d,1h
	xor	r9d,r9d
	movzx	r11d,r11b
	add	r11,1h
	nop	word ptr cs:[rax+rax+0h]

l000000000046FA20:
	movzx	ecx,word ptr [r10+r9*2]
	mov	[rax+r9*2+2h],cx
	add	r9,1h
	cmp	r9,r11
	jnz	46FA20h

l000000000046FA34:
	add	r9,r9
	sub	rsi,1h
	add	r10,r9
	cmp	rsi,0FFh
	lea	rax,[rbp+r9+0h]
	jnz	46F9F3h

l000000000046FA49:
	sub	rbx,1h
	cmp	rbx,0FFh
	jz	46FA9Bh

l000000000046FA53:
	mov	[rax],dx
	movzx	r11d,byte ptr [r8+rbx]
	lea	rsi,[rax+2h]
	test	r11b,r11b
	jle	46FAA9h

l000000000046FA64:
	sub	r11d,1h
	xor	r9d,r9d
	movzx	r11d,r11b
	add	r11,1h

l000000000046FA73:
	movzx	ecx,word ptr [r10+r9*2]
	mov	[rax+r9*2+2h],cx
	add	r9,1h
	cmp	r9,r11
	jnz	46FA73h

l000000000046FA87:
	add	r9,r9
	sub	rbx,1h
	add	r10,r9
	cmp	rbx,0FFh
	lea	rax,[rsi+r9]
	jnz	46FA53h

l000000000046FA9B:
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret

l000000000046FAA0:
	add	rsi,1h
	jmp	46F970h

l000000000046FAA9:
	mov	rax,rsi
	jmp	46FA49h

l000000000046FAAE:
	mov	rax,rbp
	jmp	46F9E9h
000000000046FAB6                   90 90 90 90 90 90 90 90 90 90       ..........

;; fn000000000046FAC0: 000000000046FAC0
;;   Called from:
;;     0000000000431F40 (in fn0000000000431E50)
;;     0000000000437A5F (in fn0000000000437980)
fn000000000046FAC0 proc
	push	r13
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,38h
	mov	rdi,rcx
	mov	r12,rdx
	xor	ecx,ecx
	xor	edx,edx
	mov	r13,r8
	call	41BDB8h
	mov	rcx,rax
	mov	rbp,rax
	call	41BCB8h
	lea	rbx,[rax+1h]
	mov	rcx,rbx
	call	475560h
	mov	r8,rbx
	mov	rdx,rbp
	mov	rcx,rax
	mov	rsi,rax
	call	41BCC0h
	lea	rdx,[000000000048E1C0]                                 ; [rip+0001E6B3]
	xor	ecx,ecx
	call	41BDB8h
	lea	rdx,[rsp+28h]
	mov	rcx,rdi
	call	411FC0h
	mov	rax,[rsp+28h]
	movsd	double ptr [r12],xmm0
	cmp	rax,rdi
	jz	46FB36h

l000000000046FB31:
	cmp	byte ptr [rax],0h
	jz	46FB70h

l000000000046FB36:
	mov	qword ptr [r12],+0h
	mov	dword ptr [r13+0h],4h
	mov	rdx,rsi
	xor	ecx,ecx
	call	41BDB8h
	mov	rcx,rsi
	call	475540h
	nop
	add	rsp,38h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	ret
000000000046FB66                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l000000000046FB70:
	ucomisd	xmm0,[000000000048E240]                            ; [rip+0001E6C8]
	ja	46FB88h

l000000000046FB7A:
	movsd	xmm1,[000000000048E248]                              ; [rip+0001E6C6]
	ucomisd	xmm1,xmm0
	jbe	46FB46h

l000000000046FB88:
	pxor	xmm1,xmm1
	movsd	xmm2,[000000000048E248]                              ; [rip+0001E6B4]
	cmpsd	xmm1,xmm0,1h
	movapd	xmm0,xmm1
	movsd	xmm1,[000000000048E240]                              ; [rip+0001E69B]
	andpd	xmm1,xmm0
	andnpd	xmm0,xmm2
	orpd	xmm0,xmm1
	movsd	double ptr [r12],xmm0
	mov	dword ptr [r13+0h],4h
	jmp	46FB46h
	add	rdx,1h
	mov	rcx,rax
	jz	46FBCFh
	call	4115B0h
	call	475910h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop

;; fn000000000046FBE0: 000000000046FBE0
;;   Called from:
;;     0000000000432160 (in fn0000000000432070)
;;     0000000000437C6F (in fn0000000000437B90)
;;     000000000044459A (in fn00000000004444B0)
;;     0000000000446801 (in fn0000000000446720)
fn000000000046FBE0 proc
	push	r13
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,48h
	mov	rdi,rcx
	mov	r12,rdx
	xor	ecx,ecx
	xor	edx,edx
	mov	r13,r8
	call	41BDB8h
	mov	rcx,rax
	mov	rbp,rax
	call	41BCB8h
	lea	rbx,[rax+1h]
	mov	rcx,rbx
	call	475560h
	mov	r8,rbx
	mov	rdx,rbp
	mov	rcx,rax
	mov	rsi,rax
	call	41BCC0h
	lea	rdx,[000000000048E1C0]                                 ; [rip+0001E593]
	xor	ecx,ecx
	call	41BDB8h
	lea	rcx,[rsp+20h]
	lea	r8,[rsp+38h]
	mov	rdx,rdi
	call	412A50h
	fld	tword ptr [rsp+20h]
	mov	rax,[rsp+38h]
	cmp	rax,rdi
	fld	st(0)
	fstp	tword ptr [r12]
	jz	46FC63h

l000000000046FC5A:
	cmp	byte ptr [rax],0h
	jz	46FCA0h

l000000000046FC5F:
	fstp	st(0)
	jmp	46FC65h

l000000000046FC63:
	fstp	st(0)

l000000000046FC65:
	fldz
	fstp	tword ptr [r12]
	mov	dword ptr [r13+0h],4h
	jmp	46FC80h

l000000000046FC75:
	fstp	st(0)
	nop	word ptr [rax+rax+0h]

l000000000046FC80:
	mov	rdx,rsi
	xor	ecx,ecx
	call	41BDB8h
	mov	rcx,rsi
	call	475540h
	nop
	add	rsp,48h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	ret

l000000000046FCA0:
	fld	[000000000048E250]                                     ; [rip+0001E5AA]
	fxch	st(0),st(1)
	fucomi	st(0),st(1)
	fstp	st(1)
	ja	46FCB8h

l000000000046FCAE:
	fld	[000000000048E260]                                     ; [rip+0001E5AC]
	fucomip	st(0),st(1)
	jbe	46FC75h

l000000000046FCB8:
	fldz
	fxch	st(0),st(1)
	fucomip	st(0),st(1)
	fstp	st(0)
	jbe	46FCE0h

l000000000046FCC2:
	fld	[000000000048E250]                                     ; [rip+0001E588]
	fstp	tword ptr [r12]

l000000000046FCCC:
	mov	dword ptr [r13+0h],4h
	jmp	46FC80h
000000000046FCD6                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l000000000046FCE0:
	fld	[000000000048E260]                                     ; [rip+0001E57A]
	fstp	tword ptr [r12]
	jmp	46FCCCh
000000000046FCEC                                     48 83 C2 01             H...
000000000046FCF0 48 89 C1 74 05 E8 B6 18 FA FF E8 11 5C 00 00 90 H..t........\...

;; fn000000000046FD00: 000000000046FD00
;;   Called from:
;;     0000000000432380 (in fn0000000000432290)
;;     0000000000437E7F (in fn0000000000437DA0)
fn000000000046FD00 proc
	push	r13
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,38h
	mov	rdi,rcx
	mov	r12,rdx
	xor	ecx,ecx
	xor	edx,edx
	mov	r13,r8
	call	41BDB8h
	mov	rcx,rax
	mov	rbp,rax
	call	41BCB8h
	lea	rbx,[rax+1h]
	mov	rcx,rbx
	call	475560h
	mov	r8,rbx
	mov	rdx,rbp
	mov	rcx,rax
	mov	rsi,rax
	call	41BCC0h
	lea	rdx,[000000000048E1C0]                                 ; [rip+0001E473]
	xor	ecx,ecx
	call	41BDB8h
	lea	rdx,[rsp+28h]
	mov	rcx,rdi
	call	411F10h
	mov	rax,[rsp+28h]
	movss	dword ptr [r12],xmm0
	cmp	rax,rdi
	jz	46FD76h

l000000000046FD71:
	cmp	byte ptr [rax],0h
	jz	46FDB0h

l000000000046FD76:
	mov	dword ptr [r12],0h
	mov	dword ptr [r13+0h],4h
	mov	rdx,rsi
	xor	ecx,ecx
	call	41BDB8h
	mov	rcx,rsi
	call	475540h
	nop
	add	rsp,38h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	ret
000000000046FDA6                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l000000000046FDB0:
	ucomiss	xmm0,[000000000048E238]                            ; [rip+0001E481]
	ja	46FDC6h

l000000000046FDB9:
	movss	xmm1,[000000000048E23C]                              ; [rip+0001E47B]
	ucomiss	xmm1,xmm0
	jbe	46FD86h

l000000000046FDC6:
	pxor	xmm1,xmm1
	movss	xmm2,[000000000048E23C]                              ; [rip+0001E46A]
	cmpss	xmm1,xmm0,1h
	movaps	xmm0,xmm1
	movss	xmm1,[000000000048E238]                              ; [rip+0001E456]
	andps	xmm1,xmm0
	andnps	xmm0,xmm2
	orps	xmm0,xmm1
	movss	dword ptr [r12],xmm0
	mov	dword ptr [r13+0h],4h
	jmp	46FD86h
	add	rdx,1h
	mov	rcx,rax
	jz	46FE09h
	call	4115B0h
	call	475910h
	nop
	nop

;; fn000000000046FE10: 000000000046FE10
;;   Called from:
;;     0000000000471A2F (in fn00000000004719F0)
fn000000000046FE10 proc
	push	rbp
	push	rsi
	push	rbx
	mov	rbp,rsp
	sub	rsp,20h
	mov	[rbp+20h],rcx
	mov	[rbp+28h],rdx
	mov	[rbp+30h],r8
	mov	rax,[rbp+30h]
	mov	rcx,rax
	call	46F400h
	mov	rsi,rax
	mov	rax,[rbp+28h]
	mov	rcx,rax
	call	46F400h
	mov	rbx,rax
	mov	rcx,[rbp+20h]
	call	46F400h
	mov	r8,rsi
	mov	rdx,rbx
	mov	rcx,rax
	call	46F420h
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rbp
	ret
000000000046FE63          90 90 90 90 90 90 90 90 90 90 90 90 90    .............

;; fn000000000046FE70: 000000000046FE70
;;   Called from:
;;     000000000046F3B4 (in fn000000000046F3B0)
;;     00000000004709FC (in fn00000000004709E0)
;;     00000000004760DF (in fn00000000004760B0)
fn000000000046FE70 proc
	push	rbx
	sub	rsp,20h
	mov	rbx,[0000000000491600]                                 ; [rip+00021784]
	mov	rax,[rbx]
	test	rax,rax
	jz	46FE90h

l000000000046FE84:
	mov	rax,[rax]
	add	rsp,20h
	pop	rbx
	ret
000000000046FE8D                                        0F 1F 00              ...

l000000000046FE90:
	call	423C40h
	mov	[rbx],rax
	mov	rax,[rax]
	add	rsp,20h
	pop	rbx
	ret
000000000046FEA1    90 90 90 90 90 90 90 90 90 90 90 90 90 90 90  ...............

;; fn000000000046FEB0: 000000000046FEB0
fn000000000046FEB0 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	mov	rsi,[0000000000491600]                                 ; [rip+00021743]
	mov	rbx,rcx
	mov	rdx,[rsi]
	test	rdx,rdx
	jz	46FED5h

l000000000046FEC8:
	mov	rax,rbx
	xchg	[rdx],rax
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret

l000000000046FED5:
	call	423C40h
	mov	rdx,rax
	mov	[rsi],rax
	jmp	46FEC8h
000000000046FEE2       48 83 C2 01 48 89 C1 74 05 E8 C0 16 FA FF   H...H..t......
000000000046FEF0 E8 1B 5A 00 00 90 90 90 90 90 90 90 90 90 90 90 ..Z.............

;; fn000000000046FF00: 000000000046FF00
;;   Called from:
;;     0000000000470DBC (in fn0000000000470DA0)
fn000000000046FF00 proc
	sub	rsp,28h
	cmp	[0000000000477340],0h                                  ; [rip+00007435]
	jz	46FF20h

l000000000046FF0D:
	lea	rax,[000000000048C080]                                 ; [rip+0001C16C]
	add	rsp,28h
	ret
000000000046FF19                            0F 1F 80 00 00 00 00          .......

l000000000046FF20:
	lea	rcx,[0000000000477340]                                 ; [rip+00007419]
	call	475E80h
	test	eax,eax
	jz	46FF0Dh

l000000000046FF30:
	lea	rcx,[0000000000477340]                                 ; [rip+00007409]
	call	475F80h
	lea	rcx,[0000000000476370]                                 ; [rip+0000642D]
	call	410BF0h
	lea	rax,[000000000048C080]                                 ; [rip+0001C131]
	add	rsp,28h
	ret
000000000046FF54             90 90 90 90 90 90 90 90 90 90 90 90     ............

;; fn000000000046FF60: 000000000046FF60
;;   Called from:
;;     00000000004755B1 (in fn0000000000475590)
fn000000000046FF60 proc
	mov	rax,[0000000000489940]                                 ; [rip+000199D9]
	ret
000000000046FF68                         90 90 90 90 90 90 90 90         ........

;; fn000000000046FF70: 000000000046FF70
fn000000000046FF70 proc
	mov	rax,rcx
	xchg	[0000000000489940],rax                                ; [rip+000199C6]
	ret
000000000046FF7B                                  90 90 90 90 90            .....

;; fn000000000046FF80: 000000000046FF80
fn000000000046FF80 proc
	lea	rax,[000000000048AA70]                                 ; [rip+0001AAE9]
	ret
000000000046FF88                         90 90 90 90 90 90 90 90         ........

;; fn000000000046FF90: 000000000046FF90
;;   Called from:
;;     0000000000439020 (in fn0000000000438F60)
;;     0000000000439266 (in fn0000000000438F60)
;;     00000000004393BC (in fn00000000004392F0)
;;     00000000004395FF (in fn00000000004392F0)
;;     000000000043AD67 (in fn000000000043AC90)
;;     000000000043AF71 (in fn000000000043AC90)
;;     000000000043B154 (in fn000000000043B070)
;;     000000000043B367 (in fn000000000043B070)
;;     0000000000446A4F (in fn00000000004469A0)
;;     0000000000446AA4 (in fn00000000004469A0)
;;     0000000000447B7E (in fn0000000000447AD0)
;;     0000000000447BD5 (in fn0000000000447AD0)
fn000000000046FF90 proc
	push	r14
	push	r13
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,30h
	lea	r14,[000000000048DB5A]                                 ; [rip+0001DBB5]
	mov	ecx,4h
	mov	r12,rdx
	xor	edx,edx
	mov	ebx,r8d
	mov	r13,r9
	mov	rdi,r14
	call	41BDB8h
	mov	ecx,2h
	mov	rsi,rax
	mov	rbp,rax

l000000000046FFC8:
	rep cmpsb

l000000000046FFCA:
	jnz	470000h

l000000000046FFCC:
	lea	r9,[rsp+90h]
	movsxd	rdx,ebx
	mov	r8,r13
	mov	rcx,r12
	mov	[rsp+28h],r9
	call	411E90h
	mov	ebx,eax

l000000000046FFE9:
	mov	eax,ebx
	add	rsp,30h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	ret
000000000046FFFA                               66 0F 1F 44 00 00           f..D..

l0000000000470000:
	mov	rcx,rax
	call	41BCB8h
	lea	rsi,[rax+1h]
	mov	rcx,rsi
	call	475560h
	mov	r8,rsi
	mov	rdx,rbp
	mov	rcx,rax
	mov	rdi,rax
	call	41BCC0h
	mov	rdx,r14
	mov	ecx,4h
	call	41BDB8h
	lea	r9,[rsp+90h]
	movsxd	rdx,ebx
	mov	r8,r13
	mov	rcx,r12
	mov	[rsp+28h],r9
	call	411E90h
	mov	rdx,rdi
	mov	ecx,4h
	mov	ebx,eax
	call	41BDB8h
	mov	rcx,rdi
	call	475540h
	jmp	46FFE9h
0000000000470066                   90 90 90 90 90 90 90 90 90 90       ..........

;; fn0000000000470070: 0000000000470070
;;   Called from:
;;     0000000000473892 (in fn0000000000473870)
;;     00000000004738E2 (in fn00000000004738C0)
;;     0000000000473932 (in fn0000000000473910)
;;     0000000000473973 (in fn0000000000473960)
;;     0000000000473993 (in fn0000000000473980)
;;     00000000004739B3 (in fn00000000004739A0)
;;     0000000000473B07 (in fn0000000000473B00)
fn0000000000470070 proc
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,48h
	lea	r13,[rsp+30h]
	mov	rbx,rcx
	mov	r15,rdx
	mov	rdx,rcx
	mov	r12,r8
	mov	rcx,r13
	call	44ED50h
	cmp	byte ptr [rsp+30h],0h
	jz	4700EDh

l00000000004700A0:
	mov	rax,[rbx]
	mov	rax,[rax-18h]
	lea	rbp,[rbx+rax]
	mov	rsi,[rbp+10h]
	cmp	rsi,r12
	jle	470140h

l00000000004700B8:
	mov	edx,[rbp+18h]
	and	edx,0B0h
	cmp	edx,20h
	mov	rdx,rbp
	setz	byte ptr [rsp+2Fh]
	movzx	edi,byte ptr [rsp+2Fh]
	test	dil,dil
	jz	4701D2h

l00000000004700DA:
	mov	ecx,[rdx+20h]
	test	ecx,ecx
	jz	470180h

l00000000004700E5:
	mov	qword ptr [rdx+10h],+0h

l00000000004700ED:
	mov	rax,[rsp+38h]
	mov	rdx,[rax]
	add	rax,[rdx-18h]
	test	byte ptr [rax+19h],20h
	mov	rsi,rax
	jz	470126h

l0000000000470102:
	call	470A80h
	test	al,al
	jnz	470126h

l000000000047010B:
	mov	rcx,[rsi+0E8h]
	test	rcx,rcx
	jz	470126h

l0000000000470117:
	mov	rax,[rcx]
	call	qword ptr [rax+30h]
	cmp	eax,0FFh
	jz	470260h

l0000000000470126:
	mov	rax,rbx
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
000000000047013A                               66 0F 1F 44 00 00           f..D..

l0000000000470140:
	mov	rcx,[rbp+0E8h]
	mov	r8,r12
	mov	rdx,r15
	mov	rax,[rcx]
	call	qword ptr [rax+60h]
	cmp	r12,rax
	mov	rax,[rbx]
	jz	470170h

l000000000047015B:
	mov	rcx,rbx
	add	rcx,[rax-18h]
	mov	edx,[rcx+20h]
	or	edx,1h
	call	46E370h

l000000000047016D:
	mov	rax,[rbx]

l0000000000470170:
	mov	rdx,rbx
	add	rdx,[rax-18h]
	jmp	4700E5h
000000000047017C                                     0F 1F 40 00             ..@.

l0000000000470180:
	mov	rcx,[rdx+0E8h]
	mov	r8,r12
	mov	rdx,r15
	mov	rax,[rcx]
	call	qword ptr [rax+60h]
	cmp	r12,rax
	jz	4701ADh

l0000000000470198:
	mov	rax,[rbx]
	mov	rcx,rbx
	add	rcx,[rax-18h]
	mov	edx,[rcx+20h]
	or	edx,1h
	call	46E370h

l00000000004701AD:
	cmp	byte ptr [rsp+2Fh],0h
	jz	47016Dh

l00000000004701B4:
	mov	rax,[rbx]
	mov	rax,[rax-18h]
	lea	rdi,[rbx+rax]
	mov	edx,[rdi+20h]
	test	edx,edx
	jz	470280h

l00000000004701CA:
	mov	rdx,rdi
	jmp	4700E5h

l00000000004701D2:
	mov	rdi,rsi
	sub	rdi,r12
	cmp	byte ptr [rbp+0E1h],0h
	jz	470300h

l00000000004701E5:
	movzx	r14d,byte ptr [rbp+0E0h]

l00000000004701ED:
	test	rdi,rdi
	jle	4700DAh

l00000000004701F6:
	movzx	ebp,r14b
	jmp	470219h
00000000004701FC                                     0F 1F 40 00             ..@.

l0000000000470200:
	mov	[rax],r14b
	add	qword ptr [rcx+28h],1h

l0000000000470208:
	sub	rdi,1h
	mov	rax,[rbx]
	jz	4702F0h

l0000000000470215:
	mov	rax,[rax-18h]

l0000000000470219:
	mov	rcx,[rbx+rax+0E8h]
	mov	rax,[rcx+28h]
	cmp	rax,[rcx+30h]
	jc	470200h

l000000000047022B:
	mov	rax,[rcx]
	mov	edx,ebp
	call	qword ptr [rax+68h]
	cmp	eax,0FFh
	jnz	470208h

l0000000000470238:
	mov	rax,[rbx]
	mov	rcx,rbx
	add	rcx,[rax-18h]
	mov	edx,[rcx+20h]
	or	edx,1h
	call	46E370h
	mov	rax,[rbx]
	mov	rdx,rbx
	add	rdx,[rax-18h]
	jmp	4700DAh
000000000047025C                                     0F 1F 40 00             ..@.

l0000000000470260:
	mov	rcx,[rsp+38h]
	mov	rax,[rcx]
	add	rcx,[rax-18h]
	mov	edx,[rcx+20h]
	or	edx,1h
	call	46E370h
	jmp	470126h
000000000047027C                                     0F 1F 40 00             ..@.

l0000000000470280:
	sub	rsi,r12
	cmp	byte ptr [rdi+0E1h],0h
	jz	470340h

l0000000000470290:
	movzx	ebp,byte ptr [rdi+0E0h]
	mov	rdx,rdi

l000000000047029A:
	test	rsi,rsi
	jle	4700E5h

l00000000004702A3:
	movzx	edi,bpl
	jmp	4702C9h
00000000004702A9                            0F 1F 80 00 00 00 00          .......

l00000000004702B0:
	mov	[r8],bpl
	add	qword ptr [rcx+28h],1h

l00000000004702B8:
	sub	rsi,1h
	mov	rax,[rbx]
	jz	470170h

l00000000004702C5:
	mov	rax,[rax-18h]

l00000000004702C9:
	mov	rcx,[rbx+rax+0E8h]
	mov	r8,[rcx+28h]
	cmp	r8,[rcx+30h]
	jc	4702B0h

l00000000004702DB:
	mov	rax,[rcx]
	mov	edx,edi
	call	qword ptr [rax+68h]
	cmp	eax,0FFh
	jnz	4702B8h

l00000000004702E8:
	mov	rax,[rbx]
	jmp	47015Bh

l00000000004702F0:
	mov	rdx,rbx
	add	rdx,[rax-18h]
	jmp	4700DAh
00000000004702FC                                     0F 1F 40 00             ..@.

l0000000000470300:
	mov	r14,[rbp+0F0h]
	test	r14,r14
	jz	4703FCh

l0000000000470310:
	cmp	byte ptr [r14+38h],0h
	jz	470380h

l0000000000470317:
	movzx	r14d,byte ptr [r14+59h]

l000000000047031C:
	mov	[rbp+0E0h],r14b
	mov	rax,[rbx]
	mov	byte ptr [rbp+0E1h],1h
	mov	rax,[rax-18h]
	lea	rdx,[rbx+rax]
	jmp	4701EDh
000000000047033A                               66 0F 1F 44 00 00           f..D..

l0000000000470340:
	mov	rbp,[rdi+0F0h]
	test	rbp,rbp
	jz	4703F7h

l0000000000470350:
	cmp	byte ptr [rbp+38h],0h
	jz	4703B0h

l0000000000470356:
	movzx	ebp,byte ptr [rbp+59h]

l000000000047035A:
	mov	[rdi+0E0h],bpl
	mov	rax,[rbx]
	mov	byte ptr [rdi+0E1h],1h
	mov	rax,[rax-18h]
	lea	rdx,[rbx+rax]
	jmp	47029Ah
0000000000470378                         0F 1F 84 00 00 00 00 00         ........

l0000000000470380:
	mov	rcx,r14
	call	42B320h
	mov	rax,[r14]
	lea	rdx,[000000000042B5F0]                                 ; [rip+FFFBB25E]
	mov	rax,[rax+30h]
	cmp	rax,rdx
	jnz	470412h

l000000000047039B:
	mov	r14d,20h
	jmp	47031Ch
00000000004703A6                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l00000000004703B0:
	mov	rcx,rbp
	call	42B320h
	mov	rax,[rbp+0h]
	lea	rdx,[000000000042B5F0]                                 ; [rip+FFFBB22D]
	mov	rax,[rax+30h]
	cmp	rax,rdx
	jnz	470401h

l00000000004703CC:
	mov	ebp,20h
	jmp	47035Ah
00000000004703D3          48 83 EA 01 48 89 C1 75 65 E8 5F 54 00    H...H..ue._T.
00000000004703E0 00 48 8B 03 48 03 58 E8 83 4B 20 01 F6 43 1C 01 .H..H.X..K ..C..
00000000004703F0 74 4A E8 69 5C 00 00                            tJ.i\..        

l00000000004703F7:
	call	470820h

l00000000004703FC:
	call	470820h

l0000000000470401:
	mov	edx,20h
	mov	rcx,rbp
	call	rax
	mov	ebp,eax
	jmp	47035Ah

l0000000000470412:
	mov	edx,20h
	mov	rcx,r14
	call	rax
	mov	r14d,eax
	jmp	47031Ch
0000000000470424             48 89 C3 E8 44 56 00 00 4C 89 E9 E8     H...DV..L...
0000000000470430 FC E9 FD FF 48 89 D9 E8 74 11 FA FF E8 1F 5C 00 ....H...t.....\.
0000000000470440 00 E8 FA 53 00 00 48 8B 03 48 89 DE 48 03 70 E8 ...S..H..H..H.p.
0000000000470450 83 4E 20 01 F6 46 1C 01 75 0A E8 11 56 00 00 E9 .N ..F..u...V...
0000000000470460 89 FC FF FF E8 F7 5B 00 00 48 89 C3 EB BE 48 89 ......[..H....H.
0000000000470470 C3 E8 FA 55 00 00 EB B4 90 90 90 90 90 90 90 90 ...U............

;; fn0000000000470480: 0000000000470480
;;   Called from:
;;     0000000000473B32 (in fn0000000000473B10)
;;     0000000000473C0B (in fn0000000000473B60)
;;     0000000000473CE4 (in fn0000000000473CD0)
;;     0000000000473E48 (in fn0000000000473E10)
;;     0000000000473E67 (in fn0000000000473E60)
fn0000000000470480 proc
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,48h
	lea	r13,[rsp+30h]
	mov	rbx,rcx
	mov	r14,rdx
	mov	rdx,rcx
	mov	r12,r8
	mov	rcx,r13
	call	45DD70h
	cmp	byte ptr [rsp+30h],0h
	jz	4704F2h

l00000000004704B0:
	mov	rax,[rbx]
	mov	rdx,[rax-18h]
	lea	rbp,[rbx+rdx]
	mov	rsi,[rbp+10h]
	cmp	rsi,r12
	jle	470540h

l00000000004704C4:
	mov	eax,[rbp+18h]
	mov	rcx,rbp
	and	eax,0B0h
	cmp	eax,20h
	setz	r15b
	test	r15b,r15b
	jz	470640h

l00000000004704DF:
	mov	edx,[rcx+20h]
	test	edx,edx
	jz	470580h

l00000000004704EA:
	mov	qword ptr [rcx+10h],+0h

l00000000004704F2:
	mov	rax,[rsp+38h]
	mov	rdx,[rax]
	add	rax,[rdx-18h]
	test	byte ptr [rax+19h],20h
	mov	rsi,rax
	jz	47052Bh

l0000000000470507:
	call	470A80h
	test	al,al
	jnz	47052Bh

l0000000000470510:
	mov	rcx,[rsi+0E8h]
	test	rcx,rcx
	jz	47052Bh

l000000000047051C:
	mov	rax,[rcx]
	call	qword ptr [rax+30h]
	cmp	eax,0FFh
	jz	4706B2h

l000000000047052B:
	mov	rax,rbx
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
000000000047053F                                              90                .

l0000000000470540:
	mov	rcx,[rbp+0E8h]
	mov	r8,r12
	mov	rdx,r14
	mov	rax,[rcx]
	call	qword ptr [rax+60h]
	cmp	r12,rax
	mov	rcx,rbx
	mov	rax,[rbx]
	jz	470573h

l000000000047055E:
	add	rcx,[rax-18h]
	mov	edx,[rcx+20h]
	or	edx,1h
	call	46EB40h

l000000000047056D:
	mov	rax,[rbx]

l0000000000470570:
	mov	rcx,rbx

l0000000000470573:
	add	rcx,[rax-18h]
	jmp	4704EAh
000000000047057C                                     0F 1F 40 00             ..@.

l0000000000470580:
	mov	rcx,[rcx+0E8h]
	mov	r8,r12
	mov	rdx,r14
	mov	rax,[rcx]
	call	qword ptr [rax+60h]
	cmp	r12,rax
	jz	4705ADh

l0000000000470598:
	mov	rax,[rbx]
	mov	rcx,rbx
	add	rcx,[rax-18h]
	mov	edx,[rcx+20h]
	or	edx,1h
	call	46EB40h

l00000000004705AD:
	test	r15b,r15b
	jz	47056Dh

l00000000004705B2:
	mov	rax,[rbx]
	mov	rdx,[rax-18h]
	lea	rdi,[rbx+rdx]
	mov	eax,[rdi+20h]
	mov	rcx,rdi
	test	eax,eax
	jnz	4704EAh

l00000000004705CB:
	sub	rsi,r12
	cmp	byte ptr [rdi+0E2h],0h
	jz	470720h

l00000000004705DB:
	mov	rcx,rdi
	movzx	edi,word ptr [rdi+0E0h]

l00000000004705E5:
	test	rsi,rsi
	jle	4704EAh

l00000000004705EE:
	movzx	ebp,di
	jmp	47061Ch

l00000000004705F3:
	mov	[r8],di
	add	r8,2h
	mov	eax,edi
	mov	[rcx+28h],r8

l0000000000470601:
	cmp	ax,0FFh
	mov	rax,[rbx]
	jz	4706D0h

l000000000047060E:
	sub	rsi,1h
	jz	470570h

l0000000000470618:
	mov	rdx,[rax-18h]

l000000000047061C:
	mov	rcx,[rbx+rdx+0E8h]
	mov	r8,[rcx+28h]
	cmp	r8,[rcx+30h]
	jc	4705F3h

l000000000047062E:
	mov	rax,[rcx]
	mov	edx,ebp
	call	qword ptr [rax+68h]
	jmp	470601h
0000000000470638                         0F 1F 84 00 00 00 00 00         ........

l0000000000470640:
	mov	rdi,rsi
	sub	rdi,r12
	cmp	byte ptr [rbp+0E2h],0h
	jz	470760h

l0000000000470653:
	movzx	ebp,word ptr [rbp+0E0h]

l000000000047065A:
	test	rdi,rdi
	jle	4704DFh

l0000000000470663:
	movzx	eax,bp
	mov	[rsp+2Ch],eax
	jmp	470694h
000000000047066C                                     0F 1F 40 00             ..@.

l0000000000470670:
	mov	[rax],bp
	add	rax,2h
	mov	[rcx+28h],rax
	mov	eax,ebp

l000000000047067D:
	cmp	ax,0FFh
	mov	rax,[rbx]
	jz	4706F0h

l0000000000470686:
	sub	rdi,1h
	jz	470711h

l0000000000470690:
	mov	rdx,[rax-18h]

l0000000000470694:
	mov	rcx,[rbx+rdx+0E8h]
	mov	rax,[rcx+28h]
	cmp	rax,[rcx+30h]
	jc	470670h

l00000000004706A6:
	mov	rax,[rcx]
	mov	edx,[rsp+2Ch]
	call	qword ptr [rax+68h]
	jmp	47067Dh

l00000000004706B2:
	mov	rcx,[rsp+38h]
	mov	rax,[rcx]
	add	rcx,[rax-18h]
	mov	edx,[rcx+20h]
	or	edx,1h
	call	46EB40h
	jmp	47052Bh
00000000004706CE                                           66 90               f.

l00000000004706D0:
	mov	rcx,rbx
	add	rcx,[rax-18h]
	mov	edx,[rcx+20h]
	or	edx,1h
	call	46EB40h
	jmp	47056Dh
00000000004706E7                      66 0F 1F 84 00 00 00 00 00        f........

l00000000004706F0:
	mov	rcx,rbx
	add	rcx,[rax-18h]
	mov	edx,[rcx+20h]
	or	edx,1h
	call	46EB40h
	mov	rax,[rbx]
	mov	rcx,rbx
	add	rcx,[rax-18h]
	jmp	4704DFh

l0000000000470711:
	mov	rcx,rbx
	add	rcx,[rax-18h]
	jmp	4704DFh
000000000047071D                                        0F 1F 00              ...

l0000000000470720:
	mov	rcx,[rdi+0F0h]
	test	rcx,rcx
	jz	4707BBh

l0000000000470730:
	mov	rax,[rcx]
	mov	edx,20h
	call	qword ptr [rax+50h]
	mov	rdx,[rbx]
	mov	[rdi+0E0h],ax
	mov	byte ptr [rdi+0E2h],1h
	mov	edi,eax
	mov	rdx,[rdx-18h]
	lea	rcx,[rbx+rdx]
	jmp	4705E5h
000000000047075B                                  0F 1F 44 00 00            ..D..

l0000000000470760:
	mov	rcx,[rbp+0F0h]
	test	rcx,rcx
	jz	4707C0h

l000000000047076C:
	mov	rax,[rcx]
	mov	edx,20h
	call	qword ptr [rax+50h]
	mov	rdx,[rbx]
	mov	[rbp+0E0h],ax
	mov	byte ptr [rbp+0E2h],1h
	mov	ebp,eax
	mov	rdx,[rdx-18h]
	lea	rcx,[rbx+rdx]
	jmp	47065Ah
0000000000470797                      48 83 EA 01 48 89 C1 75 42        H...H..uB
00000000004707A0 E8 9B 50 00 00 48 8B 03 48 03 58 E8 83 4B 20 01 ..P..H..H.X..K .
00000000004707B0 F6 43 1C 01 74 27 E8 A5 58 00 00                .C..t'..X..    

l00000000004707BB:
	call	470820h

l00000000004707C0:
	call	470820h
	mov	rbx,rax
	call	475A70h

l00000000004707CD:
	mov	rcx,r13
	call	45DE50h
	mov	rcx,rbx
	call	4115B0h
	call	476060h
	call	475840h
	mov	rax,[rbx]
	mov	rsi,rbx
	add	rsi,[rax-18h]
	or	dword ptr [rsi+20h],1h
	test	byte ptr [rsi+1Ch],1h
	jnz	470805h

l00000000004707FB:
	call	475A70h
	jmp	4704F2h

l0000000000470805:
	call	476060h
	mov	rbx,rax
	jmp	4707CDh
000000000047080F                                              48                H
0000000000470810 89 C3 E8 59 52 00 00 EB B4 90 90 90 90 90 90 90 ...YR...........

;; fn0000000000470820: 0000000000470820
;;   Called from:
;;     000000000044229D (in fn0000000000442220)
;;     000000000044232D (in fn00000000004422D0)
;;     00000000004423B4 (in fn0000000000442340)
;;     000000000044248E (in fn0000000000442440)
;;     00000000004424E1 (in fn00000000004424C0)
;;     0000000000442515 (in fn00000000004424F0)
;;     000000000044B4DF (in fn000000000044B410)
;;     000000000044B62F (in fn000000000044B560)
;;     000000000044B77F (in fn000000000044B6B0)
;;     000000000044B8CF (in fn000000000044B800)
;;     000000000044BA1F (in fn000000000044B950)
;;     000000000044BB6F (in fn000000000044BAA0)
;;     000000000044BCBF (in fn000000000044BBF0)
;;     000000000044BE0F (in fn000000000044BD40)
;;     000000000044BF5F (in fn000000000044BE90)
;;     000000000044C0AF (in fn000000000044BFE0)
;;     000000000044C1FF (in fn000000000044C130)
;;     000000000044C300 (in fn000000000044C280)
;;     000000000044C561 (in fn000000000044C4F0)
;;     000000000044D8B7 (in fn000000000044D740)
;;     000000000044DA37 (in fn000000000044D8C0)
;;     000000000044DAC0 (in fn000000000044DA40)
;;     000000000044E4CF (in fn000000000044E3F0)
;;     000000000044E69A (in fn000000000044E580)
;;     000000000044F0D8 (in fn000000000044EF40)
;;     000000000044F101 (in fn000000000044EF40)
;;     000000000044F30F (in fn000000000044F160)
;;     000000000044F338 (in fn000000000044F160)
;;     000000000044F53F (in fn000000000044F3A0)
;;     000000000044F568 (in fn000000000044F3A0)
;;     000000000044F774 (in fn000000000044F5D0)
;;     000000000044F79D (in fn000000000044F5D0)
;;     000000000044F998 (in fn000000000044F800)
;;     000000000044F9C1 (in fn000000000044F800)
;;     000000000044FBB8 (in fn000000000044FA20)
;;     000000000044FBE1 (in fn000000000044FA20)
;;     000000000044FDD8 (in fn000000000044FC40)
;;     000000000044FE01 (in fn000000000044FC40)
;;     000000000044FFF8 (in fn000000000044FE60)
;;     0000000000450021 (in fn000000000044FE60)
;;     0000000000455747 (in fn0000000000455600)
;;     00000000004558AF (in fn0000000000455750)
;;     0000000000455DA4 (in fn0000000000455BB0)
;;     000000000045609A (in fn0000000000455E10)
;;     00000000004561D1 (in fn00000000004560A0)
;;     0000000000456933 (in fn00000000004568A0)
;;     0000000000456E0E (in fn0000000000456940)
;;     0000000000457488 (in fn0000000000457340)
;;     00000000004575EF (in fn0000000000457490)
;;     0000000000457AF4 (in fn0000000000457900)
;;     0000000000457DDB (in fn0000000000457B60)
;;     0000000000457F31 (in fn0000000000457DF0)
;;     00000000004586C3 (in fn0000000000458630)
;;     0000000000458BD3 (in fn00000000004586D0)
;;     000000000045A5A0 (in fn000000000045A4D0)
;;     000000000045A6F0 (in fn000000000045A620)
;;     000000000045A840 (in fn000000000045A770)
;;     000000000045A990 (in fn000000000045A8C0)
;;     000000000045AAE0 (in fn000000000045AA10)
;;     000000000045AC30 (in fn000000000045AB60)
;;     000000000045AD80 (in fn000000000045ACB0)
;;     000000000045AED0 (in fn000000000045AE00)
;;     000000000045B020 (in fn000000000045AF50)
;;     000000000045B170 (in fn000000000045B0A0)
;;     000000000045B2C0 (in fn000000000045B1F0)
;;     000000000045B38A (in fn000000000045B340)
;;     000000000045B570 (in fn000000000045B530)
;;     000000000045C8BE (in fn000000000045C740)
;;     000000000045CA4E (in fn000000000045C8D0)
;;     000000000045CAAA (in fn000000000045CA60)
;;     000000000045D4DF (in fn000000000045D400)
;;     000000000045D6AC (in fn000000000045D590)
;;     000000000045E0B9 (in fn000000000045DF60)
;;     000000000045E0E2 (in fn000000000045DF60)
;;     000000000045E299 (in fn000000000045E140)
;;     000000000045E2C2 (in fn000000000045E140)
;;     000000000045E46D (in fn000000000045E320)
;;     000000000045E496 (in fn000000000045E320)
;;     000000000045E65A (in fn000000000045E4F0)
;;     000000000045E683 (in fn000000000045E4F0)
;;     000000000045E839 (in fn000000000045E6E0)
;;     000000000045E862 (in fn000000000045E6E0)
;;     000000000045EA19 (in fn000000000045E8C0)
;;     000000000045EA42 (in fn000000000045E8C0)
;;     000000000045EBF9 (in fn000000000045EAA0)
;;     000000000045EC22 (in fn000000000045EAA0)
;;     000000000045EDD9 (in fn000000000045EC80)
;;     000000000045EE02 (in fn000000000045EC80)
;;     000000000046E2FD (in fn000000000046E270)
;;     000000000046E6FF (in fn000000000046E490)
;;     000000000046EACC (in fn000000000046EA70)
;;     000000000046EE6C (in fn000000000046EC60)
;;     00000000004703F7 (in fn0000000000470070)
;;     00000000004703FC (in fn0000000000470070)
;;     00000000004707BB (in fn0000000000470480)
;;     00000000004707C0 (in fn0000000000470480)
;;     0000000000471AAA (in fn0000000000471A40)
;;     0000000000471AEF (in fn0000000000471AB0)
;;     0000000000471C11 (in fn0000000000471BA0)
;;     0000000000471F80 (in fn0000000000471F40)
;;     0000000000472DCB (in fn0000000000472D80)
;;     0000000000472E2B (in fn0000000000472DE0)
;;     0000000000472E8B (in fn0000000000472E40)
;;     0000000000472EEB (in fn0000000000472EA0)
;;     0000000000472F4B (in fn0000000000472F00)
;;     0000000000472FAB (in fn0000000000472F60)
;;     000000000047300B (in fn0000000000472FC0)
;;     000000000047306B (in fn0000000000473020)
;;     00000000004730CB (in fn0000000000473080)
;;     000000000047312B (in fn00000000004730E0)
;;     000000000047318B (in fn0000000000473140)
;;     00000000004731EB (in fn00000000004731A0)
;;     000000000047324B (in fn0000000000473200)
;;     00000000004732AB (in fn0000000000473260)
;;     000000000047330B (in fn00000000004732C0)
;;     000000000047336B (in fn0000000000473320)
;;     00000000004733CB (in fn0000000000473380)
;;     000000000047342B (in fn00000000004733E0)
;;     000000000047348B (in fn0000000000473440)
;;     00000000004734EB (in fn00000000004734A0)
;;     000000000047354B (in fn0000000000473500)
;;     00000000004735AB (in fn0000000000473560)
;;     000000000047360B (in fn00000000004735C0)
;;     000000000047366B (in fn0000000000473620)
;;     00000000004736CB (in fn0000000000473680)
;;     000000000047372B (in fn00000000004736E0)
;;     000000000047378B (in fn0000000000473740)
;;     00000000004737EB (in fn00000000004737A0)
;;     0000000000473AF8 (in fn0000000000473A80)
;;     0000000000473C3A (in fn0000000000473B60)
;;     0000000000473E01 (in fn0000000000473DB0)
;;     0000000000473E53 (in fn0000000000473E10)
;;     0000000000474708 (in fn0000000000474690)
;;     0000000000474EF1 (in fn0000000000474EA0)
fn0000000000470820 proc
	sub	rsp,28h
	mov	ecx,8h
	call	4756E0h
	mov	rcx,[0000000000491DA0]                                 ; [rip+0002156B]
	lea	r8,[000000000046C430]                                  ; [rip-0000440C]
	lea	rdx,[rcx+10h]
	mov	rcx,rax
	mov	[rax],rdx
	lea	rdx,[0000000000493E00]                                 ; [rip+000235B3]
	call	4760B0h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop

;; fn0000000000470860: 0000000000470860
;;   Called from:
;;     000000000047085F (in fn0000000000470820)
;;     0000000000470F9C (in fn0000000000470F80)
fn0000000000470860 proc
	lea	rax,[000000000048AA80]                                 ; [rip+0001A219]
	ret
0000000000470868                         90 90 90 90 90 90 90 90         ........

;; fn0000000000470870: 0000000000470870
fn0000000000470870 proc
	sub	rsp,38h
	lea	r8,[rsp+2Fh]
	call	471040h
	add	rsp,38h
	ret
0000000000470883          90 90 90 90 90 90 90 90 90 90 90 90 90    .............

;; fn0000000000470890: 0000000000470890
fn0000000000470890 proc
	sub	rsp,38h
	lea	r8,[rsp+2Fh]
	call	471150h
	add	rsp,38h
	ret
00000000004708A3          90 90 90 90 90 90 90 90 90 90 90 90 90    .............

;; fn00000000004708B0: 00000000004708B0
;;   Called from:
;;     0000000000424A28 (in fn0000000000424A00)
;;     0000000000424B78 (in fn0000000000424B50)
fn00000000004708B0 proc
	sub	rsp,28h
	mov	ecx,8h
	call	4756E0h
	mov	rcx,[0000000000491E10]                                 ; [rip+0002154B]
	lea	r8,[000000000046E160]                                  ; [rip-0000276C]
	lea	rdx,[rcx+10h]
	mov	rcx,rax
	mov	[rax],rdx
	lea	rdx,[0000000000493FC0]                                 ; [rip+000236E3]
	call	4760B0h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop

;; fn00000000004708F0: 00000000004708F0
;;   Called from:
;;     000000000042D030 (in fn000000000042CD70)
;;     000000000042D9DC (in fn000000000042D710)
;;     000000000042E390 (in fn000000000042E0D0)
;;     000000000042ED3C (in fn000000000042EA70)
;;     000000000042F713 (in fn000000000042F430)
;;     00000000004300FF (in fn000000000042FE30)
;;     00000000004309C4 (in fn0000000000430800)
;;     0000000000432A39 (in fn0000000000432750)
;;     0000000000433374 (in fn0000000000433080)
;;     0000000000433CA9 (in fn00000000004339C0)
;;     00000000004346A9 (in fn00000000004343C0)
;;     000000000043510F (in fn0000000000434E00)
;;     0000000000435AA8 (in fn00000000004357A0)
;;     00000000004363F1 (in fn0000000000436210)
;;     0000000000442B3E (in fn0000000000442560)
;;     000000000044395E (in fn0000000000443380)
;;     0000000000444B14 (in fn0000000000444610)
;;     0000000000445A44 (in fn0000000000445540)
;;     00000000004708EF (in fn00000000004708B0)
fn00000000004708F0 proc
	mov	r10,[r8]
	sub	rdx,1h
	mov	rax,[r10-18h]
	lea	r8,[rax-1h]
	cmp	rdx,r8
	cmova	rdx,r8

l0000000000470906:
	test	rdx,rdx
	jz	470963h

l000000000047090B:
	xor	r9d,r9d
	jmp	470914h

l0000000000470910:
	test	al,al
	jz	47092Dh

l0000000000470914:
	movzx	eax,byte ptr [rcx+r9]
	cmp	[r10+r8],al
	setz	al
	add	r9,1h
	sub	r8,1h
	cmp	r9,rdx
	jc	470910h

l000000000047092D:
	test	r8,r8
	movzx	edx,byte ptr [rcx+rdx]
	jnz	47094Dh

l0000000000470936:
	jmp	470951h
0000000000470938                         0F 1F 84 00 00 00 00 00         ........

l0000000000470940:
	cmp	[r10+r8],dl
	setz	al
	sub	r8,1h
	jz	470951h

l000000000047094D:
	test	al,al
	jnz	470940h

l0000000000470951:
	lea	ecx,[rdx-1h]
	cmp	cl,7Dh
	ja	470961h

l0000000000470959:
	cmp	[r10],dl
	setle	dl
	and	eax,edx

l0000000000470961:
	ret

l0000000000470963:
	mov	eax,1h
	jmp	47092Dh
000000000047096A                               90 90 90 90 90 90           ......

;; fn0000000000470970: 0000000000470970
fn0000000000470970 proc
	push	rbx
	sub	rsp,20h
	mov	rbx,rcx
	call	475C50h
	mov	rdx,[rax]
	test	rdx,rdx
	jz	47099Ch

l0000000000470985:
	mov	rax,[rdx+50h]
	mov	r8,0B8B1AABCBCD4D500h
	add	r8,rax
	cmp	r8,1h
	jbe	4709B0h

l000000000047099C:
	mov	qword ptr [rbx],+0h

l00000000004709A3:
	mov	rax,rbx
	add	rsp,20h
	pop	rbx
	ret
00000000004709AC                                     0F 1F 40 00             ..@.

l00000000004709B0:
	test	al,1h
	jnz	4709D0h

l00000000004709B4:
	add	rdx,+90h
	mov	[rbx],rdx

l00000000004709BE:
	lock
	add	dword ptr [rdx-0A0h],1h
	mov	rax,rbx
	add	rsp,20h
	pop	rbx
	ret
00000000004709CF                                              90                .

l00000000004709D0:
	mov	rdx,[rdx]
	test	rdx,rdx
	mov	[rbx],rdx
	jnz	4709BEh

l00000000004709DB:
	jmp	4709A3h
00000000004709DD                                        90 90 90              ...

;; fn00000000004709E0: 00000000004709E0
fn00000000004709E0 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	mov	rsi,[rcx]
	call	475620h
	mov	rbx,rax
	mov	[rax],rsi
	lock
	add	dword ptr [rsi-0A0h],1h
	call	46FE70h
	mov	[rbx+10h],rax
	add	rbx,50h
	call	46F760h
	mov	[rbx-38h],rax
	mov	rax,474E5543432B2B01h
	mov	[rbx],rax
	lea	rax,[0000000000423A70]                                 ; [rip+FFFB304A]
	mov	[rbx+8h],rax
	mov	rcx,rbx
	call	411550h
	mov	rcx,rbx
	call	475840h
	call	472D60h
	nop

;; fn0000000000470A40: 0000000000470A40
;;   Called from:
;;     0000000000470A3F (in fn00000000004709E0)
fn0000000000470A40 proc
	sub	rsp,28h
	mov	ecx,8h
	call	4756E0h
	mov	rcx,[0000000000491B70]                                 ; [rip+0002111B]
	lea	r8,[0000000000452720]                                  ; [rip+FFFE1CC4]
	lea	rdx,[rcx+10h]
	mov	rcx,rax
	mov	[rax],rdx
	lea	rdx,[00000000004932A0]                                 ; [rip+00022833]
	call	4760B0h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop

;; fn0000000000470A80: 0000000000470A80
;;   Called from:
;;     000000000044E7A9 (in fn000000000044E750)
;;     000000000044EC82 (in fn000000000044EC10)
;;     000000000044EE4D (in fn000000000044EE30)
;;     000000000044EEAD (in fn000000000044EE90)
;;     000000000044F043 (in fn000000000044EF40)
;;     000000000044F269 (in fn000000000044F160)
;;     000000000044F4A8 (in fn000000000044F3A0)
;;     000000000044F6E2 (in fn000000000044F5D0)
;;     000000000044F903 (in fn000000000044F800)
;;     000000000044FB23 (in fn000000000044FA20)
;;     000000000044FD43 (in fn000000000044FC40)
;;     000000000044FF63 (in fn000000000044FE60)
;;     0000000000450374 (in fn0000000000450310)
;;     000000000045D7CA (in fn000000000045D760)
;;     000000000045DCA2 (in fn000000000045DC30)
;;     000000000045DE6D (in fn000000000045DE50)
;;     000000000045DECD (in fn000000000045DEB0)
;;     000000000045E02B (in fn000000000045DF60)
;;     000000000045E20C (in fn000000000045E140)
;;     000000000045E3EE (in fn000000000045E320)
;;     000000000045E5CA (in fn000000000045E4F0)
;;     000000000045E7AB (in fn000000000045E6E0)
;;     000000000045E98B (in fn000000000045E8C0)
;;     000000000045EB6B (in fn000000000045EAA0)
;;     000000000045ED4B (in fn000000000045EC80)
;;     000000000045F154 (in fn000000000045F0F0)
;;     0000000000470102 (in fn0000000000470070)
;;     0000000000470507 (in fn0000000000470480)
;;     0000000000470A7F (in fn0000000000470A40)
fn0000000000470A80 proc
	sub	rsp,28h
	call	475C50h
	mov	eax,[rax+8h]
	test	eax,eax
	setnz	al
	add	rsp,28h
	ret
0000000000470A96                   90 90 90 90 90 90 90 90 90 90       ..........

;; fn0000000000470AA0: 0000000000470AA0
;;   Called from:
;;     00000000004713EA (in fn00000000004713C0)
fn0000000000470AA0 proc
	push	rbp
	mov	rbp,rsp
	sub	rsp,30h
	mov	[rbp+10h],rcx
	mov	[rbp+18h],rdx
	mov	[rbp+20h],r8
	mov	byte ptr [rbp-1h],1h
	mov	rdx,[rbp+20h]
	mov	rax,[rbp+18h]
	mov	r8,rdx
	mov	rdx,rax
	mov	rcx,[rbp+10h]
	call	468850h
	add	rsp,30h
	pop	rbp
	ret
0000000000470AD5                90 90 90 90 90 90 90 90 90 90 90      ...........

;; fn0000000000470AE0: 0000000000470AE0
;;   Called from:
;;     000000000047142A (in fn0000000000471400)
fn0000000000470AE0 proc
	push	rbp
	mov	rbp,rsp
	sub	rsp,30h
	mov	[rbp+10h],rcx
	mov	[rbp+18h],rdx
	mov	[rbp+20h],r8
	mov	byte ptr [rbp-1h],0h
	mov	rdx,[rbp+20h]
	mov	rax,[rbp+18h]
	mov	r8,rdx
	mov	rdx,rax
	mov	rcx,[rbp+10h]
	call	4687A0h
	add	rsp,30h
	pop	rbp
	ret
0000000000470B15                90 90 90 90 90 90 90 90 90 90 90      ...........

;; fn0000000000470B20: 0000000000470B20
;;   Called from:
;;     00000000004558AA (in fn0000000000455750)
;;     0000000000456084 (in fn0000000000455E10)
;;     0000000000456CF5 (in fn0000000000456940)
;;     0000000000456D5C (in fn0000000000456940)
;;     0000000000456DC7 (in fn0000000000456940)
;;     0000000000456E09 (in fn0000000000456940)
;;     00000000004575EA (in fn0000000000457490)
;;     0000000000457DD6 (in fn0000000000457B60)
;;     0000000000458A95 (in fn00000000004586D0)
;;     0000000000458AFC (in fn00000000004586D0)
;;     0000000000458B87 (in fn00000000004586D0)
;;     0000000000458BCE (in fn00000000004586D0)
;;     000000000046C571 (in fn000000000046C440)
;;     000000000046C5C2 (in fn000000000046C440)
;;     000000000046E39C (in fn000000000046E370)
;;     000000000046EB6C (in fn000000000046EB40)
fn0000000000470B20 proc
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,40h
	mov	rdi,rcx
	lea	rsi,[rsp+30h]
	mov	ecx,10h
	call	4756E0h
	lea	r8,[rsp+2Eh]
	mov	rdx,rdi
	mov	rcx,rsi
	mov	rbx,rax
	call	451EA0h
	mov	rdx,rsi
	mov	rcx,rbx
	call	46D260h
	mov	rax,[rsp+30h]
	lea	rdx,[rsp+2Fh]
	lea	rcx,[rax-18h]
	call	450A60h
	lea	r8,[000000000046D2D0]                                  ; [rip-000038A1]
	lea	rdx,[00000000004931C0]                                 ; [rip+00022648]
	mov	rcx,rbx
	call	4760B0h
	mov	rsi,rax
	mov	rcx,rbx
	call	475BA0h
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
	nop
	nop
	nop
	nop

;; fn0000000000470BA0: 0000000000470BA0
;;   Called from:
;;     000000000042604F (in fn0000000000425EE0)
;;     0000000000448FAC (in fn0000000000448F90)
;;     000000000044902C (in fn0000000000449010)
;;     00000000004490AC (in fn0000000000449090)
;;     00000000004506AB (in fn0000000000450690)
;;     000000000045072B (in fn0000000000450710)
;;     00000000004507AB (in fn0000000000450790)
;;     0000000000470B9F (in fn0000000000470B20)
fn0000000000470BA0 proc
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,40h
	mov	rdi,rcx
	lea	rsi,[rsp+30h]
	mov	ecx,10h
	call	4756E0h
	lea	r8,[rsp+2Eh]
	mov	rdx,rdi
	mov	rcx,rsi
	mov	rbx,rax
	call	451EA0h
	mov	rdx,rsi
	mov	rcx,rbx
	call	454770h
	mov	rax,[rsp+30h]
	lea	rdx,[rsp+2Fh]
	lea	rcx,[rax-18h]
	call	450A60h
	lea	r8,[00000000004547D0]                                  ; [rip+FFFE3BDF]
	lea	rdx,[0000000000493420]                                 ; [rip+00022828]
	mov	rcx,rbx
	call	4760B0h
	mov	rsi,rax

l0000000000470C03:
	mov	rcx,rbx
	call	475BA0h
	mov	rcx,rsi
	call	4115B0h
	mov	rsi,rax
	mov	rax,[rsp+30h]
	lea	rdx,[rsp+2Fh]
	lea	rcx,[rax-18h]
	call	450A60h
	jmp	470C03h
0000000000470C2B                                  90 90 90 90 90            .....

;; fn0000000000470C30: 0000000000470C30
fn0000000000470C30 proc
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,40h
	mov	rdi,rcx
	lea	rsi,[rsp+30h]
	mov	ecx,10h
	call	4756E0h
	lea	r8,[rsp+2Eh]
	mov	rdx,rdi
	mov	rcx,rsi
	mov	rbx,rax
	call	451EA0h
	mov	rdx,rsi
	mov	rcx,rbx
	call	454820h
	mov	rax,[rsp+30h]
	lea	rdx,[rsp+2Fh]
	lea	rcx,[rax-18h]
	call	450A60h
	lea	r8,[0000000000454870]                                  ; [rip+FFFE3BEF]
	lea	rdx,[0000000000493440]                                 ; [rip+000227B8]
	mov	rcx,rbx
	call	4760B0h
	mov	rsi,rax

l0000000000470C93:
	mov	rcx,rbx
	call	475BA0h
	mov	rcx,rsi
	call	4115B0h
	mov	rsi,rax
	mov	rax,[rsp+30h]
	lea	rdx,[rsp+2Fh]
	lea	rcx,[rax-18h]
	call	450A60h
	jmp	470C93h
0000000000470CBB                                  90 90 90 90 90            .....

;; fn0000000000470CC0: 0000000000470CC0
fn0000000000470CC0 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	mov	esi,ecx
	mov	ecx,18h
	call	4756E0h
	mov	edx,esi
	mov	rcx,rax
	mov	rbx,rax
	call	454880h
	lea	r8,[0000000000454940]                                  ; [rip+FFFE3C5A]
	lea	rdx,[0000000000493460]                                 ; [rip+00022773]
	mov	rcx,rbx
	call	4760B0h
	mov	rsi,rax
	mov	rcx,rbx
	call	475BA0h
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

;; fn0000000000470D10: 0000000000470D10
;;   Called from:
;;     0000000000470D0F (in fn0000000000470CC0)
fn0000000000470D10 proc
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,40h
	mov	rdi,rcx
	lea	rsi,[rsp+30h]
	mov	ecx,10h
	call	4756E0h
	lea	r8,[rsp+2Eh]
	mov	rdx,rdi
	mov	rcx,rsi
	mov	rbx,rax
	call	451EA0h
	mov	rdx,rsi
	mov	rcx,rbx
	call	455250h
	mov	rax,[rsp+30h]
	lea	rdx,[rsp+2Fh]
	lea	rcx,[rax-18h]
	call	450A60h
	lea	r8,[00000000004552A0]                                  ; [rip+FFFE453F]
	lea	rdx,[00000000004934D0]                                 ; [rip+00022768]
	mov	rcx,rbx
	call	4760B0h
	mov	rsi,rax

l0000000000470D73:
	mov	rcx,rbx
	call	475BA0h
	mov	rcx,rsi
	call	4115B0h
	mov	rsi,rax
	mov	rax,[rsp+30h]
	lea	rdx,[rsp+2Fh]
	lea	rcx,[rax-18h]
	call	450A60h
	jmp	470D73h
0000000000470D9B                                  90 90 90 90 90            .....

;; fn0000000000470DA0: 0000000000470DA0
fn0000000000470DA0 proc
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,48h
	mov	ebp,ecx
	lea	rsi,[rsp+30h]
	mov	ecx,20h
	call	4756E0h
	mov	rbx,rax
	call	46FF00h
	lea	r8,[rsp+2Fh]
	lea	rdx,[000000000048D790]                                 ; [rip+0001C9C3]
	mov	rcx,rsi
	mov	rdi,rax
	call	451EA0h
	mov	rdx,rsi
	mov	rcx,rbx
	call	454770h
	mov	r8,[rsp+30h]
	mov	eax,0FFFFFFFFh
	lock
	xadd	[r8-8h],eax
	test	eax,eax
	jle	470E22h

l0000000000470DF7:
	mov	rax,[0000000000491BC0]                                 ; [rip+00020DC2]
	lea	r8,[00000000004552E0]                                  ; [rip+FFFE44DB]
	mov	rcx,rbx
	mov	[rbx+10h],ebp
	mov	[rbx+18h],rdi
	lea	rdx,[rax+10h]
	mov	[rbx],rdx
	lea	rdx,[00000000004934F0]                                 ; [rip+000226D3]
	call	4760B0h

l0000000000470E22:
	lea	rdx,[rsp+2Eh]
	lea	rcx,[r8-18h]
	call	450A50h
	jmp	470DF7h
0000000000470E32       48 89 C6 48 89 D9 E8 63 4D 00 00 48 89 F1   H..H...cM..H..
0000000000470E40 E8 6B 07 FA FF 48 89 C6 48 8B 44 24 30 48 8D 54 .k...H..H.D$0H.T
0000000000470E50 24 2E 48 8D 48 E8 E8 05 FC FD FF EB D8 90 90 90 $.H.H...........

;; fn0000000000470E60: 0000000000470E60
;;   Called from:
;;     0000000000427505 (in fn00000000004274E0)
;;     0000000000428405 (in fn00000000004283E0)
;;     000000000042BFAA (in fn000000000042BF60)
;;     000000000042C11A (in fn000000000042C0D0)
;;     0000000000449268 (in fn00000000004491E0)
;;     0000000000449511 (in fn0000000000449490)
;;     0000000000449838 (in fn0000000000449760)
;;     0000000000449A8D (in fn00000000004499F0)
;;     0000000000449BED (in fn0000000000449B10)
;;     0000000000449F66 (in fn0000000000449DD0)
;;     000000000044A0CB (in fn000000000044A070)
;;     000000000044A4C6 (in fn000000000044A340)
;;     0000000000450956 (in fn00000000004508E0)
;;     0000000000450BE5 (in fn0000000000450B70)
;;     0000000000450EF3 (in fn0000000000450E20)
;;     000000000045113E (in fn00000000004510A0)
;;     0000000000451281 (in fn00000000004511C0)
;;     00000000004515D3 (in fn0000000000451450)
;;     000000000045173B (in fn00000000004516E0)
;;     0000000000451AD5 (in fn0000000000451960)
;;     000000000046B4E1 (in fn000000000046B4B0)
;;     000000000046B9C1 (in fn000000000046B990)
fn0000000000470E60 proc
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,40h
	mov	rdi,rcx
	lea	rsi,[rsp+30h]
	mov	ecx,10h
	call	4756E0h
	lea	r8,[rsp+2Eh]
	mov	rdx,rdi
	mov	rcx,rsi
	mov	rbx,rax
	call	451EA0h
	mov	rdx,rsi
	mov	rcx,rbx
	call	4552F0h
	mov	rax,[rsp+30h]
	lea	rdx,[rsp+2Fh]
	lea	rcx,[rax-18h]
	call	450A60h
	lea	r8,[0000000000455340]                                  ; [rip+FFFE448F]
	lea	rdx,[0000000000493510]                                 ; [rip+00022658]
	mov	rcx,rbx
	call	4760B0h
	mov	rsi,rax

l0000000000470EC3:
	mov	rcx,rbx
	call	475BA0h
	mov	rcx,rsi
	call	4115B0h
	mov	rsi,rax
	mov	rax,[rsp+30h]
	lea	rdx,[rsp+2Fh]
	lea	rcx,[rax-18h]
	call	450A60h
	jmp	470EC3h
0000000000470EEB                                  90 90 90 90 90            .....

;; fn0000000000470EF0: 0000000000470EF0
fn0000000000470EF0 proc
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,40h
	mov	rdi,rcx
	lea	rsi,[rsp+30h]
	mov	ecx,10h
	call	4756E0h
	lea	r8,[rsp+2Eh]
	mov	rdx,rdi
	mov	rcx,rsi
	mov	rbx,rax
	call	451EA0h
	mov	rdx,rsi
	mov	rcx,rbx
	call	455350h
	mov	rax,[rsp+30h]
	lea	rdx,[rsp+2Fh]
	lea	rcx,[rax-18h]
	call	450A60h
	lea	r8,[00000000004553A0]                                  ; [rip+FFFE445F]
	lea	rdx,[0000000000493530]                                 ; [rip+000225E8]
	mov	rcx,rbx
	call	4760B0h
	mov	rsi,rax

l0000000000470F53:
	mov	rcx,rbx
	call	475BA0h
	mov	rcx,rsi
	call	4115B0h
	mov	rsi,rax
	mov	rax,[rsp+30h]
	lea	rdx,[rsp+2Fh]
	lea	rcx,[rax-18h]
	call	450A60h
	jmp	470F53h
0000000000470F7B                                  90 90 90 90 90            .....

;; fn0000000000470F80: 0000000000470F80
fn0000000000470F80 proc
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,48h
	mov	edi,ecx
	mov	ecx,20h
	lea	rbp,[rsp+30h]
	call	4756E0h
	mov	rbx,rax
	call	470860h
	mov	rsi,rax
	mov	rax,[rax]
	mov	r8d,edi
	mov	rdx,rsi
	mov	rcx,rbp
	call	qword ptr [rax+18h]
	mov	rdx,rbp
	mov	rcx,rbx
	call	45F390h
	mov	r9,[rsp+30h]
	mov	eax,0FFFFFFFFh
	lock
	xadd	[r9-8h],eax
	test	eax,eax
	jle	470FFDh

l0000000000470FD2:
	mov	rax,[0000000000491BD0]                                 ; [rip+00020BF7]
	lea	r8,[00000000004553E0]                                  ; [rip+FFFE4400]
	lea	rdx,[0000000000493550]                                 ; [rip+00022569]
	mov	rcx,rbx
	mov	[rbx+10h],edi
	mov	[rbx+18h],rsi
	add	rax,10h
	mov	[rbx],rax
	call	4760B0h

l0000000000470FFD:
	lea	rdx,[rsp+2Fh]
	lea	rcx,[r9-18h]
	call	450A50h
	jmp	470FD2h
