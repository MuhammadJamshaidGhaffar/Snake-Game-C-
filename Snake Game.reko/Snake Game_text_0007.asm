;;; Segment .text (0000000000401000)
000000000047100D                                        48 89 C6              H..
0000000000471010 48 89 D9 E8 88 4B 00 00 48 89 F1 E8 90 05 FA FF H....K..H.......
0000000000471020 48 89 C6 48 8B 44 24 30 48 8D 54 24 2F 48 8D 48 H..H.D$0H.T$/H.H
0000000000471030 E8 E8 2A FA FD FF EB D8 90 90 90 90 90 90 90 90 ..*.............

;; fn0000000000471040: 0000000000471040
;;   Called from:
;;     000000000044E2DF (in fn000000000044E2A0)
;;     0000000000450350 (in fn0000000000450310)
;;     0000000000470879 (in fn0000000000470870)
fn0000000000471040 proc
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,20h
	mov	rdi,rdx
	mov	rdx,[rcx+10h]
	cmp	rdx,[rcx+18h]
	mov	rsi,rcx
	mov	r12,r8
	mov	byte ptr [r8],1h
	jnc	471125h

l0000000000471065:
	movzx	eax,byte ptr [rdx]

l0000000000471068:
	xor	ebp,ebp
	mov	rbx,[rsi+18h]
	jmp	4710A2h

l0000000000471070:
	mov	rax,[rdi]
	mov	r8,rbx
	mov	rcx,rdi
	call	qword ptr [rax+60h]
	add	[rsi+10h],rax
	add	rbp,rax
	cmp	rbx,rax
	jg	471112h

l000000000047108C:
	mov	rax,[rsi]
	mov	rcx,rsi
	call	qword ptr [rax+48h]
	cmp	eax,0FFh
	jz	4710EEh

l000000000047109A:
	mov	rbx,[rsi+18h]

l000000000047109E:
	mov	rdx,[rsi+10h]

l00000000004710A2:
	sub	rbx,rdx
	cmp	rbx,1h
	jg	471070h

l00000000004710AB:
	mov	rdx,[rdi+28h]
	cmp	rdx,[rdi+30h]
	jnc	471100h

l00000000004710B5:
	mov	[rdx],al
	add	qword ptr [rdi+28h],1h

l00000000004710BC:
	mov	rax,[rsi+10h]
	mov	rbx,[rsi+18h]
	add	rbp,1h
	cmp	rax,rbx
	jnc	4710E0h

l00000000004710CD:
	add	rax,1h
	mov	[rsi+10h],rax

l00000000004710D5:
	cmp	rax,rbx
	jnc	47108Ch

l00000000004710DA:
	movzx	eax,byte ptr [rax]
	jmp	47109Eh
00000000004710DF                                              90                .

l00000000004710E0:
	mov	rax,[rsi]
	mov	rcx,rsi
	call	qword ptr [rax+50h]
	cmp	eax,0FFh
	jnz	47113Bh

l00000000004710EE:
	mov	rax,rbp
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
00000000004710FC                                     0F 1F 40 00             ..@.

l0000000000471100:
	mov	r8,[rdi]
	movzx	edx,al
	mov	rcx,rdi
	call	qword ptr [r8+68h]
	cmp	eax,0FFh
	jnz	4710BCh

l0000000000471112:
	mov	rax,rbp
	mov	byte ptr [r12],0h
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret

l0000000000471125:
	mov	rax,[rcx]
	xor	ebp,ebp
	call	qword ptr [rax+48h]
	cmp	eax,0FFh
	jz	4710EEh

l0000000000471132:
	mov	rdx,[rsi+10h]
	jmp	471068h

l000000000047113B:
	mov	rax,[rsi+10h]
	mov	rbx,[rsi+18h]
	jmp	4710D5h
0000000000471145                90 90 90 90 90 90 90 90 90 90 90      ...........

;; fn0000000000471150: 0000000000471150
;;   Called from:
;;     000000000045D2EF (in fn000000000045D2B0)
;;     000000000045F130 (in fn000000000045F0F0)
;;     0000000000470899 (in fn0000000000470890)
fn0000000000471150 proc
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,20h
	mov	rax,[rcx+10h]
	cmp	rax,[rcx+18h]
	mov	rsi,rcx
	mov	rdi,rdx
	mov	r12,r8
	mov	byte ptr [r8],1h
	jnc	47124Bh

l0000000000471175:
	movzx	eax,word ptr [rax]

l0000000000471178:
	xor	ebp,ebp
	cmp	ax,0FFh
	jnz	4711B3h

l0000000000471180:
	jmp	471228h

l0000000000471185:
	mov	rax,[rdi]
	mov	r8,rbx
	mov	rcx,rdi
	call	qword ptr [rax+60h]
	mov	r9,rax
	lea	rax,[rax+rax]
	add	[rsi+10h],rax
	add	rbp,r9
	cmp	rbx,r9
	jg	471223h

l00000000004711A4:
	mov	rax,[rsi]
	mov	rcx,rsi
	call	qword ptr [rax+48h]

l00000000004711AD:
	cmp	ax,0FFh
	jz	471228h

l00000000004711B3:
	mov	rdx,[rsi+10h]
	mov	rbx,[rsi+18h]
	sub	rbx,rdx
	sar	rbx,1h
	cmp	rbx,1h
	jg	471185h

l00000000004711C7:
	mov	rdx,[rdi+28h]
	cmp	rdx,[rdi+30h]
	jnc	471210h

l00000000004711D1:
	mov	[rdx],ax
	add	rdx,2h
	mov	[rdi+28h],rdx

l00000000004711DC:
	add	rbp,1h
	mov	rdx,[rsi+10h]
	cmp	rdx,[rsi+18h]
	jnc	471240h

l00000000004711EA:
	movzx	eax,word ptr [rdx]
	add	rdx,2h
	mov	[rsi+10h],rdx

l00000000004711F5:
	cmp	ax,0FFh
	jz	471228h

l00000000004711FB:
	mov	rax,[rsi+10h]
	cmp	rax,[rsi+18h]
	jnc	4711A4h

l0000000000471205:
	movzx	eax,word ptr [rax]
	jmp	4711ADh
000000000047120A                               66 0F 1F 44 00 00           f..D..

l0000000000471210:
	mov	r8,[rdi]
	movzx	edx,ax
	mov	rcx,rdi
	call	qword ptr [r8+68h]
	cmp	ax,0FFh
	jnz	4711DCh

l0000000000471223:
	mov	byte ptr [r12],0h

l0000000000471228:
	mov	rax,rbp
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
0000000000471236                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l0000000000471240:
	mov	rax,[rsi]
	mov	rcx,rsi
	call	qword ptr [rax+50h]
	jmp	4711F5h

l000000000047124B:
	mov	rax,[rcx]
	call	qword ptr [rax+48h]
	jmp	471178h
0000000000471256                   90 90 90 90 90 90 90 90 90 90       ..........

;; fn0000000000471260: 0000000000471260
fn0000000000471260 proc
	sub	rsp,28h
	mov	ecx,8h
	call	4756E0h
	mov	rcx,[0000000000491BE0]                                 ; [rip+0002096B]
	lea	r8,[0000000000455470]                                  ; [rip+FFFE41F4]
	lea	rdx,[rcx+10h]
	mov	rcx,rax
	mov	[rax],rdx
	lea	rdx,[0000000000493570]                                 ; [rip+000222E3]
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

;; fn00000000004712A0: 00000000004712A0
;;   Called from:
;;     0000000000469427 (in fn0000000000469390)
;;     00000000004697DB (in fn0000000000469790)
;;     000000000046ACBE (in fn000000000046AC90)
;;     000000000047129F (in fn0000000000471260)
fn00000000004712A0 proc
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
	call	45F390h
	mov	rax,[rsp+30h]
	lea	rdx,[rsp+2Fh]
	lea	rcx,[rax-18h]
	call	450A60h
	lea	r8,[000000000045F3F0]                                  ; [rip+FFFEE0FF]
	lea	rdx,[00000000004936B0]                                 ; [rip+000223B8]
	mov	rcx,rbx
	call	4760B0h
	mov	rsi,rax

l0000000000471303:
	mov	rcx,rbx
	call	475BA0h
	mov	rcx,rsi
	call	4115B0h
	mov	rsi,rax
	mov	rax,[rsp+30h]
	lea	rdx,[rsp+2Fh]
	lea	rcx,[rax-18h]
	call	450A60h
	jmp	471303h
000000000047132B                                  90 90 90 90 90            .....

;; fn0000000000471330: 0000000000471330
fn0000000000471330 proc
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
	call	4620C0h
	mov	rax,[rsp+30h]
	lea	rdx,[rsp+2Fh]
	lea	rcx,[rax-18h]
	call	450A60h
	lea	r8,[0000000000462110]                                  ; [rip-0000F271]
	lea	rdx,[0000000000493830]                                 ; [rip+000224A8]
	mov	rcx,rbx
	call	4760B0h
	mov	rsi,rax

l0000000000471393:
	mov	rcx,rbx
	call	475BA0h
	mov	rcx,rsi
	call	4115B0h
	mov	rsi,rax
	mov	rax,[rsp+30h]
	lea	rdx,[rsp+2Fh]
	lea	rcx,[rax-18h]
	call	450A60h
	jmp	471393h
00000000004713BB                                  90 90 90 90 90            .....

;; fn00000000004713C0: 00000000004713C0
;;   Called from:
;;     000000000046B466 (in fn000000000046B410)
;;     000000000047194A (in fn0000000000471900)
fn00000000004713C0 proc
	push	rbp
	mov	rbp,rsp
	sub	rsp,20h
	mov	[rbp+10h],rcx
	mov	[rbp+18h],rdx
	mov	[rbp+20h],r8
	mov	[rbp+28h],r9
	mov	rdx,[rbp+20h]
	mov	rax,[rbp+18h]
	mov	r8,rdx
	mov	rdx,rax
	mov	rcx,[rbp+10h]
	call	470AA0h
	add	rsp,20h
	pop	rbp
	ret
00000000004713F5                90 90 90 90 90 90 90 90 90 90 90      ...........

;; fn0000000000471400: 0000000000471400
;;   Called from:
;;     000000000046B946 (in fn000000000046B8F0)
;;     00000000004719AA (in fn0000000000471960)
fn0000000000471400 proc
	push	rbp
	mov	rbp,rsp
	sub	rsp,20h
	mov	[rbp+10h],rcx
	mov	[rbp+18h],rdx
	mov	[rbp+20h],r8
	mov	[rbp+28h],r9
	mov	rdx,[rbp+20h]
	mov	rax,[rbp+18h]
	mov	r8,rdx
	mov	rdx,rax
	mov	rcx,[rbp+10h]
	call	470AE0h
	add	rsp,20h
	pop	rbp
	ret
0000000000471435                90 90 90 90 90 90 90 90 90 90 90      ...........

;; fn0000000000471440: 0000000000471440
fn0000000000471440 proc
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
	call	463DF0h
	mov	rax,[rsp+30h]
	lea	rdx,[rsp+2Fh]
	lea	rcx,[rax-18h]
	call	450A60h
	lea	r8,[0000000000463E40]                                  ; [rip-0000D651]
	lea	rdx,[0000000000493970]                                 ; [rip+000224D8]
	mov	rcx,rbx
	call	4760B0h
	mov	rsi,rax

l00000000004714A3:
	mov	rcx,rbx
	call	475BA0h
	mov	rcx,rsi
	call	4115B0h
	mov	rsi,rax
	mov	rax,[rsp+30h]
	lea	rdx,[rsp+2Fh]
	lea	rcx,[rax-18h]
	call	450A60h
	jmp	4714A3h
00000000004714CB                                  90 90 90 90 90            .....

;; fn00000000004714D0: 00000000004714D0
fn00000000004714D0 proc
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
	call	4650A0h
	mov	rax,[rsp+30h]
	lea	rdx,[rsp+2Fh]
	lea	rcx,[rax-18h]
	call	450A60h
	lea	r8,[00000000004650F0]                                  ; [rip-0000C431]
	lea	rdx,[00000000004939F0]                                 ; [rip+000224C8]
	mov	rcx,rbx
	call	4760B0h
	mov	rsi,rax

l0000000000471533:
	mov	rcx,rbx
	call	475BA0h
	mov	rcx,rsi
	call	4115B0h
	mov	rsi,rax
	mov	rax,[rsp+30h]
	lea	rdx,[rsp+2Fh]
	lea	rcx,[rax-18h]
	call	450A60h
	jmp	471533h
000000000047155B                                  90 90 90 90 90            .....

;; fn0000000000471560: 0000000000471560
;;   Called from:
;;     0000000000427760 (in fn0000000000427740)
;;     0000000000427829 (in fn00000000004277C0)
;;     0000000000427BD3 (in fn0000000000427BA0)
;;     0000000000427E18 (in fn0000000000427D30)
;;     0000000000427EEB (in fn0000000000427E20)
;;     0000000000427FBB (in fn0000000000427F00)
;;     00000000004280CB (in fn0000000000427FD0)
;;     00000000004280E1 (in fn0000000000427FD0)
;;     0000000000428135 (in fn0000000000428110)
;;     000000000042866F (in fn0000000000428650)
;;     0000000000428737 (in fn00000000004286D0)
;;     0000000000428AA3 (in fn0000000000428A70)
;;     0000000000428C3D (in fn0000000000428BA0)
;;     0000000000428CCC (in fn0000000000428C50)
;;     0000000000428D5E (in fn0000000000428CE0)
;;     0000000000428E17 (in fn0000000000428D70)
;;     0000000000428E30 (in fn0000000000428D70)
;;     0000000000428E75 (in fn0000000000428E50)
;;     00000000004472B7 (in fn0000000000446BF0)
;;     0000000000447997 (in fn00000000004472D0)
;;     000000000044843D (in fn0000000000447CD0)
;;     0000000000448C2D (in fn00000000004484C0)
;;     0000000000449329 (in fn00000000004492F0)
;;     00000000004496D3 (in fn0000000000449690)
;;     0000000000449999 (in fn00000000004498E0)
;;     0000000000449CAE (in fn0000000000449C70)
;;     0000000000449F5A (in fn0000000000449DD0)
;;     0000000000449FC6 (in fn0000000000449F80)
;;     000000000044A00D (in fn0000000000449FD0)
;;     000000000044A4DC (in fn000000000044A340)
;;     000000000044A56C (in fn000000000044A520)
;;     000000000044A5C5 (in fn000000000044A580)
;;     000000000044A687 (in fn000000000044A650)
;;     000000000044A9E3 (in fn000000000044A990)
;;     000000000044AA43 (in fn000000000044A9F0)
;;     000000000044ACB3 (in fn000000000044AC60)
;;     000000000044AD13 (in fn000000000044ACC0)
;;     0000000000450A18 (in fn00000000004509E0)
;;     0000000000450D93 (in fn0000000000450D50)
;;     0000000000451048 (in fn0000000000450F90)
;;     0000000000451343 (in fn0000000000451300)
;;     00000000004515C7 (in fn0000000000451450)
;;     0000000000451635 (in fn00000000004515F0)
;;     000000000045167D (in fn0000000000451640)
;;     0000000000451AEB (in fn0000000000451960)
;;     0000000000451B7C (in fn0000000000451B30)
;;     0000000000451BD5 (in fn0000000000451B90)
;;     0000000000451C97 (in fn0000000000451C60)
;;     0000000000451FD5 (in fn0000000000451F80)
;;     0000000000452035 (in fn0000000000451FE0)
;;     00000000004522A5 (in fn0000000000452250)
;;     0000000000452305 (in fn00000000004522B0)
fn0000000000471560 proc
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,48h
	lea	rbp,[rsp+80h]
	mov	[rbp-8h],rdx
	mov	[rbp+0h],r8
	mov	rbx,rcx
	mov	[rbp+8h],r9
	call	41BCB8h
	lea	rdx,[rax+200h]
	add	rax,+21Eh
	and	rax,0F0h
	call	4116F0h
	sub	rsp,rax
	lea	r9,[rbp-8h]
	mov	r8,rbx
	lea	rdi,[rsp+20h]
	lea	rsi,[rbp-50h]
	mov	[rbp-48h],r9
	mov	rcx,rdi
	call	4255A0h
	mov	ecx,10h
	call	4756E0h
	lea	r8,[rbp-52h]
	mov	rdx,rdi
	mov	rcx,rsi
	mov	rbx,rax
	call	451EA0h
	mov	rdx,rsi
	mov	rcx,rbx
	call	455350h
	mov	rax,[rbp-50h]
	lea	rdx,[rbp-51h]
	lea	rcx,[rax-18h]
	call	450A60h
	lea	r8,[00000000004553A0]                                  ; [rip+FFFE3DA8]
	lea	rdx,[0000000000493530]                                 ; [rip+00021F31]
	mov	rcx,rbx
	call	4760B0h
	mov	rsi,rax

l000000000047160A:
	mov	rcx,rbx
	call	475BA0h
	mov	rcx,rsi
	call	4115B0h
	mov	rsi,rax
	mov	rax,[rbp-50h]
	lea	rdx,[rbp-51h]
	lea	rcx,[rax-18h]
	call	450A60h
	jmp	47160Ah

;; fn0000000000471630: 0000000000471630
fn0000000000471630 proc
	sub	rsp,28h
	mov	ecx,8h
	call	4756E0h
	mov	rcx,[0000000000491CA0]                                 ; [rip+0002065B]
	lea	r8,[00000000004659D0]                                  ; [rip-0000BC7C]
	lea	rdx,[rcx+10h]
	mov	rcx,rax
	mov	[rax],rdx
	lea	rdx,[0000000000493A50]                                 ; [rip+000223F3]
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

;; fn0000000000471670: 0000000000471670
;;   Called from:
;;     000000000047166F (in fn0000000000471630)
fn0000000000471670 proc
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,30h
	mov	rax,[rcx]
	mov	rdx,rcx
	lea	rbx,[rsp+20h]
	mov	rsi,rcx
	add	rdx,[rax-18h]
	mov	rcx,rbx
	add	rdx,+0D0h
	call	46AE80h
	mov	rcx,rbx
	call	472FC0h
	mov	rcx,rbx
	mov	rdi,rax
	call	46AF20h
	mov	rax,[rsi]
	mov	rax,[rax-18h]
	mov	rbx,[rsi+rax+0E8h]
	mov	rax,[rbx+10h]
	cmp	rax,[rbx+18h]
	jnc	471753h

l00000000004716C8:
	movzx	eax,byte ptr [rax]

l00000000004716CB:
	mov	rdx,[rdi+30h]
	movzx	eax,al
	test	byte ptr [rdx+rax*2],20h
	jz	47170Ah

l00000000004716D8:
	nop	dword ptr [rax+rax+0h]

l00000000004716E0:
	mov	rdx,[rbx+10h]
	mov	r8,[rbx+18h]
	cmp	rdx,r8
	jnc	471715h

l00000000004716ED:
	add	rdx,1h
	mov	[rbx+10h],rdx

l00000000004716F5:
	cmp	rdx,r8
	jnc	471743h

l00000000004716FA:
	movzx	eax,byte ptr [rdx]

l00000000004716FD:
	mov	rcx,[rdi+30h]
	movzx	edx,al
	test	byte ptr [rcx+rdx*2],20h
	jnz	4716E0h

l000000000047170A:
	mov	rax,rsi
	add	rsp,30h
	pop	rbx
	pop	rsi
	pop	rdi
	ret

l0000000000471715:
	mov	rax,[rbx]
	mov	rcx,rbx
	call	qword ptr [rax+50h]
	cmp	eax,0FFh
	jnz	471766h

l0000000000471723:
	mov	rax,[rsi]
	mov	rcx,rsi
	add	rcx,[rax-18h]
	mov	edx,[rcx+20h]
	or	edx,2h
	call	46E370h
	mov	rax,rsi
	add	rsp,30h
	pop	rbx
	pop	rsi
	pop	rdi
	ret

l0000000000471743:
	mov	rax,[rbx]
	mov	rcx,rbx
	call	qword ptr [rax+48h]
	cmp	eax,0FFh
	jz	471723h

l0000000000471751:
	jmp	4716FDh

l0000000000471753:
	mov	rax,[rbx]
	mov	rcx,rbx
	call	qword ptr [rax+48h]
	cmp	eax,0FFh
	jz	471723h

l0000000000471761:
	jmp	4716CBh

l0000000000471766:
	mov	rdx,[rbx+10h]
	mov	r8,[rbx+18h]
	jmp	4716F5h
0000000000471770 48 89 C6 48 89 D9 E8 A5 97 FF FF 48 89 F1 E8 2D H..H.......H...-
0000000000471780 FE F9 FF 90 90 90 90 90 90 90 90 90 90 90 90 90 ................

;; fn0000000000471790: 0000000000471790
fn0000000000471790 proc
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,30h
	mov	rax,[rcx]
	mov	rdx,rcx
	lea	rbx,[rsp+20h]
	mov	rdi,rcx
	add	rdx,[rax-18h]
	mov	rcx,rbx
	add	rdx,+0D0h
	call	46AE80h
	mov	rcx,rbx
	call	473020h
	mov	rcx,rbx
	mov	rsi,rax
	call	46AF20h
	mov	rax,[rdi]
	mov	rax,[rax-18h]
	mov	rbx,[rdi+rax+0E8h]
	mov	rax,[rbx+10h]
	cmp	rax,[rbx+18h]
	jnc	471870h

l00000000004717E8:
	movzx	eax,word ptr [rax]

l00000000004717EB:
	cmp	ax,0FFh
	jz	471841h

l00000000004717F1:
	mov	r9,[rsi]
	movzx	r8d,ax
	mov	edx,20h
	mov	rcx,rsi
	call	qword ptr [r9+10h]
	test	al,al
	jnz	471813h

l0000000000471808:
	mov	rax,rdi
	add	rsp,30h
	pop	rbx
	pop	rsi
	pop	rdi
	ret

l0000000000471813:
	mov	rdx,[rbx+10h]
	cmp	rdx,[rbx+18h]
	jnc	471861h

l000000000047181D:
	movzx	eax,word ptr [rdx]
	add	rdx,2h
	mov	[rbx+10h],rdx

l0000000000471828:
	cmp	ax,0FFh
	jz	471841h

l000000000047182E:
	mov	rdx,[rbx+10h]
	cmp	rdx,[rbx+18h]
	jnc	471870h

l0000000000471838:
	movzx	eax,word ptr [rdx]
	cmp	ax,0FFh
	jnz	4717F1h

l0000000000471841:
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
	ret

l0000000000471861:
	mov	rax,[rbx]
	mov	rcx,rbx
	call	qword ptr [rax+50h]
	jmp	471828h
000000000047186C                                     0F 1F 40 00             ..@.

l0000000000471870:
	mov	rax,[rbx]
	mov	rcx,rbx
	call	qword ptr [rax+48h]
	jmp	4717EBh
000000000047187E                                           48 89               H.
0000000000471880 C6 48 89 D9 E8 97 96 FF FF 48 89 F1 E8 1F FD F9 .H.......H......
0000000000471890 FF 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 ................

;; fn00000000004718A0: 00000000004718A0
;;   Called from:
;;     000000000046B516 (in fn000000000046B4B0)
;;     000000000046B528 (in fn000000000046B4B0)
;;     0000000000471925 (in fn0000000000471900)
;;     0000000000471931 (in fn0000000000471900)
fn00000000004718A0 proc
	push	rbp
	mov	rbp,rsp
	sub	rsp,30h
	mov	[rbp+10h],rcx
	lea	rax,[rbp-10h]
	mov	rdx,[rbp+10h]
	mov	rcx,rax
	call	45F330h
	mov	rax,[rbp-10h]
	add	rsp,30h
	pop	rbp
	ret
00000000004718C6                   90 90 90 90 90 90 90 90 90 90       ..........

;; fn00000000004718D0: 00000000004718D0
;;   Called from:
;;     000000000046B9F6 (in fn000000000046B990)
;;     000000000046BA08 (in fn000000000046B990)
;;     0000000000471985 (in fn0000000000471960)
;;     0000000000471991 (in fn0000000000471960)
fn00000000004718D0 proc
	push	rbp
	mov	rbp,rsp
	sub	rsp,30h
	mov	[rbp+10h],rcx
	lea	rax,[rbp-10h]
	mov	rdx,[rbp+10h]
	mov	rcx,rax
	call	45F350h
	mov	rax,[rbp-10h]
	add	rsp,30h
	pop	rbp
	ret
00000000004718F6                   90 90 90 90 90 90 90 90 90 90       ..........

;; fn0000000000471900: 0000000000471900
;;   Called from:
;;     000000000046B0E4 (in fn000000000046B030)
;;     000000000046B2D4 (in fn000000000046B220)
fn0000000000471900 proc
	push	rbp
	push	rbx
	sub	rsp,28h
	lea	rbp,[rsp+80h]
	mov	[rbp-40h],rcx
	mov	[rbp-38h],rdx
	mov	[rbp-30h],r8
	mov	[rbp-28h],r9
	mov	rax,[rbp-38h]
	mov	rcx,rax
	call	4718A0h
	mov	rbx,rax
	mov	rcx,[rbp-40h]
	call	4718A0h
	mov	rcx,rax
	mov	rdx,[rbp-28h]
	mov	rax,[rbp-30h]
	mov	r9,rdx
	mov	r8,rax
	mov	rdx,rbx
	call	4713C0h
	add	rsp,28h
	pop	rbx
	pop	rbp
	ret
0000000000471956                   90 90 90 90 90 90 90 90 90 90       ..........

;; fn0000000000471960: 0000000000471960
;;   Called from:
;;     000000000046B7CF (in fn000000000046B720)
fn0000000000471960 proc
	push	rbp
	push	rbx
	sub	rsp,28h
	lea	rbp,[rsp+80h]
	mov	[rbp-40h],rcx
	mov	[rbp-38h],rdx
	mov	[rbp-30h],r8
	mov	[rbp-28h],r9
	mov	rax,[rbp-38h]
	mov	rcx,rax
	call	4718D0h
	mov	rbx,rax
	mov	rcx,[rbp-40h]
	call	4718D0h
	mov	rcx,rax
	mov	rdx,[rbp-28h]
	mov	rax,[rbp-30h]
	mov	r9,rdx
	mov	r8,rax
	mov	rdx,rbx
	call	471400h
	add	rsp,28h
	pop	rbx
	pop	rbp
	ret
00000000004719B6                   90 90 90 90 90 90 90 90 90 90       ..........

;; fn00000000004719C0: 00000000004719C0
;;   Called from:
;;     000000000042BFD3 (in fn000000000042BF60)
;;     000000000042C143 (in fn000000000042C0D0)
fn00000000004719C0 proc
	push	rbp
	mov	rbp,rsp
	mov	[rbp+10h],rcx
	mov	[rbp+18h],rdx
	mov	rax,[rbp+10h]
	mov	rdx,[rax]
	mov	rax,[rbp+18h]
	mov	rax,[rax]
	cmp	rdx,rax
	jnc	4719E5h

l00000000004719DF:
	mov	rax,[rbp+18h]
	jmp	4719E9h

l00000000004719E5:
	mov	rax,[rbp+10h]

l00000000004719E9:
	pop	rbp
	ret
00000000004719EB                                  90 90 90 90 90            .....

;; fn00000000004719F0: 00000000004719F0
;;   Called from:
;;     0000000000468876 (in fn0000000000468850)
fn00000000004719F0 proc
	push	rbp
	push	rbx
	sub	rsp,28h
	lea	rbp,[rsp+80h]
	mov	[rbp-40h],rcx
	mov	[rbp-38h],rdx
	mov	[rbp-30h],r8
	mov	rax,[rbp-38h]
	mov	rcx,rax
	call	46F3E0h
	mov	rbx,rax
	mov	rcx,[rbp-40h]
	call	46F3E0h
	mov	rcx,rax
	mov	rax,[rbp-30h]
	mov	r8,rax
	mov	rdx,rbx
	call	46FE10h
	add	rsp,28h
	pop	rbx
	pop	rbp
	ret
0000000000471A3B                                  90 90 90 90 90            .....

;; fn0000000000471A40: 0000000000471A40
fn0000000000471A40 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	mov	rax,[rcx]
	mov	rsi,rcx
	mov	rax,[rax-18h]
	mov	rbx,[rcx+rax+0F0h]
	test	rbx,rbx
	jz	471AAAh

l0000000000471A5D:
	cmp	byte ptr [rbx+38h],0h
	jz	471A80h

l0000000000471A63:
	movsx	edx,byte ptr [rbx+43h]

l0000000000471A67:
	mov	rcx,rsi
	call	44E750h
	mov	rcx,rax
	add	rsp,28h
	pop	rbx
	pop	rsi
	jmp	44E8B0h
0000000000471A7D                                        0F 1F 00              ...

l0000000000471A80:
	mov	rcx,rbx
	call	42B320h
	mov	rax,[rbx]
	lea	rcx,[000000000042B5F0]                                 ; [rip+FFFB9B5E]
	mov	edx,0Ah
	mov	rax,[rax+30h]
	cmp	rax,rcx
	jz	471A67h

l0000000000471AA0:
	mov	rcx,rbx
	call	rax
	movsx	edx,al
	jmp	471A67h

l0000000000471AAA:
	call	470820h
	nop

;; fn0000000000471AB0: 0000000000471AB0
;;   Called from:
;;     0000000000471AAF (in fn0000000000471A40)
fn0000000000471AB0 proc
	push	rbx
	sub	rsp,20h
	mov	rax,[rcx]
	mov	rbx,rcx
	mov	rax,[rax-18h]
	mov	rcx,[rcx+rax+0F0h]
	test	rcx,rcx
	jz	471AEFh

l0000000000471ACC:
	mov	rax,[rcx]
	mov	edx,0Ah
	call	qword ptr [rax+50h]
	mov	rcx,rbx
	movzx	edx,ax
	call	45D760h
	mov	rcx,rax
	add	rsp,20h
	pop	rbx
	jmp	45D8D0h

l0000000000471AEF:
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

;; fn0000000000471B00: 0000000000471B00
;;   Called from:
;;     0000000000471AFF (in fn0000000000471AB0)
fn0000000000471B00 proc
	xor	edx,edx
	jmp	44E750h
0000000000471B07                      90 90 90 90 90 90 90 90 90        .........

;; fn0000000000471B10: 0000000000471B10
fn0000000000471B10 proc
	xor	edx,edx
	jmp	45D760h
0000000000471B17                      90 90 90 90 90 90 90 90 90        .........

;; fn0000000000471B20: 0000000000471B20
;;   Called from:
;;     000000000046B607 (in fn000000000046B5F0)
fn0000000000471B20 proc
	push	rbp
	mov	rbp,rsp
	mov	[rbp+10h],rcx
	mov	rax,[rbp+10h]
	pop	rbp
	ret
0000000000471B2E                                           90 90               ..

;; fn0000000000471B30: 0000000000471B30
;;   Called from:
;;     000000000042ACA6 (in fn000000000042AC90)
fn0000000000471B30 proc
	push	rbp
	mov	rbp,rsp
	mov	[rbp+10h],rcx
	mov	rax,[rbp+10h]
	pop	rbp
	ret
0000000000471B3E                                           90 90               ..

;; fn0000000000471B40: 0000000000471B40
fn0000000000471B40 proc
	jmp	44E8B0h
0000000000471B45                90 90 90 90 90 90 90 90 90 90 90      ...........

;; fn0000000000471B50: 0000000000471B50
fn0000000000471B50 proc
	jmp	45D8D0h
0000000000471B55                90 90 90 90 90 90 90 90 90 90 90      ...........

;; fn0000000000471B60: 0000000000471B60
;;   Called from:
;;     0000000000424AC1 (in fn0000000000424AA0)
;;     0000000000464DAB (in fn0000000000464D90)
;;     0000000000464EAB (in fn0000000000464E90)
;;     000000000046AFDC (in fn000000000046AFB0)
;;     000000000046B018 (in fn000000000046AFB0)
;;     000000000046B272 (in fn000000000046B220)
fn0000000000471B60 proc
	push	rbp
	mov	rbp,rsp
	mov	[rbp+10h],rcx
	mov	rax,[rbp+10h]
	pop	rbp
	ret
0000000000471B6E                                           90 90               ..

;; fn0000000000471B70: 0000000000471B70
;;   Called from:
;;     0000000000424A71 (in fn0000000000424A50)
;;     0000000000464D6B (in fn0000000000464D50)
;;     0000000000464E6B (in fn0000000000464E50)
;;     000000000046B082 (in fn000000000046B030)
fn0000000000471B70 proc
	push	rbp
	mov	rbp,rsp
	mov	[rbp+10h],rcx
	mov	rax,[rbp+10h]
	pop	rbp
	ret
0000000000471B7E                                           90 90               ..

;; fn0000000000471B80: 0000000000471B80
;;   Called from:
;;     0000000000424BB1 (in fn0000000000424B90)
;;     0000000000464F7B (in fn0000000000464F60)
;;     000000000046503B (in fn0000000000465020)
;;     000000000046B772 (in fn000000000046B720)
fn0000000000471B80 proc
	push	rbp
	mov	rbp,rsp
	mov	[rbp+10h],rcx
	mov	rax,[rbp+10h]
	pop	rbp
	ret
0000000000471B8E                                           90 90               ..

;; fn0000000000471B90: 0000000000471B90
;;   Called from:
;;     000000000046F37D (in fn000000000046F360)
fn0000000000471B90 proc
	push	rbp
	mov	rbp,rsp
	mov	[rbp+10h],rcx
	mov	rax,[rbp+10h]
	pop	rbp
	ret
0000000000471B9E                                           90 90               ..

;; fn0000000000471BA0: 0000000000471BA0
fn0000000000471BA0 proc
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
	jz	471C11h

l0000000000471BC1:
	cmp	byte ptr [rbx+38h],0h
	jz	471BE0h

l0000000000471BC7:
	movsx	r8d,byte ptr [rbx+43h]

l0000000000471BCC:
	mov	rdx,rdi
	mov	rcx,rsi
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	jmp	471C20h
0000000000471BDE                                           66 90               f.

l0000000000471BE0:
	mov	rcx,rbx
	call	42B320h
	mov	rax,[rbx]
	lea	rdx,[000000000042B5F0]                                 ; [rip+FFFB99FE]
	mov	r8d,0Ah
	mov	rax,[rax+30h]
	cmp	rax,rdx
	jz	471BCCh

l0000000000471C01:
	mov	edx,0Ah
	mov	rcx,rbx
	call	rax
	movsx	r8d,al
	jmp	471BCCh

l0000000000471C11:
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

;; fn0000000000471C20: 0000000000471C20
;;   Called from:
;;     0000000000471BD9 (in fn0000000000471BA0)
;;     0000000000471C1F (in fn0000000000471BA0)
fn0000000000471C20 proc
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,38h
	mov	[rsp+80h],rcx
	mov	rbp,rdx
	mov	rdx,[rsp+80h]
	lea	rcx,[rsp+2Fh]
	mov	r13d,r8d
	movsx	r14d,r8b
	mov	r8d,1h
	call	44D740h
	cmp	byte ptr [rsp+2Fh],0h
	jnz	471CA0h

l0000000000471C61:
	mov	edx,4h

l0000000000471C66:
	mov	rax,[rsp+80h]
	mov	rcx,[rsp+80h]
	mov	rax,[rax]
	add	rcx,[rax-18h]
	or	edx,[rcx+20h]
	call	46E370h

l0000000000471C85:
	mov	rax,[rsp+80h]
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
0000000000471C9E                                           66 90               f.

l0000000000471CA0:
	mov	rax,[rbp+0h]
	xor	r9d,r9d
	xor	edx,edx
	mov	rcx,rbp
	mov	r8,[rax-18h]
	call	451CC0h
	mov	rax,[rsp+80h]
	mov	rcx,[rsp+80h]
	movzx	r13d,r13b
	mov	rax,[rax]
	mov	rax,[rax-18h]
	mov	rsi,[rcx+rax+0E8h]
	mov	rax,[rsi+10h]
	cmp	rax,[rsi+18h]
	jnc	471E85h

l0000000000471CE6:
	movzx	eax,byte ptr [rax]

l0000000000471CE9:
	xor	edi,edi
	mov	r12,3FFFFFFFFFFFFFF8h
	jmp	471D7Bh
0000000000471CFA                               66 0F 1F 44 00 00           f..D..

l0000000000471D00:
	cmp	r13d,eax
	jz	471D80h

l0000000000471D05:
	mov	r15,[rsi+10h]
	mov	rdx,[rsi+18h]
	mov	rbx,3FFFFFFFFFFFFFF9h
	sub	rbx,rdi
	sub	rdx,r15
	cmp	rbx,rdx
	cmovg	rbx,rdx

l0000000000471D24:
	cmp	rbx,1h
	jle	471DB4h

l0000000000471D2E:
	mov	r8,rbx
	mov	edx,r14d
	mov	rcx,r15
	call	41BD98h
	mov	rdx,rax
	mov	rcx,rbp
	sub	rdx,r15
	test	rax,rax
	cmovnz	rbx,rdx

l0000000000471D4C:
	mov	rdx,r15
	mov	r8,rbx
	call	450E00h
	mov	rax,rbx
	add	rax,[rsi+10h]
	add	rdi,rbx
	cmp	rax,[rsi+18h]
	mov	[rsi+10h],rax
	jnc	471E20h

l0000000000471D6F:
	movzx	eax,byte ptr [rax]

l0000000000471D72:
	cmp	rdi,r12
	ja	471E32h

l0000000000471D7B:
	cmp	eax,0FFh
	jnz	471D00h

l0000000000471D80:
	cmp	eax,0FFh
	jz	471DA4h

l0000000000471D85:
	cmp	r13d,eax
	mov	edx,4h
	jz	471E61h

l0000000000471D93:
	test	rdi,rdi
	jnz	471C66h

l0000000000471D9C:
	or	edx,4h
	jmp	471C66h

l0000000000471DA4:
	test	rdi,rdi
	mov	edx,2h
	jnz	471C66h

l0000000000471DB2:
	jmp	471D9Ch

l0000000000471DB4:
	mov	r15d,eax
	mov	rax,[rbp+0h]
	mov	rdx,[rax-18h]
	lea	rbx,[rdx+1h]
	cmp	rbx,[rax-10h]
	ja	471DD0h

l0000000000471DC9:
	mov	ecx,[rax-8h]
	test	ecx,ecx
	jle	471DE3h

l0000000000471DD0:
	mov	rdx,rbx
	mov	rcx,rbp
	call	451BE0h
	mov	rax,[rbp+0h]
	mov	rdx,[rax-18h]

l0000000000471DE3:
	mov	[rax+rdx],r15b
	mov	rax,[rbp+0h]
	add	rdi,1h
	mov	dword ptr [rax-8h],0h
	mov	[rax-18h],rbx
	mov	byte ptr [rax+rbx],0h
	mov	rax,[rsi+10h]
	mov	rdx,[rsi+18h]
	cmp	rax,rdx
	jnc	471E45h

l0000000000471E0B:
	add	rax,1h
	mov	[rsi+10h],rax

l0000000000471E13:
	cmp	rax,rdx
	jc	471D6Fh

l0000000000471E1C:
	nop	dword ptr [rax+0h]

l0000000000471E20:
	mov	rax,[rsi]
	mov	rcx,rsi
	call	qword ptr [rax+48h]
	cmp	rdi,r12
	jbe	471D7Bh

l0000000000471E32:
	cmp	eax,0FFh
	jnz	471D85h

l0000000000471E3B:
	mov	edx,2h
	jmp	471C66h

l0000000000471E45:
	mov	rax,[rsi]
	mov	rcx,rsi
	call	qword ptr [rax+50h]
	cmp	eax,0FFh
	jz	471D72h

l0000000000471E57:
	mov	rax,[rsi+10h]
	mov	rdx,[rsi+18h]
	jmp	471E13h

l0000000000471E61:
	add	rdi,1h
	mov	rax,[rsi+10h]
	cmp	rax,[rsi+18h]
	jnc	471E93h

l0000000000471E6F:
	add	rax,1h
	mov	[rsi+10h],rax

l0000000000471E77:
	test	rdi,rdi
	jnz	471C85h

l0000000000471E80:
	jmp	471C61h

l0000000000471E85:
	mov	rax,[rsi]
	mov	rcx,rsi
	call	qword ptr [rax+48h]
	jmp	471CE9h

l0000000000471E93:
	mov	rax,[rsi]
	mov	rcx,rsi
	call	qword ptr [rax+50h]
	jmp	471E77h
0000000000471E9E                                           48 83               H.
0000000000471EA0 FA 01 75 47 48 89 C1 E8 94 39 00 00 48 8B 84 24 ..uGH....9..H..$
0000000000471EB0 80 00 00 00 48 8B 8C 24 80 00 00 00 48 8B 00 48 ....H..$....H..H
0000000000471EC0 03 48 E8 83 49 20 01 F6 41 1C 01 74 19 E8 8E 41 .H..I ..A..t...A
0000000000471ED0 00 00 31 FF EB C8 48 89 C3 E8 92 3B 00 00 48 89 ..1...H....;..H.
0000000000471EE0 D9 E8 CA F6 F9 FF E8 75 41 00 00 48 89 C1 E8 4D .......uA..H...M
0000000000471EF0 39 00 00 48 8B 84 24 80 00 00 00 48 8B 8C 24 80 9..H..$....H..$.
0000000000471F00 00 00 00 48 8B 00 48 03 48 E8 83 49 20 01 F6 41 ...H..H.H..I ..A
0000000000471F10 1C 01 75 0C E8 57 3B 00 00 E9 59 FF FF FF EB B2 ..u..W;...Y.....
0000000000471F20 E8 3B 41 00 00 48 89 C3 E8 43 3B 00 00 48 89 D9 .;A..H...C;..H..
0000000000471F30 E8 7B F6 F9 FF 90 90 90 90 90 90 90 90 90 90 90 .{..............

;; fn0000000000471F40: 0000000000471F40
fn0000000000471F40 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	mov	rax,[rcx]
	mov	rbx,rcx
	mov	rsi,rdx
	mov	rax,[rax-18h]
	mov	rcx,[rcx+rax+0F0h]
	test	rcx,rcx
	jz	471F80h

l0000000000471F60:
	mov	rax,[rcx]
	mov	edx,0Ah
	call	qword ptr [rax+50h]
	mov	rdx,rsi
	movzx	r8d,ax
	mov	rcx,rbx
	add	rsp,28h
	pop	rbx
	pop	rsi
	jmp	471F90h

l0000000000471F80:
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

;; fn0000000000471F90: 0000000000471F90
;;   Called from:
;;     0000000000471F7B (in fn0000000000471F40)
;;     0000000000471F8F (in fn0000000000471F40)
fn0000000000471F90 proc
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,48h
	mov	[rsp+90h],rcx
	mov	r12,rdx
	mov	rdx,[rsp+90h]
	lea	rcx,[rsp+3Fh]
	mov	[rsp+2Ch],r8d
	mov	ebx,r8d
	mov	r8d,1h
	call	45C740h
	cmp	byte ptr [rsp+3Fh],0h
	jnz	47200Fh

l0000000000471FD2:
	mov	edx,4h

l0000000000471FD7:
	mov	rax,[rsp+90h]
	mov	rcx,[rsp+90h]
	mov	rax,[rax]
	add	rcx,[rax-18h]
	or	edx,[rcx+20h]
	call	46EB40h

l0000000000471FF6:
	mov	rax,[rsp+90h]
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

l000000000047200F:
	mov	rax,[r12]
	xor	r9d,r9d
	xor	edx,edx
	mov	rcx,r12
	mov	r8,[rax-18h]
	call	44A6C0h
	mov	rax,[rsp+90h]
	mov	rsi,[rsp+90h]
	mov	rax,[rax]
	mov	rax,[rax-18h]
	mov	rsi,[rsi+rax+0E8h]
	mov	rax,[rsi+10h]
	cmp	rax,[rsi+18h]
	jnc	4721DCh

l0000000000472051:
	movzx	edi,word ptr [rax]

l0000000000472054:
	xor	ebp,ebp
	mov	r15,1FFFFFFFFFFFFFFCh
	mov	r13,1FFFFFFFFFFFFFFBh
	nop	word ptr [rax+rax+0h]

l0000000000472070:
	cmp	di,0FFh
	jz	472131h

l000000000047207A:
	cmp	bx,di
	jz	472131h

l0000000000472083:
	mov	rcx,[rsi+18h]
	mov	rdx,[rsi+10h]
	mov	rax,r15
	sub	rax,rbp
	mov	r8,rcx
	sub	r8,rdx
	sar	r8,1h
	cmp	rax,r8
	cmovle	r8,rax

l00000000004720A1:
	cmp	r8,1h
	jle	47214Bh

l00000000004720AB:
	test	rdx,rdx
	jz	4720CFh

l00000000004720B0:
	mov	rcx,r8
	mov	rax,rdx
	nop	word ptr cs:[rax+rax+0h]

l00000000004720C0:
	cmp	bx,[rax]
	jz	472140h

l00000000004720C5:
	add	rax,2h
	sub	rcx,1h
	jnz	4720C0h

l00000000004720CF:
	mov	rdi,r8

l00000000004720D2:
	mov	r8,rdi
	mov	rcx,r12
	call	449740h
	mov	rax,[rsi+10h]
	add	rbp,rdi
	lea	rax,[rax+rdi*2]
	cmp	rax,[rsi+18h]
	mov	[rsi+10h],rax
	jnc	4721C1h

l00000000004720F6:
	movzx	edi,word ptr [rax]

l00000000004720F9:
	cmp	rbp,r13
	jbe	472070h

l0000000000472102:
	cmp	di,0FFh
	jz	47221Bh

l000000000047210C:
	nop	dword ptr [rax+0h]

l0000000000472110:
	cmp	[rsp+2Ch],di
	mov	edx,4h
	jz	4721ECh

l0000000000472120:
	test	rbp,rbp
	jnz	471FD7h

l0000000000472129:
	or	edx,4h
	jmp	471FD7h

l0000000000472131:
	cmp	di,0FFh
	jnz	472110h

l0000000000472137:
	mov	edx,2h
	jmp	472120h
000000000047213E                                           66 90               f.

l0000000000472140:
	sub	rax,rdx
	mov	rdi,rax
	sar	rdi,1h
	jmp	4720D2h

l000000000047214B:
	mov	rax,[r12]
	mov	r8,[rax-18h]
	lea	r14,[r8+1h]
	cmp	r14,[rax-10h]
	ja	472166h

l000000000047215D:
	mov	r9d,[rax-8h]
	test	r9d,r9d
	jle	472181h

l0000000000472166:
	mov	rdx,r14
	mov	rcx,r12
	call	44A5D0h
	mov	rax,[r12]
	mov	rdx,[rsi+10h]
	mov	rcx,[rsi+18h]
	mov	r8,[rax-18h]

l0000000000472181:
	mov	[rax+r8*2],di
	add	rbp,1h
	xor	r8d,r8d
	cmp	rdx,rcx
	mov	dword ptr [rax-8h],0h
	mov	[rax-18h],r14
	mov	[rax+r14*2],r8w
	jnc	4721D1h

l00000000004721A2:
	movzx	eax,word ptr [rdx]
	add	rdx,2h
	mov	[rsi+10h],rdx

l00000000004721AD:
	cmp	ax,0FFh
	jz	4721CAh

l00000000004721B3:
	mov	rax,[rsi+10h]
	cmp	rax,[rsi+18h]
	jc	4720F6h

l00000000004721C1:
	mov	rax,[rsi]
	mov	rcx,rsi
	call	qword ptr [rax+48h]

l00000000004721CA:
	mov	edi,eax
	jmp	4720F9h

l00000000004721D1:
	mov	rax,[rsi]
	mov	rcx,rsi
	call	qword ptr [rax+50h]
	jmp	4721ADh

l00000000004721DC:
	mov	rax,[rsi]
	mov	rcx,rsi
	call	qword ptr [rax+48h]
	mov	edi,eax
	jmp	472054h

l00000000004721EC:
	add	rbp,1h
	mov	rax,[rsi+10h]
	cmp	rax,[rsi+18h]
	jnc	472210h

l00000000004721FA:
	add	rax,2h
	mov	[rsi+10h],rax

l0000000000472202:
	test	rbp,rbp
	jnz	471FF6h

l000000000047220B:
	jmp	471FD2h

l0000000000472210:
	mov	rax,[rsi]
	mov	rcx,rsi
	call	qword ptr [rax+50h]
	jmp	472202h

l000000000047221B:
	mov	edx,2h
	jmp	471FD7h
0000000000472225                48 83 FA 01 75 49 48 89 C1 E8 0D      H...uIH....
0000000000472230 36 00 00 48 8B 84 24 90 00 00 00 48 8B B4 24 90 6..H..$....H..$.
0000000000472240 00 00 00 48 8B 00 48 03 70 E8 83 4E 20 01 F6 46 ...H..H.p..N ..F
0000000000472250 1C 01 74 1B E8 07 3E 00 00 31 ED EB C8 EB FA 48 ..t...>..1.....H
0000000000472260 89 C3 E8 09 38 00 00 48 89 D9 E8 41 F3 F9 FF E8 ....8..H...A....
0000000000472270 EC 3D 00 00 48 89 C1 E8 C4 35 00 00 48 8B 84 24 .=..H....5..H..$
0000000000472280 90 00 00 00 48 8B B4 24 90 00 00 00 48 8B 00 48 ....H..$....H..H
0000000000472290 03 70 E8 83 4E 20 01 F6 46 1C 01 75 0A E8 CE 37 .p..N ..F..u...7
00000000004722A0 00 00 E9 5B FF FF FF E8 B4 3D 00 00 48 89 C3 E8 ...[.....=..H...
00000000004722B0 BC 37 00 00 48 89 D9 E8 F4 F2 F9 FF 90 90 90 90 .7..H...........

;; fn00000000004722C0: 00000000004722C0
fn00000000004722C0 proc
	mov	eax,ecx
	ret
00000000004722C3          90 90 90 90 90 90 90 90 90 90 90 90 90    .............

;; fn00000000004722D0: 00000000004722D0
fn00000000004722D0 proc
	mov	eax,ecx
	ret
00000000004722D3          90 90 90 90 90 90 90 90 90 90 90 90 90    .............

;; fn00000000004722E0: 00000000004722E0
;;   Called from:
;;     000000000047232F (in fn0000000000472310)
fn00000000004722E0 proc
	push	rbp
	mov	rbp,rsp
	sub	rsp,20h
	mov	[rbp+10h],rcx
	mov	[rbp+18h],rdx
	mov	rax,[rbp+18h]
	mov	rdx,rax
	mov	rcx,[rbp+10h]
	call	4549D0h
	nop
	add	rsp,20h
	pop	rbp
	ret
0000000000472307                      90 90 90 90 90 90 90 90 90        .........

;; fn0000000000472310: 0000000000472310
;;   Called from:
;;     000000000046B116 (in fn000000000046B030)
;;     000000000046B306 (in fn000000000046B220)
;;     000000000046B56E (in fn000000000046B4B0)
;;     000000000046B6E0 (in fn000000000046B6B0)
fn0000000000472310 proc
	push	rbp
	mov	rbp,rsp
	sub	rsp,20h
	mov	[rbp+10h],rcx
	mov	[rbp+18h],rdx
	mov	[rbp+20h],r8
	mov	rax,[rbp+18h]
	mov	rdx,rax
	mov	rcx,[rbp+10h]
	call	4722E0h
	nop
	add	rsp,20h
	pop	rbp
	ret
000000000047233B                                  90 90 90 90 90            .....

;; fn0000000000472340: 0000000000472340
;;   Called from:
;;     000000000047238F (in fn0000000000472370)
fn0000000000472340 proc
	push	rbp
	mov	rbp,rsp
	sub	rsp,20h
	mov	[rbp+10h],rcx
	mov	[rbp+18h],rdx
	mov	rax,[rbp+18h]
	mov	rdx,rax
	mov	rcx,[rbp+10h]
	call	4549E0h
	nop
	add	rsp,20h
	pop	rbp
	ret
0000000000472367                      90 90 90 90 90 90 90 90 90        .........

;; fn0000000000472370: 0000000000472370
;;   Called from:
;;     000000000046B801 (in fn000000000046B720)
;;     000000000046BA4E (in fn000000000046B990)
;;     000000000046BB80 (in fn000000000046BB50)
fn0000000000472370 proc
	push	rbp
	mov	rbp,rsp
	sub	rsp,20h
	mov	[rbp+10h],rcx
	mov	[rbp+18h],rdx
	mov	[rbp+20h],r8
	mov	rax,[rbp+18h]
	mov	rdx,rax
	mov	rcx,[rbp+10h]
	call	472340h
	nop
	add	rsp,20h
	pop	rbp
	ret
000000000047239B                                  90 90 90 90 90            .....

;; fn00000000004723A0: 00000000004723A0
fn00000000004723A0 proc
	push	rbx
	sub	rsp,20h
	mov	rbx,rcx
	lea	rcx,[000000000048B2B0]                                 ; [rip+00018F01]
	call	42BB80h
	mov	rdx,[rbx]
	mov	r8,rax
	xor	eax,eax
	cmp	r8,[rdx+10h]
	mov	rcx,[rdx+8h]
	jnc	4723EBh

l00000000004723C6:
	mov	rcx,[rcx+r8*8]
	test	rcx,rcx
	jz	4723EBh

l00000000004723CF:
	lea	r8,[00000000004932E0]                                  ; [rip+00020F0A]
	lea	rdx,[00000000004931B0]                                 ; [rip+00020DD3]
	xor	r9d,r9d
	call	4761A0h
	test	rax,rax
	setnz	al

l00000000004723EB:
	add	rsp,20h
	pop	rbx
	ret
00000000004723F1    90 90 90 90 90 90 90 90 90 90 90 90 90 90 90  ...............

;; fn0000000000472400: 0000000000472400
fn0000000000472400 proc
	push	rbx
	sub	rsp,20h
	mov	rbx,rcx
	lea	rcx,[000000000048B2D0]                                 ; [rip+00018EC1]
	call	42BB80h
	mov	rdx,[rbx]
	mov	r8,rax
	xor	eax,eax
	cmp	r8,[rdx+10h]
	mov	rcx,[rdx+8h]
	jnc	47244Bh

l0000000000472426:
	mov	rcx,[rcx+r8*8]
	test	rcx,rcx
	jz	47244Bh

l000000000047242F:
	lea	r8,[0000000000493360]                                  ; [rip+00020F2A]
	lea	rdx,[00000000004931B0]                                 ; [rip+00020D73]
	xor	r9d,r9d
	call	4761A0h
	test	rax,rax
	setnz	al

l000000000047244B:
	add	rsp,20h
	pop	rbx
	ret
0000000000472451    90 90 90 90 90 90 90 90 90 90 90 90 90 90 90  ...............

;; fn0000000000472460: 0000000000472460
fn0000000000472460 proc
	push	rbx
	sub	rsp,20h
	mov	rbx,rcx
	lea	rcx,[000000000048B2F0]                                 ; [rip+00018E81]
	call	42BB80h
	mov	rdx,[rbx]
	mov	r8,rax
	xor	eax,eax
	cmp	r8,[rdx+10h]
	mov	rcx,[rdx+8h]
	jnc	4724ABh

l0000000000472486:
	mov	rcx,[rcx+r8*8]
	test	rcx,rcx
	jz	4724ABh

l000000000047248F:
	lea	r8,[00000000004933E0]                                  ; [rip+00020F4A]
	lea	rdx,[00000000004931B0]                                 ; [rip+00020D13]
	xor	r9d,r9d
	call	4761A0h
	test	rax,rax
	setnz	al

l00000000004724AB:
	add	rsp,20h
	pop	rbx
	ret
00000000004724B1    90 90 90 90 90 90 90 90 90 90 90 90 90 90 90  ...............

;; fn00000000004724C0: 00000000004724C0
fn00000000004724C0 proc
	push	rbx
	sub	rsp,20h
	mov	rbx,rcx
	lea	rcx,[000000000048B300]                                 ; [rip+00018E31]
	call	42BB80h
	mov	rdx,[rbx]
	mov	r8,rax
	xor	eax,eax
	cmp	r8,[rdx+10h]
	mov	rcx,[rdx+8h]
	jnc	47250Bh

l00000000004724E6:
	mov	rcx,[rcx+r8*8]
	test	rcx,rcx
	jz	47250Bh

l00000000004724EF:
	lea	r8,[0000000000493400]                                  ; [rip+00020F0A]
	lea	rdx,[00000000004931B0]                                 ; [rip+00020CB3]
	xor	r9d,r9d
	call	4761A0h
	test	rax,rax
	setnz	al

l000000000047250B:
	add	rsp,20h
	pop	rbx
	ret
0000000000472511    90 90 90 90 90 90 90 90 90 90 90 90 90 90 90  ...............

;; fn0000000000472520: 0000000000472520
;;   Called from:
;;     000000000046E1AF (in fn000000000046E1A0)
fn0000000000472520 proc
	push	rbx
	sub	rsp,20h
	mov	rbx,rcx
	mov	rcx,[00000000004918B0]                                 ; [rip+0001F381]
	call	42BB80h
	mov	rdx,[rbx]
	mov	r8,rax
	xor	eax,eax
	cmp	r8,[rdx+10h]
	mov	rcx,[rdx+8h]
	jnc	47256Bh

l0000000000472546:
	mov	rcx,[rcx+r8*8]
	test	rcx,rcx
	jz	47256Bh

l000000000047254F:
	lea	r8,[0000000000493CA0]                                  ; [rip+0002174A]
	lea	rdx,[00000000004931B0]                                 ; [rip+00020C53]
	xor	r9d,r9d
	call	4761A0h
	test	rax,rax
	setnz	al

l000000000047256B:
	add	rsp,20h
	pop	rbx
	ret
0000000000472571    90 90 90 90 90 90 90 90 90 90 90 90 90 90 90  ...............

;; fn0000000000472580: 0000000000472580
;;   Called from:
;;     000000000046E9AF (in fn000000000046E9A0)
fn0000000000472580 proc
	push	rbx
	sub	rsp,20h
	mov	rbx,rcx
	mov	rcx,[00000000004918C0]                                 ; [rip+0001F331]
	call	42BB80h
	mov	rdx,[rbx]
	mov	r8,rax
	xor	eax,eax
	cmp	r8,[rdx+10h]
	mov	rcx,[rdx+8h]
	jnc	4725CBh

l00000000004725A6:
	mov	rcx,[rcx+r8*8]
	test	rcx,rcx
	jz	4725CBh

l00000000004725AF:
	lea	r8,[0000000000493CE0]                                  ; [rip+0002172A]
	lea	rdx,[00000000004931B0]                                 ; [rip+00020BF3]
	xor	r9d,r9d
	call	4761A0h
	test	rax,rax
	setnz	al

l00000000004725CB:
	add	rsp,20h
	pop	rbx
	ret
00000000004725D1    90 90 90 90 90 90 90 90 90 90 90 90 90 90 90  ...............

;; fn00000000004725E0: 00000000004725E0
;;   Called from:
;;     0000000000455BC0 (in fn0000000000455BB0)
;;     0000000000456F2D (in fn0000000000456E20)
;;     000000000045708D (in fn0000000000456F80)
fn00000000004725E0 proc
	push	rbx
	sub	rsp,20h
	mov	rbx,rcx
	mov	rcx,[0000000000491910]                                 ; [rip+0001F321]
	call	42BB80h
	mov	rdx,[rbx]
	mov	r8,rax
	xor	eax,eax
	cmp	r8,[rdx+10h]
	mov	rcx,[rdx+8h]
	jnc	47262Bh

l0000000000472606:
	mov	rcx,[rcx+r8*8]
	test	rcx,rcx
	jz	47262Bh

l000000000047260F:
	lea	r8,[0000000000493D00]                                  ; [rip+000216EA]
	lea	rdx,[00000000004931B0]                                 ; [rip+00020B93]
	xor	r9d,r9d
	call	4761A0h
	test	rax,rax
	setnz	al

l000000000047262B:
	add	rsp,20h
	pop	rbx
	ret
0000000000472631    90 90 90 90 90 90 90 90 90 90 90 90 90 90 90  ...............

;; fn0000000000472640: 0000000000472640
;;   Called from:
;;     0000000000457910 (in fn0000000000457900)
;;     0000000000458CEF (in fn0000000000458BE0)
;;     0000000000458E5F (in fn0000000000458D50)
fn0000000000472640 proc
	push	rbx
	sub	rsp,20h
	mov	rbx,rcx
	mov	rcx,[0000000000491920]                                 ; [rip+0001F2D1]
	call	42BB80h
	mov	rdx,[rbx]
	mov	r8,rax
	xor	eax,eax
	cmp	r8,[rdx+10h]
	mov	rcx,[rdx+8h]
	jnc	47268Bh

l0000000000472666:
	mov	rcx,[rcx+r8*8]
	test	rcx,rcx
	jz	47268Bh

l000000000047266F:
	lea	r8,[0000000000493D20]                                  ; [rip+000216AA]
	lea	rdx,[00000000004931B0]                                 ; [rip+00020B33]
	xor	r9d,r9d
	call	4761A0h
	test	rax,rax
	setnz	al

l000000000047268B:
	add	rsp,20h
	pop	rbx
	ret
0000000000472691    90 90 90 90 90 90 90 90 90 90 90 90 90 90 90  ...............

;; fn00000000004726A0: 00000000004726A0
fn00000000004726A0 proc
	push	rbx
	sub	rsp,20h
	mov	rbx,rcx
	lea	rcx,[000000000048B4E0]                                 ; [rip+00018E31]
	call	42BB80h
	mov	rdx,[rbx]
	mov	r8,rax
	xor	eax,eax
	cmp	r8,[rdx+10h]
	mov	rcx,[rdx+8h]
	jnc	4726EBh

l00000000004726C6:
	mov	rcx,[rcx+r8*8]
	test	rcx,rcx
	jz	4726EBh

l00000000004726CF:
	lea	r8,[0000000000493D40]                                  ; [rip+0002166A]
	lea	rdx,[00000000004931B0]                                 ; [rip+00020AD3]
	xor	r9d,r9d
	call	4761A0h
	test	rax,rax
	setnz	al

l00000000004726EB:
	add	rsp,20h
	pop	rbx
	ret
00000000004726F1    90 90 90 90 90 90 90 90 90 90 90 90 90 90 90  ...............

;; fn0000000000472700: 0000000000472700
fn0000000000472700 proc
	push	rbx
	sub	rsp,20h
	mov	rbx,rcx
	lea	rcx,[000000000048B4F0]                                 ; [rip+00018DE1]
	call	42BB80h
	mov	rdx,[rbx]
	mov	r8,rax
	xor	eax,eax
	cmp	r8,[rdx+10h]
	mov	rcx,[rdx+8h]
	jnc	47274Bh

l0000000000472726:
	mov	rcx,[rcx+r8*8]
	test	rcx,rcx
	jz	47274Bh

l000000000047272F:
	lea	r8,[0000000000493D60]                                  ; [rip+0002162A]
	lea	rdx,[00000000004931B0]                                 ; [rip+00020A73]
	xor	r9d,r9d
	call	4761A0h
	test	rax,rax
	setnz	al

l000000000047274B:
	add	rsp,20h
	pop	rbx
	ret
0000000000472751    90 90 90 90 90 90 90 90 90 90 90 90 90 90 90  ...............

;; fn0000000000472760: 0000000000472760
;;   Called from:
;;     000000000046E1E5 (in fn000000000046E1A0)
;;     000000000046E22E (in fn000000000046E1A0)
fn0000000000472760 proc
	push	rbx
	sub	rsp,20h
	mov	rbx,rcx
	lea	rcx,[000000000048B500]                                 ; [rip+00018D91]
	call	42BB80h
	mov	rdx,[rbx]
	mov	r8,rax
	xor	eax,eax
	cmp	r8,[rdx+10h]
	mov	rcx,[rdx+8h]
	jnc	4727ABh

l0000000000472786:
	mov	rcx,[rcx+r8*8]
	test	rcx,rcx
	jz	4727ABh

l000000000047278F:
	lea	r8,[0000000000493D80]                                  ; [rip+000215EA]
	lea	rdx,[00000000004931B0]                                 ; [rip+00020A13]
	xor	r9d,r9d
	call	4761A0h
	test	rax,rax
	setnz	al

l00000000004727AB:
	add	rsp,20h
	pop	rbx
	ret
00000000004727B1    90 90 90 90 90 90 90 90 90 90 90 90 90 90 90  ...............

;; fn00000000004727C0: 00000000004727C0
;;   Called from:
;;     000000000046E9E5 (in fn000000000046E9A0)
;;     000000000046EA2E (in fn000000000046E9A0)
fn00000000004727C0 proc
	push	rbx
	sub	rsp,20h
	mov	rbx,rcx
	lea	rcx,[000000000048B510]                                 ; [rip+00018D41]
	call	42BB80h
	mov	rdx,[rbx]
	mov	r8,rax
	xor	eax,eax
	cmp	r8,[rdx+10h]
	mov	rcx,[rdx+8h]
	jnc	47280Bh

l00000000004727E6:
	mov	rcx,[rcx+r8*8]
	test	rcx,rcx
	jz	47280Bh

l00000000004727EF:
	lea	r8,[0000000000493DA0]                                  ; [rip+000215AA]
	lea	rdx,[00000000004931B0]                                 ; [rip+000209B3]
	xor	r9d,r9d
	call	4761A0h
	test	rax,rax
	setnz	al

l000000000047280B:
	add	rsp,20h
	pop	rbx
	ret
0000000000472811    90 90 90 90 90 90 90 90 90 90 90 90 90 90 90  ...............

;; fn0000000000472820: 0000000000472820
;;   Called from:
;;     000000000046E1CA (in fn000000000046E1A0)
;;     000000000046E212 (in fn000000000046E1A0)
fn0000000000472820 proc
	push	rbx
	sub	rsp,20h
	mov	rbx,rcx
	lea	rcx,[000000000048B520]                                 ; [rip+00018CF1]
	call	42BB80h
	mov	rdx,[rbx]
	mov	r8,rax
	xor	eax,eax
	cmp	r8,[rdx+10h]
	mov	rcx,[rdx+8h]
	jnc	47286Bh

l0000000000472846:
	mov	rcx,[rcx+r8*8]
	test	rcx,rcx
	jz	47286Bh

l000000000047284F:
	lea	r8,[0000000000493DC0]                                  ; [rip+0002156A]
	lea	rdx,[00000000004931B0]                                 ; [rip+00020953]
	xor	r9d,r9d
	call	4761A0h
	test	rax,rax
	setnz	al

l000000000047286B:
	add	rsp,20h
	pop	rbx
	ret
0000000000472871    90 90 90 90 90 90 90 90 90 90 90 90 90 90 90  ...............

;; fn0000000000472880: 0000000000472880
;;   Called from:
;;     000000000046E9CA (in fn000000000046E9A0)
;;     000000000046EA12 (in fn000000000046E9A0)
fn0000000000472880 proc
	push	rbx
	sub	rsp,20h
	mov	rbx,rcx
	lea	rcx,[000000000048B530]                                 ; [rip+00018CA1]
	call	42BB80h
	mov	rdx,[rbx]
	mov	r8,rax
	xor	eax,eax
	cmp	r8,[rdx+10h]
	mov	rcx,[rdx+8h]
	jnc	4728CBh

l00000000004728A6:
	mov	rcx,[rcx+r8*8]
	test	rcx,rcx
	jz	4728CBh

l00000000004728AF:
	lea	r8,[0000000000493DE0]                                  ; [rip+0002152A]
	lea	rdx,[00000000004931B0]                                 ; [rip+000208F3]
	xor	r9d,r9d
	call	4761A0h
	test	rax,rax
	setnz	al

l00000000004728CB:
	add	rsp,20h
	pop	rbx
	ret
00000000004728D1    90 90 90 90 90 90 90 90 90 90 90 90 90 90 90  ...............

;; fn00000000004728E0: 00000000004728E0
fn00000000004728E0 proc
	push	rbx
	sub	rsp,20h
	mov	rbx,rcx
	lea	rcx,[000000000048B560]                                 ; [rip+00018C71]
	call	42BB80h
	mov	rdx,[rbx]
	mov	r8,rax
	xor	eax,eax
	cmp	r8,[rdx+10h]
	mov	rcx,[rdx+8h]
	jnc	47292Bh

l0000000000472906:
	mov	rcx,[rcx+r8*8]
	test	rcx,rcx
	jz	47292Bh

l000000000047290F:
	lea	r8,[0000000000493E40]                                  ; [rip+0002152A]
	lea	rdx,[00000000004931B0]                                 ; [rip+00020893]
	xor	r9d,r9d
	call	4761A0h
	test	rax,rax
	setnz	al

l000000000047292B:
	add	rsp,20h
	pop	rbx
	ret
0000000000472931    90 90 90 90 90 90 90 90 90 90 90 90 90 90 90  ...............

;; fn0000000000472940: 0000000000472940
fn0000000000472940 proc
	push	rbx
	sub	rsp,20h
	mov	rbx,rcx
	lea	rcx,[000000000048B570]                                 ; [rip+00018C21]
	call	42BB80h
	mov	rdx,[rbx]
	mov	r8,rax
	xor	eax,eax
	cmp	r8,[rdx+10h]
	mov	rcx,[rdx+8h]
	jnc	47298Bh

l0000000000472966:
	mov	rcx,[rcx+r8*8]
	test	rcx,rcx
	jz	47298Bh

l000000000047296F:
	lea	r8,[0000000000493E80]                                  ; [rip+0002150A]
	lea	rdx,[00000000004931B0]                                 ; [rip+00020833]
	xor	r9d,r9d
	call	4761A0h
	test	rax,rax
	setnz	al

l000000000047298B:
	add	rsp,20h
	pop	rbx
	ret
0000000000472991    90 90 90 90 90 90 90 90 90 90 90 90 90 90 90  ...............

;; fn00000000004729A0: 00000000004729A0
fn00000000004729A0 proc
	push	rbx
	sub	rsp,20h
	mov	rbx,rcx
	lea	rcx,[000000000048B580]                                 ; [rip+00018BD1]
	call	42BB80h
	mov	rdx,[rbx]
	mov	r8,rax
	xor	eax,eax
	cmp	r8,[rdx+10h]
	mov	rcx,[rdx+8h]
	jnc	4729EBh

l00000000004729C6:
	mov	rcx,[rcx+r8*8]
	test	rcx,rcx
	jz	4729EBh

l00000000004729CF:
	lea	r8,[0000000000493EC0]                                  ; [rip+000214EA]
	lea	rdx,[00000000004931B0]                                 ; [rip+000207D3]
	xor	r9d,r9d
	call	4761A0h
	test	rax,rax
	setnz	al

l00000000004729EB:
	add	rsp,20h
	pop	rbx
	ret
00000000004729F1    90 90 90 90 90 90 90 90 90 90 90 90 90 90 90  ...............

;; fn0000000000472A00: 0000000000472A00
fn0000000000472A00 proc
	push	rbx
	sub	rsp,20h
	mov	rbx,rcx
	lea	rcx,[000000000048B590]                                 ; [rip+00018B81]
	call	42BB80h
	mov	rdx,[rbx]
	mov	r8,rax
	xor	eax,eax
	cmp	r8,[rdx+10h]
	mov	rcx,[rdx+8h]
	jnc	472A4Bh

l0000000000472A26:
	mov	rcx,[rcx+r8*8]
	test	rcx,rcx
	jz	472A4Bh

l0000000000472A2F:
	lea	r8,[0000000000493EE0]                                  ; [rip+000214AA]
	lea	rdx,[00000000004931B0]                                 ; [rip+00020773]
	xor	r9d,r9d
	call	4761A0h
	test	rax,rax
	setnz	al

l0000000000472A4B:
	add	rsp,20h
	pop	rbx
	ret
0000000000472A51    90 90 90 90 90 90 90 90 90 90 90 90 90 90 90  ...............

;; fn0000000000472A60: 0000000000472A60
fn0000000000472A60 proc
	push	rbx
	sub	rsp,20h
	mov	rbx,rcx
	lea	rcx,[000000000048B5A0]                                 ; [rip+00018B31]
	call	42BB80h
	mov	rdx,[rbx]
	mov	r8,rax
	xor	eax,eax
	cmp	r8,[rdx+10h]
	mov	rcx,[rdx+8h]
	jnc	472AABh

l0000000000472A86:
	mov	rcx,[rcx+r8*8]
	test	rcx,rcx
	jz	472AABh

l0000000000472A8F:
	lea	r8,[0000000000493F00]                                  ; [rip+0002146A]
	lea	rdx,[00000000004931B0]                                 ; [rip+00020713]
	xor	r9d,r9d
	call	4761A0h
	test	rax,rax
	setnz	al

l0000000000472AAB:
	add	rsp,20h
	pop	rbx
	ret
0000000000472AB1    90 90 90 90 90 90 90 90 90 90 90 90 90 90 90  ...............

;; fn0000000000472AC0: 0000000000472AC0
fn0000000000472AC0 proc
	push	rbx
	sub	rsp,20h
	mov	rbx,rcx
	lea	rcx,[000000000048B5B0]                                 ; [rip+00018AE1]
	call	42BB80h
	mov	rdx,[rbx]
	mov	r8,rax
	xor	eax,eax
	cmp	r8,[rdx+10h]
	mov	rcx,[rdx+8h]
	jnc	472B0Bh

l0000000000472AE6:
	mov	rcx,[rcx+r8*8]
	test	rcx,rcx
	jz	472B0Bh

l0000000000472AEF:
	lea	r8,[0000000000493F40]                                  ; [rip+0002144A]
	lea	rdx,[00000000004931B0]                                 ; [rip+000206B3]
	xor	r9d,r9d
	call	4761A0h
	test	rax,rax
	setnz	al

l0000000000472B0B:
	add	rsp,20h
	pop	rbx
	ret
0000000000472B11    90 90 90 90 90 90 90 90 90 90 90 90 90 90 90  ...............

;; fn0000000000472B20: 0000000000472B20
fn0000000000472B20 proc
	push	rbx
	sub	rsp,20h
	mov	rbx,rcx
	lea	rcx,[000000000048B5C0]                                 ; [rip+00018A91]
	call	42BB80h
	mov	rdx,[rbx]
	mov	r8,rax
	xor	eax,eax
	cmp	r8,[rdx+10h]
	mov	rcx,[rdx+8h]
	jnc	472B6Bh

l0000000000472B46:
	mov	rcx,[rcx+r8*8]
	test	rcx,rcx
	jz	472B6Bh

l0000000000472B4F:
	lea	r8,[0000000000493F80]                                  ; [rip+0002142A]
	lea	rdx,[00000000004931B0]                                 ; [rip+00020653]
	xor	r9d,r9d
	call	4761A0h
	test	rax,rax
	setnz	al

l0000000000472B6B:
	add	rsp,20h
	pop	rbx
	ret
0000000000472B71    90 90 90 90 90 90 90 90 90 90 90 90 90 90 90  ...............

;; fn0000000000472B80: 0000000000472B80
fn0000000000472B80 proc
	push	rbx
	sub	rsp,20h
	mov	rbx,rcx
	lea	rcx,[000000000048B5D0]                                 ; [rip+00018A41]
	call	42BB80h
	mov	rdx,[rbx]
	mov	r8,rax
	xor	eax,eax
	cmp	r8,[rdx+10h]
	mov	rcx,[rdx+8h]
	jnc	472BCBh

l0000000000472BA6:
	mov	rcx,[rcx+r8*8]
	test	rcx,rcx
	jz	472BCBh

l0000000000472BAF:
	lea	r8,[0000000000493FA0]                                  ; [rip+000213EA]
	lea	rdx,[00000000004931B0]                                 ; [rip+000205F3]
	xor	r9d,r9d
	call	4761A0h
	test	rax,rax
	setnz	al

l0000000000472BCB:
	add	rsp,20h
	pop	rbx
	ret
0000000000472BD1    90 90 90 90 90 90 90 90 90 90 90 90 90 90 90  ...............

;; fn0000000000472BE0: 0000000000472BE0
fn0000000000472BE0 proc
	push	rbx
	sub	rsp,20h
	mov	rbx,rcx
	lea	rcx,[000000000048B5E0]                                 ; [rip+000189F1]
	call	42BB80h
	mov	rdx,[rbx]
	mov	r8,rax
	xor	eax,eax
	cmp	r8,[rdx+10h]
	mov	rcx,[rdx+8h]
	jnc	472C2Bh

l0000000000472C06:
	mov	rcx,[rcx+r8*8]
	test	rcx,rcx
	jz	472C2Bh

l0000000000472C0F:
	lea	r8,[0000000000494030]                                  ; [rip+0002141A]
	lea	rdx,[00000000004931B0]                                 ; [rip+00020593]
	xor	r9d,r9d
	call	4761A0h
	test	rax,rax
	setnz	al

l0000000000472C2B:
	add	rsp,20h
	pop	rbx
	ret
0000000000472C31    90 90 90 90 90 90 90 90 90 90 90 90 90 90 90  ...............

;; fn0000000000472C40: 0000000000472C40
fn0000000000472C40 proc
	push	rbx
	sub	rsp,20h
	mov	rbx,rcx
	lea	rcx,[000000000048B5F0]                                 ; [rip+000189A1]
	call	42BB80h
	mov	rdx,[rbx]
	mov	r8,rax
	xor	eax,eax
	cmp	r8,[rdx+10h]
	mov	rcx,[rdx+8h]
	jnc	472C8Bh

l0000000000472C66:
	mov	rcx,[rcx+r8*8]
	test	rcx,rcx
	jz	472C8Bh

l0000000000472C6F:
	lea	r8,[0000000000494050]                                  ; [rip+000213DA]
	lea	rdx,[00000000004931B0]                                 ; [rip+00020533]
	xor	r9d,r9d
	call	4761A0h
	test	rax,rax
	setnz	al

l0000000000472C8B:
	add	rsp,20h
	pop	rbx
	ret
0000000000472C91    90 90 90 90 90 90 90 90 90 90 90 90 90 90 90  ...............

;; fn0000000000472CA0: 0000000000472CA0
fn0000000000472CA0 proc
	push	rbx
	sub	rsp,20h
	mov	rbx,rcx
	lea	rcx,[000000000048B600]                                 ; [rip+00018951]
	call	42BB80h
	mov	rdx,[rbx]
	mov	r8,rax
	xor	eax,eax
	cmp	r8,[rdx+10h]
	mov	rcx,[rdx+8h]
	jnc	472CEBh

l0000000000472CC6:
	mov	rcx,[rcx+r8*8]
	test	rcx,rcx
	jz	472CEBh

l0000000000472CCF:
	lea	r8,[0000000000494070]                                  ; [rip+0002139A]
	lea	rdx,[00000000004931B0]                                 ; [rip+000204D3]
	xor	r9d,r9d
	call	4761A0h
	test	rax,rax
	setnz	al

l0000000000472CEB:
	add	rsp,20h
	pop	rbx
	ret
0000000000472CF1    90 90 90 90 90 90 90 90 90 90 90 90 90 90 90  ...............

;; fn0000000000472D00: 0000000000472D00
fn0000000000472D00 proc
	push	rbx
	sub	rsp,20h
	mov	rbx,rcx
	lea	rcx,[000000000048B610]                                 ; [rip+00018901]
	call	42BB80h
	mov	rdx,[rbx]
	mov	r8,rax
	xor	eax,eax
	cmp	r8,[rdx+10h]
	mov	rcx,[rdx+8h]
	jnc	472D4Bh

l0000000000472D26:
	mov	rcx,[rcx+r8*8]
	test	rcx,rcx
	jz	472D4Bh

l0000000000472D2F:
	lea	r8,[0000000000494090]                                  ; [rip+0002135A]
	lea	rdx,[00000000004931B0]                                 ; [rip+00020473]
	xor	r9d,r9d
	call	4761A0h
	test	rax,rax
	setnz	al

l0000000000472D4B:
	add	rsp,20h
	pop	rbx
	ret
0000000000472D51    90 90 90 90 90 90 90 90 90 90 90 90 90 90 90  ...............

;; fn0000000000472D60: 0000000000472D60
;;   Called from:
;;     0000000000423B16 (in fn0000000000423B10)
;;     0000000000423F37 (in fn0000000000423C60)
;;     0000000000470A3A (in fn00000000004709E0)
;;     00000000004756C0 (in fn0000000000475620)
;;     00000000004757A0 (in fn00000000004756E0)
;;     00000000004758BB (in fn0000000000475840)
;;     00000000004758F5 (in fn00000000004758D0)
;;     0000000000475A5B (in fn0000000000475A40)
;;     0000000000475AE6 (in fn0000000000475A70)
;;     0000000000475D14 (in fn0000000000475C50)
;;     000000000047604B (in fn0000000000476030)
;;     00000000004760A5 (in fn0000000000476060)
;;     0000000000476119 (in fn00000000004760B0)
fn0000000000472D60 proc
	sub	rsp,28h
	call	46F760h
	mov	rcx,rax
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

;; fn0000000000472D80: 0000000000472D80
;;   Called from:
;;     00000000004661C0 (in fn00000000004661A0)
;;     0000000000472D7F (in fn0000000000472D60)
fn0000000000472D80 proc
	push	rbx
	sub	rsp,20h
	mov	rbx,rcx
	lea	rcx,[000000000048B2B0]                                 ; [rip+00018521]
	call	42BB80h
	mov	rdx,[rbx]
	cmp	rax,[rdx+10h]
	mov	rcx,[rdx+8h]
	jnc	472DCBh

l0000000000472DA1:
	mov	rcx,[rcx+rax*8]
	test	rcx,rcx
	jz	472DCBh

l0000000000472DAA:
	lea	r8,[00000000004932E0]                                  ; [rip+0002052F]
	lea	rdx,[00000000004931B0]                                 ; [rip+000203F8]
	xor	r9d,r9d
	call	4761A0h
	test	rax,rax
	jz	472DD0h

l0000000000472DC5:
	add	rsp,20h
	pop	rbx
	ret

l0000000000472DCB:
	call	470820h

l0000000000472DD0:
	call	4757C0h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop

;; fn0000000000472DE0: 0000000000472DE0
;;   Called from:
;;     0000000000466B30 (in fn0000000000466B10)
;;     0000000000472DDF (in fn0000000000472D80)
fn0000000000472DE0 proc
	push	rbx
	sub	rsp,20h
	mov	rbx,rcx
	lea	rcx,[000000000048B2C0]                                 ; [rip+000184D1]
	call	42BB80h
	mov	rdx,[rbx]
	cmp	rax,[rdx+10h]
	mov	rcx,[rdx+8h]
	jnc	472E2Bh

l0000000000472E01:
	mov	rcx,[rcx+rax*8]
	test	rcx,rcx
	jz	472E2Bh

l0000000000472E0A:
	lea	r8,[0000000000493320]                                  ; [rip+0002050F]
	lea	rdx,[00000000004931B0]                                 ; [rip+00020398]
	xor	r9d,r9d
	call	4761A0h
	test	rax,rax
	jz	472E30h

l0000000000472E25:
	add	rsp,20h
	pop	rbx
	ret

l0000000000472E2B:
	call	470820h

l0000000000472E30:
	call	4757C0h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop

;; fn0000000000472E40: 0000000000472E40
;;   Called from:
;;     00000000004674A0 (in fn0000000000467480)
;;     0000000000472E3F (in fn0000000000472DE0)
fn0000000000472E40 proc
	push	rbx
	sub	rsp,20h
	mov	rbx,rcx
	lea	rcx,[000000000048B2D0]                                 ; [rip+00018481]
	call	42BB80h
	mov	rdx,[rbx]
	cmp	rax,[rdx+10h]
	mov	rcx,[rdx+8h]
	jnc	472E8Bh

l0000000000472E61:
	mov	rcx,[rcx+rax*8]
	test	rcx,rcx
	jz	472E8Bh

l0000000000472E6A:
	lea	r8,[0000000000493360]                                  ; [rip+000204EF]
	lea	rdx,[00000000004931B0]                                 ; [rip+00020338]
	xor	r9d,r9d
	call	4761A0h
	test	rax,rax
	jz	472E90h

l0000000000472E85:
	add	rsp,20h
	pop	rbx
	ret

l0000000000472E8B:
	call	470820h

l0000000000472E90:
	call	4757C0h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop

;; fn0000000000472EA0: 0000000000472EA0
;;   Called from:
;;     0000000000467E30 (in fn0000000000467E10)
;;     0000000000472E9F (in fn0000000000472E40)
fn0000000000472EA0 proc
	push	rbx
	sub	rsp,20h
	mov	rbx,rcx
	lea	rcx,[000000000048B2E0]                                 ; [rip+00018431]
	call	42BB80h
	mov	rdx,[rbx]
	cmp	rax,[rdx+10h]
	mov	rcx,[rdx+8h]
	jnc	472EEBh

l0000000000472EC1:
	mov	rcx,[rcx+rax*8]
	test	rcx,rcx
	jz	472EEBh

l0000000000472ECA:
	lea	r8,[00000000004933A0]                                  ; [rip+000204CF]
	lea	rdx,[00000000004931B0]                                 ; [rip+000202D8]
	xor	r9d,r9d
	call	4761A0h
	test	rax,rax
	jz	472EF0h

l0000000000472EE5:
	add	rsp,20h
	pop	rbx
	ret

l0000000000472EEB:
	call	470820h

l0000000000472EF0:
	call	4757C0h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop

;; fn0000000000472F00: 0000000000472F00
;;   Called from:
;;     000000000043C40B (in fn000000000043C3D0)
;;     000000000043C57B (in fn000000000043C540)
;;     000000000043CD99 (in fn000000000043CD60)
;;     000000000043D349 (in fn000000000043D310)
;;     000000000043D736 (in fn000000000043D6C0)
;;     0000000000441D52 (in fn0000000000441D10)
;;     0000000000472EFF (in fn0000000000472EA0)
fn0000000000472F00 proc
	push	rbx
	sub	rsp,20h
	mov	rbx,rcx
	lea	rcx,[000000000048B2F0]                                 ; [rip+000183E1]
	call	42BB80h
	mov	rdx,[rbx]
	cmp	rax,[rdx+10h]
	mov	rcx,[rdx+8h]
	jnc	472F4Bh

l0000000000472F21:
	mov	rcx,[rcx+rax*8]
	test	rcx,rcx
	jz	472F4Bh

l0000000000472F2A:
	lea	r8,[00000000004933E0]                                  ; [rip+000204AF]
	lea	rdx,[00000000004931B0]                                 ; [rip+00020278]
	xor	r9d,r9d
	call	4761A0h
	test	rax,rax
	jz	472F50h

l0000000000472F45:
	add	rsp,20h
	pop	rbx
	ret

l0000000000472F4B:
	call	470820h

l0000000000472F50:
	call	4757C0h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop

;; fn0000000000472F60: 0000000000472F60
;;   Called from:
;;     000000000043F00B (in fn000000000043EFD0)
;;     000000000043F16B (in fn000000000043F130)
;;     000000000043F879 (in fn000000000043F840)
;;     000000000043FE49 (in fn000000000043FE10)
;;     0000000000440226 (in fn00000000004401B0)
;;     00000000004420EE (in fn00000000004420B0)
;;     0000000000472F5F (in fn0000000000472F00)
fn0000000000472F60 proc
	push	rbx
	sub	rsp,20h
	mov	rbx,rcx
	lea	rcx,[000000000048B300]                                 ; [rip+00018391]
	call	42BB80h
	mov	rdx,[rbx]
	cmp	rax,[rdx+10h]
	mov	rcx,[rdx+8h]
	jnc	472FABh

l0000000000472F81:
	mov	rcx,[rcx+rax*8]
	test	rcx,rcx
	jz	472FABh

l0000000000472F8A:
	lea	r8,[0000000000493400]                                  ; [rip+0002046F]
	lea	rdx,[00000000004931B0]                                 ; [rip+00020218]
	xor	r9d,r9d
	call	4761A0h
	test	rax,rax
	jz	472FB0h

l0000000000472FA5:
	add	rsp,20h
	pop	rbx
	ret

l0000000000472FAB:
	call	470820h

l0000000000472FB0:
	call	4757C0h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop

;; fn0000000000472FC0: 0000000000472FC0
;;   Called from:
;;     0000000000439034 (in fn0000000000438F60)
;;     00000000004393D0 (in fn00000000004392F0)
;;     000000000043C6EE (in fn000000000043C6B0)
;;     000000000043C9DE (in fn000000000043C990)
;;     000000000043CDA4 (in fn000000000043CD60)
;;     000000000043D091 (in fn000000000043D040)
;;     000000000043D354 (in fn000000000043D310)
;;     000000000043D741 (in fn000000000043D6C0)
;;     000000000043EAC9 (in fn000000000043EA80)
;;     0000000000441A0C (in fn00000000004419C0)
;;     0000000000441D47 (in fn0000000000441D10)
;;     00000000004425BB (in fn0000000000442560)
;;     00000000004433DB (in fn0000000000443380)
;;     00000000004442E8 (in fn00000000004442A0)
;;     0000000000446A03 (in fn00000000004469A0)
;;     0000000000446C33 (in fn0000000000446BF0)
;;     0000000000447313 (in fn00000000004472D0)
;;     0000000000464108 (in fn0000000000463E50)
;;     0000000000466579 (in fn00000000004661A0)
;;     0000000000466EE9 (in fn0000000000466B10)
;;     0000000000468947 (in fn00000000004688D0)
;;     000000000046E1BB (in fn000000000046E1A0)
;;     000000000047169B (in fn0000000000471670)
;;     0000000000472FBF (in fn0000000000472F60)
;;     0000000000474248 (in fn00000000004741E0)
;;     00000000004747B4 (in fn0000000000474710)
fn0000000000472FC0 proc
	push	rbx
	sub	rsp,20h
	mov	rbx,rcx
	mov	rcx,[00000000004918B0]                                 ; [rip+0001E8E1]
	call	42BB80h
	mov	rdx,[rbx]
	cmp	rax,[rdx+10h]
	mov	rcx,[rdx+8h]
	jnc	47300Bh

l0000000000472FE1:
	mov	rcx,[rcx+rax*8]
	test	rcx,rcx
	jz	47300Bh

l0000000000472FEA:
	lea	r8,[0000000000493CA0]                                  ; [rip+00020CAF]
	lea	rdx,[00000000004931B0]                                 ; [rip+000201B8]
	xor	r9d,r9d
	call	4761A0h
	test	rax,rax
	jz	473010h

l0000000000473005:
	add	rsp,20h
	pop	rbx
	ret

l000000000047300B:
	call	470820h

l0000000000473010:
	call	4757C0h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop

;; fn0000000000473020: 0000000000473020
;;   Called from:
;;     000000000043AD7C (in fn000000000043AC90)
;;     000000000043B169 (in fn000000000043B070)
;;     000000000043F2CE (in fn000000000043F290)
;;     000000000043F573 (in fn000000000043F530)
;;     000000000043F884 (in fn000000000043F840)
;;     000000000043FB61 (in fn000000000043FB10)
;;     000000000043FE54 (in fn000000000043FE10)
;;     0000000000440231 (in fn00000000004401B0)
;;     00000000004414C8 (in fn0000000000441480)
;;     0000000000441ECD (in fn0000000000441E80)
;;     00000000004420E3 (in fn00000000004420B0)
;;     000000000044466B (in fn0000000000444610)
;;     000000000044559B (in fn0000000000445540)
;;     00000000004465B8 (in fn0000000000446570)
;;     0000000000447B33 (in fn0000000000447AD0)
;;     0000000000447D14 (in fn0000000000447CD0)
;;     0000000000448504 (in fn00000000004484C0)
;;     00000000004648BB (in fn00000000004645D0)
;;     00000000004678A5 (in fn0000000000467480)
;;     0000000000468235 (in fn0000000000467E10)
;;     0000000000468B8C (in fn0000000000468AD0)
;;     000000000046E9BB (in fn000000000046E9A0)
;;     00000000004717BB (in fn0000000000471790)
;;     000000000047301F (in fn0000000000472FC0)
;;     0000000000474AE6 (in fn0000000000474A80)
;;     0000000000474FAB (in fn0000000000474F00)
fn0000000000473020 proc
	push	rbx
	sub	rsp,20h
	mov	rbx,rcx
	mov	rcx,[00000000004918C0]                                 ; [rip+0001E891]
	call	42BB80h
	mov	rdx,[rbx]
	cmp	rax,[rdx+10h]
	mov	rcx,[rdx+8h]
	jnc	47306Bh

l0000000000473041:
	mov	rcx,[rcx+rax*8]
	test	rcx,rcx
	jz	47306Bh

l000000000047304A:
	lea	r8,[0000000000493CE0]                                  ; [rip+00020C8F]
	lea	rdx,[00000000004931B0]                                 ; [rip+00020158]
	xor	r9d,r9d
	call	4761A0h
	test	rax,rax
	jz	473070h

l0000000000473065:
	add	rsp,20h
	pop	rbx
	ret

l000000000047306B:
	call	470820h

l0000000000473070:
	call	4757C0h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop

;; fn0000000000473080: 0000000000473080
;;   Called from:
;;     0000000000455BD0 (in fn0000000000455BB0)
;;     0000000000456F44 (in fn0000000000456E20)
;;     00000000004570A4 (in fn0000000000456F80)
;;     000000000047307F (in fn0000000000473020)
fn0000000000473080 proc
	push	rbx
	sub	rsp,20h
	mov	rbx,rcx
	mov	rcx,[0000000000491910]                                 ; [rip+0001E881]
	call	42BB80h
	mov	rdx,[rbx]
	cmp	rax,[rdx+10h]
	mov	rcx,[rdx+8h]
	jnc	4730CBh

l00000000004730A1:
	mov	rcx,[rcx+rax*8]
	test	rcx,rcx
	jz	4730CBh

l00000000004730AA:
	lea	r8,[0000000000493D00]                                  ; [rip+00020C4F]
	lea	rdx,[00000000004931B0]                                 ; [rip+000200F8]
	xor	r9d,r9d
	call	4761A0h
	test	rax,rax
	jz	4730D0h

l00000000004730C5:
	add	rsp,20h
	pop	rbx
	ret

l00000000004730CB:
	call	470820h

l00000000004730D0:
	call	4757C0h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop

;; fn00000000004730E0: 00000000004730E0
;;   Called from:
;;     0000000000457920 (in fn0000000000457900)
;;     0000000000458D06 (in fn0000000000458BE0)
;;     0000000000458E76 (in fn0000000000458D50)
;;     00000000004730DF (in fn0000000000473080)
fn00000000004730E0 proc
	push	rbx
	sub	rsp,20h
	mov	rbx,rcx
	mov	rcx,[0000000000491920]                                 ; [rip+0001E831]
	call	42BB80h
	mov	rdx,[rbx]
	cmp	rax,[rdx+10h]
	mov	rcx,[rdx+8h]
	jnc	47312Bh

l0000000000473101:
	mov	rcx,[rcx+rax*8]
	test	rcx,rcx
	jz	47312Bh

l000000000047310A:
	lea	r8,[0000000000493D20]                                  ; [rip+00020C0F]
	lea	rdx,[00000000004931B0]                                 ; [rip+00020098]
	xor	r9d,r9d
	call	4761A0h
	test	rax,rax
	jz	473130h

l0000000000473125:
	add	rsp,20h
	pop	rbx
	ret

l000000000047312B:
	call	470820h

l0000000000473130:
	call	4757C0h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop

;; fn0000000000473140: 0000000000473140
;;   Called from:
;;     000000000047313F (in fn00000000004730E0)
fn0000000000473140 proc
	push	rbx
	sub	rsp,20h
	mov	rbx,rcx
	lea	rcx,[000000000048B4E0]                                 ; [rip+00018391]
	call	42BB80h
	mov	rdx,[rbx]
	cmp	rax,[rdx+10h]
	mov	rcx,[rdx+8h]
	jnc	47318Bh

l0000000000473161:
	mov	rcx,[rcx+rax*8]
	test	rcx,rcx
	jz	47318Bh

l000000000047316A:
	lea	r8,[0000000000493D40]                                  ; [rip+00020BCF]
	lea	rdx,[00000000004931B0]                                 ; [rip+00020038]
	xor	r9d,r9d
	call	4761A0h
	test	rax,rax
	jz	473190h

l0000000000473185:
	add	rsp,20h
	pop	rbx
	ret

l000000000047318B:
	call	470820h

l0000000000473190:
	call	4757C0h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop

;; fn00000000004731A0: 00000000004731A0
;;   Called from:
;;     000000000047319F (in fn0000000000473140)
fn00000000004731A0 proc
	push	rbx
	sub	rsp,20h
	mov	rbx,rcx
	lea	rcx,[000000000048B4F0]                                 ; [rip+00018341]
	call	42BB80h
	mov	rdx,[rbx]
	cmp	rax,[rdx+10h]
	mov	rcx,[rdx+8h]
	jnc	4731EBh

l00000000004731C1:
	mov	rcx,[rcx+rax*8]
	test	rcx,rcx
	jz	4731EBh

l00000000004731CA:
	lea	r8,[0000000000493D60]                                  ; [rip+00020B8F]
	lea	rdx,[00000000004931B0]                                 ; [rip+0001FFD8]
	xor	r9d,r9d
	call	4761A0h
	test	rax,rax
	jz	4731F0h

l00000000004731E5:
	add	rsp,20h
	pop	rbx
	ret

l00000000004731EB:
	call	470820h

l00000000004731F0:
	call	4757C0h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop

;; fn0000000000473200: 0000000000473200
;;   Called from:
;;     000000000046E1F1 (in fn000000000046E1A0)
;;     00000000004731FF (in fn00000000004731A0)
fn0000000000473200 proc
	push	rbx
	sub	rsp,20h
	mov	rbx,rcx
	lea	rcx,[000000000048B500]                                 ; [rip+000182F1]
	call	42BB80h
	mov	rdx,[rbx]
	cmp	rax,[rdx+10h]
	mov	rcx,[rdx+8h]
	jnc	47324Bh

l0000000000473221:
	mov	rcx,[rcx+rax*8]
	test	rcx,rcx
	jz	47324Bh

l000000000047322A:
	lea	r8,[0000000000493D80]                                  ; [rip+00020B4F]
	lea	rdx,[00000000004931B0]                                 ; [rip+0001FF78]
	xor	r9d,r9d
	call	4761A0h
	test	rax,rax
	jz	473250h

l0000000000473245:
	add	rsp,20h
	pop	rbx
	ret

l000000000047324B:
	call	470820h

l0000000000473250:
	call	4757C0h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop

;; fn0000000000473260: 0000000000473260
;;   Called from:
;;     000000000046E9F1 (in fn000000000046E9A0)
;;     000000000047325F (in fn0000000000473200)
fn0000000000473260 proc
	push	rbx
	sub	rsp,20h
	mov	rbx,rcx
	lea	rcx,[000000000048B510]                                 ; [rip+000182A1]
	call	42BB80h
	mov	rdx,[rbx]
	cmp	rax,[rdx+10h]
	mov	rcx,[rdx+8h]
	jnc	4732ABh

l0000000000473281:
	mov	rcx,[rcx+rax*8]
	test	rcx,rcx
	jz	4732ABh

l000000000047328A:
	lea	r8,[0000000000493DA0]                                  ; [rip+00020B0F]
	lea	rdx,[00000000004931B0]                                 ; [rip+0001FF18]
	xor	r9d,r9d
	call	4761A0h
	test	rax,rax
	jz	4732B0h

l00000000004732A5:
	add	rsp,20h
	pop	rbx
	ret

l00000000004732AB:
	call	470820h

l00000000004732B0:
	call	4757C0h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop

;; fn00000000004732C0: 00000000004732C0
;;   Called from:
;;     000000000046E1D6 (in fn000000000046E1A0)
;;     00000000004732BF (in fn0000000000473260)
fn00000000004732C0 proc
	push	rbx
	sub	rsp,20h
	mov	rbx,rcx
	lea	rcx,[000000000048B520]                                 ; [rip+00018251]
	call	42BB80h
	mov	rdx,[rbx]
	cmp	rax,[rdx+10h]
	mov	rcx,[rdx+8h]
	jnc	47330Bh

l00000000004732E1:
	mov	rcx,[rcx+rax*8]
	test	rcx,rcx
	jz	47330Bh

l00000000004732EA:
	lea	r8,[0000000000493DC0]                                  ; [rip+00020ACF]
	lea	rdx,[00000000004931B0]                                 ; [rip+0001FEB8]
	xor	r9d,r9d
	call	4761A0h
	test	rax,rax
	jz	473310h

l0000000000473305:
	add	rsp,20h
	pop	rbx
	ret

l000000000047330B:
	call	470820h

l0000000000473310:
	call	4757C0h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop

;; fn0000000000473320: 0000000000473320
;;   Called from:
;;     000000000046E9D6 (in fn000000000046E9A0)
;;     000000000047331F (in fn00000000004732C0)
fn0000000000473320 proc
	push	rbx
	sub	rsp,20h
	mov	rbx,rcx
	lea	rcx,[000000000048B530]                                 ; [rip+00018201]
	call	42BB80h
	mov	rdx,[rbx]
	cmp	rax,[rdx+10h]
	mov	rcx,[rdx+8h]
	jnc	47336Bh

l0000000000473341:
	mov	rcx,[rcx+rax*8]
	test	rcx,rcx
	jz	47336Bh

l000000000047334A:
	lea	r8,[0000000000493DE0]                                  ; [rip+00020A8F]
	lea	rdx,[00000000004931B0]                                 ; [rip+0001FE58]
	xor	r9d,r9d
	call	4761A0h
	test	rax,rax
	jz	473370h

l0000000000473365:
	add	rsp,20h
	pop	rbx
	ret

l000000000047336B:
	call	470820h

l0000000000473370:
	call	4757C0h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop

;; fn0000000000473380: 0000000000473380
;;   Called from:
;;     000000000047337F (in fn0000000000473320)
fn0000000000473380 proc
	push	rbx
	sub	rsp,20h
	mov	rbx,rcx
	lea	rcx,[000000000048B560]                                 ; [rip+000181D1]
	call	42BB80h
	mov	rdx,[rbx]
	cmp	rax,[rdx+10h]
	mov	rcx,[rdx+8h]
	jnc	4733CBh

l00000000004733A1:
	mov	rcx,[rcx+rax*8]
	test	rcx,rcx
	jz	4733CBh

l00000000004733AA:
	lea	r8,[0000000000493E40]                                  ; [rip+00020A8F]
	lea	rdx,[00000000004931B0]                                 ; [rip+0001FDF8]
	xor	r9d,r9d
	call	4761A0h
	test	rax,rax
	jz	4733D0h

l00000000004733C5:
	add	rsp,20h
	pop	rbx
	ret

l00000000004733CB:
	call	470820h

l00000000004733D0:
	call	4757C0h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop

;; fn00000000004733E0: 00000000004733E0
;;   Called from:
;;     00000000004733DF (in fn0000000000473380)
fn00000000004733E0 proc
	push	rbx
	sub	rsp,20h
	mov	rbx,rcx
	lea	rcx,[000000000048B570]                                 ; [rip+00018181]
	call	42BB80h
	mov	rdx,[rbx]
	cmp	rax,[rdx+10h]
	mov	rcx,[rdx+8h]
	jnc	47342Bh

l0000000000473401:
	mov	rcx,[rcx+rax*8]
	test	rcx,rcx
	jz	47342Bh

l000000000047340A:
	lea	r8,[0000000000493E80]                                  ; [rip+00020A6F]
	lea	rdx,[00000000004931B0]                                 ; [rip+0001FD98]
	xor	r9d,r9d
	call	4761A0h
	test	rax,rax
	jz	473430h

l0000000000473425:
	add	rsp,20h
	pop	rbx
	ret

l000000000047342B:
	call	470820h

l0000000000473430:
	call	4757C0h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop

;; fn0000000000473440: 0000000000473440
;;   Called from:
;;     0000000000463E7A (in fn0000000000463E50)
;;     000000000047343F (in fn00000000004733E0)
fn0000000000473440 proc
	push	rbx
	sub	rsp,20h
	mov	rbx,rcx
	lea	rcx,[000000000048B580]                                 ; [rip+00018131]
	call	42BB80h
	mov	rdx,[rbx]
	cmp	rax,[rdx+10h]
	mov	rcx,[rdx+8h]
	jnc	47348Bh

l0000000000473461:
	mov	rcx,[rcx+rax*8]
	test	rcx,rcx
	jz	47348Bh

l000000000047346A:
	lea	r8,[0000000000493EC0]                                  ; [rip+00020A4F]
	lea	rdx,[00000000004931B0]                                 ; [rip+0001FD38]
	xor	r9d,r9d
	call	4761A0h
	test	rax,rax
	jz	473490h

l0000000000473485:
	add	rsp,20h
	pop	rbx
	ret

l000000000047348B:
	call	470820h

l0000000000473490:
	call	4757C0h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop

;; fn00000000004734A0: 00000000004734A0
;;   Called from:
;;     00000000004645FA (in fn00000000004645D0)
;;     000000000047349F (in fn0000000000473440)
fn00000000004734A0 proc
	push	rbx
	sub	rsp,20h
	mov	rbx,rcx
	lea	rcx,[000000000048B590]                                 ; [rip+000180E1]
	call	42BB80h
	mov	rdx,[rbx]
	cmp	rax,[rdx+10h]
	mov	rcx,[rdx+8h]
	jnc	4734EBh

l00000000004734C1:
	mov	rcx,[rcx+rax*8]
	test	rcx,rcx
	jz	4734EBh

l00000000004734CA:
	lea	r8,[0000000000493EE0]                                  ; [rip+00020A0F]
	lea	rdx,[00000000004931B0]                                 ; [rip+0001FCD8]
	xor	r9d,r9d
	call	4761A0h
	test	rax,rax
	jz	4734F0h

l00000000004734E5:
	add	rsp,20h
	pop	rbx
	ret

l00000000004734EB:
	call	470820h

l00000000004734F0:
	call	4757C0h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop

;; fn0000000000473500: 0000000000473500
;;   Called from:
;;     00000000004734FF (in fn00000000004734A0)
fn0000000000473500 proc
	push	rbx
	sub	rsp,20h
	mov	rbx,rcx
	lea	rcx,[000000000048B5A0]                                 ; [rip+00018091]
	call	42BB80h
	mov	rdx,[rbx]
	cmp	rax,[rdx+10h]
	mov	rcx,[rdx+8h]
	jnc	47354Bh

l0000000000473521:
	mov	rcx,[rcx+rax*8]
	test	rcx,rcx
	jz	47354Bh

l000000000047352A:
	lea	r8,[0000000000493F00]                                  ; [rip+000209CF]
	lea	rdx,[00000000004931B0]                                 ; [rip+0001FC78]
	xor	r9d,r9d
	call	4761A0h
	test	rax,rax
	jz	473550h

l0000000000473545:
	add	rsp,20h
	pop	rbx
	ret

l000000000047354B:
	call	470820h

l0000000000473550:
	call	4757C0h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop

;; fn0000000000473560: 0000000000473560
;;   Called from:
;;     000000000047355F (in fn0000000000473500)
fn0000000000473560 proc
	push	rbx
	sub	rsp,20h
	mov	rbx,rcx
	lea	rcx,[000000000048B5B0]                                 ; [rip+00018041]
	call	42BB80h
	mov	rdx,[rbx]
	cmp	rax,[rdx+10h]
	mov	rcx,[rdx+8h]
	jnc	4735ABh

l0000000000473581:
	mov	rcx,[rcx+rax*8]
	test	rcx,rcx
	jz	4735ABh

l000000000047358A:
	lea	r8,[0000000000493F40]                                  ; [rip+000209AF]
	lea	rdx,[00000000004931B0]                                 ; [rip+0001FC18]
	xor	r9d,r9d
	call	4761A0h
	test	rax,rax
	jz	4735B0h

l00000000004735A5:
	add	rsp,20h
	pop	rbx
	ret

l00000000004735AB:
	call	470820h

l00000000004735B0:
	call	4757C0h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop

;; fn00000000004735C0: 00000000004735C0
;;   Called from:
;;     00000000004735BF (in fn0000000000473560)
fn00000000004735C0 proc
	push	rbx
	sub	rsp,20h
	mov	rbx,rcx
	lea	rcx,[000000000048B5C0]                                 ; [rip+00017FF1]
	call	42BB80h
	mov	rdx,[rbx]
	cmp	rax,[rdx+10h]
	mov	rcx,[rdx+8h]
	jnc	47360Bh

l00000000004735E1:
	mov	rcx,[rcx+rax*8]
	test	rcx,rcx
	jz	47360Bh

l00000000004735EA:
	lea	r8,[0000000000493F80]                                  ; [rip+0002098F]
	lea	rdx,[00000000004931B0]                                 ; [rip+0001FBB8]
	xor	r9d,r9d
	call	4761A0h
	test	rax,rax
	jz	473610h

l0000000000473605:
	add	rsp,20h
	pop	rbx
	ret

l000000000047360B:
	call	470820h

l0000000000473610:
	call	4757C0h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop

;; fn0000000000473620: 0000000000473620
;;   Called from:
;;     000000000047361F (in fn00000000004735C0)
fn0000000000473620 proc
	push	rbx
	sub	rsp,20h
	mov	rbx,rcx
	lea	rcx,[000000000048B5D0]                                 ; [rip+00017FA1]
	call	42BB80h
	mov	rdx,[rbx]
	cmp	rax,[rdx+10h]
	mov	rcx,[rdx+8h]
	jnc	47366Bh

l0000000000473641:
	mov	rcx,[rcx+rax*8]
	test	rcx,rcx
	jz	47366Bh

l000000000047364A:
	lea	r8,[0000000000493FA0]                                  ; [rip+0002094F]
	lea	rdx,[00000000004931B0]                                 ; [rip+0001FB58]
	xor	r9d,r9d
	call	4761A0h
	test	rax,rax
	jz	473670h

l0000000000473665:
	add	rsp,20h
	pop	rbx
	ret

l000000000047366B:
	call	470820h

l0000000000473670:
	call	4757C0h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop

;; fn0000000000473680: 0000000000473680
;;   Called from:
;;     000000000047367F (in fn0000000000473620)
fn0000000000473680 proc
	push	rbx
	sub	rsp,20h
	mov	rbx,rcx
	lea	rcx,[000000000048B5E0]                                 ; [rip+00017F51]
	call	42BB80h
	mov	rdx,[rbx]
	cmp	rax,[rdx+10h]
	mov	rcx,[rdx+8h]
	jnc	4736CBh

l00000000004736A1:
	mov	rcx,[rcx+rax*8]
	test	rcx,rcx
	jz	4736CBh

l00000000004736AA:
	lea	r8,[0000000000494030]                                  ; [rip+0002097F]
	lea	rdx,[00000000004931B0]                                 ; [rip+0001FAF8]
	xor	r9d,r9d
	call	4761A0h
	test	rax,rax
	jz	4736D0h

l00000000004736C5:
	add	rsp,20h
	pop	rbx
	ret

l00000000004736CB:
	call	470820h

l00000000004736D0:
	call	4757C0h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop

;; fn00000000004736E0: 00000000004736E0
;;   Called from:
;;     00000000004736DF (in fn0000000000473680)
fn00000000004736E0 proc
	push	rbx
	sub	rsp,20h
	mov	rbx,rcx
	lea	rcx,[000000000048B5F0]                                 ; [rip+00017F01]
	call	42BB80h
	mov	rdx,[rbx]
	cmp	rax,[rdx+10h]
	mov	rcx,[rdx+8h]
	jnc	47372Bh

l0000000000473701:
	mov	rcx,[rcx+rax*8]
	test	rcx,rcx
	jz	47372Bh

l000000000047370A:
	lea	r8,[0000000000494050]                                  ; [rip+0002093F]
	lea	rdx,[00000000004931B0]                                 ; [rip+0001FA98]
	xor	r9d,r9d
	call	4761A0h
	test	rax,rax
	jz	473730h

l0000000000473725:
	add	rsp,20h
	pop	rbx
	ret

l000000000047372B:
	call	470820h

l0000000000473730:
	call	4757C0h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop

;; fn0000000000473740: 0000000000473740
;;   Called from:
;;     000000000047373F (in fn00000000004736E0)
fn0000000000473740 proc
	push	rbx
	sub	rsp,20h
	mov	rbx,rcx
	lea	rcx,[000000000048B600]                                 ; [rip+00017EB1]
	call	42BB80h
	mov	rdx,[rbx]
	cmp	rax,[rdx+10h]
	mov	rcx,[rdx+8h]
	jnc	47378Bh

l0000000000473761:
	mov	rcx,[rcx+rax*8]
	test	rcx,rcx
	jz	47378Bh

l000000000047376A:
	lea	r8,[0000000000494070]                                  ; [rip+000208FF]
	lea	rdx,[00000000004931B0]                                 ; [rip+0001FA38]
	xor	r9d,r9d
	call	4761A0h
	test	rax,rax
	jz	473790h

l0000000000473785:
	add	rsp,20h
	pop	rbx
	ret

l000000000047378B:
	call	470820h

l0000000000473790:
	call	4757C0h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop

;; fn00000000004737A0: 00000000004737A0
;;   Called from:
;;     000000000047379F (in fn0000000000473740)
fn00000000004737A0 proc
	push	rbx
	sub	rsp,20h
	mov	rbx,rcx
	lea	rcx,[000000000048B610]                                 ; [rip+00017E61]
	call	42BB80h
	mov	rdx,[rbx]
	cmp	rax,[rdx+10h]
	mov	rcx,[rdx+8h]
	jnc	4737EBh

l00000000004737C1:
	mov	rcx,[rcx+rax*8]
	test	rcx,rcx
	jz	4737EBh

l00000000004737CA:
	lea	r8,[0000000000494090]                                  ; [rip+000208BF]
	lea	rdx,[00000000004931B0]                                 ; [rip+0001F9D8]
	xor	r9d,r9d
	call	4761A0h
	test	rax,rax
	jz	4737F0h

l00000000004737E5:
	add	rsp,20h
	pop	rbx
	ret

l00000000004737EB:
	call	470820h

l00000000004737F0:
	call	4757C0h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop

;; fn0000000000473800: 0000000000473800
;;   Called from:
;;     00000000004737FF (in fn00000000004737A0)
;;     0000000000473E8B (in fn0000000000473E70)
fn0000000000473800 proc
	push	rbp
	push	rbx
	sub	rsp,28h
	lea	rbp,[rsp+80h]
	mov	[rbp-40h],rcx
	mov	[rbp-38h],rdx
	mov	rcx,[rbp-40h]
	call	42AC70h
	mov	rbx,rax
	mov	rax,[rbp-38h]
	mov	rcx,rax
	call	42AC70h
	cmp	rbx,rax
	setz	al
	add	rsp,28h
	pop	rbx
	pop	rbp
	ret
000000000047383B                                  90 90 90 90 90            .....

;; fn0000000000473840: 0000000000473840
;;   Called from:
;;     00000000004016B3 (in fn0000000000401530)
;;     0000000000401A9B (in fn0000000000401530)
fn0000000000473840 proc
	push	rbp
	mov	rbp,rsp
	sub	rsp,20h
	mov	[rbp+10h],rcx
	mov	[rbp+18h],rdx
	mov	rax,[rbp+18h]
	mov	rdx,rax
	mov	rcx,[rbp+10h]
	call	428AD0h
	test	eax,eax
	setz	al
	add	rsp,20h
	pop	rbp
	ret
000000000047386B                                  90 90 90 90 90            .....

;; fn0000000000473870: 0000000000473870
fn0000000000473870 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	test	rdx,rdx
	mov	rsi,rcx
	mov	rbx,rdx
	jz	4738A1h

l0000000000473881:
	mov	rcx,rdx
	call	41BCB8h
	mov	rdx,rbx
	mov	r8,rax
	mov	rcx,rsi
	call	470070h
	mov	rax,rsi
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret

l00000000004738A1:
	mov	rax,[rcx]
	add	rcx,[rax-18h]
	mov	edx,[rcx+20h]
	or	edx,1h
	call	46E370h
	mov	rax,rsi
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret
00000000004738BD                                        90 90 90              ...

;; fn00000000004738C0: 00000000004738C0
;;   Called from:
;;     00000000004015B0 (in fn0000000000401530)
;;     0000000000401602 (in fn0000000000401530)
;;     000000000040162E (in fn0000000000401530)
;;     0000000000401680 (in fn0000000000401530)
;;     0000000000401715 (in fn0000000000401530)
;;     0000000000401917 (in fn0000000000401530)
;;     0000000000401AE4 (in fn0000000000401530)
;;     0000000000401B5C (in fn0000000000401530)
;;     0000000000401CEC (in fn0000000000401530)
;;     0000000000401DA9 (in fn0000000000401530)
;;     0000000000401EC5 (in fn0000000000401530)
;;     0000000000401F5B (in fn0000000000401530)
;;     0000000000401FF1 (in fn0000000000401530)
;;     0000000000402087 (in fn0000000000401530)
;;     000000000040211F (in fn0000000000401530)
;;     00000000004021AA (in fn0000000000401530)
;;     0000000000402204 (in fn0000000000401530)
;;     000000000040259C (in fn000000000040252C)
;;     00000000004025AF (in fn000000000040252C)
;;     00000000004025C2 (in fn000000000040252C)
;;     00000000004025D5 (in fn000000000040252C)
;;     00000000004025E8 (in fn000000000040252C)
;;     00000000004025FB (in fn000000000040252C)
;;     0000000000402639 (in fn000000000040252C)
;;     0000000000402677 (in fn000000000040252C)
;;     00000000004026E4 (in fn000000000040252C)
;;     00000000004027E6 (in fn000000000040252C)
;;     000000000040285B (in fn000000000040252C)
;;     00000000004028D2 (in fn000000000040252C)
;;     0000000000402AFE (in fn0000000000402A94)
;;     0000000000402FA2 (in fn0000000000402E6F)
;;     0000000000402FB5 (in fn0000000000402E6F)
;;     0000000000402FC8 (in fn0000000000402E6F)
;;     0000000000402FDB (in fn0000000000402E6F)
;;     0000000000403052 (in fn0000000000402E6F)
;;     0000000000403140 (in fn0000000000402E6F)
;;     0000000000403187 (in fn0000000000402E6F)
;;     0000000000403230 (in fn0000000000402E6F)
;;     00000000004032A7 (in fn0000000000402E6F)
fn00000000004738C0 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	test	rdx,rdx
	mov	rsi,rcx
	mov	rbx,rdx
	jz	4738F1h

l00000000004738D1:
	mov	rcx,rdx
	call	41BCB8h
	mov	rdx,rbx
	mov	r8,rax
	mov	rcx,rsi
	call	470070h
	mov	rax,rsi
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret

l00000000004738F1:
	mov	rax,[rcx]
	add	rcx,[rax-18h]
	mov	edx,[rcx+20h]
	or	edx,1h
	call	46E370h
	mov	rax,rsi
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret
000000000047390D                                        90 90 90              ...

;; fn0000000000473910: 0000000000473910
fn0000000000473910 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	test	rdx,rdx
	mov	rsi,rcx
	mov	rbx,rdx
	jz	473941h

l0000000000473921:
	mov	rcx,rdx
	call	41BCB8h
	mov	rdx,rbx
	mov	r8,rax
	mov	rcx,rsi
	call	470070h
	mov	rax,rsi
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret

l0000000000473941:
	mov	rax,[rcx]
	add	rcx,[rax-18h]
	mov	edx,[rcx+20h]
	or	edx,1h
	call	46E370h
	mov	rax,rsi
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret
000000000047395D                                        90 90 90              ...

;; fn0000000000473960: 0000000000473960
fn0000000000473960 proc
	sub	rsp,38h
	mov	r8d,1h
	mov	[rsp+2Fh],dl
	lea	rdx,[rsp+2Fh]
	call	470070h
	add	rsp,38h
	ret
000000000047397D                                        90 90 90              ...

;; fn0000000000473980: 0000000000473980
;;   Called from:
;;     000000000040197F (in fn0000000000401530)
;;     0000000000401A0A (in fn0000000000401530)
;;     0000000000401A56 (in fn0000000000401530)
;;     0000000000401A88 (in fn0000000000401530)
;;     000000000040223A (in fn0000000000401530)
;;     00000000004022B6 (in fn0000000000401530)
;;     00000000004022F8 (in fn0000000000401530)
;;     00000000004024A0 (in fn0000000000401530)
fn0000000000473980 proc
	sub	rsp,28h
	mov	r8d,1h
	mov	[rsp+38h],dl
	lea	rdx,[rsp+38h]
	call	470070h
	add	rsp,28h
	ret
000000000047399D                                        90 90 90              ...

;; fn00000000004739A0: 00000000004739A0
fn00000000004739A0 proc
	sub	rsp,38h
	mov	r8d,1h
	mov	[rsp+2Fh],dl
	lea	rdx,[rsp+2Fh]
	call	470070h
	add	rsp,38h
	ret
00000000004739BD                                        90 90 90              ...

;; fn00000000004739C0: 00000000004739C0
fn00000000004739C0 proc
	mov	rax,rcx
	mov	rcx,[rcx]
	mov	r8,rax
	add	r8,[rcx-18h]
	or	[r8+18h],edx
	ret
00000000004739D2       90 90 90 90 90 90 90 90 90 90 90 90 90 90   ..............

;; fn00000000004739E0: 00000000004739E0
fn00000000004739E0 proc
	mov	rax,rcx
	mov	rcx,[rcx]
	movsxd	rdx,edx
	mov	rcx,[rcx-18h]
	mov	[rax+rcx+8h],rdx
	ret
00000000004739F3          90 90 90 90 90 90 90 90 90 90 90 90 90    .............

;; fn0000000000473A00: 0000000000473A00
fn0000000000473A00 proc
	mov	rax,rcx
	mov	rcx,[rcx]
	not	edx
	mov	r8,rax
	add	r8,[rcx-18h]
	and	[r8+18h],edx
	ret
0000000000473A14             90 90 90 90 90 90 90 90 90 90 90 90     ............

;; fn0000000000473A20: 0000000000473A20
fn0000000000473A20 proc
	mov	rax,rcx
	mov	rcx,[rcx]
	movsxd	rdx,edx
	mov	rcx,[rcx-18h]
	mov	[rax+rcx+10h],rdx
	ret
0000000000473A33          90 90 90 90 90 90 90 90 90 90 90 90 90    .............

;; fn0000000000473A40: 0000000000473A40
fn0000000000473A40 proc
	cmp	edx,8h
	mov	rax,rcx
	jz	473A75h

l0000000000473A48:
	cmp	edx,0Ah
	mov	ecx,2h
	jz	473A5Dh

l0000000000473A52:
	xor	ecx,ecx
	cmp	edx,10h
	setz	cl
	shl	ecx,3h

l0000000000473A5D:
	mov	rdx,[rax]
	mov	r8,rax
	add	r8,[rdx-18h]
	mov	edx,[r8+18h]
	and	edx,0B5h
	or	edx,ecx
	mov	[r8+18h],edx
	ret

l0000000000473A75:
	mov	ecx,40h
	jmp	473A5Dh
0000000000473A7C                                     90 90 90 90             ....

;; fn0000000000473A80: 0000000000473A80
fn0000000000473A80 proc
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,28h
	mov	rax,[rcx]
	mov	rsi,rcx
	mov	rbx,rcx
	mov	edi,edx
	add	rsi,[rax-18h]
	cmp	byte ptr [rsi+0E1h],0h
	jz	473AB3h

l0000000000473AA0:
	mov	rax,rbx
	mov	[rsi+0E0h],dil
	add	rsp,28h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret

l0000000000473AB3:
	mov	rbp,[rsi+0F0h]
	test	rbp,rbp
	jz	473AF8h

l0000000000473ABF:
	cmp	byte ptr [rbp+38h],0h
	jz	473AD0h

l0000000000473AC5:
	mov	byte ptr [rsi+0E1h],1h
	jmp	473AA0h
0000000000473ACE                                           66 90               f.

l0000000000473AD0:
	mov	rcx,rbp
	call	42B320h
	mov	rax,[rbp+0h]
	lea	rdx,[000000000042B5F0]                                 ; [rip+FFFB7B0D]
	mov	rax,[rax+30h]
	cmp	rax,rdx
	jz	473AC5h

l0000000000473AEC:
	mov	edx,20h
	mov	rcx,rbp
	call	rax
	jmp	473AC5h

l0000000000473AF8:
	call	470820h
	nop
	nop
	nop

;; fn0000000000473B00: 0000000000473B00
;;   Called from:
;;     00000000004018CC (in fn0000000000401530)
;;     0000000000401908 (in fn0000000000401530)
;;     0000000000401949 (in fn0000000000401530)
;;     0000000000401AD5 (in fn0000000000401530)
;;     0000000000401B16 (in fn0000000000401530)
;;     0000000000401B4D (in fn0000000000401530)
;;     0000000000401B8E (in fn0000000000401530)
;;     0000000000401CDD (in fn0000000000401530)
;;     0000000000401D1E (in fn0000000000401530)
;;     0000000000401D9A (in fn0000000000401530)
;;     0000000000401DDB (in fn0000000000401530)
;;     0000000000401EB6 (in fn0000000000401530)
;;     0000000000401F4C (in fn0000000000401530)
;;     0000000000401FE2 (in fn0000000000401530)
;;     0000000000402078 (in fn0000000000401530)
;;     0000000000402110 (in fn0000000000401530)
;;     000000000040219B (in fn0000000000401530)
;;     000000000040234E (in fn0000000000401530)
;;     00000000004030E8 (in fn0000000000402E6F)
;;     0000000000473AFF (in fn0000000000473A80)
fn0000000000473B00 proc
	mov	rdx,[rdx]
	mov	r8,[rdx-18h]
	jmp	470070h
0000000000473B0C                                     90 90 90 90             ....

;; fn0000000000473B10: 0000000000473B10
fn0000000000473B10 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	test	rdx,rdx
	mov	rsi,rcx
	mov	rbx,rdx
	jz	473B41h

l0000000000473B21:
	mov	rcx,rdx
	call	41BD38h
	mov	rdx,rbx
	mov	r8,rax
	mov	rcx,rsi
	call	470480h
	mov	rax,rsi
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret

l0000000000473B41:
	mov	rax,[rcx]
	add	rcx,[rax-18h]
	mov	edx,[rcx+20h]
	or	edx,1h
	call	46EB40h
	mov	rax,rsi
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret
0000000000473B5D                                        90 90 90              ...

;; fn0000000000473B60: 0000000000473B60
fn0000000000473B60 proc
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,20h
	test	rdx,rdx
	mov	rsi,rcx
	mov	rbp,rdx
	jz	473C26h

l0000000000473B79:
	mov	rcx,rdx
	call	41BCB8h
	mov	rdx,3F80000000000000h
	mov	rdi,rax
	lea	rax,[rax+rax]
	cmp	rdi,rdx
	mov	rcx,-1h
	cmovbe	rcx,rax

l0000000000473BA0:
	call	475560h
	test	rdi,rdi
	mov	r12,rax
	jz	473C02h

l0000000000473BAD:
	mov	rax,[rsi]
	movzx	r9d,byte ptr [rbp+0h]
	mov	rax,[rax-18h]
	mov	rcx,[rsi+rax+0F0h]
	test	rcx,rcx
	jz	473C3Ah

l0000000000473BC6:
	xor	ebx,ebx
	jmp	473BEAh
0000000000473BCA                               66 0F 1F 44 00 00           f..D..

l0000000000473BD0:
	mov	rax,[rsi]
	movzx	r9d,byte ptr [rbp+rbx+0h]
	mov	rax,[rax-18h]
	mov	rcx,[rsi+rax+0F0h]
	test	rcx,rcx
	jz	473C3Ah

l0000000000473BEA:
	mov	rax,[rcx]
	movsx	edx,r9b
	call	qword ptr [rax+50h]
	mov	[r12+rbx*2],ax
	add	rbx,1h
	cmp	rbx,rdi
	jnz	473BD0h

l0000000000473C02:
	mov	r8,rdi
	mov	rdx,r12
	mov	rcx,rsi
	call	470480h
	mov	rcx,r12
	call	475540h

l0000000000473C18:
	mov	rax,rsi
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret

l0000000000473C26:
	mov	rax,[rcx]
	add	rcx,[rax-18h]
	mov	edx,[rcx+20h]
	or	edx,1h
	call	46EB40h
	jmp	473C18h

l0000000000473C3A:
	call	470820h
	mov	rbx,rax
	mov	rdi,rdx
	mov	rcx,r12
	call	475540h
	mov	rcx,rbx
	mov	rdx,rdi

l0000000000473C53:
	cmp	rdx,1h
	jnz	473C8Eh

l0000000000473C59:
	call	475840h
	mov	rax,[rsi]
	add	rsi,[rax-18h]
	or	dword ptr [rsi+20h],1h
	test	byte ptr [rsi+1Ch],1h
	jz	473C89h

l0000000000473C6F:
	call	476060h
	mov	rcx,rax
	jmp	473C53h
0000000000473C79                            48 89 C3 E8 EF 1D 00          H......
0000000000473C80 00 48 89 D9 E8 27 D9 F9 FF                      .H...'...      

l0000000000473C89:
	call	476060h

l0000000000473C8E:
	call	475840h
	mov	rax,[rsi]
	mov	rdi,rsi
	add	rdi,[rax-18h]
	or	dword ptr [rdi+20h],1h
	test	byte ptr [rdi+1Ch],1h
	jnz	473CB1h

l0000000000473CA7:
	call	475A70h
	jmp	473C18h

l0000000000473CB1:
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

;; fn0000000000473CD0: 0000000000473CD0
;;   Called from:
;;     0000000000473CCF (in fn0000000000473B60)
fn0000000000473CD0 proc
	sub	rsp,28h
	mov	r8d,1h
	mov	[rsp+38h],dx
	lea	rdx,[rsp+38h]
	call	470480h
	add	rsp,28h
	ret
0000000000473CEE                                           90 90               ..

;; fn0000000000473CF0: 0000000000473CF0
fn0000000000473CF0 proc
	mov	rax,rcx
	mov	rcx,[rcx]
	mov	r8,rax
	add	r8,[rcx-18h]
	or	[r8+18h],edx
	ret
0000000000473D02       90 90 90 90 90 90 90 90 90 90 90 90 90 90   ..............

;; fn0000000000473D10: 0000000000473D10
fn0000000000473D10 proc
	mov	rax,rcx
	mov	rcx,[rcx]
	movsxd	rdx,edx
	mov	rcx,[rcx-18h]
	mov	[rax+rcx+8h],rdx
	ret
0000000000473D23          90 90 90 90 90 90 90 90 90 90 90 90 90    .............

;; fn0000000000473D30: 0000000000473D30
fn0000000000473D30 proc
	mov	rax,rcx
	mov	rcx,[rcx]
	not	edx
	mov	r8,rax
	add	r8,[rcx-18h]
	and	[r8+18h],edx
	ret
0000000000473D44             90 90 90 90 90 90 90 90 90 90 90 90     ............

;; fn0000000000473D50: 0000000000473D50
fn0000000000473D50 proc
	mov	rax,rcx
	mov	rcx,[rcx]
	movsxd	rdx,edx
	mov	rcx,[rcx-18h]
	mov	[rax+rcx+10h],rdx
	ret
0000000000473D63          90 90 90 90 90 90 90 90 90 90 90 90 90    .............

;; fn0000000000473D70: 0000000000473D70
fn0000000000473D70 proc
	cmp	edx,8h
	mov	rax,rcx
	jz	473DA5h

l0000000000473D78:
	cmp	edx,0Ah
	mov	ecx,2h
	jz	473D8Dh

l0000000000473D82:
	xor	ecx,ecx
	cmp	edx,10h
	setz	cl
	shl	ecx,3h

l0000000000473D8D:
	mov	rdx,[rax]
	mov	r8,rax
	add	r8,[rdx-18h]
	mov	edx,[r8+18h]
	and	edx,0B5h
	or	edx,ecx
	mov	[r8+18h],edx
	ret

l0000000000473DA5:
	mov	ecx,40h
	jmp	473D8Dh
0000000000473DAC                                     90 90 90 90             ....

;; fn0000000000473DB0: 0000000000473DB0
fn0000000000473DB0 proc
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,20h
	mov	rax,[rcx]
	mov	rsi,rcx
	mov	rbx,rcx
	mov	edi,edx
	add	rsi,[rax-18h]
	cmp	byte ptr [rsi+0E2h],0h
	jz	473DE1h

l0000000000473DCF:
	mov	rax,rbx
	mov	[rsi+0E0h],di
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	ret

l0000000000473DE1:
	mov	rcx,[rsi+0F0h]
	test	rcx,rcx
	jz	473E01h

l0000000000473DED:
	mov	rax,[rcx]
	mov	edx,20h
	call	qword ptr [rax+50h]
	mov	byte ptr [rsi+0E2h],1h
	jmp	473DCFh

l0000000000473E01:
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

;; fn0000000000473E10: 0000000000473E10
;;   Called from:
;;     0000000000473E0F (in fn0000000000473DB0)
fn0000000000473E10 proc
	push	rbx
	sub	rsp,30h
	mov	rax,[rcx]
	mov	rbx,rcx
	mov	rax,[rax-18h]
	mov	rcx,[rcx+rax+0F0h]
	test	rcx,rcx
	jz	473E53h

l0000000000473E2C:
	mov	rax,[rcx]
	movsx	edx,dl
	call	qword ptr [rax+50h]
	lea	rdx,[rsp+2Eh]
	mov	r8d,1h
	mov	rcx,rbx
	mov	[rsp+2Eh],ax
	call	470480h
	add	rsp,30h
	pop	rbx
	ret

l0000000000473E53:
	call	470820h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop

;; fn0000000000473E60: 0000000000473E60
;;   Called from:
;;     0000000000473E5F (in fn0000000000473E10)
fn0000000000473E60 proc
	mov	rdx,[rdx]
	mov	r8,[rdx-18h]
	jmp	470480h
0000000000473E6C                                     90 90 90 90             ....

;; fn0000000000473E70: 0000000000473E70
;;   Called from:
;;     0000000000468800 (in fn00000000004687A0)
fn0000000000473E70 proc
	push	rbp
	mov	rbp,rsp
	sub	rsp,20h
	mov	[rbp+10h],rcx
	mov	[rbp+18h],rdx
	mov	rax,[rbp+18h]
	mov	rdx,rax
	mov	rcx,[rbp+10h]
	call	473800h
	xor	eax,1h
	add	rsp,20h
	pop	rbp
	ret
0000000000473E99                            90 90 90 90 90 90 90          .......

;; fn0000000000473EA0: 0000000000473EA0
fn0000000000473EA0 proc
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,30h
	lea	r12,[rsp+2Fh]
	mov	rbx,rcx
	mov	rcx,rdx
	mov	rdi,r8
	mov	rbp,rdx
	call	41BCB8h
	xor	edx,edx
	xor	ecx,ecx
	mov	r8,r12
	mov	rsi,rax
	call	4505D0h
	mov	[rbx],rax
	mov	rax,[rdi]
	mov	rdx,rsi
	mov	rcx,rbx
	add	rdx,[rax-18h]
	call	451BE0h
	test	rsi,rsi
	jz	473EF7h

l0000000000473EE9:
	mov	r8,rsi
	mov	rdx,rbp
	mov	rcx,rbx
	call	450E20h

l0000000000473EF7:
	mov	rdx,rdi
	mov	rcx,rbx
	call	450F00h
	mov	rax,rbx
	add	rsp,30h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
0000000000473F10 48 8B 13 48 89 C6 48 8D 4A E8 4C 89 E2 E8 3E CB H..H..H.J.L...>.
0000000000473F20 FD FF 48 89 F1 E8 86 D6 F9 FF 90 90 90 90 90 90 ..H.............

;; fn0000000000473F30: 0000000000473F30
fn0000000000473F30 proc
	push	rsi
	push	rbx
	sub	rsp,38h
	mov	rax,[rdx]
	mov	rbx,rcx
	mov	rsi,r8
	mov	edx,[rax-8h]
	test	edx,edx
	js	473F63h

l0000000000473F46:
	lock
	add	dword ptr [rax-8h],1h

l0000000000473F4B:
	mov	[rbx],rax
	mov	rdx,rsi
	mov	rcx,rbx
	call	450F00h
	mov	rax,rbx
	add	rsp,38h
	pop	rbx
	pop	rsi
	ret

l0000000000473F63:
	lea	rdx,[rsp+2Fh]
	lea	rcx,[rax-18h]
	xor	r8d,r8d
	call	450B00h
	jmp	473F4Bh
0000000000473F76                   48 8B 0B 48 8D 54 24 2F 48 89       H..H.T$/H.
0000000000473F80 C6 48 83 E9 18 E8 D6 CA FD FF 48 89 F1 E8 1E D6 .H........H.....
0000000000473F90 F9 FF 90 90 90 90 90 90 90 90 90 90 90 90 90 90 ................

;; fn0000000000473FA0: 0000000000473FA0
fn0000000000473FA0 proc
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,38h
	lea	rdi,[rsp+2Fh]
	mov	rbx,rcx
	mov	rsi,r8
	xor	ecx,ecx
	mov	ebp,edx
	xor	edx,edx
	mov	r8,rdi
	call	4505D0h
	mov	[rbx],rax
	mov	rax,[rsi]
	mov	rcx,rbx
	mov	rax,[rax-18h]
	lea	rdx,[rax+1h]
	call	451BE0h
	movsx	r8d,bpl
	mov	edx,1h
	mov	rcx,rbx
	call	4510A0h
	mov	rdx,rsi
	mov	rcx,rbx
	call	450F00h
	mov	rax,rbx
	add	rsp,38h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
0000000000473FFF                                              48                H
0000000000474000 8B 13 48 89 C6 48 8D 4A E8 48 89 FA E8 4F CA FD ..H..H.J.H...O..
0000000000474010 FF 48 89 F1 E8 97 D5 F9 FF 90 90 90 90 90 90 90 .H..............

;; fn0000000000474020: 0000000000474020
fn0000000000474020 proc
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,30h
	lea	r12,[rsp+2Fh]
	mov	rbx,rcx
	mov	rcx,rdx
	mov	rdi,r8
	mov	rbp,rdx
	call	41BD38h
	xor	edx,edx
	xor	ecx,ecx
	mov	r8,r12
	mov	rsi,rax
	call	448EB0h
	mov	[rbx],rax
	mov	rax,[rdi]
	mov	rdx,rsi
	mov	rcx,rbx
	add	rdx,[rax-18h]
	call	44A5D0h
	test	rsi,rsi
	jz	474077h

l0000000000474069:
	mov	r8,rsi
	mov	rdx,rbp
	mov	rcx,rbx
	call	449760h

l0000000000474077:
	mov	rdx,rdi
	mov	rcx,rbx
	call	449840h
	mov	rax,rbx
	add	rsp,30h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
0000000000474090 48 8B 13 48 89 C6 48 8D 4A E8 4C 89 E2 E8 CE 52 H..H..H.J.L....R
00000000004740A0 FD FF 48 89 F1 E8 06 D5 F9 FF 90 90 90 90 90 90 ..H.............

;; fn00000000004740B0: 00000000004740B0
fn00000000004740B0 proc
	push	rsi
	push	rbx
	sub	rsp,38h
	mov	rax,[rdx]
	mov	rbx,rcx
	mov	rsi,r8
	mov	edx,[rax-8h]
	test	edx,edx
	js	4740E3h

l00000000004740C6:
	lock
	add	dword ptr [rax-8h],1h

l00000000004740CB:
	mov	[rbx],rax
	mov	rdx,rsi
	mov	rcx,rbx
	call	449840h
	mov	rax,rbx
	add	rsp,38h
	pop	rbx
	pop	rsi
	ret

l00000000004740E3:
	lea	rdx,[rsp+2Fh]
	lea	rcx,[rax-18h]
	xor	r8d,r8d
	call	449420h
	jmp	4740CBh
00000000004740F6                   48 8B 0B 48 8D 54 24 2F 48 89       H..H.T$/H.
0000000000474100 C6 48 83 E9 18 E8 66 52 FD FF 48 89 F1 E8 9E D4 .H....fR..H.....
0000000000474110 F9 FF 90 90 90 90 90 90 90 90 90 90 90 90 90 90 ................

;; fn0000000000474120: 0000000000474120
fn0000000000474120 proc
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,38h
	lea	rdi,[rsp+2Fh]
	mov	rbx,rcx
	mov	rsi,r8
	xor	ecx,ecx
	mov	ebp,edx
	xor	edx,edx
	mov	r8,rdi
	call	448EB0h
	mov	[rbx],rax
	mov	rax,[rsi]
	mov	rcx,rbx
	mov	rax,[rax-18h]
	lea	rdx,[rax+1h]
	call	44A5D0h
	movzx	r8d,bp
	mov	edx,1h
	mov	rcx,rbx
	call	4499F0h
	mov	rdx,rsi
	mov	rcx,rbx
	call	449840h
	mov	rax,rbx
	add	rsp,38h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
000000000047417F                                              48                H
0000000000474180 8B 13 48 89 C6 48 8D 4A E8 48 89 FA E8 DF 51 FD ..H..H.J.H....Q.
0000000000474190 FF 48 89 F1 E8 17 D4 F9 FF 90 90 90 90 90 90 90 .H..............

;; fn00000000004741A0: 00000000004741A0
fn00000000004741A0 proc
	jmp	4741E0h
00000000004741A5                90 90 90 90 90 90 90 90 90 90 90      ...........

;; fn00000000004741B0: 00000000004741B0
fn00000000004741B0 proc
	jmp	4741E0h
00000000004741B5                90 90 90 90 90 90 90 90 90 90 90      ...........

;; fn00000000004741C0: 00000000004741C0
fn00000000004741C0 proc
	jmp	4744D0h
00000000004741C5                90 90 90 90 90 90 90 90 90 90 90      ...........

;; fn00000000004741D0: 00000000004741D0
fn00000000004741D0 proc
	jmp	4744D0h
00000000004741D5                90 90 90 90 90 90 90 90 90 90 90      ...........

;; fn00000000004741E0: 00000000004741E0
;;   Called from:
;;     00000000004741A0 (in fn00000000004741A0)
;;     00000000004741B0 (in fn00000000004741B0)
fn00000000004741E0 proc
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,48h
	xor	r8d,r8d
	mov	r12,rcx
	lea	rcx,[rsp+2Fh]
	mov	rdi,rdx
	mov	rdx,r12
	call	44D740h
	cmp	byte ptr [rsp+2Fh],0h
	mov	rax,[r12]
	jz	47435Dh

l0000000000474215:
	mov	rcx,r12
	add	rcx,[rax-18h]
	mov	rdx,7FFFFFFFFFFFFFFFh
	lea	rbx,[rsp+30h]
	mov	r15,[rcx+10h]
	test	r15,r15
	cmovle	r15,rdx

l0000000000474236:
	lea	rdx,[rcx+0D0h]
	mov	rcx,rbx
	call	46AE80h
	mov	rcx,rbx
	call	472FC0h
	mov	rcx,rbx
	mov	r14,rax
	call	46AF20h
	mov	rax,[r12]
	mov	rax,[rax-18h]
	mov	rsi,[r12+rax+0E8h]
	mov	rax,[rsi+10h]
	cmp	rax,[rsi+18h]
	jnc	474414h

l0000000000474276:
	movzx	eax,byte ptr [rax]

l0000000000474279:
	lea	r13,[r15-1h]
	xor	ebp,ebp
	nop

l0000000000474280:
	cmp	rbp,r13
	jge	47431Dh

l0000000000474289:
	cmp	eax,0FFh
	jz	47431Dh

l0000000000474292:
	mov	r8,[r14+30h]
	movzx	edx,al
	test	byte ptr [r8+rdx*2],20h
	jnz	474344h

l00000000004742A4:
	mov	rbx,r15
	mov	rdx,[rsi+10h]
	sub	rbx,rbp
	lea	rcx,[rbx-1h]
	mov	rbx,[rsi+18h]
	sub	rbx,rdx
	cmp	rcx,rbx
	cmovle	rbx,rcx

l00000000004742C0:
	cmp	rbx,1h
	jle	4743A1h

l00000000004742CA:
	lea	rax,[rdx+1h]
	add	rbx,rdx
	cmp	rbx,rax
	jbe	4742E5h

l00000000004742D6:
	movzx	ecx,byte ptr [rdx+1h]
	test	byte ptr [r8+rcx*2],20h
	jz	474385h

l00000000004742E5:
	mov	rbx,rax

l00000000004742E8:
	sub	rbx,rdx
	mov	rcx,rdi
	mov	r8,rbx
	add	rdi,rbx
	add	rbp,rbx
	call	41BCC0h
	mov	rax,rbx
	add	rax,[rsi+10h]
	cmp	rax,[rsi+18h]
	mov	[rsi+10h],rax
	jnc	4743D0h

l0000000000474311:
	cmp	rbp,r13
	movzx	eax,byte ptr [rax]
	jl	474289h

l000000000047431D:
	cmp	eax,0FFh
	jnz	474344h

l0000000000474322:
	mov	byte ptr [rdi],0h
	mov	rax,[r12]
	cmp	rbp,1h
	mov	rdx,[rax-18h]
	mov	qword ptr [r12+rdx+10h],+0h
	sbb	edx,edx
	and	edx,4h
	add	edx,2h
	jmp	474362h

l0000000000474344:
	mov	byte ptr [rdi],0h
	mov	rax,[r12]
	test	rbp,rbp
	mov	rdx,[rax-18h]
	mov	qword ptr [r12+rdx+10h],+0h
	jnz	474371h

l000000000047435D:
	mov	edx,4h

l0000000000474362:
	mov	rcx,r12
	add	rcx,[rax-18h]
	or	edx,[rcx+20h]
	call	46E370h

l0000000000474371:
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

l0000000000474385:
	add	rax,1h
	cmp	rax,rbx
	jz	4742E8h

l0000000000474392:
	movzx	ecx,byte ptr [rax]
	test	byte ptr [r8+rcx*2],20h
	jz	474385h

l000000000047439C:
	jmp	4742E5h

l00000000004743A1:
	mov	[rdi],al
	mov	rax,[rsi+10h]
	add	rbp,1h
	mov	rdx,[rsi+18h]
	lea	rbx,[rdi+1h]
	cmp	rax,rdx
	jnc	4743DEh

l00000000004743B8:
	add	rax,1h
	mov	[rsi+10h],rax

l00000000004743C0:
	cmp	rax,rdx
	jnc	474403h

l00000000004743C5:
	movzx	eax,byte ptr [rax]
	mov	rdi,rbx
	jmp	474280h

l00000000004743D0:
	mov	rax,[rsi]
	mov	rcx,rsi
	call	qword ptr [rax+48h]
	jmp	474280h

l00000000004743DE:
	mov	rax,[rsi]
	mov	rcx,rsi
	call	qword ptr [rax+50h]
	mov	edx,eax
	mov	eax,0FFFFFFFFh
	mov	rdi,rbx
	cmp	edx,eax
	jz	474280h

l00000000004743F9:
	mov	rax,[rsi+10h]
	mov	rdx,[rsi+18h]
	jmp	4743C0h

l0000000000474403:
	mov	rax,[rsi]
	mov	rcx,rsi
	call	qword ptr [rax+48h]
	mov	rdi,rbx
	jmp	474280h

l0000000000474414:
	mov	rax,[rsi]
	mov	rcx,rsi
	call	qword ptr [rax+48h]
	jmp	474279h
0000000000474422       31 ED 48 83 FA 01 75 3A 48 89 C1 E8 0E 14   1.H...u:H.....
0000000000474430 00 00 49 8B 04 24 4C 03 60 E8 41 83 4C 24 20 01 ..I..$L.`.A.L$ .
0000000000474440 41 F6 44 24 1C 01 74 17 E8 13 1C 00 00 EB D5 48 A.D$..t........H
0000000000474450 89 C3 E8 19 16 00 00 48 89 D9 E8 51 D1 F9 FF E8 .......H...Q....
0000000000474460 FC 1B 00 00 48 89 C1 4C 89 E7 E8 D1 13 00 00 49 ....H..L.......I
0000000000474470 8B 04 24 48 03 78 E8 83 4F 20 01 F6 47 1C 01 75 ..$H.x..O ..G..u
0000000000474480 35 E8 EA 15 00 00 48 85 ED 0F 85 E2 FE FF FF 49 5.....H........I
0000000000474490 8B 04 24 BA 04 00 00 00 E9 C5 FE FF FF 48 89 C6 ..$..........H..
00000000004744A0 48 89 D7 48 89 D9 E8 75 6A FF FF 48 89 F0 48 89 H..H...uj..H..H.
00000000004744B0 FA E9 6C FF FF FF E8 A5 1B 00 00 48 89 C3 E8 AD ..l........H....
00000000004744C0 15 00 00 48 89 D9 E8 E5 D0 F9 FF 90 90 90 90 90 ...H............

;; fn00000000004744D0: 00000000004744D0
;;   Called from:
;;     00000000004741C0 (in fn00000000004741C0)
;;     00000000004741D0 (in fn00000000004741D0)
fn00000000004744D0 proc
	push	rsi
	push	rbx
	sub	rsp,38h
	xor	r8d,r8d
	mov	rbx,rcx
	lea	rcx,[rsp+2Fh]
	mov	rsi,rdx
	mov	rdx,rbx
	call	44D740h
	cmp	byte ptr [rsp+2Fh],0h
	jnz	474500h

l00000000004744F3:
	mov	rax,rbx
	add	rsp,38h
	pop	rbx
	pop	rsi
	ret
00000000004744FD                                        0F 1F 00              ...

l0000000000474500:
	mov	rax,[rbx]
	mov	rax,[rax-18h]
	mov	rcx,[rbx+rax+0E8h]
	mov	r8,[rcx+10h]
	cmp	r8,[rcx+18h]
	jnc	474531h

l0000000000474519:
	movzx	eax,byte ptr [r8]
	add	r8,1h
	mov	[rcx+10h],r8

l0000000000474525:
	mov	[rsi],al
	mov	rax,rbx
	add	rsp,38h
	pop	rbx
	pop	rsi
	ret

l0000000000474531:
	mov	rax,[rcx]
	call	qword ptr [rax+50h]
	cmp	eax,0FFh
	jnz	474525h

l000000000047453C:
	mov	rax,[rbx]
	mov	rcx,rbx
	add	rcx,[rax-18h]
	mov	edx,[rcx+20h]
	or	edx,6h
	call	46E370h
	jmp	4744F3h
0000000000474553          48 83 EA 01 48 89 C1 75 1B E8 DF 12 00    H...H..u.....
0000000000474560 00 48 8B 03 48 03 58 E8 83 4B 20 01 F6 43 1C 01 .H..H.X..K ..C..
0000000000474570 74 38 E8 E9 1A 00 00 E8 C4 12 00 00 48 8B 03 48 t8..........H..H
0000000000474580 89 DE 48 03 70 E8 83 4E 20 01 F6 46 1C 01 75 1F ..H.p..N ..F..u.
0000000000474590 E8 DB 14 00 00 E9 59 FF FF FF 48 89 C3 E8 CE 14 ......Y...H.....
00000000004745A0 00 00 48 89 D9 E8 06 D0 F9 FF E8 B1 1A 00 00 E8 ..H.............
00000000004745B0 AC 1A 00 00 48 89 C3 E8 B4 14 00 00 48 89 D9 E8 ....H.......H...
00000000004745C0 EC CF F9 FF 90 90 90 90 90 90 90 90 90 90 90 90 ................

;; fn00000000004745D0: 00000000004745D0
fn00000000004745D0 proc
	mov	rax,rcx
	mov	rcx,[rcx]
	mov	r8,rax
	add	r8,[rcx-18h]
	or	[r8+18h],edx
	ret
00000000004745E2       90 90 90 90 90 90 90 90 90 90 90 90 90 90   ..............

;; fn00000000004745F0: 00000000004745F0
fn00000000004745F0 proc
	mov	rax,rcx
	mov	rcx,[rcx]
	movsxd	rdx,edx
	mov	rcx,[rcx-18h]
	mov	[rax+rcx+8h],rdx
	ret
0000000000474603          90 90 90 90 90 90 90 90 90 90 90 90 90    .............

;; fn0000000000474610: 0000000000474610
fn0000000000474610 proc
	mov	rax,rcx
	mov	rcx,[rcx]
	not	edx
	mov	r8,rax
	add	r8,[rcx-18h]
	and	[r8+18h],edx
	ret
0000000000474624             90 90 90 90 90 90 90 90 90 90 90 90     ............

;; fn0000000000474630: 0000000000474630
fn0000000000474630 proc
	mov	rax,rcx
	mov	rcx,[rcx]
	movsxd	rdx,edx
	mov	rcx,[rcx-18h]
	mov	[rax+rcx+10h],rdx
	ret
0000000000474643          90 90 90 90 90 90 90 90 90 90 90 90 90    .............

;; fn0000000000474650: 0000000000474650
fn0000000000474650 proc
	cmp	edx,8h
	mov	rax,rcx
	jz	474685h

l0000000000474658:
	cmp	edx,0Ah
	mov	ecx,2h
	jz	47466Dh

l0000000000474662:
	xor	ecx,ecx
	cmp	edx,10h
	setz	cl
	shl	ecx,3h

l000000000047466D:
	mov	rdx,[rax]
	mov	r8,rax
	add	r8,[rdx-18h]
	mov	edx,[r8+18h]
	and	edx,0B5h
	or	edx,ecx
	mov	[r8+18h],edx
	ret

l0000000000474685:
	mov	ecx,40h
	jmp	47466Dh
000000000047468C                                     90 90 90 90             ....

;; fn0000000000474690: 0000000000474690
fn0000000000474690 proc
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,28h
	mov	rax,[rcx]
	mov	rsi,rcx
	mov	rbx,rcx
	mov	edi,edx
	add	rsi,[rax-18h]
	cmp	byte ptr [rsi+0E1h],0h
	jz	4746C3h

l00000000004746B0:
	mov	rax,rbx
	mov	[rsi+0E0h],dil
	add	rsp,28h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret

l00000000004746C3:
	mov	rbp,[rsi+0F0h]
	test	rbp,rbp
	jz	474708h

l00000000004746CF:
	cmp	byte ptr [rbp+38h],0h
	jz	4746E0h

l00000000004746D5:
	mov	byte ptr [rsi+0E1h],1h
	jmp	4746B0h
00000000004746DE                                           66 90               f.

l00000000004746E0:
	mov	rcx,rbp
	call	42B320h
	mov	rax,[rbp+0h]
	lea	rdx,[000000000042B5F0]                                 ; [rip+FFFB6EFD]
	mov	rax,[rax+30h]
	cmp	rax,rdx
	jz	4746D5h

l00000000004746FC:
	mov	edx,20h
	mov	rcx,rbp
	call	rax
	jmp	4746D5h

l0000000000474708:
	call	470820h
	nop
	nop
	nop

;; fn0000000000474710: 0000000000474710
;;   Called from:
;;     000000000047470F (in fn0000000000474690)
fn0000000000474710 proc
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,48h
	xor	r8d,r8d
	mov	r12,rcx
	lea	rcx,[rsp+2Fh]
	mov	rbx,rdx
	mov	rdx,r12
	call	44D740h
	cmp	byte ptr [rsp+2Fh],0h
	jnz	474769h

l000000000047473D:
	mov	rax,[r12]
	mov	edx,4h

l0000000000474746:
	mov	rcx,r12
	add	rcx,[rax-18h]
	or	edx,[rcx+20h]
	call	46E370h

l0000000000474755:
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

l0000000000474769:
	mov	rax,[rbx]
	xor	r9d,r9d
	xor	edx,edx
	mov	rcx,rbx
	mov	r8,[rax-18h]
	call	451CC0h
	mov	rax,[r12]
	mov	rsi,r12
	mov	rbp,3FFFFFFFFFFFFFF9h
	add	rsi,[rax-18h]
	mov	rdx,[rsi+10h]
	test	rdx,rdx
	cmovg	rbp,rdx

l000000000047479D:
	lea	rdx,[rsi+0D0h]
	lea	rsi,[rsp+30h]
	mov	rcx,rsi
	call	46AE80h
	mov	rcx,rsi
	call	472FC0h
	mov	rcx,rsi
	mov	r13,rax
	call	46AF20h
	mov	rax,[r12]
	mov	rax,[rax-18h]
	mov	rdi,[r12+rax+0E8h]
	mov	rax,[rdi+10h]
	cmp	rax,[rdi+18h]
	jnc	4749C1h

l00000000004747E2:
	movzx	eax,byte ptr [rax]

l00000000004747E5:
	mov	r10,[r13+30h]
	movzx	edx,al
	xor	esi,esi
	test	byte ptr [r10+rdx*2],20h
	jnz	47488Ah

l00000000004747F9:
	nop	dword ptr [rax+0h]

l0000000000474800:
	mov	rdx,[rdi+10h]
	mov	r8,[rdi+18h]
	mov	rcx,rbp
	sub	rcx,rsi
	sub	r8,rdx
	cmp	rcx,r8
	cmovle	r8,rcx

l0000000000474818:
	cmp	r8,1h
	jle	4748C9h

l0000000000474822:
	lea	r9,[rdx+1h]
	add	r8,rdx
	cmp	r8,r9
	jbe	474840h

l000000000047482E:
	movzx	eax,byte ptr [rdx+1h]
	test	byte ptr [r10+rax*2],20h
	jz	4748B0h

l0000000000474839:
	nop	dword ptr [rax+0h]

l0000000000474840:
	mov	r8,r9

l0000000000474843:
	mov	r14,r8
	mov	rcx,rbx
	sub	r14,rdx
	mov	r8,r14
	call	450E00h
	mov	rax,r14
	add	rax,[rdi+10h]
	add	rsi,r14
	cmp	rax,[rdi+18h]
	mov	[rdi+10h],rax
	jnc	474933h

l000000000047486C:
	cmp	rbp,rsi
	movzx	eax,byte ptr [rax]
	jbe	474970h

l0000000000474878:
	mov	r10,[r13+30h]
	movzx	edx,al
	test	byte ptr [r10+rdx*2],20h
	jz	474800h

l000000000047488A:
	mov	rax,[r12]
	test	rsi,rsi
	mov	rdx,[rax-18h]
	mov	qword ptr [r12+rdx+10h],+0h
	jnz	474755h

l00000000004748A4:
	mov	edx,4h
	jmp	474746h
00000000004748AE                                           66 90               f.

l00000000004748B0:
	add	r9,1h
	cmp	r9,r8
	jz	474843h

l00000000004748B9:
	movzx	eax,byte ptr [r9]
	test	byte ptr [r10+rax*2],20h
	jz	4748B0h

l00000000004748C4:
	jmp	474840h

l00000000004748C9:
	mov	r14d,eax
	mov	rax,[rbx]
	mov	rdx,[rax-18h]
	lea	r15,[rdx+1h]
	cmp	r15,[rax-10h]
	ja	4748E4h

l00000000004748DD:
	mov	ecx,[rax-8h]
	test	ecx,ecx
	jle	4748F6h

l00000000004748E4:
	mov	rdx,r15
	mov	rcx,rbx
	call	451BE0h
	mov	rax,[rbx]
	mov	rdx,[rax-18h]

l00000000004748F6:
	mov	[rax+rdx],r14b
	mov	rax,[rbx]
	add	rsi,1h
	mov	dword ptr [rax-8h],0h
	mov	[rax-18h],r15
	mov	byte ptr [rax+r15],0h
	mov	rax,[rdi+10h]
	mov	rdx,[rdi+18h]
	cmp	rax,rdx
	jnc	4749A6h

l0000000000474922:
	add	rax,1h
	mov	[rdi+10h],rax

l000000000047492A:
	cmp	rax,rdx
	jc	47486Ch

l0000000000474933:
	mov	rax,[rdi]
	mov	rcx,rdi
	call	qword ptr [rax+48h]
	cmp	rbp,rsi
	jbe	474970h

l0000000000474941:
	cmp	eax,0FFh
	jnz	474878h

l000000000047494A:
	mov	rax,[r12]
	cmp	rsi,1h
	mov	rdx,[rax-18h]
	mov	qword ptr [r12+rdx+10h],+0h
	sbb	edx,edx
	and	edx,4h
	add	edx,2h
	jmp	474746h
000000000047496C                                     0F 1F 40 00             ..@.

l0000000000474970:
	cmp	eax,0FFh
	jnz	474990h

l0000000000474975:
	mov	rax,[r12]
	mov	rdx,[rax-18h]
	mov	qword ptr [r12+rdx+10h],+0h
	mov	edx,2h
	jmp	474746h

l0000000000474990:
	mov	rax,[r12]
	mov	rax,[rax-18h]
	mov	qword ptr [r12+rax+10h],+0h
	jmp	474755h

l00000000004749A6:
	mov	rax,[rdi]
	mov	rcx,rdi
	call	qword ptr [rax+50h]
	cmp	eax,0FFh
	jz	47494Ah

l00000000004749B4:
	mov	rax,[rdi+10h]
	mov	rdx,[rdi+18h]
	jmp	47492Ah

l00000000004749C1:
	mov	rax,[rdi]
	mov	rcx,rdi
	call	qword ptr [rax+48h]
	cmp	eax,0FFh
	jnz	4747E5h

l00000000004749D3:
	xor	esi,esi
	jmp	47494Ah
00000000004749DA                               48 83 FA 01 75 3C           H...u<
00000000004749E0 48 89 C1 E8 58 0E 00 00 49 8B 04 24 4C 03 60 E8 H...X...I..$L.`.
00000000004749F0 41 83 4C 24 20 01 41 F6 44 24 1C 01 74 19 E8 5D A.L$ .A.D$..t..]
0000000000474A00 16 00 00 31 F6 EB D3 48 89 C3 E8 61 10 00 00 48 ...1...H...a...H
0000000000474A10 89 D9 E8 99 CB F9 FF E8 44 16 00 00 48 89 C1 4C ........D...H..L
0000000000474A20 89 E7 E8 19 0E 00 00 49 8B 04 24 48 03 78 E8 83 .......I..$H.x..
0000000000474A30 4F 20 01 F6 47 1C 01 75 30 E8 32 10 00 00 48 85 O ..G..u0.2...H.
0000000000474A40 F6 0F 85 0E FD FF FF E9 F1 FC FF FF EB B5 48 89 ..............H.
0000000000474A50 C3 48 89 D7 48 89 F1 E8 C4 64 FF FF 31 F6 48 89 .H..H....d..1.H.
0000000000474A60 D8 48 89 FA E9 71 FF FF FF E8 F2 15 00 00 48 89 .H...q........H.
0000000000474A70 C3 E8 FA 0F 00 00 48 89 D9 E8 32 CB F9 FF 90 90 ......H...2.....

;; fn0000000000474A80: 0000000000474A80
fn0000000000474A80 proc
	push	r14
	push	r13
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,40h
	xor	r8d,r8d
	mov	rbp,rcx
	lea	rcx,[rsp+2Fh]
	mov	r12,rdx
	mov	rdx,rbp
	call	45C740h
	cmp	byte ptr [rsp+2Fh],0h
	mov	rax,[rbp+0h]
	jz	474BA4h

l0000000000474AB3:
	mov	rdx,rbp
	add	rdx,[rax-18h]
	lea	rbx,[rsp+30h]
	mov	rax,7FFFFFFFFFFFFFFFh
	mov	rcx,rbx
	mov	r13,[rdx+10h]
	test	r13,r13
	cmovle	r13,rax

l0000000000474AD7:
	add	rdx,+0D0h
	call	46AE80h
	mov	rcx,rbx
	call	473020h
	mov	rcx,rbx
	mov	r14,rax
	call	46AF20h
	mov	rax,[rbp+0h]
	mov	rax,[rax-18h]
	mov	rsi,[rbp+rax+0E8h]
	mov	rax,[rsi+10h]
	cmp	rax,[rsi+18h]
	jnc	474BF0h

l0000000000474B14:
	movzx	ebx,word ptr [rax]

l0000000000474B17:
	sub	r13,1h
	xor	edi,edi
	nop	dword ptr [rax]

l0000000000474B20:
	cmp	rdi,r13
	jge	474B81h

l0000000000474B25:
	cmp	bx,0FFh
	jz	474B81h

l0000000000474B2B:
	mov	rax,[r14]
	movzx	r8d,bx
	mov	edx,20h
	mov	rcx,r14
	call	qword ptr [rax+10h]
	test	al,al
	jnz	474B87h

l0000000000474B41:
	add	r12,2h
	add	rdi,1h
	mov	r8,[rsi+10h]
	cmp	r8,[rsi+18h]
	mov	[r12-2h],bx
	jnc	474BE2h

l0000000000474B5D:
	movzx	eax,word ptr [r8]
	add	r8,2h
	mov	[rsi+10h],r8

l0000000000474B69:
	cmp	ax,0FFh
	jz	474BDBh

l0000000000474B6F:
	mov	rax,[rsi+10h]
	cmp	rax,[rsi+18h]
	jnc	474BD2h

l0000000000474B79:
	cmp	rdi,r13
	movzx	ebx,word ptr [rax]
	jl	474B25h

l0000000000474B81:
	cmp	bx,0FFh
	jz	474C00h

l0000000000474B87:
	xor	eax,eax
	test	rdi,rdi
	mov	[r12],ax
	mov	rax,[rbp+0h]
	mov	rdx,[rax-18h]
	mov	qword ptr [rbp+rdx+10h],+0h
	jnz	474BC0h

l0000000000474BA4:
	mov	edx,4h

l0000000000474BA9:
	mov	rcx,rbp
	add	rcx,[rax-18h]
	or	edx,[rcx+20h]
	call	46EB40h
	nop	dword ptr [rax+rax+0h]

l0000000000474BC0:
	mov	rax,rbp
	add	rsp,40h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	ret

l0000000000474BD2:
	mov	rax,[rsi]
	mov	rcx,rsi
	call	qword ptr [rax+48h]

l0000000000474BDB:
	mov	ebx,eax
	jmp	474B20h

l0000000000474BE2:
	mov	rax,[rsi]
	mov	rcx,rsi
	call	qword ptr [rax+50h]
	jmp	474B69h

l0000000000474BF0:
	mov	rax,[rsi]
	mov	rcx,rsi
	call	qword ptr [rax+48h]
	mov	ebx,eax
	jmp	474B17h

l0000000000474C00:
	mov	rax,[rbp+0h]
	xor	edx,edx
	cmp	rdi,1h
	mov	[r12],dx
	mov	rdx,[rax-18h]
	mov	qword ptr [rbp+rdx+10h],+0h
	sbb	edx,edx
	and	edx,4h
	add	edx,2h
	jmp	474BA9h
0000000000474C29                            31 FF 48 83 FA 01 75          1.H...u
0000000000474C30 4C 48 89 C1 E8 07 0C 00 00 48 8B 45 00 48 03 68 LH.......H.E.H.h
0000000000474C40 E8 83 4D 20 01 F6 45 1C 01 74 2D E8 10 14 00 00 ..M ..E..t-.....
0000000000474C50 48 89 C6 48 89 D7 48 89 D9 E8 C2 62 FF FF 48 89 H..H..H....b..H.
0000000000474C60 F0 48 89 FA EB C3 EB C3 48 89 C3 E8 00 0E 00 00 .H......H.......
0000000000474C70 48 89 D9 E8 38 C9 F9 FF E8 E3 13 00 00 48 89 C1 H...8........H..
0000000000474C80 E8 BB 0B 00 00 48 8B 45 00 48 89 E9 48 03 48 E8 .....H.E.H..H.H.
0000000000474C90 83 49 20 01 F6 41 1C 01 75 1C E8 D1 0D 00 00 48 .I ..A..u......H
0000000000474CA0 85 FF 0F 85 18 FF FF FF 48 8B 45 00 BA 04 00 00 ........H.E.....
0000000000474CB0 00 E9 F3 FE FF FF E8 A5 13 00 00 48 89 C3 E8 AD ...........H....
0000000000474CC0 0D 00 00 48 89 D9 E8 E5 C8 F9 FF 90 90 90 90 90 ...H............

;; fn0000000000474CD0: 0000000000474CD0
fn0000000000474CD0 proc
	push	rsi
	push	rbx
	sub	rsp,38h
	xor	r8d,r8d
	mov	rbx,rcx
	lea	rcx,[rsp+2Fh]
	mov	rsi,rdx
	mov	rdx,rbx
	call	45C740h
	cmp	byte ptr [rsp+2Fh],0h
	jnz	474D00h

l0000000000474CF3:
	mov	rax,rbx
	add	rsp,38h
	pop	rbx
	pop	rsi
	ret
0000000000474CFD                                        0F 1F 00              ...

l0000000000474D00:
	mov	rax,[rbx]
	mov	rax,[rax-18h]
	mov	rcx,[rbx+rax+0E8h]
	mov	r8,[rcx+10h]
	cmp	r8,[rcx+18h]
	jnc	474D60h

l0000000000474D19:
	movzx	eax,word ptr [r8]
	add	r8,2h
	mov	[rcx+10h],r8

l0000000000474D25:
	cmp	ax,0FFh
	jz	474D40h

l0000000000474D2B:
	mov	[rsi],ax
	mov	rax,rbx
	add	rsp,38h
	pop	rbx
	pop	rsi
	ret
0000000000474D38                         0F 1F 84 00 00 00 00 00         ........

l0000000000474D40:
	mov	rax,[rbx]
	mov	rcx,rbx
	add	rcx,[rax-18h]
	mov	edx,[rcx+20h]
	or	edx,6h
	call	46EB40h
	mov	rax,rbx
	add	rsp,38h
	pop	rbx
	pop	rsi
	ret
0000000000474D5F                                              90                .

l0000000000474D60:
	mov	rax,[rcx]
	call	qword ptr [rax+50h]
	jmp	474D25h
0000000000474D68                         48 83 EA 01 48 89 C1 75         H...H..u
0000000000474D70 1B E8 CA 0A 00 00 48 8B 03 48 03 58 E8 83 4B 20 ......H..H.X..K 
0000000000474D80 01 F6 43 1C 01 74 38 E8 D4 12 00 00 E8 AF 0A 00 ..C..t8.........
0000000000474D90 00 48 8B 03 48 89 DE 48 03 70 E8 83 4E 20 01 F6 .H..H..H.p..N ..
0000000000474DA0 46 1C 01 75 1F E8 C6 0C 00 00 E9 44 FF FF FF 48 F..u.......D...H
0000000000474DB0 89 C3 E8 B9 0C 00 00 48 89 D9 E8 F1 C7 F9 FF E8 .......H........
0000000000474DC0 9C 12 00 00 E8 97 12 00 00 48 89 C3 E8 9F 0C 00 .........H......
0000000000474DD0 00 48 89 D9 E8 D7 C7 F9 FF 90 90 90 90 90 90 90 .H..............

;; fn0000000000474DE0: 0000000000474DE0
fn0000000000474DE0 proc
	mov	rax,rcx
	mov	rcx,[rcx]
	mov	r8,rax
	add	r8,[rcx-18h]
	or	[r8+18h],edx
	ret
0000000000474DF2       90 90 90 90 90 90 90 90 90 90 90 90 90 90   ..............

;; fn0000000000474E00: 0000000000474E00
fn0000000000474E00 proc
	mov	rax,rcx
	mov	rcx,[rcx]
	movsxd	rdx,edx
	mov	rcx,[rcx-18h]
	mov	[rax+rcx+8h],rdx
	ret
0000000000474E13          90 90 90 90 90 90 90 90 90 90 90 90 90    .............

;; fn0000000000474E20: 0000000000474E20
fn0000000000474E20 proc
	mov	rax,rcx
	mov	rcx,[rcx]
	not	edx
	mov	r8,rax
	add	r8,[rcx-18h]
	and	[r8+18h],edx
	ret
0000000000474E34             90 90 90 90 90 90 90 90 90 90 90 90     ............

;; fn0000000000474E40: 0000000000474E40
fn0000000000474E40 proc
	mov	rax,rcx
	mov	rcx,[rcx]
	movsxd	rdx,edx
	mov	rcx,[rcx-18h]
	mov	[rax+rcx+10h],rdx
	ret
0000000000474E53          90 90 90 90 90 90 90 90 90 90 90 90 90    .............

;; fn0000000000474E60: 0000000000474E60
fn0000000000474E60 proc
	cmp	edx,8h
	mov	rax,rcx
	jz	474E95h

l0000000000474E68:
	cmp	edx,0Ah
	mov	ecx,2h
	jz	474E7Dh

l0000000000474E72:
	xor	ecx,ecx
	cmp	edx,10h
	setz	cl
	shl	ecx,3h

l0000000000474E7D:
	mov	rdx,[rax]
	mov	r8,rax
	add	r8,[rdx-18h]
	mov	edx,[r8+18h]
	and	edx,0B5h
	or	edx,ecx
	mov	[r8+18h],edx
	ret

l0000000000474E95:
	mov	ecx,40h
	jmp	474E7Dh
0000000000474E9C                                     90 90 90 90             ....

;; fn0000000000474EA0: 0000000000474EA0
fn0000000000474EA0 proc
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,20h
	mov	rax,[rcx]
	mov	rsi,rcx
	mov	rbx,rcx
	mov	edi,edx
	add	rsi,[rax-18h]
	cmp	byte ptr [rsi+0E2h],0h
	jz	474ED1h

l0000000000474EBF:
	mov	rax,rbx
	mov	[rsi+0E0h],di
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	ret

l0000000000474ED1:
	mov	rcx,[rsi+0F0h]
	test	rcx,rcx
	jz	474EF1h

l0000000000474EDD:
	mov	rax,[rcx]
	mov	edx,20h
	call	qword ptr [rax+50h]
	mov	byte ptr [rsi+0E2h],1h
	jmp	474EBFh

l0000000000474EF1:
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

;; fn0000000000474F00: 0000000000474F00
;;   Called from:
;;     0000000000474EFF (in fn0000000000474EA0)
fn0000000000474F00 proc
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,+138h
	xor	r8d,r8d
	mov	rdi,rcx
	lea	rcx,[rsp+2Fh]
	mov	r13,rdx
	mov	rdx,rdi
	call	45C740h
	cmp	byte ptr [rsp+2Fh],0h
	jnz	474F60h

l0000000000474F30:
	mov	rax,[rdi]
	mov	edx,4h

l0000000000474F38:
	mov	rcx,rdi
	add	rcx,[rax-18h]
	or	edx,[rcx+20h]
	call	46EB40h

l0000000000474F47:
	mov	rax,rdi
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
0000000000474F5E                                           66 90               f.

l0000000000474F60:
	mov	rax,[r13+0h]
	xor	r9d,r9d
	xor	edx,edx
	mov	rcx,r13
	mov	r8,[rax-18h]
	call	44A6C0h
	mov	rax,[rdi]
	mov	rdx,rdi
	lea	r14,[rsp+30h]
	mov	r12,1FFFFFFFFFFFFFFCh
	mov	rcx,r14
	add	rdx,[rax-18h]
	mov	rax,[rdx+10h]
	test	rax,rax
	cmovg	r12,rax

l0000000000474F9C:
	add	rdx,+0D0h
	call	46AE80h
	mov	rcx,r14
	call	473020h
	mov	rcx,r14
	mov	r15,rax
	call	46AF20h
	mov	rax,[rdi]
	mov	rax,[rax-18h]
	mov	rbx,[rdi+rax+0E8h]
	mov	rax,[rbx+10h]
	cmp	rax,[rbx+18h]
	jnc	47519Dh

l0000000000474FD8:
	movzx	ebx,word ptr [rax]

l0000000000474FDB:
	cmp	bx,0FFh
	jz	4750C0h

l0000000000474FE5:
	xor	esi,esi
	xor	ebp,ebp
	nop	dword ptr [rax+0h]

l0000000000474FF0:
	mov	rax,[r15]
	movzx	r8d,bx
	mov	edx,20h
	mov	rcx,r15
	call	qword ptr [rax+10h]
	test	al,al
	jnz	47507Eh

l0000000000475006:
	cmp	rbp,+80h
	jz	4750D0h

l0000000000475013:
	mov	rax,rbp
	add	rbp,1h

l000000000047501A:
	mov	[rsp+rax*2+30h],bx
	mov	rax,[rdi]
	add	rsi,1h
	mov	rax,[rax-18h]
	mov	rbx,[rdi+rax+0E8h]
	mov	rdx,[rbx+10h]
	cmp	rdx,[rbx+18h]
	jnc	475110h

l0000000000475040:
	movzx	eax,word ptr [rdx]
	add	rdx,2h
	mov	[rbx+10h],rdx

l000000000047504B:
	cmp	ax,0FFh
	jz	4750F0h

l0000000000475055:
	mov	rax,[rbx+10h]
	cmp	rax,[rbx+18h]
	jnc	475135h

l0000000000475063:
	movzx	ebx,word ptr [rax]

l0000000000475066:
	cmp	rsi,r12
	jz	475100h

l000000000047506F:
	cmp	bx,0FFh
	jnz	474FF0h

l0000000000475079:
	mov	ebx,0FFFFFFFFh

l000000000047507E:
	mov	r8,rbp
	mov	rdx,r14
	mov	rcx,r13
	call	449740h
	cmp	bx,0FFh
	jz	47517Ch

l0000000000475096:
	mov	rax,[rdi]
	test	rsi,rsi
	mov	rdx,[rax-18h]
	mov	qword ptr [rdi+rdx+10h],+0h
	jnz	474F47h

l00000000004750AF:
	mov	edx,4h
	jmp	474F38h
00000000004750B9                            0F 1F 80 00 00 00 00          .......

l00000000004750C0:
	xor	ebp,ebp
	xor	esi,esi
	jmp	47507Eh
00000000004750C6                   66 2E 0F 1F 84 00 00 00 00 00       f.........

l00000000004750D0:
	mov	r8d,80h
	mov	rdx,r14
	mov	rcx,r13
	call	449740h
	mov	ebp,1h
	xor	eax,eax
	jmp	47501Ah
00000000004750ED                                        0F 1F 00              ...

l00000000004750F0:
	cmp	rsi,r12
	mov	ebx,eax
	jnz	475079h

l00000000004750F7:
	nop	word ptr [rax+rax+0h]

l0000000000475100:
	mov	rsi,r12
	jmp	47507Eh
0000000000475108                         0F 1F 84 00 00 00 00 00         ........

l0000000000475110:
	mov	rax,[rbx]
	lea	rcx,[0000000000425A30]                                 ; [rip+FFFB0916]
	mov	rax,[rax+50h]
	cmp	rax,rcx
	jnz	475164h

l0000000000475123:
	mov	rcx,[rbx+40h]
	call	41BD58h
	mov	[rbx+48h],ax
	jmp	47504Bh

l0000000000475135:
	mov	rax,[rbx]
	lea	rcx,[0000000000425CA0]                                 ; [rip+FFFB0B61]
	mov	rax,[rax+48h]
	cmp	rax,rcx
	jnz	475170h

l0000000000475148:
	mov	rcx,[rbx+40h]
	call	41BD58h
	mov	rdx,[rbx+40h]
	movzx	ecx,ax
	call	41BD60h
	mov	ebx,eax
	jmp	475066h

l0000000000475164:
	mov	rcx,rbx
	call	rax
	jmp	47504Bh
000000000047516E                                           66 90               f.

l0000000000475170:
	mov	rcx,rbx
	call	rax
	mov	ebx,eax
	jmp	475066h

l000000000047517C:
	mov	rax,[rdi]
	cmp	rsi,1h
	mov	rdx,[rax-18h]
	mov	qword ptr [rdi+rdx+10h],+0h
	sbb	edx,edx
	and	edx,4h
	add	edx,2h
	jmp	474F38h

l000000000047519D:
	mov	rax,[rbx]
	lea	rdx,[0000000000425CA0]                                 ; [rip+FFFB0AF9]
	mov	rax,[rax+48h]
	cmp	rax,rdx
	jnz	4751CCh

l00000000004751B0:
	mov	rcx,[rbx+40h]
	call	41BD58h
	mov	rdx,[rbx+40h]
	movzx	ecx,ax
	call	41BD60h
	mov	ebx,eax
	jmp	474FDBh

l00000000004751CC:
	mov	rcx,rbx
	call	rax
	mov	ebx,eax
	jmp	474FDBh
00000000004751D8                         31 F6 48 83 FA 01 75 37         1.H...u7
00000000004751E0 48 89 C1 E8 58 06 00 00 48 8B 07 48 03 78 E8 83 H...X...H..H.x..
00000000004751F0 4F 20 01 F6 47 1C 01 74 19 E8 62 0E 00 00 EB D8 O ..G..t..b.....
0000000000475200 EB D6 48 89 C3 E8 66 08 00 00 48 89 D9 E8 9E C3 ..H...f...H.....
0000000000475210 F9 FF E8 49 0E 00 00 48 89 C1 E8 21 06 00 00 48 ...I...H...!...H
0000000000475220 8B 07 48 89 F9 48 03 48 E8 83 49 20 01 F6 41 1C ..H..H.H..I ..A.
0000000000475230 01 75 36 E8 38 08 00 00 48 85 F6 0F 85 06 FD FF .u6.8...H.......
0000000000475240 FF E9 EA FC FF FF 48 89 C3 48 89 D6 4C 89 F1 E8 ......H..H..L...
0000000000475250 CC 5C FF FF 48 89 D8 48 89 F2 E9 79 FF FF FF E9 .\..H..H...y....
0000000000475260 74 FF FF FF E9 71 FF FF FF E8 F2 0D 00 00 48 89 t....q........H.
0000000000475270 C3 E8 FA 07 00 00 48 89 D9 E8 32 C3 F9 FF 90 90 ......H...2.....
0000000000475280 48 83 E9 10 E9 E7 60 FD FF 90 90 90 90 90 90 90 H.....`.........
0000000000475290 48 83 E9 10 E9 07 61 FD FF 90 90 90 90 90 90 90 H.....a.........
00000000004752A0 48 83 E9 10 E9 B7 45 FE FF 90 90 90 90 90 90 90 H.....E.........
00000000004752B0 48 83 E9 10 E9 37 46 FE FF 90 90 90 90 90 90 90 H....7F.........
00000000004752C0 48 83 E9 10 E9 37 50 FE FF 90 90 90 90 90 90 90 H....7P.........
00000000004752D0 48 83 E9 10 E9 B7 50 FE FF 90 90 90 90 90 90 90 H.....P.........
00000000004752E0 48 83 E9 10 E9 87 B5 FE FF 90 90 90 90 90 90 90 H...............
00000000004752F0 48 83 E9 10 E9 A7 B5 FE FF 90 90 90 90 90 90 90 H...............
0000000000475300 4C 8B 11 49 03 4A E8 E9 64 60 FD FF 90 90 90 90 L..I.J..d`......
0000000000475310 4C 8B 11 49 03 4A E8 E9 84 60 FD FF 90 90 90 90 L..I.J...`......
0000000000475320 4C 8B 11 49 03 4A E8 E9 94 8E FD FF 90 90 90 90 L..I.J..........
0000000000475330 4C 8B 11 49 03 4A E8 E9 C4 8E FD FF 90 90 90 90 L..I.J..........
0000000000475340 4C 8B 11 49 03 4A E8 E9 D4 AE FD FF 90 90 90 90 L..I.J..........
0000000000475350 4C 8B 11 49 03 4A E8 E9 04 AF FD FF 90 90 90 90 L..I.J..........
0000000000475360 4C 8B 11 49 03 4A E8 E9 F4 44 FE FF 90 90 90 90 L..I.J...D......
0000000000475370 4C 8B 11 49 03 4A E8 E9 74 45 FE FF 90 90 90 90 L..I.J..tE......
0000000000475380 4C 8B 11 49 03 4A E8 E9 74 4F FE FF 90 90 90 90 L..I.J..tO......
0000000000475390 4C 8B 11 49 03 4A E8 E9 F4 4F FE FF 90 90 90 90 L..I.J...O......
00000000004753A0 4C 8B 11 49 03 4A E8 E9 24 7E FE FF 90 90 90 90 L..I.J..$~......
00000000004753B0 4C 8B 11 49 03 4A E8 E9 54 7E FE FF 90 90 90 90 L..I.J..T~......
00000000004753C0 4C 8B 11 49 03 4A E8 E9 34 9C FE FF 90 90 90 90 L..I.J..4.......
00000000004753D0 4C 8B 11 49 03 4A E8 E9 64 9C FE FF 90 90 90 90 L..I.J..d.......
00000000004753E0 4C 8B 11 49 03 4A E8 E9 64 A7 FE FF 90 90 90 90 L..I.J..d.......
00000000004753F0 4C 8B 11 49 03 4A E8 E9 D4 A7 FE FF 90 90 90 90 L..I.J..........
0000000000475400 4C 8B 11 49 03 4A E8 E9 C4 AF FE FF 90 90 90 90 L..I.J..........
0000000000475410 4C 8B 11 49 03 4A E8 E9 34 B0 FE FF 90 90 90 90 L..I.J..4.......
0000000000475420 4C 8B 11 49 03 4A E8 E9 44 B4 FE FF 90 90 90 90 L..I.J..D.......
0000000000475430 4C 8B 11 49 03 4A E8 E9 64 B4 FE FF 90 90 90 90 L..I.J..d.......
0000000000475440 4C 8B 11 49 03 4A E8 E9 74 BB FE FF 90 90 90 90 L..I.J..t.......
0000000000475450 4C 8B 11 49 03 4A E8 E9 E4 BB FE FF 90 90 90 90 L..I.J..........
0000000000475460 4C 8B 11 49 03 4A E8 E9 84 C3 FE FF 90 90 90 90 L..I.J..........
0000000000475470 4C 8B 11 49 03 4A E8 E9 F4 C3 FE FF 90 90 90 90 L..I.J..........

;; fn0000000000475480: 0000000000475480
fn0000000000475480 proc
	push	rbx
	sub	rsp,20h
	mov	rbx,rcx
	mov	rcx,[rcx]
	mov	dword ptr [rcx+58h],0h
	mov	byte ptr [rcx+90h],0h
	call	4558C0h
	mov	rax,[rbx]
	mov	rdx,[rax+68h]
	mov	byte ptr [rax+79h],0h
	mov	byte ptr [rax+7Ah],0h
	mov	qword ptr [rax+28h],+0h
	mov	qword ptr [rax+20h],+0h
	mov	qword ptr [rax+30h],+0h
	mov	[rax+8h],rdx
	mov	[rax+10h],rdx
	mov	[rax+18h],rdx
	mov	edx,[rax+5Ch]
	mov	[rax+60h],edx
	mov	[rax+64h],edx
	add	rsp,20h
	pop	rbx
	ret

;; fn00000000004754E0: 00000000004754E0
fn00000000004754E0 proc
	push	rbx
	sub	rsp,20h
	mov	rbx,rcx
	mov	rcx,[rcx]
	mov	dword ptr [rcx+58h],0h
	mov	byte ptr [rcx+90h],0h
	call	457600h
	mov	rax,[rbx]
	mov	rdx,[rax+68h]
	mov	byte ptr [rax+79h],0h
	mov	byte ptr [rax+7Ah],0h
	mov	qword ptr [rax+28h],+0h
	mov	qword ptr [rax+20h],+0h
	mov	qword ptr [rax+30h],+0h
	mov	[rax+8h],rdx
	mov	[rax+10h],rdx
	mov	[rax+18h],rdx
	mov	edx,[rax+5Ch]
	mov	[rax+60h],edx
	mov	[rax+64h],edx
	add	rsp,20h
	pop	rbx
	ret

;; fn0000000000475540: 0000000000475540
;;   Called from:
;;     0000000000429E5C (in fn0000000000429DE0)
;;     000000000042A1EC (in fn000000000042A170)
;;     000000000042C801 (in fn000000000042C730)
;;     000000000042C847 (in fn000000000042C730)
;;     000000000042CBD8 (in fn000000000042CAE0)
;;     000000000042CC31 (in fn000000000042CAE0)
;;     0000000000453E19 (in fn0000000000453DF0)
;;     0000000000453E89 (in fn0000000000453E60)
;;     00000000004546B9 (in fn0000000000454690)
;;     0000000000454729 (in fn0000000000454700)
;;     00000000004558D7 (in fn00000000004558C0)
;;     00000000004558F4 (in fn00000000004558C0)
;;     0000000000456D80 (in fn0000000000456940)
;;     0000000000457617 (in fn0000000000457600)
;;     0000000000457634 (in fn0000000000457600)
;;     0000000000458B33 (in fn00000000004586D0)
;;     0000000000464534 (in fn0000000000464510)
;;     0000000000464542 (in fn0000000000464510)
;;     0000000000464550 (in fn0000000000464510)
;;     0000000000464594 (in fn0000000000464570)
;;     00000000004645A2 (in fn0000000000464570)
;;     00000000004645B0 (in fn0000000000464570)
;;     0000000000464C24 (in fn0000000000464C00)
;;     0000000000464C32 (in fn0000000000464C00)
;;     0000000000464C40 (in fn0000000000464C00)
;;     0000000000464C84 (in fn0000000000464C60)
;;     0000000000464C92 (in fn0000000000464C60)
;;     0000000000464CA0 (in fn0000000000464C60)
;;     0000000000466A71 (in fn0000000000466A50)
;;     0000000000466A7F (in fn0000000000466A50)
;;     0000000000466A8D (in fn0000000000466A50)
;;     0000000000466A9B (in fn0000000000466A50)
;;     0000000000466AD1 (in fn0000000000466AB0)
;;     0000000000466ADF (in fn0000000000466AB0)
;;     0000000000466AED (in fn0000000000466AB0)
;;     0000000000466AFB (in fn0000000000466AB0)
;;     00000000004673E1 (in fn00000000004673C0)
;;     00000000004673EF (in fn00000000004673C0)
;;     00000000004673FD (in fn00000000004673C0)
;;     000000000046740B (in fn00000000004673C0)
;;     0000000000467441 (in fn0000000000467420)
;;     000000000046744F (in fn0000000000467420)
;;     000000000046745D (in fn0000000000467420)
;;     000000000046746B (in fn0000000000467420)
;;     0000000000467D71 (in fn0000000000467D50)
;;     0000000000467D7F (in fn0000000000467D50)
;;     0000000000467D8D (in fn0000000000467D50)
;;     0000000000467D9B (in fn0000000000467D50)
;;     0000000000467DD1 (in fn0000000000467DB0)
;;     0000000000467DDF (in fn0000000000467DB0)
;;     0000000000467DED (in fn0000000000467DB0)
;;     0000000000467DFB (in fn0000000000467DB0)
;;     0000000000468701 (in fn00000000004686E0)
;;     000000000046870F (in fn00000000004686E0)
;;     000000000046871D (in fn00000000004686E0)
;;     000000000046872B (in fn00000000004686E0)
;;     0000000000468761 (in fn0000000000468740)
;;     000000000046876F (in fn0000000000468740)
;;     000000000046877D (in fn0000000000468740)
;;     000000000046878B (in fn0000000000468740)
;;     0000000000468E5C (in fn0000000000468E30)
;;     0000000000469695 (in fn0000000000469560)
;;     00000000004696A2 (in fn0000000000469560)
;;     000000000046AB65 (in fn000000000046AB10)
;;     000000000046ABB5 (in fn000000000046AB10)
;;     000000000046ABCE (in fn000000000046AB10)
;;     000000000046ABEF (in fn000000000046AB10)
;;     000000000046C4F8 (in fn000000000046C440)
;;     000000000046D406 (in fn000000000046D3D0)
;;     000000000046E4E8 (in fn000000000046E490)
;;     000000000046ECB8 (in fn000000000046EC60)
;;     000000000046FB53 (in fn000000000046FAC0)
;;     000000000046FC8D (in fn000000000046FBE0)
;;     000000000046FD93 (in fn000000000046FD00)
;;     000000000047005F (in fn000000000046FF90)
;;     0000000000473C13 (in fn0000000000473B60)
;;     0000000000473C48 (in fn0000000000473B60)
fn0000000000475540 proc
	jmp	475550h
0000000000475545                90 90 90 90 90 90 90 90 90 90 90      ...........

;; fn0000000000475550: 0000000000475550
;;   Called from:
;;     0000000000423B20 (in fn0000000000423B20)
;;     0000000000423B5F (in fn0000000000423B40)
;;     0000000000423B80 (in fn0000000000423B80)
;;     0000000000423BBF (in fn0000000000423BA0)
;;     0000000000423BFF (in fn0000000000423BE0)
;;     000000000042420F (in fn00000000004241F0)
;;     0000000000424230 (in fn0000000000424230)
;;     0000000000424250 (in fn0000000000424250)
;;     00000000004249DB (in fn00000000004249C0)
;;     0000000000424B2B (in fn0000000000424B10)
;;     0000000000424F45 (in fn0000000000424F00)
;;     00000000004253E5 (in fn00000000004253A0)
;;     00000000004259E8 (in fn00000000004259C0)
;;     0000000000425DF8 (in fn0000000000425DD0)
;;     0000000000425E3F (in fn0000000000425E20)
;;     0000000000425E7F (in fn0000000000425E60)
;;     0000000000425EBF (in fn0000000000425EA0)
;;     000000000042621F (in fn0000000000426200)
;;     0000000000449360 (in fn0000000000449360)
;;     0000000000449380 (in fn0000000000449370)
;;     0000000000449C64 (in fn0000000000449C00)
;;     000000000044A441 (in fn000000000044A340)
;;     000000000044A639 (in fn000000000044A5D0)
;;     000000000044A814 (in fn000000000044A6C0)
;;     000000000044AE37 (in fn000000000044AE20)
;;     000000000044AE57 (in fn000000000044AE40)
;;     000000000044B397 (in fn000000000044B370)
;;     000000000044E1FA (in fn000000000044E1C0)
;;     0000000000450252 (in fn0000000000450220)
;;     0000000000450A50 (in fn0000000000450A50)
;;     0000000000450A70 (in fn0000000000450A60)
;;     00000000004512F4 (in fn0000000000451290)
;;     0000000000451A4A (in fn0000000000451960)
;;     0000000000451C49 (in fn0000000000451BE0)
;;     0000000000451E04 (in fn0000000000451CC0)
;;     0000000000452427 (in fn0000000000452410)
;;     0000000000452447 (in fn0000000000452430)
;;     000000000045270F (in fn00000000004526F0)
;;     0000000000452A75 (in fn0000000000452A60)
;;     0000000000452E05 (in fn0000000000452DF0)
;;     00000000004531B5 (in fn00000000004531A0)
;;     0000000000453565 (in fn0000000000453550)
;;     0000000000453DE5 (in fn0000000000453DD0)
;;     0000000000454685 (in fn0000000000454670)
;;     00000000004547C5 (in fn00000000004547B0)
;;     000000000045485F (in fn0000000000454840)
;;     000000000045492F (in fn0000000000454910)
;;     000000000045515F (in fn0000000000455140)
;;     000000000045522F (in fn0000000000455210)
;;     000000000045528F (in fn0000000000455270)
;;     00000000004552CF (in fn00000000004552B0)
;;     000000000045532F (in fn0000000000455310)
;;     000000000045538F (in fn0000000000455370)
;;     00000000004553CF (in fn00000000004553B0)
;;     0000000000455434 (in fn0000000000455410)
;;     0000000000455460 (in fn0000000000455460)
;;     000000000045711F (in fn00000000004570E0)
;;     0000000000458EFF (in fn0000000000458EC0)
;;     00000000004598E6 (in fn0000000000459860)
;;     000000000045A386 (in fn000000000045A300)
;;     000000000045D20A (in fn000000000045D1D0)
;;     000000000045F032 (in fn000000000045F000)
;;     000000000045F3E5 (in fn000000000045F3D0)
;;     000000000045FBCB (in fn000000000045FB50)
;;     000000000046044B (in fn00000000004603D0)
;;     0000000000460897 (in fn0000000000460870)
;;     000000000046103B (in fn0000000000460FC0)
;;     000000000046186B (in fn00000000004617F0)
;;     0000000000461A9F (in fn0000000000461A80)
;;     0000000000461C0F (in fn0000000000461BF0)
;;     0000000000461DCE (in fn0000000000461DA0)
;;     0000000000461FFE (in fn0000000000461FD0)
;;     00000000004620A0 (in fn00000000004620A0)
;;     00000000004620FF (in fn00000000004620E0)
;;     0000000000462B44 (in fn0000000000462B20)
;;     0000000000463494 (in fn0000000000463470)
;;     000000000046362F (in fn0000000000463610)
;;     000000000046379F (in fn0000000000463780)
;;     000000000046398F (in fn0000000000463970)
;;     0000000000463B7F (in fn0000000000463B60)
;;     0000000000463C0F (in fn0000000000463BF0)
;;     0000000000463C9F (in fn0000000000463C80)
;;     0000000000463D2F (in fn0000000000463D10)
;;     0000000000463DBF (in fn0000000000463DA0)
;;     0000000000463E2F (in fn0000000000463E10)
;;     0000000000464505 (in fn00000000004644F0)
;;     0000000000464BF5 (in fn0000000000464BE0)
;;     000000000046507F (in fn0000000000465060)
;;     00000000004650DF (in fn00000000004650C0)
;;     000000000046551F (in fn0000000000465500)
;;     000000000046596F (in fn0000000000465950)
;;     00000000004659BF (in fn00000000004659A0)
;;     0000000000465B9F (in fn0000000000465B80)
;;     0000000000465D8F (in fn0000000000465D70)
;;     0000000000465F7F (in fn0000000000465F60)
;;     000000000046616F (in fn0000000000466150)
;;     0000000000466A45 (in fn0000000000466A30)
;;     00000000004673B5 (in fn00000000004673A0)
;;     0000000000467D45 (in fn0000000000467D30)
;;     00000000004686D5 (in fn00000000004686C0)
;;     00000000004688AF (in fn0000000000468890)
;;     0000000000468E25 (in fn0000000000468E10)
;;     0000000000468FF5 (in fn0000000000468FE0)
;;     000000000046AD10 (in fn000000000046AD10)
;;     000000000046AF43 (in fn000000000046AF20)
;;     000000000046AF92 (in fn000000000046AF60)
;;     000000000046BC65 (in fn000000000046BC50)
;;     000000000046BD75 (in fn000000000046BD60)
;;     000000000046BF2E (in fn000000000046BF00)
;;     000000000046C11E (in fn000000000046C0F0)
;;     000000000046C21F (in fn000000000046C200)
;;     000000000046C2AF (in fn000000000046C290)
;;     000000000046C33F (in fn000000000046C320)
;;     000000000046C3CF (in fn000000000046C3B0)
;;     000000000046C41F (in fn000000000046C400)
;;     000000000046C923 (in fn000000000046C8F0)
;;     000000000046D2C5 (in fn000000000046D2B0)
;;     000000000046D3C5 (in fn000000000046D3B0)
;;     000000000046D585 (in fn000000000046D570)
;;     000000000046D765 (in fn000000000046D750)
;;     000000000046DB15 (in fn000000000046DB00)
;;     000000000046DE95 (in fn000000000046DE80)
;;     000000000046DF4F (in fn000000000046DF30)
;;     000000000046DFDF (in fn000000000046DFC0)
;;     000000000046E06F (in fn000000000046E050)
;;     000000000046E0FF (in fn000000000046E0E0)
;;     000000000046E14F (in fn000000000046E130)
;;     000000000046E93F (in fn000000000046E920)
;;     000000000046F0AF (in fn000000000046F090)
;;     000000000046F0E0 (in fn000000000046F0E0)
;;     000000000046F15F (in fn000000000046F140)
;;     000000000046F1EF (in fn000000000046F1D0)
;;     000000000046F27F (in fn000000000046F260)
;;     000000000046F30F (in fn000000000046F2F0)
;;     000000000046F340 (in fn000000000046F340)
;;     0000000000475540 (in fn0000000000475540)
fn0000000000475550 proc
	jmp	41BDA0h
0000000000475555                90 90 90 90 90 90 90 90 90 90 90      ...........

;; fn0000000000475560: 0000000000475560
;;   Called from:
;;     0000000000429E15 (in fn0000000000429DE0)
;;     000000000042A1A5 (in fn000000000042A170)
;;     000000000042C789 (in fn000000000042C730)
;;     000000000042C809 (in fn000000000042C730)
;;     000000000042CB56 (in fn000000000042CAE0)
;;     000000000042CBF2 (in fn000000000042CAE0)
;;     0000000000453B81 (in fn0000000000453B10)
;;     0000000000453D11 (in fn0000000000453CA0)
;;     0000000000454421 (in fn00000000004543B0)
;;     00000000004545B1 (in fn0000000000454540)
;;     0000000000455957 (in fn0000000000455930)
;;     0000000000455A19 (in fn0000000000455970)
;;     0000000000456D67 (in fn0000000000456940)
;;     00000000004576AF (in fn0000000000457690)
;;     0000000000458B0C (in fn00000000004586D0)
;;     0000000000463ECC (in fn0000000000463E50)
;;     0000000000463F96 (in fn0000000000463E50)
;;     0000000000464052 (in fn0000000000463E50)
;;     000000000046464C (in fn00000000004645D0)
;;     0000000000464732 (in fn00000000004645D0)
;;     000000000046480A (in fn00000000004645D0)
;;     000000000046627B (in fn00000000004661A0)
;;     0000000000466345 (in fn00000000004661A0)
;;     00000000004663FE (in fn00000000004661A0)
;;     00000000004664C5 (in fn00000000004661A0)
;;     0000000000466BEB (in fn0000000000466B10)
;;     0000000000466CB5 (in fn0000000000466B10)
;;     0000000000466D6E (in fn0000000000466B10)
;;     0000000000466E35 (in fn0000000000466B10)
;;     0000000000467557 (in fn0000000000467480)
;;     000000000046763D (in fn0000000000467480)
;;     0000000000467712 (in fn0000000000467480)
;;     00000000004677F5 (in fn0000000000467480)
;;     0000000000467EE7 (in fn0000000000467E10)
;;     0000000000467FCD (in fn0000000000467E10)
;;     00000000004680A2 (in fn0000000000467E10)
;;     0000000000468185 (in fn0000000000467E10)
;;     00000000004695C2 (in fn0000000000469560)
;;     0000000000469635 (in fn0000000000469560)
;;     0000000000469883 (in fn0000000000469830)
;;     00000000004698EF (in fn0000000000469830)
;;     0000000000469934 (in fn0000000000469830)
;;     0000000000469980 (in fn0000000000469830)
;;     000000000046C47A (in fn000000000046C440)
;;     000000000046E607 (in fn000000000046E490)
;;     000000000046EDD7 (in fn000000000046EC60)
;;     000000000046FAF0 (in fn000000000046FAC0)
;;     000000000046FC10 (in fn000000000046FBE0)
;;     000000000046FD30 (in fn000000000046FD00)
;;     000000000047000F (in fn000000000046FF90)
;;     0000000000473BA0 (in fn0000000000473B60)
fn0000000000475560 proc
	sub	rsp,28h
	call	475590h
	nop
	add	rsp,28h
	ret
000000000047556F                                              48                H
0000000000475570 83 C2 01 48 89 C1 74 05 E8 33 C0 F9 FF E8 8E 03 ...H..t..3......
0000000000475580 00 00 90 90 90 90 90 90 90 90 90 90 90 90 90 90 ................

;; fn0000000000475590: 0000000000475590
;;   Called from:
;;     0000000000424A38 (in fn0000000000424A00)
;;     0000000000424B84 (in fn0000000000424B50)
;;     000000000042A3A5 (in fn000000000042A360)
;;     000000000042A4A5 (in fn000000000042A460)
;;     000000000042A5A5 (in fn000000000042A560)
;;     000000000042A6D5 (in fn000000000042A690)
;;     000000000042A805 (in fn000000000042A7C0)
;;     000000000042A935 (in fn000000000042A8F0)
;;     00000000004384F9 (in fn00000000004382A0)
;;     00000000004387D5 (in fn00000000004385D0)
;;     0000000000438AF9 (in fn00000000004388A0)
;;     0000000000438DD5 (in fn0000000000438BD0)
;;     0000000000439CA7 (in fn0000000000439A70)
;;     000000000043A1DA (in fn0000000000439F70)
;;     000000000043A4BA (in fn000000000043A2B0)
;;     000000000043A7FA (in fn000000000043A590)
;;     000000000043AAE8 (in fn000000000043A8D0)
;;     000000000043AFA6 (in fn000000000043AC90)
;;     000000000043B399 (in fn000000000043B070)
;;     000000000043BA95 (in fn000000000043B850)
;;     0000000000447140 (in fn0000000000446BF0)
;;     0000000000447820 (in fn00000000004472D0)
;;     0000000000448305 (in fn0000000000447CD0)
;;     0000000000448AF5 (in fn00000000004484C0)
;;     00000000004494F4 (in fn0000000000449490)
;;     0000000000450BC8 (in fn0000000000450B70)
;;     00000000004527E5 (in fn0000000000452740)
;;     0000000000452B75 (in fn0000000000452AD0)
;;     0000000000452F10 (in fn0000000000452E60)
;;     00000000004532C0 (in fn0000000000453210)
;;     00000000004538A8 (in fn0000000000453630)
;;     0000000000454148 (in fn0000000000453ED0)
;;     000000000046C8C5 (in fn000000000046C8B0)
;;     000000000046D8AC (in fn000000000046D7F0)
;;     000000000046DC2D (in fn000000000046DB70)
;;     0000000000475564 (in fn0000000000475560)
fn0000000000475590 proc
	push	rbx
	sub	rsp,20h
	mov	eax,1h
	test	rcx,rcx
	mov	rbx,rcx
	cmovz	rbx,rax

l00000000004755A4:
	mov	rcx,rbx
	call	41BCB0h
	test	rax,rax
	jnz	4755CAh

l00000000004755B1:
	call	46FF60h
	test	rax,rax
	jz	4755D0h

l00000000004755BB:
	call	rax
	mov	rcx,rbx
	call	41BCB0h
	test	rax,rax
	jz	4755B1h

l00000000004755CA:
	add	rsp,20h
	pop	rbx
	ret

l00000000004755D0:
	mov	ecx,8h
	call	4756E0h
	mov	rdx,[0000000000491E10]                                 ; [rip+0001C82F]
	lea	r8,[000000000046E160]                                  ; [rip-00007488]
	mov	rcx,rax
	add	rdx,10h
	mov	[rax],rdx
	lea	rdx,[0000000000493FC0]                                 ; [rip+0001E9C7]
	call	4760B0h
	nop
	nop

;; fn0000000000475600: 0000000000475600
;;   Called from:
;;     0000000000424A85 (in fn0000000000424A50)
;;     0000000000424AD5 (in fn0000000000424AA0)
;;     0000000000424BC5 (in fn0000000000424B90)
;;     000000000046F391 (in fn000000000046F360)
;;     00000000004755FF (in fn0000000000475590)
fn0000000000475600 proc
	push	rbp
	mov	rbp,rsp
	mov	[rbp+10h],rcx
	mov	[rbp+18h],rdx
	mov	rax,[rbp+18h]
	pop	rbp
	ret
0000000000475612       90 90 90 90 90 90 90 90 90 90 90 90 90 90   ..............

;; fn0000000000475620: 0000000000475620
;;   Called from:
;;     00000000004709E9 (in fn00000000004709E0)
fn0000000000475620 proc
	push	rdi
	push	rbx
	sub	rsp,28h
	mov	ecx,90h
	call	41BCB0h
	test	rax,rax
	mov	rbx,rax
	jz	475650h

l0000000000475638:
	xor	eax,eax
	mov	rdi,rbx
	mov	ecx,12h

l0000000000475642:
	rep stosq

l0000000000475645:
	mov	rax,rbx
	add	rsp,28h
	pop	rbx
	pop	rdi
	ret
000000000047564F                                              90                .

l0000000000475650:
	lea	rcx,[0000000000489A20]                                 ; [rip+000143C9]
	call	4208F0h
	test	eax,eax
	jnz	4756DAh

l0000000000475660:
	mov	rdx,[0000000000477360]                                 ; [rip+00001CF9]
	xor	ecx,ecx
	mov	rax,rdx
	jmp	47567Bh
000000000047566E                                           66 90               f.

l0000000000475670:
	add	ecx,1h
	shr	rax,1h
	cmp	ecx,40h
	jz	4756C0h

l000000000047567B:
	test	al,1h
	jnz	475670h

l000000000047567F:
	mov	eax,1h
	lea	rbx,[rcx+rcx*8]
	shl	rax,cl
	lea	rcx,[0000000000489A20]                                 ; [rip+0001438E]
	or	rdx,rax
	lea	rax,[0000000000487380]                                 ; [rip+00011CE4]
	shl	rbx,4h
	mov	[0000000000477360],rdx                                 ; [rip+00001CB9]
	add	rbx,rax
	call	4202A0h
	test	eax,eax
	jz	475638h

l00000000004756B3:
	call	426270h
	nop	dword ptr [rax+rax+0h]

l00000000004756C0:
	call	472D60h

l00000000004756C5:
	add	rdx,1h
	mov	rcx,rax
	jz	4756D5h

l00000000004756CE:
	call	4115B0h
	jmp	4756C5h

l00000000004756D5:
	call	475910h

l00000000004756DA:
	call	426240h
	nop

;; fn00000000004756E0: 00000000004756E0
;;   Called from:
;;     0000000000426249 (in fn0000000000426240)
;;     0000000000426279 (in fn0000000000426270)
;;     00000000004262A9 (in fn00000000004262A0)
;;     00000000004694F7 (in fn0000000000469430)
;;     0000000000470829 (in fn0000000000470820)
;;     00000000004708B9 (in fn00000000004708B0)
;;     0000000000470A49 (in fn0000000000470A40)
;;     0000000000470B34 (in fn0000000000470B20)
;;     0000000000470BB4 (in fn0000000000470BA0)
;;     0000000000470C44 (in fn0000000000470C30)
;;     0000000000470CCD (in fn0000000000470CC0)
;;     0000000000470D24 (in fn0000000000470D10)
;;     0000000000470DB4 (in fn0000000000470DA0)
;;     0000000000470E74 (in fn0000000000470E60)
;;     0000000000470F04 (in fn0000000000470EF0)
;;     0000000000470F94 (in fn0000000000470F80)
;;     0000000000471269 (in fn0000000000471260)
;;     00000000004712B4 (in fn00000000004712A0)
;;     0000000000471344 (in fn0000000000471330)
;;     0000000000471454 (in fn0000000000471440)
;;     00000000004714E4 (in fn00000000004714D0)
;;     00000000004715BE (in fn0000000000471560)
;;     0000000000471639 (in fn0000000000471630)
;;     00000000004755D5 (in fn0000000000475590)
;;     00000000004756DF (in fn0000000000475620)
;;     00000000004757C9 (in fn00000000004757C0)
;;     0000000000475809 (in fn0000000000475800)
;;     00000000004759C4 (in fn0000000000475910)
;;     0000000000475F4B (in fn0000000000475E80)
;;     0000000000476129 (in fn0000000000476120)
;;     0000000000476169 (in fn0000000000476160)
fn00000000004756E0 proc
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,20h
	lea	rsi,[rcx+0A0h]
	mov	rcx,rsi
	call	41BCB0h
	test	rax,rax
	mov	rbx,rax
	jz	475720h

l00000000004756FE:
	xor	eax,eax
	mov	rdi,rbx
	mov	ecx,14h

l0000000000475708:
	rep stosq

l000000000047570B:
	lea	rax,[rbx+0A0h]
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	ret
000000000047571A                               66 0F 1F 44 00 00           f..D..

l0000000000475720:
	lea	rcx,[0000000000489A20]                                 ; [rip+000142F9]
	call	4208F0h
	test	eax,eax
	jnz	4757BAh

l0000000000475734:
	cmp	rsi,+400h
	mov	rdx,[0000000000477350]                                 ; [rip+00001C0E]
	ja	4757A0h

l0000000000475744:
	mov	rax,rdx
	xor	ecx,ecx
	jmp	47575Bh
000000000047574B                                  0F 1F 44 00 00            ..D..

l0000000000475750:
	add	ecx,1h
	shr	rax,1h
	cmp	ecx,40h
	jz	4757A0h

l000000000047575B:
	test	al,1h
	jnz	475750h

l000000000047575F:
	mov	eax,1h
	shl	rax,cl
	shl	rcx,0Ah
	or	rdx,rax
	lea	rax,[0000000000477380]                                 ; [rip+00001C0B]
	mov	[0000000000477350],rdx                                 ; [rip+00001BD4]
	lea	rbx,[rcx+rax]
	lea	rcx,[0000000000489A20]                                 ; [rip+00014299]
	call	4202A0h
	test	eax,eax
	jz	4756FEh

l0000000000475794:
	call	426270h
	nop	dword ptr [rax+0h]

l00000000004757A0:
	call	472D60h

l00000000004757A5:
	add	rdx,1h
	mov	rcx,rax
	jz	4757B5h

l00000000004757AE:
	call	4115B0h
	jmp	4757A5h

l00000000004757B5:
	call	475910h

l00000000004757BA:
	call	426240h
	nop

;; fn00000000004757C0: 00000000004757C0
;;   Called from:
;;     0000000000472DD0 (in fn0000000000472D80)
;;     0000000000472E30 (in fn0000000000472DE0)
;;     0000000000472E90 (in fn0000000000472E40)
;;     0000000000472EF0 (in fn0000000000472EA0)
;;     0000000000472F50 (in fn0000000000472F00)
;;     0000000000472FB0 (in fn0000000000472F60)
;;     0000000000473010 (in fn0000000000472FC0)
;;     0000000000473070 (in fn0000000000473020)
;;     00000000004730D0 (in fn0000000000473080)
;;     0000000000473130 (in fn00000000004730E0)
;;     0000000000473190 (in fn0000000000473140)
;;     00000000004731F0 (in fn00000000004731A0)
;;     0000000000473250 (in fn0000000000473200)
;;     00000000004732B0 (in fn0000000000473260)
;;     0000000000473310 (in fn00000000004732C0)
;;     0000000000473370 (in fn0000000000473320)
;;     00000000004733D0 (in fn0000000000473380)
;;     0000000000473430 (in fn00000000004733E0)
;;     0000000000473490 (in fn0000000000473440)
;;     00000000004734F0 (in fn00000000004734A0)
;;     0000000000473550 (in fn0000000000473500)
;;     00000000004735B0 (in fn0000000000473560)
;;     0000000000473610 (in fn00000000004735C0)
;;     0000000000473670 (in fn0000000000473620)
;;     00000000004736D0 (in fn0000000000473680)
;;     0000000000473730 (in fn00000000004736E0)
;;     0000000000473790 (in fn0000000000473740)
;;     00000000004737F0 (in fn00000000004737A0)
;;     00000000004757BF (in fn00000000004756E0)
fn00000000004757C0 proc
	sub	rsp,28h
	mov	ecx,8h
	call	4756E0h
	mov	rcx,[0000000000491DA0]                                 ; [rip+0001C5CB]
	lea	r8,[000000000046C430]                                  ; [rip-000093AC]
	lea	rdx,[rcx+10h]
	mov	rcx,rax
	mov	[rax],rdx
	lea	rdx,[0000000000493E00]                                 ; [rip+0001E613]
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

;; fn0000000000475800: 0000000000475800
;;   Called from:
;;     00000000004757FF (in fn00000000004757C0)
fn0000000000475800 proc
	sub	rsp,28h
	mov	ecx,8h
	call	4756E0h
	mov	rcx,[0000000000491B70]                                 ; [rip+0001C35B]
	lea	r8,[0000000000452720]                                  ; [rip+FFFDCF04]
	lea	rdx,[rcx+10h]
	mov	rcx,rax
	mov	[rax],rdx
	lea	rdx,[00000000004932A0]                                 ; [rip+0001DA73]
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

;; fn0000000000475840: 0000000000475840
;;   Called from:
;;     0000000000423AE0 (in fn0000000000423AD0)
;;     000000000044B4ED (in fn000000000044B410)
;;     000000000044B508 (in fn000000000044B410)
;;     000000000044B63D (in fn000000000044B560)
;;     000000000044B658 (in fn000000000044B560)
;;     000000000044B78D (in fn000000000044B6B0)
;;     000000000044B7A8 (in fn000000000044B6B0)
;;     000000000044B8DD (in fn000000000044B800)
;;     000000000044B8F8 (in fn000000000044B800)
;;     000000000044BA2D (in fn000000000044B950)
;;     000000000044BA48 (in fn000000000044B950)
;;     000000000044BB7D (in fn000000000044BAA0)
;;     000000000044BB98 (in fn000000000044BAA0)
;;     000000000044BCCD (in fn000000000044BBF0)
;;     000000000044BCE8 (in fn000000000044BBF0)
;;     000000000044BE1D (in fn000000000044BD40)
;;     000000000044BE38 (in fn000000000044BD40)
;;     000000000044BF6D (in fn000000000044BE90)
;;     000000000044BF88 (in fn000000000044BE90)
;;     000000000044C0BD (in fn000000000044BFE0)
;;     000000000044C0D8 (in fn000000000044BFE0)
;;     000000000044C20D (in fn000000000044C130)
;;     000000000044C228 (in fn000000000044C130)
;;     000000000044E4DD (in fn000000000044E3F0)
;;     000000000044E4F8 (in fn000000000044E3F0)
;;     000000000044E6A8 (in fn000000000044E580)
;;     000000000044E6C3 (in fn000000000044E580)
;;     000000000044F0E6 (in fn000000000044EF40)
;;     000000000044F128 (in fn000000000044EF40)
;;     000000000044F31D (in fn000000000044F160)
;;     000000000044F35F (in fn000000000044F160)
;;     000000000044F54D (in fn000000000044F3A0)
;;     000000000044F58F (in fn000000000044F3A0)
;;     000000000044F782 (in fn000000000044F5D0)
;;     000000000044F7C4 (in fn000000000044F5D0)
;;     000000000044F9A6 (in fn000000000044F800)
;;     000000000044F9E8 (in fn000000000044F800)
;;     000000000044FBC6 (in fn000000000044FA20)
;;     000000000044FC08 (in fn000000000044FA20)
;;     000000000044FDE6 (in fn000000000044FC40)
;;     000000000044FE28 (in fn000000000044FC40)
;;     0000000000450006 (in fn000000000044FE60)
;;     0000000000450048 (in fn000000000044FE60)
;;     000000000045A5AE (in fn000000000045A4D0)
;;     000000000045A5C9 (in fn000000000045A4D0)
;;     000000000045A6FE (in fn000000000045A620)
;;     000000000045A719 (in fn000000000045A620)
;;     000000000045A84E (in fn000000000045A770)
;;     000000000045A869 (in fn000000000045A770)
;;     000000000045A99E (in fn000000000045A8C0)
;;     000000000045A9B9 (in fn000000000045A8C0)
;;     000000000045AAEE (in fn000000000045AA10)
;;     000000000045AB09 (in fn000000000045AA10)
;;     000000000045AC3E (in fn000000000045AB60)
;;     000000000045AC59 (in fn000000000045AB60)
;;     000000000045AD8E (in fn000000000045ACB0)
;;     000000000045ADA9 (in fn000000000045ACB0)
;;     000000000045AEDE (in fn000000000045AE00)
;;     000000000045AEF9 (in fn000000000045AE00)
;;     000000000045B02E (in fn000000000045AF50)
;;     000000000045B049 (in fn000000000045AF50)
;;     000000000045B17E (in fn000000000045B0A0)
;;     000000000045B199 (in fn000000000045B0A0)
;;     000000000045B2CE (in fn000000000045B1F0)
;;     000000000045B2E9 (in fn000000000045B1F0)
;;     000000000045D4ED (in fn000000000045D400)
;;     000000000045D508 (in fn000000000045D400)
;;     000000000045D6BA (in fn000000000045D590)
;;     000000000045D6D5 (in fn000000000045D590)
;;     000000000045E0C7 (in fn000000000045DF60)
;;     000000000045E109 (in fn000000000045DF60)
;;     000000000045E2A7 (in fn000000000045E140)
;;     000000000045E2E9 (in fn000000000045E140)
;;     000000000045E47B (in fn000000000045E320)
;;     000000000045E4BD (in fn000000000045E320)
;;     000000000045E668 (in fn000000000045E4F0)
;;     000000000045E6AA (in fn000000000045E4F0)
;;     000000000045E847 (in fn000000000045E6E0)
;;     000000000045E889 (in fn000000000045E6E0)
;;     000000000045EA27 (in fn000000000045E8C0)
;;     000000000045EA69 (in fn000000000045E8C0)
;;     000000000045EC07 (in fn000000000045EAA0)
;;     000000000045EC49 (in fn000000000045EAA0)
;;     000000000045EDE7 (in fn000000000045EC80)
;;     000000000045EE29 (in fn000000000045EC80)
;;     000000000046C584 (in fn000000000046C440)
;;     00000000004707E2 (in fn0000000000470480)
;;     0000000000470A35 (in fn00000000004709E0)
;;     0000000000473C59 (in fn0000000000473B60)
;;     0000000000473C8E (in fn0000000000473B60)
;;     000000000047583F (in fn0000000000475800)
;;     00000000004758DD (in fn00000000004758D0)
;;     000000000047591D (in fn0000000000475910)
;;     0000000000475943 (in fn0000000000475910)
;;     00000000004760A0 (in fn0000000000476060)
;;     0000000000476114 (in fn00000000004760B0)
fn0000000000475840 proc
	push	rbx
	sub	rsp,20h
	mov	rbx,rcx
	call	475C50h
	mov	rdx,0B8B1AABCBCD4D500h
	add	rdx,[rbx]
	mov	rcx,[rax]
	lea	r8,[rbx-50h]
	cmp	rdx,1h
	jbe	475880h

l0000000000475867:
	test	rcx,rcx
	jnz	4758BBh

l000000000047586C:
	mov	[rax],r8
	xor	eax,eax
	add	rsp,20h
	pop	rbx
	ret
0000000000475877                      66 0F 1F 84 00 00 00 00 00        f........

l0000000000475880:
	mov	edx,[rbx-28h]
	test	edx,edx
	lea	r9d,[rdx+1h]
	js	4758B0h

l000000000047588B:
	mov	[rbx-28h],r9d
	sub	dword ptr [rax+8h],1h
	cmp	rcx,r8
	jz	47589Fh

l0000000000475898:
	mov	[rbx-30h],rcx
	mov	[rax],r8

l000000000047589F:
	mov	rax,[rbx-8h]
	add	rsp,20h
	pop	rbx
	ret
00000000004758A9                            0F 1F 80 00 00 00 00          .......

l00000000004758B0:
	mov	r9d,1h
	sub	r9d,edx
	jmp	47588Bh

l00000000004758BB:
	call	472D60h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop

;; fn00000000004758D0: 00000000004758D0
;;   Called from:
;;     0000000000423D41 (in fn0000000000423C60)
;;     00000000004758CF (in fn0000000000475840)
fn00000000004758D0 proc
	push	rbx
	sub	rsp,20h
	test	rcx,rcx
	mov	rbx,rcx
	jz	4758F5h

l00000000004758DD:
	call	475840h
	mov	rax,0B8B1AABCBCD4D500h
	add	rax,[rbx]
	cmp	rax,1h
	jbe	4758FAh

l00000000004758F5:
	call	472D60h

l00000000004758FA:
	mov	rcx,[rbx-38h]
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

;; fn0000000000475910: 0000000000475910
;;   Called from:
;;     0000000000423B06 (in fn0000000000423AD0)
;;     000000000046954E (in fn0000000000469430)
;;     000000000046AE37 (in fn000000000046AD30)
;;     000000000046AF1A (in fn000000000046AE90)
;;     00000000004756D5 (in fn0000000000475620)
;;     00000000004757B5 (in fn00000000004756E0)
;;     000000000047590F (in fn00000000004758D0)
;;     0000000000475B8C (in fn0000000000475AF0)
;;     0000000000475C2C (in fn0000000000475BA0)
;;     0000000000475E7A (in fn0000000000475DE0)
;;     000000000047601D (in fn0000000000475F80)
fn0000000000475910 proc
	push	r12
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,50h
	mov	rbx,rcx
	call	475840h
	mov	rax,[rbx-10h]
	mov	rcx,[rbx-40h]
	mov	rbp,[rbx-18h]
	movsxd	rsi,dword ptr [rbx-24h]
	mov	rdi,[rbx-38h]
	mov	[rsp+30h],rax
	call	423B10h
	mov	rcx,rax
	call	475840h
	call	475D50h
	mov	rax,[rax]
	test	byte ptr [rax+50h],1h
	lea	r12,[rax+90h]
	jz	475960h

l000000000047595D:
	mov	r12,[rax]

l0000000000475960:
	lea	rbx,[rsp+20h]
	mov	rdx,rbp
	xor	ecx,ecx
	mov	r8,rbx
	call	423720h
	mov	rdx,[r12-90h]
	mov	r9,rsi
	mov	r8,r12
	mov	rcx,rbx
	call	423810h
	test	al,al
	jz	4759A6h

l000000000047598C:
	call	476060h
	mov	rbx,rax
	call	475A70h
	call	475A70h
	mov	rcx,rbx
	call	4115B0h

l00000000004759A6:
	lea	rdx,[0000000000493570]                                 ; [rip+0001DBC3]
	mov	r9,rsi
	xor	r8d,r8d
	mov	rcx,rbx
	call	423810h
	test	al,al
	jz	4759EDh

l00000000004759BF:
	mov	ecx,8h
	call	4756E0h
	mov	rdx,[0000000000491BE0]                                 ; [rip+0001C210]
	lea	r8,[0000000000455470]                                  ; [rip+FFFDFA99]
	mov	rcx,rax
	add	rdx,10h
	mov	[rax],rdx
	lea	rdx,[0000000000493570]                                 ; [rip+0001DB88]
	call	4760B0h

l00000000004759ED:
	mov	rcx,rdi
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

;; fn0000000000475A00: 0000000000475A00
;;   Called from:
;;     000000000042607B (in fn0000000000426060)
;;     00000000004759FF (in fn0000000000475910)
fn0000000000475A00 proc
	sub	rsp,28h
	call	475C50h
	mov	rax,[rax]
	test	rax,rax
	jz	475A30h

l0000000000475A11:
	test	byte ptr [rax+50h],1h
	jnz	475A20h

l0000000000475A17:
	mov	rax,[rax]

l0000000000475A1A:
	add	rsp,28h
	ret
0000000000475A1F                                              90                .

l0000000000475A20:
	mov	rax,[rax]
	sub	rax,+90h
	jmp	475A17h
0000000000475A2B                                  0F 1F 44 00 00            ..D..

l0000000000475A30:
	xor	eax,eax
	jmp	475A1Ah
0000000000475A34             90 90 90 90 90 90 90 90 90 90 90 90     ............

;; fn0000000000475A40: 0000000000475A40
fn0000000000475A40 proc
	sub	rsp,28h
	lea	rdx,[000000000048E1A0]                                 ; [rip+00018755]
	mov	r8d,1Eh
	mov	ecx,2h
	call	41BDD0h
	call	472D60h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop

;; fn0000000000475A70: 0000000000475A70
;;   Called from:
;;     0000000000423AF0 (in fn0000000000423AD0)
;;     00000000004472BF (in fn0000000000446BF0)
;;     000000000044799F (in fn00000000004472D0)
;;     000000000044B521 (in fn000000000044B410)
;;     000000000044B545 (in fn000000000044B410)
;;     000000000044B671 (in fn000000000044B560)
;;     000000000044B695 (in fn000000000044B560)
;;     000000000044B7C1 (in fn000000000044B6B0)
;;     000000000044B7E5 (in fn000000000044B6B0)
;;     000000000044B911 (in fn000000000044B800)
;;     000000000044B935 (in fn000000000044B800)
;;     000000000044BA61 (in fn000000000044B950)
;;     000000000044BA85 (in fn000000000044B950)
;;     000000000044BBB1 (in fn000000000044BAA0)
;;     000000000044BBD5 (in fn000000000044BAA0)
;;     000000000044BD01 (in fn000000000044BBF0)
;;     000000000044BD25 (in fn000000000044BBF0)
;;     000000000044BE51 (in fn000000000044BD40)
;;     000000000044BE75 (in fn000000000044BD40)
;;     000000000044BFA1 (in fn000000000044BE90)
;;     000000000044BFC5 (in fn000000000044BE90)
;;     000000000044C0F1 (in fn000000000044BFE0)
;;     000000000044C115 (in fn000000000044BFE0)
;;     000000000044C241 (in fn000000000044C130)
;;     000000000044C265 (in fn000000000044C130)
;;     000000000044E511 (in fn000000000044E3F0)
;;     000000000044E535 (in fn000000000044E3F0)
;;     000000000044E6DC (in fn000000000044E580)
;;     000000000044E707 (in fn000000000044E580)
;;     000000000044F11C (in fn000000000044EF40)
;;     000000000044F141 (in fn000000000044EF40)
;;     000000000044F153 (in fn000000000044EF40)
;;     000000000044F353 (in fn000000000044F160)
;;     000000000044F378 (in fn000000000044F160)
;;     000000000044F38A (in fn000000000044F160)
;;     000000000044F583 (in fn000000000044F3A0)
;;     000000000044F5A8 (in fn000000000044F3A0)
;;     000000000044F5BA (in fn000000000044F3A0)
;;     000000000044F7B8 (in fn000000000044F5D0)
;;     000000000044F7DD (in fn000000000044F5D0)
;;     000000000044F7EF (in fn000000000044F5D0)
;;     000000000044F9DC (in fn000000000044F800)
;;     000000000044FA01 (in fn000000000044F800)
;;     000000000044FA13 (in fn000000000044F800)
;;     000000000044FBFC (in fn000000000044FA20)
;;     000000000044FC21 (in fn000000000044FA20)
;;     000000000044FC33 (in fn000000000044FA20)
;;     000000000044FE1C (in fn000000000044FC40)
;;     000000000044FE41 (in fn000000000044FC40)
;;     000000000044FE53 (in fn000000000044FC40)
;;     000000000045003C (in fn000000000044FE60)
;;     0000000000450061 (in fn000000000044FE60)
;;     0000000000450073 (in fn000000000044FE60)
;;     000000000045A5E2 (in fn000000000045A4D0)
;;     000000000045A606 (in fn000000000045A4D0)
;;     000000000045A732 (in fn000000000045A620)
;;     000000000045A756 (in fn000000000045A620)
;;     000000000045A882 (in fn000000000045A770)
;;     000000000045A8A6 (in fn000000000045A770)
;;     000000000045A9D2 (in fn000000000045A8C0)
;;     000000000045A9F6 (in fn000000000045A8C0)
;;     000000000045AB22 (in fn000000000045AA10)
;;     000000000045AB46 (in fn000000000045AA10)
;;     000000000045AC72 (in fn000000000045AB60)
;;     000000000045AC96 (in fn000000000045AB60)
;;     000000000045ADC2 (in fn000000000045ACB0)
;;     000000000045ADE6 (in fn000000000045ACB0)
;;     000000000045AF12 (in fn000000000045AE00)
;;     000000000045AF36 (in fn000000000045AE00)
;;     000000000045B062 (in fn000000000045AF50)
;;     000000000045B086 (in fn000000000045AF50)
;;     000000000045B1B2 (in fn000000000045B0A0)
;;     000000000045B1D6 (in fn000000000045B0A0)
;;     000000000045B302 (in fn000000000045B1F0)
;;     000000000045B326 (in fn000000000045B1F0)
;;     000000000045D521 (in fn000000000045D400)
;;     000000000045D545 (in fn000000000045D400)
;;     000000000045D6EE (in fn000000000045D590)
;;     000000000045D719 (in fn000000000045D590)
;;     000000000045E0FD (in fn000000000045DF60)
;;     000000000045E122 (in fn000000000045DF60)
;;     000000000045E134 (in fn000000000045DF60)
;;     000000000045E2DD (in fn000000000045E140)
;;     000000000045E302 (in fn000000000045E140)
;;     000000000045E314 (in fn000000000045E140)
;;     000000000045E4B1 (in fn000000000045E320)
;;     000000000045E4D6 (in fn000000000045E320)
;;     000000000045E4E8 (in fn000000000045E320)
;;     000000000045E69E (in fn000000000045E4F0)
;;     000000000045E6C3 (in fn000000000045E4F0)
;;     000000000045E6D5 (in fn000000000045E4F0)
;;     000000000045E87D (in fn000000000045E6E0)
;;     000000000045E8A2 (in fn000000000045E6E0)
;;     000000000045E8B4 (in fn000000000045E6E0)
;;     000000000045EA5D (in fn000000000045E8C0)
;;     000000000045EA82 (in fn000000000045E8C0)
;;     000000000045EA94 (in fn000000000045E8C0)
;;     000000000045EC3D (in fn000000000045EAA0)
;;     000000000045EC62 (in fn000000000045EAA0)
;;     000000000045EC74 (in fn000000000045EAA0)
;;     000000000045EE1D (in fn000000000045EC80)
;;     000000000045EE42 (in fn000000000045EC80)
;;     000000000045EE54 (in fn000000000045EC80)
;;     000000000046C5AC (in fn000000000046C440)
;;     00000000004707C8 (in fn0000000000470480)
;;     00000000004707FB (in fn0000000000470480)
;;     0000000000473CA7 (in fn0000000000473B60)
;;     0000000000473CB9 (in fn0000000000473B60)
;;     0000000000475994 (in fn0000000000475910)
;;     0000000000475999 (in fn0000000000475910)
;;     0000000000475A6F (in fn0000000000475A40)
fn0000000000475A70 proc
	sub	rsp,28h
	call	475D50h
	mov	rcx,[rax]
	test	rcx,rcx
	jz	475AA9h

l0000000000475A81:
	mov	rdx,0B8B1AABCBCD4D500h
	add	rdx,[rcx+50h]
	cmp	rdx,1h
	ja	475AB0h

l0000000000475A95:
	mov	edx,[rcx+28h]
	test	edx,edx
	js	475AC4h

l0000000000475A9C:
	sub	edx,1h
	jz	475AD2h

l0000000000475AA1:
	cmp	edx,0FFh
	jz	475AE6h

l0000000000475AA6:
	mov	[rcx+28h],edx

l0000000000475AA9:
	add	rsp,28h
	ret
0000000000475AAE                                           66 90               f.

l0000000000475AB0:
	add	rcx,50h
	mov	qword ptr [rax],+0h
	add	rsp,28h
	jmp	4116C0h

l0000000000475AC4:
	add	edx,1h
	jnz	475AA6h

l0000000000475AC9:
	mov	r8,[rcx+20h]
	mov	[rax],r8
	jmp	475AA6h

l0000000000475AD2:
	mov	rdx,[rcx+20h]
	add	rcx,50h
	mov	[rax],rdx
	add	rsp,28h
	jmp	4116C0h

l0000000000475AE6:
	call	472D60h
	nop
	nop
	nop
	nop
	nop

;; fn0000000000475AF0: 0000000000475AF0
;;   Called from:
;;     0000000000423A84 (in fn0000000000423A70)
;;     0000000000475AEF (in fn0000000000475A70)
fn0000000000475AF0 proc
	push	rbx
	sub	rsp,20h
	lea	rax,[0000000000487380]                                 ; [rip+00011884]
	cmp	rcx,rax
	jc	475B0Dh

l0000000000475B01:
	lea	rdx,[0000000000489780]                                 ; [rip+00013C78]
	cmp	rcx,rdx
	jc	475B20h

l0000000000475B0D:
	add	rsp,20h
	pop	rbx
	jmp	41BDA0h
0000000000475B17                      66 0F 1F 84 00 00 00 00 00        f........

l0000000000475B20:
	sub	ecx,eax
	mov	rdx,0E38E38E38E38E38Fh
	mov	rax,rcx
	lea	rcx,[0000000000489A20]                                 ; [rip+00013EEA]
	mul	rdx
	mov	rbx,rdx
	shr	rbx,7h
	call	4208F0h
	test	eax,eax
	jnz	475B72h

l0000000000475B49:
	mov	ecx,ebx
	mov	rax,-2h
	rol	rax,cl
	lea	rcx,[0000000000489A20]                                 ; [rip+00013EC4]
	and	[0000000000477360],rax                                 ; [rip+000017FD]
	call	4202A0h
	test	eax,eax
	jnz	475B85h

l0000000000475B6C:
	add	rsp,20h
	pop	rbx
	ret

l0000000000475B72:
	call	426240h

l0000000000475B77:
	add	rdx,1h
	mov	rcx,rax
	jz	475B8Ch

l0000000000475B80:
	call	4115B0h

l0000000000475B85:
	call	426270h
	jmp	475B77h

l0000000000475B8C:
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
	nop
	nop
	nop

;; fn0000000000475BA0: 0000000000475BA0
;;   Called from:
;;     000000000042392B (in fn0000000000423900)
;;     0000000000423AAC (in fn0000000000423A70)
;;     000000000046214E (in fn0000000000462120)
;;     0000000000470B86 (in fn0000000000470B20)
;;     0000000000470C06 (in fn0000000000470BA0)
;;     0000000000470C96 (in fn0000000000470C30)
;;     0000000000470CFB (in fn0000000000470CC0)
;;     0000000000470D76 (in fn0000000000470D10)
;;     0000000000470EC6 (in fn0000000000470E60)
;;     0000000000470F56 (in fn0000000000470EF0)
;;     0000000000471306 (in fn00000000004712A0)
;;     0000000000471396 (in fn0000000000471330)
;;     00000000004714A6 (in fn0000000000471440)
;;     0000000000471536 (in fn00000000004714D0)
;;     000000000047160D (in fn0000000000471560)
;;     0000000000475B9F (in fn0000000000475AF0)
fn0000000000475BA0 proc
	push	rbx
	sub	rsp,20h
	lea	rax,[0000000000477380]                                 ; [rip+000017D4]
	cmp	rcx,rax
	jc	475BBDh

l0000000000475BB1:
	lea	rdx,[0000000000487380]                                 ; [rip+000117C8]
	cmp	rcx,rdx
	jc	475BD0h

l0000000000475BBD:
	sub	rcx,+0A0h
	add	rsp,20h
	pop	rbx
	jmp	41BDA0h
0000000000475BCE                                           66 90               f.

l0000000000475BD0:
	mov	rbx,rcx
	lea	rcx,[0000000000489A20]                                 ; [rip+00013E46]
	sub	rbx,rax
	shr	ebx,0Ah
	call	4208F0h
	test	eax,eax
	jnz	475C12h

l0000000000475BE9:
	mov	ecx,ebx
	mov	rax,-2h
	rol	rax,cl
	lea	rcx,[0000000000489A20]                                 ; [rip+00013E24]
	and	[0000000000477350],rax                                 ; [rip+0000174D]
	call	4202A0h
	test	eax,eax
	jnz	475C25h

l0000000000475C0C:
	add	rsp,20h
	pop	rbx
	ret

l0000000000475C12:
	call	426240h

l0000000000475C17:
	add	rdx,1h
	mov	rcx,rax
	jz	475C2Ch

l0000000000475C20:
	call	4115B0h

l0000000000475C25:
	call	426270h
	jmp	475C17h

l0000000000475C2C:
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
	nop
	nop
	nop

;; fn0000000000475C40: 0000000000475C40
;;   Called from:
;;     0000000000475C3F (in fn0000000000475BA0)
fn0000000000475C40 proc
	mov	rax,[rcx-8h]
	ret
0000000000475C45                90 90 90 90 90 90 90 90 90 90 90      ...........

;; fn0000000000475C50: 0000000000475C50
;;   Called from:
;;     0000000000470978 (in fn0000000000470970)
;;     0000000000470A84 (in fn0000000000470A80)
;;     0000000000475848 (in fn0000000000475840)
;;     0000000000475A04 (in fn0000000000475A00)
;;     0000000000476065 (in fn0000000000476060)
;;     00000000004760C0 (in fn00000000004760B0)
fn0000000000475C50 proc
	push	rbx
	sub	rsp,20h
	mov	rax,[000000000048C0E0]                                 ; [rip+00016484]
	test	rax,rax
	jz	475CF0h

l0000000000475C65:
	cmp	byte ptr [rax+4h],0h
	jz	475C83h

l0000000000475C6B:
	mov	ecx,[rax]
	call	41E810h
	test	rax,rax
	mov	rbx,rax
	jz	475CB0h

l0000000000475C7A:
	mov	rax,rbx
	add	rsp,20h
	pop	rbx
	ret

l0000000000475C83:
	mov	rbx,[000000000048C0D0]                                 ; [rip+00016446]
	test	rbx,rbx
	jnz	475C7Ah

l0000000000475C8F:
	lea	rcx,[000000000048D7B0]                                 ; [rip+00017B1A]
	xor	r8d,r8d
	mov	edx,10h
	call	4117B0h
	mov	rbx,rax
	mov	[000000000048C0D0],rax                                 ; [rip+00016423]
	jmp	475C7Ah
0000000000475CAF                                              90                .

l0000000000475CB0:
	mov	ecx,10h
	call	41BCB0h
	test	rax,rax
	mov	rbx,rax
	jz	475D14h

l0000000000475CC2:
	mov	rax,[000000000048C0E0]                                 ; [rip+00016417]
	test	rax,rax
	jz	475D19h

l0000000000475CCE:
	mov	ecx,[rax]
	mov	rdx,rbx
	call	41E880h
	test	eax,eax
	jnz	475D14h

l0000000000475CDC:
	mov	qword ptr [rbx],+0h
	mov	dword ptr [rbx+8h],0h
	jmp	475C7Ah
0000000000475CEC                                     0F 1F 40 00             ..@.

l0000000000475CF0:
	lea	r8,[0000000000476300]                                  ; [rip+00000609]
	lea	rcx,[000000000048D7BB]                                 ; [rip+00017ABD]
	mov	edx,8h
	call	4117B0h
	mov	[000000000048C0E0],rax                                 ; [rip+000163D1]
	jmp	475C65h

l0000000000475D14:
	call	472D60h

l0000000000475D19:
	lea	r8,[0000000000476300]                                  ; [rip+000005E0]
	lea	rcx,[000000000048D7BB]                                 ; [rip+00017A94]
	mov	edx,8h
	call	4117B0h
	mov	[000000000048C0E0],rax                                 ; [rip+000163A8]
	jmp	475CCEh
0000000000475D3A                               48 83 C2 01 48 89           H...H.
0000000000475D40 C1 74 05 E8 68 B8 F9 FF E8 C3 FB FF FF 90 90 90 .t..h...........

;; fn0000000000475D50: 0000000000475D50
;;   Called from:
;;     0000000000475948 (in fn0000000000475910)
;;     0000000000475A74 (in fn0000000000475A70)
fn0000000000475D50 proc
	sub	rsp,28h
	mov	rax,[000000000048C0E0]                                 ; [rip+00016385]
	test	rax,rax
	jz	475DA0h

l0000000000475D60:
	cmp	byte ptr [rax+4h],0h
	jz	475D73h

l0000000000475D66:
	mov	ecx,[rax]
	call	41E810h
	nop

l0000000000475D6E:
	add	rsp,28h
	ret

l0000000000475D73:
	mov	rax,[000000000048C0D0]                                 ; [rip+00016356]
	test	rax,rax
	jnz	475D6Eh

l0000000000475D7F:
	lea	rcx,[000000000048D7B0]                                 ; [rip+00017A2A]
	xor	r8d,r8d
	mov	edx,10h
	call	4117B0h
	mov	[000000000048C0D0],rax                                 ; [rip+00016336]
	jmp	475D6Eh
0000000000475D9C                                     0F 1F 40 00             ..@.

l0000000000475DA0:
	lea	r8,[0000000000476300]                                  ; [rip+00000559]
	lea	rcx,[000000000048D7BB]                                 ; [rip+00017A0D]
	mov	edx,8h
	call	4117B0h
	mov	[000000000048C0E0],rax                                 ; [rip+00016321]
	jmp	475D60h
0000000000475DC1    48 83 C2 01 48 89 C1 74 05 E8 E1 B7 F9 FF E8  H...H..t.......
0000000000475DD0 3C FB FF FF 90 90 90 90 90 90 90 90 90 90 90 90 <...............

;; fn0000000000475DE0: 0000000000475DE0
;;   Called from:
;;     0000000000469526 (in fn0000000000469430)
fn0000000000475DE0 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	lea	rdx,[0000000000424380]                                 ; [rip+FFFAE593]
	mov	rbx,rcx
	lea	rcx,[000000000048C060]                                 ; [rip+00016269]
	call	41DEE0h
	mov	rcx,[000000000048AA60]                                 ; [rip+00014C5D]
	call	4208F0h
	test	eax,eax
	jnz	475E4Ah

l0000000000475E0C:
	lea	rdx,[0000000000424360]                                 ; [rip+FFFAE54D]
	lea	rcx,[000000000048C040]                                 ; [rip+00016226]
	mov	byte ptr [rbx+1h],0h
	call	41DEE0h
	mov	rcx,[000000000048AA50]                                 ; [rip+00014C26]
	call	4218B0h
	test	eax,eax
	jnz	475E5Dh

l0000000000475E33:
	mov	rcx,[000000000048AA60]                                 ; [rip+00014C26]
	call	4202A0h
	test	eax,eax
	jnz	475E75h

l0000000000475E43:
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret

l0000000000475E4A:
	call	426240h
	mov	rcx,rax

l0000000000475E52:
	add	rdx,1h
	jz	475E7Ah

l0000000000475E58:
	call	4115B0h

l0000000000475E5D:
	call	4262A0h
	mov	rbx,rax
	mov	rsi,rdx
	call	476590h
	mov	rcx,rbx
	mov	rdx,rsi
	jmp	475E52h

l0000000000475E75:
	call	426270h

l0000000000475E7A:
	call	475910h
	nop

;; fn0000000000475E80: 0000000000475E80
;;   Called from:
;;     0000000000424197 (in fn0000000000424170)
;;     0000000000469497 (in fn0000000000469430)
;;     000000000046FF27 (in fn000000000046FF00)
;;     0000000000475E7F (in fn0000000000475DE0)
fn0000000000475E80 proc
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,20h
	movzx	eax,byte ptr [rcx]
	xor	edi,edi
	test	al,al
	jz	475EA0h

l0000000000475E90:
	mov	eax,edi
	add	rsp,20h
	pop	rbx
	pop	rsi
	pop	rdi
	ret
0000000000475E9A                               66 0F 1F 44 00 00           f..D..

l0000000000475EA0:
	lea	rdx,[0000000000424380]                                 ; [rip+FFFAE4D9]
	mov	rbx,rcx
	lea	rcx,[000000000048C060]                                 ; [rip+000161AF]
	call	41DEE0h
	mov	rcx,[000000000048AA60]                                 ; [rip+00014BA3]
	call	4208F0h
	test	eax,eax
	mov	edi,eax
	jz	475F16h

l0000000000475EC8:
	jmp	475F79h
0000000000475ECD                                        0F 1F 00              ...

l0000000000475ED0:
	cmp	byte ptr [rbx+1h],0h
	jz	475F34h

l0000000000475ED6:
	lea	rdx,[0000000000424380]                                 ; [rip+FFFAE4A3]
	lea	rcx,[000000000048C060]                                 ; [rip+0001617C]
	call	41DEE0h
	lea	rdx,[0000000000424360]                                 ; [rip+FFFAE470]
	lea	rcx,[000000000048C040]                                 ; [rip+00016149]
	mov	rsi,[000000000048AA60]                                 ; [rip+00014B62]
	call	41DEE0h
	mov	rcx,[000000000048AA50]                                 ; [rip+00014B46]
	mov	rdx,rsi
	call	4219D0h
	test	eax,eax
	jnz	475F3Fh

l0000000000475F16:
	cmp	byte ptr [rbx],0h
	jz	475ED0h

l0000000000475F1B:
	mov	rcx,[000000000048AA60]                                 ; [rip+00014B3E]
	call	4202A0h
	test	eax,eax
	jz	475E90h

l0000000000475F2F:
	call	426270h

l0000000000475F34:
	mov	byte ptr [rbx+1h],1h
	mov	edi,1h
	jmp	475F1Bh

l0000000000475F3F:
	mov	ecx,8h
	lea	rdi,[0000000000495E50]                                 ; [rip+0001FF05]
	call	4756E0h
	lea	r8,[0000000000425E90]                                  ; [rip+FFFAFF39]
	lea	rdx,[0000000000493140]                                 ; [rip+0001D1E2]
	mov	[rax],rdi
	mov	rcx,rax
	call	4760B0h
	mov	rbx,rax
	call	476590h
	mov	rcx,rbx
	call	4115B0h

l0000000000475F79:
	call	426240h
	nop
	nop

;; fn0000000000475F80: 0000000000475F80
;;   Called from:
;;     00000000004241B5 (in fn0000000000424170)
;;     00000000004694B5 (in fn0000000000469430)
;;     000000000046FF37 (in fn000000000046FF00)
;;     0000000000475F7F (in fn0000000000475E80)
fn0000000000475F80 proc
	push	rsi
	push	rbx
	sub	rsp,28h
	lea	rdx,[0000000000424380]                                 ; [rip+FFFAE3F3]
	mov	rbx,rcx
	lea	rcx,[000000000048C060]                                 ; [rip+000160C9]
	call	41DEE0h
	mov	rcx,[000000000048AA60]                                 ; [rip+00014ABD]
	call	4208F0h
	test	eax,eax
	jnz	475FEDh

l0000000000475FAC:
	mov	byte ptr [rbx+1h],0h
	lea	rdx,[0000000000424360]                                 ; [rip+FFFAE3A9]
	lea	rcx,[000000000048C040]                                 ; [rip+00016082]
	mov	byte ptr [rbx],1h
	call	41DEE0h
	mov	rcx,[000000000048AA50]                                 ; [rip+00014A83]
	call	4218B0h
	test	eax,eax
	jnz	476000h

l0000000000475FD6:
	mov	rcx,[000000000048AA60]                                 ; [rip+00014A83]
	call	4202A0h
	test	eax,eax
	jnz	476018h

l0000000000475FE6:
	add	rsp,28h
	pop	rbx
	pop	rsi
	ret

l0000000000475FED:
	call	426240h
	mov	rcx,rax

l0000000000475FF5:
	add	rdx,1h
	jz	47601Dh

l0000000000475FFB:
	call	4115B0h

l0000000000476000:
	call	4262A0h
	mov	rbx,rax
	mov	rsi,rdx
	call	476590h
	mov	rcx,rbx
	mov	rdx,rsi
	jmp	475FF5h

l0000000000476018:
	call	426270h

l000000000047601D:
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
	nop
	nop

;; fn0000000000476030: 0000000000476030
;;   Called from:
;;     000000000047602F (in fn0000000000475F80)
fn0000000000476030 proc
	sub	rsp,28h
	lea	rdx,[000000000048E180]                                 ; [rip+00018145]
	mov	r8d,1Bh
	mov	ecx,2h
	call	41BDD0h
	call	472D60h
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop

;; fn0000000000476060: 0000000000476060
;;   Called from:
;;     0000000000426112 (in fn0000000000426060)
;;     000000000044B503 (in fn000000000044B410)
;;     000000000044B538 (in fn000000000044B410)
;;     000000000044B53D (in fn000000000044B410)
;;     000000000044B653 (in fn000000000044B560)
;;     000000000044B688 (in fn000000000044B560)
;;     000000000044B68D (in fn000000000044B560)
;;     000000000044B7A3 (in fn000000000044B6B0)
;;     000000000044B7D8 (in fn000000000044B6B0)
;;     000000000044B7DD (in fn000000000044B6B0)
;;     000000000044B8F3 (in fn000000000044B800)
;;     000000000044B928 (in fn000000000044B800)
;;     000000000044B92D (in fn000000000044B800)
;;     000000000044BA43 (in fn000000000044B950)
;;     000000000044BA78 (in fn000000000044B950)
;;     000000000044BA7D (in fn000000000044B950)
;;     000000000044BB93 (in fn000000000044BAA0)
;;     000000000044BBC8 (in fn000000000044BAA0)
;;     000000000044BBCD (in fn000000000044BAA0)
;;     000000000044BCE3 (in fn000000000044BBF0)
;;     000000000044BD18 (in fn000000000044BBF0)
;;     000000000044BD1D (in fn000000000044BBF0)
;;     000000000044BE33 (in fn000000000044BD40)
;;     000000000044BE68 (in fn000000000044BD40)
;;     000000000044BE6D (in fn000000000044BD40)
;;     000000000044BF83 (in fn000000000044BE90)
;;     000000000044BFB8 (in fn000000000044BE90)
;;     000000000044BFBD (in fn000000000044BE90)
;;     000000000044C0D3 (in fn000000000044BFE0)
;;     000000000044C108 (in fn000000000044BFE0)
;;     000000000044C10D (in fn000000000044BFE0)
;;     000000000044C223 (in fn000000000044C130)
;;     000000000044C258 (in fn000000000044C130)
;;     000000000044C25D (in fn000000000044C130)
;;     000000000044E4F3 (in fn000000000044E3F0)
;;     000000000044E528 (in fn000000000044E3F0)
;;     000000000044E52D (in fn000000000044E3F0)
;;     000000000044E6BE (in fn000000000044E580)
;;     000000000044E6FA (in fn000000000044E580)
;;     000000000044E6FF (in fn000000000044E580)
;;     000000000044F0FC (in fn000000000044EF40)
;;     000000000044F123 (in fn000000000044EF40)
;;     000000000044F14B (in fn000000000044EF40)
;;     000000000044F333 (in fn000000000044F160)
;;     000000000044F35A (in fn000000000044F160)
;;     000000000044F382 (in fn000000000044F160)
;;     000000000044F563 (in fn000000000044F3A0)
;;     000000000044F58A (in fn000000000044F3A0)
;;     000000000044F5B2 (in fn000000000044F3A0)
;;     000000000044F798 (in fn000000000044F5D0)
;;     000000000044F7BF (in fn000000000044F5D0)
;;     000000000044F7E7 (in fn000000000044F5D0)
;;     000000000044F9BC (in fn000000000044F800)
;;     000000000044F9E3 (in fn000000000044F800)
;;     000000000044FA0B (in fn000000000044F800)
;;     000000000044FBDC (in fn000000000044FA20)
;;     000000000044FC03 (in fn000000000044FA20)
;;     000000000044FC2B (in fn000000000044FA20)
;;     000000000044FDFC (in fn000000000044FC40)
;;     000000000044FE23 (in fn000000000044FC40)
;;     000000000044FE4B (in fn000000000044FC40)
;;     000000000045001C (in fn000000000044FE60)
;;     0000000000450043 (in fn000000000044FE60)
;;     000000000045006B (in fn000000000044FE60)
;;     000000000045A5C4 (in fn000000000045A4D0)
;;     000000000045A5F9 (in fn000000000045A4D0)
;;     000000000045A5FE (in fn000000000045A4D0)
;;     000000000045A714 (in fn000000000045A620)
;;     000000000045A749 (in fn000000000045A620)
;;     000000000045A74E (in fn000000000045A620)
;;     000000000045A864 (in fn000000000045A770)
;;     000000000045A899 (in fn000000000045A770)
;;     000000000045A89E (in fn000000000045A770)
;;     000000000045A9B4 (in fn000000000045A8C0)
;;     000000000045A9E9 (in fn000000000045A8C0)
;;     000000000045A9EE (in fn000000000045A8C0)
;;     000000000045AB04 (in fn000000000045AA10)
;;     000000000045AB39 (in fn000000000045AA10)
;;     000000000045AB3E (in fn000000000045AA10)
;;     000000000045AC54 (in fn000000000045AB60)
;;     000000000045AC89 (in fn000000000045AB60)
;;     000000000045AC8E (in fn000000000045AB60)
;;     000000000045ADA4 (in fn000000000045ACB0)
;;     000000000045ADD9 (in fn000000000045ACB0)
;;     000000000045ADDE (in fn000000000045ACB0)
;;     000000000045AEF4 (in fn000000000045AE00)
;;     000000000045AF29 (in fn000000000045AE00)
;;     000000000045AF2E (in fn000000000045AE00)
;;     000000000045B044 (in fn000000000045AF50)
;;     000000000045B079 (in fn000000000045AF50)
;;     000000000045B07E (in fn000000000045AF50)
;;     000000000045B194 (in fn000000000045B0A0)
;;     000000000045B1C9 (in fn000000000045B0A0)
;;     000000000045B1CE (in fn000000000045B0A0)
;;     000000000045B2E4 (in fn000000000045B1F0)
;;     000000000045B319 (in fn000000000045B1F0)
;;     000000000045B31E (in fn000000000045B1F0)
;;     000000000045D503 (in fn000000000045D400)
;;     000000000045D538 (in fn000000000045D400)
;;     000000000045D53D (in fn000000000045D400)
;;     000000000045D6D0 (in fn000000000045D590)
;;     000000000045D70C (in fn000000000045D590)
;;     000000000045D711 (in fn000000000045D590)
;;     000000000045E0DD (in fn000000000045DF60)
;;     000000000045E104 (in fn000000000045DF60)
;;     000000000045E12C (in fn000000000045DF60)
;;     000000000045E2BD (in fn000000000045E140)
;;     000000000045E2E4 (in fn000000000045E140)
;;     000000000045E30C (in fn000000000045E140)
;;     000000000045E491 (in fn000000000045E320)
;;     000000000045E4B8 (in fn000000000045E320)
;;     000000000045E4E0 (in fn000000000045E320)
;;     000000000045E67E (in fn000000000045E4F0)
;;     000000000045E6A5 (in fn000000000045E4F0)
;;     000000000045E6CD (in fn000000000045E4F0)
;;     000000000045E85D (in fn000000000045E6E0)
;;     000000000045E884 (in fn000000000045E6E0)
;;     000000000045E8AC (in fn000000000045E6E0)
;;     000000000045EA3D (in fn000000000045E8C0)
;;     000000000045EA64 (in fn000000000045E8C0)
;;     000000000045EA8C (in fn000000000045E8C0)
;;     000000000045EC1D (in fn000000000045EAA0)
;;     000000000045EC44 (in fn000000000045EAA0)
;;     000000000045EC6C (in fn000000000045EAA0)
;;     000000000045EDFD (in fn000000000045EC80)
;;     000000000045EE24 (in fn000000000045EC80)
;;     000000000045EE4C (in fn000000000045EC80)
;;     000000000046E191 (in fn000000000046E180)
;;     000000000046E991 (in fn000000000046E980)
;;     00000000004707DD (in fn0000000000470480)
;;     0000000000470805 (in fn0000000000470480)
;;     0000000000473C6F (in fn0000000000473B60)
;;     0000000000473C89 (in fn0000000000473B60)
;;     0000000000473CB1 (in fn0000000000473B60)
;;     000000000047598C (in fn0000000000475910)
;;     000000000047605F (in fn0000000000476030)
fn0000000000476060 proc
	push	rbx
	sub	rsp,20h
	call	475C50h
	mov	rcx,[rax]
	add	dword ptr [rax+8h],1h
	test	rcx,rcx
	jz	4760A5h

l0000000000476076:
	mov	rdx,0B8B1AABCBCD4D500h
	add	rdx,[rcx+50h]
	cmp	rdx,1h
	jbe	4760AAh

l000000000047608A:
	mov	qword ptr [rax],+0h

l0000000000476091:
	lea	rbx,[rcx+50h]
	mov	rcx,rbx
	call	411660h
	mov	rcx,rbx
	call	475840h

l00000000004760A5:
	call	472D60h

l00000000004760AA:
	neg	dword ptr [rcx+28h]
	jmp	476091h
00000000004760AF                                              90                .

;; fn00000000004760B0: 00000000004760B0
;;   Called from:
;;     0000000000426269 (in fn0000000000426240)
;;     0000000000426299 (in fn0000000000426270)
;;     00000000004262C9 (in fn00000000004262A0)
;;     0000000000469517 (in fn0000000000469430)
;;     000000000047084D (in fn0000000000470820)
;;     00000000004708DD (in fn00000000004708B0)
;;     0000000000470A6D (in fn0000000000470A40)
;;     0000000000470B7B (in fn0000000000470B20)
;;     0000000000470BFB (in fn0000000000470BA0)
;;     0000000000470C8B (in fn0000000000470C30)
;;     0000000000470CF0 (in fn0000000000470CC0)
;;     0000000000470D6B (in fn0000000000470D10)
;;     0000000000470E1D (in fn0000000000470DA0)
;;     0000000000470EBB (in fn0000000000470E60)
;;     0000000000470F4B (in fn0000000000470EF0)
;;     0000000000470FF8 (in fn0000000000470F80)
;;     000000000047128D (in fn0000000000471260)
;;     00000000004712FB (in fn00000000004712A0)
;;     000000000047138B (in fn0000000000471330)
;;     000000000047149B (in fn0000000000471440)
;;     000000000047152B (in fn00000000004714D0)
;;     0000000000471602 (in fn0000000000471560)
;;     000000000047165D (in fn0000000000471630)
;;     00000000004755F9 (in fn0000000000475590)
;;     00000000004757ED (in fn00000000004757C0)
;;     000000000047582D (in fn0000000000475800)
;;     00000000004759E8 (in fn0000000000475910)
;;     0000000000475F64 (in fn0000000000475E80)
;;     000000000047614D (in fn0000000000476120)
;;     000000000047618D (in fn0000000000476160)
fn00000000004760B0 proc
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,20h
	mov	rbx,rcx
	mov	rdi,rdx
	mov	rsi,r8
	call	475C50h
	add	dword ptr [rax+8h],1h
	mov	dword ptr [rbx-0A0h],1h
	sub	rbx,40h
	mov	[rbx-50h],rdi
	mov	[rbx-48h],rsi
	call	46FE70h
	mov	[rbx-40h],rax
	call	46F760h
	mov	[rbx-38h],rax
	mov	rax,474E5543432B2B00h
	mov	[rbx],rax
	lea	rax,[0000000000423900]                                 ; [rip+FFFAD7FB]
	mov	[rbx+8h],rax
	mov	rcx,rbx
	call	411550h
	mov	rcx,rbx
	call	475840h
	call	472D60h
	nop
	nop

;; fn0000000000476120: 0000000000476120
;;   Called from:
;;     000000000047611F (in fn00000000004760B0)
fn0000000000476120 proc
	sub	rsp,28h
	mov	ecx,8h
	call	4756E0h
	mov	rcx,[0000000000491C70]                                 ; [rip+0001BB3B]
	lea	r8,[0000000000465090]                                  ; [rip+FFFEEF54]
	lea	rdx,[rcx+10h]
	mov	rcx,rax
	mov	[rax],rdx
	lea	rdx,[00000000004939D0]                                 ; [rip+0001D883]
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

;; fn0000000000476160: 0000000000476160
;;   Called from:
;;     00000000004576C2 (in fn0000000000457690)
;;     000000000047615F (in fn0000000000476120)
fn0000000000476160 proc
	sub	rsp,28h
	mov	ecx,8h
	call	4756E0h
	mov	rcx,[0000000000491CF0]                                 ; [rip+0001BB7B]
	lea	r8,[00000000004688C0]                                  ; [rip-0000D8BC]
	lea	rdx,[rcx+10h]
	mov	rcx,rax
	mov	[rax],rdx
	lea	rdx,[0000000000493B70]                                 ; [rip+0001D9E3]
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

;; fn00000000004761A0: 00000000004761A0
;;   Called from:
;;     00000000004723E0 (in fn00000000004723A0)
;;     0000000000472440 (in fn0000000000472400)
;;     00000000004724A0 (in fn0000000000472460)
;;     0000000000472500 (in fn00000000004724C0)
;;     0000000000472560 (in fn0000000000472520)
;;     00000000004725C0 (in fn0000000000472580)
;;     0000000000472620 (in fn00000000004725E0)
;;     0000000000472680 (in fn0000000000472640)
;;     00000000004726E0 (in fn00000000004726A0)
;;     0000000000472740 (in fn0000000000472700)
;;     00000000004727A0 (in fn0000000000472760)
;;     0000000000472800 (in fn00000000004727C0)
;;     0000000000472860 (in fn0000000000472820)
;;     00000000004728C0 (in fn0000000000472880)
;;     0000000000472920 (in fn00000000004728E0)
;;     0000000000472980 (in fn0000000000472940)
;;     00000000004729E0 (in fn00000000004729A0)
;;     0000000000472A40 (in fn0000000000472A00)
;;     0000000000472AA0 (in fn0000000000472A60)
;;     0000000000472B00 (in fn0000000000472AC0)
;;     0000000000472B60 (in fn0000000000472B20)
;;     0000000000472BC0 (in fn0000000000472B80)
;;     0000000000472C20 (in fn0000000000472BE0)
;;     0000000000472C80 (in fn0000000000472C40)
;;     0000000000472CE0 (in fn0000000000472CA0)
;;     0000000000472D40 (in fn0000000000472D00)
;;     0000000000472DBB (in fn0000000000472D80)
;;     0000000000472E1B (in fn0000000000472DE0)
;;     0000000000472E7B (in fn0000000000472E40)
;;     0000000000472EDB (in fn0000000000472EA0)
;;     0000000000472F3B (in fn0000000000472F00)
;;     0000000000472F9B (in fn0000000000472F60)
;;     0000000000472FFB (in fn0000000000472FC0)
;;     000000000047305B (in fn0000000000473020)
;;     00000000004730BB (in fn0000000000473080)
;;     000000000047311B (in fn00000000004730E0)
;;     000000000047317B (in fn0000000000473140)
;;     00000000004731DB (in fn00000000004731A0)
;;     000000000047323B (in fn0000000000473200)
;;     000000000047329B (in fn0000000000473260)
;;     00000000004732FB (in fn00000000004732C0)
;;     000000000047335B (in fn0000000000473320)
;;     00000000004733BB (in fn0000000000473380)
;;     000000000047341B (in fn00000000004733E0)
;;     000000000047347B (in fn0000000000473440)
;;     00000000004734DB (in fn00000000004734A0)
;;     000000000047353B (in fn0000000000473500)
;;     000000000047359B (in fn0000000000473560)
;;     00000000004735FB (in fn00000000004735C0)
;;     000000000047365B (in fn0000000000473620)
;;     00000000004736BB (in fn0000000000473680)
;;     000000000047371B (in fn00000000004736E0)
;;     000000000047377B (in fn0000000000473740)
;;     00000000004737DB (in fn00000000004737A0)
;;     000000000047619F (in fn0000000000476160)
fn00000000004761A0 proc
	push	rbp
	push	rdi
	push	rsi
	push	rbx
	sub	rsp,68h
	mov	rax,[rcx]
	mov	rbx,rcx
	mov	rbp,rdx
	mov	rdx,rcx
	mov	rsi,r8
	lea	r8,[rsp+40h]
	mov	rdi,r9
	mov	rcx,[rax-8h]
	add	rdx,[rax-10h]
	mov	r9,rsi
	mov	qword ptr [rsp+40h],+0h
	mov	dword ptr [rsp+48h],0h
	mov	dword ptr [rsp+4Ch],0h
	mov	dword ptr [rsp+50h],0h
	mov	rax,[rcx]
	mov	dword ptr [rsp+54h],10h
	mov	[rsp+38h],r8
	mov	[rsp+20h],rdx
	mov	r8d,6h
	mov	[rsp+30h],rbx
	mov	[rsp+28h],rbp
	mov	rdx,rdi
	call	qword ptr [rax+38h]
	mov	r8,[rsp+40h]
	test	r8,r8
	jz	476253h

l0000000000476220:
	mov	edx,[rsp+50h]
	mov	ecx,edx
	and	ecx,6h
	cmp	ecx,6h
	jz	476290h

l000000000047622E:
	mov	r10d,[rsp+4Ch]
	mov	r11d,[rsp+48h]
	and	r11d,r10d
	and	r11d,6h
	cmp	r11d,6h
	jz	476290h

l0000000000476245:
	and	r10d,5h
	cmp	r10d,4h
	jz	476253h

l000000000047624F:
	test	edx,edx
	jz	4762A0h

l0000000000476253:
	xor	eax,eax

l0000000000476255:
	add	rsp,68h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
000000000047625E                                           66 90               f.

l0000000000476260:
	cmp	rdi,0FEh
	jz	476253h

l0000000000476266:
	mov	r10,[rsi]
	mov	[rsp+20h],rbx
	mov	r9,rbp
	mov	rdx,rdi
	mov	rcx,rsi
	call	qword ptr [r10+40h]
	and	eax,6h
	cmp	eax,6h
	jnz	476253h

l0000000000476283:
	mov	r8,[rsp+40h]
	nop	dword ptr [rax+rax+0h]

l0000000000476290:
	mov	rax,r8
	add	rsp,68h
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
000000000047629C                                     0F 1F 40 00             ..@.

l00000000004762A0:
	test	rdi,rdi
	js	476260h

l00000000004762A5:
	add	rdi,r8
	cmp	rbx,rdi
	jz	476290h

l00000000004762AD:
	xor	eax,eax
	jmp	476255h
00000000004762B1    90 90 90 90 90 90 90 90 90 90 90 90 90 90 90  ...............

;; fn00000000004762C0: 00000000004762C0
fn00000000004762C0 proc
	sub	rsp,38h
	lea	rax,[0000000000423C60]                                 ; [rip+FFFAD995]
	mov	[rsp+20h],rax
	call	411340h
	add	rsp,38h
	ret
00000000004762DA                               90 90 90 90 90 90           ......

;; fn00000000004762E0: 00000000004762E0
fn00000000004762E0 proc
	mov	rax,[00000000004916D0]                                 ; [rip+0001B3E9]
	mov	[rcx],rax
	ret
00000000004762EB                                  90 90 90 90 90            .....

;; fn00000000004762F0: 00000000004762F0
fn00000000004762F0 proc
	mov	rax,[0000000000491B20]                                 ; [rip+0001B829]
	mov	[rcx],rax
	ret
00000000004762FB                                  90 90 90 90 90            .....

;; fn0000000000476300: 0000000000476300
fn0000000000476300 proc
	push	rbx
	sub	rsp,30h
	lea	rdx,[00000000004235E0]                                 ; [rip+FFFAD2D4]
	mov	rbx,rcx
	lea	rcx,[rsp+20h]
	mov	byte ptr [rsp+24h],0h
	call	41E000h
	mov	edx,[rsp+20h]
	test	eax,eax
	setz	byte ptr [rbx+4h]
	mov	[rbx],edx
	add	rsp,30h
	pop	rbx
	ret

;; fn0000000000476330: 0000000000476330
fn0000000000476330 proc
	lea	rcx,[0000000000489A20]                                 ; [rip+000136E9]
	jmp	420B50h
000000000047633C                                     90 90 90 90             ....

;; fn0000000000476340: 0000000000476340
fn0000000000476340 proc
	lea	rcx,[000000000048C070]                                 ; [rip+00015D29]
	jmp	420B50h
000000000047634C                                     90 90 90 90             ....

;; fn0000000000476350: 0000000000476350
fn0000000000476350 proc
	lea	rcx,[000000000048C050]                                 ; [rip+00015CF9]
	jmp	420B50h
000000000047635C                                     90 90 90 90             ....

;; fn0000000000476360: 0000000000476360
fn0000000000476360 proc
	ret
0000000000476361    90 90 90 90 90 90 90 90 90 90 90 90 90 90 90  ...............

;; fn0000000000476370: 0000000000476370
fn0000000000476370 proc
	lea	rax,[0000000000495A90]                                 ; [rip+0001F719]
	lea	rcx,[000000000048C080]                                 ; [rip+00015D02]
	mov	[000000000048C080],rax                                 ; [rip+00015CFB]
	jmp	4620B0h
000000000047638A                               90 90 90 90 90 90           ......

;; fn0000000000476390: 0000000000476390
fn0000000000476390 proc
	ret
0000000000476391    90 90 90 90 90 90 90 90 90 90 90 90 90 90 90  ...............

;; fn00000000004763A0: 00000000004763A0
fn00000000004763A0 proc
	sub	rsp,28h
	lea	rcx,[0000000000489A20]                                 ; [rip+00013675]
	xor	edx,edx
	call	420360h
	lea	rcx,[0000000000476330]                                 ; [rip-00000089]
	add	rsp,28h
	jmp	410BF0h
00000000004763C2       90 90 90 90 90 90 90 90 90 90 90 90 90 90   ..............

;; fn00000000004763D0: 00000000004763D0
fn00000000004763D0 proc
	cmp	[00000000004771C0],0h                                  ; [rip+00000DE9]
	jnz	4763E0h

l00000000004763D9:
	mov	[00000000004771C0],1h                                  ; [rip+00000DE0]

l00000000004763E0:
	cmp	[00000000004771D0],0h                                  ; [rip+00000DE9]
	jnz	4763F0h

l00000000004763E9:
	mov	[00000000004771D0],1h                                  ; [rip+00000DE0]

l00000000004763F0:
	cmp	[00000000004772F0],0h                                  ; [rip+00000EF9]
	jnz	476400h

l00000000004763F9:
	mov	[00000000004772F0],1h                                  ; [rip+00000EF0]

l0000000000476400:
	cmp	[0000000000477310],0h                                  ; [rip+00000F09]
	jnz	476410h

l0000000000476409:
	mov	[0000000000477310],1h                                  ; [rip+00000F00]

l0000000000476410:
	cmp	[0000000000477290],0h                                  ; [rip+00000E79]
	jnz	476420h

l0000000000476419:
	mov	[0000000000477290],1h                                  ; [rip+00000E70]

l0000000000476420:
	cmp	[0000000000477230],0h                                  ; [rip+00000E09]
	jnz	476430h

l0000000000476429:
	mov	[0000000000477230],1h                                  ; [rip+00000E00]

l0000000000476430:
	cmp	[0000000000477250],0h                                  ; [rip+00000E19]
	jnz	476440h

l0000000000476439:
	mov	[0000000000477250],1h                                  ; [rip+00000E10]

l0000000000476440:
	cmp	[00000000004771F0],0h                                  ; [rip+00000DA9]
	jnz	476450h

l0000000000476449:
	mov	[00000000004771F0],1h                                  ; [rip+00000DA0]

l0000000000476450:
	cmp	[00000000004772D0],0h                                  ; [rip+00000E79]
	jnz	476460h

l0000000000476459:
	mov	[00000000004772D0],1h                                  ; [rip+00000E70]

l0000000000476460:
	cmp	[00000000004772B0],0h                                  ; [rip+00000E49]
	jnz	476470h

l0000000000476469:
	mov	[00000000004772B0],1h                                  ; [rip+00000E40]

l0000000000476470:
	cmp	[0000000000477270],0h                                  ; [rip+00000DF9]
	jnz	476480h

l0000000000476479:
	mov	[0000000000477270],1h                                  ; [rip+00000DF0]

l0000000000476480:
	cmp	[0000000000477210],0h                                  ; [rip+00000D89]
	jnz	476490h

l0000000000476489:
	mov	[0000000000477210],1h                                  ; [rip+00000D80]

l0000000000476490:
	ret
0000000000476492       90 90 90 90 90 90 90 90 90 90 90 90 90 90   ..............

;; fn00000000004764A0: 00000000004764A0
fn00000000004764A0 proc
	cmp	[00000000004771A0],0h                                  ; [rip+00000CF9]
	jnz	4764B0h

l00000000004764A9:
	mov	[00000000004771A0],1h                                  ; [rip+00000CF0]

l00000000004764B0:
	cmp	[00000000004771B0],0h                                  ; [rip+00000CF9]
	jnz	4764C0h

l00000000004764B9:
	mov	[00000000004771B0],1h                                  ; [rip+00000CF0]

l00000000004764C0:
	cmp	[00000000004772E0],0h                                  ; [rip+00000E19]
	jnz	4764D0h

l00000000004764C9:
	mov	[00000000004772E0],1h                                  ; [rip+00000E10]

l00000000004764D0:
	cmp	[0000000000477300],0h                                  ; [rip+00000E29]
	jnz	4764E0h

l00000000004764D9:
	mov	[0000000000477300],1h                                  ; [rip+00000E20]

l00000000004764E0:
	cmp	[0000000000477280],0h                                  ; [rip+00000D99]
	jnz	4764F0h

l00000000004764E9:
	mov	[0000000000477280],1h                                  ; [rip+00000D90]

l00000000004764F0:
	cmp	[0000000000477220],0h                                  ; [rip+00000D29]
	jnz	476500h

l00000000004764F9:
	mov	[0000000000477220],1h                                  ; [rip+00000D20]

l0000000000476500:
	cmp	[0000000000477240],0h                                  ; [rip+00000D39]
	jnz	476510h

l0000000000476509:
	mov	[0000000000477240],1h                                  ; [rip+00000D30]

l0000000000476510:
	cmp	[00000000004771E0],0h                                  ; [rip+00000CC9]
	jnz	476520h

l0000000000476519:
	mov	[00000000004771E0],1h                                  ; [rip+00000CC0]

l0000000000476520:
	cmp	[00000000004772C0],0h                                  ; [rip+00000D99]
	jnz	476530h

l0000000000476529:
	mov	[00000000004772C0],1h                                  ; [rip+00000D90]

l0000000000476530:
	cmp	[00000000004772A0],0h                                  ; [rip+00000D69]
	jnz	476540h

l0000000000476539:
	mov	[00000000004772A0],1h                                  ; [rip+00000D60]

l0000000000476540:
	cmp	[0000000000477260],0h                                  ; [rip+00000D19]
	jnz	476550h

l0000000000476549:
	mov	[0000000000477260],1h                                  ; [rip+00000D10]

l0000000000476550:
	cmp	[0000000000477200],0h                                  ; [rip+00000CA9]
	jnz	476560h

l0000000000476559:
	mov	[0000000000477200],1h                                  ; [rip+00000CA0]

l0000000000476560:
	ret
0000000000476562       90 90 90 90 90 90 90 90 90 90 90 90 90 90   ..............

;; fn0000000000476570: 0000000000476570
fn0000000000476570 proc
	sub	rsp,28h
	lea	rcx,[0000000000476360]                                 ; [rip-0000021B]
	call	410BF0h
	lea	rcx,[0000000000476390]                                 ; [rip-000001F7]
	add	rsp,28h
	jmp	410BF0h

;; fn0000000000476590: 0000000000476590
;;   Called from:
;;     0000000000475E68 (in fn0000000000475DE0)
;;     0000000000475F6C (in fn0000000000475E80)
;;     000000000047600B (in fn0000000000475F80)
fn0000000000476590 proc
	sub	rsp,28h
	mov	rcx,[000000000048AA60]                                 ; [rip+000144C5]
	call	4202A0h
	test	eax,eax
	jz	4765AAh

l00000000004765A4:
	call	426270h
	nop

l00000000004765AA:
	add	rsp,28h
	ret
00000000004765AF                                              90                .
00000000004765B0 FF FF FF FF FF FF FF FF 0F 37 40 00 00 00 00 00 .........7@.....
00000000004765C0 A0 63 47 00 00 00 00 00 D0 63 47 00 00 00 00 00 .cG......cG.....
00000000004765D0 A0 64 47 00 00 00 00 00 70 65 47 00 00 00 00 00 .dG.....peG.....
00000000004765E0 00 00 00 00 00 00 00 00 FF FF FF FF FF FF FF FF ................
00000000004765F0 00 00 00 00 00 00 00 00                         ........       
