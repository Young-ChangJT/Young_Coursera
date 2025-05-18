
c1m2.out:     file format elf32-littlearm


Disassembly of section .text:

00000140 <deregister_tm_clones>:
 140:	4b04      	ldr	r3, [pc, #16]	; (154 <deregister_tm_clones+0x14>)
 142:	4805      	ldr	r0, [pc, #20]	; (158 <deregister_tm_clones+0x18>)
 144:	1a1b      	subs	r3, r3, r0
 146:	2b06      	cmp	r3, #6
 148:	d902      	bls.n	150 <deregister_tm_clones+0x10>
 14a:	4b04      	ldr	r3, [pc, #16]	; (15c <deregister_tm_clones+0x1c>)
 14c:	b103      	cbz	r3, 150 <deregister_tm_clones+0x10>
 14e:	4718      	bx	r3
 150:	4770      	bx	lr
 152:	bf00      	nop
 154:	2000043f 	.word	0x2000043f
 158:	2000043c 	.word	0x2000043c
 15c:	00000000 	.word	0x00000000

00000160 <register_tm_clones>:
 160:	4905      	ldr	r1, [pc, #20]	; (178 <register_tm_clones+0x18>)
 162:	4806      	ldr	r0, [pc, #24]	; (17c <register_tm_clones+0x1c>)
 164:	1a09      	subs	r1, r1, r0
 166:	1089      	asrs	r1, r1, #2
 168:	eb01 71d1 	add.w	r1, r1, r1, lsr #31
 16c:	1049      	asrs	r1, r1, #1
 16e:	d002      	beq.n	176 <register_tm_clones+0x16>
 170:	4b03      	ldr	r3, [pc, #12]	; (180 <register_tm_clones+0x20>)
 172:	b103      	cbz	r3, 176 <register_tm_clones+0x16>
 174:	4718      	bx	r3
 176:	4770      	bx	lr
 178:	2000043c 	.word	0x2000043c
 17c:	2000043c 	.word	0x2000043c
 180:	00000000 	.word	0x00000000

00000184 <__do_global_dtors_aux>:
 184:	b510      	push	{r4, lr}
 186:	4c06      	ldr	r4, [pc, #24]	; (1a0 <__do_global_dtors_aux+0x1c>)
 188:	7823      	ldrb	r3, [r4, #0]
 18a:	b943      	cbnz	r3, 19e <__do_global_dtors_aux+0x1a>
 18c:	f7ff ffd8 	bl	140 <deregister_tm_clones>
 190:	4b04      	ldr	r3, [pc, #16]	; (1a4 <__do_global_dtors_aux+0x20>)
 192:	b113      	cbz	r3, 19a <__do_global_dtors_aux+0x16>
 194:	4804      	ldr	r0, [pc, #16]	; (1a8 <__do_global_dtors_aux+0x24>)
 196:	f3af 8000 	nop.w
 19a:	2301      	movs	r3, #1
 19c:	7023      	strb	r3, [r4, #0]
 19e:	bd10      	pop	{r4, pc}
 1a0:	2000043c 	.word	0x2000043c
 1a4:	00000000 	.word	0x00000000
 1a8:	00000ac0 	.word	0x00000ac0

000001ac <frame_dummy>:
 1ac:	b508      	push	{r3, lr}
 1ae:	4b08      	ldr	r3, [pc, #32]	; (1d0 <frame_dummy+0x24>)
 1b0:	b11b      	cbz	r3, 1ba <frame_dummy+0xe>
 1b2:	4908      	ldr	r1, [pc, #32]	; (1d4 <frame_dummy+0x28>)
 1b4:	4808      	ldr	r0, [pc, #32]	; (1d8 <frame_dummy+0x2c>)
 1b6:	f3af 8000 	nop.w
 1ba:	4808      	ldr	r0, [pc, #32]	; (1dc <frame_dummy+0x30>)
 1bc:	6803      	ldr	r3, [r0, #0]
 1be:	b913      	cbnz	r3, 1c6 <frame_dummy+0x1a>
 1c0:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 1c4:	e7cc      	b.n	160 <register_tm_clones>
 1c6:	4b06      	ldr	r3, [pc, #24]	; (1e0 <frame_dummy+0x34>)
 1c8:	2b00      	cmp	r3, #0
 1ca:	d0f9      	beq.n	1c0 <frame_dummy+0x14>
 1cc:	4798      	blx	r3
 1ce:	e7f7      	b.n	1c0 <frame_dummy+0x14>
 1d0:	00000000 	.word	0x00000000
 1d4:	20000440 	.word	0x20000440
 1d8:	00000ac0 	.word	0x00000ac0
 1dc:	20000438 	.word	0x20000438
 1e0:	00000000 	.word	0x00000000

000001e4 <_mainCRTStartup>:
 1e4:	4b13      	ldr	r3, [pc, #76]	; (234 <_mainCRTStartup+0x50>)
 1e6:	2b00      	cmp	r3, #0
 1e8:	bf08      	it	eq
 1ea:	4b11      	ldreq	r3, [pc, #68]	; (230 <_mainCRTStartup+0x4c>)
 1ec:	469d      	mov	sp, r3
 1ee:	f5a3 3a80 	sub.w	sl, r3, #65536	; 0x10000
 1f2:	2100      	movs	r1, #0
 1f4:	468b      	mov	fp, r1
 1f6:	460f      	mov	r7, r1
 1f8:	4811      	ldr	r0, [pc, #68]	; (240 <_mainCRTStartup+0x5c>)
 1fa:	4a12      	ldr	r2, [pc, #72]	; (244 <_mainCRTStartup+0x60>)
 1fc:	1a12      	subs	r2, r2, r0
 1fe:	f000 fae3 	bl	7c8 <memset>
 202:	4b0d      	ldr	r3, [pc, #52]	; (238 <_mainCRTStartup+0x54>)
 204:	2b00      	cmp	r3, #0
 206:	d000      	beq.n	20a <_mainCRTStartup+0x26>
 208:	4798      	blx	r3
 20a:	4b0c      	ldr	r3, [pc, #48]	; (23c <_mainCRTStartup+0x58>)
 20c:	2b00      	cmp	r3, #0
 20e:	d000      	beq.n	212 <_mainCRTStartup+0x2e>
 210:	4798      	blx	r3
 212:	2000      	movs	r0, #0
 214:	2100      	movs	r1, #0
 216:	0004      	movs	r4, r0
 218:	000d      	movs	r5, r1
 21a:	480b      	ldr	r0, [pc, #44]	; (248 <_mainCRTStartup+0x64>)
 21c:	f000 fa82 	bl	724 <atexit>
 220:	f000 faaa 	bl	778 <__libc_init_array>
 224:	0020      	movs	r0, r4
 226:	0029      	movs	r1, r5
 228:	f000 f810 	bl	24c <main>
 22c:	f000 fa80 	bl	730 <exit>
 230:	00080000 	.word	0x00080000
 234:	20000468 	.word	0x20000468
	...
 240:	2000043c 	.word	0x2000043c
 244:	20000464 	.word	0x20000464
 248:	00000751 	.word	0x00000751

0000024c <main>:
 24c:	b580      	push	{r7, lr}
 24e:	b082      	sub	sp, #8
 250:	af00      	add	r7, sp, #0
 252:	210a      	movs	r1, #10
 254:	4828      	ldr	r0, [pc, #160]	; (2f8 <main+0xac>)
 256:	f000 f89f 	bl	398 <clear_all>
 25a:	4b28      	ldr	r3, [pc, #160]	; (2fc <main+0xb0>)
 25c:	2202      	movs	r2, #2
 25e:	212b      	movs	r1, #43	; 0x2b
 260:	4618      	mov	r0, r3
 262:	f000 f87d 	bl	360 <set_all>
 266:	2261      	movs	r2, #97	; 0x61
 268:	2100      	movs	r1, #0
 26a:	4823      	ldr	r0, [pc, #140]	; (2f8 <main+0xac>)
 26c:	f000 f848 	bl	300 <set_value>
 270:	2109      	movs	r1, #9
 272:	4821      	ldr	r0, [pc, #132]	; (2f8 <main+0xac>)
 274:	f000 f864 	bl	340 <get_value>
 278:	4603      	mov	r3, r0
 27a:	70fb      	strb	r3, [r7, #3]
 27c:	78fb      	ldrb	r3, [r7, #3]
 27e:	3327      	adds	r3, #39	; 0x27
 280:	b2db      	uxtb	r3, r3
 282:	461a      	mov	r2, r3
 284:	2109      	movs	r1, #9
 286:	481c      	ldr	r0, [pc, #112]	; (2f8 <main+0xac>)
 288:	f000 f83a 	bl	300 <set_value>
 28c:	2237      	movs	r2, #55	; 0x37
 28e:	2103      	movs	r1, #3
 290:	4819      	ldr	r0, [pc, #100]	; (2f8 <main+0xac>)
 292:	f000 f835 	bl	300 <set_value>
 296:	2258      	movs	r2, #88	; 0x58
 298:	2101      	movs	r1, #1
 29a:	4817      	ldr	r0, [pc, #92]	; (2f8 <main+0xac>)
 29c:	f000 f830 	bl	300 <set_value>
 2a0:	2232      	movs	r2, #50	; 0x32
 2a2:	2104      	movs	r1, #4
 2a4:	4814      	ldr	r0, [pc, #80]	; (2f8 <main+0xac>)
 2a6:	f000 f82b 	bl	300 <set_value>
 2aa:	2101      	movs	r1, #1
 2ac:	4812      	ldr	r0, [pc, #72]	; (2f8 <main+0xac>)
 2ae:	f000 f847 	bl	340 <get_value>
 2b2:	4603      	mov	r3, r0
 2b4:	70fb      	strb	r3, [r7, #3]
 2b6:	2279      	movs	r2, #121	; 0x79
 2b8:	2102      	movs	r1, #2
 2ba:	480f      	ldr	r0, [pc, #60]	; (2f8 <main+0xac>)
 2bc:	f000 f820 	bl	300 <set_value>
 2c0:	78fb      	ldrb	r3, [r7, #3]
 2c2:	3b0c      	subs	r3, #12
 2c4:	b2db      	uxtb	r3, r3
 2c6:	461a      	mov	r2, r3
 2c8:	2107      	movs	r1, #7
 2ca:	480b      	ldr	r0, [pc, #44]	; (2f8 <main+0xac>)
 2cc:	f000 f818 	bl	300 <set_value>
 2d0:	225f      	movs	r2, #95	; 0x5f
 2d2:	2105      	movs	r1, #5
 2d4:	4808      	ldr	r0, [pc, #32]	; (2f8 <main+0xac>)
 2d6:	f000 f813 	bl	300 <set_value>
 2da:	2300      	movs	r3, #0
 2dc:	607b      	str	r3, [r7, #4]
 2de:	e002      	b.n	2e6 <main+0x9a>
 2e0:	687b      	ldr	r3, [r7, #4]
 2e2:	3301      	adds	r3, #1
 2e4:	607b      	str	r3, [r7, #4]
 2e6:	687b      	ldr	r3, [r7, #4]
 2e8:	2b09      	cmp	r3, #9
 2ea:	d9f9      	bls.n	2e0 <main+0x94>
 2ec:	2300      	movs	r3, #0
 2ee:	4618      	mov	r0, r3
 2f0:	3708      	adds	r7, #8
 2f2:	46bd      	mov	sp, r7
 2f4:	bd80      	pop	{r7, pc}
 2f6:	bf00      	nop
 2f8:	20000458 	.word	0x20000458
 2fc:	20000460 	.word	0x20000460

00000300 <set_value>:
 300:	b480      	push	{r7}
 302:	b085      	sub	sp, #20
 304:	af00      	add	r7, sp, #0
 306:	60f8      	str	r0, [r7, #12]
 308:	60b9      	str	r1, [r7, #8]
 30a:	4613      	mov	r3, r2
 30c:	71fb      	strb	r3, [r7, #7]
 30e:	68fa      	ldr	r2, [r7, #12]
 310:	68bb      	ldr	r3, [r7, #8]
 312:	4413      	add	r3, r2
 314:	79fa      	ldrb	r2, [r7, #7]
 316:	701a      	strb	r2, [r3, #0]
 318:	bf00      	nop
 31a:	3714      	adds	r7, #20
 31c:	46bd      	mov	sp, r7
 31e:	f85d 7b04 	ldr.w	r7, [sp], #4
 322:	4770      	bx	lr

00000324 <clear_value>:
 324:	b580      	push	{r7, lr}
 326:	b082      	sub	sp, #8
 328:	af00      	add	r7, sp, #0
 32a:	6078      	str	r0, [r7, #4]
 32c:	6039      	str	r1, [r7, #0]
 32e:	2200      	movs	r2, #0
 330:	6839      	ldr	r1, [r7, #0]
 332:	6878      	ldr	r0, [r7, #4]
 334:	f7ff ffe4 	bl	300 <set_value>
 338:	bf00      	nop
 33a:	3708      	adds	r7, #8
 33c:	46bd      	mov	sp, r7
 33e:	bd80      	pop	{r7, pc}

00000340 <get_value>:
 340:	b480      	push	{r7}
 342:	b083      	sub	sp, #12
 344:	af00      	add	r7, sp, #0
 346:	6078      	str	r0, [r7, #4]
 348:	6039      	str	r1, [r7, #0]
 34a:	687a      	ldr	r2, [r7, #4]
 34c:	683b      	ldr	r3, [r7, #0]
 34e:	4413      	add	r3, r2
 350:	781b      	ldrb	r3, [r3, #0]
 352:	4618      	mov	r0, r3
 354:	370c      	adds	r7, #12
 356:	46bd      	mov	sp, r7
 358:	f85d 7b04 	ldr.w	r7, [sp], #4
 35c:	4770      	bx	lr
 35e:	bf00      	nop

00000360 <set_all>:
 360:	b580      	push	{r7, lr}
 362:	b086      	sub	sp, #24
 364:	af00      	add	r7, sp, #0
 366:	60f8      	str	r0, [r7, #12]
 368:	460b      	mov	r3, r1
 36a:	607a      	str	r2, [r7, #4]
 36c:	72fb      	strb	r3, [r7, #11]
 36e:	2300      	movs	r3, #0
 370:	617b      	str	r3, [r7, #20]
 372:	e008      	b.n	386 <set_all+0x26>
 374:	7afb      	ldrb	r3, [r7, #11]
 376:	461a      	mov	r2, r3
 378:	6979      	ldr	r1, [r7, #20]
 37a:	68f8      	ldr	r0, [r7, #12]
 37c:	f7ff ffc0 	bl	300 <set_value>
 380:	697b      	ldr	r3, [r7, #20]
 382:	3301      	adds	r3, #1
 384:	617b      	str	r3, [r7, #20]
 386:	697a      	ldr	r2, [r7, #20]
 388:	687b      	ldr	r3, [r7, #4]
 38a:	429a      	cmp	r2, r3
 38c:	d3f2      	bcc.n	374 <set_all+0x14>
 38e:	bf00      	nop
 390:	3718      	adds	r7, #24
 392:	46bd      	mov	sp, r7
 394:	bd80      	pop	{r7, pc}
 396:	bf00      	nop

00000398 <clear_all>:
 398:	b580      	push	{r7, lr}
 39a:	b082      	sub	sp, #8
 39c:	af00      	add	r7, sp, #0
 39e:	6078      	str	r0, [r7, #4]
 3a0:	6039      	str	r1, [r7, #0]
 3a2:	683a      	ldr	r2, [r7, #0]
 3a4:	2100      	movs	r1, #0
 3a6:	6878      	ldr	r0, [r7, #4]
 3a8:	f7ff ffda 	bl	360 <set_all>
 3ac:	bf00      	nop
 3ae:	3708      	adds	r7, #8
 3b0:	46bd      	mov	sp, r7
 3b2:	bd80      	pop	{r7, pc}

000003b4 <SystemCoreClockUpdate>:
 3b4:	b480      	push	{r7}
 3b6:	b089      	sub	sp, #36	; 0x24
 3b8:	af00      	add	r7, sp, #0
 3ba:	4bab      	ldr	r3, [pc, #684]	; (668 <SystemCoreClockUpdate+0x2b4>)
 3bc:	689b      	ldr	r3, [r3, #8]
 3be:	f403 23e0 	and.w	r3, r3, #458752	; 0x70000
 3c2:	0c1b      	lsrs	r3, r3, #16
 3c4:	60fb      	str	r3, [r7, #12]
 3c6:	2201      	movs	r2, #1
 3c8:	68fb      	ldr	r3, [r7, #12]
 3ca:	fa02 f303 	lsl.w	r3, r2, r3
 3ce:	72fb      	strb	r3, [r7, #11]
 3d0:	4ba5      	ldr	r3, [pc, #660]	; (668 <SystemCoreClockUpdate+0x2b4>)
 3d2:	689b      	ldr	r3, [r3, #8]
 3d4:	f003 0307 	and.w	r3, r3, #7
 3d8:	607b      	str	r3, [r7, #4]
 3da:	687b      	ldr	r3, [r7, #4]
 3dc:	2b05      	cmp	r3, #5
 3de:	f200 813d 	bhi.w	65c <SystemCoreClockUpdate+0x2a8>
 3e2:	a201      	add	r2, pc, #4	; (adr r2, 3e8 <SystemCoreClockUpdate+0x34>)
 3e4:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
 3e8:	00000401 	.word	0x00000401
 3ec:	00000481 	.word	0x00000481
 3f0:	00000493 	.word	0x00000493
 3f4:	000004c1 	.word	0x000004c1
 3f8:	000005d1 	.word	0x000005d1
 3fc:	000005e1 	.word	0x000005e1
 400:	4b9a      	ldr	r3, [pc, #616]	; (66c <SystemCoreClockUpdate+0x2b8>)
 402:	781b      	ldrb	r3, [r3, #0]
 404:	b2db      	uxtb	r3, r3
 406:	2b00      	cmp	r3, #0
 408:	d031      	beq.n	46e <SystemCoreClockUpdate+0xba>
 40a:	4b97      	ldr	r3, [pc, #604]	; (668 <SystemCoreClockUpdate+0x2b4>)
 40c:	f646 125a 	movw	r2, #26970	; 0x695a
 410:	601a      	str	r2, [r3, #0]
 412:	4a95      	ldr	r2, [pc, #596]	; (668 <SystemCoreClockUpdate+0x2b4>)
 414:	4b94      	ldr	r3, [pc, #592]	; (668 <SystemCoreClockUpdate+0x2b4>)
 416:	6d1b      	ldr	r3, [r3, #80]	; 0x50
 418:	f043 0301 	orr.w	r3, r3, #1
 41c:	6513      	str	r3, [r2, #80]	; 0x50
 41e:	4b92      	ldr	r3, [pc, #584]	; (668 <SystemCoreClockUpdate+0x2b4>)
 420:	2201      	movs	r2, #1
 422:	601a      	str	r2, [r3, #0]
 424:	4b91      	ldr	r3, [pc, #580]	; (66c <SystemCoreClockUpdate+0x2b8>)
 426:	781b      	ldrb	r3, [r3, #0]
 428:	b2db      	uxtb	r3, r3
 42a:	2b00      	cmp	r3, #0
 42c:	d016      	beq.n	45c <SystemCoreClockUpdate+0xa8>
 42e:	4b90      	ldr	r3, [pc, #576]	; (670 <SystemCoreClockUpdate+0x2bc>)
 430:	781b      	ldrb	r3, [r3, #0]
 432:	b2db      	uxtb	r3, r3
 434:	2b00      	cmp	r3, #0
 436:	d008      	beq.n	44a <SystemCoreClockUpdate+0x96>
 438:	7afb      	ldrb	r3, [r7, #11]
 43a:	f44f 32fa 	mov.w	r2, #128000	; 0x1f400
 43e:	fb92 f3f3 	sdiv	r3, r2, r3
 442:	461a      	mov	r2, r3
 444:	4b8b      	ldr	r3, [pc, #556]	; (674 <SystemCoreClockUpdate+0x2c0>)
 446:	601a      	str	r2, [r3, #0]
 448:	e108      	b.n	65c <SystemCoreClockUpdate+0x2a8>
 44a:	7afb      	ldrb	r3, [r7, #11]
 44c:	f44f 42fa 	mov.w	r2, #32000	; 0x7d00
 450:	fb92 f3f3 	sdiv	r3, r2, r3
 454:	461a      	mov	r2, r3
 456:	4b87      	ldr	r3, [pc, #540]	; (674 <SystemCoreClockUpdate+0x2c0>)
 458:	601a      	str	r2, [r3, #0]
 45a:	e0ff      	b.n	65c <SystemCoreClockUpdate+0x2a8>
 45c:	7afb      	ldrb	r3, [r7, #11]
 45e:	f44f 4200 	mov.w	r2, #32768	; 0x8000
 462:	fb92 f3f3 	sdiv	r3, r2, r3
 466:	461a      	mov	r2, r3
 468:	4b82      	ldr	r3, [pc, #520]	; (674 <SystemCoreClockUpdate+0x2c0>)
 46a:	601a      	str	r2, [r3, #0]
 46c:	e0f6      	b.n	65c <SystemCoreClockUpdate+0x2a8>
 46e:	7afb      	ldrb	r3, [r7, #11]
 470:	f44f 4200 	mov.w	r2, #32768	; 0x8000
 474:	fb92 f3f3 	sdiv	r3, r2, r3
 478:	461a      	mov	r2, r3
 47a:	4b7e      	ldr	r3, [pc, #504]	; (674 <SystemCoreClockUpdate+0x2c0>)
 47c:	601a      	str	r2, [r3, #0]
 47e:	e0ed      	b.n	65c <SystemCoreClockUpdate+0x2a8>
 480:	7afb      	ldrb	r3, [r7, #11]
 482:	f242 7210 	movw	r2, #10000	; 0x2710
 486:	fb92 f3f3 	sdiv	r3, r2, r3
 48a:	461a      	mov	r2, r3
 48c:	4b79      	ldr	r3, [pc, #484]	; (674 <SystemCoreClockUpdate+0x2c0>)
 48e:	601a      	str	r2, [r3, #0]
 490:	e0e4      	b.n	65c <SystemCoreClockUpdate+0x2a8>
 492:	4b77      	ldr	r3, [pc, #476]	; (670 <SystemCoreClockUpdate+0x2bc>)
 494:	781b      	ldrb	r3, [r3, #0]
 496:	b2db      	uxtb	r3, r3
 498:	2b00      	cmp	r3, #0
 49a:	d008      	beq.n	4ae <SystemCoreClockUpdate+0xfa>
 49c:	7afb      	ldrb	r3, [r7, #11]
 49e:	f44f 32fa 	mov.w	r2, #128000	; 0x1f400
 4a2:	fb92 f3f3 	sdiv	r3, r2, r3
 4a6:	461a      	mov	r2, r3
 4a8:	4b72      	ldr	r3, [pc, #456]	; (674 <SystemCoreClockUpdate+0x2c0>)
 4aa:	601a      	str	r2, [r3, #0]
 4ac:	e0d6      	b.n	65c <SystemCoreClockUpdate+0x2a8>
 4ae:	7afb      	ldrb	r3, [r7, #11]
 4b0:	f44f 42fa 	mov.w	r2, #32000	; 0x7d00
 4b4:	fb92 f3f3 	sdiv	r3, r2, r3
 4b8:	461a      	mov	r2, r3
 4ba:	4b6e      	ldr	r3, [pc, #440]	; (674 <SystemCoreClockUpdate+0x2c0>)
 4bc:	601a      	str	r2, [r3, #0]
 4be:	e0cd      	b.n	65c <SystemCoreClockUpdate+0x2a8>
 4c0:	4b69      	ldr	r3, [pc, #420]	; (668 <SystemCoreClockUpdate+0x2b4>)
 4c2:	685b      	ldr	r3, [r3, #4]
 4c4:	b21b      	sxth	r3, r3
 4c6:	f3c3 0309 	ubfx	r3, r3, #0, #10
 4ca:	827b      	strh	r3, [r7, #18]
 4cc:	4b66      	ldr	r3, [pc, #408]	; (668 <SystemCoreClockUpdate+0x2b4>)
 4ce:	685b      	ldr	r3, [r3, #4]
 4d0:	f403 23e0 	and.w	r3, r3, #458752	; 0x70000
 4d4:	f5b3 3f00 	cmp.w	r3, #131072	; 0x20000
 4d8:	d018      	beq.n	50c <SystemCoreClockUpdate+0x158>
 4da:	f5b3 3f00 	cmp.w	r3, #131072	; 0x20000
 4de:	d805      	bhi.n	4ec <SystemCoreClockUpdate+0x138>
 4e0:	2b00      	cmp	r3, #0
 4e2:	d00d      	beq.n	500 <SystemCoreClockUpdate+0x14c>
 4e4:	f5b3 3f80 	cmp.w	r3, #65536	; 0x10000
 4e8:	d00d      	beq.n	506 <SystemCoreClockUpdate+0x152>
 4ea:	e01b      	b.n	524 <SystemCoreClockUpdate+0x170>
 4ec:	f5b3 2f80 	cmp.w	r3, #262144	; 0x40000
 4f0:	d012      	beq.n	518 <SystemCoreClockUpdate+0x164>
 4f2:	f5b3 2fa0 	cmp.w	r3, #327680	; 0x50000
 4f6:	d012      	beq.n	51e <SystemCoreClockUpdate+0x16a>
 4f8:	f5b3 3f40 	cmp.w	r3, #196608	; 0x30000
 4fc:	d009      	beq.n	512 <SystemCoreClockUpdate+0x15e>
 4fe:	e011      	b.n	524 <SystemCoreClockUpdate+0x170>
 500:	4b5d      	ldr	r3, [pc, #372]	; (678 <SystemCoreClockUpdate+0x2c4>)
 502:	617b      	str	r3, [r7, #20]
 504:	e00e      	b.n	524 <SystemCoreClockUpdate+0x170>
 506:	4b5d      	ldr	r3, [pc, #372]	; (67c <SystemCoreClockUpdate+0x2c8>)
 508:	617b      	str	r3, [r7, #20]
 50a:	e00b      	b.n	524 <SystemCoreClockUpdate+0x170>
 50c:	4b5c      	ldr	r3, [pc, #368]	; (680 <SystemCoreClockUpdate+0x2cc>)
 50e:	617b      	str	r3, [r7, #20]
 510:	e008      	b.n	524 <SystemCoreClockUpdate+0x170>
 512:	4b5c      	ldr	r3, [pc, #368]	; (684 <SystemCoreClockUpdate+0x2d0>)
 514:	617b      	str	r3, [r7, #20]
 516:	e005      	b.n	524 <SystemCoreClockUpdate+0x170>
 518:	4b5b      	ldr	r3, [pc, #364]	; (688 <SystemCoreClockUpdate+0x2d4>)
 51a:	617b      	str	r3, [r7, #20]
 51c:	e002      	b.n	524 <SystemCoreClockUpdate+0x170>
 51e:	4b5b      	ldr	r3, [pc, #364]	; (68c <SystemCoreClockUpdate+0x2d8>)
 520:	617b      	str	r3, [r7, #20]
 522:	bf00      	nop
 524:	f9b7 3012 	ldrsh.w	r3, [r7, #18]
 528:	2b00      	cmp	r3, #0
 52a:	d103      	bne.n	534 <SystemCoreClockUpdate+0x180>
 52c:	4a51      	ldr	r2, [pc, #324]	; (674 <SystemCoreClockUpdate+0x2c0>)
 52e:	697b      	ldr	r3, [r7, #20]
 530:	6013      	str	r3, [r2, #0]
 532:	e093      	b.n	65c <SystemCoreClockUpdate+0x2a8>
 534:	8a7b      	ldrh	r3, [r7, #18]
 536:	f403 5380 	and.w	r3, r3, #4096	; 0x1000
 53a:	2b00      	cmp	r3, #0
 53c:	d005      	beq.n	54a <SystemCoreClockUpdate+0x196>
 53e:	8a7b      	ldrh	r3, [r7, #18]
 540:	ea6f 5303 	mvn.w	r3, r3, lsl #20
 544:	ea6f 5313 	mvn.w	r3, r3, lsr #20
 548:	827b      	strh	r3, [r7, #18]
 54a:	4b51      	ldr	r3, [pc, #324]	; (690 <SystemCoreClockUpdate+0x2dc>)
 54c:	781b      	ldrb	r3, [r3, #0]
 54e:	b2db      	uxtb	r3, r3
 550:	2b00      	cmp	r3, #0
 552:	d006      	beq.n	562 <SystemCoreClockUpdate+0x1ae>
 554:	4b4f      	ldr	r3, [pc, #316]	; (694 <SystemCoreClockUpdate+0x2e0>)
 556:	681b      	ldr	r3, [r3, #0]
 558:	61fb      	str	r3, [r7, #28]
 55a:	4b4f      	ldr	r3, [pc, #316]	; (698 <SystemCoreClockUpdate+0x2e4>)
 55c:	6edb      	ldr	r3, [r3, #108]	; 0x6c
 55e:	61bb      	str	r3, [r7, #24]
 560:	e005      	b.n	56e <SystemCoreClockUpdate+0x1ba>
 562:	4b4e      	ldr	r3, [pc, #312]	; (69c <SystemCoreClockUpdate+0x2e8>)
 564:	681b      	ldr	r3, [r3, #0]
 566:	61fb      	str	r3, [r7, #28]
 568:	4b4b      	ldr	r3, [pc, #300]	; (698 <SystemCoreClockUpdate+0x2e4>)
 56a:	6cdb      	ldr	r3, [r3, #76]	; 0x4c
 56c:	61bb      	str	r3, [r7, #24]
 56e:	697b      	ldr	r3, [r7, #20]
 570:	ee07 3a90 	vmov	s15, r3
 574:	eef8 6a67 	vcvt.f32.u32	s13, s15
 578:	f9b7 3012 	ldrsh.w	r3, [r7, #18]
 57c:	ee07 3a90 	vmov	s15, r3
 580:	eeb8 7ae7 	vcvt.f32.s32	s14, s15
 584:	edd7 7a07 	vldr	s15, [r7, #28]
 588:	ee27 6a27 	vmul.f32	s12, s14, s15
 58c:	69bb      	ldr	r3, [r7, #24]
 58e:	f5c3 7340 	rsb	r3, r3, #768	; 0x300
 592:	ee07 3a90 	vmov	s15, r3
 596:	eeb8 7ae7 	vcvt.f32.s32	s14, s15
 59a:	edd7 7a07 	vldr	s15, [r7, #28]
 59e:	ee67 7a27 	vmul.f32	s15, s14, s15
 5a2:	eeb7 7a00 	vmov.f32	s14, #112	; 0x3f800000  1.0
 5a6:	ee77 7a87 	vadd.f32	s15, s15, s14
 5aa:	eeb2 7a00 	vmov.f32	s14, #32	; 0x41000000  8.0
 5ae:	ee27 7a87 	vmul.f32	s14, s15, s14
 5b2:	eec6 7a07 	vdiv.f32	s15, s12, s14
 5b6:	eeb7 7a00 	vmov.f32	s14, #112	; 0x3f800000  1.0
 5ba:	ee37 7a67 	vsub.f32	s14, s14, s15
 5be:	eec6 7a87 	vdiv.f32	s15, s13, s14
 5c2:	eefc 7ae7 	vcvt.u32.f32	s15, s15
 5c6:	ee17 2a90 	vmov	r2, s15
 5ca:	4b2a      	ldr	r3, [pc, #168]	; (674 <SystemCoreClockUpdate+0x2c0>)
 5cc:	601a      	str	r2, [r3, #0]
 5ce:	e045      	b.n	65c <SystemCoreClockUpdate+0x2a8>
 5d0:	7afb      	ldrb	r3, [r7, #11]
 5d2:	4a2d      	ldr	r2, [pc, #180]	; (688 <SystemCoreClockUpdate+0x2d4>)
 5d4:	fb92 f3f3 	sdiv	r3, r2, r3
 5d8:	461a      	mov	r2, r3
 5da:	4b26      	ldr	r3, [pc, #152]	; (674 <SystemCoreClockUpdate+0x2c0>)
 5dc:	601a      	str	r2, [r3, #0]
 5de:	e03d      	b.n	65c <SystemCoreClockUpdate+0x2a8>
 5e0:	4b2f      	ldr	r3, [pc, #188]	; (6a0 <SystemCoreClockUpdate+0x2ec>)
 5e2:	781b      	ldrb	r3, [r3, #0]
 5e4:	b2db      	uxtb	r3, r3
 5e6:	2b00      	cmp	r3, #0
 5e8:	d030      	beq.n	64c <SystemCoreClockUpdate+0x298>
 5ea:	4b1f      	ldr	r3, [pc, #124]	; (668 <SystemCoreClockUpdate+0x2b4>)
 5ec:	f646 125a 	movw	r2, #26970	; 0x695a
 5f0:	601a      	str	r2, [r3, #0]
 5f2:	4a1d      	ldr	r2, [pc, #116]	; (668 <SystemCoreClockUpdate+0x2b4>)
 5f4:	4b1c      	ldr	r3, [pc, #112]	; (668 <SystemCoreClockUpdate+0x2b4>)
 5f6:	6d1b      	ldr	r3, [r3, #80]	; 0x50
 5f8:	f043 0302 	orr.w	r3, r3, #2
 5fc:	6513      	str	r3, [r2, #80]	; 0x50
 5fe:	4b1a      	ldr	r3, [pc, #104]	; (668 <SystemCoreClockUpdate+0x2b4>)
 600:	2201      	movs	r2, #1
 602:	601a      	str	r2, [r3, #0]
 604:	4b26      	ldr	r3, [pc, #152]	; (6a0 <SystemCoreClockUpdate+0x2ec>)
 606:	781b      	ldrb	r3, [r3, #0]
 608:	b2db      	uxtb	r3, r3
 60a:	2b00      	cmp	r3, #0
 60c:	d016      	beq.n	63c <SystemCoreClockUpdate+0x288>
 60e:	4b18      	ldr	r3, [pc, #96]	; (670 <SystemCoreClockUpdate+0x2bc>)
 610:	781b      	ldrb	r3, [r3, #0]
 612:	b2db      	uxtb	r3, r3
 614:	2b00      	cmp	r3, #0
 616:	d008      	beq.n	62a <SystemCoreClockUpdate+0x276>
 618:	7afb      	ldrb	r3, [r7, #11]
 61a:	f44f 32fa 	mov.w	r2, #128000	; 0x1f400
 61e:	fb92 f3f3 	sdiv	r3, r2, r3
 622:	461a      	mov	r2, r3
 624:	4b13      	ldr	r3, [pc, #76]	; (674 <SystemCoreClockUpdate+0x2c0>)
 626:	601a      	str	r2, [r3, #0]
 628:	e017      	b.n	65a <SystemCoreClockUpdate+0x2a6>
 62a:	7afb      	ldrb	r3, [r7, #11]
 62c:	f44f 42fa 	mov.w	r2, #32000	; 0x7d00
 630:	fb92 f3f3 	sdiv	r3, r2, r3
 634:	461a      	mov	r2, r3
 636:	4b0f      	ldr	r3, [pc, #60]	; (674 <SystemCoreClockUpdate+0x2c0>)
 638:	601a      	str	r2, [r3, #0]
 63a:	e00e      	b.n	65a <SystemCoreClockUpdate+0x2a6>
 63c:	7afb      	ldrb	r3, [r7, #11]
 63e:	4a13      	ldr	r2, [pc, #76]	; (68c <SystemCoreClockUpdate+0x2d8>)
 640:	fb92 f3f3 	sdiv	r3, r2, r3
 644:	461a      	mov	r2, r3
 646:	4b0b      	ldr	r3, [pc, #44]	; (674 <SystemCoreClockUpdate+0x2c0>)
 648:	601a      	str	r2, [r3, #0]
 64a:	e006      	b.n	65a <SystemCoreClockUpdate+0x2a6>
 64c:	7afb      	ldrb	r3, [r7, #11]
 64e:	4a0f      	ldr	r2, [pc, #60]	; (68c <SystemCoreClockUpdate+0x2d8>)
 650:	fb92 f3f3 	sdiv	r3, r2, r3
 654:	461a      	mov	r2, r3
 656:	4b07      	ldr	r3, [pc, #28]	; (674 <SystemCoreClockUpdate+0x2c0>)
 658:	601a      	str	r2, [r3, #0]
 65a:	bf00      	nop
 65c:	bf00      	nop
 65e:	3724      	adds	r7, #36	; 0x24
 660:	46bd      	mov	sp, r7
 662:	f85d 7b04 	ldr.w	r7, [sp], #4
 666:	4770      	bx	lr
 668:	40010400 	.word	0x40010400
 66c:	42208900 	.word	0x42208900
 670:	4220863c 	.word	0x4220863c
 674:	20000004 	.word	0x20000004
 678:	0016e360 	.word	0x0016e360
 67c:	002dc6c0 	.word	0x002dc6c0
 680:	005b8d80 	.word	0x005b8d80
 684:	00b71b00 	.word	0x00b71b00
 688:	016e3600 	.word	0x016e3600
 68c:	02dc6c00 	.word	0x02dc6c00
 690:	422080d8 	.word	0x422080d8
 694:	00201084 	.word	0x00201084
 698:	00201000 	.word	0x00201000
 69c:	00201064 	.word	0x00201064
 6a0:	42208904 	.word	0x42208904

000006a4 <SystemInit>:
 6a4:	b480      	push	{r7}
 6a6:	af00      	add	r7, sp, #0
 6a8:	4a19      	ldr	r2, [pc, #100]	; (710 <SystemInit+0x6c>)
 6aa:	4b19      	ldr	r3, [pc, #100]	; (710 <SystemInit+0x6c>)
 6ac:	f8d3 3088 	ldr.w	r3, [r3, #136]	; 0x88
 6b0:	f443 0370 	orr.w	r3, r3, #15728640	; 0xf00000
 6b4:	f8c2 3088 	str.w	r3, [r2, #136]	; 0x88
 6b8:	4b16      	ldr	r3, [pc, #88]	; (714 <SystemInit+0x70>)
 6ba:	f44f 42b5 	mov.w	r2, #23168	; 0x5a80
 6be:	819a      	strh	r2, [r3, #12]
 6c0:	4b15      	ldr	r3, [pc, #84]	; (718 <SystemInit+0x74>)
 6c2:	2280      	movs	r2, #128	; 0x80
 6c4:	615a      	str	r2, [r3, #20]
 6c6:	4b15      	ldr	r3, [pc, #84]	; (71c <SystemInit+0x78>)
 6c8:	f646 125a 	movw	r2, #26970	; 0x695a
 6cc:	601a      	str	r2, [r3, #0]
 6ce:	4b13      	ldr	r3, [pc, #76]	; (71c <SystemInit+0x78>)
 6d0:	f44f 3280 	mov.w	r2, #65536	; 0x10000
 6d4:	605a      	str	r2, [r3, #4]
 6d6:	4a11      	ldr	r2, [pc, #68]	; (71c <SystemInit+0x78>)
 6d8:	4b10      	ldr	r3, [pc, #64]	; (71c <SystemInit+0x78>)
 6da:	689b      	ldr	r3, [r3, #8]
 6dc:	f023 1307 	bic.w	r3, r3, #458759	; 0x70007
 6e0:	f043 0303 	orr.w	r3, r3, #3
 6e4:	6093      	str	r3, [r2, #8]
 6e6:	4b0d      	ldr	r3, [pc, #52]	; (71c <SystemInit+0x78>)
 6e8:	2200      	movs	r2, #0
 6ea:	601a      	str	r2, [r3, #0]
 6ec:	4a0c      	ldr	r2, [pc, #48]	; (720 <SystemInit+0x7c>)
 6ee:	4b0c      	ldr	r3, [pc, #48]	; (720 <SystemInit+0x7c>)
 6f0:	691b      	ldr	r3, [r3, #16]
 6f2:	f023 0330 	bic.w	r3, r3, #48	; 0x30
 6f6:	6113      	str	r3, [r2, #16]
 6f8:	4a09      	ldr	r2, [pc, #36]	; (720 <SystemInit+0x7c>)
 6fa:	4b09      	ldr	r3, [pc, #36]	; (720 <SystemInit+0x7c>)
 6fc:	695b      	ldr	r3, [r3, #20]
 6fe:	f023 0330 	bic.w	r3, r3, #48	; 0x30
 702:	6153      	str	r3, [r2, #20]
 704:	bf00      	nop
 706:	46bd      	mov	sp, r7
 708:	f85d 7b04 	ldr.w	r7, [sp], #4
 70c:	4770      	bx	lr
 70e:	bf00      	nop
 710:	e000ed00 	.word	0xe000ed00
 714:	40004800 	.word	0x40004800
 718:	e0043000 	.word	0xe0043000
 71c:	40010400 	.word	0x40010400
 720:	40011000 	.word	0x40011000

00000724 <atexit>:
 724:	2300      	movs	r3, #0
 726:	4601      	mov	r1, r0
 728:	461a      	mov	r2, r3
 72a:	4618      	mov	r0, r3
 72c:	f000 b89a 	b.w	864 <__register_exitproc>

00000730 <exit>:
 730:	b508      	push	{r3, lr}
 732:	2100      	movs	r1, #0
 734:	4604      	mov	r4, r0
 736:	f000 f8e7 	bl	908 <__call_exitprocs>
 73a:	4b04      	ldr	r3, [pc, #16]	; (74c <exit+0x1c>)
 73c:	6818      	ldr	r0, [r3, #0]
 73e:	6bc3      	ldr	r3, [r0, #60]	; 0x3c
 740:	b103      	cbz	r3, 744 <exit+0x14>
 742:	4798      	blx	r3
 744:	4620      	mov	r0, r4
 746:	f000 f94b 	bl	9e0 <_exit>
 74a:	bf00      	nop
 74c:	00000ab8 	.word	0x00000ab8

00000750 <__libc_fini_array>:
 750:	b538      	push	{r3, r4, r5, lr}
 752:	4d07      	ldr	r5, [pc, #28]	; (770 <__libc_fini_array+0x20>)
 754:	4c07      	ldr	r4, [pc, #28]	; (774 <__libc_fini_array+0x24>)
 756:	1b2c      	subs	r4, r5, r4
 758:	10a4      	asrs	r4, r4, #2
 75a:	d005      	beq.n	768 <__libc_fini_array+0x18>
 75c:	3c01      	subs	r4, #1
 75e:	f855 3d04 	ldr.w	r3, [r5, #-4]!
 762:	4798      	blx	r3
 764:	2c00      	cmp	r4, #0
 766:	d1f9      	bne.n	75c <__libc_fini_array+0xc>
 768:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 76c:	f000 b94e 	b.w	a0c <_fini>
	...

00000778 <__libc_init_array>:
 778:	b570      	push	{r4, r5, r6, lr}
 77a:	4e0f      	ldr	r6, [pc, #60]	; (7b8 <__libc_init_array+0x40>)
 77c:	4d0f      	ldr	r5, [pc, #60]	; (7bc <__libc_init_array+0x44>)
 77e:	1b76      	subs	r6, r6, r5
 780:	10b6      	asrs	r6, r6, #2
 782:	bf18      	it	ne
 784:	2400      	movne	r4, #0
 786:	d005      	beq.n	794 <__libc_init_array+0x1c>
 788:	3401      	adds	r4, #1
 78a:	f855 3b04 	ldr.w	r3, [r5], #4
 78e:	4798      	blx	r3
 790:	42a6      	cmp	r6, r4
 792:	d1f9      	bne.n	788 <__libc_init_array+0x10>
 794:	4e0a      	ldr	r6, [pc, #40]	; (7c0 <__libc_init_array+0x48>)
 796:	4d0b      	ldr	r5, [pc, #44]	; (7c4 <__libc_init_array+0x4c>)
 798:	1b76      	subs	r6, r6, r5
 79a:	f000 f931 	bl	a00 <_init>
 79e:	10b6      	asrs	r6, r6, #2
 7a0:	bf18      	it	ne
 7a2:	2400      	movne	r4, #0
 7a4:	d006      	beq.n	7b4 <__libc_init_array+0x3c>
 7a6:	3401      	adds	r4, #1
 7a8:	f855 3b04 	ldr.w	r3, [r5], #4
 7ac:	4798      	blx	r3
 7ae:	42a6      	cmp	r6, r4
 7b0:	d1f9      	bne.n	7a6 <__libc_init_array+0x2e>
 7b2:	bd70      	pop	{r4, r5, r6, pc}
 7b4:	bd70      	pop	{r4, r5, r6, pc}
 7b6:	bf00      	nop
	...
 7c0:	00000a00 	.word	0x00000a00
 7c4:	000009f8 	.word	0x000009f8

000007c8 <memset>:
 7c8:	b470      	push	{r4, r5, r6}
 7ca:	0784      	lsls	r4, r0, #30
 7cc:	d046      	beq.n	85c <memset+0x94>
 7ce:	1e54      	subs	r4, r2, #1
 7d0:	2a00      	cmp	r2, #0
 7d2:	d041      	beq.n	858 <memset+0x90>
 7d4:	b2cd      	uxtb	r5, r1
 7d6:	4603      	mov	r3, r0
 7d8:	e002      	b.n	7e0 <memset+0x18>
 7da:	1e62      	subs	r2, r4, #1
 7dc:	b3e4      	cbz	r4, 858 <memset+0x90>
 7de:	4614      	mov	r4, r2
 7e0:	f803 5b01 	strb.w	r5, [r3], #1
 7e4:	079a      	lsls	r2, r3, #30
 7e6:	d1f8      	bne.n	7da <memset+0x12>
 7e8:	2c03      	cmp	r4, #3
 7ea:	d92e      	bls.n	84a <memset+0x82>
 7ec:	b2cd      	uxtb	r5, r1
 7ee:	ea45 2505 	orr.w	r5, r5, r5, lsl #8
 7f2:	2c0f      	cmp	r4, #15
 7f4:	ea45 4505 	orr.w	r5, r5, r5, lsl #16
 7f8:	d919      	bls.n	82e <memset+0x66>
 7fa:	f103 0210 	add.w	r2, r3, #16
 7fe:	4626      	mov	r6, r4
 800:	3e10      	subs	r6, #16
 802:	2e0f      	cmp	r6, #15
 804:	f842 5c10 	str.w	r5, [r2, #-16]
 808:	f842 5c0c 	str.w	r5, [r2, #-12]
 80c:	f842 5c08 	str.w	r5, [r2, #-8]
 810:	f842 5c04 	str.w	r5, [r2, #-4]
 814:	f102 0210 	add.w	r2, r2, #16
 818:	d8f2      	bhi.n	800 <memset+0x38>
 81a:	f1a4 0210 	sub.w	r2, r4, #16
 81e:	f022 020f 	bic.w	r2, r2, #15
 822:	f004 040f 	and.w	r4, r4, #15
 826:	3210      	adds	r2, #16
 828:	2c03      	cmp	r4, #3
 82a:	4413      	add	r3, r2
 82c:	d90d      	bls.n	84a <memset+0x82>
 82e:	461e      	mov	r6, r3
 830:	4622      	mov	r2, r4
 832:	3a04      	subs	r2, #4
 834:	2a03      	cmp	r2, #3
 836:	f846 5b04 	str.w	r5, [r6], #4
 83a:	d8fa      	bhi.n	832 <memset+0x6a>
 83c:	1f22      	subs	r2, r4, #4
 83e:	f022 0203 	bic.w	r2, r2, #3
 842:	3204      	adds	r2, #4
 844:	4413      	add	r3, r2
 846:	f004 0403 	and.w	r4, r4, #3
 84a:	b12c      	cbz	r4, 858 <memset+0x90>
 84c:	b2c9      	uxtb	r1, r1
 84e:	441c      	add	r4, r3
 850:	f803 1b01 	strb.w	r1, [r3], #1
 854:	42a3      	cmp	r3, r4
 856:	d1fb      	bne.n	850 <memset+0x88>
 858:	bc70      	pop	{r4, r5, r6}
 85a:	4770      	bx	lr
 85c:	4614      	mov	r4, r2
 85e:	4603      	mov	r3, r0
 860:	e7c2      	b.n	7e8 <memset+0x20>
 862:	bf00      	nop

00000864 <__register_exitproc>:
 864:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 868:	4c25      	ldr	r4, [pc, #148]	; (900 <__register_exitproc+0x9c>)
 86a:	6825      	ldr	r5, [r4, #0]
 86c:	f8d5 4148 	ldr.w	r4, [r5, #328]	; 0x148
 870:	4606      	mov	r6, r0
 872:	4688      	mov	r8, r1
 874:	4692      	mov	sl, r2
 876:	4699      	mov	r9, r3
 878:	b3c4      	cbz	r4, 8ec <__register_exitproc+0x88>
 87a:	6860      	ldr	r0, [r4, #4]
 87c:	281f      	cmp	r0, #31
 87e:	dc17      	bgt.n	8b0 <__register_exitproc+0x4c>
 880:	1c43      	adds	r3, r0, #1
 882:	b176      	cbz	r6, 8a2 <__register_exitproc+0x3e>
 884:	eb04 0580 	add.w	r5, r4, r0, lsl #2
 888:	2201      	movs	r2, #1
 88a:	f8c5 a088 	str.w	sl, [r5, #136]	; 0x88
 88e:	f8d4 1188 	ldr.w	r1, [r4, #392]	; 0x188
 892:	4082      	lsls	r2, r0
 894:	4311      	orrs	r1, r2
 896:	2e02      	cmp	r6, #2
 898:	f8c4 1188 	str.w	r1, [r4, #392]	; 0x188
 89c:	f8c5 9108 	str.w	r9, [r5, #264]	; 0x108
 8a0:	d01e      	beq.n	8e0 <__register_exitproc+0x7c>
 8a2:	3002      	adds	r0, #2
 8a4:	6063      	str	r3, [r4, #4]
 8a6:	f844 8020 	str.w	r8, [r4, r0, lsl #2]
 8aa:	2000      	movs	r0, #0
 8ac:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8b0:	4b14      	ldr	r3, [pc, #80]	; (904 <__register_exitproc+0xa0>)
 8b2:	b303      	cbz	r3, 8f6 <__register_exitproc+0x92>
 8b4:	f44f 70c8 	mov.w	r0, #400	; 0x190
 8b8:	f3af 8000 	nop.w
 8bc:	4604      	mov	r4, r0
 8be:	b1d0      	cbz	r0, 8f6 <__register_exitproc+0x92>
 8c0:	f8d5 3148 	ldr.w	r3, [r5, #328]	; 0x148
 8c4:	2700      	movs	r7, #0
 8c6:	e880 0088 	stmia.w	r0, {r3, r7}
 8ca:	f8c5 4148 	str.w	r4, [r5, #328]	; 0x148
 8ce:	4638      	mov	r0, r7
 8d0:	2301      	movs	r3, #1
 8d2:	f8c4 7188 	str.w	r7, [r4, #392]	; 0x188
 8d6:	f8c4 718c 	str.w	r7, [r4, #396]	; 0x18c
 8da:	2e00      	cmp	r6, #0
 8dc:	d0e1      	beq.n	8a2 <__register_exitproc+0x3e>
 8de:	e7d1      	b.n	884 <__register_exitproc+0x20>
 8e0:	f8d4 118c 	ldr.w	r1, [r4, #396]	; 0x18c
 8e4:	430a      	orrs	r2, r1
 8e6:	f8c4 218c 	str.w	r2, [r4, #396]	; 0x18c
 8ea:	e7da      	b.n	8a2 <__register_exitproc+0x3e>
 8ec:	f505 74a6 	add.w	r4, r5, #332	; 0x14c
 8f0:	f8c5 4148 	str.w	r4, [r5, #328]	; 0x148
 8f4:	e7c1      	b.n	87a <__register_exitproc+0x16>
 8f6:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8fa:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8fe:	bf00      	nop
 900:	00000ab8 	.word	0x00000ab8
 904:	00000000 	.word	0x00000000

00000908 <__call_exitprocs>:
 908:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 90c:	4b32      	ldr	r3, [pc, #200]	; (9d8 <__call_exitprocs+0xd0>)
 90e:	b085      	sub	sp, #20
 910:	681b      	ldr	r3, [r3, #0]
 912:	9302      	str	r3, [sp, #8]
 914:	f503 73a4 	add.w	r3, r3, #328	; 0x148
 918:	9001      	str	r0, [sp, #4]
 91a:	460e      	mov	r6, r1
 91c:	9303      	str	r3, [sp, #12]
 91e:	9b02      	ldr	r3, [sp, #8]
 920:	f8d3 7148 	ldr.w	r7, [r3, #328]	; 0x148
 924:	b33f      	cbz	r7, 976 <__call_exitprocs+0x6e>
 926:	f8dd a00c 	ldr.w	sl, [sp, #12]
 92a:	f04f 0901 	mov.w	r9, #1
 92e:	46d3      	mov	fp, sl
 930:	687c      	ldr	r4, [r7, #4]
 932:	1e65      	subs	r5, r4, #1
 934:	d40e      	bmi.n	954 <__call_exitprocs+0x4c>
 936:	3401      	adds	r4, #1
 938:	eb07 0484 	add.w	r4, r7, r4, lsl #2
 93c:	f04f 0800 	mov.w	r8, #0
 940:	b1e6      	cbz	r6, 97c <__call_exitprocs+0x74>
 942:	f8d4 3100 	ldr.w	r3, [r4, #256]	; 0x100
 946:	429e      	cmp	r6, r3
 948:	d018      	beq.n	97c <__call_exitprocs+0x74>
 94a:	3d01      	subs	r5, #1
 94c:	1c6b      	adds	r3, r5, #1
 94e:	f1a4 0404 	sub.w	r4, r4, #4
 952:	d1f5      	bne.n	940 <__call_exitprocs+0x38>
 954:	4b21      	ldr	r3, [pc, #132]	; (9dc <__call_exitprocs+0xd4>)
 956:	b173      	cbz	r3, 976 <__call_exitprocs+0x6e>
 958:	687b      	ldr	r3, [r7, #4]
 95a:	2b00      	cmp	r3, #0
 95c:	d136      	bne.n	9cc <__call_exitprocs+0xc4>
 95e:	683b      	ldr	r3, [r7, #0]
 960:	2b00      	cmp	r3, #0
 962:	d034      	beq.n	9ce <__call_exitprocs+0xc6>
 964:	4638      	mov	r0, r7
 966:	f8cb 3000 	str.w	r3, [fp]
 96a:	f3af 8000 	nop.w
 96e:	f8db 7000 	ldr.w	r7, [fp]
 972:	2f00      	cmp	r7, #0
 974:	d1dc      	bne.n	930 <__call_exitprocs+0x28>
 976:	b005      	add	sp, #20
 978:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 97c:	687b      	ldr	r3, [r7, #4]
 97e:	6822      	ldr	r2, [r4, #0]
 980:	3b01      	subs	r3, #1
 982:	42ab      	cmp	r3, r5
 984:	bf0c      	ite	eq
 986:	607d      	streq	r5, [r7, #4]
 988:	f8c4 8000 	strne.w	r8, [r4]
 98c:	2a00      	cmp	r2, #0
 98e:	d0dc      	beq.n	94a <__call_exitprocs+0x42>
 990:	f8d7 1188 	ldr.w	r1, [r7, #392]	; 0x188
 994:	f8d7 a004 	ldr.w	sl, [r7, #4]
 998:	fa09 f305 	lsl.w	r3, r9, r5
 99c:	420b      	tst	r3, r1
 99e:	d00f      	beq.n	9c0 <__call_exitprocs+0xb8>
 9a0:	f8d7 118c 	ldr.w	r1, [r7, #396]	; 0x18c
 9a4:	420b      	tst	r3, r1
 9a6:	d10d      	bne.n	9c4 <__call_exitprocs+0xbc>
 9a8:	f8d4 1080 	ldr.w	r1, [r4, #128]	; 0x80
 9ac:	9801      	ldr	r0, [sp, #4]
 9ae:	4790      	blx	r2
 9b0:	687b      	ldr	r3, [r7, #4]
 9b2:	4553      	cmp	r3, sl
 9b4:	d1b3      	bne.n	91e <__call_exitprocs+0x16>
 9b6:	f8db 3000 	ldr.w	r3, [fp]
 9ba:	42bb      	cmp	r3, r7
 9bc:	d0c5      	beq.n	94a <__call_exitprocs+0x42>
 9be:	e7ae      	b.n	91e <__call_exitprocs+0x16>
 9c0:	4790      	blx	r2
 9c2:	e7f5      	b.n	9b0 <__call_exitprocs+0xa8>
 9c4:	f8d4 0080 	ldr.w	r0, [r4, #128]	; 0x80
 9c8:	4790      	blx	r2
 9ca:	e7f1      	b.n	9b0 <__call_exitprocs+0xa8>
 9cc:	683b      	ldr	r3, [r7, #0]
 9ce:	46bb      	mov	fp, r7
 9d0:	461f      	mov	r7, r3
 9d2:	2f00      	cmp	r7, #0
 9d4:	d1ac      	bne.n	930 <__call_exitprocs+0x28>
 9d6:	e7ce      	b.n	976 <__call_exitprocs+0x6e>
 9d8:	00000ab8 	.word	0x00000ab8
 9dc:	00000000 	.word	0x00000000

000009e0 <_exit>:
 9e0:	e7fe      	b.n	9e0 <_exit>
 9e2:	bf00      	nop

000009e4 <register_fini>:
 9e4:	4b02      	ldr	r3, [pc, #8]	; (9f0 <register_fini+0xc>)
 9e6:	b113      	cbz	r3, 9ee <register_fini+0xa>
 9e8:	4802      	ldr	r0, [pc, #8]	; (9f4 <register_fini+0x10>)
 9ea:	f7ff be9b 	b.w	724 <atexit>
 9ee:	4770      	bx	lr
 9f0:	00000000 	.word	0x00000000
 9f4:	00000751 	.word	0x00000751

000009f8 <__init_array_start>:
 9f8:	000001ad 	.word	0x000001ad
 9fc:	000009e5 	.word	0x000009e5

00000a00 <_init>:
 a00:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 a02:	bf00      	nop
 a04:	bcf8      	pop	{r3, r4, r5, r6, r7}
 a06:	bc08      	pop	{r3}
 a08:	469e      	mov	lr, r3
 a0a:	4770      	bx	lr

00000a0c <_fini>:
 a0c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 a0e:	bf00      	nop

00000a10 <__do_global_dtors_aux_fini_array_entry>:
 a10:	0185 0000 bcf8 bc08 469e 4770               .........FpG

Disassembly of section .text:Reset_Handler:

00000a1c <Reset_Handler>:
 a1c:	4668      	mov	r0, sp
 a1e:	f020 0107 	bic.w	r1, r0, #7
 a22:	468d      	mov	sp, r1
 a24:	b581      	push	{r0, r7, lr}
 a26:	b083      	sub	sp, #12
 a28:	af00      	add	r7, sp, #0
 a2a:	4b12      	ldr	r3, [pc, #72]	; (a74 <zero_loop+0x20>)
 a2c:	607b      	str	r3, [r7, #4]
 a2e:	4b12      	ldr	r3, [pc, #72]	; (a78 <zero_loop+0x24>)
 a30:	603b      	str	r3, [r7, #0]
 a32:	e007      	b.n	a44 <Reset_Handler+0x28>
 a34:	683b      	ldr	r3, [r7, #0]
 a36:	1d1a      	adds	r2, r3, #4
 a38:	603a      	str	r2, [r7, #0]
 a3a:	687a      	ldr	r2, [r7, #4]
 a3c:	1d11      	adds	r1, r2, #4
 a3e:	6079      	str	r1, [r7, #4]
 a40:	6812      	ldr	r2, [r2, #0]
 a42:	601a      	str	r2, [r3, #0]
 a44:	683b      	ldr	r3, [r7, #0]
 a46:	4a0d      	ldr	r2, [pc, #52]	; (a7c <zero_loop+0x28>)
 a48:	4293      	cmp	r3, r2
 a4a:	d3f3      	bcc.n	a34 <Reset_Handler+0x18>
 a4c:	480c      	ldr	r0, [pc, #48]	; (a80 <zero_loop+0x2c>)
 a4e:	490d      	ldr	r1, [pc, #52]	; (a84 <zero_loop+0x30>)
 a50:	f04f 0200 	mov.w	r2, #0

00000a54 <zero_loop>:
 a54:	4288      	cmp	r0, r1
 a56:	bfb8      	it	lt
 a58:	f840 2b04 	strlt.w	r2, [r0], #4
 a5c:	dbfa      	blt.n	a54 <zero_loop>
 a5e:	f7ff fe21 	bl	6a4 <SystemInit>
 a62:	f7ff fbf3 	bl	24c <main>
 a66:	bf00      	nop
 a68:	370c      	adds	r7, #12
 a6a:	46bd      	mov	sp, r7
 a6c:	e8bd 4081 	ldmia.w	sp!, {r0, r7, lr}
 a70:	4685      	mov	sp, r0
 a72:	4770      	bx	lr
 a74:	00000acc 	.word	0x00000acc
 a78:	20000000 	.word	0x20000000
 a7c:	20000438 	.word	0x20000438
 a80:	2000043c 	.word	0x2000043c
 a84:	20000464 	.word	0x20000464

Disassembly of section .text:NMI_Handler:

00000a88 <NMI_Handler>:
 a88:	4668      	mov	r0, sp
 a8a:	f020 0107 	bic.w	r1, r0, #7
 a8e:	468d      	mov	sp, r1
 a90:	b481      	push	{r0, r7}
 a92:	af00      	add	r7, sp, #0
 a94:	e7fe      	b.n	a94 <NMI_Handler+0xc>
 a96:	bf00      	nop

Disassembly of section .text:HardFault_Handler:

00000a98 <HardFault_Handler>:
 a98:	4668      	mov	r0, sp
 a9a:	f020 0107 	bic.w	r1, r0, #7
 a9e:	468d      	mov	sp, r1
 aa0:	b481      	push	{r0, r7}
 aa2:	af00      	add	r7, sp, #0
 aa4:	e7fe      	b.n	aa4 <HardFault_Handler+0xc>
 aa6:	bf00      	nop

Disassembly of section .text:Default_Handler:

00000aa8 <Default_Handler>:
 aa8:	4668      	mov	r0, sp
 aaa:	f020 0107 	bic.w	r1, r0, #7
 aae:	468d      	mov	sp, r1
 ab0:	b481      	push	{r0, r7}
 ab2:	af00      	add	r7, sp, #0
 ab4:	e7fe      	b.n	ab4 <Default_Handler+0xc>
 ab6:	bf00      	nop
