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

	bss	 _i__.7,4,4
	bss	 _k.8,4,4
	bss	 _nbmin.9,4,4
	bss	 _iinfo.10,4,4
	bss	 _ib.11,4,4
	bss	 _nb.12,4,4
	bss	 _nx.13,4,4
	bss	 _ldwork.14,4,4
	bss	 _iws.15,4,4
data
	align	 8
@LC2:
	string	 "DGELQF\000"
	align	 8
@LC3:
	string	 "DGELQF\000"
	align	 8
@LC4:
	string	 " \000"
	align	 8
@LC5:
	string	 "DGELQF\000"
	align	 8
@LC6:
	string	 " \000"
	align	 8
@LC7:
	string	 "DGELQF\000"
	align	 8
@LC8:
	string	 " \000"
	align	 8
@LC9:
	string	 "Forward\000"
	align	 8
@LC10:
	string	 "Rowwise\000"
	align	 8
@LC11:
	string	 "Right\000"
	align	 8
@LC12:
	string	 "No transpose\000"
	align	 8
@LC13:
	string	 "Forward\000"
	align	 8
@LC14:
	string	 "Rowwise\000"
text
	align	 8
	global	 _dgelqf_
_dgelqf_:
	subu	 r31,r31,208
	st	 r1,r31,128
	st.d	 r24,r31,120
	st.d	 r22,r31,112
	st.d	 r20,r31,104
	st.d	 r18,r31,96
	st.d	 r16,r31,88
	st.d	 r14,r31,80
@Ltb1:
	or	 r20,r0,r5
	st	 r3,r31,204
	ld	 r14,r0,r20
	subu	 r6,r6,8
	st	 r14,r31,188
	or	 r16,r0,r2
	st	 r0,r0,r9
	subu	 r7,r7,8
	ld	 r11,r0,r16
	or	 r18,r0,r8
	addu	 r13,r14,1
	st	 r6,r31,172
	mak	 r13,r13,0<3>
	st	 r7,r31,180
	subu	 r4,r4,r13
	bcnd.n	 ge0,r11,@L111
	st	 r4,r31,196
	br.n	 @L182
	subu	 r13,r0,1
	align	 4
@L111:
	ld	 r15,r31,204
	ld	 r13,r0,r15
	bcnd.n	 ge0,r13,@L113
	cmp	 r13,r11,1
	br.n	 @L182
	subu	 r13,r0,2
	align	 4
@L113:
	ld	 r12,r0,r20
	bb0.n	 gt,r13,@L116
	cmp	 r13,r12,r11
	bb0.n	 ge,r13,@L182
	subu	 r13,r0,4
	br	 @L115
	align	 4
@L116:
	bcnd.n	 le0,r12,@L182
	subu	 r13,r0,4
@L115:
	ld	 r11,r0,r16
	cmp	 r13,r11,1
	ld	 r12,r0,r18
	bb0.n	 gt,r13,@L120
	cmp	 r13,r12,r11
	bb0.n	 ge,r13,@L182
	subu	 r13,r0,7
	br	 @L112
	align	 4
@L120:
	bcnd.n	 gt0,r12,@L112
	subu	 r13,r0,7
@L182:
	st	 r13,r0,r9
@L112:
	ld	 r9,r0,r9
	bcnd.n	 eq0,r9,@L122
	addu	 r3,r31,136
	or.u	 r2,r0,hi16(@LC2)
	or	 r4,r0,6
	subu	 r13,r0,r9
	or	 r2,r2,lo16(@LC2)
	bsr.n	 _xerbla_
	st	 r13,r31,136
	br.n	 @L181
	or	 r2,r0,0
	align	 4
@L122:
	ld	 r14,r31,204
	ld	 r12,r0,r16
	ld	 r11,r0,r14
	cmp	 r13,r12,r11
	bb0.n	 gt,r13,@L123
	or.u	 r23,r0,hi16(_k.8)
	or	 r12,r0,r11
@L123:
	bcnd.n	 ne0,r12,@L124
	st	 r12,r23,lo16(_k.8)
	or.u	 r12,r0,0x3ff0
	or	 r13,r0,0
	ld	 r15,r31,180
	br.n	 @L183
	or	 r2,r0,0
	align	 4
@L124:
	ld	 r6,r31,204
	or	 r5,r0,r16
	or	 r9,r0,6
	or.u	 r2,r0,hi16(_c__1)
	or.u	 r3,r0,hi16(@LC3)
	or.u	 r13,r0,hi16(_c_n1)
	or.u	 r4,r0,hi16(@LC4)
	or	 r22,r0,1
	or	 r2,r2,lo16(_c__1)
	or	 r3,r3,lo16(@LC3)
	or	 r25,r13,lo16(_c_n1)
	or	 r4,r4,lo16(@LC4)
	or	 r7,r0,r25
	or	 r8,r0,r25
	bsr.n	 _ilaenv_
	st	 r22,r31,32
	or.u	 r24,r0,hi16(_nb.12)
	or.u	 r21,r0,hi16(_nx.13)
	st	 r2,r24,lo16(_nb.12)
	or.u	 r12,r0,hi16(_nbmin.9)
	st	 r0,r21,lo16(_nx.13)
	or	 r13,r0,2
	st	 r13,r12,lo16(_nbmin.9)
	ld	 r13,r0,r16
	or.u	 r19,r0,hi16(_iws.15)
	st	 r13,r19,lo16(_iws.15)
	cmp	 r13,r2,1
	bb0.n	 gt,r13,@L125
	or	 r17,r24,lo16(_nb.12)
	ld	 r13,r23,lo16(_k.8)
	cmp	 r13,r2,r13
	bb1.n	 ge,r13,@L184
	or.u	 r13,r0,hi16(_nb.12)
	ld	 r6,r31,204
	st	 r0,r31,136
	or	 r5,r0,r16
	or	 r7,r0,r25
	or.u	 r2,r0,hi16(_c__3)
	or	 r9,r0,6
	or.u	 r3,r0,hi16(@LC5)
	or.u	 r4,r0,hi16(@LC6)
	or	 r8,r0,r7
	or	 r2,r2,lo16(_c__3)
	or	 r3,r3,lo16(@LC5)
	or	 r4,r4,lo16(@LC6)
	bsr.n	 _ilaenv_
	st	 r22,r31,32
	ld	 r12,r31,136
	cmp	 r13,r12,r2
	bb1.n	 ge,r13,@L126
	st	 r2,r31,164
	or	 r12,r0,r2
@L126:
	ld	 r13,r23,lo16(_k.8)
	cmp	 r13,r12,r13
	bb1.n	 ge,r13,@L125
	st	 r12,r21,lo16(_nx.13)
	ld	 r11,r0,r16
	ld	 r13,r24,lo16(_nb.12)
	or.u	 r12,r0,hi16(_ldwork.14)
	st	 r11,r12,lo16(_ldwork.14)
	mul	 r13,r11,r13
	st	 r13,r19,lo16(_iws.15)
	ld	 r8,r0,r18
	cmp	 r13,r8,r13
	bb1.n	 ge,r13,@L125
	or	 r10,r0,r17
	bcnd.n	 gt0,r11,@L130
	subu	 r12,r0,r11
	bcnd.n	 ge0,r8,@L131
	subu	 r13,r0,r8
	divu	 r8,r13,r12
	bcnd	 ne0,r11,@L129
@L133:
	tb0	 0,r0,503
	br.n	 @L185
	st	 r8,r0,r10
	align	 4
@L131:
	divu	 r8,r8,r12
	bcnd	 eq0,r11,@L133
	subu	 r8,r0,r8
	br.n	 @L185
	st	 r8,r0,r10
	align	 4
@L130:
	bcnd.n	 ge0,r8,@L132
	subu	 r13,r0,r8
	divu	 r8,r13,r11
	br.n	 @L129
	subu	 r8,r0,r8
	align	 4
@L132:
	divu	 r8,r8,r11
@L129:
	st	 r8,r0,r10
@L185:
	ld	 r6,r31,204
	or	 r13,r0,2
	st	 r13,r31,136
	or	 r5,r0,r16
	or	 r9,r0,6
	or.u	 r2,r0,hi16(_c__2)
	or.u	 r3,r0,hi16(@LC7)
	or.u	 r7,r0,hi16(_c_n1)
	or.u	 r4,r0,hi16(@LC8)
	or	 r13,r0,1
	or	 r2,r2,lo16(_c__2)
	or	 r3,r3,lo16(@LC7)
	or	 r7,r7,lo16(_c_n1)
	or	 r4,r4,lo16(@LC8)
	or	 r8,r0,r7
	bsr.n	 _ilaenv_
	st	 r13,r31,32
	ld	 r12,r31,136
	st	 r2,r31,164
	cmp	 r13,r12,r2
	bb1.n	 ge,r13,@L134
	or.u	 r11,r0,hi16(_nbmin.9)
	or	 r12,r0,r2
@L134:
	st	 r12,r11,lo16(_nbmin.9)
@L125:
	or.u	 r13,r0,hi16(_nb.12)
@L184:
	ld	 r10,r13,lo16(_nb.12)
	or.u	 r13,r0,hi16(_nbmin.9)
	ld	 r13,r13,lo16(_nbmin.9)
	cmp	 r13,r10,r13
	bb0.n	 ge,r13,@L135
	or.u	 r13,r0,hi16(_k.8)
	ld	 r12,r13,lo16(_k.8)
	cmp	 r13,r10,r12
	bb0.n	 lt,r13,@L135
	or.u	 r13,r0,hi16(_nx.13)
	ld	 r11,r13,lo16(_nx.13)
	cmp	 r13,r11,r12
	bb0.n	 lt,r13,@L135
	subu	 r12,r12,r11
	st	 r12,r31,136
	or.u	 r13,r0,hi16(_i__.7)
	st	 r10,r31,164
	or	 r11,r0,1
	bcnd.n	 ge0,r10,@L191
	st	 r11,r13,lo16(_i__.7)
	cmp	 r13,r11,r12
	bb1.n	 ge,r13,@L186
	or.u	 r13,r0,hi16(_k.8)
	br.n	 @L187
	or.u	 r13,r0,hi16(_i__.7)
	align	 4
@L140:
	or.u	 r13,r0,hi16(_i__.7)
@L191:
	ld	 r12,r31,136
	ld	 r13,r13,lo16(_i__.7)
	cmp	 r13,r13,r12
	bb1.n	 gt,r13,@L187
	or.u	 r13,r0,hi16(_i__.7)
	or.u	 r13,r0,hi16(_k.8)
@L186:
	ld	 r12,r13,lo16(_k.8)
	or.u	 r13,r0,hi16(_i__.7)
	ld	 r11,r13,lo16(_i__.7)
	or.u	 r13,r0,hi16(_nb.12)
	ld	 r10,r13,lo16(_nb.12)
	subu	 r12,r12,r11
	addu	 r12,r12,1
	st	 r12,r31,140
	or	 r9,r0,r12
	or.u	 r12,r0,hi16(_ib.11)
	cmp	 r13,r9,r10
	bb0.n	 gt,r13,@L142
	or	 r8,r12,lo16(_ib.11)
	or	 r9,r0,r10
@L142:
	ld	 r14,r31,204
	ld	 r15,r31,188
	ld	 r17,r31,180
	st	 r9,r12,lo16(_ib.11)
	ld	 r13,r0,r14
	ld	 r14,r31,172
	mul	 r12,r11,r15
	ld	 r15,r31,196
	subu	 r13,r13,r11
	or	 r18,r0,r8
	addu	 r10,r13,1
	st	 r10,r31,140
	lda.d	 r21,r14[r11]
	ld	 r24,r0,r20
	addu	 r12,r11,r12
	subu	 r21,r21,8
	lda.d	 r25,r15[r12]
	addu	 r13,r24,1
	or.u	 r12,r0,hi16(_iinfo.10)
	mak	 r13,r13,0<3>
	or	 r11,r12,lo16(_iinfo.10)
	st	 r0,r12,lo16(_iinfo.10)
	bcnd.n	 ge0,r9,@L144
	subu	 r25,r25,r13
	subu	 r13,r0,1
	br.n	 @L145
	st	 r13,r12,lo16(_iinfo.10)
	align	 4
@L144:
	bcnd.n	 ge0,r10,@L146
	cmp	 r13,r9,1
	subu	 r13,r0,2
	br.n	 @L145
	st	 r13,r12,lo16(_iinfo.10)
	align	 4
@L146:
	ld	 r12,r0,r20
	bb0.n	 gt,r13,@L149
	cmp	 r13,r12,r9
	bb0.n	 ge,r13,@L188
	subu	 r13,r0,4
	br	 @L145
	align	 4
@L149:
	bcnd.n	 gt0,r12,@L145
	subu	 r13,r0,4
@L188:
	st	 r13,r0,r11
@L145:
	ld	 r13,r0,r11
	bcnd.n	 eq0,r13,@L151
	addu	 r3,r31,144
	or.u	 r2,r0,hi16(@LC0)
	or	 r4,r0,6
	subu	 r13,r0,r13
	or	 r2,r2,lo16(@LC0)
	st	 r13,r31,144
	bsr.n	 _xerbla_
	addu	 r1,r1,@L192
@L193:
	align	 4
@L151:
	ld	 r12,r0,r18
	ld	 r11,r31,140
	cmp	 r13,r12,r11
	bb0.n	 gt,r13,@L152
	or.u	 r10,r0,hi16(_k.3)
	or	 r12,r0,r11
@L152:
	or	 r13,r0,1
	st	 r12,r10,lo16(_k.3)
	or.u	 r11,r0,hi16(_i__.2)
	st	 r12,r31,144
	cmp	 r12,r13,r12
	bb0.n	 le,r12,@L143
	st	 r13,r11,lo16(_i__.2)
	or	 r23,r0,r11
	addu	 r22,r31,148
	or.u	 r19,r0,hi16(_aii.4)
@L156:
	ld	 r10,r23,lo16(_i__.2)
	ld	 r9,r31,140
	mul	 r11,r10,r24
	subu	 r13,r9,r10
	addu	 r12,r10,1
	st	 r12,r31,152
	addu	 r13,r13,1
	st	 r13,r31,148
	addu	 r11,r10,r11
	cmp	 r13,r12,r9
	bb0.n	 gt,r13,@L157
	lda.d	 r3,r25[r11]
	or	 r12,r0,r9
@L157:
	mul	 r4,r12,r24
	or	 r2,r0,r22
	or	 r5,r0,r20
	addu	 r4,r10,r4
	lda.d	 r6,r21[r10]
	bsr.n	 _dlarfg_
	lda.d	 r4,r25[r4]
	ld	 r12,r23,lo16(_i__.2)
	ld	 r13,r0,r18
	cmp	 r13,r12,r13
	bb1.n	 ge,r13,@L155
	or	 r3,r0,r22
	or.u	 r10,r0,0x3ff0
	or	 r11,r0,0
	mul	 r8,r12,r24
	addu	 r4,r31,152
	or	 r6,r0,r20
	lda.d	 r7,r21[r12]
	or	 r9,r0,r20
	ld	 r13,r31,140
	addu	 r5,r12,r8
	or.u	 r2,r0,hi16(@LC1)
	ld.d	 r14,r25[r5]
	or	 r2,r2,lo16(@LC1)
	subu	 r13,r13,r12
	st.d	 r14,r19,lo16(_aii.4)
	addu	 r13,r13,1
	st	 r13,r31,152
	addu	 r8,r8,1
	st.d	 r10,r25[r5]
	addu	 r8,r12,r8
	ld	 r13,r0,r18
	lda.d	 r5,r25[r5]
	lda.d	 r8,r25[r8]
	subu	 r13,r13,r12
	st	 r13,r31,148
	addu	 r13,r17,8
	st	 r13,r31,32
	or	 r13,r0,5
	bsr.n	 _dlarf_
	st	 r13,r31,36
	ld	 r13,r23,lo16(_i__.2)
	mul	 r12,r13,r24
	addu	 r13,r13,r12
	ld.d	 r14,r19,lo16(_aii.4)
	st.d	 r14,r25[r13]
@L155:
	ld	 r13,r23,lo16(_i__.2)
	ld	 r12,r31,144
	addu	 r13,r13,1
	cmp	 r12,r13,r12
	bb1.n	 le,r12,@L156
	st	 r13,r23,lo16(_i__.2)
@L143:
	or.u	 r19,r0,hi16(_i__.7)
	or.u	 r21,r0,hi16(_ib.11)
	ld	 r11,r19,lo16(_i__.7)
	ld	 r13,r21,lo16(_ib.11)
	ld	 r12,r0,r16
	addu	 r13,r11,r13
	cmp	 r13,r13,r12
	bb1.n	 gt,r13,@L138
	or	 r18,r21,lo16(_ib.11)
	or	 r5,r0,r18
	or	 r7,r0,r20
	or.u	 r2,r0,hi16(@LC9)
	or.u	 r3,r0,hi16(@LC10)
	addu	 r24,r31,140
	or.u	 r25,r0,hi16(_ldwork.14)
	ld	 r15,r31,172
	or	 r23,r0,7
	ld	 r14,r31,204
	or	 r2,r2,lo16(@LC9)
	or	 r3,r3,lo16(@LC10)
	or	 r4,r0,r24
	ld	 r13,r0,r14
	lda.d	 r8,r15[r11]
	ld	 r15,r31,180
	or	 r25,r25,lo16(_ldwork.14)
	ld	 r14,r31,188
	addu	 r22,r15,8
	subu	 r13,r13,r11
	ld	 r15,r31,196
	mul	 r6,r11,r14
	addu	 r13,r13,1
	st	 r13,r31,140
	or	 r9,r0,r22
	st	 r25,r31,32
	addu	 r6,r11,r6
	st	 r23,r31,36
	lda.d	 r6,r15[r6]
	bsr.n	 _dlarft_
	st	 r23,r31,40
	ld	 r13,r0,r16
	ld	 r9,r19,lo16(_i__.7)
	or	 r6,r0,r24
	ld	 r12,r21,lo16(_ib.11)
	addu	 r7,r31,160
	ld	 r15,r31,188
	or	 r8,r0,r18
	ld	 r14,r31,204
	mul	 r11,r9,r15
	subu	 r13,r13,r9
	ld	 r15,r31,180
	subu	 r13,r13,r12
	or.u	 r2,r0,hi16(@LC11)
	addu	 r13,r13,1
	st	 r13,r31,140
	or.u	 r3,r0,hi16(@LC12)
	ld	 r13,r0,r14
	or.u	 r4,r0,hi16(@LC13)
	ld	 r14,r31,196
	subu	 r13,r13,r9
	or.u	 r5,r0,hi16(@LC14)
	addu	 r13,r13,1
	st	 r13,r31,160
	or	 r2,r2,lo16(@LC11)
	st	 r20,r31,32
	or	 r3,r3,lo16(@LC12)
	st	 r22,r31,36
	or	 r4,r4,lo16(@LC13)
	st	 r25,r31,40
	or	 r5,r5,lo16(@LC14)
	st	 r20,r31,48
	addu	 r13,r9,r12
	st	 r25,r31,56
	mak	 r12,r12,0<3>
	st	 r23,r31,68
	addu	 r9,r9,r11
	st	 r23,r31,72
	addu	 r13,r13,r11
	addu	 r12,r12,8
	lda.d	 r9,r14[r9]
	lda.d	 r13,r14[r13]
	st	 r13,r31,44
	addu	 r12,r15,r12
	st	 r12,r31,52
	or	 r13,r0,5
	st	 r13,r31,60
	or	 r13,r0,12
	bsr.n	 _dlarfb_
	st	 r13,r31,64
@L138:
	ld	 r13,r19,lo16(_i__.7)
	ld	 r12,r31,164
	addu	 r11,r13,r12
	bcnd.n	 ge0,r12,@L140
	st	 r11,r19,lo16(_i__.7)
	ld	 r13,r31,136
	cmp	 r13,r11,r13
	bb1.n	 ge,r13,@L186
	or.u	 r13,r0,hi16(_k.8)
	br.n	 @L187
	or.u	 r13,r0,hi16(_i__.7)
	align	 4
@L135:
	or.u	 r12,r0,hi16(_i__.7)
	or	 r13,r0,1
	st	 r13,r12,lo16(_i__.7)
	or.u	 r13,r0,hi16(_i__.7)
@L187:
	ld	 r11,r13,lo16(_i__.7)
	or.u	 r13,r0,hi16(_k.8)
	ld	 r13,r13,lo16(_k.8)
	cmp	 r13,r11,r13
	bb0.n	 le,r13,@L189
	or.u	 r13,r0,hi16(_iws.15)
	ld	 r13,r0,r16
	ld	 r14,r31,204
	ld	 r15,r31,188
	ld	 r17,r31,180
	subu	 r13,r13,r11
	addu	 r10,r13,1
	st	 r10,r31,164
	ld	 r13,r0,r14
	addu	 r22,r31,136
	ld	 r14,r31,172
	mul	 r12,r11,r15
	ld	 r15,r31,196
	subu	 r13,r13,r11
	lda.d	 r19,r14[r11]
	addu	 r9,r13,1
	addu	 r12,r11,r12
	st	 r9,r31,136
	subu	 r19,r19,8
	ld	 r24,r0,r20
	lda.d	 r25,r15[r12]
	or.u	 r12,r0,hi16(_iinfo.10)
	addu	 r13,r24,1
	or	 r11,r12,lo16(_iinfo.10)
	mak	 r13,r13,0<3>
	st	 r0,r12,lo16(_iinfo.10)
	bcnd.n	 ge0,r10,@L165
	subu	 r25,r25,r13
	subu	 r13,r0,1
	br.n	 @L166
	st	 r13,r12,lo16(_iinfo.10)
	align	 4
@L165:
	bcnd.n	 ge0,r9,@L167
	cmp	 r13,r10,1
	subu	 r13,r0,2
	br.n	 @L166
	st	 r13,r12,lo16(_iinfo.10)
	align	 4
@L167:
	ld	 r12,r0,r20
	bb0.n	 gt,r13,@L170
	cmp	 r13,r12,r10
	bb0.n	 ge,r13,@L190
	subu	 r13,r0,4
	br	 @L166
	align	 4
@L170:
	bcnd.n	 gt0,r12,@L166
	subu	 r13,r0,4
@L190:
	st	 r13,r0,r11
@L166:
	ld	 r13,r0,r11
	bcnd.n	 eq0,r13,@L172
	addu	 r3,r31,144
	or.u	 r2,r0,hi16(@LC0)
	or	 r4,r0,6
	subu	 r13,r0,r13
	or	 r2,r2,lo16(@LC0)
	st	 r13,r31,144
	bsr.n	 _xerbla_
	addu	 r1,r1,@L194
@L195:
	align	 4
@L172:
	ld	 r12,r31,164
	ld	 r11,r0,r22
	cmp	 r13,r12,r11
	bb0.n	 gt,r13,@L173
	or.u	 r10,r0,hi16(_k.3)
	or	 r12,r0,r11
@L173:
	or	 r13,r0,1
	st	 r12,r10,lo16(_k.3)
	or.u	 r11,r0,hi16(_i__.2)
	st	 r12,r31,144
	cmp	 r12,r13,r12
	bb0.n	 le,r12,@L163
	st	 r13,r11,lo16(_i__.2)
	or	 r23,r0,r11
	addu	 r21,r31,148
	or.u	 r18,r0,hi16(_aii.4)
@L177:
	ld	 r10,r23,lo16(_i__.2)
	ld	 r13,r0,r22
	mul	 r12,r10,r24
	addu	 r11,r10,1
	subu	 r13,r13,r10
	st	 r11,r31,152
	addu	 r13,r13,1
	st	 r13,r31,148
	ld	 r9,r0,r22
	addu	 r12,r10,r12
	cmp	 r13,r11,r9
	bb0.n	 gt,r13,@L178
	lda.d	 r3,r25[r12]
	or	 r11,r0,r9
@L178:
	mul	 r4,r11,r24
	or	 r2,r0,r21
	or	 r5,r0,r20
	addu	 r4,r10,r4
	lda.d	 r6,r19[r10]
	bsr.n	 _dlarfg_
	lda.d	 r4,r25[r4]
	ld	 r12,r23,lo16(_i__.2)
	ld	 r9,r31,164
	cmp	 r13,r12,r9
	bb1.n	 ge,r13,@L176
	subu	 r13,r9,r12
	or.u	 r10,r0,0x3ff0
	or	 r11,r0,0
	mul	 r8,r12,r24
	or	 r3,r0,r21
	addu	 r4,r31,152
	addu	 r5,r12,r8
	or	 r6,r0,r20
	ld.d	 r14,r25[r5]
	lda.d	 r7,r19[r12]
	or	 r9,r0,r20
	st.d	 r14,r18,lo16(_aii.4)
	or.u	 r2,r0,hi16(@LC1)
	st	 r13,r31,148
	or	 r2,r2,lo16(@LC1)
	st.d	 r10,r25[r5]
	addu	 r8,r8,1
	ld	 r13,r0,r22
	lda.d	 r5,r25[r5]
	addu	 r8,r12,r8
	subu	 r13,r13,r12
	lda.d	 r8,r25[r8]
	addu	 r13,r13,1
	st	 r13,r31,152
	addu	 r13,r17,8
	st	 r13,r31,32
	or	 r13,r0,5
	bsr.n	 _dlarf_
	st	 r13,r31,36
	ld	 r13,r23,lo16(_i__.2)
	mul	 r12,r13,r24
	addu	 r13,r13,r12
	ld.d	 r14,r18,lo16(_aii.4)
	st.d	 r14,r25[r13]
@L176:
	ld	 r13,r23,lo16(_i__.2)
	ld	 r12,r31,144
	addu	 r13,r13,1
	cmp	 r12,r13,r12
	bb1.n	 le,r12,@L177
	st	 r13,r23,lo16(_i__.2)
@L163:
	or.u	 r13,r0,hi16(_iws.15)
@L189:
	ld	 r13,r13,lo16(_iws.15)
	ld	 r15,r31,180
	or	 r2,r0,0
	flt.ds	 r12,r13
@L183:
	st.d	 r12,r15,8
@L181:
@Lte1:
	ld	 r1,r31,128
	ld.d	 r24,r31,120
	ld.d	 r22,r31,112
	ld.d	 r20,r31,104
	ld.d	 r18,r31,96
	ld.d	 r16,r31,88
	ld.d	 r14,r31,80
	jmp.n	 r1
	addu	 r31,r31,208
	def	 @L194,@L163-@L195
	def	 @L192,@L143-@L193

	bss	 _anrm.18,8,8
	bss	 _bnrm.19,8,8
	bss	 _brow.20,4,4
	bss	 _tpsd.21,4,4
	bss	 _i__.22,4,4
	bss	 _j.23,4,4
	bss	 _iascl.24,4,4
	bss	 _ibscl.25,4,4
	bss	 _wsize.26,4,4
	bss	 _rwork.27,8,8
	bss	 _nb.28,4,4
	bss	 _mn.29,4,4
	bss	 _scllen.30,4,4
	bss	 _bignum.31,8,8
	bss	 _smlnum.32,8,8
data
	align	 8
@LC15:
	string	 "N\000"
	align	 8
@LC16:
	string	 "T\000"
	align	 8
@LC17:
	string	 "N\000"
	align	 8
@LC18:
	string	 "DGEQRF\000"
	align	 8
@LC19:
	string	 " \000"
	align	 8
@LC20:
	string	 "DORMQR\000"
	align	 8
@LC21:
	string	 "LN\000"
	align	 8
@LC22:
	string	 "DORMQR\000"
	align	 8
@LC23:
	string	 "LT\000"
	align	 8
@LC24:
	string	 "DGELQF\000"
	align	 8
@LC25:
	string	 " \000"
	align	 8
@LC26:
	string	 "DORMLQ\000"
	align	 8
@LC27:
	string	 "LT\000"
	align	 8
@LC28:
	string	 "DORMLQ\000"
	align	 8
@LC29:
	string	 "LN\000"
	align	 8
@LC30:
	string	 "DGELS \000"
	align	 8
@LC31:
	string	 "Full\000"
	align	 8
@LC32:
	string	 "S\000"
	align	 8
@LC33:
	string	 "P\000"
	align	 8
@LC34:
	string	 "M\000"
	align	 8
@LC35:
	string	 "G\000"
	align	 8
@LC36:
	string	 "G\000"
	align	 8
@LC37:
	string	 "F\000"
	align	 8
@LC38:
	string	 "M\000"
	align	 8
@LC39:
	string	 "G\000"
	align	 8
@LC40:
	string	 "G\000"
	align	 8
@LC41:
	string	 "Left\000"
	align	 8
@LC42:
	string	 "Transpose\000"
	align	 8
@LC43:
	string	 "Left\000"
	align	 8
@LC44:
	string	 "Upper\000"
	align	 8
@LC45:
	string	 "No transpose\000"
	align	 8
@LC46:
	string	 "Non-unit\000"
	align	 8
@LC47:
	string	 "Left\000"
	align	 8
@LC48:
	string	 "Upper\000"
	align	 8
@LC49:
	string	 "Transpose\000"
	align	 8
@LC50:
	string	 "Non-unit\000"
	align	 8
@LC51:
	string	 "Left\000"
	align	 8
@LC52:
	string	 "No transpose\000"
	align	 8
@LC53:
	string	 "Left\000"
	align	 8
@LC54:
	string	 "Lower\000"
	align	 8
@LC55:
	string	 "No transpose\000"
	align	 8
@LC56:
	string	 "Non-unit\000"
	align	 8
@LC57:
	string	 "Left\000"
	align	 8
@LC58:
	string	 "Transpose\000"
	align	 8
@LC59:
	string	 "Left\000"
	align	 8
@LC60:
	string	 "No transpose\000"
	align	 8
@LC61:
	string	 "Left\000"
	align	 8
@LC62:
	string	 "Lower\000"
	align	 8
@LC63:
	string	 "Transpose\000"
	align	 8
@LC64:
	string	 "Non-unit\000"
	align	 8
@LC65:
	string	 "G\000"
	align	 8
@LC66:
	string	 "G\000"
	align	 8
@LC67:
	string	 "G\000"
	align	 8
@LC68:
	string	 "G\000"
text
	align	 4
@LC69:
	word	 _nb.12
	align	 8
	global	 _dgels_
_dgels_:
	subu	 r31,r31,288
	st	 r1,r31,128
	st.d	 r24,r31,120
	st.d	 r22,r31,112
	st.d	 r20,r31,104
	st.d	 r18,r31,96
	st.d	 r16,r31,88
	st.d	 r14,r31,80
@Ltb2:
	st	 r5,r31,180
	st	 r9,r31,204
	ld	 r14,r0,r9
	or	 r17,r0,r7
	ld	 r15,r31,320
	ld	 r13,r0,r17
	st	 r14,r31,220
	ld	 r14,r31,328
	subu	 r15,r15,8
	st	 r15,r31,320
	addu	 r13,r13,1
	st	 r13,r31,212
	st	 r0,r0,r14
	ld	 r14,r31,220
	or	 r25,r0,r2
	ld	 r15,r31,212
	or	 r20,r0,r3
	addu	 r14,r14,1
	st	 r14,r31,228
	or	 r18,r0,r4
	ld	 r11,r0,r20
	mak	 r12,r15,0<3>
	ld	 r10,r0,r18
	mak	 r13,r14,0<3>
	subu	 r6,r6,r12
	or.u	 r12,r0,hi16(_mn.29)
	st	 r6,r31,188
	subu	 r8,r8,r13
	cmp	 r13,r11,r10
	bb0.n	 gt,r13,@L197
	st	 r8,r31,196
	or	 r11,r0,r10
@L197:
	or	 r2,r0,r25
	or	 r4,r0,1
	or.u	 r3,r0,hi16(@LC15)
	or	 r5,r0,1
	or	 r3,r3,lo16(@LC15)
	bsr.n	 _lsame_
	st	 r11,r12,lo16(_mn.29)
	bcnd.n	 ne0,r2,@L198
	or	 r2,r0,r25
	or	 r4,r0,1
	or.u	 r3,r0,hi16(@LC16)
	or	 r5,r0,1
	bsr.n	 _lsame_
	or	 r3,r3,lo16(@LC16)
	bcnd.n	 ne0,r2,@L198
	subu	 r13,r0,1
	ld	 r15,r31,328
	br.n	 @L199
	st	 r13,r0,r15
	align	 4
@L198:
	ld	 r12,r0,r20
	bcnd.n	 ge0,r12,@L200
	subu	 r13,r0,2
	ld	 r14,r31,328
	br.n	 @L199
	st	 r13,r0,r14
	align	 4
@L200:
	ld	 r13,r0,r18
	bcnd.n	 ge0,r13,@L202
	subu	 r13,r0,3
	ld	 r15,r31,328
	br.n	 @L199
	st	 r13,r0,r15
	align	 4
@L202:
	ld	 r14,r31,180
	ld	 r13,r0,r14
	bcnd.n	 ge0,r13,@L204
	cmp	 r13,r12,1
	ld	 r15,r31,328
	br.n	 @L357
	subu	 r13,r0,4
	align	 4
@L204:
	ld	 r11,r0,r17
	bb0.n	 gt,r13,@L207
	cmp	 r13,r11,r12
	bb0	 ge,r13,@L208
	br	 @L206
	align	 4
@L207:
	bcnd	 gt0,r11,@L206
@L208:
	ld	 r14,r31,328
	subu	 r13,r0,6
	br.n	 @L199
	st	 r13,r0,r14
	align	 4
@L206:
	ld	 r12,r0,r20
	cmp	 r13,r12,1
	bb0	 gt,r13,@L210
	st	 r12,r31,136
	br	 @L211
	align	 4
@L210:
	or	 r13,r0,1
	st	 r13,r31,136
@L211:
	ld	 r12,r31,136
	ld	 r11,r0,r18
	cmp	 r13,r12,r11
	bb1	 ge,r13,@L213
	or	 r12,r0,r11
@L213:
	ld	 r15,r31,204
	ld	 r13,r0,r15
	cmp	 r13,r13,r12
	bb1.n	 ge,r13,@L212
	subu	 r13,r0,8
	ld	 r14,r31,328
	br.n	 @L199
	st	 r13,r0,r14
	align	 4
@L212:
	ld	 r12,r0,r20
	cmp	 r13,r12,r11
	bb1	 ge,r13,@L215
	or	 r12,r0,r11
@L215:
	ld	 r15,r31,180
	or	 r13,r0,1
	st	 r13,r31,136
	ld	 r11,r0,r15
	or	 r2,r0,r12
	cmp	 r13,r2,r11
	bb1.n	 ge,r13,@L216
	or.u	 r12,r0,hi16(_mn.29)
	or	 r2,r0,r11
@L216:
	ld	 r13,r12,lo16(_mn.29)
	or	 r12,r0,1
	addu	 r2,r13,r2
	cmp	 r13,r12,r2
	bb1	 ge,r13,@L218
	or	 r12,r0,r2
@L218:
	ld	 r14,r31,324
	ld	 r13,r0,r14
	cmp	 r13,r13,r12
	bb1	 ge,r13,@L199
	ld	 r15,r31,328
	subu	 r13,r0,10
@L357:
	st	 r13,r0,r15
@L199:
	ld	 r14,r31,328
	ld	 r13,r0,r14
	subu	 r11,r0,10
	cmp	 r12,r13,0
	cmp	 r13,r13,r11
	or	 r12,r12,r13
	extu	 r12,r12,1<eq>
	bcnd	 eq0,r12,@L219
	or	 r2,r0,r25
	or	 r4,r0,1
	or.u	 r3,r0,hi16(@LC17)
	or	 r5,r0,1
	or.u	 r23,r0,hi16(_tpsd.21)
	or	 r22,r0,1
	or	 r3,r3,lo16(@LC17)
	bsr.n	 _lsame_
	st	 r22,r23,lo16(_tpsd.21)
	bcnd	 eq0,r2,@L220
	st	 r0,r23,lo16(_tpsd.21)
@L220:
	ld	 r13,r0,r20
	ld	 r12,r0,r18
	cmp	 r13,r13,r12
	bb0.n	 ge,r13,@L221
	or	 r5,r0,r20
	or	 r6,r0,r18
	or	 r9,r0,6
	or.u	 r3,r0,hi16(@LC18)
	or.u	 r4,r0,hi16(@LC19)
	or.u	 r13,r0,hi16(_c__1)
	or.u	 r12,r0,hi16(_c_n1)
	or	 r3,r3,lo16(@LC18)
	or	 r4,r4,lo16(@LC19)
	or	 r25,r13,lo16(_c__1)
	or	 r24,r12,lo16(_c_n1)
	or	 r2,r0,r25
	or	 r7,r0,r24
	or	 r8,r0,r24
	bsr.n	 _ilaenv_
	st	 r22,r31,32
	ld	 r13,r23,lo16(_tpsd.21)
	or.u	 r23,r0,hi16(_nb.28)
	bcnd.n	 eq0,r13,@L222
	st	 r2,r23,lo16(_nb.28)
	ld	 r6,r31,180
	st	 r2,r31,136
	or	 r2,r0,r25
	or	 r5,r0,r20
	or	 r7,r0,r18
	or	 r8,r0,r24
	or	 r9,r0,6
	or.u	 r3,r0,hi16(@LC20)
	or.u	 r4,r0,hi16(@LC21)
	or	 r13,r0,2
	or	 r3,r3,lo16(@LC20)
	br.n	 @L364
	or	 r4,r4,lo16(@LC21)
	align	 4
@L222:
	ld	 r6,r31,180
	st	 r2,r31,136
	or	 r2,r0,r25
	or	 r5,r0,r20
	or	 r7,r0,r18
	or	 r8,r0,r24
	or	 r9,r0,6
	or.u	 r3,r0,hi16(@LC22)
	or.u	 r4,r0,hi16(@LC23)
	or	 r13,r0,2
	or	 r3,r3,lo16(@LC22)
	br.n	 @L364
	or	 r4,r4,lo16(@LC23)
	align	 4
@L221:
	or	 r6,r0,r18
	or	 r9,r0,6
	or.u	 r3,r0,hi16(@LC24)
	or.u	 r4,r0,hi16(@LC25)
	or.u	 r13,r0,hi16(_c__1)
	or.u	 r12,r0,hi16(_c_n1)
	or	 r3,r3,lo16(@LC24)
	or	 r4,r4,lo16(@LC25)
	or	 r25,r13,lo16(_c__1)
	or	 r24,r12,lo16(_c_n1)
	or	 r2,r0,r25
	or	 r7,r0,r24
	or	 r8,r0,r24
	bsr.n	 _ilaenv_
	st	 r22,r31,32
	ld	 r13,r23,lo16(_tpsd.21)
	or.u	 r23,r0,hi16(_nb.28)
	bcnd.n	 eq0,r13,@L227
	st	 r2,r23,lo16(_nb.28)
	ld	 r6,r31,180
	st	 r2,r31,136
	or	 r2,r0,r25
	or	 r5,r0,r18
	or	 r7,r0,r20
	or	 r8,r0,r24
	or	 r9,r0,6
	or.u	 r3,r0,hi16(@LC26)
	or.u	 r4,r0,hi16(@LC27)
	or	 r13,r0,2
	or	 r3,r3,lo16(@LC26)
	br.n	 @L364
	or	 r4,r4,lo16(@LC27)
	align	 4
@L227:
	ld	 r6,r31,180
	st	 r2,r31,136
	or	 r2,r0,r25
	or	 r5,r0,r18
	or	 r7,r0,r20
	or	 r8,r0,r24
	or	 r9,r0,6
	or.u	 r3,r0,hi16(@LC28)
	or.u	 r4,r0,hi16(@LC29)
	or	 r13,r0,2
	or	 r3,r3,lo16(@LC28)
	or	 r4,r4,lo16(@LC29)
@L364:
	bsr.n	 _ilaenv_
	st	 r13,r31,32
	ld	 r12,r31,136
	cmp	 r13,r12,r2
	bb1	 ge,r13,@L230
	or	 r12,r0,r2
@L230:
	st	 r12,r23,lo16(_nb.28)
	ld	 r13,r0,r20
	st	 r13,r31,136
	ld	 r12,r0,r18
	cmp	 r13,r13,r12
	bb1	 ge,r13,@L231
	st	 r12,r31,136
@L231:
	ld	 r15,r31,180
	ld	 r11,r31,136
	ld	 r12,r0,r15
	or.u	 r9,r0,hi16(_wsize.26)
	cmp	 r13,r11,r12
	bb1.n	 ge,r13,@L232
	or.u	 r10,r0,hi16(_mn.29)
	or	 r11,r0,r12
@L232:
	or.u	 r13,r0,hi16(_nb.28)
	ld	 r12,r13,lo16(_nb.28)
	mul	 r12,r11,r12
	ld	 r13,r10,lo16(_mn.29)
	ld	 r14,r31,320
	addu	 r13,r13,r12
	st	 r13,r9,lo16(_wsize.26)
	flt.ds	 r12,r13
	st.d	 r12,r14,8
@L219:
	ld	 r15,r31,328
	ld	 r13,r0,r15
	bcnd.n	 eq0,r13,@L233
	addu	 r3,r31,136
	or.u	 r2,r0,hi16(@LC30)
	or	 r4,r0,6
	subu	 r13,r0,r13
	or	 r2,r2,lo16(@LC30)
	bsr.n	 _xerbla_
	st	 r13,r31,136
	br.n	 @L352
	or	 r2,r0,0
	align	 4
@L233:
	ld	 r12,r0,r20
	ld	 r11,r0,r18
	cmp	 r13,r12,r11
	bb0	 gt,r13,@L234
	or	 r12,r0,r11
@L234:
	ld	 r14,r31,180
	st	 r12,r31,136
	ld	 r11,r0,r14
	cmp	 r13,r12,r11
	bb0	 gt,r13,@L236
	or	 r12,r0,r11
@L236:
	bcnd.n	 ne0,r12,@L235
	or.u	 r2,r0,hi16(@LC32)
	ld	 r12,r0,r20
	ld	 r3,r0,r18
	cmp	 r13,r12,r3
	bb1	 ge,r13,@L237
	or	 r12,r0,r3
@L237:
	ld	 r4,r31,180
	ld	 r15,r31,228
	ld	 r14,r31,196
	ld	 r8,r31,204
	addu	 r3,r31,136
	or	 r9,r0,4
	or.u	 r5,r0,hi16(_c_b61)
	or.u	 r2,r0,hi16(@LC31)
	or	 r5,r5,lo16(_c_b61)
	or	 r2,r2,lo16(@LC31)
	lda.d	 r7,r14[r15]
	or	 r6,r0,r5
	bsr.n	 _dlaset_
	st	 r12,r31,136
	br.n	 @L352
	or	 r2,r0,0
	align	 4
@L235:
	or	 r3,r0,1
	bsr.n	 _dlamch_
	or	 r2,r2,lo16(@LC32)
	or	 r24,r0,r2
	or	 r25,r0,r3
	or.u	 r2,r0,hi16(@LC33)
	or	 r3,r0,1
	bsr.n	 _dlamch_
	or	 r2,r2,lo16(@LC33)
	fdiv.ddd r24,r24,r2
	or.u	 r13,r0,0x3f80
	fdiv.dsd r10,r13,r24
	or.u	 r23,r0,hi16(_smlnum.32)
	or	 r22,r23,lo16(_smlnum.32)
	or	 r2,r0,r22
	or.u	 r13,r0,hi16(_bignum.31)
	st.d	 r24,r23,lo16(_smlnum.32)
	or	 r3,r13,lo16(_bignum.31)
	bsr.n	 _dlabad_
	st.d	 r10,r13,lo16(_bignum.31)
	ld	 r15,r31,212
	ld	 r14,r31,188
	or	 r3,r0,r20
	or	 r4,r0,r18
	or	 r6,r0,r17
	or	 r8,r0,1
	or.u	 r2,r0,hi16(@LC34)
	or.u	 r7,r0,hi16(_rwork.27)
	or	 r2,r2,lo16(@LC34)
	lda.d	 r25,r14[r15]
	or	 r7,r7,lo16(_rwork.27)
	bsr.n	 _dlange_
	or	 r5,r0,r25
	or.u	 r24,r0,hi16(_iascl.24)
	or.u	 r13,r0,hi16(_anrm.18)
	st	 r0,r24,lo16(_iascl.24)
	fcmp.sds r12,r2,r0
	st.d	 r2,r13,lo16(_anrm.18)
	bb1.n	 le,r12,@L238
	or	 r5,r13,lo16(_anrm.18)
	ld.d	 r12,r23,lo16(_smlnum.32)
	fcmp.sdd r13,r2,r12
	bb0.n	 lt,r13,@L365
	or.u	 r10,r0,hi16(_anrm.18)
	ld	 r15,r31,328
	st	 r17,r31,32
	st	 r15,r31,36
	or	 r6,r0,r22
	or	 r7,r0,r20
	or	 r8,r0,r18
	or	 r9,r0,r25
	or.u	 r3,r0,hi16(_c__0)
	or.u	 r2,r0,hi16(@LC35)
	or	 r25,r0,1
	or	 r3,r3,lo16(_c__0)
	or	 r2,r2,lo16(@LC35)
	or	 r4,r0,r3
	bsr.n	 _dlascl_
	st	 r25,r31,40
	br.n	 @L239
	st	 r25,r24,lo16(_iascl.24)
	align	 4
@L238:
	or.u	 r10,r0,hi16(_anrm.18)
@L365:
	or.u	 r11,r0,hi16(_bignum.31)
	ld.d	 r8,r10,lo16(_anrm.18)
	ld.d	 r12,r11,lo16(_bignum.31)
	or	 r5,r10,lo16(_anrm.18)
	fcmp.sdd r13,r8,r12
	bb1.n	 le,r13,@L240
	or	 r6,r11,lo16(_bignum.31)
	ld	 r14,r31,328
	ld	 r15,r31,212
	or	 r7,r0,r20
	or	 r8,r0,r18
	st	 r14,r31,36
	or.u	 r3,r0,hi16(_c__0)
	ld	 r14,r31,188
	or.u	 r2,r0,hi16(@LC36)
	or	 r13,r0,1
	st	 r17,r31,32
	or	 r3,r3,lo16(_c__0)
	or	 r2,r2,lo16(@LC36)
	lda.d	 r9,r14[r15]
	or	 r4,r0,r3
	bsr.n	 _dlascl_
	st	 r13,r31,40
	or.u	 r12,r0,hi16(_iascl.24)
	or	 r13,r0,2
	br.n	 @L239
	st	 r13,r12,lo16(_iascl.24)
	align	 4
@L240:
	fcmp.sds r13,r8,r0
	bb1.n	 ne,r13,@L366
	or.u	 r13,r0,hi16(_tpsd.21)
	ld	 r12,r0,r20
	ld	 r3,r0,r18
	cmp	 r13,r12,r3
	bb1	 ge,r13,@L243
	or	 r12,r0,r3
@L243:
	addu	 r3,r31,136
	ld	 r4,r31,180
	or	 r9,r0,1
	ld	 r15,r31,228
	or.u	 r5,r0,hi16(_c_b61)
	ld	 r14,r31,196
	or.u	 r2,r0,hi16(@LC37)
	ld	 r8,r31,204
	or	 r5,r5,lo16(_c_b61)
	or	 r2,r2,lo16(@LC37)
	lda.d	 r7,r14[r15]
	or	 r6,r0,r5
	st	 r12,r31,136
	bsr.n	 _dlaset_
	addu	 r1,r1,@L378
@L379:
	align	 4
@L239:
	or.u	 r13,r0,hi16(_tpsd.21)
@L366:
	ld	 r12,r0,r20
	or.u	 r11,r0,hi16(_brow.20)
	ld	 r13,r13,lo16(_tpsd.21)
	or	 r23,r11,lo16(_brow.20)
	bcnd.n	 eq0,r13,@L245
	st	 r12,r11,lo16(_brow.20)
	ld	 r13,r0,r18
	st	 r13,r11,lo16(_brow.20)
@L245:
	ld	 r4,r31,180
	ld	 r6,r31,204
	ld	 r15,r31,228
	ld	 r14,r31,196
	or	 r3,r0,r23
	or.u	 r2,r0,hi16(@LC38)
	or	 r8,r0,1
	or.u	 r7,r0,hi16(_rwork.27)
	or	 r2,r2,lo16(@LC38)
	lda.d	 r25,r14[r15]
	or	 r7,r7,lo16(_rwork.27)
	bsr.n	 _dlange_
	or	 r5,r0,r25
	or.u	 r24,r0,hi16(_ibscl.25)
	or.u	 r13,r0,hi16(_bnrm.19)
	st	 r0,r24,lo16(_ibscl.25)
	fcmp.sds r12,r2,r0
	st.d	 r2,r13,lo16(_bnrm.19)
	bb1.n	 le,r12,@L246
	or	 r5,r13,lo16(_bnrm.19)
	or.u	 r13,r0,hi16(_smlnum.32)
	ld.d	 r10,r13,lo16(_smlnum.32)
	fcmp.sdd r12,r2,r10
	bb0.n	 lt,r12,@L246
	or	 r6,r13,lo16(_smlnum.32)
	ld	 r15,r31,204
	or	 r7,r0,r23
	ld	 r14,r31,328
	or	 r9,r0,r25
	ld	 r8,r31,180
	or.u	 r3,r0,hi16(_c__0)
	or.u	 r2,r0,hi16(@LC39)
	st	 r15,r31,32
	or	 r25,r0,1
	st	 r14,r31,36
	or	 r3,r3,lo16(_c__0)
	or	 r2,r2,lo16(@LC39)
	or	 r4,r0,r3
	bsr.n	 _dlascl_
	st	 r25,r31,40
	br.n	 @L247
	st	 r25,r24,lo16(_ibscl.25)
	align	 4
@L246:
	or.u	 r8,r0,hi16(_bnrm.19)
	or.u	 r9,r0,hi16(_bignum.31)
	ld.d	 r10,r8,lo16(_bnrm.19)
	ld.d	 r12,r9,lo16(_bignum.31)
	or	 r5,r8,lo16(_bnrm.19)
	fcmp.sdd r13,r10,r12
	bb1.n	 le,r13,@L247
	or	 r6,r9,lo16(_bignum.31)
	ld	 r15,r31,204
	ld	 r14,r31,328
	ld	 r8,r31,180
	st	 r15,r31,32
	or.u	 r2,r0,hi16(@LC40)
	ld	 r15,r31,228
	or.u	 r3,r0,hi16(_c__0)
	or.u	 r7,r0,hi16(_brow.20)
	st	 r14,r31,36
	or	 r13,r0,1
	ld	 r14,r31,196
	or	 r2,r2,lo16(@LC40)
	or	 r3,r3,lo16(_c__0)
	or	 r7,r7,lo16(_brow.20)
	lda.d	 r9,r14[r15]
	or	 r4,r0,r3
	bsr.n	 _dlascl_
	st	 r13,r31,40
	or.u	 r12,r0,hi16(_ibscl.25)
	or	 r13,r0,2
	st	 r13,r12,lo16(_ibscl.25)
@L247:
	ld	 r13,r0,r20
	ld	 r12,r0,r18
	cmp	 r13,r13,r12
	bb0.n	 ge,r13,@L249
	or	 r2,r0,r20
	ld	 r15,r31,212
	or	 r3,r0,r18
	ld	 r14,r31,188
	or.u	 r24,r0,hi16(_mn.29)
	ld	 r9,r31,328
	or	 r5,r0,r17
	ld	 r12,r24,lo16(_mn.29)
	lda.d	 r23,r14[r15]
	ld	 r15,r31,324
	addu	 r8,r31,136
	ld	 r14,r31,320
	mak	 r7,r12,0<3>
	or	 r4,r0,r23
	addu	 r25,r14,8
	addu	 r7,r7,8
	ld	 r13,r0,r15
	or	 r6,r0,r25
	addu	 r7,r14,r7
	subu	 r13,r13,r12
	bsr.n	 _dgeqrf_
	st	 r13,r31,136
	or.u	 r13,r0,hi16(_tpsd.21)
	ld	 r13,r13,lo16(_tpsd.21)
	bcnd.n	 ne0,r13,@L250
	or	 r6,r0,r18
	ld	 r5,r31,180
	or	 r4,r0,r20
	ld	 r13,r0,r15
	ld	 r15,r31,228
	or	 r7,r0,r23
	ld	 r14,r31,196
	or	 r8,r0,r17
	ld	 r12,r24,lo16(_mn.29)
	lda.d	 r24,r14[r15]
	ld	 r15,r31,204
	or	 r9,r0,r25
	ld	 r14,r31,328
	or.u	 r2,r0,hi16(@LC41)
	subu	 r13,r13,r12
	st	 r13,r31,136
	or.u	 r3,r0,hi16(@LC42)
	st	 r15,r31,36
	or	 r25,r0,4
	ld	 r15,r31,320
	or	 r2,r2,lo16(@LC41)
	or	 r3,r3,lo16(@LC42)
	st	 r24,r31,32
	addu	 r13,r31,136
	st	 r13,r31,44
	mak	 r12,r12,0<3>
	st	 r14,r31,48
	or	 r13,r0,9
	st	 r25,r31,52
	addu	 r12,r12,8
	st	 r13,r31,56
	addu	 r12,r15,r12
	bsr.n	 _dormqr_
	st	 r12,r31,40
	or	 r6,r0,r18
	ld	 r7,r31,180
	or	 r9,r0,r23
	ld	 r14,r31,204
	or	 r13,r0,5
	or.u	 r2,r0,hi16(@LC43)
	st	 r13,r31,48
	or	 r13,r0,12
	or.u	 r3,r0,hi16(@LC44)
	st	 r17,r31,32
	or.u	 r4,r0,hi16(@LC45)
	st	 r24,r31,36
	or.u	 r5,r0,hi16(@LC46)
	st	 r14,r31,40
	or.u	 r8,r0,hi16(_c_b89)
	st	 r13,r31,52
	or	 r13,r0,8
	st	 r25,r31,44
	or	 r2,r2,lo16(@LC43)
	or	 r3,r3,lo16(@LC44)
	or	 r4,r4,lo16(@LC45)
	or	 r5,r5,lo16(@LC46)
	or	 r8,r8,lo16(_c_b89)
	bsr.n	 _dtrsm_
	st	 r13,r31,56
	ld	 r12,r0,r18
	br.n	 @L367
	or.u	 r13,r0,hi16(_scllen.30)
	align	 4
@L250:
	or.u	 r2,r0,hi16(@LC47)
	or	 r9,r0,r23
	ld	 r15,r31,228
	or.u	 r3,r0,hi16(@LC48)
	ld	 r14,r31,196
	or.u	 r4,r0,hi16(@LC49)
	ld	 r7,r31,180
	or.u	 r5,r0,hi16(@LC50)
	or.u	 r8,r0,hi16(_c_b89)
	st	 r17,r31,32
	or	 r2,r2,lo16(@LC47)
	or	 r3,r3,lo16(@LC48)
	lda.d	 r13,r14[r15]
	ld	 r15,r31,204
	or	 r4,r4,lo16(@LC49)
	or	 r5,r5,lo16(@LC50)
	st	 r13,r31,36
	or	 r8,r8,lo16(_c_b89)
	st	 r15,r31,40
	or	 r13,r0,4
	st	 r13,r31,44
	or	 r13,r0,5
	st	 r13,r31,48
	or	 r13,r0,9
	st	 r13,r31,52
	or	 r13,r0,8
	bsr.n	 _dtrsm_
	st	 r13,r31,56
	ld	 r14,r31,180
	ld	 r13,r0,r14
	or	 r12,r0,1
	or.u	 r11,r0,hi16(_j.23)
	st	 r13,r31,136
	cmp	 r13,r12,r13
	bb0.n	 le,r13,@L253
	st	 r12,r11,lo16(_j.23)
	or	 r8,r0,0
	or	 r9,r0,0
	or.u	 r10,r0,hi16(_i__.22)
	or	 r7,r0,r11
@L255:
	ld	 r13,r0,r18
	ld	 r2,r0,r20
	addu	 r13,r13,1
	cmp	 r12,r13,r2
	bb1.n	 gt,r12,@L254
	st	 r13,r10,lo16(_i__.22)
	ld	 r13,r7,lo16(_j.23)
	ld	 r15,r31,220
	mul	 r11,r13,r15
@L259:
	ld	 r13,r10,lo16(_i__.22)
	ld	 r14,r31,196
	addu	 r12,r13,1
	addu	 r13,r13,r11
	st	 r12,r10,lo16(_i__.22)
	cmp	 r12,r12,r2
	bb1.n	 le,r12,@L259
	st.d	 r8,r14[r13]
@L254:
	ld	 r13,r7,lo16(_j.23)
	ld	 r12,r31,136
	addu	 r13,r13,1
	cmp	 r12,r13,r12
	bb1.n	 le,r12,@L255
	st	 r13,r7,lo16(_j.23)
@L253:
	ld	 r5,r31,180
	ld	 r15,r31,324
	ld	 r14,r31,212
	ld	 r13,r0,r15
	or.u	 r12,r0,hi16(_mn.29)
	ld	 r15,r31,188
	ld	 r12,r12,lo16(_mn.29)
	lda.d	 r7,r15[r14]
	ld	 r14,r31,320
	or	 r4,r0,r20
	ld	 r15,r31,228
	addu	 r9,r14,8
	ld	 r14,r31,196
	or	 r6,r0,r18
	subu	 r13,r13,r12
	st	 r13,r31,136
	lda.d	 r13,r14[r15]
	ld	 r15,r31,204
	or	 r8,r0,r17
	ld	 r14,r31,328
	or.u	 r2,r0,hi16(@LC51)
	or.u	 r3,r0,hi16(@LC52)
	st	 r15,r31,36
	or	 r2,r2,lo16(@LC51)
	ld	 r15,r31,320
	or	 r3,r3,lo16(@LC52)
	mak	 r12,r12,0<3>
	st	 r13,r31,32
	addu	 r13,r31,136
	st	 r13,r31,44
	addu	 r12,r12,8
	st	 r14,r31,48
	or	 r13,r0,4
	st	 r13,r31,52
	or	 r13,r0,12
	st	 r13,r31,56
	addu	 r12,r15,r12
	st	 r12,r31,40
	bsr.n	 _dormqr_
	addu	 r1,r1,@L380
@L381:
	align	 4
@L249:
	or.u	 r12,r0,hi16(_mn.29)
	ld	 r14,r31,324
	ld	 r12,r12,lo16(_mn.29)
	ld	 r13,r0,r14
	ld	 r14,r31,212
	subu	 r13,r13,r12
	st	 r13,r31,136
	ld	 r15,r0,r17
	st	 r15,r31,252
	addu	 r13,r15,1
	ld	 r15,r31,188
	lda.d	 r14,r15[r14]
	st	 r14,r31,276
	ld	 r14,r31,328
	st	 r0,r0,r14
	ld	 r15,r31,276
	mak	 r13,r13,0<3>
	addu	 r14,r31,144
	st	 r14,r31,260
	subu	 r15,r15,r13
	st	 r15,r31,276
	ld	 r11,r0,r20
	ld	 r15,r31,320
	addu	 r16,r31,136
	st	 r15,r31,236
	lda.d	 r12,r15[r12]
	bcnd.n	 ge0,r11,@L264
	st	 r12,r31,244
	ld	 r14,r31,328
	subu	 r13,r0,1
	br.n	 @L265
	st	 r13,r0,r14
	align	 4
@L264:
	ld	 r13,r0,r18
	bcnd.n	 ge0,r13,@L266
	cmp	 r13,r11,1
	ld	 r15,r31,328
	br.n	 @L360
	subu	 r13,r0,2
	align	 4
@L266:
	ld	 r12,r0,r17
	bb0.n	 gt,r13,@L269
	cmp	 r13,r12,r11
	bb0	 ge,r13,@L270
	br	 @L268
	align	 4
@L269:
	bcnd	 gt0,r12,@L268
@L270:
	ld	 r14,r31,328
	subu	 r13,r0,4
	br.n	 @L265
	st	 r13,r0,r14
	align	 4
@L268:
	ld	 r11,r0,r20
	cmp	 r13,r11,1
	ld	 r12,r0,r16
	bb0.n	 gt,r13,@L273
	cmp	 r13,r12,r11
	bb0	 ge,r13,@L274
	br	 @L265
	align	 4
@L273:
	bcnd	 gt0,r12,@L265
@L274:
	ld	 r15,r31,328
	subu	 r13,r0,7
@L360:
	st	 r13,r0,r15
@L265:
	ld	 r14,r31,328
	ld	 r13,r0,r14
	bcnd.n	 eq0,r13,@L275
	addu	 r3,r31,144
	or.u	 r2,r0,hi16(@LC2)
	or	 r4,r0,6
	subu	 r13,r0,r13
	or	 r2,r2,lo16(@LC2)
	st	 r13,r31,144
	bsr.n	 _xerbla_
	addu	 r1,r1,@L382
@L383:
	align	 4
@L275:
	ld	 r12,r0,r20
	ld	 r11,r0,r18
	cmp	 r13,r12,r11
	bb0.n	 gt,r13,@L276
	or.u	 r23,r0,hi16(_k.8)
	or	 r12,r0,r11
@L276:
	bcnd.n	 ne0,r12,@L277
	st	 r12,r23,lo16(_k.8)
	ld	 r15,r31,244
	or.u	 r12,r0,0x3ff0
	or	 r13,r0,0
	br.n	 @L263
	st.d	 r12,r15,8
	align	 4
@L277:
	or	 r5,r0,r20
	or	 r6,r0,r18
	or	 r9,r0,6
	or.u	 r2,r0,hi16(_c__1)
	or.u	 r3,r0,hi16(@LC3)
	or.u	 r13,r0,hi16(_c_n1)
	or.u	 r4,r0,hi16(@LC4)
	or	 r22,r0,1
	or	 r2,r2,lo16(_c__1)
	or	 r3,r3,lo16(@LC3)
	or	 r25,r13,lo16(_c_n1)
	or	 r4,r4,lo16(@LC4)
	or	 r7,r0,r25
	or	 r8,r0,r25
	bsr.n	 _ilaenv_
	st	 r22,r31,32
	or.u	 r24,r0,hi16(_nb.12)
	or.u	 r21,r0,hi16(_nx.13)
	st	 r2,r24,lo16(_nb.12)
	or.u	 r12,r0,hi16(_nbmin.9)
	st	 r0,r21,lo16(_nx.13)
	or	 r13,r0,2
	st	 r13,r12,lo16(_nbmin.9)
	ld	 r13,r0,r20
	or.u	 r19,r0,hi16(_iws.15)
	st	 r13,r19,lo16(_iws.15)
	cmp	 r13,r2,1
	bb0.n	 gt,r13,@L368
	or.u	 r13,r0,hi16(_nb.12)
	ld	 r13,r23,lo16(_k.8)
	cmp	 r13,r2,r13
	bb1.n	 ge,r13,@L368
	or.u	 r13,r0,hi16(_nb.12)
	st	 r0,r31,144
	or	 r5,r0,r20
	or	 r6,r0,r18
	or	 r7,r0,r25
	or.u	 r2,r0,hi16(_c__3)
	or	 r9,r0,6
	or.u	 r3,r0,hi16(@LC5)
	or.u	 r4,r0,hi16(@LC6)
	or	 r8,r0,r7
	or	 r2,r2,lo16(_c__3)
	or	 r3,r3,lo16(@LC5)
	or	 r4,r4,lo16(@LC6)
	bsr.n	 _ilaenv_
	st	 r22,r31,32
	ld	 r12,r31,144
	cmp	 r13,r12,r2
	bb1.n	 ge,r13,@L279
	st	 r2,r31,172
	or	 r12,r0,r2
@L279:
	ld	 r13,r23,lo16(_k.8)
	cmp	 r13,r12,r13
	bb1.n	 ge,r13,@L278
	st	 r12,r21,lo16(_nx.13)
	ld	 r11,r0,r20
	ld	 r13,r24,lo16(_nb.12)
	or.u	 r12,r0,hi16(_ldwork.14)
	st	 r11,r12,lo16(_ldwork.14)
	mul	 r13,r11,r13
	st	 r13,r19,lo16(_iws.15)
	ld	 r12,r0,r16
	cmp	 r13,r12,r13
	bb1.n	 ge,r13,@L278
	or.u	 r14,r0,hi16(@LC69)
	or	 r14,r14,lo16(@LC69)
	ld	 r9,r0,r14
	bcnd.n	 gt0,r11,@L283
	subu	 r10,r0,r11
	bcnd.n	 ge0,r12,@L284
	subu	 r13,r0,r12
	divu	 r13,r13,r10
	bcnd	 ne0,r11,@L282
@L286:
	tb0	 0,r0,503
	br.n	 @L369
	st	 r13,r0,r9
	align	 4
@L284:
	divu	 r13,r12,r10
	bcnd	 eq0,r11,@L286
	subu	 r13,r0,r13
	br.n	 @L369
	st	 r13,r0,r9
	align	 4
@L283:
	bcnd.n	 ge0,r12,@L285
	subu	 r13,r0,r12
	divu	 r13,r13,r11
	br.n	 @L282
	subu	 r13,r0,r13
	align	 4
@L285:
	divu	 r13,r12,r11
@L282:
	st	 r13,r0,r9
@L369:
	ld	 r15,r31,260
	or	 r13,r0,2
	or	 r5,r0,r20
	or	 r6,r0,r18
	or	 r9,r0,6
	or.u	 r2,r0,hi16(_c__2)
	or.u	 r3,r0,hi16(@LC7)
	or.u	 r7,r0,hi16(_c_n1)
	or.u	 r4,r0,hi16(@LC8)
	or	 r2,r2,lo16(_c__2)
	or	 r3,r3,lo16(@LC7)
	or	 r7,r7,lo16(_c_n1)
	or	 r4,r4,lo16(@LC8)
	st	 r13,r0,r15
	or	 r8,r0,r7
	or	 r13,r0,1
	bsr.n	 _ilaenv_
	st	 r13,r31,32
	ld	 r12,r31,144
	st	 r2,r31,172
	cmp	 r13,r12,r2
	bb1.n	 ge,r13,@L287
	or.u	 r11,r0,hi16(_nbmin.9)
	or	 r12,r0,r2
@L287:
	st	 r12,r11,lo16(_nbmin.9)
@L278:
	or.u	 r13,r0,hi16(_nb.12)
@L368:
	ld	 r10,r13,lo16(_nb.12)
	or.u	 r13,r0,hi16(_nbmin.9)
	ld	 r13,r13,lo16(_nbmin.9)
	cmp	 r13,r10,r13
	bb0.n	 ge,r13,@L288
	or.u	 r13,r0,hi16(_k.8)
	ld	 r12,r13,lo16(_k.8)
	cmp	 r13,r10,r12
	bb0.n	 lt,r13,@L288
	or.u	 r13,r0,hi16(_nx.13)
	ld	 r11,r13,lo16(_nx.13)
	cmp	 r13,r11,r12
	bb0.n	 lt,r13,@L288
	subu	 r12,r12,r11
	st	 r12,r31,144
	or.u	 r13,r0,hi16(_i__.7)
	st	 r10,r31,172
	or	 r11,r0,1
	bcnd.n	 ge0,r10,@L377
	st	 r11,r13,lo16(_i__.7)
	cmp	 r13,r11,r12
	bb1.n	 ge,r13,@L370
	or.u	 r13,r0,hi16(_k.8)
	br.n	 @L371
	or.u	 r13,r0,hi16(_i__.7)
	align	 4
@L293:
	or.u	 r13,r0,hi16(_i__.7)
@L377:
	ld	 r12,r31,144
	ld	 r13,r13,lo16(_i__.7)
	cmp	 r13,r13,r12
	bb1.n	 gt,r13,@L371
	or.u	 r13,r0,hi16(_i__.7)
	or.u	 r13,r0,hi16(_k.8)
@L370:
	ld	 r12,r13,lo16(_k.8)
	or.u	 r13,r0,hi16(_i__.7)
	ld	 r11,r13,lo16(_i__.7)
	or.u	 r13,r0,hi16(_nb.12)
	ld	 r10,r13,lo16(_nb.12)
	subu	 r12,r12,r11
	addu	 r12,r12,1
	st	 r12,r31,148
	or	 r9,r0,r12
	or.u	 r12,r0,hi16(_ib.11)
	cmp	 r13,r9,r10
	bb0.n	 gt,r13,@L295
	or	 r8,r12,lo16(_ib.11)
	or	 r9,r0,r10
@L295:
	st	 r9,r12,lo16(_ib.11)
	ld	 r13,r0,r18
	ld	 r14,r31,252
	ld	 r15,r31,236
	mul	 r12,r11,r14
	subu	 r13,r13,r11
	ld	 r14,r31,276
	lda.d	 r21,r15[r11]
	ld	 r15,r31,244
	addu	 r10,r13,1
	st	 r10,r31,148
	ld	 r24,r0,r17
	or	 r16,r0,r8
	subu	 r21,r21,8
	st	 r15,r31,284
	addu	 r13,r24,1
	addu	 r12,r11,r12
	mak	 r13,r13,0<3>
	lda.d	 r25,r14[r12]
	or.u	 r12,r0,hi16(_iinfo.10)
	subu	 r25,r25,r13
	or	 r11,r12,lo16(_iinfo.10)
	bcnd.n	 ge0,r9,@L297
	st	 r0,r12,lo16(_iinfo.10)
	subu	 r13,r0,1
	br.n	 @L298
	st	 r13,r12,lo16(_iinfo.10)
	align	 4
@L297:
	bcnd.n	 ge0,r10,@L299
	cmp	 r13,r9,1
	subu	 r13,r0,2
	br.n	 @L298
	st	 r13,r12,lo16(_iinfo.10)
	align	 4
@L299:
	ld	 r12,r0,r17
	bb0.n	 gt,r13,@L302
	cmp	 r13,r12,r9
	bb0.n	 ge,r13,@L372
	subu	 r13,r0,4
	br	 @L298
	align	 4
@L302:
	bcnd.n	 gt0,r12,@L298
	subu	 r13,r0,4
@L372:
	st	 r13,r0,r11
@L298:
	ld	 r13,r0,r11
	bcnd.n	 eq0,r13,@L304
	addu	 r3,r31,152
	or.u	 r2,r0,hi16(@LC0)
	or	 r4,r0,6
	subu	 r13,r0,r13
	or	 r2,r2,lo16(@LC0)
	st	 r13,r31,152
	bsr.n	 _xerbla_
	addu	 r1,r1,@L384
@L385:
	align	 4
@L304:
	ld	 r12,r0,r16
	ld	 r11,r31,148
	cmp	 r13,r12,r11
	bb0.n	 gt,r13,@L305
	or.u	 r10,r0,hi16(_k.3)
	or	 r12,r0,r11
@L305:
	or	 r13,r0,1
	st	 r12,r10,lo16(_k.3)
	or.u	 r11,r0,hi16(_i__.2)
	st	 r12,r31,152
	cmp	 r12,r13,r12
	bb0.n	 le,r12,@L296
	st	 r13,r11,lo16(_i__.2)
	or	 r23,r0,r11
	addu	 r22,r31,156
	or.u	 r19,r0,hi16(_aii.4)
@L309:
	ld	 r10,r23,lo16(_i__.2)
	ld	 r9,r31,148
	mul	 r11,r10,r24
	subu	 r13,r9,r10
	addu	 r12,r10,1
	st	 r12,r31,160
	addu	 r13,r13,1
	st	 r13,r31,156
	addu	 r11,r10,r11
	cmp	 r13,r12,r9
	bb0.n	 gt,r13,@L310
	lda.d	 r3,r25[r11]
	or	 r12,r0,r9
@L310:
	mul	 r4,r12,r24
	or	 r2,r0,r22
	or	 r5,r0,r17
	addu	 r4,r10,r4
	lda.d	 r6,r21[r10]
	bsr.n	 _dlarfg_
	lda.d	 r4,r25[r4]
	ld	 r12,r23,lo16(_i__.2)
	ld	 r13,r0,r16
	cmp	 r13,r12,r13
	bb1.n	 ge,r13,@L308
	or	 r3,r0,r22
	or.u	 r10,r0,0x3ff0
	or	 r11,r0,0
	mul	 r8,r12,r24
	addu	 r4,r31,160
	or	 r6,r0,r17
	lda.d	 r7,r21[r12]
	or	 r9,r0,r17
	ld	 r13,r31,148
	addu	 r5,r12,r8
	or.u	 r2,r0,hi16(@LC1)
	ld.d	 r14,r25[r5]
	or	 r2,r2,lo16(@LC1)
	subu	 r13,r13,r12
	st.d	 r14,r19,lo16(_aii.4)
	addu	 r13,r13,1
	st	 r13,r31,160
	addu	 r8,r8,1
	st.d	 r10,r25[r5]
	addu	 r8,r12,r8
	ld	 r13,r0,r16
	lda.d	 r5,r25[r5]
	ld	 r15,r31,284
	lda.d	 r8,r25[r8]
	subu	 r13,r13,r12
	st	 r13,r31,156
	addu	 r13,r15,8
	st	 r13,r31,32
	or	 r13,r0,5
	bsr.n	 _dlarf_
	st	 r13,r31,36
	ld	 r13,r23,lo16(_i__.2)
	mul	 r12,r13,r24
	addu	 r13,r13,r12
	ld.d	 r14,r19,lo16(_aii.4)
	st.d	 r14,r25[r13]
@L308:
	ld	 r13,r23,lo16(_i__.2)
	ld	 r12,r31,152
	addu	 r13,r13,1
	cmp	 r12,r13,r12
	bb1.n	 le,r12,@L309
	st	 r13,r23,lo16(_i__.2)
@L296:
	or.u	 r21,r0,hi16(_i__.7)
	or.u	 r22,r0,hi16(_ib.11)
	ld	 r11,r21,lo16(_i__.7)
	ld	 r13,r22,lo16(_ib.11)
	ld	 r12,r0,r20
	addu	 r13,r11,r13
	cmp	 r13,r13,r12
	bb1.n	 gt,r13,@L291
	or	 r19,r22,lo16(_ib.11)
	addu	 r4,r31,148
	or	 r5,r0,r19
	or	 r7,r0,r17
	or.u	 r2,r0,hi16(@LC9)
	or.u	 r3,r0,hi16(@LC10)
	ld	 r15,r31,236
	or.u	 r25,r0,hi16(_ldwork.14)
	ld	 r13,r0,r18
	or	 r24,r0,7
	ld	 r14,r31,244
	or	 r2,r2,lo16(@LC9)
	or	 r3,r3,lo16(@LC10)
	or	 r25,r25,lo16(_ldwork.14)
	lda.d	 r8,r15[r11]
	addu	 r23,r14,8
	ld	 r15,r31,252
	subu	 r13,r13,r11
	ld	 r14,r31,276
	mul	 r6,r11,r15
	addu	 r13,r13,1
	st	 r13,r31,148
	or	 r9,r0,r23
	st	 r25,r31,32
	addu	 r6,r11,r6
	st	 r24,r31,36
	lda.d	 r6,r14[r6]
	bsr.n	 _dlarft_
	st	 r24,r31,40
	addu	 r6,r31,148
	ld	 r13,r0,r20
	addu	 r7,r31,168
	ld	 r9,r21,lo16(_i__.7)
	or	 r8,r0,r19
	ld	 r12,r22,lo16(_ib.11)
	subu	 r13,r13,r9
	or.u	 r2,r0,hi16(@LC11)
	subu	 r13,r13,r12
	or.u	 r3,r0,hi16(@LC12)
	addu	 r13,r13,1
	st	 r13,r31,148
	or.u	 r4,r0,hi16(@LC13)
	ld	 r13,r0,r18
	mul	 r11,r9,r15
	ld	 r15,r31,244
	subu	 r13,r13,r9
	or.u	 r5,r0,hi16(@LC14)
	addu	 r13,r13,1
	st	 r13,r31,168
	or	 r2,r2,lo16(@LC11)
	st	 r17,r31,32
	or	 r3,r3,lo16(@LC12)
	st	 r23,r31,36
	or	 r4,r4,lo16(@LC13)
	st	 r25,r31,40
	or	 r5,r5,lo16(@LC14)
	st	 r17,r31,48
	addu	 r13,r9,r12
	st	 r25,r31,56
	mak	 r12,r12,0<3>
	st	 r24,r31,68
	addu	 r9,r9,r11
	st	 r24,r31,72
	addu	 r13,r13,r11
	addu	 r12,r12,8
	lda.d	 r9,r14[r9]
	lda.d	 r13,r14[r13]
	st	 r13,r31,44
	addu	 r12,r15,r12
	st	 r12,r31,52
	or	 r13,r0,5
	st	 r13,r31,60
	or	 r13,r0,12
	bsr.n	 _dlarfb_
	st	 r13,r31,64
@L291:
	ld	 r13,r21,lo16(_i__.7)
	ld	 r12,r31,172
	addu	 r11,r13,r12
	bcnd.n	 ge0,r12,@L293
	st	 r11,r21,lo16(_i__.7)
	ld	 r13,r31,144
	cmp	 r13,r11,r13
	bb1.n	 ge,r13,@L370
	or.u	 r13,r0,hi16(_k.8)
	br.n	 @L371
	or.u	 r13,r0,hi16(_i__.7)
	align	 4
@L288:
	or.u	 r12,r0,hi16(_i__.7)
	or	 r13,r0,1
	st	 r13,r12,lo16(_i__.7)
	or.u	 r13,r0,hi16(_i__.7)
@L371:
	ld	 r11,r13,lo16(_i__.7)
	or.u	 r13,r0,hi16(_k.8)
	ld	 r13,r13,lo16(_k.8)
	cmp	 r13,r11,r13
	bb1.n	 gt,r13,@L373
	or.u	 r13,r0,hi16(_iws.15)
	ld	 r13,r0,r20
	ld	 r14,r31,252
	ld	 r15,r31,236
	mul	 r12,r11,r14
	subu	 r13,r13,r11
	ld	 r14,r31,276
	addu	 r10,r13,1
	st	 r10,r31,172
	ld	 r13,r0,r18
	lda.d	 r19,r15[r11]
	ld	 r15,r31,244
	subu	 r13,r13,r11
	addu	 r9,r13,1
	st	 r9,r31,144
	addu	 r22,r31,144
	ld	 r24,r0,r17
	subu	 r19,r19,8
	addu	 r12,r11,r12
	st	 r15,r31,284
	lda.d	 r25,r14[r12]
	or.u	 r12,r0,hi16(_iinfo.10)
	addu	 r13,r24,1
	or	 r11,r12,lo16(_iinfo.10)
	mak	 r13,r13,0<3>
	st	 r0,r12,lo16(_iinfo.10)
	bcnd.n	 ge0,r10,@L318
	subu	 r25,r25,r13
	subu	 r13,r0,1
	br.n	 @L319
	st	 r13,r12,lo16(_iinfo.10)
	align	 4
@L318:
	bcnd.n	 ge0,r9,@L320
	cmp	 r13,r10,1
	subu	 r13,r0,2
	br.n	 @L319
	st	 r13,r12,lo16(_iinfo.10)
	align	 4
@L320:
	ld	 r12,r0,r17
	bb0.n	 gt,r13,@L323
	cmp	 r13,r12,r10
	bb0.n	 ge,r13,@L374
	subu	 r13,r0,4
	br	 @L319
	align	 4
@L323:
	bcnd.n	 gt0,r12,@L319
	subu	 r13,r0,4
@L374:
	st	 r13,r0,r11
@L319:
	ld	 r13,r0,r11
	bcnd.n	 eq0,r13,@L325
	addu	 r3,r31,152
	or.u	 r2,r0,hi16(@LC0)
	or	 r4,r0,6
	subu	 r13,r0,r13
	or	 r2,r2,lo16(@LC0)
	st	 r13,r31,152
	bsr.n	 _xerbla_
	addu	 r1,r1,@L386
@L387:
	align	 4
@L325:
	ld	 r12,r31,172
	ld	 r11,r0,r22
	cmp	 r13,r12,r11
	bb0.n	 gt,r13,@L326
	or.u	 r10,r0,hi16(_k.3)
	or	 r12,r0,r11
@L326:
	or	 r13,r0,1
	st	 r12,r10,lo16(_k.3)
	or.u	 r11,r0,hi16(_i__.2)
	st	 r12,r31,152
	cmp	 r12,r13,r12
	bb0.n	 le,r12,@L316
	st	 r13,r11,lo16(_i__.2)
	or	 r23,r0,r11
	addu	 r21,r31,156
	or.u	 r16,r0,hi16(_aii.4)
@L330:
	ld	 r10,r23,lo16(_i__.2)
	ld	 r13,r0,r22
	mul	 r12,r10,r24
	addu	 r11,r10,1
	subu	 r13,r13,r10
	st	 r11,r31,160
	addu	 r13,r13,1
	st	 r13,r31,156
	ld	 r9,r0,r22
	addu	 r12,r10,r12
	cmp	 r13,r11,r9
	bb0.n	 gt,r13,@L331
	lda.d	 r3,r25[r12]
	or	 r11,r0,r9
@L331:
	mul	 r4,r11,r24
	or	 r2,r0,r21
	or	 r5,r0,r17
	addu	 r4,r10,r4
	lda.d	 r6,r19[r10]
	bsr.n	 _dlarfg_
	lda.d	 r4,r25[r4]
	ld	 r12,r23,lo16(_i__.2)
	ld	 r9,r31,172
	cmp	 r13,r12,r9
	bb1.n	 ge,r13,@L329
	subu	 r13,r9,r12
	or.u	 r10,r0,0x3ff0
	or	 r11,r0,0
	mul	 r8,r12,r24
	or	 r3,r0,r21
	addu	 r4,r31,160
	or	 r6,r0,r17
	addu	 r5,r12,r8
	lda.d	 r7,r19[r12]
	ld.d	 r14,r25[r5]
	or	 r9,r0,r17
	or.u	 r2,r0,hi16(@LC1)
	st.d	 r14,r16,lo16(_aii.4)
	or	 r2,r2,lo16(@LC1)
	st	 r13,r31,156
	addu	 r8,r8,1
	st.d	 r10,r25[r5]
	lda.d	 r5,r25[r5]
	ld	 r13,r0,r22
	addu	 r8,r12,r8
	ld	 r15,r31,284
	subu	 r13,r13,r12
	lda.d	 r8,r25[r8]
	addu	 r13,r13,1
	st	 r13,r31,160
	addu	 r13,r15,8
	st	 r13,r31,32
	or	 r13,r0,5
	bsr.n	 _dlarf_
	st	 r13,r31,36
	ld	 r13,r23,lo16(_i__.2)
	mul	 r12,r13,r24
	addu	 r13,r13,r12
	ld.d	 r14,r16,lo16(_aii.4)
	st.d	 r14,r25[r13]
@L329:
	ld	 r13,r23,lo16(_i__.2)
	ld	 r12,r31,152
	addu	 r13,r13,1
	cmp	 r12,r13,r12
	bb1.n	 le,r12,@L330
	st	 r13,r23,lo16(_i__.2)
@L316:
	or.u	 r13,r0,hi16(_iws.15)
@L373:
	ld	 r13,r13,lo16(_iws.15)
	ld	 r15,r31,244
	flt.ds	 r12,r13
	st.d	 r12,r15,8
@L263:
	or.u	 r13,r0,hi16(_tpsd.21)
	ld	 r13,r13,lo16(_tpsd.21)
	bcnd.n	 ne0,r13,@L334
	or.u	 r12,r0,hi16(_mn.29)
	or	 r6,r0,r20
	ld	 r14,r31,228
	or.u	 r2,r0,hi16(@LC53)
	ld	 r15,r31,196
	or.u	 r3,r0,hi16(@LC54)
	ld	 r7,r31,180
	or.u	 r4,r0,hi16(@LC55)
	or.u	 r5,r0,hi16(@LC56)
	st	 r17,r31,32
	lda.d	 r13,r15[r14]
	ld	 r14,r31,204
	or.u	 r8,r0,hi16(_c_b89)
	ld	 r15,r31,212
	or	 r2,r2,lo16(@LC53)
	or	 r3,r3,lo16(@LC54)
	st	 r14,r31,40
	or	 r4,r4,lo16(@LC55)
	ld	 r14,r31,188
	or	 r5,r5,lo16(@LC56)
	or	 r8,r8,lo16(_c_b89)
	st	 r13,r31,36
	or	 r13,r0,4
	st	 r13,r31,44
	or	 r13,r0,5
	st	 r13,r31,48
	or	 r13,r0,12
	st	 r13,r31,52
	or	 r13,r0,8
	lda.d	 r9,r14[r15]
	bsr.n	 _dtrsm_
	st	 r13,r31,56
	ld	 r15,r31,180
	ld	 r13,r0,r15
	or	 r12,r0,1
	or.u	 r11,r0,hi16(_j.23)
	st	 r13,r31,136
	cmp	 r13,r12,r13
	bb0.n	 le,r13,@L336
	st	 r12,r11,lo16(_j.23)
	or	 r8,r0,0
	or	 r9,r0,0
	or.u	 r10,r0,hi16(_i__.22)
	or	 r7,r0,r11
@L338:
	ld	 r13,r0,r20
	ld	 r2,r0,r18
	addu	 r13,r13,1
	cmp	 r12,r13,r2
	bb1.n	 gt,r12,@L337
	st	 r13,r10,lo16(_i__.22)
	ld	 r13,r7,lo16(_j.23)
	ld	 r14,r31,220
	mul	 r11,r13,r14
@L342:
	ld	 r13,r10,lo16(_i__.22)
	ld	 r15,r31,196
	addu	 r12,r13,1
	addu	 r13,r13,r11
	st	 r12,r10,lo16(_i__.22)
	cmp	 r12,r12,r2
	bb1.n	 le,r12,@L342
	st.d	 r8,r15[r13]
@L337:
	ld	 r13,r7,lo16(_j.23)
	ld	 r12,r31,136
	addu	 r13,r13,1
	cmp	 r12,r13,r12
	bb1.n	 le,r12,@L338
	st	 r13,r7,lo16(_j.23)
@L336:
	ld	 r5,r31,180
	ld	 r14,r31,324
	ld	 r15,r31,212
	ld	 r13,r0,r14
	or.u	 r12,r0,hi16(_mn.29)
	ld	 r14,r31,188
	ld	 r12,r12,lo16(_mn.29)
	lda.d	 r7,r14[r15]
	ld	 r15,r31,320
	or	 r4,r0,r18
	ld	 r14,r31,228
	addu	 r9,r15,8
	ld	 r15,r31,196
	or	 r6,r0,r20
	subu	 r13,r13,r12
	st	 r13,r31,136
	lda.d	 r13,r15[r14]
	ld	 r14,r31,204
	or	 r8,r0,r17
	ld	 r15,r31,328
	or.u	 r2,r0,hi16(@LC57)
	or.u	 r3,r0,hi16(@LC58)
	st	 r14,r31,36
	or	 r2,r2,lo16(@LC57)
	ld	 r14,r31,320
	or	 r3,r3,lo16(@LC58)
	mak	 r12,r12,0<3>
	st	 r13,r31,32
	addu	 r13,r31,136
	st	 r13,r31,44
	addu	 r12,r12,8
	st	 r15,r31,48
	or	 r13,r0,4
	st	 r13,r31,52
	or	 r13,r0,9
	st	 r13,r31,56
	addu	 r12,r14,r12
	bsr.n	 _dormlq_
	st	 r12,r31,40
	ld	 r12,r0,r18
	br.n	 @L367
	or.u	 r13,r0,hi16(_scllen.30)
	align	 4
@L334:
	ld	 r15,r31,324
	ld	 r14,r31,320
	ld	 r13,r0,r15
	ld	 r15,r31,228
	addu	 r9,r14,8
	ld	 r14,r31,196
	ld	 r12,r12,lo16(_mn.29)
	lda.d	 r23,r14[r15]
	ld	 r15,r31,204
	or	 r4,r0,r18
	ld	 r14,r31,212
	or	 r6,r0,r20
	subu	 r13,r13,r12
	st	 r13,r31,136
	or	 r8,r0,r17
	st	 r15,r31,36
	or.u	 r2,r0,hi16(@LC59)
	ld	 r15,r31,188
	or.u	 r3,r0,hi16(@LC60)
	ld	 r5,r31,180
	lda.d	 r24,r15[r14]
	ld	 r14,r31,328
	or	 r25,r0,4
	ld	 r15,r31,320
	or	 r2,r2,lo16(@LC59)
	or	 r3,r3,lo16(@LC60)
	st	 r23,r31,32
	addu	 r13,r31,136
	st	 r13,r31,44
	mak	 r12,r12,0<3>
	st	 r25,r31,52
	or	 r13,r0,12
	st	 r13,r31,56
	addu	 r12,r12,8
	st	 r14,r31,48
	or	 r7,r0,r24
	addu	 r12,r15,r12
	bsr.n	 _dormlq_
	st	 r12,r31,40
	or	 r6,r0,r20
	ld	 r7,r31,180
	or	 r9,r0,r24
	ld	 r14,r31,204
	or	 r13,r0,5
	or.u	 r2,r0,hi16(@LC61)
	st	 r13,r31,48
	or	 r13,r0,9
	or.u	 r3,r0,hi16(@LC62)
	st	 r17,r31,32
	or.u	 r4,r0,hi16(@LC63)
	st	 r23,r31,36
	or.u	 r5,r0,hi16(@LC64)
	st	 r14,r31,40
	or.u	 r8,r0,hi16(_c_b89)
	st	 r13,r31,52
	or	 r13,r0,8
	st	 r25,r31,44
	or	 r2,r2,lo16(@LC61)
	or	 r3,r3,lo16(@LC62)
	or	 r4,r4,lo16(@LC63)
	or	 r5,r5,lo16(@LC64)
	or	 r8,r8,lo16(_c_b89)
	bsr.n	 _dtrsm_
	st	 r13,r31,56
@L359:
	ld	 r12,r0,r20
	or.u	 r13,r0,hi16(_scllen.30)
@L367:
	st	 r12,r13,lo16(_scllen.30)
	or.u	 r13,r0,hi16(_iascl.24)
	ld	 r12,r13,lo16(_iascl.24)
	cmp	 r13,r12,1
	bb1.n	 ne,r13,@L346
	cmp	 r13,r12,2
	ld	 r15,r31,204
	ld	 r14,r31,328
	ld	 r8,r31,180
	or.u	 r2,r0,hi16(@LC65)
	st	 r15,r31,32
	or.u	 r5,r0,hi16(_anrm.18)
	ld	 r15,r31,228
	or.u	 r6,r0,hi16(_smlnum.32)
	or.u	 r3,r0,hi16(_c__0)
	st	 r14,r31,36
	or.u	 r7,r0,hi16(_scllen.30)
	ld	 r14,r31,196
	or	 r2,r2,lo16(@LC65)
	or	 r5,r5,lo16(_anrm.18)
	or	 r6,r6,lo16(_smlnum.32)
	or	 r3,r3,lo16(_c__0)
	or	 r7,r7,lo16(_scllen.30)
	lda.d	 r9,r14[r15]
	or	 r4,r0,r3
	br.n	 @L362
	st	 r12,r31,40
	align	 4
@L346:
	bb1.n	 ne,r13,@L375
	or.u	 r13,r0,hi16(_ibscl.25)
	ld	 r15,r31,204
	ld	 r14,r31,328
	ld	 r8,r31,180
	or.u	 r2,r0,hi16(@LC66)
	or.u	 r5,r0,hi16(_anrm.18)
	st	 r15,r31,32
	or.u	 r6,r0,hi16(_bignum.31)
	ld	 r15,r31,228
	or.u	 r3,r0,hi16(_c__0)
	or.u	 r7,r0,hi16(_scllen.30)
	st	 r14,r31,36
	or	 r13,r0,1
	ld	 r14,r31,196
	or	 r2,r2,lo16(@LC66)
	or	 r5,r5,lo16(_anrm.18)
	or	 r6,r6,lo16(_bignum.31)
	or	 r3,r3,lo16(_c__0)
	or	 r7,r7,lo16(_scllen.30)
	lda.d	 r9,r14[r15]
	or	 r4,r0,r3
	st	 r13,r31,40
@L362:
	bsr	 _dlascl_
	or.u	 r13,r0,hi16(_ibscl.25)
@L375:
	ld	 r12,r13,lo16(_ibscl.25)
	cmp	 r13,r12,1
	bb1.n	 ne,r13,@L349
	cmp	 r13,r12,2
	ld	 r15,r31,204
	ld	 r14,r31,328
	ld	 r8,r31,180
	or.u	 r2,r0,hi16(@LC67)
	st	 r15,r31,32
	or.u	 r5,r0,hi16(_smlnum.32)
	ld	 r15,r31,228
	or.u	 r6,r0,hi16(_bnrm.19)
	or.u	 r3,r0,hi16(_c__0)
	st	 r14,r31,36
	or.u	 r7,r0,hi16(_scllen.30)
	ld	 r14,r31,196
	or	 r2,r2,lo16(@LC67)
	or	 r5,r5,lo16(_smlnum.32)
	or	 r6,r6,lo16(_bnrm.19)
	or	 r3,r3,lo16(_c__0)
	or	 r7,r7,lo16(_scllen.30)
	lda.d	 r9,r14[r15]
	or	 r4,r0,r3
	br.n	 @L363
	st	 r12,r31,40
	align	 4
@L349:
	bb1.n	 ne,r13,@L376
	or.u	 r13,r0,hi16(_wsize.26)
	ld	 r15,r31,204
	ld	 r14,r31,328
	ld	 r8,r31,180
	or.u	 r2,r0,hi16(@LC68)
	or.u	 r5,r0,hi16(_bignum.31)
	st	 r15,r31,32
	or.u	 r6,r0,hi16(_bnrm.19)
	ld	 r15,r31,228
	or.u	 r3,r0,hi16(_c__0)
	or.u	 r7,r0,hi16(_scllen.30)
	st	 r14,r31,36
	or	 r13,r0,1
	ld	 r14,r31,196
	or	 r2,r2,lo16(@LC68)
	or	 r5,r5,lo16(_bignum.31)
	or	 r6,r6,lo16(_bnrm.19)
	or	 r3,r3,lo16(_c__0)
	or	 r7,r7,lo16(_scllen.30)
	lda.d	 r9,r14[r15]
	or	 r4,r0,r3
	st	 r13,r31,40
@L363:
	bsr	 _dlascl_
@L244:
	or.u	 r13,r0,hi16(_wsize.26)
@L376:
	ld	 r13,r13,lo16(_wsize.26)
	ld	 r15,r31,320
	or	 r2,r0,0
	flt.ds	 r12,r13
	st.d	 r12,r15,8
@L352:
@Lte2:
	ld	 r1,r31,128
	ld.d	 r24,r31,120
	ld.d	 r22,r31,112
	ld.d	 r20,r31,104
	ld.d	 r18,r31,96
	ld.d	 r16,r31,88
	ld.d	 r14,r31,80
	jmp.n	 r1
	addu	 r31,r31,288
	def	 @L386,@L316-@L387
	def	 @L384,@L296-@L385
	def	 @L382,@L263-@L383
	def	 @L380,@L359-@L381
	def	 @L378,@L244-@L379

