Return-Path: <vidal.develone@gmail.com>
Received: from mail-yw0-f48.google.com (mail-yw0-f48.google.com
	[209.85.213.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 32A14E00280
	for <yocto@yoctoproject.org>; Sat, 14 Jul 2012 06:23:16 -0700 (PDT)
Received: by yhfq46 with SMTP id q46so4831116yhf.35
	for <yocto@yoctoproject.org>; Sat, 14 Jul 2012 06:23:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=VWSlZmPzYxzKZ+5GvCmCn0jQi9QLhIvg1CDWeMHrPD0=;
	b=xwR8lZz1i682yzzAVg4HOUMgTQuwlijw/CLfzDldZnjE3MlyEGJIHWaW79h5wA1Jkt
	t1sKZEFE3/5bG5lbBjS8+VqyWXhFq27inBKUR3+2eTPzITAUyE5VLoUSzfFZyC98eTr2
	2tYJ6yFBF6zBRok79aYKhrQ+009kxlr8JOzRFmsDxXDAxRRQGBCplr+Z0I7dsx/sKeoo
	CDnVOJvEVvjgkJpsksY9EjhVpSQg58xtDXkdjmpM5w5wMPM20FfDOU7ARsDezYP8DGAv
	yBPhDMzeVhpyBZGy7DwLukGfvjvDsXMXxPMPTL6Q/YLNkiX3tTyUbcOYHfAxnydbYdkQ
	xILg==
MIME-Version: 1.0
Received: by 10.50.184.129 with SMTP id eu1mr1543268igc.18.1342272194894; Sat,
	14 Jul 2012 06:23:14 -0700 (PDT)
Received: by 10.64.18.180 with HTTP; Sat, 14 Jul 2012 06:23:14 -0700 (PDT)
Date: Sat, 14 Jul 2012 07:23:14 -0600
Message-ID: <CANwz6nyuV8tRjt8BORjC72gs_UrO9v51+Vv3dkHiqQpDx_9Vcg@mail.gmail.com>
From: Edward Vidal <vidal.develone@gmail.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Sun, 15 Jul 2012 10:19:52 -0700
Subject: beagleboard not booting
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
X-List-Received-Date: Sat, 14 Jul 2012 13:23:16 -0000
Content-Type: multipart/alternative; boundary=14dae9340eb55e5bc104c4ca1967

--14dae9340eb55e5bc104c4ca1967
Content-Type: text/plain; charset=ISO-8859-1

Hello,
git clone git://git.yoctoproject.org/poky.git
cd poky
. oe-init-build-env
MACHINE=beagleboard bitbake -v core-image-sato



Created 2 partitions on /dev/sdb
fdisk /dev/sdb
Welcome to fdisk (util-linux 2.21.1).

Changes will remain in memory only, until you decide to write them.
Be careful before using the write command.


Command (m for help): p

Disk /dev/sdb: 7960 MB, 7960788992 bytes
255 heads, 63 sectors/track, 967 cylinders, total 15548416 sectors
Units = sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes
Disk identifier: 0x00000000

   Device Boot      Start         End      Blocks   Id  System
/dev/sdb1   *          63      144584       72261    c  W95 FAT32 (LBA)
/dev/sdb2          144585     7132859     3494137+  83  Linux

format 2 partitions.

mkfs.vfat -F 16 -n  "boot" /dev/sdb1
mke2fs -j -L "rootfs" /dev/sdb2
remove the mmc

/dev/sdb1                        72098        0     72098   0%
/run/media/vidal/boot
/dev/sdb2                      3441720    74096   3192920   3%
/run/media/vidal/rootfs

cd /home/vidal/poky/build/tmp/deploy/images
cp  MLO-beagleboard-1.5.0+git1+9f94c6577e3a018b6b75cbe39f32bb331871f915-r0
/run/media/vidal/boot/MLO

cp
u-boot-beagleboard-v2011.06+git5+b1af6f532e0d348b153d5c148369229d24af361a-r1.bin
/run/media/vidal/boot/u-boot.bin

cp
uImage-3.0.32+git1+d282029891bba5440630a885b940dea5e34e3e2c_1+3ab688a78cac7b2e32afc83376a53370f2bd13b7-r4.0-beagleboard-20120712003552.bin
/run/media/vidal/boot/uImage

cd /run/media/vidal/rootfs

tar jvxf
/home/vidal/poky/build/tmp/deploy/images/core-image-sato-beagleboard-20120712003552.rootfs.tar.bz2

cp /home/vidal/uEnv.txt /run/media/vidal/boot
cat /run/media/vidal/boot/uEnv.txt
mpurate=auto

dvimode="hd720 omapfb.vram=0:8M,1:4M,2:4M"
vram=16M
optargs="consoleblank=0"
console="tty0 console=ttyO2,115200n8"

umount /run/media/vidal/boot
umount /run/media/vidal/rootfs
sync
* - * Qodem 0.1.2 Capture Generated Fri, 13 Jul 2012 10:51:17 -0600 BEGIN *
- *



Texas Instruments X-Loader 1.5.0 (Jul 11 2012 - 21:01:18)
Beagle xM
Reading boot sector
Loading u-boot.bin from mmc


U-Boot 2011.06 (Jul 11 2012 - 21:01:18)

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
Hit any key to stop autoboot: 10  9  8  7  6  5  4  3  2  1  0
SD/MMC found on device 0
reading uEnv.txt

130 bytes read
Importing environment from mmc ...
reading uImage

3043164 bytes read
Booting from mmc ...
## Booting kernel from Legacy Image at 82000000 ...
   Image Name:   Linux-3.0.32-yocto-standard
   Image Type:   ARM Linux Kernel Image (uncompressed)
   Data Size:    3043100 Bytes = 2.9 MiB
   Load Address: 80008000
   Entry Point:  80008000
   Verifying Checksum ... OK
   Loading Kernel Image ... OK
OK

Starting kernel ...

Uncompressing Linux... done, booting the kernel.
Initializing cgroup subsys cpuset
Initializing cgroup subsys cpu
Linux version 3.0.32-yocto-standard
(vidal@ws009.swbell.net<http://us.mc1814.mail.yahoo.com/mc/compose?to=vidal@ws009.swbell.net>)
(gcc version 4.7.2
20120615 (prerelease) (GCC) ) #1 Wed Jul 11 20:38:46 MDT 2012
CPU: ARMv7 Processor [413fc082] revision 2 (ARMv7), cr=10c53c7d
CPU: VIPT nonaliasing data cache, VIPT aliasing instruction cache
Machine: OMAP3 Beagle Board
Reserving 16777216 bytes SDRAM for VRAM
Memory policy: ECC disabled, Data cache writeback
OMAP3630 ES1.2 (l2cache iva sgx neon isp 192mhz_clk )
SRAM: Mapped pa 0x40200000 to va 0xfe400000 size: 0x10000
Clocking rate (Crystal/Core/MPU): 26.0/332/600 MHz
Reprogramming SDRC clock to 332000000 Hz
Built 1 zonelists in Zone order, mobility grouping on.  Total pages: 125952
Kernel command line: console=tty0 console=ttyO2,115200n8 mpurate=auto
vram=16M o
mapfb.mode=dvi:hd720 omapfb.vram=0:8M,1:4M,2:4M omapfb.debug=y
omapdss.def_disp=
dvi root=/dev/mmcblk0p2 rw rootfstype=ext3 rootwait
PID hash table entries: 2048 (order: 1, 8192 bytes)
Dentry cache hash table entries: 65536 (order: 6, 262144 bytes)
Inode-cache hash table entries: 32768 (order: 5, 131072 bytes)
allocated 2097152 bytes of page_cgroup
please try 'cgroup_disable=memory' option if you don't want memory cgroups
Memory: 496MB = 496MB total
Memory: 494448k/494448k available, 29840k reserved, 0K highmem
Virtual kernel memory layout:
    vector  : 0xffff0000 - 0xffff1000   (   4 kB)
    fixmap  : 0xfff00000 - 0xfffe0000   ( 896 kB)
    DMA     : 0xffc00000 - 0xffe00000   (   2 MB)
    vmalloc : 0xe0800000 - 0xf8000000   ( 376 MB)
    lowmem  : 0xc0000000 - 0xe0000000   ( 512 MB)
    modules : 0xbf000000 - 0xc0000000   (  16 MB)
      .init : 0xc0008000 - 0xc0058000   ( 320 kB)
      .text : 0xc0058000 - 0xc0613b0c   (5871 kB)
      .data : 0xc0614000 - 0xc0671438   ( 374 kB)
       .bss : 0xc067145c - 0xc06b5044   ( 271 kB)
SLUB: Genslabs=13, HWalign=32, Order=0-3, MinObjects=0, CPUs=1, Nodes=1
NR_IRQS:410
IRQ: Found an INTC at 0xfa200000 (revision 4.0) with 96 interrupts
Total of 96 interrupts on 1 active controller
omap_hwmod: gpt12_fck: missing clockdomain for gpt12_fck.
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
Initializing cgroup subsys blkio
CPU: Testing write buffer coherency: ok
ftrace: allocating 18007 entries in 53 pages
devtmpfs: initialized
omap_hwmod: _populate_mpu_rt_base found no _mpu_rt_va for l4_core
omap_hwmod: _populate_mpu_rt_base found no _mpu_rt_va for l4_per
omap_hwmod: _populate_mpu_rt_base found no _mpu_rt_va for l4_wkup
omap_hwmod: i2c1: softreset failed (waited 10000 usec)
omap_hwmod: i2c2: softreset failed (waited 10000 usec)
omap_hwmod: i2c3: softreset failed (waited 10000 usec)
print_constraints: dummy:
NET: Registered protocol family 16
GPMC revision 5.0
omap_device: omap_gpio.0: new worst case activate latency 0: 30517
OMAP GPIO hardware version 2.5
OMAP GPIO hardware version 2.5
OMAP GPIO hardware version 2.5
OMAP GPIO hardware version 2.5
OMAP GPIO hardware version 2.5
OMAP GPIO hardware version 2.5
omap_mux_init: Add partition: #1: core, flags: 0
OMAP3 Beagle Rev: unknown 2
omap_device: omap_uart.1: new worst case deactivate latency 0: 30517
Found NAND on CS0
Registering NAND on CS0
Unable to get DVI reset GPIO
OMAP DMA hardware revision 5.0
bio: create slab <bio-0> at 0
SCSI subsystem initialized
omap_device: omap2_mcspi.1: new worst case activate latency 0: 30517
omap_device: omap2_mcspi.1: new worst case deactivate latency 0: 30517
usbcore: registered new interface driver usbfs
usbcore: registered new interface driver hub
usbcore: registered new device driver usb
omap_i2c omap_i2c.1: bus 1 rev4.0 at 2600 kHz
twl4030: PIH (irq 7) chaining IRQs 368..375
twl4030: power (irq 373) chaining IRQs 376..383
twl4030: gpio (irq 368) chaining IRQs 384..401
print_constraints: VUSB1V5: 1500 mV normal standby
print_constraints: VUSB1V8: 1800 mV normal standby
print_constraints: VUSB3V1: 3100 mV normal standby
twl4030_usb twl4030_usb: Initialized TWL4030 USB module
print_constraints: VMMC1: 1850 <--> 3150 mV at 3000 mV normal standby
print_constraints: VDAC: 1800 mV normal standby
print_constraints: VDVI: 1800 mV normal standby
print_constraints: VSIM: 1800 <--> 3000 mV at 1800 mV normal standby
omap_device: omap_i2c.1: new worst case deactivate latency 0: 30517
omap_device: omap_i2c.3: new worst case activate latency 0: 30517
omap_i2c omap_i2c.3: bus 3 rev4.0 at 100 kHz
Advanced Linux Sound Architecture Driver Version 1.0.24.
cfg80211: Calling CRDA to update world regulatory domain
Switching to clocksource 32k_counter
Switched to NOHz mode on CPU #0
musb-hdrc: version 6.0, musb-dma, otg (peripheral+host)
omap_device: musb-omap2430.-1: new worst case activate latency 0: 30517
musb-hdrc musb-hdrc: USB OTG mode controller at fa0ab000 using DMA, IRQ 92
NET: Registered protocol family 2
IP route cache hash table entries: 4096 (order: 2, 16384 bytes)
TCP established hash table entries: 16384 (order: 5, 131072 bytes)
TCP bind hash table entries: 16384 (order: 4, 65536 bytes)
TCP: Hash tables configured (established 16384 bind 16384)
TCP reno registered
UDP hash table entries: 256 (order: 0, 4096 bytes)
UDP-Lite hash table entries: 256 (order: 0, 4096 bytes)
NET: Registered protocol family 1
RPC: Registered named UNIX socket transport module.
RPC: Registered udp transport module.
RPC: Registered tcp transport module.
RPC: Registered tcp NFSv4.1 backchannel transport module.
VFS: Disk quotas dquot_6.5.2
Dquot-cache hash table entries: 1024 (order 0, 4096 bytes)
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
omap2-nand driver initializing
No NAND device found.
No NAND device found.
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
cdc_ncm: 04-Aug-2011
usbcore: registered new interface driver cdc_ncm
console [netcon0] enabled
netconsole: network logging started
ehci_hcd: USB 2.0 'Enhanced' Host Controller (EHCI) Driver
_regulator_get: ehci-omap.0 supply hsusb0 not found, using dummy regulator
_regulator_get: ehci-omap.0 supply hsusb1 not found, using dummy regulator
ehci-omap ehci-omap.0: OMAP-EHCI Host Controller
ehci-omap ehci-omap.0: new USB bus registered, assigned bus number 1
ehci-omap ehci-omap.0: irq 77, io mem 0x48064800
ehci-omap ehci-omap.0: USB 2.0 started, EHCI 1.00
hub 1-0:1.0: USB hub found
hub 1-0:1.0: 3 ports detected
Initializing USB Mass Storage driver...
usbcore: registered new interface driver usb-storage
USB Mass Storage support registered.
mousedev: PS/2 mouse device common for all mice
twl_rtc twl_rtc: rtc core: registered twl_rtc as rtc0
twl_rtc twl_rtc: Power up reset detected.
twl_rtc twl_rtc: Enabling TWL-RTC.
omap_device: omap_wdt.-1: new worst case activate latency 0: 30517
OMAP Watchdog Timer Rev 0x31: initial timeout 60 sec
omap_device: omap_wdt.-1: new worst case deactivate latency 0: 30517
cpuidle: using governor ladder
cpuidle: using governor menu
usbcore: registered new interface driver usbhid
usbhid: USB HID core driver
OMAP3 Beagle/Devkit8000 SoC init
asoc: twl4030-hifi <-> omap-mcbsp-dai.1 mapping ok
ALSA device list:
  #0: omap3beagle
TCP cubic registered
NET: Registered protocol family 17
Registering the dns_resolver key type
VFP support v0.3: implementor 41 architecture 3 part 30 variant c rev 3
ThumbEE CPU extension supported.
sr_init: No PMIC hook to init smartreflex
smartreflex smartreflex.0: omap_sr_probe: SmartReflex driver initialized
smartreflex smartreflex.1: omap_sr_probe: SmartReflex driver initialized
SmartReflex Class3 initialized
clock: disabling unused clocks to save power
registered taskstats version 1
Console: switching to colour frame buffer device 80x25
regulator_init_complete: VDAC: incomplete constraints, leaving on
twl_rtc twl_rtc: setting system clock to 2000-01-01 00:00:00 UTC (946684800)
Waiting for root device /dev/mmcblk0p2...
mmc0: new SDHC card at address 1234
mmcblk0: mmc0:1234 SA08G 7.41 GiB (ro)
mmcblk0: p1 p2
VFS: Cannot open root device "mmcblk0p2" or unknown-block(179,2)
Please append a correct "root=" boot option; here are the available
partitions:
b300         7774208 mmcblk0  driver: mmcblk
  b301           72261 mmcblk0p1 00000000-0000-0000-0000-000000000000
  b302         3494137 mmcblk0p2 00000000-0000-0000-0000-000000000000
VFS: Unable to mount root fs on unknown-block(179,2)
User configuration error - no valid root filesystem found
Kernel panic - not syncing: Invalid configuration from end user prevents
continu
ing
[<c0063d00>] (unwind_backtrace+0x0/0xec) from [<c044baa0>]
(dump_stack+0x20/0x24
)
[<c044baa0>] (dump_stack+0x20/0x24) from [<c044bcb0>] (panic+0x64/0x184)
[<c044bcb0>] (panic+0x64/0x184) from [<c0008eb4>]
(mount_block_root+0x1e4/0x230)
[<c0008eb4>] (mount_block_root+0x1e4/0x230) from [<c00090e0>]
(mount_root+0xf8/0
x11c)
[<c00090e0>] (mount_root+0xf8/0x11c) from [<c0009270>]
(prepare_namespace+0x16c/
0x1cc)
[<c0009270>] (prepare_namespace+0x16c/0x1cc) from [<c0008ab0>]
(kernel_init+0x12
c/0x160)
[<c0008ab0>] (kernel_init+0x12c/0x160) from [<c005e86c>]
(kernel_thread_exit+0x0
/0x8)


* - * Qodem 0.1.2 Capture Generated Fri, 13 Jul 2012 10:51:55 -0600 END * -
*

I created a serial-boot.cmd
setenv bootcmd 'mmc init; fatload mmc 0:1 0x80300000 uImage; bootm
0x80300000'
setenv bootargs 'console=tty0 console=ttyO2,115200n8 root=/dev/mmcblk0p2
rootwait rootfstype=ext3 ro'
boot


Any help will be appreciated.
Regards

--14dae9340eb55e5bc104c4ca1967
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hello,<br>git clone git://<a href=3D"http://git.yoctoproject.org/poky.git">=
git.yoctoproject.org/poky.git</a><br>cd poky<br>. oe-init-build-env<br>MACH=
INE=3Dbeagleboard bitbake -v core-image-sato<br><br><br><br>Created 2 parti=
tions on /dev/sdb<br>
fdisk /dev/sdb<br>Welcome to fdisk (util-linux 2.21.1).<br><br>Changes will=
 remain in memory only, until you decide to write them.<br>Be careful befor=
e using the write command.<br><br><br>Command (m for help): p<br><br>Disk /=
dev/sdb: 7960 MB, 7960788992 bytes<br>
255 heads, 63 sectors/track, 967 cylinders, total 15548416 sectors<br>Units=
 =3D sectors of 1 * 512 =3D 512 bytes<br>Sector size (logical/physical): 51=
2 bytes / 512 bytes<br>I/O size (minimum/optimal): 512 bytes / 512 bytes<br=
>
Disk identifier: 0x00000000<br><br>=A0=A0=A0Device Boot=A0 =A0 =A0 Start=A0=
 =A0 =A0 =A0=A0=A0End=A0 =A0 =A0 Blocks=A0=A0=A0Id=A0 System<br>/dev/sdb1=
=A0=A0=A0*=A0 =A0 =A0 =A0 =A0 63=A0 =A0 =A0 144584=A0 =A0 =A0=A0=A072261=A0=
 =A0 c=A0 W95 FAT32 (LBA)<br>/dev/sdb2=A0 =A0 =A0 =A0 =A0 144585=A0 =A0=A0=
=A07132859=A0 =A0=A0=A03494137+=A0 83=A0 Linux<br>
<br>format 2 partitions.<br><br>mkfs.vfat -F 16 -n=A0 &quot;boot&quot; /dev=
/sdb1<br>mke2fs -j -L &quot;rootfs&quot; /dev/sdb2<br>remove the mmc<br><br=
>/dev/sdb1=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 72098=A0 =A0 =A0 =
=A0 0=A0 =A0=A0=A072098=A0=A0=A00% /run/media/vidal/boot<br>
/dev/sdb2=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 3441720=A0 =A0 74096=
=A0=A0=A03192920=A0=A0=A03% /run/media/vidal/rootfs<br><br>cd /home/vidal/p=
oky/build/tmp/deploy/images<br>cp=A0 MLO-beagleboard-1.5.0+git1+9f94c6577e3=
a018b6b75cbe39f32bb331871f915-r0 /run/media/vidal/boot/MLO<br>
<br>cp u-boot-beagleboard-v2011.06+git5+b1af6f532e0d348b153d5c148369229d24a=
f361a-r1.bin /run/media/vidal/boot/u-boot.bin<br><br>cp
=20
uImage-3.0.32+git1+d282029891bba5440630a885b940dea5e34e3e2c_1+3ab688a78cac7=
b2e32afc83376a53370f2bd13b7-r4.0-beagleboard-20120712003552.bin
 /run/media/vidal/boot/uImage<br><br>cd /run/media/vidal/rootfs<br><br>tar =
jvxf=A0 /home/vidal/poky/build/tmp/deploy/images/core-image-sato-beagleboar=
d-20120712003552.rootfs.tar.bz2<br><br>cp /home/vidal/uEnv.txt /run/media/v=
idal/boot<br>
cat /run/media/vidal/boot/uEnv.txt<br>mpurate=3Dauto<br><br>dvimode=3D&quot=
;hd720 omapfb.vram=3D0:8M,1:4M,2:4M&quot;<br>vram=3D16M<br>optargs=3D&quot;=
consoleblank=3D0&quot;<br>console=3D&quot;tty0 console=3DttyO2,115200n8&quo=
t;<br><br>umount /run/media/vidal/boot<br>
umount /run/media/vidal/rootfs<br>sync<br>* - * Qodem 0.1.2 Capture Generat=
ed Fri, 13 Jul 2012 10:51:17 -0600 BEGIN * - *<br><br><br><br>Texas Instrum=
ents X-Loader 1.5.0 (Jul 11 2012 - 21:01:18)<br>Beagle xM<br>Reading boot s=
ector<br>
Loading u-boot.bin from mmc<br><br><br>U-Boot 2011.06 (Jul 11 2012 - 21:01:=
18)<br><br>OMAP3630/3730-GP ES2.1, CPU-OPP2, L3-165MHz, Max CPU Clock 1 Ghz=
<br>OMAP3 Beagle board + LPDDR/NAND<br>I2C:=A0=A0=A0ready<br>DRAM:=A0 512 M=
iB<br>
NAND:=A0 0 MiB<br>MMC:=A0=A0=A0OMAP SD/MMC: 0<br>*** Warning - readenv() fa=
iled, using default environment<br><br>In:=A0 =A0 serial<br>Out:=A0=A0=A0se=
rial<br>Err:=A0=A0=A0serial<br>Beagle unknown 0x02<br>No EEPROM on expansio=
n board<br>Die ID #158000029ff800000160a7450b02602d<br>
Hit any key to stop autoboot: 10=A0 9=A0 8=A0 7=A0 6=A0 5=A0 4=A0 3=A0 2=A0=
 1=A0 0<br>SD/MMC found on device 0<br>reading uEnv.txt<br><br>130 bytes re=
ad<br>Importing environment from mmc ...<br>reading uImage<br><br>3043164 b=
ytes read<br>Booting from mmc ...<br>
## Booting kernel from Legacy Image at 82000000 ...<br>=A0=A0=A0Image Name:=
=A0=A0=A0Linux-3.0.32-yocto-standard<br>=A0=A0=A0Image Type:=A0=A0=A0ARM Li=
nux Kernel Image (uncompressed)<br>=A0=A0=A0Data Size:=A0 =A0 3043100 Bytes=
 =3D 2.9 MiB<br>=A0=A0=A0Load Address: 80008000<br>
=A0=A0=A0Entry Point:=A0 80008000<br>=A0=A0=A0Verifying Checksum ... OK<br>=
=A0=A0=A0Loading Kernel Image ... OK<br>OK<br><br>Starting kernel ...<br><b=
r>Uncompressing Linux... done, booting the kernel.<br>Initializing cgroup s=
ubsys cpuset<br>
Initializing cgroup subsys cpu<br>Linux version 3.0.32-yocto-standard (<a h=
ref=3D"http://us.mc1814.mail.yahoo.com/mc/compose?to=3Dvidal@ws009.swbell.n=
et">vidal@ws009.swbell.net</a>) (gcc version 4.7.2<br>20120615 (prerelease)=
 (GCC) ) #1 Wed Jul 11 20:38:46 MDT 2012<br>
CPU: ARMv7 Processor [413fc082] revision 2 (ARMv7), cr=3D10c53c7d<br>CPU: V=
IPT nonaliasing data cache, VIPT aliasing instruction cache<br>Machine: OMA=
P3 Beagle Board<br>Reserving 16777216 bytes SDRAM for VRAM<br>Memory policy=
: ECC disabled, Data cache writeback<br>
OMAP3630 ES1.2 (l2cache iva sgx neon isp 192mhz_clk )<br>SRAM: Mapped pa 0x=
40200000 to va 0xfe400000 size: 0x10000<br>Clocking rate (Crystal/Core/MPU)=
: 26.0/332/600 MHz<br>Reprogramming SDRC clock to 332000000 Hz<br>Built 1 z=
onelists in Zone order, mobility grouping on.=A0 Total pages: 125952<br>
Kernel command line: console=3Dtty0 console=3DttyO2,115200n8 mpurate=3Dauto=
 vram=3D16M o<br>mapfb.mode=3Ddvi:hd720 omapfb.vram=3D0:8M,1:4M,2:4M omapfb=
.debug=3Dy omapdss.def_disp=3D<br>dvi root=3D/dev/mmcblk0p2 rw rootfstype=
=3Dext3 rootwait<br>
PID hash table entries: 2048 (order: 1, 8192 bytes)<br>Dentry cache hash ta=
ble entries: 65536 (order: 6, 262144 bytes)<br>Inode-cache hash table entri=
es: 32768 (order: 5, 131072 bytes)<br>allocated 2097152 bytes of page_cgrou=
p<br>
please try &#39;cgroup_disable=3Dmemory&#39; option if you don&#39;t want m=
emory cgroups<br>Memory: 496MB =3D 496MB total<br>Memory: 494448k/494448k a=
vailable, 29840k reserved, 0K highmem<br>Virtual kernel memory layout:<br>=
=A0 =A0 vector=A0 : 0xffff0000 - 0xffff1000=A0=A0=A0(=A0=A0=A04 kB)<br>
=A0 =A0 fixmap=A0 : 0xfff00000 - 0xfffe0000=A0=A0=A0( 896 kB)<br>=A0 =A0 DM=
A=A0 =A0=A0=A0: 0xffc00000 - 0xffe00000=A0=A0=A0(=A0=A0=A02 MB)<br>=A0 =A0 =
vmalloc : 0xe0800000 - 0xf8000000=A0=A0=A0( 376 MB)<br>=A0 =A0 lowmem=A0 : =
0xc0000000 - 0xe0000000=A0=A0=A0( 512 MB)<br>=A0 =A0 modules : 0xbf000000 -=
 0xc0000000=A0=A0=A0(=A0 16 MB)<br>
=A0 =A0 =A0 .init : 0xc0008000 - 0xc0058000=A0=A0=A0( 320 kB)<br>=A0 =A0 =
=A0 .text : 0xc0058000 - 0xc0613b0c=A0=A0=A0(5871 kB)<br>=A0 =A0 =A0 .data =
: 0xc0614000 - 0xc0671438=A0=A0=A0( 374 kB)<br>=A0 =A0 =A0=A0=A0.bss : 0xc0=
67145c - 0xc06b5044=A0=A0=A0( 271 kB)<br>SLUB: Genslabs=3D13, HWalign=3D32,=
 Order=3D0-3, MinObjects=3D0, CPUs=3D1, Nodes=3D1<br>
NR_IRQS:410<br>IRQ: Found an INTC at 0xfa200000 (revision 4.0) with 96 inte=
rrupts<br>Total of 96 interrupts on 1 active controller<br>omap_hwmod: gpt1=
2_fck: missing clockdomain for gpt12_fck.<br>OMAP clockevent source: GPTIME=
R12 at 32768 Hz<br>
sched_clock: 32 bits at 32kHz, resolution 30517ns, wraps every 131071999ms<=
br>Console: colour dummy device 80x30<br>console [tty0] enabled<br>Calibrat=
ing delay loop... 500.97 BogoMIPS (lpj=3D1953792)<br>pid_max: default: 3276=
8 minimum: 301<br>
Security Framework initialized<br>Mount-cache hash table entries: 512<br>In=
itializing cgroup subsys debug<br>Initializing cgroup subsys cpuacct<br>Ini=
tializing cgroup subsys memory<br>Initializing cgroup subsys devices<br>
Initializing cgroup subsys freezer<br>Initializing cgroup subsys blkio<br>C=
PU: Testing write buffer coherency: ok<br>ftrace: allocating 18007 entries =
in 53 pages<br>devtmpfs: initialized<br>omap_hwmod: _populate_mpu_rt_base f=
ound no _mpu_rt_va for l4_core<br>
omap_hwmod: _populate_mpu_rt_base found no _mpu_rt_va for l4_per<br>omap_hw=
mod: _populate_mpu_rt_base found no _mpu_rt_va for l4_wkup<br>omap_hwmod: i=
2c1: softreset failed (waited 10000 usec)<br>omap_hwmod: i2c2: softreset fa=
iled (waited 10000 usec)<br>
omap_hwmod: i2c3: softreset failed (waited 10000 usec)<br>print_constraints=
: dummy:<br>NET: Registered protocol family 16<br>GPMC revision 5.0<br>omap=
_device: omap_gpio.0: new worst case activate latency 0: 30517<br>OMAP GPIO=
 hardware version 2.5<br>
OMAP GPIO hardware version 2.5<br>OMAP GPIO hardware version 2.5<br>OMAP GP=
IO hardware version 2.5<br>OMAP GPIO hardware version 2.5<br>OMAP GPIO hard=
ware version 2.5<br>omap_mux_init: Add partition: #1: core, flags: 0<br>
OMAP3 Beagle Rev: unknown 2<br>omap_device: omap_uart.1: new worst case dea=
ctivate latency 0: 30517<br>Found NAND on CS0<br>Registering NAND on CS0<br=
>Unable to get DVI reset GPIO<br>OMAP DMA hardware revision 5.0<br>bio: cre=
ate slab &lt;bio-0&gt; at 0<br>
SCSI subsystem initialized<br>omap_device: omap2_mcspi.1: new worst case ac=
tivate latency 0: 30517<br>omap_device: omap2_mcspi.1: new worst case deact=
ivate latency 0: 30517<br>usbcore: registered new interface driver usbfs<br=
>
usbcore: registered new interface driver hub<br>usbcore: registered new dev=
ice driver usb<br>omap_i2c omap_i2c.1: bus 1 rev4.0 at 2600 kHz<br>twl4030:=
 PIH (irq 7) chaining IRQs 368..375<br>twl4030: power (irq 373) chaining IR=
Qs 376..383<br>
twl4030: gpio (irq 368) chaining IRQs 384..401<br>print_constraints: VUSB1V=
5: 1500 mV normal standby<br>print_constraints: VUSB1V8: 1800 mV normal sta=
ndby<br>print_constraints: VUSB3V1: 3100 mV normal standby<br>twl4030_usb t=
wl4030_usb: Initialized TWL4030 USB module<br>
print_constraints: VMMC1: 1850 &lt;--&gt; 3150 mV at 3000 mV normal standby=
<br>print_constraints: VDAC: 1800 mV normal standby<br>print_constraints: V=
DVI: 1800 mV normal standby<br>print_constraints: VSIM: 1800 &lt;--&gt; 300=
0 mV at 1800 mV normal standby<br>
omap_device: omap_i2c.1: new worst case deactivate latency 0: 30517<br>omap=
_device: omap_i2c.3: new worst case activate latency 0: 30517<br>omap_i2c o=
map_i2c.3: bus 3 rev4.0 at 100 kHz<br>Advanced Linux Sound Architecture Dri=
ver Version 1.0.24.<br>
cfg80211: Calling CRDA to update world regulatory domain<br>Switching to cl=
ocksource 32k_counter<br>Switched to NOHz mode on CPU #0<br>musb-hdrc: vers=
ion 6.0, musb-dma, otg (peripheral+host)<br>omap_device: musb-omap2430.-1: =
new worst case activate latency 0: 30517<br>
musb-hdrc musb-hdrc: USB OTG mode controller at fa0ab000 using DMA, IRQ 92<=
br>NET: Registered protocol family 2<br>IP route cache hash table entries: =
4096 (order: 2, 16384 bytes)<br>TCP established hash table entries: 16384 (=
order: 5, 131072 bytes)<br>
TCP bind hash table entries: 16384 (order: 4, 65536 bytes)<br>TCP: Hash tab=
les configured (established 16384 bind 16384)<br>TCP reno registered<br>UDP=
 hash table entries: 256 (order: 0, 4096 bytes)<br>UDP-Lite hash table entr=
ies: 256 (order: 0, 4096 bytes)<br>
NET: Registered protocol family 1<br>RPC: Registered named UNIX socket tran=
sport module.<br>RPC: Registered udp transport module.<br>RPC: Registered t=
cp transport module.<br>RPC: Registered tcp NFSv4.1 backchannel transport m=
odule.<br>
VFS: Disk quotas dquot_6.5.2<br>Dquot-cache hash table entries: 1024 (order=
 0, 4096 bytes)<br>msgmni has been set to 965<br>Block layer SCSI generic (=
bsg) driver version 0.4 loaded (major 253)<br>io scheduler noop registered<=
br>
io scheduler deadline registered<br>io scheduler cfq registered (default)<b=
r>OMAP DSS rev 2.0<br>Serial: 8250/16550 driver, 4 ports, IRQ sharing enabl=
ed<br>omap_uart.0: ttyO0 at MMIO 0x4806a000 (irq =3D 72) is a OMAP UART0<br=
>
omap_uart.1: ttyO1 at MMIO 0x4806c000 (irq =3D 73) is a OMAP UART1<br>omap_=
uart.2: ttyO2 at MMIO 0x49020000 (irq =3D 74) is a OMAP UART2<br>console [t=
tyO2] enabled<br>omap_uart.3: ttyO3 at MMIO 0x49042000 (irq =3D 80) is a OM=
AP UART3<br>
brd: module loaded<br>omap2-nand driver initializing<br>No NAND device foun=
d.<br>No NAND device found.<br>usbcore: registered new interface driver kaw=
eth<br>pegasus: v0.6.14 (2006/09/27), Pegasus/Pegasus II USB Ethernet drive=
r<br>
usbcore: registered new interface driver pegasus<br>usbcore: registered new=
 interface driver asix<br>usbcore: registered new interface driver cdc_ethe=
r<br>usbcore: registered new interface driver dm9601<br>usbcore: registered=
 new interface driver smsc75xx<br>
usbcore: registered new interface driver smsc95xx<br>usbcore: registered ne=
w interface driver net1080<br>usbcore: registered new interface driver cdc_=
subset<br>usbcore: registered new interface driver zaurus<br>usbcore: regis=
tered new interface driver MOSCHIP usb-ethernet driver<br>
usbcore: registered new interface driver int51x1<br>cdc_ncm: 04-Aug-2011<br=
>usbcore: registered new interface driver cdc_ncm<br>console [netcon0] enab=
led<br>netconsole: network logging started<br>ehci_hcd: USB 2.0 &#39;Enhanc=
ed&#39; Host Controller (EHCI) Driver<br>
_regulator_get: ehci-omap.0 supply hsusb0 not found, using dummy regulator<=
br>_regulator_get: ehci-omap.0 supply hsusb1 not found, using dummy regulat=
or<br>ehci-omap ehci-omap.0: OMAP-EHCI Host Controller<br>ehci-omap ehci-om=
ap.0: new USB bus registered, assigned bus number 1<br>
ehci-omap ehci-omap.0: irq 77, io mem 0x48064800<br>ehci-omap ehci-omap.0: =
USB 2.0 started, EHCI 1.00<br>hub 1-0:1.0: USB hub found<br>hub 1-0:1.0: 3 =
ports detected<br>Initializing USB Mass Storage driver...<br>usbcore: regis=
tered new interface driver usb-storage<br>
USB Mass Storage support registered.<br>mousedev: PS/2 mouse device common =
for all mice<br>twl_rtc twl_rtc: rtc core: registered twl_rtc as rtc0<br>tw=
l_rtc twl_rtc: Power up reset detected.<br>twl_rtc twl_rtc: Enabling TWL-RT=
C.<br>
omap_device: omap_wdt.-1: new worst case activate latency 0: 30517<br>OMAP =
Watchdog Timer Rev 0x31: initial timeout 60 sec<br>omap_device: omap_wdt.-1=
: new worst case deactivate latency 0: 30517<br>cpuidle: using governor lad=
der<br>
cpuidle: using governor menu<br>usbcore: registered new interface driver us=
bhid<br>usbhid: USB HID core driver<br>OMAP3 Beagle/Devkit8000 SoC init<br>=
asoc: twl4030-hifi &lt;-&gt; omap-mcbsp-dai.1 mapping ok<br>ALSA device lis=
t:<br>
=A0 #0: omap3beagle<br>TCP cubic registered<br>NET: Registered protocol fam=
ily 17<br>Registering the dns_resolver key type<br>VFP support v0.3: implem=
entor 41 architecture 3 part 30 variant c rev 3<br>ThumbEE CPU extension su=
pported.<br>
sr_init: No PMIC hook to init smartreflex<br>smartreflex smartreflex.0: oma=
p_sr_probe: SmartReflex driver initialized<br>smartreflex smartreflex.1: om=
ap_sr_probe: SmartReflex driver initialized<br>SmartReflex Class3 initializ=
ed<br>
clock: disabling unused clocks to save power<br>registered taskstats versio=
n 1<br>Console: switching to colour frame buffer device 80x25<br>regulator_=
init_complete: VDAC: incomplete constraints, leaving on<br>twl_rtc twl_rtc:=
 setting system clock to 2000-01-01 00:00:00 UTC (946684800)<br>
Waiting for root device /dev/mmcblk0p2...<br>mmc0: new SDHC card at address=
 1234<br>mmcblk0: mmc0:1234 SA08G 7.41 GiB (ro)<br>mmcblk0: p1 p2<br>VFS: C=
annot open root device &quot;mmcblk0p2&quot; or unknown-block(179,2)<br>
Please append a correct &quot;root=3D&quot; boot option; here are the avail=
able partitions:<br>b300=A0 =A0 =A0 =A0=A0=A07774208 mmcblk0=A0 driver: mmc=
blk<br>=A0 b301=A0 =A0 =A0 =A0 =A0=A0=A072261 mmcblk0p1 00000000-0000-0000-=
0000-000000000000<br>=A0 b302=A0 =A0 =A0 =A0=A0=A03494137 mmcblk0p2 0000000=
0-0000-0000-0000-000000000000<br>
VFS: Unable to mount root fs on unknown-block(179,2)<br>User configuration =
error - no valid root filesystem found<br>Kernel panic - not syncing: Inval=
id configuration from end user prevents continu<br>ing<br>[&lt;c0063d00&gt;=
] (unwind_backtrace+0x0/0xec) from [&lt;c044baa0&gt;] (dump_stack+0x20/0x24=
<br>
)<br>[&lt;c044baa0&gt;] (dump_stack+0x20/0x24) from [&lt;c044bcb0&gt;] (pan=
ic+0x64/0x184)<br>[&lt;c044bcb0&gt;] (panic+0x64/0x184) from [&lt;c0008eb4&=
gt;] (mount_block_root+0x1e4/0x230)<br>[&lt;c0008eb4&gt;] (mount_block_root=
+0x1e4/0x230) from [&lt;c00090e0&gt;] (mount_root+0xf8/0<br>
x11c)<br>[&lt;c00090e0&gt;] (mount_root+0xf8/0x11c) from [&lt;c0009270&gt;]=
 (prepare_namespace+0x16c/<br>0x1cc)<br>[&lt;c0009270&gt;] (prepare_namespa=
ce+0x16c/0x1cc) from [&lt;c0008ab0&gt;] (kernel_init+0x12<br>c/0x160)<br>
[&lt;c0008ab0&gt;] (kernel_init+0x12c/0x160) from [&lt;c005e86c&gt;] (kerne=
l_thread_exit+0x0<br>/0x8)<br><br><br>* - * Qodem 0.1.2 Capture Generated F=
ri, 13 Jul 2012 10:51:55 -0600 END * - *<br><br>I created a serial-boot.cmd=
<br>
setenv bootcmd &#39;mmc init; fatload mmc 0:1 0x80300000 uImage; bootm 0x80=
300000&#39;<br>setenv bootargs &#39;console=3Dtty0 console=3DttyO2,115200n8=
 root=3D/dev/mmcblk0p2 rootwait rootfstype=3Dext3 ro&#39;<br>boot<br>=A0<br=
>=A0<br>
Any help will be appreciated.<br>Regards

--14dae9340eb55e5bc104c4ca1967--
