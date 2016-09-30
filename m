Return-Path: <challinan@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D8C27E00D7F; Fri, 30 Sep 2016 11:00:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.215.51 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.215.51 listed in dnsbl.sorbs.net]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (challinan[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f51.google.com (mail-lf0-f51.google.com
	[209.85.215.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7673CE00C02
	for <yocto@yoctoproject.org>; Fri, 30 Sep 2016 11:00:20 -0700 (PDT)
Received: by mail-lf0-f51.google.com with SMTP id g62so113245101lfe.3
	for <yocto@yoctoproject.org>; Fri, 30 Sep 2016 11:00:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=WOC/hp0TDeSGHN9kdWKrgTs4v2sbG/7lw/VL9vRkrG0=;
	b=bE1vGqamMptzAiPtar4k0xkJilSvVoazjLCKgWXdoRmz9itnPg4M91B2xD8ctXdoox
	/oxN1Sw2/pmTYzIq+S7eRyto1jWc0AuHU0OaRbJlaxbXQYTR3ldVoKfghbeT3oHeDpVc
	wOYYfmSr0B4+vCmbrQbwDbNguciAvihg3+qwGAghnyzYRGKN4tpPLSGg/Yf43/2UE/Sk
	YfEOsAhU7LcSyK5eKBiojRHgRfiBVudiBtHoFSMixLL0ThsNEsq21hknFKhYdUnIyWYE
	rrfjyhlukzJ1JWclj6zKOz/64n06J5DSbXJCsbRwSsnQczV9JztZQD/hgSRMSPBUm+rR
	OW4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=WOC/hp0TDeSGHN9kdWKrgTs4v2sbG/7lw/VL9vRkrG0=;
	b=jvkKTVKcFThpm9mvKxqAt9x6wK+yoH6aKaSP8aOGH4FRrcuwMKDzU5a7K2go9q9WEb
	ArgpFrwCQyGIW0Za3Jv2QZD6rMJ7tyU45gg7fFmFWiu12xoRpa+s5LAt/0vaeDDbRnXb
	G4LEm5PayDJzZiIEeq4SeS8RQ9NNTwa7TNjBy4ra7rWW4tp20/7JUGj0gfrFyYM5oCkh
	ei3Crakj1Rn8Y/NcNZvNpnyeZ4ZCPYaZQSzvtpIyqKZDXSnwpVxqBZq4kJ/t912lzMEC
	2cDaX1mhZveJcB8fIuSkii7UQeQfa0C77ZIC5M8K7cbnaPDCqz0aImFnNN5vO+cs4lpb
	PsQQ==
X-Gm-Message-State: AA6/9Rk+A1D3130U4hSLgZZc6U6p8AUAS26dJhMAHEYL7Fuuk8i3SFp0ydwctZxwQWWMlVe5OdglC1km3rOxOQ==
X-Received: by 10.25.217.146 with SMTP id s18mr3179338lfi.46.1475258418608;
	Fri, 30 Sep 2016 11:00:18 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.114.28.138 with HTTP; Fri, 30 Sep 2016 11:00:17 -0700 (PDT)
In-Reply-To: <CADi-vszcy8OK4T2U2h+UPGzXM63VJ9bK5e7cqfDEjMnd5NG4ww@mail.gmail.com>
References: <CADi-vswLkJhV+OZDmuBykid=zvT39y0pjshFhushpzmCMfb4ZQ@mail.gmail.com>
	<CAME0jBTC4=5v5JRYUVZ97xPUf1Wu7WV6AzCQ7z-uAj1rikQu6A@mail.gmail.com>
	<CADi-vszcy8OK4T2U2h+UPGzXM63VJ9bK5e7cqfDEjMnd5NG4ww@mail.gmail.com>
From: Chris Hallinan <challinan@gmail.com>
Date: Fri, 30 Sep 2016 14:00:17 -0400
Message-ID: <CAME0jBSE=PnvosA_FOtv40k1k-YOzJqHf4PyKR6QV5daGZgMGg@mail.gmail.com>
To: Maxwell Bottiger <sleepylight@jive-turkey.net>
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
X-List-Received-Date: Fri, 30 Sep 2016 18:00:23 -0000
Content-Type: multipart/alternative; boundary=94eb2c07a47efe41a6053dbd5d4c

--94eb2c07a47efe41a6053dbd5d4c
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Nope, you are seeing exactly what I would have expected. You have verified
a lot of functionality.  Your kernel boots, mounts a root file system, and
executes your init command.  So that's a big step.  Now you need to sort
out your sysV init stuff.  You can actually do a lot from that simple
shell. See below.

init does _lots_ of stuff on first boot, including mounting /proc and
/sys.  On modern systems the /dev directory is populated dynamically as
devices are discovered.  This is done by udev on a sysV system.  While I
haven't looked into the details in anything modern ;), there used to be
just a tiny subset of static /dev nodes before udev took over.  Don't know
how it exactly works today.  But it doesn't matter, when you get it
working, it will all "Just Work" ;)

To get proc and sys, do this:

# mount -t proc /proc /proc
# mount -t sysfs /sys /sys

(Note to the experts: I know one of those parameters is superfluous, but it
displays nicely on mount command so I do it that way.)

Now that you have /proc and /sys, you can start executing the same commands
your init system would have done.  Typically that comes from /etc/inittab,
and usually involves running something like a rc script with runlevel set
to 'S' at first.  Take a look at inittab to see what it's supposed to do.
All of your sysV init scripts (and the symlinks which define which scripts
get run upon entry/exit of a runlevel) should be found in /etc/init.d/* if
memory serves.  Haven't played with a sysV system in a while ;)

Even just try running /sbin/init and see what happens.  Obviously something
in your setup is messed up.

Good luck,

Chris

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


--=20
Life is like Linux - it never stands still.

--94eb2c07a47efe41a6053dbd5d4c
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Nope, you are seeing exactly what I would have expected. Y=
ou have verified a lot of functionality.=C2=A0 Your kernel boots, mounts a =
root file system, and executes your init command.=C2=A0 So that&#39;s a big=
 step.=C2=A0 Now you need to sort out your sysV init stuff.=C2=A0 You can a=
ctually do a lot from that simple shell. See below.<div><br></div><div>init=
 does _lots_ of stuff on first boot, including mounting /proc and /sys.=C2=
=A0 On modern systems the /dev directory is populated dynamically as device=
s are discovered.=C2=A0 This is done by udev on a sysV system.=C2=A0 While =
I haven&#39;t looked into the details in anything modern ;), there used to =
be just a tiny subset of static /dev nodes before udev took over.=C2=A0 Don=
&#39;t know how it exactly works today.=C2=A0 But it doesn&#39;t matter, wh=
en you get it working, it will all &quot;Just Work&quot; ;)<br></div><div><=
div><br></div><div>To get proc and sys, do this:<div><br></div><div># mount=
 -t proc /proc /proc</div><div># mount -t sysfs /sys /sys</div><div><br></d=
iv><div>(Note to the experts: I know one of those parameters is superfluous=
, but it displays nicely on mount command so I do it that way.)</div></div>=
</div><div><br></div><div>Now that you have /proc and /sys, you can start e=
xecuting the same commands your init system would have done.=C2=A0 Typicall=
y that comes from /etc/inittab, and usually involves running something like=
 a rc script with runlevel set to &#39;S&#39; at first.=C2=A0 Take a look a=
t inittab to see what it&#39;s supposed to do.=C2=A0 All of your sysV init =
scripts (and the symlinks which define which scripts get run upon entry/exi=
t of a runlevel) should be found in /etc/init.d/* if memory serves.=C2=A0 H=
aven&#39;t played with a sysV system in a while ;)</div><div><br></div><div=
>Even just try running /sbin/init and see what happens.=C2=A0 Obviously som=
ething in your setup is messed up.</div><div><br></div><div>Good luck,</div=
><div><br></div><div>Chris</div></div><div class=3D"gmail_extra"><br><div c=
lass=3D"gmail_quote">On Fri, Sep 30, 2016 at 12:16 PM, Maxwell Bottiger <sp=
an dir=3D"ltr">&lt;<a href=3D"mailto:sleepylight@jive-turkey.net" target=3D=
"_blank">sleepylight@jive-turkey.net</a>&gt;</span> wrote:<br><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;=
padding-left:1ex"><div dir=3D"ltr"><div><div><div>Chris,<br><br></div>Thank=
s for the suggestions.=C2=A0 The system is based on SystemV and uses the ol=
d school init scripts.<br><br>I rebuilt my kernel with init=3D/bin/sh and I=
 can get into the system now!=C2=A0 The thing is, I don&#39;t see anything =
in /proc, and only /dev/null exists in the /dev directory.=C2=A0 I don&#39;=
t know if the lack of meta filesystems is due to me skipping an actual init=
, or if I&#39;ve buggered up something in my kernel configuration.<br><br><=
/div>This continues to be the world&#39;s most secure box, but I feel like =
I&#39;m making progress on that.<br><br></div>-Max<br></div><div class=3D"H=
OEnZb"><div class=3D"h5"><div class=3D"gmail_extra"><br><div class=3D"gmail=
_quote">On Thu, Sep 29, 2016 at 4:40 PM, Chris Hallinan <span dir=3D"ltr">&=
lt;<a href=3D"mailto:challinan@gmail.com" target=3D"_blank">challinan@gmail=
.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"lt=
r">You could sell this as a very secure box ;)<div><br></div><div>Kidding a=
side, it didn&#39;t &quot;zip&quot; through runlevel 5, in fact, you don&#3=
9;t know what runlevel it is actually in. =C2=A011 seconds after your file =
system is mounted, a reboot is issued.=C2=A0 From your trace, nothing runni=
ng in userspace displayed any messages to the console.=C2=A0 You didn&#39;t=
 mention what type of init system you are using, systemd or sysV.=C2=A0 It =
almost looks like a console problem.=C2=A0 But...i don&#39;t know why a reb=
oot would be issued.=C2=A0 That&#39;s not normal behavior if you simply hav=
e a min-configured console.=C2=A0 Maybe init will do that under certain cir=
cumstances, I am not sure.</div><div><br></div><div>Just for FYI, notice th=
at your serial port is instantiating on ttyS0. (I do see that agrees with y=
our kernel command line so at least that much is correct.)</div><div><br></=
div><div>First thing I would try is to see if I can get anything on userspa=
ce.=C2=A0 Try using init=3D on your kernel command line to just spawn a she=
ll. =C2=A0(init=3D/bin/sh)</div><div><br></div><div>Do you have a way to ex=
amine the flash after a reboot to see if a syslog was populated on the file=
 system and examine its contents? =C2=A0ie JTAG?</div><div><br></div><div>M=
ake sure your root file system is sane, ie mount it on a development box an=
d make sure it&#39;s contents make sense to you. =C2=A0ie for sysV /sbin/in=
it should point to init, and it should contain a /etc/inittab and that shou=
ld have sane contents, etc. For systemd, /sbin/init should point (possibly =
through /etc/alternatives) to a systemd executable.=C2=A0 You get the idea.=
</div><div><br></div><div>Good luck,</div><div><br></div><div>Chris</div><d=
iv><br></div></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote=
"><div><div class=3D"m_8137568345630618535h5">On Thu, Sep 29, 2016 at 3:18 =
PM, Maxwell Bottiger <span dir=3D"ltr">&lt;<a href=3D"mailto:sleepylight@ji=
ve-turkey.net" target=3D"_blank">sleepylight@jive-turkey.net</a>&gt;</span>=
 wrote:<br></div></div><blockquote class=3D"gmail_quote" style=3D"margin:0 =
0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div><div class=3D"m_=
8137568345630618535h5"><div dir=3D"ltr"><div>I&#39;ve been working on setti=
ng up a poky distro on an older intel XScale system, and I finally got a wo=
rking kernel and root filesystem.=C2=A0 However, when I boot the box it zip=
s through runlevel 5, then halts.=C2=A0 It seems to me like maybe init isn&=
#39;t kicking off getty or some sort of interactive login.=C2=A0 Has anyone=
 else run into this problem?=C2=A0 I&#39;ll post the boot output below.<br>=
<br></div>-Max<br><br>Bootloader Initialization Successful.<br>Copyright (c=
) 2010 InHand Electronics (<a href=3D"http://www.inhand.com" target=3D"_bla=
nk">www.inhand.com</a>)<br>=C2=A0FT4: Fingertip4=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 v.0A211004 (Oct 21 2010=
, 10:04:57)<br>=C2=A0IBL: InHandBoot_4.9 BETA=C2=A0=C2=A0=C2=A0=C2=A0 v.0A2=
11004 (Oct 21 2010, 10:04:19)<br><br>CPLD Version:=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 5.10<br>DRAM Size:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 1=
28 MBytes<br>SRAM Size:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 240=
 KBytes<br>IBC Start Page:=C2=A0=C2=A0=C2=A0 /nor/512<br><br>Platform Post-=
Init<br>ac97<br><br>Autorun &#39;/cf/autoexec.brc&#39;<br>&#39;/cf/autoexec=
.brc&#39; not found<br><br>Autorun &#39;/sd/autoexec.brc&#39;<br>&#39;/sd/a=
utoexec.brc&#39; not found<br><br>Autorun &#39;/nor/config.brc&#39;<br>&gt;=
&gt; bootlin<br>Starting Linux<br>Copying image (2689792 bytes) to RAM: 0xa=
0008000<br><br>Copying file /nor/zImage to /ram/os<br>=C2=A0 Source File:=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 2689792 bytes<br>=C2=
=A0 Destination Space:=C2=A0=C2=A0=C2=A0 4194304 bytes<br><br>Copying 26897=
92 bytes<br>=C2=A0pct remaining=C2=A0 time<br>=C2=A0--- --------- -----<br>=
100%=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 0=C2=A0=C2=A0 0:00=C2=A0 <br=
>Copied 2689792B (3MB)<br>Setting up Kernel tags at: 0xa0000100<br>Kernel t=
ags used 36 bytes<br>Disabling MMU<br>Jumping to Linux kernel @ 0xa0008000<=
br>Uncompressing Linux... done, booting the kernel.<br>[=C2=A0=C2=A0=C2=A0 =
0.000000] Booting Linux on physical CPU 0x0<br>[=C2=A0=C2=A0=C2=A0 0.000000=
] Linux version 3.14.4 (<a href=3D"mailto:max@tsunami.pacs.agpea.army.mil" =
target=3D"_blank">max@tsunami.pacs.agpea.army.m<wbr>il</a>) (gcc version 4.=
9.2 (GCC) ) #1 PREEMPT Wed Sep 28 16:29:41 EDT 2016<br>[=C2=A0=C2=A0=C2=A0 =
0.000000] CPU: XScale-PXA270 [69054118] revision 8 (ARMv5TE), cr=3D0000397f=
<br>[=C2=A0=C2=A0=C2=A0 0.000000] CPU: VIVT data cache, VIVT instruction ca=
che<br>[=C2=A0=C2=A0=C2=A0 0.000000] Machine: InHand Fingertip4 Development=
 Platform (aka FT4)<br>[=C2=A0=C2=A0=C2=A0 0.000000] Memory policy: Data ca=
che writeback<br>[=C2=A0=C2=A0=C2=A0 0.000000] BUG: mapping for 0x00000000 =
at 0xff000000 out of vmalloc space<br>[=C2=A0=C2=A0=C2=A0 0.000000] Run Mod=
e clock: 208.00MHz (*16)<br>[=C2=A0=C2=A0=C2=A0 0.000000] Turbo Mode clock:=
 520.00MHz (*2.5, active)<br>[=C2=A0=C2=A0=C2=A0 0.000000] Memory clock: 20=
8.00MHz (/2)<br>[=C2=A0=C2=A0=C2=A0 0.000000] System bus clock: 208.00MHz <=
br>[=C2=A0=C2=A0=C2=A0 0.000000] Built 1 zonelists in Zone order, mobility =
grouping on.=C2=A0 Total pages: 16256<br>[=C2=A0=C2=A0=C2=A0 0.000000] Kern=
el command line: console=3DttyS0,115200 root=3D/dev/mtdblock0 rw rootfstype=
=3Djffs2 mem=3D64M earlyprintk=3Dserial,ttyS0,11520<wbr>0<br>[=C2=A0=C2=A0=
=C2=A0 0.000000] PID hash table entries: 256 (order: -2, 1024 bytes)<br>[=
=C2=A0=C2=A0=C2=A0 0.000000] Dentry cache hash table entries: 8192 (order: =
3, 32768 bytes)<br>[=C2=A0=C2=A0=C2=A0 0.000000] Inode-cache hash table ent=
ries: 4096 (order: 2, 16384 bytes)<br>[=C2=A0=C2=A0=C2=A0 0.000000] Memory:=
 59616K/65536K available (3732K kernel code, 184K rwdata, 1132K rodata, 139=
K init, 94K bss, 5920K reserved)<br>[=C2=A0=C2=A0=C2=A0 0.000000] Virtual k=
ernel memory layout:<br>[=C2=A0=C2=A0=C2=A0 0.000000]=C2=A0=C2=A0=C2=A0=C2=
=A0 vector=C2=A0 : 0xffff0000 - 0xffff1000=C2=A0=C2=A0 (=C2=A0=C2=A0 4 kB)<=
br>[=C2=A0=C2=A0=C2=A0 0.000000]=C2=A0=C2=A0=C2=A0=C2=A0 fixmap=C2=A0 : 0xf=
ff00000 - 0xfffe0000=C2=A0=C2=A0 ( 896 kB)<br>[=C2=A0=C2=A0=C2=A0 0.000000]=
=C2=A0=C2=A0=C2=A0=C2=A0 vmalloc : 0xc4800000 - 0xff000000=C2=A0=C2=A0 ( 93=
6 MB)<br>[=C2=A0=C2=A0=C2=A0 0.000000]=C2=A0=C2=A0=C2=A0=C2=A0 lowmem=C2=A0=
 : 0xc0000000 - 0xc4000000=C2=A0=C2=A0 (=C2=A0 64 MB)<br>[=C2=A0=C2=A0=C2=
=A0 0.000000]=C2=A0=C2=A0=C2=A0=C2=A0 modules : 0xbf000000 - 0xc0000000=C2=
=A0=C2=A0 (=C2=A0 16 MB)<br>[=C2=A0=C2=A0=C2=A0 0.000000]=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 .text : 0xc0008000 - 0xc04c83fc=C2=A0=C2=A0 (4865 kB)<br=
>[=C2=A0=C2=A0=C2=A0 0.000000]=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 .init : =
0xc04c9000 - 0xc04ebcd4=C2=A0=C2=A0 ( 140 kB)<br>[=C2=A0=C2=A0=C2=A0 0.0000=
00]=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 .data : 0xc04ec000 - 0xc051a180=C2=
=A0=C2=A0 ( 185 kB)<br>[=C2=A0=C2=A0=C2=A0 0.000000]=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 .bss : 0xc051a18c - 0xc0531b90=C2=A0=C2=A0 (=C2=A0 95=
 kB)<br>[=C2=A0=C2=A0=C2=A0 0.000000] Preemptible hierarchical RCU implemen=
tation.<br>[=C2=A0=C2=A0=C2=A0 0.000000] NR_IRQS:16 nr_irqs:304 304<br>[=C2=
=A0=C2=A0=C2=A0 0.000046] sched_clock: 32 bits at 3250kHz, resolution 307ns=
, wraps every 1321528397516ns<br>[=C2=A0=C2=A0=C2=A0 0.000691] Console: col=
our dummy device 80x30<br>[=C2=A0=C2=A0=C2=A0 0.000769] Calibrating delay l=
oop... 518.55 BogoMIPS (lpj=3D2592768)<br>[=C2=A0=C2=A0=C2=A0 0.060347] pid=
_max: default: 32768 minimum: 301<br>[=C2=A0=C2=A0=C2=A0 0.060594] Security=
 Framework initialized<br>[=C2=A0=C2=A0=C2=A0 0.060741] Mount-cache hash ta=
ble entries: 1024 (order: 0, 4096 bytes)<br>[=C2=A0=C2=A0=C2=A0 0.060774] M=
ountpoint-cache hash table entries: 1024 (order: 0, 4096 bytes)<br>[=C2=A0=
=C2=A0=C2=A0 0.062150] CPU: Testing write buffer coherency: ok<br>[=C2=A0=
=C2=A0=C2=A0 0.063287] Setting up static identity map for 0xa038e6d8 - 0xa0=
38e744<br>[=C2=A0=C2=A0=C2=A0 0.069844] NET: Registered protocol family 16<=
br>[=C2=A0=C2=A0=C2=A0 0.071694] DMA: preallocated 256 KiB pool for atomic =
coherent allocations<br>[=C2=A0=C2=A0=C2=A0 0.095946] Configure Fingertip4.=
..<br>[=C2=A0=C2=A0=C2=A0 0.188992] bio: create slab &lt;bio-0&gt; at 0<br>=
[=C2=A0=C2=A0=C2=A0 0.197249] usbcore: registered new interface driver usbf=
s<br>[=C2=A0=C2=A0=C2=A0 0.198138] usbcore: registered new interface driver=
 hub<br>[=C2=A0=C2=A0=C2=A0 0.199246] usbcore: registered new device driver=
 usb<br>[=C2=A0=C2=A0=C2=A0 0.210323] cfg80211: Calling CRDA to update worl=
d regulatory domain<br>[=C2=A0=C2=A0=C2=A0 0.211077] Switched to clocksourc=
e oscr0<br>[=C2=A0=C2=A0=C2=A0 0.282781] NET: Registered protocol family 2<=
br>[=C2=A0=C2=A0=C2=A0 0.284302] TCP established hash table entries: 1024 (=
order: 0, 4096 bytes)<br>[=C2=A0=C2=A0=C2=A0 0.284382] TCP bind hash table =
entries: 1024 (order: 0, 4096 bytes)<br>[=C2=A0=C2=A0=C2=A0 0.284426] TCP: =
Hash tables configured (established 1024 bind 1024)<br>[=C2=A0=C2=A0=C2=A0 =
0.284648] TCP: reno registered<br>[=C2=A0=C2=A0=C2=A0 0.284673] UDP hash ta=
ble entries: 256 (order: 0, 4096 bytes)<br>[=C2=A0=C2=A0=C2=A0 0.284717] UD=
P-Lite hash table entries: 256 (order: 0, 4096 bytes)<br>[=C2=A0=C2=A0=C2=
=A0 0.285236] NET: Registered protocol family 1<br>[=C2=A0=C2=A0=C2=A0 0.28=
6343] RPC: Registered named UNIX socket transport module.<br>[=C2=A0=C2=A0=
=C2=A0 0.286402] RPC: Registered udp transport module.<br>[=C2=A0=C2=A0=C2=
=A0 0.286416] RPC: Registered tcp transport module.<br>[=C2=A0=C2=A0=C2=A0 =
0.286431] RPC: Registered tcp NFSv4.1 backchannel transport module.<br>[=C2=
=A0=C2=A0=C2=A0 0.292910] futex hash table entries: 256 (order: -1, 3072 by=
tes)<br>[=C2=A0=C2=A0=C2=A0 0.295619] NFS: Registering the id_resolver key =
type<br>[=C2=A0=C2=A0=C2=A0 0.295843] Key type id_resolver registered<br>[=
=C2=A0=C2=A0=C2=A0 0.295859] Key type id_legacy registered<br>[=C2=A0=C2=A0=
=C2=A0 0.295901] Installing knfsd (copyright (C) 1996 <a href=3D"mailto:oki=
r@monad.swb.de" target=3D"_blank">okir@monad.swb.de</a>).<br>[=C2=A0=C2=A0=
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
<br></div></div><span class=3D"m_8137568345630618535HOEnZb"><font color=3D"=
#888888">--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org<wbr>/listinfo/yocto</a><=
br>
<br></font></span></blockquote></div><span class=3D"m_8137568345630618535HO=
EnZb"><font color=3D"#888888"><br><br clear=3D"all"><div><br></div>-- <br><=
div data-smartmail=3D"gmail_signature">Life is like Linux - it never stands=
 still.<br><br></div>
</font></span></div>
</blockquote></div><br></div>
</div></div></blockquote></div><br><br clear=3D"all"><div><br></div>-- <br>=
<div class=3D"gmail_signature" data-smartmail=3D"gmail_signature">Life is l=
ike Linux - it never stands still.<br><br></div>
</div>

--94eb2c07a47efe41a6053dbd5d4c--
