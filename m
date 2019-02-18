Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4103BE00CC3; Mon, 18 Feb 2019 06:21:30 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,FREEMAIL_REPLY,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.160.182 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (zoran.stojsavljevic[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  1.0 FREEMAIL_REPLY From and body contain different freemails
Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com
	[209.85.160.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C3AA6E00A1A
	for <yocto@yoctoproject.org>; Mon, 18 Feb 2019 06:21:26 -0800 (PST)
Received: by mail-qt1-f182.google.com with SMTP id n32so19258968qte.11
	for <yocto@yoctoproject.org>; Mon, 18 Feb 2019 06:21:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=P7ZJ0194Q99B/BFnkgEBGm+E9G8lVb4B3vRf91ga8cE=;
	b=atDrmYapygZqgxmLTBtSC0Hg9Der+yndQA7w+bhkLL8EzFmyFkYpy/YxNCSaMfy9vy
	6zEMl4v8myT+bBG/2q5WoAh6OmMa/frHVBWg58QPqJRVknBLmOFhfpDWkI1dXoSEAJeI
	pVs6aClFZAaDG8v7Q6lZsKmJmmt2TmbdOSff9sz00l/o54KAsnWLSabepkRSV0V3vFjB
	JjHUiaR6KlJC24P9rM7Zt08BM7MKoIk4YqHPsSUN7UN+ZXlNMS7JIHHqc7SKD7VbyJWW
	tjtfmBl8RiHmiESVxDkGXnAynkMXrw4agvENYDdlrXznuLioKTwQtV9JscNmjb1PL3K8
	5s3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=P7ZJ0194Q99B/BFnkgEBGm+E9G8lVb4B3vRf91ga8cE=;
	b=eUS8g21DbflhXYVEBW/a3EZQuzuiHyPQDJYKOFdXG3T8MzT1/aL6TBXTYeE7gTIqEk
	7d/kTVT8o8q804OKoHTkUSeq8318CkShkHdGgrZBI6pd2uzOcTUO96iZUXzjfe24lXk/
	6A51/hG8lFL6wtYSjUfob1g55Vfmyn+EqaArJt6vPBidkzZnpYOpNQwHUrXCDQQgRl0B
	k2p1ZEc4YmWsKLIbsS54g7dWd/IIinTa3oz5Jx3ShtX4Oo20UxIwtOkWXg6Tl5HFiGCs
	KOWEmye9LgZxam9NFSd8Kit9zZWM40K9pnZFoK2eb9o/qpJUt1WmOkGKd7Gz4zWELWZn
	9JHg==
X-Gm-Message-State: AHQUAuYjsSCPXiY9kxEvJY5pjOnbYCBNQieA5RbHNg1kH+UMqIH2IsIK
	5dVQKaJzruxzu94l856AYo8aSp9InrQQnyiSO05m52x4EBk=
X-Google-Smtp-Source: AHgI3Ib6j6vxWeeoPlgc7bHfoNck3kEWAgqEZ4ggroVuDDhZ8Vyig4nwOAp2lnCjwiz56g+mRTyOxUAkNy05OKmRcvk=
X-Received: by 2002:aed:3574:: with SMTP id b49mr18365065qte.235.1550499685737;
	Mon, 18 Feb 2019 06:21:25 -0800 (PST)
MIME-Version: 1.0
References: <001101d4bc79$b2739150$175ab3f0$@polycaptil.fr>
	<CAGAf8LxYW24L9Ah=ERcQncuMFC5w3UB26_WxoyZor8UQU7hBFw@mail.gmail.com>
	<003801d4bd38$cd620b80$68262280$@polycaptil.fr>
	<CAGAf8LxWMPqkFZxZWcq78onkxNO1TyUd0NUUkHje+jN7bO1Q4g@mail.gmail.com>
	<CAGAf8Lx-hCeapL1HtucKEG6kXb+8MwrdMWyEiSXXrqa+-vAG9w@mail.gmail.com>
	<000b01d4c790$95ede180$c1c9a480$@polycaptil.fr>
In-Reply-To: <000b01d4c790$95ede180$c1c9a480$@polycaptil.fr>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Mon, 18 Feb 2019 15:21:13 +0100
Message-ID: <CAGAf8Ly+TuyozCCaeHTv6hPJLHnQZSo_jh5=hHfNdg-RLAR8Eg@mail.gmail.com>
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
X-List-Received-Date: Mon, 18 Feb 2019 14:21:30 -0000
Content-Type: multipart/alternative; boundary="000000000000fe2a6805822bd6f0"

--000000000000fe2a6805822bd6f0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Nikola,

Two things, which immediately came to my mind:
[1 - Harder way] Either to change xorg-x11-server in sumo to match at least
xorg-x11-server *1.20.3;*
      (harder way, since few people know exact dependencies among various
GFX packages, and what
       and how many packages need to be also changed to make
xorg-x11-server 1.20.3 to work)
[2 - Easier Way] Either to migrate YOCTO to Thud, where the correct
xorg-x11-server package 1.20.3
      is already fixed and set!
      (easier way, since exact dependencies among various GFX packages are
already set for 1.20.3)

Best Regards,
Zoran
_______


On Mon, Feb 18, 2019 at 2:48 PM Stanisavljevic <
n.stanisavljevic@polycaptil.fr> wrote:

> Thank you Zoran for trying to help me.
> I tried to resolve the problem, but I didn=E2=80=99t succeed yet, I think=
 I will
> to continue, and If after some time I find nothing, I=E2=80=99m going to =
migrate to
> the thud version.
>
>
>
> I will maybe try to use Bugzilla
>
>
>
> Nikola
>
> *De :* Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
> *Envoy=C3=A9 :* mardi 5 f=C3=A9vrier 2019 19:28
> *=C3=80 :* Stanisavljevic <n.stanisavljevic@polycaptil.fr>
> *Cc :* Yocto Project <yocto@yoctoproject.org>; marc.ferland@gmail.com
> *Objet :* Re: [yocto] yocto touchscreen
>
>
>
> Hello Nikola,
>
> Let us try to cut to the chase!
>
> After reading what Marc Ferland says/writes, and looking into the
> following:
> https://bugzilla.redhat.com/show_bug.cgi?id=3D1650634
>
> I have spotted the following:
>
> *Pat Riehecky* *2018-11-20 14:28:22 UTC *
>
>
>
> *the bug remains with the elrepo
> kernels:kernel-ml-4.19.2-1.el7.elrepo.x86_64kernel-lt-4.4.163-1.el7.elrep=
o.x86_64*
>
> I never had this problem since I do not use Xorg (GFX), rather I only
>
> use serial console from VBox VM from my BBB (pass-through).
>
>
>
> Thus, my suggestion for you, to skip the whole mess is to rebuild your
>
> distro *in the light of YOCTO Project 2.6.1 (thud 20.0.0.1).*
>
>
>
> My best guess (then you'll inherit YOCTO kernel 4.20.x with fixed Xorg -
> X11).
>
>
>
> I am using Fedora 29 on my laptop. Also from the bugzilla:
>
> *Pat Riehecky* *2018-11-20 15:46:11 UTC *
>
> *Bug resolved by rebuilding xorg-x11-server-1.20.3-1.fc29 [1] for 7.6.*
>
> *With this in mind it appears to be an Xorg server bug rather than fbdev.=
*
>
>
>
> From my HP EliteBook 840 G1 Fedora 29, Xorg.0.log - February 5th, 2019.,
>
> I have the following:
>
>
>
> [    26.955] Kernel command line: BOOT_IMAGE=3D/
> *vmlinuz-4.20.6-200.fc29.x86_64*
>
> root=3D/dev/mapper/fedora-root ro rd.lvm.lv=3Dfedora/root rd.lvm.lv=3Dfed=
ora/swap
> rhgb
>
> quiet LANG=3Den_US.UTF-8
>
> [    26.955] Build Date: 11 January 2019  12:47:38PM
> *[    26.955] Build ID: xorg-x11-server 1.20.3-3.fc29*
> [    26.955] Current version of pixman: 0.34.0
>
> Best Regards,
> Zoran
> _______
>
> On Tue, Feb 5, 2019 at 2:49 PM Zoran Stojsavljevic <
> zoran.stojsavljevic@gmail.com> wrote:
> >
> > Hello Nikola,
> >
> > > I created a kernel recipe with a bbappend file, and, I added
> > > the same defconfig that I used for krogoth version.
> > > The bbappend for kernel recipe concern meta-ti layer.
> > > I didn't edited defconfig file in other layers which contain a
> > > kernel recipe.
> >
> > It could be some problem that Sumo does not take your bbappend file int=
o
> the
> > consideration as placed.
> >
> > It could be something else, as well.
> >
> > I have the same issue with my defconfig file for my Thud Beagle Bone
> Black (BBB)
> > standard board. Every time I recompile my YOCTO for it for different
> releases, I need
> > to import my specific defconfig. But I use complete different repos for
> my standard
> > Beagle Bone Black than YOCTO BBB Poky reference distro.
> >
> > Here is what I use in Thud (my bblayers.conf):
> >
> > POKY_BBLAYERS_CONF_VERSION =3D "2"
> > BBPATH =3D "${TOPDIR}"
> > BBFILES ?=3D ""
> >
> > BBLAYERS ?=3D " \
> >     /home/user/projects2/beaglebone-black/yocto-thud/meta-bbb \
> >
> /home/user/projects2/beaglebone-black/yocto-thud/meta-openembedded/meta-n=
etworking
> \
> >
> /home/user/projects2/beaglebone-black/yocto-thud/meta-openembedded/meta-o=
e \
> >
> /home/user/projects2/beaglebone-black/yocto-thud/meta-openembedded/meta-p=
ython
> \
> >     /home/user/projects2/beaglebone-black/yocto-thud/meta-qt5 \
> >     /home/user/projects2/beaglebone-black/yocto-thud/poky/meta \
> >     /home/user/projects2/beaglebone-black/yocto-thud/poky/meta-poky"
> >
> > There, I replace defconfig in this layer:
> /home/user/projects2/beaglebone-black/yocto-thud/meta-bbb
> > with my own defconfig.
> >
> > In the directory:
> >
> /home/user/projects2/beaglebone-black/yocto-thud/meta-bbb/recipes-kernel/=
linux/linux-stable-4.19/beaglebone
> >
> > If you use only Poky repository, then you need to read the following
> paragraph (how to use
> > your defconfig with Poky):
> >
> > [2.3.3. Changing the Configuration] YOCTO Project Linux Development
> Manual
> >
> https://www.yoctoproject.org/docs/2.5/kernel-dev/kernel-dev.html#using-an=
-in-tree-defconfig-file
> > 2.3.3. Changing the Configuration
> >
> > I hope this will help. Please, keep us posted!
> >
> > Zoran
> > _______
> >
> >
> > On Tue, Feb 5, 2019 at 10:54 AM Stanisavljevic <
> n.stanisavljevic@polycaptil.fr> wrote:
> >>
> >> Hy Zoran
> >>
> >> Thank's to take time to answer
> >>
> >> I created a kernel recipe with a bbappend file, and, I added the same
> defconfig that I used for krogoth version.
> >> The bbappend for kernel recipe concern meta-ti layer.
> >> I didn't edited defconfig file in other layers which contain a kernel
> recipe.
> >>
> >> I think it's a problem which concern the screen resolution, screen
> frequency and adc touchscreen.
> >> Something is different between the krogoth and sumo version, but I
> didn't find what is changed...
> >>
> >> Xrandr show that problem is maybe around the screen resolution.
> >> It's show the next message : "Size 1024x768 not found in available
> modes"
> >> Maybe it was changed between krogoth and sumo version...but I don't
> know where it is indicated if sources files...
> >>
> >> What do you think ? problem can be around the screen resolution, scree=
n
> frequency and adc touchscreen ?
> >>
> >> Nikola
> >>
> >> -----Message d'origine-----
> >> De : Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
> >> Envoy=C3=A9 : lundi 4 f=C3=A9vrier 2019 17:08
> >> =C3=80 : Stanisavljevic <n.stanisavljevic@polycaptil.fr>
> >> Cc : Yocto Project <yocto@yoctoproject.org>
> >> Objet : Re: [yocto] yocto touchscreen
> >>
> >> > I built a first version of this os with version krogoth and it works
> fine.
> >> >
> >> > Now I build a second version of this os with version sumo and the
> >> > touch screen works fine during boot process but when kernel is loade=
d,
> >> > touchscreen freeze / lock and impossible to use it.
> >>
> >> Did you compare Krogoth kernel defconfig with Sumo kernel defconfig?
> >>
> >> May there are some mismatches in drivers' setup between these two?
> >>
> >> Zoran
> >> _______
> >>
> >> On Mon, Feb 4, 2019 at 12:24 PM Stanisavljevic <
> n.stanisavljevic@polycaptil.fr> wrote:
> >> >
> >> > Hy Team,
> >> >
> >> >
> >> >
> >> > I have a problem
> >> >
> >> >
> >> >
> >> > I buid a custom os for AM335x processor and I used yocto to do it.
> >> >
> >> >
> >> >
> >> > I build a first version of this os with version krogoth and it work
> fine.
> >> >
> >> >
> >> >
> >> > Now I build a second version of this os with version sumo and the
> touchscreen work fine during boot process but when kernel is loaded,
> touchscreen freeze / lock and impossible to use it.
> >> >
> >> > The terminal is printed on the touchscreen but the screen is locked,
> impossible to write a command or to move the mouse to select, =E2=80=A6.
> >> >
> >> >
> >> >
> >> > Here is the log of boot to the user session (log got with serial
> communication between PC and board) :
> >> >
> >> >
> >> >
> >> > U-Boot SPL 2017.05-00001-g041a398 (May 02 2018 - 18:36:57)
> >> >
> >> > Trying to boot from MMC1
> >> >
> >> > reading uboot.env
> >> >
> >> > reading u-boot.img
> >> >
> >> > reading u-boot.img
> >> >
> >> > reading u-boot.img
> >> >
> >> > reading u-boot.img
> >> >
> >> >
> >> >
> >> >
> >> >
> >> > U-Boot 2017.05-00001-g041a398 (May 02 2018 - 18:36:57 +0200)
> >> >
> >> >
> >> >
> >> > CPU  : AM335X-GP rev 2.1
> >> >
> >> > Model: TI AM335x EVM-SK
> >> >
> >> > DRAM:  256 MiB
> >> >
> >> > NAND:  0 MiB
> >> >
> >> > MMC:   OMAP SD/MMC: 0, OMAP SD/MMC: 1
> >> >
> >> > reading uboot.env
> >> >
> >> > ERROR: No USB device found
> >> >
> >> >
> >> >
> >> > at drivers/usb/gadget/ether.c:2709/usb_ether_init()
> >> >
> >> > Net:   CACHE: Misaligned operation at range [8df323c0, 8df32464]
> >> >
> >> >
> >> >
> >> > Warning: ethernet@4a100000 using MAC address from ROM
> >> >
> >> > eth0: ethernet@4a100000
> >> >
> >> > Hit any key to stop autoboot:  0
> >> >
> >> > reading zImage
> >> >
> >> > 3412752 bytes read in 251 ms (13 MiB/s)
> >> >
> >> > reading dtb
> >> >
> >> > 39733 bytes read in 12 ms (3.2 MiB/s)
> >> >
> >> > ## Flattened Device Tree blob at 82000000
> >> >
> >> >    Booting using the fdt blob at 0x82000000
> >> >
> >> >    Loading Device Tree to 8df19000, end 8df25b34 ... OK
> >> >
> >> >
> >> >
> >> > Starting kernel ...
> >> >
> >> >
> >> >
> >> > [    0.000000] Booting Linux on physical CPU 0x0
> >> >
> >> > [    0.000000] Initializing cgroup subsys cpu
> >> >
> >> > [    0.000000] Initializing cgroup subsys cpuacct
> >> >
> >> > [    0.000000] Linux version 4.4.19-ge581bb1cac
> (polycaptil@polycaptil-HP-Notebook) (gcc version 5.3.0 (GCC) ) #1 PREEMPT
> Thu May 24 11:42:17 CEST 2018
> >> >
> >> > [    0.000000] CPU: ARMv7 Processor [413fc082] revision 2 (ARMv7),
> cr=3D10c5387d
> >> >
> >> > [    0.000000] CPU: PIPT / VIPT nonaliasing data cache, VIPT aliasin=
g
> instruction cache
> >> >
> >> > [    0.000000] Machine model: TI AM335x EVM-SK
> >> >
> >> > [    0.000000] cma: Reserved 48 MiB at 0x8a800000
> >> >
> >> > [    0.000000] Memory policy: Data cache writeback
> >> >
> >> > [    0.000000] CPU: All CPU(s) started in SVC mode.
> >> >
> >> > [    0.000000] AM335X ES2.1 (sgx neon )
> >> >
> >> > [    0.000000] Built 1 zonelists in Zone order, mobility grouping
> on.  Total pages: 64960
> >> >
> >> > [    0.000000] Kernel command line: console=3DttyO0,115200
> root=3D/dev/mmcblk0p3 rw
> >> >
> >> > [    0.000000] PID hash table entries: 1024 (order: 0, 4096 bytes)
> >> >
> >> > [    0.000000] Dentry cache hash table entries: 32768 (order: 5,
> 131072 bytes)
> >> >
> >> > [    0.000000] Inode-cache hash table entries: 16384 (order: 4, 6553=
6
> bytes)
> >> >
> >> > [    0.000000] Memory: 200444K/262144K available (6495K kernel code,
> 313K rwdata, 2368K rodata, 260K init, 265K bss, 12548K reserved, 49152K
> cma-reserved, 0K highmem)
> >> >
> >> > [    0.000000] Virtual kernel memory layout:
> >> >
> >> > [    0.000000]     vector  : 0xffff0000 - 0xffff1000   (   4 kB)
> >> >
> >> > [    0.000000]     fixmap  : 0xffc00000 - 0xfff00000   (3072 kB)
> >> >
> >> > [    0.000000]     vmalloc : 0xd0800000 - 0xff800000   ( 752 MB)
> >> >
> >> > [    0.000000]     lowmem  : 0xc0000000 - 0xd0000000   ( 256 MB)
> >> >
> >> > [    0.000000]     pkmap   : 0xbfe00000 - 0xc0000000   (   2 MB)
> >> >
> >> > [    0.000000]     modules : 0xbf000000 - 0xbfe00000   (  14 MB)
> >> >
> >> > [    0.000000]       .text : 0xc0008000 - 0xc08b0034   (8865 kB)
> >> >
> >> > [    0.000000]       .init : 0xc08b1000 - 0xc08f2000   ( 260 kB)
> >> >
> >> > [    0.000000]       .data : 0xc08f2000 - 0xc09407f0   ( 314 kB)
> >> >
> >> > [    0.000000]        .bss : 0xc09407f0 - 0xc0982d58   ( 266 kB)
> >> >
> >> > [    0.000000] SLUB: HWalign=3D64, Order=3D0-3, MinObjects=3D0, CPUs=
=3D1,
> Nodes=3D1
> >> >
> >> > [    0.000000] Preemptible hierarchical RCU implementation.
> >> >
> >> > [    0.000000]  Build-time adjustment of leaf fanout to 32.
> >> >
> >> > [    0.000000] NR_IRQS:16 nr_irqs:16 16
> >> >
> >> > [    0.000000] IRQ: Found an INTC at 0xfa200000 (revision 5.0) with
> 128 interrupts
> >> >
> >> > [    0.000000] OMAP clockevent source: timer2 at 24000000 Hz
> >> >
> >> > [    0.000015] sched_clock: 32 bits at 24MHz, resolution 41ns, wraps
> every 89478484971ns
> >> >
> >> > [    0.000036] clocksource: timer1: mask: 0xffffffff max_cycles:
> 0xffffffff, max_idle_ns: 79635851949 ns
> >> >
> >> > [    0.000047] OMAP clocksource: timer1 at 24000000 Hz
> >> >
> >> > [    0.000222] clocksource_probe: no matching clocksources found
> >> >
> >> > [    0.000415] Console: colour dummy device 80x30
> >> >
> >> > [    0.000442] WARNING: Your 'console=3DttyO0' has been replaced by
> 'ttyS0'
> >> >
> >> > [    0.000448] This ensures that you still see kernel messages. Plea=
se
> >> >
> >> > [    0.000454] update your kernel commandline.
> >> >
> >> > [    0.000473] Calibrating delay loop... 795.44 BogoMIPS (lpj=3D3977=
216)
> >> >
> >> > [    0.089064] pid_max: default: 32768 minimum: 301
> >> >
> >> > [    0.089193] Mount-cache hash table entries: 1024 (order: 0, 4096
> bytes)
> >> >
> >> > [    0.089205] Mountpoint-cache hash table entries: 1024 (order: 0,
> 4096 bytes)
> >> >
> >> > [    0.089932] Initializing cgroup subsys io
> >> >
> >> > [    0.089964] Initializing cgroup subsys memory
> >> >
> >> > [    0.090005] Initializing cgroup subsys devices
> >> >
> >> > [    0.090021] Initializing cgroup subsys freezer
> >> >
> >> > [    0.090036] Initializing cgroup subsys perf_event
> >> >
> >> > [    0.090048] Initializing cgroup subsys pids
> >> >
> >> > [    0.090078] CPU: Testing write buffer coherency: ok
> >> >
> >> > [    0.090499] Setting up static identity map for 0x80008200 -
> 0x80008258
> >> >
> >> > [    0.092680] devtmpfs: initialized
> >> >
> >> > [    0.105440] VFP support v0.3: implementor 41 architecture 3 part
> 30 variant c rev 3
> >> >
> >> > [    0.120529] omap_hwmod: debugss: _wait_target_disable failed
> >> >
> >> > [    0.175584] clocksource: jiffies: mask: 0xffffffff max_cycles:
> 0xffffffff, max_idle_ns: 19112604462750000 ns
> >> >
> >> > [    0.179852] pinctrl core: initialized pinctrl subsystem
> >> >
> >> > [    0.181216] NET: Registered protocol family 16
> >> >
> >> > [    0.183420] DMA: preallocated 256 KiB pool for atomic coherent
> allocations
> >> >
> >> > [    0.209061] cpuidle: using governor ladder
> >> >
> >> > [    0.239048] cpuidle: using governor menu
> >> >
> >> > [    0.243661] OMAP GPIO hardware version 0.1
> >> >
> >> > [    0.254360] hw-breakpoint: debug architecture 0x4 unsupported.
> >> >
> >> > [    0.297629] edma 49000000.edma: TI EDMA DMA engine driver
> >> >
> >> > [    0.298606] reg-fixed-voltage fixedregulator@2: could not find
> pctldev for node /ocp/l4_wkup@44c00000/scm@210000/pinmux@800/pinmux_wl12x=
x_gpio,
> deferring probe
> >> >
> >> > [    0.302364] omap_i2c 44e0b000.i2c: could not find pctldev for nod=
e
> /ocp/l4_wkup@44c00000/scm@210000/pinmux@800/pinmux_i2c0_pins, deferring
> probe
> >> >
> >> > [    0.302525] media: Linux media interface: v0.10
> >> >
> >> > [    0.302588] Linux video capture interface: v2.00
> >> >
> >> > [    0.302638] pps_core: LinuxPPS API ver. 1 registered
> >> >
> >> > [    0.302646] pps_core: Software ver. 5.3.6 - Copyright 2005-2007
> Rodolfo Giometti <giometti@linux.it>
> >> >
> >> > [    0.302676] PTP clock support registered
> >> >
> >> > [    0.302741] EDAC MC: Ver: 3.0.0
> >> >
> >> > [    0.303966] omap-mailbox 480c8000.mailbox: omap mailbox rev 0x400
> >> >
> >> > [    0.304332] Advanced Linux Sound Architecture Driver Initialized.
> >> >
> >> > [    0.305512] clocksource: Switched to clocksource timer1
> >> >
> >> > [    0.316775] NET: Registered protocol family 2
> >> >
> >> > [    0.317599] TCP established hash table entries: 2048 (order: 1,
> 8192 bytes)
> >> >
> >> > [    0.317636] TCP bind hash table entries: 2048 (order: 1, 8192
> bytes)
> >> >
> >> > [    0.317663] TCP: Hash tables configured (established 2048 bind
> 2048)
> >> >
> >> > [    0.317748] UDP hash table entries: 256 (order: 0, 4096 bytes)
> >> >
> >> > [    0.317767] UDP-Lite hash table entries: 256 (order: 0, 4096 byte=
s)
> >> >
> >> > [    0.317925] NET: Registered protocol family 1
> >> >
> >> > [    0.318352] RPC: Registered named UNIX socket transport module.
> >> >
> >> > [    0.318366] RPC: Registered udp transport module.
> >> >
> >> > [    0.318372] RPC: Registered tcp transport module.
> >> >
> >> > [    0.318379] RPC: Registered tcp NFSv4.1 backchannel transport
> module.
> >> >
> >> > [    0.319330] hw perfevents: enabled with armv7_cortex_a8 PMU
> driver, 5 counters available
> >> >
> >> > [    0.321392] futex hash table entries: 256 (order: -1, 3072 bytes)
> >> >
> >> > [    0.329780] squashfs: version 4.0 (2009/01/31) Phillip Lougher
> >> >
> >> > [    0.330717] NFS: Registering the id_resolver key type
> >> >
> >> > [    0.330798] Key type id_resolver registered
> >> >
> >> > [    0.330807] Key type id_legacy registered
> >> >
> >> > [    0.330886] ntfs: driver 2.1.32 [Flags: R/O].
> >> >
> >> > [    0.334673] Block layer SCSI generic (bsg) driver version 0.4
> loaded (major 248)
> >> >
> >> > [    0.334706] io scheduler noop registered
> >> >
> >> > [    0.334719] io scheduler deadline registered
> >> >
> >> > [    0.334877] io scheduler cfq registered (default)
> >> >
> >> > [    0.336555] pinctrl-single 44e10800.pinmux: 142 pins at pa
> f9e10800 size 568
> >> >
> >> > [    0.339415] backlight supply power not found, using dummy regulat=
or
> >> >
> >> > [    0.402480] Serial: 8250/16550 driver, 10 ports, IRQ sharing
> disabled
> >> >
> >> > [    0.406962] 44e09000.serial: ttyS0 at MMIO 0x44e09000 (irq =3D 15=
8,
> base_baud =3D 3000000) is a 8250
> >> >
> >> > [    1.017357] console [ttyS0] enabled
> >> >
> >> > [    1.022206] 48022000.serial: ttyS1 at MMIO 0x48022000 (irq =3D 15=
9,
> base_baud =3D 3000000) is a 8250
> >> >
> >> > [    1.032273] [drm] Initialized drm 1.1.0 20060810
> >> >
> >> > [    1.039564] [drm] Supports vblank timestamp caching Rev 2
> (21.10.2013).
> >> >
> >> > [    1.046349] [drm] No driver support for vblank timestamp query.
> >> >
> >> > [    1.062121] Console: switching to colour frame buffer device 60x3=
4
> >> >
> >> > [    1.070360] tilcdc 4830e000.lcdc: fb0:  frame buffer device
> >> >
> >> > [    1.105531] [drm] Initialized tilcdc 1.0.0 20121205 on minor 0
> >> >
> >> > [    1.118644] loop: module loaded
> >> >
> >> > [    1.124253] libphy: Fixed MDIO Bus: probed
> >> >
> >> > [    1.185550] davinci_mdio 4a101000.mdio: davinci mdio revision 1.6
> >> >
> >> > [    1.191695] davinci_mdio 4a101000.mdio: detected phy mask fffffff=
e
> >> >
> >> > [    1.198786] libphy: 4a101000.mdio: probed
> >> >
> >> > [    1.202886] davinci_mdio 4a101000.mdio: phy[0]: device
> 4a101000.mdio:00, driver SMSC LAN8710/LAN8720
> >> >
> >> > [    1.212890] cpsw 4a100000.ethernet: Detected MACID =3D
> a0:f6:fd:4c:a6:ba
> >> >
> >> > [    1.220531] cpsw 4a100000.ethernet: cpsw: Detected MACID =3D
> c4:ed:ba:88:2a:92
> >> >
> >> > [    1.229382] mousedev: PS/2 mouse device common for all mice
> >> >
> >> > [    1.235845] i2c /dev entries driver
> >> >
> >> > [    1.240508] cpuidle: enable-method property 'ti,am3352' found
> operations
> >> >
> >> > [    1.248197] omap_hsmmc 48060000.mmc: Got CD GPIO
> >> >
> >> > [    1.275713] pinctrl-single 44e10800.pinmux: bad data for mux
> pinmux_mmc2_pins
> >> >
> >> > [    1.282895] pinctrl-single 44e10800.pinmux: no pins entries for
> pinmux_mmc2_pins
> >> >
> >> > [    1.317159] ledtrig-cpu: registered to indicate activity on CPUs
> >> >
> >> > [    1.326069] NET: Registered protocol family 10
> >> >
> >> > [    1.332092] sit: IPv6 over IPv4 tunneling driver
> >> >
> >> > [    1.337715] NET: Registered protocol family 17
> >> >
> >> > [    1.342510] Key type dns_resolver registered
> >> >
> >> > [    1.347095] omap_voltage_late_init: Voltage driver support not
> added
> >> >
> >> > [    1.407145] tps65910-rtc tps65910-rtc: rtc core: registered
> tps65910-rtc as rtc0
> >> >
> >> > [    1.415278] omap_i2c 44e0b000.i2c: bus 0 rev0.11 at 400 kHz
> >> >
> >> > [    1.421665] omap_hsmmc 48060000.mmc: Got CD GPIO
> >> >
> >> > [    1.426813] vmmc: supplied by vbat
> >> >
> >> > [    1.466341] pinctrl-single 44e10800.pinmux: bad data for mux
> pinmux_mmc2_pins
> >> >
> >> > [    1.474737] pinctrl-single 44e10800.pinmux: no pins entries for
> pinmux_mmc2_pins
> >> >
> >> > [    1.513247] mmc0: host does not support reading read-only switch,
> assuming write-enable
> >> >
> >> > [    1.523414] mmc0: new high speed SDHC card at address 0001
> >> >
> >> > [    1.529635] mmcblk0: mmc0:0001 AS 3.72 GiB
> >> >
> >> > [    1.535996]  mmcblk0: p1 p2 p3
> >> >
> >> > [    1.595932] vdd_mpu: supplied by vbat
> >> >
> >> > [    1.602167] input: gpio_buttons@0 as
> /devices/platform/gpio_buttons@0/input/input0
> >> >
> >> > [    1.618291] tps65910-rtc tps65910-rtc: setting system clock to
> 2019-02-01 20:07:49 UTC (1549051669)
> >> >
> >> > [    1.639394] lis3_reg: disabling
> >> >
> >> > [    1.655732] ALSA device list:
> >> >
> >> > [    1.658720]   No soundcards found.
> >> >
> >> > [    1.678290] EXT4-fs (mmcblk0p3): couldn't mount as ext3 due to
> feature incompatibilities
> >> >
> >> > [    1.696920] EXT4-fs (mmcblk0p3): couldn't mount as ext2 due to
> feature incompatibilities
> >> >
> >> > [    2.183999] EXT4-fs (mmcblk0p3): recovery complete
> >> >
> >> > [    2.196864] EXT4-fs (mmcblk0p3): mounted filesystem with ordered
> data mode. Opts: (null)
> >> >
> >> > [    2.205084] VFS: Mounted root (ext4 filesystem) on device 179:3.
> >> >
> >> > [    2.225670] devtmpfs: mounted
> >> >
> >> > [    2.235781] Freeing unused kernel memory: 260K (c08b1000 -
> c08f2000)
> >> >
> >> > [    2.242162] This architecture does not have kernel memory
> protection.
> >> >
> >> > INIT: version 2.88 booting
> >> >
> >> > Starting udev
> >> >
> >> > [    3.090091] udevd[78]: starting version 3.2.5
> >> >
> >> > [    3.106175] random: udevd: uninitialized urandom read (16 bytes
> read, 26 bits of entropy available)
> >> >
> >> > [    3.118667] random: udevd: uninitialized urandom read (16 bytes
> read, 26 bits of entropy available)
> >> >
> >> > [    3.128014] random: udevd: uninitialized urandom read (16 bytes
> read, 26 bits of entropy available)
> >> >
> >> > [    3.137335] random: udevd: uninitialized urandom read (16 bytes
> read, 26 bits of entropy available)
> >> >
> >> > [    3.218433] udevd[79]: starting eudev-3.2.5
> >> >
> >> > [    3.325886] random: udevd: uninitialized urandom read (16 bytes
> read, 29 bits of entropy available)
> >> >
> >> > [    3.346155] random: udevd: uninitialized urandom read (16 bytes
> read, 29 bits of entropy available)
> >> >
> >> > [    4.820708] EXT4-fs (mmcblk0p3): re-mounted. Opts: data=3Dordered
> >> >
> >> > [    5.548283] random: dd: uninitialized urandom read (512 bytes
> read, 43 bits of entropy available)
> >> >
> >> > INIT: Entering runlevel: 5
> >> >
> >> > Configuring network interfaces... [    5.820546] net eth0:
> initializing cpsw version 1.12 (0)
> >> >
> >> > [    5.825987] net eth0: initialized cpsw ale version 1.4
> >> >
> >> > [    5.831150] net eth0: ALE Table size 1024
> >> >
> >> > [    5.838581] net eth0: phy found : id is : 0x7c0f1
> >> >
> >> > [    5.851838] IPv6: ADDRCONF(NETDEV_UP): eth0: link is not ready
> >> >
> >> > [    9.896392] cpsw 4a100000.ethernet eth0: Link is Up - 100Mbps/Ful=
l
> - flow control rx/tx
> >> >
> >> > [    9.904635] IPv6: ADDRCONF(NETDEV_CHANGE): eth0: link becomes rea=
dy
> >> >
> >> > chown: unrecognized option '--reference=3D/etc/resolv.conf'
> >> >
> >> > BusyBox v1.27.2 (2018-11-05 21:16:09 UTC) multi-call binary.
> >> >
> >> >
> >> >
> >> > Usage: chown [-Rh]... USER[:[GRP]] FILE...
> >> >
> >> > chmod: unrecognized option '--reference=3D/etc/resolv.conf'
> >> >
> >> > BusyBox v1.27.2 (2018-11-05 21:16:09 UTC) multi-call binary.
> >> >
> >> >
> >> >
> >> > Usage: chmod [-R] MODE[,MODE]... FILE...
> >> >
> >> > done.
> >> >
> >> > Starting system message bus: [   14.887099] random: dbus-daemon:
> uninitialized urandom read (12 bytes read, 62 bits of entropy available)
> >> >
> >> > [   14.912318] random: dbus-daemon: uninitialized urandom read (12
> bytes read, 62 bits of entropy available)
> >> >
> >> > dbus.
> >> >
> >> > Starting OpenBSD Secure Shell server: sshd
> >> >
> >> > [   15.393971] random: sshd: uninitialized urandom read (32 bytes
> read, 65 bits of entropy available)
> >> >
> >> > done.
> >> >
> >> > Starting Xserver
> >> >
> >> > Starting DHCP server:
> >> >
> >> > .
> >> >
> >> > starting DNS forwarder and DHCP server: dnsmasq...
> >> >
> >> > X.Org X Server 1.19.6
> >> >
> >> > Release Date: 2017-12-20
> >> >
> >> > X Protocol Version 11, Revision 0
> >> >
> >> > Build Operating System: Linux 4.15.0-38-generic x86_64
> >> >
> >> > Current Operating System: Linux polycaptil-machine-am335x-evmsk
> >> > 4.4.19-ge581bb1cac #1 PREEMPT Thu May 24 11:42:17 CEST 2018 armv7l
> >> >
> >> > Kernel command line: console=3DttyO0,115200 root=3D/dev/mmcblk0p3 rw
> >> >
> >> > Build Date: 05 November 2018  09:33:21PM
> >> >
> >> >
> >> >
> >> > Current version of pixman: 0.34.0
> >> >
> >> >         Before reporting problems, check http://wiki.x.org
> >> >
> >> >         to make sure that you have the latest version.
> >> >
> >> > Markers: (--) probed, (**) from config file, (=3D=3D) default settin=
g,
> >> >
> >> >         (++) from command line, (!!) notice, (II) informational,
> >> >
> >> >         (WW) warning, (EE) error, (NI) not implemented, (??) unknown=
.
> >> >
> >> > (=3D=3D) Log file: "/var/log/Xorg.0.log", Time: Fri Feb  1 20:08:02 =
2019
> >> >
> >> > (=3D=3D) Using config file: "/etc/X11/xorg.conf"
> >> >
> >> > (=3D=3D) Using system config directory "/usr/share/X11/xorg.conf.d"
> >> >
> >> > done.
> >> >
> >> > Starting HOSTAP Daemon: Configuration file: /etc/hostapd.conf
> >> >
> >> > nl80211: 'nl80211' generic netlink not found
> >> >
> >> > Failed to initialize driver 'nl80211'
> >> >
> >> > wlan0: interface state UNINITIALIZED->DISABLED
> >> >
> >> > wlan0: AP-DISABLED
> >> >
> >> > hostapd_free_hapd_data: Interface wlan0 wasn't started
> >> >
> >> > Starting ntpd: done
> >> >
> >> > Starting syslogd/klogd: done
> >> >
> >> > Starting crond: OK
> >> >
> >> >
> >> >
> >> > Poky (Yocto Project Reference Distro) 2.5
> >> > polycaptil-machine-am335x-evmsk /dev/ttyS0
> >> >
> >> >
> >> >
> >> > polycaptil-machine-am335x-evmsk login: D-BUS per-session daemon
> >> > address is:
> >> > unix:abstract=3D/tmp/dbus-07WuJSySeb,guid=3Da3e41f2692316c19766e9553=
5c54a7
> >> > 25
> >> >
> >> > Size 1024x768 not found in available modes
> >> >
> >> > Error: No calibratable devices found.
> >> >
> >> > matchbox: Cant find a keycode for keysym 269025056
> >> >
> >> > matchbox: ignoring key shortcut XF86Calendar=3D!$contacts
> >> >
> >> >
> >> >
> >> > matchbox: Cant find a keycode for keysym 2809
> >> >
> >> > matchbox: ignoring key shortcut telephone=3D!$dates
> >> >
> >> >
> >> >
> >> > matchbox: Cant find a keycode for keysym 269025050
> >> >
> >> > matchbox: ignoring key shortcut XF86Start=3D!matchbox-remote -deskto=
p
> >> >
> >> >
> >> >
> >> > dbus-daemon[358]: Activating service name=3D'org.a11y.atspi.Registry=
'
> >> > requested by ':1.0' (uid=3D0 pid=3D354 comm=3D"matchbox-terminal ")
> >> >
> >> > dbus-daemon[358]: Successfully activated service
> 'org.a11y.atspi.Registry'
> >> >
> >> > SpiRegistry daemon is running with well-known name -
> >> > org.a11y.atspi.Registry
> >> >
> >> > [   30.662697] random: nonblocking pool is initialized
> >> >
> >> >
> >> >
> >> > Poky (Yocto Project Reference Distro) 2.5
> >> > polycaptil-machine-am335x-evmsk /dev/ttyS0
> >> >
> >> >
> >> >
> >> > Thank=E2=80=99s to take time to read my message.
> >> >
> >> > N.Stanisavljevic
> >> >
> >> > --
> >> > _______________________________________________
> >> > yocto mailing list
> >> > yocto@yoctoproject.org
> >> > https://lists.yoctoproject.org/listinfo/yocto
> >>
>

--000000000000fe2a6805822bd6f0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello Nikola,<br></div><div><br></div><div>Two things=
, which immediately came to my mind:</div><div>[1 - Harder way] Either to c=
hange xorg-x11-server <span style=3D"color:rgb(255,0,0)"></span>in sumo to =
match at least xorg-x11-server <span style=3D"color:rgb(255,0,0)"><i><b>1.2=
0.3;</b></i></span></div><div><span style=3D"color:rgb(255,0,0)"><i><b>=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 </b></i><span style=3D"color:rgb(0,0,0)">(harde=
r way, since few people know exact dependencies among various GFX packages,=
 and what</span></span></div><div><span style=3D"color:rgb(255,0,0)"><span =
style=3D"color:rgb(0,0,0)">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 and how man=
y packages need to be also changed to make xorg-x11-server 1.20.3 to work)<=
/span><i><b><br></b></i></span></div><div><span style=3D"color:rgb(255,0,0)=
"><span style=3D"color:rgb(0,0,0)">[2 - Easier Way] Either to migrate YOCTO=
 to Thud, where the correct xorg-x11-server <span style=3D"color:rgb(255,0,=
0)"></span>package 1.20.3</span></span></div><div><span style=3D"color:rgb(=
255,0,0)"><span style=3D"color:rgb(0,0,0)">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 i=
s already fixed and set!</span></span></div><div><span style=3D"color:rgb(2=
55,0,0)"><span style=3D"color:rgb(0,0,0)">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 <s=
pan style=3D"color:rgb(255,0,0)"><span style=3D"color:rgb(0,0,0)">(easier w=
ay, since exact dependencies among various GFX packages are already set for=
 1.20.3)</span><i><b><br></b></i></span></span></span></div><div><span styl=
e=3D"color:rgb(255,0,0)"><span style=3D"color:rgb(0,0,0)"><br></span></span=
></div><div><span style=3D"color:rgb(255,0,0)"><span style=3D"color:rgb(0,0=
,0)">Best Regards,</span></span></div><div><span style=3D"color:rgb(255,0,0=
)"><span style=3D"color:rgb(0,0,0)">Zoran</span></span></div><div><span sty=
le=3D"color:rgb(255,0,0)"><span style=3D"color:rgb(0,0,0)">_______=C2=A0 </=
span><i><b><span style=3D"color:rgb(255,0,0)"><br></span></b></i></span></d=
iv></div><br><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail=
_attr">On Mon, Feb 18, 2019 at 2:48 PM Stanisavljevic &lt;<a href=3D"mailto=
:n.stanisavljevic@polycaptil.fr">n.stanisavljevic@polycaptil.fr</a>&gt; wro=
te:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px =
0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div lang=3D=
"FR"><div class=3D"gmail-m_3069207977298945462WordSection1"><p class=3D"Mso=
Normal"><span lang=3D"EN-US">Thank you Zoran for trying to help me.<br>I tr=
ied to resolve the problem, but I didn=E2=80=99t succeed yet, I think I wil=
l to continue, and If after some time I find nothing, I=E2=80=99m going to =
migrate to the thud version.<u></u><u></u></span></p><p class=3D"MsoNormal"=
><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p><p class=3D"MsoNormal"=
><span lang=3D"EN-US">I will maybe try to use Bugzilla<u></u><u></u></span>=
</p><p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span>=
</p><p class=3D"MsoNormal"><span lang=3D"EN-US">Nikola<u></u><u></u></span>=
</p><p class=3D"MsoNormal"><b><span lang=3D"EN-US">De=C2=A0:</span></b><spa=
n lang=3D"EN-US"> Zoran Stojsavljevic &lt;<a href=3D"mailto:zoran.stojsavlj=
evic@gmail.com" target=3D"_blank">zoran.stojsavljevic@gmail.com</a>&gt; <br=
><b>Envoy=C3=A9=C2=A0:</b> mardi 5 f=C3=A9vrier 2019 19:28<br><b>=C3=80=C2=
=A0:</b> Stanisavljevic &lt;<a href=3D"mailto:n.stanisavljevic@polycaptil.f=
r" target=3D"_blank">n.stanisavljevic@polycaptil.fr</a>&gt;<br><b>Cc=C2=A0:=
</b> Yocto Project &lt;<a href=3D"mailto:yocto@yoctoproject.org" target=3D"=
_blank">yocto@yoctoproject.org</a>&gt;; <a href=3D"mailto:marc.ferland@gmai=
l.com" target=3D"_blank">marc.ferland@gmail.com</a><br><b>Objet=C2=A0:</b> =
Re: [yocto] yocto touchscreen<u></u><u></u></span></p><p class=3D"MsoNormal=
"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p><div><p class=3D"MsoN=
ormal" style=3D"margin-bottom:12pt">Hello Nikola,<br><br>Let us try to cut =
to the chase!<br><br>After reading what Marc Ferland says/writes, and looki=
ng into the following:<br><a href=3D"https://bugzilla.redhat.com/show_bug.c=
gi?id=3D1650634" target=3D"_blank">https://bugzilla.redhat.com/show_bug.cgi=
?id=3D1650634</a><u></u><u></u></p><div><p class=3D"MsoNormal">I have spott=
ed the following:<u></u><u></u></p></div><div><p class=3D"MsoNormal"><span =
class=3D"gmail-m_3069207977298945462gmail-fn"><b><i><u>Pat Riehecky</u></i>=
</b></span><span class=3D"gmail-m_3069207977298945462gmail-vcard"><b><i><u>=
 </u></i></b></span><span class=3D"gmail-m_3069207977298945462gmail-bzcomme=
nttime"><b><i><u>2018-11-20 14:28:22 UTC</u> </i></b></span><u></u><u></u><=
/p></div><p class=3D"MsoNormal" style=3D"margin-bottom:12pt"><i><u>t<b>he b=
ug remains with the elrepo kernels:<br>kernel-ml-4.19.2-1.el7.elrepo.x86_64=
<br>kernel-lt-4.4.163-1.el7.elrepo.x86_64</b></u></i><u></u><u></u></p><div=
><p class=3D"MsoNormal">I never had this problem since I do not use Xorg (G=
FX), rather I only<u></u><u></u></p></div><div><p class=3D"MsoNormal">use s=
erial console from VBox VM from my BBB (pass-through).<u></u><u></u></p></d=
iv><p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p><div><p class=3D"MsoNorma=
l">Thus, my suggestion for you, to skip the whole mess is to rebuild your<u=
></u><u></u></p></div><div><p class=3D"MsoNormal">distro <b><i><u><span sty=
le=3D"color:red">in the light of YOCTO Project 2.6.1 (thud 20.0.0.1).</span=
></u></i></b><u></u><u></u></p></div><p class=3D"MsoNormal"><u></u>=C2=A0<u=
></u></p><div><p class=3D"MsoNormal">My best guess (then you&#39;ll inherit=
 YOCTO kernel 4.20.x with fixed Xorg - X11).<u></u><u></u></p></div><div><p=
 class=3D"MsoNormal"><u></u>=C2=A0<u></u></p></div><div><p class=3D"MsoNorm=
al">I am using Fedora 29 on my laptop. Also from the bugzilla:<u></u><u></u=
></p></div><div><div><p class=3D"MsoNormal"><span class=3D"gmail-m_30692079=
77298945462gmail-fn"><b><i><u>Pat Riehecky</u></i></b></span><span class=3D=
"gmail-m_3069207977298945462gmail-vcard"><b><i><u> </u></i></b></span><span=
 class=3D"gmail-m_3069207977298945462gmail-bzcommenttime"><b><i><u>2018-11-=
20 15:46:11 UTC </u></i></b></span><u></u><u></u></p></div><p class=3D"MsoN=
ormal"><b><i><u><span style=3D"font-family:&quot;Arial&quot;,sans-serif">Bu=
g resolved by rebuilding xorg-x11-server-1.20.3-1.fc29 [1] for 7.6.</span><=
/u></i></b><u></u><u></u></p></div><div><p class=3D"MsoNormal"><b><i><u><sp=
an style=3D"font-family:&quot;Arial&quot;,sans-serif">With this in mind it =
appears to be an Xorg server bug rather than fbdev.</span></u></i></b><u></=
u><u></u></p></div><p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p><div><p c=
lass=3D"MsoNormal">From my HP EliteBook 840 G1 Fedora 29, Xorg.0.log - Febr=
uary 5th, 2019.,<u></u><u></u></p></div><div><p class=3D"MsoNormal">I have =
the following:<u></u><u></u></p></div><p class=3D"MsoNormal"><u></u>=C2=A0<=
u></u></p><div><p class=3D"MsoNormal">[ =C2=A0 =C2=A026.955] Kernel command=
 line: BOOT_IMAGE=3D/<b><i><u><span style=3D"color:red">vmlinuz-4.20.6-200.=
fc29.x86_64</span></u></i></b><u></u><u></u></p></div><div><p class=3D"MsoN=
ormal">root=3D/dev/mapper/fedora-root ro <a href=3D"http://rd.lvm.lv" targe=
t=3D"_blank">rd.lvm.lv</a>=3Dfedora/root <a href=3D"http://rd.lvm.lv" targe=
t=3D"_blank">rd.lvm.lv</a>=3Dfedora/swap rhgb<u></u><u></u></p></div><div><=
p class=3D"MsoNormal">quiet LANG=3Den_US.UTF-8<u></u><u></u></p></div><p cl=
ass=3D"MsoNormal">[ =C2=A0 =C2=A026.955] Build Date: 11 January 2019 =C2=A0=
12:47:38PM<br><b><i><u><span style=3D"color:red">[ =C2=A0=C2=A0 26.955] Bui=
ld ID: xorg-x11-server 1.20.3-3.fc29</span></u></i></b><br>[ =C2=A0 =C2=A02=
6.955] Current version of pixman: 0.34.0<br><br>Best Regards,<br>Zoran<br>_=
______<br><br>On Tue, Feb 5, 2019 at 2:49 PM Zoran Stojsavljevic &lt;<a hre=
f=3D"mailto:zoran.stojsavljevic@gmail.com" target=3D"_blank">zoran.stojsavl=
jevic@gmail.com</a>&gt; wrote:<br>&gt;<br>&gt; Hello Nikola,<br>&gt;<br>&gt=
; &gt; I created a kernel recipe with a bbappend file, and, I added<br>&gt;=
 &gt; the same defconfig that I used for krogoth version.<br>&gt; &gt; The =
bbappend for kernel recipe concern meta-ti layer.<br>&gt; &gt; I didn&#39;t=
 edited defconfig file in other layers which contain a<br>&gt; &gt; kernel =
recipe.<br>&gt;<br>&gt; It could be some problem that Sumo does not take yo=
ur bbappend file into the<br>&gt; consideration as placed.<br>&gt;<br>&gt; =
It could be something else, as well.<br>&gt;<br>&gt; I have the same issue =
with my defconfig file for my Thud Beagle Bone Black (BBB)<br>&gt; standard=
 board. Every time I recompile my YOCTO for it for different releases, I ne=
ed<br>&gt; to import my specific defconfig. But I use complete different re=
pos for my standard<br>&gt; Beagle Bone Black than YOCTO BBB Poky reference=
 distro.<br>&gt;<br>&gt; Here is what I use in Thud (my bblayers.conf):<br>=
&gt;<br>&gt; POKY_BBLAYERS_CONF_VERSION =3D &quot;2&quot;<br>&gt; BBPATH =
=3D &quot;${TOPDIR}&quot;<br>&gt; BBFILES ?=3D &quot;&quot;<br>&gt;<br>&gt;=
 BBLAYERS ?=3D &quot; \<br>&gt; =C2=A0 =C2=A0 /home/user/projects2/beaglebo=
ne-black/yocto-thud/meta-bbb \<br>&gt; =C2=A0 =C2=A0 /home/user/projects2/b=
eaglebone-black/yocto-thud/meta-openembedded/meta-networking \<br>&gt; =C2=
=A0 =C2=A0 /home/user/projects2/beaglebone-black/yocto-thud/meta-openembedd=
ed/meta-oe \<br>&gt; =C2=A0 =C2=A0 /home/user/projects2/beaglebone-black/yo=
cto-thud/meta-openembedded/meta-python \<br>&gt; =C2=A0 =C2=A0 /home/user/p=
rojects2/beaglebone-black/yocto-thud/meta-qt5 \<br>&gt; =C2=A0 =C2=A0 /home=
/user/projects2/beaglebone-black/yocto-thud/poky/meta \<br>&gt; =C2=A0 =C2=
=A0 /home/user/projects2/beaglebone-black/yocto-thud/poky/meta-poky&quot;<b=
r>&gt;<br>&gt; There, I replace defconfig in this layer: /home/user/project=
s2/beaglebone-black/yocto-thud/meta-bbb<br>&gt; with my own defconfig.<br>&=
gt;<br>&gt; In the directory:<br>&gt; /home/user/projects2/beaglebone-black=
/yocto-thud/meta-bbb/recipes-kernel/linux/linux-stable-4.19/beaglebone<br>&=
gt;<br>&gt; If you use only Poky repository, then you need to read the foll=
owing paragraph (how to use<br>&gt; your defconfig with Poky):<br>&gt;<br>&=
gt; [2.3.3. Changing the Configuration] YOCTO Project Linux Development Man=
ual<br>&gt; <a href=3D"https://www.yoctoproject.org/docs/2.5/kernel-dev/ker=
nel-dev.html#using-an-in-tree-defconfig-file" target=3D"_blank">https://www=
.yoctoproject.org/docs/2.5/kernel-dev/kernel-dev.html#using-an-in-tree-defc=
onfig-file</a><br>&gt; 2.3.3. Changing the Configuration<br>&gt;<br>&gt; I =
hope this will help. Please, keep us posted!<br>&gt;<br>&gt; Zoran<br>&gt; =
_______<br>&gt;<br>&gt;<br>&gt; On Tue, Feb 5, 2019 at 10:54 AM Stanisavlje=
vic &lt;<a href=3D"mailto:n.stanisavljevic@polycaptil.fr" target=3D"_blank"=
>n.stanisavljevic@polycaptil.fr</a>&gt; wrote:<br>&gt;&gt;<br>&gt;&gt; Hy Z=
oran<br>&gt;&gt;<br>&gt;&gt; Thank&#39;s to take time to answer<br>&gt;&gt;=
<br>&gt;&gt; I created a kernel recipe with a bbappend file, and, I added t=
he same defconfig that I used for krogoth version.<br>&gt;&gt; The bbappend=
 for kernel recipe concern meta-ti layer.<br>&gt;&gt; I didn&#39;t edited d=
efconfig file in other layers which contain a kernel recipe.<br>&gt;&gt;<br=
>&gt;&gt; I think it&#39;s a problem which concern the screen resolution, s=
creen frequency and adc touchscreen.<br>&gt;&gt; Something is different bet=
ween the krogoth and sumo version, but I didn&#39;t find what is changed...=
<br>&gt;&gt;<br>&gt;&gt; Xrandr show that problem is maybe around the scree=
n resolution.<br>&gt;&gt; It&#39;s show the next message : &quot;Size 1024x=
768 not found in available modes&quot;<br>&gt;&gt; Maybe it was changed bet=
ween krogoth and sumo version...but I don&#39;t know where it is indicated =
if sources files...<br>&gt;&gt;<br>&gt;&gt; What do you think ? problem can=
 be around the screen resolution, screen frequency and adc touchscreen ?<br=
>&gt;&gt;<br>&gt;&gt; Nikola<br>&gt;&gt;<br>&gt;&gt; -----Message d&#39;ori=
gine-----<br>&gt;&gt; De : Zoran Stojsavljevic &lt;<a href=3D"mailto:zoran.=
stojsavljevic@gmail.com" target=3D"_blank">zoran.stojsavljevic@gmail.com</a=
>&gt;<br>&gt;&gt; Envoy=C3=A9 : lundi 4 f=C3=A9vrier 2019 17:08<br>&gt;&gt;=
 =C3=80 : Stanisavljevic &lt;<a href=3D"mailto:n.stanisavljevic@polycaptil.=
fr" target=3D"_blank">n.stanisavljevic@polycaptil.fr</a>&gt;<br>&gt;&gt; Cc=
 : Yocto Project &lt;<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_b=
lank">yocto@yoctoproject.org</a>&gt;<br>&gt;&gt; Objet : Re: [yocto] yocto =
touchscreen<br>&gt;&gt;<br>&gt;&gt; &gt; I built a first version of this os=
 with version krogoth and it works fine.<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; =
Now I build a second version of this os with version sumo and the<br>&gt;&g=
t; &gt; touch screen works fine during boot process but when kernel is load=
ed,<br>&gt;&gt; &gt; touchscreen freeze / lock and impossible to use it.<br=
>&gt;&gt;<br>&gt;&gt; Did you compare Krogoth kernel defconfig with Sumo ke=
rnel defconfig?<br>&gt;&gt;<br>&gt;&gt; May there are some mismatches in dr=
ivers&#39; setup between these two?<br>&gt;&gt;<br>&gt;&gt; Zoran<br>&gt;&g=
t; _______<br>&gt;&gt;<br>&gt;&gt; On Mon, Feb 4, 2019 at 12:24 PM Stanisav=
ljevic &lt;<a href=3D"mailto:n.stanisavljevic@polycaptil.fr" target=3D"_bla=
nk">n.stanisavljevic@polycaptil.fr</a>&gt; wrote:<br>&gt;&gt; &gt;<br>&gt;&=
gt; &gt; Hy Team,<br>&gt;&gt; &gt;<br>&gt;&gt; &gt;<br>&gt;&gt; &gt;<br>&gt=
;&gt; &gt; I have a problem<br>&gt;&gt; &gt;<br>&gt;&gt; &gt;<br>&gt;&gt; &=
gt;<br>&gt;&gt; &gt; I buid a custom os for AM335x processor and I used yoc=
to to do it.<br>&gt;&gt; &gt;<br>&gt;&gt; &gt;<br>&gt;&gt; &gt;<br>&gt;&gt;=
 &gt; I build a first version of this os with version krogoth and it work f=
ine.<br>&gt;&gt; &gt;<br>&gt;&gt; &gt;<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; No=
w I build a second version of this os with version sumo and the touchscreen=
 work fine during boot process but when kernel is loaded, touchscreen freez=
e / lock and impossible to use it.<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; The te=
rminal is printed on the touchscreen but the screen is locked, impossible t=
o write a command or to move the mouse to select, =E2=80=A6.<br>&gt;&gt; &g=
t;<br>&gt;&gt; &gt;<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; Here is the log of bo=
ot to the user session (log got with serial communication between PC and bo=
ard) :<br>&gt;&gt; &gt;<br>&gt;&gt; &gt;<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; =
U-Boot SPL 2017.05-00001-g041a398 (May 02 2018 - 18:36:57)<br>&gt;&gt; &gt;=
<br>&gt;&gt; &gt; Trying to boot from MMC1<br>&gt;&gt; &gt;<br>&gt;&gt; &gt=
; reading uboot.env<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; reading u-boot.img<br=
>&gt;&gt; &gt;<br>&gt;&gt; &gt; reading u-boot.img<br>&gt;&gt; &gt;<br>&gt;=
&gt; &gt; reading u-boot.img<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; reading u-bo=
ot.img<br>&gt;&gt; &gt;<br>&gt;&gt; &gt;<br>&gt;&gt; &gt;<br>&gt;&gt; &gt;<=
br>&gt;&gt; &gt;<br>&gt;&gt; &gt; U-Boot 2017.05-00001-g041a398 (May 02 201=
8 - 18:36:57 +0200)<br>&gt;&gt; &gt;<br>&gt;&gt; &gt;<br>&gt;&gt; &gt;<br>&=
gt;&gt; &gt; CPU =C2=A0: AM335X-GP rev 2.1<br>&gt;&gt; &gt;<br>&gt;&gt; &gt=
; Model: TI AM335x EVM-SK<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; DRAM: =C2=A0256=
 MiB<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; NAND: =C2=A00 MiB<br>&gt;&gt; &gt;<b=
r>&gt;&gt; &gt; MMC: =C2=A0 OMAP SD/MMC: 0, OMAP SD/MMC: 1<br>&gt;&gt; &gt;=
<br>&gt;&gt; &gt; reading uboot.env<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; ERROR=
: No USB device found<br>&gt;&gt; &gt;<br>&gt;&gt; &gt;<br>&gt;&gt; &gt;<br=
>&gt;&gt; &gt; at drivers/usb/gadget/ether.c:2709/usb_ether_init()<br>&gt;&=
gt; &gt;<br>&gt;&gt; &gt; Net: =C2=A0 CACHE: Misaligned operation at range =
[8df323c0, 8df32464]<br>&gt;&gt; &gt;<br>&gt;&gt; &gt;<br>&gt;&gt; &gt;<br>=
&gt;&gt; &gt; Warning: ethernet@4a100000 using MAC address from ROM<br>&gt;=
&gt; &gt;<br>&gt;&gt; &gt; eth0: ethernet@4a100000<br>&gt;&gt; &gt;<br>&gt;=
&gt; &gt; Hit any key to stop autoboot: =C2=A00<br>&gt;&gt; &gt;<br>&gt;&gt=
; &gt; reading zImage<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; 3412752 bytes read =
in 251 ms (13 MiB/s)<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; reading dtb<br>&gt;&=
gt; &gt;<br>&gt;&gt; &gt; 39733 bytes read in 12 ms (3.2 MiB/s)<br>&gt;&gt;=
 &gt;<br>&gt;&gt; &gt; ## Flattened Device Tree blob at 82000000<br>&gt;&gt=
; &gt;<br>&gt;&gt; &gt; =C2=A0 =C2=A0Booting using the fdt blob at 0x820000=
00<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; =C2=A0 =C2=A0Loading Device Tree to 8d=
f19000, end 8df25b34 ... OK<br>&gt;&gt; &gt;<br>&gt;&gt; &gt;<br>&gt;&gt; &=
gt;<br>&gt;&gt; &gt; Starting kernel ...<br>&gt;&gt; &gt;<br>&gt;&gt; &gt;<=
br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A00.000000] Booting Linux on=
 physical CPU 0x0<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A00.000000=
] Initializing cgroup subsys cpu<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0=
 =C2=A00.000000] Initializing cgroup subsys cpuacct<br>&gt;&gt; &gt;<br>&gt=
;&gt; &gt; [ =C2=A0 =C2=A00.000000] Linux version 4.4.19-ge581bb1cac (polyc=
aptil@polycaptil-HP-Notebook) (gcc version 5.3.0 (GCC) ) #1 PREEMPT Thu May=
 24 11:42:17 CEST 2018<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A00.0=
00000] CPU: ARMv7 Processor [413fc082] revision 2 (ARMv7), cr=3D10c5387d<br=
>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A00.000000] CPU: PIPT / VIPT n=
onaliasing data cache, VIPT aliasing instruction cache<br>&gt;&gt; &gt;<br>=
&gt;&gt; &gt; [ =C2=A0 =C2=A00.000000] Machine model: TI AM335x EVM-SK<br>&=
gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A00.000000] cma: Reserved 48 MiB=
 at 0x8a800000<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A00.000000] M=
emory policy: Data cache writeback<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=
=A0 =C2=A00.000000] CPU: All CPU(s) started in SVC mode.<br>&gt;&gt; &gt;<b=
r>&gt;&gt; &gt; [ =C2=A0 =C2=A00.000000] AM335X ES2.1 (sgx neon )<br>&gt;&g=
t; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A00.000000] Built 1 zonelists in Zone=
 order, mobility grouping on.=C2=A0 Total pages: 64960<br>&gt;&gt; &gt;<br>=
&gt;&gt; &gt; [ =C2=A0 =C2=A00.000000] Kernel command line: console=3DttyO0=
,115200 root=3D/dev/mmcblk0p3 rw<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0=
 =C2=A00.000000] PID hash table entries: 1024 (order: 0, 4096 bytes)<br>&gt=
;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A00.000000] Dentry cache hash tabl=
e entries: 32768 (order: 5, 131072 bytes)<br>&gt;&gt; &gt;<br>&gt;&gt; &gt;=
 [ =C2=A0 =C2=A00.000000] Inode-cache hash table entries: 16384 (order: 4, =
65536 bytes)<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A00.000000] Mem=
ory: 200444K/262144K available (6495K kernel code, 313K rwdata, 2368K rodat=
a, 260K init, 265K bss, 12548K reserved, 49152K cma-reserved, 0K highmem)<b=
r>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A00.000000] Virtual kernel me=
mory layout:<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A00.000000] =C2=
=A0 =C2=A0 vector =C2=A0: 0xffff0000 - 0xffff1000 =C2=A0 ( =C2=A0 4 kB)<br>=
&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A00.000000] =C2=A0 =C2=A0 fixma=
p =C2=A0: 0xffc00000 - 0xfff00000 =C2=A0 (3072 kB)<br>&gt;&gt; &gt;<br>&gt;=
&gt; &gt; [ =C2=A0 =C2=A00.000000] =C2=A0 =C2=A0 vmalloc : 0xd0800000 - 0xf=
f800000 =C2=A0 ( 752 MB)<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A00=
.000000] =C2=A0 =C2=A0 lowmem =C2=A0: 0xc0000000 - 0xd0000000 =C2=A0 ( 256 =
MB)<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A00.000000] =C2=A0 =C2=
=A0 pkmap =C2=A0 : 0xbfe00000 - 0xc0000000 =C2=A0 ( =C2=A0 2 MB)<br>&gt;&gt=
; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A00.000000] =C2=A0 =C2=A0 modules : 0x=
bf000000 - 0xbfe00000 =C2=A0 ( =C2=A014 MB)<br>&gt;&gt; &gt;<br>&gt;&gt; &g=
t; [ =C2=A0 =C2=A00.000000] =C2=A0 =C2=A0 =C2=A0 .text : 0xc0008000 - 0xc08=
b0034 =C2=A0 (8865 kB)<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A00.0=
00000] =C2=A0 =C2=A0 =C2=A0 .init : 0xc08b1000 - 0xc08f2000 =C2=A0 ( 260 kB=
)<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A00.000000] =C2=A0 =C2=A0 =
=C2=A0 .data : 0xc08f2000 - 0xc09407f0 =C2=A0 ( 314 kB)<br>&gt;&gt; &gt;<br=
>&gt;&gt; &gt; [ =C2=A0 =C2=A00.000000] =C2=A0 =C2=A0 =C2=A0 =C2=A0.bss : 0=
xc09407f0 - 0xc0982d58 =C2=A0 ( 266 kB)<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [=
 =C2=A0 =C2=A00.000000] SLUB: HWalign=3D64, Order=3D0-3, MinObjects=3D0, CP=
Us=3D1, Nodes=3D1<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A00.000000=
] Preemptible hierarchical RCU implementation.<br>&gt;&gt; &gt;<br>&gt;&gt;=
 &gt; [ =C2=A0 =C2=A00.000000] =C2=A0Build-time adjustment of leaf fanout t=
o 32.<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A00.000000] NR_IRQS:16=
 nr_irqs:16 16<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A00.000000] I=
RQ: Found an INTC at 0xfa200000 (revision 5.0) with 128 interrupts<br>&gt;&=
gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A00.000000] OMAP clockevent source: =
timer2 at 24000000 Hz<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A00.00=
0015] sched_clock: 32 bits at 24MHz, resolution 41ns, wraps every 894784849=
71ns<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A00.000036] clocksource=
: timer1: mask: 0xffffffff max_cycles: 0xffffffff, max_idle_ns: 79635851949=
 ns<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A00.000047] OMAP clockso=
urce: timer1 at 24000000 Hz<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=
=A00.000222] clocksource_probe: no matching clocksources found<br>&gt;&gt; =
&gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A00.000415] Console: colour dummy device=
 80x30<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A00.000442] WARNING: =
Your &#39;console=3DttyO0&#39; has been replaced by &#39;ttyS0&#39;<br>&gt;=
&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A00.000448] This ensures that you s=
till see kernel messages. Please<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0=
 =C2=A00.000454] update your kernel commandline.<br>&gt;&gt; &gt;<br>&gt;&g=
t; &gt; [ =C2=A0 =C2=A00.000473] Calibrating delay loop... 795.44 BogoMIPS =
(lpj=3D3977216)<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A00.089064] =
pid_max: default: 32768 minimum: 301<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =
=C2=A0 =C2=A00.089193] Mount-cache hash table entries: 1024 (order: 0, 4096=
 bytes)<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A00.089205] Mountpoi=
nt-cache hash table entries: 1024 (order: 0, 4096 bytes)<br>&gt;&gt; &gt;<b=
r>&gt;&gt; &gt; [ =C2=A0 =C2=A00.089932] Initializing cgroup subsys io<br>&=
gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A00.089964] Initializing cgroup =
subsys memory<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A00.090005] In=
itializing cgroup subsys devices<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0=
 =C2=A00.090021] Initializing cgroup subsys freezer<br>&gt;&gt; &gt;<br>&gt=
;&gt; &gt; [ =C2=A0 =C2=A00.090036] Initializing cgroup subsys perf_event<b=
r>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A00.090048] Initializing cgro=
up subsys pids<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A00.090078] C=
PU: Testing write buffer coherency: ok<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =
=C2=A0 =C2=A00.090499] Setting up static identity map for 0x80008200 - 0x80=
008258<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A00.092680] devtmpfs:=
 initialized<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A00.105440] VFP=
 support v0.3: implementor 41 architecture 3 part 30 variant c rev 3<br>&gt=
;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A00.120529] omap_hwmod: debugss: _=
wait_target_disable failed<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=
=A00.175584] clocksource: jiffies: mask: 0xffffffff max_cycles: 0xffffffff,=
 max_idle_ns: 19112604462750000 ns<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=
=A0 =C2=A00.179852] pinctrl core: initialized pinctrl subsystem<br>&gt;&gt;=
 &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A00.181216] NET: Registered protocol fa=
mily 16<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A00.183420] DMA: pre=
allocated 256 KiB pool for atomic coherent allocations<br>&gt;&gt; &gt;<br>=
&gt;&gt; &gt; [ =C2=A0 =C2=A00.209061] cpuidle: using governor ladder<br>&g=
t;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A00.239048] cpuidle: using govern=
or menu<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A00.243661] OMAP GPI=
O hardware version 0.1<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A00.2=
54360] hw-breakpoint: debug architecture 0x4 unsupported.<br>&gt;&gt; &gt;<=
br>&gt;&gt; &gt; [ =C2=A0 =C2=A00.297629] edma 49000000.edma: TI EDMA DMA e=
ngine driver<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A00.298606] reg=
-fixed-voltage fixedregulator@2: could not find pctldev for node /ocp/l4_wk=
up@44c00000/scm@210000/pinmux@800/pinmux_wl12xx_gpio, deferring probe<br>&g=
t;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A00.302364] omap_i2c 44e0b000.i2c=
: could not find pctldev for node /ocp/l4_wkup@44c00000/scm@210000/pinmux@8=
00/pinmux_i2c0_pins, deferring probe<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =
=C2=A0 =C2=A00.302525] media: Linux media interface: v0.10<br>&gt;&gt; &gt;=
<br>&gt;&gt; &gt; [ =C2=A0 =C2=A00.302588] Linux video capture interface: v=
2.00<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A00.302638] pps_core: L=
inuxPPS API ver. 1 registered<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =
=C2=A00.302646] pps_core: Software ver. 5.3.6 - Copyright 2005-2007 Rodolfo=
 Giometti &lt;<a href=3D"mailto:giometti@linux.it" target=3D"_blank">giomet=
ti@linux.it</a>&gt;<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A00.3026=
76] PTP clock support registered<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0=
 =C2=A00.302741] EDAC MC: Ver: 3.0.0<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =
=C2=A0 =C2=A00.303966] omap-mailbox 480c8000.mailbox: omap mailbox rev 0x40=
0<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A00.304332] Advanced Linux=
 Sound Architecture Driver Initialized.<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [=
 =C2=A0 =C2=A00.305512] clocksource: Switched to clocksource timer1<br>&gt;=
&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A00.316775] NET: Registered protoco=
l family 2<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A00.317599] TCP e=
stablished hash table entries: 2048 (order: 1, 8192 bytes)<br>&gt;&gt; &gt;=
<br>&gt;&gt; &gt; [ =C2=A0 =C2=A00.317636] TCP bind hash table entries: 204=
8 (order: 1, 8192 bytes)<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A00=
.317663] TCP: Hash tables configured (established 2048 bind 2048)<br>&gt;&g=
t; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A00.317748] UDP hash table entries: 2=
56 (order: 0, 4096 bytes)<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A0=
0.317767] UDP-Lite hash table entries: 256 (order: 0, 4096 bytes)<br>&gt;&g=
t; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A00.317925] NET: Registered protocol =
family 1<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A00.318352] RPC: Re=
gistered named UNIX socket transport module.<br>&gt;&gt; &gt;<br>&gt;&gt; &=
gt; [ =C2=A0 =C2=A00.318366] RPC: Registered udp transport module.<br>&gt;&=
gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A00.318372] RPC: Registered tcp tran=
sport module.<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A00.318379] RP=
C: Registered tcp NFSv4.1 backchannel transport module.<br>&gt;&gt; &gt;<br=
>&gt;&gt; &gt; [ =C2=A0 =C2=A00.319330] hw perfevents: enabled with armv7_c=
ortex_a8 PMU driver, 5 counters available<br>&gt;&gt; &gt;<br>&gt;&gt; &gt;=
 [ =C2=A0 =C2=A00.321392] futex hash table entries: 256 (order: -1, 3072 by=
tes)<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A00.329780] squashfs: v=
ersion 4.0 (2009/01/31) Phillip Lougher<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [=
 =C2=A0 =C2=A00.330717] NFS: Registering the id_resolver key type<br>&gt;&g=
t; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A00.330798] Key type id_resolver regi=
stered<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A00.330807] Key type =
id_legacy registered<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A00.330=
886] ntfs: driver 2.1.32 [Flags: R/O].<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =
=C2=A0 =C2=A00.334673] Block layer SCSI generic (bsg) driver version 0.4 lo=
aded (major 248)<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A00.334706]=
 io scheduler noop registered<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =
=C2=A00.334719] io scheduler deadline registered<br>&gt;&gt; &gt;<br>&gt;&g=
t; &gt; [ =C2=A0 =C2=A00.334877] io scheduler cfq registered (default)<br>&=
gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A00.336555] pinctrl-single 44e10=
800.pinmux: 142 pins at pa f9e10800 size 568<br>&gt;&gt; &gt;<br>&gt;&gt; &=
gt; [ =C2=A0 =C2=A00.339415] backlight supply power not found, using dummy =
regulator<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A00.402480] Serial=
: 8250/16550 driver, 10 ports, IRQ sharing disabled<br>&gt;&gt; &gt;<br>&gt=
;&gt; &gt; [ =C2=A0 =C2=A00.406962] 44e09000.serial: ttyS0 at MMIO 0x44e090=
00 (irq =3D 158, base_baud =3D 3000000) is a 8250<br>&gt;&gt; &gt;<br>&gt;&=
gt; &gt; [ =C2=A0 =C2=A01.017357] console [ttyS0] enabled<br>&gt;&gt; &gt;<=
br>&gt;&gt; &gt; [ =C2=A0 =C2=A01.022206] 48022000.serial: ttyS1 at MMIO 0x=
48022000 (irq =3D 159, base_baud =3D 3000000) is a 8250<br>&gt;&gt; &gt;<br=
>&gt;&gt; &gt; [ =C2=A0 =C2=A01.032273] [drm] Initialized drm 1.1.0 2006081=
0<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A01.039564] [drm] Supports=
 vblank timestamp caching Rev 2 (21.10.2013).<br>&gt;&gt; &gt;<br>&gt;&gt; =
&gt; [ =C2=A0 =C2=A01.046349] [drm] No driver support for vblank timestamp =
query.<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A01.062121] Console: =
switching to colour frame buffer device 60x34<br>&gt;&gt; &gt;<br>&gt;&gt; =
&gt; [ =C2=A0 =C2=A01.070360] tilcdc 4830e000.lcdc: fb0: =C2=A0frame buffer=
 device<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A01.105531] [drm] In=
itialized tilcdc 1.0.0 20121205 on minor 0<br>&gt;&gt; &gt;<br>&gt;&gt; &gt=
; [ =C2=A0 =C2=A01.118644] loop: module loaded<br>&gt;&gt; &gt;<br>&gt;&gt;=
 &gt; [ =C2=A0 =C2=A01.124253] libphy: Fixed MDIO Bus: probed<br>&gt;&gt; &=
gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A01.185550] davinci_mdio 4a101000.mdio: d=
avinci mdio revision 1.6<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A01=
.191695] davinci_mdio 4a101000.mdio: detected phy mask fffffffe<br>&gt;&gt;=
 &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A01.198786] libphy: 4a101000.mdio: prob=
ed<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A01.202886] davinci_mdio =
4a101000.mdio: phy[0]: device 4a101000.mdio:00, driver SMSC LAN8710/LAN8720=
<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A01.212890] cpsw 4a100000.e=
thernet: Detected MACID =3D a0:f6:fd:4c:a6:ba<br>&gt;&gt; &gt;<br>&gt;&gt; =
&gt; [ =C2=A0 =C2=A01.220531] cpsw 4a100000.ethernet: cpsw: Detected MACID =
=3D c4:ed:ba:88:2a:92<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A01.22=
9382] mousedev: PS/2 mouse device common for all mice<br>&gt;&gt; &gt;<br>&=
gt;&gt; &gt; [ =C2=A0 =C2=A01.235845] i2c /dev entries driver<br>&gt;&gt; &=
gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A01.240508] cpuidle: enable-method proper=
ty &#39;ti,am3352&#39; found operations<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [=
 =C2=A0 =C2=A01.248197] omap_hsmmc 48060000.mmc: Got CD GPIO<br>&gt;&gt; &g=
t;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A01.275713] pinctrl-single 44e10800.pinmux=
: bad data for mux pinmux_mmc2_pins<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=
=A0 =C2=A01.282895] pinctrl-single 44e10800.pinmux: no pins entries for pin=
mux_mmc2_pins<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A01.317159] le=
dtrig-cpu: registered to indicate activity on CPUs<br>&gt;&gt; &gt;<br>&gt;=
&gt; &gt; [ =C2=A0 =C2=A01.326069] NET: Registered protocol family 10<br>&g=
t;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A01.332092] sit: IPv6 over IPv4 t=
unneling driver<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A01.337715] =
NET: Registered protocol family 17<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=
=A0 =C2=A01.342510] Key type dns_resolver registered<br>&gt;&gt; &gt;<br>&g=
t;&gt; &gt; [ =C2=A0 =C2=A01.347095] omap_voltage_late_init: Voltage driver=
 support not added<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A01.40714=
5] tps65910-rtc tps65910-rtc: rtc core: registered tps65910-rtc as rtc0<br>=
&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A01.415278] omap_i2c 44e0b000.i=
2c: bus 0 rev0.11 at 400 kHz<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=
=A01.421665] omap_hsmmc 48060000.mmc: Got CD GPIO<br>&gt;&gt; &gt;<br>&gt;&=
gt; &gt; [ =C2=A0 =C2=A01.426813] vmmc: supplied by vbat<br>&gt;&gt; &gt;<b=
r>&gt;&gt; &gt; [ =C2=A0 =C2=A01.466341] pinctrl-single 44e10800.pinmux: ba=
d data for mux pinmux_mmc2_pins<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =
=C2=A01.474737] pinctrl-single 44e10800.pinmux: no pins entries for pinmux_=
mmc2_pins<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A01.513247] mmc0: =
host does not support reading read-only switch, assuming write-enable<br>&g=
t;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A01.523414] mmc0: new high speed =
SDHC card at address 0001<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A0=
1.529635] mmcblk0: mmc0:0001 AS 3.72 GiB<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; =
[ =C2=A0 =C2=A01.535996] =C2=A0mmcblk0: p1 p2 p3<br>&gt;&gt; &gt;<br>&gt;&g=
t; &gt; [ =C2=A0 =C2=A01.595932] vdd_mpu: supplied by vbat<br>&gt;&gt; &gt;=
<br>&gt;&gt; &gt; [ =C2=A0 =C2=A01.602167] input: gpio_buttons@0 as /device=
s/platform/gpio_buttons@0/input/input0<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =
=C2=A0 =C2=A01.618291] tps65910-rtc tps65910-rtc: setting system clock to 2=
019-02-01 20:07:49 UTC (1549051669)<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=
=A0 =C2=A01.639394] lis3_reg: disabling<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [=
 =C2=A0 =C2=A01.655732] ALSA device list:<br>&gt;&gt; &gt;<br>&gt;&gt; &gt;=
 [ =C2=A0 =C2=A01.658720] =C2=A0 No soundcards found.<br>&gt;&gt; &gt;<br>&=
gt;&gt; &gt; [ =C2=A0 =C2=A01.678290] EXT4-fs (mmcblk0p3): couldn&#39;t mou=
nt as ext3 due to feature incompatibilities<br>&gt;&gt; &gt;<br>&gt;&gt; &g=
t; [ =C2=A0 =C2=A01.696920] EXT4-fs (mmcblk0p3): couldn&#39;t mount as ext2=
 due to feature incompatibilities<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=
=A0 =C2=A02.183999] EXT4-fs (mmcblk0p3): recovery complete<br>&gt;&gt; &gt;=
<br>&gt;&gt; &gt; [ =C2=A0 =C2=A02.196864] EXT4-fs (mmcblk0p3): mounted fil=
esystem with ordered data mode. Opts: (null)<br>&gt;&gt; &gt;<br>&gt;&gt; &=
gt; [ =C2=A0 =C2=A02.205084] VFS: Mounted root (ext4 filesystem) on device =
179:3.<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A02.225670] devtmpfs:=
 mounted<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A02.235781] Freeing=
 unused kernel memory: 260K (c08b1000 - c08f2000)<br>&gt;&gt; &gt;<br>&gt;&=
gt; &gt; [ =C2=A0 =C2=A02.242162] This architecture does not have kernel me=
mory protection.<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; INIT: version 2.88 booti=
ng<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; Starting udev<br>&gt;&gt; &gt;<br>&gt;=
&gt; &gt; [ =C2=A0 =C2=A03.090091] udevd[78]: starting version 3.2.5<br>&gt=
;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A03.106175] random: udevd: uniniti=
alized urandom read (16 bytes read, 26 bits of entropy available)<br>&gt;&g=
t; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A03.118667] random: udevd: uninitiali=
zed urandom read (16 bytes read, 26 bits of entropy available)<br>&gt;&gt; =
&gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A03.128014] random: udevd: uninitialized=
 urandom read (16 bytes read, 26 bits of entropy available)<br>&gt;&gt; &gt=
;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A03.137335] random: udevd: uninitialized ur=
andom read (16 bytes read, 26 bits of entropy available)<br>&gt;&gt; &gt;<b=
r>&gt;&gt; &gt; [ =C2=A0 =C2=A03.218433] udevd[79]: starting eudev-3.2.5<br=
>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A03.325886] random: udevd: uni=
nitialized urandom read (16 bytes read, 29 bits of entropy available)<br>&g=
t;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A03.346155] random: udevd: uninit=
ialized urandom read (16 bytes read, 29 bits of entropy available)<br>&gt;&=
gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A04.820708] EXT4-fs (mmcblk0p3): re-=
mounted. Opts: data=3Dordered<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =
=C2=A05.548283] random: dd: uninitialized urandom read (512 bytes read, 43 =
bits of entropy available)<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; INIT: Entering=
 runlevel: 5<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; Configuring network interfac=
es... [ =C2=A0 =C2=A05.820546] net eth0: initializing cpsw version 1.12 (0)=
<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A05.825987] net eth0: initi=
alized cpsw ale version 1.4<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=
=A05.831150] net eth0: ALE Table size 1024<br>&gt;&gt; &gt;<br>&gt;&gt; &gt=
; [ =C2=A0 =C2=A05.838581] net eth0: phy found : id is : 0x7c0f1<br>&gt;&gt=
; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A05.851838] IPv6: ADDRCONF(NETDEV_UP):=
 eth0: link is not ready<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A09=
.896392] cpsw 4a100000.ethernet eth0: Link is Up - 100Mbps/Full - flow cont=
rol rx/tx<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A09.904635] IPv6: =
ADDRCONF(NETDEV_CHANGE): eth0: link becomes ready<br>&gt;&gt; &gt;<br>&gt;&=
gt; &gt; chown: unrecognized option &#39;--reference=3D/etc/resolv.conf&#39=
;<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; BusyBox v1.27.2 (2018-11-05 21:16:09 UT=
C) multi-call binary.<br>&gt;&gt; &gt;<br>&gt;&gt; &gt;<br>&gt;&gt; &gt;<br=
>&gt;&gt; &gt; Usage: chown [-Rh]... USER[:[GRP]] FILE...<br>&gt;&gt; &gt;<=
br>&gt;&gt; &gt; chmod: unrecognized option &#39;--reference=3D/etc/resolv.=
conf&#39;<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; BusyBox v1.27.2 (2018-11-05 21:=
16:09 UTC) multi-call binary.<br>&gt;&gt; &gt;<br>&gt;&gt; &gt;<br>&gt;&gt;=
 &gt;<br>&gt;&gt; &gt; Usage: chmod [-R] MODE[,MODE]... FILE...<br>&gt;&gt;=
 &gt;<br>&gt;&gt; &gt; done.<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; Starting sys=
tem message bus: [ =C2=A0 14.887099] random: dbus-daemon: uninitialized ura=
ndom read (12 bytes read, 62 bits of entropy available)<br>&gt;&gt; &gt;<br=
>&gt;&gt; &gt; [ =C2=A0 14.912318] random: dbus-daemon: uninitialized urand=
om read (12 bytes read, 62 bits of entropy available)<br>&gt;&gt; &gt;<br>&=
gt;&gt; &gt; dbus.<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; Starting OpenBSD Secur=
e Shell server: sshd<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 15.393971] =
random: sshd: uninitialized urandom read (32 bytes read, 65 bits of entropy=
 available)<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; done.<br>&gt;&gt; &gt;<br>&gt=
;&gt; &gt; Starting Xserver<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; Starting DHCP=
 server:<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; .<br>&gt;&gt; &gt;<br>&gt;&gt; &=
gt; starting DNS forwarder and DHCP server: dnsmasq...<br>&gt;&gt; &gt;<br>=
&gt;&gt; &gt; X.Org X Server 1.19.6<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; Relea=
se Date: 2017-12-20<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; X Protocol Version 11=
, Revision 0<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; Build Operating System: Linu=
x 4.15.0-38-generic x86_64<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; Current Operat=
ing System: Linux polycaptil-machine-am335x-evmsk<br>&gt;&gt; &gt; 4.4.19-g=
e581bb1cac #1 PREEMPT Thu May 24 11:42:17 CEST 2018 armv7l<br>&gt;&gt; &gt;=
<br>&gt;&gt; &gt; Kernel command line: console=3DttyO0,115200 root=3D/dev/m=
mcblk0p3 rw<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; Build Date: 05 November 2018 =
=C2=A009:33:21PM<br>&gt;&gt; &gt;<br>&gt;&gt; &gt;<br>&gt;&gt; &gt;<br>&gt;=
&gt; &gt; Current version of pixman: 0.34.0<br>&gt;&gt; &gt;<br>&gt;&gt; &g=
t; =C2=A0 =C2=A0 =C2=A0 =C2=A0 Before reporting problems, check <a href=3D"=
http://wiki.x.org" target=3D"_blank">http://wiki.x.org</a><br>&gt;&gt; &gt;=
<br>&gt;&gt; &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 to make sure that you have th=
e latest version.<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; Markers: (--) probed, (=
**) from config file, (=3D=3D) default setting,<br>&gt;&gt; &gt;<br>&gt;&gt=
; &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 (++) from command line, (!!) notice, (II=
) informational,<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 (WW) warning, (EE) error, (NI) not implemented, (??) unknown.<br>&gt;&g=
t; &gt;<br>&gt;&gt; &gt; (=3D=3D) Log file: &quot;/var/log/Xorg.0.log&quot;=
, Time: Fri Feb =C2=A01 20:08:02 2019<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; (=
=3D=3D) Using config file: &quot;/etc/X11/xorg.conf&quot;<br>&gt;&gt; &gt;<=
br>&gt;&gt; &gt; (=3D=3D) Using system config directory &quot;/usr/share/X1=
1/xorg.conf.d&quot;<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; done.<br>&gt;&gt; &gt=
;<br>&gt;&gt; &gt; Starting HOSTAP Daemon: Configuration file: /etc/hostapd=
.conf<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; nl80211: &#39;nl80211&#39; generic =
netlink not found<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; Failed to initialize dr=
iver &#39;nl80211&#39;<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; wlan0: interface s=
tate UNINITIALIZED-&gt;DISABLED<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; wlan0: AP=
-DISABLED<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; hostapd_free_hapd_data: Interfa=
ce wlan0 wasn&#39;t started<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; Starting ntpd=
: done<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; Starting syslogd/klogd: done<br>&g=
t;&gt; &gt;<br>&gt;&gt; &gt; Starting crond: OK<br>&gt;&gt; &gt;<br>&gt;&gt=
; &gt;<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; Poky (Yocto Project Reference Dist=
ro) 2.5<br>&gt;&gt; &gt; polycaptil-machine-am335x-evmsk /dev/ttyS0<br>&gt;=
&gt; &gt;<br>&gt;&gt; &gt;<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; polycaptil-mac=
hine-am335x-evmsk login: D-BUS per-session daemon<br>&gt;&gt; &gt; address =
is:<br>&gt;&gt; &gt; unix:abstract=3D/tmp/dbus-07WuJSySeb,guid=3Da3e41f2692=
316c19766e95535c54a7<br>&gt;&gt; &gt; 25<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; =
Size 1024x768 not found in available modes<br>&gt;&gt; &gt;<br>&gt;&gt; &gt=
; Error: No calibratable devices found.<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; m=
atchbox: Cant find a keycode for keysym 269025056<br>&gt;&gt; &gt;<br>&gt;&=
gt; &gt; matchbox: ignoring key shortcut XF86Calendar=3D!$contacts<br>&gt;&=
gt; &gt;<br>&gt;&gt; &gt;<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; matchbox: Cant =
find a keycode for keysym 2809<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; matchbox: =
ignoring key shortcut telephone=3D!$dates<br>&gt;&gt; &gt;<br>&gt;&gt; &gt;=
<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; matchbox: Cant find a keycode for keysym=
 269025050<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; matchbox: ignoring key shortcu=
t XF86Start=3D!matchbox-remote -desktop<br>&gt;&gt; &gt;<br>&gt;&gt; &gt;<b=
r>&gt;&gt; &gt;<br>&gt;&gt; &gt; dbus-daemon[358]: Activating service name=
=3D&#39;org.a11y.atspi.Registry&#39;<br>&gt;&gt; &gt; requested by &#39;:1.=
0&#39; (uid=3D0 pid=3D354 comm=3D&quot;matchbox-terminal &quot;)<br>&gt;&gt=
; &gt;<br>&gt;&gt; &gt; dbus-daemon[358]: Successfully activated service &#=
39;org.a11y.atspi.Registry&#39;<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; SpiRegist=
ry daemon is running with well-known name -<br>&gt;&gt; &gt; org.a11y.atspi=
.Registry<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 30.662697] random: non=
blocking pool is initialized<br>&gt;&gt; &gt;<br>&gt;&gt; &gt;<br>&gt;&gt; =
&gt;<br>&gt;&gt; &gt; Poky (Yocto Project Reference Distro) 2.5<br>&gt;&gt;=
 &gt; polycaptil-machine-am335x-evmsk /dev/ttyS0<br>&gt;&gt; &gt;<br>&gt;&g=
t; &gt;<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; Thank=E2=80=99s to take time to r=
ead my message.<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; N.Stanisavljevic<br>&gt;&=
gt; &gt;<br>&gt;&gt; &gt; --<br>&gt;&gt; &gt; _____________________________=
__________________<br>&gt;&gt; &gt; yocto mailing list<br>&gt;&gt; &gt; <a =
href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproject=
.org</a><br>&gt;&gt; &gt; <a href=3D"https://lists.yoctoproject.org/listinf=
o/yocto" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a=
><br>&gt;&gt;<u></u><u></u></p></div></div></div></blockquote></div>

--000000000000fe2a6805822bd6f0--
