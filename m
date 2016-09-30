Return-Path: <sleepylight@jive-turkey.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 90100E00D81; Fri, 30 Sep 2016 09:16:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.217.176 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.217.176 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f176.google.com (mail-ua0-f176.google.com
	[209.85.217.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4D78AE00CCD
	for <yocto@yoctoproject.org>; Fri, 30 Sep 2016 09:16:30 -0700 (PDT)
Received: by mail-ua0-f176.google.com with SMTP id q42so98597893uaq.2
	for <yocto@yoctoproject.org>; Fri, 30 Sep 2016 09:16:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=jive-turkey-net.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=PYYVvLTCAP25BO5BfMG9ryNrK7UlPAwGKHJ9b0FENeY=;
	b=f1hxv/9nanE2RF/3c95OB1b1qfZCs7fqW0T+NLghZ7t8NzO8gnkRClsE8M6FVHJ0e8
	8SyYSGWSHlO6cXIKa3NGns7lRSoOCXyytphv/1UcnfzHl/NnC8FOh8xrESv4fBZZggZe
	U5tIORFCAuSMLM+EmsBfOx17cvBug9y/7J6GOvQazvv68BSiHLeWhwhDdTYn8oR6UdiI
	gU0aZ7zUX1J3t7+fkcHjeBgsY3q/pfZVa4l0KtQidhNgUFA81jGc0M9FUjUMr8hcHigv
	0Ka+I/B6ePlnQdjawuK6hhGj20vQ1A4Mn6LIbT283c3d7bVmJ0DCu7F+CSHYSUKNpF3B
	w9rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=PYYVvLTCAP25BO5BfMG9ryNrK7UlPAwGKHJ9b0FENeY=;
	b=Kw1um3nacwiEzBClqsb+zoWdSVnvCQK5Hf4iP3wD+jushY/tEOS8IBnOf1bn/E3MAs
	ceSyaU+1pKxh6hzK3Ofpa6O46TIDnKKCGnBEWFe6NxcZvzXOlqJAZYMkYzhpgU8J5/GW
	S7zcUv1hkUMOPowFZQsfIHpJpcDdUqMhqmQGVh8zGPuPKFUI6Otcqzix/n12ty3w4Si/
	XRMg5fYgKIwRaklswwLP/B2LDz1jL/lWja8+g1J38Q+XhHVd3BZtZ3JBltawtDM1F6AK
	4XSXCZdSwDhSe0ltOVEifvySB3wf0gt6E0FyepSxPb+/uEHueaI82ivSJupLO7GZsfbp
	mg9Q==
X-Gm-Message-State: AA6/9RkpbfmIHFisVoxqBUBr85kEcra2D0miDa5B3sei6n4rldtxltf+d7xst0GB5b4RrTcFe6bqHOM7QmS98w==
X-Received: by 10.159.48.136 with SMTP id j8mr6042942uab.103.1475252190161;
	Fri, 30 Sep 2016 09:16:30 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.103.91.130 with HTTP; Fri, 30 Sep 2016 09:16:29 -0700 (PDT)
In-Reply-To: <CAME0jBTC4=5v5JRYUVZ97xPUf1Wu7WV6AzCQ7z-uAj1rikQu6A@mail.gmail.com>
References: <CADi-vswLkJhV+OZDmuBykid=zvT39y0pjshFhushpzmCMfb4ZQ@mail.gmail.com>
	<CAME0jBTC4=5v5JRYUVZ97xPUf1Wu7WV6AzCQ7z-uAj1rikQu6A@mail.gmail.com>
From: Maxwell Bottiger <sleepylight@jive-turkey.net>
Date: Fri, 30 Sep 2016 12:16:29 -0400
Message-ID: <CADi-vszcy8OK4T2U2h+UPGzXM63VJ9bK5e7cqfDEjMnd5NG4ww@mail.gmail.com>
To: Chris Hallinan <challinan@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: new system booting directly to halt
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
X-List-Received-Date: Fri, 30 Sep 2016 16:16:33 -0000
Content-Type: multipart/alternative; boundary=f403045e352abfc238053dbbea09

--f403045e352abfc238053dbbea09
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Chris,

Thanks for the suggestions.  The system is based on SystemV and uses the
old school init scripts.

I rebuilt my kernel with init=3D/bin/sh and I can get into the system now!
The thing is, I don't see anything in /proc, and only /dev/null exists in
the /dev directory.  I don't know if the lack of meta filesystems is due to
me skipping an actual init, or if I've buggered up something in my kernel
configuration.

This continues to be the world's most secure box, but I feel like I'm
making progress on that.

-Max

On Thu, Sep 29, 2016 at 4:40 PM, Chris Hallinan <challinan@gmail.com> wrote=
:

> You could sell this as a very secure box ;)
>
> Kidding aside, it didn't "zip" through runlevel 5, in fact, you don't kno=
w
> what runlevel it is actually in.  11 seconds after your file system is
> mounted, a reboot is issued.  From your trace, nothing running in userspa=
ce
> displayed any messages to the console.  You didn't mention what type of
> init system you are using, systemd or sysV.  It almost looks like a conso=
le
> problem.  But...i don't know why a reboot would be issued.  That's not
> normal behavior if you simply have a min-configured console.  Maybe init
> will do that under certain circumstances, I am not sure.
>
> Just for FYI, notice that your serial port is instantiating on ttyS0. (I
> do see that agrees with your kernel command line so at least that much is
> correct.)
>
> First thing I would try is to see if I can get anything on userspace.  Tr=
y
> using init=3D on your kernel command line to just spawn a shell.
>  (init=3D/bin/sh)
>
> Do you have a way to examine the flash after a reboot to see if a syslog
> was populated on the file system and examine its contents?  ie JTAG?
>
> Make sure your root file system is sane, ie mount it on a development box
> and make sure it's contents make sense to you.  ie for sysV /sbin/init
> should point to init, and it should contain a /etc/inittab and that shoul=
d
> have sane contents, etc. For systemd, /sbin/init should point (possibly
> through /etc/alternatives) to a systemd executable.  You get the idea.
>
> Good luck,
>
> Chris
>
>
> On Thu, Sep 29, 2016 at 3:18 PM, Maxwell Bottiger <
> sleepylight@jive-turkey.net> wrote:
>
>> I've been working on setting up a poky distro on an older intel XScale
>> system, and I finally got a working kernel and root filesystem.  However=
,
>> when I boot the box it zips through runlevel 5, then halts.  It seems to=
 me
>> like maybe init isn't kicking off getty or some sort of interactive logi=
n.
>> Has anyone else run into this problem?  I'll post the boot output below.
>>
>> -Max
>>
>> Bootloader Initialization Successful.
>> Copyright (c) 2010 InHand Electronics (www.inhand.com)
>>  FT4: Fingertip4              v.0A211004 (Oct 21 2010, 10:04:57)
>>  IBL: InHandBoot_4.9 BETA     v.0A211004 (Oct 21 2010, 10:04:19)
>>
>> CPLD Version:      5.10
>> DRAM Size:         128 MBytes
>> SRAM Size:         240 KBytes
>> IBC Start Page:    /nor/512
>>
>> Platform Post-Init
>> ac97
>>
>> Autorun '/cf/autoexec.brc'
>> '/cf/autoexec.brc' not found
>>
>> Autorun '/sd/autoexec.brc'
>> '/sd/autoexec.brc' not found
>>
>> Autorun '/nor/config.brc'
>> >> bootlin
>> Starting Linux
>> Copying image (2689792 bytes) to RAM: 0xa0008000
>>
>> Copying file /nor/zImage to /ram/os
>>   Source File:          2689792 bytes
>>   Destination Space:    4194304 bytes
>>
>> Copying 2689792 bytes
>>  pct remaining  time
>>  --- --------- -----
>> 100%        0   0:00
>> Copied 2689792B (3MB)
>> Setting up Kernel tags at: 0xa0000100
>> Kernel tags used 36 bytes
>> Disabling MMU
>> Jumping to Linux kernel @ 0xa0008000
>> Uncompressing Linux... done, booting the kernel.
>> [    0.000000] Booting Linux on physical CPU 0x0
>> [    0.000000] Linux version 3.14.4 (max@tsunami.pacs.agpea.army.mil)
>> (gcc version 4.9.2 (GCC) ) #1 PREEMPT Wed Sep 28 16:29:41 EDT 2016
>> [    0.000000] CPU: XScale-PXA270 [69054118] revision 8 (ARMv5TE),
>> cr=3D0000397f
>> [    0.000000] CPU: VIVT data cache, VIVT instruction cache
>> [    0.000000] Machine: InHand Fingertip4 Development Platform (aka FT4)
>> [    0.000000] Memory policy: Data cache writeback
>> [    0.000000] BUG: mapping for 0x00000000 at 0xff000000 out of vmalloc
>> space
>> [    0.000000] Run Mode clock: 208.00MHz (*16)
>> [    0.000000] Turbo Mode clock: 520.00MHz (*2.5, active)
>> [    0.000000] Memory clock: 208.00MHz (/2)
>> [    0.000000] System bus clock: 208.00MHz
>> [    0.000000] Built 1 zonelists in Zone order, mobility grouping on.
>> Total pages: 16256
>> [    0.000000] Kernel command line: console=3DttyS0,115200
>> root=3D/dev/mtdblock0 rw rootfstype=3Djffs2 mem=3D64M
>> earlyprintk=3Dserial,ttyS0,115200
>> [    0.000000] PID hash table entries: 256 (order: -2, 1024 bytes)
>> [    0.000000] Dentry cache hash table entries: 8192 (order: 3, 32768
>> bytes)
>> [    0.000000] Inode-cache hash table entries: 4096 (order: 2, 16384
>> bytes)
>> [    0.000000] Memory: 59616K/65536K available (3732K kernel code, 184K
>> rwdata, 1132K rodata, 139K init, 94K bss, 5920K reserved)
>> [    0.000000] Virtual kernel memory layout:
>> [    0.000000]     vector  : 0xffff0000 - 0xffff1000   (   4 kB)
>> [    0.000000]     fixmap  : 0xfff00000 - 0xfffe0000   ( 896 kB)
>> [    0.000000]     vmalloc : 0xc4800000 - 0xff000000   ( 936 MB)
>> [    0.000000]     lowmem  : 0xc0000000 - 0xc4000000   (  64 MB)
>> [    0.000000]     modules : 0xbf000000 - 0xc0000000   (  16 MB)
>> [    0.000000]       .text : 0xc0008000 - 0xc04c83fc   (4865 kB)
>> [    0.000000]       .init : 0xc04c9000 - 0xc04ebcd4   ( 140 kB)
>> [    0.000000]       .data : 0xc04ec000 - 0xc051a180   ( 185 kB)
>> [    0.000000]        .bss : 0xc051a18c - 0xc0531b90   (  95 kB)
>> [    0.000000] Preemptible hierarchical RCU implementation.
>> [    0.000000] NR_IRQS:16 nr_irqs:304 304
>> [    0.000046] sched_clock: 32 bits at 3250kHz, resolution 307ns, wraps
>> every 1321528397516ns
>> [    0.000691] Console: colour dummy device 80x30
>> [    0.000769] Calibrating delay loop... 518.55 BogoMIPS (lpj=3D2592768)
>> [    0.060347] pid_max: default: 32768 minimum: 301
>> [    0.060594] Security Framework initialized
>> [    0.060741] Mount-cache hash table entries: 1024 (order: 0, 4096 byte=
s)
>> [    0.060774] Mountpoint-cache hash table entries: 1024 (order: 0, 4096
>> bytes)
>> [    0.062150] CPU: Testing write buffer coherency: ok
>> [    0.063287] Setting up static identity map for 0xa038e6d8 - 0xa038e74=
4
>> [    0.069844] NET: Registered protocol family 16
>> [    0.071694] DMA: preallocated 256 KiB pool for atomic coherent
>> allocations
>> [    0.095946] Configure Fingertip4...
>> [    0.188992] bio: create slab <bio-0> at 0
>> [    0.197249] usbcore: registered new interface driver usbfs
>> [    0.198138] usbcore: registered new interface driver hub
>> [    0.199246] usbcore: registered new device driver usb
>> [    0.210323] cfg80211: Calling CRDA to update world regulatory domain
>> [    0.211077] Switched to clocksource oscr0
>> [    0.282781] NET: Registered protocol family 2
>> [    0.284302] TCP established hash table entries: 1024 (order: 0, 4096
>> bytes)
>> [    0.284382] TCP bind hash table entries: 1024 (order: 0, 4096 bytes)
>> [    0.284426] TCP: Hash tables configured (established 1024 bind 1024)
>> [    0.284648] TCP: reno registered
>> [    0.284673] UDP hash table entries: 256 (order: 0, 4096 bytes)
>> [    0.284717] UDP-Lite hash table entries: 256 (order: 0, 4096 bytes)
>> [    0.285236] NET: Registered protocol family 1
>> [    0.286343] RPC: Registered named UNIX socket transport module.
>> [    0.286402] RPC: Registered udp transport module.
>> [    0.286416] RPC: Registered tcp transport module.
>> [    0.286431] RPC: Registered tcp NFSv4.1 backchannel transport module.
>> [    0.292910] futex hash table entries: 256 (order: -1, 3072 bytes)
>> [    0.295619] NFS: Registering the id_resolver key type
>> [    0.295843] Key type id_resolver registered
>> [    0.295859] Key type id_legacy registered
>> [    0.295901] Installing knfsd (copyright (C) 1996 okir@monad.swb.de).
>> [    0.296346] jffs2: version 2.2. (NAND) =C2=A9 2001-2006 Red Hat, Inc.
>> [    0.297841] msgmni has been set to 116
>> [    0.300940] io scheduler noop registered
>> [    0.300991] io scheduler deadline registered
>> [    0.301491] io scheduler cfq registered (default)
>> [    0.754840] pxa2xx-uart.0: ttyS0 at MMIO 0x40100000 (irq =3D 22,
>> base_baud =3D 928562) is a UART1
>> [    1.153128] console [ttyS0] enabled
>> [    1.157921] pxa2xx-uart.1: ttyS1 at MMIO 0x40200000 (irq =3D 21,
>> base_baud =3D 928562) is a UART2
>> [    1.168016] pxa2xx-uart.2: ttyS2 at MMIO 0x40700000 (irq =3D 20,
>> base_baud =3D 928562) is a UART3
>> [    1.197503] brd: module loaded
>> [    1.221064] loop: module loaded
>> [    1.225694] nbd: registered device at major 43
>> [    1.271030] Uniform Multi-Platform E-IDE driver
>> [    1.277643] ide-gd driver 1.18
>> [    1.286435] physmap platform flash device: 04000000 at 00000000
>> [    1.293684] physmap-flash.0: Found 1 x16 devices at 0x0 in 16-bit
>> bank. Manufacturer ID 0x000089 Chip ID 0x00891c
>> [    1.304429] physmap-flash.0: Found 1 x16 devices at 0x2000000 in
>> 16-bit bank
>> [    1.311720] Intel/Sharp Extended Query Table at 0x010A
>> [    1.316876] Intel/Sharp Extended Query Table at 0x010A
>> [    1.322184] Intel/Sharp Extended Query Table at 0x010A
>> [    1.327328] Intel/Sharp Extended Query Table at 0x010A
>> [    1.332518] Intel/Sharp Extended Query Table at 0x010A
>> [    1.337660] Using buffer write method
>> [    1.341323] Using auto-unlock on power-up/resume
>> [    1.345909] cfi_cmdset_0001: Erase suspend on write enabled
>> [    1.353683] Creating 1 MTD partitions on "physmap-flash.0":
>> [    1.359284] 0x000000900000-0x000004000000 : "Filesystem"
>> [    1.371691] Using configured DiskOnChip probe address 0x4000000
>> [    1.380537] mousedev: PS/2 mouse device common for all mice
>> [    1.386463] i2c /dev entries driver
>> [    1.393931] TCP: cubic registered
>> [    1.397286] NET: Registered protocol family 17
>> [    1.402235] NET: Registered protocol family 15
>> [    1.406830] lib80211: common routines for IEEE802.11 drivers
>> [    1.413102] Key type dns_resolver registered
>> [    1.417577] XScale iWMMXt coprocessor detected.
>> [    3.259509] VFS: Mounted root (jffs2 filesystem) on device 31:0.
>> [    3.266333] Freeing unused kernel memory: 136K (c04c9000 - c04eb000)
>> [   14.484953] reboot: System halted
>>
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>>
>
>
> --
> Life is like Linux - it never stands still.
>
>

--f403045e352abfc238053dbbea09
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>Chris,<br><br></div>Thanks for the suggesti=
ons.=C2=A0 The system is based on SystemV and uses the old school init scri=
pts.<br><br>I rebuilt my kernel with init=3D/bin/sh and I can get into the =
system now!=C2=A0 The thing is, I don&#39;t see anything in /proc, and only=
 /dev/null exists in the /dev directory.=C2=A0 I don&#39;t know if the lack=
 of meta filesystems is due to me skipping an actual init, or if I&#39;ve b=
uggered up something in my kernel configuration.<br><br></div>This continue=
s to be the world&#39;s most secure box, but I feel like I&#39;m making pro=
gress on that.<br><br></div>-Max<br></div><div class=3D"gmail_extra"><br><d=
iv class=3D"gmail_quote">On Thu, Sep 29, 2016 at 4:40 PM, Chris Hallinan <s=
pan dir=3D"ltr">&lt;<a href=3D"mailto:challinan@gmail.com" target=3D"_blank=
">challinan@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_q=
uote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1e=
x"><div dir=3D"ltr">You could sell this as a very secure box ;)<div><br></d=
iv><div>Kidding aside, it didn&#39;t &quot;zip&quot; through runlevel 5, in=
 fact, you don&#39;t know what runlevel it is actually in. =C2=A011 seconds=
 after your file system is mounted, a reboot is issued.=C2=A0 From your tra=
ce, nothing running in userspace displayed any messages to the console.=C2=
=A0 You didn&#39;t mention what type of init system you are using, systemd =
or sysV.=C2=A0 It almost looks like a console problem.=C2=A0 But...i don&#3=
9;t know why a reboot would be issued.=C2=A0 That&#39;s not normal behavior=
 if you simply have a min-configured console.=C2=A0 Maybe init will do that=
 under certain circumstances, I am not sure.</div><div><br></div><div>Just =
for FYI, notice that your serial port is instantiating on ttyS0. (I do see =
that agrees with your kernel command line so at least that much is correct.=
)</div><div><br></div><div>First thing I would try is to see if I can get a=
nything on userspace.=C2=A0 Try using init=3D on your kernel command line t=
o just spawn a shell. =C2=A0(init=3D/bin/sh)</div><div><br></div><div>Do yo=
u have a way to examine the flash after a reboot to see if a syslog was pop=
ulated on the file system and examine its contents? =C2=A0ie JTAG?</div><di=
v><br></div><div>Make sure your root file system is sane, ie mount it on a =
development box and make sure it&#39;s contents make sense to you. =C2=A0ie=
 for sysV /sbin/init should point to init, and it should contain a /etc/ini=
ttab and that should have sane contents, etc. For systemd, /sbin/init shoul=
d point (possibly through /etc/alternatives) to a systemd executable.=C2=A0=
 You get the idea.</div><div><br></div><div>Good luck,</div><div><br></div>=
<div>Chris</div><div><br></div></div><div class=3D"gmail_extra"><br><div cl=
ass=3D"gmail_quote"><div><div class=3D"h5">On Thu, Sep 29, 2016 at 3:18 PM,=
 Maxwell Bottiger <span dir=3D"ltr">&lt;<a href=3D"mailto:sleepylight@jive-=
turkey.net" target=3D"_blank">sleepylight@jive-turkey.net</a>&gt;</span> wr=
ote:<br></div></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0=
 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div><div class=3D"h5"><=
div dir=3D"ltr"><div>I&#39;ve been working on setting up a poky distro on a=
n older intel XScale system, and I finally got a working kernel and root fi=
lesystem.=C2=A0 However, when I boot the box it zips through runlevel 5, th=
en halts.=C2=A0 It seems to me like maybe init isn&#39;t kicking off getty =
or some sort of interactive login.=C2=A0 Has anyone else run into this prob=
lem?=C2=A0 I&#39;ll post the boot output below.<br><br></div>-Max<br><br>Bo=
otloader Initialization Successful.<br>Copyright (c) 2010 InHand Electronic=
s (<a href=3D"http://www.inhand.com" target=3D"_blank">www.inhand.com</a>)<=
br>=C2=A0FT4: Fingertip4=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 v.0A211004 (Oct 21 2010, 10:04:57)<br>=C2=A0IBL=
: InHandBoot_4.9 BETA=C2=A0=C2=A0=C2=A0=C2=A0 v.0A211004 (Oct 21 2010, 10:0=
4:19)<br><br>CPLD Version:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 5.10<br>DRAM Size:=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 128 MBytes<br>SRAM Size:=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 240 KBytes<br>IBC Start Pa=
ge:=C2=A0=C2=A0=C2=A0 /nor/512<br><br>Platform Post-Init<br>ac97<br><br>Aut=
orun &#39;/cf/autoexec.brc&#39;<br>&#39;/cf/autoexec.brc&#39; not found<br>=
<br>Autorun &#39;/sd/autoexec.brc&#39;<br>&#39;/sd/autoexec.brc&#39; not fo=
und<br><br>Autorun &#39;/nor/config.brc&#39;<br>&gt;&gt; bootlin<br>Startin=
g Linux<br>Copying image (2689792 bytes) to RAM: 0xa0008000<br><br>Copying =
file /nor/zImage to /ram/os<br>=C2=A0 Source File:=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 2689792 bytes<br>=C2=A0 Destination Space:=
=C2=A0=C2=A0=C2=A0 4194304 bytes<br><br>Copying 2689792 bytes<br>=C2=A0pct =
remaining=C2=A0 time<br>=C2=A0--- --------- -----<br>100%=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 0=C2=A0=C2=A0 0:00=C2=A0 <br>Copied 2689792B (3MB)=
<br>Setting up Kernel tags at: 0xa0000100<br>Kernel tags used 36 bytes<br>D=
isabling MMU<br>Jumping to Linux kernel @ 0xa0008000<br>Uncompressing Linux=
... done, booting the kernel.<br>[=C2=A0=C2=A0=C2=A0 0.000000] Booting Linu=
x on physical CPU 0x0<br>[=C2=A0=C2=A0=C2=A0 0.000000] Linux version 3.14.4=
 (<a href=3D"mailto:max@tsunami.pacs.agpea.army.mil" target=3D"_blank">max@=
tsunami.pacs.agpea.army.m<wbr>il</a>) (gcc version 4.9.2 (GCC) ) #1 PREEMPT=
 Wed Sep 28 16:29:41 EDT 2016<br>[=C2=A0=C2=A0=C2=A0 0.000000] CPU: XScale-=
PXA270 [69054118] revision 8 (ARMv5TE), cr=3D0000397f<br>[=C2=A0=C2=A0=C2=
=A0 0.000000] CPU: VIVT data cache, VIVT instruction cache<br>[=C2=A0=C2=A0=
=C2=A0 0.000000] Machine: InHand Fingertip4 Development Platform (aka FT4)<=
br>[=C2=A0=C2=A0=C2=A0 0.000000] Memory policy: Data cache writeback<br>[=
=C2=A0=C2=A0=C2=A0 0.000000] BUG: mapping for 0x00000000 at 0xff000000 out =
of vmalloc space<br>[=C2=A0=C2=A0=C2=A0 0.000000] Run Mode clock: 208.00MHz=
 (*16)<br>[=C2=A0=C2=A0=C2=A0 0.000000] Turbo Mode clock: 520.00MHz (*2.5, =
active)<br>[=C2=A0=C2=A0=C2=A0 0.000000] Memory clock: 208.00MHz (/2)<br>[=
=C2=A0=C2=A0=C2=A0 0.000000] System bus clock: 208.00MHz <br>[=C2=A0=C2=A0=
=C2=A0 0.000000] Built 1 zonelists in Zone order, mobility grouping on.=C2=
=A0 Total pages: 16256<br>[=C2=A0=C2=A0=C2=A0 0.000000] Kernel command line=
: console=3DttyS0,115200 root=3D/dev/mtdblock0 rw rootfstype=3Djffs2 mem=3D=
64M earlyprintk=3Dserial,ttyS0,11520<wbr>0<br>[=C2=A0=C2=A0=C2=A0 0.000000]=
 PID hash table entries: 256 (order: -2, 1024 bytes)<br>[=C2=A0=C2=A0=C2=A0=
 0.000000] Dentry cache hash table entries: 8192 (order: 3, 32768 bytes)<br=
>[=C2=A0=C2=A0=C2=A0 0.000000] Inode-cache hash table entries: 4096 (order:=
 2, 16384 bytes)<br>[=C2=A0=C2=A0=C2=A0 0.000000] Memory: 59616K/65536K ava=
ilable (3732K kernel code, 184K rwdata, 1132K rodata, 139K init, 94K bss, 5=
920K reserved)<br>[=C2=A0=C2=A0=C2=A0 0.000000] Virtual kernel memory layou=
t:<br>[=C2=A0=C2=A0=C2=A0 0.000000]=C2=A0=C2=A0=C2=A0=C2=A0 vector=C2=A0 : =
0xffff0000 - 0xffff1000=C2=A0=C2=A0 (=C2=A0=C2=A0 4 kB)<br>[=C2=A0=C2=A0=C2=
=A0 0.000000]=C2=A0=C2=A0=C2=A0=C2=A0 fixmap=C2=A0 : 0xfff00000 - 0xfffe000=
0=C2=A0=C2=A0 ( 896 kB)<br>[=C2=A0=C2=A0=C2=A0 0.000000]=C2=A0=C2=A0=C2=A0=
=C2=A0 vmalloc : 0xc4800000 - 0xff000000=C2=A0=C2=A0 ( 936 MB)<br>[=C2=A0=
=C2=A0=C2=A0 0.000000]=C2=A0=C2=A0=C2=A0=C2=A0 lowmem=C2=A0 : 0xc0000000 - =
0xc4000000=C2=A0=C2=A0 (=C2=A0 64 MB)<br>[=C2=A0=C2=A0=C2=A0 0.000000]=C2=
=A0=C2=A0=C2=A0=C2=A0 modules : 0xbf000000 - 0xc0000000=C2=A0=C2=A0 (=C2=A0=
 16 MB)<br>[=C2=A0=C2=A0=C2=A0 0.000000]=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 .text : 0xc0008000 - 0xc04c83fc=C2=A0=C2=A0 (4865 kB)<br>[=C2=A0=C2=A0=
=C2=A0 0.000000]=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 .init : 0xc04c9000 - 0=
xc04ebcd4=C2=A0=C2=A0 ( 140 kB)<br>[=C2=A0=C2=A0=C2=A0 0.000000]=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 .data : 0xc04ec000 - 0xc051a180=C2=A0=C2=A0 ( 1=
85 kB)<br>[=C2=A0=C2=A0=C2=A0 0.000000]=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 .bss : 0xc051a18c - 0xc0531b90=C2=A0=C2=A0 (=C2=A0 95 kB)<br>[=C2=A0=
=C2=A0=C2=A0 0.000000] Preemptible hierarchical RCU implementation.<br>[=C2=
=A0=C2=A0=C2=A0 0.000000] NR_IRQS:16 nr_irqs:304 304<br>[=C2=A0=C2=A0=C2=A0=
 0.000046] sched_clock: 32 bits at 3250kHz, resolution 307ns, wraps every 1=
321528397516ns<br>[=C2=A0=C2=A0=C2=A0 0.000691] Console: colour dummy devic=
e 80x30<br>[=C2=A0=C2=A0=C2=A0 0.000769] Calibrating delay loop... 518.55 B=
ogoMIPS (lpj=3D2592768)<br>[=C2=A0=C2=A0=C2=A0 0.060347] pid_max: default: =
32768 minimum: 301<br>[=C2=A0=C2=A0=C2=A0 0.060594] Security Framework init=
ialized<br>[=C2=A0=C2=A0=C2=A0 0.060741] Mount-cache hash table entries: 10=
24 (order: 0, 4096 bytes)<br>[=C2=A0=C2=A0=C2=A0 0.060774] Mountpoint-cache=
 hash table entries: 1024 (order: 0, 4096 bytes)<br>[=C2=A0=C2=A0=C2=A0 0.0=
62150] CPU: Testing write buffer coherency: ok<br>[=C2=A0=C2=A0=C2=A0 0.063=
287] Setting up static identity map for 0xa038e6d8 - 0xa038e744<br>[=C2=A0=
=C2=A0=C2=A0 0.069844] NET: Registered protocol family 16<br>[=C2=A0=C2=A0=
=C2=A0 0.071694] DMA: preallocated 256 KiB pool for atomic coherent allocat=
ions<br>[=C2=A0=C2=A0=C2=A0 0.095946] Configure Fingertip4...<br>[=C2=A0=C2=
=A0=C2=A0 0.188992] bio: create slab &lt;bio-0&gt; at 0<br>[=C2=A0=C2=A0=C2=
=A0 0.197249] usbcore: registered new interface driver usbfs<br>[=C2=A0=C2=
=A0=C2=A0 0.198138] usbcore: registered new interface driver hub<br>[=C2=A0=
=C2=A0=C2=A0 0.199246] usbcore: registered new device driver usb<br>[=C2=A0=
=C2=A0=C2=A0 0.210323] cfg80211: Calling CRDA to update world regulatory do=
main<br>[=C2=A0=C2=A0=C2=A0 0.211077] Switched to clocksource oscr0<br>[=C2=
=A0=C2=A0=C2=A0 0.282781] NET: Registered protocol family 2<br>[=C2=A0=C2=
=A0=C2=A0 0.284302] TCP established hash table entries: 1024 (order: 0, 409=
6 bytes)<br>[=C2=A0=C2=A0=C2=A0 0.284382] TCP bind hash table entries: 1024=
 (order: 0, 4096 bytes)<br>[=C2=A0=C2=A0=C2=A0 0.284426] TCP: Hash tables c=
onfigured (established 1024 bind 1024)<br>[=C2=A0=C2=A0=C2=A0 0.284648] TCP=
: reno registered<br>[=C2=A0=C2=A0=C2=A0 0.284673] UDP hash table entries: =
256 (order: 0, 4096 bytes)<br>[=C2=A0=C2=A0=C2=A0 0.284717] UDP-Lite hash t=
able entries: 256 (order: 0, 4096 bytes)<br>[=C2=A0=C2=A0=C2=A0 0.285236] N=
ET: Registered protocol family 1<br>[=C2=A0=C2=A0=C2=A0 0.286343] RPC: Regi=
stered named UNIX socket transport module.<br>[=C2=A0=C2=A0=C2=A0 0.286402]=
 RPC: Registered udp transport module.<br>[=C2=A0=C2=A0=C2=A0 0.286416] RPC=
: Registered tcp transport module.<br>[=C2=A0=C2=A0=C2=A0 0.286431] RPC: Re=
gistered tcp NFSv4.1 backchannel transport module.<br>[=C2=A0=C2=A0=C2=A0 0=
.292910] futex hash table entries: 256 (order: -1, 3072 bytes)<br>[=C2=A0=
=C2=A0=C2=A0 0.295619] NFS: Registering the id_resolver key type<br>[=C2=A0=
=C2=A0=C2=A0 0.295843] Key type id_resolver registered<br>[=C2=A0=C2=A0=C2=
=A0 0.295859] Key type id_legacy registered<br>[=C2=A0=C2=A0=C2=A0 0.295901=
] Installing knfsd (copyright (C) 1996 <a href=3D"mailto:okir@monad.swb.de"=
 target=3D"_blank">okir@monad.swb.de</a>).<br>[=C2=A0=C2=A0=C2=A0 0.296346]=
 jffs2: version 2.2. (NAND) =C2=A9 2001-2006 Red Hat, Inc.<br>[=C2=A0=C2=A0=
=C2=A0 0.297841] msgmni has been set to 116<br>[=C2=A0=C2=A0=C2=A0 0.300940=
] io scheduler noop registered<br>[=C2=A0=C2=A0=C2=A0 0.300991] io schedule=
r deadline registered<br>[=C2=A0=C2=A0=C2=A0 0.301491] io scheduler cfq reg=
istered (default)<br>[=C2=A0=C2=A0=C2=A0 0.754840] pxa2xx-uart.0: ttyS0 at =
MMIO 0x40100000 (irq =3D 22, base_baud =3D 928562) is a UART1<br>[=C2=A0=C2=
=A0=C2=A0 1.153128] console [ttyS0] enabled<br>[=C2=A0=C2=A0=C2=A0 1.157921=
] pxa2xx-uart.1: ttyS1 at MMIO 0x40200000 (irq =3D 21, base_baud =3D 928562=
) is a UART2<br>[=C2=A0=C2=A0=C2=A0 1.168016] pxa2xx-uart.2: ttyS2 at MMIO =
0x40700000 (irq =3D 20, base_baud =3D 928562) is a UART3<br>[=C2=A0=C2=A0=
=C2=A0 1.197503] brd: module loaded<br>[=C2=A0=C2=A0=C2=A0 1.221064] loop: =
module loaded<br>[=C2=A0=C2=A0=C2=A0 1.225694] nbd: registered device at ma=
jor 43<br>[=C2=A0=C2=A0=C2=A0 1.271030] Uniform Multi-Platform E-IDE driver=
<br>[=C2=A0=C2=A0=C2=A0 1.277643] ide-gd driver 1.18<br>[=C2=A0=C2=A0=C2=A0=
 1.286435] physmap platform flash device: 04000000 at 00000000<br>[=C2=A0=
=C2=A0=C2=A0 1.293684] physmap-flash.0: Found 1 x16 devices at 0x0 in 16-bi=
t bank. Manufacturer ID 0x000089 Chip ID 0x00891c<br>[=C2=A0=C2=A0=C2=A0 1.=
304429] physmap-flash.0: Found 1 x16 devices at 0x2000000 in 16-bit bank<br=
>[=C2=A0=C2=A0=C2=A0 1.311720] Intel/Sharp Extended Query Table at 0x010A<b=
r>[=C2=A0=C2=A0=C2=A0 1.316876] Intel/Sharp Extended Query Table at 0x010A<=
br>[=C2=A0=C2=A0=C2=A0 1.322184] Intel/Sharp Extended Query Table at 0x010A=
<br>[=C2=A0=C2=A0=C2=A0 1.327328] Intel/Sharp Extended Query Table at 0x010=
A<br>[=C2=A0=C2=A0=C2=A0 1.332518] Intel/Sharp Extended Query Table at 0x01=
0A<br>[=C2=A0=C2=A0=C2=A0 1.337660] Using buffer write method<br>[=C2=A0=C2=
=A0=C2=A0 1.341323] Using auto-unlock on power-up/resume<br>[=C2=A0=C2=A0=
=C2=A0 1.345909] cfi_cmdset_0001: Erase suspend on write enabled<br>[=C2=A0=
=C2=A0=C2=A0 1.353683] Creating 1 MTD partitions on &quot;physmap-flash.0&q=
uot;:<br>[=C2=A0=C2=A0=C2=A0 1.359284] 0x000000900000-0x000004000000 : &quo=
t;Filesystem&quot;<br>[=C2=A0=C2=A0=C2=A0 1.371691] Using configured DiskOn=
Chip probe address 0x4000000<br>[=C2=A0=C2=A0=C2=A0 1.380537] mousedev: PS/=
2 mouse device common for all mice<br>[=C2=A0=C2=A0=C2=A0 1.386463] i2c /de=
v entries driver<br>[=C2=A0=C2=A0=C2=A0 1.393931] TCP: cubic registered<br>=
[=C2=A0=C2=A0=C2=A0 1.397286] NET: Registered protocol family 17<br>[=C2=A0=
=C2=A0=C2=A0 1.402235] NET: Registered protocol family 15<br>[=C2=A0=C2=A0=
=C2=A0 1.406830] lib80211: common routines for IEEE802.11 drivers<br>[=C2=
=A0=C2=A0=C2=A0 1.413102] Key type dns_resolver registered<br>[=C2=A0=C2=A0=
=C2=A0 1.417577] XScale iWMMXt coprocessor detected.<br>[=C2=A0=C2=A0=C2=A0=
 3.259509] VFS: Mounted root (jffs2 filesystem) on device 31:0.<br>[=C2=A0=
=C2=A0=C2=A0 3.266333] Freeing unused kernel memory: 136K (c04c9000 - c04eb=
000)<br>[=C2=A0=C2=A0 14.484953] reboot: System halted<br><br></div>
<br></div></div><span class=3D"HOEnZb"><font color=3D"#888888">--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org<wbr>/listinfo/yocto</a><=
br>
<br></font></span></blockquote></div><span class=3D"HOEnZb"><font color=3D"=
#888888"><br><br clear=3D"all"><div><br></div>-- <br><div data-smartmail=3D=
"gmail_signature">Life is like Linux - it never stands still.<br><br></div>
</font></span></div>
</blockquote></div><br></div>

--f403045e352abfc238053dbbea09--
