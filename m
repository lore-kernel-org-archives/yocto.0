Return-Path: <sleepylight@jive-turkey.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A2668E00D8D; Fri, 30 Sep 2016 10:30:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.213.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f43.google.com (mail-vk0-f43.google.com
	[209.85.213.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 08C9FE00D7F
	for <yocto@yoctoproject.org>; Fri, 30 Sep 2016 10:30:21 -0700 (PDT)
Received: by mail-vk0-f43.google.com with SMTP id 192so110068454vkl.2
	for <yocto@yoctoproject.org>; Fri, 30 Sep 2016 10:30:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=jive-turkey-net.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=E7cRRqEFzQvSzRH9wf3jaIX3406IvhL2ZADkZTsXYuY=;
	b=MPZzeWwtV+5I2Uya75i0KOIJjmGWQ5oqRRtGeH/o//pb0ZRldL/phzUALpmTQWNvUe
	mCS+SumbNR0AviK4DmL0LtqLZCaHfD1L7a+MEWHbtwvb7d9OMO1sUlJ7XKptizbeSish
	7VkI/yjfGThAum/E8kTUcX2bzAQEh2e+WqcvNT0ZYzlnvTi8/B+AIhMGih9zjXFIeWFz
	PWxmwoNDB4v/VGmhJnP7IYozItLHWL0XeGNz8tYe3KXxGBqchgHZ8pioHzMZm1am9xS0
	b1pf02WMWNYMdAbMhBSHEH8hAHymxNGRpXSoFYintL7qtOdTg4pDWpDr8D/r27654Whc
	Gjqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=E7cRRqEFzQvSzRH9wf3jaIX3406IvhL2ZADkZTsXYuY=;
	b=lzA/fLX4QJCpghDAeWdHMBoJF0u2Yu7Vvc9+h2cYc5gXtMI1rsG41d9ojtxQ/z6KMY
	ByEFWWnc1zpLGBKtLpjgC46hSeI6NqBR49c1z6Fs8UtyQ1KxuPfmF20TIlM1j350aVKn
	YeGTiS7m1kw8cU4QOHmCIiz4SKQnOYgs7CxNvkdQ0rYGMRYS/zXjL96QGOC87tGljQMr
	5OWnvP+x/DXADQAyqeo3ZzLTK/ZejUoQRzB5tu6SWJWYOkZZJ9HfjZSmRP7klJfN6zEI
	t7iTemLxe+hVYHZJ7HdjJaRuyNY811TjxhmW3r2Vqcp8Pp2HagOX83TVoxfaK74+fJq5
	7C3Q==
X-Gm-Message-State: AA6/9Rn6c3PAfY3uUCwqINqrKtBFZQKR0/9FD1N7xPnwIXYQK/WQN+Qy+YD6YWDRalZQvosmwl70ydfXxAOZ3A==
X-Received: by 10.31.58.77 with SMTP id h74mr6289229vka.15.1475256620528; Fri,
	30 Sep 2016 10:30:20 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.103.91.130 with HTTP; Fri, 30 Sep 2016 10:30:19 -0700 (PDT)
In-Reply-To: <CADi-vszcy8OK4T2U2h+UPGzXM63VJ9bK5e7cqfDEjMnd5NG4ww@mail.gmail.com>
References: <CADi-vswLkJhV+OZDmuBykid=zvT39y0pjshFhushpzmCMfb4ZQ@mail.gmail.com>
	<CAME0jBTC4=5v5JRYUVZ97xPUf1Wu7WV6AzCQ7z-uAj1rikQu6A@mail.gmail.com>
	<CADi-vszcy8OK4T2U2h+UPGzXM63VJ9bK5e7cqfDEjMnd5NG4ww@mail.gmail.com>
From: Maxwell Bottiger <sleepylight@jive-turkey.net>
Date: Fri, 30 Sep 2016 13:30:19 -0400
Message-ID: <CADi-vsxKc4x9j+GU-V=aMuODVk8D3KLpSMpUP=92jguOhKXkNQ@mail.gmail.com>
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
X-List-Received-Date: Fri, 30 Sep 2016 17:30:25 -0000
Content-Type: multipart/alternative; boundary=001a1143eb7cd1d3aa053dbcf295

--001a1143eb7cd1d3aa053dbcf295
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Got it.  I needed to turn switch on CONFIG_DEVTMPFS=3Dy, and
CONFIG_DEVTMPFS_MOUNT=3Dy in the kernel.  Now dev is populated and everythi=
ng
else came along with it.

Thanks!

-Max

On Fri, Sep 30, 2016 at 12:16 PM, Maxwell Bottiger <
sleepylight@jive-turkey.net> wrote:

> Chris,
>
> Thanks for the suggestions.  The system is based on SystemV and uses the
> old school init scripts.
>
> I rebuilt my kernel with init=3D/bin/sh and I can get into the system now=
!
> The thing is, I don't see anything in /proc, and only /dev/null exists in
> the /dev directory.  I don't know if the lack of meta filesystems is due =
to
> me skipping an actual init, or if I've buggered up something in my kernel
> configuration.
>
> This continues to be the world's most secure box, but I feel like I'm
> making progress on that.
>
> -Max
>
> On Thu, Sep 29, 2016 at 4:40 PM, Chris Hallinan <challinan@gmail.com>
> wrote:
>
>> You could sell this as a very secure box ;)
>>
>> Kidding aside, it didn't "zip" through runlevel 5, in fact, you don't
>> know what runlevel it is actually in.  11 seconds after your file system=
 is
>> mounted, a reboot is issued.  From your trace, nothing running in usersp=
ace
>> displayed any messages to the console.  You didn't mention what type of
>> init system you are using, systemd or sysV.  It almost looks like a cons=
ole
>> problem.  But...i don't know why a reboot would be issued.  That's not
>> normal behavior if you simply have a min-configured console.  Maybe init
>> will do that under certain circumstances, I am not sure.
>>
>> Just for FYI, notice that your serial port is instantiating on ttyS0. (I
>> do see that agrees with your kernel command line so at least that much i=
s
>> correct.)
>>
>> First thing I would try is to see if I can get anything on userspace.
>> Try using init=3D on your kernel command line to just spawn a shell.
>>  (init=3D/bin/sh)
>>
>> Do you have a way to examine the flash after a reboot to see if a syslog
>> was populated on the file system and examine its contents?  ie JTAG?
>>
>> Make sure your root file system is sane, ie mount it on a development bo=
x
>> and make sure it's contents make sense to you.  ie for sysV /sbin/init
>> should point to init, and it should contain a /etc/inittab and that shou=
ld
>> have sane contents, etc. For systemd, /sbin/init should point (possibly
>> through /etc/alternatives) to a systemd executable.  You get the idea.
>>
>> Good luck,
>>
>> Chris
>>
>>
>> On Thu, Sep 29, 2016 at 3:18 PM, Maxwell Bottiger <
>> sleepylight@jive-turkey.net> wrote:
>>
>>> I've been working on setting up a poky distro on an older intel XScale
>>> system, and I finally got a working kernel and root filesystem.  Howeve=
r,
>>> when I boot the box it zips through runlevel 5, then halts.  It seems t=
o me
>>> like maybe init isn't kicking off getty or some sort of interactive log=
in.
>>> Has anyone else run into this problem?  I'll post the boot output below=
.
>>>
>>> -Max
>>>
>>> Bootloader Initialization Successful.
>>> Copyright (c) 2010 InHand Electronics (www.inhand.com)
>>>  FT4: Fingertip4              v.0A211004 (Oct 21 2010, 10:04:57)
>>>  IBL: InHandBoot_4.9 BETA     v.0A211004 (Oct 21 2010, 10:04:19)
>>>
>>> CPLD Version:      5.10
>>> DRAM Size:         128 MBytes
>>> SRAM Size:         240 KBytes
>>> IBC Start Page:    /nor/512
>>>
>>> Platform Post-Init
>>> ac97
>>>
>>> Autorun '/cf/autoexec.brc'
>>> '/cf/autoexec.brc' not found
>>>
>>> Autorun '/sd/autoexec.brc'
>>> '/sd/autoexec.brc' not found
>>>
>>> Autorun '/nor/config.brc'
>>> >> bootlin
>>> Starting Linux
>>> Copying image (2689792 bytes) to RAM: 0xa0008000
>>>
>>> Copying file /nor/zImage to /ram/os
>>>   Source File:          2689792 bytes
>>>   Destination Space:    4194304 bytes
>>>
>>> Copying 2689792 bytes
>>>  pct remaining  time
>>>  --- --------- -----
>>> 100%        0   0:00
>>> Copied 2689792B (3MB)
>>> Setting up Kernel tags at: 0xa0000100
>>> Kernel tags used 36 bytes
>>> Disabling MMU
>>> Jumping to Linux kernel @ 0xa0008000
>>> Uncompressing Linux... done, booting the kernel.
>>> [    0.000000] Booting Linux on physical CPU 0x0
>>> [    0.000000] Linux version 3.14.4 (max@tsunami.pacs.agpea.army.mil)
>>> (gcc version 4.9.2 (GCC) ) #1 PREEMPT Wed Sep 28 16:29:41 EDT 2016
>>> [    0.000000] CPU: XScale-PXA270 [69054118] revision 8 (ARMv5TE),
>>> cr=3D0000397f
>>> [    0.000000] CPU: VIVT data cache, VIVT instruction cache
>>> [    0.000000] Machine: InHand Fingertip4 Development Platform (aka FT4=
)
>>> [    0.000000] Memory policy: Data cache writeback
>>> [    0.000000] BUG: mapping for 0x00000000 at 0xff000000 out of vmalloc
>>> space
>>> [    0.000000] Run Mode clock: 208.00MHz (*16)
>>> [    0.000000] Turbo Mode clock: 520.00MHz (*2.5, active)
>>> [    0.000000] Memory clock: 208.00MHz (/2)
>>> [    0.000000] System bus clock: 208.00MHz
>>> [    0.000000] Built 1 zonelists in Zone order, mobility grouping on.
>>> Total pages: 16256
>>> [    0.000000] Kernel command line: console=3DttyS0,115200
>>> root=3D/dev/mtdblock0 rw rootfstype=3Djffs2 mem=3D64M
>>> earlyprintk=3Dserial,ttyS0,115200
>>> [    0.000000] PID hash table entries: 256 (order: -2, 1024 bytes)
>>> [    0.000000] Dentry cache hash table entries: 8192 (order: 3, 32768
>>> bytes)
>>> [    0.000000] Inode-cache hash table entries: 4096 (order: 2, 16384
>>> bytes)
>>> [    0.000000] Memory: 59616K/65536K available (3732K kernel code, 184K
>>> rwdata, 1132K rodata, 139K init, 94K bss, 5920K reserved)
>>> [    0.000000] Virtual kernel memory layout:
>>> [    0.000000]     vector  : 0xffff0000 - 0xffff1000   (   4 kB)
>>> [    0.000000]     fixmap  : 0xfff00000 - 0xfffe0000   ( 896 kB)
>>> [    0.000000]     vmalloc : 0xc4800000 - 0xff000000   ( 936 MB)
>>> [    0.000000]     lowmem  : 0xc0000000 - 0xc4000000   (  64 MB)
>>> [    0.000000]     modules : 0xbf000000 - 0xc0000000   (  16 MB)
>>> [    0.000000]       .text : 0xc0008000 - 0xc04c83fc   (4865 kB)
>>> [    0.000000]       .init : 0xc04c9000 - 0xc04ebcd4   ( 140 kB)
>>> [    0.000000]       .data : 0xc04ec000 - 0xc051a180   ( 185 kB)
>>> [    0.000000]        .bss : 0xc051a18c - 0xc0531b90   (  95 kB)
>>> [    0.000000] Preemptible hierarchical RCU implementation.
>>> [    0.000000] NR_IRQS:16 nr_irqs:304 304
>>> [    0.000046] sched_clock: 32 bits at 3250kHz, resolution 307ns, wraps
>>> every 1321528397516ns
>>> [    0.000691] Console: colour dummy device 80x30
>>> [    0.000769] Calibrating delay loop... 518.55 BogoMIPS (lpj=3D2592768=
)
>>> [    0.060347] pid_max: default: 32768 minimum: 301
>>> [    0.060594] Security Framework initialized
>>> [    0.060741] Mount-cache hash table entries: 1024 (order: 0, 4096
>>> bytes)
>>> [    0.060774] Mountpoint-cache hash table entries: 1024 (order: 0, 409=
6
>>> bytes)
>>> [    0.062150] CPU: Testing write buffer coherency: ok
>>> [    0.063287] Setting up static identity map for 0xa038e6d8 - 0xa038e7=
44
>>> [    0.069844] NET: Registered protocol family 16
>>> [    0.071694] DMA: preallocated 256 KiB pool for atomic coherent
>>> allocations
>>> [    0.095946] Configure Fingertip4...
>>> [    0.188992] bio: create slab <bio-0> at 0
>>> [    0.197249] usbcore: registered new interface driver usbfs
>>> [    0.198138] usbcore: registered new interface driver hub
>>> [    0.199246] usbcore: registered new device driver usb
>>> [    0.210323] cfg80211: Calling CRDA to update world regulatory domain
>>> [    0.211077] Switched to clocksource oscr0
>>> [    0.282781] NET: Registered protocol family 2
>>> [    0.284302] TCP established hash table entries: 1024 (order: 0, 4096
>>> bytes)
>>> [    0.284382] TCP bind hash table entries: 1024 (order: 0, 4096 bytes)
>>> [    0.284426] TCP: Hash tables configured (established 1024 bind 1024)
>>> [    0.284648] TCP: reno registered
>>> [    0.284673] UDP hash table entries: 256 (order: 0, 4096 bytes)
>>> [    0.284717] UDP-Lite hash table entries: 256 (order: 0, 4096 bytes)
>>> [    0.285236] NET: Registered protocol family 1
>>> [    0.286343] RPC: Registered named UNIX socket transport module.
>>> [    0.286402] RPC: Registered udp transport module.
>>> [    0.286416] RPC: Registered tcp transport module.
>>> [    0.286431] RPC: Registered tcp NFSv4.1 backchannel transport module=
.
>>> [    0.292910] futex hash table entries: 256 (order: -1, 3072 bytes)
>>> [    0.295619] NFS: Registering the id_resolver key type
>>> [    0.295843] Key type id_resolver registered
>>> [    0.295859] Key type id_legacy registered
>>> [    0.295901] Installing knfsd (copyright (C) 1996 okir@monad.swb.de).
>>> [    0.296346] jffs2: version 2.2. (NAND) =C2=A9 2001-2006 Red Hat, Inc=
.
>>> [    0.297841] msgmni has been set to 116
>>> [    0.300940] io scheduler noop registered
>>> [    0.300991] io scheduler deadline registered
>>> [    0.301491] io scheduler cfq registered (default)
>>> [    0.754840] pxa2xx-uart.0: ttyS0 at MMIO 0x40100000 (irq =3D 22,
>>> base_baud =3D 928562) is a UART1
>>> [    1.153128] console [ttyS0] enabled
>>> [    1.157921] pxa2xx-uart.1: ttyS1 at MMIO 0x40200000 (irq =3D 21,
>>> base_baud =3D 928562) is a UART2
>>> [    1.168016] pxa2xx-uart.2: ttyS2 at MMIO 0x40700000 (irq =3D 20,
>>> base_baud =3D 928562) is a UART3
>>> [    1.197503] brd: module loaded
>>> [    1.221064] loop: module loaded
>>> [    1.225694] nbd: registered device at major 43
>>> [    1.271030] Uniform Multi-Platform E-IDE driver
>>> [    1.277643] ide-gd driver 1.18
>>> [    1.286435] physmap platform flash device: 04000000 at 00000000
>>> [    1.293684] physmap-flash.0: Found 1 x16 devices at 0x0 in 16-bit
>>> bank. Manufacturer ID 0x000089 Chip ID 0x00891c
>>> [    1.304429] physmap-flash.0: Found 1 x16 devices at 0x2000000 in
>>> 16-bit bank
>>> [    1.311720] Intel/Sharp Extended Query Table at 0x010A
>>> [    1.316876] Intel/Sharp Extended Query Table at 0x010A
>>> [    1.322184] Intel/Sharp Extended Query Table at 0x010A
>>> [    1.327328] Intel/Sharp Extended Query Table at 0x010A
>>> [    1.332518] Intel/Sharp Extended Query Table at 0x010A
>>> [    1.337660] Using buffer write method
>>> [    1.341323] Using auto-unlock on power-up/resume
>>> [    1.345909] cfi_cmdset_0001: Erase suspend on write enabled
>>> [    1.353683] Creating 1 MTD partitions on "physmap-flash.0":
>>> [    1.359284] 0x000000900000-0x000004000000 : "Filesystem"
>>> [    1.371691] Using configured DiskOnChip probe address 0x4000000
>>> [    1.380537] mousedev: PS/2 mouse device common for all mice
>>> [    1.386463] i2c /dev entries driver
>>> [    1.393931] TCP: cubic registered
>>> [    1.397286] NET: Registered protocol family 17
>>> [    1.402235] NET: Registered protocol family 15
>>> [    1.406830] lib80211: common routines for IEEE802.11 drivers
>>> [    1.413102] Key type dns_resolver registered
>>> [    1.417577] XScale iWMMXt coprocessor detected.
>>> [    3.259509] VFS: Mounted root (jffs2 filesystem) on device 31:0.
>>> [    3.266333] Freeing unused kernel memory: 136K (c04c9000 - c04eb000)
>>> [   14.484953] reboot: System halted
>>>
>>>
>>> --
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>>
>>>
>>
>>
>> --
>> Life is like Linux - it never stands still.
>>
>>
>

--001a1143eb7cd1d3aa053dbcf295
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Got it.=C2=A0 I needed to turn switch on CONFIG_DEVTM=
PFS=3Dy, and CONFIG_DEVTMPFS_MOUNT=3Dy in the kernel.=C2=A0 Now dev is popu=
lated and everything else came along with it.<br><br></div><div>Thanks!<br>=
<br></div>-Max<br></div><div class=3D"gmail_extra"><br><div class=3D"gmail_=
quote">On Fri, Sep 30, 2016 at 12:16 PM, Maxwell Bottiger <span dir=3D"ltr"=
>&lt;<a href=3D"mailto:sleepylight@jive-turkey.net" target=3D"_blank">sleep=
ylight@jive-turkey.net</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_=
quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1=
ex"><div dir=3D"ltr"><div><div><div>Chris,<br><br></div>Thanks for the sugg=
estions.=C2=A0 The system is based on SystemV and uses the old school init =
scripts.<br><br>I rebuilt my kernel with init=3D/bin/sh and I can get into =
the system now!=C2=A0 The thing is, I don&#39;t see anything in /proc, and =
only /dev/null exists in the /dev directory.=C2=A0 I don&#39;t know if the =
lack of meta filesystems is due to me skipping an actual init, or if I&#39;=
ve buggered up something in my kernel configuration.<br><br></div>This cont=
inues to be the world&#39;s most secure box, but I feel like I&#39;m making=
 progress on that.<br><br></div>-Max<br></div><div class=3D"HOEnZb"><div cl=
ass=3D"h5"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Thu=
, Sep 29, 2016 at 4:40 PM, Chris Hallinan <span dir=3D"ltr">&lt;<a href=3D"=
mailto:challinan@gmail.com" target=3D"_blank">challinan@gmail.com</a>&gt;</=
span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8e=
x;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr">You could s=
ell this as a very secure box ;)<div><br></div><div>Kidding aside, it didn&=
#39;t &quot;zip&quot; through runlevel 5, in fact, you don&#39;t know what =
runlevel it is actually in. =C2=A011 seconds after your file system is moun=
ted, a reboot is issued.=C2=A0 From your trace, nothing running in userspac=
e displayed any messages to the console.=C2=A0 You didn&#39;t mention what =
type of init system you are using, systemd or sysV.=C2=A0 It almost looks l=
ike a console problem.=C2=A0 But...i don&#39;t know why a reboot would be i=
ssued.=C2=A0 That&#39;s not normal behavior if you simply have a min-config=
ured console.=C2=A0 Maybe init will do that under certain circumstances, I =
am not sure.</div><div><br></div><div>Just for FYI, notice that your serial=
 port is instantiating on ttyS0. (I do see that agrees with your kernel com=
mand line so at least that much is correct.)</div><div><br></div><div>First=
 thing I would try is to see if I can get anything on userspace.=C2=A0 Try =
using init=3D on your kernel command line to just spawn a shell. =C2=A0(ini=
t=3D/bin/sh)</div><div><br></div><div>Do you have a way to examine the flas=
h after a reboot to see if a syslog was populated on the file system and ex=
amine its contents? =C2=A0ie JTAG?</div><div><br></div><div>Make sure your =
root file system is sane, ie mount it on a development box and make sure it=
&#39;s contents make sense to you. =C2=A0ie for sysV /sbin/init should poin=
t to init, and it should contain a /etc/inittab and that should have sane c=
ontents, etc. For systemd, /sbin/init should point (possibly through /etc/a=
lternatives) to a systemd executable.=C2=A0 You get the idea.</div><div><br=
></div><div>Good luck,</div><div><br></div><div>Chris</div><div><br></div><=
/div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote"><div><div>On=
 Thu, Sep 29, 2016 at 3:18 PM, Maxwell Bottiger <span dir=3D"ltr">&lt;<a hr=
ef=3D"mailto:sleepylight@jive-turkey.net" target=3D"_blank">sleepylight@jiv=
e-turkey.net</a>&gt;</span> wrote:<br></div></div><blockquote class=3D"gmai=
l_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left=
:1ex"><div><div><div dir=3D"ltr"><div>I&#39;ve been working on setting up a=
 poky distro on an older intel XScale system, and I finally got a working k=
ernel and root filesystem.=C2=A0 However, when I boot the box it zips throu=
gh runlevel 5, then halts.=C2=A0 It seems to me like maybe init isn&#39;t k=
icking off getty or some sort of interactive login.=C2=A0 Has anyone else r=
un into this problem?=C2=A0 I&#39;ll post the boot output below.<br><br></d=
iv>-Max<br><br>Bootloader Initialization Successful.<br>Copyright (c) 2010 =
InHand Electronics (<a href=3D"http://www.inhand.com" target=3D"_blank">www=
.inhand.com</a>)<br>=C2=A0FT4: Fingertip4=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 v.0A211004 (Oct 21 2010, 10:0=
4:57)<br>=C2=A0IBL: InHandBoot_4.9 BETA=C2=A0=C2=A0=C2=A0=C2=A0 v.0A211004 =
(Oct 21 2010, 10:04:19)<br><br>CPLD Version:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
5.10<br>DRAM Size:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 128 MByt=
es<br>SRAM Size:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 240 KBytes=
<br>IBC Start Page:=C2=A0=C2=A0=C2=A0 /nor/512<br><br>Platform Post-Init<br=
>ac97<br><br>Autorun &#39;/cf/autoexec.brc&#39;<br>&#39;/cf/autoexec.brc&#3=
9; not found<br><br>Autorun &#39;/sd/autoexec.brc&#39;<br>&#39;/sd/autoexec=
.brc&#39; not found<br><br>Autorun &#39;/nor/config.brc&#39;<br>&gt;&gt; bo=
otlin<br>Starting Linux<br>Copying image (2689792 bytes) to RAM: 0xa0008000=
<br><br>Copying file /nor/zImage to /ram/os<br>=C2=A0 Source File:=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 2689792 bytes<br>=C2=A0 Desti=
nation Space:=C2=A0=C2=A0=C2=A0 4194304 bytes<br><br>Copying 2689792 bytes<=
br>=C2=A0pct remaining=C2=A0 time<br>=C2=A0--- --------- -----<br>100%=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 0=C2=A0=C2=A0 0:00=C2=A0 <br>Copied=
 2689792B (3MB)<br>Setting up Kernel tags at: 0xa0000100<br>Kernel tags use=
d 36 bytes<br>Disabling MMU<br>Jumping to Linux kernel @ 0xa0008000<br>Unco=
mpressing Linux... done, booting the kernel.<br>[=C2=A0=C2=A0=C2=A0 0.00000=
0] Booting Linux on physical CPU 0x0<br>[=C2=A0=C2=A0=C2=A0 0.000000] Linux=
 version 3.14.4 (<a href=3D"mailto:max@tsunami.pacs.agpea.army.mil" target=
=3D"_blank">max@tsunami.pacs.agpea.army.m<wbr>il</a>) (gcc version 4.9.2 (G=
CC) ) #1 PREEMPT Wed Sep 28 16:29:41 EDT 2016<br>[=C2=A0=C2=A0=C2=A0 0.0000=
00] CPU: XScale-PXA270 [69054118] revision 8 (ARMv5TE), cr=3D0000397f<br>[=
=C2=A0=C2=A0=C2=A0 0.000000] CPU: VIVT data cache, VIVT instruction cache<b=
r>[=C2=A0=C2=A0=C2=A0 0.000000] Machine: InHand Fingertip4 Development Plat=
form (aka FT4)<br>[=C2=A0=C2=A0=C2=A0 0.000000] Memory policy: Data cache w=
riteback<br>[=C2=A0=C2=A0=C2=A0 0.000000] BUG: mapping for 0x00000000 at 0x=
ff000000 out of vmalloc space<br>[=C2=A0=C2=A0=C2=A0 0.000000] Run Mode clo=
ck: 208.00MHz (*16)<br>[=C2=A0=C2=A0=C2=A0 0.000000] Turbo Mode clock: 520.=
00MHz (*2.5, active)<br>[=C2=A0=C2=A0=C2=A0 0.000000] Memory clock: 208.00M=
Hz (/2)<br>[=C2=A0=C2=A0=C2=A0 0.000000] System bus clock: 208.00MHz <br>[=
=C2=A0=C2=A0=C2=A0 0.000000] Built 1 zonelists in Zone order, mobility grou=
ping on.=C2=A0 Total pages: 16256<br>[=C2=A0=C2=A0=C2=A0 0.000000] Kernel c=
ommand line: console=3DttyS0,115200 root=3D/dev/mtdblock0 rw rootfstype=3Dj=
ffs2 mem=3D64M earlyprintk=3Dserial,ttyS0,11520<wbr>0<br>[=C2=A0=C2=A0=C2=
=A0 0.000000] PID hash table entries: 256 (order: -2, 1024 bytes)<br>[=C2=
=A0=C2=A0=C2=A0 0.000000] Dentry cache hash table entries: 8192 (order: 3, =
32768 bytes)<br>[=C2=A0=C2=A0=C2=A0 0.000000] Inode-cache hash table entrie=
s: 4096 (order: 2, 16384 bytes)<br>[=C2=A0=C2=A0=C2=A0 0.000000] Memory: 59=
616K/65536K available (3732K kernel code, 184K rwdata, 1132K rodata, 139K i=
nit, 94K bss, 5920K reserved)<br>[=C2=A0=C2=A0=C2=A0 0.000000] Virtual kern=
el memory layout:<br>[=C2=A0=C2=A0=C2=A0 0.000000]=C2=A0=C2=A0=C2=A0=C2=A0 =
vector=C2=A0 : 0xffff0000 - 0xffff1000=C2=A0=C2=A0 (=C2=A0=C2=A0 4 kB)<br>[=
=C2=A0=C2=A0=C2=A0 0.000000]=C2=A0=C2=A0=C2=A0=C2=A0 fixmap=C2=A0 : 0xfff00=
000 - 0xfffe0000=C2=A0=C2=A0 ( 896 kB)<br>[=C2=A0=C2=A0=C2=A0 0.000000]=C2=
=A0=C2=A0=C2=A0=C2=A0 vmalloc : 0xc4800000 - 0xff000000=C2=A0=C2=A0 ( 936 M=
B)<br>[=C2=A0=C2=A0=C2=A0 0.000000]=C2=A0=C2=A0=C2=A0=C2=A0 lowmem=C2=A0 : =
0xc0000000 - 0xc4000000=C2=A0=C2=A0 (=C2=A0 64 MB)<br>[=C2=A0=C2=A0=C2=A0 0=
.000000]=C2=A0=C2=A0=C2=A0=C2=A0 modules : 0xbf000000 - 0xc0000000=C2=A0=C2=
=A0 (=C2=A0 16 MB)<br>[=C2=A0=C2=A0=C2=A0 0.000000]=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 .text : 0xc0008000 - 0xc04c83fc=C2=A0=C2=A0 (4865 kB)<br>[=C2=
=A0=C2=A0=C2=A0 0.000000]=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 .init : 0xc04=
c9000 - 0xc04ebcd4=C2=A0=C2=A0 ( 140 kB)<br>[=C2=A0=C2=A0=C2=A0 0.000000]=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 .data : 0xc04ec000 - 0xc051a180=C2=A0=
=C2=A0 ( 185 kB)<br>[=C2=A0=C2=A0=C2=A0 0.000000]=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 .bss : 0xc051a18c - 0xc0531b90=C2=A0=C2=A0 (=C2=A0 95 kB=
)<br>[=C2=A0=C2=A0=C2=A0 0.000000] Preemptible hierarchical RCU implementat=
ion.<br>[=C2=A0=C2=A0=C2=A0 0.000000] NR_IRQS:16 nr_irqs:304 304<br>[=C2=A0=
=C2=A0=C2=A0 0.000046] sched_clock: 32 bits at 3250kHz, resolution 307ns, w=
raps every 1321528397516ns<br>[=C2=A0=C2=A0=C2=A0 0.000691] Console: colour=
 dummy device 80x30<br>[=C2=A0=C2=A0=C2=A0 0.000769] Calibrating delay loop=
... 518.55 BogoMIPS (lpj=3D2592768)<br>[=C2=A0=C2=A0=C2=A0 0.060347] pid_ma=
x: default: 32768 minimum: 301<br>[=C2=A0=C2=A0=C2=A0 0.060594] Security Fr=
amework initialized<br>[=C2=A0=C2=A0=C2=A0 0.060741] Mount-cache hash table=
 entries: 1024 (order: 0, 4096 bytes)<br>[=C2=A0=C2=A0=C2=A0 0.060774] Moun=
tpoint-cache hash table entries: 1024 (order: 0, 4096 bytes)<br>[=C2=A0=C2=
=A0=C2=A0 0.062150] CPU: Testing write buffer coherency: ok<br>[=C2=A0=C2=
=A0=C2=A0 0.063287] Setting up static identity map for 0xa038e6d8 - 0xa038e=
744<br>[=C2=A0=C2=A0=C2=A0 0.069844] NET: Registered protocol family 16<br>=
[=C2=A0=C2=A0=C2=A0 0.071694] DMA: preallocated 256 KiB pool for atomic coh=
erent allocations<br>[=C2=A0=C2=A0=C2=A0 0.095946] Configure Fingertip4...<=
br>[=C2=A0=C2=A0=C2=A0 0.188992] bio: create slab &lt;bio-0&gt; at 0<br>[=
=C2=A0=C2=A0=C2=A0 0.197249] usbcore: registered new interface driver usbfs=
<br>[=C2=A0=C2=A0=C2=A0 0.198138] usbcore: registered new interface driver =
hub<br>[=C2=A0=C2=A0=C2=A0 0.199246] usbcore: registered new device driver =
usb<br>[=C2=A0=C2=A0=C2=A0 0.210323] cfg80211: Calling CRDA to update world=
 regulatory domain<br>[=C2=A0=C2=A0=C2=A0 0.211077] Switched to clocksource=
 oscr0<br>[=C2=A0=C2=A0=C2=A0 0.282781] NET: Registered protocol family 2<b=
r>[=C2=A0=C2=A0=C2=A0 0.284302] TCP established hash table entries: 1024 (o=
rder: 0, 4096 bytes)<br>[=C2=A0=C2=A0=C2=A0 0.284382] TCP bind hash table e=
ntries: 1024 (order: 0, 4096 bytes)<br>[=C2=A0=C2=A0=C2=A0 0.284426] TCP: H=
ash tables configured (established 1024 bind 1024)<br>[=C2=A0=C2=A0=C2=A0 0=
.284648] TCP: reno registered<br>[=C2=A0=C2=A0=C2=A0 0.284673] UDP hash tab=
le entries: 256 (order: 0, 4096 bytes)<br>[=C2=A0=C2=A0=C2=A0 0.284717] UDP=
-Lite hash table entries: 256 (order: 0, 4096 bytes)<br>[=C2=A0=C2=A0=C2=A0=
 0.285236] NET: Registered protocol family 1<br>[=C2=A0=C2=A0=C2=A0 0.28634=
3] RPC: Registered named UNIX socket transport module.<br>[=C2=A0=C2=A0=C2=
=A0 0.286402] RPC: Registered udp transport module.<br>[=C2=A0=C2=A0=C2=A0 =
0.286416] RPC: Registered tcp transport module.<br>[=C2=A0=C2=A0=C2=A0 0.28=
6431] RPC: Registered tcp NFSv4.1 backchannel transport module.<br>[=C2=A0=
=C2=A0=C2=A0 0.292910] futex hash table entries: 256 (order: -1, 3072 bytes=
)<br>[=C2=A0=C2=A0=C2=A0 0.295619] NFS: Registering the id_resolver key typ=
e<br>[=C2=A0=C2=A0=C2=A0 0.295843] Key type id_resolver registered<br>[=C2=
=A0=C2=A0=C2=A0 0.295859] Key type id_legacy registered<br>[=C2=A0=C2=A0=C2=
=A0 0.295901] Installing knfsd (copyright (C) 1996 <a href=3D"mailto:okir@m=
onad.swb.de" target=3D"_blank">okir@monad.swb.de</a>).<br>[=C2=A0=C2=A0=C2=
=A0 0.296346] jffs2: version 2.2. (NAND) =C2=A9 2001-2006 Red Hat, Inc.<br>=
[=C2=A0=C2=A0=C2=A0 0.297841] msgmni has been set to 116<br>[=C2=A0=C2=A0=
=C2=A0 0.300940] io scheduler noop registered<br>[=C2=A0=C2=A0=C2=A0 0.3009=
91] io scheduler deadline registered<br>[=C2=A0=C2=A0=C2=A0 0.301491] io sc=
heduler cfq registered (default)<br>[=C2=A0=C2=A0=C2=A0 0.754840] pxa2xx-ua=
rt.0: ttyS0 at MMIO 0x40100000 (irq =3D 22, base_baud =3D 928562) is a UART=
1<br>[=C2=A0=C2=A0=C2=A0 1.153128] console [ttyS0] enabled<br>[=C2=A0=C2=A0=
=C2=A0 1.157921] pxa2xx-uart.1: ttyS1 at MMIO 0x40200000 (irq =3D 21, base_=
baud =3D 928562) is a UART2<br>[=C2=A0=C2=A0=C2=A0 1.168016] pxa2xx-uart.2:=
 ttyS2 at MMIO 0x40700000 (irq =3D 20, base_baud =3D 928562) is a UART3<br>=
[=C2=A0=C2=A0=C2=A0 1.197503] brd: module loaded<br>[=C2=A0=C2=A0=C2=A0 1.2=
21064] loop: module loaded<br>[=C2=A0=C2=A0=C2=A0 1.225694] nbd: registered=
 device at major 43<br>[=C2=A0=C2=A0=C2=A0 1.271030] Uniform Multi-Platform=
 E-IDE driver<br>[=C2=A0=C2=A0=C2=A0 1.277643] ide-gd driver 1.18<br>[=C2=
=A0=C2=A0=C2=A0 1.286435] physmap platform flash device: 04000000 at 000000=
00<br>[=C2=A0=C2=A0=C2=A0 1.293684] physmap-flash.0: Found 1 x16 devices at=
 0x0 in 16-bit bank. Manufacturer ID 0x000089 Chip ID 0x00891c<br>[=C2=A0=
=C2=A0=C2=A0 1.304429] physmap-flash.0: Found 1 x16 devices at 0x2000000 in=
 16-bit bank<br>[=C2=A0=C2=A0=C2=A0 1.311720] Intel/Sharp Extended Query Ta=
ble at 0x010A<br>[=C2=A0=C2=A0=C2=A0 1.316876] Intel/Sharp Extended Query T=
able at 0x010A<br>[=C2=A0=C2=A0=C2=A0 1.322184] Intel/Sharp Extended Query =
Table at 0x010A<br>[=C2=A0=C2=A0=C2=A0 1.327328] Intel/Sharp Extended Query=
 Table at 0x010A<br>[=C2=A0=C2=A0=C2=A0 1.332518] Intel/Sharp Extended Quer=
y Table at 0x010A<br>[=C2=A0=C2=A0=C2=A0 1.337660] Using buffer write metho=
d<br>[=C2=A0=C2=A0=C2=A0 1.341323] Using auto-unlock on power-up/resume<br>=
[=C2=A0=C2=A0=C2=A0 1.345909] cfi_cmdset_0001: Erase suspend on write enabl=
ed<br>[=C2=A0=C2=A0=C2=A0 1.353683] Creating 1 MTD partitions on &quot;phys=
map-flash.0&quot;:<br>[=C2=A0=C2=A0=C2=A0 1.359284] 0x000000900000-0x000004=
000000 : &quot;Filesystem&quot;<br>[=C2=A0=C2=A0=C2=A0 1.371691] Using conf=
igured DiskOnChip probe address 0x4000000<br>[=C2=A0=C2=A0=C2=A0 1.380537] =
mousedev: PS/2 mouse device common for all mice<br>[=C2=A0=C2=A0=C2=A0 1.38=
6463] i2c /dev entries driver<br>[=C2=A0=C2=A0=C2=A0 1.393931] TCP: cubic r=
egistered<br>[=C2=A0=C2=A0=C2=A0 1.397286] NET: Registered protocol family =
17<br>[=C2=A0=C2=A0=C2=A0 1.402235] NET: Registered protocol family 15<br>[=
=C2=A0=C2=A0=C2=A0 1.406830] lib80211: common routines for IEEE802.11 drive=
rs<br>[=C2=A0=C2=A0=C2=A0 1.413102] Key type dns_resolver registered<br>[=
=C2=A0=C2=A0=C2=A0 1.417577] XScale iWMMXt coprocessor detected.<br>[=C2=A0=
=C2=A0=C2=A0 3.259509] VFS: Mounted root (jffs2 filesystem) on device 31:0.=
<br>[=C2=A0=C2=A0=C2=A0 3.266333] Freeing unused kernel memory: 136K (c04c9=
000 - c04eb000)<br>[=C2=A0=C2=A0 14.484953] reboot: System halted<br><br></=
div>
<br></div></div><span><font color=3D"#888888">--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org<wbr>/listinfo/yocto</a><=
br>
<br></font></span></blockquote></div><span><font color=3D"#888888"><br><br =
clear=3D"all"><div><br></div>-- <br><div data-smartmail=3D"gmail_signature"=
>Life is like Linux - it never stands still.<br><br></div>
</font></span></div>
</blockquote></div><br></div>
</div></div></blockquote></div><br></div>

--001a1143eb7cd1d3aa053dbcf295--
