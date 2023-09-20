
ordered.o:     file format elf64-littleriscv


Disassembly of section .text:

0000000000000000 <gomp_ordered_first>:
   0:	00000717          	auipc	a4,0x0
   4:	00073703          	ld	a4,0(a4) # 0 <gomp_ordered_first>
   8:	004707b3          	add	a5,a4,tp
   c:	6b90                	ld	a2,16(a5)
   e:	6f9c                	ld	a5,24(a5)
  10:	ca15                	beqz	a2,44 <.L1>
  12:	4208                	lw	a0,0(a2)
  14:	4685                	li	a3,1
  16:	02d50763          	beq	a0,a3,44 <.L1>
  1a:	5b94                	lw	a3,48(a5)
  1c:	578c                	lw	a1,40(a5)
  1e:	9ead                	addw	a3,a3,a1
  20:	00a6e363          	bltu	a3,a0,26 <.L5>
  24:	9e89                	subw	a3,a3,a0

0000000000000026 <.L5>:
  26:	738c                	ld	a1,32(a5)
  28:	9712                	add	a4,a4,tp
  2a:	5708                	lw	a0,40(a4)
  2c:	02069713          	slli	a4,a3,0x20
  30:	01e75693          	srli	a3,a4,0x1e
  34:	00d58733          	add	a4,a1,a3
  38:	c308                	sw	a0,0(a4)
  3a:	5798                	lw	a4,40(a5)
  3c:	0017069b          	addiw	a3,a4,1
  40:	d794                	sw	a3,40(a5)
  42:	c311                	beqz	a4,46 <.L10>

0000000000000044 <.L1>:
  44:	8082                	ret

0000000000000046 <.L10>:
  46:	6e3c                	ld	a5,88(a2)
  48:	02051713          	slli	a4,a0,0x20
  4c:	01d75513          	srli	a0,a4,0x1d
  50:	97aa                	add	a5,a5,a0
  52:	6388                	ld	a0,0(a5)
  54:	80000737          	lui	a4,0x80000
  58:	fff74713          	not	a4,a4
  5c:	411c                	lw	a5,0(a0)

000000000000005e <.L6>:
  5e:	0017869b          	addiw	a3,a5,1
  62:	8ef9                	and	a3,a3,a4

0000000000000064 <.L1^B1>:
  64:	1005262f          	lr.w	a2,(a0)
  68:	00f61563          	bne	a2,a5,72 <.L1^B2>
  6c:	18d525af          	sc.w	a1,a3,(a0)
  70:	f9f5                	bnez	a1,64 <.L1^B1>

0000000000000072 <.L1^B2>:
  72:	40f606bb          	subw	a3,a2,a5
  76:	0006079b          	sext.w	a5,a2
  7a:	f2f5                	bnez	a3,5e <.L6>
  7c:	fc07d4e3          	bgez	a5,44 <.L1>
  80:	00000317          	auipc	t1,0x0
  84:	00030067          	jr	t1 # 80 <.L1^B2+0xe>

0000000000000088 <gomp_ordered_last>:
  88:	00000797          	auipc	a5,0x0
  8c:	0007b783          	ld	a5,0(a5) # 88 <gomp_ordered_last>
  90:	9792                	add	a5,a5,tp
  92:	6b94                	ld	a3,16(a5)
  94:	6f9c                	ld	a5,24(a5)
  96:	c6ad                	beqz	a3,100 <.L11>
  98:	4290                	lw	a2,0(a3)
  9a:	4705                	li	a4,1
  9c:	06e60263          	beq	a2,a4,100 <.L11>
  a0:	5798                	lw	a4,40(a5)
  a2:	55fd                	li	a1,-1
  a4:	d7cc                	sw	a1,44(a5)
  a6:	fff7059b          	addiw	a1,a4,-1
  aa:	d78c                	sw	a1,40(a5)
  ac:	c9b1                	beqz	a1,100 <.L11>
  ae:	5b98                	lw	a4,48(a5)
  b0:	2705                	addiw	a4,a4,1
  b2:	0007059b          	sext.w	a1,a4
  b6:	04b60663          	beq	a2,a1,102 <.L17>
  ba:	02071613          	slli	a2,a4,0x20
  be:	01e65713          	srli	a4,a2,0x1e

00000000000000c2 <.L15>:
  c2:	7390                	ld	a2,32(a5)
  c4:	db8c                	sw	a1,48(a5)
  c6:	6ebc                	ld	a5,88(a3)
  c8:	9732                	add	a4,a4,a2
  ca:	00076703          	lwu	a4,0(a4) # ffffffff80000000 <.L249+0xffffffff7ffff428>
  ce:	800006b7          	lui	a3,0x80000
  d2:	fff6c693          	not	a3,a3
  d6:	070e                	slli	a4,a4,0x3
  d8:	97ba                	add	a5,a5,a4
  da:	6388                	ld	a0,0(a5)
  dc:	411c                	lw	a5,0(a0)

00000000000000de <.L16>:
  de:	0017871b          	addiw	a4,a5,1
  e2:	8f75                	and	a4,a4,a3

00000000000000e4 <.L1^B3>:
  e4:	1005262f          	lr.w	a2,(a0)
  e8:	00f61563          	bne	a2,a5,f2 <.L1^B4>
  ec:	18e525af          	sc.w	a1,a4,(a0)
  f0:	f9f5                	bnez	a1,e4 <.L1^B3>

00000000000000f2 <.L1^B4>:
  f2:	40f6073b          	subw	a4,a2,a5
  f6:	0006079b          	sext.w	a5,a2
  fa:	f375                	bnez	a4,de <.L16>
  fc:	0007c663          	bltz	a5,108 <.L23>

0000000000000100 <.L11>:
 100:	8082                	ret

0000000000000102 <.L17>:
 102:	4701                	li	a4,0
 104:	4581                	li	a1,0
 106:	bf75                	j	c2 <.L15>

0000000000000108 <.L23>:
 108:	00000317          	auipc	t1,0x0
 10c:	00030067          	jr	t1 # 108 <.L23>

0000000000000110 <gomp_ordered_next>:
 110:	00000597          	auipc	a1,0x0
 114:	0005b583          	ld	a1,0(a1) # 110 <gomp_ordered_next>
 118:	00458633          	add	a2,a1,tp
 11c:	6a18                	ld	a4,16(a2)
 11e:	6e1c                	ld	a5,24(a2)
 120:	cb41                	beqz	a4,1b0 <.L24>
 122:	4314                	lw	a3,0(a4)
 124:	4805                	li	a6,1
 126:	09068563          	beq	a3,a6,1b0 <.L24>
 12a:	0287a883          	lw	a7,40(a5)
 12e:	557d                	li	a0,-1
 130:	d7c8                	sw	a0,44(a5)
 132:	6f28                	ld	a0,88(a4)
 134:	09088563          	beq	a7,a6,1be <.L42>
 138:	7390                	ld	a2,32(a5)
 13a:	02d8f463          	bgeu	a7,a3,162 <.L30>
 13e:	0307a803          	lw	a6,48(a5)
 142:	0118083b          	addw	a6,a6,a7
 146:	00d86463          	bltu	a6,a3,14e <.L31>
 14a:	40d8083b          	subw	a6,a6,a3

000000000000014e <.L31>:
 14e:	9592                	add	a1,a1,tp
 150:	5594                	lw	a3,40(a1)
 152:	02081593          	slli	a1,a6,0x20
 156:	01e5d813          	srli	a6,a1,0x1e
 15a:	9832                	add	a6,a6,a2
 15c:	00d82023          	sw	a3,0(a6)
 160:	4314                	lw	a3,0(a4)

0000000000000162 <.L30>:
 162:	5b98                	lw	a4,48(a5)
 164:	2705                	addiw	a4,a4,1
 166:	0007059b          	sext.w	a1,a4
 16a:	04b68463          	beq	a3,a1,1b2 <.L34>
 16e:	02071693          	slli	a3,a4,0x20
 172:	01e6d713          	srli	a4,a3,0x1e
 176:	963a                	add	a2,a2,a4

0000000000000178 <.L32>:
 178:	db8c                	sw	a1,48(a5)
 17a:	00066783          	lwu	a5,0(a2)
 17e:	80000737          	lui	a4,0x80000
 182:	fff74713          	not	a4,a4
 186:	078e                	slli	a5,a5,0x3
 188:	953e                	add	a0,a0,a5
 18a:	6108                	ld	a0,0(a0)
 18c:	411c                	lw	a5,0(a0)

000000000000018e <.L33>:
 18e:	0017869b          	addiw	a3,a5,1
 192:	8ef9                	and	a3,a3,a4

0000000000000194 <.L1^B5>:
 194:	1005262f          	lr.w	a2,(a0)
 198:	00f61563          	bne	a2,a5,1a2 <.L1^B6>
 19c:	18d525af          	sc.w	a1,a3,(a0)
 1a0:	f9f5                	bnez	a1,194 <.L1^B5>

00000000000001a2 <.L1^B6>:
 1a2:	40f606bb          	subw	a3,a2,a5
 1a6:	0006079b          	sext.w	a5,a2
 1aa:	f2f5                	bnez	a3,18e <.L33>
 1ac:	0007c563          	bltz	a5,1b6 <.L43>

00000000000001b0 <.L24>:
 1b0:	8082                	ret

00000000000001b2 <.L34>:
 1b2:	4581                	li	a1,0
 1b4:	b7d1                	j	178 <.L32>

00000000000001b6 <.L43>:
 1b6:	00000317          	auipc	t1,0x0
 1ba:	00030067          	jr	t1 # 1b6 <.L43>

00000000000001be <.L42>:
 1be:	02866783          	lwu	a5,40(a2)
 1c2:	80000737          	lui	a4,0x80000
 1c6:	fff74713          	not	a4,a4
 1ca:	078e                	slli	a5,a5,0x3
 1cc:	97aa                	add	a5,a5,a0
 1ce:	6388                	ld	a0,0(a5)
 1d0:	411c                	lw	a5,0(a0)

00000000000001d2 <.L29>:
 1d2:	0017869b          	addiw	a3,a5,1
 1d6:	8ef9                	and	a3,a3,a4

00000000000001d8 <.L1^B7>:
 1d8:	1005262f          	lr.w	a2,(a0)
 1dc:	00f61563          	bne	a2,a5,1e6 <.L1^B8>
 1e0:	18d525af          	sc.w	a1,a3,(a0)
 1e4:	f9f5                	bnez	a1,1d8 <.L1^B7>

00000000000001e6 <.L1^B8>:
 1e6:	40f606bb          	subw	a3,a2,a5
 1ea:	0006079b          	sext.w	a5,a2
 1ee:	f2f5                	bnez	a3,1d2 <.L29>
 1f0:	fc07d0e3          	bgez	a5,1b0 <.L24>
 1f4:	b7c9                	j	1b6 <.L43>

00000000000001f6 <gomp_ordered_static_init>:
 1f6:	00000797          	auipc	a5,0x0
 1fa:	0007b783          	ld	a5,0(a5) # 1f6 <gomp_ordered_static_init>
 1fe:	9792                	add	a5,a5,tp
 200:	6b9c                	ld	a5,16(a5)
 202:	cf8d                	beqz	a5,23c <.L44>
 204:	4394                	lw	a3,0(a5)
 206:	4705                	li	a4,1
 208:	02e68a63          	beq	a3,a4,23c <.L44>
 20c:	6fbc                	ld	a5,88(a5)
 20e:	80000737          	lui	a4,0x80000
 212:	fff74713          	not	a4,a4
 216:	6388                	ld	a0,0(a5)
 218:	411c                	lw	a5,0(a0)

000000000000021a <.L48>:
 21a:	0017869b          	addiw	a3,a5,1
 21e:	8ef9                	and	a3,a3,a4

0000000000000220 <.L1^B9>:
 220:	1005262f          	lr.w	a2,(a0)
 224:	00f61563          	bne	a2,a5,22e <.L1^B10>
 228:	18d525af          	sc.w	a1,a3,(a0)
 22c:	f9f5                	bnez	a1,220 <.L1^B9>

000000000000022e <.L1^B10>:
 22e:	40f606bb          	subw	a3,a2,a5
 232:	0006079b          	sext.w	a5,a2
 236:	f2f5                	bnez	a3,21a <.L48>
 238:	0007c363          	bltz	a5,23e <.L51>

000000000000023c <.L44>:
 23c:	8082                	ret

000000000000023e <.L51>:
 23e:	00000317          	auipc	t1,0x0
 242:	00030067          	jr	t1 # 23e <.L51>

0000000000000246 <gomp_ordered_static_next>:
 246:	00000797          	auipc	a5,0x0
 24a:	0007b783          	ld	a5,0(a5) # 246 <gomp_ordered_static_next>
 24e:	9792                	add	a5,a5,tp
 250:	6b98                	ld	a4,16(a5)
 252:	6f94                	ld	a3,24(a5)
 254:	579c                	lw	a5,40(a5)
 256:	cb39                	beqz	a4,2ac <.L52>
 258:	4310                	lw	a2,0(a4)
 25a:	4585                	li	a1,1
 25c:	04b60863          	beq	a2,a1,2ac <.L52>
 260:	55fd                	li	a1,-1
 262:	2785                	addiw	a5,a5,1
 264:	d6cc                	sw	a1,44(a3)
 266:	0007859b          	sext.w	a1,a5
 26a:	04b60263          	beq	a2,a1,2ae <.L58>
 26e:	02079613          	slli	a2,a5,0x20
 272:	01d65793          	srli	a5,a2,0x1d

0000000000000276 <.L56>:
 276:	6f38                	ld	a4,88(a4)
 278:	7294                	ld	a3,32(a3)
 27a:	97ba                	add	a5,a5,a4
 27c:	6388                	ld	a0,0(a5)
 27e:	c28c                	sw	a1,0(a3)
 280:	80000737          	lui	a4,0x80000
 284:	411c                	lw	a5,0(a0)
 286:	fff74713          	not	a4,a4

000000000000028a <.L57>:
 28a:	0017869b          	addiw	a3,a5,1
 28e:	8ef9                	and	a3,a3,a4

0000000000000290 <.L1^B11>:
 290:	1005262f          	lr.w	a2,(a0)
 294:	00f61563          	bne	a2,a5,29e <.L1^B12>
 298:	18d525af          	sc.w	a1,a3,(a0)
 29c:	f9f5                	bnez	a1,290 <.L1^B11>

000000000000029e <.L1^B12>:
 29e:	40f606bb          	subw	a3,a2,a5
 2a2:	0006079b          	sext.w	a5,a2
 2a6:	f2f5                	bnez	a3,28a <.L57>
 2a8:	0007c663          	bltz	a5,2b4 <.L61>

00000000000002ac <.L52>:
 2ac:	8082                	ret

00000000000002ae <.L58>:
 2ae:	4781                	li	a5,0
 2b0:	4581                	li	a1,0
 2b2:	b7d1                	j	276 <.L56>

00000000000002b4 <.L61>:
 2b4:	00000317          	auipc	t1,0x0
 2b8:	00030067          	jr	t1 # 2b4 <.L61>

00000000000002bc <GOMP_ordered_start>:
 2bc:	1101                	addi	sp,sp,-32
 2be:	e822                	sd	s0,16(sp)
 2c0:	00000417          	auipc	s0,0x0
 2c4:	00043403          	ld	s0,0(s0) # 2c0 <GOMP_ordered_start+0x4>
 2c8:	e426                	sd	s1,8(sp)
 2ca:	ec06                	sd	ra,24(sp)
 2cc:	004407b3          	add	a5,s0,tp
 2d0:	6b98                	ld	a4,16(a5)
 2d2:	6f84                	ld	s1,24(a5)
 2d4:	cb19                	beqz	a4,2ea <.L62>
 2d6:	4310                	lw	a2,0(a4)
 2d8:	4685                	li	a3,1
 2da:	00d60863          	beq	a2,a3,2ea <.L62>
 2de:	0ff0000f          	fence
 2e2:	579c                	lw	a5,40(a5)
 2e4:	54d4                	lw	a3,44(s1)
 2e6:	00f69763          	bne	a3,a5,2f4 <.L70>

00000000000002ea <.L62>:
 2ea:	60e2                	ld	ra,24(sp)
 2ec:	6442                	ld	s0,16(sp)
 2ee:	64a2                	ld	s1,8(sp)
 2f0:	6105                	addi	sp,sp,32
 2f2:	8082                	ret

00000000000002f4 <.L70>:
 2f4:	6f38                	ld	a4,88(a4)
 2f6:	02079693          	slli	a3,a5,0x20
 2fa:	01d6d793          	srli	a5,a3,0x1d
 2fe:	97ba                	add	a5,a5,a4
 300:	6388                	ld	a0,0(a5)
 302:	800007b7          	lui	a5,0x80000
 306:	fff7c793          	not	a5,a5
 30a:	410c                	lw	a1,0(a0)

000000000000030c <.L66>:
 30c:	00f5f733          	and	a4,a1,a5
 310:	fff5869b          	addiw	a3,a1,-1
 314:	c70d                	beqz	a4,33e <.L71>

0000000000000316 <.L1^B13>:
 316:	1005272f          	lr.w	a4,(a0)
 31a:	00b71563          	bne	a4,a1,324 <.L1^B14>
 31e:	1cd5262f          	sc.w.aq	a2,a3,(a0)
 322:	fa75                	bnez	a2,316 <.L1^B13>

0000000000000324 <.L1^B14>:
 324:	40b706bb          	subw	a3,a4,a1
 328:	0007059b          	sext.w	a1,a4
 32c:	f2e5                	bnez	a3,30c <.L66>

000000000000032e <.L67>:
 32e:	9412                	add	s0,s0,tp
 330:	541c                	lw	a5,40(s0)
 332:	60e2                	ld	ra,24(sp)
 334:	6442                	ld	s0,16(sp)
 336:	d4dc                	sw	a5,44(s1)
 338:	64a2                	ld	s1,8(sp)
 33a:	6105                	addi	sp,sp,32
 33c:	8082                	ret

000000000000033e <.L71>:
 33e:	00000097          	auipc	ra,0x0
 342:	000080e7          	jalr	ra # 33e <.L71>
 346:	b7e5                	j	32e <.L67>

0000000000000348 <GOMP_ordered_end>:
 348:	8082                	ret

000000000000034a <gomp_doacross_init>:
 34a:	00000797          	auipc	a5,0x0
 34e:	0007b783          	ld	a5,0(a5) # 34a <gomp_doacross_init>
 352:	7109                	addi	sp,sp,-384
 354:	e6d6                	sd	s5,328(sp)
 356:	9792                	add	a5,a5,tp
 358:	6b98                	ld	a4,16(a5)
 35a:	f666                	sd	s9,296(sp)
 35c:	fe86                	sd	ra,376(sp)
 35e:	faa2                	sd	s0,368(sp)
 360:	f6a6                	sd	s1,360(sp)
 362:	f2ca                	sd	s2,352(sp)
 364:	eece                	sd	s3,344(sp)
 366:	ead2                	sd	s4,336(sp)
 368:	e2da                	sd	s6,320(sp)
 36a:	fe5e                	sd	s7,312(sp)
 36c:	fa62                	sd	s8,304(sp)
 36e:	f26a                	sd	s10,288(sp)
 370:	ee6e                	sd	s11,280(sp)
 372:	e432                	sd	a2,8(sp)
 374:	0187bc83          	ld	s9,24(a5)
 378:	8ab6                	mv	s5,a3
 37a:	12070563          	beqz	a4,4a4 <.L74>
 37e:	00072a03          	lw	s4,0(a4) # ffffffff80000000 <.L249+0xffffffff7ffff428>
 382:	4785                	li	a5,1
 384:	12fa0063          	beq	s4,a5,4a4 <.L74>
 388:	89aa                	mv	s3,a0
 38a:	8b2e                	mv	s6,a1
 38c:	4901                	li	s2,0
 38e:	c12d                	beqz	a0,3f0 <.L76>
 390:	fff5069b          	addiw	a3,a0,-1
 394:	02069793          	slli	a5,a3,0x20
 398:	01e7d693          	srli	a3,a5,0x1e
 39c:	085c                	addi	a5,sp,20
 39e:	84ae                	mv	s1,a1
 3a0:	0800                	addi	s0,sp,16
 3a2:	00f68bb3          	add	s7,a3,a5
 3a6:	4901                	li	s2,0
 3a8:	04000d93          	li	s11,64
 3ac:	4c05                	li	s8,1
 3ae:	04000d13          	li	s10,64
 3b2:	a031                	j	3be <.L81>

00000000000003b4 <.L116>:
 3b4:	c018                	sw	a4,0(s0)

00000000000003b6 <.L79>:
 3b6:	0411                	addi	s0,s0,4
 3b8:	04a1                	addi	s1,s1,8
 3ba:	03740b63          	beq	s0,s7,3f0 <.L76>

00000000000003be <.L81>:
 3be:	609c                	ld	a5,0(s1)
 3c0:	4705                	li	a4,1
 3c2:	c3ed                	beqz	a5,4a4 <.L74>
 3c4:	ff2de9e3          	bltu	s11,s2,3b6 <.L79>
 3c8:	fff78513          	addi	a0,a5,-1
 3cc:	01878863          	beq	a5,s8,3dc <.L80>
 3d0:	00000097          	auipc	ra,0x0
 3d4:	000080e7          	jalr	ra # 3d0 <.L81+0x12>
 3d8:	40ad073b          	subw	a4,s10,a0

00000000000003dc <.L80>:
 3dc:	0127093b          	addw	s2,a4,s2
 3e0:	fd2dfae3          	bgeu	s11,s2,3b4 <.L116>
 3e4:	0411                	addi	s0,s0,4
 3e6:	04100913          	li	s2,65
 3ea:	04a1                	addi	s1,s1,8
 3ec:	fd7419e3          	bne	s0,s7,3be <.L81>

00000000000003f0 <.L76>:
 3f0:	000ca783          	lw	a5,0(s9)
 3f4:	1a02                	slli	s4,s4,0x20
 3f6:	4705                	li	a4,1
 3f8:	020a5a13          	srli	s4,s4,0x20
 3fc:	00e78c63          	beq	a5,a4,414 <.L83>
 400:	470d                	li	a4,3
 402:	000b3a03          	ld	s4,0(s6)
 406:	00e78763          	beq	a5,a4,414 <.L83>
 40a:	67a2                	ld	a5,8(sp)
 40c:	1a7d                	addi	s4,s4,-1
 40e:	02fa4a33          	div	s4,s4,a5
 412:	0a05                	addi	s4,s4,1

0000000000000414 <.L83>:
 414:	02099c13          	slli	s8,s3,0x20
 418:	04000793          	li	a5,64
 41c:	020c5c13          	srli	s8,s8,0x20
 420:	0d27f063          	bgeu	a5,s2,4e0 <.L117>
 424:	003c1493          	slli	s1,s8,0x3
 428:	03f48493          	addi	s1,s1,63
 42c:	fc04f493          	andi	s1,s1,-64
 430:	07700d13          	li	s10,119
 434:	4781                	li	a5,0

0000000000000436 <.L86>:
 436:	029a0db3          	mul	s11,s4,s1
 43a:	077a8513          	addi	a0,s5,119
 43e:	953e                	add	a0,a0,a5
 440:	956e                	add	a0,a0,s11
 442:	00000097          	auipc	ra,0x0
 446:	000080e7          	jalr	ra # 442 <.L86+0xc>
 44a:	67a2                	ld	a5,8(sp)
 44c:	842a                	mv	s0,a0
 44e:	956a                	add	a0,a0,s10
 450:	fc057513          	andi	a0,a0,-64
 454:	e01c                	sd	a5,0(s0)
 456:	e404                	sd	s1,8(s0)
 458:	01342823          	sw	s3,16(s0)
 45c:	00040a23          	sb	zero,20(s0)
 460:	ec08                	sd	a0,24(s0)
 462:	100a9163          	bnez	s5,564 <.L118>
 466:	02043823          	sd	zero,48(s0)

000000000000046a <.L88>:
 46a:	04000793          	li	a5,64
 46e:	0b27f263          	bgeu	a5,s2,512 <.L89>
 472:	0c0e                	slli	s8,s8,0x3
 474:	4981                	li	s3,0
 476:	4901                	li	s2,0
 478:	000a0e63          	beqz	s4,494 <.L95>

000000000000047c <.L99>:
 47c:	6c08                	ld	a0,24(s0)
 47e:	8662                	mv	a2,s8
 480:	4581                	li	a1,0
 482:	954e                	add	a0,a0,s3
 484:	0905                	addi	s2,s2,1
 486:	00000097          	auipc	ra,0x0
 48a:	000080e7          	jalr	ra # 486 <.L99+0xa>
 48e:	99a6                	add	s3,s3,s1
 490:	ff2a16e3          	bne	s4,s2,47c <.L99>

0000000000000494 <.L95>:
 494:	000ca703          	lw	a4,0(s9)
 498:	4785                	li	a5,1
 49a:	04f70a63          	beq	a4,a5,4ee <.L119>

000000000000049e <.L92>:
 49e:	028cb023          	sd	s0,32(s9)
 4a2:	a031                	j	4ae <.L73>

00000000000004a4 <.L74>:
 4a4:	4501                	li	a0,0
 4a6:	020a9363          	bnez	s5,4cc <.L120>

00000000000004aa <.L77>:
 4aa:	02acb023          	sd	a0,32(s9)

00000000000004ae <.L73>:
 4ae:	70f6                	ld	ra,376(sp)
 4b0:	7456                	ld	s0,368(sp)
 4b2:	74b6                	ld	s1,360(sp)
 4b4:	7916                	ld	s2,352(sp)
 4b6:	69f6                	ld	s3,344(sp)
 4b8:	6a56                	ld	s4,336(sp)
 4ba:	6ab6                	ld	s5,328(sp)
 4bc:	6b16                	ld	s6,320(sp)
 4be:	7bf2                	ld	s7,312(sp)
 4c0:	7c52                	ld	s8,304(sp)
 4c2:	7cb2                	ld	s9,296(sp)
 4c4:	7d12                	ld	s10,288(sp)
 4c6:	6df2                	ld	s11,280(sp)
 4c8:	6119                	addi	sp,sp,384
 4ca:	8082                	ret

00000000000004cc <.L120>:
 4cc:	038a8513          	addi	a0,s5,56
 4d0:	00000097          	auipc	ra,0x0
 4d4:	000080e7          	jalr	ra # 4d0 <.L120+0x4>
 4d8:	03850793          	addi	a5,a0,56
 4dc:	f91c                	sd	a5,48(a0)
 4de:	b7f1                	j	4aa <.L77>

00000000000004e0 <.L117>:
 4e0:	002c1793          	slli	a5,s8,0x2
 4e4:	07778d13          	addi	s10,a5,119
 4e8:	04000493          	li	s1,64
 4ec:	b7a9                	j	436 <.L86>

00000000000004ee <.L119>:
 4ee:	67a2                	ld	a5,8(sp)
 4f0:	f7dd                	bnez	a5,49e <.L92>
 4f2:	000b3783          	ld	a5,0(s6)
 4f6:	0347d6b3          	divu	a3,a5,s4
 4fa:	0347f7b3          	remu	a5,a5,s4
 4fe:	00168713          	addi	a4,a3,1 # ffffffff80000001 <.L249+0xffffffff7ffff429>
 502:	e014                	sd	a3,0(s0)
 504:	02f70733          	mul	a4,a4,a5
 508:	f01c                	sd	a5,32(s0)
 50a:	f418                	sd	a4,40(s0)
 50c:	028cb023          	sd	s0,32(s9)
 510:	bf79                	j	4ae <.L73>

0000000000000512 <.L89>:
 512:	4785                	li	a5,1
 514:	00f40a23          	sb	a5,20(s0)
 518:	02098663          	beqz	s3,544 <.L97>
 51c:	fff9879b          	addiw	a5,s3,-1
 520:	1782                	slli	a5,a5,0x20
 522:	9381                	srli	a5,a5,0x20
 524:	00e78713          	addi	a4,a5,14
 528:	070a                	slli	a4,a4,0x2
 52a:	0808                	addi	a0,sp,16
 52c:	078a                	slli	a5,a5,0x2
 52e:	9722                	add	a4,a4,s0
 530:	97aa                	add	a5,a5,a0
 532:	4681                	li	a3,0

0000000000000534 <.L96>:
 534:	438c                	lw	a1,0(a5)
 536:	c314                	sw	a3,0(a4)
 538:	863e                	mv	a2,a5
 53a:	9ead                	addw	a3,a3,a1
 53c:	1771                	addi	a4,a4,-4
 53e:	17f1                	addi	a5,a5,-4
 540:	fec51ae3          	bne	a0,a2,534 <.L96>

0000000000000544 <.L97>:
 544:	f40a08e3          	beqz	s4,494 <.L95>
 548:	6c18                	ld	a4,24(s0)
 54a:	4781                	li	a5,0

000000000000054c <.L98>:
 54c:	00073023          	sd	zero,0(a4)
 550:	0785                	addi	a5,a5,1
 552:	9726                	add	a4,a4,s1
 554:	fefa1ce3          	bne	s4,a5,54c <.L98>
 558:	000ca703          	lw	a4,0(s9)
 55c:	4785                	li	a5,1
 55e:	f4f710e3          	bne	a4,a5,49e <.L92>
 562:	b771                	j	4ee <.L119>

0000000000000564 <.L118>:
 564:	956e                	add	a0,a0,s11
 566:	8656                	mv	a2,s5
 568:	4581                	li	a1,0
 56a:	f808                	sd	a0,48(s0)
 56c:	00000097          	auipc	ra,0x0
 570:	000080e7          	jalr	ra # 56c <.L118+0x8>
 574:	bddd                	j	46a <.L88>

0000000000000576 <GOMP_doacross_post>:
 576:	00000697          	auipc	a3,0x0
 57a:	0006b683          	ld	a3,0(a3) # 576 <GOMP_doacross_post>
 57e:	9692                	add	a3,a3,tp
 580:	6e90                	ld	a2,24(a3)
 582:	721c                	ld	a5,32(a2)
 584:	cfa5                	beqz	a5,5fc <.L122>
 586:	6f98                	ld	a4,24(a5)
 588:	cb35                	beqz	a4,5fc <.L122>
 58a:	4210                	lw	a2,0(a2)
 58c:	4585                	li	a1,1
 58e:	06b61a63          	bne	a2,a1,602 <.L125>
 592:	0286e683          	lwu	a3,40(a3)

0000000000000596 <.L126>:
 596:	678c                	ld	a1,8(a5)
 598:	0147c603          	lbu	a2,20(a5)
 59c:	02b686b3          	mul	a3,a3,a1
 5a0:	00d70833          	add	a6,a4,a3
 5a4:	c63d                	beqz	a2,612 <.L128>
 5a6:	5f90                	lw	a2,56(a5)
 5a8:	6114                	ld	a3,0(a0)
 5aa:	4b8c                	lw	a1,16(a5)
 5ac:	4705                	li	a4,1
 5ae:	00c696b3          	sll	a3,a3,a2
 5b2:	02b77663          	bgeu	a4,a1,5de <.L129>
 5b6:	35f9                	addiw	a1,a1,-2
 5b8:	02059713          	slli	a4,a1,0x20
 5bc:	01e75593          	srli	a1,a4,0x1e
 5c0:	04078713          	addi	a4,a5,64
 5c4:	0521                	addi	a0,a0,8
 5c6:	03c78793          	addi	a5,a5,60
 5ca:	95ba                	add	a1,a1,a4

00000000000005cc <.L130>:
 5cc:	4390                	lw	a2,0(a5)
 5ce:	6118                	ld	a4,0(a0)
 5d0:	0791                	addi	a5,a5,4
 5d2:	0521                	addi	a0,a0,8
 5d4:	00c71733          	sll	a4,a4,a2
 5d8:	8ed9                	or	a3,a3,a4
 5da:	fef599e3          	bne	a1,a5,5cc <.L130>

00000000000005de <.L129>:
 5de:	00083783          	ld	a5,0(a6)
 5e2:	0685                	addi	a3,a3,1
 5e4:	0ff0000f          	fence
 5e8:	00d78763          	beq	a5,a3,5f6 <.L141>
 5ec:	0f50000f          	fence	iorw,ow
 5f0:	08d8302f          	amoswap.d	zero,a3,(a6)
 5f4:	8082                	ret

00000000000005f6 <.L141>:
 5f6:	0ff0000f          	fence
 5fa:	8082                	ret

00000000000005fc <.L122>:
 5fc:	0ff0000f          	fence
 600:	8082                	ret

0000000000000602 <.L125>:
 602:	458d                	li	a1,3
 604:	6114                	ld	a3,0(a0)
 606:	f8b608e3          	beq	a2,a1,596 <.L126>
 60a:	6390                	ld	a2,0(a5)
 60c:	02c6c6b3          	div	a3,a3,a2
 610:	b759                	j	596 <.L126>

0000000000000612 <.L128>:
 612:	0ff0000f          	fence
 616:	4b98                	lw	a4,16(a5)
 618:	fff7079b          	addiw	a5,a4,-1
 61c:	cb05                	beqz	a4,64c <.L121>
 61e:	02079713          	slli	a4,a5,0x20
 622:	01d75793          	srli	a5,a4,0x1d
 626:	00f506b3          	add	a3,a0,a5
 62a:	97c2                	add	a5,a5,a6
 62c:	a011                	j	630 <.L134>

000000000000062e <.L136>:
 62e:	86ba                	mv	a3,a4

0000000000000630 <.L134>:
 630:	6298                	ld	a4,0(a3)
 632:	6390                	ld	a2,0(a5)
 634:	0705                	addi	a4,a4,1
 636:	00c70663          	beq	a4,a2,642 <.L133>
 63a:	0f50000f          	fence	iorw,ow
 63e:	08e7b02f          	amoswap.d	zero,a4,(a5)

0000000000000642 <.L133>:
 642:	ff868713          	addi	a4,a3,-8
 646:	17e1                	addi	a5,a5,-8
 648:	fed513e3          	bne	a0,a3,62e <.L136>

000000000000064c <.L121>:
 64c:	8082                	ret

000000000000064e <GOMP_doacross_wait>:
 64e:	715d                	addi	sp,sp,-80
 650:	fc3e                	sd	a5,56(sp)
 652:	00000797          	auipc	a5,0x0
 656:	0007b783          	ld	a5,0(a5) # 652 <GOMP_doacross_wait+0x4>
 65a:	ec2e                	sd	a1,24(sp)
 65c:	f032                	sd	a2,32(sp)
 65e:	f436                	sd	a3,40(sp)
 660:	f83a                	sd	a4,48(sp)
 662:	e0c2                	sd	a6,64(sp)
 664:	e4c6                	sd	a7,72(sp)
 666:	9792                	add	a5,a5,tp
 668:	6f98                	ld	a4,24(a5)
 66a:	02073803          	ld	a6,32(a4)
 66e:	0a080863          	beqz	a6,71e <.L161>
 672:	01883883          	ld	a7,24(a6)
 676:	0a088463          	beqz	a7,71e <.L161>
 67a:	4314                	lw	a3,0(a4)
 67c:	4605                	li	a2,1
 67e:	10c69163          	bne	a3,a2,780 <.L146>
 682:	6718                	ld	a4,8(a4)
 684:	c359                	beqz	a4,70a <.L176>
 686:	02e54733          	div	a4,a0,a4
 68a:	6b9c                	ld	a5,16(a5)
 68c:	0007e783          	lwu	a5,0(a5)
 690:	02f76733          	rem	a4,a4,a5

0000000000000694 <.L149>:
 694:	00883683          	ld	a3,8(a6)
 698:	01484783          	lbu	a5,20(a6)
 69c:	02d70733          	mul	a4,a4,a3
 6a0:	98ba                	add	a7,a7,a4
 6a2:	cbd1                	beqz	a5,736 <.L177>
 6a4:	03882683          	lw	a3,56(a6)
 6a8:	01082703          	lw	a4,16(a6)
 6ac:	01810313          	addi	t1,sp,24
 6b0:	e41a                	sd	t1,8(sp)
 6b2:	4785                	li	a5,1
 6b4:	00d51533          	sll	a0,a0,a3
 6b8:	02e7fb63          	bgeu	a5,a4,6ee <.L152>
 6bc:	3779                	addiw	a4,a4,-2
 6be:	02071593          	slli	a1,a4,0x20
 6c2:	9181                	srli	a1,a1,0x20
 6c4:	00359693          	slli	a3,a1,0x3
 6c8:	1010                	addi	a2,sp,32
 6ca:	03c80793          	addi	a5,a6,60
 6ce:	871a                	mv	a4,t1
 6d0:	00d60833          	add	a6,a2,a3

00000000000006d4 <.L153>:
 6d4:	4390                	lw	a2,0(a5)
 6d6:	6314                	ld	a3,0(a4)
 6d8:	0721                	addi	a4,a4,8
 6da:	0791                	addi	a5,a5,4
 6dc:	00c696b3          	sll	a3,a3,a2
 6e0:	8d55                	or	a0,a0,a3
 6e2:	fee819e3          	bne	a6,a4,6d4 <.L153>
 6e6:	0585                	addi	a1,a1,1
 6e8:	058e                	slli	a1,a1,0x3
 6ea:	932e                	add	t1,t1,a1
 6ec:	e41a                	sd	t1,8(sp)

00000000000006ee <.L152>:
 6ee:	0008b783          	ld	a5,0(a7)
 6f2:	0ff0000f          	fence
 6f6:	00f56663          	bltu	a0,a5,702 <.L155>

00000000000006fa <.L154>:
 6fa:	0008b783          	ld	a5,0(a7)
 6fe:	fef57ee3          	bgeu	a0,a5,6fa <.L154>

0000000000000702 <.L155>:
 702:	0ff0000f          	fence
 706:	6161                	addi	sp,sp,80
 708:	8082                	ret

000000000000070a <.L176>:
 70a:	02883703          	ld	a4,40(a6)
 70e:	00083783          	ld	a5,0(a6)
 712:	00e55a63          	bge	a0,a4,726 <.L148>
 716:	0785                	addi	a5,a5,1
 718:	02f54733          	div	a4,a0,a5
 71c:	bfa5                	j	694 <.L149>

000000000000071e <.L161>:
 71e:	0ff0000f          	fence
 722:	6161                	addi	sp,sp,80
 724:	8082                	ret

0000000000000726 <.L148>:
 726:	40e50733          	sub	a4,a0,a4
 72a:	02f74733          	div	a4,a4,a5
 72e:	02083783          	ld	a5,32(a6)
 732:	973e                	add	a4,a4,a5
 734:	b785                	j	694 <.L149>

0000000000000736 <.L177>:
 736:	01810e13          	addi	t3,sp,24
 73a:	0505                	addi	a0,a0,1

000000000000073c <.L151>:
 73c:	01082303          	lw	t1,16(a6)
 740:	e472                	sd	t3,8(sp)
 742:	879a                	mv	a5,t1
 744:	02030b63          	beqz	t1,77a <.L156>
 748:	4781                	li	a5,0
 74a:	0003059b          	sext.w	a1,t1
 74e:	a031                	j	75a <.L160>

0000000000000750 <.L159>:
 750:	02e6e563          	bltu	a3,a4,77a <.L156>
 754:	2785                	addiw	a5,a5,1
 756:	02b7f263          	bgeu	a5,a1,77a <.L156>

000000000000075a <.L160>:
 75a:	02079713          	slli	a4,a5,0x20
 75e:	01d75693          	srli	a3,a4,0x1d
 762:	96c6                	add	a3,a3,a7
 764:	872a                	mv	a4,a0
 766:	c791                	beqz	a5,772 <.L158>
 768:	6622                	ld	a2,8(sp)
 76a:	6218                	ld	a4,0(a2)
 76c:	0621                	addi	a2,a2,8
 76e:	e432                	sd	a2,8(sp)
 770:	0705                	addi	a4,a4,1

0000000000000772 <.L158>:
 772:	6294                	ld	a3,0(a3)
 774:	fcd77ee3          	bgeu	a4,a3,750 <.L159>
 778:	879a                	mv	a5,t1

000000000000077a <.L156>:
 77a:	faf302e3          	beq	t1,a5,71e <.L161>
 77e:	bf7d                	j	73c <.L151>

0000000000000780 <.L146>:
 780:	478d                	li	a5,3
 782:	872a                	mv	a4,a0
 784:	f0f688e3          	beq	a3,a5,694 <.L149>
 788:	00083703          	ld	a4,0(a6)
 78c:	02e54733          	div	a4,a0,a4
 790:	b711                	j	694 <.L149>

0000000000000792 <gomp_doacross_ull_init>:
 792:	00000797          	auipc	a5,0x0
 796:	0007b783          	ld	a5,0(a5) # 792 <gomp_doacross_ull_init>
 79a:	7109                	addi	sp,sp,-384
 79c:	e6d6                	sd	s5,328(sp)
 79e:	9792                	add	a5,a5,tp
 7a0:	6b98                	ld	a4,16(a5)
 7a2:	f666                	sd	s9,296(sp)
 7a4:	fe86                	sd	ra,376(sp)
 7a6:	faa2                	sd	s0,368(sp)
 7a8:	f6a6                	sd	s1,360(sp)
 7aa:	f2ca                	sd	s2,352(sp)
 7ac:	eece                	sd	s3,344(sp)
 7ae:	ead2                	sd	s4,336(sp)
 7b0:	e2da                	sd	s6,320(sp)
 7b2:	fe5e                	sd	s7,312(sp)
 7b4:	fa62                	sd	s8,304(sp)
 7b6:	f26a                	sd	s10,288(sp)
 7b8:	ee6e                	sd	s11,280(sp)
 7ba:	e432                	sd	a2,8(sp)
 7bc:	0187bc83          	ld	s9,24(a5)
 7c0:	8ab6                	mv	s5,a3
 7c2:	12070563          	beqz	a4,8ec <.L179>
 7c6:	00072a03          	lw	s4,0(a4)
 7ca:	4785                	li	a5,1
 7cc:	12fa0063          	beq	s4,a5,8ec <.L179>
 7d0:	89aa                	mv	s3,a0
 7d2:	8b2e                	mv	s6,a1
 7d4:	4901                	li	s2,0
 7d6:	c12d                	beqz	a0,838 <.L181>
 7d8:	fff5069b          	addiw	a3,a0,-1
 7dc:	02069793          	slli	a5,a3,0x20
 7e0:	01e7d693          	srli	a3,a5,0x1e
 7e4:	085c                	addi	a5,sp,20
 7e6:	84ae                	mv	s1,a1
 7e8:	0800                	addi	s0,sp,16
 7ea:	00f68bb3          	add	s7,a3,a5
 7ee:	4901                	li	s2,0
 7f0:	04000d93          	li	s11,64
 7f4:	4c05                	li	s8,1
 7f6:	04000d13          	li	s10,64
 7fa:	a031                	j	806 <.L186>

00000000000007fc <.L220>:
 7fc:	c018                	sw	a4,0(s0)

00000000000007fe <.L184>:
 7fe:	0411                	addi	s0,s0,4
 800:	04a1                	addi	s1,s1,8
 802:	03740b63          	beq	s0,s7,838 <.L181>

0000000000000806 <.L186>:
 806:	609c                	ld	a5,0(s1)
 808:	4705                	li	a4,1
 80a:	c3ed                	beqz	a5,8ec <.L179>
 80c:	ff2de9e3          	bltu	s11,s2,7fe <.L184>
 810:	fff78513          	addi	a0,a5,-1
 814:	01878863          	beq	a5,s8,824 <.L185>
 818:	00000097          	auipc	ra,0x0
 81c:	000080e7          	jalr	ra # 818 <.L186+0x12>
 820:	40ad073b          	subw	a4,s10,a0

0000000000000824 <.L185>:
 824:	0127093b          	addw	s2,a4,s2
 828:	fd2dfae3          	bgeu	s11,s2,7fc <.L220>
 82c:	0411                	addi	s0,s0,4
 82e:	04100913          	li	s2,65
 832:	04a1                	addi	s1,s1,8
 834:	fd7419e3          	bne	s0,s7,806 <.L186>

0000000000000838 <.L181>:
 838:	000ca783          	lw	a5,0(s9)
 83c:	1a02                	slli	s4,s4,0x20
 83e:	4705                	li	a4,1
 840:	020a5a13          	srli	s4,s4,0x20
 844:	00e78c63          	beq	a5,a4,85c <.L188>
 848:	470d                	li	a4,3
 84a:	000b3a03          	ld	s4,0(s6)
 84e:	00e78763          	beq	a5,a4,85c <.L188>
 852:	67a2                	ld	a5,8(sp)
 854:	1a7d                	addi	s4,s4,-1
 856:	02fa5a33          	divu	s4,s4,a5
 85a:	0a05                	addi	s4,s4,1

000000000000085c <.L188>:
 85c:	02099d13          	slli	s10,s3,0x20
 860:	04000793          	li	a5,64
 864:	020d5d13          	srli	s10,s10,0x20
 868:	0d27f063          	bgeu	a5,s2,928 <.L221>
 86c:	003d1493          	slli	s1,s10,0x3
 870:	03f48493          	addi	s1,s1,63
 874:	fc04f493          	andi	s1,s1,-64
 878:	07700c13          	li	s8,119

000000000000087c <.L190>:
 87c:	03448db3          	mul	s11,s1,s4
 880:	018d8533          	add	a0,s11,s8
 884:	00000097          	auipc	ra,0x0
 888:	000080e7          	jalr	ra # 884 <.L190+0x8>
 88c:	67a2                	ld	a5,8(sp)
 88e:	9c2a                	add	s8,s8,a0
 890:	fc0c7c13          	andi	s8,s8,-64
 894:	e11c                	sd	a5,0(a0)
 896:	e504                	sd	s1,8(a0)
 898:	01352823          	sw	s3,16(a0)
 89c:	00050a23          	sb	zero,20(a0)
 8a0:	02053423          	sd	zero,40(a0)
 8a4:	01853c23          	sd	s8,24(a0)
 8a8:	842a                	mv	s0,a0
 8aa:	100a9163          	bnez	s5,9ac <.L222>
 8ae:	02053823          	sd	zero,48(a0)

00000000000008b2 <.L192>:
 8b2:	04000793          	li	a5,64
 8b6:	0b27f263          	bgeu	a5,s2,95a <.L193>
 8ba:	0d0e                	slli	s10,s10,0x3
 8bc:	4981                	li	s3,0
 8be:	4901                	li	s2,0
 8c0:	000a0e63          	beqz	s4,8dc <.L199>

00000000000008c4 <.L203>:
 8c4:	6c08                	ld	a0,24(s0)
 8c6:	866a                	mv	a2,s10
 8c8:	4581                	li	a1,0
 8ca:	954e                	add	a0,a0,s3
 8cc:	0905                	addi	s2,s2,1
 8ce:	00000097          	auipc	ra,0x0
 8d2:	000080e7          	jalr	ra # 8ce <.L203+0xa>
 8d6:	99a6                	add	s3,s3,s1
 8d8:	ff2a16e3          	bne	s4,s2,8c4 <.L203>

00000000000008dc <.L199>:
 8dc:	000ca703          	lw	a4,0(s9)
 8e0:	4785                	li	a5,1
 8e2:	04f70a63          	beq	a4,a5,936 <.L223>

00000000000008e6 <.L196>:
 8e6:	028cb023          	sd	s0,32(s9)
 8ea:	a031                	j	8f6 <.L178>

00000000000008ec <.L179>:
 8ec:	4501                	li	a0,0
 8ee:	020a9363          	bnez	s5,914 <.L224>

00000000000008f2 <.L182>:
 8f2:	02acb023          	sd	a0,32(s9)

00000000000008f6 <.L178>:
 8f6:	70f6                	ld	ra,376(sp)
 8f8:	7456                	ld	s0,368(sp)
 8fa:	74b6                	ld	s1,360(sp)
 8fc:	7916                	ld	s2,352(sp)
 8fe:	69f6                	ld	s3,344(sp)
 900:	6a56                	ld	s4,336(sp)
 902:	6ab6                	ld	s5,328(sp)
 904:	6b16                	ld	s6,320(sp)
 906:	7bf2                	ld	s7,312(sp)
 908:	7c52                	ld	s8,304(sp)
 90a:	7cb2                	ld	s9,296(sp)
 90c:	7d12                	ld	s10,288(sp)
 90e:	6df2                	ld	s11,280(sp)
 910:	6119                	addi	sp,sp,384
 912:	8082                	ret

0000000000000914 <.L224>:
 914:	038a8513          	addi	a0,s5,56
 918:	00000097          	auipc	ra,0x0
 91c:	000080e7          	jalr	ra # 918 <.L224+0x4>
 920:	03850793          	addi	a5,a0,56
 924:	f91c                	sd	a5,48(a0)
 926:	b7f1                	j	8f2 <.L182>

0000000000000928 <.L221>:
 928:	002d1c13          	slli	s8,s10,0x2
 92c:	077c0c13          	addi	s8,s8,119
 930:	04000493          	li	s1,64
 934:	b7a1                	j	87c <.L190>

0000000000000936 <.L223>:
 936:	67a2                	ld	a5,8(sp)
 938:	f7dd                	bnez	a5,8e6 <.L196>
 93a:	000b3783          	ld	a5,0(s6)
 93e:	0347d6b3          	divu	a3,a5,s4
 942:	0347f7b3          	remu	a5,a5,s4
 946:	00168713          	addi	a4,a3,1
 94a:	e014                	sd	a3,0(s0)
 94c:	02f70733          	mul	a4,a4,a5
 950:	f01c                	sd	a5,32(s0)
 952:	f418                	sd	a4,40(s0)
 954:	028cb023          	sd	s0,32(s9)
 958:	bf79                	j	8f6 <.L178>

000000000000095a <.L193>:
 95a:	4785                	li	a5,1
 95c:	00f40a23          	sb	a5,20(s0)
 960:	02098663          	beqz	s3,98c <.L201>
 964:	fff9879b          	addiw	a5,s3,-1
 968:	1782                	slli	a5,a5,0x20
 96a:	9381                	srli	a5,a5,0x20
 96c:	00e78713          	addi	a4,a5,14
 970:	070a                	slli	a4,a4,0x2
 972:	0808                	addi	a0,sp,16
 974:	078a                	slli	a5,a5,0x2
 976:	9722                	add	a4,a4,s0
 978:	97aa                	add	a5,a5,a0
 97a:	4681                	li	a3,0

000000000000097c <.L200>:
 97c:	438c                	lw	a1,0(a5)
 97e:	c314                	sw	a3,0(a4)
 980:	863e                	mv	a2,a5
 982:	9ead                	addw	a3,a3,a1
 984:	1771                	addi	a4,a4,-4
 986:	17f1                	addi	a5,a5,-4
 988:	fec51ae3          	bne	a0,a2,97c <.L200>

000000000000098c <.L201>:
 98c:	f40a08e3          	beqz	s4,8dc <.L199>
 990:	6c18                	ld	a4,24(s0)
 992:	4781                	li	a5,0

0000000000000994 <.L202>:
 994:	00073023          	sd	zero,0(a4)
 998:	0785                	addi	a5,a5,1
 99a:	9726                	add	a4,a4,s1
 99c:	fefa1ce3          	bne	s4,a5,994 <.L202>
 9a0:	000ca703          	lw	a4,0(s9)
 9a4:	4785                	li	a5,1
 9a6:	f4f710e3          	bne	a4,a5,8e6 <.L196>
 9aa:	b771                	j	936 <.L223>

00000000000009ac <.L222>:
 9ac:	01bc0533          	add	a0,s8,s11
 9b0:	8656                	mv	a2,s5
 9b2:	4581                	li	a1,0
 9b4:	f808                	sd	a0,48(s0)
 9b6:	00000097          	auipc	ra,0x0
 9ba:	000080e7          	jalr	ra # 9b6 <.L222+0xa>
 9be:	bdd5                	j	8b2 <.L192>

00000000000009c0 <GOMP_doacross_ull_post>:
 9c0:	00000717          	auipc	a4,0x0
 9c4:	00073703          	ld	a4,0(a4) # 9c0 <GOMP_doacross_ull_post>
 9c8:	9712                	add	a4,a4,tp
 9ca:	6f14                	ld	a3,24(a4)
 9cc:	729c                	ld	a5,32(a3)
 9ce:	cfb5                	beqz	a5,a4a <.L226>
 9d0:	6f90                	ld	a2,24(a5)
 9d2:	ce25                	beqz	a2,a4a <.L226>
 9d4:	4294                	lw	a3,0(a3)
 9d6:	4585                	li	a1,1
 9d8:	06b69c63          	bne	a3,a1,a50 <.L229>
 9dc:	02876703          	lwu	a4,40(a4)

00000000000009e0 <.L230>:
 9e0:	0147c683          	lbu	a3,20(a5)
 9e4:	ceb5                	beqz	a3,a60 <.L231>
 9e6:	0087b803          	ld	a6,8(a5)
 9ea:	0387a303          	lw	t1,56(a5)
 9ee:	6114                	ld	a3,0(a0)
 9f0:	03070733          	mul	a4,a4,a6
 9f4:	4b8c                	lw	a1,16(a5)
 9f6:	4885                	li	a7,1
 9f8:	006696b3          	sll	a3,a3,t1
 9fc:	00e60833          	add	a6,a2,a4
 a00:	02b8f663          	bgeu	a7,a1,a2c <.L232>
 a04:	35f9                	addiw	a1,a1,-2
 a06:	02059713          	slli	a4,a1,0x20
 a0a:	01e75593          	srli	a1,a4,0x1e
 a0e:	04078713          	addi	a4,a5,64
 a12:	0521                	addi	a0,a0,8
 a14:	03c78793          	addi	a5,a5,60
 a18:	95ba                	add	a1,a1,a4

0000000000000a1a <.L233>:
 a1a:	4390                	lw	a2,0(a5)
 a1c:	6118                	ld	a4,0(a0)
 a1e:	0791                	addi	a5,a5,4
 a20:	0521                	addi	a0,a0,8
 a22:	00c71733          	sll	a4,a4,a2
 a26:	8ed9                	or	a3,a3,a4
 a28:	fef599e3          	bne	a1,a5,a1a <.L233>

0000000000000a2c <.L232>:
 a2c:	00083783          	ld	a5,0(a6)
 a30:	0685                	addi	a3,a3,1
 a32:	0ff0000f          	fence
 a36:	00d78763          	beq	a5,a3,a44 <.L244>
 a3a:	0f50000f          	fence	iorw,ow
 a3e:	08d8302f          	amoswap.d	zero,a3,(a6)
 a42:	8082                	ret

0000000000000a44 <.L244>:
 a44:	0ff0000f          	fence
 a48:	8082                	ret

0000000000000a4a <.L226>:
 a4a:	0ff0000f          	fence
 a4e:	8082                	ret

0000000000000a50 <.L229>:
 a50:	458d                	li	a1,3
 a52:	6118                	ld	a4,0(a0)
 a54:	f8b686e3          	beq	a3,a1,9e0 <.L230>
 a58:	6394                	ld	a3,0(a5)
 a5a:	02d75733          	divu	a4,a4,a3
 a5e:	b749                	j	9e0 <.L230>

0000000000000a60 <.L231>:
 a60:	0ff0000f          	fence
 a64:	678c                	ld	a1,8(a5)
 a66:	4b90                	lw	a2,16(a5)
 a68:	6f94                	ld	a3,24(a5)
 a6a:	02b70733          	mul	a4,a4,a1
 a6e:	fff6079b          	addiw	a5,a2,-1
 a72:	ca05                	beqz	a2,aa2 <.L225>
 a74:	02079613          	slli	a2,a5,0x20
 a78:	01d65793          	srli	a5,a2,0x1d
 a7c:	973e                	add	a4,a4,a5
 a7e:	96ba                	add	a3,a3,a4
 a80:	97aa                	add	a5,a5,a0
 a82:	a011                	j	a86 <.L237>

0000000000000a84 <.L239>:
 a84:	87ba                	mv	a5,a4

0000000000000a86 <.L237>:
 a86:	6398                	ld	a4,0(a5)
 a88:	6290                	ld	a2,0(a3)
 a8a:	0705                	addi	a4,a4,1
 a8c:	00c70663          	beq	a4,a2,a98 <.L236>
 a90:	0f50000f          	fence	iorw,ow
 a94:	08e6b02f          	amoswap.d	zero,a4,(a3)

0000000000000a98 <.L236>:
 a98:	ff878713          	addi	a4,a5,-8
 a9c:	16e1                	addi	a3,a3,-8
 a9e:	fef513e3          	bne	a0,a5,a84 <.L239>

0000000000000aa2 <.L225>:
 aa2:	8082                	ret

0000000000000aa4 <GOMP_doacross_ull_wait>:
 aa4:	715d                	addi	sp,sp,-80
 aa6:	fc3e                	sd	a5,56(sp)
 aa8:	00000797          	auipc	a5,0x0
 aac:	0007b783          	ld	a5,0(a5) # aa8 <GOMP_doacross_ull_wait+0x4>
 ab0:	ec2e                	sd	a1,24(sp)
 ab2:	f032                	sd	a2,32(sp)
 ab4:	f436                	sd	a3,40(sp)
 ab6:	f83a                	sd	a4,48(sp)
 ab8:	e0c2                	sd	a6,64(sp)
 aba:	e4c6                	sd	a7,72(sp)
 abc:	9792                	add	a5,a5,tp
 abe:	6f98                	ld	a4,24(a5)
 ac0:	02073303          	ld	t1,32(a4)
 ac4:	0e030e63          	beqz	t1,bc0 <.L263>
 ac8:	01833883          	ld	a7,24(t1)
 acc:	0e088a63          	beqz	a7,bc0 <.L263>
 ad0:	4314                	lw	a3,0(a4)
 ad2:	4605                	li	a2,1
 ad4:	10c69263          	bne	a3,a2,bd8 <.L249>
 ad8:	6718                	ld	a4,8(a4)
 ada:	cb69                	beqz	a4,bac <.L279>
 adc:	02e555b3          	divu	a1,a0,a4
 ae0:	6b9c                	ld	a5,16(a5)
 ae2:	0007e783          	lwu	a5,0(a5)
 ae6:	02f5f5b3          	remu	a1,a1,a5

0000000000000aea <.L252>:
 aea:	00833703          	ld	a4,8(t1)
 aee:	01434783          	lbu	a5,20(t1)
 af2:	01810e93          	addi	t4,sp,24
 af6:	00150813          	addi	a6,a0,1
 afa:	02e585b3          	mul	a1,a1,a4
 afe:	c7bd                	beqz	a5,b6c <.L253>
 b00:	03832683          	lw	a3,56(t1)
 b04:	01032703          	lw	a4,16(t1)
 b08:	01810e13          	addi	t3,sp,24
 b0c:	e472                	sd	t3,8(sp)
 b0e:	4785                	li	a5,1
 b10:	00b88633          	add	a2,a7,a1
 b14:	00d51533          	sll	a0,a0,a3
 b18:	02e7fb63          	bgeu	a5,a4,b4e <.L254>
 b1c:	3779                	addiw	a4,a4,-2
 b1e:	02071813          	slli	a6,a4,0x20
 b22:	02085813          	srli	a6,a6,0x20
 b26:	00381893          	slli	a7,a6,0x3
 b2a:	1014                	addi	a3,sp,32
 b2c:	8772                	mv	a4,t3
 b2e:	03c30793          	addi	a5,t1,60
 b32:	98b6                	add	a7,a7,a3

0000000000000b34 <.L255>:
 b34:	438c                	lw	a1,0(a5)
 b36:	6314                	ld	a3,0(a4)
 b38:	0721                	addi	a4,a4,8
 b3a:	0791                	addi	a5,a5,4
 b3c:	00b696b3          	sll	a3,a3,a1
 b40:	8d55                	or	a0,a0,a3
 b42:	ff1719e3          	bne	a4,a7,b34 <.L255>
 b46:	0805                	addi	a6,a6,1
 b48:	080e                	slli	a6,a6,0x3
 b4a:	9e42                	add	t3,t3,a6
 b4c:	e472                	sd	t3,8(sp)

0000000000000b4e <.L254>:
 b4e:	621c                	ld	a5,0(a2)
 b50:	0ff0000f          	fence
 b54:	00f56563          	bltu	a0,a5,b5e <.L257>

0000000000000b58 <.L256>:
 b58:	621c                	ld	a5,0(a2)
 b5a:	fef57fe3          	bgeu	a0,a5,b58 <.L256>

0000000000000b5e <.L257>:
 b5e:	0ff0000f          	fence
 b62:	6161                	addi	sp,sp,80
 b64:	8082                	ret

0000000000000b66 <.L280>:
 b66:	8772                	mv	a4,t3

0000000000000b68 <.L258>:
 b68:	04ee0c63          	beq	t3,a4,bc0 <.L263>

0000000000000b6c <.L253>:
 b6c:	01032e03          	lw	t3,16(t1)
 b70:	e476                	sd	t4,8(sp)
 b72:	8772                	mv	a4,t3
 b74:	fe0e0ae3          	beqz	t3,b68 <.L258>
 b78:	4701                	li	a4,0
 b7a:	000e051b          	sext.w	a0,t3
 b7e:	a031                	j	b8a <.L262>

0000000000000b80 <.L261>:
 b80:	fed664e3          	bltu	a2,a3,b68 <.L258>
 b84:	2705                	addiw	a4,a4,1
 b86:	fea771e3          	bgeu	a4,a0,b68 <.L258>

0000000000000b8a <.L262>:
 b8a:	02071693          	slli	a3,a4,0x20
 b8e:	01d6d793          	srli	a5,a3,0x1d
 b92:	97c6                	add	a5,a5,a7
 b94:	97ae                	add	a5,a5,a1
 b96:	86c2                	mv	a3,a6
 b98:	c711                	beqz	a4,ba4 <.L260>
 b9a:	6622                	ld	a2,8(sp)
 b9c:	6214                	ld	a3,0(a2)
 b9e:	0621                	addi	a2,a2,8
 ba0:	e432                	sd	a2,8(sp)
 ba2:	0685                	addi	a3,a3,1

0000000000000ba4 <.L260>:
 ba4:	6390                	ld	a2,0(a5)
 ba6:	fcc6fde3          	bgeu	a3,a2,b80 <.L261>
 baa:	bf75                	j	b66 <.L280>

0000000000000bac <.L279>:
 bac:	02833703          	ld	a4,40(t1)
 bb0:	00033783          	ld	a5,0(t1)
 bb4:	00e57a63          	bgeu	a0,a4,bc8 <.L251>
 bb8:	0785                	addi	a5,a5,1
 bba:	02f555b3          	divu	a1,a0,a5
 bbe:	b735                	j	aea <.L252>

0000000000000bc0 <.L263>:
 bc0:	0ff0000f          	fence
 bc4:	6161                	addi	sp,sp,80
 bc6:	8082                	ret

0000000000000bc8 <.L251>:
 bc8:	40e505b3          	sub	a1,a0,a4
 bcc:	02f5d5b3          	divu	a1,a1,a5
 bd0:	02033783          	ld	a5,32(t1)
 bd4:	95be                	add	a1,a1,a5
 bd6:	bf11                	j	aea <.L252>

0000000000000bd8 <.L249>:
 bd8:	478d                	li	a5,3
 bda:	85aa                	mv	a1,a0
 bdc:	f0f687e3          	beq	a3,a5,aea <.L252>
 be0:	00033583          	ld	a1,0(t1)
 be4:	02b555b3          	divu	a1,a0,a1
 be8:	b709                	j	aea <.L252>
