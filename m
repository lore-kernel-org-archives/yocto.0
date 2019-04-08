Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D5D5EE00C1B; Sun,  7 Apr 2019 23:07:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,FREEMAIL_REPLY,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.222.170 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (zoran.stojsavljevic[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  1.0 FREEMAIL_REPLY From and body contain different freemails
Received: from mail-qk1-f170.google.com (mail-qk1-f170.google.com
	[209.85.222.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 18B1AE00C1B
	for <yocto@yoctoproject.org>; Sun,  7 Apr 2019 23:07:37 -0700 (PDT)
Received: by mail-qk1-f170.google.com with SMTP id o129so7243882qke.8
	for <yocto@yoctoproject.org>; Sun, 07 Apr 2019 23:07:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=Ht5wq7lISlQuPvPQljfPk+FzTYhTpOh6c6/54ROBBvo=;
	b=Wen0QCFuvwyhD01sMm6G7RI4oVW+Q4NbtQcCpiQ7phGfFFcl5g94Ir9oK4K21+oDlx
	Kp23JcqGeIGTwerRpQKbD32rvqfwcJj/CphJx62HY2Kgc2vYUb278rTZp1y4ks0VSV5K
	zR1uGU/6abMAlgfQtslPR3FP0w4KhvEuiYGG1LPyd9z4P1MpQ987OwK6It+wHIuts8kz
	58e1a1duQdnW2CXX/KjyC1YmbJYdWE55i3qcDZYyBFtmLaIvDfbvAi/EDe8cIUouwT1l
	lePGsfW5elPtIwbzKkv1NvUAEVvvpgh1J/VW0Is0YqMv3Z6s/Yl6yd8AFbT9bpyWor0I
	xNcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=Ht5wq7lISlQuPvPQljfPk+FzTYhTpOh6c6/54ROBBvo=;
	b=j25FQB5bw8JgHTWbE9X492pSYwKVL3m/3hmJrwu9SRnYhGVAl92pUXRcAJQE9qkP24
	UX3xQVE+2u6t9P9dO1pEQ2Y8Nups7EfvbW+4ZL8/H7M3YkJ5F55Gl0sAmsV5GFFhAbU/
	6z7qnImDXJo7y7pJoDDGRdOIeH+PuoOZlCMNZWtoaY5XNPbU53V/8oUdNICu6zE1qd9r
	8aEOt8OLjrCH0wm7x91upZqBYOdoSNXbnUsKYXqRAPxANEinx7worWEIXZIpQZZfmsA4
	sjZ3yjWnu4bzsBEsq3iscXR28R/dYiqdjqP4x51f6kv6p/g8sxw9zdYTILpptEBi57JT
	8r0w==
X-Gm-Message-State: APjAAAWVKUv1GPy5sgWIIuUEHCfKSheUPHOE+7oUaqA5Mca6+VQfI2Xm
	utPRibryqKiEkYTMrBvpVEsy3F524edcEisLers=
X-Google-Smtp-Source: APXvYqyrTL0VggbyXibAIzoFvGMvv0uFgsFZkkkNm1HiMIPjFaLt7tE75cyNnWhVdEYCU27bpSlC9IQTg7egAABcZz4=
X-Received: by 2002:a37:801:: with SMTP id 1mr21575446qki.19.1554703656559;
	Sun, 07 Apr 2019 23:07:36 -0700 (PDT)
MIME-Version: 1.0
References: <001101d4bc79$b2739150$175ab3f0$@polycaptil.fr>
	<CAGAf8LxYW24L9Ah=ERcQncuMFC5w3UB26_WxoyZor8UQU7hBFw@mail.gmail.com>
	<003801d4bd38$cd620b80$68262280$@polycaptil.fr>
	<CAGAf8LxWMPqkFZxZWcq78onkxNO1TyUd0NUUkHje+jN7bO1Q4g@mail.gmail.com>
	<CAGAf8Lx-hCeapL1HtucKEG6kXb+8MwrdMWyEiSXXrqa+-vAG9w@mail.gmail.com>
	<000b01d4c790$95ede180$c1c9a480$@polycaptil.fr>
	<CAGAf8Ly+TuyozCCaeHTv6hPJLHnQZSo_jh5=hHfNdg-RLAR8Eg@mail.gmail.com>
	<00f001d4ebb4$773a0a00$65ae1e00$@polycaptil.fr>
In-Reply-To: <00f001d4ebb4$773a0a00$65ae1e00$@polycaptil.fr>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Mon, 8 Apr 2019 08:07:24 +0200
Message-ID: <CAGAf8LwPtTNk_cPGuNZPj_sruev8=5qsrisFt0PXiiH5tv1ZjQ@mail.gmail.com>
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
X-List-Received-Date: Mon, 08 Apr 2019 06:07:43 -0000
Content-Type: multipart/alternative; boundary="0000000000002e28230585fea7ed"

--0000000000002e28230585fea7ed
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Nikola,

I did some quick analysis of your kernel boot traces, and there are the
following observations made:

[1] The kernel used is:
Linux version 4.4.19-ge581bb1cac (polycaptil@polycaptil-HP-Notebook) ?!

In my case (I built YOCTO thud for BBB NOT using X11, only serial console):
Linux version 4.19.7-jumpnow (oe-user@oe-host) (gcc version 8.2.0 (GCC))

I could not explain polycaptil@polycaptil-HP-Notebook, maybe you do it for
such kind of platform...
The kernel used is too old, for my taste, you did not replaced it, if you
built YOCTO thud!

[2] The kernel command line:
[    0.000000] Kernel command line: console=3DttyO0,115200
root=3D/dev/mmcblk0p2 rw

Shows that you use EMMC as holder for / tree, all good.

[3] The concern about your console: console=3DttyO0,115200
Is addressed here:
[    0.000441] WARNING: Your 'console=3DttyO0' has been replaced by 'ttyS0'

Later followed by:
[    0.402495] Serial: 8250/16550 driver, 10 ports, IRQ sharing disabled
[    0.406968] 44e09000.serial: ttyS0 at MMIO 0x44e09000 (irq =3D 158,
base_baud =3D 3000000) is a 8250
[    1.017361] console [ttyS0] enabled
[    1.022188] 48022000.serial: ttyS1 at MMIO 0x48022000 (irq =3D 159,
base_baud =3D 3000000) is a 8250

So, not at all worries about the console!

[4] The following traces are worrying me very much:
Starting Xserver
Starting syslogd/klogd:
done
*X.Org X Server 1.20.1*
X Protocol Version 11, Revision 0
Build Operating System: Linux 4.15.0-45-generic x86_64
*Current Operating System: Linux am335x-evm 4.4.19-ge581bb1cac* #1 PREEMPT
Thu May 24 11:42:17 CEST 2018 armv7l
Kernel command line: console=3DttyO0,115200 root=3D/dev/mmcblk0p2 rw
Build Date: 02 April 2019  07:35:10PM

As Marc wrote earlier:
> Looks like: https://bugzilla.redhat.com/show_bug.cgi?id=3D1650634

So, as I stated before: you should have in your build:
*X.Org Server 1.20.3! This is the main problem, seems!*

Zoran
_______



On Fri, Apr 5, 2019 at 3:35 PM Stanisavljevic <
n.stanisavljevic@polycaptil.fr> wrote:

> Hello Zoran,
>
>
>
> I keep you in touch about the migration from sumo to thud to solve my
> problem of locked touchscreen.
>
>
>
> I migrated from sumo to thud version, but nothing changed, the problem is
> the same, and I have same messages on boot as sumo version.
>
>
>
> I looked that the x server have a configuration kernel command line (if I
> correctly understood), here is what is written :
>
> Kernel command line: console=3DttyO0,115200 root=3D/dev/mmcblk0p2 rw
>
>
>
> But the kernel command line of poky is different, here is what is
> configured for poky kernel command line :
>
> Poky (Yocto Project Reference Distro) 2.6.1 am335x-evm /dev/ttyS0
>
>
>
> For the xserver it is ttyO0 and for poky it is ttyS0, maybe there is
> something wrong here which do problem for the touchscreen.
>
>
>
> I put below (at end of this mail )the text which appear during the boot.
>
>
>
> I think xorg-x11-server package 1.20.3 was not the problem in the
> previous yocto version (sumo)=E2=80=A6
>
>
>
> Best regards
>
> Nikola
>
>
>
> Here is the text that appear during the boot :
>
>
>
> root@am335x-evm:~# CCCCCCCCCCCCCCCCCCCCCCCC
>
> U-Boot SPL 2017.05-00001-g041a398 (May 02 2018 - 18:36:57)
>
> Trying to boot from MMC1
>
> reading uboot.env
>
> reading u-boot.img
>
> reading u-boot.img
>
> reading u-boot.img
>
> reading u-boot.img
>
>
>
>
>
> U-Boot 2017.05-00001-g041a398 (May 02 2018 - 18:36:57 +0200)
>
>
>
> CPU  : AM335X-GP rev 2.1
>
> Model: TI AM335x EVM-SK
>
> DRAM:  256 MiB
>
> NAND:  0 MiB
>
> MMC:   OMAP SD/MMC: 0, OMAP SD/MMC: 1
>
> reading uboot.env
>
> ERROR: No USB device found
>
>
>
> at drivers/usb/gadget/ether.c:2709/usb_ether_init()
>
> Net:   CACHE: Misaligned operation at range [8df323c0, 8df32464]
>
>
>
> Warning: ethernet@4a100000 using MAC address from ROM
>
> eth0: ethernet@4a100000
>
> Hit any key to stop autoboot:  0
>
> reading zImage
>
> 3412752 bytes read in 252 ms (12.9 MiB/s)
>
> reading dtb
>
> 39733 bytes read in 12 ms (3.2 MiB/s)
>
> ## Flattened Device Tree blob at 82000000
>
>    Booting using the fdt blob at 0x82000000
>
>    Loading Device Tree to 8df19000, end 8df25b34 ... OK
>
>
>
> Starting kernel ...
>
>
>
> [    0.000000] Booting Linux on physical CPU 0x0
>
> [    0.000000] Initializing cgroup subsys cpu
>
> [    0.000000] Initializing cgroup subsys cpuacct
>
> [    0.000000] Linux version 4.4.19-ge581bb1cac
> (polycaptil@polycaptil-HP-Notebook) (gcc version 5.3.0 (GCC) ) #1 PREEMPT
> Thu May 24 11:42:17 CEST 2018
>
> [    0.000000] CPU: ARMv7 Processor [413fc082] revision 2 (ARMv7),
> cr=3D10c5387d
>
> [    0.000000] CPU: PIPT / VIPT nonaliasing data cache, VIPT aliasing
> instruction cache
>
> [    0.000000] Machine model: TI AM335x EVM-SK
>
> [    0.000000] cma: Reserved 48 MiB at 0x8a800000
>
> [    0.000000] Memory policy: Data cache writeback
>
> [    0.000000] CPU: All CPU(s) started in SVC mode.
>
> [    0.000000] AM335X ES2.1 (sgx neon )
>
> [    0.000000] Built 1 zonelists in Zone order, mobility grouping on.
> Total pages: 64960
>
> [    0.000000] Kernel command line: console=3DttyO0,115200
> root=3D/dev/mmcblk0p2 rw
>
> [    0.000000] PID hash table entries: 1024 (order: 0, 4096 bytes)
>
> [    0.000000] Dentry cache hash table entries: 32768 (order: 5, 131072
> bytes)
>
> [    0.000000] Inode-cache hash table entries: 16384 (order: 4, 65536
> bytes)
>
> [    0.000000] Memory: 200444K/262144K available (6495K kernel code, 313K
> rwdata, 2368K rodata, 260K init, 265K bss, 12548K reserved, 49152K
> cma-reserved, 0K highmem)
>
> [    0.000000] Virtual kernel memory layout:
>
> [    0.000000]     vector  : 0xffff0000 - 0xffff1000   (   4 kB)
>
> [    0.000000]     fixmap  : 0xffc00000 - 0xfff00000   (3072 kB)
>
> [    0.000000]     vmalloc : 0xd0800000 - 0xff800000   ( 752 MB)
>
> [    0.000000]     lowmem  : 0xc0000000 - 0xd0000000   ( 256 MB)
>
> [    0.000000]     pkmap   : 0xbfe00000 - 0xc0000000   (   2 MB)
>
> [    0.000000]     modules : 0xbf000000 - 0xbfe00000   (  14 MB)
>
> [    0.000000]       .text : 0xc0008000 - 0xc08b0034   (8865 kB)
>
> [    0.000000]       .init : 0xc08b1000 - 0xc08f2000   ( 260 kB)
>
> [    0.000000]       .data : 0xc08f2000 - 0xc09407f0   ( 314 kB)
>
> [    0.000000]        .bss : 0xc09407f0 - 0xc0982d58   ( 266 kB)
>
> [    0.000000] SLUB: HWalign=3D64, Order=3D0-3, MinObjects=3D0, CPUs=3D1,=
 Nodes=3D1
>
> [    0.000000] Preemptible hierarchical RCU implementation.
>
> [    0.000000]  Build-time adjustment of leaf fanout to 32.
>
> [    0.000000] NR_IRQS:16 nr_irqs:16 16
>
> [    0.000000] IRQ: Found an INTC at 0xfa200000 (revision 5.0) with 128
> interrupts
>
> [    0.000000] OMAP clockevent source: timer2 at 24000000 Hz
>
> [    0.000016] sched_clock: 32 bits at 24MHz, resolution 41ns, wraps ever=
y
> 89478484971ns
>
> [    0.000036] clocksource: timer1: mask: 0xffffffff max_cycles:
> 0xffffffff, max_idle_ns: 79635851949 ns
>
> [    0.000047] OMAP clocksource: timer1 at 24000000 Hz
>
> [    0.000222] clocksource_probe: no matching clocksources found
>
> [    0.000415] Console: colour dummy device 80x30
>
> [    0.000441] WARNING: Your 'console=3DttyO0' has been replaced by 'ttyS=
0'
>
> [    0.000447] This ensures that you still see kernel messages. Please
>
> [    0.000453] update your kernel commandline.
>
> [    0.000473] Calibrating delay loop... 795.44 BogoMIPS (lpj=3D3977216)
>
> [    0.089067] pid_max: default: 32768 minimum: 301
>
> [    0.089198] Mount-cache hash table entries: 1024 (order: 0, 4096 bytes=
)
>
> [    0.089210] Mountpoint-cache hash table entries: 1024 (order: 0, 4096
> bytes)
>
> [    0.089932] Initializing cgroup subsys io
>
> [    0.089965] Initializing cgroup subsys memory
>
> [    0.090003] Initializing cgroup subsys devices
>
> [    0.090020] Initializing cgroup subsys freezer
>
> [    0.090035] Initializing cgroup subsys perf_event
>
> [    0.090047] Initializing cgroup subsys pids
>
> [    0.090074] CPU: Testing write buffer coherency: ok
>
> [    0.090499] Setting up static identity map for 0x80008200 - 0x80008258
>
> [    0.092669] devtmpfs: initialized
>
> [    0.105440] VFP support v0.3: implementor 41 architecture 3 part 30
> variant c rev 3
>
> [    0.120496] omap_hwmod: debugss: _wait_target_disable failed
>
> [    0.175552] clocksource: jiffies: mask: 0xffffffff max_cycles:
> 0xffffffff, max_idle_ns: 19112604462750000 ns
>
> [    0.179889] pinctrl core: initialized pinctrl subsystem
>
> [    0.181246] NET: Registered protocol family 16
>
> [    0.183446] DMA: preallocated 256 KiB pool for atomic coherent
> allocations
>
> [    0.209067] cpuidle: using governor ladder
>
> [    0.239055] cpuidle: using governor menu
>
> [    0.243662] OMAP GPIO hardware version 0.1
>
> [    0.254349] hw-breakpoint: debug architecture 0x4 unsupported.
>
> [    0.297650] edma 49000000.edma: TI EDMA DMA engine driver
>
> [    0.298630] reg-fixed-voltage fixedregulator@2: could not find pctldev
> for node /ocp/l4_wkup@44c00000/scm@210000/pinmux@800/pinmux_wl12xx_gpio,
> deferring probe
>
> [    0.302384] omap_i2c 44e0b000.i2c: could not find pctldev for node
> /ocp/l4_wkup@44c00000/scm@210000/pinmux@800/pinmux_i2c0_pins, deferring
> probe
>
> [    0.302543] media: Linux media interface: v0.10
>
> [    0.302609] Linux video capture interface: v2.00
>
> [    0.302660] pps_core: LinuxPPS API ver. 1 registered
>
> [    0.302668] pps_core: Software ver. 5.3.6 - Copyright 2005-2007 Rodolf=
o
> Giometti <giometti@linux.it>
>
> [    0.302699] PTP clock support registered
>
> [    0.302764] EDAC MC: Ver: 3.0.0
>
> [    0.303981] omap-mailbox 480c8000.mailbox: omap mailbox rev 0x400
>
> [    0.304343] Advanced Linux Sound Architecture Driver Initialized.
>
> [    0.305508] clocksource: Switched to clocksource timer1
>
> [    0.316757] NET: Registered protocol family 2
>
> [    0.317569] TCP established hash table entries: 2048 (order: 1, 8192
> bytes)
>
> [    0.317608] TCP bind hash table entries: 2048 (order: 1, 8192 bytes)
>
> [    0.317636] TCP: Hash tables configured (established 2048 bind 2048)
>
> [    0.317718] UDP hash table entries: 256 (order: 0, 4096 bytes)
>
> [    0.317738] UDP-Lite hash table entries: 256 (order: 0, 4096 bytes)
>
> [    0.317898] NET: Registered protocol family 1
>
> [    0.318323] RPC: Registered named UNIX socket transport module.
>
> [    0.318337] RPC: Registered udp transport module.
>
> [    0.318344] RPC: Registered tcp transport module.
>
> [    0.318350] RPC: Registered tcp NFSv4.1 backchannel transport module.
>
> [    0.319303] hw perfevents: enabled with armv7_cortex_a8 PMU driver, 5
> counters available
>
> [    0.321370] futex hash table entries: 256 (order: -1, 3072 bytes)
>
> [    0.329774] squashfs: version 4.0 (2009/01/31) Phillip Lougher
>
> [    0.330714] NFS: Registering the id_resolver key type
>
> [    0.330792] Key type id_resolver registered
>
> [    0.330801] Key type id_legacy registered
>
> [    0.330881] ntfs: driver 2.1.32 [Flags: R/O].
>
> [    0.334651] Block layer SCSI generic (bsg) driver version 0.4 loaded
> (major 248)
>
> [    0.334684] io scheduler noop registered
>
> [    0.334698] io scheduler deadline registered
>
> [    0.334855] io scheduler cfq registered (default)
>
> [    0.336527] pinctrl-single 44e10800.pinmux: 142 pins at pa f9e10800
> size 568
>
> [    0.339377] backlight supply power not found, using dummy regulator
>
> [    0.402495] Serial: 8250/16550 driver, 10 ports, IRQ sharing disabled
>
> [    0.406968] 44e09000.serial: ttyS0 at MMIO 0x44e09000 (irq =3D 158,
> base_baud =3D 3000000) is a 8250
>
> [    1.017361] console [ttyS0] enabled
>
> [    1.022188] 48022000.serial: ttyS1 at MMIO 0x48022000 (irq =3D 159,
> base_baud =3D 3000000) is a 8250
>
> [    1.032233] [drm] Initialized drm 1.1.0 20060810
>
> [    1.039551] [drm] Supports vblank timestamp caching Rev 2 (21.10.2013)=
.
>
> [    1.046337] [drm] No driver support for vblank timestamp query.
>
> [    1.062083] Console: switching to colour frame buffer device 60x34
>
> [    1.070316] tilcdc 4830e000.lcdc: fb0:  frame buffer device
>
> [    1.105532] [drm] Initialized tilcdc 1.0.0 20121205 on minor 0
>
> [    1.118602] loop: module loaded
>
> [    1.124221] libphy: Fixed MDIO Bus: probed
>
> [    1.185547] davinci_mdio 4a101000.mdio: davinci mdio revision 1.6
>
> [    1.191690] davinci_mdio 4a101000.mdio: detected phy mask fffffffe
>
> [    1.198754] libphy: 4a101000.mdio: probed
>
> [    1.202851] davinci_mdio 4a101000.mdio: phy[0]: device
> 4a101000.mdio:00, driver SMSC LAN8710/LAN8720
>
> [    1.212830] cpsw 4a100000.ethernet: Detected MACID =3D a0:f6:fd:4c:a6:=
ba
>
> [    1.220461] cpsw 4a100000.ethernet: cpsw: Detected MACID =3D
> c4:ed:ba:88:2a:92
>
> [    1.229313] mousedev: PS/2 mouse device common for all mice
>
> [    1.235792] i2c /dev entries driver
>
> [    1.240448] cpuidle: enable-method property 'ti,am3352' found operatio=
ns
>
> [    1.248143] omap_hsmmc 48060000.mmc: Got CD GPIO
>
> [    1.275713] pinctrl-single 44e10800.pinmux: bad data for mux
> pinmux_mmc2_pins
>
> [    1.282895] pinctrl-single 44e10800.pinmux: no pins entries for
> pinmux_mmc2_pins
>
> [    1.317167] ledtrig-cpu: registered to indicate activity on CPUs
>
> [    1.326065] NET: Registered protocol family 10
>
> [    1.332086] sit: IPv6 over IPv4 tunneling driver
>
> [    1.337713] NET: Registered protocol family 17
>
> [    1.342528] Key type dns_resolver registered
>
> [    1.347114] omap_voltage_late_init: Voltage driver support not added
>
> [    1.407191] tps65910-rtc tps65910-rtc: rtc core: registered
> tps65910-rtc as rtc0
>
> [    1.415327] omap_i2c 44e0b000.i2c: bus 0 rev0.11 at 400 kHz
>
> [    1.421710] omap_hsmmc 48060000.mmc: Got CD GPIO
>
> [    1.426857] vmmc: supplied by vbat
>
> [    1.466348] pinctrl-single 44e10800.pinmux: bad data for mux
> pinmux_mmc2_pins
>
> [    1.474748] pinctrl-single 44e10800.pinmux: no pins entries for
> pinmux_mmc2_pins
>
> [    1.513242] mmc0: host does not support reading read-only switch,
> assuming write-enable
>
> [    1.523406] mmc0: new high speed SDHC card at address 0001
>
> [    1.529619] mmcblk0: mmc0:0001 AS 3.72 GiB
>
> [    1.535970]  mmcblk0: p1 p2 p3
>
> [    1.595927] vdd_mpu: supplied by vbat
>
> [    1.602118] input: gpio_buttons@0 as /devices/platform/gpio_buttons@0
> /input/input0
>
> [    1.618310] tps65910-rtc tps65910-rtc: setting system clock to
> 2019-04-03 08:25:12 UTC (1554279912)
>
> [    1.639397] lis3_reg: disabling
>
> [    1.655734] ALSA device list:
>
> [    1.658723]   No soundcards found.
>
> [    1.678283] EXT4-fs (mmcblk0p2): couldn't mount as ext3 due to feature
> incompatibilities
>
> [    1.696903] EXT4-fs (mmcblk0p2): couldn't mount as ext2 due to feature
> incompatibilities
>
> [    1.792693] EXT4-fs (mmcblk0p2): recovery complete
>
> [    1.807446] EXT4-fs (mmcblk0p2): mounted filesystem with ordered data
> mode. Opts: (null)
>
> [    1.821463] VFS: Mounted root (ext4 filesystem) on device 179:2.
>
> [    1.835669] devtmpfs: mounted
>
> [    1.839073] Freeing unused kernel memory: 260K (c08b1000 - c08f2000)
>
> [    1.851956] This architecture does not have kernel memory protection.
>
> INIT: version 2.88 booting
>
> Starting udev
>
> [    2.513624] udevd[78]: starting version 3.2.5
>
> [    2.527632] random: udevd: uninitialized urandom read (16 bytes read,
> 18 bits of entropy available)
>
> [    2.546992] random: udevd: uninitialized urandom read (16 bytes read,
> 18 bits of entropy available)
>
> [    2.566829] random: udevd: uninitialized urandom read (16 bytes read,
> 18 bits of entropy available)
>
> [    2.585755] random: udevd: uninitialized urandom read (16 bytes read,
> 18 bits of entropy available)
>
> [    2.668211] udevd[79]: starting eudev-3.2.5
>
> [    3.036159] random: udevd: uninitialized urandom read (16 bytes read,
> 21 bits of entropy available)
>
> [    3.061761] random: udevd: uninitialized urandom read (16 bytes read,
> 21 bits of entropy available)
>
> [    4.494682] EXT4-fs (mmcblk0p2): re-mounted. Opts: data=3Dordered
>
> [    5.052098] random: dd: uninitialized urandom read (512 bytes read, 34
> bits of entropy available)
>
> INIT: Entering runlevel: 5
>
> Configuring network interfaces... [    5.254308] net eth0: initializing
> cpsw version 1.12 (0)
>
> [    5.259812] net eth0: initialized cpsw ale version 1.4
>
> [    5.264976] net eth0: ALE Table size 1024
>
> [    5.272411] net eth0: phy found : id is : 0x7c0f1
>
> [    5.285702] IPv6: ADDRCONF(NETDEV_UP): eth0: link is not ready
>
> udhcpc: started, v1.29.2
>
> udhcpc: sending discover
>
> udhcpc: sending discover
>
> udhcpc: sending discover
>
> udhcpc: no lease, forking to background
>
> done.
>
> Starting system message bus: [   14.793334] random: dbus-daemon:
> uninitialized urandom read (12 bytes read, 51 bits of entropy available)
>
> [   14.831748] random: dbus-daemon: uninitialized urandom read (12 bytes
> read, 52 bits of entropy available)
>
> dbus.
>
> Starting Xserver
>
> Starting syslogd/klogd:
>
> done
>
>
>
> X.Org X Server 1.20.1
>
> X Protocol Version 11, Revision 0
>
> Build Operating System: Linux 4.15.0-45-generic x86_64
>
> Current Operating System: Linux am335x-evm 4.4.19-ge581bb1cac #1 PREEMPT
> Thu May 24 11:42:17 CEST 2018 armv7l
>
> Kernel command line: console=3DttyO0,115200 root=3D/dev/mmcblk0p2 rw
>
> Build Date: 02 April 2019  07:35:10PM
>
>
>
> Current version of pixman: 0.34.0
>
>         Before reporting problems, check http://wiki.x.org
>
>         to make sure that you have the latest version.
>
> Markers: (--) probed, (**) from config file, (=3D=3D) default setting,
>
>         (++) from command line, (!!) notice, (II) informational,
>
>         (WW) warning, (EE) error, (NI) not implemented, (??) unknown.
>
> (=3D=3D) Log file: "/var/log/Xorg.0.log", Time: Wed Apr  3 08:25:25 2019
>
> (=3D=3D) Using config file: "/etc/X11/xorg.conf"
>
> (=3D=3D) Using system config directory "/usr/share/X11/xorg.conf.d"
>
>
>
> Poky (Yocto Project Reference Distro) 2.6.1 am335x-evm /dev/ttyS0
>
>
>
> am335x-evm login: The XKEYBOARD keymap compiler (xkbcomp) reports:
>
> > Warning:          Unsupported high keycode 372 for name <I372> ignored
>
> >                   X11 cannot support keycodes above 255.
>
> >                   This warning only shows for the first high keycode.
>
> Errors from xkbcomp are not fatal to the X server
>
> [   15.888959] random: dbus-daemon: uninitialized urandom read (12 bytes
> read, 65 bits of entropy available)
>
> D-BUS per-session daemon address is:
> unix:abstract=3D/tmp/dbus-JjEW6Wgjtx,guid=3D87af020e5c6f1a7e21d449e55ca46=
df5
>
> Size 1024x768 not found in available modes
>
> Error: No calibratable devices found.
>
> matchbox: Cant find a keycode for keysym 269025056
>
> matchbox: ignoring key shortcut XF86Calendar=3D!$contacts
>
>
>
> matchbox: Cant find a keycode for keysym 2809
>
> matchbox: ignoring key shortcut telephone=3D!$dates
>
>
>
> matchbox: Cant find a keycode for keysym 269025050
>
> matchbox: ignoring key shortcut XF86Start=3D!matchbox-remote -desktop
>
>
>
> Failed to launch bus: Failed to execute child process ?/usr/bin?
> (Permission denied)
>
> (matchbox-terminal:274): dbind-WARNING **: 08:25:27.404: Error retrieving
> accessibility bus address: org.a11y.Bus.Error: Failed to execute child
> process ?/usr/bin? (Permission denied)
>
> [   43.718127] random: nonblocking pool is initialized
>
>
>
>
>
>
>
>
>
>
>
> *De :* Stanisavljevic <n.stanisavljevic@polycaptil.fr>
> *Envoy=C3=A9 :* lundi 18 f=C3=A9vrier 2019 15:27
> *=C3=80 :* 'Zoran Stojsavljevic' <zoran.stojsavljevic@gmail.com>
> *Cc :* 'Yocto Project' <yocto@yoctoproject.org>; 'Marc Ferland' <
> marc.ferland@gmail.com>
> *Objet :* RE: [yocto] yocto touchscreen
>
>
>
> Hello Zoran
>
>
>
> I will try these 2 ways.
>
> Of course, the second way is the easiest, but I will try also the first
> way only to see if it is possible.
>
> I will keep you in touch if the first way can work.
>
>
>
> Best regards,
>
> Nikola
>
>
>
> *De :* Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
> *Envoy=C3=A9 :* lundi 18 f=C3=A9vrier 2019 15:21
> *=C3=80 :* Stanisavljevic <n.stanisavljevic@polycaptil.fr>
> *Cc :* Yocto Project <yocto@yoctoproject.org>; Marc Ferland <
> marc.ferland@gmail.com>
> *Objet :* Re: [yocto] yocto touchscreen
>
>
>
> Hello Nikola,
>
>
>
> Two things, which immediately came to my mind:
>
> [1 - Harder way] Either to change xorg-x11-server in sumo to match at
> least xorg-x11-server *1.20.3;*
>
>       (harder way, since few people know exact dependencies among various
> GFX packages, and what
>
>        and how many packages need to be also changed to make
> xorg-x11-server 1.20.3 to work)
>
> [2 - Easier Way] Either to migrate YOCTO to Thud, where the correct
> xorg-x11-server package 1.20.3
>
>       is already fixed and set!
>
>       (easier way, since exact dependencies among various GFX packages ar=
e
> already set for 1.20.3)
>
>
>
> Best Regards,
>
> Zoran
>
> _______
>
>
>
> On Mon, Feb 18, 2019 at 2:48 PM Stanisavljevic <
> n.stanisavljevic@polycaptil.fr> wrote:
>
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
> *Pat Riehecky* *2018-11-20 14:28:22 UTC*
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
>

--0000000000002e28230585fea7ed
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div>Hello Nikola,<br><br>I did some quic=
k analysis of your kernel boot traces, and there are the following observat=
ions made:<br><br>[1] The kernel used is:<br>Linux version 4.4.19-ge581bb1c=
ac (polycaptil@polycaptil-HP-Notebook) ?!<br><br>In my case (I built YOCTO =
thud for BBB NOT using X11, only serial console):<br>Linux version 4.19.7-j=
umpnow (oe-user@oe-host) (gcc version 8.2.0 (GCC))<br><br>I could not expla=
in polycaptil@polycaptil-HP-Notebook, maybe you do it for such kind of plat=
form...<br>The kernel used is too old, for my taste, you did not replaced i=
t, if you built YOCTO thud!<br><br>[2] The kernel command line:<br>[ =C2=A0=
 =C2=A00.000000] Kernel command line: console=3DttyO0,115200 root=3D/dev/mm=
cblk0p2 rw<br><br>Shows that you use EMMC as holder for / tree, all good.<b=
r><br>[3] The concern about your console: console=3DttyO0,115200<br>Is addr=
essed here:<br>[ =C2=A0 =C2=A00.000441] WARNING: Your &#39;console=3DttyO0&=
#39; has been replaced by &#39;ttyS0&#39;<br><br>Later followed by:<br>[ =
=C2=A0 =C2=A00.402495] Serial: 8250/16550 driver, 10 ports, IRQ sharing dis=
abled<br>[ =C2=A0 =C2=A00.406968] 44e09000.serial: ttyS0 at MMIO 0x44e09000=
 (irq =3D 158, base_baud =3D 3000000) is a 8250<br>[ =C2=A0 =C2=A01.017361]=
 console [ttyS0] enabled<br>[ =C2=A0 =C2=A01.022188] 48022000.serial: ttyS1=
 at MMIO 0x48022000 (irq =3D 159, base_baud =3D 3000000) is a 8250<br><div>=
<br></div><div>So, not at all worries about the console!</div><br></div><di=
v>[4] The following traces are worrying me very much:</div><div>Starting Xs=
erver<br>Starting syslogd/klogd:<br>done<br><span style=3D"color:rgb(255,0,=
0)"><i><b>X.Org X Server 1.20.1</b></i></span><br>X Protocol Version 11, Re=
vision 0<br>Build Operating System: Linux 4.15.0-45-generic x86_64<br><span=
 style=3D"color:rgb(255,0,0)"><i><b>Current Operating System: Linux am335x-=
evm 4.4.19-ge581bb1cac</b></i></span> #1 PREEMPT Thu May 24 11:42:17 CEST 2=
018 armv7l<br>Kernel command line: console=3DttyO0,115200 root=3D/dev/mmcbl=
k0p2 rw<br>Build Date: 02 April 2019=C2=A0 07:35:10PM</div><div><br></div><=
div>As Marc wrote earlier:</div><div>&gt; Looks like: <a href=3D"https://bu=
gzilla.redhat.com/show_bug.cgi?id=3D1650634" target=3D"_blank">https://bugz=
illa.redhat.com/show_bug.cgi?id=3D1650634</a></div><div><br></div><div>So, =
as I stated before: you should have in your build:</div><div><u><span style=
=3D"color:rgb(255,0,0)"><i><b>X.Org Server 1.20.3! This is the main problem=
, seems!</b></i></span></u></div><div><br></div><div>Zoran</div><div>______=
_<br></div><div><br></div></div></div><br><br><div class=3D"gmail_quote"><d=
iv dir=3D"ltr" class=3D"gmail_attr">On Fri, Apr 5, 2019 at 3:35 PM Stanisav=
ljevic &lt;<a href=3D"mailto:n.stanisavljevic@polycaptil.fr" target=3D"_bla=
nk">n.stanisavljevic@polycaptil.fr</a>&gt; wrote:<br></div><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid r=
gb(204,204,204);padding-left:1ex"><div lang=3D"FR"><div class=3D"gmail-m_-2=
391544497964063811gmail-m_6574121755013685205gmail-m_-2573238030158729977Wo=
rdSection1"><p class=3D"MsoNormal"><span lang=3D"EN-US">Hello Zoran,<u></u>=
<u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0=
<u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">I keep you in=
 touch about the migration from sumo to thud to solve my problem of locked =
touchscreen.<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"E=
N-US"><u></u>=C2=A0<u></u></span></p><p class=3D"MsoNormal"><span lang=3D"E=
N-US">I migrated from sumo to thud version, but nothing changed, the proble=
m is the same, and I have same messages on boot as sumo version.<u></u><u><=
/u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u><=
/u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">I looked that the=
 x server have a configuration kernel command line (if I correctly understo=
od), here is what is written :<u></u><u></u></span></p><p class=3D"MsoNorma=
l"><span lang=3D"EN-US">Kernel command line: console=3DttyO0,115200 root=3D=
/dev/mmcblk0p2 rw<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=
=3D"EN-US"><u></u>=C2=A0<u></u></span></p><p class=3D"MsoNormal"><span lang=
=3D"EN-US">But the kernel command line of poky is different, here is what i=
s configured for poky kernel command line :<u></u><u></u></span></p><p clas=
s=3D"MsoNormal"><span lang=3D"EN-US">Poky (Yocto Project Reference Distro) =
2.6.1 am335x-evm /dev/ttyS0<u></u><u></u></span></p><p class=3D"MsoNormal">=
<span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p><p class=3D"MsoNormal">=
<span lang=3D"EN-US">For the xserver it is ttyO0 and for poky it is ttyS0, =
maybe there is something wrong here which do problem for the touchscreen.<u=
></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=
=C2=A0<u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">I put b=
elow (at end of this mail )the text which appear during the boot.<u></u><u>=
</u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u>=
</u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">I think </span><=
span style=3D"color:black" lang=3D"EN-US">xorg-x11-server package 1.20.3 wa=
s not the problem in the previous yocto version (sumo)=E2=80=A6<u></u><u></=
u></span></p><p class=3D"MsoNormal"><span style=3D"color:black" lang=3D"EN-=
US"><u></u>=C2=A0<u></u></span></p><p class=3D"MsoNormal"><span style=3D"co=
lor:black" lang=3D"EN-US">Best regards<u></u><u></u></span></p><p class=3D"=
MsoNormal"><span style=3D"color:black" lang=3D"EN-US">Nikola<u></u><u></u><=
/span></p><p class=3D"MsoNormal"><span style=3D"color:black" lang=3D"EN-US"=
><u></u>=C2=A0<u></u></span></p><p class=3D"MsoNormal"><span style=3D"color=
:black" lang=3D"EN-US">Here is the text that appear during the boot :<u></u=
><u></u></span></p><div style=3D"border-color:windowtext currentcolor;borde=
r-style:dotted none;border-width:3pt medium;padding:1pt 0cm"><p class=3D"Ms=
oNormal" style=3D"border:medium none;padding:0cm"><span style=3D"color:blac=
k" lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p></div><p class=3D"MsoNorma=
l"><span lang=3D"EN-US">root@am335x-evm:~# CCCCCCCCCCCCCCCCCCCCCCCC<u></u><=
u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">U-Boot SPL 201=
7.05-00001-g041a398 (May 02 2018 - 18:36:57)<u></u><u></u></span></p><p cla=
ss=3D"MsoNormal"><span lang=3D"EN-US">Trying to boot from MMC1<u></u><u></u=
></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">reading uboot.env<u=
></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">reading =
u-boot.img<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-=
US">reading u-boot.img<u></u><u></u></span></p><p class=3D"MsoNormal"><span=
 lang=3D"EN-US">reading u-boot.img<u></u><u></u></span></p><p class=3D"MsoN=
ormal"><span lang=3D"EN-US">reading u-boot.img<u></u><u></u></span></p><p c=
lass=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p><p c=
lass=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p><p c=
lass=3D"MsoNormal"><span lang=3D"EN-US">U-Boot 2017.05-00001-g041a398 (May =
02 2018 - 18:36:57 +0200)<u></u><u></u></span></p><p class=3D"MsoNormal"><s=
pan lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p><p class=3D"MsoNormal"><s=
pan lang=3D"EN-US">CPU=C2=A0 : AM335X-GP rev 2.1<u></u><u></u></span></p><p=
 class=3D"MsoNormal"><span lang=3D"EN-US">Model: TI AM335x EVM-SK<u></u><u>=
</u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">DRAM:=C2=A0 256 =
MiB<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">NAN=
D:=C2=A0 0 MiB<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D=
"EN-US">MMC:=C2=A0=C2=A0 OMAP SD/MMC: 0, OMAP SD/MMC: 1<u></u><u></u></span=
></p><p class=3D"MsoNormal"><span lang=3D"EN-US">reading uboot.env<u></u><u=
></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">ERROR: No USB d=
evice found<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN=
-US"><u></u>=C2=A0<u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN=
-US">at drivers/usb/gadget/ether.c:2709/usb_ether_init()<u></u><u></u></spa=
n></p><p class=3D"MsoNormal"><span lang=3D"EN-US">Net:=C2=A0=C2=A0 CACHE: M=
isaligned operation at range [8df323c0, 8df32464]<u></u><u></u></span></p><=
p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p><=
p class=3D"MsoNormal"><span lang=3D"EN-US">Warning: ethernet@4a100000 using=
 MAC address from ROM<u></u><u></u></span></p><p class=3D"MsoNormal"><span =
lang=3D"EN-US">eth0: ethernet@4a100000<u></u><u></u></span></p><p class=3D"=
MsoNormal"><span lang=3D"EN-US">Hit any key to stop autoboot:=C2=A0 0<u></u=
><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">reading zIma=
ge<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">3412=
752 bytes read in 252 ms (12.9 MiB/s)<u></u><u></u></span></p><p class=3D"M=
soNormal"><span lang=3D"EN-US">reading dtb<u></u><u></u></span></p><p class=
=3D"MsoNormal"><span lang=3D"EN-US">39733 bytes read in 12 ms (3.2 MiB/s)<u=
></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">## Flatt=
ened Device Tree blob at 82000000<u></u><u></u></span></p><p class=3D"MsoNo=
rmal"><span lang=3D"EN-US">=C2=A0=C2=A0 Booting using the fdt blob at 0x820=
00000<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">=
=C2=A0=C2=A0 Loading Device Tree to 8df19000, end 8df25b34 ... OK<u></u><u>=
</u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u>=
</u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">Starting kernel =
...<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US"><u>=
</u>=C2=A0<u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=
=C2=A0=C2=A0=C2=A0 0.000000] Booting Linux on physical CPU 0x0<u></u><u></u=
></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0=
 0.000000] Initializing cgroup subsys cpu<u></u><u></u></span></p><p class=
=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.000000] Initializ=
ing cgroup subsys cpuacct<u></u><u></u></span></p><p class=3D"MsoNormal"><s=
pan lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.000000] Linux version 4.4.19-ge581=
bb1cac (polycaptil@polycaptil-HP-Notebook) (gcc version 5.3.0 (GCC) ) #1 PR=
EEMPT Thu May 24 11:42:17 CEST 2018<u></u><u></u></span></p><p class=3D"Mso=
Normal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.000000] CPU: ARMv7 Proce=
ssor [413fc082] revision 2 (ARMv7), cr=3D10c5387d<u></u><u></u></span></p><=
p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.000000] CP=
U: PIPT / VIPT nonaliasing data cache, VIPT aliasing instruction cache<u></=
u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=
=A0=C2=A0 0.000000] Machine model: TI AM335x EVM-SK<u></u><u></u></span></p=
><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.000000] =
cma: Reserved 48 MiB at 0x8a800000<u></u><u></u></span></p><p class=3D"MsoN=
ormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.000000] Memory policy: Da=
ta cache writeback<u></u><u></u></span></p><p class=3D"MsoNormal"><span lan=
g=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.000000] CPU: All CPU(s) started in SVC mo=
de.<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=
=C2=A0=C2=A0=C2=A0 0.000000] AM335X ES2.1 (sgx neon )<u></u><u></u></span><=
/p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.000000=
] Built 1 zonelists in Zone order, mobility grouping on.=C2=A0 Total pages:=
 64960<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">=
[=C2=A0=C2=A0=C2=A0 0.000000] Kernel command line: console=3DttyO0,115200 r=
oot=3D/dev/mmcblk0p2 rw<u></u><u></u></span></p><p class=3D"MsoNormal"><spa=
n lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.000000] PID hash table entries: 1024=
 (order: 0, 4096 bytes)<u></u><u></u></span></p><p class=3D"MsoNormal"><spa=
n lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.000000] Dentry cache hash table entr=
ies: 32768 (order: 5, 131072 bytes)<u></u><u></u></span></p><p class=3D"Mso=
Normal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.000000] Inode-cache hash=
 table entries: 16384 (order: 4, 65536 bytes)<u></u><u></u></span></p><p cl=
ass=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.000000] Memory=
: 200444K/262144K available (6495K kernel code, 313K rwdata, 2368K rodata, =
260K init, 265K bss, 12548K reserved, 49152K cma-reserved, 0K highmem)<u></=
u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=
=A0=C2=A0 0.000000] Virtual kernel memory layout:<u></u><u></u></span></p><=
p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.000000]=C2=
=A0=C2=A0=C2=A0=C2=A0 vector=C2=A0 : 0xffff0000 - 0xffff1000=C2=A0=C2=A0 (=
=C2=A0=C2=A0 4 kB)<u></u><u></u></span></p><p class=3D"MsoNormal"><span lan=
g=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.000000]=C2=A0=C2=A0=C2=A0=C2=A0 fixmap=C2=
=A0 : 0xffc00000 - 0xfff00000=C2=A0=C2=A0 (3072 kB)<u></u><u></u></span></p=
><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.000000]=
=C2=A0=C2=A0=C2=A0=C2=A0 vmalloc : 0xd0800000 - 0xff800000=C2=A0=C2=A0 ( 75=
2 MB)<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=
=C2=A0=C2=A0=C2=A0 0.000000]=C2=A0=C2=A0=C2=A0=C2=A0 lowmem=C2=A0 : 0xc0000=
000 - 0xd0000000=C2=A0=C2=A0 ( 256 MB)<u></u><u></u></span></p><p class=3D"=
MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.000000]=C2=A0=C2=A0=
=C2=A0=C2=A0 pkmap=C2=A0=C2=A0 : 0xbfe00000 - 0xc0000000=C2=A0=C2=A0 (=C2=
=A0=C2=A0 2 MB)<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=
=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.000000]=C2=A0=C2=A0=C2=A0=C2=A0 modules : =
0xbf000000 - 0xbfe00000=C2=A0=C2=A0 (=C2=A0 14 MB)<u></u><u></u></span></p>=
<p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.000000]=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 .text : 0xc0008000 - 0xc08b0034=C2=A0=
=C2=A0 (8865 kB)<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=
=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.000000]=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 .init : 0xc08b1000 - 0xc08f2000=C2=A0 =C2=A0( 260 kB)<u></u><u></u></sp=
an></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.00=
0000]=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 .data : 0xc08f2000 - 0xc09407f0=
=C2=A0=C2=A0 ( 314 kB)<u></u><u></u></span></p><p class=3D"MsoNormal"><span=
 lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.000000]=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 .bss : 0xc09407f0 - 0xc0982d58=C2=A0=C2=A0 ( 266 kB)<u></u><u>=
</u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=
=A0 0.000000] SLUB: HWalign=3D64, Order=3D0-3, MinObjects=3D0, CPUs=3D1, No=
des=3D1<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US"=
>[=C2=A0=C2=A0=C2=A0 0.000000] Preemptible hierarchical RCU implementation.=
<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=
=A0=C2=A0=C2=A0 0.000000]=C2=A0 Build-time adjustment of leaf fanout to 32.=
<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=
=A0=C2=A0=C2=A0 0.000000] NR_IRQS:16 nr_irqs:16 16<u></u><u></u></span></p>=
<p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.000000] I=
RQ: Found an INTC at 0xfa200000 (revision 5.0) with 128 interrupts<u></u><u=
></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=
=C2=A0 0.000000] OMAP clockevent source: timer2 at 24000000 Hz<u></u><u></u=
></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0=
 0.000016] sched_clock: 32 bits at 24MHz, resolution 41ns, wraps every 8947=
8484971ns<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-U=
S">[=C2=A0=C2=A0=C2=A0 0.000036] clocksource: timer1: mask: 0xffffffff max_=
cycles: 0xffffffff, max_idle_ns: 79635851949 ns<u></u><u></u></span></p><p =
class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.000047] OMAP=
 clocksource: timer1 at 24000000 Hz<u></u><u></u></span></p><p class=3D"Mso=
Normal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.000222] clocksource_prob=
e: no matching clocksources found<u></u><u></u></span></p><p class=3D"MsoNo=
rmal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.000415] Console: colour du=
mmy device 80x30<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=
=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.000441] WARNING: Your &#39;console=3DttyO0=
&#39; has been replaced by &#39;ttyS0&#39;<u></u><u></u></span></p><p class=
=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.000447] This ensu=
res that you still see kernel messages. Please<u></u><u></u></span></p><p c=
lass=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.000453] updat=
e your kernel commandline.<u></u><u></u></span></p><p class=3D"MsoNormal"><=
span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.000473] Calibrating delay loop...=
 795.44 BogoMIPS (lpj=3D3977216)<u></u><u></u></span></p><p class=3D"MsoNor=
mal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.089067] pid_max: default: 3=
2768 minimum: 301<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=
=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.089198] Mount-cache hash table entries: 10=
24 (order: 0, 4096 bytes)<u></u><u></u></span></p><p class=3D"MsoNormal"><s=
pan lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.089210] Mountpoint-cache hash tabl=
e entries: 1024 (order: 0, 4096 bytes)<u></u><u></u></span></p><p class=3D"=
MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.089932] Initializing =
cgroup subsys io<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=
=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.089965] Initializing cgroup subsys memory<=
u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=
=C2=A0=C2=A0 0.090003] Initializing cgroup subsys devices<u></u><u></u></sp=
an></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.09=
0020] Initializing cgroup subsys freezer<u></u><u></u></span></p><p class=
=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.090035] Initializ=
ing cgroup subsys perf_event<u></u><u></u></span></p><p class=3D"MsoNormal"=
><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.090047] Initializing cgroup sub=
sys pids<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US=
">[=C2=A0=C2=A0=C2=A0 0.090074] CPU: Testing write buffer coherency: ok<u><=
/u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=
=A0=C2=A0 0.090499] Setting up static identity map for 0x80008200 - 0x80008=
258<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=
=C2=A0=C2=A0=C2=A0 0.092669] devtmpfs: initialized<u></u><u></u></span></p>=
<p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.105440] V=
FP support v0.3: implementor 41 architecture 3 part 30 variant c rev 3<u></=
u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=
=A0=C2=A0 0.120496] omap_hwmod: debugss: _wait_target_disable failed<u></u>=
<u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=
=C2=A0 0.175552] clocksource: jiffies: mask: 0xffffffff max_cycles: 0xfffff=
fff, max_idle_ns: 19112604462750000 ns<u></u><u></u></span></p><p class=3D"=
MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.179889] pinctrl core:=
 initialized pinctrl subsystem<u></u><u></u></span></p><p class=3D"MsoNorma=
l"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.181246] NET: Registered proto=
col family 16<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"=
EN-US">[=C2=A0=C2=A0=C2=A0 0.183446] DMA: preallocated 256 KiB pool for ato=
mic coherent allocations<u></u><u></u></span></p><p class=3D"MsoNormal"><sp=
an lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.209067] cpuidle: using governor lad=
der<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=
=C2=A0=C2=A0=C2=A0 0.239055] cpuidle: using governor menu<u></u><u></u></sp=
an></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.24=
3662] OMAP GPIO hardware version 0.1<u></u><u></u></span></p><p class=3D"Ms=
oNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.254349] hw-breakpoint: =
debug architecture 0x4 unsupported.<u></u><u></u></span></p><p class=3D"Mso=
Normal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.297650] edma 49000000.ed=
ma: TI EDMA DMA engine driver<u></u><u></u></span></p><p class=3D"MsoNormal=
"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.298630] reg-fixed-voltage fixe=
dregulator@2: could not find pctldev for node /ocp/l4_wkup@44c00000/scm@210=
000/pinmux@800/pinmux_wl12xx_gpio, deferring probe<u></u><u></u></span></p>=
<p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.302384] o=
map_i2c 44e0b000.i2c: could not find pctldev for node /ocp/l4_wkup@44c00000=
/scm@210000/pinmux@800/pinmux_i2c0_pins, deferring probe<u></u><u></u></spa=
n></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.302=
543] media: Linux media interface: v0.10<u></u><u></u></span></p><p class=
=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.302609] Linux vid=
eo capture interface: v2.00<u></u><u></u></span></p><p class=3D"MsoNormal">=
<span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.302660] pps_core: LinuxPPS API v=
er. 1 registered<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=
=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.302668] pps_core: Software ver. 5.3.6 - Co=
pyright 2005-2007 Rodolfo Giometti &lt;<a href=3D"mailto:giometti@linux.it"=
 target=3D"_blank">giometti@linux.it</a>&gt;<u></u><u></u></span></p><p cla=
ss=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.302699] PTP clo=
ck support registered<u></u><u></u></span></p><p class=3D"MsoNormal"><span =
lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.302764] EDAC MC: Ver: 3.0.0<u></u><u><=
/u></span></p><p class=3D"MsoNormal">[=C2=A0=C2=A0=C2=A0 0.303981] omap-mai=
lbox 480c8000.mailbox: omap mailbox rev 0x400<u></u><u></u></p><p class=3D"=
MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.304343] Advanced Linu=
x Sound Architecture Driver Initialized.<u></u><u></u></span></p><p class=
=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.305508] clocksour=
ce: Switched to clocksource timer1<u></u><u></u></span></p><p class=3D"MsoN=
ormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.316757] NET: Registered p=
rotocol family 2<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=
=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.317569] TCP established hash table entries=
: 2048 (order: 1, 8192 bytes)<u></u><u></u></span></p><p class=3D"MsoNormal=
"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.317608] TCP bind hash table en=
tries: 2048 (order: 1, 8192 bytes)<u></u><u></u></span></p><p class=3D"MsoN=
ormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.317636] TCP: Hash tables =
configured (established 2048 bind 2048)<u></u><u></u></span></p><p class=3D=
"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.317718] UDP hash tab=
le entries: 256 (order: 0, 4096 bytes)<u></u><u></u></span></p><p class=3D"=
MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.317738] UDP-Lite hash=
 table entries: 256 (order: 0, 4096 bytes)<u></u><u></u></span></p><p class=
=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.317898] NET: Regi=
stered protocol family 1<u></u><u></u></span></p><p class=3D"MsoNormal"><sp=
an lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.318323] RPC: Registered named UNIX =
socket transport module.<u></u><u></u></span></p><p class=3D"MsoNormal"><sp=
an lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.318337] RPC: Registered udp transpo=
rt module.<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-=
US">[=C2=A0=C2=A0=C2=A0 0.318344] RPC: Registered tcp transport module.<u><=
/u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=
=A0=C2=A0 0.318350] RPC: Registered tcp NFSv4.1 backchannel transport modul=
e.<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=
=A0=C2=A0=C2=A0 0.319303] hw perfevents: enabled with armv7_cortex_a8 PMU d=
river, 5 counters available<u></u><u></u></span></p><p class=3D"MsoNormal">=
<span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.321370] futex hash table entries=
: 256 (order: -1, 3072 bytes)<u></u><u></u></span></p><p class=3D"MsoNormal=
"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.329774] squashfs: version 4.0 =
(2009/01/31) Phillip Lougher<u></u><u></u></span></p><p class=3D"MsoNormal"=
><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.330714] NFS: Registering the id=
_resolver key type<u></u><u></u></span></p><p class=3D"MsoNormal"><span lan=
g=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.330792] Key type id_resolver registered<u=
></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=
=C2=A0=C2=A0 0.330801] Key type id_legacy registered<u></u><u></u></span></=
p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.330881]=
 ntfs: driver 2.1.32 [Flags: R/O].<u></u><u></u></span></p><p class=3D"MsoN=
ormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.334651] Block layer SCSI =
generic (bsg) driver version 0.4 loaded (major 248)<u></u><u></u></span></p=
><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.334684] =
io scheduler noop registered<u></u><u></u></span></p><p class=3D"MsoNormal"=
><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.334698] io scheduler deadline r=
egistered<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-U=
S">[=C2=A0=C2=A0=C2=A0 0.334855] io scheduler cfq registered (default)<u></=
u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=
=A0=C2=A0 0.336527] pinctrl-single 44e10800.pinmux: 142 pins at pa f9e10800=
 size 568<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-U=
S">[=C2=A0=C2=A0=C2=A0 0.339377] backlight supply power not found, using du=
mmy regulator<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"=
EN-US">[=C2=A0=C2=A0=C2=A0 0.402495] Serial: 8250/16550 driver, 10 ports, I=
RQ sharing disabled<u></u><u></u></span></p><p class=3D"MsoNormal"><span la=
ng=3D"EN-US">[=C2=A0=C2=A0=C2=A0 0.406968] 44e09000.serial: ttyS0 at MMIO 0=
x44e09000 (irq =3D 158, base_baud =3D 3000000) is a 8250<u></u><u></u></spa=
n></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 1.017=
361] console [ttyS0] enabled<u></u><u></u></span></p><p class=3D"MsoNormal"=
><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 1.022188] 48022000.serial: ttyS1 =
at MMIO 0x48022000 (irq =3D 159, base_baud =3D 3000000) is a 8250<u></u><u>=
</u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=
=A0 1.032233] [drm] Initialized drm 1.1.0 20060810<u></u><u></u></span></p>=
<p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 1.039551] [=
drm] Supports vblank timestamp caching Rev 2 (21.10.2013).<u></u><u></u></s=
pan></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 1.0=
46337] [drm] No driver support for vblank timestamp query.<u></u><u></u></s=
pan></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 1.0=
62083] Console: switching to colour frame buffer device 60x34<u></u><u></u>=
</span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 =
1.070316] tilcdc 4830e000.lcdc: fb0:=C2=A0 frame buffer device<u></u><u></u=
></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0=
 1.105532] [drm] Initialized tilcdc 1.0.0 20121205 on minor 0<u></u><u></u>=
</span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 =
1.118602] loop: module loaded<u></u><u></u></span></p><p class=3D"MsoNormal=
"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 1.124221] libphy: Fixed MDIO Bus=
: probed<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US=
">[=C2=A0=C2=A0=C2=A0 1.185547] davinci_mdio 4a101000.mdio: davinci mdio re=
vision 1.6<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-=
US">[=C2=A0=C2=A0=C2=A0 1.191690] davinci_mdio 4a101000.mdio: detected phy =
mask fffffffe<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"=
EN-US">[=C2=A0=C2=A0=C2=A0 1.198754] libphy: 4a101000.mdio: probed<u></u><u=
></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=
=C2=A0 1.202851] davinci_mdio 4a101000.mdio: phy[0]: device 4a101000.mdio:0=
0, driver SMSC LAN8710/LAN8720<u></u><u></u></span></p><p class=3D"MsoNorma=
l"><span lang=3D"EN-US">[ =C2=A0=C2=A0=C2=A01.212830] cpsw 4a100000.etherne=
t: Detected MACID =3D a0:f6:fd:4c:a6:ba<u></u><u></u></span></p><p class=3D=
"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 1.220461] cpsw 4a10000=
0.ethernet: cpsw: Detected MACID =3D c4:ed:ba:88:2a:92<u></u><u></u></span>=
</p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 1.22931=
3] mousedev: PS/2 mouse device common for all mice<u></u><u></u></span></p>=
<p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 1.235792] i=
2c /dev entries driver<u></u><u></u></span></p><p class=3D"MsoNormal"><span=
 lang=3D"EN-US">[ =C2=A0=C2=A0=C2=A01.240448] cpuidle: enable-method proper=
ty &#39;ti,am3352&#39; found operations<u></u><u></u></span></p><p class=3D=
"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 1.248143] omap_hsmmc 4=
8060000.mmc: Got CD GPIO<u></u><u></u></span></p><p class=3D"MsoNormal"><sp=
an lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 1.275713] pinctrl-single 44e10800.pin=
mux: bad data for mux pinmux_mmc2_pins<u></u><u></u></span></p><p class=3D"=
MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 1.282895] pinctrl-singl=
e 44e10800.pinmux: no pins entries for pinmux_mmc2_pins<u></u><u></u></span=
></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 1.3171=
67] ledtrig-cpu: registered to indicate activity on CPUs<u></u><u></u></spa=
n></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 1.326=
065] NET: Registered protocol family 10<u></u><u></u></span></p><p class=3D=
"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 1.332086] sit: IPv6 ov=
er IPv4 tunneling driver<u></u><u></u></span></p><p class=3D"MsoNormal"><sp=
an lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 1.337713] NET: Registered protocol fa=
mily 17<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US"=
>[=C2=A0=C2=A0=C2=A0 1.342528] Key type dns_resolver registered<u></u><u></=
u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=
=A0 1.347114] omap_voltage_late_init: Voltage driver support not added<u></=
u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=
=A0=C2=A0 1.407191] tps65910-rtc tps65910-rtc: rtc core: registered tps6591=
0-rtc as rtc0<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"=
EN-US">[=C2=A0=C2=A0=C2=A0 1.415327] omap_i2c 44e0b000.i2c: bus 0 rev0.11 a=
t 400 kHz<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-U=
S">[=C2=A0=C2=A0=C2=A0 1.421710] omap_hsmmc 48060000.mmc: Got CD GPIO<u></u=
><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=
=A0=C2=A0 1.426857] vmmc: supplied by vbat<u></u><u></u></span></p><p class=
=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 1.466348] pinctrl-s=
ingle 44e10800.pinmux: bad data for mux pinmux_mmc2_pins<u></u><u></u></spa=
n></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 1.474=
748] pinctrl-single 44e10800.pinmux: no pins entries for pinmux_mmc2_pins<u=
></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=
=C2=A0=C2=A0 1.513242] mmc0: host does not support reading read-only switch=
, assuming write-enable<u></u><u></u></span></p><p class=3D"MsoNormal"><spa=
n lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 1.523406] mmc0: new high speed SDHC ca=
rd at address 0001<u></u><u></u></span></p><p class=3D"MsoNormal"><span lan=
g=3D"EN-US">[=C2=A0=C2=A0=C2=A0 1.529619] mmcblk0: mmc0:0001 AS 3.72 GiB<u>=
</u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=
=C2=A0=C2=A0 1.535970]=C2=A0 mmcblk0: p1 p2 p3<u></u><u></u></span></p><p c=
lass=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 1.595927] vdd_m=
pu: supplied by vbat<u></u><u></u></span></p><p class=3D"MsoNormal"><span l=
ang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 1.602118] input: gpio_buttons@0 as /devic=
es/platform/gpio_buttons@0/input/input0<u></u><u></u></span></p><p class=3D=
"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 1.618310] tps65910-rtc=
 tps65910-rtc: setting system clock to 2019-04-03 08:25:12 UTC (1554279912)=
<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=
=A0=C2=A0=C2=A0 1.639397] lis3_reg: disabling<u></u><u></u></span></p><p cl=
ass=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 1.655734] ALSA d=
evice list:<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN=
-US">[=C2=A0=C2=A0=C2=A0 1.658723]=C2=A0=C2=A0 No soundcards found.<u></u><=
u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=
=C2=A0 1.678283] EXT4-fs (mmcblk0p2): couldn&#39;t mount as ext3 due to fea=
ture incompatibilities<u></u><u></u></span></p><p class=3D"MsoNormal"><span=
 lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 1.696903] EXT4-fs (mmcblk0p2): couldn&#=
39;t mount as ext2 due to feature incompatibilities<u></u><u></u></span></p=
><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 1.792693] =
EXT4-fs (mmcblk0p2): recovery complete<u></u><u></u></span></p><p class=3D"=
MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 1.807446] EXT4-fs (mmcb=
lk0p2): mounted filesystem with ordered data mode. Opts: (null)<u></u><u></=
u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=
=A0 1.821463] VFS: Mounted root (ext4 filesystem) on device 179:2.<u></u><u=
></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=
=C2=A0 1.835669] devtmpfs: mounted<u></u><u></u></span></p><p class=3D"MsoN=
ormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 1.839073] Freeing unused ke=
rnel memory: 260K (c08b1000 - c08f2000)<u></u><u></u></span></p><p class=3D=
"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 1.851956] This archite=
cture does not have kernel memory protection.<u></u><u></u></span></p><p cl=
ass=3D"MsoNormal"><span lang=3D"EN-US">INIT: version 2.88 booting<u></u><u>=
</u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">Starting udev<u>=
</u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=
=C2=A0=C2=A0 2.513624] udevd[78]: starting version 3.2.5<u></u><u></u></spa=
n></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 2.527=
632] random: udevd: uninitialized urandom read (16 bytes read, 18 bits of e=
ntropy available)<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=
=3D"EN-US">[=C2=A0=C2=A0=C2=A0 2.546992] random: udevd: uninitialized urand=
om read (16 bytes read, 18 bits of entropy available)<u></u><u></u></span><=
/p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 2.566829=
] random: udevd: uninitialized urandom read (16 bytes read, 18 bits of entr=
opy available)<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D=
"EN-US">[=C2=A0=C2=A0=C2=A0 2.585755] random: udevd: uninitialized urandom =
read (16 bytes read, 18 bits of entropy available)<u></u><u></u></span></p>=
<p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 2.668211] u=
devd[79]: starting eudev-3.2.5<u></u><u></u></span></p><p class=3D"MsoNorma=
l"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 3.036159] random: udevd: uninit=
ialized urandom read (16 bytes read, 21 bits of entropy available)<u></u><u=
></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=
=C2=A0 3.061761] random: udevd: uninitialized urandom read (16 bytes read, =
21 bits of entropy available)<u></u><u></u></span></p><p class=3D"MsoNormal=
"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 4.494682] EXT4-fs (mmcblk0p2): r=
e-mounted. Opts: data=3Dordered<u></u><u></u></span></p><p class=3D"MsoNorm=
al"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 5.052098] random: dd: uninitia=
lized urandom read (512 bytes read, 34 bits of entropy available)<u></u><u>=
</u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">INIT: Entering r=
unlevel: 5<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-=
US">Configuring network interfaces... [=C2=A0=C2=A0=C2=A0 5.254308] net eth=
0: initializing cpsw version 1.12 (0)<u></u><u></u></span></p><p class=3D"M=
soNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 5.259812] net eth0: init=
ialized cpsw ale version 1.4<u></u><u></u></span></p><p class=3D"MsoNormal"=
><span lang=3D"EN-US">[=C2=A0=C2=A0=C2=A0 5.264976] net eth0: ALE Table siz=
e 1024<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">=
[=C2=A0=C2=A0=C2=A0 5.272411] net eth0: phy found : id is : 0x7c0f1<u></u><=
u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">[=C2=A0=C2=A0=
=C2=A0 5.285702] IPv6: ADDRCONF(NETDEV_UP): eth0: link is not ready<u></u><=
u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">udhcpc: starte=
d, v1.29.2<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-=
US">udhcpc: sending discover<u></u><u></u></span></p><p class=3D"MsoNormal"=
><span lang=3D"EN-US">udhcpc: sending discover<u></u><u></u></span></p><p c=
lass=3D"MsoNormal"><span lang=3D"EN-US">udhcpc: sending discover<u></u><u><=
/u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">udhcpc: no lease,=
 forking to background<u></u><u></u></span></p><p class=3D"MsoNormal"><span=
 lang=3D"EN-US">done.<u></u><u></u></span></p><p class=3D"MsoNormal"><span =
lang=3D"EN-US">Starting system message bus: [=C2=A0=C2=A0 14.793334] random=
: dbus-daemon: uninitialized urandom read (12 bytes read, 51 bits of entrop=
y available)<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"E=
N-US">[=C2=A0=C2=A0 14.831748] random: dbus-daemon: uninitialized urandom r=
ead (12 bytes read, 52 bits of entropy available)<u></u><u></u></span></p><=
p class=3D"MsoNormal"><span lang=3D"EN-US">dbus.<u></u><u></u></span></p><p=
 class=3D"MsoNormal"><span lang=3D"EN-US">Starting Xserver<u></u><u></u></s=
pan></p><p class=3D"MsoNormal"><span lang=3D"EN-US">Starting syslogd/klogd:=
<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">done<u=
></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=
=C2=A0<u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">X.Org X=
 Server 1.20.1<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D=
"EN-US">X Protocol Version 11, Revision 0<u></u><u></u></span></p><p class=
=3D"MsoNormal"><span lang=3D"EN-US">Build Operating System: Linux 4.15.0-45=
-generic x86_64<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=
=3D"EN-US">Current Operating System: Linux am335x-evm 4.4.19-ge581bb1cac #1=
 PREEMPT Thu May 24 11:42:17 CEST 2018 armv7l<u></u><u></u></span></p><p cl=
ass=3D"MsoNormal"><span lang=3D"EN-US">Kernel command line: console=3DttyO0=
,115200 root=3D/dev/mmcblk0p2 rw<u></u><u></u></span></p><p class=3D"MsoNor=
mal"><span lang=3D"EN-US">Build Date: 02 April 2019=C2=A0 07:35:10PM<u></u>=
<u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0=
<u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">Current versi=
on of pixman: 0.34.0<u></u><u></u></span></p><p class=3D"MsoNormal"><span l=
ang=3D"EN-US">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Before reporting p=
roblems, check <a href=3D"http://wiki.x.org" target=3D"_blank">http://wiki.=
x.org</a><u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-U=
S">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 to make sure that you have th=
e latest version.<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=
=3D"EN-US">Markers: (--) probed, (**) from config file, (=3D=3D) default se=
tting,<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 (++) from command line, (!!) not=
ice, (II) informational,<u></u><u></u></span></p><p class=3D"MsoNormal"><sp=
an lang=3D"EN-US">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 (WW) warning, =
(EE) error, (NI) not implemented, (??) unknown.<u></u><u></u></span></p><p =
class=3D"MsoNormal"><span lang=3D"EN-US">(=3D=3D) Log file: &quot;/var/log/=
Xorg.0.log&quot;, Time: Wed Apr=C2=A0 3 08:25:25 2019<u></u><u></u></span><=
/p><p class=3D"MsoNormal"><span lang=3D"EN-US">(=3D=3D) Using config file: =
&quot;/etc/X11/xorg.conf&quot;<u></u><u></u></span></p><p class=3D"MsoNorma=
l"><span lang=3D"EN-US">(=3D=3D) Using system config directory &quot;/usr/s=
hare/X11/xorg.conf.d&quot;<u></u><u></u></span></p><p class=3D"MsoNormal"><=
span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p><p class=3D"MsoNormal"><=
span lang=3D"EN-US">Poky (Yocto Project Reference Distro) 2.6.1 am335x-evm =
/dev/ttyS0<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-=
US"><u></u>=C2=A0<u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-=
US">am335x-evm login: The XKEYBOARD keymap compiler (xkbcomp) reports:<u></=
u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">&gt; Warnin=
g:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Unsupported high k=
eycode 372 for name &lt;I372&gt; ignored<u></u><u></u></span></p><p class=
=3D"MsoNormal"><span lang=3D"EN-US">&gt;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 X11 cannot support keycodes above 255.<u></u><u></u></span></p><p class=3D=
"MsoNormal"><span lang=3D"EN-US">&gt;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0Th=
is warning only shows for the first high keycode.<u></u><u></u></span></p><=
p class=3D"MsoNormal"><span lang=3D"EN-US">Errors from xkbcomp are not fata=
l to the X server<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=
=3D"EN-US">[=C2=A0=C2=A0 15.888959] random: dbus-daemon: uninitialized uran=
dom read (12 bytes read, 65 bits of entropy available)<u></u><u></u></span>=
</p><p class=3D"MsoNormal"><span lang=3D"EN-US">D-BUS per-session daemon ad=
dress is: unix:abstract=3D/tmp/dbus-JjEW6Wgjtx,guid=3D87af020e5c6f1a7e21d44=
9e55ca46df5<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN=
-US">Size 1024x768 not found in available modes<u></u><u></u></span></p><p =
class=3D"MsoNormal"><span lang=3D"EN-US">Error: No calibratable devices fou=
nd.<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">mat=
chbox: Cant find a keycode for keysym 269025056<u></u><u></u></span></p><p =
class=3D"MsoNormal"><span lang=3D"EN-US">matchbox: ignoring key shortcut XF=
86Calendar=3D!$contacts<u></u><u></u></span></p><p class=3D"MsoNormal"><spa=
n lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p><p class=3D"MsoNormal"><spa=
n lang=3D"EN-US">matchbox: Cant find a keycode for keysym 2809<u></u><u></u=
></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">matchbox: ignoring =
key shortcut telephone=3D!$dates<u></u><u></u></span></p><p class=3D"MsoNor=
mal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p><p class=3D"MsoNor=
mal"><span lang=3D"EN-US">matchbox: Cant find a keycode for keysym 26902505=
0<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">match=
box: ignoring key shortcut XF86Start=3D!matchbox-remote -desktop<u></u><u><=
/u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u><=
/u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">Failed to launch =
bus: Failed to execute child process ?/usr/bin? (Permission denied)<u></u><=
u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">(matchbox-term=
inal:274): dbind-WARNING **: 08:25:27.404: Error retrieving accessibility b=
us address: org.a11y.Bus.Error: Failed to execute child process ?/usr/bin? =
(Permission denied)<u></u><u></u></span></p><p class=3D"MsoNormal"><span la=
ng=3D"EN-US">[=C2=A0=C2=A0 43.718127] random: nonblocking pool is initializ=
ed<u></u><u></u></span></p><div style=3D"border-color:currentcolor currentc=
olor windowtext;border-style:none none dotted;border-width:medium medium 3p=
t;padding:0cm 0cm 1pt"><p class=3D"MsoNormal" style=3D"border-color:current=
color currentcolor windowtext;border-style:none none dotted;border-width:me=
dium medium 3pt;padding:0cm 0cm 1pt"><span style=3D"color:black" lang=3D"EN=
-US"><u></u>=C2=A0<u></u></span></p><p class=3D"MsoNormal" style=3D"border:=
medium none;padding:1pt 0cm 0cm"><span style=3D"color:black" lang=3D"EN-US"=
><u></u>=C2=A0<u></u></span></p></div><p class=3D"MsoNormal"><span style=3D=
"color:black" lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p><p class=3D"Mso=
Normal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p><p class=3D"Mso=
Normal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p><div><div style=
=3D"border-color:rgb(225,225,225) currentcolor currentcolor;border-style:so=
lid none none;border-width:1pt medium medium;padding:3pt 0cm 0cm"><p class=
=3D"MsoNormal"><b><span lang=3D"EN-US">De=C2=A0:</span></b><span lang=3D"EN=
-US"> Stanisavljevic &lt;<a href=3D"mailto:n.stanisavljevic@polycaptil.fr" =
target=3D"_blank">n.stanisavljevic@polycaptil.fr</a>&gt; <br><b>Envoy=C3=A9=
=C2=A0:</b> lundi 18 f=C3=A9vrier 2019 15:27<br><b>=C3=80=C2=A0:</b> &#39;Z=
oran Stojsavljevic&#39; &lt;<a href=3D"mailto:zoran.stojsavljevic@gmail.com=
" target=3D"_blank">zoran.stojsavljevic@gmail.com</a>&gt;<br><b>Cc=C2=A0:</=
b> &#39;Yocto Project&#39; &lt;<a href=3D"mailto:yocto@yoctoproject.org" ta=
rget=3D"_blank">yocto@yoctoproject.org</a>&gt;; &#39;Marc Ferland&#39; &lt;=
<a href=3D"mailto:marc.ferland@gmail.com" target=3D"_blank">marc.ferland@gm=
ail.com</a>&gt;<br><b>Objet=C2=A0:</b> RE: [yocto] yocto touchscreen<u></u>=
<u></u></span></p></div></div><p class=3D"MsoNormal"><span lang=3D"EN-US"><=
u></u>=C2=A0<u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">H=
ello Zoran<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-=
US"><u></u>=C2=A0<u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-=
US">I will try these 2 ways.<u></u><u></u></span></p><p class=3D"MsoNormal"=
><span lang=3D"EN-US">Of course, the second way is the easiest, but I will =
try also the first way only to see if it is possible.<u></u><u></u></span><=
/p><p class=3D"MsoNormal"><span lang=3D"EN-US">I will keep you in touch if =
the first way can work.<u></u><u></u></span></p><p class=3D"MsoNormal"><spa=
n lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p><p class=3D"MsoNormal"><spa=
n lang=3D"EN-US">Best regards,<u></u><u></u></span></p><p class=3D"MsoNorma=
l"><span lang=3D"EN-US">Nikola<u></u><u></u></span></p><p class=3D"MsoNorma=
l"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p><p class=3D"MsoNorma=
l"><b><span lang=3D"EN-US">De=C2=A0:</span></b><span lang=3D"EN-US"> Zoran =
Stojsavljevic &lt;</span><a href=3D"mailto:zoran.stojsavljevic@gmail.com" t=
arget=3D"_blank"><span lang=3D"EN-US">zoran.stojsavljevic@gmail.com</span><=
/a><span lang=3D"EN-US">&gt; <br><b>Envoy=C3=A9=C2=A0:</b> lundi 18 f=C3=A9=
vrier 2019 15:21<br><b>=C3=80=C2=A0:</b> Stanisavljevic &lt;</span><a href=
=3D"mailto:n.stanisavljevic@polycaptil.fr" target=3D"_blank"><span lang=3D"=
EN-US">n.stanisavljevic@polycaptil.fr</span></a><span lang=3D"EN-US">&gt;<b=
r><b>Cc=C2=A0:</b> Yocto Project &lt;</span><a href=3D"mailto:yocto@yoctopr=
oject.org" target=3D"_blank"><span lang=3D"EN-US">yocto@yoctoproject.org</s=
pan></a><span lang=3D"EN-US">&gt;; Marc Ferland &lt;</span><a href=3D"mailt=
o:marc.ferland@gmail.com" target=3D"_blank"><span lang=3D"EN-US">marc.ferla=
nd@gmail.com</span></a><span lang=3D"EN-US">&gt;<br><b>Objet=C2=A0:</b> Re:=
 [yocto] yocto touchscreen<u></u><u></u></span></p><p class=3D"MsoNormal"><=
span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p><div><div><p class=3D"Ms=
oNormal"><span lang=3D"EN-US">Hello Nikola,<u></u><u></u></span></p></div><=
div><p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span>=
</p></div><div><p class=3D"MsoNormal"><span lang=3D"EN-US">Two things, whic=
h immediately came to my mind:<u></u><u></u></span></p></div><div><p class=
=3D"MsoNormal"><span lang=3D"EN-US">[1 - Harder way] Either to change xorg-=
x11-server in sumo to match at least xorg-x11-server <b><i><span style=3D"c=
olor:red">1.20.3;</span></i></b><u></u><u></u></span></p></div><div><p clas=
s=3D"MsoNormal"><b><i><span style=3D"color:red" lang=3D"EN-US">=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 </span></i></b><span style=3D"color:black" lang=3D"EN-US=
">(harder way, since few people know exact dependencies among various GFX p=
ackages, and what</span><span lang=3D"EN-US"><u></u><u></u></span></p></div=
><div><p class=3D"MsoNormal"><span style=3D"color:black" lang=3D"EN-US">=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 and how many packages need to be also cha=
nged to make xorg-x11-server 1.20.3 to work)</span><span lang=3D"EN-US"><u>=
</u><u></u></span></p></div><div><p class=3D"MsoNormal"><span style=3D"colo=
r:black" lang=3D"EN-US">[2 - Easier Way] Either to migrate YOCTO to Thud, w=
here the correct xorg-x11-server package 1.20.3</span><span lang=3D"EN-US">=
<u></u><u></u></span></p></div><div><p class=3D"MsoNormal"><span style=3D"c=
olor:black" lang=3D"EN-US">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 is already fixed =
and set!</span><span lang=3D"EN-US"><u></u><u></u></span></p></div><div><p =
class=3D"MsoNormal"><span style=3D"color:black" lang=3D"EN-US">=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 (easier way, since exact dependencies among various GFX =
packages are already set for 1.20.3)</span><span lang=3D"EN-US"><u></u><u><=
/u></span></p></div><div><p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u=
>=C2=A0<u></u></span></p></div><div><p class=3D"MsoNormal"><span style=3D"c=
olor:black" lang=3D"EN-US">Best Regards,</span><span lang=3D"EN-US"><u></u>=
<u></u></span></p></div><div><p class=3D"MsoNormal"><span style=3D"color:bl=
ack" lang=3D"EN-US">Zoran</span><span lang=3D"EN-US"><u></u><u></u></span><=
/p></div><div><p class=3D"MsoNormal"><span style=3D"color:black" lang=3D"EN=
-US">_______=C2=A0 </span><span lang=3D"EN-US"><u></u><u></u></span></p></d=
iv></div><p class=3D"MsoNormal" style=3D"margin-bottom:12pt"><span lang=3D"=
EN-US"><u></u>=C2=A0<u></u></span></p><div><div><p class=3D"MsoNormal"><spa=
n lang=3D"EN-US">On Mon, Feb 18, 2019 at 2:48 PM Stanisavljevic &lt;</span>=
<a href=3D"mailto:n.stanisavljevic@polycaptil.fr" target=3D"_blank"><span l=
ang=3D"EN-US">n.stanisavljevic@polycaptil.fr</span></a><span lang=3D"EN-US"=
>&gt; wrote:<u></u><u></u></span></p></div><blockquote style=3D"border-colo=
r:currentcolor currentcolor currentcolor rgb(204,204,204);border-style:none=
 none none solid;border-width:medium medium medium 1pt;padding:0cm 0cm 0cm =
6pt;margin:5pt 0cm 5pt 4.8pt"><div><div><p class=3D"MsoNormal"><span lang=
=3D"EN-US">Thank you Zoran for trying to help me.<br>I tried to resolve the=
 problem, but I didn=E2=80=99t succeed yet, I think I will to continue, and=
 If after some time I find nothing, I=E2=80=99m going to migrate to the thu=
d version.<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-=
US">=C2=A0<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-=
US">I will maybe try to use Bugzilla<u></u><u></u></span></p><p class=3D"Ms=
oNormal"><span lang=3D"EN-US">=C2=A0<u></u><u></u></span></p><p class=3D"Ms=
oNormal"><span lang=3D"EN-US">Nikola<u></u><u></u></span></p><p class=3D"Ms=
oNormal"><b><span lang=3D"EN-US">De=C2=A0:</span></b><span lang=3D"EN-US"> =
Zoran Stojsavljevic &lt;</span><a href=3D"mailto:zoran.stojsavljevic@gmail.=
com" target=3D"_blank"><span lang=3D"EN-US">zoran.stojsavljevic@gmail.com</=
span></a><span lang=3D"EN-US">&gt; <br><b>Envoy=C3=A9=C2=A0:</b> mardi 5 f=
=C3=A9vrier 2019 19:28<br><b>=C3=80=C2=A0:</b> Stanisavljevic &lt;</span><a=
 href=3D"mailto:n.stanisavljevic@polycaptil.fr" target=3D"_blank"><span lan=
g=3D"EN-US">n.stanisavljevic@polycaptil.fr</span></a><span lang=3D"EN-US">&=
gt;<br><b>Cc=C2=A0:</b> Yocto Project &lt;</span><a href=3D"mailto:yocto@yo=
ctoproject.org" target=3D"_blank"><span lang=3D"EN-US">yocto@yoctoproject.o=
rg</span></a><span lang=3D"EN-US">&gt;; </span><a href=3D"mailto:marc.ferla=
nd@gmail.com" target=3D"_blank"><span lang=3D"EN-US">marc.ferland@gmail.com=
</span></a><span lang=3D"EN-US"><br><b>Objet=C2=A0:</b> Re: [yocto] yocto t=
ouchscreen<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-=
US">=C2=A0<u></u><u></u></span></p><div><p class=3D"MsoNormal" style=3D"mar=
gin-bottom:12pt"><span lang=3D"EN-US">Hello Nikola,<br><br>Let us try to cu=
t to the chase!<br><br>After reading what Marc Ferland says/writes, and loo=
king into the following:<br></span><a href=3D"https://bugzilla.redhat.com/s=
how_bug.cgi?id=3D1650634" target=3D"_blank"><span lang=3D"EN-US">https://bu=
gzilla.redhat.com/show_bug.cgi?id=3D1650634</span></a><span lang=3D"EN-US">=
<u></u><u></u></span></p><div><p class=3D"MsoNormal"><span lang=3D"EN-US">I=
 have spotted the following:<u></u><u></u></span></p></div><div><p class=3D=
"MsoNormal"><span class=3D"gmail-m_-2391544497964063811gmail-m_657412175501=
3685205gmail-m_-2573238030158729977gmail-m3069207977298945462gmail-fn"><b><=
i><u><span lang=3D"EN-US">Pat Riehecky</span></u></i></b></span><span class=
=3D"gmail-m_-2391544497964063811gmail-m_6574121755013685205gmail-m_-2573238=
030158729977gmail-m3069207977298945462gmail-vcard"><b><i><u><span lang=3D"E=
N-US"> </span></u></i></b></span><span class=3D"gmail-m_-239154449796406381=
1gmail-m_6574121755013685205gmail-m_-2573238030158729977gmail-m306920797729=
8945462gmail-bzcommenttime"><b><i><u><span lang=3D"EN-US">2018-11-20 14:28:=
22 UTC</span></u></i></b></span><span class=3D"gmail-m_-2391544497964063811=
gmail-m_6574121755013685205gmail-m_-2573238030158729977gmail-m3069207977298=
945462gmail-bzcommenttime"><b><i><span lang=3D"EN-US"> </span></i></b></spa=
n><span lang=3D"EN-US"><u></u><u></u></span></p></div><p class=3D"MsoNormal=
" style=3D"margin-bottom:12pt"><i><u><span lang=3D"EN-US">t<b>he bug remain=
s with the elrepo kernels:<br>kernel-ml-4.19.2-1.el7.elrepo.x86_64<br>kerne=
l-lt-4.4.163-1.el7.elrepo.x86_64</b></span></u></i><span lang=3D"EN-US"><u>=
</u><u></u></span></p><div><p class=3D"MsoNormal"><span lang=3D"EN-US">I ne=
ver had this problem since I do not use Xorg (GFX), rather I only<u></u><u>=
</u></span></p></div><div><p class=3D"MsoNormal"><span lang=3D"EN-US">use s=
erial console from VBox VM from my BBB (pass-through).<u></u><u></u></span>=
</p></div><p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0<u></u><u></u><=
/span></p><div><p class=3D"MsoNormal"><span lang=3D"EN-US">Thus, my suggest=
ion for you, to skip the whole mess is to rebuild your<u></u><u></u></span>=
</p></div><div><p class=3D"MsoNormal"><span lang=3D"EN-US">distro <b><i><u>=
<span style=3D"color:red">in the light of YOCTO Project 2.6.1 (thud 20.0.0.=
1).</span></u></i></b><u></u><u></u></span></p></div><p class=3D"MsoNormal"=
><span lang=3D"EN-US">=C2=A0<u></u><u></u></span></p><div><p class=3D"MsoNo=
rmal"><span lang=3D"EN-US">My best guess (then you&#39;ll inherit YOCTO ker=
nel 4.20.x with fixed Xorg - X11).<u></u><u></u></span></p></div><div><p cl=
ass=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0<u></u><u></u></span></p></div=
><div><p class=3D"MsoNormal"><span lang=3D"EN-US">I am using Fedora 29 on m=
y laptop. Also from the bugzilla:<u></u><u></u></span></p></div><div><div><=
p class=3D"MsoNormal"><span class=3D"gmail-m_-2391544497964063811gmail-m_65=
74121755013685205gmail-m_-2573238030158729977gmail-m3069207977298945462gmai=
l-fn"><b><i><u><span lang=3D"EN-US">Pat Riehecky</span></u></i></b></span><=
span class=3D"gmail-m_-2391544497964063811gmail-m_6574121755013685205gmail-=
m_-2573238030158729977gmail-m3069207977298945462gmail-vcard"><b><i><u><span=
 lang=3D"EN-US"> </span></u></i></b></span><span class=3D"gmail-m_-23915444=
97964063811gmail-m_6574121755013685205gmail-m_-2573238030158729977gmail-m30=
69207977298945462gmail-bzcommenttime"><b><i><u><span lang=3D"EN-US">2018-11=
-20 15:46:11 UTC </span></u></i></b></span><span lang=3D"EN-US"><u></u><u><=
/u></span></p></div><p class=3D"MsoNormal"><b><i><u><span style=3D"font-fam=
ily:&quot;Arial&quot;,sans-serif" lang=3D"EN-US">Bug resolved by rebuilding=
 xorg-x11-server-1.20.3-1.fc29 [1] for 7.6.</span></u></i></b><span lang=3D=
"EN-US"><u></u><u></u></span></p></div><div><p class=3D"MsoNormal"><b><i><u=
><span style=3D"font-family:&quot;Arial&quot;,sans-serif" lang=3D"EN-US">Wi=
th this in mind it appears to be an Xorg server bug rather than fbdev.</spa=
n></u></i></b><span lang=3D"EN-US"><u></u><u></u></span></p></div><p class=
=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0<u></u><u></u></span></p><div><p =
class=3D"MsoNormal"><span lang=3D"EN-US">From my HP EliteBook 840 G1 Fedora=
 29, Xorg.0.log - February 5th, 2019.,<u></u><u></u></span></p></div><div><=
p class=3D"MsoNormal"><span lang=3D"EN-US">I have the following:<u></u><u><=
/u></span></p></div><p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0<u></=
u><u></u></span></p><div><p class=3D"MsoNormal"><span lang=3D"EN-US">[ =C2=
=A0 =C2=A026.955] Kernel command line: BOOT_IMAGE=3D/<b><i><u><span style=
=3D"color:red">vmlinuz-4.20.6-200.fc29.x86_64</span></u></i></b><u></u><u><=
/u></span></p></div><div><p class=3D"MsoNormal"><span lang=3D"EN-US">root=
=3D/dev/mapper/fedora-root ro </span><a href=3D"http://rd.lvm.lv" target=3D=
"_blank"><span lang=3D"EN-US">rd.lvm.lv</span></a><span lang=3D"EN-US">=3Df=
edora/root </span><a href=3D"http://rd.lvm.lv" target=3D"_blank"><span lang=
=3D"EN-US">rd.lvm.lv</span></a><span lang=3D"EN-US">=3Dfedora/swap rhgb<u><=
/u><u></u></span></p></div><div><p class=3D"MsoNormal">quiet LANG=3Den_US.U=
TF-8<u></u><u></u></p></div><p class=3D"MsoNormal"><span lang=3D"EN-US">[ =
=C2=A0 =C2=A026.955] Build Date: 11 January 2019 =C2=A012:47:38PM<br><b><i>=
<u><span style=3D"color:red">[ =C2=A0=C2=A0 26.955] Build ID: xorg-x11-serv=
er 1.20.3-3.fc29</span></u></i></b><br>[ =C2=A0 =C2=A026.955] Current versi=
on of pixman: 0.34.0<br><br>Best Regards,<br>Zoran<br>_______<br><br>On Tue=
, Feb 5, 2019 at 2:49 PM Zoran Stojsavljevic &lt;</span><a href=3D"mailto:z=
oran.stojsavljevic@gmail.com" target=3D"_blank"><span lang=3D"EN-US">zoran.=
stojsavljevic@gmail.com</span></a><span lang=3D"EN-US">&gt; wrote:<br>&gt;<=
br>&gt; Hello Nikola,<br>&gt;<br>&gt; &gt; I created a kernel recipe with a=
 bbappend file, and, I added<br>&gt; &gt; the same defconfig that I used fo=
r krogoth version.<br>&gt; &gt; The bbappend for kernel recipe concern meta=
-ti layer.<br>&gt; &gt; I didn&#39;t edited defconfig file in other layers =
which contain a<br>&gt; &gt; kernel recipe.<br>&gt;<br>&gt; It could be som=
e problem that Sumo does not take your bbappend file into the<br>&gt; consi=
deration as placed.<br>&gt;<br>&gt; It could be something else, as well.<br=
>&gt;<br>&gt; I have the same issue with my defconfig file for my Thud Beag=
le Bone Black (BBB)<br>&gt; standard board. Every time I recompile my YOCTO=
 for it for different releases, I need<br>&gt; to import my specific defcon=
fig. But I use complete different repos for my standard<br>&gt; Beagle Bone=
 Black than YOCTO BBB Poky reference distro.<br>&gt;<br>&gt; Here is what I=
 use in Thud (my bblayers.conf):<br>&gt;<br>&gt; POKY_BBLAYERS_CONF_VERSION=
 =3D &quot;2&quot;<br>&gt; BBPATH =3D &quot;${TOPDIR}&quot;<br>&gt; BBFILES=
 ?=3D &quot;&quot;<br>&gt;<br>&gt; BBLAYERS ?=3D &quot; \<br>&gt; =C2=A0 =
=C2=A0 /home/user/projects2/beaglebone-black/yocto-thud/meta-bbb \<br>&gt; =
=C2=A0 =C2=A0 /home/user/projects2/beaglebone-black/yocto-thud/meta-openemb=
edded/meta-networking \<br>&gt; =C2=A0 =C2=A0 /home/user/projects2/beaglebo=
ne-black/yocto-thud/meta-openembedded/meta-oe \<br>&gt; =C2=A0 =C2=A0 /home=
/user/projects2/beaglebone-black/yocto-thud/meta-openembedded/meta-python \=
<br>&gt; =C2=A0 =C2=A0 /home/user/projects2/beaglebone-black/yocto-thud/met=
a-qt5 \<br>&gt; =C2=A0 =C2=A0 /home/user/projects2/beaglebone-black/yocto-t=
hud/poky/meta \<br>&gt; =C2=A0 =C2=A0 /home/user/projects2/beaglebone-black=
/yocto-thud/poky/meta-poky&quot;<br>&gt;<br>&gt; There, I replace defconfig=
 in this layer: /home/user/projects2/beaglebone-black/yocto-thud/meta-bbb<b=
r>&gt; with my own defconfig.<br>&gt;<br>&gt; In the directory:<br>&gt; /ho=
me/user/projects2/beaglebone-black/yocto-thud/meta-bbb/recipes-kernel/linux=
/linux-stable-4.19/beaglebone<br>&gt;<br>&gt; If you use only Poky reposito=
ry, then you need to read the following paragraph (how to use<br>&gt; your =
defconfig with Poky):<br>&gt;<br>&gt; [2.3.3. Changing the Configuration] Y=
OCTO Project Linux Development Manual<br>&gt; </span><a href=3D"https://www=
.yoctoproject.org/docs/2.5/kernel-dev/kernel-dev.html#using-an-in-tree-defc=
onfig-file" target=3D"_blank"><span lang=3D"EN-US">https://www.yoctoproject=
.org/docs/2.5/kernel-dev/kernel-dev.html#using-an-in-tree-defconfig-file</s=
pan></a><span lang=3D"EN-US"><br>&gt; 2.3.3. Changing the Configuration<br>=
&gt;<br>&gt; I hope this will help. Please, keep us posted!<br>&gt;<br>&gt;=
 Zoran<br>&gt; _______<br>&gt;<br>&gt;<br>&gt; On Tue, Feb 5, 2019 at 10:54=
 AM Stanisavljevic &lt;</span><a href=3D"mailto:n.stanisavljevic@polycaptil=
.fr" target=3D"_blank"><span lang=3D"EN-US">n.stanisavljevic@polycaptil.fr<=
/span></a><span lang=3D"EN-US">&gt; wrote:<br>&gt;&gt;<br>&gt;&gt; Hy Zoran=
<br>&gt;&gt;<br>&gt;&gt; Thank&#39;s to take time to answer<br>&gt;&gt;<br>=
&gt;&gt; I created a kernel recipe with a bbappend file, and, I added the s=
ame defconfig that I used for krogoth version.<br>&gt;&gt; The bbappend for=
 kernel recipe concern meta-ti layer.<br>&gt;&gt; I didn&#39;t edited defco=
nfig file in other layers which contain a kernel recipe.<br>&gt;&gt;<br>&gt=
;&gt; I think it&#39;s a problem which concern the screen resolution, scree=
n frequency and adc touchscreen.<br>&gt;&gt; Something is different between=
 the krogoth and sumo version, but I didn&#39;t find what is changed...<br>=
&gt;&gt;<br>&gt;&gt; Xrandr show that problem is maybe around the screen re=
solution.<br>&gt;&gt; It&#39;s show the next message : &quot;Size 1024x768 =
not found in available modes&quot;<br>&gt;&gt; Maybe it was changed between=
 krogoth and sumo version...but I don&#39;t know where it is indicated if s=
ources files...<br>&gt;&gt;<br>&gt;&gt; What do you think ? problem can be =
around the screen resolution, screen frequency and adc touchscreen ?<br>&gt=
;&gt;<br>&gt;&gt; Nikola<br>&gt;&gt;<br>&gt;&gt; -----Message d&#39;origine=
-----<br>&gt;&gt; De : Zoran Stojsavljevic &lt;</span><a href=3D"mailto:zor=
an.stojsavljevic@gmail.com" target=3D"_blank"><span lang=3D"EN-US">zoran.st=
ojsavljevic@gmail.com</span></a><span lang=3D"EN-US">&gt;<br>&gt;&gt; Envoy=
=C3=A9 : lundi 4 f=C3=A9vrier 2019 17:08<br>&gt;&gt; =C3=80 : Stanisavljevi=
c &lt;</span><a href=3D"mailto:n.stanisavljevic@polycaptil.fr" target=3D"_b=
lank"><span lang=3D"EN-US">n.stanisavljevic@polycaptil.fr</span></a><span l=
ang=3D"EN-US">&gt;<br>&gt;&gt; Cc : Yocto Project &lt;</span><a href=3D"mai=
lto:yocto@yoctoproject.org" target=3D"_blank"><span lang=3D"EN-US">yocto@yo=
ctoproject.org</span></a><span lang=3D"EN-US">&gt;<br>&gt;&gt; Objet : Re: =
[yocto] yocto touchscreen<br>&gt;&gt;<br>&gt;&gt; &gt; I built a first vers=
ion of this os with version krogoth and it works fine.<br>&gt;&gt; &gt;<br>=
&gt;&gt; &gt; Now I build a second version of this os with version sumo and=
 the<br>&gt;&gt; &gt; touch screen works fine during boot process but when =
kernel is loaded,<br>&gt;&gt; &gt; touchscreen freeze / lock and impossible=
 to use it.<br>&gt;&gt;<br>&gt;&gt; Did you compare Krogoth kernel defconfi=
g with Sumo kernel defconfig?<br>&gt;&gt;<br>&gt;&gt; May there are some mi=
smatches in drivers&#39; setup between these two?<br>&gt;&gt;<br>&gt;&gt; Z=
oran<br>&gt;&gt; _______<br>&gt;&gt;<br>&gt;&gt; On Mon, Feb 4, 2019 at 12:=
24 PM Stanisavljevic &lt;</span><a href=3D"mailto:n.stanisavljevic@polycapt=
il.fr" target=3D"_blank"><span lang=3D"EN-US">n.stanisavljevic@polycaptil.f=
r</span></a><span lang=3D"EN-US">&gt; wrote:<br>&gt;&gt; &gt;<br>&gt;&gt; &=
gt; Hy Team,<br>&gt;&gt; &gt;<br>&gt;&gt; &gt;<br>&gt;&gt; &gt;<br>&gt;&gt;=
 &gt; I have a problem<br>&gt;&gt; &gt;<br>&gt;&gt; &gt;<br>&gt;&gt; &gt;<b=
r>&gt;&gt; &gt; I buid a custom os for AM335x processor and I used yocto to=
 do it.<br>&gt;&gt; &gt;<br>&gt;&gt; &gt;<br>&gt;&gt; &gt;<br>&gt;&gt; &gt;=
 I build a first version of this os with version krogoth and it work fine.<=
br>&gt;&gt; &gt;<br>&gt;&gt; &gt;<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; Now I b=
uild a second version of this os with version sumo and the touchscreen work=
 fine during boot process but when kernel is loaded, touchscreen freeze / l=
ock and impossible to use it.<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; The termina=
l is printed on the touchscreen but the screen is locked, impossible to wri=
te a command or to move the mouse to select, =E2=80=A6.<br>&gt;&gt; &gt;<br=
>&gt;&gt; &gt;<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; Here is the log of boot to=
 the user session (log got with serial communication between PC and board) =
:<br>&gt;&gt; &gt;<br>&gt;&gt; &gt;<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; U-Boo=
t SPL 2017.05-00001-g041a398 (May 02 2018 - 18:36:57)<br>&gt;&gt; &gt;<br>&=
gt;&gt; &gt; Trying to boot from MMC1<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; rea=
ding uboot.env<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; reading u-boot.img<br>&gt;=
&gt; &gt;<br>&gt;&gt; &gt; reading u-boot.img<br>&gt;&gt; &gt;<br>&gt;&gt; =
&gt; reading u-boot.img<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; reading u-boot.im=
g<br>&gt;&gt; &gt;<br>&gt;&gt; &gt;<br>&gt;&gt; &gt;<br>&gt;&gt; &gt;<br>&g=
t;&gt; &gt;<br>&gt;&gt; &gt; U-Boot 2017.05-00001-g041a398 (May 02 2018 - 1=
8:36:57 +0200)<br>&gt;&gt; &gt;<br>&gt;&gt; &gt;<br>&gt;&gt; &gt;<br>&gt;&g=
t; &gt; CPU =C2=A0: AM335X-GP rev 2.1<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; Mod=
el: TI AM335x EVM-SK<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; DRAM: =C2=A0256 MiB<=
br>&gt;&gt; &gt;<br>&gt;&gt; &gt; NAND: =C2=A00 MiB<br>&gt;&gt; &gt;<br>&gt=
;&gt; &gt; MMC: =C2=A0 OMAP SD/MMC: 0, OMAP SD/MMC: 1<br>&gt;&gt; &gt;<br>&=
gt;&gt; &gt; reading uboot.env<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; ERROR: No =
USB device found<br>&gt;&gt; &gt;<br>&gt;&gt; &gt;<br>&gt;&gt; &gt;<br>&gt;=
&gt; &gt; at drivers/usb/gadget/ether.c:2709/usb_ether_init()<br>&gt;&gt; &=
gt;<br>&gt;&gt; &gt; Net: =C2=A0 CACHE: Misaligned operation at range [8df3=
23c0, 8df32464]<br>&gt;&gt; &gt;<br>&gt;&gt; &gt;<br>&gt;&gt; &gt;<br>&gt;&=
gt; &gt; Warning: ethernet@4a100000 using MAC address from ROM<br>&gt;&gt; =
&gt;<br>&gt;&gt; &gt; eth0: ethernet@4a100000<br>&gt;&gt; &gt;<br>&gt;&gt; =
&gt; Hit any key to stop autoboot: =C2=A00<br>&gt;&gt; &gt;<br>&gt;&gt; &gt=
; reading zImage<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; 3412752 bytes read in 25=
1 ms (13 MiB/s)<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; reading dtb<br>&gt;&gt; &=
gt;<br>&gt;&gt; &gt; 39733 bytes read in 12 ms (3.2 MiB/s)<br>&gt;&gt; &gt;=
<br>&gt;&gt; &gt; ## Flattened Device Tree blob at 82000000<br>&gt;&gt; &gt=
;<br>&gt;&gt; &gt; =C2=A0 =C2=A0Booting using the fdt blob at 0x82000000<br=
>&gt;&gt; &gt;<br>&gt;&gt; &gt; =C2=A0 =C2=A0Loading Device Tree to 8df1900=
0, end 8df25b34 ... OK<br>&gt;&gt; &gt;<br>&gt;&gt; &gt;<br>&gt;&gt; &gt;<b=
r>&gt;&gt; &gt; Starting kernel ...<br>&gt;&gt; &gt;<br>&gt;&gt; &gt;<br>&g=
t;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A00.000000] Booting Linux on phys=
ical CPU 0x0<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A00.000000] Ini=
tializing cgroup subsys cpu<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=
=A00.000000] Initializing cgroup subsys cpuacct<br>&gt;&gt; &gt;<br>&gt;&gt=
; &gt; [ =C2=A0 =C2=A00.000000] Linux version 4.4.19-ge581bb1cac (polycapti=
l@polycaptil-HP-Notebook) (gcc version 5.3.0 (GCC) ) #1 PREEMPT Thu May 24 =
11:42:17 CEST 2018<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A00.00000=
0] CPU: ARMv7 Processor [413fc082] revision 2 (ARMv7), cr=3D10c5387d<br>&gt=
;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A00.000000] CPU: PIPT / VIPT nonal=
iasing data cache, VIPT aliasing instruction cache<br>&gt;&gt; &gt;<br>&gt;=
&gt; &gt; [ =C2=A0 =C2=A00.000000] Machine model: TI AM335x EVM-SK<br>&gt;&=
gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A00.000000] cma: Reserved 48 MiB at =
0x8a800000<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A00.000000] Memor=
y policy: Data cache writeback<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =
=C2=A00.000000] CPU: All CPU(s) started in SVC mode.<br>&gt;&gt; &gt;<br>&g=
t;&gt; &gt; [ =C2=A0 =C2=A00.000000] AM335X ES2.1 (sgx neon )<br>&gt;&gt; &=
gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A00.000000] Built 1 zonelists in Zone ord=
er, mobility grouping on.=C2=A0 Total pages: 64960<br>&gt;&gt; &gt;<br>&gt;=
&gt; &gt; [ =C2=A0 =C2=A00.000000] Kernel command line: console=3DttyO0,115=
200 root=3D/dev/mmcblk0p3 rw<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=
=A00.000000] PID hash table entries: 1024 (order: 0, 4096 bytes)<br>&gt;&gt=
; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A00.000000] Dentry cache hash table en=
tries: 32768 (order: 5, 131072 bytes)<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =
=C2=A0 =C2=A00.000000] Inode-cache hash table entries: 16384 (order: 4, 655=
36 bytes)<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A00.000000] Memory=
: 200444K/262144K available (6495K kernel code, 313K rwdata, 2368K rodata, =
260K init, 265K bss, 12548K reserved, 49152K cma-reserved, 0K highmem)<br>&=
gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A00.000000] Virtual kernel memor=
y layout:<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A00.000000] =C2=A0=
 =C2=A0 vector =C2=A0: 0xffff0000 - 0xffff1000 =C2=A0 ( =C2=A0 4 kB)<br>&gt=
;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A00.000000] =C2=A0 =C2=A0 fixmap =
=C2=A0: 0xffc00000 - 0xfff00000 =C2=A0 (3072 kB)<br>&gt;&gt; &gt;<br>&gt;&g=
t; &gt; [ =C2=A0 =C2=A00.000000] =C2=A0 =C2=A0 vmalloc : 0xd0800000 - 0xff8=
00000 =C2=A0 ( 752 MB)<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A00.0=
00000] =C2=A0 =C2=A0 lowmem =C2=A0: 0xc0000000 - 0xd0000000 =C2=A0 ( 256 MB=
)<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A00.000000] =C2=A0 =C2=A0 =
pkmap =C2=A0 : 0xbfe00000 - 0xc0000000 =C2=A0 ( =C2=A0 2 MB)<br>&gt;&gt; &g=
t;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A00.000000] =C2=A0 =C2=A0 modules : 0xbf00=
0000 - 0xbfe00000 =C2=A0 ( =C2=A014 MB)<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [=
 =C2=A0 =C2=A00.000000] =C2=A0 =C2=A0 =C2=A0 .text : 0xc0008000 - 0xc08b003=
4 =C2=A0 (8865 kB)<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A00.00000=
0] =C2=A0 =C2=A0 =C2=A0 .init : 0xc08b1000 - 0xc08f2000 =C2=A0 ( 260 kB)<br=
>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A00.000000] =C2=A0 =C2=A0 =C2=
=A0 .data : 0xc08f2000 - 0xc09407f0 =C2=A0 ( 314 kB)<br>&gt;&gt; &gt;<br>&g=
t;&gt; &gt; [ =C2=A0 =C2=A00.000000] =C2=A0 =C2=A0 =C2=A0 =C2=A0.bss : 0xc0=
9407f0 - 0xc0982d58 =C2=A0 ( 266 kB)<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =
=C2=A0 =C2=A00.000000] SLUB: HWalign=3D64, Order=3D0-3, MinObjects=3D0, CPU=
s=3D1, Nodes=3D1<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A00.000000]=
 Preemptible hierarchical RCU implementation.<br>&gt;&gt; &gt;<br>&gt;&gt; =
&gt; [ =C2=A0 =C2=A00.000000] =C2=A0Build-time adjustment of leaf fanout to=
 32.<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A00.000000] NR_IRQS:16 =
nr_irqs:16 16<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A00.000000] IR=
Q: Found an INTC at 0xfa200000 (revision 5.0) with 128 interrupts<br>&gt;&g=
t; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A00.000000] OMAP clockevent source: t=
imer2 at 24000000 Hz<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A00.000=
015] sched_clock: 32 bits at 24MHz, resolution 41ns, wraps every 8947848497=
1ns<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A00.000036] clocksource:=
 timer1: mask: 0xffffffff max_cycles: 0xffffffff, max_idle_ns: 79635851949 =
ns<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A00.000047] OMAP clocksou=
rce: timer1 at 24000000 Hz<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=
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
 Giometti &lt;</span><a href=3D"mailto:giometti@linux.it" target=3D"_blank"=
><span lang=3D"EN-US">giometti@linux.it</span></a><span lang=3D"EN-US">&gt;=
<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A00.302676] PTP clock suppo=
rt registered<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A00.302741] ED=
AC MC: Ver: 3.0.0<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A00.303966=
] omap-mailbox 480c8000.mailbox: omap mailbox rev 0x400<br>&gt;&gt; &gt;<br=
>&gt;&gt; &gt; [ =C2=A0 =C2=A00.304332] Advanced Linux Sound Architecture D=
river Initialized.<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A00.30551=
2] clocksource: Switched to clocksource timer1<br>&gt;&gt; &gt;<br>&gt;&gt;=
 &gt; [ =C2=A0 =C2=A00.316775] NET: Registered protocol family 2<br>&gt;&gt=
; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A00.317599] TCP established hash table=
 entries: 2048 (order: 1, 8192 bytes)<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =
=C2=A0 =C2=A00.317636] TCP bind hash table entries: 2048 (order: 1, 8192 by=
tes)<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A00.317663] TCP: Hash t=
ables configured (established 2048 bind 2048)<br>&gt;&gt; &gt;<br>&gt;&gt; =
&gt; [ =C2=A0 =C2=A00.317748] UDP hash table entries: 256 (order: 0, 4096 b=
ytes)<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A00.317767] UDP-Lite h=
ash table entries: 256 (order: 0, 4096 bytes)<br>&gt;&gt; &gt;<br>&gt;&gt; =
&gt; [ =C2=A0 =C2=A00.317925] NET: Registered protocol family 1<br>&gt;&gt;=
 &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A00.318352] RPC: Registered named UNIX =
socket transport module.<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A00=
.318366] RPC: Registered udp transport module.<br>&gt;&gt; &gt;<br>&gt;&gt;=
 &gt; [ =C2=A0 =C2=A00.318372] RPC: Registered tcp transport module.<br>&gt=
;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A00.318379] RPC: Registered tcp NF=
Sv4.1 backchannel transport module.<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=
=A0 =C2=A00.319330] hw perfevents: enabled with armv7_cortex_a8 PMU driver,=
 5 counters available<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A00.32=
1392] futex hash table entries: 256 (order: -1, 3072 bytes)<br>&gt;&gt; &gt=
;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A00.329780] squashfs: version 4.0 (2009/01/=
31) Phillip Lougher<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A00.3307=
17] NFS: Registering the id_resolver key type<br>&gt;&gt; &gt;<br>&gt;&gt; =
&gt; [ =C2=A0 =C2=A00.330798] Key type id_resolver registered<br>&gt;&gt; &=
gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A00.330807] Key type id_legacy registered=
<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A00.330886] ntfs: driver 2.=
1.32 [Flags: R/O].<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A00.33467=
3] Block layer SCSI generic (bsg) driver version 0.4 loaded (major 248)<br>=
&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A00.334706] io scheduler noop r=
egistered<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A00.334719] io sch=
eduler deadline registered<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=
=A00.334877] io scheduler cfq registered (default)<br>&gt;&gt; &gt;<br>&gt;=
&gt; &gt; [ =C2=A0 =C2=A00.336555] pinctrl-single 44e10800.pinmux: 142 pins=
 at pa f9e10800 size 568<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A00=
.339415] backlight supply power not found, using dummy regulator<br>&gt;&gt=
; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A00.402480] Serial: 8250/16550 driver,=
 10 ports, IRQ sharing disabled<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =
=C2=A00.406962] 44e09000.serial: ttyS0 at MMIO 0x44e09000 (irq =3D 158, bas=
e_baud =3D 3000000) is a 8250<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =
=C2=A01.017357] console [ttyS0] enabled<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [=
 =C2=A0 =C2=A01.022206] 48022000.serial: ttyS1 at MMIO 0x48022000 (irq =3D =
159, base_baud =3D 3000000) is a 8250<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =
=C2=A0 =C2=A01.032273] [drm] Initialized drm 1.1.0 20060810<br>&gt;&gt; &gt=
;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A01.039564] [drm] Supports vblank timestamp=
 caching Rev 2 (21.10.2013).<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=
=A01.046349] [drm] No driver support for vblank timestamp query.<br>&gt;&gt=
; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A01.062121] Console: switching to colo=
ur frame buffer device 60x34<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=
=A01.070360] tilcdc 4830e000.lcdc: fb0: =C2=A0frame buffer device<br>&gt;&g=
t; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A01.105531] [drm] Initialized tilcdc =
1.0.0 20121205 on minor 0<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A0=
1.118644] loop: module loaded<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =
=C2=A01.124253] libphy: Fixed MDIO Bus: probed<br>&gt;&gt; &gt;<br>&gt;&gt;=
 &gt; [ =C2=A0 =C2=A01.185550] davinci_mdio 4a101000.mdio: davinci mdio rev=
ision 1.6<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A01.191695] davinc=
i_mdio 4a101000.mdio: detected phy mask fffffffe<br>&gt;&gt; &gt;<br>&gt;&g=
t; &gt; [ =C2=A0 =C2=A01.198786] libphy: 4a101000.mdio: probed<br>&gt;&gt; =
&gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A01.202886] davinci_mdio 4a101000.mdio: =
phy[0]: device 4a101000.mdio:00, driver SMSC LAN8710/LAN8720<br>&gt;&gt; &g=
t;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A01.212890] cpsw 4a100000.ethernet: Detect=
ed MACID =3D a0:f6:fd:4c:a6:ba<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =
=C2=A01.220531] cpsw 4a100000.ethernet: cpsw: Detected MACID =3D c4:ed:ba:8=
8:2a:92<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A01.229382] mousedev=
: PS/2 mouse device common for all mice<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [=
 =C2=A0 =C2=A01.235845] i2c /dev entries driver<br>&gt;&gt; &gt;<br>&gt;&gt=
; &gt; [ =C2=A0 =C2=A01.240508] cpuidle: enable-method property &#39;ti,am3=
352&#39; found operations<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A0=
1.248197] omap_hsmmc 48060000.mmc: Got CD GPIO<br>&gt;&gt; &gt;<br>&gt;&gt;=
 &gt; [ =C2=A0 =C2=A01.275713] pinctrl-single 44e10800.pinmux: bad data for=
 mux pinmux_mmc2_pins<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A01.28=
2895] pinctrl-single 44e10800.pinmux: no pins entries for pinmux_mmc2_pins<=
br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A01.317159] ledtrig-cpu: reg=
istered to indicate activity on CPUs<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =
=C2=A0 =C2=A01.326069] NET: Registered protocol family 10<br>&gt;&gt; &gt;<=
br>&gt;&gt; &gt; [ =C2=A0 =C2=A01.332092] sit: IPv6 over IPv4 tunneling dri=
ver<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A01.337715] NET: Registe=
red protocol family 17<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A01.3=
42510] Key type dns_resolver registered<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [=
 =C2=A0 =C2=A01.347095] omap_voltage_late_init: Voltage driver support not =
added<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A01.407145] tps65910-r=
tc tps65910-rtc: rtc core: registered tps65910-rtc as rtc0<br>&gt;&gt; &gt;=
<br>&gt;&gt; &gt; [ =C2=A0 =C2=A01.415278] omap_i2c 44e0b000.i2c: bus 0 rev=
0.11 at 400 kHz<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A01.421665] =
omap_hsmmc 48060000.mmc: Got CD GPIO<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =
=C2=A0 =C2=A01.426813] vmmc: supplied by vbat<br>&gt;&gt; &gt;<br>&gt;&gt; =
&gt; [ =C2=A0 =C2=A01.466341] pinctrl-single 44e10800.pinmux: bad data for =
mux pinmux_mmc2_pins<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A01.474=
737] pinctrl-single 44e10800.pinmux: no pins entries for pinmux_mmc2_pins<b=
r>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A01.513247] mmc0: host does n=
ot support reading read-only switch, assuming write-enable<br>&gt;&gt; &gt;=
<br>&gt;&gt; &gt; [ =C2=A0 =C2=A01.523414] mmc0: new high speed SDHC card a=
t address 0001<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A01.529635] m=
mcblk0: mmc0:0001 AS 3.72 GiB<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =
=C2=A01.535996] =C2=A0mmcblk0: p1 p2 p3<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [=
 =C2=A0 =C2=A01.595932] vdd_mpu: supplied by vbat<br>&gt;&gt; &gt;<br>&gt;&=
gt; &gt; [ =C2=A0 =C2=A01.602167] input: gpio_buttons@0 as /devices/platfor=
m/gpio_buttons@0/input/input0<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =
=C2=A01.618291] tps65910-rtc tps65910-rtc: setting system clock to 2019-02-=
01 20:07:49 UTC (1549051669)<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=
=A01.639394] lis3_reg: disabling<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0=
 =C2=A01.655732] ALSA device list:<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=
=A0 =C2=A01.658720] =C2=A0 No soundcards found.<br>&gt;&gt; &gt;<br>&gt;&gt=
; &gt; [ =C2=A0 =C2=A01.678290] EXT4-fs (mmcblk0p3): couldn&#39;t mount as =
ext3 due to feature incompatibilities<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =
=C2=A0 =C2=A01.696920] EXT4-fs (mmcblk0p3): couldn&#39;t mount as ext2 due =
to feature incompatibilities<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=
=A02.183999] EXT4-fs (mmcblk0p3): recovery complete<br>&gt;&gt; &gt;<br>&gt=
;&gt; &gt; [ =C2=A0 =C2=A02.196864] EXT4-fs (mmcblk0p3): mounted filesystem=
 with ordered data mode. Opts: (null)<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =
=C2=A0 =C2=A02.205084] VFS: Mounted root (ext4 filesystem) on device 179:3.=
<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A02.225670] devtmpfs: mount=
ed<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A02.235781] Freeing unuse=
d kernel memory: 260K (c08b1000 - c08f2000)<br>&gt;&gt; &gt;<br>&gt;&gt; &g=
t; [ =C2=A0 =C2=A02.242162] This architecture does not have kernel memory p=
rotection.<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; INIT: version 2.88 booting<br>=
&gt;&gt; &gt;<br>&gt;&gt; &gt; Starting udev<br>&gt;&gt; &gt;<br>&gt;&gt; &=
gt; [ =C2=A0 =C2=A03.090091] udevd[78]: starting version 3.2.5<br>&gt;&gt; =
&gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A03.106175] random: udevd: uninitialized=
 urandom read (16 bytes read, 26 bits of entropy available)<br>&gt;&gt; &gt=
;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A03.118667] random: udevd: uninitialized ur=
andom read (16 bytes read, 26 bits of entropy available)<br>&gt;&gt; &gt;<b=
r>&gt;&gt; &gt; [ =C2=A0 =C2=A03.128014] random: udevd: uninitialized urand=
om read (16 bytes read, 26 bits of entropy available)<br>&gt;&gt; &gt;<br>&=
gt;&gt; &gt; [ =C2=A0 =C2=A03.137335] random: udevd: uninitialized urandom =
read (16 bytes read, 26 bits of entropy available)<br>&gt;&gt; &gt;<br>&gt;=
&gt; &gt; [ =C2=A0 =C2=A03.218433] udevd[79]: starting eudev-3.2.5<br>&gt;&=
gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A03.325886] random: udevd: uninitial=
ized urandom read (16 bytes read, 29 bits of entropy available)<br>&gt;&gt;=
 &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A03.346155] random: udevd: uninitialize=
d urandom read (16 bytes read, 29 bits of entropy available)<br>&gt;&gt; &g=
t;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A04.820708] EXT4-fs (mmcblk0p3): re-mounte=
d. Opts: data=3Dordered<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A05.=
548283] random: dd: uninitialized urandom read (512 bytes read, 43 bits of =
entropy available)<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; INIT: Entering runleve=
l: 5<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; Configuring network interfaces... [ =
=C2=A0 =C2=A05.820546] net eth0: initializing cpsw version 1.12 (0)<br>&gt;=
&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A05.825987] net eth0: initialized c=
psw ale version 1.4<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A05.8311=
50] net eth0: ALE Table size 1024<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=
=A0 =C2=A05.838581] net eth0: phy found : id is : 0x7c0f1<br>&gt;&gt; &gt;<=
br>&gt;&gt; &gt; [ =C2=A0 =C2=A05.851838] IPv6: ADDRCONF(NETDEV_UP): eth0: =
link is not ready<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A09.896392=
] cpsw 4a100000.ethernet eth0: Link is Up - 100Mbps/Full - flow control rx/=
tx<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 =C2=A09.904635] IPv6: ADDRCON=
F(NETDEV_CHANGE): eth0: link becomes ready<br>&gt;&gt; &gt;<br>&gt;&gt; &gt=
; chown: unrecognized option &#39;--reference=3D/etc/resolv.conf&#39;<br>&g=
t;&gt; &gt;<br>&gt;&gt; &gt; BusyBox v1.27.2 (2018-11-05 21:16:09 UTC) mult=
i-call binary.<br>&gt;&gt; &gt;<br>&gt;&gt; &gt;<br>&gt;&gt; &gt;<br>&gt;&g=
t; &gt; Usage: chown [-Rh]... USER[:[GRP]] FILE...<br>&gt;&gt; &gt;<br>&gt;=
&gt; &gt; chmod: unrecognized option &#39;--reference=3D/etc/resolv.conf&#3=
9;<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; BusyBox v1.27.2 (2018-11-05 21:16:09 U=
TC) multi-call binary.<br>&gt;&gt; &gt;<br>&gt;&gt; &gt;<br>&gt;&gt; &gt;<b=
r>&gt;&gt; &gt; Usage: chmod [-R] MODE[,MODE]... FILE...<br>&gt;&gt; &gt;<b=
r>&gt;&gt; &gt; done.<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; Starting system mes=
sage bus: [ =C2=A0 14.887099] random: dbus-daemon: uninitialized urandom re=
ad (12 bytes read, 62 bits of entropy available)<br>&gt;&gt; &gt;<br>&gt;&g=
t; &gt; [ =C2=A0 14.912318] random: dbus-daemon: uninitialized urandom read=
 (12 bytes read, 62 bits of entropy available)<br>&gt;&gt; &gt;<br>&gt;&gt;=
 &gt; dbus.<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; Starting OpenBSD Secure Shell=
 server: sshd<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =C2=A0 15.393971] random:=
 sshd: uninitialized urandom read (32 bytes read, 65 bits of entropy availa=
ble)<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; done.<br>&gt;&gt; &gt;<br>&gt;&gt; &=
gt; Starting Xserver<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; Starting DHCP server=
:<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; .<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; sta=
rting DNS forwarder and DHCP server: dnsmasq...<br>&gt;&gt; &gt;<br>&gt;&gt=
; &gt; X.Org X Server 1.19.6<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; Release Date=
: 2017-12-20<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; X Protocol Version 11, Revis=
ion 0<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; Build Operating System: Linux 4.15.=
0-38-generic x86_64<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; Current Operating Sys=
tem: Linux polycaptil-machine-am335x-evmsk<br>&gt;&gt; &gt; 4.4.19-ge581bb1=
cac #1 PREEMPT Thu May 24 11:42:17 CEST 2018 armv7l<br>&gt;&gt; &gt;<br>&gt=
;&gt; &gt; Kernel command line: console=3DttyO0,115200 root=3D/dev/mmcblk0p=
3 rw<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; Build Date: 05 November 2018 =C2=A00=
9:33:21PM<br>&gt;&gt; &gt;<br>&gt;&gt; &gt;<br>&gt;&gt; &gt;<br>&gt;&gt; &g=
t; Current version of pixman: 0.34.0<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 Before reporting problems, check </span><a href=3D=
"http://wiki.x.org" target=3D"_blank"><span lang=3D"EN-US">http://wiki.x.or=
g</span></a><span lang=3D"EN-US"><br>&gt;&gt; &gt;<br>&gt;&gt; &gt; =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 to make sure that you have the latest version.<br>&gt;=
&gt; &gt;<br>&gt;&gt; &gt; Markers: (--) probed, (**) from config file, (=
=3D=3D) default setting,<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 (++) from command line, (!!) notice, (II) informational,<br>&=
gt;&gt; &gt;<br>&gt;&gt; &gt; =C2=A0 =C2=A0 =C2=A0 =C2=A0 (WW) warning, (EE=
) error, (NI) not implemented, (??) unknown.<br>&gt;&gt; &gt;<br>&gt;&gt; &=
gt; (=3D=3D) Log file: &quot;/var/log/Xorg.0.log&quot;, Time: Fri Feb =C2=
=A01 20:08:02 2019<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; (=3D=3D) Using config =
file: &quot;/etc/X11/xorg.conf&quot;<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; (=3D=
=3D) Using system config directory &quot;/usr/share/X11/xorg.conf.d&quot;<b=
r>&gt;&gt; &gt;<br>&gt;&gt; &gt; done.<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; St=
arting HOSTAP Daemon: Configuration file: /etc/hostapd.conf<br>&gt;&gt; &gt=
;<br>&gt;&gt; &gt; nl80211: &#39;nl80211&#39; generic netlink not found<br>=
&gt;&gt; &gt;<br>&gt;&gt; &gt; Failed to initialize driver &#39;nl80211&#39=
;<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; wlan0: interface state UNINITIALIZED-&g=
t;DISABLED<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; wlan0: AP-DISABLED<br>&gt;&gt;=
 &gt;<br>&gt;&gt; &gt; hostapd_free_hapd_data: Interface wlan0 wasn&#39;t s=
tarted<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; Starting ntpd: done<br>&gt;&gt; &g=
t;<br>&gt;&gt; &gt; Starting syslogd/klogd: done<br>&gt;&gt; &gt;<br>&gt;&g=
t; &gt; Starting crond: OK<br>&gt;&gt; &gt;<br>&gt;&gt; &gt;<br>&gt;&gt; &g=
t;<br>&gt;&gt; &gt; Poky (Yocto Project Reference Distro) 2.5<br>&gt;&gt; &=
gt; polycaptil-machine-am335x-evmsk /dev/ttyS0<br>&gt;&gt; &gt;<br>&gt;&gt;=
 &gt;<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; polycaptil-machine-am335x-evmsk log=
in: D-BUS per-session daemon<br>&gt;&gt; &gt; address is:<br>&gt;&gt; &gt; =
unix:abstract=3D/tmp/dbus-07WuJSySeb,guid=3Da3e41f2692316c19766e95535c54a7<=
br>&gt;&gt; &gt; 25<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; Size 1024x768 not fou=
nd in available modes<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; Error: No calibrata=
ble devices found.<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; matchbox: Cant find a =
keycode for keysym 269025056<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; matchbox: ig=
noring key shortcut XF86Calendar=3D!$contacts<br>&gt;&gt; &gt;<br>&gt;&gt; =
&gt;<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; matchbox: Cant find a keycode for ke=
ysym 2809<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; matchbox: ignoring key shortcut=
 telephone=3D!$dates<br>&gt;&gt; &gt;<br>&gt;&gt; &gt;<br>&gt;&gt; &gt;<br>=
&gt;&gt; &gt; matchbox: Cant find a keycode for keysym 269025050<br>&gt;&gt=
; &gt;<br>&gt;&gt; &gt; matchbox: ignoring key shortcut XF86Start=3D!matchb=
ox-remote -desktop<br>&gt;&gt; &gt;<br>&gt;&gt; &gt;<br>&gt;&gt; &gt;<br>&g=
t;&gt; &gt; dbus-daemon[358]: Activating service name=3D&#39;org.a11y.atspi=
.Registry&#39;<br>&gt;&gt; &gt; requested by &#39;:1.0&#39; (uid=3D0 pid=3D=
354 comm=3D&quot;matchbox-terminal &quot;)<br>&gt;&gt; &gt;<br>&gt;&gt; &gt=
; dbus-daemon[358]: Successfully activated service &#39;org.a11y.atspi.Regi=
stry&#39;<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; SpiRegistry daemon is running w=
ith well-known name -<br>&gt;&gt; &gt; org.a11y.atspi.Registry<br>&gt;&gt; =
&gt;<br>&gt;&gt; &gt; [ =C2=A0 30.662697] random: nonblocking pool is initi=
alized<br>&gt;&gt; &gt;<br>&gt;&gt; &gt;<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; =
Poky (Yocto Project Reference Distro) 2.5<br>&gt;&gt; &gt; polycaptil-machi=
ne-am335x-evmsk /dev/ttyS0<br>&gt;&gt; &gt;<br>&gt;&gt; &gt;<br>&gt;&gt; &g=
t;<br>&gt;&gt; &gt; Thank=E2=80=99s to take time to read my message.<br>&gt=
;&gt; &gt;<br>&gt;&gt; &gt; N.Stanisavljevic<br>&gt;&gt; &gt;<br>&gt;&gt; &=
gt; --<br>&gt;&gt; &gt; _______________________________________________<br>=
&gt;&gt; &gt; yocto mailing list<br>&gt;&gt; &gt; </span><a href=3D"mailto:=
yocto@yoctoproject.org" target=3D"_blank"><span lang=3D"EN-US">yocto@yoctop=
roject.org</span></a><span lang=3D"EN-US"><br>&gt;&gt; &gt; </span><a href=
=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"><span =
lang=3D"EN-US">https://lists.yoctoproject.org/listinfo/yocto</span></a><spa=
n lang=3D"EN-US"><br>&gt;&gt;<u></u><u></u></span></p></div></div></div></b=
lockquote></div></div></div></blockquote></div>

--0000000000002e28230585fea7ed--
