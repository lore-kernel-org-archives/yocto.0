Return-Path: <vidal.develone@gmail.com>
Received: from mail-yw0-f48.google.com (mail-yw0-f48.google.com
	[209.85.213.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 024B3E002AB
	for <yocto@yoctoproject.org>; Fri, 20 Jul 2012 05:21:49 -0700 (PDT)
Received: by yhfq46 with SMTP id q46so4585305yhf.35
	for <yocto@yoctoproject.org>; Fri, 20 Jul 2012 05:21:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=1u4tBP9enxv/hCboMksL3pOlsShYY4GCWqv2QkPsSRQ=;
	b=PI5k9+tEJLrghpfGijiRnuuPVcmdwb8dhzpOYZerpHjRsdG/q8+eC1GmhuTsK3RUNj
	bPIlcdEZvf8sM/KinlH2+aSSIXosjA57Wq/G7eKkLjqi4G661LCyt4AUe17VTcEbaWff
	h91yBLMEHePJLsXbbkU6J9ri0IE1xG1dgoxeEF94AoKEqQtfvHIonh6+OektfQ4t7f+j
	fZKEZjZxP++CSLVr4BsMl1RAEJknjokxOnvuB0t7897omu0LMoE9UGI6LoXzcgMitwAS
	oJrOecpFaH904mhyjXYNLQS6NKs9dNMWrxv6f4V8IlhrDgwLF+hRS1mVJ5b8mn40auQv
	jlWA==
MIME-Version: 1.0
Received: by 10.50.237.9 with SMTP id uy9mr4245085igc.40.1342786908581; Fri,
	20 Jul 2012 05:21:48 -0700 (PDT)
Received: by 10.64.39.39 with HTTP; Fri, 20 Jul 2012 05:21:48 -0700 (PDT)
Date: Fri, 20 Jul 2012 06:21:48 -0600
Message-ID: <CANwz6nzUVmVrADaVeR62V3ByCw10wOzY_vunMRZRGhfOvtW_5Q@mail.gmail.com>
From: Edward Vidal <vidal.develone@gmail.com>
To: yocto@yoctoproject.org
Subject: beagleboard not booting yacto 1.2.1
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
X-List-Received-Date: Fri, 20 Jul 2012 12:21:50 -0000
Content-Type: multipart/alternative; boundary=f46d044786edb1f0a904c541f020

--f46d044786edb1f0a904c541f020
Content-Type: text/plain; charset=ISO-8859-1

Hello,
git clone -b denzil git://git.yoctoproject.org/poky.git
Yocto Project 1.2.1
The default beagleboard kernel 3.0 would not find the mmc as in Yocto
Project 1.2

modified the file meta-yocto/conf/machine/beagleboard.conf

PREFERRED_VERSION_linux-yocto ?= "3.0%" --> PREFERRED_VERSION_linux-yocto
?= "3.2%"
git status
# On branch denzil
# Changes not staged for commit:
#   (use "git add <file>..." to update what will be committed)
#   (use "git checkout -- <file>..." to discard changes in working
directory)
#
#    modified:   meta-yocto/conf/machine/beagleboard.conf
#
# Untracked files:
#   (use "git add <file>..." to include in what will be committed)
#
#    build/
no changes added to commit (use "git add" and/or "git commit -a")
MACHINE=beagleboard bitbake -v -D -D -D core-image-sato

mkfs.vfat -F 16 -n  "boot" /dev/sdb1
/dev/sdb1
W95 FAT32 (LBA) (Bootable)

mke2fs -j -L "rootfs" /dev/sdb2
/dev/sdb2
Ext3 (version 1.0)

cd /home/vidal/poky/build/tmp/deploy/images
cp MLO-beagleboard-1.5.0+git1+9f94c6577e3a018b6b75cbe39f32bb331871f915-r0
/run/media/vidal/boot/MLO
cp
u-boot-beagleboard-v2011.06+git12+b1af6f532e0d348b153d5c148369229d24af361a-r1.bin
/run/media/vidal/boot/u-boot.bin
cp
uImage-3.2.18+git1+49f931bc294d5b6be60502bbd448cff5aa766235_1+90e3138c5a2a390dd6ddf2ed84fe5a9756d43397-r1-beagleboard-20120720032419.bin
/run/media/vidal/boot/uImage
cp /home/vidal/uEnv.txt /run/media/vidal/boot/
cd /run/media/vidal/rootfs/
tar jxf
/home/vidal/poky/build/tmp/deploy/images/core-image-sato-beagleboard-20120720032419.rootfs.tar.bz2


* - * Qodem 0.1.2 Capture Generated Fri, 20 Jul 2012 06:02:09 -0600 BEGIN *
- *



Texas Instruments X-Loader 1.5.0 (Jul 19 2012 - 17:05:29)
Beagle xM
Reading boot sector
Loading u-boot.bin from mmc


U-Boot 2011.06 (Jul 19 2012 - 21:25:33)

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

3375856 bytes read
Booting from mmc ...
## Booting kernel from Legacy Image at 82000000 ...
   Image Name:   Linux-3.2.9-yocto-standard
   Image Type:   ARM Linux Kernel Image (uncompressed)
   Data Size:    3375792 Bytes = 3.2 MiB
   Load Address: 80008000
   Entry Point:  80008000
   Verifying Checksum ... OK
   Loading Kernel Image ... OK
OK

Starting kernel ...

Uncompressing Linux... done, booting the kernel.
Initializing cgroup subsys cpuset
Initializing cgroup subsys cpu
Linux version 3.2.9-yocto-standard (vidal@ws009.swbell.net) (gcc version
4.6.4 20120303 (prerelease) (GCC) ) #1 Thu Jul 19 21:30:00 MDT 2012
CPU: ARMv7 Processor [413fc082] revision 2 (ARMv7), cr=10c53c7d
CPU: PIPT / VIPT nonaliasing data cache, VIPT aliasing instruction cache
Machine: OMAP3 Beagle Board
Reserving 16777216 bytes SDRAM for VRAM
Memory policy: ECC disabled, Data cache writeback
OMAP3630 ES1.2 (l2cache iva sgx neon isp 192mhz_clk )
Clocking rate (Crystal/Core/MPU): 26.0/332/600 MHz
Built 1 zonelists in Zone order, mobility grouping on.  Total pages: 125952
Kernel command line: console=tty0 console=ttyO2,115200n8 mpurate=auto
vram=16M omapfb.mode=dvi:hd720 omapfb.vram=0:8M,1:4M,2:4M omapfb.debug=y
omapdss.def_disp=dv
i root=/dev/mmcblk0p2 rw rootfstype=ext3 rootwait
PID hash table entries: 2048 (order: 1, 8192 bytes)
Dentry cache hash table entries: 65536 (order: 6, 262144 bytes)
Inode-cache hash table entries: 32768 (order: 5, 131072 bytes)
allocated 2097152 bytes of page_cgroup
please try 'cgroup_disable=memory' option if you don't want memory cgroups
Memory: 496MB = 496MB total
Memory: 493816k/493816k available, 30472k reserved, 0K highmem
Virtual kernel memory layout:
    vector  : 0xffff0000 - 0xffff1000   (   4 kB)
    fixmap  : 0xfff00000 - 0xfffe0000   ( 896 kB)
    vmalloc : 0xe0800000 - 0xf8000000   ( 376 MB)
    lowmem  : 0xc0000000 - 0xe0000000   ( 512 MB)
    modules : 0xbf000000 - 0xc0000000   (  16 MB)
      .text : 0xc0008000 - 0xc06540a4   (6449 kB)
      .init : 0xc0655000 - 0xc06ab000   ( 344 kB)
      .data : 0xc06ac000 - 0xc0710868   ( 403 kB)
       .bss : 0xc071088c - 0xc075486c   ( 272 kB)
SLUB: Genslabs=13, HWalign=32, Order=0-3, MinObjects=0, CPUs=1, Nodes=1
NR_IRQS:410
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
Initializing cgroup subsys blkio
CPU: Testing write buffer coherency: ok
ftrace: allocating 18273 entries in 54 pages
devtmpfs: initialized
print_constraints: dummy:
NET: Registered protocol family 16
GPMC revision 5.0
OMAP GPIO hardware version 2.5
omap_mux_init: Add partition: #1: core, flags: 0
OMAP3 Beagle Rev: xM C
Reprogramming SDRC clock to 332000000 Hz
Found NAND on CS0
Registering NAND on CS0
Unable to get DVI reset GPIO
 omap-mcbsp.2: alias fck already exists
 omap-mcbsp.3: alias fck already exists
OMAP DMA hardware revision 5.0
bio: create slab <bio-0> at 0
SCSI subsystem initialized
usbcore: registered new interface driver usbfs
usbcore: registered new interface driver hub
usbcore: registered new device driver usb
omap_i2c omap_i2c.1: bus 1 rev1.4.0 at 2600 kHz
twl4030: PIH (irq 7) chaining IRQs 368..375
twl4030: power (irq 373) chaining IRQs 376..383
twl4030: gpio (irq 368) chaining IRQs 384..401
_omap_mux_init_gpio: Could not set gpio192
print_constraints: VUSB1V5: 1500 mV normal standby
print_constraints: VUSB1V8: 1800 mV normal standby
print_constraints: VUSB3V1: 3100 mV normal standby
twl4030_usb twl4030_usb: Initialized TWL4030 USB module
print_constraints: VMMC1: 1850 <--> 3150 mV at 3000 mV normal standby
print_constraints: VDAC: 1800 mV normal standby
print_constraints: VDVI: 1800 mV normal standby
print_constraints: VSIM: 1800 <--> 3000 mV at 1800 mV normal standby
omap_i2c omap_i2c.3: bus 3 rev1.4.0 at 100 kHz
Advanced Linux Sound Architecture Driver Version 1.0.24.
cfg80211: Calling CRDA to update world regulatory domain
Switching to clocksource 32k_counter
musb-hdrc: version 6.0, ?dma?, otg (peripheral+host)
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
Registering unionfs 2.5.10 (for 3.1.0-rc4)
msgmni has been set to 964
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
cdc_ncm: 04-Aug-2011
usbcore: registered new interface driver cdc_ncm
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
twl_rtc twl_rtc: Power up reset detected.
twl_rtc twl_rtc: Enabling TWL-RTC.
twl_rtc twl_rtc: rtc core: registered twl_rtc as rtc0
OMAP Watchdog Timer Rev 0x31: initial timeout 60 sec
cpuidle: using governor ladder
cpuidle: using governor menu
usbcore: registered new interface driver usbhid
usbhid: USB HID core driver
OMAP3 Beagle/Devkit8000 SoC init
usb 1-2: new high-speed USB device number 2 using ehci-omap
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
omapfb omapfb: no driver for display: dvi
omapfb omapfb: cannot parse default modes
hub 1-2:1.0: USB hub found
hub 1-2:1.0: 5 ports detected
Console: switching to colour frame buffer device 90x35
mmc0: host does not support reading read-only switch. assuming write-enable.
regulator_init_complete: VDVI: incomplete constraints, leaving on
console [netcon0] enabled
netconsole: network logging started
mmc0: new high speed SDHC card at address 1234
mmcblk0: mmc0:1234 SA08G 7.41 GiB
twl_rtc twl_rtc: setting system clock to 2000-01-01 00:00:00 UTC (946684800)
 mmcblk0: p1 p2
usb 1-2.1: new high-speed USB device number 3 using ehci-omap
smsc95xx v1.0.4
smsc95xx 1-2.1:1.0: eth0: register 'smsc95xx' at usb-ehci-omap.0-2.1,
smsc95xx USB 2.0 Ethernet, fe:a3:5a:02:39:a3
usb 1-2.3: new low-speed USB device number 4 using ehci-omap
input: CHESEN USB Keyboard as
/devices/platform/usbhs-omap.0/ehci-omap.0/usb1/1-2/1-2.3/1-2.3:1.0/input/input0
generic-usb 0003:0A81:0101.0001: input: USB HID v1.10 Keyboard [CHESEN USB
Keyboard] on usb-ehci-omap.0-2.3/input0
input: CHESEN USB Keyboard as
/devices/platform/usbhs-omap.0/ehci-omap.0/usb1/1-2/1-2.3/1-2.3:1.1/input/input1
generic-usb 0003:0A81:0101.0002: input: USB HID v1.10 Device [CHESEN USB
Keyboard] on usb-ehci-omap.0-2.3/input1
usb 1-2.5: new low-speed USB device number 5 using ehci-omap
input: PixArt USB Optical Mouse as
/devices/platform/usbhs-omap.0/ehci-omap.0/usb1/1-2/1-2.5/1-2.5:1.0/input/input2
generic-usb 0003:093A:2510.0003: input: USB HID v1.11 Mouse [PixArt USB
Optical Mouse] on usb-ehci-omap.0-2.5/input0
kjournald starting.  Commit interval 5 seconds
EXT3-fs (mmcblk0p2): using internal journal
EXT3-fs (mmcblk0p2): recovery complete
EXT3-fs (mmcblk0p2): mounted filesystem with ordered data mode
VFS: Mounted root (ext3 filesystem) on device 179:2.
devtmpfs: mounted
Freeing init memory: 344K
INIT: usb 1-2.5: USB disconnect, device number 5
usb 1-2.5: new low-speed USB device number 6 using ehci-omap
input: PixArt USB Optical Mouse as
/devices/platform/usbhs-omap.0/ehci-omap.0/usb1/1-2/1-2.5/1-2.5:1.0/input/input3
generic-usb 0003:093A:2510.0004: input: USB HID v1.11 Mouse [PixArt USB
Optical Mouse] on usb-ehci-omap.0-2.5/input0
udev[61]: starting version 164
smsc95xx 1-2.1:1.0: eth0: link up, 100Mbps, full-duplex, lpa 0x45E1
usb 1-2.5: USB disconnect, device number 6
usb 1-2.5: new low-speed USB device number 7 using ehci-omap
input: PixArt USB Optical Mouse as
/devices/platform/usbhs-omap.0/ehci-omap.0/usb1/1-2/1-2.5/1-2.5:1.0/input/input4
generic-usb 0003:093A:2510.0005: input: USB HID v1.11 Mouse [PixArt USB
Optical Mouse] on usb-ehci-omap.0-2.5/input0
usb 1-2.5: USB disconnect, device number 7
usb 1-2.5: new low-speed USB device number 8 using ehci-omap
input: PixArt USB Optical Mouse as
/devices/platform/usbhs-omap.0/ehci-omap.0/usb1/1-2/1-2.5/1-2.5:1.0/input/input5
generic-usb 0003:093A:2510.0006: input: USB HID v1.11 Mouse [PixArt USB
Optical Mouse] on usb-ehci-omap.0-2.5/input0
usb 1-2.5: USB disconnect, device number 8
usb 1-2.5: new low-speed USB device number 9 using ehci-omap
input: PixArt USB Optical Mouse as
/devices/platform/usbhs-omap.0/ehci-omap.0/usb1/1-2/1-2.5/1-2.5:1.0/input/input6
generic-usb 0003:093A:2510.0007: input: USB HID v1.11 Mouse [PixArt USB
Optical Mouse] on usb-ehci-omap.0-2.5/input0
usb 1-2.5: USB disconnect, device number 9
usb 1-2.5: new low-speed USB device number 10 using ehci-omap
input: PixArt USB Optical Mouse as
/devices/platform/usbhs-omap.0/ehci-omap.0/usb1/1-2/1-2.5/1-2.5:1.0/input/input7
generic-usb 0003:093A:2510.0008: input: USB HID v1.11 Mouse [PixArt USB
Optical Mouse] on usb-ehci-omap.0-2.5/input0
usb 1-2.5: USB disconnect, device number 10
usb 1-2.5: new low-speed USB device number 11 using ehci-omap
input: PixArt USB Optical Mouse as
/devices/platform/usbhs-omap.0/ehci-omap.0/usb1/1-2/1-2.5/1-2.5:1.0/input/input8
generic-usb 0003:093A:2510.0009: input: USB HID v1.11 Mouse [PixArt USB
Optical Mouse] on usb-ehci-omap.0-2.5/input0
usb 1-2.5: USB disconnect, device number 11
usb 1-2.5: new low-speed USB device number 12 using ehci-omap
input: PixArt USB Optical Mouse as
/devices/platform/usbhs-omap.0/ehci-omap.0/usb1/1-2/1-2.5/1-2.5:1.0/input/input9
generic-usb 0003:093A:2510.000A: input: USB HID v1.11 Mouse [PixArt USB
Optical Mouse] on usb-ehci-omap.0-2.5/input0

* - * Qodem 0.1.2 Capture Generated Fri, 20 Jul 2012 06:10:13 -0600 END * -
*
The boot never gets to the point of bringing up an X window on the
beagleboard display.


Thanks for any help it will be appreciated.

--f46d044786edb1f0a904c541f020
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hello,<br>git clone -b denzil git://<a href=3D"http://git.yoctoproject.org/=
poky.git">git.yoctoproject.org/poky.git</a> <br>Yocto Project 1.2.1<br>The =
default beagleboard kernel 3.0 would not find the mmc as in Yocto Project 1=
.2<br>
<br>modified the file meta-yocto/conf/machine/beagleboard.conf<br><br>PREFE=
RRED_VERSION_linux-yocto ?=3D &quot;3.0%&quot; --&gt; PREFERRED_VERSION_lin=
ux-yocto ?=3D &quot;3.2%&quot;<br>git status<br># On branch denzil<br># Cha=
nges not staged for commit:<br>
#=A0=A0 (use &quot;git add &lt;file&gt;...&quot; to update what will be com=
mitted)<br>#=A0=A0 (use &quot;git checkout -- &lt;file&gt;...&quot; to disc=
ard changes in working directory)<br>#<br>#=A0=A0=A0 modified:=A0=A0 meta-y=
octo/conf/machine/beagleboard.conf<br>
#<br># Untracked files:<br>#=A0=A0 (use &quot;git add &lt;file&gt;...&quot;=
 to include in what will be committed)<br>#<br>#=A0=A0=A0 build/<br>no chan=
ges added to commit (use &quot;git add&quot; and/or &quot;git commit -a&quo=
t;)<br>
MACHINE=3Dbeagleboard bitbake -v -D -D -D core-image-sato<br>=A0<br>mkfs.vf=
at -F 16 -n=A0 &quot;boot&quot; /dev/sdb1<br>/dev/sdb1=A0 <br>W95 FAT32 (LB=
A) (Bootable)<br><br>mke2fs -j -L &quot;rootfs&quot; /dev/sdb2<br>/dev/sdb2=
<br>
Ext3 (version 1.0)<br><br>cd /home/vidal/poky/build/tmp/deploy/images<br>cp=
 MLO-beagleboard-1.5.0+git1+9f94c6577e3a018b6b75cbe39f32bb331871f915-r0 /ru=
n/media/vidal/boot/MLO<br>cp u-boot-beagleboard-v2011.06+git12+b1af6f532e0d=
348b153d5c148369229d24af361a-r1.bin /run/media/vidal/boot/u-boot.bin<br>
cp uImage-3.2.18+git1+49f931bc294d5b6be60502bbd448cff5aa766235_1+90e3138c5a=
2a390dd6ddf2ed84fe5a9756d43397-r1-beagleboard-20120720032419.bin /run/media=
/vidal/boot/uImage<br>cp /home/vidal/uEnv.txt /run/media/vidal/boot/<br>
cd /run/media/vidal/rootfs/<br>tar jxf /home/vidal/poky/build/tmp/deploy/im=
ages/core-image-sato-beagleboard-20120720032419.rootfs.tar.bz2<br><br><br>*=
 - * Qodem 0.1.2 Capture Generated Fri, 20 Jul 2012 06:02:09 -0600 BEGIN * =
- *<br>
<br><br><br>Texas Instruments X-Loader 1.5.0 (Jul 19 2012 - 17:05:29)<br>Be=
agle xM<br>Reading boot sector<br>Loading u-boot.bin from mmc<br><br><br>U-=
Boot 2011.06 (Jul 19 2012 - 21:25:33)<br><br>OMAP3630/3730-GP ES2.1, CPU-OP=
P2, L3-165MHz, Max CPU Clock 1 Ghz<br>
OMAP3 Beagle board + LPDDR/NAND<br>I2C:=A0=A0 ready<br>DRAM:=A0 512 MiB<br>=
NAND:=A0 0 MiB<br>MMC:=A0=A0 OMAP SD/MMC: 0<br>*** Warning - readenv() fail=
ed, using default environment<br><br>In:=A0=A0=A0 serial<br>Out:=A0=A0 seri=
al<br>Err:=A0=A0 serial<br>
Beagle unknown 0x02<br>No EEPROM on expansion board<br>Die ID #158000029ff8=
00000160a7450b02602d<br>Hit any key to stop autoboot: 10=A0 9=A0 8=A0 7=A0 =
6=A0 5=A0 4=A0 3=A0 2=A0 1=A0 0 <br>SD/MMC found on device 0<br>reading uEn=
v.txt<br><br>130 bytes read<br>
Importing environment from mmc ...<br>reading uImage<br><br>3375856 bytes r=
ead<br>Booting from mmc ...<br>## Booting kernel from Legacy Image at 82000=
000 ...<br>=A0=A0 Image Name:=A0=A0 Linux-3.2.9-yocto-standard<br>=A0=A0 Im=
age Type:=A0=A0 ARM Linux Kernel Image (uncompressed)<br>
=A0=A0 Data Size:=A0=A0=A0 3375792 Bytes =3D 3.2 MiB<br>=A0=A0 Load Address=
: 80008000<br>=A0=A0 Entry Point:=A0 80008000<br>=A0=A0 Verifying Checksum =
... OK<br>=A0=A0 Loading Kernel Image ... OK<br>OK<br><br>Starting kernel .=
..<br><br>Uncompressing Linux... done, booting the kernel.<br>
Initializing cgroup subsys cpuset<br>Initializing cgroup subsys cpu<br>Linu=
x version 3.2.9-yocto-standard (<a href=3D"mailto:vidal@ws009.swbell.net">v=
idal@ws009.swbell.net</a>) (gcc version 4.6.4 20120303 (prerelease) (GCC) )=
 #1 Thu Jul 19 21:30:00 MDT 2012<br>
CPU: ARMv7 Processor [413fc082] revision 2 (ARMv7), cr=3D10c53c7d<br>CPU: P=
IPT / VIPT nonaliasing data cache, VIPT aliasing instruction cache<br>Machi=
ne: OMAP3 Beagle Board<br>Reserving 16777216 bytes SDRAM for VRAM<br>Memory=
 policy: ECC disabled, Data cache writeback<br>
OMAP3630 ES1.2 (l2cache iva sgx neon isp 192mhz_clk )<br>Clocking rate (Cry=
stal/Core/MPU): 26.0/332/600 MHz<br>Built 1 zonelists in Zone order, mobili=
ty grouping on.=A0 Total pages: 125952<br>Kernel command line: console=3Dtt=
y0 console=3DttyO2,115200n8 mpurate=3Dauto vram=3D16M omapfb.mode=3Ddvi:hd7=
20 omapfb.vram=3D0:8M,1:4M,2:4M omapfb.debug=3Dy omapdss.def_disp=3Ddv<br>
i root=3D/dev/mmcblk0p2 rw rootfstype=3Dext3 rootwait<br>PID hash table ent=
ries: 2048 (order: 1, 8192 bytes)<br>Dentry cache hash table entries: 65536=
 (order: 6, 262144 bytes)<br>Inode-cache hash table entries: 32768 (order: =
5, 131072 bytes)<br>
allocated 2097152 bytes of page_cgroup<br>please try &#39;cgroup_disable=3D=
memory&#39; option if you don&#39;t want memory cgroups<br>Memory: 496MB =
=3D 496MB total<br>Memory: 493816k/493816k available, 30472k reserved, 0K h=
ighmem<br>
Virtual kernel memory layout:<br>=A0=A0=A0 vector=A0 : 0xffff0000 - 0xffff1=
000=A0=A0 (=A0=A0 4 kB)<br>=A0=A0=A0 fixmap=A0 : 0xfff00000 - 0xfffe0000=A0=
=A0 ( 896 kB)<br>=A0=A0=A0 vmalloc : 0xe0800000 - 0xf8000000=A0=A0 ( 376 MB=
)<br>=A0=A0=A0 lowmem=A0 : 0xc0000000 - 0xe0000000=A0=A0 ( 512 MB)<br>
=A0=A0=A0 modules : 0xbf000000 - 0xc0000000=A0=A0 (=A0 16 MB)<br>=A0=A0=A0=
=A0=A0 .text : 0xc0008000 - 0xc06540a4=A0=A0 (6449 kB)<br>=A0=A0=A0=A0=A0 .=
init : 0xc0655000 - 0xc06ab000=A0=A0 ( 344 kB)<br>=A0=A0=A0=A0=A0 .data : 0=
xc06ac000 - 0xc0710868=A0=A0 ( 403 kB)<br>=A0=A0=A0=A0=A0=A0 .bss : 0xc0710=
88c - 0xc075486c=A0=A0 ( 272 kB)<br>
SLUB: Genslabs=3D13, HWalign=3D32, Order=3D0-3, MinObjects=3D0, CPUs=3D1, N=
odes=3D1<br>NR_IRQS:410<br>IRQ: Found an INTC at 0xfa200000 (revision 4.0) =
with 96 interrupts<br>Total of 96 interrupts on 1 active controller<br>OMAP=
 clockevent source: GPTIMER12 at 32768 Hz<br>
sched_clock: 32 bits at 32kHz, resolution 30517ns, wraps every 131071999ms<=
br>Console: colour dummy device 80x30<br>console [tty0] enabled<br>Calibrat=
ing delay loop... 503.12 BogoMIPS (lpj=3D1966080)<br>pid_max: default: 3276=
8 minimum: 301<br>
Security Framework initialized<br>Mount-cache hash table entries: 512<br>In=
itializing cgroup subsys debug<br>Initializing cgroup subsys cpuacct<br>Ini=
tializing cgroup subsys memory<br>Initializing cgroup subsys devices<br>
Initializing cgroup subsys freezer<br>Initializing cgroup subsys blkio<br>C=
PU: Testing write buffer coherency: ok<br>ftrace: allocating 18273 entries =
in 54 pages<br>devtmpfs: initialized<br>print_constraints: dummy: <br>NET: =
Registered protocol family 16<br>
GPMC revision 5.0<br>OMAP GPIO hardware version 2.5<br>omap_mux_init: Add p=
artition: #1: core, flags: 0<br>OMAP3 Beagle Rev: xM C<br>Reprogramming SDR=
C clock to 332000000 Hz<br>Found NAND on CS0<br>Registering NAND on CS0<br>
Unable to get DVI reset GPIO<br>=A0omap-mcbsp.2: alias fck already exists<b=
r>=A0omap-mcbsp.3: alias fck already exists<br>OMAP DMA hardware revision 5=
.0<br>bio: create slab &lt;bio-0&gt; at 0<br>SCSI subsystem initialized<br>
usbcore: registered new interface driver usbfs<br>usbcore: registered new i=
nterface driver hub<br>usbcore: registered new device driver usb<br>omap_i2=
c omap_i2c.1: bus 1 rev1.4.0 at 2600 kHz<br>twl4030: PIH (irq 7) chaining I=
RQs 368..375<br>
twl4030: power (irq 373) chaining IRQs 376..383<br>twl4030: gpio (irq 368) =
chaining IRQs 384..401<br>_omap_mux_init_gpio: Could not set gpio192<br>pri=
nt_constraints: VUSB1V5: 1500 mV normal standby<br>print_constraints: VUSB1=
V8: 1800 mV normal standby<br>
print_constraints: VUSB3V1: 3100 mV normal standby<br>twl4030_usb twl4030_u=
sb: Initialized TWL4030 USB module<br>print_constraints: VMMC1: 1850 &lt;--=
&gt; 3150 mV at 3000 mV normal standby<br>print_constraints: VDAC: 1800 mV =
normal standby<br>
print_constraints: VDVI: 1800 mV normal standby<br>print_constraints: VSIM:=
 1800 &lt;--&gt; 3000 mV at 1800 mV normal standby<br>omap_i2c omap_i2c.3: =
bus 3 rev1.4.0 at 100 kHz<br>Advanced Linux Sound Architecture Driver Versi=
on 1.0.24.<br>
cfg80211: Calling CRDA to update world regulatory domain<br>Switching to cl=
ocksource 32k_counter<br>musb-hdrc: version 6.0, ?dma?, otg (peripheral+hos=
t)<br>musb-hdrc musb-hdrc: USB OTG mode controller at fa0ab000 using DMA, I=
RQ 92<br>
NET: Registered protocol family 2<br>IP route cache hash table entries: 409=
6 (order: 2, 16384 bytes)<br>TCP established hash table entries: 16384 (ord=
er: 5, 131072 bytes)<br>TCP bind hash table entries: 16384 (order: 4, 65536=
 bytes)<br>
TCP: Hash tables configured (established 16384 bind 16384)<br>TCP reno regi=
stered<br>UDP hash table entries: 256 (order: 0, 4096 bytes)<br>UDP-Lite ha=
sh table entries: 256 (order: 0, 4096 bytes)<br>NET: Registered protocol fa=
mily 1<br>
RPC: Registered named UNIX socket transport module.<br>RPC: Registered udp =
transport module.<br>RPC: Registered tcp transport module.<br>RPC: Register=
ed tcp NFSv4.1 backchannel transport module.<br>VFS: Disk quotas dquot_6.5.=
2<br>
Dquot-cache hash table entries: 1024 (order 0, 4096 bytes)<br>Registering u=
nionfs 2.5.10 (for 3.1.0-rc4)<br>msgmni has been set to 964<br>Block layer =
SCSI generic (bsg) driver version 0.4 loaded (major 253)<br>io scheduler no=
op registered<br>
io scheduler deadline registered<br>io scheduler cfq registered (default)<b=
r>OMAP DSS rev 2.0<br>Serial: 8250/16550 driver, 4 ports, IRQ sharing enabl=
ed<br>omap_uart.0: ttyO0 at MMIO 0x4806a000 (irq =3D 72) is a OMAP UART0<br=
>
omap_uart.1: ttyO1 at MMIO 0x4806c000 (irq =3D 73) is a OMAP UART1<br>omap_=
uart.2: ttyO2 at MMIO 0x49020000 (irq =3D 74) is a OMAP UART2<br>console [t=
tyO2] enabled<br>omap_uart.3: ttyO3 at MMIO 0x49042000 (irq =3D 80) is a OM=
AP UART3<br>
brd: module loaded<br>omap2-nand driver initializing<br>No NAND device foun=
d<br>No NAND device found<br>usbcore: registered new interface driver kawet=
h<br>pegasus: v0.6.14 (2006/09/27), Pegasus/Pegasus II USB Ethernet driver<=
br>
usbcore: registered new interface driver pegasus<br>usbcore: registered new=
 interface driver asix<br>usbcore: registered new interface driver cdc_ethe=
r<br>usbcore: registered new interface driver dm9601<br>usbcore: registered=
 new interface driver smsc75xx<br>
usbcore: registered new interface driver smsc95xx<br>usbcore: registered ne=
w interface driver net1080<br>usbcore: registered new interface driver cdc_=
subset<br>usbcore: registered new interface driver zaurus<br>usbcore: regis=
tered new interface driver MOSCHIP usb-ethernet driver<br>
usbcore: registered new interface driver int51x1<br>cdc_ncm: 04-Aug-2011<br=
>usbcore: registered new interface driver cdc_ncm<br>ehci_hcd: USB 2.0 &#39=
;Enhanced&#39; Host Controller (EHCI) Driver<br>_regulator_get: ehci-omap.0=
 supply hsusb0 not found, using dummy regulator<br>
_regulator_get: ehci-omap.0 supply hsusb1 not found, using dummy regulator<=
br>ehci-omap ehci-omap.0: OMAP-EHCI Host Controller<br>ehci-omap ehci-omap.=
0: new USB bus registered, assigned bus number 1<br>ehci-omap ehci-omap.0: =
irq 77, io mem 0x48064800<br>
ehci-omap ehci-omap.0: USB 2.0 started, EHCI 1.00<br>hub 1-0:1.0: USB hub f=
ound<br>hub 1-0:1.0: 3 ports detected<br>Initializing USB Mass Storage driv=
er...<br>usbcore: registered new interface driver usb-storage<br>USB Mass S=
torage support registered.<br>
mousedev: PS/2 mouse device common for all mice<br>twl_rtc twl_rtc: Power u=
p reset detected.<br>twl_rtc twl_rtc: Enabling TWL-RTC.<br>twl_rtc twl_rtc:=
 rtc core: registered twl_rtc as rtc0<br>OMAP Watchdog Timer Rev 0x31: init=
ial timeout 60 sec<br>
cpuidle: using governor ladder<br>cpuidle: using governor menu<br>usbcore: =
registered new interface driver usbhid<br>usbhid: USB HID core driver<br>OM=
AP3 Beagle/Devkit8000 SoC init<br>usb 1-2: new high-speed USB device number=
 2 using ehci-omap<br>
asoc: twl4030-hifi &lt;-&gt; omap-mcbsp-dai.1 mapping ok<br>ALSA device lis=
t:<br>=A0 #0: omap3beagle<br>TCP cubic registered<br>NET: Registered protoc=
ol family 17<br>Registering the dns_resolver key type<br>VFP support v0.3: =
implementor 41 architecture 3 part 30 variant c rev 3<br>
ThumbEE CPU extension supported.<br>sr_init: No PMIC hook to init smartrefl=
ex<br>smartreflex smartreflex.0: omap_sr_probe: SmartReflex driver initiali=
zed<br>smartreflex smartreflex.1: omap_sr_probe: SmartReflex driver initial=
ized<br>
SmartReflex Class3 initialized<br>clock: disabling unused clocks to save po=
wer<br>registered taskstats version 1<br>omapfb omapfb: no driver for displ=
ay: dvi<br>omapfb omapfb: cannot parse default modes<br>hub 1-2:1.0: USB hu=
b found<br>
hub 1-2:1.0: 5 ports detected<br>Console: switching to colour frame buffer =
device 90x35<br>mmc0: host does not support reading read-only switch. assum=
ing write-enable.<br>regulator_init_complete: VDVI: incomplete constraints,=
 leaving on<br>
console [netcon0] enabled<br>netconsole: network logging started<br>mmc0: n=
ew high speed SDHC card at address 1234<br>mmcblk0: mmc0:1234 SA08G 7.41 Gi=
B <br>twl_rtc twl_rtc: setting system clock to 2000-01-01 00:00:00 UTC (946=
684800)<br>
=A0mmcblk0: p1 p2<br>usb 1-2.1: new high-speed USB device number 3 using eh=
ci-omap<br>smsc95xx v1.0.4<br>smsc95xx 1-2.1:1.0: eth0: register &#39;smsc9=
5xx&#39; at usb-ehci-omap.0-2.1, smsc95xx USB 2.0 Ethernet, fe:a3:5a:02:39:=
a3<br>
usb 1-2.3: new low-speed USB device number 4 using ehci-omap<br>input: CHES=
EN USB Keyboard as /devices/platform/usbhs-omap.0/ehci-omap.0/usb1/1-2/1-2.=
3/1-2.3:1.0/input/input0<br>generic-usb 0003:0A81:0101.0001: input: USB HID=
 v1.10 Keyboard [CHESEN USB Keyboard] on usb-ehci-omap.0-2.3/input0<br>
input: CHESEN USB Keyboard as /devices/platform/usbhs-omap.0/ehci-omap.0/us=
b1/1-2/1-2.3/1-2.3:1.1/input/input1<br>generic-usb 0003:0A81:0101.0002: inp=
ut: USB HID v1.10 Device [CHESEN USB Keyboard] on usb-ehci-omap.0-2.3/input=
1<br>
usb 1-2.5: new low-speed USB device number 5 using ehci-omap<br>input: PixA=
rt USB Optical Mouse as /devices/platform/usbhs-omap.0/ehci-omap.0/usb1/1-2=
/1-2.5/1-2.5:1.0/input/input2<br>generic-usb 0003:093A:2510.0003: input: US=
B HID v1.11 Mouse [PixArt USB Optical Mouse] on usb-ehci-omap.0-2.5/input0<=
br>
kjournald starting.=A0 Commit interval 5 seconds<br>EXT3-fs (mmcblk0p2): us=
ing internal journal<br>EXT3-fs (mmcblk0p2): recovery complete<br>EXT3-fs (=
mmcblk0p2): mounted filesystem with ordered data mode<br>VFS: Mounted root =
(ext3 filesystem) on device 179:2.<br>
devtmpfs: mounted<br>Freeing init memory: 344K<br>INIT: usb 1-2.5: USB disc=
onnect, device number 5<br>usb 1-2.5: new low-speed USB device number 6 usi=
ng ehci-omap<br>input: PixArt USB Optical Mouse as /devices/platform/usbhs-=
omap.0/ehci-omap.0/usb1/1-2/1-2.5/1-2.5:1.0/input/input3<br>
generic-usb 0003:093A:2510.0004: input: USB HID v1.11 Mouse [PixArt USB Opt=
ical Mouse] on usb-ehci-omap.0-2.5/input0<br>udev[61]: starting version 164=
<br>smsc95xx 1-2.1:1.0: eth0: link up, 100Mbps, full-duplex, lpa 0x45E1<br>
usb 1-2.5: USB disconnect, device number 6<br>usb 1-2.5: new low-speed USB =
device number 7 using ehci-omap<br>input: PixArt USB Optical Mouse as /devi=
ces/platform/usbhs-omap.0/ehci-omap.0/usb1/1-2/1-2.5/1-2.5:1.0/input/input4=
<br>
generic-usb 0003:093A:2510.0005: input: USB HID v1.11 Mouse [PixArt USB Opt=
ical Mouse] on usb-ehci-omap.0-2.5/input0<br>usb 1-2.5: USB disconnect, dev=
ice number 7<br>usb 1-2.5: new low-speed USB device number 8 using ehci-oma=
p<br>
input: PixArt USB Optical Mouse as /devices/platform/usbhs-omap.0/ehci-omap=
.0/usb1/1-2/1-2.5/1-2.5:1.0/input/input5<br>generic-usb 0003:093A:2510.0006=
: input: USB HID v1.11 Mouse [PixArt USB Optical Mouse] on usb-ehci-omap.0-=
2.5/input0<br>
usb 1-2.5: USB disconnect, device number 8<br>usb 1-2.5: new low-speed USB =
device number 9 using ehci-omap<br>input: PixArt USB Optical Mouse as /devi=
ces/platform/usbhs-omap.0/ehci-omap.0/usb1/1-2/1-2.5/1-2.5:1.0/input/input6=
<br>
generic-usb 0003:093A:2510.0007: input: USB HID v1.11 Mouse [PixArt USB Opt=
ical Mouse] on usb-ehci-omap.0-2.5/input0<br>usb 1-2.5: USB disconnect, dev=
ice number 9<br>usb 1-2.5: new low-speed USB device number 10 using ehci-om=
ap<br>
input: PixArt USB Optical Mouse as /devices/platform/usbhs-omap.0/ehci-omap=
.0/usb1/1-2/1-2.5/1-2.5:1.0/input/input7<br>generic-usb 0003:093A:2510.0008=
: input: USB HID v1.11 Mouse [PixArt USB Optical Mouse] on usb-ehci-omap.0-=
2.5/input0<br>
usb 1-2.5: USB disconnect, device number 10<br>usb 1-2.5: new low-speed USB=
 device number 11 using ehci-omap<br>input: PixArt USB Optical Mouse as /de=
vices/platform/usbhs-omap.0/ehci-omap.0/usb1/1-2/1-2.5/1-2.5:1.0/input/inpu=
t8<br>
generic-usb 0003:093A:2510.0009: input: USB HID v1.11 Mouse [PixArt USB Opt=
ical Mouse] on usb-ehci-omap.0-2.5/input0<br>usb 1-2.5: USB disconnect, dev=
ice number 11<br>usb 1-2.5: new low-speed USB device number 12 using ehci-o=
map<br>
input: PixArt USB Optical Mouse as /devices/platform/usbhs-omap.0/ehci-omap=
.0/usb1/1-2/1-2.5/1-2.5:1.0/input/input9<br>generic-usb 0003:093A:2510.000A=
: input: USB HID v1.11 Mouse [PixArt USB Optical Mouse] on usb-ehci-omap.0-=
2.5/input0<br>
<br>* - * Qodem 0.1.2 Capture Generated Fri, 20 Jul 2012 06:10:13 -0600 END=
 * - *<br>The boot never gets to the point of bringing up an X window on th=
e beagleboard display.<br><br><br>Thanks for any help it will be appreciate=
d.<br>
<br>

--f46d044786edb1f0a904c541f020--
