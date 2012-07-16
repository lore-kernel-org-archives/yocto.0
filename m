Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CDC56E0027E
	for <yocto@yoctoproject.org>; Sun, 15 Jul 2012 20:45:25 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id q6G3jNYX000665
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Sun, 15 Jul 2012 20:45:23 -0700 (PDT)
Received: from bruce-ashfields-macbook.local (128.224.22.92) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.1.255.0; Sun, 15 Jul 2012 20:45:22 -0700
Message-ID: <50038E51.6090406@windriver.com>
Date: Sun, 15 Jul 2012 23:45:21 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.7;
	rv:9.0) Gecko/20111222 Thunderbird/9.0.1
MIME-Version: 1.0
To: Edward Vidal <vidal.develone@gmail.com>
References: <CANwz6nyuV8tRjt8BORjC72gs_UrO9v51+Vv3dkHiqQpDx_9Vcg@mail.gmail.com>
In-Reply-To: <CANwz6nyuV8tRjt8BORjC72gs_UrO9v51+Vv3dkHiqQpDx_9Vcg@mail.gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: beagleboard not booting
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
X-List-Received-Date: Mon, 16 Jul 2012 03:45:26 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12-07-14 9:23 AM, Edward Vidal wrote:
> Hello,
> git clone git://git.yoctoproject.org/poky.git
> <http://git.yoctoproject.org/poky.git>
> cd poky
> . oe-init-build-env
> MACHINE=beagleboard bitbake -v core-image-sato
>
>

Hmmm. And here I was just thinking that things had been quiet on this
front and it was time to get supported move to the 3.4 kernel tree.

>
> Created 2 partitions on /dev/sdb
> fdisk /dev/sdb
> Welcome to fdisk (util-linux 2.21.1).
>
> Changes will remain in memory only, until you decide to write them.
> Be careful before using the write command.
>
>
> Command (m for help): p
>
> Disk /dev/sdb: 7960 MB, 7960788992 bytes
> 255 heads, 63 sectors/track, 967 cylinders, total 15548416 sectors
> Units = sectors of 1 * 512 = 512 bytes
> Sector size (logical/physical): 512 bytes / 512 bytes
> I/O size (minimum/optimal): 512 bytes / 512 bytes
> Disk identifier: 0x00000000
>
> Device Boot Start End Blocks Id System
> /dev/sdb1 * 63 144584 72261 c W95 FAT32 (LBA)
> /dev/sdb2 144585 7132859 3494137+ 83 Linux
>
> format 2 partitions.
>
> mkfs.vfat -F 16 -n "boot" /dev/sdb1
> mke2fs -j -L "rootfs" /dev/sdb2
> remove the mmc
>
> /dev/sdb1 72098 0 72098 0% /run/media/vidal/boot
> /dev/sdb2 3441720 74096 3192920 3% /run/media/vidal/rootfs
>
> cd /home/vidal/poky/build/tmp/deploy/images
> cp
> MLO-beagleboard-1.5.0+git1+9f94c6577e3a018b6b75cbe39f32bb331871f915-r0
> /run/media/vidal/boot/MLO
>
> cp
> u-boot-beagleboard-v2011.06+git5+b1af6f532e0d348b153d5c148369229d24af361a-r1.bin
> /run/media/vidal/boot/u-boot.bin
>
> cp
> uImage-3.0.32+git1+d282029891bba5440630a885b940dea5e34e3e2c_1+3ab688a78cac7b2e32afc83376a53370f2bd13b7-r4.0-beagleboard-20120712003552.bin
> /run/media/vidal/boot/uImage
>
> cd /run/media/vidal/rootfs
>
> tar jvxf
> /home/vidal/poky/build/tmp/deploy/images/core-image-sato-beagleboard-20120712003552.rootfs.tar.bz2
>
> cp /home/vidal/uEnv.txt /run/media/vidal/boot
> cat /run/media/vidal/boot/uEnv.txt
> mpurate=auto
>
> dvimode="hd720 omapfb.vram=0:8M,1:4M,2:4M"
> vram=16M
> optargs="consoleblank=0"
> console="tty0 console=ttyO2,115200n8"
>
> umount /run/media/vidal/boot
> umount /run/media/vidal/rootfs
> sync
> * - * Qodem 0.1.2 Capture Generated Fri, 13 Jul 2012 10:51:17 -0600
> BEGIN * - *
>
>
>
> Texas Instruments X-Loader 1.5.0 (Jul 11 2012 - 21:01:18)
> Beagle xM
> Reading boot sector
> Loading u-boot.bin from mmc
>
>
> U-Boot 2011.06 (Jul 11 2012 - 21:01:18)
>
> OMAP3630/3730-GP ES2.1, CPU-OPP2, L3-165MHz, Max CPU Clock 1 Ghz
> OMAP3 Beagle board + LPDDR/NAND
> I2C: ready
> DRAM: 512 MiB
> NAND: 0 MiB
> MMC: OMAP SD/MMC: 0
> *** Warning - readenv() failed, using default environment
>
> In: serial
> Out: serial
> Err: serial
> Beagle unknown 0x02
> No EEPROM on expansion board
> Die ID #158000029ff800000160a7450b02602d
> Hit any key to stop autoboot: 10 9 8 7 6 5 4 3 2 1 0
> SD/MMC found on device 0
> reading uEnv.txt
>
> 130 bytes read
> Importing environment from mmc ...
> reading uImage
>
> 3043164 bytes read
> Booting from mmc ...
> ## Booting kernel from Legacy Image at 82000000 ...
> Image Name: Linux-3.0.32-yocto-standard
> Image Type: ARM Linux Kernel Image (uncompressed)
> Data Size: 3043100 Bytes = 2.9 MiB
> Load Address: 80008000
> Entry Point: 80008000
> Verifying Checksum ... OK
> Loading Kernel Image ... OK
> OK
>
> Starting kernel ...
>
> Uncompressing Linux... done, booting the kernel.
> Initializing cgroup subsys cpuset
> Initializing cgroup subsys cpu
> Linux version 3.0.32-yocto-standard (vidal@ws009.swbell.net
> <http://us.mc1814.mail.yahoo.com/mc/compose?to=vidal@ws009.swbell.net>)
> (gcc version 4.7.2
> 20120615 (prerelease) (GCC) ) #1 Wed Jul 11 20:38:46 MDT 2012
> CPU: ARMv7 Processor [413fc082] revision 2 (ARMv7), cr=10c53c7d
> CPU: VIPT nonaliasing data cache, VIPT aliasing instruction cache
> Machine: OMAP3 Beagle Board
> Reserving 16777216 bytes SDRAM for VRAM
> Memory policy: ECC disabled, Data cache writeback
> OMAP3630 ES1.2 (l2cache iva sgx neon isp 192mhz_clk )
> SRAM: Mapped pa 0x40200000 to va 0xfe400000 size: 0x10000
> Clocking rate (Crystal/Core/MPU): 26.0/332/600 MHz
> Reprogramming SDRC clock to 332000000 Hz
> Built 1 zonelists in Zone order, mobility grouping on. Total pages: 125952
> Kernel command line: console=tty0 console=ttyO2,115200n8 mpurate=auto
> vram=16M o
> mapfb.mode=dvi:hd720 omapfb.vram=0:8M,1:4M,2:4M omapfb.debug=y
> omapdss.def_disp=
> dvi root=/dev/mmcblk0p2 rw rootfstype=ext3 rootwait
> PID hash table entries: 2048 (order: 1, 8192 bytes)
> Dentry cache hash table entries: 65536 (order: 6, 262144 bytes)
> Inode-cache hash table entries: 32768 (order: 5, 131072 bytes)
> allocated 2097152 bytes of page_cgroup
> please try 'cgroup_disable=memory' option if you don't want memory cgroups
> Memory: 496MB = 496MB total
> Memory: 494448k/494448k available, 29840k reserved, 0K highmem
> Virtual kernel memory layout:
> vector : 0xffff0000 - 0xffff1000 ( 4 kB)
> fixmap : 0xfff00000 - 0xfffe0000 ( 896 kB)
> DMA : 0xffc00000 - 0xffe00000 ( 2 MB)
> vmalloc : 0xe0800000 - 0xf8000000 ( 376 MB)
> lowmem : 0xc0000000 - 0xe0000000 ( 512 MB)
> modules : 0xbf000000 - 0xc0000000 ( 16 MB)
> .init : 0xc0008000 - 0xc0058000 ( 320 kB)
> .text : 0xc0058000 - 0xc0613b0c (5871 kB)
> .data : 0xc0614000 - 0xc0671438 ( 374 kB)
> .bss : 0xc067145c - 0xc06b5044 ( 271 kB)
> SLUB: Genslabs=13, HWalign=32, Order=0-3, MinObjects=0, CPUs=1, Nodes=1
> NR_IRQS:410
> IRQ: Found an INTC at 0xfa200000 (revision 4.0) with 96 interrupts
> Total of 96 interrupts on 1 active controller
> omap_hwmod: gpt12_fck: missing clockdomain for gpt12_fck.
> OMAP clockevent source: GPTIMER12 at 32768 Hz
> sched_clock: 32 bits at 32kHz, resolution 30517ns, wraps every 131071999ms
> Console: colour dummy device 80x30
> console [tty0] enabled
> Calibrating delay loop... 500.97 BogoMIPS (lpj=1953792)
> pid_max: default: 32768 minimum: 301
> Security Framework initialized
> Mount-cache hash table entries: 512
> Initializing cgroup subsys debug
> Initializing cgroup subsys cpuacct
> Initializing cgroup subsys memory
> Initializing cgroup subsys devices
> Initializing cgroup subsys freezer
> Initializing cgroup subsys blkio
> CPU: Testing write buffer coherency: ok
> ftrace: allocating 18007 entries in 53 pages
> devtmpfs: initialized
> omap_hwmod: _populate_mpu_rt_base found no _mpu_rt_va for l4_core
> omap_hwmod: _populate_mpu_rt_base found no _mpu_rt_va for l4_per
> omap_hwmod: _populate_mpu_rt_base found no _mpu_rt_va for l4_wkup
> omap_hwmod: i2c1: softreset failed (waited 10000 usec)
> omap_hwmod: i2c2: softreset failed (waited 10000 usec)
> omap_hwmod: i2c3: softreset failed (waited 10000 usec)
> print_constraints: dummy:
> NET: Registered protocol family 16
> GPMC revision 5.0
> omap_device: omap_gpio.0: new worst case activate latency 0: 30517
> OMAP GPIO hardware version 2.5
> OMAP GPIO hardware version 2.5
> OMAP GPIO hardware version 2.5
> OMAP GPIO hardware version 2.5
> OMAP GPIO hardware version 2.5
> OMAP GPIO hardware version 2.5
> omap_mux_init: Add partition: #1: core, flags: 0
> OMAP3 Beagle Rev: unknown 2
> omap_device: omap_uart.1: new worst case deactivate latency 0: 30517
> Found NAND on CS0
> Registering NAND on CS0
> Unable to get DVI reset GPIO
> OMAP DMA hardware revision 5.0
> bio: create slab <bio-0> at 0
> SCSI subsystem initialized
> omap_device: omap2_mcspi.1: new worst case activate latency 0: 30517
> omap_device: omap2_mcspi.1: new worst case deactivate latency 0: 30517
> usbcore: registered new interface driver usbfs
> usbcore: registered new interface driver hub
> usbcore: registered new device driver usb
> omap_i2c omap_i2c.1: bus 1 rev4.0 at 2600 kHz
> twl4030: PIH (irq 7) chaining IRQs 368..375
> twl4030: power (irq 373) chaining IRQs 376..383
> twl4030: gpio (irq 368) chaining IRQs 384..401
> print_constraints: VUSB1V5: 1500 mV normal standby
> print_constraints: VUSB1V8: 1800 mV normal standby
> print_constraints: VUSB3V1: 3100 mV normal standby
> twl4030_usb twl4030_usb: Initialized TWL4030 USB module
> print_constraints: VMMC1: 1850 <--> 3150 mV at 3000 mV normal standby
> print_constraints: VDAC: 1800 mV normal standby
> print_constraints: VDVI: 1800 mV normal standby
> print_constraints: VSIM: 1800 <--> 3000 mV at 1800 mV normal standby
> omap_device: omap_i2c.1: new worst case deactivate latency 0: 30517
> omap_device: omap_i2c.3: new worst case activate latency 0: 30517
> omap_i2c omap_i2c.3: bus 3 rev4.0 at 100 kHz
> Advanced Linux Sound Architecture Driver Version 1.0.24.
> cfg80211: Calling CRDA to update world regulatory domain
> Switching to clocksource 32k_counter
> Switched to NOHz mode on CPU #0
> musb-hdrc: version 6.0, musb-dma, otg (peripheral+host)
> omap_device: musb-omap2430.-1: new worst case activate latency 0: 30517
> musb-hdrc musb-hdrc: USB OTG mode controller at fa0ab000 using DMA, IRQ 92
> NET: Registered protocol family 2
> IP route cache hash table entries: 4096 (order: 2, 16384 bytes)
> TCP established hash table entries: 16384 (order: 5, 131072 bytes)
> TCP bind hash table entries: 16384 (order: 4, 65536 bytes)
> TCP: Hash tables configured (established 16384 bind 16384)
> TCP reno registered
> UDP hash table entries: 256 (order: 0, 4096 bytes)
> UDP-Lite hash table entries: 256 (order: 0, 4096 bytes)
> NET: Registered protocol family 1
> RPC: Registered named UNIX socket transport module.
> RPC: Registered udp transport module.
> RPC: Registered tcp transport module.
> RPC: Registered tcp NFSv4.1 backchannel transport module.
> VFS: Disk quotas dquot_6.5.2
> Dquot-cache hash table entries: 1024 (order 0, 4096 bytes)
> msgmni has been set to 965
> Block layer SCSI generic (bsg) driver version 0.4 loaded (major 253)
> io scheduler noop registered
> io scheduler deadline registered
> io scheduler cfq registered (default)
> OMAP DSS rev 2.0
> Serial: 8250/16550 driver, 4 ports, IRQ sharing enabled
> omap_uart.0: ttyO0 at MMIO 0x4806a000 (irq = 72) is a OMAP UART0
> omap_uart.1: ttyO1 at MMIO 0x4806c000 (irq = 73) is a OMAP UART1
> omap_uart.2: ttyO2 at MMIO 0x49020000 (irq = 74) is a OMAP UART2
> console [ttyO2] enabled
> omap_uart.3: ttyO3 at MMIO 0x49042000 (irq = 80) is a OMAP UART3
> brd: module loaded
> omap2-nand driver initializing
> No NAND device found.
> No NAND device found.
> usbcore: registered new interface driver kaweth
> pegasus: v0.6.14 (2006/09/27), Pegasus/Pegasus II USB Ethernet driver
> usbcore: registered new interface driver pegasus
> usbcore: registered new interface driver asix
> usbcore: registered new interface driver cdc_ether
> usbcore: registered new interface driver dm9601
> usbcore: registered new interface driver smsc75xx
> usbcore: registered new interface driver smsc95xx
> usbcore: registered new interface driver net1080
> usbcore: registered new interface driver cdc_subset
> usbcore: registered new interface driver zaurus
> usbcore: registered new interface driver MOSCHIP usb-ethernet driver
> usbcore: registered new interface driver int51x1
> cdc_ncm: 04-Aug-2011
> usbcore: registered new interface driver cdc_ncm
> console [netcon0] enabled
> netconsole: network logging started
> ehci_hcd: USB 2.0 'Enhanced' Host Controller (EHCI) Driver
> _regulator_get: ehci-omap.0 supply hsusb0 not found, using dummy regulator
> _regulator_get: ehci-omap.0 supply hsusb1 not found, using dummy regulator
> ehci-omap ehci-omap.0: OMAP-EHCI Host Controller
> ehci-omap ehci-omap.0: new USB bus registered, assigned bus number 1
> ehci-omap ehci-omap.0: irq 77, io mem 0x48064800
> ehci-omap ehci-omap.0: USB 2.0 started, EHCI 1.00
> hub 1-0:1.0: USB hub found
> hub 1-0:1.0: 3 ports detected
> Initializing USB Mass Storage driver...
> usbcore: registered new interface driver usb-storage
> USB Mass Storage support registered.
> mousedev: PS/2 mouse device common for all mice
> twl_rtc twl_rtc: rtc core: registered twl_rtc as rtc0
> twl_rtc twl_rtc: Power up reset detected.
> twl_rtc twl_rtc: Enabling TWL-RTC.
> omap_device: omap_wdt.-1: new worst case activate latency 0: 30517
> OMAP Watchdog Timer Rev 0x31: initial timeout 60 sec
> omap_device: omap_wdt.-1: new worst case deactivate latency 0: 30517
> cpuidle: using governor ladder
> cpuidle: using governor menu
> usbcore: registered new interface driver usbhid
> usbhid: USB HID core driver
> OMAP3 Beagle/Devkit8000 SoC init
> asoc: twl4030-hifi <-> omap-mcbsp-dai.1 mapping ok
> ALSA device list:
> #0: omap3beagle
> TCP cubic registered
> NET: Registered protocol family 17
> Registering the dns_resolver key type
> VFP support v0.3: implementor 41 architecture 3 part 30 variant c rev 3
> ThumbEE CPU extension supported.
> sr_init: No PMIC hook to init smartreflex
> smartreflex smartreflex.0: omap_sr_probe: SmartReflex driver initialized
> smartreflex smartreflex.1: omap_sr_probe: SmartReflex driver initialized
> SmartReflex Class3 initialized
> clock: disabling unused clocks to save power
> registered taskstats version 1
> Console: switching to colour frame buffer device 80x25
> regulator_init_complete: VDAC: incomplete constraints, leaving on
> twl_rtc twl_rtc: setting system clock to 2000-01-01 00:00:00 UTC (946684800)
> Waiting for root device /dev/mmcblk0p2...
> mmc0: new SDHC card at address 1234
> mmcblk0: mmc0:1234 SA08G 7.41 GiB (ro)
> mmcblk0: p1 p2
> VFS: Cannot open root device "mmcblk0p2" or unknown-block(179,2)
> Please append a correct "root=" boot option; here are the available
> partitions:
> b300 7774208 mmcblk0 driver: mmcblk
> b301 72261 mmcblk0p1 00000000-0000-0000-0000-000000000000
> b302 3494137 mmcblk0p2 00000000-0000-0000-0000-000000000000
> VFS: Unable to mount root fs on unknown-block(179,2)
> User configuration error - no valid root filesystem found
> Kernel panic - not syncing: Invalid configuration from end user prevents
> continu
> ing
> [<c0063d00>] (unwind_backtrace+0x0/0xec) from [<c044baa0>]
> (dump_stack+0x20/0x24
> )
> [<c044baa0>] (dump_stack+0x20/0x24) from [<c044bcb0>] (panic+0x64/0x184)
> [<c044bcb0>] (panic+0x64/0x184) from [<c0008eb4>]
> (mount_block_root+0x1e4/0x230)
> [<c0008eb4>] (mount_block_root+0x1e4/0x230) from [<c00090e0>]
> (mount_root+0xf8/0
> x11c)
> [<c00090e0>] (mount_root+0xf8/0x11c) from [<c0009270>]
> (prepare_namespace+0x16c/
> 0x1cc)
> [<c0009270>] (prepare_namespace+0x16c/0x1cc) from [<c0008ab0>]
> (kernel_init+0x12
> c/0x160)
> [<c0008ab0>] (kernel_init+0x12c/0x160) from [<c005e86c>]
> (kernel_thread_exit+0x0
> /0x8)
>
>
> * - * Qodem 0.1.2 Capture Generated Fri, 13 Jul 2012 10:51:55 -0600 END
> * - *
>
> I created a serial-boot.cmd
> setenv bootcmd 'mmc init; fatload mmc 0:1 0x80300000 uImage; bootm
> 0x80300000'
> setenv bootargs 'console=tty0 console=ttyO2,115200n8 root=/dev/mmcblk0p2
> rootwait rootfstype=ext3 ro'
> boot
>
>
> Any help will be appreciated.

Which exact beagleboard (model/revision) is this ? Was the default
kernel configuration modified at all ? I know that we had to disable
PREEMPT to get some of the mmc's to detect and boot, but I can't tell
if this is the same thing from the trace.

Cheers,

Bruce

> Regards
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


