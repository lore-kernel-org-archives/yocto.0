Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 032DDE00AB0; Tue,  5 Feb 2019 05:49:28 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.160.175 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (zoran.stojsavljevic[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f175.google.com (mail-qt1-f175.google.com
	[209.85.160.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8B101E0048C
	for <yocto@yoctoproject.org>; Tue,  5 Feb 2019 05:49:24 -0800 (PST)
Received: by mail-qt1-f175.google.com with SMTP id b8so3794836qtr.9
	for <yocto@yoctoproject.org>; Tue, 05 Feb 2019 05:49:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=BSgSzr0tIy232FKPQPXbhOWeCK0bIl/E8hhHX3SB6/A=;
	b=aD76GWUIjgibCDniwtr14/UomlJVZSgjkSMV16oCZE33xgnlyY8d5DRJd1iBMYo7jI
	BmZ5I1GwudhybupaAHILXpAegKsgR6q34/jVo8ZTlYh28GCvAQ22HdJ0lEx1vgHSo5Ii
	KbEL94aP1SCguU0jXIQk3BUrD0lSjDq2ypCjr5rT3OgrxTxv3f8OAcoG3TKE+wmhV9Pg
	QRAsJkTt7RmpsFpbQFLCzr4Ep5U3LZfBqQpLFp9zT3PTro2/zB5adw9/8xz/O+gy2Itu
	2X2QayuU/cnZf5aJOmgHHuXOTevoCoFJjwDbLInylmE9F2vbj4hJHILL5wg8bJ/r7HeZ
	pOgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=BSgSzr0tIy232FKPQPXbhOWeCK0bIl/E8hhHX3SB6/A=;
	b=K1n1tAT+/ro+g1AM7z71El/DkFZNQg+4gxREc+OlT0ZLXu+pMXlQtgRGDg2gSrjmx1
	S2INpxt4bgGsg7kbjk1E/fB2fjjzh200jsafnya0W5o3k4/v0lZcGZoy0cO+YhdjRwvo
	fIGyPh6mSNKXtD+jbyND4sr5kGg2Ez4CgxsVvIZY9zM+rE0qFs1FfZXpo2GgIFoATd6r
	8orzmoVlXTLcqdUbiOvWIS4UuNE4Dvh63RyiUsTMpbu2aZoyTxr4wB+aWh9t51SSC5bB
	prgv3Bp5amMuGumYQykMwjuyUvK47mp1D/WLJkDkb8eQWF6KArhJ3KN71kq6ZwybaS7v
	3Q6Q==
X-Gm-Message-State: AHQUAuZ7VpA8TFSXUKGWjPjnaZFZDwWqy8xxrGY5Fx0MTzCHiHnTXapW
	EJWdZJb5HFIepDYWtyizD6udLXPVMa9aFMNsHbv4ZZdQ6eg=
X-Google-Smtp-Source: AHgI3Ib5NmTdnczyqND1+DZS0mt5ETgoZ1vB/wvmO3HRVniAI6vSncF21Nf+/HVZ519T0DHsfrCoKA0wm9tsvLPQgbA=
X-Received: by 2002:ac8:543:: with SMTP id c3mr3709439qth.34.1549374563523;
	Tue, 05 Feb 2019 05:49:23 -0800 (PST)
MIME-Version: 1.0
References: <001101d4bc79$b2739150$175ab3f0$@polycaptil.fr>
	<CAGAf8LxYW24L9Ah=ERcQncuMFC5w3UB26_WxoyZor8UQU7hBFw@mail.gmail.com>
	<003801d4bd38$cd620b80$68262280$@polycaptil.fr>
In-Reply-To: <003801d4bd38$cd620b80$68262280$@polycaptil.fr>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Tue, 5 Feb 2019 14:49:11 +0100
Message-ID: <CAGAf8LxWMPqkFZxZWcq78onkxNO1TyUd0NUUkHje+jN7bO1Q4g@mail.gmail.com>
To: Stanisavljevic <n.stanisavljevic@polycaptil.fr>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: yocto touchscreen
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
X-List-Received-Date: Tue, 05 Feb 2019 13:49:28 -0000
Content-Type: multipart/alternative; boundary="0000000000007b9f61058125e000"

--0000000000007b9f61058125e000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Nikola,

> I created a kernel recipe with a bbappend file, and, I added
> the same defconfig that I used for krogoth version.
> The bbappend for kernel recipe concern meta-ti layer.
> I didn't edited defconfig file in other layers which contain a
> kernel recipe.

It could be some problem that Sumo does not take your bbappend file into th=
e
consideration as placed.

It could be something else, as well.

I have the same issue with my defconfig file for my Thud Beagle Bone Black
(BBB)
standard board. Every time I recompile my YOCTO for it for different
releases, I need
to import my specific defconfig. But I use complete different repos for my
standard
Beagle Bone Black than YOCTO BBB Poky reference distro.

Here is what I use in Thud (my bblayers.conf):

POKY_BBLAYERS_CONF_VERSION =3D "2"
BBPATH =3D "${TOPDIR}"
BBFILES ?=3D ""

BBLAYERS ?=3D " \
    /home/user/projects2/beaglebone-black/yocto-thud/meta-bbb \

/home/user/projects2/beaglebone-black/yocto-thud/meta-openembedded/meta-net=
working
\

/home/user/projects2/beaglebone-black/yocto-thud/meta-openembedded/meta-oe =
\

/home/user/projects2/beaglebone-black/yocto-thud/meta-openembedded/meta-pyt=
hon
\
    /home/user/projects2/beaglebone-black/yocto-thud/meta-qt5 \
    /home/user/projects2/beaglebone-black/yocto-thud/poky/meta \
    /home/user/projects2/beaglebone-black/yocto-thud/poky/meta-poky"

There, I replace defconfig in this layer:
/home/user/projects2/beaglebone-black/yocto-thud/meta-bbb
with my own defconfig.

In the directory:
/home/user/projects2/beaglebone-black/yocto-thud/meta-bbb/recipes-kernel/li=
nux/linux-stable-4.19/beaglebone

If you use only Poky repository, then you need to read the following
paragraph (how to use
your defconfig with Poky):



*[2.3.3. Changing the Configuration] YOCTO Project Linux Development
Manualhttps://www.yoctoproject.org/docs/2.5/kernel-dev/kernel-dev.html#usin=
g-an-in-tree-defconfig-file
<https://www.yoctoproject.org/docs/2.5/kernel-dev/kernel-dev.html#using-an-=
in-tree-defconfig-file>*
*2.3.3. Changing the Configuration*

I hope this will help. Please, keep us posted!

Zoran
_______


On Tue, Feb 5, 2019 at 10:54 AM Stanisavljevic <
n.stanisavljevic@polycaptil.fr> wrote:

> Hy Zoran
>
> Thank's to take time to answer
>
> I created a kernel recipe with a bbappend file, and, I added the same
> defconfig that I used for krogoth version.
> The bbappend for kernel recipe concern meta-ti layer.
> I didn't edited defconfig file in other layers which contain a kernel
> recipe.
>
> I think it's a problem which concern the screen resolution, screen
> frequency and adc touchscreen.
> Something is different between the krogoth and sumo version, but I didn't
> find what is changed...
>
> Xrandr show that problem is maybe around the screen resolution.
> It's show the next message : "Size 1024x768 not found in available modes"
> Maybe it was changed between krogoth and sumo version...but I don't know
> where it is indicated if sources files...
>
> What do you think ? problem can be around the screen resolution, screen
> frequency and adc touchscreen ?
>
> Nikola
>
> -----Message d'origine-----
> De : Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
> Envoy=C3=A9 : lundi 4 f=C3=A9vrier 2019 17:08
> =C3=80 : Stanisavljevic <n.stanisavljevic@polycaptil.fr>
> Cc : Yocto Project <yocto@yoctoproject.org>
> Objet : Re: [yocto] yocto touchscreen
>
> > I built a first version of this os with version krogoth and it works
> fine.
> >
> > Now I build a second version of this os with version sumo and the
> > touch screen works fine during boot process but when kernel is loaded,
> > touchscreen freeze / lock and impossible to use it.
>
> Did you compare Krogoth kernel defconfig with Sumo kernel defconfig?
>
> May there are some mismatches in drivers' setup between these two?
>
> Zoran
> _______
>
> On Mon, Feb 4, 2019 at 12:24 PM Stanisavljevic <
> n.stanisavljevic@polycaptil.fr> wrote:
> >
> > Hy Team,
> >
> >
> >
> > I have a problem
> >
> >
> >
> > I buid a custom os for AM335x processor and I used yocto to do it.
> >
> >
> >
> > I build a first version of this os with version krogoth and it work fin=
e.
> >
> >
> >
> > Now I build a second version of this os with version sumo and the
> touchscreen work fine during boot process but when kernel is loaded,
> touchscreen freeze / lock and impossible to use it.
> >
> > The terminal is printed on the touchscreen but the screen is locked,
> impossible to write a command or to move the mouse to select, =E2=80=A6.
> >
> >
> >
> > Here is the log of boot to the user session (log got with serial
> communication between PC and board) :
> >
> >
> >
> > U-Boot SPL 2017.05-00001-g041a398 (May 02 2018 - 18:36:57)
> >
> > Trying to boot from MMC1
> >
> > reading uboot.env
> >
> > reading u-boot.img
> >
> > reading u-boot.img
> >
> > reading u-boot.img
> >
> > reading u-boot.img
> >
> >
> >
> >
> >
> > U-Boot 2017.05-00001-g041a398 (May 02 2018 - 18:36:57 +0200)
> >
> >
> >
> > CPU  : AM335X-GP rev 2.1
> >
> > Model: TI AM335x EVM-SK
> >
> > DRAM:  256 MiB
> >
> > NAND:  0 MiB
> >
> > MMC:   OMAP SD/MMC: 0, OMAP SD/MMC: 1
> >
> > reading uboot.env
> >
> > ERROR: No USB device found
> >
> >
> >
> > at drivers/usb/gadget/ether.c:2709/usb_ether_init()
> >
> > Net:   CACHE: Misaligned operation at range [8df323c0, 8df32464]
> >
> >
> >
> > Warning: ethernet@4a100000 using MAC address from ROM
> >
> > eth0: ethernet@4a100000
> >
> > Hit any key to stop autoboot:  0
> >
> > reading zImage
> >
> > 3412752 bytes read in 251 ms (13 MiB/s)
> >
> > reading dtb
> >
> > 39733 bytes read in 12 ms (3.2 MiB/s)
> >
> > ## Flattened Device Tree blob at 82000000
> >
> >    Booting using the fdt blob at 0x82000000
> >
> >    Loading Device Tree to 8df19000, end 8df25b34 ... OK
> >
> >
> >
> > Starting kernel ...
> >
> >
> >
> > [    0.000000] Booting Linux on physical CPU 0x0
> >
> > [    0.000000] Initializing cgroup subsys cpu
> >
> > [    0.000000] Initializing cgroup subsys cpuacct
> >
> > [    0.000000] Linux version 4.4.19-ge581bb1cac
> (polycaptil@polycaptil-HP-Notebook) (gcc version 5.3.0 (GCC) ) #1 PREEMPT
> Thu May 24 11:42:17 CEST 2018
> >
> > [    0.000000] CPU: ARMv7 Processor [413fc082] revision 2 (ARMv7),
> cr=3D10c5387d
> >
> > [    0.000000] CPU: PIPT / VIPT nonaliasing data cache, VIPT aliasing
> instruction cache
> >
> > [    0.000000] Machine model: TI AM335x EVM-SK
> >
> > [    0.000000] cma: Reserved 48 MiB at 0x8a800000
> >
> > [    0.000000] Memory policy: Data cache writeback
> >
> > [    0.000000] CPU: All CPU(s) started in SVC mode.
> >
> > [    0.000000] AM335X ES2.1 (sgx neon )
> >
> > [    0.000000] Built 1 zonelists in Zone order, mobility grouping on.
> Total pages: 64960
> >
> > [    0.000000] Kernel command line: console=3DttyO0,115200
> root=3D/dev/mmcblk0p3 rw
> >
> > [    0.000000] PID hash table entries: 1024 (order: 0, 4096 bytes)
> >
> > [    0.000000] Dentry cache hash table entries: 32768 (order: 5, 131072
> bytes)
> >
> > [    0.000000] Inode-cache hash table entries: 16384 (order: 4, 65536
> bytes)
> >
> > [    0.000000] Memory: 200444K/262144K available (6495K kernel code,
> 313K rwdata, 2368K rodata, 260K init, 265K bss, 12548K reserved, 49152K
> cma-reserved, 0K highmem)
> >
> > [    0.000000] Virtual kernel memory layout:
> >
> > [    0.000000]     vector  : 0xffff0000 - 0xffff1000   (   4 kB)
> >
> > [    0.000000]     fixmap  : 0xffc00000 - 0xfff00000   (3072 kB)
> >
> > [    0.000000]     vmalloc : 0xd0800000 - 0xff800000   ( 752 MB)
> >
> > [    0.000000]     lowmem  : 0xc0000000 - 0xd0000000   ( 256 MB)
> >
> > [    0.000000]     pkmap   : 0xbfe00000 - 0xc0000000   (   2 MB)
> >
> > [    0.000000]     modules : 0xbf000000 - 0xbfe00000   (  14 MB)
> >
> > [    0.000000]       .text : 0xc0008000 - 0xc08b0034   (8865 kB)
> >
> > [    0.000000]       .init : 0xc08b1000 - 0xc08f2000   ( 260 kB)
> >
> > [    0.000000]       .data : 0xc08f2000 - 0xc09407f0   ( 314 kB)
> >
> > [    0.000000]        .bss : 0xc09407f0 - 0xc0982d58   ( 266 kB)
> >
> > [    0.000000] SLUB: HWalign=3D64, Order=3D0-3, MinObjects=3D0, CPUs=3D=
1, Nodes=3D1
> >
> > [    0.000000] Preemptible hierarchical RCU implementation.
> >
> > [    0.000000]  Build-time adjustment of leaf fanout to 32.
> >
> > [    0.000000] NR_IRQS:16 nr_irqs:16 16
> >
> > [    0.000000] IRQ: Found an INTC at 0xfa200000 (revision 5.0) with 128
> interrupts
> >
> > [    0.000000] OMAP clockevent source: timer2 at 24000000 Hz
> >
> > [    0.000015] sched_clock: 32 bits at 24MHz, resolution 41ns, wraps
> every 89478484971ns
> >
> > [    0.000036] clocksource: timer1: mask: 0xffffffff max_cycles:
> 0xffffffff, max_idle_ns: 79635851949 ns
> >
> > [    0.000047] OMAP clocksource: timer1 at 24000000 Hz
> >
> > [    0.000222] clocksource_probe: no matching clocksources found
> >
> > [    0.000415] Console: colour dummy device 80x30
> >
> > [    0.000442] WARNING: Your 'console=3DttyO0' has been replaced by 'tt=
yS0'
> >
> > [    0.000448] This ensures that you still see kernel messages. Please
> >
> > [    0.000454] update your kernel commandline.
> >
> > [    0.000473] Calibrating delay loop... 795.44 BogoMIPS (lpj=3D3977216=
)
> >
> > [    0.089064] pid_max: default: 32768 minimum: 301
> >
> > [    0.089193] Mount-cache hash table entries: 1024 (order: 0, 4096
> bytes)
> >
> > [    0.089205] Mountpoint-cache hash table entries: 1024 (order: 0, 409=
6
> bytes)
> >
> > [    0.089932] Initializing cgroup subsys io
> >
> > [    0.089964] Initializing cgroup subsys memory
> >
> > [    0.090005] Initializing cgroup subsys devices
> >
> > [    0.090021] Initializing cgroup subsys freezer
> >
> > [    0.090036] Initializing cgroup subsys perf_event
> >
> > [    0.090048] Initializing cgroup subsys pids
> >
> > [    0.090078] CPU: Testing write buffer coherency: ok
> >
> > [    0.090499] Setting up static identity map for 0x80008200 - 0x800082=
58
> >
> > [    0.092680] devtmpfs: initialized
> >
> > [    0.105440] VFP support v0.3: implementor 41 architecture 3 part 30
> variant c rev 3
> >
> > [    0.120529] omap_hwmod: debugss: _wait_target_disable failed
> >
> > [    0.175584] clocksource: jiffies: mask: 0xffffffff max_cycles:
> 0xffffffff, max_idle_ns: 19112604462750000 ns
> >
> > [    0.179852] pinctrl core: initialized pinctrl subsystem
> >
> > [    0.181216] NET: Registered protocol family 16
> >
> > [    0.183420] DMA: preallocated 256 KiB pool for atomic coherent
> allocations
> >
> > [    0.209061] cpuidle: using governor ladder
> >
> > [    0.239048] cpuidle: using governor menu
> >
> > [    0.243661] OMAP GPIO hardware version 0.1
> >
> > [    0.254360] hw-breakpoint: debug architecture 0x4 unsupported.
> >
> > [    0.297629] edma 49000000.edma: TI EDMA DMA engine driver
> >
> > [    0.298606] reg-fixed-voltage fixedregulator@2: could not find
> pctldev for node /ocp/l4_wkup@44c00000/scm@210000/pinmux@800/pinmux_wl12x=
x_gpio,
> deferring probe
> >
> > [    0.302364] omap_i2c 44e0b000.i2c: could not find pctldev for node
> /ocp/l4_wkup@44c00000/scm@210000/pinmux@800/pinmux_i2c0_pins, deferring
> probe
> >
> > [    0.302525] media: Linux media interface: v0.10
> >
> > [    0.302588] Linux video capture interface: v2.00
> >
> > [    0.302638] pps_core: LinuxPPS API ver. 1 registered
> >
> > [    0.302646] pps_core: Software ver. 5.3.6 - Copyright 2005-2007
> Rodolfo Giometti <giometti@linux.it>
> >
> > [    0.302676] PTP clock support registered
> >
> > [    0.302741] EDAC MC: Ver: 3.0.0
> >
> > [    0.303966] omap-mailbox 480c8000.mailbox: omap mailbox rev 0x400
> >
> > [    0.304332] Advanced Linux Sound Architecture Driver Initialized.
> >
> > [    0.305512] clocksource: Switched to clocksource timer1
> >
> > [    0.316775] NET: Registered protocol family 2
> >
> > [    0.317599] TCP established hash table entries: 2048 (order: 1, 8192
> bytes)
> >
> > [    0.317636] TCP bind hash table entries: 2048 (order: 1, 8192 bytes)
> >
> > [    0.317663] TCP: Hash tables configured (established 2048 bind 2048)
> >
> > [    0.317748] UDP hash table entries: 256 (order: 0, 4096 bytes)
> >
> > [    0.317767] UDP-Lite hash table entries: 256 (order: 0, 4096 bytes)
> >
> > [    0.317925] NET: Registered protocol family 1
> >
> > [    0.318352] RPC: Registered named UNIX socket transport module.
> >
> > [    0.318366] RPC: Registered udp transport module.
> >
> > [    0.318372] RPC: Registered tcp transport module.
> >
> > [    0.318379] RPC: Registered tcp NFSv4.1 backchannel transport module=
.
> >
> > [    0.319330] hw perfevents: enabled with armv7_cortex_a8 PMU driver, =
5
> counters available
> >
> > [    0.321392] futex hash table entries: 256 (order: -1, 3072 bytes)
> >
> > [    0.329780] squashfs: version 4.0 (2009/01/31) Phillip Lougher
> >
> > [    0.330717] NFS: Registering the id_resolver key type
> >
> > [    0.330798] Key type id_resolver registered
> >
> > [    0.330807] Key type id_legacy registered
> >
> > [    0.330886] ntfs: driver 2.1.32 [Flags: R/O].
> >
> > [    0.334673] Block layer SCSI generic (bsg) driver version 0.4 loaded
> (major 248)
> >
> > [    0.334706] io scheduler noop registered
> >
> > [    0.334719] io scheduler deadline registered
> >
> > [    0.334877] io scheduler cfq registered (default)
> >
> > [    0.336555] pinctrl-single 44e10800.pinmux: 142 pins at pa f9e10800
> size 568
> >
> > [    0.339415] backlight supply power not found, using dummy regulator
> >
> > [    0.402480] Serial: 8250/16550 driver, 10 ports, IRQ sharing disable=
d
> >
> > [    0.406962] 44e09000.serial: ttyS0 at MMIO 0x44e09000 (irq =3D 158,
> base_baud =3D 3000000) is a 8250
> >
> > [    1.017357] console [ttyS0] enabled
> >
> > [    1.022206] 48022000.serial: ttyS1 at MMIO 0x48022000 (irq =3D 159,
> base_baud =3D 3000000) is a 8250
> >
> > [    1.032273] [drm] Initialized drm 1.1.0 20060810
> >
> > [    1.039564] [drm] Supports vblank timestamp caching Rev 2
> (21.10.2013).
> >
> > [    1.046349] [drm] No driver support for vblank timestamp query.
> >
> > [    1.062121] Console: switching to colour frame buffer device 60x34
> >
> > [    1.070360] tilcdc 4830e000.lcdc: fb0:  frame buffer device
> >
> > [    1.105531] [drm] Initialized tilcdc 1.0.0 20121205 on minor 0
> >
> > [    1.118644] loop: module loaded
> >
> > [    1.124253] libphy: Fixed MDIO Bus: probed
> >
> > [    1.185550] davinci_mdio 4a101000.mdio: davinci mdio revision 1.6
> >
> > [    1.191695] davinci_mdio 4a101000.mdio: detected phy mask fffffffe
> >
> > [    1.198786] libphy: 4a101000.mdio: probed
> >
> > [    1.202886] davinci_mdio 4a101000.mdio: phy[0]: device
> 4a101000.mdio:00, driver SMSC LAN8710/LAN8720
> >
> > [    1.212890] cpsw 4a100000.ethernet: Detected MACID =3D a0:f6:fd:4c:a=
6:ba
> >
> > [    1.220531] cpsw 4a100000.ethernet: cpsw: Detected MACID =3D
> c4:ed:ba:88:2a:92
> >
> > [    1.229382] mousedev: PS/2 mouse device common for all mice
> >
> > [    1.235845] i2c /dev entries driver
> >
> > [    1.240508] cpuidle: enable-method property 'ti,am3352' found
> operations
> >
> > [    1.248197] omap_hsmmc 48060000.mmc: Got CD GPIO
> >
> > [    1.275713] pinctrl-single 44e10800.pinmux: bad data for mux
> pinmux_mmc2_pins
> >
> > [    1.282895] pinctrl-single 44e10800.pinmux: no pins entries for
> pinmux_mmc2_pins
> >
> > [    1.317159] ledtrig-cpu: registered to indicate activity on CPUs
> >
> > [    1.326069] NET: Registered protocol family 10
> >
> > [    1.332092] sit: IPv6 over IPv4 tunneling driver
> >
> > [    1.337715] NET: Registered protocol family 17
> >
> > [    1.342510] Key type dns_resolver registered
> >
> > [    1.347095] omap_voltage_late_init: Voltage driver support not added
> >
> > [    1.407145] tps65910-rtc tps65910-rtc: rtc core: registered
> tps65910-rtc as rtc0
> >
> > [    1.415278] omap_i2c 44e0b000.i2c: bus 0 rev0.11 at 400 kHz
> >
> > [    1.421665] omap_hsmmc 48060000.mmc: Got CD GPIO
> >
> > [    1.426813] vmmc: supplied by vbat
> >
> > [    1.466341] pinctrl-single 44e10800.pinmux: bad data for mux
> pinmux_mmc2_pins
> >
> > [    1.474737] pinctrl-single 44e10800.pinmux: no pins entries for
> pinmux_mmc2_pins
> >
> > [    1.513247] mmc0: host does not support reading read-only switch,
> assuming write-enable
> >
> > [    1.523414] mmc0: new high speed SDHC card at address 0001
> >
> > [    1.529635] mmcblk0: mmc0:0001 AS 3.72 GiB
> >
> > [    1.535996]  mmcblk0: p1 p2 p3
> >
> > [    1.595932] vdd_mpu: supplied by vbat
> >
> > [    1.602167] input: gpio_buttons@0 as /devices/platform/gpio_buttons@=
0
> /input/input0
> >
> > [    1.618291] tps65910-rtc tps65910-rtc: setting system clock to
> 2019-02-01 20:07:49 UTC (1549051669)
> >
> > [    1.639394] lis3_reg: disabling
> >
> > [    1.655732] ALSA device list:
> >
> > [    1.658720]   No soundcards found.
> >
> > [    1.678290] EXT4-fs (mmcblk0p3): couldn't mount as ext3 due to
> feature incompatibilities
> >
> > [    1.696920] EXT4-fs (mmcblk0p3): couldn't mount as ext2 due to
> feature incompatibilities
> >
> > [    2.183999] EXT4-fs (mmcblk0p3): recovery complete
> >
> > [    2.196864] EXT4-fs (mmcblk0p3): mounted filesystem with ordered dat=
a
> mode. Opts: (null)
> >
> > [    2.205084] VFS: Mounted root (ext4 filesystem) on device 179:3.
> >
> > [    2.225670] devtmpfs: mounted
> >
> > [    2.235781] Freeing unused kernel memory: 260K (c08b1000 - c08f2000)
> >
> > [    2.242162] This architecture does not have kernel memory protection=
.
> >
> > INIT: version 2.88 booting
> >
> > Starting udev
> >
> > [    3.090091] udevd[78]: starting version 3.2.5
> >
> > [    3.106175] random: udevd: uninitialized urandom read (16 bytes read=
,
> 26 bits of entropy available)
> >
> > [    3.118667] random: udevd: uninitialized urandom read (16 bytes read=
,
> 26 bits of entropy available)
> >
> > [    3.128014] random: udevd: uninitialized urandom read (16 bytes read=
,
> 26 bits of entropy available)
> >
> > [    3.137335] random: udevd: uninitialized urandom read (16 bytes read=
,
> 26 bits of entropy available)
> >
> > [    3.218433] udevd[79]: starting eudev-3.2.5
> >
> > [    3.325886] random: udevd: uninitialized urandom read (16 bytes read=
,
> 29 bits of entropy available)
> >
> > [    3.346155] random: udevd: uninitialized urandom read (16 bytes read=
,
> 29 bits of entropy available)
> >
> > [    4.820708] EXT4-fs (mmcblk0p3): re-mounted. Opts: data=3Dordered
> >
> > [    5.548283] random: dd: uninitialized urandom read (512 bytes read,
> 43 bits of entropy available)
> >
> > INIT: Entering runlevel: 5
> >
> > Configuring network interfaces... [    5.820546] net eth0: initializing
> cpsw version 1.12 (0)
> >
> > [    5.825987] net eth0: initialized cpsw ale version 1.4
> >
> > [    5.831150] net eth0: ALE Table size 1024
> >
> > [    5.838581] net eth0: phy found : id is : 0x7c0f1
> >
> > [    5.851838] IPv6: ADDRCONF(NETDEV_UP): eth0: link is not ready
> >
> > [    9.896392] cpsw 4a100000.ethernet eth0: Link is Up - 100Mbps/Full -
> flow control rx/tx
> >
> > [    9.904635] IPv6: ADDRCONF(NETDEV_CHANGE): eth0: link becomes ready
> >
> > chown: unrecognized option '--reference=3D/etc/resolv.conf'
> >
> > BusyBox v1.27.2 (2018-11-05 21:16:09 UTC) multi-call binary.
> >
> >
> >
> > Usage: chown [-Rh]... USER[:[GRP]] FILE...
> >
> > chmod: unrecognized option '--reference=3D/etc/resolv.conf'
> >
> > BusyBox v1.27.2 (2018-11-05 21:16:09 UTC) multi-call binary.
> >
> >
> >
> > Usage: chmod [-R] MODE[,MODE]... FILE...
> >
> > done.
> >
> > Starting system message bus: [   14.887099] random: dbus-daemon:
> uninitialized urandom read (12 bytes read, 62 bits of entropy available)
> >
> > [   14.912318] random: dbus-daemon: uninitialized urandom read (12 byte=
s
> read, 62 bits of entropy available)
> >
> > dbus.
> >
> > Starting OpenBSD Secure Shell server: sshd
> >
> > [   15.393971] random: sshd: uninitialized urandom read (32 bytes read,
> 65 bits of entropy available)
> >
> > done.
> >
> > Starting Xserver
> >
> > Starting DHCP server:
> >
> > .
> >
> > starting DNS forwarder and DHCP server: dnsmasq...
> >
> > X.Org X Server 1.19.6
> >
> > Release Date: 2017-12-20
> >
> > X Protocol Version 11, Revision 0
> >
> > Build Operating System: Linux 4.15.0-38-generic x86_64
> >
> > Current Operating System: Linux polycaptil-machine-am335x-evmsk
> > 4.4.19-ge581bb1cac #1 PREEMPT Thu May 24 11:42:17 CEST 2018 armv7l
> >
> > Kernel command line: console=3DttyO0,115200 root=3D/dev/mmcblk0p3 rw
> >
> > Build Date: 05 November 2018  09:33:21PM
> >
> >
> >
> > Current version of pixman: 0.34.0
> >
> >         Before reporting problems, check http://wiki.x.org
> >
> >         to make sure that you have the latest version.
> >
> > Markers: (--) probed, (**) from config file, (=3D=3D) default setting,
> >
> >         (++) from command line, (!!) notice, (II) informational,
> >
> >         (WW) warning, (EE) error, (NI) not implemented, (??) unknown.
> >
> > (=3D=3D) Log file: "/var/log/Xorg.0.log", Time: Fri Feb  1 20:08:02 201=
9
> >
> > (=3D=3D) Using config file: "/etc/X11/xorg.conf"
> >
> > (=3D=3D) Using system config directory "/usr/share/X11/xorg.conf.d"
> >
> > done.
> >
> > Starting HOSTAP Daemon: Configuration file: /etc/hostapd.conf
> >
> > nl80211: 'nl80211' generic netlink not found
> >
> > Failed to initialize driver 'nl80211'
> >
> > wlan0: interface state UNINITIALIZED->DISABLED
> >
> > wlan0: AP-DISABLED
> >
> > hostapd_free_hapd_data: Interface wlan0 wasn't started
> >
> > Starting ntpd: done
> >
> > Starting syslogd/klogd: done
> >
> > Starting crond: OK
> >
> >
> >
> > Poky (Yocto Project Reference Distro) 2.5
> > polycaptil-machine-am335x-evmsk /dev/ttyS0
> >
> >
> >
> > polycaptil-machine-am335x-evmsk login: D-BUS per-session daemon
> > address is:
> > unix:abstract=3D/tmp/dbus-07WuJSySeb,guid=3Da3e41f2692316c19766e95535c5=
4a7
> > 25
> >
> > Size 1024x768 not found in available modes
> >
> > Error: No calibratable devices found.
> >
> > matchbox: Cant find a keycode for keysym 269025056
> >
> > matchbox: ignoring key shortcut XF86Calendar=3D!$contacts
> >
> >
> >
> > matchbox: Cant find a keycode for keysym 2809
> >
> > matchbox: ignoring key shortcut telephone=3D!$dates
> >
> >
> >
> > matchbox: Cant find a keycode for keysym 269025050
> >
> > matchbox: ignoring key shortcut XF86Start=3D!matchbox-remote -desktop
> >
> >
> >
> > dbus-daemon[358]: Activating service name=3D'org.a11y.atspi.Registry'
> > requested by ':1.0' (uid=3D0 pid=3D354 comm=3D"matchbox-terminal ")
> >
> > dbus-daemon[358]: Successfully activated service
> 'org.a11y.atspi.Registry'
> >
> > SpiRegistry daemon is running with well-known name -
> > org.a11y.atspi.Registry
> >
> > [   30.662697] random: nonblocking pool is initialized
> >
> >
> >
> > Poky (Yocto Project Reference Distro) 2.5
> > polycaptil-machine-am335x-evmsk /dev/ttyS0
> >
> >
> >
> > Thank=E2=80=99s to take time to read my message.
> >
> > N.Stanisavljevic
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
>
>

--0000000000007b9f61058125e000
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello Nikola,<br><br>&gt; I created a kernel recipe with a=
 bbappend file, and, I added<br>&gt; the same defconfig that I used for kro=
goth version.<br>&gt; The bbappend for kernel recipe concern meta-ti layer.=
<br>&gt; I didn&#39;t edited defconfig file in other layers which contain a=
<br>&gt; kernel recipe.<br><br>It could be some problem that Sumo does not =
take your bbappend file into the<br>consideration as placed.<br><br>It coul=
d be something else, as well.<br><br><div>I have the same issue with my def=
config file for my Thud Beagle Bone Black (BBB)</div><div>standard board. E=
very time I recompile my YOCTO for it for different releases, I need</div><=
div>to import my specific defconfig. But I use complete different repos for=
 my standard</div><div>Beagle Bone Black than YOCTO BBB Poky reference dist=
ro.<br></div><br>Here is what I use in Thud (my bblayers.conf):<br><br>POKY=
_BBLAYERS_CONF_VERSION =3D &quot;2&quot;<br>BBPATH =3D &quot;${TOPDIR}&quot=
;<br>BBFILES ?=3D &quot;&quot;<br><br>BBLAYERS ?=3D &quot; \<br>=C2=A0 =C2=
=A0 /home/user/projects2/beaglebone-black/yocto-thud/meta-bbb \<br>=C2=A0 =
=C2=A0 /home/user/projects2/beaglebone-black/yocto-thud/meta-openembedded/m=
eta-networking \<br>=C2=A0 =C2=A0 /home/user/projects2/beaglebone-black/yoc=
to-thud/meta-openembedded/meta-oe \<br>=C2=A0 =C2=A0 /home/user/projects2/b=
eaglebone-black/yocto-thud/meta-openembedded/meta-python \<br>=C2=A0 =C2=A0=
 /home/user/projects2/beaglebone-black/yocto-thud/meta-qt5 \<br>=C2=A0 =C2=
=A0 /home/user/projects2/beaglebone-black/yocto-thud/poky/meta \<br>=C2=A0 =
=C2=A0 /home/user/projects2/beaglebone-black/yocto-thud/poky/meta-poky&quot=
;<br><br><div>There, I replace defconfig in this layer: /home/user/projects=
2/beaglebone-black/yocto-thud/meta-bbb</div><div>with my own defconfig.<br>=
</div><br>In the directory:<br>/home/user/projects2/beaglebone-black/yocto-=
thud/meta-bbb/recipes-kernel/linux/linux-stable-4.19/beaglebone<br><br><div=
>If you use only Poky repository, then you need to read the following parag=
raph (how to use</div><div>your defconfig with Poky):</div><br><u><i><b>[2.=
3.3. Changing the Configuration] YOCTO Project Linux Development Manual<br>=
<span style=3D"color:rgb(255,0,0)"><a href=3D"https://www.yoctoproject.org/=
docs/2.5/kernel-dev/kernel-dev.html#using-an-in-tree-defconfig-file">https:=
//www.yoctoproject.org/docs/2.5/kernel-dev/kernel-dev.html#using-an-in-tree=
-defconfig-file</a></span><br></b></i></u><div><u><i><b>2.3.3. Changing the=
 Configuration</b></i></u><span class=3D""><br></span></div><div><br></div>=
<div>I hope this will help. Please, keep us posted!</div><div><br></div><di=
v>Zoran</div><div>_______<br></div></div><br><br><div class=3D"gmail_quote"=
><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Feb 5, 2019 at 10:54 AM Stan=
isavljevic &lt;<a href=3D"mailto:n.stanisavljevic@polycaptil.fr">n.stanisav=
ljevic@polycaptil.fr</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quo=
te" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204=
);padding-left:1ex">Hy Zoran<br>
<br>
Thank&#39;s to take time to answer<br>
<br>
I created a kernel recipe with a bbappend file, and, I added the same defco=
nfig that I used for krogoth version.<br>
The bbappend for kernel recipe concern meta-ti layer.<br>
I didn&#39;t edited defconfig file in other layers which contain a kernel r=
ecipe.<br>
<br>
I think it&#39;s a problem which concern the screen resolution, screen freq=
uency and adc touchscreen.<br>
Something is different between the krogoth and sumo version, but I didn&#39=
;t find what is changed...<br>
<br>
Xrandr show that problem is maybe around the screen resolution.<br>
It&#39;s show the next message : &quot;Size 1024x768 not found in available=
 modes&quot;<br>
Maybe it was changed between krogoth and sumo version...but I don&#39;t kno=
w where it is indicated if sources files...<br>
<br>
What do you think ? problem can be around the screen resolution, screen fre=
quency and adc touchscreen ?<br>
<br>
Nikola<br>
<br>
-----Message d&#39;origine-----<br>
De : Zoran Stojsavljevic &lt;<a href=3D"mailto:zoran.stojsavljevic@gmail.co=
m" target=3D"_blank">zoran.stojsavljevic@gmail.com</a>&gt; <br>
Envoy=C3=A9 : lundi 4 f=C3=A9vrier 2019 17:08<br>
=C3=80 : Stanisavljevic &lt;<a href=3D"mailto:n.stanisavljevic@polycaptil.f=
r" target=3D"_blank">n.stanisavljevic@polycaptil.fr</a>&gt;<br>
Cc : Yocto Project &lt;<a href=3D"mailto:yocto@yoctoproject.org" target=3D"=
_blank">yocto@yoctoproject.org</a>&gt;<br>
Objet : Re: [yocto] yocto touchscreen<br>
<br>
&gt; I built a first version of this os with version krogoth and it works f=
ine.<br>
&gt;<br>
&gt; Now I build a second version of this os with version sumo and the <br>
&gt; touch screen works fine during boot process but when kernel is loaded,=
 <br>
&gt; touchscreen freeze / lock and impossible to use it.<br>
<br>
Did you compare Krogoth kernel defconfig with Sumo kernel defconfig?<br>
<br>
May there are some mismatches in drivers&#39; setup between these two?<br>
<br>
Zoran<br>
_______<br>
<br>
On Mon, Feb 4, 2019 at 12:24 PM Stanisavljevic &lt;<a href=3D"mailto:n.stan=
isavljevic@polycaptil.fr" target=3D"_blank">n.stanisavljevic@polycaptil.fr<=
/a>&gt; wrote:<br>
&gt;<br>
&gt; Hy Team,<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; I have a problem<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; I buid a custom os for AM335x processor and I used yocto to do it.<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; I build a first version of this os with version krogoth and it work fi=
ne.<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; Now I build a second version of this os with version sumo and the touc=
hscreen work fine during boot process but when kernel is loaded, touchscree=
n freeze / lock and impossible to use it.<br>
&gt;<br>
&gt; The terminal is printed on the touchscreen but the screen is locked, i=
mpossible to write a command or to move the mouse to select, =E2=80=A6.<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; Here is the log of boot to the user session (log got with serial commu=
nication between PC and board) :<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; U-Boot SPL 2017.05-00001-g041a398 (May 02 2018 - 18:36:57)<br>
&gt;<br>
&gt; Trying to boot from MMC1<br>
&gt;<br>
&gt; reading uboot.env<br>
&gt;<br>
&gt; reading u-boot.img<br>
&gt;<br>
&gt; reading u-boot.img<br>
&gt;<br>
&gt; reading u-boot.img<br>
&gt;<br>
&gt; reading u-boot.img<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; U-Boot 2017.05-00001-g041a398 (May 02 2018 - 18:36:57 +0200)<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; CPU=C2=A0 : AM335X-GP rev 2.1<br>
&gt;<br>
&gt; Model: TI AM335x EVM-SK<br>
&gt;<br>
&gt; DRAM:=C2=A0 256 MiB<br>
&gt;<br>
&gt; NAND:=C2=A0 0 MiB<br>
&gt;<br>
&gt; MMC:=C2=A0 =C2=A0OMAP SD/MMC: 0, OMAP SD/MMC: 1<br>
&gt;<br>
&gt; reading uboot.env<br>
&gt;<br>
&gt; ERROR: No USB device found<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; at drivers/usb/gadget/ether.c:2709/usb_ether_init()<br>
&gt;<br>
&gt; Net:=C2=A0 =C2=A0CACHE: Misaligned operation at range [8df323c0, 8df32=
464]<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; Warning: ethernet@4a100000 using MAC address from ROM<br>
&gt;<br>
&gt; eth0: ethernet@4a100000<br>
&gt;<br>
&gt; Hit any key to stop autoboot:=C2=A0 0<br>
&gt;<br>
&gt; reading zImage<br>
&gt;<br>
&gt; 3412752 bytes read in 251 ms (13 MiB/s)<br>
&gt;<br>
&gt; reading dtb<br>
&gt;<br>
&gt; 39733 bytes read in 12 ms (3.2 MiB/s)<br>
&gt;<br>
&gt; ## Flattened Device Tree blob at 82000000<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 Booting using the fdt blob at 0x82000000<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 Loading Device Tree to 8df19000, end 8df25b34 ... OK<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; Starting kernel ...<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 0.000000] Booting Linux on physical CPU 0x0<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 0.000000] Initializing cgroup subsys cpu<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 0.000000] Initializing cgroup subsys cpuacct<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 0.000000] Linux version 4.4.19-ge581bb1cac (polycaptil@=
polycaptil-HP-Notebook) (gcc version 5.3.0 (GCC) ) #1 PREEMPT Thu May 24 11=
:42:17 CEST 2018<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 0.000000] CPU: ARMv7 Processor [413fc082] revision 2 (A=
RMv7), cr=3D10c5387d<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 0.000000] CPU: PIPT / VIPT nonaliasing data cache, VIPT=
 aliasing instruction cache<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 0.000000] Machine model: TI AM335x EVM-SK<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 0.000000] cma: Reserved 48 MiB at 0x8a800000<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 0.000000] Memory policy: Data cache writeback<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 0.000000] CPU: All CPU(s) started in SVC mode.<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 0.000000] AM335X ES2.1 (sgx neon )<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 0.000000] Built 1 zonelists in Zone order, mobility gro=
uping on.=C2=A0 Total pages: 64960<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 0.000000] Kernel command line: console=3DttyO0,115200 r=
oot=3D/dev/mmcblk0p3 rw<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 0.000000] PID hash table entries: 1024 (order: 0, 4096 =
bytes)<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 0.000000] Dentry cache hash table entries: 32768 (order=
: 5, 131072 bytes)<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 0.000000] Inode-cache hash table entries: 16384 (order:=
 4, 65536 bytes)<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 0.000000] Memory: 200444K/262144K available (6495K kern=
el code, 313K rwdata, 2368K rodata, 260K init, 265K bss, 12548K reserved, 4=
9152K cma-reserved, 0K highmem)<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 0.000000] Virtual kernel memory layout:<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 0.000000]=C2=A0 =C2=A0 =C2=A0vector=C2=A0 : 0xffff0000 =
- 0xffff1000=C2=A0 =C2=A0(=C2=A0 =C2=A04 kB)<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 0.000000]=C2=A0 =C2=A0 =C2=A0fixmap=C2=A0 : 0xffc00000 =
- 0xfff00000=C2=A0 =C2=A0(3072 kB)<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 0.000000]=C2=A0 =C2=A0 =C2=A0vmalloc : 0xd0800000 - 0xf=
f800000=C2=A0 =C2=A0( 752 MB)<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 0.000000]=C2=A0 =C2=A0 =C2=A0lowmem=C2=A0 : 0xc0000000 =
- 0xd0000000=C2=A0 =C2=A0( 256 MB)<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 0.000000]=C2=A0 =C2=A0 =C2=A0pkmap=C2=A0 =C2=A0: 0xbfe0=
0000 - 0xc0000000=C2=A0 =C2=A0(=C2=A0 =C2=A02 MB)<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 0.000000]=C2=A0 =C2=A0 =C2=A0modules : 0xbf000000 - 0xb=
fe00000=C2=A0 =C2=A0(=C2=A0 14 MB)<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 0.000000]=C2=A0 =C2=A0 =C2=A0 =C2=A0.text : 0xc0008000 =
- 0xc08b0034=C2=A0 =C2=A0(8865 kB)<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 0.000000]=C2=A0 =C2=A0 =C2=A0 =C2=A0.init : 0xc08b1000 =
- 0xc08f2000=C2=A0 =C2=A0( 260 kB)<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 0.000000]=C2=A0 =C2=A0 =C2=A0 =C2=A0.data : 0xc08f2000 =
- 0xc09407f0=C2=A0 =C2=A0( 314 kB)<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 0.000000]=C2=A0 =C2=A0 =C2=A0 =C2=A0 .bss : 0xc09407f0 =
- 0xc0982d58=C2=A0 =C2=A0( 266 kB)<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 0.000000] SLUB: HWalign=3D64, Order=3D0-3, MinObjects=
=3D0, CPUs=3D1, Nodes=3D1<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 0.000000] Preemptible hierarchical RCU implementation.<=
br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 0.000000]=C2=A0 Build-time adjustment of leaf fanout to=
 32.<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 0.000000] NR_IRQS:16 nr_irqs:16 16<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 0.000000] IRQ: Found an INTC at 0xfa200000 (revision 5.=
0) with 128 interrupts<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 0.000000] OMAP clockevent source: timer2 at 24000000 Hz=
<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 0.000015] sched_clock: 32 bits at 24MHz, resolution 41n=
s, wraps every 89478484971ns<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 0.000036] clocksource: timer1: mask: 0xffffffff max_cyc=
les: 0xffffffff, max_idle_ns: 79635851949 ns<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 0.000047] OMAP clocksource: timer1 at 24000000 Hz<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 0.000222] clocksource_probe: no matching clocksources f=
ound<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 0.000415] Console: colour dummy device 80x30<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 0.000442] WARNING: Your &#39;console=3DttyO0&#39; has b=
een replaced by &#39;ttyS0&#39;<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 0.000448] This ensures that you still see kernel messag=
es. Please<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 0.000454] update your kernel commandline.<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 0.000473] Calibrating delay loop... 795.44 BogoMIPS (lp=
j=3D3977216)<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 0.089064] pid_max: default: 32768 minimum: 301<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 0.089193] Mount-cache hash table entries: 1024 (order: =
0, 4096 bytes)<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 0.089205] Mountpoint-cache hash table entries: 1024 (or=
der: 0, 4096 bytes)<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 0.089932] Initializing cgroup subsys io<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 0.089964] Initializing cgroup subsys memory<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 0.090005] Initializing cgroup subsys devices<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 0.090021] Initializing cgroup subsys freezer<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 0.090036] Initializing cgroup subsys perf_event<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 0.090048] Initializing cgroup subsys pids<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 0.090078] CPU: Testing write buffer coherency: ok<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 0.090499] Setting up static identity map for 0x80008200=
 - 0x80008258<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 0.092680] devtmpfs: initialized<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 0.105440] VFP support v0.3: implementor 41 architecture=
 3 part 30 variant c rev 3<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 0.120529] omap_hwmod: debugss: _wait_target_disable fai=
led<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 0.175584] clocksource: jiffies: mask: 0xffffffff max_cy=
cles: 0xffffffff, max_idle_ns: 19112604462750000 ns<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 0.179852] pinctrl core: initialized pinctrl subsystem<b=
r>
&gt;<br>
&gt; [=C2=A0 =C2=A0 0.181216] NET: Registered protocol family 16<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 0.183420] DMA: preallocated 256 KiB pool for atomic coh=
erent allocations<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 0.209061] cpuidle: using governor ladder<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 0.239048] cpuidle: using governor menu<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 0.243661] OMAP GPIO hardware version 0.1<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 0.254360] hw-breakpoint: debug architecture 0x4 unsuppo=
rted.<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 0.297629] edma 49000000.edma: TI EDMA DMA engine driver=
<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 0.298606] reg-fixed-voltage fixedregulator@2: could not=
 find pctldev for node /ocp/l4_wkup@44c00000/scm@210000/pinmux@800/pinmux_w=
l12xx_gpio, deferring probe<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 0.302364] omap_i2c 44e0b000.i2c: could not find pctldev=
 for node /ocp/l4_wkup@44c00000/scm@210000/pinmux@800/pinmux_i2c0_pins, def=
erring probe<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 0.302525] media: Linux media interface: v0.10<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 0.302588] Linux video capture interface: v2.00<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 0.302638] pps_core: LinuxPPS API ver. 1 registered<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 0.302646] pps_core: Software ver. 5.3.6 - Copyright 200=
5-2007 Rodolfo Giometti &lt;<a href=3D"mailto:giometti@linux.it" target=3D"=
_blank">giometti@linux.it</a>&gt;<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 0.302676] PTP clock support registered<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 0.302741] EDAC MC: Ver: 3.0.0<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 0.303966] omap-mailbox 480c8000.mailbox: omap mailbox r=
ev 0x400<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 0.304332] Advanced Linux Sound Architecture Driver Init=
ialized.<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 0.305512] clocksource: Switched to clocksource timer1<b=
r>
&gt;<br>
&gt; [=C2=A0 =C2=A0 0.316775] NET: Registered protocol family 2<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 0.317599] TCP established hash table entries: 2048 (ord=
er: 1, 8192 bytes)<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 0.317636] TCP bind hash table entries: 2048 (order: 1, =
8192 bytes)<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 0.317663] TCP: Hash tables configured (established 2048=
 bind 2048)<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 0.317748] UDP hash table entries: 256 (order: 0, 4096 b=
ytes)<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 0.317767] UDP-Lite hash table entries: 256 (order: 0, 4=
096 bytes)<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 0.317925] NET: Registered protocol family 1<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 0.318352] RPC: Registered named UNIX socket transport m=
odule.<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 0.318366] RPC: Registered udp transport module.<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 0.318372] RPC: Registered tcp transport module.<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 0.318379] RPC: Registered tcp NFSv4.1 backchannel trans=
port module.<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 0.319330] hw perfevents: enabled with armv7_cortex_a8 P=
MU driver, 5 counters available<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 0.321392] futex hash table entries: 256 (order: -1, 307=
2 bytes)<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 0.329780] squashfs: version 4.0 (2009/01/31) Phillip Lo=
ugher<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 0.330717] NFS: Registering the id_resolver key type<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 0.330798] Key type id_resolver registered<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 0.330807] Key type id_legacy registered<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 0.330886] ntfs: driver 2.1.32 [Flags: R/O].<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 0.334673] Block layer SCSI generic (bsg) driver version=
 0.4 loaded (major 248)<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 0.334706] io scheduler noop registered<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 0.334719] io scheduler deadline registered<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 0.334877] io scheduler cfq registered (default)<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 0.336555] pinctrl-single 44e10800.pinmux: 142 pins at p=
a f9e10800 size 568<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 0.339415] backlight supply power not found, using dummy=
 regulator<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 0.402480] Serial: 8250/16550 driver, 10 ports, IRQ shar=
ing disabled<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 0.406962] 44e09000.serial: ttyS0 at MMIO 0x44e09000 (ir=
q =3D 158, base_baud =3D 3000000) is a 8250<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 1.017357] console [ttyS0] enabled<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 1.022206] 48022000.serial: ttyS1 at MMIO 0x48022000 (ir=
q =3D 159, base_baud =3D 3000000) is a 8250<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 1.032273] [drm] Initialized drm 1.1.0 20060810<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 1.039564] [drm] Supports vblank timestamp caching Rev 2=
 (21.10.2013).<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 1.046349] [drm] No driver support for vblank timestamp =
query.<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 1.062121] Console: switching to colour frame buffer dev=
ice 60x34<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 1.070360] tilcdc 4830e000.lcdc: fb0:=C2=A0 frame buffer=
 device<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 1.105531] [drm] Initialized tilcdc 1.0.0 20121205 on mi=
nor 0<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 1.118644] loop: module loaded<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 1.124253] libphy: Fixed MDIO Bus: probed<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 1.185550] davinci_mdio 4a101000.mdio: davinci mdio revi=
sion 1.6<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 1.191695] davinci_mdio 4a101000.mdio: detected phy mask=
 fffffffe<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 1.198786] libphy: 4a101000.mdio: probed<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 1.202886] davinci_mdio 4a101000.mdio: phy[0]: device 4a=
101000.mdio:00, driver SMSC LAN8710/LAN8720<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 1.212890] cpsw 4a100000.ethernet: Detected MACID =3D a0=
:f6:fd:4c:a6:ba<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 1.220531] cpsw 4a100000.ethernet: cpsw: Detected MACID =
=3D c4:ed:ba:88:2a:92<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 1.229382] mousedev: PS/2 mouse device common for all mi=
ce<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 1.235845] i2c /dev entries driver<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 1.240508] cpuidle: enable-method property &#39;ti,am335=
2&#39; found operations<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 1.248197] omap_hsmmc 48060000.mmc: Got CD GPIO<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 1.275713] pinctrl-single 44e10800.pinmux: bad data for =
mux pinmux_mmc2_pins<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 1.282895] pinctrl-single 44e10800.pinmux: no pins entri=
es for pinmux_mmc2_pins<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 1.317159] ledtrig-cpu: registered to indicate activity =
on CPUs<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 1.326069] NET: Registered protocol family 10<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 1.332092] sit: IPv6 over IPv4 tunneling driver<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 1.337715] NET: Registered protocol family 17<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 1.342510] Key type dns_resolver registered<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 1.347095] omap_voltage_late_init: Voltage driver suppor=
t not added<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 1.407145] tps65910-rtc tps65910-rtc: rtc core: register=
ed tps65910-rtc as rtc0<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 1.415278] omap_i2c 44e0b000.i2c: bus 0 rev0.11 at 400 k=
Hz<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 1.421665] omap_hsmmc 48060000.mmc: Got CD GPIO<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 1.426813] vmmc: supplied by vbat<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 1.466341] pinctrl-single 44e10800.pinmux: bad data for =
mux pinmux_mmc2_pins<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 1.474737] pinctrl-single 44e10800.pinmux: no pins entri=
es for pinmux_mmc2_pins<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 1.513247] mmc0: host does not support reading read-only=
 switch, assuming write-enable<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 1.523414] mmc0: new high speed SDHC card at address 000=
1<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 1.529635] mmcblk0: mmc0:0001 AS 3.72 GiB<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 1.535996]=C2=A0 mmcblk0: p1 p2 p3<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 1.595932] vdd_mpu: supplied by vbat<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 1.602167] input: gpio_buttons@0 as /devices/platform/gp=
io_buttons@0/input/input0<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 1.618291] tps65910-rtc tps65910-rtc: setting system clo=
ck to 2019-02-01 20:07:49 UTC (1549051669)<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 1.639394] lis3_reg: disabling<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 1.655732] ALSA device list:<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 1.658720]=C2=A0 =C2=A0No soundcards found.<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 1.678290] EXT4-fs (mmcblk0p3): couldn&#39;t mount as ex=
t3 due to feature incompatibilities<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 1.696920] EXT4-fs (mmcblk0p3): couldn&#39;t mount as ex=
t2 due to feature incompatibilities<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 2.183999] EXT4-fs (mmcblk0p3): recovery complete<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 2.196864] EXT4-fs (mmcblk0p3): mounted filesystem with =
ordered data mode. Opts: (null)<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 2.205084] VFS: Mounted root (ext4 filesystem) on device=
 179:3.<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 2.225670] devtmpfs: mounted<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 2.235781] Freeing unused kernel memory: 260K (c08b1000 =
- c08f2000)<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 2.242162] This architecture does not have kernel memory=
 protection.<br>
&gt;<br>
&gt; INIT: version 2.88 booting<br>
&gt;<br>
&gt; Starting udev<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 3.090091] udevd[78]: starting version 3.2.5<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 3.106175] random: udevd: uninitialized urandom read (16=
 bytes read, 26 bits of entropy available)<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 3.118667] random: udevd: uninitialized urandom read (16=
 bytes read, 26 bits of entropy available)<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 3.128014] random: udevd: uninitialized urandom read (16=
 bytes read, 26 bits of entropy available)<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 3.137335] random: udevd: uninitialized urandom read (16=
 bytes read, 26 bits of entropy available)<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 3.218433] udevd[79]: starting eudev-3.2.5<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 3.325886] random: udevd: uninitialized urandom read (16=
 bytes read, 29 bits of entropy available)<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 3.346155] random: udevd: uninitialized urandom read (16=
 bytes read, 29 bits of entropy available)<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 4.820708] EXT4-fs (mmcblk0p3): re-mounted. Opts: data=
=3Dordered<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 5.548283] random: dd: uninitialized urandom read (512 b=
ytes read, 43 bits of entropy available)<br>
&gt;<br>
&gt; INIT: Entering runlevel: 5<br>
&gt;<br>
&gt; Configuring network interfaces... [=C2=A0 =C2=A0 5.820546] net eth0: i=
nitializing cpsw version 1.12 (0)<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 5.825987] net eth0: initialized cpsw ale version 1.4<br=
>
&gt;<br>
&gt; [=C2=A0 =C2=A0 5.831150] net eth0: ALE Table size 1024<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 5.838581] net eth0: phy found : id is : 0x7c0f1<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 5.851838] IPv6: ADDRCONF(NETDEV_UP): eth0: link is not =
ready<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 9.896392] cpsw 4a100000.ethernet eth0: Link is Up - 100=
Mbps/Full - flow control rx/tx<br>
&gt;<br>
&gt; [=C2=A0 =C2=A0 9.904635] IPv6: ADDRCONF(NETDEV_CHANGE): eth0: link bec=
omes ready<br>
&gt;<br>
&gt; chown: unrecognized option &#39;--reference=3D/etc/resolv.conf&#39;<br=
>
&gt;<br>
&gt; BusyBox v1.27.2 (2018-11-05 21:16:09 UTC) multi-call binary.<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; Usage: chown [-Rh]... USER[:[GRP]] FILE...<br>
&gt;<br>
&gt; chmod: unrecognized option &#39;--reference=3D/etc/resolv.conf&#39;<br=
>
&gt;<br>
&gt; BusyBox v1.27.2 (2018-11-05 21:16:09 UTC) multi-call binary.<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; Usage: chmod [-R] MODE[,MODE]... FILE...<br>
&gt;<br>
&gt; done.<br>
&gt;<br>
&gt; Starting system message bus: [=C2=A0 =C2=A014.887099] random: dbus-dae=
mon: uninitialized urandom read (12 bytes read, 62 bits of entropy availabl=
e)<br>
&gt;<br>
&gt; [=C2=A0 =C2=A014.912318] random: dbus-daemon: uninitialized urandom re=
ad (12 bytes read, 62 bits of entropy available)<br>
&gt;<br>
&gt; dbus.<br>
&gt;<br>
&gt; Starting OpenBSD Secure Shell server: sshd<br>
&gt;<br>
&gt; [=C2=A0 =C2=A015.393971] random: sshd: uninitialized urandom read (32 =
bytes read, 65 bits of entropy available)<br>
&gt;<br>
&gt; done.<br>
&gt;<br>
&gt; Starting Xserver<br>
&gt;<br>
&gt; Starting DHCP server:<br>
&gt;<br>
&gt; .<br>
&gt;<br>
&gt; starting DNS forwarder and DHCP server: dnsmasq...<br>
&gt;<br>
&gt; X.Org X Server 1.19.6<br>
&gt;<br>
&gt; Release Date: 2017-12-20<br>
&gt;<br>
&gt; X Protocol Version 11, Revision 0<br>
&gt;<br>
&gt; Build Operating System: Linux 4.15.0-38-generic x86_64<br>
&gt;<br>
&gt; Current Operating System: Linux polycaptil-machine-am335x-evmsk <br>
&gt; 4.4.19-ge581bb1cac #1 PREEMPT Thu May 24 11:42:17 CEST 2018 armv7l<br>
&gt;<br>
&gt; Kernel command line: console=3DttyO0,115200 root=3D/dev/mmcblk0p3 rw<b=
r>
&gt;<br>
&gt; Build Date: 05 November 2018=C2=A0 09:33:21PM<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; Current version of pixman: 0.34.0<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Before reporting problems, check <a h=
ref=3D"http://wiki.x.org" rel=3D"noreferrer" target=3D"_blank">http://wiki.=
x.org</a><br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0to make sure that you have the latest=
 version.<br>
&gt;<br>
&gt; Markers: (--) probed, (**) from config file, (=3D=3D) default setting,=
<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(++) from command line, (!!) notice, =
(II) informational,<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0(WW) warning, (EE) error, (NI) not im=
plemented, (??) unknown.<br>
&gt;<br>
&gt; (=3D=3D) Log file: &quot;/var/log/Xorg.0.log&quot;, Time: Fri Feb=C2=
=A0 1 20:08:02 2019<br>
&gt;<br>
&gt; (=3D=3D) Using config file: &quot;/etc/X11/xorg.conf&quot;<br>
&gt;<br>
&gt; (=3D=3D) Using system config directory &quot;/usr/share/X11/xorg.conf.=
d&quot;<br>
&gt;<br>
&gt; done.<br>
&gt;<br>
&gt; Starting HOSTAP Daemon: Configuration file: /etc/hostapd.conf<br>
&gt;<br>
&gt; nl80211: &#39;nl80211&#39; generic netlink not found<br>
&gt;<br>
&gt; Failed to initialize driver &#39;nl80211&#39;<br>
&gt;<br>
&gt; wlan0: interface state UNINITIALIZED-&gt;DISABLED<br>
&gt;<br>
&gt; wlan0: AP-DISABLED<br>
&gt;<br>
&gt; hostapd_free_hapd_data: Interface wlan0 wasn&#39;t started<br>
&gt;<br>
&gt; Starting ntpd: done<br>
&gt;<br>
&gt; Starting syslogd/klogd: done<br>
&gt;<br>
&gt; Starting crond: OK<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; Poky (Yocto Project Reference Distro) 2.5 <br>
&gt; polycaptil-machine-am335x-evmsk /dev/ttyS0<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; polycaptil-machine-am335x-evmsk login: D-BUS per-session daemon <br>
&gt; address is: <br>
&gt; unix:abstract=3D/tmp/dbus-07WuJSySeb,guid=3Da3e41f2692316c19766e95535c=
54a7<br>
&gt; 25<br>
&gt;<br>
&gt; Size 1024x768 not found in available modes<br>
&gt;<br>
&gt; Error: No calibratable devices found.<br>
&gt;<br>
&gt; matchbox: Cant find a keycode for keysym 269025056<br>
&gt;<br>
&gt; matchbox: ignoring key shortcut XF86Calendar=3D!$contacts<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; matchbox: Cant find a keycode for keysym 2809<br>
&gt;<br>
&gt; matchbox: ignoring key shortcut telephone=3D!$dates<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; matchbox: Cant find a keycode for keysym 269025050<br>
&gt;<br>
&gt; matchbox: ignoring key shortcut XF86Start=3D!matchbox-remote -desktop<=
br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; dbus-daemon[358]: Activating service name=3D&#39;org.a11y.atspi.Regist=
ry&#39; <br>
&gt; requested by &#39;:1.0&#39; (uid=3D0 pid=3D354 comm=3D&quot;matchbox-t=
erminal &quot;)<br>
&gt;<br>
&gt; dbus-daemon[358]: Successfully activated service &#39;org.a11y.atspi.R=
egistry&#39;<br>
&gt;<br>
&gt; SpiRegistry daemon is running with well-known name - <br>
&gt; org.a11y.atspi.Registry<br>
&gt;<br>
&gt; [=C2=A0 =C2=A030.662697] random: nonblocking pool is initialized<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; Poky (Yocto Project Reference Distro) 2.5 <br>
&gt; polycaptil-machine-am335x-evmsk /dev/ttyS0<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; Thank=E2=80=99s to take time to read my message.<br>
&gt;<br>
&gt; N.Stanisavljevic<br>
&gt;<br>
&gt; --<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoct=
oproject.org</a><br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noref=
errer" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><=
br>
<br>
</blockquote></div>

--0000000000007b9f61058125e000--
