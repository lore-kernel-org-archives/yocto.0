Return-Path: <matt.schuckmann@planar.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 45889E00932; Mon, 20 Apr 2015 11:13:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [216.205.24.105 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from us-smtp-delivery-105.mimecast.com
	(us-smtp-delivery-105.mimecast.com [216.205.24.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F3460E003A8
	for <yocto@yoctoproject.org>; Mon, 20 Apr 2015 11:13:14 -0700 (PDT)
Received: from msxbvt03.planar.net (199.244.171.48 [199.244.171.48]) by
	us-mta-27.us.mimecast.lan; Mon, 20 Apr 2015 14:13:11 -0400
Received: from MSXBEBVT12.planar.net ([::1]) by msxbvt03.planar.net ([::1])
	with mapi; Mon, 20 Apr 2015 11:13:10 -0700
From: Matt Schuckmann <Matt.Schuckmann@planar.com>
To: "anders@chargestorm.se" <anders@chargestorm.se>, Yocto Project
	<yocto@yoctoproject.org>
Date: Mon, 20 Apr 2015 11:13:06 -0700
Thread-Topic: [yocto] Problems enabling systemd
Thread-Index: AdB7erFCJh463TKURV2DNC8Z9GQNXwAGi8Ww
Message-ID: <4B07ADD556F70043925DA2E9C5D4346D2FDCA586B7@MSXBEBVT12.planar.net>
References: <4B07ADD556F70043925DA2E9C5D4346D2FDCA585B2@MSXBEBVT12.planar.net>
	<20150420084300.GC11779@ad.chargestorm.se>
	<5535128C.6010701@windriver.com>
In-Reply-To: <5535128C.6010701@windriver.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
X-MC-Unique: ecw1mQ0uQs-2Gza9eGfXCQ-1
Subject: Re: Problems enabling systemd
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
X-List-Received-Date: Mon, 20 Apr 2015 18:13:18 -0000
Content-Language: en-US
Content-Type: text/plain; charset=WINDOWS-1252
Content-Transfer-Encoding: quoted-printable

> >
> > I'd guess that you're getting some errors earlier than this in the
> > bootlog? Could you paste them?
> >
> > Cheers,
> > Anders

Anders, below is a more complete boot log

Thanks for the help
Matt S.

Starting kernel ...

[    0.000000] Booting Linux on physical CPU 0x0
[    0.000000] Linux version 3.12.10-ti2013.12.01 (dev@elinux-dev-03) (gcc =
version 4.7.3 20130226 (prerelease) (crosstool-NG linaro-1.13.1-4.7-2013.03=
-20130313 - Linaro GCC 2013.03) ) #1 Mon Apr 6 15:20:14 PDT 2015
[    0.000000] CPU: ARMv7 Processor [413fc082] revision 2 (ARMv7), cr=3D10c=
53c7d
[    0.000000] CPU: PIPT / VIPT nonaliasing data cache, VIPT aliasing instr=
uction cache
[    0.000000] Machine: Generic AM33XX (Flattened Device Tree), model: Plan=
ar Zanziboard AM335x SCP
[    0.000000] cma: CMA: reserved 24 MiB at 85800000
[    0.000000] Memory policy: ECC disabled, Data cache writeback
[    0.000000] CPU: All CPU(s) started in SVC mode.
[    0.000000] AM335X ES2.1 (neon )
[    0.000000] Built 1 zonelists in Zone order, mobility grouping on.  Tota=
l pages: 31744
[    0.000000] Kernel command line: console=3DttyO0,115200n8 root=3Dubi0:ro=
otfs rw ubi.mtd=3DNAND.rootfs0,2048 rootfstype=3Dubifs rootwait=3D1
[    0.000000] PID hash table entries: 512 (order: -1, 2048 bytes)
[    0.000000] Dentry cache hash table entries: 16384 (order: 4, 65536 byte=
s)
[    0.000000] Inode-cache hash table entries: 8192 (order: 3, 32768 bytes)
[    0.000000] Memory: 95368K/128000K available (4203K kernel code, 554K rw=
data, 1424K rodata, 308K init, 207K bss, 32632K reserved, 0K highmem)
[    0.000000] Virtual kernel memory layout:
[    0.000000]     vector  : 0xffff0000 - 0xffff1000   (   4 kB)
[    0.000000]     fixmap  : 0xfff00000 - 0xfffe0000   ( 896 kB)
[    0.000000]     vmalloc : 0xc8800000 - 0xff000000   ( 872 MB)
[    0.000000]     lowmem  : 0xc0000000 - 0xc8000000   ( 128 MB)
[    0.000000]     pkmap   : 0xbfe00000 - 0xc0000000   (   2 MB)
[    0.000000]     modules : 0xbf000000 - 0xbfe00000   (  14 MB)
[    0.000000]       .text : 0xc0008000 - 0xc058704c   (5629 kB)
[    0.000000]       .init : 0xc0588000 - 0xc05d52c4   ( 309 kB)
[    0.000000]       .data : 0xc05d6000 - 0xc0660838   ( 555 kB)
[    0.000000]        .bss : 0xc0660838 - 0xc0694608   ( 208 kB)
[    0.000000] NR_IRQS:16 nr_irqs:16 16
[    0.000000] IRQ: Found an INTC at 0xfa200000 (revision 5.0) with 128 int=
errupts
[    0.000000] Total of 128 interrupts on 1 active controller
[    0.000000] OMAP clockevent source: timer2 at 24000000 Hz
[    0.000000] sched_clock: 32 bits at 24MHz, resolution 41ns, wraps every =
178956ms
[    0.000000] OMAP clocksource: timer1 at 24000000 Hz
[    0.000000] Console: colour dummy device 80x30
[    0.000607] Calibrating delay loop... 199.06 BogoMIPS (lpj=3D995328)
[    0.069412] pid_max: default: 32768 minimum: 301
[    0.069598] Security Framework initialized
[    0.069695] Mount-cache hash table entries: 512
[    0.087733] CPU: Testing write buffer coherency: ok
[    0.088383] Setting up static identity map for 0xc0420928 - 0xc0420998
[    0.090151] devtmpfs: initialized
[    0.093804] VFP support v0.3: implementor 41 architecture 3 part 30 vari=
ant c rev 3
[    0.168047] omap_hwmod: debugss: _wait_target_disable failed
[    0.169277] pinctrl core: initialized pinctrl subsystem
[    0.171017] regulator-dummy: no parameters
[    0.175351] NET: Registered protocol family 16
[    0.180243] DMA: preallocated 256 KiB pool for atomic coherent allocatio=
ns
[    0.205987] platform mpu.1: FIXME: clock-name 'fck' DOES NOT exist in dt=
!
[    0.208352] platform 49000000.edma: FIXME: clock-name 'fck' DOES NOT exi=
st in dt!
[    0.210983] OMAP GPIO hardware version 0.1
[    0.230887] omap-gpmc 50000000.gpmc: could not find pctldev for node /pi=
nmux@44e10800/nandflash_pins_default, deferring probe
[    0.230950] platform 50000000.gpmc: Driver omap-gpmc requests probe defe=
rral
[    0.231794] platform 56000000.sgx: FIXME: clock-name 'fck' DOES NOT exis=
t in dt!
[    0.235839] DSS not supported on this SoC
[    0.235868] No ATAGs?
[    0.235891] hw-breakpoint: debug architecture 0x4 unsupported.
[    0.278600] bio: create slab <bio-0> at 0
[    0.312192] edma-dma-engine edma-dma-engine.0: TI EDMA DMA engine driver
[    0.316531] SCSI subsystem initialized
[    0.318428] usbcore: registered new interface driver usbfs
[    0.318857] usbcore: registered new interface driver hub
[    0.319334] usbcore: registered new device driver usb
[    0.321080] omap_i2c 44e0b000.i2c: could not find pctldev for node /pinm=
ux@44e10800/pinmux_i2c0_pins, deferring probe
[    0.321137] platform 44e0b000.i2c: Driver omap_i2c requests probe deferr=
al
[    0.321196] omap_i2c 4802a000.i2c: could not find pctldev for node /pinm=
ux@44e10800/pinmux_i2c1_pins, deferring probe
[    0.321234] platform 4802a000.i2c: Driver omap_i2c requests probe deferr=
al
[    0.321285] omap_i2c 4819c000.i2c: could not find pctldev for node /pinm=
ux@44e10800/pinmux_i2c2_pins, deferring probe
[    0.321321] platform 4819c000.i2c: Driver omap_i2c requests probe deferr=
al
[    0.322416] pps_core: LinuxPPS API ver. 1 registered
[    0.322442] pps_core: Software ver. 5.3.6 - Copyright 2005-2007 Rodolfo =
Giometti <giometti@linux.it>
[    0.322752] PTP clock support registered
[    0.326060] Switched to clocksource timer1
[    0.369545] NET: Registered protocol family 2
[    0.370853] TCP established hash table entries: 1024 (order: 1, 8192 byt=
es)
[    0.370935] TCP bind hash table entries: 1024 (order: 0, 4096 bytes)
[    0.370982] TCP: Hash tables configured (established 1024 bind 1024)
[    0.371119] TCP: reno registered
[    0.371152] UDP hash table entries: 256 (order: 0, 4096 bytes)
[    0.371201] UDP-Lite hash table entries: 256 (order: 0, 4096 bytes)
[    0.371630] NET: Registered protocol family 1
[    0.372340] RPC: Registered named UNIX socket transport module.
[    0.372367] RPC: Registered udp transport module.
[    0.372383] RPC: Registered tcp transport module.
[    0.372400] RPC: Registered tcp NFSv4.1 backchannel transport module.
[    0.374052] NetWinder Floating Point Emulator V0.97 (double precision)
[    0.375255] PM: Loading am335x-pm-firmware.bin
[    0.664527] VFS: Disk quotas dquot_6.5.2
[    0.664673] Dquot-cache hash table entries: 1024 (order 0, 4096 bytes)
[    0.665523] NFS: Registering the id_resolver key type
[    0.665689] Key type id_resolver registered
[    0.665713] Key type id_legacy registered
[    0.665829] msgmni has been set to 234
[    0.669562] NET: Registered protocol family 38
[    0.669641] io scheduler noop registered
[    0.669662] io scheduler deadline registered
[    0.669708] io scheduler cfq registered (default)
[    0.673812] pinctrl-single 44e10800.pinmux: 142 pins at pa f9e10800 size=
 568
[    0.679227] Serial: 8250/16550 driver, 4 ports, IRQ sharing enabled
[    0.684250] 44e09000.serial: ttyO0 at MMIO 0x44e09000 (irq =3D 88, base_=
baud =3D 3000000) is a OMAP UART0
[    1.311160] console [ttyO0] enabled
[    1.316331] 48022000.serial: ttyO1 at MMIO 0x48022000 (irq =3D 89, base_=
baud =3D 3000000) is a OMAP UART1
[    1.327435] 48024000.serial: ttyO2 at MMIO 0x48024000 (irq =3D 90, base_=
baud =3D 3000000) is a OMAP UART2
[    1.338574] 481a6000.serial: ttyO3 at MMIO 0x481a6000 (irq =3D 60, base_=
baud =3D 3000000) is a OMAP UART3
[    1.350974] omap_rng 48310000.rng: OMAP Random Number Generator ver. 20
[    1.380846] brd: module loaded
[    1.396267] loop: module loaded
[    1.405594] mtdoops: mtd device (mtddev=3Dname/number) must be supplied
[    1.418227] usbcore: registered new interface driver asix
[    1.424423] usbcore: registered new interface driver ax88179_178a
[    1.431273] usbcore: registered new interface driver cdc_ether
[    1.437896] usbcore: registered new interface driver r815x
[    1.444221] usbcore: registered new interface driver smsc95xx
[    1.450678] usbcore: registered new interface driver net1080
[    1.457107] usbcore: registered new interface driver cdc_subset
[    1.463811] usbcore: registered new interface driver zaurus
[    1.470191] usbcore: registered new interface driver cdc_ncm
[    1.477297] ehci_hcd: USB 2.0 'Enhanced' Host Controller (EHCI) Driver
[    1.484242] ehci-pci: EHCI PCI platform driver
[    1.489462] ehci-omap: OMAP-EHCI Host Controller driver
[    1.496895] usbcore: registered new interface driver cdc_wdm
[    1.503388] usbcore: registered new interface driver usb-storage
[    1.511666] i2c /dev entries driver
[    1.515810] IR NEC protocol handler initialized
[    1.521369] IR keymap rc-nec not found
[    1.525363] Registered IR keymap rc-empty
[    1.530914] input: gpio_ir_recv as /devices/ocp.2/ir-receiver.5/rc/rc0/i=
nput0
[    1.539343] rc0: gpio_ir_recv as /devices/ocp.2/ir-receiver.5/rc/rc0
[    1.546903] Driver for 1-wire Dallas network protocol.
[    1.556302] omap_wdt: OMAP Watchdog Timer Rev 0x01: initial timeout 60 s=
ec
[    1.567193] ledtrig-cpu: registered to indicate activity on CPUs
[    1.574322] edma-dma-engine edma-dma-engine.0: allocated channel for 0:3=
6
[    1.581827] omap-sham 53100000.sham: hw accel on OMAP rev 4.3
[    1.590423] omap-aes 53500000.aes: OMAP AES hw accel rev: 3.2
[    1.596784] edma-dma-engine edma-dma-engine.0: allocated channel for 0:5
[    1.603943] edma-dma-engine edma-dma-engine.0: allocated channel for 0:6
[    1.618039] oprofile: no performance counters
[    1.623474] oprofile: using timer interrupt.
[    1.628754] TCP: cubic registered
[    1.632287] Initializing XFRM netlink socket
[    1.636903] NET: Registered protocol family 17
[    1.641700] NET: Registered protocol family 15
[    1.646562] 8021q: 802.1Q VLAN Support v1.8
[    1.651157] Key type dns_resolver registered
[    1.657300] ThumbEE CPU extension supported.
[    1.665501] omap-gpmc 50000000.gpmc: GPMC revision 6.0
[    1.671092] gpmc_mem_init: disabling cs 0 mapped at 0x0-0x1000000
[    1.679417] ONFI param page 0 valid
[    1.683142] ONFI flash detected
[    1.686578] NAND device: Manufacturer ID: 0xc2, Chip ID: 0xda (Macronix =
MX30LF2G28AB), 256MiB, page size: 2048, OOB size: 112
[    1.698617] omap2-nand: detected x8 NAND flash
[    1.703340] using OMAP_ECC_BCH16_CODE_HW ECC scheme
[    1.708596] omap2-nand: using custom ecc layout
[    1.713762] 16 ofpart partitions found on MTD device omap2-nand.0
[    1.720291] Creating 16 MTD partitions on "omap2-nand.0":
[    1.726046] 0x000000000000-0x000000020000 : "NAND.SPL"
[    1.734929] 0x000000020000-0x000000040000 : "NAND.SPL.backup1"
[    1.744378] 0x000000040000-0x000000060000 : "NAND.SPL.backup2"
[    1.753843] 0x000000060000-0x000000080000 : "NAND.SPL.backup3"
[    1.763080] 0x000000080000-0x0000000c0000 : "NAND.u-boot-spl-os"
[    1.772598] 0x0000000c0000-0x0000001c0000 : "NAND.u-boot"
[    1.782113] 0x0000001c0000-0x0000001e0000 : "NAND.u-boot-env"
[    1.791308] 0x0000001e0000-0x000000200000 : "NAND.u-boot-env.backup1"
[    1.801202] 0x000000200000-0x000000240000 : "NAND.fdt0"
[    1.809990] 0x000000240000-0x000000c40000 : "NAND.kernel0"
[    1.827568] 0x000000c40000-0x000003e40000 : "NAND.rootfs0"
[    1.879561] 0x000003e40000-0x000003e80000 : "NAND.fdt1"
[    1.888366] 0x000003e80000-0x000004880000 : "NAND.kernel1"
[    1.905681] 0x000004880000-0x000007a80000 : "NAND.rootfs1"
[    1.957611] 0x000007a80000-0x000008a80000 : "NAND.config"
[    1.980045] 0x000008a80000-0x000010000000 : "NAND.scratch"
[    2.095834] rtc-pcf8523 0-0068: rtc core: registered rtc-pcf8523 as rtc0
[    2.103233] omap_i2c 44e0b000.i2c: bus 0 rev0.11 at 400 kHz
[    2.111233] omap_i2c 4802a000.i2c: bus 1 rev0.11 at 100 kHz
[    2.119246] omap_i2c 4819c000.i2c: bus 2 rev0.11 at 100 kHz
[    2.126512] UBI: attaching mtd10 to ubi0
[    2.402062] UBI: scanning is finished
[    2.417096] UBI: attached mtd10 (name "NAND.rootfs0", size 50 MiB) to ub=
i0
[    2.424428] UBI: PEB size: 131072 bytes (128 KiB), LEB size: 126976 byte=
s
[    2.431698] UBI: min./max. I/O unit sizes: 2048/2048, sub-page size 512
[    2.438757] UBI: VID header offset: 2048 (aligned 2048), data offset: 40=
96
[    2.446092] UBI: good PEBs: 400, bad PEBs: 0, corrupted PEBs: 0
[    2.452382] UBI: user volume: 1, internal volumes: 1, max. volumes count=
: 128
[    2.459993] UBI: max/mean erase counter: 2/0, WL threshold: 4096, image =
sequence number: 1615916284
[    2.469628] UBI: available PEBs: 0, total reserved PEBs: 400, PEBs reser=
ved for bad PEB handling: 40
[    2.479371] UBI: background thread "ubi_bgt0d" started, PID 695
[    2.546177] davinci_mdio 4a101000.mdio: davinci mdio revision 1.6
[    2.552688] davinci_mdio 4a101000.mdio: detected phy mask fffffffe
[    2.560505] libphy: 4a101000.mdio: probed
[    2.564795] davinci_mdio 4a101000.mdio: phy[0]: device 4a101000.mdio:00,=
 driver SMSC LAN8710/LAN8720
[    2.575736] Detected MACID =3D 1c:ba:8c:96:5b:ad
[    2.585818] input: keypad_buttons.3 as /devices/ocp.2/keypad_buttons.3/i=
nput/input1
[    2.596230] rtc-pcf8523 0-0068: hctosys: unable to read the hardware clo=
ck
[    2.629520] UBIFS: background thread "ubifs_bgt0_0" started, PID 709
[    2.656161] UBIFS: recovery needed
[    3.136507] UBIFS: recovery completed
[    3.140654] UBIFS: mounted UBI device 0, volume 0, name "rootfs"
[    3.147098] UBIFS: LEB size: 126976 bytes (124 KiB), min./max. I/O unit =
sizes: 2048 bytes/2048 bytes
[    3.156837] UBIFS: FS size: 43806720 bytes (41 MiB, 345 LEBs), journal s=
ize 9023488 bytes (8 MiB, 72 LEBs)
[    3.167116] UBIFS: reserved for root: 0 bytes (0 KiB)
[    3.172499] UBIFS: media format: w4/r0 (latest is w4/r0), UUID 86C834A6-=
9D7B-4B3A-8DD4-4A0237F1DB34, small LPT model
[    3.185115] VFS: Mounted root (ubifs filesystem) on device 0:13.
[    3.192979] devtmpfs: mounted
[    3.197501] Freeing unused kernel memory: 308K (c0588000 - c05d5000)
[    3.507075] systemd[1]: systemd 199 running in system mode. (-PAM -LIBWR=
AP -AUDIT -SELINUX +IMA +SYSVINIT -LIBCRYPTSETUP -GCRYPT +ACL +XZ)

Welcome to =1B[1mLinux=1B[0m!

[    3.564281] systemd[1]: Failed to insert module 'autofs4'
[    3.572674] systemd[1]: Set hostname to <zanziboard>.
[    4.203755] systemd[1]: Cannot add dependency job for unit display-manag=
er.service, ignoring: Unit display-manager.service failed to load: No such =
file or directory. See system logs and 'systemctl status display-manager.se=
rvice' for details.
[    4.233311] systemd[1]: Starting Forward Password Requests to Wall Direc=
tory Watch.
[    4.242610] systemd[1]: Started Forward Password Requests to Wall Direct=
ory Watch.
[    4.252170] systemd[1]: Expecting device dev-ttyO0.device...
         Expecting device dev-ttyO0.device...
[    4.276500] systemd[1]: Starting Syslog Socket.
[=1B[32m  OK  =1B[0m] Listening on Syslog Socket.
[    4.296426] systemd[1]: Listening on Syslog Socket.
[    4.301847] systemd[1]: Starting Remote File Systems.
[=1B[32m  OK  =1B[0m] Reached target Remote File Systems.
[    4.326372] systemd[1]: Reached target Remote File Systems.
[    4.332506] systemd[1]: Starting Delayed Shutdown Socket.
[=1B[32m  OK  =1B[0m] Listening on Delayed Shutdown Socket.
[    4.356381] systemd[1]: Listening on Delayed Shutdown Socket.
[    4.362684] systemd[1]: Starting /dev/initctl Compatibility Named Pipe.
[=1B[32m  OK  =1B[0m] Listening on /dev/initctl Compatibility Named Pipe.
[    4.386368] systemd[1]: Listening on /dev/initctl Compatibility Named Pi=
pe.
[    4.394054] systemd[1]: Starting Dispatch Password Requests to Console D=
irectory Watch.
[    4.403299] systemd[1]: Started Dispatch Password Requests to Console Di=
rectory Watch.
[    4.411938] systemd[1]: Starting Paths.
[=1B[32m  OK  =1B[0m] Reached target Paths.
[    4.436374] systemd[1]: Reached target Paths.
[    4.442087] systemd[1]: Starting udev Kernel Socket.
[=1B[32m  OK  =1B[0m] Listening on udev Kernel Socket.
[    4.466412] systemd[1]: Listening on udev Kernel Socket.
[    4.472952] systemd[1]: Starting udev Control Socket.
[=1B[32m  OK  =1B[0m] Listening on udev Control Socket.
[    4.496404] systemd[1]: Listening on udev Control Socket.
[    4.502428] systemd[1]: Starting Journal Socket.
[=1B[32m  OK  =1B[0m] Listening on Journal Socket.
[    4.526404] systemd[1]: Listening on Journal Socket.
[    4.532694] systemd[1]: Starting udev Coldplug all Devices...
         Starting udev Coldplug all Devices...
[    4.576667] systemd[1]: Mounting Debug File System...
         Mounting Debug File System...
[    4.600669] systemd[1]: Mounted Huge Pages File System.
[    4.630039] systemd[1]: Started Load Kernel Modules.
[    4.635673] systemd[1]: Mounted FUSE Control File System.
[    4.681324] systemd[1]: Starting Apply Kernel Variables...
         Starting Apply Kernel Variables...
[    4.741000] systemd[1]: Starting udev Kernel Device Manager...
         Starting udev Kernel Device Manager...
[    4.800528] systemd[1]: Starting Journal Service...
         Starting Journal Service...
[=1B[32m  OK  =1B[0m] Started Journal Service.
[    4.897430] systemd[1]: Started Journal Service.
[    4.903096] systemd[1]: Starting Arbitrary Executable File Formats File =
System Automount Point.
[    4.941884] systemd[1]: Failed to open /dev/autofs: No such file or dire=
ctory
[    4.978276] systemd[1]: Failed to initialize automounter: No such file o=
r directory
[=1B[1;31mFAILED=1B[0m] Failed to set up automount Arbitrary Executable Fil=
e...utomount Point.
[    5.017367] systemd-udevd[721]: starting version 199
See 'systemctl status proc-sys-fs-binfmt_misc.automount' for details.
[    5.046587] systemd[1]: Failed to set up automount Arbitrary Executable =
File Formats File System Automount Point.
[    5.077126] systemd[1]: Unit proc-sys-fs-binfmt_misc.automount entered f=
ailed state
[    5.108443] systemd[1]: Started Set Up Additional Binary Formats.
[    5.115263] systemd[1]: Mounted Configuration File System.
[    5.160248] systemd[1]: Mounting POSIX Message Queue File System...
         Mounting POSIX Message Queue File System...
[    5.209679] systemd[1]: Starting Swap.
[=1B[32m  OK  =1B[0m] Reached target Swap.
[    5.239385] systemd[1]: Reached target Swap.
[    5.244266] systemd[1]: Mounting Temporary Directory...
         Mounting Temporary Directory...
[    5.310494] systemd[1]: Started File System Check on Root Device.
[    5.350516] systemd[1]: Starting Remount Root and Kernel File Systems...
         Starting Remount Root and Kernel File Systems...
[=1B[32m  OK  =1B[0m] Started udev Kernel Device Manager.
[    5.516568] systemd[1]: Started udev Kernel Device Manager.
[=1B[32m  OK  =1B[0m] Mounted Debug File System.
[    5.626605] systemd[1]: Mounted Debug File System.
[=1B[32m  OK  =1B[0m] Started Apply Kernel Variables.
[    5.736620] systemd[1]: Started Apply Kernel Variables.
[=1B[32m  OK  =1B[0m] Mounted POSIX Message Queue File System.
[    5.785562] systemd[1]: Mounted POSIX Message Queue File System.
[=1B[32m  OK  =1B[0m] Mounted Temporary Directory.
[    5.886537] systemd[1]: Mounted Temporary Directory.
[=1B[32m  OK  =1B[0m] Started Remount Root and Kernel File Systems.
[    5.911456] systemd[1]: Started Remount Root and Kernel File Systems.
[    5.936903] systemd[1]: Started Machine ID first boot configure.
[    5.993967] systemd[1]: Starting Load Random Seed...
         Starting Load Random Seed...
[    6.041631] systemd[1]: Starting Local File Systems (Pre).
[=1B[32m  OK  =1B[0m] Reached target Local File Systems (Pre).
[    6.126618] systemd[1]: Reached target Local File Systems (Pre).
[    6.133390] systemd[1]: Mounting /media/ram...
         Mounting /media/ram...
[    6.220754] systemd[1]: Mounting /var/volatile...
         Mounting /var/volatile...
[    6.270887] systemd[1]: var-volatile.mount: Directory /var/volatile to m=
ount over is not empty, mounting anyway.
[=1B[32m  OK  =1B[0m] Mounted /media/ram.
[=1B[32m  OK  =1B[0m] Started Load Random Seed.
[=1B[32m  OK  =1B[0m] Mounted /var/volatile.
[=1B[32m  OK  =1B[0m] Reached target Local File Systems.
[    6.480042] systemd-udevd[721]: failed to create queue file: No such fil=
e or directory
         Starting Trigger Flushing of Journal to Persistent Storage...
         Starting Recreate Volatile Files and Directories...
[    6.528012] systemd-cgroups-agent[941]: Failed to get D-Bus connection: =
Failed to connect to socket /org/freedesktop/systemd1/private: Connection r=
efused
[    6.545509] systemd-udevd[721]: failed to create queue file: No such fil=
e or directory
[    6.597933] systemd-udevd[721]: failed to create queue file: No such fil=
e or directory
[    6.649718] systemd-udevd[721]: failed to create queue file: No such fil=
e or directory
[    6.701649] systemd-udevd[721]: failed to create queue file: No such fil=
e or directory
[    6.756633] systemd-udevd[721]: failed to create queue file: No such fil=
e or directory
[    6.765598] systemd-udevd[721]: failed to create queue file: No such fil=
e or directory
[=1B[1;31mFAILED=1B[0m] Failed to start Trigger Flushing of Journal to Pers=
istent Storage.
[    6.869584] systemd-udevd[721]: failed to create queue file: No such fil=
e or directory
See 'systemctl status systemd-journal-flush.service' for details[    6.8806=
96] systemd-cgroups-agent[1011]: Failed to get D-Bus connection: Failed to =
connect to socket /org/freedesktop/systemd1/private: Connection refused
.
[=1B[32m  OK  =1B[0m] Started Recreate Volatile Files and Directories.
[    6.923951] systemd-udevd[721]: failed to create queue file: No such fil=
e or directory
         Starting Run pending postinsts...
[    6.962447] systemd-cgroups-agent[1029]: Failed to get D-Bus connection:=
 Failed to connect to socket /org/freedesktop/systemd1/private: Connection =
refused
[    7.002115] systemd-udevd[721]: failed to create queue file: No such fil=
e or directory
[    7.058836] systemd-udevd[721]: failed to create queue file: No such fil=
e or directory
[    7.145548] systemd-udevd[721]: failed to create queue file: No such fil=
e or directory
[    7.188402] systemd-udevd[721]: failed to create queue file: No such fil=
e or directory
[    7.302203] systemd-udevd[721]: failed to create queue file: No such fil=
e or directory
[=1B[32m  OK  =1B[0m] Started Run pending postinsts.
[    7.375605] systemd-udevd[721]: failed to create queue file: No such fil=
e or directory
[    7.398588] systemd-cgroups-agent[1112]: Failed to get D-Bus connection:=
 Failed to connect to socket /org/freedesktop/systemd1/private: Connection =
refused
[=1B[32m  OK  =1B[0m] Found device /dev/ttyO0.
[=1B[32m  OK  =1B[0m] Started udev Coldplug all Devices.
[=1B[32m  OK  =1B[0m] Reached target System Initialization.
[=1B[32m  OK  =1B[0m] Reached target Timers.
[=1B[32m  OK  =1B[0m] Listening on Avahi mDNS/DNS-SD Stack Activation Socke=
t.
[=1B[32m  OK  =1B[0m] Listening on D-Bus System Message Bus Socket.
[    9.228661] systemd-cgroups-agent[1404]: Failed to get D-Bus connection:=
 Failed to connect to socket /org/freedesktop/systemd1/private: Connection =
refused
[=1B[32m  OK  =1B[0m] Reached target Sockets.
[=1B[32m  OK  =1B[0m] Reached target Basic System.
         Starting LSB: Dropbear Secure Shell server...
         Starting Avahi mDNS/DNS-SD Stack...
         Starting System Logging Service...
[=1B[32m  OK  =1B[0m] Started System Logging Service.
         Starting Kernel Logging Service...
[=1B[32m  OK  =1B[0m] Started Kernel Logging Service.
         Starting Login Service...
         Starting Permit User Sessions...
         Starting D-Bus System Message Bus...
[=1B[32m  OK  =1B[0m] Started D-Bus System Message Bus.
[=1B[32m  OK  =1B[0m] Started Permit User Sessions.
         Starting Getty on tty1...
[=1B[32m  OK  =1B[0m] Started Getty on tty1.
         Starting Serial Getty on ttyO0...
[   10.317917] systemd-cgroups-agent[1456]: Failed to get D-Bus connection:=
 Failed to connect to socket /org/freedesktop/systemd1/private: Connection =
refused
[=1B[32m  OK  =1B[0m] Started Serial Getty on ttyO0.
[=1B[32m  OK  =1B[0m] Reached target Login Prompts.


 _____                    _____           _         _
|  _  |___ ___ ___ ___   |  _  |___ ___  |_|___ ___| |_
|     |  _| .'| . | . |  |   __|  _| . | | | -_|  _|  _|
|__|__|_| |__,|_  |___|  |__|  |_| |___|_| |___|___|_|
              |___|                    |___|

Arago Project http://arago-project.org zanziboard ttyO0

[=1B[32m  OK  =1B[0m] Started Login Service.
zanziboard login: [   11.585201] systemd-logind[1438]: New seat seat0.
[=1B[32m  OK  =1B[0m] Started Avahi mDNS/DNS-SD Stack.
[   17.013486] systemd-journald[738]: Failed to rotate /run/log/journal/7c6=
1de93314949e2856599b329cd4e3d/system.journal: No such file or directory
[   17.050504] systemd-journald[738]: Failed to rotate /run/log/journal/7c6=
1de93314949e2856599b329cd4e3d/system.journal: No such file or directory
[   17.080391] systemd-journald[738]: Failed to rotate /run/log/journal/7c6=
1de93314949e2856599b329cd4e3d/system.journal: No such file or directory
[   17.120811] systemd-journald[738]: Failed to rotate /run/log/journal/7c6=
1de93314949e2856599b329cd4e3d/system.journal: No such file or directory
[   17.160590] systemd-journald[738]: Failed to rotate /run/log/journal/7c6=
1de93314949e2856599b329cd4e3d/system.journal: No such file or directory
[   17.190482] systemd-journald[738]: Failed to rotate /run/log/journal/7c6=
1de93314949e2856599b329cd4e3d/system.journal: No such file or directory
[   17.230421] systemd-journald[738]: Failed to rotate /run/log/journal/7c6=
1de93314949e2856599b329cd4e3d/system.journal: No such file or directory
[   17.260336] systemd-journald[738]: Failed to rotate /run/log/journal/7c6=
1de93314949e2856599b329cd4e3d/system.journal: No such file or directory
[   17.300461] systemd-journald[738]: Failed to rotate /run/log/journal/7c6=
1de93314949e2856599b329cd4e3d/system.journal: No such file or directory
[   17.340791] systemd-journald[738]: Failed to rotate /run/log/journal/7c6=
1de93314949e2856599b329cd4e3d/system.journal: No such file or directory
[   17.370948] systemd-journald[738]: Failed to rotate /run/log/journal/7c6=
1de93314949e2856599b329cd4e3d/system.journal: No such file or directory
[   17.410764] systemd-journald[738]: Failed to rotate /run/log/journal/7c6=
1de93314949e2856599b329cd4e3d/system.journal: No such file or directory
[   17.450561] systemd-journald[738]: Failed to rotate /run/log/journal/7c6=
1de93314949e2856599b329cd4e3d/system.journal: No such file or directory
[   17.480783] systemd-journald[738]: Failed to rotate /run/log/journal/7c6=
1de93314949e2856599b329cd4e3d/system.journal: No such file or directory



