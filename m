Return-Path: <n.stanisavljevic@polycaptil.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3F953E008CA; Mon,  4 Feb 2019 03:15:44 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [212.95.66.15 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 537 seconds by postgrey-1.32 at yocto-www;
	Mon, 04 Feb 2019 03:15:35 PST
Received: from itinerix.sdv.fr (itinerix.sdv.fr [212.95.66.15])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AEC52E00754
	for <yocto@yoctoproject.org>; Mon,  4 Feb 2019 03:15:35 -0800 (PST)
Received: from FIXNIKOLA (unknown [65.39.68.243])
	by itinerix.sdv.fr (Postfix) with ESMTPSA id C09EBDBA4
	for <yocto@yoctoproject.org>; Mon,  4 Feb 2019 12:06:36 +0100 (CET)
From: "Stanisavljevic" <n.stanisavljevic@polycaptil.fr>
To: <yocto@yoctoproject.org>
Date: Mon, 4 Feb 2019 12:06:36 +0100
Message-ID: <001101d4bc79$b2739150$175ab3f0$@polycaptil.fr>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AdS8eIThk/p2Hi2mSMy2Do0yZP7P9A==
Subject: yocto touchscreen
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
X-List-Received-Date: Mon, 04 Feb 2019 11:15:44 -0000
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_0012_01D4BC82.143E13D0"
Content-Language: fr

------=_NextPart_000_0012_01D4BC82.143E13D0
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hy Team,

 

I have a problem

 

I buid a custom os for AM335x processor and I used yocto to do it.

 

I build a first version of this os with version krogoth and it work fine.

 

Now I build a second version of this os with version sumo and the
touchscreen work fine during boot process but when kernel is loaded,
touchscreen freeze / lock and impossible to use it.

The terminal is printed on the touchscreen but the screen is locked,
impossible to write a command or to move the mouse to select, ..

 

Here is the log of boot to the user session (log got with serial
communication between PC and board) :

 

U-Boot SPL 2017.05-00001-g041a398 (May 02 2018 - 18:36:57)

Trying to boot from MMC1

reading uboot.env

reading u-boot.img

reading u-boot.img

reading u-boot.img

reading u-boot.img

 

 

U-Boot 2017.05-00001-g041a398 (May 02 2018 - 18:36:57 +0200)

 

CPU  : AM335X-GP rev 2.1

Model: TI AM335x EVM-SK

DRAM:  256 MiB

NAND:  0 MiB

MMC:   OMAP SD/MMC: 0, OMAP SD/MMC: 1

reading uboot.env

ERROR: No USB device found

 

at drivers/usb/gadget/ether.c:2709/usb_ether_init()

Net:   CACHE: Misaligned operation at range [8df323c0, 8df32464]

 

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

 

Starting kernel ...

 

[    0.000000] Booting Linux on physical CPU 0x0

[    0.000000] Initializing cgroup subsys cpu

[    0.000000] Initializing cgroup subsys cpuacct

[    0.000000] Linux version 4.4.19-ge581bb1cac
(polycaptil@polycaptil-HP-Notebook) (gcc version 5.3.0 (GCC) ) #1 PREEMPT
Thu May 24 11:42:17 CEST 2018

[    0.000000] CPU: ARMv7 Processor [413fc082] revision 2 (ARMv7),
cr=10c5387d

[    0.000000] CPU: PIPT / VIPT nonaliasing data cache, VIPT aliasing
instruction cache

[    0.000000] Machine model: TI AM335x EVM-SK

[    0.000000] cma: Reserved 48 MiB at 0x8a800000

[    0.000000] Memory policy: Data cache writeback

[    0.000000] CPU: All CPU(s) started in SVC mode.

[    0.000000] AM335X ES2.1 (sgx neon )

[    0.000000] Built 1 zonelists in Zone order, mobility grouping on.  Total
pages: 64960

[    0.000000] Kernel command line: console=ttyO0,115200 root=/dev/mmcblk0p3
rw

[    0.000000] PID hash table entries: 1024 (order: 0, 4096 bytes)

[    0.000000] Dentry cache hash table entries: 32768 (order: 5, 131072
bytes)

[    0.000000] Inode-cache hash table entries: 16384 (order: 4, 65536 bytes)

[    0.000000] Memory: 200444K/262144K available (6495K kernel code, 313K
rwdata, 2368K rodata, 260K init, 265K bss, 12548K reserved, 49152K
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

[    0.000000] SLUB: HWalign=64, Order=0-3, MinObjects=0, CPUs=1, Nodes=1

[    0.000000] Preemptible hierarchical RCU implementation.

[    0.000000]  Build-time adjustment of leaf fanout to 32.

[    0.000000] NR_IRQS:16 nr_irqs:16 16

[    0.000000] IRQ: Found an INTC at 0xfa200000 (revision 5.0) with 128
interrupts

[    0.000000] OMAP clockevent source: timer2 at 24000000 Hz

[    0.000015] sched_clock: 32 bits at 24MHz, resolution 41ns, wraps every
89478484971ns

[    0.000036] clocksource: timer1: mask: 0xffffffff max_cycles: 0xffffffff,
max_idle_ns: 79635851949 ns

[    0.000047] OMAP clocksource: timer1 at 24000000 Hz

[    0.000222] clocksource_probe: no matching clocksources found

[    0.000415] Console: colour dummy device 80x30

[    0.000442] WARNING: Your 'console=ttyO0' has been replaced by 'ttyS0'

[    0.000448] This ensures that you still see kernel messages. Please

[    0.000454] update your kernel commandline.

[    0.000473] Calibrating delay loop... 795.44 BogoMIPS (lpj=3977216)

[    0.089064] pid_max: default: 32768 minimum: 301

[    0.089193] Mount-cache hash table entries: 1024 (order: 0, 4096 bytes)

[    0.089205] Mountpoint-cache hash table entries: 1024 (order: 0, 4096
bytes)

[    0.089932] Initializing cgroup subsys io

[    0.089964] Initializing cgroup subsys memory

[    0.090005] Initializing cgroup subsys devices

[    0.090021] Initializing cgroup subsys freezer

[    0.090036] Initializing cgroup subsys perf_event

[    0.090048] Initializing cgroup subsys pids

[    0.090078] CPU: Testing write buffer coherency: ok

[    0.090499] Setting up static identity map for 0x80008200 - 0x80008258

[    0.092680] devtmpfs: initialized

[    0.105440] VFP support v0.3: implementor 41 architecture 3 part 30
variant c rev 3

[    0.120529] omap_hwmod: debugss: _wait_target_disable failed

[    0.175584] clocksource: jiffies: mask: 0xffffffff max_cycles:
0xffffffff, max_idle_ns: 19112604462750000 ns

[    0.179852] pinctrl core: initialized pinctrl subsystem

[    0.181216] NET: Registered protocol family 16

[    0.183420] DMA: preallocated 256 KiB pool for atomic coherent
allocations

[    0.209061] cpuidle: using governor ladder

[    0.239048] cpuidle: using governor menu

[    0.243661] OMAP GPIO hardware version 0.1

[    0.254360] hw-breakpoint: debug architecture 0x4 unsupported.

[    0.297629] edma 49000000.edma: TI EDMA DMA engine driver

[    0.298606] reg-fixed-voltage fixedregulator@2: could not find pctldev
for node /ocp/l4_wkup@44c00000/scm@210000/pinmux@800/pinmux_wl12xx_gpio,
deferring probe

[    0.302364] omap_i2c 44e0b000.i2c: could not find pctldev for node
/ocp/l4_wkup@44c00000/scm@210000/pinmux@800/pinmux_i2c0_pins, deferring
probe

[    0.302525] media: Linux media interface: v0.10

[    0.302588] Linux video capture interface: v2.00

[    0.302638] pps_core: LinuxPPS API ver. 1 registered

[    0.302646] pps_core: Software ver. 5.3.6 - Copyright 2005-2007 Rodolfo
Giometti <giometti@linux.it>

[    0.302676] PTP clock support registered

[    0.302741] EDAC MC: Ver: 3.0.0

[    0.303966] omap-mailbox 480c8000.mailbox: omap mailbox rev 0x400

[    0.304332] Advanced Linux Sound Architecture Driver Initialized.

[    0.305512] clocksource: Switched to clocksource timer1

[    0.316775] NET: Registered protocol family 2

[    0.317599] TCP established hash table entries: 2048 (order: 1, 8192
bytes)

[    0.317636] TCP bind hash table entries: 2048 (order: 1, 8192 bytes)

[    0.317663] TCP: Hash tables configured (established 2048 bind 2048)

[    0.317748] UDP hash table entries: 256 (order: 0, 4096 bytes)

[    0.317767] UDP-Lite hash table entries: 256 (order: 0, 4096 bytes)

[    0.317925] NET: Registered protocol family 1

[    0.318352] RPC: Registered named UNIX socket transport module.

[    0.318366] RPC: Registered udp transport module.

[    0.318372] RPC: Registered tcp transport module.

[    0.318379] RPC: Registered tcp NFSv4.1 backchannel transport module.

[    0.319330] hw perfevents: enabled with armv7_cortex_a8 PMU driver, 5
counters available

[    0.321392] futex hash table entries: 256 (order: -1, 3072 bytes)

[    0.329780] squashfs: version 4.0 (2009/01/31) Phillip Lougher

[    0.330717] NFS: Registering the id_resolver key type

[    0.330798] Key type id_resolver registered

[    0.330807] Key type id_legacy registered

[    0.330886] ntfs: driver 2.1.32 [Flags: R/O].

[    0.334673] Block layer SCSI generic (bsg) driver version 0.4 loaded
(major 248)

[    0.334706] io scheduler noop registered

[    0.334719] io scheduler deadline registered

[    0.334877] io scheduler cfq registered (default)

[    0.336555] pinctrl-single 44e10800.pinmux: 142 pins at pa f9e10800 size
568

[    0.339415] backlight supply power not found, using dummy regulator

[    0.402480] Serial: 8250/16550 driver, 10 ports, IRQ sharing disabled

[    0.406962] 44e09000.serial: ttyS0 at MMIO 0x44e09000 (irq = 158,
base_baud = 3000000) is a 8250

[    1.017357] console [ttyS0] enabled

[    1.022206] 48022000.serial: ttyS1 at MMIO 0x48022000 (irq = 159,
base_baud = 3000000) is a 8250

[    1.032273] [drm] Initialized drm 1.1.0 20060810

[    1.039564] [drm] Supports vblank timestamp caching Rev 2 (21.10.2013).

[    1.046349] [drm] No driver support for vblank timestamp query.

[    1.062121] Console: switching to colour frame buffer device 60x34

[    1.070360] tilcdc 4830e000.lcdc: fb0:  frame buffer device

[    1.105531] [drm] Initialized tilcdc 1.0.0 20121205 on minor 0

[    1.118644] loop: module loaded

[    1.124253] libphy: Fixed MDIO Bus: probed

[    1.185550] davinci_mdio 4a101000.mdio: davinci mdio revision 1.6

[    1.191695] davinci_mdio 4a101000.mdio: detected phy mask fffffffe

[    1.198786] libphy: 4a101000.mdio: probed

[    1.202886] davinci_mdio 4a101000.mdio: phy[0]: device 4a101000.mdio:00,
driver SMSC LAN8710/LAN8720

[    1.212890] cpsw 4a100000.ethernet: Detected MACID = a0:f6:fd:4c:a6:ba

[    1.220531] cpsw 4a100000.ethernet: cpsw: Detected MACID =
c4:ed:ba:88:2a:92

[    1.229382] mousedev: PS/2 mouse device common for all mice

[    1.235845] i2c /dev entries driver

[    1.240508] cpuidle: enable-method property 'ti,am3352' found operations

[    1.248197] omap_hsmmc 48060000.mmc: Got CD GPIO

[    1.275713] pinctrl-single 44e10800.pinmux: bad data for mux
pinmux_mmc2_pins

[    1.282895] pinctrl-single 44e10800.pinmux: no pins entries for
pinmux_mmc2_pins

[    1.317159] ledtrig-cpu: registered to indicate activity on CPUs

[    1.326069] NET: Registered protocol family 10

[    1.332092] sit: IPv6 over IPv4 tunneling driver

[    1.337715] NET: Registered protocol family 17

[    1.342510] Key type dns_resolver registered

[    1.347095] omap_voltage_late_init: Voltage driver support not added

[    1.407145] tps65910-rtc tps65910-rtc: rtc core: registered tps65910-rtc
as rtc0

[    1.415278] omap_i2c 44e0b000.i2c: bus 0 rev0.11 at 400 kHz

[    1.421665] omap_hsmmc 48060000.mmc: Got CD GPIO

[    1.426813] vmmc: supplied by vbat

[    1.466341] pinctrl-single 44e10800.pinmux: bad data for mux
pinmux_mmc2_pins

[    1.474737] pinctrl-single 44e10800.pinmux: no pins entries for
pinmux_mmc2_pins

[    1.513247] mmc0: host does not support reading read-only switch,
assuming write-enable

[    1.523414] mmc0: new high speed SDHC card at address 0001

[    1.529635] mmcblk0: mmc0:0001 AS 3.72 GiB

[    1.535996]  mmcblk0: p1 p2 p3

[    1.595932] vdd_mpu: supplied by vbat

[    1.602167] input: gpio_buttons@0 as
/devices/platform/gpio_buttons@0/input/input0

[    1.618291] tps65910-rtc tps65910-rtc: setting system clock to 2019-02-01
20:07:49 UTC (1549051669)

[    1.639394] lis3_reg: disabling

[    1.655732] ALSA device list:

[    1.658720]   No soundcards found.

[    1.678290] EXT4-fs (mmcblk0p3): couldn't mount as ext3 due to feature
incompatibilities

[    1.696920] EXT4-fs (mmcblk0p3): couldn't mount as ext2 due to feature
incompatibilities

[    2.183999] EXT4-fs (mmcblk0p3): recovery complete

[    2.196864] EXT4-fs (mmcblk0p3): mounted filesystem with ordered data
mode. Opts: (null)

[    2.205084] VFS: Mounted root (ext4 filesystem) on device 179:3.

[    2.225670] devtmpfs: mounted

[    2.235781] Freeing unused kernel memory: 260K (c08b1000 - c08f2000)

[    2.242162] This architecture does not have kernel memory protection.

INIT: version 2.88 booting

Starting udev

[    3.090091] udevd[78]: starting version 3.2.5

[    3.106175] random: udevd: uninitialized urandom read (16 bytes read, 26
bits of entropy available)

[    3.118667] random: udevd: uninitialized urandom read (16 bytes read, 26
bits of entropy available)

[    3.128014] random: udevd: uninitialized urandom read (16 bytes read, 26
bits of entropy available)

[    3.137335] random: udevd: uninitialized urandom read (16 bytes read, 26
bits of entropy available)

[    3.218433] udevd[79]: starting eudev-3.2.5

[    3.325886] random: udevd: uninitialized urandom read (16 bytes read, 29
bits of entropy available)

[    3.346155] random: udevd: uninitialized urandom read (16 bytes read, 29
bits of entropy available)

[    4.820708] EXT4-fs (mmcblk0p3): re-mounted. Opts: data=ordered

[    5.548283] random: dd: uninitialized urandom read (512 bytes read, 43
bits of entropy available)

INIT: Entering runlevel: 5

Configuring network interfaces... [    5.820546] net eth0: initializing cpsw
version 1.12 (0)

[    5.825987] net eth0: initialized cpsw ale version 1.4

[    5.831150] net eth0: ALE Table size 1024

[    5.838581] net eth0: phy found : id is : 0x7c0f1

[    5.851838] IPv6: ADDRCONF(NETDEV_UP): eth0: link is not ready

[    9.896392] cpsw 4a100000.ethernet eth0: Link is Up - 100Mbps/Full - flow
control rx/tx

[    9.904635] IPv6: ADDRCONF(NETDEV_CHANGE): eth0: link becomes ready

chown: unrecognized option '--reference=/etc/resolv.conf'

BusyBox v1.27.2 (2018-11-05 21:16:09 UTC) multi-call binary.

 

Usage: chown [-Rh]... USER[:[GRP]] FILE...

chmod: unrecognized option '--reference=/etc/resolv.conf'

BusyBox v1.27.2 (2018-11-05 21:16:09 UTC) multi-call binary.

 

Usage: chmod [-R] MODE[,MODE]... FILE...

done.

Starting system message bus: [   14.887099] random: dbus-daemon:
uninitialized urandom read (12 bytes read, 62 bits of entropy available)

[   14.912318] random: dbus-daemon: uninitialized urandom read (12 bytes
read, 62 bits of entropy available)

dbus.

Starting OpenBSD Secure Shell server: sshd

[   15.393971] random: sshd: uninitialized urandom read (32 bytes read, 65
bits of entropy available)

done.

Starting Xserver

Starting DHCP server:

.

starting DNS forwarder and DHCP server: dnsmasq...

X.Org X Server 1.19.6

Release Date: 2017-12-20

X Protocol Version 11, Revision 0

Build Operating System: Linux 4.15.0-38-generic x86_64

Current Operating System: Linux polycaptil-machine-am335x-evmsk
4.4.19-ge581bb1cac #1 PREEMPT Thu May 24 11:42:17 CEST 2018 armv7l

Kernel command line: console=ttyO0,115200 root=/dev/mmcblk0p3 rw

Build Date: 05 November 2018  09:33:21PM

 

Current version of pixman: 0.34.0

        Before reporting problems, check http://wiki.x.org

        to make sure that you have the latest version.

Markers: (--) probed, (**) from config file, (==) default setting,

        (++) from command line, (!!) notice, (II) informational,

        (WW) warning, (EE) error, (NI) not implemented, (??) unknown.

(==) Log file: "/var/log/Xorg.0.log", Time: Fri Feb  1 20:08:02 2019

(==) Using config file: "/etc/X11/xorg.conf"

(==) Using system config directory "/usr/share/X11/xorg.conf.d"

done.

Starting HOSTAP Daemon: Configuration file: /etc/hostapd.conf

nl80211: 'nl80211' generic netlink not found

Failed to initialize driver 'nl80211'

wlan0: interface state UNINITIALIZED->DISABLED

wlan0: AP-DISABLED

hostapd_free_hapd_data: Interface wlan0 wasn't started

Starting ntpd: done

Starting syslogd/klogd: done

Starting crond: OK

 

Poky (Yocto Project Reference Distro) 2.5 polycaptil-machine-am335x-evmsk
/dev/ttyS0

 

polycaptil-machine-am335x-evmsk login: D-BUS per-session daemon address is:
unix:abstract=/tmp/dbus-07WuJSySeb,guid=a3e41f2692316c19766e95535c54a725

Size 1024x768 not found in available modes

Error: No calibratable devices found.

matchbox: Cant find a keycode for keysym 269025056

matchbox: ignoring key shortcut XF86Calendar=!$contacts

 

matchbox: Cant find a keycode for keysym 2809

matchbox: ignoring key shortcut telephone=!$dates

 

matchbox: Cant find a keycode for keysym 269025050

matchbox: ignoring key shortcut XF86Start=!matchbox-remote -desktop

 

dbus-daemon[358]: Activating service name='org.a11y.atspi.Registry'
requested by ':1.0' (uid=0 pid=354 comm="matchbox-terminal ")

dbus-daemon[358]: Successfully activated service 'org.a11y.atspi.Registry'

SpiRegistry daemon is running with well-known name - org.a11y.atspi.Registry

[   30.662697] random: nonblocking pool is initialized

 

Poky (Yocto Project Reference Distro) 2.5 polycaptil-machine-am335x-evmsk
/dev/ttyS0

 

Thank's to take time to read my message.

N.Stanisavljevic


------=_NextPart_000_0012_01D4BC82.143E13D0
Content-Type: text/html;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40"><head><meta =
http-equiv=3DContent-Type content=3D"text/html; =
charset=3Dus-ascii"><meta name=3DGenerator content=3D"Microsoft Word 15 =
(filtered medium)"><style><!--
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
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
p.msonormal0, li.msonormal0, div.msonormal0
	{mso-style-name:msonormal;
	mso-margin-top-alt:auto;
	margin-right:0cm;
	mso-margin-bottom-alt:auto;
	margin-left:0cm;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.EmailStyle18
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;}
span.EmailStyle19
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;}
span.EmailStyle20
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
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
</o:shapelayout></xml><![endif]--></head><body lang=3DFR =
link=3D"#0563C1" vlink=3D"#954F72"><div class=3DWordSection1><p =
class=3DMsoNormal>Hy Team,<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>I have a =
problem<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal><span lang=3DEN-US>I buid a custom os for AM335x =
processor and I used yocto to do it.<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>I build a first version of this os =
with version krogoth and it work fine.<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>Now I build a second version of =
this os with version sumo and the touchscreen work fine during boot =
process but when kernel is loaded, touchscreen freeze / lock and =
impossible to use it.<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>The terminal is printed on the touchscreen but the screen =
is locked, impossible to write a command or to move the mouse to select, =
&#8230;.<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>Here is the log of boot to the user session (log got with =
serial communication between PC and board) :<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>U-Boot SPL 2017.05-00001-g041a398 =
(May 02 2018 - 18:36:57)<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>Trying to boot from MMC1<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>reading =
uboot.env<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>reading u-boot.img<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>reading =
u-boot.img<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>reading u-boot.img<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>reading =
u-boot.img<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>U-Boot 2017.05-00001-g041a398 (May 02 2018 - 18:36:57 =
+0200)<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>CPU&nbsp; : AM335X-GP rev 2.1<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>Model: TI AM335x =
EVM-SK<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>DRAM:&nbsp; 256 MiB<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>NAND:&nbsp; 0 =
MiB<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>MMC:&nbsp;&nbsp; OMAP SD/MMC: 0, OMAP SD/MMC: =
1<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US>reading =
uboot.env<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>ERROR: No USB device found<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>at =
drivers/usb/gadget/ether.c:2709/usb_ether_init()<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>Net:&nbsp;&nbsp; CACHE: Misaligned =
operation at range [8df323c0, 8df32464]<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>Warning: ethernet@4a100000 using =
MAC address from ROM<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>eth0: ethernet@4a100000<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>Hit any key to stop autoboot:&nbsp; =
0<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US>reading =
zImage<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>3412752 bytes read in 251 ms (13 =
MiB/s)<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>reading dtb<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>39733 bytes read in 12 ms (3.2 =
MiB/s)<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US>## =
Flattened Device Tree blob at 82000000<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>&nbsp;&nbsp; Booting using the fdt =
blob at 0x82000000<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>&nbsp;&nbsp; Loading Device Tree to 8df19000, end 8df25b34 =
... OK<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>Starting kernel ...<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.000000] =
Booting Linux on physical CPU 0x0<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.000000] =
Initializing cgroup subsys cpu<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.000000] =
Initializing cgroup subsys cpuacct<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.000000] Linux =
version 4.4.19-ge581bb1cac (polycaptil@polycaptil-HP-Notebook) (gcc =
version 5.3.0 (GCC) ) #1 PREEMPT Thu May 24 11:42:17 CEST =
2018<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.000000] CPU: ARMv7 Processor =
[413fc082] revision 2 (ARMv7), cr=3D10c5387d<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.000000] CPU: =
PIPT / VIPT nonaliasing data cache, VIPT aliasing instruction =
cache<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.000000] Machine model: TI AM335x =
EVM-SK<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.000000] cma: Reserved 48 MiB at =
0x8a800000<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.000000] Memory policy: Data cache =
writeback<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.000000] CPU: All CPU(s) started in =
SVC mode.<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.000000] AM335X ES2.1 (sgx neon =
)<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.000000] Built 1 zonelists in Zone =
order, mobility grouping on.&nbsp; Total pages: =
64960<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.000000] Kernel command line: =
console=3DttyO0,115200 root=3D/dev/mmcblk0p3 rw<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.000000] PID =
hash table entries: 1024 (order: 0, 4096 bytes)<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.000000] =
Dentry cache hash table entries: 32768 (order: 5, 131072 =
bytes)<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.000000] Inode-cache hash table =
entries: 16384 (order: 4, 65536 bytes)<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.000000] =
Memory: 200444K/262144K available (6495K kernel code, 313K rwdata, 2368K =
rodata, 260K init, 265K bss, 12548K reserved, 49152K cma-reserved, 0K =
highmem)<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.000000] Virtual kernel memory =
layout:<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.000000]&nbsp;&nbsp;&nbsp;&nbsp; =
vector&nbsp; : 0xffff0000 - 0xffff1000&nbsp;&nbsp; (&nbsp;&nbsp; 4 =
kB)<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.000000]&nbsp;&nbsp;&nbsp;&nbsp; =
fixmap&nbsp; : 0xffc00000 - 0xfff00000&nbsp;&nbsp; (3072 =
kB)<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.000000]&nbsp;&nbsp;&nbsp;&nbsp; =
vmalloc : 0xd0800000 - 0xff800000&nbsp;&nbsp; ( 752 =
MB)<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.000000]&nbsp;&nbsp;&nbsp;&nbsp; =
lowmem&nbsp; : 0xc0000000 - 0xd0000000&nbsp;&nbsp; ( 256 =
MB)<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.000000]&nbsp;&nbsp;&nbsp;&nbsp; =
pkmap&nbsp;&nbsp; : 0xbfe00000 - 0xc0000000&nbsp;&nbsp; (&nbsp;&nbsp; 2 =
MB)<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.000000]&nbsp;&nbsp;&nbsp;&nbsp; =
modules : 0xbf000000 - 0xbfe00000&nbsp;&nbsp; (&nbsp; 14 =
MB)<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; =
0.000000]&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; .text : 0xc0008000 - =
0xc08b0034&nbsp;&nbsp; (8865 kB)<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>[&nbsp;&nbsp;&nbsp; =
0.000000]&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; .init : 0xc08b1000 - =
0xc08f2000&nbsp;&nbsp; ( 260 kB)<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>[&nbsp;&nbsp;&nbsp; =
0.000000]&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; .data : 0xc08f2000 - =
0xc09407f0&nbsp;&nbsp; ( 314 kB)<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>[&nbsp;&nbsp;&nbsp; =
0.000000]&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; .bss : 0xc09407f0 - =
0xc0982d58&nbsp;&nbsp; ( 266 kB)<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.000000] SLUB: =
HWalign=3D64, Order=3D0-3, MinObjects=3D0, CPUs=3D1, =
Nodes=3D1<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.000000] Preemptible hierarchical RCU =
implementation.<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.000000]&nbsp; Build-time adjustment =
of leaf fanout to 32.<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.000000] NR_IRQS:16 nr_irqs:16 =
16<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.000000] IRQ: Found an INTC at =
0xfa200000 (revision 5.0) with 128 interrupts<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.000000] OMAP =
clockevent source: timer2 at 24000000 Hz<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.000015] =
sched_clock: 32 bits at 24MHz, resolution 41ns, wraps every =
89478484971ns<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.000036] clocksource: timer1: mask: =
0xffffffff max_cycles: 0xffffffff, max_idle_ns: 79635851949 =
ns<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.000047] OMAP clocksource: timer1 at =
24000000 Hz<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.000222] clocksource_probe: no =
matching clocksources found<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.000415] =
Console: colour dummy device 80x30<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.000442] =
WARNING: Your 'console=3DttyO0' has been replaced by =
'ttyS0'<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.000448] This ensures that you still =
see kernel messages. Please<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.000454] =
update your kernel commandline.<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.000473] =
Calibrating delay loop... 795.44 BogoMIPS =
(lpj=3D3977216)<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.089064] pid_max: default: 32768 =
minimum: 301<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.089193] Mount-cache hash table =
entries: 1024 (order: 0, 4096 bytes)<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.089205] =
Mountpoint-cache hash table entries: 1024 (order: 0, 4096 =
bytes)<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.089932] Initializing cgroup subsys =
io<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.089964] Initializing cgroup subsys =
memory<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.090005] Initializing cgroup subsys =
devices<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.090021] Initializing cgroup subsys =
freezer<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.090036] Initializing cgroup subsys =
perf_event<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.090048] Initializing cgroup subsys =
pids<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.090078] CPU: Testing write buffer =
coherency: ok<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.090499] Setting up static identity =
map for 0x80008200 - 0x80008258<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.092680] =
devtmpfs: initialized<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.105440] VFP support v0.3: implementor =
41 architecture 3 part 30 variant c rev 3<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.120529] =
omap_hwmod: debugss: _wait_target_disable failed<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.175584] =
clocksource: jiffies: mask: 0xffffffff max_cycles: 0xffffffff, =
max_idle_ns: 19112604462750000 ns<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.179852] =
pinctrl core: initialized pinctrl subsystem<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.181216] NET: =
Registered protocol family 16<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.183420] DMA: =
preallocated 256 KiB pool for atomic coherent =
allocations<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.209061] cpuidle: using governor =
ladder<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.239048] cpuidle: using governor =
menu<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.243661] OMAP GPIO hardware version =
0.1<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.254360] hw-breakpoint: debug =
architecture 0x4 unsupported.<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.297629] edma =
49000000.edma: TI EDMA DMA engine driver<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.298606] =
reg-fixed-voltage fixedregulator@2: could not find pctldev for node =
/ocp/l4_wkup@44c00000/scm@210000/pinmux@800/pinmux_wl12xx_gpio, =
deferring probe<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.302364] omap_i2c 44e0b000.i2c: could =
not find pctldev for node =
/ocp/l4_wkup@44c00000/scm@210000/pinmux@800/pinmux_i2c0_pins, deferring =
probe<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.302525] media: Linux media interface: =
v0.10<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.302588] Linux video capture =
interface: v2.00<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.302638] pps_core: LinuxPPS API ver. 1 =
registered<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.302646] pps_core: Software ver. 5.3.6 =
- Copyright 2005-2007 Rodolfo Giometti =
&lt;giometti@linux.it&gt;<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.302676] PTP =
clock support registered<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.302741] EDAC MC: Ver: =
3.0.0<o:p></o:p></span></p><p class=3DMsoNormal>[&nbsp;&nbsp;&nbsp; =
0.303966] omap-mailbox 480c8000.mailbox: omap mailbox rev =
0x400<o:p></o:p></p><p class=3DMsoNormal><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.304332] Advanced Linux Sound =
Architecture Driver Initialized.<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.305512] =
clocksource: Switched to clocksource timer1<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.316775] NET: =
Registered protocol family 2<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.317599] TCP =
established hash table entries: 2048 (order: 1, 8192 =
bytes)<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.317636] TCP bind hash table entries: =
2048 (order: 1, 8192 bytes)<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.317663] TCP: =
Hash tables configured (established 2048 bind =
2048)<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.317748] UDP hash table entries: 256 =
(order: 0, 4096 bytes)<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.317767] UDP-Lite hash table entries: =
256 (order: 0, 4096 bytes)<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.317925] NET: =
Registered protocol family 1<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.318352] RPC: =
Registered named UNIX socket transport module.<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.318366] RPC: =
Registered udp transport module.<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.318372] RPC: =
Registered tcp transport module.<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.318379] RPC: =
Registered tcp NFSv4.1 backchannel transport =
module.<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.319330] hw perfevents: enabled with =
armv7_cortex_a8 PMU driver, 5 counters available<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.321392] futex =
hash table entries: 256 (order: -1, 3072 bytes)<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.329780] =
squashfs: version 4.0 (2009/01/31) Phillip =
Lougher<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.330717] NFS: Registering the =
id_resolver key type<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.330798] Key type id_resolver =
registered<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.330807] Key type id_legacy =
registered<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.330886] ntfs: driver 2.1.32 [Flags: =
R/O].<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.334673] Block layer SCSI generic =
(bsg) driver version 0.4 loaded (major 248)<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.334706] io =
scheduler noop registered<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.334719] io =
scheduler deadline registered<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.334877] io =
scheduler cfq registered (default)<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.336555] =
pinctrl-single 44e10800.pinmux: 142 pins at pa f9e10800 size =
568<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.339415] backlight supply power not =
found, using dummy regulator<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.402480] =
Serial: 8250/16550 driver, 10 ports, IRQ sharing =
disabled<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 0.406962] 44e09000.serial: ttyS0 at =
MMIO 0x44e09000 (irq =3D 158, base_baud =3D 3000000) is a =
8250<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 1.017357] console [ttyS0] =
enabled<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 1.022206] 48022000.serial: ttyS1 at =
MMIO 0x48022000 (irq =3D 159, base_baud =3D 3000000) is a =
8250<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 1.032273] [drm] Initialized drm 1.1.0 =
20060810<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 1.039564] [drm] Supports vblank =
timestamp caching Rev 2 (21.10.2013).<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 1.046349] [drm] =
No driver support for vblank timestamp query.<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 1.062121] =
Console: switching to colour frame buffer device =
60x34<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 1.070360] tilcdc 4830e000.lcdc: =
fb0:&nbsp; frame buffer device<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 1.105531] [drm] =
Initialized tilcdc 1.0.0 20121205 on minor 0<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 1.118644] loop: =
module loaded<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 1.124253] libphy: Fixed MDIO Bus: =
probed<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 1.185550] davinci_mdio 4a101000.mdio: =
davinci mdio revision 1.6<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 1.191695] =
davinci_mdio 4a101000.mdio: detected phy mask =
fffffffe<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 1.198786] libphy: 4a101000.mdio: =
probed<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 1.202886] davinci_mdio 4a101000.mdio: =
phy[0]: device 4a101000.mdio:00, driver SMSC =
LAN8710/LAN8720<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 1.212890] cpsw 4a100000.ethernet: =
Detected MACID =3D a0:f6:fd:4c:a6:ba<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 1.220531] cpsw =
4a100000.ethernet: cpsw: Detected MACID =3D =
c4:ed:ba:88:2a:92<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 1.229382] mousedev: PS/2 mouse device =
common for all mice<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 1.235845] i2c /dev entries =
driver<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 1.240508] cpuidle: enable-method =
property 'ti,am3352' found operations<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 1.248197] =
omap_hsmmc 48060000.mmc: Got CD GPIO<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 1.275713] =
pinctrl-single 44e10800.pinmux: bad data for mux =
pinmux_mmc2_pins<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 1.282895] pinctrl-single =
44e10800.pinmux: no pins entries for =
pinmux_mmc2_pins<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 1.317159] ledtrig-cpu: registered to =
indicate activity on CPUs<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>[ &nbsp;&nbsp;&nbsp;1.326069] NET: =
Registered protocol family 10<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 1.332092] sit: =
IPv6 over IPv4 tunneling driver<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 1.337715] NET: =
Registered protocol family 17<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 1.342510] Key =
type dns_resolver registered<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 1.347095] =
omap_voltage_late_init: Voltage driver support not =
added<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 1.407145] tps65910-rtc tps65910-rtc: =
rtc core: registered tps65910-rtc as rtc0<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 1.415278] =
omap_i2c 44e0b000.i2c: bus 0 rev0.11 at 400 kHz<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 1.421665] =
omap_hsmmc 48060000.mmc: Got CD GPIO<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 1.426813] vmmc: =
supplied by vbat<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 1.466341] pinctrl-single =
44e10800.pinmux: bad data for mux =
pinmux_mmc2_pins<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 1.474737] pinctrl-single =
44e10800.pinmux: no pins entries for =
pinmux_mmc2_pins<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 1.513247] mmc0: host does not support =
reading read-only switch, assuming write-enable<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 1.523414] mmc0: =
new high speed SDHC card at address 0001<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 1.529635] =
mmcblk0: mmc0:0001 AS 3.72 GiB<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 1.535996]&nbsp; =
mmcblk0: p1 p2 p3<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 1.595932] vdd_mpu: supplied by =
vbat<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 1.602167] input: gpio_buttons@0 as =
/devices/platform/gpio_buttons@0/input/input0<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 1.618291] =
tps65910-rtc tps65910-rtc: setting system clock to 2019-02-01 20:07:49 =
UTC (1549051669)<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 1.639394] lis3_reg: =
disabling<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 1.655732] ALSA device =
list:<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 1.658720]&nbsp;&nbsp; No soundcards =
found.<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 1.678290] EXT4-fs (mmcblk0p3): couldn't =
mount as ext3 due to feature incompatibilities<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 1.696920] =
EXT4-fs (mmcblk0p3): couldn't mount as ext2 due to feature =
incompatibilities<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 2.183999] EXT4-fs (mmcblk0p3): recovery =
complete<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 2.196864] EXT4-fs (mmcblk0p3): mounted =
filesystem with ordered data mode. Opts: (null)<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 2.205084] VFS: =
Mounted root (ext4 filesystem) on device 179:3.<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 2.225670] =
devtmpfs: mounted<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 2.235781] Freeing unused kernel memory: =
260K (c08b1000 - c08f2000)<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 2.242162] This =
architecture does not have kernel memory =
protection.<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>INIT: version 2.88 booting<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>Starting =
udev<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 3.090091] udevd[78]: starting version =
3.2.5<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 3.106175] random: udevd: uninitialized =
urandom read (16 bytes read, 26 bits of entropy =
available)<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 3.118667] random: udevd: uninitialized =
urandom read (16 bytes read, 26 bits of entropy =
available)<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 3.128014] random: udevd: uninitialized =
urandom read (16 bytes read, 26 bits of entropy =
available)<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 3.137335] random: udevd: uninitialized =
urandom read (16 bytes read, 26 bits of entropy =
available)<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 3.218433] udevd[79]: starting =
eudev-3.2.5<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 3.325886] random: udevd: uninitialized =
urandom read (16 bytes read, 29 bits of entropy =
available)<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 3.346155] random: udevd: uninitialized =
urandom read (16 bytes read, 29 bits of entropy =
available)<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 4.820708] EXT4-fs (mmcblk0p3): =
re-mounted. Opts: data=3Dordered<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 5.548283] =
random: dd: uninitialized urandom read (512 bytes read, 43 bits of =
entropy available)<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>INIT: Entering runlevel: 5<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>Configuring network interfaces... =
[&nbsp;&nbsp;&nbsp; 5.820546] net eth0: initializing cpsw version 1.12 =
(0)<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 5.825987] net eth0: initialized cpsw =
ale version 1.4<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 5.831150] net eth0: ALE Table size =
1024<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 5.838581] net eth0: phy found : id is : =
0x7c0f1<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 5.851838] IPv6: ADDRCONF(NETDEV_UP): =
eth0: link is not ready<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 9.896392] cpsw 4a100000.ethernet eth0: =
Link is Up - 100Mbps/Full - flow control rx/tx<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>[&nbsp;&nbsp;&nbsp; 9.904635] IPv6: =
ADDRCONF(NETDEV_CHANGE): eth0: link becomes =
ready<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>chown: unrecognized option =
'--reference=3D/etc/resolv.conf'<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>BusyBox v1.27.2 (2018-11-05 =
21:16:09 UTC) multi-call binary.<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>Usage: chown [-Rh]... USER[:[GRP]] =
FILE...<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>chmod: unrecognized option =
'--reference=3D/etc/resolv.conf'<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>BusyBox v1.27.2 (2018-11-05 =
21:16:09 UTC) multi-call binary.<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal>Usage: chmod [-R] MODE[,MODE]... <span =
lang=3DEN-US>FILE...<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>done.<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>Starting system message bus: [&nbsp;&nbsp; 14.887099] =
random: dbus-daemon: uninitialized urandom read (12 bytes read, 62 bits =
of entropy available)<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>[&nbsp;&nbsp; 14.912318] random: dbus-daemon: uninitialized =
urandom read (12 bytes read, 62 bits of entropy =
available)<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>dbus.<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>Starting OpenBSD Secure Shell server: =
sshd<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>[&nbsp;&nbsp; 15.393971] random: sshd: uninitialized =
urandom read (32 bytes read, 65 bits of entropy =
available)<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>done.<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>Starting Xserver<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>Starting DHCP =
server:<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>.<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>starting DNS forwarder and DHCP server: =
dnsmasq...<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>X.Org X Server 1.19.6<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>Release Date: =
2017-12-20<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>X Protocol Version 11, Revision 0<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>Build Operating System: Linux =
4.15.0-38-generic x86_64<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>Current Operating System: Linux =
polycaptil-machine-am335x-evmsk 4.4.19-ge581bb1cac #1 PREEMPT Thu May 24 =
11:42:17 CEST 2018 armv7l<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>Kernel command line: =
console=3DttyO0,115200 root=3D/dev/mmcblk0p3 rw<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>Build Date: 05 November 2018&nbsp; =
09:33:21PM<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>Current version of pixman: 0.34.0<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
lang=3DEN-US>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Before reporting =
problems, check http://wiki.x.org<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
lang=3DEN-US>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; to make sure =
that you have the latest version.<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>Markers: (--) probed, (**) from =
config file, (=3D=3D) default setting,<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
lang=3DEN-US>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (++) from =
command line, (!!) notice, (II) informational,<o:p></o:p></span></p><p =
class=3DMsoNormal><span =
lang=3DEN-US>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (WW) warning, =
(EE) error, (NI) not implemented, (??) unknown.<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>(=3D=3D) Log file: =
&quot;/var/log/Xorg.0.log&quot;, Time: Fri Feb&nbsp; 1 20:08:02 =
2019<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>(=3D=3D) Using config file: =
&quot;/etc/X11/xorg.conf&quot;<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>(=3D=3D) Using system config =
directory &quot;/usr/share/X11/xorg.conf.d&quot;<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>done.<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>Starting HOSTAP Daemon: =
Configuration file: /etc/hostapd.conf<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>nl80211: 'nl80211' generic netlink =
not found<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>Failed to initialize driver =
'nl80211'<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>wlan0: interface state =
UNINITIALIZED-&gt;DISABLED<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>wlan0: =
AP-DISABLED<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>hostapd_free_hapd_data: Interface wlan0 wasn't =
started<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>Starting ntpd: done<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>Starting syslogd/klogd: =
done<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>Starting crond: OK<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>Poky (Yocto Project Reference =
Distro) 2.5 polycaptil-machine-am335x-evmsk =
/dev/ttyS0<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>polycaptil-machine-am335x-evmsk login: D-BUS per-session =
daemon address is: =
unix:abstract=3D/tmp/dbus-07WuJSySeb,guid=3Da3e41f2692316c19766e95535c54a=
725<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-US>Size =
1024x768 not found in available modes<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>Error: No calibratable devices =
found.<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>matchbox: Cant find a keycode for keysym =
269025056<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>matchbox: ignoring key shortcut =
XF86Calendar=3D!$contacts<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>matchbox: Cant find a keycode for =
keysym 2809<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>matchbox: ignoring key shortcut =
telephone=3D!$dates<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>matchbox: Cant find a keycode for keysym =
269025050<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>matchbox: ignoring key shortcut =
XF86Start=3D!matchbox-remote -desktop<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>dbus-daemon[358]: Activating =
service name=3D'org.a11y.atspi.Registry' requested by ':1.0' (uid=3D0 =
pid=3D354 comm=3D&quot;matchbox-terminal &quot;)<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>dbus-daemon[358]: Successfully =
activated service 'org.a11y.atspi.Registry'<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>SpiRegistry daemon is running with =
well-known name - org.a11y.atspi.Registry<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>[&nbsp;&nbsp; 30.662697] random: =
nonblocking pool is initialized<o:p></o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><span lang=3DEN-US>Poky (Yocto Project Reference =
Distro) 2.5 polycaptil-machine-am335x-evmsk =
/dev/ttyS0<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>Thank&#8217;s to take time to read my =
message.<o:p></o:p></span></p><p class=3DMsoNormal><span =
lang=3DEN-US>N.Stanisavljevic<o:p></o:p></span></p></div></body></html>

------=_NextPart_000_0012_01D4BC82.143E13D0--
