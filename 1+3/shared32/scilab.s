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

	bss	 _info.35,4,4
	bss	 _nota.36,4,4
	bss	 _notb.37,4,4
	bss	 _temp.38,8,8
	bss	 _i__.39,4,4
	bss	 _j.40,4,4
	bss	 _l.41,4,4
	bss	 _ncola.42,4,4
	bss	 _nrowa.43,4,4
	bss	 _nrowb.44,4,4
data
	align	 8
@LC70:
	string	 "N\000"
	align	 8
@LC71:
	string	 "N\000"
	align	 8
@LC72:
	string	 "C\000"
	align	 8
@LC73:
	string	 "T\000"
	align	 8
@LC74:
	string	 "C\000"
	align	 8
@LC75:
	string	 "T\000"
	align	 8
@LC76:
	string	 "DGEMM \000"
text
	align	 8
	global	 _dgemm_
_dgemm_:
	subu	 r31,r31,128
	st.d	 r24,r31,72
	ld	 r24,r31,172
	st.d	 r14,r31,32
	ld	 r14,r31,164
	st.d	 r22,r31,64
	or	 r22,r0,r2
	st.d	 r20,r31,56
	or	 r21,r0,r3
	st.d	 r18,r31,48
	or	 r19,r0,r4
	ld	 r15,r31,176
	or	 r23,r0,r5
	or	 r18,r0,r7
	st	 r1,r31,80
	or	 r4,r0,1
	st.d	 r16,r31,40
@Ltb3:
	or	 r5,r0,1
	st	 r6,r31,116
	or.u	 r3,r0,hi16(@LC70)
	ld	 r14,r0,r14
	or	 r20,r0,r9
	or.u	 r25,r0,hi16(_nota.36)
	st	 r14,r31,100
	ld	 r17,r0,r15
	or	 r3,r3,lo16(@LC70)
	ld	 r15,r31,160
	addu	 r12,r14,1
	ld	 r14,r0,r20
	addu	 r13,r17,1
	mak	 r12,r12,0<3>
	st	 r14,r31,92
	mak	 r13,r13,0<3>
	subu	 r15,r15,r12
	addu	 r12,r14,1
	subu	 r24,r24,r13
	mak	 r12,r12,0<3>
	st	 r15,r31,160
	bsr.n	 _lsame_
	subu	 r16,r8,r12
	st	 r2,r25,lo16(_nota.36)
	or	 r2,r0,r21
	or	 r4,r0,1
	or.u	 r3,r0,hi16(@LC71)
	or	 r5,r0,1
	bsr.n	 _lsame_
	or	 r3,r3,lo16(@LC71)
	ld	 r12,r25,lo16(_nota.36)
	or.u	 r13,r0,hi16(_notb.37)
	bcnd.n	 eq0,r12,@L540
	st	 r2,r13,lo16(_notb.37)
	ld	 r12,r0,r19
	ld	 r14,r31,116
	or.u	 r13,r0,hi16(_nrowa.43)
	st	 r12,r13,lo16(_nrowa.43)
	ld	 r12,r0,r14
	br.n	 @L708
	or.u	 r13,r0,hi16(_ncola.42)
	align	 4
@L540:
	ld	 r15,r31,116
	ld	 r12,r0,r15
	or.u	 r13,r0,hi16(_nrowa.43)
	st	 r12,r13,lo16(_nrowa.43)
	ld	 r12,r0,r19
	or.u	 r13,r0,hi16(_ncola.42)
@L708:
	st	 r12,r13,lo16(_ncola.42)
	or.u	 r13,r0,hi16(_notb.37)
	ld	 r13,r13,lo16(_notb.37)
	bcnd.n	 eq0,r13,@L542
	or.u	 r13,r0,hi16(_nrowb.44)
	ld	 r14,r31,116
	ld	 r12,r0,r14
	br	 @L709
	align	 4
@L542:
	ld	 r12,r0,r23
@L709:
	st	 r12,r13,lo16(_nrowb.44)
	or.u	 r13,r0,hi16(_nota.36)
	ld	 r13,r13,lo16(_nota.36)
	or.u	 r25,r0,hi16(_info.35)
	bcnd.n	 ne0,r13,@L544
	st	 r0,r25,lo16(_info.35)
	or	 r2,r0,r22
	or	 r4,r0,1
	or.u	 r3,r0,hi16(@LC72)
	or	 r5,r0,1
	bsr.n	 _lsame_
	or	 r3,r3,lo16(@LC72)
	bcnd.n	 ne0,r2,@L710
	or.u	 r13,r0,hi16(_notb.37)
	or	 r2,r0,r22
	or	 r4,r0,1
	or.u	 r3,r0,hi16(@LC73)
	or	 r5,r0,1
	bsr.n	 _lsame_
	or	 r3,r3,lo16(@LC73)
	bcnd.n	 ne0,r2,@L710
	or.u	 r13,r0,hi16(_notb.37)
	or	 r13,r0,1
	br.n	 @L545
	st	 r13,r25,lo16(_info.35)
	align	 4
@L544:
	or.u	 r13,r0,hi16(_notb.37)
@L710:
	ld	 r13,r13,lo16(_notb.37)
	bcnd.n	 ne0,r13,@L546
	or	 r2,r0,r21
	or	 r4,r0,1
	or.u	 r3,r0,hi16(@LC74)
	or	 r5,r0,1
	bsr.n	 _lsame_
	or	 r3,r3,lo16(@LC74)
	bcnd.n	 ne0,r2,@L546
	or	 r2,r0,r21
	or	 r4,r0,1
	or.u	 r3,r0,hi16(@LC75)
	or	 r5,r0,1
	bsr.n	 _lsame_
	or	 r3,r3,lo16(@LC75)
	bcnd.n	 ne0,r2,@L546
	or.u	 r12,r0,hi16(_info.35)
	br.n	 @L707
	or	 r13,r0,2
	align	 4
@L546:
	ld	 r13,r0,r19
	bcnd.n	 ge0,r13,@L548
	or.u	 r12,r0,hi16(_info.35)
	br.n	 @L707
	or	 r13,r0,3
	align	 4
@L548:
	ld	 r13,r0,r23
	bcnd.n	 lt0,r13,@L707
	or	 r13,r0,4
	ld	 r15,r31,116
	ld	 r13,r0,r15
	bcnd.n	 ge0,r13,@L552
	or.u	 r13,r0,hi16(_nrowa.43)
	or.u	 r12,r0,hi16(_info.35)
	br.n	 @L707
	or	 r13,r0,5
	align	 4
@L552:
	ld	 r12,r13,lo16(_nrowa.43)
	cmp	 r13,r12,1
	ld	 r9,r0,r20
	bb0.n	 gt,r13,@L555
	cmp	 r13,r9,r12
	bb0.n	 ge,r13,@L711
	or.u	 r12,r0,hi16(_info.35)
	br.n	 @L712
	or.u	 r13,r0,hi16(_nrowb.44)
	align	 4
@L555:
	bcnd.n	 gt0,r9,@L554
	or.u	 r13,r0,hi16(_nrowb.44)
	or.u	 r12,r0,hi16(_info.35)
@L711:
	br.n	 @L707
	or	 r13,r0,8
	align	 4
@L554:
@L712:
	ld	 r11,r13,lo16(_nrowb.44)
	ld	 r14,r31,164
	cmp	 r13,r11,1
	ld	 r12,r0,r14
	bb0.n	 gt,r13,@L559
	cmp	 r13,r12,r11
	bb0.n	 ge,r13,@L713
	or.u	 r12,r0,hi16(_info.35)
	br	 @L558
	align	 4
@L559:
	bcnd.n	 gt0,r12,@L558
	or.u	 r12,r0,hi16(_info.35)
@L713:
	br.n	 @L707
	or	 r13,r0,10
	align	 4
@L558:
	ld	 r11,r0,r19
	ld	 r15,r31,176
	cmp	 r13,r11,1
	ld	 r12,r0,r15
	bb0.n	 gt,r13,@L563
	cmp	 r13,r12,r11
	bb0.n	 ge,r13,@L714
	or.u	 r12,r0,hi16(_info.35)
	br.n	 @L715
	or.u	 r13,r0,hi16(_info.35)
	align	 4
@L563:
	bcnd.n	 gt0,r12,@L715
	or.u	 r13,r0,hi16(_info.35)
	or.u	 r12,r0,hi16(_info.35)
@L714:
	or	 r13,r0,13
@L707:
	st	 r13,r12,lo16(_info.35)
@L545:
	or.u	 r13,r0,hi16(_info.35)
@L715:
	ld	 r12,r13,lo16(_info.35)
	bcnd.n	 eq0,r12,@L565
	or	 r3,r13,lo16(_info.35)
	or.u	 r2,r0,hi16(@LC76)
	or	 r4,r0,6
	or	 r2,r2,lo16(@LC76)
	bsr.n	 _xerbla_
	addu	 r1,r1,@L719
@L720:
	align	 4
@L565:
	ld	 r13,r0,r19
	bcnd	 eq0,r13,@L641
	ld	 r13,r0,r23
	bcnd	 eq0,r13,@L641
	ld.d	 r12,r0,r18
	fcmp.sds r13,r12,r0
	bb0	 ne,r13,@L568
	ld	 r14,r31,116
	ld	 r13,r0,r14
	bcnd	 ne0,r13,@L566
@L568:
	ld	 r15,r31,168
	or.u	 r11,r0,0x3f80
	ld.d	 r12,r0,r15
	fcmp.sds r11,r12,r11
	bb0.n	 ne,r11,@L716
	or	 r2,r0,0
@L566:
	ld.d	 r12,r0,r18
	fcmp.sds r13,r12,r0
	bb1.n	 ne,r13,@L569
	or.u	 r13,r0,hi16(_notb.37)
	ld	 r14,r31,168
	ld.d	 r12,r0,r14
	fcmp.sds r13,r12,r0
	bb1.n	 ne,r13,@L570
	or	 r13,r0,1
	ld	 r20,r0,r23
	or.u	 r11,r0,hi16(_j.40)
	cmp	 r12,r13,r20
	bb0.n	 le,r12,@L641
	st	 r13,r11,lo16(_j.40)
	or	 r2,r0,0
	or	 r3,r0,0
	or.u	 r10,r0,hi16(_i__.39)
	or	 r8,r0,1
	or	 r9,r0,r11
@L574:
	ld	 r6,r0,r19
	cmp	 r13,r8,r6
	bb1.n	 gt,r13,@L573
	st	 r8,r10,lo16(_i__.39)
	ld	 r13,r9,lo16(_j.40)
	mul	 r11,r13,r17
@L578:
	ld	 r13,r10,lo16(_i__.39)
	addu	 r12,r13,1
	addu	 r13,r13,r11
	st	 r12,r10,lo16(_i__.39)
	cmp	 r12,r12,r6
	bb1.n	 le,r12,@L578
	st.d	 r2,r24[r13]
@L573:
	ld	 r13,r9,lo16(_j.40)
	addu	 r13,r13,1
	cmp	 r12,r13,r20
	bb1.n	 le,r12,@L574
	st	 r13,r9,lo16(_j.40)
	br.n	 @L716
	or	 r2,r0,0
	align	 4
@L570:
	ld	 r20,r0,r23
	or.u	 r11,r0,hi16(_j.40)
	cmp	 r12,r13,r20
	bb0.n	 le,r12,@L641
	st	 r13,r11,lo16(_j.40)
	or.u	 r4,r0,hi16(_i__.39)
	or	 r5,r0,1
	or	 r3,r0,r11
@L585:
	ld	 r6,r0,r19
	cmp	 r13,r5,r6
	bb1.n	 gt,r13,@L584
	st	 r5,r4,lo16(_i__.39)
	ld	 r13,r3,lo16(_j.40)
	mul	 r7,r13,r17
@L589:
	ld	 r11,r4,lo16(_i__.39)
	ld	 r15,r31,168
	addu	 r10,r11,r7
	ld.d	 r12,r0,r15
	ld.d	 r8,r24[r10]
	addu	 r11,r11,1
	st	 r11,r4,lo16(_i__.39)
	cmp	 r11,r11,r6
	fmul.ddd r12,r12,r8
	bb1.n	 le,r11,@L589
	st.d	 r12,r24[r10]
@L584:
	ld	 r13,r3,lo16(_j.40)
	addu	 r13,r13,1
	cmp	 r12,r13,r20
	bb1.n	 le,r12,@L585
	st	 r13,r3,lo16(_j.40)
	br.n	 @L716
	or	 r2,r0,0
	align	 4
@L569:
	ld	 r13,r13,lo16(_notb.37)
	bcnd.n	 eq0,r13,@L592
	or.u	 r13,r0,hi16(_nota.36)
	ld	 r13,r13,lo16(_nota.36)
	bcnd	 eq0,r13,@L593
	ld	 r20,r0,r23
	or	 r13,r0,1
	or.u	 r11,r0,hi16(_j.40)
	cmp	 r12,r13,r20
	bb0.n	 le,r12,@L641
	st	 r13,r11,lo16(_j.40)
	or.u	 r1,r0,hi16(_i__.39)
	or	 r25,r0,1
	or	 r21,r0,r11
	or.u	 r22,r0,hi16(_l.41)
@L597:
	ld	 r14,r31,168
	ld.d	 r10,r0,r14
	fcmp.sds r13,r10,r0
	bb1	 ne,r13,@L598
	ld	 r6,r0,r19
	cmp	 r13,r25,r6
	bb0.n	 le,r13,@L604
	st	 r25,r1,lo16(_i__.39)
	ld	 r13,r21,lo16(_j.40)
	mul	 r11,r13,r17
	or	 r14,r0,0
	or	 r15,r0,0
@L717:
	ld	 r13,r1,lo16(_i__.39)
	addu	 r12,r13,1
	addu	 r13,r13,r11
	st	 r12,r1,lo16(_i__.39)
	cmp	 r12,r12,r6
	bb1.n	 le,r12,@L717
	st.d	 r14,r24[r13]
	br	 @L604
	align	 4
@L598:
	or.u	 r13,r0,0x3f80
	fcmp.sds r13,r10,r13
	bb0	 ne,r13,@L604
	ld	 r6,r0,r19
	cmp	 r13,r25,r6
	bb0.n	 le,r13,@L604
	st	 r25,r1,lo16(_i__.39)
	ld	 r13,r21,lo16(_j.40)
	mul	 r7,r13,r17
@L609:
	ld	 r11,r1,lo16(_i__.39)
	ld	 r15,r31,168
	addu	 r10,r11,r7
	ld.d	 r12,r0,r15
	ld.d	 r8,r24[r10]
	addu	 r11,r11,1
	st	 r11,r1,lo16(_i__.39)
	cmp	 r11,r11,r6
	fmul.ddd r12,r12,r8
	bb1.n	 le,r11,@L609
	st.d	 r12,r24[r10]
@L604:
	ld	 r14,r31,116
	ld	 r6,r0,r14
	cmp	 r13,r25,r6
	bb1.n	 gt,r13,@L596
	st	 r25,r22,lo16(_l.41)
	ld	 r13,r21,lo16(_j.40)
	ld	 r15,r31,100
	mul	 r23,r13,r15
	mul	 r5,r13,r17
@L614:
	ld	 r9,r22,lo16(_l.41)
	ld	 r14,r31,160
	addu	 r13,r9,r23
	ld.d	 r10,r14[r13]
	fcmp.sds r13,r10,r0
	bb1	 eq,r13,@L613
	ld.d	 r12,r0,r18
	or.u	 r15,r0,hi16(_temp.38)
	fmul.ddd r10,r12,r10
	st.d	 r10,r15,lo16(_temp.38)
	ld	 r7,r0,r19
	cmp	 r13,r25,r7
	bb1.n	 gt,r13,@L613
	st	 r25,r1,lo16(_i__.39)
	ld	 r14,r31,92
	or	 r2,r0,r10
	or	 r3,r0,r11
	mul	 r4,r9,r14
@L619:
	ld	 r9,r1,lo16(_i__.39)
	addu	 r13,r9,r4
	addu	 r8,r9,r5
	ld.d	 r10,r16[r13]
	ld.d	 r12,r24[r8]
	fmul.ddd r10,r2,r10
	addu	 r9,r9,1
	st	 r9,r1,lo16(_i__.39)
	cmp	 r9,r9,r7
	fadd.ddd r12,r12,r10
	bb1.n	 le,r9,@L619
	st.d	 r12,r24[r8]
@L613:
	ld	 r13,r22,lo16(_l.41)
	addu	 r13,r13,1
	cmp	 r12,r13,r6
	bb1.n	 le,r12,@L614
	st	 r13,r22,lo16(_l.41)
@L596:
	ld	 r13,r21,lo16(_j.40)
	addu	 r13,r13,1
	cmp	 r12,r13,r20
	bb1.n	 le,r12,@L597
	st	 r13,r21,lo16(_j.40)
	br.n	 @L716
	or	 r2,r0,0
	align	 4
@L593:
	ld	 r20,r0,r23
	or	 r13,r0,1
	or.u	 r11,r0,hi16(_j.40)
	cmp	 r12,r13,r20
	bb0.n	 le,r12,@L641
	st	 r13,r11,lo16(_j.40)
	or.u	 r25,r0,hi16(_i__.39)
	or	 r21,r0,1
	or.u	 r1,r0,hi16(_temp.38)
	or.u	 r23,r0,hi16(_l.41)
@L627:
	ld	 r6,r0,r19
	cmp	 r13,r21,r6
	bb1.n	 gt,r13,@L626
	st	 r21,r25,lo16(_i__.39)
	or.u	 r15,r0,hi16(_j.40)
	ld	 r22,r15,lo16(_j.40)
	mul	 r5,r22,r17
@L631:
	ld	 r14,r31,116
	or	 r12,r0,0
	or	 r13,r0,0
	st.d	 r12,r1,lo16(_temp.38)
	ld	 r7,r0,r14
	cmp	 r13,r21,r7
	bb0.n	 le,r13,@L633
	st	 r21,r23,lo16(_l.41)
	ld	 r13,r25,lo16(_i__.39)
	ld	 r15,r31,100
	ld	 r14,r31,92
	mul	 r4,r22,r15
	mul	 r8,r13,r14
@L635:
	ld	 r9,r23,lo16(_l.41)
	ld	 r15,r31,160
	addu	 r13,r9,r8
	addu	 r12,r9,r4
	ld.d	 r10,r16[r13]
	ld.d	 r12,r15[r12]
	fmul.ddd r10,r10,r12
	ld.d	 r12,r1,lo16(_temp.38)
	addu	 r9,r9,1
	st	 r9,r23,lo16(_l.41)
	cmp	 r9,r9,r7
	fadd.ddd r12,r12,r10
	bb1.n	 le,r9,@L635
	st.d	 r12,r1,lo16(_temp.38)
@L633:
	ld	 r14,r31,168
	ld.d	 r2,r0,r14
	fcmp.sds r13,r2,r0
	bb1	 ne,r13,@L637
	ld.d	 r10,r0,r18
	ld	 r13,r25,lo16(_i__.39)
	ld.d	 r8,r1,lo16(_temp.38)
	addu	 r13,r13,r5
	fmul.ddd r10,r10,r8
	br.n	 @L630
	st.d	 r10,r24[r13]
	align	 4
@L637:
	ld	 r7,r25,lo16(_i__.39)
	ld.d	 r10,r0,r18
	ld.d	 r8,r1,lo16(_temp.38)
	addu	 r7,r7,r5
	ld.d	 r12,r24[r7]
	fmul.ddd r10,r10,r8
	fmul.ddd r12,r2,r12
	fadd.ddd r10,r10,r12
	st.d	 r10,r24[r7]
@L630:
	ld	 r13,r25,lo16(_i__.39)
	addu	 r13,r13,1
	cmp	 r12,r13,r6
	bb1.n	 le,r12,@L631
	st	 r13,r25,lo16(_i__.39)
@L626:
	or.u	 r15,r0,hi16(_j.40)
	ld	 r13,r15,lo16(_j.40)
	addu	 r13,r13,1
	cmp	 r12,r13,r20
	bb1.n	 le,r12,@L627
	st	 r13,r15,lo16(_j.40)
	br.n	 @L716
	or	 r2,r0,0
	align	 4
@L592:
	ld	 r13,r13,lo16(_nota.36)
	bcnd	 eq0,r13,@L642
	ld	 r20,r0,r23
	or	 r13,r0,1
	or.u	 r11,r0,hi16(_j.40)
	cmp	 r12,r13,r20
	bb0.n	 le,r12,@L641
	st	 r13,r11,lo16(_j.40)
	or.u	 r1,r0,hi16(_i__.39)
	or	 r25,r0,1
	or	 r21,r0,r11
	or.u	 r22,r0,hi16(_l.41)
@L646:
	ld	 r14,r31,168
	ld.d	 r10,r0,r14
	fcmp.sds r13,r10,r0
	bb1	 ne,r13,@L647
	ld	 r6,r0,r19
	cmp	 r13,r25,r6
	bb0.n	 le,r13,@L653
	st	 r25,r1,lo16(_i__.39)
	ld	 r13,r21,lo16(_j.40)
	mul	 r11,r13,r17
	or	 r14,r0,0
	or	 r15,r0,0
@L718:
	ld	 r13,r1,lo16(_i__.39)
	addu	 r12,r13,1
	addu	 r13,r13,r11
	st	 r12,r1,lo16(_i__.39)
	cmp	 r12,r12,r6
	bb1.n	 le,r12,@L718
	st.d	 r14,r24[r13]
	br	 @L653
	align	 4
@L647:
	or.u	 r13,r0,0x3f80
	fcmp.sds r13,r10,r13
	bb0	 ne,r13,@L653
	ld	 r6,r0,r19
	cmp	 r13,r25,r6
	bb0.n	 le,r13,@L653
	st	 r25,r1,lo16(_i__.39)
	ld	 r13,r21,lo16(_j.40)
	mul	 r7,r13,r17
@L658:
	ld	 r11,r1,lo16(_i__.39)
	ld	 r15,r31,168
	addu	 r10,r11,r7
	ld.d	 r12,r0,r15
	ld.d	 r8,r24[r10]
	addu	 r11,r11,1
	st	 r11,r1,lo16(_i__.39)
	cmp	 r11,r11,r6
	fmul.ddd r12,r12,r8
	bb1.n	 le,r11,@L658
	st.d	 r12,r24[r10]
@L653:
	ld	 r14,r31,116
	ld	 r6,r0,r14
	cmp	 r13,r25,r6
	bb1.n	 gt,r13,@L645
	st	 r25,r22,lo16(_l.41)
	ld	 r5,r21,lo16(_j.40)
	mul	 r23,r5,r17
@L663:
	ld	 r9,r22,lo16(_l.41)
	ld	 r15,r31,100
	mul	 r13,r9,r15
	ld	 r14,r31,160
	addu	 r13,r5,r13
	ld.d	 r10,r14[r13]
	fcmp.sds r13,r10,r0
	bb1	 eq,r13,@L662
	ld.d	 r12,r0,r18
	or.u	 r15,r0,hi16(_temp.38)
	fmul.ddd r10,r12,r10
	st.d	 r10,r15,lo16(_temp.38)
	ld	 r7,r0,r19
	cmp	 r13,r25,r7
	bb1.n	 gt,r13,@L662
	st	 r25,r1,lo16(_i__.39)
	ld	 r14,r31,92
	or	 r2,r0,r10
	or	 r3,r0,r11
	mul	 r4,r9,r14
@L668:
	ld	 r9,r1,lo16(_i__.39)
	addu	 r13,r9,r4
	addu	 r8,r9,r23
	ld.d	 r10,r16[r13]
	ld.d	 r12,r24[r8]
	fmul.ddd r10,r2,r10
	addu	 r9,r9,1
	st	 r9,r1,lo16(_i__.39)
	cmp	 r9,r9,r7
	fadd.ddd r12,r12,r10
	bb1.n	 le,r9,@L668
	st.d	 r12,r24[r8]
@L662:
	ld	 r13,r22,lo16(_l.41)
	addu	 r13,r13,1
	cmp	 r12,r13,r6
	bb1.n	 le,r12,@L663
	st	 r13,r22,lo16(_l.41)
@L645:
	ld	 r13,r21,lo16(_j.40)
	addu	 r13,r13,1
	cmp	 r12,r13,r20
	bb1.n	 le,r12,@L646
	st	 r13,r21,lo16(_j.40)
	br.n	 @L716
	or	 r2,r0,0
	align	 4
@L642:
	ld	 r20,r0,r23
	or	 r13,r0,1
	or.u	 r11,r0,hi16(_j.40)
	cmp	 r12,r13,r20
	bb0.n	 le,r12,@L641
	st	 r13,r11,lo16(_j.40)
	or.u	 r1,r0,hi16(_i__.39)
	or	 r22,r0,1
	or.u	 r4,r0,hi16(_temp.38)
	or.u	 r23,r0,hi16(_l.41)
	or	 r21,r0,r11
@L676:
	ld	 r6,r0,r19
	cmp	 r13,r22,r6
	bb1.n	 gt,r13,@L675
	st	 r22,r1,lo16(_i__.39)
	ld	 r5,r21,lo16(_j.40)
	mul	 r25,r5,r17
@L680:
	ld	 r15,r31,116
	or	 r12,r0,0
	or	 r13,r0,0
	st.d	 r12,r4,lo16(_temp.38)
	ld	 r7,r0,r15
	cmp	 r13,r22,r7
	bb0.n	 le,r13,@L682
	st	 r22,r23,lo16(_l.41)
	ld	 r13,r1,lo16(_i__.39)
	ld	 r14,r31,92
	mul	 r8,r13,r14
@L684:
	ld	 r9,r23,lo16(_l.41)
	ld	 r15,r31,100
	mul	 r13,r9,r15
	ld	 r14,r31,160
	addu	 r12,r9,r8
	ld.d	 r10,r16[r12]
	addu	 r13,r5,r13
	ld.d	 r12,r14[r13]
	fmul.ddd r10,r10,r12
	ld.d	 r12,r4,lo16(_temp.38)
	addu	 r9,r9,1
	st	 r9,r23,lo16(_l.41)
	cmp	 r9,r9,r7
	fadd.ddd r12,r12,r10
	bb1.n	 le,r9,@L684
	st.d	 r12,r4,lo16(_temp.38)
@L682:
	ld	 r15,r31,168
	ld.d	 r2,r0,r15
	fcmp.sds r13,r2,r0
	bb1	 ne,r13,@L686
	ld.d	 r10,r0,r18
	ld	 r13,r1,lo16(_i__.39)
	ld.d	 r8,r4,lo16(_temp.38)
	addu	 r13,r13,r25
	fmul.ddd r10,r10,r8
	br.n	 @L679
	st.d	 r10,r24[r13]
	align	 4
@L686:
	ld	 r7,r1,lo16(_i__.39)
	ld.d	 r10,r0,r18
	ld.d	 r8,r4,lo16(_temp.38)
	addu	 r7,r7,r25
	ld.d	 r12,r24[r7]
	fmul.ddd r10,r10,r8
	fmul.ddd r12,r2,r12
	fadd.ddd r10,r10,r12
	st.d	 r10,r24[r7]
@L679:
	ld	 r13,r1,lo16(_i__.39)
	addu	 r13,r13,1
	cmp	 r12,r13,r6
	bb1.n	 le,r12,@L680
	st	 r13,r1,lo16(_i__.39)
@L675:
	ld	 r13,r21,lo16(_j.40)
	addu	 r13,r13,1
	cmp	 r12,r13,r20
	bb1.n	 le,r12,@L676
	st	 r13,r21,lo16(_j.40)
@L641:
	or	 r2,r0,0
@L716:
@Lte3:
	ld	 r1,r31,80
	ld.d	 r24,r31,72
	ld.d	 r22,r31,64
	ld.d	 r20,r31,56
	ld.d	 r18,r31,48
	ld.d	 r16,r31,40
	ld.d	 r14,r31,32
	jmp.n	 r1
	addu	 r31,r31,128
	def	 @L719,@L641-@L720

	bss	 _info.47,4,4
	bss	 _temp.48,8,8
	bss	 _lenx.49,4,4
	bss	 _leny.50,4,4
	bss	 _i__.51,4,4
	bss	 _j.52,4,4
	bss	 _ix.53,4,4
	bss	 _iy.54,4,4
	bss	 _jx.55,4,4
	bss	 _jy.56,4,4
	bss	 _kx.57,4,4
	bss	 _ky.58,4,4
data
	align	 8
@LC77:
	string	 "N\000"
	align	 8
@LC78:
	string	 "T\000"
	align	 8
@LC79:
	string	 "C\000"
	align	 8
@LC80:
	string	 "DGEMV \000"
	align	 8
@LC81:
	string	 "N\000"
	align	 8
@LC82:
	string	 "N\000"
text
	align	 8
	global	 _dgemv_
_dgemv_:
	subu	 r31,r31,112
	st.d	 r24,r31,72
	ld	 r25,r31,148
	st.d	 r22,r31,64
	ld	 r22,r31,144
	st.d	 r18,r31,48
	or	 r19,r0,r3
	or	 r24,r0,r4
	st.d	 r14,r31,32
	or	 r15,r0,r5
	st.d	 r16,r31,40
	or	 r23,r0,r7
	ld	 r17,r31,152
	or	 r4,r0,1
	or	 r5,r0,1
	st	 r1,r31,80
	or.u	 r16,r0,hi16(_info.47)
	st.d	 r20,r31,56
@Ltb4:
	or.u	 r3,r0,hi16(@LC77)
	st	 r2,r31,100
	or	 r18,r0,r9
	ld	 r14,r0,r23
	subu	 r20,r8,8
	ld	 r2,r31,100
	or	 r3,r3,lo16(@LC77)
	addu	 r13,r14,1
	st	 r0,r16,lo16(_info.47)
	mak	 r13,r13,0<3>
	subu	 r25,r25,8
	bsr.n	 _lsame_
	subu	 r21,r6,r13
	bcnd.n	 ne0,r2,@L821
	or	 r4,r0,1
	ld	 r2,r31,100
	or.u	 r3,r0,hi16(@LC78)
	or	 r5,r0,1
	bsr.n	 _lsame_
	or	 r3,r3,lo16(@LC78)
	bcnd.n	 ne0,r2,@L821
	or	 r4,r0,1
	ld	 r2,r31,100
	or.u	 r3,r0,hi16(@LC79)
	or	 r5,r0,1
	bsr.n	 _lsame_
	or	 r3,r3,lo16(@LC79)
	bcnd.n	 ne0,r2,@L821
	or	 r13,r0,1
	br.n	 @L822
	st	 r13,r16,lo16(_info.47)
	align	 4
@L821:
	ld	 r12,r0,r19
	bcnd	 ge0,r12,@L823
	or.u	 r12,r0,hi16(_info.47)
	br.n	 @L930
	or	 r13,r0,2
	align	 4
@L823:
	ld	 r13,r0,r24
	bcnd.n	 ge0,r13,@L825
	cmp	 r13,r12,1
	or.u	 r12,r0,hi16(_info.47)
	br.n	 @L930
	or	 r13,r0,3
	align	 4
@L825:
	ld	 r7,r0,r23
	bb0.n	 gt,r13,@L828
	cmp	 r13,r7,r12
	bb0.n	 ge,r13,@L932
	or.u	 r12,r0,hi16(_info.47)
	br	 @L827
	align	 4
@L828:
	bcnd.n	 gt0,r7,@L827
	or.u	 r12,r0,hi16(_info.47)
@L932:
	br.n	 @L930
	or	 r13,r0,6
	align	 4
@L827:
	ld	 r13,r0,r18
	bcnd.n	 ne0,r13,@L831
	or.u	 r12,r0,hi16(_info.47)
	br.n	 @L930
	or	 r13,r0,8
	align	 4
@L831:
	ld	 r13,r0,r17
	bcnd.n	 ne0,r13,@L933
	or.u	 r13,r0,hi16(_info.47)
	or.u	 r12,r0,hi16(_info.47)
	or	 r13,r0,11
@L930:
	st	 r13,r12,lo16(_info.47)
@L822:
	or.u	 r13,r0,hi16(_info.47)
@L933:
	ld	 r12,r13,lo16(_info.47)
	bcnd.n	 eq0,r12,@L834
	or	 r3,r13,lo16(_info.47)
	or.u	 r2,r0,hi16(@LC80)
	or	 r4,r0,6
	or	 r2,r2,lo16(@LC80)
	bsr.n	 _xerbla_
	addu	 r1,r1,@L936
@L937:
	align	 4
@L834:
	ld	 r13,r0,r19
	bcnd	 eq0,r13,@L896
	ld	 r13,r0,r24
	bcnd	 eq0,r13,@L896
	ld.d	 r12,r0,r15
	fcmp.sds r13,r12,r0
	bb1	 ne,r13,@L835
	ld.d	 r12,r0,r22
	or.u	 r11,r0,0x3f80
	fcmp.sds r11,r12,r11
	bb0.n	 ne,r11,@L934
	or	 r2,r0,0
@L835:
	ld	 r2,r31,100
	or	 r4,r0,1
	or.u	 r3,r0,hi16(@LC81)
	or	 r5,r0,1
	bsr.n	 _lsame_
	or	 r3,r3,lo16(@LC81)
	bcnd	 eq0,r2,@L837
	ld	 r12,r0,r24
	or.u	 r13,r0,hi16(_lenx.49)
	st	 r12,r13,lo16(_lenx.49)
	ld	 r12,r0,r19
	br.n	 @L935
	or.u	 r13,r0,hi16(_leny.50)
	align	 4
@L837:
	ld	 r12,r0,r19
	or.u	 r13,r0,hi16(_lenx.49)
	st	 r12,r13,lo16(_lenx.49)
	ld	 r12,r0,r24
	or.u	 r13,r0,hi16(_leny.50)
@L935:
	st	 r12,r13,lo16(_leny.50)
	ld	 r11,r0,r18
	bcnd.n	 le0,r11,@L839
	or.u	 r12,r0,hi16(_kx.57)
	or	 r13,r0,1
	br.n	 @L840
	st	 r13,r12,lo16(_kx.57)
	align	 4
@L839:
	or.u	 r13,r0,hi16(_lenx.49)
	ld	 r12,r13,lo16(_lenx.49)
	subu	 r12,r12,1
	mul	 r12,r12,r11
	or	 r13,r0,1
	or.u	 r11,r0,hi16(_kx.57)
	subu	 r13,r13,r12
	st	 r13,r11,lo16(_kx.57)
@L840:
	ld	 r11,r0,r17
	bcnd.n	 le0,r11,@L841
	or.u	 r12,r0,hi16(_ky.58)
	or	 r13,r0,1
	br.n	 @L842
	st	 r13,r12,lo16(_ky.58)
	align	 4
@L841:
	or.u	 r13,r0,hi16(_leny.50)
	ld	 r12,r13,lo16(_leny.50)
	subu	 r12,r12,1
	mul	 r12,r12,r11
	or	 r13,r0,1
	or.u	 r11,r0,hi16(_ky.58)
	subu	 r13,r13,r12
	st	 r13,r11,lo16(_ky.58)
@L842:
	or.u	 r13,r0,0x3f80
	ld.d	 r10,r0,r22
	fcmp.sds r13,r10,r13
	bb0	 ne,r13,@L843
	ld	 r12,r0,r17
	cmp	 r13,r12,1
	bb1.n	 ne,r13,@L844
	or.u	 r13,r0,hi16(_ky.58)
	fcmp.sds r13,r10,r0
	bb1.n	 ne,r13,@L845
	or.u	 r13,r0,hi16(_leny.50)
	ld	 r3,r13,lo16(_leny.50)
	or.u	 r11,r0,hi16(_i__.51)
	cmp	 r13,r12,r3
	bb0.n	 le,r13,@L843
	st	 r12,r11,lo16(_i__.51)
	or	 r8,r0,0
	or	 r9,r0,0
@L849:
	ld	 r13,r11,lo16(_i__.51)
	addu	 r12,r13,1
	st.d	 r8,r25[r13]
	cmp	 r13,r12,r3
	bb1.n	 le,r13,@L849
	st	 r12,r11,lo16(_i__.51)
	br	 @L843
	align	 4
@L845:
	ld	 r3,r13,lo16(_leny.50)
	or.u	 r11,r0,hi16(_i__.51)
	cmp	 r13,r12,r3
	bb0.n	 le,r13,@L843
	st	 r12,r11,lo16(_i__.51)
	or	 r7,r0,r11
@L855:
	ld	 r10,r7,lo16(_i__.51)
	ld.d	 r12,r0,r22
	ld.d	 r8,r25[r10]
	addu	 r11,r10,1
	st	 r11,r7,lo16(_i__.51)
	cmp	 r11,r11,r3
	fmul.ddd r12,r12,r8
	bb1.n	 le,r11,@L855
	st.d	 r12,r25[r10]
	br	 @L843
	align	 4
@L844:
	ld	 r13,r13,lo16(_ky.58)
	or.u	 r10,r0,hi16(_iy.54)
	st	 r13,r10,lo16(_iy.54)
	ld.d	 r12,r0,r22
	fcmp.sds r13,r12,r0
	bb1.n	 ne,r13,@L858
	or.u	 r13,r0,hi16(_leny.50)
	ld	 r3,r13,lo16(_leny.50)
	or	 r13,r0,1
	or.u	 r11,r0,hi16(_i__.51)
	cmp	 r12,r13,r3
	bb0.n	 le,r12,@L843
	st	 r13,r11,lo16(_i__.51)
	or	 r6,r0,0
	or	 r7,r0,0
	or	 r9,r0,r10
	or	 r10,r0,r11
@L862:
	ld	 r13,r9,lo16(_iy.54)
	ld	 r12,r10,lo16(_i__.51)
	st.d	 r6,r25[r13]
	ld	 r11,r0,r17
	addu	 r12,r12,1
	st	 r12,r10,lo16(_i__.51)
	cmp	 r12,r12,r3
	addu	 r13,r13,r11
	bb1.n	 le,r12,@L862
	st	 r13,r9,lo16(_iy.54)
	br	 @L843
	align	 4
@L858:
	ld	 r3,r13,lo16(_leny.50)
	or	 r13,r0,1
	or.u	 r11,r0,hi16(_i__.51)
	cmp	 r12,r13,r3
	bb0.n	 le,r12,@L843
	st	 r13,r11,lo16(_i__.51)
	or	 r7,r0,r10
	or	 r8,r0,r11
@L868:
	ld	 r9,r7,lo16(_iy.54)
	ld.d	 r12,r0,r22
	ld.d	 r10,r25[r9]
	fmul.ddd r12,r12,r10
	st.d	 r12,r25[r9]
	ld	 r13,r8,lo16(_i__.51)
	ld	 r12,r0,r17
	addu	 r13,r13,1
	addu	 r9,r9,r12
	st	 r13,r8,lo16(_i__.51)
	cmp	 r13,r13,r3
	bb1.n	 le,r13,@L868
	st	 r9,r7,lo16(_iy.54)
@L843:
	ld.d	 r12,r0,r15
	fcmp.sds r13,r12,r0
	bb0.n	 ne,r13,@L896
	or	 r4,r0,1
	ld	 r2,r31,100
	or.u	 r3,r0,hi16(@LC82)
	or	 r5,r0,1
	bsr.n	 _lsame_
	or	 r3,r3,lo16(@LC82)
	bcnd.n	 eq0,r2,@L871
	or.u	 r13,r0,hi16(_kx.57)
	ld	 r13,r13,lo16(_kx.57)
	or.u	 r11,r0,hi16(_jx.55)
	st	 r13,r11,lo16(_jx.55)
	ld	 r12,r0,r17
	cmp	 r13,r12,1
	bb1.n	 ne,r13,@L872
	or	 r13,r0,1
	ld	 r3,r0,r24
	or.u	 r10,r0,hi16(_j.52)
	cmp	 r13,r12,r3
	bb0.n	 le,r13,@L896
	st	 r12,r10,lo16(_j.52)
	or	 r24,r0,r11
	or.u	 r22,r0,hi16(_temp.48)
	or.u	 r2,r0,hi16(_i__.51)
	or	 r23,r0,1
	or	 r1,r0,r10
@L876:
	ld	 r13,r24,lo16(_jx.55)
	ld.d	 r10,r20[r13]
	fcmp.sds r13,r10,r0
	bb0	 ne,r13,@L877
	ld.d	 r12,r0,r15
	fmul.ddd r10,r12,r10
	st.d	 r10,r22,lo16(_temp.48)
	ld	 r5,r0,r19
	cmp	 r13,r23,r5
	bb0.n	 le,r13,@L877
	st	 r23,r2,lo16(_i__.51)
	ld	 r13,r1,lo16(_j.52)
	or	 r6,r0,r10
	or	 r7,r0,r11
	mul	 r4,r13,r14
@L881:
	ld	 r8,r2,lo16(_i__.51)
	addu	 r13,r8,r4
	ld.d	 r12,r21[r13]
	ld.d	 r10,r25[r8]
	fmul.ddd r12,r6,r12
	addu	 r9,r8,1
	st	 r9,r2,lo16(_i__.51)
	cmp	 r9,r9,r5
	fadd.ddd r10,r10,r12
	bb1.n	 le,r9,@L881
	st.d	 r10,r25[r8]
@L877:
	ld	 r12,r24,lo16(_jx.55)
	ld	 r11,r0,r18
	ld	 r13,r1,lo16(_j.52)
	addu	 r12,r12,r11
	addu	 r13,r13,1
	st	 r12,r24,lo16(_jx.55)
	cmp	 r12,r13,r3
	bb1.n	 le,r12,@L876
	st	 r13,r1,lo16(_j.52)
	br.n	 @L934
	or	 r2,r0,0
	align	 4
@L872:
	ld	 r3,r0,r24
	or.u	 r10,r0,hi16(_j.52)
	cmp	 r12,r13,r3
	bb0.n	 le,r12,@L896
	st	 r13,r10,lo16(_j.52)
	or	 r23,r0,r11
	or.u	 r1,r0,hi16(_iy.54)
	or.u	 r2,r0,hi16(_i__.51)
	or	 r22,r0,1
	or.u	 r13,r0,hi16(_ky.58)
	or	 r24,r0,r10
	ld	 r13,r13,lo16(_ky.58)
	st	 r13,r31,100
@L888:
	ld	 r13,r23,lo16(_jx.55)
	ld.d	 r10,r20[r13]
	fcmp.sds r13,r10,r0
	bb0	 ne,r13,@L889
	ld.d	 r12,r0,r15
	ld	 r16,r31,100
	st	 r16,r1,lo16(_iy.54)
	or.u	 r16,r0,hi16(_temp.48)
	fmul.ddd r10,r12,r10
	st.d	 r10,r16,lo16(_temp.48)
	ld	 r5,r0,r19
	cmp	 r13,r22,r5
	bb0.n	 le,r13,@L889
	st	 r22,r2,lo16(_i__.51)
	ld	 r13,r24,lo16(_j.52)
	or	 r6,r0,r10
	or	 r7,r0,r11
	mul	 r4,r13,r14
@L893:
	ld	 r8,r2,lo16(_i__.51)
	addu	 r13,r8,r4
	ld.d	 r10,r21[r13]
	ld	 r9,r1,lo16(_iy.54)
	fmul.ddd r10,r6,r10
	ld.d	 r12,r25[r9]
	fadd.ddd r12,r12,r10
	st.d	 r12,r25[r9]
	ld	 r13,r0,r17
	addu	 r8,r8,1
	st	 r8,r2,lo16(_i__.51)
	cmp	 r8,r8,r5
	addu	 r9,r9,r13
	bb1.n	 le,r8,@L893
	st	 r9,r1,lo16(_iy.54)
@L889:
	ld	 r12,r23,lo16(_jx.55)
	ld	 r11,r0,r18
	ld	 r13,r24,lo16(_j.52)
	addu	 r12,r12,r11
	addu	 r13,r13,1
	st	 r12,r23,lo16(_jx.55)
	cmp	 r12,r13,r3
	bb1.n	 le,r12,@L888
	st	 r13,r24,lo16(_j.52)
	br.n	 @L934
	or	 r2,r0,0
	align	 4
@L871:
	or.u	 r13,r0,hi16(_ky.58)
	ld	 r13,r13,lo16(_ky.58)
	or.u	 r10,r0,hi16(_jy.56)
	st	 r13,r10,lo16(_jy.56)
	ld	 r12,r0,r18
	cmp	 r13,r12,1
	bb1.n	 ne,r13,@L897
	or	 r13,r0,1
	ld	 r3,r0,r24
	or.u	 r11,r0,hi16(_j.52)
	cmp	 r13,r12,r3
	bb0.n	 le,r13,@L896
	st	 r12,r11,lo16(_j.52)
	or	 r22,r0,0
	or	 r23,r0,0
	or.u	 r7,r0,hi16(_temp.48)
	or.u	 r6,r0,hi16(_i__.51)
	or	 r1,r0,1
	or	 r4,r0,r11
	or	 r2,r0,r10
@L901:
	st.d	 r22,r7,lo16(_temp.48)
	ld	 r5,r0,r19
	cmp	 r13,r1,r5
	bb0.n	 le,r13,@L903
	st	 r1,r6,lo16(_i__.51)
	ld	 r13,r4,lo16(_j.52)
	mul	 r8,r13,r14
@L905:
	ld	 r9,r6,lo16(_i__.51)
	addu	 r13,r9,r8
	ld.d	 r10,r21[r13]
	ld.d	 r12,r20[r9]
	fmul.ddd r10,r10,r12
	ld.d	 r12,r7,lo16(_temp.48)
	addu	 r9,r9,1
	st	 r9,r6,lo16(_i__.51)
	cmp	 r9,r9,r5
	fadd.ddd r12,r12,r10
	bb1.n	 le,r9,@L905
	st.d	 r12,r7,lo16(_temp.48)
@L903:
	ld.d	 r10,r0,r15
	ld.d	 r12,r7,lo16(_temp.48)
	ld	 r9,r2,lo16(_jy.56)
	fmul.ddd r10,r10,r12
	ld.d	 r12,r25[r9]
	fadd.ddd r12,r12,r10
	st.d	 r12,r25[r9]
	ld	 r13,r4,lo16(_j.52)
	ld	 r12,r0,r17
	addu	 r13,r13,1
	addu	 r9,r9,r12
	st	 r13,r4,lo16(_j.52)
	cmp	 r13,r13,r3
	bb1.n	 le,r13,@L901
	st	 r9,r2,lo16(_jy.56)
	br.n	 @L934
	or	 r2,r0,0
	align	 4
@L897:
	ld	 r3,r0,r24
	or.u	 r11,r0,hi16(_j.52)
	cmp	 r12,r13,r3
	bb0.n	 le,r12,@L896
	st	 r13,r11,lo16(_j.52)
	or.u	 r6,r0,hi16(_temp.48)
	or.u	 r2,r0,hi16(_ix.53)
	or.u	 r4,r0,hi16(_i__.51)
	or	 r23,r0,1
	or	 r1,r0,r11
	or.u	 r13,r0,hi16(_kx.57)
	or	 r24,r0,r10
	ld	 r22,r13,lo16(_kx.57)
@L912:
	or	 r12,r0,0
	or	 r13,r0,0
	st.d	 r12,r6,lo16(_temp.48)
	st	 r22,r2,lo16(_ix.53)
	ld	 r5,r0,r19
	cmp	 r13,r23,r5
	bb0.n	 le,r13,@L914
	st	 r23,r4,lo16(_i__.51)
	ld	 r13,r1,lo16(_j.52)
	mul	 r7,r13,r14
@L916:
	ld	 r9,r4,lo16(_i__.51)
	ld	 r8,r2,lo16(_ix.53)
	addu	 r13,r9,r7
	ld.d	 r10,r21[r13]
	ld.d	 r12,r20[r8]
	fmul.ddd r10,r10,r12
	ld.d	 r12,r6,lo16(_temp.48)
	fadd.ddd r12,r12,r10
	st.d	 r12,r6,lo16(_temp.48)
	ld	 r13,r0,r18
	addu	 r9,r9,1
	st	 r9,r4,lo16(_i__.51)
	cmp	 r9,r9,r5
	addu	 r8,r8,r13
	bb1.n	 le,r9,@L916
	st	 r8,r2,lo16(_ix.53)
@L914:
	ld.d	 r10,r0,r15
	ld.d	 r12,r6,lo16(_temp.48)
	ld	 r9,r24,lo16(_jy.56)
	fmul.ddd r10,r10,r12
	ld.d	 r12,r25[r9]
	fadd.ddd r12,r12,r10
	st.d	 r12,r25[r9]
	ld	 r13,r1,lo16(_j.52)
	ld	 r12,r0,r17
	addu	 r13,r13,1
	addu	 r9,r9,r12
	st	 r13,r1,lo16(_j.52)
	cmp	 r13,r13,r3
	bb1.n	 le,r13,@L912
	st	 r9,r24,lo16(_jy.56)
@L896:
	or	 r2,r0,0
@L934:
@Lte4:
	ld	 r1,r31,80
	ld.d	 r24,r31,72
	ld.d	 r22,r31,64
	ld.d	 r20,r31,56
	ld.d	 r18,r31,48
	ld.d	 r16,r31,40
	ld.d	 r14,r31,32
	jmp.n	 r1
	addu	 r31,r31,112
	def	 @L936,@L896-@L937

	bss	 _i__.61,4,4
	bss	 _k.62,4,4
	bss	 _aii.63,8,8
data
	align	 8
@LC83:
	string	 "DGEQR2\000"
	align	 8
@LC84:
	string	 "Left\000"
text
	align	 4
@LC85:
	word	 _c__1
	align	 8
	global	 _dgeqr2_
_dgeqr2_:
	subu	 r31,r31,128
	st	 r1,r31,96
	st.d	 r24,r31,88
	st.d	 r22,r31,80
	st.d	 r20,r31,72
	st.d	 r18,r31,64
	st.d	 r16,r31,56
	or	 r17,r0,r5
	st.d	 r14,r31,48
@Ltb5:
	or	 r23,r0,r2
	ld	 r24,r0,r17
	or	 r19,r0,r3
	subu	 r20,r6,8
	st	 r0,r0,r8
	addu	 r13,r24,1
	ld	 r11,r0,r23
	mak	 r13,r13,0<3>
	subu	 r18,r7,8
	bcnd.n	 ge0,r11,@L956
	subu	 r25,r4,r13
	br.n	 @L973
	subu	 r13,r0,1
	align	 4
@L956:
	ld	 r13,r0,r19
	bcnd.n	 ge0,r13,@L958
	cmp	 r13,r11,1
	br.n	 @L973
	subu	 r13,r0,2
	align	 4
@L958:
	ld	 r12,r0,r17
	bb0.n	 gt,r13,@L961
	cmp	 r13,r12,r11
	bb0.n	 ge,r13,@L973
	subu	 r13,r0,4
	br	 @L957
	align	 4
@L961:
	bcnd.n	 gt0,r12,@L957
	subu	 r13,r0,4
@L973:
	st	 r13,r0,r8
@L957:
	ld	 r8,r0,r8
	bcnd.n	 eq0,r8,@L963
	addu	 r3,r31,104
	or.u	 r2,r0,hi16(@LC83)
	or	 r4,r0,6
	subu	 r13,r0,r8
	or	 r2,r2,lo16(@LC83)
	st	 r13,r31,104
	bsr.n	 _xerbla_
	addu	 r1,r1,@L974
@L975:
	align	 4
@L963:
	ld	 r12,r0,r23
	ld	 r11,r0,r19
	cmp	 r13,r12,r11
	bb0.n	 gt,r13,@L964
	or.u	 r10,r0,hi16(_k.62)
	or	 r12,r0,r11
@L964:
	or	 r13,r0,1
	st	 r12,r10,lo16(_k.62)
	or.u	 r11,r0,hi16(_i__.61)
	st	 r12,r31,104
	cmp	 r12,r13,r12
	bb0.n	 le,r12,@L966
	st	 r13,r11,lo16(_i__.61)
	or	 r22,r0,r11
	addu	 r21,r31,108
	or.u	 r13,r0,hi16(_c__1)
@L968:
	ld	 r11,r22,lo16(_i__.61)
	ld	 r13,r0,r23
	mul	 r9,r11,r24
	addu	 r12,r11,1
	subu	 r13,r13,r11
	st	 r12,r31,112
	addu	 r13,r13,1
	st	 r13,r31,108
	ld	 r10,r0,r23
	or	 r4,r0,r12
	addu	 r13,r11,r9
	cmp	 r12,r4,r10
	bb0.n	 gt,r12,@L969
	lda.d	 r3,r25[r13]
	or	 r4,r0,r10
@L969:
	or	 r2,r0,r21
	or.u	 r14,r0,hi16(@LC85)
	addu	 r4,r4,r9
	or	 r14,r14,lo16(@LC85)
	lda.d	 r6,r20[r11]
	ld	 r5,r0,r14
	bsr.n	 _dlarfg_
	lda.d	 r4,r25[r4]
	ld	 r11,r22,lo16(_i__.61)
	ld	 r13,r0,r19
	cmp	 r13,r11,r13
	bb1	 ge,r13,@L967
	or.u	 r16,r0,hi16(_aii.63)
	or.u	 r12,r0,0x3ff0
	or	 r13,r0,0
	mul	 r5,r11,r24
	or	 r3,r0,r21
	addu	 r4,r31,112
	addu	 r5,r11,r5
	or.u	 r2,r0,hi16(@LC84)
	ld.d	 r14,r25[r5]
	addu	 r8,r11,1
	lda.d	 r7,r20[r11]
	st.d	 r14,r16,lo16(_aii.63)
	or	 r9,r0,r17
	st.d	 r12,r25[r5]
	mul	 r8,r8,r24
	ld	 r13,r0,r23
	or	 r2,r2,lo16(@LC84)
	or.u	 r14,r0,hi16(@LC85)
	subu	 r13,r13,r11
	lda.d	 r5,r25[r5]
	addu	 r13,r13,1
	st	 r13,r31,108
	or	 r14,r14,lo16(@LC85)
	ld	 r13,r0,r19
	addu	 r8,r11,r8
	ld	 r6,r0,r14
	lda.d	 r8,r25[r8]
	subu	 r13,r13,r11
	st	 r13,r31,112
	addu	 r13,r18,8
	st	 r13,r31,32
	or	 r13,r0,4
	bsr.n	 _dlarf_
	st	 r13,r31,36
	ld	 r13,r22,lo16(_i__.61)
	mul	 r12,r13,r24
	or.u	 r15,r0,hi16(_aii.63)
	addu	 r13,r13,r12
	ld.d	 r14,r15,lo16(_aii.63)
	st.d	 r14,r25[r13]
@L967:
	ld	 r13,r22,lo16(_i__.61)
	ld	 r12,r31,104
	addu	 r13,r13,1
	cmp	 r12,r13,r12
	bb1.n	 le,r12,@L968
	st	 r13,r22,lo16(_i__.61)
@L966:
	or	 r2,r0,0
@Lte5:
	ld	 r1,r31,96
	ld.d	 r24,r31,88
	ld.d	 r22,r31,80
	ld.d	 r20,r31,72
	ld.d	 r18,r31,64
	ld.d	 r16,r31,56
	ld.d	 r14,r31,48
	jmp.n	 r1
	addu	 r31,r31,128
	def	 @L974,@L966-@L975

	bss	 _i__.66,4,4
	bss	 _k.67,4,4
	bss	 _nbmin.68,4,4
	bss	 _iinfo.69,4,4
	bss	 _ib.70,4,4
	bss	 _nb.71,4,4
	bss	 _nx.72,4,4
	bss	 _ldwork.73,4,4
	bss	 _iws.74,4,4
data
	align	 8
@LC86:
	string	 "DGEQRF\000"
	align	 8
@LC87:
	string	 "DGEQRF\000"
	align	 8
@LC88:
	string	 " \000"
	align	 8
@LC89:
	string	 "DGEQRF\000"
	align	 8
@LC90:
	string	 " \000"
	align	 8
@LC91:
	string	 "DGEQRF\000"
	align	 8
@LC92:
	string	 " \000"
	align	 8
@LC93:
	string	 "Forward\000"
	align	 8
@LC94:
	string	 "Columnwise\000"
	align	 8
@LC95:
	string	 "Left\000"
	align	 8
@LC96:
	string	 "Transpose\000"
	align	 8
@LC97:
	string	 "Forward\000"
	align	 8
@LC98:
	string	 "Columnwise\000"
text
	align	 8
	global	 _dgeqrf_
_dgeqrf_:
	subu	 r31,r31,224
	st	 r1,r31,128
	st.d	 r24,r31,120
	st.d	 r22,r31,112
	st.d	 r20,r31,104
	st.d	 r18,r31,96
	st.d	 r16,r31,88
	st.d	 r14,r31,80
@Ltb6:
	st	 r5,r31,220
	ld	 r16,r0,r5
	subu	 r6,r6,8
	subu	 r7,r7,8
	st	 r16,r31,196
	or	 r14,r0,r2
	st	 r0,r0,r9
	or	 r15,r0,r3
	ld	 r11,r0,r14
	or	 r19,r0,r8
	addu	 r13,r16,1
	st	 r6,r31,180
	mak	 r13,r13,0<3>
	st	 r7,r31,188
	subu	 r4,r4,r13
	bcnd.n	 ge0,r11,@L1048
	st	 r4,r31,172
	br.n	 @L1119
	subu	 r13,r0,1
	align	 4
@L1048:
	ld	 r13,r0,r15
	bcnd.n	 ge0,r13,@L1050
	cmp	 r13,r11,1
	br.n	 @L1119
	subu	 r13,r0,2
	align	 4
@L1050:
	ld	 r17,r31,220
	ld	 r12,r0,r17
	bb0.n	 gt,r13,@L1053
	cmp	 r13,r12,r11
	bb0.n	 ge,r13,@L1119
	subu	 r13,r0,4
	br	 @L1052
	align	 4
@L1053:
	bcnd.n	 le0,r12,@L1119
	subu	 r13,r0,4
@L1052:
	ld	 r11,r0,r15
	cmp	 r13,r11,1
	ld	 r12,r0,r19
	bb0.n	 gt,r13,@L1057
	cmp	 r13,r12,r11
	bb0.n	 ge,r13,@L1119
	subu	 r13,r0,7
	br	 @L1049
	align	 4
@L1057:
	bcnd.n	 gt0,r12,@L1049
	subu	 r13,r0,7
@L1119:
	st	 r13,r0,r9
@L1049:
	ld	 r9,r0,r9
	bcnd.n	 eq0,r9,@L1059
	addu	 r3,r31,136
	or.u	 r2,r0,hi16(@LC86)
	or	 r4,r0,6
	subu	 r13,r0,r9
	or	 r2,r2,lo16(@LC86)
	bsr.n	 _xerbla_
	st	 r13,r31,136
	br.n	 @L1118
	or	 r2,r0,0
	align	 4
@L1059:
	ld	 r12,r0,r14
	ld	 r11,r0,r15
	cmp	 r13,r12,r11
	bb0.n	 gt,r13,@L1060
	or.u	 r23,r0,hi16(_k.67)
	or	 r12,r0,r11
@L1060:
	bcnd.n	 ne0,r12,@L1061
	st	 r12,r23,lo16(_k.67)
	or.u	 r12,r0,0x3ff0
	or	 r13,r0,0
	ld	 r16,r31,188
	or	 r2,r0,0
	br.n	 @L1118
	st.d	 r12,r16,8
	align	 4
@L1061:
	or	 r5,r0,r14
	or	 r6,r0,r15
	or	 r9,r0,6
	or.u	 r2,r0,hi16(_c__1)
	or.u	 r3,r0,hi16(@LC87)
	or.u	 r13,r0,hi16(_c_n1)
	or.u	 r4,r0,hi16(@LC88)
	or	 r22,r0,1
	or	 r2,r2,lo16(_c__1)
	or	 r3,r3,lo16(@LC87)
	or	 r25,r13,lo16(_c_n1)
	or	 r4,r4,lo16(@LC88)
	or	 r7,r0,r25
	or	 r8,r0,r25
	bsr.n	 _ilaenv_
	st	 r22,r31,32
	or.u	 r24,r0,hi16(_nb.71)
	or.u	 r21,r0,hi16(_nx.72)
	st	 r2,r24,lo16(_nb.71)
	or.u	 r12,r0,hi16(_nbmin.68)
	st	 r0,r21,lo16(_nx.72)
	or	 r13,r0,2
	st	 r13,r12,lo16(_nbmin.68)
	ld	 r13,r0,r15
	or.u	 r20,r0,hi16(_iws.74)
	st	 r13,r20,lo16(_iws.74)
	cmp	 r13,r2,1
	bb0.n	 gt,r13,@L1062
	or	 r18,r24,lo16(_nb.71)
	ld	 r13,r23,lo16(_k.67)
	cmp	 r13,r2,r13
	bb1.n	 ge,r13,@L1120
	or.u	 r13,r0,hi16(_nb.71)
	st	 r0,r31,136
	or	 r5,r0,r14
	or	 r6,r0,r15
	or	 r7,r0,r25
	or.u	 r2,r0,hi16(_c__3)
	or	 r9,r0,6
	or.u	 r3,r0,hi16(@LC89)
	or.u	 r4,r0,hi16(@LC90)
	or	 r8,r0,r7
	or	 r2,r2,lo16(_c__3)
	or	 r3,r3,lo16(@LC89)
	or	 r4,r4,lo16(@LC90)
	bsr.n	 _ilaenv_
	st	 r22,r31,32
	ld	 r12,r31,136
	cmp	 r13,r12,r2
	bb1.n	 ge,r13,@L1063
	st	 r2,r31,164
	or	 r12,r0,r2
@L1063:
	ld	 r13,r23,lo16(_k.67)
	cmp	 r13,r12,r13
	bb1.n	 ge,r13,@L1062
	st	 r12,r21,lo16(_nx.72)
	ld	 r11,r0,r15
	ld	 r13,r24,lo16(_nb.71)
	or.u	 r12,r0,hi16(_ldwork.73)
	st	 r11,r12,lo16(_ldwork.73)
	mul	 r13,r11,r13
	st	 r13,r20,lo16(_iws.74)
	ld	 r8,r0,r19
	cmp	 r13,r8,r13
	bb1.n	 ge,r13,@L1062
	or	 r10,r0,r18
	bcnd.n	 gt0,r11,@L1067
	subu	 r12,r0,r11
	bcnd.n	 ge0,r8,@L1068
	subu	 r13,r0,r8
	divu	 r8,r13,r12
	bcnd	 ne0,r11,@L1066
@L1070:
	tb0	 0,r0,503
	br.n	 @L1121
	st	 r8,r0,r10
	align	 4
@L1068:
	divu	 r8,r8,r12
	bcnd	 eq0,r11,@L1070
	subu	 r8,r0,r8
	br.n	 @L1121
	st	 r8,r0,r10
	align	 4
@L1067:
	bcnd.n	 ge0,r8,@L1069
	subu	 r13,r0,r8
	divu	 r8,r13,r11
	br.n	 @L1066
	subu	 r8,r0,r8
	align	 4
@L1069:
	divu	 r8,r8,r11
@L1066:
	st	 r8,r0,r10
@L1121:
	or	 r13,r0,2
	st	 r13,r31,136
	or	 r5,r0,r14
	or	 r6,r0,r15
	or	 r9,r0,6
	or.u	 r2,r0,hi16(_c__2)
	or.u	 r3,r0,hi16(@LC91)
	or.u	 r7,r0,hi16(_c_n1)
	or.u	 r4,r0,hi16(@LC92)
	or	 r13,r0,1
	or	 r2,r2,lo16(_c__2)
	or	 r3,r3,lo16(@LC91)
	or	 r7,r7,lo16(_c_n1)
	or	 r4,r4,lo16(@LC92)
	or	 r8,r0,r7
	bsr.n	 _ilaenv_
	st	 r13,r31,32
	ld	 r12,r31,136
	st	 r2,r31,164
	cmp	 r13,r12,r2
	bb1.n	 ge,r13,@L1071
	or.u	 r11,r0,hi16(_nbmin.68)
	or	 r12,r0,r2
@L1071:
	st	 r12,r11,lo16(_nbmin.68)
@L1062:
	or.u	 r13,r0,hi16(_nb.71)
@L1120:
	ld	 r10,r13,lo16(_nb.71)
	or.u	 r13,r0,hi16(_nbmin.68)
	ld	 r13,r13,lo16(_nbmin.68)
	cmp	 r13,r10,r13
	bb0.n	 ge,r13,@L1072
	or.u	 r13,r0,hi16(_k.67)
	ld	 r12,r13,lo16(_k.67)
	cmp	 r13,r10,r12
	bb0.n	 lt,r13,@L1072
	or.u	 r13,r0,hi16(_nx.72)
	ld	 r11,r13,lo16(_nx.72)
	cmp	 r13,r11,r12
	bb0.n	 lt,r13,@L1072
	subu	 r12,r12,r11
	st	 r12,r31,136
	or.u	 r13,r0,hi16(_i__.66)
	st	 r10,r31,164
	or	 r11,r0,1
	bcnd.n	 ge0,r10,@L1127
	st	 r11,r13,lo16(_i__.66)
	cmp	 r13,r11,r12
	bb1.n	 ge,r13,@L1122
	or.u	 r13,r0,hi16(_k.67)
	br.n	 @L1123
	or.u	 r13,r0,hi16(_i__.66)
	align	 4
@L1077:
	or.u	 r13,r0,hi16(_i__.66)
@L1127:
	ld	 r12,r31,136
	ld	 r13,r13,lo16(_i__.66)
	cmp	 r13,r13,r12
	bb1.n	 gt,r13,@L1123
	or.u	 r13,r0,hi16(_i__.66)
	or.u	 r13,r0,hi16(_k.67)
@L1122:
	ld	 r12,r13,lo16(_k.67)
	or.u	 r13,r0,hi16(_i__.66)
	ld	 r11,r13,lo16(_i__.66)
	or.u	 r13,r0,hi16(_nb.71)
	ld	 r10,r13,lo16(_nb.71)
	subu	 r12,r12,r11
	addu	 r12,r12,1
	st	 r12,r31,140
	or	 r9,r0,r12
	or.u	 r12,r0,hi16(_ib.70)
	cmp	 r13,r9,r10
	bb0.n	 gt,r13,@L1079
	or	 r8,r12,lo16(_ib.70)
	or	 r9,r0,r10
@L1079:
	st	 r9,r12,lo16(_ib.70)
	ld	 r13,r0,r14
	ld	 r17,r31,196
	ld	 r16,r31,180
	mul	 r12,r11,r17
	subu	 r13,r13,r11
	ld	 r17,r31,220
	lda.d	 r21,r16[r11]
	ld	 r16,r31,172
	addu	 r10,r13,1
	st	 r10,r31,140
	ld	 r24,r0,r17
	ld	 r17,r31,188
	or	 r18,r0,r8
	subu	 r21,r21,8
	st	 r17,r31,212
	addu	 r13,r24,1
	addu	 r12,r11,r12
	mak	 r13,r13,0<3>
	lda.d	 r25,r16[r12]
	or.u	 r12,r0,hi16(_iinfo.69)
	subu	 r25,r25,r13
	or	 r11,r12,lo16(_iinfo.69)
	bcnd.n	 ge0,r10,@L1081
	st	 r0,r12,lo16(_iinfo.69)
	subu	 r13,r0,1
	br.n	 @L1082
	st	 r13,r12,lo16(_iinfo.69)
	align	 4
@L1081:
	bcnd.n	 ge0,r9,@L1083
	cmp	 r13,r10,1
	subu	 r13,r0,2
	br.n	 @L1082
	st	 r13,r12,lo16(_iinfo.69)
	align	 4
@L1083:
	ld	 r16,r31,220
	ld	 r12,r0,r16
	bb0.n	 gt,r13,@L1086
	cmp	 r13,r12,r10
	bb0.n	 ge,r13,@L1124
	subu	 r13,r0,4
	br	 @L1082
	align	 4
@L1086:
	bcnd.n	 gt0,r12,@L1082
	subu	 r13,r0,4
@L1124:
	st	 r13,r0,r11
@L1082:
	ld	 r13,r0,r11
	bcnd.n	 eq0,r13,@L1088
	addu	 r3,r31,144
	or.u	 r2,r0,hi16(@LC83)
	or	 r4,r0,6
	subu	 r13,r0,r13
	or	 r2,r2,lo16(@LC83)
	st	 r13,r31,144
	bsr.n	 _xerbla_
	addu	 r1,r1,@L1128
@L1129:
	align	 4
@L1088:
	ld	 r12,r31,140
	ld	 r11,r0,r18
	cmp	 r13,r12,r11
	bb0.n	 gt,r13,@L1089
	or.u	 r10,r0,hi16(_k.62)
	or	 r12,r0,r11
@L1089:
	or	 r13,r0,1
	st	 r12,r10,lo16(_k.62)
	or.u	 r11,r0,hi16(_i__.61)
	st	 r12,r31,144
	cmp	 r12,r13,r12
	bb0.n	 le,r12,@L1080
	st	 r13,r11,lo16(_i__.61)
	or	 r23,r0,r11
	addu	 r22,r31,148
	or.u	 r13,r0,hi16(_c__1)
	or.u	 r19,r0,hi16(_aii.63)
	or	 r20,r13,lo16(_c__1)
@L1093:
	ld	 r11,r23,lo16(_i__.61)
	ld	 r10,r31,140
	mul	 r9,r11,r24
	subu	 r13,r10,r11
	addu	 r12,r11,1
	st	 r12,r31,152
	addu	 r13,r13,1
	st	 r13,r31,148
	or	 r4,r0,r12
	addu	 r13,r11,r9
	cmp	 r12,r4,r10
	bb0.n	 gt,r12,@L1094
	lda.d	 r3,r25[r13]
	or	 r4,r0,r10
@L1094:
	or	 r2,r0,r22
	or	 r5,r0,r20
	addu	 r4,r4,r9
	lda.d	 r6,r21[r11]
	bsr.n	 _dlarfg_
	lda.d	 r4,r25[r4]
	ld	 r12,r23,lo16(_i__.61)
	ld	 r13,r0,r18
	cmp	 r13,r12,r13
	bb1.n	 ge,r13,@L1092
	or	 r3,r0,r22
	or.u	 r10,r0,0x3ff0
	or	 r11,r0,0
	mul	 r5,r12,r24
	addu	 r4,r31,152
	or	 r6,r0,r20
	lda.d	 r7,r21[r12]
	ld	 r13,r31,140
	addu	 r8,r12,1
	ld	 r9,r31,220
	addu	 r5,r12,r5
	or.u	 r2,r0,hi16(@LC84)
	ld.d	 r16,r25[r5]
	mul	 r8,r8,r24
	subu	 r13,r13,r12
	st.d	 r16,r19,lo16(_aii.63)
	addu	 r13,r13,1
	st	 r13,r31,148
	or	 r2,r2,lo16(@LC84)
	st.d	 r10,r25[r5]
	addu	 r8,r12,r8
	ld	 r13,r0,r18
	lda.d	 r5,r25[r5]
	ld	 r17,r31,212
	lda.d	 r8,r25[r8]
	subu	 r13,r13,r12
	st	 r13,r31,152
	addu	 r13,r17,8
	st	 r13,r31,32
	or	 r13,r0,4
	bsr.n	 _dlarf_
	st	 r13,r31,36
	ld	 r13,r23,lo16(_i__.61)
	mul	 r12,r13,r24
	addu	 r13,r13,r12
	ld.d	 r16,r19,lo16(_aii.63)
	st.d	 r16,r25[r13]
@L1092:
	ld	 r13,r23,lo16(_i__.61)
	ld	 r12,r31,144
	addu	 r13,r13,1
	cmp	 r12,r13,r12
	bb1.n	 le,r12,@L1093
	st	 r13,r23,lo16(_i__.61)
@L1080:
	or.u	 r19,r0,hi16(_i__.66)
	or.u	 r20,r0,hi16(_ib.70)
	ld	 r11,r19,lo16(_i__.66)
	ld	 r13,r20,lo16(_ib.70)
	ld	 r12,r0,r15
	addu	 r13,r11,r13
	cmp	 r13,r13,r12
	bb1.n	 gt,r13,@L1075
	or	 r18,r20,lo16(_ib.70)
	or	 r5,r0,r18
	or.u	 r2,r0,hi16(@LC93)
	or.u	 r3,r0,hi16(@LC94)
	addu	 r24,r31,140
	ld	 r7,r31,220
	or.u	 r25,r0,hi16(_ldwork.73)
	ld	 r17,r31,180
	or	 r21,r0,7
	ld	 r13,r0,r14
	or	 r22,r0,10
	ld	 r16,r31,188
	or	 r2,r2,lo16(@LC93)
	or	 r3,r3,lo16(@LC94)
	or	 r4,r0,r24
	or	 r25,r25,lo16(_ldwork.73)
	lda.d	 r8,r17[r11]
	addu	 r23,r16,8
	ld	 r17,r31,196
	subu	 r13,r13,r11
	ld	 r16,r31,172
	mul	 r6,r11,r17
	addu	 r13,r13,1
	st	 r13,r31,140
	or	 r9,r0,r23
	st	 r25,r31,32
	addu	 r6,r11,r6
	st	 r21,r31,36
	lda.d	 r6,r16[r6]
	bsr.n	 _dlarft_
	st	 r22,r31,40
	ld	 r13,r0,r14
	or	 r6,r0,r24
	ld	 r12,r19,lo16(_i__.66)
	addu	 r7,r31,160
	ld	 r11,r20,lo16(_ib.70)
	subu	 r13,r13,r12
	or	 r8,r0,r18
	addu	 r13,r13,1
	st	 r13,r31,140
	or.u	 r2,r0,hi16(@LC95)
	ld	 r13,r0,r15
	or.u	 r3,r0,hi16(@LC96)
	ld	 r17,r31,220
	subu	 r13,r13,r12
	ld	 r16,r31,188
	subu	 r13,r13,r11
	or.u	 r4,r0,hi16(@LC97)
	addu	 r13,r13,1
	st	 r13,r31,160
	or.u	 r5,r0,hi16(@LC98)
	st	 r17,r31,32
	mak	 r13,r11,0<3>
	st	 r17,r31,48
	addu	 r13,r13,8
	ld	 r17,r31,196
	addu	 r13,r16,r13
	ld	 r16,r31,172
	or	 r2,r2,lo16(@LC95)
	or	 r3,r3,lo16(@LC96)
	st	 r23,r31,36
	or	 r4,r4,lo16(@LC97)
	st	 r25,r31,40
	or	 r5,r5,lo16(@LC98)
	st	 r25,r31,56
	addu	 r11,r12,r11
	st	 r21,r31,68
	mul	 r9,r12,r17
	st	 r22,r31,72
	mul	 r11,r11,r17
	st	 r13,r31,52
	or	 r13,r0,4
	st	 r13,r31,60
	or	 r13,r0,9
	st	 r13,r31,64
	addu	 r9,r12,r9
	addu	 r12,r12,r11
	lda.d	 r9,r16[r9]
	lda.d	 r12,r16[r12]
	bsr.n	 _dlarfb_
	st	 r12,r31,44
@L1075:
	ld	 r13,r19,lo16(_i__.66)
	ld	 r12,r31,164
	addu	 r11,r13,r12
	bcnd.n	 ge0,r12,@L1077
	st	 r11,r19,lo16(_i__.66)
	ld	 r13,r31,136
	cmp	 r13,r11,r13
	bb1.n	 ge,r13,@L1122
	or.u	 r13,r0,hi16(_k.67)
	br.n	 @L1123
	or.u	 r13,r0,hi16(_i__.66)
	align	 4
@L1072:
	or.u	 r12,r0,hi16(_i__.66)
	or	 r13,r0,1
	st	 r13,r12,lo16(_i__.66)
	or.u	 r13,r0,hi16(_i__.66)
@L1123:
	ld	 r11,r13,lo16(_i__.66)
	or.u	 r13,r0,hi16(_k.67)
	ld	 r13,r13,lo16(_k.67)
	cmp	 r13,r11,r13
	bb0.n	 le,r13,@L1125
	or.u	 r13,r0,hi16(_iws.74)
	ld	 r13,r0,r14
	ld	 r17,r31,196
	ld	 r16,r31,180
	mul	 r12,r11,r17
	subu	 r13,r13,r11
	ld	 r17,r31,220
	lda.d	 r21,r16[r11]
	ld	 r16,r31,172
	addu	 r10,r13,1
	st	 r10,r31,164
	ld	 r13,r0,r15
	addu	 r20,r31,136
	ld	 r15,r31,188
	subu	 r13,r13,r11
	subu	 r21,r21,8
	addu	 r9,r13,1
	st	 r9,r31,136
	addu	 r12,r11,r12
	ld	 r24,r0,r17
	lda.d	 r25,r16[r12]
	or.u	 r12,r0,hi16(_iinfo.69)
	addu	 r13,r24,1
	or	 r11,r12,lo16(_iinfo.69)
	mak	 r13,r13,0<3>
	st	 r0,r12,lo16(_iinfo.69)
	bcnd.n	 ge0,r10,@L1102
	subu	 r25,r25,r13
	subu	 r13,r0,1
	br.n	 @L1103
	st	 r13,r12,lo16(_iinfo.69)
	align	 4
@L1102:
	bcnd.n	 ge0,r9,@L1104
	cmp	 r13,r10,1
	subu	 r13,r0,2
	br.n	 @L1103
	st	 r13,r12,lo16(_iinfo.69)
	align	 4
@L1104:
	ld	 r17,r31,220
	ld	 r12,r0,r17
	bb0.n	 gt,r13,@L1107
	cmp	 r13,r12,r10
	bb0.n	 ge,r13,@L1126
	subu	 r13,r0,4
	br	 @L1103
	align	 4
@L1107:
	bcnd.n	 gt0,r12,@L1103
	subu	 r13,r0,4
@L1126:
	st	 r13,r0,r11
@L1103:
	ld	 r13,r0,r11
	bcnd.n	 eq0,r13,@L1109
	addu	 r3,r31,144
	or.u	 r2,r0,hi16(@LC83)
	or	 r4,r0,6
	subu	 r13,r0,r13
	or	 r2,r2,lo16(@LC83)
	st	 r13,r31,144
	bsr.n	 _xerbla_
	addu	 r1,r1,@L1130
@L1131:
	align	 4
@L1109:
	ld	 r12,r31,164
	ld	 r11,r0,r20
	cmp	 r13,r12,r11
	bb0.n	 gt,r13,@L1110
	or.u	 r10,r0,hi16(_k.62)
	or	 r12,r0,r11
@L1110:
	or	 r13,r0,1
	st	 r12,r10,lo16(_k.62)
	or.u	 r11,r0,hi16(_i__.61)
	st	 r12,r31,144
	cmp	 r12,r13,r12
	bb0.n	 le,r12,@L1100
	st	 r13,r11,lo16(_i__.61)
	or	 r23,r0,r11
	addu	 r22,r31,148
	or.u	 r13,r0,hi16(_c__1)
	or.u	 r18,r0,hi16(_aii.63)
	or	 r19,r13,lo16(_c__1)
@L1114:
	ld	 r11,r23,lo16(_i__.61)
	ld	 r10,r31,164
	mul	 r9,r11,r24
	subu	 r13,r10,r11
	addu	 r12,r11,1
	st	 r12,r31,152
	addu	 r13,r13,1
	st	 r13,r31,148
	or	 r4,r0,r12
	addu	 r13,r11,r9
	cmp	 r12,r4,r10
	bb0.n	 gt,r12,@L1115
	lda.d	 r3,r25[r13]
	or	 r4,r0,r10
@L1115:
	or	 r2,r0,r22
	or	 r5,r0,r19
	addu	 r4,r4,r9
	lda.d	 r6,r21[r11]
	bsr.n	 _dlarfg_
	lda.d	 r4,r25[r4]
	ld	 r12,r23,lo16(_i__.61)
	ld	 r13,r0,r20
	cmp	 r13,r12,r13
	bb1.n	 ge,r13,@L1113
	or	 r3,r0,r22
	or.u	 r10,r0,0x3ff0
	or	 r11,r0,0
	mul	 r5,r12,r24
	addu	 r4,r31,152
	or	 r6,r0,r19
	lda.d	 r7,r21[r12]
	ld	 r13,r31,164
	addu	 r8,r12,1
	ld	 r9,r31,220
	addu	 r5,r12,r5
	or.u	 r2,r0,hi16(@LC84)
	ld.d	 r16,r25[r5]
	mul	 r8,r8,r24
	subu	 r13,r13,r12
	st.d	 r16,r18,lo16(_aii.63)
	addu	 r13,r13,1
	st	 r13,r31,148
	or	 r2,r2,lo16(@LC84)
	st.d	 r10,r25[r5]
	addu	 r8,r12,r8
	ld	 r13,r0,r20
	lda.d	 r5,r25[r5]
	lda.d	 r8,r25[r8]
	subu	 r13,r13,r12
	st	 r13,r31,152
	addu	 r13,r15,8
	st	 r13,r31,32
	or	 r13,r0,4
	bsr.n	 _dlarf_
	st	 r13,r31,36
	ld	 r13,r23,lo16(_i__.61)
	mul	 r12,r13,r24
	addu	 r13,r13,r12
	ld.d	 r16,r18,lo16(_aii.63)
	st.d	 r16,r25[r13]
@L1113:
	ld	 r13,r23,lo16(_i__.61)
	ld	 r12,r31,144
	addu	 r13,r13,1
	cmp	 r12,r13,r12
	bb1.n	 le,r12,@L1114
	st	 r13,r23,lo16(_i__.61)
@L1100:
	or.u	 r13,r0,hi16(_iws.74)
@L1125:
	ld	 r13,r13,lo16(_iws.74)
	ld	 r17,r31,188
	or	 r2,r0,0
	flt.ds	 r12,r13
	st.d	 r12,r17,8
@L1118:
@Lte6:
	ld	 r1,r31,128
	ld.d	 r24,r31,120
	ld.d	 r22,r31,112
	ld.d	 r20,r31,104
	ld.d	 r18,r31,96
	ld.d	 r16,r31,88
	ld.d	 r14,r31,80
	jmp.n	 r1
	addu	 r31,r31,224
	def	 @L1130,@L1100-@L1131
	def	 @L1128,@L1080-@L1129

	bss	 _info.77,4,4
	bss	 _temp.78,8,8
	bss	 _i__.79,4,4
	bss	 _j.80,4,4
	bss	 _ix.81,4,4
	bss	 _jy.82,4,4
	bss	 _kx.83,4,4
data
	align	 8
@LC99:
	string	 "DGER  \000"
text
	align	 8
	global	 _dger_
_dger_:
	subu	 r31,r31,112
	or	 r10,r0,r3
	ld	 r3,r31,144
	st	 r1,r31,80
	st.d	 r24,r31,72
	st.d	 r22,r31,64
	st.d	 r20,r31,56
	st.d	 r18,r31,48
	st.d	 r16,r31,40
	or.u	 r12,r0,hi16(_info.77)
	st.d	 r14,r31,32
@Ltb7:
	or	 r20,r0,r2
	st	 r4,r31,92
	or	 r18,r0,r6
	ld	 r14,r0,r3
	or	 r16,r0,r8
	subu	 r22,r5,8
	st	 r0,r12,lo16(_info.77)
	addu	 r13,r14,1
	ld	 r11,r0,r20
	mak	 r13,r13,0<3>
	subu	 r17,r7,8
	bcnd.n	 ge0,r11,@L1176
	subu	 r25,r9,r13
	br.n	 @L1222
	or	 r13,r0,1
	align	 4
@L1176:
	ld	 r13,r0,r10
	bcnd.n	 lt0,r13,@L1222
	or	 r13,r0,2
	ld	 r13,r0,r18
	bcnd.n	 eq0,r13,@L1222
	or	 r13,r0,5
	ld	 r13,r0,r16
	bcnd.n	 ne0,r13,@L1182
	cmp	 r13,r11,1
	br.n	 @L1222
	or	 r13,r0,7
	align	 4
@L1182:
	ld	 r12,r0,r3
	bb0.n	 gt,r13,@L1185
	cmp	 r13,r12,r11
	bb0.n	 ge,r13,@L1223
	or.u	 r12,r0,hi16(_info.77)
	br.n	 @L1224
	or.u	 r13,r0,hi16(_info.77)
	align	 4
@L1185:
	bcnd.n	 gt0,r12,@L1224
	or.u	 r13,r0,hi16(_info.77)
	or.u	 r12,r0,hi16(_info.77)
@L1223:
	or	 r13,r0,9
@L1222:
	st	 r13,r12,lo16(_info.77)
	or.u	 r13,r0,hi16(_info.77)
@L1224:
	ld	 r12,r13,lo16(_info.77)
	bcnd.n	 eq0,r12,@L1187
	or	 r3,r13,lo16(_info.77)
	or.u	 r2,r0,hi16(@LC99)
	or	 r4,r0,6
	or	 r2,r2,lo16(@LC99)
	bsr.n	 _xerbla_
	addu	 r1,r1,@L1226
@L1227:
	align	 4
@L1187:
	ld	 r13,r0,r20
	bcnd	 eq0,r13,@L1204
	ld	 r11,r0,r10
	bcnd.n	 eq0,r11,@L1225
	or	 r2,r0,0
	ld	 r15,r31,92
	ld.d	 r12,r0,r15
	fcmp.sds r13,r12,r0
	bb0	 ne,r13,@L1225
	ld	 r12,r0,r16
	bcnd	 le0,r12,@L1190
	or.u	 r12,r0,hi16(_jy.82)
	or	 r13,r0,1
	br.n	 @L1191
	st	 r13,r12,lo16(_jy.82)
	align	 4
@L1190:
	subu	 r13,r11,1
	mul	 r13,r13,r12
	or	 r12,r0,1
	or.u	 r11,r0,hi16(_jy.82)
	subu	 r12,r12,r13
	st	 r12,r11,lo16(_jy.82)
@L1191:
	ld	 r12,r0,r18
	cmp	 r13,r12,1
	bb1	 ne,r13,@L1192
	ld	 r24,r0,r10
	or.u	 r11,r0,hi16(_j.80)
	cmp	 r13,r12,r24
	bb0.n	 le,r13,@L1204
	st	 r12,r11,lo16(_j.80)
	or.u	 r2,r0,hi16(_jy.82)
	or.u	 r21,r0,hi16(_temp.78)
	or.u	 r4,r0,hi16(_i__.79)
	or	 r23,r0,1
	or	 r3,r0,r11
@L1196:
	ld	 r13,r2,lo16(_jy.82)
	ld.d	 r10,r17[r13]
	fcmp.sds r13,r10,r0
	bb0	 ne,r13,@L1197
	ld	 r15,r31,92
	ld.d	 r12,r0,r15
	fmul.ddd r10,r12,r10
	st.d	 r10,r21,lo16(_temp.78)
	ld	 r1,r0,r20
	cmp	 r13,r23,r1
	bb0.n	 le,r13,@L1197
	st	 r23,r4,lo16(_i__.79)
	ld	 r13,r3,lo16(_j.80)
	or	 r6,r0,r10
	or	 r7,r0,r11
	mul	 r5,r13,r14
@L1201:
	ld	 r9,r4,lo16(_i__.79)
	addu	 r8,r9,r5
	ld.d	 r10,r22[r9]
	ld.d	 r12,r25[r8]
	fmul.ddd r10,r10,r6
	addu	 r9,r9,1
	st	 r9,r4,lo16(_i__.79)
	cmp	 r9,r9,r1
	fadd.ddd r12,r12,r10
	bb1.n	 le,r9,@L1201
	st.d	 r12,r25[r8]
@L1197:
	ld	 r12,r2,lo16(_jy.82)
	ld	 r11,r0,r16
	ld	 r13,r3,lo16(_j.80)
	addu	 r12,r12,r11
	addu	 r13,r13,1
	st	 r12,r2,lo16(_jy.82)
	cmp	 r12,r13,r24
	bb1.n	 le,r12,@L1196
	st	 r13,r3,lo16(_j.80)
	br.n	 @L1225
	or	 r2,r0,0
	align	 4
@L1192:
	bcnd	 le0,r12,@L1205
	or.u	 r12,r0,hi16(_kx.83)
	or	 r13,r0,1
	br.n	 @L1206
	st	 r13,r12,lo16(_kx.83)
	align	 4
@L1205:
	ld	 r13,r0,r20
	subu	 r13,r13,1
	mul	 r13,r13,r12
	or	 r12,r0,1
	or.u	 r11,r0,hi16(_kx.83)
	subu	 r12,r12,r13
	st	 r12,r11,lo16(_kx.83)
@L1206:
	ld	 r24,r0,r10
	or	 r13,r0,1
	or.u	 r11,r0,hi16(_j.80)
	cmp	 r12,r13,r24
	bb0.n	 le,r12,@L1204
	st	 r13,r11,lo16(_j.80)
	or.u	 r21,r0,hi16(_jy.82)
	or.u	 r2,r0,hi16(_ix.81)
	or.u	 r3,r0,hi16(_i__.79)
	or	 r19,r0,1
	or.u	 r13,r0,hi16(_kx.83)
	or	 r23,r0,r11
	ld	 r13,r13,lo16(_kx.83)
	st	 r13,r31,100
@L1210:
	ld	 r13,r21,lo16(_jy.82)
	ld.d	 r10,r17[r13]
	fcmp.sds r13,r10,r0
	bb0	 ne,r13,@L1211
	ld	 r15,r31,92
	ld.d	 r12,r0,r15
	ld	 r15,r31,100
	st	 r15,r2,lo16(_ix.81)
	or.u	 r15,r0,hi16(_temp.78)
	fmul.ddd r10,r12,r10
	st.d	 r10,r15,lo16(_temp.78)
	ld	 r1,r0,r20
	cmp	 r13,r19,r1
	bb0.n	 le,r13,@L1211
	st	 r19,r3,lo16(_i__.79)
	ld	 r13,r23,lo16(_j.80)
	or	 r4,r0,r10
	or	 r5,r0,r11
	mul	 r6,r13,r14
@L1215:
	ld	 r7,r2,lo16(_ix.81)
	ld	 r8,r3,lo16(_i__.79)
	ld.d	 r10,r22[r7]
	addu	 r9,r8,r6
	fmul.ddd r10,r10,r4
	ld.d	 r12,r25[r9]
	fadd.ddd r12,r12,r10
	st.d	 r12,r25[r9]
	ld	 r13,r0,r18
	addu	 r8,r8,1
	st	 r8,r3,lo16(_i__.79)
	cmp	 r8,r8,r1
	addu	 r7,r7,r13
	bb1.n	 le,r8,@L1215
	st	 r7,r2,lo16(_ix.81)
@L1211:
	ld	 r12,r21,lo16(_jy.82)
	ld	 r11,r0,r16
	ld	 r13,r23,lo16(_j.80)
	addu	 r12,r12,r11
	addu	 r13,r13,1
	st	 r12,r21,lo16(_jy.82)
	cmp	 r12,r13,r24
	bb1.n	 le,r12,@L1210
	st	 r13,r23,lo16(_j.80)
@L1204:
	or	 r2,r0,0
@L1225:
@Lte7:
	ld	 r1,r31,80
	ld.d	 r24,r31,72
	ld.d	 r22,r31,64
	ld.d	 r20,r31,56
	ld.d	 r18,r31,48
	ld.d	 r16,r31,40
	ld.d	 r14,r31,32
	jmp.n	 r1
	addu	 r31,r31,112
	def	 @L1226,@L1204-@L1227

	align	 8
	global	 _dlabad_
_dlabad_:
	subu	 r31,r31,64
	st.d	 r24,r31,40
	or	 r25,r0,r3
	or	 r24,r0,r2
	st	 r1,r31,48
@Ltb8:
	bsr.n	 _d_lg10
	or	 r2,r0,r25
	or.u	 r13,r0,0x44fa
	fcmp.sds r13,r2,r13
	bb1	 le,r13,@L1231
	bsr.n	 _sqrt
	ld.d	 r2,r0,r24
	st.d	 r2,r0,r24
	bsr.n	 _sqrt
	ld.d	 r2,r0,r25
	st.d	 r2,r0,r25
@L1231:
@Lte8:
	ld	 r1,r31,48
	or	 r2,r0,0
	ld.d	 r24,r31,40
	jmp.n	 r1
	addu	 r31,r31,64

	bss	 _iter.88,4,4
	bss	 _temp.89,8,8
	bss	 _jump.90,4,4
	bss	 _i__.91,4,4
	bss	 _j.92,4,4
	bss	 _jlast.93,4,4
	bss	 _altsgn.94,8,8
	bss	 _estold.95,8,8
	align	 8
	global	 _dlacon_
_dlacon_:
	subu	 r31,r31,96
	st	 r1,r31,80
	st.d	 r24,r31,72
	st.d	 r22,r31,64
	or	 r22,r0,r2
	st.d	 r18,r31,48
	or	 r19,r0,r7
	st.d	 r20,r31,56
	or	 r21,r0,r6
	st.d	 r16,r31,40
@Ltb9:
	subu	 r20,r5,4
	ld	 r13,r0,r19
	subu	 r23,r4,8
	bcnd.n	 ne0,r13,@L1290
	subu	 r24,r3,8
	ld	 r24,r0,r22
	or	 r13,r0,1
	or.u	 r11,r0,hi16(_i__.91)
	cmp	 r12,r13,r24
	bb0.n	 le,r12,@L1292
	st	 r13,r11,lo16(_i__.91)
	or.u	 r8,r0,0x3f80
	or	 r9,r0,r11
@L1294:
	ld	 r13,r0,r22
	flt.ds	 r12,r13
	fdiv.dsd r12,r8,r12
	ld	 r10,r9,lo16(_i__.91)
	addu	 r11,r10,1
	st	 r11,r9,lo16(_i__.91)
	cmp	 r11,r11,r24
	bb1.n	 le,r11,@L1294
	st.d	 r12,r23[r10]
@L1292:
	br.n	 @L1353
	or	 r12,r0,1
	align	 4
@L1290:
	or.u	 r13,r0,hi16(_jump.90)
	ld	 r25,r13,lo16(_jump.90)
	cmp	 r13,r25,3
	bb0.n	 ne,r13,@L1302
	or	 r2,r0,r22
	bb1.n	 gt,r13,@L1309
	cmp	 r13,r25,4
	cmp	 r13,r25,1
	bb0.n	 ne,r13,@L1298
	cmp	 r13,r25,2
	bb0.n	 ne,r13,@L1300
	or.u	 r4,r0,hi16(_c__1)
	br	 @L1298
	align	 4
@L1309:
	bb0.n	 ne,r13,@L1304
	cmp	 r13,r25,5
	bb0.n	 ne,r13,@L1306
	or	 r2,r0,r22
@L1298:
	ld	 r13,r0,r22
	cmp	 r13,r13,1
	bb1.n	 ne,r13,@L1310
	or	 r2,r0,r22
	ld.d	 r12,r23,8
	or	 r10,r0,r12
	or	 r11,r0,r13
	fcmp.sds r13,r10,r0
	bb1.n	 ge,r13,@L1311
	st.d	 r10,r24,8
	xor.u	 r10,r10,0x8000
@L1311:
	br.n	 @L1312
	st.d	 r10,r0,r21
	align	 4
@L1310:
	or.u	 r4,r0,hi16(_c__1)
	addu	 r3,r23,8
	bsr.n	 _dasum_
	or	 r4,r4,lo16(_c__1)
	st.d	 r2,r0,r21
	ld	 r24,r0,r22
	or	 r13,r0,1
	or.u	 r11,r0,hi16(_i__.91)
	cmp	 r12,r13,r24
	bb0.n	 le,r12,@L1314
	st	 r13,r11,lo16(_i__.91)
	or.u	 r22,r0,hi16(_c_b89)
	or	 r25,r0,r11
@L1316:
	ld	 r3,r25,lo16(_i__.91)
	or	 r2,r22,lo16(_c_b89)
	bsr.n	 _d_sign
	lda.d	 r3,r23[r3]
	ld	 r13,r25,lo16(_i__.91)
	st.d	 r2,r23[r13]
	bsr.n	 _i_dnnt
	lda.d	 r2,r23[r13]
	ld	 r13,r25,lo16(_i__.91)
	addu	 r12,r13,1
	st	 r2,r20[r13]
	cmp	 r13,r12,r24
	bb1.n	 le,r13,@L1316
	st	 r12,r25,lo16(_i__.91)
@L1314:
	or	 r12,r0,2
@L1353:
	st	 r12,r0,r19
	or.u	 r13,r0,hi16(_jump.90)
	or	 r2,r0,0
	br.n	 @L1346
	st	 r12,r13,lo16(_jump.90)
	align	 4
@L1300:
	addu	 r3,r23,8
	bsr.n	 _idamax_
	or	 r4,r4,lo16(_c__1)
	or.u	 r13,r0,hi16(_j.92)
	st	 r2,r13,lo16(_j.92)
	or.u	 r13,r0,hi16(_iter.88)
	st	 r25,r13,lo16(_iter.88)
@L1318:
	ld	 r24,r0,r22
	or	 r13,r0,1
	or.u	 r11,r0,hi16(_i__.91)
	cmp	 r12,r13,r24
	bb0.n	 le,r12,@L1320
	st	 r13,r11,lo16(_i__.91)
	or	 r8,r0,0
	or	 r9,r0,0
@L1322:
	ld	 r13,r11,lo16(_i__.91)
	addu	 r12,r13,1
	st.d	 r8,r23[r13]
	cmp	 r13,r12,r24
	bb1.n	 le,r13,@L1322
	st	 r12,r11,lo16(_i__.91)
@L1320:
	or.u	 r11,r0,hi16(_j.92)
	or.u	 r12,r0,0x3ff0
	or	 r13,r0,0
	ld	 r11,r11,lo16(_j.92)
	or	 r2,r0,0
	st.d	 r12,r23[r11]
	or	 r13,r0,1
	or.u	 r12,r0,hi16(_jump.90)
	st	 r13,r0,r19
	or	 r13,r0,3
	br.n	 @L1346
	st	 r13,r12,lo16(_jump.90)
	align	 4
@L1302:
	addu	 r3,r23,8
	or.u	 r25,r0,hi16(_c__1)
	addu	 r24,r24,8
	or	 r25,r25,lo16(_c__1)
	or	 r5,r0,r24
	or	 r4,r0,r25
	bsr.n	 _dcopy_
	or	 r6,r0,r25
	or.u	 r13,r0,hi16(_estold.95)
	or	 r2,r0,r22
	ld.d	 r16,r0,r21
	or	 r3,r0,r24
	or	 r4,r0,r25
	bsr.n	 _dasum_
	st.d	 r16,r13,lo16(_estold.95)
	st.d	 r2,r0,r21
	ld	 r24,r0,r22
	or	 r13,r0,1
	or.u	 r11,r0,hi16(_i__.91)
	cmp	 r12,r13,r24
	bb1.n	 gt,r12,@L1331
	st	 r13,r11,lo16(_i__.91)
	or.u	 r18,r0,hi16(_c_b89)
	or	 r25,r0,r11
@L1327:
	ld	 r3,r25,lo16(_i__.91)
	or	 r2,r18,lo16(_c_b89)
	bsr.n	 _d_sign
	lda.d	 r3,r23[r3]
	st.d	 r2,r31,88
	bsr.n	 _i_dnnt
	addu	 r2,r31,88
	ld	 r12,r25,lo16(_i__.91)
	ld	 r13,r20[r12]
	cmp	 r2,r2,r13
	bb1.n	 ne,r2,@L1329
	addu	 r13,r12,1
	cmp	 r12,r13,r24
	bb1.n	 le,r12,@L1327
	st	 r13,r25,lo16(_i__.91)
	br.n	 @L1354
	or.u	 r10,r0,hi16(_altsgn.94)
	align	 4
@L1329:
	or.u	 r13,r0,hi16(_estold.95)
	ld.d	 r10,r0,r21
	ld.d	 r12,r13,lo16(_estold.95)
	fcmp.sdd r13,r10,r12
	bb0	 gt,r13,@L1331
	ld	 r24,r0,r22
	or	 r13,r0,1
	cmp	 r12,r13,r24
	bb0.n	 le,r12,@L1334
	st	 r13,r25,lo16(_i__.91)
	or.u	 r22,r0,hi16(_c_b89)
	or.u	 r25,r0,hi16(_i__.91)
@L1336:
	ld	 r3,r25,lo16(_i__.91)
	or	 r2,r22,lo16(_c_b89)
	bsr.n	 _d_sign
	lda.d	 r3,r23[r3]
	ld	 r13,r25,lo16(_i__.91)
	st.d	 r2,r23[r13]
	bsr.n	 _i_dnnt
	lda.d	 r2,r23[r13]
	ld	 r13,r25,lo16(_i__.91)
	addu	 r12,r13,1
	st	 r2,r20[r13]
	cmp	 r13,r12,r24
	bb1.n	 le,r13,@L1336
	st	 r12,r25,lo16(_i__.91)
@L1334:
	or	 r13,r0,2
	st	 r13,r0,r19
	or	 r2,r0,0
	or.u	 r12,r0,hi16(_jump.90)
	or	 r13,r0,4
	br.n	 @L1346
	st	 r13,r12,lo16(_jump.90)
	align	 4
@L1304:
	or	 r2,r0,r22
	addu	 r3,r23,8
	or.u	 r25,r0,hi16(_j.92)
	or.u	 r4,r0,hi16(_c__1)
	ld	 r13,r25,lo16(_j.92)
	or.u	 r24,r0,hi16(_jlast.93)
	or	 r4,r4,lo16(_c__1)
	bsr.n	 _idamax_
	st	 r13,r24,lo16(_jlast.93)
	ld.d	 r12,r23[r2]
	or	 r10,r0,r12
	or	 r11,r0,r13
	ld	 r12,r24,lo16(_jlast.93)
	st	 r2,r25,lo16(_j.92)
	fcmp.sds r13,r10,r0
	bb1.n	 ge,r13,@L1339
	st.d	 r10,r31,88
	xor.u	 r10,r10,0x8000
@L1339:
	ld.d	 r12,r23[r12]
	fcmp.sdd r13,r12,r10
	bb0.n	 ne,r13,@L1331
	or.u	 r11,r0,hi16(_iter.88)
	ld	 r12,r11,lo16(_iter.88)
	cmp	 r13,r12,4
	bb1.n	 gt,r13,@L1354
	or.u	 r10,r0,hi16(_altsgn.94)
	addu	 r13,r12,1
	br.n	 @L1318
	st	 r13,r11,lo16(_iter.88)
	align	 4
@L1331:
	or.u	 r10,r0,hi16(_altsgn.94)
@L1354:
	or.u	 r12,r0,0x3ff0
	or	 r13,r0,0
	st.d	 r12,r10,lo16(_altsgn.94)
	ld	 r24,r0,r22
	or	 r13,r0,1
	or.u	 r11,r0,hi16(_i__.91)
	cmp	 r12,r13,r24
	bb1.n	 gt,r12,@L1355
	st	 r13,r11,lo16(_i__.91)
	or.u	 r4,r0,0x3f80
	or	 r5,r0,r11
	or	 r6,r0,r10
@L1343:
	ld	 r7,r5,lo16(_i__.91)
	ld	 r13,r0,r22
	subu	 r12,r7,1
	subu	 r13,r13,1
	flt.ds	 r8,r12
	flt.ds	 r12,r13
	fdiv.ddd r8,r8,r12
	ld.d	 r10,r6,lo16(_altsgn.94)
	xor.u	 r12,r10,0x8000
	or	 r13,r0,r11
	fadd.dds r8,r8,r4
	st.d	 r12,r6,lo16(_altsgn.94)
	addu	 r13,r7,1
	st	 r13,r5,lo16(_i__.91)
	cmp	 r13,r13,r24
	fmul.ddd r10,r10,r8
	bb1.n	 le,r13,@L1343
	st.d	 r10,r23[r7]
	or	 r13,r0,1
@L1355:
	st	 r13,r0,r19
	or	 r2,r0,0
	or.u	 r12,r0,hi16(_jump.90)
	or	 r13,r0,5
	br.n	 @L1346
	st	 r13,r12,lo16(_jump.90)
	align	 4
@L1306:
	or.u	 r13,r0,hi16(_c__1)
	addu	 r25,r23,8
	or	 r20,r13,lo16(_c__1)
	or	 r3,r0,r25
	bsr.n	 _dasum_
	or	 r4,r0,r20
	ld	 r13,r0,r22
	lda.h	 r13,r13[r13]
	flt.ds	 r12,r13
	fdiv.ddd r2,r2,r12
	or.u	 r23,r0,hi16(_temp.89)
	fadd.ddd r2,r2,r2
	st.d	 r2,r23,lo16(_temp.89)
	ld.d	 r12,r0,r21
	fcmp.sdd r13,r2,r12
	bb1.n	 le,r13,@L1312
	or	 r2,r0,r22
	or	 r3,r0,r25
	or	 r4,r0,r20
	addu	 r5,r24,8
	bsr.n	 _dcopy_
	or	 r6,r0,r4
	ld.d	 r16,r23,lo16(_temp.89)
	st.d	 r16,r0,r21
@L1312:
	or	 r2,r0,0
	st	 r0,r0,r19
@L1346:
@Lte9:
	ld	 r1,r31,80
	ld.d	 r24,r31,72
	ld.d	 r22,r31,64
	ld.d	 r20,r31,56
	ld.d	 r18,r31,48
	ld.d	 r16,r31,40
	jmp.n	 r1
	addu	 r31,r31,96

	bss	 _acmn.98,8,8
	bss	 _acmx.99,8,8
	bss	 _ab.100,8,8
	bss	 _df.101,8,8
	bss	 _tb.102,8,8
	bss	 _sm.103,8,8
	bss	 _rt.104,8,8
	bss	 _adf.105,8,8
	align	 8
	global	 _dlae2_
_dlae2_:
	subu	 r31,r31,80
	st	 r1,r31,64
	st	 r19,r31,36
	st.d	 r24,r31,56
	st.d	 r22,r31,48
	st.d	 r20,r31,40
@Ltb10:
	ld.d	 r12,r0,r2
	ld.d	 r10,r0,r4
	or.u	 r9,r0,hi16(_sm.103)
	fadd.ddd r12,r12,r10
	st.d	 r12,r9,lo16(_sm.103)
	ld.d	 r12,r0,r2
	ld.d	 r10,r0,r4
	fsub.ddd r12,r12,r10
	or	 r10,r0,r12
	or	 r11,r0,r13
	or	 r22,r0,r3
	or	 r23,r0,r5
	or.u	 r13,r0,hi16(_df.101)
	or	 r19,r0,r6
	st.d	 r10,r13,lo16(_df.101)
	fcmp.sds r13,r10,r0
	bb1.n	 ge,r13,@L1373
	or.u	 r12,r0,hi16(_adf.105)
	xor.u	 r10,r10,0x8000
@L1373:
	st.d	 r10,r12,lo16(_adf.105)
	ld.d	 r12,r0,r22
	fadd.ddd r12,r12,r12
	or	 r10,r0,r12
	or	 r11,r0,r13
	or.u	 r13,r0,hi16(_tb.102)
	st.d	 r10,r13,lo16(_tb.102)
	fcmp.sds r13,r10,r0
	bb1.n	 ge,r13,@L1374
	or.u	 r12,r0,hi16(_ab.100)
	xor.u	 r10,r10,0x8000
@L1374:
	st.d	 r10,r12,lo16(_ab.100)
	ld.d	 r8,r0,r2
	fcmp.sds r13,r8,r0
	bb1	 ge,r13,@L1376
	xor.u	 r8,r8,0x8000
@L1376:
	ld.d	 r10,r0,r4
	fcmp.sds r13,r10,r0
	bb1	 lt,r13,@L1377
	fcmp.sdd r13,r8,r10
	bb1.n	 gt,r13,@L1392
	or.u	 r13,r0,hi16(_acmx.99)
	br	 @L1375
	align	 4
@L1377:
	xor.u	 r12,r10,0x8000
	or	 r13,r0,r11
	fcmp.sdd r13,r8,r12
	bb1.n	 le,r13,@L1375
	or.u	 r13,r0,hi16(_acmx.99)
@L1392:
	ld.d	 r20,r0,r2
	st.d	 r20,r13,lo16(_acmx.99)
	ld.d	 r20,r0,r4
	br.n	 @L1388
	or.u	 r12,r0,hi16(_acmn.98)
	align	 4
@L1375:
	or.u	 r13,r0,hi16(_acmx.99)
	ld.d	 r20,r0,r4
	or.u	 r12,r0,hi16(_acmn.98)
	st.d	 r20,r13,lo16(_acmx.99)
	ld.d	 r20,r0,r2
@L1388:
	st.d	 r20,r12,lo16(_acmn.98)
	or.u	 r24,r0,hi16(_adf.105)
	or.u	 r25,r0,hi16(_ab.100)
	ld.d	 r12,r24,lo16(_adf.105)
	ld.d	 r2,r25,lo16(_ab.100)
	fcmp.sdd r11,r12,r2
	bb1	 le,r11,@L1380
	fdiv.ddd r2,r2,r12
	fmul.ddd r2,r2,r2
	or.u	 r13,r0,0x3f80
	bsr.n	 _sqrt
	fadd.dsd r2,r13,r2
	ld.d	 r12,r24,lo16(_adf.105)
	br.n	 @L1393
	or.u	 r11,r0,hi16(_rt.104)
	align	 4
@L1380:
	bb0	 lt,r11,@L1382
	fdiv.ddd r2,r12,r2
	fmul.ddd r2,r2,r2
	or.u	 r13,r0,0x3f80
	fadd.dsd r2,r13,r2
	br	 @L1390
	align	 4
@L1382:
	or.u	 r2,r0,0x4000
	or	 r3,r0,0
@L1390:
	bsr	 _sqrt
	ld.d	 r12,r25,lo16(_ab.100)
	or.u	 r11,r0,hi16(_rt.104)
@L1393:
	fmul.ddd r12,r12,r2
	st.d	 r12,r11,lo16(_rt.104)
	or.u	 r13,r0,hi16(_sm.103)
	ld.d	 r8,r13,lo16(_sm.103)
	fcmp.sds r13,r8,r0
	bb0	 lt,r13,@L1384
	or.u	 r13,r0,hi16(_rt.104)
	ld.d	 r10,r13,lo16(_rt.104)
	fsub.ddd r10,r8,r10
	or.u	 r13,r0,0x3f00
	fmul.dds r10,r10,r13
	or.u	 r13,r0,hi16(_acmx.99)
	st.d	 r10,r0,r23
	ld.d	 r12,r13,lo16(_acmx.99)
	fdiv.ddd r12,r12,r10
	ld.d	 r6,r0,r22
	fdiv.ddd r10,r6,r10
	or.u	 r9,r0,hi16(_acmn.98)
	ld.d	 r8,r9,lo16(_acmn.98)
	fmul.ddd r12,r12,r8
	fmul.ddd r10,r10,r6
	fsub.ddd r12,r12,r10
	br.n	 @L1394
	st.d	 r12,r0,r19
	align	 4
@L1384:
	bb0.n	 gt,r13,@L1386
	or.u	 r13,r0,hi16(_rt.104)
	ld.d	 r10,r13,lo16(_rt.104)
	fadd.ddd r10,r8,r10
	or.u	 r13,r0,0x3f00
	fmul.dds r10,r10,r13
	or.u	 r13,r0,hi16(_acmx.99)
	st.d	 r10,r0,r23
	ld.d	 r12,r13,lo16(_acmx.99)
	fdiv.ddd r12,r12,r10
	ld.d	 r6,r0,r22
	fdiv.ddd r10,r6,r10
	or.u	 r9,r0,hi16(_acmn.98)
	ld.d	 r8,r9,lo16(_acmn.98)
	fmul.ddd r12,r12,r8
	fmul.ddd r10,r10,r6
	fsub.ddd r12,r12,r10
	br.n	 @L1394
	st.d	 r12,r0,r19
	align	 4
@L1386:
	or.u	 r10,r0,hi16(_rt.104)
	or.u	 r11,r0,0x3f00
	ld.d	 r12,r10,lo16(_rt.104)
	fmul.dds r12,r12,r11
	st.d	 r12,r0,r23
	or.u	 r11,r0,0xbf00
	ld.d	 r12,r10,lo16(_rt.104)
	fmul.dds r12,r12,r11
	st.d	 r12,r0,r19
@L1394:
@Lte10:
	ld	 r1,r31,64
	ld	 r19,r31,36
	ld.d	 r24,r31,56
	ld.d	 r22,r31,48
	or	 r2,r0,0
	ld.d	 r20,r31,40
	jmp.n	 r1
	addu	 r31,r31,80

	bss	 _acmn.108,8,8
	bss	 _acmx.109,8,8
	bss	 _ab.110,8,8
	bss	 _df.111,8,8
	bss	 _cs.112,8,8
	bss	 _ct.113,8,8
	bss	 _tb.114,8,8
	bss	 _sm.115,8,8
	bss	 _tn.116,8,8
	bss	 _rt.117,8,8
	bss	 _adf.118,8,8
	bss	 _acs.119,8,8
	bss	 _sgn1.120,4,4
	bss	 _sgn2.121,4,4
	align	 8
	global	 _dlaev2_
_dlaev2_:
	subu	 r31,r31,96
	st	 r1,r31,80
	st	 r17,r31,44
	st.d	 r24,r31,72
	st.d	 r22,r31,64
	st.d	 r20,r31,56
	st.d	 r18,r31,48
@Ltb11:
	ld.d	 r12,r0,r2
	ld.d	 r10,r0,r4
	or.u	 r9,r0,hi16(_sm.115)
	fadd.ddd r12,r12,r10
	st.d	 r12,r9,lo16(_sm.115)
	ld.d	 r12,r0,r2
	ld.d	 r10,r0,r4
	fsub.ddd r12,r12,r10
	or	 r10,r0,r12
	or	 r11,r0,r13
	or	 r22,r0,r3
	or	 r23,r0,r5
	or	 r21,r0,r6
	or	 r20,r0,r7
	or.u	 r13,r0,hi16(_df.111)
	or	 r17,r0,r8
	st.d	 r10,r13,lo16(_df.111)
	fcmp.sds r13,r10,r0
	bb1.n	 ge,r13,@L1420
	or.u	 r12,r0,hi16(_adf.118)
	xor.u	 r10,r10,0x8000
@L1420:
	st.d	 r10,r12,lo16(_adf.118)
	ld.d	 r12,r0,r22
	fadd.ddd r12,r12,r12
	or	 r10,r0,r12
	or	 r11,r0,r13
	or.u	 r13,r0,hi16(_tb.114)
	st.d	 r10,r13,lo16(_tb.114)
	fcmp.sds r13,r10,r0
	bb1.n	 ge,r13,@L1421
	or.u	 r12,r0,hi16(_ab.110)
	xor.u	 r10,r10,0x8000
@L1421:
	st.d	 r10,r12,lo16(_ab.110)
	ld.d	 r8,r0,r2
	fcmp.sds r13,r8,r0
	bb1	 ge,r13,@L1423
	xor.u	 r8,r8,0x8000
@L1423:
	ld.d	 r10,r0,r4
	fcmp.sds r13,r10,r0
	bb1	 lt,r13,@L1424
	fcmp.sdd r13,r8,r10
	bb1.n	 gt,r13,@L1448
	or.u	 r13,r0,hi16(_acmx.109)
	br	 @L1422
	align	 4
@L1424:
	xor.u	 r12,r10,0x8000
	or	 r13,r0,r11
	fcmp.sdd r13,r8,r12
	bb1.n	 le,r13,@L1422
	or.u	 r13,r0,hi16(_acmx.109)
@L1448:
	ld.d	 r18,r0,r2
	st.d	 r18,r13,lo16(_acmx.109)
	ld.d	 r18,r0,r4
	br.n	 @L1443
	or.u	 r12,r0,hi16(_acmn.108)
	align	 4
@L1422:
	or.u	 r13,r0,hi16(_acmx.109)
	ld.d	 r18,r0,r4
	or.u	 r12,r0,hi16(_acmn.108)
	st.d	 r18,r13,lo16(_acmx.109)
	ld.d	 r18,r0,r2
@L1443:
	st.d	 r18,r12,lo16(_acmn.108)
	or.u	 r24,r0,hi16(_adf.118)
	or.u	 r25,r0,hi16(_ab.110)
	ld.d	 r12,r24,lo16(_adf.118)
	ld.d	 r2,r25,lo16(_ab.110)
	fcmp.sdd r11,r12,r2
	bb1	 le,r11,@L1427
	fdiv.ddd r2,r2,r12
	fmul.ddd r2,r2,r2
	or.u	 r13,r0,0x3f80
	bsr.n	 _sqrt
	fadd.dsd r2,r13,r2
	ld.d	 r12,r24,lo16(_adf.118)
	br.n	 @L1449
	or.u	 r11,r0,hi16(_rt.117)
	align	 4
@L1427:
	bb0	 lt,r11,@L1429
	fdiv.ddd r2,r12,r2
	fmul.ddd r2,r2,r2
	or.u	 r13,r0,0x3f80
	fadd.dsd r2,r13,r2
	br	 @L1445
	align	 4
@L1429:
	or.u	 r2,r0,0x4000
	or	 r3,r0,0
@L1445:
	bsr	 _sqrt
	ld.d	 r12,r25,lo16(_ab.110)
	or.u	 r11,r0,hi16(_rt.117)
@L1449:
	fmul.ddd r12,r12,r2
	st.d	 r12,r11,lo16(_rt.117)
	or.u	 r13,r0,hi16(_sm.115)
	ld.d	 r10,r13,lo16(_sm.115)
	fcmp.sds r13,r10,r0
	bb0	 lt,r13,@L1431
	or.u	 r13,r0,hi16(_rt.117)
	ld.d	 r12,r13,lo16(_rt.117)
	fsub.ddd r12,r10,r12
	or.u	 r11,r0,0x3f00
	fmul.dds r12,r12,r11
	st.d	 r12,r0,r23
	or.u	 r12,r0,hi16(_sgn1.120)
	br.n	 @L1446
	subu	 r13,r0,1
	align	 4
@L1431:
	bb1.n	 le,r13,@L1433
	or.u	 r13,r0,hi16(_rt.117)
	ld.d	 r12,r13,lo16(_rt.117)
	fadd.ddd r12,r10,r12
	or.u	 r11,r0,0x3f00
	fmul.dds r12,r12,r11
	st.d	 r12,r0,r23
	or.u	 r12,r0,hi16(_sgn1.120)
	or	 r13,r0,1
@L1446:
	st	 r13,r12,lo16(_sgn1.120)
	or.u	 r13,r0,hi16(_acmx.109)
	ld.d	 r8,r0,r23
	ld.d	 r12,r13,lo16(_acmx.109)
	fdiv.ddd r12,r12,r8
	ld.d	 r6,r0,r22
	fdiv.ddd r8,r6,r8
	or.u	 r11,r0,hi16(_acmn.108)
	ld.d	 r10,r11,lo16(_acmn.108)
	fmul.ddd r12,r12,r10
	fmul.ddd r8,r8,r6
	fsub.ddd r12,r12,r8
	br.n	 @L1432
	st.d	 r12,r0,r21
	align	 4
@L1433:
	or.u	 r10,r0,hi16(_rt.117)
	or.u	 r11,r0,0x3f00
	ld.d	 r12,r10,lo16(_rt.117)
	fmul.dds r12,r12,r11
	st.d	 r12,r0,r23
	or.u	 r11,r0,0xbf00
	ld.d	 r12,r10,lo16(_rt.117)
	fmul.dds r12,r12,r11
	st.d	 r12,r0,r21
	or.u	 r12,r0,hi16(_sgn1.120)
	or	 r13,r0,1
	st	 r13,r12,lo16(_sgn1.120)
@L1432:
	or.u	 r13,r0,hi16(_df.111)
	ld.d	 r8,r13,lo16(_df.111)
	fcmp.sds r13,r8,r0
	bb1.n	 lt,r13,@L1435
	or.u	 r13,r0,hi16(_rt.117)
	ld.d	 r12,r13,lo16(_rt.117)
	or.u	 r10,r0,hi16(_sgn2.121)
	or	 r11,r0,1
	st	 r11,r10,lo16(_sgn2.121)
	fadd.ddd r12,r8,r12
	br.n	 @L1447
	or.u	 r11,r0,hi16(_cs.112)
	align	 4
@L1435:
	ld.d	 r12,r13,lo16(_rt.117)
	or.u	 r10,r0,hi16(_sgn2.121)
	subu	 r11,r0,1
	st	 r11,r10,lo16(_sgn2.121)
	or.u	 r11,r0,hi16(_cs.112)
	fsub.ddd r12,r8,r12
@L1447:
	st.d	 r12,r11,lo16(_cs.112)
	or.u	 r13,r0,hi16(_cs.112)
	or	 r4,r0,0
	or	 r5,r0,0
	ld.d	 r10,r13,lo16(_cs.112)
	or.u	 r12,r0,hi16(_acs.119)
	fcmp.sds r13,r10,r0
	or	 r8,r0,r10
	bb1.n	 ge,r13,@L1437
	or	 r9,r0,r11
	xor.u	 r8,r10,0x8000
	or	 r9,r0,r11
@L1437:
	or.u	 r13,r0,hi16(_ab.110)
	ld.d	 r6,r13,lo16(_ab.110)
	fcmp.sdd r13,r8,r6
	bb1.n	 le,r13,@L1438
	st.d	 r8,r12,lo16(_acs.119)
	or.u	 r13,r0,hi16(_tb.114)
	ld.d	 r12,r13,lo16(_tb.114)
	xor.u	 r12,r12,0x8000
	fdiv.ddd r12,r12,r10
	fmul.ddd r2,r12,r12
	or.u	 r25,r0,0x3f80
	fadd.dsd r2,r25,r2
	or.u	 r24,r0,hi16(_ct.113)
	bsr.n	 _sqrt
	st.d	 r12,r24,lo16(_ct.113)
	fdiv.dsd r2,r25,r2
	st.d	 r2,r0,r17
	ld.d	 r12,r24,lo16(_ct.113)
	fmul.ddd r12,r12,r2
	br.n	 @L1439
	st.d	 r12,r0,r20
	align	 4
@L1438:
	fcmp.sds r13,r6,r0
	bb1.n	 ne,r13,@L1440
	or.u	 r13,r0,hi16(_tb.114)
	or.u	 r12,r0,0x3ff0
	or	 r13,r0,0
	st.d	 r12,r0,r20
	br.n	 @L1439
	st.d	 r4,r0,r17
	align	 4
@L1440:
	ld.d	 r12,r13,lo16(_tb.114)
	xor.u	 r10,r10,0x8000
	fdiv.ddd r10,r10,r12
	fmul.ddd r2,r10,r10
	or.u	 r25,r0,0x3f80
	fadd.dsd r2,r25,r2
	or.u	 r24,r0,hi16(_tn.116)
	bsr.n	 _sqrt
	st.d	 r10,r24,lo16(_tn.116)
	fdiv.dsd r2,r25,r2
	st.d	 r2,r0,r20
	ld.d	 r12,r24,lo16(_tn.116)
	fmul.ddd r12,r12,r2
	st.d	 r12,r0,r17
@L1439:
	or.u	 r13,r0,hi16(_sgn1.120)
	or.u	 r12,r0,hi16(_sgn2.121)
	ld	 r13,r13,lo16(_sgn1.120)
	ld	 r12,r12,lo16(_sgn2.121)
	cmp	 r13,r13,r12
	bb1.n	 ne,r13,@L1442
	or.u	 r13,r0,hi16(_tn.116)
	ld.d	 r18,r0,r20
	st.d	 r18,r13,lo16(_tn.116)
	ld.d	 r10,r0,r17
	xor.u	 r10,r10,0x8000
	st.d	 r10,r0,r20
	ld.d	 r18,r13,lo16(_tn.116)
	st.d	 r18,r0,r17
@L1442:
@Lte11:
	ld	 r1,r31,80
	ld	 r17,r31,44
	ld.d	 r24,r31,72
	ld.d	 r22,r31,64
	ld.d	 r20,r31,56
	or	 r2,r0,0
	ld.d	 r18,r31,48
	jmp.n	 r1
	addu	 r31,r31,96

data
	align	 4
_first.124:
	word	 1
	bss	 _base.125,8,8
	bss	 _beta.126,4,4
	bss	 _emin.127,8,8
	bss	 _prec.128,8,8
	bss	 _emax.129,8,8
	bss	 _imin.130,4,4
	bss	 _imax.131,4,4
	bss	 _lrnd.132,4,4
	bss	 _rmin.133,8,8
	bss	 _rmax.134,8,8
	bss	 _t.135,8,8
	bss	 _rmach.136,8,8
	bss	 _small.137,8,8
	bss	 _sfmin.138,8,8
	bss	 _it.139,4,4
	bss	 _rnd.140,8,8
	bss	 _eps.141,8,8
	align	 8
@LC100:
	string	 "E\000"
	align	 8
@LC101:
	string	 "S\000"
	align	 8
@LC102:
	string	 "B\000"
	align	 8
@LC103:
	string	 "P\000"
	align	 8
@LC104:
	string	 "N\000"
	align	 8
@LC105:
	string	 "R\000"
	align	 8
@LC106:
	string	 "M\000"
	align	 8
@LC107:
	string	 "U\000"
	align	 8
@LC108:
	string	 "L\000"
	align	 8
@LC109:
	string	 "O\000"
text
	align	 8
	global	 _dlamch_
_dlamch_:
	or.u	 r12,r0,hi16(_first.124)
	ld	 r13,r12,lo16(_first.124)
	subu	 r31,r31,80
	st	 r1,r31,64
	st	 r19,r31,36
	st.d	 r24,r31,56
	st.d	 r22,r31,48
	or	 r22,r0,r2
	bcnd.n	 eq0,r13,@L1475
	st.d	 r20,r31,40
@Ltb12:
	or.u	 r25,r0,hi16(_beta.126)
	or.u	 r23,r0,hi16(_it.139)
	or.u	 r24,r0,hi16(_lrnd.132)
	or.u	 r19,r0,hi16(_eps.141)
	or.u	 r6,r0,hi16(_imin.130)
	or.u	 r7,r0,hi16(_rmin.133)
	or.u	 r8,r0,hi16(_imax.131)
	or.u	 r9,r0,hi16(_rmax.134)
	or	 r2,r25,lo16(_beta.126)
	or	 r3,r23,lo16(_it.139)
	or	 r4,r24,lo16(_lrnd.132)
	or	 r5,r19,lo16(_eps.141)
	or	 r6,r6,lo16(_imin.130)
	or	 r7,r7,lo16(_rmin.133)
	or	 r8,r8,lo16(_imax.131)
	or	 r9,r9,lo16(_rmax.134)
	bsr.n	 _dlamc2_
	st	 r0,r12,lo16(_first.124)
	ld	 r13,r25,lo16(_beta.126)
	ld	 r8,r23,lo16(_it.139)
	ld	 r10,r24,lo16(_lrnd.132)
	or.u	 r9,r0,hi16(_base.125)
	or.u	 r11,r0,hi16(_t.135)
	or	 r2,r9,lo16(_base.125)
	flt.ds	 r12,r13
	st.d	 r12,r9,lo16(_base.125)
	flt.ds	 r12,r8
	bcnd.n	 eq0,r10,@L1476
	st.d	 r12,r11,lo16(_t.135)
	or.u	 r10,r0,0x3ff0
	or	 r11,r0,0
	addu	 r3,r31,72
	or.u	 r12,r0,hi16(_rnd.140)
	or	 r13,r0,1
	st.d	 r10,r12,lo16(_rnd.140)
	subu	 r13,r13,r8
	bsr.n	 _pow_di
	st	 r13,r31,72
	or.u	 r12,r0,0x4000
	or	 r13,r0,0
	fdiv.ddd r2,r2,r12
	br.n	 @L1500
	st.d	 r2,r19,lo16(_eps.141)
	align	 4
@L1476:
	or	 r10,r0,0
	or	 r11,r0,0
	addu	 r3,r31,72
	or.u	 r12,r0,hi16(_rnd.140)
	or	 r13,r0,1
	st.d	 r10,r12,lo16(_rnd.140)
	subu	 r13,r13,r8
	bsr.n	 _pow_di
	st	 r13,r31,72
	st.d	 r2,r19,lo16(_eps.141)
@L1500:
	or.u	 r13,r0,hi16(_rmax.134)
	or.u	 r2,r0,0x3f80
	ld.d	 r12,r13,lo16(_rmax.134)
	fdiv.dsd r6,r2,r12
	or.u	 r11,r0,hi16(_rmin.133)
	ld.d	 r8,r11,lo16(_rmin.133)
	or.u	 r13,r0,hi16(_eps.141)
	or.u	 r12,r0,hi16(_base.125)
	ld.d	 r4,r13,lo16(_eps.141)
	ld.d	 r12,r12,lo16(_base.125)
	or.u	 r3,r0,hi16(_sfmin.138)
	or.u	 r11,r0,hi16(_prec.128)
	st.d	 r8,r3,lo16(_sfmin.138)
	fmul.ddd r12,r4,r12
	st.d	 r12,r11,lo16(_prec.128)
	or.u	 r13,r0,hi16(_imin.130)
	or.u	 r12,r0,hi16(_imax.131)
	ld	 r13,r13,lo16(_imin.130)
	ld	 r10,r12,lo16(_imax.131)
	or.u	 r11,r0,hi16(_emin.127)
	flt.ds	 r12,r13
	st.d	 r12,r11,lo16(_emin.127)
	flt.ds	 r12,r10
	or.u	 r11,r0,hi16(_emax.129)
	st.d	 r12,r11,lo16(_emax.129)
	or.u	 r13,r0,hi16(_small.137)
	fcmp.sdd r12,r6,r8
	bb1.n	 lt,r12,@L1475
	st.d	 r6,r13,lo16(_small.137)
	fadd.dds r12,r4,r2
	fmul.ddd r12,r6,r12
	st.d	 r12,r3,lo16(_sfmin.138)
@L1475:
	or	 r2,r0,r22
	or	 r4,r0,1
	or.u	 r3,r0,hi16(@LC100)
	or	 r5,r0,1
	bsr.n	 _lsame_
	or	 r3,r3,lo16(@LC100)
	bcnd.n	 eq0,r2,@L1479
	or.u	 r13,r0,hi16(_eps.141)
	ld.d	 r20,r13,lo16(_eps.141)
	br.n	 @L1499
	or.u	 r12,r0,hi16(_rmach.136)
	align	 4
@L1479:
	or	 r2,r0,r22
	or	 r4,r0,1
	or.u	 r3,r0,hi16(@LC101)
	or	 r5,r0,1
	bsr.n	 _lsame_
	or	 r3,r3,lo16(@LC101)
	bcnd.n	 eq0,r2,@L1481
	or.u	 r13,r0,hi16(_sfmin.138)
	ld.d	 r20,r13,lo16(_sfmin.138)
	br.n	 @L1499
	or.u	 r12,r0,hi16(_rmach.136)
	align	 4
@L1481:
	or	 r2,r0,r22
	or	 r4,r0,1
	or.u	 r3,r0,hi16(@LC102)
	or	 r5,r0,1
	bsr.n	 _lsame_
	or	 r3,r3,lo16(@LC102)
	bcnd.n	 eq0,r2,@L1483
	or.u	 r13,r0,hi16(_base.125)
	ld.d	 r20,r13,lo16(_base.125)
	br.n	 @L1499
	or.u	 r12,r0,hi16(_rmach.136)
	align	 4
@L1483:
	or	 r2,r0,r22
	or	 r4,r0,1
	or.u	 r3,r0,hi16(@LC103)
	or	 r5,r0,1
	bsr.n	 _lsame_
	or	 r3,r3,lo16(@LC103)
	bcnd.n	 eq0,r2,@L1485
	or.u	 r13,r0,hi16(_prec.128)
	ld.d	 r20,r13,lo16(_prec.128)
	br.n	 @L1499
	or.u	 r12,r0,hi16(_rmach.136)
	align	 4
@L1485:
	or	 r2,r0,r22
	or	 r4,r0,1
	or.u	 r3,r0,hi16(@LC104)
	or	 r5,r0,1
	bsr.n	 _lsame_
	or	 r3,r3,lo16(@LC104)
	bcnd.n	 eq0,r2,@L1487
	or.u	 r13,r0,hi16(_t.135)
	ld.d	 r20,r13,lo16(_t.135)
	br.n	 @L1499
	or.u	 r12,r0,hi16(_rmach.136)
	align	 4
@L1487:
	or	 r2,r0,r22
	or	 r4,r0,1
	or.u	 r3,r0,hi16(@LC105)
	or	 r5,r0,1
	bsr.n	 _lsame_
	or	 r3,r3,lo16(@LC105)
	bcnd.n	 eq0,r2,@L1489
	or.u	 r13,r0,hi16(_rnd.140)
	ld.d	 r20,r13,lo16(_rnd.140)
	br.n	 @L1499
	or.u	 r12,r0,hi16(_rmach.136)
	align	 4
@L1489:
	or	 r2,r0,r22
	or	 r4,r0,1
	or.u	 r3,r0,hi16(@LC106)
	or	 r5,r0,1
	bsr.n	 _lsame_
	or	 r3,r3,lo16(@LC106)
	bcnd.n	 eq0,r2,@L1491
	or.u	 r13,r0,hi16(_emin.127)
	ld.d	 r20,r13,lo16(_emin.127)
	br.n	 @L1499
	or.u	 r12,r0,hi16(_rmach.136)
	align	 4
@L1491:
	or	 r2,r0,r22
	or	 r4,r0,1
	or.u	 r3,r0,hi16(@LC107)
	or	 r5,r0,1
	bsr.n	 _lsame_
	or	 r3,r3,lo16(@LC107)
	bcnd.n	 eq0,r2,@L1493
	or.u	 r13,r0,hi16(_rmin.133)
	ld.d	 r20,r13,lo16(_rmin.133)
	br.n	 @L1499
	or.u	 r12,r0,hi16(_rmach.136)
	align	 4
@L1493:
	or	 r2,r0,r22
	or	 r4,r0,1
	or.u	 r3,r0,hi16(@LC108)
	or	 r5,r0,1
	bsr.n	 _lsame_
	or	 r3,r3,lo16(@LC108)
	bcnd.n	 eq0,r2,@L1495
	or.u	 r13,r0,hi16(_emax.129)
	ld.d	 r20,r13,lo16(_emax.129)
	br.n	 @L1499
	or.u	 r12,r0,hi16(_rmach.136)
	align	 4
@L1495:
	or	 r2,r0,r22
	or	 r4,r0,1
	or.u	 r3,r0,hi16(@LC109)
	or	 r5,r0,1
	bsr.n	 _lsame_
	or	 r3,r3,lo16(@LC109)
	bcnd.n	 eq0,r2,@L1480
	or.u	 r12,r0,hi16(_rmach.136)
	or.u	 r13,r0,hi16(_rmax.134)
	ld.d	 r20,r13,lo16(_rmax.134)
@L1499:
	st.d	 r20,r12,lo16(_rmach.136)
@L1480:
@Lte12:
	ld	 r1,r31,64
	ld	 r19,r31,36
	ld.d	 r24,r31,56
	or.u	 r13,r0,hi16(_rmach.136)
	ld.d	 r22,r31,48
	ld.d	 r2,r13,lo16(_rmach.136)
	ld.d	 r20,r31,40
	jmp.n	 r1
	addu	 r31,r31,80

data
	align	 4
_first.144:
	word	 1
	bss	 _lrnd.145,4,4
	bss	 _a.146,8,8
	bss	 _b.147,8,8
	bss	 _c__.148,8,8
	bss	 _f.149,8,8
	bss	 _lbeta.150,4,4
	bss	 _savec.151,8,8
	bss	 _lieee1.152,4,4
	bss	 _t1.153,8,8
	bss	 _t2.154,8,8
	bss	 _lt.155,4,4
	bss	 _one.156,8,8
	bss	 _qtr.157,8,8
text
	align	 8
	global	 _dlamc1_
_dlamc1_:
	or.u	 r11,r0,hi16(_first.144)
	ld	 r13,r11,lo16(_first.144)
	subu	 r31,r31,96
	st.d	 r20,r31,40
	or	 r21,r0,r2
	st	 r1,r31,64
	or	 r20,r0,r3
	st.d	 r18,r31,32
	or	 r19,r0,r4
	st.d	 r24,r31,56
	or	 r18,r0,r5
	bcnd.n	 eq0,r13,@L1514
	st.d	 r22,r31,48
@Ltb13:
	or.u	 r12,r0,0x3ff0
	or	 r13,r0,0
	st	 r0,r11,lo16(_first.144)
	or.u	 r11,r0,hi16(_one.156)
	st.d	 r12,r11,lo16(_one.156)
	or.u	 r11,r0,hi16(_a.146)
	st.d	 r12,r11,lo16(_a.146)
	or.u	 r11,r0,hi16(_c__.148)
	st.d	 r12,r11,lo16(_c__.148)
@L1515:
	or.u	 r24,r0,hi16(_c__.148)
	or.u	 r9,r0,hi16(_one.156)
	ld.d	 r10,r24,lo16(_c__.148)
	ld.d	 r12,r9,lo16(_one.156)
	or	 r23,r24,lo16(_c__.148)
	fcmp.sdd r13,r10,r12
	bb1.n	 ne,r13,@L1516
	or	 r3,r9,lo16(_one.156)
	or.u	 r25,r0,hi16(_a.146)
	ld.d	 r12,r25,lo16(_a.146)
	or	 r2,r25,lo16(_a.146)
	fadd.ddd r12,r12,r12
	bsr.n	 _dlamc3_
	st.d	 r12,r25,lo16(_a.146)
	ld.d	 r12,r25,lo16(_a.146)
	st.d	 r2,r24,lo16(_c__.148)
	or	 r2,r0,r23
	addu	 r3,r31,72
	xor.u	 r12,r12,0x8000
	bsr.n	 _dlamc3_
	st.d	 r12,r31,72
	br.n	 @L1515
	st.d	 r2,r24,lo16(_c__.148)
	align	 4
@L1516:
	or.u	 r12,r0,0x3ff0
	or	 r13,r0,0
	or.u	 r2,r0,hi16(_a.146)
	or.u	 r11,r0,hi16(_b.147)
	or	 r2,r2,lo16(_a.146)
	or	 r3,r11,lo16(_b.147)
@L1525:
	bsr.n	 _dlamc3_
	st.d	 r12,r11,lo16(_b.147)
	st.d	 r2,r24,lo16(_c__.148)
	or.u	 r24,r0,hi16(_c__.148)
	or.u	 r23,r0,hi16(_a.146)
	ld.d	 r6,r24,lo16(_c__.148)
	ld.d	 r8,r23,lo16(_a.146)
	or	 r2,r24,lo16(_c__.148)
	fcmp.sdd r13,r6,r8
	bb1.n	 ne,r13,@L1518
	or	 r22,r23,lo16(_a.146)
	or.u	 r11,r0,hi16(_b.147)
	ld.d	 r12,r11,lo16(_b.147)
	or	 r2,r0,r22
	fadd.ddd r12,r12,r12
	br.n	 @L1525
	or	 r3,r11,lo16(_b.147)
	align	 4
@L1518:
	or.u	 r11,r0,hi16(_one.156)
	or.u	 r12,r0,0x4010
	or	 r13,r0,0
	ld.d	 r10,r11,lo16(_one.156)
	fdiv.ddd r10,r10,r12
	xor.u	 r12,r8,0x8000
	or	 r13,r0,r9
	st.d	 r12,r31,72
	or.u	 r13,r0,hi16(_savec.151)
	or.u	 r25,r0,hi16(_qtr.157)
	st.d	 r6,r13,lo16(_savec.151)
	addu	 r3,r31,72
	bsr.n	 _dlamc3_
	st.d	 r10,r25,lo16(_qtr.157)
	ld.d	 r12,r25,lo16(_qtr.157)
	fadd.ddd r12,r2,r12
	trnc.sd	 r5,r12
	flt.ds	 r10,r5
	or.u	 r8,r0,0x4000
	or	 r9,r0,0
	fdiv.ddd r8,r10,r8
	or.u	 r12,r0,0x4059
	or	 r13,r0,0
	xor.u	 r6,r10,0x8000
	or	 r7,r0,r11
	fdiv.ddd r6,r6,r12
	st.d	 r2,r24,lo16(_c__.148)
	or.u	 r13,r0,hi16(_lbeta.150)
	st	 r5,r13,lo16(_lbeta.150)
	or.u	 r13,r0,hi16(_b.147)
	st.d	 r10,r13,lo16(_b.147)
	addu	 r2,r31,72
	st.d	 r8,r31,72
	addu	 r3,r31,80
	bsr.n	 _dlamc3_
	st.d	 r6,r31,80
	or.u	 r13,r0,hi16(_f.149)
	st.d	 r2,r13,lo16(_f.149)
	or	 r2,r13,lo16(_f.149)
	bsr.n	 _dlamc3_
	or	 r3,r0,r22
	ld.d	 r12,r23,lo16(_a.146)
	fcmp.sdd r13,r2,r12
	bb1.n	 ne,r13,@L1519
	st.d	 r2,r24,lo16(_c__.148)
	or.u	 r12,r0,hi16(_lrnd.145)
	or	 r13,r0,1
	br.n	 @L1520
	st	 r13,r12,lo16(_lrnd.145)
	align	 4
@L1519:
	or.u	 r13,r0,hi16(_lrnd.145)
	st	 r0,r13,lo16(_lrnd.145)
@L1520:
	or.u	 r13,r0,hi16(_b.147)
	or.u	 r8,r0,0x4000
	or	 r9,r0,0
	ld.d	 r10,r13,lo16(_b.147)
	fdiv.ddd r8,r10,r8
	or.u	 r12,r0,0x4059
	or	 r13,r0,0
	fdiv.ddd r10,r10,r12
	addu	 r2,r31,72
	st.d	 r8,r31,72
	addu	 r3,r31,80
	bsr.n	 _dlamc3_
	st.d	 r10,r31,80
	or.u	 r13,r0,hi16(_f.149)
	or.u	 r25,r0,hi16(_a.146)
	st.d	 r2,r13,lo16(_f.149)
	or	 r2,r13,lo16(_f.149)
	bsr.n	 _dlamc3_
	or	 r3,r25,lo16(_a.146)
	or.u	 r11,r0,hi16(_lrnd.145)
	ld	 r12,r11,lo16(_lrnd.145)
	or.u	 r13,r0,hi16(_c__.148)
	bcnd.n	 eq0,r12,@L1521
	st.d	 r2,r13,lo16(_c__.148)
	ld.d	 r12,r25,lo16(_a.146)
	fcmp.sdd r13,r2,r12
	bb1	 ne,r13,@L1521
	st	 r0,r11,lo16(_lrnd.145)
@L1521:
	or.u	 r23,r0,hi16(_b.147)
	or.u	 r24,r0,0x4000
	or	 r25,r0,0
	ld.d	 r12,r23,lo16(_b.147)
	fdiv.ddd r12,r12,r24
	or.u	 r22,r0,hi16(_a.146)
	addu	 r2,r31,72
	or	 r3,r22,lo16(_a.146)
	bsr.n	 _dlamc3_
	st.d	 r12,r31,72
	ld.d	 r12,r23,lo16(_b.147)
	fdiv.ddd r12,r12,r24
	or.u	 r25,r0,hi16(_t1.153)
	or.u	 r24,r0,hi16(_savec.151)
	st.d	 r2,r25,lo16(_t1.153)
	addu	 r2,r31,72
	or	 r3,r24,lo16(_savec.151)
	bsr.n	 _dlamc3_
	st.d	 r12,r31,72
	ld.d	 r8,r25,lo16(_t1.153)
	ld.d	 r10,r22,lo16(_a.146)
	or.u	 r13,r0,hi16(_t2.154)
	or	 r7,r0,0
	st.d	 r2,r13,lo16(_t2.154)
	or.u	 r13,r0,hi16(_lieee1.152)
	fcmp.sdd r12,r8,r10
	bb1.n	 ne,r12,@L1522
	or	 r9,r13,lo16(_lieee1.152)
	ld.d	 r12,r24,lo16(_savec.151)
	fcmp.sdd r13,r2,r12
	bb1.n	 le,r13,@L1522
	or.u	 r13,r0,hi16(_lrnd.145)
	ld	 r13,r13,lo16(_lrnd.145)
	cmp	 r13,r13,0
	extu	 r7,r13,1<ne>
@L1522:
	or.u	 r10,r0,0x3ff0
	or	 r11,r0,0
	or.u	 r13,r0,hi16(_lt.155)
	st	 r7,r0,r9
	st	 r0,r13,lo16(_lt.155)
	or.u	 r13,r0,hi16(_a.146)
	st.d	 r10,r13,lo16(_a.146)
	or.u	 r13,r0,hi16(_c__.148)
	st.d	 r10,r13,lo16(_c__.148)
@L1523:
	or.u	 r24,r0,hi16(_c__.148)
	or.u	 r9,r0,hi16(_one.156)
	ld.d	 r10,r24,lo16(_c__.148)
	ld.d	 r12,r9,lo16(_one.156)
	or	 r23,r24,lo16(_c__.148)
	fcmp.sdd r13,r10,r12
	bb0.n	 eq,r13,@L1514
	or	 r3,r9,lo16(_one.156)
	or.u	 r13,r0,hi16(_lbeta.150)
	or.u	 r10,r0,hi16(_lt.155)
	ld	 r13,r13,lo16(_lbeta.150)
	or.u	 r25,r0,hi16(_a.146)
	ld	 r11,r10,lo16(_lt.155)
	flt.ds	 r8,r13
	ld.d	 r12,r25,lo16(_a.146)
	or	 r2,r25,lo16(_a.146)
	addu	 r11,r11,1
	st	 r11,r10,lo16(_lt.155)
	fmul.ddd r12,r12,r8
	bsr.n	 _dlamc3_
	st.d	 r12,r25,lo16(_a.146)
	ld.d	 r12,r25,lo16(_a.146)
	st.d	 r2,r24,lo16(_c__.148)
	or	 r2,r0,r23
	addu	 r3,r31,72
	xor.u	 r12,r12,0x8000
	bsr.n	 _dlamc3_
	st.d	 r12,r31,72
	br.n	 @L1523
	st.d	 r2,r24,lo16(_c__.148)
	align	 4
@L1514:
	or.u	 r13,r0,hi16(_lbeta.150)
	ld	 r13,r13,lo16(_lbeta.150)
	st	 r13,r0,r21
	or.u	 r13,r0,hi16(_lt.155)
	ld	 r13,r13,lo16(_lt.155)
	st	 r13,r0,r20
	or.u	 r13,r0,hi16(_lrnd.145)
	ld	 r13,r13,lo16(_lrnd.145)
	st	 r13,r0,r19
	or.u	 r13,r0,hi16(_lieee1.152)
	ld	 r13,r13,lo16(_lieee1.152)
	st	 r13,r0,r18
@Lte13:
	ld	 r1,r31,64
	ld.d	 r24,r31,56
	ld.d	 r22,r31,48
	ld.d	 r20,r31,40
	or	 r2,r0,0
	ld.d	 r18,r31,32
	jmp.n	 r1
	addu	 r31,r31,96

data
	align	 4
_first.160:
	word	 1
	align	 4
_iwarn.161:
	word	 0
	align	 8
_fmt_9999.162:
	string	 "(//\002 WARNING. The value EMIN may be incorrect:"
	string	 "-\002,\002  EMIN = \002,i8,/\002 If, after inspec"
	string	 "tion, the value EMIN looks\002,\002 acceptable pl"
	string	 "ease comment out \002,/\002 the IF block as marke"
	string	 "d within the code of routine\002,\002 DLAMC2,\002"
	string	 ",/\002 otherwise supply EMIN explicitly.\002,/)\000"
	bss	 _ieee.163,4,4
	bss	 _half.164,8,8
	bss	 _lrnd.165,4,4
	bss	 _leps.166,8,8
	bss	 _zero.167,8,8
	bss	 _a.168,8,8
	bss	 _b.169,8,8
	bss	 _c__.170,8,8
	bss	 _i__.171,4,4
	bss	 _lbeta.172,4,4
	bss	 _rbase.173,8,8
	bss	 _lemin.174,4,4
	bss	 _lemax.175,4,4
	bss	 _gnmin.176,4,4
	bss	 _small.177,8,8
	bss	 _gpmin.178,4,4
	bss	 _third.179,8,8
	bss	 _lrmin.180,8,8
	bss	 _lrmax.181,8,8
	bss	 _sixth.182,8,8
	bss	 _lieee1.183,4,4
	bss	 _lt.184,4,4
	bss	 _ngnmin.185,4,4
	bss	 _ngpmin.186,4,4
	bss	 _one.187,8,8
	bss	 _two.188,8,8
	align	 4
_io___156.189:
	word	 0
	word	 6
	word	 0
	word	 _fmt_9999.162
	word	 0
text
	align	 8
	global	 _dlamc2_
_dlamc2_:
	or.u	 r12,r0,hi16(_first.160)
	ld	 r13,r12,lo16(_first.160)
	subu	 r31,r31,192
	st	 r1,r31,80
	st.d	 r24,r31,72
	st.d	 r22,r31,64
	st.d	 r20,r31,56
	st.d	 r18,r31,48
	st.d	 r16,r31,40
	st.d	 r14,r31,32
@Ltb14:
	st	 r3,r31,180
	st	 r4,r31,172
	st	 r5,r31,164
	st	 r6,r31,132
	st	 r7,r31,140
	st	 r8,r31,148
	or	 r17,r0,r2
	bcnd.n	 eq0,r13,@L1582
	st	 r9,r31,156
	or	 r10,r0,0
	or	 r11,r0,0
	or.u	 r6,r0,0x3ff0
	or	 r7,r0,0
	or.u	 r8,r0,0x4000
	or	 r9,r0,0
	st	 r0,r12,lo16(_first.160)
	or.u	 r13,r0,hi16(_zero.167)
	or.u	 r12,r0,hi16(_lt.184)
	st.d	 r10,r13,lo16(_zero.167)
	or.u	 r13,r0,hi16(_one.187)
	or.u	 r10,r0,hi16(_first.144)
	or	 r20,r12,lo16(_lt.184)
	st.d	 r6,r13,lo16(_one.187)
	or.u	 r13,r0,hi16(_two.188)
	or.u	 r12,r0,hi16(_lieee1.183)
	st.d	 r8,r13,lo16(_two.188)
	or.u	 r13,r0,hi16(_lbeta.172)
	ld	 r11,r10,lo16(_first.144)
	or	 r21,r13,lo16(_lbeta.172)
	or.u	 r13,r0,hi16(_lrnd.165)
	or	 r18,r12,lo16(_lieee1.183)
	bcnd.n	 eq0,r11,@L1584
	or	 r19,r13,lo16(_lrnd.165)
	or.u	 r13,r0,hi16(_one.156)
	st	 r0,r10,lo16(_first.144)
	st.d	 r6,r13,lo16(_one.156)
	or.u	 r13,r0,hi16(_a.146)
	st.d	 r6,r13,lo16(_a.146)
	or.u	 r13,r0,hi16(_c__.148)
	st.d	 r6,r13,lo16(_c__.148)
@L1585:
	or.u	 r24,r0,hi16(_c__.148)
	or.u	 r9,r0,hi16(_one.156)
	ld.d	 r10,r24,lo16(_c__.148)
	ld.d	 r12,r9,lo16(_one.156)
	or	 r23,r24,lo16(_c__.148)
	fcmp.sdd r13,r10,r12
	bb1.n	 ne,r13,@L1586
	or	 r3,r9,lo16(_one.156)
	or.u	 r25,r0,hi16(_a.146)
	ld.d	 r12,r25,lo16(_a.146)
	or	 r2,r25,lo16(_a.146)
	fadd.ddd r12,r12,r12
	bsr.n	 _dlamc3_
	st.d	 r12,r25,lo16(_a.146)
	ld.d	 r12,r25,lo16(_a.146)
	st.d	 r2,r24,lo16(_c__.148)
	or	 r2,r0,r23
	addu	 r3,r31,88
	xor.u	 r12,r12,0x8000
	bsr.n	 _dlamc3_
	st.d	 r12,r31,88
	br.n	 @L1585
	st.d	 r2,r24,lo16(_c__.148)
	align	 4
@L1586:
	or.u	 r12,r0,0x3ff0
	or	 r13,r0,0
	or.u	 r2,r0,hi16(_a.146)
	or.u	 r11,r0,hi16(_b.147)
	or	 r2,r2,lo16(_a.146)
	or	 r3,r11,lo16(_b.147)
@L1638:
	bsr.n	 _dlamc3_
	st.d	 r12,r11,lo16(_b.147)
	st.d	 r2,r24,lo16(_c__.148)
	or.u	 r24,r0,hi16(_c__.148)
	or.u	 r23,r0,hi16(_a.146)
	ld.d	 r6,r24,lo16(_c__.148)
	ld.d	 r8,r23,lo16(_a.146)
	or	 r2,r24,lo16(_c__.148)
	fcmp.sdd r13,r6,r8
	bb1.n	 ne,r13,@L1588
	or	 r22,r23,lo16(_a.146)
	or.u	 r11,r0,hi16(_b.147)
	ld.d	 r12,r11,lo16(_b.147)
	or	 r2,r0,r22
	fadd.ddd r12,r12,r12
	br.n	 @L1638
	or	 r3,r11,lo16(_b.147)
	align	 4
@L1588:
	or.u	 r11,r0,hi16(_one.156)
	or.u	 r12,r0,0x4010
	or	 r13,r0,0
	ld.d	 r10,r11,lo16(_one.156)
	fdiv.ddd r10,r10,r12
	xor.u	 r12,r8,0x8000
	or	 r13,r0,r9
	st.d	 r12,r31,88
	or.u	 r13,r0,hi16(_savec.151)
	or.u	 r25,r0,hi16(_qtr.157)
	st.d	 r6,r13,lo16(_savec.151)
	addu	 r3,r31,88
	bsr.n	 _dlamc3_
	st.d	 r10,r25,lo16(_qtr.157)
	ld.d	 r12,r25,lo16(_qtr.157)
	fadd.ddd r12,r2,r12
	trnc.sd	 r5,r12
	flt.ds	 r10,r5
	or.u	 r8,r0,0x4000
	or	 r9,r0,0
	fdiv.ddd r8,r10,r8
	or.u	 r12,r0,0x4059
	or	 r13,r0,0
	xor.u	 r6,r10,0x8000
	or	 r7,r0,r11
	fdiv.ddd r6,r6,r12
	st.d	 r2,r24,lo16(_c__.148)
	or.u	 r13,r0,hi16(_lbeta.150)
	st	 r5,r13,lo16(_lbeta.150)
	or.u	 r13,r0,hi16(_b.147)
	st.d	 r10,r13,lo16(_b.147)
	addu	 r2,r31,88
	st.d	 r8,r31,88
	addu	 r3,r31,96
	bsr.n	 _dlamc3_
	st.d	 r6,r31,96
	or.u	 r13,r0,hi16(_f.149)
	st.d	 r2,r13,lo16(_f.149)
	or	 r2,r13,lo16(_f.149)
	bsr.n	 _dlamc3_
	or	 r3,r0,r22
	ld.d	 r12,r23,lo16(_a.146)
	fcmp.sdd r13,r2,r12
	bb1.n	 ne,r13,@L1589
	st.d	 r2,r24,lo16(_c__.148)
	or.u	 r12,r0,hi16(_lrnd.145)
	or	 r13,r0,1
	br.n	 @L1590
	st	 r13,r12,lo16(_lrnd.145)
	align	 4
@L1589:
	or.u	 r13,r0,hi16(_lrnd.145)
	st	 r0,r13,lo16(_lrnd.145)
@L1590:
	or.u	 r13,r0,hi16(_b.147)
	or.u	 r8,r0,0x4000
	or	 r9,r0,0
	ld.d	 r10,r13,lo16(_b.147)
	fdiv.ddd r8,r10,r8
	or.u	 r12,r0,0x4059
	or	 r13,r0,0
	fdiv.ddd r10,r10,r12
	addu	 r2,r31,88
	st.d	 r8,r31,88
	addu	 r3,r31,96
	bsr.n	 _dlamc3_
	st.d	 r10,r31,96
	or.u	 r13,r0,hi16(_f.149)
	or.u	 r25,r0,hi16(_a.146)
	st.d	 r2,r13,lo16(_f.149)
	or	 r2,r13,lo16(_f.149)
	bsr.n	 _dlamc3_
	or	 r3,r25,lo16(_a.146)
	or.u	 r11,r0,hi16(_lrnd.145)
	ld	 r12,r11,lo16(_lrnd.145)
	or.u	 r13,r0,hi16(_c__.148)
	bcnd.n	 eq0,r12,@L1591
	st.d	 r2,r13,lo16(_c__.148)
	ld.d	 r12,r25,lo16(_a.146)
	fcmp.sdd r13,r2,r12
	bb1	 ne,r13,@L1591
	st	 r0,r11,lo16(_lrnd.145)
@L1591:
	or.u	 r23,r0,hi16(_b.147)
	or.u	 r24,r0,0x4000
	or	 r25,r0,0
	ld.d	 r12,r23,lo16(_b.147)
	fdiv.ddd r12,r12,r24
	or.u	 r22,r0,hi16(_a.146)
	addu	 r2,r31,88
	or	 r3,r22,lo16(_a.146)
	bsr.n	 _dlamc3_
	st.d	 r12,r31,88
	ld.d	 r12,r23,lo16(_b.147)
	fdiv.ddd r12,r12,r24
	or.u	 r25,r0,hi16(_t1.153)
	or.u	 r24,r0,hi16(_savec.151)
	st.d	 r2,r25,lo16(_t1.153)
	addu	 r2,r31,88
	or	 r3,r24,lo16(_savec.151)
	bsr.n	 _dlamc3_
	st.d	 r12,r31,88
	ld.d	 r8,r25,lo16(_t1.153)
	ld.d	 r10,r22,lo16(_a.146)
	or.u	 r13,r0,hi16(_t2.154)
	or	 r7,r0,0
	st.d	 r2,r13,lo16(_t2.154)
	or.u	 r13,r0,hi16(_lieee1.152)
	fcmp.sdd r12,r8,r10
	bb1.n	 ne,r12,@L1592
	or	 r9,r13,lo16(_lieee1.152)
	ld.d	 r12,r24,lo16(_savec.151)
	fcmp.sdd r13,r2,r12
	bb1.n	 le,r13,@L1592
	or.u	 r13,r0,hi16(_lrnd.145)
	ld	 r13,r13,lo16(_lrnd.145)
	cmp	 r13,r13,0
	extu	 r7,r13,1<ne>
@L1592:
	or.u	 r10,r0,0x3ff0
	or	 r11,r0,0
	or.u	 r13,r0,hi16(_lt.155)
	st	 r7,r0,r9
	st	 r0,r13,lo16(_lt.155)
	or.u	 r13,r0,hi16(_a.146)
	st.d	 r10,r13,lo16(_a.146)
	or.u	 r13,r0,hi16(_c__.148)
	st.d	 r10,r13,lo16(_c__.148)
@L1593:
	or.u	 r24,r0,hi16(_c__.148)
	or.u	 r9,r0,hi16(_one.156)
	ld.d	 r10,r24,lo16(_c__.148)
	ld.d	 r12,r9,lo16(_one.156)
	or	 r23,r24,lo16(_c__.148)
	fcmp.sdd r13,r10,r12
	bb1.n	 ne,r13,@L1584
	or	 r3,r9,lo16(_one.156)
	or.u	 r13,r0,hi16(_lbeta.150)
	or.u	 r10,r0,hi16(_lt.155)
	ld	 r13,r13,lo16(_lbeta.150)
	or.u	 r25,r0,hi16(_a.146)
	ld	 r11,r10,lo16(_lt.155)
	flt.ds	 r8,r13
	ld.d	 r12,r25,lo16(_a.146)
	or	 r2,r25,lo16(_a.146)
	addu	 r11,r11,1
	st	 r11,r10,lo16(_lt.155)
	fmul.ddd r12,r12,r8
	bsr.n	 _dlamc3_
	st.d	 r12,r25,lo16(_a.146)
	ld.d	 r12,r25,lo16(_a.146)
	st.d	 r2,r24,lo16(_c__.148)
	or	 r2,r0,r23
	addu	 r3,r31,88
	xor.u	 r12,r12,0x8000
	bsr.n	 _dlamc3_
	st.d	 r12,r31,88
	br.n	 @L1593
	st.d	 r2,r24,lo16(_c__.148)
	align	 4
@L1584:
	or.u	 r13,r0,hi16(_lbeta.150)
	or.u	 r12,r0,hi16(_lt.155)
	ld	 r9,r13,lo16(_lbeta.150)
	or.u	 r11,r0,hi16(_lrnd.145)
	ld	 r10,r12,lo16(_lt.155)
	or.u	 r13,r0,hi16(_lieee1.152)
	ld	 r12,r11,lo16(_lrnd.145)
	ld	 r13,r13,lo16(_lieee1.152)
	st	 r9,r0,r21
	st	 r10,r0,r20
	addu	 r3,r31,104
	st	 r12,r0,r19
	or.u	 r21,r0,hi16(_b.169)
	st	 r13,r0,r18
	or.u	 r13,r0,hi16(_lbeta.172)
	or.u	 r12,r0,hi16(_lt.184)
	ld	 r13,r13,lo16(_lbeta.172)
	or	 r23,r21,lo16(_b.169)
	ld	 r11,r12,lo16(_lt.184)
	or	 r2,r0,r23
	flt.ds	 r12,r13
	st.d	 r12,r21,lo16(_b.169)
	subu	 r11,r0,r11
	bsr.n	 _pow_di
	st	 r11,r31,104
	or.u	 r11,r0,hi16(_two.188)
	or.u	 r12,r0,0x4008
	or	 r13,r0,0
	ld.d	 r8,r11,lo16(_two.188)
	fdiv.ddd r8,r8,r12
	or.u	 r11,r0,hi16(_one.187)
	or.u	 r12,r0,0x4000
	or	 r13,r0,0
	ld.d	 r10,r11,lo16(_one.187)
	fdiv.ddd r10,r10,r12
	or.u	 r20,r0,hi16(_leps.166)
	addu	 r22,r31,112
	st.d	 r2,r20,lo16(_leps.166)
	or.u	 r13,r0,hi16(_a.168)
	or.u	 r24,r0,hi16(_half.164)
	st.d	 r2,r13,lo16(_a.168)
	or	 r2,r0,r23
	st.d	 r8,r21,lo16(_b.169)
	or	 r3,r0,r22
	st.d	 r10,r24,lo16(_half.164)
	xor.u	 r12,r10,0x8000
	or	 r13,r0,r11
	bsr.n	 _dlamc3_
	st.d	 r12,r31,112
	or.u	 r13,r0,hi16(_sixth.182)
	or	 r25,r13,lo16(_sixth.182)
	st.d	 r2,r13,lo16(_sixth.182)
	or	 r2,r0,r25
	bsr.n	 _dlamc3_
	or	 r3,r0,r25
	ld.d	 r12,r24,lo16(_half.164)
	or.u	 r11,r0,hi16(_third.179)
	st.d	 r2,r11,lo16(_third.179)
	or	 r2,r11,lo16(_third.179)
	or	 r3,r0,r22
	xor.u	 r12,r12,0x8000
	bsr.n	 _dlamc3_
	st.d	 r12,r31,112
	st.d	 r2,r21,lo16(_b.169)
	or	 r2,r0,r23
	bsr.n	 _dlamc3_
	or	 r3,r0,r25
	fcmp.sds r13,r2,r0
	bb1.n	 ge,r13,@L1595
	st.d	 r2,r21,lo16(_b.169)
	xor.u	 r2,r2,0x8000
@L1595:
	ld.d	 r10,r20,lo16(_leps.166)
	fcmp.sdd r13,r2,r10
	bb0.n	 lt,r13,@L1596
	st.d	 r2,r21,lo16(_b.169)
	st.d	 r10,r21,lo16(_b.169)
@L1596:
	or.u	 r12,r0,0x3ff0
	or	 r13,r0,0
	st.d	 r12,r20,lo16(_leps.166)
@L1597:
	or.u	 r5,r0,hi16(_leps.166)
	or.u	 r21,r0,hi16(_b.169)
	ld.d	 r12,r5,lo16(_leps.166)
	ld.d	 r6,r21,lo16(_b.169)
	fcmp.sdd r13,r12,r6
	bb1.n	 le,r13,@L1598
	or.u	 r13,r0,hi16(_zero.167)
	ld.d	 r12,r13,lo16(_zero.167)
	fcmp.sdd r13,r6,r12
	bb1.n	 le,r13,@L1598
	or.u	 r13,r0,hi16(_two.188)
	ld.d	 r12,r13,lo16(_two.188)
	or	 r10,r0,r12
	or	 r11,r0,r13
	fmul.ddd r12,r12,r12
	fmul.ddd r8,r6,r6
	fmul.ddd r12,r12,r12
	addu	 r3,r31,120
	or.u	 r25,r0,hi16(_half.164)
	addu	 r23,r31,112
	st.d	 r6,r5,lo16(_leps.166)
	fmul.ddd r10,r10,r12
	ld.d	 r12,r25,lo16(_half.164)
	or	 r2,r0,r23
	or	 r25,r25,lo16(_half.164)
	fmul.ddd r12,r12,r6
	st.d	 r12,r31,112
	fmul.ddd r10,r10,r8
	bsr.n	 _dlamc3_
	st.d	 r10,r31,120
	or	 r12,r0,r2
	or	 r13,r0,r3
	or	 r2,r0,r25
	or.u	 r24,r0,hi16(_c__.170)
	or	 r3,r0,r23
	st.d	 r12,r24,lo16(_c__.170)
	xor.u	 r12,r12,0x8000
	bsr.n	 _dlamc3_
	st.d	 r12,r31,112
	or	 r22,r24,lo16(_c__.170)
	st.d	 r2,r24,lo16(_c__.170)
	or	 r2,r0,r25
	bsr.n	 _dlamc3_
	or	 r3,r0,r22
	or	 r12,r0,r2
	or	 r13,r0,r3
	or	 r2,r0,r25
	or	 r3,r0,r23
	st.d	 r12,r21,lo16(_b.169)
	xor.u	 r12,r12,0x8000
	bsr.n	 _dlamc3_
	st.d	 r12,r31,112
	st.d	 r2,r24,lo16(_c__.170)
	or	 r2,r0,r25
	bsr.n	 _dlamc3_
	or	 r3,r0,r22
	br.n	 @L1597
	st.d	 r2,r21,lo16(_b.169)
	align	 4
@L1598:
	or.u	 r13,r0,hi16(_a.168)
	or.u	 r9,r0,hi16(_leps.166)
	ld.d	 r10,r13,lo16(_a.168)
	ld.d	 r12,r9,lo16(_leps.166)
	fcmp.sdd r13,r10,r12
	bb0	 lt,r13,@L1599
	st.d	 r10,r9,lo16(_leps.166)
@L1599:
	or.u	 r13,r0,hi16(_lbeta.172)
	ld	 r13,r13,lo16(_lbeta.172)
	flt.ds	 r10,r13
	or.u	 r13,r0,hi16(_one.187)
	ld.d	 r12,r13,lo16(_one.187)
	fdiv.ddd r10,r12,r10
	or.u	 r9,r0,hi16(_small.177)
	or.u	 r22,r0,hi16(_zero.167)
	st.d	 r12,r9,lo16(_small.177)
	or.u	 r12,r0,hi16(_i__.171)
	or	 r13,r0,1
	st	 r13,r12,lo16(_i__.171)
	or.u	 r13,r0,hi16(_rbase.173)
	or	 r24,r0,r9
	or	 r23,r0,r13
	or	 r25,r0,r12
	st.d	 r10,r23,lo16(_rbase.173)
@L1603:
	ld.d	 r12,r24,lo16(_small.177)
	ld.d	 r10,r23,lo16(_rbase.173)
	addu	 r2,r31,112
	or	 r3,r22,lo16(_zero.167)
	fmul.ddd r12,r12,r10
	bsr.n	 _dlamc3_
	st.d	 r12,r31,112
	ld	 r13,r25,lo16(_i__.171)
	addu	 r13,r13,1
	st.d	 r2,r24,lo16(_small.177)
	cmp	 r12,r13,3
	bb1.n	 le,r12,@L1603
	st	 r13,r25,lo16(_i__.171)
	or.u	 r22,r0,hi16(_one.187)
	or.u	 r3,r0,hi16(_small.177)
	or	 r24,r22,lo16(_one.187)
	or	 r3,r3,lo16(_small.177)
	or	 r2,r0,r24
	bsr.n	 _dlamc3_
	or.u	 r23,r0,hi16(_a.168)
	st.d	 r2,r23,lo16(_a.168)
	or.u	 r20,r0,hi16(_ngpmin.186)
	or.u	 r25,r0,hi16(_lbeta.172)
	or	 r3,r0,r24
	or	 r25,r25,lo16(_lbeta.172)
	or	 r2,r20,lo16(_ngpmin.186)
	or	 r4,r0,r25
	bsr.n	 _dlamc4_
	or.u	 r21,r0,hi16(_ngnmin.185)
	ld.d	 r12,r22,lo16(_one.187)
	or	 r2,r21,lo16(_ngnmin.185)
	addu	 r24,r31,112
	or	 r4,r0,r25
	or	 r3,r0,r24
	xor.u	 r12,r12,0x8000
	bsr.n	 _dlamc4_
	st.d	 r12,r31,112
	or.u	 r19,r0,hi16(_gpmin.178)
	or	 r3,r23,lo16(_a.168)
	or	 r4,r0,r25
	or	 r2,r19,lo16(_gpmin.178)
	bsr.n	 _dlamc4_
	or.u	 r22,r0,hi16(_gnmin.176)
	ld.d	 r12,r23,lo16(_a.168)
	or	 r2,r22,lo16(_gnmin.176)
	or	 r3,r0,r24
	or	 r4,r0,r25
	xor.u	 r12,r12,0x8000
	bsr.n	 _dlamc4_
	st.d	 r12,r31,112
	ld	 r11,r20,lo16(_ngpmin.186)
	ld	 r13,r21,lo16(_ngnmin.185)
	or.u	 r10,r0,hi16(_ieee.163)
	cmp	 r13,r11,r13
	bb1.n	 ne,r13,@L1605
	st	 r0,r10,lo16(_ieee.163)
	ld	 r2,r19,lo16(_gpmin.178)
	ld	 r13,r22,lo16(_gnmin.176)
	cmp	 r13,r2,r13
	bb1.n	 ne,r13,@L1605
	cmp	 r12,r11,r2
	bb1.n	 ne,r12,@L1606
	subu	 r13,r2,r11
	or.u	 r13,r0,hi16(_lemin.174)
	br.n	 @L1611
	st	 r2,r13,lo16(_lemin.174)
	align	 4
@L1606:
	cmp	 r13,r13,3
	bb1.n	 ne,r13,@L1608
	or	 r13,r0,r11
	or.u	 r13,r0,hi16(_lt.184)
	ld	 r13,r13,lo16(_lt.184)
	or	 r12,r0,1
	st	 r12,r10,lo16(_ieee.163)
	subu	 r13,r13,1
	or.u	 r12,r0,hi16(_lemin.174)
	addu	 r13,r11,r13
	br.n	 @L1611
	st	 r13,r12,lo16(_lemin.174)
	align	 4
@L1608:
	bb0.n	 gt,r12,@L1610
	or.u	 r11,r0,hi16(_lemin.174)
	or	 r13,r0,r2
@L1610:
	or.u	 r12,r0,hi16(_iwarn.161)
	br.n	 @L1639
	st	 r13,r11,lo16(_lemin.174)
	align	 4
@L1605:
	or.u	 r13,r0,hi16(_ngpmin.186)
	ld	 r9,r13,lo16(_ngpmin.186)
	or.u	 r13,r0,hi16(_gpmin.178)
	ld	 r13,r13,lo16(_gpmin.178)
	cmp	 r13,r9,r13
	bb1.n	 ne,r13,@L1641
	or.u	 r13,r0,hi16(_ngpmin.186)
	or.u	 r13,r0,hi16(_ngnmin.185)
	ld	 r10,r13,lo16(_ngnmin.185)
	or.u	 r13,r0,hi16(_gnmin.176)
	ld	 r13,r13,lo16(_gnmin.176)
	cmp	 r13,r10,r13
	bb1.n	 ne,r13,@L1612
	or.u	 r13,r0,hi16(_ngpmin.186)
	subu	 r13,r9,r10
	ext	 r11,r13,0<31>
	xor	 r12,r11,r13
	subu	 r12,r12,r11
	cmp	 r12,r12,1
	bb1.n	 ne,r12,@L1613
	st	 r13,r31,104
	or	 r12,r0,r9
	cmp	 r13,r12,r10
	bb1.n	 ge,r13,@L1614
	or.u	 r11,r0,hi16(_lemin.174)
	or	 r12,r0,r10
@L1614:
	br.n	 @L1611
	st	 r12,r11,lo16(_lemin.174)
	align	 4
@L1613:
	or	 r12,r0,r9
	cmp	 r13,r12,r10
	bb0.n	 gt,r13,@L1616
	or.u	 r11,r0,hi16(_lemin.174)
	or	 r12,r0,r10
@L1616:
	br.n	 @L1640
	st	 r12,r11,lo16(_lemin.174)
	align	 4
@L1612:
@L1641:
	ld	 r10,r13,lo16(_ngpmin.186)
	or.u	 r13,r0,hi16(_ngnmin.185)
	ld	 r9,r13,lo16(_ngnmin.185)
	subu	 r12,r10,r9
	ext	 r11,r12,0<31>
	xor	 r13,r11,r12
	subu	 r8,r13,r11
	cmp	 r13,r8,1
	bb1.n	 ne,r13,@L1618
	st	 r12,r31,104
	or.u	 r13,r0,hi16(_gpmin.178)
	ld	 r11,r13,lo16(_gpmin.178)
	or.u	 r13,r0,hi16(_gnmin.176)
	ld	 r13,r13,lo16(_gnmin.176)
	cmp	 r13,r11,r13
	bb1.n	 ne,r13,@L1618
	cmp	 r12,r10,r9
	bb0.n	 gt,r12,@L1620
	or	 r13,r0,r10
	or	 r13,r0,r9
@L1620:
	subu	 r13,r11,r13
	cmp	 r13,r13,3
	bb1	 ne,r13,@L1619
	or	 r11,r0,r10
	bb1.n	 ge,r12,@L1621
	or.u	 r10,r0,hi16(_lemin.174)
	or	 r11,r0,r9
@L1621:
	or.u	 r13,r0,hi16(_lt.184)
	ld	 r13,r13,lo16(_lt.184)
	subu	 r13,r13,1
	addu	 r13,r11,r13
	br.n	 @L1611
	st	 r13,r10,lo16(_lemin.174)
	align	 4
@L1619:
	or	 r13,r0,r10
	bb0.n	 gt,r12,@L1623
	or.u	 r11,r0,hi16(_lemin.174)
	or	 r13,r0,r9
@L1623:
	st	 r13,r11,lo16(_lemin.174)
	or.u	 r13,r0,hi16(_iwarn.161)
	br.n	 @L1642
	st	 r8,r13,lo16(_iwarn.161)
	align	 4
@L1618:
	or.u	 r13,r0,hi16(_ngpmin.186)
	ld	 r12,r13,lo16(_ngpmin.186)
	or.u	 r13,r0,hi16(_ngnmin.185)
	ld	 r11,r13,lo16(_ngnmin.185)
	cmp	 r13,r12,r11
	bb0	 gt,r13,@L1625
	or	 r12,r0,r11
@L1625:
	or.u	 r13,r0,hi16(_gpmin.178)
	ld	 r11,r13,lo16(_gpmin.178)
	cmp	 r13,r12,r11
	bb0.n	 gt,r13,@L1626
	st	 r12,r31,104
	or	 r12,r0,r11
@L1626:
	or.u	 r13,r0,hi16(_gnmin.176)
	ld	 r11,r13,lo16(_gnmin.176)
	st	 r12,r31,104
	cmp	 r13,r12,r11
	bb0.n	 gt,r13,@L1627
	or.u	 r10,r0,hi16(_lemin.174)
	or	 r12,r0,r11
@L1627:
	st	 r12,r10,lo16(_lemin.174)
@L1640:
	or.u	 r12,r0,hi16(_iwarn.161)
@L1639:
	or	 r13,r0,1
	st	 r13,r12,lo16(_iwarn.161)
@L1611:
	or.u	 r13,r0,hi16(_iwarn.161)
@L1642:
	ld	 r13,r13,lo16(_iwarn.161)
	bcnd.n	 eq0,r13,@L1628
	or.u	 r2,r0,hi16(_io___156.189)
	or.u	 r12,r0,hi16(_first.160)
	or	 r13,r0,1
	or	 r2,r2,lo16(_io___156.189)
	bsr.n	 _s_wsfe
	st	 r13,r12,lo16(_first.160)
	or	 r4,r0,4
	or.u	 r2,r0,hi16(_c__1)
	or.u	 r3,r0,hi16(_lemin.174)
	or	 r2,r2,lo16(_c__1)
	bsr.n	 _do_fio
	or	 r3,r3,lo16(_lemin.174)
	bsr	 _e_wsfe
@L1628:
	or.u	 r13,r0,hi16(_ieee.163)
	ld	 r12,r13,lo16(_ieee.163)
	or	 r11,r0,0
	bcnd.n	 ne0,r12,@L1630
	or	 r10,r13,lo16(_ieee.163)
	or.u	 r13,r0,hi16(_lieee1.183)
	ld	 r13,r13,lo16(_lieee1.183)
	bcnd	 eq0,r13,@L1629
@L1630:
	or	 r11,r0,1
@L1629:
	or.u	 r12,r0,0x3ff0
	or	 r13,r0,0
	st	 r11,r0,r10
	or.u	 r10,r0,hi16(_lrmin.180)
	st.d	 r12,r10,lo16(_lrmin.180)
	or.u	 r13,r0,hi16(_lemin.174)
	ld	 r12,r13,lo16(_lemin.174)
	or	 r13,r0,1
	or.u	 r11,r0,hi16(_i__.171)
	subu	 r12,r13,r12
	st	 r13,r11,lo16(_i__.171)
	cmp	 r13,r13,r12
	bb0.n	 le,r13,@L1632
	st	 r12,r31,104
	or	 r24,r0,r10
	or.u	 r23,r0,hi16(_rbase.173)
	or	 r25,r0,r11
@L1634:
	ld.d	 r12,r24,lo16(_lrmin.180)
	or.u	 r3,r0,hi16(_zero.167)
	ld.d	 r10,r23,lo16(_rbase.173)
	addu	 r2,r31,112
	or	 r3,r3,lo16(_zero.167)
	fmul.ddd r12,r12,r10
	bsr.n	 _dlamc3_
	st.d	 r12,r31,112
	ld	 r13,r25,lo16(_i__.171)
	ld	 r12,r31,104
	addu	 r13,r13,1
	st.d	 r2,r24,lo16(_lrmin.180)
	cmp	 r12,r13,r12
	bb1.n	 le,r12,@L1634
	st	 r13,r25,lo16(_i__.171)
@L1632:
	or.u	 r2,r0,hi16(_lbeta.172)
	or.u	 r3,r0,hi16(_lt.184)
	or.u	 r4,r0,hi16(_lemin.174)
	or.u	 r5,r0,hi16(_ieee.163)
	or.u	 r6,r0,hi16(_lemax.175)
	or.u	 r7,r0,hi16(_lrmax.181)
	or	 r2,r2,lo16(_lbeta.172)
	or	 r3,r3,lo16(_lt.184)
	or	 r4,r4,lo16(_lemin.174)
	or	 r5,r5,lo16(_ieee.163)
	or	 r6,r6,lo16(_lemax.175)
	bsr.n	 _dlamc5_
	or	 r7,r7,lo16(_lrmax.181)
@L1582:
	or.u	 r13,r0,hi16(_lbeta.172)
	ld	 r13,r13,lo16(_lbeta.172)
	st	 r13,r0,r17
	or.u	 r13,r0,hi16(_lt.184)
	ld	 r14,r31,180
	ld	 r13,r13,lo16(_lt.184)
	st	 r13,r0,r14
	or.u	 r13,r0,hi16(_lrnd.165)
	ld	 r15,r31,172
	ld	 r13,r13,lo16(_lrnd.165)
	st	 r13,r0,r15
	or.u	 r12,r0,hi16(_leps.166)
	ld	 r16,r31,164
	ld.d	 r14,r12,lo16(_leps.166)
	st.d	 r14,r0,r16
	or.u	 r13,r0,hi16(_lemin.174)
	ld	 r14,r31,132
	ld	 r13,r13,lo16(_lemin.174)
	st	 r13,r0,r14
	or.u	 r12,r0,hi16(_lrmin.180)
	ld	 r16,r31,140
	ld.d	 r14,r12,lo16(_lrmin.180)
	st.d	 r14,r0,r16
	or.u	 r13,r0,hi16(_lemax.175)
	ld	 r14,r31,148
	ld	 r12,r13,lo16(_lemax.175)
	st	 r12,r0,r14
	or.u	 r13,r0,hi16(_lrmax.181)
	ld	 r16,r31,156
	ld.d	 r14,r13,lo16(_lrmax.181)
	st.d	 r14,r0,r16
@Lte14:
	ld	 r1,r31,80
	ld.d	 r24,r31,72
	ld.d	 r22,r31,64
	ld.d	 r20,r31,56
	ld.d	 r18,r31,48
	ld.d	 r16,r31,40
	or	 r2,r0,0
	ld.d	 r14,r31,32
	jmp.n	 r1
	addu	 r31,r31,192

	align	 8
	global	 _dlamc3_
_dlamc3_:
@Ltb15:
	ld.d	 r8,r0,r2
	ld.d	 r2,r0,r3
	fadd.ddd r2,r8,r2
	jmp	 r1
@Lte15:

	bss	 _zero.194,8,8
	bss	 _a.195,8,8
	bss	 _i__.196,4,4
	bss	 _rbase.197,8,8
	bss	 _b1.198,8,8
	bss	 _b2.199,8,8
	bss	 _c1.200,8,8
	bss	 _c2.201,8,8
	bss	 _d1.202,8,8
	bss	 _d2.203,8,8
	bss	 _one.204,8,8
	align	 8
	global	 _dlamc4_
_dlamc4_:
	subu	 r31,r31,32
	or.u	 r12,r0,hi16(_a.195)
	st.d	 r24,r0,r31
@Ltb16:
	ld.d	 r24,r0,r3
	or.u	 r9,r0,hi16(_one.204)
	st.d	 r24,r12,lo16(_a.195)
	or.u	 r6,r0,0x3ff0
	or	 r7,r0,0
	st.d	 r6,r9,lo16(_one.204)
	ld	 r9,r0,r4
	flt.ds	 r8,r9
	fdiv.ddd r6,r6,r8
	or.u	 r13,r0,hi16(_zero.194)
	or	 r8,r0,0
	or	 r9,r0,0
	st.d	 r8,r13,lo16(_zero.194)
	or.u	 r8,r0,hi16(_rbase.197)
	st.d	 r6,r8,lo16(_rbase.197)
	or	 r9,r0,1
	st	 r9,r0,r2
	ld.d	 r6,r12,lo16(_a.195)
	or.u	 r9,r0,hi16(_c1.200)
	st.d	 r6,r9,lo16(_c1.200)
	or.u	 r9,r0,hi16(_c2.201)
	st.d	 r6,r9,lo16(_c2.201)
	or.u	 r9,r0,hi16(_d1.202)
	st.d	 r6,r9,lo16(_d1.202)
	ld.d	 r8,r8,lo16(_rbase.197)
	ld.d	 r10,r13,lo16(_zero.194)
	or.u	 r13,r0,hi16(_d2.203)
	fmul.ddd r8,r6,r8
	st.d	 r6,r13,lo16(_d2.203)
	or.u	 r7,r0,hi16(_b1.198)
	st.d	 r8,r31,8
	fadd.ddd r8,r8,r10
	st.d	 r8,r7,lo16(_b1.198)
@L1665:
	or.u	 r10,r0,hi16(_c1.200)
@L1683:
	or.u	 r13,r0,hi16(_a.195)
	ld.d	 r8,r10,lo16(_c1.200)
	ld.d	 r6,r13,lo16(_a.195)
	fcmp.sdd r9,r8,r6
	bb0.n	 eq,r9,@L1666
	or.u	 r9,r0,hi16(_c2.201)
	ld.d	 r8,r9,lo16(_c2.201)
	fcmp.sdd r9,r8,r6
	bb0.n	 eq,r9,@L1666
	or.u	 r5,r0,hi16(_d1.202)
	ld.d	 r8,r5,lo16(_d1.202)
	fcmp.sdd r9,r8,r6
	bb0.n	 eq,r9,@L1666
	or.u	 r9,r0,hi16(_d2.203)
	ld.d	 r8,r9,lo16(_d2.203)
	fcmp.sdd r9,r8,r6
	bb0	 eq,r9,@L1666
	ld	 r9,r0,r2
	or.u	 r11,r0,hi16(_b1.198)
	subu	 r9,r9,1
	st	 r9,r0,r2
	ld.d	 r6,r11,lo16(_b1.198)
	st.d	 r6,r13,lo16(_a.195)
	ld	 r9,r0,r4
	flt.ds	 r8,r9
	fdiv.ddd r6,r6,r8
	or.u	 r9,r0,hi16(_zero.194)
	ld.d	 r12,r9,lo16(_zero.194)
	st.d	 r6,r31,8
	fadd.ddd r6,r6,r12
	st.d	 r6,r11,lo16(_b1.198)
	ld	 r9,r0,r4
	flt.ds	 r8,r9
	fmul.ddd r8,r6,r8
	st.d	 r12,r5,lo16(_d1.202)
	st.d	 r8,r31,8
	fadd.ddd r8,r8,r12
	st.d	 r8,r10,lo16(_c1.200)
	ld	 r13,r0,r4
	or	 r9,r0,1
	or.u	 r12,r0,hi16(_i__.196)
	cmp	 r8,r9,r13
	bb0.n	 le,r8,@L1670
	st	 r9,r12,lo16(_i__.196)
	or	 r10,r0,r6
	or	 r11,r0,r7
	or	 r6,r0,r5
@L1672:
	ld.d	 r8,r6,lo16(_d1.202)
	ld	 r7,r12,lo16(_i__.196)
	fadd.ddd r8,r8,r10
	addu	 r7,r7,1
	st.d	 r8,r6,lo16(_d1.202)
	cmp	 r9,r7,r13
	bb1.n	 le,r9,@L1672
	st	 r7,r12,lo16(_i__.196)
@L1670:
	or.u	 r9,r0,hi16(_a.195)
	or.u	 r8,r0,hi16(_rbase.197)
	ld.d	 r6,r9,lo16(_a.195)
	ld.d	 r8,r8,lo16(_rbase.197)
	or.u	 r13,r0,hi16(_zero.194)
	fmul.ddd r6,r6,r8
	ld.d	 r12,r13,lo16(_zero.194)
	fadd.ddd r10,r6,r12
	fdiv.ddd r8,r10,r8
	or.u	 r5,r0,hi16(_d2.203)
	st.d	 r12,r5,lo16(_d2.203)
	st.d	 r6,r31,8
	or.u	 r7,r0,hi16(_b2.199)
	st.d	 r10,r7,lo16(_b2.199)
	or.u	 r7,r0,hi16(_c2.201)
	st.d	 r8,r31,8
	fadd.ddd r8,r8,r12
	st.d	 r8,r7,lo16(_c2.201)
	ld	 r13,r0,r4
	or	 r9,r0,1
	or.u	 r7,r0,hi16(_i__.196)
	cmp	 r8,r9,r13
	bb1.n	 gt,r8,@L1665
	st	 r9,r7,lo16(_i__.196)
	or	 r6,r0,r5
	or	 r12,r0,r7
@L1679:
	ld.d	 r8,r6,lo16(_d2.203)
	ld	 r7,r12,lo16(_i__.196)
	fadd.ddd r8,r8,r10
	addu	 r7,r7,1
	st.d	 r8,r6,lo16(_d2.203)
	cmp	 r9,r7,r13
	bb1.n	 le,r9,@L1679
	st	 r7,r12,lo16(_i__.196)
	br.n	 @L1683
	or.u	 r10,r0,hi16(_c1.200)
	align	 4
@L1666:
@Lte16:
	ld.d	 r24,r0,r31
	or	 r2,r0,0
	jmp.n	 r1
	addu	 r31,r31,32

	bss	 _lexp.207,4,4
	bss	 _oldy.208,8,8
	bss	 _uexp.209,4,4
	bss	 _i__.210,4,4
	bss	 _y.211,8,8
	bss	 _z__.212,8,8
	bss	 _nbits.213,4,4
	bss	 _recbas.214,8,8
	bss	 _exbits.215,4,4
	bss	 _expsum.216,4,4
	bss	 _try__.217,4,4
	align	 8
	global	 _dlamc5_
_dlamc5_:
	subu	 r31,r31,80
	or.u	 r9,r0,hi16(_lexp.207)
	st	 r1,r31,64
	or	 r8,r0,1
	st.d	 r24,r31,56
	or	 r24,r0,r2
	st.d	 r22,r31,48
	or	 r2,r0,r6
	st	 r8,r9,lo16(_lexp.207)
	or.u	 r9,r0,hi16(_exbits.215)
	st.d	 r20,r31,40
@Ltb17:
	or	 r22,r0,r7
	st	 r8,r9,lo16(_exbits.215)
	or.u	 r13,r0,hi16(_lexp.207)
@L1733:
	ld	 r7,r13,lo16(_lexp.207)
	or.u	 r9,r0,hi16(_try__.217)
	mak	 r6,r7,0<1>
	st	 r6,r9,lo16(_try__.217)
	ld	 r9,r0,r4
	subu	 r8,r0,r9
	cmp	 r9,r6,r8
	bb1.n	 gt,r9,@L1709
	cmp	 r9,r7,r8
	or.u	 r8,r0,hi16(_exbits.215)
	ld	 r9,r8,lo16(_exbits.215)
	st	 r6,r13,lo16(_lexp.207)
	addu	 r9,r9,1
	br.n	 @L1733
	st	 r9,r8,lo16(_exbits.215)
	align	 4
@L1709:
	bb1.n	 ne,r9,@L1710
	or.u	 r9,r0,hi16(_exbits.215)
	or.u	 r9,r0,hi16(_uexp.209)
	br.n	 @L1734
	st	 r8,r9,lo16(_uexp.209)
	align	 4
@L1710:
	ld	 r8,r9,lo16(_exbits.215)
	or.u	 r7,r0,hi16(_uexp.209)
	st	 r6,r7,lo16(_uexp.209)
	addu	 r8,r8,1
	st	 r8,r9,lo16(_exbits.215)
	or.u	 r9,r0,hi16(_uexp.209)
@L1734:
	ld	 r13,r9,lo16(_uexp.209)
	or.u	 r9,r0,hi16(_lexp.207)
	ld	 r6,r9,lo16(_lexp.207)
	ld	 r7,r0,r4
	subu	 r9,r0,r6
	addu	 r8,r13,r7
	subu	 r9,r9,r7
	cmp	 r8,r8,r9
	bb0.n	 gt,r8,@L1712
	or.u	 r8,r0,hi16(_expsum.216)
	br.n	 @L1732
	mak	 r9,r6,0<1>
	align	 4
@L1712:
	mak	 r9,r13,0<1>
@L1732:
	st	 r9,r8,lo16(_expsum.216)
	ld	 r8,r0,r4
	or.u	 r9,r0,hi16(_expsum.216)
	ld	 r9,r9,lo16(_expsum.216)
	addu	 r9,r9,r8
	subu	 r9,r9,1
	st	 r9,r0,r2
	or.u	 r8,r0,hi16(_exbits.215)
	ld	 r9,r0,r3
	ld	 r8,r8,lo16(_exbits.215)
	addu	 r9,r9,1
	addu	 r8,r8,r9
	extu	 r9,r8,0<31>
	addu	 r9,r8,r9
	and	 r9,r9,0xfffe
	subu	 r9,r8,r9
	or.u	 r7,r0,hi16(_nbits.213)
	cmp	 r9,r9,1
	bb1.n	 ne,r9,@L1714
	st	 r8,r7,lo16(_nbits.213)
	ld	 r9,r0,r24
	cmp	 r9,r9,2
	bb1	 ne,r9,@L1714
	ld	 r9,r0,r2
	subu	 r9,r9,1
	st	 r9,r0,r2
@L1714:
	ld	 r9,r0,r5
	bcnd	 eq0,r9,@L1715
	ld	 r9,r0,r2
	subu	 r9,r9,1
	st	 r9,r0,r2
@L1715:
	ld	 r9,r0,r24
	flt.ds	 r8,r9
	or.u	 r13,r0,0x3f80
	fdiv.dsd r10,r13,r8
	or.u	 r9,r0,hi16(_recbas.214)
	st.d	 r10,r9,lo16(_recbas.214)
	ld	 r9,r0,r24
	or	 r6,r0,0
	or	 r7,r0,0
	flt.ds	 r8,r9
	or.u	 r12,r0,hi16(_y.211)
	st.d	 r6,r12,lo16(_y.211)
	or.u	 r6,r0,hi16(_z__.212)
	fsub.dds r8,r8,r13
	st.d	 r8,r6,lo16(_z__.212)
	ld	 r3,r0,r3
	or	 r9,r0,1
	or.u	 r7,r0,hi16(_i__.210)
	cmp	 r8,r9,r3
	bb0.n	 le,r8,@L1717
	st	 r9,r7,lo16(_i__.210)
	or	 r4,r0,r10
	or	 r5,r0,r11
	or.u	 r23,r0,0x3f80
	or	 r1,r0,r6
	or	 r10,r0,r12
	or.u	 r25,r0,hi16(_oldy.208)
	or	 r11,r0,r7
@L1719:
	ld.d	 r8,r1,lo16(_z__.212)
	ld.d	 r6,r10,lo16(_y.211)
	fmul.ddd r12,r8,r4
	fcmp.sds r9,r6,r23
	bb0.n	 lt,r9,@L1720
	st.d	 r12,r1,lo16(_z__.212)
	st.d	 r6,r25,lo16(_oldy.208)
@L1720:
	ld	 r9,r11,lo16(_i__.210)
	fadd.ddd r6,r6,r12
	addu	 r9,r9,1
	st.d	 r6,r10,lo16(_y.211)
	cmp	 r8,r9,r3
	bb1.n	 le,r8,@L1719
	st	 r9,r11,lo16(_i__.210)
@L1717:
	or.u	 r6,r0,hi16(_y.211)
	or.u	 r7,r0,0x3f80
	ld.d	 r8,r6,lo16(_y.211)
	fcmp.sds r7,r8,r7
	bb1.n	 lt,r7,@L1723
	or.u	 r9,r0,hi16(_oldy.208)
	ld.d	 r20,r9,lo16(_oldy.208)
	st.d	 r20,r6,lo16(_y.211)
@L1723:
	ld	 r3,r0,r2
	or	 r9,r0,1
	or.u	 r7,r0,hi16(_i__.210)
	cmp	 r8,r9,r3
	bb0.n	 le,r8,@L1725
	st	 r9,r7,lo16(_i__.210)
	or	 r5,r0,r6
	or.u	 r9,r0,hi16(_c_b61)
	or	 r12,r0,r7
	ld.d	 r10,r9,lo16(_c_b61)
@L1727:
	ld	 r9,r0,r24
	flt.ds	 r6,r9
	ld.d	 r8,r5,lo16(_y.211)
	ld	 r13,r12,lo16(_i__.210)
	fmul.ddd r8,r8,r6
	addu	 r13,r13,1
	st	 r13,r12,lo16(_i__.210)
	cmp	 r13,r13,r3
	st.d	 r8,r31,72
	fadd.ddd r8,r8,r10
	bb1.n	 le,r13,@L1727
	st.d	 r8,r5,lo16(_y.211)
@L1725:
	or.u	 r9,r0,hi16(_y.211)
	ld.d	 r20,r9,lo16(_y.211)
	st.d	 r20,r0,r22
@Lte17:
	ld	 r1,r31,64
	ld.d	 r24,r31,56
	ld.d	 r22,r31,48
	or	 r2,r0,0
	ld.d	 r20,r31,40
	jmp.n	 r1
	addu	 r31,r31,80

	bss	 _i__.220,4,4
	bss	 _j.221,4,4
	bss	 _scale.222,8,8
	bss	 _value.223,8,8
	bss	 _sum.224,8,8
data
	align	 8
@LC110:
	string	 "M\000"
	align	 8
@LC111:
	string	 "O\000"
	align	 8
@LC112:
	string	 "I\000"
	align	 8
@LC113:
	string	 "F\000"
	align	 8
@LC114:
	string	 "E\000"
text
	align	 8
	global	 _dlange_
_dlange_:
	subu	 r31,r31,96
	st	 r1,r31,80
	st.d	 r24,r31,72
	st.d	 r22,r31,64
	st.d	 r20,r31,56
	st.d	 r18,r31,48
	st.d	 r16,r31,40
@Ltb18:
	or	 r22,r0,r3
	ld	 r20,r0,r6
	or	 r21,r0,r4
	ld	 r12,r0,r22
	addu	 r13,r20,1
	ld	 r11,r0,r21
	mak	 r13,r13,0<3>
	or	 r24,r0,r2
	subu	 r23,r5,r13
	cmp	 r13,r12,r11
	bb0.n	 gt,r13,@L1806
	subu	 r25,r7,8
	or	 r12,r0,r11
@L1806:
	bcnd.n	 ne0,r12,@L1805
	or	 r2,r0,r24
	or	 r12,r0,0
	or	 r13,r0,0
	br.n	 @L1882
	or.u	 r11,r0,hi16(_value.223)
	align	 4
@L1805:
	or	 r4,r0,1
	or.u	 r3,r0,hi16(@LC110)
	or	 r5,r0,1
	bsr.n	 _lsame_
	or	 r3,r3,lo16(@LC110)
	bcnd.n	 eq0,r2,@L1808
	or.u	 r10,r0,hi16(_value.223)
	or	 r12,r0,0
	or	 r13,r0,0
	st.d	 r12,r10,lo16(_value.223)
	ld	 r24,r0,r21
	or	 r13,r0,1
	or.u	 r11,r0,hi16(_j.221)
	cmp	 r12,r13,r24
	bb0.n	 le,r12,@L1807
	st	 r13,r11,lo16(_j.221)
	or.u	 r3,r0,hi16(_i__.220)
	or	 r25,r0,1
	or	 r4,r0,r10
	or	 r1,r0,r11
@L1812:
	ld	 r5,r0,r22
	cmp	 r13,r25,r5
	bb1.n	 gt,r13,@L1811
	st	 r25,r3,lo16(_i__.220)
	ld	 r13,r1,lo16(_j.221)
	mul	 r2,r13,r20
@L1816:
	ld	 r13,r3,lo16(_i__.220)
	addu	 r13,r13,r2
	ld.d	 r10,r23[r13]
	ld.d	 r6,r4,lo16(_value.223)
	fcmp.sds r13,r10,r0
	or	 r8,r0,r10
	bb1.n	 ge,r13,@L1817
	or	 r9,r0,r11
	xor.u	 r8,r10,0x8000
	or	 r9,r0,r11
@L1817:
	fcmp.sdd r13,r6,r8
	bb1	 lt,r13,@L1818
	ld.d	 r16,r4,lo16(_value.223)
	br.n	 @L1815
	st.d	 r16,r4,lo16(_value.223)
	align	 4
@L1818:
	st.d	 r8,r4,lo16(_value.223)
@L1815:
	ld	 r13,r3,lo16(_i__.220)
	addu	 r13,r13,1
	cmp	 r12,r13,r5
	bb1.n	 le,r12,@L1816
	st	 r13,r3,lo16(_i__.220)
@L1811:
	ld	 r13,r1,lo16(_j.221)
	addu	 r13,r13,1
	cmp	 r12,r13,r24
	bb1.n	 le,r12,@L1812
	st	 r13,r1,lo16(_j.221)
	br	 @L1807
	align	 4
@L1808:
	or	 r2,r0,r24
	or	 r4,r0,1
	or.u	 r3,r0,hi16(@LC111)
	or	 r5,r0,1
	bsr.n	 _lsame_
	or	 r3,r3,lo16(@LC111)
	bcnd.n	 ne0,r2,@L1885
	or.u	 r10,r0,hi16(_value.223)
	ld.bu	 r13,r0,r24
	cmp	 r13,r13,49
	bb1.n	 ne,r13,@L1823
	or	 r2,r0,r24
	or.u	 r10,r0,hi16(_value.223)
@L1885:
	or	 r12,r0,0
	or	 r13,r0,0
	st.d	 r12,r10,lo16(_value.223)
	ld	 r24,r0,r21
	or	 r13,r0,1
	or.u	 r11,r0,hi16(_j.221)
	cmp	 r12,r13,r24
	bb0.n	 le,r12,@L1807
	st	 r13,r11,lo16(_j.221)
	or	 r18,r0,0
	or	 r19,r0,0
	or.u	 r4,r0,hi16(_sum.224)
	or.u	 r3,r0,hi16(_i__.220)
	or	 r1,r0,1
	or	 r25,r0,r10
	or	 r2,r0,r11
	or	 r21,r25,lo16(_value.223)
@L1828:
	st.d	 r18,r4,lo16(_sum.224)
	ld	 r5,r0,r22
	cmp	 r13,r1,r5
	bb0.n	 le,r13,@L1830
	st	 r1,r3,lo16(_i__.220)
	ld	 r13,r2,lo16(_j.221)
	mul	 r9,r13,r20
@L1832:
	ld	 r13,r3,lo16(_i__.220)
	addu	 r13,r13,r9
	ld.d	 r10,r23[r13]
	fcmp.sds r13,r10,r0
	bb1	 lt,r13,@L1833
	ld.d	 r12,r4,lo16(_sum.224)
	fadd.ddd r12,r12,r10
	br.n	 @L1886
	st.d	 r12,r4,lo16(_sum.224)
	align	 4
@L1833:
	ld.d	 r12,r4,lo16(_sum.224)
	fsub.ddd r12,r12,r10
	st.d	 r12,r4,lo16(_sum.224)
@L1886:
	ld	 r13,r3,lo16(_i__.220)
	addu	 r13,r13,1
	cmp	 r12,r13,r5
	bb1.n	 le,r12,@L1832
	st	 r13,r3,lo16(_i__.220)
@L1830:
	ld.d	 r6,r25,lo16(_value.223)
	ld.d	 r12,r4,lo16(_sum.224)
	fcmp.sdd r11,r6,r12
	or	 r8,r0,r12
	bb1.n	 lt,r11,@L1836
	or	 r9,r0,r13
	or	 r8,r0,r6
	or	 r9,r0,r7
@L1836:
	ld	 r13,r2,lo16(_j.221)
	addu	 r13,r13,1
	st.d	 r8,r0,r21
	cmp	 r12,r13,r24
	bb1.n	 le,r12,@L1828
	st	 r13,r2,lo16(_j.221)
	br	 @L1807
	align	 4
@L1823:
	or	 r4,r0,1
	or.u	 r3,r0,hi16(@LC112)
	or	 r5,r0,1
	bsr.n	 _lsame_
	or	 r3,r3,lo16(@LC112)
	bcnd	 eq0,r2,@L1840
	ld	 r24,r0,r22
	or	 r13,r0,1
	or.u	 r11,r0,hi16(_i__.220)
	cmp	 r12,r13,r24
	bb0.n	 le,r12,@L1842
	st	 r13,r11,lo16(_i__.220)
	or	 r8,r0,0
	or	 r9,r0,0
@L1844:
	ld	 r13,r11,lo16(_i__.220)
	addu	 r12,r13,1
	st.d	 r8,r25[r13]
	cmp	 r13,r12,r24
	bb1.n	 le,r13,@L1844
	st	 r12,r11,lo16(_i__.220)
@L1842:
	ld	 r24,r0,r21
	or	 r13,r0,1
	or.u	 r11,r0,hi16(_j.221)
	cmp	 r12,r13,r24
	bb0.n	 le,r12,@L1847
	st	 r13,r11,lo16(_j.221)
	or.u	 r6,r0,hi16(_i__.220)
	or	 r2,r0,1
	or	 r3,r0,r11
@L1849:
	ld	 r5,r0,r22
	cmp	 r13,r2,r5
	bb1.n	 gt,r13,@L1848
	st	 r2,r6,lo16(_i__.220)
	ld	 r13,r3,lo16(_j.221)
	mul	 r4,r13,r20
@L1853:
	ld	 r7,r6,lo16(_i__.220)
	addu	 r13,r7,r4
	ld.d	 r10,r23[r13]
	fcmp.sds r13,r10,r0
	ld.d	 r8,r25[r7]
	bb1	 lt,r13,@L1854
	fadd.ddd r12,r8,r10
	br.n	 @L1887
	st.d	 r12,r25[r7]
	align	 4
@L1854:
	fsub.ddd r12,r8,r10
	st.d	 r12,r25[r7]
@L1887:
	ld	 r13,r6,lo16(_i__.220)
	addu	 r13,r13,1
	cmp	 r12,r13,r5
	bb1.n	 le,r12,@L1853
	st	 r13,r6,lo16(_i__.220)
@L1848:
	ld	 r13,r3,lo16(_j.221)
	addu	 r13,r13,1
	cmp	 r12,r13,r24
	bb1.n	 le,r12,@L1849
	st	 r13,r3,lo16(_j.221)
@L1847:
	or.u	 r10,r0,hi16(_value.223)
	or	 r12,r0,0
	or	 r13,r0,0
	st.d	 r12,r10,lo16(_value.223)
	ld	 r24,r0,r22
	or	 r13,r0,1
	or.u	 r11,r0,hi16(_i__.220)
	cmp	 r12,r13,r24
	bb0.n	 le,r12,@L1807
	st	 r13,r11,lo16(_i__.220)
	or	 r9,r0,r10
	or	 r8,r0,r11
@L1861:
	ld	 r13,r8,lo16(_i__.220)
	ld.d	 r10,r9,lo16(_value.223)
	ld.d	 r6,r25[r13]
	fcmp.sdd r13,r10,r6
	bb1	 lt,r13,@L1862
	ld.d	 r16,r9,lo16(_value.223)
	br.n	 @L1860
	st.d	 r16,r9,lo16(_value.223)
	align	 4
@L1862:
	st.d	 r6,r9,lo16(_value.223)
@L1860:
	ld	 r13,r8,lo16(_i__.220)
	addu	 r13,r13,1
	cmp	 r12,r13,r24
	bb1.n	 le,r12,@L1861
	st	 r13,r8,lo16(_i__.220)
	br	 @L1807
	align	 4
@L1840:
	or	 r2,r0,r24
	or	 r4,r0,1
	or.u	 r3,r0,hi16(@LC113)
	or	 r5,r0,1
	bsr.n	 _lsame_
	or	 r3,r3,lo16(@LC113)
	bcnd.n	 ne0,r2,@L1867
	or	 r2,r0,r24
	or	 r4,r0,1
	or.u	 r3,r0,hi16(@LC114)
	or	 r5,r0,1
	bsr.n	 _lsame_
	or	 r3,r3,lo16(@LC114)
	bcnd	 eq0,r2,@L1807
@L1867:
	or	 r12,r0,0
	or	 r13,r0,0
	or.u	 r11,r0,hi16(_scale.222)
	st.d	 r12,r11,lo16(_scale.222)
	or.u	 r11,r0,hi16(_sum.224)
	or.u	 r12,r0,0x3ff0
	or	 r13,r0,0
	st.d	 r12,r11,lo16(_sum.224)
	ld	 r24,r0,r21
	or	 r13,r0,1
	or.u	 r11,r0,hi16(_j.221)
	cmp	 r12,r13,r24
	bb0.n	 le,r12,@L1869
	st	 r13,r11,lo16(_j.221)
	or	 r25,r0,r11
@L1871:
	ld	 r3,r25,lo16(_j.221)
	or.u	 r4,r0,hi16(_c__1)
	mul	 r3,r3,r20
	or	 r2,r0,r22
	or.u	 r5,r0,hi16(_scale.222)
	or.u	 r6,r0,hi16(_sum.224)
	or	 r4,r4,lo16(_c__1)
	mak	 r3,r3,0<3>
	or	 r5,r5,lo16(_scale.222)
	addu	 r3,r3,8
	or	 r6,r6,lo16(_sum.224)
	bsr.n	 _dlassq_
	addu	 r3,r23,r3
	ld	 r13,r25,lo16(_j.221)
	addu	 r13,r13,1
	cmp	 r12,r13,r24
	bb1.n	 le,r12,@L1871
	st	 r13,r25,lo16(_j.221)
@L1869:
	or.u	 r13,r0,hi16(_sum.224)
	ld.d	 r2,r13,lo16(_sum.224)
	bsr.n	 _sqrt
	or.u	 r25,r0,hi16(_scale.222)
	ld.d	 r12,r25,lo16(_scale.222)
	or.u	 r11,r0,hi16(_value.223)
	fmul.ddd r12,r12,r2
@L1882:
	st.d	 r12,r11,lo16(_value.223)
@L1807:
@Lte18:
	ld	 r1,r31,80
	ld.d	 r24,r31,72
	ld.d	 r22,r31,64
	ld.d	 r20,r31,56
	or.u	 r13,r0,hi16(_value.223)
	ld.d	 r18,r31,48
	ld.d	 r2,r13,lo16(_value.223)
	ld.d	 r16,r31,40
	jmp.n	 r1
	addu	 r31,r31,96

	bss	 _absa.227,8,8
	bss	 _i__.228,4,4
	bss	 _j.229,4,4
	bss	 _k.230,4,4
	bss	 _scale.231,8,8
	bss	 _value.232,8,8
	bss	 _sum.233,8,8
data
	align	 8
@LC115:
	string	 "M\000"
	align	 8
@LC116:
	string	 "U\000"
	align	 8
@LC117:
	string	 "I\000"
	align	 8
@LC118:
	string	 "O\000"
	align	 8
@LC119:
	string	 "U\000"
	align	 8
@LC120:
	string	 "F\000"
	align	 8
@LC121:
	string	 "E\000"
	align	 8
@LC122:
	string	 "U\000"
	align	 8
@LC123:
	string	 "U\000"
text
	align	 8
	global	 _dlansp_
_dlansp_:
	subu	 r31,r31,96
	st	 r1,r31,80
	st	 r15,r31,36
	st.d	 r24,r31,72
	st.d	 r22,r31,64
	st.d	 r20,r31,56
	or	 r25,r0,r2
	st.d	 r18,r31,48
	or	 r21,r0,r4
	st.d	 r16,r31,40
@Ltb19:
	or	 r15,r0,r3
	ld	 r13,r0,r21
	subu	 r24,r6,8
	bcnd.n	 ne0,r13,@L1992
	subu	 r20,r5,8
	or	 r12,r0,0
	or	 r13,r0,0
	br.n	 @L2104
	or.u	 r11,r0,hi16(_value.232)
	align	 4
@L1992:
	or	 r2,r0,r25
	or	 r4,r0,1
	or.u	 r3,r0,hi16(@LC115)
	or	 r5,r0,1
	bsr.n	 _lsame_
	or	 r3,r3,lo16(@LC115)
	bcnd.n	 eq0,r2,@L1994
	or	 r2,r0,r15
	or	 r12,r0,0
	or	 r13,r0,0
	or	 r4,r0,1
	or.u	 r3,r0,hi16(@LC116)
	or	 r5,r0,1
	or.u	 r25,r0,hi16(_value.232)
	or	 r3,r3,lo16(@LC116)
	bsr.n	 _lsame_
	st.d	 r12,r25,lo16(_value.232)
	bcnd.n	 eq0,r2,@L1995
	or.u	 r10,r0,hi16(_k.230)
	or	 r13,r0,1
	st	 r13,r10,lo16(_k.230)
	ld	 r23,r0,r21
	or.u	 r11,r0,hi16(_j.229)
	cmp	 r12,r13,r23
	bb0.n	 le,r12,@L1993
	st	 r13,r11,lo16(_j.229)
	or	 r1,r0,r10
	or	 r2,r0,r11
	or.u	 r3,r0,hi16(_i__.228)
	or	 r5,r0,r25
@L1999:
	ld	 r12,r1,lo16(_k.230)
	ld	 r13,r2,lo16(_j.229)
	addu	 r13,r12,r13
	subu	 r13,r13,1
	st	 r12,r3,lo16(_i__.228)
	cmp	 r12,r12,r13
	bb0.n	 le,r12,@L2001
	st	 r13,r31,88
	or	 r4,r0,r13
@L2003:
	ld	 r13,r3,lo16(_i__.228)
	ld.d	 r10,r20[r13]
	ld.d	 r6,r5,lo16(_value.232)
	fcmp.sds r13,r10,r0
	or	 r8,r0,r10
	bb1.n	 ge,r13,@L2004
	or	 r9,r0,r11
	xor.u	 r8,r10,0x8000
	or	 r9,r0,r11
@L2004:
	fcmp.sdd r13,r6,r8
	bb1	 lt,r13,@L2005
	ld.d	 r16,r5,lo16(_value.232)
	br.n	 @L2002
	st.d	 r16,r5,lo16(_value.232)
	align	 4
@L2005:
	st.d	 r8,r5,lo16(_value.232)
@L2002:
	ld	 r13,r3,lo16(_i__.228)
	addu	 r13,r13,1
	cmp	 r12,r13,r4
	bb1.n	 le,r12,@L2003
	st	 r13,r3,lo16(_i__.228)
@L2001:
	ld	 r13,r1,lo16(_k.230)
	ld	 r12,r2,lo16(_j.229)
	addu	 r13,r13,r12
	addu	 r12,r12,1
	st	 r13,r1,lo16(_k.230)
	cmp	 r13,r12,r23
	bb1.n	 le,r13,@L1999
	st	 r12,r2,lo16(_j.229)
	br	 @L1993
	align	 4
@L1995:
	or	 r13,r0,1
	st	 r13,r10,lo16(_k.230)
	ld	 r23,r0,r21
	or.u	 r11,r0,hi16(_j.229)
	cmp	 r12,r13,r23
	bb0.n	 le,r12,@L1993
	st	 r13,r11,lo16(_j.229)
	or	 r1,r0,r10
	or	 r2,r0,r11
	or.u	 r3,r0,hi16(_i__.228)
	or	 r4,r0,r25
@L2013:
	ld	 r13,r1,lo16(_k.230)
	ld	 r12,r0,r21
	ld	 r11,r2,lo16(_j.229)
	addu	 r12,r13,r12
	subu	 r12,r12,r11
	st	 r13,r3,lo16(_i__.228)
	cmp	 r13,r13,r12
	bb0.n	 le,r13,@L2015
	st	 r12,r31,88
	or	 r5,r0,r12
@L2017:
	ld	 r13,r3,lo16(_i__.228)
	ld.d	 r10,r20[r13]
	ld.d	 r6,r4,lo16(_value.232)
	fcmp.sds r13,r10,r0
	or	 r8,r0,r10
	bb1.n	 ge,r13,@L2018
	or	 r9,r0,r11
	xor.u	 r8,r10,0x8000
	or	 r9,r0,r11
@L2018:
	fcmp.sdd r13,r6,r8
	bb1	 lt,r13,@L2019
	ld.d	 r16,r4,lo16(_value.232)
	br.n	 @L2016
	st.d	 r16,r4,lo16(_value.232)
	align	 4
@L2019:
	st.d	 r8,r4,lo16(_value.232)
@L2016:
	ld	 r13,r3,lo16(_i__.228)
	addu	 r13,r13,1
	cmp	 r12,r13,r5
	bb1.n	 le,r12,@L2017
	st	 r13,r3,lo16(_i__.228)
@L2015:
	ld	 r13,r1,lo16(_k.230)
	ld	 r11,r0,r21
	ld	 r12,r2,lo16(_j.229)
	addu	 r13,r13,r11
	subu	 r13,r13,r12
	addu	 r12,r12,1
	st	 r12,r2,lo16(_j.229)
	addu	 r13,r13,1
	cmp	 r12,r12,r23
	bb1.n	 le,r12,@L2013
	st	 r13,r1,lo16(_k.230)
	br	 @L1993
	align	 4
@L1994:
	or	 r2,r0,r25
	or	 r4,r0,1
	or.u	 r3,r0,hi16(@LC117)
	or	 r5,r0,1
	bsr.n	 _lsame_
	or	 r3,r3,lo16(@LC117)
	bcnd.n	 ne0,r2,@L2025
	or	 r2,r0,r25
	or	 r4,r0,1
	or.u	 r3,r0,hi16(@LC118)
	or	 r5,r0,1
	bsr.n	 _lsame_
	or	 r3,r3,lo16(@LC118)
	bcnd	 ne0,r2,@L2025
	ld.bu	 r13,r0,r25
	cmp	 r13,r13,49
	bb1.n	 ne,r13,@L2024
	or	 r2,r0,r25
@L2025:
	or	 r12,r0,0
	or	 r13,r0,0
	or	 r2,r0,r15
	or	 r4,r0,1
	or	 r5,r0,1
	or.u	 r11,r0,hi16(_value.232)
	or.u	 r3,r0,hi16(@LC119)
	or.u	 r18,r0,hi16(_k.230)
	or	 r25,r0,1
	st.d	 r12,r11,lo16(_value.232)
	or	 r3,r3,lo16(@LC119)
	bsr.n	 _lsame_
	st	 r25,r18,lo16(_k.230)
	bcnd	 eq0,r2,@L2026
	ld	 r23,r0,r21
	or.u	 r12,r0,hi16(_j.229)
	cmp	 r13,r25,r23
	bb0.n	 le,r13,@L2028
	st	 r25,r12,lo16(_j.229)
	or.u	 r2,r0,hi16(_sum.233)
	or	 r22,r0,r12
	or.u	 r25,r0,hi16(_i__.228)
	or	 r19,r0,1
	or.u	 r1,r0,hi16(_absa.227)
	or	 r3,r0,r18
@L2030:
	ld	 r13,r22,lo16(_j.229)
	or	 r10,r0,0
	or	 r11,r0,0
	st.d	 r10,r2,lo16(_sum.233)
	subu	 r12,r13,1
	st	 r19,r25,lo16(_i__.228)
	cmp	 r13,r19,r12
	bb0.n	 le,r13,@L2032
	st	 r12,r31,88
	or	 r4,r0,r12
@L2034:
	ld	 r5,r3,lo16(_k.230)
	ld.d	 r10,r20[r5]
	fcmp.sds r13,r10,r0
	bb1.n	 ge,r13,@L2035
	st.d	 r10,r1,lo16(_absa.227)
	xor.u	 r12,r10,0x8000
	or	 r13,r0,r11
	st.d	 r12,r1,lo16(_absa.227)
@L2035:
	ld.d	 r10,r2,lo16(_sum.233)
	ld	 r12,r25,lo16(_i__.228)
	ld.d	 r6,r1,lo16(_absa.227)
	ld.d	 r8,r24[r12]
	addu	 r13,r5,1
	st	 r13,r3,lo16(_k.230)
	fadd.ddd r10,r10,r6
	st.d	 r10,r2,lo16(_sum.233)
	addu	 r13,r12,1
	st	 r13,r25,lo16(_i__.228)
	cmp	 r13,r13,r4
	fadd.ddd r8,r8,r6
	bb1.n	 le,r13,@L2034
	st.d	 r8,r24[r12]
@L2032:
	ld	 r13,r3,lo16(_k.230)
	ld.d	 r10,r20[r13]
	fcmp.sds r13,r10,r0
	ld	 r9,r22,lo16(_j.229)
	bb1	 lt,r13,@L2037
	ld.d	 r12,r2,lo16(_sum.233)
	fadd.ddd r12,r12,r10
	br.n	 @L2108
	st.d	 r12,r24[r9]
	align	 4
@L2037:
	ld.d	 r12,r2,lo16(_sum.233)
	fsub.ddd r12,r12,r10
	st.d	 r12,r24[r9]
@L2108:
	ld	 r13,r3,lo16(_k.230)
	ld	 r12,r22,lo16(_j.229)
	addu	 r13,r13,1
	addu	 r12,r12,1
	st	 r13,r3,lo16(_k.230)
	cmp	 r13,r12,r23
	bb1.n	 le,r13,@L2030
	st	 r12,r22,lo16(_j.229)
@L2028:
	ld	 r23,r0,r21
	or	 r13,r0,1
	or.u	 r11,r0,hi16(_i__.228)
	cmp	 r12,r13,r23
	bb0.n	 le,r12,@L1993
	st	 r13,r11,lo16(_i__.228)
	or.u	 r9,r0,hi16(_value.232)
	or	 r8,r0,r11
@L2043:
	ld	 r13,r8,lo16(_i__.228)
	ld.d	 r10,r9,lo16(_value.232)
	ld.d	 r6,r24[r13]
	fcmp.sdd r13,r10,r6
	bb1	 lt,r13,@L2044
	ld.d	 r16,r9,lo16(_value.232)
	br.n	 @L2042
	st.d	 r16,r9,lo16(_value.232)
	align	 4
@L2044:
	st.d	 r6,r9,lo16(_value.232)
@L2042:
	ld	 r13,r8,lo16(_i__.228)
	addu	 r13,r13,1
	cmp	 r12,r13,r23
	bb1.n	 le,r12,@L2043
	st	 r13,r8,lo16(_i__.228)
	br	 @L1993
	align	 4
@L2026:
	ld	 r23,r0,r21
	or.u	 r12,r0,hi16(_i__.228)
	cmp	 r13,r25,r23
	bb0.n	 le,r13,@L2049
	st	 r25,r12,lo16(_i__.228)
	or	 r8,r0,0
	or	 r9,r0,0
	or	 r11,r0,r12
@L2051:
	ld	 r13,r11,lo16(_i__.228)
	addu	 r12,r13,1
	st.d	 r8,r24[r13]
	cmp	 r13,r12,r23
	bb1.n	 le,r13,@L2051
	st	 r12,r11,lo16(_i__.228)
@L2049:
	ld	 r23,r0,r21
	or	 r13,r0,1
	or.u	 r11,r0,hi16(_j.229)
	cmp	 r12,r13,r23
	bb0.n	 le,r12,@L1993
	st	 r13,r11,lo16(_j.229)
	or.u	 r2,r0,hi16(_sum.233)
	or.u	 r3,r0,hi16(_k.230)
	or	 r22,r0,r11
	or.u	 r25,r0,hi16(_i__.228)
	or.u	 r13,r0,hi16(_value.232)
	or.u	 r1,r0,hi16(_absa.227)
	or	 r19,r13,lo16(_value.232)
@L2056:
	ld	 r13,r3,lo16(_k.230)
	ld.d	 r10,r20[r13]
	ld	 r13,r22,lo16(_j.229)
	fcmp.sds r12,r10,r0
	ld.d	 r8,r24[r13]
	bb1	 lt,r12,@L2057
	fadd.ddd r12,r8,r10
	br.n	 @L2109
	st.d	 r12,r2,lo16(_sum.233)
	align	 4
@L2057:
	fsub.ddd r12,r8,r10
	st.d	 r12,r2,lo16(_sum.233)
@L2109:
	ld	 r13,r3,lo16(_k.230)
	addu	 r13,r13,1
	st	 r13,r3,lo16(_k.230)
	ld	 r13,r22,lo16(_j.229)
	ld	 r11,r0,r21
	addu	 r13,r13,1
	st	 r11,r31,88
	cmp	 r12,r13,r11
	bb0.n	 le,r12,@L2060
	st	 r13,r25,lo16(_i__.228)
	or	 r4,r0,r11
@L2062:
	ld	 r5,r3,lo16(_k.230)
	ld.d	 r10,r20[r5]
	fcmp.sds r13,r10,r0
	bb1.n	 ge,r13,@L2063
	st.d	 r10,r1,lo16(_absa.227)
	xor.u	 r12,r10,0x8000
	or	 r13,r0,r11
	st.d	 r12,r1,lo16(_absa.227)
@L2063:
	ld.d	 r10,r2,lo16(_sum.233)
	ld	 r12,r25,lo16(_i__.228)
	ld.d	 r6,r1,lo16(_absa.227)
	ld.d	 r8,r24[r12]
	addu	 r13,r5,1
	st	 r13,r3,lo16(_k.230)
	fadd.ddd r10,r10,r6
	st.d	 r10,r2,lo16(_sum.233)
	addu	 r13,r12,1
	st	 r13,r25,lo16(_i__.228)
	cmp	 r13,r13,r4
	fadd.ddd r8,r8,r6
	bb1.n	 le,r13,@L2062
	st.d	 r8,r24[r12]
@L2060:
	or.u	 r13,r0,hi16(_value.232)
	ld.d	 r6,r13,lo16(_value.232)
	ld.d	 r12,r2,lo16(_sum.233)
	fcmp.sdd r11,r6,r12
	or	 r8,r0,r12
	bb1.n	 lt,r11,@L2065
	or	 r9,r0,r13
	or	 r8,r0,r6
	or	 r9,r0,r7
@L2065:
	ld	 r13,r22,lo16(_j.229)
	addu	 r13,r13,1
	st.d	 r8,r0,r19
	cmp	 r12,r13,r23
	bb1.n	 le,r12,@L2056
	st	 r13,r22,lo16(_j.229)
	br	 @L1993
	align	 4
@L2024:
	or	 r4,r0,1
	or.u	 r3,r0,hi16(@LC120)
	or	 r5,r0,1
	bsr.n	 _lsame_
	or	 r3,r3,lo16(@LC120)
	bcnd.n	 ne0,r2,@L2070
	or	 r2,r0,r25
	or	 r4,r0,1
	or.u	 r3,r0,hi16(@LC121)
	or	 r5,r0,1
	bsr.n	 _lsame_
	or	 r3,r3,lo16(@LC121)
	bcnd	 eq0,r2,@L1993
@L2070:
	or	 r10,r0,0
	or	 r11,r0,0
	or.u	 r8,r0,0x3ff0
	or	 r9,r0,0
	or	 r2,r0,r15
	or	 r4,r0,1
	or.u	 r13,r0,hi16(_scale.231)
	or	 r5,r0,1
	or.u	 r3,r0,hi16(@LC122)
	or.u	 r22,r0,hi16(_k.230)
	st.d	 r10,r13,lo16(_scale.231)
	or	 r25,r0,2
	st	 r25,r22,lo16(_k.230)
	or.u	 r13,r0,hi16(_sum.233)
	or	 r3,r3,lo16(@LC122)
	bsr.n	 _lsame_
	st.d	 r8,r13,lo16(_sum.233)
	bcnd	 eq0,r2,@L2071
	ld	 r23,r0,r21
	or.u	 r12,r0,hi16(_j.229)
	cmp	 r13,r25,r23
	bb0.n	 le,r13,@L2077
	st	 r25,r12,lo16(_j.229)
	or	 r24,r0,r12
	or	 r25,r0,r22
@L2075:
	addu	 r2,r31,88
	or.u	 r4,r0,hi16(_c__1)
	or.u	 r5,r0,hi16(_scale.231)
	ld	 r3,r25,lo16(_k.230)
	or.u	 r6,r0,hi16(_sum.233)
	ld	 r13,r24,lo16(_j.229)
	or	 r4,r4,lo16(_c__1)
	or	 r5,r5,lo16(_scale.231)
	or	 r6,r6,lo16(_sum.233)
	lda.d	 r3,r20[r3]
	subu	 r13,r13,1
	bsr.n	 _dlassq_
	st	 r13,r31,88
	ld	 r12,r25,lo16(_k.230)
	ld	 r13,r24,lo16(_j.229)
	addu	 r12,r12,r13
	addu	 r13,r13,1
	st	 r12,r25,lo16(_k.230)
	cmp	 r12,r13,r23
	bb1.n	 le,r12,@L2075
	st	 r13,r24,lo16(_j.229)
	br.n	 @L2110
	or.u	 r10,r0,hi16(_sum.233)
	align	 4
@L2071:
	ld	 r13,r0,r21
	subu	 r23,r13,1
	or	 r13,r0,1
	or.u	 r11,r0,hi16(_j.229)
	cmp	 r12,r13,r23
	bb0.n	 le,r12,@L2077
	st	 r13,r11,lo16(_j.229)
	or	 r24,r0,r11
	or	 r25,r0,r22
@L2081:
	or.u	 r4,r0,hi16(_c__1)
	addu	 r2,r31,88
	ld	 r13,r0,r21
	or.u	 r5,r0,hi16(_scale.231)
	ld	 r3,r25,lo16(_k.230)
	or.u	 r6,r0,hi16(_sum.233)
	ld	 r12,r24,lo16(_j.229)
	or	 r4,r4,lo16(_c__1)
	or	 r5,r5,lo16(_scale.231)
	or	 r6,r6,lo16(_sum.233)
	lda.d	 r3,r20[r3]
	subu	 r13,r13,r12
	bsr.n	 _dlassq_
	st	 r13,r31,88
	ld	 r12,r25,lo16(_k.230)
	ld	 r11,r0,r21
	ld	 r13,r24,lo16(_j.229)
	addu	 r12,r12,r11
	subu	 r12,r12,r13
	addu	 r13,r13,1
	st	 r13,r24,lo16(_j.229)
	addu	 r12,r12,1
	cmp	 r13,r13,r23
	bb1.n	 le,r13,@L2081
	st	 r12,r25,lo16(_k.230)
@L2077:
	or.u	 r10,r0,hi16(_sum.233)
@L2110:
	ld.d	 r12,r10,lo16(_sum.233)
	or.u	 r9,r0,hi16(_k.230)
	or	 r11,r0,1
	st	 r11,r9,lo16(_k.230)
	fadd.ddd r12,r12,r12
	st.d	 r12,r10,lo16(_sum.233)
	ld	 r23,r0,r21
	or.u	 r12,r0,hi16(_i__.228)
	cmp	 r13,r11,r23
	bb0.n	 le,r13,@L2084
	st	 r11,r12,lo16(_i__.228)
	or	 r25,r0,r9
	or.u	 r19,r0,hi16(_absa.227)
	or.u	 r18,r0,hi16(_scale.231)
	or	 r22,r0,r10
	or	 r24,r0,r12
@L2086:
	ld	 r13,r25,lo16(_k.230)
	ld.d	 r10,r20[r13]
	fcmp.sds r13,r10,r0
	bb0.n	 ne,r13,@L2111
	or	 r2,r0,r15
	bb1.n	 ge,r13,@L2088
	st.d	 r10,r19,lo16(_absa.227)
	xor.u	 r12,r10,0x8000
	or	 r13,r0,r11
	st.d	 r12,r19,lo16(_absa.227)
@L2088:
	ld.d	 r10,r18,lo16(_scale.231)
	ld.d	 r8,r19,lo16(_absa.227)
	fcmp.sdd r13,r10,r8
	bb0	 lt,r13,@L2089
	fdiv.ddd r10,r10,r8
	fmul.ddd r12,r10,r10
	ld.d	 r10,r22,lo16(_sum.233)
	fmul.ddd r10,r10,r12
	or.u	 r13,r0,0x3f80
	st.d	 r8,r18,lo16(_scale.231)
	fadd.dds r10,r10,r13
	br.n	 @L2087
	st.d	 r10,r22,lo16(_sum.233)
	align	 4
@L2089:
	fdiv.ddd r10,r8,r10
	fmul.ddd r10,r10,r10
	ld.d	 r12,r22,lo16(_sum.233)
	fadd.ddd r12,r12,r10
	st.d	 r12,r22,lo16(_sum.233)
@L2087:
	or	 r2,r0,r15
@L2111:
	or	 r4,r0,1
	or.u	 r3,r0,hi16(@LC123)
	or	 r5,r0,1
	bsr.n	 _lsame_
	or	 r3,r3,lo16(@LC123)
	bcnd	 eq0,r2,@L2091
	ld	 r13,r25,lo16(_k.230)
	ld	 r12,r24,lo16(_i__.228)
	br.n	 @L2107
	addu	 r13,r13,r12
	align	 4
@L2091:
	ld	 r13,r25,lo16(_k.230)
	ld	 r12,r0,r21
	ld	 r11,r24,lo16(_i__.228)
	addu	 r13,r13,r12
	subu	 r13,r13,r11
@L2107:
	addu	 r13,r13,1
	st	 r13,r25,lo16(_k.230)
	ld	 r13,r24,lo16(_i__.228)
	addu	 r13,r13,1
	cmp	 r12,r13,r23
	bb1.n	 le,r12,@L2086
	st	 r13,r24,lo16(_i__.228)
@L2084:
	or.u	 r13,r0,hi16(_sum.233)
	ld.d	 r2,r13,lo16(_sum.233)
	bsr.n	 _sqrt
	or.u	 r25,r0,hi16(_scale.231)
	ld.d	 r12,r25,lo16(_scale.231)
	or.u	 r11,r0,hi16(_value.232)
	fmul.ddd r12,r12,r2
@L2104:
	st.d	 r12,r11,lo16(_value.232)
@L1993:
@Lte19:
	ld	 r1,r31,80
	ld	 r15,r31,36
	ld.d	 r24,r31,72
	ld.d	 r22,r31,64
	ld.d	 r20,r31,56
	or.u	 r13,r0,hi16(_value.232)
	ld.d	 r18,r31,48
	ld.d	 r2,r13,lo16(_value.232)
	ld.d	 r16,r31,40
	jmp.n	 r1
	addu	 r31,r31,96

	bss	 _i__.236,4,4
	bss	 _scale.237,8,8
	bss	 _anorm.238,8,8
	bss	 _sum.239,8,8
data
	align	 8
@LC124:
	string	 "M\000"
	align	 8
@LC125:
	string	 "O\000"
	align	 8
@LC126:
	string	 "I\000"
	align	 8
@LC127:
	string	 "F\000"
	align	 8
@LC128:
	string	 "E\000"
text
	align	 8
	global	 _dlanst_
_dlanst_:
	subu	 r31,r31,96
	st	 r1,r31,80
	st	 r17,r31,44
	st.d	 r24,r31,72
	st.d	 r22,r31,64
	st.d	 r20,r31,56
	or	 r24,r0,r3
	st.d	 r18,r31,48
@Ltb20:
	or	 r25,r0,r2
	ld	 r13,r0,r24
	subu	 r23,r5,8
	bcnd.n	 gt0,r13,@L2159
	subu	 r22,r4,8
	or	 r12,r0,0
	or	 r13,r0,0
	br.n	 @L2206
	or.u	 r11,r0,hi16(_anorm.238)
	align	 4
@L2159:
	or	 r2,r0,r25
	or	 r4,r0,1
	or.u	 r3,r0,hi16(@LC124)
	or	 r5,r0,1
	bsr.n	 _lsame_
	or	 r3,r3,lo16(@LC124)
	bcnd	 eq0,r2,@L2161
	ld	 r13,r0,r24
	ld.d	 r4,r22[r13]
	or.u	 r11,r0,hi16(_anorm.238)
	fcmp.sds r13,r4,r0
	bb1.n	 ge,r13,@L2162
	st.d	 r4,r11,lo16(_anorm.238)
	xor.u	 r12,r4,0x8000
	or	 r13,r0,r5
	st.d	 r12,r11,lo16(_anorm.238)
@L2162:
	ld	 r13,r0,r24
	or.u	 r10,r0,hi16(_i__.236)
	subu	 r12,r13,1
	or	 r13,r0,1
	st	 r13,r10,lo16(_i__.236)
	cmp	 r13,r13,r12
	bb0.n	 le,r13,@L2160
	st	 r12,r31,88
	or	 r5,r0,r12
@L2166:
	ld	 r13,r10,lo16(_i__.236)
	ld.d	 r8,r22[r13]
	fcmp.sds r13,r8,r0
	ld.d	 r6,r11,lo16(_anorm.238)
	bb1	 ge,r13,@L2167
	xor.u	 r8,r8,0x8000
@L2167:
	fcmp.sdd r13,r6,r8
	bb1	 lt,r13,@L2168
	ld.d	 r18,r11,lo16(_anorm.238)
	br.n	 @L2169
	st.d	 r18,r11,lo16(_anorm.238)
	align	 4
@L2168:
	st.d	 r8,r11,lo16(_anorm.238)
@L2169:
	ld	 r13,r10,lo16(_i__.236)
	ld.d	 r8,r23[r13]
	fcmp.sds r13,r8,r0
	ld.d	 r6,r11,lo16(_anorm.238)
	bb1	 ge,r13,@L2170
	xor.u	 r8,r8,0x8000
@L2170:
	fcmp.sdd r13,r6,r8
	bb1	 lt,r13,@L2171
	ld.d	 r18,r11,lo16(_anorm.238)
	br.n	 @L2165
	st.d	 r18,r11,lo16(_anorm.238)
	align	 4
@L2171:
	st.d	 r8,r11,lo16(_anorm.238)
@L2165:
	ld	 r13,r10,lo16(_i__.236)
	addu	 r13,r13,1
	cmp	 r12,r13,r5
	bb1.n	 le,r12,@L2166
	st	 r13,r10,lo16(_i__.236)
	br	 @L2160
	align	 4
@L2161:
	or	 r2,r0,r25
	or	 r4,r0,1
	or.u	 r3,r0,hi16(@LC125)
	or	 r5,r0,1
	bsr.n	 _lsame_
	or	 r3,r3,lo16(@LC125)
	bcnd	 ne0,r2,@L2176
	ld.bu	 r13,r0,r25
	cmp	 r13,r13,49
	bb0.n	 ne,r13,@L2176
	or	 r2,r0,r25
	or	 r4,r0,1
	or.u	 r3,r0,hi16(@LC126)
	or	 r5,r0,1
	bsr.n	 _lsame_
	or	 r3,r3,lo16(@LC126)
	bcnd.n	 eq0,r2,@L2175
	or	 r2,r0,r25
@L2176:
	ld	 r13,r0,r24
	cmp	 r13,r13,1
	bb1	 ne,r13,@L2177
	ld.d	 r4,r22,8
	fcmp.sds r13,r4,r0
	bb1.n	 ge,r13,@L2178
	or.u	 r12,r0,hi16(_anorm.238)
	xor.u	 r4,r4,0x8000
@L2178:
	br.n	 @L2160
	st.d	 r4,r12,lo16(_anorm.238)
	align	 4
@L2177:
	ld.d	 r8,r22,8
	fcmp.sds r13,r8,r0
	bb1	 ge,r13,@L2180
	xor.u	 r8,r8,0x8000
@L2180:
	ld.d	 r10,r23,8
	fcmp.sds r13,r10,r0
	bb1	 lt,r13,@L2181
	fadd.ddd r8,r8,r10
	br	 @L2182
	align	 4
@L2181:
	fsub.ddd r8,r8,r10
@L2182:
	ld	 r11,r0,r24
	subu	 r12,r0,8
	lda.d	 r13,r23[r11]
	ld.d	 r4,r13,r12
	ld.d	 r6,r22[r11]
	fcmp.sds r13,r4,r0
	or	 r10,r0,r4
	bb1.n	 ge,r13,@L2183
	or	 r11,r0,r5
	xor.u	 r10,r4,0x8000
	or	 r11,r0,r5
@L2183:
	fcmp.sds r13,r6,r0
	bb1	 lt,r13,@L2184
	fadd.ddd r4,r10,r6
	br	 @L2185
	align	 4
@L2184:
	fsub.ddd r4,r10,r6
@L2185:
	fcmp.sdd r13,r8,r4
	bb1.n	 lt,r13,@L2186
	or.u	 r12,r0,hi16(_anorm.238)
	br.n	 @L2187
	st.d	 r8,r12,lo16(_anorm.238)
	align	 4
@L2186:
	st.d	 r4,r12,lo16(_anorm.238)
@L2187:
	ld	 r13,r0,r24
	or.u	 r11,r0,hi16(_i__.236)
	subu	 r12,r13,1
	or	 r13,r0,2
	st	 r13,r11,lo16(_i__.236)
	cmp	 r13,r13,r12
	bb0.n	 le,r13,@L2160
	st	 r12,r31,88
	or.u	 r2,r0,hi16(_anorm.238)
	or	 r3,r0,r11
	subu	 r25,r0,8
	or	 r1,r0,r12
@L2191:
	ld	 r13,r3,lo16(_i__.236)
	ld.d	 r4,r2,lo16(_anorm.238)
	ld.d	 r10,r22[r13]
	ld.d	 r6,r23[r13]
	lda.d	 r13,r23[r13]
	fcmp.sds r12,r10,r0
	ld.d	 r8,r13,r25
	bb1	 ge,r12,@L2192
	xor.u	 r10,r10,0x8000
@L2192:
	fcmp.sds r13,r6,r0
	bb1	 lt,r13,@L2193
	fadd.ddd r10,r10,r6
	br	 @L2194
	align	 4
@L2193:
	fsub.ddd r10,r10,r6
@L2194:
	fcmp.sds r13,r8,r0
	bb1	 lt,r13,@L2195
	fadd.ddd r10,r10,r8
	br	 @L2196
	align	 4
@L2195:
	fsub.ddd r10,r10,r8
@L2196:
	fcmp.sdd r13,r4,r10
	bb1	 lt,r13,@L2197
	st.d	 r4,r2,lo16(_anorm.238)
	br	 @L2190
	align	 4
@L2197:
	st.d	 r10,r2,lo16(_anorm.238)
@L2190:
	ld	 r13,r3,lo16(_i__.236)
	addu	 r13,r13,1
	cmp	 r12,r13,r1
	bb1.n	 le,r12,@L2191
	st	 r13,r3,lo16(_i__.236)
	br	 @L2160
	align	 4
@L2175:
	or	 r4,r0,1
	or.u	 r3,r0,hi16(@LC127)
	or	 r5,r0,1
	bsr.n	 _lsame_
	or	 r3,r3,lo16(@LC127)
	bcnd.n	 ne0,r2,@L2202
	or	 r2,r0,r25
	or	 r4,r0,1
	or.u	 r3,r0,hi16(@LC128)
	or	 r5,r0,1
	bsr.n	 _lsame_
	or	 r3,r3,lo16(@LC128)
	bcnd	 eq0,r2,@L2160
@L2202:
	or	 r12,r0,0
	or	 r13,r0,0
	or.u	 r21,r0,hi16(_scale.237)
	or.u	 r25,r0,hi16(_sum.239)
	st.d	 r12,r21,lo16(_scale.237)
	or.u	 r12,r0,0x3ff0
	or	 r13,r0,0
	st.d	 r12,r25,lo16(_sum.239)
	ld	 r12,r0,r24
	or	 r20,r21,lo16(_scale.237)
	cmp	 r13,r12,1
	bb0.n	 gt,r13,@L2203
	or	 r17,r25,lo16(_sum.239)
	addu	 r2,r31,88
	addu	 r3,r23,8
	or	 r5,r0,r20
	or.u	 r4,r0,hi16(_c__1)
	or	 r6,r0,r17
	subu	 r13,r12,1
	or	 r4,r4,lo16(_c__1)
	bsr.n	 _dlassq_
	st	 r13,r31,88
	ld.d	 r12,r25,lo16(_sum.239)
	fadd.ddd r12,r12,r12
	st.d	 r12,r25,lo16(_sum.239)
@L2203:
	or	 r2,r0,r24
	addu	 r3,r22,8
	or	 r5,r0,r20
	or.u	 r4,r0,hi16(_c__1)
	or	 r6,r0,r17
	bsr.n	 _dlassq_
	or	 r4,r4,lo16(_c__1)
	bsr.n	 _sqrt
	ld.d	 r2,r25,lo16(_sum.239)
	ld.d	 r12,r21,lo16(_scale.237)
	or.u	 r11,r0,hi16(_anorm.238)
	fmul.ddd r12,r12,r2
@L2206:
	st.d	 r12,r11,lo16(_anorm.238)
@L2160:
@Lte20:
	ld	 r1,r31,80
	ld	 r17,r31,44
	ld.d	 r24,r31,72
	ld.d	 r22,r31,64
	or.u	 r13,r0,hi16(_anorm.238)
	ld.d	 r20,r31,56
	ld.d	 r2,r13,lo16(_anorm.238)
	ld.d	 r18,r31,48
	jmp.n	 r1
	addu	 r31,r31,96

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       	bss	 _xabs.250,8,8
	bss	 _yabs.251,8,8
	bss	 _w.252,8,8
	bss	 _z__.253,8,8
	align	 8
	global	 _dlapy2_
_dlapy2_:
	subu	 r31,r31,48
	st	 r1,r31,36
	st	 r25,r31,32
@Ltb22:
	ld.d	 r10,r0,r2
	fcmp.sds r13,r10,r0
	bb1.n	 ge,r13,@L2749
	or.u	 r12,r0,hi16(_xabs.250)
	xor.u	 r10,r10,0x8000
@L2749:
	st.d	 r10,r12,lo16(_xabs.250)
	ld.d	 r2,r0,r3
	fcmp.sds r13,r2,r0
	bb1.n	 ge,r13,@L2750
	or.u	 r12,r0,hi16(_yabs.251)
	xor.u	 r2,r2,0x8000
@L2750:
	or	 r8,r0,r2
	or	 r9,r0,r3
	st.d	 r2,r12,lo16(_yabs.251)
	fcmp.sdd r13,r10,r2
	bb1.n	 lt,r13,@L2751
	or.u	 r25,r0,hi16(_w.252)
	or	 r8,r0,r10
	or	 r9,r0,r11
@L2751:
	or.u	 r12,r0,hi16(_z__.253)
	bb0.n	 le,r13,@L2753
	st.d	 r8,r25,lo16(_w.252)
	or	 r2,r0,r10
	or	 r3,r0,r11
@L2753:
	fcmp.sds r13,r2,r0
	bb0.n	 eq,r13,@L2755
	st.d	 r2,r12,lo16(_z__.253)
	or	 r2,r0,r8
	br.n	 @L2756
	or	 r3,r0,r9
	align	 4
@L2755:
	fdiv.ddd r2,r2,r8
	fmul.ddd r2,r2,r2
	or.u	 r13,r0,0x3f80
	bsr.n	 _sqrt
	fadd.dsd r2,r13,r2
	ld.d	 r12,r25,lo16(_w.252)
	fmul.ddd r2,r12,r2
@L2756:
@Lte22:
	ld	 r1,r31,36
	ld	 r25,r31,32
	jmp.n	 r1
	addu	 r31,r31,48

data
	align	 8
@LC145:
	string	 "L\000"
	align	 8
@LC146:
	string	 "Transpose\000"
	align	 8
@LC147:
	string	 "No transpose\000"
text
	align	 8
	global	 _dlarf_
_dlarf_:
	subu	 r31,r31,176
	st	 r1,r31,80
	st.d	 r24,r31,72
	st.d	 r22,r31,64
	st.d	 r20,r31,56
	st.d	 r18,r31,48
	st.d	 r16,r31,40
	st.d	 r14,r31,32
@Ltb23:
	subu	 r5,r5,8
	st	 r9,r31,124
	or	 r22,r0,r3
	ld	 r13,r0,r9
	or	 r18,r0,r4
	ld	 r14,r31,208
	or	 r4,r0,1
	or.u	 r3,r0,hi16(@LC145)
	st	 r5,r31,100
	or	 r5,r0,1
	or	 r20,r0,r6
	st	 r7,r31,108
	or	 r3,r3,lo16(@LC145)
	addu	 r13,r13,1
	subu	 r14,r14,8
	st	 r13,r31,132
	mak	 r25,r13,0<3>
	st	 r14,r31,208
	subu	 r8,r8,r25
	bsr.n	 _lsame_
	st	 r8,r31,116
	bcnd	 eq0,r2,@L2758
	ld	 r15,r31,108
	ld.d	 r12,r0,r15
	fcmp.sds r13,r12,r0
	bb0.n	 ne,r13,@L2902
	or	 r4,r0,1
	ld	 r14,r31,116
	ld	 r15,r31,124
	ld	 r16,r31,100
	or.u	 r23,r0,hi16(_info.47)
	or	 r5,r0,1
	or.u	 r3,r0,hi16(@LC77)
	or.u	 r13,r0,hi16(@LC146)
	or.u	 r12,r0,hi16(_c_b89)
	or.u	 r12,r0,hi16(_c__1)
	or	 r3,r3,lo16(@LC77)
	or	 r21,r13,lo16(@LC146)
	ld	 r15,r0,r15
	addu	 r19,r25,r14
	ld	 r25,r31,208
	or	 r17,r12,lo16(_c__1)
	addu	 r13,r15,1
	st	 r15,r31,140
	mak	 r13,r13,0<3>
	st	 r0,r23,lo16(_info.47)
	subu	 r19,r19,r13
	or.u	 r13,r0,hi16(_c_b61)
	or	 r2,r0,r21
	bsr.n	 _lsame_
	or	 r24,r13,lo16(_c_b61)
	bcnd.n	 ne0,r2,@L2761
	or	 r2,r0,r21
	or	 r4,r0,1
	or.u	 r3,r0,hi16(@LC78)
	or	 r5,r0,1
	bsr.n	 _lsame_
	or	 r3,r3,lo16(@LC78)
	bcnd.n	 ne0,r2,@L2761
	or	 r2,r0,r21
	or	 r4,r0,1
	or.u	 r3,r0,hi16(@LC79)
	or	 r5,r0,1
	bsr.n	 _lsame_
	or	 r3,r3,lo16(@LC79)
	bcnd.n	 ne0,r2,@L2761
	or	 r13,r0,1
	br.n	 @L2762
	st	 r13,r23,lo16(_info.47)
	align	 4
@L2761:
	ld	 r12,r0,r22
	bcnd	 ge0,r12,@L2763
	or.u	 r12,r0,hi16(_info.47)
	br.n	 @L3072
	or	 r13,r0,2
	align	 4
@L2763:
	ld	 r13,r0,r18
	bcnd.n	 ge0,r13,@L2765
	cmp	 r13,r12,1
	or.u	 r12,r0,hi16(_info.47)
	br.n	 @L3072
	or	 r13,r0,3
	align	 4
@L2765:
	ld	 r14,r31,124
	ld	 r11,r0,r14
	bb0.n	 gt,r13,@L2768
	cmp	 r13,r11,r12
	bb0.n	 ge,r13,@L3077
	or.u	 r12,r0,hi16(_info.47)
	br	 @L2767
	align	 4
@L2768:
	bcnd.n	 gt0,r11,@L2767
	or.u	 r12,r0,hi16(_info.47)
@L3077:
	br.n	 @L3072
	or	 r13,r0,6
	align	 4
@L2767:
	ld	 r13,r0,r20
	bcnd.n	 ne0,r13,@L2771
	or.u	 r12,r0,hi16(_info.47)
	br.n	 @L3072
	or	 r13,r0,8
	align	 4
@L2771:
	ld	 r13,r0,r17
	bcnd.n	 ne0,r13,@L3078
	or.u	 r13,r0,hi16(_info.47)
	or.u	 r12,r0,hi16(_info.47)
	or	 r13,r0,11
@L3072:
	st	 r13,r12,lo16(_info.47)
@L2762:
	or.u	 r13,r0,hi16(_info.47)
@L3078:
	ld	 r12,r13,lo16(_info.47)
	bcnd.n	 eq0,r12,@L2774
	or	 r3,r13,lo16(_info.47)
	or.u	 r2,r0,hi16(@LC80)
	or	 r4,r0,6
	or	 r2,r2,lo16(@LC80)
	bsr.n	 _xerbla_
	addu	 r1,r1,@L3091
@L3092:
	align	 4
@L2774:
	ld	 r13,r0,r22
	bcnd	 eq0,r13,@L2760
	ld	 r13,r0,r18
	bcnd.n	 eq0,r13,@L2760
	or.u	 r15,r0,hi16(_c_b89)
	or	 r15,r15,lo16(_c_b89)
	ld.d	 r12,r0,r15
	fcmp.sds r13,r12,r0
	bb1.n	 ne,r13,@L3079
	or	 r2,r0,r21
	or.u	 r11,r0,0x3f80
	ld.d	 r12,r0,r24
	fcmp.sds r11,r12,r11
	bb0	 ne,r11,@L2760
@L3079:
	or	 r4,r0,1
	or.u	 r3,r0,hi16(@LC81)
	or	 r5,r0,1
	bsr.n	 _lsame_
	or	 r3,r3,lo16(@LC81)
	bcnd	 eq0,r2,@L2777
	ld	 r12,r0,r18
	or.u	 r13,r0,hi16(_lenx.49)
	st	 r12,r13,lo16(_lenx.49)
	ld	 r12,r0,r22
	br.n	 @L3080
	or.u	 r13,r0,hi16(_leny.50)
	align	 4
@L2777:
	ld	 r12,r0,r22
	or.u	 r13,r0,hi16(_lenx.49)
	st	 r12,r13,lo16(_lenx.49)
	ld	 r12,r0,r18
	or.u	 r13,r0,hi16(_leny.50)
@L3080:
	st	 r12,r13,lo16(_leny.50)
	ld	 r11,r0,r20
	bcnd.n	 le0,r11,@L2779
	or.u	 r12,r0,hi16(_kx.57)
	or	 r13,r0,1
	br.n	 @L2780
	st	 r13,r12,lo16(_kx.57)
	align	 4
@L2779:
	or.u	 r13,r0,hi16(_lenx.49)
	ld	 r12,r13,lo16(_lenx.49)
	subu	 r12,r12,1
	mul	 r12,r12,r11
	or	 r13,r0,1
	or.u	 r11,r0,hi16(_kx.57)
	subu	 r13,r13,r12
	st	 r13,r11,lo16(_kx.57)
@L2780:
	ld	 r11,r0,r17
	bcnd.n	 le0,r11,@L2781
	or.u	 r12,r0,hi16(_ky.58)
	or	 r13,r0,1
	br.n	 @L2782
	st	 r13,r12,lo16(_ky.58)
	align	 4
@L2781:
	or.u	 r13,r0,hi16(_leny.50)
	ld	 r12,r13,lo16(_leny.50)
	subu	 r12,r12,1
	mul	 r12,r12,r11
	or	 r13,r0,1
	or.u	 r11,r0,hi16(_ky.58)
	subu	 r13,r13,r12
	st	 r13,r11,lo16(_ky.58)
@L2782:
	or.u	 r13,r0,0x3f80
	ld.d	 r10,r0,r24
	fcmp.sds r13,r10,r13
	bb0	 ne,r13,@L2783
	ld	 r12,r0,r17
	cmp	 r13,r12,1
	bb1	 ne,r13,@L2784
	fcmp.sds r13,r10,r0
	bb1.n	 ne,r13,@L2785
	or.u	 r13,r0,hi16(_leny.50)
	ld	 r3,r13,lo16(_leny.50)
	or.u	 r11,r0,hi16(_i__.51)
	cmp	 r13,r12,r3
	bb0.n	 le,r13,@L2783
	st	 r12,r11,lo16(_i__.51)
	or	 r8,r0,0
	or	 r9,r0,0
@L2789:
	ld	 r13,r11,lo16(_i__.51)
	addu	 r12,r13,1
	st.d	 r8,r25[r13]
	cmp	 r13,r12,r3
	bb1.n	 le,r13,@L2789
	st	 r12,r11,lo16(_i__.51)
	br.n	 @L3081
	or.u	 r14,r0,hi16(_c_b89)
	align	 4
@L2785:
	ld	 r3,r13,lo16(_leny.50)
	or.u	 r11,r0,hi16(_i__.51)
	cmp	 r13,r12,r3
	bb0.n	 le,r13,@L2783
	st	 r12,r11,lo16(_i__.51)
	or	 r7,r0,r11
@L2795:
	ld	 r10,r7,lo16(_i__.51)
	ld.d	 r12,r0,r24
	ld.d	 r8,r25[r10]
	addu	 r11,r10,1
	st	 r11,r7,lo16(_i__.51)
	cmp	 r11,r11,r3
	fmul.ddd r12,r12,r8
	bb1.n	 le,r11,@L2795
	st.d	 r12,r25[r10]
	br.n	 @L3081
	or.u	 r14,r0,hi16(_c_b89)
	align	 4
@L2784:
	or.u	 r11,r0,hi16(_ky.58)
	ld.d	 r12,r0,r24
	ld	 r11,r11,lo16(_ky.58)
	or.u	 r10,r0,hi16(_iy.54)
	fcmp.sds r13,r12,r0
	bb1.n	 ne,r13,@L2798
	st	 r11,r10,lo16(_iy.54)
	or.u	 r13,r0,hi16(_leny.50)
	ld	 r3,r13,lo16(_leny.50)
	or	 r13,r0,1
	or.u	 r11,r0,hi16(_i__.51)
	cmp	 r12,r13,r3
	bb0.n	 le,r12,@L2783
	st	 r13,r11,lo16(_i__.51)
	or	 r6,r0,0
	or	 r7,r0,0
	or	 r9,r0,r10
	or	 r10,r0,r11
@L2802:
	ld	 r13,r9,lo16(_iy.54)
	ld	 r12,r10,lo16(_i__.51)
	st.d	 r6,r25[r13]
	ld	 r11,r0,r17
	addu	 r12,r12,1
	st	 r12,r10,lo16(_i__.51)
	cmp	 r12,r12,r3
	addu	 r13,r13,r11
	bb1.n	 le,r12,@L2802
	st	 r13,r9,lo16(_iy.54)
	br.n	 @L3081
	or.u	 r14,r0,hi16(_c_b89)
	align	 4
@L2798:
	or.u	 r13,r0,hi16(_leny.50)
	ld	 r3,r13,lo16(_leny.50)
	or	 r13,r0,1
	or.u	 r11,r0,hi16(_i__.51)
	cmp	 r12,r13,r3
	bb0.n	 le,r12,@L2783
	st	 r13,r11,lo16(_i__.51)
	or	 r7,r0,r10
	or	 r8,r0,r11
@L2808:
	ld	 r9,r7,lo16(_iy.54)
	ld.d	 r12,r0,r24
	ld.d	 r10,r25[r9]
	fmul.ddd r12,r12,r10
	st.d	 r12,r25[r9]
	ld	 r13,r8,lo16(_i__.51)
	ld	 r12,r0,r17
	addu	 r13,r13,1
	addu	 r9,r9,r12
	st	 r13,r8,lo16(_i__.51)
	cmp	 r13,r13,r3
	bb1.n	 le,r13,@L2808
	st	 r9,r7,lo16(_iy.54)
@L2783:
	or.u	 r14,r0,hi16(_c_b89)
@L3081:
	or	 r14,r14,lo16(_c_b89)
	ld.d	 r12,r0,r14
	fcmp.sds r13,r12,r0
	bb0	 ne,r13,@L2760
	or	 r2,r0,r21
	or	 r4,r0,1
	or.u	 r3,r0,hi16(@LC82)
	or	 r5,r0,1
	bsr.n	 _lsame_
	or	 r3,r3,lo16(@LC82)
	bcnd.n	 eq0,r2,@L2811
	or.u	 r13,r0,hi16(_kx.57)
	ld	 r11,r0,r17
	ld	 r12,r13,lo16(_kx.57)
	or.u	 r10,r0,hi16(_jx.55)
	cmp	 r13,r11,1
	bb1.n	 ne,r13,@L2812
	st	 r12,r10,lo16(_jx.55)
	ld	 r3,r0,r18
	or.u	 r12,r0,hi16(_j.52)
	cmp	 r13,r11,r3
	bb0.n	 le,r13,@L2760
	st	 r11,r12,lo16(_j.52)
	or	 r24,r0,r10
	or.u	 r21,r0,hi16(_temp.48)
	or.u	 r2,r0,hi16(_i__.51)
	or	 r23,r0,1
	or	 r1,r0,r12
@L2816:
	ld	 r13,r24,lo16(_jx.55)
	ld.d	 r10,r16[r13]
	fcmp.sds r13,r10,r0
	bb0	 ne,r13,@L2817
	or.u	 r15,r0,hi16(_c_b89)
	or	 r15,r15,lo16(_c_b89)
	ld.d	 r12,r0,r15
	fmul.ddd r10,r12,r10
	st.d	 r10,r21,lo16(_temp.48)
	ld	 r5,r0,r22
	cmp	 r13,r23,r5
	bb0.n	 le,r13,@L2817
	st	 r23,r2,lo16(_i__.51)
	ld	 r13,r1,lo16(_j.52)
	ld	 r14,r31,140
	or	 r6,r0,r10
	or	 r7,r0,r11
	mul	 r4,r13,r14
@L2821:
	ld	 r8,r2,lo16(_i__.51)
	addu	 r13,r8,r4
	ld.d	 r12,r19[r13]
	ld.d	 r10,r25[r8]
	fmul.ddd r12,r6,r12
	addu	 r9,r8,1
	st	 r9,r2,lo16(_i__.51)
	cmp	 r9,r9,r5
	fadd.ddd r10,r10,r12
	bb1.n	 le,r9,@L2821
	st.d	 r10,r25[r8]
@L2817:
	ld	 r12,r24,lo16(_jx.55)
	ld	 r11,r0,r20
	ld	 r13,r1,lo16(_j.52)
	addu	 r12,r12,r11
	addu	 r13,r13,1
	st	 r12,r24,lo16(_jx.55)
	cmp	 r12,r13,r3
	bb1.n	 le,r12,@L2816
	st	 r13,r1,lo16(_j.52)
	br	 @L2760
	align	 4
@L2812:
	ld	 r3,r0,r18
	or	 r13,r0,1
	or.u	 r11,r0,hi16(_j.52)
	cmp	 r12,r13,r3
	bb0.n	 le,r12,@L2760
	st	 r13,r11,lo16(_j.52)
	or	 r23,r0,r10
	or.u	 r1,r0,hi16(_iy.54)
	or.u	 r2,r0,hi16(_i__.51)
	or	 r21,r0,1
	or.u	 r13,r0,hi16(_ky.58)
	or	 r24,r0,r11
	ld	 r13,r13,lo16(_ky.58)
	st	 r13,r31,172
@L2828:
	ld	 r13,r23,lo16(_jx.55)
	ld.d	 r10,r16[r13]
	fcmp.sds r13,r10,r0
	bb0	 ne,r13,@L2829
	or.u	 r15,r0,hi16(_c_b89)
	ld	 r14,r31,172
	or	 r15,r15,lo16(_c_b89)
	ld.d	 r12,r0,r15
	or.u	 r15,r0,hi16(_temp.48)
	st	 r14,r1,lo16(_iy.54)
	fmul.ddd r10,r12,r10
	st.d	 r10,r15,lo16(_temp.48)
	ld	 r5,r0,r22
	cmp	 r13,r21,r5
	bb0.n	 le,r13,@L2829
	st	 r21,r2,lo16(_i__.51)
	ld	 r13,r24,lo16(_j.52)
	ld	 r14,r31,140
	or	 r6,r0,r10
	or	 r7,r0,r11
	mul	 r4,r13,r14
@L2833:
	ld	 r8,r2,lo16(_i__.51)
	addu	 r13,r8,r4
	ld.d	 r10,r19[r13]
	ld	 r9,r1,lo16(_iy.54)
	fmul.ddd r10,r6,r10
	ld.d	 r12,r25[r9]
	fadd.ddd r12,r12,r10
	st.d	 r12,r25[r9]
	ld	 r13,r0,r17
	addu	 r8,r8,1
	st	 r8,r2,lo16(_i__.51)
	cmp	 r8,r8,r5
	addu	 r9,r9,r13
	bb1.n	 le,r8,@L2833
	st	 r9,r1,lo16(_iy.54)
@L2829:
	ld	 r12,r23,lo16(_jx.55)
	ld	 r11,r0,r20
	ld	 r13,r24,lo16(_j.52)
	addu	 r12,r12,r11
	addu	 r13,r13,1
	st	 r12,r23,lo16(_jx.55)
	cmp	 r12,r13,r3
	bb1.n	 le,r12,@L2828
	st	 r13,r24,lo16(_j.52)
	br	 @L2760
	align	 4
@L2811:
	or.u	 r13,r0,hi16(_ky.58)
	ld	 r13,r13,lo16(_ky.58)
	or.u	 r10,r0,hi16(_jy.56)
	st	 r13,r10,lo16(_jy.56)
	ld	 r12,r0,r20
	cmp	 r13,r12,1
	bb1.n	 ne,r13,@L2837
	or	 r13,r0,1
	ld	 r3,r0,r18
	or.u	 r11,r0,hi16(_j.52)
	cmp	 r13,r12,r3
	bb0.n	 le,r13,@L2760
	st	 r12,r11,lo16(_j.52)
	or.u	 r7,r0,hi16(_temp.48)
	or.u	 r6,r0,hi16(_i__.51)
	or	 r1,r0,1
	or	 r4,r0,r11
	or	 r2,r0,r10
@L2841:
	or	 r14,r0,0
	or	 r15,r0,0
	st.d	 r14,r7,lo16(_temp.48)
	ld	 r5,r0,r22
	cmp	 r13,r1,r5
	bb0.n	 le,r13,@L2843
	st	 r1,r6,lo16(_i__.51)
	ld	 r13,r4,lo16(_j.52)
	ld	 r15,r31,140
	mul	 r8,r13,r15
@L2845:
	ld	 r9,r6,lo16(_i__.51)
	addu	 r13,r9,r8
	ld.d	 r10,r19[r13]
	ld.d	 r12,r16[r9]
	fmul.ddd r10,r10,r12
	ld.d	 r12,r7,lo16(_temp.48)
	addu	 r9,r9,1
	st	 r9,r6,lo16(_i__.51)
	cmp	 r9,r9,r5
	fadd.ddd r12,r12,r10
	bb1.n	 le,r9,@L2845
	st.d	 r12,r7,lo16(_temp.48)
@L2843:
	or.u	 r14,r0,hi16(_c_b89)
	ld.d	 r12,r7,lo16(_temp.48)
	or	 r14,r14,lo16(_c_b89)
	ld.d	 r10,r0,r14
	ld	 r9,r2,lo16(_jy.56)
	fmul.ddd r10,r10,r12
	ld.d	 r12,r25[r9]
	fadd.ddd r12,r12,r10
	st.d	 r12,r25[r9]
	ld	 r13,r4,lo16(_j.52)
	ld	 r12,r0,r17
	addu	 r13,r13,1
	addu	 r9,r9,r12
	st	 r13,r4,lo16(_j.52)
	cmp	 r13,r13,r3
	bb1.n	 le,r13,@L2841
	st	 r9,r2,lo16(_jy.56)
	br	 @L2760
	align	 4
@L2837:
	ld	 r3,r0,r18
	or.u	 r11,r0,hi16(_j.52)
	cmp	 r12,r13,r3
	bb0.n	 le,r12,@L2760
	st	 r13,r11,lo16(_j.52)
	or.u	 r6,r0,hi16(_temp.48)
	or.u	 r2,r0,hi16(_ix.53)
	or.u	 r4,r0,hi16(_i__.51)
	or	 r23,r0,1
	or	 r1,r0,r11
	or.u	 r13,r0,hi16(_kx.57)
	or	 r24,r0,r10
	ld	 r21,r13,lo16(_kx.57)
@L2852:
	or	 r12,r0,0
	or	 r13,r0,0
	st.d	 r12,r6,lo16(_temp.48)
	st	 r21,r2,lo16(_ix.53)
	ld	 r5,r0,r22
	cmp	 r13,r23,r5
	bb0.n	 le,r13,@L2854
	st	 r23,r4,lo16(_i__.51)
	ld	 r13,r1,lo16(_j.52)
	ld	 r15,r31,140
	mul	 r7,r13,r15
@L2856:
	ld	 r9,r4,lo16(_i__.51)
	ld	 r8,r2,lo16(_ix.53)
	addu	 r13,r9,r7
	ld.d	 r10,r19[r13]
	ld.d	 r12,r16[r8]
	fmul.ddd r10,r10,r12
	ld.d	 r12,r6,lo16(_temp.48)
	fadd.ddd r12,r12,r10
	st.d	 r12,r6,lo16(_temp.48)
	ld	 r13,r0,r20
	addu	 r9,r9,1
	st	 r9,r4,lo16(_i__.51)
	cmp	 r9,r9,r5
	addu	 r8,r8,r13
	bb1.n	 le,r9,@L2856
	st	 r8,r2,lo16(_ix.53)
@L2854:
	or.u	 r14,r0,hi16(_c_b89)
	ld.d	 r12,r6,lo16(_temp.48)
	or	 r14,r14,lo16(_c_b89)
	ld.d	 r10,r0,r14
	ld	 r9,r24,lo16(_jy.56)
	fmul.ddd r10,r10,r12
	ld.d	 r12,r25[r9]
	fadd.ddd r12,r12,r10
	st.d	 r12,r25[r9]
	ld	 r13,r1,lo16(_j.52)
	ld	 r12,r0,r17
	addu	 r13,r13,1
	addu	 r9,r9,r12
	st	 r13,r1,lo16(_j.52)
	cmp	 r13,r13,r3
	bb1.n	 le,r13,@L2852
	st	 r9,r24,lo16(_jy.56)
@L2760:
	ld	 r15,r31,108
	ld	 r14,r31,124
	ld	 r17,r31,100
	ld.d	 r12,r0,r15
	ld	 r15,r31,132
	xor.u	 r12,r12,0x8000
	st.d	 r12,r31,88
	ld	 r14,r0,r14
	st	 r14,r31,172
	ld	 r14,r31,116
	or.u	 r11,r0,hi16(_info.77)
	st	 r0,r11,lo16(_info.77)
	ld	 r12,r0,r22
	lda.d	 r4,r14[r15]
	ld	 r15,r31,172
	or.u	 r10,r0,hi16(_c__1)
	ld	 r14,r31,208
	addu	 r13,r15,1
	addu	 r16,r31,88
	mak	 r13,r13,0<3>
	st	 r14,r31,164
	bcnd.n	 ge0,r12,@L2860
	subu	 r4,r4,r13
	or	 r13,r0,1
	br.n	 @L2861
	st	 r13,r11,lo16(_info.77)
	align	 4
@L2860:
	ld	 r13,r0,r18
	bcnd.n	 ge0,r13,@L2862
	or	 r13,r0,2
	br.n	 @L2861
	st	 r13,r11,lo16(_info.77)
	align	 4
@L2862:
	ld	 r13,r0,r20
	bcnd.n	 ne0,r13,@L2864
	or	 r13,r0,5
	br.n	 @L2861
	st	 r13,r11,lo16(_info.77)
	align	 4
@L2864:
	ld	 r13,r10,lo16(_c__1)
	bcnd.n	 ne0,r13,@L2866
	cmp	 r13,r12,1
	or	 r13,r0,7
	br.n	 @L2861
	st	 r13,r11,lo16(_info.77)
	align	 4
@L2866:
	ld	 r15,r31,124
	ld	 r9,r0,r15
	bb0.n	 gt,r13,@L2869
	cmp	 r13,r9,r12
	bb0.n	 ge,r13,@L3082
	or.u	 r12,r0,hi16(_info.77)
	br.n	 @L3083
	or.u	 r13,r0,hi16(_info.77)
	align	 4
@L2869:
	bcnd.n	 gt0,r9,@L3083
	or.u	 r13,r0,hi16(_info.77)
	or.u	 r12,r0,hi16(_info.77)
@L3082:
	or	 r13,r0,9
	st	 r13,r12,lo16(_info.77)
@L2861:
	or.u	 r13,r0,hi16(_info.77)
@L3083:
	ld	 r12,r13,lo16(_info.77)
	bcnd.n	 ne0,r12,@L3074
	or	 r3,r13,lo16(_info.77)
	ld	 r13,r0,r22
	bcnd	 eq0,r13,@L2902
	ld	 r11,r0,r18
	bcnd	 eq0,r11,@L2902
	ld.d	 r12,r0,r16
	fcmp.sds r13,r12,r0
	bb0.n	 ne,r13,@L2902
	or.u	 r14,r0,hi16(_c__1)
	or	 r14,r14,lo16(_c__1)
	ld	 r12,r0,r14
	bcnd	 le0,r12,@L2874
	or.u	 r12,r0,hi16(_jy.82)
	or	 r13,r0,1
	br.n	 @L2875
	st	 r13,r12,lo16(_jy.82)
	align	 4
@L2874:
	subu	 r13,r11,1
	mul	 r13,r13,r12
	or	 r12,r0,1
	or.u	 r11,r0,hi16(_jy.82)
	subu	 r12,r12,r13
	st	 r12,r11,lo16(_jy.82)
@L2875:
	ld	 r12,r0,r20
	cmp	 r13,r12,1
	bb1	 ne,r13,@L2876
	ld	 r24,r0,r18
	or.u	 r11,r0,hi16(_j.80)
	cmp	 r13,r12,r24
	bb0.n	 le,r13,@L2902
	st	 r12,r11,lo16(_j.80)
	or.u	 r5,r0,hi16(_jy.82)
	or.u	 r21,r0,hi16(_temp.78)
	or.u	 r2,r0,hi16(_i__.79)
	or	 r23,r0,1
	or	 r25,r0,r11
@L2880:
	ld	 r13,r5,lo16(_jy.82)
	ld	 r15,r31,164
	ld.d	 r10,r15[r13]
	fcmp.sds r13,r10,r0
	bb0	 ne,r13,@L2881
	ld.d	 r12,r0,r16
	fmul.ddd r10,r12,r10
	st.d	 r10,r21,lo16(_temp.78)
	ld	 r1,r0,r22
	cmp	 r13,r23,r1
	bb0.n	 le,r13,@L2881
	st	 r23,r2,lo16(_i__.79)
	ld	 r13,r25,lo16(_j.80)
	ld	 r14,r31,172
	or	 r6,r0,r10
	or	 r7,r0,r11
	mul	 r3,r13,r14
@L2885:
	ld	 r9,r2,lo16(_i__.79)
	addu	 r8,r9,r3
	ld.d	 r10,r17[r9]
	ld.d	 r12,r4[r8]
	fmul.ddd r10,r10,r6
	addu	 r9,r9,1
	st	 r9,r2,lo16(_i__.79)
	cmp	 r9,r9,r1
	fadd.ddd r12,r12,r10
	bb1.n	 le,r9,@L2885
	st.d	 r12,r4[r8]
@L2881:
	ld	 r12,r5,lo16(_jy.82)
	or.u	 r15,r0,hi16(_c__1)
	ld	 r13,r25,lo16(_j.80)
	or	 r15,r15,lo16(_c__1)
	ld	 r11,r0,r15
	addu	 r13,r13,1
	addu	 r12,r12,r11
	st	 r12,r5,lo16(_jy.82)
	cmp	 r12,r13,r24
	bb1.n	 le,r12,@L2880
	st	 r13,r25,lo16(_j.80)
	br	 @L2902
	align	 4
@L2876:
	bcnd	 le0,r12,@L2889
	or.u	 r12,r0,hi16(_kx.83)
	or	 r13,r0,1
	br.n	 @L2890
	st	 r13,r12,lo16(_kx.83)
	align	 4
@L2889:
	ld	 r13,r0,r22
	subu	 r13,r13,1
	mul	 r13,r13,r12
	or	 r12,r0,1
	or.u	 r11,r0,hi16(_kx.83)
	subu	 r12,r12,r13
	st	 r12,r11,lo16(_kx.83)
@L2890:
	ld	 r24,r0,r18
	or	 r13,r0,1
	or.u	 r11,r0,hi16(_j.80)
	cmp	 r12,r13,r24
	bb0.n	 le,r12,@L2902
	st	 r13,r11,lo16(_j.80)
	or.u	 r21,r0,hi16(_jy.82)
	or.u	 r5,r0,hi16(_ix.81)
	or.u	 r25,r0,hi16(_i__.79)
	or	 r19,r0,1
	or.u	 r13,r0,hi16(_kx.83)
	or	 r23,r0,r11
	ld	 r18,r13,lo16(_kx.83)
@L2894:
	ld	 r13,r21,lo16(_jy.82)
	ld	 r14,r31,164
	ld.d	 r10,r14[r13]
	fcmp.sds r13,r10,r0
	bb0	 ne,r13,@L2895
	ld.d	 r12,r0,r16
	or.u	 r15,r0,hi16(_temp.78)
	st	 r18,r5,lo16(_ix.81)
	fmul.ddd r10,r12,r10
	st.d	 r10,r15,lo16(_temp.78)
	ld	 r1,r0,r22
	cmp	 r13,r19,r1
	bb0.n	 le,r13,@L2895
	st	 r19,r25,lo16(_i__.79)
	ld	 r13,r23,lo16(_j.80)
	ld	 r14,r31,172
	or	 r2,r0,r10
	or	 r3,r0,r11
	mul	 r6,r13,r14
@L2899:
	ld	 r7,r5,lo16(_ix.81)
	ld	 r8,r25,lo16(_i__.79)
	ld.d	 r10,r17[r7]
	addu	 r9,r8,r6
	fmul.ddd r10,r10,r2
	ld.d	 r12,r4[r9]
	fadd.ddd r12,r12,r10
	st.d	 r12,r4[r9]
	ld	 r13,r0,r20
	addu	 r8,r8,1
	st	 r8,r25,lo16(_i__.79)
	cmp	 r8,r8,r1
	addu	 r7,r7,r13
	bb1.n	 le,r8,@L2899
	st	 r7,r5,lo16(_ix.81)
@L2895:
	ld	 r12,r21,lo16(_jy.82)
	or.u	 r15,r0,hi16(_c__1)
	ld	 r13,r23,lo16(_j.80)
	or	 r15,r15,lo16(_c__1)
	ld	 r11,r0,r15
	addu	 r13,r13,1
	addu	 r12,r12,r11
	st	 r12,r21,lo16(_jy.82)
	cmp	 r12,r13,r24
	bb1.n	 le,r12,@L2894
	st	 r13,r23,lo16(_j.80)
	br	 @L2902
	align	 4
@L2758:
	ld	 r14,r31,108
	ld.d	 r12,r0,r14
	fcmp.sds r13,r12,r0
	bb0.n	 ne,r13,@L2902
	or	 r4,r0,1
	ld	 r15,r31,116
	ld	 r14,r31,124
	ld	 r16,r31,100
	or.u	 r23,r0,hi16(_info.47)
	or	 r5,r0,1
	or.u	 r3,r0,hi16(@LC77)
	or.u	 r13,r0,hi16(@LC147)
	or.u	 r12,r0,hi16(_c_b89)
	or.u	 r12,r0,hi16(_c__1)
	or	 r3,r3,lo16(@LC77)
	or	 r21,r13,lo16(@LC147)
	ld	 r14,r0,r14
	addu	 r19,r25,r15
	ld	 r25,r31,208
	or	 r17,r12,lo16(_c__1)
	addu	 r13,r14,1
	st	 r14,r31,148
	mak	 r13,r13,0<3>
	st	 r0,r23,lo16(_info.47)
	subu	 r19,r19,r13
	or.u	 r13,r0,hi16(_c_b61)
	or	 r2,r0,r21
	bsr.n	 _lsame_
	or	 r24,r13,lo16(_c_b61)
	bcnd.n	 ne0,r2,@L2905
	or	 r2,r0,r21
	or	 r4,r0,1
	or.u	 r3,r0,hi16(@LC78)
	or	 r5,r0,1
	bsr.n	 _lsame_
	or	 r3,r3,lo16(@LC78)
	bcnd.n	 ne0,r2,@L2905
	or	 r2,r0,r21
	or	 r4,r0,1
	or.u	 r3,r0,hi16(@LC79)
	or	 r5,r0,1
	bsr.n	 _lsame_
	or	 r3,r3,lo16(@LC79)
	bcnd.n	 ne0,r2,@L2905
	or	 r13,r0,1
	br.n	 @L2906
	st	 r13,r23,lo16(_info.47)
	align	 4
@L2905:
	ld	 r12,r0,r22
	bcnd	 ge0,r12,@L2907
	or.u	 r12,r0,hi16(_info.47)
	br.n	 @L3075
	or	 r13,r0,2
	align	 4
@L2907:
	ld	 r13,r0,r18
	bcnd.n	 ge0,r13,@L2909
	cmp	 r13,r12,1
	or.u	 r12,r0,hi16(_info.47)
	br.n	 @L3075
	or	 r13,r0,3
	align	 4
@L2909:
	ld	 r15,r31,124
	ld	 r11,r0,r15
	bb0.n	 gt,r13,@L2912
	cmp	 r13,r11,r12
	bb0.n	 ge,r13,@L3084
	or.u	 r12,r0,hi16(_info.47)
	br	 @L2911
	align	 4
@L2912:
	bcnd.n	 gt0,r11,@L2911
	or.u	 r12,r0,hi16(_info.47)
@L3084:
	br.n	 @L3075
	or	 r13,r0,6
	align	 4
@L2911:
	ld	 r13,r0,r20
	bcnd.n	 ne0,r13,@L2915
	or.u	 r12,r0,hi16(_info.47)
	br.n	 @L3075
	or	 r13,r0,8
	align	 4
@L2915:
	ld	 r13,r0,r17
	bcnd.n	 ne0,r13,@L3085
	or.u	 r13,r0,hi16(_info.47)
	or.u	 r12,r0,hi16(_info.47)
	or	 r13,r0,11
@L3075:
	st	 r13,r12,lo16(_info.47)
@L2906:
	or.u	 r13,r0,hi16(_info.47)
@L3085:
	ld	 r12,r13,lo16(_info.47)
	bcnd.n	 eq0,r12,@L2918
	or	 r3,r13,lo16(_info.47)
	or.u	 r2,r0,hi16(@LC80)
	or	 r4,r0,6
	or	 r2,r2,lo16(@LC80)
	bsr.n	 _xerbla_
	addu	 r1,r1,@L3093
@L3094:
	align	 4
@L2918:
	ld	 r13,r0,r22
	bcnd	 eq0,r13,@L2904
	ld	 r13,r0,r18
	bcnd.n	 eq0,r13,@L2904
	or.u	 r14,r0,hi16(_c_b89)
	or	 r14,r14,lo16(_c_b89)
	ld.d	 r12,r0,r14
	fcmp.sds r13,r12,r0
	bb1.n	 ne,r13,@L3086
	or	 r2,r0,r21
	or.u	 r11,r0,0x3f80
	ld.d	 r12,r0,r24
	fcmp.sds r11,r12,r11
	bb0	 ne,r11,@L2904
@L3086:
	or	 r4,r0,1
	or.u	 r3,r0,hi16(@LC81)
	or	 r5,r0,1
	bsr.n	 _lsame_
	or	 r3,r3,lo16(@LC81)
	bcnd	 eq0,r2,@L2921
	ld	 r12,r0,r18
	or.u	 r13,r0,hi16(_lenx.49)
	st	 r12,r13,lo16(_lenx.49)
	ld	 r12,r0,r22
	br.n	 @L3087
	or.u	 r13,r0,hi16(_leny.50)
	align	 4
@L2921:
	ld	 r12,r0,r22
	or.u	 r13,r0,hi16(_lenx.49)
	st	 r12,r13,lo16(_lenx.49)
	ld	 r12,r0,r18
	or.u	 r13,r0,hi16(_leny.50)
@L3087:
	st	 r12,r13,lo16(_leny.50)
	ld	 r11,r0,r20
	bcnd.n	 le0,r11,@L2923
	or.u	 r12,r0,hi16(_kx.57)
	or	 r13,r0,1
	br.n	 @L2924
	st	 r13,r12,lo16(_kx.57)
	align	 4
@L2923:
	or.u	 r13,r0,hi16(_lenx.49)
	ld	 r12,r13,lo16(_lenx.49)
	subu	 r12,r12,1
	mul	 r12,r12,r11
	or	 r13,r0,1
	or.u	 r11,r0,hi16(_kx.57)
	subu	 r13,r13,r12
	st	 r13,r11,lo16(_kx.57)
@L2924:
	ld	 r11,r0,r17
	bcnd.n	 le0,r11,@L2925
	or.u	 r12,r0,hi16(_ky.58)
	or	 r13,r0,1
	br.n	 @L2926
	st	 r13,r12,lo16(_ky.58)
	align	 4
@L2925:
	or.u	 r13,r0,hi16(_leny.50)
	ld	 r12,r13,lo16(_leny.50)
	subu	 r12,r12,1
	mul	 r12,r12,r11
	or	 r13,r0,1
	or.u	 r11,r0,hi16(_ky.58)
	subu	 r13,r13,r12
	st	 r13,r11,lo16(_ky.58)
@L2926:
	or.u	 r13,r0,0x3f80
	ld.d	 r10,r0,r24
	fcmp.sds r13,r10,r13
	bb0	 ne,r13,@L2927
	ld	 r12,r0,r17
	cmp	 r13,r12,1
	bb1	 ne,r13,@L2928
	fcmp.sds r13,r10,r0
	bb1.n	 ne,r13,@L2929
	or.u	 r13,r0,hi16(_leny.50)
	ld	 r3,r13,lo16(_leny.50)
	or.u	 r11,r0,hi16(_i__.51)
	cmp	 r13,r12,r3
	bb0.n	 le,r13,@L2927
	st	 r12,r11,lo16(_i__.51)
	or	 r8,r0,0
	or	 r9,r0,0
@L2933:
	ld	 r13,r11,lo16(_i__.51)
	addu	 r12,r13,1
	st.d	 r8,r25[r13]
	cmp	 r13,r12,r3
	bb1.n	 le,r13,@L2933
	st	 r12,r11,lo16(_i__.51)
	br.n	 @L3088
	or.u	 r15,r0,hi16(_c_b89)
	align	 4
@L2929:
	ld	 r3,r13,lo16(_leny.50)
	or.u	 r11,r0,hi16(_i__.51)
	cmp	 r13,r12,r3
	bb0.n	 le,r13,@L2927
	st	 r12,r11,lo16(_i__.51)
	or	 r7,r0,r11
@L2939:
	ld	 r10,r7,lo16(_i__.51)
	ld.d	 r12,r0,r24
	ld.d	 r8,r25[r10]
	addu	 r11,r10,1
	st	 r11,r7,lo16(_i__.51)
	cmp	 r11,r11,r3
	fmul.ddd r12,r12,r8
	bb1.n	 le,r11,@L2939
	st.d	 r12,r25[r10]
	br.n	 @L3088
	or.u	 r15,r0,hi16(_c_b89)
	align	 4
@L2928:
	or.u	 r11,r0,hi16(_ky.58)
	ld.d	 r12,r0,r24
	ld	 r11,r11,lo16(_ky.58)
	or.u	 r10,r0,hi16(_iy.54)
	fcmp.sds r13,r12,r0
	bb1.n	 ne,r13,@L2942
	st	 r11,r10,lo16(_iy.54)
	or.u	 r13,r0,hi16(_leny.50)
	ld	 r3,r13,lo16(_leny.50)
	or	 r13,r0,1
	or.u	 r11,r0,hi16(_i__.51)
	cmp	 r12,r13,r3
	bb0.n	 le,r12,@L2927
	st	 r13,r11,lo16(_i__.51)
	or	 r6,r0,0
	or	 r7,r0,0
	or	 r9,r0,r10
	or	 r10,r0,r11
@L2946:
	ld	 r13,r9,lo16(_iy.54)
	ld	 r12,r10,lo16(_i__.51)
	st.d	 r6,r25[r13]
	ld	 r11,r0,r17
	addu	 r12,r12,1
	st	 r12,r10,lo16(_i__.51)
	cmp	 r12,r12,r3
	addu	 r13,r13,r11
	bb1.n	 le,r12,@L2946
	st	 r13,r9,lo16(_iy.54)
	br.n	 @L3088
	or.u	 r15,r0,hi16(_c_b89)
	align	 4
@L2942:
	or.u	 r13,r0,hi16(_leny.50)
	ld	 r3,r13,lo16(_leny.50)
	or	 r13,r0,1
	or.u	 r11,r0,hi16(_i__.51)
	cmp	 r12,r13,r3
	bb0.n	 le,r12,@L2927
	st	 r13,r11,lo16(_i__.51)
	or	 r7,r0,r10
	or	 r8,r0,r11
@L2952:
	ld	 r9,r7,lo16(_iy.54)
	ld.d	 r12,r0,r24
	ld.d	 r10,r25[r9]
	fmul.ddd r12,r12,r10
	st.d	 r12,r25[r9]
	ld	 r13,r8,lo16(_i__.51)
	ld	 r12,r0,r17
	addu	 r13,r13,1
	addu	 r9,r9,r12
	st	 r13,r8,lo16(_i__.51)
	cmp	 r13,r13,r3
	bb1.n	 le,r13,@L2952
	st	 r9,r7,lo16(_iy.54)
@L2927:
	or.u	 r15,r0,hi16(_c_b89)
@L3088:
	or	 r15,r15,lo16(_c_b89)
	ld.d	 r12,r0,r15
	fcmp.sds r13,r12,r0
	bb0	 ne,r13,@L2904
	or	 r2,r0,r21
	or	 r4,r0,1
	or.u	 r3,r0,hi16(@LC82)
	or	 r5,r0,1
	bsr.n	 _lsame_
	or	 r3,r3,lo16(@LC82)
	bcnd.n	 eq0,r2,@L2955
	or.u	 r13,r0,hi16(_kx.57)
	ld	 r11,r0,r17
	ld	 r12,r13,lo16(_kx.57)
	or.u	 r10,r0,hi16(_jx.55)
	cmp	 r13,r11,1
	bb1.n	 ne,r13,@L2956
	st	 r12,r10,lo16(_jx.55)
	ld	 r3,r0,r18
	or.u	 r12,r0,hi16(_j.52)
	cmp	 r13,r11,r3
	bb0.n	 le,r13,@L2904
	st	 r11,r12,lo16(_j.52)
	or	 r24,r0,r10
	or.u	 r21,r0,hi16(_temp.48)
	or.u	 r2,r0,hi16(_i__.51)
	or	 r23,r0,1
	or	 r1,r0,r12
@L2960:
	ld	 r13,r24,lo16(_jx.55)
	ld.d	 r10,r16[r13]
	fcmp.sds r13,r10,r0
	bb0	 ne,r13,@L2961
	or.u	 r14,r0,hi16(_c_b89)
	or	 r14,r14,lo16(_c_b89)
	ld.d	 r12,r0,r14
	fmul.ddd r10,r12,r10
	st.d	 r10,r21,lo16(_temp.48)
	ld	 r5,r0,r22
	cmp	 r13,r23,r5
	bb0.n	 le,r13,@L2961
	st	 r23,r2,lo16(_i__.51)
	ld	 r13,r1,lo16(_j.52)
	ld	 r15,r31,148
	or	 r6,r0,r10
	or	 r7,r0,r11
	mul	 r4,r13,r15
@L2965:
	ld	 r8,r2,lo16(_i__.51)
	addu	 r13,r8,r4
	ld.d	 r12,r19[r13]
	ld.d	 r10,r25[r8]
	fmul.ddd r12,r6,r12
	addu	 r9,r8,1
	st	 r9,r2,lo16(_i__.51)
	cmp	 r9,r9,r5
	fadd.ddd r10,r10,r12
	bb1.n	 le,r9,@L2965
	st.d	 r10,r25[r8]
@L2961:
	ld	 r12,r24,lo16(_jx.55)
	ld	 r11,r0,r20
	ld	 r13,r1,lo16(_j.52)
	addu	 r12,r12,r11
	addu	 r13,r13,1
	st	 r12,r24,lo16(_jx.55)
	cmp	 r12,r13,r3
	bb1.n	 le,r12,@L2960
	st	 r13,r1,lo16(_j.52)
	br	 @L2904
	align	 4
@L2956:
	ld	 r3,r0,r18
	or	 r13,r0,1
	or.u	 r11,r0,hi16(_j.52)
	cmp	 r12,r13,r3
	bb0.n	 le,r12,@L2904
	st	 r13,r11,lo16(_j.52)
	or	 r23,r0,r10
	or.u	 r1,r0,hi16(_iy.54)
	or.u	 r2,r0,hi16(_i__.51)
	or	 r21,r0,1
	or.u	 r13,r0,hi16(_ky.58)
	or	 r24,r0,r11
	ld	 r13,r13,lo16(_ky.58)
	st	 r13,r31,172
@L2972:
	ld	 r13,r23,lo16(_jx.55)
	ld.d	 r10,r16[r13]
	fcmp.sds r13,r10,r0
	bb0	 ne,r13,@L2973
	or.u	 r14,r0,hi16(_c_b89)
	ld	 r15,r31,172
	or	 r14,r14,lo16(_c_b89)
	ld.d	 r12,r0,r14
	or.u	 r14,r0,hi16(_temp.48)
	st	 r15,r1,lo16(_iy.54)
	fmul.ddd r10,r12,r10
	st.d	 r10,r14,lo16(_temp.48)
	ld	 r5,r0,r22
	cmp	 r13,r21,r5
	bb0.n	 le,r13,@L2973
	st	 r21,r2,lo16(_i__.51)
	ld	 r13,r24,lo16(_j.52)
	ld	 r15,r31,148
	or	 r6,r0,r10
	or	 r7,r0,r11
	mul	 r4,r13,r15
@L2977:
	ld	 r8,r2,lo16(_i__.51)
	addu	 r13,r8,r4
	ld.d	 r10,r19[r13]
	ld	 r9,r1,lo16(_iy.54)
	fmul.ddd r10,r6,r10
	ld.d	 r12,r25[r9]
	fadd.ddd r12,r12,r10
	st.d	 r12,r25[r9]
	ld	 r13,r0,r17
	addu	 r8,r8,1
	st	 r8,r2,lo16(_i__.51)
	cmp	 r8,r8,r5
	addu	 r9,r9,r13
	bb1.n	 le,r8,@L2977
	st	 r9,r1,lo16(_iy.54)
@L2973:
	ld	 r12,r23,lo16(_jx.55)
	ld	 r11,r0,r20
	ld	 r13,r24,lo16(_j.52)
	addu	 r12,r12,r11
	addu	 r13,r13,1
	st	 r12,r23,lo16(_jx.55)
	cmp	 r12,r13,r3
	bb1.n	 le,r12,@L2972
	st	 r13,r24,lo16(_j.52)
	br	 @L2904
	align	 4
@L2955:
	or.u	 r13,r0,hi16(_ky.58)
	ld	 r13,r13,lo16(_ky.58)
	or.u	 r10,r0,hi16(_jy.56)
	st	 r13,r10,lo16(_jy.56)
	ld	 r12,r0,r20
	cmp	 r13,r12,1
	bb1.n	 ne,r13,@L2981
	or	 r13,r0,1
	ld	 r3,r0,r18
	or.u	 r11,r0,hi16(_j.52)
	cmp	 r13,r12,r3
	bb0.n	 le,r13,@L2904
	st	 r12,r11,lo16(_j.52)
	or.u	 r7,r0,hi16(_temp.48)
	or.u	 r6,r0,hi16(_i__.51)
	or	 r1,r0,1
	or	 r4,r0,r11
	or	 r2,r0,r10
@L2985:
	or	 r14,r0,0
	or	 r15,r0,0
	st.d	 r14,r7,lo16(_temp.48)
	ld	 r5,r0,r22
	cmp	 r13,r1,r5
	bb0.n	 le,r13,@L2987
	st	 r1,r6,lo16(_i__.51)
	ld	 r13,r4,lo16(_j.52)
	ld	 r15,r31,148
	mul	 r8,r13,r15
@L2989:
	ld	 r9,r6,lo16(_i__.51)
	addu	 r13,r9,r8
	ld.d	 r10,r19[r13]
	ld.d	 r12,r16[r9]
	fmul.ddd r10,r10,r12
	ld.d	 r12,r7,lo16(_temp.48)
	addu	 r9,r9,1
	st	 r9,r6,lo16(_i__.51)
	cmp	 r9,r9,r5
	fadd.ddd r12,r12,r10
	bb1.n	 le,r9,@L2989
	st.d	 r12,r7,lo16(_temp.48)
@L2987:
	or.u	 r14,r0,hi16(_c_b89)
	ld.d	 r12,r7,lo16(_temp.48)
	or	 r14,r14,lo16(_c_b89)
	ld.d	 r10,r0,r14
	ld	 r9,r2,lo16(_jy.56)
	fmul.ddd r10,r10,r12
	ld.d	 r12,r25[r9]
	fadd.ddd r12,r12,r10
	st.d	 r12,r25[r9]
	ld	 r13,r4,lo16(_j.52)
	ld	 r12,r0,r17
	addu	 r13,r13,1
	addu	 r9,r9,r12
	st	 r13,r4,lo16(_j.52)
	cmp	 r13,r13,r3
	bb1.n	 le,r13,@L2985
	st	 r9,r2,lo16(_jy.56)
	br	 @L2904
	align	 4
@L2981:
	ld	 r3,r0,r18
	or.u	 r11,r0,hi16(_j.52)
	cmp	 r12,r13,r3
	bb0.n	 le,r12,@L2904
	st	 r13,r11,lo16(_j.52)
	or.u	 r6,r0,hi16(_temp.48)
	or.u	 r2,r0,hi16(_ix.53)
	or.u	 r4,r0,hi16(_i__.51)
	or	 r23,r0,1
	or	 r1,r0,r11
	or.u	 r13,r0,hi16(_kx.57)
	or	 r24,r0,r10
	ld	 r21,r13,lo16(_kx.57)
@L2996:
	or	 r12,r0,0
	or	 r13,r0,0
	st.d	 r12,r6,lo16(_temp.48)
	st	 r21,r2,lo16(_ix.53)
	ld	 r5,r0,r22
	cmp	 r13,r23,r5
	bb0.n	 le,r13,@L2998
	st	 r23,r4,lo16(_i__.51)
	ld	 r13,r1,lo16(_j.52)
	ld	 r15,r31,148
	mul	 r7,r13,r15
@L3000:
	ld	 r9,r4,lo16(_i__.51)
	ld	 r8,r2,lo16(_ix.53)
	addu	 r13,r9,r7
	ld.d	 r10,r19[r13]
	ld.d	 r12,r16[r8]
	fmul.ddd r10,r10,r12
	ld.d	 r12,r6,lo16(_temp.48)
	fadd.ddd r12,r12,r10
	st.d	 r12,r6,lo16(_temp.48)
	ld	 r13,r0,r20
	addu	 r9,r9,1
	st	 r9,r4,lo16(_i__.51)
	cmp	 r9,r9,r5
	addu	 r8,r8,r13
	bb1.n	 le,r9,@L3000
	st	 r8,r2,lo16(_ix.53)
@L2998:
	or.u	 r14,r0,hi16(_c_b89)
	ld.d	 r12,r6,lo16(_temp.48)
	or	 r14,r14,lo16(_c_b89)
	ld.d	 r10,r0,r14
	ld	 r9,r24,lo16(_jy.56)
	fmul.ddd r10,r10,r12
	ld.d	 r12,r25[r9]
	fadd.ddd r12,r12,r10
	st.d	 r12,r25[r9]
	ld	 r13,r1,lo16(_j.52)
	ld	 r12,r0,r17
	addu	 r13,r13,1
	addu	 r9,r9,r12
	st	 r13,r1,lo16(_j.52)
	cmp	 r13,r13,r3
	bb1.n	 le,r13,@L2996
	st	 r9,r24,lo16(_jy.56)
@L2904:
	ld	 r15,r31,108
	ld	 r14,r31,124
	ld	 r17,r31,208
	ld.d	 r12,r0,r15
	ld	 r15,r31,132
	xor.u	 r12,r12,0x8000
	st.d	 r12,r31,88
	ld	 r14,r0,r14
	st	 r14,r31,172
	ld	 r14,r31,116
	or.u	 r11,r0,hi16(_info.77)
	st	 r0,r11,lo16(_info.77)
	ld	 r12,r0,r22
	lda.d	 r4,r14[r15]
	ld	 r15,r31,172
	or.u	 r10,r0,hi16(_c__1)
	ld	 r14,r31,100
	addu	 r13,r15,1
	addu	 r16,r31,88
	mak	 r13,r13,0<3>
	st	 r14,r31,164
	bcnd.n	 ge0,r12,@L3004
	subu	 r4,r4,r13
	or	 r13,r0,1
	br.n	 @L3005
	st	 r13,r11,lo16(_info.77)
	align	 4
@L3004:
	ld	 r13,r0,r18
	bcnd.n	 ge0,r13,@L3006
	or	 r13,r0,2
	br.n	 @L3005
	st	 r13,r11,lo16(_info.77)
	align	 4
@L3006:
	ld	 r13,r10,lo16(_c__1)
	bcnd.n	 ne0,r13,@L3008
	or	 r13,r0,5
	br.n	 @L3005
	st	 r13,r11,lo16(_info.77)
	align	 4
@L3008:
	ld	 r13,r0,r20
	bcnd.n	 ne0,r13,@L3010
	cmp	 r13,r12,1
	or	 r13,r0,7
	br.n	 @L3005
	st	 r13,r11,lo16(_info.77)
	align	 4
@L3010:
	ld	 r15,r31,124
	ld	 r9,r0,r15
	bb0.n	 gt,r13,@L3013
	cmp	 r13,r9,r12
	bb0.n	 ge,r13,@L3089
	or.u	 r12,r0,hi16(_info.77)
	br.n	 @L3090
	or.u	 r13,r0,hi16(_info.77)
	align	 4
@L3013:
	bcnd.n	 gt0,r9,@L3090
	or.u	 r13,r0,hi16(_info.77)
	or.u	 r12,r0,hi16(_info.77)
@L3089:
	or	 r13,r0,9
	st	 r13,r12,lo16(_info.77)
@L3005:
	or.u	 r13,r0,hi16(_info.77)
@L3090:
	ld	 r12,r13,lo16(_info.77)
	bcnd.n	 eq0,r12,@L3015
	or	 r3,r13,lo16(_info.77)
@L3074:
	or.u	 r2,r0,hi16(@LC99)
	or	 r4,r0,6
	or	 r2,r2,lo16(@LC99)
	bsr.n	 _xerbla_
	addu	 r1,r1,@L3095
@L3096:
	align	 4
@L3015:
	ld	 r13,r0,r22
	bcnd	 eq0,r13,@L2902
	ld	 r11,r0,r18
	bcnd	 eq0,r11,@L2902
	ld.d	 r12,r0,r16
	fcmp.sds r13,r12,r0
	bb0	 ne,r13,@L2902
	ld	 r12,r0,r20
	bcnd	 le0,r12,@L3018
	or.u	 r12,r0,hi16(_jy.82)
	or	 r13,r0,1
	br.n	 @L3019
	st	 r13,r12,lo16(_jy.82)
	align	 4
@L3018:
	subu	 r13,r11,1
	mul	 r13,r13,r12
	or	 r12,r0,1
	or.u	 r11,r0,hi16(_jy.82)
	subu	 r12,r12,r13
	st	 r12,r11,lo16(_jy.82)
@L3019:
	or.u	 r14,r0,hi16(_c__1)
	or	 r14,r14,lo16(_c__1)
	ld	 r12,r0,r14
	cmp	 r13,r12,1
	bb1	 ne,r13,@L3020
	ld	 r24,r0,r18
	or.u	 r11,r0,hi16(_j.80)
	cmp	 r13,r12,r24
	bb0.n	 le,r13,@L2902
	st	 r12,r11,lo16(_j.80)
	or.u	 r5,r0,hi16(_jy.82)
	or.u	 r21,r0,hi16(_temp.78)
	or.u	 r2,r0,hi16(_i__.79)
	or	 r23,r0,1
	or	 r25,r0,r11
@L3024:
	ld	 r13,r5,lo16(_jy.82)
	ld	 r15,r31,164
	ld.d	 r10,r15[r13]
	fcmp.sds r13,r10,r0
	bb0	 ne,r13,@L3025
	ld.d	 r12,r0,r16
	fmul.ddd r10,r12,r10
	st.d	 r10,r21,lo16(_temp.78)
	ld	 r1,r0,r22
	cmp	 r13,r23,r1
	bb0.n	 le,r13,@L3025
	st	 r23,r2,lo16(_i__.79)
	ld	 r13,r25,lo16(_j.80)
	ld	 r14,r31,172
	or	 r6,r0,r10
	or	 r7,r0,r11
	mul	 r3,r13,r14
@L3029:
	ld	 r9,r2,lo16(_i__.79)
	addu	 r8,r9,r3
	ld.d	 r10,r17[r9]
	ld.d	 r12,r4[r8]
	fmul.ddd r10,r10,r6
	addu	 r9,r9,1
	st	 r9,r2,lo16(_i__.79)
	cmp	 r9,r9,r1
	fadd.ddd r12,r12,r10
	bb1.n	 le,r9,@L3029
	st.d	 r12,r4[r8]
@L3025:
	ld	 r12,r5,lo16(_jy.82)
	ld	 r11,r0,r20
	ld	 r13,r25,lo16(_j.80)
	addu	 r12,r12,r11
	addu	 r13,r13,1
	st	 r12,r5,lo16(_jy.82)
	cmp	 r12,r13,r24
	bb1.n	 le,r12,@L3024
	st	 r13,r25,lo16(_j.80)
	br	 @L2902
	align	 4
@L3020:
	bcnd	 le0,r12,@L3033
	or.u	 r12,r0,hi16(_kx.83)
	or	 r13,r0,1
	br.n	 @L3034
	st	 r13,r12,lo16(_kx.83)
	align	 4
@L3033:
	ld	 r13,r0,r22
	subu	 r13,r13,1
	mul	 r13,r13,r12
	or	 r12,r0,1
	or.u	 r11,r0,hi16(_kx.83)
	subu	 r12,r12,r13
	st	 r12,r11,lo16(_kx.83)
@L3034:
	ld	 r24,r0,r18
	or	 r13,r0,1
	or.u	 r11,r0,hi16(_j.80)
	cmp	 r12,r13,r24
	bb0.n	 le,r12,@L2902
	st	 r13,r11,lo16(_j.80)
	or.u	 r21,r0,hi16(_jy.82)
	or.u	 r5,r0,hi16(_ix.81)
	or.u	 r25,r0,hi16(_i__.79)
	or	 r19,r0,1
	or.u	 r13,r0,hi16(_kx.83)
	or	 r23,r0,r11
	ld	 r18,r13,lo16(_kx.83)
@L3038:
	ld	 r13,r21,lo16(_jy.82)
	ld	 r15,r31,164
	ld.d	 r10,r15[r13]
	fcmp.sds r13,r10,r0
	bb0	 ne,r13,@L3039
	ld.d	 r12,r0,r16
	or.u	 r14,r0,hi16(_temp.78)
	st	 r18,r5,lo16(_ix.81)
	fmul.ddd r10,r12,r10
	st.d	 r10,r14,lo16(_temp.78)
	ld	 r1,r0,r22
	cmp	 r13,r19,r1
	bb0.n	 le,r13,@L3039
	st	 r19,r25,lo16(_i__.79)
	ld	 r13,r23,lo16(_j.80)
	ld	 r15,r31,172
	or	 r2,r0,r10
	or	 r3,r0,r11
	mul	 r6,r13,r15
@L3043:
	ld	 r7,r5,lo16(_ix.81)
	ld	 r8,r25,lo16(_i__.79)
	ld.d	 r10,r17[r7]
	addu	 r9,r8,r6
	fmul.ddd r10,r10,r2
	or.u	 r14,r0,hi16(_c__1)
	ld.d	 r12,r4[r9]
	or	 r14,r14,lo16(_c__1)
	fadd.ddd r12,r12,r10
	st.d	 r12,r4[r9]
	ld	 r13,r0,r14
	addu	 r8,r8,1
	st	 r8,r25,lo16(_i__.79)
	cmp	 r8,r8,r1
	addu	 r7,r7,r13
	bb1.n	 le,r8,@L3043
	st	 r7,r5,lo16(_ix.81)
@L3039:
	ld	 r12,r21,lo16(_jy.82)
	ld	 r11,r0,r20
	ld	 r13,r23,lo16(_j.80)
	addu	 r12,r12,r11
	addu	 r13,r13,1
	st	 r12,r21,lo16(_jy.82)
	cmp	 r12,r13,r24
	bb1.n	 le,r12,@L3038
	st	 r13,r23,lo16(_j.80)
@L2902:
@Lte23:
	ld	 r1,r31,80
	ld.d	 r24,r31,72
	ld.d	 r22,r31,64
	ld.d	 r20,r31,56
	ld.d	 r18,r31,48
	ld.d	 r16,r31,40
	or	 r2,r0,0
	ld.d	 r14,r31,32
	jmp.n	 r1
	addu	 r31,r31,176
	def	 @L3095,@L2902-@L3096
	def	 @L3093,@L2904-@L3094
	def	 @L3091,@L2760-@L3092

