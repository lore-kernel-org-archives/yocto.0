Return-Path: <elvis.dowson@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E136AE00718
	for <yocto@yoctoproject.org>; Sat,  4 Aug 2012 06:57:09 -0700 (PDT)
Received: by pbbrq8 with SMTP id rq8so3478363pbb.35
	for <yocto@yoctoproject.org>; Sat, 04 Aug 2012 06:57:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:message-id:references:to:x-mailer;
	bh=syjjVVmzFNB+KlMVrKPJG3K4CfbwVYArRiqbnTNQ5l8=;
	b=IOOqoG51lmn7E/0YgvCJyWqnpQPrttooM0hmoF3n8ifCQUxOATcEMV654eg8+NL6hV
	Lh3fq0ldHBhMn8u5qa+Eks5eZtFR5hOv60Lj3tI+/9zgp8WTDbMi+NqbHj1Od6yBV9bi
	m8CtYsHyDubCAbIBEjjBlfJuSvhMhS0o/RAQJUCeQN2kXwpG8Xl9DB0Pa61eL7ESXMKi
	vrXnVeqE3jmiO0yOHWcAum3dGUymcUPdK/3z0GosdcYLmVOzUFeZPZcFL5QmRdNhlL+n
	omXf4qtWj1Z3mmNWh6igQ+sVnUsga3xazxicDRVdBixJ4JJN5XZcr1VvQjE5B6APv+wB
	2FeA==
Received: by 10.68.221.38 with SMTP id qb6mr5170274pbc.144.1344088629627;
	Sat, 04 Aug 2012 06:57:09 -0700 (PDT)
Received: from [192.168.1.101] ([94.205.108.162])
	by mx.google.com with ESMTPS id oj8sm1619752pbb.54.2012.08.04.06.57.01
	(version=TLSv1/SSLv3 cipher=OTHER);
	Sat, 04 Aug 2012 06:57:08 -0700 (PDT)
Mime-Version: 1.0 (Apple Message framework v1278)
From: Elvis Dowson <elvis.dowson@gmail.com>
In-Reply-To: <73D923A6-DA97-45D8-88FD-8629055D72AD@gmail.com>
Date: Sat, 4 Aug 2012 17:56:57 +0400
Message-Id: <8E8CFCED-8C1A-48E8-B9E3-C6AB27CD9750@gmail.com>
References: <F1A84E50-21BF-4E9B-BC38-545D72F59A70@gmail.com>
	<654A270B-9C72-4BEA-B51D-79E4C6441594@gmail.com>
	<15982971-CA6D-4E45-833F-AC4E5AA95331@gmail.com>
	<8FA59113-59B4-4F16-B5D5-40CB3011BDE6@gmail.com>
	<73D923A6-DA97-45D8-88FD-8629055D72AD@gmail.com>
To: Khem Raj <raj.khem@gmail.com>,
 Tim Bird <tim.bird@am.sony.com>
X-Mailer: Apple Mail (2.1278)
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: Unable to get serial console login prompt - PowerPC 440 Virtex 5 processor
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sat, 04 Aug 2012 13:57:10 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_8F20FCE9-B4D1-4287-BDE1-B62550B10BF9"

--Apple-Mail=_8F20FCE9-B4D1-4287-BDE1-B62550B10BF9
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Hi,

On Aug 4, 2012, at 6:24 AM, Khem Raj wrote:

> OK couple of things.  You could boot into static bash thats good, keep =
it that way and bundle some dynamically linked programs into the root =
file system
> may be just a hello world which is dynamically linked. I would also =
compile a static version of gdb and strace but that could be next steps.
>=20
> then boot into this static shell and try to run the dynamically linked =
hello world. Does that work ?
> if not we have a dynamic linking issue.=20
>=20
> Then you can go a step deeper and see whats going on. Many  a times =
interpreter is specified wrongly in the elf file.
> and there could be dynamic linker issues too. But step at a time.

I created a new 16GB ramdisk file, and put the core-image-minimal root =
filesystem into it. I then created a static version and a dynamic =
version of the helloworld program.

I find that the static version of the helloworld loads okay, but the =
dynamic version of the helloworld program doesn't give any output.

I guess this means we have a dynamic linking issue.=20

I've attached the outputs of the readelf -h and -S commands, and the =
outputs of the objdump commands for the text and data sections for the =
helloworlddynamic program.

zImage starting: loaded at 0x00800000 (sp: 0x00f37fb0)
Allocating 0x540e0c bytes for kernel ...
gunzipping (0x00000000 <- 0x0080f000:0x00a17de4)...done 0x4235c0 bytes
Attached initrd image at 0x00a18000-0x00f36f10
initrd head: 0x1f8b0808

Linux/PowerPC load: console=3DttyS0,9600n8 ip=3Doff root=3D/dev/ram rw =
rootwait init=3D/helloworlddynamic
Finalizing device tree... flat tree at 0xf440e0
 PM: Adding info for No Bus:ttyv9
[    0.492863] Serial: 8250/16550 driver, 4 ports, IRQ sharing disabled
[    0.498167] 83e00000.serial: ttyS0 at MMIO 0x83e01003 (irq =3D 20) is =
a 16550
[    0.693672] console [ttyS0] enabled
[    0.757577] brd: module loaded
[    0.804366] loop: module loaded
[    0.841663] xsysace 83600000.sysace: Xilinx SystemACE revision 1.0.12
[    0.918399] xsysace 83600000.sysace: No CF in slot
[    0.977368] Xilinx SystemACE device driver, major=3D254
[    1.038331] xilinx_emaclite 81000000.ethernet: Device Tree Probing
[    1.111862] xilinx_emaclite 81000000.ethernet: error registering MDIO =
bus
[    1.192936] xilinx_emaclite 81000000.ethernet: MAC address is now =
00:0a:35:b7:78:00
[    1.286646] xilinx_emaclite 81000000.ethernet: Xilinx EmacLite at =
0x81000000 mapped to 0xD10A0000, irq=3D17
[    1.401504] xilinx_ps2 81480000.ps2: Device Tree Probing 'ps2'
[    1.470737] xilinx_ps2 81480000.ps2: Xilinx PS2 at 0x81480000 mapped =
to 0xd1036000, irq=3D22
[    1.570108] xilinx_ps2 81481000.ps2: Device Tree Probing 'ps2'
[    1.639794] xilinx_ps2 81481000.ps2: Xilinx PS2 at 0x81481000 mapped =
to 0xd1038000, irq=3D23
[    1.740312] mousedev: PS/2 mouse device common for all mice
[    1.807658] i2c /dev entries driver
[    1.849416] Device Tree Probing 'i2c'
[    1.893623] xilinx-iic #0 at 0x81600000 mapped to 0xD10C0000, irq=3D18
[    1.971280] TCP cubic registered
[    2.009127] NET: Registered protocol family 17
[    2.806385] atkbd serio0: keyboard reset failed on xilinxps2/serio at =
81480000
[    3.290656] RAMDISK: gzip image found at block 0
[    3.818580] input: AT Raw Set 2 keyboard as =
/devices/plb.0/xps-ps2.1/81481000.ps2/serio1/input/input0
[    4.750816] VFS: Mounted root (ext2 filesystem) on device 1:0.
[    4.820805] Freeing unused kernel memory: 152k freed


Here is the output of the readelf -h and -S commands:

${CROSS_COMPILE}readelf -h helloworlddynamic
ELF Header:
  Magic:   7f 45 4c 46 01 02 01 00 00 00 00 00 00 00 00 00=20
  Class:                             ELF32
  Data:                              2's complement, big endian
  Version:                           1 (current)
  OS/ABI:                            UNIX - System V
  ABI Version:                       0
  Type:                              EXEC (Executable file)
  Machine:                           PowerPC
  Version:                           0x1
  Entry point address:               0x1000032c
  Start of program headers:          52 (bytes into file)
  Start of section headers:          4216 (bytes into file)
  Flags:                             0x0
  Size of this header:               52 (bytes)
  Size of program headers:           32 (bytes)
  Number of program headers:         8
  Size of section headers:           40 (bytes)
  Number of section headers:         36
  Section header string table index: 33

${CROSS_COMPILE}readelf -S helloworlddynamic
There are 36 section headers, starting at offset 0x1078:

Section Headers:
  [Nr] Name              Type            Addr     Off    Size   ES Flg =
Lk Inf Al
  [ 0]                   NULL            00000000 000000 000000 00      =
0   0  0
  [ 1] .interp           PROGBITS        10000134 000134 00000d 00   A  =
0   0  1
  [ 2] .note.ABI-tag     NOTE            10000144 000144 000020 00   A  =
0   0  4
  [ 3] .gnu.hash         GNU_HASH        10000164 000164 000020 04   A  =
4   0  4
  [ 4] .dynsym           DYNSYM          10000184 000184 000070 10   A  =
5   1  4
  [ 5] .dynstr           STRTAB          100001f4 0001f4 000064 00   A  =
0   0  1
  [ 6] .gnu.version      VERSYM          10000258 000258 00000e 02   A  =
4   0  2
  [ 7] .gnu.version_r    VERNEED         10000268 000268 000030 00   A  =
5   1  4
  [ 8] .rela.dyn         RELA            10000298 000298 00000c 0c   A  =
4   0  4
  [ 9] .rela.plt         RELA            100002a4 0002a4 00003c 0c   A  =
4  23  4
  [10] .init             PROGBITS        100002e0 0002e0 00004c 00  AX  =
0   0  4
  [11] .text             PROGBITS        1000032c 00032c 000348 00  AX  =
0   0  4
  [12] .fini             PROGBITS        10000674 000674 000030 00  AX  =
0   0  4
  [13] .rodata           PROGBITS        100006a4 0006a4 000039 00   A  =
0   0  4
  [14] .eh_frame_hdr     PROGBITS        100006e0 0006e0 000014 00   A  =
0   0  4
  [15] .eh_frame         PROGBITS        100006f4 0006f4 00002c 00   A  =
0   0  4
  [16] .ctors            PROGBITS        10010720 000720 000008 00  WA  =
0   0  4
  [17] .dtors            PROGBITS        10010728 000728 000008 00  WA  =
0   0  4
  [18] .jcr              PROGBITS        10010730 000730 000004 00  WA  =
0   0  4
  [19] .got2             PROGBITS        10010734 000734 000008 00  WA  =
0   0  1
  [20] .dynamic          DYNAMIC         1001073c 00073c 0000c8 08  WA  =
5   0  4
  [21] .data             PROGBITS        10010804 000804 000008 00  WA  =
0   0  4
  [22] .got              PROGBITS        1001080c 00080c 000014 04 WAX  =
0   0  4
  [23] .plt              NOBITS          10010820 000820 000084 00 WAX  =
0   0  4
  [24] .bss              NOBITS          100108a4 000820 000008 00  WA  =
0   0  4
  [25] .comment          PROGBITS        00000000 000820 000027 01  MS  =
0   0  1
  [26] .debug_aranges    PROGBITS        00000000 000847 000038 00      =
0   0  1
  [27] .debug_info       PROGBITS        00000000 00087f 0001d6 00      =
0   0  1
  [28] .debug_abbrev     PROGBITS        00000000 000a55 00014d 00      =
0   0  1
  [29] .debug_line       PROGBITS        00000000 000ba2 000113 00      =
0   0  1
  [30] .debug_frame      PROGBITS        00000000 000cb8 00005c 00      =
0   0  4
  [31] .debug_str        PROGBITS        00000000 000d14 000154 01  MS  =
0   0  1
  [32] .debug_loc        PROGBITS        00000000 000e68 0000cf 00      =
0   0  1
  [33] .shstrtab         STRTAB          00000000 000f37 000140 00      =
0   0  1
  [34] .symtab           SYMTAB          00000000 001618 000520 10     =
35  58  4
  [35] .strtab           STRTAB          00000000 001b38 0002d6 00      =
0   0  1
Key to Flags:
  W (write), A (alloc), X (execute), M (merge), S (strings)
  I (info), L (link order), G (group), T (TLS), E (exclude), x (unknown)
  O (extra OS processing required) o (OS specific), p (processor =
specific)


Here is the output of the objdump command:

${CROSS_COMPILE}objdump -d -j .text helloworlddynamic

helloworlddynamic:     file format elf32-powerpc


Disassembly of section .text:

1000032c <_start>:
1000032c:	7c 29 0b 78 	mr      r9,r1
10000330:	54 21 00 36 	rlwinm  r1,r1,0,0,27
10000334:	38 00 00 00 	li      r0,0
10000338:	94 21 ff f0 	stwu    r1,-16(r1)
1000033c:	7c 08 03 a6 	mtlr    r0
10000340:	90 01 00 00 	stw     r0,0(r1)
10000344:	3d 00 10 00 	lis     r8,4096
10000348:	85 a8 06 a4 	lwzu    r13,1700(r8)
1000034c:	48 01 05 34 	b       10010880 <__libc_start_main@plt>

10000350 <deregister_tm_clones>:
10000350:	3d 20 10 01 	lis     r9,4097
10000354:	3c 60 10 01 	lis     r3,4097
10000358:	39 29 08 0c 	addi    r9,r9,2060
1000035c:	38 63 08 0c 	addi    r3,r3,2060
10000360:	39 29 00 03 	addi    r9,r9,3
10000364:	7d 23 48 50 	subf    r9,r3,r9
10000368:	2b 89 00 06 	cmplwi  cr7,r9,6
1000036c:	4c bd 00 20 	blelr+  cr7
10000370:	3d 20 00 00 	lis     r9,0
10000374:	39 29 00 00 	addi    r9,r9,0
10000378:	2f 89 00 00 	cmpwi   cr7,r9,0
1000037c:	4d 9e 00 20 	beqlr   cr7
10000380:	7d 29 03 a6 	mtctr   r9
10000384:	4e 80 04 20 	bctr

10000388 <register_tm_clones>:
10000388:	3c 60 10 01 	lis     r3,4097
1000038c:	3d 20 10 01 	lis     r9,4097
10000390:	38 63 08 0c 	addi    r3,r3,2060
10000394:	39 29 08 0c 	addi    r9,r9,2060
10000398:	7d 23 48 50 	subf    r9,r3,r9
1000039c:	7d 29 16 70 	srawi   r9,r9,2
100003a0:	7d 24 0e 70 	srawi   r4,r9,1
100003a4:	7c 84 01 95 	addze.  r4,r4
100003a8:	4d a2 00 20 	beqlr+ =20
100003ac:	3d 20 00 00 	lis     r9,0
100003b0:	39 29 00 00 	addi    r9,r9,0
100003b4:	2f 89 00 00 	cmpwi   cr7,r9,0
100003b8:	4d 9e 00 20 	beqlr   cr7
100003bc:	7d 29 03 a6 	mtctr   r9
100003c0:	4e 80 04 20 	bctr

100003c4 <__do_global_dtors_aux>:
100003c4:	94 21 ff e0 	stwu    r1,-32(r1)
100003c8:	7c 08 02 a6 	mflr    r0
100003cc:	93 81 00 10 	stw     r28,16(r1)
100003d0:	3f 80 10 01 	lis     r28,4097
100003d4:	89 3c 08 a4 	lbz     r9,2212(r28)
100003d8:	90 01 00 24 	stw     r0,36(r1)
100003dc:	93 a1 00 14 	stw     r29,20(r1)
100003e0:	2f 89 00 00 	cmpwi   cr7,r9,0
100003e4:	93 c1 00 18 	stw     r30,24(r1)
100003e8:	93 e1 00 1c 	stw     r31,28(r1)
100003ec:	40 9e 00 64 	bne-    cr7,10000450 =
<__do_global_dtors_aux+0x8c>
100003f0:	3f a0 10 01 	lis     r29,4097
100003f4:	3f c0 10 01 	lis     r30,4097
100003f8:	3f e0 10 01 	lis     r31,4097
100003fc:	3b bd 07 28 	addi    r29,r29,1832
10000400:	3b de 07 2c 	addi    r30,r30,1836
10000404:	81 3f 08 a8 	lwz     r9,2216(r31)
10000408:	7f dd f0 50 	subf    r30,r29,r30
1000040c:	3b ff 08 a8 	addi    r31,r31,2216
10000410:	7f de 16 70 	srawi   r30,r30,2
10000414:	3b de ff ff 	addi    r30,r30,-1
10000418:	7f 89 f0 40 	cmplw   cr7,r9,r30
1000041c:	40 9c 00 28 	bge-    cr7,10000444 =
<__do_global_dtors_aux+0x80>
10000420:	39 29 00 01 	addi    r9,r9,1
10000424:	55 2a 10 3a 	rlwinm  r10,r9,2,0,29
10000428:	91 3f 00 00 	stw     r9,0(r31)
1000042c:	7d 3d 50 2e 	lwzx    r9,r29,r10
10000430:	7d 29 03 a6 	mtctr   r9
10000434:	4e 80 04 21 	bctrl
10000438:	81 3f 00 00 	lwz     r9,0(r31)
1000043c:	7f 89 f0 40 	cmplw   cr7,r9,r30
10000440:	41 9c ff e0 	blt+    cr7,10000420 =
<__do_global_dtors_aux+0x5c>
10000444:	4b ff ff 0d 	bl      10000350 <deregister_tm_clones>
10000448:	39 20 00 01 	li      r9,1
1000044c:	99 3c 08 a4 	stb     r9,2212(r28)
10000450:	80 01 00 24 	lwz     r0,36(r1)
10000454:	83 81 00 10 	lwz     r28,16(r1)
10000458:	83 a1 00 14 	lwz     r29,20(r1)
1000045c:	7c 08 03 a6 	mtlr    r0
10000460:	83 c1 00 18 	lwz     r30,24(r1)
10000464:	83 e1 00 1c 	lwz     r31,28(r1)
10000468:	38 21 00 20 	addi    r1,r1,32
1000046c:	4e 80 00 20 	blr

10000470 <call___do_global_dtors_aux>:
10000470:	94 21 ff f0 	stwu    r1,-16(r1)
10000474:	7c 08 02 a6 	mflr    r0
10000478:	90 01 00 14 	stw     r0,20(r1)
1000047c:	80 01 00 14 	lwz     r0,20(r1)
10000480:	38 21 00 10 	addi    r1,r1,16
10000484:	7c 08 03 a6 	mtlr    r0
10000488:	4e 80 00 20 	blr

1000048c <frame_dummy>:
1000048c:	3c 60 10 01 	lis     r3,4097
10000490:	81 23 07 30 	lwz     r9,1840(r3)
10000494:	38 63 07 30 	addi    r3,r3,1840
10000498:	2f 89 00 00 	cmpwi   cr7,r9,0
1000049c:	41 9e 00 38 	beq-    cr7,100004d4 <frame_dummy+0x48>
100004a0:	3d 20 00 00 	lis     r9,0
100004a4:	39 29 00 00 	addi    r9,r9,0
100004a8:	2f 89 00 00 	cmpwi   cr7,r9,0
100004ac:	41 9e 00 28 	beq-    cr7,100004d4 <frame_dummy+0x48>
100004b0:	94 21 ff f0 	stwu    r1,-16(r1)
100004b4:	7c 08 02 a6 	mflr    r0
100004b8:	7d 29 03 a6 	mtctr   r9
100004bc:	90 01 00 14 	stw     r0,20(r1)
100004c0:	4e 80 04 21 	bctrl
100004c4:	80 01 00 14 	lwz     r0,20(r1)
100004c8:	38 21 00 10 	addi    r1,r1,16
100004cc:	7c 08 03 a6 	mtlr    r0
100004d0:	4b ff fe b8 	b       10000388 <register_tm_clones>
100004d4:	4b ff fe b4 	b       10000388 <register_tm_clones>

100004d8 <call_frame_dummy>:
100004d8:	94 21 ff f0 	stwu    r1,-16(r1)
100004dc:	7c 08 02 a6 	mflr    r0
100004e0:	90 01 00 14 	stw     r0,20(r1)
100004e4:	80 01 00 14 	lwz     r0,20(r1)
100004e8:	38 21 00 10 	addi    r1,r1,16
100004ec:	7c 08 03 a6 	mtlr    r0
100004f0:	4e 80 00 20 	blr

100004f4 <main>:
100004f4:	94 21 ff f0 	stwu    r1,-16(r1)
100004f8:	7c 08 02 a6 	mflr    r0
100004fc:	90 01 00 14 	stw     r0,20(r1)
10000500:	93 e1 00 0c 	stw     r31,12(r1)
10000504:	7c 3f 0b 78 	mr      r31,r1
10000508:	38 60 00 0a 	li      r3,10
1000050c:	48 01 03 7d 	bl      10010888 <putchar@plt>
10000510:	3d 20 10 00 	lis     r9,4096
10000514:	38 69 06 b8 	addi    r3,r9,1720
10000518:	3d 20 10 00 	lis     r9,4096
1000051c:	38 89 06 d0 	addi    r4,r9,1744
10000520:	48 01 03 49 	bl      10010868 <printf@plt>
10000524:	3d 20 3b 9a 	lis     r9,15258
10000528:	61 23 c9 ff 	ori     r3,r9,51711
1000052c:	48 01 03 45 	bl      10010870 <sleep@plt>
10000530:	39 20 00 00 	li      r9,0
10000534:	7d 23 4b 78 	mr      r3,r9
10000538:	39 7f 00 10 	addi    r11,r31,16
1000053c:	80 0b 00 04 	lwz     r0,4(r11)
10000540:	7c 08 03 a6 	mtlr    r0
10000544:	83 eb ff fc 	lwz     r31,-4(r11)
10000548:	7d 61 5b 78 	mr      r1,r11
1000054c:	4e 80 00 20 	blr
10000550:	00 01 81 d4 	.long 0x181d4

10000554 <__libc_csu_init>:
10000554:	94 21 ff d0 	stwu    r1,-48(r1)
10000558:	7c 08 02 a6 	mflr    r0
1000055c:	42 9f 00 05 	bcl-    20,4*cr7+so,10000560 =
<__libc_csu_init+0xc>
10000560:	93 c1 00 28 	stw     r30,40(r1)
10000564:	7f c8 02 a6 	mflr    r30
10000568:	90 01 00 34 	stw     r0,52(r1)
1000056c:	80 1e ff f0 	lwz     r0,-16(r30)
10000570:	93 21 00 14 	stw     r25,20(r1)
10000574:	7c 79 1b 78 	mr      r25,r3
10000578:	93 41 00 18 	stw     r26,24(r1)
1000057c:	7c 9a 23 78 	mr      r26,r4
10000580:	7f c0 f2 14 	add     r30,r0,r30
10000584:	93 61 00 1c 	stw     r27,28(r1)
10000588:	93 81 00 20 	stw     r28,32(r1)
1000058c:	7c bb 2b 78 	mr      r27,r5
10000590:	93 a1 00 24 	stw     r29,36(r1)
10000594:	93 e1 00 2c 	stw     r31,44(r1)
10000598:	4b ff fd 49 	bl      100002e0 <_init>
1000059c:	81 3e 80 04 	lwz     r9,-32764(r30)
100005a0:	3b e0 00 00 	li      r31,0
100005a4:	83 9e 80 00 	lwz     r28,-32768(r30)
100005a8:	3b a9 ff fc 	addi    r29,r9,-4
100005ac:	7f 89 e0 50 	subf    r28,r9,r28
100005b0:	7f 9c 16 71 	srawi.  r28,r28,2
100005b4:	41 82 00 28 	beq-    100005dc <__libc_csu_init+0x88>
100005b8:	85 3d 00 04 	lwzu    r9,4(r29)
100005bc:	7f 23 cb 78 	mr      r3,r25
100005c0:	7f 44 d3 78 	mr      r4,r26
100005c4:	7f 65 db 78 	mr      r5,r27
100005c8:	3b ff 00 01 	addi    r31,r31,1
100005cc:	7d 29 03 a6 	mtctr   r9
100005d0:	4e 80 04 21 	bctrl
100005d4:	7f 9f e0 00 	cmpw    cr7,r31,r28
100005d8:	40 9e ff e0 	bne+    cr7,100005b8 =
<__libc_csu_init+0x64>
100005dc:	80 01 00 34 	lwz     r0,52(r1)
100005e0:	83 21 00 14 	lwz     r25,20(r1)
100005e4:	83 41 00 18 	lwz     r26,24(r1)
100005e8:	7c 08 03 a6 	mtlr    r0
100005ec:	83 61 00 1c 	lwz     r27,28(r1)
100005f0:	83 81 00 20 	lwz     r28,32(r1)
100005f4:	83 a1 00 24 	lwz     r29,36(r1)
100005f8:	83 c1 00 28 	lwz     r30,40(r1)
100005fc:	83 e1 00 2c 	lwz     r31,44(r1)
10000600:	38 21 00 30 	addi    r1,r1,48
10000604:	4e 80 00 20 	blr

10000608 <__libc_csu_fini>:
10000608:	4e 80 00 20 	blr

1000060c <__do_global_ctors_aux>:
1000060c:	94 21 ff f0 	stwu    r1,-16(r1)
10000610:	7c 08 02 a6 	mflr    r0
10000614:	90 01 00 14 	stw     r0,20(r1)
10000618:	93 e1 00 0c 	stw     r31,12(r1)
1000061c:	3f e0 10 01 	lis     r31,4097
10000620:	3b ff 07 24 	addi    r31,r31,1828
10000624:	85 3f ff fc 	lwzu    r9,-4(r31)
10000628:	2f 89 ff ff 	cmpwi   cr7,r9,-1
1000062c:	41 9e 00 18 	beq-    cr7,10000644 =
<__do_global_ctors_aux+0x38>
10000630:	7d 29 03 a6 	mtctr   r9
10000634:	4e 80 04 21 	bctrl
10000638:	85 3f ff fc 	lwzu    r9,-4(r31)
1000063c:	2f 89 ff ff 	cmpwi   cr7,r9,-1
10000640:	40 9e ff f0 	bne+    cr7,10000630 =
<__do_global_ctors_aux+0x24>
10000644:	80 01 00 14 	lwz     r0,20(r1)
10000648:	83 e1 00 0c 	lwz     r31,12(r1)
1000064c:	38 21 00 10 	addi    r1,r1,16
10000650:	7c 08 03 a6 	mtlr    r0
10000654:	4e 80 00 20 	blr

10000658 <call___do_global_ctors_aux>:
10000658:	94 21 ff f0 	stwu    r1,-16(r1)
1000065c:	7c 08 02 a6 	mflr    r0
10000660:	90 01 00 14 	stw     r0,20(r1)
10000664:	80 01 00 14 	lwz     r0,20(r1)
10000668:	38 21 00 10 	addi    r1,r1,16
1000066c:	7c 08 03 a6 	mtlr    r0
10000670:	4e 80 00 20 	blr


${CROSS_COMPILE}objdump -d -j .data helloworlddynamic

helloworlddynamic:     file format elf32-powerpc


Disassembly of section .data:

10010804 <__data_start>:
10010804:	00 00 00 00 	.long 0x0

10010808 <__dso_handle>:
10010808:	00 00 00 00                                         ....


I'm not sure what to infer with all this data, what should I be looking =
at or checking, to try to find out what's going wrong with dynamic =
linked programs built with gcc-4.7.2 for PowerPC440 ?

Best regards,

Elvis Dowson=

--Apple-Mail=_8F20FCE9-B4D1-4287-BDE1-B62550B10BF9
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space; =
">Hi,<div><br><div><div>On Aug 4, 2012, at 6:24 AM, Khem Raj =
wrote:</div><br class=3D"Apple-interchange-newline"><blockquote =
type=3D"cite"><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dus-ascii"><div style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space; =
"><div><div>OK couple of things. &nbsp;You could boot into static bash =
thats good, keep it that way and bundle some dynamically linked programs =
into the root file system</div><div>may be just a hello world which is =
dynamically linked. I would also compile a static version of gdb and =
strace but that could be next steps.</div><div><br></div><div>then boot =
into this static shell and try to run the dynamically linked hello =
world. Does that work ?</div><div>if not we have a dynamic linking =
issue.&nbsp;</div><div><br></div><div>Then you can go a step deeper and =
see whats going on. Many &nbsp;a times interpreter is specified wrongly =
in the elf file.</div><div>and there could be dynamic linker issues too. =
But step at a time.</div></div></div></blockquote><br></div><div>I =
created a new 16GB ramdisk file, and put the core-image-minimal root =
filesystem into it. I then created a static version and a dynamic =
version of the helloworld program.</div></div><div><br></div><div>I find =
that the static version of the helloworld loads okay, but the dynamic =
version of the helloworld program doesn't give any =
output.</div><div><br></div><div>I guess this means we have a dynamic =
linking issue.&nbsp;</div><div><br></div><div>I've attached the outputs =
of the readelf -h and -S commands, and the outputs of the objdump =
commands for the text and data sections for the helloworlddynamic =
program.</div><div><br></div><div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">zImage starting: loaded at 0x00800000 (sp: =
0x00f37fb0)</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">Allocating 0x540e0c bytes for kernel =
...</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">gunzipping (0x00000000 &lt;- 0x0080f000:0x00a17de4)...done =
0x4235c0 bytes</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">Attached initrd image at =
0x00a18000-0x00f36f10</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">initrd head: =
0x1f8b0808</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2"><br></font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">Linux/PowerPC =
load: console=3DttyS0,9600n8 ip=3Doff root=3D/dev/ram rw rootwait =
init=3D/helloworlddynamic</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">Finalizing device =
tree... flat tree at 0xf440e0</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp;PM: Adding =
info for No Bus:ttyv9</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">[ &nbsp; &nbsp;0.492863] Serial: 8250/16550 =
driver, 4 ports, IRQ sharing disabled</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp; =
&nbsp;0.498167] 83e00000.serial: ttyS0 at MMIO 0x83e01003 (irq =3D 20) =
is a 16550</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">[ &nbsp; &nbsp;0.693672] console [ttyS0] =
enabled</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">[ &nbsp; &nbsp;0.757577] brd: module =
loaded</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">[ &nbsp; &nbsp;0.804366] loop: module =
loaded</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">[ &nbsp; &nbsp;0.841663] xsysace 83600000.sysace: Xilinx =
SystemACE revision 1.0.12</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp; =
&nbsp;0.918399] xsysace 83600000.sysace: No CF in =
slot</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">[ &nbsp; &nbsp;0.977368] Xilinx SystemACE device driver, =
major=3D254</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">[ &nbsp; &nbsp;1.038331] xilinx_emaclite =
81000000.ethernet: Device Tree Probing</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp; =
&nbsp;1.111862] xilinx_emaclite 81000000.ethernet: error registering =
MDIO bus</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco"=
 size=3D"2">[ &nbsp; &nbsp;1.192936] xilinx_emaclite 81000000.ethernet: =
MAC address is now 00:0a:35:b7:78:00</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp; =
&nbsp;1.286646] xilinx_emaclite 81000000.ethernet: Xilinx EmacLite at =
0x81000000 mapped to 0xD10A0000, irq=3D17</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp; =
&nbsp;1.401504] xilinx_ps2 81480000.ps2: Device Tree Probing =
'ps2'</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">[ &nbsp; &nbsp;1.470737] xilinx_ps2 81480000.ps2: Xilinx PS2 =
at 0x81480000 mapped to 0xd1036000, irq=3D22</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp; =
&nbsp;1.570108] xilinx_ps2 81481000.ps2: Device Tree Probing =
'ps2'</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">[ &nbsp; &nbsp;1.639794] xilinx_ps2 81481000.ps2: Xilinx PS2 =
at 0x81481000 mapped to 0xd1038000, irq=3D23</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp; =
&nbsp;1.740312] mousedev: PS/2 mouse device common for all =
mice</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">[ &nbsp; &nbsp;1.807658] i2c /dev entries =
driver</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">[ &nbsp; &nbsp;1.849416] Device Tree Probing =
'i2c'</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">[ &nbsp; &nbsp;1.893623] xilinx-iic #0 at 0x81600000 mapped =
to 0xD10C0000, irq=3D18</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">[ &nbsp; &nbsp;1.971280] TCP cubic =
registered</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">[ &nbsp; &nbsp;2.009127] NET: Registered =
protocol family 17</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">[ &nbsp; &nbsp;2.806385] atkbd serio0: =
keyboard reset failed on xilinxps2/serio at =
81480000</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco"=
 size=3D"2">[ &nbsp; &nbsp;3.290656] RAMDISK: gzip image found at block =
0</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">[ &nbsp; &nbsp;3.818580] input: AT Raw Set 2 keyboard as =
/devices/plb.0/xps-ps2.1/81481000.ps2/serio1/input/input0</font></div><div=
><font class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">[ &nbsp; =
&nbsp;4.750816] VFS: Mounted root (ext2 filesystem) on device =
1:0.</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">[ &nbsp; &nbsp;4.820805] Freeing unused kernel memory: 152k =
freed</font></div><div><br></div><div><br></div><div>Here is the output =
of the readelf -h and -S commands:</div><div><br></div><div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2" =
color=3D"#103ffb">${CROSS_COMPILE}readelf -h =
helloworlddynamic</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">ELF Header:</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp; Magic: =
&nbsp; 7f 45 4c 46 01 02 01 00 00 00 00 00 00 00 00 =
00&nbsp;</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco"=
 size=3D"2">&nbsp; Class: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
ELF32</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp; Data: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;2's complement, =
big endian</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp; Version: &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1 =
(current)</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp; OS/ABI: &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;UNIX - System V</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp; ABI Version: &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
0</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp; Type: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;EXEC (Executable =
file)</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp; Machine: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
PowerPC</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp; Version: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
0x1</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp; Entry point address: &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; 0x1000032c</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp; Start of =
program headers: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;52 (bytes into =
file)</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp; Start of section headers: &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;4216 (bytes into file)</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp; Flags: =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; 0x0</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp; Size of =
this header: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 52 =
(bytes)</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2">&nbsp; Size of program headers: &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; 32 (bytes)</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp; Number of program headers: &nbsp; =
&nbsp; &nbsp; &nbsp; 8</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">&nbsp; Size of section headers: &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; 40 (bytes)</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp; Number of =
section headers: &nbsp; &nbsp; &nbsp; &nbsp; 36</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">&nbsp; Section =
header string table index: 33</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2"><br></font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2"><div><font class=3D"Apple-style-span" =
color=3D"#103ffb">${CROSS_COMPILE}readelf -S =
helloworlddynamic</font></div><div>There are 36 section headers, =
starting at offset 0x1078:</div><div><br></div><div>Section =
Headers:</div><div>&nbsp; [Nr] Name &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp;Type &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Addr &nbsp; =
&nbsp; Off &nbsp; &nbsp;Size &nbsp; ES Flg Lk Inf Al</div><div>&nbsp; [ =
0] &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; NULL =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;00000000 000000 000000 00 =
&nbsp; &nbsp; &nbsp;0 &nbsp; 0 &nbsp;0</div><div>&nbsp; [ 1] .interp =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; PROGBITS &nbsp; &nbsp; &nbsp; =
&nbsp;10000134 000134 00000d 00 &nbsp; A &nbsp;0 &nbsp; 0 =
&nbsp;1</div><div>&nbsp; [ 2] .note.ABI-tag &nbsp; &nbsp; NOTE &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;10000144 000144 000020 00 &nbsp; A =
&nbsp;0 &nbsp; 0 &nbsp;4</div><div>&nbsp; [ 3] .gnu.hash &nbsp; &nbsp; =
&nbsp; &nbsp; GNU_HASH &nbsp; &nbsp; &nbsp; &nbsp;10000164 000164 000020 =
04 &nbsp; A &nbsp;4 &nbsp; 0 &nbsp;4</div><div>&nbsp; [ 4] .dynsym =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; DYNSYM &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;10000184 000184 000070 10 &nbsp; A &nbsp;5 &nbsp; 1 =
&nbsp;4</div><div>&nbsp; [ 5] .dynstr &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
STRTAB &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;100001f4 0001f4 000064 00 =
&nbsp; A &nbsp;0 &nbsp; 0 &nbsp;1</div><div>&nbsp; [ 6] .gnu.version =
&nbsp; &nbsp; &nbsp;VERSYM &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;10000258 =
000258 00000e 02 &nbsp; A &nbsp;4 &nbsp; 0 &nbsp;2</div><div>&nbsp; [ 7] =
.gnu.version_r &nbsp; &nbsp;VERNEED &nbsp; &nbsp; &nbsp; &nbsp; 10000268 =
000268 000030 00 &nbsp; A &nbsp;5 &nbsp; 1 &nbsp;4</div><div>&nbsp; [ 8] =
.rela.dyn &nbsp; &nbsp; &nbsp; &nbsp; RELA &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp;10000298 000298 00000c 0c &nbsp; A &nbsp;4 &nbsp; 0 =
&nbsp;4</div><div>&nbsp; [ 9] .rela.plt &nbsp; &nbsp; &nbsp; &nbsp; RELA =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;100002a4 0002a4 00003c 0c =
&nbsp; A &nbsp;4 &nbsp;23 &nbsp;4</div><div>&nbsp; [10] .init &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; PROGBITS &nbsp; &nbsp; &nbsp; =
&nbsp;100002e0 0002e0 00004c 00 &nbsp;AX &nbsp;0 &nbsp; 0 =
&nbsp;4</div><div>&nbsp; [11] .text &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; PROGBITS &nbsp; &nbsp; &nbsp; &nbsp;1000032c 00032c 000348 00 =
&nbsp;AX &nbsp;0 &nbsp; 0 &nbsp;4</div><div>&nbsp; [12] .fini &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; PROGBITS &nbsp; &nbsp; &nbsp; =
&nbsp;10000674 000674 000030 00 &nbsp;AX &nbsp;0 &nbsp; 0 =
&nbsp;4</div><div>&nbsp; [13] .rodata &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
PROGBITS &nbsp; &nbsp; &nbsp; &nbsp;100006a4 0006a4 000039 00 &nbsp; A =
&nbsp;0 &nbsp; 0 &nbsp;4</div><div>&nbsp; [14] .eh_frame_hdr &nbsp; =
&nbsp; PROGBITS &nbsp; &nbsp; &nbsp; &nbsp;100006e0 0006e0 000014 00 =
&nbsp; A &nbsp;0 &nbsp; 0 &nbsp;4</div><div>&nbsp; [15] .eh_frame &nbsp; =
&nbsp; &nbsp; &nbsp; PROGBITS &nbsp; &nbsp; &nbsp; &nbsp;100006f4 0006f4 =
00002c 00 &nbsp; A &nbsp;0 &nbsp; 0 &nbsp;4</div><div>&nbsp; [16] .ctors =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;PROGBITS &nbsp; &nbsp; &nbsp; =
&nbsp;10010720 000720 000008 00 &nbsp;WA &nbsp;0 &nbsp; 0 =
&nbsp;4</div><div>&nbsp; [17] .dtors &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;PROGBITS &nbsp; &nbsp; &nbsp; &nbsp;10010728 000728 000008 00 =
&nbsp;WA &nbsp;0 &nbsp; 0 &nbsp;4</div><div>&nbsp; [18] .jcr &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;PROGBITS &nbsp; &nbsp; &nbsp; =
&nbsp;10010730 000730 000004 00 &nbsp;WA &nbsp;0 &nbsp; 0 =
&nbsp;4</div><div>&nbsp; [19] .got2 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; PROGBITS &nbsp; &nbsp; &nbsp; &nbsp;10010734 000734 000008 00 =
&nbsp;WA &nbsp;0 &nbsp; 0 &nbsp;1</div><div>&nbsp; [20] .dynamic &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp;DYNAMIC &nbsp; &nbsp; &nbsp; &nbsp; 1001073c =
00073c 0000c8 08 &nbsp;WA &nbsp;5 &nbsp; 0 &nbsp;4</div><div>&nbsp; [21] =
.data &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; PROGBITS &nbsp; &nbsp; =
&nbsp; &nbsp;10010804 000804 000008 00 &nbsp;WA &nbsp;0 &nbsp; 0 =
&nbsp;4</div><div>&nbsp; [22] .got &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp;PROGBITS &nbsp; &nbsp; &nbsp; &nbsp;1001080c 00080c 000014 =
04 WAX &nbsp;0 &nbsp; 0 &nbsp;4</div><div>&nbsp; [23] .plt &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;NOBITS &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;10010820 000820 000084 00 WAX &nbsp;0 &nbsp; 0 =
&nbsp;4</div><div>&nbsp; [24] .bss &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp;NOBITS &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;100108a4 000820 =
000008 00 &nbsp;WA &nbsp;0 &nbsp; 0 &nbsp;4</div><div>&nbsp; [25] =
.comment &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;PROGBITS &nbsp; &nbsp; &nbsp; =
&nbsp;00000000 000820 000027 01 &nbsp;MS &nbsp;0 &nbsp; 0 =
&nbsp;1</div><div>&nbsp; [26] .debug_aranges &nbsp; &nbsp;PROGBITS =
&nbsp; &nbsp; &nbsp; &nbsp;00000000 000847 000038 00 &nbsp; &nbsp; =
&nbsp;0 &nbsp; 0 &nbsp;1</div><div>&nbsp; [27] .debug_info &nbsp; &nbsp; =
&nbsp; PROGBITS &nbsp; &nbsp; &nbsp; &nbsp;00000000 00087f 0001d6 00 =
&nbsp; &nbsp; &nbsp;0 &nbsp; 0 &nbsp;1</div><div>&nbsp; [28] =
.debug_abbrev &nbsp; &nbsp; PROGBITS &nbsp; &nbsp; &nbsp; &nbsp;00000000 =
000a55 00014d 00 &nbsp; &nbsp; &nbsp;0 &nbsp; 0 &nbsp;1</div><div>&nbsp; =
[29] .debug_line &nbsp; &nbsp; &nbsp; PROGBITS &nbsp; &nbsp; &nbsp; =
&nbsp;00000000 000ba2 000113 00 &nbsp; &nbsp; &nbsp;0 &nbsp; 0 =
&nbsp;1</div><div>&nbsp; [30] .debug_frame &nbsp; &nbsp; &nbsp;PROGBITS =
&nbsp; &nbsp; &nbsp; &nbsp;00000000 000cb8 00005c 00 &nbsp; &nbsp; =
&nbsp;0 &nbsp; 0 &nbsp;4</div><div>&nbsp; [31] .debug_str &nbsp; &nbsp; =
&nbsp; &nbsp;PROGBITS &nbsp; &nbsp; &nbsp; &nbsp;00000000 000d14 000154 =
01 &nbsp;MS &nbsp;0 &nbsp; 0 &nbsp;1</div><div>&nbsp; [32] .debug_loc =
&nbsp; &nbsp; &nbsp; &nbsp;PROGBITS &nbsp; &nbsp; &nbsp; &nbsp;00000000 =
000e68 0000cf 00 &nbsp; &nbsp; &nbsp;0 &nbsp; 0 &nbsp;1</div><div>&nbsp; =
[33] .shstrtab &nbsp; &nbsp; &nbsp; &nbsp; STRTAB &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp;00000000 000f37 000140 00 &nbsp; &nbsp; &nbsp;0 &nbsp; 0 =
&nbsp;1</div><div>&nbsp; [34] .symtab &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
SYMTAB &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;00000000 001618 000520 10 =
&nbsp; &nbsp; 35 &nbsp;58 &nbsp;4</div><div>&nbsp; [35] .strtab &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; STRTAB &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;00000000 001b38 0002d6 00 &nbsp; &nbsp; &nbsp;0 &nbsp; 0 =
&nbsp;1</div><div>Key to Flags:</div><div>&nbsp; W (write), A (alloc), X =
(execute), M (merge), S (strings)</div><div>&nbsp; I (info), L (link =
order), G (group), T (TLS), E (exclude), x (unknown)</div><div>&nbsp; O =
(extra OS processing required) o (OS specific), p (processor =
specific)</div><div><br></div></font></div><div><br></div><div>Here is =
the output of the objdump command:</div><div><br></div><div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2" =
color=3D"#103ffb">${CROSS_COMPILE}objdump -d -j .text =
helloworlddynamic</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2"><br></font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">helloworlddynamic: =
&nbsp; &nbsp; file format elf32-powerpc</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2"><br></font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2"><br></font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">Disassembly of =
section .text:</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2"><br></font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">1000032c =
&lt;_start&gt;:</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">1000032c:<span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>7c 29 0b 78 <span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>mr &nbsp; =
&nbsp; &nbsp;r9,r1</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">10000330:<span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>54 21 00 36 <span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>rlwinm =
&nbsp;r1,r1,0,0,27</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">10000334:<span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>38 00 00 00 <span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>li &nbsp; =
&nbsp; &nbsp;r0,0</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">10000338:<span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>94 21 ff f0 <span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>stwu =
&nbsp; &nbsp;r1,-16(r1)</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">1000033c:<span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>7c 08 03 a6 <span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>mtlr =
&nbsp; &nbsp;r0</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">10000340:<span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>90 01 00 00 <span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>stw =
&nbsp; &nbsp; r0,0(r1)</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">10000344:<span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>3d 00 10 00 <span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>lis =
&nbsp; &nbsp; r8,4096</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">10000348:<span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>85 a8 06 a4 <span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>lwzu =
&nbsp; &nbsp;r13,1700(r8)</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">1000034c:<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>48 01 05 =
34 <span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>b =
&nbsp; &nbsp; &nbsp; 10010880 =
&lt;__libc_start_main@plt&gt;</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2"><br></font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">10000350 =
&lt;deregister_tm_clones&gt;:</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">10000350:<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>3d 20 10 =
01 <span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>lis &nbsp; &nbsp; r9,4097</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">10000354:<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>3c 60 10 =
01 <span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>lis &nbsp; &nbsp; r3,4097</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">10000358:<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>39 29 08 =
0c <span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>addi &nbsp; &nbsp;r9,r9,2060</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">1000035c:<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>38 63 08 =
0c <span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>addi &nbsp; &nbsp;r3,r3,2060</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">10000360:<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>39 29 00 =
03 <span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>addi &nbsp; &nbsp;r9,r9,3</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">10000364:<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>7d 23 48 =
50 <span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>subf &nbsp; &nbsp;r9,r3,r9</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">10000368:<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>2b 89 00 =
06 <span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>cmplwi &nbsp;cr7,r9,6</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">1000036c:<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>4c bd 00 =
20 <span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>blelr+ &nbsp;cr7</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">10000370:<span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>3d 20 00 00 <span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>lis =
&nbsp; &nbsp; r9,0</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">10000374:<span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>39 29 00 00 <span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>addi =
&nbsp; &nbsp;r9,r9,0</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">10000378:<span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>2f 89 00 00 <span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>cmpwi =
&nbsp; cr7,r9,0</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">1000037c:<span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>4d 9e 00 20 <span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>beqlr =
&nbsp; cr7</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">10000380:<span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>7d 29 03 a6 <span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>mtctr =
&nbsp; r9</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">10000384:<span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>4e 80 04 20 <span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>bctr</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2"><br></font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">10000388 =
&lt;register_tm_clones&gt;:</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">10000388:<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>3c 60 10 =
01 <span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>lis &nbsp; &nbsp; r3,4097</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">1000038c:<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>3d 20 10 =
01 <span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>lis &nbsp; &nbsp; r9,4097</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">10000390:<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>38 63 08 =
0c <span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>addi &nbsp; &nbsp;r3,r3,2060</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">10000394:<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>39 29 08 =
0c <span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>addi &nbsp; &nbsp;r9,r9,2060</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">10000398:<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>7d 23 48 =
50 <span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>subf &nbsp; &nbsp;r9,r3,r9</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">1000039c:<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>7d 29 16 =
70 <span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>srawi &nbsp; r9,r9,2</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">100003a0:<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>7d 24 0e =
70 <span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>srawi &nbsp; r4,r9,1</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">100003a4:<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>7c 84 01 =
95 <span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>addze. &nbsp;r4,r4</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">100003a8:<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>4d a2 00 =
20 <span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>beqlr+ &nbsp;</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">100003ac:<span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>3d 20 00 00 <span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>lis =
&nbsp; &nbsp; r9,0</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">100003b0:<span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>39 29 00 00 <span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>addi =
&nbsp; &nbsp;r9,r9,0</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">100003b4:<span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>2f 89 00 00 <span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>cmpwi =
&nbsp; cr7,r9,0</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">100003b8:<span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>4d 9e 00 20 <span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>beqlr =
&nbsp; cr7</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">100003bc:<span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>7d 29 03 a6 <span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>mtctr =
&nbsp; r9</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">100003c0:<span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>4e 80 04 20 <span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>bctr</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2"><br></font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">100003c4 =
&lt;__do_global_dtors_aux&gt;:</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">100003c4:<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>94 21 ff =
e0 <span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>stwu &nbsp; &nbsp;r1,-32(r1)</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">100003c8:<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>7c 08 02 =
a6 <span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>mflr &nbsp; &nbsp;r0</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">100003cc:<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>93 81 00 =
10 <span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>stw &nbsp; &nbsp; r28,16(r1)</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">100003d0:<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>3f 80 10 =
01 <span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>lis &nbsp; &nbsp; r28,4097</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">100003d4:<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>89 3c 08 =
a4 <span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>lbz &nbsp; &nbsp; r9,2212(r28)</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">100003d8:<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>90 01 00 =
24 <span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>stw &nbsp; &nbsp; r0,36(r1)</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">100003dc:<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>93 a1 00 =
14 <span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>stw &nbsp; &nbsp; r29,20(r1)</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">100003e0:<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>2f 89 00 =
00 <span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>cmpwi &nbsp; cr7,r9,0</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">100003e4:<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>93 c1 00 =
18 <span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>stw &nbsp; &nbsp; r30,24(r1)</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">100003e8:<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>93 e1 00 =
1c <span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>stw &nbsp; &nbsp; r31,28(r1)</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">100003ec:<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>40 9e 00 =
64 <span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>bne- &nbsp; &nbsp;cr7,10000450 =
&lt;__do_global_dtors_aux+0x8c&gt;</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">100003f0:<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>3f a0 10 =
01 <span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>lis &nbsp; &nbsp; r29,4097</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">100003f4:<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>3f c0 10 =
01 <span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>lis &nbsp; &nbsp; r30,4097</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">100003f8:<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>3f e0 10 =
01 <span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>lis &nbsp; &nbsp; r31,4097</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">100003fc:<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>3b bd 07 =
28 <span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>addi &nbsp; &nbsp;r29,r29,1832</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">10000400:<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>3b de 07 =
2c <span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>addi &nbsp; &nbsp;r30,r30,1836</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">10000404:<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>81 3f 08 =
a8 <span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>lwz &nbsp; &nbsp; r9,2216(r31)</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">10000408:<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>7f dd f0 =
50 <span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>subf &nbsp; &nbsp;r30,r29,r30</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">1000040c:<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>3b ff 08 =
a8 <span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>addi &nbsp; &nbsp;r31,r31,2216</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">10000410:<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>7f de 16 =
70 <span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>srawi &nbsp; r30,r30,2</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">10000414:<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>3b de ff =
ff <span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>addi &nbsp; &nbsp;r30,r30,-1</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">10000418:<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>7f 89 f0 =
40 <span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>cmplw &nbsp; cr7,r9,r30</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">1000041c:<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>40 9c 00 =
28 <span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>bge- &nbsp; &nbsp;cr7,10000444 =
&lt;__do_global_dtors_aux+0x80&gt;</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">10000420:<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>39 29 00 =
01 <span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>addi &nbsp; &nbsp;r9,r9,1</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">10000424:<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>55 2a 10 =
3a <span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>rlwinm &nbsp;r10,r9,2,0,29</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">10000428:<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>91 3f 00 =
00 <span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>stw &nbsp; &nbsp; r9,0(r31)</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">1000042c:<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>7d 3d 50 =
2e <span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>lwzx &nbsp; &nbsp;r9,r29,r10</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">10000430:<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>7d 29 03 =
a6 <span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>mtctr &nbsp; r9</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">10000434:<span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>4e 80 04 21 <span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>bctrl</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">10000438:<span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>81 3f 00 00 <span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>lwz =
&nbsp; &nbsp; r9,0(r31)</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">1000043c:<span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>7f 89 f0 40 <span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>cmplw =
&nbsp; cr7,r9,r30</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">10000440:<span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>41 9c ff e0 <span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>blt+ =
&nbsp; &nbsp;cr7,10000420 =
&lt;__do_global_dtors_aux+0x5c&gt;</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">10000444:<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>4b ff ff =
0d <span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>bl &nbsp; &nbsp; &nbsp;10000350 =
&lt;deregister_tm_clones&gt;</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">10000448:<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>39 20 00 =
01 <span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>li &nbsp; &nbsp; &nbsp;r9,1</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">1000044c:<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>99 3c 08 =
a4 <span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>stb &nbsp; &nbsp; r9,2212(r28)</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">10000450:<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>80 01 00 =
24 <span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>lwz &nbsp; &nbsp; r0,36(r1)</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">10000454:<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>83 81 00 =
10 <span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>lwz &nbsp; &nbsp; r28,16(r1)</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">10000458:<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>83 a1 00 =
14 <span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>lwz &nbsp; &nbsp; r29,20(r1)</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">1000045c:<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>7c 08 03 =
a6 <span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>mtlr &nbsp; &nbsp;r0</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">10000460:<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>83 c1 00 =
18 <span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>lwz &nbsp; &nbsp; r30,24(r1)</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">10000464:<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>83 e1 00 =
1c <span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>lwz &nbsp; &nbsp; r31,28(r1)</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">10000468:<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>38 21 00 =
20 <span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>addi &nbsp; &nbsp;r1,r1,32</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">1000046c:<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>4e 80 00 =
20 <span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>blr</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2"><br></font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">10000470 =
&lt;call___do_global_dtors_aux&gt;:</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">10000470:<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>94 21 ff =
f0 <span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>stwu &nbsp; &nbsp;r1,-16(r1)</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">10000474:<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>7c 08 02 =
a6 <span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>mflr &nbsp; &nbsp;r0</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">10000478:<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>90 01 00 =
14 <span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>stw &nbsp; &nbsp; r0,20(r1)</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">1000047c:<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>80 01 00 =
14 <span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>lwz &nbsp; &nbsp; r0,20(r1)</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">10000480:<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>38 21 00 =
10 <span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>addi &nbsp; &nbsp;r1,r1,16</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">10000484:<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>7c 08 03 =
a6 <span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>mtlr &nbsp; &nbsp;r0</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">10000488:<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>4e 80 00 =
20 <span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>blr</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2"><br></font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">1000048c =
&lt;frame_dummy&gt;:</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">1000048c:<span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>3c 60 10 01 <span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>lis =
&nbsp; &nbsp; r3,4097</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">10000490:<span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>81 23 07 30 <span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>lwz =
&nbsp; &nbsp; r9,1840(r3)</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">10000494:<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>38 63 07 =
30 <span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>addi &nbsp; &nbsp;r3,r3,1840</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">10000498:<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>2f 89 00 =
00 <span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>cmpwi &nbsp; cr7,r9,0</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">1000049c:<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>41 9e 00 =
38 <span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>beq- &nbsp; &nbsp;cr7,100004d4 =
&lt;frame_dummy+0x48&gt;</font></div><div><font class=3D"Apple-style-span"=
 face=3D"Monaco" size=3D"2">100004a0:<span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>3d 20 00 00 <span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>lis =
&nbsp; &nbsp; r9,0</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">100004a4:<span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>39 29 00 00 <span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>addi =
&nbsp; &nbsp;r9,r9,0</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">100004a8:<span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>2f 89 00 00 <span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>cmpwi =
&nbsp; cr7,r9,0</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">100004ac:<span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>41 9e 00 28 <span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>beq- =
&nbsp; &nbsp;cr7,100004d4 =
&lt;frame_dummy+0x48&gt;</font></div><div><font class=3D"Apple-style-span"=
 face=3D"Monaco" size=3D"2">100004b0:<span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>94 21 ff f0 <span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>stwu =
&nbsp; &nbsp;r1,-16(r1)</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">100004b4:<span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>7c 08 02 a6 <span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>mflr =
&nbsp; &nbsp;r0</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">100004b8:<span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>7d 29 03 a6 <span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>mtctr =
&nbsp; r9</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">100004bc:<span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>90 01 00 14 <span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>stw =
&nbsp; &nbsp; r0,20(r1)</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">100004c0:<span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>4e 80 04 21 <span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>bctrl</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">100004c4:<span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>80 01 00 14 <span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>lwz =
&nbsp; &nbsp; r0,20(r1)</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">100004c8:<span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>38 21 00 10 <span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>addi =
&nbsp; &nbsp;r1,r1,16</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">100004cc:<span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>7c 08 03 a6 <span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>mtlr =
&nbsp; &nbsp;r0</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">100004d0:<span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>4b ff fe b8 <span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>b &nbsp; =
&nbsp; &nbsp; 10000388 &lt;register_tm_clones&gt;</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">100004d4:<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>4b ff fe =
b4 <span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>b =
&nbsp; &nbsp; &nbsp; 10000388 =
&lt;register_tm_clones&gt;</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2"><br></font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">100004d8 =
&lt;call_frame_dummy&gt;:</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">100004d8:<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>94 21 ff =
f0 <span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>stwu &nbsp; &nbsp;r1,-16(r1)</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">100004dc:<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>7c 08 02 =
a6 <span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>mflr &nbsp; &nbsp;r0</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">100004e0:<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>90 01 00 =
14 <span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>stw &nbsp; &nbsp; r0,20(r1)</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">100004e4:<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>80 01 00 =
14 <span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>lwz &nbsp; &nbsp; r0,20(r1)</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">100004e8:<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>38 21 00 =
10 <span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>addi &nbsp; &nbsp;r1,r1,16</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">100004ec:<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>7c 08 03 =
a6 <span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>mtlr &nbsp; &nbsp;r0</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">100004f0:<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>4e 80 00 =
20 <span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>blr</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2"><br></font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">100004f4 =
&lt;main&gt;:</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">100004f4:<span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>94 21 ff f0 <span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>stwu =
&nbsp; &nbsp;r1,-16(r1)</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">100004f8:<span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>7c 08 02 a6 <span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>mflr =
&nbsp; &nbsp;r0</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">100004fc:<span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>90 01 00 14 <span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>stw =
&nbsp; &nbsp; r0,20(r1)</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">10000500:<span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>93 e1 00 0c <span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>stw =
&nbsp; &nbsp; r31,12(r1)</font></div><div><font class=3D"Apple-style-span"=
 face=3D"Monaco" size=3D"2">10000504:<span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>7c 3f 0b 78 <span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>mr &nbsp; =
&nbsp; &nbsp;r31,r1</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">10000508:<span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>38 60 00 0a <span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>li &nbsp; =
&nbsp; &nbsp;r3,10</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">1000050c:<span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>48 01 03 7d <span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>bl &nbsp; =
&nbsp; &nbsp;10010888 &lt;putchar@plt&gt;</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">10000510:<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>3d 20 10 =
00 <span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>lis &nbsp; &nbsp; r9,4096</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">10000514:<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>38 69 06 =
b8 <span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>addi &nbsp; &nbsp;r3,r9,1720</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">10000518:<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>3d 20 10 =
00 <span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>lis &nbsp; &nbsp; r9,4096</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">1000051c:<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>38 89 06 =
d0 <span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>addi &nbsp; &nbsp;r4,r9,1744</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">10000520:<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>48 01 03 =
49 <span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>bl &nbsp; &nbsp; &nbsp;10010868 =
&lt;printf@plt&gt;</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">10000524:<span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>3d 20 3b 9a <span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>lis =
&nbsp; &nbsp; r9,15258</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">10000528:<span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>61 23 c9 ff <span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>ori =
&nbsp; &nbsp; r3,r9,51711</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">1000052c:<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>48 01 03 =
45 <span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>bl &nbsp; &nbsp; &nbsp;10010870 =
&lt;sleep@plt&gt;</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">10000530:<span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>39 20 00 00 <span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>li &nbsp; =
&nbsp; &nbsp;r9,0</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">10000534:<span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>7d 23 4b 78 <span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>mr &nbsp; =
&nbsp; &nbsp;r3,r9</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">10000538:<span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>39 7f 00 10 <span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>addi =
&nbsp; &nbsp;r11,r31,16</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">1000053c:<span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>80 0b 00 04 <span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>lwz =
&nbsp; &nbsp; r0,4(r11)</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">10000540:<span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>7c 08 03 a6 <span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>mtlr =
&nbsp; &nbsp;r0</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">10000544:<span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>83 eb ff fc <span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>lwz =
&nbsp; &nbsp; r31,-4(r11)</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">10000548:<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>7d 61 5b =
78 <span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>mr &nbsp; &nbsp; &nbsp;r1,r11</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">1000054c:<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>4e 80 00 =
20 <span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>blr</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">10000550:<span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>00 01 81 d4 <span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>.long =
0x181d4</font></div><div><font class=3D"Apple-style-span" face=3D"Monaco" =
size=3D"2"><br></font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">10000554 =
&lt;__libc_csu_init&gt;:</font></div><div><font class=3D"Apple-style-span"=
 face=3D"Monaco" size=3D"2">10000554:<span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>94 21 ff d0 <span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>stwu =
&nbsp; &nbsp;r1,-48(r1)</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">10000558:<span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>7c 08 02 a6 <span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>mflr =
&nbsp; &nbsp;r0</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">1000055c:<span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>42 9f 00 05 <span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>bcl- =
&nbsp; &nbsp;20,4*cr7+so,10000560 =
&lt;__libc_csu_init+0xc&gt;</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">10000560:<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>93 c1 00 =
28 <span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>stw &nbsp; &nbsp; r30,40(r1)</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">10000564:<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>7f c8 02 =
a6 <span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>mflr &nbsp; &nbsp;r30</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">10000568:<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>90 01 00 =
34 <span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>stw &nbsp; &nbsp; r0,52(r1)</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">1000056c:<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>80 1e ff =
f0 <span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>lwz &nbsp; &nbsp; r0,-16(r30)</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">10000570:<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>93 21 00 =
14 <span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>stw &nbsp; &nbsp; r25,20(r1)</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">10000574:<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>7c 79 1b =
78 <span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>mr &nbsp; &nbsp; &nbsp;r25,r3</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">10000578:<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>93 41 00 =
18 <span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>stw &nbsp; &nbsp; r26,24(r1)</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">1000057c:<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>7c 9a 23 =
78 <span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>mr &nbsp; &nbsp; &nbsp;r26,r4</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">10000580:<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>7f c0 f2 =
14 <span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>add &nbsp; &nbsp; r30,r0,r30</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">10000584:<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>93 61 00 =
1c <span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>stw &nbsp; &nbsp; r27,28(r1)</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">10000588:<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>93 81 00 =
20 <span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>stw &nbsp; &nbsp; r28,32(r1)</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">1000058c:<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>7c bb 2b =
78 <span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>mr &nbsp; &nbsp; &nbsp;r27,r5</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">10000590:<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>93 a1 00 =
24 <span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>stw &nbsp; &nbsp; r29,36(r1)</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">10000594:<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>93 e1 00 =
2c <span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>stw &nbsp; &nbsp; r31,44(r1)</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">10000598:<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>4b ff fd =
49 <span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>bl &nbsp; &nbsp; &nbsp;100002e0 =
&lt;_init&gt;</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">1000059c:<span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>81 3e 80 04 <span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>lwz =
&nbsp; &nbsp; r9,-32764(r30)</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">100005a0:<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>3b e0 00 =
00 <span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>li &nbsp; &nbsp; &nbsp;r31,0</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">100005a4:<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>83 9e 80 =
00 <span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>lwz &nbsp; &nbsp; r28,-32768(r30)</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">100005a8:<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>3b a9 ff =
fc <span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>addi &nbsp; &nbsp;r29,r9,-4</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">100005ac:<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>7f 89 e0 =
50 <span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>subf &nbsp; &nbsp;r28,r9,r28</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">100005b0:<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>7f 9c 16 =
71 <span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>srawi. &nbsp;r28,r28,2</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">100005b4:<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>41 82 00 =
28 <span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>beq- &nbsp; &nbsp;100005dc =
&lt;__libc_csu_init+0x88&gt;</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">100005b8:<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>85 3d 00 =
04 <span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>lwzu &nbsp; &nbsp;r9,4(r29)</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">100005bc:<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>7f 23 cb =
78 <span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>mr &nbsp; &nbsp; &nbsp;r3,r25</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">100005c0:<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>7f 44 d3 =
78 <span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>mr &nbsp; &nbsp; &nbsp;r4,r26</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">100005c4:<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>7f 65 db =
78 <span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>mr &nbsp; &nbsp; &nbsp;r5,r27</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">100005c8:<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>3b ff 00 =
01 <span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>addi &nbsp; &nbsp;r31,r31,1</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">100005cc:<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>7d 29 03 =
a6 <span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>mtctr &nbsp; r9</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">100005d0:<span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>4e 80 04 21 <span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>bctrl</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">100005d4:<span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>7f 9f e0 00 <span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>cmpw =
&nbsp; &nbsp;cr7,r31,r28</font></div><div><font class=3D"Apple-style-span"=
 face=3D"Monaco" size=3D"2">100005d8:<span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>40 9e ff e0 <span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>bne+ =
&nbsp; &nbsp;cr7,100005b8 =
&lt;__libc_csu_init+0x64&gt;</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">100005dc:<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>80 01 00 =
34 <span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>lwz &nbsp; &nbsp; r0,52(r1)</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">100005e0:<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>83 21 00 =
14 <span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>lwz &nbsp; &nbsp; r25,20(r1)</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">100005e4:<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>83 41 00 =
18 <span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>lwz &nbsp; &nbsp; r26,24(r1)</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">100005e8:<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>7c 08 03 =
a6 <span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>mtlr &nbsp; &nbsp;r0</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">100005ec:<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>83 61 00 =
1c <span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>lwz &nbsp; &nbsp; r27,28(r1)</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">100005f0:<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>83 81 00 =
20 <span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>lwz &nbsp; &nbsp; r28,32(r1)</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">100005f4:<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>83 a1 00 =
24 <span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>lwz &nbsp; &nbsp; r29,36(r1)</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">100005f8:<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>83 c1 00 =
28 <span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>lwz &nbsp; &nbsp; r30,40(r1)</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">100005fc:<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>83 e1 00 =
2c <span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>lwz &nbsp; &nbsp; r31,44(r1)</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">10000600:<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>38 21 00 =
30 <span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>addi &nbsp; &nbsp;r1,r1,48</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">10000604:<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>4e 80 00 =
20 <span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>blr</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2"><br></font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">10000608 =
&lt;__libc_csu_fini&gt;:</font></div><div><font class=3D"Apple-style-span"=
 face=3D"Monaco" size=3D"2">10000608:<span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>4e 80 00 20 <span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>blr</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2"><br></font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">1000060c =
&lt;__do_global_ctors_aux&gt;:</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">1000060c:<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>94 21 ff =
f0 <span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>stwu &nbsp; &nbsp;r1,-16(r1)</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">10000610:<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>7c 08 02 =
a6 <span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>mflr &nbsp; &nbsp;r0</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">10000614:<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>90 01 00 =
14 <span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>stw &nbsp; &nbsp; r0,20(r1)</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">10000618:<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>93 e1 00 =
0c <span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>stw &nbsp; &nbsp; r31,12(r1)</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">1000061c:<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>3f e0 10 =
01 <span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>lis &nbsp; &nbsp; r31,4097</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">10000620:<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>3b ff 07 =
24 <span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>addi &nbsp; &nbsp;r31,r31,1828</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">10000624:<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>85 3f ff =
fc <span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>lwzu &nbsp; &nbsp;r9,-4(r31)</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">10000628:<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>2f 89 ff =
ff <span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>cmpwi &nbsp; cr7,r9,-1</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">1000062c:<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>41 9e 00 =
18 <span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>beq- &nbsp; &nbsp;cr7,10000644 =
&lt;__do_global_ctors_aux+0x38&gt;</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">10000630:<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>7d 29 03 =
a6 <span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>mtctr &nbsp; r9</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">10000634:<span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>4e 80 04 21 <span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>bctrl</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">10000638:<span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>85 3f ff fc <span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>lwzu =
&nbsp; &nbsp;r9,-4(r31)</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">1000063c:<span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>2f 89 ff ff <span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>cmpwi =
&nbsp; cr7,r9,-1</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2">10000640:<span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>40 9e ff f0 <span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>bne+ =
&nbsp; &nbsp;cr7,10000630 =
&lt;__do_global_ctors_aux+0x24&gt;</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">10000644:<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>80 01 00 =
14 <span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>lwz &nbsp; &nbsp; r0,20(r1)</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">10000648:<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>83 e1 00 =
0c <span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>lwz &nbsp; &nbsp; r31,12(r1)</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">1000064c:<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>38 21 00 =
10 <span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>addi &nbsp; &nbsp;r1,r1,16</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">10000650:<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>7c 08 03 =
a6 <span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>mtlr &nbsp; &nbsp;r0</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">10000654:<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>4e 80 00 =
20 <span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>blr</font></div><div><font class=3D"Apple-style-span" =
face=3D"Monaco" size=3D"2"><br></font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">10000658 =
&lt;call___do_global_ctors_aux&gt;:</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">10000658:<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>94 21 ff =
f0 <span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>stwu &nbsp; &nbsp;r1,-16(r1)</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">1000065c:<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>7c 08 02 =
a6 <span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>mflr &nbsp; &nbsp;r0</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">10000660:<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>90 01 00 =
14 <span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>stw &nbsp; &nbsp; r0,20(r1)</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">10000664:<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>80 01 00 =
14 <span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>lwz &nbsp; &nbsp; r0,20(r1)</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">10000668:<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>38 21 00 =
10 <span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>addi &nbsp; &nbsp;r1,r1,16</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">1000066c:<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>7c 08 03 =
a6 <span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>mtlr &nbsp; &nbsp;r0</font></div><div><font =
class=3D"Apple-style-span" face=3D"Monaco" size=3D"2">10000670:<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>4e 80 00 =
20 <span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>blr</font></div></div><div><br></div><div><br></div><div><div =
style=3D"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; =
margin-left: 0px; font: normal normal normal 10px/normal Monaco; "><font =
class=3D"Apple-style-span" color=3D"#103ffb">${CROSS_COMPILE}objdump -d =
-j .data helloworlddynamic</font></div><div style=3D"margin-top: 0px; =
margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font: normal =
normal normal 10px/normal Monaco; min-height: 14px; "><br></div><div =
style=3D"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; =
margin-left: 0px; font: normal normal normal 10px/normal Monaco; =
">helloworlddynamic: &nbsp; &nbsp; file format elf32-powerpc</div><div =
style=3D"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; =
margin-left: 0px; font: normal normal normal 10px/normal Monaco; =
min-height: 14px; "><br></div><div style=3D"margin-top: 0px; =
margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font: normal =
normal normal 10px/normal Monaco; min-height: 14px; "><br></div><div =
style=3D"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; =
margin-left: 0px; font: normal normal normal 10px/normal Monaco; =
">Disassembly of section .data:</div><div style=3D"margin-top: 0px; =
margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font: normal =
normal normal 10px/normal Monaco; min-height: 14px; "><br></div><div =
style=3D"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; =
margin-left: 0px; font: normal normal normal 10px/normal Monaco; =
">10010804 &lt;__data_start&gt;:</div><div style=3D"margin-top: 0px; =
margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font: normal =
normal normal 10px/normal Monaco; ">10010804:<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>00 00 00 =
00 <span class=3D"Apple-tab-span" style=3D"white-space:pre">	=
</span>.long 0x0</div><div style=3D"margin-top: 0px; margin-right: 0px; =
margin-bottom: 0px; margin-left: 0px; font: normal normal normal =
10px/normal Monaco; min-height: 14px; "><br></div><div =
style=3D"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; =
margin-left: 0px; font: normal normal normal 10px/normal Monaco; =
">10010808 &lt;__dso_handle&gt;:</div><div style=3D"margin-top: 0px; =
margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font: normal =
normal normal 10px/normal Monaco; ">10010808:<span =
class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>00 00 00 =
00 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
....</div><div style=3D"margin-top: 0px; margin-right: 0px; =
margin-bottom: 0px; margin-left: 0px; font: normal normal normal =
10px/normal Monaco; min-height: 14px; "><br></div></div><div =
style=3D"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; =
margin-left: 0px; font: normal normal normal 10px/normal Monaco; =
min-height: 14px; "><br></div></div><div>I'm not sure what to infer with =
all this data, what should I be looking at or checking, to try to find =
out what's going wrong with dynamic linked programs built with gcc-4.7.2 =
for PowerPC440 ?</div><div><br></div><div>Best =
regards,</div><div><br></div><div>Elvis Dowson</div></div></body></html>=

--Apple-Mail=_8F20FCE9-B4D1-4287-BDE1-B62550B10BF9--
