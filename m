Return-Path: <sleepylight@jive-turkey.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E54BFE00C1C; Thu, 29 Sep 2016 12:18:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.217.171 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f171.google.com (mail-ua0-f171.google.com
	[209.85.217.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6F376E00B9E
	for <yocto@yoctoproject.org>; Thu, 29 Sep 2016 12:18:51 -0700 (PDT)
Received: by mail-ua0-f171.google.com with SMTP id v7so531332uaa.0
	for <yocto@yoctoproject.org>; Thu, 29 Sep 2016 12:18:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=jive-turkey-net.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to;
	bh=qxyuQBVY2uPwMt/seBUenvJCfWcOSey9lRz2AaD04lw=;
	b=i5eNMwwjK6ymJcu+fKL8d7FraHmCSOuXQ6bjy1Xv826iYv2yH2sONaZOOMzIa+0/o4
	66cqqlGzn+8hGoSUVIa2pX4KlN+irhPYmFD0vs3eXJoucYZaklbgpAfb4BEofdjexFt/
	GTa1EER/A8WVUE8Tm4kdYbGR/W+Lml2rZ5di4nP1ZcoUnlPnv8fLhUDckoy1T073Lhj/
	6tvmBj3iXId1YZZ/Kz8XK+t6cg6S8eLWFR7o9npme0NhiLvpAjhIQap8OA731XusmvVB
	729oBZ55eLsao/u1OmP6w1cgd3FW62XNFGGnY2LsnKPdva4j9Cdrtv88zSFj246+uyVT
	TmbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=qxyuQBVY2uPwMt/seBUenvJCfWcOSey9lRz2AaD04lw=;
	b=UgSNWm7Au8Sd0i3m7sXsuvh/7xLfg6cP0VRoyz4kKuv50E2C8bv7tj7ziBy/KJ0Yyj
	UVJ/ezo9lx6IfVuC5wQjcbJZTdqgf7cyIZBhtZ/ZDaXcVYEVWMfDHJ23gsH9tpFV2EWB
	wEp5wbZkcAOuEaTxx4ZzjeTk31jYQA1GODoA4S/uC+w3iYlngvA4Xd+mEOJnQbRg5fqE
	5VxD45D+hk9tL2PpxT8ZCvAsvIxAxa6uad/j8HWA/Em/xllEPj/GWlwlwHYPyYIUTwF2
	FyDo0EThBDBRAFjdyGEpxIxq5P4IWpFCIVma2vBcizyzsj/CtB1Dp20rgsldEvVSioTq
	m7TQ==
X-Gm-Message-State: AA6/9RmPVoJ8DBYjaCjAOTiahNXvMqYY96fTknyEwiiArFZoiJCYLy3hUb0i69gc2r+Eocxv+Aez8pZSDXw8xQ==
X-Received: by 10.159.35.165 with SMTP id 34mr2407523uao.141.1475176730874;
	Thu, 29 Sep 2016 12:18:50 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.103.81.22 with HTTP; Thu, 29 Sep 2016 12:18:50 -0700 (PDT)
From: Maxwell Bottiger <sleepylight@jive-turkey.net>
Date: Thu, 29 Sep 2016 13:18:50 -0600
Message-ID: <CADi-vswLkJhV+OZDmuBykid=zvT39y0pjshFhushpzmCMfb4ZQ@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: new system booting directly to halt
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 29 Sep 2016 19:18:56 -0000
Content-Type: multipart/alternative; boundary=94eb2c09333c06a408053daa5931

--94eb2c09333c06a408053daa5931
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I've been working on setting up a poky distro on an older intel XScale
system, and I finally got a working kernel and root filesystem.  However,
when I boot the box it zips through runlevel 5, then halts.  It seems to me
like maybe init isn't kicking off getty or some sort of interactive login.
Has anyone else run into this problem?  I'll post the boot output below.

-Max

Bootloader Initialization Successful.
Copyright (c) 2010 InHand Electronics (www.inhand.com)
 FT4: Fingertip4              v.0A211004 (Oct 21 2010, 10:04:57)
 IBL: InHandBoot_4.9 BETA     v.0A211004 (Oct 21 2010, 10:04:19)

CPLD Version:      5.10
DRAM Size:         128 MBytes
SRAM Size:         240 KBytes
IBC Start Page:    /nor/512

Platform Post-Init
ac97

Autorun '/cf/autoexec.brc'
'/cf/autoexec.brc' not found

Autorun '/sd/autoexec.brc'
'/sd/autoexec.brc' not found

Autorun '/nor/config.brc'
>> bootlin
Starting Linux
Copying image (2689792 bytes) to RAM: 0xa0008000

Copying file /nor/zImage to /ram/os
  Source File:          2689792 bytes
  Destination Space:    4194304 bytes

Copying 2689792 bytes
 pct remaining  time
 --- --------- -----
100%        0   0:00
Copied 2689792B (3MB)
Setting up Kernel tags at: 0xa0000100
Kernel tags used 36 bytes
Disabling MMU
Jumping to Linux kernel @ 0xa0008000
Uncompressing Linux... done, booting the kernel.
[    0.000000] Booting Linux on physical CPU 0x0
[    0.000000] Linux version 3.14.4 (max@tsunami.pacs.agpea.army.mil) (gcc
version 4.9.2 (GCC) ) #1 PREEMPT Wed Sep 28 16:29:41 EDT 2016
[    0.000000] CPU: XScale-PXA270 [69054118] revision 8 (ARMv5TE),
cr=3D0000397f
[    0.000000] CPU: VIVT data cache, VIVT instruction cache
[    0.000000] Machine: InHand Fingertip4 Development Platform (aka FT4)
[    0.000000] Memory policy: Data cache writeback
[    0.000000] BUG: mapping for 0x00000000 at 0xff000000 out of vmalloc
space
[    0.000000] Run Mode clock: 208.00MHz (*16)
[    0.000000] Turbo Mode clock: 520.00MHz (*2.5, active)
[    0.000000] Memory clock: 208.00MHz (/2)
[    0.000000] System bus clock: 208.00MHz
[    0.000000] Built 1 zonelists in Zone order, mobility grouping on.
Total pages: 16256
[    0.000000] Kernel command line: console=3DttyS0,115200
root=3D/dev/mtdblock0 rw rootfstype=3Djffs2 mem=3D64M
earlyprintk=3Dserial,ttyS0,115200
[    0.000000] PID hash table entries: 256 (order: -2, 1024 bytes)
[    0.000000] Dentry cache hash table entries: 8192 (order: 3, 32768 bytes=
)
[    0.000000] Inode-cache hash table entries: 4096 (order: 2, 16384 bytes)
[    0.000000] Memory: 59616K/65536K available (3732K kernel code, 184K
rwdata, 1132K rodata, 139K init, 94K bss, 5920K reserved)
[    0.000000] Virtual kernel memory layout:
[    0.000000]     vector  : 0xffff0000 - 0xffff1000   (   4 kB)
[    0.000000]     fixmap  : 0xfff00000 - 0xfffe0000   ( 896 kB)
[    0.000000]     vmalloc : 0xc4800000 - 0xff000000   ( 936 MB)
[    0.000000]     lowmem  : 0xc0000000 - 0xc4000000   (  64 MB)
[    0.000000]     modules : 0xbf000000 - 0xc0000000   (  16 MB)
[    0.000000]       .text : 0xc0008000 - 0xc04c83fc   (4865 kB)
[    0.000000]       .init : 0xc04c9000 - 0xc04ebcd4   ( 140 kB)
[    0.000000]       .data : 0xc04ec000 - 0xc051a180   ( 185 kB)
[    0.000000]        .bss : 0xc051a18c - 0xc0531b90   (  95 kB)
[    0.000000] Preemptible hierarchical RCU implementation.
[    0.000000] NR_IRQS:16 nr_irqs:304 304
[    0.000046] sched_clock: 32 bits at 3250kHz, resolution 307ns, wraps
every 1321528397516ns
[    0.000691] Console: colour dummy device 80x30
[    0.000769] Calibrating delay loop... 518.55 BogoMIPS (lpj=3D2592768)
[    0.060347] pid_max: default: 32768 minimum: 301
[    0.060594] Security Framework initialized
[    0.060741] Mount-cache hash table entries: 1024 (order: 0, 4096 bytes)
[    0.060774] Mountpoint-cache hash table entries: 1024 (order: 0, 4096
bytes)
[    0.062150] CPU: Testing write buffer coherency: ok
[    0.063287] Setting up static identity map for 0xa038e6d8 - 0xa038e744
[    0.069844] NET: Registered protocol family 16
[    0.071694] DMA: preallocated 256 KiB pool for atomic coherent
allocations
[    0.095946] Configure Fingertip4...
[    0.188992] bio: create slab <bio-0> at 0
[    0.197249] usbcore: registered new interface driver usbfs
[    0.198138] usbcore: registered new interface driver hub
[    0.199246] usbcore: registered new device driver usb
[    0.210323] cfg80211: Calling CRDA to update world regulatory domain
[    0.211077] Switched to clocksource oscr0
[    0.282781] NET: Registered protocol family 2
[    0.284302] TCP established hash table entries: 1024 (order: 0, 4096
bytes)
[    0.284382] TCP bind hash table entries: 1024 (order: 0, 4096 bytes)
[    0.284426] TCP: Hash tables configured (established 1024 bind 1024)
[    0.284648] TCP: reno registered
[    0.284673] UDP hash table entries: 256 (order: 0, 4096 bytes)
[    0.284717] UDP-Lite hash table entries: 256 (order: 0, 4096 bytes)
[    0.285236] NET: Registered protocol family 1
[    0.286343] RPC: Registered named UNIX socket transport module.
[    0.286402] RPC: Registered udp transport module.
[    0.286416] RPC: Registered tcp transport module.
[    0.286431] RPC: Registered tcp NFSv4.1 backchannel transport module.
[    0.292910] futex hash table entries: 256 (order: -1, 3072 bytes)
[    0.295619] NFS: Registering the id_resolver key type
[    0.295843] Key type id_resolver registered
[    0.295859] Key type id_legacy registered
[    0.295901] Installing knfsd (copyright (C) 1996 okir@monad.swb.de).
[    0.296346] jffs2: version 2.2. (NAND) =C2=A9 2001-2006 Red Hat, Inc.
[    0.297841] msgmni has been set to 116
[    0.300940] io scheduler noop registered
[    0.300991] io scheduler deadline registered
[    0.301491] io scheduler cfq registered (default)
[    0.754840] pxa2xx-uart.0: ttyS0 at MMIO 0x40100000 (irq =3D 22, base_ba=
ud
=3D 928562) is a UART1
[    1.153128] console [ttyS0] enabled
[    1.157921] pxa2xx-uart.1: ttyS1 at MMIO 0x40200000 (irq =3D 21, base_ba=
ud
=3D 928562) is a UART2
[    1.168016] pxa2xx-uart.2: ttyS2 at MMIO 0x40700000 (irq =3D 20, base_ba=
ud
=3D 928562) is a UART3
[    1.197503] brd: module loaded
[    1.221064] loop: module loaded
[    1.225694] nbd: registered device at major 43
[    1.271030] Uniform Multi-Platform E-IDE driver
[    1.277643] ide-gd driver 1.18
[    1.286435] physmap platform flash device: 04000000 at 00000000
[    1.293684] physmap-flash.0: Found 1 x16 devices at 0x0 in 16-bit bank.
Manufacturer ID 0x000089 Chip ID 0x00891c
[    1.304429] physmap-flash.0: Found 1 x16 devices at 0x2000000 in 16-bit
bank
[    1.311720] Intel/Sharp Extended Query Table at 0x010A
[    1.316876] Intel/Sharp Extended Query Table at 0x010A
[    1.322184] Intel/Sharp Extended Query Table at 0x010A
[    1.327328] Intel/Sharp Extended Query Table at 0x010A
[    1.332518] Intel/Sharp Extended Query Table at 0x010A
[    1.337660] Using buffer write method
[    1.341323] Using auto-unlock on power-up/resume
[    1.345909] cfi_cmdset_0001: Erase suspend on write enabled
[    1.353683] Creating 1 MTD partitions on "physmap-flash.0":
[    1.359284] 0x000000900000-0x000004000000 : "Filesystem"
[    1.371691] Using configured DiskOnChip probe address 0x4000000
[    1.380537] mousedev: PS/2 mouse device common for all mice
[    1.386463] i2c /dev entries driver
[    1.393931] TCP: cubic registered
[    1.397286] NET: Registered protocol family 17
[    1.402235] NET: Registered protocol family 15
[    1.406830] lib80211: common routines for IEEE802.11 drivers
[    1.413102] Key type dns_resolver registered
[    1.417577] XScale iWMMXt coprocessor detected.
[    3.259509] VFS: Mounted root (jffs2 filesystem) on device 31:0.
[    3.266333] Freeing unused kernel memory: 136K (c04c9000 - c04eb000)
[   14.484953] reboot: System halted

--94eb2c09333c06a408053daa5931
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I&#39;ve been working on setting up a poky distro on =
an older intel XScale system, and I finally got a working kernel and root f=
ilesystem.=C2=A0 However, when I boot the box it zips through runlevel 5, t=
hen halts.=C2=A0 It seems to me like maybe init isn&#39;t kicking off getty=
 or some sort of interactive login.=C2=A0 Has anyone else run into this pro=
blem?=C2=A0 I&#39;ll post the boot output below.<br><br></div>-Max<br><br>B=
ootloader Initialization Successful.<br>Copyright (c) 2010 InHand Electroni=
cs (<a href=3D"http://www.inhand.com">www.inhand.com</a>)<br>=C2=A0FT4: Fin=
gertip4=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 v.0A211004 (Oct 21 2010, 10:04:57)<br>=C2=A0IBL: InHandBoot_4.=
9 BETA=C2=A0=C2=A0=C2=A0=C2=A0 v.0A211004 (Oct 21 2010, 10:04:19)<br><br>CP=
LD Version:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 5.10<br>DRAM Size:=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 128 MBytes<br>SRAM Size:=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 240 KBytes<br>IBC Start Page:=C2=A0=C2=A0=
=C2=A0 /nor/512<br><br>Platform Post-Init<br>ac97<br><br>Autorun &#39;/cf/a=
utoexec.brc&#39;<br>&#39;/cf/autoexec.brc&#39; not found<br><br>Autorun &#3=
9;/sd/autoexec.brc&#39;<br>&#39;/sd/autoexec.brc&#39; not found<br><br>Auto=
run &#39;/nor/config.brc&#39;<br>&gt;&gt; bootlin<br>Starting Linux<br>Copy=
ing image (2689792 bytes) to RAM: 0xa0008000<br><br>Copying file /nor/zImag=
e to /ram/os<br>=C2=A0 Source File:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 2689792 bytes<br>=C2=A0 Destination Space:=C2=A0=C2=A0=C2=
=A0 4194304 bytes<br><br>Copying 2689792 bytes<br>=C2=A0pct remaining=C2=A0=
 time<br>=C2=A0--- --------- -----<br>100%=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 0=C2=A0=C2=A0 0:00=C2=A0 <br>Copied 2689792B (3MB)<br>Setting up =
Kernel tags at: 0xa0000100<br>Kernel tags used 36 bytes<br>Disabling MMU<br=
>Jumping to Linux kernel @ 0xa0008000<br>Uncompressing Linux... done, booti=
ng the kernel.<br>[=C2=A0=C2=A0=C2=A0 0.000000] Booting Linux on physical C=
PU 0x0<br>[=C2=A0=C2=A0=C2=A0 0.000000] Linux version 3.14.4 (<a href=3D"ma=
ilto:max@tsunami.pacs.agpea.army.mil">max@tsunami.pacs.agpea.army.mil</a>) =
(gcc version 4.9.2 (GCC) ) #1 PREEMPT Wed Sep 28 16:29:41 EDT 2016<br>[=C2=
=A0=C2=A0=C2=A0 0.000000] CPU: XScale-PXA270 [69054118] revision 8 (ARMv5TE=
), cr=3D0000397f<br>[=C2=A0=C2=A0=C2=A0 0.000000] CPU: VIVT data cache, VIV=
T instruction cache<br>[=C2=A0=C2=A0=C2=A0 0.000000] Machine: InHand Finger=
tip4 Development Platform (aka FT4)<br>[=C2=A0=C2=A0=C2=A0 0.000000] Memory=
 policy: Data cache writeback<br>[=C2=A0=C2=A0=C2=A0 0.000000] BUG: mapping=
 for 0x00000000 at 0xff000000 out of vmalloc space<br>[=C2=A0=C2=A0=C2=A0 0=
.000000] Run Mode clock: 208.00MHz (*16)<br>[=C2=A0=C2=A0=C2=A0 0.000000] T=
urbo Mode clock: 520.00MHz (*2.5, active)<br>[=C2=A0=C2=A0=C2=A0 0.000000] =
Memory clock: 208.00MHz (/2)<br>[=C2=A0=C2=A0=C2=A0 0.000000] System bus cl=
ock: 208.00MHz <br>[=C2=A0=C2=A0=C2=A0 0.000000] Built 1 zonelists in Zone =
order, mobility grouping on.=C2=A0 Total pages: 16256<br>[=C2=A0=C2=A0=C2=
=A0 0.000000] Kernel command line: console=3DttyS0,115200 root=3D/dev/mtdbl=
ock0 rw rootfstype=3Djffs2 mem=3D64M earlyprintk=3Dserial,ttyS0,115200<br>[=
=C2=A0=C2=A0=C2=A0 0.000000] PID hash table entries: 256 (order: -2, 1024 b=
ytes)<br>[=C2=A0=C2=A0=C2=A0 0.000000] Dentry cache hash table entries: 819=
2 (order: 3, 32768 bytes)<br>[=C2=A0=C2=A0=C2=A0 0.000000] Inode-cache hash=
 table entries: 4096 (order: 2, 16384 bytes)<br>[=C2=A0=C2=A0=C2=A0 0.00000=
0] Memory: 59616K/65536K available (3732K kernel code, 184K rwdata, 1132K r=
odata, 139K init, 94K bss, 5920K reserved)<br>[=C2=A0=C2=A0=C2=A0 0.000000]=
 Virtual kernel memory layout:<br>[=C2=A0=C2=A0=C2=A0 0.000000]=C2=A0=C2=A0=
=C2=A0=C2=A0 vector=C2=A0 : 0xffff0000 - 0xffff1000=C2=A0=C2=A0 (=C2=A0=C2=
=A0 4 kB)<br>[=C2=A0=C2=A0=C2=A0 0.000000]=C2=A0=C2=A0=C2=A0=C2=A0 fixmap=
=C2=A0 : 0xfff00000 - 0xfffe0000=C2=A0=C2=A0 ( 896 kB)<br>[=C2=A0=C2=A0=C2=
=A0 0.000000]=C2=A0=C2=A0=C2=A0=C2=A0 vmalloc : 0xc4800000 - 0xff000000=C2=
=A0=C2=A0 ( 936 MB)<br>[=C2=A0=C2=A0=C2=A0 0.000000]=C2=A0=C2=A0=C2=A0=C2=
=A0 lowmem=C2=A0 : 0xc0000000 - 0xc4000000=C2=A0=C2=A0 (=C2=A0 64 MB)<br>[=
=C2=A0=C2=A0=C2=A0 0.000000]=C2=A0=C2=A0=C2=A0=C2=A0 modules : 0xbf000000 -=
 0xc0000000=C2=A0=C2=A0 (=C2=A0 16 MB)<br>[=C2=A0=C2=A0=C2=A0 0.000000]=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 .text : 0xc0008000 - 0xc04c83fc=C2=A0=C2=
=A0 (4865 kB)<br>[=C2=A0=C2=A0=C2=A0 0.000000]=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 .init : 0xc04c9000 - 0xc04ebcd4=C2=A0=C2=A0 ( 140 kB)<br>[=C2=A0=
=C2=A0=C2=A0 0.000000]=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 .data : 0xc04ec0=
00 - 0xc051a180=C2=A0=C2=A0 ( 185 kB)<br>[=C2=A0=C2=A0=C2=A0 0.000000]=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 .bss : 0xc051a18c - 0xc0531b90=C2=
=A0=C2=A0 (=C2=A0 95 kB)<br>[=C2=A0=C2=A0=C2=A0 0.000000] Preemptible hiera=
rchical RCU implementation.<br>[=C2=A0=C2=A0=C2=A0 0.000000] NR_IRQS:16 nr_=
irqs:304 304<br>[=C2=A0=C2=A0=C2=A0 0.000046] sched_clock: 32 bits at 3250k=
Hz, resolution 307ns, wraps every 1321528397516ns<br>[=C2=A0=C2=A0=C2=A0 0.=
000691] Console: colour dummy device 80x30<br>[=C2=A0=C2=A0=C2=A0 0.000769]=
 Calibrating delay loop... 518.55 BogoMIPS (lpj=3D2592768)<br>[=C2=A0=C2=A0=
=C2=A0 0.060347] pid_max: default: 32768 minimum: 301<br>[=C2=A0=C2=A0=C2=
=A0 0.060594] Security Framework initialized<br>[=C2=A0=C2=A0=C2=A0 0.06074=
1] Mount-cache hash table entries: 1024 (order: 0, 4096 bytes)<br>[=C2=A0=
=C2=A0=C2=A0 0.060774] Mountpoint-cache hash table entries: 1024 (order: 0,=
 4096 bytes)<br>[=C2=A0=C2=A0=C2=A0 0.062150] CPU: Testing write buffer coh=
erency: ok<br>[=C2=A0=C2=A0=C2=A0 0.063287] Setting up static identity map =
for 0xa038e6d8 - 0xa038e744<br>[=C2=A0=C2=A0=C2=A0 0.069844] NET: Registere=
d protocol family 16<br>[=C2=A0=C2=A0=C2=A0 0.071694] DMA: preallocated 256=
 KiB pool for atomic coherent allocations<br>[=C2=A0=C2=A0=C2=A0 0.095946] =
Configure Fingertip4...<br>[=C2=A0=C2=A0=C2=A0 0.188992] bio: create slab &=
lt;bio-0&gt; at 0<br>[=C2=A0=C2=A0=C2=A0 0.197249] usbcore: registered new =
interface driver usbfs<br>[=C2=A0=C2=A0=C2=A0 0.198138] usbcore: registered=
 new interface driver hub<br>[=C2=A0=C2=A0=C2=A0 0.199246] usbcore: registe=
red new device driver usb<br>[=C2=A0=C2=A0=C2=A0 0.210323] cfg80211: Callin=
g CRDA to update world regulatory domain<br>[=C2=A0=C2=A0=C2=A0 0.211077] S=
witched to clocksource oscr0<br>[=C2=A0=C2=A0=C2=A0 0.282781] NET: Register=
ed protocol family 2<br>[=C2=A0=C2=A0=C2=A0 0.284302] TCP established hash =
table entries: 1024 (order: 0, 4096 bytes)<br>[=C2=A0=C2=A0=C2=A0 0.284382]=
 TCP bind hash table entries: 1024 (order: 0, 4096 bytes)<br>[=C2=A0=C2=A0=
=C2=A0 0.284426] TCP: Hash tables configured (established 1024 bind 1024)<b=
r>[=C2=A0=C2=A0=C2=A0 0.284648] TCP: reno registered<br>[=C2=A0=C2=A0=C2=A0=
 0.284673] UDP hash table entries: 256 (order: 0, 4096 bytes)<br>[=C2=A0=C2=
=A0=C2=A0 0.284717] UDP-Lite hash table entries: 256 (order: 0, 4096 bytes)=
<br>[=C2=A0=C2=A0=C2=A0 0.285236] NET: Registered protocol family 1<br>[=C2=
=A0=C2=A0=C2=A0 0.286343] RPC: Registered named UNIX socket transport modul=
e.<br>[=C2=A0=C2=A0=C2=A0 0.286402] RPC: Registered udp transport module.<b=
r>[=C2=A0=C2=A0=C2=A0 0.286416] RPC: Registered tcp transport module.<br>[=
=C2=A0=C2=A0=C2=A0 0.286431] RPC: Registered tcp NFSv4.1 backchannel transp=
ort module.<br>[=C2=A0=C2=A0=C2=A0 0.292910] futex hash table entries: 256 =
(order: -1, 3072 bytes)<br>[=C2=A0=C2=A0=C2=A0 0.295619] NFS: Registering t=
he id_resolver key type<br>[=C2=A0=C2=A0=C2=A0 0.295843] Key type id_resolv=
er registered<br>[=C2=A0=C2=A0=C2=A0 0.295859] Key type id_legacy registere=
d<br>[=C2=A0=C2=A0=C2=A0 0.295901] Installing knfsd (copyright (C) 1996 <a =
href=3D"mailto:okir@monad.swb.de">okir@monad.swb.de</a>).<br>[=C2=A0=C2=A0=
=C2=A0 0.296346] jffs2: version 2.2. (NAND) =C2=A9 2001-2006 Red Hat, Inc.<=
br>[=C2=A0=C2=A0=C2=A0 0.297841] msgmni has been set to 116<br>[=C2=A0=C2=
=A0=C2=A0 0.300940] io scheduler noop registered<br>[=C2=A0=C2=A0=C2=A0 0.3=
00991] io scheduler deadline registered<br>[=C2=A0=C2=A0=C2=A0 0.301491] io=
 scheduler cfq registered (default)<br>[=C2=A0=C2=A0=C2=A0 0.754840] pxa2xx=
-uart.0: ttyS0 at MMIO 0x40100000 (irq =3D 22, base_baud =3D 928562) is a U=
ART1<br>[=C2=A0=C2=A0=C2=A0 1.153128] console [ttyS0] enabled<br>[=C2=A0=C2=
=A0=C2=A0 1.157921] pxa2xx-uart.1: ttyS1 at MMIO 0x40200000 (irq =3D 21, ba=
se_baud =3D 928562) is a UART2<br>[=C2=A0=C2=A0=C2=A0 1.168016] pxa2xx-uart=
.2: ttyS2 at MMIO 0x40700000 (irq =3D 20, base_baud =3D 928562) is a UART3<=
br>[=C2=A0=C2=A0=C2=A0 1.197503] brd: module loaded<br>[=C2=A0=C2=A0=C2=A0 =
1.221064] loop: module loaded<br>[=C2=A0=C2=A0=C2=A0 1.225694] nbd: registe=
red device at major 43<br>[=C2=A0=C2=A0=C2=A0 1.271030] Uniform Multi-Platf=
orm E-IDE driver<br>[=C2=A0=C2=A0=C2=A0 1.277643] ide-gd driver 1.18<br>[=
=C2=A0=C2=A0=C2=A0 1.286435] physmap platform flash device: 04000000 at 000=
00000<br>[=C2=A0=C2=A0=C2=A0 1.293684] physmap-flash.0: Found 1 x16 devices=
 at 0x0 in 16-bit bank. Manufacturer ID 0x000089 Chip ID 0x00891c<br>[=C2=
=A0=C2=A0=C2=A0 1.304429] physmap-flash.0: Found 1 x16 devices at 0x2000000=
 in 16-bit bank<br>[=C2=A0=C2=A0=C2=A0 1.311720] Intel/Sharp Extended Query=
 Table at 0x010A<br>[=C2=A0=C2=A0=C2=A0 1.316876] Intel/Sharp Extended Quer=
y Table at 0x010A<br>[=C2=A0=C2=A0=C2=A0 1.322184] Intel/Sharp Extended Que=
ry Table at 0x010A<br>[=C2=A0=C2=A0=C2=A0 1.327328] Intel/Sharp Extended Qu=
ery Table at 0x010A<br>[=C2=A0=C2=A0=C2=A0 1.332518] Intel/Sharp Extended Q=
uery Table at 0x010A<br>[=C2=A0=C2=A0=C2=A0 1.337660] Using buffer write me=
thod<br>[=C2=A0=C2=A0=C2=A0 1.341323] Using auto-unlock on power-up/resume<=
br>[=C2=A0=C2=A0=C2=A0 1.345909] cfi_cmdset_0001: Erase suspend on write en=
abled<br>[=C2=A0=C2=A0=C2=A0 1.353683] Creating 1 MTD partitions on &quot;p=
hysmap-flash.0&quot;:<br>[=C2=A0=C2=A0=C2=A0 1.359284] 0x000000900000-0x000=
004000000 : &quot;Filesystem&quot;<br>[=C2=A0=C2=A0=C2=A0 1.371691] Using c=
onfigured DiskOnChip probe address 0x4000000<br>[=C2=A0=C2=A0=C2=A0 1.38053=
7] mousedev: PS/2 mouse device common for all mice<br>[=C2=A0=C2=A0=C2=A0 1=
.386463] i2c /dev entries driver<br>[=C2=A0=C2=A0=C2=A0 1.393931] TCP: cubi=
c registered<br>[=C2=A0=C2=A0=C2=A0 1.397286] NET: Registered protocol fami=
ly 17<br>[=C2=A0=C2=A0=C2=A0 1.402235] NET: Registered protocol family 15<b=
r>[=C2=A0=C2=A0=C2=A0 1.406830] lib80211: common routines for IEEE802.11 dr=
ivers<br>[=C2=A0=C2=A0=C2=A0 1.413102] Key type dns_resolver registered<br>=
[=C2=A0=C2=A0=C2=A0 1.417577] XScale iWMMXt coprocessor detected.<br>[=C2=
=A0=C2=A0=C2=A0 3.259509] VFS: Mounted root (jffs2 filesystem) on device 31=
:0.<br>[=C2=A0=C2=A0=C2=A0 3.266333] Freeing unused kernel memory: 136K (c0=
4c9000 - c04eb000)<br>[=C2=A0=C2=A0 14.484953] reboot: System halted<br><br=
></div>

--94eb2c09333c06a408053daa5931--
