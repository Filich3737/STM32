
temp.elf:     file format elf32-littlearm

Sections:
Idx Name          Size      VMA       LMA       File off  Algn  Flags
  0 .isr_vector   00000188  08000000  08000000  00010000  2**0  CONTENTS, ALLOC, LOAD, READONLY, DATA
  1 .text         000016fc  08000188  08000188  00010188  2**2  CONTENTS, ALLOC, LOAD, READONLY, CODE
  2 .rodata       00000018  08001884  08001884  00011884  2**2  CONTENTS, ALLOC, LOAD, READONLY, DATA
  3 .init_array   00000008  0800189c  0800189c  0001189c  2**2  CONTENTS, ALLOC, LOAD, DATA
  4 .fini_array   00000004  080018a4  080018a4  000118a4  2**2  CONTENTS, ALLOC, LOAD, DATA
  5 .data         00000448  20000000  080018a8  00020000  2**3  CONTENTS, ALLOC, LOAD, DATA
  6 .ccmram       00000000  10000000  10000000  00020448  2**0  CONTENTS
  7 .bss          0000004c  20000448  20000448  00020448  2**2  ALLOC
  8 ._user_heap_stack 00000600  20000494  20000494  00020448  2**0  ALLOC
  9 .ARM.attributes 00000030  00000000  00000000  00020448  2**0  CONTENTS, READONLY
 10 .comment      00000070  00000000  00000000  00020478  2**0  CONTENTS, READONLY
 11 .debug_info   000036de  00000000  00000000  000204e8  2**0  CONTENTS, READONLY, DEBUGGING
 12 .debug_abbrev 00000ca8  00000000  00000000  00023bc6  2**0  CONTENTS, READONLY, DEBUGGING
 13 .debug_aranges 00000298  00000000  00000000  0002486e  2**0  CONTENTS, READONLY, DEBUGGING
 14 .debug_ranges 00000228  00000000  00000000  00024b06  2**0  CONTENTS, READONLY, DEBUGGING
 15 .debug_line   00000f00  00000000  00000000  00024d2e  2**0  CONTENTS, READONLY, DEBUGGING
 16 .debug_str    0000169e  00000000  00000000  00025c2e  2**0  CONTENTS, READONLY, DEBUGGING
 17 .debug_frame  00000864  00000000  00000000  000272cc  2**2  CONTENTS, READONLY, DEBUGGING
 18 .debug_loc    00000413  00000000  00000000  00027b30  2**0  CONTENTS, READONLY, DEBUGGING

Disassembly of section .text:

08000188 <deregister_tm_clones>:
 8000188:	4b04      	ldr	r3, [pc, #16]	; (800019c <deregister_tm_clones+0x14>)
 800018a:	4805      	ldr	r0, [pc, #20]	; (80001a0 <deregister_tm_clones+0x18>)
 800018c:	1a1b      	subs	r3, r3, r0
 800018e:	2b06      	cmp	r3, #6
 8000190:	d902      	bls.n	8000198 <deregister_tm_clones+0x10>
 8000192:	4b04      	ldr	r3, [pc, #16]	; (80001a4 <deregister_tm_clones+0x1c>)
 8000194:	b103      	cbz	r3, 8000198 <deregister_tm_clones+0x10>
 8000196:	4718      	bx	r3
 8000198:	4770      	bx	lr
 800019a:	bf00      	nop
 800019c:	2000044b 	.word	0x2000044b
 80001a0:	20000448 	.word	0x20000448
 80001a4:	00000000 	.word	0x00000000

080001a8 <register_tm_clones>:
 80001a8:	4905      	ldr	r1, [pc, #20]	; (80001c0 <register_tm_clones+0x18>)
 80001aa:	4806      	ldr	r0, [pc, #24]	; (80001c4 <register_tm_clones+0x1c>)
 80001ac:	1a09      	subs	r1, r1, r0
 80001ae:	1089      	asrs	r1, r1, #2
 80001b0:	eb01 71d1 	add.w	r1, r1, r1, lsr #31
 80001b4:	1049      	asrs	r1, r1, #1
 80001b6:	d002      	beq.n	80001be <register_tm_clones+0x16>
 80001b8:	4b03      	ldr	r3, [pc, #12]	; (80001c8 <register_tm_clones+0x20>)
 80001ba:	b103      	cbz	r3, 80001be <register_tm_clones+0x16>
 80001bc:	4718      	bx	r3
 80001be:	4770      	bx	lr
 80001c0:	20000448 	.word	0x20000448
 80001c4:	20000448 	.word	0x20000448
 80001c8:	00000000 	.word	0x00000000

080001cc <__do_global_dtors_aux>:
 80001cc:	b510      	push	{r4, lr}
 80001ce:	4c06      	ldr	r4, [pc, #24]	; (80001e8 <__do_global_dtors_aux+0x1c>)
 80001d0:	7823      	ldrb	r3, [r4, #0]
 80001d2:	b943      	cbnz	r3, 80001e6 <__do_global_dtors_aux+0x1a>
 80001d4:	f7ff ffd8 	bl	8000188 <deregister_tm_clones>
 80001d8:	4b04      	ldr	r3, [pc, #16]	; (80001ec <__do_global_dtors_aux+0x20>)
 80001da:	b113      	cbz	r3, 80001e2 <__do_global_dtors_aux+0x16>
 80001dc:	4804      	ldr	r0, [pc, #16]	; (80001f0 <__do_global_dtors_aux+0x24>)
 80001de:	f3af 8000 	nop.w
 80001e2:	2301      	movs	r3, #1
 80001e4:	7023      	strb	r3, [r4, #0]
 80001e6:	bd10      	pop	{r4, pc}
 80001e8:	20000448 	.word	0x20000448
 80001ec:	00000000 	.word	0x00000000
 80001f0:	0800186c 	.word	0x0800186c

080001f4 <frame_dummy>:
 80001f4:	b508      	push	{r3, lr}
 80001f6:	4b08      	ldr	r3, [pc, #32]	; (8000218 <frame_dummy+0x24>)
 80001f8:	b11b      	cbz	r3, 8000202 <frame_dummy+0xe>
 80001fa:	4808      	ldr	r0, [pc, #32]	; (800021c <frame_dummy+0x28>)
 80001fc:	4908      	ldr	r1, [pc, #32]	; (8000220 <frame_dummy+0x2c>)
 80001fe:	f3af 8000 	nop.w
 8000202:	4808      	ldr	r0, [pc, #32]	; (8000224 <frame_dummy+0x30>)
 8000204:	6803      	ldr	r3, [r0, #0]
 8000206:	b913      	cbnz	r3, 800020e <frame_dummy+0x1a>
 8000208:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 800020c:	e7cc      	b.n	80001a8 <register_tm_clones>
 800020e:	4b06      	ldr	r3, [pc, #24]	; (8000228 <frame_dummy+0x34>)
 8000210:	2b00      	cmp	r3, #0
 8000212:	d0f9      	beq.n	8000208 <frame_dummy+0x14>
 8000214:	4798      	blx	r3
 8000216:	e7f7      	b.n	8000208 <frame_dummy+0x14>
 8000218:	00000000 	.word	0x00000000
 800021c:	0800186c 	.word	0x0800186c
 8000220:	2000044c 	.word	0x2000044c
 8000224:	20000448 	.word	0x20000448
 8000228:	00000000 	.word	0x00000000

0800022c <Reset_Handler>:
 800022c:	f8df d034 	ldr.w	sp, [pc, #52]	; 8000264 <LoopFillZerobss+0x14>
 8000230:	2100      	movs	r1, #0
 8000232:	e003      	b.n	800023c <LoopCopyDataInit>

08000234 <CopyDataInit>:
 8000234:	4b0c      	ldr	r3, [pc, #48]	; (8000268 <LoopFillZerobss+0x18>)
 8000236:	585b      	ldr	r3, [r3, r1]
 8000238:	5043      	str	r3, [r0, r1]
 800023a:	3104      	adds	r1, #4

0800023c <LoopCopyDataInit>:
 800023c:	480b      	ldr	r0, [pc, #44]	; (800026c <LoopFillZerobss+0x1c>)
 800023e:	4b0c      	ldr	r3, [pc, #48]	; (8000270 <LoopFillZerobss+0x20>)
 8000240:	1842      	adds	r2, r0, r1
 8000242:	429a      	cmp	r2, r3
 8000244:	d3f6      	bcc.n	8000234 <CopyDataInit>
 8000246:	4a0b      	ldr	r2, [pc, #44]	; (8000274 <LoopFillZerobss+0x24>)
 8000248:	e002      	b.n	8000250 <LoopFillZerobss>

0800024a <FillZerobss>:
 800024a:	2300      	movs	r3, #0
 800024c:	f842 3b04 	str.w	r3, [r2], #4

08000250 <LoopFillZerobss>:
 8000250:	4b09      	ldr	r3, [pc, #36]	; (8000278 <LoopFillZerobss+0x28>)
 8000252:	429a      	cmp	r2, r3
 8000254:	d3f9      	bcc.n	800024a <FillZerobss>
 8000256:	f001 fa33 	bl	80016c0 <SystemInit>
 800025a:	f001 fa83 	bl	8001764 <__libc_init_array>
 800025e:	f000 fe91 	bl	8000f84 <main>
 8000262:	4770      	bx	lr
 8000264:	20020000 	.word	0x20020000
 8000268:	080018a8 	.word	0x080018a8
 800026c:	20000000 	.word	0x20000000
 8000270:	20000448 	.word	0x20000448
 8000274:	20000448 	.word	0x20000448
 8000278:	20000494 	.word	0x20000494

0800027c <ADC_IRQHandler>:
 800027c:	e7fe      	b.n	800027c <ADC_IRQHandler>
	...

08000280 <NVIC_EnableIRQ>:
 8000280:	b480      	push	{r7}
 8000282:	b083      	sub	sp, #12
 8000284:	af00      	add	r7, sp, #0
 8000286:	4603      	mov	r3, r0
 8000288:	71fb      	strb	r3, [r7, #7]
 800028a:	4908      	ldr	r1, [pc, #32]	; (80002ac <NVIC_EnableIRQ+0x2c>)
 800028c:	f997 3007 	ldrsb.w	r3, [r7, #7]
 8000290:	095b      	lsrs	r3, r3, #5
 8000292:	79fa      	ldrb	r2, [r7, #7]
 8000294:	f002 021f 	and.w	r2, r2, #31
 8000298:	2001      	movs	r0, #1
 800029a:	fa00 f202 	lsl.w	r2, r0, r2
 800029e:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
 80002a2:	370c      	adds	r7, #12
 80002a4:	46bd      	mov	sp, r7
 80002a6:	f85d 7b04 	ldr.w	r7, [sp], #4
 80002aa:	4770      	bx	lr
 80002ac:	e000e100 	.word	0xe000e100

080002b0 <NVIC_SetPriority>:
 80002b0:	b480      	push	{r7}
 80002b2:	b083      	sub	sp, #12
 80002b4:	af00      	add	r7, sp, #0
 80002b6:	4603      	mov	r3, r0
 80002b8:	6039      	str	r1, [r7, #0]
 80002ba:	71fb      	strb	r3, [r7, #7]
 80002bc:	f997 3007 	ldrsb.w	r3, [r7, #7]
 80002c0:	2b00      	cmp	r3, #0
 80002c2:	da0b      	bge.n	80002dc <NVIC_SetPriority+0x2c>
 80002c4:	490d      	ldr	r1, [pc, #52]	; (80002fc <NVIC_SetPriority+0x4c>)
 80002c6:	79fb      	ldrb	r3, [r7, #7]
 80002c8:	f003 030f 	and.w	r3, r3, #15
 80002cc:	3b04      	subs	r3, #4
 80002ce:	683a      	ldr	r2, [r7, #0]
 80002d0:	b2d2      	uxtb	r2, r2
 80002d2:	0112      	lsls	r2, r2, #4
 80002d4:	b2d2      	uxtb	r2, r2
 80002d6:	440b      	add	r3, r1
 80002d8:	761a      	strb	r2, [r3, #24]
 80002da:	e009      	b.n	80002f0 <NVIC_SetPriority+0x40>
 80002dc:	4908      	ldr	r1, [pc, #32]	; (8000300 <NVIC_SetPriority+0x50>)
 80002de:	f997 3007 	ldrsb.w	r3, [r7, #7]
 80002e2:	683a      	ldr	r2, [r7, #0]
 80002e4:	b2d2      	uxtb	r2, r2
 80002e6:	0112      	lsls	r2, r2, #4
 80002e8:	b2d2      	uxtb	r2, r2
 80002ea:	440b      	add	r3, r1
 80002ec:	f883 2300 	strb.w	r2, [r3, #768]	; 0x300
 80002f0:	370c      	adds	r7, #12
 80002f2:	46bd      	mov	sp, r7
 80002f4:	f85d 7b04 	ldr.w	r7, [sp], #4
 80002f8:	4770      	bx	lr
 80002fa:	bf00      	nop
 80002fc:	e000ed00 	.word	0xe000ed00
 8000300:	e000e100 	.word	0xe000e100

08000304 <SysTick_Config>:
 8000304:	b580      	push	{r7, lr}
 8000306:	b082      	sub	sp, #8
 8000308:	af00      	add	r7, sp, #0
 800030a:	6078      	str	r0, [r7, #4]
 800030c:	687b      	ldr	r3, [r7, #4]
 800030e:	3b01      	subs	r3, #1
 8000310:	f1b3 7f80 	cmp.w	r3, #16777216	; 0x1000000
 8000314:	d301      	bcc.n	800031a <SysTick_Config+0x16>
 8000316:	2301      	movs	r3, #1
 8000318:	e00f      	b.n	800033a <SysTick_Config+0x36>
 800031a:	4a0a      	ldr	r2, [pc, #40]	; (8000344 <SysTick_Config+0x40>)
 800031c:	687b      	ldr	r3, [r7, #4]
 800031e:	3b01      	subs	r3, #1
 8000320:	6053      	str	r3, [r2, #4]
 8000322:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8000326:	210f      	movs	r1, #15
 8000328:	f7ff ffc2 	bl	80002b0 <NVIC_SetPriority>
 800032c:	4b05      	ldr	r3, [pc, #20]	; (8000344 <SysTick_Config+0x40>)
 800032e:	2200      	movs	r2, #0
 8000330:	609a      	str	r2, [r3, #8]
 8000332:	4b04      	ldr	r3, [pc, #16]	; (8000344 <SysTick_Config+0x40>)
 8000334:	2207      	movs	r2, #7
 8000336:	601a      	str	r2, [r3, #0]
 8000338:	2300      	movs	r3, #0
 800033a:	4618      	mov	r0, r3
 800033c:	3708      	adds	r7, #8
 800033e:	46bd      	mov	sp, r7
 8000340:	bd80      	pop	{r7, pc}
 8000342:	bf00      	nop
 8000344:	e000e010 	.word	0xe000e010

08000348 <LL_AHB1_GRP1_EnableClock>:
 8000348:	b480      	push	{r7}
 800034a:	b085      	sub	sp, #20
 800034c:	af00      	add	r7, sp, #0
 800034e:	6078      	str	r0, [r7, #4]
 8000350:	4908      	ldr	r1, [pc, #32]	; (8000374 <LL_AHB1_GRP1_EnableClock+0x2c>)
 8000352:	4b08      	ldr	r3, [pc, #32]	; (8000374 <LL_AHB1_GRP1_EnableClock+0x2c>)
 8000354:	6b1a      	ldr	r2, [r3, #48]	; 0x30
 8000356:	687b      	ldr	r3, [r7, #4]
 8000358:	4313      	orrs	r3, r2
 800035a:	630b      	str	r3, [r1, #48]	; 0x30
 800035c:	4b05      	ldr	r3, [pc, #20]	; (8000374 <LL_AHB1_GRP1_EnableClock+0x2c>)
 800035e:	6b1a      	ldr	r2, [r3, #48]	; 0x30
 8000360:	687b      	ldr	r3, [r7, #4]
 8000362:	4013      	ands	r3, r2
 8000364:	60fb      	str	r3, [r7, #12]
 8000366:	68fb      	ldr	r3, [r7, #12]
 8000368:	3714      	adds	r7, #20
 800036a:	46bd      	mov	sp, r7
 800036c:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000370:	4770      	bx	lr
 8000372:	bf00      	nop
 8000374:	40023800 	.word	0x40023800

08000378 <LL_APB2_GRP1_EnableClock>:
 8000378:	b480      	push	{r7}
 800037a:	b085      	sub	sp, #20
 800037c:	af00      	add	r7, sp, #0
 800037e:	6078      	str	r0, [r7, #4]
 8000380:	4908      	ldr	r1, [pc, #32]	; (80003a4 <LL_APB2_GRP1_EnableClock+0x2c>)
 8000382:	4b08      	ldr	r3, [pc, #32]	; (80003a4 <LL_APB2_GRP1_EnableClock+0x2c>)
 8000384:	6c5a      	ldr	r2, [r3, #68]	; 0x44
 8000386:	687b      	ldr	r3, [r7, #4]
 8000388:	4313      	orrs	r3, r2
 800038a:	644b      	str	r3, [r1, #68]	; 0x44
 800038c:	4b05      	ldr	r3, [pc, #20]	; (80003a4 <LL_APB2_GRP1_EnableClock+0x2c>)
 800038e:	6c5a      	ldr	r2, [r3, #68]	; 0x44
 8000390:	687b      	ldr	r3, [r7, #4]
 8000392:	4013      	ands	r3, r2
 8000394:	60fb      	str	r3, [r7, #12]
 8000396:	68fb      	ldr	r3, [r7, #12]
 8000398:	3714      	adds	r7, #20
 800039a:	46bd      	mov	sp, r7
 800039c:	f85d 7b04 	ldr.w	r7, [sp], #4
 80003a0:	4770      	bx	lr
 80003a2:	bf00      	nop
 80003a4:	40023800 	.word	0x40023800

080003a8 <LL_RCC_HSE_Enable>:
 80003a8:	b480      	push	{r7}
 80003aa:	af00      	add	r7, sp, #0
 80003ac:	4a04      	ldr	r2, [pc, #16]	; (80003c0 <LL_RCC_HSE_Enable+0x18>)
 80003ae:	4b04      	ldr	r3, [pc, #16]	; (80003c0 <LL_RCC_HSE_Enable+0x18>)
 80003b0:	681b      	ldr	r3, [r3, #0]
 80003b2:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
 80003b6:	6013      	str	r3, [r2, #0]
 80003b8:	46bd      	mov	sp, r7
 80003ba:	f85d 7b04 	ldr.w	r7, [sp], #4
 80003be:	4770      	bx	lr
 80003c0:	40023800 	.word	0x40023800

080003c4 <LL_RCC_HSE_IsReady>:
 80003c4:	b480      	push	{r7}
 80003c6:	af00      	add	r7, sp, #0
 80003c8:	4b06      	ldr	r3, [pc, #24]	; (80003e4 <LL_RCC_HSE_IsReady+0x20>)
 80003ca:	681b      	ldr	r3, [r3, #0]
 80003cc:	f403 3300 	and.w	r3, r3, #131072	; 0x20000
 80003d0:	2b00      	cmp	r3, #0
 80003d2:	bf14      	ite	ne
 80003d4:	2301      	movne	r3, #1
 80003d6:	2300      	moveq	r3, #0
 80003d8:	b2db      	uxtb	r3, r3
 80003da:	4618      	mov	r0, r3
 80003dc:	46bd      	mov	sp, r7
 80003de:	f85d 7b04 	ldr.w	r7, [sp], #4
 80003e2:	4770      	bx	lr
 80003e4:	40023800 	.word	0x40023800

080003e8 <LL_RCC_SetSysClkSource>:
 80003e8:	b480      	push	{r7}
 80003ea:	b083      	sub	sp, #12
 80003ec:	af00      	add	r7, sp, #0
 80003ee:	6078      	str	r0, [r7, #4]
 80003f0:	4906      	ldr	r1, [pc, #24]	; (800040c <LL_RCC_SetSysClkSource+0x24>)
 80003f2:	4b06      	ldr	r3, [pc, #24]	; (800040c <LL_RCC_SetSysClkSource+0x24>)
 80003f4:	689b      	ldr	r3, [r3, #8]
 80003f6:	f023 0203 	bic.w	r2, r3, #3
 80003fa:	687b      	ldr	r3, [r7, #4]
 80003fc:	4313      	orrs	r3, r2
 80003fe:	608b      	str	r3, [r1, #8]
 8000400:	370c      	adds	r7, #12
 8000402:	46bd      	mov	sp, r7
 8000404:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000408:	4770      	bx	lr
 800040a:	bf00      	nop
 800040c:	40023800 	.word	0x40023800

08000410 <LL_RCC_GetSysClkSource>:
 8000410:	b480      	push	{r7}
 8000412:	af00      	add	r7, sp, #0
 8000414:	4b04      	ldr	r3, [pc, #16]	; (8000428 <LL_RCC_GetSysClkSource+0x18>)
 8000416:	689b      	ldr	r3, [r3, #8]
 8000418:	f003 030c 	and.w	r3, r3, #12
 800041c:	4618      	mov	r0, r3
 800041e:	46bd      	mov	sp, r7
 8000420:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000424:	4770      	bx	lr
 8000426:	bf00      	nop
 8000428:	40023800 	.word	0x40023800

0800042c <LL_RCC_SetAHBPrescaler>:
 800042c:	b480      	push	{r7}
 800042e:	b083      	sub	sp, #12
 8000430:	af00      	add	r7, sp, #0
 8000432:	6078      	str	r0, [r7, #4]
 8000434:	4906      	ldr	r1, [pc, #24]	; (8000450 <LL_RCC_SetAHBPrescaler+0x24>)
 8000436:	4b06      	ldr	r3, [pc, #24]	; (8000450 <LL_RCC_SetAHBPrescaler+0x24>)
 8000438:	689b      	ldr	r3, [r3, #8]
 800043a:	f023 02f0 	bic.w	r2, r3, #240	; 0xf0
 800043e:	687b      	ldr	r3, [r7, #4]
 8000440:	4313      	orrs	r3, r2
 8000442:	608b      	str	r3, [r1, #8]
 8000444:	370c      	adds	r7, #12
 8000446:	46bd      	mov	sp, r7
 8000448:	f85d 7b04 	ldr.w	r7, [sp], #4
 800044c:	4770      	bx	lr
 800044e:	bf00      	nop
 8000450:	40023800 	.word	0x40023800

08000454 <LL_RCC_SetAPB1Prescaler>:
 8000454:	b480      	push	{r7}
 8000456:	b083      	sub	sp, #12
 8000458:	af00      	add	r7, sp, #0
 800045a:	6078      	str	r0, [r7, #4]
 800045c:	4906      	ldr	r1, [pc, #24]	; (8000478 <LL_RCC_SetAPB1Prescaler+0x24>)
 800045e:	4b06      	ldr	r3, [pc, #24]	; (8000478 <LL_RCC_SetAPB1Prescaler+0x24>)
 8000460:	689b      	ldr	r3, [r3, #8]
 8000462:	f423 52e0 	bic.w	r2, r3, #7168	; 0x1c00
 8000466:	687b      	ldr	r3, [r7, #4]
 8000468:	4313      	orrs	r3, r2
 800046a:	608b      	str	r3, [r1, #8]
 800046c:	370c      	adds	r7, #12
 800046e:	46bd      	mov	sp, r7
 8000470:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000474:	4770      	bx	lr
 8000476:	bf00      	nop
 8000478:	40023800 	.word	0x40023800

0800047c <LL_RCC_SetAPB2Prescaler>:
 800047c:	b480      	push	{r7}
 800047e:	b083      	sub	sp, #12
 8000480:	af00      	add	r7, sp, #0
 8000482:	6078      	str	r0, [r7, #4]
 8000484:	4906      	ldr	r1, [pc, #24]	; (80004a0 <LL_RCC_SetAPB2Prescaler+0x24>)
 8000486:	4b06      	ldr	r3, [pc, #24]	; (80004a0 <LL_RCC_SetAPB2Prescaler+0x24>)
 8000488:	689b      	ldr	r3, [r3, #8]
 800048a:	f423 4260 	bic.w	r2, r3, #57344	; 0xe000
 800048e:	687b      	ldr	r3, [r7, #4]
 8000490:	4313      	orrs	r3, r2
 8000492:	608b      	str	r3, [r1, #8]
 8000494:	370c      	adds	r7, #12
 8000496:	46bd      	mov	sp, r7
 8000498:	f85d 7b04 	ldr.w	r7, [sp], #4
 800049c:	4770      	bx	lr
 800049e:	bf00      	nop
 80004a0:	40023800 	.word	0x40023800

080004a4 <LL_RCC_PLL_Enable>:
 80004a4:	b480      	push	{r7}
 80004a6:	af00      	add	r7, sp, #0
 80004a8:	4a04      	ldr	r2, [pc, #16]	; (80004bc <LL_RCC_PLL_Enable+0x18>)
 80004aa:	4b04      	ldr	r3, [pc, #16]	; (80004bc <LL_RCC_PLL_Enable+0x18>)
 80004ac:	681b      	ldr	r3, [r3, #0]
 80004ae:	f043 7380 	orr.w	r3, r3, #16777216	; 0x1000000
 80004b2:	6013      	str	r3, [r2, #0]
 80004b4:	46bd      	mov	sp, r7
 80004b6:	f85d 7b04 	ldr.w	r7, [sp], #4
 80004ba:	4770      	bx	lr
 80004bc:	40023800 	.word	0x40023800

080004c0 <LL_RCC_PLL_IsReady>:
 80004c0:	b480      	push	{r7}
 80004c2:	af00      	add	r7, sp, #0
 80004c4:	4b06      	ldr	r3, [pc, #24]	; (80004e0 <LL_RCC_PLL_IsReady+0x20>)
 80004c6:	681b      	ldr	r3, [r3, #0]
 80004c8:	f003 7300 	and.w	r3, r3, #33554432	; 0x2000000
 80004cc:	2b00      	cmp	r3, #0
 80004ce:	bf14      	ite	ne
 80004d0:	2301      	movne	r3, #1
 80004d2:	2300      	moveq	r3, #0
 80004d4:	b2db      	uxtb	r3, r3
 80004d6:	4618      	mov	r0, r3
 80004d8:	46bd      	mov	sp, r7
 80004da:	f85d 7b04 	ldr.w	r7, [sp], #4
 80004de:	4770      	bx	lr
 80004e0:	40023800 	.word	0x40023800

080004e4 <LL_RCC_PLL_ConfigDomain_SYS>:
 80004e4:	b480      	push	{r7}
 80004e6:	b085      	sub	sp, #20
 80004e8:	af00      	add	r7, sp, #0
 80004ea:	60f8      	str	r0, [r7, #12]
 80004ec:	60b9      	str	r1, [r7, #8]
 80004ee:	607a      	str	r2, [r7, #4]
 80004f0:	603b      	str	r3, [r7, #0]
 80004f2:	480d      	ldr	r0, [pc, #52]	; (8000528 <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 80004f4:	4b0c      	ldr	r3, [pc, #48]	; (8000528 <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 80004f6:	685a      	ldr	r2, [r3, #4]
 80004f8:	4b0c      	ldr	r3, [pc, #48]	; (800052c <LL_RCC_PLL_ConfigDomain_SYS+0x48>)
 80004fa:	4013      	ands	r3, r2
 80004fc:	68f9      	ldr	r1, [r7, #12]
 80004fe:	68ba      	ldr	r2, [r7, #8]
 8000500:	4311      	orrs	r1, r2
 8000502:	687a      	ldr	r2, [r7, #4]
 8000504:	0192      	lsls	r2, r2, #6
 8000506:	430a      	orrs	r2, r1
 8000508:	4313      	orrs	r3, r2
 800050a:	6043      	str	r3, [r0, #4]
 800050c:	4906      	ldr	r1, [pc, #24]	; (8000528 <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 800050e:	4b06      	ldr	r3, [pc, #24]	; (8000528 <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 8000510:	685b      	ldr	r3, [r3, #4]
 8000512:	f423 3240 	bic.w	r2, r3, #196608	; 0x30000
 8000516:	683b      	ldr	r3, [r7, #0]
 8000518:	4313      	orrs	r3, r2
 800051a:	604b      	str	r3, [r1, #4]
 800051c:	3714      	adds	r7, #20
 800051e:	46bd      	mov	sp, r7
 8000520:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000524:	4770      	bx	lr
 8000526:	bf00      	nop
 8000528:	40023800 	.word	0x40023800
 800052c:	ffbf8000 	.word	0xffbf8000

08000530 <LL_SYSCFG_SetEXTISource>:
 8000530:	b490      	push	{r4, r7}
 8000532:	b084      	sub	sp, #16
 8000534:	af00      	add	r7, sp, #0
 8000536:	6078      	str	r0, [r7, #4]
 8000538:	6039      	str	r1, [r7, #0]
 800053a:	4c11      	ldr	r4, [pc, #68]	; (8000580 <LL_SYSCFG_SetEXTISource+0x50>)
 800053c:	683b      	ldr	r3, [r7, #0]
 800053e:	b2db      	uxtb	r3, r3
 8000540:	490f      	ldr	r1, [pc, #60]	; (8000580 <LL_SYSCFG_SetEXTISource+0x50>)
 8000542:	683a      	ldr	r2, [r7, #0]
 8000544:	b2d2      	uxtb	r2, r2
 8000546:	3202      	adds	r2, #2
 8000548:	f851 1022 	ldr.w	r1, [r1, r2, lsl #2]
 800054c:	683a      	ldr	r2, [r7, #0]
 800054e:	0c12      	lsrs	r2, r2, #16
 8000550:	43d2      	mvns	r2, r2
 8000552:	4011      	ands	r1, r2
 8000554:	683a      	ldr	r2, [r7, #0]
 8000556:	0c12      	lsrs	r2, r2, #16
 8000558:	60fa      	str	r2, [r7, #12]
 800055a:	68fa      	ldr	r2, [r7, #12]
 800055c:	fa92 f2a2 	rbit	r2, r2
 8000560:	60ba      	str	r2, [r7, #8]
 8000562:	68ba      	ldr	r2, [r7, #8]
 8000564:	fab2 f282 	clz	r2, r2
 8000568:	6878      	ldr	r0, [r7, #4]
 800056a:	fa00 f202 	lsl.w	r2, r0, r2
 800056e:	430a      	orrs	r2, r1
 8000570:	3302      	adds	r3, #2
 8000572:	f844 2023 	str.w	r2, [r4, r3, lsl #2]
 8000576:	3710      	adds	r7, #16
 8000578:	46bd      	mov	sp, r7
 800057a:	bc90      	pop	{r4, r7}
 800057c:	4770      	bx	lr
 800057e:	bf00      	nop
 8000580:	40013800 	.word	0x40013800

08000584 <LL_FLASH_SetLatency>:
 8000584:	b480      	push	{r7}
 8000586:	b083      	sub	sp, #12
 8000588:	af00      	add	r7, sp, #0
 800058a:	6078      	str	r0, [r7, #4]
 800058c:	4906      	ldr	r1, [pc, #24]	; (80005a8 <LL_FLASH_SetLatency+0x24>)
 800058e:	4b06      	ldr	r3, [pc, #24]	; (80005a8 <LL_FLASH_SetLatency+0x24>)
 8000590:	681b      	ldr	r3, [r3, #0]
 8000592:	f023 020f 	bic.w	r2, r3, #15
 8000596:	687b      	ldr	r3, [r7, #4]
 8000598:	4313      	orrs	r3, r2
 800059a:	600b      	str	r3, [r1, #0]
 800059c:	370c      	adds	r7, #12
 800059e:	46bd      	mov	sp, r7
 80005a0:	f85d 7b04 	ldr.w	r7, [sp], #4
 80005a4:	4770      	bx	lr
 80005a6:	bf00      	nop
 80005a8:	40023c00 	.word	0x40023c00

080005ac <LL_GPIO_SetPinMode>:
 80005ac:	b480      	push	{r7}
 80005ae:	b089      	sub	sp, #36	; 0x24
 80005b0:	af00      	add	r7, sp, #0
 80005b2:	60f8      	str	r0, [r7, #12]
 80005b4:	60b9      	str	r1, [r7, #8]
 80005b6:	607a      	str	r2, [r7, #4]
 80005b8:	68fb      	ldr	r3, [r7, #12]
 80005ba:	681a      	ldr	r2, [r3, #0]
 80005bc:	68bb      	ldr	r3, [r7, #8]
 80005be:	61fb      	str	r3, [r7, #28]
 80005c0:	69fb      	ldr	r3, [r7, #28]
 80005c2:	fa93 f3a3 	rbit	r3, r3
 80005c6:	61bb      	str	r3, [r7, #24]
 80005c8:	69bb      	ldr	r3, [r7, #24]
 80005ca:	fab3 f383 	clz	r3, r3
 80005ce:	005b      	lsls	r3, r3, #1
 80005d0:	4619      	mov	r1, r3
 80005d2:	2303      	movs	r3, #3
 80005d4:	408b      	lsls	r3, r1
 80005d6:	43db      	mvns	r3, r3
 80005d8:	401a      	ands	r2, r3
 80005da:	68bb      	ldr	r3, [r7, #8]
 80005dc:	617b      	str	r3, [r7, #20]
 80005de:	697b      	ldr	r3, [r7, #20]
 80005e0:	fa93 f3a3 	rbit	r3, r3
 80005e4:	613b      	str	r3, [r7, #16]
 80005e6:	693b      	ldr	r3, [r7, #16]
 80005e8:	fab3 f383 	clz	r3, r3
 80005ec:	005b      	lsls	r3, r3, #1
 80005ee:	4619      	mov	r1, r3
 80005f0:	687b      	ldr	r3, [r7, #4]
 80005f2:	408b      	lsls	r3, r1
 80005f4:	431a      	orrs	r2, r3
 80005f6:	68fb      	ldr	r3, [r7, #12]
 80005f8:	601a      	str	r2, [r3, #0]
 80005fa:	3724      	adds	r7, #36	; 0x24
 80005fc:	46bd      	mov	sp, r7
 80005fe:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000602:	4770      	bx	lr

08000604 <LL_GPIO_SetPinPull>:
 8000604:	b480      	push	{r7}
 8000606:	b089      	sub	sp, #36	; 0x24
 8000608:	af00      	add	r7, sp, #0
 800060a:	60f8      	str	r0, [r7, #12]
 800060c:	60b9      	str	r1, [r7, #8]
 800060e:	607a      	str	r2, [r7, #4]
 8000610:	68fb      	ldr	r3, [r7, #12]
 8000612:	68da      	ldr	r2, [r3, #12]
 8000614:	68bb      	ldr	r3, [r7, #8]
 8000616:	61fb      	str	r3, [r7, #28]
 8000618:	69fb      	ldr	r3, [r7, #28]
 800061a:	fa93 f3a3 	rbit	r3, r3
 800061e:	61bb      	str	r3, [r7, #24]
 8000620:	69bb      	ldr	r3, [r7, #24]
 8000622:	fab3 f383 	clz	r3, r3
 8000626:	005b      	lsls	r3, r3, #1
 8000628:	4619      	mov	r1, r3
 800062a:	2303      	movs	r3, #3
 800062c:	408b      	lsls	r3, r1
 800062e:	43db      	mvns	r3, r3
 8000630:	401a      	ands	r2, r3
 8000632:	68bb      	ldr	r3, [r7, #8]
 8000634:	617b      	str	r3, [r7, #20]
 8000636:	697b      	ldr	r3, [r7, #20]
 8000638:	fa93 f3a3 	rbit	r3, r3
 800063c:	613b      	str	r3, [r7, #16]
 800063e:	693b      	ldr	r3, [r7, #16]
 8000640:	fab3 f383 	clz	r3, r3
 8000644:	005b      	lsls	r3, r3, #1
 8000646:	4619      	mov	r1, r3
 8000648:	687b      	ldr	r3, [r7, #4]
 800064a:	408b      	lsls	r3, r1
 800064c:	431a      	orrs	r2, r3
 800064e:	68fb      	ldr	r3, [r7, #12]
 8000650:	60da      	str	r2, [r3, #12]
 8000652:	3724      	adds	r7, #36	; 0x24
 8000654:	46bd      	mov	sp, r7
 8000656:	f85d 7b04 	ldr.w	r7, [sp], #4
 800065a:	4770      	bx	lr

0800065c <LL_GPIO_ReadInputPort>:
 800065c:	b480      	push	{r7}
 800065e:	b083      	sub	sp, #12
 8000660:	af00      	add	r7, sp, #0
 8000662:	6078      	str	r0, [r7, #4]
 8000664:	687b      	ldr	r3, [r7, #4]
 8000666:	691b      	ldr	r3, [r3, #16]
 8000668:	4618      	mov	r0, r3
 800066a:	370c      	adds	r7, #12
 800066c:	46bd      	mov	sp, r7
 800066e:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000672:	4770      	bx	lr

08000674 <LL_GPIO_SetOutputPin>:
 8000674:	b480      	push	{r7}
 8000676:	b083      	sub	sp, #12
 8000678:	af00      	add	r7, sp, #0
 800067a:	6078      	str	r0, [r7, #4]
 800067c:	6039      	str	r1, [r7, #0]
 800067e:	687b      	ldr	r3, [r7, #4]
 8000680:	683a      	ldr	r2, [r7, #0]
 8000682:	619a      	str	r2, [r3, #24]
 8000684:	370c      	adds	r7, #12
 8000686:	46bd      	mov	sp, r7
 8000688:	f85d 7b04 	ldr.w	r7, [sp], #4
 800068c:	4770      	bx	lr
 800068e:	bf00      	nop

08000690 <LL_GPIO_ResetOutputPin>:
 8000690:	b480      	push	{r7}
 8000692:	b083      	sub	sp, #12
 8000694:	af00      	add	r7, sp, #0
 8000696:	6078      	str	r0, [r7, #4]
 8000698:	6039      	str	r1, [r7, #0]
 800069a:	683b      	ldr	r3, [r7, #0]
 800069c:	041a      	lsls	r2, r3, #16
 800069e:	687b      	ldr	r3, [r7, #4]
 80006a0:	619a      	str	r2, [r3, #24]
 80006a2:	370c      	adds	r7, #12
 80006a4:	46bd      	mov	sp, r7
 80006a6:	f85d 7b04 	ldr.w	r7, [sp], #4
 80006aa:	4770      	bx	lr

080006ac <LL_GPIO_TogglePin>:
 80006ac:	b480      	push	{r7}
 80006ae:	b083      	sub	sp, #12
 80006b0:	af00      	add	r7, sp, #0
 80006b2:	6078      	str	r0, [r7, #4]
 80006b4:	6039      	str	r1, [r7, #0]
 80006b6:	687b      	ldr	r3, [r7, #4]
 80006b8:	695a      	ldr	r2, [r3, #20]
 80006ba:	683b      	ldr	r3, [r7, #0]
 80006bc:	405a      	eors	r2, r3
 80006be:	687b      	ldr	r3, [r7, #4]
 80006c0:	615a      	str	r2, [r3, #20]
 80006c2:	370c      	adds	r7, #12
 80006c4:	46bd      	mov	sp, r7
 80006c6:	f85d 7b04 	ldr.w	r7, [sp], #4
 80006ca:	4770      	bx	lr

080006cc <LL_EXTI_EnableIT_0_31>:
 80006cc:	b480      	push	{r7}
 80006ce:	b083      	sub	sp, #12
 80006d0:	af00      	add	r7, sp, #0
 80006d2:	6078      	str	r0, [r7, #4]
 80006d4:	4905      	ldr	r1, [pc, #20]	; (80006ec <LL_EXTI_EnableIT_0_31+0x20>)
 80006d6:	4b05      	ldr	r3, [pc, #20]	; (80006ec <LL_EXTI_EnableIT_0_31+0x20>)
 80006d8:	681a      	ldr	r2, [r3, #0]
 80006da:	687b      	ldr	r3, [r7, #4]
 80006dc:	4313      	orrs	r3, r2
 80006de:	600b      	str	r3, [r1, #0]
 80006e0:	370c      	adds	r7, #12
 80006e2:	46bd      	mov	sp, r7
 80006e4:	f85d 7b04 	ldr.w	r7, [sp], #4
 80006e8:	4770      	bx	lr
 80006ea:	bf00      	nop
 80006ec:	40013c00 	.word	0x40013c00

080006f0 <LL_EXTI_EnableFallingTrig_0_31>:
 80006f0:	b480      	push	{r7}
 80006f2:	b083      	sub	sp, #12
 80006f4:	af00      	add	r7, sp, #0
 80006f6:	6078      	str	r0, [r7, #4]
 80006f8:	4905      	ldr	r1, [pc, #20]	; (8000710 <LL_EXTI_EnableFallingTrig_0_31+0x20>)
 80006fa:	4b05      	ldr	r3, [pc, #20]	; (8000710 <LL_EXTI_EnableFallingTrig_0_31+0x20>)
 80006fc:	68da      	ldr	r2, [r3, #12]
 80006fe:	687b      	ldr	r3, [r7, #4]
 8000700:	4313      	orrs	r3, r2
 8000702:	60cb      	str	r3, [r1, #12]
 8000704:	370c      	adds	r7, #12
 8000706:	46bd      	mov	sp, r7
 8000708:	f85d 7b04 	ldr.w	r7, [sp], #4
 800070c:	4770      	bx	lr
 800070e:	bf00      	nop
 8000710:	40013c00 	.word	0x40013c00

08000714 <LL_EXTI_ClearFlag_0_31>:
 8000714:	b480      	push	{r7}
 8000716:	b083      	sub	sp, #12
 8000718:	af00      	add	r7, sp, #0
 800071a:	6078      	str	r0, [r7, #4]
 800071c:	4a03      	ldr	r2, [pc, #12]	; (800072c <LL_EXTI_ClearFlag_0_31+0x18>)
 800071e:	687b      	ldr	r3, [r7, #4]
 8000720:	6153      	str	r3, [r2, #20]
 8000722:	370c      	adds	r7, #12
 8000724:	46bd      	mov	sp, r7
 8000726:	f85d 7b04 	ldr.w	r7, [sp], #4
 800072a:	4770      	bx	lr
 800072c:	40013c00 	.word	0x40013c00

08000730 <myDelay>:
 8000730:	b480      	push	{r7}
 8000732:	b085      	sub	sp, #20
 8000734:	af00      	add	r7, sp, #0
 8000736:	6078      	str	r0, [r7, #4]
 8000738:	4b07      	ldr	r3, [pc, #28]	; (8000758 <myDelay+0x28>)
 800073a:	681b      	ldr	r3, [r3, #0]
 800073c:	60fb      	str	r3, [r7, #12]
 800073e:	bf00      	nop
 8000740:	4b05      	ldr	r3, [pc, #20]	; (8000758 <myDelay+0x28>)
 8000742:	681a      	ldr	r2, [r3, #0]
 8000744:	68fb      	ldr	r3, [r7, #12]
 8000746:	1ad2      	subs	r2, r2, r3
 8000748:	687b      	ldr	r3, [r7, #4]
 800074a:	429a      	cmp	r2, r3
 800074c:	dbf8      	blt.n	8000740 <myDelay+0x10>
 800074e:	3714      	adds	r7, #20
 8000750:	46bd      	mov	sp, r7
 8000752:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000756:	4770      	bx	lr
 8000758:	20000464 	.word	0x20000464

0800075c <write_data>:
 800075c:	b580      	push	{r7, lr}
 800075e:	b082      	sub	sp, #8
 8000760:	af00      	add	r7, sp, #0
 8000762:	4603      	mov	r3, r0
 8000764:	71fb      	strb	r3, [r7, #7]
 8000766:	79fb      	ldrb	r3, [r7, #7]
 8000768:	08db      	lsrs	r3, r3, #3
 800076a:	b2db      	uxtb	r3, r3
 800076c:	f003 0301 	and.w	r3, r3, #1
 8000770:	2b00      	cmp	r3, #0
 8000772:	d004      	beq.n	800077e <write_data+0x22>
 8000774:	481c      	ldr	r0, [pc, #112]	; (80007e8 <write_data+0x8c>)
 8000776:	2140      	movs	r1, #64	; 0x40
 8000778:	f7ff ff7c 	bl	8000674 <LL_GPIO_SetOutputPin>
 800077c:	e003      	b.n	8000786 <write_data+0x2a>
 800077e:	481a      	ldr	r0, [pc, #104]	; (80007e8 <write_data+0x8c>)
 8000780:	2140      	movs	r1, #64	; 0x40
 8000782:	f7ff ff85 	bl	8000690 <LL_GPIO_ResetOutputPin>
 8000786:	79fb      	ldrb	r3, [r7, #7]
 8000788:	089b      	lsrs	r3, r3, #2
 800078a:	b2db      	uxtb	r3, r3
 800078c:	f003 0301 	and.w	r3, r3, #1
 8000790:	2b00      	cmp	r3, #0
 8000792:	d004      	beq.n	800079e <write_data+0x42>
 8000794:	4814      	ldr	r0, [pc, #80]	; (80007e8 <write_data+0x8c>)
 8000796:	2120      	movs	r1, #32
 8000798:	f7ff ff6c 	bl	8000674 <LL_GPIO_SetOutputPin>
 800079c:	e003      	b.n	80007a6 <write_data+0x4a>
 800079e:	4812      	ldr	r0, [pc, #72]	; (80007e8 <write_data+0x8c>)
 80007a0:	2120      	movs	r1, #32
 80007a2:	f7ff ff75 	bl	8000690 <LL_GPIO_ResetOutputPin>
 80007a6:	79fb      	ldrb	r3, [r7, #7]
 80007a8:	085b      	lsrs	r3, r3, #1
 80007aa:	b2db      	uxtb	r3, r3
 80007ac:	f003 0301 	and.w	r3, r3, #1
 80007b0:	2b00      	cmp	r3, #0
 80007b2:	d004      	beq.n	80007be <write_data+0x62>
 80007b4:	480c      	ldr	r0, [pc, #48]	; (80007e8 <write_data+0x8c>)
 80007b6:	2110      	movs	r1, #16
 80007b8:	f7ff ff5c 	bl	8000674 <LL_GPIO_SetOutputPin>
 80007bc:	e003      	b.n	80007c6 <write_data+0x6a>
 80007be:	480a      	ldr	r0, [pc, #40]	; (80007e8 <write_data+0x8c>)
 80007c0:	2110      	movs	r1, #16
 80007c2:	f7ff ff65 	bl	8000690 <LL_GPIO_ResetOutputPin>
 80007c6:	79fb      	ldrb	r3, [r7, #7]
 80007c8:	f003 0301 	and.w	r3, r3, #1
 80007cc:	2b00      	cmp	r3, #0
 80007ce:	d004      	beq.n	80007da <write_data+0x7e>
 80007d0:	4805      	ldr	r0, [pc, #20]	; (80007e8 <write_data+0x8c>)
 80007d2:	2108      	movs	r1, #8
 80007d4:	f7ff ff4e 	bl	8000674 <LL_GPIO_SetOutputPin>
 80007d8:	e003      	b.n	80007e2 <write_data+0x86>
 80007da:	4803      	ldr	r0, [pc, #12]	; (80007e8 <write_data+0x8c>)
 80007dc:	2108      	movs	r1, #8
 80007de:	f7ff ff57 	bl	8000690 <LL_GPIO_ResetOutputPin>
 80007e2:	3708      	adds	r7, #8
 80007e4:	46bd      	mov	sp, r7
 80007e6:	bd80      	pop	{r7, pc}
 80007e8:	40020c00 	.word	0x40020c00

080007ec <LCD_SendCommand>:
 80007ec:	b580      	push	{r7, lr}
 80007ee:	b082      	sub	sp, #8
 80007f0:	af00      	add	r7, sp, #0
 80007f2:	4603      	mov	r3, r0
 80007f4:	71fb      	strb	r3, [r7, #7]
 80007f6:	4818      	ldr	r0, [pc, #96]	; (8000858 <LCD_SendCommand+0x6c>)
 80007f8:	2101      	movs	r1, #1
 80007fa:	f7ff ff49 	bl	8000690 <LL_GPIO_ResetOutputPin>
 80007fe:	79fb      	ldrb	r3, [r7, #7]
 8000800:	091b      	lsrs	r3, r3, #4
 8000802:	b2db      	uxtb	r3, r3
 8000804:	4618      	mov	r0, r3
 8000806:	f7ff ffa9 	bl	800075c <write_data>
 800080a:	4813      	ldr	r0, [pc, #76]	; (8000858 <LCD_SendCommand+0x6c>)
 800080c:	2104      	movs	r1, #4
 800080e:	f7ff ff31 	bl	8000674 <LL_GPIO_SetOutputPin>
 8000812:	2001      	movs	r0, #1
 8000814:	f7ff ff8c 	bl	8000730 <myDelay>
 8000818:	480f      	ldr	r0, [pc, #60]	; (8000858 <LCD_SendCommand+0x6c>)
 800081a:	2104      	movs	r1, #4
 800081c:	f7ff ff38 	bl	8000690 <LL_GPIO_ResetOutputPin>
 8000820:	2001      	movs	r0, #1
 8000822:	f7ff ff85 	bl	8000730 <myDelay>
 8000826:	79fb      	ldrb	r3, [r7, #7]
 8000828:	4618      	mov	r0, r3
 800082a:	f7ff ff97 	bl	800075c <write_data>
 800082e:	2001      	movs	r0, #1
 8000830:	f7ff ff7e 	bl	8000730 <myDelay>
 8000834:	4808      	ldr	r0, [pc, #32]	; (8000858 <LCD_SendCommand+0x6c>)
 8000836:	2104      	movs	r1, #4
 8000838:	f7ff ff1c 	bl	8000674 <LL_GPIO_SetOutputPin>
 800083c:	2001      	movs	r0, #1
 800083e:	f7ff ff77 	bl	8000730 <myDelay>
 8000842:	4805      	ldr	r0, [pc, #20]	; (8000858 <LCD_SendCommand+0x6c>)
 8000844:	2104      	movs	r1, #4
 8000846:	f7ff ff23 	bl	8000690 <LL_GPIO_ResetOutputPin>
 800084a:	2000      	movs	r0, #0
 800084c:	f7ff ff86 	bl	800075c <write_data>
 8000850:	3708      	adds	r7, #8
 8000852:	46bd      	mov	sp, r7
 8000854:	bd80      	pop	{r7, pc}
 8000856:	bf00      	nop
 8000858:	40020c00 	.word	0x40020c00

0800085c <LCD_SendData>:
 800085c:	b580      	push	{r7, lr}
 800085e:	b082      	sub	sp, #8
 8000860:	af00      	add	r7, sp, #0
 8000862:	4603      	mov	r3, r0
 8000864:	71fb      	strb	r3, [r7, #7]
 8000866:	4818      	ldr	r0, [pc, #96]	; (80008c8 <LCD_SendData+0x6c>)
 8000868:	2101      	movs	r1, #1
 800086a:	f7ff ff03 	bl	8000674 <LL_GPIO_SetOutputPin>
 800086e:	79fb      	ldrb	r3, [r7, #7]
 8000870:	091b      	lsrs	r3, r3, #4
 8000872:	b2db      	uxtb	r3, r3
 8000874:	4618      	mov	r0, r3
 8000876:	f7ff ff71 	bl	800075c <write_data>
 800087a:	4813      	ldr	r0, [pc, #76]	; (80008c8 <LCD_SendData+0x6c>)
 800087c:	2104      	movs	r1, #4
 800087e:	f7ff fef9 	bl	8000674 <LL_GPIO_SetOutputPin>
 8000882:	2001      	movs	r0, #1
 8000884:	f7ff ff54 	bl	8000730 <myDelay>
 8000888:	480f      	ldr	r0, [pc, #60]	; (80008c8 <LCD_SendData+0x6c>)
 800088a:	2104      	movs	r1, #4
 800088c:	f7ff ff00 	bl	8000690 <LL_GPIO_ResetOutputPin>
 8000890:	2001      	movs	r0, #1
 8000892:	f7ff ff4d 	bl	8000730 <myDelay>
 8000896:	79fb      	ldrb	r3, [r7, #7]
 8000898:	4618      	mov	r0, r3
 800089a:	f7ff ff5f 	bl	800075c <write_data>
 800089e:	480a      	ldr	r0, [pc, #40]	; (80008c8 <LCD_SendData+0x6c>)
 80008a0:	2104      	movs	r1, #4
 80008a2:	f7ff fee7 	bl	8000674 <LL_GPIO_SetOutputPin>
 80008a6:	2001      	movs	r0, #1
 80008a8:	f7ff ff42 	bl	8000730 <myDelay>
 80008ac:	4806      	ldr	r0, [pc, #24]	; (80008c8 <LCD_SendData+0x6c>)
 80008ae:	2104      	movs	r1, #4
 80008b0:	f7ff feee 	bl	8000690 <LL_GPIO_ResetOutputPin>
 80008b4:	4804      	ldr	r0, [pc, #16]	; (80008c8 <LCD_SendData+0x6c>)
 80008b6:	2101      	movs	r1, #1
 80008b8:	f7ff feea 	bl	8000690 <LL_GPIO_ResetOutputPin>
 80008bc:	2000      	movs	r0, #0
 80008be:	f7ff ff4d 	bl	800075c <write_data>
 80008c2:	3708      	adds	r7, #8
 80008c4:	46bd      	mov	sp, r7
 80008c6:	bd80      	pop	{r7, pc}
 80008c8:	40020c00 	.word	0x40020c00

080008cc <LCD_print_str>:
 80008cc:	b580      	push	{r7, lr}
 80008ce:	b084      	sub	sp, #16
 80008d0:	af00      	add	r7, sp, #0
 80008d2:	6078      	str	r0, [r7, #4]
 80008d4:	2300      	movs	r3, #0
 80008d6:	60fb      	str	r3, [r7, #12]
 80008d8:	e009      	b.n	80008ee <LCD_print_str+0x22>
 80008da:	68fb      	ldr	r3, [r7, #12]
 80008dc:	687a      	ldr	r2, [r7, #4]
 80008de:	4413      	add	r3, r2
 80008e0:	781b      	ldrb	r3, [r3, #0]
 80008e2:	4618      	mov	r0, r3
 80008e4:	f7ff ffba 	bl	800085c <LCD_SendData>
 80008e8:	68fb      	ldr	r3, [r7, #12]
 80008ea:	3301      	adds	r3, #1
 80008ec:	60fb      	str	r3, [r7, #12]
 80008ee:	68fb      	ldr	r3, [r7, #12]
 80008f0:	687a      	ldr	r2, [r7, #4]
 80008f2:	4413      	add	r3, r2
 80008f4:	781b      	ldrb	r3, [r3, #0]
 80008f6:	2b00      	cmp	r3, #0
 80008f8:	d1ef      	bne.n	80008da <LCD_print_str+0xe>
 80008fa:	3710      	adds	r7, #16
 80008fc:	46bd      	mov	sp, r7
 80008fe:	bd80      	pop	{r7, pc}

08000900 <LCD_init>:
 8000900:	b580      	push	{r7, lr}
 8000902:	b084      	sub	sp, #16
 8000904:	af00      	add	r7, sp, #0
 8000906:	2014      	movs	r0, #20
 8000908:	f7ff ff12 	bl	8000730 <myDelay>
 800090c:	4850      	ldr	r0, [pc, #320]	; (8000a50 <LCD_init+0x150>)
 800090e:	2110      	movs	r1, #16
 8000910:	f7ff feb0 	bl	8000674 <LL_GPIO_SetOutputPin>
 8000914:	484e      	ldr	r0, [pc, #312]	; (8000a50 <LCD_init+0x150>)
 8000916:	2108      	movs	r1, #8
 8000918:	f7ff feac 	bl	8000674 <LL_GPIO_SetOutputPin>
 800091c:	484c      	ldr	r0, [pc, #304]	; (8000a50 <LCD_init+0x150>)
 800091e:	2104      	movs	r1, #4
 8000920:	f7ff fea8 	bl	8000674 <LL_GPIO_SetOutputPin>
 8000924:	2001      	movs	r0, #1
 8000926:	f7ff ff03 	bl	8000730 <myDelay>
 800092a:	4849      	ldr	r0, [pc, #292]	; (8000a50 <LCD_init+0x150>)
 800092c:	2104      	movs	r1, #4
 800092e:	f7ff feaf 	bl	8000690 <LL_GPIO_ResetOutputPin>
 8000932:	2001      	movs	r0, #1
 8000934:	f7ff fefc 	bl	8000730 <myDelay>
 8000938:	4845      	ldr	r0, [pc, #276]	; (8000a50 <LCD_init+0x150>)
 800093a:	2110      	movs	r1, #16
 800093c:	f7ff fe9a 	bl	8000674 <LL_GPIO_SetOutputPin>
 8000940:	4843      	ldr	r0, [pc, #268]	; (8000a50 <LCD_init+0x150>)
 8000942:	2108      	movs	r1, #8
 8000944:	f7ff fe96 	bl	8000674 <LL_GPIO_SetOutputPin>
 8000948:	4841      	ldr	r0, [pc, #260]	; (8000a50 <LCD_init+0x150>)
 800094a:	2104      	movs	r1, #4
 800094c:	f7ff fe92 	bl	8000674 <LL_GPIO_SetOutputPin>
 8000950:	2001      	movs	r0, #1
 8000952:	f7ff feed 	bl	8000730 <myDelay>
 8000956:	483e      	ldr	r0, [pc, #248]	; (8000a50 <LCD_init+0x150>)
 8000958:	2104      	movs	r1, #4
 800095a:	f7ff fe99 	bl	8000690 <LL_GPIO_ResetOutputPin>
 800095e:	2001      	movs	r0, #1
 8000960:	f7ff fee6 	bl	8000730 <myDelay>
 8000964:	483a      	ldr	r0, [pc, #232]	; (8000a50 <LCD_init+0x150>)
 8000966:	2110      	movs	r1, #16
 8000968:	f7ff fe84 	bl	8000674 <LL_GPIO_SetOutputPin>
 800096c:	4838      	ldr	r0, [pc, #224]	; (8000a50 <LCD_init+0x150>)
 800096e:	2108      	movs	r1, #8
 8000970:	f7ff fe80 	bl	8000674 <LL_GPIO_SetOutputPin>
 8000974:	4836      	ldr	r0, [pc, #216]	; (8000a50 <LCD_init+0x150>)
 8000976:	2104      	movs	r1, #4
 8000978:	f7ff fe7c 	bl	8000674 <LL_GPIO_SetOutputPin>
 800097c:	2001      	movs	r0, #1
 800097e:	f7ff fed7 	bl	8000730 <myDelay>
 8000982:	4833      	ldr	r0, [pc, #204]	; (8000a50 <LCD_init+0x150>)
 8000984:	2104      	movs	r1, #4
 8000986:	f7ff fe83 	bl	8000690 <LL_GPIO_ResetOutputPin>
 800098a:	2001      	movs	r0, #1
 800098c:	f7ff fed0 	bl	8000730 <myDelay>
 8000990:	482f      	ldr	r0, [pc, #188]	; (8000a50 <LCD_init+0x150>)
 8000992:	2110      	movs	r1, #16
 8000994:	f7ff fe6e 	bl	8000674 <LL_GPIO_SetOutputPin>
 8000998:	482d      	ldr	r0, [pc, #180]	; (8000a50 <LCD_init+0x150>)
 800099a:	2108      	movs	r1, #8
 800099c:	f7ff fe78 	bl	8000690 <LL_GPIO_ResetOutputPin>
 80009a0:	482b      	ldr	r0, [pc, #172]	; (8000a50 <LCD_init+0x150>)
 80009a2:	2104      	movs	r1, #4
 80009a4:	f7ff fe66 	bl	8000674 <LL_GPIO_SetOutputPin>
 80009a8:	2001      	movs	r0, #1
 80009aa:	f7ff fec1 	bl	8000730 <myDelay>
 80009ae:	4828      	ldr	r0, [pc, #160]	; (8000a50 <LCD_init+0x150>)
 80009b0:	2104      	movs	r1, #4
 80009b2:	f7ff fe6d 	bl	8000690 <LL_GPIO_ResetOutputPin>
 80009b6:	2001      	movs	r0, #1
 80009b8:	f7ff feba 	bl	8000730 <myDelay>
 80009bc:	2028      	movs	r0, #40	; 0x28
 80009be:	f7ff ff15 	bl	80007ec <LCD_SendCommand>
 80009c2:	2001      	movs	r0, #1
 80009c4:	f7ff feb4 	bl	8000730 <myDelay>
 80009c8:	200f      	movs	r0, #15
 80009ca:	f7ff ff0f 	bl	80007ec <LCD_SendCommand>
 80009ce:	2001      	movs	r0, #1
 80009d0:	f7ff feae 	bl	8000730 <myDelay>
 80009d4:	2001      	movs	r0, #1
 80009d6:	f7ff ff09 	bl	80007ec <LCD_SendCommand>
 80009da:	2001      	movs	r0, #1
 80009dc:	f7ff fea8 	bl	8000730 <myDelay>
 80009e0:	2006      	movs	r0, #6
 80009e2:	f7ff ff03 	bl	80007ec <LCD_SendCommand>
 80009e6:	2001      	movs	r0, #1
 80009e8:	f7ff fea2 	bl	8000730 <myDelay>
 80009ec:	200f      	movs	r0, #15
 80009ee:	f7ff fefd 	bl	80007ec <LCD_SendCommand>
 80009f2:	2001      	movs	r0, #1
 80009f4:	f7ff fe9c 	bl	8000730 <myDelay>
 80009f8:	200c      	movs	r0, #12
 80009fa:	f7ff fef7 	bl	80007ec <LCD_SendCommand>
 80009fe:	4a15      	ldr	r2, [pc, #84]	; (8000a54 <LCD_init+0x154>)
 8000a00:	f107 0308 	add.w	r3, r7, #8
 8000a04:	e892 0003 	ldmia.w	r2, {r0, r1}
 8000a08:	6018      	str	r0, [r3, #0]
 8000a0a:	3304      	adds	r3, #4
 8000a0c:	8019      	strh	r1, [r3, #0]
 8000a0e:	f107 0308 	add.w	r3, r7, #8
 8000a12:	4618      	mov	r0, r3
 8000a14:	f7ff ff5a 	bl	80008cc <LCD_print_str>
 8000a18:	f000 f822 	bl	8000a60 <LCD_print_time>
 8000a1c:	20c0      	movs	r0, #192	; 0xc0
 8000a1e:	f7ff fee5 	bl	80007ec <LCD_SendCommand>
 8000a22:	4a0d      	ldr	r2, [pc, #52]	; (8000a58 <LCD_init+0x158>)
 8000a24:	463b      	mov	r3, r7
 8000a26:	e892 0003 	ldmia.w	r2, {r0, r1}
 8000a2a:	6018      	str	r0, [r3, #0]
 8000a2c:	3304      	adds	r3, #4
 8000a2e:	8019      	strh	r1, [r3, #0]
 8000a30:	3302      	adds	r3, #2
 8000a32:	0c0a      	lsrs	r2, r1, #16
 8000a34:	701a      	strb	r2, [r3, #0]
 8000a36:	463b      	mov	r3, r7
 8000a38:	4618      	mov	r0, r3
 8000a3a:	f7ff ff47 	bl	80008cc <LCD_print_str>
 8000a3e:	f000 f86d 	bl	8000b1c <LCD_print_alarm>
 8000a42:	4b06      	ldr	r3, [pc, #24]	; (8000a5c <LCD_init+0x15c>)
 8000a44:	2289      	movs	r2, #137	; 0x89
 8000a46:	601a      	str	r2, [r3, #0]
 8000a48:	3710      	adds	r7, #16
 8000a4a:	46bd      	mov	sp, r7
 8000a4c:	bd80      	pop	{r7, pc}
 8000a4e:	bf00      	nop
 8000a50:	40020c00 	.word	0x40020c00
 8000a54:	08001884 	.word	0x08001884
 8000a58:	0800188c 	.word	0x0800188c
 8000a5c:	20000488 	.word	0x20000488

08000a60 <LCD_print_time>:
 8000a60:	b580      	push	{r7, lr}
 8000a62:	b082      	sub	sp, #8
 8000a64:	af00      	add	r7, sp, #0
 8000a66:	2087      	movs	r0, #135	; 0x87
 8000a68:	f7ff fec0 	bl	80007ec <LCD_SendCommand>
 8000a6c:	4b28      	ldr	r3, [pc, #160]	; (8000b10 <LCD_print_time+0xb0>)
 8000a6e:	681b      	ldr	r3, [r3, #0]
 8000a70:	4a28      	ldr	r2, [pc, #160]	; (8000b14 <LCD_print_time+0xb4>)
 8000a72:	fb82 1203 	smull	r1, r2, r2, r3
 8000a76:	1092      	asrs	r2, r2, #2
 8000a78:	17db      	asrs	r3, r3, #31
 8000a7a:	1ad3      	subs	r3, r2, r3
 8000a7c:	607b      	str	r3, [r7, #4]
 8000a7e:	687b      	ldr	r3, [r7, #4]
 8000a80:	2b00      	cmp	r3, #0
 8000a82:	d007      	beq.n	8000a94 <LCD_print_time+0x34>
 8000a84:	687b      	ldr	r3, [r7, #4]
 8000a86:	b2db      	uxtb	r3, r3
 8000a88:	3330      	adds	r3, #48	; 0x30
 8000a8a:	b2db      	uxtb	r3, r3
 8000a8c:	4618      	mov	r0, r3
 8000a8e:	f7ff fee5 	bl	800085c <LCD_SendData>
 8000a92:	e002      	b.n	8000a9a <LCD_print_time+0x3a>
 8000a94:	2020      	movs	r0, #32
 8000a96:	f7ff fee1 	bl	800085c <LCD_SendData>
 8000a9a:	4b1d      	ldr	r3, [pc, #116]	; (8000b10 <LCD_print_time+0xb0>)
 8000a9c:	681a      	ldr	r2, [r3, #0]
 8000a9e:	4b1d      	ldr	r3, [pc, #116]	; (8000b14 <LCD_print_time+0xb4>)
 8000aa0:	fb83 1302 	smull	r1, r3, r3, r2
 8000aa4:	1099      	asrs	r1, r3, #2
 8000aa6:	17d3      	asrs	r3, r2, #31
 8000aa8:	1ac9      	subs	r1, r1, r3
 8000aaa:	460b      	mov	r3, r1
 8000aac:	009b      	lsls	r3, r3, #2
 8000aae:	440b      	add	r3, r1
 8000ab0:	005b      	lsls	r3, r3, #1
 8000ab2:	1ad1      	subs	r1, r2, r3
 8000ab4:	b2cb      	uxtb	r3, r1
 8000ab6:	3330      	adds	r3, #48	; 0x30
 8000ab8:	b2db      	uxtb	r3, r3
 8000aba:	4618      	mov	r0, r3
 8000abc:	f7ff fece 	bl	800085c <LCD_SendData>
 8000ac0:	203a      	movs	r0, #58	; 0x3a
 8000ac2:	f7ff fecb 	bl	800085c <LCD_SendData>
 8000ac6:	4b14      	ldr	r3, [pc, #80]	; (8000b18 <LCD_print_time+0xb8>)
 8000ac8:	681b      	ldr	r3, [r3, #0]
 8000aca:	4a12      	ldr	r2, [pc, #72]	; (8000b14 <LCD_print_time+0xb4>)
 8000acc:	fb82 1203 	smull	r1, r2, r2, r3
 8000ad0:	1092      	asrs	r2, r2, #2
 8000ad2:	17db      	asrs	r3, r3, #31
 8000ad4:	1ad3      	subs	r3, r2, r3
 8000ad6:	b2db      	uxtb	r3, r3
 8000ad8:	3330      	adds	r3, #48	; 0x30
 8000ada:	b2db      	uxtb	r3, r3
 8000adc:	4618      	mov	r0, r3
 8000ade:	f7ff febd 	bl	800085c <LCD_SendData>
 8000ae2:	4b0d      	ldr	r3, [pc, #52]	; (8000b18 <LCD_print_time+0xb8>)
 8000ae4:	681a      	ldr	r2, [r3, #0]
 8000ae6:	4b0b      	ldr	r3, [pc, #44]	; (8000b14 <LCD_print_time+0xb4>)
 8000ae8:	fb83 1302 	smull	r1, r3, r3, r2
 8000aec:	1099      	asrs	r1, r3, #2
 8000aee:	17d3      	asrs	r3, r2, #31
 8000af0:	1ac9      	subs	r1, r1, r3
 8000af2:	460b      	mov	r3, r1
 8000af4:	009b      	lsls	r3, r3, #2
 8000af6:	440b      	add	r3, r1
 8000af8:	005b      	lsls	r3, r3, #1
 8000afa:	1ad1      	subs	r1, r2, r3
 8000afc:	b2cb      	uxtb	r3, r1
 8000afe:	3330      	adds	r3, #48	; 0x30
 8000b00:	b2db      	uxtb	r3, r3
 8000b02:	4618      	mov	r0, r3
 8000b04:	f7ff feaa 	bl	800085c <LCD_SendData>
 8000b08:	3708      	adds	r7, #8
 8000b0a:	46bd      	mov	sp, r7
 8000b0c:	bd80      	pop	{r7, pc}
 8000b0e:	bf00      	nop
 8000b10:	20000004 	.word	0x20000004
 8000b14:	66666667 	.word	0x66666667
 8000b18:	20000008 	.word	0x20000008

08000b1c <LCD_print_alarm>:
 8000b1c:	b580      	push	{r7, lr}
 8000b1e:	b082      	sub	sp, #8
 8000b20:	af00      	add	r7, sp, #0
 8000b22:	20c7      	movs	r0, #199	; 0xc7
 8000b24:	f7ff fe62 	bl	80007ec <LCD_SendCommand>
 8000b28:	4b28      	ldr	r3, [pc, #160]	; (8000bcc <LCD_print_alarm+0xb0>)
 8000b2a:	681b      	ldr	r3, [r3, #0]
 8000b2c:	4a28      	ldr	r2, [pc, #160]	; (8000bd0 <LCD_print_alarm+0xb4>)
 8000b2e:	fb82 1203 	smull	r1, r2, r2, r3
 8000b32:	1092      	asrs	r2, r2, #2
 8000b34:	17db      	asrs	r3, r3, #31
 8000b36:	1ad3      	subs	r3, r2, r3
 8000b38:	607b      	str	r3, [r7, #4]
 8000b3a:	687b      	ldr	r3, [r7, #4]
 8000b3c:	2b00      	cmp	r3, #0
 8000b3e:	d007      	beq.n	8000b50 <LCD_print_alarm+0x34>
 8000b40:	687b      	ldr	r3, [r7, #4]
 8000b42:	b2db      	uxtb	r3, r3
 8000b44:	3330      	adds	r3, #48	; 0x30
 8000b46:	b2db      	uxtb	r3, r3
 8000b48:	4618      	mov	r0, r3
 8000b4a:	f7ff fe87 	bl	800085c <LCD_SendData>
 8000b4e:	e002      	b.n	8000b56 <LCD_print_alarm+0x3a>
 8000b50:	2020      	movs	r0, #32
 8000b52:	f7ff fe83 	bl	800085c <LCD_SendData>
 8000b56:	4b1d      	ldr	r3, [pc, #116]	; (8000bcc <LCD_print_alarm+0xb0>)
 8000b58:	681a      	ldr	r2, [r3, #0]
 8000b5a:	4b1d      	ldr	r3, [pc, #116]	; (8000bd0 <LCD_print_alarm+0xb4>)
 8000b5c:	fb83 1302 	smull	r1, r3, r3, r2
 8000b60:	1099      	asrs	r1, r3, #2
 8000b62:	17d3      	asrs	r3, r2, #31
 8000b64:	1ac9      	subs	r1, r1, r3
 8000b66:	460b      	mov	r3, r1
 8000b68:	009b      	lsls	r3, r3, #2
 8000b6a:	440b      	add	r3, r1
 8000b6c:	005b      	lsls	r3, r3, #1
 8000b6e:	1ad1      	subs	r1, r2, r3
 8000b70:	b2cb      	uxtb	r3, r1
 8000b72:	3330      	adds	r3, #48	; 0x30
 8000b74:	b2db      	uxtb	r3, r3
 8000b76:	4618      	mov	r0, r3
 8000b78:	f7ff fe70 	bl	800085c <LCD_SendData>
 8000b7c:	203a      	movs	r0, #58	; 0x3a
 8000b7e:	f7ff fe6d 	bl	800085c <LCD_SendData>
 8000b82:	4b14      	ldr	r3, [pc, #80]	; (8000bd4 <LCD_print_alarm+0xb8>)
 8000b84:	681b      	ldr	r3, [r3, #0]
 8000b86:	4a12      	ldr	r2, [pc, #72]	; (8000bd0 <LCD_print_alarm+0xb4>)
 8000b88:	fb82 1203 	smull	r1, r2, r2, r3
 8000b8c:	1092      	asrs	r2, r2, #2
 8000b8e:	17db      	asrs	r3, r3, #31
 8000b90:	1ad3      	subs	r3, r2, r3
 8000b92:	b2db      	uxtb	r3, r3
 8000b94:	3330      	adds	r3, #48	; 0x30
 8000b96:	b2db      	uxtb	r3, r3
 8000b98:	4618      	mov	r0, r3
 8000b9a:	f7ff fe5f 	bl	800085c <LCD_SendData>
 8000b9e:	4b0d      	ldr	r3, [pc, #52]	; (8000bd4 <LCD_print_alarm+0xb8>)
 8000ba0:	681a      	ldr	r2, [r3, #0]
 8000ba2:	4b0b      	ldr	r3, [pc, #44]	; (8000bd0 <LCD_print_alarm+0xb4>)
 8000ba4:	fb83 1302 	smull	r1, r3, r3, r2
 8000ba8:	1099      	asrs	r1, r3, #2
 8000baa:	17d3      	asrs	r3, r2, #31
 8000bac:	1ac9      	subs	r1, r1, r3
 8000bae:	460b      	mov	r3, r1
 8000bb0:	009b      	lsls	r3, r3, #2
 8000bb2:	440b      	add	r3, r1
 8000bb4:	005b      	lsls	r3, r3, #1
 8000bb6:	1ad1      	subs	r1, r2, r3
 8000bb8:	b2cb      	uxtb	r3, r1
 8000bba:	3330      	adds	r3, #48	; 0x30
 8000bbc:	b2db      	uxtb	r3, r3
 8000bbe:	4618      	mov	r0, r3
 8000bc0:	f7ff fe4c 	bl	800085c <LCD_SendData>
 8000bc4:	3708      	adds	r7, #8
 8000bc6:	46bd      	mov	sp, r7
 8000bc8:	bd80      	pop	{r7, pc}
 8000bca:	bf00      	nop
 8000bcc:	2000000c 	.word	0x2000000c
 8000bd0:	66666667 	.word	0x66666667
 8000bd4:	20000470 	.word	0x20000470

08000bd8 <toggle_cursor>:
 8000bd8:	b580      	push	{r7, lr}
 8000bda:	b082      	sub	sp, #8
 8000bdc:	af00      	add	r7, sp, #0
 8000bde:	4b73      	ldr	r3, [pc, #460]	; (8000dac <toggle_cursor+0x1d4>)
 8000be0:	781b      	ldrb	r3, [r3, #0]
 8000be2:	2b00      	cmp	r3, #0
 8000be4:	d00c      	beq.n	8000c00 <toggle_cursor+0x28>
 8000be6:	4b72      	ldr	r3, [pc, #456]	; (8000db0 <toggle_cursor+0x1d8>)
 8000be8:	681b      	ldr	r3, [r3, #0]
 8000bea:	b2db      	uxtb	r3, r3
 8000bec:	4618      	mov	r0, r3
 8000bee:	f7ff fdfd 	bl	80007ec <LCD_SendCommand>
 8000bf2:	2020      	movs	r0, #32
 8000bf4:	f7ff fe32 	bl	800085c <LCD_SendData>
 8000bf8:	4b6c      	ldr	r3, [pc, #432]	; (8000dac <toggle_cursor+0x1d4>)
 8000bfa:	2200      	movs	r2, #0
 8000bfc:	701a      	strb	r2, [r3, #0]
 8000bfe:	e0d1      	b.n	8000da4 <toggle_cursor+0x1cc>
 8000c00:	4b6b      	ldr	r3, [pc, #428]	; (8000db0 <toggle_cursor+0x1d8>)
 8000c02:	681b      	ldr	r3, [r3, #0]
 8000c04:	b2db      	uxtb	r3, r3
 8000c06:	4618      	mov	r0, r3
 8000c08:	f7ff fdf0 	bl	80007ec <LCD_SendCommand>
 8000c0c:	4b68      	ldr	r3, [pc, #416]	; (8000db0 <toggle_cursor+0x1d8>)
 8000c0e:	681b      	ldr	r3, [r3, #0]
 8000c10:	2b89      	cmp	r3, #137	; 0x89
 8000c12:	d003      	beq.n	8000c1c <toggle_cursor+0x44>
 8000c14:	4b66      	ldr	r3, [pc, #408]	; (8000db0 <toggle_cursor+0x1d8>)
 8000c16:	681b      	ldr	r3, [r3, #0]
 8000c18:	2bc9      	cmp	r3, #201	; 0xc9
 8000c1a:	d103      	bne.n	8000c24 <toggle_cursor+0x4c>
 8000c1c:	203a      	movs	r0, #58	; 0x3a
 8000c1e:	f7ff fe1d 	bl	800085c <LCD_SendData>
 8000c22:	e0bc      	b.n	8000d9e <toggle_cursor+0x1c6>
 8000c24:	4b62      	ldr	r3, [pc, #392]	; (8000db0 <toggle_cursor+0x1d8>)
 8000c26:	681b      	ldr	r3, [r3, #0]
 8000c28:	2bc7      	cmp	r3, #199	; 0xc7
 8000c2a:	d117      	bne.n	8000c5c <toggle_cursor+0x84>
 8000c2c:	4b61      	ldr	r3, [pc, #388]	; (8000db4 <toggle_cursor+0x1dc>)
 8000c2e:	681b      	ldr	r3, [r3, #0]
 8000c30:	4a61      	ldr	r2, [pc, #388]	; (8000db8 <toggle_cursor+0x1e0>)
 8000c32:	fb82 1203 	smull	r1, r2, r2, r3
 8000c36:	1092      	asrs	r2, r2, #2
 8000c38:	17db      	asrs	r3, r3, #31
 8000c3a:	1ad3      	subs	r3, r2, r3
 8000c3c:	607b      	str	r3, [r7, #4]
 8000c3e:	687b      	ldr	r3, [r7, #4]
 8000c40:	2b00      	cmp	r3, #0
 8000c42:	d007      	beq.n	8000c54 <toggle_cursor+0x7c>
 8000c44:	687b      	ldr	r3, [r7, #4]
 8000c46:	b2db      	uxtb	r3, r3
 8000c48:	3330      	adds	r3, #48	; 0x30
 8000c4a:	b2db      	uxtb	r3, r3
 8000c4c:	4618      	mov	r0, r3
 8000c4e:	f7ff fe05 	bl	800085c <LCD_SendData>
 8000c52:	e0a4      	b.n	8000d9e <toggle_cursor+0x1c6>
 8000c54:	2020      	movs	r0, #32
 8000c56:	f7ff fe01 	bl	800085c <LCD_SendData>
 8000c5a:	e0a0      	b.n	8000d9e <toggle_cursor+0x1c6>
 8000c5c:	4b54      	ldr	r3, [pc, #336]	; (8000db0 <toggle_cursor+0x1d8>)
 8000c5e:	681b      	ldr	r3, [r3, #0]
 8000c60:	2bc8      	cmp	r3, #200	; 0xc8
 8000c62:	d113      	bne.n	8000c8c <toggle_cursor+0xb4>
 8000c64:	4b53      	ldr	r3, [pc, #332]	; (8000db4 <toggle_cursor+0x1dc>)
 8000c66:	681a      	ldr	r2, [r3, #0]
 8000c68:	4b53      	ldr	r3, [pc, #332]	; (8000db8 <toggle_cursor+0x1e0>)
 8000c6a:	fb83 1302 	smull	r1, r3, r3, r2
 8000c6e:	1099      	asrs	r1, r3, #2
 8000c70:	17d3      	asrs	r3, r2, #31
 8000c72:	1ac9      	subs	r1, r1, r3
 8000c74:	460b      	mov	r3, r1
 8000c76:	009b      	lsls	r3, r3, #2
 8000c78:	440b      	add	r3, r1
 8000c7a:	005b      	lsls	r3, r3, #1
 8000c7c:	1ad1      	subs	r1, r2, r3
 8000c7e:	b2cb      	uxtb	r3, r1
 8000c80:	3330      	adds	r3, #48	; 0x30
 8000c82:	b2db      	uxtb	r3, r3
 8000c84:	4618      	mov	r0, r3
 8000c86:	f7ff fde9 	bl	800085c <LCD_SendData>
 8000c8a:	e088      	b.n	8000d9e <toggle_cursor+0x1c6>
 8000c8c:	4b48      	ldr	r3, [pc, #288]	; (8000db0 <toggle_cursor+0x1d8>)
 8000c8e:	681b      	ldr	r3, [r3, #0]
 8000c90:	2bca      	cmp	r3, #202	; 0xca
 8000c92:	d10e      	bne.n	8000cb2 <toggle_cursor+0xda>
 8000c94:	4b49      	ldr	r3, [pc, #292]	; (8000dbc <toggle_cursor+0x1e4>)
 8000c96:	681b      	ldr	r3, [r3, #0]
 8000c98:	4a47      	ldr	r2, [pc, #284]	; (8000db8 <toggle_cursor+0x1e0>)
 8000c9a:	fb82 1203 	smull	r1, r2, r2, r3
 8000c9e:	1092      	asrs	r2, r2, #2
 8000ca0:	17db      	asrs	r3, r3, #31
 8000ca2:	1ad3      	subs	r3, r2, r3
 8000ca4:	b2db      	uxtb	r3, r3
 8000ca6:	3330      	adds	r3, #48	; 0x30
 8000ca8:	b2db      	uxtb	r3, r3
 8000caa:	4618      	mov	r0, r3
 8000cac:	f7ff fdd6 	bl	800085c <LCD_SendData>
 8000cb0:	e075      	b.n	8000d9e <toggle_cursor+0x1c6>
 8000cb2:	4b3f      	ldr	r3, [pc, #252]	; (8000db0 <toggle_cursor+0x1d8>)
 8000cb4:	681b      	ldr	r3, [r3, #0]
 8000cb6:	2bcb      	cmp	r3, #203	; 0xcb
 8000cb8:	d113      	bne.n	8000ce2 <toggle_cursor+0x10a>
 8000cba:	4b40      	ldr	r3, [pc, #256]	; (8000dbc <toggle_cursor+0x1e4>)
 8000cbc:	681a      	ldr	r2, [r3, #0]
 8000cbe:	4b3e      	ldr	r3, [pc, #248]	; (8000db8 <toggle_cursor+0x1e0>)
 8000cc0:	fb83 1302 	smull	r1, r3, r3, r2
 8000cc4:	1099      	asrs	r1, r3, #2
 8000cc6:	17d3      	asrs	r3, r2, #31
 8000cc8:	1ac9      	subs	r1, r1, r3
 8000cca:	460b      	mov	r3, r1
 8000ccc:	009b      	lsls	r3, r3, #2
 8000cce:	440b      	add	r3, r1
 8000cd0:	005b      	lsls	r3, r3, #1
 8000cd2:	1ad1      	subs	r1, r2, r3
 8000cd4:	b2cb      	uxtb	r3, r1
 8000cd6:	3330      	adds	r3, #48	; 0x30
 8000cd8:	b2db      	uxtb	r3, r3
 8000cda:	4618      	mov	r0, r3
 8000cdc:	f7ff fdbe 	bl	800085c <LCD_SendData>
 8000ce0:	e05d      	b.n	8000d9e <toggle_cursor+0x1c6>
 8000ce2:	4b33      	ldr	r3, [pc, #204]	; (8000db0 <toggle_cursor+0x1d8>)
 8000ce4:	681b      	ldr	r3, [r3, #0]
 8000ce6:	2b87      	cmp	r3, #135	; 0x87
 8000ce8:	d117      	bne.n	8000d1a <toggle_cursor+0x142>
 8000cea:	4b35      	ldr	r3, [pc, #212]	; (8000dc0 <toggle_cursor+0x1e8>)
 8000cec:	681b      	ldr	r3, [r3, #0]
 8000cee:	4a32      	ldr	r2, [pc, #200]	; (8000db8 <toggle_cursor+0x1e0>)
 8000cf0:	fb82 1203 	smull	r1, r2, r2, r3
 8000cf4:	1092      	asrs	r2, r2, #2
 8000cf6:	17db      	asrs	r3, r3, #31
 8000cf8:	1ad3      	subs	r3, r2, r3
 8000cfa:	607b      	str	r3, [r7, #4]
 8000cfc:	687b      	ldr	r3, [r7, #4]
 8000cfe:	2b00      	cmp	r3, #0
 8000d00:	d007      	beq.n	8000d12 <toggle_cursor+0x13a>
 8000d02:	687b      	ldr	r3, [r7, #4]
 8000d04:	b2db      	uxtb	r3, r3
 8000d06:	3330      	adds	r3, #48	; 0x30
 8000d08:	b2db      	uxtb	r3, r3
 8000d0a:	4618      	mov	r0, r3
 8000d0c:	f7ff fda6 	bl	800085c <LCD_SendData>
 8000d10:	e045      	b.n	8000d9e <toggle_cursor+0x1c6>
 8000d12:	2020      	movs	r0, #32
 8000d14:	f7ff fda2 	bl	800085c <LCD_SendData>
 8000d18:	e041      	b.n	8000d9e <toggle_cursor+0x1c6>
 8000d1a:	4b25      	ldr	r3, [pc, #148]	; (8000db0 <toggle_cursor+0x1d8>)
 8000d1c:	681b      	ldr	r3, [r3, #0]
 8000d1e:	2b88      	cmp	r3, #136	; 0x88
 8000d20:	d113      	bne.n	8000d4a <toggle_cursor+0x172>
 8000d22:	4b27      	ldr	r3, [pc, #156]	; (8000dc0 <toggle_cursor+0x1e8>)
 8000d24:	681a      	ldr	r2, [r3, #0]
 8000d26:	4b24      	ldr	r3, [pc, #144]	; (8000db8 <toggle_cursor+0x1e0>)
 8000d28:	fb83 1302 	smull	r1, r3, r3, r2
 8000d2c:	1099      	asrs	r1, r3, #2
 8000d2e:	17d3      	asrs	r3, r2, #31
 8000d30:	1ac9      	subs	r1, r1, r3
 8000d32:	460b      	mov	r3, r1
 8000d34:	009b      	lsls	r3, r3, #2
 8000d36:	440b      	add	r3, r1
 8000d38:	005b      	lsls	r3, r3, #1
 8000d3a:	1ad1      	subs	r1, r2, r3
 8000d3c:	b2cb      	uxtb	r3, r1
 8000d3e:	3330      	adds	r3, #48	; 0x30
 8000d40:	b2db      	uxtb	r3, r3
 8000d42:	4618      	mov	r0, r3
 8000d44:	f7ff fd8a 	bl	800085c <LCD_SendData>
 8000d48:	e029      	b.n	8000d9e <toggle_cursor+0x1c6>
 8000d4a:	4b19      	ldr	r3, [pc, #100]	; (8000db0 <toggle_cursor+0x1d8>)
 8000d4c:	681b      	ldr	r3, [r3, #0]
 8000d4e:	2b8a      	cmp	r3, #138	; 0x8a
 8000d50:	d10e      	bne.n	8000d70 <toggle_cursor+0x198>
 8000d52:	4b1c      	ldr	r3, [pc, #112]	; (8000dc4 <toggle_cursor+0x1ec>)
 8000d54:	681b      	ldr	r3, [r3, #0]
 8000d56:	4a18      	ldr	r2, [pc, #96]	; (8000db8 <toggle_cursor+0x1e0>)
 8000d58:	fb82 1203 	smull	r1, r2, r2, r3
 8000d5c:	1092      	asrs	r2, r2, #2
 8000d5e:	17db      	asrs	r3, r3, #31
 8000d60:	1ad3      	subs	r3, r2, r3
 8000d62:	b2db      	uxtb	r3, r3
 8000d64:	3330      	adds	r3, #48	; 0x30
 8000d66:	b2db      	uxtb	r3, r3
 8000d68:	4618      	mov	r0, r3
 8000d6a:	f7ff fd77 	bl	800085c <LCD_SendData>
 8000d6e:	e016      	b.n	8000d9e <toggle_cursor+0x1c6>
 8000d70:	4b0f      	ldr	r3, [pc, #60]	; (8000db0 <toggle_cursor+0x1d8>)
 8000d72:	681b      	ldr	r3, [r3, #0]
 8000d74:	2b8b      	cmp	r3, #139	; 0x8b
 8000d76:	d112      	bne.n	8000d9e <toggle_cursor+0x1c6>
 8000d78:	4b12      	ldr	r3, [pc, #72]	; (8000dc4 <toggle_cursor+0x1ec>)
 8000d7a:	681a      	ldr	r2, [r3, #0]
 8000d7c:	4b0e      	ldr	r3, [pc, #56]	; (8000db8 <toggle_cursor+0x1e0>)
 8000d7e:	fb83 1302 	smull	r1, r3, r3, r2
 8000d82:	1099      	asrs	r1, r3, #2
 8000d84:	17d3      	asrs	r3, r2, #31
 8000d86:	1ac9      	subs	r1, r1, r3
 8000d88:	460b      	mov	r3, r1
 8000d8a:	009b      	lsls	r3, r3, #2
 8000d8c:	440b      	add	r3, r1
 8000d8e:	005b      	lsls	r3, r3, #1
 8000d90:	1ad1      	subs	r1, r2, r3
 8000d92:	b2cb      	uxtb	r3, r1
 8000d94:	3330      	adds	r3, #48	; 0x30
 8000d96:	b2db      	uxtb	r3, r3
 8000d98:	4618      	mov	r0, r3
 8000d9a:	f7ff fd5f 	bl	800085c <LCD_SendData>
 8000d9e:	4b03      	ldr	r3, [pc, #12]	; (8000dac <toggle_cursor+0x1d4>)
 8000da0:	2201      	movs	r2, #1
 8000da2:	701a      	strb	r2, [r3, #0]
 8000da4:	3708      	adds	r7, #8
 8000da6:	46bd      	mov	sp, r7
 8000da8:	bd80      	pop	{r7, pc}
 8000daa:	bf00      	nop
 8000dac:	20000014 	.word	0x20000014
 8000db0:	20000488 	.word	0x20000488
 8000db4:	2000000c 	.word	0x2000000c
 8000db8:	66666667 	.word	0x66666667
 8000dbc:	20000470 	.word	0x20000470
 8000dc0:	20000004 	.word	0x20000004
 8000dc4:	20000008 	.word	0x20000008

08000dc8 <Perif_init>:
 8000dc8:	b580      	push	{r7, lr}
 8000dca:	af00      	add	r7, sp, #0
 8000dcc:	2008      	movs	r0, #8
 8000dce:	f7ff fabb 	bl	8000348 <LL_AHB1_GRP1_EnableClock>
 8000dd2:	4830      	ldr	r0, [pc, #192]	; (8000e94 <Perif_init+0xcc>)
 8000dd4:	2101      	movs	r1, #1
 8000dd6:	2201      	movs	r2, #1
 8000dd8:	f7ff fbe8 	bl	80005ac <LL_GPIO_SetPinMode>
 8000ddc:	482d      	ldr	r0, [pc, #180]	; (8000e94 <Perif_init+0xcc>)
 8000dde:	2102      	movs	r1, #2
 8000de0:	2201      	movs	r2, #1
 8000de2:	f7ff fbe3 	bl	80005ac <LL_GPIO_SetPinMode>
 8000de6:	482b      	ldr	r0, [pc, #172]	; (8000e94 <Perif_init+0xcc>)
 8000de8:	2104      	movs	r1, #4
 8000dea:	2201      	movs	r2, #1
 8000dec:	f7ff fbde 	bl	80005ac <LL_GPIO_SetPinMode>
 8000df0:	4828      	ldr	r0, [pc, #160]	; (8000e94 <Perif_init+0xcc>)
 8000df2:	2108      	movs	r1, #8
 8000df4:	2201      	movs	r2, #1
 8000df6:	f7ff fbd9 	bl	80005ac <LL_GPIO_SetPinMode>
 8000dfa:	4826      	ldr	r0, [pc, #152]	; (8000e94 <Perif_init+0xcc>)
 8000dfc:	2110      	movs	r1, #16
 8000dfe:	2201      	movs	r2, #1
 8000e00:	f7ff fbd4 	bl	80005ac <LL_GPIO_SetPinMode>
 8000e04:	4823      	ldr	r0, [pc, #140]	; (8000e94 <Perif_init+0xcc>)
 8000e06:	2120      	movs	r1, #32
 8000e08:	2201      	movs	r2, #1
 8000e0a:	f7ff fbcf 	bl	80005ac <LL_GPIO_SetPinMode>
 8000e0e:	4821      	ldr	r0, [pc, #132]	; (8000e94 <Perif_init+0xcc>)
 8000e10:	2140      	movs	r1, #64	; 0x40
 8000e12:	2201      	movs	r2, #1
 8000e14:	f7ff fbca 	bl	80005ac <LL_GPIO_SetPinMode>
 8000e18:	481e      	ldr	r0, [pc, #120]	; (8000e94 <Perif_init+0xcc>)
 8000e1a:	f44f 5180 	mov.w	r1, #4096	; 0x1000
 8000e1e:	2201      	movs	r2, #1
 8000e20:	f7ff fbc4 	bl	80005ac <LL_GPIO_SetPinMode>
 8000e24:	481b      	ldr	r0, [pc, #108]	; (8000e94 <Perif_init+0xcc>)
 8000e26:	2180      	movs	r1, #128	; 0x80
 8000e28:	2200      	movs	r2, #0
 8000e2a:	f7ff fbbf 	bl	80005ac <LL_GPIO_SetPinMode>
 8000e2e:	4819      	ldr	r0, [pc, #100]	; (8000e94 <Perif_init+0xcc>)
 8000e30:	2180      	movs	r1, #128	; 0x80
 8000e32:	2201      	movs	r2, #1
 8000e34:	f7ff fbe6 	bl	8000604 <LL_GPIO_SetPinPull>
 8000e38:	f44f 4080 	mov.w	r0, #16384	; 0x4000
 8000e3c:	f7ff fa9c 	bl	8000378 <LL_APB2_GRP1_EnableClock>
 8000e40:	2003      	movs	r0, #3
 8000e42:	4915      	ldr	r1, [pc, #84]	; (8000e98 <Perif_init+0xd0>)
 8000e44:	f7ff fb74 	bl	8000530 <LL_SYSCFG_SetEXTISource>
 8000e48:	4813      	ldr	r0, [pc, #76]	; (8000e98 <Perif_init+0xd0>)
 8000e4a:	f7ff fc3f 	bl	80006cc <LL_EXTI_EnableIT_0_31>
 8000e4e:	4812      	ldr	r0, [pc, #72]	; (8000e98 <Perif_init+0xd0>)
 8000e50:	f7ff fc4e 	bl	80006f0 <LL_EXTI_EnableFallingTrig_0_31>
 8000e54:	2006      	movs	r0, #6
 8000e56:	f7ff fa13 	bl	8000280 <NVIC_EnableIRQ>
 8000e5a:	2006      	movs	r0, #6
 8000e5c:	2100      	movs	r1, #0
 8000e5e:	f7ff fa27 	bl	80002b0 <NVIC_SetPriority>
 8000e62:	480c      	ldr	r0, [pc, #48]	; (8000e94 <Perif_init+0xcc>)
 8000e64:	f44f 7180 	mov.w	r1, #256	; 0x100
 8000e68:	2200      	movs	r2, #0
 8000e6a:	f7ff fb9f 	bl	80005ac <LL_GPIO_SetPinMode>
 8000e6e:	4809      	ldr	r0, [pc, #36]	; (8000e94 <Perif_init+0xcc>)
 8000e70:	f44f 7180 	mov.w	r1, #256	; 0x100
 8000e74:	2201      	movs	r2, #1
 8000e76:	f7ff fbc5 	bl	8000604 <LL_GPIO_SetPinPull>
 8000e7a:	4806      	ldr	r0, [pc, #24]	; (8000e94 <Perif_init+0xcc>)
 8000e7c:	f44f 7100 	mov.w	r1, #512	; 0x200
 8000e80:	2200      	movs	r2, #0
 8000e82:	f7ff fb93 	bl	80005ac <LL_GPIO_SetPinMode>
 8000e86:	4803      	ldr	r0, [pc, #12]	; (8000e94 <Perif_init+0xcc>)
 8000e88:	f44f 7100 	mov.w	r1, #512	; 0x200
 8000e8c:	2202      	movs	r2, #2
 8000e8e:	f7ff fbb9 	bl	8000604 <LL_GPIO_SetPinPull>
 8000e92:	bd80      	pop	{r7, pc}
 8000e94:	40020c00 	.word	0x40020c00
 8000e98:	f0000001 	.word	0xf0000001

08000e9c <toggle_cursor_WHILE>:
 8000e9c:	b580      	push	{r7, lr}
 8000e9e:	af00      	add	r7, sp, #0
 8000ea0:	4b07      	ldr	r3, [pc, #28]	; (8000ec0 <toggle_cursor_WHILE+0x24>)
 8000ea2:	681a      	ldr	r2, [r3, #0]
 8000ea4:	4b07      	ldr	r3, [pc, #28]	; (8000ec4 <toggle_cursor_WHILE+0x28>)
 8000ea6:	681b      	ldr	r3, [r3, #0]
 8000ea8:	1ad2      	subs	r2, r2, r3
 8000eaa:	4b07      	ldr	r3, [pc, #28]	; (8000ec8 <toggle_cursor_WHILE+0x2c>)
 8000eac:	681b      	ldr	r3, [r3, #0]
 8000eae:	429a      	cmp	r2, r3
 8000eb0:	dd05      	ble.n	8000ebe <toggle_cursor_WHILE+0x22>
 8000eb2:	f7ff fe91 	bl	8000bd8 <toggle_cursor>
 8000eb6:	4b02      	ldr	r3, [pc, #8]	; (8000ec0 <toggle_cursor_WHILE+0x24>)
 8000eb8:	681b      	ldr	r3, [r3, #0]
 8000eba:	4a02      	ldr	r2, [pc, #8]	; (8000ec4 <toggle_cursor_WHILE+0x28>)
 8000ebc:	6013      	str	r3, [r2, #0]
 8000ebe:	bd80      	pop	{r7, pc}
 8000ec0:	20000464 	.word	0x20000464
 8000ec4:	20000468 	.word	0x20000468
 8000ec8:	20000000 	.word	0x20000000

08000ecc <time_update_WHILE>:
 8000ecc:	b580      	push	{r7, lr}
 8000ece:	af00      	add	r7, sp, #0
 8000ed0:	4b16      	ldr	r3, [pc, #88]	; (8000f2c <time_update_WHILE+0x60>)
 8000ed2:	681b      	ldr	r3, [r3, #0]
 8000ed4:	2b02      	cmp	r3, #2
 8000ed6:	d100      	bne.n	8000eda <time_update_WHILE+0xe>
 8000ed8:	e026      	b.n	8000f28 <time_update_WHILE+0x5c>
 8000eda:	4b15      	ldr	r3, [pc, #84]	; (8000f30 <time_update_WHILE+0x64>)
 8000edc:	681a      	ldr	r2, [r3, #0]
 8000ede:	4b15      	ldr	r3, [pc, #84]	; (8000f34 <time_update_WHILE+0x68>)
 8000ee0:	681b      	ldr	r3, [r3, #0]
 8000ee2:	1ad3      	subs	r3, r2, r3
 8000ee4:	f64e 2260 	movw	r2, #60000	; 0xea60
 8000ee8:	4293      	cmp	r3, r2
 8000eea:	dd1d      	ble.n	8000f28 <time_update_WHILE+0x5c>
 8000eec:	4b12      	ldr	r3, [pc, #72]	; (8000f38 <time_update_WHILE+0x6c>)
 8000eee:	681b      	ldr	r3, [r3, #0]
 8000ef0:	3301      	adds	r3, #1
 8000ef2:	4a11      	ldr	r2, [pc, #68]	; (8000f38 <time_update_WHILE+0x6c>)
 8000ef4:	6013      	str	r3, [r2, #0]
 8000ef6:	4b10      	ldr	r3, [pc, #64]	; (8000f38 <time_update_WHILE+0x6c>)
 8000ef8:	681b      	ldr	r3, [r3, #0]
 8000efa:	2b3c      	cmp	r3, #60	; 0x3c
 8000efc:	d107      	bne.n	8000f0e <time_update_WHILE+0x42>
 8000efe:	4b0f      	ldr	r3, [pc, #60]	; (8000f3c <time_update_WHILE+0x70>)
 8000f00:	681b      	ldr	r3, [r3, #0]
 8000f02:	3301      	adds	r3, #1
 8000f04:	4a0d      	ldr	r2, [pc, #52]	; (8000f3c <time_update_WHILE+0x70>)
 8000f06:	6013      	str	r3, [r2, #0]
 8000f08:	4b0b      	ldr	r3, [pc, #44]	; (8000f38 <time_update_WHILE+0x6c>)
 8000f0a:	2200      	movs	r2, #0
 8000f0c:	601a      	str	r2, [r3, #0]
 8000f0e:	4b0b      	ldr	r3, [pc, #44]	; (8000f3c <time_update_WHILE+0x70>)
 8000f10:	681b      	ldr	r3, [r3, #0]
 8000f12:	2b18      	cmp	r3, #24
 8000f14:	d102      	bne.n	8000f1c <time_update_WHILE+0x50>
 8000f16:	4b09      	ldr	r3, [pc, #36]	; (8000f3c <time_update_WHILE+0x70>)
 8000f18:	2200      	movs	r2, #0
 8000f1a:	601a      	str	r2, [r3, #0]
 8000f1c:	4b04      	ldr	r3, [pc, #16]	; (8000f30 <time_update_WHILE+0x64>)
 8000f1e:	681b      	ldr	r3, [r3, #0]
 8000f20:	4a04      	ldr	r2, [pc, #16]	; (8000f34 <time_update_WHILE+0x68>)
 8000f22:	6013      	str	r3, [r2, #0]
 8000f24:	f7ff fd9c 	bl	8000a60 <LCD_print_time>
 8000f28:	bd80      	pop	{r7, pc}
 8000f2a:	bf00      	nop
 8000f2c:	20000478 	.word	0x20000478
 8000f30:	20000464 	.word	0x20000464
 8000f34:	2000046c 	.word	0x2000046c
 8000f38:	20000008 	.word	0x20000008
 8000f3c:	20000004 	.word	0x20000004

08000f40 <scan_input>:
 8000f40:	b580      	push	{r7, lr}
 8000f42:	b082      	sub	sp, #8
 8000f44:	af00      	add	r7, sp, #0
 8000f46:	480c      	ldr	r0, [pc, #48]	; (8000f78 <scan_input+0x38>)
 8000f48:	f7ff fb88 	bl	800065c <LL_GPIO_ReadInputPort>
 8000f4c:	6078      	str	r0, [r7, #4]
 8000f4e:	687b      	ldr	r3, [r7, #4]
 8000f50:	0a1b      	lsrs	r3, r3, #8
 8000f52:	f003 0301 	and.w	r3, r3, #1
 8000f56:	2b00      	cmp	r3, #0
 8000f58:	d102      	bne.n	8000f60 <scan_input+0x20>
 8000f5a:	4b08      	ldr	r3, [pc, #32]	; (8000f7c <scan_input+0x3c>)
 8000f5c:	2201      	movs	r2, #1
 8000f5e:	601a      	str	r2, [r3, #0]
 8000f60:	687b      	ldr	r3, [r7, #4]
 8000f62:	0a5b      	lsrs	r3, r3, #9
 8000f64:	f003 0301 	and.w	r3, r3, #1
 8000f68:	2b00      	cmp	r3, #0
 8000f6a:	d002      	beq.n	8000f72 <scan_input+0x32>
 8000f6c:	4b04      	ldr	r3, [pc, #16]	; (8000f80 <scan_input+0x40>)
 8000f6e:	2201      	movs	r2, #1
 8000f70:	601a      	str	r2, [r3, #0]
 8000f72:	3708      	adds	r7, #8
 8000f74:	46bd      	mov	sp, r7
 8000f76:	bd80      	pop	{r7, pc}
 8000f78:	40020c00 	.word	0x40020c00
 8000f7c:	20000490 	.word	0x20000490
 8000f80:	20000484 	.word	0x20000484

08000f84 <main>:
 8000f84:	b580      	push	{r7, lr}
 8000f86:	b086      	sub	sp, #24
 8000f88:	af00      	add	r7, sp, #0
 8000f8a:	f000 fb01 	bl	8001590 <SystemClock_Config>
 8000f8e:	f7ff ff1b 	bl	8000dc8 <Perif_init>
 8000f92:	48a1      	ldr	r0, [pc, #644]	; (8001218 <main+0x294>)
 8000f94:	f44f 4180 	mov.w	r1, #16384	; 0x4000
 8000f98:	2201      	movs	r2, #1
 8000f9a:	f7ff fb07 	bl	80005ac <LL_GPIO_SetPinMode>
 8000f9e:	f7ff fcaf 	bl	8000900 <LCD_init>
 8000fa2:	f7ff ff7b 	bl	8000e9c <toggle_cursor_WHILE>
 8000fa6:	f7ff ff91 	bl	8000ecc <time_update_WHILE>
 8000faa:	f7ff ffc9 	bl	8000f40 <scan_input>
 8000fae:	4b9b      	ldr	r3, [pc, #620]	; (800121c <main+0x298>)
 8000fb0:	681b      	ldr	r3, [r3, #0]
 8000fb2:	2b03      	cmp	r3, #3
 8000fb4:	d8f5      	bhi.n	8000fa2 <main+0x1e>
 8000fb6:	a201      	add	r2, pc, #4	; (adr r2, 8000fbc <main+0x38>)
 8000fb8:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
 8000fbc:	08000fcd 	.word	0x08000fcd
 8000fc0:	08001091 	.word	0x08001091
 8000fc4:	080010d9 	.word	0x080010d9
 8000fc8:	08001341 	.word	0x08001341
 8000fcc:	4b94      	ldr	r3, [pc, #592]	; (8001220 <main+0x29c>)
 8000fce:	681a      	ldr	r2, [r3, #0]
 8000fd0:	4b94      	ldr	r3, [pc, #592]	; (8001224 <main+0x2a0>)
 8000fd2:	681b      	ldr	r3, [r3, #0]
 8000fd4:	429a      	cmp	r2, r3
 8000fd6:	d114      	bne.n	8001002 <main+0x7e>
 8000fd8:	4b93      	ldr	r3, [pc, #588]	; (8001228 <main+0x2a4>)
 8000fda:	681a      	ldr	r2, [r3, #0]
 8000fdc:	4b93      	ldr	r3, [pc, #588]	; (800122c <main+0x2a8>)
 8000fde:	681b      	ldr	r3, [r3, #0]
 8000fe0:	429a      	cmp	r2, r3
 8000fe2:	d10e      	bne.n	8001002 <main+0x7e>
 8000fe4:	4b8e      	ldr	r3, [pc, #568]	; (8001220 <main+0x29c>)
 8000fe6:	681a      	ldr	r2, [r3, #0]
 8000fe8:	4b91      	ldr	r3, [pc, #580]	; (8001230 <main+0x2ac>)
 8000fea:	681b      	ldr	r3, [r3, #0]
 8000fec:	429a      	cmp	r2, r3
 8000fee:	d105      	bne.n	8000ffc <main+0x78>
 8000ff0:	4b8d      	ldr	r3, [pc, #564]	; (8001228 <main+0x2a4>)
 8000ff2:	681a      	ldr	r2, [r3, #0]
 8000ff4:	4b8f      	ldr	r3, [pc, #572]	; (8001234 <main+0x2b0>)
 8000ff6:	681b      	ldr	r3, [r3, #0]
 8000ff8:	429a      	cmp	r2, r3
 8000ffa:	d002      	beq.n	8001002 <main+0x7e>
 8000ffc:	4b87      	ldr	r3, [pc, #540]	; (800121c <main+0x298>)
 8000ffe:	2201      	movs	r2, #1
 8001000:	601a      	str	r2, [r3, #0]
 8001002:	4b8d      	ldr	r3, [pc, #564]	; (8001238 <main+0x2b4>)
 8001004:	681b      	ldr	r3, [r3, #0]
 8001006:	2b00      	cmp	r3, #0
 8001008:	d023      	beq.n	8001052 <main+0xce>
 800100a:	2300      	movs	r3, #0
 800100c:	617b      	str	r3, [r7, #20]
 800100e:	e00e      	b.n	800102e <main+0xaa>
 8001010:	4b8a      	ldr	r3, [pc, #552]	; (800123c <main+0x2b8>)
 8001012:	2201      	movs	r2, #1
 8001014:	601a      	str	r2, [r3, #0]
 8001016:	2064      	movs	r0, #100	; 0x64
 8001018:	f7ff fb8a 	bl	8000730 <myDelay>
 800101c:	4b87      	ldr	r3, [pc, #540]	; (800123c <main+0x2b8>)
 800101e:	2200      	movs	r2, #0
 8001020:	601a      	str	r2, [r3, #0]
 8001022:	2064      	movs	r0, #100	; 0x64
 8001024:	f7ff fb84 	bl	8000730 <myDelay>
 8001028:	697b      	ldr	r3, [r7, #20]
 800102a:	3301      	adds	r3, #1
 800102c:	617b      	str	r3, [r7, #20]
 800102e:	697b      	ldr	r3, [r7, #20]
 8001030:	2b02      	cmp	r3, #2
 8001032:	dded      	ble.n	8001010 <main+0x8c>
 8001034:	4b79      	ldr	r3, [pc, #484]	; (800121c <main+0x298>)
 8001036:	2202      	movs	r2, #2
 8001038:	601a      	str	r2, [r3, #0]
 800103a:	4b81      	ldr	r3, [pc, #516]	; (8001240 <main+0x2bc>)
 800103c:	2287      	movs	r2, #135	; 0x87
 800103e:	601a      	str	r2, [r3, #0]
 8001040:	4b80      	ldr	r3, [pc, #512]	; (8001244 <main+0x2c0>)
 8001042:	f44f 72fa 	mov.w	r2, #500	; 0x1f4
 8001046:	601a      	str	r2, [r3, #0]
 8001048:	4b7b      	ldr	r3, [pc, #492]	; (8001238 <main+0x2b4>)
 800104a:	2200      	movs	r2, #0
 800104c:	601a      	str	r2, [r3, #0]
 800104e:	f7ff fd07 	bl	8000a60 <LCD_print_time>
 8001052:	4b7d      	ldr	r3, [pc, #500]	; (8001248 <main+0x2c4>)
 8001054:	681b      	ldr	r3, [r3, #0]
 8001056:	2b00      	cmp	r3, #0
 8001058:	d019      	beq.n	800108e <main+0x10a>
 800105a:	4b70      	ldr	r3, [pc, #448]	; (800121c <main+0x298>)
 800105c:	2203      	movs	r2, #3
 800105e:	601a      	str	r2, [r3, #0]
 8001060:	4b78      	ldr	r3, [pc, #480]	; (8001244 <main+0x2c0>)
 8001062:	f44f 72fa 	mov.w	r2, #500	; 0x1f4
 8001066:	601a      	str	r2, [r3, #0]
 8001068:	4b74      	ldr	r3, [pc, #464]	; (800123c <main+0x2b8>)
 800106a:	2201      	movs	r2, #1
 800106c:	601a      	str	r2, [r3, #0]
 800106e:	f44f 70fa 	mov.w	r0, #500	; 0x1f4
 8001072:	f7ff fb5d 	bl	8000730 <myDelay>
 8001076:	4b71      	ldr	r3, [pc, #452]	; (800123c <main+0x2b8>)
 8001078:	2200      	movs	r2, #0
 800107a:	601a      	str	r2, [r3, #0]
 800107c:	4b70      	ldr	r3, [pc, #448]	; (8001240 <main+0x2bc>)
 800107e:	22c7      	movs	r2, #199	; 0xc7
 8001080:	601a      	str	r2, [r3, #0]
 8001082:	4b71      	ldr	r3, [pc, #452]	; (8001248 <main+0x2c4>)
 8001084:	2200      	movs	r2, #0
 8001086:	601a      	str	r2, [r3, #0]
 8001088:	f7ff fcea 	bl	8000a60 <LCD_print_time>
 800108c:	e275      	b.n	800157a <main+0x5f6>
 800108e:	e274      	b.n	800157a <main+0x5f6>
 8001090:	4b6a      	ldr	r3, [pc, #424]	; (800123c <main+0x2b8>)
 8001092:	2201      	movs	r2, #1
 8001094:	601a      	str	r2, [r3, #0]
 8001096:	2064      	movs	r0, #100	; 0x64
 8001098:	f7ff fb4a 	bl	8000730 <myDelay>
 800109c:	4b67      	ldr	r3, [pc, #412]	; (800123c <main+0x2b8>)
 800109e:	2200      	movs	r2, #0
 80010a0:	601a      	str	r2, [r3, #0]
 80010a2:	2064      	movs	r0, #100	; 0x64
 80010a4:	f7ff fb44 	bl	8000730 <myDelay>
 80010a8:	4b67      	ldr	r3, [pc, #412]	; (8001248 <main+0x2c4>)
 80010aa:	681b      	ldr	r3, [r3, #0]
 80010ac:	2b00      	cmp	r3, #0
 80010ae:	d012      	beq.n	80010d6 <main+0x152>
 80010b0:	4b65      	ldr	r3, [pc, #404]	; (8001248 <main+0x2c4>)
 80010b2:	2200      	movs	r2, #0
 80010b4:	601a      	str	r2, [r3, #0]
 80010b6:	4b59      	ldr	r3, [pc, #356]	; (800121c <main+0x298>)
 80010b8:	2200      	movs	r2, #0
 80010ba:	601a      	str	r2, [r3, #0]
 80010bc:	4b59      	ldr	r3, [pc, #356]	; (8001224 <main+0x2a0>)
 80010be:	681b      	ldr	r3, [r3, #0]
 80010c0:	4a5b      	ldr	r2, [pc, #364]	; (8001230 <main+0x2ac>)
 80010c2:	6013      	str	r3, [r2, #0]
 80010c4:	4b59      	ldr	r3, [pc, #356]	; (800122c <main+0x2a8>)
 80010c6:	681b      	ldr	r3, [r3, #0]
 80010c8:	4a5a      	ldr	r2, [pc, #360]	; (8001234 <main+0x2b0>)
 80010ca:	6013      	str	r3, [r2, #0]
 80010cc:	f44f 7096 	mov.w	r0, #300	; 0x12c
 80010d0:	f7ff fb2e 	bl	8000730 <myDelay>
 80010d4:	e251      	b.n	800157a <main+0x5f6>
 80010d6:	e250      	b.n	800157a <main+0x5f6>
 80010d8:	4b5b      	ldr	r3, [pc, #364]	; (8001248 <main+0x2c4>)
 80010da:	681b      	ldr	r3, [r3, #0]
 80010dc:	2b00      	cmp	r3, #0
 80010de:	d056      	beq.n	800118e <main+0x20a>
 80010e0:	4b57      	ldr	r3, [pc, #348]	; (8001240 <main+0x2bc>)
 80010e2:	681b      	ldr	r3, [r3, #0]
 80010e4:	2b87      	cmp	r3, #135	; 0x87
 80010e6:	d105      	bne.n	80010f4 <main+0x170>
 80010e8:	f7ff fcba 	bl	8000a60 <LCD_print_time>
 80010ec:	4b54      	ldr	r3, [pc, #336]	; (8001240 <main+0x2bc>)
 80010ee:	2288      	movs	r2, #136	; 0x88
 80010f0:	601a      	str	r2, [r3, #0]
 80010f2:	e03f      	b.n	8001174 <main+0x1f0>
 80010f4:	4b52      	ldr	r3, [pc, #328]	; (8001240 <main+0x2bc>)
 80010f6:	681b      	ldr	r3, [r3, #0]
 80010f8:	2b88      	cmp	r3, #136	; 0x88
 80010fa:	d105      	bne.n	8001108 <main+0x184>
 80010fc:	f7ff fcb0 	bl	8000a60 <LCD_print_time>
 8001100:	4b4f      	ldr	r3, [pc, #316]	; (8001240 <main+0x2bc>)
 8001102:	228a      	movs	r2, #138	; 0x8a
 8001104:	601a      	str	r2, [r3, #0]
 8001106:	e035      	b.n	8001174 <main+0x1f0>
 8001108:	4b4d      	ldr	r3, [pc, #308]	; (8001240 <main+0x2bc>)
 800110a:	681b      	ldr	r3, [r3, #0]
 800110c:	2b8a      	cmp	r3, #138	; 0x8a
 800110e:	d105      	bne.n	800111c <main+0x198>
 8001110:	f7ff fca6 	bl	8000a60 <LCD_print_time>
 8001114:	4b4a      	ldr	r3, [pc, #296]	; (8001240 <main+0x2bc>)
 8001116:	228b      	movs	r2, #139	; 0x8b
 8001118:	601a      	str	r2, [r3, #0]
 800111a:	e02b      	b.n	8001174 <main+0x1f0>
 800111c:	4b48      	ldr	r3, [pc, #288]	; (8001240 <main+0x2bc>)
 800111e:	681b      	ldr	r3, [r3, #0]
 8001120:	2b8b      	cmp	r3, #139	; 0x8b
 8001122:	d127      	bne.n	8001174 <main+0x1f0>
 8001124:	f7ff fc9c 	bl	8000a60 <LCD_print_time>
 8001128:	4b46      	ldr	r3, [pc, #280]	; (8001244 <main+0x2c0>)
 800112a:	f44f 727a 	mov.w	r2, #1000	; 0x3e8
 800112e:	601a      	str	r2, [r3, #0]
 8001130:	4b43      	ldr	r3, [pc, #268]	; (8001240 <main+0x2bc>)
 8001132:	2289      	movs	r2, #137	; 0x89
 8001134:	601a      	str	r2, [r3, #0]
 8001136:	4b39      	ldr	r3, [pc, #228]	; (800121c <main+0x298>)
 8001138:	2200      	movs	r2, #0
 800113a:	601a      	str	r2, [r3, #0]
 800113c:	2300      	movs	r3, #0
 800113e:	613b      	str	r3, [r7, #16]
 8001140:	e00e      	b.n	8001160 <main+0x1dc>
 8001142:	4b3e      	ldr	r3, [pc, #248]	; (800123c <main+0x2b8>)
 8001144:	2201      	movs	r2, #1
 8001146:	601a      	str	r2, [r3, #0]
 8001148:	2064      	movs	r0, #100	; 0x64
 800114a:	f7ff faf1 	bl	8000730 <myDelay>
 800114e:	4b3b      	ldr	r3, [pc, #236]	; (800123c <main+0x2b8>)
 8001150:	2200      	movs	r2, #0
 8001152:	601a      	str	r2, [r3, #0]
 8001154:	2064      	movs	r0, #100	; 0x64
 8001156:	f7ff faeb 	bl	8000730 <myDelay>
 800115a:	693b      	ldr	r3, [r7, #16]
 800115c:	3301      	adds	r3, #1
 800115e:	613b      	str	r3, [r7, #16]
 8001160:	693b      	ldr	r3, [r7, #16]
 8001162:	2b02      	cmp	r3, #2
 8001164:	dded      	ble.n	8001142 <main+0x1be>
 8001166:	4b38      	ldr	r3, [pc, #224]	; (8001248 <main+0x2c4>)
 8001168:	2200      	movs	r2, #0
 800116a:	601a      	str	r2, [r3, #0]
 800116c:	4b2b      	ldr	r3, [pc, #172]	; (800121c <main+0x298>)
 800116e:	2200      	movs	r2, #0
 8001170:	601a      	str	r2, [r3, #0]
 8001172:	e202      	b.n	800157a <main+0x5f6>
 8001174:	4b34      	ldr	r3, [pc, #208]	; (8001248 <main+0x2c4>)
 8001176:	2200      	movs	r2, #0
 8001178:	601a      	str	r2, [r3, #0]
 800117a:	4b30      	ldr	r3, [pc, #192]	; (800123c <main+0x2b8>)
 800117c:	2201      	movs	r2, #1
 800117e:	601a      	str	r2, [r3, #0]
 8001180:	f44f 7096 	mov.w	r0, #300	; 0x12c
 8001184:	f7ff fad4 	bl	8000730 <myDelay>
 8001188:	4b2c      	ldr	r3, [pc, #176]	; (800123c <main+0x2b8>)
 800118a:	2200      	movs	r2, #0
 800118c:	601a      	str	r2, [r3, #0]
 800118e:	4b2f      	ldr	r3, [pc, #188]	; (800124c <main+0x2c8>)
 8001190:	681b      	ldr	r3, [r3, #0]
 8001192:	2b00      	cmp	r3, #0
 8001194:	f000 80d3 	beq.w	800133e <main+0x3ba>
 8001198:	4b29      	ldr	r3, [pc, #164]	; (8001240 <main+0x2bc>)
 800119a:	681b      	ldr	r3, [r3, #0]
 800119c:	2b87      	cmp	r3, #135	; 0x87
 800119e:	d11c      	bne.n	80011da <main+0x256>
 80011a0:	4b1f      	ldr	r3, [pc, #124]	; (8001220 <main+0x29c>)
 80011a2:	681b      	ldr	r3, [r3, #0]
 80011a4:	2b0d      	cmp	r3, #13
 80011a6:	dc05      	bgt.n	80011b4 <main+0x230>
 80011a8:	4b1d      	ldr	r3, [pc, #116]	; (8001220 <main+0x29c>)
 80011aa:	681b      	ldr	r3, [r3, #0]
 80011ac:	330a      	adds	r3, #10
 80011ae:	4a1c      	ldr	r2, [pc, #112]	; (8001220 <main+0x29c>)
 80011b0:	6013      	str	r3, [r2, #0]
 80011b2:	e0b2      	b.n	800131a <main+0x396>
 80011b4:	4b1a      	ldr	r3, [pc, #104]	; (8001220 <main+0x29c>)
 80011b6:	681b      	ldr	r3, [r3, #0]
 80011b8:	2b13      	cmp	r3, #19
 80011ba:	dc03      	bgt.n	80011c4 <main+0x240>
 80011bc:	4b18      	ldr	r3, [pc, #96]	; (8001220 <main+0x29c>)
 80011be:	2214      	movs	r2, #20
 80011c0:	601a      	str	r2, [r3, #0]
 80011c2:	e0aa      	b.n	800131a <main+0x396>
 80011c4:	4b16      	ldr	r3, [pc, #88]	; (8001220 <main+0x29c>)
 80011c6:	681b      	ldr	r3, [r3, #0]
 80011c8:	2b17      	cmp	r3, #23
 80011ca:	f300 80a6 	bgt.w	800131a <main+0x396>
 80011ce:	4b14      	ldr	r3, [pc, #80]	; (8001220 <main+0x29c>)
 80011d0:	681b      	ldr	r3, [r3, #0]
 80011d2:	3b14      	subs	r3, #20
 80011d4:	4a12      	ldr	r2, [pc, #72]	; (8001220 <main+0x29c>)
 80011d6:	6013      	str	r3, [r2, #0]
 80011d8:	e09f      	b.n	800131a <main+0x396>
 80011da:	4b19      	ldr	r3, [pc, #100]	; (8001240 <main+0x2bc>)
 80011dc:	681b      	ldr	r3, [r3, #0]
 80011de:	2b88      	cmp	r3, #136	; 0x88
 80011e0:	d159      	bne.n	8001296 <main+0x312>
 80011e2:	4b0f      	ldr	r3, [pc, #60]	; (8001220 <main+0x29c>)
 80011e4:	681b      	ldr	r3, [r3, #0]
 80011e6:	3b14      	subs	r3, #20
 80011e8:	2b09      	cmp	r3, #9
 80011ea:	d839      	bhi.n	8001260 <main+0x2dc>
 80011ec:	4b0c      	ldr	r3, [pc, #48]	; (8001220 <main+0x29c>)
 80011ee:	6819      	ldr	r1, [r3, #0]
 80011f0:	4b17      	ldr	r3, [pc, #92]	; (8001250 <main+0x2cc>)
 80011f2:	fb83 2301 	smull	r2, r3, r3, r1
 80011f6:	109a      	asrs	r2, r3, #2
 80011f8:	17cb      	asrs	r3, r1, #31
 80011fa:	1ad2      	subs	r2, r2, r3
 80011fc:	4613      	mov	r3, r2
 80011fe:	009b      	lsls	r3, r3, #2
 8001200:	4413      	add	r3, r2
 8001202:	005b      	lsls	r3, r3, #1
 8001204:	1aca      	subs	r2, r1, r3
 8001206:	2a03      	cmp	r2, #3
 8001208:	d124      	bne.n	8001254 <main+0x2d0>
 800120a:	4b05      	ldr	r3, [pc, #20]	; (8001220 <main+0x29c>)
 800120c:	681b      	ldr	r3, [r3, #0]
 800120e:	3b03      	subs	r3, #3
 8001210:	4a03      	ldr	r2, [pc, #12]	; (8001220 <main+0x29c>)
 8001212:	6013      	str	r3, [r2, #0]
 8001214:	e081      	b.n	800131a <main+0x396>
 8001216:	bf00      	nop
 8001218:	40020c00 	.word	0x40020c00
 800121c:	20000478 	.word	0x20000478
 8001220:	20000004 	.word	0x20000004
 8001224:	2000000c 	.word	0x2000000c
 8001228:	20000008 	.word	0x20000008
 800122c:	20000470 	.word	0x20000470
 8001230:	20000010 	.word	0x20000010
 8001234:	20000474 	.word	0x20000474
 8001238:	2000048c 	.word	0x2000048c
 800123c:	2000047c 	.word	0x2000047c
 8001240:	20000488 	.word	0x20000488
 8001244:	20000000 	.word	0x20000000
 8001248:	20000484 	.word	0x20000484
 800124c:	20000490 	.word	0x20000490
 8001250:	66666667 	.word	0x66666667
 8001254:	4b9e      	ldr	r3, [pc, #632]	; (80014d0 <main+0x54c>)
 8001256:	681b      	ldr	r3, [r3, #0]
 8001258:	3301      	adds	r3, #1
 800125a:	4a9d      	ldr	r2, [pc, #628]	; (80014d0 <main+0x54c>)
 800125c:	6013      	str	r3, [r2, #0]
 800125e:	e05c      	b.n	800131a <main+0x396>
 8001260:	4b9b      	ldr	r3, [pc, #620]	; (80014d0 <main+0x54c>)
 8001262:	6819      	ldr	r1, [r3, #0]
 8001264:	4b9b      	ldr	r3, [pc, #620]	; (80014d4 <main+0x550>)
 8001266:	fb83 2301 	smull	r2, r3, r3, r1
 800126a:	109a      	asrs	r2, r3, #2
 800126c:	17cb      	asrs	r3, r1, #31
 800126e:	1ad2      	subs	r2, r2, r3
 8001270:	4613      	mov	r3, r2
 8001272:	009b      	lsls	r3, r3, #2
 8001274:	4413      	add	r3, r2
 8001276:	005b      	lsls	r3, r3, #1
 8001278:	1aca      	subs	r2, r1, r3
 800127a:	2a09      	cmp	r2, #9
 800127c:	d105      	bne.n	800128a <main+0x306>
 800127e:	4b94      	ldr	r3, [pc, #592]	; (80014d0 <main+0x54c>)
 8001280:	681b      	ldr	r3, [r3, #0]
 8001282:	3b09      	subs	r3, #9
 8001284:	4a92      	ldr	r2, [pc, #584]	; (80014d0 <main+0x54c>)
 8001286:	6013      	str	r3, [r2, #0]
 8001288:	e047      	b.n	800131a <main+0x396>
 800128a:	4b91      	ldr	r3, [pc, #580]	; (80014d0 <main+0x54c>)
 800128c:	681b      	ldr	r3, [r3, #0]
 800128e:	3301      	adds	r3, #1
 8001290:	4a8f      	ldr	r2, [pc, #572]	; (80014d0 <main+0x54c>)
 8001292:	6013      	str	r3, [r2, #0]
 8001294:	e041      	b.n	800131a <main+0x396>
 8001296:	4b90      	ldr	r3, [pc, #576]	; (80014d8 <main+0x554>)
 8001298:	681b      	ldr	r3, [r3, #0]
 800129a:	2b8a      	cmp	r3, #138	; 0x8a
 800129c:	d117      	bne.n	80012ce <main+0x34a>
 800129e:	4b8f      	ldr	r3, [pc, #572]	; (80014dc <main+0x558>)
 80012a0:	681b      	ldr	r3, [r3, #0]
 80012a2:	4a8c      	ldr	r2, [pc, #560]	; (80014d4 <main+0x550>)
 80012a4:	fb82 1203 	smull	r1, r2, r2, r3
 80012a8:	1092      	asrs	r2, r2, #2
 80012aa:	17db      	asrs	r3, r3, #31
 80012ac:	1ad3      	subs	r3, r2, r3
 80012ae:	60bb      	str	r3, [r7, #8]
 80012b0:	68bb      	ldr	r3, [r7, #8]
 80012b2:	2b05      	cmp	r3, #5
 80012b4:	d105      	bne.n	80012c2 <main+0x33e>
 80012b6:	4b89      	ldr	r3, [pc, #548]	; (80014dc <main+0x558>)
 80012b8:	681b      	ldr	r3, [r3, #0]
 80012ba:	3b32      	subs	r3, #50	; 0x32
 80012bc:	4a87      	ldr	r2, [pc, #540]	; (80014dc <main+0x558>)
 80012be:	6013      	str	r3, [r2, #0]
 80012c0:	e02b      	b.n	800131a <main+0x396>
 80012c2:	4b86      	ldr	r3, [pc, #536]	; (80014dc <main+0x558>)
 80012c4:	681b      	ldr	r3, [r3, #0]
 80012c6:	330a      	adds	r3, #10
 80012c8:	4a84      	ldr	r2, [pc, #528]	; (80014dc <main+0x558>)
 80012ca:	6013      	str	r3, [r2, #0]
 80012cc:	e025      	b.n	800131a <main+0x396>
 80012ce:	4b82      	ldr	r3, [pc, #520]	; (80014d8 <main+0x554>)
 80012d0:	681b      	ldr	r3, [r3, #0]
 80012d2:	2b8b      	cmp	r3, #139	; 0x8b
 80012d4:	d11c      	bne.n	8001310 <main+0x38c>
 80012d6:	4b81      	ldr	r3, [pc, #516]	; (80014dc <main+0x558>)
 80012d8:	681a      	ldr	r2, [r3, #0]
 80012da:	4b7e      	ldr	r3, [pc, #504]	; (80014d4 <main+0x550>)
 80012dc:	fb83 1302 	smull	r1, r3, r3, r2
 80012e0:	1099      	asrs	r1, r3, #2
 80012e2:	17d3      	asrs	r3, r2, #31
 80012e4:	1ac9      	subs	r1, r1, r3
 80012e6:	460b      	mov	r3, r1
 80012e8:	009b      	lsls	r3, r3, #2
 80012ea:	440b      	add	r3, r1
 80012ec:	005b      	lsls	r3, r3, #1
 80012ee:	1ad3      	subs	r3, r2, r3
 80012f0:	60fb      	str	r3, [r7, #12]
 80012f2:	68fb      	ldr	r3, [r7, #12]
 80012f4:	2b09      	cmp	r3, #9
 80012f6:	d105      	bne.n	8001304 <main+0x380>
 80012f8:	4b78      	ldr	r3, [pc, #480]	; (80014dc <main+0x558>)
 80012fa:	681b      	ldr	r3, [r3, #0]
 80012fc:	3b09      	subs	r3, #9
 80012fe:	4a77      	ldr	r2, [pc, #476]	; (80014dc <main+0x558>)
 8001300:	6013      	str	r3, [r2, #0]
 8001302:	e00a      	b.n	800131a <main+0x396>
 8001304:	4b75      	ldr	r3, [pc, #468]	; (80014dc <main+0x558>)
 8001306:	681b      	ldr	r3, [r3, #0]
 8001308:	3301      	adds	r3, #1
 800130a:	4a74      	ldr	r2, [pc, #464]	; (80014dc <main+0x558>)
 800130c:	6013      	str	r3, [r2, #0]
 800130e:	e004      	b.n	800131a <main+0x396>
 8001310:	f44f 7096 	mov.w	r0, #300	; 0x12c
 8001314:	f7ff fa0c 	bl	8000730 <myDelay>
 8001318:	e12f      	b.n	800157a <main+0x5f6>
 800131a:	f7ff fba1 	bl	8000a60 <LCD_print_time>
 800131e:	4b70      	ldr	r3, [pc, #448]	; (80014e0 <main+0x55c>)
 8001320:	2200      	movs	r2, #0
 8001322:	601a      	str	r2, [r3, #0]
 8001324:	4b6f      	ldr	r3, [pc, #444]	; (80014e4 <main+0x560>)
 8001326:	2201      	movs	r2, #1
 8001328:	601a      	str	r2, [r3, #0]
 800132a:	2064      	movs	r0, #100	; 0x64
 800132c:	f7ff fa00 	bl	8000730 <myDelay>
 8001330:	4b6c      	ldr	r3, [pc, #432]	; (80014e4 <main+0x560>)
 8001332:	2200      	movs	r2, #0
 8001334:	601a      	str	r2, [r3, #0]
 8001336:	20c8      	movs	r0, #200	; 0xc8
 8001338:	f7ff f9fa 	bl	8000730 <myDelay>
 800133c:	e11d      	b.n	800157a <main+0x5f6>
 800133e:	e11c      	b.n	800157a <main+0x5f6>
 8001340:	4b69      	ldr	r3, [pc, #420]	; (80014e8 <main+0x564>)
 8001342:	681b      	ldr	r3, [r3, #0]
 8001344:	2b00      	cmp	r3, #0
 8001346:	d048      	beq.n	80013da <main+0x456>
 8001348:	4b63      	ldr	r3, [pc, #396]	; (80014d8 <main+0x554>)
 800134a:	681b      	ldr	r3, [r3, #0]
 800134c:	2bc7      	cmp	r3, #199	; 0xc7
 800134e:	d105      	bne.n	800135c <main+0x3d8>
 8001350:	f7ff fbe4 	bl	8000b1c <LCD_print_alarm>
 8001354:	4b60      	ldr	r3, [pc, #384]	; (80014d8 <main+0x554>)
 8001356:	22c8      	movs	r2, #200	; 0xc8
 8001358:	601a      	str	r2, [r3, #0]
 800135a:	e031      	b.n	80013c0 <main+0x43c>
 800135c:	4b5e      	ldr	r3, [pc, #376]	; (80014d8 <main+0x554>)
 800135e:	681b      	ldr	r3, [r3, #0]
 8001360:	2bc8      	cmp	r3, #200	; 0xc8
 8001362:	d105      	bne.n	8001370 <main+0x3ec>
 8001364:	f7ff fbda 	bl	8000b1c <LCD_print_alarm>
 8001368:	4b5b      	ldr	r3, [pc, #364]	; (80014d8 <main+0x554>)
 800136a:	22ca      	movs	r2, #202	; 0xca
 800136c:	601a      	str	r2, [r3, #0]
 800136e:	e027      	b.n	80013c0 <main+0x43c>
 8001370:	4b59      	ldr	r3, [pc, #356]	; (80014d8 <main+0x554>)
 8001372:	681b      	ldr	r3, [r3, #0]
 8001374:	2bca      	cmp	r3, #202	; 0xca
 8001376:	d105      	bne.n	8001384 <main+0x400>
 8001378:	f7ff fbd0 	bl	8000b1c <LCD_print_alarm>
 800137c:	4b56      	ldr	r3, [pc, #344]	; (80014d8 <main+0x554>)
 800137e:	22cb      	movs	r2, #203	; 0xcb
 8001380:	601a      	str	r2, [r3, #0]
 8001382:	e01d      	b.n	80013c0 <main+0x43c>
 8001384:	4b54      	ldr	r3, [pc, #336]	; (80014d8 <main+0x554>)
 8001386:	681b      	ldr	r3, [r3, #0]
 8001388:	2bcb      	cmp	r3, #203	; 0xcb
 800138a:	d119      	bne.n	80013c0 <main+0x43c>
 800138c:	f7ff fbc6 	bl	8000b1c <LCD_print_alarm>
 8001390:	4b56      	ldr	r3, [pc, #344]	; (80014ec <main+0x568>)
 8001392:	f44f 727a 	mov.w	r2, #1000	; 0x3e8
 8001396:	601a      	str	r2, [r3, #0]
 8001398:	4b4f      	ldr	r3, [pc, #316]	; (80014d8 <main+0x554>)
 800139a:	2289      	movs	r2, #137	; 0x89
 800139c:	601a      	str	r2, [r3, #0]
 800139e:	4b54      	ldr	r3, [pc, #336]	; (80014f0 <main+0x56c>)
 80013a0:	2200      	movs	r2, #0
 80013a2:	601a      	str	r2, [r3, #0]
 80013a4:	4b4f      	ldr	r3, [pc, #316]	; (80014e4 <main+0x560>)
 80013a6:	2201      	movs	r2, #1
 80013a8:	601a      	str	r2, [r3, #0]
 80013aa:	f44f 70fa 	mov.w	r0, #500	; 0x1f4
 80013ae:	f7ff f9bf 	bl	8000730 <myDelay>
 80013b2:	4b4c      	ldr	r3, [pc, #304]	; (80014e4 <main+0x560>)
 80013b4:	2200      	movs	r2, #0
 80013b6:	601a      	str	r2, [r3, #0]
 80013b8:	4b4b      	ldr	r3, [pc, #300]	; (80014e8 <main+0x564>)
 80013ba:	2200      	movs	r2, #0
 80013bc:	601a      	str	r2, [r3, #0]
 80013be:	e0dc      	b.n	800157a <main+0x5f6>
 80013c0:	4b49      	ldr	r3, [pc, #292]	; (80014e8 <main+0x564>)
 80013c2:	2200      	movs	r2, #0
 80013c4:	601a      	str	r2, [r3, #0]
 80013c6:	4b47      	ldr	r3, [pc, #284]	; (80014e4 <main+0x560>)
 80013c8:	2201      	movs	r2, #1
 80013ca:	601a      	str	r2, [r3, #0]
 80013cc:	f44f 7096 	mov.w	r0, #300	; 0x12c
 80013d0:	f7ff f9ae 	bl	8000730 <myDelay>
 80013d4:	4b43      	ldr	r3, [pc, #268]	; (80014e4 <main+0x560>)
 80013d6:	2200      	movs	r2, #0
 80013d8:	601a      	str	r2, [r3, #0]
 80013da:	4b41      	ldr	r3, [pc, #260]	; (80014e0 <main+0x55c>)
 80013dc:	681b      	ldr	r3, [r3, #0]
 80013de:	2b00      	cmp	r3, #0
 80013e0:	f000 80ca 	beq.w	8001578 <main+0x5f4>
 80013e4:	4b3c      	ldr	r3, [pc, #240]	; (80014d8 <main+0x554>)
 80013e6:	681b      	ldr	r3, [r3, #0]
 80013e8:	2bc7      	cmp	r3, #199	; 0xc7
 80013ea:	d11c      	bne.n	8001426 <main+0x4a2>
 80013ec:	4b41      	ldr	r3, [pc, #260]	; (80014f4 <main+0x570>)
 80013ee:	681b      	ldr	r3, [r3, #0]
 80013f0:	2b0d      	cmp	r3, #13
 80013f2:	dc05      	bgt.n	8001400 <main+0x47c>
 80013f4:	4b3f      	ldr	r3, [pc, #252]	; (80014f4 <main+0x570>)
 80013f6:	681b      	ldr	r3, [r3, #0]
 80013f8:	330a      	adds	r3, #10
 80013fa:	4a3e      	ldr	r2, [pc, #248]	; (80014f4 <main+0x570>)
 80013fc:	6013      	str	r3, [r2, #0]
 80013fe:	e0a9      	b.n	8001554 <main+0x5d0>
 8001400:	4b3c      	ldr	r3, [pc, #240]	; (80014f4 <main+0x570>)
 8001402:	681b      	ldr	r3, [r3, #0]
 8001404:	2b13      	cmp	r3, #19
 8001406:	dc03      	bgt.n	8001410 <main+0x48c>
 8001408:	4b3a      	ldr	r3, [pc, #232]	; (80014f4 <main+0x570>)
 800140a:	2214      	movs	r2, #20
 800140c:	601a      	str	r2, [r3, #0]
 800140e:	e0a1      	b.n	8001554 <main+0x5d0>
 8001410:	4b38      	ldr	r3, [pc, #224]	; (80014f4 <main+0x570>)
 8001412:	681b      	ldr	r3, [r3, #0]
 8001414:	2b17      	cmp	r3, #23
 8001416:	f300 809d 	bgt.w	8001554 <main+0x5d0>
 800141a:	4b36      	ldr	r3, [pc, #216]	; (80014f4 <main+0x570>)
 800141c:	681b      	ldr	r3, [r3, #0]
 800141e:	3b14      	subs	r3, #20
 8001420:	4a34      	ldr	r2, [pc, #208]	; (80014f4 <main+0x570>)
 8001422:	6013      	str	r3, [r2, #0]
 8001424:	e096      	b.n	8001554 <main+0x5d0>
 8001426:	4b2c      	ldr	r3, [pc, #176]	; (80014d8 <main+0x554>)
 8001428:	681b      	ldr	r3, [r3, #0]
 800142a:	2bc8      	cmp	r3, #200	; 0xc8
 800142c:	d13a      	bne.n	80014a4 <main+0x520>
 800142e:	4b31      	ldr	r3, [pc, #196]	; (80014f4 <main+0x570>)
 8001430:	681b      	ldr	r3, [r3, #0]
 8001432:	3b14      	subs	r3, #20
 8001434:	2b09      	cmp	r3, #9
 8001436:	d81a      	bhi.n	800146e <main+0x4ea>
 8001438:	4b2e      	ldr	r3, [pc, #184]	; (80014f4 <main+0x570>)
 800143a:	6819      	ldr	r1, [r3, #0]
 800143c:	4b25      	ldr	r3, [pc, #148]	; (80014d4 <main+0x550>)
 800143e:	fb83 2301 	smull	r2, r3, r3, r1
 8001442:	109a      	asrs	r2, r3, #2
 8001444:	17cb      	asrs	r3, r1, #31
 8001446:	1ad2      	subs	r2, r2, r3
 8001448:	4613      	mov	r3, r2
 800144a:	009b      	lsls	r3, r3, #2
 800144c:	4413      	add	r3, r2
 800144e:	005b      	lsls	r3, r3, #1
 8001450:	1aca      	subs	r2, r1, r3
 8001452:	2a03      	cmp	r2, #3
 8001454:	d105      	bne.n	8001462 <main+0x4de>
 8001456:	4b27      	ldr	r3, [pc, #156]	; (80014f4 <main+0x570>)
 8001458:	681b      	ldr	r3, [r3, #0]
 800145a:	3b03      	subs	r3, #3
 800145c:	4a25      	ldr	r2, [pc, #148]	; (80014f4 <main+0x570>)
 800145e:	6013      	str	r3, [r2, #0]
 8001460:	e078      	b.n	8001554 <main+0x5d0>
 8001462:	4b24      	ldr	r3, [pc, #144]	; (80014f4 <main+0x570>)
 8001464:	681b      	ldr	r3, [r3, #0]
 8001466:	3301      	adds	r3, #1
 8001468:	4a22      	ldr	r2, [pc, #136]	; (80014f4 <main+0x570>)
 800146a:	6013      	str	r3, [r2, #0]
 800146c:	e072      	b.n	8001554 <main+0x5d0>
 800146e:	4b21      	ldr	r3, [pc, #132]	; (80014f4 <main+0x570>)
 8001470:	6819      	ldr	r1, [r3, #0]
 8001472:	4b18      	ldr	r3, [pc, #96]	; (80014d4 <main+0x550>)
 8001474:	fb83 2301 	smull	r2, r3, r3, r1
 8001478:	109a      	asrs	r2, r3, #2
 800147a:	17cb      	asrs	r3, r1, #31
 800147c:	1ad2      	subs	r2, r2, r3
 800147e:	4613      	mov	r3, r2
 8001480:	009b      	lsls	r3, r3, #2
 8001482:	4413      	add	r3, r2
 8001484:	005b      	lsls	r3, r3, #1
 8001486:	1aca      	subs	r2, r1, r3
 8001488:	2a09      	cmp	r2, #9
 800148a:	d105      	bne.n	8001498 <main+0x514>
 800148c:	4b19      	ldr	r3, [pc, #100]	; (80014f4 <main+0x570>)
 800148e:	681b      	ldr	r3, [r3, #0]
 8001490:	3b09      	subs	r3, #9
 8001492:	4a18      	ldr	r2, [pc, #96]	; (80014f4 <main+0x570>)
 8001494:	6013      	str	r3, [r2, #0]
 8001496:	e05d      	b.n	8001554 <main+0x5d0>
 8001498:	4b16      	ldr	r3, [pc, #88]	; (80014f4 <main+0x570>)
 800149a:	681b      	ldr	r3, [r3, #0]
 800149c:	3301      	adds	r3, #1
 800149e:	4a15      	ldr	r2, [pc, #84]	; (80014f4 <main+0x570>)
 80014a0:	6013      	str	r3, [r2, #0]
 80014a2:	e057      	b.n	8001554 <main+0x5d0>
 80014a4:	4b0c      	ldr	r3, [pc, #48]	; (80014d8 <main+0x554>)
 80014a6:	681b      	ldr	r3, [r3, #0]
 80014a8:	2bca      	cmp	r3, #202	; 0xca
 80014aa:	d12d      	bne.n	8001508 <main+0x584>
 80014ac:	4b12      	ldr	r3, [pc, #72]	; (80014f8 <main+0x574>)
 80014ae:	681b      	ldr	r3, [r3, #0]
 80014b0:	4a08      	ldr	r2, [pc, #32]	; (80014d4 <main+0x550>)
 80014b2:	fb82 1203 	smull	r1, r2, r2, r3
 80014b6:	1092      	asrs	r2, r2, #2
 80014b8:	17db      	asrs	r3, r3, #31
 80014ba:	1ad3      	subs	r3, r2, r3
 80014bc:	603b      	str	r3, [r7, #0]
 80014be:	683b      	ldr	r3, [r7, #0]
 80014c0:	2b05      	cmp	r3, #5
 80014c2:	d11b      	bne.n	80014fc <main+0x578>
 80014c4:	4b0c      	ldr	r3, [pc, #48]	; (80014f8 <main+0x574>)
 80014c6:	681b      	ldr	r3, [r3, #0]
 80014c8:	3b32      	subs	r3, #50	; 0x32
 80014ca:	4a0b      	ldr	r2, [pc, #44]	; (80014f8 <main+0x574>)
 80014cc:	6013      	str	r3, [r2, #0]
 80014ce:	e041      	b.n	8001554 <main+0x5d0>
 80014d0:	20000004 	.word	0x20000004
 80014d4:	66666667 	.word	0x66666667
 80014d8:	20000488 	.word	0x20000488
 80014dc:	20000008 	.word	0x20000008
 80014e0:	20000490 	.word	0x20000490
 80014e4:	2000047c 	.word	0x2000047c
 80014e8:	20000484 	.word	0x20000484
 80014ec:	20000000 	.word	0x20000000
 80014f0:	20000478 	.word	0x20000478
 80014f4:	2000000c 	.word	0x2000000c
 80014f8:	20000470 	.word	0x20000470
 80014fc:	4b1f      	ldr	r3, [pc, #124]	; (800157c <main+0x5f8>)
 80014fe:	681b      	ldr	r3, [r3, #0]
 8001500:	330a      	adds	r3, #10
 8001502:	4a1e      	ldr	r2, [pc, #120]	; (800157c <main+0x5f8>)
 8001504:	6013      	str	r3, [r2, #0]
 8001506:	e025      	b.n	8001554 <main+0x5d0>
 8001508:	4b1d      	ldr	r3, [pc, #116]	; (8001580 <main+0x5fc>)
 800150a:	681b      	ldr	r3, [r3, #0]
 800150c:	2bcb      	cmp	r3, #203	; 0xcb
 800150e:	d11c      	bne.n	800154a <main+0x5c6>
 8001510:	4b1a      	ldr	r3, [pc, #104]	; (800157c <main+0x5f8>)
 8001512:	681a      	ldr	r2, [r3, #0]
 8001514:	4b1b      	ldr	r3, [pc, #108]	; (8001584 <main+0x600>)
 8001516:	fb83 1302 	smull	r1, r3, r3, r2
 800151a:	1099      	asrs	r1, r3, #2
 800151c:	17d3      	asrs	r3, r2, #31
 800151e:	1ac9      	subs	r1, r1, r3
 8001520:	460b      	mov	r3, r1
 8001522:	009b      	lsls	r3, r3, #2
 8001524:	440b      	add	r3, r1
 8001526:	005b      	lsls	r3, r3, #1
 8001528:	1ad3      	subs	r3, r2, r3
 800152a:	607b      	str	r3, [r7, #4]
 800152c:	687b      	ldr	r3, [r7, #4]
 800152e:	2b09      	cmp	r3, #9
 8001530:	d105      	bne.n	800153e <main+0x5ba>
 8001532:	4b12      	ldr	r3, [pc, #72]	; (800157c <main+0x5f8>)
 8001534:	681b      	ldr	r3, [r3, #0]
 8001536:	3b09      	subs	r3, #9
 8001538:	4a10      	ldr	r2, [pc, #64]	; (800157c <main+0x5f8>)
 800153a:	6013      	str	r3, [r2, #0]
 800153c:	e00a      	b.n	8001554 <main+0x5d0>
 800153e:	4b0f      	ldr	r3, [pc, #60]	; (800157c <main+0x5f8>)
 8001540:	681b      	ldr	r3, [r3, #0]
 8001542:	3301      	adds	r3, #1
 8001544:	4a0d      	ldr	r2, [pc, #52]	; (800157c <main+0x5f8>)
 8001546:	6013      	str	r3, [r2, #0]
 8001548:	e004      	b.n	8001554 <main+0x5d0>
 800154a:	f44f 7096 	mov.w	r0, #300	; 0x12c
 800154e:	f7ff f8ef 	bl	8000730 <myDelay>
 8001552:	e012      	b.n	800157a <main+0x5f6>
 8001554:	f7ff fae2 	bl	8000b1c <LCD_print_alarm>
 8001558:	4b0b      	ldr	r3, [pc, #44]	; (8001588 <main+0x604>)
 800155a:	2200      	movs	r2, #0
 800155c:	601a      	str	r2, [r3, #0]
 800155e:	4b0b      	ldr	r3, [pc, #44]	; (800158c <main+0x608>)
 8001560:	2201      	movs	r2, #1
 8001562:	601a      	str	r2, [r3, #0]
 8001564:	2064      	movs	r0, #100	; 0x64
 8001566:	f7ff f8e3 	bl	8000730 <myDelay>
 800156a:	4b08      	ldr	r3, [pc, #32]	; (800158c <main+0x608>)
 800156c:	2200      	movs	r2, #0
 800156e:	601a      	str	r2, [r3, #0]
 8001570:	20c8      	movs	r0, #200	; 0xc8
 8001572:	f7ff f8dd 	bl	8000730 <myDelay>
 8001576:	e7ff      	b.n	8001578 <main+0x5f4>
 8001578:	bf00      	nop
 800157a:	e512      	b.n	8000fa2 <main+0x1e>
 800157c:	20000470 	.word	0x20000470
 8001580:	20000488 	.word	0x20000488
 8001584:	66666667 	.word	0x66666667
 8001588:	20000490 	.word	0x20000490
 800158c:	2000047c 	.word	0x2000047c

08001590 <SystemClock_Config>:
 8001590:	b580      	push	{r7, lr}
 8001592:	af00      	add	r7, sp, #0
 8001594:	f7fe ff08 	bl	80003a8 <LL_RCC_HSE_Enable>
 8001598:	bf00      	nop
 800159a:	f7fe ff13 	bl	80003c4 <LL_RCC_HSE_IsReady>
 800159e:	4603      	mov	r3, r0
 80015a0:	2b01      	cmp	r3, #1
 80015a2:	d1fa      	bne.n	800159a <SystemClock_Config+0xa>
 80015a4:	2005      	movs	r0, #5
 80015a6:	f7fe ffed 	bl	8000584 <LL_FLASH_SetLatency>
 80015aa:	f44f 0080 	mov.w	r0, #4194304	; 0x400000
 80015ae:	2108      	movs	r1, #8
 80015b0:	f44f 72a8 	mov.w	r2, #336	; 0x150
 80015b4:	2300      	movs	r3, #0
 80015b6:	f7fe ff95 	bl	80004e4 <LL_RCC_PLL_ConfigDomain_SYS>
 80015ba:	f7fe ff73 	bl	80004a4 <LL_RCC_PLL_Enable>
 80015be:	bf00      	nop
 80015c0:	f7fe ff7e 	bl	80004c0 <LL_RCC_PLL_IsReady>
 80015c4:	4603      	mov	r3, r0
 80015c6:	2b01      	cmp	r3, #1
 80015c8:	d1fa      	bne.n	80015c0 <SystemClock_Config+0x30>
 80015ca:	2000      	movs	r0, #0
 80015cc:	f7fe ff2e 	bl	800042c <LL_RCC_SetAHBPrescaler>
 80015d0:	2002      	movs	r0, #2
 80015d2:	f7fe ff09 	bl	80003e8 <LL_RCC_SetSysClkSource>
 80015d6:	bf00      	nop
 80015d8:	f7fe ff1a 	bl	8000410 <LL_RCC_GetSysClkSource>
 80015dc:	4603      	mov	r3, r0
 80015de:	2b08      	cmp	r3, #8
 80015e0:	d1fa      	bne.n	80015d8 <SystemClock_Config+0x48>
 80015e2:	f44f 50a0 	mov.w	r0, #5120	; 0x1400
 80015e6:	f7fe ff35 	bl	8000454 <LL_RCC_SetAPB1Prescaler>
 80015ea:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 80015ee:	f7fe ff45 	bl	800047c <LL_RCC_SetAPB2Prescaler>
 80015f2:	f245 2008 	movw	r0, #21000	; 0x5208
 80015f6:	f7fe fe85 	bl	8000304 <SysTick_Config>
 80015fa:	4b02      	ldr	r3, [pc, #8]	; (8001604 <SystemClock_Config+0x74>)
 80015fc:	4a02      	ldr	r2, [pc, #8]	; (8001608 <SystemClock_Config+0x78>)
 80015fe:	601a      	str	r2, [r3, #0]
 8001600:	bd80      	pop	{r7, pc}
 8001602:	bf00      	nop
 8001604:	20000018 	.word	0x20000018
 8001608:	0a037a00 	.word	0x0a037a00

0800160c <NMI_Handler>:
 800160c:	b480      	push	{r7}
 800160e:	af00      	add	r7, sp, #0
 8001610:	46bd      	mov	sp, r7
 8001612:	f85d 7b04 	ldr.w	r7, [sp], #4
 8001616:	4770      	bx	lr

08001618 <HardFault_Handler>:
 8001618:	b480      	push	{r7}
 800161a:	af00      	add	r7, sp, #0
 800161c:	e7fe      	b.n	800161c <HardFault_Handler+0x4>
 800161e:	bf00      	nop

08001620 <MemManage_Handler>:
 8001620:	b480      	push	{r7}
 8001622:	af00      	add	r7, sp, #0
 8001624:	e7fe      	b.n	8001624 <MemManage_Handler+0x4>
 8001626:	bf00      	nop

08001628 <BusFault_Handler>:
 8001628:	b480      	push	{r7}
 800162a:	af00      	add	r7, sp, #0
 800162c:	e7fe      	b.n	800162c <BusFault_Handler+0x4>
 800162e:	bf00      	nop

08001630 <UsageFault_Handler>:
 8001630:	b480      	push	{r7}
 8001632:	af00      	add	r7, sp, #0
 8001634:	e7fe      	b.n	8001634 <UsageFault_Handler+0x4>
 8001636:	bf00      	nop

08001638 <SVC_Handler>:
 8001638:	b480      	push	{r7}
 800163a:	af00      	add	r7, sp, #0
 800163c:	46bd      	mov	sp, r7
 800163e:	f85d 7b04 	ldr.w	r7, [sp], #4
 8001642:	4770      	bx	lr

08001644 <DebugMon_Handler>:
 8001644:	b480      	push	{r7}
 8001646:	af00      	add	r7, sp, #0
 8001648:	46bd      	mov	sp, r7
 800164a:	f85d 7b04 	ldr.w	r7, [sp], #4
 800164e:	4770      	bx	lr

08001650 <PendSV_Handler>:
 8001650:	b480      	push	{r7}
 8001652:	af00      	add	r7, sp, #0
 8001654:	46bd      	mov	sp, r7
 8001656:	f85d 7b04 	ldr.w	r7, [sp], #4
 800165a:	4770      	bx	lr

0800165c <SysTick_Handler>:
 800165c:	b580      	push	{r7, lr}
 800165e:	af00      	add	r7, sp, #0
 8001660:	4b0d      	ldr	r3, [pc, #52]	; (8001698 <SysTick_Handler+0x3c>)
 8001662:	681b      	ldr	r3, [r3, #0]
 8001664:	3301      	adds	r3, #1
 8001666:	4a0c      	ldr	r2, [pc, #48]	; (8001698 <SysTick_Handler+0x3c>)
 8001668:	6013      	str	r3, [r2, #0]
 800166a:	4b0c      	ldr	r3, [pc, #48]	; (800169c <SysTick_Handler+0x40>)
 800166c:	681b      	ldr	r3, [r3, #0]
 800166e:	2b00      	cmp	r3, #0
 8001670:	d004      	beq.n	800167c <SysTick_Handler+0x20>
 8001672:	480b      	ldr	r0, [pc, #44]	; (80016a0 <SysTick_Handler+0x44>)
 8001674:	f44f 5180 	mov.w	r1, #4096	; 0x1000
 8001678:	f7ff f818 	bl	80006ac <LL_GPIO_TogglePin>
 800167c:	4b06      	ldr	r3, [pc, #24]	; (8001698 <SysTick_Handler+0x3c>)
 800167e:	681b      	ldr	r3, [r3, #0]
 8001680:	2b08      	cmp	r3, #8
 8001682:	d107      	bne.n	8001694 <SysTick_Handler+0x38>
 8001684:	4b07      	ldr	r3, [pc, #28]	; (80016a4 <SysTick_Handler+0x48>)
 8001686:	681b      	ldr	r3, [r3, #0]
 8001688:	3301      	adds	r3, #1
 800168a:	4a06      	ldr	r2, [pc, #24]	; (80016a4 <SysTick_Handler+0x48>)
 800168c:	6013      	str	r3, [r2, #0]
 800168e:	4b02      	ldr	r3, [pc, #8]	; (8001698 <SysTick_Handler+0x3c>)
 8001690:	2200      	movs	r2, #0
 8001692:	601a      	str	r2, [r3, #0]
 8001694:	bd80      	pop	{r7, pc}
 8001696:	bf00      	nop
 8001698:	20000480 	.word	0x20000480
 800169c:	2000047c 	.word	0x2000047c
 80016a0:	40020c00 	.word	0x40020c00
 80016a4:	20000464 	.word	0x20000464

080016a8 <EXTI0_IRQHandler>:
 80016a8:	b580      	push	{r7, lr}
 80016aa:	af00      	add	r7, sp, #0
 80016ac:	4b03      	ldr	r3, [pc, #12]	; (80016bc <EXTI0_IRQHandler+0x14>)
 80016ae:	2201      	movs	r2, #1
 80016b0:	601a      	str	r2, [r3, #0]
 80016b2:	2080      	movs	r0, #128	; 0x80
 80016b4:	f7ff f82e 	bl	8000714 <LL_EXTI_ClearFlag_0_31>
 80016b8:	bd80      	pop	{r7, pc}
 80016ba:	bf00      	nop
 80016bc:	2000048c 	.word	0x2000048c

080016c0 <SystemInit>:
 80016c0:	b480      	push	{r7}
 80016c2:	af00      	add	r7, sp, #0
 80016c4:	4a16      	ldr	r2, [pc, #88]	; (8001720 <SystemInit+0x60>)
 80016c6:	4b16      	ldr	r3, [pc, #88]	; (8001720 <SystemInit+0x60>)
 80016c8:	f8d3 3088 	ldr.w	r3, [r3, #136]	; 0x88
 80016cc:	f443 0370 	orr.w	r3, r3, #15728640	; 0xf00000
 80016d0:	f8c2 3088 	str.w	r3, [r2, #136]	; 0x88
 80016d4:	4a13      	ldr	r2, [pc, #76]	; (8001724 <SystemInit+0x64>)
 80016d6:	4b13      	ldr	r3, [pc, #76]	; (8001724 <SystemInit+0x64>)
 80016d8:	681b      	ldr	r3, [r3, #0]
 80016da:	f043 0301 	orr.w	r3, r3, #1
 80016de:	6013      	str	r3, [r2, #0]
 80016e0:	4b10      	ldr	r3, [pc, #64]	; (8001724 <SystemInit+0x64>)
 80016e2:	2200      	movs	r2, #0
 80016e4:	609a      	str	r2, [r3, #8]
 80016e6:	4a0f      	ldr	r2, [pc, #60]	; (8001724 <SystemInit+0x64>)
 80016e8:	4b0e      	ldr	r3, [pc, #56]	; (8001724 <SystemInit+0x64>)
 80016ea:	681b      	ldr	r3, [r3, #0]
 80016ec:	f023 7384 	bic.w	r3, r3, #17301504	; 0x1080000
 80016f0:	f423 3380 	bic.w	r3, r3, #65536	; 0x10000
 80016f4:	6013      	str	r3, [r2, #0]
 80016f6:	4b0b      	ldr	r3, [pc, #44]	; (8001724 <SystemInit+0x64>)
 80016f8:	4a0b      	ldr	r2, [pc, #44]	; (8001728 <SystemInit+0x68>)
 80016fa:	605a      	str	r2, [r3, #4]
 80016fc:	4a09      	ldr	r2, [pc, #36]	; (8001724 <SystemInit+0x64>)
 80016fe:	4b09      	ldr	r3, [pc, #36]	; (8001724 <SystemInit+0x64>)
 8001700:	681b      	ldr	r3, [r3, #0]
 8001702:	f423 2380 	bic.w	r3, r3, #262144	; 0x40000
 8001706:	6013      	str	r3, [r2, #0]
 8001708:	4b06      	ldr	r3, [pc, #24]	; (8001724 <SystemInit+0x64>)
 800170a:	2200      	movs	r2, #0
 800170c:	60da      	str	r2, [r3, #12]
 800170e:	4b04      	ldr	r3, [pc, #16]	; (8001720 <SystemInit+0x60>)
 8001710:	f04f 6200 	mov.w	r2, #134217728	; 0x8000000
 8001714:	609a      	str	r2, [r3, #8]
 8001716:	46bd      	mov	sp, r7
 8001718:	f85d 7b04 	ldr.w	r7, [sp], #4
 800171c:	4770      	bx	lr
 800171e:	bf00      	nop
 8001720:	e000ed00 	.word	0xe000ed00
 8001724:	40023800 	.word	0x40023800
 8001728:	24003010 	.word	0x24003010

0800172c <atexit>:
 800172c:	4601      	mov	r1, r0
 800172e:	2000      	movs	r0, #0
 8001730:	4602      	mov	r2, r0
 8001732:	4603      	mov	r3, r0
 8001734:	f000 b83e 	b.w	80017b4 <__register_exitproc>

08001738 <__libc_fini_array>:
 8001738:	b538      	push	{r3, r4, r5, lr}
 800173a:	4b08      	ldr	r3, [pc, #32]	; (800175c <__libc_fini_array+0x24>)
 800173c:	4d08      	ldr	r5, [pc, #32]	; (8001760 <__libc_fini_array+0x28>)
 800173e:	1aed      	subs	r5, r5, r3
 8001740:	10ac      	asrs	r4, r5, #2
 8001742:	bf18      	it	ne
 8001744:	18ed      	addne	r5, r5, r3
 8001746:	d005      	beq.n	8001754 <__libc_fini_array+0x1c>
 8001748:	3c01      	subs	r4, #1
 800174a:	f855 3d04 	ldr.w	r3, [r5, #-4]!
 800174e:	4798      	blx	r3
 8001750:	2c00      	cmp	r4, #0
 8001752:	d1f9      	bne.n	8001748 <__libc_fini_array+0x10>
 8001754:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 8001758:	f000 b88e 	b.w	8001878 <_fini>
 800175c:	080018a4 	.word	0x080018a4
 8001760:	080018a8 	.word	0x080018a8

08001764 <__libc_init_array>:
 8001764:	b570      	push	{r4, r5, r6, lr}
 8001766:	4e0f      	ldr	r6, [pc, #60]	; (80017a4 <__libc_init_array+0x40>)
 8001768:	4d0f      	ldr	r5, [pc, #60]	; (80017a8 <__libc_init_array+0x44>)
 800176a:	1b76      	subs	r6, r6, r5
 800176c:	10b6      	asrs	r6, r6, #2
 800176e:	bf18      	it	ne
 8001770:	2400      	movne	r4, #0
 8001772:	d005      	beq.n	8001780 <__libc_init_array+0x1c>
 8001774:	3401      	adds	r4, #1
 8001776:	f855 3b04 	ldr.w	r3, [r5], #4
 800177a:	4798      	blx	r3
 800177c:	42a6      	cmp	r6, r4
 800177e:	d1f9      	bne.n	8001774 <__libc_init_array+0x10>
 8001780:	4e0a      	ldr	r6, [pc, #40]	; (80017ac <__libc_init_array+0x48>)
 8001782:	4d0b      	ldr	r5, [pc, #44]	; (80017b0 <__libc_init_array+0x4c>)
 8001784:	1b76      	subs	r6, r6, r5
 8001786:	f000 f871 	bl	800186c <_init>
 800178a:	10b6      	asrs	r6, r6, #2
 800178c:	bf18      	it	ne
 800178e:	2400      	movne	r4, #0
 8001790:	d006      	beq.n	80017a0 <__libc_init_array+0x3c>
 8001792:	3401      	adds	r4, #1
 8001794:	f855 3b04 	ldr.w	r3, [r5], #4
 8001798:	4798      	blx	r3
 800179a:	42a6      	cmp	r6, r4
 800179c:	d1f9      	bne.n	8001792 <__libc_init_array+0x2e>
 800179e:	bd70      	pop	{r4, r5, r6, pc}
 80017a0:	bd70      	pop	{r4, r5, r6, pc}
 80017a2:	bf00      	nop
 80017a4:	0800189c 	.word	0x0800189c
 80017a8:	0800189c 	.word	0x0800189c
 80017ac:	080018a4 	.word	0x080018a4
 80017b0:	0800189c 	.word	0x0800189c

080017b4 <__register_exitproc>:
 80017b4:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 80017b8:	4c25      	ldr	r4, [pc, #148]	; (8001850 <__register_exitproc+0x9c>)
 80017ba:	6825      	ldr	r5, [r4, #0]
 80017bc:	f8d5 4148 	ldr.w	r4, [r5, #328]	; 0x148
 80017c0:	4606      	mov	r6, r0
 80017c2:	4688      	mov	r8, r1
 80017c4:	4692      	mov	sl, r2
 80017c6:	4699      	mov	r9, r3
 80017c8:	b3cc      	cbz	r4, 800183e <__register_exitproc+0x8a>
 80017ca:	6860      	ldr	r0, [r4, #4]
 80017cc:	281f      	cmp	r0, #31
 80017ce:	dc18      	bgt.n	8001802 <__register_exitproc+0x4e>
 80017d0:	1c43      	adds	r3, r0, #1
 80017d2:	b17e      	cbz	r6, 80017f4 <__register_exitproc+0x40>
 80017d4:	eb04 0580 	add.w	r5, r4, r0, lsl #2
 80017d8:	2101      	movs	r1, #1
 80017da:	f8c5 a088 	str.w	sl, [r5, #136]	; 0x88
 80017de:	f8d4 7188 	ldr.w	r7, [r4, #392]	; 0x188
 80017e2:	fa01 f200 	lsl.w	r2, r1, r0
 80017e6:	4317      	orrs	r7, r2
 80017e8:	2e02      	cmp	r6, #2
 80017ea:	f8c4 7188 	str.w	r7, [r4, #392]	; 0x188
 80017ee:	f8c5 9108 	str.w	r9, [r5, #264]	; 0x108
 80017f2:	d01e      	beq.n	8001832 <__register_exitproc+0x7e>
 80017f4:	3002      	adds	r0, #2
 80017f6:	6063      	str	r3, [r4, #4]
 80017f8:	f844 8020 	str.w	r8, [r4, r0, lsl #2]
 80017fc:	2000      	movs	r0, #0
 80017fe:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8001802:	4b14      	ldr	r3, [pc, #80]	; (8001854 <__register_exitproc+0xa0>)
 8001804:	b303      	cbz	r3, 8001848 <__register_exitproc+0x94>
 8001806:	f44f 70c8 	mov.w	r0, #400	; 0x190
 800180a:	f3af 8000 	nop.w
 800180e:	4604      	mov	r4, r0
 8001810:	b1d0      	cbz	r0, 8001848 <__register_exitproc+0x94>
 8001812:	f8d5 3148 	ldr.w	r3, [r5, #328]	; 0x148
 8001816:	2700      	movs	r7, #0
 8001818:	e880 0088 	stmia.w	r0, {r3, r7}
 800181c:	f8c5 4148 	str.w	r4, [r5, #328]	; 0x148
 8001820:	4638      	mov	r0, r7
 8001822:	2301      	movs	r3, #1
 8001824:	f8c4 7188 	str.w	r7, [r4, #392]	; 0x188
 8001828:	f8c4 718c 	str.w	r7, [r4, #396]	; 0x18c
 800182c:	2e00      	cmp	r6, #0
 800182e:	d0e1      	beq.n	80017f4 <__register_exitproc+0x40>
 8001830:	e7d0      	b.n	80017d4 <__register_exitproc+0x20>
 8001832:	f8d4 118c 	ldr.w	r1, [r4, #396]	; 0x18c
 8001836:	430a      	orrs	r2, r1
 8001838:	f8c4 218c 	str.w	r2, [r4, #396]	; 0x18c
 800183c:	e7da      	b.n	80017f4 <__register_exitproc+0x40>
 800183e:	f505 74a6 	add.w	r4, r5, #332	; 0x14c
 8001842:	f8c5 4148 	str.w	r4, [r5, #328]	; 0x148
 8001846:	e7c0      	b.n	80017ca <__register_exitproc+0x16>
 8001848:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800184c:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8001850:	08001898 	.word	0x08001898
 8001854:	00000000 	.word	0x00000000

08001858 <register_fini>:
 8001858:	4b02      	ldr	r3, [pc, #8]	; (8001864 <register_fini+0xc>)
 800185a:	b113      	cbz	r3, 8001862 <register_fini+0xa>
 800185c:	4802      	ldr	r0, [pc, #8]	; (8001868 <register_fini+0x10>)
 800185e:	f7ff bf65 	b.w	800172c <atexit>
 8001862:	4770      	bx	lr
 8001864:	00000000 	.word	0x00000000
 8001868:	08001739 	.word	0x08001739

0800186c <_init>:
 800186c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800186e:	bf00      	nop
 8001870:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8001872:	bc08      	pop	{r3}
 8001874:	469e      	mov	lr, r3
 8001876:	4770      	bx	lr

08001878 <_fini>:
 8001878:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800187a:	bf00      	nop
 800187c:	bcf8      	pop	{r3, r4, r5, r6, r7}
 800187e:	bc08      	pop	{r3}
 8001880:	469e      	mov	lr, r3
 8001882:	4770      	bx	lr
