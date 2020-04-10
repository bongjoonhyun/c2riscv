
bin/forloop.bin:     file format elf32-littleriscv


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
   10280:	038000ef          	jal	ra,102b8 <_start+0x38>
   10284:	00050793          	mv	a5,a0
   10288:	00000517          	auipc	a0,0x0
   1028c:	0d450513          	addi	a0,a0,212 # 1035c <main>
   10290:	00012583          	lw	a1,0(sp)
   10294:	00410613          	addi	a2,sp,4
   10298:	ff017113          	andi	sp,sp,-16
   1029c:	00000697          	auipc	a3,0x0
   102a0:	11868693          	addi	a3,a3,280 # 103b4 <__libc_csu_init>
   102a4:	00000717          	auipc	a4,0x0
   102a8:	1a070713          	addi	a4,a4,416 # 10444 <__libc_csu_fini>
   102ac:	00010813          	mv	a6,sp
   102b0:	fc1ff0ef          	jal	ra,10270 <__libc_start_main@plt>
   102b4:	00100073          	ebreak
   102b8:	00002197          	auipc	gp,0x2
   102bc:	54818193          	addi	gp,gp,1352 # 12800 <__global_pointer$>
   102c0:	00008067          	ret

000102c4 <deregister_tm_clones>:
   102c4:	00012537          	lui	a0,0x12
   102c8:	00012737          	lui	a4,0x12
   102cc:	00050793          	mv	a5,a0
   102d0:	00070713          	mv	a4,a4
   102d4:	00f70a63          	beq	a4,a5,102e8 <deregister_tm_clones+0x24>
   102d8:	00000313          	li	t1,0
   102dc:	00030663          	beqz	t1,102e8 <deregister_tm_clones+0x24>
   102e0:	00050513          	mv	a0,a0
   102e4:	00030067          	jr	t1
   102e8:	00008067          	ret

000102ec <register_tm_clones>:
   102ec:	00012537          	lui	a0,0x12
   102f0:	00050593          	mv	a1,a0
   102f4:	000127b7          	lui	a5,0x12
   102f8:	00078793          	mv	a5,a5
   102fc:	40b787b3          	sub	a5,a5,a1
   10300:	4027d713          	srai	a4,a5,0x2
   10304:	01f7d593          	srli	a1,a5,0x1f
   10308:	00e585b3          	add	a1,a1,a4
   1030c:	4015d593          	srai	a1,a1,0x1
   10310:	00058a63          	beqz	a1,10324 <register_tm_clones+0x38>
   10314:	00000313          	li	t1,0
   10318:	00030663          	beqz	t1,10324 <register_tm_clones+0x38>
   1031c:	00050513          	mv	a0,a0
   10320:	00030067          	jr	t1
   10324:	00008067          	ret

00010328 <__do_global_dtors_aux>:
   10328:	ff010113          	addi	sp,sp,-16
   1032c:	00812423          	sw	s0,8(sp)
   10330:	8181c783          	lbu	a5,-2024(gp) # 12018 <completed.6051>
   10334:	00112623          	sw	ra,12(sp)
   10338:	00079863          	bnez	a5,10348 <__do_global_dtors_aux+0x20>
   1033c:	f89ff0ef          	jal	ra,102c4 <deregister_tm_clones>
   10340:	00100793          	li	a5,1
   10344:	80f18c23          	sb	a5,-2024(gp) # 12018 <completed.6051>
   10348:	00c12083          	lw	ra,12(sp)
   1034c:	00812403          	lw	s0,8(sp)
   10350:	01010113          	addi	sp,sp,16
   10354:	00008067          	ret

00010358 <frame_dummy>:
   10358:	f95ff06f          	j	102ec <register_tm_clones>

0001035c <main>:
   1035c:	fd010113          	addi	sp,sp,-48
   10360:	02812623          	sw	s0,44(sp)
   10364:	03010413          	addi	s0,sp,48
   10368:	fe042623          	sw	zero,-20(s0)
   1036c:	0280006f          	j	10394 <main+0x38>
   10370:	fec42783          	lw	a5,-20(s0)
   10374:	00279793          	slli	a5,a5,0x2
   10378:	ff040713          	addi	a4,s0,-16
   1037c:	00f707b3          	add	a5,a4,a5
   10380:	fec42703          	lw	a4,-20(s0)
   10384:	fee7a423          	sw	a4,-24(a5) # 11fe8 <_DYNAMIC+0xd8>
   10388:	fec42783          	lw	a5,-20(s0)
   1038c:	00178793          	addi	a5,a5,1
   10390:	fef42623          	sw	a5,-20(s0)
   10394:	fec42703          	lw	a4,-20(s0)
   10398:	00400793          	li	a5,4
   1039c:	fce7dae3          	bge	a5,a4,10370 <main+0x14>
   103a0:	00000793          	li	a5,0
   103a4:	00078513          	mv	a0,a5
   103a8:	02c12403          	lw	s0,44(sp)
   103ac:	03010113          	addi	sp,sp,48
   103b0:	00008067          	ret

000103b4 <__libc_csu_init>:
   103b4:	fe010113          	addi	sp,sp,-32
   103b8:	00812c23          	sw	s0,24(sp)
   103bc:	01212823          	sw	s2,16(sp)
   103c0:	00002417          	auipc	s0,0x2
   103c4:	b4840413          	addi	s0,s0,-1208 # 11f08 <__frame_dummy_init_array_entry>
   103c8:	00002917          	auipc	s2,0x2
   103cc:	b4490913          	addi	s2,s2,-1212 # 11f0c <__do_global_dtors_aux_fini_array_entry>
   103d0:	40890933          	sub	s2,s2,s0
   103d4:	00112e23          	sw	ra,28(sp)
   103d8:	00912a23          	sw	s1,20(sp)
   103dc:	01312623          	sw	s3,12(sp)
   103e0:	01412423          	sw	s4,8(sp)
   103e4:	01512223          	sw	s5,4(sp)
   103e8:	40295913          	srai	s2,s2,0x2
   103ec:	02090a63          	beqz	s2,10420 <__libc_csu_init+0x6c>
   103f0:	00050993          	mv	s3,a0
   103f4:	00058a13          	mv	s4,a1
   103f8:	00060a93          	mv	s5,a2
   103fc:	00000493          	li	s1,0
   10400:	00042783          	lw	a5,0(s0)
   10404:	000a8613          	mv	a2,s5
   10408:	000a0593          	mv	a1,s4
   1040c:	00098513          	mv	a0,s3
   10410:	00148493          	addi	s1,s1,1
   10414:	000780e7          	jalr	a5
   10418:	00440413          	addi	s0,s0,4
   1041c:	fe9912e3          	bne	s2,s1,10400 <__libc_csu_init+0x4c>
   10420:	01c12083          	lw	ra,28(sp)
   10424:	01812403          	lw	s0,24(sp)
   10428:	01412483          	lw	s1,20(sp)
   1042c:	01012903          	lw	s2,16(sp)
   10430:	00c12983          	lw	s3,12(sp)
   10434:	00812a03          	lw	s4,8(sp)
   10438:	00412a83          	lw	s5,4(sp)
   1043c:	02010113          	addi	sp,sp,32
   10440:	00008067          	ret

00010444 <__libc_csu_fini>:
   10444:	00008067          	ret
