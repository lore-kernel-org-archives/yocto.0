Return-Path: <vidal.develone@gmail.com>
Received: from mail-gg0-f176.google.com (mail-gg0-f176.google.com
	[209.85.161.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9C802E01351
	for <yocto@yoctoproject.org>; Wed, 25 Jul 2012 19:09:35 -0700 (PDT)
Received: by ggnk4 with SMTP id k4so1670025ggn.35
	for <yocto@yoctoproject.org>; Wed, 25 Jul 2012 19:09:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=GXOrxyLOyF1n/csAriUIn8m6/69ICIXnm3/PEHJ/zRI=;
	b=bsFBxEEo5SfGjUx/aZ0Juo/glcca0g7wzGdEbN5D+3Kriv6EpTfausPc6acBBHqhWD
	T7YzD1LVjl8gMhYSMZKNojL9wwZiDC4Cq027pdrOCcWF59cOrO69w19hC1KDrTP4/MiK
	B7HOSLE7j9TOjUhMzIctmefE/Lg5WKdZX99YvVbmwA31t7ObhLeLJv13diImIF1hiyf9
	um0CrQHXEMr869w/BQPoWBXNdq++IOljzk9HjqZWr6qhhFkw4XwpJpWgdI0l9rWh5lrc
	dMsjrbWSF/1P1WETceZ/qz1GJ1WOH0WP0Iu66fC/rrb2+2TwzO1+XWZIR7VrfiA+iCAJ
	Fq1A==
MIME-Version: 1.0
Received: by 10.42.31.5 with SMTP id x5mr7542171icc.40.1343268573853; Wed, 25
	Jul 2012 19:09:33 -0700 (PDT)
Received: by 10.64.39.39 with HTTP; Wed, 25 Jul 2012 19:09:33 -0700 (PDT)
Date: Wed, 25 Jul 2012 20:09:33 -0600
Message-ID: <CANwz6nzPw9UNhOUmN1TABzy=GG86TAsyTY_NxWKurvXQ-nTKrA@mail.gmail.com>
From: Edward Vidal <vidal.develone@gmail.com>
To: yocto@yoctoproject.org
Subject: beagleboard core-image-sato boots to serial port poky 1.3_M2
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
X-List-Received-Date: Thu, 26 Jul 2012 02:09:36 -0000
Content-Type: multipart/alternative; boundary=bcaec51019032eb7ef04c5b2164a

--bcaec51019032eb7ef04c5b2164a
Content-Type: text/plain; charset=ISO-8859-1

Hello,
The image does not boot into X.
I was able to config eth0

git clone -b 1.3_M2 git://git.yoctoproject.org/poky.git
modified meta-yocto/conf/machine/beagleboard.conf &
meta-yocto/recipes-kernel/linux/linux-yocto_3.4.bbappend as below.
------------------- meta-yocto/conf/machine/beagleboard.conf
-------------------
index aa8fa07..ef79efb 100644
@@ -29,7 +29,7 @@ EXTRA_IMAGECMD_jffs2 = "-lnp "
 SERIAL_CONSOLE = "115200 ttyO2"

 PREFERRED_PROVIDER_virtual/kernel ?= "linux-yocto"
-PREFERRED_VERSION_linux-yocto ?= "3.0%"
+PREFERRED_VERSION_linux-yocto ?= "3.4%"

 KERNEL_IMAGETYPE = "uImage"
----------- meta-yocto/recipes-kernel/linux/linux-yocto_3.4.bbappend
-----------
index 2ff467b..0b4c37d 100644
@@ -10,5 +10,5 @@ SRCREV_machine_beagleboard ?=
"a8291fa6f723b0182d2b7033b5d59f412ba7cf72"

 COMPATIBLE_MACHINE_mpc8315e-rdb = "mpc8315e-rdb"
 # COMPATIBLE_MACHINE_routerstationpro = "routerstationpro"
-# COMPATIBLE_MACHINE_beagleboard = "beagleboard"
+COMPATIBLE_MACHINE_beagleboard = "beagleboard"
 COMPATIBLE_MACHINE_atom-pc = "atom-pc"
MACHINE=beagleboard bitbake  -v -D -D -D core-image-sato
mkfs.vfat -F 16 -n  "boot" /dev/sdb1
mke2fs -j -L "rootfs" /dev/sdb2
cp MLO-beagleboard-1.5.0+git1+9f94c6577e3a018b6b75cbe39f32bb331871f915-r0
/run/media/vidal/boot/MLO
[root@ws009 images]# cp
u-boot-beagleboard-v2011.06+git6+b1af6f532e0d348b153d5c148369229d24af361a-r1.bin
/run/media/vidal/boot/u-boot.bin
[root@ws009 images]# cp
uImage-3.4.4+git1+a8cf77018b0faa0d29f1483ff4e5a2034dc8edd5_1+a8291fa6f723b0182d2b7033b5d59f412ba7cf72-r4.0-beagleboard-20120725222158.bin
/run/media/vidal/boot/uImage
[root@ws009 images]# pwd
/home/vidal/poky/build/tmp/deploy/images
[root@ws009 images]# cd /run/media/vidal/rootfs/
[root@ws009 rootfs]# tar jxf
/home/vidal/poky/build/tmp/deploy/images/core-image-sato-beagleboard-20120725222158.rootfs.tar.bz2


setenv bootcmd 'mmc rescan 0; fatload mmc 0:1 0x80300000 uImage; bootm
0x80300000'
setenv bootargs 'console=tty0 console=ttyO2,115200n8
root=/dev/mmcblk0p2 rootwait rootfstype=ext3 ro'
boot
* - * Qodem 0.1.2 Capture Generated Wed, 25 Jul 2012 18:55:15 -0600 BEGIN *
- *



Texas Instruments X-Loader 1.5.0 (Jul 25 2012 - 18:31:56)
Beagle xM
Reading boot sector
Loading u-boot.bin from mmc


U-Boot 2011.06 (Jul 25 2012 - 18:32:05)

OMAP3630/3730-GP ES2.1, CPU-OPP2, L3-165MHz, Max CPU Clock 1 Ghz
OMAP3 Beagle board + LPDDR/NAND
I2C:   ready
DRAM:  512 MiB
NAND:  0 MiB
MMC:   OMAP SD/MMC: 0
*** Warning - readenv() failed, using default environment

In:    serial
Out:   serial
Err:   serial
Beagle unknown 0x02
No EEPROM on expansion board
Die ID #158000029ff800000160a7450b02602d
Hit any key to stop autoboot: 10  9  8  0
OMAP3 beagleboard.org # setenv bootcmd 'mmc rescan 0; fatload mmc 0:1
0x80300000
 uImage; bootm 0x80300000'
OMAP3 beagleboard.org # setenv bootargs 'console=tty0
console=ttyO2,115200n8 roo
t=/dev/mmcblk0p2 rootwait rootfstype=ext3 ro'
OMAP3 beagleboard.org # boot
reading uImage

4127776 bytes read
## Booting kernel from Legacy Image at 80300000 ...
   Image Name:   Linux-3.4.1-yocto-standard
   Image Type:   ARM Linux Kernel Image (uncompressed)
   Data Size:    4127712 Bytes = 3.9 MiB
   Load Address: 80008000
   Entry Point:  80008000
   Verifying Checksum ... OK
   Loading Kernel Image ... OK
OK

Starting kernel ...

Uncompressing Linux... done, booting the kernel.
Booting Linux on physical CPU 0
Initializing cgroup subsys cpuset
Initializing cgroup subsys cpu
Linux version 3.4.1-yocto-standard (vidal@ws009.swbell.net) (gcc version
4.7.2 2
0120615 (prerelease) (GCC) ) #1 Wed Jul 25 17:29:01 MDT 2012
CPU: ARMv7 Processor [413fc082] revision 2 (ARMv7), cr=10c53c7d
CPU: PIPT / VIPT nonaliasing data cache, VIPT aliasing instruction cache
Machine: OMAP3 Beagle Board
Reserving 14680064 bytes SDRAM for VRAM
Memory policy: ECC disabled, Data cache writeback
OMAP3630 ES1.2 (l2cache iva sgx neon isp 192mhz_clk )
Clocking rate (Crystal/Core/MPU): 26.0/332/600 MHz
Built 1 zonelists in Zone order, mobility grouping on.  Total pages: 126208
Kernel command line: console=tty0 console=ttyO2,115200n8
root=/dev/mmcblk0p2 roo
twait rootfstype=ext3 ro
PID hash table entries: 2048 (order: 1, 8192 bytes)
Dentry cache hash table entries: 65536 (order: 6, 262144 bytes)
Inode-cache hash table entries: 32768 (order: 5, 131072 bytes)
allocated 1048576 bytes of page_cgroup
please try 'cgroup_disable=memory' option if you don't want memory cgroups
Memory: 497MB = 497MB total
Memory: 494156k/494156k available, 30132k reserved, 0K highmem
Virtual kernel memory layout:
    vector  : 0xffff0000 - 0xffff1000   (   4 kB)
    fixmap  : 0xfff00000 - 0xfffe0000   ( 896 kB)
    vmalloc : 0xe0800000 - 0xff000000   ( 488 MB)
    lowmem  : 0xc0000000 - 0xe0000000   ( 512 MB)
    modules : 0xbf000000 - 0xc0000000   (  16 MB)
      .text : 0xc0008000 - 0xc07cb388   (7949 kB)
      .init : 0xc07cc000 - 0xc0827000   ( 364 kB)
      .data : 0xc0828000 - 0xc089e450   ( 474 kB)
       .bss : 0xc089e474 - 0xc08fed80   ( 387 kB)
SLUB: Genslabs=11, HWalign=64, Order=0-3, MinObjects=0, CPUs=1, Nodes=1
NR_IRQS:474
IRQ: Found an INTC at 0xfa200000 (revision 4.0) with 96 interrupts
Total of 96 interrupts on 1 active controller
OMAP clockevent source: GPTIMER12 at 32768 Hz
sched_clock: 32 bits at 32kHz, resolution 30517ns, wraps every 131071999ms
Console: colour dummy device 80x30
console [tty0] enabled
Calibrating delay loop... 503.12 BogoMIPS (lpj=1966080)
pid_max: default: 32768 minimum: 301
Security Framework initialized
Mount-cache hash table entries: 512
Initializing cgroup subsys debug
Initializing cgroup subsys cpuacct
Initializing cgroup subsys memory
Initializing cgroup subsys devices
Initializing cgroup subsys freezer
Initializing cgroup subsys net_cls
Initializing cgroup subsys blkio
CPU: Testing write buffer coherency: ok
ftrace: allocating 21594 entries in 64 pages
Setting up static identity map for 0x8059faf0 - 0x8059fb48
devtmpfs: initialized
dummy:
NET: Registered protocol family 16
GPMC revision 5.0
gpiochip_add: registered GPIOs 0 to 31 on device: gpio
OMAP GPIO hardware version 2.5
gpiochip_add: registered GPIOs 32 to 63 on device: gpio
gpiochip_add: registered GPIOs 64 to 95 on device: gpio
gpiochip_add: registered GPIOs 96 to 127 on device: gpio
gpiochip_add: registered GPIOs 128 to 159 on device: gpio
gpiochip_add: registered GPIOs 160 to 191 on device: gpio
omap_mux_init: Add partition: #1: core, flags: 0
OMAP3 Beagle Rev: xM C
Reprogramming SDRC clock to 332000000 Hz
 usbhs_omap: alias fck already exists
Found NAND on CS0
Registering NAND on CS0
Unable to get DVI reset GPIO
 omap-mcbsp.2: alias fck already exists
 omap-mcbsp.3: alias fck already exists
OMAP DMA hardware revision 5.0
bio: create slab <bio-0> at 0
SCSI subsystem initialized
omap2_mcspi omap2_mcspi.1: master is unqueued, this is deprecated
omap2_mcspi omap2_mcspi.2: master is unqueued, this is deprecated
omap2_mcspi omap2_mcspi.3: master is unqueued, this is deprecated
omap2_mcspi omap2_mcspi.4: master is unqueued, this is deprecated
usbcore: registered new interface driver usbfs
usbcore: registered new interface driver hub
usbcore: registered new device driver usb
omap_i2c omap_i2c.1: bus 1 rev1.4.0 at 2600 kHz
twl 1-0048: PIH (irq 7) chaining IRQs 320..328
twl 1-0048: power (irq 325) chaining IRQs 328..335
twl4030_gpio twl4030_gpio: gpio (irq 320) chaining IRQs 336..353
gpiochip_add: registered GPIOs 192 to 211 on device: twl4030
VUSB1V5: 1500 mV normal standby
VUSB1V8: 1800 mV normal standby
VUSB3V1: 3100 mV normal standby
twl4030_usb twl4030_usb: Initialized TWL4030 USB module
VMMC1: 1850 <--> 3150 mV at 3000 mV normal standby
VDAC: 1800 mV normal standby
VDVI: 1800 mV normal standby
VSIM: 1800 <--> 3000 mV at 1800 mV normal standby
omap_i2c omap_i2c.3: bus 3 rev1.4.0 at 100 kHz
Advanced Linux Sound Architecture Driver Version 1.0.25.
cfg80211: Calling CRDA to update world regulatory domain
Switching to clocksource 32k_counter
usbhs_omap usbhs_omap: xclk60mhsp1_ck set parentfailed error:-22
usbhs_omap usbhs_omap: xclk60mhsp2_ck set parentfailed error:-22
NET: Registered protocol family 2
IP route cache hash table entries: 4096 (order: 2, 16384 bytes)
TCP established hash table entries: 16384 (order: 5, 131072 bytes)
TCP bind hash table entries: 16384 (order: 4, 65536 bytes)
TCP: Hash tables configured (established 16384 bind 16384)
TCP: reno registered
UDP hash table entries: 256 (order: 0, 4096 bytes)
UDP-Lite hash table entries: 256 (order: 0, 4096 bytes)
NET: Registered protocol family 1
RPC: Registered named UNIX socket transport module.
RPC: Registered udp transport module.
RPC: Registered tcp transport module.
RPC: Registered tcp NFSv4.1 backchannel transport module.
VFS: Disk quotas dquot_6.5.2
Dquot-cache hash table entries: 1024 (order 0, 4096 bytes)
Registering unionfs 2.5.10 (for 3.1.0-rc4)
NFS: Registering the id_resolver key type
Btrfs loaded
msgmni has been set to 965
Block layer SCSI generic (bsg) driver version 0.4 loaded (major 253)
io scheduler noop registered
io scheduler deadline registered
io scheduler cfq registered (default)
OMAP DSS rev 2.0
Serial: 8250/16550 driver, 4 ports, IRQ sharing enabled
omap_uart.0: ttyO0 at MMIO 0x4806a000 (irq = 72) is a OMAP UART0
omap_uart.1: ttyO1 at MMIO 0x4806c000 (irq = 73) is a OMAP UART1
omap_uart.2: ttyO2 at MMIO 0x49020000 (irq = 74) is a OMAP UART2
console [ttyO2] enabled
omap_uart.3: ttyO3 at MMIO 0x49042000 (irq = 80) is a OMAP UART3
brd: module loaded
No NAND device found
No NAND device found
usbcore: registered new interface driver kaweth
pegasus: v0.6.14 (2006/09/27), Pegasus/Pegasus II USB Ethernet driver
usbcore: registered new interface driver pegasus
usbcore: registered new interface driver asix
usbcore: registered new interface driver cdc_ether
usbcore: registered new interface driver dm9601
usbcore: registered new interface driver smsc75xx
usbcore: registered new interface driver smsc95xx
usbcore: registered new interface driver net1080
usbcore: registered new interface driver cdc_subset
usbcore: registered new interface driver zaurus
usbcore: registered new interface driver MOSCHIP usb-ethernet driver
usbcore: registered new interface driver int51x1
usbcore: registered new interface driver cdc_ncm
ehci_hcd: USB 2.0 'Enhanced' Host Controller (EHCI) Driver
ehci-omap.0 supply hsusb0 not found, using dummy regulator
ehci-omap.0 supply hsusb1 not found, using dummy regulator
ehci-omap ehci-omap.0: OMAP-EHCI Host Controller
ehci-omap ehci-omap.0: new USB bus registered, assigned bus number 1
ehci-omap ehci-omap.0: irq 77, io mem 0x48064800
ehci-omap ehci-omap.0: USB 2.0 started, EHCI 1.00
hub 1-0:1.0: USB hub found
hub 1-0:1.0: 3 ports detected
Initializing USB Mass Storage driver...
usbcore: registered new interface driver usb-storage
USB Mass Storage support registered.
musb-hdrc: version 6.0, ?dma?, otg (peripheral+host)
musb-hdrc musb-hdrc: USB OTG mode controller at fa0ab000 using DMA, IRQ 92
mousedev: PS/2 mouse device common for all mice
twl_rtc twl_rtc: Power up reset detected.
twl_rtc twl_rtc: Enabling TWL-RTC
twl_rtc twl_rtc: rtc core: registered twl_rtc as rtc0
omap_wdt: OMAP Watchdog Timer Rev 0x31: initial timeout 60 sec
cpuidle: using governor ladder
cpuidle: using governor menu
usbcore: registered new interface driver usbhid
usbhid: USB HID core driver
OMAP3 Beagle/Devkit8000 SoC init
soc-audio soc-audio: ASoC machine omap3beagle should use
snd_soc_register_card()
usb 1-2: new high-speed USB device number 2 using ehci-omap
twl4030-codec twl4030-codec: ASoC: Failed to create Capture debugfs file
asoc: twl4030-hifi <-> omap-mcbsp.2 mapping ok
TCP: cubic registered
NET: Registered protocol family 10
IPv6 over IPv4 tunneling driver
NET: Registered protocol family 17
Registering the dns_resolver key type
VFP support v0.3: implementor 41 architecture 3 part 30 variant c rev 3
ThumbEE CPU extension supported.
sr_init: No PMIC hook to init smartreflex
smartreflex smartreflex.0: omap_sr_probe: SmartReflex driver initialized
smartreflex smartreflex.1: omap_sr_probe: SmartReflex driver initialized
SmartReflex Class3 initialized
clock: disabling unused clocks to save power
omapfb omapfb: no driver for display: dvi
Console: switching to colour frame buffer device 90x35
hub 1-2:1.0: USB hub found
hub 1-2:1.0: 5 ports detected
VDVI: incomplete constraints, leaving on
console [netcon0] enabled
netconsole: network logging started
twl_rtc twl_rtc: setting system clock to 2000-01-01 00:00:00 UTC (946684800)
ALSA device list:
  #0: omap3beagle
Waiting for root device /dev/mmcblk0p2...
usb 1-2.1: new high-speed USB device number 3 using ehci-omap
mmc0: host does not support reading read-only switch. assuming write-enable.
mmc0: new high speed SDHC card at address b368
mmcblk0: mmc0:b368 SDU16 14.9 GiB
 mmcblk0: p1 p2
smsc95xx v1.0.4
kjournald starting.  Commit interval 5 seconds
EXT3-fs (mmcblk0p2): mounted filesystem with ordered data mode
VFS: Mounted root (ext3 filesystem) readonly on device 179:2.
devtmpfs: mounted
Freeing init memory: 364K
smsc95xx 1-2.1:1.0: eth0: register 'smsc95xx' at usb-ehci-omap.0-2.1,
smsc95xx U
SB 2.0 Ethernet, a2:9b:7f:19:dd:1c
INIT: version 2.88 booting
usb 1-2.3: new low-speed USB device number 4 using ehci-omap
input: CHESEN USB Keyboard as
/devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/
1-2.3/1-2.3:1.0/input/input0
generic-usb 0003:0A81:0101.0001: input: USB HID v1.10 Keyboard [CHESEN USB
Keybo
ard] on usb-ehci-omap.0-2.3/input0
input: CHESEN USB Keyboard as
/devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/
1-2.3/1-2.3:1.1/input/input1
generic-usb 0003:0A81:0101.0002: input: USB HID v1.10 Device [CHESEN USB
Keyboar
d] on usb-ehci-omap.0-2.3/input1
usb 1-2.5: new low-speed USB device number 5 using ehci-omap
Starting udev
input: PixArt USB Optical Mouse as
/devices/platform/usbhs_omap/ehci-omap.0/usb1
/1-2/1-2.5/1-2.5:1.0/input/input2
generic-usb 0003:093A:2510.0003: input: USB HID v1.11 Mouse [PixArt USB
Optical
Mouse] on usb-ehci-omap.0-2.5/input0
udev[65]: starting version 164
Starting Bootlog daemon: bootlogd.
EXT3-fs (mmcblk0p2): using internal journal
ALSA: Restoring mixer settings...
Configuring network interfaces... Found hardware: "omap3beagle" "" "" "" ""
Hardware is initialized using a generic method
ADDRCONF(NETDEV_UP): eth0: link is not ready
udhcpc (v1.19.4) started
Sending discover...
ADDRCONF(NETDEV_CHANGE): eth0: link becomes ready
smsc95xx 1-2.1:1.0: eth0: link up, 100Mbps, full-duplex, lpa 0x45E1
Sending discover...
Sending select for 192.168.0.113...
Lease of 192.168.0.113 obtained, lease time 604800
/etc/udhcpc.d/50default: Adding DNS 192.168.0.1
ifconfig: SIOCGIFFLAGS: No such device
Starting portmap daemon...
net.ipv4.conf.default.rp_filter = 1
net.ipv4.conf.all.rp_filter = 1
Thu Jul 26 00:47:00 UTC 2012
Running postinst /etc/rpm-postinsts/100...
Running postinst /etc/rpm-postinsts/101...

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry

(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pixbuf
loader mod
ule file '/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache': No such file or
directo
ry
Running postinst /etc/rpm-postinsts/102...
Running postinst /etc/rpm-postinsts/103...
Running postinst /etc/rpm-postinsts/104...
Running postinst /etc/rpm-postinsts/105...
Running postinst /etc/rpm-postinsts/106...
Running postinst /etc/rpm-postinsts/107...
Running postinst /etc/rpm-postinsts/108...
Running postinst /etc/rpm-postinsts/109...
Running postinst /etc/rpm-postinsts/110...
Running postinst /etc/rpm-postinsts/111...
Running postinst /etc/rpm-postinsts/112...
Running postinst /etc/rpm-postinsts/113...
Running postinst /etc/rpm-postinsts/114...
usb 1-2.5: USB disconnect, device number 5
usb 1-2.5: new low-speed USB device number 6 using ehci-omap
input: PixArt USB Optical Mouse as
/devices/platform/usbhs_omap/ehci-omap.0/usb1
/1-2/1-2.5/1-2.5:1.0/input/input3
generic-usb 0003:093A:2510.0004: input: USB HID v1.11 Mouse [PixArt USB
Optical
Mouse] on usb-ehci-omap.0-2.5/input0
Running postinst /etc/rpm-postinsts/115...
Running postinst /etc/rpm-postinsts/116...
INIT: Entering runlevel: 5
Starting system message bus: dbus.
Starting Connection Manager
Starting Xserver
ip_tables: (C) 2000-2006 Netfilter Core Team
nf_conntrack version 0.5.0 (7726 buckets, 30904 max)

Starting Dropbear SSH server: Will output 1024 bit rsa secret key to
'/etc/dropb
ear/dropbear_rsa_host_key'
Generating key, this may take a while...
Public key portion is:
ssh-rsa
AAAAB3NzaC1yc2EAAAADAQABAAAAgmxInaohgDxQzIwuY0oircn+axRSSlPCu9jE3E3n1LT2
68kofz2j2iHqyFksfhvl5gvgovs6nBUJxui5I9hr3Aq3CnA5XjhuXofhIJZbr3ApB1vwg7jYkqvzSAHr
jEWFvV4vVIepGz2j7pUSdPyU1eo8N2YKGRK7unJ5lBZg4gjxQsE= root@beagleboard
Fingerprint: md5 ce:31:78:4e:d8:bd:cb:52:db:8c:f8:cc:b8:aa:b0:4b
dropbear.

X.Org X Server 1.11.2
Release Date: 2011-11-04
X Protocol Version 11, Revision 0
Build Operating System: Linux 3.3.4-5.fc17.x86_64 x86_64
Current Operating System: Linux beagleboard 3.4.1-yocto-standard #1 Wed Jul
25 1
7:29:01 MDT 2012 armv7l
Kernel command line: console=tty0 console=ttyO2,115200n8
root=/dev/mmcblk0p2 roo
twait rootfstype=ext3 ro
Build Date: 25 July 2012  06:09:49PM

Current version of pixman: 0.26.2
Before reporting problems, check http://wiki.x.org
to make sure that you have the latest version.
Markers: (--) probed, (**) from config file, (==) default setting,
(++) from command line, (!!) notice, (II) informational,
(WW) warning, (EE) error, (NI) not implemented, (??) unknown.
(==) Log file: "/var/log/Xorg.0.log", Time: Thu Jul 26 00:47:54 2012
(==) Using config file: "/etc/X11/xorg.conf"
(==) Using system config directory "/usr/share/X11/xorg.conf.d"
(EE) Failed to load module "extmod" (module does not exist, 0)
(EE) Failed to load module "dbe" (module does not exist, 0)
Starting advanced power management daemon: (EE) Failed to load module "glx"
(mod
ule does not exist, 0)
(EE) Failed to load module "record" (module does not exist, 0)
(EE) Failed to load module "dri" (module does not exist, 0)
(EE) Failed to load module "dri2" (module does not exist, 0)
apmd.
apmd[907]: apmd 3.2.1 interfacing with apm driver 1.13 and APM BIOS 1.2
(EE) omapfb(0): Failed to open /dev/fb2: No such file or directory
(EE) omapfb(0): XVScreenInit failed
Starting syslogd/klogd: done
 * Starting Avahi mDNS/DNS-SD Daemon: avahi-daemon
   ...done.
Starting Telephony daemon
Stopping Bootlog daemon: bootlogd.
D-BUS per-session daemon address is:
unix:abstract=/tmp/dbus-QGifswJady,guid=f67
012099e8d847886e86a130000004c

Yocto (Built by Poky 7.0) 1.2+snapshot-20120725 beagleboard ttyO2

beagleboard login: matchbox: Cant find a keycode for keysym 269025056
matchbox: i
gnoring key shortcut XF86Calendar=!$contacts

matchbox: Cant find a keycode for ke
ysym 2809
matchbox: ignoring key shortcut telephone=!$dates

matchbox: Cant find a
keycode for keysym 269025050
matchbox: ignoring key shortcut XF86Start=!matchbox-
remote -desktop

[settings daemon] Forking. run with -n to prevent fork

** (matchbo
x-desktop:993): WARNING **: Error loading icon: Icon 'computer' not present
in t
heme

** (matchbox-desktop:993): WARNING **: Error loading icon: Icon 'preferences
-desktop' not present in theme

** (matchbox-desktop:993): WARNING **: Error loadi
ng icon: Icon 'system-file-manager' not present in theme


Texas Instruments X-Loader 1.5.0 (Jul 25 2012 - 18:31:56)
Beagle xM
Reading boot sector
Loading u-boot.bin from mmc


U-Boot 2011.06 (Jul 25 2012 - 18:32:05)

OMAP3630/3730-GP ES2.1, CPU-OPP2, L3-165MHz, Max CPU Clock 1 Ghz
OMAP3 Beagle board + LPDDR/NAND
I2C:   ready
DRAM:  512 MiB
NAND:  0 MiB
MMC:   OMAP SD/MMC: 0
*** Warning - readenv() failed, using default environment

In:    serial
Out:   serial
Err:   serial
Beagle unknown 0x02
No EEPROM on expansion board
Die ID #158000029ff800000160a7450b02602d
Hit any key to stop autoboot: 10  9  8  0
OMAP3 beagleboard.org # setenv bootcmd 'mmc rescan 0; fatload mmc 0:1
0x80300000
 uImage; bootm 0x80300000'
OMAP3 beagleboard.org # setenv bootargs 'console=tty0
console=ttyO2,115200n8 roo
t=/dev/mmcblk0p2 rootwait rootfstype=ext3 ro'
OMAP3 beagleboard.org # boot
reading uImage

4127776 bytes read
## Booting kernel from Legacy Image at 80300000 ...
   Image Name:   Linux-3.4.1-yocto-standard
   Image Type:   ARM Linux Kernel Image (uncompressed)
   Data Size:    4127712 Bytes = 3.9 MiB
   Load Address: 80008000
   Entry Point:  80008000
   Verifying Checksum ... OK
   Loading Kernel Image ... OK
OK

Starting kernel ...

Uncompressing Linux... done, booting the kernel.
Booting Linux on physical CPU 0
Initializing cgroup subsys cpuset
Initializing cgroup subsys cpu
Linux version 3.4.1-yocto-standard (vidal@ws009.swbell.net) (gcc version
4.7.2 2
0120615 (prerelease) (GCC) ) #1 Wed Jul 25 17:29:01 MDT 2012
CPU: ARMv7 Processor [413fc082] revision 2 (ARMv7), cr=10c53c7d
CPU: PIPT / VIPT nonaliasing data cache, VIPT aliasing instruction cache
Machine: OMAP3 Beagle Board
Reserving 14680064 bytes SDRAM for VRAM
Memory policy: ECC disabled, Data cache writeback
OMAP3630 ES1.2 (l2cache iva sgx neon isp 192mhz_clk )
Clocking rate (Crystal/Core/MPU): 26.0/332/600 MHz
Built 1 zonelists in Zone order, mobility grouping on.  Total pages: 126208
Kernel command line: console=tty0 console=ttyO2,115200n8
root=/dev/mmcblk0p2 roo
twait rootfstype=ext3 ro
PID hash table entries: 2048 (order: 1, 8192 bytes)
Dentry cache hash table entries: 65536 (order: 6, 262144 bytes)
Inode-cache hash table entries: 32768 (order: 5, 131072 bytes)
allocated 1048576 bytes of page_cgroup
please try 'cgroup_disable=memory' option if you don't want memory cgroups
Memory: 497MB = 497MB total
Memory: 494156k/494156k available, 30132k reserved, 0K highmem
Virtual kernel memory layout:
    vector  : 0xffff0000 - 0xffff1000   (   4 kB)
    fixmap  : 0xfff00000 - 0xfffe0000   ( 896 kB)
    vmalloc : 0xe0800000 - 0xff000000   ( 488 MB)
    lowmem  : 0xc0000000 - 0xe0000000   ( 512 MB)
    modules : 0xbf000000 - 0xc0000000   (  16 MB)
      .text : 0xc0008000 - 0xc07cb388   (7949 kB)
      .init : 0xc07cc000 - 0xc0827000   ( 364 kB)
      .data : 0xc0828000 - 0xc089e450   ( 474 kB)
       .bss : 0xc089e474 - 0xc08fed80   ( 387 kB)
SLUB: Genslabs=11, HWalign=64, Order=0-3, MinObjects=0, CPUs=1, Nodes=1
NR_IRQS:474
IRQ: Found an INTC at 0xfa200000 (revision 4.0) with 96 interrupts
Total of 96 interrupts on 1 active controller
OMAP clockevent source: GPTIMER12 at 32768 Hz
sched_clock: 32 bits at 32kHz, resolution 30517ns, wraps every 131071999ms
Console: colour dummy device 80x30
console [tty0] enabled
Calibrating delay loop... 500.97 BogoMIPS (lpj=1953792)
pid_max: default: 32768 minimum: 301
Security Framework initialized
Mount-cache hash table entries: 512
Initializing cgroup subsys debug
Initializing cgroup subsys cpuacct
Initializing cgroup subsys memory
Initializing cgroup subsys devices
Initializing cgroup subsys freezer
Initializing cgroup subsys net_cls
Initializing cgroup subsys blkio
CPU: Testing write buffer coherency: ok
ftrace: allocating 21594 entries in 64 pages
Setting up static identity map for 0x8059faf0 - 0x8059fb48
devtmpfs: initialized
dummy:
NET: Registered protocol family 16
GPMC revision 5.0
gpiochip_add: registered GPIOs 0 to 31 on device: gpio
OMAP GPIO hardware version 2.5
gpiochip_add: registered GPIOs 32 to 63 on device: gpio
gpiochip_add: registered GPIOs 64 to 95 on device: gpio
gpiochip_add: registered GPIOs 96 to 127 on device: gpio
gpiochip_add: registered GPIOs 128 to 159 on device: gpio
gpiochip_add: registered GPIOs 160 to 191 on device: gpio
omap_mux_init: Add partition: #1: core, flags: 0
OMAP3 Beagle Rev: xM C
Reprogramming SDRC clock to 332000000 Hz
 usbhs_omap: alias fck already exists
Found NAND on CS0
Registering NAND on CS0
Unable to get DVI reset GPIO
 omap-mcbsp.2: alias fck already exists
 omap-mcbsp.3: alias fck already exists
OMAP DMA hardware revision 5.0
bio: create slab <bio-0> at 0
SCSI subsystem initialized
omap2_mcspi omap2_mcspi.1: master is unqueued, this is deprecated
omap2_mcspi omap2_mcspi.2: master is unqueued, this is deprecated
omap2_mcspi omap2_mcspi.3: master is unqueued, this is deprecated
omap2_mcspi omap2_mcspi.4: master is unqueued, this is deprecated
usbcore: registered new interface driver usbfs
usbcore: registered new interface driver hub
usbcore: registered new device driver usb
omap_i2c omap_i2c.1: bus 1 rev1.4.0 at 2600 kHz
twl 1-0048: PIH (irq 7) chaining IRQs 320..328
twl 1-0048: power (irq 325) chaining IRQs 328..335
twl4030_gpio twl4030_gpio: gpio (irq 320) chaining IRQs 336..353
gpiochip_add: registered GPIOs 192 to 211 on device: twl4030
VUSB1V5: 1500 mV normal standby
VUSB1V8: 1800 mV normal standby
VUSB3V1: 3100 mV normal standby
twl4030_usb twl4030_usb: Initialized TWL4030 USB module
VMMC1: 1850 <--> 3150 mV at 3000 mV normal standby
VDAC: 1800 mV normal standby
VDVI: 1800 mV normal standby
VSIM: 1800 <--> 3000 mV at 1800 mV normal standby
omap_i2c omap_i2c.3: bus 3 rev1.4.0 at 100 kHz
Advanced Linux Sound Architecture Driver Version 1.0.25.
cfg80211: Calling CRDA to update world regulatory domain
Switching to clocksource 32k_counter
usbhs_omap usbhs_omap: xclk60mhsp1_ck set parentfailed error:-22
usbhs_omap usbhs_omap: xclk60mhsp2_ck set parentfailed error:-22
NET: Registered protocol family 2
IP route cache hash table entries: 4096 (order: 2, 16384 bytes)
TCP established hash table entries: 16384 (order: 5, 131072 bytes)
TCP bind hash table entries: 16384 (order: 4, 65536 bytes)
TCP: Hash tables configured (established 16384 bind 16384)
TCP: reno registered
UDP hash table entries: 256 (order: 0, 4096 bytes)
UDP-Lite hash table entries: 256 (order: 0, 4096 bytes)
NET: Registered protocol family 1
RPC: Registered named UNIX socket transport module.
RPC: Registered udp transport module.
RPC: Registered tcp transport module.
RPC: Registered tcp NFSv4.1 backchannel transport module.
VFS: Disk quotas dquot_6.5.2
Dquot-cache hash table entries: 1024 (order 0, 4096 bytes)
Registering unionfs 2.5.10 (for 3.1.0-rc4)
NFS: Registering the id_resolver key type
Btrfs loaded
msgmni has been set to 965
Block layer SCSI generic (bsg) driver version 0.4 loaded (major 253)
io scheduler noop registered
io scheduler deadline registered
io scheduler cfq registered (default)
OMAP DSS rev 2.0
Serial: 8250/16550 driver, 4 ports, IRQ sharing enabled
omap_uart.0: ttyO0 at MMIO 0x4806a000 (irq = 72) is a OMAP UART0
omap_uart.1: ttyO1 at MMIO 0x4806c000 (irq = 73) is a OMAP UART1
omap_uart.2: ttyO2 at MMIO 0x49020000 (irq = 74) is a OMAP UART2
console [ttyO2] enabled
omap_uart.3: ttyO3 at MMIO 0x49042000 (irq = 80) is a OMAP UART3
brd: module loaded
No NAND device found
No NAND device found
usbcore: registered new interface driver kaweth
pegasus: v0.6.14 (2006/09/27), Pegasus/Pegasus II USB Ethernet driver
usbcore: registered new interface driver pegasus
usbcore: registered new interface driver asix
usbcore: registered new interface driver cdc_ether
usbcore: registered new interface driver dm9601
usbcore: registered new interface driver smsc75xx
usbcore: registered new interface driver smsc95xx
usbcore: registered new interface driver net1080
usbcore: registered new interface driver cdc_subset
usbcore: registered new interface driver zaurus
usbcore: registered new interface driver MOSCHIP usb-ethernet driver
usbcore: registered new interface driver int51x1
usbcore: registered new interface driver cdc_ncm
ehci_hcd: USB 2.0 'Enhanced' Host Controller (EHCI) Driver
ehci-omap.0 supply hsusb0 not found, using dummy regulator
ehci-omap.0 supply hsusb1 not found, using dummy regulator
ehci-omap ehci-omap.0: OMAP-EHCI Host Controller
ehci-omap ehci-omap.0: new USB bus registered, assigned bus number 1
ehci-omap ehci-omap.0: irq 77, io mem 0x48064800
ehci-omap ehci-omap.0: USB 2.0 started, EHCI 1.00
hub 1-0:1.0: USB hub found
hub 1-0:1.0: 3 ports detected
Initializing USB Mass Storage driver...
usbcore: registered new interface driver usb-storage
USB Mass Storage support registered.
musb-hdrc: version 6.0, ?dma?, otg (peripheral+host)
musb-hdrc musb-hdrc: USB OTG mode controller at fa0ab000 using DMA, IRQ 92
mousedev: PS/2 mouse device common for all mice
twl_rtc twl_rtc: Enabling TWL-RTC
twl_rtc twl_rtc: rtc core: registered twl_rtc as rtc0
omap_wdt: OMAP Watchdog Timer Rev 0x31: initial timeout 60 sec
cpuidle: using governor ladder
cpuidle: using governor menu
usbcore: registered new interface driver usbhid
usbhid: USB HID core driver
OMAP3 Beagle/Devkit8000 SoC init
soc-audio soc-audio: ASoC machine omap3beagle should use
snd_soc_register_card()
usb 1-2: new high-speed USB device number 2 using ehci-omap
twl4030-codec twl4030-codec: ASoC: Failed to create Capture debugfs file
asoc: twl4030-hifi <-> omap-mcbsp.2 mapping ok
TCP: cubic registered
NET: Registered protocol family 10
IPv6 over IPv4 tunneling driver
NET: Registered protocol family 17
Registering the dns_resolver key type
VFP support v0.3: implementor 41 architecture 3 part 30 variant c rev 3
ThumbEE CPU extension supported.
sr_init: No PMIC hook to init smartreflex
smartreflex smartreflex.0: omap_sr_probe: SmartReflex driver initialized
smartreflex smartreflex.1: omap_sr_probe: SmartReflex driver initialized
SmartReflex Class3 initialized
clock: disabling unused clocks to save power
omapfb omapfb: no driver for display: dvi
Console: switching to colour frame buffer device 90x35
hub 1-2:1.0: USB hub found
hub 1-2:1.0: 5 ports detected
VDVI: incomplete constraints, leaving on
console [netcon0] enabled
netconsole: network logging started
twl_rtc twl_rtc: setting system clock to 2012-07-26 00:49:41 UTC
(1343263781)
ALSA device list:
  #0: omap3beagle
Waiting for root device /dev/mmcblk0p2...
usb 1-2.1: new high-speed USB device number 3 using ehci-omap
mmc0: host does not support reading read-only switch. assuming write-enable.
mmc0: new high speed SDHC card at address b368
mmcblk0: mmc0:b368 SDU16 14.9 GiB
 mmcblk0: p1 p2
EXT3-fs (mmcblk0p2): recovery required on readonly filesystem
EXT3-fs (mmcblk0p2): write access will be enabled during recovery
smsc95xx v1.0.4
smsc95xx 1-2.1:1.0: eth0: register 'smsc95xx' at usb-ehci-omap.0-2.1,
smsc95xx U
SB 2.0 Ethernet, 06:f8:d5:6e:cb:9b
usb 1-2.3: new low-speed USB device number 4 using ehci-omap
input: CHESEN USB Keyboard as
/devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/
1-2.3/1-2.3:1.0/input/input0
generic-usb 0003:0A81:0101.0001: input: USB HID v1.10 Keyboard [CHESEN USB
Keybo
ard] on usb-ehci-omap.0-2.3/input0
input: CHESEN USB Keyboard as
/devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/
1-2.3/1-2.3:1.1/input/input1
generic-usb 0003:0A81:0101.0002: input: USB HID v1.10 Device [CHESEN USB
Keyboar
d] on usb-ehci-omap.0-2.3/input1
usb 1-2.5: new low-speed USB device number 5 using ehci-omap
input: PixArt USB Optical Mouse as
/devices/platform/usbhs_omap/ehci-omap.0/usb1
/1-2/1-2.5/1-2.5:1.0/input/input2
generic-usb 0003:093A:2510.0003: input: USB HID v1.11 Mouse [PixArt USB
Optical
Mouse] on usb-ehci-omap.0-2.5/input0
kjournald starting.  Commit interval 5 seconds
EXT3-fs (mmcblk0p2): recovery complete
EXT3-fs (mmcblk0p2): mounted filesystem with ordered data mode
VFS: Mounted root (ext3 filesystem) readonly on device 179:2.
devtmpfs: mounted
Freeing init memory: 364K
INIT: version 2.88 booting
Starting udev
udev[65]: starting version 164
Starting Bootlog daemon: bootlogd.
EXT3-fs (mmcblk0p2): using internal journal
ALSA: Restoring mixer settings...
Configuring network interfaces... Found hardware: "omap3beagle" "" "" "" ""
Hardware is initialized using a generic method
ADDRCONF(NETDEV_UP): eth0: link is not ready
udhcpc (v1.19.4) started
Sending discover...
ADDRCONF(NETDEV_CHANGE): eth0: link becomes ready
smsc95xx 1-2.1:1.0: eth0: link up, 100Mbps, full-duplex, lpa 0x45E1
Sending discover...
Sending discover...
No lease, failing
ifconfig: SIOCGIFFLAGS: No such device
Starting portmap daemon...
net.ipv4.conf.default.rp_filter = 1
net.ipv4.conf.all.rp_filter = 1
INIT: Entering runlevel: 5
Starting system message bus: dbus.
Starting Connection Manager
Starting Xserver
ip_tables: (C) 2000-2006 Netfilter Core Team
nf_conntrack version 0.5.0 (7726 buckets, 30904 max)
Starting Dropbear SSH server:
dropbear.

X.Org X Server 1.11.2
Release Date: 2011-11-04
X Protocol Version 11, Revision 0
Build Operating System: Linux 3.3.4-5.fc17.x86_64 x86_64
Current Operating System: Linux beagleboard 3.4.1-yocto-standard #1 Wed Jul
25 1
7:29:01 MDT 2012 armv7l
Kernel command line: console=tty0 console=ttyO2,115200n8
root=/dev/mmcblk0p2 roo
twait rootfstype=ext3 ro
Build Date: 25 July 2012  06:09:49PM

Current version of pixman: 0.26.2
Before reporting problems, check http://wiki.x.org
to make sure that you have the latest version.
Markers: (--) probed, (**) from config file, (==) default setting,
(++) from command line, (!!) notice, (II) informational,
(WW) warning, (EE) error, (NI) not implemented, (??) unknown.
(==) Log file: "/var/log/Xorg.0.log", Time: Thu Jul 26 00:50:08 2012
(==) Using config file: "/etc/X11/xorg.conf"
(==) Using system config directory "/usr/share/X11/xorg.conf.d"
Starting advanced power management daemon: (EE) Failed to load module
"extmod" (
module does not exist, 0)
(EE) Failed to load module "dbe" (module does not exist, 0)
(EE) Failed to load module "glx" (module does not exist, 0)
(EE) Failed to load module "record" (module does not exist, 0)
(EE) Failed to load module "dri" (module does not exist, 0)
(EE) Failed to load module "dri2" (module does not exist, 0)
apmd.
apmd[529]: apmd 3.2.1 interfacing with apm driver 1.13 and APM BIOS 1.2
(EE) omapfb(0): Failed to open /dev/fb2: No such file or directory
(EE) omapfb(0): XVScreenInit failed
Starting syslogd/klogd: done
 * Starting Avahi mDNS/DNS-SD Daemon: avahi-daemon
   ...done.
Starting Telephony daemon
Stopping Bootlog daemon: bootlogd.
D-BUS per-session daemon address is:
unix:abstract=/tmp/dbus-xafHXICjj3,guid=9be
0f0b74ca6034ad0c31a9800000020

Yocto (Built by Poky 7.0) 1.2+snapshot-20120725 beagleboard ttyO2

beagleboard login: matchbox: Cant find a keycode for keysym 269025056
matchbox: i
gnoring key shortcut XF86Calendar=!$contacts

matchbox: Cant find a keycode for ke
ysym 2809
matchbox: ignoring key shortcut telephone=!$dates

matchbox: Cant find a
keycode for keysym 269025050
matchbox: ignoring key shortcut XF86Start=!matchbox-
remote -desktop

[settings daemon] Forking. run with -n to prevent fork

** (matchbo
x-desktop:612): WARNING **: Error loading icon: Icon 'computer' not present
in t
heme

** (matchbox-desktop:612): WARNING **: Error loading icon: Icon 'preferences
-desktop' not present in theme

** (matchbox-desktop:612): WARNING **: Error loadi
ng icon: Icon 'system-file-manager' not present in theme

* - * Qodem 0.1.2 Capture Generated Wed, 25 Jul 2012 19:01:56 -0600 END * -
*

* - * Qodem 0.1.2 Capture Generated Wed, 25 Jul 2012 19:19:48 -0600 BEGIN *
- *


root@beagleboard:~#
root@beagleboard:~# ls
root@beagleboard:~# dmesg
Booting Linux on physical CPU 0
Initializing cgroup subsys cpuset
Initializing cgroup subsys cpu
Linux version 3.4.1-yocto-standard (vidal@ws009.swbell.net) (gcc version
4.7.2 2
0120615 (prerelease) (GCC) ) #1 Wed Jul 25 17:29:01 MDT 2012
CPU: ARMv7 Processor [413fc082] revision 2 (ARMv7), cr=10c53c7d
CPU: PIPT / VIPT nonaliasing data cache, VIPT aliasing instruction cache
Machine: OMAP3 Beagle Board
Reserving 14680064 bytes SDRAM for VRAM
Memory policy: ECC disabled, Data cache writeback
On node 0 totalpages: 127232
free_area_init_node: node 0, pgdat c089b790, node_mem_map c08ff000
  Normal zone: 1024 pages used for memmap
  Normal zone: 0 pages reserved
  Normal zone: 126208 pages, LIFO batch:31
OMAP3630 ES1.2 (l2cache iva sgx neon isp 192mhz_clk )
Clocking rate (Crystal/Core/MPU): 26.0/332/600 MHz
pcpu-alloc: s0 r0 d32768 u32768 alloc=1*32768
pcpu-alloc: [0] 0
Built 1 zonelists in Zone order, mobility grouping on.  Total pages: 126208
Kernel command line: console=tty0 console=ttyO2,115200n8
root=/dev/mmcblk0p2 roo
twait rootfstype=ext3 ro
PID hash table entries: 2048 (order: 1, 8192 bytes)
Dentry cache hash table entries: 65536 (order: 6, 262144 bytes)
Inode-cache hash table entries: 32768 (order: 5, 131072 bytes)
allocated 1048576 bytes of page_cgroup
please try 'cgroup_disable=memory' option if you don't want memory cgroups
Memory: 497MB = 497MB total
Memory: 494156k/494156k available, 30132k reserved, 0K highmem
Virtual kernel memory layout:
    vector  : 0xffff0000 - 0xffff1000   (   4 kB)
    fixmap  : 0xfff00000 - 0xfffe0000   ( 896 kB)
    vmalloc : 0xe0800000 - 0xff000000   ( 488 MB)
    lowmem  : 0xc0000000 - 0xe0000000   ( 512 MB)
    modules : 0xbf000000 - 0xc0000000   (  16 MB)
      .text : 0xc0008000 - 0xc07cb388   (7949 kB)
      .init : 0xc07cc000 - 0xc0827000   ( 364 kB)
      .data : 0xc0828000 - 0xc089e450   ( 474 kB)
       .bss : 0xc089e474 - 0xc08fed80   ( 387 kB)
SLUB: Genslabs=11, HWalign=64, Order=0-3, MinObjects=0, CPUs=1, Nodes=1
NR_IRQS:474
IRQ: Found an INTC at 0xfa200000 (revision 4.0) with 96 interrupts
Total of 96 interrupts on 1 active controller
OMAP clockevent source: GPTIMER12 at 32768 Hz
sched_clock: 32 bits at 32kHz, resolution 30517ns, wraps every 131071999ms
Console: colour dummy device 80x30
console [tty0] enabled
Calibrating delay loop... 500.97 BogoMIPS (lpj=1953792)
pid_max: default: 32768 minimum: 301
Security Framework initialized
Mount-cache hash table entries: 512
Initializing cgroup subsys debug
Initializing cgroup subsys cpuacct
Initializing cgroup subsys memory
Initializing cgroup subsys devices
Initializing cgroup subsys freezer
Initializing cgroup subsys net_cls
Initializing cgroup subsys blkio
CPU: Testing write buffer coherency: ok
ftrace: allocating 21594 entries in 64 pages
Setting up static identity map for 0x8059faf0 - 0x8059fb48
devtmpfs: initialized
dummy:
NET: Registered protocol family 16
GPMC revision 5.0
gpiochip_add: registered GPIOs 0 to 31 on device: gpio
OMAP GPIO hardware version 2.5
gpiochip_add: registered GPIOs 32 to 63 on device: gpio
gpiochip_add: registered GPIOs 64 to 95 on device: gpio
gpiochip_add: registered GPIOs 96 to 127 on device: gpio
gpiochip_add: registered GPIOs 128 to 159 on device: gpio
gpiochip_add: registered GPIOs 160 to 191 on device: gpio
omap_mux_init: Add partition: #1: core, flags: 0
OMAP3 Beagle Rev: xM C
Reprogramming SDRC clock to 332000000 Hz
 usbhs_omap: alias fck already exists
Found NAND on CS0
Registering NAND on CS0
Unable to get DVI reset GPIO
 omap-mcbsp.2: alias fck already exists
 omap-mcbsp.3: alias fck already exists
OMAP DMA hardware revision 5.0
bio: create slab <bio-0> at 0
SCSI subsystem initialized
omap2_mcspi omap2_mcspi.1: master is unqueued, this is deprecated
omap2_mcspi omap2_mcspi.2: master is unqueued, this is deprecated
omap2_mcspi omap2_mcspi.3: master is unqueued, this is deprecated
omap2_mcspi omap2_mcspi.4: master is unqueued, this is deprecated
usbcore: registered new interface driver usbfs
usbcore: registered new interface driver hub
usbcore: registered new device driver usb
omap_i2c omap_i2c.1: bus 1 rev1.4.0 at 2600 kHz
twl 1-0048: PIH (irq 7) chaining IRQs 320..328
twl 1-0048: power (irq 325) chaining IRQs 328..335
twl4030_gpio twl4030_gpio: gpio (irq 320) chaining IRQs 336..353
gpiochip_add: registered GPIOs 192 to 211 on device: twl4030
VUSB1V5: 1500 mV normal standby
VUSB1V8: 1800 mV normal standby
VUSB3V1: 3100 mV normal standby
twl4030_usb twl4030_usb: Initialized TWL4030 USB module
VMMC1: 1850 <--> 3150 mV at 3000 mV normal standby
VDAC: 1800 mV normal standby
VDVI: 1800 mV normal standby
VSIM: 1800 <--> 3000 mV at 1800 mV normal standby
omap_i2c omap_i2c.3: bus 3 rev1.4.0 at 100 kHz
Advanced Linux Sound Architecture Driver Version 1.0.25.
cfg80211: Calling CRDA to update world regulatory domain
Switching to clocksource 32k_counter
usbhs_omap usbhs_omap: xclk60mhsp1_ck set parentfailed error:-22
usbhs_omap usbhs_omap: xclk60mhsp2_ck set parentfailed error:-22
NET: Registered protocol family 2
IP route cache hash table entries: 4096 (order: 2, 16384 bytes)
TCP established hash table entries: 16384 (order: 5, 131072 bytes)
TCP bind hash table entries: 16384 (order: 4, 65536 bytes)
TCP: Hash tables configured (established 16384 bind 16384)
TCP: reno registered
UDP hash table entries: 256 (order: 0, 4096 bytes)
UDP-Lite hash table entries: 256 (order: 0, 4096 bytes)
NET: Registered protocol family 1
RPC: Registered named UNIX socket transport module.
RPC: Registered udp transport module.
RPC: Registered tcp transport module.
RPC: Registered tcp NFSv4.1 backchannel transport module.
VFS: Disk quotas dquot_6.5.2
Dquot-cache hash table entries: 1024 (order 0, 4096 bytes)
Registering unionfs 2.5.10 (for 3.1.0-rc4)
NFS: Registering the id_resolver key type
Btrfs loaded
msgmni has been set to 965
Block layer SCSI generic (bsg) driver version 0.4 loaded (major 253)
io scheduler noop registered
io scheduler deadline registered
io scheduler cfq registered (default)
OMAP DSS rev 2.0
Serial: 8250/16550 driver, 4 ports, IRQ sharing enabled
omap_uart.0: ttyO0 at MMIO 0x4806a000 (irq = 72) is a OMAP UART0
omap_uart.1: ttyO1 at MMIO 0x4806c000 (irq = 73) is a OMAP UART1
omap_uart.2: ttyO2 at MMIO 0x49020000 (irq = 74) is a OMAP UART2
console [ttyO2] enabled
omap_uart.3: ttyO3 at MMIO 0x49042000 (irq = 80) is a OMAP UART3
brd: module loaded
No NAND device found
No NAND device found
usbcore: registered new interface driver kaweth
pegasus: v0.6.14 (2006/09/27), Pegasus/Pegasus II USB Ethernet driver
usbcore: registered new interface driver pegasus
usbcore: registered new interface driver asix
usbcore: registered new interface driver cdc_ether
usbcore: registered new interface driver dm9601
usbcore: registered new interface driver smsc75xx
usbcore: registered new interface driver smsc95xx
usbcore: registered new interface driver net1080
usbcore: registered new interface driver cdc_subset
usbcore: registered new interface driver zaurus
usbcore: registered new interface driver MOSCHIP usb-ethernet driver
usbcore: registered new interface driver int51x1
usbcore: registered new interface driver cdc_ncm
ehci_hcd: USB 2.0 'Enhanced' Host Controller (EHCI) Driver
ehci-omap.0 supply hsusb0 not found, using dummy regulator
ehci-omap.0 supply hsusb1 not found, using dummy regulator
ehci-omap ehci-omap.0: OMAP-EHCI Host Controller
ehci-omap ehci-omap.0: new USB bus registered, assigned bus number 1
ehci-omap ehci-omap.0: irq 77, io mem 0x48064800
ehci-omap ehci-omap.0: USB 2.0 started, EHCI 1.00
hub 1-0:1.0: USB hub found
hub 1-0:1.0: 3 ports detected
Initializing USB Mass Storage driver...
usbcore: registered new interface driver usb-storage
USB Mass Storage support registered.
musb-hdrc: version 6.0, ?dma?, otg (peripheral+host)
musb-hdrc: ConfigData=0xde (UTMI-8, dyn FIFOs, bulk combine, bulk split,
HB-ISO
Rx, HB-ISO Tx, SoftConn)
musb-hdrc: MHDRC RTL version 1.800
musb-hdrc: setup fifo_mode 4
musb-hdrc: 28/31 max ep, 16384/16384 memory
musb-hdrc musb-hdrc: USB OTG mode controller at fa0ab000 using DMA, IRQ 92
mousedev: PS/2 mouse device common for all mice
twl_rtc twl_rtc: Enabling TWL-RTC
twl_rtc twl_rtc: rtc core: registered twl_rtc as rtc0
omap_wdt: OMAP Watchdog Timer Rev 0x31: initial timeout 60 sec
cpuidle: using governor ladder
cpuidle: using governor menu
usbcore: registered new interface driver usbhid
usbhid: USB HID core driver
OMAP3 Beagle/Devkit8000 SoC init
soc-audio soc-audio: ASoC machine omap3beagle should use
snd_soc_register_card()
usb 1-2: new high-speed USB device number 2 using ehci-omap
twl4030-codec twl4030-codec: ASoC: Failed to create Capture debugfs file
asoc: twl4030-hifi <-> omap-mcbsp.2 mapping ok
TCP: cubic registered
NET: Registered protocol family 10
IPv6 over IPv4 tunneling driver
NET: Registered protocol family 17
Registering the dns_resolver key type
VFP support v0.3: implementor 41 architecture 3 part 30 variant c rev 3
ThumbEE CPU extension supported.
sr_init: No PMIC hook to init smartreflex
smartreflex smartreflex.0: omap_sr_probe: SmartReflex driver initialized
smartreflex smartreflex.1: omap_sr_probe: SmartReflex driver initialized
SmartReflex Class3 initialized
clock: disabling unused clocks to save power
omapfb omapfb: no driver for display: dvi
Console: switching to colour frame buffer device 90x35
hub 1-2:1.0: USB hub found
hub 1-2:1.0: 5 ports detected
VDVI: incomplete constraints, leaving on
console [netcon0] enabled
netconsole: network logging started
twl_rtc twl_rtc: setting system clock to 2012-07-26 00:49:41 UTC
(1343263781)
ALSA device list:
  #0: omap3beagle
Waiting for root device /dev/mmcblk0p2...
usb 1-2.1: new high-speed USB device number 3 using ehci-omap
mmc0: host does not support reading read-only switch. assuming write-enable.
mmc0: new high speed SDHC card at address b368
mmcblk0: mmc0:b368 SDU16 14.9 GiB
 mmcblk0: p1 p2
EXT3-fs (mmcblk0p2): recovery required on readonly filesystem
EXT3-fs (mmcblk0p2): write access will be enabled during recovery
smsc95xx v1.0.4
smsc95xx 1-2.1:1.0: eth0: register 'smsc95xx' at usb-ehci-omap.0-2.1,
smsc95xx U
SB 2.0 Ethernet, 06:f8:d5:6e:cb:9b
usb 1-2.3: new low-speed USB device number 4 using ehci-omap
input: CHESEN USB Keyboard as
/devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/
1-2.3/1-2.3:1.0/input/input0
generic-usb 0003:0A81:0101.0001: input: USB HID v1.10 Keyboard [CHESEN USB
Keybo
ard] on usb-ehci-omap.0-2.3/input0
input: CHESEN USB Keyboard as
/devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/
1-2.3/1-2.3:1.1/input/input1
generic-usb 0003:0A81:0101.0002: input: USB HID v1.10 Device [CHESEN USB
Keyboar
d] on usb-ehci-omap.0-2.3/input1
usb 1-2.5: new low-speed USB device number 5 using ehci-omap
input: PixArt USB Optical Mouse as
/devices/platform/usbhs_omap/ehci-omap.0/usb1
/1-2/1-2.5/1-2.5:1.0/input/input2
generic-usb 0003:093A:2510.0003: input: USB HID v1.11 Mouse [PixArt USB
Optical
Mouse] on usb-ehci-omap.0-2.5/input0
kjournald starting.  Commit interval 5 seconds
EXT3-fs (mmcblk0p2): recovery complete
EXT3-fs (mmcblk0p2): mounted filesystem with ordered data mode
VFS: Mounted root (ext3 filesystem) readonly on device 179:2.
devtmpfs: mounted
Freeing init memory: 364K
udev[65]: starting version 164
EXT3-fs (mmcblk0p2): using internal journal
ADDRCONF(NETDEV_UP): eth0: link is not ready
ADDRCONF(NETDEV_CHANGE): eth0: link becomes ready
smsc95xx 1-2.1:1.0: eth0: link up, 100Mbps, full-duplex, lpa 0x45E1
ip_tables: (C) 2000-2006 Netfilter Core Team
nf_conntrack version 0.5.0 (7726 buckets, 30904 max)
root@beagleboard:~# ifconfig -a
eth0      Link encap:Ethernet  HWaddr 06:F8:D5:6E:CB:9B
          inet addr:169.254.141.65  Bcast:169.254.255.255  Mask:255.255.0.0
          inet6 addr: fe80::4f8:d5ff:fe6e:cb9b/64 Scope:Link
          UP BROADCAST RUNNING MULTICAST  MTU:1500  Metric:1
          RX packets:66 errors:0 dropped:0 overruns:0 frame:0
          TX packets:41 errors:0 dropped:0 overruns:0 carrier:0
          collisions:0 txqueuelen:1000
          RX bytes:8698 (8.4 KiB)  TX bytes:11019 (10.7 KiB)

lo        Link encap:Local Loopback
          inet addr:127.0.0.1  Mask:255.0.0.0
          inet6 addr: ::1/128 Scope:Host
          UP LOOPBACK RUNNING  MTU:16436  Metric:1
          RX packets:0 errors:0 dropped:0 overruns:0 frame:0
          TX packets:0 errors:0 dropped:0 overruns:0 carrier:0
          collisions:0 txqueuelen:0
          RX bytes:0 (0.0 B)  TX bytes:0 (0.0 B)

sit0      Link encap:IPv6-in-IPv4
          NOARP  MTU:1480  Metric:1
          RX packets:0 errors:0 dropped:0 overruns:0 frame:0
          TX packets:0 errors:0 dropped:0 overruns:0 carrier:0
          collisions:0 txqueuelen:0
          RX bytes:0 (0.0 B)  TX bytes:0 (0.0 B)

root@beagleboard:~# cd /etc/newtwork
-sh: cd: /etc/newtwork: No such file or directory
root@beagleboard:~# cd /etc/
root@beagleboard:/etc# ls
X11                          network
apm                          nsswitch.conf
asound.conf                  ofono
avahi                        pango
bash_completion.d            passwd
beecrypt.conf                passwd-
bluetooth                    polkit-1
busybox.links                profile
dbus-1                       profile.d
default                      protocols
depmod.d                     rc0.d
device_table                 rc1.d
dropbear                     rc2.d
filesystems                  rc3.d
fonts                        rc4.d
formfactor                   rc5.d
fstab                        rc6.d
gconf                        rcS.d
group                        resolv.conf
group-                       rpc
gshadow                      rpm
gshadow-                     rpm-postinsts
gtk-2.0                      securetty
host.conf                    services
hostname                     shadow
hosts                        shadow-
init.d                       shells
inittab                      skel
inputrc                      sudoers
issue                        sudoers.d
issue.net                    sysctl.conf
ld.so.cache                  syslog-startup.conf
ld.so.conf                   syslog-startup.conf.busybox
libnl                        terminfo
limits                       timestamp
localtime                    timezone
login.access                 ts.conf
login.defs                   udev
logrotate.d                  udhcpc.d
matchbox                     version
modprobe.d                   volatile.cache
modules                      wpa_supplicant.conf
modules.conf                 xdg
motd                         zypp
mtab
root@beagleboard:/etc# cd network
root@beagleboard:/etc/network# ls
if-down.d       if-post-down.d  if-pre-up.d     if-up.d         interfaces
root@beagleboard:/etc/network# more interfaces
# /etc/network/interfaces -- configuration file for ifup(8), ifdown(8)

# The loopback interface
auto lo
iface lo inet loopback

# Wireless interfaces
iface wlan0 inet dhcp
        wireless_mode managed
        wireless_essid any
        wpa-driver wext
        wpa-conf /etc/wpa_supplicant.conf

iface atml0 inet dhcp

# Wired or wireless interfaces
auto eth0
iface eth0 inet dhcp
iface eth1 inet dhcp

# Ethernet/RNDIS gadget (g_ether) or LAN9514 on BeagleBoard xM
auto usb0
iface usb0 inet dhcp
--More-- (94% of 518 bytes)
# Bluetooth networking
iface bnep0 inet dhcp

root@beagleboard:/etc/network# ifconfgi  ig -a
eth0      Link encap:Ethernet  HWaddr 06:F8:D5:6E:CB:9B
          inet addr:169.254.141.65  Bcast:169.254.255.255  Mask:255.255.0.0
          inet6 addr: fe80::4f8:d5ff:fe6e:cb9b/64 Scope:Link
          UP BROADCAST RUNNING MULTICAST  MTU:1500  Metric:1
          RX packets:69 errors:0 dropped:0 overruns:0 frame:0
          TX packets:41 errors:0 dropped:0 overruns:0 carrier:0
          collisions:0 txqueuelen:1000
          RX bytes:9010 (8.7 KiB)  TX bytes:11019 (10.7 KiB)

lo        Link encap:Local Loopback
          inet addr:127.0.0.1  Mask:255.0.0.0
          inet6 addr: ::1/128 Scope:Host
          UP LOOPBACK RUNNING  MTU:16436  Metric:1
          RX packets:0 errors:0 dropped:0 overruns:0 frame:0
          TX packets:0 errors:0 dropped:0 overruns:0 carrier:0
          collisions:0 txqueuelen:0
          RX bytes:0 (0.0 B)  TX bytes:0 (0.0 B)

sit0      Link encap:IPv6-in-IPv4
          NOARP  MTU:1480  Metric:1
          RX packets:0 errors:0 dropped:0 overruns:0 frame:0
          TX packets:0 errors:0 dropped:0 overruns:0 carrier:0
          collisions:0 txqueuelen:0
          RX bytes:0 (0.0 B)  TX bytes:0 (0.0 B)

root@beagleboard:/etc/network# cd /var/log
root@beagleboard:/var/log# ls
Xorg.0.log  messages    wtmp
root@beagleboard:/var/log# cat Xorg.0.log
[3234011.932]
X.Org X Server 1.11.2
Release Date: 2011-11-04
[3234011.933] X Protocol Version 11, Revision 0
[3234011.934] Build Operating System: Linux 3.3.4-5.fc17.x86_64 x86_64
[3234011.934] Current Operating System: Linux beagleboard
3.4.1-yocto-standard #
1 Wed Jul 25 17:29:01 MDT 2012 armv7l
[3234011.934] Kernel command line: console=tty0 console=ttyO2,115200n8
root=/dev
/mmcblk0p2 rootwait rootfstype=ext3 ro
[3234011.938] Build Date: 25 July 2012  06:09:49PM
[3234011.939]
[3234011.939] Current version of pixman: 0.26.2
[3234011.941] Before reporting problems, check http://wiki.x.org
to make sure that you have the latest version.
[3234011.941] Markers: (--) probed, (**) from config file, (==) default
setting,
(++) from command line, (!!) notice, (II) informational,
(WW) warning, (EE) error, (NI) not implemented, (??) unknown.
[3234011.943] (==) Log file: "/var/log/Xorg.0.log", Time: Thu Jul 26
00:50:08 20
12
[3234011.948] (==) Using config file: "/etc/X11/xorg.conf"
[3234011.948] (==) Using system config directory
"/usr/share/X11/xorg.conf.d"
[3234011.952] (==) ServerLayout "Builtin Default Layout"
[3234011.952] (**) |-->Screen "Builtin Default fbdev Screen 0" (0)
[3234011.952] (**) |   |-->Monitor "Builtin Default Monitor"
[3234011.960] (**) |   |-->Device "Builtin Default fbdev Device 0"
[3234011.960] (**) Option "DontZap" "0"
[3234011.960] (**) Option "AutoAddDevices" "False"
[3234011.960] (**) Not automatically adding devices
[3234011.960] (==) Automatically enabling devices
[3234011.963] (WW) The directory "/usr/share/fonts/X11/misc/" does not
exist.
[3234011.963] Entry deleted from font path.
[3234011.963] (WW) The directory "/usr/share/fonts/X11/TTF/" does not exist.
[3234011.963] Entry deleted from font path.
[3234011.963] (WW) The directory "/usr/share/fonts/X11/OTF/" does not exist.
[3234011.963] Entry deleted from font path.
[3234011.964] (WW) The directory "/usr/share/fonts/X11/Type1/" does not
exist.
[3234011.964] Entry deleted from font path.
[3234011.964] (WW) The directory "/usr/share/fonts/X11/100dpi/" does not
exist.
[3234011.964] Entry deleted from font path.
[3234011.964] (WW) The directory "/usr/share/fonts/X11/75dpi/" does not
exist.
[3234011.964] Entry deleted from font path.
[3234011.964] (==) FontPath set to:

[3234011.964] (==) ModulePath set to "/usr/lib/xorg/modules"
[3234011.964] (==) |-->Input Device "<default pointer>"
[3234011.964] (==) |-->Input Device "<default keyboard>"
[3234011.964] (==) The core pointer device wasn't specified explicitly in
the la
yout.
Using the default mouse configuration.
[3234011.964] (==) The core keyboard device wasn't specified explicitly in
the l
ayout.
Using the default keyboard configuration.
[3234011.964] (II) Loader magic: 0x17b930
[3234011.964] (II) Module ABI versions:
[3234011.964] X.Org ANSI C Emulation: 0.4
[3234011.964] X.Org Video Driver: 11.0
[3234011.964] X.Org XInput driver : 13.0
[3234011.964] X.Org Server Extension : 6.0
[3234011.965] (II) Open APM successful
[3234011.965] (II) "extmod" will be loaded. This was enabled by default and
also
 specified in the config file.
[3234011.965] (II) "dbe" will be loaded. This was enabled by default and
also sp
ecified in the config file.
[3234011.965] (II) "dri2" will be loaded by default.
[3234011.965] (II) LoadModule: "extmod"
[3234011.980] (WW) Warning, couldn't open module extmod
[3234011.980] (II) UnloadModule: "extmod"
[3234011.980] (II) Unloading extmod
[3234011.980] (EE) Failed to load module "extmod" (module does not exist, 0)
[3234011.985] (II) LoadModule: "dbe"
[3234011.986] (WW) Warning, couldn't open module dbe
[3234011.986] (II) UnloadModule: "dbe"
[3234011.986] (II) Unloading dbe
[3234011.986] (EE) Failed to load module "dbe" (module does not exist, 0)
[3234011.986] (II) LoadModule: "glx"
[3234011.987] (WW) Warning, couldn't open module glx
[3234011.987] (II) UnloadModule: "glx"
[3234011.987] (II) Unloading glx
[3234011.987] (EE) Failed to load module "glx" (module does not exist, 0)
[3234011.987] (II) LoadModule: "record"
[3234011.988] (WW) Warning, couldn't open module record
[3234011.988] (II) UnloadModule: "record"
[3234011.988] (II) Unloading record
[3234011.988] (EE) Failed to load module "record" (module does not exist, 0)
[3234011.988] (II) LoadModule: "dri"
[3234011.989] (WW) Warning, couldn't open module dri
[3234011.989] (II) UnloadModule: "dri"
[3234011.989] (II) Unloading dri
[3234011.989] (EE) Failed to load module "dri" (module does not exist, 0)
[3234011.990] (II) LoadModule: "dri2"
[3234011.990] (WW) Warning, couldn't open module dri2
[3234011.990] (II) UnloadModule: "dri2"
[3234011.990] (II) Unloading dri2
[3234011.990] (EE) Failed to load module "dri2" (module does not exist, 0)
[3234011.991] (II) LoadModule: "omapfb"
[3234011.991] (II) Loading /usr/lib/xorg/modules/drivers/omapfb_drv.so
[3234011.996] (II) Module omapfb: vendor="X.Org Foundation"
[3234011.996] compiled for 1.11.2, module version = 0.1.1
[3234011.996] ABI class: X.Org Video Driver, version 11.0
[3234011.996] (II) LoadModule: "mouse"
[3234011.997] (II) Loading /usr/lib/xorg/modules/input/mouse_drv.so
[3234012.001] (II) Module mouse: vendor="X.Org Foundation"
[3234012.001] compiled for 1.11.2, module version = 1.7.2
[3234012.001] Module class: X.Org XInput Driver
[3234012.001] ABI class: X.Org XInput driver, version 13.0
[3234012.001] (II) LoadModule: "kbd"
[3234012.002] (II) Loading /usr/lib/xorg/modules/input/kbd_drv.so
[3234012.005] (II) Module kbd: vendor="X.Org Foundation"
[3234012.006] compiled for 1.11.2, module version = 1.6.1
[3234012.006] Module class: X.Org XInput Driver
[3234012.006] ABI class: X.Org XInput driver, version 13.0
[3234012.006] (II) omapfb: Driver for OMAP framebuffer (omapfb) and
external LCD
 controllers:
omap1/2/3, S1D13745, HWA742
[3234012.006] (--) using VT number 1

[3234012.030] (WW) Falling back to old probe method for OMAPFB
[3234012.031] (II) Loading /usr/lib/xorg/modules/drivers/omapfb_drv.so
[3234012.031] (WW) VGA arbiter: cannot open kernel arbiter, no multi-card
suppor
t
[3234012.032] (WW) Error opening /sys/devices/platform/omapfb/ctrl/name: No
such
 file or directory
[3234012.032] (WW) Can't autodetect LCD controller, assuming internal
[3234012.032] (II) LCD controller: internal
[3234012.032] (II) omapfb(0): Base plane capabilities:
[3234012.032] (II) omapfb(0): Base plane supports the following image
formats:
[3234012.032] (II) omapfb(0): VideoRAM: 1616KiB (SDRAM)
[3234012.032] (II) omapfb(0): Creating default Display subsection in Screen
sect
ion
"Builtin Default fbdev Screen 0" for depth/fbbpp 24/32
[3234012.032] (--) omapfb(0): Depth 24, (==) framebuffer bpp 32
[3234012.032] (==) omapfb(0): RGB weight 888
[3234012.032] (==) omapfb(0): Default visual is TrueColor
[3234012.032] (II) omapfb(0): Rotate test version 0.02
[3234012.036] (II) omapfb(0): Output LCD using monitor section Builtin
Default M
onitor
[3234012.037] (II) omapfb(0): Printing probed modes for output LCD
[3234012.037] (II) omapfb(0): Modeline "720x574"x25.0   13.50  720 732 796
864
574 579 584 625 (15.6 kHz)
[3234012.037] (II) omapfb(0): Output LCD connected
[3234012.037] (II) omapfb(0): Using exact sizes for initial modes
[3234012.037] (II) omapfb(0): Output LCD using initial mode 720x574
[3234012.037] (II) omapfb(0): Using default gamma of (1.0, 1.0, 1.0) unless
othe
rwise stated.
[3234012.037] (II) omapfb(0): XRandR extension initialized
[3234012.037] (--) omapfb(0): Virtual size is 720x574 (pitch 720)
[3234012.037] (**) omapfb(0):  Mode "720x574": 13.5 MHz, 15.6 kHz, 25.0 Hz
[3234012.037] (II) omapfb(0): Modeline "720x574"x25.0   13.50  720 732 796
864
574 579 584 625 (15.6 kHz)
[3234012.038] (==) omapfb(0): DPI set to (96, 96)
[3234012.038] (--) Depth 24 pixmap format is 32 bpp
[3234012.052] (II) Loading sub module "fb"
[3234012.053] (II) LoadModule: "fb"
[3234012.053] (II) Loading /usr/lib/xorg/modules/libfb.so
[3234012.068] (II) Module fb: vendor="X.Org Foundation"
[3234012.069] compiled for 1.11.2, module version = 1.0.0
[3234012.069] ABI class: X.Org ANSI C Emulation, version 0.4
[3234012.080] (==) omapfb(0): DPMS enabled
[3234012.080] (EE) omapfb(0): Failed to open /dev/fb2: No such file or
directory
[3234012.080] (EE) omapfb(0): XVScreenInit failed
[3234012.080] (II) omapfb(0): RandR 1.2 enabled, ignore the following RandR
disa
bled message.
[3234012.080] (--) RandR disabled
[3234012.080] (II) Initializing built-in extension Generic Event Extension
[3234012.081] (II) Initializing built-in extension SHAPE
[3234012.081] (II) Initializing built-in extension MIT-SHM
[3234012.081] (II) Initializing built-in extension XInputExtension
[3234012.081] (II) Initializing built-in extension XTEST
[3234012.081] (II) Initializing built-in extension BIG-REQUESTS
[3234012.081] (II) Initializing built-in extension SYNC
[3234012.081] (II) Initializing built-in extension XKEYBOARD
[3234012.081] (II) Initializing built-in extension XC-MISC
[3234012.081] (II) Initializing built-in extension XFIXES
[3234012.081] (II) Initializing built-in extension RENDER
[3234012.081] (II) Initializing built-in extension RANDR
[3234012.081] (II) Initializing built-in extension COMPOSITE
[3234012.081] (II) Initializing built-in extension DAMAGE
[3234012.179] (II) omapfb(0): Setting screen physical size to 190 x 151
[3234012.762] (II) Using input driver 'mouse' for '<default pointer>'
[3234012.762] (II) Loading /usr/lib/xorg/modules/input/mouse_drv.so
[3234012.762] (**) Option "CorePointer"
[3234012.762] (**) <default pointer>: always reports core events
[3234012.762] (WW) <default pointer>: No Device specified, looking for
one...
[3234012.763] (II) <default pointer>: Setting Device option to
"/dev/input/mice"
[3234012.763] (--) <default pointer>: Device: "/dev/input/mice"
[3234012.763] (==) <default pointer>: Protocol: "Auto"
[3234012.763] (**) <default pointer>: always reports core events
[3234012.763] (**) Option "Device" "/dev/input/mice"
[3234012.763] (==) <default pointer>: Emulate3Buttons, Emulate3Timeout: 50
[3234012.764] (**) <default pointer>: ZAxisMapping: buttons 4 and 5
[3234012.764] (**) <default pointer>: Buttons: 9
[3234012.764] (II) XINPUT: Adding extended input device "<default pointer>"
(typ
e: MOUSE, id 6)
[3234012.764] (**) <default pointer>: (accel) keeping acceleration scheme 1
[3234012.764] (**) <default pointer>: (accel) acceleration profile 0
[3234012.764] (**) <default pointer>: (accel) acceleration factor: 2.000
[3234012.764] (**) <default pointer>: (accel) acceleration threshold: 4
[3234012.765] (II) <default pointer>: Setting mouse protocol to
"ExplorerPS/2"
[3234013.059] (II) <default pointer>: ps2EnableDataReporting: succeeded
[3234013.059] (II) Using input driver 'kbd' for '<default keyboard>'
[3234013.059] (II) Loading /usr/lib/xorg/modules/input/kbd_drv.so
[3234013.060] (**) Option "CoreKeyboard"
[3234013.060] (**) <default keyboard>: always reports core events
[3234013.060] (**) <default keyboard>: always reports core events
[3234013.060] (**) Option "Protocol" "standard"
[3234013.060] (**) Option "XkbRules" "base"
[3234013.060] (**) Option "XkbModel" "pc105"
[3234013.060] (**) Option "XkbLayout" "us"
[3234013.060] (II) XINPUT: Adding extended input device "<default
keyboard>" (ty
pe: KEYBOARD, id 7)
[3234013.150] (II) config/udev: Adding input device CHESEN USB Keyboard
(/dev/in
put/event0)
[3234013.150] (II) AutoAddDevices is off - not adding device.
[3234013.152] (II) config/udev: Adding input device CHESEN USB Keyboard
(/dev/in
put/event1)
[3234013.152] (II) AutoAddDevices is off - not adding device.
[3234013.153] (II) config/udev: Adding input device PixArt USB Optical
Mouse (/d
ev/input/event2)
[3234013.154] (II) AutoAddDevices is off - not adding device.
[3234013.155] (II) config/udev: Adding input device PixArt USB Optical
Mouse (/d
ev/input/mouse0)
[3234013.155] (II) AutoAddDevices is off - not adding device.
root@beagleboard:/var/log# cd /etc/network
root@beagleboard:/etc/network# vi interfaces
# /etc/network/interfaces -- configuration file for ifup(8), ifdown(8)

# The loopback interface
auto lo
iface lo inet loopback

# Wireless interfaces
iface wlan0 inet dhcpwireless_mode managedwireless_essid anywpa-driver
wextwpa-conf /etc/wpa_supplicant.conf

iface atml0 inet dhcp

# Wired or wireless interfaces
auto eth0
iface eth0 inet dhcp
iface eth1 inet dhcp

# Ethernet/RNDIS gadget (g_ether) or LAN9514 on BeagleBoard xM
auto usb0
iface usb0 inet dhcp- interfaces 1/27 3%
- interfaces 2/27 7%
- interfaces 3/27 11%
- interfaces 4/27 14%
- interfaces 5/27 18%
- interfaces 6/27 22%
- interfaces 7/27 25%
- interfaces 8/27 29%
- interfaces 9/27 33%
- interfaces 10/27 37%
- interfaces 11/27 40%
- interfaces 12/27 44%
- interfaces 13/27 48%
- interfaces 14/27 51%
- interfaces 15/27 55%
- interfaces 16/27 59%
- interfaces 17/27 62%
- interfaces 18/27 66%
- interfaces 19/27 70%
iface eth1 inet dhcp

# Ethernet/RNDIS gadget (g_ether) or LAN9514 on BeagleBoard xM
auto usb0           I interfaces [Modified] 19/28
67%adadaddress192.168.0.3I interfaces [Modified] 20/29 68%9
net
iface eth1 inet dhcp

# Ethernet/RNDIS gadget (g_ether) or LAN9514 on BeagleBoard xMnetwork
192.168.0.0

iface eth1 inet dhcp
                                                              I interfaces
[Modified] 21/30 70%boardcast192.168.0.25I interfaces [Modified] 22/31 70%5
net
iface eth1 inet dhcpnetmask255.255.255.0
                    I interfaces [Modified] 23/32
71%gatewgatewgateway192.168.0.1

# The loopback interface
auto lo
iface lo inet loopback

# Wireless interfaces
iface wlan0 inet dhcp
        wireless_mode managedessid any   pa-driver wext   conf
/etc/wpa_supplicant.conf
iface atml0 inet dhcp

# Wired or wireless interfaces
auto eth0
iface eth0 inet dhcp
address 192.168.0.39
network 192.168.0.0
boardcast 192.168.0.255
netmask 255.255.255.0
gateway 192.168.0.1
                   I interfaces [Modified] 24/33 72%I interfaces [Modified]
23/33 69%I interfaces [Modified] 22/33 66%I interfaces [Modified] 21/33
63%I interfaces [Modified] 20/33 60%I interfaces [Modified] 19/33 57%I
interfaces [Modified] 18/33 54%iififaifacifacecdhcpwdhcpsdhcptdhcpadhcp-
interfaces [Modified] 18/33 54%- interfaces [Modified] 18/33 54%:q!-
interfaces [Modified] 18/33 54%root@beagleboard:/etc/network# vi interfaces
# /etc/network/interfaces -- configuration file for ifup(8), ifdown(8)

# The loopback interface
auto lo
iface lo inet loopback

# Wireless interfaces
iface wlan0 inet dhcpwireless_mode managedwireless_essid anywpa-driver
wextwpa-conf /etc/wpa_supplicant.conf

iface atml0 inet dhcp

# Wired or wireless interfaces
auto eth0
iface eth0 inet dhcp
iface eth1 inet dhcp

# Ethernet/RNDIS gadget (g_ether) or LAN9514 on BeagleBoard xM
auto usb0
iface usb0 inet dhcp- interfaces 1/27 3%
- interfaces 2/27 7%
- interfaces 3/27 11%
- interfaces 4/27 14%
- interfaces 5/27 18%
- interfaces 6/27 22%
- interfaces 7/27 25%
- interfaces 8/27 29%
- interfaces 9/27 33%
- interfaces 10/27 37%
- interfaces 11/27 40%
- interfaces 12/27 44%
- interfaces 13/27 48%
- interfaces 14/27 51%
- interfaces 15/27 55%
- interfaces 16/27 59%
- interfaces 17/27 62%
- interfaces 18/27 66%
- interfaces 19/27 70%
iface eth1 inet dhcp

# Ethernet/RNDIS gadget (g_ether) or LAN9514 on BeagleBoard xM
auto usb0           I interfaces [Modified] 19/28 67%adadaddreaddreaddress
192.168.0.I interfaces [Modified] 20/29 68%39
ne
iface eth1 inet dhcp

# Ethernet/RNDIS gadget (g_ether) or LAN9514 on BeagleBoard
xMnetwork192.168.0.I interfaces [Modified] 21/30 70%0
boa
iface eth1 inet dhcp
                                                              boardcast
192.168.0.25I interfaces [Modified] 22/31 70%5
net
iface eth1 inet dhcpnetmask 255.255.255.0I interfaces [Modified] 23/32 71%
gat
gatgateway192.168.0.

# The loopback interface
auto lo
iface lo inet loopback

# Wireless interfaces
iface wlan0 inet dhcp
        wireless_mode managedessid any   pa-driver wext   conf
/etc/wpa_supplicant.conf
iface atml0 inet dhcp

# Wired or wireless interfaces
auto eth0
iface eth0 inet dhcp
address 192.168.0.39
network 192.168.0.0
boardcast 192.168.0.255
netmask 255.255.255.0
gateway 192.168.0.1
                  I interfaces [Modified] 24/33 72%- interfaces [Modified]
24/33 72%- interfaces [Modified] 23/33 69%- interfaces [Modified] 22/33
66%- interfaces [Modified] 21/33 63%- interfaces [Modified] 20/33 60%-
interfaces [Modified] 19/33 57%aadaddaddraddre  I interfaces [Modified]
19/33 57%42- interfaces [Modified] 19/33 57%- interfaces [Modified] 19/33
57%- interfaces [Modified] 18/33 54%    I interfaces [Modified] 18/33
54%static- interfaces [Modified] 18/33 54%- interfaces [Modified] 18/33
54%:wq"interfaces" 33L, 628Croot@beagleboard:/etc/network# reboot

Broadcast message from root@beagleboard (ttyO2) (Thu Jul 26 01:20:05 2012):
The system is going down for reboot NOW!
INIT: \B3level: 6
INIT: Sending processes the TERM signal
root@beagleboard:/etc/network# INIT: Sending processeStopping Dropbear SSH
server: stopped /usr/sbin/dropbear (
pid 526)
dropbear.
 * Stopping Avahi mDNS/DNS-SD Daemon: avahi-daemon
   ...done.
Stopping advanced power management daemon: stopped /usr/sbin/apmd (pid 529)
apmd.
Stopping system message bus: Stopping syslogd/klogd: stopped syslogd (pid
539)
stopped klogd (pid 541)
done
Stopping XServer
xinit: connection to X server lost

waiting for X server to shut down Server terminated successfully (0).
Closing lo
g file.
Stopping Connection Manager
Stopping Telephony daemon
ALSA: Storing mixer settings...
Bridge firewalling registered
Deconfiguring network interfaces... ifconfig: SIOCGIFFLAGS: No such device
Sending all processes the TERM signal...

xinit: unexpected signal 15
Sending all processes the KILL signal...
Unmounting remote filesystems...
Stopping portmap daemon...
Deactivating swap...
Unmounting local filesystems...
Rebooting... Restarting system.


Texas Instruments X-Loader 1.5.0 (Jul 25 2012 - 18:31:56)
Beagle xM
Reading boot sector
Loading u-boot.bin from mmc


U-Boot 2011.06 (Jul 25 2012 - 18:32:05)

OMAP3630/3730-GP ES2.1, CPU-OPP2, L3-165MHz, Max CPU Clock 1 Ghz
OMAP3 Beagle board + LPDDR/NAND
I2C:   ready
DRAM:  512 MiB
NAND:  0 MiB
MMC:   OMAP SD/MMC: 0
*** Warning - readenv() failed, using default environment

In:    serial
Out:   serial
Err:   serial
Beagle unknown 0x02
No EEPROM on expansion board
Die ID #158000029ff800000160a7450b02602d
Hit any key to stop autoboot: 10  9  0
OMAP3 beagleboard.org # setenv bootcmd 'mmc rescan 0; fatload mmc 0:1
0x80300000
 uImage; bootm
> 0x80300000'
OMAP3 beagleboard.org # setenv bootargs 'console=tty0
console=ttyO2,115200n8
> root=/dev/mmcblk0p2 rootwait rootfstype=ext3 ro'
OMAP3 beagleboard.org # boot
reading uImage

4127776 bytes read
Wrong Image Format for bootm command
ERROR: can't get kernel image!
OMAP3 beagleboard.org # setenv bootcmd 'mmc rescan 0; fatload mmc 0:1
0x80300000
 uImage; bootm
> 0x80300000'
OMAP3 beagleboard.org # setenv bootargs 'console=tty0
console=ttyO2,115200n8
> root=/dev/mmcblk0p2 rootwait rootfstype=ext3 ro'
OMAP3 beagleboard.org # boot
reading uImage

4127776 bytes read
Wrong Image Format for bootm command
ERROR: can't get kernel image!
OMAP3 beagleboard.org # setenv bootcmd 'mmc rescan 0; fatload mmc 0:1
0x80300000
 uImage; bootm
> 0x80300000'
OMAP3 beagleboard.org # setenv bootcmd 'mmc rescan 0; fatload mmc 0:1
0x80300000
>  uImage;
>
> <INTERRUPT>
OMAP3 beagleboard.org # setenv bootcmd 'mmc rescan 0; fatload mmc 0:1
0x80300000
 uImage; bootm
> 0x80300000'
OMAP3 beagleboard.org # setenv bootcmd 'mmc rescan 0; fatla a oad mmc 0:1
0x89 0300000 uIame  mge;bootm
> 0x80300000'
OMAP3 beagleboard.org # boot
reading uIamge

** Unable to read "uIamge" from mmc 0:1 **
Wrong Image Format for bootm command
ERROR: can't get kernel image!
OMAP3 beagleboard.org #

Texas Instruments X-Loader 1.5.0 (Jul 25 2012 - 18:31:56)
Beagle xM
Reading boot sector
Loading u-boot.bin from mmc


U-Boot 2011.06 (Jul 25 2012 - 18:32:05)

OMAP3630/3730-GP ES2.1, CPU-OPP2, L3-165MHz, Max CPU Clock 1 Ghz
OMAP3 Beagle board + LPDDR/NAND
I2C:   ready
DRAM:  512 MiB
NAND:  0 MiB
MMC:   OMAP SD/MMC: 0
*** Warning - readenv() failed, using default environment

In:    serial
Out:   serial
Err:   serial
Beagle unknown 0x02
No EEPROM on expansion board
Die ID #158000029ff800000160a7450b02602d
Hit any key to stop autoboot: 10  9  8  0
OMAP3 beagleboard.org # setenv bootcmd 'mmc rescan 0; fatload mmc 0:1
0x80300000 uImage; bootm
> 0x80300000'
OMAP3 beagleboard.org # setenv bootargs 'console=tty0
console=ttyO2,115200n8
> root=/dev/mmcblk0p2 rootwait rootfstype=ext3 ro'
OMAP3 beagleboard.org # boot
reading uImage

4127776 bytes read
Wrong Image Format for bootm command
ERROR: can't get kernel image!
OMAP3 beagleboard.org # setenv mpurate 'auto'
OMAP3 beagleboard.org # setenv dvimode 'hd720 omapfb.vram=0:8M,1:4M,2:4M'
OMAP3 beagleboard.org # setenv vram '16M'
OMAP3 beagleboard.org # setenv optargs 'consoleblank=0'
OMAP3 beagleboard.org # setenv console tty0 console=ttyO2,115200n8'
>
> <INTERRUPT>
OMAP3 beagleboard.org # setenvc  console 'tty0 console=ttyO2,115200n8'
OMAP3 beagleboard.org # boot
reading uImage

4127776 bytes read
Wrong Image Format for bootm command
ERROR: can't get kernel image!
OMAP3 beagleboard.org # printenv
baudrate=115200
bootargs=console=tty0 console=ttyO2,115200n8 \
root=/dev/mmcblk0p2 rootwait rootfstype=ext3 ro
bootcmd=mmc rescan 0; fatload mmc 0:1 0x80300000 uImage; bootm \
0x80300000
bootdelay=10
buddy=none
console=tty0 console=ttyO2,115200n8
defaultdisplay=dvi
dieid#=158000029ff800000160a7450b02602d
dvimode=hd720 omapfb.vram=0:8M,1:4M,2:4M
filesize=3EFC20
importbootenv=echo Importing environment from mmc ...; env import -t
$loadaddr $filesize
loadaddr=0x82000000
loadbootenv=fatload mmc ${mmcdev} ${loadaddr} uEnv.txt
loaduimage=fatload mmc ${mmcdev} ${loadaddr} uImage
mmcargs=setenv bootargs console=${console} mpurate=${mpurate} vram=${vram}
omapfb.mode=dvi:${dvimode} omapfb.debug=y
omapdss.def_disp=${defaultdisplay} ro
ot=${mmcroot} rootfstype=${mmcrootfstype}
mmcboot=echo Booting from mmc ...; run mmcargs; bootm ${loadaddr}
mmcdev=0
mmcroot=/dev/mmcblk0p2 rw
mmcrootfstype=ext3 rootwait
mpurate=auto
nandargs=setenv bootargs console=${console} mpurate=${mpurate} vram=${vram}
omapfb.mode=dvi:${dvimode} omapfb.debug=y
omapdss.def_disp=${defaultdisplay} r
oot=${nandroot} rootfstype=${nandrootfstype}
nandboot=echo Booting from nand ...; run nandargs; nand read ${loadaddr}
280000 400000; bootm ${loadaddr}
nandroot=/dev/mtdblock4 rw
nandrootfstype=jffs2
optargs=consoleblank=0
usbtty=cdc_acm
vram=16M

Environment size: 1372/131068 bytes
OMAP3 beagleboard.org #

Texas Instruments X-Loader 1.5.0 (Jul 25 2012 - 18:31:56)
Beagle xM
Reading boot sector
Loading u-boot.bin from mmc


U-Boot 2011.06 (Jul 25 2012 - 18:32:05)

OMAP3630/3730-GP ES2.1, CPU-OPP2, L3-165MHz, Max CPU Clock 1 Ghz
OMAP3 Beagle board + LPDDR/NAND
I2C:   ready
DRAM:  512 MiB
NAND:  0 MiB
MMC:   OMAP SD/MMC: 0
*** Warning - readenv() failed, using default environment

In:    serial
Out:   serial
Err:   serial
Beagle unknown 0x02
No EEPROM on expansion board
Die ID #158000029ff800000160a7450b02602d
Hit any key to stop autoboot: 10  9  8  0
OMAP3 beagleboard.org # printevn  vn  nv
baudrate=115200
bootcmd=if mmc rescan ${mmcdev}; then echo SD/MMC found on device
${mmcdev};if run loadbootenv; then run importbootenv;fi;if test -n
$uenvcmd; then echo R
unning uenvcmd ...;run uenvcmd;fi;if run loaduimage; then run
mmcboot;fi;fi;run nandboot;
bootdelay=10
buddy=none
console=ttyS2,115200n8
defaultdisplay=dvi
dieid#=158000029ff800000160a7450b02602d
dvimode=1024x768MR-16@60
importbootenv=echo Importing environment from mmc ...; env import -t
$loadaddr $filesize
loadaddr=0x82000000
loadbootenv=fatload mmc ${mmcdev} ${loadaddr} uEnv.txt
loaduimage=fatload mmc ${mmcdev} ${loadaddr} uImage
mmcargs=setenv bootargs console=${console} mpurate=${mpurate} vram=${vram}
omapfb.mode=dvi:${dvimode} omapfb.debug=y
omapdss.def_disp=${defaultdisplay} ro
ot=${mmcroot} rootfstype=${mmcrootfstype}
mmcboot=echo Booting from mmc ...; run mmcargs; bootm ${loadaddr}
mmcdev=0
mmcroot=/dev/mmcblk0p2 rw
mmcrootfstype=ext3 rootwait
mpurate=auto
nandargs=setenv bootargs console=${console} mpurate=${mpurate} vram=${vram}
omapfb.mode=dvi:${dvimode} omapfb.debug=y
omapdss.def_disp=${defaultdisplay} r
oot=${nandroot} rootfstype=${nandrootfstype}
nandboot=echo Booting from nand ...; run nandargs; nand read ${loadaddr}
280000 400000; bootm ${loadaddr}
nandroot=/dev/mtdblock4 rw
nandrootfstype=jffs2
usbtty=cdc_acm
vram=12M

Environment size: 1371/131068 bytes
OMAP3 beagleboard.org # setenv bootcmd 'mmc rescan 0; fatload mmc 0:1
0x80300000 uImage; bootm
> 0x80300000'
OMAP3 beagleboard.org # printenv
baudrate=115200
bootcmd=mmc rescan 0; fatload mmc 0:1 0x80300000 uImage; bootm \
0x80300000
bootdelay=10
buddy=none
console=ttyS2,115200n8
defaultdisplay=dvi
dieid#=158000029ff800000160a7450b02602d
dvimode=1024x768MR-16@60
importbootenv=echo Importing environment from mmc ...; env import -t
$loadaddr $filesize
loadaddr=0x82000000
loadbootenv=fatload mmc ${mmcdev} ${loadaddr} uEnv.txt
loaduimage=fatload mmc ${mmcdev} ${loadaddr} uImage
mmcargs=setenv bootargs console=${console} mpurate=${mpurate} vram=${vram}
omapfb.mode=dvi:${dvimode} omapfb.debug=y
omapdss.def_disp=${defaultdisplay} ro
ot=${mmcroot} rootfstype=${mmcrootfstype}
mmcboot=echo Booting from mmc ...; run mmcargs; bootm ${loadaddr}
mmcdev=0
mmcroot=/dev/mmcblk0p2 rw
mmcrootfstype=ext3 rootwait
mpurate=auto
nandargs=setenv bootargs console=${console} mpurate=${mpurate} vram=${vram}
omapfb.mode=dvi:${dvimode} omapfb.debug=y
omapdss.def_disp=${defaultdisplay} r
oot=${nandroot} rootfstype=${nandrootfstype}
nandboot=echo Booting from nand ...; run nandargs; nand read ${loadaddr}
280000 400000; bootm ${loadaddr}
nandroot=/dev/mtdblock4 rw
nandrootfstype=jffs2
usbtty=cdc_acm
vram=12M

Environment size: 1203/131068 bytes
OMAP3 beagleboard.org # setenv bootcmd 'mmc rescan 0; fatload mmc 0:1
0x80300000 uImage; bootm 0x80300000'
OMAP3 beagleboard.org # setenv bootargs 'console=tty0
console=ttyO2,115200n8
> root=/dev/mmcblk0p2 rootwait rootfstype=ext3 ro'
OMAP3 beagleboard.org # booy t
reading uImage

4127776 bytes read
## Booting kernel from Legacy Image at 80300000 ...
   Image Name:   Linux-3.4.1-yocto-standard
   Image Type:   ARM Linux Kernel Image (uncompressed)
   Data Size:    4127712 Bytes = 3.9 MiB
   Load Address: 80008000
   Entry Point:  80008000
   Verifying Checksum ... OK
   Loading Kernel Image ... OK
OK

Starting kernel ...

Uncompressing Linux... done, booting the kernel.
Booting Linux on physical CPU 0
Initializing cgroup subsys cpuset
Initializing cgroup subsys cpu
Linux version 3.4.1-yocto-standard (vidal@ws009.swbell.net) (gcc version
4.7.2 20120615 (prerelease) (GCC) ) #1 Wed Jul 25 17:29:01 MDT 2012
CPU: ARMv7 Processor [413fc082] revision 2 (ARMv7), cr=10c53c7d
CPU: PIPT / VIPT nonaliasing data cache, VIPT aliasing instruction cache
Machine: OMAP3 Beagle Board
Reserving 14680064 bytes SDRAM for VRAM
Memory policy: ECC disabled, Data cache writeback
OMAP3630 ES1.2 (l2cache iva sgx neon isp 192mhz_clk )
Clocking rate (Crystal/Core/MPU): 26.0/332/600 MHz
Built 1 zonelists in Zone order, mobility grouping on.  Total pages: 126208
Kernel command line: console=tty0 console=ttyO2,115200n8
root=/dev/mmcblk0p2 rootwait rootfstype=ext3 ro
PID hash table entries: 2048 (order: 1, 8192 bytes)
Dentry cache hash table entries: 65536 (order: 6, 262144 bytes)
Inode-cache hash table entries: 32768 (order: 5, 131072 bytes)
allocated 1048576 bytes of page_cgroup
please try 'cgroup_disable=memory' option if you don't want memory cgroups
Memory: 497MB = 497MB total
Memory: 494156k/494156k available, 30132k reserved, 0K highmem
Virtual kernel memory layout:
    vector  : 0xffff0000 - 0xffff1000   (   4 kB)
    fixmap  : 0xfff00000 - 0xfffe0000   ( 896 kB)
    vmalloc : 0xe0800000 - 0xff000000   ( 488 MB)
    lowmem  : 0xc0000000 - 0xe0000000   ( 512 MB)
    modules : 0xbf000000 - 0xc0000000   (  16 MB)
      .text : 0xc0008000 - 0xc07cb388   (7949 kB)
      .init : 0xc07cc000 - 0xc0827000   ( 364 kB)
      .data : 0xc0828000 - 0xc089e450   ( 474 kB)
       .bss : 0xc089e474 - 0xc08fed80   ( 387 kB)
SLUB: Genslabs=11, HWalign=64, Order=0-3, MinObjects=0, CPUs=1, Nodes=1
NR_IRQS:474
IRQ: Found an INTC at 0xfa200000 (revision 4.0) with 96 interrupts
Total of 96 interrupts on 1 active controller
OMAP clockevent source: GPTIMER12 at 32768 Hz
sched_clock: 32 bits at 32kHz, resolution 30517ns, wraps every 131071999ms
Console: colour dummy device 80x30
console [tty0] enabled
Calibrating delay loop... 503.12 BogoMIPS (lpj=1966080)
pid_max: default: 32768 minimum: 301
Security Framework initialized
Mount-cache hash table entries: 512
Initializing cgroup subsys debug
Initializing cgroup subsys cpuacct
Initializing cgroup subsys memory
Initializing cgroup subsys devices
Initializing cgroup subsys freezer
Initializing cgroup subsys net_cls
Initializing cgroup subsys blkio
CPU: Testing write buffer coherency: ok
ftrace: allocating 21594 entries in 64 pages
Setting up static identity map for 0x8059faf0 - 0x8059fb48
devtmpfs: initialized
dummy:
NET: Registered protocol family 16
GPMC revision 5.0
gpiochip_add: registered GPIOs 0 to 31 on device: gpio
OMAP GPIO hardware version 2.5
gpiochip_add: registered GPIOs 32 to 63 on device: gpio
gpiochip_add: registered GPIOs 64 to 95 on device: gpio
gpiochip_add: registered GPIOs 96 to 127 on device: gpio
gpiochip_add: registered GPIOs 128 to 159 on device: gpio
gpiochip_add: registered GPIOs 160 to 191 on device: gpio
omap_mux_init: Add partition: #1: core, flags: 0
OMAP3 Beagle Rev: xM C
Reprogramming SDRC clock to 332000000 Hz
 usbhs_omap: alias fck already exists
Found NAND on CS0
Registering NAND on CS0
Unable to get DVI reset GPIO
 omap-mcbsp.2: alias fck already exists
 omap-mcbsp.3: alias fck already exists
OMAP DMA hardware revision 5.0
bio: create slab <bio-0> at 0
SCSI subsystem initialized
omap2_mcspi omap2_mcspi.1: master is unqueued, this is deprecated
omap2_mcspi omap2_mcspi.2: master is unqueued, this is deprecated
omap2_mcspi omap2_mcspi.3: master is unqueued, this is deprecated
omap2_mcspi omap2_mcspi.4: master is unqueued, this is deprecated
usbcore: registered new interface driver usbfs
usbcore: registered new interface driver hub
usbcore: registered new device driver usb
omap_i2c omap_i2c.1: bus 1 rev1.4.0 at 2600 kHz
twl 1-0048: PIH (irq 7) chaining IRQs 320..328
twl 1-0048: power (irq 325) chaining IRQs 328..335
twl4030_gpio twl4030_gpio: gpio (irq 320) chaining IRQs 336..353
gpiochip_add: registered GPIOs 192 to 211 on device: twl4030
VUSB1V5: 1500 mV normal standby
VUSB1V8: 1800 mV normal standby
VUSB3V1: 3100 mV normal standby
twl4030_usb twl4030_usb: Initialized TWL4030 USB module
VMMC1: 1850 <--> 3150 mV at 3000 mV normal standby
VDAC: 1800 mV normal standby
VDVI: 1800 mV normal standby
VSIM: 1800 <--> 3000 mV at 1800 mV normal standby
omap_i2c omap_i2c.3: bus 3 rev1.4.0 at 100 kHz
Advanced Linux Sound Architecture Driver Version 1.0.25.
cfg80211: Calling CRDA to update world regulatory domain
Switching to clocksource 32k_counter
usbhs_omap usbhs_omap: xclk60mhsp1_ck set parentfailed error:-22
usbhs_omap usbhs_omap: xclk60mhsp2_ck set parentfailed error:-22
NET: Registered protocol family 2
IP route cache hash table entries: 4096 (order: 2, 16384 bytes)
TCP established hash table entries: 16384 (order: 5, 131072 bytes)
TCP bind hash table entries: 16384 (order: 4, 65536 bytes)
TCP: Hash tables configured (established 16384 bind 16384)
TCP: reno registered
UDP hash table entries: 256 (order: 0, 4096 bytes)
UDP-Lite hash table entries: 256 (order: 0, 4096 bytes)
NET: Registered protocol family 1
RPC: Registered named UNIX socket transport module.
RPC: Registered udp transport module.
RPC: Registered tcp transport module.
RPC: Registered tcp NFSv4.1 backchannel transport module.
VFS: Disk quotas dquot_6.5.2
Dquot-cache hash table entries: 1024 (order 0, 4096 bytes)
Registering unionfs 2.5.10 (for 3.1.0-rc4)
NFS: Registering the id_resolver key type
Btrfs loaded
msgmni has been set to 965
Block layer SCSI generic (bsg) driver version 0.4 loaded (major 253)
io scheduler noop registered
io scheduler deadline registered
io scheduler cfq registered (default)
OMAP DSS rev 2.0
Serial: 8250/16550 driver, 4 ports, IRQ sharing enabled
omap_uart.0: ttyO0 at MMIO 0x4806a000 (irq = 72) is a OMAP UART0
omap_uart.1: ttyO1 at MMIO 0x4806c000 (irq = 73) is a OMAP UART1
omap_uart.2: ttyO2 at MMIO 0x49020000 (irq = 74) is a OMAP UART2
console [ttyO2] enabled
omap_uart.3: ttyO3 at MMIO 0x49042000 (irq = 80) is a OMAP UART3
brd: module loaded
No NAND device found
No NAND device found
usbcore: registered new interface driver kaweth
pegasus: v0.6.14 (2006/09/27), Pegasus/Pegasus II USB Ethernet driver
usbcore: registered new interface driver pegasus
usbcore: registered new interface driver asix
usbcore: registered new interface driver cdc_ether
usbcore: registered new interface driver dm9601
usbcore: registered new interface driver smsc75xx
usbcore: registered new interface driver smsc95xx
usbcore: registered new interface driver net1080
usbcore: registered new interface driver cdc_subset
usbcore: registered new interface driver zaurus
usbcore: registered new interface driver MOSCHIP usb-ethernet driver
usbcore: registered new interface driver int51x1
usbcore: registered new interface driver cdc_ncm
ehci_hcd: USB 2.0 'Enhanced' Host Controller (EHCI) Driver
ehci-omap.0 supply hsusb0 not found, using dummy regulator
ehci-omap.0 supply hsusb1 not found, using dummy regulator
ehci-omap ehci-omap.0: OMAP-EHCI Host Controller
ehci-omap ehci-omap.0: new USB bus registered, assigned bus number 1
ehci-omap ehci-omap.0: irq 77, io mem 0x48064800
ehci-omap ehci-omap.0: USB 2.0 started, EHCI 1.00
hub 1-0:1.0: USB hub found
hub 1-0:1.0: 3 ports detected
Initializing USB Mass Storage driver...
usbcore: registered new interface driver usb-storage
USB Mass Storage support registered.
musb-hdrc: version 6.0, ?dma?, otg (peripheral+host)
musb-hdrc musb-hdrc: USB OTG mode controller at fa0ab000 using DMA, IRQ 92
mousedev: PS/2 mouse device common for all mice
twl_rtc twl_rtc: Enabling TWL-RTC
twl_rtc twl_rtc: rtc core: registered twl_rtc as rtc0
omap_wdt: OMAP Watchdog Timer Rev 0x31: initial timeout 60 sec
cpuidle: using governor ladder
cpuidle: using governor menu
usbcore: registered new interface driver usbhid
usbhid: USB HID core driver
OMAP3 Beagle/Devkit8000 SoC init
soc-audio soc-audio: ASoC machine omap3beagle should use
snd_soc_register_card()
usb 1-2: new high-speed USB device number 2 using ehci-omap
twl4030-codec twl4030-codec: ASoC: Failed to create Capture debugfs file
asoc: twl4030-hifi <-> omap-mcbsp.2 mapping ok
TCP: cubic registered
NET: Registered protocol family 10
IPv6 over IPv4 tunneling driver
NET: Registered protocol family 17
Registering the dns_resolver key type
VFP support v0.3: implementor 41 architecture 3 part 30 variant c rev 3
ThumbEE CPU extension supported.
sr_init: No PMIC hook to init smartreflex
smartreflex smartreflex.0: omap_sr_probe: SmartReflex driver initialized
smartreflex smartreflex.1: omap_sr_probe: SmartReflex driver initialized
SmartReflex Class3 initialized
clock: disabling unused clocks to save power
omapfb omapfb: no driver for display: dvi
Console: switching to colour frame buffer device 90x35
hub 1-2:1.0: USB hub found
hub 1-2:1.0: 5 ports detected
VDVI: incomplete constraints, leaving on
console [netcon0] enabled
netconsole: network logging started
twl_rtc twl_rtc: setting system clock to 2012-07-26 01:39:05 UTC
(1343266745)
ALSA device list:
  #0: omap3beagle
Waiting for root device /dev/mmcblk0p2...
usb 1-2.1: new high-speed USB device number 3 using ehci-omap
smsc95xx v1.0.4
smsc95xx 1-2.1:1.0: eth0: register 'smsc95xx' at usb-ehci-omap.0-2.1,
smsc95xx USB 2.0 Ethernet, aa:b7:56:ab:a1:08
usb 1-2.3: new low-speed USB device number 4 using ehci-omap
input: CHESEN USB Keyboard as
/devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/1-2.3:1.0/input/input0
generic-usb 0003:0A81:0101.0001: input: USB HID v1.10 Keyboard [CHESEN USB
Keyboard] on usb-ehci-omap.0-2.3/input0
input: CHESEN USB Keyboard as
/devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/1-2.3:1.1/input/input1
generic-usb 0003:0A81:0101.0002: input: USB HID v1.10 Device [CHESEN USB
Keyboard] on usb-ehci-omap.0-2.3/input1
mmc0: host does not support reading read-only switch. assuming write-enable.
mmc0: new high speed SDHC card at address b368
mmcblk0: mmc0:b368 SDU16 14.9 GiB
 mmcblk0: p1 p2
usb 1-2.5: new low-speed USB device number 5 using ehci-omap
kjournald starting.  Commit interval 5 seconds
EXT3-fs (mmcblk0p2): using internal journal
EXT3-fs (mmcblk0p2): mounted filesystem with ordered data mode
VFS: Mounted root (ext3 filesystem) on device 179:2.
devtmpfs: mounted
Freeing init memory: 364K
input: PixArt USB Optical Mouse as
/devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.5/1-2.5:1.0/input/input2
generic-usb 0003:093A:2510.0003: input: USB HID v1.11 Mouse [PixArt USB
Optical Mouse] on usb-ehci-omap.0-2.5/input0
INIT: version 2.88 booting
Starting udev
udev[64]: starting version 164
Starting Bootlog daemon: bootlogd.
ALSA: Restoring mixer settings...
Configuring network interfaces... ADDRCONF(NETDEV_UP): eth0: link is not
ready
ifconfig: SIOCGIFFLAGS: No such device
Starting portmap daemon...
net.ipv4.conf.default.rp_filter = 1
net.ipv4.conf.all.rp_filter = 1
INIT: Entering runlevel: 5
Starting system message bus: dbus.
Starting Connection Manager
Starting Xserver
smsc95xx 1-2.1:1.0: eth0: link up, 100Mbps, full-duplex, lpa 0x45E1
ADDRCONF(NETDEV_CHANGE): eth0: link becomes ready
ip_tables: (C) 2000-2006 Netfilter Core Team
Starting Dropbear SSH server: nf_conntrack version 0.5.0 (7726 buckets,
30904 max)

dropbear.
Starting advanced power management daemon: apmd.
apmd[525]: apmd 3.2.1 interfacing with apm driver 1.13 and APM BIOS 1.2

X.Org X Server 1.11.2
Release Date: 2011-11-04
X Protocol Version 11, Revision 0
Build Operating System: Linux 3.3.4-5.fc17.x86_64 x86_64
Current Operating System: Linux beagleboard 3.4.1-yocto-standard #1 Wed Jul
25 17:29:01 MDT 2012 armv7l
Kernel command line: console=tty0 console=ttyO2,115200n8
root=/dev/mmcblk0p2 rootwait rootfstype=ext3 ro
Build Date: 25 July 2012  06:09:49PM

Current version of pixman: 0.26.2
Before reporting problems, check http://wiki.x.org
to make sure that you have the latest version.
Markers: (--) probed, (**) from config file, (==) default setting,
(++) from command line, (!!) notice, (II) informational,
(WW) warning, (EE) error, (NI) not implemented, (??) unknown.
(==) Log file: "/var/log/Xorg.0.log", Time: Thu Jul 26 01:39:17 2012
(==) Using config file: "/etc/X11/xorg.conf"
(==) Using system config directory "/usr/share/X11/xorg.conf.d"
(EE) Failed to load module "extmod" (module does not exist, 0)
(EE) Failed to load module "dbe" (module does not exist, 0)
(EE) Failed to load module "glx" (module does not exist, 0)
(EE) Failed to load module "record" (module does not exist, 0)
(EE) Failed to load module "dri" (module does not exist, 0)
(EE) Failed to load module "dri2" (module does not exist, 0)
Starting syslogd/klogd: (EE) omapfb(0): Failed to open /dev/fb2: No such
file or directory
(EE) omapfb(0): XVScreenInit failed
done
 * Starting Avahi mDNS/DNS-SD Daemon: avahi-daemon
   ...done.
Starting Telephony daemon
Stopping Bootlog daemon: bootlogd.
D-BUS per-session daemon address is:
unix:abstract=/tmp/dbus-Ifyi2jXk5H,guid=4131839037b01bb27e8eb05000000011

Yocto (Built by Poky 7.0) 1.2+snapshot-20120725 beagleboard ttyO2

beagleboard login: matchbox: Cant find a keycode for keysym 269025056
matchbox: ignoring key shortcut XF86Calendar=!$contacts

matchbox: Cant find a keycode
for keysym 2809
matchbox: ignoring key shortcut telephone=!$dates

matchbox: Cant find a keycode for keysym 269025050
matchbox: ignoring key shortcut XF86Star
t=!matchbox-remote -desktop

[settings daemon] Forking. run with -n to prevent fork

Yocto (Built by Poky 7.0) 1.2+snapshot-20120725 beagleboard ttyO2

beagleboard login: roo
** (matchbox-desktop:608): WARNING **: Error loading icon: Icon 'computer'
not present in theme
t
** (matchbox-desktop:608): WARNING *
*: Error loading icon: Icon 'preferences-desktop' not present in theme

** (matchbox-desktop:608): WARNING **: Error loading icon: Icon
'system-file-manager
' not present in theme

root@beagleboard:~# ifconfig -a
eth0      Link encap:Ethernet  HWaddr AA:B7:56:AB:A1:08
          inet addr:192.168.0.42  Bcast:192.168.0.255  Mask:255.255.255.0
          inet6 addr: fe80::a8b7:56ff:feab:a108/64 Scope:Link
          UP BROADCAST RUNNING MULTICAST  MTU:1500  Metric:1
          RX packets:12 errors:0 dropped:0 overruns:0 frame:0
          TX packets:46 errors:0 dropped:0 overruns:0 carrier:0
          collisions:0 txqueuelen:1000
          RX bytes:2172 (2.1 KiB)  TX bytes:8385 (8.1 KiB)

lo        Link encap:Local Loopback
          inet addr:127.0.0.1  Mask:255.0.0.0
          inet6 addr: ::1/128 Scope:Host
          UP LOOPBACK RUNNING  MTU:16436  Metric:1
          RX packets:0 errors:0 dropped:0 overruns:0 frame:0
          TX packets:0 errors:0 dropped:0 overruns:0 carrier:0
          collisions:0 txqueuelen:0
          RX bytes:0 (0.0 B)  TX bytes:0 (0.0 B)

sit0      Link encap:IPv6-in-IPv4
          NOARP  MTU:1480  Metric:1
          RX packets:0 errors:0 dropped:0 overruns:0 frame:0
          TX packets:0 errors:0 dropped:0 overruns:0 carrier:0
          collisions:0 txqueuelen:0
          RX bytes:0 (0.0 B)  TX bytes:0 (0.0 B)

root@beagleboard:~# vi /etc/resolv.conf
# Generated by Connection Manager
nameserver 127.0.0.1
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~- /etc/resolv.conf 1/2 50%
- /etc/resolv.conf 2/2 100%nnanamname27.0.0.1 - /etc/resolv.conf [Modified]
2/2 100%7.0.0.1 .0.0.1 0.0.1 .0.1 0.1 .1 1  I /etc/resolv.conf [Modified]
2/2 100%68.94.156.1- /etc/resolv.conf [Modified] 2/2
100%:wq"/etc/resolv.conf" 2L, 57Croot@beagleboard:~# ping yahoo.com
PING yahoo.com (72.30.38.140): 56 data bytes
64 bytes from 72.30.38.140: seq=0 ttl=49 time=121.552 ms
64 bytes from 72.30.38.140: seq=1 ttl=49 time=116.819 ms
64 bytes from 72.30.38.140: seq=2 ttl=49 time=120.183 ms
64 bytes from 72.30.38.140: seq=3 ttl=49 time=211.887 ms
64 bytes from 72.30.38.140: seq=4 ttl=49 time=116.641 ms
64 bytes from 72.30.38.140: seq=5 ttl=49 time=118.805 ms
64 bytes from 72.30.38.140: seq=6 ttl=49 time=194.243 ms
64 bytes from 72.30.38.140: seq=7 ttl=49 time=135.561 ms
64 bytes from 72.30.38.140: seq=8 ttl=49 time=116.485 ms
64 bytes from 72.30.38.140: seq=9 ttl=49 time=116.634 ms
64 bytes from 72.30.38.140: seq=10 ttl=49 time=116.457 ms

--- yahoo.com ping statistics ---
11 packets transmitted, 11 packets received, 0% packet loss
round-trip min/avg/max = 116.457/135.024/211.887 ms
root@beagleboard:~# ifconfig -a
eth0      Link encap:Ethernet  HWaddr AA:B7:56:AB:A1:08
          inet addr:192.168.0.42  Bcast:192.168.0.255  Mask:255.255.255.0
          inet6 addr: fe80::a8b7:56ff:feab:a108/64 Scope:Link
          UP BROADCAST RUNNING MULTICAST  MTU:1500  Metric:1
          RX packets:34 errors:0 dropped:0 overruns:0 frame:0
          TX packets:66 errors:0 dropped:0 overruns:0 carrier:0
          collisions:0 txqueuelen:1000
          RX bytes:3991 (3.8 KiB)  TX bytes:10299 (10.0 KiB)

lo        Link encap:Local Loopback
          inet addr:127.0.0.1  Mask:255.0.0.0
          inet6 addr: ::1/128 Scope:Host
          UP LOOPBACK RUNNING  MTU:16436  Metric:1
          RX packets:0 errors:0 dropped:0 overruns:0 frame:0
          TX packets:0 errors:0 dropped:0 overruns:0 carrier:0
          collisions:0 txqueuelen:0
          RX bytes:0 (0.0 B)  TX bytes:0 (0.0 B)

sit0      Link encap:IPv6-in-IPv4
          NOARP  MTU:1480  Metric:1
          RX packets:0 errors:0 dropped:0 overruns:0 frame:0
          TX packets:0 errors:0 dropped:0 overruns:0 carrier:0
          collisions:0 txqueuelen:0
          RX bytes:0 (0.0 B)  TX bytes:0 (0.0 B)

root@beagleboard:~#
* - * Qodem 0.1.2 Capture Generated Wed, 25 Jul 2012 19:53:12 -0600 END * -
*
* - * Qodem 0.1.2 Capture Generated Wed, 25 Jul 2012 19:54:31 -0600 BEGIN *
- *

ifconfig -a
eth0      Link encap:Ethernet  HWaddr AA:B7:56:AB:A1:08
          inet addr:192.168.0.42  Bcast:192.168.0.255  Mask:255.255.255.0
          inet6 addr: fe80::a8b7:56ff:feab:a108/64 Scope:Link
          UP BROADCAST RUNNING MULTICAST  MTU:1500  Metric:1
          RX packets:41 errors:0 dropped:0 overruns:0 frame:0
          TX packets:69 errors:0 dropped:0 overruns:0 carrier:0
          collisions:0 txqueuelen:1000
          RX bytes:4647 (4.5 KiB)  TX bytes:10605 (10.3 KiB)

lo        Link encap:Local Loopback
          inet addr:127.0.0.1  Mask:255.0.0.0
          inet6 addr: ::1/128 Scope:Host
          UP LOOPBACK RUNNING  MTU:16436  Metric:1
          RX packets:0 errors:0 dropped:0 overruns:0 frame:0
          TX packets:0 errors:0 dropped:0 overruns:0 carrier:0
          collisions:0 txqueuelen:0
          RX bytes:0 (0.0 B)  TX bytes:0 (0.0 B)

sit0      Link encap:IPv6-in-IPv4
          NOARP  MTU:1480  Metric:1
          RX packets:0 errors:0 dropped:0 overruns:0 frame:0
          TX packets:0 errors:0 dropped:0 overruns:0 carrier:0
          collisions:0 txqueuelen:0
          RX bytes:0 (0.0 B)  TX bytes:0 (0.0 B)

root@beagleboard:~# dmesg
Booting Linux on physical CPU 0
Initializing cgroup subsys cpuset
Initializing cgroup subsys cpu
Linux version 3.4.1-yocto-standard (vidal@ws009.swbell.net) (gcc version
4.7.2 20120615 (prerelease) (GCC) ) #1 Wed Jul 25 17:29:01 MDT 2012
CPU: ARMv7 Processor [413fc082] revision 2 (ARMv7), cr=10c53c7d
CPU: PIPT / VIPT nonaliasing data cache, VIPT aliasing instruction cache
Machine: OMAP3 Beagle Board
Reserving 14680064 bytes SDRAM for VRAM
Memory policy: ECC disabled, Data cache writeback
On node 0 totalpages: 127232
free_area_init_node: node 0, pgdat c089b790, node_mem_map c08ff000
  Normal zone: 1024 pages used for memmap
  Normal zone: 0 pages reserved
  Normal zone: 126208 pages, LIFO batch:31
OMAP3630 ES1.2 (l2cache iva sgx neon isp 192mhz_clk )
Clocking rate (Crystal/Core/MPU): 26.0/332/600 MHz
pcpu-alloc: s0 r0 d32768 u32768 alloc=1*32768
pcpu-alloc: [0] 0
Built 1 zonelists in Zone order, mobility grouping on.  Total pages: 126208
Kernel command line: console=tty0 console=ttyO2,115200n8
root=/dev/mmcblk0p2 rootwait rootfstype=ext3 ro
PID hash table entries: 2048 (order: 1, 8192 bytes)
Dentry cache hash table entries: 65536 (order: 6, 262144 bytes)
Inode-cache hash table entries: 32768 (order: 5, 131072 bytes)
allocated 1048576 bytes of page_cgroup
please try 'cgroup_disable=memory' option if you don't want memory cgroups
Memory: 497MB = 497MB total
Memory: 494156k/494156k available, 30132k reserved, 0K highmem
Virtual kernel memory layout:
    vector  : 0xffff0000 - 0xffff1000   (   4 kB)
    fixmap  : 0xfff00000 - 0xfffe0000   ( 896 kB)
    vmalloc : 0xe0800000 - 0xff000000   ( 488 MB)
    lowmem  : 0xc0000000 - 0xe0000000   ( 512 MB)
    modules : 0xbf000000 - 0xc0000000   (  16 MB)
      .text : 0xc0008000 - 0xc07cb388   (7949 kB)
      .init : 0xc07cc000 - 0xc0827000   ( 364 kB)
      .data : 0xc0828000 - 0xc089e450   ( 474 kB)
       .bss : 0xc089e474 - 0xc08fed80   ( 387 kB)
SLUB: Genslabs=11, HWalign=64, Order=0-3, MinObjects=0, CPUs=1, Nodes=1
NR_IRQS:474
IRQ: Found an INTC at 0xfa200000 (revision 4.0) with 96 interrupts
Total of 96 interrupts on 1 active controller
OMAP clockevent source: GPTIMER12 at 32768 Hz
sched_clock: 32 bits at 32kHz, resolution 30517ns, wraps every 131071999ms
Console: colour dummy device 80x30
console [tty0] enabled
Calibrating delay loop... 503.12 BogoMIPS (lpj=1966080)
pid_max: default: 32768 minimum: 301
Security Framework initialized
Mount-cache hash table entries: 512
Initializing cgroup subsys debug
Initializing cgroup subsys cpuacct
Initializing cgroup subsys memory
Initializing cgroup subsys devices
Initializing cgroup subsys freezer
Initializing cgroup subsys net_cls
Initializing cgroup subsys blkio
CPU: Testing write buffer coherency: ok
ftrace: allocating 21594 entries in 64 pages
Setting up static identity map for 0x8059faf0 - 0x8059fb48
devtmpfs: initialized
dummy:
NET: Registered protocol family 16
GPMC revision 5.0
gpiochip_add: registered GPIOs 0 to 31 on device: gpio
OMAP GPIO hardware version 2.5
gpiochip_add: registered GPIOs 32 to 63 on device: gpio
gpiochip_add: registered GPIOs 64 to 95 on device: gpio
gpiochip_add: registered GPIOs 96 to 127 on device: gpio
gpiochip_add: registered GPIOs 128 to 159 on device: gpio
gpiochip_add: registered GPIOs 160 to 191 on device: gpio
omap_mux_init: Add partition: #1: core, flags: 0
OMAP3 Beagle Rev: xM C
Reprogramming SDRC clock to 332000000 Hz
 usbhs_omap: alias fck already exists
Found NAND on CS0
Registering NAND on CS0
Unable to get DVI reset GPIO
 omap-mcbsp.2: alias fck already exists
 omap-mcbsp.3: alias fck already exists
OMAP DMA hardware revision 5.0
bio: create slab <bio-0> at 0
SCSI subsystem initialized
omap2_mcspi omap2_mcspi.1: master is unqueued, this is deprecated
omap2_mcspi omap2_mcspi.2: master is unqueued, this is deprecated
omap2_mcspi omap2_mcspi.3: master is unqueued, this is deprecated
omap2_mcspi omap2_mcspi.4: master is unqueued, this is deprecated
usbcore: registered new interface driver usbfs
usbcore: registered new interface driver hub
usbcore: registered new device driver usb
omap_i2c omap_i2c.1: bus 1 rev1.4.0 at 2600 kHz
twl 1-0048: PIH (irq 7) chaining IRQs 320..328
twl 1-0048: power (irq 325) chaining IRQs 328..335
twl4030_gpio twl4030_gpio: gpio (irq 320) chaining IRQs 336..353
gpiochip_add: registered GPIOs 192 to 211 on device: twl4030
VUSB1V5: 1500 mV normal standby
VUSB1V8: 1800 mV normal standby
VUSB3V1: 3100 mV normal standby
twl4030_usb twl4030_usb: Initialized TWL4030 USB module
VMMC1: 1850 <--> 3150 mV at 3000 mV normal standby
VDAC: 1800 mV normal standby
VDVI: 1800 mV normal standby
VSIM: 1800 <--> 3000 mV at 1800 mV normal standby
omap_i2c omap_i2c.3: bus 3 rev1.4.0 at 100 kHz
Advanced Linux Sound Architecture Driver Version 1.0.25.
cfg80211: Calling CRDA to update world regulatory domain
Switching to clocksource 32k_counter
usbhs_omap usbhs_omap: xclk60mhsp1_ck set parentfailed error:-22
usbhs_omap usbhs_omap: xclk60mhsp2_ck set parentfailed error:-22
NET: Registered protocol family 2
IP route cache hash table entries: 4096 (order: 2, 16384 bytes)
TCP established hash table entries: 16384 (order: 5, 131072 bytes)
TCP bind hash table entries: 16384 (order: 4, 65536 bytes)
TCP: Hash tables configured (established 16384 bind 16384)
TCP: reno registered
UDP hash table entries: 256 (order: 0, 4096 bytes)
UDP-Lite hash table entries: 256 (order: 0, 4096 bytes)
NET: Registered protocol family 1
RPC: Registered named UNIX socket transport module.
RPC: Registered udp transport module.
RPC: Registered tcp transport module.
RPC: Registered tcp NFSv4.1 backchannel transport module.
VFS: Disk quotas dquot_6.5.2
Dquot-cache hash table entries: 1024 (order 0, 4096 bytes)
Registering unionfs 2.5.10 (for 3.1.0-rc4)
NFS: Registering the id_resolver key type
Btrfs loaded
msgmni has been set to 965
Block layer SCSI generic (bsg) driver version 0.4 loaded (major 253)
io scheduler noop registered
io scheduler deadline registered
io scheduler cfq registered (default)
OMAP DSS rev 2.0
Serial: 8250/16550 driver, 4 ports, IRQ sharing enabled
omap_uart.0: ttyO0 at MMIO 0x4806a000 (irq = 72) is a OMAP UART0
omap_uart.1: ttyO1 at MMIO 0x4806c000 (irq = 73) is a OMAP UART1
omap_uart.2: ttyO2 at MMIO 0x49020000 (irq = 74) is a OMAP UART2
console [ttyO2] enabled
omap_uart.3: ttyO3 at MMIO 0x49042000 (irq = 80) is a OMAP UART3
brd: module loaded
No NAND device found
No NAND device found
usbcore: registered new interface driver kaweth
pegasus: v0.6.14 (2006/09/27), Pegasus/Pegasus II USB Ethernet driver
usbcore: registered new interface driver pegasus
usbcore: registered new interface driver asix
usbcore: registered new interface driver cdc_ether
usbcore: registered new interface driver dm9601
usbcore: registered new interface driver smsc75xx
usbcore: registered new interface driver smsc95xx
usbcore: registered new interface driver net1080
usbcore: registered new interface driver cdc_subset
usbcore: registered new interface driver zaurus
usbcore: registered new interface driver MOSCHIP usb-ethernet driver
usbcore: registered new interface driver int51x1
usbcore: registered new interface driver cdc_ncm
ehci_hcd: USB 2.0 'Enhanced' Host Controller (EHCI) Driver
ehci-omap.0 supply hsusb0 not found, using dummy regulator
ehci-omap.0 supply hsusb1 not found, using dummy regulator
ehci-omap ehci-omap.0: OMAP-EHCI Host Controller
ehci-omap ehci-omap.0: new USB bus registered, assigned bus number 1
ehci-omap ehci-omap.0: irq 77, io mem 0x48064800
ehci-omap ehci-omap.0: USB 2.0 started, EHCI 1.00
hub 1-0:1.0: USB hub found
hub 1-0:1.0: 3 ports detected
Initializing USB Mass Storage driver...
usbcore: registered new interface driver usb-storage
USB Mass Storage support registered.
musb-hdrc: version 6.0, ?dma?, otg (peripheral+host)
musb-hdrc: ConfigData=0xde (UTMI-8, dyn FIFOs, bulk combine, bulk split,
HB-ISO Rx, HB-ISO Tx, SoftConn)
musb-hdrc: MHDRC RTL version 1.800
musb-hdrc: setup fifo_mode 4
musb-hdrc: 28/31 max ep, 16384/16384 memory
musb-hdrc musb-hdrc: USB OTG mode controller at fa0ab000 using DMA, IRQ 92
mousedev: PS/2 mouse device common for all mice
twl_rtc twl_rtc: Enabling TWL-RTC
twl_rtc twl_rtc: rtc core: registered twl_rtc as rtc0
omap_wdt: OMAP Watchdog Timer Rev 0x31: initial timeout 60 sec
cpuidle: using governor ladder
cpuidle: using governor menu
usbcore: registered new interface driver usbhid
usbhid: USB HID core driver
OMAP3 Beagle/Devkit8000 SoC init
soc-audio soc-audio: ASoC machine omap3beagle should use
snd_soc_register_card()
usb 1-2: new high-speed USB device number 2 using ehci-omap
twl4030-codec twl4030-codec: ASoC: Failed to create Capture debugfs file
asoc: twl4030-hifi <-> omap-mcbsp.2 mapping ok
TCP: cubic registered
NET: Registered protocol family 10
IPv6 over IPv4 tunneling driver
NET: Registered protocol family 17
Registering the dns_resolver key type
VFP support v0.3: implementor 41 architecture 3 part 30 variant c rev 3
ThumbEE CPU extension supported.
sr_init: No PMIC hook to init smartreflex
smartreflex smartreflex.0: omap_sr_probe: SmartReflex driver initialized
smartreflex smartreflex.1: omap_sr_probe: SmartReflex driver initialized
SmartReflex Class3 initialized
clock: disabling unused clocks to save power
omapfb omapfb: no driver for display: dvi
Console: switching to colour frame buffer device 90x35
hub 1-2:1.0: USB hub found
hub 1-2:1.0: 5 ports detected
VDVI: incomplete constraints, leaving on
console [netcon0] enabled
netconsole: network logging started
twl_rtc twl_rtc: setting system clock to 2012-07-26 01:39:05 UTC
(1343266745)
ALSA device list:
  #0: omap3beagle
Waiting for root device /dev/mmcblk0p2...
usb 1-2.1: new high-speed USB device number 3 using ehci-omap
smsc95xx v1.0.4
smsc95xx 1-2.1:1.0: eth0: register 'smsc95xx' at usb-ehci-omap.0-2.1,
smsc95xx USB 2.0 Ethernet, aa:b7:56:ab:a1:08
usb 1-2.3: new low-speed USB device number 4 using ehci-omap
input: CHESEN USB Keyboard as
/devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/1-2.3:1.0/input/input0
generic-usb 0003:0A81:0101.0001: input: USB HID v1.10 Keyboard [CHESEN USB
Keyboard] on usb-ehci-omap.0-2.3/input0
input: CHESEN USB Keyboard as
/devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/1-2.3:1.1/input/input1
generic-usb 0003:0A81:0101.0002: input: USB HID v1.10 Device [CHESEN USB
Keyboard] on usb-ehci-omap.0-2.3/input1
mmc0: host does not support reading read-only switch. assuming write-enable.
mmc0: new high speed SDHC card at address b368
mmcblk0: mmc0:b368 SDU16 14.9 GiB
 mmcblk0: p1 p2
usb 1-2.5: new low-speed USB device number 5 using ehci-omap
kjournald starting.  Commit interval 5 seconds
EXT3-fs (mmcblk0p2): using internal journal
EXT3-fs (mmcblk0p2): mounted filesystem with ordered data mode
VFS: Mounted root (ext3 filesystem) on device 179:2.
devtmpfs: mounted
Freeing init memory: 364K
input: PixArt USB Optical Mouse as
/devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.5/1-2.5:1.0/input/input2
generic-usb 0003:093A:2510.0003: input: USB HID v1.11 Mouse [PixArt USB
Optical Mouse] on usb-ehci-omap.0-2.5/input0
udev[64]: starting version 164
ADDRCONF(NETDEV_UP): eth0: link is not ready
smsc95xx 1-2.1:1.0: eth0: link up, 100Mbps, full-duplex, lpa 0x45E1
ADDRCONF(NETDEV_CHANGE): eth0: link becomes ready
ip_tables: (C) 2000-2006 Netfilter Core Team
nf_conntrack version 0.5.0 (7726 buckets, 30904 max)
root@beagleboard:~# cd /var/log
root@beagleboard:/var/log# ls
Xorg.0.log  messages    wtmp
root@beagleboard:/var/log# les   cat Xorg.0.log
[3236961.265]
X.Org X Server 1.11.2
Release Date: 2011-11-04
[3236961.275] X Protocol Version 11, Revision 0
[3236961.276] Build Operating System: Linux 3.3.4-5.fc17.x86_64 x86_64
[3236961.278] Current Operating System: Linux beagleboard
3.4.1-yocto-standard #1 Wed Jul 25 17:29:01 MDT 2012 armv7l
[3236961.279] Kernel command line: console=tty0 console=ttyO2,115200n8
root=/dev/mmcblk0p2 rootwait rootfstype=ext3 ro
[3236961.280] Build Date: 25 July 2012  06:09:49PM
[3236961.280]
[3236961.280] Current version of pixman: 0.26.2
[3236961.280] Before reporting problems, check http://wiki.x.org
to make sure that you have the latest version.
[3236961.281] Markers: (--) probed, (**) from config file, (==) default
setting,
(++) from command line, (!!) notice, (II) informational,
(WW) warning, (EE) error, (NI) not implemented, (??) unknown.
[3236961.283] (==) Log file: "/var/log/Xorg.0.log", Time: Thu Jul 26
01:39:17 2012
[3236961.287] (==) Using config file: "/etc/X11/xorg.conf"
[3236961.288] (==) Using system config directory
"/usr/share/X11/xorg.conf.d"
[3236961.299] (==) ServerLayout "Builtin Default Layout"
[3236961.299] (**) |-->Screen "Builtin Default fbdev Screen 0" (0)
[3236961.299] (**) |   |-->Monitor "Builtin Default Monitor"
[3236961.304] (**) |   |-->Device "Builtin Default fbdev Device 0"
[3236961.304] (**) Option "DontZap" "0"
[3236961.305] (**) Option "AutoAddDevices" "False"
[3236961.305] (**) Not automatically adding devices
[3236961.305] (==) Automatically enabling devices
[3236961.310] (WW) The directory "/usr/share/fonts/X11/misc/" does not
exist.
[3236961.311] Entry deleted from font path.
[3236961.311] (WW) The directory "/usr/share/fonts/X11/TTF/" does not exist.
[3236961.311] Entry deleted from font path.
[3236961.311] (WW) The directory "/usr/share/fonts/X11/OTF/" does not exist.
[3236961.311] Entry deleted from font path.
[3236961.311] (WW) The directory "/usr/share/fonts/X11/Type1/" does not
exist.
[3236961.311] Entry deleted from font path.
[3236961.311] (WW) The directory "/usr/share/fonts/X11/100dpi/" does not
exist.
[3236961.311] Entry deleted from font path.
[3236961.311] (WW) The directory "/usr/share/fonts/X11/75dpi/" does not
exist.
[3236961.311] Entry deleted from font path.
[3236961.311] (==) FontPath set to:

[3236961.311] (==) ModulePath set to "/usr/lib/xorg/modules"
[3236961.311] (==) |-->Input Device "<default pointer>"
[3236961.312] (==) |-->Input Device "<default keyboard>"
[3236961.312] (==) The core pointer device wasn't specified explicitly in
the layout.
Using the default mouse configuration.
[3236961.312] (==) The core keyboard device wasn't specified explicitly in
the layout.
Using the default keyboard configuration.
[3236961.312] (II) Loader magic: 0x17b930
[3236961.312] (II) Module ABI versions:
[3236961.312] X.Org ANSI C Emulation: 0.4
[3236961.312] X.Org Video Driver: 11.0
[3236961.312] X.Org XInput driver : 13.0
[3236961.312] X.Org Server Extension : 6.0
[3236961.312] (II) Open APM successful
[3236961.315] (II) "extmod" will be loaded. This was enabled by default and
also specified in the config file.
[3236961.315] (II) "dbe" will be loaded. This was enabled by default and
also specified in the config file.
[3236961.315] (II) "dri2" will be loaded by default.
[3236961.315] (II) LoadModule: "extmod"
[3236961.332] (WW) Warning, couldn't open module extmod
[3236961.332] (II) UnloadModule: "extmod"
[3236961.332] (II) Unloading extmod
[3236961.332] (EE) Failed to load module "extmod" (module does not exist, 0)
[3236961.334] (II) LoadModule: "dbe"
[3236961.335] (WW) Warning, couldn't open module dbe
[3236961.335] (II) UnloadModule: "dbe"
[3236961.335] (II) Unloading dbe
[3236961.335] (EE) Failed to load module "dbe" (module does not exist, 0)
[3236961.346] (II) LoadModule: "glx"
[3236961.347] (WW) Warning, couldn't open module glx
[3236961.347] (II) UnloadModule: "glx"
[3236961.347] (II) Unloading glx
[3236961.347] (EE) Failed to load module "glx" (module does not exist, 0)
[3236961.351] (II) LoadModule: "record"
[3236961.351] (WW) Warning, couldn't open module record
[3236961.351] (II) UnloadModule: "record"
[3236961.351] (II) Unloading record
[3236961.352] (EE) Failed to load module "record" (module does not exist, 0)
[3236961.365] (II) LoadModule: "dri"
[3236961.366] (WW) Warning, couldn't open module dri
[3236961.366] (II) UnloadModule: "dri"
[3236961.366] (II) Unloading dri
[3236961.366] (EE) Failed to load module "dri" (module does not exist, 0)
[3236961.374] (II) LoadModule: "dri2"
[3236961.375] (WW) Warning, couldn't open module dri2
[3236961.375] (II) UnloadModule: "dri2"
[3236961.375] (II) Unloading dri2
[3236961.375] (EE) Failed to load module "dri2" (module does not exist, 0)
[3236961.377] (II) LoadModule: "omapfb"
[3236961.378] (II) Loading /usr/lib/xorg/modules/drivers/omapfb_drv.so
[3236961.387] (II) Module omapfb: vendor="X.Org Foundation"
[3236961.387] compiled for 1.11.2, module version = 0.1.1
[3236961.387] ABI class: X.Org Video Driver, version 11.0
[3236961.387] (II) LoadModule: "mouse"
[3236961.387] (II) Loading /usr/lib/xorg/modules/input/mouse_drv.so
[3236961.391] (II) Module mouse: vendor="X.Org Foundation"
[3236961.391] compiled for 1.11.2, module version = 1.7.2
[3236961.391] Module class: X.Org XInput Driver
[3236961.391] ABI class: X.Org XInput driver, version 13.0
[3236961.391] (II) LoadModule: "kbd"
[3236961.392] (II) Loading /usr/lib/xorg/modules/input/kbd_drv.so
[3236961.396] (II) Module kbd: vendor="X.Org Foundation"
[3236961.396] compiled for 1.11.2, module version = 1.6.1
[3236961.396] Module class: X.Org XInput Driver
[3236961.397] ABI class: X.Org XInput driver, version 13.0
[3236961.397] (II) omapfb: Driver for OMAP framebuffer (omapfb) and
external LCD controllers:
omap1/2/3, S1D13745, HWA742
[3236961.397] (--) using VT number 1

[3236961.409] (WW) Falling back to old probe method for OMAPFB
[3236961.409] (II) Loading /usr/lib/xorg/modules/drivers/omapfb_drv.so
[3236961.409] (WW) VGA arbiter: cannot open kernel arbiter, no multi-card
support
[3236961.410] (WW) Error opening /sys/devices/platform/omapfb/ctrl/name: No
such file or directory
[3236961.410] (WW) Can't autodetect LCD controller, assuming internal
[3236961.410] (II) LCD controller: internal
[3236961.410] (II) omapfb(0): Base plane capabilities:
[3236961.410] (II) omapfb(0): Base plane supports the following image
formats:
[3236961.410] (II) omapfb(0): VideoRAM: 1616KiB (SDRAM)
[3236961.410] (II) omapfb(0): Creating default Display subsection in Screen
section
"Builtin Default fbdev Screen 0" for depth/fbbpp 24/32
[3236961.410] (--) omapfb(0): Depth 24, (==) framebuffer bpp 32
[3236961.410] (==) omapfb(0): RGB weight 888
[3236961.410] (==) omapfb(0): Default visual is TrueColor
[3236961.410] (II) omapfb(0): Rotate test version 0.02
[3236961.415] (II) omapfb(0): Output LCD using monitor section Builtin
Default Monitor
[3236961.415] (II) omapfb(0): Printing probed modes for output LCD
[3236961.416] (II) omapfb(0): Modeline "720x574"x25.0   13.50  720 732 796
864  574 579 584 625 (15.6 kHz)
[3236961.416] (II) omapfb(0): Output LCD connected
[3236961.416] (II) omapfb(0): Using exact sizes for initial modes
[3236961.416] (II) omapfb(0): Output LCD using initial mode 720x574
[3236961.416] (II) omapfb(0): Using default gamma of (1.0, 1.0, 1.0) unless
otherwise stated.
[3236961.416] (II) omapfb(0): XRandR extension initialized
[3236961.416] (--) omapfb(0): Virtual size is 720x574 (pitch 720)
[3236961.416] (**) omapfb(0):  Mode "720x574": 13.5 MHz, 15.6 kHz, 25.0 Hz
[3236961.416] (II) omapfb(0): Modeline "720x574"x25.0   13.50  720 732 796
864  574 579 584 625 (15.6 kHz)
[3236961.416] (==) omapfb(0): DPI set to (96, 96)
[3236961.416] (--) Depth 24 pixmap format is 32 bpp
[3236961.422] (II) Loading sub module "fb"
[3236961.422] (II) LoadModule: "fb"
[3236961.423] (II) Loading /usr/lib/xorg/modules/libfb.so
[3236961.438] (II) Module fb: vendor="X.Org Foundation"
[3236961.438] compiled for 1.11.2, module version = 1.0.0
[3236961.438] ABI class: X.Org ANSI C Emulation, version 0.4
[3236961.445] (==) omapfb(0): DPMS enabled
[3236961.445] (EE) omapfb(0): Failed to open /dev/fb2: No such file or
directory
[3236961.445] (EE) omapfb(0): XVScreenInit failed
[3236961.446] (II) omapfb(0): RandR 1.2 enabled, ignore the following RandR
disabled message.
[3236961.446] (--) RandR disabled
[3236961.446] (II) Initializing built-in extension Generic Event Extension
[3236961.446] (II) Initializing built-in extension SHAPE
[3236961.446] (II) Initializing built-in extension MIT-SHM
[3236961.446] (II) Initializing built-in extension XInputExtension
[3236961.446] (II) Initializing built-in extension XTEST
[3236961.446] (II) Initializing built-in extension BIG-REQUESTS
[3236961.446] (II) Initializing built-in extension SYNC
[3236961.446] (II) Initializing built-in extension XKEYBOARD
[3236961.446] (II) Initializing built-in extension XC-MISC
[3236961.446] (II) Initializing built-in extension XFIXES
[3236961.446] (II) Initializing built-in extension RENDER
[3236961.446] (II) Initializing built-in extension RANDR
[3236961.446] (II) Initializing built-in extension COMPOSITE
[3236961.446] (II) Initializing built-in extension DAMAGE
[3236961.563] (II) omapfb(0): Setting screen physical size to 190 x 151
[3236962.099] (II) Using input driver 'mouse' for '<default pointer>'
[3236962.099] (II) Loading /usr/lib/xorg/modules/input/mouse_drv.so
[3236962.099] (**) Option "CorePointer"
[3236962.099] (**) <default pointer>: always reports core events
[3236962.099] (WW) <default pointer>: No Device specified, looking for
one...
[3236962.100] (II) <default pointer>: Setting Device option to
"/dev/input/mice"
[3236962.100] (--) <default pointer>: Device: "/dev/input/mice"
[3236962.100] (==) <default pointer>: Protocol: "Auto"
[3236962.100] (**) <default pointer>: always reports core events
[3236962.100] (**) Option "Device" "/dev/input/mice"
[3236962.100] (==) <default pointer>: Emulate3Buttons, Emulate3Timeout: 50
[3236962.100] (**) <default pointer>: ZAxisMapping: buttons 4 and 5
[3236962.100] (**) <default pointer>: Buttons: 9
[3236962.101] (II) XINPUT: Adding extended input device "<default pointer>"
(type: MOUSE, id 6)
[3236962.101] (**) <default pointer>: (accel) keeping acceleration scheme 1
[3236962.101] (**) <default pointer>: (accel) acceleration profile 0
[3236962.101] (**) <default pointer>: (accel) acceleration factor: 2.000
[3236962.101] (**) <default pointer>: (accel) acceleration threshold: 4
[3236962.101] (II) <default pointer>: Setting mouse protocol to
"ExplorerPS/2"
[3236962.396] (II) <default pointer>: ps2EnableDataReporting: succeeded
[3236962.396] (II) Using input driver 'kbd' for '<default keyboard>'
[3236962.396] (II) Loading /usr/lib/xorg/modules/input/kbd_drv.so
[3236962.397] (**) Option "CoreKeyboard"
[3236962.397] (**) <default keyboard>: always reports core events
[3236962.397] (**) <default keyboard>: always reports core events
[3236962.397] (**) Option "Protocol" "standard"
[3236962.397] (**) Option "XkbRules" "base"
[3236962.397] (**) Option "XkbModel" "pc105"
[3236962.397] (**) Option "XkbLayout" "us"
[3236962.397] (II) XINPUT: Adding extended input device "<default
keyboard>" (type: KEYBOARD, id 7)
[3236962.489] (II) config/udev: Adding input device CHESEN USB Keyboard
(/dev/input/event0)
[3236962.489] (II) AutoAddDevices is off - not adding device.
[3236962.491] (II) config/udev: Adding input device CHESEN USB Keyboard
(/dev/input/event1)
[3236962.491] (II) AutoAddDevices is off - not adding device.
[3236962.493] (II) config/udev: Adding input device PixArt USB Optical
Mouse (/dev/input/event2)
[3236962.493] (II) AutoAddDevices is off - not adding device.
[3236962.494] (II) config/udev: Adding input device PixArt USB Optical
Mouse (/dev/input/mouse0)
[3236962.494] (II) AutoAddDevices is off - not adding device.
root@beagleboard:/var/log# uname -a
Linux beagleboard 3.4.1-yocto-standard #1 Wed Jul 25 17:29:01 MDT 2012
armv7l GNU/Linux
root@beagleboard:/var/log#
* - * Qodem 0.1.2 Capture Generated Wed, 25 Jul 2012 19:55:35 -0600 END * -
*
Thanks Any help will be apprecated.

--bcaec51019032eb7ef04c5b2164a
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hello,<br>The image does not boot into X.<br>I was able to config eth0<br><=
br>git clone -b 1.3_M2 git://<a href=3D"http://git.yoctoproject.org/poky.gi=
t">git.yoctoproject.org/poky.git</a><br>modified meta-yocto/conf/machine/be=
agleboard.conf &amp; meta-yocto/recipes-kernel/linux/linux-yocto_3.4.bbappe=
nd as below.<br>
------------------- meta-yocto/conf/machine/beagleboard.conf --------------=
-----<br>index aa8fa07..ef79efb 100644<br>@@ -29,7 +29,7 @@ EXTRA_IMAGECMD_=
jffs2 =3D &quot;-lnp &quot;<br>=A0SERIAL_CONSOLE =3D &quot;115200 ttyO2&quo=
t;<br>
=A0<br>=A0PREFERRED_PROVIDER_virtual/kernel ?=3D &quot;linux-yocto&quot;<br=
>-PREFERRED_VERSION_linux-yocto ?=3D &quot;3.0%&quot;<br>+PREFERRED_VERSION=
_linux-yocto ?=3D &quot;3.4%&quot;<br>=A0<br>=A0KERNEL_IMAGETYPE =3D &quot;=
uImage&quot;<br>
----------- meta-yocto/recipes-kernel/linux/linux-yocto_3.4.bbappend ------=
-----<br>index 2ff467b..0b4c37d 100644<br>@@ -10,5 +10,5 @@ SRCREV_machine_=
beagleboard ?=3D &quot;a8291fa6f723b0182d2b7033b5d59f412ba7cf72&quot;<br>
=A0<br>=A0COMPATIBLE_MACHINE_mpc8315e-rdb =3D &quot;mpc8315e-rdb&quot;<br>=
=A0# COMPATIBLE_MACHINE_routerstationpro =3D &quot;routerstationpro&quot;<b=
r>-# COMPATIBLE_MACHINE_beagleboard =3D &quot;beagleboard&quot;<br>+COMPATI=
BLE_MACHINE_beagleboard =3D &quot;beagleboard&quot;<br>
=A0COMPATIBLE_MACHINE_atom-pc =3D &quot;atom-pc&quot;<br>MACHINE=3Dbeaglebo=
ard bitbake=A0 -v -D -D -D core-image-sato<br>mkfs.vfat -F 16 -n=A0 &quot;b=
oot&quot; /dev/sdb1<br>mke2fs -j -L &quot;rootfs&quot; /dev/sdb2<br>cp MLO-=
beagleboard-1.5.0+git1+9f94c6577e3a018b6b75cbe39f32bb331871f915-r0 /run/med=
ia/vidal/boot/MLO<br>
[root@ws009 images]# cp u-boot-beagleboard-v2011.06+git6+b1af6f532e0d348b15=
3d5c148369229d24af361a-r1.bin /run/media/vidal/boot/u-boot.bin<br>[root@ws0=
09 images]# cp uImage-3.4.4+git1+a8cf77018b0faa0d29f1483ff4e5a2034dc8edd5_1=
+a8291fa6f723b0182d2b7033b5d59f412ba7cf72-r4.0-beagleboard-20120725222158.b=
in /run/media/vidal/boot/uImage<br>
[root@ws009 images]# pwd<br>/home/vidal/poky/build/tmp/deploy/images<br>[ro=
ot@ws009 images]# cd /run/media/vidal/rootfs/<br>[root@ws009 rootfs]# tar j=
xf /home/vidal/poky/build/tmp/deploy/images/core-image-sato-beagleboard-201=
20725222158.rootfs.tar.bz2 <br>
<br>setenv bootcmd &#39;mmc rescan 0; fatload mmc 0:1 0x80300000 uImage; bo=
otm <br>0x80300000&#39;<br>setenv bootargs &#39;console=3Dtty0 console=3Dtt=
yO2,115200n8 <br>root=3D/dev/mmcblk0p2 rootwait rootfstype=3Dext3 ro&#39;<b=
r>boot<br>
* - * Qodem 0.1.2 Capture Generated Wed, 25 Jul 2012 18:55:15 -0600 BEGIN *=
 - *<br><br><br><br>Texas Instruments X-Loader 1.5.0 (Jul 25 2012 - 18:31:5=
6)<br>Beagle xM<br>Reading boot sector<br>Loading u-boot.bin from mmc<br>
<br><br>U-Boot 2011.06 (Jul 25 2012 - 18:32:05)<br><br>OMAP3630/3730-GP ES2=
.1, CPU-OPP2, L3-165MHz, Max CPU Clock 1 Ghz<br>OMAP3 Beagle board + LPDDR/=
NAND<br>I2C:=A0=A0 ready<br>DRAM:=A0 512 MiB<br>NAND:=A0 0 MiB<br>MMC:=A0=
=A0 OMAP SD/MMC: 0<br>
*** Warning - readenv() failed, using default environment<br><br>In:=A0=A0=
=A0 serial<br>Out:=A0=A0 serial<br>Err:=A0=A0 serial<br>Beagle unknown 0x02=
<br>No EEPROM on expansion board<br>Die ID #158000029ff800000160a7450b02602=
d<br>Hit any key to stop autoboot: 10=A0 9=A0 8=A0 0 <br>
OMAP3 <a href=3D"http://beagleboard.org">beagleboard.org</a> # setenv bootc=
md &#39;mmc rescan 0; fatload mmc 0:1 0x80300000<br>=A0uImage; bootm 0x8030=
0000&#39;<br>OMAP3 <a href=3D"http://beagleboard.org">beagleboard.org</a> #=
 setenv bootargs &#39;console=3Dtty0 console=3DttyO2,115200n8 roo<br>
t=3D/dev/mmcblk0p2 rootwait rootfstype=3Dext3 ro&#39;<br>OMAP3 <a href=3D"h=
ttp://beagleboard.org">beagleboard.org</a> # boot<br>reading uImage<br><br>=
4127776 bytes read<br>## Booting kernel from Legacy Image at 80300000 ...<b=
r>
=A0=A0 Image Name:=A0=A0 Linux-3.4.1-yocto-standard<br>=A0=A0 Image Type:=
=A0=A0 ARM Linux Kernel Image (uncompressed)<br>=A0=A0 Data Size:=A0=A0=A0 =
4127712 Bytes =3D 3.9 MiB<br>=A0=A0 Load Address: 80008000<br>=A0=A0 Entry =
Point:=A0 80008000<br>=A0=A0 Verifying Checksum ... OK<br>
=A0=A0 Loading Kernel Image ... OK<br>OK<br><br>Starting kernel ...<br><br>=
Uncompressing Linux... done, booting the kernel.<br>Booting Linux on physic=
al CPU 0<br>Initializing cgroup subsys cpuset<br>Initializing cgroup subsys=
 cpu<br>
Linux version 3.4.1-yocto-standard (<a href=3D"mailto:vidal@ws009.swbell.ne=
t">vidal@ws009.swbell.net</a>) (gcc version 4.7.2 2<br>0120615 (prerelease)=
 (GCC) ) #1 Wed Jul 25 17:29:01 MDT 2012<br>CPU: ARMv7 Processor [413fc082]=
 revision 2 (ARMv7), cr=3D10c53c7d<br>
CPU: PIPT / VIPT nonaliasing data cache, VIPT aliasing instruction cache<br=
>Machine: OMAP3 Beagle Board<br>Reserving 14680064 bytes SDRAM for VRAM<br>=
Memory policy: ECC disabled, Data cache writeback<br>OMAP3630 ES1.2 (l2cach=
e iva sgx neon isp 192mhz_clk )<br>
Clocking rate (Crystal/Core/MPU): 26.0/332/600 MHz<br>Built 1 zonelists in =
Zone order, mobility grouping on.=A0 Total pages: 126208<br>Kernel command =
line: console=3Dtty0 console=3DttyO2,115200n8 root=3D/dev/mmcblk0p2 roo<br>=
twait rootfstype=3Dext3 ro<br>
PID hash table entries: 2048 (order: 1, 8192 bytes)<br>Dentry cache hash ta=
ble entries: 65536 (order: 6, 262144 bytes)<br>Inode-cache hash table entri=
es: 32768 (order: 5, 131072 bytes)<br>allocated 1048576 bytes of page_cgrou=
p<br>
please try &#39;cgroup_disable=3Dmemory&#39; option if you don&#39;t want m=
emory cgroups<br>Memory: 497MB =3D 497MB total<br>Memory: 494156k/494156k a=
vailable, 30132k reserved, 0K highmem<br>Virtual kernel memory layout:<br>=
=A0=A0=A0 vector=A0 : 0xffff0000 - 0xffff1000=A0=A0 (=A0=A0 4 kB)<br>
=A0=A0=A0 fixmap=A0 : 0xfff00000 - 0xfffe0000=A0=A0 ( 896 kB)<br>=A0=A0=A0 =
vmalloc : 0xe0800000 - 0xff000000=A0=A0 ( 488 MB)<br>=A0=A0=A0 lowmem=A0 : =
0xc0000000 - 0xe0000000=A0=A0 ( 512 MB)<br>=A0=A0=A0 modules : 0xbf000000 -=
 0xc0000000=A0=A0 (=A0 16 MB)<br>=A0=A0=A0=A0=A0 .text : 0xc0008000 - 0xc07=
cb388=A0=A0 (7949 kB)<br>
=A0=A0=A0=A0=A0 .init : 0xc07cc000 - 0xc0827000=A0=A0 ( 364 kB)<br>=A0=A0=
=A0=A0=A0 .data : 0xc0828000 - 0xc089e450=A0=A0 ( 474 kB)<br>=A0=A0=A0=A0=
=A0=A0 .bss : 0xc089e474 - 0xc08fed80=A0=A0 ( 387 kB)<br>SLUB: Genslabs=3D1=
1, HWalign=3D64, Order=3D0-3, MinObjects=3D0, CPUs=3D1, Nodes=3D1<br>
NR_IRQS:474<br>IRQ: Found an INTC at 0xfa200000 (revision 4.0) with 96 inte=
rrupts<br>Total of 96 interrupts on 1 active controller<br>OMAP clockevent =
source: GPTIMER12 at 32768 Hz<br>sched_clock: 32 bits at 32kHz, resolution =
30517ns, wraps every 131071999ms<br>
Console: colour dummy device 80x30<br>console [tty0] enabled<br>Calibrating=
 delay loop... 503.12 BogoMIPS (lpj=3D1966080)<br>pid_max: default: 32768 m=
inimum: 301<br>Security Framework initialized<br>Mount-cache hash table ent=
ries: 512<br>
Initializing cgroup subsys debug<br>Initializing cgroup subsys cpuacct<br>I=
nitializing cgroup subsys memory<br>Initializing cgroup subsys devices<br>I=
nitializing cgroup subsys freezer<br>Initializing cgroup subsys net_cls<br>
Initializing cgroup subsys blkio<br>CPU: Testing write buffer coherency: ok=
<br>ftrace: allocating 21594 entries in 64 pages<br>Setting up static ident=
ity map for 0x8059faf0 - 0x8059fb48<br>devtmpfs: initialized<br>dummy: <br>
NET: Registered protocol family 16<br>GPMC revision 5.0<br>gpiochip_add: re=
gistered GPIOs 0 to 31 on device: gpio<br>OMAP GPIO hardware version 2.5<br=
>gpiochip_add: registered GPIOs 32 to 63 on device: gpio<br>gpiochip_add: r=
egistered GPIOs 64 to 95 on device: gpio<br>
gpiochip_add: registered GPIOs 96 to 127 on device: gpio<br>gpiochip_add: r=
egistered GPIOs 128 to 159 on device: gpio<br>gpiochip_add: registered GPIO=
s 160 to 191 on device: gpio<br>omap_mux_init: Add partition: #1: core, fla=
gs: 0<br>
OMAP3 Beagle Rev: xM C<br>Reprogramming SDRC clock to 332000000 Hz<br>=A0us=
bhs_omap: alias fck already exists<br>Found NAND on CS0<br>Registering NAND=
 on CS0<br>Unable to get DVI reset GPIO<br>=A0omap-mcbsp.2: alias fck alrea=
dy exists<br>
=A0omap-mcbsp.3: alias fck already exists<br>OMAP DMA hardware revision 5.0=
<br>bio: create slab &lt;bio-0&gt; at 0<br>SCSI subsystem initialized<br>om=
ap2_mcspi omap2_mcspi.1: master is unqueued, this is deprecated<br>omap2_mc=
spi omap2_mcspi.2: master is unqueued, this is deprecated<br>
omap2_mcspi omap2_mcspi.3: master is unqueued, this is deprecated<br>omap2_=
mcspi omap2_mcspi.4: master is unqueued, this is deprecated<br>usbcore: reg=
istered new interface driver usbfs<br>usbcore: registered new interface dri=
ver hub<br>
usbcore: registered new device driver usb<br>omap_i2c omap_i2c.1: bus 1 rev=
1.4.0 at 2600 kHz<br>twl 1-0048: PIH (irq 7) chaining IRQs 320..328<br>twl =
1-0048: power (irq 325) chaining IRQs 328..335<br>twl4030_gpio twl4030_gpio=
: gpio (irq 320) chaining IRQs 336..353<br>
gpiochip_add: registered GPIOs 192 to 211 on device: twl4030<br>VUSB1V5: 15=
00 mV normal standby<br>VUSB1V8: 1800 mV normal standby<br>VUSB3V1: 3100 mV=
 normal standby<br>twl4030_usb twl4030_usb: Initialized TWL4030 USB module<=
br>
VMMC1: 1850 &lt;--&gt; 3150 mV at 3000 mV normal standby<br>VDAC: 1800 mV n=
ormal standby<br>VDVI: 1800 mV normal standby<br>VSIM: 1800 &lt;--&gt; 3000=
 mV at 1800 mV normal standby<br>omap_i2c omap_i2c.3: bus 3 rev1.4.0 at 100=
 kHz<br>
Advanced Linux Sound Architecture Driver Version 1.0.25.<br>cfg80211: Calli=
ng CRDA to update world regulatory domain<br>Switching to clocksource 32k_c=
ounter<br>usbhs_omap usbhs_omap: xclk60mhsp1_ck set parentfailed error:-22<=
br>
usbhs_omap usbhs_omap: xclk60mhsp2_ck set parentfailed error:-22<br>NET: Re=
gistered protocol family 2<br>IP route cache hash table entries: 4096 (orde=
r: 2, 16384 bytes)<br>TCP established hash table entries: 16384 (order: 5, =
131072 bytes)<br>
TCP bind hash table entries: 16384 (order: 4, 65536 bytes)<br>TCP: Hash tab=
les configured (established 16384 bind 16384)<br>TCP: reno registered<br>UD=
P hash table entries: 256 (order: 0, 4096 bytes)<br>UDP-Lite hash table ent=
ries: 256 (order: 0, 4096 bytes)<br>
NET: Registered protocol family 1<br>RPC: Registered named UNIX socket tran=
sport module.<br>RPC: Registered udp transport module.<br>RPC: Registered t=
cp transport module.<br>RPC: Registered tcp NFSv4.1 backchannel transport m=
odule.<br>
VFS: Disk quotas dquot_6.5.2<br>Dquot-cache hash table entries: 1024 (order=
 0, 4096 bytes)<br>Registering unionfs 2.5.10 (for 3.1.0-rc4)<br>NFS: Regis=
tering the id_resolver key type<br>Btrfs loaded<br>msgmni has been set to 9=
65<br>
Block layer SCSI generic (bsg) driver version 0.4 loaded (major 253)<br>io =
scheduler noop registered<br>io scheduler deadline registered<br>io schedul=
er cfq registered (default)<br>OMAP DSS rev 2.0<br>Serial: 8250/16550 drive=
r, 4 ports, IRQ sharing enabled<br>
omap_uart.0: ttyO0 at MMIO 0x4806a000 (irq =3D 72) is a OMAP UART0<br>omap_=
uart.1: ttyO1 at MMIO 0x4806c000 (irq =3D 73) is a OMAP UART1<br>omap_uart.=
2: ttyO2 at MMIO 0x49020000 (irq =3D 74) is a OMAP UART2<br>console [ttyO2]=
 enabled<br>
omap_uart.3: ttyO3 at MMIO 0x49042000 (irq =3D 80) is a OMAP UART3<br>brd: =
module loaded<br>No NAND device found<br>No NAND device found<br>usbcore: r=
egistered new interface driver kaweth<br>pegasus: v0.6.14 (2006/09/27), Peg=
asus/Pegasus II USB Ethernet driver<br>
usbcore: registered new interface driver pegasus<br>usbcore: registered new=
 interface driver asix<br>usbcore: registered new interface driver cdc_ethe=
r<br>usbcore: registered new interface driver dm9601<br>usbcore: registered=
 new interface driver smsc75xx<br>
usbcore: registered new interface driver smsc95xx<br>usbcore: registered ne=
w interface driver net1080<br>usbcore: registered new interface driver cdc_=
subset<br>usbcore: registered new interface driver zaurus<br>usbcore: regis=
tered new interface driver MOSCHIP usb-ethernet driver<br>
usbcore: registered new interface driver int51x1<br>usbcore: registered new=
 interface driver cdc_ncm<br>ehci_hcd: USB 2.0 &#39;Enhanced&#39; Host Cont=
roller (EHCI) Driver<br>ehci-omap.0 supply hsusb0 not found, using dummy re=
gulator<br>
ehci-omap.0 supply hsusb1 not found, using dummy regulator<br>ehci-omap ehc=
i-omap.0: OMAP-EHCI Host Controller<br>ehci-omap ehci-omap.0: new USB bus r=
egistered, assigned bus number 1<br>ehci-omap ehci-omap.0: irq 77, io mem 0=
x48064800<br>
ehci-omap ehci-omap.0: USB 2.0 started, EHCI 1.00<br>hub 1-0:1.0: USB hub f=
ound<br>hub 1-0:1.0: 3 ports detected<br>Initializing USB Mass Storage driv=
er...<br>usbcore: registered new interface driver usb-storage<br>USB Mass S=
torage support registered.<br>
musb-hdrc: version 6.0, ?dma?, otg (peripheral+host)<br>musb-hdrc musb-hdrc=
: USB OTG mode controller at fa0ab000 using DMA, IRQ 92<br>mousedev: PS/2 m=
ouse device common for all mice<br>twl_rtc twl_rtc: Power up reset detected=
.<br>
twl_rtc twl_rtc: Enabling TWL-RTC<br>twl_rtc twl_rtc: rtc core: registered =
twl_rtc as rtc0<br>omap_wdt: OMAP Watchdog Timer Rev 0x31: initial timeout =
60 sec<br>cpuidle: using governor ladder<br>cpuidle: using governor menu<br=
>
usbcore: registered new interface driver usbhid<br>usbhid: USB HID core dri=
ver<br>OMAP3 Beagle/Devkit8000 SoC init<br>soc-audio soc-audio: ASoC machin=
e omap3beagle should use snd_soc_register_card()<br>usb 1-2: new high-speed=
 USB device number 2 using ehci-omap<br>
twl4030-codec twl4030-codec: ASoC: Failed to create Capture debugfs file<br=
>asoc: twl4030-hifi &lt;-&gt; omap-mcbsp.2 mapping ok<br>TCP: cubic registe=
red<br>NET: Registered protocol family 10<br>IPv6 over IPv4 tunneling drive=
r<br>
NET: Registered protocol family 17<br>Registering the dns_resolver key type=
<br>VFP support v0.3: implementor 41 architecture 3 part 30 variant c rev 3=
<br>ThumbEE CPU extension supported.<br>sr_init: No PMIC hook to init smart=
reflex<br>
smartreflex smartreflex.0: omap_sr_probe: SmartReflex driver initialized<br=
>smartreflex smartreflex.1: omap_sr_probe: SmartReflex driver initialized<b=
r>SmartReflex Class3 initialized<br>clock: disabling unused clocks to save =
power<br>
omapfb omapfb: no driver for display: dvi<br>Console: switching to colour f=
rame buffer device 90x35<br>hub 1-2:1.0: USB hub found<br>hub 1-2:1.0: 5 po=
rts detected<br>VDVI: incomplete constraints, leaving on<br>console [netcon=
0] enabled<br>
netconsole: network logging started<br>twl_rtc twl_rtc: setting system cloc=
k to 2000-01-01 00:00:00 UTC (946684800)<br>ALSA device list:<br>=A0 #0: om=
ap3beagle<br>Waiting for root device /dev/mmcblk0p2...<br>usb 1-2.1: new hi=
gh-speed USB device number 3 using ehci-omap<br>
mmc0: host does not support reading read-only switch. assuming write-enable=
.<br>mmc0: new high speed SDHC card at address b368<br>mmcblk0: mmc0:b368 S=
DU16 14.9 GiB <br>=A0mmcblk0: p1 p2<br>smsc95xx v1.0.4<br>kjournald startin=
g.=A0 Commit interval 5 seconds<br>
EXT3-fs (mmcblk0p2): mounted filesystem with ordered data mode<br>VFS: Moun=
ted root (ext3 filesystem) readonly on device 179:2.<br>devtmpfs: mounted<b=
r>Freeing init memory: 364K<br>smsc95xx 1-2.1:1.0: eth0: register &#39;smsc=
95xx&#39; at usb-ehci-omap.0-2.1, smsc95xx U<br>
SB 2.0 Ethernet, a2:9b:7f:19:dd:1c<br>INIT: version 2.88 booting<br>usb 1-2=
.3: new low-speed USB device number 4 using ehci-omap<br>input: CHESEN USB =
Keyboard as /devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/<br>1-2.3/1-2=
.3:1.0/input/input0<br>
generic-usb 0003:0A81:0101.0001: input: USB HID v1.10 Keyboard [CHESEN USB =
Keybo<br>ard] on usb-ehci-omap.0-2.3/input0<br>input: CHESEN USB Keyboard a=
s /devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/<br>1-2.3/1-2.3:1.1/inp=
ut/input1<br>
generic-usb 0003:0A81:0101.0002: input: USB HID v1.10 Device [CHESEN USB Ke=
yboar<br>d] on usb-ehci-omap.0-2.3/input1<br>usb 1-2.5: new low-speed USB d=
evice number 5 using ehci-omap<br>Starting udev<br>input: PixArt USB Optica=
l Mouse as /devices/platform/usbhs_omap/ehci-omap.0/usb1<br>
/1-2/1-2.5/1-2.5:1.0/input/input2<br>generic-usb 0003:093A:2510.0003: input=
: USB HID v1.11 Mouse [PixArt USB Optical <br>Mouse] on usb-ehci-omap.0-2.5=
/input0<br>udev[65]: starting version 164<br>Starting Bootlog daemon: bootl=
ogd.<br>
EXT3-fs (mmcblk0p2): using internal journal<br>ALSA: Restoring mixer settin=
gs...<br>Configuring network interfaces... Found hardware: &quot;omap3beagl=
e&quot; &quot;&quot; &quot;&quot; &quot;&quot; &quot;&quot;<br>Hardware is =
initialized using a generic method<br>
ADDRCONF(NETDEV_UP): eth0: link is not ready<br>udhcpc (v1.19.4) started<br=
>Sending discover...<br>ADDRCONF(NETDEV_CHANGE): eth0: link becomes ready<b=
r>smsc95xx 1-2.1:1.0: eth0: link up, 100Mbps, full-duplex, lpa 0x45E1<br>
Sending discover...<br>Sending select for 192.168.0.113...<br>Lease of 192.=
168.0.113 obtained, lease time 604800<br>/etc/udhcpc.d/50default: Adding DN=
S 192.168.0.1<br>ifconfig: SIOCGIFFLAGS: No such device<br>Starting portmap=
 daemon...<br>
net.ipv4.conf.default.rp_filter =3D 1<br>net.ipv4.conf.all.rp_filter =3D 1<=
br>Thu Jul 26 00:47:00 UTC 2012<br>Running postinst /etc/rpm-postinsts/100.=
..<br>Running postinst /etc/rpm-postinsts/101...<br><br>(gtk-update-icon-ca=
che:743): GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br><br>(gtk-update-icon-cache:743): =
GdkPixbuf-WARNING **: Cannot open pixbuf loader mod<br>
ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache&#39;: No such fi=
le or directo<br>ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING *=
*: Cannot open pixbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2=
.10.0/loaders.cache&#39;: No such file or directo<br>
ry<br><br>(gtk-update-icon-cache:743): GdkPixbuf-WARNING **: Cannot open pi=
xbuf loader mod<br>ule file &#39;/usr/lib/gdk-pixbuf-2.0/2.10.0/loaders.cac=
he&#39;: No such file or directo<br>ry<br>Running postinst /etc/rpm-postins=
ts/102...<br>
Running postinst /etc/rpm-postinsts/103...<br>Running postinst /etc/rpm-pos=
tinsts/104...<br>Running postinst /etc/rpm-postinsts/105...<br>Running post=
inst /etc/rpm-postinsts/106...<br>Running postinst /etc/rpm-postinsts/107..=
.<br>
Running postinst /etc/rpm-postinsts/108...<br>Running postinst /etc/rpm-pos=
tinsts/109...<br>Running postinst /etc/rpm-postinsts/110...<br>Running post=
inst /etc/rpm-postinsts/111...<br>Running postinst /etc/rpm-postinsts/112..=
.<br>
Running postinst /etc/rpm-postinsts/113...<br>Running postinst /etc/rpm-pos=
tinsts/114...<br>usb 1-2.5: USB disconnect, device number 5<br>usb 1-2.5: n=
ew low-speed USB device number 6 using ehci-omap<br>input: PixArt USB Optic=
al Mouse as /devices/platform/usbhs_omap/ehci-omap.0/usb1<br>
/1-2/1-2.5/1-2.5:1.0/input/input3<br>generic-usb 0003:093A:2510.0004: input=
: USB HID v1.11 Mouse [PixArt USB Optical <br>Mouse] on usb-ehci-omap.0-2.5=
/input0<br>Running postinst /etc/rpm-postinsts/115...<br>Running postinst /=
etc/rpm-postinsts/116...<br>
INIT: Entering runlevel: 5<br>Starting system message bus: dbus.<br>Startin=
g Connection Manager<br>Starting Xserver<br>ip_tables: (C) 2000-2006 Netfil=
ter Core Team<br>nf_conntrack version 0.5.0 (7726 buckets, 30904 max)<br>
<br>Starting Dropbear SSH server: Will output 1024 bit rsa secret key to &#=
39;/etc/dropb<br>ear/dropbear_rsa_host_key&#39;<br>Generating key, this may=
 take a while...<br>Public key portion is:<br>ssh-rsa AAAAB3NzaC1yc2EAAAADA=
QABAAAAgmxInaohgDxQzIwuY0oircn+axRSSlPCu9jE3E3n1LT2<br>
68kofz2j2iHqyFksfhvl5gvgovs6nBUJxui5I9hr3Aq3CnA5XjhuXofhIJZbr3ApB1vwg7jYkqv=
zSAHr<br>jEWFvV4vVIepGz2j7pUSdPyU1eo8N2YKGRK7unJ5lBZg4gjxQsE=3D root@beagle=
board<br>Fingerprint: md5 ce:31:78:4e:d8:bd:cb:52:db:8c:f8:cc:b8:aa:b0:4b<b=
r>
dropbear.<br><br>X.Org X Server 1.11.2<br>Release Date: 2011-11-04<br>X Pro=
tocol Version 11, Revision 0<br>Build Operating System: Linux 3.3.4-5.fc17.=
x86_64 x86_64 <br>Current Operating System: Linux beagleboard 3.4.1-yocto-s=
tandard #1 Wed Jul 25 1<br>
7:29:01 MDT 2012 armv7l<br>Kernel command line: console=3Dtty0 console=3Dtt=
yO2,115200n8 root=3D/dev/mmcblk0p2 roo<br>twait rootfstype=3Dext3 ro<br>Bui=
ld Date: 25 July 2012=A0 06:09:49PM<br>=A0<br>Current version of pixman: 0.=
26.2<br>
Before reporting problems, check <a href=3D"http://wiki.x.org">http://wiki.=
x.org</a><br>to make sure that you have the latest version.<br>Markers: (--=
) probed, (**) from config file, (=3D=3D) default setting,<br>(++) from com=
mand line, (!!) notice, (II) informational,<br>
(WW) warning, (EE) error, (NI) not implemented, (??) unknown.<br>(=3D=3D) L=
og file: &quot;/var/log/Xorg.0.log&quot;, Time: Thu Jul 26 00:47:54 2012<br=
>(=3D=3D) Using config file: &quot;/etc/X11/xorg.conf&quot;<br>(=3D=3D) Usi=
ng system config directory &quot;/usr/share/X11/xorg.conf.d&quot;<br>
(EE) Failed to load module &quot;extmod&quot; (module does not exist, 0)<br=
>(EE) Failed to load module &quot;dbe&quot; (module does not exist, 0)<br>S=
tarting advanced power management daemon: (EE) Failed to load module &quot;=
glx&quot; (mod<br>
ule does not exist, 0)<br>(EE) Failed to load module &quot;record&quot; (mo=
dule does not exist, 0)<br>(EE) Failed to load module &quot;dri&quot; (modu=
le does not exist, 0)<br>(EE) Failed to load module &quot;dri2&quot; (modul=
e does not exist, 0)<br>
apmd.<br>apmd[907]: apmd 3.2.1 interfacing with apm driver 1.13 and APM BIO=
S 1.2<br>(EE) omapfb(0): Failed to open /dev/fb2: No such file or directory=
<br>(EE) omapfb(0): XVScreenInit failed<br>Starting syslogd/klogd: done<br>
=A0* Starting Avahi mDNS/DNS-SD Daemon: avahi-daemon<br>=A0=A0 ...done.<br>=
Starting Telephony daemon<br>Stopping Bootlog daemon: bootlogd.<br>D-BUS pe=
r-session daemon address is: unix:abstract=3D/tmp/dbus-QGifswJady,guid=3Df6=
7<br>012099e8d847886e86a130000004c<br>
<br>Yocto (Built by Poky 7.0) 1.2+snapshot-20120725 beagleboard ttyO2<br><b=
r>beagleboard login: matchbox: Cant find a keycode for keysym 269025056<br>=
matchbox: i<br>gnoring key shortcut XF86Calendar=3D!$contacts<br><br>matchb=
ox: Cant find a keycode for ke<br>
ysym 2809<br>matchbox: ignoring key shortcut telephone=3D!$dates<br><br>mat=
chbox: Cant find a <br>keycode for keysym 269025050<br>matchbox: ignoring k=
ey shortcut XF86Start=3D!matchbox-<br>remote -desktop<br><br>[settings daem=
on] Forking. run with -n to prevent fork<br>
<br>** (matchbo<br>x-desktop:993): WARNING **: Error loading icon: Icon &#3=
9;computer&#39; not present in t<br>heme<br><br>** (matchbox-desktop:993): =
WARNING **: Error loading icon: Icon &#39;preferences<br>-desktop&#39; not =
present in theme<br>
<br>** (matchbox-desktop:993): WARNING **: Error loadi<br>ng icon: Icon &#3=
9;system-file-manager&#39; not present in theme<br><br><br>Texas Instrument=
s X-Loader 1.5.0 (Jul 25 2012 - 18:31:56)<br>Beagle xM<br>Reading boot sect=
or<br>
Loading u-boot.bin from mmc<br><br><br>U-Boot 2011.06 (Jul 25 2012 - 18:32:=
05)<br><br>OMAP3630/3730-GP ES2.1, CPU-OPP2, L3-165MHz, Max CPU Clock 1 Ghz=
<br>OMAP3 Beagle board + LPDDR/NAND<br>I2C:=A0=A0 ready<br>DRAM:=A0 512 MiB=
<br>
NAND:=A0 0 MiB<br>MMC:=A0=A0 OMAP SD/MMC: 0<br>*** Warning - readenv() fail=
ed, using default environment<br><br>In:=A0=A0=A0 serial<br>Out:=A0=A0 seri=
al<br>Err:=A0=A0 serial<br>Beagle unknown 0x02<br>No EEPROM on expansion bo=
ard<br>Die ID #158000029ff800000160a7450b02602d<br>
Hit any key to stop autoboot: 10=A0 9=A0 8=A0 0 <br>OMAP3 <a href=3D"http:/=
/beagleboard.org">beagleboard.org</a> # setenv bootcmd &#39;mmc rescan 0; f=
atload mmc 0:1 0x80300000<br>=A0uImage; bootm 0x80300000&#39;<br>OMAP3 <a h=
ref=3D"http://beagleboard.org">beagleboard.org</a> # setenv bootargs &#39;c=
onsole=3Dtty0 console=3DttyO2,115200n8 roo<br>
t=3D/dev/mmcblk0p2 rootwait rootfstype=3Dext3 ro&#39;<br>OMAP3 <a href=3D"h=
ttp://beagleboard.org">beagleboard.org</a> # boot<br>reading uImage<br><br>=
4127776 bytes read<br>## Booting kernel from Legacy Image at 80300000 ...<b=
r>
=A0=A0 Image Name:=A0=A0 Linux-3.4.1-yocto-standard<br>=A0=A0 Image Type:=
=A0=A0 ARM Linux Kernel Image (uncompressed)<br>=A0=A0 Data Size:=A0=A0=A0 =
4127712 Bytes =3D 3.9 MiB<br>=A0=A0 Load Address: 80008000<br>=A0=A0 Entry =
Point:=A0 80008000<br>=A0=A0 Verifying Checksum ... OK<br>
=A0=A0 Loading Kernel Image ... OK<br>OK<br><br>Starting kernel ...<br><br>=
Uncompressing Linux... done, booting the kernel.<br>Booting Linux on physic=
al CPU 0<br>Initializing cgroup subsys cpuset<br>Initializing cgroup subsys=
 cpu<br>
Linux version 3.4.1-yocto-standard (<a href=3D"mailto:vidal@ws009.swbell.ne=
t">vidal@ws009.swbell.net</a>) (gcc version 4.7.2 2<br>0120615 (prerelease)=
 (GCC) ) #1 Wed Jul 25 17:29:01 MDT 2012<br>CPU: ARMv7 Processor [413fc082]=
 revision 2 (ARMv7), cr=3D10c53c7d<br>
CPU: PIPT / VIPT nonaliasing data cache, VIPT aliasing instruction cache<br=
>Machine: OMAP3 Beagle Board<br>Reserving 14680064 bytes SDRAM for VRAM<br>=
Memory policy: ECC disabled, Data cache writeback<br>OMAP3630 ES1.2 (l2cach=
e iva sgx neon isp 192mhz_clk )<br>
Clocking rate (Crystal/Core/MPU): 26.0/332/600 MHz<br>Built 1 zonelists in =
Zone order, mobility grouping on.=A0 Total pages: 126208<br>Kernel command =
line: console=3Dtty0 console=3DttyO2,115200n8 root=3D/dev/mmcblk0p2 roo<br>=
twait rootfstype=3Dext3 ro<br>
PID hash table entries: 2048 (order: 1, 8192 bytes)<br>Dentry cache hash ta=
ble entries: 65536 (order: 6, 262144 bytes)<br>Inode-cache hash table entri=
es: 32768 (order: 5, 131072 bytes)<br>allocated 1048576 bytes of page_cgrou=
p<br>
please try &#39;cgroup_disable=3Dmemory&#39; option if you don&#39;t want m=
emory cgroups<br>Memory: 497MB =3D 497MB total<br>Memory: 494156k/494156k a=
vailable, 30132k reserved, 0K highmem<br>Virtual kernel memory layout:<br>=
=A0=A0=A0 vector=A0 : 0xffff0000 - 0xffff1000=A0=A0 (=A0=A0 4 kB)<br>
=A0=A0=A0 fixmap=A0 : 0xfff00000 - 0xfffe0000=A0=A0 ( 896 kB)<br>=A0=A0=A0 =
vmalloc : 0xe0800000 - 0xff000000=A0=A0 ( 488 MB)<br>=A0=A0=A0 lowmem=A0 : =
0xc0000000 - 0xe0000000=A0=A0 ( 512 MB)<br>=A0=A0=A0 modules : 0xbf000000 -=
 0xc0000000=A0=A0 (=A0 16 MB)<br>=A0=A0=A0=A0=A0 .text : 0xc0008000 - 0xc07=
cb388=A0=A0 (7949 kB)<br>
=A0=A0=A0=A0=A0 .init : 0xc07cc000 - 0xc0827000=A0=A0 ( 364 kB)<br>=A0=A0=
=A0=A0=A0 .data : 0xc0828000 - 0xc089e450=A0=A0 ( 474 kB)<br>=A0=A0=A0=A0=
=A0=A0 .bss : 0xc089e474 - 0xc08fed80=A0=A0 ( 387 kB)<br>SLUB: Genslabs=3D1=
1, HWalign=3D64, Order=3D0-3, MinObjects=3D0, CPUs=3D1, Nodes=3D1<br>
NR_IRQS:474<br>IRQ: Found an INTC at 0xfa200000 (revision 4.0) with 96 inte=
rrupts<br>Total of 96 interrupts on 1 active controller<br>OMAP clockevent =
source: GPTIMER12 at 32768 Hz<br>sched_clock: 32 bits at 32kHz, resolution =
30517ns, wraps every 131071999ms<br>
Console: colour dummy device 80x30<br>console [tty0] enabled<br>Calibrating=
 delay loop... 500.97 BogoMIPS (lpj=3D1953792)<br>pid_max: default: 32768 m=
inimum: 301<br>Security Framework initialized<br>Mount-cache hash table ent=
ries: 512<br>
Initializing cgroup subsys debug<br>Initializing cgroup subsys cpuacct<br>I=
nitializing cgroup subsys memory<br>Initializing cgroup subsys devices<br>I=
nitializing cgroup subsys freezer<br>Initializing cgroup subsys net_cls<br>
Initializing cgroup subsys blkio<br>CPU: Testing write buffer coherency: ok=
<br>ftrace: allocating 21594 entries in 64 pages<br>Setting up static ident=
ity map for 0x8059faf0 - 0x8059fb48<br>devtmpfs: initialized<br>dummy: <br>
NET: Registered protocol family 16<br>GPMC revision 5.0<br>gpiochip_add: re=
gistered GPIOs 0 to 31 on device: gpio<br>OMAP GPIO hardware version 2.5<br=
>gpiochip_add: registered GPIOs 32 to 63 on device: gpio<br>gpiochip_add: r=
egistered GPIOs 64 to 95 on device: gpio<br>
gpiochip_add: registered GPIOs 96 to 127 on device: gpio<br>gpiochip_add: r=
egistered GPIOs 128 to 159 on device: gpio<br>gpiochip_add: registered GPIO=
s 160 to 191 on device: gpio<br>omap_mux_init: Add partition: #1: core, fla=
gs: 0<br>
OMAP3 Beagle Rev: xM C<br>Reprogramming SDRC clock to 332000000 Hz<br>=A0us=
bhs_omap: alias fck already exists<br>Found NAND on CS0<br>Registering NAND=
 on CS0<br>Unable to get DVI reset GPIO<br>=A0omap-mcbsp.2: alias fck alrea=
dy exists<br>
=A0omap-mcbsp.3: alias fck already exists<br>OMAP DMA hardware revision 5.0=
<br>bio: create slab &lt;bio-0&gt; at 0<br>SCSI subsystem initialized<br>om=
ap2_mcspi omap2_mcspi.1: master is unqueued, this is deprecated<br>omap2_mc=
spi omap2_mcspi.2: master is unqueued, this is deprecated<br>
omap2_mcspi omap2_mcspi.3: master is unqueued, this is deprecated<br>omap2_=
mcspi omap2_mcspi.4: master is unqueued, this is deprecated<br>usbcore: reg=
istered new interface driver usbfs<br>usbcore: registered new interface dri=
ver hub<br>
usbcore: registered new device driver usb<br>omap_i2c omap_i2c.1: bus 1 rev=
1.4.0 at 2600 kHz<br>twl 1-0048: PIH (irq 7) chaining IRQs 320..328<br>twl =
1-0048: power (irq 325) chaining IRQs 328..335<br>twl4030_gpio twl4030_gpio=
: gpio (irq 320) chaining IRQs 336..353<br>
gpiochip_add: registered GPIOs 192 to 211 on device: twl4030<br>VUSB1V5: 15=
00 mV normal standby<br>VUSB1V8: 1800 mV normal standby<br>VUSB3V1: 3100 mV=
 normal standby<br>twl4030_usb twl4030_usb: Initialized TWL4030 USB module<=
br>
VMMC1: 1850 &lt;--&gt; 3150 mV at 3000 mV normal standby<br>VDAC: 1800 mV n=
ormal standby<br>VDVI: 1800 mV normal standby<br>VSIM: 1800 &lt;--&gt; 3000=
 mV at 1800 mV normal standby<br>omap_i2c omap_i2c.3: bus 3 rev1.4.0 at 100=
 kHz<br>
Advanced Linux Sound Architecture Driver Version 1.0.25.<br>cfg80211: Calli=
ng CRDA to update world regulatory domain<br>Switching to clocksource 32k_c=
ounter<br>usbhs_omap usbhs_omap: xclk60mhsp1_ck set parentfailed error:-22<=
br>
usbhs_omap usbhs_omap: xclk60mhsp2_ck set parentfailed error:-22<br>NET: Re=
gistered protocol family 2<br>IP route cache hash table entries: 4096 (orde=
r: 2, 16384 bytes)<br>TCP established hash table entries: 16384 (order: 5, =
131072 bytes)<br>
TCP bind hash table entries: 16384 (order: 4, 65536 bytes)<br>TCP: Hash tab=
les configured (established 16384 bind 16384)<br>TCP: reno registered<br>UD=
P hash table entries: 256 (order: 0, 4096 bytes)<br>UDP-Lite hash table ent=
ries: 256 (order: 0, 4096 bytes)<br>
NET: Registered protocol family 1<br>RPC: Registered named UNIX socket tran=
sport module.<br>RPC: Registered udp transport module.<br>RPC: Registered t=
cp transport module.<br>RPC: Registered tcp NFSv4.1 backchannel transport m=
odule.<br>
VFS: Disk quotas dquot_6.5.2<br>Dquot-cache hash table entries: 1024 (order=
 0, 4096 bytes)<br>Registering unionfs 2.5.10 (for 3.1.0-rc4)<br>NFS: Regis=
tering the id_resolver key type<br>Btrfs loaded<br>msgmni has been set to 9=
65<br>
Block layer SCSI generic (bsg) driver version 0.4 loaded (major 253)<br>io =
scheduler noop registered<br>io scheduler deadline registered<br>io schedul=
er cfq registered (default)<br>OMAP DSS rev 2.0<br>Serial: 8250/16550 drive=
r, 4 ports, IRQ sharing enabled<br>
omap_uart.0: ttyO0 at MMIO 0x4806a000 (irq =3D 72) is a OMAP UART0<br>omap_=
uart.1: ttyO1 at MMIO 0x4806c000 (irq =3D 73) is a OMAP UART1<br>omap_uart.=
2: ttyO2 at MMIO 0x49020000 (irq =3D 74) is a OMAP UART2<br>console [ttyO2]=
 enabled<br>
omap_uart.3: ttyO3 at MMIO 0x49042000 (irq =3D 80) is a OMAP UART3<br>brd: =
module loaded<br>No NAND device found<br>No NAND device found<br>usbcore: r=
egistered new interface driver kaweth<br>pegasus: v0.6.14 (2006/09/27), Peg=
asus/Pegasus II USB Ethernet driver<br>
usbcore: registered new interface driver pegasus<br>usbcore: registered new=
 interface driver asix<br>usbcore: registered new interface driver cdc_ethe=
r<br>usbcore: registered new interface driver dm9601<br>usbcore: registered=
 new interface driver smsc75xx<br>
usbcore: registered new interface driver smsc95xx<br>usbcore: registered ne=
w interface driver net1080<br>usbcore: registered new interface driver cdc_=
subset<br>usbcore: registered new interface driver zaurus<br>usbcore: regis=
tered new interface driver MOSCHIP usb-ethernet driver<br>
usbcore: registered new interface driver int51x1<br>usbcore: registered new=
 interface driver cdc_ncm<br>ehci_hcd: USB 2.0 &#39;Enhanced&#39; Host Cont=
roller (EHCI) Driver<br>ehci-omap.0 supply hsusb0 not found, using dummy re=
gulator<br>
ehci-omap.0 supply hsusb1 not found, using dummy regulator<br>ehci-omap ehc=
i-omap.0: OMAP-EHCI Host Controller<br>ehci-omap ehci-omap.0: new USB bus r=
egistered, assigned bus number 1<br>ehci-omap ehci-omap.0: irq 77, io mem 0=
x48064800<br>
ehci-omap ehci-omap.0: USB 2.0 started, EHCI 1.00<br>hub 1-0:1.0: USB hub f=
ound<br>hub 1-0:1.0: 3 ports detected<br>Initializing USB Mass Storage driv=
er...<br>usbcore: registered new interface driver usb-storage<br>USB Mass S=
torage support registered.<br>
musb-hdrc: version 6.0, ?dma?, otg (peripheral+host)<br>musb-hdrc musb-hdrc=
: USB OTG mode controller at fa0ab000 using DMA, IRQ 92<br>mousedev: PS/2 m=
ouse device common for all mice<br>twl_rtc twl_rtc: Enabling TWL-RTC<br>
twl_rtc twl_rtc: rtc core: registered twl_rtc as rtc0<br>omap_wdt: OMAP Wat=
chdog Timer Rev 0x31: initial timeout 60 sec<br>cpuidle: using governor lad=
der<br>cpuidle: using governor menu<br>usbcore: registered new interface dr=
iver usbhid<br>
usbhid: USB HID core driver<br>OMAP3 Beagle/Devkit8000 SoC init<br>soc-audi=
o soc-audio: ASoC machine omap3beagle should use snd_soc_register_card()<br=
>usb 1-2: new high-speed USB device number 2 using ehci-omap<br>twl4030-cod=
ec twl4030-codec: ASoC: Failed to create Capture debugfs file<br>
asoc: twl4030-hifi &lt;-&gt; omap-mcbsp.2 mapping ok<br>TCP: cubic register=
ed<br>NET: Registered protocol family 10<br>IPv6 over IPv4 tunneling driver=
<br>NET: Registered protocol family 17<br>Registering the dns_resolver key =
type<br>
VFP support v0.3: implementor 41 architecture 3 part 30 variant c rev 3<br>=
ThumbEE CPU extension supported.<br>sr_init: No PMIC hook to init smartrefl=
ex<br>smartreflex smartreflex.0: omap_sr_probe: SmartReflex driver initiali=
zed<br>
smartreflex smartreflex.1: omap_sr_probe: SmartReflex driver initialized<br=
>SmartReflex Class3 initialized<br>clock: disabling unused clocks to save p=
ower<br>omapfb omapfb: no driver for display: dvi<br>Console: switching to =
colour frame buffer device 90x35<br>
hub 1-2:1.0: USB hub found<br>hub 1-2:1.0: 5 ports detected<br>VDVI: incomp=
lete constraints, leaving on<br>console [netcon0] enabled<br>netconsole: ne=
twork logging started<br>twl_rtc twl_rtc: setting system clock to 2012-07-2=
6 00:49:41 UTC (1343263781)<br>
ALSA device list:<br>=A0 #0: omap3beagle<br>Waiting for root device /dev/mm=
cblk0p2...<br>usb 1-2.1: new high-speed USB device number 3 using ehci-omap=
<br>mmc0: host does not support reading read-only switch. assuming write-en=
able.<br>
mmc0: new high speed SDHC card at address b368<br>mmcblk0: mmc0:b368 SDU16 =
14.9 GiB <br>=A0mmcblk0: p1 p2<br>EXT3-fs (mmcblk0p2): recovery required on=
 readonly filesystem<br>EXT3-fs (mmcblk0p2): write access will be enabled d=
uring recovery<br>
smsc95xx v1.0.4<br>smsc95xx 1-2.1:1.0: eth0: register &#39;smsc95xx&#39; at=
 usb-ehci-omap.0-2.1, smsc95xx U<br>SB 2.0 Ethernet, 06:f8:d5:6e:cb:9b<br>u=
sb 1-2.3: new low-speed USB device number 4 using ehci-omap<br>input: CHESE=
N USB Keyboard as /devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/<br>
1-2.3/1-2.3:1.0/input/input0<br>generic-usb 0003:0A81:0101.0001: input: USB=
 HID v1.10 Keyboard [CHESEN USB Keybo<br>ard] on usb-ehci-omap.0-2.3/input0=
<br>input: CHESEN USB Keyboard as /devices/platform/usbhs_omap/ehci-omap.0/=
usb1/1-2/<br>
1-2.3/1-2.3:1.1/input/input1<br>generic-usb 0003:0A81:0101.0002: input: USB=
 HID v1.10 Device [CHESEN USB Keyboar<br>d] on usb-ehci-omap.0-2.3/input1<b=
r>usb 1-2.5: new low-speed USB device number 5 using ehci-omap<br>input: Pi=
xArt USB Optical Mouse as /devices/platform/usbhs_omap/ehci-omap.0/usb1<br>
/1-2/1-2.5/1-2.5:1.0/input/input2<br>generic-usb 0003:093A:2510.0003: input=
: USB HID v1.11 Mouse [PixArt USB Optical <br>Mouse] on usb-ehci-omap.0-2.5=
/input0<br>kjournald starting.=A0 Commit interval 5 seconds<br>EXT3-fs (mmc=
blk0p2): recovery complete<br>
EXT3-fs (mmcblk0p2): mounted filesystem with ordered data mode<br>VFS: Moun=
ted root (ext3 filesystem) readonly on device 179:2.<br>devtmpfs: mounted<b=
r>Freeing init memory: 364K<br>INIT: version 2.88 booting<br>Starting udev<=
br>
udev[65]: starting version 164<br>Starting Bootlog daemon: bootlogd.<br>EXT=
3-fs (mmcblk0p2): using internal journal<br>ALSA: Restoring mixer settings.=
..<br>Configuring network interfaces... Found hardware: &quot;omap3beagle&q=
uot; &quot;&quot; &quot;&quot; &quot;&quot; &quot;&quot;<br>
Hardware is initialized using a generic method<br>ADDRCONF(NETDEV_UP): eth0=
: link is not ready<br>udhcpc (v1.19.4) started<br>Sending discover...<br>A=
DDRCONF(NETDEV_CHANGE): eth0: link becomes ready<br>smsc95xx 1-2.1:1.0: eth=
0: link up, 100Mbps, full-duplex, lpa 0x45E1<br>
Sending discover...<br>Sending discover...<br>No lease, failing<br>ifconfig=
: SIOCGIFFLAGS: No such device<br>Starting portmap daemon...<br>net.ipv4.co=
nf.default.rp_filter =3D 1<br>net.ipv4.conf.all.rp_filter =3D 1<br>INIT: En=
tering runlevel: 5<br>
Starting system message bus: dbus.<br>Starting Connection Manager<br>Starti=
ng Xserver<br>ip_tables: (C) 2000-2006 Netfilter Core Team<br>nf_conntrack =
version 0.5.0 (7726 buckets, 30904 max)<br>Starting Dropbear SSH server: <b=
r>
dropbear.<br><br>X.Org X Server 1.11.2<br>Release Date: 2011-11-04<br>X Pro=
tocol Version 11, Revision 0<br>Build Operating System: Linux 3.3.4-5.fc17.=
x86_64 x86_64 <br>Current Operating System: Linux beagleboard 3.4.1-yocto-s=
tandard #1 Wed Jul 25 1<br>
7:29:01 MDT 2012 armv7l<br>Kernel command line: console=3Dtty0 console=3Dtt=
yO2,115200n8 root=3D/dev/mmcblk0p2 roo<br>twait rootfstype=3Dext3 ro<br>Bui=
ld Date: 25 July 2012=A0 06:09:49PM<br>=A0<br>Current version of pixman: 0.=
26.2<br>
Before reporting problems, check <a href=3D"http://wiki.x.org">http://wiki.=
x.org</a><br>to make sure that you have the latest version.<br>Markers: (--=
) probed, (**) from config file, (=3D=3D) default setting,<br>(++) from com=
mand line, (!!) notice, (II) informational,<br>
(WW) warning, (EE) error, (NI) not implemented, (??) unknown.<br>(=3D=3D) L=
og file: &quot;/var/log/Xorg.0.log&quot;, Time: Thu Jul 26 00:50:08 2012<br=
>(=3D=3D) Using config file: &quot;/etc/X11/xorg.conf&quot;<br>(=3D=3D) Usi=
ng system config directory &quot;/usr/share/X11/xorg.conf.d&quot;<br>
Starting advanced power management daemon: (EE) Failed to load module &quot=
;extmod&quot; (<br>module does not exist, 0)<br>(EE) Failed to load module =
&quot;dbe&quot; (module does not exist, 0)<br>(EE) Failed to load module &q=
uot;glx&quot; (module does not exist, 0)<br>
(EE) Failed to load module &quot;record&quot; (module does not exist, 0)<br=
>(EE) Failed to load module &quot;dri&quot; (module does not exist, 0)<br>(=
EE) Failed to load module &quot;dri2&quot; (module does not exist, 0)<br>
apmd.<br>apmd[529]: apmd 3.2.1 interfacing with apm driver 1.13 and APM BIO=
S 1.2<br>(EE) omapfb(0): Failed to open /dev/fb2: No such file or directory=
<br>(EE) omapfb(0): XVScreenInit failed<br>Starting syslogd/klogd: done<br>
=A0* Starting Avahi mDNS/DNS-SD Daemon: avahi-daemon<br>=A0=A0 ...done.<br>=
Starting Telephony daemon<br>Stopping Bootlog daemon: bootlogd.<br>D-BUS pe=
r-session daemon address is: unix:abstract=3D/tmp/dbus-xafHXICjj3,guid=3D9b=
e<br>0f0b74ca6034ad0c31a9800000020<br>
<br>Yocto (Built by Poky 7.0) 1.2+snapshot-20120725 beagleboard ttyO2<br><b=
r>beagleboard login: matchbox: Cant find a keycode for keysym 269025056<br>=
matchbox: i<br>gnoring key shortcut XF86Calendar=3D!$contacts<br><br>matchb=
ox: Cant find a keycode for ke<br>
ysym 2809<br>matchbox: ignoring key shortcut telephone=3D!$dates<br><br>mat=
chbox: Cant find a <br>keycode for keysym 269025050<br>matchbox: ignoring k=
ey shortcut XF86Start=3D!matchbox-<br>remote -desktop<br><br>[settings daem=
on] Forking. run with -n to prevent fork<br>
<br>** (matchbo<br>x-desktop:612): WARNING **: Error loading icon: Icon &#3=
9;computer&#39; not present in t<br>heme<br><br>** (matchbox-desktop:612): =
WARNING **: Error loading icon: Icon &#39;preferences<br>-desktop&#39; not =
present in theme<br>
<br>** (matchbox-desktop:612): WARNING **: Error loadi<br>ng icon: Icon &#3=
9;system-file-manager&#39; not present in theme<br><br>* - * Qodem 0.1.2 Ca=
pture Generated Wed, 25 Jul 2012 19:01:56 -0600 END * - *<br><br>* - * Qode=
m 0.1.2 Capture Generated Wed, 25 Jul 2012 19:19:48 -0600 BEGIN * - *<br>
<br><br>root@beagleboard:~# <br>root@beagleboard:~# ls<br>root@beagleboard:=
~# dmesg<br>Booting Linux on physical CPU 0<br>Initializing cgroup subsys c=
puset<br>Initializing cgroup subsys cpu<br>Linux version 3.4.1-yocto-standa=
rd (<a href=3D"mailto:vidal@ws009.swbell.net">vidal@ws009.swbell.net</a>) (=
gcc version 4.7.2 2<br>
0120615 (prerelease) (GCC) ) #1 Wed Jul 25 17:29:01 MDT 2012<br>CPU: ARMv7 =
Processor [413fc082] revision 2 (ARMv7), cr=3D10c53c7d<br>CPU: PIPT / VIPT =
nonaliasing data cache, VIPT aliasing instruction cache<br>Machine: OMAP3 B=
eagle Board<br>
Reserving 14680064 bytes SDRAM for VRAM<br>Memory policy: ECC disabled, Dat=
a cache writeback<br>On node 0 totalpages: 127232<br>free_area_init_node: n=
ode 0, pgdat c089b790, node_mem_map c08ff000<br>=A0 Normal zone: 1024 pages=
 used for memmap<br>
=A0 Normal zone: 0 pages reserved<br>=A0 Normal zone: 126208 pages, LIFO ba=
tch:31<br>OMAP3630 ES1.2 (l2cache iva sgx neon isp 192mhz_clk )<br>Clocking=
 rate (Crystal/Core/MPU): 26.0/332/600 MHz<br>pcpu-alloc: s0 r0 d32768 u327=
68 alloc=3D1*32768<br>
pcpu-alloc: [0] 0 <br>Built 1 zonelists in Zone order, mobility grouping on=
.=A0 Total pages: 126208<br>Kernel command line: console=3Dtty0 console=3Dt=
tyO2,115200n8 root=3D/dev/mmcblk0p2 roo<br>twait rootfstype=3Dext3 ro<br>PI=
D hash table entries: 2048 (order: 1, 8192 bytes)<br>
Dentry cache hash table entries: 65536 (order: 6, 262144 bytes)<br>Inode-ca=
che hash table entries: 32768 (order: 5, 131072 bytes)<br>allocated 1048576=
 bytes of page_cgroup<br>please try &#39;cgroup_disable=3Dmemory&#39; optio=
n if you don&#39;t want memory cgroups<br>
Memory: 497MB =3D 497MB total<br>Memory: 494156k/494156k available, 30132k =
reserved, 0K highmem<br>Virtual kernel memory layout:<br>=A0=A0=A0 vector=
=A0 : 0xffff0000 - 0xffff1000=A0=A0 (=A0=A0 4 kB)<br>=A0=A0=A0 fixmap=A0 : =
0xfff00000 - 0xfffe0000=A0=A0 ( 896 kB)<br>
=A0=A0=A0 vmalloc : 0xe0800000 - 0xff000000=A0=A0 ( 488 MB)<br>=A0=A0=A0 lo=
wmem=A0 : 0xc0000000 - 0xe0000000=A0=A0 ( 512 MB)<br>=A0=A0=A0 modules : 0x=
bf000000 - 0xc0000000=A0=A0 (=A0 16 MB)<br>=A0=A0=A0=A0=A0 .text : 0xc00080=
00 - 0xc07cb388=A0=A0 (7949 kB)<br>=A0=A0=A0=A0=A0 .init : 0xc07cc000 - 0xc=
0827000=A0=A0 ( 364 kB)<br>
=A0=A0=A0=A0=A0 .data : 0xc0828000 - 0xc089e450=A0=A0 ( 474 kB)<br>=A0=A0=
=A0=A0=A0=A0 .bss : 0xc089e474 - 0xc08fed80=A0=A0 ( 387 kB)<br>SLUB: Gensla=
bs=3D11, HWalign=3D64, Order=3D0-3, MinObjects=3D0, CPUs=3D1, Nodes=3D1<br>=
NR_IRQS:474<br>IRQ: Found an INTC at 0xfa200000 (revision 4.0) with 96 inte=
rrupts<br>
Total of 96 interrupts on 1 active controller<br>OMAP clockevent source: GP=
TIMER12 at 32768 Hz<br>sched_clock: 32 bits at 32kHz, resolution 30517ns, w=
raps every 131071999ms<br>Console: colour dummy device 80x30<br>console [tt=
y0] enabled<br>
Calibrating delay loop... 500.97 BogoMIPS (lpj=3D1953792)<br>pid_max: defau=
lt: 32768 minimum: 301<br>Security Framework initialized<br>Mount-cache has=
h table entries: 512<br>Initializing cgroup subsys debug<br>Initializing cg=
roup subsys cpuacct<br>
Initializing cgroup subsys memory<br>Initializing cgroup subsys devices<br>=
Initializing cgroup subsys freezer<br>Initializing cgroup subsys net_cls<br=
>Initializing cgroup subsys blkio<br>CPU: Testing write buffer coherency: o=
k<br>
ftrace: allocating 21594 entries in 64 pages<br>Setting up static identity =
map for 0x8059faf0 - 0x8059fb48<br>devtmpfs: initialized<br>dummy: <br>NET:=
 Registered protocol family 16<br>GPMC revision 5.0<br>gpiochip_add: regist=
ered GPIOs 0 to 31 on device: gpio<br>
OMAP GPIO hardware version 2.5<br>gpiochip_add: registered GPIOs 32 to 63 o=
n device: gpio<br>gpiochip_add: registered GPIOs 64 to 95 on device: gpio<b=
r>gpiochip_add: registered GPIOs 96 to 127 on device: gpio<br>gpiochip_add:=
 registered GPIOs 128 to 159 on device: gpio<br>
gpiochip_add: registered GPIOs 160 to 191 on device: gpio<br>omap_mux_init:=
 Add partition: #1: core, flags: 0<br>OMAP3 Beagle Rev: xM C<br>Reprogrammi=
ng SDRC clock to 332000000 Hz<br>=A0usbhs_omap: alias fck already exists<br=
>
Found NAND on CS0<br>Registering NAND on CS0<br>Unable to get DVI reset GPI=
O<br>=A0omap-mcbsp.2: alias fck already exists<br>=A0omap-mcbsp.3: alias fc=
k already exists<br>OMAP DMA hardware revision 5.0<br>bio: create slab &lt;=
bio-0&gt; at 0<br>
SCSI subsystem initialized<br>omap2_mcspi omap2_mcspi.1: master is unqueued=
, this is deprecated<br>omap2_mcspi omap2_mcspi.2: master is unqueued, this=
 is deprecated<br>omap2_mcspi omap2_mcspi.3: master is unqueued, this is de=
precated<br>
omap2_mcspi omap2_mcspi.4: master is unqueued, this is deprecated<br>usbcor=
e: registered new interface driver usbfs<br>usbcore: registered new interfa=
ce driver hub<br>usbcore: registered new device driver usb<br>omap_i2c omap=
_i2c.1: bus 1 rev1.4.0 at 2600 kHz<br>
twl 1-0048: PIH (irq 7) chaining IRQs 320..328<br>twl 1-0048: power (irq 32=
5) chaining IRQs 328..335<br>twl4030_gpio twl4030_gpio: gpio (irq 320) chai=
ning IRQs 336..353<br>gpiochip_add: registered GPIOs 192 to 211 on device: =
twl4030<br>
VUSB1V5: 1500 mV normal standby<br>VUSB1V8: 1800 mV normal standby<br>VUSB3=
V1: 3100 mV normal standby<br>twl4030_usb twl4030_usb: Initialized TWL4030 =
USB module<br>VMMC1: 1850 &lt;--&gt; 3150 mV at 3000 mV normal standby<br>
VDAC: 1800 mV normal standby<br>VDVI: 1800 mV normal standby<br>VSIM: 1800 =
&lt;--&gt; 3000 mV at 1800 mV normal standby<br>omap_i2c omap_i2c.3: bus 3 =
rev1.4.0 at 100 kHz<br>Advanced Linux Sound Architecture Driver Version 1.0=
.25.<br>
cfg80211: Calling CRDA to update world regulatory domain<br>Switching to cl=
ocksource 32k_counter<br>usbhs_omap usbhs_omap: xclk60mhsp1_ck set parentfa=
iled error:-22<br>usbhs_omap usbhs_omap: xclk60mhsp2_ck set parentfailed er=
ror:-22<br>
NET: Registered protocol family 2<br>IP route cache hash table entries: 409=
6 (order: 2, 16384 bytes)<br>TCP established hash table entries: 16384 (ord=
er: 5, 131072 bytes)<br>TCP bind hash table entries: 16384 (order: 4, 65536=
 bytes)<br>
TCP: Hash tables configured (established 16384 bind 16384)<br>TCP: reno reg=
istered<br>UDP hash table entries: 256 (order: 0, 4096 bytes)<br>UDP-Lite h=
ash table entries: 256 (order: 0, 4096 bytes)<br>NET: Registered protocol f=
amily 1<br>
RPC: Registered named UNIX socket transport module.<br>RPC: Registered udp =
transport module.<br>RPC: Registered tcp transport module.<br>RPC: Register=
ed tcp NFSv4.1 backchannel transport module.<br>VFS: Disk quotas dquot_6.5.=
2<br>
Dquot-cache hash table entries: 1024 (order 0, 4096 bytes)<br>Registering u=
nionfs 2.5.10 (for 3.1.0-rc4)<br>NFS: Registering the id_resolver key type<=
br>Btrfs loaded<br>msgmni has been set to 965<br>Block layer SCSI generic (=
bsg) driver version 0.4 loaded (major 253)<br>
io scheduler noop registered<br>io scheduler deadline registered<br>io sche=
duler cfq registered (default)<br>OMAP DSS rev 2.0<br>Serial: 8250/16550 dr=
iver, 4 ports, IRQ sharing enabled<br>omap_uart.0: ttyO0 at MMIO 0x4806a000=
 (irq =3D 72) is a OMAP UART0<br>
omap_uart.1: ttyO1 at MMIO 0x4806c000 (irq =3D 73) is a OMAP UART1<br>omap_=
uart.2: ttyO2 at MMIO 0x49020000 (irq =3D 74) is a OMAP UART2<br>console [t=
tyO2] enabled<br>omap_uart.3: ttyO3 at MMIO 0x49042000 (irq =3D 80) is a OM=
AP UART3<br>
brd: module loaded<br>No NAND device found<br>No NAND device found<br>usbco=
re: registered new interface driver kaweth<br>pegasus: v0.6.14 (2006/09/27)=
, Pegasus/Pegasus II USB Ethernet driver<br>usbcore: registered new interfa=
ce driver pegasus<br>
usbcore: registered new interface driver asix<br>usbcore: registered new in=
terface driver cdc_ether<br>usbcore: registered new interface driver dm9601=
<br>usbcore: registered new interface driver smsc75xx<br>usbcore: registere=
d new interface driver smsc95xx<br>
usbcore: registered new interface driver net1080<br>usbcore: registered new=
 interface driver cdc_subset<br>usbcore: registered new interface driver za=
urus<br>usbcore: registered new interface driver MOSCHIP usb-ethernet drive=
r<br>
usbcore: registered new interface driver int51x1<br>usbcore: registered new=
 interface driver cdc_ncm<br>ehci_hcd: USB 2.0 &#39;Enhanced&#39; Host Cont=
roller (EHCI) Driver<br>ehci-omap.0 supply hsusb0 not found, using dummy re=
gulator<br>
ehci-omap.0 supply hsusb1 not found, using dummy regulator<br>ehci-omap ehc=
i-omap.0: OMAP-EHCI Host Controller<br>ehci-omap ehci-omap.0: new USB bus r=
egistered, assigned bus number 1<br>ehci-omap ehci-omap.0: irq 77, io mem 0=
x48064800<br>
ehci-omap ehci-omap.0: USB 2.0 started, EHCI 1.00<br>hub 1-0:1.0: USB hub f=
ound<br>hub 1-0:1.0: 3 ports detected<br>Initializing USB Mass Storage driv=
er...<br>usbcore: registered new interface driver usb-storage<br>USB Mass S=
torage support registered.<br>
musb-hdrc: version 6.0, ?dma?, otg (peripheral+host)<br>musb-hdrc: ConfigDa=
ta=3D0xde (UTMI-8, dyn FIFOs, bulk combine, bulk split, HB-ISO <br>Rx, HB-I=
SO Tx, SoftConn)<br>musb-hdrc: MHDRC RTL version 1.800 <br>musb-hdrc: setup=
 fifo_mode 4<br>
musb-hdrc: 28/31 max ep, 16384/16384 memory<br>musb-hdrc musb-hdrc: USB OTG=
 mode controller at fa0ab000 using DMA, IRQ 92<br>mousedev: PS/2 mouse devi=
ce common for all mice<br>twl_rtc twl_rtc: Enabling TWL-RTC<br>twl_rtc twl_=
rtc: rtc core: registered twl_rtc as rtc0<br>
omap_wdt: OMAP Watchdog Timer Rev 0x31: initial timeout 60 sec<br>cpuidle: =
using governor ladder<br>cpuidle: using governor menu<br>usbcore: registere=
d new interface driver usbhid<br>usbhid: USB HID core driver<br>OMAP3 Beagl=
e/Devkit8000 SoC init<br>
soc-audio soc-audio: ASoC machine omap3beagle should use snd_soc_register_c=
ard()<br>usb 1-2: new high-speed USB device number 2 using ehci-omap<br>twl=
4030-codec twl4030-codec: ASoC: Failed to create Capture debugfs file<br>
asoc: twl4030-hifi &lt;-&gt; omap-mcbsp.2 mapping ok<br>TCP: cubic register=
ed<br>NET: Registered protocol family 10<br>IPv6 over IPv4 tunneling driver=
<br>NET: Registered protocol family 17<br>Registering the dns_resolver key =
type<br>
VFP support v0.3: implementor 41 architecture 3 part 30 variant c rev 3<br>=
ThumbEE CPU extension supported.<br>sr_init: No PMIC hook to init smartrefl=
ex<br>smartreflex smartreflex.0: omap_sr_probe: SmartReflex driver initiali=
zed<br>
smartreflex smartreflex.1: omap_sr_probe: SmartReflex driver initialized<br=
>SmartReflex Class3 initialized<br>clock: disabling unused clocks to save p=
ower<br>omapfb omapfb: no driver for display: dvi<br>Console: switching to =
colour frame buffer device 90x35<br>
hub 1-2:1.0: USB hub found<br>hub 1-2:1.0: 5 ports detected<br>VDVI: incomp=
lete constraints, leaving on<br>console [netcon0] enabled<br>netconsole: ne=
twork logging started<br>twl_rtc twl_rtc: setting system clock to 2012-07-2=
6 00:49:41 UTC (1343263781)<br>
ALSA device list:<br>=A0 #0: omap3beagle<br>Waiting for root device /dev/mm=
cblk0p2...<br>usb 1-2.1: new high-speed USB device number 3 using ehci-omap=
<br>mmc0: host does not support reading read-only switch. assuming write-en=
able.<br>
mmc0: new high speed SDHC card at address b368<br>mmcblk0: mmc0:b368 SDU16 =
14.9 GiB <br>=A0mmcblk0: p1 p2<br>EXT3-fs (mmcblk0p2): recovery required on=
 readonly filesystem<br>EXT3-fs (mmcblk0p2): write access will be enabled d=
uring recovery<br>
smsc95xx v1.0.4<br>smsc95xx 1-2.1:1.0: eth0: register &#39;smsc95xx&#39; at=
 usb-ehci-omap.0-2.1, smsc95xx U<br>SB 2.0 Ethernet, 06:f8:d5:6e:cb:9b<br>u=
sb 1-2.3: new low-speed USB device number 4 using ehci-omap<br>input: CHESE=
N USB Keyboard as /devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/<br>
1-2.3/1-2.3:1.0/input/input0<br>generic-usb 0003:0A81:0101.0001: input: USB=
 HID v1.10 Keyboard [CHESEN USB Keybo<br>ard] on usb-ehci-omap.0-2.3/input0=
<br>input: CHESEN USB Keyboard as /devices/platform/usbhs_omap/ehci-omap.0/=
usb1/1-2/<br>
1-2.3/1-2.3:1.1/input/input1<br>generic-usb 0003:0A81:0101.0002: input: USB=
 HID v1.10 Device [CHESEN USB Keyboar<br>d] on usb-ehci-omap.0-2.3/input1<b=
r>usb 1-2.5: new low-speed USB device number 5 using ehci-omap<br>input: Pi=
xArt USB Optical Mouse as /devices/platform/usbhs_omap/ehci-omap.0/usb1<br>
/1-2/1-2.5/1-2.5:1.0/input/input2<br>generic-usb 0003:093A:2510.0003: input=
: USB HID v1.11 Mouse [PixArt USB Optical <br>Mouse] on usb-ehci-omap.0-2.5=
/input0<br>kjournald starting.=A0 Commit interval 5 seconds<br>EXT3-fs (mmc=
blk0p2): recovery complete<br>
EXT3-fs (mmcblk0p2): mounted filesystem with ordered data mode<br>VFS: Moun=
ted root (ext3 filesystem) readonly on device 179:2.<br>devtmpfs: mounted<b=
r>Freeing init memory: 364K<br>udev[65]: starting version 164<br>EXT3-fs (m=
mcblk0p2): using internal journal<br>
ADDRCONF(NETDEV_UP): eth0: link is not ready<br>ADDRCONF(NETDEV_CHANGE): et=
h0: link becomes ready<br>smsc95xx 1-2.1:1.0: eth0: link up, 100Mbps, full-=
duplex, lpa 0x45E1<br>ip_tables: (C) 2000-2006 Netfilter Core Team<br>nf_co=
nntrack version 0.5.0 (7726 buckets, 30904 max)<br>
root@beagleboard:~# ifconfig -a<br>eth0=A0=A0=A0=A0=A0 Link encap:Ethernet=
=A0 HWaddr 06:F8:D5:6E:CB:9B=A0 <br>=A0=A0=A0=A0=A0=A0=A0=A0=A0 inet addr:1=
69.254.141.65=A0 Bcast:169.254.255.255=A0 Mask:255.255.0.0<br>=A0=A0=A0=A0=
=A0=A0=A0=A0=A0 inet6 addr: fe80::4f8:d5ff:fe6e:cb9b/64 Scope:Link<br>
=A0=A0=A0=A0=A0=A0=A0=A0=A0 UP BROADCAST RUNNING MULTICAST=A0 MTU:1500=A0 M=
etric:1<br>=A0=A0=A0=A0=A0=A0=A0=A0=A0 RX packets:66 errors:0 dropped:0 ove=
rruns:0 frame:0<br>=A0=A0=A0=A0=A0=A0=A0=A0=A0 TX packets:41 errors:0 dropp=
ed:0 overruns:0 carrier:0<br>=A0=A0=A0=A0=A0=A0=A0=A0=A0 collisions:0 txque=
uelen:1000 <br>
=A0=A0=A0=A0=A0=A0=A0=A0=A0 RX bytes:8698 (8.4 KiB)=A0 TX bytes:11019 (10.7=
 KiB)<br><br>lo=A0=A0=A0=A0=A0=A0=A0 Link encap:Local Loopback=A0 <br>=A0=
=A0=A0=A0=A0=A0=A0=A0=A0 inet addr:127.0.0.1=A0 Mask:255.0.0.0<br>=A0=A0=A0=
=A0=A0=A0=A0=A0=A0 inet6 addr: ::1/128 Scope:Host<br>=A0=A0=A0=A0=A0=A0=A0=
=A0=A0 UP LOOPBACK RUNNING=A0 MTU:16436=A0 Metric:1<br>
=A0=A0=A0=A0=A0=A0=A0=A0=A0 RX packets:0 errors:0 dropped:0 overruns:0 fram=
e:0<br>=A0=A0=A0=A0=A0=A0=A0=A0=A0 TX packets:0 errors:0 dropped:0 overruns=
:0 carrier:0<br>=A0=A0=A0=A0=A0=A0=A0=A0=A0 collisions:0 txqueuelen:0 <br>=
=A0=A0=A0=A0=A0=A0=A0=A0=A0 RX bytes:0 (0.0 B)=A0 TX bytes:0 (0.0 B)<br>
<br>sit0=A0=A0=A0=A0=A0 Link encap:IPv6-in-IPv4=A0 <br>=A0=A0=A0=A0=A0=A0=
=A0=A0=A0 NOARP=A0 MTU:1480=A0 Metric:1<br>=A0=A0=A0=A0=A0=A0=A0=A0=A0 RX p=
ackets:0 errors:0 dropped:0 overruns:0 frame:0<br>=A0=A0=A0=A0=A0=A0=A0=A0=
=A0 TX packets:0 errors:0 dropped:0 overruns:0 carrier:0<br>=A0=A0=A0=A0=A0=
=A0=A0=A0=A0 collisions:0 txqueuelen:0 <br>
=A0=A0=A0=A0=A0=A0=A0=A0=A0 RX bytes:0 (0.0 B)=A0 TX bytes:0 (0.0 B)<br><br=
>root@beagleboard:~# cd /etc/newtwork<br>-sh: cd: /etc/newtwork: No such fi=
le or directory<br>root@beagleboard:~# cd /etc/<br>root@beagleboard:/etc# l=
s<br>X11=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0 network<br>
apm=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0 nsswitch.conf<br>asound.conf=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0 ofono<br>avahi=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0 pango<br>bash_completion.d=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0 passwd<br>beecrypt.conf=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 pa=
sswd-<br>bluetooth=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
 polkit-1<br>
busybox.links=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 profile<br>dbus-=
1=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 profile=
.d<br>default=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0 protocols<br>depmod.d=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0 rc0.d<br>device_table=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0 rc1.d<br>dropbear=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0 rc2.d<br>
filesystems=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 rc3.d<br>fon=
ts=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 rc4=
.d<br>formfactor=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 rc5.=
d<br>fstab=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0 rc6.d<br>gconf=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0 rcS.d<br>group=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0 resolv.conf<br>
group-=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 rp=
c<br>gshadow=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
 rpm<br>gshadow-=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0 rpm-postinsts<br>gtk-2.0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0 securetty<br>host.conf=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0 services<br>hostname=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 shadow<br>
hosts=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =
shadow-<br>init.d=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0 shells<br>inittab=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0 skel<br>inputrc=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0 sudoers<br>issue=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 sudoers.d<br><a href=3D"http://issue.net"=
>issue.net</a>=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 sys=
ctl.conf<br>
ld.so.cache=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 syslog-start=
up.conf<br>ld.so.conf=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
 syslog-startup.conf.busybox<br>libnl=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 terminfo<br>limits=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 timestamp<br>localtime=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 timezone<br>
login.access=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 ts.conf<br>log=
in.defs=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 udev<br>logro=
tate.d=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 udhcpc.d<br>match=
box=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 version<br>=
modprobe.d=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 volatile.c=
ache<br>modules=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0 wpa_supplicant.conf<br>
modules.conf=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 xdg<br>motd=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 zypp<=
br>mtab<br>root@beagleboard:/etc# cd network<br>root@beagleboard:/etc/netwo=
rk# ls<br>if-down.d=A0=A0=A0=A0=A0=A0 if-post-down.d=A0 if-pre-up.d=A0=A0=
=A0=A0 if-up.d=A0=A0=A0=A0=A0=A0=A0=A0 interfaces<br>
root@beagleboard:/etc/network# more interfaces<br># /etc/network/interfaces=
 -- configuration file for ifup(8), ifdown(8)<br>=A0<br># The loopback inte=
rface<br>auto lo<br>iface lo inet loopback<br><br># Wireless interfaces<br>
iface wlan0 inet dhcp<br>=A0=A0=A0=A0=A0=A0=A0 wireless_mode managed<br>=A0=
=A0=A0=A0=A0=A0=A0 wireless_essid any<br>=A0=A0=A0=A0=A0=A0=A0 wpa-driver w=
ext<br>=A0=A0=A0=A0=A0=A0=A0 wpa-conf /etc/wpa_supplicant.conf<br><br>iface=
 atml0 inet dhcp<br><br># Wired or wireless interfaces<br>
auto eth0<br>iface eth0 inet dhcp<br>iface eth1 inet dhcp<br><br># Ethernet=
/RNDIS gadget (g_ether) or LAN9514 on BeagleBoard xM<br>auto usb0<br>iface =
usb0 inet dhcp<br>--More-- (94% of 518 bytes)=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 <br>
# Bluetooth networking<br>iface bnep0 inet dhcp<br><br>root@beagleboard:/et=
c/network# ifconfgi=A0 ig -a<br>eth0=A0=A0=A0=A0=A0 Link encap:Ethernet=A0 =
HWaddr 06:F8:D5:6E:CB:9B=A0 <br>=A0=A0=A0=A0=A0=A0=A0=A0=A0 inet addr:169.2=
54.141.65=A0 Bcast:169.254.255.255=A0 Mask:255.255.0.0<br>
=A0=A0=A0=A0=A0=A0=A0=A0=A0 inet6 addr: fe80::4f8:d5ff:fe6e:cb9b/64 Scope:L=
ink<br>=A0=A0=A0=A0=A0=A0=A0=A0=A0 UP BROADCAST RUNNING MULTICAST=A0 MTU:15=
00=A0 Metric:1<br>=A0=A0=A0=A0=A0=A0=A0=A0=A0 RX packets:69 errors:0 droppe=
d:0 overruns:0 frame:0<br>=A0=A0=A0=A0=A0=A0=A0=A0=A0 TX packets:41 errors:=
0 dropped:0 overruns:0 carrier:0<br>
=A0=A0=A0=A0=A0=A0=A0=A0=A0 collisions:0 txqueuelen:1000 <br>=A0=A0=A0=A0=
=A0=A0=A0=A0=A0 RX bytes:9010 (8.7 KiB)=A0 TX bytes:11019 (10.7 KiB)<br><br=
>lo=A0=A0=A0=A0=A0=A0=A0 Link encap:Local Loopback=A0 <br>=A0=A0=A0=A0=A0=
=A0=A0=A0=A0 inet addr:127.0.0.1=A0 Mask:255.0.0.0<br>=A0=A0=A0=A0=A0=A0=A0=
=A0=A0 inet6 addr: ::1/128 Scope:Host<br>
=A0=A0=A0=A0=A0=A0=A0=A0=A0 UP LOOPBACK RUNNING=A0 MTU:16436=A0 Metric:1<br=
>=A0=A0=A0=A0=A0=A0=A0=A0=A0 RX packets:0 errors:0 dropped:0 overruns:0 fra=
me:0<br>=A0=A0=A0=A0=A0=A0=A0=A0=A0 TX packets:0 errors:0 dropped:0 overrun=
s:0 carrier:0<br>=A0=A0=A0=A0=A0=A0=A0=A0=A0 collisions:0 txqueuelen:0 <br>
=A0=A0=A0=A0=A0=A0=A0=A0=A0 RX bytes:0 (0.0 B)=A0 TX bytes:0 (0.0 B)<br><br=
>sit0=A0=A0=A0=A0=A0 Link encap:IPv6-in-IPv4=A0 <br>=A0=A0=A0=A0=A0=A0=A0=
=A0=A0 NOARP=A0 MTU:1480=A0 Metric:1<br>=A0=A0=A0=A0=A0=A0=A0=A0=A0 RX pack=
ets:0 errors:0 dropped:0 overruns:0 frame:0<br>=A0=A0=A0=A0=A0=A0=A0=A0=A0 =
TX packets:0 errors:0 dropped:0 overruns:0 carrier:0<br>
=A0=A0=A0=A0=A0=A0=A0=A0=A0 collisions:0 txqueuelen:0 <br>=A0=A0=A0=A0=A0=
=A0=A0=A0=A0 RX bytes:0 (0.0 B)=A0 TX bytes:0 (0.0 B)<br><br>root@beagleboa=
rd:/etc/network# cd /var/log<br>root@beagleboard:/var/log# ls<br>Xorg.0.log=
=A0 messages=A0=A0=A0 wtmp<br>root@beagleboard:/var/log# cat Xorg.0.log <br=
>
[3234011.932] <br>X.Org X Server 1.11.2<br>Release Date: 2011-11-04<br>[323=
4011.933] X Protocol Version 11, Revision 0<br>[3234011.934] Build Operatin=
g System: Linux 3.3.4-5.fc17.x86_64 x86_64 <br>[3234011.934] Current Operat=
ing System: Linux beagleboard 3.4.1-yocto-standard #<br>
1 Wed Jul 25 17:29:01 MDT 2012 armv7l<br>[3234011.934] Kernel command line:=
 console=3Dtty0 console=3DttyO2,115200n8 root=3D/dev<br>/mmcblk0p2 rootwait=
 rootfstype=3Dext3 ro<br>[3234011.938] Build Date: 25 July 2012=A0 06:09:49=
PM<br>
[3234011.939]=A0 <br>[3234011.939] Current version of pixman: 0.26.2<br>[32=
34011.941] Before reporting problems, check <a href=3D"http://wiki.x.org">h=
ttp://wiki.x.org</a><br>to make sure that you have the latest version.<br>[=
3234011.941] Markers: (--) probed, (**) from config file, (=3D=3D) default =
setting,<br>
(++) from command line, (!!) notice, (II) informational,<br>(WW) warning, (=
EE) error, (NI) not implemented, (??) unknown.<br>[3234011.943] (=3D=3D) Lo=
g file: &quot;/var/log/Xorg.0.log&quot;, Time: Thu Jul 26 00:50:08 20<br>12=
<br>
[3234011.948] (=3D=3D) Using config file: &quot;/etc/X11/xorg.conf&quot;<br=
>[3234011.948] (=3D=3D) Using system config directory &quot;/usr/share/X11/=
xorg.conf.d&quot;<br>[3234011.952] (=3D=3D) ServerLayout &quot;Builtin Defa=
ult Layout&quot;<br>
[3234011.952] (**) |--&gt;Screen &quot;Builtin Default fbdev Screen 0&quot;=
 (0)<br>[3234011.952] (**) |=A0=A0 |--&gt;Monitor &quot;Builtin Default Mon=
itor&quot;<br>[3234011.960] (**) |=A0=A0 |--&gt;Device &quot;Builtin Defaul=
t fbdev Device 0&quot;<br>
[3234011.960] (**) Option &quot;DontZap&quot; &quot;0&quot;<br>[3234011.960=
] (**) Option &quot;AutoAddDevices&quot; &quot;False&quot;<br>[3234011.960]=
 (**) Not automatically adding devices<br>[3234011.960] (=3D=3D) Automatica=
lly enabling devices<br>
[3234011.963] (WW) The directory &quot;/usr/share/fonts/X11/misc/&quot; doe=
s not exist.<br>[3234011.963] Entry deleted from font path.<br>[3234011.963=
] (WW) The directory &quot;/usr/share/fonts/X11/TTF/&quot; does not exist.<=
br>
[3234011.963] Entry deleted from font path.<br>[3234011.963] (WW) The direc=
tory &quot;/usr/share/fonts/X11/OTF/&quot; does not exist.<br>[3234011.963]=
 Entry deleted from font path.<br>[3234011.964] (WW) The directory &quot;/u=
sr/share/fonts/X11/Type1/&quot; does not exist.<br>
[3234011.964] Entry deleted from font path.<br>[3234011.964] (WW) The direc=
tory &quot;/usr/share/fonts/X11/100dpi/&quot; does not exist.<br>[3234011.9=
64] Entry deleted from font path.<br>[3234011.964] (WW) The directory &quot=
;/usr/share/fonts/X11/75dpi/&quot; does not exist.<br>
[3234011.964] Entry deleted from font path.<br>[3234011.964] (=3D=3D) FontP=
ath set to:<br><br>[3234011.964] (=3D=3D) ModulePath set to &quot;/usr/lib/=
xorg/modules&quot;<br>[3234011.964] (=3D=3D) |--&gt;Input Device &quot;&lt;=
default pointer&gt;&quot;<br>
[3234011.964] (=3D=3D) |--&gt;Input Device &quot;&lt;default keyboard&gt;&q=
uot;<br>[3234011.964] (=3D=3D) The core pointer device wasn&#39;t specified=
 explicitly in the la<br>yout.<br>Using the default mouse configuration.<br=
>[3234011.964] (=3D=3D) The core keyboard device wasn&#39;t specified expli=
citly in the l<br>
ayout.<br>Using the default keyboard configuration.<br>[3234011.964] (II) L=
oader magic: 0x17b930<br>[3234011.964] (II) Module ABI versions:<br>[323401=
1.964] X.Org ANSI C Emulation: 0.4<br>[3234011.964] X.Org Video Driver: 11.=
0<br>
[3234011.964] X.Org XInput driver : 13.0<br>[3234011.964] X.Org Server Exte=
nsion : 6.0<br>[3234011.965] (II) Open APM successful<br>[3234011.965] (II)=
 &quot;extmod&quot; will be loaded. This was enabled by default and also<br=
>
=A0specified in the config file.<br>[3234011.965] (II) &quot;dbe&quot; will=
 be loaded. This was enabled by default and also sp<br>ecified in the confi=
g file.<br>[3234011.965] (II) &quot;dri2&quot; will be loaded by default.<b=
r>
[3234011.965] (II) LoadModule: &quot;extmod&quot;<br>[3234011.980] (WW) War=
ning, couldn&#39;t open module extmod<br>[3234011.980] (II) UnloadModule: &=
quot;extmod&quot;<br>[3234011.980] (II) Unloading extmod<br>[3234011.980] (=
EE) Failed to load module &quot;extmod&quot; (module does not exist, 0)<br>
[3234011.985] (II) LoadModule: &quot;dbe&quot;<br>[3234011.986] (WW) Warnin=
g, couldn&#39;t open module dbe<br>[3234011.986] (II) UnloadModule: &quot;d=
be&quot;<br>[3234011.986] (II) Unloading dbe<br>[3234011.986] (EE) Failed t=
o load module &quot;dbe&quot; (module does not exist, 0)<br>
[3234011.986] (II) LoadModule: &quot;glx&quot;<br>[3234011.987] (WW) Warnin=
g, couldn&#39;t open module glx<br>[3234011.987] (II) UnloadModule: &quot;g=
lx&quot;<br>[3234011.987] (II) Unloading glx<br>[3234011.987] (EE) Failed t=
o load module &quot;glx&quot; (module does not exist, 0)<br>
[3234011.987] (II) LoadModule: &quot;record&quot;<br>[3234011.988] (WW) War=
ning, couldn&#39;t open module record<br>[3234011.988] (II) UnloadModule: &=
quot;record&quot;<br>[3234011.988] (II) Unloading record<br>[3234011.988] (=
EE) Failed to load module &quot;record&quot; (module does not exist, 0)<br>
[3234011.988] (II) LoadModule: &quot;dri&quot;<br>[3234011.989] (WW) Warnin=
g, couldn&#39;t open module dri<br>[3234011.989] (II) UnloadModule: &quot;d=
ri&quot;<br>[3234011.989] (II) Unloading dri<br>[3234011.989] (EE) Failed t=
o load module &quot;dri&quot; (module does not exist, 0)<br>
[3234011.990] (II) LoadModule: &quot;dri2&quot;<br>[3234011.990] (WW) Warni=
ng, couldn&#39;t open module dri2<br>[3234011.990] (II) UnloadModule: &quot=
;dri2&quot;<br>[3234011.990] (II) Unloading dri2<br>[3234011.990] (EE) Fail=
ed to load module &quot;dri2&quot; (module does not exist, 0)<br>
[3234011.991] (II) LoadModule: &quot;omapfb&quot;<br>[3234011.991] (II) Loa=
ding /usr/lib/xorg/modules/drivers/omapfb_drv.so<br>[3234011.996] (II) Modu=
le omapfb: vendor=3D&quot;X.Org Foundation&quot;<br>[3234011.996] compiled =
for 1.11.2, module version =3D 0.1.1<br>
[3234011.996] ABI class: X.Org Video Driver, version 11.0<br>[3234011.996] =
(II) LoadModule: &quot;mouse&quot;<br>[3234011.997] (II) Loading /usr/lib/x=
org/modules/input/mouse_drv.so<br>[3234012.001] (II) Module mouse: vendor=
=3D&quot;X.Org Foundation&quot;<br>
[3234012.001] compiled for 1.11.2, module version =3D 1.7.2<br>[3234012.001=
] Module class: X.Org XInput Driver<br>[3234012.001] ABI class: X.Org XInpu=
t driver, version 13.0<br>[3234012.001] (II) LoadModule: &quot;kbd&quot;<br=
>
[3234012.002] (II) Loading /usr/lib/xorg/modules/input/kbd_drv.so<br>[32340=
12.005] (II) Module kbd: vendor=3D&quot;X.Org Foundation&quot;<br>[3234012.=
006] compiled for 1.11.2, module version =3D 1.6.1<br>[3234012.006] Module =
class: X.Org XInput Driver<br>
[3234012.006] ABI class: X.Org XInput driver, version 13.0<br>[3234012.006]=
 (II) omapfb: Driver for OMAP framebuffer (omapfb) and external LCD<br>=A0c=
ontrollers:<br>omap1/2/3, S1D13745, HWA742<br>[3234012.006] (--) using VT n=
umber 1<br>
<br>[3234012.030] (WW) Falling back to old probe method for OMAPFB<br>[3234=
012.031] (II) Loading /usr/lib/xorg/modules/drivers/omapfb_drv.so<br>[32340=
12.031] (WW) VGA arbiter: cannot open kernel arbiter, no multi-card suppor<=
br>
t<br>[3234012.032] (WW) Error opening /sys/devices/platform/omapfb/ctrl/nam=
e: No such<br>=A0file or directory<br>[3234012.032] (WW) Can&#39;t autodete=
ct LCD controller, assuming internal<br>[3234012.032] (II) LCD controller: =
internal<br>
[3234012.032] (II) omapfb(0): Base plane capabilities:<br>[3234012.032] (II=
) omapfb(0): Base plane supports the following image formats:<br>[3234012.0=
32] (II) omapfb(0): VideoRAM: 1616KiB (SDRAM)<br>[3234012.032] (II) omapfb(=
0): Creating default Display subsection in Screen sect<br>
ion<br>&quot;Builtin Default fbdev Screen 0&quot; for depth/fbbpp 24/32<br>=
[3234012.032] (--) omapfb(0): Depth 24, (=3D=3D) framebuffer bpp 32<br>[323=
4012.032] (=3D=3D) omapfb(0): RGB weight 888<br>[3234012.032] (=3D=3D) omap=
fb(0): Default visual is TrueColor<br>
[3234012.032] (II) omapfb(0): Rotate test version 0.02<br>[3234012.036] (II=
) omapfb(0): Output LCD using monitor section Builtin Default M<br>onitor<b=
r>[3234012.037] (II) omapfb(0): Printing probed modes for output LCD<br>
[3234012.037] (II) omapfb(0): Modeline &quot;720x574&quot;x25.0=A0=A0 13.50=
=A0 720 732 796 864=A0 <br>574 579 584 625 (15.6 kHz)<br>[3234012.037] (II)=
 omapfb(0): Output LCD connected<br>[3234012.037] (II) omapfb(0): Using exa=
ct sizes for initial modes<br>
[3234012.037] (II) omapfb(0): Output LCD using initial mode 720x574<br>[323=
4012.037] (II) omapfb(0): Using default gamma of (1.0, 1.0, 1.0) unless oth=
e<br>rwise stated.<br>[3234012.037] (II) omapfb(0): XRandR extension initia=
lized<br>
[3234012.037] (--) omapfb(0): Virtual size is 720x574 (pitch 720)<br>[32340=
12.037] (**) omapfb(0):=A0 Mode &quot;720x574&quot;: 13.5 MHz, 15.6 kHz, 25=
.0 Hz<br>[3234012.037] (II) omapfb(0): Modeline &quot;720x574&quot;x25.0=A0=
=A0 13.50=A0 720 732 796 864=A0 <br>
574 579 584 625 (15.6 kHz)<br>[3234012.038] (=3D=3D) omapfb(0): DPI set to =
(96, 96)<br>[3234012.038] (--) Depth 24 pixmap format is 32 bpp<br>[3234012=
.052] (II) Loading sub module &quot;fb&quot;<br>[3234012.053] (II) LoadModu=
le: &quot;fb&quot;<br>
[3234012.053] (II) Loading /usr/lib/xorg/modules/libfb.so<br>[3234012.068] =
(II) Module fb: vendor=3D&quot;X.Org Foundation&quot;<br>[3234012.069] comp=
iled for 1.11.2, module version =3D 1.0.0<br>[3234012.069] ABI class: X.Org=
 ANSI C Emulation, version 0.4<br>
[3234012.080] (=3D=3D) omapfb(0): DPMS enabled<br>[3234012.080] (EE) omapfb=
(0): Failed to open /dev/fb2: No such file or directory<br>[3234012.080] (E=
E) omapfb(0): XVScreenInit failed<br>[3234012.080] (II) omapfb(0): RandR 1.=
2 enabled, ignore the following RandR disa<br>
bled message.<br>[3234012.080] (--) RandR disabled<br>[3234012.080] (II) In=
itializing built-in extension Generic Event Extension<br>[3234012.081] (II)=
 Initializing built-in extension SHAPE<br>[3234012.081] (II) Initializing b=
uilt-in extension MIT-SHM<br>
[3234012.081] (II) Initializing built-in extension XInputExtension<br>[3234=
012.081] (II) Initializing built-in extension XTEST<br>[3234012.081] (II) I=
nitializing built-in extension BIG-REQUESTS<br>[3234012.081] (II) Initializ=
ing built-in extension SYNC<br>
[3234012.081] (II) Initializing built-in extension XKEYBOARD<br>[3234012.08=
1] (II) Initializing built-in extension XC-MISC<br>[3234012.081] (II) Initi=
alizing built-in extension XFIXES<br>[3234012.081] (II) Initializing built-=
in extension RENDER<br>
[3234012.081] (II) Initializing built-in extension RANDR<br>[3234012.081] (=
II) Initializing built-in extension COMPOSITE<br>[3234012.081] (II) Initial=
izing built-in extension DAMAGE<br>[3234012.179] (II) omapfb(0): Setting sc=
reen physical size to 190 x 151<br>
[3234012.762] (II) Using input driver &#39;mouse&#39; for &#39;&lt;default =
pointer&gt;&#39;<br>[3234012.762] (II) Loading /usr/lib/xorg/modules/input/=
mouse_drv.so<br>[3234012.762] (**) Option &quot;CorePointer&quot;<br>[32340=
12.762] (**) &lt;default pointer&gt;: always reports core events<br>
[3234012.762] (WW) &lt;default pointer&gt;: No Device specified, looking fo=
r one...<br>[3234012.763] (II) &lt;default pointer&gt;: Setting Device opti=
on to &quot;/dev/input/mice&quot;<br>[3234012.763] (--) &lt;default pointer=
&gt;: Device: &quot;/dev/input/mice&quot;<br>
[3234012.763] (=3D=3D) &lt;default pointer&gt;: Protocol: &quot;Auto&quot;<=
br>[3234012.763] (**) &lt;default pointer&gt;: always reports core events<b=
r>[3234012.763] (**) Option &quot;Device&quot; &quot;/dev/input/mice&quot;<=
br>
[3234012.763] (=3D=3D) &lt;default pointer&gt;: Emulate3Buttons, Emulate3Ti=
meout: 50<br>[3234012.764] (**) &lt;default pointer&gt;: ZAxisMapping: butt=
ons 4 and 5<br>[3234012.764] (**) &lt;default pointer&gt;: Buttons: 9<br>[3=
234012.764] (II) XINPUT: Adding extended input device &quot;&lt;default poi=
nter&gt;&quot; (typ<br>
e: MOUSE, id 6)<br>[3234012.764] (**) &lt;default pointer&gt;: (accel) keep=
ing acceleration scheme 1<br>[3234012.764] (**) &lt;default pointer&gt;: (a=
ccel) acceleration profile 0<br>[3234012.764] (**) &lt;default pointer&gt;:=
 (accel) acceleration factor: 2.000<br>
[3234012.764] (**) &lt;default pointer&gt;: (accel) acceleration threshold:=
 4<br>[3234012.765] (II) &lt;default pointer&gt;: Setting mouse protocol to=
 &quot;ExplorerPS/2&quot;<br>[3234013.059] (II) &lt;default pointer&gt;: ps=
2EnableDataReporting: succeeded<br>
[3234013.059] (II) Using input driver &#39;kbd&#39; for &#39;&lt;default ke=
yboard&gt;&#39;<br>[3234013.059] (II) Loading /usr/lib/xorg/modules/input/k=
bd_drv.so<br>[3234013.060] (**) Option &quot;CoreKeyboard&quot;<br>[3234013=
.060] (**) &lt;default keyboard&gt;: always reports core events<br>
[3234013.060] (**) &lt;default keyboard&gt;: always reports core events<br>=
[3234013.060] (**) Option &quot;Protocol&quot; &quot;standard&quot;<br>[323=
4013.060] (**) Option &quot;XkbRules&quot; &quot;base&quot;<br>[3234013.060=
] (**) Option &quot;XkbModel&quot; &quot;pc105&quot;<br>
[3234013.060] (**) Option &quot;XkbLayout&quot; &quot;us&quot;<br>[3234013.=
060] (II) XINPUT: Adding extended input device &quot;&lt;default keyboard&g=
t;&quot; (ty<br>pe: KEYBOARD, id 7)<br>[3234013.150] (II) config/udev: Addi=
ng input device CHESEN USB Keyboard (/dev/in<br>
put/event0)<br>[3234013.150] (II) AutoAddDevices is off - not adding device=
.<br>[3234013.152] (II) config/udev: Adding input device CHESEN USB Keyboar=
d (/dev/in<br>put/event1)<br>[3234013.152] (II) AutoAddDevices is off - not=
 adding device.<br>
[3234013.153] (II) config/udev: Adding input device PixArt USB Optical Mous=
e (/d<br>ev/input/event2)<br>[3234013.154] (II) AutoAddDevices is off - not=
 adding device.<br>[3234013.155] (II) config/udev: Adding input device PixA=
rt USB Optical Mouse (/d<br>
ev/input/mouse0)<br>[3234013.155] (II) AutoAddDevices is off - not adding d=
evice.<br>root@beagleboard:/var/log# cd /etc/network<br>root@beagleboard:/e=
tc/network# vi interfaces <br># /etc/network/interfaces -- configuration fi=
le for ifup(8), ifdown(8)<br>
<br># The loopback interface<br>auto lo<br>iface lo inet loopback<br><br># =
Wireless interfaces<br>iface wlan0 inet dhcpwireless_mode managedwireless_e=
ssid anywpa-driver wextwpa-conf /etc/wpa_supplicant.conf<br><br>iface atml0=
 inet dhcp<br>
<br># Wired or wireless interfaces<br>auto eth0<br>iface eth0 inet dhcp<br>=
iface eth1 inet dhcp<br><br># Ethernet/RNDIS gadget (g_ether) or LAN9514 on=
 BeagleBoard xM<br>auto usb0<br>iface usb0 inet dhcp- interfaces 1/27 3%<br=
>
- interfaces 2/27 7%<br>- interfaces 3/27 11%<br>- interfaces 4/27 14%<br>-=
 interfaces 5/27 18%<br>- interfaces 6/27 22%<br>- interfaces 7/27 25%<br>-=
 interfaces 8/27 29%<br>- interfaces 9/27 33%<br>- interfaces 10/27 37%<br>
- interfaces 11/27 40%<br>- interfaces 12/27 44%<br>- interfaces 13/27 48%<=
br>- interfaces 14/27 51%<br>- interfaces 15/27 55%<br>- interfaces 16/27 5=
9%<br>- interfaces 17/27 62%<br>- interfaces 18/27 66%<br>- interfaces 19/2=
7 70%=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 <br>
iface eth1 inet dhcp<br>=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 <br># Ethernet/RN=
DIS gadget (g_ether) or LAN9514 on BeagleBoard xM<br>auto usb0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0 I interfaces [Modified] 19/28 67%adadaddress192.168.0.3I=
 interfaces [Modified] 20/29 68%9<br>
net=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 <br>iface eth1 inet dhc=
p<br>=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 <br># Ethernet/RNDIS gadget (g_ethe=
r) or LAN9514 on BeagleBoard xMnetwork 192.168.0.0<br>=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 <br>
iface eth1 inet dhcp<br>=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 I interfaces [Mod=
ified] 21/30 70%boardcast192.168.0.25I interfaces [Modified] 22/31 70%5<br>=
net=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 <br>iface eth1 inet dhc=
pnetmask255.255.255.0<br>
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 I interfaces [Mod=
ified] 23/32 71%gatewgatewgateway192.168.0.1=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0 <br># The loopback interface<br>auto lo=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 <br>iface lo inet loopback<br>
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 <br># Wirel=
ess interfaces<br>iface wlan0 inet dhcp<br>=A0=A0=A0=A0=A0=A0=A0 wireless_m=
ode managedessid any=A0=A0 pa-driver wext=A0=A0 conf /etc/wpa_supplicant.co=
nf=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0 <br>iface atml0 inet dhcp<br>
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 <br># Wired or=
 wireless interfaces<br>auto eth0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0 <br>iface eth0 inet dhcp<br>address 192.168.0.39<br>netw=
ork 192.168.0.0 <br>boardcast 192.168.0.255<br>netmask 255.255.255.0=A0 <br=
>gateway 192.168.0.1=A0 <br>
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 I interfaces [Modifi=
ed] 24/33 72%I interfaces [Modified] 23/33 69%I interfaces [Modified] 22/33=
 66%I interfaces [Modified] 21/33 63%I interfaces [Modified] 20/33 60%I int=
erfaces [Modified] 19/33 57%I interfaces [Modified] 18/33 54%iififaifacifac=
ecdhcpwdhcpsdhcptdhcpadhcp- interfaces [Modified] 18/33 54%- interfaces [Mo=
dified] 18/33 54%:q!- interfaces [Modified] 18/33 54%root@beagleboard:/etc/=
network# vi interfaces <br>
# /etc/network/interfaces -- configuration file for ifup(8), ifdown(8)<br><=
br># The loopback interface<br>auto lo<br>iface lo inet loopback<br><br># W=
ireless interfaces<br>iface wlan0 inet dhcpwireless_mode managedwireless_es=
sid anywpa-driver wextwpa-conf /etc/wpa_supplicant.conf<br>
<br>iface atml0 inet dhcp<br><br># Wired or wireless interfaces<br>auto eth=
0<br>iface eth0 inet dhcp<br>iface eth1 inet dhcp<br><br># Ethernet/RNDIS g=
adget (g_ether) or LAN9514 on BeagleBoard xM<br>auto usb0<br>iface usb0 ine=
t dhcp- interfaces 1/27 3%<br>
- interfaces 2/27 7%<br>- interfaces 3/27 11%<br>- interfaces 4/27 14%<br>-=
 interfaces 5/27 18%<br>- interfaces 6/27 22%<br>- interfaces 7/27 25%<br>-=
 interfaces 8/27 29%<br>- interfaces 9/27 33%<br>- interfaces 10/27 37%<br>
- interfaces 11/27 40%<br>- interfaces 12/27 44%<br>- interfaces 13/27 48%<=
br>- interfaces 14/27 51%<br>- interfaces 15/27 55%<br>- interfaces 16/27 5=
9%<br>- interfaces 17/27 62%<br>- interfaces 18/27 66%<br>- interfaces 19/2=
7 70%=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 <br>
iface eth1 inet dhcp<br>=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 <br># Ethernet/RN=
DIS gadget (g_ether) or LAN9514 on BeagleBoard xM<br>auto usb0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0 I interfaces [Modified] 19/28 67%adadaddreaddreaddress 1=
92.168.0.I interfaces [Modified] 20/29 68%39<br>
ne=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 <br>iface eth1 inet d=
hcp<br>=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 <br># Ethernet/RNDIS gadget (g_e=
ther) or LAN9514 on BeagleBoard xMnetwork192.168.0.I interfaces [Modified] =
21/30 70%0<br>
boa=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 <br>iface eth1 inet dhc=
p<br>=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 boardcast 192.168.0.25I interfaces =
[Modified] 22/31 70%5<br>net=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0 <br>iface eth1 inet dhcpnetmask 255.255.255.0I interfaces [Modified] 23=
/32 71%<br>
gat=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 gatgateway192.168.0.=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 <br># The loopback i=
nterface<br>auto lo=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 <br>ifa=
ce lo inet loopback<br>=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0 <br>
# Wireless interfaces<br>iface wlan0 inet dhcp<br>=A0=A0=A0=A0=A0=A0=A0 wir=
eless_mode managedessid any=A0=A0 pa-driver wext=A0=A0 conf /etc/wpa_suppli=
cant.conf=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 <br>iface atml0 inet dhcp<br>=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 <br>
# Wired or wireless interfaces<br>auto eth0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 <br>iface eth0 inet dhcp<br>address 192.168.=
0.39<br>network 192.168.0.0 <br>boardcast 192.168.0.255<br>netmask 255.255.=
255.0=A0 <br>gateway 192.168.0.1=A0 <br>=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0 I interfaces [Modified] 24/33 72%- interfaces [Modified]=
 24/33 72%- interfaces [Modified] 23/33 69%- interfaces [Modified] 22/33 66=
%- interfaces [Modified] 21/33 63%- interfaces [Modified] 20/33 60%- interf=
aces [Modified] 19/33 57%aadaddaddraddre=A0 I interfaces [Modified] 19/33 5=
7%42- interfaces [Modified] 19/33 57%- interfaces [Modified] 19/33 57%- int=
erfaces [Modified] 18/33 54%=A0=A0=A0 I interfaces [Modified] 18/33 54%stat=
ic- interfaces [Modified] 18/33 54%- interfaces [Modified] 18/33 54%:wq&quo=
t;interfaces&quot; 33L, 628Croot@beagleboard:/etc/network# reboot<br>
<br>Broadcast message from root@beagleboard (ttyO2) (Thu Jul 26 01:20:05 20=
12):<br>The system is going down for reboot NOW!<br>INIT: \B3level: 6<br>IN=
IT: Sending processes the TERM signal<br>root@beagleboard:/etc/network# INI=
T: Sending processeStopping Dropbear SSH server: stopped /usr/sbin/dropbear=
 (<br>
pid 526)<br>dropbear.<br>=A0* Stopping Avahi mDNS/DNS-SD Daemon: avahi-daem=
on<br>=A0=A0 ...done.<br>Stopping advanced power management daemon: stopped=
 /usr/sbin/apmd (pid 529)<br>apmd.<br>Stopping system message bus: Stopping=
 syslogd/klogd: stopped syslogd (pid 539)<br>
stopped klogd (pid 541)<br>done<br>Stopping XServer<br>xinit: connection to=
 X server lost<br><br>waiting for X server to shut down Server terminated s=
uccessfully (0). Closing lo<br>g file.<br>Stopping Connection Manager<br>
Stopping Telephony daemon<br>ALSA: Storing mixer settings...<br>Bridge fire=
walling registered<br>Deconfiguring network interfaces... ifconfig: SIOCGIF=
FLAGS: No such device<br>Sending all processes the TERM signal...<br><br>
xinit: unexpected signal 15<br>Sending all processes the KILL signal...<br>=
Unmounting remote filesystems...<br>Stopping portmap daemon...<br>Deactivat=
ing swap...<br>Unmounting local filesystems...<br>Rebooting... Restarting s=
ystem.<br>
<br><br>Texas Instruments X-Loader 1.5.0 (Jul 25 2012 - 18:31:56)<br>Beagle=
 xM<br>Reading boot sector<br>Loading u-boot.bin from mmc<br><br><br>U-Boot=
 2011.06 (Jul 25 2012 - 18:32:05)<br><br>OMAP3630/3730-GP ES2.1, CPU-OPP2, =
L3-165MHz, Max CPU Clock 1 Ghz<br>
OMAP3 Beagle board + LPDDR/NAND<br>I2C:=A0=A0 ready<br>DRAM:=A0 512 MiB<br>=
NAND:=A0 0 MiB<br>MMC:=A0=A0 OMAP SD/MMC: 0<br>*** Warning - readenv() fail=
ed, using default environment<br><br>In:=A0=A0=A0 serial<br>Out:=A0=A0 seri=
al<br>Err:=A0=A0 serial<br>
Beagle unknown 0x02<br>No EEPROM on expansion board<br>Die ID #158000029ff8=
00000160a7450b02602d<br>Hit any key to stop autoboot: 10=A0 9=A0 0 <br>OMAP=
3 <a href=3D"http://beagleboard.org">beagleboard.org</a> # setenv bootcmd &=
#39;mmc rescan 0; fatload mmc 0:1 0x80300000<br>
=A0uImage; bootm <br>&gt; 0x80300000&#39;<br>OMAP3 <a href=3D"http://beagle=
board.org">beagleboard.org</a> # setenv bootargs &#39;console=3Dtty0 consol=
e=3DttyO2,115200n8 <br>&gt; root=3D/dev/mmcblk0p2 rootwait rootfstype=3Dext=
3 ro&#39;<br>
OMAP3 <a href=3D"http://beagleboard.org">beagleboard.org</a> # boot<br>read=
ing uImage<br><br>4127776 bytes read<br>Wrong Image Format for bootm comman=
d<br>ERROR: can&#39;t get kernel image!<br>OMAP3 <a href=3D"http://beaglebo=
ard.org">beagleboard.org</a> # setenv bootcmd &#39;mmc rescan 0; fatload mm=
c 0:1 0x80300000<br>
=A0uImage; bootm <br>&gt; 0x80300000&#39;<br>OMAP3 <a href=3D"http://beagle=
board.org">beagleboard.org</a> # setenv bootargs &#39;console=3Dtty0 consol=
e=3DttyO2,115200n8 <br>&gt; root=3D/dev/mmcblk0p2 rootwait rootfstype=3Dext=
3 ro&#39;<br>
OMAP3 <a href=3D"http://beagleboard.org">beagleboard.org</a> # boot<br>read=
ing uImage<br><br>4127776 bytes read<br>Wrong Image Format for bootm comman=
d<br>ERROR: can&#39;t get kernel image!<br>OMAP3 <a href=3D"http://beaglebo=
ard.org">beagleboard.org</a> # setenv bootcmd &#39;mmc rescan 0; fatload mm=
c 0:1 0x80300000<br>
=A0uImage; bootm <br>&gt; 0x80300000&#39;<br>OMAP3 <a href=3D"http://beagle=
board.org">beagleboard.org</a> # setenv bootcmd &#39;mmc rescan 0; fatload =
mmc 0:1 0x80300000<br>&gt;=A0 uImage; <br>&gt; <br>&gt; &lt;INTERRUPT&gt;<b=
r>
OMAP3 <a href=3D"http://beagleboard.org">beagleboard.org</a> # setenv bootc=
md &#39;mmc rescan 0; fatload mmc 0:1 0x80300000<br>=A0uImage; bootm <br>&g=
t; 0x80300000&#39;<br>OMAP3 <a href=3D"http://beagleboard.org">beagleboard.=
org</a> # setenv bootcmd &#39;mmc rescan 0; fatla a oad mmc 0:1 0x89 030000=
0 uIame=A0 mge;bootm <br>
&gt; 0x80300000&#39;<br>OMAP3 <a href=3D"http://beagleboard.org">beagleboar=
d.org</a> # boot<br>reading uIamge<br><br>** Unable to read &quot;uIamge&qu=
ot; from mmc 0:1 **<br>Wrong Image Format for bootm command<br>ERROR: can&#=
39;t get kernel image!<br>
OMAP3 <a href=3D"http://beagleboard.org">beagleboard.org</a> # <br><br>Texa=
s Instruments X-Loader 1.5.0 (Jul 25 2012 - 18:31:56)<br>Beagle xM<br>Readi=
ng boot sector<br>Loading u-boot.bin from mmc<br><br><br>U-Boot 2011.06 (Ju=
l 25 2012 - 18:32:05)<br>
<br>OMAP3630/3730-GP ES2.1, CPU-OPP2, L3-165MHz, Max CPU Clock 1 Ghz<br>OMA=
P3 Beagle board + LPDDR/NAND<br>I2C:=A0=A0 ready<br>DRAM:=A0 512 MiB<br>NAN=
D:=A0 0 MiB<br>MMC:=A0=A0 OMAP SD/MMC: 0<br>*** Warning - readenv() failed,=
 using default environment<br>
<br>In:=A0=A0=A0 serial<br>Out:=A0=A0 serial<br>Err:=A0=A0 serial<br>Beagle=
 unknown 0x02<br>No EEPROM on expansion board<br>Die ID #158000029ff8000001=
60a7450b02602d<br>Hit any key to stop autoboot: 10=A0 9=A0 8=A0 0 <br>OMAP3=
 <a href=3D"http://beagleboard.org">beagleboard.org</a> # setenv bootcmd &#=
39;mmc rescan 0; fatload mmc 0:1 0x80300000 uImage; bootm <br>
&gt; 0x80300000&#39;<br>OMAP3 <a href=3D"http://beagleboard.org">beagleboar=
d.org</a> # setenv bootargs &#39;console=3Dtty0 console=3DttyO2,115200n8 <b=
r>&gt; root=3D/dev/mmcblk0p2 rootwait rootfstype=3Dext3 ro&#39;<br>OMAP3 <a=
 href=3D"http://beagleboard.org">beagleboard.org</a> # boot<br>
reading uImage<br><br>4127776 bytes read<br>Wrong Image Format for bootm co=
mmand<br>ERROR: can&#39;t get kernel image!<br>OMAP3 <a href=3D"http://beag=
leboard.org">beagleboard.org</a> # setenv mpurate &#39;auto&#39;<br>OMAP3 <=
a href=3D"http://beagleboard.org">beagleboard.org</a> # setenv dvimode &#39=
;hd720 omapfb.vram=3D0:8M,1:4M,2:4M&#39;<br>
OMAP3 <a href=3D"http://beagleboard.org">beagleboard.org</a> # setenv vram =
&#39;16M&#39;<br>OMAP3 <a href=3D"http://beagleboard.org">beagleboard.org</=
a> # setenv optargs &#39;consoleblank=3D0&#39;<br>OMAP3 <a href=3D"http://b=
eagleboard.org">beagleboard.org</a> # setenv console tty0 console=3DttyO2,1=
15200n8&#39;<br>
&gt; <br>&gt; &lt;INTERRUPT&gt;<br>OMAP3 <a href=3D"http://beagleboard.org"=
>beagleboard.org</a> # setenvc=A0 console &#39;tty0 console=3DttyO2,115200n=
8&#39;<br>OMAP3 <a href=3D"http://beagleboard.org">beagleboard.org</a> # bo=
ot<br>
reading uImage<br><br>4127776 bytes read<br>Wrong Image Format for bootm co=
mmand<br>ERROR: can&#39;t get kernel image!<br>OMAP3 <a href=3D"http://beag=
leboard.org">beagleboard.org</a> # printenv<br>baudrate=3D115200<br>bootarg=
s=3Dconsole=3Dtty0 console=3DttyO2,115200n8 \<br>
root=3D/dev/mmcblk0p2 rootwait rootfstype=3Dext3 ro<br>bootcmd=3Dmmc rescan=
 0; fatload mmc 0:1 0x80300000 uImage; bootm \<br>0x80300000<br>bootdelay=
=3D10<br>buddy=3Dnone<br>console=3Dtty0 console=3DttyO2,115200n8<br>default=
display=3Ddvi<br>
dieid#=3D158000029ff800000160a7450b02602d<br>dvimode=3Dhd720 omapfb.vram=3D=
0:8M,1:4M,2:4M<br>filesize=3D3EFC20<br>importbootenv=3Decho Importing envir=
onment from mmc ...; env import -t $loadaddr $filesize<br>loadaddr=3D0x8200=
0000<br>
loadbootenv=3Dfatload mmc ${mmcdev} ${loadaddr} uEnv.txt<br>loaduimage=3Dfa=
tload mmc ${mmcdev} ${loadaddr} uImage<br>mmcargs=3Dsetenv bootargs console=
=3D${console} mpurate=3D${mpurate} vram=3D${vram} omapfb.mode=3Ddvi:${dvimo=
de} omapfb.debug=3Dy omapdss.def_disp=3D${defaultdisplay} ro<br>
ot=3D${mmcroot} rootfstype=3D${mmcrootfstype}<br>mmcboot=3Decho Booting fro=
m mmc ...; run mmcargs; bootm ${loadaddr}<br>mmcdev=3D0<br>mmcroot=3D/dev/m=
mcblk0p2 rw<br>mmcrootfstype=3Dext3 rootwait<br>mpurate=3Dauto<br>nandargs=
=3Dsetenv bootargs console=3D${console} mpurate=3D${mpurate} vram=3D${vram}=
 omapfb.mode=3Ddvi:${dvimode} omapfb.debug=3Dy omapdss.def_disp=3D${default=
display} r<br>
oot=3D${nandroot} rootfstype=3D${nandrootfstype}<br>nandboot=3Decho Booting=
 from nand ...; run nandargs; nand read ${loadaddr} 280000 400000; bootm ${=
loadaddr}<br>nandroot=3D/dev/mtdblock4 rw<br>nandrootfstype=3Djffs2<br>opta=
rgs=3Dconsoleblank=3D0<br>
usbtty=3Dcdc_acm<br>vram=3D16M<br><br>Environment size: 1372/131068 bytes<b=
r>OMAP3 <a href=3D"http://beagleboard.org">beagleboard.org</a> # <br><br>Te=
xas Instruments X-Loader 1.5.0 (Jul 25 2012 - 18:31:56)<br>Beagle xM<br>Rea=
ding boot sector<br>
Loading u-boot.bin from mmc<br><br><br>U-Boot 2011.06 (Jul 25 2012 - 18:32:=
05)<br><br>OMAP3630/3730-GP ES2.1, CPU-OPP2, L3-165MHz, Max CPU Clock 1 Ghz=
<br>OMAP3 Beagle board + LPDDR/NAND<br>I2C:=A0=A0 ready<br>DRAM:=A0 512 MiB=
<br>
NAND:=A0 0 MiB<br>MMC:=A0=A0 OMAP SD/MMC: 0<br>*** Warning - readenv() fail=
ed, using default environment<br><br>In:=A0=A0=A0 serial<br>Out:=A0=A0 seri=
al<br>Err:=A0=A0 serial<br>Beagle unknown 0x02<br>No EEPROM on expansion bo=
ard<br>Die ID #158000029ff800000160a7450b02602d<br>
Hit any key to stop autoboot: 10=A0 9=A0 8=A0 0 <br>OMAP3 <a href=3D"http:/=
/beagleboard.org">beagleboard.org</a> # printevn=A0 vn=A0 nv<br>baudrate=3D=
115200<br>bootcmd=3Dif mmc rescan ${mmcdev}; then echo SD/MMC found on devi=
ce ${mmcdev};if run loadbootenv; then run importbootenv;fi;if test -n $uenv=
cmd; then echo R<br>
unning uenvcmd ...;run uenvcmd;fi;if run loaduimage; then run mmcboot;fi;fi=
;run nandboot;<br>bootdelay=3D10<br>buddy=3Dnone<br>console=3DttyS2,115200n=
8<br>defaultdisplay=3Ddvi<br>dieid#=3D158000029ff800000160a7450b02602d<br>d=
vimode=3D1024x768MR-16@60<br>
importbootenv=3Decho Importing environment from mmc ...; env import -t $loa=
daddr $filesize<br>loadaddr=3D0x82000000<br>loadbootenv=3Dfatload mmc ${mmc=
dev} ${loadaddr} uEnv.txt<br>loaduimage=3Dfatload mmc ${mmcdev} ${loadaddr}=
 uImage<br>
mmcargs=3Dsetenv bootargs console=3D${console} mpurate=3D${mpurate} vram=3D=
${vram} omapfb.mode=3Ddvi:${dvimode} omapfb.debug=3Dy omapdss.def_disp=3D${=
defaultdisplay} ro<br>ot=3D${mmcroot} rootfstype=3D${mmcrootfstype}<br>mmcb=
oot=3Decho Booting from mmc ...; run mmcargs; bootm ${loadaddr}<br>
mmcdev=3D0<br>mmcroot=3D/dev/mmcblk0p2 rw<br>mmcrootfstype=3Dext3 rootwait<=
br>mpurate=3Dauto<br>nandargs=3Dsetenv bootargs console=3D${console} mpurat=
e=3D${mpurate} vram=3D${vram} omapfb.mode=3Ddvi:${dvimode} omapfb.debug=3Dy=
 omapdss.def_disp=3D${defaultdisplay} r<br>
oot=3D${nandroot} rootfstype=3D${nandrootfstype}<br>nandboot=3Decho Booting=
 from nand ...; run nandargs; nand read ${loadaddr} 280000 400000; bootm ${=
loadaddr}<br>nandroot=3D/dev/mtdblock4 rw<br>nandrootfstype=3Djffs2<br>usbt=
ty=3Dcdc_acm<br>
vram=3D12M<br><br>Environment size: 1371/131068 bytes<br>OMAP3 <a href=3D"h=
ttp://beagleboard.org">beagleboard.org</a> # setenv bootcmd &#39;mmc rescan=
 0; fatload mmc 0:1 0x80300000 uImage; bootm <br>&gt; 0x80300000&#39;<br>OM=
AP3 <a href=3D"http://beagleboard.org">beagleboard.org</a> # printenv<br>
baudrate=3D115200<br>bootcmd=3Dmmc rescan 0; fatload mmc 0:1 0x80300000 uIm=
age; bootm \<br>0x80300000<br>bootdelay=3D10<br>buddy=3Dnone<br>console=3Dt=
tyS2,115200n8<br>defaultdisplay=3Ddvi<br>dieid#=3D158000029ff800000160a7450=
b02602d<br>
dvimode=3D1024x768MR-16@60<br>importbootenv=3Decho Importing environment fr=
om mmc ...; env import -t $loadaddr $filesize<br>loadaddr=3D0x82000000<br>l=
oadbootenv=3Dfatload mmc ${mmcdev} ${loadaddr} uEnv.txt<br>loaduimage=3Dfat=
load mmc ${mmcdev} ${loadaddr} uImage<br>
mmcargs=3Dsetenv bootargs console=3D${console} mpurate=3D${mpurate} vram=3D=
${vram} omapfb.mode=3Ddvi:${dvimode} omapfb.debug=3Dy omapdss.def_disp=3D${=
defaultdisplay} ro<br>ot=3D${mmcroot} rootfstype=3D${mmcrootfstype}<br>mmcb=
oot=3Decho Booting from mmc ...; run mmcargs; bootm ${loadaddr}<br>
mmcdev=3D0<br>mmcroot=3D/dev/mmcblk0p2 rw<br>mmcrootfstype=3Dext3 rootwait<=
br>mpurate=3Dauto<br>nandargs=3Dsetenv bootargs console=3D${console} mpurat=
e=3D${mpurate} vram=3D${vram} omapfb.mode=3Ddvi:${dvimode} omapfb.debug=3Dy=
 omapdss.def_disp=3D${defaultdisplay} r<br>
oot=3D${nandroot} rootfstype=3D${nandrootfstype}<br>nandboot=3Decho Booting=
 from nand ...; run nandargs; nand read ${loadaddr} 280000 400000; bootm ${=
loadaddr}<br>nandroot=3D/dev/mtdblock4 rw<br>nandrootfstype=3Djffs2<br>usbt=
ty=3Dcdc_acm<br>
vram=3D12M<br><br>Environment size: 1203/131068 bytes<br>OMAP3 <a href=3D"h=
ttp://beagleboard.org">beagleboard.org</a> # setenv bootcmd &#39;mmc rescan=
 0; fatload mmc 0:1 0x80300000 uImage; bootm 0x80300000&#39;<br>OMAP3 <a hr=
ef=3D"http://beagleboard.org">beagleboard.org</a> # setenv bootargs &#39;co=
nsole=3Dtty0 console=3DttyO2,115200n8 <br>
&gt; root=3D/dev/mmcblk0p2 rootwait rootfstype=3Dext3 ro&#39;=A0=A0 <br>OMA=
P3 <a href=3D"http://beagleboard.org">beagleboard.org</a> # booy t<br>readi=
ng uImage<br><br>4127776 bytes read<br>## Booting kernel from Legacy Image =
at 80300000 ...<br>
=A0=A0 Image Name:=A0=A0 Linux-3.4.1-yocto-standard<br>=A0=A0 Image Type:=
=A0=A0 ARM Linux Kernel Image (uncompressed)<br>=A0=A0 Data Size:=A0=A0=A0 =
4127712 Bytes =3D 3.9 MiB<br>=A0=A0 Load Address: 80008000<br>=A0=A0 Entry =
Point:=A0 80008000<br>=A0=A0 Verifying Checksum ... OK<br>
=A0=A0 Loading Kernel Image ... OK<br>OK<br><br>Starting kernel ...<br><br>=
Uncompressing Linux... done, booting the kernel.<br>Booting Linux on physic=
al CPU 0<br>Initializing cgroup subsys cpuset<br>Initializing cgroup subsys=
 cpu<br>
Linux version 3.4.1-yocto-standard (<a href=3D"mailto:vidal@ws009.swbell.ne=
t">vidal@ws009.swbell.net</a>) (gcc version 4.7.2 20120615 (prerelease) (GC=
C) ) #1 Wed Jul 25 17:29:01 MDT 2012<br>CPU: ARMv7 Processor [413fc082] rev=
ision 2 (ARMv7), cr=3D10c53c7d<br>
CPU: PIPT / VIPT nonaliasing data cache, VIPT aliasing instruction cache<br=
>Machine: OMAP3 Beagle Board<br>Reserving 14680064 bytes SDRAM for VRAM<br>=
Memory policy: ECC disabled, Data cache writeback<br>OMAP3630 ES1.2 (l2cach=
e iva sgx neon isp 192mhz_clk )<br>
Clocking rate (Crystal/Core/MPU): 26.0/332/600 MHz<br>Built 1 zonelists in =
Zone order, mobility grouping on.=A0 Total pages: 126208<br>Kernel command =
line: console=3Dtty0 console=3DttyO2,115200n8 <br>root=3D/dev/mmcblk0p2 roo=
twait rootfstype=3Dext3 ro<br>
PID hash table entries: 2048 (order: 1, 8192 bytes)<br>Dentry cache hash ta=
ble entries: 65536 (order: 6, 262144 bytes)<br>Inode-cache hash table entri=
es: 32768 (order: 5, 131072 bytes)<br>allocated 1048576 bytes of page_cgrou=
p<br>
please try &#39;cgroup_disable=3Dmemory&#39; option if you don&#39;t want m=
emory cgroups<br>Memory: 497MB =3D 497MB total<br>Memory: 494156k/494156k a=
vailable, 30132k reserved, 0K highmem<br>Virtual kernel memory layout:<br>=
=A0=A0=A0 vector=A0 : 0xffff0000 - 0xffff1000=A0=A0 (=A0=A0 4 kB)<br>
=A0=A0=A0 fixmap=A0 : 0xfff00000 - 0xfffe0000=A0=A0 ( 896 kB)<br>=A0=A0=A0 =
vmalloc : 0xe0800000 - 0xff000000=A0=A0 ( 488 MB)<br>=A0=A0=A0 lowmem=A0 : =
0xc0000000 - 0xe0000000=A0=A0 ( 512 MB)<br>=A0=A0=A0 modules : 0xbf000000 -=
 0xc0000000=A0=A0 (=A0 16 MB)<br>=A0=A0=A0=A0=A0 .text : 0xc0008000 - 0xc07=
cb388=A0=A0 (7949 kB)<br>
=A0=A0=A0=A0=A0 .init : 0xc07cc000 - 0xc0827000=A0=A0 ( 364 kB)<br>=A0=A0=
=A0=A0=A0 .data : 0xc0828000 - 0xc089e450=A0=A0 ( 474 kB)<br>=A0=A0=A0=A0=
=A0=A0 .bss : 0xc089e474 - 0xc08fed80=A0=A0 ( 387 kB)<br>SLUB: Genslabs=3D1=
1, HWalign=3D64, Order=3D0-3, MinObjects=3D0, CPUs=3D1, Nodes=3D1<br>
NR_IRQS:474<br>IRQ: Found an INTC at 0xfa200000 (revision 4.0) with 96 inte=
rrupts<br>Total of 96 interrupts on 1 active controller<br>OMAP clockevent =
source: GPTIMER12 at 32768 Hz<br>sched_clock: 32 bits at 32kHz, resolution =
30517ns, wraps every 131071999ms<br>
Console: colour dummy device 80x30<br>console [tty0] enabled<br>Calibrating=
 delay loop... 503.12 BogoMIPS (lpj=3D1966080)<br>pid_max: default: 32768 m=
inimum: 301<br>Security Framework initialized<br>Mount-cache hash table ent=
ries: 512<br>
Initializing cgroup subsys debug<br>Initializing cgroup subsys cpuacct<br>I=
nitializing cgroup subsys memory<br>Initializing cgroup subsys devices<br>I=
nitializing cgroup subsys freezer<br>Initializing cgroup subsys net_cls<br>
Initializing cgroup subsys blkio<br>CPU: Testing write buffer coherency: ok=
<br>ftrace: allocating 21594 entries in 64 pages<br>Setting up static ident=
ity map for 0x8059faf0 - 0x8059fb48<br>devtmpfs: initialized<br>dummy: <br>
NET: Registered protocol family 16<br>GPMC revision 5.0<br>gpiochip_add: re=
gistered GPIOs 0 to 31 on device: gpio<br>OMAP GPIO hardware version 2.5<br=
>gpiochip_add: registered GPIOs 32 to 63 on device: gpio<br>gpiochip_add: r=
egistered GPIOs 64 to 95 on device: gpio<br>
gpiochip_add: registered GPIOs 96 to 127 on device: gpio<br>gpiochip_add: r=
egistered GPIOs 128 to 159 on device: gpio<br>gpiochip_add: registered GPIO=
s 160 to 191 on device: gpio<br>omap_mux_init: Add partition: #1: core, fla=
gs: 0<br>
OMAP3 Beagle Rev: xM C<br>Reprogramming SDRC clock to 332000000 Hz<br>=A0us=
bhs_omap: alias fck already exists<br>Found NAND on CS0<br>Registering NAND=
 on CS0<br>Unable to get DVI reset GPIO<br>=A0omap-mcbsp.2: alias fck alrea=
dy exists<br>
=A0omap-mcbsp.3: alias fck already exists<br>OMAP DMA hardware revision 5.0=
<br>bio: create slab &lt;bio-0&gt; at 0<br>SCSI subsystem initialized<br>om=
ap2_mcspi omap2_mcspi.1: master is unqueued, this is deprecated<br>omap2_mc=
spi omap2_mcspi.2: master is unqueued, this is deprecated<br>
omap2_mcspi omap2_mcspi.3: master is unqueued, this is deprecated<br>omap2_=
mcspi omap2_mcspi.4: master is unqueued, this is deprecated<br>usbcore: reg=
istered new interface driver usbfs<br>usbcore: registered new interface dri=
ver hub<br>
usbcore: registered new device driver usb<br>omap_i2c omap_i2c.1: bus 1 rev=
1.4.0 at 2600 kHz<br>twl 1-0048: PIH (irq 7) chaining IRQs 320..328<br>twl =
1-0048: power (irq 325) chaining IRQs 328..335<br>twl4030_gpio twl4030_gpio=
: gpio (irq 320) chaining IRQs 336..353<br>
gpiochip_add: registered GPIOs 192 to 211 on device: twl4030<br>VUSB1V5: 15=
00 mV normal standby<br>VUSB1V8: 1800 mV normal standby<br>VUSB3V1: 3100 mV=
 normal standby<br>twl4030_usb twl4030_usb: Initialized TWL4030 USB module<=
br>
VMMC1: 1850 &lt;--&gt; 3150 mV at 3000 mV normal standby<br>VDAC: 1800 mV n=
ormal standby<br>VDVI: 1800 mV normal standby<br>VSIM: 1800 &lt;--&gt; 3000=
 mV at 1800 mV normal standby<br>omap_i2c omap_i2c.3: bus 3 rev1.4.0 at 100=
 kHz<br>
Advanced Linux Sound Architecture Driver Version 1.0.25.<br>cfg80211: Calli=
ng CRDA to update world regulatory domain<br>Switching to clocksource 32k_c=
ounter<br>usbhs_omap usbhs_omap: xclk60mhsp1_ck set parentfailed error:-22<=
br>
usbhs_omap usbhs_omap: xclk60mhsp2_ck set parentfailed error:-22<br>NET: Re=
gistered protocol family 2<br>IP route cache hash table entries: 4096 (orde=
r: 2, 16384 bytes)<br>TCP established hash table entries: 16384 (order: 5, =
131072 bytes)<br>
TCP bind hash table entries: 16384 (order: 4, 65536 bytes)<br>TCP: Hash tab=
les configured (established 16384 bind 16384)<br>TCP: reno registered<br>UD=
P hash table entries: 256 (order: 0, 4096 bytes)<br>UDP-Lite hash table ent=
ries: 256 (order: 0, 4096 bytes)<br>
NET: Registered protocol family 1<br>RPC: Registered named UNIX socket tran=
sport module.<br>RPC: Registered udp transport module.<br>RPC: Registered t=
cp transport module.<br>RPC: Registered tcp NFSv4.1 backchannel transport m=
odule.<br>
VFS: Disk quotas dquot_6.5.2<br>Dquot-cache hash table entries: 1024 (order=
 0, 4096 bytes)<br>Registering unionfs 2.5.10 (for 3.1.0-rc4)<br>NFS: Regis=
tering the id_resolver key type<br>Btrfs loaded<br>msgmni has been set to 9=
65<br>
Block layer SCSI generic (bsg) driver version 0.4 loaded (major 253)<br>io =
scheduler noop registered<br>io scheduler deadline registered<br>io schedul=
er cfq registered (default)<br>OMAP DSS rev 2.0<br>Serial: 8250/16550 drive=
r, 4 ports, IRQ sharing enabled<br>
omap_uart.0: ttyO0 at MMIO 0x4806a000 (irq =3D 72) is a OMAP UART0<br>omap_=
uart.1: ttyO1 at MMIO 0x4806c000 (irq =3D 73) is a OMAP UART1<br>omap_uart.=
2: ttyO2 at MMIO 0x49020000 (irq =3D 74) is a OMAP UART2<br>console [ttyO2]=
 enabled<br>
omap_uart.3: ttyO3 at MMIO 0x49042000 (irq =3D 80) is a OMAP UART3<br>brd: =
module loaded<br>No NAND device found<br>No NAND device found<br>usbcore: r=
egistered new interface driver kaweth<br>pegasus: v0.6.14 (2006/09/27), Peg=
asus/Pegasus II USB Ethernet driver<br>
usbcore: registered new interface driver pegasus<br>usbcore: registered new=
 interface driver asix<br>usbcore: registered new interface driver cdc_ethe=
r<br>usbcore: registered new interface driver dm9601<br>usbcore: registered=
 new interface driver smsc75xx<br>
usbcore: registered new interface driver smsc95xx<br>usbcore: registered ne=
w interface driver net1080<br>usbcore: registered new interface driver cdc_=
subset<br>usbcore: registered new interface driver zaurus<br>usbcore: regis=
tered new interface driver MOSCHIP usb-ethernet driver<br>
usbcore: registered new interface driver int51x1<br>usbcore: registered new=
 interface driver cdc_ncm<br>ehci_hcd: USB 2.0 &#39;Enhanced&#39; Host Cont=
roller (EHCI) Driver<br>ehci-omap.0 supply hsusb0 not found, using dummy re=
gulator<br>
ehci-omap.0 supply hsusb1 not found, using dummy regulator<br>ehci-omap ehc=
i-omap.0: OMAP-EHCI Host Controller<br>ehci-omap ehci-omap.0: new USB bus r=
egistered, assigned bus number 1<br>ehci-omap ehci-omap.0: irq 77, io mem 0=
x48064800<br>
ehci-omap ehci-omap.0: USB 2.0 started, EHCI 1.00<br>hub 1-0:1.0: USB hub f=
ound<br>hub 1-0:1.0: 3 ports detected<br>Initializing USB Mass Storage driv=
er...<br>usbcore: registered new interface driver usb-storage<br>USB Mass S=
torage support registered.<br>
musb-hdrc: version 6.0, ?dma?, otg (peripheral+host)<br>musb-hdrc musb-hdrc=
: USB OTG mode controller at fa0ab000 using DMA, IRQ 92<br>mousedev: PS/2 m=
ouse device common for all mice<br>twl_rtc twl_rtc: Enabling TWL-RTC<br>
twl_rtc twl_rtc: rtc core: registered twl_rtc as rtc0<br>omap_wdt: OMAP Wat=
chdog Timer Rev 0x31: initial timeout 60 sec<br>cpuidle: using governor lad=
der<br>cpuidle: using governor menu<br>usbcore: registered new interface dr=
iver usbhid<br>
usbhid: USB HID core driver<br>OMAP3 Beagle/Devkit8000 SoC init<br>soc-audi=
o soc-audio: ASoC machine omap3beagle should use snd_soc_register_card()<br=
>usb 1-2: new high-speed USB device number 2 using ehci-omap<br>twl4030-cod=
ec twl4030-codec: ASoC: Failed to create Capture debugfs file<br>
asoc: twl4030-hifi &lt;-&gt; omap-mcbsp.2 mapping ok<br>TCP: cubic register=
ed<br>NET: Registered protocol family 10<br>IPv6 over IPv4 tunneling driver=
<br>NET: Registered protocol family 17<br>Registering the dns_resolver key =
type<br>
VFP support v0.3: implementor 41 architecture 3 part 30 variant c rev 3<br>=
ThumbEE CPU extension supported.<br>sr_init: No PMIC hook to init smartrefl=
ex<br>smartreflex smartreflex.0: omap_sr_probe: SmartReflex driver initiali=
zed<br>
smartreflex smartreflex.1: omap_sr_probe: SmartReflex driver initialized<br=
>SmartReflex Class3 initialized<br>clock: disabling unused clocks to save p=
ower<br>omapfb omapfb: no driver for display: dvi<br>Console: switching to =
colour frame buffer device 90x35<br>
hub 1-2:1.0: USB hub found<br>hub 1-2:1.0: 5 ports detected<br>VDVI: incomp=
lete constraints, leaving on<br>console [netcon0] enabled<br>netconsole: ne=
twork logging started<br>twl_rtc twl_rtc: setting system clock to 2012-07-2=
6 01:39:05 UTC (1343266745)<br>
ALSA device list:<br>=A0 #0: omap3beagle<br>Waiting for root device /dev/mm=
cblk0p2...<br>usb 1-2.1: new high-speed USB device number 3 using ehci-omap=
<br>smsc95xx v1.0.4<br>smsc95xx 1-2.1:1.0: eth0: register &#39;smsc95xx&#39=
; at usb-ehci-omap.0-2.1, smsc95xx USB 2.0 Ethernet, aa:b7:56:ab:a1:08<br>
usb 1-2.3: new low-speed USB device number 4 using ehci-omap<br>input: CHES=
EN USB Keyboard as /devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/=
1-2.3:1.0/input/input0<br>generic-usb 0003:0A81:0101.0001: input: USB HID v=
1.10 Keyboard [CHESEN USB Keyboard] on usb-ehci-omap.0-2.3/input0<br>
input: CHESEN USB Keyboard as /devices/platform/usbhs_omap/ehci-omap.0/usb1=
/1-2/1-2.3/1-2.3:1.1/input/input1<br>generic-usb 0003:0A81:0101.0002: input=
: USB HID v1.10 Device [CHESEN USB Keyboard] on usb-ehci-omap.0-2.3/input1<=
br>
mmc0: host does not support reading read-only switch. assuming write-enable=
.<br>mmc0: new high speed SDHC card at address b368<br>mmcblk0: mmc0:b368 S=
DU16 14.9 GiB <br>=A0mmcblk0: p1 p2<br>usb 1-2.5: new low-speed USB device =
number 5 using ehci-omap<br>
kjournald starting.=A0 Commit interval 5 seconds<br>EXT3-fs (mmcblk0p2): us=
ing internal journal<br>EXT3-fs (mmcblk0p2): mounted filesystem with ordere=
d data mode<br>VFS: Mounted root (ext3 filesystem) on device 179:2.<br>devt=
mpfs: mounted<br>
Freeing init memory: 364K<br>input: PixArt USB Optical Mouse as /devices/pl=
atform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.5/1-2.5:1.0/input/input2<br>gene=
ric-usb 0003:093A:2510.0003: input: USB HID v1.11 Mouse [PixArt USB Optical=
 Mouse] on usb-ehci-omap.0-2.5/input0<br>
INIT: version 2.88 booting<br>Starting udev<br>udev[64]: starting version 1=
64<br>Starting Bootlog daemon: bootlogd.<br>ALSA: Restoring mixer settings.=
..<br>Configuring network interfaces... ADDRCONF(NETDEV_UP): eth0: link is =
not ready<br>
ifconfig: SIOCGIFFLAGS: No such device<br>Starting portmap daemon...<br>net=
.ipv4.conf.default.rp_filter =3D 1<br>net.ipv4.conf.all.rp_filter =3D 1<br>=
INIT: Entering runlevel: 5<br>Starting system message bus: dbus.<br>Startin=
g Connection Manager<br>
Starting Xserver<br>smsc95xx 1-2.1:1.0: eth0: link up, 100Mbps, full-duplex=
, lpa 0x45E1<br>ADDRCONF(NETDEV_CHANGE): eth0: link becomes ready<br>ip_tab=
les: (C) 2000-2006 Netfilter Core Team<br>Starting Dropbear SSH server: nf_=
conntrack version 0.5.0 (7726 buckets, 30904 max)<br>
<br>dropbear.<br>Starting advanced power management daemon: apmd.<br>apmd[5=
25]: apmd 3.2.1 interfacing with apm driver 1.13 and APM BIOS 1.2<br><br>X.=
Org X Server 1.11.2<br>Release Date: 2011-11-04<br>X Protocol Version 11, R=
evision 0<br>
Build Operating System: Linux 3.3.4-5.fc17.x86_64 x86_64 <br>Current Operat=
ing System: Linux beagleboard 3.4.1-yocto-standard #1 Wed Jul 25 17:29:01 M=
DT 2012 armv7l<br>Kernel command line: console=3Dtty0 console=3DttyO2,11520=
0n8 <br>
root=3D/dev/mmcblk0p2 rootwait rootfstype=3Dext3 ro<br>Build Date: 25 July =
2012=A0 06:09:49PM<br>=A0<br>Current version of pixman: 0.26.2<br>Before re=
porting problems, check <a href=3D"http://wiki.x.org">http://wiki.x.org</a>=
<br>to make sure that you have the latest version.<br>
Markers: (--) probed, (**) from config file, (=3D=3D) default setting,<br>(=
++) from command line, (!!) notice, (II) informational,<br>(WW) warning, (E=
E) error, (NI) not implemented, (??) unknown.<br>(=3D=3D) Log file: &quot;/=
var/log/Xorg.0.log&quot;, Time: Thu Jul 26 01:39:17 2012<br>
(=3D=3D) Using config file: &quot;/etc/X11/xorg.conf&quot;<br>(=3D=3D) Usin=
g system config directory &quot;/usr/share/X11/xorg.conf.d&quot;<br>(EE) Fa=
iled to load module &quot;extmod&quot; (module does not exist, 0)<br>(EE) F=
ailed to load module &quot;dbe&quot; (module does not exist, 0)<br>
(EE) Failed to load module &quot;glx&quot; (module does not exist, 0)<br>(E=
E) Failed to load module &quot;record&quot; (module does not exist, 0)<br>(=
EE) Failed to load module &quot;dri&quot; (module does not exist, 0)<br>
(EE) Failed to load module &quot;dri2&quot; (module does not exist, 0)<br>S=
tarting syslogd/klogd: (EE) omapfb(0): Failed to open /dev/fb2: No such fil=
e or directory<br>(EE) omapfb(0): XVScreenInit failed<br>done<br>=A0* Start=
ing Avahi mDNS/DNS-SD Daemon: avahi-daemon<br>
=A0=A0 ...done.<br>Starting Telephony daemon<br>Stopping Bootlog daemon: bo=
otlogd.<br>D-BUS per-session daemon address is: unix:abstract=3D/tmp/dbus-I=
fyi2jXk5H,guid=3D4131839037b01bb27e8eb05000000011<br><br>Yocto (Built by Po=
ky 7.0) 1.2+snapshot-20120725 beagleboard ttyO2<br>
<br>beagleboard login: matchbox: Cant find a keycode for keysym 269025056<b=
r>matchbox: ignoring key shortcut XF86Calendar=3D!$contacts<br><br>matchbox=
: Cant find a keycode <br>for keysym 2809<br>matchbox: ignoring key shortcu=
t telephone=3D!$dates<br>
<br>matchbox: Cant find a keycode for keysym 269025050<br>matchbox: ignorin=
g key shortcut XF86Star<br>t=3D!matchbox-remote -desktop<br><br>[settings d=
aemon] Forking. run with -n to prevent fork<br><br>Yocto (Built by Poky 7.0=
) 1.2+snapshot-20120725 beagleboard ttyO2<br>
<br>beagleboard login: roo<br>** (matchbox-desktop:608): WARNING **: Error =
loading icon: Icon &#39;computer&#39; not present in theme<br>t<br>** (matc=
hbox-desktop:608): WARNING *<br>*: Error loading icon: Icon &#39;preference=
s-desktop&#39; not present in theme<br>
<br>** (matchbox-desktop:608): WARNING **: Error loading icon: Icon &#39;sy=
stem-file-manager<br>&#39; not present in theme<br><br>root@beagleboard:~# =
ifconfig -a<br>eth0=A0=A0=A0=A0=A0 Link encap:Ethernet=A0 HWaddr AA:B7:56:A=
B:A1:08=A0 <br>
=A0=A0=A0=A0=A0=A0=A0=A0=A0 inet addr:192.168.0.42=A0 Bcast:192.168.0.255=
=A0 Mask:255.255.255.0<br>=A0=A0=A0=A0=A0=A0=A0=A0=A0 inet6 addr: fe80::a8b=
7:56ff:feab:a108/64 Scope:Link<br>=A0=A0=A0=A0=A0=A0=A0=A0=A0 UP BROADCAST =
RUNNING MULTICAST=A0 MTU:1500=A0 Metric:1<br>=A0=A0=A0=A0=A0=A0=A0=A0=A0 RX=
 packets:12 errors:0 dropped:0 overruns:0 frame:0<br>
=A0=A0=A0=A0=A0=A0=A0=A0=A0 TX packets:46 errors:0 dropped:0 overruns:0 car=
rier:0<br>=A0=A0=A0=A0=A0=A0=A0=A0=A0 collisions:0 txqueuelen:1000 <br>=A0=
=A0=A0=A0=A0=A0=A0=A0=A0 RX bytes:2172 (2.1 KiB)=A0 TX bytes:8385 (8.1 KiB)=
<br><br>lo=A0=A0=A0=A0=A0=A0=A0 Link encap:Local Loopback=A0 <br>=A0=A0=A0=
=A0=A0=A0=A0=A0=A0 inet addr:127.0.0.1=A0 Mask:255.0.0.0<br>
=A0=A0=A0=A0=A0=A0=A0=A0=A0 inet6 addr: ::1/128 Scope:Host<br>=A0=A0=A0=A0=
=A0=A0=A0=A0=A0 UP LOOPBACK RUNNING=A0 MTU:16436=A0 Metric:1<br>=A0=A0=A0=
=A0=A0=A0=A0=A0=A0 RX packets:0 errors:0 dropped:0 overruns:0 frame:0<br>=
=A0=A0=A0=A0=A0=A0=A0=A0=A0 TX packets:0 errors:0 dropped:0 overruns:0 carr=
ier:0<br>
=A0=A0=A0=A0=A0=A0=A0=A0=A0 collisions:0 txqueuelen:0 <br>=A0=A0=A0=A0=A0=
=A0=A0=A0=A0 RX bytes:0 (0.0 B)=A0 TX bytes:0 (0.0 B)<br><br>sit0=A0=A0=A0=
=A0=A0 Link encap:IPv6-in-IPv4=A0 <br>=A0=A0=A0=A0=A0=A0=A0=A0=A0 NOARP=A0 =
MTU:1480=A0 Metric:1<br>=A0=A0=A0=A0=A0=A0=A0=A0=A0 RX packets:0 errors:0 d=
ropped:0 overruns:0 frame:0<br>
=A0=A0=A0=A0=A0=A0=A0=A0=A0 TX packets:0 errors:0 dropped:0 overruns:0 carr=
ier:0<br>=A0=A0=A0=A0=A0=A0=A0=A0=A0 collisions:0 txqueuelen:0 <br>=A0=A0=
=A0=A0=A0=A0=A0=A0=A0 RX bytes:0 (0.0 B)=A0 TX bytes:0 (0.0 B)<br><br>root@=
beagleboard:~# vi /etc/resolv.conf<br># Generated by Connection Manager<br>
nameserver 127.0.0.1<br>~<br>~<br>~<br>~<br>~<br>~<br>~<br>~<br>~<br>~<br>~=
<br>~<br>~<br>~<br>~<br>~<br>~<br>~<br>~<br>~<br>~- /etc/resolv.conf 1/2 50=
%<br>- /etc/resolv.conf 2/2 100%nnanamname27.0.0.1 - /etc/resolv.conf [Modi=
fied] 2/2 100%7.0.0.1 .0.0.1 0.0.1 .0.1 0.1 .1 1=A0 I /etc/resolv.conf [Mod=
ified] 2/2 100%68.94.156.1- /etc/resolv.conf [Modified] 2/2 100%:wq&quot;/e=
tc/resolv.conf&quot; 2L, 57Croot@beagleboard:~# ping <a href=3D"http://yaho=
o.com">yahoo.com</a><br>
PING <a href=3D"http://yahoo.com">yahoo.com</a> (72.30.38.140): 56 data byt=
es<br>64 bytes from <a href=3D"http://72.30.38.140">72.30.38.140</a>: seq=
=3D0 ttl=3D49 time=3D121.552 ms<br>64 bytes from <a href=3D"http://72.30.38=
.140">72.30.38.140</a>: seq=3D1 ttl=3D49 time=3D116.819 ms<br>
64 bytes from <a href=3D"http://72.30.38.140">72.30.38.140</a>: seq=3D2 ttl=
=3D49 time=3D120.183 ms<br>64 bytes from <a href=3D"http://72.30.38.140">72=
.30.38.140</a>: seq=3D3 ttl=3D49 time=3D211.887 ms<br>64 bytes from <a href=
=3D"http://72.30.38.140">72.30.38.140</a>: seq=3D4 ttl=3D49 time=3D116.641 =
ms<br>
64 bytes from <a href=3D"http://72.30.38.140">72.30.38.140</a>: seq=3D5 ttl=
=3D49 time=3D118.805 ms<br>64 bytes from <a href=3D"http://72.30.38.140">72=
.30.38.140</a>: seq=3D6 ttl=3D49 time=3D194.243 ms<br>64 bytes from <a href=
=3D"http://72.30.38.140">72.30.38.140</a>: seq=3D7 ttl=3D49 time=3D135.561 =
ms<br>
64 bytes from <a href=3D"http://72.30.38.140">72.30.38.140</a>: seq=3D8 ttl=
=3D49 time=3D116.485 ms<br>64 bytes from <a href=3D"http://72.30.38.140">72=
.30.38.140</a>: seq=3D9 ttl=3D49 time=3D116.634 ms<br>64 bytes from <a href=
=3D"http://72.30.38.140">72.30.38.140</a>: seq=3D10 ttl=3D49 time=3D116.457=
 ms<br>
<br>--- <a href=3D"http://yahoo.com">yahoo.com</a> ping statistics ---<br>1=
1 packets transmitted, 11 packets received, 0% packet loss<br>round-trip mi=
n/avg/max =3D 116.457/135.024/211.887 ms<br>root@beagleboard:~# ifconfig -a=
<br>
eth0=A0=A0=A0=A0=A0 Link encap:Ethernet=A0 HWaddr AA:B7:56:AB:A1:08=A0 <br>=
=A0=A0=A0=A0=A0=A0=A0=A0=A0 inet addr:192.168.0.42=A0 Bcast:192.168.0.255=
=A0 Mask:255.255.255.0<br>=A0=A0=A0=A0=A0=A0=A0=A0=A0 inet6 addr: fe80::a8b=
7:56ff:feab:a108/64 Scope:Link<br>=A0=A0=A0=A0=A0=A0=A0=A0=A0 UP BROADCAST =
RUNNING MULTICAST=A0 MTU:1500=A0 Metric:1<br>
=A0=A0=A0=A0=A0=A0=A0=A0=A0 RX packets:34 errors:0 dropped:0 overruns:0 fra=
me:0<br>=A0=A0=A0=A0=A0=A0=A0=A0=A0 TX packets:66 errors:0 dropped:0 overru=
ns:0 carrier:0<br>=A0=A0=A0=A0=A0=A0=A0=A0=A0 collisions:0 txqueuelen:1000 =
<br>=A0=A0=A0=A0=A0=A0=A0=A0=A0 RX bytes:3991 (3.8 KiB)=A0 TX bytes:10299 (=
10.0 KiB)<br>
<br>lo=A0=A0=A0=A0=A0=A0=A0 Link encap:Local Loopback=A0 <br>=A0=A0=A0=A0=
=A0=A0=A0=A0=A0 inet addr:127.0.0.1=A0 Mask:255.0.0.0<br>=A0=A0=A0=A0=A0=A0=
=A0=A0=A0 inet6 addr: ::1/128 Scope:Host<br>=A0=A0=A0=A0=A0=A0=A0=A0=A0 UP =
LOOPBACK RUNNING=A0 MTU:16436=A0 Metric:1<br>=A0=A0=A0=A0=A0=A0=A0=A0=A0 RX=
 packets:0 errors:0 dropped:0 overruns:0 frame:0<br>
=A0=A0=A0=A0=A0=A0=A0=A0=A0 TX packets:0 errors:0 dropped:0 overruns:0 carr=
ier:0<br>=A0=A0=A0=A0=A0=A0=A0=A0=A0 collisions:0 txqueuelen:0 <br>=A0=A0=
=A0=A0=A0=A0=A0=A0=A0 RX bytes:0 (0.0 B)=A0 TX bytes:0 (0.0 B)<br><br>sit0=
=A0=A0=A0=A0=A0 Link encap:IPv6-in-IPv4=A0 <br>=A0=A0=A0=A0=A0=A0=A0=A0=A0 =
NOARP=A0 MTU:1480=A0 Metric:1<br>
=A0=A0=A0=A0=A0=A0=A0=A0=A0 RX packets:0 errors:0 dropped:0 overruns:0 fram=
e:0<br>=A0=A0=A0=A0=A0=A0=A0=A0=A0 TX packets:0 errors:0 dropped:0 overruns=
:0 carrier:0<br>=A0=A0=A0=A0=A0=A0=A0=A0=A0 collisions:0 txqueuelen:0 <br>=
=A0=A0=A0=A0=A0=A0=A0=A0=A0 RX bytes:0 (0.0 B)=A0 TX bytes:0 (0.0 B)<br>
<br>root@beagleboard:~# <br>* - * Qodem 0.1.2 Capture Generated Wed, 25 Jul=
 2012 19:53:12 -0600 END * - *<br>* - * Qodem 0.1.2 Capture Generated Wed, =
25 Jul 2012 19:54:31 -0600 BEGIN * - *<br><br>ifconfig -a<br>eth0=A0=A0=A0=
=A0=A0 Link encap:Ethernet=A0 HWaddr AA:B7:56:AB:A1:08=A0 <br>
=A0=A0=A0=A0=A0=A0=A0=A0=A0 inet addr:192.168.0.42=A0 Bcast:192.168.0.255=
=A0 Mask:255.255.255.0<br>=A0=A0=A0=A0=A0=A0=A0=A0=A0 inet6 addr: fe80::a8b=
7:56ff:feab:a108/64 Scope:Link<br>=A0=A0=A0=A0=A0=A0=A0=A0=A0 UP BROADCAST =
RUNNING MULTICAST=A0 MTU:1500=A0 Metric:1<br>=A0=A0=A0=A0=A0=A0=A0=A0=A0 RX=
 packets:41 errors:0 dropped:0 overruns:0 frame:0<br>
=A0=A0=A0=A0=A0=A0=A0=A0=A0 TX packets:69 errors:0 dropped:0 overruns:0 car=
rier:0<br>=A0=A0=A0=A0=A0=A0=A0=A0=A0 collisions:0 txqueuelen:1000 <br>=A0=
=A0=A0=A0=A0=A0=A0=A0=A0 RX bytes:4647 (4.5 KiB)=A0 TX bytes:10605 (10.3 Ki=
B)<br><br>lo=A0=A0=A0=A0=A0=A0=A0 Link encap:Local Loopback=A0 <br>=A0=A0=
=A0=A0=A0=A0=A0=A0=A0 inet addr:127.0.0.1=A0 Mask:255.0.0.0<br>
=A0=A0=A0=A0=A0=A0=A0=A0=A0 inet6 addr: ::1/128 Scope:Host<br>=A0=A0=A0=A0=
=A0=A0=A0=A0=A0 UP LOOPBACK RUNNING=A0 MTU:16436=A0 Metric:1<br>=A0=A0=A0=
=A0=A0=A0=A0=A0=A0 RX packets:0 errors:0 dropped:0 overruns:0 frame:0<br>=
=A0=A0=A0=A0=A0=A0=A0=A0=A0 TX packets:0 errors:0 dropped:0 overruns:0 carr=
ier:0<br>
=A0=A0=A0=A0=A0=A0=A0=A0=A0 collisions:0 txqueuelen:0 <br>=A0=A0=A0=A0=A0=
=A0=A0=A0=A0 RX bytes:0 (0.0 B)=A0 TX bytes:0 (0.0 B)<br><br>sit0=A0=A0=A0=
=A0=A0 Link encap:IPv6-in-IPv4=A0 <br>=A0=A0=A0=A0=A0=A0=A0=A0=A0 NOARP=A0 =
MTU:1480=A0 Metric:1<br>=A0=A0=A0=A0=A0=A0=A0=A0=A0 RX packets:0 errors:0 d=
ropped:0 overruns:0 frame:0<br>
=A0=A0=A0=A0=A0=A0=A0=A0=A0 TX packets:0 errors:0 dropped:0 overruns:0 carr=
ier:0<br>=A0=A0=A0=A0=A0=A0=A0=A0=A0 collisions:0 txqueuelen:0 <br>=A0=A0=
=A0=A0=A0=A0=A0=A0=A0 RX bytes:0 (0.0 B)=A0 TX bytes:0 (0.0 B)<br><br>root@=
beagleboard:~# dmesg <br>Booting Linux on physical CPU 0<br>
Initializing cgroup subsys cpuset<br>Initializing cgroup subsys cpu<br>Linu=
x version 3.4.1-yocto-standard (<a href=3D"mailto:vidal@ws009.swbell.net">v=
idal@ws009.swbell.net</a>) (gcc version 4.7.2 20120615 (prerelease) (GCC) )=
 #1 Wed Jul 25 17:29:01 MDT 2012<br>
CPU: ARMv7 Processor [413fc082] revision 2 (ARMv7), cr=3D10c53c7d<br>CPU: P=
IPT / VIPT nonaliasing data cache, VIPT aliasing instruction cache<br>Machi=
ne: OMAP3 Beagle Board<br>Reserving 14680064 bytes SDRAM for VRAM<br>Memory=
 policy: ECC disabled, Data cache writeback<br>
On node 0 totalpages: 127232<br>free_area_init_node: node 0, pgdat c089b790=
, node_mem_map c08ff000<br>=A0 Normal zone: 1024 pages used for memmap<br>=
=A0 Normal zone: 0 pages reserved<br>=A0 Normal zone: 126208 pages, LIFO ba=
tch:31<br>
OMAP3630 ES1.2 (l2cache iva sgx neon isp 192mhz_clk )<br>Clocking rate (Cry=
stal/Core/MPU): 26.0/332/600 MHz<br>pcpu-alloc: s0 r0 d32768 u32768 alloc=
=3D1*32768<br>pcpu-alloc: [0] 0 <br>Built 1 zonelists in Zone order, mobili=
ty grouping on.=A0 Total pages: 126208<br>
Kernel command line: console=3Dtty0 console=3DttyO2,115200n8 <br>root=3D/de=
v/mmcblk0p2 rootwait rootfstype=3Dext3 ro<br>PID hash table entries: 2048 (=
order: 1, 8192 bytes)<br>Dentry cache hash table entries: 65536 (order: 6, =
262144 bytes)<br>
Inode-cache hash table entries: 32768 (order: 5, 131072 bytes)<br>allocated=
 1048576 bytes of page_cgroup<br>please try &#39;cgroup_disable=3Dmemory&#3=
9; option if you don&#39;t want memory cgroups<br>Memory: 497MB =3D 497MB t=
otal<br>
Memory: 494156k/494156k available, 30132k reserved, 0K highmem<br>Virtual k=
ernel memory layout:<br>=A0=A0=A0 vector=A0 : 0xffff0000 - 0xffff1000=A0=A0=
 (=A0=A0 4 kB)<br>=A0=A0=A0 fixmap=A0 : 0xfff00000 - 0xfffe0000=A0=A0 ( 896=
 kB)<br>=A0=A0=A0 vmalloc : 0xe0800000 - 0xff000000=A0=A0 ( 488 MB)<br>
=A0=A0=A0 lowmem=A0 : 0xc0000000 - 0xe0000000=A0=A0 ( 512 MB)<br>=A0=A0=A0 =
modules : 0xbf000000 - 0xc0000000=A0=A0 (=A0 16 MB)<br>=A0=A0=A0=A0=A0 .tex=
t : 0xc0008000 - 0xc07cb388=A0=A0 (7949 kB)<br>=A0=A0=A0=A0=A0 .init : 0xc0=
7cc000 - 0xc0827000=A0=A0 ( 364 kB)<br>=A0=A0=A0=A0=A0 .data : 0xc0828000 -=
 0xc089e450=A0=A0 ( 474 kB)<br>
=A0=A0=A0=A0=A0=A0 .bss : 0xc089e474 - 0xc08fed80=A0=A0 ( 387 kB)<br>SLUB: =
Genslabs=3D11, HWalign=3D64, Order=3D0-3, MinObjects=3D0, CPUs=3D1, Nodes=
=3D1<br>NR_IRQS:474<br>IRQ: Found an INTC at 0xfa200000 (revision 4.0) with=
 96 interrupts<br>Total of 96 interrupts on 1 active controller<br>
OMAP clockevent source: GPTIMER12 at 32768 Hz<br>sched_clock: 32 bits at 32=
kHz, resolution 30517ns, wraps every 131071999ms<br>Console: colour dummy d=
evice 80x30<br>console [tty0] enabled<br>Calibrating delay loop... 503.12 B=
ogoMIPS (lpj=3D1966080)<br>
pid_max: default: 32768 minimum: 301<br>Security Framework initialized<br>M=
ount-cache hash table entries: 512<br>Initializing cgroup subsys debug<br>I=
nitializing cgroup subsys cpuacct<br>Initializing cgroup subsys memory<br>
Initializing cgroup subsys devices<br>Initializing cgroup subsys freezer<br=
>Initializing cgroup subsys net_cls<br>Initializing cgroup subsys blkio<br>=
CPU: Testing write buffer coherency: ok<br>ftrace: allocating 21594 entries=
 in 64 pages<br>
Setting up static identity map for 0x8059faf0 - 0x8059fb48<br>devtmpfs: ini=
tialized<br>dummy: <br>NET: Registered protocol family 16<br>GPMC revision =
5.0<br>gpiochip_add: registered GPIOs 0 to 31 on device: gpio<br>OMAP GPIO =
hardware version 2.5<br>
gpiochip_add: registered GPIOs 32 to 63 on device: gpio<br>gpiochip_add: re=
gistered GPIOs 64 to 95 on device: gpio<br>gpiochip_add: registered GPIOs 9=
6 to 127 on device: gpio<br>gpiochip_add: registered GPIOs 128 to 159 on de=
vice: gpio<br>
gpiochip_add: registered GPIOs 160 to 191 on device: gpio<br>omap_mux_init:=
 Add partition: #1: core, flags: 0<br>OMAP3 Beagle Rev: xM C<br>Reprogrammi=
ng SDRC clock to 332000000 Hz<br>=A0usbhs_omap: alias fck already exists<br=
>
Found NAND on CS0<br>Registering NAND on CS0<br>Unable to get DVI reset GPI=
O<br>=A0omap-mcbsp.2: alias fck already exists<br>=A0omap-mcbsp.3: alias fc=
k already exists<br>OMAP DMA hardware revision 5.0<br>bio: create slab &lt;=
bio-0&gt; at 0<br>
SCSI subsystem initialized<br>omap2_mcspi omap2_mcspi.1: master is unqueued=
, this is deprecated<br>omap2_mcspi omap2_mcspi.2: master is unqueued, this=
 is deprecated<br>omap2_mcspi omap2_mcspi.3: master is unqueued, this is de=
precated<br>
omap2_mcspi omap2_mcspi.4: master is unqueued, this is deprecated<br>usbcor=
e: registered new interface driver usbfs<br>usbcore: registered new interfa=
ce driver hub<br>usbcore: registered new device driver usb<br>omap_i2c omap=
_i2c.1: bus 1 rev1.4.0 at 2600 kHz<br>
twl 1-0048: PIH (irq 7) chaining IRQs 320..328<br>twl 1-0048: power (irq 32=
5) chaining IRQs 328..335<br>twl4030_gpio twl4030_gpio: gpio (irq 320) chai=
ning IRQs 336..353<br>gpiochip_add: registered GPIOs 192 to 211 on device: =
twl4030<br>
VUSB1V5: 1500 mV normal standby<br>VUSB1V8: 1800 mV normal standby<br>VUSB3=
V1: 3100 mV normal standby<br>twl4030_usb twl4030_usb: Initialized TWL4030 =
USB module<br>VMMC1: 1850 &lt;--&gt; 3150 mV at 3000 mV normal standby<br>
VDAC: 1800 mV normal standby<br>VDVI: 1800 mV normal standby<br>VSIM: 1800 =
&lt;--&gt; 3000 mV at 1800 mV normal standby<br>omap_i2c omap_i2c.3: bus 3 =
rev1.4.0 at 100 kHz<br>Advanced Linux Sound Architecture Driver Version 1.0=
.25.<br>
cfg80211: Calling CRDA to update world regulatory domain<br>Switching to cl=
ocksource 32k_counter<br>usbhs_omap usbhs_omap: xclk60mhsp1_ck set parentfa=
iled error:-22<br>usbhs_omap usbhs_omap: xclk60mhsp2_ck set parentfailed er=
ror:-22<br>
NET: Registered protocol family 2<br>IP route cache hash table entries: 409=
6 (order: 2, 16384 bytes)<br>TCP established hash table entries: 16384 (ord=
er: 5, 131072 bytes)<br>TCP bind hash table entries: 16384 (order: 4, 65536=
 bytes)<br>
TCP: Hash tables configured (established 16384 bind 16384)<br>TCP: reno reg=
istered<br>UDP hash table entries: 256 (order: 0, 4096 bytes)<br>UDP-Lite h=
ash table entries: 256 (order: 0, 4096 bytes)<br>NET: Registered protocol f=
amily 1<br>
RPC: Registered named UNIX socket transport module.<br>RPC: Registered udp =
transport module.<br>RPC: Registered tcp transport module.<br>RPC: Register=
ed tcp NFSv4.1 backchannel transport module.<br>VFS: Disk quotas dquot_6.5.=
2<br>
Dquot-cache hash table entries: 1024 (order 0, 4096 bytes)<br>Registering u=
nionfs 2.5.10 (for 3.1.0-rc4)<br>NFS: Registering the id_resolver key type<=
br>Btrfs loaded<br>msgmni has been set to 965<br>Block layer SCSI generic (=
bsg) driver version 0.4 loaded (major 253)<br>
io scheduler noop registered<br>io scheduler deadline registered<br>io sche=
duler cfq registered (default)<br>OMAP DSS rev 2.0<br>Serial: 8250/16550 dr=
iver, 4 ports, IRQ sharing enabled<br>omap_uart.0: ttyO0 at MMIO 0x4806a000=
 (irq =3D 72) is a OMAP UART0<br>
omap_uart.1: ttyO1 at MMIO 0x4806c000 (irq =3D 73) is a OMAP UART1<br>omap_=
uart.2: ttyO2 at MMIO 0x49020000 (irq =3D 74) is a OMAP UART2<br>console [t=
tyO2] enabled<br>omap_uart.3: ttyO3 at MMIO 0x49042000 (irq =3D 80) is a OM=
AP UART3<br>
brd: module loaded<br>No NAND device found<br>No NAND device found<br>usbco=
re: registered new interface driver kaweth<br>pegasus: v0.6.14 (2006/09/27)=
, Pegasus/Pegasus II USB Ethernet driver<br>usbcore: registered new interfa=
ce driver pegasus<br>
usbcore: registered new interface driver asix<br>usbcore: registered new in=
terface driver cdc_ether<br>usbcore: registered new interface driver dm9601=
<br>usbcore: registered new interface driver smsc75xx<br>usbcore: registere=
d new interface driver smsc95xx<br>
usbcore: registered new interface driver net1080<br>usbcore: registered new=
 interface driver cdc_subset<br>usbcore: registered new interface driver za=
urus<br>usbcore: registered new interface driver MOSCHIP usb-ethernet drive=
r<br>
usbcore: registered new interface driver int51x1<br>usbcore: registered new=
 interface driver cdc_ncm<br>ehci_hcd: USB 2.0 &#39;Enhanced&#39; Host Cont=
roller (EHCI) Driver<br>ehci-omap.0 supply hsusb0 not found, using dummy re=
gulator<br>
ehci-omap.0 supply hsusb1 not found, using dummy regulator<br>ehci-omap ehc=
i-omap.0: OMAP-EHCI Host Controller<br>ehci-omap ehci-omap.0: new USB bus r=
egistered, assigned bus number 1<br>ehci-omap ehci-omap.0: irq 77, io mem 0=
x48064800<br>
ehci-omap ehci-omap.0: USB 2.0 started, EHCI 1.00<br>hub 1-0:1.0: USB hub f=
ound<br>hub 1-0:1.0: 3 ports detected<br>Initializing USB Mass Storage driv=
er...<br>usbcore: registered new interface driver usb-storage<br>USB Mass S=
torage support registered.<br>
musb-hdrc: version 6.0, ?dma?, otg (peripheral+host)<br>musb-hdrc: ConfigDa=
ta=3D0xde (UTMI-8, dyn FIFOs, bulk combine, bulk split, HB-ISO Rx, HB-ISO T=
x, SoftConn)<br>musb-hdrc: MHDRC RTL version 1.800 <br>musb-hdrc: setup fif=
o_mode 4<br>
musb-hdrc: 28/31 max ep, 16384/16384 memory<br>musb-hdrc musb-hdrc: USB OTG=
 mode controller at fa0ab000 using DMA, IRQ 92<br>mousedev: PS/2 mouse devi=
ce common for all mice<br>twl_rtc twl_rtc: Enabling TWL-RTC<br>twl_rtc twl_=
rtc: rtc core: registered twl_rtc as rtc0<br>
omap_wdt: OMAP Watchdog Timer Rev 0x31: initial timeout 60 sec<br>cpuidle: =
using governor ladder<br>cpuidle: using governor menu<br>usbcore: registere=
d new interface driver usbhid<br>usbhid: USB HID core driver<br>OMAP3 Beagl=
e/Devkit8000 SoC init<br>
soc-audio soc-audio: ASoC machine omap3beagle should use snd_soc_register_c=
ard()<br>usb 1-2: new high-speed USB device number 2 using ehci-omap<br>twl=
4030-codec twl4030-codec: ASoC: Failed to create Capture debugfs file<br>
asoc: twl4030-hifi &lt;-&gt; omap-mcbsp.2 mapping ok<br>TCP: cubic register=
ed<br>NET: Registered protocol family 10<br>IPv6 over IPv4 tunneling driver=
<br>NET: Registered protocol family 17<br>Registering the dns_resolver key =
type<br>
VFP support v0.3: implementor 41 architecture 3 part 30 variant c rev 3<br>=
ThumbEE CPU extension supported.<br>sr_init: No PMIC hook to init smartrefl=
ex<br>smartreflex smartreflex.0: omap_sr_probe: SmartReflex driver initiali=
zed<br>
smartreflex smartreflex.1: omap_sr_probe: SmartReflex driver initialized<br=
>SmartReflex Class3 initialized<br>clock: disabling unused clocks to save p=
ower<br>omapfb omapfb: no driver for display: dvi<br>Console: switching to =
colour frame buffer device 90x35<br>
hub 1-2:1.0: USB hub found<br>hub 1-2:1.0: 5 ports detected<br>VDVI: incomp=
lete constraints, leaving on<br>console [netcon0] enabled<br>netconsole: ne=
twork logging started<br>twl_rtc twl_rtc: setting system clock to 2012-07-2=
6 01:39:05 UTC (1343266745)<br>
ALSA device list:<br>=A0 #0: omap3beagle<br>Waiting for root device /dev/mm=
cblk0p2...<br>usb 1-2.1: new high-speed USB device number 3 using ehci-omap=
<br>smsc95xx v1.0.4<br>smsc95xx 1-2.1:1.0: eth0: register &#39;smsc95xx&#39=
; at usb-ehci-omap.0-2.1, smsc95xx USB 2.0 Ethernet, aa:b7:56:ab:a1:08<br>
usb 1-2.3: new low-speed USB device number 4 using ehci-omap<br>input: CHES=
EN USB Keyboard as /devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/=
1-2.3:1.0/input/input0<br>generic-usb 0003:0A81:0101.0001: input: USB HID v=
1.10 Keyboard [CHESEN USB Keyboard] on usb-ehci-omap.0-2.3/input0<br>
input: CHESEN USB Keyboard as /devices/platform/usbhs_omap/ehci-omap.0/usb1=
/1-2/1-2.3/1-2.3:1.1/input/input1<br>generic-usb 0003:0A81:0101.0002: input=
: USB HID v1.10 Device [CHESEN USB Keyboard] on usb-ehci-omap.0-2.3/input1<=
br>
mmc0: host does not support reading read-only switch. assuming write-enable=
.<br>mmc0: new high speed SDHC card at address b368<br>mmcblk0: mmc0:b368 S=
DU16 14.9 GiB <br>=A0mmcblk0: p1 p2<br>usb 1-2.5: new low-speed USB device =
number 5 using ehci-omap<br>
kjournald starting.=A0 Commit interval 5 seconds<br>EXT3-fs (mmcblk0p2): us=
ing internal journal<br>EXT3-fs (mmcblk0p2): mounted filesystem with ordere=
d data mode<br>VFS: Mounted root (ext3 filesystem) on device 179:2.<br>devt=
mpfs: mounted<br>
Freeing init memory: 364K<br>input: PixArt USB Optical Mouse as /devices/pl=
atform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.5/1-2.5:1.0/input/input2<br>gene=
ric-usb 0003:093A:2510.0003: input: USB HID v1.11 Mouse [PixArt USB Optical=
 Mouse] on usb-ehci-omap.0-2.5/input0<br>
udev[64]: starting version 164<br>ADDRCONF(NETDEV_UP): eth0: link is not re=
ady<br>smsc95xx 1-2.1:1.0: eth0: link up, 100Mbps, full-duplex, lpa 0x45E1<=
br>ADDRCONF(NETDEV_CHANGE): eth0: link becomes ready<br>ip_tables: (C) 2000=
-2006 Netfilter Core Team<br>
nf_conntrack version 0.5.0 (7726 buckets, 30904 max)<br>root@beagleboard:~#=
 cd /var/log<br>root@beagleboard:/var/log# ls<br>Xorg.0.log=A0 messages=A0=
=A0=A0 wtmp<br>root@beagleboard:/var/log# les=A0=A0 cat Xorg.0.log <br>[323=
6961.265] <br>
X.Org X Server 1.11.2<br>Release Date: 2011-11-04<br>[3236961.275] X Protoc=
ol Version 11, Revision 0<br>[3236961.276] Build Operating System: Linux 3.=
3.4-5.fc17.x86_64 x86_64 <br>[3236961.278] Current Operating System: Linux =
beagleboard 3.4.1-yocto-standard #1 Wed Jul 25 17:29:01 MDT 2012 armv7l<br>
[3236961.279] Kernel command line: console=3Dtty0 console=3DttyO2,115200n8 =
<br>root=3D/dev/mmcblk0p2 rootwait rootfstype=3Dext3 ro<br>[3236961.280] Bu=
ild Date: 25 July 2012=A0 06:09:49PM<br>[3236961.280]=A0 <br>[3236961.280] =
Current version of pixman: 0.26.2<br>
[3236961.280] Before reporting problems, check <a href=3D"http://wiki.x.org=
">http://wiki.x.org</a><br>to make sure that you have the latest version.<b=
r>[3236961.281] Markers: (--) probed, (**) from config file, (=3D=3D) defau=
lt setting,<br>
(++) from command line, (!!) notice, (II) informational,<br>(WW) warning, (=
EE) error, (NI) not implemented, (??) unknown.<br>[3236961.283] (=3D=3D) Lo=
g file: &quot;/var/log/Xorg.0.log&quot;, Time: Thu Jul 26 01:39:17 2012<br>
[3236961.287] (=3D=3D) Using config file: &quot;/etc/X11/xorg.conf&quot;<br=
>[3236961.288] (=3D=3D) Using system config directory &quot;/usr/share/X11/=
xorg.conf.d&quot;<br>[3236961.299] (=3D=3D) ServerLayout &quot;Builtin Defa=
ult Layout&quot;<br>
[3236961.299] (**) |--&gt;Screen &quot;Builtin Default fbdev Screen 0&quot;=
 (0)<br>[3236961.299] (**) |=A0=A0 |--&gt;Monitor &quot;Builtin Default Mon=
itor&quot;<br>[3236961.304] (**) |=A0=A0 |--&gt;Device &quot;Builtin Defaul=
t fbdev Device 0&quot;<br>
[3236961.304] (**) Option &quot;DontZap&quot; &quot;0&quot;<br>[3236961.305=
] (**) Option &quot;AutoAddDevices&quot; &quot;False&quot;<br>[3236961.305]=
 (**) Not automatically adding devices<br>[3236961.305] (=3D=3D) Automatica=
lly enabling devices<br>
[3236961.310] (WW) The directory &quot;/usr/share/fonts/X11/misc/&quot; doe=
s not exist.<br>[3236961.311] Entry deleted from font path.<br>[3236961.311=
] (WW) The directory &quot;/usr/share/fonts/X11/TTF/&quot; does not exist.<=
br>
[3236961.311] Entry deleted from font path.<br>[3236961.311] (WW) The direc=
tory &quot;/usr/share/fonts/X11/OTF/&quot; does not exist.<br>[3236961.311]=
 Entry deleted from font path.<br>[3236961.311] (WW) The directory &quot;/u=
sr/share/fonts/X11/Type1/&quot; does not exist.<br>
[3236961.311] Entry deleted from font path.<br>[3236961.311] (WW) The direc=
tory &quot;/usr/share/fonts/X11/100dpi/&quot; does not exist.<br>[3236961.3=
11] Entry deleted from font path.<br>[3236961.311] (WW) The directory &quot=
;/usr/share/fonts/X11/75dpi/&quot; does not exist.<br>
[3236961.311] Entry deleted from font path.<br>[3236961.311] (=3D=3D) FontP=
ath set to:<br><br>[3236961.311] (=3D=3D) ModulePath set to &quot;/usr/lib/=
xorg/modules&quot;<br>[3236961.311] (=3D=3D) |--&gt;Input Device &quot;&lt;=
default pointer&gt;&quot;<br>
[3236961.312] (=3D=3D) |--&gt;Input Device &quot;&lt;default keyboard&gt;&q=
uot;<br>[3236961.312] (=3D=3D) The core pointer device wasn&#39;t specified=
 explicitly in the layout.<br>Using the default mouse configuration.<br>[32=
36961.312] (=3D=3D) The core keyboard device wasn&#39;t specified explicitl=
y in the layout.<br>
Using the default keyboard configuration.<br>[3236961.312] (II) Loader magi=
c: 0x17b930<br>[3236961.312] (II) Module ABI versions:<br>[3236961.312] X.O=
rg ANSI C Emulation: 0.4<br>[3236961.312] X.Org Video Driver: 11.0<br>[3236=
961.312] X.Org XInput driver : 13.0<br>
[3236961.312] X.Org Server Extension : 6.0<br>[3236961.312] (II) Open APM s=
uccessful<br>[3236961.315] (II) &quot;extmod&quot; will be loaded. This was=
 enabled by default and also specified in the config file.<br>[3236961.315]=
 (II) &quot;dbe&quot; will be loaded. This was enabled by default and also =
specified in the config file.<br>
[3236961.315] (II) &quot;dri2&quot; will be loaded by default.<br>[3236961.=
315] (II) LoadModule: &quot;extmod&quot;<br>[3236961.332] (WW) Warning, cou=
ldn&#39;t open module extmod<br>[3236961.332] (II) UnloadModule: &quot;extm=
od&quot;<br>
[3236961.332] (II) Unloading extmod<br>[3236961.332] (EE) Failed to load mo=
dule &quot;extmod&quot; (module does not exist, 0)<br>[3236961.334] (II) Lo=
adModule: &quot;dbe&quot;<br>[3236961.335] (WW) Warning, couldn&#39;t open =
module dbe<br>
[3236961.335] (II) UnloadModule: &quot;dbe&quot;<br>[3236961.335] (II) Unlo=
ading dbe<br>[3236961.335] (EE) Failed to load module &quot;dbe&quot; (modu=
le does not exist, 0)<br>[3236961.346] (II) LoadModule: &quot;glx&quot;<br>
[3236961.347] (WW) Warning, couldn&#39;t open module glx<br>[3236961.347] (=
II) UnloadModule: &quot;glx&quot;<br>[3236961.347] (II) Unloading glx<br>[3=
236961.347] (EE) Failed to load module &quot;glx&quot; (module does not exi=
st, 0)<br>
[3236961.351] (II) LoadModule: &quot;record&quot;<br>[3236961.351] (WW) War=
ning, couldn&#39;t open module record<br>[3236961.351] (II) UnloadModule: &=
quot;record&quot;<br>[3236961.351] (II) Unloading record<br>[3236961.352] (=
EE) Failed to load module &quot;record&quot; (module does not exist, 0)<br>
[3236961.365] (II) LoadModule: &quot;dri&quot;<br>[3236961.366] (WW) Warnin=
g, couldn&#39;t open module dri<br>[3236961.366] (II) UnloadModule: &quot;d=
ri&quot;<br>[3236961.366] (II) Unloading dri<br>[3236961.366] (EE) Failed t=
o load module &quot;dri&quot; (module does not exist, 0)<br>
[3236961.374] (II) LoadModule: &quot;dri2&quot;<br>[3236961.375] (WW) Warni=
ng, couldn&#39;t open module dri2<br>[3236961.375] (II) UnloadModule: &quot=
;dri2&quot;<br>[3236961.375] (II) Unloading dri2<br>[3236961.375] (EE) Fail=
ed to load module &quot;dri2&quot; (module does not exist, 0)<br>
[3236961.377] (II) LoadModule: &quot;omapfb&quot;<br>[3236961.378] (II) Loa=
ding /usr/lib/xorg/modules/drivers/omapfb_drv.so<br>[3236961.387] (II) Modu=
le omapfb: vendor=3D&quot;X.Org Foundation&quot;<br>[3236961.387] compiled =
for 1.11.2, module version =3D 0.1.1<br>
[3236961.387] ABI class: X.Org Video Driver, version 11.0<br>[3236961.387] =
(II) LoadModule: &quot;mouse&quot;<br>[3236961.387] (II) Loading /usr/lib/x=
org/modules/input/mouse_drv.so<br>[3236961.391] (II) Module mouse: vendor=
=3D&quot;X.Org Foundation&quot;<br>
[3236961.391] compiled for 1.11.2, module version =3D 1.7.2<br>[3236961.391=
] Module class: X.Org XInput Driver<br>[3236961.391] ABI class: X.Org XInpu=
t driver, version 13.0<br>[3236961.391] (II) LoadModule: &quot;kbd&quot;<br=
>
[3236961.392] (II) Loading /usr/lib/xorg/modules/input/kbd_drv.so<br>[32369=
61.396] (II) Module kbd: vendor=3D&quot;X.Org Foundation&quot;<br>[3236961.=
396] compiled for 1.11.2, module version =3D 1.6.1<br>[3236961.396] Module =
class: X.Org XInput Driver<br>
[3236961.397] ABI class: X.Org XInput driver, version 13.0<br>[3236961.397]=
 (II) omapfb: Driver for OMAP framebuffer (omapfb) and external LCD control=
lers:<br>omap1/2/3, S1D13745, HWA742<br>[3236961.397] (--) using VT number =
1<br>
<br>[3236961.409] (WW) Falling back to old probe method for OMAPFB<br>[3236=
961.409] (II) Loading /usr/lib/xorg/modules/drivers/omapfb_drv.so<br>[32369=
61.409] (WW) VGA arbiter: cannot open kernel arbiter, no multi-card support=
<br>
[3236961.410] (WW) Error opening /sys/devices/platform/omapfb/ctrl/name: No=
 such file or directory<br>[3236961.410] (WW) Can&#39;t autodetect LCD cont=
roller, assuming internal<br>[3236961.410] (II) LCD controller: internal<br=
>
[3236961.410] (II) omapfb(0): Base plane capabilities:<br>[3236961.410] (II=
) omapfb(0): Base plane supports the following image formats:<br>[3236961.4=
10] (II) omapfb(0): VideoRAM: 1616KiB (SDRAM)<br>[3236961.410] (II) omapfb(=
0): Creating default Display subsection in Screen section<br>
&quot;Builtin Default fbdev Screen 0&quot; for depth/fbbpp 24/32<br>[323696=
1.410] (--) omapfb(0): Depth 24, (=3D=3D) framebuffer bpp 32<br>[3236961.41=
0] (=3D=3D) omapfb(0): RGB weight 888<br>[3236961.410] (=3D=3D) omapfb(0): =
Default visual is TrueColor<br>
[3236961.410] (II) omapfb(0): Rotate test version 0.02<br>[3236961.415] (II=
) omapfb(0): Output LCD using monitor section Builtin Default Monitor<br>[3=
236961.415] (II) omapfb(0): Printing probed modes for output LCD<br>[323696=
1.416] (II) omapfb(0): Modeline &quot;720x574&quot;x25.0=A0=A0 13.50=A0 720=
 732 796 864=A0 574 579 584 625 (15.6 kHz)<br>
[3236961.416] (II) omapfb(0): Output LCD connected<br>[3236961.416] (II) om=
apfb(0): Using exact sizes for initial modes<br>[3236961.416] (II) omapfb(0=
): Output LCD using initial mode 720x574<br>[3236961.416] (II) omapfb(0): U=
sing default gamma of (1.0, 1.0, 1.0) unless otherwise stated.<br>
[3236961.416] (II) omapfb(0): XRandR extension initialized<br>[3236961.416]=
 (--) omapfb(0): Virtual size is 720x574 (pitch 720)<br>[3236961.416] (**) =
omapfb(0):=A0 Mode &quot;720x574&quot;: 13.5 MHz, 15.6 kHz, 25.0 Hz<br>[323=
6961.416] (II) omapfb(0): Modeline &quot;720x574&quot;x25.0=A0=A0 13.50=A0 =
720 732 796 864=A0 574 579 584 625 (15.6 kHz)<br>
[3236961.416] (=3D=3D) omapfb(0): DPI set to (96, 96)<br>[3236961.416] (--)=
 Depth 24 pixmap format is 32 bpp<br>[3236961.422] (II) Loading sub module =
&quot;fb&quot;<br>[3236961.422] (II) LoadModule: &quot;fb&quot;<br>[3236961=
.423] (II) Loading /usr/lib/xorg/modules/libfb.so<br>
[3236961.438] (II) Module fb: vendor=3D&quot;X.Org Foundation&quot;<br>[323=
6961.438] compiled for 1.11.2, module version =3D 1.0.0<br>[3236961.438] AB=
I class: X.Org ANSI C Emulation, version 0.4<br>[3236961.445] (=3D=3D) omap=
fb(0): DPMS enabled<br>
[3236961.445] (EE) omapfb(0): Failed to open /dev/fb2: No such file or dire=
ctory<br>[3236961.445] (EE) omapfb(0): XVScreenInit failed<br>[3236961.446]=
 (II) omapfb(0): RandR 1.2 enabled, ignore the following RandR disabled mes=
sage.<br>
[3236961.446] (--) RandR disabled<br>[3236961.446] (II) Initializing built-=
in extension Generic Event Extension<br>[3236961.446] (II) Initializing bui=
lt-in extension SHAPE<br>[3236961.446] (II) Initializing built-in extension=
 MIT-SHM<br>
[3236961.446] (II) Initializing built-in extension XInputExtension<br>[3236=
961.446] (II) Initializing built-in extension XTEST<br>[3236961.446] (II) I=
nitializing built-in extension BIG-REQUESTS<br>[3236961.446] (II) Initializ=
ing built-in extension SYNC<br>
[3236961.446] (II) Initializing built-in extension XKEYBOARD<br>[3236961.44=
6] (II) Initializing built-in extension XC-MISC<br>[3236961.446] (II) Initi=
alizing built-in extension XFIXES<br>[3236961.446] (II) Initializing built-=
in extension RENDER<br>
[3236961.446] (II) Initializing built-in extension RANDR<br>[3236961.446] (=
II) Initializing built-in extension COMPOSITE<br>[3236961.446] (II) Initial=
izing built-in extension DAMAGE<br>[3236961.563] (II) omapfb(0): Setting sc=
reen physical size to 190 x 151<br>
[3236962.099] (II) Using input driver &#39;mouse&#39; for &#39;&lt;default =
pointer&gt;&#39;<br>[3236962.099] (II) Loading /usr/lib/xorg/modules/input/=
mouse_drv.so<br>[3236962.099] (**) Option &quot;CorePointer&quot;<br>[32369=
62.099] (**) &lt;default pointer&gt;: always reports core events<br>
[3236962.099] (WW) &lt;default pointer&gt;: No Device specified, looking fo=
r one...<br>[3236962.100] (II) &lt;default pointer&gt;: Setting Device opti=
on to &quot;/dev/input/mice&quot;<br>[3236962.100] (--) &lt;default pointer=
&gt;: Device: &quot;/dev/input/mice&quot;<br>
[3236962.100] (=3D=3D) &lt;default pointer&gt;: Protocol: &quot;Auto&quot;<=
br>[3236962.100] (**) &lt;default pointer&gt;: always reports core events<b=
r>[3236962.100] (**) Option &quot;Device&quot; &quot;/dev/input/mice&quot;<=
br>
[3236962.100] (=3D=3D) &lt;default pointer&gt;: Emulate3Buttons, Emulate3Ti=
meout: 50<br>[3236962.100] (**) &lt;default pointer&gt;: ZAxisMapping: butt=
ons 4 and 5<br>[3236962.100] (**) &lt;default pointer&gt;: Buttons: 9<br>[3=
236962.101] (II) XINPUT: Adding extended input device &quot;&lt;default poi=
nter&gt;&quot; (type: MOUSE, id 6)<br>
[3236962.101] (**) &lt;default pointer&gt;: (accel) keeping acceleration sc=
heme 1<br>[3236962.101] (**) &lt;default pointer&gt;: (accel) acceleration =
profile 0<br>[3236962.101] (**) &lt;default pointer&gt;: (accel) accelerati=
on factor: 2.000<br>
[3236962.101] (**) &lt;default pointer&gt;: (accel) acceleration threshold:=
 4<br>[3236962.101] (II) &lt;default pointer&gt;: Setting mouse protocol to=
 &quot;ExplorerPS/2&quot;<br>[3236962.396] (II) &lt;default pointer&gt;: ps=
2EnableDataReporting: succeeded<br>
[3236962.396] (II) Using input driver &#39;kbd&#39; for &#39;&lt;default ke=
yboard&gt;&#39;<br>[3236962.396] (II) Loading /usr/lib/xorg/modules/input/k=
bd_drv.so<br>[3236962.397] (**) Option &quot;CoreKeyboard&quot;<br>[3236962=
.397] (**) &lt;default keyboard&gt;: always reports core events<br>
[3236962.397] (**) &lt;default keyboard&gt;: always reports core events<br>=
[3236962.397] (**) Option &quot;Protocol&quot; &quot;standard&quot;<br>[323=
6962.397] (**) Option &quot;XkbRules&quot; &quot;base&quot;<br>[3236962.397=
] (**) Option &quot;XkbModel&quot; &quot;pc105&quot;<br>
[3236962.397] (**) Option &quot;XkbLayout&quot; &quot;us&quot;<br>[3236962.=
397] (II) XINPUT: Adding extended input device &quot;&lt;default keyboard&g=
t;&quot; (type: KEYBOARD, id 7)<br>[3236962.489] (II) config/udev: Adding i=
nput device CHESEN USB Keyboard (/dev/input/event0)<br>
[3236962.489] (II) AutoAddDevices is off - not adding device.<br>[3236962.4=
91] (II) config/udev: Adding input device CHESEN USB Keyboard (/dev/input/e=
vent1)<br>[3236962.491] (II) AutoAddDevices is off - not adding device.<br>
[3236962.493] (II) config/udev: Adding input device PixArt USB Optical Mous=
e (/dev/input/event2)<br>[3236962.493] (II) AutoAddDevices is off - not add=
ing device.<br>[3236962.494] (II) config/udev: Adding input device PixArt U=
SB Optical Mouse (/dev/input/mouse0)<br>
[3236962.494] (II) AutoAddDevices is off - not adding device.<br>root@beagl=
eboard:/var/log# uname -a<br>Linux beagleboard 3.4.1-yocto-standard #1 Wed =
Jul 25 17:29:01 MDT 2012 armv7l GNU/Linux<br>root@beagleboard:/var/log# <br=
>
* - * Qodem 0.1.2 Capture Generated Wed, 25 Jul 2012 19:55:35 -0600 END * -=
 *<br>Thanks Any help will be apprecated.<br><br>

--bcaec51019032eb7ef04c5b2164a--
