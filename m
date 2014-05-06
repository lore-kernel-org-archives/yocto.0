Return-Path: <jeremy@rhtech.co.nz>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CD911E00BAA; Mon,  5 May 2014 19:45:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [119.47.118.13 listed in list.dnswl.org]
X-Greylist: delayed 399 seconds by postgrey-1.32 at yocto-www;
	Mon, 05 May 2014 19:44:56 PDT
Received: from linuxplesk9.openhost.net.nz (linuxplesk9.openhost.net.nz
	[119.47.118.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D681FE00B5D
	for <yocto@yoctoproject.org>; Mon,  5 May 2014 19:44:56 -0700 (PDT)
Received: (qmail 24883 invoked from network); 6 May 2014 14:38:15 +1200
Received: from 122-61-40-229.jetstream.xtra.co.nz (HELO ?192.168.1.98?)
	(122.61.40.229)
	by linuxplesk9.openhost.net.nz with (DHE-RSA-AES128-SHA encrypted) SMTP;
	6 May 2014 14:38:15 +1200
Message-ID: <53684B1B.7030804@rhtech.co.nz>
Date: Tue, 06 May 2014 14:38:19 +1200
From: Jeremy Cole-Baker <jeremy@rhtech.co.nz>
Organization: Riverhead Technology
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64;
	rv:24.0) Gecko/20100101 Thunderbird/24.5.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <mailman.16489.1397995243.26702.yocto@yoctoproject.org>
In-Reply-To: <mailman.16489.1397995243.26702.yocto@yoctoproject.org>
Subject: Anybody managed to get Beagleboard xM to work?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: jeremy@rhtech.co.nz
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 06 May 2014 02:45:01 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

Has anyone else been successful in getting a Beagleboard xM to work?

I have built with Yocto, using the beagleboard-dora-10.0.0 package and 
"core-image-basic". I installed everything to the uSD card as per 
instructions, including root filesystem, modules, .dtb, kernel image and 
boot loader.

It boots up fine (viewing via serial port console), and the content of 
the system log looks good. However, there are no USB devices, including 
the ethernet adaptor. It is supposed to appear as "usb0", but the only 
adaptors are "lo" and "sit0". "ifup usb0" results in a "no such device" 
error.

Also, nothing appears in the log when I connect a USB memory stick. 
There is no video output either.

Someone mentioned turning on "CONFIG_USB_ETH"; I enabled this under 
Device Drivers->USB Support (I think it's called "Ethernet Gadget") but 
it made no difference, and looking at the help, this setting is to do 
with USB OTG which I don't need.

Anything else I am missing? Some configuration I need to set up? I have 
no idea where to look! It is frustrating because it seems to be very 
close to working.

Also, I'm loading the Kernel at 0x80300000 and the .dtb at 0x815f0000 
(see below). I don't remember where I got those addresses. How are those 
addresses determined? Are they correct? I can't find any help on what 
they should be, only examples of people using them.

Any suggestions very welcome!


=== Build Details: ====
3.10.11-yocto-standard
beagleboard-dora-10.0.0
Build Machine: x86 / ubuntu 13.04

=== Target: ====
BeagleBoard-xM Rev C


Here's the startup text and output of dmesg. It seems to indicate (to 
me) that device drivers have been loaded and USB devices found OK:
------------------------------------------------------------------------------------------------


Hit any key to stop autoboot:  0
i2c_write: pads on bus 0 probably not configured (status=0x10)
Could not write vsel to reg 85 (2)
mmc0 is current device
i2c_write: pads on bus 0 probably not configured (status=0x10)
Could not write vsel to reg 85 (2)
gpio: pin 173 (gpio 173) value is 0
gpio: pin 4 (gpio 4) value is 0
SD/MMC found on device 0
reading uEnv.txt
660 bytes read in 6 ms (107.4 KiB/s)
Loaded environment from uEnv.txt
Importing environment from mmc ...
Running uenvcmd ...
reading zImage
4653552 bytes read in 298 ms (14.9 MiB/s)
reading beagle-xm.dtb
11444 bytes read in 9 ms (1.2 MiB/s)
Kernel image @ 0x80300000 [ 0x000000 - 0x4701f0 ]
## Flattened Device Tree blob at 815f0000
    Booting using the fdt blob at 0x815f0000
    Loading Device Tree to 8fffa000, end 8ffffcb3 ... OK

Starting kernel ...


Poky (Yocto Project Reference Distro) 1.5 beagleboard /dev/ttyO2

beagleboard login: root
root@beagleboard:~# dmesg
[    0.000000] Booting Linux on physical CPU 0x0
[    0.000000] Initializing cgroup subsys cpuset
[    0.000000] Initializing cgroup subsys cpu
[    0.000000] Initializing cgroup subsys cpuacct
[    0.000000] Linux version 3.10.11-yocto-standard (hundehoden@Huzap) 
(gcc version 4.8.1 (GCC) ) #1 Tue May 6 12:10:22 NZST 2014
[    0.000000] CPU: ARMv7 Processor [413fc082] revision 2 (ARMv7), 
cr=10c53c7d
[    0.000000] CPU: PIPT / VIPT nonaliasing data cache, VIPT aliasing 
instruction cache
[    0.000000] Machine: Generic OMAP3 (Flattened Device Tree), model: TI 
OMAP3 BeagleBoard xM
[    0.000000] Memory policy: ECC disabled, Data cache writeback
[    0.000000] On node 0 totalpages: 130816
[    0.000000] free_area_init_node: node 0, pgdat c09e9de4, node_mem_map 
c0aab000
[    0.000000]   Normal zone: 1024 pages used for memmap
[    0.000000]   Normal zone: 0 pages reserved
[    0.000000]   Normal zone: 130816 pages, LIFO batch:31
[    0.000000] DT missing boot CPU MPIDR[23:0], fall back to default 
cpu_logical_map
[    0.000000] CPU: All CPU(s) started in SVC mode.
[    0.000000] OMAP3630 ES1.2 (l2cache iva sgx neon isp 192mhz_clk )
[    0.000000] pcpu-alloc: s0 r0 d32768 u32768 alloc=1*32768
[    0.000000] pcpu-alloc: [0] 0
[    0.000000] Built 1 zonelists in Zone order, mobility grouping on. 
Total pages: 129792
[    0.000000] Kernel command line: 'console=ttyO2,115200n8 mpurate=auto 
buddy=none camera=none root=/dev/mmcblk0p2 rootwait rootfstype=ext4 rw 
vram=12MB omapfb.mode=dvi:1280x720MR-16@60 omapdss.def_disp=dvi'
[    0.000000] PID hash table entries: 2048 (order: 1, 8192 bytes)
[    0.000000] Dentry cache hash table entries: 65536 (order: 6, 262144 
bytes)
[    0.000000] Inode-cache hash table entries: 32768 (order: 5, 131072 
bytes)
[    0.000000] allocated 1048576 bytes of page_cgroup
[    0.000000] please try 'cgroup_disable=memory' option if you don't 
want memory cgroups
[    0.000000] Memory: 511MB = 511MB total
[    0.000000] Memory: 506740k/506740k available, 17548k reserved, 0K 
highmem
[    0.000000] Virtual kernel memory layout:
     vector  : 0xffff0000 - 0xffff1000   (   4 kB)
     fixmap  : 0xfff00000 - 0xfffe0000   ( 896 kB)
     vmalloc : 0xe0800000 - 0xff000000   ( 488 MB)
     lowmem  : 0xc0000000 - 0xe0000000   ( 512 MB)
     pkmap   : 0xbfe00000 - 0xc0000000   (   2 MB)
     modules : 0xbf000000 - 0xbfe00000   (  14 MB)
       .text : 0xc0008000 - 0xc08d8998   (9027 kB)
       .init : 0xc08d9000 - 0xc095b354   ( 521 kB)
       .data : 0xc095c000 - 0xc09f0fa0   ( 596 kB)
        .bss : 0xc09f0fa0 - 0xc0aaa360   ( 741 kB)
[    0.000000] SLUB: HWalign=64, Order=0-3, MinObjects=0, CPUs=1, Nodes=1
[    0.000000] NR_IRQS:16 nr_irqs:16 16
[    0.000000] IRQ: Found an INTC at 0xfa200000 (revision 4.0) with 96 
interrupts
[    0.000000] Total of 96 interrupts on 1 active controller
[    0.000000] Clocking rate (Crystal/Core/MPU): 26.0/400/600 MHz
[    0.000000] OMAP clockevent source: timer1 at 32768 Hz
[    0.000000] sched_clock: 32 bits at 32kHz, resolution 30517ns, wraps 
every 131071999ms
[    0.000000] OMAP clocksource: 32k_counter at 32768 Hz
[    0.000000] Console: colour dummy device 80x30
[    0.000000] console [tty0] enabled
[    0.001068] Calibrating delay loop... 398.13 BogoMIPS (lpj=1990656)
[    0.049957] pid_max: default: 32768 minimum: 301
[    0.050140] Security Framework initialized
[    0.050415] Mount-cache hash table entries: 512
[    0.054321] Initializing cgroup subsys debug
[    0.054351] Initializing cgroup subsys memory
[    0.054412] Initializing cgroup subsys devices
[    0.054443] Initializing cgroup subsys freezer
[    0.054473] Initializing cgroup subsys net_cls
[    0.054473] Initializing cgroup subsys blkio
[    0.054565] CPU: Testing write buffer coherency: ok
[    0.054656] ftrace: allocating 24238 entries in 72 pages
[    0.151550] Setting up static identity map for 0xc060f150 - 0xc060f1a8
[    0.158538] devtmpfs: initialized
[    0.226043] xor: measuring software checksum speed
[    0.319335]    arm4regs  :   745.200 MB/sec
[    0.419128]    8regs     :   549.200 MB/sec
[    0.518920]    32regs    :   716.000 MB/sec
[    0.518920] xor: using function: arm4regs (745.200 MB/sec)
[    0.518951] pinctrl core: initialized pinctrl subsystem
[    0.519439] regulator-dummy: no parameters
[    0.519805] NET: Registered protocol family 16
[    0.520599] DMA: preallocated 256 KiB pool for atomic coherent 
allocations
[    0.527557] Reprogramming SDRC clock to 400000000 Hz
[    0.529571] OMAP GPIO hardware version 2.5
[    0.535614] platform 49022000.mcbsp: alias fck already exists
[    0.536010] platform 49024000.mcbsp: alias fck already exists
[    0.539276] omap-gpmc 6e000000.gpmc: GPMC revision 5.0
[    0.540069] hw-breakpoint: debug architecture 0x4 unsupported.
[    0.540985] OMAP DMA hardware revision 5.0
[    0.548461] bio: create slab <bio-0> at 0
[    0.718963] raid6: int32x1     97 MB/s
[    0.888336] raid6: int32x2    117 MB/s
[    1.058166] raid6: int32x4     98 MB/s
[    1.227905] raid6: int32x8    101 MB/s
[    1.227935] raid6: using algorithm int32x2 (117 MB/s)
[    1.227935] raid6: using intx1 recovery algorithm
[    1.241882] omap-dma-engine 48056000.dma-controller: OMAP DMA engine 
driver
[    1.244354] SCSI subsystem initialized
[    1.244659] usbcore: registered new interface driver usbfs
[    1.244720] usbcore: registered new interface driver hub
[    1.244995] usbcore: registered new device driver usb
[    1.245666] omap_i2c i2c.8: did not get pins for i2c error: -19
[    1.246124] omap_i2c i2c.8: bus 0 rev4.4 at 2600 kHz
[    1.250305] twl 0-0048: PIH (irq 23) chaining IRQs 338..346
[    1.250457] twl 0-0048: power (irq 343) chaining IRQs 346..353
[    1.251800] VDD1: 600 <--> 1450 mV at 1200 mV
[    1.252716] VDAC: 1800 mV
[    1.253570] VPLL2: 1800 mV
[    1.254241] VMMC1: 1850 <--> 3150 mV at 3150 mV
[    1.254882] VUSB1V5: 1500 mV
[    1.255401] VUSB1V8: 1800 mV
[    1.255920] VUSB3V1: 3100 mV
[    1.256530] VSIM: 1800 <--> 3000 mV at 1800 mV
[    1.257476] twl4030_gpio gpio.32: gpio (irq 338) chaining IRQs 354..371
[    1.258361] omap_i2c i2c.9: did not get pins for i2c error: -19
[    1.258819] omap_i2c i2c.9: bus 1 rev4.4 at 400 kHz
[    1.258941] omap_i2c i2c.10: did not get pins for i2c error: -19
[    1.259338] omap_i2c i2c.10: bus 2 rev4.4 at 100 kHz
[    1.260406] Advanced Linux Sound Architecture Driver Initialized.
[    1.261535] cfg80211: Calling CRDA to update world regulatory domain
[    1.263031] Switching to clocksource 32k_counter
[    1.320983] NET: Registered protocol family 2
[    1.321777] TCP established hash table entries: 4096 (order: 3, 32768 
bytes)
[    1.321899] TCP bind hash table entries: 4096 (order: 2, 16384 bytes)
[    1.321990] TCP: Hash tables configured (established 4096 bind 4096)
[    1.322082] TCP: reno registered
[    1.322113] UDP hash table entries: 256 (order: 0, 4096 bytes)
[    1.322143] UDP-Lite hash table entries: 256 (order: 0, 4096 bytes)
[    1.322479] NET: Registered protocol family 1
[    1.322937] RPC: Registered named UNIX socket transport module.
[    1.322967] RPC: Registered udp transport module.
[    1.322967] RPC: Registered tcp transport module.
[    1.322998] RPC: Registered tcp NFSv4.1 backchannel transport module.
[    1.325103] hw perfevents: enabled with ARMv7 Cortex-A8 PMU driver, 5 
counters available
[    1.547515] NFS: Registering the id_resolver key type
[    1.547637] Key type id_resolver registered
[    1.547668] Key type id_legacy registered
[    1.549224] bio: create slab <bio-1> at 1
[    1.550445] Btrfs loaded
[    1.551055] aufs 3.10-20130819
[    1.551116] msgmni has been set to 989
[    1.553039] Block layer SCSI generic (bsg) driver version 0.4 loaded 
(major 252)
[    1.553100] io scheduler noop registered
[    1.553100] io scheduler deadline registered
[    1.553405] io scheduler cfq registered (default)
[    1.553955] platform omapfb: Driver omapfb requests probe deferral
[    1.622589] omap_uart serial.5: did not get pins for uart0 error: -19
[    1.622894] serial.5: ttyO0 at MMIO 0x4806a000 (irq = 88) is a OMAP UART0
[    1.623413] omap_uart serial.6: did not get pins for uart1 error: -19
[    1.623657] serial.6: ttyO1 at MMIO 0x4806c000 (irq = 89) is a OMAP UART1
[    1.624053] omap_uart serial.7: did not get pins for uart2 error: -19
[    1.624237] serial.7: ttyO2 at MMIO 0x49020000 (irq = 90) is a OMAP UART2
[    1.624755] omap_uart serial.17: did not get pins for uart3 error: -19
[    1.624938] serial.17: ttyO3 at MMIO 0x49042000 (irq = 96) is a OMAP 
UART3
[    1.633270] brd: module loaded
[    1.634948] omap2_mcspi spi.11: pins are not configured from the driver
[    1.635467] omap2_mcspi spi.12: pins are not configured from the driver
[    1.635833] omap2_mcspi spi.13: pins are not configured from the driver
[    1.636169] omap2_mcspi spi.14: pins are not configured from the driver
[    1.636810] usbcore: registered new interface driver kaweth
[    1.636840] pegasus: v0.9.3 (2013/04/25), Pegasus/Pegasus II USB 
Ethernet driver
[    1.636901] usbcore: registered new interface driver pegasus
[    1.636993] usbcore: registered new interface driver rtl8150
[    1.637054] usbcore: registered new interface driver asix
[    1.637145] usbcore: registered new interface driver ax88179_178a
[    1.637207] usbcore: registered new interface driver cdc_ether
[    1.637268] usbcore: registered new interface driver dm9601
[    1.637359] usbcore: registered new interface driver smsc75xx
[    1.637451] usbcore: registered new interface driver smsc95xx
[    1.637512] usbcore: registered new interface driver net1080
[    1.637573] usbcore: registered new interface driver cdc_subset
[    1.637634] usbcore: registered new interface driver zaurus
[    1.637725] usbcore: registered new interface driver MOSCHIP 
usb-ethernet driver
[    1.637817] usbcore: registered new interface driver int51x1
[    1.637908] usbcore: registered new interface driver cdc_ncm
[    1.637939] ehci_hcd: USB 2.0 'Enhanced' Host Controller (EHCI) Driver
[    1.637939] ehci_hcd: block sizes: qh 64 qtd 96 itd 160 sitd 96
[    1.638000] ehci-omap: OMAP-EHCI Host Controller driver
[    1.638244] ehci-omap 48064800.ehci: EHCI Host Controller
[    1.638305] ehci-omap 48064800.ehci: new USB bus registered, assigned 
bus number 1
[    1.638366] ehci-omap 48064800.ehci: reset hcs_params 0x1313 dbg=0 
cc=1 pcc=3 ordered ports=3
[    1.638397] ehci-omap 48064800.ehci: reset hcc_params 0016 thresh 1 
uframes 256/512/1024 park
[    1.638488] ehci-omap 48064800.ehci: park 0
[    1.638519] ehci-omap 48064800.ehci: reset command 0080b02  park=3 
ithresh=8 period=1024 Reset HALT
[    1.638580] ehci-omap 48064800.ehci: irq 93, io mem 0x48064800
[    1.638610] ehci-omap 48064800.ehci: init command 0010005 (park)=0 
ithresh=1 period=512 RUN
[    1.653228] ehci-omap 48064800.ehci: USB 2.0 started, EHCI 1.00
[    1.653381] usb usb1: default language 0x0409
[    1.653411] usb usb1: udev 1, busnum 1, minor = 0
[    1.653442] usb usb1: New USB device found, idVendor=1d6b, idProduct=0002
[    1.653472] usb usb1: New USB device strings: Mfr=3, Product=2, 
SerialNumber=1
[    1.653503] usb usb1: Product: EHCI Host Controller
[    1.653503] usb usb1: Manufacturer: Linux 3.10.11-yocto-standard ehci_hcd
[    1.653533] usb usb1: SerialNumber: 48064800.ehci
[    1.654083] usb usb1: usb_probe_device
[    1.654113] usb usb1: configuration #1 chosen from 1 choice
[    1.654174] usb usb1: adding 1-0:1.0 (config #1, interface 0)
[    1.654296] hub 1-0:1.0: usb_probe_interface
[    1.654327] hub 1-0:1.0: usb_probe_interface - got id
[    1.654327] hub 1-0:1.0: USB hub found
[    1.654388] hub 1-0:1.0: 3 ports detected
[    1.654388] hub 1-0:1.0: standalone hub
[    1.654418] hub 1-0:1.0: individual port power switching
[    1.654418] hub 1-0:1.0: individual port over-current protection
[    1.654418] hub 1-0:1.0: power on to power good time: 20ms
[    1.654449] hub 1-0:1.0: local power source is good
[    1.654663] hub 1-0:1.0: enabling power on all ports
[    1.655059] usbcore: registered new interface driver usb-storage
[    1.655212] musb-hdrc musb-hdrc.0.auto: musb_init_controller failed 
with status -6
[    1.655853] mousedev: PS/2 mouse device common for all mice
[    1.657135] twl_rtc rtc.22: Enabling TWL-RTC
[    1.661376] twl_rtc rtc.22: rtc core: registered rtc.22 as rtc0
[    1.663452] omap_wdt: OMAP Watchdog Timer Rev 0x31: initial timeout 
60 sec
[    1.663665] cpuidle: using governor ladder
[    1.663665] cpuidle: using governor menu
[    1.664306] omap-dma-engine 48056000.dma-controller: allocating 
channel for 62
[    1.664367] omap-dma-engine 48056000.dma-controller: allocating 
channel for 61
[    1.667602] omap_hsmmc mmc.15: pins are not configured from the driver
[    1.703796] usbcore: registered new interface driver usbhid
[    1.703826] usbhid: USB HID core driver
[    1.741882] mmc0: host does not support reading read-only switch. 
assuming write-enable.
[    1.744720] mmc0: new high speed SD card at address 0002
[    1.745239] mmcblk0: mmc0:0002 00000 1.86 GiB
[    1.749176]  mmcblk0: p1 p2
[    1.753326] hub 1-0:1.0: state 7 ports 3 chg 0000 evt 0000
[    1.753387] hub 1-0:1.0: hub_suspend
[    1.753417] usb usb1: bus auto-suspend, wakeup 1
[    1.753417] ehci-omap 48064800.ehci: suspend root hub
[    1.799713] omap-twl4030 sound.20:  twl4030-hifi <-> 49022000.mcbsp 
mapping ok
[    1.801513] oprofile: using arm/armv7
[    1.801666] u32 classifier
[    1.801696]     Actions configured
[    1.802062] TCP: cubic registered
[    1.802886] NET: Registered protocol family 10
[    1.803955] sit: IPv6 over IPv4 tunneling driver
[    1.804779] NET: Registered protocol family 17
[    1.804962] Key type dns_resolver registered
[    1.805267] VFP support v0.3: implementor 41 architecture 3 part 30 
variant c rev 3
[    1.806152] ThumbEE CPU extension supported.
[    1.808593] VPLL2: disabling
[    1.809844] VDAC: disabling
[    1.810943] platform omapfb: Driver omapfb requests probe deferral
[    1.811309] console [netcon0] enabled
[    1.811340] netconsole: network logging started
[    1.812316] twl_rtc rtc.22: setting system clock to 2014-04-16 
01:20:46 UTC (1397611246)
[    1.812683] ALSA device list:
[    1.812713]   #0: omap3beagle
[    2.920928] EXT4-fs (mmcblk0p2): recovery complete
[    2.927734] EXT4-fs (mmcblk0p2): mounted filesystem with ordered data 
mode. Opts: (null)
[    2.927825] VFS: Mounted root (ext4 filesystem) on device 179:2.
[    2.932739] devtmpfs: mounted
[    2.933898] Freeing unused kernel memory: 520K (c08d9000 - c095b000)
[    4.063049] udevd[81]: starting version 182
[    5.036621] EXT4-fs (mmcblk0p2): re-mounted. Opts: (null)



------------------------------------------------------------------------------------------------

