Return-Path: <hrsourabh011@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 45B13C433EF
	for <webhook@archiver.kernel.org>; Sun, 27 Feb 2022 11:42:35 +0000 (UTC)
Subject: Re: Building Yocto images for RPi CM4
To: yocto@lists.yoctoproject.org
From: "Sourabh Hegde" <hrsourabh011@gmail.com>
X-Originating-Location: Munich, Bavaria, DE (95.91.249.119)
X-Originating-Platform: Windows Firefox 91
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Sun, 27 Feb 2022 03:42:30 -0800
References: <7715.1645647504169139822@lists.yoctoproject.org>
In-Reply-To: <7715.1645647504169139822@lists.yoctoproject.org>
Message-ID: <14605.1645962150131738638@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="MaHNirHIUJI2q5YrvD7R"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 27 Feb 2022 11:42:35 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56298

--MaHNirHIUJI2q5YrvD7R
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello Khem,

I got my hands on Raspberry Pi Compute Module 4 IO Board and also I could a=
ccess serial console now. Below is the log message I got while booting:

[=C2=A0=C2=A0=C2=A0 0.000000] Booting Linux on physical CPU 0x0000000000 [0=
x410fd083]
[=C2=A0=C2=A0=C2=A0 0.000000] Linux version 5.10.78-v8 (oe-user@oe-host) (a=
arch64-oe-linux-gcc (GCC) 11.2.0, GNU ld (GNU Binutils) 2.37.20210721) #1 S=
MP PREEMPT Tue Feb 22 15:19:24 UTC 2022
[=C2=A0=C2=A0=C2=A0 0.000000] random: fast init done
[=C2=A0=C2=A0=C2=A0 0.000000] Machine model: Raspberry Pi Compute Module 4 =
Rev 1.0
[=C2=A0=C2=A0=C2=A0 0.000000] efi: UEFI not found.
[=C2=A0=C2=A0=C2=A0 0.000000] Reserved memory: created CMA memory pool at 0=
x000000001ec00000, size 256 MiB
[=C2=A0=C2=A0=C2=A0 0.000000] OF: reserved mem: initialized node linux,cma,=
 compatible id shared-dma-pool
[=C2=A0=C2=A0=C2=A0 0.000000] Zone ranges:
[=C2=A0=C2=A0=C2=A0 0.000000]=C2=A0=C2=A0 DMA=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 [mem 0x0000000000000000-0x000000003b3fffff]
[=C2=A0=C2=A0=C2=A0 0.000000]=C2=A0=C2=A0 DMA32=C2=A0=C2=A0=C2=A0 empty
[=C2=A0=C2=A0=C2=A0 0.000000]=C2=A0=C2=A0 Normal=C2=A0=C2=A0 empty
[=C2=A0=C2=A0=C2=A0 0.000000] Movable zone start for each node
[=C2=A0=C2=A0=C2=A0 0.000000] Early memory node ranges
[=C2=A0=C2=A0=C2=A0 0.000000]=C2=A0=C2=A0 node=C2=A0=C2=A0 0: [mem 0x000000=
0000000000-0x000000003b3fffff]
[=C2=A0=C2=A0=C2=A0 0.000000] Initmem setup node 0 [mem 0x0000000000000000-=
0x000000003b3fffff]
[=C2=A0=C2=A0=C2=A0 0.000000] percpu: Embedded 32 pages/cpu s92312 r8192 d3=
0568 u131072
[=C2=A0=C2=A0=C2=A0 0.000000] Detected PIPT I-cache on CPU0
[=C2=A0=C2=A0=C2=A0 0.000000] CPU features: detected: Spectre-v2
[=C2=A0=C2=A0=C2=A0 0.000000] CPU features: detected: Spectre-v4
[=C2=A0=C2=A0=C2=A0 0.000000] CPU features: detected: ARM errata 1165522, 1=
319367, or 1530923
[=C2=A0=C2=A0=C2=A0 0.000000] Built 1 zonelists, mobility grouping on.=C2=
=A0 Total pages: 238896
[=C2=A0=C2=A0=C2=A0 0.000000] Kernel command line: coherent_pool=3D1M 8250.=
nr_uarts=3D1 snd_bcm2835.enable_compat_alsa=3D0 snd_bcm2835.enable_hdmi=3D1=
=C2=A0 smsc95xx.macaddr=3DE4:5F:01:49:E3:A0 vc_mem.mem_base=3D0x3ec00000 vc=
_mem.mem_size=3D0x40000000=C2=A0 dwc_otg.lpm_enable=3D0 console=3DttyS0,115=
200 root=3D/dev/mmcblk0p2 rootfstype=3Dext4 rootwait
[=C2=A0=C2=A0=C2=A0 0.000000] Dentry cache hash table entries: 131072 (orde=
r: 8, 1048576 bytes, linear)
[=C2=A0=C2=A0=C2=A0 0.000000] Inode-cache hash table entries: 65536 (order:=
 7, 524288 bytes, linear)
[=C2=A0=C2=A0=C2=A0 0.000000] mem auto-init: stack:off, heap alloc:off, hea=
p free:off
[=C2=A0=C2=A0=C2=A0 0.000000] Memory: 663720K/970752K available (12416K ker=
nel code, 1992K rwdata, 4440K rodata, 3968K init, 1267K bss, 44888K reserve=
d, 262144K cma-reserved)
[=C2=A0=C2=A0=C2=A0 0.000000] SLUB: HWalign=3D64, Order=3D0-3, MinObjects=
=3D0, CPUs=3D4, Nodes=3D1
[=C2=A0=C2=A0=C2=A0 0.000000] ftrace: allocating 39462 entries in 155 pages
[=C2=A0=C2=A0=C2=A0 0.000000] ftrace: allocated 155 pages with 5 groups
[=C2=A0=C2=A0=C2=A0 0.000000] rcu: Preemptible hierarchical RCU implementat=
ion.
[=C2=A0=C2=A0=C2=A0 0.000000] rcu:=C2=A0=C2=A0=C2=A0=C2=A0 RCU event tracin=
g is enabled.
[=C2=A0=C2=A0=C2=A0 0.000000] rcu:=C2=A0=C2=A0=C2=A0=C2=A0 RCU restricting =
CPUs from NR_CPUS=3D256 to nr_cpu_ids=3D4.
[=C2=A0=C2=A0=C2=A0 0.000000]=C2=A0 Trampoline variant of Tasks RCU enabled=
.
[=C2=A0=C2=A0=C2=A0 0.000000]=C2=A0 Rude variant of Tasks RCU enabled.
[=C2=A0=C2=A0=C2=A0 0.000000]=C2=A0 Tracing variant of Tasks RCU enabled.
[=C2=A0=C2=A0=C2=A0 0.000000] rcu: RCU calculated value of scheduler-enlist=
ment delay is 25 jiffies.
[=C2=A0=C2=A0=C2=A0 0.000000] rcu: Adjusting geometry for rcu_fanout_leaf=
=3D16, nr_cpu_ids=3D4
[=C2=A0=C2=A0=C2=A0 0.000000] NR_IRQS: 64, nr_irqs: 64, preallocated irqs: =
0
[=C2=A0=C2=A0=C2=A0 0.000000] GIC: Using split EOI/Deactivate mode
[=C2=A0=C2=A0=C2=A0 0.000000] irq_brcmstb_l2: registered L2 intc (/soc/inte=
rrupt-controller@7ef00100, parent irq: 10)
[=C2=A0=C2=A0=C2=A0 0.000000] random: get_random_bytes called from start_ke=
rnel+0x3b4/0x574 with crng_init=3D1
[=C2=A0=C2=A0=C2=A0 0.000000] arch_timer: cp15 timer(s) running at 54.00MHz=
 (phys).
[=C2=A0=C2=A0=C2=A0 0.000000] clocksource: arch_sys_counter: mask: 0xffffff=
ffffffff max_cycles: 0xc743ce346, max_idle_ns: 440795203123 ns
[=C2=A0=C2=A0=C2=A0 0.000006] sched_clock: 56 bits at 54MHz, resolution 18n=
s, wraps every 4398046511102ns
[=C2=A0=C2=A0=C2=A0 0.000246] Console: colour dummy device 80x25
[=C2=A0=C2=A0=C2=A0 0.000305] Calibrating delay loop (skipped), value calcu=
lated using timer frequency.. 108.00 BogoMIPS (lpj=3D216000)
[=C2=A0=C2=A0=C2=A0 0.000334] pid_max: default: 32768 minimum: 301
[=C2=A0=C2=A0=C2=A0 0.000480] LSM: Security Framework initializing
[=C2=A0=C2=A0=C2=A0 0.000658] Mount-cache hash table entries: 2048 (order: =
2, 16384 bytes, linear)
[=C2=A0=C2=A0=C2=A0 0.000688] Mountpoint-cache hash table entries: 2048 (or=
der: 2, 16384 bytes, linear)
[=C2=A0=C2=A0=C2=A0 0.001948] cgroup: Disabling memory control group subsys=
tem
[=C2=A0=C2=A0=C2=A0 0.004198] rcu: Hierarchical SRCU implementation.
[=C2=A0=C2=A0=C2=A0 0.005174] EFI services will not be available.
[=C2=A0=C2=A0=C2=A0 0.005670] smp: Bringing up secondary CPUs ...
[=C2=A0=C2=A0=C2=A0 0.006642] Detected PIPT I-cache on CPU1
[=C2=A0=C2=A0=C2=A0 0.006713] CPU1: Booted secondary processor 0x0000000001=
 [0x410fd083]
[=C2=A0=C2=A0=C2=A0 0.007803] Detected PIPT I-cache on CPU2
[=C2=A0=C2=A0=C2=A0 0.007850] CPU2: Booted secondary processor 0x0000000002=
 [0x410fd083]
[=C2=A0=C2=A0=C2=A0 0.008988] Detected PIPT I-cache on CPU3
[=C2=A0=C2=A0=C2=A0 0.009034] CPU3: Booted secondary processor 0x0000000003=
 [0x410fd083]
[=C2=A0=C2=A0=C2=A0 0.009215] smp: Brought up 1 node, 4 CPUs
[=C2=A0=C2=A0=C2=A0 0.009260] SMP: Total of 4 processors activated.
[=C2=A0=C2=A0=C2=A0 0.009277] CPU features: detected: 32-bit EL0 Support
[=C2=A0=C2=A0=C2=A0 0.009294] CPU features: detected: CRC32 instructions
[=C2=A0=C2=A0=C2=A0 0.009311] CPU features: detected: 32-bit EL1 Support
[=C2=A0=C2=A0=C2=A0 0.044411] CPU: All CPU(s) started at EL2
[=C2=A0=C2=A0=C2=A0 0.044481] alternatives: patching kernel code
[=C2=A0=C2=A0=C2=A0 0.045650] devtmpfs: initialized
[=C2=A0=C2=A0=C2=A0 0.055650] Enabled cp15_barrier support
[=C2=A0=C2=A0=C2=A0 0.055694] Enabled setend support
[=C2=A0=C2=A0=C2=A0 0.056029] clocksource: jiffies: mask: 0xffffffff max_cy=
cles: 0xffffffff, max_idle_ns: 7645041785100000 ns
[=C2=A0=C2=A0=C2=A0 0.056097] futex hash table entries: 1024 (order: 4, 655=
36 bytes, linear)
[=C2=A0=C2=A0=C2=A0 0.063289] pinctrl core: initialized pinctrl subsystem
[=C2=A0=C2=A0=C2=A0 0.064024] DMI not present or invalid.
[=C2=A0=C2=A0=C2=A0 0.064444] NET: Registered protocol family 16
[=C2=A0=C2=A0=C2=A0 0.067843] DMA: preallocated 1024 KiB GFP_KERNEL pool fo=
r atomic allocations
[=C2=A0=C2=A0=C2=A0 0.068456] DMA: preallocated 1024 KiB GFP_KERNEL|GFP_DMA=
 pool for atomic allocations
[=C2=A0=C2=A0=C2=A0 0.069414] DMA: preallocated 1024 KiB GFP_KERNEL|GFP_DMA=
32 pool for atomic allocations
[=C2=A0=C2=A0=C2=A0 0.069523] audit: initializing netlink subsys (disabled)
[=C2=A0=C2=A0=C2=A0 0.069799] audit: type=3D2000 audit(0.068:1): state=3Din=
itialized audit_enabled=3D0 res=3D1
[=C2=A0=C2=A0=C2=A0 0.070316] thermal_sys: Registered thermal governor 'ste=
p_wise'
[=C2=A0=C2=A0=C2=A0 0.070532] cpuidle: using governor menu
[=C2=A0=C2=A0=C2=A0 0.070728] hw-breakpoint: found 6 breakpoint and 4 watch=
point registers.
[=C2=A0=C2=A0=C2=A0 0.070927] ASID allocator initialised with 65536 entries
[=C2=A0=C2=A0=C2=A0 0.071060] Serial: AMBA PL011 UART driver
[=C2=A0=C2=A0=C2=A0 0.110080] bcm2835-mbox fe00b880.mailbox: mailbox enable=
d
[=C2=A0=C2=A0=C2=A0 0.116379] raspberrypi-firmware soc:firmware: Attached t=
o firmware from 2021-09-30T19:21:03, variant start
[=C2=A0=C2=A0=C2=A0 0.120394] raspberrypi-firmware soc:firmware: Firmware h=
ash is 51215b4f6e3966401ecd99652a35cf1c25069113
[=C2=A0=C2=A0=C2=A0 0.153635] bcm2835-dma fe007000.dma: DMA legacy API mana=
ger, dmachans=3D0x1
[=C2=A0=C2=A0=C2=A0 0.157672] vgaarb: loaded
[=C2=A0=C2=A0=C2=A0 0.158083] SCSI subsystem initialized
[=C2=A0=C2=A0=C2=A0 0.158307] usbcore: registered new interface driver usbf=
s
[=C2=A0=C2=A0=C2=A0 0.158363] usbcore: registered new interface driver hub
[=C2=A0=C2=A0=C2=A0 0.158429] usbcore: registered new device driver usb
[=C2=A0=C2=A0=C2=A0 0.158788] usb_phy_generic phy: supply vcc not found, us=
ing dummy regulator
[=C2=A0=C2=A0=C2=A0 0.159737] Advanced Linux Sound Architecture Driver Init=
ialized.
[=C2=A0=C2=A0=C2=A0 0.160822] clocksource: Switched to clocksource arch_sys=
_counter
[=C2=A0=C2=A0=C2=A0 1.180587] VFS: Disk quotas dquot_6.6.0
[=C2=A0=C2=A0=C2=A0 1.180699] VFS: Dquot-cache hash table entries: 512 (ord=
er 0, 4096 bytes)
[=C2=A0=C2=A0=C2=A0 1.180878] FS-Cache: Loaded
[=C2=A0=C2=A0=C2=A0 1.181104] CacheFiles: Loaded
[=C2=A0=C2=A0=C2=A0 1.191916] NET: Registered protocol family 2
[=C2=A0=C2=A0=C2=A0 1.192151] IP idents hash table entries: 16384 (order: 5=
, 131072 bytes, linear)
[=C2=A0=C2=A0=C2=A0 1.193473] tcp_listen_portaddr_hash hash table entries: =
512 (order: 1, 8192 bytes, linear)
[=C2=A0=C2=A0=C2=A0 1.193507] TCP established hash table entries: 8192 (ord=
er: 4, 65536 bytes, linear)
[=C2=A0=C2=A0=C2=A0 1.193668] TCP bind hash table entries: 8192 (order: 5, =
131072 bytes, linear)
[=C2=A0=C2=A0=C2=A0 1.193793] TCP: Hash tables configured (established 8192=
 bind 8192)
[=C2=A0=C2=A0=C2=A0 1.193995] UDP hash table entries: 512 (order: 2, 16384 =
bytes, linear)
[=C2=A0=C2=A0=C2=A0 1.194028] UDP-Lite hash table entries: 512 (order: 2, 1=
6384 bytes, linear)
[=C2=A0=C2=A0=C2=A0 1.194293] NET: Registered protocol family 1
[=C2=A0=C2=A0=C2=A0 1.195120] RPC: Registered named UNIX socket transport m=
odule.
[=C2=A0=C2=A0=C2=A0 1.195137] RPC: Registered udp transport module.
[=C2=A0=C2=A0=C2=A0 1.195152] RPC: Registered tcp transport module.
[=C2=A0=C2=A0=C2=A0 1.195166] RPC: Registered tcp NFSv4.1 backchannel trans=
port module.
[=C2=A0=C2=A0=C2=A0 1.195189] PCI: CLS 0 bytes, default 64
[=C2=A0=C2=A0=C2=A0 1.197342] hw perfevents: enabled with armv8_cortex_a72 =
PMU driver, 7 counters available
[=C2=A0=C2=A0=C2=A0 1.197623] kvm [1]: IPA Size Limit: 44 bits
[=C2=A0=C2=A0=C2=A0 1.198801] kvm [1]: vgic interrupt IRQ9
[=C2=A0=C2=A0=C2=A0 1.199075] kvm [1]: Hyp mode initialized successfully
[=C2=A0=C2=A0=C2=A0 1.201677] Initialise system trusted keyrings
[=C2=A0=C2=A0=C2=A0 1.202005] workingset: timestamp_bits=3D46 max_order=3D1=
8 bucket_order=3D0
[=C2=A0=C2=A0=C2=A0 1.208121] zbud: loaded
[=C2=A0=C2=A0=C2=A0 1.209754] squashfs: version 4.0 (2009/01/31) Phillip Lo=
ugher
[=C2=A0=C2=A0=C2=A0 1.210008] FS-Cache: Netfs 'nfs' registered for caching
[=C2=A0=C2=A0=C2=A0 1.210671] NFS: Registering the id_resolver key type
[=C2=A0=C2=A0=C2=A0 1.210716] Key type id_resolver registered
[=C2=A0=C2=A0=C2=A0 1.210732] Key type id_legacy registered
[=C2=A0=C2=A0=C2=A0 1.210855] nfs4filelayout_init: NFSv4 File Layout Driver=
 Registering...
[=C2=A0=C2=A0=C2=A0 1.210872] nfs4flexfilelayout_init: NFSv4 Flexfile Layou=
t Driver Registering...
[=C2=A0=C2=A0=C2=A0 1.211950] Key type asymmetric registered
[=C2=A0=C2=A0=C2=A0 1.211969] Asymmetric key parser 'x509' registered
[=C2=A0=C2=A0=C2=A0 1.212019] Block layer SCSI generic (bsg) driver version=
 0.4 loaded (major 247)
[=C2=A0=C2=A0=C2=A0 1.212271] io scheduler mq-deadline registered
[=C2=A0=C2=A0=C2=A0 1.212289] io scheduler kyber registered
[=C2=A0=C2=A0=C2=A0 1.216591] gpio-507 (ant1): hogged as output/high
[=C2=A0=C2=A0=C2=A0 1.217956] gpio-511 (ant2): hogged as output/low
[=C2=A0=C2=A0=C2=A0 1.219110] brcm-pcie fd500000.pcie: host bridge /scb/pci=
e@7d500000 ranges:
[=C2=A0=C2=A0=C2=A0 1.219142] brcm-pcie fd500000.pcie:=C2=A0=C2=A0 No bus r=
ange found for /scb/pcie@7d500000, using [bus 00-ff]
[=C2=A0=C2=A0=C2=A0 1.219215] brcm-pcie fd500000.pcie:=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 MEM 0x0600000000..0x063fffffff -> 0x00c0000000
[=C2=A0=C2=A0=C2=A0 1.219295] brcm-pcie fd500000.pcie:=C2=A0=C2=A0 IB MEM 0=
x0000000000..0x003fffffff -> 0x0400000000
[=C2=A0=C2=A0=C2=A0 1.536845] brcm-pcie fd500000.pcie: link down
[=C2=A0=C2=A0=C2=A0 1.542588] Serial: 8250/16550 driver, 1 ports, IRQ shari=
ng enabled
[=C2=A0=C2=A0=C2=A0 1.543460] bcm2835-aux-uart fe215040.serial: there is no=
t valid maps for state default
[=C2=A0=C2=A0=C2=A0 1.545765] iproc-rng200 fe104000.rng: hwrng registered
[=C2=A0=C2=A0=C2=A0 1.546149] vc-mem: phys_addr:0x00000000 mem_base=3D0x3ec=
00000 mem_size:0x40000000(1024 MiB)
[=C2=A0=C2=A0=C2=A0 1.547472] gpiomem-bcm2835 fe200000.gpiomem: Initialised=
: Registers at 0xfe200000
[=C2=A0=C2=A0=C2=A0 1.557763] vc4-drm gpu: bound fe400000.hvs (ops vc4_hvs_=
ops)
[=C2=A0=C2=A0=C2=A0 1.558622] cacheinfo: Unable to detect cache hierarchy f=
or CPU 0
[=C2=A0=C2=A0=C2=A0 1.569652] brd: module loaded
[=C2=A0=C2=A0=C2=A0 1.581572] loop: module loaded
[=C2=A0=C2=A0=C2=A0 1.583327] Loading iSCSI transport class v2.0-870.
[=C2=A0=C2=A0=C2=A0 1.586751] libphy: Fixed MDIO Bus: probed
[=C2=A0=C2=A0=C2=A0 1.588364] bcmgenet fd580000.ethernet: GENET 5.0 EPHY: 0=
x0000
[=C2=A0=C2=A0=C2=A0 1.600865] libphy: bcmgenet MII bus: probed
[=C2=A0=C2=A0=C2=A0 1.648957] unimac-mdio unimac-mdio.-19: Broadcom UniMAC =
MDIO bus
[=C2=A0=C2=A0=C2=A0 1.650027] usbcore: registered new interface driver r815=
2
[=C2=A0=C2=A0=C2=A0 1.650094] usbcore: registered new interface driver lan7=
8xx
[=C2=A0=C2=A0=C2=A0 1.650149] usbcore: registered new interface driver smsc=
95xx
[=C2=A0=C2=A0=C2=A0 1.650714] dwc_otg: version 3.00a 10-AUG-2012 (platform =
bus)
[=C2=A0=C2=A0=C2=A0 1.651548] usbcore: registered new interface driver uas
[=C2=A0=C2=A0=C2=A0 1.651609] usbcore: registered new interface driver usb-=
storage
[=C2=A0=C2=A0=C2=A0 1.651837] mousedev: PS/2 mouse device common for all mi=
ce
[=C2=A0=C2=A0=C2=A0 1.651886] i2c /dev entries driver
[=C2=A0=C2=A0=C2=A0 1.652742] Driver for 1-wire Dallas network protocol.
[=C2=A0=C2=A0=C2=A0 1.655022] bcm2835-wdt bcm2835-wdt: Broadcom BCM2835 wat=
chdog timer
[=C2=A0=C2=A0=C2=A0 1.658246] sdhci: Secure Digital Host Controller Interfa=
ce driver
[=C2=A0=C2=A0=C2=A0 1.658264] sdhci: Copyright(c) Pierre Ossman
[=C2=A0=C2=A0=C2=A0 1.659020] mmc-bcm2835 fe300000.mmcnr: could not get clk=
, deferring probe
[=C2=A0=C2=A0=C2=A0 1.661482] sdhci-pltfm: SDHCI platform and OF driver hel=
per
[=C2=A0=C2=A0=C2=A0 1.664363] ledtrig-cpu: registered to indicate activity =
on CPUs
[=C2=A0=C2=A0=C2=A0 1.664701] hid: raw HID events driver (C) Jiri Kosina
[=C2=A0=C2=A0=C2=A0 1.664947] usbcore: registered new interface driver usbh=
id
[=C2=A0=C2=A0=C2=A0 1.664963] usbhid: USB HID core driver
[=C2=A0=C2=A0=C2=A0 1.665261] ashmem: initialized
[=C2=A0=C2=A0=C2=A0 1.674480] Initializing XFRM netlink socket
[=C2=A0=C2=A0=C2=A0 1.674534] NET: Registered protocol family 17
[=C2=A0=C2=A0=C2=A0 1.674650] Key type dns_resolver registered
[=C2=A0=C2=A0=C2=A0 1.675067] registered taskstats version 1
[=C2=A0=C2=A0=C2=A0 1.675096] Loading compiled-in X.509 certificates
[=C2=A0=C2=A0=C2=A0 1.675717] Key type ._fscrypt registered
[=C2=A0=C2=A0=C2=A0 1.675736] Key type .fscrypt registered
[=C2=A0=C2=A0=C2=A0 1.675751] Key type fscrypt-provisioning registered
[=C2=A0=C2=A0=C2=A0 1.686689] uart-pl011 fe201000.serial: there is not vali=
d maps for state default
[=C2=A0=C2=A0=C2=A0 1.686966] uart-pl011 fe201000.serial: cts_event_workaro=
und enabled
[=C2=A0=C2=A0=C2=A0 1.687068] fe201000.serial: ttyAMA0 at MMIO 0xfe201000 (=
irq =3D 23, base_baud =3D 0) is a PL011 rev2
[=C2=A0=C2=A0=C2=A0 1.693178] bcm2835-aux-uart fe215040.serial: there is no=
t valid maps for state default
[=C2=A0=C2=A0=C2=A0 1.693806] printk: console [ttyS0] disabled
[=C2=A0=C2=A0=C2=A0 1.693923] fe215040.serial: ttyS0 at MMIO 0xfe215040 (ir=
q =3D 24, base_baud =3D 62500000) is a 16550
[=C2=A0=C2=A0=C2=A0 2.811548] printk: console [ttyS0] enabled
[=C2=A0=C2=A0=C2=A0 2.820987] vc4-drm gpu: bound fe400000.hvs (ops vc4_hvs_=
ops)
[=C2=A0=C2=A0=C2=A0 2.827771] bcm2835-power bcm2835-power: Broadcom BCM2835=
 power domains driver
[=C2=A0=C2=A0=C2=A0 2.837670] mmc-bcm2835 fe300000.mmcnr: mmc_debug:0 mmc_d=
ebug2:0
[=C2=A0=C2=A0=C2=A0 2.843863] mmc-bcm2835 fe300000.mmcnr: DMA channel alloc=
ated
[=C2=A0=C2=A0=C2=A0 2.880304] vc4-drm gpu: bound fe400000.hvs (ops vc4_hvs_=
ops)
[=C2=A0=C2=A0=C2=A0 2.891380] vc4-drm gpu: bound fe400000.hvs (ops vc4_hvs_=
ops)
[=C2=A0=C2=A0=C2=A0 2.900692] of_cfs_init
[=C2=A0=C2=A0=C2=A0 2.903346] of_cfs_init: OK
[=C2=A0=C2=A0=C2=A0 2.906233] mmc1: queuing unknown CIS tuple 0x80 (2 bytes=
)
[=C2=A0=C2=A0=C2=A0 2.913529] mmc1: queuing unknown CIS tuple 0x80 (3 bytes=
)
[=C2=A0=C2=A0=C2=A0 2.914316] mmc0: SDHCI controller on fe340000.mmc [fe340=
000.mmc] using ADMA
[=C2=A0=C2=A0=C2=A0 2.920774] mmc1: queuing unknown CIS tuple 0x80 (3 bytes=
)
[=C2=A0=C2=A0=C2=A0 2.927726] ALSA device list:
[=C2=A0=C2=A0=C2=A0 2.931646] vc4-drm gpu: bound fe400000.hvs (ops vc4_hvs_=
ops)
[=C2=A0=C2=A0=C2=A0 2.934870] mmc1: queuing unknown CIS tuple 0x80 (7 bytes=
)
[=C2=A0=C2=A0=C2=A0 2.934914]=C2=A0=C2=A0 No soundcards found.
[=C2=A0=C2=A0=C2=A0 2.942397] mmc1: queuing unknown CIS tuple 0x80 (3 bytes=
)
[=C2=A0=C2=A0=C2=A0 2.956053] Waiting for root device /dev/mmcblk0p2...
[=C2=A0=C2=A0=C2=A0 3.019902] mmc1: new high speed SDIO card at address 000=
1
[=C2=A0=C2=A0=C2=A0 3.027907] mmc0: new ultra high speed DDR50 SDHC card at=
 address aaaa
[=C2=A0=C2=A0=C2=A0 3.035470] mmcblk0: mmc0:aaaa SC16G 14.8 GiB
[=C2=A0=C2=A0=C2=A0 3.046464]=C2=A0 mmcblk0: p1 p2
[=C2=A0=C2=A0=C2=A0 3.055549] vc4-drm gpu: bound fe400000.hvs (ops vc4_hvs_=
ops)
[=C2=A0=C2=A0=C2=A0 3.083634] EXT4-fs (mmcblk0p2): mounted filesystem with =
ordered data mode. Opts: (null)
[=C2=A0=C2=A0=C2=A0 3.092049] VFS: Mounted root (ext4 filesystem) readonly =
on device 179:2.
[=C2=A0=C2=A0=C2=A0 3.102781] devtmpfs: mounted
[=C2=A0=C2=A0=C2=A0 3.113385] Freeing unused kernel memory: 3968K
[=C2=A0=C2=A0=C2=A0 3.118193] Run /sbin/init as init process
[=C2=A0=C2=A0=C2=A0 3.327246] systemd[1]: System time before build time, ad=
vancing clock.
[=C2=A0=C2=A0=C2=A0 3.408332] NET: Registered protocol family 10
[=C2=A0=C2=A0=C2=A0 3.414333] Segment Routing with IPv6
[=C2=A0=C2=A0=C2=A0 3.456287] systemd[1]: systemd 249.7+ running in system =
mode (+PAM -AUDIT -SELINUX -APPARMOR +IMA -SMACK +SECCOMP -GCRYPT -GNUTLS -=
OPENSSL +ACL +BLKID -CURL -ELFUTILS -FIDO2 -IDN2 -IDN -IPTC +KMOD -LIBCRYPT=
SETUP +LIBFDISK -PCRE2 -PWQUALITY -P11KIT -QRENCODE -BZIP2 -LZ4 -XZ -ZLIB +=
ZSTD +XKBCOMMON +UTMP +SYSVINIT default-hierarchy=3Dhybrid)
[=C2=A0=C2=A0=C2=A0 3.487567] systemd[1]: Detected architecture arm64.

Welcome to OpenEmbedded nodistro.0!

[=C2=A0=C2=A0=C2=A0 3.540979] systemd[1]: Hostname set to <raspberrypi4-64>=
.
[=C2=A0=C2=A0=C2=A0 3.552504] random: systemd: uninitialized urandom read (=
16 bytes read)
[=C2=A0=C2=A0=C2=A0 3.559368] systemd[1]: Initializing machine ID from rand=
om generator.
[=C2=A0=C2=A0=C2=A0 3.566376] systemd[1]: Installed transient /etc/machine-=
id file.
[=C2=A0=C2=A0=C2=A0 3.640033] systemd-fstab-generator[107]: Failed to creat=
e unit file /run/systemd/generator/boot.mount, as it already exists. Duplic=
ate entry in /etc/fstab?
[=C2=A0=C2=A0=C2=A0 3.699053] systemd[105]: /lib/systemd/system-generators/=
systemd-fstab-generator failed with exit status 1.
[=C2=A0=C2=A0=C2=A0 4.074995] systemd[1]: Queued start job for default targ=
et Multi-User System.
[=C2=A0=C2=A0=C2=A0 4.083709] random: systemd: uninitialized urandom read (=
16 bytes read)
[=C2=A0=C2=A0=C2=A0 4.137482] systemd[1]: Created slice Slice /system/getty=
.
[=C2=A0 OK=C2=A0 ] Created slice Slice /system/getty.
[=C2=A0=C2=A0=C2=A0 4.161062] random: systemd: uninitialized urandom read (=
16 bytes read)
[=C2=A0=C2=A0=C2=A0 4.169819] systemd[1]: Created slice Slice /system/modpr=
obe.
[=C2=A0 OK=C2=A0 ] Created slice Slice /system/modprobe.
[=C2=A0=C2=A0=C2=A0 4.194908] systemd[1]: Created slice Slice /system/seria=
l-getty.
[=C2=A0 OK=C2=A0 ] Created slice Slice /system/serial-getty.
[=C2=A0=C2=A0=C2=A0 4.218857] systemd[1]: Created slice Slice /system/wpa_s=
upplicant-nl80211.
[=C2=A0 OK=C2=A0 ] Created slice Slice /system/wpa_supplicant-nl80211.
[=C2=A0=C2=A0=C2=A0 4.246570] systemd[1]: Created slice User and Session Sl=
ice.
[=C2=A0 OK=C2=A0 ] Created slice User and Session Slice.
[=C2=A0=C2=A0=C2=A0 4.269477] systemd[1]: Started Dispatch Password Request=
s to Console Directory Watch.
[=C2=A0 OK=C2=A0 ] Started Dispatch Password =E2=80=A6ts to Console Directo=
ry Watch.
[=C2=A0=C2=A0=C2=A0 4.297403] systemd[1]: Started Forward Password Requests=
 to Wall Directory Watch.
[=C2=A0 OK=C2=A0 ] Started Forward Password R=E2=80=A6uests to Wall Directo=
ry Watch.
[=C2=A0=C2=A0=C2=A0 4.325329] systemd[1]: Reached target Path Units.
[=C2=A0 OK=C2=A0 ] Reached target Path Units.
[=C2=A0=C2=A0=C2=A0 4.345071] systemd[1]: Reached target Remote File System=
s.
[=C2=A0 OK=C2=A0 ] Reached target Remote File Systems.
[=C2=A0=C2=A0=C2=A0 4.365050] systemd[1]: Reached target Slice Units.
[=C2=A0 OK=C2=A0 ] Reached target Slice Units.
[=C2=A0=C2=A0=C2=A0 4.385058] systemd[1]: Reached target Swaps.
[=C2=A0 OK=C2=A0 ] Reached target Swaps.
[=C2=A0=C2=A0=C2=A0 4.433090] systemd[1]: Listening on RPCbind Server Activ=
ation Socket.
[=C2=A0 OK=C2=A0 ] Listening on RPCbind Server Activation Socket.
[=C2=A0=C2=A0=C2=A0 4.457275] systemd[1]: Reached target RPC Port Mapper.
[=C2=A0 OK=C2=A0 ] Reached target RPC Port Mapper.
[=C2=A0=C2=A0=C2=A0 4.477987] systemd[1]: Listening on Syslog Socket.
[=C2=A0 OK=C2=A0 ] Listening on Syslog Socket.
[=C2=A0=C2=A0=C2=A0 4.497387] systemd[1]: Listening on initctl Compatibilit=
y Named Pipe.
[=C2=A0 OK=C2=A0 ] Listening on initctl Compatibility Named Pipe.
[=C2=A0=C2=A0=C2=A0 4.522088] systemd[1]: Listening on Journal Audit Socket=
.
[=C2=A0 OK=C2=A0 ] Listening on Journal Audit Socket.
[=C2=A0=C2=A0=C2=A0 4.545647] systemd[1]: Listening on Journal Socket (/dev=
/log).
[=C2=A0 OK=C2=A0 ] Listening on Journal Socket (/dev/log).
[=C2=A0=C2=A0=C2=A0 4.569877] systemd[1]: Listening on Journal Socket.
[=C2=A0 OK=C2=A0 ] Listening on Journal Socket.
[=C2=A0=C2=A0=C2=A0 4.589940] systemd[1]: Listening on Network Service Netl=
ink Socket.
[=C2=A0 OK=C2=A0 ] Listening on Network Service Netlink Socket.
[=C2=A0=C2=A0=C2=A0 4.613846] systemd[1]: Listening on udev Control Socket.
[=C2=A0 OK=C2=A0 ] Listening on udev Control Socket.
[=C2=A0=C2=A0=C2=A0 4.637603] systemd[1]: Listening on udev Kernel Socket.
[=C2=A0 OK=C2=A0 ] Listening on udev Kernel Socket.
[=C2=A0=C2=A0=C2=A0 4.661623] systemd[1]: Listening on User Database Manage=
r Socket.
[=C2=A0 OK=C2=A0 ] Listening on User Database Manager Socket.
[=C2=A0=C2=A0=C2=A0 4.685838] systemd[1]: Condition check resulted in Huge =
Pages File System being skipped.
[=C2=A0=C2=A0=C2=A0 4.698792] systemd[1]: Mounting POSIX Message Queue File=
 System...
Mounting POSIX Message Queue File System...
[=C2=A0=C2=A0=C2=A0 4.725788] systemd[1]: Mounting Kernel Debug File System=
...
Mounting Kernel Debug File System...
[=C2=A0=C2=A0=C2=A0 4.757718] systemd[1]: Mounting Kernel Trace File System=
...
Mounting Kernel Trace File System...
[=C2=A0=C2=A0=C2=A0 4.789511] systemd[1]: Mounting Temporary Directory /tmp=
...
Mounting Temporary Directory /tmp...
[=C2=A0=C2=A0=C2=A0 4.814515] systemd[1]: Starting Create List of Static De=
vice Nodes...
Starting Create List of Static Device Nodes...
[=C2=A0=C2=A0=C2=A0 4.841861] systemd[1]: Starting Load Kernel Module confi=
gfs...
Starting Load Kernel Module configfs...
[=C2=A0=C2=A0=C2=A0 4.869773] systemd[1]: Starting Load Kernel Module drm..=
.
Starting Load Kernel Module drm...
[=C2=A0=C2=A0=C2=A0 4.893853] systemd[1]: Starting Load Kernel Module fuse.=
..
Starting Load Kernel Module fuse...
[=C2=A0=C2=A0=C2=A0 4.920607] fuse: init (API version 7.32)
[=C2=A0=C2=A0=C2=A0 4.922212] systemd[1]: Starting Start psplash boot splas=
h screen...
Starting Start psplash boot splash screen...
[=C2=A0=C2=A0=C2=A0 4.954277] systemd[1]: Starting RPC Bind...
Starting RPC Bind...
[=C2=A0=C2=A0=C2=A0 4.978095] systemd[1]: Starting File System Check on Roo=
t Device...
Starting File System Check on Root Device...
[=C2=A0=C2=A0=C2=A0 5.009819] systemd[1]: Starting Journal Service...
Starting Journal Service..[=C2=A0=C2=A0=C2=A0 5.018672] systemd[1]: Conditi=
on check resulted in Load Kernel Modules being skipped.
.
[=C2=A0=C2=A0=C2=A0 5.033667] systemd[1]: Starting Apply Kernel Variables..=
.
Starting Apply Kernel Variables...
[=C2=A0=C2=A0=C2=A0 5.045884] systemd[1]: Starting Coldplug All udev Device=
s...
Starting Coldplug All udev Devices...
[=C2=A0=C2=A0=C2=A0 5.065621] systemd[1]: Started RPC Bind.
[=C2=A0 OK=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 5.070888] systemd[1]: Mounted POSI=
X Message Queue File System.
0m] Started=C2=A0=C2=A0=C2=A0=C2=A0 5.078603] systemd[1]: Mounted Kernel De=
bug File System.
1;39mRPC Bind.
[=C2=A0=C2=A0=C2=A0 5.085789] systemd[1]: Mounted Kernel Trace File System.
;32m=C2=A0 OK=C2=A0 ] Mounted [=C2=A0=C2=A0=C2=A0 5.093484] systemd[1]: Mou=
nted Temporary Directory /tmp.
POSIX Message Queue File System.
[[=C2=A0=C2=A0=C2=A0 5.103087] systemd[1]: Finished Create List of Static D=
evice Nodes.
OK=C2=A0 ] Mounted=C2=A0=C2=A0=C2=A0=C2=A0 5.112765] systemd[1]: modprobe@c=
onfigfs.service: Deactivated successfully.
;39mKernel Debug File System[=C2=A0=C2=A0=C2=A0 5.122750] systemd[1]: Finis=
hed Load Kernel Module configfs.
.
[=C2=A0 OK=C2=A0 ] Mounted=C2=A0 systemd[1]: modprobe@drm.service: Deactiva=
ted successfully.
[0;1;39mKernel Trace File System[=C2=A0=C2=A0=C2=A0 5.141000] systemd[1]: F=
inished Load Kernel Module drm.
.
[=C2=A0 OK=C2=A0 ] Mount[=C2=A0=C2=A0=C2=A0 5.149229] systemd[1]: modprobe@=
fuse.service: Deactivated successfully.
ed Temporary Directory [=C2=A0=C2=A0=C2=A0 5.158928] systemd[1]: Finished L=
oad Kernel Module fuse.
/tmp.
[=C2=A0 OK [=C2=A0=C2=A0=C2=A0 5.166274] systemd[1]: psplash-start.service:=
 Main process exited, code=3Dexited, status=3D255/EXCEPTION
] Finished [=C2=A0=C2=A0=C2=A0 5.177531] systemd[1]: psplash-start.service:=
 Failed with result 'exit-code'.
Create List of Static Device No[=C2=A0=C2=A0=C2=A0 5.188088] systemd[1]: Fa=
iled to start Start psplash boot splash screen.
des.
[=C2=A0=C2=A0=C2=A0 5.196215] systemd[1]: Dependency failed for Start pspla=
sh-systemd progress communication helper.
2m=C2=A0 OK=C2=A0 [=C2=A0=C2=A0=C2=A0 5.206502] systemd[1]: psplash-systemd=
.service: Job psplash-systemd.service/start failed with result 'dependency'=
.
] Finished Load Kernel Module confi[=C2=A0=C2=A0=C2=A0 5.220887] systemd[1]=
: Finished Apply Kernel Variables.
gfs.
[=C2=A0 OK=C2=A0 ] Finished Load Kernel Module drm.
[=C2=A0 O[=C2=A0=C2=A0=C2=A0 5.234289] systemd[1]: Mounting FUSE Control Fi=
le System...
K=C2=A0 ] Finished Load Kernel Module fuse.
[FAILE[=C2=A0=C2=A0=C2=A0 5.246549] systemd[1]: Mounting Kernel Configurati=
on File System...
D] Failed to start Start psplash boot splash screen.
See 'systemctl status psplash-start.service' for details.
[DEPEND] Dependency failed for Star=E2=80=A6progress communication helper.
[=C2=A0 OK=C2=A0 ] Finished Apply Kernel Variables.
Mounting FUSE Control File System...
Mounting Kernel Configuration File System...
[=C2=A0=C2=A0=C2=A0 5.313974] systemd[1]: Started Journal Service.
[=C2=A0 OK=C2=A0 ] Started Journal Service.
[=C2=A0 OK=C2=A0 ] Finished File System Check on Root Device.
[=C2=A0 OK=C2=A0 ] Mounted FUSE Control File System.
[=C2=A0 OK=C2=A0 ] Mounted Kernel Configuration File System.
Starting Remount Root and Kernel File Systems...
[=C2=A0=C2=A0=C2=A0 5.445206] EXT4-fs (mmcblk0p2): re-mounted. Opts: (null)
[=C2=A0 OK=C2=A0 ] Finished Remount Root and Kernel File Systems.
Starting Flush Journal to Persistent Storage...
Starting Create System[=C2=A0=C2=A0=C2=A0 5.510241] systemd-journald[135]: =
Received client request to flush runtime journal.
Users...
[=C2=A0 OK=C2=A0 ] Finished Flush Journal to Persistent Storage.
[=C2=A0 OK=C2=A0 ] Finished Coldplug All udev Devices.
[=C2=A0 OK=C2=A0 ] Finished Create System Users.
Starting Create Static Device Nodes in /dev...
[=C2=A0 OK=C2=A0 ] Finished Create Static Device Nodes in /dev.
[=C2=A0 OK=C2=A0 ] Reached target Preparation for Local File Systems.
Mounting /var/volatile...
[=C2=A0=C2=A0=C2=A0 5.802376] audit: type=3D1334 audit(1636549114.475:2): p=
rog-id=3D5 op=3DLOAD
[=C2=A0=C2=A0=C2=A0 5.809177] audit: type=3D1334 audit(1636549114.475:3): p=
rog-id=3D6 op=3DLOAD
Starting Rule-based Manage=E2=80=A6for Device Events and Files...
[=C2=A0 OK=C2=A0 ] Mounted /var/volatile.
Starting Load/Save Random Seed...
[=C2=A0 OK=C2=A0 ] Started Rule-based Manager for Device Events and Files.
Starting Network Configuration...
[=C2=A0=C2=A0=C2=A0 6.215697] vc4-drm gpu: bound fe400000.hvs (ops vc4_hvs_=
ops)
[=C2=A0=C2=A0=C2=A0 6.261009] rpivid-mem feb00000.hevc-decoder: rpivid-hevc=
mem initialised: Registers at 0xfeb00000 length 0x00010000
[=C2=A0=C2=A0=C2=A0 6.294000] vc4-drm gpu: bound fe400000.hvs (ops vc4_hvs_=
ops)
[=C2=A0=C2=A0=C2=A0 6.305014] rpivid-mem feb10000.rpivid-local-intc: rpivid=
-intcmem initialised: Registers at 0xfeb10000 length 0x00001000
[=C2=A0=C2=A0=C2=A0 6.330846] vc4-drm gpu: bound fe400000.hvs (ops vc4_hvs_=
ops)
[=C2=A0=C2=A0=C2=A0 6.332704] rpivid-mem feb20000.h264-decoder: rpivid-h264=
mem initialised: Registers at 0xfeb20000 length 0x00010000
[=C2=A0=C2=A0=C2=A0 6.353703] vc4-drm gpu: bound fe400000.hvs (ops vc4_hvs_=
ops)
[=C2=A0=C2=A0=C2=A0 6.369615] rpivid-mem feb30000.vp9-decoder: rpivid-vp9me=
m initialised: Registers at 0xfeb30000 length 0x00010000
[=C2=A0 OK=C2=A0 ] Found device[=C2=A0=C2=A0=C2=A0 6.387710] vc_sm_cma: mod=
ule is from the staging directory, the quality is unknown, you have been wa=
rned.
6.393632] vc4-drm gpu: bound fe400000.hvs (ops vc4_hvs_ops)
9m/dev/mmcblk0p1.
[=C2=A0=C2=A0=C2=A0 6.412765] mc: Linux media interface: v0.10
Mounting /boot...
[=C2=A0 OK=C2=A0 ] Star[=C2=A0=C2=A0=C2=A0 6.431869] bcm2835_vc_sm_cma_prob=
e: Videocore shared memory driver
ted=C2=A0=C2=A0=C2=A0=C2=A0 6.433163] bcmgenet fd580000.ethernet: configuri=
ng instance for external RGMII (RX delay)
1;39mNetwork Configuration.
[=C2=A0=C2=A0=C2=A0 6.451339] bcmgenet fd580000.ethernet eth0: Link is Down
[=C2=A0=C2=A0=C2=A0 6.457389] [vc_sm_connected_init]: start
Starting Wait for Network to be Configured...
[=C2=A0=C2=A0=C2=A0 6.477747] [vc_sm_connected_init]: installed successfull=
y
[=C2=A0=C2=A0=C2=A0 6.489525] videodev: Linux video capture interface: v2.0=
0
[=C2=A0=C2=A0=C2=A0 6.496669] vc4-drm gpu: bound fe400000.hvs (ops vc4_hvs_=
ops)
[=C2=A0=C2=A0=C2=A0 6.520255] brcmstb-i2c fef04500.i2c:=C2=A0 @97500hz regi=
stered in polling mode
[=C2=A0=C2=A0=C2=A0 6.533854] vc4-drm gpu: bound fe400000.hvs (ops vc4_hvs_=
ops)
[=C2=A0=C2=A0=C2=A0 6.541493] brcmstb-i2c fef09500.i2c:=C2=A0 @97500hz regi=
stered in polling mode
[=C2=A0=C2=A0=C2=A0 6.549647] Registered IR keymap rc-cec
[=C2=A0=C2=A0=C2=A0 6.553818] rc rc0: vc4 as /devices/platform/soc/fef00700=
.hdmi/rc/rc0
[=C2=A0=C2=A0=C2=A0 6.560663] input: vc4 as /devices/platform/soc/fef00700.=
hdmi/rc/rc0/input0
[=C2=A0=C2=A0=C2=A0 6.572121] vc4-drm gpu: bound fef00700.hdmi (ops vc4_hdm=
i_ops)
[=C2=A0=C2=A0=C2=A0 6.580187] Registered IR keymap rc-cec
[=C2=A0=C2=A0=C2=A0 6.584380] rc rc1: vc4 as /devices/platform/soc/fef05700=
.hdmi/rc/rc1
[=C2=A0=C2=A0=C2=A0 6.591386] input: vc4 as /devices/platform/soc/fef05700.=
hdmi/rc/rc1/input1
[=C2=A0=C2=A0=C2=A0 6.601904] vc4-drm gpu: bound fef05700.hdmi (ops vc4_hdm=
i_ops)
[=C2=A0=C2=A0=C2=A0 6.608378] vc4-drm gpu: bound fe004000.txp (ops vc4_txp_=
ops)
[=C2=A0=C2=A0=C2=A0 6.614805] vc4-drm gpu: bound fe206000.pixelvalve (ops v=
c4_crtc_ops)
[=C2=A0=C2=A0=C2=A0 6.618789] bcm2835_mmal_vchiq: module is from the stagin=
g directory, the quality is unknown, you have been warned.
[=C2=A0=C2=A0=C2=A0 6.621627] bcm2835_mmal_vchiq: module is from the stagin=
g directory, the quality is unknown, you have been warned.
[=C2=A0=C2=A0=C2=A0 6.621735] vc4-drm gpu: bound fe207000.pixelvalve (ops v=
c4_crtc_ops)
[=C2=A0=C2=A0=C2=A0 6.621970] vc4-drm gpu: bound fe20a000.pixelvalve (ops v=
c4_crtc_ops)
[=C2=A0=C2=A0=C2=A0 6.622135] vc4-drm gpu: bound fe216000.pixelvalve (ops v=
c4_crtc_ops)
[=C2=A0=C2=A0=C2=A0 6.622343] vc4-drm gpu: bound fec12000.pixelvalve (ops v=
c4_crtc_ops)
[=C2=A0=C2=A0=C2=A0 6.643063] [drm] Initialized vc4 0.0.0 20140616 for gpu =
on minor 0
[=C2=A0=C2=A0=C2=A0 6.675594] vc4-drm gpu: [drm] Cannot find any crtc or si=
zes
[=C2=A0=C2=A0=C2=A0 6.687116] bcm2835_isp: module is from the staging direc=
tory, the quality is unknown, you have been warned.
[=C2=A0=C2=A0=C2=A0 6.694354] bcm2835_codec: module is from the staging dir=
ectory, the quality is unknown, you have been warned.
[=C2=A0=C2=A0=C2=A0 6.701781] bcm2835_v4l2: module is from the staging dire=
ctory, the quality is unknown, you have been warned.
[=C2=A0 OK=C2=A0 ] Mounted /boot.
[=C2=A0=C2=A0=C2=A0 6.722939] bcm2835-codec bcm2835-codec: Device registere=
d as /dev/video10
[=C2=A0=C2=A0=C2=A0 6.730296] bcm2835-codec bcm2835-codec: Loaded V4L2 deco=
de
[=C2=A0=C2=A0=C2=A0 6.738697] bcm2835-codec bcm2835-codec: Device registere=
d as /dev/video11
[=C2=A0=C2=A0=C2=A0 6.745908] bcm2835-codec bcm2835-codec: Loaded V4L2 enco=
de
[=C2=A0=C2=A0=C2=A0 6.754675] bcm2835-isp bcm2835-isp: Device node output[0=
] registered as /dev/video13
[=C2=A0=C2=A0=C2=A0 6.765508] bcm2835-isp bcm2835-isp: Device node capture[=
0] registered as /dev/video14
[=C2=A0=C2=A0=C2=A0 6.776093] bcm2835-isp bcm2835-isp: Device node capture[=
1] registered as /dev/video15
[=C2=A0=C2=A0=C2=A0 6.777884] bcm2835-codec bcm2835-codec: Device registere=
d as /dev/video12
[=C2=A0=C2=A0=C2=A0 6.792915] bcm2835-codec bcm2835-codec: Loaded V4L2 isp
[=C2=A0=C2=A0=C2=A0 6.798548] bcm2835-isp bcm2835-isp: Device node stats[2]=
 registered as /dev/video16
[=C2=A0=C2=A0=C2=A0 6.802966] [drm] Initialized v3d 1.0.0 20180419 for fec0=
0000.v3d on minor 1
[=C2=A0=C2=A0=C2=A0 6.810763] bcm2835-isp bcm2835-isp: Register output node=
 0 with media controller
[=C2=A0 OK=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 6.822995] bcm2835-codec bcm2835-co=
dec: Device registered as /dev/video18
0m] Reac[=C2=A0=C2=A0=C2=A0 6.823542] bcm2835-isp bcm2835-isp: Register cap=
ture node 1 with media controller
hed targ[=C2=A0=C2=A0=C2=A0 6.830924] bcm2835-codec bcm2835-codec: Loaded V=
4L2 image_fx
et=C2=A0=C2=A0=C2=A0=C2=A0 6.841425] bcm2835-isp bcm2835-isp: Register capt=
ure node 2 with media controller
;39mLoca[=C2=A0=C2=A0=C2=A0 6.852471] cfg80211: Loading compiled-in X.509 c=
ertificates for regulatory database
l File S[=C2=A0=C2=A0=C2=A0 6.853759] bcm2835-isp bcm2835-isp: Register cap=
ture node 3 with media controller
ystems.
[=C2=A0=C2=A0=C2=A0 6.873712] bcm2835-isp bcm2835-isp: Loaded V4L2 bcm2835-=
isp
Starting Rebuild Dynamic Linker Cache...
[=C2=A0=C2=A0=C2=A0 6.895219] cfg80211: Loaded X.509 cert 'sforshee: 00b28d=
df47aef9cea7'
Starting Create Volatile Files and Directories...
[=C2=A0 OK=C2=A0 ] Finished Create Volatile Files and Directories.
[=C2=A0=C2=A0=C2=A0 6.995252] brcmfmac: brcmf_fw_alloc_request: using brcm/=
brcmfmac43455-sdio for chip BCM4345/6
[=C2=A0=C2=A0=C2=A0 7.007862] usbcore: registered new interface driver brcm=
fmac
Starting Rebuild Journal Catalog...
Starting Network Name Resolution...
Starting Network Time Synchronization...
Starting Record System Boot/Shutdown in UTMP...
[=C2=A0 OK=C2=A0 ] Finished Rebuild Journal Catalog.
[=C2=A0 OK=C2=A0 ] Finished Record System Boot/Shutdown in UTMP.
[=C2=A0=C2=A0=C2=A0 7.290634] brcmfmac: brcmf_fw_alloc_request: using brcm/=
brcmfmac43455-sdio for chip BCM4345/6
[=C2=A0=C2=A0=C2=A0 7.312992] brcmfmac: brcmf_fw_alloc_request: using brcm/=
brcmfmac43455-sdio for chip BCM4345/6
[=C2=A0 OK=C2=A0 ] Finished Rebuild Dynamic Linker Cache.
Starting Update is Completed...
[=C2=A0=C2=A0=C2=A0 7.355203] brcmfmac: brcmf_c_preinit_dcmds: Firmware: BC=
M4345/6 wl0: Jan=C2=A0 4 2021 19:56:29 version 7.45.229 (617f1f5 CY) FWID 0=
1-2dbd9d2e
[=C2=A0 OK=C2=A0 ] Finished Update is Completed.
[=C2=A0 OK=C2=A0 ] Listening on Load/Save RF =E2=80=A6itch Status /dev/rfki=
ll Watch.
Starting Load/Save RF Kill Switch Status...
Starting Start psplash boot splash screen...
[FAILED] Failed to start Start psplash boot splash screen.
See 'systemctl status psplash-start.service' for details.
[DEPEND] Dependency failed for Star=E2=80=A6progress communication helper.
Starting Start psplash boot splash screen...
[FAILED] Failed to start Start psplash boot splash screen.
See 'systemctl status psplash-start.service' for details.
[DEPEND] Dependency failed for Star=E2=80=A6progress communication helper.
[=C2=A0 OK=C2=A0 ] Started Load/Save RF Kill Switch Status.
[=C2=A0 OK=C2=A0 ] Started Network Name Resolution.
[=C2=A0 OK=C2=A0 ] Found device /sys/subsystem/net/devices/wlan0.
[=C2=A0=C2=A0=C2=A0 7.821285] random: crng init done
[=C2=A0=C2=A0=C2=A0 7.824757] random: 7 urandom warning(s) missed due to ra=
telimiting
[=C2=A0=C2=A0=C2=A0 7.828150] brcmfmac: brcmf_cfg80211_set_power_mgmt: powe=
r save enabled
[=C2=A0 OK=C2=A0 ] Reached target Host and Network Name Lookups.
[=C2=A0 OK=C2=A0 ] Started Network Time Synchronization.
[=C2=A0 OK=C2=A0 ] Finished Load/Save Random Seed.
[=C2=A0 OK=C2=A0 ] Reached target System Initialization.
[=C2=A0 OK=C2=A0 ] Started Daily Cleanup of Temporary Directories.
[=C2=A0 OK=C2=A0 ] Reached target Boot Completion Check.
[=C2=A0 OK=C2=A0 ] Reached target System Time Set.
[=C2=A0 OK=C2=A0 ] Reached target Timer Units.
[=C2=A0 OK=C2=A0 ] Listening on Avahi mDNS/DNS-SD Stack Activation Socket.
[=C2=A0 OK=C2=A0 ] Listening on D-Bus System Message Bus Socket.
[=C2=A0 OK=C2=A0 ] Listening on dropbear.socket.
[=C2=A0 OK=C2=A0 ] Reached target Socket Units.
[=C2=A0 OK=C2=A0 ] Reached target Basic System.
Starting Save/Restore Sound Card State...
Starting Avahi mDNS/DNS-SD Stack...
[=C2=A0 OK=C2=A0 ] Started Kernel Logging Service.
[=C2=A0 OK=C2=A0 ] Started System Logging Service.
[=C2=A0 OK=C2=A0 ] Started D-Bus System Message Bus.
[=C2=A0 OK=C2=A0 ] Started A minimalistic net=E2=80=A6Pv4, rdisc and DHCPv6=
 support.
Starting Configure Bluetooth Modems connected by UART...
Starting Telephony service...
[=C2=A0=C2=A0=C2=A0 8.291553] 8021q: 802.1Q VLAN Support v1.8
[=C2=A0=C2=A0=C2=A0 8.298806] audit: type=3D1334 audit(1636549116.971:4): p=
rog-id=3D7 op=3DLOAD
[=C2=A0=C2=A0=C2=A0 8.305628] audit: type=3D1334 audit(1636549116.971:5): p=
rog-id=3D8 op=3DLOAD
[=C2=A0=C2=A0=C2=A0 8.313826] uart-pl011 fe201000.serial: no DMA platform d=
ata
Starting User Login Management...
Starting Commit a transient machine-id on disk...
[=C2=A0 OK=C2=A0 ] Started WPA supplicant dae=E2=80=A60211 driver-specific =
version).
Starting WPA supplicant...
[=C2=A0 OK=C2=A0 ] Finished Save/Restore Sound Card State.
[=C2=A0 OK=C2=A0 ] Started Telephony service.
[=C2=A0 OK=C2=A0 ] Started Avahi mDNS/DNS-SD Stack.
[=C2=A0 OK=C2=A0 ] Reached target Sound Card.
[=C2=A0 OK=C2=A0 ] Finished Commit a transient machine-id on disk.
[=C2=A0 OK=C2=A0 ] Started=C2=A0=C2=A0=C2=A0=C2=A0 8.691650] Bluetooth: Cor=
e ver 2.22
1;39mWPA[=C2=A0=C2=A0=C2=A0 8.696196] NET: Registered protocol family 31
supplic[=C2=A0=C2=A0=C2=A0 8.701327] Bluetooth: HCI device and connection m=
anager initialized
ant.[=C2=A0=C2=A0=C2=A0 8.708584] Bluetooth: HCI socket layer initialized

[=C2=A0=C2=A0=C2=A0 8.714452] Bluetooth: L2CAP socket layer initialized
[=C2=A0=C2=A0=C2=A0 8.719796] Bluetooth: SCO socket layer initialized
[=C2=A0 OK=C2=A0 ] Reached target Network.
Starting Permit User Sessions...
[=C2=A0 OK=C2=A0 ] Finished Permit User Sessions.
[=C2=A0 OK=C2=A0 ] Started Getty on tty1.
[=C2=A0 OK=C2=A0 ] Started Serial Getty on ttyS0.
[=C2=A0 OK=C2=A0 ] Reached target Login Prompts.
[=C2=A0 OK=C2=A0 ] Started User Login Management.
[=C2=A0=C2=A0 14.115352] IPv6: ADDRCONF(NETDEV_CHANGE): wlan0: link becomes=
 ready

OpenEmbedded nodistro.0 raspberrypi4-64 ttyS0

raspberrypi4-64 login: [=C2=A0=C2=A0 15.048478] Bluetooth: HCI UART driver =
ver 2.3
[=C2=A0=C2=A0 15.053073] Bluetooth: HCI UART protocol H4 registered
[=C2=A0=C2=A0 15.058615] Bluetooth: HCI UART protocol Three-wire (H5) regis=
tered
[=C2=A0=C2=A0 15.065454] Bluetooth: HCI UART protocol Broadcom registered
[=C2=A0=C2=A0 15.324220] Bluetooth: BNEP (Ethernet Emulation) ver 1.3
[=C2=A0=C2=A0 15.329743] Bluetooth: BNEP filters: protocol multicast
[=C2=A0=C2=A0 15.335314] Bluetooth: BNEP socket layer initialized
[=C2=A0=C2=A0 15.355534] NET: Registered protocol family 38
[=C2=A0=C2=A0 15.366165] audit: type=3D1334 audit(1645960582.023:6): prog-i=
d=3D9 op=3DLOAD
[=C2=A0=C2=A0 15.373243] audit: type=3D1334 audit(1645960582.023:7): prog-i=
d=3D10 op=3DLOAD
[=C2=A0=C2=A0 15.447440] Bluetooth: RFCOMM TTY layer initialized
[=C2=A0=C2=A0 15.452487] Bluetooth: RFCOMM socket layer initialized
[=C2=A0=C2=A0 15.457947] Bluetooth: RFCOMM ver 1.11
[=C2=A0=C2=A0 49.149033] audit: type=3D1334 audit(1645960615.807:8): prog-i=
d=3D10 op=3DUNLOAD
[=C2=A0=C2=A0 49.156083] audit: type=3D1334 audit(1645960615.807:9): prog-i=
d=3D9 op=3DUNLOAD

And it's stuck here.

And it is also complaning about

[=C2=A0=C2=A0=C2=A0 3.640033] systemd-fstab-generator[107]: Failed to creat=
e unit file /run/systemd/generator/boot.mount, as it already exists. Duplic=
ate entry in /etc/fstab?
[=C2=A0=C2=A0=C2=A0 3.699053] systemd[105]: /lib/systemd/system-generators/=
systemd-fstab-generator failed with exit status 1.

My fstab looks like:

# stock fstab - you probably want to override this with a machine specific =
one

/dev/root=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 /=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 auto=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 defaults=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 1=C2=A0 1
proc=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 /proc=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 proc=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 defaults=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 0=C2=A0 0
devpts=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 /dev/pts=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 devpts=C2=A0=C2=A0=C2=A0=C2=A0 mode=3D0620,ptmxmode=
=3D0666,gid=3D5=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 0=C2=A0 0
tmpfs=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 /run=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 tmpfs=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 mode=3D0755,nodev,nosuid,strictatime 0=C2=A0 0
tmpfs=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 /var/volatile=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 tmpfs=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 defaults=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 0=C2=A0 0

# uncomment this if your device has a SD/MMC/Transflash slot
#/dev/mmcblk0p1=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 /media/card=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 auto=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 defaults,sync,noauto=C2=A0 0=C2=A0 0

/dev/mmcblk0p1=C2=A0 /boot=C2=A0=C2=A0 vfat=C2=A0=C2=A0=C2=A0 defaults=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 0

Can you please let me know what could be the issue here and how to resolve =
it?

Your help will be much appreciated.

--MaHNirHIUJI2q5YrvD7R
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>Hello Khem,<br /><br />I got my hands on Raspberry Pi Compute Module 4 I=
O Board and also I could access serial console now. Below is the log messag=
e I got while booting:<br /><br />[&nbsp;&nbsp;&nbsp; 0.000000] Booting Lin=
ux on physical CPU 0x0000000000 [0x410fd083]<br />[&nbsp;&nbsp;&nbsp; 0.000=
000] Linux version 5.10.78-v8 (oe-user@oe-host) (aarch64-oe-linux-gcc (GCC)=
 11.2.0, GNU ld (GNU Binutils) 2.37.20210721) #1 SMP PREEMPT Tue Feb 22 15:=
19:24 UTC 2022<br />[&nbsp;&nbsp;&nbsp; 0.000000] random: fast init done<br=
 />[&nbsp;&nbsp;&nbsp; 0.000000] Machine model: Raspberry Pi Compute Module=
 4 Rev 1.0<br />[&nbsp;&nbsp;&nbsp; 0.000000] efi: UEFI not found.<br />[&n=
bsp;&nbsp;&nbsp; 0.000000] Reserved memory: created CMA memory pool at 0x00=
0000001ec00000, size 256 MiB<br />[&nbsp;&nbsp;&nbsp; 0.000000] OF: reserve=
d mem: initialized node linux,cma, compatible id shared-dma-pool<br />[&nbs=
p;&nbsp;&nbsp; 0.000000] Zone ranges:<br />[&nbsp;&nbsp;&nbsp; 0.000000]&nb=
sp;&nbsp; DMA&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [mem 0x0000000000000000-0x00000=
0003b3fffff]<br />[&nbsp;&nbsp;&nbsp; 0.000000]&nbsp;&nbsp; DMA32&nbsp;&nbs=
p;&nbsp; empty<br />[&nbsp;&nbsp;&nbsp; 0.000000]&nbsp;&nbsp; Normal&nbsp;&=
nbsp; empty<br />[&nbsp;&nbsp;&nbsp; 0.000000] Movable zone start for each =
node<br />[&nbsp;&nbsp;&nbsp; 0.000000] Early memory node ranges<br />[&nbs=
p;&nbsp;&nbsp; 0.000000]&nbsp;&nbsp; node&nbsp;&nbsp; 0: [mem 0x00000000000=
00000-0x000000003b3fffff]<br />[&nbsp;&nbsp;&nbsp; 0.000000] Initmem setup =
node 0 [mem 0x0000000000000000-0x000000003b3fffff]<br />[&nbsp;&nbsp;&nbsp;=
 0.000000] percpu: Embedded 32 pages/cpu s92312 r8192 d30568 u131072<br />[=
&nbsp;&nbsp;&nbsp; 0.000000] Detected PIPT I-cache on CPU0<br />[&nbsp;&nbs=
p;&nbsp; 0.000000] CPU features: detected: Spectre-v2<br />[&nbsp;&nbsp;&nb=
sp; 0.000000] CPU features: detected: Spectre-v4<br />[&nbsp;&nbsp;&nbsp; 0=
.000000] CPU features: detected: ARM errata 1165522, 1319367, or 1530923<br=
 />[&nbsp;&nbsp;&nbsp; 0.000000] Built 1 zonelists, mobility grouping on.&n=
bsp; Total pages: 238896<br />[&nbsp;&nbsp;&nbsp; 0.000000] Kernel command =
line: coherent_pool=3D1M 8250.nr_uarts=3D1 snd_bcm2835.enable_compat_alsa=
=3D0 snd_bcm2835.enable_hdmi=3D1&nbsp; smsc95xx.macaddr=3DE4:5F:01:49:E3:A0=
 vc_mem.mem_base=3D0x3ec00000 vc_mem.mem_size=3D0x40000000&nbsp; dwc_otg.lp=
m_enable=3D0 console=3DttyS0,115200 root=3D/dev/mmcblk0p2 rootfstype=3Dext4=
 rootwait<br />[&nbsp;&nbsp;&nbsp; 0.000000] Dentry cache hash table entrie=
s: 131072 (order: 8, 1048576 bytes, linear)<br />[&nbsp;&nbsp;&nbsp; 0.0000=
00] Inode-cache hash table entries: 65536 (order: 7, 524288 bytes, linear)<=
br />[&nbsp;&nbsp;&nbsp; 0.000000] mem auto-init: stack:off, heap alloc:off=
, heap free:off<br />[&nbsp;&nbsp;&nbsp; 0.000000] Memory: 663720K/970752K =
available (12416K kernel code, 1992K rwdata, 4440K rodata, 3968K init, 1267=
K bss, 44888K reserved, 262144K cma-reserved)<br />[&nbsp;&nbsp;&nbsp; 0.00=
0000] SLUB: HWalign=3D64, Order=3D0-3, MinObjects=3D0, CPUs=3D4, Nodes=3D1<=
br />[&nbsp;&nbsp;&nbsp; 0.000000] ftrace: allocating 39462 entries in 155 =
pages<br />[&nbsp;&nbsp;&nbsp; 0.000000] ftrace: allocated 155 pages with 5=
 groups<br />[&nbsp;&nbsp;&nbsp; 0.000000] rcu: Preemptible hierarchical RC=
U implementation.<br />[&nbsp;&nbsp;&nbsp; 0.000000] rcu:&nbsp;&nbsp;&nbsp;=
&nbsp; RCU event tracing is enabled.<br />[&nbsp;&nbsp;&nbsp; 0.000000] rcu=
:&nbsp;&nbsp;&nbsp;&nbsp; RCU restricting CPUs from NR_CPUS=3D256 to nr_cpu=
_ids=3D4.<br />[&nbsp;&nbsp;&nbsp; 0.000000]&nbsp; Trampoline variant of Ta=
sks RCU enabled.<br />[&nbsp;&nbsp;&nbsp; 0.000000]&nbsp; Rude variant of T=
asks RCU enabled.<br />[&nbsp;&nbsp;&nbsp; 0.000000]&nbsp; Tracing variant =
of Tasks RCU enabled.<br />[&nbsp;&nbsp;&nbsp; 0.000000] rcu: RCU calculate=
d value of scheduler-enlistment delay is 25 jiffies.<br />[&nbsp;&nbsp;&nbs=
p; 0.000000] rcu: Adjusting geometry for rcu_fanout_leaf=3D16, nr_cpu_ids=
=3D4<br />[&nbsp;&nbsp;&nbsp; 0.000000] NR_IRQS: 64, nr_irqs: 64, prealloca=
ted irqs: 0<br />[&nbsp;&nbsp;&nbsp; 0.000000] GIC: Using split EOI/Deactiv=
ate mode<br />[&nbsp;&nbsp;&nbsp; 0.000000] irq_brcmstb_l2: registered L2 i=
ntc (/soc/interrupt-controller@7ef00100, parent irq: 10)<br />[&nbsp;&nbsp;=
&nbsp; 0.000000] random: get_random_bytes called from start_kernel+0x3b4/0x=
574 with crng_init=3D1<br />[&nbsp;&nbsp;&nbsp; 0.000000] arch_timer: cp15 =
timer(s) running at 54.00MHz (phys).<br />[&nbsp;&nbsp;&nbsp; 0.000000] clo=
cksource: arch_sys_counter: mask: 0xffffffffffffff max_cycles: 0xc743ce346,=
 max_idle_ns: 440795203123 ns<br />[&nbsp;&nbsp;&nbsp; 0.000006] sched_cloc=
k: 56 bits at 54MHz, resolution 18ns, wraps every 4398046511102ns<br />[&nb=
sp;&nbsp;&nbsp; 0.000246] Console: colour dummy device 80x25<br />[&nbsp;&n=
bsp;&nbsp; 0.000305] Calibrating delay loop (skipped), value calculated usi=
ng timer frequency.. 108.00 BogoMIPS (lpj=3D216000)<br />[&nbsp;&nbsp;&nbsp=
; 0.000334] pid_max: default: 32768 minimum: 301<br />[&nbsp;&nbsp;&nbsp; 0=
.000480] LSM: Security Framework initializing<br />[&nbsp;&nbsp;&nbsp; 0.00=
0658] Mount-cache hash table entries: 2048 (order: 2, 16384 bytes, linear)<=
br />[&nbsp;&nbsp;&nbsp; 0.000688] Mountpoint-cache hash table entries: 204=
8 (order: 2, 16384 bytes, linear)<br />[&nbsp;&nbsp;&nbsp; 0.001948] cgroup=
: Disabling memory control group subsystem<br />[&nbsp;&nbsp;&nbsp; 0.00419=
8] rcu: Hierarchical SRCU implementation.<br />[&nbsp;&nbsp;&nbsp; 0.005174=
] EFI services will not be available.<br />[&nbsp;&nbsp;&nbsp; 0.005670] sm=
p: Bringing up secondary CPUs ...<br />[&nbsp;&nbsp;&nbsp; 0.006642] Detect=
ed PIPT I-cache on CPU1<br />[&nbsp;&nbsp;&nbsp; 0.006713] CPU1: Booted sec=
ondary processor 0x0000000001 [0x410fd083]<br />[&nbsp;&nbsp;&nbsp; 0.00780=
3] Detected PIPT I-cache on CPU2<br />[&nbsp;&nbsp;&nbsp; 0.007850] CPU2: B=
ooted secondary processor 0x0000000002 [0x410fd083]<br />[&nbsp;&nbsp;&nbsp=
; 0.008988] Detected PIPT I-cache on CPU3<br />[&nbsp;&nbsp;&nbsp; 0.009034=
] CPU3: Booted secondary processor 0x0000000003 [0x410fd083]<br />[&nbsp;&n=
bsp;&nbsp; 0.009215] smp: Brought up 1 node, 4 CPUs<br />[&nbsp;&nbsp;&nbsp=
; 0.009260] SMP: Total of 4 processors activated.<br />[&nbsp;&nbsp;&nbsp; =
0.009277] CPU features: detected: 32-bit EL0 Support<br />[&nbsp;&nbsp;&nbs=
p; 0.009294] CPU features: detected: CRC32 instructions<br />[&nbsp;&nbsp;&=
nbsp; 0.009311] CPU features: detected: 32-bit EL1 Support<br />[&nbsp;&nbs=
p;&nbsp; 0.044411] CPU: All CPU(s) started at EL2<br />[&nbsp;&nbsp;&nbsp; =
0.044481] alternatives: patching kernel code<br />[&nbsp;&nbsp;&nbsp; 0.045=
650] devtmpfs: initialized<br />[&nbsp;&nbsp;&nbsp; 0.055650] Enabled cp15_=
barrier support<br />[&nbsp;&nbsp;&nbsp; 0.055694] Enabled setend support<b=
r />[&nbsp;&nbsp;&nbsp; 0.056029] clocksource: jiffies: mask: 0xffffffff ma=
x_cycles: 0xffffffff, max_idle_ns: 7645041785100000 ns<br />[&nbsp;&nbsp;&n=
bsp; 0.056097] futex hash table entries: 1024 (order: 4, 65536 bytes, linea=
r)<br />[&nbsp;&nbsp;&nbsp; 0.063289] pinctrl core: initialized pinctrl sub=
system<br />[&nbsp;&nbsp;&nbsp; 0.064024] DMI not present or invalid.<br />=
[&nbsp;&nbsp;&nbsp; 0.064444] NET: Registered protocol family 16<br />[&nbs=
p;&nbsp;&nbsp; 0.067843] DMA: preallocated 1024 KiB GFP_KERNEL pool for ato=
mic allocations<br />[&nbsp;&nbsp;&nbsp; 0.068456] DMA: preallocated 1024 K=
iB GFP_KERNEL|GFP_DMA pool for atomic allocations<br />[&nbsp;&nbsp;&nbsp; =
0.069414] DMA: preallocated 1024 KiB GFP_KERNEL|GFP_DMA32 pool for atomic a=
llocations<br />[&nbsp;&nbsp;&nbsp; 0.069523] audit: initializing netlink s=
ubsys (disabled)<br />[&nbsp;&nbsp;&nbsp; 0.069799] audit: type=3D2000 audi=
t(0.068:1): state=3Dinitialized audit_enabled=3D0 res=3D1<br />[&nbsp;&nbsp=
;&nbsp; 0.070316] thermal_sys: Registered thermal governor 'step_wise'<br /=
>[&nbsp;&nbsp;&nbsp; 0.070532] cpuidle: using governor menu<br />[&nbsp;&nb=
sp;&nbsp; 0.070728] hw-breakpoint: found 6 breakpoint and 4 watchpoint regi=
sters.<br />[&nbsp;&nbsp;&nbsp; 0.070927] ASID allocator initialised with 6=
5536 entries<br />[&nbsp;&nbsp;&nbsp; 0.071060] Serial: AMBA PL011 UART dri=
ver<br />[&nbsp;&nbsp;&nbsp; 0.110080] bcm2835-mbox fe00b880.mailbox: mailb=
ox enabled<br />[&nbsp;&nbsp;&nbsp; 0.116379] raspberrypi-firmware soc:firm=
ware: Attached to firmware from 2021-09-30T19:21:03, variant start<br />[&n=
bsp;&nbsp;&nbsp; 0.120394] raspberrypi-firmware soc:firmware: Firmware hash=
 is 51215b4f6e3966401ecd99652a35cf1c25069113<br />[&nbsp;&nbsp;&nbsp; 0.153=
635] bcm2835-dma fe007000.dma: DMA legacy API manager, dmachans=3D0x1<br />=
[&nbsp;&nbsp;&nbsp; 0.157672] vgaarb: loaded<br />[&nbsp;&nbsp;&nbsp; 0.158=
083] SCSI subsystem initialized<br />[&nbsp;&nbsp;&nbsp; 0.158307] usbcore:=
 registered new interface driver usbfs<br />[&nbsp;&nbsp;&nbsp; 0.158363] u=
sbcore: registered new interface driver hub<br />[&nbsp;&nbsp;&nbsp; 0.1584=
29] usbcore: registered new device driver usb<br />[&nbsp;&nbsp;&nbsp; 0.15=
8788] usb_phy_generic phy: supply vcc not found, using dummy regulator<br /=
>[&nbsp;&nbsp;&nbsp; 0.159737] Advanced Linux Sound Architecture Driver Ini=
tialized.<br />[&nbsp;&nbsp;&nbsp; 0.160822] clocksource: Switched to clock=
source arch_sys_counter<br />[&nbsp;&nbsp;&nbsp; 1.180587] VFS: Disk quotas=
 dquot_6.6.0<br />[&nbsp;&nbsp;&nbsp; 1.180699] VFS: Dquot-cache hash table=
 entries: 512 (order 0, 4096 bytes)<br />[&nbsp;&nbsp;&nbsp; 1.180878] FS-C=
ache: Loaded<br />[&nbsp;&nbsp;&nbsp; 1.181104] CacheFiles: Loaded<br />[&n=
bsp;&nbsp;&nbsp; 1.191916] NET: Registered protocol family 2<br />[&nbsp;&n=
bsp;&nbsp; 1.192151] IP idents hash table entries: 16384 (order: 5, 131072 =
bytes, linear)<br />[&nbsp;&nbsp;&nbsp; 1.193473] tcp_listen_portaddr_hash =
hash table entries: 512 (order: 1, 8192 bytes, linear)<br />[&nbsp;&nbsp;&n=
bsp; 1.193507] TCP established hash table entries: 8192 (order: 4, 65536 by=
tes, linear)<br />[&nbsp;&nbsp;&nbsp; 1.193668] TCP bind hash table entries=
: 8192 (order: 5, 131072 bytes, linear)<br />[&nbsp;&nbsp;&nbsp; 1.193793] =
TCP: Hash tables configured (established 8192 bind 8192)<br />[&nbsp;&nbsp;=
&nbsp; 1.193995] UDP hash table entries: 512 (order: 2, 16384 bytes, linear=
)<br />[&nbsp;&nbsp;&nbsp; 1.194028] UDP-Lite hash table entries: 512 (orde=
r: 2, 16384 bytes, linear)<br />[&nbsp;&nbsp;&nbsp; 1.194293] NET: Register=
ed protocol family 1<br />[&nbsp;&nbsp;&nbsp; 1.195120] RPC: Registered nam=
ed UNIX socket transport module.<br />[&nbsp;&nbsp;&nbsp; 1.195137] RPC: Re=
gistered udp transport module.<br />[&nbsp;&nbsp;&nbsp; 1.195152] RPC: Regi=
stered tcp transport module.<br />[&nbsp;&nbsp;&nbsp; 1.195166] RPC: Regist=
ered tcp NFSv4.1 backchannel transport module.<br />[&nbsp;&nbsp;&nbsp; 1.1=
95189] PCI: CLS 0 bytes, default 64<br />[&nbsp;&nbsp;&nbsp; 1.197342] hw p=
erfevents: enabled with armv8_cortex_a72 PMU driver, 7 counters available<b=
r />[&nbsp;&nbsp;&nbsp; 1.197623] kvm [1]: IPA Size Limit: 44 bits<br />[&n=
bsp;&nbsp;&nbsp; 1.198801] kvm [1]: vgic interrupt IRQ9<br />[&nbsp;&nbsp;&=
nbsp; 1.199075] kvm [1]: Hyp mode initialized successfully<br />[&nbsp;&nbs=
p;&nbsp; 1.201677] Initialise system trusted keyrings<br />[&nbsp;&nbsp;&nb=
sp; 1.202005] workingset: timestamp_bits=3D46 max_order=3D18 bucket_order=
=3D0<br />[&nbsp;&nbsp;&nbsp; 1.208121] zbud: loaded<br />[&nbsp;&nbsp;&nbs=
p; 1.209754] squashfs: version 4.0 (2009/01/31) Phillip Lougher<br />[&nbsp=
;&nbsp;&nbsp; 1.210008] FS-Cache: Netfs 'nfs' registered for caching<br />[=
&nbsp;&nbsp;&nbsp; 1.210671] NFS: Registering the id_resolver key type<br /=
>[&nbsp;&nbsp;&nbsp; 1.210716] Key type id_resolver registered<br />[&nbsp;=
&nbsp;&nbsp; 1.210732] Key type id_legacy registered<br />[&nbsp;&nbsp;&nbs=
p; 1.210855] nfs4filelayout_init: NFSv4 File Layout Driver Registering...<b=
r />[&nbsp;&nbsp;&nbsp; 1.210872] nfs4flexfilelayout_init: NFSv4 Flexfile L=
ayout Driver Registering...<br />[&nbsp;&nbsp;&nbsp; 1.211950] Key type asy=
mmetric registered<br />[&nbsp;&nbsp;&nbsp; 1.211969] Asymmetric key parser=
 'x509' registered<br />[&nbsp;&nbsp;&nbsp; 1.212019] Block layer SCSI gene=
ric (bsg) driver version 0.4 loaded (major 247)<br />[&nbsp;&nbsp;&nbsp; 1.=
212271] io scheduler mq-deadline registered<br />[&nbsp;&nbsp;&nbsp; 1.2122=
89] io scheduler kyber registered<br />[&nbsp;&nbsp;&nbsp; 1.216591] gpio-5=
07 (ant1): hogged as output/high<br />[&nbsp;&nbsp;&nbsp; 1.217956] gpio-51=
1 (ant2): hogged as output/low<br />[&nbsp;&nbsp;&nbsp; 1.219110] brcm-pcie=
 fd500000.pcie: host bridge /scb/pcie@7d500000 ranges:<br />[&nbsp;&nbsp;&n=
bsp; 1.219142] brcm-pcie fd500000.pcie:&nbsp;&nbsp; No bus range found for =
/scb/pcie@7d500000, using [bus 00-ff]<br />[&nbsp;&nbsp;&nbsp; 1.219215] br=
cm-pcie fd500000.pcie:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; MEM 0x0600000000..0x06=
3fffffff -&gt; 0x00c0000000<br />[&nbsp;&nbsp;&nbsp; 1.219295] brcm-pcie fd=
500000.pcie:&nbsp;&nbsp; IB MEM 0x0000000000..0x003fffffff -&gt; 0x04000000=
00<br />[&nbsp;&nbsp;&nbsp; 1.536845] brcm-pcie fd500000.pcie: link down<br=
 />[&nbsp;&nbsp;&nbsp; 1.542588] Serial: 8250/16550 driver, 1 ports, IRQ sh=
aring enabled<br />[&nbsp;&nbsp;&nbsp; 1.543460] bcm2835-aux-uart fe215040.=
serial: there is not valid maps for state default<br />[&nbsp;&nbsp;&nbsp; =
1.545765] iproc-rng200 fe104000.rng: hwrng registered<br />[&nbsp;&nbsp;&nb=
sp; 1.546149] vc-mem: phys_addr:0x00000000 mem_base=3D0x3ec00000 mem_size:0=
x40000000(1024 MiB)<br />[&nbsp;&nbsp;&nbsp; 1.547472] gpiomem-bcm2835 fe20=
0000.gpiomem: Initialised: Registers at 0xfe200000<br />[&nbsp;&nbsp;&nbsp;=
 1.557763] vc4-drm gpu: bound fe400000.hvs (ops vc4_hvs_ops)<br />[&nbsp;&n=
bsp;&nbsp; 1.558622] cacheinfo: Unable to detect cache hierarchy for CPU 0<=
br />[&nbsp;&nbsp;&nbsp; 1.569652] brd: module loaded<br />[&nbsp;&nbsp;&nb=
sp; 1.581572] loop: module loaded<br />[&nbsp;&nbsp;&nbsp; 1.583327] Loadin=
g iSCSI transport class v2.0-870.<br />[&nbsp;&nbsp;&nbsp; 1.586751] libphy=
: Fixed MDIO Bus: probed<br />[&nbsp;&nbsp;&nbsp; 1.588364] bcmgenet fd5800=
00.ethernet: GENET 5.0 EPHY: 0x0000<br />[&nbsp;&nbsp;&nbsp; 1.600865] libp=
hy: bcmgenet MII bus: probed<br />[&nbsp;&nbsp;&nbsp; 1.648957] unimac-mdio=
 unimac-mdio.-19: Broadcom UniMAC MDIO bus<br />[&nbsp;&nbsp;&nbsp; 1.65002=
7] usbcore: registered new interface driver r8152<br />[&nbsp;&nbsp;&nbsp; =
1.650094] usbcore: registered new interface driver lan78xx<br />[&nbsp;&nbs=
p;&nbsp; 1.650149] usbcore: registered new interface driver smsc95xx<br />[=
&nbsp;&nbsp;&nbsp; 1.650714] dwc_otg: version 3.00a 10-AUG-2012 (platform b=
us)<br />[&nbsp;&nbsp;&nbsp; 1.651548] usbcore: registered new interface dr=
iver uas<br />[&nbsp;&nbsp;&nbsp; 1.651609] usbcore: registered new interfa=
ce driver usb-storage<br />[&nbsp;&nbsp;&nbsp; 1.651837] mousedev: PS/2 mou=
se device common for all mice<br />[&nbsp;&nbsp;&nbsp; 1.651886] i2c /dev e=
ntries driver<br />[&nbsp;&nbsp;&nbsp; 1.652742] Driver for 1-wire Dallas n=
etwork protocol.<br />[&nbsp;&nbsp;&nbsp; 1.655022] bcm2835-wdt bcm2835-wdt=
: Broadcom BCM2835 watchdog timer<br />[&nbsp;&nbsp;&nbsp; 1.658246] sdhci:=
 Secure Digital Host Controller Interface driver<br />[&nbsp;&nbsp;&nbsp; 1=
.658264] sdhci: Copyright(c) Pierre Ossman<br />[&nbsp;&nbsp;&nbsp; 1.65902=
0] mmc-bcm2835 fe300000.mmcnr: could not get clk, deferring probe<br />[&nb=
sp;&nbsp;&nbsp; 1.661482] sdhci-pltfm: SDHCI platform and OF driver helper<=
br />[&nbsp;&nbsp;&nbsp; 1.664363] ledtrig-cpu: registered to indicate acti=
vity on CPUs<br />[&nbsp;&nbsp;&nbsp; 1.664701] hid: raw HID events driver =
(C) Jiri Kosina<br />[&nbsp;&nbsp;&nbsp; 1.664947] usbcore: registered new =
interface driver usbhid<br />[&nbsp;&nbsp;&nbsp; 1.664963] usbhid: USB HID =
core driver<br />[&nbsp;&nbsp;&nbsp; 1.665261] ashmem: initialized<br />[&n=
bsp;&nbsp;&nbsp; 1.674480] Initializing XFRM netlink socket<br />[&nbsp;&nb=
sp;&nbsp; 1.674534] NET: Registered protocol family 17<br />[&nbsp;&nbsp;&n=
bsp; 1.674650] Key type dns_resolver registered<br />[&nbsp;&nbsp;&nbsp; 1.=
675067] registered taskstats version 1<br />[&nbsp;&nbsp;&nbsp; 1.675096] L=
oading compiled-in X.509 certificates<br />[&nbsp;&nbsp;&nbsp; 1.675717] Ke=
y type ._fscrypt registered<br />[&nbsp;&nbsp;&nbsp; 1.675736] Key type .fs=
crypt registered<br />[&nbsp;&nbsp;&nbsp; 1.675751] Key type fscrypt-provis=
ioning registered<br />[&nbsp;&nbsp;&nbsp; 1.686689] uart-pl011 fe201000.se=
rial: there is not valid maps for state default<br />[&nbsp;&nbsp;&nbsp; 1.=
686966] uart-pl011 fe201000.serial: cts_event_workaround enabled<br />[&nbs=
p;&nbsp;&nbsp; 1.687068] fe201000.serial: ttyAMA0 at MMIO 0xfe201000 (irq =
=3D 23, base_baud =3D 0) is a PL011 rev2<br />[&nbsp;&nbsp;&nbsp; 1.693178]=
 bcm2835-aux-uart fe215040.serial: there is not valid maps for state defaul=
t<br />[&nbsp;&nbsp;&nbsp; 1.693806] printk: console [ttyS0] disabled<br />=
[&nbsp;&nbsp;&nbsp; 1.693923] fe215040.serial: ttyS0 at MMIO 0xfe215040 (ir=
q =3D 24, base_baud =3D 62500000) is a 16550<br />[&nbsp;&nbsp;&nbsp; 2.811=
548] printk: console [ttyS0] enabled<br />[&nbsp;&nbsp;&nbsp; 2.820987] vc4=
-drm gpu: bound fe400000.hvs (ops vc4_hvs_ops)<br />[&nbsp;&nbsp;&nbsp; 2.8=
27771] bcm2835-power bcm2835-power: Broadcom BCM2835 power domains driver<b=
r />[&nbsp;&nbsp;&nbsp; 2.837670] mmc-bcm2835 fe300000.mmcnr: mmc_debug:0 m=
mc_debug2:0<br />[&nbsp;&nbsp;&nbsp; 2.843863] mmc-bcm2835 fe300000.mmcnr: =
DMA channel allocated<br />[&nbsp;&nbsp;&nbsp; 2.880304] vc4-drm gpu: bound=
 fe400000.hvs (ops vc4_hvs_ops)<br />[&nbsp;&nbsp;&nbsp; 2.891380] vc4-drm =
gpu: bound fe400000.hvs (ops vc4_hvs_ops)<br />[&nbsp;&nbsp;&nbsp; 2.900692=
] of_cfs_init<br />[&nbsp;&nbsp;&nbsp; 2.903346] of_cfs_init: OK<br />[&nbs=
p;&nbsp;&nbsp; 2.906233] mmc1: queuing unknown CIS tuple 0x80 (2 bytes)<br =
/>[&nbsp;&nbsp;&nbsp; 2.913529] mmc1: queuing unknown CIS tuple 0x80 (3 byt=
es)<br />[&nbsp;&nbsp;&nbsp; 2.914316] mmc0: SDHCI controller on fe340000.m=
mc [fe340000.mmc] using ADMA<br />[&nbsp;&nbsp;&nbsp; 2.920774] mmc1: queui=
ng unknown CIS tuple 0x80 (3 bytes)<br />[&nbsp;&nbsp;&nbsp; 2.927726] ALSA=
 device list:<br />[&nbsp;&nbsp;&nbsp; 2.931646] vc4-drm gpu: bound fe40000=
0.hvs (ops vc4_hvs_ops)<br />[&nbsp;&nbsp;&nbsp; 2.934870] mmc1: queuing un=
known CIS tuple 0x80 (7 bytes)<br />[&nbsp;&nbsp;&nbsp; 2.934914]&nbsp;&nbs=
p; No soundcards found.<br />[&nbsp;&nbsp;&nbsp; 2.942397] mmc1: queuing un=
known CIS tuple 0x80 (3 bytes)<br />[&nbsp;&nbsp;&nbsp; 2.956053] Waiting f=
or root device /dev/mmcblk0p2...<br />[&nbsp;&nbsp;&nbsp; 3.019902] mmc1: n=
ew high speed SDIO card at address 0001<br />[&nbsp;&nbsp;&nbsp; 3.027907] =
mmc0: new ultra high speed DDR50 SDHC card at address aaaa<br />[&nbsp;&nbs=
p;&nbsp; 3.035470] mmcblk0: mmc0:aaaa SC16G 14.8 GiB<br />[&nbsp;&nbsp;&nbs=
p; 3.046464]&nbsp; mmcblk0: p1 p2<br />[&nbsp;&nbsp;&nbsp; 3.055549] vc4-dr=
m gpu: bound fe400000.hvs (ops vc4_hvs_ops)<br />[&nbsp;&nbsp;&nbsp; 3.0836=
34] EXT4-fs (mmcblk0p2): mounted filesystem with ordered data mode. Opts: (=
null)<br />[&nbsp;&nbsp;&nbsp; 3.092049] VFS: Mounted root (ext4 filesystem=
) readonly on device 179:2.<br />[&nbsp;&nbsp;&nbsp; 3.102781] devtmpfs: mo=
unted<br />[&nbsp;&nbsp;&nbsp; 3.113385] Freeing unused kernel memory: 3968=
K<br />[&nbsp;&nbsp;&nbsp; 3.118193] Run /sbin/init as init process<br />[&=
nbsp;&nbsp;&nbsp; 3.327246] systemd[1]: System time before build time, adva=
ncing clock.<br />[&nbsp;&nbsp;&nbsp; 3.408332] NET: Registered protocol fa=
mily 10<br />[&nbsp;&nbsp;&nbsp; 3.414333] Segment Routing with IPv6<br />[=
&nbsp;&nbsp;&nbsp; 3.456287] systemd[1]: systemd 249.7+ running in system m=
ode (+PAM -AUDIT -SELINUX -APPARMOR +IMA -SMACK +SECCOMP -GCRYPT -GNUTLS -O=
PENSSL +ACL +BLKID -CURL -ELFUTILS -FIDO2 -IDN2 -IDN -IPTC +KMOD -LIBCRYPTS=
ETUP +LIBFDISK -PCRE2 -PWQUALITY -P11KIT -QRENCODE -BZIP2 -LZ4 -XZ -ZLIB +Z=
STD +XKBCOMMON +UTMP +SYSVINIT default-hierarchy=3Dhybrid)<br />[&nbsp;&nbs=
p;&nbsp; 3.487567] systemd[1]: Detected architecture arm64.<br /><br />Welc=
ome to OpenEmbedded nodistro.0!<br /><br />[&nbsp;&nbsp;&nbsp; 3.540979] sy=
stemd[1]: Hostname set to &lt;raspberrypi4-64&gt;.<br />[&nbsp;&nbsp;&nbsp;=
 3.552504] random: systemd: uninitialized urandom read (16 bytes read)<br /=
>[&nbsp;&nbsp;&nbsp; 3.559368] systemd[1]: Initializing machine ID from ran=
dom generator.<br />[&nbsp;&nbsp;&nbsp; 3.566376] systemd[1]: Installed tra=
nsient /etc/machine-id file.<br />[&nbsp;&nbsp;&nbsp; 3.640033] systemd-fst=
ab-generator[107]: Failed to create unit file /run/systemd/generator/boot.m=
ount, as it already exists. Duplicate entry in /etc/fstab?<br />[&nbsp;&nbs=
p;&nbsp; 3.699053] systemd[105]: /lib/systemd/system-generators/systemd-fst=
ab-generator failed with exit status 1.<br />[&nbsp;&nbsp;&nbsp; 4.074995] =
systemd[1]: Queued start job for default target Multi-User System.<br />[&n=
bsp;&nbsp;&nbsp; 4.083709] random: systemd: uninitialized urandom read (16 =
bytes read)<br />[&nbsp;&nbsp;&nbsp; 4.137482] systemd[1]: Created slice Sl=
ice /system/getty.<br />[&nbsp; OK&nbsp; ] Created slice Slice /system/gett=
y.<br />[&nbsp;&nbsp;&nbsp; 4.161062] random: systemd: uninitialized urando=
m read (16 bytes read)<br />[&nbsp;&nbsp;&nbsp; 4.169819] systemd[1]: Creat=
ed slice Slice /system/modprobe.<br />[&nbsp; OK&nbsp; ] Created slice Slic=
e /system/modprobe.<br />[&nbsp;&nbsp;&nbsp; 4.194908] systemd[1]: Created =
slice Slice /system/serial-getty.<br />[&nbsp; OK&nbsp; ] Created slice Sli=
ce /system/serial-getty.<br />[&nbsp;&nbsp;&nbsp; 4.218857] systemd[1]: Cre=
ated slice Slice /system/wpa_supplicant-nl80211.<br />[&nbsp; OK&nbsp; ] Cr=
eated slice Slice /system/wpa_supplicant-nl80211.<br />[&nbsp;&nbsp;&nbsp; =
4.246570] systemd[1]: Created slice User and Session Slice.<br />[&nbsp; OK=
&nbsp; ] Created slice User and Session Slice.<br />[&nbsp;&nbsp;&nbsp; 4.2=
69477] systemd[1]: Started Dispatch Password Requests to Console Directory =
Watch.<br />[&nbsp; OK&nbsp; ] Started Dispatch Password &hellip;ts to Cons=
ole Directory Watch.<br />[&nbsp;&nbsp;&nbsp; 4.297403] systemd[1]: Started=
 Forward Password Requests to Wall Directory Watch.<br />[&nbsp; OK&nbsp; ]=
 Started Forward Password R&hellip;uests to Wall Directory Watch.<br />[&nb=
sp;&nbsp;&nbsp; 4.325329] systemd[1]: Reached target Path Units.<br />[&nbs=
p; OK&nbsp; ] Reached target Path Units.<br />[&nbsp;&nbsp;&nbsp; 4.345071]=
 systemd[1]: Reached target Remote File Systems.<br />[&nbsp; OK&nbsp; ] Re=
ached target Remote File Systems.<br />[&nbsp;&nbsp;&nbsp; 4.365050] system=
d[1]: Reached target Slice Units.<br />[&nbsp; OK&nbsp; ] Reached target Sl=
ice Units.<br />[&nbsp;&nbsp;&nbsp; 4.385058] systemd[1]: Reached target Sw=
aps.<br />[&nbsp; OK&nbsp; ] Reached target Swaps.<br />[&nbsp;&nbsp;&nbsp;=
 4.433090] systemd[1]: Listening on RPCbind Server Activation Socket.<br />=
[&nbsp; OK&nbsp; ] Listening on RPCbind Server Activation Socket.<br />[&nb=
sp;&nbsp;&nbsp; 4.457275] systemd[1]: Reached target RPC Port Mapper.<br />=
[&nbsp; OK&nbsp; ] Reached target RPC Port Mapper.<br />[&nbsp;&nbsp;&nbsp;=
 4.477987] systemd[1]: Listening on Syslog Socket.<br />[&nbsp; OK&nbsp; ] =
Listening on Syslog Socket.<br />[&nbsp;&nbsp;&nbsp; 4.497387] systemd[1]: =
Listening on initctl Compatibility Named Pipe.<br />[&nbsp; OK&nbsp; ] List=
ening on initctl Compatibility Named Pipe.<br />[&nbsp;&nbsp;&nbsp; 4.52208=
8] systemd[1]: Listening on Journal Audit Socket.<br />[&nbsp; OK&nbsp; ] L=
istening on Journal Audit Socket.<br />[&nbsp;&nbsp;&nbsp; 4.545647] system=
d[1]: Listening on Journal Socket (/dev/log).<br />[&nbsp; OK&nbsp; ] Liste=
ning on Journal Socket (/dev/log).<br />[&nbsp;&nbsp;&nbsp; 4.569877] syste=
md[1]: Listening on Journal Socket.<br />[&nbsp; OK&nbsp; ] Listening on Jo=
urnal Socket.<br />[&nbsp;&nbsp;&nbsp; 4.589940] systemd[1]: Listening on N=
etwork Service Netlink Socket.<br />[&nbsp; OK&nbsp; ] Listening on Network=
 Service Netlink Socket.<br />[&nbsp;&nbsp;&nbsp; 4.613846] systemd[1]: Lis=
tening on udev Control Socket.<br />[&nbsp; OK&nbsp; ] Listening on udev Co=
ntrol Socket.<br />[&nbsp;&nbsp;&nbsp; 4.637603] systemd[1]: Listening on u=
dev Kernel Socket.<br />[&nbsp; OK&nbsp; ] Listening on udev Kernel Socket.=
<br />[&nbsp;&nbsp;&nbsp; 4.661623] systemd[1]: Listening on User Database =
Manager Socket.<br />[&nbsp; OK&nbsp; ] Listening on User Database Manager =
Socket.<br />[&nbsp;&nbsp;&nbsp; 4.685838] systemd[1]: Condition check resu=
lted in Huge Pages File System being skipped.<br />[&nbsp;&nbsp;&nbsp; 4.69=
8792] systemd[1]: Mounting POSIX Message Queue File System...<br />&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Mounting POSIX Message Queue File =
System...<br />[&nbsp;&nbsp;&nbsp; 4.725788] systemd[1]: Mounting Kernel De=
bug File System...<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Mo=
unting Kernel Debug File System...<br />[&nbsp;&nbsp;&nbsp; 4.757718] syste=
md[1]: Mounting Kernel Trace File System...<br />&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp; Mounting Kernel Trace File System...<br />[&nbsp;&nb=
sp;&nbsp; 4.789511] systemd[1]: Mounting Temporary Directory /tmp...<br />&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Mounting Temporary Director=
y /tmp...<br />[&nbsp;&nbsp;&nbsp; 4.814515] systemd[1]: Starting Create Li=
st of Static Device Nodes...<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; Starting Create List of Static Device Nodes...<br />[&nbsp;&nbsp;&n=
bsp; 4.841861] systemd[1]: Starting Load Kernel Module configfs...<br />&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Starting Load Kernel Module c=
onfigfs...<br />[&nbsp;&nbsp;&nbsp; 4.869773] systemd[1]: Starting Load Ker=
nel Module drm...<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Sta=
rting Load Kernel Module drm...<br />[&nbsp;&nbsp;&nbsp; 4.893853] systemd[=
1]: Starting Load Kernel Module fuse...<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp; Starting Load Kernel Module fuse...<br />[&nbsp;&nbsp;&n=
bsp; 4.920607] fuse: init (API version 7.32)<br />[&nbsp;&nbsp;&nbsp; 4.922=
212] systemd[1]: Starting Start psplash boot splash screen...<br />&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Starting Start psplash boot splash=
 screen...<br />[&nbsp;&nbsp;&nbsp; 4.954277] systemd[1]: Starting RPC Bind=
...<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Starting RPC Bind=
...<br />[&nbsp;&nbsp;&nbsp; 4.978095] systemd[1]: Starting File System Che=
ck on Root Device...<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
Starting File System Check on Root Device...<br />[&nbsp;&nbsp;&nbsp; 5.009=
819] systemd[1]: Starting Journal Service...<br />&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp; Starting Journal Service..[&nbsp;&nbsp;&nbsp; 5.018=
672] systemd[1]: Condition check resulted in Load Kernel Modules being skip=
ped.<br />.<br />[&nbsp;&nbsp;&nbsp; 5.033667] systemd[1]: Starting Apply K=
ernel Variables...<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; St=
arting Apply Kernel Variables...<br />[&nbsp;&nbsp;&nbsp; 5.045884] systemd=
[1]: Starting Coldplug All udev Devices...<br />&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; Starting Coldplug All udev Devices...<br />[&nbsp;&nb=
sp;&nbsp; 5.065621] systemd[1]: Started RPC Bind.<br />[&nbsp; OK&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; 5.070888] systemd[1]: Mounted POSIX Message Queue File=
 System.<br />0m] Started&nbsp;&nbsp;&nbsp;&nbsp; 5.078603] systemd[1]: Mou=
nted Kernel Debug File System.<br />1;39mRPC Bind.<br />[&nbsp;&nbsp;&nbsp;=
 5.085789] systemd[1]: Mounted Kernel Trace File System.<br />;32m&nbsp; OK=
&nbsp; ] Mounted [&nbsp;&nbsp;&nbsp; 5.093484] systemd[1]: Mounted Temporar=
y Directory /tmp.<br />POSIX Message Queue File System.<br />[[&nbsp;&nbsp;=
&nbsp; 5.103087] systemd[1]: Finished Create List of Static Device Nodes.<b=
r />&nbsp; OK&nbsp; ] Mounted&nbsp;&nbsp;&nbsp;&nbsp; 5.112765] systemd[1]:=
 modprobe@configfs.service: Deactivated successfully.<br />;39mKernel Debug=
 File System[&nbsp;&nbsp;&nbsp; 5.122750] systemd[1]: Finished Load Kernel =
Module configfs.<br />.<br />[&nbsp; OK&nbsp; ] Mounted&nbsp; systemd[1]: m=
odprobe@drm.service: Deactivated successfully.<br />[0;1;39mKernel Trace Fi=
le System[&nbsp;&nbsp;&nbsp; 5.141000] systemd[1]: Finished Load Kernel Mod=
ule drm.<br />.<br />[&nbsp; OK&nbsp; ] Mount[&nbsp;&nbsp;&nbsp; 5.149229] =
systemd[1]: modprobe@fuse.service: Deactivated successfully.<br />ed Tempor=
ary Directory [&nbsp;&nbsp;&nbsp; 5.158928] systemd[1]: Finished Load Kerne=
l Module fuse.<br />/tmp.<br />[&nbsp; OK [&nbsp;&nbsp;&nbsp; 5.166274] sys=
temd[1]: psplash-start.service: Main process exited, code=3Dexited, status=
=3D255/EXCEPTION<br />&nbsp;] Finished [&nbsp;&nbsp;&nbsp; 5.177531] system=
d[1]: psplash-start.service: Failed with result 'exit-code'.<br />Create Li=
st of Static Device No[&nbsp;&nbsp;&nbsp; 5.188088] systemd[1]: Failed to s=
tart Start psplash boot splash screen.<br />des.<br />[&nbsp;&nbsp;&nbsp; 5=
.196215] systemd[1]: Dependency failed for Start psplash-systemd progress c=
ommunication helper.<br />2m&nbsp; OK&nbsp; [&nbsp;&nbsp;&nbsp; 5.206502] s=
ystemd[1]: psplash-systemd.service: Job psplash-systemd.service/start faile=
d with result 'dependency'.<br />] Finished Load Kernel Module confi[&nbsp;=
&nbsp;&nbsp; 5.220887] systemd[1]: Finished Apply Kernel Variables.<br />gf=
s.<br />[&nbsp; OK&nbsp; ] Finished Load Kernel Module drm.<br />[&nbsp; O[=
&nbsp;&nbsp;&nbsp; 5.234289] systemd[1]: Mounting FUSE Control File System.=
..<br />K&nbsp; ] Finished Load Kernel Module fuse.<br />[FAILE[&nbsp;&nbsp=
;&nbsp; 5.246549] systemd[1]: Mounting Kernel Configuration File System...<=
br />D] Failed to start Start psplash boot splash screen.<br />See 'systemc=
tl status psplash-start.service' for details.<br />[DEPEND] Dependency fail=
ed for Star&hellip;progress communication helper.<br />[&nbsp; OK&nbsp; ] F=
inished Apply Kernel Variables.<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp; Mounting FUSE Control File System...<br />&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp; Mounting Kernel Configuration File System...<br =
/>[&nbsp;&nbsp;&nbsp; 5.313974] systemd[1]: Started Journal Service.<br />[=
&nbsp; OK&nbsp; ] Started Journal Service.<br />[&nbsp; OK&nbsp; ] Finished=
 File System Check on Root Device.<br />[&nbsp; OK&nbsp; ] Mounted FUSE Con=
trol File System.<br />[&nbsp; OK&nbsp; ] Mounted Kernel Configuration File=
 System.<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Starting Rem=
ount Root and Kernel File Systems...<br />[&nbsp;&nbsp;&nbsp; 5.445206] EXT=
4-fs (mmcblk0p2): re-mounted. Opts: (null)<br />[&nbsp; OK&nbsp; ] Finished=
 Remount Root and Kernel File Systems.<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp; Starting Flush Journal to Persistent Storage...<br />&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Starting Create System[&nbsp;&=
nbsp;&nbsp; 5.510241] systemd-journald[135]: Received client request to flu=
sh runtime journal.<br />&nbsp;Users...<br />[&nbsp; OK&nbsp; ] Finished Fl=
ush Journal to Persistent Storage.<br />[&nbsp; OK&nbsp; ] Finished Coldplu=
g All udev Devices.<br />[&nbsp; OK&nbsp; ] Finished Create System Users.<b=
r />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Starting Create Static=
 Device Nodes in /dev...<br />[&nbsp; OK&nbsp; ] Finished Create Static Dev=
ice Nodes in /dev.<br />[&nbsp; OK&nbsp; ] Reached target Preparation for L=
ocal File Systems.<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Mo=
unting /var/volatile...<br />[&nbsp;&nbsp;&nbsp; 5.802376] audit: type=3D13=
34 audit(1636549114.475:2): prog-id=3D5 op=3DLOAD<br />[&nbsp;&nbsp;&nbsp; =
5.809177] audit: type=3D1334 audit(1636549114.475:3): prog-id=3D6 op=3DLOAD=
<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Starting Rule-based =
Manage&hellip;for Device Events and Files...<br />[&nbsp; OK&nbsp; ] Mounte=
d /var/volatile.<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Star=
ting Load/Save Random Seed...<br />[&nbsp; OK&nbsp; ] Started Rule-based Ma=
nager for Device Events and Files.<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp; Starting Network Configuration...<br />[&nbsp;&nbsp;&nbsp; 6.=
215697] vc4-drm gpu: bound fe400000.hvs (ops vc4_hvs_ops)<br />[&nbsp;&nbsp=
;&nbsp; 6.261009] rpivid-mem feb00000.hevc-decoder: rpivid-hevcmem initiali=
sed: Registers at 0xfeb00000 length 0x00010000<br />[&nbsp;&nbsp;&nbsp; 6.2=
94000] vc4-drm gpu: bound fe400000.hvs (ops vc4_hvs_ops)<br />[&nbsp;&nbsp;=
&nbsp; 6.305014] rpivid-mem feb10000.rpivid-local-intc: rpivid-intcmem init=
ialised: Registers at 0xfeb10000 length 0x00001000<br />[&nbsp;&nbsp;&nbsp;=
 6.330846] vc4-drm gpu: bound fe400000.hvs (ops vc4_hvs_ops)<br />[&nbsp;&n=
bsp;&nbsp; 6.332704] rpivid-mem feb20000.h264-decoder: rpivid-h264mem initi=
alised: Registers at 0xfeb20000 length 0x00010000<br />[&nbsp;&nbsp;&nbsp; =
6.353703] vc4-drm gpu: bound fe400000.hvs (ops vc4_hvs_ops)<br />[&nbsp;&nb=
sp;&nbsp; 6.369615] rpivid-mem feb30000.vp9-decoder: rpivid-vp9mem initiali=
sed: Registers at 0xfeb30000 length 0x00010000<br />[&nbsp; OK&nbsp; ] Foun=
d device[&nbsp;&nbsp;&nbsp; 6.387710] vc_sm_cma: module is from the staging=
 directory, the quality is unknown, you have been warned.<br />&nbsp;&nbsp;=
&nbsp;&nbsp; 6.393632] vc4-drm gpu: bound fe400000.hvs (ops vc4_hvs_ops)<br=
 />9m/dev/mmcblk0p1.<br />[&nbsp;&nbsp;&nbsp; 6.412765] mc: Linux media int=
erface: v0.10<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Mountin=
g /boot...<br />[&nbsp; OK&nbsp; ] Star[&nbsp;&nbsp;&nbsp; 6.431869] bcm283=
5_vc_sm_cma_probe: Videocore shared memory driver<br />ted&nbsp;&nbsp;&nbsp=
;&nbsp; 6.433163] bcmgenet fd580000.ethernet: configuring instance for exte=
rnal RGMII (RX delay)<br />1;39mNetwork Configuration.<br />[&nbsp;&nbsp;&n=
bsp; 6.451339] bcmgenet fd580000.ethernet eth0: Link is Down<br />[&nbsp;&n=
bsp;&nbsp; 6.457389] [vc_sm_connected_init]: start<br />&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Starting Wait for Network to be Configured...=
<br />[&nbsp;&nbsp;&nbsp; 6.477747] [vc_sm_connected_init]: installed succe=
ssfully<br />[&nbsp;&nbsp;&nbsp; 6.489525] videodev: Linux video capture in=
terface: v2.00<br />[&nbsp;&nbsp;&nbsp; 6.496669] vc4-drm gpu: bound fe4000=
00.hvs (ops vc4_hvs_ops)<br />[&nbsp;&nbsp;&nbsp; 6.520255] brcmstb-i2c fef=
04500.i2c:&nbsp; @97500hz registered in polling mode<br />[&nbsp;&nbsp;&nbs=
p; 6.533854] vc4-drm gpu: bound fe400000.hvs (ops vc4_hvs_ops)<br />[&nbsp;=
&nbsp;&nbsp; 6.541493] brcmstb-i2c fef09500.i2c:&nbsp; @97500hz registered =
in polling mode<br />[&nbsp;&nbsp;&nbsp; 6.549647] Registered IR keymap rc-=
cec<br />[&nbsp;&nbsp;&nbsp; 6.553818] rc rc0: vc4 as /devices/platform/soc=
/fef00700.hdmi/rc/rc0<br />[&nbsp;&nbsp;&nbsp; 6.560663] input: vc4 as /dev=
ices/platform/soc/fef00700.hdmi/rc/rc0/input0<br />[&nbsp;&nbsp;&nbsp; 6.57=
2121] vc4-drm gpu: bound fef00700.hdmi (ops vc4_hdmi_ops)<br />[&nbsp;&nbsp=
;&nbsp; 6.580187] Registered IR keymap rc-cec<br />[&nbsp;&nbsp;&nbsp; 6.58=
4380] rc rc1: vc4 as /devices/platform/soc/fef05700.hdmi/rc/rc1<br />[&nbsp=
;&nbsp;&nbsp; 6.591386] input: vc4 as /devices/platform/soc/fef05700.hdmi/r=
c/rc1/input1<br />[&nbsp;&nbsp;&nbsp; 6.601904] vc4-drm gpu: bound fef05700=
.hdmi (ops vc4_hdmi_ops)<br />[&nbsp;&nbsp;&nbsp; 6.608378] vc4-drm gpu: bo=
und fe004000.txp (ops vc4_txp_ops)<br />[&nbsp;&nbsp;&nbsp; 6.614805] vc4-d=
rm gpu: bound fe206000.pixelvalve (ops vc4_crtc_ops)<br />[&nbsp;&nbsp;&nbs=
p; 6.618789] bcm2835_mmal_vchiq: module is from the staging directory, the =
quality is unknown, you have been warned.<br />[&nbsp;&nbsp;&nbsp; 6.621627=
] bcm2835_mmal_vchiq: module is from the staging directory, the quality is =
unknown, you have been warned.<br />[&nbsp;&nbsp;&nbsp; 6.621735] vc4-drm g=
pu: bound fe207000.pixelvalve (ops vc4_crtc_ops)<br />[&nbsp;&nbsp;&nbsp; 6=
.621970] vc4-drm gpu: bound fe20a000.pixelvalve (ops vc4_crtc_ops)<br />[&n=
bsp;&nbsp;&nbsp; 6.622135] vc4-drm gpu: bound fe216000.pixelvalve (ops vc4_=
crtc_ops)<br />[&nbsp;&nbsp;&nbsp; 6.622343] vc4-drm gpu: bound fec12000.pi=
xelvalve (ops vc4_crtc_ops)<br />[&nbsp;&nbsp;&nbsp; 6.643063] [drm] Initia=
lized vc4 0.0.0 20140616 for gpu on minor 0<br />[&nbsp;&nbsp;&nbsp; 6.6755=
94] vc4-drm gpu: [drm] Cannot find any crtc or sizes<br />[&nbsp;&nbsp;&nbs=
p; 6.687116] bcm2835_isp: module is from the staging directory, the quality=
 is unknown, you have been warned.<br />[&nbsp;&nbsp;&nbsp; 6.694354] bcm28=
35_codec: module is from the staging directory, the quality is unknown, you=
 have been warned.<br />[&nbsp;&nbsp;&nbsp; 6.701781] bcm2835_v4l2: module =
is from the staging directory, the quality is unknown, you have been warned=
.<br />[&nbsp; OK&nbsp; ] Mounted /boot.<br />[&nbsp;&nbsp;&nbsp; 6.722939]=
 bcm2835-codec bcm2835-codec: Device registered as /dev/video10<br />[&nbsp=
;&nbsp;&nbsp; 6.730296] bcm2835-codec bcm2835-codec: Loaded V4L2 decode<br =
/>[&nbsp;&nbsp;&nbsp; 6.738697] bcm2835-codec bcm2835-codec: Device registe=
red as /dev/video11<br />[&nbsp;&nbsp;&nbsp; 6.745908] bcm2835-codec bcm283=
5-codec: Loaded V4L2 encode<br />[&nbsp;&nbsp;&nbsp; 6.754675] bcm2835-isp =
bcm2835-isp: Device node output[0] registered as /dev/video13<br />[&nbsp;&=
nbsp;&nbsp; 6.765508] bcm2835-isp bcm2835-isp: Device node capture[0] regis=
tered as /dev/video14<br />[&nbsp;&nbsp;&nbsp; 6.776093] bcm2835-isp bcm283=
5-isp: Device node capture[1] registered as /dev/video15<br />[&nbsp;&nbsp;=
&nbsp; 6.777884] bcm2835-codec bcm2835-codec: Device registered as /dev/vid=
eo12<br />[&nbsp;&nbsp;&nbsp; 6.792915] bcm2835-codec bcm2835-codec: Loaded=
 V4L2 isp<br />[&nbsp;&nbsp;&nbsp; 6.798548] bcm2835-isp bcm2835-isp: Devic=
e node stats[2] registered as /dev/video16<br />[&nbsp;&nbsp;&nbsp; 6.80296=
6] [drm] Initialized v3d 1.0.0 20180419 for fec00000.v3d on minor 1<br />[&=
nbsp;&nbsp;&nbsp; 6.810763] bcm2835-isp bcm2835-isp: Register output node 0=
 with media controller<br />[&nbsp; OK&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 6.8229=
95] bcm2835-codec bcm2835-codec: Device registered as /dev/video18<br />0m]=
 Reac[&nbsp;&nbsp;&nbsp; 6.823542] bcm2835-isp bcm2835-isp: Register captur=
e node 1 with media controller<br />hed targ[&nbsp;&nbsp;&nbsp; 6.830924] b=
cm2835-codec bcm2835-codec: Loaded V4L2 image_fx<br />et&nbsp;&nbsp;&nbsp;&=
nbsp; 6.841425] bcm2835-isp bcm2835-isp: Register capture node 2 with media=
 controller<br />;39mLoca[&nbsp;&nbsp;&nbsp; 6.852471] cfg80211: Loading co=
mpiled-in X.509 certificates for regulatory database<br />l File S[&nbsp;&n=
bsp;&nbsp; 6.853759] bcm2835-isp bcm2835-isp: Register capture node 3 with =
media controller<br />ystems.<br />[&nbsp;&nbsp;&nbsp; 6.873712] bcm2835-is=
p bcm2835-isp: Loaded V4L2 bcm2835-isp<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp; Starting Rebuild Dynamic Linker Cache...<br />[&nbsp;&nbs=
p;&nbsp; 6.895219] cfg80211: Loaded X.509 cert 'sforshee: 00b28ddf47aef9cea=
7'<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Starting Create Vo=
latile Files and Directories...<br />[&nbsp; OK&nbsp; ] Finished Create Vol=
atile Files and Directories.<br />[&nbsp;&nbsp;&nbsp; 6.995252] brcmfmac: b=
rcmf_fw_alloc_request: using brcm/brcmfmac43455-sdio for chip BCM4345/6<br =
/>[&nbsp;&nbsp;&nbsp; 7.007862] usbcore: registered new interface driver br=
cmfmac<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Starting Rebui=
ld Journal Catalog...<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
 Starting Network Name Resolution...<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp; Starting Network Time Synchronization...<br />&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Starting Record System Boot/Shutdown in=
 UTMP...<br />[&nbsp; OK&nbsp; ] Finished Rebuild Journal Catalog.<br />[&n=
bsp; OK&nbsp; ] Finished Record System Boot/Shutdown in UTMP.<br />[&nbsp;&=
nbsp;&nbsp; 7.290634] brcmfmac: brcmf_fw_alloc_request: using brcm/brcmfmac=
43455-sdio for chip BCM4345/6<br />[&nbsp;&nbsp;&nbsp; 7.312992] brcmfmac: =
brcmf_fw_alloc_request: using brcm/brcmfmac43455-sdio for chip BCM4345/6<br=
 />[&nbsp; OK&nbsp; ] Finished Rebuild Dynamic Linker Cache.<br />&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Starting Update is Completed...<br =
/>[&nbsp;&nbsp;&nbsp; 7.355203] brcmfmac: brcmf_c_preinit_dcmds: Firmware: =
BCM4345/6 wl0: Jan&nbsp; 4 2021 19:56:29 version 7.45.229 (617f1f5 CY) FWID=
 01-2dbd9d2e<br />[&nbsp; OK&nbsp; ] Finished Update is Completed.<br />[&n=
bsp; OK&nbsp; ] Listening on Load/Save RF &hellip;itch Status /dev/rfkill W=
atch.<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Starting Load/S=
ave RF Kill Switch Status...<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; Starting Start psplash boot splash screen...<br />[FAILED] Failed t=
o start Start psplash boot splash screen.<br />See 'systemctl status psplas=
h-start.service' for details.<br />[DEPEND] Dependency failed for Star&hell=
ip;progress communication helper.<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp; Starting Start psplash boot splash screen...<br />[FAILED] Fai=
led to start Start psplash boot splash screen.<br />See 'systemctl status p=
splash-start.service' for details.<br />[DEPEND] Dependency failed for Star=
&hellip;progress communication helper.<br />[&nbsp; OK&nbsp; ] Started Load=
/Save RF Kill Switch Status.<br />[&nbsp; OK&nbsp; ] Started Network Name R=
esolution.<br />[&nbsp; OK&nbsp; ] Found device /sys/subsystem/net/devices/=
wlan0.<br />[&nbsp;&nbsp;&nbsp; 7.821285] random: crng init done<br />[&nbs=
p;&nbsp;&nbsp; 7.824757] random: 7 urandom warning(s) missed due to ratelim=
iting<br />[&nbsp;&nbsp;&nbsp; 7.828150] brcmfmac: brcmf_cfg80211_set_power=
_mgmt: power save enabled<br />[&nbsp; OK&nbsp; ] Reached target Host and N=
etwork Name Lookups.<br />[&nbsp; OK&nbsp; ] Started Network Time Synchroni=
zation.<br />[&nbsp; OK&nbsp; ] Finished Load/Save Random Seed.<br />[&nbsp=
; OK&nbsp; ] Reached target System Initialization.<br />[&nbsp; OK&nbsp; ] =
Started Daily Cleanup of Temporary Directories.<br />[&nbsp; OK&nbsp; ] Rea=
ched target Boot Completion Check.<br />[&nbsp; OK&nbsp; ] Reached target S=
ystem Time Set.<br />[&nbsp; OK&nbsp; ] Reached target Timer Units.<br />[&=
nbsp; OK&nbsp; ] Listening on Avahi mDNS/DNS-SD Stack Activation Socket.<br=
 />[&nbsp; OK&nbsp; ] Listening on D-Bus System Message Bus Socket.<br />[&=
nbsp; OK&nbsp; ] Listening on dropbear.socket.<br />[&nbsp; OK&nbsp; ] Reac=
hed target Socket Units.<br />[&nbsp; OK&nbsp; ] Reached target Basic Syste=
m.<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Starting Save/Rest=
ore Sound Card State...<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p; Starting Avahi mDNS/DNS-SD Stack...<br />[&nbsp; OK&nbsp; ] Started Kern=
el Logging Service.<br />[&nbsp; OK&nbsp; ] Started System Logging Service.=
<br />[&nbsp; OK&nbsp; ] Started D-Bus System Message Bus.<br />[&nbsp; OK&=
nbsp; ] Started A minimalistic net&hellip;Pv4, rdisc and DHCPv6 support.<br=
 />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Starting Configure Blue=
tooth Modems connected by UART...<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp; Starting Telephony service...<br />[&nbsp;&nbsp;&nbsp; 8.29155=
3] 8021q: 802.1Q VLAN Support v1.8<br />[&nbsp;&nbsp;&nbsp; 8.298806] audit=
: type=3D1334 audit(1636549116.971:4): prog-id=3D7 op=3DLOAD<br />[&nbsp;&n=
bsp;&nbsp; 8.305628] audit: type=3D1334 audit(1636549116.971:5): prog-id=3D=
8 op=3DLOAD<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [&nbsp;&nbsp;&n=
bsp; 8.313826] uart-pl011 fe201000.serial: no DMA platform data<br />&nbsp;=
Starting User Login Management...<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp; Starting Commit a transient machine-id on disk...<br />[&nbsp;=
 OK&nbsp; ] Started WPA supplicant dae&hellip;0211 driver-specific version)=
.<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Starting WPA suppli=
cant...<br />[&nbsp; OK&nbsp; ] Finished Save/Restore Sound Card State.<br =
/>[&nbsp; OK&nbsp; ] Started Telephony service.<br />[&nbsp; OK&nbsp; ] Sta=
rted Avahi mDNS/DNS-SD Stack.<br />[&nbsp; OK&nbsp; ] Reached target Sound =
Card.<br />[&nbsp; OK&nbsp; ] Finished Commit a transient machine-id on dis=
k.<br />[&nbsp; OK&nbsp; ] Started&nbsp;&nbsp;&nbsp;&nbsp; 8.691650] Blueto=
oth: Core ver 2.22<br />1;39mWPA[&nbsp;&nbsp;&nbsp; 8.696196] NET: Register=
ed protocol family 31<br />&nbsp;supplic[&nbsp;&nbsp;&nbsp; 8.701327] Bluet=
ooth: HCI device and connection manager initialized<br />ant.[&nbsp;&nbsp;&=
nbsp; 8.708584] Bluetooth: HCI socket layer initialized<br /><br />[&nbsp;&=
nbsp;&nbsp; 8.714452] Bluetooth: L2CAP socket layer initialized<br />[&nbsp=
;&nbsp;&nbsp; 8.719796] Bluetooth: SCO socket layer initialized<br />[&nbsp=
; OK&nbsp; ] Reached target Network.<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp; Starting Permit User Sessions...<br />[&nbsp; OK&nbsp; ] Fi=
nished Permit User Sessions.<br />[&nbsp; OK&nbsp; ] Started Getty on tty1.=
<br />[&nbsp; OK&nbsp; ] Started Serial Getty on ttyS0.<br />[&nbsp; OK&nbs=
p; ] Reached target Login Prompts.<br />[&nbsp; OK&nbsp; ] Started User Log=
in Management.<br />[&nbsp;&nbsp; 14.115352] IPv6: ADDRCONF(NETDEV_CHANGE):=
 wlan0: link becomes ready<br /><br />OpenEmbedded nodistro.0 raspberrypi4-=
64 ttyS0<br /><br />raspberrypi4-64 login: [&nbsp;&nbsp; 15.048478] Bluetoo=
th: HCI UART driver ver 2.3<br />[&nbsp;&nbsp; 15.053073] Bluetooth: HCI UA=
RT protocol H4 registered<br />[&nbsp;&nbsp; 15.058615] Bluetooth: HCI UART=
 protocol Three-wire (H5) registered<br />[&nbsp;&nbsp; 15.065454] Bluetoot=
h: HCI UART protocol Broadcom registered<br />[&nbsp;&nbsp; 15.324220] Blue=
tooth: BNEP (Ethernet Emulation) ver 1.3<br />[&nbsp;&nbsp; 15.329743] Blue=
tooth: BNEP filters: protocol multicast<br />[&nbsp;&nbsp; 15.335314] Bluet=
ooth: BNEP socket layer initialized<br />[&nbsp;&nbsp; 15.355534] NET: Regi=
stered protocol family 38<br />[&nbsp;&nbsp; 15.366165] audit: type=3D1334 =
audit(1645960582.023:6): prog-id=3D9 op=3DLOAD<br />[&nbsp;&nbsp; 15.373243=
] audit: type=3D1334 audit(1645960582.023:7): prog-id=3D10 op=3DLOAD<br />[=
&nbsp;&nbsp; 15.447440] Bluetooth: RFCOMM TTY layer initialized<br />[&nbsp=
;&nbsp; 15.452487] Bluetooth: RFCOMM socket layer initialized<br />[&nbsp;&=
nbsp; 15.457947] Bluetooth: RFCOMM ver 1.11<br />[&nbsp;&nbsp; 49.149033] a=
udit: type=3D1334 audit(1645960615.807:8): prog-id=3D10 op=3DUNLOAD<br />[&=
nbsp;&nbsp; 49.156083] audit: type=3D1334 audit(1645960615.807:9): prog-id=
=3D9 op=3DUNLOAD<br /><br /><br />And it's stuck here.<br /><br />And it is=
 also complaning about <br /><br />[&nbsp;&nbsp;&nbsp; 3.640033] systemd-fs=
tab-generator[107]: Failed to create unit file /run/systemd/generator/boot.=
mount, as it already exists. Duplicate entry in /etc/fstab?<br />[&nbsp;&nb=
sp;&nbsp; 3.699053] systemd[105]: /lib/systemd/system-generators/systemd-fs=
tab-generator failed with exit status 1.<br /><br /><br />My fstab looks li=
ke:<br /><br /># stock fstab - you probably want to override this with a ma=
chine specific one<br /><br />/dev/root&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; aut=
o&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; defaults&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1&nbsp; 1<br />proc&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp; /proc&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; proc&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p; defaults&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; 0&nbsp; 0<br />devpts&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /dev/pts&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; devpts&nbsp;&nbsp;&nbsp=
;&nbsp; mode=3D0620,ptmxmode=3D0666,gid=3D5&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0=
&nbsp; 0<br />tmpfs&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /run&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; tmpfs&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; mode=3D0755,nodev,nosuid,strictatime 0&nbsp; 0<br />t=
mpfs&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp; /var/volatile&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
 tmpfs&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; defaults&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0&nbsp; 0<br /><br /># unc=
omment this if your device has a SD/MMC/Transflash slot<br />#/dev/mmcblk0p=
1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; /media/card&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp; auto&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; defau=
lts,sync,noauto&nbsp; 0&nbsp; 0<br /><br />/dev/mmcblk0p1&nbsp; /boot&nbsp;=
&nbsp; vfat&nbsp;&nbsp;&nbsp; defaults&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp; 0&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0</p>
<p>&nbsp;</p>
<p>Can you please let me know what could be the issue here and how to resol=
ve it?<br /><br />Your help will be much appreciated.</p>

--MaHNirHIUJI2q5YrvD7R--

