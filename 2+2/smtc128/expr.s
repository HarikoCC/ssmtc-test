	file	 "expr.i"
data

; cc1 (2.7.2.2) arguments: -O -fdefer-pop -fomit-frame-pointer
; -fcse-follow-jumps -fcse-skip-blocks -fexpensive-optimizations
; -fthread-jumps -fstrength-reduce -funroll-loops -fwritable-strings
; -fpeephole -fforce-mem -ffunction-cse -finline-functions -finline
; -freg-struct-return -fdelayed-branch -frerun-cse-after-loop
; -fschedule-insns -fschedule-insns2 -fcommon -fgnu-linker -m88110 -m88100
; -m88000 -mno-ocs-debug-info -mno-ocs-frame-position -mcheck-zero-division

gcc2_compiled.:
	global	 _do_preexpand_calls
	align	 4
_do_preexpand_calls:
	word	 1
text
	align	 8
	global	 _init_expr_once
_init_expr_once:
	or.u	 r13,r0,hi16(_stack_pointer_rtx)
	ld	 r4,r13,lo16(_stack_pointer_rtx)
	subu	 r31,r31,96
	st	 r1,r31,80
	st.d	 r24,r31,72
	st.d	 r22,r31,64
	st.d	 r20,r31,56
	or	 r2,r0,55
	st.d	 r18,r31,48
	or	 r3,r0,0
	bsr.n	 _gen_rtx
	st.d	 r16,r31,40
@Ltb0:
	or	 r18,r0,r2
	or.u	 r13,r0,hi16(_frame_pointer_rtx)
	or	 r2,r0,55
	ld	 r4,r13,lo16(_frame_pointer_rtx)
	bsr.n	 _gen_rtx
	or	 r3,r0,0
	bsr.n	 _start_sequence
	or	 r20,r0,r2
	or	 r2,r0,40
	or	 r3,r0,0
	bsr.n	 _gen_rtx
	or	 r4,r0,0
	bsr.n	 _emit_insn
	or	 r25,r0,0
	or	 r21,r0,r2
	or	 r16,r0,1
	or.u	 r13,r0,hi16(_direct_load)
	or.u	 r12,r0,hi16(_direct_store)
	ld	 r24,r21,16
	or	 r17,r13,lo16(_direct_load)
	or	 r19,r12,lo16(_direct_store)
	cmp	 r13,r25,0
@L41:
	st.b	 r0,r25,r19
	cmp	 r12,r25,16
	st.b	 r0,r25,r17
	or	 r13,r13,r12
	st.b	 r25,r18,2
	extu	 r12,r13,1<eq>
	xor	 r13,r12,1
	bcnd.n	 eq0,r13,@L25
	st.b	 r25,r20,2
	ld.b	 r13,r25,r17
	br.n	 @L39
	or	 r22,r0,0
	align	 4
@L29:
@L40:
	or	 r13,r13,lo16(_hard_regno_mode_ok)
	ld	 r13,r13[r22]
	ext	 r13,r13,r25
	bb0.n	 (31-31),r13,@L28
	or	 r2,r0,51
	or	 r3,r0,r25
	bsr.n	 _gen_rtx
	or	 r4,r0,r22
	st	 r18,r24,8
	or	 r23,r0,r2
	or	 r2,r0,r24
	or	 r3,r0,r21
	addu	 r4,r31,88
	bsr.n	 _recog
	st	 r23,r24,4
	bcnd	 lt0,r2,@L32
	st.b	 r16,r25,r17
@L32:
	st	 r20,r24,8
	or	 r2,r0,r24
	or	 r3,r0,r21
	addu	 r4,r31,88
	bsr.n	 _recog
	st	 r23,r24,4
	bcnd	 lt0,r2,@L33
	st.b	 r16,r25,r17
@L33:
	st	 r23,r24,8
	or	 r2,r0,r24
	or	 r3,r0,r21
	addu	 r4,r31,88
	bsr.n	 _recog
	st	 r18,r24,4
	bcnd	 lt0,r2,@L34
	st.b	 r16,r25,r19
@L34:
	st	 r23,r24,8
	or	 r2,r0,r24
	or	 r3,r0,r21
	addu	 r4,r31,88
	bsr.n	 _recog
	st	 r20,r24,4
	bcnd	 lt0,r2,@L28
	st.b	 r16,r25,r19
@L28:
	addu	 r22,r22,1
	cmp	 r13,r22,63
	bb0	 le,r13,@L25
	ld.b	 r13,r25,r17
@L39:
	bcnd.n	 eq0,r13,@L40
	or.u	 r13,r0,hi16(_hard_regno_mode_ok)
	ld.b	 r13,r25,r19
	bcnd.n	 eq0,r13,@L29
	or.u	 r13,r0,hi16(_hard_regno_mode_ok)
@L25:
	or.u	 r13,r0,hi16(_movstr_optab)
	or	 r23,r13,lo16(_movstr_optab)
	or	 r13,r0,210
	st	 r13,r23[r25]
	addu	 r25,r25,1
	cmp	 r13,r25,20
	bb1.n	 le,r13,@L41
	cmp	 r13,r25,0
	bsr	 _end_sequence
	or	 r13,r0,77
	st	 r13,r23,16
@Lte0:
	ld	 r1,r31,80
	ld.d	 r24,r31,72
	ld.d	 r22,r31,64
	ld.d	 r20,r31,56
	ld.d	 r18,r31,48
	ld.d	 r16,r31,40
	jmp.n	 r1
	addu	 r31,r31,96

	align	 8
	global	 _init_expr
_init_expr:
	subu	 r31,r31,48
	st	 r1,r31,36
@Ltb1:
	bsr	 _init_queue
@Lte1:
	ld	 r1,r31,36
	or.u	 r13,r0,hi16(_pending_stack_adjust)
	st	 r0,r13,lo16(_pending_stack_adjust)
	or.u	 r13,r0,hi16(_inhibit_defer_pop)
	st	 r0,r13,lo16(_inhibit_defer_pop)
	or.u	 r13,r0,hi16(_cleanups_this_call)
	st	 r0,r13,lo16(_cleanups_this_call)
	or.u	 r13,r0,hi16(_saveregs_value)
	st	 r0,r13,lo16(_saveregs_value)
	or.u	 r13,r0,hi16(_forced_labels)
	addu	 r31,r31,48
	jmp.n	 r1
	st	 r0,r13,lo16(_forced_labels)

	align	 8
	global	 _save_expr_status
_save_expr_status:
	subu	 r31,r31,48
	st	 r25,r31,32
	st	 r1,r31,36
@Ltb2:
	bsr.n	 _emit_queue
	or	 r25,r0,r2
	or.u	 r5,r0,hi16(_pending_stack_adjust)
	or.u	 r4,r0,hi16(_inhibit_defer_pop)
	ld	 r9,r5,lo16(_pending_stack_adjust)
	or.u	 r6,r0,hi16(_cleanups_this_call)
	ld	 r10,r4,lo16(_inhibit_defer_pop)
	or.u	 r7,r0,hi16(_saveregs_value)
	ld	 r11,r6,lo16(_cleanups_this_call)
	or.u	 r8,r0,hi16(_forced_labels)
	ld	 r13,r7,lo16(_saveregs_value)
	ld	 r12,r8,lo16(_forced_labels)
	st	 r9,r25,212
	st	 r10,r25,216
	st	 r11,r25,220
	st	 r13,r25,224
	st	 r12,r25,228
@Lte2:
	ld	 r1,r31,36
	ld	 r25,r31,32
	st	 r0,r5,lo16(_pending_stack_adjust)
	st	 r0,r4,lo16(_inhibit_defer_pop)
	st	 r0,r6,lo16(_cleanups_this_call)
	st	 r0,r7,lo16(_saveregs_value)
	addu	 r31,r31,48
	jmp.n	 r1
	st	 r0,r8,lo16(_forced_labels)

	align	 8
	global	 _restore_expr_status
_restore_expr_status:
@Ltb3:
	ld	 r8,r2,212
	or.u	 r9,r0,hi16(_pending_stack_adjust)
	st	 r8,r9,lo16(_pending_stack_adjust)
	ld	 r8,r2,216
	or.u	 r9,r0,hi16(_inhibit_defer_pop)
	st	 r8,r9,lo16(_inhibit_defer_pop)
	ld	 r8,r2,220
	or.u	 r9,r0,hi16(_cleanups_this_call)
	st	 r8,r9,lo16(_cleanups_this_call)
	ld	 r8,r2,224
	or.u	 r9,r0,hi16(_saveregs_value)
	st	 r8,r9,lo16(_saveregs_value)
	ld	 r8,r2,228
	or.u	 r9,r0,hi16(_forced_labels)
	jmp.n	 r1
	st	 r8,r9,lo16(_forced_labels)
@Lte3:

	align	 8
	global	 _protect_from_queue
_protect_from_queue:
	subu	 r31,r31,64
	st	 r1,r31,48
	st.d	 r24,r31,40
	or	 r24,r0,r2
	st	 r23,r31,36
@Ltb4:
	ld.hu	 r11,r0,r24
	cmp	 r13,r11,59
	bb0.n	 ne,r13,@L59
	cmp	 r13,r11,55
	bb1.n	 ne,r13,@L68
	cmp	 r13,r11,63
	ld.bu	 r13,r24,2
	cmp	 r13,r13,16
	bb0	 ne,r13,@L60
	ld	 r23,r24,4
	ld.hu	 r13,r0,r23
	cmp	 r12,r3,0
	cmp	 r13,r13,59
	and	 r13,r13,r12
	extu	 r13,r13,1<eq>
	bcnd	 eq0,r13,@L60
	ld	 r13,r23,4
	st	 r13,r24,4
	ld	 r13,r23,8
	bcnd	 eq0,r13,@L63
	bsr.n	 _gen_reg_rtx
	ld.bu	 r2,r24,2
	or	 r25,r0,r2
	bsr.n	 _gen_move_insn
	or	 r3,r0,r24
	bsr.n	 _emit_insn_before
	ld	 r3,r23,8
	br.n	 @L67
	or	 r2,r0,r25
	align	 4
@L60:
	cmp	 r13,r11,55
	bb1.n	 ne,r13,@L62
	cmp	 r13,r11,63
	ld	 r2,r24,4
	bsr.n	 _protect_from_queue
	or	 r3,r0,0
	br.n	 @L63
	st	 r2,r24,4
	align	 4
@L62:
@L68:
	cmp	 r12,r11,66
	or	 r13,r13,r12
	extu	 r13,r13,1<eq>
	bcnd	 eq0,r13,@L63
	ld	 r2,r24,4
	bsr.n	 _protect_from_queue
	or	 r3,r0,0
	st	 r2,r24,4
	ld	 r2,r24,8
	bsr.n	 _protect_from_queue
	or	 r3,r0,0
	st	 r2,r24,8
@L63:
	br.n	 @L67
	or	 r2,r0,r24
	align	 4
@L59:
	ld	 r13,r24,8
	bcnd	 ne0,r13,@L65
	ld	 r2,r24,4
	br	 @L67
	align	 4
@L65:
	ld	 r2,r24,12
	bcnd	 ne0,r2,@L67
	ld	 r13,r24,4
	bsr.n	 _gen_reg_rtx
	ld.bu	 r2,r13,2
	ld	 r3,r24,4
	bsr.n	 _gen_move_insn
	st	 r2,r24,12
	bsr.n	 _emit_insn_before
	ld	 r3,r24,8
	ld	 r2,r24,12
@L67:
@Lte4:
	ld	 r1,r31,48
	ld	 r23,r31,36
	ld.d	 r24,r31,40
	jmp.n	 r1
	addu	 r31,r31,64

	align	 8
_queued_subexp_p:
	subu	 r31,r31,64
	st.d	 r24,r31,40
	or	 r25,r0,r2
	st	 r1,r31,48
@Ltb5:
	ld.hu	 r12,r0,r25
	cmp	 r13,r12,64
	bb0.n	 ls,r13,@L92
	cmp	 r13,r12,63
	bb0.n	 lo,r13,@L87
	cmp	 r13,r12,55
	bb0.n	 ne,r13,@L84
	cmp	 r13,r12,59
	bb0.n	 ne,r13,@L93
	or	 r2,r0,1
	br.n	 @L93
	or	 r2,r0,0
	align	 4
@L92:
	cmp	 r13,r12,66
	bb0.n	 ne,r13,@L87
	or	 r2,r0,0
	br	 @L93
	align	 4
@L84:
	ld	 r2,r25,4
	bsr.n	 _queued_subexp_p
	addu	 r1,r1,@L94
@L95:
	align	 4
@L87:
	ld	 r2,r25,4
	bsr.n	 _queued_subexp_p
	or	 r24,r0,0
	bcnd	 ne0,r2,@L89
	bsr.n	 _queued_subexp_p
	ld	 r2,r25,8
	bcnd.n	 eq0,r2,@L93
	or	 r2,r0,r24
@L89:
	or	 r24,r0,1
	or	 r2,r0,r24
@L93:
@Lte5:
	ld	 r1,r31,48
	ld.d	 r24,r31,40
	jmp.n	 r1
	addu	 r31,r31,64
	def	 @L94,@L93-@L95

	align	 8
	global	 _emit_queue
_emit_queue:
	subu	 r31,r31,64
	or.u	 r13,r0,hi16(_pending_chain)
	st.d	 r24,r31,40
	ld	 r25,r13,lo16(_pending_chain)
	bcnd.n	 eq0,r25,@L103
	st	 r1,r31,48
@Ltb6:
	or	 r24,r0,r13
@L104:
	bsr.n	 _emit_insn
	ld	 r2,r25,16
	ld	 r13,r25,20
	st	 r2,r25,8
	or	 r25,r0,r13
	bcnd.n	 ne0,r25,@L104
	st	 r25,r24,lo16(_pending_chain)
@L103:
@Lte6:
	ld	 r1,r31,48
	ld.d	 r24,r31,40
	jmp.n	 r1
	addu	 r31,r31,64

	align	 8
_init_queue:
	or.u	 r13,r0,hi16(_pending_chain)
	ld	 r13,r13,lo16(_pending_chain)
	subu	 r31,r31,48
	bcnd.n	 eq0,r13,@L110
	st	 r1,r31,36
@Ltb7:
	bsr	 _abort
	align	 4
@L110:
@Lte7:
	ld	 r1,r31,36
	jmp.n	 r1
	addu	 r31,r31,48

	align	 8
	global	 _convert_move
_convert_move:
	subu	 r31,r31,96
	st	 r1,r31,80
	st.d	 r24,r31,72
	st.d	 r22,r31,64
	st.d	 r20,r31,56
	or.u	 r13,r0,hi16(_mode_class)
	st.d	 r18,r31,48
	or	 r21,r0,r2
	st.d	 r16,r31,40
@Ltb8:
	or	 r23,r0,r3
	ld.bu	 r20,r21,2
	or	 r13,r13,lo16(_mode_class)
	ld.bu	 r22,r23,2
	ld	 r12,r13[r20]
	ld	 r13,r13[r22]
	or	 r19,r0,r4
	cmp	 r12,r12,2
	cmp	 r13,r13,2
	extu	 r18,r12,1<eq>
	or	 r17,r0,99
	bcnd.n	 eq0,r19,@L224
	extu	 r16,r13,1<eq>
	or	 r17,r0,100
@L224:
	ld.hu	 r12,r0,r21
	cmp	 r13,r12,59
	bb0.n	 ne,r13,@L227
	cmp	 r13,r12,55
	bb1.n	 ne,r13,@L230
	cmp	 r13,r12,63
	ld	 r2,r21,4
	bsr.n	 _protect_from_queue
	or	 r3,r0,0
	br.n	 @L231
	st	 r2,r21,4
	align	 4
@L230:
	cmp	 r12,r12,66
	or	 r13,r13,r12
	extu	 r13,r13,1<eq>
	bcnd	 eq0,r13,@L231
	ld	 r2,r21,4
	bsr.n	 _protect_from_queue
	or	 r3,r0,0
	st	 r2,r21,4
	ld	 r2,r21,8
	bsr.n	 _protect_from_queue
	or	 r3,r0,0
	st	 r2,r21,8
@L231:
	br.n	 @L226
	or	 r2,r0,r21
	align	 4
@L227:
	ld	 r13,r21,8
	bcnd	 ne0,r13,@L233
	ld	 r2,r21,4
	br	 @L226
	align	 4
@L233:
	ld	 r2,r21,12
	bcnd	 ne0,r2,@L226
	ld	 r13,r21,4
	bsr.n	 _gen_reg_rtx
	ld.bu	 r2,r13,2
	ld	 r3,r21,4
	bsr.n	 _gen_move_insn
	st	 r2,r21,12
	bsr.n	 _emit_insn_before
	ld	 r3,r21,8
	ld	 r2,r21,12
@L226:
	ld.hu	 r12,r0,r23
	cmp	 r13,r12,59
	bb0.n	 ne,r13,@L236
	or	 r21,r0,r2
	cmp	 r13,r12,55
	bb1.n	 ne,r13,@L376
	cmp	 r13,r12,63
	ld.bu	 r13,r23,2
	cmp	 r13,r13,16
	bb0	 ne,r13,@L237
	ld	 r24,r23,4
	ld.hu	 r13,r0,r24
	cmp	 r13,r13,59
	extu	 r13,r13,1<eq>
	bcnd	 eq0,r13,@L237
	ld	 r13,r24,4
	st	 r13,r23,4
	ld	 r13,r24,8
	bcnd	 eq0,r13,@L240
	bsr.n	 _gen_reg_rtx
	ld.bu	 r2,r23,2
	or	 r25,r0,r2
	bsr.n	 _gen_move_insn
	or	 r3,r0,r23
	bsr.n	 _emit_insn_before
	ld	 r3,r24,8
	br.n	 @L235
	or	 r2,r0,r25
	align	 4
@L237:
	cmp	 r13,r12,55
	bb1.n	 ne,r13,@L239
	cmp	 r13,r12,63
	ld	 r2,r23,4
	bsr.n	 _protect_from_queue
	or	 r3,r0,0
	br.n	 @L240
	st	 r2,r23,4
	align	 4
@L239:
@L376:
	cmp	 r12,r12,66
	or	 r13,r13,r12
	extu	 r13,r13,1<eq>
	bcnd	 eq0,r13,@L240
	ld	 r2,r23,4
	bsr.n	 _protect_from_queue
	or	 r3,r0,0
	st	 r2,r23,4
	ld	 r2,r23,8
	bsr.n	 _protect_from_queue
	or	 r3,r0,0
	st	 r2,r23,8
@L240:
	br.n	 @L235
	or	 r2,r0,r23
	align	 4
@L236:
	ld	 r13,r23,8
	bcnd	 ne0,r13,@L242
	ld	 r2,r23,4
	br.n	 @L377
	cmp	 r13,r18,r16
	align	 4
@L242:
	ld	 r2,r23,12
	bcnd.n	 ne0,r2,@L377
	cmp	 r13,r18,r16
	ld	 r13,r23,4
	bsr.n	 _gen_reg_rtx
	ld.bu	 r2,r13,2
	ld	 r3,r23,4
	bsr.n	 _gen_move_insn
	st	 r2,r23,12
	bsr.n	 _emit_insn_before
	ld	 r3,r23,8
	ld	 r2,r23,12
@L235:
	cmp	 r13,r18,r16
@L377:
	bb0.n	 ne,r13,@L244
	or	 r23,r0,r2
	bsr	 _abort
	align	 4
@L244:
	or.u	 r12,r0,0x35
	or	 r12,r12,0x8
	ld	 r11,r0,r23
	and	 r13,r11,0x8
	cmp	 r13,r13,r12
	bb1	 ne,r13,@L378
	ld	 r13,r23,4
	or.u	 r12,r0,hi16(_mode_size)
	ld.bu	 r13,r13,2
	or	 r12,r12,lo16(_mode_size)
	ld	 r13,r12[r13]
	ld	 r12,r12[r20]
	cmp	 r13,r13,r12
	bb0.n	 ge,r13,@L245
	extu	 r13,r11,1<5>
	cmp	 r13,r13,r19
	bb1.n	 ne,r13,@L245
	or	 r2,r0,r20
	or	 r3,r0,r23
	bsr.n	 _gen_lowpart
	or	 r22,r0,r20
	or	 r23,r0,r2
@L245:
	or.u	 r12,r0,0x35
	or	 r12,r12,0x8
@L378:
	ld	 r13,r0,r21
	and	 r13,r13,0x8
	cmp	 r13,r13,r12
	bb1.n	 ne,r13,@L246
	cmp	 r13,r20,r22
	bsr	 _abort
	align	 4
@L246:
	bb0.n	 ne,r13,@L379
	or	 r2,r0,r21
	bcnd	 ne0,r22,@L247
	ld.hu	 r12,r0,r23
	subu	 r13,r12,56
	mask	 r13,r13,0xffff
	cmp	 r13,r13,1
	bb1.n	 ls,r13,@L379
	subu	 r13,r12,46
	mask	 r13,r13,0xffff
	cmp	 r13,r13,1
	bb1.n	 ls,r13,@L379
	mask	 r13,r12,0xffff
	cmp	 r12,r13,49
	cmp	 r13,r13,113
	or	 r12,r12,r13
	extu	 r12,r12,1<eq>
	bcnd	 eq0,r12,@L247
@L379:
	or	 r3,r0,r23
	bsr.n	 _emit_move_insn
	addu	 r1,r1,@L390
@L391:
	align	 4
@L247:
	bcnd.n	 eq0,r18,@L249
	cmp	 r5,r22,8
	cmp	 r13,r20,9
	extu	 r11,r5,1<eq>
	extu	 r7,r13,1<eq>
	and	 r13,r11,r7
	bcnd.n	 ne0,r13,@L370
	or	 r2,r0,108
	cmp	 r6,r20,11
	extu	 r12,r6,1<eq>
	and	 r13,r11,r12
	bcnd.n	 ne0,r13,@L370
	or	 r2,r0,109
	cmp	 r8,r22,9
	extu	 r9,r8,1<eq>
	and	 r13,r9,r12
	bcnd.n	 eq0,r13,@L252
	cmp	 r4,r20,11
	br.n	 @L370
	or	 r2,r0,110
	align	 4
@L252:
	cmp	 r10,r20,8
	extu	 r11,r10,1<eq>
	and	 r13,r9,r11
	bcnd.n	 ne0,r13,@L370
	or	 r2,r0,111
	cmp	 r9,r22,11
	extu	 r12,r9,1<eq>
	and	 r13,r12,r11
	bcnd.n	 ne0,r13,@L370
	or	 r2,r0,112
	and	 r13,r12,r7
	bcnd.n	 eq0,r13,@L255
	cmp	 r12,r20,9
	or	 r2,r0,113
@L370:
	or	 r3,r0,r21
	or	 r4,r0,r23
	or	 r5,r0,0
	bsr.n	 _emit_unop_insn
	addu	 r1,r1,@L392
@L393:
	align	 4
@L255:
	bb0.n	 ne,r8,@L265
	or	 r2,r0,0
	bb0.n	 ls,r8,@L287
	cmp	 r13,r22,10
	bb0.n	 ne,r5,@L257
	cmp	 r13,r20,10
	br	 @L256
	align	 4
@L287:
	bb0	 ne,r13,@L273
	bb0	 ne,r9,@L279
	br	 @L256
	align	 4
@L257:
	bb0	 ne,r13,@L260
	bb0	 ls,r13,@L264
	bb0.n	 ne,r12,@L259
	or.u	 r13,r0,hi16(_extendsfdf2_libfunc)
	br	 @L256
	align	 4
@L264:
	bb0.n	 ne,r4,@L261
	or.u	 r13,r0,hi16(_extendsftf2_libfunc)
	br	 @L256
	align	 4
@L259:
	ld	 r2,r13,lo16(_extendsfdf2_libfunc)
	br	 @L256
	align	 4
@L260:
	or.u	 r13,r0,hi16(_extendsfxf2_libfunc)
	ld	 r2,r13,lo16(_extendsfxf2_libfunc)
	br	 @L256
	align	 4
@L261:
	ld	 r2,r13,lo16(_extendsftf2_libfunc)
	br	 @L256
	align	 4
@L265:
	cmp	 r13,r20,10
	bb0	 ne,r13,@L268
	bb0	 ls,r13,@L272
	bb0.n	 ne,r10,@L267
	or.u	 r13,r0,hi16(_truncdfsf2_libfunc)
	br	 @L256
	align	 4
@L272:
	bb0.n	 ne,r6,@L269
	or.u	 r13,r0,hi16(_extenddftf2_libfunc)
	br	 @L256
	align	 4
@L267:
	ld	 r2,r13,lo16(_truncdfsf2_libfunc)
	br	 @L256
	align	 4
@L268:
	or.u	 r13,r0,hi16(_extenddfxf2_libfunc)
	ld	 r2,r13,lo16(_extenddfxf2_libfunc)
	br	 @L256
	align	 4
@L269:
	ld	 r2,r13,lo16(_extenddftf2_libfunc)
	br	 @L256
	align	 4
@L273:
	bb0.n	 ne,r10,@L275
	or.u	 r13,r0,hi16(_truncxfsf2_libfunc)
	bb0.n	 ne,r12,@L276
	or.u	 r13,r0,hi16(_truncxfdf2_libfunc)
	br	 @L256
	align	 4
@L275:
	ld	 r2,r13,lo16(_truncxfsf2_libfunc)
	br	 @L256
	align	 4
@L276:
	ld	 r2,r13,lo16(_truncxfdf2_libfunc)
	br	 @L256
	align	 4
@L279:
	bb0.n	 ne,r10,@L281
	or.u	 r13,r0,hi16(_trunctfsf2_libfunc)
	bb0.n	 ne,r12,@L282
	or.u	 r13,r0,hi16(_trunctfdf2_libfunc)
	br	 @L256
	align	 4
@L281:
	ld	 r2,r13,lo16(_trunctfsf2_libfunc)
	br	 @L256
	align	 4
@L282:
	ld	 r2,r13,lo16(_trunctfdf2_libfunc)
@L256:
	bcnd.n	 ne0,r2,@L288
	or	 r3,r0,1
	bsr	 _abort
	align	 4
@L288:
	or	 r4,r0,r20
	or	 r5,r0,1
	or	 r6,r0,r23
	bsr.n	 _emit_library_call
	or	 r7,r0,r22
	or	 r2,r0,r20
	bsr.n	 _hard_libcall_value
	addu	 r1,r1,@L394
@L395:
	align	 4
@L249:
	or.u	 r13,r0,hi16(_mode_size)
	or	 r24,r13,lo16(_mode_size)
	ld	 r13,r24[r22]
	ld	 r12,r24[r20]
	mak	 r13,r13,0<3>
	mak	 r11,r12,0<3>
	cmp	 r13,r13,r11
	bb1.n	 ge,r13,@L380
	or.u	 r13,r0,hi16(_mode_size)
	cmp	 r13,r11,32
	bb0.n	 gt,r13,@L289
	addu	 r13,r12,3
	bcnd	 ge0,r13,@L290
	addu	 r13,r12,6
@L290:
	or	 r2,r0,r20
	or	 r3,r0,r22
	or	 r4,r0,r19
	bsr.n	 _can_extend_p
	ext	 r18,r13,0<2>
	or	 r25,r0,r2
	cmp	 r13,r25,210
	bb1.n	 ne,r13,@L381
	or.u	 r13,r0,hi16(_optimize)
	ld	 r13,r24[r22]
	mak	 r13,r13,0<3>
	cmp	 r13,r13,31
	bb1.n	 gt,r13,@L293
	or.u	 r24,r0,hi16(_word_mode)
	or	 r2,r0,r20
	ld	 r3,r24,lo16(_word_mode)
	bsr.n	 _can_extend_p
	or	 r4,r0,r19
	or	 r25,r0,r2
	cmp	 r13,r25,210
	bb0	 ne,r13,@L293
	ld	 r2,r24,lo16(_word_mode)
	bsr.n	 _gen_lowpart
	or	 r3,r0,r21
	or	 r3,r0,r23
	bsr.n	 _convert_move
	or	 r4,r0,r19
	ld	 r2,r24,lo16(_word_mode)
	bsr.n	 _gen_lowpart
	or	 r3,r0,r21
	or	 r4,r0,r2
	or	 r2,r0,r25
	br.n	 @L372
	or	 r3,r0,r21
	align	 4
@L293:
	bsr	 _start_sequence
	or.u	 r13,r0,hi16(_mode_size)
	or	 r13,r13,lo16(_mode_size)
	ld	 r13,r13[r22]
	mak	 r13,r13,0<3>
	cmp	 r13,r13,31
	bb1.n	 gt,r13,@L295
	or	 r25,r0,r22
	or.u	 r13,r0,hi16(_word_mode)
	ld	 r25,r13,lo16(_word_mode)
	br.n	 @L382
	or	 r2,r0,r25
	align	 4
@L295:
	or	 r2,r0,r25
@L382:
	or	 r3,r0,r23
	bsr.n	 _convert_to_mode
	or	 r4,r0,r19
	or	 r24,r0,r2
	or	 r2,r0,r25
	bsr.n	 _gen_lowpart
	or	 r3,r0,r21
	bsr.n	 _emit_move_insn
	or	 r3,r0,r24
	bcnd.n	 eq0,r19,@L299
	or.u	 r13,r0,hi16(_const0_rtx)
	ld	 r24,r13,lo16(_const0_rtx)
	br.n	 @L383
	or.u	 r13,r0,hi16(_mode_size)
	align	 4
@L299:
	or.u	 r13,r0,hi16(_mode_size)
	or	 r13,r13,lo16(_mode_size)
	ld	 r2,r13[r25]
	mak	 r2,r2,0<3>
	bsr.n	 _size_int
	subu	 r2,r2,1
	or	 r5,r0,r2
	or	 r2,r0,78
	or	 r3,r0,r25
	or	 r4,r0,r24
	or	 r6,r0,0
	bsr.n	 _expand_shift
	or	 r7,r0,0
	or	 r24,r0,r2
	or.u	 r13,r0,hi16(_word_mode)
	or	 r4,r0,1
	ld	 r2,r13,lo16(_word_mode)
	bsr.n	 _convert_to_mode
	or	 r3,r0,r24
	or	 r24,r0,r2
	or.u	 r13,r0,hi16(_mode_size)
@L383:
	or	 r13,r13,lo16(_mode_size)
	ld	 r2,r13[r25]
	bcnd	 ge0,r2,@L301
	addu	 r2,r2,3
@L301:
	ext	 r22,r2,0<2>
	cmp	 r13,r22,r18
	bb0.n	 lt,r13,@L303
	subu	 r13,r18,r22
	mask	 r12,r13,3
	bcnd.n	 eq0,r12,@L305
	subu	 r25,r18,r22
	cmp	 r13,r12,1
	bb0.n	 gt,r13,@L339
	cmp	 r13,r12,2
	bb0.n	 gt,r13,@L340
	or	 r2,r0,r21
	or	 r4,r0,1
	subu	 r25,r25,1
	or	 r5,r0,r20
	bsr.n	 _operand_subword
	or	 r3,r0,r25
	bcnd.n	 ne0,r2,@L344
	cmp	 r13,r24,r2
	bsr	 _abort
	align	 4
@L344:
	bb1	 eq,r13,@L342
	bsr.n	 _emit_move_insn
	or	 r3,r0,r24
@L342:
	addu	 r22,r22,1
@L340:
	or	 r2,r0,r21
	or	 r4,r0,1
	subu	 r25,r25,1
	or	 r5,r0,r20
	bsr.n	 _operand_subword
	or	 r3,r0,r25
	bcnd.n	 ne0,r2,@L348
	cmp	 r13,r24,r2
	bsr	 _abort
	align	 4
@L348:
	bb1	 eq,r13,@L346
	bsr.n	 _emit_move_insn
	or	 r3,r0,r24
@L346:
	addu	 r22,r22,1
@L339:
	or	 r2,r0,r21
	or	 r4,r0,1
	subu	 r25,r25,1
	or	 r5,r0,r20
	bsr.n	 _operand_subword
	or	 r3,r0,r25
	bcnd.n	 ne0,r2,@L352
	cmp	 r13,r24,r2
	bsr	 _abort
	align	 4
@L352:
	bb1	 eq,r13,@L350
	bsr.n	 _emit_move_insn
	or	 r3,r0,r24
@L350:
	addu	 r22,r22,1
	cmp	 r13,r22,r18
	bb0	 lt,r13,@L303
@L305:
	or	 r2,r0,r21
@L384:
	subu	 r3,r25,1
	or	 r4,r0,1
	bsr.n	 _operand_subword
	or	 r5,r0,r20
	bcnd.n	 ne0,r2,@L356
	cmp	 r13,r24,r2
	bsr	 _abort
	align	 4
@L356:
	bb1	 eq,r13,@L354
	bsr.n	 _emit_move_insn
	or	 r3,r0,r24
@L354:
	or	 r2,r0,r21
	subu	 r3,r25,2
	or	 r4,r0,1
	bsr.n	 _operand_subword
	or	 r5,r0,r20
	bcnd.n	 ne0,r2,@L360
	cmp	 r13,r24,r2
	bsr	 _abort
	align	 4
@L360:
	bb1	 eq,r13,@L358
	bsr.n	 _emit_move_insn
	or	 r3,r0,r24
@L358:
	or	 r2,r0,r21
	subu	 r3,r25,3
	or	 r4,r0,1
	bsr.n	 _operand_subword
	or	 r5,r0,r20
	bcnd.n	 ne0,r2,@L364
	cmp	 r13,r24,r2
	bsr	 _abort
	align	 4
@L364:
	bb1	 eq,r13,@L362
	bsr.n	 _emit_move_insn
	or	 r3,r0,r24
@L362:
	or	 r2,r0,r21
	or	 r4,r0,1
	subu	 r25,r25,4
	or	 r5,r0,r20
	bsr.n	 _operand_subword
	or	 r3,r0,r25
	bcnd.n	 ne0,r2,@L368
	cmp	 r13,r24,r2
	bsr	 _abort
	align	 4
@L368:
	bb1	 eq,r13,@L366
	bsr.n	 _emit_move_insn
	or	 r3,r0,r24
@L366:
	addu	 r22,r22,4
	cmp	 r13,r22,r18
	bb1.n	 lt,r13,@L384
	or	 r2,r0,r21
@L303:
	bsr	 _get_insns
	bsr.n	 _end_sequence
	or	 r25,r0,r2
	or	 r2,r0,r17
	or	 r3,r0,r20
	bsr.n	 _gen_rtx
	or	 r4,r0,r23
	or	 r6,r0,r2
	or	 r2,r0,r25
	or	 r3,r0,r21
	or	 r4,r0,r23
	or	 r5,r0,0
	bsr.n	 _emit_no_conflict_block
	addu	 r1,r1,@L396
@L397:
	align	 4
@L289:
	or.u	 r13,r0,hi16(_mode_size)
@L380:
	or	 r13,r13,lo16(_mode_size)
	ld	 r13,r13[r22]
	mak	 r13,r13,0<3>
	cmp	 r13,r13,32
	bb0.n	 gt,r13,@L309
	or.u	 r13,r0,hi16(_word_mode)
	ld	 r2,r13,lo16(_word_mode)
	bsr.n	 _gen_lowpart
	or	 r3,r0,r23
	or	 r3,r0,r2
	or	 r2,r0,r21
	br.n	 @L373
	or	 r4,r0,0
	align	 4
@L309:
	cmp	 r13,r20,3
	bb1.n	 ne,r13,@L310
	cmp	 r13,r22,3
	cmp	 r13,r22,4
	bb0.n	 ne,r13,@L311
	or	 r2,r0,4
	or	 r3,r0,r23
	bsr.n	 _convert_to_mode
	or	 r4,r0,r19
@L311:
	bsr	 _abort
	align	 4
@L310:
	bb1.n	 ne,r13,@L385
	or.u	 r13,r0,hi16(_mode_size)
	cmp	 r13,r20,4
	bb0.n	 ne,r13,@L313
	or	 r2,r0,4
	or	 r3,r0,r23
	or	 r4,r0,r19
	bsr.n	 _convert_to_mode
	or	 r22,r0,4
	br.n	 @L312
	or	 r23,r0,r2
	align	 4
@L313:
	bsr	 _abort
	align	 4
@L312:
	or.u	 r13,r0,hi16(_mode_size)
@L385:
	or	 r13,r13,lo16(_mode_size)
	ld	 r12,r13[r20]
	ld	 r13,r13[r22]
	mak	 r12,r12,0<3>
	mak	 r13,r13,0<3>
	cmp	 r12,r12,r13
	bb1.n	 ge,r12,@L386
	or.u	 r13,r0,hi16(_mode_size)
	ld	 r13,r0,r23
	or.u	 r12,r0,0x37
	and	 r13,r13,0x10
	cmp	 r13,r13,r12
	bb1.n	 ne,r13,@L317
	or.u	 r13,r0,hi16(_direct_load)
	or	 r13,r13,lo16(_direct_load)
	ld.b	 r13,r20,r13
	bcnd	 eq0,r13,@L317
	bsr.n	 _mode_dependent_address_p
	ld	 r2,r23,4
	bcnd.n	 eq0,r2,@L387
	or	 r2,r0,r20
@L317:
	ld.hu	 r13,r0,r23
	cmp	 r12,r13,51
	cmp	 r13,r13,53
	or	 r12,r12,r13
	extu	 r12,r12,1<eq>
	bcnd.n	 eq0,r12,@L315
	or	 r2,r0,r20
@L387:
	or	 r3,r0,r23
	bsr.n	 _gen_lowpart
	addu	 r1,r1,@L398
@L399:
	align	 4
@L315:
	or.u	 r13,r0,hi16(_mode_size)
@L386:
	or	 r13,r13,lo16(_mode_size)
	ld	 r12,r13[r20]
	ld	 r13,r13[r22]
	mak	 r12,r12,0<3>
	mak	 r13,r13,0<3>
	cmp	 r12,r12,r13
	bb0.n	 gt,r12,@L318
	or	 r2,r0,r20
	or	 r3,r0,r22
	bsr.n	 _can_extend_p
	or	 r4,r0,r19
	or	 r25,r0,r2
	cmp	 r13,r25,210
	bb0.n	 ne,r13,@L319
	or.u	 r13,r0,hi16(_optimize)
@L381:
	ld	 r13,r13,lo16(_optimize)
	bcnd	 le0,r13,@L320
	ld.hu	 r13,r0,r23
	cmp	 r13,r13,53
	bb1.n	 ne,r13,@L388
	or	 r2,r0,r25
	or	 r2,r0,r22
	bsr.n	 _force_reg
	or	 r3,r0,r23
	or	 r23,r0,r2
@L320:
	or	 r2,r0,r25
@L388:
	or	 r3,r0,r21
	or	 r4,r0,r23
@L372:
	or	 r5,r0,r17
	bsr.n	 _emit_unop_insn
	addu	 r1,r1,@L400
@L401:
	align	 4
@L319:
	or	 r25,r0,r22
	bcnd.n	 eq0,r25,@L323
	or.u	 r13,r0,hi16(_mode_wider_mode)
	or	 r24,r13,lo16(_mode_wider_mode)
	or	 r2,r0,r20
@L389:
	or	 r3,r0,r25
	bsr.n	 _can_extend_p
	or	 r4,r0,r19
	cmp	 r2,r2,210
	bb1.n	 eq,r2,@L324
	or	 r2,r0,r25
	or	 r3,r0,r22
	bsr.n	 _can_extend_p
	or	 r4,r0,r19
	cmp	 r2,r2,210
	bb0.n	 eq,r2,@L335
	or	 r2,r0,r25
@L324:
	ld	 r25,r24[r25]
	bcnd.n	 ne0,r25,@L389
	or	 r2,r0,r20
@L323:
	bsr	 _abort
	align	 4
@L318:
	cmp	 r13,r22,6
	extu	 r11,r13,1<eq>
	cmp	 r13,r20,4
	extu	 r13,r13,1<eq>
	and	 r13,r11,r13
	bcnd.n	 eq0,r13,@L328
	or	 r2,r0,r22
	or	 r3,r0,r23
	bsr.n	 _force_reg
	addu	 r1,r1,@L402
@L403:
	align	 4
@L328:
	cmp	 r13,r20,2
	extu	 r9,r13,1<eq>
	and	 r13,r11,r9
	bcnd.n	 eq0,r13,@L329
	or	 r3,r0,r23
	bsr.n	 _force_reg
	addu	 r1,r1,@L404
@L405:
	align	 4
@L329:
	cmp	 r13,r20,1
	extu	 r10,r13,1<eq>
	and	 r13,r11,r10
	bcnd.n	 eq0,r13,@L330
	or	 r2,r0,r22
	or	 r3,r0,r23
	bsr.n	 _force_reg
	addu	 r1,r1,@L406
@L407:
	align	 4
@L330:
	cmp	 r13,r22,4
	extu	 r11,r13,1<eq>
	and	 r13,r11,r9
	bcnd.n	 eq0,r13,@L331
	or	 r3,r0,r23
	bsr.n	 _force_reg
	addu	 r1,r1,@L408
@L409:
	align	 4
@L331:
	and	 r13,r11,r10
	bcnd.n	 eq0,r13,@L332
	or	 r2,r0,r22
	or	 r3,r0,r23
	bsr.n	 _force_reg
	addu	 r1,r1,@L410
@L411:
	align	 4
@L332:
	cmp	 r13,r22,2
	extu	 r13,r13,1<eq>
	and	 r13,r13,r10
	bcnd.n	 eq0,r13,@L333
	or	 r3,r0,r23
	bsr.n	 _force_reg
	addu	 r1,r1,@L412
@L413:
	align	 4
@L333:
	bb1.n	 ge,r12,@L334
	or	 r2,r0,r20
	bsr.n	 _gen_lowpart
	or	 r3,r0,r23
	or	 r3,r0,r2
	bsr.n	 _force_reg
	or	 r2,r0,r20
@L371:
	or	 r3,r0,r2
	or	 r2,r0,r21
	bsr.n	 _emit_move_insn
	addu	 r1,r1,@L414
@L415:
	align	 4
@L334:
	bsr	 _abort
	align	 4
@L335:
	or	 r3,r0,r23
	bsr.n	 _convert_to_mode
	or	 r4,r0,r19
@L374:
	or	 r3,r0,r2
	or	 r2,r0,r21
	or	 r4,r0,r19
@L373:
	bsr	 _convert_move
@L223:
@Lte8:
	ld	 r1,r31,80
	ld.d	 r24,r31,72
	ld.d	 r22,r31,64
	ld.d	 r20,r31,56
	ld.d	 r18,r31,48
	ld.d	 r16,r31,40
	jmp.n	 r1
	addu	 r31,r31,96
	def	 @L414,@L223-@L415
	def	 @L412,@L374-@L413
	def	 @L410,@L374-@L411
	def	 @L408,@L374-@L409
	def	 @L406,@L374-@L407
	def	 @L404,@L374-@L405
	def	 @L402,@L374-@L403
	def	 @L400,@L223-@L401
	def	 @L398,@L371-@L399
	def	 @L396,@L223-@L397
	def	 @L394,@L371-@L395
	def	 @L392,@L223-@L393
	def	 @L390,@L223-@L391

