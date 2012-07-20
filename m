Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5339FE002AB
	for <yocto@yoctoproject.org>; Fri, 20 Jul 2012 05:37:51 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.3) with ESMTP id q6KCboVj028386
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 20 Jul 2012 05:37:50 -0700 (PDT)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Fri, 20 Jul 2012 05:37:49 -0700
Message-ID: <5009510A.6060301@windriver.com>
Date: Fri, 20 Jul 2012 08:37:30 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:12.0) Gecko/20120430 Thunderbird/12.0.1
MIME-Version: 1.0
To: Edward Vidal <vidal.develone@gmail.com>
References: <CANwz6nzUVmVrADaVeR62V3ByCw10wOzY_vunMRZRGhfOvtW_5Q@mail.gmail.com>
In-Reply-To: <CANwz6nzUVmVrADaVeR62V3ByCw10wOzY_vunMRZRGhfOvtW_5Q@mail.gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: beagleboard not booting yacto 1.2.1
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
X-List-Received-Date: Fri, 20 Jul 2012 12:37:51 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12-07-20 08:21 AM, Edward Vidal wrote:
> Hello,
> git clone -b denzil git://git.yoctoproject.org/poky.git
> <http://git.yoctoproject.org/poky.git>
> Yocto Project 1.2.1
> The default beagleboard kernel 3.0 would not find the mmc as in Yocto
> Project 1.2

Hmm. That particular bug was solved as part of the release, so this
must be a variant of the problem. We have green beagleboard boots
from the QA team on the 3.0 kernel.

If anyone has details about the beagleboard that has been booting
the images as part of test .. I hope they can chime in and add
them here.

We need to try and isolate the differences between that env + board
to yours.

(and as we've been discussing in some other threads, it is being
updated to 3.4 to match the other hardware reference boards).

Cheers,

Bruce


>
> modified the file meta-yocto/conf/machine/beagleboard.conf
>
> PREFERRED_VERSION_linux-yocto ?= "3.0%" -->
> PREFERRED_VERSION_linux-yocto ?= "3.2%"
> git status
> # On branch denzil
> # Changes not staged for commit:
> # (use "git add <file>..." to update what will be committed)
> # (use "git checkout -- <file>..." to discard changes in working directory)
> #
> # modified: meta-yocto/conf/machine/beagleboard.conf
> #
> # Untracked files:
> # (use "git add <file>..." to include in what will be committed)
> #
> # build/
> no changes added to commit (use "git add" and/or "git commit -a")
> MACHINE=beagleboard bitbake -v -D -D -D core-image-sato
>
> mkfs.vfat -F 16 -n "boot" /dev/sdb1
> /dev/sdb1
> W95 FAT32 (LBA) (Bootable)
>
> mke2fs -j -L "rootfs" /dev/sdb2
> /dev/sdb2
> Ext3 (version 1.0)
>
> cd /home/vidal/poky/build/tmp/deploy/images
> cp
> MLO-beagleboard-1.5.0+git1+9f94c6577e3a018b6b75cbe39f32bb331871f915-r0
> /run/media/vidal/boot/MLO
> cp
> u-boot-beagleboard-v2011.06+git12+b1af6f532e0d348b153d5c148369229d24af361a-r1.bin
> /run/media/vidal/boot/u-boot.bin
> cp
> uImage-3.2.18+git1+49f931bc294d5b6be60502bbd448cff5aa766235_1+90e3138c5a2a390dd6ddf2ed84fe5a9756d43397-r1-beagleboard-20120720032419.bin
> /run/media/vidal/boot/uImage
> cp /home/vidal/uEnv.txt /run/media/vidal/boot/
> cd /run/media/vidal/rootfs/
> tar jxf
> /home/vidal/poky/build/tmp/deploy/images/core-image-sato-beagleboard-20120720032419.rootfs.tar.bz2
>
>
> * - * Qodem 0.1.2 Capture Generated Fri, 20 Jul 2012 06:02:09 -0600
> BEGIN * - *
>
>
>
> Texas Instruments X-Loader 1.5.0 (Jul 19 2012 - 17:05:29)
> Beagle xM
> Reading boot sector
> Loading u-boot.bin from mmc
>
>
> U-Boot 2011.06 (Jul 19 2012 - 21:25:33)
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
> 3375856 bytes read
> Booting from mmc ...
> ## Booting kernel from Legacy Image at 82000000 ...
> Image Name: Linux-3.2.9-yocto-standard
> Image Type: ARM Linux Kernel Image (uncompressed)
> Data Size: 3375792 Bytes = 3.2 MiB
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
> Linux version 3.2.9-yocto-standard (vidal@ws009.swbell.net
> <mailto:vidal@ws009.swbell.net>) (gcc version 4.6.4 20120303
> (prerelease) (GCC) ) #1 Thu Jul 19 21:30:00 MDT 2012
> CPU: ARMv7 Processor [413fc082] revision 2 (ARMv7), cr=10c53c7d
> CPU: PIPT / VIPT nonaliasing data cache, VIPT aliasing instruction cache
> Machine: OMAP3 Beagle Board
> Reserving 16777216 bytes SDRAM for VRAM
> Memory policy: ECC disabled, Data cache writeback
> OMAP3630 ES1.2 (l2cache iva sgx neon isp 192mhz_clk )
> Clocking rate (Crystal/Core/MPU): 26.0/332/600 MHz
> Built 1 zonelists in Zone order, mobility grouping on. Total pages: 125952
> Kernel command line: console=tty0 console=ttyO2,115200n8 mpurate=auto
> vram=16M omapfb.mode=dvi:hd720 omapfb.vram=0:8M,1:4M,2:4M omapfb.debug=y
> omapdss.def_disp=dv
> i root=/dev/mmcblk0p2 rw rootfstype=ext3 rootwait
> PID hash table entries: 2048 (order: 1, 8192 bytes)
> Dentry cache hash table entries: 65536 (order: 6, 262144 bytes)
> Inode-cache hash table entries: 32768 (order: 5, 131072 bytes)
> allocated 2097152 bytes of page_cgroup
> please try 'cgroup_disable=memory' option if you don't want memory cgroups
> Memory: 496MB = 496MB total
> Memory: 493816k/493816k available, 30472k reserved, 0K highmem
> Virtual kernel memory layout:
> vector : 0xffff0000 - 0xffff1000 ( 4 kB)
> fixmap : 0xfff00000 - 0xfffe0000 ( 896 kB)
> vmalloc : 0xe0800000 - 0xf8000000 ( 376 MB)
> lowmem : 0xc0000000 - 0xe0000000 ( 512 MB)
> modules : 0xbf000000 - 0xc0000000 ( 16 MB)
> .text : 0xc0008000 - 0xc06540a4 (6449 kB)
> .init : 0xc0655000 - 0xc06ab000 ( 344 kB)
> .data : 0xc06ac000 - 0xc0710868 ( 403 kB)
> .bss : 0xc071088c - 0xc075486c ( 272 kB)
> SLUB: Genslabs=13, HWalign=32, Order=0-3, MinObjects=0, CPUs=1, Nodes=1
> NR_IRQS:410
> IRQ: Found an INTC at 0xfa200000 (revision 4.0) with 96 interrupts
> Total of 96 interrupts on 1 active controller
> OMAP clockevent source: GPTIMER12 at 32768 Hz
> sched_clock: 32 bits at 32kHz, resolution 30517ns, wraps every 131071999ms
> Console: colour dummy device 80x30
> console [tty0] enabled
> Calibrating delay loop... 503.12 BogoMIPS (lpj=1966080)
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
> ftrace: allocating 18273 entries in 54 pages
> devtmpfs: initialized
> print_constraints: dummy:
> NET: Registered protocol family 16
> GPMC revision 5.0
> OMAP GPIO hardware version 2.5
> omap_mux_init: Add partition: #1: core, flags: 0
> OMAP3 Beagle Rev: xM C
> Reprogramming SDRC clock to 332000000 Hz
> Found NAND on CS0
> Registering NAND on CS0
> Unable to get DVI reset GPIO
> omap-mcbsp.2: alias fck already exists
> omap-mcbsp.3: alias fck already exists
> OMAP DMA hardware revision 5.0
> bio: create slab <bio-0> at 0
> SCSI subsystem initialized
> usbcore: registered new interface driver usbfs
> usbcore: registered new interface driver hub
> usbcore: registered new device driver usb
> omap_i2c omap_i2c.1: bus 1 rev1.4.0 at 2600 kHz
> twl4030: PIH (irq 7) chaining IRQs 368..375
> twl4030: power (irq 373) chaining IRQs 376..383
> twl4030: gpio (irq 368) chaining IRQs 384..401
> _omap_mux_init_gpio: Could not set gpio192
> print_constraints: VUSB1V5: 1500 mV normal standby
> print_constraints: VUSB1V8: 1800 mV normal standby
> print_constraints: VUSB3V1: 3100 mV normal standby
> twl4030_usb twl4030_usb: Initialized TWL4030 USB module
> print_constraints: VMMC1: 1850 <--> 3150 mV at 3000 mV normal standby
> print_constraints: VDAC: 1800 mV normal standby
> print_constraints: VDVI: 1800 mV normal standby
> print_constraints: VSIM: 1800 <--> 3000 mV at 1800 mV normal standby
> omap_i2c omap_i2c.3: bus 3 rev1.4.0 at 100 kHz
> Advanced Linux Sound Architecture Driver Version 1.0.24.
> cfg80211: Calling CRDA to update world regulatory domain
> Switching to clocksource 32k_counter
> musb-hdrc: version 6.0, ?dma?, otg (peripheral+host)
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
> Registering unionfs 2.5.10 (for 3.1.0-rc4)
> msgmni has been set to 964
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
> No NAND device found
> No NAND device found
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
> twl_rtc twl_rtc: Power up reset detected.
> twl_rtc twl_rtc: Enabling TWL-RTC.
> twl_rtc twl_rtc: rtc core: registered twl_rtc as rtc0
> OMAP Watchdog Timer Rev 0x31: initial timeout 60 sec
> cpuidle: using governor ladder
> cpuidle: using governor menu
> usbcore: registered new interface driver usbhid
> usbhid: USB HID core driver
> OMAP3 Beagle/Devkit8000 SoC init
> usb 1-2: new high-speed USB device number 2 using ehci-omap
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
> omapfb omapfb: no driver for display: dvi
> omapfb omapfb: cannot parse default modes
> hub 1-2:1.0: USB hub found
> hub 1-2:1.0: 5 ports detected
> Console: switching to colour frame buffer device 90x35
> mmc0: host does not support reading read-only switch. assuming write-enable.
> regulator_init_complete: VDVI: incomplete constraints, leaving on
> console [netcon0] enabled
> netconsole: network logging started
> mmc0: new high speed SDHC card at address 1234
> mmcblk0: mmc0:1234 SA08G 7.41 GiB
> twl_rtc twl_rtc: setting system clock to 2000-01-01 00:00:00 UTC (946684800)
> mmcblk0: p1 p2
> usb 1-2.1: new high-speed USB device number 3 using ehci-omap
> smsc95xx v1.0.4
> smsc95xx 1-2.1:1.0: eth0: register 'smsc95xx' at usb-ehci-omap.0-2.1,
> smsc95xx USB 2.0 Ethernet, fe:a3:5a:02:39:a3
> usb 1-2.3: new low-speed USB device number 4 using ehci-omap
> input: CHESEN USB Keyboard as
> /devices/platform/usbhs-omap.0/ehci-omap.0/usb1/1-2/1-2.3/1-2.3:1.0/input/input0
> generic-usb 0003:0A81:0101.0001: input: USB HID v1.10 Keyboard [CHESEN
> USB Keyboard] on usb-ehci-omap.0-2.3/input0
> input: CHESEN USB Keyboard as
> /devices/platform/usbhs-omap.0/ehci-omap.0/usb1/1-2/1-2.3/1-2.3:1.1/input/input1
> generic-usb 0003:0A81:0101.0002: input: USB HID v1.10 Device [CHESEN USB
> Keyboard] on usb-ehci-omap.0-2.3/input1
> usb 1-2.5: new low-speed USB device number 5 using ehci-omap
> input: PixArt USB Optical Mouse as
> /devices/platform/usbhs-omap.0/ehci-omap.0/usb1/1-2/1-2.5/1-2.5:1.0/input/input2
> generic-usb 0003:093A:2510.0003: input: USB HID v1.11 Mouse [PixArt USB
> Optical Mouse] on usb-ehci-omap.0-2.5/input0
> kjournald starting. Commit interval 5 seconds
> EXT3-fs (mmcblk0p2): using internal journal
> EXT3-fs (mmcblk0p2): recovery complete
> EXT3-fs (mmcblk0p2): mounted filesystem with ordered data mode
> VFS: Mounted root (ext3 filesystem) on device 179:2.
> devtmpfs: mounted
> Freeing init memory: 344K
> INIT: usb 1-2.5: USB disconnect, device number 5
> usb 1-2.5: new low-speed USB device number 6 using ehci-omap
> input: PixArt USB Optical Mouse as
> /devices/platform/usbhs-omap.0/ehci-omap.0/usb1/1-2/1-2.5/1-2.5:1.0/input/input3
> generic-usb 0003:093A:2510.0004: input: USB HID v1.11 Mouse [PixArt USB
> Optical Mouse] on usb-ehci-omap.0-2.5/input0
> udev[61]: starting version 164
> smsc95xx 1-2.1:1.0: eth0: link up, 100Mbps, full-duplex, lpa 0x45E1
> usb 1-2.5: USB disconnect, device number 6
> usb 1-2.5: new low-speed USB device number 7 using ehci-omap
> input: PixArt USB Optical Mouse as
> /devices/platform/usbhs-omap.0/ehci-omap.0/usb1/1-2/1-2.5/1-2.5:1.0/input/input4
> generic-usb 0003:093A:2510.0005: input: USB HID v1.11 Mouse [PixArt USB
> Optical Mouse] on usb-ehci-omap.0-2.5/input0
> usb 1-2.5: USB disconnect, device number 7
> usb 1-2.5: new low-speed USB device number 8 using ehci-omap
> input: PixArt USB Optical Mouse as
> /devices/platform/usbhs-omap.0/ehci-omap.0/usb1/1-2/1-2.5/1-2.5:1.0/input/input5
> generic-usb 0003:093A:2510.0006: input: USB HID v1.11 Mouse [PixArt USB
> Optical Mouse] on usb-ehci-omap.0-2.5/input0
> usb 1-2.5: USB disconnect, device number 8
> usb 1-2.5: new low-speed USB device number 9 using ehci-omap
> input: PixArt USB Optical Mouse as
> /devices/platform/usbhs-omap.0/ehci-omap.0/usb1/1-2/1-2.5/1-2.5:1.0/input/input6
> generic-usb 0003:093A:2510.0007: input: USB HID v1.11 Mouse [PixArt USB
> Optical Mouse] on usb-ehci-omap.0-2.5/input0
> usb 1-2.5: USB disconnect, device number 9
> usb 1-2.5: new low-speed USB device number 10 using ehci-omap
> input: PixArt USB Optical Mouse as
> /devices/platform/usbhs-omap.0/ehci-omap.0/usb1/1-2/1-2.5/1-2.5:1.0/input/input7
> generic-usb 0003:093A:2510.0008: input: USB HID v1.11 Mouse [PixArt USB
> Optical Mouse] on usb-ehci-omap.0-2.5/input0
> usb 1-2.5: USB disconnect, device number 10
> usb 1-2.5: new low-speed USB device number 11 using ehci-omap
> input: PixArt USB Optical Mouse as
> /devices/platform/usbhs-omap.0/ehci-omap.0/usb1/1-2/1-2.5/1-2.5:1.0/input/input8
> generic-usb 0003:093A:2510.0009: input: USB HID v1.11 Mouse [PixArt USB
> Optical Mouse] on usb-ehci-omap.0-2.5/input0
> usb 1-2.5: USB disconnect, device number 11
> usb 1-2.5: new low-speed USB device number 12 using ehci-omap
> input: PixArt USB Optical Mouse as
> /devices/platform/usbhs-omap.0/ehci-omap.0/usb1/1-2/1-2.5/1-2.5:1.0/input/input9
> generic-usb 0003:093A:2510.000A: input: USB HID v1.11 Mouse [PixArt USB
> Optical Mouse] on usb-ehci-omap.0-2.5/input0
>
> * - * Qodem 0.1.2 Capture Generated Fri, 20 Jul 2012 06:10:13 -0600 END
> * - *
> The boot never gets to the point of bringing up an X window on the
> beagleboard display.
>
>
> Thanks for any help it will be appreciated.
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


