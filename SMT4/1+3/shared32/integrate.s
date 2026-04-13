	file	 "integrate.i"
data

; cc1 (2.7.2.2) arguments: -O -fdefer-pop -fomit-frame-pointer
; -fcse-follow-jumps -fcse-skip-blocks -fexpensive-optimizations
; -fthread-jumps -fstrength-reduce -funroll-loops -fwritable-strings
; -fpeephole -fforce-mem -ffunction-cse -finline-functions -finline
; -freg-struct-return -fdelayed-branch -frerun-cse-after-loop
; -fschedule-insns -fschedule-insns2 -fcommon -fgnu-linker -m88110 -m88100
; -m88000 -mno-ocs-debug-info -mno-ocs-frame-position -mcheck-zero-division

gcc2_compiled.:
	align	 8
@LC0:
	string	 "varargs function cannot be inline\000"
	align	 8
@LC1:
	string	 "function too large to be inline\000"
	align	 8
@LC2:
	string	 "function with large aggregate parameter cannot be"
	string	 " inline\000"
	align	 8
@LC3:
	string	 "no prototype, and parameter address used; cannot "
	string	 "be inline\000"
	align	 8
@LC4:
	string	 "address of an aggregate parameter is used; cannot"
	string	 " be inline\000"
	align	 8
@LC5:
	string	 "function too large to be inline\000"
text
	align	 8
	global	 _function_cannot_inline_p
_function_cannot_inline_p:
	subu	 r31,r31,64
	st	 r1,r31,48
	st.d	 r24,r31,40
	or	 r25,r0,r2
	st	 r23,r31,36
@Ltb0:
	ld	 r13,r25,8
	bsr.n	 _tree_last
	ld	 r2,r13,16
	or	 r24,r0,r2
	bsr.n	 _list_length
	ld	 r2,r25,52
	ld	 r13,r25,12
	extu	 r13,r13,1<9>
	mak	 r13,r13,0<4>
	addu	 r13,r13,8
	addu	 r2,r2,r13
	bcnd.n	 eq0,r24,@L22
	mak	 r23,r2,0<3>
	or.u	 r13,r0,hi16(_void_type_node)
	ld	 r12,r24,20
	ld	 r13,r13,lo16(_void_type_node)
	cmp	 r12,r12,r13
	bb0.n	 ne,r12,@L22
	or.u	 r2,r0,hi16(@LC0)
	br.n	 @L41
	or	 r2,r2,lo16(@LC0)
	align	 4
@L22:
	bsr	 _get_max_uid
	mak	 r13,r23,0<1>
	cmp	 r2,r2,r13
	bb0.n	 gt,r2,@L23
	or.u	 r2,r0,hi16(@LC1)
	br.n	 @L41
	or	 r2,r2,lo16(@LC1)
	align	 4
@L23:
	ld	 r2,r25,52
	bcnd	 eq0,r2,@L25
@L27:
	ld	 r12,r2,8
	ld.bu	 r13,r12,28
	cmp	 r13,r13,26
	bb0	 ne,r13,@L42
	bcnd	 ne0,r24,@L29
	ld	 r13,r2,12
	bb1	 (31-17),r13,@L43
@L29:
	ld.bu	 r13,r12,12
	subu	 r13,r13,19
	mask	 r13,r13,0xff
	cmp	 r13,r13,1
	bb1	 hi,r13,@L26
	ld	 r13,r2,64
	ld.hu	 r13,r0,r13
	cmp	 r13,r13,37
	bb0	 ne,r13,@L44
@L26:
	ld	 r2,r2,4
	bcnd	 ne0,r2,@L27
@L25:
	bsr	 _get_max_uid
	cmp	 r2,r2,r23
	bb0.n	 gt,r2,@L41
	or	 r2,r0,0
	bsr.n	 _get_first_nonparm_insn
	or	 r25,r0,0
	cmp	 r13,r2,0
	br.n	 @L47
	cmp	 r12,r25,r23
	align	 4
@L36:
	ld.hu	 r12,r0,r2
	subu	 r13,r12,13
	mask	 r13,r13,0xffff
	cmp	 r13,r13,1
	bb1.n	 ls,r13,@L38
	mask	 r13,r12,0xffff
	cmp	 r13,r13,15
	bb1	 ne,r13,@L35
@L38:
	addu	 r25,r25,1
@L35:
	ld	 r2,r2,12
	cmp	 r12,r25,r23
	cmp	 r13,r2,0
@L47:
	rot	 r11,r13,28
	and.c	 r13,r12,r11
	extu	 r13,r13,1<lt>
	bcnd.n	 ne0,r13,@L36
	cmp	 r13,r25,r23
	bb0.n	 ge,r13,@L32
	or.u	 r2,r0,hi16(@LC5)
	br.n	 @L41
	or	 r2,r2,lo16(@LC5)
	align	 4
@L42:
	or.u	 r2,r0,hi16(@LC2)
	br.n	 @L41
	or	 r2,r2,lo16(@LC2)
	align	 4
@L43:
	or.u	 r2,r0,hi16(@LC3)
	br.n	 @L41
	or	 r2,r2,lo16(@LC3)
	align	 4
@L44:
	or.u	 r2,r0,hi16(@LC4)
	br.n	 @L41
	or	 r2,r2,lo16(@LC4)
	align	 4
@L32:
	or	 r2,r0,0
@L41:
@Lte0:
	ld	 r1,r31,48
	ld	 r23,r31,36
	ld.d	 r24,r31,40
	jmp.n	 r1
	addu	 r31,r31,64

	align	 8
	global	 _save_for_inline
_save_for_inline:
	subu	 r31,r31,128
	st.d	 r24,r31,72
	or.u	 r25,r0,hi16(_return_label)
	ld	 r13,r25,lo16(_return_label)
	st	 r1,r31,84
	st	 r30,r31,80
	st.d	 r22,r31,64
	st.d	 r20,r31,56
	st.d	 r18,r31,48
	st.d	 r16,r31,40
	addu	 r30,r31,80
	st.d	 r14,r31,32
@Ltb1:
	bcnd.n	 ne0,r13,@L49
	st	 r2,r30,12
	bsr	 _gen_label_rtx
	bsr.n	 _emit_label
	st	 r2,r25,lo16(_return_label)
@L49:
	bsr.n	 _max_label_num
	or.u	 r25,r0,hi16(_max_parm_reg)
	bsr.n	 _get_first_label_num
	or	 r15,r0,r2
	bsr.n	 _max_parm_reg_num
	st	 r2,r30,36
	bsr.n	 _max_reg_num
	st	 r2,r25,lo16(_max_parm_reg)
	ld	 r4,r25,lo16(_max_parm_reg)
	mak	 r4,r4,0<2>
	addu	 r13,r4,15
	and	 r13,r13,0xfff0
	or.u	 r25,r0,hi16(_parmdecl_map)
	subu	 r31,r31,r13
	st	 r2,r30,44
	addu	 r2,r31,32
	or	 r3,r0,0
	bsr.n	 _memset
	st	 r2,r25,lo16(_parmdecl_map)
	ld	 r14,r30,12
	ld	 r12,r14,52
	bcnd.n	 eq0,r12,@L51
	or.u	 r8,r0,0x10
	or.u	 r7,r0,0xffef
	or	 r7,r7,0xffff
	ld	 r10,r25,lo16(_parmdecl_map)
	or.u	 r9,r0,0x4
@L53:
	ld	 r11,r12,64
	ld.hu	 r13,r0,r11
	cmp	 r13,r13,34
	bb1	 ne,r13,@L54
	ld	 r13,r11,4
	st	 r12,r10[r13]
	ld	 r13,r12,12
	br.n	 @L123
	and	 r13,r13,r7
	align	 4
@L54:
	ld	 r13,r12,12
	or	 r13,r13,r8
@L123:
	st	 r13,r12,12
	ld	 r13,r12,12
	or	 r13,r13,r9
	st	 r13,r12,12
	ld	 r12,r12,4
	bcnd	 ne0,r12,@L53
@L51:
	ld	 r4,r30,36
	or.u	 r13,r0,hi16(_max_parm_reg)
	ld	 r7,r30,44
	or	 r2,r0,0
	ld	 r6,r13,lo16(_max_parm_reg)
	or.u	 r13,r0,hi16(_current_function_args_size)
	or	 r3,r0,0
	ld	 r8,r13,lo16(_current_function_args_size)
	bsr.n	 _gen_inline_header_rtx
	or	 r5,r0,r15
	st	 r2,r30,20
	ld	 r16,r2,4
	bsr.n	 _preserve_data
	st	 r16,r30,28
	bsr	 _get_insns
	or	 r22,r0,r2
	ld.hu	 r13,r0,r22
	cmp	 r13,r13,18
	bb0	 ne,r13,@L57
	bsr	 _abort
	align	 4
@L57:
	bsr.n	 _rtx_alloc
	or	 r2,r0,18
	ld	 r13,r22,16
	ld	 r14,r30,44
	or	 r17,r0,r2
	st	 r13,r17,16
	ld	 r13,r22,20
	st	 r13,r17,20
	ld	 r13,r22,4
	or.u	 r12,r0,hi16(_rtx_length+136)
	or	 r18,r0,r17
	st	 r13,r17,4
	mak	 r13,r14,0<2>
	st	 r0,r17,8
	addu	 r13,r13,19
	st	 r0,r17,12
	and	 r13,r13,0xfff0
	subu	 r24,r14,1
	subu	 r31,r31,r13
	ld	 r13,r12,lo16(_rtx_length+136)
	or.u	 r12,r0,hi16(_reg_map)
	addu	 r21,r31,32
	st	 r21,r12,lo16(_reg_map)
	mak	 r13,r13,0<2>
	cmp	 r12,r24,55
	bb0.n	 gt,r12,@L59
	addu	 r3,r13,4
	or.u	 r12,r0,hi16(_maybepermanent_obstack)
	or	 r13,r0,55
	or	 r23,r0,r3
	subu	 r13,r13,r24
	bb0.n	 (31-31),r13,@L61
	or	 r25,r12,lo16(_maybepermanent_obstack)
	ld	 r13,r25,12
	ld	 r12,r25,16
	addu	 r13,r13,r23
	cmp	 r13,r13,r12
	bb1.n	 ls,r13,@L125
	or.u	 r13,r0,hi16(_regno_reg_rtx)
	bsr.n	 __obstack_newchunk
	or	 r2,r0,r25
	or.u	 r13,r0,hi16(_regno_reg_rtx)
@L125:
	ld	 r13,r13,lo16(_regno_reg_rtx)
	ld	 r2,r25,12
	ld	 r3,r13[r24]
	bsr.n	 _memcpy
	or	 r4,r0,r23
	ld	 r13,r25,12
	ld	 r12,r25,24
	ld	 r11,r25,4
	addu	 r13,r13,r23
	ld	 r9,r25,16
	addu	 r10,r13,r12
	and.c	 r12,r10,r12
	st	 r13,r25,12
	subu	 r13,r12,r11
	subu	 r11,r9,r11
	st	 r12,r25,12
	cmp	 r13,r13,r11
	ld	 r12,r25,8
	bb0	 gt,r13,@L112
	st	 r9,r25,12
@L112:
	ld	 r13,r25,12
	ld	 r16,r30,44
	st	 r13,r25,8
	st	 r12,r21[r24]
	subu	 r24,r16,2
	cmp	 r13,r24,55
	bb0	 gt,r13,@L59
@L61:
	ld	 r13,r25,12
	ld	 r12,r25,16
	addu	 r13,r13,r23
	or.u	 r20,r0,hi16(_reg_map)
	cmp	 r13,r13,r12
	ld	 r21,r20,lo16(_reg_map)
	bb1.n	 ls,r13,@L115
	or	 r2,r0,r25
	bsr.n	 __obstack_newchunk
	or	 r3,r0,r23
@L115:
	or.u	 r19,r0,hi16(_regno_reg_rtx)
	ld	 r13,r19,lo16(_regno_reg_rtx)
	ld	 r2,r25,12
	ld	 r3,r13[r24]
	bsr.n	 _memcpy
	or	 r4,r0,r23
	ld	 r13,r25,12
	ld	 r12,r25,24
	ld	 r10,r25,4
	addu	 r13,r13,r23
	ld	 r9,r25,16
	addu	 r11,r13,r12
	and.c	 r12,r11,r12
	st	 r13,r25,12
	subu	 r13,r12,r10
	subu	 r10,r9,r10
	st	 r12,r25,12
	cmp	 r13,r13,r10
	ld	 r12,r25,8
	bb0	 gt,r13,@L116
	st	 r9,r25,12
@L116:
	ld	 r13,r25,12
	st	 r13,r25,8
	st	 r12,r21[r24]
	ld	 r13,r25,12
	ld	 r12,r25,16
	addu	 r13,r13,r23
	cmp	 r13,r13,r12
	ld	 r20,r20,lo16(_reg_map)
	bb1.n	 ls,r13,@L119
	subu	 r21,r24,1
	or	 r2,r0,r25
	bsr.n	 __obstack_newchunk
	or	 r3,r0,r23
@L119:
	ld	 r13,r19,lo16(_regno_reg_rtx)
	ld	 r2,r25,12
	ld	 r3,r13[r21]
	bsr.n	 _memcpy
	or	 r4,r0,r23
	ld	 r13,r25,12
	or	 r10,r0,r25
	addu	 r13,r13,r23
	st	 r13,r25,12
	ld	 r12,r10,24
	ld	 r11,r10,4
	addu	 r13,r13,r12
	ld	 r9,r10,16
	and.c	 r12,r13,r12
	subu	 r13,r12,r11
	subu	 r11,r9,r11
	st	 r12,r10,12
	cmp	 r13,r13,r11
	ld	 r12,r10,8
	bb0	 gt,r13,@L120
	st	 r9,r10,12
@L120:
	ld	 r13,r25,12
	subu	 r24,r24,2
	st	 r13,r25,8
	cmp	 r13,r24,55
	bb1.n	 gt,r13,@L61
	st	 r12,r20[r21]
@L59:
	ld	 r14,r30,44
	or.u	 r13,r0,hi16(_regno_reg_rtx)
	ld	 r2,r13,lo16(_regno_reg_rtx)
	or.u	 r13,r0,hi16(_reg_map)
	subu	 r4,r14,56
	ld	 r3,r13,lo16(_reg_map)
	mak	 r4,r4,0<2>
	addu	 r2,r2,224
	bsr.n	 _memcpy
	addu	 r3,r3,224
	ld	 r16,r30,36
	subu	 r10,r15,r16
	mak	 r13,r10,0<2>
	addu	 r13,r13,15
	ld	 r24,r30,36
	and	 r13,r13,0xfff0
	subu	 r31,r31,r13
	mak	 r12,r24,0<2>
	addu	 r13,r31,32
	or.u	 r11,r0,hi16(_label_map)
	subu	 r13,r13,r12
	cmp	 r12,r24,r15
	bb0.n	 lt,r12,@L68
	st	 r13,r11,lo16(_label_map)
	mask	 r12,r10,3
	bcnd.n	 eq0,r12,@L70
	or	 r23,r0,r11
	cmp	 r13,r12,1
	bb0.n	 gt,r13,@L90
	cmp	 r13,r12,2
	bb0	 gt,r13,@L91
	bsr	 _gen_label_rtx
	ld	 r13,r23,lo16(_label_map)
	st	 r2,r13[r24]
	addu	 r24,r24,1
@L91:
	bsr	 _gen_label_rtx
	ld	 r13,r23,lo16(_label_map)
	st	 r2,r13[r24]
	addu	 r24,r24,1
@L90:
	bsr	 _gen_label_rtx
	ld	 r13,r23,lo16(_label_map)
	st	 r2,r13[r24]
	addu	 r24,r24,1
	cmp	 r12,r24,r15
	bb0	 lt,r12,@L68
@L70:
	bsr.n	 _gen_label_rtx
	addu	 r25,r24,3
	ld	 r13,r23,lo16(_label_map)
	bsr.n	 _gen_label_rtx
	st	 r2,r13[r24]
	ld	 r12,r23,lo16(_label_map)
	addu	 r13,r24,1
	bsr.n	 _gen_label_rtx
	st	 r2,r12[r13]
	addu	 r12,r24,2
	ld	 r13,r23,lo16(_label_map)
	addu	 r24,r24,4
	bsr.n	 _gen_label_rtx
	st	 r2,r13[r12]
	ld	 r13,r23,lo16(_label_map)
	cmp	 r12,r24,r15
	bb1.n	 lt,r12,@L70
	st	 r2,r13[r25]
@L68:
	ld	 r14,r30,28
	mak	 r4,r14,0<2>
	addu	 r13,r4,15
	and	 r13,r13,0xfff0
	subu	 r31,r31,r13
	or.u	 r13,r0,hi16(_insn_map)
	addu	 r2,r31,32
	or	 r3,r0,0
	bsr.n	 _memset
	st	 r2,r13,lo16(_insn_map)
@L124:
	ld	 r22,r22,12
	bcnd	 eq0,r22,@L73
	ld.hu	 r2,r0,r22
	or.u	 r13,r0,hi16(_orig_asm_operands_vector)
	st	 r0,r13,lo16(_orig_asm_operands_vector)
	or.u	 r13,r0,hi16(_copy_asm_operands_vector)
	cmp	 r12,r2,16
	bb0.n	 ne,r12,@L83
	st	 r0,r13,lo16(_copy_asm_operands_vector)
	bb1.n	 ls,r12,@L86
	cmp	 r13,r2,17
	bb0.n	 ne,r13,@L82
	cmp	 r13,r2,18
	bb1	 ne,r13,@L84
	ld	 r13,r22,20
	addu	 r13,r13,6
	bcnd	 eq0,r13,@L124
	bsr.n	 _rtx_alloc
	or	 r2,r0,18
	ld	 r13,r22,16
	or	 r25,r0,r2
	st	 r13,r25,16
	ld	 r13,r22,20
	br.n	 @L76
	st	 r13,r25,20
	align	 4
@L86:
	cmp	 r13,r2,13
	bb1	 lo,r13,@L84
	bsr	 _rtx_alloc
	or	 r25,r0,r2
	bsr.n	 _copy_for_inline
	ld	 r2,r22,16
	st	 r2,r25,16
	subu	 r13,r0,1
	st	 r13,r25,20
	st	 r0,r25,24
	bsr.n	 _copy_for_inline
	ld	 r2,r22,28
	br.n	 @L76
	st	 r2,r25,28
	align	 4
@L82:
	or.u	 r13,r0,hi16(_label_map)
	ld	 r12,r22,16
	ld	 r13,r13,lo16(_label_map)
	ld	 r25,r13[r12]
	br	 @L76
	align	 4
@L83:
	bsr.n	 _rtx_alloc
	or	 r2,r0,16
	br.n	 @L76
	or	 r25,r0,r2
	align	 4
@L84:
	bsr	 _abort
	align	 4
@L76:
	ld	 r13,r22,4
	st	 r13,r25,4
	or.u	 r13,r0,hi16(_insn_map)
	ld	 r12,r22,4
	ld	 r13,r13,lo16(_insn_map)
	st	 r25,r13[r12]
	st	 r25,r18,12
	st	 r18,r25,8
	br.n	 @L124
	or	 r18,r0,r25
	align	 4
@L73:
	bsr.n	 _get_first_nonparm_insn
	st	 r0,r18,12
	ld	 r16,r30,20
	bsr.n	 _get_insns
	st	 r2,r16,12
	ld	 r14,r30,12
	st	 r2,r16,16
	bsr.n	 _get_frame_size
	st	 r16,r14,72
	or.u	 r13,r0,hi16(_parmdecl_map)
	st	 r2,r14,68
	st	 r0,r13,lo16(_parmdecl_map)
	or.u	 r13,r0,hi16(_label_map)
	st	 r0,r13,lo16(_label_map)
	or.u	 r13,r0,hi16(_reg_map)
	st	 r0,r13,lo16(_reg_map)
	or	 r2,r0,r17
	ld	 r13,r14,12
	or.u	 r12,r0,hi16(_return_label)
	or	 r3,r0,r18
	st	 r0,r12,lo16(_return_label)
	or	 r13,r13,512
	bsr.n	 _set_new_first_and_last_insn
	st	 r13,r14,12
@Lte1:
	subu	 r31,r30,80
	ld	 r1,r31,84
	ld	 r30,r31,80
	ld.d	 r24,r31,72
	ld.d	 r22,r31,64
	ld.d	 r20,r31,56
	ld.d	 r18,r31,48
	ld.d	 r16,r31,40
	ld.d	 r14,r31,32
	jmp.n	 r1
	addu	 r31,r31,128

	align	 8
_copy_for_inline:
	subu	 r31,r31,96
	st	 r1,r31,80
	st.d	 r24,r31,72
	st.d	 r22,r31,64
	st.d	 r20,r31,56
	st.d	 r18,r31,48
	or	 r21,r0,r2
	st.d	 r16,r31,40
@Ltb2:
	bcnd.n	 ne0,r21,@L172
	or	 r17,r0,r21
	br.n	 @L216
	or	 r2,r0,0
	align	 4
@L172:
	ld.hu	 r18,r0,r21
	subu	 r11,r18,22
	or.u	 r13,r0,hi16(@L195)
	cmp	 r12,r11,19
	bb0.n	 ls,r12,@L173
	or	 r13,r13,lo16(@L195)
	ld	 r13,r13[r11]
	jmp	 r13
	align	 4
@L195:
	word	 @L180
	word	 @L173
	word	 @L173
	word	 @L193
	word	 @L173
	word	 @L173
	word	 @L173
	word	 @L173
	word	 @L215
	word	 @L215
	word	 @L173
	word	 @L215
	word	 @L190
	word	 @L173
	word	 @L173
	word	 @L182
	word	 @L189
	word	 @L215
	word	 @L215
	word	 @L215
	align	 4
@L180:
	or.u	 r13,r0,hi16(_orig_asm_operands_vector)
	ld	 r12,r17,16
	ld	 r13,r13,lo16(_orig_asm_operands_vector)
	cmp	 r13,r13,r12
	bb1	 ne,r13,@L173
	bsr.n	 _rtx_alloc
	or	 r2,r0,22
	ld	 r13,r17,4
	or	 r21,r0,r2
	st	 r13,r21,4
	ld	 r13,r17,8
	st	 r13,r21,8
	or.u	 r13,r0,hi16(_copy_asm_operands_vector)
	ld	 r12,r17,12
	ld	 r13,r13,lo16(_copy_asm_operands_vector)
	st	 r12,r21,12
	st	 r13,r21,16
	ld	 r13,r17,20
	br.n	 @L216
	st	 r13,r2,20
	align	 4
@L182:
	ld	 r10,r21,4
	ld.hu	 r12,r0,r10
	subu	 r13,r12,38
	mask	 r13,r13,0xffff
	cmp	 r13,r13,1
	bb0.n	 hi,r13,@L215
	mask	 r11,r12,0xffff
	cmp	 r13,r11,30
	cmp	 r12,r11,32
	or	 r13,r13,r12
	extu	 r13,r13,1<eq>
	bcnd.n	 ne0,r13,@L216
	or	 r2,r0,r21
	cmp	 r13,r11,44
	bb1	 ne,r13,@L173
	ld	 r12,r10,4
	br	 @L173
	align	 4
@L189:
	ld	 r13,r17,4
	or.u	 r12,r0,hi16(_label_map)
	ld	 r11,r13,16
	ld	 r13,r12,lo16(_label_map)
	ld.bu	 r3,r17,2
	ld	 r4,r13[r11]
	or	 r2,r0,38
	bsr.n	 _gen_rtx
	addu	 r1,r1,@L218
@L219:
	align	 4
@L190:
	ld	 r12,r21,4
	cmp	 r13,r12,55
	bb0.n	 gt,r13,@L215
	or.u	 r13,r0,hi16(_reg_map)
	ld	 r13,r13,lo16(_reg_map)
	ld	 r2,r13[r12]
	br	 @L216
	align	 4
@L193:
	ld	 r2,r21,4
	ld.hu	 r13,r0,r2
	cmp	 r13,r13,34
	bb1.n	 ne,r13,@L173
	or.u	 r13,r0,hi16(_max_parm_reg)
	ld	 r2,r2,4
	ld	 r13,r13,lo16(_max_parm_reg)
	cmp	 r13,r2,r13
	bb1.n	 ge,r13,@L173
	cmp	 r13,r2,55
	bb0.n	 gt,r13,@L173
	or.u	 r13,r0,hi16(_parmdecl_map)
	ld	 r13,r13,lo16(_parmdecl_map)
	ld	 r2,r13[r2]
	bcnd	 eq0,r2,@L173
	ld	 r13,r2,12
	and.u	 r13,r13,0xfffb
	st	 r13,r2,12
@L173:
	bsr.n	 _rtx_alloc
	or	 r2,r0,r18
	or.u	 r13,r0,hi16(_rtx_length)
	or	 r25,r13,lo16(_rtx_length)
	ld	 r4,r25[r18]
	or	 r21,r0,r2
	or	 r3,r0,r17
	addu	 r4,r4,1
	bsr.n	 _memcpy
	mak	 r4,r4,0<2>
	or.u	 r13,r0,hi16(_rtx_format)
	ld	 r12,r25[r18]
	or	 r13,r13,lo16(_rtx_format)
	ld	 r19,r13[r18]
	bcnd.n	 le0,r12,@L198
	or	 r20,r0,0
	or	 r16,r0,r25
	or	 r22,r0,r21
@L200:
	ld.b	 r13,r0,r19
	cmp	 r12,r13,101
	bb0.n	 ne,r12,@L202
	addu	 r19,r19,1
	bb1	 gt,r12,@L213
	cmp	 r13,r13,69
	bb0	 ne,r13,@L204
	br	 @L199
	align	 4
@L213:
	cmp	 r13,r13,117
	bb0.n	 ne,r13,@L203
	or.u	 r12,r0,hi16(_insn_map)
	br	 @L199
	align	 4
@L202:
	bsr.n	 _copy_for_inline
	ld	 r2,r22,4
	br.n	 @L199
	st	 r2,r22,4
	align	 4
@L203:
	ld	 r13,r22,4
	ld	 r11,r13,4
	ld	 r13,r12,lo16(_insn_map)
	ld	 r2,r13[r11]
	br	 @L216
	align	 4
@L204:
	ld	 r3,r22,4
	bcnd	 eq0,r3,@L199
	ld	 r2,r0,r3
	bcnd	 eq0,r2,@L199
	bsr.n	 _gen_rtvec_v
	addu	 r3,r3,4
	st	 r2,r22,4
	ld	 r13,r0,r2
	bcnd.n	 eq0,r13,@L199
	or	 r24,r0,0
	or	 r23,r0,r22
	or	 r25,r0,0
@L209:
	ld	 r13,r23,4
	addu	 r13,r13,r25
	bsr.n	 _copy_for_inline
	ld	 r2,r13,4
	ld	 r13,r23,4
	addu	 r13,r13,r25
	st	 r2,r13,4
	ld	 r13,r23,4
	ld	 r13,r0,r13
	addu	 r24,r24,1
	cmp	 r13,r24,r13
	bb1.n	 lo,r13,@L209
	addu	 r25,r25,4
@L199:
	ld	 r13,r16[r18]
	addu	 r20,r20,1
	cmp	 r13,r20,r13
	bb1.n	 lt,r13,@L200
	addu	 r22,r22,4
@L198:
	cmp	 r13,r18,22
	bb0.n	 eq,r13,@L216
	or	 r2,r0,r21
	or.u	 r12,r0,hi16(_orig_asm_operands_vector)
	ld	 r13,r12,lo16(_orig_asm_operands_vector)
	bcnd	 ne0,r13,@L216
	ld	 r13,r17,16
	st	 r13,r12,lo16(_orig_asm_operands_vector)
	ld	 r12,r21,16
	or.u	 r13,r0,hi16(_copy_asm_operands_vector)
	st	 r12,r13,lo16(_copy_asm_operands_vector)
@L215:
	or	 r2,r0,r21
@L216:
@Lte2:
	ld	 r1,r31,80
	ld.d	 r24,r31,72
	ld.d	 r22,r31,64
	ld.d	 r20,r31,56
	ld.d	 r18,r31,48
	ld.d	 r16,r31,40
	jmp.n	 r1
	addu	 r31,r31,96
	def	 @L218,@L216-@L219

	align	 8
	global	 _expand_inline_function
_expand_inline_function:
	subu	 r31,r31,192
	st	 r1,r31,84
	st	 r30,r31,80
	st.d	 r24,r31,72
	st.d	 r22,r31,64
	st.d	 r20,r31,56
	st.d	 r18,r31,48
	st.d	 r16,r31,40
	addu	 r30,r31,80
	st.d	 r14,r31,32
@Ltb3:
	st	 r2,r30,12
	ld	 r15,r2,72
	ld	 r13,r15,32
	ld	 r8,r15,12
	ld	 r18,r15,20
	st	 r8,r30,44
	ld	 r8,r15,24
	st	 r5,r30,20
	st	 r6,r30,28
	st	 r7,r30,36
	or	 r25,r0,r3
	st	 r0,r30,76
	or	 r14,r0,r4
	st	 r0,r30,84
	or	 r17,r0,0
	st	 r18,r30,60
	addu	 r13,r13,1
	st	 r13,r30,52
	cmp	 r13,r13,55
	bb1.n	 gt,r13,@L221
	st	 r8,r30,68
	bsr	 _abort
	align	 4
@L221:
	ld	 r18,r30,12
	bsr.n	 _list_length
	ld	 r2,r18,52
	or	 r23,r0,r2
	or	 r2,r0,r25
	or.u	 r13,r0,hi16(_first_parm_offset)
	or	 r12,r0,8
	bsr.n	 _list_length
	st	 r12,r13,lo16(_first_parm_offset)
	cmp	 r2,r2,r23
	bb0	 ne,r2,@L222
@L347:
	br.n	 @L320
	subu	 r2,r0,1
	align	 4
@L222:
	ld	 r8,r30,12
	ld	 r24,r8,52
	bcnd.n	 eq0,r24,@L224
	or	 r19,r0,r25
@L226:
	ld	 r13,r19,20
	ld	 r12,r24,52
	ld	 r11,r13,8
	ld.bu	 r12,r12,28
	ld.bu	 r13,r11,28
	cmp	 r13,r12,r13
	bb1.n	 ne,r13,@L347
	cmp	 r13,r12,26
	bb1	 ne,r13,@L225
	ld	 r13,r24,8
	cmp	 r13,r11,r13
	bb0.n	 eq,r13,@L320
	subu	 r2,r0,1
@L225:
	ld	 r24,r24,4
	ld	 r19,r19,4
	bcnd	 ne0,r24,@L226
@L224:
	bsr.n	 _pushlevel
	or	 r2,r0,0
	bsr.n	 _expand_start_bindings
	or	 r2,r0,0
	mak	 r13,r23,0<2>
	ld	 r18,r30,12
	addu	 r13,r13,15
	or	 r19,r0,r25
	and	 r13,r13,0xfff0
	ld	 r24,r18,52
	subu	 r31,r31,r13
	or	 r23,r0,0
	bcnd.n	 eq0,r24,@L352
	addu	 r16,r31,32
@L233:
	ld	 r2,r24,16
	ld	 r3,r24,20
	ld	 r22,r19,20
	ld	 r13,r24,52
	ld	 r12,r24,8
	ld.bu	 r21,r13,28
	ld.bu	 r12,r12,28
	bsr.n	 _emit_note
	st	 r12,r30,100
	ld	 r13,r24,12
	bb0.n	 (31-17),r13,@L234
	mask.u	 r13,r13,0x14
	bsr.n	 _int_size_in_bytes
	ld	 r2,r24,8
	or	 r3,r0,r2
	bsr.n	 _assign_stack_local
	or	 r2,r0,r21
	or	 r25,r0,r2
	ld	 r2,r24,28
	bsr.n	 _memory_address_p
	ld	 r3,r25,4
	bcnd.n	 ne0,r2,@L348
	or	 r2,r0,r22
	bsr.n	 _copy_rtx
	ld	 r2,r25,4
	or	 r4,r0,r2
	or	 r2,r0,r25
	bsr.n	 _change_address
	or	 r3,r0,0
	or	 r25,r0,r2
	or	 r2,r0,r22
@L348:
	or	 r3,r0,r25
	or	 r4,r0,0
	bsr.n	 _store_expr
	addu	 r1,r1,@L353
@L354:
	align	 4
@L234:
	or.u	 r12,r0,0x4
	cmp	 r13,r13,r12
	bb0.n	 ne,r13,@L237
	or	 r2,r0,r22
	bsr.n	 _gen_reg_rtx
	or	 r2,r0,r21
	or	 r25,r0,r2
	or	 r2,r0,r22
	or	 r4,r0,0
	or	 r3,r0,r25
	bsr.n	 _store_expr
	addu	 r1,r1,@L355
@L356:
	align	 4
@L237:
	or	 r3,r0,0
	or	 r4,r0,r21
	bsr.n	 _expand_expr
	or	 r5,r0,0
	or	 r25,r0,r2
	ld.hu	 r11,r0,r25
	mask	 r12,r11,0xffff
	cmp	 r13,r12,34
	bb0.n	 ne,r13,@L236
	subu	 r13,r11,38
	mask	 r13,r13,0xffff
	cmp	 r13,r13,1
	bb1.n	 ls,r13,@L236
	cmp	 r13,r12,30
	cmp	 r12,r12,32
	or	 r13,r13,r12
	extu	 r12,r13,1<eq>
	xor	 r13,r12,1
	bcnd	 eq0,r13,@L236
	bsr	 _copy_to_reg
	or	 r25,r0,r2
@L236:
	ld	 r8,r30,100
	cmp	 r13,r21,r8
	bb0	 ne,r13,@L240
	ld	 r2,r30,100
	bsr.n	 _convert_to_mode
	or	 r3,r0,r25
	or	 r25,r0,r2
@L240:
	st	 r25,r16[r23]
	ld	 r24,r24,4
	ld	 r19,r19,4
	bcnd.n	 ne0,r24,@L233
	addu	 r23,r23,1
	ld	 r18,r30,12
@L352:
	ld	 r2,r18,52
	bsr.n	 _copy_parm_decls
	or	 r3,r0,r16
	bsr	 _emit_queue
	bsr	 _do_pending_stack_adjust
	ld	 r8,r30,36
	bcnd.n	 eq0,r8,@L242
	or.u	 r13,r0,hi16(_struct_value_rtx)
	ld	 r2,r13,lo16(_struct_value_rtx)
	ld.hu	 r13,r0,r2
	cmp	 r13,r13,37
	bb1	 ne,r13,@L243
	ld	 r3,r30,36
	bsr.n	 _force_reg
	or	 r2,r0,4
	br.n	 @L242
	st	 r2,r30,84
	align	 4
@L243:
	ld	 r3,r30,36
	st	 r2,r30,84
	bsr.n	 _emit_move_insn
	ld	 r2,r30,84
@L242:
	ld	 r18,r30,52
	mak	 r4,r18,0<2>
	addu	 r13,r4,15
	and	 r13,r13,0xfff0
	subu	 r31,r31,r13
	or.u	 r13,r0,hi16(_reg_map)
	addu	 r2,r31,32
	or	 r3,r0,0
	bsr.n	 _memset
	st	 r2,r13,lo16(_reg_map)
	ld	 r8,r30,12
	ld	 r25,r8,52
	bcnd	 eq0,r25,@L245
	ld	 r12,r15,36
	or.u	 r22,r0,hi16(_parm_map)
	bcnd.n	 ge0,r12,@L246
	or	 r4,r0,r12
	addu	 r4,r12,3
@L246:
	and	 r4,r4,0xfffc
	addu	 r13,r4,15
	and	 r13,r13,0xfff0
	subu	 r31,r31,r13
	addu	 r2,r31,32
	st	 r2,r22,lo16(_parm_map)
	bsr.n	 _memset
	or	 r3,r0,0
	or.u	 r13,r0,hi16(_first_parm_offset)
	ld	 r12,r13,lo16(_first_parm_offset)
	bcnd	 ge0,r12,@L248
	addu	 r12,r12,3
@L248:
	or	 r24,r0,r25
	or	 r9,r0,r22
	or	 r23,r0,0
	ld	 r13,r9,lo16(_parm_map)
	and	 r12,r12,0xfffc
	or.u	 r25,r0,hi16(_frame_pointer_rtx)
	subu	 r13,r13,r12
	st	 r13,r9,lo16(_parm_map)
@L252:
	ld	 r13,r24,44
	bcnd	 lt0,r13,@L253
	ld	 r12,r16[r23]
	ld	 r11,r9,lo16(_parm_map)
	ext	 r13,r13,0<5>
	br.n	 @L255
	st	 r12,r11[r13]
	align	 4
@L253:
	ld	 r11,r24,64
	ld.hu	 r12,r0,r11
	cmp	 r13,r12,37
	bb1.n	 ne,r13,@L256
	or	 r10,r0,0
	ld	 r11,r11,4
	ld.hu	 r13,r0,r11
	cmp	 r13,r13,44
	bb1	 ne,r13,@L257
	ld	 r13,r11,4
	ld	 r12,r25,lo16(_frame_pointer_rtx)
	cmp	 r13,r13,r12
	bb1	 ne,r13,@L258
	ld	 r12,r11,8
	ld.hu	 r13,r0,r12
	cmp	 r13,r13,30
	bb0	 ne,r13,@L343
@L258:
	ld	 r13,r11,8
	ld	 r12,r25,lo16(_frame_pointer_rtx)
	cmp	 r13,r13,r12
	bb1	 ne,r13,@L257
	ld	 r12,r11,4
	ld.hu	 r13,r0,r12
	cmp	 r13,r13,30
	bb1	 ne,r13,@L257
@L343:
	or	 r10,r0,r12
@L257:
	bcnd	 eq0,r10,@L261
	ld	 r13,r10,4
	bcnd	 ge0,r13,@L262
	addu	 r13,r13,3
@L262:
	ld	 r11,r9,lo16(_parm_map)
	ld	 r12,r16[r23]
	ext	 r13,r13,0<2>
	br.n	 @L255
	st	 r12,r11[r13]
	align	 4
@L261:
	bsr	 _abort
	align	 4
@L256:
	cmp	 r13,r12,34
	bb0	 ne,r13,@L255
	bsr	 _abort
	align	 4
@L255:
	ld	 r12,r24,64
	ld.hu	 r13,r0,r12
	cmp	 r13,r13,34
	bb1.n	 ne,r13,@L251
	or.u	 r13,r0,hi16(_reg_map)
	ld	 r11,r12,4
	ld	 r12,r13,lo16(_reg_map)
	ld	 r13,r16[r23]
	st	 r13,r12[r11]
@L251:
	ld	 r24,r24,4
	bcnd.n	 ne0,r24,@L252
	addu	 r23,r23,1
	ld	 r18,r30,84
	bcnd.n	 eq0,r18,@L274
	or.u	 r13,r0,hi16(_struct_value_incoming_rtx)
	ld	 r11,r13,lo16(_struct_value_incoming_rtx)
	ld.hu	 r12,r0,r11
	cmp	 r13,r12,34
	bb0.n	 ne,r13,@L274
	cmp	 r13,r12,37
	bb1.n	 ne,r13,@L271
	or.u	 r13,r0,hi16(_frame_pointer_rtx)
	ld	 r11,r11,4
	ld	 r13,r13,lo16(_frame_pointer_rtx)
	ld	 r12,r11,4
	cmp	 r12,r12,r13
	bb1	 ne,r12,@L271
	ld	 r12,r11,8
	ld.hu	 r13,r0,r12
	cmp	 r13,r13,30
	bb1	 ne,r13,@L271
	ld	 r11,r12,4
	bcnd	 ge0,r11,@L272
	addu	 r11,r11,3
@L272:
	or.u	 r13,r0,hi16(_parm_map)
	ld	 r8,r30,84
	ld	 r12,r13,lo16(_parm_map)
	ext	 r13,r11,0<2>
	br.n	 @L274
	st	 r8,r12[r13]
	align	 4
@L271:
	bsr	 _abort
	align	 4
@L245:
	or.u	 r13,r0,hi16(_parm_map)
	st	 r0,r13,lo16(_parm_map)
@L274:
	ld	 r18,r30,68
	ld	 r8,r30,60
	subu	 r10,r18,r8
	mak	 r13,r10,0<2>
	addu	 r13,r13,15
	ld	 r23,r30,60
	and	 r13,r13,0xfff0
	subu	 r31,r31,r13
	mak	 r12,r23,0<2>
	addu	 r13,r31,32
	or.u	 r11,r0,hi16(_label_map)
	subu	 r13,r13,r12
	cmp	 r12,r23,r18
	bb0.n	 lt,r12,@L276
	st	 r13,r11,lo16(_label_map)
	mask	 r12,r10,3
	bcnd.n	 eq0,r12,@L278
	or	 r24,r0,r11
	cmp	 r13,r12,1
	bb0.n	 gt,r13,@L325
	cmp	 r13,r12,2
	bb0	 gt,r13,@L326
	bsr	 _gen_label_rtx
	ld	 r13,r24,lo16(_label_map)
	st	 r2,r13[r23]
	addu	 r23,r23,1
@L326:
	bsr	 _gen_label_rtx
	ld	 r13,r24,lo16(_label_map)
	st	 r2,r13[r23]
	addu	 r23,r23,1
@L325:
	bsr	 _gen_label_rtx
	ld	 r13,r24,lo16(_label_map)
	ld	 r18,r30,68
	st	 r2,r13[r23]
	addu	 r23,r23,1
	cmp	 r12,r23,r18
	bb0	 lt,r12,@L276
@L278:
	bsr.n	 _gen_label_rtx
	addu	 r25,r23,3
	ld	 r13,r24,lo16(_label_map)
	bsr.n	 _gen_label_rtx
	st	 r2,r13[r23]
	ld	 r12,r24,lo16(_label_map)
	addu	 r13,r23,1
	bsr.n	 _gen_label_rtx
	st	 r2,r12[r13]
	ld	 r13,r24,lo16(_label_map)
	addu	 r12,r23,2
	bsr.n	 _gen_label_rtx
	st	 r2,r13[r12]
	ld	 r8,r30,68
	addu	 r23,r23,4
	ld	 r13,r24,lo16(_label_map)
	cmp	 r12,r23,r8
	bb1.n	 lt,r12,@L278
	st	 r2,r13[r25]
@L276:
	ld	 r13,r15,4
	mak	 r13,r13,0<2>
	addu	 r13,r13,15
	or	 r3,r0,0
	and	 r13,r13,0xfff0
	ld	 r4,r15,4
	subu	 r31,r31,r13
	or.u	 r13,r0,hi16(_insn_map)
	addu	 r2,r31,32
	mak	 r4,r4,0<2>
	bsr.n	 _memset
	st	 r2,r13,lo16(_insn_map)
	ld	 r18,r30,36
	bcnd.n	 ne0,r18,@L349
	or.u	 r13,r0,hi16(_inline_target)
	ld	 r8,r30,28
	ld.bu	 r2,r8,28
	bcnd	 ne0,r2,@L280
@L349:
	br.n	 @L282
	st	 r0,r13,lo16(_inline_target)
	align	 4
@L280:
	ld	 r18,r30,12
	ld	 r13,r18,48
	ld.bu	 r24,r13,28
	bcnd.n	 eq0,r14,@L283
	or	 r25,r0,r2
	ld.hu	 r13,r0,r14
	cmp	 r13,r13,34
	bb1	 ne,r13,@L283
	ld.bu	 r13,r14,2
	cmp	 r13,r13,r25
	bb0.n	 ne,r13,@L344
	or.u	 r13,r0,hi16(_inline_target)
@L283:
	bsr.n	 _gen_reg_rtx
	or	 r2,r0,r25
	or.u	 r13,r0,hi16(_inline_target)
	or	 r14,r0,r2
@L344:
	st	 r14,r13,lo16(_inline_target)
	cmp	 r13,r24,r25
	bb0	 ne,r13,@L282
	or	 r2,r0,35
	or	 r3,r0,r24
	or	 r4,r0,r14
	bsr.n	 _gen_rtx
	or	 r5,r0,0
	or.u	 r13,r0,hi16(_inline_target)
	st	 r2,r13,lo16(_inline_target)
@L282:
	bsr	 _get_frame_size
	or.u	 r13,r0,hi16(_frame_pointer_rtx)
	subu	 r3,r0,r2
	ld	 r2,r13,lo16(_frame_pointer_rtx)
	or.u	 r13,r0,hi16(_fp_delta)
	bsr.n	 _plus_constant
	st	 r3,r13,lo16(_fp_delta)
	or	 r3,r0,r2
	bsr.n	 _copy_to_mode_reg
	or	 r2,r0,4
	ld	 r8,r30,12
	ld	 r24,r30,44
	or.u	 r13,r0,hi16(_inline_fp_rtx)
	st	 r2,r13,lo16(_inline_fp_rtx)
	ld	 r3,r8,68
	bsr.n	 _assign_stack_local
	or	 r2,r0,0
	bcnd	 eq0,r24,@L287
@L289:
	ld.hu	 r11,r0,r24
	or.u	 r13,r0,hi16(_orig_asm_operands_vector)
	or	 r23,r0,0
	st	 r0,r13,lo16(_orig_asm_operands_vector)
	or.u	 r13,r0,hi16(_copy_asm_operands_vector)
	cmp	 r12,r11,15
	bb0.n	 ne,r12,@L304
	st	 r0,r13,lo16(_copy_asm_operands_vector)
	bb0.n	 ls,r12,@L313
	cmp	 r13,r11,13
	bb0.n	 ne,r13,@L291
	cmp	 r13,r11,14
	bb0	 ne,r13,@L301
	br	 @L311
	align	 4
@L313:
	cmp	 r13,r11,17
	bb0	 ne,r13,@L306
	bb1.n	 lo,r13,@L307
	cmp	 r13,r11,18
	bb0	 ne,r13,@L308
	br	 @L311
	align	 4
@L291:
	ld	 r25,r24,16
	bcnd	 eq0,r17,@L292
	ld.hu	 r13,r0,r25
	cmp	 r13,r13,25
	bb1.n	 ne,r13,@L294
	or.u	 r13,r0,hi16(_stack_pointer_rtx)
	ld	 r12,r25,4
	ld	 r13,r13,lo16(_stack_pointer_rtx)
	cmp	 r12,r12,r13
	bb0	 ne,r12,@L292
	ld	 r2,r25,8
	bsr.n	 _rtx_equal_p
	or	 r3,r0,r17
	bcnd	 eq0,r2,@L294
	bsr.n	 _copy_rtx_and_substitute
	ld	 r2,r25,4
	or	 r4,r0,r2
	or	 r2,r0,25
	or	 r3,r0,0
	bsr.n	 _gen_rtx
	or	 r5,r0,r17
	bsr.n	 _emit_insn
	or	 r17,r0,0
	or	 r20,r0,r2
	ld	 r13,r0,r20
	br.n	 @L350
	or	 r13,r13,2
	align	 4
@L294:
	ld.hu	 r13,r0,r25
	cmp	 r13,r13,26
	bb1	 ne,r13,@L295
	ld	 r2,r25,4
	bsr.n	 _rtx_equal_p
	or	 r3,r0,r17
	bcnd.n	 eq0,r2,@L295
	or	 r2,r0,25
	or.u	 r13,r0,hi16(_inline_target)
	or	 r3,r0,0
	ld	 r4,r13,lo16(_inline_target)
	bsr.n	 _gen_rtx
	or	 r5,r0,r17
	bsr.n	 _emit_insn
	or	 r17,r0,0
	or	 r20,r0,r2
	ld	 r13,r0,r20
	br.n	 @L350
	or	 r13,r13,2
	align	 4
@L295:
	or	 r17,r0,0
@L292:
	ld.hu	 r11,r0,r25
	cmp	 r13,r11,26
	bb1.n	 ne,r13,@L297
	or	 r20,r0,0
	ld	 r13,r25,4
	or.u	 r12,r0,0x22
	or	 r12,r12,0x2
	ld	 r13,r0,r13
	and	 r13,r13,0x2
	cmp	 r13,r13,r12
	bb0.n	 ne,r13,@L351
	or.u	 r13,r0,hi16(_insn_map)
@L297:
	cmp	 r13,r11,25
	bb1.n	 ne,r13,@L298
	or.u	 r13,r0,hi16(_cc0_rtx)
	ld	 r12,r25,4
	ld	 r13,r13,lo16(_cc0_rtx)
	cmp	 r12,r12,r13
	bb1	 ne,r12,@L298
	bsr.n	 _try_fold_cc0
	or	 r2,r0,r24
	or	 r23,r0,r2
@L298:
	bcnd	 eq0,r23,@L299
	or	 r24,r0,r23
	br.n	 @L351
	or.u	 r13,r0,hi16(_insn_map)
	align	 4
@L299:
	bsr.n	 _copy_rtx_and_substitute
	or	 r2,r0,r25
	bsr.n	 _emit_insn
	addu	 r1,r1,@L357
@L358:
	align	 4
@L301:
	ld	 r2,r24,16
	ld.hu	 r13,r0,r2
	cmp	 r13,r13,29
	bb1.n	 ne,r13,@L302
	or	 r17,r0,0
	ld	 r18,r30,76
	bcnd	 ne0,r18,@L303
	bsr	 _gen_label_rtx
	st	 r2,r30,76
@L303:
	ld	 r2,r30,76
	bsr.n	 _emit_jump
	addu	 r1,r1,@L359
@L360:
	align	 4
@L302:
	bsr	 _copy_rtx_and_substitute
	bsr	 _emit_jump_insn
@L346:
	or	 r20,r0,r2
	ld	 r13,r0,r20
	or	 r13,r13,2
@L350:
	br.n	 @L290
	st	 r13,r0,r20
	align	 4
@L304:
	bsr.n	 _copy_rtx_and_substitute
	ld	 r2,r24,16
	bsr	 _emit_call_insn
	or	 r20,r0,r2
	ld	 r13,r0,r20
	or	 r13,r13,2
	st	 r13,r0,r20
	ld	 r12,r24,16
	ld.hu	 r13,r0,r12
	cmp	 r13,r13,25
	bb1	 ne,r13,@L290
	ld	 r17,r12,4
	br.n	 @L351
	or.u	 r13,r0,hi16(_insn_map)
	align	 4
@L306:
	or.u	 r13,r0,hi16(_label_map)
	ld	 r12,r24,16
	ld	 r13,r13,lo16(_label_map)
	ld	 r2,r13[r12]
	bsr.n	 _emit_label
	or	 r17,r0,0
	br.n	 @L290
	or	 r20,r0,r2
	align	 4
@L307:
	bsr	 _emit_barrier
	br.n	 @L290
	or	 r20,r0,r2
	align	 4
@L308:
	ld	 r3,r24,20
	addu	 r13,r3,6
	bcnd.n	 eq0,r13,@L290
	or	 r20,r0,0
	bsr.n	 _emit_note
	ld	 r2,r24,16
	br.n	 @L290
	or	 r20,r0,r2
	align	 4
@L311:
	bsr	 _abort
	align	 4
@L290:
	or.u	 r13,r0,hi16(_insn_map)
@L351:
	ld	 r12,r24,4
	ld	 r13,r13,lo16(_insn_map)
	st	 r20,r13[r12]
	ld	 r24,r24,12
	bcnd	 ne0,r24,@L289
@L287:
	ld	 r8,r30,76
	bcnd	 eq0,r8,@L315
	bsr.n	 _emit_label
	ld	 r2,r30,76
@L315:
	ld	 r18,r30,12
	ld	 r2,r18,60
	bsr.n	 _copy_decl_tree
	or	 r3,r0,0
	bsr	 _getdecls
	or	 r3,r0,1
	bsr.n	 _expand_end_bindings
	or	 r4,r0,1
	or	 r2,r0,1
	or	 r3,r0,1
	bsr.n	 _poplevel
	or	 r4,r0,0
	ld	 r8,r30,20
	or.u	 r13,r0,hi16(_reg_map)
	st	 r0,r13,lo16(_reg_map)
	or.u	 r13,r0,hi16(_label_map)
	bcnd.n	 ne0,r8,@L317
	st	 r0,r13,lo16(_label_map)
	ld	 r18,r30,28
	ld.bu	 r13,r18,28
	bcnd	 ne0,r13,@L316
@L317:
	br.n	 @L320
	or	 r2,r0,0
	align	 4
@L316:
	ld	 r8,r30,36
	bcnd.n	 eq0,r8,@L320
	or	 r2,r0,r14
	bcnd	 ne0,r14,@L320
	ld	 r3,r30,36
	bsr.n	 _memory_address
	or	 r2,r0,26
	or	 r4,r0,r2
	or	 r2,r0,37
	or	 r3,r0,26
	bsr.n	 _gen_rtx
	addu	 r1,r1,@L361
@L362:
	align	 4
@L320:
@Lte3:
	subu	 r31,r30,80
	ld	 r1,r31,84
	ld	 r30,r31,80
	ld.d	 r24,r31,72
	ld.d	 r22,r31,64
	ld.d	 r20,r31,56
	ld.d	 r18,r31,48
	ld.d	 r16,r31,40
	ld.d	 r14,r31,32
	jmp.n	 r1
	addu	 r31,r31,192
	def	 @L361,@L320-@L362
	def	 @L359,@L290-@L360
	def	 @L357,@L346-@L358
	def	 @L355,@L236-@L356
	def	 @L353,@L236-@L354

	align	 8
_copy_parm_decls:
	subu	 r31,r31,64
	st	 r23,r31,36
	or	 r23,r0,r3
	st.d	 r24,r31,40
	or	 r25,r0,r2
	or	 r24,r0,0
	bcnd.n	 eq0,r25,@L371
	st	 r1,r31,48
@Ltb4:
@L373:
	ld	 r3,r25,36
	ld	 r4,r25,8
	bsr.n	 _build_decl
	or	 r2,r0,43
	bsr	 _pushdecl
	ld	 r13,r2,12
	or	 r13,r13,256
	st	 r13,r2,12
	ld	 r13,r23[r24]
	st	 r13,r2,64
	ld	 r25,r25,4
	bcnd.n	 ne0,r25,@L373
	addu	 r24,r24,1
@L371:
@Lte4:
	ld	 r1,r31,48
	ld	 r23,r31,36
	ld.d	 r24,r31,40
	jmp.n	 r1
	addu	 r31,r31,64

	align	 8
_copy_decl_tree:
	subu	 r31,r31,64
	st.d	 r22,r31,32
	or	 r22,r0,r2
	or	 r23,r0,r3
	st	 r1,r31,48
	or	 r2,r0,0
	bsr.n	 _pushlevel
	st.d	 r24,r31,40
@Ltb5:
	ld	 r25,r22,28
	bcnd	 eq0,r25,@L393
@L395:
	ld.bu	 r2,r25,12
	ld	 r3,r25,36
	bsr.n	 _build_decl
	ld	 r4,r25,8
	ld	 r13,r25,20
	or	 r24,r0,r2
	st	 r13,r24,20
	ld	 r13,r25,16
	st	 r13,r24,16
	ld	 r11,r25,64
	bcnd	 eq0,r11,@L396
	ld.hu	 r13,r0,r11
	cmp	 r13,r13,37
	bb1	 ne,r13,@L397
	ld	 r13,r11,4
	ld.hu	 r12,r0,r13
	subu	 r13,r12,38
	mask	 r13,r13,0xffff
	cmp	 r13,r13,1
	bb1.n	 ls,r13,@L398
	mask	 r13,r12,0xffff
	cmp	 r12,r13,30
	cmp	 r13,r13,32
	or	 r12,r12,r13
	extu	 r12,r12,1<eq>
	bcnd	 eq0,r12,@L397
@L398:
	br.n	 @L396
	st	 r11,r24,64
	align	 4
@L397:
	bsr.n	 _copy_rtx_and_substitute
	ld	 r2,r25,64
	st	 r2,r24,64
@L396:
	ld	 r13,r24,12
	ld	 r12,r25,12
	and.u	 r13,r13,0xff7f
	mask.u	 r12,r12,0x80
	or	 r13,r13,r12
	st	 r13,r24,12
	ld	 r12,r25,12
	and.u	 r13,r13,0xffdf
	mask.u	 r12,r12,0x20
	or	 r13,r13,r12
	st	 r13,r24,12
	ld	 r12,r25,12
	and.u	 r13,r13,0xffbf
	mask.u	 r12,r12,0x40
	or	 r13,r13,r12
	st	 r13,r24,12
	ld	 r12,r25,12
	and.u	 r13,r13,0xfffd
	mask.u	 r12,r12,0x2
	or	 r13,r13,r12
	st	 r13,r24,12
	ld	 r12,r25,12
	and	 r13,r13,0xbfff
	mask	 r12,r12,16384
	or	 r13,r13,r12
	st	 r13,r24,12
	ld	 r12,r25,12
	and.u	 r13,r13,0xfffb
	mask.u	 r12,r12,0x4
	or	 r13,r13,r12
	st	 r13,r24,12
	ld	 r12,r25,12
	and.u	 r13,r13,0xffef
	mask.u	 r12,r12,0x10
	or	 r13,r13,r12
	or	 r2,r0,r24
	or	 r13,r13,256
	bsr.n	 _pushdecl
	st	 r13,r2,12
	ld	 r25,r25,4
	bcnd	 ne0,r25,@L395
@L393:
	ld	 r25,r22,24
	bcnd.n	 eq0,r25,@L407
	or	 r3,r0,0
	or	 r2,r0,r25
@L408:
	bsr.n	 _copy_decl_tree
	addu	 r3,r23,1
	ld	 r25,r25,4
	bcnd.n	 ne0,r25,@L408
	or	 r2,r0,r25
	or	 r3,r0,0
@L407:
	cmp	 r2,r23,0
	or	 r4,r0,0
	bsr.n	 _poplevel
	extu	 r2,r2,1<gt>
@Lte5:
	ld	 r1,r31,48
	ld.d	 r24,r31,40
	ld.d	 r22,r31,32
	jmp.n	 r1
	addu	 r31,r31,64

	align	 8
_copy_rtx_and_substitute:
	subu	 r31,r31,96
	st	 r1,r31,80
	st.d	 r24,r31,72
	st.d	 r22,r31,64
	st.d	 r20,r31,56
	st.d	 r18,r31,48
	st.d	 r16,r31,40
	or	 r18,r0,r2
	bcnd.n	 ne0,r18,@L515
	st.d	 r14,r31,32
@Ltb6:
	br.n	 @L619
	or	 r2,r0,0
	align	 4
@L515:
	ld.hu	 r15,r0,r18
	ld.bu	 r23,r18,2
	subu	 r11,r15,17
	or.u	 r13,r0,hi16(@L594)
	cmp	 r12,r11,27
	bb0.n	 ls,r12,@L516
	or	 r13,r13,lo16(@L594)
	ld	 r13,r13[r11]
	jmp	 r13
	align	 4
@L594:
	word	 @L524
	word	 @L516
	word	 @L516
	word	 @L516
	word	 @L516
	word	 @L531
	word	 @L516
	word	 @L516
	word	 @L516
	word	 @L516
	word	 @L516
	word	 @L533
	word	 @L593
	word	 @L530
	word	 @L530
	word	 @L516
	word	 @L530
	word	 @L517
	word	 @L516
	word	 @L516
	word	 @L554
	word	 @L525
	word	 @L530
	word	 @L530
	word	 @L516
	word	 @L516
	word	 @L516
	word	 @L536
	align	 4
@L517:
	ld	 r25,r18,4
	cmp	 r13,r25,55
	bb1.n	 gt,r13,@L518
	or.u	 r24,r0,hi16(_reg_map)
	ld	 r13,r0,r18
	bb0.n	 (31-30),r13,@L519
	or.u	 r13,r0,hi16(_inline_target)
	ld	 r4,r13,lo16(_inline_target)
	bcnd	 ne0,r4,@L520
	bsr	 _abort
	align	 4
@L520:
	ld.bu	 r13,r4,2
	cmp	 r13,r23,r13
	bb1.n	 ne,r13,@L521
	or	 r2,r0,35
	br.n	 @L619
	or	 r2,r0,r4
	align	 4
@L521:
	br.n	 @L622
	or	 r3,r0,r23
	align	 4
@L519:
	cmp	 r13,r25,14
	bb0.n	 eq,r13,@L619
	or	 r2,r0,r18
	or.u	 r13,r0,hi16(_fp_delta)
	ld	 r3,r13,lo16(_fp_delta)
	bsr.n	 _plus_constant
	addu	 r1,r1,@L632
@L633:
	align	 4
@L518:
	ld	 r13,r24,lo16(_reg_map)
	ld	 r13,r13[r25]
	bcnd	 ne0,r13,@L523
	bsr.n	 _gen_reg_rtx
	or	 r2,r0,r23
	ld	 r13,r24,lo16(_reg_map)
	st	 r2,r13[r25]
@L523:
	ld	 r13,r24,lo16(_reg_map)
	ld	 r2,r13[r25]
	br	 @L619
	align	 4
@L524:
	or.u	 r13,r0,hi16(_label_map)
	ld	 r12,r18,16
	ld	 r13,r13,lo16(_label_map)
	ld	 r2,r13[r12]
	br	 @L619
	align	 4
@L525:
	bsr.n	 _rtx_alloc
	or	 r2,r0,38
	or	 r22,r0,r2
	st.b	 r23,r22,2
	ld	 r13,r18,4
	or.u	 r12,r0,hi16(_label_map)
	ld	 r11,r13,16
	ld	 r13,r12,lo16(_label_map)
	ld	 r13,r13[r11]
	br.n	 @L619
	st	 r13,r2,4
	align	 4
@L530:
	br.n	 @L619
	or	 r2,r0,r18
	align	 4
@L531:
	or.u	 r13,r0,hi16(_orig_asm_operands_vector)
	ld	 r12,r18,16
	ld	 r13,r13,lo16(_orig_asm_operands_vector)
	cmp	 r13,r13,r12
	bb1	 ne,r13,@L516
	bsr.n	 _rtx_alloc
	or	 r2,r0,22
	ld	 r13,r18,4
	or	 r22,r0,r2
	st	 r13,r22,4
	ld	 r13,r18,8
	st	 r13,r22,8
	or.u	 r13,r0,hi16(_copy_asm_operands_vector)
	ld	 r12,r18,12
	ld	 r13,r13,lo16(_copy_asm_operands_vector)
	st	 r12,r22,12
	st	 r13,r22,16
	ld	 r13,r18,20
	br.n	 @L619
	st	 r13,r2,20
	align	 4
@L533:
	or.u	 r13,r0,hi16(_optimize)
	ld	 r13,r13,lo16(_optimize)
	bcnd.n	 eq0,r13,@L535
	or.u	 r13,r0,hi16(_flag_no_function_cse)
	ld	 r13,r13,lo16(_flag_no_function_cse)
	bcnd	 eq0,r13,@L516
@L535:
	ld	 r13,r18,4
	ld.bu	 r24,r18,2
	ld	 r2,r13,4
	bsr.n	 _copy_rtx_and_substitute
	ld.bu	 r25,r13,2
	or	 r4,r0,r2
	or	 r2,r0,37
	bsr.n	 _gen_rtx
	or	 r3,r0,r25
	or	 r25,r0,r2
	bsr.n	 _copy_rtx_and_substitute
	ld	 r2,r18,8
	or	 r5,r0,r2
	or	 r2,r0,28
	br.n	 @L623
	or	 r3,r0,r24
	align	 4
@L536:
	or.u	 r13,r0,hi16(_frame_pointer_rtx)
	ld	 r3,r18,4
	ld	 r2,r13,lo16(_frame_pointer_rtx)
	cmp	 r12,r3,r2
	bb0	 ne,r12,@L540
	ld	 r13,r18,8
	cmp	 r13,r13,r2
	bb1	 ne,r13,@L537
	bb0.n	 ne,r12,@L540
	or.u	 r13,r0,hi16(_arg_pointer_rtx)
	ld	 r13,r13,lo16(_arg_pointer_rtx)
	cmp	 r13,r3,r13
	bb1.n	 ne,r13,@L539
	or	 r22,r0,r3
@L540:
	ld	 r22,r18,8
@L539:
	ld.hu	 r13,r0,r22
	cmp	 r13,r13,30
	bb1	 ne,r13,@L542
	ld	 r5,r22,4
	bcnd.n	 le0,r5,@L543
	or.u	 r13,r0,hi16(_parm_map)
	ld	 r12,r13,lo16(_parm_map)
	ext	 r13,r5,0<2>
	ld	 r22,r12[r13]
	ld	 r2,r22,4
	br	 @L619
	align	 4
@L543:
	or.u	 r13,r0,hi16(_fp_delta)
	or	 r2,r0,30
	ld	 r4,r13,lo16(_fp_delta)
	or	 r3,r0,4
	or.u	 r13,r0,hi16(_frame_pointer_rtx)
	addu	 r4,r5,r4
	bsr.n	 _gen_rtx
	ld	 r25,r13,lo16(_frame_pointer_rtx)
	or	 r5,r0,r2
	or	 r2,r0,44
	or	 r3,r0,r23
@L623:
	or	 r4,r0,r25
	bsr.n	 _gen_rtx
	addu	 r1,r1,@L634
@L635:
	align	 4
@L542:
	bsr.n	 _copy_rtx_and_substitute
	or	 r2,r0,r22
	or	 r22,r0,r2
	or	 r2,r0,44
	or.u	 r13,r0,hi16(_frame_pointer_rtx)
	or	 r3,r0,r23
	ld	 r4,r13,lo16(_frame_pointer_rtx)
	bsr.n	 _gen_rtx
	or	 r5,r0,r22
	or	 r3,r0,r2
	bsr.n	 _force_reg
	or	 r2,r0,r23
	or.u	 r13,r0,hi16(_fp_delta)
	ld	 r3,r13,lo16(_fp_delta)
	bsr.n	 _plus_constant
	addu	 r1,r1,@L636
@L637:
	align	 4
@L537:
	bsr.n	 _reg_mentioned_p
	or	 r3,r0,r18
	bcnd	 eq0,r2,@L546
	or	 r2,r0,r23
	bsr.n	 _memory_address_p
	or	 r3,r0,r18
	bcnd	 eq0,r2,@L546
	ld	 r2,r18,4
	ld.hu	 r13,r0,r2
	cmp	 r13,r13,30
	bb1	 ne,r13,@L548
	bsr.n	 _copy_rtx_and_substitute
	ld	 r2,r18,8
	ld	 r13,r18,4
	ld	 r3,r13,4
	bsr.n	 _plus_constant
	addu	 r1,r1,@L638
@L639:
	align	 4
@L548:
	ld	 r13,r18,8
	ld.hu	 r13,r0,r13
	cmp	 r13,r13,30
	bb1	 ne,r13,@L550
	bsr	 _copy_rtx_and_substitute
	ld	 r13,r18,8
	ld	 r3,r13,4
	bsr.n	 _plus_constant
	addu	 r1,r1,@L640
@L641:
	align	 4
@L550:
	bsr.n	 _copy_rtx_and_substitute
	ld.bu	 r24,r18,2
	or	 r25,r0,r2
	bsr.n	 _copy_rtx_and_substitute
	ld	 r2,r18,8
	or	 r5,r0,r2
	or	 r2,r0,44
	or	 r3,r0,r24
	bsr.n	 _gen_rtx
	or	 r4,r0,r25
@L624:
	or	 r4,r0,r2
	or	 r2,r0,r23
	or	 r3,r0,r4
	bsr.n	 _memory_address
	addu	 r1,r1,@L642
@L643:
	align	 4
@L546:
	ld	 r2,r18,4
	bsr.n	 _copy_rtx_and_substitute
	ld.bu	 r24,r18,2
	or	 r25,r0,r2
	bsr.n	 _copy_rtx_and_substitute
	ld	 r2,r18,8
	or	 r5,r0,r2
	or	 r2,r0,44
	or	 r3,r0,r24
	bsr.n	 _gen_rtx
	or	 r4,r0,r25
@L625:
	or	 r4,r0,r2
	br.n	 @L619
	or	 r2,r0,r4
	align	 4
@L554:
	or.u	 r13,r0,hi16(_frame_pointer_rtx)
	ld	 r22,r18,4
	ld	 r2,r13,lo16(_frame_pointer_rtx)
	cmp	 r13,r22,r2
	bb0.n	 ne,r13,@L556
	or.u	 r13,r0,hi16(_arg_pointer_rtx)
	ld	 r13,r13,lo16(_arg_pointer_rtx)
	cmp	 r13,r22,r13
	bb1	 ne,r13,@L555
@L556:
	or.u	 r13,r0,hi16(_fp_delta)
	ld	 r3,r13,lo16(_fp_delta)
	br	 @L626
	align	 4
@L555:
	ld.hu	 r13,r0,r22
	cmp	 r13,r13,63
	bb1.n	 ne,r13,@L630
	or	 r2,r0,r23
	or.u	 r13,r0,hi16(_stack_pointer_rtx)
	ld	 r12,r22,4
	ld	 r13,r13,lo16(_stack_pointer_rtx)
	cmp	 r12,r12,r13
	bb1	 ne,r12,@L557
	or	 r2,r0,r22
	bsr.n	 _copy_rtx_and_substitute
	addu	 r1,r1,@L644
@L645:
	align	 4
@L557:
@L630:
	bsr.n	 _memory_address_p
	or	 r3,r0,r22
	bcnd.n	 ne0,r2,@L558
	or	 r2,r0,r22
	bsr.n	 _copy_address
	addu	 r1,r1,@L646
@L647:
	align	 4
@L558:
	ld.hu	 r13,r0,r22
	cmp	 r13,r13,44
	bb1.n	 ne,r13,@L559
	or.u	 r13,r0,hi16(_frame_pointer_rtx)
	ld	 r12,r22,4
	ld	 r2,r13,lo16(_frame_pointer_rtx)
	cmp	 r11,r12,r2
	bb0	 ne,r11,@L563
	ld	 r13,r22,8
	cmp	 r13,r13,r2
	bb1	 ne,r13,@L560
	bb0.n	 ne,r11,@L563
	or.u	 r13,r0,hi16(_arg_pointer_rtx)
	ld	 r13,r13,lo16(_arg_pointer_rtx)
	cmp	 r13,r12,r13
	bb1	 ne,r13,@L562
@L563:
	ld	 r2,r22,4
	ld	 r22,r22,8
	br	 @L564
	align	 4
@L562:
	or	 r22,r0,r12
@L564:
	ld.hu	 r13,r0,r22
	cmp	 r13,r13,30
	bb1.n	 ne,r13,@L565
	or.u	 r13,r0,hi16(_arg_pointer_rtx)
	ld	 r13,r13,lo16(_arg_pointer_rtx)
	cmp	 r13,r2,r13
	ld	 r24,r22,4
	bb1.n	 ne,r13,@L631
	or.u	 r13,r0,hi16(_fp_delta)
	or.u	 r10,r0,hi16(_first_parm_offset)
	ld	 r13,r10,lo16(_first_parm_offset)
	cmp	 r13,r24,r13
	bb0	 ge,r13,@L566
	bcnd.n	 ge0,r24,@L567
	or	 r3,r0,r24
	addu	 r3,r24,3
@L567:
	or.u	 r11,r0,hi16(_parm_map)
	ext	 r3,r3,0<2>
	ld	 r13,r11,lo16(_parm_map)
	or	 r2,r0,r3
	mak	 r12,r2,0<2>
	ld	 r13,r13[r2]
	bcnd.n	 ne0,r13,@L570
	subu	 r3,r24,r12
	or	 r12,r0,r11
@L571:
	ld	 r13,r10,lo16(_first_parm_offset)
	bcnd.n	 ge0,r13,@L573
	subu	 r2,r2,1
	addu	 r13,r13,3
@L573:
	ext	 r13,r13,0<2>
	cmp	 r13,r2,r13
	bb1	 ge,r13,@L572
	bsr	 _abort
	align	 4
@L572:
	ld	 r13,r12,lo16(_parm_map)
	ld	 r13,r13[r2]
	bcnd.n	 eq0,r13,@L571
	addu	 r3,r3,4
@L570:
	or.u	 r13,r0,hi16(_parm_map)
	ld	 r13,r13,lo16(_parm_map)
	ld	 r22,r13[r2]
	or.u	 r13,r0,hi16(_mode_size)
	ld.bu	 r12,r22,2
	or	 r10,r13,lo16(_mode_size)
	ld	 r11,r10[r12]
	cmp	 r13,r11,3
	bb1.n	 gt,r13,@L575
	subu	 r13,r3,4
	addu	 r3,r13,r11
@L575:
	ld.bu	 r13,r22,2
	cmp	 r13,r13,r23
	bb0.n	 ne,r13,@L619
	or	 r2,r0,r22
	bcnd	 eq0,r12,@L619
	ld.hu	 r12,r0,r22
	cmp	 r13,r12,37
	bb1.n	 ne,r13,@L577
	cmp	 r13,r12,34
	bsr.n	 _plus_constant
	ld	 r2,r22,4
	or	 r4,r0,r2
	br.n	 @L628
	or	 r2,r0,r22
	align	 4
@L577:
	bb1	 ne,r13,@L578
	ld	 r13,r10[r23]
	addu	 r13,r3,r13
	cmp	 r13,r13,r11
	bb0.n	 ne,r13,@L579
	or	 r2,r0,35
	bsr	 _abort
	align	 4
@L579:
	or	 r3,r0,r23
	or	 r4,r0,r22
@L622:
	or	 r5,r0,0
	bsr.n	 _gen_rtx
	addu	 r1,r1,@L648
@L649:
	align	 4
@L578:
	bsr	 _abort
	align	 4
@L566:
	or.u	 r13,r0,hi16(_fp_delta)
@L631:
	or	 r2,r0,30
	ld	 r4,r13,lo16(_fp_delta)
	or	 r3,r0,4
	or.u	 r13,r0,hi16(_frame_pointer_rtx)
	addu	 r4,r24,r4
	bsr.n	 _gen_rtx
	ld	 r25,r13,lo16(_frame_pointer_rtx)
	or	 r5,r0,r2
	or	 r2,r0,44
	or	 r3,r0,4
	bsr.n	 _gen_rtx
	or	 r4,r0,r25
	or	 r4,r0,r2
	or	 r2,r0,4
	bsr.n	 _memory_address_p
	or	 r3,r0,r4
	bcnd.n	 ne0,r2,@L565
	or.u	 r13,r0,hi16(_inline_fp_rtx)
	ld	 r2,r13,lo16(_inline_fp_rtx)
	or	 r3,r0,r24
@L626:
	bsr	 _plus_constant
@L627:
	or	 r4,r0,r2
	or	 r2,r0,37
	or	 r3,r0,r23
	bsr.n	 _gen_rtx
	addu	 r1,r1,@L650
@L651:
	align	 4
@L565:
	bsr.n	 _copy_rtx_and_substitute
	or	 r2,r0,r22
	or	 r22,r0,r2
	or	 r2,r0,44
	or.u	 r13,r0,hi16(_frame_pointer_rtx)
	or	 r3,r0,4
	ld	 r4,r13,lo16(_frame_pointer_rtx)
	bsr.n	 _gen_rtx
	or	 r5,r0,r22
	or.u	 r13,r0,hi16(_fp_delta)
	bsr.n	 _plus_constant
	ld	 r3,r13,lo16(_fp_delta)
	or	 r4,r0,r2
	or	 r2,r0,4
	or	 r3,r0,r4
	bsr.n	 _memory_address
	addu	 r1,r1,@L652
@L653:
	align	 4
@L560:
	bsr.n	 _reg_mentioned_p
	or	 r3,r0,r22
	bcnd	 eq0,r2,@L582
	ld	 r2,r22,4
	ld.hu	 r13,r0,r2
	cmp	 r13,r13,30
	bb1	 ne,r13,@L583
	bsr.n	 _copy_rtx_and_substitute
	ld	 r2,r22,8
	ld	 r13,r22,4
	ld	 r3,r13,4
	bsr.n	 _plus_constant
	addu	 r1,r1,@L654
@L655:
	align	 4
@L583:
	ld	 r13,r22,8
	ld.hu	 r13,r0,r13
	cmp	 r13,r13,30
	bb1	 ne,r13,@L585
	bsr	 _copy_rtx_and_substitute
	ld	 r13,r22,8
	ld	 r3,r13,4
	bsr.n	 _plus_constant
	addu	 r1,r1,@L656
@L657:
	align	 4
@L585:
	bsr.n	 _copy_rtx_and_substitute
	ld.bu	 r24,r22,2
	or	 r25,r0,r2
	bsr.n	 _copy_rtx_and_substitute
	ld	 r2,r22,8
	or	 r5,r0,r2
	or	 r2,r0,44
	or	 r3,r0,r24
	or	 r4,r0,r25
	bsr.n	 _gen_rtx
	addu	 r1,r1,@L658
@L659:
	align	 4
@L582:
	ld	 r12,r22,8
	ld.hu	 r13,r0,r12
	cmp	 r13,r13,30
	bb1	 ne,r13,@L588
	bsr.n	 _copy_rtx_and_substitute
	ld	 r2,r22,4
	ld	 r13,r22,8
	ld	 r3,r13,4
	bsr.n	 _plus_constant
	addu	 r1,r1,@L660
@L661:
	align	 4
@L588:
	ld	 r2,r22,4
	ld.hu	 r13,r0,r2
	cmp	 r13,r13,30
	bb1	 ne,r13,@L590
	bsr.n	 _copy_rtx_and_substitute
	or	 r2,r0,r12
	ld	 r13,r22,4
	ld	 r3,r13,4
	bsr.n	 _plus_constant
	addu	 r1,r1,@L662
@L663:
	align	 4
@L590:
	bsr	 _copy_rtx_and_substitute
	or	 r25,r0,r2
	bsr.n	 _copy_rtx_and_substitute
	ld	 r2,r22,8
	ld.bu	 r3,r22,2
	or	 r5,r0,r2
	or	 r2,r0,44
	or	 r4,r0,r25
	bsr.n	 _gen_rtx
	addu	 r1,r1,@L664
@L665:
	align	 4
@L559:
	bsr.n	 _copy_rtx_and_substitute
	or	 r2,r0,r22
@L629:
	or	 r4,r0,r2
	or	 r2,r0,r18
@L628:
	or	 r3,r0,r23
	bsr.n	 _change_address
	addu	 r1,r1,@L666
@L667:
	align	 4
@L593:
	bsr	 _abort
	align	 4
@L516:
	bsr.n	 _rtx_alloc
	or	 r2,r0,r15
	or	 r22,r0,r2
	st.b	 r23,r22,2
	ld	 r13,r0,r22
	ld	 r12,r0,r18
	and	 r13,r13,0xfff7
	mask	 r12,r12,8
	or	 r13,r13,r12
	st	 r13,r0,r22
	ld	 r12,r0,r18
	and	 r13,r13,0xffef
	mask	 r12,r12,16
	or	 r13,r13,r12
	st	 r13,r0,r22
	ld	 r12,r0,r18
	and	 r13,r13,0xffdf
	mask	 r12,r12,32
	or	 r13,r13,r12
	st	 r13,r0,r22
	or.u	 r13,r0,hi16(_rtx_format)
	or.u	 r12,r0,hi16(_rtx_length)
	ld.hu	 r11,r0,r22
	or	 r10,r12,lo16(_rtx_length)
	or	 r13,r13,lo16(_rtx_format)
	ld	 r12,r10[r11]
	ld	 r16,r13[r11]
	bcnd.n	 le0,r12,@L597
	or	 r17,r0,0
	or	 r14,r0,r10
	or	 r20,r0,r18
	or	 r21,r0,r22
@L599:
	ld.b	 r12,r0,r16
	cmp	 r13,r12,101
	bb0.n	 ne,r13,@L602
	addu	 r16,r16,1
	bb1.n	 gt,r13,@L615
	cmp	 r13,r12,115
	cmp	 r13,r12,48
	bb1.n	 eq,r13,@L598
	cmp	 r13,r12,69
	bb0	 ne,r13,@L604
	br	 @L613
	align	 4
@L615:
	bb0	 ne,r13,@L612
	bb1.n	 gt,r13,@L616
	cmp	 r13,r12,117
	cmp	 r13,r12,105
	bb0	 ne,r13,@L612
	br	 @L613
	align	 4
@L616:
	bb0.n	 ne,r13,@L603
	or.u	 r12,r0,hi16(_insn_map)
	br	 @L613
	align	 4
@L602:
	bsr.n	 _copy_rtx_and_substitute
	ld	 r2,r20,4
	br.n	 @L598
	st	 r2,r21,4
	align	 4
@L603:
	ld	 r13,r20,4
	ld	 r11,r13,4
	ld	 r13,r12,lo16(_insn_map)
	ld	 r13,r13[r11]
	br.n	 @L598
	st	 r13,r21,4
	align	 4
@L604:
	ld	 r13,r20,4
	st	 r13,r21,4
	ld	 r2,r20,4
	bcnd	 eq0,r2,@L598
	ld	 r2,r0,r2
	bcnd	 eq0,r2,@L598
	bsr.n	 _rtvec_alloc
	or	 r24,r0,0
	st	 r2,r21,4
	ld	 r13,r0,r2
	bcnd.n	 eq0,r13,@L598
	or	 r19,r0,r20
	or	 r23,r0,r21
	or	 r25,r0,0
@L609:
	ld	 r13,r19,4
	addu	 r13,r13,r25
	bsr.n	 _copy_rtx_and_substitute
	ld	 r2,r13,4
	ld	 r13,r23,4
	addu	 r13,r13,r25
	st	 r2,r13,4
	ld	 r13,r23,4
	ld	 r13,r0,r13
	addu	 r24,r24,1
	cmp	 r13,r24,r13
	bb1.n	 lo,r13,@L609
	addu	 r25,r25,4
	br	 @L598
	align	 4
@L612:
	ld	 r13,r20,4
	br.n	 @L598
	st	 r13,r21,4
	align	 4
@L613:
	bsr	 _abort
	align	 4
@L598:
	ld.hu	 r13,r0,r22
	ld	 r13,r14[r13]
	addu	 r17,r17,1
	addu	 r20,r20,4
	cmp	 r13,r17,r13
	bb1.n	 lt,r13,@L599
	addu	 r21,r21,4
@L597:
	cmp	 r13,r15,22
	bb0.n	 eq,r13,@L619
	or	 r2,r0,r22
	or.u	 r12,r0,hi16(_orig_asm_operands_vector)
	ld	 r13,r12,lo16(_orig_asm_operands_vector)
	bcnd	 ne0,r13,@L619
	ld	 r13,r18,16
	st	 r13,r12,lo16(_orig_asm_operands_vector)
	ld	 r12,r22,16
	or.u	 r13,r0,hi16(_copy_asm_operands_vector)
	st	 r12,r13,lo16(_copy_asm_operands_vector)
	or	 r2,r0,r22
@L619:
@Lte6:
	ld	 r1,r31,80
	ld.d	 r24,r31,72
	ld.d	 r22,r31,64
	ld.d	 r20,r31,56
	ld.d	 r18,r31,48
	ld.d	 r16,r31,40
	ld.d	 r14,r31,32
	jmp.n	 r1
	addu	 r31,r31,96
	def	 @L666,@L619-@L667
	def	 @L664,@L629-@L665
	def	 @L662,@L629-@L663
	def	 @L660,@L629-@L661
	def	 @L658,@L629-@L659
	def	 @L656,@L629-@L657
	def	 @L654,@L629-@L655
	def	 @L652,@L629-@L653
	def	 @L650,@L619-@L651
	def	 @L648,@L619-@L649
	def	 @L646,@L627-@L647
	def	 @L644,@L627-@L645
	def	 @L642,@L625-@L643
	def	 @L640,@L624-@L641
	def	 @L638,@L624-@L639
	def	 @L636,@L619-@L637
	def	 @L634,@L619-@L635
	def	 @L632,@L619-@L633

	align	 8
_copy_address:
	subu	 r31,r31,144
	st	 r1,r31,80
	st.d	 r24,r31,72
	st.d	 r22,r31,64
	st.d	 r20,r31,56
	st.d	 r18,r31,48
	st.d	 r16,r31,40
	or	 r19,r0,r2
	bcnd.n	 ne0,r19,@L669
	st.d	 r14,r31,32
@Ltb7:
@L1243:
	br.n	 @L1232
	or	 r2,r0,0
	align	 4
@L669:
	ld.hu	 r2,r0,r19
	ld.bu	 r25,r19,2
	subu	 r11,r2,17
	or.u	 r13,r0,hi16(@L998)
	cmp	 r12,r11,27
	bb0.n	 ls,r12,@L670
	or	 r13,r13,lo16(@L998)
	ld	 r13,r13[r11]
	jmp	 r13
	align	 4
@L998:
	word	 @L887
	word	 @L670
	word	 @L670
	word	 @L670
	word	 @L670
	word	 @L670
	word	 @L670
	word	 @L670
	word	 @L670
	word	 @L670
	word	 @L670
	word	 @L670
	word	 @L670
	word	 @L997
	word	 @L997
	word	 @L670
	word	 @L997
	word	 @L671
	word	 @L670
	word	 @L670
	word	 @L780
	word	 @L887
	word	 @L997
	word	 @L997
	word	 @L670
	word	 @L670
	word	 @L670
	word	 @L778
	align	 4
@L671:
	ld	 r13,r19,4
	cmp	 r13,r13,14
	bb0	 ne,r13,@L672
	bcnd	 eq0,r19,@L1243
	ld.hu	 r15,r0,r19
	ld.bu	 r23,r19,2
	subu	 r11,r15,17
	or.u	 r13,r0,hi16(@L753)
	cmp	 r12,r11,27
	bb0.n	 ls,r12,@L675
	or	 r13,r13,lo16(@L753)
	ld	 r13,r13[r11]
	jmp	 r13
	align	 4
@L753:
	word	 @L683
	word	 @L675
	word	 @L675
	word	 @L675
	word	 @L675
	word	 @L690
	word	 @L675
	word	 @L675
	word	 @L675
	word	 @L675
	word	 @L675
	word	 @L692
	word	 @L752
	word	 @L997
	word	 @L997
	word	 @L675
	word	 @L997
	word	 @L676
	word	 @L675
	word	 @L675
	word	 @L713
	word	 @L684
	word	 @L997
	word	 @L997
	word	 @L675
	word	 @L675
	word	 @L675
	word	 @L695
	align	 4
@L676:
	ld	 r25,r19,4
	cmp	 r13,r25,55
	bb1.n	 gt,r13,@L1286
	or.u	 r24,r0,hi16(_reg_map)
	ld	 r13,r0,r19
	bb0.n	 (31-30),r13,@L678
	or.u	 r13,r0,hi16(_inline_target)
	ld	 r4,r13,lo16(_inline_target)
	bcnd	 ne0,r4,@L679
	bsr	 _abort
	align	 4
@L679:
	ld.bu	 r13,r4,2
	cmp	 r13,r23,r13
	bb0.n	 ne,r13,@L1285
	or	 r2,r0,35
	or	 r3,r0,r23
@L1250:
	or	 r5,r0,0
	bsr.n	 _gen_rtx
	addu	 r1,r1,@L1301
@L1302:
	align	 4
@L678:
	cmp	 r13,r25,14
	bb0.n	 ne,r13,@L1287
	or.u	 r13,r0,hi16(_fp_delta)
	br.n	 @L1232
	or	 r2,r0,r19
	align	 4
@L677:
@L1286:
	ld	 r13,r24,lo16(_reg_map)
	ld	 r13,r13[r25]
	bcnd	 ne0,r13,@L682
	bsr.n	 _gen_reg_rtx
	or	 r2,r0,r23
	ld	 r13,r24,lo16(_reg_map)
	st	 r2,r13[r25]
@L682:
	ld	 r13,r24,lo16(_reg_map)
	ld	 r2,r13[r25]
	br	 @L1232
	align	 4
@L683:
	or.u	 r13,r0,hi16(_label_map)
	ld	 r12,r19,16
	ld	 r13,r13,lo16(_label_map)
	ld	 r2,r13[r12]
	br	 @L1232
	align	 4
@L684:
	bsr.n	 _rtx_alloc
	or	 r2,r0,38
	or	 r22,r0,r2
	st.b	 r23,r22,2
	ld	 r13,r19,4
	or.u	 r12,r0,hi16(_label_map)
	ld	 r11,r13,16
	ld	 r13,r12,lo16(_label_map)
	ld	 r13,r13[r11]
	br.n	 @L1232
	st	 r13,r2,4
	align	 4
@L690:
	or.u	 r13,r0,hi16(_orig_asm_operands_vector)
	ld	 r12,r19,16
	ld	 r13,r13,lo16(_orig_asm_operands_vector)
	cmp	 r13,r13,r12
	bb1	 ne,r13,@L675
@L1263:
	bsr.n	 _rtx_alloc
	or	 r2,r0,22
	ld	 r13,r19,4
	or	 r22,r0,r2
	st	 r13,r22,4
	ld	 r13,r19,8
	st	 r13,r22,8
	or.u	 r13,r0,hi16(_copy_asm_operands_vector)
	ld	 r12,r19,12
	ld	 r13,r13,lo16(_copy_asm_operands_vector)
	st	 r12,r22,12
	st	 r13,r22,16
	ld	 r13,r19,20
	br.n	 @L1232
	st	 r13,r2,20
	align	 4
@L692:
	or.u	 r13,r0,hi16(_optimize)
	ld	 r13,r13,lo16(_optimize)
	bcnd.n	 eq0,r13,@L694
	or.u	 r13,r0,hi16(_flag_no_function_cse)
	ld	 r13,r13,lo16(_flag_no_function_cse)
	bcnd	 eq0,r13,@L675
@L694:
	ld	 r13,r19,4
	ld.bu	 r24,r19,2
	ld	 r2,r13,4
	bsr.n	 _copy_rtx_and_substitute
	ld.bu	 r25,r13,2
	or	 r4,r0,r2
	or	 r2,r0,37
	bsr.n	 _gen_rtx
	or	 r3,r0,r25
	or	 r25,r0,r2
	bsr.n	 _copy_rtx_and_substitute
	ld	 r2,r19,8
	or	 r5,r0,r2
	or	 r2,r0,28
	or	 r3,r0,r24
@L1245:
	or	 r4,r0,r25
	bsr.n	 _gen_rtx
	addu	 r1,r1,@L1303
@L1304:
	align	 4
@L695:
	or.u	 r13,r0,hi16(_frame_pointer_rtx)
	ld	 r3,r19,4
	ld	 r2,r13,lo16(_frame_pointer_rtx)
	cmp	 r12,r3,r2
	bb0	 ne,r12,@L699
	ld	 r13,r19,8
	cmp	 r13,r13,r2
	bb1	 ne,r13,@L696
	bb0.n	 ne,r12,@L699
	or.u	 r13,r0,hi16(_arg_pointer_rtx)
	ld	 r13,r13,lo16(_arg_pointer_rtx)
	cmp	 r13,r3,r13
	bb1.n	 ne,r13,@L698
	or	 r22,r0,r3
@L699:
	ld	 r22,r19,8
@L698:
	ld.hu	 r13,r0,r22
	cmp	 r13,r13,30
	bb1	 ne,r13,@L701
	ld	 r5,r22,4
	bcnd.n	 le0,r5,@L702
	or.u	 r13,r0,hi16(_fp_delta)
	or.u	 r13,r0,hi16(_parm_map)
@L1293:
	ld	 r12,r13,lo16(_parm_map)
	ext	 r13,r5,0<2>
	ld	 r22,r12[r13]
	ld	 r2,r22,4
	br	 @L1232
	align	 4
@L702:
	or	 r2,r0,30
	ld	 r4,r13,lo16(_fp_delta)
	or	 r3,r0,4
	or.u	 r13,r0,hi16(_frame_pointer_rtx)
	addu	 r4,r5,r4
	bsr.n	 _gen_rtx
	ld	 r25,r13,lo16(_frame_pointer_rtx)
	or	 r5,r0,r2
	or	 r2,r0,44
	br.n	 @L1245
	or	 r3,r0,r23
	align	 4
@L701:
	bsr.n	 _copy_rtx_and_substitute
	or	 r2,r0,r22
	or	 r22,r0,r2
	or	 r2,r0,44
	or.u	 r13,r0,hi16(_frame_pointer_rtx)
	or	 r3,r0,r23
	ld	 r4,r13,lo16(_frame_pointer_rtx)
	bsr.n	 _gen_rtx
	or	 r5,r0,r22
	or	 r3,r0,r2
	or	 r2,r0,r23
	bsr.n	 _force_reg
	addu	 r1,r1,@L1305
@L1306:
	align	 4
@L696:
	bsr.n	 _reg_mentioned_p
	or	 r3,r0,r19
	bcnd	 eq0,r2,@L705
	or	 r2,r0,r23
	bsr.n	 _memory_address_p
	or	 r3,r0,r19
	bcnd	 eq0,r2,@L705
	ld	 r2,r19,4
	ld.hu	 r13,r0,r2
	cmp	 r13,r13,30
	bb1	 ne,r13,@L707
	bsr.n	 _copy_rtx_and_substitute
	ld	 r2,r19,8
	ld	 r13,r19,4
	ld	 r3,r13,4
	bsr.n	 _plus_constant
	addu	 r1,r1,@L1307
@L1308:
	align	 4
@L707:
	ld	 r13,r19,8
	ld.hu	 r13,r0,r13
	cmp	 r13,r13,30
	bb1	 ne,r13,@L709
	bsr	 _copy_rtx_and_substitute
	ld	 r13,r19,8
	ld	 r3,r13,4
	bsr.n	 _plus_constant
	addu	 r1,r1,@L1309
@L1310:
	align	 4
@L709:
	bsr.n	 _copy_rtx_and_substitute
	ld.bu	 r24,r19,2
	or	 r25,r0,r2
	bsr.n	 _copy_rtx_and_substitute
	ld	 r2,r19,8
	or	 r5,r0,r2
	or	 r2,r0,44
	or	 r3,r0,r24
	bsr.n	 _gen_rtx
	or	 r4,r0,r25
@L1247:
	or	 r4,r0,r2
	or	 r2,r0,r23
	or	 r3,r0,r4
	bsr.n	 _memory_address
	addu	 r1,r1,@L1311
@L1312:
	align	 4
@L705:
	ld	 r2,r19,4
	bsr.n	 _copy_rtx_and_substitute
	ld.bu	 r24,r19,2
	or	 r25,r0,r2
	bsr.n	 _copy_rtx_and_substitute
	ld	 r2,r19,8
	or	 r5,r0,r2
	or	 r2,r0,44
	or	 r3,r0,r24
	bsr.n	 _gen_rtx
	or	 r4,r0,r25
@L1248:
	or	 r4,r0,r2
@L1285:
	br.n	 @L1232
	or	 r2,r0,r4
	align	 4
@L713:
	or.u	 r13,r0,hi16(_frame_pointer_rtx)
	ld	 r22,r19,4
	ld	 r2,r13,lo16(_frame_pointer_rtx)
	cmp	 r13,r22,r2
	bb0.n	 ne,r13,@L715
	or.u	 r13,r0,hi16(_arg_pointer_rtx)
	ld	 r13,r13,lo16(_arg_pointer_rtx)
	cmp	 r13,r22,r13
	bb1	 ne,r13,@L714
@L715:
	or.u	 r13,r0,hi16(_fp_delta)
	ld	 r3,r13,lo16(_fp_delta)
@L1251:
	bsr	 _plus_constant
@L1249:
	or	 r4,r0,r2
	or	 r2,r0,37
	or	 r3,r0,r23
	bsr.n	 _gen_rtx
	addu	 r1,r1,@L1313
@L1314:
	align	 4
@L714:
	ld.hu	 r13,r0,r22
	cmp	 r13,r13,63
	bb1.n	 ne,r13,@L1288
	or	 r2,r0,r23
	or.u	 r13,r0,hi16(_stack_pointer_rtx)
	ld	 r12,r22,4
	ld	 r13,r13,lo16(_stack_pointer_rtx)
	cmp	 r12,r12,r13
	bb1	 ne,r12,@L716
	or	 r2,r0,r22
	bsr.n	 _copy_rtx_and_substitute
	subu	 r1,r1,@L1315
@L1316:
	align	 4
@L716:
@L1288:
	bsr.n	 _memory_address_p
	or	 r3,r0,r22
	bcnd.n	 ne0,r2,@L717
	or	 r2,r0,r22
	bsr.n	 _copy_address
	subu	 r1,r1,@L1317
@L1318:
	align	 4
@L717:
	ld.hu	 r13,r0,r22
	cmp	 r13,r13,44
	bb1.n	 ne,r13,@L718
	or.u	 r13,r0,hi16(_frame_pointer_rtx)
	ld	 r12,r22,4
	ld	 r2,r13,lo16(_frame_pointer_rtx)
	cmp	 r11,r12,r2
	bb0	 ne,r11,@L722
	ld	 r13,r22,8
	cmp	 r13,r13,r2
	bb1	 ne,r13,@L719
	bb0.n	 ne,r11,@L722
	or.u	 r13,r0,hi16(_arg_pointer_rtx)
	ld	 r13,r13,lo16(_arg_pointer_rtx)
	cmp	 r13,r12,r13
	bb1	 ne,r13,@L721
@L722:
	ld	 r2,r22,4
	ld	 r22,r22,8
	br	 @L723
	align	 4
@L721:
	or	 r22,r0,r12
@L723:
	ld.hu	 r13,r0,r22
	cmp	 r13,r13,30
	bb1.n	 ne,r13,@L724
	or.u	 r13,r0,hi16(_arg_pointer_rtx)
	ld	 r13,r13,lo16(_arg_pointer_rtx)
	cmp	 r13,r2,r13
	ld	 r24,r22,4
	bb1.n	 ne,r13,@L1289
	or.u	 r13,r0,hi16(_fp_delta)
	or.u	 r10,r0,hi16(_first_parm_offset)
	ld	 r13,r10,lo16(_first_parm_offset)
	cmp	 r13,r24,r13
	bb0	 ge,r13,@L725
	bcnd.n	 ge0,r24,@L726
	or	 r3,r0,r24
	addu	 r3,r24,3
@L726:
	or.u	 r11,r0,hi16(_parm_map)
	ext	 r3,r3,0<2>
	ld	 r13,r11,lo16(_parm_map)
	or	 r2,r0,r3
	mak	 r12,r2,0<2>
	ld	 r13,r13[r2]
	bcnd.n	 ne0,r13,@L729
	subu	 r3,r24,r12
	or	 r12,r0,r11
@L730:
	ld	 r13,r10,lo16(_first_parm_offset)
	bcnd.n	 ge0,r13,@L732
	subu	 r2,r2,1
	addu	 r13,r13,3
@L732:
	ext	 r13,r13,0<2>
	cmp	 r13,r2,r13
	bb1	 ge,r13,@L731
	bsr	 _abort
	align	 4
@L731:
	ld	 r13,r12,lo16(_parm_map)
	ld	 r13,r13[r2]
	bcnd.n	 eq0,r13,@L730
	addu	 r3,r3,4
@L729:
	or.u	 r13,r0,hi16(_parm_map)
	ld	 r13,r13,lo16(_parm_map)
	ld	 r22,r13[r2]
	or.u	 r13,r0,hi16(_mode_size)
	ld.bu	 r12,r22,2
	or	 r10,r13,lo16(_mode_size)
	ld	 r11,r10[r12]
	cmp	 r13,r11,3
	bb1.n	 gt,r13,@L734
	subu	 r13,r3,4
	addu	 r3,r13,r11
@L734:
	ld.bu	 r13,r22,2
	cmp	 r13,r13,r23
	bb0.n	 ne,r13,@L1232
	or	 r2,r0,r22
	bcnd	 eq0,r12,@L1232
	ld.hu	 r12,r0,r22
	cmp	 r13,r12,37
	bb1.n	 ne,r13,@L736
	cmp	 r13,r12,34
@L1267:
	bsr.n	 _plus_constant
	ld	 r2,r22,4
	or	 r4,r0,r2
	or	 r2,r0,r22
@L1253:
	or	 r3,r0,r23
	bsr.n	 _change_address
	addu	 r1,r1,@L1319
@L1320:
	align	 4
@L736:
	bb1	 ne,r13,@L737
	ld	 r13,r10[r23]
	addu	 r13,r3,r13
	cmp	 r13,r13,r11
	bb0.n	 ne,r13,@L738
	or	 r2,r0,35
	bsr	 _abort
	align	 4
@L738:
	or	 r3,r0,r23
	br.n	 @L1250
	or	 r4,r0,r22
	align	 4
@L737:
	bsr	 _abort
	align	 4
@L725:
	or.u	 r13,r0,hi16(_fp_delta)
@L1289:
	or	 r2,r0,30
	ld	 r4,r13,lo16(_fp_delta)
	or	 r3,r0,4
	or.u	 r13,r0,hi16(_frame_pointer_rtx)
	addu	 r4,r24,r4
	bsr.n	 _gen_rtx
	ld	 r25,r13,lo16(_frame_pointer_rtx)
	or	 r5,r0,r2
	or	 r2,r0,44
	or	 r3,r0,4
	bsr.n	 _gen_rtx
	or	 r4,r0,r25
	or	 r4,r0,r2
	or	 r2,r0,4
	bsr.n	 _memory_address_p
	or	 r3,r0,r4
	bcnd.n	 ne0,r2,@L724
	or.u	 r13,r0,hi16(_inline_fp_rtx)
	ld	 r2,r13,lo16(_inline_fp_rtx)
	br.n	 @L1251
	or	 r3,r0,r24
	align	 4
@L724:
	bsr.n	 _copy_rtx_and_substitute
	or	 r2,r0,r22
	or	 r22,r0,r2
	or	 r2,r0,44
	or.u	 r13,r0,hi16(_frame_pointer_rtx)
	or	 r3,r0,4
	ld	 r4,r13,lo16(_frame_pointer_rtx)
	bsr.n	 _gen_rtx
	or	 r5,r0,r22
	or.u	 r13,r0,hi16(_fp_delta)
	bsr.n	 _plus_constant
	ld	 r3,r13,lo16(_fp_delta)
	or	 r4,r0,r2
	or	 r2,r0,4
	or	 r3,r0,r4
	bsr.n	 _memory_address
	addu	 r1,r1,@L1321
@L1322:
	align	 4
@L719:
	bsr.n	 _reg_mentioned_p
	or	 r3,r0,r22
	bcnd	 eq0,r2,@L741
	ld	 r2,r22,4
	ld.hu	 r13,r0,r2
	cmp	 r13,r13,30
	bb1	 ne,r13,@L742
	bsr.n	 _copy_rtx_and_substitute
	ld	 r2,r22,8
	ld	 r13,r22,4
	ld	 r3,r13,4
	bsr.n	 _plus_constant
	addu	 r1,r1,@L1323
@L1324:
	align	 4
@L742:
	ld	 r13,r22,8
	ld.hu	 r13,r0,r13
	cmp	 r13,r13,30
	bb1	 ne,r13,@L744
	bsr	 _copy_rtx_and_substitute
	ld	 r13,r22,8
	ld	 r3,r13,4
	bsr.n	 _plus_constant
	addu	 r1,r1,@L1325
@L1326:
	align	 4
@L744:
	bsr.n	 _copy_rtx_and_substitute
	ld.bu	 r24,r22,2
	or	 r25,r0,r2
	bsr.n	 _copy_rtx_and_substitute
	ld	 r2,r22,8
	or	 r5,r0,r2
	or	 r2,r0,44
	or	 r3,r0,r24
	or	 r4,r0,r25
	bsr.n	 _gen_rtx
	addu	 r1,r1,@L1327
@L1328:
	align	 4
@L741:
	ld	 r12,r22,8
	ld.hu	 r13,r0,r12
	cmp	 r13,r13,30
	bb1	 ne,r13,@L747
	bsr.n	 _copy_rtx_and_substitute
	ld	 r2,r22,4
	ld	 r13,r22,8
	ld	 r3,r13,4
	bsr.n	 _plus_constant
	addu	 r1,r1,@L1329
@L1330:
	align	 4
@L747:
	ld	 r2,r22,4
	ld.hu	 r13,r0,r2
	cmp	 r13,r13,30
	bb1	 ne,r13,@L749
	bsr.n	 _copy_rtx_and_substitute
	or	 r2,r0,r12
	ld	 r13,r22,4
	ld	 r3,r13,4
	bsr.n	 _plus_constant
	addu	 r1,r1,@L1331
@L1332:
	align	 4
@L749:
	bsr	 _copy_rtx_and_substitute
	or	 r25,r0,r2
	bsr.n	 _copy_rtx_and_substitute
	ld	 r2,r22,8
	ld.bu	 r3,r22,2
	or	 r5,r0,r2
	or	 r2,r0,44
	or	 r4,r0,r25
	bsr.n	 _gen_rtx
	addu	 r1,r1,@L1333
@L1334:
	align	 4
@L718:
	bsr.n	 _copy_rtx_and_substitute
	or	 r2,r0,r22
@L1252:
	or	 r4,r0,r2
	br.n	 @L1253
	or	 r2,r0,r19
	align	 4
@L752:
	bsr	 _abort
	align	 4
@L675:
	bsr.n	 _rtx_alloc
	or	 r2,r0,r15
	or	 r22,r0,r2
	st.b	 r23,r22,2
	ld	 r13,r0,r22
	ld	 r12,r0,r19
	and	 r13,r13,0xfff7
	mask	 r12,r12,8
	or	 r13,r13,r12
	st	 r13,r0,r22
	ld	 r12,r0,r19
	and	 r13,r13,0xffef
	mask	 r12,r12,16
	or	 r13,r13,r12
	st	 r13,r0,r22
	ld	 r12,r0,r19
	and	 r13,r13,0xffdf
	mask	 r12,r12,32
	or	 r13,r13,r12
	st	 r13,r0,r22
	or.u	 r13,r0,hi16(_rtx_format)
	or.u	 r12,r0,hi16(_rtx_length)
	ld.hu	 r11,r0,r22
	or	 r10,r12,lo16(_rtx_length)
	or	 r13,r13,lo16(_rtx_format)
	ld	 r12,r10[r11]
	ld	 r16,r13[r11]
	bcnd.n	 le0,r12,@L971
	or	 r17,r0,0
	or	 r14,r0,r10
	or	 r20,r0,r19
	or	 r21,r0,r22
@L758:
	ld.b	 r12,r0,r16
	cmp	 r13,r12,101
	bb0.n	 ne,r13,@L761
	addu	 r16,r16,1
	bb1.n	 gt,r13,@L774
	cmp	 r13,r12,115
	cmp	 r13,r12,48
	bb1.n	 eq,r13,@L757
	cmp	 r13,r12,69
	bb0	 ne,r13,@L763
	br	 @L772
	align	 4
@L774:
	bb0	 ne,r13,@L771
	bb1.n	 gt,r13,@L775
	cmp	 r13,r12,117
	cmp	 r13,r12,105
	bb0	 ne,r13,@L771
	br	 @L772
	align	 4
@L775:
	bb0.n	 ne,r13,@L762
	or.u	 r12,r0,hi16(_insn_map)
	br	 @L772
	align	 4
@L761:
	bsr.n	 _copy_rtx_and_substitute
	ld	 r2,r20,4
	br.n	 @L757
	st	 r2,r21,4
	align	 4
@L762:
	ld	 r13,r20,4
	ld	 r11,r13,4
	ld	 r13,r12,lo16(_insn_map)
	ld	 r13,r13[r11]
	br.n	 @L757
	st	 r13,r21,4
	align	 4
@L763:
	ld	 r13,r20,4
	st	 r13,r21,4
	ld	 r2,r20,4
	bcnd	 eq0,r2,@L757
	ld	 r2,r0,r2
	bcnd	 eq0,r2,@L757
	bsr.n	 _rtvec_alloc
	or	 r24,r0,0
	st	 r2,r21,4
	ld	 r13,r0,r2
	bcnd.n	 eq0,r13,@L757
	or	 r18,r0,r20
	or	 r23,r0,r21
	or	 r25,r0,0
@L768:
	ld	 r13,r18,4
	addu	 r13,r13,r25
	bsr.n	 _copy_rtx_and_substitute
	ld	 r2,r13,4
	ld	 r13,r23,4
	addu	 r13,r13,r25
	st	 r2,r13,4
	ld	 r13,r23,4
	ld	 r13,r0,r13
	addu	 r24,r24,1
	cmp	 r13,r24,r13
	bb1.n	 lo,r13,@L768
	addu	 r25,r25,4
	br	 @L757
	align	 4
@L771:
	ld	 r13,r20,4
	br.n	 @L757
	st	 r13,r21,4
	align	 4
@L772:
	bsr	 _abort
	align	 4
@L757:
	ld.hu	 r13,r0,r22
	ld	 r13,r14[r13]
	addu	 r17,r17,1
	addu	 r20,r20,4
	cmp	 r13,r17,r13
	bb1.n	 lt,r13,@L758
	addu	 r21,r21,4
	br.n	 @L1290
	cmp	 r13,r15,22
	align	 4
@L672:
	or.u	 r13,r0,hi16(_frame_pointer_rtx)
	ld	 r2,r13,lo16(_frame_pointer_rtx)
@L1246:
	or.u	 r13,r0,hi16(_fp_delta)
	ld	 r3,r13,lo16(_fp_delta)
	bsr.n	 _plus_constant
	addu	 r1,r1,@L1335
@L1336:
	align	 4
@L778:
	ld	 r12,r19,4
	ld.hu	 r13,r0,r12
	cmp	 r13,r13,34
	bb1	 ne,r13,@L670
	ld	 r13,r12,4
	cmp	 r13,r13,14
	bb1.n	 ne,r13,@L670
	or.u	 r13,r0,hi16(_fp_delta)
@L1287:
	ld	 r3,r13,lo16(_fp_delta)
	or	 r2,r0,r19
	bsr.n	 _plus_constant
	addu	 r1,r1,@L1337
@L1338:
	align	 4
@L780:
	bcnd.n	 ne0,r19,@L782
	or.u	 r13,r0,hi16(@L861)
	br.n	 @L781
	or	 r2,r0,0
	align	 4
@L782:
	ld.hu	 r15,r0,r19
	ld.bu	 r23,r19,2
	subu	 r11,r15,17
	cmp	 r12,r11,27
	bb0.n	 ls,r12,@L783
	or	 r13,r13,lo16(@L861)
	ld	 r13,r13[r11]
	jmp	 r13
	align	 4
@L861:
	word	 @L791
	word	 @L783
	word	 @L783
	word	 @L783
	word	 @L783
	word	 @L798
	word	 @L783
	word	 @L783
	word	 @L783
	word	 @L783
	word	 @L783
	word	 @L800
	word	 @L860
	word	 @L797
	word	 @L797
	word	 @L783
	word	 @L797
	word	 @L784
	word	 @L783
	word	 @L783
	word	 @L821
	word	 @L792
	word	 @L797
	word	 @L797
	word	 @L783
	word	 @L783
	word	 @L783
	word	 @L803
	align	 4
@L784:
	ld	 r25,r19,4
	cmp	 r13,r25,55
	bb1.n	 gt,r13,@L785
	or.u	 r24,r0,hi16(_reg_map)
	ld	 r13,r0,r19
	bb0.n	 (31-30),r13,@L786
	or.u	 r13,r0,hi16(_inline_target)
	ld	 r4,r13,lo16(_inline_target)
	bcnd	 ne0,r4,@L787
	bsr	 _abort
	align	 4
@L787:
	ld.bu	 r13,r4,2
	cmp	 r13,r23,r13
	bb1.n	 ne,r13,@L788
	or	 r2,r0,35
	br.n	 @L781
	or	 r2,r0,r4
	align	 4
@L788:
	br.n	 @L1254
	or	 r3,r0,r23
	align	 4
@L786:
	cmp	 r13,r25,14
	bb1.n	 ne,r13,@L781
	or	 r2,r0,r19
	or.u	 r13,r0,hi16(_fp_delta)
	ld	 r3,r13,lo16(_fp_delta)
	bsr.n	 _plus_constant
	addu	 r1,r1,@L1339
@L1340:
	align	 4
@L785:
	ld	 r13,r24,lo16(_reg_map)
	ld	 r13,r13[r25]
	bcnd	 ne0,r13,@L790
	bsr.n	 _gen_reg_rtx
	or	 r2,r0,r23
	ld	 r13,r24,lo16(_reg_map)
	st	 r2,r13[r25]
@L790:
	ld	 r13,r24,lo16(_reg_map)
	ld	 r2,r13[r25]
	br	 @L781
	align	 4
@L791:
	or.u	 r13,r0,hi16(_label_map)
	ld	 r12,r19,16
	ld	 r13,r13,lo16(_label_map)
	ld	 r2,r13[r12]
	br	 @L781
	align	 4
@L792:
	bsr.n	 _rtx_alloc
	or	 r2,r0,38
	or	 r22,r0,r2
	st.b	 r23,r22,2
	ld	 r13,r19,4
	or.u	 r12,r0,hi16(_label_map)
	ld	 r11,r13,16
	ld	 r13,r12,lo16(_label_map)
	ld	 r13,r13[r11]
	br.n	 @L781
	st	 r13,r2,4
	align	 4
@L797:
	br.n	 @L781
	or	 r2,r0,r19
	align	 4
@L798:
	or.u	 r13,r0,hi16(_orig_asm_operands_vector)
	ld	 r12,r19,16
	ld	 r13,r13,lo16(_orig_asm_operands_vector)
	cmp	 r13,r13,r12
	bb1	 ne,r13,@L783
	bsr.n	 _rtx_alloc
	or	 r2,r0,22
	ld	 r13,r19,4
	or	 r22,r0,r2
	st	 r13,r22,4
	ld	 r13,r19,8
	st	 r13,r22,8
	or.u	 r13,r0,hi16(_copy_asm_operands_vector)
	ld	 r12,r19,12
	ld	 r13,r13,lo16(_copy_asm_operands_vector)
	st	 r12,r22,12
	st	 r13,r22,16
	ld	 r13,r19,20
	br.n	 @L781
	st	 r13,r2,20
	align	 4
@L800:
	or.u	 r13,r0,hi16(_optimize)
	ld	 r13,r13,lo16(_optimize)
	bcnd.n	 eq0,r13,@L802
	or.u	 r13,r0,hi16(_flag_no_function_cse)
	ld	 r13,r13,lo16(_flag_no_function_cse)
	bcnd	 eq0,r13,@L783
@L802:
	ld	 r13,r19,4
	ld.bu	 r24,r19,2
	ld	 r2,r13,4
	bsr.n	 _copy_rtx_and_substitute
	ld.bu	 r25,r13,2
	or	 r4,r0,r2
	or	 r2,r0,37
	bsr.n	 _gen_rtx
	or	 r3,r0,r25
	or	 r25,r0,r2
	bsr.n	 _copy_rtx_and_substitute
	ld	 r2,r19,8
	or	 r5,r0,r2
	or	 r2,r0,28
	br.n	 @L1255
	or	 r3,r0,r24
	align	 4
@L803:
	or.u	 r13,r0,hi16(_frame_pointer_rtx)
	ld	 r3,r19,4
	ld	 r2,r13,lo16(_frame_pointer_rtx)
	cmp	 r12,r3,r2
	bb0	 ne,r12,@L807
	ld	 r13,r19,8
	cmp	 r13,r13,r2
	bb1	 ne,r13,@L804
	bb0.n	 ne,r12,@L807
	or.u	 r13,r0,hi16(_arg_pointer_rtx)
	ld	 r13,r13,lo16(_arg_pointer_rtx)
	cmp	 r13,r3,r13
	bb1.n	 ne,r13,@L806
	or	 r22,r0,r3
@L807:
	ld	 r22,r19,8
@L806:
	ld.hu	 r13,r0,r22
	cmp	 r13,r13,30
	bb1	 ne,r13,@L809
	ld	 r5,r22,4
	bcnd.n	 le0,r5,@L810
	or.u	 r13,r0,hi16(_parm_map)
	ld	 r12,r13,lo16(_parm_map)
	ext	 r13,r5,0<2>
	ld	 r22,r12[r13]
	ld	 r2,r22,4
	br	 @L781
	align	 4
@L810:
	or.u	 r13,r0,hi16(_fp_delta)
	or	 r2,r0,30
	ld	 r4,r13,lo16(_fp_delta)
	or	 r3,r0,4
	or.u	 r13,r0,hi16(_frame_pointer_rtx)
	addu	 r4,r5,r4
	bsr.n	 _gen_rtx
	ld	 r25,r13,lo16(_frame_pointer_rtx)
	or	 r5,r0,r2
	or	 r2,r0,44
	or	 r3,r0,r23
@L1255:
	or	 r4,r0,r25
	bsr.n	 _gen_rtx
	addu	 r1,r1,@L1341
@L1342:
	align	 4
@L809:
	bsr.n	 _copy_rtx_and_substitute
	or	 r2,r0,r22
	or	 r22,r0,r2
	or	 r2,r0,44
	or.u	 r13,r0,hi16(_frame_pointer_rtx)
	or	 r3,r0,r23
	ld	 r4,r13,lo16(_frame_pointer_rtx)
	bsr.n	 _gen_rtx
	or	 r5,r0,r22
	or	 r3,r0,r2
	bsr.n	 _force_reg
	or	 r2,r0,r23
	or.u	 r13,r0,hi16(_fp_delta)
	ld	 r3,r13,lo16(_fp_delta)
	bsr.n	 _plus_constant
	addu	 r1,r1,@L1343
@L1344:
	align	 4
@L804:
	bsr.n	 _reg_mentioned_p
	or	 r3,r0,r19
	bcnd	 eq0,r2,@L813
	or	 r2,r0,r23
	bsr.n	 _memory_address_p
	or	 r3,r0,r19
	bcnd	 eq0,r2,@L813
	ld	 r2,r19,4
	ld.hu	 r13,r0,r2
	cmp	 r13,r13,30
	bb1	 ne,r13,@L815
	bsr.n	 _copy_rtx_and_substitute
	ld	 r2,r19,8
	ld	 r13,r19,4
	ld	 r3,r13,4
	bsr.n	 _plus_constant
	addu	 r1,r1,@L1345
@L1346:
	align	 4
@L815:
	ld	 r13,r19,8
	ld.hu	 r13,r0,r13
	cmp	 r13,r13,30
	bb1	 ne,r13,@L817
	bsr	 _copy_rtx_and_substitute
	ld	 r13,r19,8
	ld	 r3,r13,4
	bsr.n	 _plus_constant
	addu	 r1,r1,@L1347
@L1348:
	align	 4
@L817:
	bsr.n	 _copy_rtx_and_substitute
	ld.bu	 r24,r19,2
	or	 r25,r0,r2
	bsr.n	 _copy_rtx_and_substitute
	ld	 r2,r19,8
	or	 r5,r0,r2
	or	 r2,r0,44
	or	 r3,r0,r24
	bsr.n	 _gen_rtx
	or	 r4,r0,r25
@L1256:
	or	 r4,r0,r2
	or	 r2,r0,r23
	or	 r3,r0,r4
	bsr.n	 _memory_address
	addu	 r1,r1,@L1349
@L1350:
	align	 4
@L813:
	ld	 r2,r19,4
	bsr.n	 _copy_rtx_and_substitute
	ld.bu	 r24,r19,2
	or	 r25,r0,r2
	bsr.n	 _copy_rtx_and_substitute
	ld	 r2,r19,8
	or	 r5,r0,r2
	or	 r2,r0,44
	or	 r3,r0,r24
	bsr.n	 _gen_rtx
	or	 r4,r0,r25
@L1257:
	or	 r4,r0,r2
	br.n	 @L781
	or	 r2,r0,r4
	align	 4
@L821:
	or.u	 r13,r0,hi16(_frame_pointer_rtx)
	ld	 r22,r19,4
	ld	 r2,r13,lo16(_frame_pointer_rtx)
	cmp	 r13,r22,r2
	bb0.n	 ne,r13,@L823
	or.u	 r13,r0,hi16(_arg_pointer_rtx)
	ld	 r13,r13,lo16(_arg_pointer_rtx)
	cmp	 r13,r22,r13
	bb1	 ne,r13,@L822
@L823:
	or.u	 r13,r0,hi16(_fp_delta)
	ld	 r3,r13,lo16(_fp_delta)
	br	 @L1258
	align	 4
@L822:
	ld.hu	 r13,r0,r22
	cmp	 r13,r13,63
	bb1.n	 ne,r13,@L1291
	or	 r2,r0,r23
	or.u	 r13,r0,hi16(_stack_pointer_rtx)
	ld	 r12,r22,4
	ld	 r13,r13,lo16(_stack_pointer_rtx)
	cmp	 r12,r12,r13
	bb1	 ne,r12,@L824
	or	 r2,r0,r22
	bsr.n	 _copy_rtx_and_substitute
	addu	 r1,r1,@L1351
@L1352:
	align	 4
@L824:
@L1291:
	bsr.n	 _memory_address_p
	or	 r3,r0,r22
	bcnd.n	 ne0,r2,@L825
	or	 r2,r0,r22
	bsr.n	 _copy_address
	addu	 r1,r1,@L1353
@L1354:
	align	 4
@L825:
	ld.hu	 r13,r0,r22
	cmp	 r13,r13,44
	bb1.n	 ne,r13,@L826
	or.u	 r13,r0,hi16(_frame_pointer_rtx)
	ld	 r12,r22,4
	ld	 r2,r13,lo16(_frame_pointer_rtx)
	cmp	 r11,r12,r2
	bb0	 ne,r11,@L830
	ld	 r13,r22,8
	cmp	 r13,r13,r2
	bb1	 ne,r13,@L827
	bb0.n	 ne,r11,@L830
	or.u	 r13,r0,hi16(_arg_pointer_rtx)
	ld	 r13,r13,lo16(_arg_pointer_rtx)
	cmp	 r13,r12,r13
	bb1	 ne,r13,@L829
@L830:
	ld	 r2,r22,4
	ld	 r22,r22,8
	br	 @L831
	align	 4
@L829:
	or	 r22,r0,r12
@L831:
	ld.hu	 r13,r0,r22
	cmp	 r13,r13,30
	bb1.n	 ne,r13,@L832
	or.u	 r13,r0,hi16(_arg_pointer_rtx)
	ld	 r13,r13,lo16(_arg_pointer_rtx)
	cmp	 r13,r2,r13
	ld	 r24,r22,4
	bb1.n	 ne,r13,@L1292
	or.u	 r13,r0,hi16(_fp_delta)
	or.u	 r10,r0,hi16(_first_parm_offset)
	ld	 r13,r10,lo16(_first_parm_offset)
	cmp	 r13,r24,r13
	bb0	 ge,r13,@L833
	bcnd.n	 ge0,r24,@L834
	or	 r3,r0,r24
	addu	 r3,r24,3
@L834:
	or.u	 r11,r0,hi16(_parm_map)
	ext	 r3,r3,0<2>
	ld	 r13,r11,lo16(_parm_map)
	or	 r2,r0,r3
	mak	 r12,r2,0<2>
	ld	 r13,r13[r2]
	bcnd.n	 ne0,r13,@L837
	subu	 r3,r24,r12
	or	 r12,r0,r11
@L838:
	ld	 r13,r10,lo16(_first_parm_offset)
	bcnd.n	 ge0,r13,@L840
	subu	 r2,r2,1
	addu	 r13,r13,3
@L840:
	ext	 r13,r13,0<2>
	cmp	 r13,r2,r13
	bb1	 ge,r13,@L839
	bsr	 _abort
	align	 4
@L839:
	ld	 r13,r12,lo16(_parm_map)
	ld	 r13,r13[r2]
	bcnd.n	 eq0,r13,@L838
	addu	 r3,r3,4
@L837:
	or.u	 r13,r0,hi16(_parm_map)
	ld	 r13,r13,lo16(_parm_map)
	ld	 r22,r13[r2]
	or.u	 r13,r0,hi16(_mode_size)
	ld.bu	 r12,r22,2
	or	 r10,r13,lo16(_mode_size)
	ld	 r11,r10[r12]
	cmp	 r13,r11,3
	bb1.n	 gt,r13,@L842
	subu	 r13,r3,4
	addu	 r3,r13,r11
@L842:
	ld.bu	 r13,r22,2
	cmp	 r13,r13,r23
	bb0.n	 ne,r13,@L781
	or	 r2,r0,r22
	bcnd	 eq0,r12,@L781
	ld.hu	 r12,r0,r22
	cmp	 r13,r12,37
	bb1.n	 ne,r13,@L844
	cmp	 r13,r12,34
	bsr.n	 _plus_constant
	ld	 r2,r22,4
	or	 r4,r0,r2
	br.n	 @L1260
	or	 r2,r0,r22
	align	 4
@L844:
	bb1	 ne,r13,@L845
	ld	 r13,r10[r23]
	addu	 r13,r3,r13
	cmp	 r13,r13,r11
	bb0.n	 ne,r13,@L846
	or	 r2,r0,35
	bsr	 _abort
	align	 4
@L846:
	or	 r3,r0,r23
	or	 r4,r0,r22
@L1254:
	or	 r5,r0,0
	bsr.n	 _gen_rtx
	addu	 r1,r1,@L1355
@L1356:
	align	 4
@L845:
	bsr	 _abort
	align	 4
@L833:
	or.u	 r13,r0,hi16(_fp_delta)
@L1292:
	or	 r2,r0,30
	ld	 r4,r13,lo16(_fp_delta)
	or	 r3,r0,4
	or.u	 r13,r0,hi16(_frame_pointer_rtx)
	addu	 r4,r24,r4
	bsr.n	 _gen_rtx
	ld	 r25,r13,lo16(_frame_pointer_rtx)
	or	 r5,r0,r2
	or	 r2,r0,44
	or	 r3,r0,4
	bsr.n	 _gen_rtx
	or	 r4,r0,r25
	or	 r4,r0,r2
	or	 r2,r0,4
	bsr.n	 _memory_address_p
	or	 r3,r0,r4
	bcnd.n	 ne0,r2,@L832
	or.u	 r13,r0,hi16(_inline_fp_rtx)
	ld	 r2,r13,lo16(_inline_fp_rtx)
	or	 r3,r0,r24
@L1258:
	bsr	 _plus_constant
@L1259:
	or	 r4,r0,r2
	or	 r2,r0,37
	or	 r3,r0,r23
	bsr.n	 _gen_rtx
	addu	 r1,r1,@L1357
@L1358:
	align	 4
@L832:
	bsr.n	 _copy_rtx_and_substitute
	or	 r2,r0,r22
	or	 r22,r0,r2
	or	 r2,r0,44
	or.u	 r13,r0,hi16(_frame_pointer_rtx)
	or	 r3,r0,4
	ld	 r4,r13,lo16(_frame_pointer_rtx)
	bsr.n	 _gen_rtx
	or	 r5,r0,r22
	or.u	 r13,r0,hi16(_fp_delta)
	bsr.n	 _plus_constant
	ld	 r3,r13,lo16(_fp_delta)
	or	 r4,r0,r2
	or	 r2,r0,4
	or	 r3,r0,r4
	bsr.n	 _memory_address
	addu	 r1,r1,@L1359
@L1360:
	align	 4
@L827:
	bsr.n	 _reg_mentioned_p
	or	 r3,r0,r22
	bcnd	 eq0,r2,@L849
	ld	 r2,r22,4
	ld.hu	 r13,r0,r2
	cmp	 r13,r13,30
	bb1	 ne,r13,@L850
	bsr.n	 _copy_rtx_and_substitute
	ld	 r2,r22,8
	ld	 r13,r22,4
	ld	 r3,r13,4
	bsr.n	 _plus_constant
	addu	 r1,r1,@L1361
@L1362:
	align	 4
@L850:
	ld	 r13,r22,8
	ld.hu	 r13,r0,r13
	cmp	 r13,r13,30
	bb1	 ne,r13,@L852
	bsr	 _copy_rtx_and_substitute
	ld	 r13,r22,8
	ld	 r3,r13,4
	bsr.n	 _plus_constant
	addu	 r1,r1,@L1363
@L1364:
	align	 4
@L852:
	bsr.n	 _copy_rtx_and_substitute
	ld.bu	 r24,r22,2
	or	 r25,r0,r2
	bsr.n	 _copy_rtx_and_substitute
	ld	 r2,r22,8
	or	 r5,r0,r2
	or	 r2,r0,44
	or	 r3,r0,r24
	or	 r4,r0,r25
	bsr.n	 _gen_rtx
	addu	 r1,r1,@L1365
@L1366:
	align	 4
@L849:
	ld	 r12,r22,8
	ld.hu	 r13,r0,r12
	cmp	 r13,r13,30
	bb1	 ne,r13,@L855
	bsr.n	 _copy_rtx_and_substitute
	ld	 r2,r22,4
	ld	 r13,r22,8
	ld	 r3,r13,4
	bsr.n	 _plus_constant
	addu	 r1,r1,@L1367
@L1368:
	align	 4
@L855:
	ld	 r2,r22,4
	ld.hu	 r13,r0,r2
	cmp	 r13,r13,30
	bb1	 ne,r13,@L857
	bsr.n	 _copy_rtx_and_substitute
	or	 r2,r0,r12
	ld	 r13,r22,4
	ld	 r3,r13,4
	bsr.n	 _plus_constant
	addu	 r1,r1,@L1369
@L1370:
	align	 4
@L857:
	bsr	 _copy_rtx_and_substitute
	or	 r25,r0,r2
	bsr.n	 _copy_rtx_and_substitute
	ld	 r2,r22,8
	ld.bu	 r3,r22,2
	or	 r5,r0,r2
	or	 r2,r0,44
	or	 r4,r0,r25
	bsr.n	 _gen_rtx
	addu	 r1,r1,@L1371
@L1372:
	align	 4
@L826:
	bsr.n	 _copy_rtx_and_substitute
	or	 r2,r0,r22
@L1261:
	or	 r4,r0,r2
	or	 r2,r0,r19
@L1260:
	or	 r3,r0,r23
	bsr.n	 _change_address
	addu	 r1,r1,@L1373
@L1374:
	align	 4
@L860:
	bsr	 _abort
	align	 4
@L783:
	bsr.n	 _rtx_alloc
	or	 r2,r0,r15
	or	 r22,r0,r2
	st.b	 r23,r22,2
	ld	 r13,r0,r22
	ld	 r12,r0,r19
	and	 r13,r13,0xfff7
	mask	 r12,r12,8
	or	 r13,r13,r12
	st	 r13,r0,r22
	ld	 r12,r0,r19
	and	 r13,r13,0xffef
	mask	 r12,r12,16
	or	 r13,r13,r12
	st	 r13,r0,r22
	ld	 r12,r0,r19
	and	 r13,r13,0xffdf
	mask	 r12,r12,32
	or	 r13,r13,r12
	st	 r13,r0,r22
	or.u	 r13,r0,hi16(_rtx_format)
	or.u	 r12,r0,hi16(_rtx_length)
	ld.hu	 r11,r0,r22
	or	 r10,r12,lo16(_rtx_length)
	or	 r13,r13,lo16(_rtx_format)
	ld	 r12,r10[r11]
	ld	 r16,r13[r11]
	bcnd.n	 le0,r12,@L864
	or	 r17,r0,0
	or	 r14,r0,r10
	or	 r20,r0,r19
	or	 r21,r0,r22
@L866:
	ld.b	 r12,r0,r16
	cmp	 r13,r12,101
	bb0.n	 ne,r13,@L869
	addu	 r16,r16,1
	bb1.n	 gt,r13,@L882
	cmp	 r13,r12,115
	cmp	 r13,r12,48
	bb1.n	 eq,r13,@L865
	cmp	 r13,r12,69
	bb0	 ne,r13,@L871
	br	 @L880
	align	 4
@L882:
	bb0	 ne,r13,@L879
	bb1.n	 gt,r13,@L883
	cmp	 r13,r12,117
	cmp	 r13,r12,105
	bb0	 ne,r13,@L879
	br	 @L880
	align	 4
@L883:
	bb0.n	 ne,r13,@L870
	or.u	 r12,r0,hi16(_insn_map)
	br	 @L880
	align	 4
@L869:
	bsr.n	 _copy_rtx_and_substitute
	ld	 r2,r20,4
	br.n	 @L865
	st	 r2,r21,4
	align	 4
@L870:
	ld	 r13,r20,4
	ld	 r11,r13,4
	ld	 r13,r12,lo16(_insn_map)
	ld	 r13,r13[r11]
	br.n	 @L865
	st	 r13,r21,4
	align	 4
@L871:
	ld	 r13,r20,4
	st	 r13,r21,4
	ld	 r2,r20,4
	bcnd	 eq0,r2,@L865
	ld	 r2,r0,r2
	bcnd	 eq0,r2,@L865
	bsr.n	 _rtvec_alloc
	or	 r24,r0,0
	st	 r2,r21,4
	ld	 r13,r0,r2
	bcnd.n	 eq0,r13,@L865
	or	 r18,r0,r20
	or	 r23,r0,r21
	or	 r25,r0,0
@L876:
	ld	 r13,r18,4
	addu	 r13,r13,r25
	bsr.n	 _copy_rtx_and_substitute
	ld	 r2,r13,4
	ld	 r13,r23,4
	addu	 r13,r13,r25
	st	 r2,r13,4
	ld	 r13,r23,4
	ld	 r13,r0,r13
	addu	 r24,r24,1
	cmp	 r13,r24,r13
	bb1.n	 lo,r13,@L876
	addu	 r25,r25,4
	br	 @L865
	align	 4
@L879:
	ld	 r13,r20,4
	br.n	 @L865
	st	 r13,r21,4
	align	 4
@L880:
	bsr	 _abort
	align	 4
@L865:
	ld.hu	 r13,r0,r22
	ld	 r13,r14[r13]
	addu	 r17,r17,1
	addu	 r20,r20,4
	cmp	 r13,r17,r13
	bb1.n	 lt,r13,@L866
	addu	 r21,r21,4
@L864:
	cmp	 r13,r15,22
	bb1.n	 ne,r13,@L781
	or	 r2,r0,r22
	or.u	 r12,r0,hi16(_orig_asm_operands_vector)
	ld	 r13,r12,lo16(_orig_asm_operands_vector)
	bcnd	 ne0,r13,@L781
	ld	 r13,r19,16
	st	 r13,r12,lo16(_orig_asm_operands_vector)
	ld	 r12,r22,16
	or.u	 r13,r0,hi16(_copy_asm_operands_vector)
	st	 r12,r13,lo16(_copy_asm_operands_vector)
	or	 r2,r0,r22
@L781:
	bsr.n	 _copy_to_reg
	addu	 r1,r1,@L1375
@L1376:
	align	 4
@L887:
	bcnd	 eq0,r19,@L1243
	ld.hu	 r15,r0,r19
	ld.bu	 r23,r19,2
	subu	 r11,r15,17
	or.u	 r13,r0,hi16(@L968)
	cmp	 r12,r11,27
	bb0.n	 ls,r12,@L890
	or	 r13,r13,lo16(@L968)
	ld	 r13,r13[r11]
	jmp	 r13
	align	 4
@L968:
	word	 @L683
	word	 @L890
	word	 @L890
	word	 @L890
	word	 @L890
	word	 @L905
	word	 @L890
	word	 @L890
	word	 @L890
	word	 @L890
	word	 @L890
	word	 @L907
	word	 @L967
	word	 @L997
	word	 @L997
	word	 @L890
	word	 @L997
	word	 @L891
	word	 @L890
	word	 @L890
	word	 @L928
	word	 @L684
	word	 @L997
	word	 @L997
	word	 @L890
	word	 @L890
	word	 @L890
	word	 @L910
	align	 4
@L891:
	ld	 r25,r19,4
	cmp	 r13,r25,55
	bb1.n	 gt,r13,@L677
	or.u	 r24,r0,hi16(_reg_map)
	ld	 r13,r0,r19
	bb0.n	 (31-30),r13,@L678
	or.u	 r13,r0,hi16(_inline_target)
	ld	 r4,r13,lo16(_inline_target)
	bcnd	 ne0,r4,@L679
	bsr	 _abort
	align	 4
@L905:
	or.u	 r13,r0,hi16(_orig_asm_operands_vector)
	ld	 r12,r19,16
	ld	 r13,r13,lo16(_orig_asm_operands_vector)
	cmp	 r13,r13,r12
	bb1	 eq,r13,@L1263
	br	 @L890
	align	 4
@L907:
	or.u	 r13,r0,hi16(_optimize)
	ld	 r13,r13,lo16(_optimize)
	bcnd.n	 eq0,r13,@L694
	or.u	 r13,r0,hi16(_flag_no_function_cse)
	ld	 r13,r13,lo16(_flag_no_function_cse)
	bcnd	 eq0,r13,@L890
	br	 @L694
	align	 4
@L910:
	or.u	 r13,r0,hi16(_frame_pointer_rtx)
	ld	 r3,r19,4
	ld	 r2,r13,lo16(_frame_pointer_rtx)
	cmp	 r12,r3,r2
	bb0	 ne,r12,@L914
	ld	 r13,r19,8
	cmp	 r13,r13,r2
	bb1	 ne,r13,@L911
	bb0.n	 ne,r12,@L914
	or.u	 r13,r0,hi16(_arg_pointer_rtx)
	ld	 r13,r13,lo16(_arg_pointer_rtx)
	cmp	 r13,r3,r13
	bb1.n	 ne,r13,@L913
	or	 r22,r0,r3
@L914:
	ld	 r22,r19,8
@L913:
	ld.hu	 r13,r0,r22
	cmp	 r13,r13,30
	bb1	 ne,r13,@L916
	ld	 r5,r22,4
	bcnd.n	 gt0,r5,@L1293
	or.u	 r13,r0,hi16(_parm_map)
	or.u	 r13,r0,hi16(_fp_delta)
	or	 r2,r0,30
	ld	 r4,r13,lo16(_fp_delta)
	or	 r3,r0,4
	or.u	 r13,r0,hi16(_frame_pointer_rtx)
	addu	 r4,r5,r4
	bsr.n	 _gen_rtx
	ld	 r25,r13,lo16(_frame_pointer_rtx)
	or	 r5,r0,r2
	or	 r2,r0,44
	br.n	 @L1245
	or	 r3,r0,r23
	align	 4
@L916:
	bsr.n	 _copy_rtx_and_substitute
	or	 r2,r0,r22
	or	 r22,r0,r2
	or	 r2,r0,44
	or.u	 r13,r0,hi16(_frame_pointer_rtx)
	or	 r3,r0,r23
	ld	 r4,r13,lo16(_frame_pointer_rtx)
	bsr.n	 _gen_rtx
	or	 r5,r0,r22
	or	 r3,r0,r2
	or	 r2,r0,r23
	bsr.n	 _force_reg
	subu	 r1,r1,@L1377
@L1378:
	align	 4
@L911:
	bsr.n	 _reg_mentioned_p
	or	 r3,r0,r19
	bcnd	 eq0,r2,@L705
	or	 r2,r0,r23
	bsr.n	 _memory_address_p
	or	 r3,r0,r19
	bcnd	 eq0,r2,@L705
	ld	 r2,r19,4
	ld.hu	 r13,r0,r2
	cmp	 r13,r13,30
	bb1	 ne,r13,@L922
	bsr.n	 _copy_rtx_and_substitute
	ld	 r2,r19,8
	ld	 r13,r19,4
	ld	 r3,r13,4
	bsr.n	 _plus_constant
	addu	 r1,r1,@L1379
@L1380:
	align	 4
@L922:
	ld	 r13,r19,8
	ld.hu	 r13,r0,r13
	cmp	 r13,r13,30
	bb1	 ne,r13,@L924
	bsr	 _copy_rtx_and_substitute
	ld	 r13,r19,8
	ld	 r3,r13,4
	bsr.n	 _plus_constant
	addu	 r1,r1,@L1381
@L1382:
	align	 4
@L924:
	bsr.n	 _copy_rtx_and_substitute
	ld.bu	 r24,r19,2
	or	 r25,r0,r2
	bsr.n	 _copy_rtx_and_substitute
	ld	 r2,r19,8
	or	 r5,r0,r2
	or	 r2,r0,44
	or	 r3,r0,r24
	bsr.n	 _gen_rtx
	or	 r4,r0,r25
@L1265:
	or	 r4,r0,r2
	or	 r2,r0,r23
	or	 r3,r0,r4
	bsr.n	 _memory_address
	subu	 r1,r1,@L1383
@L1384:
	align	 4
@L928:
	or.u	 r13,r0,hi16(_frame_pointer_rtx)
	ld	 r22,r19,4
	ld	 r2,r13,lo16(_frame_pointer_rtx)
	cmp	 r13,r22,r2
	bb1.n	 eq,r13,@L715
	or.u	 r13,r0,hi16(_arg_pointer_rtx)
	ld	 r13,r13,lo16(_arg_pointer_rtx)
	cmp	 r13,r22,r13
	bb1	 eq,r13,@L715
	ld.hu	 r13,r0,r22
	cmp	 r13,r13,63
	bb1.n	 ne,r13,@L931
	or.u	 r13,r0,hi16(_stack_pointer_rtx)
	ld	 r12,r22,4
	ld	 r13,r13,lo16(_stack_pointer_rtx)
	cmp	 r12,r12,r13
	bb1.n	 ne,r12,@L1294
	or	 r2,r0,r23
	or	 r2,r0,r22
	bsr.n	 _copy_rtx_and_substitute
	subu	 r1,r1,@L1385
@L1386:
	align	 4
@L931:
	or	 r2,r0,r23
@L1294:
	bsr.n	 _memory_address_p
	or	 r3,r0,r22
	bcnd.n	 ne0,r2,@L932
	or	 r2,r0,r22
	bsr.n	 _copy_address
	subu	 r1,r1,@L1387
@L1388:
	align	 4
@L932:
	ld.hu	 r13,r0,r22
	cmp	 r13,r13,44
	bb1.n	 ne,r13,@L933
	or.u	 r13,r0,hi16(_frame_pointer_rtx)
	ld	 r12,r22,4
	ld	 r2,r13,lo16(_frame_pointer_rtx)
	cmp	 r11,r12,r2
	bb0	 ne,r11,@L937
	ld	 r13,r22,8
	cmp	 r13,r13,r2
	bb1	 ne,r13,@L934
	bb0.n	 ne,r11,@L937
	or.u	 r13,r0,hi16(_arg_pointer_rtx)
	ld	 r13,r13,lo16(_arg_pointer_rtx)
	cmp	 r13,r12,r13
	bb1	 ne,r13,@L936
@L937:
	ld	 r2,r22,4
	ld	 r22,r22,8
	br	 @L938
	align	 4
@L936:
	or	 r22,r0,r12
@L938:
	ld.hu	 r13,r0,r22
	cmp	 r13,r13,30
	bb1.n	 ne,r13,@L939
	or.u	 r13,r0,hi16(_arg_pointer_rtx)
	ld	 r13,r13,lo16(_arg_pointer_rtx)
	cmp	 r13,r2,r13
	ld	 r24,r22,4
	bb1.n	 ne,r13,@L1295
	or.u	 r13,r0,hi16(_fp_delta)
	or.u	 r10,r0,hi16(_first_parm_offset)
	ld	 r13,r10,lo16(_first_parm_offset)
	cmp	 r13,r24,r13
	bb0	 ge,r13,@L940
	bcnd.n	 ge0,r24,@L941
	or	 r3,r0,r24
	addu	 r3,r24,3
@L941:
	or.u	 r11,r0,hi16(_parm_map)
	ext	 r3,r3,0<2>
	ld	 r13,r11,lo16(_parm_map)
	or	 r2,r0,r3
	mak	 r12,r2,0<2>
	ld	 r13,r13[r2]
	bcnd.n	 ne0,r13,@L944
	subu	 r3,r24,r12
	or	 r12,r0,r11
@L945:
	ld	 r13,r10,lo16(_first_parm_offset)
	bcnd.n	 ge0,r13,@L947
	subu	 r2,r2,1
	addu	 r13,r13,3
@L947:
	ext	 r13,r13,0<2>
	cmp	 r13,r2,r13
	bb1	 ge,r13,@L946
	bsr	 _abort
	align	 4
@L946:
	ld	 r13,r12,lo16(_parm_map)
	ld	 r13,r13[r2]
	bcnd.n	 eq0,r13,@L945
	addu	 r3,r3,4
@L944:
	or.u	 r13,r0,hi16(_parm_map)
	ld	 r13,r13,lo16(_parm_map)
	ld	 r22,r13[r2]
	or.u	 r13,r0,hi16(_mode_size)
	ld.bu	 r12,r22,2
	or	 r10,r13,lo16(_mode_size)
	ld	 r11,r10[r12]
	cmp	 r13,r11,3
	bb1.n	 gt,r13,@L949
	subu	 r13,r3,4
	addu	 r3,r13,r11
@L949:
	ld.bu	 r13,r22,2
	cmp	 r13,r13,r23
	bb0.n	 ne,r13,@L1232
	or	 r2,r0,r22
	bcnd	 eq0,r12,@L1232
	ld.hu	 r12,r0,r22
	cmp	 r13,r12,37
	bb1.n	 eq,r13,@L1267
	cmp	 r13,r12,34
	bb1	 ne,r13,@L952
	ld	 r13,r10[r23]
	addu	 r13,r3,r13
	cmp	 r13,r13,r11
	bb0.n	 ne,r13,@L953
	or	 r2,r0,35
	bsr	 _abort
	align	 4
@L953:
	or	 r3,r0,r23
	br.n	 @L1250
	or	 r4,r0,r22
	align	 4
@L952:
	bsr	 _abort
	align	 4
@L940:
	or.u	 r13,r0,hi16(_fp_delta)
@L1295:
	or	 r2,r0,30
	ld	 r4,r13,lo16(_fp_delta)
	or	 r3,r0,4
	or.u	 r13,r0,hi16(_frame_pointer_rtx)
	addu	 r4,r24,r4
	bsr.n	 _gen_rtx
	ld	 r25,r13,lo16(_frame_pointer_rtx)
	or	 r5,r0,r2
	or	 r2,r0,44
	or	 r3,r0,4
	bsr.n	 _gen_rtx
	or	 r4,r0,r25
	or	 r4,r0,r2
	or	 r2,r0,4
	bsr.n	 _memory_address_p
	or	 r3,r0,r4
	bcnd.n	 ne0,r2,@L939
	or.u	 r13,r0,hi16(_inline_fp_rtx)
	ld	 r2,r13,lo16(_inline_fp_rtx)
	br.n	 @L1251
	or	 r3,r0,r24
	align	 4
@L939:
	bsr.n	 _copy_rtx_and_substitute
	or	 r2,r0,r22
	or	 r22,r0,r2
	or	 r2,r0,44
	or.u	 r13,r0,hi16(_frame_pointer_rtx)
	or	 r3,r0,4
	ld	 r4,r13,lo16(_frame_pointer_rtx)
	bsr.n	 _gen_rtx
	or	 r5,r0,r22
	or.u	 r13,r0,hi16(_fp_delta)
	bsr.n	 _plus_constant
	ld	 r3,r13,lo16(_fp_delta)
	or	 r4,r0,r2
	or	 r2,r0,4
	or	 r3,r0,r4
	bsr.n	 _memory_address
	addu	 r1,r1,@L1389
@L1390:
	align	 4
@L934:
	bsr.n	 _reg_mentioned_p
	or	 r3,r0,r22
	bcnd	 eq0,r2,@L956
	ld	 r2,r22,4
	ld.hu	 r13,r0,r2
	cmp	 r13,r13,30
	bb1	 ne,r13,@L957
	bsr.n	 _copy_rtx_and_substitute
	ld	 r2,r22,8
	ld	 r13,r22,4
	ld	 r3,r13,4
	bsr.n	 _plus_constant
	addu	 r1,r1,@L1391
@L1392:
	align	 4
@L957:
	ld	 r13,r22,8
	ld.hu	 r13,r0,r13
	cmp	 r13,r13,30
	bb1	 ne,r13,@L959
	bsr	 _copy_rtx_and_substitute
	ld	 r13,r22,8
	ld	 r3,r13,4
	bsr.n	 _plus_constant
	addu	 r1,r1,@L1393
@L1394:
	align	 4
@L959:
	bsr.n	 _copy_rtx_and_substitute
	ld.bu	 r24,r22,2
	or	 r25,r0,r2
	bsr.n	 _copy_rtx_and_substitute
	ld	 r2,r22,8
	or	 r5,r0,r2
	or	 r2,r0,44
	or	 r3,r0,r24
	or	 r4,r0,r25
	bsr.n	 _gen_rtx
	addu	 r1,r1,@L1395
@L1396:
	align	 4
@L956:
	ld	 r12,r22,8
	ld.hu	 r13,r0,r12
	cmp	 r13,r13,30
	bb1	 ne,r13,@L962
	bsr.n	 _copy_rtx_and_substitute
	ld	 r2,r22,4
	ld	 r13,r22,8
	ld	 r3,r13,4
	bsr.n	 _plus_constant
	addu	 r1,r1,@L1397
@L1398:
	align	 4
@L962:
	ld	 r2,r22,4
	ld.hu	 r13,r0,r2
	cmp	 r13,r13,30
	bb1	 ne,r13,@L964
	bsr.n	 _copy_rtx_and_substitute
	or	 r2,r0,r12
	ld	 r13,r22,4
	ld	 r3,r13,4
	bsr.n	 _plus_constant
	addu	 r1,r1,@L1399
@L1400:
	align	 4
@L964:
	bsr	 _copy_rtx_and_substitute
	or	 r25,r0,r2
	bsr.n	 _copy_rtx_and_substitute
	ld	 r2,r22,8
	ld.bu	 r3,r22,2
	or	 r5,r0,r2
	or	 r2,r0,44
	or	 r4,r0,r25
	bsr.n	 _gen_rtx
	addu	 r1,r1,@L1401
@L1402:
	align	 4
@L933:
	bsr.n	 _copy_rtx_and_substitute
	or	 r2,r0,r22
@L1268:
	or	 r4,r0,r2
	br.n	 @L1253
	or	 r2,r0,r19
	align	 4
@L967:
	bsr	 _abort
	align	 4
@L890:
	bsr.n	 _rtx_alloc
	or	 r2,r0,r15
	or	 r22,r0,r2
	st.b	 r23,r22,2
	ld	 r13,r0,r22
	ld	 r12,r0,r19
	and	 r13,r13,0xfff7
	mask	 r12,r12,8
	or	 r13,r13,r12
	st	 r13,r0,r22
	ld	 r12,r0,r19
	and	 r13,r13,0xffef
	mask	 r12,r12,16
	or	 r13,r13,r12
	st	 r13,r0,r22
	ld	 r12,r0,r19
	and	 r13,r13,0xffdf
	mask	 r12,r12,32
	or	 r13,r13,r12
	st	 r13,r0,r22
	or.u	 r13,r0,hi16(_rtx_format)
	or.u	 r12,r0,hi16(_rtx_length)
	ld.hu	 r11,r0,r22
	or	 r10,r12,lo16(_rtx_length)
	or	 r13,r13,lo16(_rtx_format)
	ld	 r12,r10[r11]
	ld	 r16,r13[r11]
	bcnd.n	 le0,r12,@L971
	or	 r17,r0,0
	or	 r14,r0,r10
	or	 r20,r0,r19
	or	 r21,r0,r22
@L973:
	ld.b	 r12,r0,r16
	cmp	 r13,r12,101
	bb0.n	 ne,r13,@L976
	addu	 r16,r16,1
	bb1.n	 gt,r13,@L989
	cmp	 r13,r12,115
	cmp	 r13,r12,48
	bb1.n	 eq,r13,@L972
	cmp	 r13,r12,69
	bb0	 ne,r13,@L978
	br	 @L987
	align	 4
@L989:
	bb0	 ne,r13,@L986
	bb1.n	 gt,r13,@L990
	cmp	 r13,r12,117
	cmp	 r13,r12,105
	bb0	 ne,r13,@L986
	br	 @L987
	align	 4
@L990:
	bb0.n	 ne,r13,@L977
	or.u	 r12,r0,hi16(_insn_map)
	br	 @L987
	align	 4
@L976:
	bsr.n	 _copy_rtx_and_substitute
	ld	 r2,r20,4
	br.n	 @L972
	st	 r2,r21,4
	align	 4
@L977:
	ld	 r13,r20,4
	ld	 r11,r13,4
	ld	 r13,r12,lo16(_insn_map)
	ld	 r13,r13[r11]
	br.n	 @L972
	st	 r13,r21,4
	align	 4
@L978:
	ld	 r13,r20,4
	st	 r13,r21,4
	ld	 r2,r20,4
	bcnd	 eq0,r2,@L972
	ld	 r2,r0,r2
	bcnd	 eq0,r2,@L972
	bsr.n	 _rtvec_alloc
	or	 r24,r0,0
	st	 r2,r21,4
	ld	 r13,r0,r2
	bcnd.n	 eq0,r13,@L972
	or	 r18,r0,r20
	or	 r23,r0,r21
	or	 r25,r0,0
@L983:
	ld	 r13,r18,4
	addu	 r13,r13,r25
	bsr.n	 _copy_rtx_and_substitute
	ld	 r2,r13,4
	ld	 r13,r23,4
	addu	 r13,r13,r25
	st	 r2,r13,4
	ld	 r13,r23,4
	ld	 r13,r0,r13
	addu	 r24,r24,1
	cmp	 r13,r24,r13
	bb1.n	 lo,r13,@L983
	addu	 r25,r25,4
	br	 @L972
	align	 4
@L986:
	ld	 r13,r20,4
	br.n	 @L972
	st	 r13,r21,4
	align	 4
@L987:
	bsr	 _abort
	align	 4
@L972:
	ld.hu	 r13,r0,r22
	ld	 r13,r14[r13]
	addu	 r17,r17,1
	addu	 r20,r20,4
	cmp	 r13,r17,r13
	bb1.n	 lt,r13,@L973
	addu	 r21,r21,4
@L971:
	cmp	 r13,r15,22
@L1290:
	bb0.n	 eq,r13,@L1232
	or	 r2,r0,r22
	or.u	 r12,r0,hi16(_orig_asm_operands_vector)
	ld	 r13,r12,lo16(_orig_asm_operands_vector)
	bcnd	 ne0,r13,@L1232
	ld	 r13,r19,16
	st	 r13,r12,lo16(_orig_asm_operands_vector)
	ld	 r12,r22,16
	or.u	 r13,r0,hi16(_copy_asm_operands_vector)
	br.n	 @L1232
	st	 r12,r13,lo16(_copy_asm_operands_vector)
	align	 4
@L997:
	br.n	 @L1232
	or	 r2,r0,r19
	align	 4
@L670:
	bsr	 _rtx_alloc
	st	 r2,r31,92
	st.b	 r25,r2,2
	ld	 r9,r31,92
	ld	 r12,r0,r19
	ld	 r13,r0,r9
	mask	 r12,r12,8
	and	 r13,r13,0xfff7
	or	 r13,r13,r12
	st	 r13,r0,r9
	ld	 r12,r0,r19
	and	 r13,r13,0xffef
	mask	 r12,r12,16
	or	 r13,r13,r12
	st	 r13,r0,r9
	ld	 r12,r0,r19
	and	 r13,r13,0xffdf
	mask	 r12,r12,32
	or	 r13,r13,r12
	st	 r13,r0,r9
	or.u	 r13,r0,hi16(_rtx_length)
	ld.hu	 r11,r0,r9
	or	 r13,r13,lo16(_rtx_length)
	or.u	 r12,r0,hi16(_rtx_format)
	ld	 r13,r13[r11]
	or	 r12,r12,lo16(_rtx_format)
	st	 r0,r31,100
	ld	 r11,r12[r11]
	bcnd.n	 le0,r13,@L1001
	st	 r11,r31,108
	ld	 r9,r31,92
	st	 r19,r31,132
	or.u	 r13,r0,hi16(_mode_size)
	st	 r9,r31,140
@L1003:
	ld	 r9,r31,108
	ld.b	 r12,r0,r9
	addu	 r9,r9,1
	cmp	 r13,r12,101
	bb0.n	 ne,r13,@L1006
	st	 r9,r31,108
	bb1.n	 gt,r13,@L1229
	cmp	 r13,r12,115
	cmp	 r13,r12,48
	bb1.n	 eq,r13,@L1002
	cmp	 r13,r12,69
	bb0	 ne,r13,@L1113
	br	 @L1227
	align	 4
@L1229:
	bb0	 ne,r13,@L1226
	bb1.n	 gt,r13,@L1230
	cmp	 r13,r12,117
	cmp	 r13,r12,105
	bb0	 ne,r13,@L1226
	br	 @L1227
	align	 4
@L1230:
	bb0.n	 ne,r13,@L1112
	or.u	 r12,r0,hi16(_insn_map)
	br	 @L1227
	align	 4
@L1006:
	ld	 r9,r31,132
	ld	 r19,r9,4
	bcnd.n	 ne0,r19,@L1008
	or.u	 r13,r0,hi16(@L1087)
	br.n	 @L1007
	or	 r2,r0,0
	align	 4
@L1008:
	ld.hu	 r15,r0,r19
	ld.bu	 r22,r19,2
	subu	 r11,r15,17
	cmp	 r12,r11,27
	bb0.n	 ls,r12,@L1009
	or	 r13,r13,lo16(@L1087)
	ld	 r13,r13[r11]
	jmp	 r13
	align	 4
@L1087:
	word	 @L1017
	word	 @L1009
	word	 @L1009
	word	 @L1009
	word	 @L1009
	word	 @L1024
	word	 @L1009
	word	 @L1009
	word	 @L1009
	word	 @L1009
	word	 @L1009
	word	 @L1026
	word	 @L1086
	word	 @L1023
	word	 @L1023
	word	 @L1009
	word	 @L1023
	word	 @L1010
	word	 @L1009
	word	 @L1009
	word	 @L1047
	word	 @L1018
	word	 @L1023
	word	 @L1023
	word	 @L1009
	word	 @L1009
	word	 @L1009
	word	 @L1029
	align	 4
@L1010:
	ld	 r25,r19,4
	cmp	 r13,r25,55
	bb1.n	 gt,r13,@L1011
	or.u	 r24,r0,hi16(_reg_map)
	ld	 r13,r0,r19
	bb0.n	 (31-30),r13,@L1012
	or.u	 r13,r0,hi16(_inline_target)
	ld	 r4,r13,lo16(_inline_target)
	bcnd	 ne0,r4,@L1013
	bsr	 _abort
	align	 4
@L1013:
	ld.bu	 r13,r4,2
	cmp	 r13,r22,r13
	bb1.n	 ne,r13,@L1014
	or	 r2,r0,35
	br.n	 @L1007
	or	 r2,r0,r4
	align	 4
@L1014:
	br.n	 @L1269
	or	 r3,r0,r22
	align	 4
@L1012:
	cmp	 r13,r25,14
	bb1.n	 ne,r13,@L1007
	or	 r2,r0,r19
	or.u	 r9,r0,hi16(_fp_delta)
	ld	 r3,r9,lo16(_fp_delta)
	bsr.n	 _plus_constant
	addu	 r1,r1,@L1403
@L1404:
	align	 4
@L1011:
	ld	 r13,r24,lo16(_reg_map)
	ld	 r13,r13[r25]
	bcnd	 ne0,r13,@L1016
	bsr.n	 _gen_reg_rtx
	or	 r2,r0,r22
	ld	 r13,r24,lo16(_reg_map)
	st	 r2,r13[r25]
@L1016:
	ld	 r13,r24,lo16(_reg_map)
	ld	 r2,r13[r25]
	br	 @L1007
	align	 4
@L1017:
	or.u	 r13,r0,hi16(_label_map)
	ld	 r12,r19,16
	ld	 r13,r13,lo16(_label_map)
	ld	 r2,r13[r12]
	br	 @L1007
	align	 4
@L1018:
	bsr.n	 _rtx_alloc
	or	 r2,r0,38
	or	 r23,r0,r2
	st.b	 r22,r23,2
	ld	 r13,r19,4
	or.u	 r12,r0,hi16(_label_map)
	ld	 r11,r13,16
	ld	 r13,r12,lo16(_label_map)
	ld	 r13,r13[r11]
	br.n	 @L1007
	st	 r13,r2,4
	align	 4
@L1023:
	br.n	 @L1007
	or	 r2,r0,r19
	align	 4
@L1024:
	or.u	 r13,r0,hi16(_orig_asm_operands_vector)
	ld	 r12,r19,16
	ld	 r13,r13,lo16(_orig_asm_operands_vector)
	cmp	 r13,r13,r12
	bb1	 ne,r13,@L1009
	bsr.n	 _rtx_alloc
	or	 r2,r0,22
	ld	 r13,r19,4
	or	 r23,r0,r2
	st	 r13,r23,4
	ld	 r13,r19,8
	st	 r13,r23,8
	or.u	 r13,r0,hi16(_copy_asm_operands_vector)
	ld	 r12,r19,12
	ld	 r13,r13,lo16(_copy_asm_operands_vector)
	st	 r12,r23,12
	st	 r13,r23,16
	ld	 r13,r19,20
	br.n	 @L1007
	st	 r13,r2,20
	align	 4
@L1026:
	or.u	 r13,r0,hi16(_optimize)
	ld	 r13,r13,lo16(_optimize)
	bcnd.n	 eq0,r13,@L1028
	or.u	 r13,r0,hi16(_flag_no_function_cse)
	ld	 r13,r13,lo16(_flag_no_function_cse)
	bcnd	 eq0,r13,@L1009
@L1028:
	ld	 r13,r19,4
	ld.bu	 r24,r19,2
	ld	 r2,r13,4
	bsr.n	 _copy_rtx_and_substitute
	ld.bu	 r25,r13,2
	or	 r4,r0,r2
	or	 r2,r0,37
	bsr.n	 _gen_rtx
	or	 r3,r0,r25
	or	 r25,r0,r2
	bsr.n	 _copy_rtx_and_substitute
	ld	 r2,r19,8
	or	 r5,r0,r2
	or	 r2,r0,28
	br.n	 @L1270
	or	 r3,r0,r24
	align	 4
@L1029:
	or.u	 r9,r0,hi16(_frame_pointer_rtx)
	ld	 r3,r19,4
	ld	 r2,r9,lo16(_frame_pointer_rtx)
	cmp	 r11,r3,r2
	bb0	 ne,r11,@L1033
	ld	 r13,r19,8
	cmp	 r13,r13,r2
	bb1	 ne,r13,@L1030
	bb0.n	 ne,r11,@L1033
	or.u	 r13,r0,hi16(_arg_pointer_rtx)
	ld	 r13,r13,lo16(_arg_pointer_rtx)
	cmp	 r13,r3,r13
	bb1.n	 ne,r13,@L1032
	or	 r23,r0,r3
@L1033:
	ld	 r23,r19,8
@L1032:
	ld.hu	 r13,r0,r23
	cmp	 r13,r13,30
	bb1	 ne,r13,@L1035
	ld	 r5,r23,4
	bcnd.n	 le0,r5,@L1036
	or.u	 r13,r0,hi16(_parm_map)
	ld	 r12,r13,lo16(_parm_map)
	ext	 r13,r5,0<2>
	ld	 r23,r12[r13]
	ld	 r2,r23,4
	br	 @L1007
	align	 4
@L1036:
	or.u	 r9,r0,hi16(_fp_delta)
	or	 r2,r0,30
	ld	 r4,r9,lo16(_fp_delta)
	or	 r3,r0,4
	or.u	 r9,r0,hi16(_frame_pointer_rtx)
	addu	 r4,r5,r4
	bsr.n	 _gen_rtx
	ld	 r25,r9,lo16(_frame_pointer_rtx)
	or	 r5,r0,r2
	or	 r2,r0,44
	or	 r3,r0,r22
@L1270:
	or	 r4,r0,r25
	bsr.n	 _gen_rtx
	addu	 r1,r1,@L1405
@L1406:
	align	 4
@L1035:
	bsr.n	 _copy_rtx_and_substitute
	or	 r2,r0,r23
	or.u	 r9,r0,hi16(_frame_pointer_rtx)
	or	 r23,r0,r2
	or	 r2,r0,44
	or	 r3,r0,r22
	ld	 r4,r9,lo16(_frame_pointer_rtx)
	bsr.n	 _gen_rtx
	or	 r5,r0,r23
	or	 r3,r0,r2
	bsr.n	 _force_reg
	or	 r2,r0,r22
	or.u	 r9,r0,hi16(_fp_delta)
	ld	 r3,r9,lo16(_fp_delta)
	bsr.n	 _plus_constant
	addu	 r1,r1,@L1407
@L1408:
	align	 4
@L1030:
	bsr.n	 _reg_mentioned_p
	or	 r3,r0,r19
	bcnd	 eq0,r2,@L1039
	or	 r2,r0,r22
	bsr.n	 _memory_address_p
	or	 r3,r0,r19
	bcnd	 eq0,r2,@L1039
	ld	 r2,r19,4
	ld.hu	 r13,r0,r2
	cmp	 r13,r13,30
	bb1	 ne,r13,@L1041
	bsr.n	 _copy_rtx_and_substitute
	ld	 r2,r19,8
	ld	 r13,r19,4
	ld	 r3,r13,4
	bsr.n	 _plus_constant
	addu	 r1,r1,@L1409
@L1410:
	align	 4
@L1041:
	ld	 r13,r19,8
	ld.hu	 r13,r0,r13
	cmp	 r13,r13,30
	bb1	 ne,r13,@L1043
	bsr	 _copy_rtx_and_substitute
	ld	 r13,r19,8
	ld	 r3,r13,4
	bsr.n	 _plus_constant
	addu	 r1,r1,@L1411
@L1412:
	align	 4
@L1043:
	bsr.n	 _copy_rtx_and_substitute
	ld.bu	 r24,r19,2
	or	 r25,r0,r2
	bsr.n	 _copy_rtx_and_substitute
	ld	 r2,r19,8
	or	 r5,r0,r2
	or	 r2,r0,44
	or	 r3,r0,r24
	bsr.n	 _gen_rtx
	or	 r4,r0,r25
@L1271:
	or	 r4,r0,r2
	or	 r2,r0,r22
	or	 r3,r0,r4
	bsr.n	 _memory_address
	addu	 r1,r1,@L1413
@L1414:
	align	 4
@L1039:
	ld	 r2,r19,4
	bsr.n	 _copy_rtx_and_substitute
	ld.bu	 r24,r19,2
	or	 r25,r0,r2
	bsr.n	 _copy_rtx_and_substitute
	ld	 r2,r19,8
	or	 r5,r0,r2
	or	 r2,r0,44
	or	 r3,r0,r24
	bsr.n	 _gen_rtx
	or	 r4,r0,r25
@L1272:
	or	 r4,r0,r2
	br.n	 @L1007
	or	 r2,r0,r4
	align	 4
@L1047:
	or.u	 r9,r0,hi16(_frame_pointer_rtx)
	ld	 r23,r19,4
	ld	 r2,r9,lo16(_frame_pointer_rtx)
	cmp	 r13,r23,r2
	bb0.n	 ne,r13,@L1049
	or.u	 r13,r0,hi16(_arg_pointer_rtx)
	ld	 r13,r13,lo16(_arg_pointer_rtx)
	cmp	 r13,r23,r13
	bb1	 ne,r13,@L1048
@L1049:
	or.u	 r9,r0,hi16(_fp_delta)
	ld	 r3,r9,lo16(_fp_delta)
	br	 @L1273
	align	 4
@L1048:
	ld.hu	 r13,r0,r23
	cmp	 r13,r13,63
	bb1.n	 ne,r13,@L1296
	or	 r2,r0,r22
	or.u	 r13,r0,hi16(_stack_pointer_rtx)
	ld	 r12,r23,4
	ld	 r13,r13,lo16(_stack_pointer_rtx)
	cmp	 r12,r12,r13
	bb1	 ne,r12,@L1050
	or	 r2,r0,r23
	bsr.n	 _copy_rtx_and_substitute
	addu	 r1,r1,@L1415
@L1416:
	align	 4
@L1050:
@L1296:
	bsr.n	 _memory_address_p
	or	 r3,r0,r23
	bcnd.n	 ne0,r2,@L1051
	or	 r2,r0,r23
	bsr.n	 _copy_address
	addu	 r1,r1,@L1417
@L1418:
	align	 4
@L1051:
	ld.hu	 r13,r0,r23
	cmp	 r13,r13,44
	bb1.n	 ne,r13,@L1052
	or.u	 r9,r0,hi16(_frame_pointer_rtx)
	ld	 r11,r23,4
	ld	 r2,r9,lo16(_frame_pointer_rtx)
	cmp	 r12,r11,r2
	bb0	 ne,r12,@L1056
	ld	 r13,r23,8
	cmp	 r13,r13,r2
	bb1	 ne,r13,@L1053
	bb0.n	 ne,r12,@L1056
	or.u	 r13,r0,hi16(_arg_pointer_rtx)
	ld	 r13,r13,lo16(_arg_pointer_rtx)
	cmp	 r13,r11,r13
	bb1	 ne,r13,@L1055
@L1056:
	ld	 r2,r23,4
	ld	 r23,r23,8
	br	 @L1057
	align	 4
@L1055:
	or	 r23,r0,r11
@L1057:
	ld.hu	 r13,r0,r23
	cmp	 r13,r13,30
	bb1.n	 ne,r13,@L1058
	or.u	 r13,r0,hi16(_arg_pointer_rtx)
	ld	 r13,r13,lo16(_arg_pointer_rtx)
	cmp	 r13,r2,r13
	ld	 r24,r23,4
	bb1.n	 ne,r13,@L1297
	or.u	 r9,r0,hi16(_fp_delta)
	or.u	 r9,r0,hi16(_first_parm_offset)
	ld	 r13,r9,lo16(_first_parm_offset)
	cmp	 r13,r24,r13
	bb0	 ge,r13,@L1059
	bcnd.n	 ge0,r24,@L1060
	or	 r3,r0,r24
	addu	 r3,r24,3
@L1060:
	or.u	 r11,r0,hi16(_parm_map)
	ext	 r3,r3,0<2>
	ld	 r13,r11,lo16(_parm_map)
	or	 r2,r0,r3
	mak	 r12,r2,0<2>
	ld	 r13,r13[r2]
	bcnd.n	 ne0,r13,@L1063
	subu	 r3,r24,r12
	or	 r12,r0,r11
@L1064:
	or.u	 r9,r0,hi16(_first_parm_offset)
	ld	 r13,r9,lo16(_first_parm_offset)
	bcnd.n	 ge0,r13,@L1066
	subu	 r2,r2,1
	addu	 r13,r13,3
@L1066:
	ext	 r13,r13,0<2>
	cmp	 r13,r2,r13
	bb1	 ge,r13,@L1065
	bsr	 _abort
	align	 4
@L1065:
	ld	 r13,r12,lo16(_parm_map)
	ld	 r13,r13[r2]
	bcnd.n	 eq0,r13,@L1064
	addu	 r3,r3,4
@L1063:
	or.u	 r13,r0,hi16(_parm_map)
	ld	 r13,r13,lo16(_parm_map)
	ld	 r23,r13[r2]
	or.u	 r9,r0,hi16(_mode_size)
	ld.bu	 r12,r23,2
	or	 r9,r9,lo16(_mode_size)
	ld	 r11,r9[r12]
	cmp	 r13,r11,3
	bb1.n	 gt,r13,@L1068
	subu	 r13,r3,4
	addu	 r3,r13,r11
@L1068:
	ld.bu	 r13,r23,2
	cmp	 r13,r13,r22
	bb0.n	 ne,r13,@L1007
	or	 r2,r0,r23
	bcnd	 eq0,r12,@L1007
	ld.hu	 r12,r0,r23
	cmp	 r13,r12,37
	bb1.n	 ne,r13,@L1070
	cmp	 r13,r12,34
	bsr.n	 _plus_constant
	ld	 r2,r23,4
	or	 r4,r0,r2
	br.n	 @L1275
	or	 r2,r0,r23
	align	 4
@L1070:
	bb1.n	 ne,r13,@L1071
	or.u	 r9,r0,hi16(_mode_size)
	or	 r9,r9,lo16(_mode_size)
	ld	 r13,r9[r22]
	addu	 r13,r3,r13
	cmp	 r13,r13,r11
	bb0.n	 ne,r13,@L1072
	or	 r2,r0,35
	bsr	 _abort
	align	 4
@L1072:
	or	 r3,r0,r22
	or	 r4,r0,r23
@L1269:
	or	 r5,r0,0
	bsr.n	 _gen_rtx
	addu	 r1,r1,@L1419
@L1420:
	align	 4
@L1071:
	bsr	 _abort
	align	 4
@L1059:
	or.u	 r9,r0,hi16(_fp_delta)
@L1297:
	or	 r2,r0,30
	ld	 r4,r9,lo16(_fp_delta)
	or	 r3,r0,4
	or.u	 r9,r0,hi16(_frame_pointer_rtx)
	addu	 r4,r24,r4
	bsr.n	 _gen_rtx
	ld	 r25,r9,lo16(_frame_pointer_rtx)
	or	 r5,r0,r2
	or	 r2,r0,44
	or	 r3,r0,4
	bsr.n	 _gen_rtx
	or	 r4,r0,r25
	or	 r4,r0,r2
	or	 r2,r0,4
	bsr.n	 _memory_address_p
	or	 r3,r0,r4
	bcnd.n	 ne0,r2,@L1058
	or.u	 r13,r0,hi16(_inline_fp_rtx)
	ld	 r2,r13,lo16(_inline_fp_rtx)
	or	 r3,r0,r24
@L1273:
	bsr	 _plus_constant
@L1274:
	or	 r4,r0,r2
	or	 r2,r0,37
	or	 r3,r0,r22
	bsr.n	 _gen_rtx
	addu	 r1,r1,@L1421
@L1422:
	align	 4
@L1058:
	bsr.n	 _copy_rtx_and_substitute
	or	 r2,r0,r23
	or.u	 r9,r0,hi16(_frame_pointer_rtx)
	or	 r23,r0,r2
	or	 r2,r0,44
	or	 r3,r0,4
	ld	 r4,r9,lo16(_frame_pointer_rtx)
	bsr.n	 _gen_rtx
	or	 r5,r0,r23
	or.u	 r9,r0,hi16(_fp_delta)
	bsr.n	 _plus_constant
	ld	 r3,r9,lo16(_fp_delta)
	or	 r4,r0,r2
	or	 r2,r0,4
	or	 r3,r0,r4
	bsr.n	 _memory_address
	addu	 r1,r1,@L1423
@L1424:
	align	 4
@L1053:
	bsr.n	 _reg_mentioned_p
	or	 r3,r0,r23
	bcnd	 eq0,r2,@L1075
	ld	 r2,r23,4
	ld.hu	 r13,r0,r2
	cmp	 r13,r13,30
	bb1	 ne,r13,@L1076
	bsr.n	 _copy_rtx_and_substitute
	ld	 r2,r23,8
	ld	 r13,r23,4
	ld	 r3,r13,4
	bsr.n	 _plus_constant
	addu	 r1,r1,@L1425
@L1426:
	align	 4
@L1076:
	ld	 r13,r23,8
	ld.hu	 r13,r0,r13
	cmp	 r13,r13,30
	bb1	 ne,r13,@L1078
	bsr	 _copy_rtx_and_substitute
	ld	 r13,r23,8
	ld	 r3,r13,4
	bsr.n	 _plus_constant
	addu	 r1,r1,@L1427
@L1428:
	align	 4
@L1078:
	bsr.n	 _copy_rtx_and_substitute
	ld.bu	 r24,r23,2
	or	 r25,r0,r2
	bsr.n	 _copy_rtx_and_substitute
	ld	 r2,r23,8
	or	 r5,r0,r2
	or	 r2,r0,44
	or	 r3,r0,r24
	or	 r4,r0,r25
	bsr.n	 _gen_rtx
	addu	 r1,r1,@L1429
@L1430:
	align	 4
@L1075:
	ld	 r12,r23,8
	ld.hu	 r13,r0,r12
	cmp	 r13,r13,30
	bb1	 ne,r13,@L1081
	bsr.n	 _copy_rtx_and_substitute
	ld	 r2,r23,4
	ld	 r13,r23,8
	ld	 r3,r13,4
	bsr.n	 _plus_constant
	addu	 r1,r1,@L1431
@L1432:
	align	 4
@L1081:
	ld	 r2,r23,4
	ld.hu	 r13,r0,r2
	cmp	 r13,r13,30
	bb1	 ne,r13,@L1083
	bsr.n	 _copy_rtx_and_substitute
	or	 r2,r0,r12
	ld	 r13,r23,4
	ld	 r3,r13,4
	bsr.n	 _plus_constant
	addu	 r1,r1,@L1433
@L1434:
	align	 4
@L1083:
	bsr	 _copy_rtx_and_substitute
	or	 r25,r0,r2
	bsr.n	 _copy_rtx_and_substitute
	ld	 r2,r23,8
	ld.bu	 r3,r23,2
	or	 r5,r0,r2
	or	 r2,r0,44
	or	 r4,r0,r25
	bsr.n	 _gen_rtx
	addu	 r1,r1,@L1435
@L1436:
	align	 4
@L1052:
	bsr.n	 _copy_rtx_and_substitute
	or	 r2,r0,r23
@L1276:
	or	 r4,r0,r2
	or	 r2,r0,r19
@L1275:
	or	 r3,r0,r22
	bsr.n	 _change_address
	addu	 r1,r1,@L1437
@L1438:
	align	 4
@L1086:
	bsr	 _abort
	align	 4
@L1009:
	bsr.n	 _rtx_alloc
	or	 r2,r0,r15
	or	 r23,r0,r2
	st.b	 r22,r23,2
	ld	 r13,r0,r23
	ld	 r12,r0,r19
	and	 r13,r13,0xfff7
	mask	 r12,r12,8
	or	 r13,r13,r12
	st	 r13,r0,r23
	ld	 r12,r0,r19
	and	 r13,r13,0xffef
	mask	 r12,r12,16
	or	 r13,r13,r12
	st	 r13,r0,r23
	ld	 r12,r0,r19
	and	 r13,r13,0xffdf
	mask	 r12,r12,32
	or	 r13,r13,r12
	or.u	 r12,r0,hi16(_rtx_format)
	st	 r13,r0,r23
	or.u	 r13,r0,hi16(_rtx_length)
	ld.hu	 r11,r0,r23
	or	 r10,r13,lo16(_rtx_length)
	or	 r12,r12,lo16(_rtx_format)
	ld	 r13,r10[r11]
	ld	 r16,r12[r11]
	bcnd.n	 le0,r13,@L1090
	or	 r17,r0,0
	or	 r14,r0,r10
	or	 r20,r0,r19
	or	 r21,r0,r23
@L1092:
	ld.b	 r12,r0,r16
	cmp	 r13,r12,101
	bb0.n	 ne,r13,@L1095
	addu	 r16,r16,1
	bb1.n	 gt,r13,@L1108
	cmp	 r13,r12,115
	cmp	 r13,r12,48
	bb1.n	 eq,r13,@L1091
	cmp	 r13,r12,69
	bb0	 ne,r13,@L1097
	br	 @L1106
	align	 4
@L1108:
	bb0	 ne,r13,@L1105
	bb1.n	 gt,r13,@L1109
	cmp	 r13,r12,117
	cmp	 r13,r12,105
	bb0	 ne,r13,@L1105
	br	 @L1106
	align	 4
@L1109:
	bb0.n	 ne,r13,@L1096
	or.u	 r12,r0,hi16(_insn_map)
	br	 @L1106
	align	 4
@L1095:
	bsr.n	 _copy_rtx_and_substitute
	ld	 r2,r20,4
	br.n	 @L1091
	st	 r2,r21,4
	align	 4
@L1096:
	ld	 r13,r20,4
	ld	 r11,r13,4
	ld	 r13,r12,lo16(_insn_map)
	ld	 r13,r13[r11]
	br.n	 @L1091
	st	 r13,r21,4
	align	 4
@L1097:
	ld	 r13,r20,4
	st	 r13,r21,4
	ld	 r2,r20,4
	bcnd	 eq0,r2,@L1091
	ld	 r2,r0,r2
	bcnd	 eq0,r2,@L1091
	bsr.n	 _rtvec_alloc
	or	 r24,r0,0
	st	 r2,r21,4
	ld	 r13,r0,r2
	bcnd.n	 eq0,r13,@L1091
	or	 r18,r0,r20
	or	 r22,r0,r21
	or	 r25,r0,0
@L1102:
	ld	 r13,r18,4
	addu	 r13,r13,r25
	bsr.n	 _copy_rtx_and_substitute
	ld	 r2,r13,4
	ld	 r13,r22,4
	addu	 r13,r13,r25
	st	 r2,r13,4
	ld	 r13,r22,4
	ld	 r13,r0,r13
	addu	 r24,r24,1
	cmp	 r13,r24,r13
	bb1.n	 lo,r13,@L1102
	addu	 r25,r25,4
	br	 @L1091
	align	 4
@L1105:
	ld	 r13,r20,4
	br.n	 @L1091
	st	 r13,r21,4
	align	 4
@L1106:
	bsr	 _abort
	align	 4
@L1091:
	ld.hu	 r13,r0,r23
	ld	 r13,r14[r13]
	addu	 r17,r17,1
	addu	 r20,r20,4
	cmp	 r13,r17,r13
	bb1.n	 lt,r13,@L1092
	addu	 r21,r21,4
@L1090:
	cmp	 r13,r15,22
	bb1.n	 ne,r13,@L1007
	or	 r2,r0,r23
	or.u	 r12,r0,hi16(_orig_asm_operands_vector)
	ld	 r13,r12,lo16(_orig_asm_operands_vector)
	bcnd	 ne0,r13,@L1007
	ld	 r13,r19,16
	st	 r13,r12,lo16(_orig_asm_operands_vector)
	ld	 r12,r23,16
	or.u	 r13,r0,hi16(_copy_asm_operands_vector)
	st	 r12,r13,lo16(_copy_asm_operands_vector)
	or	 r2,r0,r23
@L1007:
	ld	 r9,r31,140
	br.n	 @L1002
	st	 r2,r9,4
	align	 4
@L1112:
	ld	 r9,r31,132
	ld	 r13,r9,4
	ld	 r11,r13,4
	ld	 r13,r12,lo16(_insn_map)
	ld	 r9,r31,140
	ld	 r13,r13[r11]
	br.n	 @L1002
	st	 r13,r9,4
	align	 4
@L1113:
	ld	 r9,r31,132
	ld	 r13,r9,4
	ld	 r9,r31,140
	st	 r13,r9,4
	ld	 r9,r31,132
	ld	 r2,r9,4
	bcnd	 eq0,r2,@L1002
	ld	 r2,r0,r2
	bcnd	 eq0,r2,@L1002
	bsr.n	 _rtvec_alloc
	or	 r14,r0,0
	ld	 r9,r31,140
	st	 r2,r9,4
	ld	 r13,r0,r2
	bcnd	 eq0,r13,@L1002
	ld	 r9,r31,132
	st	 r9,r31,116
	ld	 r9,r31,140
	st	 r9,r31,124
@L1118:
	ld	 r9,r31,116
	ld	 r13,r9,4
	lda	 r13,r13[r14]
	ld	 r19,r13,4
	bcnd.n	 ne0,r19,@L1120
	or.u	 r13,r0,hi16(@L1199)
	br.n	 @L1119
	or	 r2,r0,0
	align	 4
@L1120:
	ld.hu	 r15,r0,r19
	ld.bu	 r22,r19,2
	subu	 r11,r15,17
	cmp	 r12,r11,27
	bb0.n	 ls,r12,@L1121
	or	 r13,r13,lo16(@L1199)
	ld	 r13,r13[r11]
	jmp	 r13
	align	 4
@L1199:
	word	 @L1129
	word	 @L1121
	word	 @L1121
	word	 @L1121
	word	 @L1121
	word	 @L1136
	word	 @L1121
	word	 @L1121
	word	 @L1121
	word	 @L1121
	word	 @L1121
	word	 @L1138
	word	 @L1198
	word	 @L1135
	word	 @L1135
	word	 @L1121
	word	 @L1135
	word	 @L1122
	word	 @L1121
	word	 @L1121
	word	 @L1159
	word	 @L1130
	word	 @L1135
	word	 @L1135
	word	 @L1121
	word	 @L1121
	word	 @L1121
	word	 @L1141
	align	 4
@L1122:
	ld	 r25,r19,4
	cmp	 r13,r25,55
	bb1.n	 gt,r13,@L1123
	or.u	 r24,r0,hi16(_reg_map)
	ld	 r13,r0,r19
	bb0.n	 (31-30),r13,@L1124
	or.u	 r13,r0,hi16(_inline_target)
	ld	 r4,r13,lo16(_inline_target)
	bcnd	 ne0,r4,@L1125
	bsr	 _abort
	align	 4
@L1125:
	ld.bu	 r13,r4,2
	cmp	 r13,r22,r13
	bb1.n	 ne,r13,@L1126
	or	 r2,r0,35
	br.n	 @L1119
	or	 r2,r0,r4
	align	 4
@L1126:
	br.n	 @L1277
	or	 r3,r0,r22
	align	 4
@L1124:
	cmp	 r13,r25,14
	bb1.n	 ne,r13,@L1119
	or	 r2,r0,r19
	or.u	 r9,r0,hi16(_fp_delta)
	ld	 r3,r9,lo16(_fp_delta)
	bsr.n	 _plus_constant
	addu	 r1,r1,@L1439
@L1440:
	align	 4
@L1123:
	ld	 r13,r24,lo16(_reg_map)
	ld	 r13,r13[r25]
	bcnd	 ne0,r13,@L1128
	bsr.n	 _gen_reg_rtx
	or	 r2,r0,r22
	ld	 r13,r24,lo16(_reg_map)
	st	 r2,r13[r25]
@L1128:
	ld	 r13,r24,lo16(_reg_map)
	ld	 r2,r13[r25]
	br	 @L1119
	align	 4
@L1129:
	or.u	 r13,r0,hi16(_label_map)
	ld	 r12,r19,16
	ld	 r13,r13,lo16(_label_map)
	ld	 r2,r13[r12]
	br	 @L1119
	align	 4
@L1130:
	bsr.n	 _rtx_alloc
	or	 r2,r0,38
	or	 r23,r0,r2
	st.b	 r22,r23,2
	ld	 r13,r19,4
	or.u	 r12,r0,hi16(_label_map)
	ld	 r11,r13,16
	ld	 r13,r12,lo16(_label_map)
	ld	 r13,r13[r11]
	br.n	 @L1119
	st	 r13,r2,4
	align	 4
@L1135:
	br.n	 @L1119
	or	 r2,r0,r19
	align	 4
@L1136:
	or.u	 r13,r0,hi16(_orig_asm_operands_vector)
	ld	 r12,r19,16
	ld	 r13,r13,lo16(_orig_asm_operands_vector)
	cmp	 r13,r13,r12
	bb1	 ne,r13,@L1121
	bsr.n	 _rtx_alloc
	or	 r2,r0,22
	ld	 r13,r19,4
	or	 r23,r0,r2
	st	 r13,r23,4
	ld	 r13,r19,8
	st	 r13,r23,8
	or.u	 r13,r0,hi16(_copy_asm_operands_vector)
	ld	 r12,r19,12
	ld	 r13,r13,lo16(_copy_asm_operands_vector)
	st	 r12,r23,12
	st	 r13,r23,16
	ld	 r13,r19,20
	br.n	 @L1119
	st	 r13,r2,20
	align	 4
@L1138:
	or.u	 r13,r0,hi16(_optimize)
	ld	 r13,r13,lo16(_optimize)
	bcnd.n	 eq0,r13,@L1140
	or.u	 r13,r0,hi16(_flag_no_function_cse)
	ld	 r13,r13,lo16(_flag_no_function_cse)
	bcnd	 eq0,r13,@L1121
@L1140:
	ld	 r13,r19,4
	ld.bu	 r24,r19,2
	ld	 r2,r13,4
	bsr.n	 _copy_rtx_and_substitute
	ld.bu	 r25,r13,2
	or	 r4,r0,r2
	or	 r2,r0,37
	bsr.n	 _gen_rtx
	or	 r3,r0,r25
	or	 r25,r0,r2
	bsr.n	 _copy_rtx_and_substitute
	ld	 r2,r19,8
	or	 r5,r0,r2
	or	 r2,r0,28
	br.n	 @L1278
	or	 r3,r0,r24
	align	 4
@L1141:
	or.u	 r9,r0,hi16(_frame_pointer_rtx)
	ld	 r3,r19,4
	ld	 r2,r9,lo16(_frame_pointer_rtx)
	cmp	 r11,r3,r2
	bb0	 ne,r11,@L1145
	ld	 r13,r19,8
	cmp	 r13,r13,r2
	bb1	 ne,r13,@L1142
	bb0.n	 ne,r11,@L1145
	or.u	 r13,r0,hi16(_arg_pointer_rtx)
	ld	 r13,r13,lo16(_arg_pointer_rtx)
	cmp	 r13,r3,r13
	bb1.n	 ne,r13,@L1144
	or	 r23,r0,r3
@L1145:
	ld	 r23,r19,8
@L1144:
	ld.hu	 r13,r0,r23
	cmp	 r13,r13,30
	bb1	 ne,r13,@L1147
	ld	 r5,r23,4
	bcnd.n	 le0,r5,@L1148
	or.u	 r13,r0,hi16(_parm_map)
	ld	 r12,r13,lo16(_parm_map)
	ext	 r13,r5,0<2>
	ld	 r23,r12[r13]
	ld	 r2,r23,4
	br	 @L1119
	align	 4
@L1148:
	or.u	 r9,r0,hi16(_fp_delta)
	or	 r2,r0,30
	ld	 r4,r9,lo16(_fp_delta)
	or	 r3,r0,4
	or.u	 r9,r0,hi16(_frame_pointer_rtx)
	addu	 r4,r5,r4
	bsr.n	 _gen_rtx
	ld	 r25,r9,lo16(_frame_pointer_rtx)
	or	 r5,r0,r2
	or	 r2,r0,44
	or	 r3,r0,r22
@L1278:
	or	 r4,r0,r25
	bsr.n	 _gen_rtx
	addu	 r1,r1,@L1441
@L1442:
	align	 4
@L1147:
	bsr.n	 _copy_rtx_and_substitute
	or	 r2,r0,r23
	or.u	 r9,r0,hi16(_frame_pointer_rtx)
	or	 r23,r0,r2
	or	 r2,r0,44
	or	 r3,r0,r22
	ld	 r4,r9,lo16(_frame_pointer_rtx)
	bsr.n	 _gen_rtx
	or	 r5,r0,r23
	or	 r3,r0,r2
	bsr.n	 _force_reg
	or	 r2,r0,r22
	or.u	 r9,r0,hi16(_fp_delta)
	ld	 r3,r9,lo16(_fp_delta)
	bsr.n	 _plus_constant
	addu	 r1,r1,@L1443
@L1444:
	align	 4
@L1142:
	bsr.n	 _reg_mentioned_p
	or	 r3,r0,r19
	bcnd	 eq0,r2,@L1151
	or	 r2,r0,r22
	bsr.n	 _memory_address_p
	or	 r3,r0,r19
	bcnd	 eq0,r2,@L1151
	ld	 r2,r19,4
	ld.hu	 r13,r0,r2
	cmp	 r13,r13,30
	bb1	 ne,r13,@L1153
	bsr.n	 _copy_rtx_and_substitute
	ld	 r2,r19,8
	ld	 r13,r19,4
	ld	 r3,r13,4
	bsr.n	 _plus_constant
	addu	 r1,r1,@L1445
@L1446:
	align	 4
@L1153:
	ld	 r13,r19,8
	ld.hu	 r13,r0,r13
	cmp	 r13,r13,30
	bb1	 ne,r13,@L1155
	bsr	 _copy_rtx_and_substitute
	ld	 r13,r19,8
	ld	 r3,r13,4
	bsr.n	 _plus_constant
	addu	 r1,r1,@L1447
@L1448:
	align	 4
@L1155:
	bsr.n	 _copy_rtx_and_substitute
	ld.bu	 r24,r19,2
	or	 r25,r0,r2
	bsr.n	 _copy_rtx_and_substitute
	ld	 r2,r19,8
	or	 r5,r0,r2
	or	 r2,r0,44
	or	 r3,r0,r24
	bsr.n	 _gen_rtx
	or	 r4,r0,r25
@L1279:
	or	 r4,r0,r2
	or	 r2,r0,r22
	or	 r3,r0,r4
	bsr.n	 _memory_address
	addu	 r1,r1,@L1449
@L1450:
	align	 4
@L1151:
	ld	 r2,r19,4
	bsr.n	 _copy_rtx_and_substitute
	ld.bu	 r24,r19,2
	or	 r25,r0,r2
	bsr.n	 _copy_rtx_and_substitute
	ld	 r2,r19,8
	or	 r5,r0,r2
	or	 r2,r0,44
	or	 r3,r0,r24
	bsr.n	 _gen_rtx
	or	 r4,r0,r25
@L1280:
	or	 r4,r0,r2
	br.n	 @L1119
	or	 r2,r0,r4
	align	 4
@L1159:
	or.u	 r9,r0,hi16(_frame_pointer_rtx)
	ld	 r23,r19,4
	ld	 r2,r9,lo16(_frame_pointer_rtx)
	cmp	 r13,r23,r2
	bb0.n	 ne,r13,@L1161
	or.u	 r13,r0,hi16(_arg_pointer_rtx)
	ld	 r13,r13,lo16(_arg_pointer_rtx)
	cmp	 r13,r23,r13
	bb1	 ne,r13,@L1160
@L1161:
	or.u	 r9,r0,hi16(_fp_delta)
	ld	 r3,r9,lo16(_fp_delta)
	br	 @L1281
	align	 4
@L1160:
	ld.hu	 r13,r0,r23
	cmp	 r13,r13,63
	bb1.n	 ne,r13,@L1298
	or	 r2,r0,r22
	or.u	 r13,r0,hi16(_stack_pointer_rtx)
	ld	 r12,r23,4
	ld	 r13,r13,lo16(_stack_pointer_rtx)
	cmp	 r12,r12,r13
	bb1	 ne,r12,@L1162
	or	 r2,r0,r23
	bsr.n	 _copy_rtx_and_substitute
	addu	 r1,r1,@L1451
@L1452:
	align	 4
@L1162:
@L1298:
	bsr.n	 _memory_address_p
	or	 r3,r0,r23
	bcnd.n	 ne0,r2,@L1163
	or	 r2,r0,r23
	bsr.n	 _copy_address
	addu	 r1,r1,@L1453
@L1454:
	align	 4
@L1163:
	ld.hu	 r13,r0,r23
	cmp	 r13,r13,44
	bb1.n	 ne,r13,@L1164
	or.u	 r9,r0,hi16(_frame_pointer_rtx)
	ld	 r11,r23,4
	ld	 r2,r9,lo16(_frame_pointer_rtx)
	cmp	 r12,r11,r2
	bb0	 ne,r12,@L1168
	ld	 r13,r23,8
	cmp	 r13,r13,r2
	bb1	 ne,r13,@L1165
	bb0.n	 ne,r12,@L1168
	or.u	 r13,r0,hi16(_arg_pointer_rtx)
	ld	 r13,r13,lo16(_arg_pointer_rtx)
	cmp	 r13,r11,r13
	bb1	 ne,r13,@L1167
@L1168:
	ld	 r2,r23,4
	ld	 r23,r23,8
	br	 @L1169
	align	 4
@L1167:
	or	 r23,r0,r11
@L1169:
	ld.hu	 r13,r0,r23
	cmp	 r13,r13,30
	bb1.n	 ne,r13,@L1170
	or.u	 r13,r0,hi16(_arg_pointer_rtx)
	ld	 r13,r13,lo16(_arg_pointer_rtx)
	cmp	 r13,r2,r13
	ld	 r24,r23,4
	bb1.n	 ne,r13,@L1299
	or.u	 r9,r0,hi16(_fp_delta)
	or.u	 r9,r0,hi16(_first_parm_offset)
	ld	 r13,r9,lo16(_first_parm_offset)
	cmp	 r13,r24,r13
	bb0	 ge,r13,@L1171
	bcnd.n	 ge0,r24,@L1172
	or	 r3,r0,r24
	addu	 r3,r24,3
@L1172:
	or.u	 r11,r0,hi16(_parm_map)
	ext	 r3,r3,0<2>
	ld	 r13,r11,lo16(_parm_map)
	or	 r2,r0,r3
	mak	 r12,r2,0<2>
	ld	 r13,r13[r2]
	bcnd.n	 ne0,r13,@L1175
	subu	 r3,r24,r12
	or	 r12,r0,r11
@L1176:
	or.u	 r9,r0,hi16(_first_parm_offset)
	ld	 r13,r9,lo16(_first_parm_offset)
	bcnd.n	 ge0,r13,@L1178
	subu	 r2,r2,1
	addu	 r13,r13,3
@L1178:
	ext	 r13,r13,0<2>
	cmp	 r13,r2,r13
	bb1	 ge,r13,@L1177
	bsr	 _abort
	align	 4
@L1177:
	ld	 r13,r12,lo16(_parm_map)
	ld	 r13,r13[r2]
	bcnd.n	 eq0,r13,@L1176
	addu	 r3,r3,4
@L1175:
	or.u	 r13,r0,hi16(_parm_map)
	ld	 r13,r13,lo16(_parm_map)
	ld	 r23,r13[r2]
	or.u	 r9,r0,hi16(_mode_size)
	ld.bu	 r12,r23,2
	or	 r9,r9,lo16(_mode_size)
	ld	 r11,r9[r12]
	cmp	 r13,r11,3
	bb1.n	 gt,r13,@L1180
	subu	 r13,r3,4
	addu	 r3,r13,r11
@L1180:
	ld.bu	 r13,r23,2
	cmp	 r13,r13,r22
	bb0.n	 ne,r13,@L1119
	or	 r2,r0,r23
	bcnd	 eq0,r12,@L1119
	ld.hu	 r12,r0,r23
	cmp	 r13,r12,37
	bb1.n	 ne,r13,@L1182
	cmp	 r13,r12,34
	bsr.n	 _plus_constant
	ld	 r2,r23,4
	or	 r4,r0,r2
	br.n	 @L1283
	or	 r2,r0,r23
	align	 4
@L1182:
	bb1.n	 ne,r13,@L1183
	or.u	 r9,r0,hi16(_mode_size)
	or	 r9,r9,lo16(_mode_size)
	ld	 r13,r9[r22]
	addu	 r13,r3,r13
	cmp	 r13,r13,r11
	bb0.n	 ne,r13,@L1184
	or	 r2,r0,35
	bsr	 _abort
	align	 4
@L1184:
	or	 r3,r0,r22
	or	 r4,r0,r23
@L1277:
	or	 r5,r0,0
	bsr.n	 _gen_rtx
	addu	 r1,r1,@L1455
@L1456:
	align	 4
@L1183:
	bsr	 _abort
	align	 4
@L1171:
	or.u	 r9,r0,hi16(_fp_delta)
@L1299:
	or	 r2,r0,30
	ld	 r4,r9,lo16(_fp_delta)
	or	 r3,r0,4
	or.u	 r9,r0,hi16(_frame_pointer_rtx)
	addu	 r4,r24,r4
	bsr.n	 _gen_rtx
	ld	 r25,r9,lo16(_frame_pointer_rtx)
	or	 r5,r0,r2
	or	 r2,r0,44
	or	 r3,r0,4
	bsr.n	 _gen_rtx
	or	 r4,r0,r25
	or	 r4,r0,r2
	or	 r2,r0,4
	bsr.n	 _memory_address_p
	or	 r3,r0,r4
	bcnd.n	 ne0,r2,@L1170
	or.u	 r13,r0,hi16(_inline_fp_rtx)
	ld	 r2,r13,lo16(_inline_fp_rtx)
	or	 r3,r0,r24
@L1281:
	bsr	 _plus_constant
@L1282:
	or	 r4,r0,r2
	or	 r2,r0,37
	or	 r3,r0,r22
	bsr.n	 _gen_rtx
	addu	 r1,r1,@L1457
@L1458:
	align	 4
@L1170:
	bsr.n	 _copy_rtx_and_substitute
	or	 r2,r0,r23
	or.u	 r9,r0,hi16(_frame_pointer_rtx)
	or	 r23,r0,r2
	or	 r2,r0,44
	or	 r3,r0,4
	ld	 r4,r9,lo16(_frame_pointer_rtx)
	bsr.n	 _gen_rtx
	or	 r5,r0,r23
	or.u	 r9,r0,hi16(_fp_delta)
	bsr.n	 _plus_constant
	ld	 r3,r9,lo16(_fp_delta)
	or	 r4,r0,r2
	or	 r2,r0,4
	or	 r3,r0,r4
	bsr.n	 _memory_address
	addu	 r1,r1,@L1459
@L1460:
	align	 4
@L1165:
	bsr.n	 _reg_mentioned_p
	or	 r3,r0,r23
	bcnd	 eq0,r2,@L1187
	ld	 r2,r23,4
	ld.hu	 r13,r0,r2
	cmp	 r13,r13,30
	bb1	 ne,r13,@L1188
	bsr.n	 _copy_rtx_and_substitute
	ld	 r2,r23,8
	ld	 r13,r23,4
	ld	 r3,r13,4
	bsr.n	 _plus_constant
	addu	 r1,r1,@L1461
@L1462:
	align	 4
@L1188:
	ld	 r13,r23,8
	ld.hu	 r13,r0,r13
	cmp	 r13,r13,30
	bb1	 ne,r13,@L1190
	bsr	 _copy_rtx_and_substitute
	ld	 r13,r23,8
	ld	 r3,r13,4
	bsr.n	 _plus_constant
	addu	 r1,r1,@L1463
@L1464:
	align	 4
@L1190:
	bsr.n	 _copy_rtx_and_substitute
	ld.bu	 r24,r23,2
	or	 r25,r0,r2
	bsr.n	 _copy_rtx_and_substitute
	ld	 r2,r23,8
	or	 r5,r0,r2
	or	 r2,r0,44
	or	 r3,r0,r24
	or	 r4,r0,r25
	bsr.n	 _gen_rtx
	addu	 r1,r1,@L1465
@L1466:
	align	 4
@L1187:
	ld	 r12,r23,8
	ld.hu	 r13,r0,r12
	cmp	 r13,r13,30
	bb1	 ne,r13,@L1193
	bsr.n	 _copy_rtx_and_substitute
	ld	 r2,r23,4
	ld	 r13,r23,8
	ld	 r3,r13,4
	bsr.n	 _plus_constant
	addu	 r1,r1,@L1467
@L1468:
	align	 4
@L1193:
	ld	 r2,r23,4
	ld.hu	 r13,r0,r2
	cmp	 r13,r13,30
	bb1	 ne,r13,@L1195
	bsr.n	 _copy_rtx_and_substitute
	or	 r2,r0,r12
	ld	 r13,r23,4
	ld	 r3,r13,4
	bsr.n	 _plus_constant
	addu	 r1,r1,@L1469
@L1470:
	align	 4
@L1195:
	bsr	 _copy_rtx_and_substitute
	or	 r25,r0,r2
	bsr.n	 _copy_rtx_and_substitute
	ld	 r2,r23,8
	ld.bu	 r3,r23,2
	or	 r5,r0,r2
	or	 r2,r0,44
	or	 r4,r0,r25
	bsr.n	 _gen_rtx
	addu	 r1,r1,@L1471
@L1472:
	align	 4
@L1164:
	bsr.n	 _copy_rtx_and_substitute
	or	 r2,r0,r23
@L1284:
	or	 r4,r0,r2
	or	 r2,r0,r19
@L1283:
	or	 r3,r0,r22
	bsr.n	 _change_address
	addu	 r1,r1,@L1473
@L1474:
	align	 4
@L1198:
	bsr	 _abort
	align	 4
@L1121:
	bsr.n	 _rtx_alloc
	or	 r2,r0,r15
	or	 r23,r0,r2
	st.b	 r22,r23,2
	ld	 r13,r0,r23
	ld	 r12,r0,r19
	and	 r13,r13,0xfff7
	mask	 r12,r12,8
	or	 r13,r13,r12
	st	 r13,r0,r23
	ld	 r12,r0,r19
	and	 r13,r13,0xffef
	mask	 r12,r12,16
	or	 r13,r13,r12
	st	 r13,r0,r23
	ld	 r12,r0,r19
	and	 r13,r13,0xffdf
	mask	 r12,r12,32
	or.u	 r11,r0,hi16(_rtx_format)
	or	 r13,r13,r12
	st	 r13,r0,r23
	or.u	 r13,r0,hi16(_rtx_length)
	ld.hu	 r12,r0,r23
	or	 r10,r13,lo16(_rtx_length)
	or	 r11,r11,lo16(_rtx_format)
	ld	 r13,r10[r12]
	ld	 r16,r11[r12]
	bcnd.n	 le0,r13,@L1202
	or	 r17,r0,0
	or	 r20,r0,r19
	or	 r21,r0,r23
@L1204:
	ld.b	 r12,r0,r16
	cmp	 r13,r12,101
	bb0.n	 ne,r13,@L1207
	addu	 r16,r16,1
	bb1.n	 gt,r13,@L1220
	cmp	 r13,r12,115
	cmp	 r13,r12,48
	bb1.n	 eq,r13,@L1203
	cmp	 r13,r12,69
	bb0	 ne,r13,@L1209
	br	 @L1218
	align	 4
@L1220:
	bb0	 ne,r13,@L1217
	bb1.n	 gt,r13,@L1221
	cmp	 r13,r12,117
	cmp	 r13,r12,105
	bb0	 ne,r13,@L1217
	br	 @L1218
	align	 4
@L1221:
	bb0.n	 ne,r13,@L1208
	or.u	 r12,r0,hi16(_insn_map)
	br	 @L1218
	align	 4
@L1207:
	bsr.n	 _copy_rtx_and_substitute
	ld	 r2,r20,4
	br.n	 @L1203
	st	 r2,r21,4
	align	 4
@L1208:
	ld	 r13,r20,4
	ld	 r11,r13,4
	ld	 r13,r12,lo16(_insn_map)
	ld	 r13,r13[r11]
	br.n	 @L1203
	st	 r13,r21,4
	align	 4
@L1209:
	ld	 r13,r20,4
	st	 r13,r21,4
	ld	 r2,r20,4
	bcnd	 eq0,r2,@L1203
	ld	 r2,r0,r2
	bcnd.n	 eq0,r2,@L1300
	or.u	 r9,r0,hi16(_rtx_length)
	bsr.n	 _rtvec_alloc
	or	 r24,r0,0
	st	 r2,r21,4
	ld	 r13,r0,r2
	bcnd.n	 eq0,r13,@L1203
	or	 r18,r0,r20
	or	 r22,r0,r21
	or	 r25,r0,0
@L1214:
	ld	 r13,r18,4
	addu	 r13,r13,r25
	bsr.n	 _copy_rtx_and_substitute
	ld	 r2,r13,4
	ld	 r13,r22,4
	addu	 r13,r13,r25
	st	 r2,r13,4
	ld	 r13,r22,4
	ld	 r13,r0,r13
	addu	 r24,r24,1
	cmp	 r13,r24,r13
	bb1.n	 lo,r13,@L1214
	addu	 r25,r25,4
	br.n	 @L1300
	or.u	 r9,r0,hi16(_rtx_length)
	align	 4
@L1217:
	ld	 r13,r20,4
	br.n	 @L1203
	st	 r13,r21,4
	align	 4
@L1218:
	bsr	 _abort
	align	 4
@L1203:
	or.u	 r9,r0,hi16(_rtx_length)
@L1300:
	ld.hu	 r13,r0,r23
	or	 r9,r9,lo16(_rtx_length)
	ld	 r13,r9[r13]
	addu	 r17,r17,1
	addu	 r20,r20,4
	cmp	 r13,r17,r13
	bb1.n	 lt,r13,@L1204
	addu	 r21,r21,4
@L1202:
	cmp	 r13,r15,22
	bb1.n	 ne,r13,@L1119
	or	 r2,r0,r23
	or.u	 r12,r0,hi16(_orig_asm_operands_vector)
	ld	 r13,r12,lo16(_orig_asm_operands_vector)
	bcnd	 ne0,r13,@L1119
	ld	 r13,r19,16
	st	 r13,r12,lo16(_orig_asm_operands_vector)
	ld	 r12,r23,16
	or.u	 r13,r0,hi16(_copy_asm_operands_vector)
	st	 r12,r13,lo16(_copy_asm_operands_vector)
	or	 r2,r0,r23
@L1119:
	ld	 r9,r31,124
	ld	 r13,r9,4
	lda	 r13,r13[r14]
	st	 r2,r13,4
	ld	 r13,r9,4
	ld	 r13,r0,r13
	addu	 r14,r14,1
	cmp	 r13,r14,r13
	bb1	 hs,r13,@L1002
	br	 @L1118
	align	 4
@L1226:
	ld	 r9,r31,132
	ld	 r13,r9,4
	ld	 r9,r31,140
	br.n	 @L1002
	st	 r13,r9,4
	align	 4
@L1227:
	bsr	 _abort
	align	 4
@L1002:
	ld	 r9,r31,92
	or.u	 r13,r0,hi16(_rtx_length)
	ld.hu	 r12,r0,r9
	or	 r13,r13,lo16(_rtx_length)
	ld	 r9,r31,100
	ld	 r13,r13[r12]
	addu	 r9,r9,1
	st	 r9,r31,100
	ld	 r9,r31,132
	addu	 r9,r9,4
	st	 r9,r31,132
	ld	 r9,r31,100
	cmp	 r13,r9,r13
	ld	 r9,r31,140
	addu	 r9,r9,4
	bb1.n	 lt,r13,@L1003
	st	 r9,r31,140
@L1001:
	ld	 r2,r31,92
@L1232:
@Lte7:
	ld	 r1,r31,80
	ld.d	 r24,r31,72
	ld.d	 r22,r31,64
	ld.d	 r20,r31,56
	ld.d	 r18,r31,48
	ld.d	 r16,r31,40
	ld.d	 r14,r31,32
	jmp.n	 r1
	addu	 r31,r31,144
	def	 @L1473,@L1119-@L1474
	def	 @L1471,@L1284-@L1472
	def	 @L1469,@L1284-@L1470
	def	 @L1467,@L1284-@L1468
	def	 @L1465,@L1284-@L1466
	def	 @L1463,@L1284-@L1464
	def	 @L1461,@L1284-@L1462
	def	 @L1459,@L1284-@L1460
	def	 @L1457,@L1119-@L1458
	def	 @L1455,@L1119-@L1456
	def	 @L1453,@L1282-@L1454
	def	 @L1451,@L1282-@L1452
	def	 @L1449,@L1280-@L1450
	def	 @L1447,@L1279-@L1448
	def	 @L1445,@L1279-@L1446
	def	 @L1443,@L1119-@L1444
	def	 @L1441,@L1119-@L1442
	def	 @L1439,@L1119-@L1440
	def	 @L1437,@L1007-@L1438
	def	 @L1435,@L1276-@L1436
	def	 @L1433,@L1276-@L1434
	def	 @L1431,@L1276-@L1432
	def	 @L1429,@L1276-@L1430
	def	 @L1427,@L1276-@L1428
	def	 @L1425,@L1276-@L1426
	def	 @L1423,@L1276-@L1424
	def	 @L1421,@L1007-@L1422
	def	 @L1419,@L1007-@L1420
	def	 @L1417,@L1274-@L1418
	def	 @L1415,@L1274-@L1416
	def	 @L1413,@L1272-@L1414
	def	 @L1411,@L1271-@L1412
	def	 @L1409,@L1271-@L1410
	def	 @L1407,@L1007-@L1408
	def	 @L1405,@L1007-@L1406
	def	 @L1403,@L1007-@L1404
	def	 @L1401,@L1268-@L1402
	def	 @L1399,@L1268-@L1400
	def	 @L1397,@L1268-@L1398
	def	 @L1395,@L1268-@L1396
	def	 @L1393,@L1268-@L1394
	def	 @L1391,@L1268-@L1392
	def	 @L1389,@L1268-@L1390
	def	 @L1387,@L1388-@L1249
	def	 @L1385,@L1386-@L1249
	def	 @L1383,@L1384-@L1248
	def	 @L1381,@L1265-@L1382
	def	 @L1379,@L1265-@L1380
	def	 @L1377,@L1378-@L1246
	def	 @L1375,@L1232-@L1376
	def	 @L1373,@L781-@L1374
	def	 @L1371,@L1261-@L1372
	def	 @L1369,@L1261-@L1370
	def	 @L1367,@L1261-@L1368
	def	 @L1365,@L1261-@L1366
	def	 @L1363,@L1261-@L1364
	def	 @L1361,@L1261-@L1362
	def	 @L1359,@L1261-@L1360
	def	 @L1357,@L781-@L1358
	def	 @L1355,@L781-@L1356
	def	 @L1353,@L1259-@L1354
	def	 @L1351,@L1259-@L1352
	def	 @L1349,@L1257-@L1350
	def	 @L1347,@L1256-@L1348
	def	 @L1345,@L1256-@L1346
	def	 @L1343,@L781-@L1344
	def	 @L1341,@L781-@L1342
	def	 @L1339,@L781-@L1340
	def	 @L1337,@L1232-@L1338
	def	 @L1335,@L1232-@L1336
	def	 @L1333,@L1252-@L1334
	def	 @L1331,@L1252-@L1332
	def	 @L1329,@L1252-@L1330
	def	 @L1327,@L1252-@L1328
	def	 @L1325,@L1252-@L1326
	def	 @L1323,@L1252-@L1324
	def	 @L1321,@L1252-@L1322
	def	 @L1319,@L1232-@L1320
	def	 @L1317,@L1318-@L1249
	def	 @L1315,@L1316-@L1249
	def	 @L1313,@L1232-@L1314
	def	 @L1311,@L1248-@L1312
	def	 @L1309,@L1247-@L1310
	def	 @L1307,@L1247-@L1308
	def	 @L1305,@L1246-@L1306
	def	 @L1303,@L1232-@L1304
	def	 @L1301,@L1232-@L1302

	align	 8
_try_fold_cc0:
	subu	 r31,r31,96
	st	 r1,r31,80
	st.d	 r24,r31,72
	st.d	 r22,r31,64
	st.d	 r20,r31,56
	st.d	 r18,r31,48
	st.d	 r16,r31,40
	st.d	 r14,r31,32
@Ltb8:
	st	 r2,r31,92
	ld	 r13,r2,16
	ld	 r18,r13,8
	bcnd.n	 ne0,r18,@L1477
	or.u	 r13,r0,hi16(@L1556)
	br.n	 @L1476
	or	 r5,r0,0
	align	 4
@L1477:
	ld.hu	 r15,r0,r18
	ld.bu	 r23,r18,2
	subu	 r11,r15,17
	cmp	 r12,r11,27
	bb0.n	 ls,r12,@L1478
	or	 r13,r13,lo16(@L1556)
	ld	 r13,r13[r11]
	jmp	 r13
	align	 4
@L1556:
	word	 @L1486
	word	 @L1478
	word	 @L1478
	word	 @L1478
	word	 @L1478
	word	 @L1493
	word	 @L1478
	word	 @L1478
	word	 @L1478
	word	 @L1478
	word	 @L1478
	word	 @L1495
	word	 @L1555
	word	 @L1492
	word	 @L1492
	word	 @L1478
	word	 @L1492
	word	 @L1479
	word	 @L1478
	word	 @L1478
	word	 @L1516
	word	 @L1487
	word	 @L1492
	word	 @L1492
	word	 @L1478
	word	 @L1478
	word	 @L1478
	word	 @L1498
	align	 4
@L1479:
	ld	 r25,r18,4
	cmp	 r13,r25,55
	bb1.n	 gt,r13,@L1480
	or.u	 r24,r0,hi16(_reg_map)
	ld	 r13,r0,r18
	bb0.n	 (31-30),r13,@L1481
	or.u	 r13,r0,hi16(_inline_target)
	ld	 r4,r13,lo16(_inline_target)
	bcnd	 ne0,r4,@L1482
	bsr	 _abort
	align	 4
@L1482:
	ld.bu	 r13,r4,2
	cmp	 r13,r23,r13
	bb1.n	 ne,r13,@L1483
	or	 r2,r0,35
	br.n	 @L1476
	or	 r5,r0,r4
	align	 4
@L1483:
	br.n	 @L1606
	or	 r3,r0,r23
	align	 4
@L1481:
	cmp	 r13,r25,14
	bb1.n	 ne,r13,@L1476
	or	 r5,r0,r18
	or.u	 r13,r0,hi16(_fp_delta)
	ld	 r3,r13,lo16(_fp_delta)
	br.n	 @L1607
	or	 r2,r0,r18
	align	 4
@L1480:
	ld	 r13,r24,lo16(_reg_map)
	ld	 r13,r13[r25]
	bcnd	 ne0,r13,@L1485
	bsr.n	 _gen_reg_rtx
	or	 r2,r0,r23
	ld	 r13,r24,lo16(_reg_map)
	st	 r2,r13[r25]
@L1485:
	ld	 r13,r24,lo16(_reg_map)
	ld	 r5,r13[r25]
	br	 @L1476
	align	 4
@L1486:
	or.u	 r13,r0,hi16(_label_map)
	ld	 r12,r18,16
	ld	 r13,r13,lo16(_label_map)
	ld	 r5,r13[r12]
	br	 @L1476
	align	 4
@L1487:
	bsr.n	 _rtx_alloc
	or	 r2,r0,38
	or	 r22,r0,r2
	st.b	 r23,r22,2
	ld	 r13,r18,4
	or.u	 r12,r0,hi16(_label_map)
	ld	 r11,r13,16
	ld	 r13,r12,lo16(_label_map)
	ld	 r13,r13[r11]
	or	 r5,r0,r22
	br.n	 @L1476
	st	 r13,r5,4
	align	 4
@L1492:
	br.n	 @L1476
	or	 r5,r0,r18
	align	 4
@L1493:
	or.u	 r13,r0,hi16(_orig_asm_operands_vector)
	ld	 r12,r18,16
	ld	 r13,r13,lo16(_orig_asm_operands_vector)
	cmp	 r13,r13,r12
	bb1	 ne,r13,@L1478
	bsr.n	 _rtx_alloc
	or	 r2,r0,22
	ld	 r13,r18,4
	or	 r22,r0,r2
	st	 r13,r22,4
	ld	 r13,r18,8
	st	 r13,r22,8
	or.u	 r13,r0,hi16(_copy_asm_operands_vector)
	ld	 r12,r18,12
	ld	 r13,r13,lo16(_copy_asm_operands_vector)
	st	 r12,r22,12
	st	 r13,r22,16
	ld	 r13,r18,20
	or	 r5,r0,r22
	br.n	 @L1476
	st	 r13,r5,20
	align	 4
@L1495:
	or.u	 r13,r0,hi16(_optimize)
	ld	 r13,r13,lo16(_optimize)
	bcnd.n	 eq0,r13,@L1497
	or.u	 r13,r0,hi16(_flag_no_function_cse)
	ld	 r13,r13,lo16(_flag_no_function_cse)
	bcnd	 eq0,r13,@L1478
@L1497:
	ld	 r13,r18,4
	ld.bu	 r24,r18,2
	ld	 r2,r13,4
	bsr.n	 _copy_rtx_and_substitute
	ld.bu	 r25,r13,2
	or	 r4,r0,r2
	or	 r2,r0,37
	bsr.n	 _gen_rtx
	or	 r3,r0,r25
	or	 r25,r0,r2
	bsr.n	 _copy_rtx_and_substitute
	ld	 r2,r18,8
	or	 r5,r0,r2
	or	 r2,r0,28
	or	 r3,r0,r24
	br.n	 @L1608
	or	 r4,r0,r25
	align	 4
@L1498:
	or.u	 r13,r0,hi16(_frame_pointer_rtx)
	ld	 r3,r18,4
	ld	 r2,r13,lo16(_frame_pointer_rtx)
	cmp	 r12,r3,r2
	bb0	 ne,r12,@L1502
	ld	 r13,r18,8
	cmp	 r13,r13,r2
	bb1	 ne,r13,@L1499
	bb0.n	 ne,r12,@L1502
	or.u	 r13,r0,hi16(_arg_pointer_rtx)
	ld	 r13,r13,lo16(_arg_pointer_rtx)
	cmp	 r13,r3,r13
	bb1.n	 ne,r13,@L1501
	or	 r22,r0,r3
@L1502:
	ld	 r22,r18,8
@L1501:
	ld.hu	 r13,r0,r22
	cmp	 r13,r13,30
	bb1	 ne,r13,@L1504
	ld	 r5,r22,4
	bcnd.n	 le0,r5,@L1505
	or.u	 r13,r0,hi16(_parm_map)
	ld	 r12,r13,lo16(_parm_map)
	ext	 r13,r5,0<2>
	ld	 r22,r12[r13]
	ld	 r5,r22,4
	br	 @L1476
	align	 4
@L1505:
	or.u	 r13,r0,hi16(_fp_delta)
	or	 r2,r0,30
	ld	 r4,r13,lo16(_fp_delta)
	or	 r3,r0,4
	or.u	 r13,r0,hi16(_frame_pointer_rtx)
	addu	 r4,r5,r4
	bsr.n	 _gen_rtx
	ld	 r25,r13,lo16(_frame_pointer_rtx)
	or	 r5,r0,r2
	or	 r2,r0,44
	or	 r3,r0,r23
	br.n	 @L1608
	or	 r4,r0,r25
	align	 4
@L1504:
	bsr.n	 _copy_rtx_and_substitute
	or	 r2,r0,r22
	or	 r22,r0,r2
	or	 r2,r0,44
	or.u	 r13,r0,hi16(_frame_pointer_rtx)
	or	 r3,r0,r23
	ld	 r4,r13,lo16(_frame_pointer_rtx)
	bsr.n	 _gen_rtx
	or	 r5,r0,r22
	or	 r3,r0,r2
	bsr.n	 _force_reg
	or	 r2,r0,r23
	or.u	 r13,r0,hi16(_fp_delta)
	ld	 r3,r13,lo16(_fp_delta)
@L1607:
	bsr	 _plus_constant
	br.n	 @L1476
	or	 r5,r0,r2
	align	 4
@L1499:
	bsr.n	 _reg_mentioned_p
	or	 r3,r0,r18
	bcnd.n	 eq0,r2,@L1508
	or	 r2,r0,r23
	bsr.n	 _memory_address_p
	or	 r3,r0,r18
	bcnd	 eq0,r2,@L1508
	ld	 r2,r18,4
	ld.hu	 r13,r0,r2
	cmp	 r13,r13,30
	bb1	 ne,r13,@L1510
	bsr.n	 _copy_rtx_and_substitute
	ld	 r2,r18,8
	ld	 r13,r18,4
	ld	 r3,r13,4
	bsr.n	 _plus_constant
	addu	 r1,r1,@L1619
@L1620:
	align	 4
@L1510:
	ld	 r13,r18,8
	ld.hu	 r13,r0,r13
	cmp	 r13,r13,30
	bb1	 ne,r13,@L1512
	bsr	 _copy_rtx_and_substitute
	ld	 r13,r18,8
	ld	 r3,r13,4
	bsr.n	 _plus_constant
	addu	 r1,r1,@L1621
@L1622:
	align	 4
@L1512:
	bsr.n	 _copy_rtx_and_substitute
	ld.bu	 r24,r18,2
	or	 r25,r0,r2
	bsr.n	 _copy_rtx_and_substitute
	ld	 r2,r18,8
	or	 r5,r0,r2
	or	 r2,r0,44
	or	 r3,r0,r24
	bsr.n	 _gen_rtx
	or	 r4,r0,r25
@L1609:
	or	 r4,r0,r2
	or	 r2,r0,r23
	or	 r3,r0,r4
	bsr.n	 _memory_address
	addu	 r1,r1,@L1623
@L1624:
	align	 4
@L1508:
	ld	 r2,r18,4
	bsr.n	 _copy_rtx_and_substitute
	ld.bu	 r24,r18,2
	or	 r25,r0,r2
	bsr.n	 _copy_rtx_and_substitute
	ld	 r2,r18,8
	or	 r5,r0,r2
	or	 r2,r0,44
	or	 r3,r0,r24
	bsr.n	 _gen_rtx
	or	 r4,r0,r25
@L1610:
	or	 r4,r0,r2
	br.n	 @L1476
	or	 r5,r0,r4
	align	 4
@L1516:
	or.u	 r13,r0,hi16(_frame_pointer_rtx)
	ld	 r22,r18,4
	ld	 r2,r13,lo16(_frame_pointer_rtx)
	cmp	 r13,r22,r2
	bb0.n	 ne,r13,@L1518
	or.u	 r13,r0,hi16(_arg_pointer_rtx)
	ld	 r13,r13,lo16(_arg_pointer_rtx)
	cmp	 r13,r22,r13
	bb1	 ne,r13,@L1517
@L1518:
	or.u	 r13,r0,hi16(_fp_delta)
	ld	 r3,r13,lo16(_fp_delta)
	br	 @L1611
	align	 4
@L1517:
	ld.hu	 r13,r0,r22
	cmp	 r13,r13,63
	bb1.n	 ne,r13,@L1616
	or	 r2,r0,r23
	or.u	 r13,r0,hi16(_stack_pointer_rtx)
	ld	 r12,r22,4
	ld	 r13,r13,lo16(_stack_pointer_rtx)
	cmp	 r12,r12,r13
	bb1	 ne,r12,@L1519
	or	 r2,r0,r22
	bsr.n	 _copy_rtx_and_substitute
	addu	 r1,r1,@L1625
@L1626:
	align	 4
@L1519:
@L1616:
	bsr.n	 _memory_address_p
	or	 r3,r0,r22
	bcnd.n	 ne0,r2,@L1520
	or	 r2,r0,r22
	bsr.n	 _copy_address
	addu	 r1,r1,@L1627
@L1628:
	align	 4
@L1520:
	ld.hu	 r13,r0,r22
	cmp	 r13,r13,44
	bb1.n	 ne,r13,@L1521
	or.u	 r13,r0,hi16(_frame_pointer_rtx)
	ld	 r12,r22,4
	ld	 r2,r13,lo16(_frame_pointer_rtx)
	cmp	 r11,r12,r2
	bb0	 ne,r11,@L1525
	ld	 r13,r22,8
	cmp	 r13,r13,r2
	bb1	 ne,r13,@L1522
	bb0.n	 ne,r11,@L1525
	or.u	 r13,r0,hi16(_arg_pointer_rtx)
	ld	 r13,r13,lo16(_arg_pointer_rtx)
	cmp	 r13,r12,r13
	bb1	 ne,r13,@L1524
@L1525:
	ld	 r2,r22,4
	ld	 r22,r22,8
	br	 @L1526
	align	 4
@L1524:
	or	 r22,r0,r12
@L1526:
	ld.hu	 r13,r0,r22
	cmp	 r13,r13,30
	bb1.n	 ne,r13,@L1527
	or.u	 r13,r0,hi16(_arg_pointer_rtx)
	ld	 r13,r13,lo16(_arg_pointer_rtx)
	cmp	 r13,r2,r13
	ld	 r24,r22,4
	bb1.n	 ne,r13,@L1617
	or.u	 r13,r0,hi16(_fp_delta)
	or.u	 r10,r0,hi16(_first_parm_offset)
	ld	 r13,r10,lo16(_first_parm_offset)
	cmp	 r13,r24,r13
	bb0	 ge,r13,@L1528
	bcnd.n	 ge0,r24,@L1529
	or	 r3,r0,r24
	addu	 r3,r24,3
@L1529:
	or.u	 r11,r0,hi16(_parm_map)
	ext	 r3,r3,0<2>
	ld	 r13,r11,lo16(_parm_map)
	or	 r2,r0,r3
	mak	 r12,r2,0<2>
	ld	 r13,r13[r2]
	bcnd.n	 ne0,r13,@L1532
	subu	 r3,r24,r12
	or	 r12,r0,r11
@L1533:
	ld	 r13,r10,lo16(_first_parm_offset)
	bcnd.n	 ge0,r13,@L1535
	subu	 r2,r2,1
	addu	 r13,r13,3
@L1535:
	ext	 r13,r13,0<2>
	cmp	 r13,r2,r13
	bb1	 ge,r13,@L1534
	bsr	 _abort
	align	 4
@L1534:
	ld	 r13,r12,lo16(_parm_map)
	ld	 r13,r13[r2]
	bcnd.n	 eq0,r13,@L1533
	addu	 r3,r3,4
@L1532:
	or.u	 r13,r0,hi16(_parm_map)
	ld	 r13,r13,lo16(_parm_map)
	ld	 r22,r13[r2]
	or.u	 r13,r0,hi16(_mode_size)
	ld.bu	 r12,r22,2
	or	 r10,r13,lo16(_mode_size)
	ld	 r11,r10[r12]
	cmp	 r13,r11,3
	bb1.n	 gt,r13,@L1537
	subu	 r13,r3,4
	addu	 r3,r13,r11
@L1537:
	ld.bu	 r13,r22,2
	cmp	 r13,r13,r23
	bb0.n	 ne,r13,@L1476
	or	 r5,r0,r22
	bcnd	 eq0,r12,@L1476
	ld.hu	 r12,r0,r22
	cmp	 r13,r12,37
	bb1.n	 ne,r13,@L1539
	cmp	 r13,r12,34
	bsr.n	 _plus_constant
	ld	 r2,r22,4
	or	 r4,r0,r2
	br.n	 @L1613
	or	 r2,r0,r22
	align	 4
@L1539:
	bb1	 ne,r13,@L1540
	ld	 r13,r10[r23]
	addu	 r13,r3,r13
	cmp	 r13,r13,r11
	bb0.n	 ne,r13,@L1541
	or	 r2,r0,35
	bsr	 _abort
	align	 4
@L1541:
	or	 r3,r0,r23
	or	 r4,r0,r22
@L1606:
	or	 r5,r0,0
@L1608:
	bsr	 _gen_rtx
	br.n	 @L1476
	or	 r5,r0,r2
	align	 4
@L1540:
	bsr	 _abort
	align	 4
@L1528:
	or.u	 r13,r0,hi16(_fp_delta)
@L1617:
	or	 r2,r0,30
	ld	 r4,r13,lo16(_fp_delta)
	or	 r3,r0,4
	or.u	 r13,r0,hi16(_frame_pointer_rtx)
	addu	 r4,r24,r4
	bsr.n	 _gen_rtx
	ld	 r25,r13,lo16(_frame_pointer_rtx)
	or	 r5,r0,r2
	or	 r2,r0,44
	or	 r3,r0,4
	bsr.n	 _gen_rtx
	or	 r4,r0,r25
	or	 r4,r0,r2
	or	 r2,r0,4
	bsr.n	 _memory_address_p
	or	 r3,r0,r4
	bcnd.n	 ne0,r2,@L1527
	or.u	 r13,r0,hi16(_inline_fp_rtx)
	ld	 r2,r13,lo16(_inline_fp_rtx)
	or	 r3,r0,r24
@L1611:
	bsr	 _plus_constant
@L1612:
	or	 r4,r0,r2
	or	 r2,r0,37
	bsr.n	 _gen_rtx
	or	 r3,r0,r23
	br.n	 @L1476
	or	 r5,r0,r2
	align	 4
@L1527:
	bsr.n	 _copy_rtx_and_substitute
	or	 r2,r0,r22
	or	 r22,r0,r2
	or	 r2,r0,44
	or.u	 r13,r0,hi16(_frame_pointer_rtx)
	or	 r3,r0,4
	ld	 r4,r13,lo16(_frame_pointer_rtx)
	bsr.n	 _gen_rtx
	or	 r5,r0,r22
	or.u	 r13,r0,hi16(_fp_delta)
	bsr.n	 _plus_constant
	ld	 r3,r13,lo16(_fp_delta)
	or	 r4,r0,r2
	or	 r2,r0,4
	or	 r3,r0,r4
	bsr.n	 _memory_address
	addu	 r1,r1,@L1629
@L1630:
	align	 4
@L1522:
	bsr.n	 _reg_mentioned_p
	or	 r3,r0,r22
	bcnd	 eq0,r2,@L1544
	ld	 r2,r22,4
	ld.hu	 r13,r0,r2
	cmp	 r13,r13,30
	bb1	 ne,r13,@L1545
	bsr.n	 _copy_rtx_and_substitute
	ld	 r2,r22,8
	ld	 r13,r22,4
	ld	 r3,r13,4
	bsr.n	 _plus_constant
	addu	 r1,r1,@L1631
@L1632:
	align	 4
@L1545:
	ld	 r13,r22,8
	ld.hu	 r13,r0,r13
	cmp	 r13,r13,30
	bb1	 ne,r13,@L1547
	bsr	 _copy_rtx_and_substitute
	ld	 r13,r22,8
	ld	 r3,r13,4
	bsr.n	 _plus_constant
	addu	 r1,r1,@L1633
@L1634:
	align	 4
@L1547:
	bsr.n	 _copy_rtx_and_substitute
	ld.bu	 r24,r22,2
	or	 r25,r0,r2
	bsr.n	 _copy_rtx_and_substitute
	ld	 r2,r22,8
	or	 r5,r0,r2
	or	 r2,r0,44
	or	 r3,r0,r24
	or	 r4,r0,r25
	bsr.n	 _gen_rtx
	addu	 r1,r1,@L1635
@L1636:
	align	 4
@L1544:
	ld	 r12,r22,8
	ld.hu	 r13,r0,r12
	cmp	 r13,r13,30
	bb1	 ne,r13,@L1550
	bsr.n	 _copy_rtx_and_substitute
	ld	 r2,r22,4
	ld	 r13,r22,8
	ld	 r3,r13,4
	bsr.n	 _plus_constant
	addu	 r1,r1,@L1637
@L1638:
	align	 4
@L1550:
	ld	 r2,r22,4
	ld.hu	 r13,r0,r2
	cmp	 r13,r13,30
	bb1	 ne,r13,@L1552
	bsr.n	 _copy_rtx_and_substitute
	or	 r2,r0,r12
	ld	 r13,r22,4
	ld	 r3,r13,4
	bsr.n	 _plus_constant
	addu	 r1,r1,@L1639
@L1640:
	align	 4
@L1552:
	bsr	 _copy_rtx_and_substitute
	or	 r25,r0,r2
	bsr.n	 _copy_rtx_and_substitute
	ld	 r2,r22,8
	ld.bu	 r3,r22,2
	or	 r5,r0,r2
	or	 r2,r0,44
	or	 r4,r0,r25
	bsr.n	 _gen_rtx
	addu	 r1,r1,@L1641
@L1642:
	align	 4
@L1521:
	bsr.n	 _copy_rtx_and_substitute
	or	 r2,r0,r22
@L1614:
	or	 r4,r0,r2
	or	 r2,r0,r18
@L1613:
	bsr.n	 _change_address
	or	 r3,r0,r23
	br.n	 @L1476
	or	 r5,r0,r2
	align	 4
@L1555:
	bsr	 _abort
	align	 4
@L1478:
	bsr.n	 _rtx_alloc
	or	 r2,r0,r15
	or	 r22,r0,r2
	st.b	 r23,r22,2
	ld	 r13,r0,r22
	ld	 r12,r0,r18
	and	 r13,r13,0xfff7
	mask	 r12,r12,8
	or	 r13,r13,r12
	st	 r13,r0,r22
	ld	 r12,r0,r18
	and	 r13,r13,0xffef
	mask	 r12,r12,16
	or	 r13,r13,r12
	st	 r13,r0,r22
	ld	 r12,r0,r18
	and	 r13,r13,0xffdf
	mask	 r12,r12,32
	or	 r13,r13,r12
	st	 r13,r0,r22
	or.u	 r13,r0,hi16(_rtx_format)
	or.u	 r12,r0,hi16(_rtx_length)
	ld.hu	 r11,r0,r22
	or	 r10,r12,lo16(_rtx_length)
	or	 r13,r13,lo16(_rtx_format)
	ld	 r12,r10[r11]
	ld	 r16,r13[r11]
	bcnd.n	 le0,r12,@L1559
	or	 r17,r0,0
	or	 r14,r0,r10
	or	 r20,r0,r18
	or	 r21,r0,r22
@L1561:
	ld.b	 r12,r0,r16
	cmp	 r13,r12,101
	bb0.n	 ne,r13,@L1564
	addu	 r16,r16,1
	bb1.n	 gt,r13,@L1577
	cmp	 r13,r12,115
	cmp	 r13,r12,48
	bb1.n	 eq,r13,@L1560
	cmp	 r13,r12,69
	bb0	 ne,r13,@L1566
	br	 @L1575
	align	 4
@L1577:
	bb0	 ne,r13,@L1574
	bb1.n	 gt,r13,@L1578
	cmp	 r13,r12,117
	cmp	 r13,r12,105
	bb0	 ne,r13,@L1574
	br	 @L1575
	align	 4
@L1578:
	bb0.n	 ne,r13,@L1565
	or.u	 r12,r0,hi16(_insn_map)
	br	 @L1575
	align	 4
@L1564:
	bsr.n	 _copy_rtx_and_substitute
	ld	 r2,r20,4
	br.n	 @L1560
	st	 r2,r21,4
	align	 4
@L1565:
	ld	 r13,r20,4
	ld	 r11,r13,4
	ld	 r13,r12,lo16(_insn_map)
	ld	 r13,r13[r11]
	br.n	 @L1560
	st	 r13,r21,4
	align	 4
@L1566:
	ld	 r13,r20,4
	st	 r13,r21,4
	ld	 r2,r20,4
	bcnd	 eq0,r2,@L1560
	ld	 r2,r0,r2
	bcnd	 eq0,r2,@L1560
	bsr.n	 _rtvec_alloc
	or	 r24,r0,0
	st	 r2,r21,4
	ld	 r13,r0,r2
	bcnd.n	 eq0,r13,@L1560
	or	 r19,r0,r20
	or	 r23,r0,r21
	or	 r25,r0,0
@L1571:
	ld	 r13,r19,4
	addu	 r13,r13,r25
	bsr.n	 _copy_rtx_and_substitute
	ld	 r2,r13,4
	ld	 r13,r23,4
	addu	 r13,r13,r25
	st	 r2,r13,4
	ld	 r13,r23,4
	ld	 r13,r0,r13
	addu	 r24,r24,1
	cmp	 r13,r24,r13
	bb1.n	 lo,r13,@L1571
	addu	 r25,r25,4
	br	 @L1560
	align	 4
@L1574:
	ld	 r13,r20,4
	br.n	 @L1560
	st	 r13,r21,4
	align	 4
@L1575:
	bsr	 _abort
	align	 4
@L1560:
	ld.hu	 r13,r0,r22
	ld	 r13,r14[r13]
	addu	 r17,r17,1
	addu	 r20,r20,4
	cmp	 r13,r17,r13
	bb1.n	 lt,r13,@L1561
	addu	 r21,r21,4
@L1559:
	cmp	 r13,r15,22
	bb1.n	 ne,r13,@L1476
	or	 r5,r0,r22
	or.u	 r12,r0,hi16(_orig_asm_operands_vector)
	ld	 r13,r12,lo16(_orig_asm_operands_vector)
	bcnd	 ne0,r13,@L1476
	ld	 r13,r18,16
	st	 r13,r12,lo16(_orig_asm_operands_vector)
	ld	 r12,r22,16
	or.u	 r13,r0,hi16(_copy_asm_operands_vector)
	st	 r12,r13,lo16(_copy_asm_operands_vector)
	or	 r5,r0,r22
@L1476:
	ld.hu	 r12,r0,r5
	subu	 r13,r12,38
	mask	 r13,r13,0xffff
	cmp	 r13,r13,1
	bb1.n	 ls,r13,@L1582
	mask	 r13,r12,0xffff
	cmp	 r12,r13,30
	cmp	 r13,r13,32
	or	 r12,r12,r13
	extu	 r12,r12,1<eq>
	bcnd.n	 eq0,r12,@L1601
	or	 r2,r0,0
@L1582:
	ld	 r9,r31,92
	ld	 r13,r9,12
	bcnd	 eq0,r13,@L1581
	ld	 r11,r13,16
	ld.hu	 r13,r0,r11
	cmp	 r13,r13,25
	bb0.n	 eq,r13,@L1601
	or	 r2,r0,0
	or.u	 r13,r0,hi16(_pc_rtx)
	ld	 r12,r11,4
	ld	 r13,r13,lo16(_pc_rtx)
	cmp	 r12,r12,r13
	bb0	 eq,r12,@L1601
	ld	 r11,r11,8
	ld.hu	 r13,r0,r11
	cmp	 r13,r13,42
	bb0	 eq,r13,@L1601
	ld	 r2,r11,4
	or.u	 r13,r0,hi16(_rtx_length)
	ld.hu	 r12,r0,r2
	or	 r13,r13,lo16(_rtx_length)
	ld	 r13,r13[r12]
	cmp	 r13,r13,2
	bb0.n	 eq,r13,@L1581
	or.u	 r12,r0,hi16(_cc0_rtx)
	ld	 r13,r2,4
	ld	 r12,r12,lo16(_cc0_rtx)
	cmp	 r13,r13,r12
	bb1.n	 ne,r13,@L1618
	or.u	 r13,r0,hi16(_cc0_rtx)
	ld	 r6,r2,8
	ld.hu	 r12,r0,r6
	subu	 r13,r12,38
	mask	 r13,r13,0xffff
	cmp	 r13,r13,1
	bb1.n	 ls,r13,@L1586
	mask	 r13,r12,0xffff
	cmp	 r12,r13,30
	cmp	 r13,r13,32
	or	 r12,r12,r13
	extu	 r12,r12,1<eq>
	bcnd.n	 eq0,r12,@L1618
	or.u	 r13,r0,hi16(_cc0_rtx)
@L1586:
	bcnd.n	 ne0,r6,@L1584
	or.u	 r13,r0,hi16(_cc0_rtx)
@L1618:
	ld	 r12,r2,8
	ld	 r13,r13,lo16(_cc0_rtx)
	cmp	 r12,r12,r13
	bb0	 eq,r12,@L1581
	ld	 r6,r2,4
	ld.hu	 r12,r0,r6
	subu	 r13,r12,38
	mask	 r13,r13,0xffff
	cmp	 r13,r13,1
	bb1.n	 ls,r13,@L1587
	mask	 r13,r12,0xffff
	cmp	 r12,r13,30
	cmp	 r13,r13,32
	or	 r12,r12,r13
	extu	 r12,r12,1<eq>
	bcnd	 eq0,r12,@L1581
@L1587:
	bcnd	 eq0,r6,@L1581
@L1584:
	ld	 r3,r11,8
	bsr.n	 _fold_out_const_cc0
	ld	 r4,r11,12
	bcnd	 eq0,r2,@L1581
	ld.hu	 r13,r0,r2
	cmp	 r13,r13,38
	bb1	 ne,r13,@L1589
	ld	 r9,r31,92
	ld	 r11,r9,12
	bcnd	 eq0,r11,@L1602
@L1594:
	ld.hu	 r13,r0,r11
	cmp	 r13,r13,17
	bb0	 ne,r13,@L1591
	ld	 r11,r11,12
	bcnd	 ne0,r11,@L1594
@L1591:
	bcnd.n	 ne0,r11,@L1595
	or.u	 r13,r0,hi16(_label_map)
@L1602:
	bsr	 _abort
	align	 4
@L1595:
	ld	 r12,r11,16
	ld	 r13,r13,lo16(_label_map)
	ld	 r13,r13[r12]
	ld	 r12,r2,4
	cmp	 r13,r13,r12
	bb1	 ne,r13,@L1596
	ld	 r2,r11,8
	br	 @L1601
	align	 4
@L1596:
	bsr.n	 _emit_jump
	addu	 r1,r1,@L1643
@L1644:
	align	 4
@L1589:
	or.u	 r13,r0,hi16(_pc_rtx)
	ld	 r13,r13,lo16(_pc_rtx)
	cmp	 r13,r2,r13
	bb0	 eq,r13,@L1599
@L1615:
	ld	 r9,r31,92
	ld	 r2,r9,12
	br	 @L1601
	align	 4
@L1599:
	bsr	 _abort
	align	 4
@L1581:
	or	 r2,r0,0
@L1601:
@Lte8:
	ld	 r1,r31,80
	ld.d	 r24,r31,72
	ld.d	 r22,r31,64
	ld.d	 r20,r31,56
	ld.d	 r18,r31,48
	ld.d	 r16,r31,40
	ld.d	 r14,r31,32
	jmp.n	 r1
	addu	 r31,r31,96
	def	 @L1643,@L1615-@L1644
	def	 @L1641,@L1614-@L1642
	def	 @L1639,@L1614-@L1640
	def	 @L1637,@L1614-@L1638
	def	 @L1635,@L1614-@L1636
	def	 @L1633,@L1614-@L1634
	def	 @L1631,@L1614-@L1632
	def	 @L1629,@L1614-@L1630
	def	 @L1627,@L1612-@L1628
	def	 @L1625,@L1612-@L1626
	def	 @L1623,@L1610-@L1624
	def	 @L1621,@L1609-@L1622
	def	 @L1619,@L1609-@L1620

