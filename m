Return-Path: <n.stanisavljevic@polycaptil.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8F088E00CD5; Thu, 11 Apr 2019 08:59:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	https://www.dnswl.org/, low *      trust
	*      [212.95.66.15 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from itinerix.sdv.fr (itinerix.sdv.fr [212.95.66.15])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5BAB8E00B5C
	for <yocto@yoctoproject.org>; Thu, 11 Apr 2019 08:58:51 -0700 (PDT)
Received: from FIXNIKOLA (unknown [65.39.68.243])
	by itinerix.sdv.fr (Postfix) with ESMTPSA id 5595EDCF8;
	Thu, 11 Apr 2019 17:58:43 +0200 (CEST)
From: "Stanisavljevic" <n.stanisavljevic@polycaptil.fr>
To: "'Zoran Stojsavljevic'" <zoran.stojsavljevic@gmail.com>
References: <001101d4bc79$b2739150$175ab3f0$@polycaptil.fr>
	<CAGAf8LxYW24L9Ah=ERcQncuMFC5w3UB26_WxoyZor8UQU7hBFw@mail.gmail.com>
	<003801d4bd38$cd620b80$68262280$@polycaptil.fr>
	<CAGAf8LxWMPqkFZxZWcq78onkxNO1TyUd0NUUkHje+jN7bO1Q4g@mail.gmail.com>
	<CAGAf8Lx-hCeapL1HtucKEG6kXb+8MwrdMWyEiSXXrqa+-vAG9w@mail.gmail.com>
	<000b01d4c790$95ede180$c1c9a480$@polycaptil.fr>
	<CAGAf8Ly+TuyozCCaeHTv6hPJLHnQZSo_jh5=hHfNdg-RLAR8Eg@mail.gmail.com>
	<00f001d4ebb4$773a0a00$65ae1e00$@polycaptil.fr>
	<CAGAf8LwPtTNk_cPGuNZPj_sruev8=5qsrisFt0PXiiH5tv1ZjQ@mail.gmail.com>
In-Reply-To: <CAGAf8LwPtTNk_cPGuNZPj_sruev8=5qsrisFt0PXiiH5tv1ZjQ@mail.gmail.com>
Date: Thu, 11 Apr 2019 17:58:42 +0200
Message-ID: <00bf01d4f07f$7185bd50$549137f0$@polycaptil.fr>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQFdDXE0Al97Hf8UDVuxHsFyUtiQ2gGO1GxuAuepHyYCJEUylQEyThizAgCu0JsCLC4VBQJE+mP3AdYPgTWmpjsZMA==
Cc: 'Yocto Project' <yocto@yoctoproject.org>
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
X-List-Received-Date: Thu, 11 Apr 2019 15:59:01 -0000
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_00C0_01D4F090.351D0C40"
Content-Language: fr

------=_NextPart_000_00C0_01D4F090.351D0C40
Content-Type: text/plain;
	charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Zoran,

=20

I tried to change X.org X Server version

=20

To do this I used yocto warrior version.

When I boot the system, it=E2=80=99s written that x.org X Server version =
is to 1.20.4

=20

But I have the same problem as before, the touchscreen is completely =
locked and don=E2=80=99t react when I touch the screen.

=20

Do you have an other idea where the problem is coming ?

=20

Here I copy the boot log :

=20

U-Boot SPL 2017.05-00001-g041a398 (May 02 2018 - 18:36:57)

Trying to boot from MMC1

reading uboot.env

reading u-boot.img

reading u-boot.img

reading u-boot.img

reading u-boot.img

=20

=20

U-Boot 2017.05-00001-g041a398 (May 02 2018 - 18:36:57 +0200)

=20

CPU  : AM335X-GP rev 2.1

Model: TI AM335x EVM-SK

DRAM:  256 MiB

NAND:  0 MiB

MMC:   OMAP SD/MMC: 0, OMAP SD/MMC: 1

reading uboot.env

ERROR: No USB device found

=20

at drivers/usb/gadget/ether.c:2709/usb_ether_init()

Net:   CACHE: Misaligned operation at range [8df323c0, 8df32464]

=20

Warning: ethernet@4a100000 using MAC address from ROM

eth0: ethernet@4a100000

Hit any key to stop autoboot:  0

reading zImage

3412752 bytes read in 251 ms (13 MiB/s)

reading dtb

39733 bytes read in 12 ms (3.2 MiB/s)

## Flattened Device Tree blob at 82000000

   Booting using the fdt blob at 0x82000000

   Loading Device Tree to 8df19000, end 8df25b34 ... OK

=20

Starting kernel ...

=20

[    0.000000] Booting Linux on physical CPU 0x0

[    0.000000] Initializing cgroup subsys cpu

[    0.000000] Initializing cgroup subsys cpuacct

[    0.000000] Linux version 4.4.19-ge581bb1cac =
(polycaptil@polycaptil-HP-Notebo                                         =
             ok) (gcc version 5.3.0 (GCC) ) #1 PREEMPT Thu May 24 =
11:42:17 CEST 2018

[    0.000000] CPU: ARMv7 Processor [413fc082] revision 2 (ARMv7), =
cr=3D10c5387d

[    0.000000] CPU: PIPT / VIPT nonaliasing data cache, VIPT aliasing =
instructio                                                      n cache

[    0.000000] Machine model: TI AM335x EVM-SK

[    0.000000] cma: Reserved 48 MiB at 0x8a800000

[    0.000000] Memory policy: Data cache writeback

[    0.000000] CPU: All CPU(s) started in SVC mode.

[    0.000000] AM335X ES2.1 (sgx neon )

[    0.000000] Built 1 zonelists in Zone order, mobility grouping on.  =
Total pag                                                      es: 64960

[    0.000000] Kernel command line: console=3DttyO0,115200 =
root=3D/dev/mmcblk0p2 rw

[    0.000000] PID hash table entries: 1024 (order: 0, 4096 bytes)

[    0.000000] Dentry cache hash table entries: 32768 (order: 5, 131072 =
bytes)

[    0.000000] Inode-cache hash table entries: 16384 (order: 4, 65536 =
bytes)

[    0.000000] Memory: 200444K/262144K available (6495K kernel code, =
313K rwdata                                                      , 2368K =
rodata, 260K init, 265K bss, 12548K reserved, 49152K cma-reserved, 0K hi =
                                                     ghmem)

[    0.000000] Virtual kernel memory layout:

[    0.000000]     vector  : 0xffff0000 - 0xffff1000   (   4 kB)

[    0.000000]     fixmap  : 0xffc00000 - 0xfff00000   (3072 kB)

[    0.000000]     vmalloc : 0xd0800000 - 0xff800000   ( 752 MB)

[    0.000000]     lowmem  : 0xc0000000 - 0xd0000000   ( 256 MB)

[    0.000000]     pkmap   : 0xbfe00000 - 0xc0000000   (   2 MB)

[    0.000000]     modules : 0xbf000000 - 0xbfe00000   (  14 MB)

[    0.000000]       .text : 0xc0008000 - 0xc08b0034   (8865 kB)

[    0.000000]       .init : 0xc08b1000 - 0xc08f2000   ( 260 kB)

[    0.000000]       .data : 0xc08f2000 - 0xc09407f0   ( 314 kB)

[    0.000000]        .bss : 0xc09407f0 - 0xc0982d58   ( 266 kB)

[    0.000000] SLUB: HWalign=3D64, Order=3D0-3, MinObjects=3D0, =
CPUs=3D1, Nodes=3D1

[    0.000000] Preemptible hierarchical RCU implementation.

[    0.000000]  Build-time adjustment of leaf fanout to 32.

[    0.000000] NR_IRQS:16 nr_irqs:16 16

[    0.000000] IRQ: Found an INTC at 0xfa200000 (revision 5.0) with 128 =
interrup                                                      ts

[    0.000000] OMAP clockevent source: timer2 at 24000000 Hz

[    0.000013] sched_clock: 32 bits at 24MHz, resolution 41ns, wraps =
every 89478                                                      =
484971ns

[    0.000034] clocksource: timer1: mask: 0xffffffff max_cycles: =
0xffffffff, max                                                      =
_idle_ns: 79635851949 ns

[    0.000046] OMAP clocksource: timer1 at 24000000 Hz

[    0.000221] clocksource_probe: no matching clocksources found

[    0.000414] Console: colour dummy device 80x30

[    0.000440] WARNING: Your 'console=3DttyO0' has been replaced by =
'ttyS0'

[    0.000447] This ensures that you still see kernel messages. Please

[    0.000452] update your kernel commandline.

[    0.000471] Calibrating delay loop... 795.44 BogoMIPS (lpj=3D3977216)

[    0.089060] pid_max: default: 32768 minimum: 301

[    0.089190] Mount-cache hash table entries: 1024 (order: 0, 4096 =
bytes)

[    0.089201] Mountpoint-cache hash table entries: 1024 (order: 0, 4096 =
bytes)

[    0.089924] Initializing cgroup subsys io

[    0.089956] Initializing cgroup subsys memory

[    0.089996] Initializing cgroup subsys devices

[    0.090011] Initializing cgroup subsys freezer

[    0.090026] Initializing cgroup subsys perf_event

[    0.090038] Initializing cgroup subsys pids

[    0.090068] CPU: Testing write buffer coherency: ok

[    0.090493] Setting up static identity map for 0x80008200 - =
0x80008258

[    0.092679] devtmpfs: initialized

[    0.105439] VFP support v0.3: implementor 41 architecture 3 part 30 =
variant c                                                       rev 3

[    0.120521] omap_hwmod: debugss: _wait_target_disable failed

[    0.175644] clocksource: jiffies: mask: 0xffffffff max_cycles: =
0xffffffff, ma                                                      =
x_idle_ns: 19112604462750000 ns

[    0.179890] pinctrl core: initialized pinctrl subsystem

[    0.181243] NET: Registered protocol family 16

[    0.183450] DMA: preallocated 256 KiB pool for atomic coherent =
allocations

[    0.209057] cpuidle: using governor ladder

[    0.239046] cpuidle: using governor menu

[    0.243690] OMAP GPIO hardware version 0.1

[    0.254398] hw-breakpoint: debug architecture 0x4 unsupported.

[    0.297651] edma 49000000.edma: TI EDMA DMA engine driver

[    0.298633] reg-fixed-voltage fixedregulator@2: could not find =
pctldev for no                                                      de =
/ocp/l4_wkup@44c00000/scm@210000/pinmux@800/pinmux_wl12xx_gpio, =
deferring pro                                                      be

[    0.302387] omap_i2c 44e0b000.i2c: could not find pctldev for node =
/ocp/l4_wk                                                      =
up@44c00000/scm@210000/pinmux@800/pinmux_i2c0_pins, deferring probe

[    0.302542] media: Linux media interface: v0.10

[    0.302605] Linux video capture interface: v2.00

[    0.302656] pps_core: LinuxPPS API ver. 1 registered

[    0.302664] pps_core: Software ver. 5.3.6 - Copyright 2005-2007 =
Rodolfo Giome                                                      tti =
<giometti@linux.it>

[    0.302694] PTP clock support registered

[    0.302758] EDAC MC: Ver: 3.0.0

[    0.303971] omap-mailbox 480c8000.mailbox: omap mailbox rev 0x400

[    0.304334] Advanced Linux Sound Architecture Driver Initialized.

[    0.305513] clocksource: Switched to clocksource timer1

[    0.316808] NET: Registered protocol family 2

[    0.317626] TCP established hash table entries: 2048 (order: 1, 8192 =
bytes)

[    0.317665] TCP bind hash table entries: 2048 (order: 1, 8192 bytes)

[    0.317693] TCP: Hash tables configured (established 2048 bind 2048)

[    0.317782] UDP hash table entries: 256 (order: 0, 4096 bytes)

[    0.317803] UDP-Lite hash table entries: 256 (order: 0, 4096 bytes)

[    0.317960] NET: Registered protocol family 1

[    0.318387] RPC: Registered named UNIX socket transport module.

[    0.318402] RPC: Registered udp transport module.

[    0.318409] RPC: Registered tcp transport module.

[    0.318415] RPC: Registered tcp NFSv4.1 backchannel transport module.

[    0.319367] hw perfevents: enabled with armv7_cortex_a8 PMU driver, 5 =
counter                                                      s available

[    0.321439] futex hash table entries: 256 (order: -1, 3072 bytes)

[    0.329858] squashfs: version 4.0 (2009/01/31) Phillip Lougher

[    0.330796] NFS: Registering the id_resolver key type

[    0.330874] Key type id_resolver registered

[    0.330882] Key type id_legacy registered

[    0.330960] ntfs: driver 2.1.32 [Flags: R/O].

[    0.334733] Block layer SCSI generic (bsg) driver version 0.4 loaded =
(major 2                                                      48)

[    0.334764] io scheduler noop registered

[    0.334778] io scheduler deadline registered

[    0.334936] io scheduler cfq registered (default)

[    0.336607] pinctrl-single 44e10800.pinmux: 142 pins at pa f9e10800 =
size 568

[    0.339467] backlight supply power not found, using dummy regulator

[    0.402551] Serial: 8250/16550 driver, 10 ports, IRQ sharing disabled

[    0.407008] 44e09000.serial: ttyS0 at MMIO 0x44e09000 (irq =3D 158, =
base_baud =3D                                                       =
3000000) is a 8250

[    1.017402] console [ttyS0] enabled

[    1.022241] 48022000.serial: ttyS1 at MMIO 0x48022000 (irq =3D 159, =
base_baud =3D                                                       =
3000000) is a 8250

[    1.032291] [drm] Initialized drm 1.1.0 20060810

[    1.039603] [drm] Supports vblank timestamp caching Rev 2 =
(21.10.2013).

[    1.046388] [drm] No driver support for vblank timestamp query.

[    1.062150] Console: switching to colour frame buffer device 60x34

[    1.070379] tilcdc 4830e000.lcdc: fb0:  frame buffer device

[    1.105534] [drm] Initialized tilcdc 1.0.0 20121205 on minor 0

[    1.118627] loop: module loaded

[    1.124254] libphy: Fixed MDIO Bus: probed

[    1.185548] davinci_mdio 4a101000.mdio: davinci mdio revision 1.6

[    1.191692] davinci_mdio 4a101000.mdio: detected phy mask fffffffe

[    1.198739] libphy: 4a101000.mdio: probed

[    1.202836] davinci_mdio 4a101000.mdio: phy[0]: device =
4a101000.mdio:00, driv                                                   =
   er SMSC LAN8710/LAN8720

[    1.212833] cpsw 4a100000.ethernet: Detected MACID =3D =
a0:f6:fd:4c:a6:ba

[    1.220460] cpsw 4a100000.ethernet: cpsw: Detected MACID =3D =
c4:ed:ba:88:2a:92

[    1.229323] mousedev: PS/2 mouse device common for all mice

[    1.235803] i2c /dev entries driver

[    1.240462] cpuidle: enable-method property 'ti,am3352' found =
operations

[    1.248156] omap_hsmmc 48060000.mmc: Got CD GPIO

[    1.275714] pinctrl-single 44e10800.pinmux: bad data for mux =
pinmux_mmc2_pins

[    1.282895] pinctrl-single 44e10800.pinmux: no pins entries for =
pinmux_mmc2_p                                                      ins

[    1.317169] ledtrig-cpu: registered to indicate activity on CPUs

[    1.326062] NET: Registered protocol family 10

[    1.332076] sit: IPv6 over IPv4 tunneling driver

[    1.337708] NET: Registered protocol family 17

[    1.342503] Key type dns_resolver registered

[    1.347084] omap_voltage_late_init: Voltage driver support not added

[    1.407266] tps65910-rtc tps65910-rtc: rtc core: registered =
tps65910-rtc as r                                                      =
tc0

[    1.415401] omap_i2c 44e0b000.i2c: bus 0 rev0.11 at 400 kHz

[    1.421798] omap_hsmmc 48060000.mmc: Got CD GPIO

[    1.426953] vmmc: supplied by vbat

[    1.466351] pinctrl-single 44e10800.pinmux: bad data for mux =
pinmux_mmc2_pins

[    1.474750] pinctrl-single 44e10800.pinmux: no pins entries for =
pinmux_mmc2_p                                                      ins

[    1.513248] mmc0: host does not support reading read-only switch, =
assuming wr                                                      =
ite-enable

[    1.523416] mmc0: new high speed SDHC card at address 0001

[    1.529625] mmcblk0: mmc0:0001 AS 3.72 GiB

[    1.535990]  mmcblk0: p1 p2 p3

[    1.595934] vdd_mpu: supplied by vbat

[    1.602181] input: gpio_buttons@0 as =
/devices/platform/gpio_buttons@0/input/i                                 =
                     nput0

[    1.618321] tps65910-rtc tps65910-rtc: setting system clock to =
2019-04-11 15:                                                      =
41:17 UTC (1554997277)

[    1.639403] lis3_reg: disabling

[    1.655736] ALSA device list:

[    1.658725]   No soundcards found.

[    1.678270] EXT4-fs (mmcblk0p2): couldn't mount as ext3 due to =
feature incomp                                                      =
atibilities

[    1.696893] EXT4-fs (mmcblk0p2): couldn't mount as ext2 due to =
feature incomp                                                      =
atibilities

[    1.918459] EXT4-fs (mmcblk0p2): recovery complete

[    1.926817] EXT4-fs (mmcblk0p2): mounted filesystem with ordered data =
mode. O                                                      pts: (null)

[    1.945553] VFS: Mounted root (ext4 filesystem) on device 179:2.

[    1.951741] devtmpfs: mounted

[    1.955142] Freeing unused kernel memory: 260K (c08b1000 - c08f2000)

[    1.975513] This architecture does not have kernel memory protection.

INIT: version 2.88 booting

Starting udev

[    2.626491] udevd[78]: starting version 3.2.7

[    2.632958] random: udevd: uninitialized urandom read (16 bytes read, =
19 bits                                                       of entropy =
available)

[    2.655617] random: udevd: uninitialized urandom read (16 bytes read, =
19 bits                                                       of entropy =
available)

[    2.675821] random: udevd: uninitialized urandom read (16 bytes read, =
20 bits                                                       of entropy =
available)

[    2.685085] random: udevd: uninitialized urandom read (16 bytes read, =
20 bits                                                       of entropy =
available)

[    2.730297] udevd[78]: specified group 'kvm' unknown

[    2.798310] udevd[79]: starting eudev-3.2.7

[    3.062517] random: udevd: uninitialized urandom read (16 bytes read, =
23 bits                                                       of entropy =
available)

[    3.095948] random: udevd: uninitialized urandom read (16 bytes read, =
23 bits                                                       of entropy =
available)

[    3.128747] udevd[79]: specified group 'kvm' unknown

[    4.544886] EXT4-fs (mmcblk0p2): re-mounted. Opts: data=3Dordered

[    5.086681] random: dd: uninitialized urandom read (512 bytes read, =
36 bits o                                                      f entropy =
available)

INIT: Entering runlevel: 5

Configuring network interfaces... [    5.281526] net eth0: initializing =
cpsw ver                                                      sion 1.12 =
(0)

[    5.286963] net eth0: initialized cpsw ale version 1.4

[    5.292126] net eth0: ALE Table size 1024

[    5.299577] net eth0: phy found : id is : 0x7c0f1

[    5.312916] IPv6: ADDRCONF(NETDEV_UP): eth0: link is not ready

udhcpc: started, v1.30.1

udhcpc: sending discover

udhcpc: sending discover

udhcpc: sending discover

udhcpc: no lease, forking to background

done.

Starting system message bus: [   14.818015] random: dbus-daemon: =
uninitialized urandom read (12 bytes read, 53 bits of entropy available)

[   14.841904] random: dbus-daemon: uninitialized urandom read (12 bytes =
read, 53 bits of entropy available)

dbus.

Starting Xserver

Starting syslogd/klogd:

done

=20

X.Org X Server 1.20.4

X Protocol Version 11, Revision 0

Build Operating System: Linux 4.15.0-45-generic x86_64

Current Operating System: Linux am335x-evm 4.4.19-ge581bb1cac #1 PREEMPT =
Thu May 24 11:42:17 CEST 2018 armv7l

Kernel command line: console=3DttyO0,115200 root=3D/dev/mmcblk0p2 rw

Build Date: 10 April 2019  08:15:46PM

=20

Current version of pixman: 0.38.0

        Before reporting problems, check http://wiki.x.org

        to make sure that you have the latest version.

Markers: (--) probed, (**) from config file, (=3D=3D) default setting,

        (++) from command line, (!!) notice, (II) informational,

        (WW) warning, (EE) error, (NI) not implemented, (??) unknown.

(=3D=3D) Log file: "/var/log/Xorg.0.log", Time: Thu Apr 11 15:41:31 2019

(=3D=3D) Using config file: "/etc/X11/xorg.conf"

(=3D=3D) Using system config directory "/usr/share/X11/xorg.conf.d"

=20

Poky (Yocto Project Reference Distro) 2.6+snapshot am335x-evm /dev/ttyS0

=20

am335x-evm login: The XKEYBOARD keymap compiler (xkbcomp) reports:

> Warning:          Unsupported high keycode 372 for name <I372> ignored

>                   X11 cannot support keycodes above 255.

>                   This warning only shows for the first high keycode.

> Internal error:   Could not resolve keysym XF86MonBrightnessCycle

Errors from xkbcomp are not fatal to the X server

[   15.951736] random: dbus-daemon: uninitialized urandom read (12 bytes =
read, 67 bits of entropy available)

D-BUS per-session daemon address is: =
unix:abstract=3D/tmp/dbus-AntF8uRBJQ,guid=3D2087fb970fdb264af1e4e5315caf6=
02b

Size 1024x768 not found in available modes

Error: No calibratable devices found.

matchbox: Cant find a keycode for keysym 269025056

matchbox: ignoring key shortcut XF86Calendar=3D!$contacts

=20

matchbox: Cant find a keycode for keysym 2809

matchbox: ignoring key shortcut telephone=3D!$dates

=20

matchbox: Cant find a keycode for keysym 269025050

matchbox: ignoring key shortcut XF86Start=3D!matchbox-remote -desktop

=20

dbus-daemon[282]: Activating service name=3D'org.a11y.atspi.Registry' =
requested by ':1.0' (uid=3D0 pid=3D278 comm=3D"matchbox-terminal ")

dbus-daemon[282]: Successfully activated service =
'org.a11y.atspi.Registry'

SpiRegistry daemon is running with well-known name - =
org.a11y.atspi.Registry

[   41.825592] random: nonblocking pool is initialized

=20

Nikola.

=20

De : Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>=20
Envoy=C3=A9 : lundi 8 avril 2019 08:07
=C3=80 : Stanisavljevic <n.stanisavljevic@polycaptil.fr>
Cc : Yocto Project <yocto@yoctoproject.org>; Marc Ferland =
<marc.ferland@gmail.com>
Objet : Re: [yocto] yocto touchscreen

=20

Hello Nikola,

I did some quick analysis of your kernel boot traces, and there are the =
following observations made:

[1] The kernel used is:
Linux version 4.4.19-ge581bb1cac (polycaptil@polycaptil-HP-Notebook) ?!

In my case (I built YOCTO thud for BBB NOT using X11, only serial =
console):
Linux version 4.19.7-jumpnow (oe-user@oe-host) (gcc version 8.2.0 (GCC))

I could not explain polycaptil@polycaptil-HP-Notebook, maybe you do it =
for such kind of platform...
The kernel used is too old, for my taste, you did not replaced it, if =
you built YOCTO thud!

[2] The kernel command line:
[    0.000000] Kernel command line: console=3DttyO0,115200 =
root=3D/dev/mmcblk0p2 rw

Shows that you use EMMC as holder for / tree, all good.

[3] The concern about your console: console=3DttyO0,115200
Is addressed here:
[    0.000441] WARNING: Your 'console=3DttyO0' has been replaced by =
'ttyS0'

Later followed by:
[    0.402495] Serial: 8250/16550 driver, 10 ports, IRQ sharing disabled
[    0.406968] 44e09000.serial: ttyS0 at MMIO 0x44e09000 (irq =3D 158, =
base_baud =3D 3000000) is a 8250
[    1.017361] console [ttyS0] enabled
[    1.022188] 48022000.serial: ttyS1 at MMIO 0x48022000 (irq =3D 159, =
base_baud =3D 3000000) is a 8250

=20

So, not at all worries about the console!

=20

[4] The following traces are worrying me very much:

Starting Xserver
Starting syslogd/klogd:
done
X.Org X Server 1.20.1
X Protocol Version 11, Revision 0
Build Operating System: Linux 4.15.0-45-generic x86_64
Current Operating System: Linux am335x-evm 4.4.19-ge581bb1cac #1 PREEMPT =
Thu May 24 11:42:17 CEST 2018 armv7l
Kernel command line: console=3DttyO0,115200 root=3D/dev/mmcblk0p2 rw
Build Date: 02 April 2019  07:35:10PM

=20

As Marc wrote earlier:

> Looks like: https://bugzilla.redhat.com/show_bug.cgi?id=3D1650634

=20

So, as I stated before: you should have in your build:

X.Org Server 1.20.3! This is the main problem, seems!

=20

Zoran

_______

=20

=20

On Fri, Apr 5, 2019 at 3:35 PM Stanisavljevic =
<n.stanisavljevic@polycaptil.fr <mailto:n.stanisavljevic@polycaptil.fr> =
> wrote:

Hello Zoran,

=20

I keep you in touch about the migration from sumo to thud to solve my =
problem of locked touchscreen.

=20

I migrated from sumo to thud version, but nothing changed, the problem =
is the same, and I have same messages on boot as sumo version.

=20

I looked that the x server have a configuration kernel command line (if =
I correctly understood), here is what is written :

Kernel command line: console=3DttyO0,115200 root=3D/dev/mmcblk0p2 rw

=20

But the kernel command line of poky is different, here is what is =
configured for poky kernel command line :

Poky (Yocto Project Reference Distro) 2.6.1 am335x-evm /dev/ttyS0

=20

For the xserver it is ttyO0 and for poky it is ttyS0, maybe there is =
something wrong here which do problem for the touchscreen.

=20

I put below (at end of this mail )the text which appear during the boot.

=20

I think xorg-x11-server package 1.20.3 was not the problem in the =
previous yocto version (sumo)=E2=80=A6

=20

Best regards

Nikola

=20

Here is the text that appear during the boot :

=20

root@am335x-evm:~# CCCCCCCCCCCCCCCCCCCCCCCC

U-Boot SPL 2017.05-00001-g041a398 (May 02 2018 - 18:36:57)

Trying to boot from MMC1

reading uboot.env

reading u-boot.img

reading u-boot.img

reading u-boot.img

reading u-boot.img

=20

=20

U-Boot 2017.05-00001-g041a398 (May 02 2018 - 18:36:57 +0200)

=20

CPU  : AM335X-GP rev 2.1

Model: TI AM335x EVM-SK

DRAM:  256 MiB

NAND:  0 MiB

MMC:   OMAP SD/MMC: 0, OMAP SD/MMC: 1

reading uboot.env

ERROR: No USB device found

=20

at drivers/usb/gadget/ether.c:2709/usb_ether_init()

Net:   CACHE: Misaligned operation at range [8df323c0, 8df32464]

=20

Warning: ethernet@4a100000 using MAC address from ROM

eth0: ethernet@4a100000

Hit any key to stop autoboot:  0

reading zImage

3412752 bytes read in 252 ms (12.9 MiB/s)

reading dtb

39733 bytes read in 12 ms (3.2 MiB/s)

## Flattened Device Tree blob at 82000000

   Booting using the fdt blob at 0x82000000

   Loading Device Tree to 8df19000, end 8df25b34 ... OK

=20

Starting kernel ...

=20

[    0.000000] Booting Linux on physical CPU 0x0

[    0.000000] Initializing cgroup subsys cpu

[    0.000000] Initializing cgroup subsys cpuacct

[    0.000000] Linux version 4.4.19-ge581bb1cac =
(polycaptil@polycaptil-HP-Notebook) (gcc version 5.3.0 (GCC) ) #1 =
PREEMPT Thu May 24 11:42:17 CEST 2018

[    0.000000] CPU: ARMv7 Processor [413fc082] revision 2 (ARMv7), =
cr=3D10c5387d

[    0.000000] CPU: PIPT / VIPT nonaliasing data cache, VIPT aliasing =
instruction cache

[    0.000000] Machine model: TI AM335x EVM-SK

[    0.000000] cma: Reserved 48 MiB at 0x8a800000

[    0.000000] Memory policy: Data cache writeback

[    0.000000] CPU: All CPU(s) started in SVC mode.

[    0.000000] AM335X ES2.1 (sgx neon )

[    0.000000] Built 1 zonelists in Zone order, mobility grouping on.  =
Total pages: 64960

[    0.000000] Kernel command line: console=3DttyO0,115200 =
root=3D/dev/mmcblk0p2 rw

[    0.000000] PID hash table entries: 1024 (order: 0, 4096 bytes)

[    0.000000] Dentry cache hash table entries: 32768 (order: 5, 131072 =
bytes)

[    0.000000] Inode-cache hash table entries: 16384 (order: 4, 65536 =
bytes)

[    0.000000] Memory: 200444K/262144K available (6495K kernel code, =
313K rwdata, 2368K rodata, 260K init, 265K bss, 12548K reserved, 49152K =
cma-reserved, 0K highmem)

[    0.000000] Virtual kernel memory layout:

[    0.000000]     vector  : 0xffff0000 - 0xffff1000   (   4 kB)

[    0.000000]     fixmap  : 0xffc00000 - 0xfff00000   (3072 kB)

[    0.000000]     vmalloc : 0xd0800000 - 0xff800000   ( 752 MB)

[    0.000000]     lowmem  : 0xc0000000 - 0xd0000000   ( 256 MB)

[    0.000000]     pkmap   : 0xbfe00000 - 0xc0000000   (   2 MB)

[    0.000000]     modules : 0xbf000000 - 0xbfe00000   (  14 MB)

[    0.000000]       .text : 0xc0008000 - 0xc08b0034   (8865 kB)

[    0.000000]       .init : 0xc08b1000 - 0xc08f2000   ( 260 kB)

[    0.000000]       .data : 0xc08f2000 - 0xc09407f0   ( 314 kB)

[    0.000000]        .bss : 0xc09407f0 - 0xc0982d58   ( 266 kB)

[    0.000000] SLUB: HWalign=3D64, Order=3D0-3, MinObjects=3D0, =
CPUs=3D1, Nodes=3D1

[    0.000000] Preemptible hierarchical RCU implementation.

[    0.000000]  Build-time adjustment of leaf fanout to 32.

[    0.000000] NR_IRQS:16 nr_irqs:16 16

[    0.000000] IRQ: Found an INTC at 0xfa200000 (revision 5.0) with 128 =
interrupts

[    0.000000] OMAP clockevent source: timer2 at 24000000 Hz

[    0.000016] sched_clock: 32 bits at 24MHz, resolution 41ns, wraps =
every 89478484971ns

[    0.000036] clocksource: timer1: mask: 0xffffffff max_cycles: =
0xffffffff, max_idle_ns: 79635851949 ns

[    0.000047] OMAP clocksource: timer1 at 24000000 Hz

[    0.000222] clocksource_probe: no matching clocksources found

[    0.000415] Console: colour dummy device 80x30

[    0.000441] WARNING: Your 'console=3DttyO0' has been replaced by =
'ttyS0'

[    0.000447] This ensures that you still see kernel messages. Please

[    0.000453] update your kernel commandline.

[    0.000473] Calibrating delay loop... 795.44 BogoMIPS (lpj=3D3977216)

[    0.089067] pid_max: default: 32768 minimum: 301

[    0.089198] Mount-cache hash table entries: 1024 (order: 0, 4096 =
bytes)

[    0.089210] Mountpoint-cache hash table entries: 1024 (order: 0, 4096 =
bytes)

[    0.089932] Initializing cgroup subsys io

[    0.089965] Initializing cgroup subsys memory

[    0.090003] Initializing cgroup subsys devices

[    0.090020] Initializing cgroup subsys freezer

[    0.090035] Initializing cgroup subsys perf_event

[    0.090047] Initializing cgroup subsys pids

[    0.090074] CPU: Testing write buffer coherency: ok

[    0.090499] Setting up static identity map for 0x80008200 - =
0x80008258

[    0.092669] devtmpfs: initialized

[    0.105440] VFP support v0.3: implementor 41 architecture 3 part 30 =
variant c rev 3

[    0.120496] omap_hwmod: debugss: _wait_target_disable failed

[    0.175552] clocksource: jiffies: mask: 0xffffffff max_cycles: =
0xffffffff, max_idle_ns: 19112604462750000 ns

[    0.179889] pinctrl core: initialized pinctrl subsystem

[    0.181246] NET: Registered protocol family 16

[    0.183446] DMA: preallocated 256 KiB pool for atomic coherent =
allocations

[    0.209067] cpuidle: using governor ladder

[    0.239055] cpuidle: using governor menu

[    0.243662] OMAP GPIO hardware version 0.1

[    0.254349] hw-breakpoint: debug architecture 0x4 unsupported.

[    0.297650] edma 49000000.edma: TI EDMA DMA engine driver

[    0.298630] reg-fixed-voltage fixedregulator@2: could not find =
pctldev for node =
/ocp/l4_wkup@44c00000/scm@210000/pinmux@800/pinmux_wl12xx_gpio, =
deferring probe

[    0.302384] omap_i2c 44e0b000.i2c: could not find pctldev for node =
/ocp/l4_wkup@44c00000/scm@210000/pinmux@800/pinmux_i2c0_pins, deferring =
probe

[    0.302543] media: Linux media interface: v0.10

[    0.302609] Linux video capture interface: v2.00

[    0.302660] pps_core: LinuxPPS API ver. 1 registered

[    0.302668] pps_core: Software ver. 5.3.6 - Copyright 2005-2007 =
Rodolfo Giometti <giometti@linux.it <mailto:giometti@linux.it> >

[    0.302699] PTP clock support registered

[    0.302764] EDAC MC: Ver: 3.0.0

[    0.303981] omap-mailbox 480c8000.mailbox: omap mailbox rev 0x400

[    0.304343] Advanced Linux Sound Architecture Driver Initialized.

[    0.305508] clocksource: Switched to clocksource timer1

[    0.316757] NET: Registered protocol family 2

[    0.317569] TCP established hash table entries: 2048 (order: 1, 8192 =
bytes)

[    0.317608] TCP bind hash table entries: 2048 (order: 1, 8192 bytes)

[    0.317636] TCP: Hash tables configured (established 2048 bind 2048)

[    0.317718] UDP hash table entries: 256 (order: 0, 4096 bytes)

[    0.317738] UDP-Lite hash table entries: 256 (order: 0, 4096 bytes)

[    0.317898] NET: Registered protocol family 1

[    0.318323] RPC: Registered named UNIX socket transport module.

[    0.318337] RPC: Registered udp transport module.

[    0.318344] RPC: Registered tcp transport module.

[    0.318350] RPC: Registered tcp NFSv4.1 backchannel transport module.

[    0.319303] hw perfevents: enabled with armv7_cortex_a8 PMU driver, 5 =
counters available

[    0.321370] futex hash table entries: 256 (order: -1, 3072 bytes)

[    0.329774] squashfs: version 4.0 (2009/01/31) Phillip Lougher

[    0.330714] NFS: Registering the id_resolver key type

[    0.330792] Key type id_resolver registered

[    0.330801] Key type id_legacy registered

[    0.330881] ntfs: driver 2.1.32 [Flags: R/O].

[    0.334651] Block layer SCSI generic (bsg) driver version 0.4 loaded =
(major 248)

[    0.334684] io scheduler noop registered

[    0.334698] io scheduler deadline registered

[    0.334855] io scheduler cfq registered (default)

[    0.336527] pinctrl-single 44e10800.pinmux: 142 pins at pa f9e10800 =
size 568

[    0.339377] backlight supply power not found, using dummy regulator

[    0.402495] Serial: 8250/16550 driver, 10 ports, IRQ sharing disabled

[    0.406968] 44e09000.serial: ttyS0 at MMIO 0x44e09000 (irq =3D 158, =
base_baud =3D 3000000) is a 8250

[    1.017361] console [ttyS0] enabled

[    1.022188] 48022000.serial: ttyS1 at MMIO 0x48022000 (irq =3D 159, =
base_baud =3D 3000000) is a 8250

[    1.032233] [drm] Initialized drm 1.1.0 20060810

[    1.039551] [drm] Supports vblank timestamp caching Rev 2 =
(21.10.2013).

[    1.046337] [drm] No driver support for vblank timestamp query.

[    1.062083] Console: switching to colour frame buffer device 60x34

[    1.070316] tilcdc 4830e000.lcdc: fb0:  frame buffer device

[    1.105532] [drm] Initialized tilcdc 1.0.0 20121205 on minor 0

[    1.118602] loop: module loaded

[    1.124221] libphy: Fixed MDIO Bus: probed

[    1.185547] davinci_mdio 4a101000.mdio: davinci mdio revision 1.6

[    1.191690] davinci_mdio 4a101000.mdio: detected phy mask fffffffe

[    1.198754] libphy: 4a101000.mdio: probed

[    1.202851] davinci_mdio 4a101000.mdio: phy[0]: device =
4a101000.mdio:00, driver SMSC LAN8710/LAN8720

[    1.212830] cpsw 4a100000.ethernet: Detected MACID =3D =
a0:f6:fd:4c:a6:ba

[    1.220461] cpsw 4a100000.ethernet: cpsw: Detected MACID =3D =
c4:ed:ba:88:2a:92

[    1.229313] mousedev: PS/2 mouse device common for all mice

[    1.235792] i2c /dev entries driver

[    1.240448] cpuidle: enable-method property 'ti,am3352' found =
operations

[    1.248143] omap_hsmmc 48060000.mmc: Got CD GPIO

[    1.275713] pinctrl-single 44e10800.pinmux: bad data for mux =
pinmux_mmc2_pins

[    1.282895] pinctrl-single 44e10800.pinmux: no pins entries for =
pinmux_mmc2_pins

[    1.317167] ledtrig-cpu: registered to indicate activity on CPUs

[    1.326065] NET: Registered protocol family 10

[    1.332086] sit: IPv6 over IPv4 tunneling driver

[    1.337713] NET: Registered protocol family 17

[    1.342528] Key type dns_resolver registered

[    1.347114] omap_voltage_late_init: Voltage driver support not added

[    1.407191] tps65910-rtc tps65910-rtc: rtc core: registered =
tps65910-rtc as rtc0

[    1.415327] omap_i2c 44e0b000.i2c: bus 0 rev0.11 at 400 kHz

[    1.421710] omap_hsmmc 48060000.mmc: Got CD GPIO

[    1.426857] vmmc: supplied by vbat

[    1.466348] pinctrl-single 44e10800.pinmux: bad data for mux =
pinmux_mmc2_pins

[    1.474748] pinctrl-single 44e10800.pinmux: no pins entries for =
pinmux_mmc2_pins

[    1.513242] mmc0: host does not support reading read-only switch, =
assuming write-enable

[    1.523406] mmc0: new high speed SDHC card at address 0001

[    1.529619] mmcblk0: mmc0:0001 AS 3.72 GiB

[    1.535970]  mmcblk0: p1 p2 p3

[    1.595927] vdd_mpu: supplied by vbat

[    1.602118] input: gpio_buttons@0 as =
/devices/platform/gpio_buttons@0/input/input0

[    1.618310] tps65910-rtc tps65910-rtc: setting system clock to =
2019-04-03 08:25:12 UTC (1554279912)

[    1.639397] lis3_reg: disabling

[    1.655734] ALSA device list:

[    1.658723]   No soundcards found.

[    1.678283] EXT4-fs (mmcblk0p2): couldn't mount as ext3 due to =
feature incompatibilities

[    1.696903] EXT4-fs (mmcblk0p2): couldn't mount as ext2 due to =
feature incompatibilities

[    1.792693] EXT4-fs (mmcblk0p2): recovery complete

[    1.807446] EXT4-fs (mmcblk0p2): mounted filesystem with ordered data =
mode. Opts: (null)

[    1.821463] VFS: Mounted root (ext4 filesystem) on device 179:2.

[    1.835669] devtmpfs: mounted

[    1.839073] Freeing unused kernel memory: 260K (c08b1000 - c08f2000)

[    1.851956] This architecture does not have kernel memory protection.

INIT: version 2.88 booting

Starting udev

[    2.513624] udevd[78]: starting version 3.2.5

[    2.527632] random: udevd: uninitialized urandom read (16 bytes read, =
18 bits of entropy available)

[    2.546992] random: udevd: uninitialized urandom read (16 bytes read, =
18 bits of entropy available)

[    2.566829] random: udevd: uninitialized urandom read (16 bytes read, =
18 bits of entropy available)

[    2.585755] random: udevd: uninitialized urandom read (16 bytes read, =
18 bits of entropy available)

[    2.668211] udevd[79]: starting eudev-3.2.5

[    3.036159] random: udevd: uninitialized urandom read (16 bytes read, =
21 bits of entropy available)

[    3.061761] random: udevd: uninitialized urandom read (16 bytes read, =
21 bits of entropy available)

[    4.494682] EXT4-fs (mmcblk0p2): re-mounted. Opts: data=3Dordered

[    5.052098] random: dd: uninitialized urandom read (512 bytes read, =
34 bits of entropy available)

INIT: Entering runlevel: 5

Configuring network interfaces... [    5.254308] net eth0: initializing =
cpsw version 1.12 (0)

[    5.259812] net eth0: initialized cpsw ale version 1.4

[    5.264976] net eth0: ALE Table size 1024

[    5.272411] net eth0: phy found : id is : 0x7c0f1

[    5.285702] IPv6: ADDRCONF(NETDEV_UP): eth0: link is not ready

udhcpc: started, v1.29.2

udhcpc: sending discover

udhcpc: sending discover

udhcpc: sending discover

udhcpc: no lease, forking to background

done.

Starting system message bus: [   14.793334] random: dbus-daemon: =
uninitialized urandom read (12 bytes read, 51 bits of entropy available)

[   14.831748] random: dbus-daemon: uninitialized urandom read (12 bytes =
read, 52 bits of entropy available)

dbus.

Starting Xserver

Starting syslogd/klogd:

done

=20

X.Org X Server 1.20.1

X Protocol Version 11, Revision 0

Build Operating System: Linux 4.15.0-45-generic x86_64

Current Operating System: Linux am335x-evm 4.4.19-ge581bb1cac #1 PREEMPT =
Thu May 24 11:42:17 CEST 2018 armv7l

Kernel command line: console=3DttyO0,115200 root=3D/dev/mmcblk0p2 rw

Build Date: 02 April 2019  07:35:10PM

=20

Current version of pixman: 0.34.0

        Before reporting problems, check http://wiki.x.org

        to make sure that you have the latest version.

Markers: (--) probed, (**) from config file, (=3D=3D) default setting,

        (++) from command line, (!!) notice, (II) informational,

        (WW) warning, (EE) error, (NI) not implemented, (??) unknown.

(=3D=3D) Log file: "/var/log/Xorg.0.log", Time: Wed Apr  3 08:25:25 2019

(=3D=3D) Using config file: "/etc/X11/xorg.conf"

(=3D=3D) Using system config directory "/usr/share/X11/xorg.conf.d"

=20

Poky (Yocto Project Reference Distro) 2.6.1 am335x-evm /dev/ttyS0

=20

am335x-evm login: The XKEYBOARD keymap compiler (xkbcomp) reports:

> Warning:          Unsupported high keycode 372 for name <I372> ignored

>                   X11 cannot support keycodes above 255.

>                   This warning only shows for the first high keycode.

Errors from xkbcomp are not fatal to the X server

[   15.888959] random: dbus-daemon: uninitialized urandom read (12 bytes =
read, 65 bits of entropy available)

D-BUS per-session daemon address is: =
unix:abstract=3D/tmp/dbus-JjEW6Wgjtx,guid=3D87af020e5c6f1a7e21d449e55ca46=
df5

Size 1024x768 not found in available modes

Error: No calibratable devices found.

matchbox: Cant find a keycode for keysym 269025056

matchbox: ignoring key shortcut XF86Calendar=3D!$contacts

=20

matchbox: Cant find a keycode for keysym 2809

matchbox: ignoring key shortcut telephone=3D!$dates

=20

matchbox: Cant find a keycode for keysym 269025050

matchbox: ignoring key shortcut XF86Start=3D!matchbox-remote -desktop

=20

Failed to launch bus: Failed to execute child process ?/usr/bin? =
(Permission denied)

(matchbox-terminal:274): dbind-WARNING **: 08:25:27.404: Error =
retrieving accessibility bus address: org.a11y.Bus.Error: Failed to =
execute child process ?/usr/bin? (Permission denied)

[   43.718127] random: nonblocking pool is initialized

=20

=20

=20

=20

=20

De : Stanisavljevic <n.stanisavljevic@polycaptil.fr =
<mailto:n.stanisavljevic@polycaptil.fr> >=20
Envoy=C3=A9 : lundi 18 f=C3=A9vrier 2019 15:27
=C3=80 : 'Zoran Stojsavljevic' <zoran.stojsavljevic@gmail.com =
<mailto:zoran.stojsavljevic@gmail.com> >
Cc : 'Yocto Project' <yocto@yoctoproject.org =
<mailto:yocto@yoctoproject.org> >; 'Marc Ferland' =
<marc.ferland@gmail.com <mailto:marc.ferland@gmail.com> >
Objet : RE: [yocto] yocto touchscreen

=20

Hello Zoran

=20

I will try these 2 ways.

Of course, the second way is the easiest, but I will try also the first =
way only to see if it is possible.

I will keep you in touch if the first way can work.

=20

Best regards,

Nikola

=20

De : Zoran Stojsavljevic < <mailto:zoran.stojsavljevic@gmail.com> =
zoran.stojsavljevic@gmail.com>=20
Envoy=C3=A9 : lundi 18 f=C3=A9vrier 2019 15:21
=C3=80 : Stanisavljevic < <mailto:n.stanisavljevic@polycaptil.fr> =
n.stanisavljevic@polycaptil.fr>
Cc : Yocto Project < <mailto:yocto@yoctoproject.org> =
yocto@yoctoproject.org>; Marc Ferland < <mailto:marc.ferland@gmail.com> =
marc.ferland@gmail.com>
Objet : Re: [yocto] yocto touchscreen

=20

Hello Nikola,

=20

Two things, which immediately came to my mind:

[1 - Harder way] Either to change xorg-x11-server in sumo to match at =
least xorg-x11-server 1.20.3;

      (harder way, since few people know exact dependencies among =
various GFX packages, and what

       and how many packages need to be also changed to make =
xorg-x11-server 1.20.3 to work)

[2 - Easier Way] Either to migrate YOCTO to Thud, where the correct =
xorg-x11-server package 1.20.3

      is already fixed and set!

      (easier way, since exact dependencies among various GFX packages =
are already set for 1.20.3)

=20

Best Regards,

Zoran

_______ =20

=20

On Mon, Feb 18, 2019 at 2:48 PM Stanisavljevic < =
<mailto:n.stanisavljevic@polycaptil.fr> n.stanisavljevic@polycaptil.fr> =
wrote:

Thank you Zoran for trying to help me.
I tried to resolve the problem, but I didn=E2=80=99t succeed yet, I =
think I will to continue, and If after some time I find nothing, =
I=E2=80=99m going to migrate to the thud version.

=20

I will maybe try to use Bugzilla

=20

Nikola

De : Zoran Stojsavljevic < <mailto:zoran.stojsavljevic@gmail.com> =
zoran.stojsavljevic@gmail.com>=20
Envoy=C3=A9 : mardi 5 f=C3=A9vrier 2019 19:28
=C3=80 : Stanisavljevic < <mailto:n.stanisavljevic@polycaptil.fr> =
n.stanisavljevic@polycaptil.fr>
Cc : Yocto Project < <mailto:yocto@yoctoproject.org> =
yocto@yoctoproject.org>;  <mailto:marc.ferland@gmail.com> =
marc.ferland@gmail.com
Objet : Re: [yocto] yocto touchscreen

=20

Hello Nikola,

Let us try to cut to the chase!

After reading what Marc Ferland says/writes, and looking into the =
following:
 <https://bugzilla.redhat.com/show_bug.cgi?id=3D1650634> =
https://bugzilla.redhat.com/show_bug.cgi?id=3D1650634

I have spotted the following:

Pat Riehecky 2018-11-20 14:28:22 UTC=20

the bug remains with the elrepo kernels:
kernel-ml-4.19.2-1.el7.elrepo.x86_64
kernel-lt-4.4.163-1.el7.elrepo.x86_64

I never had this problem since I do not use Xorg (GFX), rather I only

use serial console from VBox VM from my BBB (pass-through).

=20

Thus, my suggestion for you, to skip the whole mess is to rebuild your

distro in the light of YOCTO Project 2.6.1 (thud 20.0.0.1).

=20

My best guess (then you'll inherit YOCTO kernel 4.20.x with fixed Xorg - =
X11).

=20

I am using Fedora 29 on my laptop. Also from the bugzilla:

Pat Riehecky 2018-11-20 15:46:11 UTC=20

Bug resolved by rebuilding xorg-x11-server-1.20.3-1.fc29 [1] for 7.6.

With this in mind it appears to be an Xorg server bug rather than fbdev.

=20

From my HP EliteBook 840 G1 Fedora 29, Xorg.0.log - February 5th, 2019.,

I have the following:

=20

[    26.955] Kernel command line: =
BOOT_IMAGE=3D/vmlinuz-4.20.6-200.fc29.x86_64

root=3D/dev/mapper/fedora-root ro  <http://rd.lvm.lv> =
rd.lvm.lv=3Dfedora/root  <http://rd.lvm.lv> rd.lvm.lv=3Dfedora/swap rhgb

quiet LANG=3Den_US.UTF-8

[    26.955] Build Date: 11 January 2019  12:47:38PM
[    26.955] Build ID: xorg-x11-server 1.20.3-3.fc29
[    26.955] Current version of pixman: 0.34.0

Best Regards,
Zoran
_______

On Tue, Feb 5, 2019 at 2:49 PM Zoran Stojsavljevic < =
<mailto:zoran.stojsavljevic@gmail.com> zoran.stojsavljevic@gmail.com> =
wrote:
>
> Hello Nikola,
>
> > I created a kernel recipe with a bbappend file, and, I added
> > the same defconfig that I used for krogoth version.
> > The bbappend for kernel recipe concern meta-ti layer.
> > I didn't edited defconfig file in other layers which contain a
> > kernel recipe.
>
> It could be some problem that Sumo does not take your bbappend file =
into the
> consideration as placed.
>
> It could be something else, as well.
>
> I have the same issue with my defconfig file for my Thud Beagle Bone =
Black (BBB)
> standard board. Every time I recompile my YOCTO for it for different =
releases, I need
> to import my specific defconfig. But I use complete different repos =
for my standard
> Beagle Bone Black than YOCTO BBB Poky reference distro.
>
> Here is what I use in Thud (my bblayers.conf):
>
> POKY_BBLAYERS_CONF_VERSION =3D "2"
> BBPATH =3D "${TOPDIR}"
> BBFILES ?=3D ""
>
> BBLAYERS ?=3D " \
>     /home/user/projects2/beaglebone-black/yocto-thud/meta-bbb \
>     =
/home/user/projects2/beaglebone-black/yocto-thud/meta-openembedded/meta-n=
etworking \
>     =
/home/user/projects2/beaglebone-black/yocto-thud/meta-openembedded/meta-o=
e \
>     =
/home/user/projects2/beaglebone-black/yocto-thud/meta-openembedded/meta-p=
ython \
>     /home/user/projects2/beaglebone-black/yocto-thud/meta-qt5 \
>     /home/user/projects2/beaglebone-black/yocto-thud/poky/meta \
>     /home/user/projects2/beaglebone-black/yocto-thud/poky/meta-poky"
>
> There, I replace defconfig in this layer: =
/home/user/projects2/beaglebone-black/yocto-thud/meta-bbb
> with my own defconfig.
>
> In the directory:
> =
/home/user/projects2/beaglebone-black/yocto-thud/meta-bbb/recipes-kernel/=
linux/linux-stable-4.19/beaglebone
>
> If you use only Poky repository, then you need to read the following =
paragraph (how to use
> your defconfig with Poky):
>
> [2.3.3. Changing the Configuration] YOCTO Project Linux Development =
Manual
>  =
<https://www.yoctoproject.org/docs/2.5/kernel-dev/kernel-dev.html#using-a=
n-in-tree-defconfig-file> =
https://www.yoctoproject.org/docs/2.5/kernel-dev/kernel-dev.html#using-an=
-in-tree-defconfig-file
> 2.3.3. Changing the Configuration
>
> I hope this will help. Please, keep us posted!
>
> Zoran
> _______
>
>
> On Tue, Feb 5, 2019 at 10:54 AM Stanisavljevic < =
<mailto:n.stanisavljevic@polycaptil.fr> n.stanisavljevic@polycaptil.fr> =
wrote:
>>
>> Hy Zoran
>>
>> Thank's to take time to answer
>>
>> I created a kernel recipe with a bbappend file, and, I added the same =
defconfig that I used for krogoth version.
>> The bbappend for kernel recipe concern meta-ti layer.
>> I didn't edited defconfig file in other layers which contain a kernel =
recipe.
>>
>> I think it's a problem which concern the screen resolution, screen =
frequency and adc touchscreen.
>> Something is different between the krogoth and sumo version, but I =
didn't find what is changed...
>>
>> Xrandr show that problem is maybe around the screen resolution.
>> It's show the next message : "Size 1024x768 not found in available =
modes"
>> Maybe it was changed between krogoth and sumo version...but I don't =
know where it is indicated if sources files...
>>
>> What do you think ? problem can be around the screen resolution, =
screen frequency and adc touchscreen ?
>>
>> Nikola
>>
>> -----Message d'origine-----
>> De : Zoran Stojsavljevic < <mailto:zoran.stojsavljevic@gmail.com> =
zoran.stojsavljevic@gmail.com>
>> Envoy=C3=A9 : lundi 4 f=C3=A9vrier 2019 17:08
>> =C3=80 : Stanisavljevic < <mailto:n.stanisavljevic@polycaptil.fr> =
n.stanisavljevic@polycaptil.fr>
>> Cc : Yocto Project < <mailto:yocto@yoctoproject.org> =
yocto@yoctoproject.org>
>> Objet : Re: [yocto] yocto touchscreen
>>
>> > I built a first version of this os with version krogoth and it =
works fine.
>> >
>> > Now I build a second version of this os with version sumo and the
>> > touch screen works fine during boot process but when kernel is =
loaded,
>> > touchscreen freeze / lock and impossible to use it.
>>
>> Did you compare Krogoth kernel defconfig with Sumo kernel defconfig?
>>
>> May there are some mismatches in drivers' setup between these two?
>>
>> Zoran
>> _______
>>
>> On Mon, Feb 4, 2019 at 12:24 PM Stanisavljevic < =
<mailto:n.stanisavljevic@polycaptil.fr> n.stanisavljevic@polycaptil.fr> =
wrote:
>> >
>> > Hy Team,
>> >
>> >
>> >
>> > I have a problem
>> >
>> >
>> >
>> > I buid a custom os for AM335x processor and I used yocto to do it.
>> >
>> >
>> >
>> > I build a first version of this os with version krogoth and it work =
fine.
>> >
>> >
>> >
>> > Now I build a second version of this os with version sumo and the =
touchscreen work fine during boot process but when kernel is loaded, =
touchscreen freeze / lock and impossible to use it.
>> >
>> > The terminal is printed on the touchscreen but the screen is =
locked, impossible to write a command or to move the mouse to select, =
=E2=80=A6.
>> >
>> >
>> >
>> > Here is the log of boot to the user session (log got with serial =
communication between PC and board) :
>> >
>> >
>> >
>> > U-Boot SPL 2017.05-00001-g041a398 (May 02 2018 - 18:36:57)
>> >
>> > Trying to boot from MMC1
>> >
>> > reading uboot.env
>> >
>> > reading u-boot.img
>> >
>> > reading u-boot.img
>> >
>> > reading u-boot.img
>> >
>> > reading u-boot.img
>> >
>> >
>> >
>> >
>> >
>> > U-Boot 2017.05-00001-g041a398 (May 02 2018 - 18:36:57 +0200)
>> >
>> >
>> >
>> > CPU  : AM335X-GP rev 2.1
>> >
>> > Model: TI AM335x EVM-SK
>> >
>> > DRAM:  256 MiB
>> >
>> > NAND:  0 MiB
>> >
>> > MMC:   OMAP SD/MMC: 0, OMAP SD/MMC: 1
>> >
>> > reading uboot.env
>> >
>> > ERROR: No USB device found
>> >
>> >
>> >
>> > at drivers/usb/gadget/ether.c:2709/usb_ether_init()
>> >
>> > Net:   CACHE: Misaligned operation at range [8df323c0, 8df32464]
>> >
>> >
>> >
>> > Warning: ethernet@4a100000 using MAC address from ROM
>> >
>> > eth0: ethernet@4a100000
>> >
>> > Hit any key to stop autoboot:  0
>> >
>> > reading zImage
>> >
>> > 3412752 bytes read in 251 ms (13 MiB/s)
>> >
>> > reading dtb
>> >
>> > 39733 bytes read in 12 ms (3.2 MiB/s)
>> >
>> > ## Flattened Device Tree blob at 82000000
>> >
>> >    Booting using the fdt blob at 0x82000000
>> >
>> >    Loading Device Tree to 8df19000, end 8df25b34 ... OK
>> >
>> >
>> >
>> > Starting kernel ...
>> >
>> >
>> >
>> > [    0.000000] Booting Linux on physical CPU 0x0
>> >
>> > [    0.000000] Initializing cgroup subsys cpu
>> >
>> > [    0.000000] Initializing cgroup subsys cpuacct
>> >
>> > [    0.000000] Linux version 4.4.19-ge581bb1cac =
(polycaptil@polycaptil-HP-Notebook) (gcc version 5.3.0 (GCC) ) #1 =
PREEMPT Thu May 24 11:42:17 CEST 2018
>> >
>> > [    0.000000] CPU: ARMv7 Processor [413fc082] revision 2 (ARMv7), =
cr=3D10c5387d
>> >
>> > [    0.000000] CPU: PIPT / VIPT nonaliasing data cache, VIPT =
aliasing instruction cache
>> >
>> > [    0.000000] Machine model: TI AM335x EVM-SK
>> >
>> > [    0.000000] cma: Reserved 48 MiB at 0x8a800000
>> >
>> > [    0.000000] Memory policy: Data cache writeback
>> >
>> > [    0.000000] CPU: All CPU(s) started in SVC mode.
>> >
>> > [    0.000000] AM335X ES2.1 (sgx neon )
>> >
>> > [    0.000000] Built 1 zonelists in Zone order, mobility grouping =
on.  Total pages: 64960
>> >
>> > [    0.000000] Kernel command line: console=3DttyO0,115200 =
root=3D/dev/mmcblk0p3 rw
>> >
>> > [    0.000000] PID hash table entries: 1024 (order: 0, 4096 bytes)
>> >
>> > [    0.000000] Dentry cache hash table entries: 32768 (order: 5, =
131072 bytes)
>> >
>> > [    0.000000] Inode-cache hash table entries: 16384 (order: 4, =
65536 bytes)
>> >
>> > [    0.000000] Memory: 200444K/262144K available (6495K kernel =
code, 313K rwdata, 2368K rodata, 260K init, 265K bss, 12548K reserved, =
49152K cma-reserved, 0K highmem)
>> >
>> > [    0.000000] Virtual kernel memory layout:
>> >
>> > [    0.000000]     vector  : 0xffff0000 - 0xffff1000   (   4 kB)
>> >
>> > [    0.000000]     fixmap  : 0xffc00000 - 0xfff00000   (3072 kB)
>> >
>> > [    0.000000]     vmalloc : 0xd0800000 - 0xff800000   ( 752 MB)
>> >
>> > [    0.000000]     lowmem  : 0xc0000000 - 0xd0000000   ( 256 MB)
>> >
>> > [    0.000000]     pkmap   : 0xbfe00000 - 0xc0000000   (   2 MB)
>> >
>> > [    0.000000]     modules : 0xbf000000 - 0xbfe00000   (  14 MB)
>> >
>> > [    0.000000]       .text : 0xc0008000 - 0xc08b0034   (8865 kB)
>> >
>> > [    0.000000]       .init : 0xc08b1000 - 0xc08f2000   ( 260 kB)
>> >
>> > [    0.000000]       .data : 0xc08f2000 - 0xc09407f0   ( 314 kB)
>> >
>> > [    0.000000]        .bss : 0xc09407f0 - 0xc0982d58   ( 266 kB)
>> >
>> > [    0.000000] SLUB: HWalign=3D64, Order=3D0-3, MinObjects=3D0, =
CPUs=3D1, Nodes=3D1
>> >
>> > [    0.000000] Preemptible hierarchical RCU implementation.
>> >
>> > [    0.000000]  Build-time adjustment of leaf fanout to 32.
>> >
>> > [    0.000000] NR_IRQS:16 nr_irqs:16 16
>> >
>> > [    0.000000] IRQ: Found an INTC at 0xfa200000 (revision 5.0) with =
128 interrupts
>> >
>> > [    0.000000] OMAP clockevent source: timer2 at 24000000 Hz
>> >
>> > [    0.000015] sched_clock: 32 bits at 24MHz, resolution 41ns, =
wraps every 89478484971ns
>> >
>> > [    0.000036] clocksource: timer1: mask: 0xffffffff max_cycles: =
0xffffffff, max_idle_ns: 79635851949 ns
>> >
>> > [    0.000047] OMAP clocksource: timer1 at 24000000 Hz
>> >
>> > [    0.000222] clocksource_probe: no matching clocksources found
>> >
>> > [    0.000415] Console: colour dummy device 80x30
>> >
>> > [    0.000442] WARNING: Your 'console=3DttyO0' has been replaced by =
'ttyS0'
>> >
>> > [    0.000448] This ensures that you still see kernel messages. =
Please
>> >
>> > [    0.000454] update your kernel commandline.
>> >
>> > [    0.000473] Calibrating delay loop... 795.44 BogoMIPS =
(lpj=3D3977216)
>> >
>> > [    0.089064] pid_max: default: 32768 minimum: 301
>> >
>> > [    0.089193] Mount-cache hash table entries: 1024 (order: 0, 4096 =
bytes)
>> >
>> > [    0.089205] Mountpoint-cache hash table entries: 1024 (order: 0, =
4096 bytes)
>> >
>> > [    0.089932] Initializing cgroup subsys io
>> >
>> > [    0.089964] Initializing cgroup subsys memory
>> >
>> > [    0.090005] Initializing cgroup subsys devices
>> >
>> > [    0.090021] Initializing cgroup subsys freezer
>> >
>> > [    0.090036] Initializing cgroup subsys perf_event
>> >
>> > [    0.090048] Initializing cgroup subsys pids
>> >
>> > [    0.090078] CPU: Testing write buffer coherency: ok
>> >
>> > [    0.090499] Setting up static identity map for 0x80008200 - =
0x80008258
>> >
>> > [    0.092680] devtmpfs: initialized
>> >
>> > [    0.105440] VFP support v0.3: implementor 41 architecture 3 part =
30 variant c rev 3
>> >
>> > [    0.120529] omap_hwmod: debugss: _wait_target_disable failed
>> >
>> > [    0.175584] clocksource: jiffies: mask: 0xffffffff max_cycles: =
0xffffffff, max_idle_ns: 19112604462750000 ns
>> >
>> > [    0.179852] pinctrl core: initialized pinctrl subsystem
>> >
>> > [    0.181216] NET: Registered protocol family 16
>> >
>> > [    0.183420] DMA: preallocated 256 KiB pool for atomic coherent =
allocations
>> >
>> > [    0.209061] cpuidle: using governor ladder
>> >
>> > [    0.239048] cpuidle: using governor menu
>> >
>> > [    0.243661] OMAP GPIO hardware version 0.1
>> >
>> > [    0.254360] hw-breakpoint: debug architecture 0x4 unsupported.
>> >
>> > [    0.297629] edma 49000000.edma: TI EDMA DMA engine driver
>> >
>> > [    0.298606] reg-fixed-voltage fixedregulator@2: could not find =
pctldev for node =
/ocp/l4_wkup@44c00000/scm@210000/pinmux@800/pinmux_wl12xx_gpio, =
deferring probe
>> >
>> > [    0.302364] omap_i2c 44e0b000.i2c: could not find pctldev for =
node /ocp/l4_wkup@44c00000/scm@210000/pinmux@800/pinmux_i2c0_pins, =
deferring probe
>> >
>> > [    0.302525] media: Linux media interface: v0.10
>> >
>> > [    0.302588] Linux video capture interface: v2.00
>> >
>> > [    0.302638] pps_core: LinuxPPS API ver. 1 registered
>> >
>> > [    0.302646] pps_core: Software ver. 5.3.6 - Copyright 2005-2007 =
Rodolfo Giometti < <mailto:giometti@linux.it> giometti@linux.it>
>> >
>> > [    0.302676] PTP clock support registered
>> >
>> > [    0.302741] EDAC MC: Ver: 3.0.0
>> >
>> > [    0.303966] omap-mailbox 480c8000.mailbox: omap mailbox rev =
0x400
>> >
>> > [    0.304332] Advanced Linux Sound Architecture Driver =
Initialized.
>> >
>> > [    0.305512] clocksource: Switched to clocksource timer1
>> >
>> > [    0.316775] NET: Registered protocol family 2
>> >
>> > [    0.317599] TCP established hash table entries: 2048 (order: 1, =
8192 bytes)
>> >
>> > [    0.317636] TCP bind hash table entries: 2048 (order: 1, 8192 =
bytes)
>> >
>> > [    0.317663] TCP: Hash tables configured (established 2048 bind =
2048)
>> >
>> > [    0.317748] UDP hash table entries: 256 (order: 0, 4096 bytes)
>> >
>> > [    0.317767] UDP-Lite hash table entries: 256 (order: 0, 4096 =
bytes)
>> >
>> > [    0.317925] NET: Registered protocol family 1
>> >
>> > [    0.318352] RPC: Registered named UNIX socket transport module.
>> >
>> > [    0.318366] RPC: Registered udp transport module.
>> >
>> > [    0.318372] RPC: Registered tcp transport module.
>> >
>> > [    0.318379] RPC: Registered tcp NFSv4.1 backchannel transport =
module.
>> >
>> > [    0.319330] hw perfevents: enabled with armv7_cortex_a8 PMU =
driver, 5 counters available
>> >
>> > [    0.321392] futex hash table entries: 256 (order: -1, 3072 =
bytes)
>> >
>> > [    0.329780] squashfs: version 4.0 (2009/01/31) Phillip Lougher
>> >
>> > [    0.330717] NFS: Registering the id_resolver key type
>> >
>> > [    0.330798] Key type id_resolver registered
>> >
>> > [    0.330807] Key type id_legacy registered
>> >
>> > [    0.330886] ntfs: driver 2.1.32 [Flags: R/O].
>> >
>> > [    0.334673] Block layer SCSI generic (bsg) driver version 0.4 =
loaded (major 248)
>> >
>> > [    0.334706] io scheduler noop registered
>> >
>> > [    0.334719] io scheduler deadline registered
>> >
>> > [    0.334877] io scheduler cfq registered (default)
>> >
>> > [    0.336555] pinctrl-single 44e10800.pinmux: 142 pins at pa =
f9e10800 size 568
>> >
>> > [    0.339415] backlight supply power not found, using dummy =
regulator
>> >
>> > [    0.402480] Serial: 8250/16550 driver, 10 ports, IRQ sharing =
disabled
>> >
>> > [    0.406962] 44e09000.serial: ttyS0 at MMIO 0x44e09000 (irq =3D =
158, base_baud =3D 3000000) is a 8250
>> >
>> > [    1.017357] console [ttyS0] enabled
>> >
>> > [    1.022206] 48022000.serial: ttyS1 at MMIO 0x48022000 (irq =3D =
159, base_baud =3D 3000000) is a 8250
>> >
>> > [    1.032273] [drm] Initialized drm 1.1.0 20060810
>> >
>> > [    1.039564] [drm] Supports vblank timestamp caching Rev 2 =
(21.10.2013).
>> >
>> > [    1.046349] [drm] No driver support for vblank timestamp query.
>> >
>> > [    1.062121] Console: switching to colour frame buffer device =
60x34
>> >
>> > [    1.070360] tilcdc 4830e000.lcdc: fb0:  frame buffer device
>> >
>> > [    1.105531] [drm] Initialized tilcdc 1.0.0 20121205 on minor 0
>> >
>> > [    1.118644] loop: module loaded
>> >
>> > [    1.124253] libphy: Fixed MDIO Bus: probed
>> >
>> > [    1.185550] davinci_mdio 4a101000.mdio: davinci mdio revision =
1.6
>> >
>> > [    1.191695] davinci_mdio 4a101000.mdio: detected phy mask =
fffffffe
>> >
>> > [    1.198786] libphy: 4a101000.mdio: probed
>> >
>> > [    1.202886] davinci_mdio 4a101000.mdio: phy[0]: device =
4a101000.mdio:00, driver SMSC LAN8710/LAN8720
>> >
>> > [    1.212890] cpsw 4a100000.ethernet: Detected MACID =3D =
a0:f6:fd:4c:a6:ba
>> >
>> > [    1.220531] cpsw 4a100000.ethernet: cpsw: Detected MACID =3D =
c4:ed:ba:88:2a:92
>> >
>> > [    1.229382] mousedev: PS/2 mouse device common for all mice
>> >
>> > [    1.235845] i2c /dev entries driver
>> >
>> > [    1.240508] cpuidle: enable-method property 'ti,am3352' found =
operations
>> >
>> > [    1.248197] omap_hsmmc 48060000.mmc: Got CD GPIO
>> >
>> > [    1.275713] pinctrl-single 44e10800.pinmux: bad data for mux =
pinmux_mmc2_pins
>> >
>> > [    1.282895] pinctrl-single 44e10800.pinmux: no pins entries for =
pinmux_mmc2_pins
>> >
>> > [    1.317159] ledtrig-cpu: registered to indicate activity on CPUs
>> >
>> > [    1.326069] NET: Registered protocol family 10
>> >
>> > [    1.332092] sit: IPv6 over IPv4 tunneling driver
>> >
>> > [    1.337715] NET: Registered protocol family 17
>> >
>> > [    1.342510] Key type dns_resolver registered
>> >
>> > [    1.347095] omap_voltage_late_init: Voltage driver support not =
added
>> >
>> > [    1.407145] tps65910-rtc tps65910-rtc: rtc core: registered =
tps65910-rtc as rtc0
>> >
>> > [    1.415278] omap_i2c 44e0b000.i2c: bus 0 rev0.11 at 400 kHz
>> >
>> > [    1.421665] omap_hsmmc 48060000.mmc: Got CD GPIO
>> >
>> > [    1.426813] vmmc: supplied by vbat
>> >
>> > [    1.466341] pinctrl-single 44e10800.pinmux: bad data for mux =
pinmux_mmc2_pins
>> >
>> > [    1.474737] pinctrl-single 44e10800.pinmux: no pins entries for =
pinmux_mmc2_pins
>> >
>> > [    1.513247] mmc0: host does not support reading read-only =
switch, assuming write-enable
>> >
>> > [    1.523414] mmc0: new high speed SDHC card at address 0001
>> >
>> > [    1.529635] mmcblk0: mmc0:0001 AS 3.72 GiB
>> >
>> > [    1.535996]  mmcblk0: p1 p2 p3
>> >
>> > [    1.595932] vdd_mpu: supplied by vbat
>> >
>> > [    1.602167] input: gpio_buttons@0 as =
/devices/platform/gpio_buttons@0/input/input0
>> >
>> > [    1.618291] tps65910-rtc tps65910-rtc: setting system clock to =
2019-02-01 20:07:49 UTC (1549051669)
>> >
>> > [    1.639394] lis3_reg: disabling
>> >
>> > [    1.655732] ALSA device list:
>> >
>> > [    1.658720]   No soundcards found.
>> >
>> > [    1.678290] EXT4-fs (mmcblk0p3): couldn't mount as ext3 due to =
feature incompatibilities
>> >
>> > [    1.696920] EXT4-fs (mmcblk0p3): couldn't mount as ext2 due to =
feature incompatibilities
>> >
>> > [    2.183999] EXT4-fs (mmcblk0p3): recovery complete
>> >
>> > [    2.196864] EXT4-fs (mmcblk0p3): mounted filesystem with ordered =
data mode. Opts: (null)
>> >
>> > [    2.205084] VFS: Mounted root (ext4 filesystem) on device 179:3.
>> >
>> > [    2.225670] devtmpfs: mounted
>> >
>> > [    2.235781] Freeing unused kernel memory: 260K (c08b1000 - =
c08f2000)
>> >
>> > [    2.242162] This architecture does not have kernel memory =
protection.
>> >
>> > INIT: version 2.88 booting
>> >
>> > Starting udev
>> >
>> > [    3.090091] udevd[78]: starting version 3.2.5
>> >
>> > [    3.106175] random: udevd: uninitialized urandom read (16 bytes =
read, 26 bits of entropy available)
>> >
>> > [    3.118667] random: udevd: uninitialized urandom read (16 bytes =
read, 26 bits of entropy available)
>> >
>> > [    3.128014] random: udevd: uninitialized urandom read (16 bytes =
read, 26 bits of entropy available)
>> >
>> > [    3.137335] random: udevd: uninitialized urandom read (16 bytes =
read, 26 bits of entropy available)
>> >
>> > [    3.218433] udevd[79]: starting eudev-3.2.5
>> >
>> > [    3.325886] random: udevd: uninitialized urandom read (16 bytes =
read, 29 bits of entropy available)
>> >
>> > [    3.346155] random: udevd: uninitialized urandom read (16 bytes =
read, 29 bits of entropy available)
>> >
>> > [    4.820708] EXT4-fs (mmcblk0p3): re-mounted. Opts: =
data=3Dordered
>> >
>> > [    5.548283] random: dd: uninitialized urandom read (512 bytes =
read, 43 bits of entropy available)
>> >
>> > INIT: Entering runlevel: 5
>> >
>> > Configuring network interfaces... [    5.820546] net eth0: =
initializing cpsw version 1.12 (0)
>> >
>> > [    5.825987] net eth0: initialized cpsw ale version 1.4
>> >
>> > [    5.831150] net eth0: ALE Table size 1024
>> >
>> > [    5.838581] net eth0: phy found : id is : 0x7c0f1
>> >
>> > [    5.851838] IPv6: ADDRCONF(NETDEV_UP): eth0: link is not ready
>> >
>> > [    9.896392] cpsw 4a100000.ethernet eth0: Link is Up - =
100Mbps/Full - flow control rx/tx
>> >
>> > [    9.904635] IPv6: ADDRCONF(NETDEV_CHANGE): eth0: link becomes =
ready
>> >
>> > chown: unrecognized option '--reference=3D/etc/resolv.conf'
>> >
>> > BusyBox v1.27.2 (2018-11-05 21:16:09 UTC) multi-call binary.
>> >
>> >
>> >
>> > Usage: chown [-Rh]... USER[:[GRP]] FILE...
>> >
>> > chmod: unrecognized option '--reference=3D/etc/resolv.conf'
>> >
>> > BusyBox v1.27.2 (2018-11-05 21:16:09 UTC) multi-call binary.
>> >
>> >
>> >
>> > Usage: chmod [-R] MODE[,MODE]... FILE...
>> >
>> > done.
>> >
>> > Starting system message bus: [   14.887099] random: dbus-daemon: =
uninitialized urandom read (12 bytes read, 62 bits of entropy available)
>> >
>> > [   14.912318] random: dbus-daemon: uninitialized urandom read (12 =
bytes read, 62 bits of entropy available)
>> >
>> > dbus.
>> >
>> > Starting OpenBSD Secure Shell server: sshd
>> >
>> > [   15.393971] random: sshd: uninitialized urandom read (32 bytes =
read, 65 bits of entropy available)
>> >
>> > done.
>> >
>> > Starting Xserver
>> >
>> > Starting DHCP server:
>> >
>> > .
>> >
>> > starting DNS forwarder and DHCP server: dnsmasq...
>> >
>> > X.Org X Server 1.19.6
>> >
>> > Release Date: 2017-12-20
>> >
>> > X Protocol Version 11, Revision 0
>> >
>> > Build Operating System: Linux 4.15.0-38-generic x86_64
>> >
>> > Current Operating System: Linux polycaptil-machine-am335x-evmsk
>> > 4.4.19-ge581bb1cac #1 PREEMPT Thu May 24 11:42:17 CEST 2018 armv7l
>> >
>> > Kernel command line: console=3DttyO0,115200 root=3D/dev/mmcblk0p3 =
rw
>> >
>> > Build Date: 05 November 2018  09:33:21PM
>> >
>> >
>> >
>> > Current version of pixman: 0.34.0
>> >
>> >         Before reporting problems, check  <http://wiki.x.org> =
http://wiki.x.org
>> >
>> >         to make sure that you have the latest version.
>> >
>> > Markers: (--) probed, (**) from config file, (=3D=3D) default =
setting,
>> >
>> >         (++) from command line, (!!) notice, (II) informational,
>> >
>> >         (WW) warning, (EE) error, (NI) not implemented, (??) =
unknown.
>> >
>> > (=3D=3D) Log file: "/var/log/Xorg.0.log", Time: Fri Feb  1 20:08:02 =
2019
>> >
>> > (=3D=3D) Using config file: "/etc/X11/xorg.conf"
>> >
>> > (=3D=3D) Using system config directory "/usr/share/X11/xorg.conf.d"
>> >
>> > done.
>> >
>> > Starting HOSTAP Daemon: Configuration file: /etc/hostapd.conf
>> >
>> > nl80211: 'nl80211' generic netlink not found
>> >
>> > Failed to initialize driver 'nl80211'
>> >
>> > wlan0: interface state UNINITIALIZED->DISABLED
>> >
>> > wlan0: AP-DISABLED
>> >
>> > hostapd_free_hapd_data: Interface wlan0 wasn't started
>> >
>> > Starting ntpd: done
>> >
>> > Starting syslogd/klogd: done
>> >
>> > Starting crond: OK
>> >
>> >
>> >
>> > Poky (Yocto Project Reference Distro) 2.5
>> > polycaptil-machine-am335x-evmsk /dev/ttyS0
>> >
>> >
>> >
>> > polycaptil-machine-am335x-evmsk login: D-BUS per-session daemon
>> > address is:
>> > =
unix:abstract=3D/tmp/dbus-07WuJSySeb,guid=3Da3e41f2692316c19766e95535c54a=
7
>> > 25
>> >
>> > Size 1024x768 not found in available modes
>> >
>> > Error: No calibratable devices found.
>> >
>> > matchbox: Cant find a keycode for keysym 269025056
>> >
>> > matchbox: ignoring key shortcut XF86Calendar=3D!$contacts
>> >
>> >
>> >
>> > matchbox: Cant find a keycode for keysym 2809
>> >
>> > matchbox: ignoring key shortcut telephone=3D!$dates
>> >
>> >
>> >
>> > matchbox: Cant find a keycode for keysym 269025050
>> >
>> > matchbox: ignoring key shortcut XF86Start=3D!matchbox-remote =
-desktop
>> >
>> >
>> >
>> > dbus-daemon[358]: Activating service =
name=3D'org.a11y.atspi.Registry'
>> > requested by ':1.0' (uid=3D0 pid=3D354 comm=3D"matchbox-terminal ")
>> >
>> > dbus-daemon[358]: Successfully activated service =
'org.a11y.atspi.Registry'
>> >
>> > SpiRegistry daemon is running with well-known name -
>> > org.a11y.atspi.Registry
>> >
>> > [   30.662697] random: nonblocking pool is initialized
>> >
>> >
>> >
>> > Poky (Yocto Project Reference Distro) 2.5
>> > polycaptil-machine-am335x-evmsk /dev/ttyS0
>> >
>> >
>> >
>> > Thank=E2=80=99s to take time to read my message.
>> >
>> > N.Stanisavljevic
>> >
>> > --
>> > _______________________________________________
>> > yocto mailing list
>> >  <mailto:yocto@yoctoproject.org> yocto@yoctoproject.org
>> >  <https://lists.yoctoproject.org/listinfo/yocto> =
https://lists.yoctoproject.org/listinfo/yocto
>>


------=_NextPart_000_00C0_01D4F090.351D0C40
Content-Type: text/html;
	charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40"><head><meta =
http-equiv=3DContent-Type content=3D"text/html; charset=3Dutf-8"><meta =
name=3DGenerator content=3D"Microsoft Word 15 (filtered =
medium)"><style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
p.msonormal0, li.msonormal0, div.msonormal0
	{mso-style-name:msonormal;
	mso-margin-top-alt:auto;
	margin-right:0cm;
	mso-margin-bottom-alt:auto;
	margin-left:0cm;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.gmail-m-2391544497964063811gmail-m6574121755013685205gmail-m-2573238=
030158729977gmail-m3069207977298945462gmail-fn
	=
{mso-style-name:gmail-m_-2391544497964063811gmail-m_6574121755013685205gm=
ail-m_-2573238030158729977gmail-m3069207977298945462gmail-fn;}
span.gmail-m-2391544497964063811gmail-m6574121755013685205gmail-m-2573238=
030158729977gmail-m3069207977298945462gmail-vcard
	=
{mso-style-name:gmail-m_-2391544497964063811gmail-m_6574121755013685205gm=
ail-m_-2573238030158729977gmail-m3069207977298945462gmail-vcard;}
span.gmail-m-2391544497964063811gmail-m6574121755013685205gmail-m-2573238=
030158729977gmail-m3069207977298945462gmail-bzcommenttime
	=
{mso-style-name:gmail-m_-2391544497964063811gmail-m_6574121755013685205gm=
ail-m_-2573238030158729977gmail-m3069207977298945462gmail-bzcommenttime;}=

span.EmailStyle21
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 70.85pt 70.85pt 70.85pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--></head><body lang=3DFR link=3Dblue =
vlink=3Dpurple><div class=3DWordSection1><p class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-US'>Hello =
Zoran,<o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>I tried to change X.org X Server =
version<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>To do this I used yocto warrior =
version.<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>When I boot the system, =
it=E2=80=99s written that x.org X Server version is to =
1.20.4<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>But I have the same problem as =
before, the touchscreen is completely locked and don=E2=80=99t react =
when I touch the screen.<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>Do you have an other idea where the =
problem is coming ?<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>Here I copy the boot log =
:<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>U-Boot SPL 2017.05-00001-g041a398 =
(May 02 2018 - 18:36:57)<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US style=3D'mso-fareast-language:EN-US'>Trying to boot from =
MMC1<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>reading =
uboot.env<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>reading =
u-boot.img<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>reading =
u-boot.img<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>reading =
u-boot.img<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>reading =
u-boot.img<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>U-Boot 2017.05-00001-g041a398 (May =
02 2018 - 18:36:57 +0200)<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>CPU=C2=A0 : AM335X-GP rev =
2.1<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>Model: TI AM335x =
EVM-SK<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>DRAM:=C2=A0 256 =
MiB<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>NAND:=C2=A0 0 =
MiB<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>MMC:=C2=A0=C2=A0 OMAP SD/MMC: 0, =
OMAP SD/MMC: 1<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US style=3D'mso-fareast-language:EN-US'>reading =
uboot.env<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>ERROR: No USB device =
found<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>at =
drivers/usb/gadget/ether.c:2709/usb_ether_init()<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>Net:=C2=A0=C2=A0 CACHE: Misaligned =
operation at range [8df323c0, 8df32464]<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>Warning: ethernet@4a100000 using =
MAC address from ROM<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US style=3D'mso-fareast-language:EN-US'>eth0: =
ethernet@4a100000<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US style=3D'mso-fareast-language:EN-US'>Hit any key to stop =
autoboot:=C2=A0 0<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US style=3D'mso-fareast-language:EN-US'>reading =
zImage<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>3412752 bytes read in 251 ms (13 =
MiB/s)<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>reading dtb<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>39733 bytes read in 12 ms (3.2 =
MiB/s)<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>## Flattened Device Tree blob at =
82000000<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>=C2=A0=C2=A0 Booting using the fdt =
blob at 0x82000000<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US style=3D'mso-fareast-language:EN-US'>=C2=A0=C2=A0 Loading =
Device Tree to 8df19000, end 8df25b34 ... OK<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>Starting kernel =
...<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>[ =C2=A0=C2=A0=C2=A00.000000] =
Booting Linux on physical CPU 0x0<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 0.000000] =
Initializing cgroup subsys cpu<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 0.000000] =
Initializing cgroup subsys cpuacct<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 0.000000] Linux =
version 4.4.19-ge581bb1cac =
(polycaptil@polycaptil-HP-Notebo=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 =
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0ok) (gcc version =
5.3.0 (GCC) ) #1 PREEMPT Thu May 24 11:42:17 CEST =
2018<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 0.000000] CPU: =
ARMv7 Processor [413fc082] revision 2 (ARMv7), =
cr=3D10c5387d<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 =
0.000000] CPU: PIPT / VIPT nonaliasing data cache, VIPT aliasing =
instructio=C2=A0=C2=A0=C2=A0 =
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
n cache<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 0.000000] =
Machine model: TI AM335x EVM-SK<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 0.000000] cma: =
Reserved 48 MiB at 0x8a800000<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 0.000000] =
Memory policy: Data cache writeback<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 0.000000] CPU: =
All CPU(s) started in SVC mode.<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 0.000000] =
AM335X ES2.1 (sgx neon )<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 =
0.000000] Built 1 zonelists in Zone order, mobility grouping on.=C2=A0 =
Total =
pag=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 es: 64960<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 0.000000] =
Kernel command line: console=3DttyO0,115200 root=3D/dev/mmcblk0p2 =
rw<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 0.000000] PID =
hash table entries: 1024 (order: 0, 4096 bytes)<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 0.000000] =
Dentry cache hash table entries: 32768 (order: 5, 131072 =
bytes)<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 0.000000] =
Inode-cache hash table entries: 16384 (order: 4, 65536 =
bytes)<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 0.000000] =
Memory: 200444K/262144K available (6495K kernel code, 313K =
rwdata=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 , 2368K rodata, 260K init, 265K bss, 12548K =
reserved, 49152K cma-reserved, 0K =
hi=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 ghmem)<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 0.000000] =
Virtual kernel memory layout:<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 =
0.000000]=C2=A0=C2=A0=C2=A0=C2=A0 vector=C2=A0 : 0xffff0000 - =
0xffff1000=C2=A0=C2=A0 (=C2=A0=C2=A0 4 kB)<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 =
0.000000]=C2=A0=C2=A0=C2=A0=C2=A0 fixmap=C2=A0 : 0xffc00000 - =
0xfff00000=C2=A0=C2=A0 (3072 kB)<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 =
0.000000]=C2=A0=C2=A0=C2=A0=C2=A0 vmalloc : 0xd0800000 - =
0xff800000=C2=A0=C2=A0 ( 752 MB)<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 =
0.000000]=C2=A0=C2=A0=C2=A0=C2=A0 lowmem=C2=A0 : 0xc0000000 - =
0xd0000000=C2=A0=C2=A0 ( 256 MB)<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 =
0.000000]=C2=A0=C2=A0=C2=A0=C2=A0 pkmap=C2=A0=C2=A0 : 0xbfe00000 - =
0xc0000000=C2=A0=C2=A0 (=C2=A0=C2=A0 2 MB)<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 =
0.000000]=C2=A0=C2=A0=C2=A0=C2=A0 modules : 0xbf000000 - =
0xbfe00000=C2=A0=C2=A0 (=C2=A0 14 MB)<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 =
0.000000]=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 .text : 0xc0008000 - =
0xc08b0034=C2=A0=C2=A0 (8865 kB)<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 =
0.000000]=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 .init : 0xc08b1000 - =
0xc08f2000=C2=A0=C2=A0 ( 260 kB)<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 =
0.000000]=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 .data : 0xc08f2000 - =
0xc09407f0=C2=A0=C2=A0 ( 314 kB)<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 =
0.000000]=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 .bss : 0xc09407f0 - =
0xc0982d58=C2=A0=C2=A0 ( 266 kB)<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 0.000000] SLUB: =
HWalign=3D64, Order=3D0-3, MinObjects=3D0, CPUs=3D1, =
Nodes=3D1<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 0.000000] =
Preemptible hierarchical RCU implementation.<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 0.000000]=C2=A0 =
Build-time adjustment of leaf fanout to 32.<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 0.000000] =
NR_IRQS:16 nr_irqs:16 16<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 =
0.000000] IRQ: Found an INTC at 0xfa200000 (revision 5.0) with 128 =
interrup=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 ts<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 0.000000] OMAP =
clockevent source: timer2 at 24000000 Hz<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 0.000013] =
sched_clock: 32 bits at 24MHz, resolution 41ns, wraps every =
89478=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 484971ns<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 0.000034] =
clocksource: timer1: mask: 0xffffffff max_cycles: 0xffffffff, =
max=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 _idle_ns: 79635851949 ns<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 0.000046] OMAP =
clocksource: timer1 at 24000000 Hz<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 0.000221] =
clocksource_probe: no matching clocksources =
found<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 0.000414] =
Console: colour dummy device 80x30<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 0.000440] =
WARNING: Your 'console=3DttyO0' has been replaced by =
'ttyS0'<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 0.000447] This =
ensures that you still see kernel messages. =
Please<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 0.000452] =
update your kernel commandline.<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 0.000471] =
Calibrating delay loop... 795.44 BogoMIPS =
(lpj=3D3977216)<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 =
0.089060] pid_max: default: 32768 minimum: 301<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 0.089190] =
Mount-cache hash table entries: 1024 (order: 0, 4096 =
bytes)<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 0.089201] =
Mountpoint-cache hash table entries: 1024 (order: 0, 4096 =
bytes)<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 0.089924] =
Initializing cgroup subsys io<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0 =C2=A00.089956] =
Initializing cgroup subsys memory<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 0.089996] =
Initializing cgroup subsys devices<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 0.090011] =
Initializing cgroup subsys freezer<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 0.090026] =
Initializing cgroup subsys perf_event<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 0.090038] =
Initializing cgroup subsys pids<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 0.090068] CPU: =
Testing write buffer coherency: ok<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 0.090493] =
Setting up static identity map for 0x80008200 - =
0x80008258<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 0.092679] =
devtmpfs: initialized<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 =
0.105439] VFP support v0.3: implementor 41 architecture 3 part 30 =
variant =
c=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0rev =
3<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 0.120521] =
omap_hwmod: debugss: _wait_target_disable failed<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 0.175644] =
clocksource: jiffies: mask: 0xffffffff max_cycles: 0xffffffff, =
ma=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 x_idle_ns: 19112604462750000 =
ns<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 0.179890] =
pinctrl core: initialized pinctrl subsystem<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 0.181243] NET: =
Registered protocol family 16<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 0.183450] DMA: =
preallocated 256 KiB pool for atomic coherent =
allocations<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 0.209057] =
cpuidle: using governor ladder<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 0.239046] =
cpuidle: using governor menu<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 0.243690] OMAP =
GPIO hardware version 0.1<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 0.254398] =
hw-breakpoint: debug architecture 0x4 =
unsupported.<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 =
0.297651] edma 49000000.edma: TI EDMA DMA engine =
driver<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 0.298633] =
reg-fixed-voltage fixedregulator@2: could not find pctldev for =
no=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 de =
/ocp/l4_wkup@44c00000/scm@210000/pinmux@800/pinmux_wl12xx_gpio, =
deferring =
pro=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 be<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 =
0.302387] omap_i2c 44e0b000.i2c: could not find pctldev for node =
/ocp/l4_wk=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
up@44c00000/scm@210000/pinmux@800/pinmux_i2c0_pins, deferring =
probe<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 0.302542] =
media: Linux media interface: v0.10<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 0.302605] Linux =
video capture interface: v2.00<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 0.302656] =
pps_core: LinuxPPS API ver. 1 registered<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 0.302664] =
pps_core: Software ver. 5.3.6 - Copyright 2005-2007 Rodolfo =
Giome=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 tti =
&lt;giometti@linux.it&gt;<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 0.302694] PTP =
clock support registered<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 =
0.302758] EDAC MC: Ver: 3.0.0<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 0.303971] =
omap-mailbox 480c8000.mailbox: omap mailbox rev =
0x400<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 0.304334] =
Advanced Linux Sound Architecture Driver =
Initialized.<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 =
0.305513] clocksource: Switched to clocksource =
timer1<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 0.316808] NET: =
Registered protocol family 2<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 0.317626] TCP =
established hash table entries: 2048 (order: 1, 8192 =
bytes)<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 0.317665] TCP =
bind hash table entries: 2048 (order: 1, 8192 =
bytes)<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 0.317693] TCP: =
Hash tables configured (established 2048 bind =
2048)<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 0.317782] UDP =
hash table entries: 256 (order: 0, 4096 bytes)<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 0.317803] =
UDP-Lite hash table entries: 256 (order: 0, 4096 =
bytes)<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 0.317960] NET: =
Registered protocol family 1<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 0.318387] RPC: =
Registered named UNIX socket transport module.<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 0.318402] RPC: =
Registered udp transport module.<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 0.318409] RPC: =
Registered tcp transport module.<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 0.318415] RPC: =
Registered tcp NFSv4.1 backchannel transport =
module.<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 0.319367] hw =
perfevents: enabled with armv7_cortex_a8 PMU driver, 5 =
counter=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 s available<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 0.321439] futex =
hash table entries: 256 (order: -1, 3072 bytes)<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 0.329858] =
squashfs: version 4.0 (2009/01/31) Phillip =
Lougher<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 0.330796] NFS: =
Registering the id_resolver key type<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 0.330874] Key =
type id_resolver registered<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 0.330882] Key =
type id_legacy registered<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 0.330960] ntfs: =
driver 2.1.32 [Flags: R/O].<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 0.334733] Block =
layer SCSI generic (bsg) driver version 0.4 loaded (major =
2=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 48)<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 0.334764] io =
scheduler noop registered<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 0.334778] io =
scheduler deadline registered<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 0.334936] io =
scheduler cfq registered (default)<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 0.336607] =
pinctrl-single 44e10800.pinmux: 142 pins at pa f9e10800 size =
568<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 0.339467] =
backlight supply power not found, using dummy =
regulator<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 0.402551] =
Serial: 8250/16550 driver, 10 ports, IRQ sharing =
disabled<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 0.407008] =
44e09000.serial: ttyS0 at MMIO 0x44e09000 (irq =3D 158, base_baud =
=3D=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 3000000) is a 8250<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 1.017402] =
console [ttyS0] enabled<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 =
1.022241] 48022000.serial: ttyS1 at MMIO 0x48022000 (irq =3D 159, =
base_baud =
=3D=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 3000000) is a 8250<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 1.032291] [drm] =
Initialized drm 1.1.0 20060810<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 1.039603] [drm] =
Supports vblank timestamp caching Rev 2 =
(21.10.2013).<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 =
1.046388] [drm] No driver support for vblank timestamp =
query.<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 1.062150] =
Console: switching to colour frame buffer device =
60x34<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 1.070379] =
tilcdc 4830e000.lcdc: fb0:=C2=A0 frame buffer =
device<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 1.105534] [drm] =
Initialized tilcdc 1.0.0 20121205 on minor 0<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 1.118627] loop: =
module loaded<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 =
1.124254] libphy: Fixed MDIO Bus: probed<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 1.185548] =
davinci_mdio 4a101000.mdio: davinci mdio revision =
1.6<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 1.191692] =
davinci_mdio 4a101000.mdio: detected phy mask =
fffffffe<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 1.198739] =
libphy: 4a101000.mdio: probed<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 1.202836] =
davinci_mdio 4a101000.mdio: phy[0]: device 4a101000.mdio:00, =
driv=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 er SMSC LAN8710/LAN8720<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 1.212833] cpsw =
4a100000.ethernet: Detected MACID =3D =
a0:f6:fd:4c:a6:ba<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 =
1.220460] cpsw 4a100000.ethernet: cpsw: Detected MACID =3D =
c4:ed:ba:88:2a:92<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 =
1.229323] mousedev: PS/2 mouse device common for all =
mice<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 1.235803] i2c =
/dev entries driver<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 =
1.240462] cpuidle: enable-method property 'ti,am3352' found =
operations<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 1.248156] =
omap_hsmmc 48060000.mmc: Got CD GPIO<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 1.275714] =
pinctrl-single 44e10800.pinmux: bad data for mux =
pinmux_mmc2_pins<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 =
1.282895] pinctrl-single 44e10800.pinmux: no pins entries for =
pinmux_mmc2_p=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ins<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 1.317169] =
ledtrig-cpu: registered to indicate activity on =
CPUs<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 1.326062] NET: =
Registered protocol family 10<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 1.332076] sit: =
IPv6 over IPv4 tunneling driver<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 1.337708] NET: =
Registered protocol family 17<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 1.342503] Key =
type dns_resolver registered<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 1.347084] =
omap_voltage_late_init: Voltage driver support not =
added<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 1.407266] =
tps65910-rtc tps65910-rtc: rtc core: registered tps65910-rtc as =
r=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 tc0<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 1.415401] =
omap_i2c 44e0b000.i2c: bus 0 rev0.11 at 400 kHz<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 1.421798] =
omap_hsmmc 48060000.mmc: Got CD GPIO<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 1.426953] vmmc: =
supplied by vbat<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 =
1.466351] pinctrl-single 44e10800.pinmux: bad data for mux =
pinmux_mmc2_pins<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 =
1.474750] pinctrl-single 44e10800.pinmux: no pins entries for =
pinmux_mmc2_p=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ins<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 1.513248] mmc0: =
host does not support reading read-only switch, assuming =
wr=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 ite-enable<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 1.523416] mmc0: =
new high speed SDHC card at address 0001<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 1.529625] =
mmcblk0: mmc0:0001 AS 3.72 GiB<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 1.535990]=C2=A0 =
mmcblk0: p1 p2 p3<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 =
1.595934] vdd_mpu: supplied by vbat<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 1.602181] =
input: gpio_buttons@0 as =
/devices/platform/gpio_buttons@0/input/i=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 =
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0nput0<o:p></o:p></span></p><=
p class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 1.618321] =
tps65910-rtc tps65910-rtc: setting system clock to 2019-04-11 =
15:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 41:17 UTC (1554997277)<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 1.639403] =
lis3_reg: disabling<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 =
1.655736] ALSA device list:<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 =
1.658725]=C2=A0=C2=A0 No soundcards found.<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 1.678270] =
EXT4-fs (mmcblk0p2): couldn't mount as ext3 due to feature =
incomp=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 atibilities<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 1.696893] =
EXT4-fs (mmcblk0p2): couldn't mount as ext2 due to feature =
incomp=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 atibilities<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 1.918459] =
EXT4-fs (mmcblk0p2): recovery complete<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 1.926817] =
EXT4-fs (mmcblk0p2): mounted filesystem with ordered data mode. =
O=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 =C2=A0pts: (null)<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 1.945553] VFS: =
Mounted root (ext4 filesystem) on device 179:2.<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 1.951741] =
devtmpfs: mounted<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 =
1.955142] Freeing unused kernel memory: 260K (c08b1000 - =
c08f2000)<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 1.975513] This =
architecture does not have kernel memory =
protection.<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>INIT: version 2.88 =
booting<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>Starting =
udev<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 2.626491] =
udevd[78]: starting version 3.2.7<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 2.632958] =
random: udevd: uninitialized urandom read (16 bytes read, 19 =
bits=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 of entropy =
available)<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 2.655617] =
random: udevd: uninitialized urandom read (16 bytes read, 19 =
bits=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 of entropy =
available)<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 2.675821] =
random: udevd: uninitialized urandom read (16 bytes read, 20 =
bits=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0of =
entropy available)<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 =
2.685085] random: udevd: uninitialized urandom read (16 bytes read, 20 =
bits=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 of entropy =
available)<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 2.730297] =
udevd[78]: specified group 'kvm' unknown<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 2.798310] =
udevd[79]: starting eudev-3.2.7<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 3.062517] =
random: udevd: uninitialized urandom read (16 bytes read, 23 =
bits=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 of entropy =
available)<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 3.095948] =
random: udevd: uninitialized urandom read (16 bytes read, 23 =
bits=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 of entropy =
available)<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 3.128747] =
udevd[79]: specified group 'kvm' unknown<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 4.544886] =
EXT4-fs (mmcblk0p2): re-mounted. Opts: =
data=3Dordered<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 =
5.086681] random: dd: uninitialized urandom read (512 bytes read, 36 =
bits =
o=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 f entropy available)<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>INIT: Entering runlevel: =
5<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>Configuring network interfaces... =
[=C2=A0=C2=A0=C2=A0 5.281526] net eth0: initializing cpsw =
ver=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0sion 1.12 =
(0)<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 5.286963] net =
eth0: initialized cpsw ale version 1.4<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 5.292126] net =
eth0: ALE Table size 1024<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 5.299577] net =
eth0: phy found : id is : 0x7c0f1<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0=C2=A0 5.312916] IPv6: =
ADDRCONF(NETDEV_UP): eth0: link is not ready<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>udhcpc: started, =
v1.30.1<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>udhcpc: sending =
discover<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>udhcpc: sending =
discover<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>udhcpc: sending =
discover<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>udhcpc: no lease, forking to =
background<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>done.<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>Starting system message bus: =
[=C2=A0=C2=A0 14.818015] random: dbus-daemon: uninitialized urandom read =
(12 bytes read, 53 bits of entropy available)<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0 14.841904] random: =
dbus-daemon: uninitialized urandom read (12 bytes read, 53 bits of =
entropy available)<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>dbus.<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>Starting =
Xserver<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>Starting =
syslogd/klogd:<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>done<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>X.Org X Server =
1.20.4<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>X Protocol Version 11, Revision =
0<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>Build Operating System: Linux =
4.15.0-45-generic x86_64<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US style=3D'mso-fareast-language:EN-US'>Current Operating =
System: Linux am335x-evm 4.4.19-ge581bb1cac #1 PREEMPT Thu May 24 =
11:42:17 CEST 2018 armv7l<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>Kernel command line: =
console=3DttyO0,115200 root=3D/dev/mmcblk0p2 rw<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>Build Date: 10 April 2019=C2=A0 =
08:15:46PM<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>Current version of pixman: =
0.38.0<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 Before reporting problems, check =
http://wiki.x.org<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 to make sure that you have the latest =
version.<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>Markers: (--) probed, (**) from =
config file, (=3D=3D) default setting,<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 (++) from command line, (!!) notice, (II) =
informational,<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 (WW) warning, (EE) error, (NI) not implemented, (??) =
unknown.<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>(=3D=3D) Log file: =
&quot;/var/log/Xorg.0.log&quot;, Time: Thu Apr 11 15:41:31 =
2019<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>(=3D=3D) Using config file: =
&quot;/etc/X11/xorg.conf&quot;<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>(=3D=3D) Using system config =
directory &quot;/usr/share/X11/xorg.conf.d&quot;<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>Poky (Yocto Project Reference =
Distro) 2.6+snapshot am335x-evm /dev/ttyS0<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>am335x-evm login: The XKEYBOARD =
keymap compiler (xkbcomp) reports:<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>&gt; =
Warning:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
Unsupported high keycode 372 for name &lt;I372&gt; =
ignored<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>&gt;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 X11 cannot support keycodes above 255.<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>&gt;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 This warning only shows for the first high =
keycode.<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>&gt; Internal error:=C2=A0=C2=A0 =
Could not resolve keysym XF86MonBrightnessCycle<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>Errors from xkbcomp are not fatal =
to the X server<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0 =
15.951736] random: dbus-daemon: uninitialized urandom read (12 bytes =
read, 67 bits of entropy available)<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>D-BUS per-session daemon address =
is: =
unix:abstract=3D/tmp/dbus-AntF8uRBJQ,guid=3D2087fb970fdb264af1e4e5315caf6=
02b<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>Size 1024x768 not found in =
available modes<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US style=3D'mso-fareast-language:EN-US'>Error: No calibratable =
devices found.<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US style=3D'mso-fareast-language:EN-US'>matchbox: Cant find a =
keycode for keysym 269025056<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>matchbox: ignoring key shortcut =
XF86Calendar=3D!$contacts<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>matchbox: Cant find a keycode for =
keysym 2809<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>matchbox: ignoring key shortcut =
telephone=3D!$dates<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>matchbox: Cant find a keycode for =
keysym 269025050<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US style=3D'mso-fareast-language:EN-US'>matchbox: ignoring key =
shortcut XF86Start=3D!matchbox-remote -desktop<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>dbus-daemon[282]: Activating =
service name=3D'org.a11y.atspi.Registry' requested by ':1.0' (uid=3D0 =
pid=3D278 comm=3D&quot;matchbox-terminal &quot;)<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>dbus-daemon[282]: Successfully =
activated service 'org.a11y.atspi.Registry'<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>SpiRegistry daemon is running with =
well-known name - org.a11y.atspi.Registry<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>[=C2=A0=C2=A0 41.825592] random: =
nonblocking pool is initialized<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'>Nikola.<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US =
style=3D'mso-fareast-language:EN-US'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><b>De&nbsp;:</b> Zoran Stojsavljevic =
&lt;zoran.stojsavljevic@gmail.com&gt; <br><b>Envoy=C3=A9&nbsp;:</b> =
lundi 8 avril 2019 08:07<br><b>=C3=80&nbsp;:</b> Stanisavljevic =
&lt;n.stanisavljevic@polycaptil.fr&gt;<br><b>Cc&nbsp;:</b> Yocto Project =
&lt;yocto@yoctoproject.org&gt;; Marc Ferland =
&lt;marc.ferland@gmail.com&gt;<br><b>Objet&nbsp;:</b> Re: [yocto] yocto =
touchscreen<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><div><div><div><p =
class=3DMsoNormal>Hello Nikola,<br><br>I did some quick analysis of your =
kernel boot traces, and there are the following observations =
made:<br><br>[1] The kernel used is:<br>Linux version 4.4.19-ge581bb1cac =
(polycaptil@polycaptil-HP-Notebook) ?!<br><br>In my case (I built YOCTO =
thud for BBB NOT using X11, only serial console):<br>Linux version =
4.19.7-jumpnow (oe-user@oe-host) (gcc version 8.2.0 (GCC))<br><br>I =
could not explain polycaptil@polycaptil-HP-Notebook, maybe you do it for =
such kind of platform...<br>The kernel used is too old, for my taste, =
you did not replaced it, if you built YOCTO thud!<br><br>[2] The kernel =
command line:<br>[ &nbsp; &nbsp;0.000000] Kernel command line: =
console=3DttyO0,115200 root=3D/dev/mmcblk0p2 rw<br><br>Shows that you =
use EMMC as holder for / tree, all good.<br><br>[3] The concern about =
your console: console=3DttyO0,115200<br>Is addressed here:<br>[ &nbsp; =
&nbsp;0.000441] WARNING: Your 'console=3DttyO0' has been replaced by =
'ttyS0'<br><br>Later followed by:<br>[ &nbsp; &nbsp;0.402495] Serial: =
8250/16550 driver, 10 ports, IRQ sharing disabled<br>[ &nbsp; =
&nbsp;0.406968] 44e09000.serial: ttyS0 at MMIO 0x44e09000 (irq =3D 158, =
base_baud =3D 3000000) is a 8250<br>[ &nbsp; &nbsp;1.017361] console =
[ttyS0] enabled<br>[ &nbsp; &nbsp;1.022188] 48022000.serial: ttyS1 at =
MMIO 0x48022000 (irq =3D 159, base_baud =3D 3000000) is a =
8250<o:p></o:p></p><div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div><p =
class=3DMsoNormal>So, not at all worries about the =
console!<o:p></o:p></p></div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div><p =
class=3DMsoNormal>[4] The following traces are worrying me very =
much:<o:p></o:p></p></div><div><p class=3DMsoNormal>Starting =
Xserver<br>Starting syslogd/klogd:<br>done<br><b><i><span =
style=3D'color:red'>X.Org X Server 1.20.1</span></i></b><br>X Protocol =
Version 11, Revision 0<br>Build Operating System: Linux =
4.15.0-45-generic x86_64<br><b><i><span style=3D'color:red'>Current =
Operating System: Linux am335x-evm 4.4.19-ge581bb1cac</span></i></b> #1 =
PREEMPT Thu May 24 11:42:17 CEST 2018 armv7l<br>Kernel command line: =
console=3DttyO0,115200 root=3D/dev/mmcblk0p2 rw<br>Build Date: 02 April =
2019&nbsp; 07:35:10PM<o:p></o:p></p></div><div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div><p =
class=3DMsoNormal>As Marc wrote earlier:<o:p></o:p></p></div><div><p =
class=3DMsoNormal>&gt; Looks like: <a =
href=3D"https://bugzilla.redhat.com/show_bug.cgi?id=3D1650634" =
target=3D"_blank">https://bugzilla.redhat.com/show_bug.cgi?id=3D1650634</=
a><o:p></o:p></p></div><div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div><p =
class=3DMsoNormal>So, as I stated before: you should have in your =
build:<o:p></o:p></p></div><div><p class=3DMsoNormal><b><i><u><span =
style=3D'color:red'>X.Org Server 1.20.3! This is the main problem, =
seems!</span></u></i></b><o:p></o:p></p></div><div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div><p =
class=3DMsoNormal>Zoran<o:p></o:p></p></div><div><p =
class=3DMsoNormal>_______<o:p></o:p></p></div><div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div></div></div><p =
class=3DMsoNormal =
style=3D'margin-bottom:12.0pt'><o:p>&nbsp;</o:p></p><div><div><p =
class=3DMsoNormal>On Fri, Apr 5, 2019 at 3:35 PM Stanisavljevic &lt;<a =
href=3D"mailto:n.stanisavljevic@polycaptil.fr" =
target=3D"_blank">n.stanisavljevic@polycaptil.fr</a>&gt; =
wrote:<o:p></o:p></p></div><blockquote =
style=3D'border:none;border-left:solid #CCCCCC 1.0pt;padding:0cm 0cm 0cm =
6.0pt;margin-left:4.8pt;margin-right:0cm'><div><div><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>Hello Zoran,</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>&nbsp;</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>I keep you in touch about the migration from sumo to thud =
to solve my problem of locked touchscreen.</span><o:p></o:p></p><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>&nbsp;</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>I migrated from sumo to thud version, but nothing changed, =
the problem is the same, and I have same messages on boot as sumo =
version.</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>&nbsp;</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>I looked that the x server have a configuration kernel =
command line (if I correctly understood), here is what is written =
:</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>Kernel command line: console=3DttyO0,115200 =
root=3D/dev/mmcblk0p2 rw</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>&nbsp;</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>But the kernel command line of poky is different, here is =
what is configured for poky kernel command line =
:</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>Poky (Yocto Project Reference Distro) 2.6.1 am335x-evm =
/dev/ttyS0</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>&nbsp;</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>For the xserver it is ttyO0 and for poky it is ttyS0, maybe =
there is something wrong here which do problem for the =
touchscreen.</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>&nbsp;</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>I put below (at end of this mail )the text which appear =
during the boot.</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>&nbsp;</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>I think <span style=3D'color:black'>xorg-x11-server package =
1.20.3 was not the problem in the previous yocto version =
(sumo)=E2=80=A6</span></span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US style=3D'color:black'>&nbsp;</span><o:p></o:p></p><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US style=3D'color:black'>Best regards</span><o:p></o:p></p><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US style=3D'color:black'>Nikola</span><o:p></o:p></p><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US style=3D'color:black'>&nbsp;</span><o:p></o:p></p><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US style=3D'color:black'>Here is the text that appear during =
the boot :</span><o:p></o:p></p><div style=3D'border-top:dotted =
windowtext 3.0pt;border-left:none;border-bottom:dotted windowtext =
3.0pt;border-right:none;padding:1.0pt 0cm 1.0pt =
0cm;border-color:currentcolor'><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US style=3D'color:black'>&nbsp;</span><o:p></o:p></p></div><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>root@am335x-evm:~# =
CCCCCCCCCCCCCCCCCCCCCCCC</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>U-Boot SPL 2017.05-00001-g041a398 (May 02 2018 - =
18:36:57)</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>Trying to boot from MMC1</span><o:p></o:p></p><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>reading uboot.env</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>reading u-boot.img</span><o:p></o:p></p><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>reading u-boot.img</span><o:p></o:p></p><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>reading u-boot.img</span><o:p></o:p></p><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>reading u-boot.img</span><o:p></o:p></p><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>&nbsp;</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>&nbsp;</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>U-Boot 2017.05-00001-g041a398 (May 02 2018 - 18:36:57 =
+0200)</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>&nbsp;</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>CPU&nbsp; : AM335X-GP rev 2.1</span><o:p></o:p></p><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>Model: TI AM335x EVM-SK</span><o:p></o:p></p><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>DRAM:&nbsp; 256 MiB</span><o:p></o:p></p><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>NAND:&nbsp; 0 MiB</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>MMC:&nbsp;&nbsp; OMAP SD/MMC: 0, OMAP SD/MMC: =
1</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>reading uboot.env</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>ERROR: No USB device found</span><o:p></o:p></p><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>&nbsp;</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>at =
drivers/usb/gadget/ether.c:2709/usb_ether_init()</span><o:p></o:p></p><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>Net:&nbsp;&nbsp; CACHE: Misaligned operation at range =
[8df323c0, 8df32464]</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>&nbsp;</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>Warning: ethernet@4a100000 using MAC address from =
ROM</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>eth0: ethernet@4a100000</span><o:p></o:p></p><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>Hit any key to stop autoboot:&nbsp; =
0</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>reading zImage</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>3412752 bytes read in 252 ms (12.9 =
MiB/s)</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>reading dtb</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>39733 bytes read in 12 ms (3.2 =
MiB/s)</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>## Flattened Device Tree blob at =
82000000</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>&nbsp;&nbsp; Booting using the fdt blob at =
0x82000000</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>&nbsp;&nbsp; Loading Device Tree to 8df19000, end 8df25b34 =
... OK</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>&nbsp;</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>Starting kernel ...</span><o:p></o:p></p><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>&nbsp;</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.000000] Booting Linux on physical CPU =
0x0</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.000000] Initializing cgroup subsys =
cpu</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.000000] Initializing cgroup subsys =
cpuacct</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.000000] Linux version =
4.4.19-ge581bb1cac (polycaptil@polycaptil-HP-Notebook) (gcc version =
5.3.0 (GCC) ) #1 PREEMPT Thu May 24 11:42:17 CEST =
2018</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.000000] CPU: ARMv7 Processor =
[413fc082] revision 2 (ARMv7), cr=3D10c5387d</span><o:p></o:p></p><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.000000] CPU: PIPT / VIPT nonaliasing =
data cache, VIPT aliasing instruction cache</span><o:p></o:p></p><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.000000] Machine model: TI AM335x =
EVM-SK</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.000000] cma: Reserved 48 MiB at =
0x8a800000</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.000000] Memory policy: Data cache =
writeback</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.000000] CPU: All CPU(s) started in =
SVC mode.</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.000000] AM335X ES2.1 (sgx neon =
)</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.000000] Built 1 zonelists in Zone =
order, mobility grouping on.&nbsp; Total pages: =
64960</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.000000] Kernel command line: =
console=3DttyO0,115200 root=3D/dev/mmcblk0p2 rw</span><o:p></o:p></p><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.000000] PID hash table entries: 1024 =
(order: 0, 4096 bytes)</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.000000] Dentry cache hash table =
entries: 32768 (order: 5, 131072 bytes)</span><o:p></o:p></p><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.000000] Inode-cache hash table =
entries: 16384 (order: 4, 65536 bytes)</span><o:p></o:p></p><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.000000] Memory: 200444K/262144K =
available (6495K kernel code, 313K rwdata, 2368K rodata, 260K init, 265K =
bss, 12548K reserved, 49152K cma-reserved, 0K =
highmem)</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.000000] Virtual kernel memory =
layout:</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.000000]&nbsp;&nbsp;&nbsp;&nbsp; =
vector&nbsp; : 0xffff0000 - 0xffff1000&nbsp;&nbsp; (&nbsp;&nbsp; 4 =
kB)</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.000000]&nbsp;&nbsp;&nbsp;&nbsp; =
fixmap&nbsp; : 0xffc00000 - 0xfff00000&nbsp;&nbsp; (3072 =
kB)</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.000000]&nbsp;&nbsp;&nbsp;&nbsp; =
vmalloc : 0xd0800000 - 0xff800000&nbsp;&nbsp; ( 752 =
MB)</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.000000]&nbsp;&nbsp;&nbsp;&nbsp; =
lowmem&nbsp; : 0xc0000000 - 0xd0000000&nbsp;&nbsp; ( 256 =
MB)</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.000000]&nbsp;&nbsp;&nbsp;&nbsp; =
pkmap&nbsp;&nbsp; : 0xbfe00000 - 0xc0000000&nbsp;&nbsp; (&nbsp;&nbsp; 2 =
MB)</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.000000]&nbsp;&nbsp;&nbsp;&nbsp; =
modules : 0xbf000000 - 0xbfe00000&nbsp;&nbsp; (&nbsp; 14 =
MB)</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; =
0.000000]&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; .text : 0xc0008000 - =
0xc08b0034&nbsp;&nbsp; (8865 kB)</span><o:p></o:p></p><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; =
0.000000]&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; .init : 0xc08b1000 - =
0xc08f2000&nbsp; &nbsp;( 260 kB)</span><o:p></o:p></p><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; =
0.000000]&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; .data : 0xc08f2000 - =
0xc09407f0&nbsp;&nbsp; ( 314 kB)</span><o:p></o:p></p><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; =
0.000000]&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; .bss : 0xc09407f0 - =
0xc0982d58&nbsp;&nbsp; ( 266 kB)</span><o:p></o:p></p><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.000000] SLUB: HWalign=3D64, =
Order=3D0-3, MinObjects=3D0, CPUs=3D1, Nodes=3D1</span><o:p></o:p></p><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.000000] Preemptible hierarchical RCU =
implementation.</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.000000]&nbsp; Build-time adjustment =
of leaf fanout to 32.</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.000000] NR_IRQS:16 nr_irqs:16 =
16</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.000000] IRQ: Found an INTC at =
0xfa200000 (revision 5.0) with 128 interrupts</span><o:p></o:p></p><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.000000] OMAP clockevent source: =
timer2 at 24000000 Hz</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.000016] sched_clock: 32 bits at =
24MHz, resolution 41ns, wraps every =
89478484971ns</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.000036] clocksource: timer1: mask: =
0xffffffff max_cycles: 0xffffffff, max_idle_ns: 79635851949 =
ns</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.000047] OMAP clocksource: timer1 at =
24000000 Hz</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.000222] clocksource_probe: no =
matching clocksources found</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.000415] Console: colour dummy device =
80x30</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.000441] WARNING: Your =
'console=3DttyO0' has been replaced by 'ttyS0'</span><o:p></o:p></p><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.000447] This ensures that you still =
see kernel messages. Please</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.000453] update your kernel =
commandline.</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.000473] Calibrating delay loop... =
795.44 BogoMIPS (lpj=3D3977216)</span><o:p></o:p></p><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.089067] pid_max: default: 32768 =
minimum: 301</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.089198] Mount-cache hash table =
entries: 1024 (order: 0, 4096 bytes)</span><o:p></o:p></p><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.089210] Mountpoint-cache hash table =
entries: 1024 (order: 0, 4096 bytes)</span><o:p></o:p></p><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.089932] Initializing cgroup subsys =
io</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.089965] Initializing cgroup subsys =
memory</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.090003] Initializing cgroup subsys =
devices</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.090020] Initializing cgroup subsys =
freezer</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.090035] Initializing cgroup subsys =
perf_event</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.090047] Initializing cgroup subsys =
pids</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.090074] CPU: Testing write buffer =
coherency: ok</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.090499] Setting up static identity =
map for 0x80008200 - 0x80008258</span><o:p></o:p></p><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.092669] devtmpfs: =
initialized</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.105440] VFP support v0.3: implementor =
41 architecture 3 part 30 variant c rev 3</span><o:p></o:p></p><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.120496] omap_hwmod: debugss: =
_wait_target_disable failed</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.175552] clocksource: jiffies: mask: =
0xffffffff max_cycles: 0xffffffff, max_idle_ns: 19112604462750000 =
ns</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.179889] pinctrl core: initialized =
pinctrl subsystem</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.181246] NET: Registered protocol =
family 16</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.183446] DMA: preallocated 256 KiB =
pool for atomic coherent allocations</span><o:p></o:p></p><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.209067] cpuidle: using governor =
ladder</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.239055] cpuidle: using governor =
menu</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.243662] OMAP GPIO hardware version =
0.1</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.254349] hw-breakpoint: debug =
architecture 0x4 unsupported.</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.297650] edma 49000000.edma: TI EDMA =
DMA engine driver</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.298630] reg-fixed-voltage =
fixedregulator@2: could not find pctldev for node =
/ocp/l4_wkup@44c00000/scm@210000/pinmux@800/pinmux_wl12xx_gpio, =
deferring probe</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.302384] omap_i2c 44e0b000.i2c: could =
not find pctldev for node =
/ocp/l4_wkup@44c00000/scm@210000/pinmux@800/pinmux_i2c0_pins, deferring =
probe</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.302543] media: Linux media interface: =
v0.10</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.302609] Linux video capture =
interface: v2.00</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.302660] pps_core: LinuxPPS API ver. 1 =
registered</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.302668] pps_core: Software ver. 5.3.6 =
- Copyright 2005-2007 Rodolfo Giometti &lt;<a =
href=3D"mailto:giometti@linux.it" =
target=3D"_blank">giometti@linux.it</a>&gt;</span><o:p></o:p></p><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.302699] PTP clock support =
registered</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.302764] EDAC MC: Ver: =
3.0.0</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>[&nbsp;&nbsp=
;&nbsp; 0.303981] omap-mailbox 480c8000.mailbox: omap mailbox rev =
0x400<o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.304343] Advanced Linux Sound =
Architecture Driver Initialized.</span><o:p></o:p></p><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.305508] clocksource: Switched to =
clocksource timer1</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.316757] NET: Registered protocol =
family 2</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.317569] TCP established hash table =
entries: 2048 (order: 1, 8192 bytes)</span><o:p></o:p></p><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.317608] TCP bind hash table entries: =
2048 (order: 1, 8192 bytes)</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.317636] TCP: Hash tables configured =
(established 2048 bind 2048)</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.317718] UDP hash table entries: 256 =
(order: 0, 4096 bytes)</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.317738] UDP-Lite hash table entries: =
256 (order: 0, 4096 bytes)</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.317898] NET: Registered protocol =
family 1</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.318323] RPC: Registered named UNIX =
socket transport module.</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.318337] RPC: Registered udp transport =
module.</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.318344] RPC: Registered tcp transport =
module.</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.318350] RPC: Registered tcp NFSv4.1 =
backchannel transport module.</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.319303] hw perfevents: enabled with =
armv7_cortex_a8 PMU driver, 5 counters available</span><o:p></o:p></p><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.321370] futex hash table entries: 256 =
(order: -1, 3072 bytes)</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.329774] squashfs: version 4.0 =
(2009/01/31) Phillip Lougher</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.330714] NFS: Registering the =
id_resolver key type</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.330792] Key type id_resolver =
registered</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.330801] Key type id_legacy =
registered</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.330881] ntfs: driver 2.1.32 [Flags: =
R/O].</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.334651] Block layer SCSI generic =
(bsg) driver version 0.4 loaded (major 248)</span><o:p></o:p></p><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.334684] io scheduler noop =
registered</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.334698] io scheduler deadline =
registered</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.334855] io scheduler cfq registered =
(default)</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.336527] pinctrl-single =
44e10800.pinmux: 142 pins at pa f9e10800 size =
568</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.339377] backlight supply power not =
found, using dummy regulator</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.402495] Serial: 8250/16550 driver, 10 =
ports, IRQ sharing disabled</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.406968] 44e09000.serial: ttyS0 at =
MMIO 0x44e09000 (irq =3D 158, base_baud =3D 3000000) is a =
8250</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 1.017361] console [ttyS0] =
enabled</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 1.022188] 48022000.serial: ttyS1 at =
MMIO 0x48022000 (irq =3D 159, base_baud =3D 3000000) is a =
8250</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 1.032233] [drm] Initialized drm 1.1.0 =
20060810</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 1.039551] [drm] Supports vblank =
timestamp caching Rev 2 (21.10.2013).</span><o:p></o:p></p><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 1.046337] [drm] No driver support for =
vblank timestamp query.</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 1.062083] Console: switching to colour =
frame buffer device 60x34</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 1.070316] tilcdc 4830e000.lcdc: =
fb0:&nbsp; frame buffer device</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 1.105532] [drm] Initialized tilcdc =
1.0.0 20121205 on minor 0</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 1.118602] loop: module =
loaded</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 1.124221] libphy: Fixed MDIO Bus: =
probed</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 1.185547] davinci_mdio 4a101000.mdio: =
davinci mdio revision 1.6</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 1.191690] davinci_mdio 4a101000.mdio: =
detected phy mask fffffffe</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 1.198754] libphy: 4a101000.mdio: =
probed</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 1.202851] davinci_mdio 4a101000.mdio: =
phy[0]: device 4a101000.mdio:00, driver SMSC =
LAN8710/LAN8720</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[ &nbsp;&nbsp;&nbsp;1.212830] cpsw 4a100000.ethernet: =
Detected MACID =3D a0:f6:fd:4c:a6:ba</span><o:p></o:p></p><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 1.220461] cpsw 4a100000.ethernet: cpsw: =
Detected MACID =3D c4:ed:ba:88:2a:92</span><o:p></o:p></p><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 1.229313] mousedev: PS/2 mouse device =
common for all mice</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 1.235792] i2c /dev entries =
driver</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[ &nbsp;&nbsp;&nbsp;1.240448] cpuidle: enable-method =
property 'ti,am3352' found operations</span><o:p></o:p></p><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 1.248143] omap_hsmmc 48060000.mmc: Got =
CD GPIO</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 1.275713] pinctrl-single =
44e10800.pinmux: bad data for mux =
pinmux_mmc2_pins</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 1.282895] pinctrl-single =
44e10800.pinmux: no pins entries for =
pinmux_mmc2_pins</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 1.317167] ledtrig-cpu: registered to =
indicate activity on CPUs</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 1.326065] NET: Registered protocol =
family 10</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 1.332086] sit: IPv6 over IPv4 tunneling =
driver</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 1.337713] NET: Registered protocol =
family 17</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 1.342528] Key type dns_resolver =
registered</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 1.347114] omap_voltage_late_init: =
Voltage driver support not added</span><o:p></o:p></p><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 1.407191] tps65910-rtc tps65910-rtc: =
rtc core: registered tps65910-rtc as rtc0</span><o:p></o:p></p><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 1.415327] omap_i2c 44e0b000.i2c: bus 0 =
rev0.11 at 400 kHz</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 1.421710] omap_hsmmc 48060000.mmc: Got =
CD GPIO</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 1.426857] vmmc: supplied by =
vbat</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 1.466348] pinctrl-single =
44e10800.pinmux: bad data for mux =
pinmux_mmc2_pins</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 1.474748] pinctrl-single =
44e10800.pinmux: no pins entries for =
pinmux_mmc2_pins</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 1.513242] mmc0: host does not support =
reading read-only switch, assuming write-enable</span><o:p></o:p></p><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 1.523406] mmc0: new high speed SDHC =
card at address 0001</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 1.529619] mmcblk0: mmc0:0001 AS 3.72 =
GiB</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 1.535970]&nbsp; mmcblk0: p1 p2 =
p3</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 1.595927] vdd_mpu: supplied by =
vbat</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 1.602118] input: gpio_buttons@0 as =
/devices/platform/gpio_buttons@0/input/input0</span><o:p></o:p></p><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 1.618310] tps65910-rtc tps65910-rtc: =
setting system clock to 2019-04-03 08:25:12 UTC =
(1554279912)</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 1.639397] lis3_reg: =
disabling</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 1.655734] ALSA device =
list:</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 1.658723]&nbsp;&nbsp; No soundcards =
found.</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 1.678283] EXT4-fs (mmcblk0p2): couldn't =
mount as ext3 due to feature incompatibilities</span><o:p></o:p></p><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 1.696903] EXT4-fs (mmcblk0p2): couldn't =
mount as ext2 due to feature incompatibilities</span><o:p></o:p></p><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 1.792693] EXT4-fs (mmcblk0p2): recovery =
complete</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 1.807446] EXT4-fs (mmcblk0p2): mounted =
filesystem with ordered data mode. Opts: (null)</span><o:p></o:p></p><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 1.821463] VFS: Mounted root (ext4 =
filesystem) on device 179:2.</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 1.835669] devtmpfs: =
mounted</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 1.839073] Freeing unused kernel memory: =
260K (c08b1000 - c08f2000)</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 1.851956] This architecture does not =
have kernel memory protection.</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>INIT: version 2.88 booting</span><o:p></o:p></p><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>Starting udev</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 2.513624] udevd[78]: starting version =
3.2.5</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 2.527632] random: udevd: uninitialized =
urandom read (16 bytes read, 18 bits of entropy =
available)</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 2.546992] random: udevd: uninitialized =
urandom read (16 bytes read, 18 bits of entropy =
available)</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 2.566829] random: udevd: uninitialized =
urandom read (16 bytes read, 18 bits of entropy =
available)</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 2.585755] random: udevd: uninitialized =
urandom read (16 bytes read, 18 bits of entropy =
available)</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 2.668211] udevd[79]: starting =
eudev-3.2.5</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 3.036159] random: udevd: uninitialized =
urandom read (16 bytes read, 21 bits of entropy =
available)</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 3.061761] random: udevd: uninitialized =
urandom read (16 bytes read, 21 bits of entropy =
available)</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 4.494682] EXT4-fs (mmcblk0p2): =
re-mounted. Opts: data=3Dordered</span><o:p></o:p></p><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 5.052098] random: dd: uninitialized =
urandom read (512 bytes read, 34 bits of entropy =
available)</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>INIT: Entering runlevel: 5</span><o:p></o:p></p><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>Configuring network interfaces... [&nbsp;&nbsp;&nbsp; =
5.254308] net eth0: initializing cpsw version 1.12 =
(0)</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 5.259812] net eth0: initialized cpsw =
ale version 1.4</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 5.264976] net eth0: ALE Table size =
1024</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 5.272411] net eth0: phy found : id is : =
0x7c0f1</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 5.285702] IPv6: ADDRCONF(NETDEV_UP): =
eth0: link is not ready</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>udhcpc: started, v1.29.2</span><o:p></o:p></p><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>udhcpc: sending discover</span><o:p></o:p></p><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>udhcpc: sending discover</span><o:p></o:p></p><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>udhcpc: sending discover</span><o:p></o:p></p><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>udhcpc: no lease, forking to =
background</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>done.</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>Starting system message bus: [&nbsp;&nbsp; 14.793334] =
random: dbus-daemon: uninitialized urandom read (12 bytes read, 51 bits =
of entropy available)</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp; 14.831748] random: dbus-daemon: uninitialized =
urandom read (12 bytes read, 52 bits of entropy =
available)</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>dbus.</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>Starting Xserver</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>Starting syslogd/klogd:</span><o:p></o:p></p><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>done</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>&nbsp;</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>X.Org X Server 1.20.1</span><o:p></o:p></p><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>X Protocol Version 11, Revision 0</span><o:p></o:p></p><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>Build Operating System: Linux 4.15.0-45-generic =
x86_64</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>Current Operating System: Linux am335x-evm =
4.4.19-ge581bb1cac #1 PREEMPT Thu May 24 11:42:17 CEST 2018 =
armv7l</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>Kernel command line: console=3DttyO0,115200 =
root=3D/dev/mmcblk0p2 rw</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>Build Date: 02 April 2019&nbsp; =
07:35:10PM</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>&nbsp;</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>Current version of pixman: 0.34.0</span><o:p></o:p></p><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Before reporting =
problems, check <a href=3D"http://wiki.x.org" =
target=3D"_blank">http://wiki.x.org</a></span><o:p></o:p></p><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; to make sure =
that you have the latest version.</span><o:p></o:p></p><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>Markers: (--) probed, (**) from config file, (=3D=3D) =
default setting,</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (++) from =
command line, (!!) notice, (II) informational,</span><o:p></o:p></p><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (WW) warning, =
(EE) error, (NI) not implemented, (??) unknown.</span><o:p></o:p></p><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>(=3D=3D) Log file: &quot;/var/log/Xorg.0.log&quot;, Time: =
Wed Apr&nbsp; 3 08:25:25 2019</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>(=3D=3D) Using config file: =
&quot;/etc/X11/xorg.conf&quot;</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>(=3D=3D) Using system config directory =
&quot;/usr/share/X11/xorg.conf.d&quot;</span><o:p></o:p></p><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>&nbsp;</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>Poky (Yocto Project Reference Distro) 2.6.1 am335x-evm =
/dev/ttyS0</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>&nbsp;</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>am335x-evm login: The XKEYBOARD keymap compiler (xkbcomp) =
reports:</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>&gt; =
Warning:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
Unsupported high keycode 372 for name &lt;I372&gt; =
ignored</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; X11 cannot support =
keycodes above 255.</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;This warning only =
shows for the first high keycode.</span><o:p></o:p></p><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>Errors from xkbcomp are not fatal to the X =
server</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp; 15.888959] random: dbus-daemon: uninitialized =
urandom read (12 bytes read, 65 bits of entropy =
available)</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>D-BUS per-session daemon address is: =
unix:abstract=3D/tmp/dbus-JjEW6Wgjtx,guid=3D87af020e5c6f1a7e21d449e55ca46=
df5</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>Size 1024x768 not found in available =
modes</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>Error: No calibratable devices =
found.</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>matchbox: Cant find a keycode for keysym =
269025056</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>matchbox: ignoring key shortcut =
XF86Calendar=3D!$contacts</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>&nbsp;</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>matchbox: Cant find a keycode for keysym =
2809</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>matchbox: ignoring key shortcut =
telephone=3D!$dates</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>&nbsp;</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>matchbox: Cant find a keycode for keysym =
269025050</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>matchbox: ignoring key shortcut =
XF86Start=3D!matchbox-remote -desktop</span><o:p></o:p></p><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>&nbsp;</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>Failed to launch bus: Failed to execute child process =
?/usr/bin? (Permission denied)</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>(matchbox-terminal:274): dbind-WARNING **: 08:25:27.404: =
Error retrieving accessibility bus address: org.a11y.Bus.Error: Failed =
to execute child process ?/usr/bin? (Permission =
denied)</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[&nbsp;&nbsp; 43.718127] random: nonblocking pool is =
initialized</span><o:p></o:p></p><div =
style=3D'border:none;border-bottom:dotted windowtext 3.0pt;padding:0cm =
0cm 1.0pt 0cm;border-color:currentcolor currentcolor windowtext'><div =
style=3D'mso-element:para-border-div;border:none;border-bottom:dotted =
windowtext 3.0pt;padding:0cm 0cm 1.0pt 0cm'><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto;border:none;p=
adding:0cm'><span lang=3DEN-US =
style=3D'color:black'>&nbsp;</span><o:p></o:p></p></div><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US style=3D'color:black'>&nbsp;</span><o:p></o:p></p></div><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US style=3D'color:black'>&nbsp;</span><o:p></o:p></p><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>&nbsp;</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>&nbsp;</span><o:p></o:p></p><div><div =
style=3D'border:none;border-top:solid windowtext 1.0pt;padding:3.0pt 0cm =
0cm 0cm;border-color:currentcolor currentcolor'><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><b><span =
lang=3DEN-US>De&nbsp;:</span></b><span lang=3DEN-US> Stanisavljevic =
&lt;<a href=3D"mailto:n.stanisavljevic@polycaptil.fr" =
target=3D"_blank">n.stanisavljevic@polycaptil.fr</a>&gt; =
<br><b>Envoy=C3=A9&nbsp;:</b> lundi 18 f=C3=A9vrier 2019 =
15:27<br><b>=C3=80&nbsp;:</b> 'Zoran Stojsavljevic' &lt;<a =
href=3D"mailto:zoran.stojsavljevic@gmail.com" =
target=3D"_blank">zoran.stojsavljevic@gmail.com</a>&gt;<br><b>Cc&nbsp;:</=
b> 'Yocto Project' &lt;<a href=3D"mailto:yocto@yoctoproject.org" =
target=3D"_blank">yocto@yoctoproject.org</a>&gt;; 'Marc Ferland' &lt;<a =
href=3D"mailto:marc.ferland@gmail.com" =
target=3D"_blank">marc.ferland@gmail.com</a>&gt;<br><b>Objet&nbsp;:</b> =
RE: [yocto] yocto touchscreen</span><o:p></o:p></p></div></div><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>&nbsp;</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>Hello Zoran</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>&nbsp;</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>I will try these 2 ways.</span><o:p></o:p></p><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>Of course, the second way is the easiest, but I will try =
also the first way only to see if it is =
possible.</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>I will keep you in touch if the first way can =
work.</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>&nbsp;</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>Best regards,</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>Nikola</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>&nbsp;</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><b><span =
lang=3DEN-US>De&nbsp;:</span></b><span lang=3DEN-US> Zoran Stojsavljevic =
&lt;</span><a href=3D"mailto:zoran.stojsavljevic@gmail.com" =
target=3D"_blank"><span =
lang=3DEN-US>zoran.stojsavljevic@gmail.com</span></a><span =
lang=3DEN-US>&gt; <br><b>Envoy=C3=A9&nbsp;:</b> lundi 18 f=C3=A9vrier =
2019 15:21<br><b>=C3=80&nbsp;:</b> Stanisavljevic &lt;</span><a =
href=3D"mailto:n.stanisavljevic@polycaptil.fr" target=3D"_blank"><span =
lang=3DEN-US>n.stanisavljevic@polycaptil.fr</span></a><span =
lang=3DEN-US>&gt;<br><b>Cc&nbsp;:</b> Yocto Project &lt;</span><a =
href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank"><span =
lang=3DEN-US>yocto@yoctoproject.org</span></a><span lang=3DEN-US>&gt;; =
Marc Ferland &lt;</span><a href=3D"mailto:marc.ferland@gmail.com" =
target=3D"_blank"><span =
lang=3DEN-US>marc.ferland@gmail.com</span></a><span =
lang=3DEN-US>&gt;<br><b>Objet&nbsp;:</b> Re: [yocto] yocto =
touchscreen</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>&nbsp;</span><o:p></o:p></p><div><div><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>Hello Nikola,</span><o:p></o:p></p></div><div><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>&nbsp;</span><o:p></o:p></p></div><div><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>Two things, which immediately came to my =
mind:</span><o:p></o:p></p></div><div><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[1 - Harder way] Either to change xorg-x11-server in sumo =
to match at least xorg-x11-server <b><i><span =
style=3D'color:red'>1.20.3;</span></i></b></span><o:p></o:p></p></div><di=
v><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><b><i><span =
lang=3DEN-US style=3D'color:red'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
</span></i></b><span lang=3DEN-US style=3D'color:black'>(harder way, =
since few people know exact dependencies among various GFX packages, and =
what</span><o:p></o:p></p></div><div><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US style=3D'color:black'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
and how many packages need to be also changed to make xorg-x11-server =
1.20.3 to work)</span><o:p></o:p></p></div><div><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US style=3D'color:black'>[2 - Easier Way] Either to migrate =
YOCTO to Thud, where the correct xorg-x11-server package =
1.20.3</span><o:p></o:p></p></div><div><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US style=3D'color:black'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; is =
already fixed and set!</span><o:p></o:p></p></div><div><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US style=3D'color:black'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
(easier way, since exact dependencies among various GFX packages are =
already set for 1.20.3)</span><o:p></o:p></p></div><div><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>&nbsp;</span><o:p></o:p></p></div><div><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US style=3D'color:black'>Best =
Regards,</span><o:p></o:p></p></div><div><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US =
style=3D'color:black'>Zoran</span><o:p></o:p></p></div><div><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US style=3D'color:black'>_______&nbsp; =
</span><o:p></o:p></p></div></div><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;margin-bottom:12.0pt'><span =
lang=3DEN-US>&nbsp;</span><o:p></o:p></p><div><div><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>On Mon, Feb 18, 2019 at 2:48 PM Stanisavljevic =
&lt;</span><a href=3D"mailto:n.stanisavljevic@polycaptil.fr" =
target=3D"_blank"><span =
lang=3DEN-US>n.stanisavljevic@polycaptil.fr</span></a><span =
lang=3DEN-US>&gt; wrote:</span><o:p></o:p></p></div><blockquote =
style=3D'border:none;border-left:solid windowtext 1.0pt;padding:0cm 0cm =
0cm =
6.0pt;margin-left:4.8pt;margin-top:5.0pt;margin-right:0cm;margin-bottom:5=
.0pt;border-color:currentcolor currentcolor currentcolor =
rgb(204,204,204)'><div><div><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>Thank you Zoran for trying to help me.<br>I tried to =
resolve the problem, but I didn=E2=80=99t succeed yet, I think I will to =
continue, and If after some time I find nothing, I=E2=80=99m going to =
migrate to the thud version.</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>&nbsp;</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>I will maybe try to use Bugzilla</span><o:p></o:p></p><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>&nbsp;</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>Nikola</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><b><span =
lang=3DEN-US>De&nbsp;:</span></b><span lang=3DEN-US> Zoran Stojsavljevic =
&lt;</span><a href=3D"mailto:zoran.stojsavljevic@gmail.com" =
target=3D"_blank"><span =
lang=3DEN-US>zoran.stojsavljevic@gmail.com</span></a><span =
lang=3DEN-US>&gt; <br><b>Envoy=C3=A9&nbsp;:</b> mardi 5 f=C3=A9vrier =
2019 19:28<br><b>=C3=80&nbsp;:</b> Stanisavljevic &lt;</span><a =
href=3D"mailto:n.stanisavljevic@polycaptil.fr" target=3D"_blank"><span =
lang=3DEN-US>n.stanisavljevic@polycaptil.fr</span></a><span =
lang=3DEN-US>&gt;<br><b>Cc&nbsp;:</b> Yocto Project &lt;</span><a =
href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank"><span =
lang=3DEN-US>yocto@yoctoproject.org</span></a><span lang=3DEN-US>&gt;; =
</span><a href=3D"mailto:marc.ferland@gmail.com" target=3D"_blank"><span =
lang=3DEN-US>marc.ferland@gmail.com</span></a><span =
lang=3DEN-US><br><b>Objet&nbsp;:</b> Re: [yocto] yocto =
touchscreen</span><o:p></o:p></p><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>&nbsp;</span><o:p></o:p></p><div><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;margin-bottom:12.0pt'><span =
lang=3DEN-US>Hello Nikola,<br><br>Let us try to cut to the =
chase!<br><br>After reading what Marc Ferland says/writes, and looking =
into the following:<br></span><a =
href=3D"https://bugzilla.redhat.com/show_bug.cgi?id=3D1650634" =
target=3D"_blank"><span =
lang=3DEN-US>https://bugzilla.redhat.com/show_bug.cgi?id=3D1650634</span>=
</a><o:p></o:p></p><div><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>I have spotted the =
following:</span><o:p></o:p></p></div><div><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
class=3D"gmail-m-2391544497964063811gmail-m6574121755013685205gmail-m-257=
3238030158729977gmail-m3069207977298945462gmail-fn"><b><i><u><span =
lang=3DEN-US>Pat Riehecky</span></u></i></b></span><span =
class=3D"gmail-m-2391544497964063811gmail-m6574121755013685205gmail-m-257=
3238030158729977gmail-m3069207977298945462gmail-vcard"><b><i><u><span =
lang=3DEN-US> </span></u></i></b></span><span =
class=3D"gmail-m-2391544497964063811gmail-m6574121755013685205gmail-m-257=
3238030158729977gmail-m3069207977298945462gmail-bzcommenttime"><b><i><u><=
span lang=3DEN-US>2018-11-20 14:28:22 UTC</span></u></i></b></span><span =
class=3D"gmail-m-2391544497964063811gmail-m6574121755013685205gmail-m-257=
3238030158729977gmail-m3069207977298945462gmail-bzcommenttime"><b><i><spa=
n lang=3DEN-US> </span></i></b></span><o:p></o:p></p></div><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;margin-bottom:12.0pt'><i><u><span =
lang=3DEN-US>t<b>he bug remains with the elrepo =
kernels:<br>kernel-ml-4.19.2-1.el7.elrepo.x86_64<br>kernel-lt-4.4.163-1.e=
l7.elrepo.x86_64</b></span></u></i><o:p></o:p></p><div><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>I never had this problem since I do not use Xorg (GFX), =
rather I only</span><o:p></o:p></p></div><div><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>use serial console from VBox VM from my BBB =
(pass-through).</span><o:p></o:p></p></div><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>&nbsp;</span><o:p></o:p></p><div><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>Thus, my suggestion for you, to skip the whole mess is to =
rebuild your</span><o:p></o:p></p></div><div><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>distro <b><i><u><span style=3D'color:red'>in the light of =
YOCTO Project 2.6.1 (thud =
20.0.0.1).</span></u></i></b></span><o:p></o:p></p></div><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>&nbsp;</span><o:p></o:p></p><div><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>My best guess (then you'll inherit YOCTO kernel 4.20.x with =
fixed Xorg - X11).</span><o:p></o:p></p></div><div><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>&nbsp;</span><o:p></o:p></p></div><div><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>I am using Fedora 29 on my laptop. Also from the =
bugzilla:</span><o:p></o:p></p></div><div><div><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
class=3D"gmail-m-2391544497964063811gmail-m6574121755013685205gmail-m-257=
3238030158729977gmail-m3069207977298945462gmail-fn"><b><i><u><span =
lang=3DEN-US>Pat Riehecky</span></u></i></b></span><span =
class=3D"gmail-m-2391544497964063811gmail-m6574121755013685205gmail-m-257=
3238030158729977gmail-m3069207977298945462gmail-vcard"><b><i><u><span =
lang=3DEN-US> </span></u></i></b></span><span =
class=3D"gmail-m-2391544497964063811gmail-m6574121755013685205gmail-m-257=
3238030158729977gmail-m3069207977298945462gmail-bzcommenttime"><b><i><u><=
span lang=3DEN-US>2018-11-20 15:46:11 UTC =
</span></u></i></b></span><o:p></o:p></p></div><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><b><i><u><sp=
an lang=3DEN-US style=3D'font-family:"Arial",sans-serif'>Bug resolved by =
rebuilding xorg-x11-server-1.20.3-1.fc29 [1] for =
7.6.</span></u></i></b><o:p></o:p></p></div><div><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><b><i><u><sp=
an lang=3DEN-US style=3D'font-family:"Arial",sans-serif'>With this in =
mind it appears to be an Xorg server bug rather than =
fbdev.</span></u></i></b><o:p></o:p></p></div><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>&nbsp;</span><o:p></o:p></p><div><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>From my HP EliteBook 840 G1 Fedora 29, Xorg.0.log - =
February 5th, 2019.,</span><o:p></o:p></p></div><div><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>I have the following:</span><o:p></o:p></p></div><p =
class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>&nbsp;</span><o:p></o:p></p><div><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[ &nbsp; &nbsp;26.955] Kernel command line: =
BOOT_IMAGE=3D/<b><i><u><span =
style=3D'color:red'>vmlinuz-4.20.6-200.fc29.x86_64</span></u></i></b></sp=
an><o:p></o:p></p></div><div><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>root=3D/dev/mapper/fedora-root ro </span><a =
href=3D"http://rd.lvm.lv" target=3D"_blank"><span =
lang=3DEN-US>rd.lvm.lv</span></a><span lang=3DEN-US>=3Dfedora/root =
</span><a href=3D"http://rd.lvm.lv" target=3D"_blank"><span =
lang=3DEN-US>rd.lvm.lv</span></a><span lang=3DEN-US>=3Dfedora/swap =
rhgb</span><o:p></o:p></p></div><div><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'>quiet =
LANG=3Den_US.UTF-8<o:p></o:p></p></div><p class=3DMsoNormal =
style=3D'mso-margin-top-alt:auto;mso-margin-bottom-alt:auto'><span =
lang=3DEN-US>[ &nbsp; &nbsp;26.955] Build Date: 11 January 2019 =
&nbsp;12:47:38PM<br><b><i><u><span style=3D'color:red'>[ &nbsp;&nbsp; =
26.955] Build ID: xorg-x11-server 1.20.3-3.fc29</span></u></i></b><br>[ =
&nbsp; &nbsp;26.955] Current version of pixman: 0.34.0<br><br>Best =
Regards,<br>Zoran<br>_______<br><br>On Tue, Feb 5, 2019 at 2:49 PM Zoran =
Stojsavljevic &lt;</span><a =
href=3D"mailto:zoran.stojsavljevic@gmail.com" target=3D"_blank"><span =
lang=3DEN-US>zoran.stojsavljevic@gmail.com</span></a><span =
lang=3DEN-US>&gt; wrote:<br>&gt;<br>&gt; Hello Nikola,<br>&gt;<br>&gt; =
&gt; I created a kernel recipe with a bbappend file, and, I =
added<br>&gt; &gt; the same defconfig that I used for krogoth =
version.<br>&gt; &gt; The bbappend for kernel recipe concern meta-ti =
layer.<br>&gt; &gt; I didn't edited defconfig file in other layers which =
contain a<br>&gt; &gt; kernel recipe.<br>&gt;<br>&gt; It could be some =
problem that Sumo does not take your bbappend file into the<br>&gt; =
consideration as placed.<br>&gt;<br>&gt; It could be something else, as =
well.<br>&gt;<br>&gt; I have the same issue with my defconfig file for =
my Thud Beagle Bone Black (BBB)<br>&gt; standard board. Every time I =
recompile my YOCTO for it for different releases, I need<br>&gt; to =
import my specific defconfig. But I use complete different repos for my =
standard<br>&gt; Beagle Bone Black than YOCTO BBB Poky reference =
distro.<br>&gt;<br>&gt; Here is what I use in Thud (my =
bblayers.conf):<br>&gt;<br>&gt; POKY_BBLAYERS_CONF_VERSION =3D =
&quot;2&quot;<br>&gt; BBPATH =3D &quot;${TOPDIR}&quot;<br>&gt; BBFILES =
?=3D &quot;&quot;<br>&gt;<br>&gt; BBLAYERS ?=3D &quot; \<br>&gt; &nbsp; =
&nbsp; /home/user/projects2/beaglebone-black/yocto-thud/meta-bbb =
\<br>&gt; &nbsp; &nbsp; =
/home/user/projects2/beaglebone-black/yocto-thud/meta-openembedded/meta-n=
etworking \<br>&gt; &nbsp; &nbsp; =
/home/user/projects2/beaglebone-black/yocto-thud/meta-openembedded/meta-o=
e \<br>&gt; &nbsp; &nbsp; =
/home/user/projects2/beaglebone-black/yocto-thud/meta-openembedded/meta-p=
ython \<br>&gt; &nbsp; &nbsp; =
/home/user/projects2/beaglebone-black/yocto-thud/meta-qt5 \<br>&gt; =
&nbsp; &nbsp; /home/user/projects2/beaglebone-black/yocto-thud/poky/meta =
\<br>&gt; &nbsp; &nbsp; =
/home/user/projects2/beaglebone-black/yocto-thud/poky/meta-poky&quot;<br>=
&gt;<br>&gt; There, I replace defconfig in this layer: =
/home/user/projects2/beaglebone-black/yocto-thud/meta-bbb<br>&gt; with =
my own defconfig.<br>&gt;<br>&gt; In the directory:<br>&gt; =
/home/user/projects2/beaglebone-black/yocto-thud/meta-bbb/recipes-kernel/=
linux/linux-stable-4.19/beaglebone<br>&gt;<br>&gt; If you use only Poky =
repository, then you need to read the following paragraph (how to =
use<br>&gt; your defconfig with Poky):<br>&gt;<br>&gt; [2.3.3. Changing =
the Configuration] YOCTO Project Linux Development Manual<br>&gt; =
</span><a =
href=3D"https://www.yoctoproject.org/docs/2.5/kernel-dev/kernel-dev.html#=
using-an-in-tree-defconfig-file" target=3D"_blank"><span =
lang=3DEN-US>https://www.yoctoproject.org/docs/2.5/kernel-dev/kernel-dev.=
html#using-an-in-tree-defconfig-file</span></a><span =
lang=3DEN-US><br>&gt; 2.3.3. Changing the Configuration<br>&gt;<br>&gt; =
I hope this will help. Please, keep us posted!<br>&gt;<br>&gt; =
Zoran<br>&gt; _______<br>&gt;<br>&gt;<br>&gt; On Tue, Feb 5, 2019 at =
10:54 AM Stanisavljevic &lt;</span><a =
href=3D"mailto:n.stanisavljevic@polycaptil.fr" target=3D"_blank"><span =
lang=3DEN-US>n.stanisavljevic@polycaptil.fr</span></a><span =
lang=3DEN-US>&gt; wrote:<br>&gt;&gt;<br>&gt;&gt; Hy =
Zoran<br>&gt;&gt;<br>&gt;&gt; Thank's to take time to =
answer<br>&gt;&gt;<br>&gt;&gt; I created a kernel recipe with a bbappend =
file, and, I added the same defconfig that I used for krogoth =
version.<br>&gt;&gt; The bbappend for kernel recipe concern meta-ti =
layer.<br>&gt;&gt; I didn't edited defconfig file in other layers which =
contain a kernel recipe.<br>&gt;&gt;<br>&gt;&gt; I think it's a problem =
which concern the screen resolution, screen frequency and adc =
touchscreen.<br>&gt;&gt; Something is different between the krogoth and =
sumo version, but I didn't find what is =
changed...<br>&gt;&gt;<br>&gt;&gt; Xrandr show that problem is maybe =
around the screen resolution.<br>&gt;&gt; It's show the next message : =
&quot;Size 1024x768 not found in available modes&quot;<br>&gt;&gt; Maybe =
it was changed between krogoth and sumo version...but I don't know where =
it is indicated if sources files...<br>&gt;&gt;<br>&gt;&gt; What do you =
think ? problem can be around the screen resolution, screen frequency =
and adc touchscreen ?<br>&gt;&gt;<br>&gt;&gt; =
Nikola<br>&gt;&gt;<br>&gt;&gt; -----Message d'origine-----<br>&gt;&gt; =
De : Zoran Stojsavljevic &lt;</span><a =
href=3D"mailto:zoran.stojsavljevic@gmail.com" target=3D"_blank"><span =
lang=3DEN-US>zoran.stojsavljevic@gmail.com</span></a><span =
lang=3DEN-US>&gt;<br>&gt;&gt; Envoy=C3=A9 : lundi 4 f=C3=A9vrier 2019 =
17:08<br>&gt;&gt; =C3=80 : Stanisavljevic &lt;</span><a =
href=3D"mailto:n.stanisavljevic@polycaptil.fr" target=3D"_blank"><span =
lang=3DEN-US>n.stanisavljevic@polycaptil.fr</span></a><span =
lang=3DEN-US>&gt;<br>&gt;&gt; Cc : Yocto Project &lt;</span><a =
href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank"><span =
lang=3DEN-US>yocto@yoctoproject.org</span></a><span =
lang=3DEN-US>&gt;<br>&gt;&gt; Objet : Re: [yocto] yocto =
touchscreen<br>&gt;&gt;<br>&gt;&gt; &gt; I built a first version of this =
os with version krogoth and it works fine.<br>&gt;&gt; &gt;<br>&gt;&gt; =
&gt; Now I build a second version of this os with version sumo and =
the<br>&gt;&gt; &gt; touch screen works fine during boot process but =
when kernel is loaded,<br>&gt;&gt; &gt; touchscreen freeze / lock and =
impossible to use it.<br>&gt;&gt;<br>&gt;&gt; Did you compare Krogoth =
kernel defconfig with Sumo kernel defconfig?<br>&gt;&gt;<br>&gt;&gt; May =
there are some mismatches in drivers' setup between these =
two?<br>&gt;&gt;<br>&gt;&gt; Zoran<br>&gt;&gt; =
_______<br>&gt;&gt;<br>&gt;&gt; On Mon, Feb 4, 2019 at 12:24 PM =
Stanisavljevic &lt;</span><a =
href=3D"mailto:n.stanisavljevic@polycaptil.fr" target=3D"_blank"><span =
lang=3DEN-US>n.stanisavljevic@polycaptil.fr</span></a><span =
lang=3DEN-US>&gt; wrote:<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; Hy =
Team,<br>&gt;&gt; &gt;<br>&gt;&gt; &gt;<br>&gt;&gt; &gt;<br>&gt;&gt; =
&gt; I have a problem<br>&gt;&gt; &gt;<br>&gt;&gt; &gt;<br>&gt;&gt; =
&gt;<br>&gt;&gt; &gt; I buid a custom os for AM335x processor and I used =
yocto to do it.<br>&gt;&gt; &gt;<br>&gt;&gt; &gt;<br>&gt;&gt; =
&gt;<br>&gt;&gt; &gt; I build a first version of this os with version =
krogoth and it work fine.<br>&gt;&gt; &gt;<br>&gt;&gt; &gt;<br>&gt;&gt; =
&gt;<br>&gt;&gt; &gt; Now I build a second version of this os with =
version sumo and the touchscreen work fine during boot process but when =
kernel is loaded, touchscreen freeze / lock and impossible to use =
it.<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; The terminal is printed on the =
touchscreen but the screen is locked, impossible to write a command or =
to move the mouse to select, =E2=80=A6.<br>&gt;&gt; &gt;<br>&gt;&gt; =
&gt;<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; Here is the log of boot to the =
user session (log got with serial communication between PC and board) =
:<br>&gt;&gt; &gt;<br>&gt;&gt; &gt;<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; =
U-Boot SPL 2017.05-00001-g041a398 (May 02 2018 - 18:36:57)<br>&gt;&gt; =
&gt;<br>&gt;&gt; &gt; Trying to boot from MMC1<br>&gt;&gt; =
&gt;<br>&gt;&gt; &gt; reading uboot.env<br>&gt;&gt; &gt;<br>&gt;&gt; =
&gt; reading u-boot.img<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; reading =
u-boot.img<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; reading =
u-boot.img<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; reading =
u-boot.img<br>&gt;&gt; &gt;<br>&gt;&gt; &gt;<br>&gt;&gt; =
&gt;<br>&gt;&gt; &gt;<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; U-Boot =
2017.05-00001-g041a398 (May 02 2018 - 18:36:57 +0200)<br>&gt;&gt; =
&gt;<br>&gt;&gt; &gt;<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; CPU &nbsp;: =
AM335X-GP rev 2.1<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; Model: TI AM335x =
EVM-SK<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; DRAM: &nbsp;256 MiB<br>&gt;&gt; =
&gt;<br>&gt;&gt; &gt; NAND: &nbsp;0 MiB<br>&gt;&gt; &gt;<br>&gt;&gt; =
&gt; MMC: &nbsp; OMAP SD/MMC: 0, OMAP SD/MMC: 1<br>&gt;&gt; =
&gt;<br>&gt;&gt; &gt; reading uboot.env<br>&gt;&gt; &gt;<br>&gt;&gt; =
&gt; ERROR: No USB device found<br>&gt;&gt; &gt;<br>&gt;&gt; =
&gt;<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; at =
drivers/usb/gadget/ether.c:2709/usb_ether_init()<br>&gt;&gt; =
&gt;<br>&gt;&gt; &gt; Net: &nbsp; CACHE: Misaligned operation at range =
[8df323c0, 8df32464]<br>&gt;&gt; &gt;<br>&gt;&gt; &gt;<br>&gt;&gt; =
&gt;<br>&gt;&gt; &gt; Warning: ethernet@4a100000 using MAC address from =
ROM<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; eth0: =
ethernet@4a100000<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; Hit any key to stop =
autoboot: &nbsp;0<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; reading =
zImage<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; 3412752 bytes read in 251 ms =
(13 MiB/s)<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; reading dtb<br>&gt;&gt; =
&gt;<br>&gt;&gt; &gt; 39733 bytes read in 12 ms (3.2 MiB/s)<br>&gt;&gt; =
&gt;<br>&gt;&gt; &gt; ## Flattened Device Tree blob at =
82000000<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; &nbsp; &nbsp;Booting using =
the fdt blob at 0x82000000<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; &nbsp; =
&nbsp;Loading Device Tree to 8df19000, end 8df25b34 ... OK<br>&gt;&gt; =
&gt;<br>&gt;&gt; &gt;<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; Starting kernel =
...<br>&gt;&gt; &gt;<br>&gt;&gt; &gt;<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; =
[ &nbsp; &nbsp;0.000000] Booting Linux on physical CPU 0x0<br>&gt;&gt; =
&gt;<br>&gt;&gt; &gt; [ &nbsp; &nbsp;0.000000] Initializing cgroup =
subsys cpu<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ &nbsp; &nbsp;0.000000] =
Initializing cgroup subsys cpuacct<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =
&nbsp; &nbsp;0.000000] Linux version 4.4.19-ge581bb1cac =
(polycaptil@polycaptil-HP-Notebook) (gcc version 5.3.0 (GCC) ) #1 =
PREEMPT Thu May 24 11:42:17 CEST 2018<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; =
[ &nbsp; &nbsp;0.000000] CPU: ARMv7 Processor [413fc082] revision 2 =
(ARMv7), cr=3D10c5387d<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ &nbsp; =
&nbsp;0.000000] CPU: PIPT / VIPT nonaliasing data cache, VIPT aliasing =
instruction cache<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ &nbsp; =
&nbsp;0.000000] Machine model: TI AM335x EVM-SK<br>&gt;&gt; =
&gt;<br>&gt;&gt; &gt; [ &nbsp; &nbsp;0.000000] cma: Reserved 48 MiB at =
0x8a800000<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ &nbsp; &nbsp;0.000000] =
Memory policy: Data cache writeback<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =
&nbsp; &nbsp;0.000000] CPU: All CPU(s) started in SVC mode.<br>&gt;&gt; =
&gt;<br>&gt;&gt; &gt; [ &nbsp; &nbsp;0.000000] AM335X ES2.1 (sgx neon =
)<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ &nbsp; &nbsp;0.000000] Built 1 =
zonelists in Zone order, mobility grouping on.&nbsp; Total pages: =
64960<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ &nbsp; &nbsp;0.000000] Kernel =
command line: console=3DttyO0,115200 root=3D/dev/mmcblk0p3 =
rw<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ &nbsp; &nbsp;0.000000] PID hash =
table entries: 1024 (order: 0, 4096 bytes)<br>&gt;&gt; &gt;<br>&gt;&gt; =
&gt; [ &nbsp; &nbsp;0.000000] Dentry cache hash table entries: 32768 =
(order: 5, 131072 bytes)<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ &nbsp; =
&nbsp;0.000000] Inode-cache hash table entries: 16384 (order: 4, 65536 =
bytes)<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ &nbsp; &nbsp;0.000000] =
Memory: 200444K/262144K available (6495K kernel code, 313K rwdata, 2368K =
rodata, 260K init, 265K bss, 12548K reserved, 49152K cma-reserved, 0K =
highmem)<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ &nbsp; &nbsp;0.000000] =
Virtual kernel memory layout:<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ &nbsp; =
&nbsp;0.000000] &nbsp; &nbsp; vector &nbsp;: 0xffff0000 - 0xffff1000 =
&nbsp; ( &nbsp; 4 kB)<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ &nbsp; =
&nbsp;0.000000] &nbsp; &nbsp; fixmap &nbsp;: 0xffc00000 - 0xfff00000 =
&nbsp; (3072 kB)<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ &nbsp; =
&nbsp;0.000000] &nbsp; &nbsp; vmalloc : 0xd0800000 - 0xff800000 &nbsp; ( =
752 MB)<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ &nbsp; &nbsp;0.000000] =
&nbsp; &nbsp; lowmem &nbsp;: 0xc0000000 - 0xd0000000 &nbsp; ( 256 =
MB)<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ &nbsp; &nbsp;0.000000] &nbsp; =
&nbsp; pkmap &nbsp; : 0xbfe00000 - 0xc0000000 &nbsp; ( &nbsp; 2 =
MB)<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ &nbsp; &nbsp;0.000000] &nbsp; =
&nbsp; modules : 0xbf000000 - 0xbfe00000 &nbsp; ( &nbsp;14 =
MB)<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ &nbsp; &nbsp;0.000000] &nbsp; =
&nbsp; &nbsp; .text : 0xc0008000 - 0xc08b0034 &nbsp; (8865 =
kB)<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ &nbsp; &nbsp;0.000000] &nbsp; =
&nbsp; &nbsp; .init : 0xc08b1000 - 0xc08f2000 &nbsp; ( 260 =
kB)<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ &nbsp; &nbsp;0.000000] &nbsp; =
&nbsp; &nbsp; .data : 0xc08f2000 - 0xc09407f0 &nbsp; ( 314 =
kB)<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ &nbsp; &nbsp;0.000000] &nbsp; =
&nbsp; &nbsp; &nbsp;.bss : 0xc09407f0 - 0xc0982d58 &nbsp; ( 266 =
kB)<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ &nbsp; &nbsp;0.000000] SLUB: =
HWalign=3D64, Order=3D0-3, MinObjects=3D0, CPUs=3D1, =
Nodes=3D1<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ &nbsp; &nbsp;0.000000] =
Preemptible hierarchical RCU implementation.<br>&gt;&gt; =
&gt;<br>&gt;&gt; &gt; [ &nbsp; &nbsp;0.000000] &nbsp;Build-time =
adjustment of leaf fanout to 32.<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =
&nbsp; &nbsp;0.000000] NR_IRQS:16 nr_irqs:16 16<br>&gt;&gt; =
&gt;<br>&gt;&gt; &gt; [ &nbsp; &nbsp;0.000000] IRQ: Found an INTC at =
0xfa200000 (revision 5.0) with 128 interrupts<br>&gt;&gt; =
&gt;<br>&gt;&gt; &gt; [ &nbsp; &nbsp;0.000000] OMAP clockevent source: =
timer2 at 24000000 Hz<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ &nbsp; =
&nbsp;0.000015] sched_clock: 32 bits at 24MHz, resolution 41ns, wraps =
every 89478484971ns<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ &nbsp; =
&nbsp;0.000036] clocksource: timer1: mask: 0xffffffff max_cycles: =
0xffffffff, max_idle_ns: 79635851949 ns<br>&gt;&gt; &gt;<br>&gt;&gt; =
&gt; [ &nbsp; &nbsp;0.000047] OMAP clocksource: timer1 at 24000000 =
Hz<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ &nbsp; &nbsp;0.000222] =
clocksource_probe: no matching clocksources found<br>&gt;&gt; =
&gt;<br>&gt;&gt; &gt; [ &nbsp; &nbsp;0.000415] Console: colour dummy =
device 80x30<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ &nbsp; &nbsp;0.000442] =
WARNING: Your 'console=3DttyO0' has been replaced by 'ttyS0'<br>&gt;&gt; =
&gt;<br>&gt;&gt; &gt; [ &nbsp; &nbsp;0.000448] This ensures that you =
still see kernel messages. Please<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =
&nbsp; &nbsp;0.000454] update your kernel commandline.<br>&gt;&gt; =
&gt;<br>&gt;&gt; &gt; [ &nbsp; &nbsp;0.000473] Calibrating delay loop... =
795.44 BogoMIPS (lpj=3D3977216)<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =
&nbsp; &nbsp;0.089064] pid_max: default: 32768 minimum: 301<br>&gt;&gt; =
&gt;<br>&gt;&gt; &gt; [ &nbsp; &nbsp;0.089193] Mount-cache hash table =
entries: 1024 (order: 0, 4096 bytes)<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =
&nbsp; &nbsp;0.089205] Mountpoint-cache hash table entries: 1024 (order: =
0, 4096 bytes)<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ &nbsp; =
&nbsp;0.089932] Initializing cgroup subsys io<br>&gt;&gt; =
&gt;<br>&gt;&gt; &gt; [ &nbsp; &nbsp;0.089964] Initializing cgroup =
subsys memory<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ &nbsp; &nbsp;0.090005] =
Initializing cgroup subsys devices<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =
&nbsp; &nbsp;0.090021] Initializing cgroup subsys freezer<br>&gt;&gt; =
&gt;<br>&gt;&gt; &gt; [ &nbsp; &nbsp;0.090036] Initializing cgroup =
subsys perf_event<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ &nbsp; =
&nbsp;0.090048] Initializing cgroup subsys pids<br>&gt;&gt; =
&gt;<br>&gt;&gt; &gt; [ &nbsp; &nbsp;0.090078] CPU: Testing write buffer =
coherency: ok<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ &nbsp; &nbsp;0.090499] =
Setting up static identity map for 0x80008200 - 0x80008258<br>&gt;&gt; =
&gt;<br>&gt;&gt; &gt; [ &nbsp; &nbsp;0.092680] devtmpfs: =
initialized<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ &nbsp; &nbsp;0.105440] =
VFP support v0.3: implementor 41 architecture 3 part 30 variant c rev =
3<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ &nbsp; &nbsp;0.120529] omap_hwmod: =
debugss: _wait_target_disable failed<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =
&nbsp; &nbsp;0.175584] clocksource: jiffies: mask: 0xffffffff =
max_cycles: 0xffffffff, max_idle_ns: 19112604462750000 ns<br>&gt;&gt; =
&gt;<br>&gt;&gt; &gt; [ &nbsp; &nbsp;0.179852] pinctrl core: initialized =
pinctrl subsystem<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ &nbsp; =
&nbsp;0.181216] NET: Registered protocol family 16<br>&gt;&gt; =
&gt;<br>&gt;&gt; &gt; [ &nbsp; &nbsp;0.183420] DMA: preallocated 256 KiB =
pool for atomic coherent allocations<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =
&nbsp; &nbsp;0.209061] cpuidle: using governor ladder<br>&gt;&gt; =
&gt;<br>&gt;&gt; &gt; [ &nbsp; &nbsp;0.239048] cpuidle: using governor =
menu<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ &nbsp; &nbsp;0.243661] OMAP =
GPIO hardware version 0.1<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ &nbsp; =
&nbsp;0.254360] hw-breakpoint: debug architecture 0x4 =
unsupported.<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ &nbsp; &nbsp;0.297629] =
edma 49000000.edma: TI EDMA DMA engine driver<br>&gt;&gt; =
&gt;<br>&gt;&gt; &gt; [ &nbsp; &nbsp;0.298606] reg-fixed-voltage =
fixedregulator@2: could not find pctldev for node =
/ocp/l4_wkup@44c00000/scm@210000/pinmux@800/pinmux_wl12xx_gpio, =
deferring probe<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ &nbsp; =
&nbsp;0.302364] omap_i2c 44e0b000.i2c: could not find pctldev for node =
/ocp/l4_wkup@44c00000/scm@210000/pinmux@800/pinmux_i2c0_pins, deferring =
probe<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ &nbsp; &nbsp;0.302525] media: =
Linux media interface: v0.10<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ &nbsp; =
&nbsp;0.302588] Linux video capture interface: v2.00<br>&gt;&gt; =
&gt;<br>&gt;&gt; &gt; [ &nbsp; &nbsp;0.302638] pps_core: LinuxPPS API =
ver. 1 registered<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ &nbsp; =
&nbsp;0.302646] pps_core: Software ver. 5.3.6 - Copyright 2005-2007 =
Rodolfo Giometti &lt;</span><a href=3D"mailto:giometti@linux.it" =
target=3D"_blank"><span lang=3DEN-US>giometti@linux.it</span></a><span =
lang=3DEN-US>&gt;<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ &nbsp; =
&nbsp;0.302676] PTP clock support registered<br>&gt;&gt; =
&gt;<br>&gt;&gt; &gt; [ &nbsp; &nbsp;0.302741] EDAC MC: Ver: =
3.0.0<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ &nbsp; &nbsp;0.303966] =
omap-mailbox 480c8000.mailbox: omap mailbox rev 0x400<br>&gt;&gt; =
&gt;<br>&gt;&gt; &gt; [ &nbsp; &nbsp;0.304332] Advanced Linux Sound =
Architecture Driver Initialized.<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =
&nbsp; &nbsp;0.305512] clocksource: Switched to clocksource =
timer1<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ &nbsp; &nbsp;0.316775] NET: =
Registered protocol family 2<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ &nbsp; =
&nbsp;0.317599] TCP established hash table entries: 2048 (order: 1, 8192 =
bytes)<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ &nbsp; &nbsp;0.317636] TCP =
bind hash table entries: 2048 (order: 1, 8192 bytes)<br>&gt;&gt; =
&gt;<br>&gt;&gt; &gt; [ &nbsp; &nbsp;0.317663] TCP: Hash tables =
configured (established 2048 bind 2048)<br>&gt;&gt; &gt;<br>&gt;&gt; =
&gt; [ &nbsp; &nbsp;0.317748] UDP hash table entries: 256 (order: 0, =
4096 bytes)<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ &nbsp; &nbsp;0.317767] =
UDP-Lite hash table entries: 256 (order: 0, 4096 bytes)<br>&gt;&gt; =
&gt;<br>&gt;&gt; &gt; [ &nbsp; &nbsp;0.317925] NET: Registered protocol =
family 1<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ &nbsp; &nbsp;0.318352] RPC: =
Registered named UNIX socket transport module.<br>&gt;&gt; =
&gt;<br>&gt;&gt; &gt; [ &nbsp; &nbsp;0.318366] RPC: Registered udp =
transport module.<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ &nbsp; =
&nbsp;0.318372] RPC: Registered tcp transport module.<br>&gt;&gt; =
&gt;<br>&gt;&gt; &gt; [ &nbsp; &nbsp;0.318379] RPC: Registered tcp =
NFSv4.1 backchannel transport module.<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; =
[ &nbsp; &nbsp;0.319330] hw perfevents: enabled with armv7_cortex_a8 PMU =
driver, 5 counters available<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ &nbsp; =
&nbsp;0.321392] futex hash table entries: 256 (order: -1, 3072 =
bytes)<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ &nbsp; &nbsp;0.329780] =
squashfs: version 4.0 (2009/01/31) Phillip Lougher<br>&gt;&gt; =
&gt;<br>&gt;&gt; &gt; [ &nbsp; &nbsp;0.330717] NFS: Registering the =
id_resolver key type<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ &nbsp; =
&nbsp;0.330798] Key type id_resolver registered<br>&gt;&gt; =
&gt;<br>&gt;&gt; &gt; [ &nbsp; &nbsp;0.330807] Key type id_legacy =
registered<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ &nbsp; &nbsp;0.330886] =
ntfs: driver 2.1.32 [Flags: R/O].<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =
&nbsp; &nbsp;0.334673] Block layer SCSI generic (bsg) driver version 0.4 =
loaded (major 248)<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ &nbsp; =
&nbsp;0.334706] io scheduler noop registered<br>&gt;&gt; =
&gt;<br>&gt;&gt; &gt; [ &nbsp; &nbsp;0.334719] io scheduler deadline =
registered<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ &nbsp; &nbsp;0.334877] io =
scheduler cfq registered (default)<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =
&nbsp; &nbsp;0.336555] pinctrl-single 44e10800.pinmux: 142 pins at pa =
f9e10800 size 568<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ &nbsp; =
&nbsp;0.339415] backlight supply power not found, using dummy =
regulator<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ &nbsp; &nbsp;0.402480] =
Serial: 8250/16550 driver, 10 ports, IRQ sharing disabled<br>&gt;&gt; =
&gt;<br>&gt;&gt; &gt; [ &nbsp; &nbsp;0.406962] 44e09000.serial: ttyS0 at =
MMIO 0x44e09000 (irq =3D 158, base_baud =3D 3000000) is a =
8250<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ &nbsp; &nbsp;1.017357] console =
[ttyS0] enabled<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ &nbsp; =
&nbsp;1.022206] 48022000.serial: ttyS1 at MMIO 0x48022000 (irq =3D 159, =
base_baud =3D 3000000) is a 8250<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =
&nbsp; &nbsp;1.032273] [drm] Initialized drm 1.1.0 20060810<br>&gt;&gt; =
&gt;<br>&gt;&gt; &gt; [ &nbsp; &nbsp;1.039564] [drm] Supports vblank =
timestamp caching Rev 2 (21.10.2013).<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; =
[ &nbsp; &nbsp;1.046349] [drm] No driver support for vblank timestamp =
query.<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ &nbsp; &nbsp;1.062121] =
Console: switching to colour frame buffer device 60x34<br>&gt;&gt; =
&gt;<br>&gt;&gt; &gt; [ &nbsp; &nbsp;1.070360] tilcdc 4830e000.lcdc: =
fb0: &nbsp;frame buffer device<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =
&nbsp; &nbsp;1.105531] [drm] Initialized tilcdc 1.0.0 20121205 on minor =
0<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ &nbsp; &nbsp;1.118644] loop: =
module loaded<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ &nbsp; &nbsp;1.124253] =
libphy: Fixed MDIO Bus: probed<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =
&nbsp; &nbsp;1.185550] davinci_mdio 4a101000.mdio: davinci mdio revision =
1.6<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ &nbsp; &nbsp;1.191695] =
davinci_mdio 4a101000.mdio: detected phy mask fffffffe<br>&gt;&gt; =
&gt;<br>&gt;&gt; &gt; [ &nbsp; &nbsp;1.198786] libphy: 4a101000.mdio: =
probed<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ &nbsp; &nbsp;1.202886] =
davinci_mdio 4a101000.mdio: phy[0]: device 4a101000.mdio:00, driver SMSC =
LAN8710/LAN8720<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ &nbsp; =
&nbsp;1.212890] cpsw 4a100000.ethernet: Detected MACID =3D =
a0:f6:fd:4c:a6:ba<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ &nbsp; =
&nbsp;1.220531] cpsw 4a100000.ethernet: cpsw: Detected MACID =3D =
c4:ed:ba:88:2a:92<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ &nbsp; =
&nbsp;1.229382] mousedev: PS/2 mouse device common for all =
mice<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ &nbsp; &nbsp;1.235845] i2c /dev =
entries driver<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ &nbsp; =
&nbsp;1.240508] cpuidle: enable-method property 'ti,am3352' found =
operations<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ &nbsp; &nbsp;1.248197] =
omap_hsmmc 48060000.mmc: Got CD GPIO<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =
&nbsp; &nbsp;1.275713] pinctrl-single 44e10800.pinmux: bad data for mux =
pinmux_mmc2_pins<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ &nbsp; =
&nbsp;1.282895] pinctrl-single 44e10800.pinmux: no pins entries for =
pinmux_mmc2_pins<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ &nbsp; =
&nbsp;1.317159] ledtrig-cpu: registered to indicate activity on =
CPUs<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ &nbsp; &nbsp;1.326069] NET: =
Registered protocol family 10<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ &nbsp; =
&nbsp;1.332092] sit: IPv6 over IPv4 tunneling driver<br>&gt;&gt; =
&gt;<br>&gt;&gt; &gt; [ &nbsp; &nbsp;1.337715] NET: Registered protocol =
family 17<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ &nbsp; &nbsp;1.342510] Key =
type dns_resolver registered<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ &nbsp; =
&nbsp;1.347095] omap_voltage_late_init: Voltage driver support not =
added<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ &nbsp; &nbsp;1.407145] =
tps65910-rtc tps65910-rtc: rtc core: registered tps65910-rtc as =
rtc0<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ &nbsp; &nbsp;1.415278] omap_i2c =
44e0b000.i2c: bus 0 rev0.11 at 400 kHz<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; =
[ &nbsp; &nbsp;1.421665] omap_hsmmc 48060000.mmc: Got CD =
GPIO<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ &nbsp; &nbsp;1.426813] vmmc: =
supplied by vbat<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ &nbsp; =
&nbsp;1.466341] pinctrl-single 44e10800.pinmux: bad data for mux =
pinmux_mmc2_pins<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ &nbsp; =
&nbsp;1.474737] pinctrl-single 44e10800.pinmux: no pins entries for =
pinmux_mmc2_pins<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ &nbsp; =
&nbsp;1.513247] mmc0: host does not support reading read-only switch, =
assuming write-enable<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ &nbsp; =
&nbsp;1.523414] mmc0: new high speed SDHC card at address =
0001<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ &nbsp; &nbsp;1.529635] mmcblk0: =
mmc0:0001 AS 3.72 GiB<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ &nbsp; =
&nbsp;1.535996] &nbsp;mmcblk0: p1 p2 p3<br>&gt;&gt; &gt;<br>&gt;&gt; =
&gt; [ &nbsp; &nbsp;1.595932] vdd_mpu: supplied by vbat<br>&gt;&gt; =
&gt;<br>&gt;&gt; &gt; [ &nbsp; &nbsp;1.602167] input: gpio_buttons@0 as =
/devices/platform/gpio_buttons@0/input/input0<br>&gt;&gt; =
&gt;<br>&gt;&gt; &gt; [ &nbsp; &nbsp;1.618291] tps65910-rtc =
tps65910-rtc: setting system clock to 2019-02-01 20:07:49 UTC =
(1549051669)<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ &nbsp; &nbsp;1.639394] =
lis3_reg: disabling<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ &nbsp; =
&nbsp;1.655732] ALSA device list:<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =
&nbsp; &nbsp;1.658720] &nbsp; No soundcards found.<br>&gt;&gt; =
&gt;<br>&gt;&gt; &gt; [ &nbsp; &nbsp;1.678290] EXT4-fs (mmcblk0p3): =
couldn't mount as ext3 due to feature incompatibilities<br>&gt;&gt; =
&gt;<br>&gt;&gt; &gt; [ &nbsp; &nbsp;1.696920] EXT4-fs (mmcblk0p3): =
couldn't mount as ext2 due to feature incompatibilities<br>&gt;&gt; =
&gt;<br>&gt;&gt; &gt; [ &nbsp; &nbsp;2.183999] EXT4-fs (mmcblk0p3): =
recovery complete<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ &nbsp; =
&nbsp;2.196864] EXT4-fs (mmcblk0p3): mounted filesystem with ordered =
data mode. Opts: (null)<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ &nbsp; =
&nbsp;2.205084] VFS: Mounted root (ext4 filesystem) on device =
179:3.<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ &nbsp; &nbsp;2.225670] =
devtmpfs: mounted<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ &nbsp; =
&nbsp;2.235781] Freeing unused kernel memory: 260K (c08b1000 - =
c08f2000)<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ &nbsp; &nbsp;2.242162] =
This architecture does not have kernel memory protection.<br>&gt;&gt; =
&gt;<br>&gt;&gt; &gt; INIT: version 2.88 booting<br>&gt;&gt; =
&gt;<br>&gt;&gt; &gt; Starting udev<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =
&nbsp; &nbsp;3.090091] udevd[78]: starting version 3.2.5<br>&gt;&gt; =
&gt;<br>&gt;&gt; &gt; [ &nbsp; &nbsp;3.106175] random: udevd: =
uninitialized urandom read (16 bytes read, 26 bits of entropy =
available)<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ &nbsp; &nbsp;3.118667] =
random: udevd: uninitialized urandom read (16 bytes read, 26 bits of =
entropy available)<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ &nbsp; =
&nbsp;3.128014] random: udevd: uninitialized urandom read (16 bytes =
read, 26 bits of entropy available)<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =
&nbsp; &nbsp;3.137335] random: udevd: uninitialized urandom read (16 =
bytes read, 26 bits of entropy available)<br>&gt;&gt; &gt;<br>&gt;&gt; =
&gt; [ &nbsp; &nbsp;3.218433] udevd[79]: starting =
eudev-3.2.5<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ &nbsp; &nbsp;3.325886] =
random: udevd: uninitialized urandom read (16 bytes read, 29 bits of =
entropy available)<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ &nbsp; =
&nbsp;3.346155] random: udevd: uninitialized urandom read (16 bytes =
read, 29 bits of entropy available)<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =
&nbsp; &nbsp;4.820708] EXT4-fs (mmcblk0p3): re-mounted. Opts: =
data=3Dordered<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ &nbsp; =
&nbsp;5.548283] random: dd: uninitialized urandom read (512 bytes read, =
43 bits of entropy available)<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; INIT: =
Entering runlevel: 5<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; Configuring =
network interfaces... [ &nbsp; &nbsp;5.820546] net eth0: initializing =
cpsw version 1.12 (0)<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ &nbsp; =
&nbsp;5.825987] net eth0: initialized cpsw ale version 1.4<br>&gt;&gt; =
&gt;<br>&gt;&gt; &gt; [ &nbsp; &nbsp;5.831150] net eth0: ALE Table size =
1024<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ &nbsp; &nbsp;5.838581] net =
eth0: phy found : id is : 0x7c0f1<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ =
&nbsp; &nbsp;5.851838] IPv6: ADDRCONF(NETDEV_UP): eth0: link is not =
ready<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ &nbsp; &nbsp;9.896392] cpsw =
4a100000.ethernet eth0: Link is Up - 100Mbps/Full - flow control =
rx/tx<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ &nbsp; &nbsp;9.904635] IPv6: =
ADDRCONF(NETDEV_CHANGE): eth0: link becomes ready<br>&gt;&gt; =
&gt;<br>&gt;&gt; &gt; chown: unrecognized option =
'--reference=3D/etc/resolv.conf'<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; =
BusyBox v1.27.2 (2018-11-05 21:16:09 UTC) multi-call binary.<br>&gt;&gt; =
&gt;<br>&gt;&gt; &gt;<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; Usage: chown =
[-Rh]... USER[:[GRP]] FILE...<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; chmod: =
unrecognized option '--reference=3D/etc/resolv.conf'<br>&gt;&gt; =
&gt;<br>&gt;&gt; &gt; BusyBox v1.27.2 (2018-11-05 21:16:09 UTC) =
multi-call binary.<br>&gt;&gt; &gt;<br>&gt;&gt; &gt;<br>&gt;&gt; =
&gt;<br>&gt;&gt; &gt; Usage: chmod [-R] MODE[,MODE]... =
FILE...<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; done.<br>&gt;&gt; =
&gt;<br>&gt;&gt; &gt; Starting system message bus: [ &nbsp; 14.887099] =
random: dbus-daemon: uninitialized urandom read (12 bytes read, 62 bits =
of entropy available)<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ &nbsp; =
14.912318] random: dbus-daemon: uninitialized urandom read (12 bytes =
read, 62 bits of entropy available)<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; =
dbus.<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; Starting OpenBSD Secure Shell =
server: sshd<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ &nbsp; 15.393971] =
random: sshd: uninitialized urandom read (32 bytes read, 65 bits of =
entropy available)<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; done.<br>&gt;&gt; =
&gt;<br>&gt;&gt; &gt; Starting Xserver<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; =
Starting DHCP server:<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; .<br>&gt;&gt; =
&gt;<br>&gt;&gt; &gt; starting DNS forwarder and DHCP server: =
dnsmasq...<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; X.Org X Server =
1.19.6<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; Release Date: =
2017-12-20<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; X Protocol Version 11, =
Revision 0<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; Build Operating System: =
Linux 4.15.0-38-generic x86_64<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; Current =
Operating System: Linux polycaptil-machine-am335x-evmsk<br>&gt;&gt; &gt; =
4.4.19-ge581bb1cac #1 PREEMPT Thu May 24 11:42:17 CEST 2018 =
armv7l<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; Kernel command line: =
console=3DttyO0,115200 root=3D/dev/mmcblk0p3 rw<br>&gt;&gt; =
&gt;<br>&gt;&gt; &gt; Build Date: 05 November 2018 =
&nbsp;09:33:21PM<br>&gt;&gt; &gt;<br>&gt;&gt; &gt;<br>&gt;&gt; =
&gt;<br>&gt;&gt; &gt; Current version of pixman: 0.34.0<br>&gt;&gt; =
&gt;<br>&gt;&gt; &gt; &nbsp; &nbsp; &nbsp; &nbsp; Before reporting =
problems, check </span><a href=3D"http://wiki.x.org" =
target=3D"_blank"><span lang=3DEN-US>http://wiki.x.org</span></a><span =
lang=3DEN-US><br>&gt;&gt; &gt;<br>&gt;&gt; &gt; &nbsp; &nbsp; &nbsp; =
&nbsp; to make sure that you have the latest version.<br>&gt;&gt; =
&gt;<br>&gt;&gt; &gt; Markers: (--) probed, (**) from config file, =
(=3D=3D) default setting,<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; &nbsp; =
&nbsp; &nbsp; &nbsp; (++) from command line, (!!) notice, (II) =
informational,<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; &nbsp; &nbsp; &nbsp; =
&nbsp; (WW) warning, (EE) error, (NI) not implemented, (??) =
unknown.<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; (=3D=3D) Log file: =
&quot;/var/log/Xorg.0.log&quot;, Time: Fri Feb &nbsp;1 20:08:02 =
2019<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; (=3D=3D) Using config file: =
&quot;/etc/X11/xorg.conf&quot;<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; =
(=3D=3D) Using system config directory =
&quot;/usr/share/X11/xorg.conf.d&quot;<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; =
done.<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; Starting HOSTAP Daemon: =
Configuration file: /etc/hostapd.conf<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; =
nl80211: 'nl80211' generic netlink not found<br>&gt;&gt; =
&gt;<br>&gt;&gt; &gt; Failed to initialize driver 'nl80211'<br>&gt;&gt; =
&gt;<br>&gt;&gt; &gt; wlan0: interface state =
UNINITIALIZED-&gt;DISABLED<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; wlan0: =
AP-DISABLED<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; hostapd_free_hapd_data: =
Interface wlan0 wasn't started<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; =
Starting ntpd: done<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; Starting =
syslogd/klogd: done<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; Starting crond: =
OK<br>&gt;&gt; &gt;<br>&gt;&gt; &gt;<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; =
Poky (Yocto Project Reference Distro) 2.5<br>&gt;&gt; &gt; =
polycaptil-machine-am335x-evmsk /dev/ttyS0<br>&gt;&gt; &gt;<br>&gt;&gt; =
&gt;<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; polycaptil-machine-am335x-evmsk =
login: D-BUS per-session daemon<br>&gt;&gt; &gt; address is:<br>&gt;&gt; =
&gt; =
unix:abstract=3D/tmp/dbus-07WuJSySeb,guid=3Da3e41f2692316c19766e95535c54a=
7<br>&gt;&gt; &gt; 25<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; Size 1024x768 =
not found in available modes<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; Error: No =
calibratable devices found.<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; matchbox: =
Cant find a keycode for keysym 269025056<br>&gt;&gt; &gt;<br>&gt;&gt; =
&gt; matchbox: ignoring key shortcut =
XF86Calendar=3D!$contacts<br>&gt;&gt; &gt;<br>&gt;&gt; &gt;<br>&gt;&gt; =
&gt;<br>&gt;&gt; &gt; matchbox: Cant find a keycode for keysym =
2809<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; matchbox: ignoring key shortcut =
telephone=3D!$dates<br>&gt;&gt; &gt;<br>&gt;&gt; &gt;<br>&gt;&gt; =
&gt;<br>&gt;&gt; &gt; matchbox: Cant find a keycode for keysym =
269025050<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; matchbox: ignoring key =
shortcut XF86Start=3D!matchbox-remote -desktop<br>&gt;&gt; =
&gt;<br>&gt;&gt; &gt;<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; =
dbus-daemon[358]: Activating service =
name=3D'org.a11y.atspi.Registry'<br>&gt;&gt; &gt; requested by ':1.0' =
(uid=3D0 pid=3D354 comm=3D&quot;matchbox-terminal &quot;)<br>&gt;&gt; =
&gt;<br>&gt;&gt; &gt; dbus-daemon[358]: Successfully activated service =
'org.a11y.atspi.Registry'<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; SpiRegistry =
daemon is running with well-known name -<br>&gt;&gt; &gt; =
org.a11y.atspi.Registry<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; [ &nbsp; =
30.662697] random: nonblocking pool is initialized<br>&gt;&gt; =
&gt;<br>&gt;&gt; &gt;<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; Poky (Yocto =
Project Reference Distro) 2.5<br>&gt;&gt; &gt; =
polycaptil-machine-am335x-evmsk /dev/ttyS0<br>&gt;&gt; &gt;<br>&gt;&gt; =
&gt;<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; Thank=E2=80=99s to take time to =
read my message.<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; =
N.Stanisavljevic<br>&gt;&gt; &gt;<br>&gt;&gt; &gt; --<br>&gt;&gt; &gt; =
_______________________________________________<br>&gt;&gt; &gt; yocto =
mailing list<br>&gt;&gt; &gt; </span><a =
href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank"><span =
lang=3DEN-US>yocto@yoctoproject.org</span></a><span =
lang=3DEN-US><br>&gt;&gt; &gt; </span><a =
href=3D"https://lists.yoctoproject.org/listinfo/yocto" =
target=3D"_blank"><span =
lang=3DEN-US>https://lists.yoctoproject.org/listinfo/yocto</span></a><spa=
n =
lang=3DEN-US><br>&gt;&gt;</span><o:p></o:p></p></div></div></div></blockq=
uote></div></div></div></blockquote></div></div></body></html>

------=_NextPart_000_00C0_01D4F090.351D0C40--
