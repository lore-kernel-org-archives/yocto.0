Return-Path: <evadeflow@gmail.com>
Received: from mail-pz0-f48.google.com (mail-pz0-f48.google.com
	[209.85.210.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D590AE01446
	for <yocto@yoctoproject.org>; Fri, 31 Aug 2012 14:58:31 -0700 (PDT)
Received: by dadz8 with SMTP id z8so2723474dad.35
	for <yocto@yoctoproject.org>; Fri, 31 Aug 2012 14:58:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=pe9KWxDTteTYL92kZBooVgJiXw8rFCb6DRGIXNh7zWY=;
	b=tZnmKDP3xu1/cEmznZ/rx4mzKLIXBZkU9l6bpFf4ZXgV/SL5D5C62iZ4B+UfTpOhPA
	osPkCjyrz8id55wOUNUxqeVBpKL7ifbuQvgDC3qsrQhDqnBTWGigDJthEmiHrKkE+9Oi
	+MCvxicoxxpDaTWGnK6rhxGbaqKXYHZ9a5t9wZCktNywPFgYj+C7t6g0uV4kmHCNtJtn
	A/wHLMKK2dB9/2XMUFH6E3t3JaDSVJVRj8IyBeT/bo7LlboSw9GlCkW2p3VzxkwUN6Fb
	mJxmhQDLlnaKyKdGANRYhnT2QQTIx6R7DgSV0lpRWmc3F/4dJ8pZ0YRjQKQJFjr18AXa
	x3+g==
MIME-Version: 1.0
Received: by 10.68.224.161 with SMTP id rd1mr20200952pbc.133.1346450309356;
	Fri, 31 Aug 2012 14:58:29 -0700 (PDT)
Received: by 10.66.90.42 with HTTP; Fri, 31 Aug 2012 14:58:29 -0700 (PDT)
Date: Fri, 31 Aug 2012 17:58:29 -0400
Message-ID: <CAMAb8ZNUDQZ_03=VTMGMft1Xggv2=6oELd3X-AnLmkxPr4-b=w@mail.gmail.com>
From: Evade Flow <evadeflow@gmail.com>
To: yocto@yoctoproject.org
Subject: Tune qemuarm settings and build everything except the kernel?
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
X-List-Received-Date: Fri, 31 Aug 2012 21:58:31 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hello, all! I've recently been tapped to bootstrap an embedded Linux
project at work and create some demos on hardware left over from an
earlier effort.  I normally work higher up the application stack,
compiling programs using a cross toolchain and sysroot created by some
unlucky coworker. In the past, I've just been given a VM and some code
to hack on, and instructions for cross-compiling it and getting it on
the target. Now I'm being asked to create that ecosystem for a small
team.

It hasn't yet been determined what the final hardware will be, so I
somehow need to create a framework to allow developers to start working
with these older systems, and 'port' it when the new hardware becomes
available. It seems the Yocto Project exists to solve exactly this sort
of problem, but... I don't quite know where to start.

On the plus side, the root filesystem for the old development kits
resides by default on an attached USB stick. I'm hoping I don't need to
mess with the old board's kernel at this early stage, as it already has
hardware-accelerated drivers and such that I'd rather not tangle with
unless/until necessary.

With that preamble, my question is: can I use Yocto/Poky to build a
cross-compiler, sysroot and root filesystem for an existing system
without also building the kernel? What do I need to type to make it
build everything *except* for the kernel?

I *did* manage to download poky-denzil-7.0.1 and run 'bitbake
core-image-minimal' after sourcing oe-init-build-env and setting MACHINE
to 'qemuarm' in conf/local.conf.  After that, I copied everything in
tmp/work/qemuarm-poky-linux-gnueabi/core-image-minimal-1.0-r0/rootfs to
a USB stick and... it actually worked! It made me want to hug
Yocto/Poky. I'm all in!!

Now I'm wondering: is there any easy way to optimize for the actual
target(s) a bit more than the qemuarm MACHINE type does?  The example
Makefiles for the old project all contain this line:

   CFLAGS = -g -mcpu=arm1136jf-s -O2 -pipe

What's the best way to arrange for that '-mcpu' option to be used by all
recipes? Also, are there other optimizations I should consider?  I'm
appending some details about the board in question, as well as the
complete output from booting it to a prompt. I'd be ever so grateful if
someone could recommend sensible base settings for this system, and
explain how to create a Poky 'layer', or 'machine'---or whatever the
right nomenclature is---to apply these settings.

Sorry for the long post, and thanks in advance for any advice!


----------

~ # uname -a
Linux localhost 2.6.36.2-WR3.0.2ax_standard #1 SMP PREEMPT Wed Oct 19 21:58:54
EEST 2011 armv7l armv7l armv7l GNU/Linux ODBP D1.0.1 (10.11.2011)

~ # cat /proc/cpuinfo
Processor       : ARMv7 Processor rev 0 (v7l)
processor       : 0
BogoMIPS        : 1795.68

Features        : swp half thumb fastmult vfp edsp vfpv3 vfpv3d16
CPU implementer : 0x41
CPU architecture: 7
CPU variant     : 0x1
CPU part        : 0xc09
CPU revision    : 0

Hardware        : Tegra P852 SKU13
Revision        : 0000
...

----------


[    0.000000] Initializing cgroup subsys cpu
[    0.000000] Linux version 2.6.36.2-WR3.0.2ax_standard
(mmes@odbp-pines-build) (gcc version 4.4.1 (Sourcery G++ Lite
2009q3-67) ) #1 SMP PREEMPT Wed Oct 19 21:58:54 EEST 2011
[    0.000000] CPU: ARMv7 Processor [411fc090] revision 0 (ARMv7), cr=10c53c7f
[    0.000000] CPU: VIPT nonaliasing data cache, VIPT nonaliasing
instruction cache
[    0.000000] Machine: Tegra P852 SKU13
[    0.000000] Memory policy: ECC disabled, Data cache writealloc
[    0.000000] PERCPU: Embedded 7 pages/cpu @80f6b000 s5600 r8192 d14880 u65536
[    0.000000] pcpu-alloc: s5600 r8192 d14880 u65536 alloc=16*4096
[    0.000000] pcpu-alloc: [0] 0
[    0.000000] Built 1 zonelists in Zone order, mobility grouping on.
Total pages: 227328
[    0.000000] Kernel command line: mem=384M@0M nvmem=128M@384M
mem=512M@512M vmalloc=384M video=tegrafb usbcore.old_scheme_first=1
smsc95xx.nv_bl_macid=:00:00:00:00:00:00 envsector=2c40
nvsku=000-00000-0000-000 SkuVer=0 ProdInfo=000-00000-0000-000
ProdVer=0 root=/dev/sda1 rw rootwait usbcore.old_scheme_first=1
mtdparts=tegra_nand:1024K@26752K(env),496000K@27776K(userspace)
init=/bin/sh default.target=multi-user.target console=ttyS0,57600
[    0.000000]
[    0.000000] PID hash table entries: 4096 (order: 2, 16384 bytes)
[    0.000000] Dentry cache hash table entries: 131072 (order: 7, 524288 bytes)
[    0.000000] Inode-cache hash table entries: 65536 (order: 6, 262144 bytes)
[    0.000000] allocated 5242880 bytes of page_cgroup
[    0.000000] please try 'cgroup_disable=memory' option if you don't
want memory cgroups
[    0.000000] Memory: 384MB 512MB = 896MB total
[    0.000000] Memory: 896796k/896796k available, 20708k reserved, 0K highmem
[    0.000000] Virtual kernel memory layout:
[    0.000000]     vector  : 0xffff0000 - 0xffff1000   (   4 kB)
[    0.000000]     fixmap  : 0xfff00000 - 0xfffe0000   ( 896 kB)
[    0.000000]     DMA     : 0xff000000 - 0xffe00000   (  14 MB)
[    0.000000]     vmalloc : 0xc0800000 - 0xf8000000   ( 888 MB)
[    0.000000]     lowmem  : 0x80000000 - 0xc0000000   (1024 MB)
[    0.000000]     pkmap   : 0x7fe00000 - 0x80000000   (   2 MB)
[    0.000000]     modules : 0x7f000000 - 0x7fe00000   (  14 MB)
[    0.000000]       .init : 0x80008000 - 0x80035000   ( 180 kB)
[    0.000000]       .text : 0x80035000 - 0x80696000   (6532 kB)
[    0.000000]       .data : 0x806c2000 - 0x80709280   ( 285 kB)
[    0.000000] Hierarchical RCU implementation.
[    0.000000]  RCU-based detection of stalled CPUs is disabled.
[    0.000000]  Verbose stalled-CPUs detection is disabled.
[    0.000000] NR_IRQS:448
[    0.000000] Console: colour dummy device 80x30
[    0.791234] Calibrating delay loop... 1795.68 BogoMIPS (lpj=8978432)
[    1.061087] pid_max: default: 32768 minimum: 301
[    1.061301] Mount-cache hash table entries: 512
[    1.061736] Initializing cgroup subsys debug
[    1.061751] Initializing cgroup subsys cpuacct
[    1.061770] Initializing cgroup subsys memory
[    1.061797] Initializing cgroup subsys devices
[    1.061805] Initializing cgroup subsys freezer
[    1.061813] Initializing cgroup subsys net_cls
[    1.061821] Initializing cgroup subsys blkio
[    1.061875] CPU: Testing write buffer coherency: ok
[    1.062080] Calibrating local timer... 224.85MHz, setting to 2.50MHz.
[    1.141428] Brought up 1 CPUs
[    1.141441] SMP: Total of 1 processors activated (1795.68 BogoMIPS).
[    1.141742] devtmpfs: initialized
[    1.144823] regulator: core version 0.5
[    1.144957] regulator: dummy:
[    1.145133] NET: Registered protocol family 16
[    1.145787] host1x bus init
[    1.146115] Tegra Chip SKU: 8 Rev: A02 CPU Process: 2 Core Process:
1 Speedo ID: 0
[    1.147944] Unable to set parent pll_m of clock csus: -22
[    1.149185] Suspend mode LP0 requested, but missing lp0_vec
[    1.149193] Disabling LP0
[    1.149821] p852_panel_init
[    1.150718] tegra_iovmm_register: added iovmm-gart
[    1.156270] bio: create slab <bio-0> at 0
[    1.156899] SCSI subsystem initialized
[    1.158034] usbcore: registered new interface driver usbfs
[    1.158079] usbcore: registered new interface driver hub
[    1.158176] usbcore: registered new device driver usb
[    1.159137] tps6586x 3-0034: VERSIONCRC is 15
[    1.163049] regulator: REG-SM_0: 725 <--> 1500 mV at 1250 mV normal standby
[    1.164507] regulator: REG-SM_1: 725 <--> 1500 mV at 1050 mV normal standby
[    1.166726] regulator: REG-SM_2: 3000 <--> 4550 mV at 3600 mV normal standby
[    1.168190] regulator: REG-LDO_0: 1250 <--> 3300 mV at 3300 mV normal standby
[    1.170420] regulator: REG-LDO_1: 725 <--> 1500 mV at 1100 mV normal standby
[    1.171886] regulator: REG-LDO_2: 725 <--> 1225 mV at 1200 mV normal standby
[    1.174126] regulator: REG-LDO_3: 1250 <--> 3300 mV at 3300 mV normal standby
[    1.176358] regulator: REG-LDO_4: 1700 <--> 2475 mV at 1800 mV normal standby
[    1.176941] regulator: REG-LDO_5: 1250 <--> 3300 mV at 3300 mV normal standby
[    1.178409] regulator: REG-LDO_6: 1250 <--> 3300 mV at 2850 mV normal standby
[    1.179877] regulator: REG-LDO_7: 1250 <--> 3300 mV at 3300 mV normal standby
[    1.181346] regulator: REG-LDO_8: 1250 <--> 3300 mV at 3300 mV normal standby
[    1.181946] regulator: REG-LDO_9: 1250 <--> 3300 mV at 2850 mV normal standby
[    1.182371] Advanced Linux Sound Architecture Driver Version 1.0.23.
[    1.182681] Bluetooth: Core ver 2.15
[    1.182729] NET: Registered protocol family 31
[    1.182737] Bluetooth: HCI device and connection manager initialized
[    1.182748] Bluetooth: HCI socket layer initialized
[    1.182896] cfg80211: Calling CRDA to update world regulatory domain
[    1.183606] Switching to clocksource timer_us
[    1.183958] tegra-nvmap tegra-nvmap: created carveout iram (256KiB)
[    1.184017] tegra-nvmap tegra-nvmap: created carveout generic-0 (118784KiB)
[    1.189077] NET: Registered protocol family 2
[    1.189179] IP route cache hash table entries: 32768 (order: 5, 131072 bytes)
[    1.189540] TCP established hash table entries: 131072 (order: 8,
1048576 bytes)
[    1.191839] TCP bind hash table entries: 65536 (order: 7, 786432 bytes)
[    1.193015] TCP: Hash tables configured (established 131072 bind 65536)
[    1.193025] TCP reno registered
[    1.193036] UDP hash table entries: 512 (order: 2, 16384 bytes)
[    1.193068] UDP-Lite hash table entries: 512 (order: 2, 16384 bytes)
[    1.193232] NET: Registered protocol family 1
[    1.193479] RPC: Registered udp transport module.
[    1.193488] RPC: Registered tcp transport module.
[    1.193496] RPC: Registered tcp NFSv4.1 backchannel transport module.
[    1.193698] PMU: registered new PMU device of type 0
[    1.194321] nvrm_init called
[    1.194434] nvrm probe
[    1.194516] Disabling legacy nvrpc driver
[    1.195323] audit: initializing netlink socket (disabled)
[    1.195348] type=2000 audit(1.181:1): initialized
[    1.225722] ashmem: initialized
[    1.225950] VFS: Disk quotas dquot_6.5.2
[    1.226014] Dquot-cache hash table entries: 1024 (order 0, 4096 bytes)
[    1.227078] fuse init (API version 7.15)
[    1.227452] Btrfs loaded
[    1.227493] msgmni has been set to 1751
[    1.228480] io scheduler noop registered
[    1.228540] io scheduler cfq registered (default)
[    1.249522] tegra_grhost tegra_grhost: initialized
[    1.249571] host1x: tegradc tegradc
[    1.249639] p852_panel_enable
[    1.249684] tegradc tegradc.0: probed
[    1.250057] tegradc tegradc.0: probed
[    1.250387] Serial: 8250/16550 driver, 2 ports, IRQ sharing disabled
[    1.250775] serial8250.0: ttyS0 at MMIO 0x70006000 (irq = 68) is a XScale
[    2.594427] console [ttyS0] enabled
[    2.601571] serial8250.1: ttyS1 at MMIO 0x70006200 (irq = 78) is a XScale
[    2.615299] tegra_uart.1: ttyHS1 at MMIO 0x70006040 (irq = 69) is a 16550
[    2.628932] Registered UART port ttyHS1
[    2.636622] Initialized tegra uart driver
[    2.646357] loop: module loaded
[    2.652613] AK8975 compass driver: init
[    2.660896] tegra_nand: 1 NAND chip(s) found (vend=0x2c, dev=0xdc)
(Micron NAND 512MiB 3,3V 8-bit)
[    2.678793] tegra_nand: NVIDIA Tegra NAND controller @
base=0x70008000 irq=56.
[    2.954692] 2 cmdlinepart partitions found on MTD device tegra_nand
[    2.967269] Creating 2 MTD partitions on "tegra_nand":
[    2.977526] 0x000001a20000-0x000001b20000 : "env"
[    2.987412] 0x000001b20000-0x00001ff80000 : "userspace"
[    2.999450] tun: Universal TUN/TAP device driver, 1.6
[    3.009548] tun: (C) 1999-2004 Max Krasnyansky <maxk@qualcomm.com>
[    3.022062] usbcore: registered new interface driver asix
[    3.032869] usbcore: registered new interface driver cdc_ether
[    3.044554] usbcore: registered new interface driver smsc95xx
[    3.056054] usbcore: registered new interface driver cdc_subset
[    3.067913] usbcore: registered new interface driver rt2800usb
[    3.079558] ehci_hcd: USB 2.0 'Enhanced' Host Controller (EHCI) Driver
[    3.133766] tegra-ehci tegra-ehci.1: Tegra EHCI Host Controller
[    3.145596] tegra-ehci tegra-ehci.1: new USB bus registered,
assigned bus number 1
[    3.183662] tegra-ehci tegra-ehci.1: irq 53, io mem 0xc5004000
[    3.213650] tegra-ehci tegra-ehci.1: USB 2.0 started, EHCI 1.00
[    3.225516] usb usb1: New USB device found, idVendor=1d6b, idProduct=0002
[    3.239066] usb usb1: New USB device strings: Mfr=3, Product=2,
SerialNumber=1
[    3.253480] usb usb1: Product: Tegra EHCI Host Controller
[    3.264251] usb usb1: Manufacturer: Linux
2.6.36.2-WR3.0.2ax_standard ehci_hcd
[    3.278662] usb usb1: SerialNumber: tegra-ehci.1
[    3.288145] hub 1-0:1.0: USB hub found
[    3.295638] hub 1-0:1.0: 1 port detected
[    3.306122] tegra-ehci tegra-ehci.0: Tegra EHCI Host Controller
[    3.317948] tegra-ehci tegra-ehci.0: new USB bus registered,
assigned bus number 2
[    3.363660] tegra-ehci tegra-ehci.0: irq 52, io mem 0xc5000000
[    3.393675] tegra-ehci tegra-ehci.0: USB 2.0 started, EHCI 1.00
[    3.405530] usb usb2: New USB device found, idVendor=1d6b, idProduct=0002
[    3.419079] usb usb2: New USB device strings: Mfr=3, Product=2,
SerialNumber=1
[    3.433490] usb usb2: Product: Tegra EHCI Host Controller
[    3.444261] usb usb2: Manufacturer: Linux
2.6.36.2-WR3.0.2ax_standard ehci_hcd
[    3.458671] usb usb2: SerialNumber: tegra-ehci.0
[    3.468148] hub 2-0:1.0: USB hub found
[    3.475639] hub 2-0:1.0: 1 port detected
[    3.486193] tegra-ehci tegra-ehci.2: Tegra EHCI Host Controller
[    3.498069] tegra-ehci tegra-ehci.2: new USB bus registered,
assigned bus number 3
[    3.543660] tegra-ehci tegra-ehci.2: irq 129, io mem 0xc5008000
[    3.613663] usb 1-1: new high speed USB device using tegra-ehci and address 2
[    3.643647] tegra-ehci tegra-ehci.2: USB 2.0 started, EHCI 1.00
[    3.655515] usb usb3: New USB device found, idVendor=1d6b, idProduct=0002
[    3.669096] usb usb3: New USB device strings: Mfr=3, Product=2,
SerialNumber=1
[    3.683554] usb usb3: Product: Tegra EHCI Host Controller
[    3.694359] usb usb3: Manufacturer: Linux
2.6.36.2-WR3.0.2ax_standard ehci_hcd
[    3.708807] usb usb3: SerialNumber: tegra-ehci.2
[    3.718119] usb 1-1: New USB device found, idVendor=1a40, idProduct=0201
[    3.731714] hub 3-0:1.0: USB hub found
[    3.739217] hub 3-0:1.0: 1 port detected
[    3.747048] usb 1-1: New USB device strings: Mfr=0, Product=1, SerialNumber=0
[    3.761458] usbcore: registered new interface driver cdc_wdm
[    3.772761] usb 1-1: Product: USB 2.0 Hub [MTT]
[    3.781800] Initializing USB Mass Storage driver...
[    3.791804] usbcore: registered new interface driver usb-storage
[    3.803902] hub 1-1:1.0: USB hub found
[    3.811391] USB Mass Storage support registered.
[    3.820626] hub 1-1:1.0: 7 ports detected
[    3.828713] usbcore: registered new interface driver libusual
[    3.840322] usbcore: registered new interface driver usbtouchscreen
[    3.853554] using rtc device, tps6586x-rtc, for alarms
[    3.863529] tps6586x-rtc tps6586x-rtc.0: rtc core: registered
tps6586x-rtc as rtc0
[    3.881844] i2c /dev entries driver
[    3.889219] lirc_dev: IR Remote Control driver registered, major 251
[    3.902080] IR LIRC bridge handler initialized
[    3.910949] Linux video capture interface: v2.00
[    3.920376] usbcore: registered new interface driver uvcvideo
[    3.931844] USB Video Class driver (v0.1.0)
[    3.940321] trpc_sema_init: registered misc dev 10:53
[    3.950472] trpc_node_register: Adding 'local' to node list
[    3.963169] trpc_node_register: Adding 'avp-remote' to node list
[    3.975307] tegra_avp_probe: driver registered, kernel
1ff00000(c0c00000), msg area 3f910000/3f910110
[    3.993759] usb 2-1: new high speed USB device using tegra-ehci and address 2
[    4.008245] tegra_itu656: probe
[    4.014944] Software Watchdog Timer: 0.07 initialized.
soft_noboot=0 soft_margin=60 sec (nowayout= 0)
[    4.033517] device-mapper: uevent: version 1.0.3
[    4.042960] device-mapper: ioctl: 4.18.0-ioctl (2010-06-29)
initialised: dm-devel@redhat.com
[    4.059867] Bluetooth: HCI UART driver ver 2.2
[    4.068768] Bluetooth: HCI H4 protocol initialized
[    4.078358] Bluetooth: HCI BCSP protocol initialized
[    4.088294] Bluetooth: HCI three wire protocol initialized
[    4.099273] Bluetooth: HCILL protocol initialized
[    4.108748] sdhci: Secure Digital Host Controller Interface driver
[    4.121137] sdhci: Copyright(c) Pierre Ossman
[    4.129924] mmc0: Invalid maximum block size, assuming 512 bytes
[    4.141939] usb 2-1: New USB device found, idVendor=0930, idProduct=6545
[    4.155365] usb 2-1: New USB device strings: Mfr=1, Product=2, SerialNumber=3
[    4.169624] usb 2-1: Product: DataTraveler G3
[    4.178396] mmc0: SDHCI controller on tegra [sdhci-tegra.0] using ADMA
[    4.191468] usb 2-1: Manufacturer: Kingston
[    4.199860] usb 2-1: SerialNumber: 001CC0C60DBDEC3123290061
[    4.210986] sdhci0: initialized irq 46 ioaddr c081c000
[    4.222465] mmc1: Invalid maximum block size, assuming 512 bytes
[    4.234679] sdhci-tegra.1 supply vmmc not found, using dummy regulator
[    4.247814] scsi0 : usb-storage 2-1:1.0
[    4.258959] mmc1: SDHCI controller on tegra [sdhci-tegra.1] using ADMA
[    4.272188] sdhci1: initialized irq 47 ioaddr c0826200
[    4.282769] usbcore: registered new interface driver hiddev
[    4.294002] usbcore: registered new interface driver usbhid
[    4.305167] usbhid: USB HID core driver
[    4.313029] tegra_i2s_driver_probe
[    4.319869] tegra_i2s_driver_probe
[    4.326935] No device for DAI tegra-dummy-codec-i2s
[    4.336969] asoc: tegra-dummy-codec-i2s <-> tegra-i2s-1 mapping ok
[    4.349572] asoc: tegra-dummy-codec-i2s <-> tegra-i2s-2 mapping ok
[    4.362409] No device for DAI tegra-dummy-codec-tdm1
[    4.372344] No device for DAI tegra-dummy-codec-tdm2
[    4.382331] usb 1-1.4: new high speed USB device using tegra-ehci
and address 3
[    4.398067] No device for DAI tegra-codec-spi-i2s
[    4.407461] No device for DAI tegra-spi-i2s
[    4.416099] asoc: tegra-codec-spi-i2s <-> tegra-spi-i2s mapping ok
[    4.428796] ALSA device list:
[    4.435764]   #0: tegra (tegra-dummy-codec)
[    4.446163]   #1: tegra (tegra-codec-spi-i2s)
[    4.454997] GACT probability NOT on
[    4.461999] Mirror/redirect action on
[    4.469352] u32 classifier
[    4.474796] usb 1-1.4: New USB device found, idVendor=1a40, idProduct=0101
[    4.488534]     Actions configured
[    4.495369] Netfilter messages via NETLINK v0.30.
[    4.504775] usb 1-1.4: New USB device strings: Mfr=0, Product=1,
SerialNumber=0
[    4.519419] nf_conntrack version 0.5.0 (14012 buckets, 56048 max)
[    4.531601] usb 1-1.4: Product: USB 2.0 Hub
[    4.541236] ctnetlink v0.93: registering with nfnetlink.
[    4.554196] xt_time: kernel timezone is -0000
[    4.563011] hub 1-1.4:1.0: USB hub found
[    4.571086] ip_tables: (C) 2000-2006 Netfilter Core Team
[    4.581818] hub 1-1.4:1.0: 4 ports detected
[    4.590189] arp_tables: (C) 2002 David S. Miller
[    4.599498] TCP cubic registered
[    4.605981] NET: Registered protocol family 17
[    4.614909] NET: Registered protocol family 15
[    4.623887] Bluetooth: L2CAP ver 2.15
[    4.631226] Bluetooth: L2CAP socket layer initialized
[    4.641349] Bluetooth: SCO (Voice Link) ver 0.6
[    4.650514] Bluetooth: SCO socket layer initialized
[    4.660331] Bluetooth: RFCOMM TTY layer initialized
[    4.670142] Bluetooth: RFCOMM socket layer initialized
[    4.680408] Bluetooth: RFCOMM ver 1.11
[    4.687904] Bluetooth: BNEP (Ethernet Emulation) ver 1.3
[    4.698504] Bluetooth: HIDP (Human Interface Emulation) ver 1.2
[    4.710402] Registering the dns_resolver key type
[    4.721914] deviceless supply vdd_aon not found, using dummy regulator
[    4.734986] Disabling clock audio_2x left on by bootloader
[    4.745997] Disabling clock uarte left on by bootloader
[    4.756507] Disabling clock vde left on by bootloader
[    4.766625] Disabling clock bsev left on by bootloader
[    4.776951] Disabling clock bsea left on by bootloader
[    4.787258] Disabling clock sdmmc4 left on by bootloader
[    4.797912] Disabling clock sdmmc3 left on by bootloader
[    4.808543] mmc1: new high speed MMC card at address 0001
[    4.819349] Disabling clock vfir left on by bootloader
[    4.829812] mmcblk1: mmc1:0001  3.83 GiB
[    4.837932] Disabling clock clk_d left on by bootloader
[    4.848805] VFP support v0.3:
[    4.854638]  mmcblk1: unknown partition table
[    4.863747] implementor 41 architecture 3 part 30 variant 9 rev 1
[    4.877181] regulator_init_complete: incomplete constraints,
leaving REG-LDO_9 on
[    4.892562] regulator_init_complete: incomplete constraints,
leaving REG-LDO_7 on
[    4.908095] regulator_init_complete: incomplete constraints,
leaving REG-LDO_6 on
[    4.923473] regulator_init_complete: incomplete constraints,
leaving REG-LDO_5 on
[    4.938913] regulator_init_complete: incomplete constraints,
leaving REG-LDO_4 on
[    4.954312] regulator_init_complete: incomplete constraints,
leaving REG-LDO_3 on
[    4.970157] regulator_init_complete: incomplete constraints,
leaving REG-LDO_1 on
[    4.985534] regulator_init_complete: incomplete constraints,
leaving REG-LDO_0 on
[    5.000666] usb 1-1.4.2: new high speed USB device using tegra-ehci
and address 4
[    5.015855] regulator_init_complete: incomplete constraints,
leaving REG-SM_2 on
[    5.031080] regulator_init_complete: incomplete constraints,
leaving REG-SM_1 on
[    5.046344] regulator_init_complete: incomplete constraints,
leaving REG-SM_0 on
[    5.062037] tps6586x-rtc tps6586x-rtc.0: setting system clock to
2009-01-01 00:00:01 UTC (1230768001)
[    5.080678] Waiting for root device /dev/sda1...
[    5.090287] usb 1-1.4.2: New USB device found, idVendor=1221, idProduct=3234
[    5.104382] usb 1-1.4.2: New USB device strings: Mfr=1, Product=2,
SerialNumber=3
[    5.119315] usb 1-1.4.2: Product: Flash Disk
[    5.127833] usb 1-1.4.2: Manufacturer: USB2.0
[    5.136524] usb 1-1.4.2: SerialNumber: 2012052602050562
[    5.147598] scsi1 : usb-storage 1-1.4.2:1.0
[    5.330600] scsi 0:0:0:0: Direct-Access     Kingston DataTraveler
G3  PMAP PQ: 0 ANSI: 0 CCS
[    5.347929] sd 0:0:0:0: Attached scsi generic sg0 type 0
[    6.154510] scsi 1:0:0:0: Direct-Access     USB2.0   Flash Disk
  2.80 PQ: 0 ANSI: 2
[    6.171090] sd 1:0:0:0: Attached scsi generic sg1 type 0
[    6.182377] sd 1:0:0:0: [sdb] 1968128 512-byte logical blocks:
(1.00 GB/961 MiB)
[    6.198361] sd 1:0:0:0: [sdb] Write Protect is off
[    6.207954] sd 1:0:0:0: [sdb] Assuming drive cache: write through
[    6.222233] sd 1:0:0:0: [sdb] Assuming drive cache: write through
[    6.237146]  sdb: sdb1
[    6.243107] sd 1:0:0:0: [sdb] Assuming drive cache: write through
[    6.255316] sd 1:0:0:0: [sdb] Attached SCSI removable disk
[    6.489926] sd 0:0:0:0: [sda] 7669824 512-byte logical blocks:
(3.92 GB/3.65 GiB)
[    6.506037] sd 0:0:0:0: [sda] Write Protect is off
[    6.515613] sd 0:0:0:0: [sda] Assuming drive cache: write through
[    6.530536] sd 0:0:0:0: [sda] Assuming drive cache: write through
[    6.562591]  sda: sda1
[    6.568912] sd 0:0:0:0: [sda] Assuming drive cache: write through
[    6.581077] sd 0:0:0:0: [sda] Attached SCSI removable disk
[    6.637690] EXT4-fs (sda1): warning: mounting unchecked fs, running
e2fsck is recommended
[    6.783183] EXT4-fs (sda1): mounted filesystem without journal. Opts: (null)
[    6.797313] VFS: Mounted root (ext2 filesystem) on device 8:1.
[    6.811088] devtmpfs: mounted
[    6.817204] Freeing init memory: 180K
/bin/sh: can't access tty; job control turned off
/ # ls
bin         etc         lost+found  proc        tmp
boot        home        media       sbin        usr
dev         lib         mnt         sys         var
/ # echo "Woo-hoo..."
Woo-hoo...

