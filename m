Return-Path: <kaiu@gmx.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 45580E00B7A; Tue,  6 May 2014 02:07:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=FREEMAIL_FROM,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (kaiu[at]gmx.de)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [212.227.15.18 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 320 seconds by postgrey-1.32 at yocto-www;
	Tue, 06 May 2014 02:07:43 PDT
Received: from mout.gmx.net (mout.gmx.net [212.227.15.18])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6494FE00480
	for <yocto@yoctoproject.org>; Tue,  6 May 2014 02:07:43 -0700 (PDT)
Received: from mail-vc0-f176.google.com ([209.85.220.176]) by mail.gmx.com
	(mrgmx001) with ESMTPSA (Nemesis) id 0MO77c-1Wn72S3CKa-005cnU for
	<yocto@yoctoproject.org>; Tue, 06 May 2014 11:02:17 +0200
Received: by mail-vc0-f176.google.com with SMTP id lg15so554201vcb.7
	for <yocto@yoctoproject.org>; Tue, 06 May 2014 02:02:15 -0700 (PDT)
MIME-Version: 1.0
X-Received: by 10.58.126.4 with SMTP id mu4mr32983905veb.0.1399366935386; Tue,
	06 May 2014 02:02:15 -0700 (PDT)
Received: by 10.58.54.67 with HTTP; Tue, 6 May 2014 02:02:15 -0700 (PDT)
In-Reply-To: <53684B1B.7030804@rhtech.co.nz>
References: <mailman.16489.1397995243.26702.yocto@yoctoproject.org>
	<53684B1B.7030804@rhtech.co.nz>
Date: Tue, 6 May 2014 11:02:15 +0200
Message-ID: <CAAKMwiph3FtUzb7Q5c8qC5F+4ktdqX_0ZD9DjcENmzOr1HPZ8A@mail.gmail.com>
From: Kai Ulrich <kaiu@gmx.de>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
X-Provags-ID: V03:K0:snOhXve5GpM/w8JNXZ2LlQ2u1AH5HBzkghNrBZJ/CaPQCJifQIS
	5C0bPinevpPjaLhxQrPY2ChszrmA1vpYrDlymyrhKeDctFE5g9kzmkjJQqbd+C74aqSUJK3
	qks//rSPgLoQfcaTslwrlvV7wuCIFRF/FHh6FcNB0Ob7wpwdb1WzRqwuLvnk2nbJKx2Gikq
	NLnPfKv/7pAdHJvm3CxVg==
Subject: Re: Anybody managed to get Beagleboard xM to work?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: kaiu@gmx.de
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 06 May 2014 09:07:47 -0000
Content-Type: multipart/alternative; boundary=047d7b6700af18250f04f8b781d6

--047d7b6700af18250f04f8b781d6
Content-Type: text/plain; charset=UTF-8

Hi Jeremy,

How is your uEnv.txt looking like?

Kai


2014-05-06 4:38 GMT+02:00 Jeremy Cole-Baker <jeremy@rhtech.co.nz>:

> Hi,
>
> Has anyone else been successful in getting a Beagleboard xM to work?
>
> I have built with Yocto, using the beagleboard-dora-10.0.0 package and
> "core-image-basic". I installed everything to the uSD card as per
> instructions, including root filesystem, modules, .dtb, kernel image and
> boot loader.
>
> It boots up fine (viewing via serial port console), and the content of the
> system log looks good. However, there are no USB devices, including the
> ethernet adaptor. It is supposed to appear as "usb0", but the only adaptors
> are "lo" and "sit0". "ifup usb0" results in a "no such device" error.
>
> Also, nothing appears in the log when I connect a USB memory stick. There
> is no video output either.
>
> Someone mentioned turning on "CONFIG_USB_ETH"; I enabled this under Device
> Drivers->USB Support (I think it's called "Ethernet Gadget") but it made no
> difference, and looking at the help, this setting is to do with USB OTG
> which I don't need.
>
> Anything else I am missing? Some configuration I need to set up? I have no
> idea where to look! It is frustrating because it seems to be very close to
> working.
>
> Also, I'm loading the Kernel at 0x80300000 and the .dtb at 0x815f0000 (see
> below). I don't remember where I got those addresses. How are those
> addresses determined? Are they correct? I can't find any help on what they
> should be, only examples of people using them.
>
> Any suggestions very welcome!
>
>
> === Build Details: ====
> 3.10.11-yocto-standard
> beagleboard-dora-10.0.0
> Build Machine: x86 / ubuntu 13.04
>
> === Target: ====
> BeagleBoard-xM Rev C
>
>
> Here's the startup text and output of dmesg. It seems to indicate (to me)
> that device drivers have been loaded and USB devices found OK:
> ------------------------------------------------------------
> ------------------------------------
>
>
> Hit any key to stop autoboot:  0
> i2c_write: pads on bus 0 probably not configured (status=0x10)
> Could not write vsel to reg 85 (2)
> mmc0 is current device
> i2c_write: pads on bus 0 probably not configured (status=0x10)
> Could not write vsel to reg 85 (2)
> gpio: pin 173 (gpio 173) value is 0
> gpio: pin 4 (gpio 4) value is 0
> SD/MMC found on device 0
> reading uEnv.txt
> 660 bytes read in 6 ms (107.4 KiB/s)
> Loaded environment from uEnv.txt
> Importing environment from mmc ...
> Running uenvcmd ...
> reading zImage
> 4653552 bytes read in 298 ms (14.9 MiB/s)
> reading beagle-xm.dtb
> 11444 bytes read in 9 ms (1.2 MiB/s)
> Kernel image @ 0x80300000 [ 0x000000 - 0x4701f0 ]
> ## Flattened Device Tree blob at 815f0000
>    Booting using the fdt blob at 0x815f0000
>    Loading Device Tree to 8fffa000, end 8ffffcb3 ... OK
>
> Starting kernel ...
>
>
> Poky (Yocto Project Reference Distro) 1.5 beagleboard /dev/ttyO2
>
> beagleboard login: root
> root@beagleboard:~# dmesg
> [    0.000000] Booting Linux on physical CPU 0x0
> [    0.000000] Initializing cgroup subsys cpuset
> [    0.000000] Initializing cgroup subsys cpu
> [    0.000000] Initializing cgroup subsys cpuacct
> [    0.000000] Linux version 3.10.11-yocto-standard (hundehoden@Huzap)
> (gcc version 4.8.1 (GCC) ) #1 Tue May 6 12:10:22 NZST 2014
> [    0.000000] CPU: ARMv7 Processor [413fc082] revision 2 (ARMv7),
> cr=10c53c7d
> [    0.000000] CPU: PIPT / VIPT nonaliasing data cache, VIPT aliasing
> instruction cache
> [    0.000000] Machine: Generic OMAP3 (Flattened Device Tree), model: TI
> OMAP3 BeagleBoard xM
> [    0.000000] Memory policy: ECC disabled, Data cache writeback
> [    0.000000] On node 0 totalpages: 130816
> [    0.000000] free_area_init_node: node 0, pgdat c09e9de4, node_mem_map
> c0aab000
> [    0.000000]   Normal zone: 1024 pages used for memmap
> [    0.000000]   Normal zone: 0 pages reserved
> [    0.000000]   Normal zone: 130816 pages, LIFO batch:31
> [    0.000000] DT missing boot CPU MPIDR[23:0], fall back to default
> cpu_logical_map
> [    0.000000] CPU: All CPU(s) started in SVC mode.
> [    0.000000] OMAP3630 ES1.2 (l2cache iva sgx neon isp 192mhz_clk )
> [    0.000000] pcpu-alloc: s0 r0 d32768 u32768 alloc=1*32768
> [    0.000000] pcpu-alloc: [0] 0
> [    0.000000] Built 1 zonelists in Zone order, mobility grouping on.
> Total pages: 129792
> [    0.000000] Kernel command line: 'console=ttyO2,115200n8 mpurate=auto
> buddy=none camera=none root=/dev/mmcblk0p2 rootwait rootfstype=ext4 rw
> vram=12MB omapfb.mode=dvi:1280x720MR-16@60 omapdss.def_disp=dvi'
> [    0.000000] PID hash table entries: 2048 (order: 1, 8192 bytes)
> [    0.000000] Dentry cache hash table entries: 65536 (order: 6, 262144
> bytes)
> [    0.000000] Inode-cache hash table entries: 32768 (order: 5, 131072
> bytes)
> [    0.000000] allocated 1048576 bytes of page_cgroup
> [    0.000000] please try 'cgroup_disable=memory' option if you don't want
> memory cgroups
> [    0.000000] Memory: 511MB = 511MB total
> [    0.000000] Memory: 506740k/506740k available, 17548k reserved, 0K
> highmem
> [    0.000000] Virtual kernel memory layout:
>     vector  : 0xffff0000 - 0xffff1000   (   4 kB)
>     fixmap  : 0xfff00000 - 0xfffe0000   ( 896 kB)
>     vmalloc : 0xe0800000 - 0xff000000   ( 488 MB)
>     lowmem  : 0xc0000000 - 0xe0000000   ( 512 MB)
>     pkmap   : 0xbfe00000 - 0xc0000000   (   2 MB)
>     modules : 0xbf000000 - 0xbfe00000   (  14 MB)
>       .text : 0xc0008000 - 0xc08d8998   (9027 kB)
>       .init : 0xc08d9000 - 0xc095b354   ( 521 kB)
>       .data : 0xc095c000 - 0xc09f0fa0   ( 596 kB)
>        .bss : 0xc09f0fa0 - 0xc0aaa360   ( 741 kB)
> [    0.000000] SLUB: HWalign=64, Order=0-3, MinObjects=0, CPUs=1, Nodes=1
> [    0.000000] NR_IRQS:16 nr_irqs:16 16
> [    0.000000] IRQ: Found an INTC at 0xfa200000 (revision 4.0) with 96
> interrupts
> [    0.000000] Total of 96 interrupts on 1 active controller
> [    0.000000] Clocking rate (Crystal/Core/MPU): 26.0/400/600 MHz
> [    0.000000] OMAP clockevent source: timer1 at 32768 Hz
> [    0.000000] sched_clock: 32 bits at 32kHz, resolution 30517ns, wraps
> every 131071999ms
> [    0.000000] OMAP clocksource: 32k_counter at 32768 Hz
> [    0.000000] Console: colour dummy device 80x30
> [    0.000000] console [tty0] enabled
> [    0.001068] Calibrating delay loop... 398.13 BogoMIPS (lpj=1990656)
> [    0.049957] pid_max: default: 32768 minimum: 301
> [    0.050140] Security Framework initialized
> [    0.050415] Mount-cache hash table entries: 512
> [    0.054321] Initializing cgroup subsys debug
> [    0.054351] Initializing cgroup subsys memory
> [    0.054412] Initializing cgroup subsys devices
> [    0.054443] Initializing cgroup subsys freezer
> [    0.054473] Initializing cgroup subsys net_cls
> [    0.054473] Initializing cgroup subsys blkio
> [    0.054565] CPU: Testing write buffer coherency: ok
> [    0.054656] ftrace: allocating 24238 entries in 72 pages
> [    0.151550] Setting up static identity map for 0xc060f150 - 0xc060f1a8
> [    0.158538] devtmpfs: initialized
> [ 0.226043] xor: measuring software checksum speed
> [    0.319335]    arm4regs  :   745.200 MB/sec
> [ 0.419128]    8regs     :   549.200 MB/sec
> [ 0.518920]    32regs    :   716.000 MB/sec
> [ 0.518920] xor: using function: arm4regs (745.200 MB/sec)
> [ 0.518951] pinctrl core: initialized pinctrl subsystem
> [ 0.519439] regulator-dummy: no parameters
> [ 0.519805] NET: Registered protocol family 16
> [ 0.520599] DMA: preallocated 256 KiB pool for atomic coherent allocations
> [ 0.527557] Reprogramming SDRC clock to 400000000 Hz
> [ 0.529571] OMAP GPIO hardware version 2.5
> [ 0.535614] platform 49022000.mcbsp: alias fck already exists
> [ 0.536010] platform 49024000.mcbsp: alias fck already exists
> [    0.539276] omap-gpmc 6e000000.gpmc: GPMC revision 5.0
> [ 0.540069] hw-breakpoint: debug architecture 0x4 unsupported.
> [ 0.540985] OMAP DMA hardware revision 5.0
> [ 0.548461] bio: create slab <bio-0> at 0
> [ 0.718963] raid6: int32x1     97 MB/s
> [ 0.888336] raid6: int32x2    117 MB/s
> [    1.058166] raid6: int32x4     98 MB/s
> [    1.227905] raid6: int32x8    101 MB/s
> [    1.227935] raid6: using algorithm int32x2 (117 MB/s)
> [    1.227935] raid6: using intx1 recovery algorithm
> [    1.241882] omap-dma-engine 48056000.dma-controller: OMAP DMA engine
> driver
> [    1.244354] SCSI subsystem initialized
> [    1.244659] usbcore: registered new interface driver usbfs
> [    1.244720] usbcore: registered new interface driver hub
> [    1.244995] usbcore: registered new device driver usb
> [    1.245666] omap_i2c i2c.8: did not get pins for i2c error: -19
> [    1.246124] omap_i2c i2c.8: bus 0 rev4.4 at 2600 kHz
> [    1.250305] twl 0-0048: PIH (irq 23) chaining IRQs 338..346
> [    1.250457] twl 0-0048: power (irq 343) chaining IRQs 346..353
> [    1.251800] VDD1: 600 <--> 1450 mV at 1200 mV
> [    1.252716] VDAC: 1800 mV
> [    1.253570] VPLL2: 1800 mV
> [    1.254241] VMMC1: 1850 <--> 3150 mV at 3150 mV
> [    1.254882] VUSB1V5: 1500 mV
> [    1.255401] VUSB1V8: 1800 mV
> [    1.255920] VUSB3V1: 3100 mV
> [    1.256530] VSIM: 1800 <--> 3000 mV at 1800 mV
> [    1.257476] twl4030_gpio gpio.32: gpio (irq 338) chaining IRQs 354..371
> [    1.258361] omap_i2c i2c.9: did not get pins for i2c error: -19
> [    1.258819] omap_i2c i2c.9: bus 1 rev4.4 at 400 kHz
> [    1.258941] omap_i2c i2c.10: did not get pins for i2c error: -19
> [    1.259338] omap_i2c i2c.10: bus 2 rev4.4 at 100 kHz
> [    1.260406] Advanced Linux Sound Architecture Driver Initialized.
> [    1.261535] cfg80211: Calling CRDA to update world regulatory domain
> [    1.263031] Switching to clocksource 32k_counter
> [    1.320983] NET: Registered protocol family 2
> [    1.321777] TCP established hash table entries: 4096 (order: 3, 32768
> bytes)
> [    1.321899] TCP bind hash table entries: 4096 (order: 2, 16384 bytes)
> [    1.321990] TCP: Hash tables configured (established 4096 bind 4096)
> [    1.322082] TCP: reno registered
> [    1.322113] UDP hash table entries: 256 (order: 0, 4096 bytes)
> [    1.322143] UDP-Lite hash table entries: 256 (order: 0, 4096 bytes)
> [    1.322479] NET: Registered protocol family 1
> [    1.322937] RPC: Registered named UNIX socket transport module.
> [    1.322967] RPC: Registered udp transport module.
> [    1.322967] RPC: Registered tcp transport module.
> [    1.322998] RPC: Registered tcp NFSv4.1 backchannel transport module.
> [    1.325103] hw perfevents: enabled with ARMv7 Cortex-A8 PMU driver, 5
> counters available
> [    1.547515] NFS: Registering the id_resolver key type
> [    1.547637] Key type id_resolver registered
> [    1.547668] Key type id_legacy registered
> [    1.549224] bio: create slab <bio-1> at 1
> [    1.550445] Btrfs loaded
> [    1.551055] aufs 3.10-20130819
> [    1.551116] msgmni has been set to 989
> [    1.553039] Block layer SCSI generic (bsg) driver version 0.4 loaded
> (major 252)
> [    1.553100] io scheduler noop registered
> [    1.553100] io scheduler deadline registered
> [    1.553405] io scheduler cfq registered (default)
> [    1.553955] platform omapfb: Driver omapfb requests probe deferral
> [    1.622589] omap_uart serial.5: did not get pins for uart0 error: -19
> [    1.622894] serial.5: ttyO0 at MMIO 0x4806a000 (irq = 88) is a OMAP
> UART0
> [    1.623413] omap_uart serial.6: did not get pins for uart1 error: -19
> [    1.623657] serial.6: ttyO1 at MMIO 0x4806c000 (irq = 89) is a OMAP
> UART1
> [    1.624053] omap_uart serial.7: did not get pins for uart2 error: -19
> [    1.624237] serial.7: ttyO2 at MMIO 0x49020000 (irq = 90) is a OMAP
> UART2
> [    1.624755] omap_uart serial.17: did not get pins for uart3 error: -19
> [    1.624938] serial.17: ttyO3 at MMIO 0x49042000 (irq = 96) is a OMAP
> UART3
> [    1.633270] brd: module loaded
> [    1.634948] omap2_mcspi spi.11: pins are not configured from the driver
> [    1.635467] omap2_mcspi spi.12: pins are not configured from the driver
> [    1.635833] omap2_mcspi spi.13: pins are not configured from the driver
> [    1.636169] omap2_mcspi spi.14: pins are not configured from the driver
> [    1.636810] usbcore: registered new interface driver kaweth
> [    1.636840] pegasus: v0.9.3 (2013/04/25), Pegasus/Pegasus II USB
> Ethernet driver
> [    1.636901] usbcore: registered new interface driver pegasus
> [    1.636993] usbcore: registered new interface driver rtl8150
> [    1.637054] usbcore: registered new interface driver asix
> [    1.637145] usbcore: registered new interface driver ax88179_178a
> [    1.637207] usbcore: registered new interface driver cdc_ether
> [    1.637268] usbcore: registered new interface driver dm9601
> [    1.637359] usbcore: registered new interface driver smsc75xx
> [    1.637451] usbcore: registered new interface driver smsc95xx
> [    1.637512] usbcore: registered new interface driver net1080
> [    1.637573] usbcore: registered new interface driver cdc_subset
> [    1.637634] usbcore: registered new interface driver zaurus
> [    1.637725] usbcore: registered new interface driver MOSCHIP
> usb-ethernet driver
> [    1.637817] usbcore: registered new interface driver int51x1
> [    1.637908] usbcore: registered new interface driver cdc_ncm
> [    1.637939] ehci_hcd: USB 2.0 'Enhanced' Host Controller (EHCI) Driver
> [    1.637939] ehci_hcd: block sizes: qh 64 qtd 96 itd 160 sitd 96
> [    1.638000] ehci-omap: OMAP-EHCI Host Controller driver
> [    1.638244] ehci-omap 48064800.ehci: EHCI Host Controller
> [    1.638305] ehci-omap 48064800.ehci: new USB bus registered, assigned
> bus number 1
> [    1.638366] ehci-omap 48064800.ehci: reset hcs_params 0x1313 dbg=0 cc=1
> pcc=3 ordered ports=3
> [    1.638397] ehci-omap 48064800.ehci: reset hcc_params 0016 thresh 1
> uframes 256/512/1024 park
> [    1.638488] ehci-omap 48064800.ehci: park 0
> [    1.638519] ehci-omap 48064800.ehci: reset command 0080b02  park=3
> ithresh=8 period=1024 Reset HALT
> [    1.638580] ehci-omap 48064800.ehci: irq 93, io mem 0x48064800
> [    1.638610] ehci-omap 48064800.ehci: init command 0010005 (park)=0
> ithresh=1 period=512 RUN
> [    1.653228] ehci-omap 48064800.ehci: USB 2.0 started, EHCI 1.00
> [    1.653381] usb usb1: default language 0x0409
> [    1.653411] usb usb1: udev 1, busnum 1, minor = 0
> [    1.653442] usb usb1: New USB device found, idVendor=1d6b,
> idProduct=0002
> [    1.653472] usb usb1: New USB device strings: Mfr=3, Product=2,
> SerialNumber=1
> [    1.653503] usb usb1: Product: EHCI Host Controller
> [    1.653503] usb usb1: Manufacturer: Linux 3.10.11-yocto-standard
> ehci_hcd
> [    1.653533] usb usb1: SerialNumber: 48064800.ehci
> [    1.654083] usb usb1: usb_probe_device
> [    1.654113] usb usb1: configuration #1 chosen from 1 choice
> [    1.654174] usb usb1: adding 1-0:1.0 (config #1, interface 0)
> [    1.654296] hub 1-0:1.0: usb_probe_interface
> [    1.654327] hub 1-0:1.0: usb_probe_interface - got id
> [    1.654327] hub 1-0:1.0: USB hub found
> [    1.654388] hub 1-0:1.0: 3 ports detected
> [    1.654388] hub 1-0:1.0: standalone hub
> [    1.654418] hub 1-0:1.0: individual port power switching
> [    1.654418] hub 1-0:1.0: individual port over-current protection
> [    1.654418] hub 1-0:1.0: power on to power good time: 20ms
> [    1.654449] hub 1-0:1.0: local power source is good
> [    1.654663] hub 1-0:1.0: enabling power on all ports
> [    1.655059] usbcore: registered new interface driver usb-storage
> [    1.655212] musb-hdrc musb-hdrc.0.auto: musb_init_controller failed
> with status -6
> [    1.655853] mousedev: PS/2 mouse device common for all mice
> [    1.657135] twl_rtc rtc.22: Enabling TWL-RTC
> [    1.661376] twl_rtc rtc.22: rtc core: registered rtc.22 as rtc0
> [    1.663452] omap_wdt: OMAP Watchdog Timer Rev 0x31: initial timeout 60
> sec
> [    1.663665] cpuidle: using governor ladder
> [    1.663665] cpuidle: using governor menu
> [    1.664306] omap-dma-engine 48056000.dma-controller: allocating channel
> for 62
> [    1.664367] omap-dma-engine 48056000.dma-controller: allocating channel
> for 61
> [    1.667602] omap_hsmmc mmc.15: pins are not configured from the driver
> [    1.703796] usbcore: registered new interface driver usbhid
> [    1.703826] usbhid: USB HID core driver
> [    1.741882] mmc0: host does not support reading read-only switch.
> assuming write-enable.
> [    1.744720] mmc0: new high speed SD card at address 0002
> [    1.745239] mmcblk0: mmc0:0002 00000 1.86 GiB
> [    1.749176]  mmcblk0: p1 p2
> [    1.753326] hub 1-0:1.0: state 7 ports 3 chg 0000 evt 0000
> [    1.753387] hub 1-0:1.0: hub_suspend
> [    1.753417] usb usb1: bus auto-suspend, wakeup 1
> [    1.753417] ehci-omap 48064800.ehci: suspend root hub
> [    1.799713] omap-twl4030 sound.20:  twl4030-hifi <-> 49022000.mcbsp
> mapping ok
> [    1.801513] oprofile: using arm/armv7
> [    1.801666] u32 classifier
> [    1.801696]     Actions configured
> [    1.802062] TCP: cubic registered
> [    1.802886] NET: Registered protocol family 10
> [    1.803955] sit: IPv6 over IPv4 tunneling driver
> [    1.804779] NET: Registered protocol family 17
> [    1.804962] Key type dns_resolver registered
> [    1.805267] VFP support v0.3: implementor 41 architecture 3 part 30
> variant c rev 3
> [    1.806152] ThumbEE CPU extension supported.
> [    1.808593] VPLL2: disabling
> [    1.809844] VDAC: disabling
> [    1.810943] platform omapfb: Driver omapfb requests probe deferral
> [    1.811309] console [netcon0] enabled
> [    1.811340] netconsole: network logging started
> [    1.812316] twl_rtc rtc.22: setting system clock to 2014-04-16 01:20:46
> UTC (1397611246)
> [    1.812683] ALSA device list:
> [    1.812713]   #0: omap3beagle
> [    2.920928] EXT4-fs (mmcblk0p2): recovery complete
> [    2.927734] EXT4-fs (mmcblk0p2): mounted filesystem with ordered data
> mode. Opts: (null)
> [    2.927825] VFS: Mounted root (ext4 filesystem) on device 179:2.
> [    2.932739] devtmpfs: mounted
> [    2.933898] Freeing unused kernel memory: 520K (c08d9000 - c095b000)
> [    4.063049] udevd[81]: starting version 182
> [    5.036621] EXT4-fs (mmcblk0p2): re-mounted. Opts: (null)
>
>
>
> ------------------------------------------------------------
> ------------------------------------
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--047d7b6700af18250f04f8b781d6
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi<span name=3D"Jeremy Cole-Baker"> Jeremy,<br><br></=
span></div><div><span name=3D"Jeremy Cole-Baker">How is your uEnv.txt looki=
ng like?<br><br></span></div><span name=3D"Jeremy Cole-Baker">Kai</span><di=
v class=3D"gmail_extra">
<br><br><div class=3D"gmail_quote">2014-05-06 4:38 GMT+02:00 Jeremy Cole-Ba=
ker <span dir=3D"ltr">&lt;<a href=3D"mailto:jeremy@rhtech.co.nz" target=3D"=
_blank">jeremy@rhtech.co.nz</a>&gt;</span>:<br><blockquote class=3D"gmail_q=
uote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1e=
x">
Hi,<br>
<br>
Has anyone else been successful in getting a Beagleboard xM to work?<br>
<br>
I have built with Yocto, using the beagleboard-dora-10.0.0 package and &quo=
t;core-image-basic&quot;. I installed everything to the uSD card as per ins=
tructions, including root filesystem, modules, .dtb, kernel image and boot =
loader.<br>

<br>
It boots up fine (viewing via serial port console), and the content of the =
system log looks good. However, there are no USB devices, including the eth=
ernet adaptor. It is supposed to appear as &quot;usb0&quot;, but the only a=
daptors are &quot;lo&quot; and &quot;sit0&quot;. &quot;ifup usb0&quot; resu=
lts in a &quot;no such device&quot; error.<br>

<br>
Also, nothing appears in the log when I connect a USB memory stick. There i=
s no video output either.<br>
<br>
Someone mentioned turning on &quot;CONFIG_USB_ETH&quot;; I enabled this und=
er Device Drivers-&gt;USB Support (I think it&#39;s called &quot;Ethernet G=
adget&quot;) but it made no difference, and looking at the help, this setti=
ng is to do with USB OTG which I don&#39;t need.<br>

<br>
Anything else I am missing? Some configuration I need to set up? I have no =
idea where to look! It is frustrating because it seems to be very close to =
working.<br>
<br>
Also, I&#39;m loading the Kernel at 0x80300000 and the .dtb at 0x815f0000 (=
see below). I don&#39;t remember where I got those addresses. How are those=
 addresses determined? Are they correct? I can&#39;t find any help on what =
they should be, only examples of people using them.<br>

<br>
Any suggestions very welcome!<br>
<br>
<br>
=3D=3D=3D Build Details: =3D=3D=3D=3D<br>
3.10.11-yocto-standard<br>
beagleboard-dora-10.0.0<br>
Build Machine: x86 / ubuntu 13.04<br>
<br>
=3D=3D=3D Target: =3D=3D=3D=3D<br>
BeagleBoard-xM Rev C<br>
<br>
<br>
Here&#39;s the startup text and output of dmesg. It seems to indicate (to m=
e) that device drivers have been loaded and USB devices found OK:<br>
------------------------------<u></u>------------------------------<u></u>-=
-----------------------------<u></u>------<br>
<br>
<br>
Hit any key to stop autoboot: =C2=A00<br>
i2c_write: pads on bus 0 probably not configured (status=3D0x10)<br>
Could not write vsel to reg 85 (2)<br>
mmc0 is current device<br>
i2c_write: pads on bus 0 probably not configured (status=3D0x10)<br>
Could not write vsel to reg 85 (2)<br>
gpio: pin 173 (gpio 173) value is 0<br>
gpio: pin 4 (gpio 4) value is 0<br>
SD/MMC found on device 0<br>
reading uEnv.txt<br>
660 bytes read in 6 ms (107.4 KiB/s)<br>
Loaded environment from uEnv.txt<br>
Importing environment from mmc ...<br>
Running uenvcmd ...<br>
reading zImage<br>
4653552 bytes read in 298 ms (14.9 MiB/s)<br>
reading beagle-xm.dtb<br>
11444 bytes read in 9 ms (1.2 MiB/s)<br>
Kernel image @ 0x80300000 [ 0x000000 - 0x4701f0 ]<br>
## Flattened Device Tree blob at 815f0000<br>
=C2=A0 =C2=A0Booting using the fdt blob at 0x815f0000<br>
=C2=A0 =C2=A0Loading Device Tree to 8fffa000, end 8ffffcb3 ... OK<br>
<br>
Starting kernel ...<br>
<br>
<br>
Poky (Yocto Project Reference Distro) 1.5 beagleboard /dev/ttyO2<br>
<br>
beagleboard login: root<br>
root@beagleboard:~# dmesg<br>
[ =C2=A0 =C2=A00.000000] Booting Linux on physical CPU 0x0<br>
[ =C2=A0 =C2=A00.000000] Initializing cgroup subsys cpuset<br>
[ =C2=A0 =C2=A00.000000] Initializing cgroup subsys cpu<br>
[ =C2=A0 =C2=A00.000000] Initializing cgroup subsys cpuacct<br>
[ =C2=A0 =C2=A00.000000] Linux version 3.10.11-yocto-standard (hundehoden@H=
uzap) (gcc version 4.8.1 (GCC) ) #1 Tue May 6 12:10:22 NZST 2014<br>
[ =C2=A0 =C2=A00.000000] CPU: ARMv7 Processor [413fc082] revision 2 (ARMv7)=
, cr=3D10c53c7d<br>
[ =C2=A0 =C2=A00.000000] CPU: PIPT / VIPT nonaliasing data cache, VIPT alia=
sing instruction cache<br>
[ =C2=A0 =C2=A00.000000] Machine: Generic OMAP3 (Flattened Device Tree), mo=
del: TI OMAP3 BeagleBoard xM<br>
[ =C2=A0 =C2=A00.000000] Memory policy: ECC disabled, Data cache writeback<=
br>
[ =C2=A0 =C2=A00.000000] On node 0 totalpages: 130816<br>
[ =C2=A0 =C2=A00.000000] free_area_init_node: node 0, pgdat c09e9de4, node_=
mem_map c0aab000<br>
[ =C2=A0 =C2=A00.000000] =C2=A0 Normal zone: 1024 pages used for memmap<br>
[ =C2=A0 =C2=A00.000000] =C2=A0 Normal zone: 0 pages reserved<br>
[ =C2=A0 =C2=A00.000000] =C2=A0 Normal zone: 130816 pages, LIFO batch:31<br=
>
[ =C2=A0 =C2=A00.000000] DT missing boot CPU MPIDR[23:0], fall back to defa=
ult cpu_logical_map<br>
[ =C2=A0 =C2=A00.000000] CPU: All CPU(s) started in SVC mode.<br>
[ =C2=A0 =C2=A00.000000] OMAP3630 ES1.2 (l2cache iva sgx neon isp 192mhz_cl=
k )<br>
[ =C2=A0 =C2=A00.000000] pcpu-alloc: s0 r0 d32768 u32768 alloc=3D1*32768<br=
>
[ =C2=A0 =C2=A00.000000] pcpu-alloc: [0] 0<br>
[ =C2=A0 =C2=A00.000000] Built 1 zonelists in Zone order, mobility grouping=
 on. Total pages: 129792<br>
[ =C2=A0 =C2=A00.000000] Kernel command line: &#39;console=3DttyO2,115200n8=
 mpurate=3Dauto buddy=3Dnone camera=3Dnone root=3D/dev/mmcblk0p2 rootwait r=
ootfstype=3Dext4 rw vram=3D12MB omapfb.mode=3Ddvi:1280x720MR-16@<u></u>60 o=
mapdss.def_disp=3Ddvi&#39;<br>

[ =C2=A0 =C2=A00.000000] PID hash table entries: 2048 (order: 1, 8192 bytes=
)<br>
[ =C2=A0 =C2=A00.000000] Dentry cache hash table entries: 65536 (order: 6, =
262144 bytes)<br>
[ =C2=A0 =C2=A00.000000] Inode-cache hash table entries: 32768 (order: 5, 1=
31072 bytes)<br>
[ =C2=A0 =C2=A00.000000] allocated 1048576 bytes of page_cgroup<br>
[ =C2=A0 =C2=A00.000000] please try &#39;cgroup_disable=3Dmemory&#39; optio=
n if you don&#39;t want memory cgroups<br>
[ =C2=A0 =C2=A00.000000] Memory: 511MB =3D 511MB total<br>
[ =C2=A0 =C2=A00.000000] Memory: 506740k/506740k available, 17548k reserved=
, 0K highmem<br>
[ =C2=A0 =C2=A00.000000] Virtual kernel memory layout:<br>
=C2=A0 =C2=A0 vector =C2=A0: 0xffff0000 - 0xffff1000 =C2=A0 ( =C2=A0 4 kB)<=
br>
=C2=A0 =C2=A0 fixmap =C2=A0: 0xfff00000 - 0xfffe0000 =C2=A0 ( 896 kB)<br>
=C2=A0 =C2=A0 vmalloc : 0xe0800000 - 0xff000000 =C2=A0 ( 488 MB)<br>
=C2=A0 =C2=A0 lowmem =C2=A0: 0xc0000000 - 0xe0000000 =C2=A0 ( 512 MB)<br>
=C2=A0 =C2=A0 pkmap =C2=A0 : 0xbfe00000 - 0xc0000000 =C2=A0 ( =C2=A0 2 MB)<=
br>
=C2=A0 =C2=A0 modules : 0xbf000000 - 0xbfe00000 =C2=A0 ( =C2=A014 MB)<br>
=C2=A0 =C2=A0 =C2=A0 .text : 0xc0008000 - 0xc08d8998 =C2=A0 (9027 kB)<br>
=C2=A0 =C2=A0 =C2=A0 .init : 0xc08d9000 - 0xc095b354 =C2=A0 ( 521 kB)<br>
=C2=A0 =C2=A0 =C2=A0 .data : 0xc095c000 - 0xc09f0fa0 =C2=A0 ( 596 kB)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0.bss : 0xc09f0fa0 - 0xc0aaa360 =C2=A0 ( 741 kB)<=
br>
[ =C2=A0 =C2=A00.000000] SLUB: HWalign=3D64, Order=3D0-3, MinObjects=3D0, C=
PUs=3D1, Nodes=3D1<br>
[ =C2=A0 =C2=A00.000000] NR_IRQS:16 nr_irqs:16 16<br>
[ =C2=A0 =C2=A00.000000] IRQ: Found an INTC at 0xfa200000 (revision 4.0) wi=
th 96 interrupts<br>
[ =C2=A0 =C2=A00.000000] Total of 96 interrupts on 1 active controller<br>
[ =C2=A0 =C2=A00.000000] Clocking rate (Crystal/Core/MPU): 26.<a href=3D"te=
l:0%2F400%2F600" value=3D"+49400600" target=3D"_blank">0/400/600</a> MHz<br=
>
[ =C2=A0 =C2=A00.000000] OMAP clockevent source: timer1 at 32768 Hz<br>
[ =C2=A0 =C2=A00.000000] sched_clock: 32 bits at 32kHz, resolution 30517ns,=
 wraps every 131071999ms<br>
[ =C2=A0 =C2=A00.000000] OMAP clocksource: 32k_counter at 32768 Hz<br>
[ =C2=A0 =C2=A00.000000] Console: colour dummy device 80x30<br>
[ =C2=A0 =C2=A00.000000] console [tty0] enabled<br>
[ =C2=A0 =C2=A00.001068] Calibrating delay loop... 398.13 BogoMIPS (lpj=3D1=
990656)<br>
[ =C2=A0 =C2=A00.049957] pid_max: default: 32768 minimum: 301<br>
[ =C2=A0 =C2=A00.050140] Security Framework initialized<br>
[ =C2=A0 =C2=A00.050415] Mount-cache hash table entries: 512<br>
[ =C2=A0 =C2=A00.<a href=3D"tel:054321" value=3D"+4954321" target=3D"_blank=
">054321</a>] Initializing cgroup subsys debug<br>
[ =C2=A0 =C2=A00.<a href=3D"tel:054351" value=3D"+4954351" target=3D"_blank=
">054351</a>] Initializing cgroup subsys memory<br>
[ =C2=A0 =C2=A00.<a href=3D"tel:054412" value=3D"+4954412" target=3D"_blank=
">054412</a>] Initializing cgroup subsys devices<br>
[ =C2=A0 =C2=A00.<a href=3D"tel:054443" value=3D"+4954443" target=3D"_blank=
">054443</a>] Initializing cgroup subsys freezer<br>
[ =C2=A0 =C2=A00.<a href=3D"tel:054473" value=3D"+4954473" target=3D"_blank=
">054473</a>] Initializing cgroup subsys net_cls<br>
[ =C2=A0 =C2=A00.<a href=3D"tel:054473" value=3D"+4954473" target=3D"_blank=
">054473</a>] Initializing cgroup subsys blkio<br>
[ =C2=A0 =C2=A00.<a href=3D"tel:054565" value=3D"+4954565" target=3D"_blank=
">054565</a>] CPU: Testing write buffer coherency: ok<br>
[ =C2=A0 =C2=A00.<a href=3D"tel:054656" value=3D"+4954656" target=3D"_blank=
">054656</a>] ftrace: allocating 24238 entries in 72 pages<br>
[ =C2=A0 =C2=A00.151550] Setting up static identity map for 0xc060f150 - 0x=
c060f1a8<br>
[ =C2=A0 =C2=A00.158538] devtmpfs: initialized<br>
<a href=3D"tel:%5B%20%20%20%200.226043" value=3D"+49226043" target=3D"_blan=
k">[    0.226043</a>] xor: measuring software checksum speed<br>
[ =C2=A0 =C2=A00.319335] =C2=A0 =C2=A0arm4regs =C2=A0: =C2=A0 745.200 MB/se=
c<br>
<a href=3D"tel:%5B%20%20%20%200.419128" value=3D"+49419128" target=3D"_blan=
k">[    0.419128</a>] =C2=A0 =C2=A08regs =C2=A0 =C2=A0 : =C2=A0 549.200 MB/=
sec<br>
<a href=3D"tel:%5B%20%20%20%200.518920" value=3D"+49518920" target=3D"_blan=
k">[    0.518920</a>] =C2=A0 =C2=A032regs =C2=A0 =C2=A0: =C2=A0 716.000 MB/=
sec<br>
<a href=3D"tel:%5B%20%20%20%200.518920" value=3D"+49518920" target=3D"_blan=
k">[    0.518920</a>] xor: using function: arm4regs (745.200 MB/sec)<br>
<a href=3D"tel:%5B%20%20%20%200.518951" value=3D"+49518951" target=3D"_blan=
k">[    0.518951</a>] pinctrl core: initialized pinctrl subsystem<br>
<a href=3D"tel:%5B%20%20%20%200.519439" value=3D"+49519439" target=3D"_blan=
k">[    0.519439</a>] regulator-dummy: no parameters<br>
<a href=3D"tel:%5B%20%20%20%200.519805" value=3D"+49519805" target=3D"_blan=
k">[    0.519805</a>] NET: Registered protocol family 16<br>
<a href=3D"tel:%5B%20%20%20%200.520599" value=3D"+49520599" target=3D"_blan=
k">[    0.520599</a>] DMA: preallocated 256 KiB pool for atomic coherent al=
locations<br>
<a href=3D"tel:%5B%20%20%20%200.527557" value=3D"+49527557" target=3D"_blan=
k">[    0.527557</a>] Reprogramming SDRC clock to 400000000 Hz<br>
<a href=3D"tel:%5B%20%20%20%200.529571" value=3D"+49529571" target=3D"_blan=
k">[    0.529571</a>] OMAP GPIO hardware version 2.5<br>
<a href=3D"tel:%5B%20%20%20%200.535614" value=3D"+49535614" target=3D"_blan=
k">[    0.535614</a>] platform 49022000.mcbsp: alias fck already exists<br>
<a href=3D"tel:%5B%20%20%20%200.536010" value=3D"+49536010" target=3D"_blan=
k">[    0.536010</a>] platform 49024000.mcbsp: alias fck already exists<br>
[ =C2=A0 =C2=A00.539276] omap-gpmc 6e000000.gpmc: GPMC revision 5.0<br>
<a href=3D"tel:%5B%20%20%20%200.540069" value=3D"+49540069" target=3D"_blan=
k">[    0.540069</a>] hw-breakpoint: debug architecture 0x4 unsupported.<br=
>
<a href=3D"tel:%5B%20%20%20%200.540985" value=3D"+49540985" target=3D"_blan=
k">[    0.540985</a>] OMAP DMA hardware revision 5.0<br>
<a href=3D"tel:%5B%20%20%20%200.548461" value=3D"+49548461" target=3D"_blan=
k">[    0.548461</a>] bio: create slab &lt;bio-0&gt; at 0<br>
<a href=3D"tel:%5B%20%20%20%200.718963" value=3D"+49718963" target=3D"_blan=
k">[    0.718963</a>] raid6: int32x1 =C2=A0 =C2=A0 97 MB/s<br>
<a href=3D"tel:%5B%20%20%20%200.888336" value=3D"+49888336" target=3D"_blan=
k">[    0.888336</a>] raid6: int32x2 =C2=A0 =C2=A0117 MB/s<br>
[ =C2=A0 =C2=A01.058166] raid6: int32x4 =C2=A0 =C2=A0 98 MB/s<br>
[ =C2=A0 =C2=A01.227905] raid6: int32x8 =C2=A0 =C2=A0101 MB/s<br>
[ =C2=A0 =C2=A01.227935] raid6: using algorithm int32x2 (117 MB/s)<br>
[ =C2=A0 =C2=A01.227935] raid6: using intx1 recovery algorithm<br>
[ =C2=A0 =C2=A01.241882] omap-dma-engine 48056000.dma-controller: OMAP DMA =
engine driver<br>
[ =C2=A0 =C2=A01.244354] SCSI subsystem initialized<br>
[ =C2=A0 =C2=A01.244659] usbcore: registered new interface driver usbfs<br>
[ =C2=A0 =C2=A01.244720] usbcore: registered new interface driver hub<br>
[ =C2=A0 =C2=A01.244995] usbcore: registered new device driver usb<br>
[ =C2=A0 =C2=A01.245666] omap_i2c i2c.8: did not get pins for i2c error: -1=
9<br>
[ =C2=A0 =C2=A01.246124] omap_i2c i2c.8: bus 0 rev4.4 at 2600 kHz<br>
[ =C2=A0 =C2=A01.250305] twl 0-0048: PIH (irq 23) chaining IRQs 338..346<br=
>
[ =C2=A0 =C2=A01.250457] twl 0-0048: power (irq 343) chaining IRQs 346..353=
<br>
[ =C2=A0 =C2=A01.251800] VDD1: 600 &lt;--&gt; 1450 mV at 1200 mV<br>
[ =C2=A0 =C2=A01.252716] VDAC: 1800 mV<br>
[ =C2=A0 =C2=A01.253570] VPLL2: 1800 mV<br>
[ =C2=A0 =C2=A01.254241] VMMC1: 1850 &lt;--&gt; 3150 mV at 3150 mV<br>
[ =C2=A0 =C2=A01.254882] VUSB1V5: 1500 mV<br>
[ =C2=A0 =C2=A01.255401] VUSB1V8: 1800 mV<br>
[ =C2=A0 =C2=A01.255920] VUSB3V1: 3100 mV<br>
[ =C2=A0 =C2=A01.256530] VSIM: 1800 &lt;--&gt; 3000 mV at 1800 mV<br>
[ =C2=A0 =C2=A01.257476] twl4030_gpio gpio.32: gpio (irq 338) chaining IRQs=
 354..371<br>
[ =C2=A0 =C2=A01.258361] omap_i2c i2c.9: did not get pins for i2c error: -1=
9<br>
[ =C2=A0 =C2=A01.258819] omap_i2c i2c.9: bus 1 rev4.4 at 400 kHz<br>
[ =C2=A0 =C2=A01.258941] omap_i2c i2c.10: did not get pins for i2c error: -=
19<br>
[ =C2=A0 =C2=A01.259338] omap_i2c i2c.10: bus 2 rev4.4 at 100 kHz<br>
[ =C2=A0 =C2=A01.260406] Advanced Linux Sound Architecture Driver Initializ=
ed.<br>
[ =C2=A0 =C2=A01.261535] cfg80211: Calling CRDA to update world regulatory =
domain<br>
[ =C2=A0 =C2=A01.263031] Switching to clocksource 32k_counter<br>
[ =C2=A0 =C2=A01.320983] NET: Registered protocol family 2<br>
[ =C2=A0 =C2=A01.321777] TCP established hash table entries: 4096 (order: 3=
, 32768 bytes)<br>
[ =C2=A0 =C2=A01.321899] TCP bind hash table entries: 4096 (order: 2, 16384=
 bytes)<br>
[ =C2=A0 =C2=A01.321990] TCP: Hash tables configured (established 4096 bind=
 4096)<br>
[ =C2=A0 =C2=A01.322082] TCP: reno registered<br>
[ =C2=A0 =C2=A01.322113] UDP hash table entries: 256 (order: 0, 4096 bytes)=
<br>
[ =C2=A0 =C2=A01.322143] UDP-Lite hash table entries: 256 (order: 0, 4096 b=
ytes)<br>
[ =C2=A0 =C2=A01.322479] NET: Registered protocol family 1<br>
[ =C2=A0 =C2=A01.322937] RPC: Registered named UNIX socket transport module=
.<br>
[ =C2=A0 =C2=A01.322967] RPC: Registered udp transport module.<br>
[ =C2=A0 =C2=A01.322967] RPC: Registered tcp transport module.<br>
[ =C2=A0 =C2=A01.322998] RPC: Registered tcp NFSv4.1 backchannel transport =
module.<br>
[ =C2=A0 =C2=A01.325103] hw perfevents: enabled with ARMv7 Cortex-A8 PMU dr=
iver, 5 counters available<br>
[ =C2=A0 =C2=A01.547515] NFS: Registering the id_resolver key type<br>
[ =C2=A0 =C2=A01.547637] Key type id_resolver registered<br>
[ =C2=A0 =C2=A01.547668] Key type id_legacy registered<br>
[ =C2=A0 =C2=A01.549224] bio: create slab &lt;bio-1&gt; at 1<br>
[ =C2=A0 =C2=A01.550445] Btrfs loaded<br>
[ =C2=A0 =C2=A01.551055] aufs 3.10-20130819<br>
[ =C2=A0 =C2=A01.551116] msgmni has been set to 989<br>
[ =C2=A0 =C2=A01.553039] Block layer SCSI generic (bsg) driver version 0.4 =
loaded (major 252)<br>
[ =C2=A0 =C2=A01.553100] io scheduler noop registered<br>
[ =C2=A0 =C2=A01.553100] io scheduler deadline registered<br>
[ =C2=A0 =C2=A01.553405] io scheduler cfq registered (default)<br>
[ =C2=A0 =C2=A01.553955] platform omapfb: Driver omapfb requests probe defe=
rral<br>
[ =C2=A0 =C2=A01.622589] omap_uart serial.5: did not get pins for uart0 err=
or: -19<br>
[ =C2=A0 =C2=A01.622894] serial.5: ttyO0 at MMIO 0x4806a000 (irq =3D 88) is=
 a OMAP UART0<br>
[ =C2=A0 =C2=A01.623413] omap_uart serial.6: did not get pins for uart1 err=
or: -19<br>
[ =C2=A0 =C2=A01.623657] serial.6: ttyO1 at MMIO 0x4806c000 (irq =3D 89) is=
 a OMAP UART1<br>
[ =C2=A0 =C2=A01.624053] omap_uart serial.7: did not get pins for uart2 err=
or: -19<br>
[ =C2=A0 =C2=A01.624237] serial.7: ttyO2 at MMIO 0x49020000 (irq =3D 90) is=
 a OMAP UART2<br>
[ =C2=A0 =C2=A01.624755] omap_uart serial.17: did not get pins for uart3 er=
ror: -19<br>
[ =C2=A0 =C2=A01.624938] serial.17: ttyO3 at MMIO 0x49042000 (irq =3D 96) i=
s a OMAP UART3<br>
[ =C2=A0 =C2=A01.633270] brd: module loaded<br>
[ =C2=A0 =C2=A01.634948] omap2_mcspi spi.11: pins are not configured from t=
he driver<br>
[ =C2=A0 =C2=A01.635467] omap2_mcspi spi.12: pins are not configured from t=
he driver<br>
[ =C2=A0 =C2=A01.635833] omap2_mcspi spi.13: pins are not configured from t=
he driver<br>
[ =C2=A0 =C2=A01.636169] omap2_mcspi spi.14: pins are not configured from t=
he driver<br>
[ =C2=A0 =C2=A01.636810] usbcore: registered new interface driver kaweth<br=
>
[ =C2=A0 =C2=A01.636840] pegasus: v0.9.3 (2013/04/25), Pegasus/Pegasus II U=
SB Ethernet driver<br>
[ =C2=A0 =C2=A01.636901] usbcore: registered new interface driver pegasus<b=
r>
[ =C2=A0 =C2=A01.636993] usbcore: registered new interface driver rtl8150<b=
r>
[ =C2=A0 =C2=A01.637054] usbcore: registered new interface driver asix<br>
[ =C2=A0 =C2=A01.637145] usbcore: registered new interface driver ax88179_1=
78a<br>
[ =C2=A0 =C2=A01.637207] usbcore: registered new interface driver cdc_ether=
<br>
[ =C2=A0 =C2=A01.637268] usbcore: registered new interface driver dm9601<br=
>
[ =C2=A0 =C2=A01.637359] usbcore: registered new interface driver smsc75xx<=
br>
[ =C2=A0 =C2=A01.637451] usbcore: registered new interface driver smsc95xx<=
br>
[ =C2=A0 =C2=A01.637512] usbcore: registered new interface driver net1080<b=
r>
[ =C2=A0 =C2=A01.637573] usbcore: registered new interface driver cdc_subse=
t<br>
[ =C2=A0 =C2=A01.637634] usbcore: registered new interface driver zaurus<br=
>
[ =C2=A0 =C2=A01.637725] usbcore: registered new interface driver MOSCHIP u=
sb-ethernet driver<br>
[ =C2=A0 =C2=A01.637817] usbcore: registered new interface driver int51x1<b=
r>
[ =C2=A0 =C2=A01.637908] usbcore: registered new interface driver cdc_ncm<b=
r>
[ =C2=A0 =C2=A01.637939] ehci_hcd: USB 2.0 &#39;Enhanced&#39; Host Controll=
er (EHCI) Driver<br>
[ =C2=A0 =C2=A01.637939] ehci_hcd: block sizes: qh 64 qtd 96 itd 160 sitd 9=
6<br>
[ =C2=A0 =C2=A01.638000] ehci-omap: OMAP-EHCI Host Controller driver<br>
[ =C2=A0 =C2=A01.638244] ehci-omap 48064800.ehci: EHCI Host Controller<br>
[ =C2=A0 =C2=A01.638305] ehci-omap 48064800.ehci: new USB bus registered, a=
ssigned bus number 1<br>
[ =C2=A0 =C2=A01.638366] ehci-omap 48064800.ehci: reset hcs_params 0x1313 d=
bg=3D0 cc=3D1 pcc=3D3 ordered ports=3D3<br>
[ =C2=A0 =C2=A01.638397] ehci-omap 48064800.ehci: reset hcc_params 0016 thr=
esh 1 uframes 256/512/1024 park<br>
[ =C2=A0 =C2=A01.638488] ehci-omap 48064800.ehci: park 0<br>
[ =C2=A0 =C2=A01.638519] ehci-omap 48064800.ehci: reset command 0080b02 =C2=
=A0park=3D3 ithresh=3D8 period=3D1024 Reset HALT<br>
[ =C2=A0 =C2=A01.638580] ehci-omap 48064800.ehci: irq 93, io mem 0x48064800=
<br>
[ =C2=A0 =C2=A01.638610] ehci-omap 48064800.ehci: init command 0010005 (par=
k)=3D0 ithresh=3D1 period=3D512 RUN<br>
[ =C2=A0 =C2=A01.653228] ehci-omap 48064800.ehci: USB 2.0 started, EHCI 1.0=
0<br>
[ =C2=A0 =C2=A01.653381] usb usb1: default language 0x0409<br>
[ =C2=A0 =C2=A01.653411] usb usb1: udev 1, busnum 1, minor =3D 0<br>
[ =C2=A0 =C2=A01.653442] usb usb1: New USB device found, idVendor=3D1d6b, i=
dProduct=3D0002<br>
[ =C2=A0 =C2=A01.653472] usb usb1: New USB device strings: Mfr=3D3, Product=
=3D2, SerialNumber=3D1<br>
[ =C2=A0 =C2=A01.653503] usb usb1: Product: EHCI Host Controller<br>
[ =C2=A0 =C2=A01.653503] usb usb1: Manufacturer: Linux 3.10.11-yocto-standa=
rd ehci_hcd<br>
[ =C2=A0 =C2=A01.653533] usb usb1: SerialNumber: 48064800.ehci<br>
[ =C2=A0 =C2=A01.654083] usb usb1: usb_probe_device<br>
[ =C2=A0 =C2=A01.654113] usb usb1: configuration #1 chosen from 1 choice<br=
>
[ =C2=A0 =C2=A01.654174] usb usb1: adding 1-0:1.0 (config #1, interface 0)<=
br>
[ =C2=A0 =C2=A01.654296] hub 1-0:1.0: usb_probe_interface<br>
[ =C2=A0 =C2=A01.654327] hub 1-0:1.0: usb_probe_interface - got id<br>
[ =C2=A0 =C2=A01.654327] hub 1-0:1.0: USB hub found<br>
[ =C2=A0 =C2=A01.654388] hub 1-0:1.0: 3 ports detected<br>
[ =C2=A0 =C2=A01.654388] hub 1-0:1.0: standalone hub<br>
[ =C2=A0 =C2=A01.654418] hub 1-0:1.0: individual port power switching<br>
[ =C2=A0 =C2=A01.654418] hub 1-0:1.0: individual port over-current protecti=
on<br>
[ =C2=A0 =C2=A01.654418] hub 1-0:1.0: power on to power good time: 20ms<br>
[ =C2=A0 =C2=A01.654449] hub 1-0:1.0: local power source is good<br>
[ =C2=A0 =C2=A01.654663] hub 1-0:1.0: enabling power on all ports<br>
[ =C2=A0 =C2=A01.655059] usbcore: registered new interface driver usb-stora=
ge<br>
[ =C2=A0 =C2=A01.655212] musb-hdrc musb-hdrc.0.auto: musb_init_controller f=
ailed with status -6<br>
[ =C2=A0 =C2=A01.655853] mousedev: PS/2 mouse device common for all mice<br=
>
[ =C2=A0 =C2=A01.657135] twl_rtc rtc.22: Enabling TWL-RTC<br>
[ =C2=A0 =C2=A01.661376] twl_rtc rtc.22: rtc core: registered rtc.22 as rtc=
0<br>
[ =C2=A0 =C2=A01.663452] omap_wdt: OMAP Watchdog Timer Rev 0x31: initial ti=
meout 60 sec<br>
[ =C2=A0 =C2=A01.663665] cpuidle: using governor ladder<br>
[ =C2=A0 =C2=A01.663665] cpuidle: using governor menu<br>
[ =C2=A0 =C2=A01.664306] omap-dma-engine 48056000.dma-controller: allocatin=
g channel for 62<br>
[ =C2=A0 =C2=A01.664367] omap-dma-engine 48056000.dma-controller: allocatin=
g channel for 61<br>
[ =C2=A0 =C2=A01.667602] omap_hsmmc mmc.15: pins are not configured from th=
e driver<br>
[ =C2=A0 =C2=A01.703796] usbcore: registered new interface driver usbhid<br=
>
[ =C2=A0 =C2=A01.703826] usbhid: USB HID core driver<br>
[ =C2=A0 =C2=A01.741882] mmc0: host does not support reading read-only swit=
ch. assuming write-enable.<br>
[ =C2=A0 =C2=A01.744720] mmc0: new high speed SD card at address 0002<br>
[ =C2=A0 =C2=A01.745239] mmcblk0: mmc0:0002 00000 1.86 GiB<br>
[ =C2=A0 =C2=A01.749176] =C2=A0mmcblk0: p1 p2<br>
[ =C2=A0 =C2=A01.753326] hub 1-0:1.0: state 7 ports 3 chg 0000 evt 0000<br>
[ =C2=A0 =C2=A01.753387] hub 1-0:1.0: hub_suspend<br>
[ =C2=A0 =C2=A01.753417] usb usb1: bus auto-suspend, wakeup 1<br>
[ =C2=A0 =C2=A01.753417] ehci-omap 48064800.ehci: suspend root hub<br>
[ =C2=A0 =C2=A01.799713] omap-twl4030 sound.20: =C2=A0twl4030-hifi &lt;-&gt=
; 49022000.mcbsp mapping ok<br>
[ =C2=A0 =C2=A01.801513] oprofile: using arm/armv7<br>
[ =C2=A0 =C2=A01.801666] u32 classifier<br>
[ =C2=A0 =C2=A01.801696] =C2=A0 =C2=A0 Actions configured<br>
[ =C2=A0 =C2=A01.802062] TCP: cubic registered<br>
[ =C2=A0 =C2=A01.802886] NET: Registered protocol family 10<br>
[ =C2=A0 =C2=A01.803955] sit: IPv6 over IPv4 tunneling driver<br>
[ =C2=A0 =C2=A01.804779] NET: Registered protocol family 17<br>
[ =C2=A0 =C2=A01.804962] Key type dns_resolver registered<br>
[ =C2=A0 =C2=A01.805267] VFP support v0.3: implementor 41 architecture 3 pa=
rt 30 variant c rev 3<br>
[ =C2=A0 =C2=A01.806152] ThumbEE CPU extension supported.<br>
[ =C2=A0 =C2=A01.808593] VPLL2: disabling<br>
[ =C2=A0 =C2=A01.809844] VDAC: disabling<br>
[ =C2=A0 =C2=A01.810943] platform omapfb: Driver omapfb requests probe defe=
rral<br>
[ =C2=A0 =C2=A01.811309] console [netcon0] enabled<br>
[ =C2=A0 =C2=A01.811340] netconsole: network logging started<br>
[ =C2=A0 =C2=A01.812316] twl_rtc rtc.22: setting system clock to 2014-04-16=
 01:20:46 UTC (1397611246)<br>
[ =C2=A0 =C2=A01.812683] ALSA device list:<br>
[ =C2=A0 =C2=A01.812713] =C2=A0 #0: omap3beagle<br>
[ =C2=A0 =C2=A02.920928] EXT4-fs (mmcblk0p2): recovery complete<br>
[ =C2=A0 =C2=A02.927734] EXT4-fs (mmcblk0p2): mounted filesystem with order=
ed data mode. Opts: (null)<br>
[ =C2=A0 =C2=A02.927825] VFS: Mounted root (ext4 filesystem) on device 179:=
2.<br>
[ =C2=A0 =C2=A02.932739] devtmpfs: mounted<br>
[ =C2=A0 =C2=A02.933898] Freeing unused kernel memory: 520K (c08d9000 - c09=
5b000)<br>
[ =C2=A0 =C2=A04.063049] udevd[81]: starting version 182<br>
[ =C2=A0 =C2=A05.036621] EXT4-fs (mmcblk0p2): re-mounted. Opts: (null)<br>
<br>
<br>
<br>
------------------------------<u></u>------------------------------<u></u>-=
-----------------------------<u></u>------<span class=3D"HOEnZb"><font colo=
r=3D"#888888"><br>
-- <br>
______________________________<u></u>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.<u></u>org/listinfo/yocto</a><br>
</font></span></blockquote></div><br></div></div>

--047d7b6700af18250f04f8b781d6--
