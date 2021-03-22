Subject: Re: Enabling Serial console via uart1(serial1) in cm3(rpi3) kernel 5.4. #cm3 #dunfell
To: yocto@lists.yoctoproject.org
From: prashantsingh@dialtronics.com
X-Originating-Location: Hyderabad, Telangana, IN (183.83.218.146)
X-Originating-Platform: Linux Firefox 86
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 22 Mar 2021 02:19:45 -0700
References: <CAGAf8Lz0zrVjMwnpXxAwvOY=Ym52nroxpDDAZ+v9EPPHATZRxg@mail.gmail.com>
In-Reply-To: <CAGAf8Lz0zrVjMwnpXxAwvOY=Ym52nroxpDDAZ+v9EPPHATZRxg@mail.gmail.com>
Message-ID: <32114.1616404785573111151@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="ZXnyt1tFO97ohVY4Fn5S"

--ZXnyt1tFO97ohVY4Fn5S
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Zoran,
here is the cat /proc/cmdline output of my cm3-

*coherent_pool=3D1M snd_bcm2835.enable_compat_alsa=3D0 snd_bcm2835.enable_=
hdmi=3D1 snd_bcm2835.enable_headphones=3D1 bcm2708_fb.fbwidth=3D720 bcm2708=
_fb.fbheight=3D480 bcm2708_fb.fbswap=3D1 smsc95xx.macaddr=3DB8:27:EB:AD:85:=
CA vc_mem.mem_base=3D0x3ec00000 vc_mem.mem_size=3D0x40000000=C2=A0 dwc_otg.=
lpm_enable=3D0 console=3DttyS0,115200 console=3Dtty1 root=3D/dev/mmcblk0p2 =
rootfstype=3Dext4 rootwait kgdboc=3DttyAMA0,115200
*
Earlier my issue was that=C2=A0 I was no getting */dev/ttyS0* terminal in =
my yocto image for cm3.
But going through the web I got that setting 1 to *CONFIG_SERIAL_8250_RUNT=
IME_UARTS* solved that issue and now I'm getting ttyS0 in my /dev directory=
.

But now another issue I'm facing when I'm enabling cosole via this ttsS0 p=
ort i.e.
*[=C2=A0=C2=A0 13.280639] ttyS ttyS0: 2 input overrun(s)

* here is my dmesg output:

[=C2=A0=C2=A0=C2=A0 0.000000] Booting Linux on physical CPU 0x0
[=C2=A0=C2=A0=C2=A0 0.000000] Linux version 5.4.64-v7 (oe-user@oe-host) (g=
cc version 9.3.0 (GCC)) #1 SMP Fri Sep 11 12:57:30 UTC 2020
[=C2=A0=C2=A0=C2=A0 0.000000] CPU: ARMv7 Processor [410fd034] revision 4 (=
ARMv7), cr=3D10c5383d
[=C2=A0=C2=A0=C2=A0 0.000000] CPU: div instructions available: patching di=
vision code
[=C2=A0=C2=A0=C2=A0 0.000000] CPU: PIPT / VIPT nonaliasing data cache, VIP=
T aliasing instruction cache
[=C2=A0=C2=A0=C2=A0 0.000000] OF: fdt: Machine model: Raspberry Pi Compute=
 Module 3 Rev 1.0
[=C2=A0=C2=A0=C2=A0 0.000000] Memory policy: Data cache writealloc
[=C2=A0=C2=A0=C2=A0 0.000000] Reserved memory: created CMA memory pool at =
0x37400000, size 64 MiB
[=C2=A0=C2=A0=C2=A0 0.000000] OF: reserved mem: initialized node linux,cma=
, compatible id shared-dma-pool
[=C2=A0=C2=A0=C2=A0 0.000000] On node 0 totalpages: 242688
[=C2=A0=C2=A0=C2=A0 0.000000]=C2=A0=C2=A0 Normal zone: 2133 pages used for=
 memmap
[=C2=A0=C2=A0=C2=A0 0.000000]=C2=A0=C2=A0 Normal zone: 0 pages reserved
[=C2=A0=C2=A0=C2=A0 0.000000]=C2=A0=C2=A0 Normal zone: 242688 pages, LIFO =
batch:63
[=C2=A0=C2=A0=C2=A0 0.000000] percpu: Embedded 20 pages/cpu s50060 r8192 d=
23668 u81920
[=C2=A0=C2=A0=C2=A0 0.000000] pcpu-alloc: s50060 r8192 d23668 u81920 alloc=
=
=3D20*4096
[=C2=A0=C2=A0=C2=A0 0.000000] pcpu-alloc: [0] 0 [0] 1 [0] 2 [0] 3
[=C2=A0=C2=A0=C2=A0 0.000000] Built 1 zonelists, mobility grouping on.=C2=
=A0 Total pages: 240555
[=C2=A0=C2=A0=C2=A0 0.000000] Kernel command line: coherent_pool=3D1M snd_=
bcm2835.enable_compat_alsa=3D0 snd_bcm2835.enable_hdmi=3D1 snd_bcm2835.enab=
le_headphones=3D1 bcm2708_fb.fbwidth=3D720 bcm2708_fb.fbheight=3D480 bcm270=
8_fb.fbswap=3D1 smsc95xx.macaddr=3DB8:27:EB:AD:85:CA vc_mem.mem_base=3D0x3e=
c00000 vc_mem.mem_size=3D0x40000000=C2=A0 dwc_otg.lpm_enable=3D0 console=3D=
ttyS0,115200 console=3Dtty1 root=3D/dev/mmcblk0p2 rootfstype=3Dext4 rootwai=
t kgdboc=3DttyAMA0,115200
[=C2=A0=C2=A0=C2=A0 0.000000] Dentry cache hash table entries: 131072 (ord=
er: 7, 524288 bytes, linear)
[=C2=A0=C2=A0=C2=A0 0.000000] Inode-cache hash table entries: 65536 (order=
: 6, 262144 bytes, linear)
[=C2=A0=C2=A0=C2=A0 0.000000] mem auto-init: stack:off, heap alloc:off, he=
ap free:off
[=C2=A0=C2=A0=C2=A0 0.000000] Memory: 880444K/970752K available (9216K ker=
nel code, 716K rwdata, 2684K rodata, 1024K init, 849K bss, 24772K reserved,=
 65536K cma-reserved)
[=C2=A0=C2=A0=C2=A0 0.000000] SLUB: HWalign=3D64, Order=3D0-3, MinObjects=
=3D0, CPUs=3D4, Nodes=3D1
[=C2=A0=C2=A0=C2=A0 0.000000] ftrace: allocating 29805 entries in 59 pages
[=C2=A0=C2=A0=C2=A0 0.000000] rcu: Hierarchical RCU implementation.
[=C2=A0=C2=A0=C2=A0 0.000000] rcu: RCU calculated value of scheduler-enlis=
tment delay is 10 jiffies.
[=C2=A0=C2=A0=C2=A0 0.000000] NR_IRQS: 16, nr_irqs: 16, preallocated irqs:=
 16
[=C2=A0=C2=A0=C2=A0 0.000000] random: get_random_bytes called from start_k=
ernel+0x328/0x508 with crng_init=3D0
[=C2=A0=C2=A0=C2=A0 0.000000] arch_timer: cp15 timer(s) running at 19.20MH=
z (phys).
[=C2=A0=C2=A0=C2=A0 0.000000] clocksource: arch_sys_counter: mask: 0xfffff=
fffffffff max_cycles: 0x46d987e47, max_idle_ns: 440795202767 ns
[=C2=A0=C2=A0=C2=A0 0.000006] sched_clock: 56 bits at 19MHz, resolution 52=
ns, wraps every 4398046511078ns
[=C2=A0=C2=A0=C2=A0 0.000020] Switching to timer-based delay loop, resolut=
ion 52ns
[=C2=A0=C2=A0=C2=A0 0.000288] Console: colour dummy device 80x30
[=C2=A0=C2=A0=C2=A0 0.000885] printk: console [tty1] enabled
[=C2=A0=C2=A0=C2=A0 0.000960] Calibrating delay loop (skipped), value calc=
ulated using timer frequency.. 38.40 BogoMIPS (lpj=3D192000)
[=C2=A0=C2=A0=C2=A0 0.001009] pid_max: default: 32768 minimum: 301
[=C2=A0=C2=A0=C2=A0 0.001232] LSM: Security Framework initializing
[=C2=A0=C2=A0=C2=A0 0.001477] Mount-cache hash table entries: 2048 (order:=
 1, 8192 bytes, linear)
[=C2=A0=C2=A0=C2=A0 0.001524] Mountpoint-cache hash table entries: 2048 (o=
rder: 1, 8192 bytes, linear)
[=C2=A0=C2=A0=C2=A0 0.002936] Disabling memory control group subsystem
[=C2=A0=C2=A0=C2=A0 0.003081] CPU: Testing write buffer coherency: ok
[=C2=A0=C2=A0=C2=A0 0.003674] CPU0: thread -1, cpu 0, socket 0, mpidr 8000=
0000
[=C2=A0=C2=A0=C2=A0 0.004651] Setting up static identity map for 0x100000 =
- 0x100060
[=C2=A0=C2=A0=C2=A0 0.004873] rcu: Hierarchical SRCU implementation.
[=C2=A0=C2=A0=C2=A0 0.005586] smp: Bringing up secondary CPUs ...
[=C2=A0=C2=A0=C2=A0 0.006748] CPU1: thread -1, cpu 1, socket 0, mpidr 8000=
0001
[=C2=A0=C2=A0=C2=A0 0.008417] CPU2: thread -1, cpu 2, socket 0, mpidr 8000=
0002
[=C2=A0=C2=A0=C2=A0 0.009943] CPU3: thread -1, cpu 3, socket 0, mpidr 8000=
0003
[=C2=A0=C2=A0=C2=A0 0.010479] smp: Brought up 1 node, 4 CPUs
[=C2=A0=C2=A0=C2=A0 0.010528] SMP: Total of 4 processors activated (153.60=
 BogoMIPS).
[=C2=A0=C2=A0=C2=A0 0.010557] CPU: All CPU(s) started in HYP mode.
[=C2=A0=C2=A0=C2=A0 0.010582] CPU: Virtualization extensions available.
[=C2=A0=C2=A0=C2=A0 0.011597] devtmpfs: initialized
[=C2=A0=C2=A0=C2=A0 0.027564] VFP support v0.3: implementor 41 architectur=
e 3 part 40 variant 3 rev 4
[=C2=A0=C2=A0=C2=A0 0.028074] clocksource: jiffies: mask: 0xffffffff max_c=
ycles: 0xffffffff, max_idle_ns: 19112604462750000 ns
[=C2=A0=C2=A0=C2=A0 0.028132] futex hash table entries: 1024 (order: 4, 65=
536 bytes, linear)
[=C2=A0=C2=A0=C2=A0 0.031459] pinctrl core: initialized pinctrl subsystem
[=C2=A0=C2=A0=C2=A0 0.032650] NET: Registered protocol family 16
[=C2=A0=C2=A0=C2=A0 0.036992] DMA: preallocated 1024 KiB pool for atomic c=
oherent allocations
[=C2=A0=C2=A0=C2=A0 0.041879] audit: initializing netlink subsys (disabled=
)
[=C2=A0=C2=A0=C2=A0 0.042183] audit: type=3D2000 audit(0.040:1): state=3Di=
nitialized audit_enabled=3D0 res=3D1
[=C2=A0=C2=A0=C2=A0 0.043730] hw-breakpoint: found 5 (+1 reserved) breakpo=
int and 4 watchpoint registers.
[=C2=A0=C2=A0=C2=A0 0.043770] hw-breakpoint: maximum watchpoint size is 8 =
bytes.
[=C2=A0=C2=A0=C2=A0 0.044019] Serial: AMBA PL011 UART driver
[=C2=A0=C2=A0=C2=A0 0.046056] bcm2835-mbox 3f00b880.mailbox: mailbox enabl=
ed
[=C2=A0=C2=A0=C2=A0 0.070160] raspberrypi-firmware soc:firmware: Attached =
to firmware from 2020-09-11 14:25, variant start
[=C2=A0=C2=A0=C2=A0 0.080196] raspberrypi-firmware soc:firmware: Firmware =
hash is ecd571f7947fb751a266d8591b0573d4d975fbe6
[=C2=A0=C2=A0=C2=A0 0.132933] bcm2835-dma 3f007000.dma: DMA legacy API man=
ager, dmachans=3D0x1
[=C2=A0=C2=A0=C2=A0 0.135178] SCSI subsystem initialized
[=C2=A0=C2=A0=C2=A0 0.135460] usbcore: registered new interface driver usb=
fs
[=C2=A0=C2=A0=C2=A0 0.135556] usbcore: registered new interface driver hub
[=C2=A0=C2=A0=C2=A0 0.135703] usbcore: registered new device driver usb
[=C2=A0=C2=A0=C2=A0 0.137691] clocksource: Switched to clocksource arch_sy=
s_counter
[=C2=A0=C2=A0=C2=A0 1.382483] VFS: Disk quotas dquot_6.6.0
[=C2=A0=C2=A0=C2=A0 1.382646] VFS: Dquot-cache hash table entries: 1024 (o=
rder 0, 4096 bytes)
[=C2=A0=C2=A0=C2=A0 1.382869] FS-Cache: Loaded
[=C2=A0=C2=A0=C2=A0 1.383168] CacheFiles: Loaded
[=C2=A0=C2=A0=C2=A0 1.394807] thermal_sys: Registered thermal governor 'st=
ep_wise'
[=C2=A0=C2=A0=C2=A0 1.395207] NET: Registered protocol family 2
[=C2=A0=C2=A0=C2=A0 1.396283] tcp_listen_portaddr_hash hash table entries:=
 512 (order: 0, 6144 bytes, linear)
[=C2=A0=C2=A0=C2=A0 1.396360] TCP established hash table entries: 8192 (or=
der: 3, 32768 bytes, linear)
[=C2=A0=C2=A0=C2=A0 1.396501] TCP bind hash table entries: 8192 (order: 4,=
 65536 bytes, linear)
[=C2=A0=C2=A0=C2=A0 1.396713] TCP: Hash tables configured (established 819=
2 bind 8192)
[=C2=A0=C2=A0=C2=A0 1.396898] UDP hash table entries: 512 (order: 2, 16384=
 bytes, linear)
[=C2=A0=C2=A0=C2=A0 1.396973] UDP-Lite hash table entries: 512 (order: 2, =
16384 bytes, linear)
[=C2=A0=C2=A0=C2=A0 1.397287] NET: Registered protocol family 1
[=C2=A0=C2=A0=C2=A0 1.398427] RPC: Registered named UNIX socket transport =
module.
[=C2=A0=C2=A0=C2=A0 1.398462] RPC: Registered udp transport module.
[=C2=A0=C2=A0=C2=A0 1.398488] RPC: Registered tcp transport module.
[=C2=A0=C2=A0=C2=A0 1.398515] RPC: Registered tcp NFSv4.1 backchannel tran=
sport module.
[=C2=A0=C2=A0=C2=A0 1.400297] hw perfevents: enabled with armv7_cortex_a7 =
PMU driver, 7 counters available
[=C2=A0=C2=A0=C2=A0 1.404004] Initialise system trusted keyrings
[=C2=A0=C2=A0=C2=A0 1.404281] workingset: timestamp_bits=3D14 max_order=3D=
18 bucket_order=3D4
[=C2=A0=C2=A0=C2=A0 1.416225] FS-Cache: Netfs 'nfs' registered for caching
[=C2=A0=C2=A0=C2=A0 1.416897] NFS: Registering the id_resolver key type
[=C2=A0=C2=A0=C2=A0 1.416978] Key type id_resolver registered
[=C2=A0=C2=A0=C2=A0 1.417005] Key type id_legacy registered
[=C2=A0=C2=A0=C2=A0 1.417043] nfs4filelayout_init: NFSv4 File Layout Drive=
r Registering...
[=C2=A0=C2=A0=C2=A0 1.418451] Key type asymmetric registered
[=C2=A0=C2=A0=C2=A0 1.418482] Asymmetric key parser 'x509' registered
[=C2=A0=C2=A0=C2=A0 1.418551] Block layer SCSI generic (bsg) driver versio=
n 0.4 loaded (major 249)
[=C2=A0=C2=A0=C2=A0 1.418590] io scheduler mq-deadline registered
[=C2=A0=C2=A0=C2=A0 1.418618] io scheduler kyber registered
[=C2=A0=C2=A0=C2=A0 1.423548] bcm2708_fb soc:fb: FB found 1 display(s)
[=C2=A0=C2=A0=C2=A0 1.437559] Console: switching to colour frame buffer de=
vice 90x30
[=C2=A0=C2=A0=C2=A0 1.446253] bcm2708_fb soc:fb: Registered framebuffer fo=
r display 0, size 720x480
[=C2=A0=C2=A0=C2=A0 1.452896] Serial: 8250/16550 driver, 1 ports, IRQ shar=
ing enabled
[=C2=A0=C2=A0=C2=A0 1.458395] bcm2835-rng 3f104000.rng: hwrng registered
[=C2=A0=C2=A0=C2=A0 1.461812] vc-mem: phys_addr:0x00000000 mem_base=3D0x3e=
c00000 mem_size:0x40000000(1024 MiB)
[=C2=A0=C2=A0=C2=A0 1.468540] vc-sm: Videocore shared memory driver
[=C2=A0=C2=A0=C2=A0 1.472180] gpiomem-bcm2835 3f200000.gpiomem: Initialise=
d: Registers at 0x3f200000
[=C2=A0=C2=A0=C2=A0 1.489107] brd: module loaded
[=C2=A0=C2=A0=C2=A0 1.505307] loop: module loaded
[=C2=A0=C2=A0=C2=A0 1.509860] Loading iSCSI transport class v2.0-870.
[=C2=A0=C2=A0=C2=A0 1.513862] libphy: Fixed MDIO Bus: probed
[=C2=A0=C2=A0=C2=A0 1.517035] usbcore: registered new interface driver lan=
78xx
[=C2=A0=C2=A0=C2=A0 1.520267] usbcore: registered new interface driver sms=
c95xx
[=C2=A0=C2=A0=C2=A0 1.523303] dwc_otg: version 3.00a 10-AUG-2012 (platform=
 bus)
[=C2=A0=C2=A0=C2=A0 2.254610] Core Release: 2.80a
[=C2=A0=C2=A0=C2=A0 2.257707] Setting default values for core params
[=C2=A0=C2=A0=C2=A0 2.260769] Finished setting default values for core par=
ams
[=C2=A0=C2=A0=C2=A0 2.464194] Using Buffer DMA mode
[=C2=A0=C2=A0=C2=A0 2.467200] Periodic Transfer Interrupt Enhancement - di=
sabled
[=C2=A0=C2=A0=C2=A0 2.470261] Multiprocessor Interrupt Enhancement - disab=
led
[=C2=A0=C2=A0=C2=A0 2.473253] OTG VER PARAM: 0, OTG VER FLAG: 0
[=C2=A0=C2=A0=C2=A0 2.476233] Dedicated Tx FIFOs mode
[=C2=A0=C2=A0=C2=A0 2.479874] WARN::dwc_otg_hcd_init:1072: FIQ DMA bounce =
buffers: virt =3D b7504000 dma =3D 0xf7504000 len=3D9024
[=C2=A0=C2=A0=C2=A0 2.486063] FIQ FSM acceleration enabled for :
Non-periodic Split Transactions
Periodic Split Transactions
High-Speed Isochronous Endpoints
Interrupt/Control Split Transaction hack enabled
[=C2=A0=C2=A0=C2=A0 2.500574] dwc_otg: Microframe scheduler enabled
[=C2=A0=C2=A0=C2=A0 2.500642] WARN::hcd_init_fiq:457: FIQ on core 1
[=C2=A0=C2=A0=C2=A0 2.503411] WARN::hcd_init_fiq:458: FIQ ASM at 80728fa4 =
length 36
[=C2=A0=C2=A0=C2=A0 2.506123] WARN::hcd_init_fiq:496: MPHI regs_base at bb=
810000
[=C2=A0=C2=A0=C2=A0 2.508797] dwc_otg 3f980000.usb: DWC OTG Controller
[=C2=A0=C2=A0=C2=A0 2.511499] dwc_otg 3f980000.usb: new USB bus registered=
, assigned bus number 1
[=C2=A0=C2=A0=C2=A0 2.514279] dwc_otg 3f980000.usb: irq 56, io mem 0x00000=
000
[=C2=A0=C2=A0=C2=A0 2.517028] Init: Port Power? op_state=3D1
[=C2=A0=C2=A0=C2=A0 2.519717] Init: Power Port (0)
[=C2=A0=C2=A0=C2=A0 2.522754] usb usb1: New USB device found, idVendor=3D1=
d6b, idProduct=3D0002, bcdDevice=3D 5.04
[=C2=A0=C2=A0=C2=A0 2.528327] usb usb1: New USB device strings: Mfr=3D3, P=
roduct=3D2, SerialNumber=3D1
[=C2=A0=C2=A0=C2=A0 2.531293] usb usb1: Product: DWC OTG Controller
[=C2=A0=C2=A0=C2=A0 2.534211] usb usb1: Manufacturer: Linux 5.4.64-v7 dwc_=
otg_hcd
[=C2=A0=C2=A0=C2=A0 2.537146] usb usb1: SerialNumber: 3f980000.usb
[=C2=A0=C2=A0=C2=A0 2.540771] hub 1-0:1.0: USB hub found
[=C2=A0=C2=A0=C2=A0 2.543657] hub 1-0:1.0: 1 port detected
[=C2=A0=C2=A0=C2=A0 2.547238] dwc_otg: FIQ enabled
[=C2=A0=C2=A0=C2=A0 2.547248] dwc_otg: NAK holdoff enabled
[=C2=A0=C2=A0=C2=A0 2.547258] dwc_otg: FIQ split-transaction FSM enabled
[=C2=A0=C2=A0=C2=A0 2.547274] Module dwc_common_port init
[=C2=A0=C2=A0=C2=A0 2.547609] usbcore: registered new interface driver usb=
-storage
[=C2=A0=C2=A0=C2=A0 2.550721] mousedev: PS/2 mouse device common for all m=
ice
[=C2=A0=C2=A0=C2=A0 2.554936] bcm2835-wdt bcm2835-wdt: Broadcom BCM2835 wa=
tchdog timer
[=C2=A0=C2=A0=C2=A0 2.560496] sdhci: Secure Digital Host Controller Interf=
ace driver
[=C2=A0=C2=A0=C2=A0 2.563302] sdhci: Copyright(c) Pierre Ossman
[=C2=A0=C2=A0=C2=A0 2.566769] sdhost-bcm2835 3f202000.mmc: could not get c=
lk, deferring probe
[=C2=A0=C2=A0=C2=A0 2.570026] sdhci-pltfm: SDHCI platform and OF driver he=
lper
[=C2=A0=C2=A0=C2=A0 2.573709] ledtrig-cpu: registered to indicate activity=
 on CPUs
[=C2=A0=C2=A0=C2=A0 2.576947] hidraw: raw HID events driver (C) Jiri Kosin=
a
[=C2=A0=C2=A0=C2=A0 2.580129] usbcore: registered new interface driver usb=
hid
[=C2=A0=C2=A0=C2=A0 2.583142] usbhid: USB HID core driver
[=C2=A0=C2=A0=C2=A0 2.586528] ashmem: initialized
[=C2=A0=C2=A0=C2=A0 2.590509] vchiq: vchiq_init_state: slot_zero =3D (ptrv=
al)
[=C2=A0=C2=A0=C2=A0 2.595277] [vc_sm_connected_init]: start
[=C2=A0=C2=A0=C2=A0 2.605012] [vc_sm_connected_init]: end - returning 0
[=C2=A0=C2=A0=C2=A0 2.610026] Initializing XFRM netlink socket
[=C2=A0=C2=A0=C2=A0 2.613006] NET: Registered protocol family 17
[=C2=A0=C2=A0=C2=A0 2.616003] Key type dns_resolver registered
[=C2=A0=C2=A0=C2=A0 2.619492] Registering SWP/SWPB emulation handler
[=C2=A0=C2=A0=C2=A0 2.622506] registered taskstats version 1
[=C2=A0=C2=A0=C2=A0 2.625154] Loading compiled-in X.509 certificates
[=C2=A0=C2=A0=C2=A0 2.628349] Key type ._fscrypt registered
[=C2=A0=C2=A0=C2=A0 2.630977] Key type .fscrypt registered
[=C2=A0=C2=A0=C2=A0 2.644359] uart-pl011 3f201000.serial: cts_event_workar=
ound enabled
[=C2=A0=C2=A0=C2=A0 2.647220] 3f201000.serial: ttyAMA0 at MMIO 0x3f201000 =
(irq =3D 81, base_baud =3D 0) is a PL011 rev2
[=C2=A0=C2=A0=C2=A0 2.655430] printk: console [ttyS0] disabled
[=C2=A0=C2=A0=C2=A0 2.658305] 3f215040.serial: ttyS0 at MMIO 0x0 (irq =3D =
53, base_baud =3D 31250000) is a 16550
[=C2=A0=C2=A0=C2=A0 3.678083] printk: console [ttyS0] enabled
[=C2=A0=C2=A0=C2=A0 3.685731] KGDB: Registered I/O driver kgdboc
[=C2=A0=C2=A0=C2=A0 3.693806] bcm2835-power bcm2835-power: Broadcom BCM283=
5 power domains driver
[=C2=A0=C2=A0=C2=A0 3.705593] sdhost: log_buf @ (ptrval) (f7507000)
[=C2=A0=C2=A0=C2=A0 3.761622] mmc0: sdhost-bcm2835 loaded - DMA enabled (>=
1)
[=C2=A0=C2=A0=C2=A0 3.772680] of_cfs_init
[=C2=A0=C2=A0=C2=A0 3.778301] of_cfs_init: OK
[=C2=A0=C2=A0=C2=A0 3.785362] Waiting for root device /dev/mmcblk0p2...
[=C2=A0=C2=A0=C2=A0 3.797847] Indeed it is in host mode hprt0 =3D 00021501
[=C2=A0=C2=A0=C2=A0 3.891131] random: fast init done
[=C2=A0=C2=A0=C2=A0 3.936402] mmc0: new high speed MMC card at address 000=
1
[=C2=A0=C2=A0=C2=A0 3.946012] mmcblk0: mmc0:0001 4FTE4R 3.64 GiB
[=C2=A0=C2=A0=C2=A0 3.953973] mmcblk0boot0: mmc0:0001 4FTE4R partition 1 4=
.00 MiB
[=C2=A0=C2=A0=C2=A0 3.963473] mmcblk0boot1: mmc0:0001 4FTE4R partition 2 4=
.00 MiB
[=C2=A0=C2=A0=C2=A0 3.972635] mmcblk0rpmb: mmc0:0001 4FTE4R partition 3 51=
2 KiB, chardev (245:0)
[=C2=A0=C2=A0=C2=A0 3.985330]=C2=A0 mmcblk0: p1 p2
[=C2=A0=C2=A0=C2=A0 4.007759] usb 1-1: new high-speed USB device number 2 =
using dwc_otg
[=C2=A0=C2=A0=C2=A0 4.011189] EXT4-fs (mmcblk0p2): mounted filesystem with=
 ordered data mode. Opts: (null)
[=C2=A0=C2=A0=C2=A0 4.017529] Indeed it is in host mode hprt0 =3D 00001101
[=C2=A0=C2=A0=C2=A0 4.031809] VFS: Mounted root (ext4 filesystem) readonly=
 on device 179:2.
[=C2=A0=C2=A0=C2=A0 4.050759] devtmpfs: mounted
[=C2=A0=C2=A0=C2=A0 4.102220] Freeing unused kernel memory: 1024K
[=C2=A0=C2=A0=C2=A0 4.128140] Run /sbin/init as init process
[=C2=A0=C2=A0=C2=A0 4.278133] usb 1-1: New USB device found, idVendor=3D04=
24, idProduct=3D9514, bcdDevice=3D 2.00
[=C2=A0=C2=A0=C2=A0 4.292686] usb 1-1: New USB device strings: Mfr=3D0, Pr=
oduct=3D0, SerialNumber=3D0
[=C2=A0=C2=A0=C2=A0 4.303966] hub 1-1:1.0: USB hub found
[=C2=A0=C2=A0=C2=A0 4.311058] hub 1-1:1.0: 5 ports detected
[=C2=A0=C2=A0=C2=A0 4.647797] usb 1-1.1: new high-speed USB device number =
3 using dwc_otg
[=C2=A0=C2=A0=C2=A0 4.730514] udevd[115]: starting version 3.2.9
[=C2=A0=C2=A0=C2=A0 4.745524] random: udevd: uninitialized urandom read (1=
6 bytes read)
[=C2=A0=C2=A0=C2=A0 4.756762] random: udevd: uninitialized urandom read (1=
6 bytes read)
[=C2=A0=C2=A0=C2=A0 4.766616] random: udevd: uninitialized urandom read (1=
6 bytes read)
[=C2=A0=C2=A0=C2=A0 4.788165] usb 1-1.1: New USB device found, idVendor=3D=
0424, idProduct=3Dec00, bcdDevice=3D 2.00
[=C2=A0=C2=A0=C2=A0 4.802823] usb 1-1.1: New USB device strings: Mfr=3D0, =
Product=3D0, SerialNumber=3D0
[=C2=A0=C2=A0=C2=A0 4.814602] udevd[117]: starting eudev-3.2.9
[=C2=A0=C2=A0=C2=A0 4.818138] smsc95xx v1.0.6
[=C2=A0=C2=A0=C2=A0 4.923876] smsc95xx 1-1.1:1.0 eth0: register 'smsc95xx'=
 at usb-3f980000.usb-1.1, smsc95xx USB 2.0 Ethernet, b8:27:eb:ad:85:ca
[=C2=A0=C2=A0=C2=A0 5.161891] i2c /dev entries driver
[=C2=A0=C2=A0=C2=A0 5.216319] EXT4-fs (mmcblk0p2): re-mounted. Opts: (null=
)
[=C2=A0=C2=A0=C2=A0 5.972781] random: crng init done
[=C2=A0=C2=A0=C2=A0 5.979289] random: 2 urandom warning(s) missed due to r=
atelimiting
[=C2=A0=C2=A0=C2=A0 6.470391] smsc95xx 1-1.1:1.0 eth0: hardware isn't capa=
ble of remote wakeup
[=C2=A0=C2=A0=C2=A0 6.480654] ttyS ttyS0: 2 input overrun(s)
[=C2=A0=C2=A0=C2=A0 7.962826] smsc95xx 1-1.1:1.0 eth0: link up, 100Mbps, f=
ull-duplex, lpa 0xCDE1
[=C2=A0=C2=A0=C2=A0 7.973416] ttyS ttyS0: 2 input overrun(s)
[=C2=A0=C2=A0 11.883822] Installing knfsd (copyright (C) 1996 okir@monad.s=
wb.de).
[=C2=A0=C2=A0 11.893705] ttyS ttyS0: 2 input overrun(s)
[=C2=A0=C2=A0 13.268076] NFSD: Using /var/lib/nfs/v4recovery as the NFSv4 =
state recovery directory
[=C2=A0=C2=A0 13.280639] ttyS ttyS0: 2 input overrun(s)
[=C2=A0=C2=A0 13.294215] NFSD: Using legacy client tracking operations.
[=C2=A0=C2=A0 13.304013] NFSD: starting 90-second grace period (net f00004=
c1)
[ 1014.267771] usb 1-1.2: new high-speed USB device number 4 using dwc_otg
[ 1014.399220] usb 1-1.2: New USB device found, idVendor=3D0b95, idProduct=
=
=3D772b, bcdDevice=3D 0.02
[ 1014.408345] usb 1-1.2: New USB device strings: Mfr=3D1, Product=3D2, Se=
rialNumber=3D3
[ 1014.416278] usb 1-1.2: Product: AX88772B
[ 1014.420431] usb 1-1.2: Manufacturer: ASIX Elec. Corp.
[ 1014.425889] usb 1-1.2: SerialNumber: 000001

Please assist me if you have some clue regarding this issue.

Thanks and Regards.

--ZXnyt1tFO97ohVY4Fn5S
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Zoran,<br />here is the cat /proc/cmdline output of my cm3-<br /><br /><=
strong>coherent_pool=3D1M snd_bcm2835.enable_compat_alsa=3D0 snd_bcm2835.en=
able_hdmi=3D1 snd_bcm2835.enable_headphones=3D1 bcm2708_fb.fbwidth=3D720 bc=
m2708_fb.fbheight=3D480 bcm2708_fb.fbswap=3D1 smsc95xx.macaddr=3DB8:27:EB:A=
D:85:CA vc_mem.mem_base=3D0x3ec00000 vc_mem.mem_size=3D0x40000000&nbsp; dwc=
_otg.lpm_enable=3D0 console=3DttyS0,115200 console=3Dtty1 root=3D/dev/mmcbl=
k0p2 rootfstype=3Dext4 rootwait kgdboc=3DttyAMA0,115200<br /></strong><br /=
>Earlier my issue was that&nbsp; I was no getting <strong>/dev/ttyS0</stron=
g> terminal in my yocto image for cm3.<br />But going through the web I got=
 that setting 1 to <strong><span style=3D"font-size: 10pt;">CONFIG_SERIAL_8=
250_RUNTIME_UARTS&nbsp;&nbsp;</span></strong><span style=3D"font-size: 10pt=
;">solved that issue and now I'm getting ttyS0 in my /dev directory.<br /><=
br />But now another issue I'm facing when I'm enabling cosole via this tts=
S0 port i.e.&nbsp;&nbsp; <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>&nbsp; [&nbsp;&nbsp; 13.280639] ttyS tt=
yS0: 2 input overrun(s)<br /><br /></strong></span>here is my dmesg output:=
<br /><br />[&nbsp;&nbsp;&nbsp; 0.000000] Booting Linux on physical CPU 0x0=
<br />[&nbsp;&nbsp;&nbsp; 0.000000] Linux version 5.4.64-v7 (oe-user@oe-hos=
t) (gcc version 9.3.0 (GCC)) #1 SMP Fri Sep 11 12:57:30 UTC 2020<br />[&nbs=
p;&nbsp;&nbsp; 0.000000] CPU: ARMv7 Processor [410fd034] revision 4 (ARMv7)=
, cr=3D10c5383d<br />[&nbsp;&nbsp;&nbsp; 0.000000] CPU: div instructions av=
ailable: patching division code<br />[&nbsp;&nbsp;&nbsp; 0.000000] CPU: PIP=
T / VIPT nonaliasing data cache, VIPT aliasing instruction cache<br />[&nbs=
p;&nbsp;&nbsp; 0.000000] OF: fdt: Machine model: Raspberry Pi Compute Modul=
e 3 Rev 1.0<br />[&nbsp;&nbsp;&nbsp; 0.000000] Memory policy: Data cache wr=
itealloc<br />[&nbsp;&nbsp;&nbsp; 0.000000] Reserved memory: created CMA me=
mory pool at 0x37400000, size 64 MiB<br />[&nbsp;&nbsp;&nbsp; 0.000000] OF:=
 reserved mem: initialized node linux,cma, compatible id shared-dma-pool<br=
 />[&nbsp;&nbsp;&nbsp; 0.000000] On node 0 totalpages: 242688<br />[&nbsp;&=
nbsp;&nbsp; 0.000000]&nbsp;&nbsp; Normal zone: 2133 pages used for memmap<b=
r />[&nbsp;&nbsp;&nbsp; 0.000000]&nbsp;&nbsp; Normal zone: 0 pages reserved=
<br />[&nbsp;&nbsp;&nbsp; 0.000000]&nbsp;&nbsp; Normal zone: 242688 pages, =
LIFO batch:63<br />[&nbsp;&nbsp;&nbsp; 0.000000] percpu: Embedded 20 pages/=
cpu s50060 r8192 d23668 u81920<br />[&nbsp;&nbsp;&nbsp; 0.000000] pcpu-allo=
c: s50060 r8192 d23668 u81920 alloc=3D20*4096<br />[&nbsp;&nbsp;&nbsp; 0.00=
0000] pcpu-alloc: [0] 0 [0] 1 [0] 2 [0] 3 <br />[&nbsp;&nbsp;&nbsp; 0.00000=
0] Built 1 zonelists, mobility grouping on.&nbsp; Total pages: 240555<br />=
[&nbsp;&nbsp;&nbsp; 0.000000] Kernel command line: coherent_pool=3D1M snd_b=
cm2835.enable_compat_alsa=3D0 snd_bcm2835.enable_hdmi=3D1 snd_bcm2835.enabl=
e_headphones=3D1 bcm2708_fb.fbwidth=3D720 bcm2708_fb.fbheight=3D480 bcm2708=
_fb.fbswap=3D1 smsc95xx.macaddr=3DB8:27:EB:AD:85:CA vc_mem.mem_base=3D0x3ec=
00000 vc_mem.mem_size=3D0x40000000&nbsp; dwc_otg.lpm_enable=3D0 console=3Dt=
tyS0,115200 console=3Dtty1 root=3D/dev/mmcblk0p2 rootfstype=3Dext4 rootwait=
 kgdboc=3DttyAMA0,115200<br />[&nbsp;&nbsp;&nbsp; 0.000000] Dentry cache ha=
sh table entries: 131072 (order: 7, 524288 bytes, linear)<br />[&nbsp;&nbsp=
;&nbsp; 0.000000] Inode-cache hash table entries: 65536 (order: 6, 262144 b=
ytes, linear)<br />[&nbsp;&nbsp;&nbsp; 0.000000] mem auto-init: stack:off, =
heap alloc:off, heap free:off<br />[&nbsp;&nbsp;&nbsp; 0.000000] Memory: 88=
0444K/970752K available (9216K kernel code, 716K rwdata, 2684K rodata, 1024=
K init, 849K bss, 24772K reserved, 65536K cma-reserved)<br />[&nbsp;&nbsp;&=
nbsp; 0.000000] SLUB: HWalign=3D64, Order=3D0-3, MinObjects=3D0, CPUs=3D4, =
Nodes=3D1<br />[&nbsp;&nbsp;&nbsp; 0.000000] ftrace: allocating 29805 entri=
es in 59 pages<br />[&nbsp;&nbsp;&nbsp; 0.000000] rcu: Hierarchical RCU imp=
lementation.<br />[&nbsp;&nbsp;&nbsp; 0.000000] rcu: RCU calculated value o=
f scheduler-enlistment delay is 10 jiffies.<br />[&nbsp;&nbsp;&nbsp; 0.0000=
00] NR_IRQS: 16, nr_irqs: 16, preallocated irqs: 16<br />[&nbsp;&nbsp;&nbsp=
; 0.000000] random: get_random_bytes called from start_kernel+0x328/0x508 w=
ith crng_init=3D0<br />[&nbsp;&nbsp;&nbsp; 0.000000] arch_timer: cp15 timer=
(s) running at 19.20MHz (phys).<br />[&nbsp;&nbsp;&nbsp; 0.000000] clocksou=
rce: arch_sys_counter: mask: 0xffffffffffffff max_cycles: 0x46d987e47, max_=
idle_ns: 440795202767 ns<br />[&nbsp;&nbsp;&nbsp; 0.000006] sched_clock: 56=
 bits at 19MHz, resolution 52ns, wraps every 4398046511078ns<br />[&nbsp;&n=
bsp;&nbsp; 0.000020] Switching to timer-based delay loop, resolution 52ns<b=
r />[&nbsp;&nbsp;&nbsp; 0.000288] Console: colour dummy device 80x30<br />[=
&nbsp;&nbsp;&nbsp; 0.000885] printk: console [tty1] enabled<br />[&nbsp;&nb=
sp;&nbsp; 0.000960] Calibrating delay loop (skipped), value calculated usin=
g timer frequency.. 38.40 BogoMIPS (lpj=3D192000)<br />[&nbsp;&nbsp;&nbsp; =
0.001009] pid_max: default: 32768 minimum: 301<br />[&nbsp;&nbsp;&nbsp; 0.0=
01232] LSM: Security Framework initializing<br />[&nbsp;&nbsp;&nbsp; 0.0014=
77] Mount-cache hash table entries: 2048 (order: 1, 8192 bytes, linear)<br =
/>[&nbsp;&nbsp;&nbsp; 0.001524] Mountpoint-cache hash table entries: 2048 (=
order: 1, 8192 bytes, linear)<br />[&nbsp;&nbsp;&nbsp; 0.002936] Disabling =
memory control group subsystem<br />[&nbsp;&nbsp;&nbsp; 0.003081] CPU: Test=
ing write buffer coherency: ok<br />[&nbsp;&nbsp;&nbsp; 0.003674] CPU0: thr=
ead -1, cpu 0, socket 0, mpidr 80000000<br />[&nbsp;&nbsp;&nbsp; 0.004651] =
Setting up static identity map for 0x100000 - 0x100060<br />[&nbsp;&nbsp;&n=
bsp; 0.004873] rcu: Hierarchical SRCU implementation.<br />[&nbsp;&nbsp;&nb=
sp; 0.005586] smp: Bringing up secondary CPUs ...<br />[&nbsp;&nbsp;&nbsp; =
0.006748] CPU1: thread -1, cpu 1, socket 0, mpidr 80000001<br />[&nbsp;&nbs=
p;&nbsp; 0.008417] CPU2: thread -1, cpu 2, socket 0, mpidr 80000002<br />[&=
nbsp;&nbsp;&nbsp; 0.009943] CPU3: thread -1, cpu 3, socket 0, mpidr 8000000=
3<br />[&nbsp;&nbsp;&nbsp; 0.010479] smp: Brought up 1 node, 4 CPUs<br />[&=
nbsp;&nbsp;&nbsp; 0.010528] SMP: Total of 4 processors activated (153.60 Bo=
goMIPS).<br />[&nbsp;&nbsp;&nbsp; 0.010557] CPU: All CPU(s) started in HYP =
mode.<br />[&nbsp;&nbsp;&nbsp; 0.010582] CPU: Virtualization extensions ava=
ilable.<br />[&nbsp;&nbsp;&nbsp; 0.011597] devtmpfs: initialized<br />[&nbs=
p;&nbsp;&nbsp; 0.027564] VFP support v0.3: implementor 41 architecture 3 pa=
rt 40 variant 3 rev 4<br />[&nbsp;&nbsp;&nbsp; 0.028074] clocksource: jiffi=
es: mask: 0xffffffff max_cycles: 0xffffffff, max_idle_ns: 19112604462750000=
 ns<br />[&nbsp;&nbsp;&nbsp; 0.028132] futex hash table entries: 1024 (orde=
r: 4, 65536 bytes, linear)<br />[&nbsp;&nbsp;&nbsp; 0.031459] pinctrl core:=
 initialized pinctrl subsystem<br />[&nbsp;&nbsp;&nbsp; 0.032650] NET: Regi=
stered protocol family 16<br />[&nbsp;&nbsp;&nbsp; 0.036992] DMA: prealloca=
ted 1024 KiB pool for atomic coherent allocations<br />[&nbsp;&nbsp;&nbsp; =
0.041879] audit: initializing netlink subsys (disabled)<br />[&nbsp;&nbsp;&=
nbsp; 0.042183] audit: type=3D2000 audit(0.040:1): state=3Dinitialized audi=
t_enabled=3D0 res=3D1<br />[&nbsp;&nbsp;&nbsp; 0.043730] hw-breakpoint: fou=
nd 5 (+1 reserved) breakpoint and 4 watchpoint registers.<br />[&nbsp;&nbsp=
;&nbsp; 0.043770] hw-breakpoint: maximum watchpoint size is 8 bytes.<br />[=
&nbsp;&nbsp;&nbsp; 0.044019] Serial: AMBA PL011 UART driver<br />[&nbsp;&nb=
sp;&nbsp; 0.046056] bcm2835-mbox 3f00b880.mailbox: mailbox enabled<br />[&n=
bsp;&nbsp;&nbsp; 0.070160] raspberrypi-firmware soc:firmware: Attached to f=
irmware from 2020-09-11 14:25, variant start<br />[&nbsp;&nbsp;&nbsp; 0.080=
196] raspberrypi-firmware soc:firmware: Firmware hash is ecd571f7947fb751a2=
66d8591b0573d4d975fbe6<br />[&nbsp;&nbsp;&nbsp; 0.132933] bcm2835-dma 3f007=
000.dma: DMA legacy API manager, dmachans=3D0x1<br />[&nbsp;&nbsp;&nbsp; 0.=
135178] SCSI subsystem initialized<br />[&nbsp;&nbsp;&nbsp; 0.135460] usbco=
re: registered new interface driver usbfs<br />[&nbsp;&nbsp;&nbsp; 0.135556=
] usbcore: registered new interface driver hub<br />[&nbsp;&nbsp;&nbsp; 0.1=
35703] usbcore: registered new device driver usb<br />[&nbsp;&nbsp;&nbsp; 0=
.137691] clocksource: Switched to clocksource arch_sys_counter<br />[&nbsp;=
&nbsp;&nbsp; 1.382483] VFS: Disk quotas dquot_6.6.0<br />[&nbsp;&nbsp;&nbsp=
; 1.382646] VFS: Dquot-cache hash table entries: 1024 (order 0, 4096 bytes)=
<br />[&nbsp;&nbsp;&nbsp; 1.382869] FS-Cache: Loaded<br />[&nbsp;&nbsp;&nbs=
p; 1.383168] CacheFiles: Loaded<br />[&nbsp;&nbsp;&nbsp; 1.394807] thermal_=
sys: Registered thermal governor 'step_wise'<br />[&nbsp;&nbsp;&nbsp; 1.395=
207] NET: Registered protocol family 2<br />[&nbsp;&nbsp;&nbsp; 1.396283] t=
cp_listen_portaddr_hash hash table entries: 512 (order: 0, 6144 bytes, line=
ar)<br />[&nbsp;&nbsp;&nbsp; 1.396360] TCP established hash table entries: =
8192 (order: 3, 32768 bytes, linear)<br />[&nbsp;&nbsp;&nbsp; 1.396501] TCP=
 bind hash table entries: 8192 (order: 4, 65536 bytes, linear)<br />[&nbsp;=
&nbsp;&nbsp; 1.396713] TCP: Hash tables configured (established 8192 bind 8=
192)<br />[&nbsp;&nbsp;&nbsp; 1.396898] UDP hash table entries: 512 (order:=
 2, 16384 bytes, linear)<br />[&nbsp;&nbsp;&nbsp; 1.396973] UDP-Lite hash t=
able entries: 512 (order: 2, 16384 bytes, linear)<br />[&nbsp;&nbsp;&nbsp; =
1.397287] NET: Registered protocol family 1<br />[&nbsp;&nbsp;&nbsp; 1.3984=
27] RPC: Registered named UNIX socket transport module.<br />[&nbsp;&nbsp;&=
nbsp; 1.398462] RPC: Registered udp transport module.<br />[&nbsp;&nbsp;&nb=
sp; 1.398488] RPC: Registered tcp transport module.<br />[&nbsp;&nbsp;&nbsp=
; 1.398515] RPC: Registered tcp NFSv4.1 backchannel transport module.<br />=
[&nbsp;&nbsp;&nbsp; 1.400297] hw perfevents: enabled with armv7_cortex_a7 P=
MU driver, 7 counters available<br />[&nbsp;&nbsp;&nbsp; 1.404004] Initiali=
se system trusted keyrings<br />[&nbsp;&nbsp;&nbsp; 1.404281] workingset: t=
imestamp_bits=3D14 max_order=3D18 bucket_order=3D4<br />[&nbsp;&nbsp;&nbsp;=
 1.416225] FS-Cache: Netfs 'nfs' registered for caching<br />[&nbsp;&nbsp;&=
nbsp; 1.416897] NFS: Registering the id_resolver key type<br />[&nbsp;&nbsp=
;&nbsp; 1.416978] Key type id_resolver registered<br />[&nbsp;&nbsp;&nbsp; =
1.417005] Key type id_legacy registered<br />[&nbsp;&nbsp;&nbsp; 1.417043] =
nfs4filelayout_init: NFSv4 File Layout Driver Registering...<br />[&nbsp;&n=
bsp;&nbsp; 1.418451] Key type asymmetric registered<br />[&nbsp;&nbsp;&nbsp=
; 1.418482] Asymmetric key parser 'x509' registered<br />[&nbsp;&nbsp;&nbsp=
; 1.418551] Block layer SCSI generic (bsg) driver version 0.4 loaded (major=
 249)<br />[&nbsp;&nbsp;&nbsp; 1.418590] io scheduler mq-deadline registere=
d<br />[&nbsp;&nbsp;&nbsp; 1.418618] io scheduler kyber registered<br />[&n=
bsp;&nbsp;&nbsp; 1.423548] bcm2708_fb soc:fb: FB found 1 display(s)<br />[&=
nbsp;&nbsp;&nbsp; 1.437559] Console: switching to colour frame buffer devic=
e 90x30<br />[&nbsp;&nbsp;&nbsp; 1.446253] bcm2708_fb soc:fb: Registered fr=
amebuffer for display 0, size 720x480<br />[&nbsp;&nbsp;&nbsp; 1.452896] Se=
rial: 8250/16550 driver, 1 ports, IRQ sharing enabled<br />[&nbsp;&nbsp;&nb=
sp; 1.458395] bcm2835-rng 3f104000.rng: hwrng registered<br />[&nbsp;&nbsp;=
&nbsp; 1.461812] vc-mem: phys_addr:0x00000000 mem_base=3D0x3ec00000 mem_siz=
e:0x40000000(1024 MiB)<br />[&nbsp;&nbsp;&nbsp; 1.468540] vc-sm: Videocore =
shared memory driver<br />[&nbsp;&nbsp;&nbsp; 1.472180] gpiomem-bcm2835 3f2=
00000.gpiomem: Initialised: Registers at 0x3f200000<br />[&nbsp;&nbsp;&nbsp=
; 1.489107] brd: module loaded<br />[&nbsp;&nbsp;&nbsp; 1.505307] loop: mod=
ule loaded<br />[&nbsp;&nbsp;&nbsp; 1.509860] Loading iSCSI transport class=
 v2.0-870.<br />[&nbsp;&nbsp;&nbsp; 1.513862] libphy: Fixed MDIO Bus: probe=
d<br />[&nbsp;&nbsp;&nbsp; 1.517035] usbcore: registered new interface driv=
er lan78xx<br />[&nbsp;&nbsp;&nbsp; 1.520267] usbcore: registered new inter=
face driver smsc95xx<br />[&nbsp;&nbsp;&nbsp; 1.523303] dwc_otg: version 3.=
00a 10-AUG-2012 (platform bus)<br />[&nbsp;&nbsp;&nbsp; 2.254610] Core Rele=
ase: 2.80a<br />[&nbsp;&nbsp;&nbsp; 2.257707] Setting default values for co=
re params<br />[&nbsp;&nbsp;&nbsp; 2.260769] Finished setting default value=
s for core params<br />[&nbsp;&nbsp;&nbsp; 2.464194] Using Buffer DMA mode<=
br />[&nbsp;&nbsp;&nbsp; 2.467200] Periodic Transfer Interrupt Enhancement =
- disabled<br />[&nbsp;&nbsp;&nbsp; 2.470261] Multiprocessor Interrupt Enha=
ncement - disabled<br />[&nbsp;&nbsp;&nbsp; 2.473253] OTG VER PARAM: 0, OTG=
 VER FLAG: 0<br />[&nbsp;&nbsp;&nbsp; 2.476233] Dedicated Tx FIFOs mode<br =
/>[&nbsp;&nbsp;&nbsp; 2.479874] WARN::dwc_otg_hcd_init:1072: FIQ DMA bounce=
 buffers: virt =3D b7504000 dma =3D 0xf7504000 len=3D9024<br />[&nbsp;&nbsp=
;&nbsp; 2.486063] FIQ FSM acceleration enabled for :<br />&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Non-per=
iodic Split Transactions<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Periodic Split Transactions<br />&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; High-Speed Isochronous Endpoints<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Interrupt/Control S=
plit Transaction hack enabled<br />[&nbsp;&nbsp;&nbsp; 2.500574] dwc_otg: M=
icroframe scheduler enabled<br />[&nbsp;&nbsp;&nbsp; 2.500642] WARN::hcd_in=
it_fiq:457: FIQ on core 1<br />[&nbsp;&nbsp;&nbsp; 2.503411] WARN::hcd_init=
_fiq:458: FIQ ASM at 80728fa4 length 36<br />[&nbsp;&nbsp;&nbsp; 2.506123] =
WARN::hcd_init_fiq:496: MPHI regs_base at bb810000<br />[&nbsp;&nbsp;&nbsp;=
 2.508797] dwc_otg 3f980000.usb: DWC OTG Controller<br />[&nbsp;&nbsp;&nbsp=
; 2.511499] dwc_otg 3f980000.usb: new USB bus registered, assigned bus numb=
er 1<br />[&nbsp;&nbsp;&nbsp; 2.514279] dwc_otg 3f980000.usb: irq 56, io me=
m 0x00000000<br />[&nbsp;&nbsp;&nbsp; 2.517028] Init: Port Power? op_state=
=3D1<br />[&nbsp;&nbsp;&nbsp; 2.519717] Init: Power Port (0)<br />[&nbsp;&=
nbsp;&nbsp; 2.522754] usb usb1: New USB device found, idVendor=3D1d6b, idPr=
oduct=3D0002, bcdDevice=3D 5.04<br />[&nbsp;&nbsp;&nbsp; 2.528327] usb usb1=
: New USB device strings: Mfr=3D3, Product=3D2, SerialNumber=3D1<br />[&nbs=
p;&nbsp;&nbsp; 2.531293] usb usb1: Product: DWC OTG Controller<br />[&nbsp;=
&nbsp;&nbsp; 2.534211] usb usb1: Manufacturer: Linux 5.4.64-v7 dwc_otg_hcd<=
br />[&nbsp;&nbsp;&nbsp; 2.537146] usb usb1: SerialNumber: 3f980000.usb<br =
/>[&nbsp;&nbsp;&nbsp; 2.540771] hub 1-0:1.0: USB hub found<br />[&nbsp;&nbs=
p;&nbsp; 2.543657] hub 1-0:1.0: 1 port detected<br />[&nbsp;&nbsp;&nbsp; 2.=
547238] dwc_otg: FIQ enabled<br />[&nbsp;&nbsp;&nbsp; 2.547248] dwc_otg: NA=
K holdoff enabled<br />[&nbsp;&nbsp;&nbsp; 2.547258] dwc_otg: FIQ split-tra=
nsaction FSM enabled<br />[&nbsp;&nbsp;&nbsp; 2.547274] Module dwc_common_p=
ort init<br />[&nbsp;&nbsp;&nbsp; 2.547609] usbcore: registered new interfa=
ce driver usb-storage<br />[&nbsp;&nbsp;&nbsp; 2.550721] mousedev: PS/2 mou=
se device common for all mice<br />[&nbsp;&nbsp;&nbsp; 2.554936] bcm2835-wd=
t bcm2835-wdt: Broadcom BCM2835 watchdog timer<br />[&nbsp;&nbsp;&nbsp; 2.5=
60496] sdhci: Secure Digital Host Controller Interface driver<br />[&nbsp;&=
nbsp;&nbsp; 2.563302] sdhci: Copyright(c) Pierre Ossman<br />[&nbsp;&nbsp;&=
nbsp; 2.566769] sdhost-bcm2835 3f202000.mmc: could not get clk, deferring p=
robe<br />[&nbsp;&nbsp;&nbsp; 2.570026] sdhci-pltfm: SDHCI platform and OF =
driver helper<br />[&nbsp;&nbsp;&nbsp; 2.573709] ledtrig-cpu: registered to=
 indicate activity on CPUs<br />[&nbsp;&nbsp;&nbsp; 2.576947] hidraw: raw H=
ID events driver (C) Jiri Kosina<br />[&nbsp;&nbsp;&nbsp; 2.580129] usbcore=
: registered new interface driver usbhid<br />[&nbsp;&nbsp;&nbsp; 2.583142]=
 usbhid: USB HID core driver<br />[&nbsp;&nbsp;&nbsp; 2.586528] ashmem: ini=
tialized<br />[&nbsp;&nbsp;&nbsp; 2.590509] vchiq: vchiq_init_state: slot_z=
ero =3D (ptrval)<br />[&nbsp;&nbsp;&nbsp; 2.595277] [vc_sm_connected_init]:=
 start<br />[&nbsp;&nbsp;&nbsp; 2.605012] [vc_sm_connected_init]: end - ret=
urning 0<br />[&nbsp;&nbsp;&nbsp; 2.610026] Initializing XFRM netlink socke=
t<br />[&nbsp;&nbsp;&nbsp; 2.613006] NET: Registered protocol family 17<br =
/>[&nbsp;&nbsp;&nbsp; 2.616003] Key type dns_resolver registered<br />[&nbs=
p;&nbsp;&nbsp; 2.619492] Registering SWP/SWPB emulation handler<br />[&nbsp=
;&nbsp;&nbsp; 2.622506] registered taskstats version 1<br />[&nbsp;&nbsp;&n=
bsp; 2.625154] Loading compiled-in X.509 certificates<br />[&nbsp;&nbsp;&nb=
sp; 2.628349] Key type ._fscrypt registered<br />[&nbsp;&nbsp;&nbsp; 2.6309=
77] Key type .fscrypt registered<br />[&nbsp;&nbsp;&nbsp; 2.644359] uart-pl=
011 3f201000.serial: cts_event_workaround enabled<br />[&nbsp;&nbsp;&nbsp; =
2.647220] 3f201000.serial: ttyAMA0 at MMIO 0x3f201000 (irq =3D 81, base_bau=
d =3D 0) is a PL011 rev2<br />[&nbsp;&nbsp;&nbsp; 2.655430] printk: console=
 [ttyS0] disabled<br />[&nbsp;&nbsp;&nbsp; 2.658305] 3f215040.serial: ttyS0=
 at MMIO 0x0 (irq =3D 53, base_baud =3D 31250000) is a 16550<br />[&nbsp;&n=
bsp;&nbsp; 3.678083] printk: console [ttyS0] enabled<br />[&nbsp;&nbsp;&nbs=
p; 3.685731] KGDB: Registered I/O driver kgdboc<br />[&nbsp;&nbsp;&nbsp; 3.=
693806] bcm2835-power bcm2835-power: Broadcom BCM2835 power domains driver<=
br />[&nbsp;&nbsp;&nbsp; 3.705593] sdhost: log_buf @ (ptrval) (f7507000)<br=
 />[&nbsp;&nbsp;&nbsp; 3.761622] mmc0: sdhost-bcm2835 loaded - DMA enabled =
(&gt;1)<br />[&nbsp;&nbsp;&nbsp; 3.772680] of_cfs_init<br />[&nbsp;&nbsp;&n=
bsp; 3.778301] of_cfs_init: OK<br />[&nbsp;&nbsp;&nbsp; 3.785362] Waiting f=
or root device /dev/mmcblk0p2...<br />[&nbsp;&nbsp;&nbsp; 3.797847] Indeed =
it is in host mode hprt0 =3D 00021501<br />[&nbsp;&nbsp;&nbsp; 3.891131] ra=
ndom: fast init done<br />[&nbsp;&nbsp;&nbsp; 3.936402] mmc0: new high spee=
d MMC card at address 0001<br />[&nbsp;&nbsp;&nbsp; 3.946012] mmcblk0: mmc0=
:0001 4FTE4R 3.64 GiB<br />[&nbsp;&nbsp;&nbsp; 3.953973] mmcblk0boot0: mmc0=
:0001 4FTE4R partition 1 4.00 MiB<br />[&nbsp;&nbsp;&nbsp; 3.963473] mmcblk=
0boot1: mmc0:0001 4FTE4R partition 2 4.00 MiB<br />[&nbsp;&nbsp;&nbsp; 3.97=
2635] mmcblk0rpmb: mmc0:0001 4FTE4R partition 3 512 KiB, chardev (245:0)<br=
 />[&nbsp;&nbsp;&nbsp; 3.985330]&nbsp; mmcblk0: p1 p2<br />[&nbsp;&nbsp;&nb=
sp; 4.007759] usb 1-1: new high-speed USB device number 2 using dwc_otg<br =
/>[&nbsp;&nbsp;&nbsp; 4.011189] EXT4-fs (mmcblk0p2): mounted filesystem wit=
h ordered data mode. Opts: (null)<br />[&nbsp;&nbsp;&nbsp; 4.017529] Indeed=
 it is in host mode hprt0 =3D 00001101<br />[&nbsp;&nbsp;&nbsp; 4.031809] V=
FS: Mounted root (ext4 filesystem) readonly on device 179:2.<br />[&nbsp;&n=
bsp;&nbsp; 4.050759] devtmpfs: mounted<br />[&nbsp;&nbsp;&nbsp; 4.102220] F=
reeing unused kernel memory: 1024K<br />[&nbsp;&nbsp;&nbsp; 4.128140] Run /=
sbin/init as init process<br />[&nbsp;&nbsp;&nbsp; 4.278133] usb 1-1: New U=
SB device found, idVendor=3D0424, idProduct=3D9514, bcdDevice=3D 2.00<br />=
[&nbsp;&nbsp;&nbsp; 4.292686] usb 1-1: New USB device strings: Mfr=3D0, Pro=
duct=3D0, SerialNumber=3D0<br />[&nbsp;&nbsp;&nbsp; 4.303966] hub 1-1:1.0: =
USB hub found<br />[&nbsp;&nbsp;&nbsp; 4.311058] hub 1-1:1.0: 5 ports detec=
ted<br />[&nbsp;&nbsp;&nbsp; 4.647797] usb 1-1.1: new high-speed USB device=
 number 3 using dwc_otg<br />[&nbsp;&nbsp;&nbsp; 4.730514] udevd[115]: star=
ting version 3.2.9<br />[&nbsp;&nbsp;&nbsp; 4.745524] random: udevd: uninit=
ialized urandom read (16 bytes read)<br />[&nbsp;&nbsp;&nbsp; 4.756762] ran=
dom: udevd: uninitialized urandom read (16 bytes read)<br />[&nbsp;&nbsp;&n=
bsp; 4.766616] random: udevd: uninitialized urandom read (16 bytes read)<br=
 />[&nbsp;&nbsp;&nbsp; 4.788165] usb 1-1.1: New USB device found, idVendor=
=3D0424, idProduct=3Dec00, bcdDevice=3D 2.00<br />[&nbsp;&nbsp;&nbsp; 4.80=
2823] usb 1-1.1: New USB device strings: Mfr=3D0, Product=3D0, SerialNumber=
=
=3D0<br />[&nbsp;&nbsp;&nbsp; 4.814602] udevd[117]: starting eudev-3.2.9<b=
r />[&nbsp;&nbsp;&nbsp; 4.818138] smsc95xx v1.0.6<br />[&nbsp;&nbsp;&nbsp; =
4.923876] smsc95xx 1-1.1:1.0 eth0: register 'smsc95xx' at usb-3f980000.usb-=
1.1, smsc95xx USB 2.0 Ethernet, b8:27:eb:ad:85:ca<br />[&nbsp;&nbsp;&nbsp; =
5.161891] i2c /dev entries driver<br />[&nbsp;&nbsp;&nbsp; 5.216319] EXT4-f=
s (mmcblk0p2): re-mounted. Opts: (null)<br />[&nbsp;&nbsp;&nbsp; 5.972781] =
random: crng init done<br />[&nbsp;&nbsp;&nbsp; 5.979289] random: 2 urandom=
 warning(s) missed due to ratelimiting<br />[&nbsp;&nbsp;&nbsp; 6.470391] s=
msc95xx 1-1.1:1.0 eth0: hardware isn't capable of remote wakeup<br />[&nbsp=
;&nbsp;&nbsp; 6.480654] ttyS ttyS0: 2 input overrun(s)<br />[&nbsp;&nbsp;&n=
bsp; 7.962826] smsc95xx 1-1.1:1.0 eth0: link up, 100Mbps, full-duplex, lpa =
0xCDE1<br />[&nbsp;&nbsp;&nbsp; 7.973416] ttyS ttyS0: 2 input overrun(s)<br=
 />[&nbsp;&nbsp; 11.883822] Installing knfsd (copyright (C) 1996 okir@monad=
.swb.de).<br />[&nbsp;&nbsp; 11.893705] ttyS ttyS0: 2 input overrun(s)<br /=
>[&nbsp;&nbsp; 13.268076] NFSD: Using /var/lib/nfs/v4recovery as the NFSv4 =
state recovery directory<br />[&nbsp;&nbsp; 13.280639] ttyS ttyS0: 2 input =
overrun(s)<br />[&nbsp;&nbsp; 13.294215] NFSD: Using legacy client tracking=
 operations.<br />[&nbsp;&nbsp; 13.304013] NFSD: starting 90-second grace p=
eriod (net f00004c1)<br />[ 1014.267771] usb 1-1.2: new high-speed USB devi=
ce number 4 using dwc_otg<br />[ 1014.399220] usb 1-1.2: New USB device fou=
nd, idVendor=3D0b95, idProduct=3D772b, bcdDevice=3D 0.02<br />[ 1014.408345=
] usb 1-1.2: New USB device strings: Mfr=3D1, Product=3D2, SerialNumber=3D3=
<br />[ 1014.416278] usb 1-1.2: Product: AX88772B<br />[ 1014.420431] usb 1=
-1.2: Manufacturer: ASIX Elec. Corp.<br />[ 1014.425889] usb 1-1.2: SerialN=
umber: 000001<br /><br /><br /><br />Please assist me if you have some clue=
 regarding this issue.<br /><br />Thanks and Regards.

--ZXnyt1tFO97ohVY4Fn5S--
