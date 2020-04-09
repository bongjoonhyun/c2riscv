
bin/mult.bin:     file format elf32-littleriscv


Disassembly of section .plt:

00010250 <_PROCEDURE_LINKAGE_TABLE_>:
   10250:	97 23 00 00 33 03 c3 41 03 ae 03 db 13 03 43 fd     .#..3..A......C.
   10260:	93 82 03 db 13 53 23 00 83 a2 42 00 67 00 0e 00     .....S#...B.g...

00010270 <__libc_start_main@plt>:
   10270:	00002e17          	auipc	t3,0x2
   10274:	d98e2e03          	lw	t3,-616(t3) # 12008 <__libc_start_main@GLIBC_2.29>
   10278:	000e0367          	jalr	t1,t3
   1027c:	00000013          	nop

Disassembly of section .text:

00010280 <_start>:
   10280:	202d                	jal	102aa <_start+0x2a>
   10282:	87aa                	mv	a5,a0
   10284:	00000517          	auipc	a0,0x0
   10288:	09c50513          	addi	a0,a0,156 # 10320 <main>
   1028c:	4582                	lw	a1,0(sp)
   1028e:	0050                	addi	a2,sp,4
   10290:	ff017113          	andi	sp,sp,-16
   10294:	00000697          	auipc	a3,0x0
   10298:	0b468693          	addi	a3,a3,180 # 10348 <__libc_csu_init>
   1029c:	00000717          	auipc	a4,0x0
   102a0:	10470713          	addi	a4,a4,260 # 103a0 <__libc_csu_fini>
   102a4:	880a                	mv	a6,sp
   102a6:	37e9                	jal	10270 <__libc_start_main@plt>
   102a8:	9002                	ebreak
   102aa:	00002197          	auipc	gp,0x2
   102ae:	55618193          	addi	gp,gp,1366 # 12800 <__global_pointer$>
   102b2:	8082                	ret
	...

000102b6 <deregister_tm_clones>:
   102b6:	6549                	lui	a0,0x12
   102b8:	6749                	lui	a4,0x12
   102ba:	00050793          	mv	a5,a0
   102be:	00070713          	mv	a4,a4
   102c2:	00f70963          	beq	a4,a5,102d4 <deregister_tm_clones+0x1e>
   102c6:	00000313          	li	t1,0
   102ca:	00030563          	beqz	t1,102d4 <deregister_tm_clones+0x1e>
   102ce:	00050513          	mv	a0,a0
   102d2:	8302                	jr	t1
   102d4:	8082                	ret

000102d6 <register_tm_clones>:
   102d6:	6549                	lui	a0,0x12
   102d8:	00050593          	mv	a1,a0
   102dc:	67c9                	lui	a5,0x12
   102de:	00078793          	mv	a5,a5
   102e2:	8f8d                	sub	a5,a5,a1
   102e4:	4027d713          	srai	a4,a5,0x2
   102e8:	01f7d593          	srli	a1,a5,0x1f
   102ec:	95ba                	add	a1,a1,a4
   102ee:	8585                	srai	a1,a1,0x1
   102f0:	c981                	beqz	a1,10300 <register_tm_clones+0x2a>
   102f2:	00000313          	li	t1,0
   102f6:	00030563          	beqz	t1,10300 <register_tm_clones+0x2a>
   102fa:	00050513          	mv	a0,a0
   102fe:	8302                	jr	t1
   10300:	8082                	ret

00010302 <__do_global_dtors_aux>:
   10302:	1141                	addi	sp,sp,-16
   10304:	c422                	sw	s0,8(sp)
   10306:	8181c783          	lbu	a5,-2024(gp) # 12018 <completed.6051>
   1030a:	c606                	sw	ra,12(sp)
   1030c:	e789                	bnez	a5,10316 <__do_global_dtors_aux+0x14>
   1030e:	3765                	jal	102b6 <deregister_tm_clones>
   10310:	4785                	li	a5,1
   10312:	80f18c23          	sb	a5,-2024(gp) # 12018 <completed.6051>
   10316:	40b2                	lw	ra,12(sp)
   10318:	4422                	lw	s0,8(sp)
   1031a:	0141                	addi	sp,sp,16
   1031c:	8082                	ret

0001031e <frame_dummy>:
   1031e:	bf65                	j	102d6 <register_tm_clones>

00010320 <main>:
   10320:	1101                	addi	sp,sp,-32
   10322:	ce22                	sw	s0,28(sp)
   10324:	1000                	addi	s0,sp,32
   10326:	3e800793          	li	a5,1000
   1032a:	fef42623          	sw	a5,-20(s0)
   1032e:	478d                	li	a5,3
   10330:	fef42423          	sw	a5,-24(s0)
   10334:	fec42703          	lw	a4,-20(s0)
   10338:	fe842783          	lw	a5,-24(s0)
   1033c:	02f707b3          	mul	a5,a4,a5
   10340:	853e                	mv	a0,a5
   10342:	4472                	lw	s0,28(sp)
   10344:	6105                	addi	sp,sp,32
   10346:	8082                	ret

00010348 <__libc_csu_init>:
   10348:	1101                	addi	sp,sp,-32
   1034a:	cc22                	sw	s0,24(sp)
   1034c:	c84a                	sw	s2,16(sp)
   1034e:	00002417          	auipc	s0,0x2
   10352:	bba40413          	addi	s0,s0,-1094 # 11f08 <__frame_dummy_init_array_entry>
   10356:	00002917          	auipc	s2,0x2
   1035a:	bb690913          	addi	s2,s2,-1098 # 11f0c <__do_global_dtors_aux_fini_array_entry>
   1035e:	40890933          	sub	s2,s2,s0
   10362:	ce06                	sw	ra,28(sp)
   10364:	ca26                	sw	s1,20(sp)
   10366:	c64e                	sw	s3,12(sp)
   10368:	c452                	sw	s4,8(sp)
   1036a:	c256                	sw	s5,4(sp)
   1036c:	40295913          	srai	s2,s2,0x2
   10370:	00090f63          	beqz	s2,1038e <__libc_csu_init+0x46>
   10374:	89aa                	mv	s3,a0
   10376:	8a2e                	mv	s4,a1
   10378:	8ab2                	mv	s5,a2
   1037a:	4481                	li	s1,0
   1037c:	401c                	lw	a5,0(s0)
   1037e:	8656                	mv	a2,s5
   10380:	85d2                	mv	a1,s4
   10382:	854e                	mv	a0,s3
   10384:	0485                	addi	s1,s1,1
   10386:	9782                	jalr	a5
   10388:	0411                	addi	s0,s0,4
   1038a:	fe9919e3          	bne	s2,s1,1037c <__libc_csu_init+0x34>
   1038e:	40f2                	lw	ra,28(sp)
   10390:	4462                	lw	s0,24(sp)
   10392:	44d2                	lw	s1,20(sp)
   10394:	4942                	lw	s2,16(sp)
   10396:	49b2                	lw	s3,12(sp)
   10398:	4a22                	lw	s4,8(sp)
   1039a:	4a92                	lw	s5,4(sp)
   1039c:	6105                	addi	sp,sp,32
   1039e:	8082                	ret

000103a0 <__libc_csu_fini>:
   103a0:	8082                	ret
