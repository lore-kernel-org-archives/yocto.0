Return-Path: <yocto@gustad.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6E499E00922; Wed, 17 Dec 2014 23:29:07 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.9 required=5.0 tests=BAYES_00,TEQF_USR_MSGID_HEX
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 1.0 TEQF_USR_MSGID_HEX To and from user nearly same + unusual message
	ID
X-Greylist: delayed 364 seconds by postgrey-1.32 at yocto-www;
	Wed, 17 Dec 2014 23:29:03 PST
Received: from gustad.com (gustad.com [94.23.222.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E1B52E00897
	for <yocto@yoctoproject.org>; Wed, 17 Dec 2014 23:29:03 -0800 (PST)
Received: from filestore.home.gustad.com (c28823E56.dhcp.as2116.net
	[86.62.130.40]) by gustad.com (Postfix) with ESMTPA id 9A83D5802E0
	for <yocto@yoctoproject.org>; Thu, 18 Dec 2014 08:31:24 +0100 (CET)
Received: from localhost (filestore.home.gustad.com [172.30.30.252])
	by filestore.home.gustad.com (Postfix) with ESMTP id 0E8A011A0E22
	for <yocto@yoctoproject.org>; Thu, 18 Dec 2014 08:22:57 +0100 (CET)
Date: Thu, 18 Dec 2014 08:22:56 +0100 (CET)
Message-Id: <20141218.082256.838554820950505606.petter@gustad.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
From: Petter Gustad <yocto@gustad.com>
X-Mailer: Mew version 6.5 on Emacs 24.3 / Mule 6.0 (HANACHIRUSATO)
Mime-Version: 1.0
Subject: [meta-raspberrypi] Image will halt soon after boot
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
X-List-Received-Date: Thu, 18 Dec 2014 07:29:07 -0000
Content-Type: Text/Plain; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable


I've run "bitbake rpi-hwup-image" using the daisy branch:

meta-yocto-bsp    =3D "daisy:1e668ccf1a05c5d730de9747bc1c2b0446bda556"
meta-raspberrypi.git =3D "daisy:946b69299737cc2f1378c864f1b9075280db1b5=
3"

However, whenever I boot the created sdimage it will lock up during
boot. Typically I will see some garbage on the serial console.
Sometimes I'm able to log in, but then then I get no response (as in
the below session). Putting a pre-compiled distribution on the same
sdcard will boot just fine.

Does anybody else observe this behavior?

Is there a specific meta-raspberrypi mailing list? =


Best regards
//Petter

[    0.000000] Booting Linux on physical CPU 0x0
[    0.000000] Initializing cgroup subsys cpu
[    0.000000] Initializing cgroup subsys cpuacct
[    0.000000] Linux version 3.12.21 (yocto@pangea) (gcc version 4.8.2 =
(GCC) ) #1 PREEMPT Wed Dec 17 22:58:01 CET 2014
[    0.000000] CPU: ARMv6-compatible processor [410fb767] revision 7 (A=
RMv7), cr=3D00c5387d
[    0.000000] CPU: PIPT / VIPT nonaliasing data cache, VIPT nonaliasin=
g instruction cache
[    0.000000] Machine: BCM2708
[    0.000000] cma: CMA: reserved 8 MiB at 0b800000
[    0.000000] Memory policy: ECC disabled, Data cache writeback
[    0.000000] On node 0 totalpages: 49152
[    0.000000] free_area_init_node: node 0, pgdat c061ada0, node_mem_ma=
p c06cc000
[    0.000000]   Normal zone: 384 pages used for memmap
[    0.000000]   Normal zone: 0 pages reserved
[    0.000000]   Normal zone: 49152 pages, LIFO batch:15
[    0.000000] pcpu-alloc: s0 r0 d32768 u32768 alloc=3D1*32768
[    0.000000] pcpu-alloc: [0] 0 =

[    0.000000] Built 1 zonelists in Zone order, mobility grouping on.  =
Total pages: 48768
[    0.000000] Kernel command line: dma.dmachans=3D0x7f35 bcm2708_fb.fb=
width=3D656 bcm2708_fb.fbheight=3D416 bcm2708.boardrev=3D0x2 bcm2708.se=
rial=3D0xb3c91a9a smsc95xx.macaddr=3DB8:27:EB:C9:1A:9A sdhci-bcm2708.em=
mc_clock_freq=3D250000000 vc_mem.mem_base=3D0xec00000 vc_mem.mem_size=3D=
0x10000000  dwc_otg.lpm_enable=3D0 console=3DttyAMA0,115200 kgdboc=3Dtt=
yAMA0,115200 root=3D/dev/mmcblk0p2 rootfstype=3Dext4 rootwait debug
[    0.000000] PID hash table entries: 1024 (order: 0, 4096 bytes)
[    0.000000] Dentry cache hash table entries: 32768 (order: 5, 131072=
 bytes)
[    0.000000] Inode-cache hash table entries: 16384 (order: 4, 65536 b=
ytes)
[    0.000000] Memory: 179648K/196608K available (4492K kernel code, 23=
8K rwdata, 1340K rodata, 143K init, 701K bss, 16960K reserved)
[    0.000000] Virtual kernel memory layout:
[    0.000000]     vector  : 0xffff0000 - 0xffff1000   (   4 kB)
[    0.000000]     fixmap  : 0xfff00000 - 0xfffe0000   ( 896 kB)
[    0.000000]     vmalloc : 0xcc800000 - 0xff000000   ( 808 MB)
[    0.000000]     lowmem  : 0xc0000000 - 0xcc000000   ( 192 MB)
[    0.000000]     modules : 0xbf000000 - 0xc0000000   (  16 MB)
[    0.000000]       .text : 0xc0008000 - 0xc05ba210   (5833 kB)
[    0.000000]       .init : 0xc05bb000 - 0xc05defe4   ( 144 kB)
[    0.000000]       .data : 0xc05e0000 - 0xc061b8c0   ( 239 kB)
[    0.000000]        .bss : 0xc061b8cc - 0xc06cb088   ( 702 kB)
[    0.000000] SLUB: HWalign=3D32, Order=3D0-3, MinObjects=3D0, CPUs=3D=
1, Nodes=3D1
[    0.000000] Preemptible hierarchical RCU implementation.
[    0.000000] NR_IRQS:394
[    0.000000] sched_clock: 32 bits at 1000kHz, resolution 1000ns, wrap=
s every 4294967ms
[    0.000000] Switching to timer-based delay loop
[    0.000000] Console: colour dummy device 80x30
[    0.000403] Calibrating delay loop (skipped), value calculated using=
 timer frequency.. 2.00 BogoMIPS (lpj=3D10000)
[    0.000427] pid_max: default: 32768 minimum: 301
[    0.000918] Mount-cache hash table entries: 512
[    0.001722] Initializing cgroup subsys memory
[    0.001801] Initializing cgroup subsys devices
[    0.001820] Initializing cgroup subsys freezer
[    0.001836] Initializing cgroup subsys blkio
[    0.001963] CPU: Testing write buffer coherency: ok
[    0.002422] Setting up static identity map for 0xc04461a8 - 0xc04462=
04
[    0.004356] devtmpfs: initialized
[    0.020651] VFP support v0.3: implementor 41 architecture 1 part 20 =
variant b rev 5
[    0.022182] NET: Registered protocol family 16
[    0.027441] DMA: preallocated 4096 KiB pool for atomic coherent allo=
cations
[    0.028048] cpuidle: using governor ladder
[    0.028070] cpuidle: using governor menu
[    0.028501] bcm2708.uart_clock =3D 0
[    0.030443] hw-breakpoint: found 6 breakpoint and 1 watchpoint regis=
ters.
[    0.030464] hw-breakpoint: maximum watchpoint size is 4 bytes.
[    0.030478] mailbox: Broadcom VideoCore Mailbox driver
[    0.030553] bcm2708_vcio: mailbox at f200b880
[    0.030637] bcm_power: Broadcom power driver
[    0.030656] bcm_power_open() -> 0
[    0.030667] bcm_power_request(0, 8)
[    0.531373] bcm_mailbox_read -> 00000080, 0
[    0.531391] bcm_power_request -> 0
[    0.531629] Serial: AMBA PL011 UART driver
[    0.531779] dev:f1: ttyAMA0 at MMIO 0x20201000 (irq =3D 83, base_bau=
d =3D 0) is a PL011 rev3
[    0.912882] console [ttyAMA0] enabled
[    0.939493] bio: create slab <bio-0> at 0
[    0.944793] SCSI subsystem initialized
[    0.948741] usbcore: registered new interface driver usbfs
[    0.954412] usbcore: registered new interface driver hub
[    0.959943] usbcore: registered new device driver usb
[    0.966524] Switched to clocksource stc
[    0.970744] FS-Cache: Loaded
[    0.973877] CacheFiles: Loaded
[    0.989858] NET: Registered protocol family 2
[    0.995342] TCP established hash table entries: 2048 (order: 2, 1638=
4 bytes)
[    1.002664] TCP bind hash table entries: 2048 (order: 1, 8192 bytes)=

[    1.009101] TCP: Hash tables configured (established 2048 bind 2048)=

[    1.015521] TCP: reno registered
[    1.018804] UDP hash table entries: 256 (order: 0, 4096 bytes)
[    1.024651] UDP-Lite hash table entries: 256 (order: 0, 4096 bytes)
[    1.031408] NET: Registered protocol family 1
[    1.036316] RPC: Registered named UNIX socket transport module.
[    1.042339] RPC: Registered udp transport module.
[    1.047076] RPC: Registered tcp transport module.
[    1.051776] RPC: Registered tcp NFSv4.1 backchannel transport module=
.=

[    1.059137] bcm2708_dma: DMA manager at f2007000
[    1.063839] bcm2708_gpio: bcm2708_gpio_probe c05eded0
[    1.069393] vc-mem: phys_addr:0x00000000 mem_base=3D0x0ec00000 mem_s=
ize:0x10000000(256 MiB)
[    1.078950] audit: initializing netlink socket (disabled)
[    1.084416] type=3D2000 audit(0.930:1): initialized
[    1.252395] VFS: Disk quotas dquot_6.5.2
[    1.256757] Dquot-cache hash table entries: 1024 (order 0, 4096 byte=
s)
[    1.265585] FS-Cache: Netfs 'nfs' registered for caching
[    1.272521] NFS: Registering the id_resolver key type
[    1.277787] Key type id_resolver registered
[    1.281971] Key type id_legacy registered
[    1.286788] msgmni has been set to 366
[    1.292719] Block layer SCSI generic (bsg) driver version 0.4 loaded=
 (major 252)
[    1.300532] io scheduler noop registered
[    1.304459] io scheduler deadline registered
[    1.309165] io scheduler cfq registered (default)
[    1.315176] BCM2708FB: allocated DMA memory 4bc00000
[    1.320324] BCM2708FB: allocated DMA channel 0 @ f2007000
[    1.334178] Console: switching to colour frame buffer device 82x26
[    1.426593] uart-pl011 dev:f1: no DMA platform data
[    1.431522] kgdb: Registered I/O driver kgdboc.
[    1.436794] vc-cma: Videocore CMA driver
[    1.440719] vc-cma: vc_cma_base      =3D 0x00000000
[    1.445413] vc-cma: vc_cma_size      =3D 0x00000000 (0 MiB)
[    1.450862] vc-cma: vc_cma_initial   =3D 0x00000000 (0 MiB)
[    1.465706] brd: module loaded
[    1.474099] loop: module loaded
[    1.477624] vchiq: vchiq_init_state: slot_zero =3D 0xcb800000, is_ma=
ster =3D 0
[    1.485326] Loading iSCSI transport class v2.0-870.
[    1.491440] usbcore: registered new interface driver smsc95xx
[    1.497469] dwc_otg: version 3.00a 10-AUG-2012 (platform bus)
[    1.703404] Core Release: 2.80a
[    1.706644] Setting default values for core params
[    1.711463] Finished setting default values for core params
[    1.917202] Using Buffer DMA mode
[    1.920520] Periodic Transfer Interrupt Enhancement - disabled
[    1.926341] Multiprocessor Interrupt Enhancement - disabled
[    1.931942] OTG VER PARAM: 0, OTG VER FLAG: 0
[    1.936298] Dedicated Tx FIFOs mode
[    1.940155] WARN::dwc_otg_hcd_init:1042: FIQ DMA bounce buffers: vir=
t =3D 0xcbc14000 dma =3D 0x4bc14000 len=3D9024
[    1.950045] FIQ FSM acceleration enabled for :
[    1.950045] Non-periodic Split Transactions
[    1.950045] Periodic Split Transactions
[    1.950045] High-Speed Isochronous Endpoints
[    1.966762] dwc_otg: Microframe scheduler enabled
[    1.971526] WARN::hcd_init:473: FIQ at 0xc03207c4
[    1.976227] WARN::hcd_init:474: FIQ ASM at 0xc0320a78 length 36
[    1.982195] WARN::hcd_init:500: MPHI regs_base at 0xcc806000
[    1.987903] dwc_otg bcm2708_usb: DWC OTG Controller
[    1.992822] dwc_otg bcm2708_usb: new USB bus registered, assigned bu=
s number 1
[    2.000126] dwc_otg bcm2708_usb: irq 32, io mem 0x00000000
[    2.005630] Init: Port Power? op_state=3D1
[    2.009585] Init: Power Port (0)
[    2.013110] usb usb1: New USB device found, idVendor=3D1d6b, idProdu=
ct=3D0002
[    2.019948] usb usb1: New USB device strings: Mfr=3D3, Product=3D2, =
SerialNumber=3D1
[    2.027199] usb usb1: Product: DWC OTG Controller
[    2.031902] usb usb1: Manufacturer: Linux 3.12.21 dwc_otg_hcd
[    2.037676] usb usb1: SerialNumber: bcm2708_usb
[    2.043079] hub 1-0:1.0: USB hub found
[    2.046988] hub 1-0:1.0: 1 port detected
[    2.051393] dwc_otg: FIQ enabled
[    2.054622] dwc_otg: NAK holdoff enabled
[    2.058645] dwc_otg: FIQ split-transaction FSM enabled
[    2.063793] Module dwc_common_port init
[    2.068120] usbcore: registered new interface driver usb-storage
[    2.074463] mousedev: PS/2 mouse device common for all mice
[    2.080758] bcm2835-cpufreq: min=3D700000 max=3D700000 cur=3D700000
[    2.086756] bcm2835-cpufreq: switching to governor powersave
[    2.092416] bcm2835-cpufreq: switching to governor powersave
[    2.098226] sdhci: Secure Digital Host Controller Interface driver
[    2.104400] sdhci: Copyright(c) Pierre Ossman
[    2.108866] sdhci: Enable low-latency mode
[    2.156586] mmc0: SDHCI controller on BCM2708_Arasan [platform] usin=
g platform's DMA
[    2.164575] mmc0: BCM2708 SDHC host at 0x20300000 DMA 2 IRQ 77
[    2.170665] sdhci-pltfm: SDHCI platform and OF driver helper
[    2.178455] ledtrig-cpu: registered to indicate activity on CPUs
[    2.191938] hidraw: raw HID events driver (C) Jiri Kosina
[    2.197665] usbcore: registered new interface driver usbhid
[    2.205326] usbhid: USB HID core driver
[    2.213897] TCP: cubic registered
[    2.219357] Initializing XFRM netlink socket
[    2.223730] NET: Registered protocol family 17
[    2.231663] Key type dns_resolver registered
[    2.240533] registered taskstats version 1
=F8[    2.245890] Waiting for root device /dev/mmcblk0p2...
[    2.251282] Indeed it is in host mode hprt0 =3D 00021501
[    2.318637] mmc0: read SD Status register (SSR) after 4 attempts
[    2.346594] mmc0: new high speed SDHC card at address 0002
[    2.353793] mmcblk0: mmc0:0002 00000 7.41 GiB =

[    2.359987]  mmcblk0: p1 p2
[    2.476623] usb 1-1: new high-speed USB device number 2 using dwc_ot=
g
[    2.496562] Indeed it is in host mode hprt0 =3D 00001101
[    2.756914] usb 1-1: New USB device found, idVendor=3D0424, idProduc=
t=3D9512
[    2.763625] usb 1-1: New USB device strings: Mfr=3D0, Product=3D0, S=
erialNumber=3D0
[    2.787308] hub 1-1:1.0: USB hub found
[    2.791180] hub 1-1:1.0: 3 ports detected
[    3.086663] usb 1-1.1: new high-speed USB device number 3 using dwc_=
otg
[    3.196929] usb 1-1.1: New USB device found, idVendor=3D0424, idProd=
uct=3Dec00
[    3.203815] usb 1-1.1: New USB device strings: Mfr=3D0, Product=3D0,=
 SerialNumber=3D0
[    3.229433] smsc95xx v1.0.4
[    3.300743] smsc95xx 1-1.1:1.0 eth0: register 'smsc95xx' at usb-bcm2=
708_usb-1.1, smsc95xx USB 2.0 Ethernet, b8:27:eb:c9:1a:9a
[    3.824626] EXT4-fs (mmcblk0p2): recovery complete
[    3.837184] EXT4-fs (mmcblk0p2): mounted filesystem with ordered dat=
a mode. Opts: (null)
[    3.845347] VFS: Mounted root (ext4 filesystem) on device 179:2.
[    3.851674] devtmpfs: mounted
[    3.855117] Freeing unused kernel memory: 140K (c05bb000 - c05de000)=

=F8=F8INIT: =F8version 2.88 booting=F8
=F8Starting udev
[    4.632666] udevd[74]: starting version 182
[    5.476926] bcm2708_spi bcm2708_spi.0: master is unqueued, this is d=
eprecated
[    5.739363] EXT4-fs (mmcblk0p2): re-mounted. Opts: data=3Dordered
Starting Bootlog daemon: bootlogd.
[    5.974030] bcm2708_spi bcm2708_spi.0: SPI Controller at 0x20204000 =
(irq 80)
[    6.534489] bcm2708_i2c_init_pinmode(0,0)
[    6.633704] bcm2708_i2c_init_pinmode(0,1)
vm.min_free_kbytes =3D 8192
Wed Dec 17 22:41:00 UTC 2014
INIT: Entering runlevel: 5
Configuring network interfaces... [    7.007207] bcm2708_i2c bcm2708_i2=
c.0: BSC0 Controller at 0x20205000 (irq 79) (baudrate 100000)
[    7.079572] smsc95xx 1-1.1:1.0 eth0: hardware isn't capable of remot=
e wakeup
udhcpc (v1.22.1) started
Sending discover...
[    7.418992] bcm2708_i2c_init_pinmode(1,2)
[    7.423016] bcm2708_i2c_init_pinmode(1,3)
[    7.727159] bcm2708_i2c bcm2708_i2c.1: BSC1 Controller at 0x20804000=
 (irq 79) (baudrate 100000)

udevadm settle - timeout of 3 seconds reached, the event queue contains=
:
  /sys/devices/dev:f1 (1083)
  /sys/devices/platform/alarmtimer (1084)
  /sys/devices/platform/bcm2708-i2s.0 (1085)
  /sys/devices/platform/bcm2708_dma.0 (1086)
  /sys/devices/platform/bcm2708_fb (1087)
  /sys/devices/platform/bcm2708_gpio (1088)
  /sys/devices/platform/bcm2708_i2c.0 (1089)
  /sys/devices/platform/bcm2708_i2c.1 (1090)
  /sys/devices/platform/bcm2708_powerman.0 (1091)
  /sys/devices/platform/bcm2708_sdhci.0 (1092)
  /sys/devices/platform/bcm2708_spi.0 (1093)
  /sys/devices/platform/bcm2708_systemtimer (1094)
  /sys/devices/platform/bcm2708_usb (1095)
  /sys/devices/platform/bcm2708_usb/usb1 (1096)
  /sys/devices/platform/bcm2708_usb/usb1/1-0:1.0 (1097)
  /sys/devices/platform/bcm2708_usb/usb1/1-1 (1098)
  /sys/devices/platform/bcm2708_usb/usb1/1-1/1-1.1 (1099)
  /sys/devices/platform/bcm2708_usb/usb1/1-1/1-1.1/1-1.1:1.0 (1100)
  /sys/devices/platform/bcm2708_usb/usb1/1-1/1-1.1/1-1.1:1.0/net/eth0 (=
1101)
  /sys/devices/platform/bcm2708_usb/usb1/1-1/1-1:1.0 (1102)
  /sys/devices/platform/bcm2708_vcio (1103)
  /sys/devices/platform/bcm2835_AUD0.0 (1104)
  /sys/devices/platform/bcm2835_AUD1.1 (1105)
  /sys/devices/platform/bcm2835_AUD2.2 (1106)
  /sys/devices/platform/bcm2835_AUD3.3 (1107)
  /sys/devices/platform/bcm2835_AUD4.4 (1108)
  /sys/devices/platform/bcm2835_AUD5.5 (1109)
  /sys/devices/platform/bcm2835_AUD6.6 (1110)
  /sys/devices/platform/bcm2835_AUD7.7 (1111)
  /sys/devices/platform/bcm2835_hwmon.0 (1112)
  /sys/devices/platform/bcm2835_thermal.0 (1113)
  /sys/devices/platform/leds-gpio (1114)
  /sys/devices/platform/mmc_host/mmc0/mmc0:0002 (1116)
  /sys/devices/platform/mmc_host/mmc0/mmc0:0002/block/m[    8.095002] b=
cm2708-i2s bcm2708-i2s.0: Failed to create debugfs directory
mcblk0 (1117)
  /sys/devices/platform/mmc_host/mmc0/mmc0:0002/block/mmcblk0/mmcblk0p1=
 (1118)
  /sys/devices/platform/mmc_host/mmc0/mmc0:0002/block/mmcblk0/mmcblk0p2=
 (1119)
  /sys/devices/platform/pcm1794a-codec (1120)
  /sys/devices/platform/pcm5102a-codec (1121)
  /sys/devices/platform/serial8250.0 (1122)
  /sys/devices/platform/snd-hifiberry-dac.0 (1123)
  /sys/devices/platform/snd-hifiberry-digi.0 (1124)
  /sys/devices/platform/snd-rpi-dac.0 (1125)
  /sys/devices/platform/snd-rpi-iqaudio-dac.0 (1126)
  /sys/devices/platform/w1-gpio (1127)
  /sys/devices/virtual/block/ram11 (1169)
  /sys/devices/virtual/block/ram12 (1170)
  /sys/devices/virtual/block/ram13 (1171)
  /sys/devices/virtual/block/ram14 (1172)
  /sys/devices/virtual/block/ram15 (1173)
  /sys/devices/virtual/block/ram2 (1174)
  /sys/devices/virtual/block/ram3 (1175)
  /sys/devices/virtual/block/ram4 (1176)
[    8.683144] smsc95xx 1-1.1:1.0 eth0: link up, 100Mbps, full-duplex, =
lpa 0xCDE1
Sending discover...
Sending select f[   10.369921] pcm512x 1-004c: Failed to reset device: =
-5
or 172.30.30.53.[   10.376213] pcm512x: probe of 1-004c failed with err=
or -5
..
Lease of 172.30.30.53 obtained, lease time 259200
/etc/udhcpc.d/50default: Adding DNS 172.30.30.254
done.
Starting syslogd/klogd: done
Stopping Bootlog daemon: bootlogd.
=F8=F8
Poky (Yocto Project Reference Distro) 1.6.2 raspberrypi /dev/ttyAMA0

raspberrypi login: root
root@raspberrypi:~# pwd
/home/root
root@raspberrypi:~# =


