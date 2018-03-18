
temp.elf:     file format elf32-littlearm

Sections:
Idx Name          Size      VMA       LMA       File off  Algn  Flags
  0 .isr_vector   00000188  08000000  08000000  00010000  2**0  CONTENTS, ALLOC, LOAD, READONLY, DATA
  1 .text         00000774  08000188  08000188  00010188  2**2  CONTENTS, ALLOC, LOAD, READONLY, CODE
  2 .rodata       00000008  080008fc  080008fc  000108fc  2**2  CONTENTS, ALLOC, LOAD, READONLY, DATA
  3 .init_array   00000008  08000904  08000904  00010904  2**2  CONTENTS, ALLOC, LOAD, DATA
  4 .fini_array   00000004  0800090c  0800090c  0001090c  2**2  CONTENTS, ALLOC, LOAD, DATA
  5 .data         00000430  20000000  08000910  00020000  2**3  CONTENTS, ALLOC, LOAD, DATA
  6 .ccmram       00000000  10000000  10000000  00020430  2**0  CONTENTS
  7 .bss          00000020  20000430  20000430  00020430  2**2  ALLOC
  8 ._user_heap_stack 00000600  20000450  20000450  00020430  2**0  ALLOC
  9 .ARM.attributes 00000030  00000000  00000000  00020430  2**0  CONTENTS, READONLY
 10 .comment      00000070  00000000  00000000  00020460  2**0  CONTENTS, READONLY
 11 .debug_info   00002fc7  00000000  00000000  000204d0  2**0  CONTENTS, READONLY, DEBUGGING
 12 .debug_abbrev 00000b98  00000000  00000000  00023497  2**0  CONTENTS, READONLY, DEBUGGING
 13 .debug_aranges 000001d8  00000000  00000000  0002402f  2**0  CONTENTS, READONLY, DEBUGGING
 14 .debug_ranges 00000168  00000000  00000000  00024207  2**0  CONTENTS, READONLY, DEBUGGING
 15 .debug_line   00000b07  00000000  00000000  0002436f  2**0  CONTENTS, READONLY, DEBUGGING
 16 .debug_str    000013e7  00000000  00000000  00024e76  2**0  CONTENTS, READONLY, DEBUGGING
 17 .debug_frame  000004f4  00000000  00000000  00026260  2**2  CONTENTS, READONLY, DEBUGGING
 18 .debug_loc    00000413  00000000  00000000  00026754  2**0  CONTENTS, READONLY, DEBUGGING

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
 800019c:	20000433 	.word	0x20000433
 80001a0:	20000430 	.word	0x20000430
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
 80001c0:	20000430 	.word	0x20000430
 80001c4:	20000430 	.word	0x20000430
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
 80001e8:	20000430 	.word	0x20000430
 80001ec:	00000000 	.word	0x00000000
 80001f0:	080008e4 	.word	0x080008e4

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
 800021c:	080008e4 	.word	0x080008e4
 8000220:	20000434 	.word	0x20000434
 8000224:	20000430 	.word	0x20000430
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
 8000256:	f000 fa6f 	bl	8000738 <SystemInit>
 800025a:	f000 fabf 	bl	80007dc <__libc_init_array>
 800025e:	f000 f987 	bl	8000570 <main>
 8000262:	4770      	bx	lr
 8000264:	20020000 	.word	0x20020000
 8000268:	08000910 	.word	0x08000910
 800026c:	20000000 	.word	0x20000000
 8000270:	20000430 	.word	0x20000430
 8000274:	20000430 	.word	0x20000430
 8000278:	20000450 	.word	0x20000450

0800027c <ADC_IRQHandler>:
 800027c:	e7fe      	b.n	800027c <ADC_IRQHandler>
	...

08000280 <NVIC_SetPriority>:
 8000280:	b480      	push	{r7}
 8000282:	b083      	sub	sp, #12
 8000284:	af00      	add	r7, sp, #0
 8000286:	4603      	mov	r3, r0
 8000288:	6039      	str	r1, [r7, #0]
 800028a:	71fb      	strb	r3, [r7, #7]
 800028c:	f997 3007 	ldrsb.w	r3, [r7, #7]
 8000290:	2b00      	cmp	r3, #0
 8000292:	da0b      	bge.n	80002ac <NVIC_SetPriority+0x2c>
 8000294:	490d      	ldr	r1, [pc, #52]	; (80002cc <NVIC_SetPriority+0x4c>)
 8000296:	79fb      	ldrb	r3, [r7, #7]
 8000298:	f003 030f 	and.w	r3, r3, #15
 800029c:	3b04      	subs	r3, #4
 800029e:	683a      	ldr	r2, [r7, #0]
 80002a0:	b2d2      	uxtb	r2, r2
 80002a2:	0112      	lsls	r2, r2, #4
 80002a4:	b2d2      	uxtb	r2, r2
 80002a6:	440b      	add	r3, r1
 80002a8:	761a      	strb	r2, [r3, #24]
 80002aa:	e009      	b.n	80002c0 <NVIC_SetPriority+0x40>
 80002ac:	4908      	ldr	r1, [pc, #32]	; (80002d0 <NVIC_SetPriority+0x50>)
 80002ae:	f997 3007 	ldrsb.w	r3, [r7, #7]
 80002b2:	683a      	ldr	r2, [r7, #0]
 80002b4:	b2d2      	uxtb	r2, r2
 80002b6:	0112      	lsls	r2, r2, #4
 80002b8:	b2d2      	uxtb	r2, r2
 80002ba:	440b      	add	r3, r1
 80002bc:	f883 2300 	strb.w	r2, [r3, #768]	; 0x300
 80002c0:	370c      	adds	r7, #12
 80002c2:	46bd      	mov	sp, r7
 80002c4:	f85d 7b04 	ldr.w	r7, [sp], #4
 80002c8:	4770      	bx	lr
 80002ca:	bf00      	nop
 80002cc:	e000ed00 	.word	0xe000ed00
 80002d0:	e000e100 	.word	0xe000e100

080002d4 <SysTick_Config>:
 80002d4:	b580      	push	{r7, lr}
 80002d6:	b082      	sub	sp, #8
 80002d8:	af00      	add	r7, sp, #0
 80002da:	6078      	str	r0, [r7, #4]
 80002dc:	687b      	ldr	r3, [r7, #4]
 80002de:	3b01      	subs	r3, #1
 80002e0:	f1b3 7f80 	cmp.w	r3, #16777216	; 0x1000000
 80002e4:	d301      	bcc.n	80002ea <SysTick_Config+0x16>
 80002e6:	2301      	movs	r3, #1
 80002e8:	e00f      	b.n	800030a <SysTick_Config+0x36>
 80002ea:	4a0a      	ldr	r2, [pc, #40]	; (8000314 <SysTick_Config+0x40>)
 80002ec:	687b      	ldr	r3, [r7, #4]
 80002ee:	3b01      	subs	r3, #1
 80002f0:	6053      	str	r3, [r2, #4]
 80002f2:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80002f6:	210f      	movs	r1, #15
 80002f8:	f7ff ffc2 	bl	8000280 <NVIC_SetPriority>
 80002fc:	4b05      	ldr	r3, [pc, #20]	; (8000314 <SysTick_Config+0x40>)
 80002fe:	2200      	movs	r2, #0
 8000300:	609a      	str	r2, [r3, #8]
 8000302:	4b04      	ldr	r3, [pc, #16]	; (8000314 <SysTick_Config+0x40>)
 8000304:	2207      	movs	r2, #7
 8000306:	601a      	str	r2, [r3, #0]
 8000308:	2300      	movs	r3, #0
 800030a:	4618      	mov	r0, r3
 800030c:	3708      	adds	r7, #8
 800030e:	46bd      	mov	sp, r7
 8000310:	bd80      	pop	{r7, pc}
 8000312:	bf00      	nop
 8000314:	e000e010 	.word	0xe000e010

08000318 <LL_RCC_HSE_Enable>:
 8000318:	b480      	push	{r7}
 800031a:	af00      	add	r7, sp, #0
 800031c:	4a04      	ldr	r2, [pc, #16]	; (8000330 <LL_RCC_HSE_Enable+0x18>)
 800031e:	4b04      	ldr	r3, [pc, #16]	; (8000330 <LL_RCC_HSE_Enable+0x18>)
 8000320:	681b      	ldr	r3, [r3, #0]
 8000322:	f443 3380 	orr.w	r3, r3, #65536	; 0x10000
 8000326:	6013      	str	r3, [r2, #0]
 8000328:	46bd      	mov	sp, r7
 800032a:	f85d 7b04 	ldr.w	r7, [sp], #4
 800032e:	4770      	bx	lr
 8000330:	40023800 	.word	0x40023800

08000334 <LL_RCC_HSE_IsReady>:
 8000334:	b480      	push	{r7}
 8000336:	af00      	add	r7, sp, #0
 8000338:	4b06      	ldr	r3, [pc, #24]	; (8000354 <LL_RCC_HSE_IsReady+0x20>)
 800033a:	681b      	ldr	r3, [r3, #0]
 800033c:	f403 3300 	and.w	r3, r3, #131072	; 0x20000
 8000340:	2b00      	cmp	r3, #0
 8000342:	bf14      	ite	ne
 8000344:	2301      	movne	r3, #1
 8000346:	2300      	moveq	r3, #0
 8000348:	b2db      	uxtb	r3, r3
 800034a:	4618      	mov	r0, r3
 800034c:	46bd      	mov	sp, r7
 800034e:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000352:	4770      	bx	lr
 8000354:	40023800 	.word	0x40023800

08000358 <LL_RCC_SetSysClkSource>:
 8000358:	b480      	push	{r7}
 800035a:	b083      	sub	sp, #12
 800035c:	af00      	add	r7, sp, #0
 800035e:	6078      	str	r0, [r7, #4]
 8000360:	4906      	ldr	r1, [pc, #24]	; (800037c <LL_RCC_SetSysClkSource+0x24>)
 8000362:	4b06      	ldr	r3, [pc, #24]	; (800037c <LL_RCC_SetSysClkSource+0x24>)
 8000364:	689b      	ldr	r3, [r3, #8]
 8000366:	f023 0203 	bic.w	r2, r3, #3
 800036a:	687b      	ldr	r3, [r7, #4]
 800036c:	4313      	orrs	r3, r2
 800036e:	608b      	str	r3, [r1, #8]
 8000370:	370c      	adds	r7, #12
 8000372:	46bd      	mov	sp, r7
 8000374:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000378:	4770      	bx	lr
 800037a:	bf00      	nop
 800037c:	40023800 	.word	0x40023800

08000380 <LL_RCC_GetSysClkSource>:
 8000380:	b480      	push	{r7}
 8000382:	af00      	add	r7, sp, #0
 8000384:	4b04      	ldr	r3, [pc, #16]	; (8000398 <LL_RCC_GetSysClkSource+0x18>)
 8000386:	689b      	ldr	r3, [r3, #8]
 8000388:	f003 030c 	and.w	r3, r3, #12
 800038c:	4618      	mov	r0, r3
 800038e:	46bd      	mov	sp, r7
 8000390:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000394:	4770      	bx	lr
 8000396:	bf00      	nop
 8000398:	40023800 	.word	0x40023800

0800039c <LL_RCC_SetAHBPrescaler>:
 800039c:	b480      	push	{r7}
 800039e:	b083      	sub	sp, #12
 80003a0:	af00      	add	r7, sp, #0
 80003a2:	6078      	str	r0, [r7, #4]
 80003a4:	4906      	ldr	r1, [pc, #24]	; (80003c0 <LL_RCC_SetAHBPrescaler+0x24>)
 80003a6:	4b06      	ldr	r3, [pc, #24]	; (80003c0 <LL_RCC_SetAHBPrescaler+0x24>)
 80003a8:	689b      	ldr	r3, [r3, #8]
 80003aa:	f023 02f0 	bic.w	r2, r3, #240	; 0xf0
 80003ae:	687b      	ldr	r3, [r7, #4]
 80003b0:	4313      	orrs	r3, r2
 80003b2:	608b      	str	r3, [r1, #8]
 80003b4:	370c      	adds	r7, #12
 80003b6:	46bd      	mov	sp, r7
 80003b8:	f85d 7b04 	ldr.w	r7, [sp], #4
 80003bc:	4770      	bx	lr
 80003be:	bf00      	nop
 80003c0:	40023800 	.word	0x40023800

080003c4 <LL_RCC_SetAPB1Prescaler>:
 80003c4:	b480      	push	{r7}
 80003c6:	b083      	sub	sp, #12
 80003c8:	af00      	add	r7, sp, #0
 80003ca:	6078      	str	r0, [r7, #4]
 80003cc:	4906      	ldr	r1, [pc, #24]	; (80003e8 <LL_RCC_SetAPB1Prescaler+0x24>)
 80003ce:	4b06      	ldr	r3, [pc, #24]	; (80003e8 <LL_RCC_SetAPB1Prescaler+0x24>)
 80003d0:	689b      	ldr	r3, [r3, #8]
 80003d2:	f423 52e0 	bic.w	r2, r3, #7168	; 0x1c00
 80003d6:	687b      	ldr	r3, [r7, #4]
 80003d8:	4313      	orrs	r3, r2
 80003da:	608b      	str	r3, [r1, #8]
 80003dc:	370c      	adds	r7, #12
 80003de:	46bd      	mov	sp, r7
 80003e0:	f85d 7b04 	ldr.w	r7, [sp], #4
 80003e4:	4770      	bx	lr
 80003e6:	bf00      	nop
 80003e8:	40023800 	.word	0x40023800

080003ec <LL_RCC_SetAPB2Prescaler>:
 80003ec:	b480      	push	{r7}
 80003ee:	b083      	sub	sp, #12
 80003f0:	af00      	add	r7, sp, #0
 80003f2:	6078      	str	r0, [r7, #4]
 80003f4:	4906      	ldr	r1, [pc, #24]	; (8000410 <LL_RCC_SetAPB2Prescaler+0x24>)
 80003f6:	4b06      	ldr	r3, [pc, #24]	; (8000410 <LL_RCC_SetAPB2Prescaler+0x24>)
 80003f8:	689b      	ldr	r3, [r3, #8]
 80003fa:	f423 4260 	bic.w	r2, r3, #57344	; 0xe000
 80003fe:	687b      	ldr	r3, [r7, #4]
 8000400:	4313      	orrs	r3, r2
 8000402:	608b      	str	r3, [r1, #8]
 8000404:	370c      	adds	r7, #12
 8000406:	46bd      	mov	sp, r7
 8000408:	f85d 7b04 	ldr.w	r7, [sp], #4
 800040c:	4770      	bx	lr
 800040e:	bf00      	nop
 8000410:	40023800 	.word	0x40023800

08000414 <LL_RCC_PLL_Enable>:
 8000414:	b480      	push	{r7}
 8000416:	af00      	add	r7, sp, #0
 8000418:	4a04      	ldr	r2, [pc, #16]	; (800042c <LL_RCC_PLL_Enable+0x18>)
 800041a:	4b04      	ldr	r3, [pc, #16]	; (800042c <LL_RCC_PLL_Enable+0x18>)
 800041c:	681b      	ldr	r3, [r3, #0]
 800041e:	f043 7380 	orr.w	r3, r3, #16777216	; 0x1000000
 8000422:	6013      	str	r3, [r2, #0]
 8000424:	46bd      	mov	sp, r7
 8000426:	f85d 7b04 	ldr.w	r7, [sp], #4
 800042a:	4770      	bx	lr
 800042c:	40023800 	.word	0x40023800

08000430 <LL_RCC_PLL_IsReady>:
 8000430:	b480      	push	{r7}
 8000432:	af00      	add	r7, sp, #0
 8000434:	4b06      	ldr	r3, [pc, #24]	; (8000450 <LL_RCC_PLL_IsReady+0x20>)
 8000436:	681b      	ldr	r3, [r3, #0]
 8000438:	f003 7300 	and.w	r3, r3, #33554432	; 0x2000000
 800043c:	2b00      	cmp	r3, #0
 800043e:	bf14      	ite	ne
 8000440:	2301      	movne	r3, #1
 8000442:	2300      	moveq	r3, #0
 8000444:	b2db      	uxtb	r3, r3
 8000446:	4618      	mov	r0, r3
 8000448:	46bd      	mov	sp, r7
 800044a:	f85d 7b04 	ldr.w	r7, [sp], #4
 800044e:	4770      	bx	lr
 8000450:	40023800 	.word	0x40023800

08000454 <LL_RCC_PLL_ConfigDomain_SYS>:
 8000454:	b480      	push	{r7}
 8000456:	b085      	sub	sp, #20
 8000458:	af00      	add	r7, sp, #0
 800045a:	60f8      	str	r0, [r7, #12]
 800045c:	60b9      	str	r1, [r7, #8]
 800045e:	607a      	str	r2, [r7, #4]
 8000460:	603b      	str	r3, [r7, #0]
 8000462:	480d      	ldr	r0, [pc, #52]	; (8000498 <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 8000464:	4b0c      	ldr	r3, [pc, #48]	; (8000498 <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 8000466:	685a      	ldr	r2, [r3, #4]
 8000468:	4b0c      	ldr	r3, [pc, #48]	; (800049c <LL_RCC_PLL_ConfigDomain_SYS+0x48>)
 800046a:	4013      	ands	r3, r2
 800046c:	68f9      	ldr	r1, [r7, #12]
 800046e:	68ba      	ldr	r2, [r7, #8]
 8000470:	4311      	orrs	r1, r2
 8000472:	687a      	ldr	r2, [r7, #4]
 8000474:	0192      	lsls	r2, r2, #6
 8000476:	430a      	orrs	r2, r1
 8000478:	4313      	orrs	r3, r2
 800047a:	6043      	str	r3, [r0, #4]
 800047c:	4906      	ldr	r1, [pc, #24]	; (8000498 <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 800047e:	4b06      	ldr	r3, [pc, #24]	; (8000498 <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 8000480:	685b      	ldr	r3, [r3, #4]
 8000482:	f423 3240 	bic.w	r2, r3, #196608	; 0x30000
 8000486:	683b      	ldr	r3, [r7, #0]
 8000488:	4313      	orrs	r3, r2
 800048a:	604b      	str	r3, [r1, #4]
 800048c:	3714      	adds	r7, #20
 800048e:	46bd      	mov	sp, r7
 8000490:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000494:	4770      	bx	lr
 8000496:	bf00      	nop
 8000498:	40023800 	.word	0x40023800
 800049c:	ffbf8000 	.word	0xffbf8000

080004a0 <LL_FLASH_SetLatency>:
 80004a0:	b480      	push	{r7}
 80004a2:	b083      	sub	sp, #12
 80004a4:	af00      	add	r7, sp, #0
 80004a6:	6078      	str	r0, [r7, #4]
 80004a8:	4906      	ldr	r1, [pc, #24]	; (80004c4 <LL_FLASH_SetLatency+0x24>)
 80004aa:	4b06      	ldr	r3, [pc, #24]	; (80004c4 <LL_FLASH_SetLatency+0x24>)
 80004ac:	681b      	ldr	r3, [r3, #0]
 80004ae:	f023 020f 	bic.w	r2, r3, #15
 80004b2:	687b      	ldr	r3, [r7, #4]
 80004b4:	4313      	orrs	r3, r2
 80004b6:	600b      	str	r3, [r1, #0]
 80004b8:	370c      	adds	r7, #12
 80004ba:	46bd      	mov	sp, r7
 80004bc:	f85d 7b04 	ldr.w	r7, [sp], #4
 80004c0:	4770      	bx	lr
 80004c2:	bf00      	nop
 80004c4:	40023c00 	.word	0x40023c00

080004c8 <LL_AHB1_GRP1_EnableClock>:
 80004c8:	b480      	push	{r7}
 80004ca:	b085      	sub	sp, #20
 80004cc:	af00      	add	r7, sp, #0
 80004ce:	6078      	str	r0, [r7, #4]
 80004d0:	4908      	ldr	r1, [pc, #32]	; (80004f4 <LL_AHB1_GRP1_EnableClock+0x2c>)
 80004d2:	4b08      	ldr	r3, [pc, #32]	; (80004f4 <LL_AHB1_GRP1_EnableClock+0x2c>)
 80004d4:	6b1a      	ldr	r2, [r3, #48]	; 0x30
 80004d6:	687b      	ldr	r3, [r7, #4]
 80004d8:	4313      	orrs	r3, r2
 80004da:	630b      	str	r3, [r1, #48]	; 0x30
 80004dc:	4b05      	ldr	r3, [pc, #20]	; (80004f4 <LL_AHB1_GRP1_EnableClock+0x2c>)
 80004de:	6b1a      	ldr	r2, [r3, #48]	; 0x30
 80004e0:	687b      	ldr	r3, [r7, #4]
 80004e2:	4013      	ands	r3, r2
 80004e4:	60fb      	str	r3, [r7, #12]
 80004e6:	68fb      	ldr	r3, [r7, #12]
 80004e8:	3714      	adds	r7, #20
 80004ea:	46bd      	mov	sp, r7
 80004ec:	f85d 7b04 	ldr.w	r7, [sp], #4
 80004f0:	4770      	bx	lr
 80004f2:	bf00      	nop
 80004f4:	40023800 	.word	0x40023800

080004f8 <LL_GPIO_SetPinMode>:
 80004f8:	b480      	push	{r7}
 80004fa:	b089      	sub	sp, #36	; 0x24
 80004fc:	af00      	add	r7, sp, #0
 80004fe:	60f8      	str	r0, [r7, #12]
 8000500:	60b9      	str	r1, [r7, #8]
 8000502:	607a      	str	r2, [r7, #4]
 8000504:	68fb      	ldr	r3, [r7, #12]
 8000506:	681a      	ldr	r2, [r3, #0]
 8000508:	68bb      	ldr	r3, [r7, #8]
 800050a:	61fb      	str	r3, [r7, #28]
 800050c:	69fb      	ldr	r3, [r7, #28]
 800050e:	fa93 f3a3 	rbit	r3, r3
 8000512:	61bb      	str	r3, [r7, #24]
 8000514:	69bb      	ldr	r3, [r7, #24]
 8000516:	fab3 f383 	clz	r3, r3
 800051a:	005b      	lsls	r3, r3, #1
 800051c:	4619      	mov	r1, r3
 800051e:	2303      	movs	r3, #3
 8000520:	408b      	lsls	r3, r1
 8000522:	43db      	mvns	r3, r3
 8000524:	401a      	ands	r2, r3
 8000526:	68bb      	ldr	r3, [r7, #8]
 8000528:	617b      	str	r3, [r7, #20]
 800052a:	697b      	ldr	r3, [r7, #20]
 800052c:	fa93 f3a3 	rbit	r3, r3
 8000530:	613b      	str	r3, [r7, #16]
 8000532:	693b      	ldr	r3, [r7, #16]
 8000534:	fab3 f383 	clz	r3, r3
 8000538:	005b      	lsls	r3, r3, #1
 800053a:	4619      	mov	r1, r3
 800053c:	687b      	ldr	r3, [r7, #4]
 800053e:	408b      	lsls	r3, r1
 8000540:	431a      	orrs	r2, r3
 8000542:	68fb      	ldr	r3, [r7, #12]
 8000544:	601a      	str	r2, [r3, #0]
 8000546:	3724      	adds	r7, #36	; 0x24
 8000548:	46bd      	mov	sp, r7
 800054a:	f85d 7b04 	ldr.w	r7, [sp], #4
 800054e:	4770      	bx	lr

08000550 <LL_GPIO_TogglePin>:
 8000550:	b480      	push	{r7}
 8000552:	b083      	sub	sp, #12
 8000554:	af00      	add	r7, sp, #0
 8000556:	6078      	str	r0, [r7, #4]
 8000558:	6039      	str	r1, [r7, #0]
 800055a:	687b      	ldr	r3, [r7, #4]
 800055c:	695a      	ldr	r2, [r3, #20]
 800055e:	683b      	ldr	r3, [r7, #0]
 8000560:	405a      	eors	r2, r3
 8000562:	687b      	ldr	r3, [r7, #4]
 8000564:	615a      	str	r2, [r3, #20]
 8000566:	370c      	adds	r7, #12
 8000568:	46bd      	mov	sp, r7
 800056a:	f85d 7b04 	ldr.w	r7, [sp], #4
 800056e:	4770      	bx	lr

08000570 <main>:
 8000570:	b580      	push	{r7, lr}
 8000572:	af00      	add	r7, sp, #0
 8000574:	f000 f826 	bl	80005c4 <SystemClock_Config>
 8000578:	2008      	movs	r0, #8
 800057a:	f7ff ffa5 	bl	80004c8 <LL_AHB1_GRP1_EnableClock>
 800057e:	480f      	ldr	r0, [pc, #60]	; (80005bc <main+0x4c>)
 8000580:	f44f 5180 	mov.w	r1, #4096	; 0x1000
 8000584:	2201      	movs	r2, #1
 8000586:	f7ff ffb7 	bl	80004f8 <LL_GPIO_SetPinMode>
 800058a:	480c      	ldr	r0, [pc, #48]	; (80005bc <main+0x4c>)
 800058c:	f44f 5100 	mov.w	r1, #8192	; 0x2000
 8000590:	2201      	movs	r2, #1
 8000592:	f7ff ffb1 	bl	80004f8 <LL_GPIO_SetPinMode>
 8000596:	4809      	ldr	r0, [pc, #36]	; (80005bc <main+0x4c>)
 8000598:	f44f 4180 	mov.w	r1, #16384	; 0x4000
 800059c:	2201      	movs	r2, #1
 800059e:	f7ff ffab 	bl	80004f8 <LL_GPIO_SetPinMode>
 80005a2:	4806      	ldr	r0, [pc, #24]	; (80005bc <main+0x4c>)
 80005a4:	f44f 4100 	mov.w	r1, #32768	; 0x8000
 80005a8:	2201      	movs	r2, #1
 80005aa:	f7ff ffa5 	bl	80004f8 <LL_GPIO_SetPinMode>
 80005ae:	4804      	ldr	r0, [pc, #16]	; (80005c0 <main+0x50>)
 80005b0:	2101      	movs	r1, #1
 80005b2:	2200      	movs	r2, #0
 80005b4:	f7ff ffa0 	bl	80004f8 <LL_GPIO_SetPinMode>
 80005b8:	e7fe      	b.n	80005b8 <main+0x48>
 80005ba:	bf00      	nop
 80005bc:	40020c00 	.word	0x40020c00
 80005c0:	40020000 	.word	0x40020000

080005c4 <SystemClock_Config>:
 80005c4:	b580      	push	{r7, lr}
 80005c6:	af00      	add	r7, sp, #0
 80005c8:	f7ff fea6 	bl	8000318 <LL_RCC_HSE_Enable>
 80005cc:	bf00      	nop
 80005ce:	f7ff feb1 	bl	8000334 <LL_RCC_HSE_IsReady>
 80005d2:	4603      	mov	r3, r0
 80005d4:	2b01      	cmp	r3, #1
 80005d6:	d1fa      	bne.n	80005ce <SystemClock_Config+0xa>
 80005d8:	2005      	movs	r0, #5
 80005da:	f7ff ff61 	bl	80004a0 <LL_FLASH_SetLatency>
 80005de:	f44f 0080 	mov.w	r0, #4194304	; 0x400000
 80005e2:	2108      	movs	r1, #8
 80005e4:	f44f 72a8 	mov.w	r2, #336	; 0x150
 80005e8:	2300      	movs	r3, #0
 80005ea:	f7ff ff33 	bl	8000454 <LL_RCC_PLL_ConfigDomain_SYS>
 80005ee:	f7ff ff11 	bl	8000414 <LL_RCC_PLL_Enable>
 80005f2:	bf00      	nop
 80005f4:	f7ff ff1c 	bl	8000430 <LL_RCC_PLL_IsReady>
 80005f8:	4603      	mov	r3, r0
 80005fa:	2b01      	cmp	r3, #1
 80005fc:	d1fa      	bne.n	80005f4 <SystemClock_Config+0x30>
 80005fe:	2000      	movs	r0, #0
 8000600:	f7ff fecc 	bl	800039c <LL_RCC_SetAHBPrescaler>
 8000604:	2002      	movs	r0, #2
 8000606:	f7ff fea7 	bl	8000358 <LL_RCC_SetSysClkSource>
 800060a:	bf00      	nop
 800060c:	f7ff feb8 	bl	8000380 <LL_RCC_GetSysClkSource>
 8000610:	4603      	mov	r3, r0
 8000612:	2b08      	cmp	r3, #8
 8000614:	d1fa      	bne.n	800060c <SystemClock_Config+0x48>
 8000616:	f44f 50a0 	mov.w	r0, #5120	; 0x1400
 800061a:	f7ff fed3 	bl	80003c4 <LL_RCC_SetAPB1Prescaler>
 800061e:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8000622:	f7ff fee3 	bl	80003ec <LL_RCC_SetAPB2Prescaler>
 8000626:	4803      	ldr	r0, [pc, #12]	; (8000634 <SystemClock_Config+0x70>)
 8000628:	f7ff fe54 	bl	80002d4 <SysTick_Config>
 800062c:	4b02      	ldr	r3, [pc, #8]	; (8000638 <SystemClock_Config+0x74>)
 800062e:	4a03      	ldr	r2, [pc, #12]	; (800063c <SystemClock_Config+0x78>)
 8000630:	601a      	str	r2, [r3, #0]
 8000632:	bd80      	pop	{r7, pc}
 8000634:	00029040 	.word	0x00029040
 8000638:	20000000 	.word	0x20000000
 800063c:	0a037a00 	.word	0x0a037a00

08000640 <NMI_Handler>:
 8000640:	b480      	push	{r7}
 8000642:	af00      	add	r7, sp, #0
 8000644:	46bd      	mov	sp, r7
 8000646:	f85d 7b04 	ldr.w	r7, [sp], #4
 800064a:	4770      	bx	lr

0800064c <HardFault_Handler>:
 800064c:	b480      	push	{r7}
 800064e:	af00      	add	r7, sp, #0
 8000650:	e7fe      	b.n	8000650 <HardFault_Handler+0x4>
 8000652:	bf00      	nop

08000654 <MemManage_Handler>:
 8000654:	b480      	push	{r7}
 8000656:	af00      	add	r7, sp, #0
 8000658:	e7fe      	b.n	8000658 <MemManage_Handler+0x4>
 800065a:	bf00      	nop

0800065c <BusFault_Handler>:
 800065c:	b480      	push	{r7}
 800065e:	af00      	add	r7, sp, #0
 8000660:	e7fe      	b.n	8000660 <BusFault_Handler+0x4>
 8000662:	bf00      	nop

08000664 <UsageFault_Handler>:
 8000664:	b480      	push	{r7}
 8000666:	af00      	add	r7, sp, #0
 8000668:	e7fe      	b.n	8000668 <UsageFault_Handler+0x4>
 800066a:	bf00      	nop

0800066c <SVC_Handler>:
 800066c:	b480      	push	{r7}
 800066e:	af00      	add	r7, sp, #0
 8000670:	46bd      	mov	sp, r7
 8000672:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000676:	4770      	bx	lr

08000678 <DebugMon_Handler>:
 8000678:	b480      	push	{r7}
 800067a:	af00      	add	r7, sp, #0
 800067c:	46bd      	mov	sp, r7
 800067e:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000682:	4770      	bx	lr

08000684 <PendSV_Handler>:
 8000684:	b480      	push	{r7}
 8000686:	af00      	add	r7, sp, #0
 8000688:	46bd      	mov	sp, r7
 800068a:	f85d 7b04 	ldr.w	r7, [sp], #4
 800068e:	4770      	bx	lr

08000690 <SysTick_Handler>:
 8000690:	b580      	push	{r7, lr}
 8000692:	af00      	add	r7, sp, #0
 8000694:	4b26      	ldr	r3, [pc, #152]	; (8000730 <SysTick_Handler+0xa0>)
 8000696:	681b      	ldr	r3, [r3, #0]
 8000698:	3301      	adds	r3, #1
 800069a:	4a25      	ldr	r2, [pc, #148]	; (8000730 <SysTick_Handler+0xa0>)
 800069c:	6013      	str	r3, [r2, #0]
 800069e:	4b24      	ldr	r3, [pc, #144]	; (8000730 <SysTick_Handler+0xa0>)
 80006a0:	681b      	ldr	r3, [r3, #0]
 80006a2:	2b64      	cmp	r3, #100	; 0x64
 80006a4:	d105      	bne.n	80006b2 <SysTick_Handler+0x22>
 80006a6:	4823      	ldr	r0, [pc, #140]	; (8000734 <SysTick_Handler+0xa4>)
 80006a8:	f44f 5180 	mov.w	r1, #4096	; 0x1000
 80006ac:	f7ff ff50 	bl	8000550 <LL_GPIO_TogglePin>
 80006b0:	e02f      	b.n	8000712 <SysTick_Handler+0x82>
 80006b2:	4b1f      	ldr	r3, [pc, #124]	; (8000730 <SysTick_Handler+0xa0>)
 80006b4:	681b      	ldr	r3, [r3, #0]
 80006b6:	f5b3 7ffa 	cmp.w	r3, #500	; 0x1f4
 80006ba:	d10a      	bne.n	80006d2 <SysTick_Handler+0x42>
 80006bc:	481d      	ldr	r0, [pc, #116]	; (8000734 <SysTick_Handler+0xa4>)
 80006be:	f44f 5180 	mov.w	r1, #4096	; 0x1000
 80006c2:	f7ff ff45 	bl	8000550 <LL_GPIO_TogglePin>
 80006c6:	481b      	ldr	r0, [pc, #108]	; (8000734 <SysTick_Handler+0xa4>)
 80006c8:	f44f 5100 	mov.w	r1, #8192	; 0x2000
 80006cc:	f7ff ff40 	bl	8000550 <LL_GPIO_TogglePin>
 80006d0:	e01f      	b.n	8000712 <SysTick_Handler+0x82>
 80006d2:	4b17      	ldr	r3, [pc, #92]	; (8000730 <SysTick_Handler+0xa0>)
 80006d4:	681b      	ldr	r3, [r3, #0]
 80006d6:	f5b3 7f7a 	cmp.w	r3, #1000	; 0x3e8
 80006da:	d10a      	bne.n	80006f2 <SysTick_Handler+0x62>
 80006dc:	4815      	ldr	r0, [pc, #84]	; (8000734 <SysTick_Handler+0xa4>)
 80006de:	f44f 5100 	mov.w	r1, #8192	; 0x2000
 80006e2:	f7ff ff35 	bl	8000550 <LL_GPIO_TogglePin>
 80006e6:	4813      	ldr	r0, [pc, #76]	; (8000734 <SysTick_Handler+0xa4>)
 80006e8:	f44f 4180 	mov.w	r1, #16384	; 0x4000
 80006ec:	f7ff ff30 	bl	8000550 <LL_GPIO_TogglePin>
 80006f0:	e00f      	b.n	8000712 <SysTick_Handler+0x82>
 80006f2:	4b0f      	ldr	r3, [pc, #60]	; (8000730 <SysTick_Handler+0xa0>)
 80006f4:	681b      	ldr	r3, [r3, #0]
 80006f6:	f240 52dc 	movw	r2, #1500	; 0x5dc
 80006fa:	4293      	cmp	r3, r2
 80006fc:	d109      	bne.n	8000712 <SysTick_Handler+0x82>
 80006fe:	480d      	ldr	r0, [pc, #52]	; (8000734 <SysTick_Handler+0xa4>)
 8000700:	f44f 4180 	mov.w	r1, #16384	; 0x4000
 8000704:	f7ff ff24 	bl	8000550 <LL_GPIO_TogglePin>
 8000708:	480a      	ldr	r0, [pc, #40]	; (8000734 <SysTick_Handler+0xa4>)
 800070a:	f44f 4100 	mov.w	r1, #32768	; 0x8000
 800070e:	f7ff ff1f 	bl	8000550 <LL_GPIO_TogglePin>
 8000712:	4b07      	ldr	r3, [pc, #28]	; (8000730 <SysTick_Handler+0xa0>)
 8000714:	681b      	ldr	r3, [r3, #0]
 8000716:	f5b3 6ffa 	cmp.w	r3, #2000	; 0x7d0
 800071a:	d107      	bne.n	800072c <SysTick_Handler+0x9c>
 800071c:	4805      	ldr	r0, [pc, #20]	; (8000734 <SysTick_Handler+0xa4>)
 800071e:	f44f 4100 	mov.w	r1, #32768	; 0x8000
 8000722:	f7ff ff15 	bl	8000550 <LL_GPIO_TogglePin>
 8000726:	4b02      	ldr	r3, [pc, #8]	; (8000730 <SysTick_Handler+0xa0>)
 8000728:	2200      	movs	r2, #0
 800072a:	601a      	str	r2, [r3, #0]
 800072c:	bd80      	pop	{r7, pc}
 800072e:	bf00      	nop
 8000730:	2000044c 	.word	0x2000044c
 8000734:	40020c00 	.word	0x40020c00

08000738 <SystemInit>:
 8000738:	b480      	push	{r7}
 800073a:	af00      	add	r7, sp, #0
 800073c:	4a16      	ldr	r2, [pc, #88]	; (8000798 <SystemInit+0x60>)
 800073e:	4b16      	ldr	r3, [pc, #88]	; (8000798 <SystemInit+0x60>)
 8000740:	f8d3 3088 	ldr.w	r3, [r3, #136]	; 0x88
 8000744:	f443 0370 	orr.w	r3, r3, #15728640	; 0xf00000
 8000748:	f8c2 3088 	str.w	r3, [r2, #136]	; 0x88
 800074c:	4a13      	ldr	r2, [pc, #76]	; (800079c <SystemInit+0x64>)
 800074e:	4b13      	ldr	r3, [pc, #76]	; (800079c <SystemInit+0x64>)
 8000750:	681b      	ldr	r3, [r3, #0]
 8000752:	f043 0301 	orr.w	r3, r3, #1
 8000756:	6013      	str	r3, [r2, #0]
 8000758:	4b10      	ldr	r3, [pc, #64]	; (800079c <SystemInit+0x64>)
 800075a:	2200      	movs	r2, #0
 800075c:	609a      	str	r2, [r3, #8]
 800075e:	4a0f      	ldr	r2, [pc, #60]	; (800079c <SystemInit+0x64>)
 8000760:	4b0e      	ldr	r3, [pc, #56]	; (800079c <SystemInit+0x64>)
 8000762:	681b      	ldr	r3, [r3, #0]
 8000764:	f023 7384 	bic.w	r3, r3, #17301504	; 0x1080000
 8000768:	f423 3380 	bic.w	r3, r3, #65536	; 0x10000
 800076c:	6013      	str	r3, [r2, #0]
 800076e:	4b0b      	ldr	r3, [pc, #44]	; (800079c <SystemInit+0x64>)
 8000770:	4a0b      	ldr	r2, [pc, #44]	; (80007a0 <SystemInit+0x68>)
 8000772:	605a      	str	r2, [r3, #4]
 8000774:	4a09      	ldr	r2, [pc, #36]	; (800079c <SystemInit+0x64>)
 8000776:	4b09      	ldr	r3, [pc, #36]	; (800079c <SystemInit+0x64>)
 8000778:	681b      	ldr	r3, [r3, #0]
 800077a:	f423 2380 	bic.w	r3, r3, #262144	; 0x40000
 800077e:	6013      	str	r3, [r2, #0]
 8000780:	4b06      	ldr	r3, [pc, #24]	; (800079c <SystemInit+0x64>)
 8000782:	2200      	movs	r2, #0
 8000784:	60da      	str	r2, [r3, #12]
 8000786:	4b04      	ldr	r3, [pc, #16]	; (8000798 <SystemInit+0x60>)
 8000788:	f04f 6200 	mov.w	r2, #134217728	; 0x8000000
 800078c:	609a      	str	r2, [r3, #8]
 800078e:	46bd      	mov	sp, r7
 8000790:	f85d 7b04 	ldr.w	r7, [sp], #4
 8000794:	4770      	bx	lr
 8000796:	bf00      	nop
 8000798:	e000ed00 	.word	0xe000ed00
 800079c:	40023800 	.word	0x40023800
 80007a0:	24003010 	.word	0x24003010

080007a4 <atexit>:
 80007a4:	4601      	mov	r1, r0
 80007a6:	2000      	movs	r0, #0
 80007a8:	4602      	mov	r2, r0
 80007aa:	4603      	mov	r3, r0
 80007ac:	f000 b83e 	b.w	800082c <__register_exitproc>

080007b0 <__libc_fini_array>:
 80007b0:	b538      	push	{r3, r4, r5, lr}
 80007b2:	4b08      	ldr	r3, [pc, #32]	; (80007d4 <__libc_fini_array+0x24>)
 80007b4:	4d08      	ldr	r5, [pc, #32]	; (80007d8 <__libc_fini_array+0x28>)
 80007b6:	1aed      	subs	r5, r5, r3
 80007b8:	10ac      	asrs	r4, r5, #2
 80007ba:	bf18      	it	ne
 80007bc:	18ed      	addne	r5, r5, r3
 80007be:	d005      	beq.n	80007cc <__libc_fini_array+0x1c>
 80007c0:	3c01      	subs	r4, #1
 80007c2:	f855 3d04 	ldr.w	r3, [r5, #-4]!
 80007c6:	4798      	blx	r3
 80007c8:	2c00      	cmp	r4, #0
 80007ca:	d1f9      	bne.n	80007c0 <__libc_fini_array+0x10>
 80007cc:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 80007d0:	f000 b88e 	b.w	80008f0 <_fini>
 80007d4:	0800090c 	.word	0x0800090c
 80007d8:	08000910 	.word	0x08000910

080007dc <__libc_init_array>:
 80007dc:	b570      	push	{r4, r5, r6, lr}
 80007de:	4e0f      	ldr	r6, [pc, #60]	; (800081c <__libc_init_array+0x40>)
 80007e0:	4d0f      	ldr	r5, [pc, #60]	; (8000820 <__libc_init_array+0x44>)
 80007e2:	1b76      	subs	r6, r6, r5
 80007e4:	10b6      	asrs	r6, r6, #2
 80007e6:	bf18      	it	ne
 80007e8:	2400      	movne	r4, #0
 80007ea:	d005      	beq.n	80007f8 <__libc_init_array+0x1c>
 80007ec:	3401      	adds	r4, #1
 80007ee:	f855 3b04 	ldr.w	r3, [r5], #4
 80007f2:	4798      	blx	r3
 80007f4:	42a6      	cmp	r6, r4
 80007f6:	d1f9      	bne.n	80007ec <__libc_init_array+0x10>
 80007f8:	4e0a      	ldr	r6, [pc, #40]	; (8000824 <__libc_init_array+0x48>)
 80007fa:	4d0b      	ldr	r5, [pc, #44]	; (8000828 <__libc_init_array+0x4c>)
 80007fc:	1b76      	subs	r6, r6, r5
 80007fe:	f000 f871 	bl	80008e4 <_init>
 8000802:	10b6      	asrs	r6, r6, #2
 8000804:	bf18      	it	ne
 8000806:	2400      	movne	r4, #0
 8000808:	d006      	beq.n	8000818 <__libc_init_array+0x3c>
 800080a:	3401      	adds	r4, #1
 800080c:	f855 3b04 	ldr.w	r3, [r5], #4
 8000810:	4798      	blx	r3
 8000812:	42a6      	cmp	r6, r4
 8000814:	d1f9      	bne.n	800080a <__libc_init_array+0x2e>
 8000816:	bd70      	pop	{r4, r5, r6, pc}
 8000818:	bd70      	pop	{r4, r5, r6, pc}
 800081a:	bf00      	nop
 800081c:	08000904 	.word	0x08000904
 8000820:	08000904 	.word	0x08000904
 8000824:	0800090c 	.word	0x0800090c
 8000828:	08000904 	.word	0x08000904

0800082c <__register_exitproc>:
 800082c:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8000830:	4c25      	ldr	r4, [pc, #148]	; (80008c8 <__register_exitproc+0x9c>)
 8000832:	6825      	ldr	r5, [r4, #0]
 8000834:	f8d5 4148 	ldr.w	r4, [r5, #328]	; 0x148
 8000838:	4606      	mov	r6, r0
 800083a:	4688      	mov	r8, r1
 800083c:	4692      	mov	sl, r2
 800083e:	4699      	mov	r9, r3
 8000840:	b3cc      	cbz	r4, 80008b6 <__register_exitproc+0x8a>
 8000842:	6860      	ldr	r0, [r4, #4]
 8000844:	281f      	cmp	r0, #31
 8000846:	dc18      	bgt.n	800087a <__register_exitproc+0x4e>
 8000848:	1c43      	adds	r3, r0, #1
 800084a:	b17e      	cbz	r6, 800086c <__register_exitproc+0x40>
 800084c:	eb04 0580 	add.w	r5, r4, r0, lsl #2
 8000850:	2101      	movs	r1, #1
 8000852:	f8c5 a088 	str.w	sl, [r5, #136]	; 0x88
 8000856:	f8d4 7188 	ldr.w	r7, [r4, #392]	; 0x188
 800085a:	fa01 f200 	lsl.w	r2, r1, r0
 800085e:	4317      	orrs	r7, r2
 8000860:	2e02      	cmp	r6, #2
 8000862:	f8c4 7188 	str.w	r7, [r4, #392]	; 0x188
 8000866:	f8c5 9108 	str.w	r9, [r5, #264]	; 0x108
 800086a:	d01e      	beq.n	80008aa <__register_exitproc+0x7e>
 800086c:	3002      	adds	r0, #2
 800086e:	6063      	str	r3, [r4, #4]
 8000870:	f844 8020 	str.w	r8, [r4, r0, lsl #2]
 8000874:	2000      	movs	r0, #0
 8000876:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 800087a:	4b14      	ldr	r3, [pc, #80]	; (80008cc <__register_exitproc+0xa0>)
 800087c:	b303      	cbz	r3, 80008c0 <__register_exitproc+0x94>
 800087e:	f44f 70c8 	mov.w	r0, #400	; 0x190
 8000882:	f3af 8000 	nop.w
 8000886:	4604      	mov	r4, r0
 8000888:	b1d0      	cbz	r0, 80008c0 <__register_exitproc+0x94>
 800088a:	f8d5 3148 	ldr.w	r3, [r5, #328]	; 0x148
 800088e:	2700      	movs	r7, #0
 8000890:	e880 0088 	stmia.w	r0, {r3, r7}
 8000894:	f8c5 4148 	str.w	r4, [r5, #328]	; 0x148
 8000898:	4638      	mov	r0, r7
 800089a:	2301      	movs	r3, #1
 800089c:	f8c4 7188 	str.w	r7, [r4, #392]	; 0x188
 80008a0:	f8c4 718c 	str.w	r7, [r4, #396]	; 0x18c
 80008a4:	2e00      	cmp	r6, #0
 80008a6:	d0e1      	beq.n	800086c <__register_exitproc+0x40>
 80008a8:	e7d0      	b.n	800084c <__register_exitproc+0x20>
 80008aa:	f8d4 118c 	ldr.w	r1, [r4, #396]	; 0x18c
 80008ae:	430a      	orrs	r2, r1
 80008b0:	f8c4 218c 	str.w	r2, [r4, #396]	; 0x18c
 80008b4:	e7da      	b.n	800086c <__register_exitproc+0x40>
 80008b6:	f505 74a6 	add.w	r4, r5, #332	; 0x14c
 80008ba:	f8c5 4148 	str.w	r4, [r5, #328]	; 0x148
 80008be:	e7c0      	b.n	8000842 <__register_exitproc+0x16>
 80008c0:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80008c4:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 80008c8:	08000900 	.word	0x08000900
 80008cc:	00000000 	.word	0x00000000

080008d0 <register_fini>:
 80008d0:	4b02      	ldr	r3, [pc, #8]	; (80008dc <register_fini+0xc>)
 80008d2:	b113      	cbz	r3, 80008da <register_fini+0xa>
 80008d4:	4802      	ldr	r0, [pc, #8]	; (80008e0 <register_fini+0x10>)
 80008d6:	f7ff bf65 	b.w	80007a4 <atexit>
 80008da:	4770      	bx	lr
 80008dc:	00000000 	.word	0x00000000
 80008e0:	080007b1 	.word	0x080007b1

080008e4 <_init>:
 80008e4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80008e6:	bf00      	nop
 80008e8:	bcf8      	pop	{r3, r4, r5, r6, r7}
 80008ea:	bc08      	pop	{r3}
 80008ec:	469e      	mov	lr, r3
 80008ee:	4770      	bx	lr

080008f0 <_fini>:
 80008f0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80008f2:	bf00      	nop
 80008f4:	bcf8      	pop	{r3, r4, r5, r6, r7}
 80008f6:	bc08      	pop	{r3}
 80008f8:	469e      	mov	lr, r3
 80008fa:	4770      	bx	lr
