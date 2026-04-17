	file	 "scilab.i"
data

; cc1 (2.7.2.2) arguments: -O -fdefer-pop -fomit-frame-pointer
; -fcse-follow-jumps -fcse-skip-blocks -fexpensive-optimizations
; -fthread-jumps -fstrength-reduce -funroll-loops -fwritable-strings
; -fpeephole -fforce-mem -ffunction-cse -finline-functions -finline
; -freg-struct-return -fdelayed-branch -frerun-cse-after-loop
; -fschedule-insns -fschedule-insns2 -fcommon -fgnu-linker -m88110 -m88100
; -m88000 -mno-ocs-debug-info -mno-ocs-frame-position -mcheck-zero-division

gcc2_compiled.:
	align	 4
_c__1:
	word	 1
	align	 4
_c_n1:
	word	 -1
	align	 4
_c__3:
	word	 3
	align	 4
_c__2:
	word	 2
	align	 8
_c_b61:
	word	 0x00000000, 0x00000000
	align	 4
_c__0:
	word	 0
	align	 8
_c_b89:
	word	 0x3ff00000, 0x00000000
	align	 8
_c_b418:
	word	 0xbff00000, 0x00000000
	align	 8
_c_b806:
	word	 0x3fe00000, 0x00000000
	align	 4
_c__65:
	word	 65
	align	 4
_c__4:
	word	 4
	align	 8
_c_b1934:
	word	 0x3fc55555, 0x55555555
	align	 8
_c_b1936:
	word	 0x3fd55555, 0x55555555
	align	 8
_c_b1938:
	word	 0x3fe55555, 0x55555555
	align	 8
_c_b1940:
	word	 0x3feaaaaa, 0xaaaaaaab
	align	 4
_c_n998:
	word	 -998
	align	 4
_c__5:
	word	 5
	align	 4
_c__6:
	word	 6
	align	 4
_c__7:
	word	 7
	align	 4
_c__8:
	word	 8
	align	 4
_c__9:
	word	 9
	align	 4
_c__10:
	word	 10
	align	 4
_c__11:
	word	 11
	align	 4
_c__12:
	word	 12
	align	 4
_c__13:
	word	 13
	align	 4
_c__14:
	word	 14
	align	 4
_c__15:
	word	 15
	align	 4
_c__17:
	word	 17
	align	 4
_c__18:
	word	 18
	align	 4
_c__19:
	word	 19
	align	 4
_c_n999:
	word	 -999
	align	 4
_c__72:
	word	 72
	align	 4
_c__30:
	word	 30
	align	 4
_c__51:
	word	 51
	align	 4
_c__52:
	word	 52
	align	 4
_c__60:
	word	 60
	align	 4
_c__999:
	word	 999
	align	 4
_c__103:
	word	 103
	align	 4
_c__50:
	word	 50
	align	 4
_c__104:
	word	 104
	align	 4
_c__101:
	word	 101
	align	 4
_c__102:
	word	 102
	align	 4
_c__105:
	word	 105
	align	 4
_c__106:
	word	 106
	align	 4
_c__107:
	word	 107
	align	 4
_c__301:
	word	 301
	align	 4
_c__201:
	word	 201
	align	 4
_c__202:
	word	 202
	align	 4
_c__203:
	word	 203
	align	 4
_c__204:
	word	 204
	align	 4
_c__205:
	word	 205
	align	 4
_c__206:
	word	 206
	align	 4
_c__207:
	word	 207
	align	 4
_c__40:
	word	 40
	align	 4
_c__16:
	word	 16
	align	 4
_c__20:
	word	 20
	align	 4
_c__21:
	word	 21
	align	 4
_c__22:
	word	 22
	align	 4
_c__23:
	word	 23
	align	 4
_c__24:
	word	 24
	align	 4
_c__25:
	word	 25
	align	 4
_c__26:
	word	 26
	align	 4
_c__27:
	word	 27
	align	 4
_c__28:
	word	 28
	align	 4
_c__29:
	word	 29
	align	 4
_c__302:
	word	 302
	align	 4
_c__303:
	word	 303
	align	 4
_c__31:
	word	 31
	align	 4
_c__32:
	word	 32
	align	 4
_c__208:
	word	 208
	align	 4
_c__210:
	word	 210
	align	 8
_c_b5310:
	word	 0x3ff80000, 0x00000000
	align	 8
_c_b5340:
	word	 0x3f1a36e2, 0xeb1c432d
	align	 8
_c_b5732:
	word	 0x3feccccc, 0xcccccccd
	align	 8
_c_b5779:
	word	 0x3fe80000, 0x00000000
	align	 4
_c_false:
	word	 0
	align	 8
_c_b7108:
	word	 0x3fd00000, 0x00000000
	align	 4
_c_n24:
	word	 -24
	align	 4
_c_n34:
	word	 -34
	align	 8
_c_b8137:
	word	 0x40240000, 0x00000000
	bss	 _i__.2,4,4
	bss	 _k.3,4,4
	bss	 _aii.4,8,8
	align	 8
@LC0:
	string	 "DGELQ2\000"
	align	 8
@LC1:
	string	 "Right\000"
text
	align	 8
	global	 _dgelq2_
_dgelq2_:
	subu	 r31,r31,128
	st	 r1,r31,96
	st.d	 r24,r31,88
	st.d	 r22,r31,80
	st.d	 r20,r31,72
	st.d	 r18,r31,64
	st.d	 r16,r31,56
	or	 r22,r0,r5
	st.d	 r14,r31,48
@Ltb0:
	or	 r18,r0,r2
	ld	 r24,r0,r22
	or	 r23,r0,r3
	subu	 r19,r6,8
	st	 r0,r0,r8
	addu	 r13,r24,1
	ld	 r11,r0,r18
	mak	 r13,r13,0<3>
	subu	 r17,r7,8
	bcnd.n	 ge0,r11,@L19
	subu	 r25,r4,r13
	br.n	 @L36
	subu	 r13,r0,1
	align	 4
@L19:
	ld	 r13,r0,r23
	bcnd.n	 ge0,r13,@L21
	cmp	 r13,r11,1
	br.n	 @L36
	subu	 r13,r0,2
	align	 4
@L21:
	ld	 r12,r0,r22
	bb0.n	 gt,r13,@L24
	cmp	 r13,r12,r11
	bb0.n	 ge,r13,@L36
	subu	 r13,r0,4
	br	 @L20
	align	 4
@L24:
	bcnd.n	 gt0,r12,@L20
	subu	 r13,r0,4
@L36:
	st	 r13,r0,r8
@L20:
	ld	 r8,r0,r8
	bcnd.n	 eq0,r8,@L26
	addu	 r3,r31,104
	or.u	 r2,r0,hi16(@LC0)
	or	 r4,r0,6
	subu	 r13,r0,r8
	or	 r2,r2,lo16(@LC0)
	st	 r13,r31,104
	bsr.n	 _xerbla_
	addu	 r1,r1,@L37
@L38:
	align	 4
@L26:
	ld	 r12,r0,r18
	ld	 r11,r0,r23
	cmp	 r13,r12,r11
	bb0.n	 gt,r13,@L27
	or.u	 r10,r0,hi16(_k.3)
	or	 r12,r0,r11
@L27:
	or	 r13,r0,1
	st	 r12,r10,lo16(_k.3)
	or.u	 r11,r0,hi16(_i__.2)
	st	 r12,r31,104
	cmp	 r12,r13,r12
	bb0.n	 le,r12,@L29
	st	 r13,r11,lo16(_i__.2)
	or	 r21,r0,r11
	addu	 r20,r31,108
	or.u	 r16,r0,hi16(_aii.4)
@L31:
	ld	 r10,r21,lo16(_i__.2)
	ld	 r13,r0,r23
	mul	 r12,r10,r24
	addu	 r11,r10,1
	subu	 r13,r13,r10
	st	 r11,r31,112
	addu	 r13,r13,1
	st	 r13,r31,108
	ld	 r9,r0,r23
	addu	 r12,r10,r12
	cmp	 r13,r11,r9
	bb0.n	 gt,r13,@L32
	lda.d	 r3,r25[r12]
	or	 r11,r0,r9
@L32:
	mul	 r4,r11,r24
	or	 r2,r0,r20
	or	 r5,r0,r22
	addu	 r4,r10,r4
	lda.d	 r6,r19[r10]
	bsr.n	 _dlarfg_
	lda.d	 r4,r25[r4]
	ld	 r11,r21,lo16(_i__.2)
	ld	 r13,r0,r18
	cmp	 r13,r11,r13
	bb1.n	 ge,r13,@L30
	or	 r3,r0,r20
	mul	 r8,r11,r24
	or.u	 r12,r0,0x3ff0
	or	 r13,r0,0
	addu	 r5,r11,r8
	ld.d	 r14,r25[r5]
	addu	 r4,r31,112
	or.u	 r2,r0,hi16(@LC1)
	st.d	 r14,r16,lo16(_aii.4)
	or	 r6,r0,r22
	st.d	 r12,r25[r5]
	lda.d	 r7,r19[r11]
	ld	 r13,r0,r18
	or	 r9,r0,r22
	or	 r2,r2,lo16(@LC1)
	subu	 r13,r13,r11
	st	 r13,r31,108
	addu	 r8,r8,1
	ld	 r13,r0,r23
	lda.d	 r5,r25[r5]
	addu	 r8,r11,r8
	subu	 r13,r13,r11
	lda.d	 r8,r25[r8]
	addu	 r13,r13,1
	st	 r13,r31,112
	addu	 r13,r17,8
	st	 r13,r31,32
	or	 r13,r0,5
	bsr.n	 _dlarf_
	st	 r13,r31,36
	ld	 r13,r21,lo16(_i__.2)
	mul	 r12,r13,r24
	addu	 r13,r13,r12
	ld.d	 r14,r16,lo16(_aii.4)
	st.d	 r14,r25[r13]
@L30:
	ld	 r13,r21,lo16(_i__.2)
	ld	 r12,r31,104
	addu	 r13,r13,1
	cmp	 r12,r13,r12
	bb1.n	 le,r12,@L31
	st	 r13,r21,lo16(_i__.2)
@L29:
	or	 r2,r0,0
@Lte0:
	ld	 r1,r31,96
	ld.d	 r24,r31,88
	ld.d	 r22,r31,80
	ld.d	 r20,r31,72
	ld.d	 r18,r31,64
	ld.d	 r16,r31,56
	ld.d	 r14,r31,48
	jmp.n	 r1
	addu	 r31,r31,128
	def	 @L37,@L29-@L38

