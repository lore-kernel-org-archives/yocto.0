Return-Path: <vidal.develone@gmail.com>
Received: from mail-yx0-f176.google.com (mail-yx0-f176.google.com
	[209.85.213.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DF443E00288
	for <yocto@yoctoproject.org>; Thu, 19 Jul 2012 08:01:31 -0700 (PDT)
Received: by yenl5 with SMTP id l5so3362941yen.35
	for <yocto@yoctoproject.org>; Thu, 19 Jul 2012 08:01:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=RBD7mWpHbI1kH65sLnmmpRzRcN+OXL/nwmQ0eNv3sJc=;
	b=pv9eYc0vfo8B2l94y9B6B8rvJaHZU93Y3MOEA0d5mfPIfLWaV4Fh9OehhODXvSd+Pk
	uYUH84Y4gPKT9/+mXZI8oE8QMjzoWQ9Z4U2+uRjZeyhsK08faNmonI8i5zW0H7J7dxDn
	AIwJiB0+OCMR9FP1EHnBdeIIPQleYiAljeoCW/xHc+3/PsamhTRl5n46DD/R0LrpGZqm
	M0QFVRezZpiUlu1XT5lZRPnXFaQwNuup9iHiHw7C9oarGoEBbJBkCG2sPlUZVGHgEbCH
	5qxVzMrmi4qKh8lzpG73guegbIPX4TRq+Bk/g+d7lJYpuDqWD5H/jvhLZkAF/HBwsR7h
	U8WQ==
MIME-Version: 1.0
Received: by 10.50.184.129 with SMTP id eu1mr1831136igc.18.1342710090890; Thu,
	19 Jul 2012 08:01:30 -0700 (PDT)
Received: by 10.64.39.39 with HTTP; Thu, 19 Jul 2012 08:01:30 -0700 (PDT)
Date: Thu, 19 Jul 2012 09:01:30 -0600
Message-ID: <CANwz6nzrW1NioUZo3bSi1YczzrnrdL164EZJAzw28EGP=2p5+g@mail.gmail.com>
From: Edward Vidal <vidal.develone@gmail.com>
To: yocto@yoctoproject.org
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
X-List-Received-Date: Thu, 19 Jul 2012 15:01:32 -0000
Content-Type: multipart/alternative; boundary=14dae9340eb500febb04c5300e9c

--14dae9340eb500febb04c5300e9c
Content-Type: text/plain; charset=ISO-8859-1

Hello
It appears that I do not have twm or xterm.
xterm term was not installed on the host fedora17 and I thought why it was
not working.
reverted to the a ver I had built earlier this month.
Installed xterm on the host system.

Nothing is displayed on the monitor I am able to ssh into the beagleboard

Modified the file /home/vidal/poky/meta-yocto/conf/machine/beagleboard.conf

PREFERRED_VERSION_linux-yocto ?= "3.0%" --> PREFERRED_VERSION_linux-yocto
?= "3.4%"

Modified the file
/home/vidal/poky/meta-yocto/recipes-kernel/linux/linux-yocto_3.4.bbappend

# COMPATIBLE_MACHINE_beagleboard = "beagleboard" -->
COMPATIBLE_MACHINE_beagleboard = "beagleboard"
 git status
# On branch master
# Changes not staged for commit:
#   (use "git add <file>..." to update what will be committed)
#   (use "git checkout -- <file>..." to discard changes in working
directory)
#
#    modified:   meta-yocto/conf/machine/beagleboard.conf
#    modified:   meta-yocto/recipes-kernel/linux/linux-yocto_3.4.bbappend
#
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
u-boot-beagleboard-v2011.06+git26+b1af6f532e0d348b153d5c148369229d24af361a-r1.bin
/run/media/vidal/boot/u-boot.bin
cp
uImage-3.4.4+git1+a8cf77018b0faa0d29f1483ff4e5a2034dc8edd5_1+a8291fa6f723b0182d2b7033b5d59f412ba7cf72-r4.0-beagleboard-20120719132716.bin
/run/media/vidal/boot/uImage
cp /home/vidal/uEnv.txt /run/media/vidal/boot/

mpurate=auto

dvimode="hd720 omapfb.vram=0:8M,1:4M,2:4M"
vram=16M
optargs="consoleblank=0"
console="tty0 console=ttyO2,115200n8"
cd /run/media/vidal/rootfs
tar jxvf
/home/vidal/poky/build/tmp/deploy/images/core-image-sato-beagleboard-20120719132716.rootfs.tar.bz2


cd ~
umount /run/media/vidal/boot
umount /run/media/vidal/rootfs

sync
[vidal@ws009 ~]$ sudo su -
[root@ws009 ~]# ssh -Y 192.168.0.106
The authenticity of host '192.168.0.106 (192.168.0.106)' can't be
established.
RSA key fingerprint is af:90:2e:eb:d7:08:4b:27:b9:63:32:cd:ce:c8:08:bd.
Are you sure you want to continue connecting (yes/no)? yes
Warning: Permanently added '192.168.0.106' (RSA) to the list of known hosts.
root@192.168.0.106's password:
xauth:  file /home/root/.Xauthority does not exist
root@beagleboard:~# dmesg
Booting Linux on physical CPU 0
Initializing cgroup subsys cpuset
Initializing cgroup subsys cpu
Linux version 3.4.1-yocto-standard (vidal@ws009.swbell.net) (gcc version
4.7.2 20120615 (prerelease) (GCC) ) #1 Thu Jul 19 07:33:44 MDT 2012
CPU: ARMv7 Processor [413fc082] revision 2 (ARMv7), cr=10c53c7d
CPU: PIPT / VIPT nonaliasing data cache, VIPT aliasing instruction cache
Machine: OMAP3 Beagle Board
Reserving 16777216 bytes SDRAM for VRAM
Memory policy: ECC disabled, Data cache writeback
On node 0 totalpages: 126720
free_area_init_node: node 0, pgdat c089b790, node_mem_map c08ff000
  Normal zone: 1024 pages used for memmap
  Normal zone: 0 pages reserved
  Normal zone: 125696 pages, LIFO batch:31
OMAP3630 ES1.2 (l2cache iva sgx neon isp 192mhz_clk )
Clocking rate (Crystal/Core/MPU): 26.0/332/600 MHz
pcpu-alloc: s0 r0 d32768 u32768 alloc=1*32768
pcpu-alloc: [0] 0
Built 1 zonelists in Zone order, mobility grouping on.  Total pages: 125696
Kernel command line: console=tty0 console=ttyO2,115200n8 mpurate=auto
vram=16M omapfb.mode=dvi:hd720 omapfb.vram=0:8M,1:4M,2:4M omapfb.debug=y
omapdss.def_disp=dvi root=/dev/mmcblk0p2 rw rootfstype=ext3 rootwait
PID hash table entries: 2048 (order: 1, 8192 bytes)
Dentry cache hash table entries: 65536 (order: 6, 262144 bytes)
Inode-cache hash table entries: 32768 (order: 5, 131072 bytes)
allocated 1048576 bytes of page_cgroup
please try 'cgroup_disable=memory' option if you don't want memory cgroups
Memory: 495MB = 495MB total
Memory: 492108k/492108k available, 32180k reserved, 0K highmem
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
msgmni has been set to 961
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
OMAPFB: omapfb_init
OMAPFB: omapfb_probe
omapfb omapfb: no driver for display: dvi
omapfb omapfb: cannot parse default modes
OMAPFB: create 2 framebuffers
OMAPFB: fb_infos allocated
OMAPFB: allocating 8388608 bytes for fb 0
hub 1-2:1.0: USB hub found
hub 1-2:1.0: 5 ports detected
OMAPFB: allocated VRAM paddr 9f000000, vaddr e1000000
OMAPFB: allocating 4194304 bytes for fb 1
OMAPFB: allocated VRAM paddr 9f800000, vaddr e2000000
OMAPFB: region0 phys 9f000000 virt e1000000 size=8388608
OMAPFB: region1 phys 9f800000 virt e2000000 size=4194304
OMAPFB: fbmems allocated
OMAPFB: check_fb_var 0
OMAPFB: max frame size 8388608, line size 2880
OMAPFB: xres = 720, yres = 574, vxres = 720, vyres = 574
OMAPFB: set_fb_fix
OMAPFB: check_fb_var 1
OMAPFB: max frame size 4194304, line size 2880
OMAPFB: xres = 720, yres = 574, vxres = 720, vyres = 574
OMAPFB: set_fb_fix
OMAPFB: fb_infos initialized
OMAPFB: set_par(0)
OMAPFB: set_fb_fix
OMAPFB: apply_changes, fb 0, ovl 0
OMAPFB: setup_overlay 0, posx 0, posy 0, outw 720, outh 574
OMAPFB: paddr 9f000000
OMAPFB: pan_display(0)
OMAPFB: setcmap
OMAPFB: setcmap
Console: switching to colour frame buffer device 90x35
OMAPFB: pan_display(0)
OMAPFB: setcmap
OMAPFB: setcmap
OMAPFB: framebuffers registered
OMAPFB: apply_changes, fb 0, ovl 0
OMAPFB: setup_overlay 0, posx 0, posy 0, outw 720, outh 574
OMAPFB: paddr 9f000000
OMAPFB: apply_changes, fb 1, ovl 1
OMAPFB: setup_overlay 1, posx 0, posy 0, outw 720, outh 574
OMAPFB: paddr 9f800000
OMAPFB: create_framebuffers done
OMAPFB: mgr->apply'ed
OMAPFB: create sysfs for fbs
OMAPFB: create sysfs for fbs
VDVI: incomplete constraints, leaving on
console [netcon0] enabled
netconsole: network logging started
twl_rtc twl_rtc: setting system clock to 2012-07-19 14:13:53 UTC
(1342707233)
ALSA device list:
  #0: omap3beagle
Waiting for root device /dev/mmcblk0p2...
usb 1-2.1: new high-speed USB device number 3 using ehci-omap
smsc95xx v1.0.4
smsc95xx 1-2.1:1.0: eth0: register 'smsc95xx' at usb-ehci-omap.0-2.1,
smsc95xx USB 2.0 Ethernet, a6:88:0d:14:6a:6a
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
input: PixArt USB Optical Mouse as
/devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.5/1-2.5:1.0/input/input2
generic-usb 0003:093A:2510.0003: input: USB HID v1.11 Mouse [PixArt USB
Optical Mouse] on usb-ehci-omap.0-2.5/input0
kjournald starting.  Commit interval 5 seconds
EXT3-fs (mmcblk0p2): using internal journal
EXT3-fs (mmcblk0p2): recovery complete
EXT3-fs (mmcblk0p2): mounted filesystem with ordered data mode
VFS: Mounted root (ext3 filesystem) on device 179:2.
devtmpfs: mounted
Freeing init memory: 364K
OMAPFB: pan_display(0)
OMAPFB: setcmap
OMAPFB: setcmap
OMAPFB: user mmap region start 9f000000, len 8388608, off 9f000000
udev[65]: starting version 164
ADDRCONF(NETDEV_UP): eth0: link is not ready
ADDRCONF(NETDEV_CHANGE): eth0: link becomes ready
smsc95xx 1-2.1:1.0: eth0: link up, 100Mbps, full-duplex, lpa 0x45E1
ip_tables: (C) 2000-2006 Netfilter Core Team
nf_conntrack version 0.5.0 (7694 buckets, 30776 max)
OMAPFB: check_var(0)
OMAPFB: check_fb_var 0
OMAPFB: max frame size 8388608, line size 2880
OMAPFB: xres = 720, yres = 574, vxres = 720, vyres = 574
# /etc/inittab: init(8) configuration.
# $Id: inittab,v 1.91 2002/01/25 13:35:21 miquels Exp $

# The default runlevel.
id:5:initdefault:

# Boot-time system configuration/initialization script.
# This is run first except when booting in emergency (-b) mode.
si::sysinit:/etc/init.d/rcS

# What to do in single-user mode.
~~:S:wait:/sbin/sulogin

# /etc/init.d executes the S and K scripts upon change
# of runlevel.
#
# Runlevel 0 is halt.
# Runlevel 1 is single-user.
# Runlevels 2-5 are multi-user.
# Runlevel 6 is reboot.

l0:0:wait:/etc/init.d/rc 0
l1:1:wait:/etc/init.d/rc 1
root@beagleboard:~# startx
xauth:  file /home/root/.serverauth.630 does not exist


X.Org X Server 1.11.2
Release Date: 2011-11-04
X Protocol Version 11, Revision 0
Build Operating System: Linux 3.3.4-5.fc17.x86_64 x86_64
Current Operating System: Linux beagleboard 3.4.1-yocto-standard #1 Thu Jul
19 07:33:44 MDT 2012 armv7l
Kernel command line: console=tty0 console=ttyO2,115200n8 mpurate=auto
vram=16M omapfb.mode=dvi:hd720 omapfb.vram=0:8M,1:4M,2:4M omapfb.debug=y
omapdss.def_disp=dvi root=/dev/mmcblk0p2 rw rootfstype=ext3 rootwait
Build Date: 15 July 2012  12:32:41PM

Current version of pixman: 0.26.2
    Before reporting problems, check http://wiki.x.org
    to make sure that you have the latest version.
Markers: (--) probed, (**) from config file, (==) default setting,
    (++) from command line, (!!) notice, (II) informational,
    (WW) warning, (EE) error, (NI) not implemented, (??) unknown.
(==) Log file: "/var/log/Xorg.1.log", Time: Thu Jul 19 14:16:23 2012
(==) Using config file: "/etc/X11/xorg.conf"
(==) Using system config directory "/usr/share/X11/xorg.conf.d"
(EE) Failed to load module "extmod" (module does not exist, 0)
(EE) Failed to load module "dbe" (module does not exist, 0)
(EE) Failed to load module "glx" (module does not exist, 0)
(EE) Failed to load module "record" (module does not exist, 0)
(EE) Failed to load module "dri" (module does not exist, 0)
(EE) Failed to load module "dri2" (module does not exist, 0)
(EE) omapfb(0): Failed to open /dev/fb2: No such file or directory
(EE) omapfb(0): XVScreenInit failed
/usr/lib/X11/xinit/xinitrc: line 56: exec: xterm: not found
/usr/lib/X11/xinit/xinitrc: line 52: twm: command not found
/usr/lib/X11/xinit/xinitrc: line 54: xterm: command not found
/usr/lib/X11/xinit/xinitrc: line 55: xterm: command not found
xinit: connection to X server lost

waiting for X server to shut down Server terminated successfully (0).
Closing log file.

root@beagleboard:~#


[vidal@ws009 ~]$ sudo su -
[root@ws009 ~]# ssh -Y 192.168.0.106
The authenticity of host '192.168.0.106 (192.168.0.106)' can't be
established.
RSA key fingerprint is af:90:2e:eb:d7:08:4b:27:b9:63:32:cd:ce:c8:08:bd.
Are you sure you want to continue connecting (yes/no)? yes
Warning: Permanently added '192.168.0.106' (RSA) to the list of known hosts.
root@192.168.0.106's password:
xauth:  file /home/root/.Xauthority does not exist
root@beagleboard:~# dmesg
Booting Linux on physical CPU 0
Initializing cgroup subsys cpuset
Initializing cgroup subsys cpu
Linux version 3.4.1-yocto-standard (vidal@ws009.swbell.net) (gcc version
4.7.2 20120615 (prerelease) (GCC) ) #1 Thu Jul 19 07:33:44 MDT 2012
CPU: ARMv7 Processor [413fc082] revision 2 (ARMv7), cr=10c53c7d
CPU: PIPT / VIPT nonaliasing data cache, VIPT aliasing instruction cache
Machine: OMAP3 Beagle Board
Reserving 16777216 bytes SDRAM for VRAM
Memory policy: ECC disabled, Data cache writeback
On node 0 totalpages: 126720
free_area_init_node: node 0, pgdat c089b790, node_mem_map c08ff000
  Normal zone: 1024 pages used for memmap
  Normal zone: 0 pages reserved
  Normal zone: 125696 pages, LIFO batch:31
OMAP3630 ES1.2 (l2cache iva sgx neon isp 192mhz_clk )
Clocking rate (Crystal/Core/MPU): 26.0/332/600 MHz
pcpu-alloc: s0 r0 d32768 u32768 alloc=1*32768
pcpu-alloc: [0] 0
Built 1 zonelists in Zone order, mobility grouping on.  Total pages: 125696
Kernel command line: console=tty0 console=ttyO2,115200n8 mpurate=auto
vram=16M omapfb.mode=dvi:hd720 omapfb.vram=0:8M,1:4M,2:4M omapfb.debug=y
omapdss.def_disp=dvi root=/dev/mmcblk0p2 rw rootfstype=ext3 rootwait
PID hash table entries: 2048 (order: 1, 8192 bytes)
Dentry cache hash table entries: 65536 (order: 6, 262144 bytes)
Inode-cache hash table entries: 32768 (order: 5, 131072 bytes)
allocated 1048576 bytes of page_cgroup
please try 'cgroup_disable=memory' option if you don't want memory cgroups
Memory: 495MB = 495MB total
Memory: 492108k/492108k available, 32180k reserved, 0K highmem
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
msgmni has been set to 961
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
OMAPFB: omapfb_init
OMAPFB: omapfb_probe
omapfb omapfb: no driver for display: dvi
omapfb omapfb: cannot parse default modes
OMAPFB: create 2 framebuffers
OMAPFB: fb_infos allocated
OMAPFB: allocating 8388608 bytes for fb 0
hub 1-2:1.0: USB hub found
hub 1-2:1.0: 5 ports detected
OMAPFB: allocated VRAM paddr 9f000000, vaddr e1000000
OMAPFB: allocating 4194304 bytes for fb 1
OMAPFB: allocated VRAM paddr 9f800000, vaddr e2000000
OMAPFB: region0 phys 9f000000 virt e1000000 size=8388608
OMAPFB: region1 phys 9f800000 virt e2000000 size=4194304
OMAPFB: fbmems allocated
OMAPFB: check_fb_var 0
OMAPFB: max frame size 8388608, line size 2880
OMAPFB: xres = 720, yres = 574, vxres = 720, vyres = 574
OMAPFB: set_fb_fix
OMAPFB: check_fb_var 1
OMAPFB: max frame size 4194304, line size 2880
OMAPFB: xres = 720, yres = 574, vxres = 720, vyres = 574
OMAPFB: set_fb_fix
OMAPFB: fb_infos initialized
OMAPFB: set_par(0)
OMAPFB: set_fb_fix
OMAPFB: apply_changes, fb 0, ovl 0
OMAPFB: setup_overlay 0, posx 0, posy 0, outw 720, outh 574
OMAPFB: paddr 9f000000
OMAPFB: pan_display(0)
OMAPFB: setcmap
OMAPFB: setcmap
Console: switching to colour frame buffer device 90x35
OMAPFB: pan_display(0)
OMAPFB: setcmap
OMAPFB: setcmap
OMAPFB: framebuffers registered
OMAPFB: apply_changes, fb 0, ovl 0
OMAPFB: setup_overlay 0, posx 0, posy 0, outw 720, outh 574
OMAPFB: paddr 9f000000
OMAPFB: apply_changes, fb 1, ovl 1
OMAPFB: setup_overlay 1, posx 0, posy 0, outw 720, outh 574
OMAPFB: paddr 9f800000
OMAPFB: create_framebuffers done
OMAPFB: mgr->apply'ed
OMAPFB: create sysfs for fbs
OMAPFB: create sysfs for fbs
VDVI: incomplete constraints, leaving on
console [netcon0] enabled
netconsole: network logging started
twl_rtc twl_rtc: setting system clock to 2012-07-19 14:13:53 UTC
(1342707233)
ALSA device list:
  #0: omap3beagle
Waiting for root device /dev/mmcblk0p2...
usb 1-2.1: new high-speed USB device number 3 using ehci-omap
smsc95xx v1.0.4
smsc95xx 1-2.1:1.0: eth0: register 'smsc95xx' at usb-ehci-omap.0-2.1,
smsc95xx USB 2.0 Ethernet, a6:88:0d:14:6a:6a
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
input: PixArt USB Optical Mouse as
/devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.5/1-2.5:1.0/input/input2
generic-usb 0003:093A:2510.0003: input: USB HID v1.11 Mouse [PixArt USB
Optical Mouse] on usb-ehci-omap.0-2.5/input0
kjournald starting.  Commit interval 5 seconds
EXT3-fs (mmcblk0p2): using internal journal
EXT3-fs (mmcblk0p2): recovery complete
EXT3-fs (mmcblk0p2): mounted filesystem with ordered data mode
VFS: Mounted root (ext3 filesystem) on device 179:2.
devtmpfs: mounted
Freeing init memory: 364K
OMAPFB: pan_display(0)
OMAPFB: setcmap
OMAPFB: setcmap
OMAPFB: user mmap region start 9f000000, len 8388608, off 9f000000
udev[65]: starting version 164
ADDRCONF(NETDEV_UP): eth0: link is not ready
ADDRCONF(NETDEV_CHANGE): eth0: link becomes ready
smsc95xx 1-2.1:1.0: eth0: link up, 100Mbps, full-duplex, lpa 0x45E1
ip_tables: (C) 2000-2006 Netfilter Core Team
nf_conntrack version 0.5.0 (7694 buckets, 30776 max)
OMAPFB: check_var(0)
OMAPFB: check_fb_var 0
OMAPFB: max frame size 8388608, line size 2880
OMAPFB: xres = 720, yres = 574, vxres = 720, vyres = 574
# /etc/inittab: init(8) configuration.
# $Id: inittab,v 1.91 2002/01/25 13:35:21 miquels Exp $

# The default runlevel.
id:5:initdefault:

# Boot-time system configuration/initialization script.
# This is run first except when booting in emergency (-b) mode.
si::sysinit:/etc/init.d/rcS

# What to do in single-user mode.
~~:S:wait:/sbin/sulogin

# /etc/init.d executes the S and K scripts upon change
# of runlevel.
#
# Runlevel 0 is halt.
# Runlevel 1 is single-user.
# Runlevels 2-5 are multi-user.
# Runlevel 6 is reboot.

l0:0:wait:/etc/init.d/rc 0
l1:1:wait:/etc/init.d/rc 1
root@beagleboard:~# startx
xauth:  file /home/root/.serverauth.630 does not exist


X.Org X Server 1.11.2
Release Date: 2011-11-04
X Protocol Version 11, Revision 0
Build Operating System: Linux 3.3.4-5.fc17.x86_64 x86_64
Current Operating System: Linux beagleboard 3.4.1-yocto-standard #1 Thu Jul
19 07:33:44 MDT 2012 armv7l
Kernel command line: console=tty0 console=ttyO2,115200n8 mpurate=auto
vram=16M omapfb.mode=dvi:hd720 omapfb.vram=0:8M,1:4M,2:4M omapfb.debug=y
omapdss.def_disp=dvi root=/dev/mmcblk0p2 rw rootfstype=ext3 rootwait
Build Date: 15 July 2012  12:32:41PM

Current version of pixman: 0.26.2
    Before reporting problems, check http://wiki.x.org
    to make sure that you have the latest version.
Markers: (--) probed, (**) from config file, (==) default setting,
    (++) from command line, (!!) notice, (II) informational,
    (WW) warning, (EE) error, (NI) not implemented, (??) unknown.
(==) Log file: "/var/log/Xorg.1.log", Time: Thu Jul 19 14:16:23 2012
(==) Using config file: "/etc/X11/xorg.conf"
(==) Using system config directory "/usr/share/X11/xorg.conf.d"
(EE) Failed to load module "extmod" (module does not exist, 0)
(EE) Failed to load module "dbe" (module does not exist, 0)
(EE) Failed to load module "glx" (module does not exist, 0)
(EE) Failed to load module "record" (module does not exist, 0)
(EE) Failed to load module "dri" (module does not exist, 0)
(EE) Failed to load module "dri2" (module does not exist, 0)
(EE) omapfb(0): Failed to open /dev/fb2: No such file or directory
(EE) omapfb(0): XVScreenInit failed
/usr/lib/X11/xinit/xinitrc: line 56: exec: xterm: not found
/usr/lib/X11/xinit/xinitrc: line 52: twm: command not found
/usr/lib/X11/xinit/xinitrc: line 54: xterm: command not found
/usr/lib/X11/xinit/xinitrc: line 55: xterm: command not found
xinit: connection to X server lost

waiting for X server to shut down Server terminated successfully (0).
Closing log file.

root@beagleboard:~#

Thanks All help is apperciated

--14dae9340eb500febb04c5300e9c
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hello<br>It appears that I do not have twm or xterm.=A0 <br>xterm term was =
not installed on the host fedora17 and I thought why it was not working.<br=
>reverted to the a ver I had built earlier this month.<br>Installed xterm o=
n the host system.<br>
<br>Nothing is displayed on the monitor I am able to ssh into the beagleboa=
rd<br><br>Modified the file /home/vidal/poky/meta-yocto/conf/machine/beagle=
board.conf<br><br>PREFERRED_VERSION_linux-yocto ?=3D &quot;3.0%&quot; --&gt=
; PREFERRED_VERSION_linux-yocto ?=3D &quot;3.4%&quot;<br>
<br>Modified the file /home/vidal/poky/meta-yocto/recipes-kernel/linux/linu=
x-yocto_3.4.bbappend<br><br># COMPATIBLE_MACHINE_beagleboard =3D &quot;beag=
leboard&quot; --&gt;=A0 COMPATIBLE_MACHINE_beagleboard =3D &quot;beagleboar=
d&quot;<br>
=A0git status<br># On branch master<br># Changes not staged for commit:<br>=
#=A0=A0 (use &quot;git add &lt;file&gt;...&quot; to update what will be com=
mitted)<br>#=A0=A0 (use &quot;git checkout -- &lt;file&gt;...&quot; to disc=
ard changes in working directory)<br>
#<br>#=A0=A0=A0 modified:=A0=A0 meta-yocto/conf/machine/beagleboard.conf<br=
>#=A0=A0=A0 modified:=A0=A0 meta-yocto/recipes-kernel/linux/linux-yocto_3.4=
.bbappend<br>#<br>no changes added to commit (use &quot;git add&quot; and/o=
r &quot;git commit -a&quot;)<br>
<br>MACHINE=3Dbeagleboard bitbake -v -D -D -D core-image-sato<br>=A0<br>mkf=
s.vfat -F 16 -n=A0 &quot;boot&quot; /dev/sdb1<br>/dev/sdb1=A0 <br>W95 FAT32=
 (LBA) (Bootable)<br><br>mke2fs -j -L &quot;rootfs&quot; /dev/sdb2<br>/dev/=
sdb2<br>
Ext3 (version 1.0)<br><br>cd /home/vidal/poky/build/tmp/deploy/images<br>cp=
 MLO-beagleboard-1.5.0+git1+9f94c6577e3a018b6b75cbe39f32bb331871f915-r0 /ru=
n/media/vidal/boot/MLO<br>cp u-boot-beagleboard-v2011.06+git26+b1af6f532e0d=
348b153d5c148369229d24af361a-r1.bin /run/media/vidal/boot/u-boot.bin<br>
cp uImage-3.4.4+git1+a8cf77018b0faa0d29f1483ff4e5a2034dc8edd5_1+a8291fa6f72=
3b0182d2b7033b5d59f412ba7cf72-r4.0-beagleboard-20120719132716.bin /run/medi=
a/vidal/boot/uImage <br>cp /home/vidal/uEnv.txt /run/media/vidal/boot/<br>
<br>mpurate=3Dauto<br><br>dvimode=3D&quot;hd720 omapfb.vram=3D0:8M,1:4M,2:4=
M&quot;<br>vram=3D16M<br>optargs=3D&quot;consoleblank=3D0&quot;<br>console=
=3D&quot;tty0 console=3DttyO2,115200n8&quot;<br>cd /run/media/vidal/rootfs<=
br>tar jxvf /home/vidal/poky/build/tmp/deploy/images/core-image-sato-beagle=
board-20120719132716.rootfs.tar.bz2 <br>
<br>cd ~<br>umount /run/media/vidal/boot<br>umount /run/media/vidal/rootfs<=
br><br>sync<br>[vidal@ws009 ~]$ sudo su -<br>[root@ws009 ~]# ssh -Y 192.168=
.0.106<br>The authenticity of host &#39;192.168.0.106 (192.168.0.106)&#39; =
can&#39;t be established.<br>
RSA key fingerprint is af:90:2e:eb:d7:08:4b:27:b9:63:32:cd:ce:c8:08:bd.<br>=
Are you sure you want to continue connecting (yes/no)? yes<br>Warning: Perm=
anently added &#39;192.168.0.106&#39; (RSA) to the list of known hosts.<br>
<a href=3D"mailto:root@192.168.0.106">root@192.168.0.106</a>&#39;s password=
: <br>xauth:=A0 file /home/root/.Xauthority does not exist<br>root@beaglebo=
ard:~# dmesg<br>Booting Linux on physical CPU 0<br>Initializing cgroup subs=
ys cpuset<br>
Initializing cgroup subsys cpu<br>Linux version 3.4.1-yocto-standard (<a hr=
ef=3D"mailto:vidal@ws009.swbell.net">vidal@ws009.swbell.net</a>) (gcc versi=
on 4.7.2 20120615 (prerelease) (GCC) ) #1 Thu Jul 19 07:33:44 MDT 2012<br>
CPU: ARMv7 Processor [413fc082] revision 2 (ARMv7), cr=3D10c53c7d<br>CPU: P=
IPT / VIPT nonaliasing data cache, VIPT aliasing instruction cache<br>Machi=
ne: OMAP3 Beagle Board<br>Reserving 16777216 bytes SDRAM for VRAM<br>Memory=
 policy: ECC disabled, Data cache writeback<br>
On node 0 totalpages: 126720<br>free_area_init_node: node 0, pgdat c089b790=
, node_mem_map c08ff000<br>=A0 Normal zone: 1024 pages used for memmap<br>=
=A0 Normal zone: 0 pages reserved<br>=A0 Normal zone: 125696 pages, LIFO ba=
tch:31<br>
OMAP3630 ES1.2 (l2cache iva sgx neon isp 192mhz_clk )<br>Clocking rate (Cry=
stal/Core/MPU): 26.0/332/600 MHz<br>pcpu-alloc: s0 r0 d32768 u32768 alloc=
=3D1*32768<br>pcpu-alloc: [0] 0 <br>Built 1 zonelists in Zone order, mobili=
ty grouping on.=A0 Total pages: 125696<br>
Kernel command line: console=3Dtty0 console=3DttyO2,115200n8 mpurate=3Dauto=
 vram=3D16M omapfb.mode=3Ddvi:hd720 omapfb.vram=3D0:8M,1:4M,2:4M omapfb.deb=
ug=3Dy omapdss.def_disp=3Ddvi root=3D/dev/mmcblk0p2 rw rootfstype=3Dext3 ro=
otwait<br>PID hash table entries: 2048 (order: 1, 8192 bytes)<br>
Dentry cache hash table entries: 65536 (order: 6, 262144 bytes)<br>Inode-ca=
che hash table entries: 32768 (order: 5, 131072 bytes)<br>allocated 1048576=
 bytes of page_cgroup<br>please try &#39;cgroup_disable=3Dmemory&#39; optio=
n if you don&#39;t want memory cgroups<br>
Memory: 495MB =3D 495MB total<br>Memory: 492108k/492108k available, 32180k =
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
br>Btrfs loaded<br>msgmni has been set to 961<br>Block layer SCSI generic (=
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
ower<br>OMAPFB: omapfb_init<br>OMAPFB: omapfb_probe<br>omapfb omapfb: no dr=
iver for display: dvi<br>
omapfb omapfb: cannot parse default modes<br>OMAPFB: create 2 framebuffers<=
br>OMAPFB: fb_infos allocated<br>OMAPFB: allocating 8388608 bytes for fb 0<=
br>hub 1-2:1.0: USB hub found<br>hub 1-2:1.0: 5 ports detected<br>OMAPFB: a=
llocated VRAM paddr 9f000000, vaddr e1000000<br>
OMAPFB: allocating 4194304 bytes for fb 1<br>OMAPFB: allocated VRAM paddr 9=
f800000, vaddr e2000000<br>OMAPFB: region0 phys 9f000000 virt e1000000 size=
=3D8388608<br>OMAPFB: region1 phys 9f800000 virt e2000000 size=3D4194304<br=
>
OMAPFB: fbmems allocated<br>OMAPFB: check_fb_var 0<br>OMAPFB: max frame siz=
e 8388608, line size 2880<br>OMAPFB: xres =3D 720, yres =3D 574, vxres =3D =
720, vyres =3D 574<br>OMAPFB: set_fb_fix<br>OMAPFB: check_fb_var 1<br>OMAPF=
B: max frame size 4194304, line size 2880<br>
OMAPFB: xres =3D 720, yres =3D 574, vxres =3D 720, vyres =3D 574<br>OMAPFB:=
 set_fb_fix<br>OMAPFB: fb_infos initialized<br>OMAPFB: set_par(0)<br>OMAPFB=
: set_fb_fix<br>OMAPFB: apply_changes, fb 0, ovl 0<br>OMAPFB: setup_overlay=
 0, posx 0, posy 0, outw 720, outh 574<br>
OMAPFB: paddr 9f000000<br>OMAPFB: pan_display(0)<br>OMAPFB: setcmap<br>OMAP=
FB: setcmap<br>Console: switching to colour frame buffer device 90x35<br>OM=
APFB: pan_display(0)<br>OMAPFB: setcmap<br>OMAPFB: setcmap<br>OMAPFB: frame=
buffers registered<br>
OMAPFB: apply_changes, fb 0, ovl 0<br>OMAPFB: setup_overlay 0, posx 0, posy=
 0, outw 720, outh 574<br>OMAPFB: paddr 9f000000<br>OMAPFB: apply_changes, =
fb 1, ovl 1<br>OMAPFB: setup_overlay 1, posx 0, posy 0, outw 720, outh 574<=
br>
OMAPFB: paddr 9f800000<br>OMAPFB: create_framebuffers done<br>OMAPFB: mgr-&=
gt;apply&#39;ed<br>OMAPFB: create sysfs for fbs<br>OMAPFB: create sysfs for=
 fbs<br>VDVI: incomplete constraints, leaving on<br>console [netcon0] enabl=
ed<br>
netconsole: network logging started<br>twl_rtc twl_rtc: setting system cloc=
k to 2012-07-19 14:13:53 UTC (1342707233)<br>ALSA device list:<br>=A0 #0: o=
map3beagle<br>Waiting for root device /dev/mmcblk0p2...<br>usb 1-2.1: new h=
igh-speed USB device number 3 using ehci-omap<br>
smsc95xx v1.0.4<br>smsc95xx 1-2.1:1.0: eth0: register &#39;smsc95xx&#39; at=
 usb-ehci-omap.0-2.1, smsc95xx USB 2.0 Ethernet, a6:88:0d:14:6a:6a<br>usb 1=
-2.3: new low-speed USB device number 4 using ehci-omap<br>input: CHESEN US=
B Keyboard as /devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/1-2.3=
:1.0/input/input0<br>
generic-usb 0003:0A81:0101.0001: input: USB HID v1.10 Keyboard [CHESEN USB =
Keyboard] on usb-ehci-omap.0-2.3/input0<br>input: CHESEN USB Keyboard as /d=
evices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/1-2.3:1.1/input/input=
1<br>
generic-usb 0003:0A81:0101.0002: input: USB HID v1.10 Device [CHESEN USB Ke=
yboard] on usb-ehci-omap.0-2.3/input1<br>mmc0: host does not support readin=
g read-only switch. assuming write-enable.<br>mmc0: new high speed SDHC car=
d at address b368<br>
mmcblk0: mmc0:b368 SDU16 14.9 GiB <br>=A0mmcblk0: p1 p2<br>usb 1-2.5: new l=
ow-speed USB device number 5 using ehci-omap<br>input: PixArt USB Optical M=
ouse as /devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.5/1-2.5:1.0/i=
nput/input2<br>
generic-usb 0003:093A:2510.0003: input: USB HID v1.11 Mouse [PixArt USB Opt=
ical Mouse] on usb-ehci-omap.0-2.5/input0<br>kjournald starting.=A0 Commit =
interval 5 seconds<br>EXT3-fs (mmcblk0p2): using internal journal<br>EXT3-f=
s (mmcblk0p2): recovery complete<br>
EXT3-fs (mmcblk0p2): mounted filesystem with ordered data mode<br>VFS: Moun=
ted root (ext3 filesystem) on device 179:2.<br>devtmpfs: mounted<br>Freeing=
 init memory: 364K<br>OMAPFB: pan_display(0)<br>OMAPFB: setcmap<br>OMAPFB: =
setcmap<br>
OMAPFB: user mmap region start 9f000000, len 8388608, off 9f000000<br>udev[=
65]: starting version 164<br>ADDRCONF(NETDEV_UP): eth0: link is not ready<b=
r>ADDRCONF(NETDEV_CHANGE): eth0: link becomes ready<br>smsc95xx 1-2.1:1.0: =
eth0: link up, 100Mbps, full-duplex, lpa 0x45E1<br>
ip_tables: (C) 2000-2006 Netfilter Core Team<br>nf_conntrack version 0.5.0 =
(7694 buckets, 30776 max)<br>OMAPFB: check_var(0)<br>OMAPFB: check_fb_var 0=
<br>OMAPFB: max frame size 8388608, line size 2880<br>OMAPFB: xres =3D 720,=
 yres =3D 574, vxres =3D 720, vyres =3D 574<br>
# /etc/inittab: init(8) configuration.<br># $Id: inittab,v 1.91 2002/01/25 =
13:35:21 miquels Exp $<br><br># The default runlevel.<br>id:5:initdefault:<=
br><br># Boot-time system configuration/initialization script.<br># This is=
 run first except when booting in emergency (-b) mode.<br>
si::sysinit:/etc/init.d/rcS<br><br># What to do in single-user mode.<br>~~:=
S:wait:/sbin/sulogin<br><br># /etc/init.d executes the S and K scripts upon=
 change<br># of runlevel.<br>#<br># Runlevel 0 is halt.<br># Runlevel 1 is =
single-user.<br>
# Runlevels 2-5 are multi-user.<br># Runlevel 6 is reboot.<br><br>l0:0:wait=
:/etc/init.d/rc 0<br>l1:1:wait:/etc/init.d/rc 1<br>root@beagleboard:~# star=
tx<br>xauth:=A0 file /home/root/.serverauth.630 does not exist<br><br><br>
X.Org X Server 1.11.2<br>Release Date: 2011-11-04<br>X Protocol Version 11,=
 Revision 0<br>Build Operating System: Linux 3.3.4-5.fc17.x86_64 x86_64 <br=
>Current Operating System: Linux beagleboard 3.4.1-yocto-standard #1 Thu Ju=
l 19 07:33:44 MDT 2012 armv7l<br>
Kernel command line: console=3Dtty0 console=3DttyO2,115200n8 mpurate=3Dauto=
 vram=3D16M omapfb.mode=3Ddvi:hd720 omapfb.vram=3D0:8M,1:4M,2:4M omapfb.deb=
ug=3Dy omapdss.def_disp=3Ddvi root=3D/dev/mmcblk0p2 rw rootfstype=3Dext3 ro=
otwait<br>Build Date: 15 July 2012=A0 12:32:41PM<br>
=A0<br>Current version of pixman: 0.26.2<br>=A0=A0=A0 Before reporting prob=
lems, check <a href=3D"http://wiki.x.org">http://wiki.x.org</a><br>=A0=A0=
=A0 to make sure that you have the latest version.<br>Markers: (--) probed,=
 (**) from config file, (=3D=3D) default setting,<br>
=A0=A0=A0 (++) from command line, (!!) notice, (II) informational,<br>=A0=
=A0=A0 (WW) warning, (EE) error, (NI) not implemented, (??) unknown.<br>(=
=3D=3D) Log file: &quot;/var/log/Xorg.1.log&quot;, Time: Thu Jul 19 14:16:2=
3 2012<br>(=3D=3D) Using config file: &quot;/etc/X11/xorg.conf&quot;<br>
(=3D=3D) Using system config directory &quot;/usr/share/X11/xorg.conf.d&quo=
t;<br>(EE) Failed to load module &quot;extmod&quot; (module does not exist,=
 0)<br>(EE) Failed to load module &quot;dbe&quot; (module does not exist, 0=
)<br>
(EE) Failed to load module &quot;glx&quot; (module does not exist, 0)<br>(E=
E) Failed to load module &quot;record&quot; (module does not exist, 0)<br>(=
EE) Failed to load module &quot;dri&quot; (module does not exist, 0)<br>
(EE) Failed to load module &quot;dri2&quot; (module does not exist, 0)<br>(=
EE) omapfb(0): Failed to open /dev/fb2: No such file or directory<br>(EE) o=
mapfb(0): XVScreenInit failed<br>/usr/lib/X11/xinit/xinitrc: line 56: exec:=
 xterm: not found<br>
/usr/lib/X11/xinit/xinitrc: line 52: twm: command not found<br>/usr/lib/X11=
/xinit/xinitrc: line 54: xterm: command not found<br>/usr/lib/X11/xinit/xin=
itrc: line 55: xterm: command not found<br>xinit: connection to X server lo=
st<br>
<br>waiting for X server to shut down Server terminated successfully (0). C=
losing log file.<br><br>root@beagleboard:~# <br><br>=A0<br>[vidal@ws009 ~]$=
 sudo su -<br>[root@ws009 ~]# ssh -Y 192.168.0.106<br>The authenticity of h=
ost &#39;192.168.0.106 (192.168.0.106)&#39; can&#39;t be established.<br>
RSA key fingerprint is af:90:2e:eb:d7:08:4b:27:b9:63:32:cd:ce:c8:08:bd.<br>=
Are you sure you want to continue connecting (yes/no)? yes<br>Warning: Perm=
anently added &#39;192.168.0.106&#39; (RSA) to the list of known hosts.<br>
<a href=3D"mailto:root@192.168.0.106">root@192.168.0.106</a>&#39;s password=
: <br>xauth:=A0 file /home/root/.Xauthority does not exist<br>root@beaglebo=
ard:~# dmesg<br>Booting Linux on physical CPU 0<br>Initializing cgroup subs=
ys cpuset<br>
Initializing cgroup subsys cpu<br>Linux version 3.4.1-yocto-standard (<a hr=
ef=3D"mailto:vidal@ws009.swbell.net">vidal@ws009.swbell.net</a>) (gcc versi=
on 4.7.2 20120615 (prerelease) (GCC) ) #1 Thu Jul 19 07:33:44 MDT 2012<br>
CPU: ARMv7 Processor [413fc082] revision 2 (ARMv7), cr=3D10c53c7d<br>CPU: P=
IPT / VIPT nonaliasing data cache, VIPT aliasing instruction cache<br>Machi=
ne: OMAP3 Beagle Board<br>Reserving 16777216 bytes SDRAM for VRAM<br>Memory=
 policy: ECC disabled, Data cache writeback<br>
On node 0 totalpages: 126720<br>free_area_init_node: node 0, pgdat c089b790=
, node_mem_map c08ff000<br>=A0 Normal zone: 1024 pages used for memmap<br>=
=A0 Normal zone: 0 pages reserved<br>=A0 Normal zone: 125696 pages, LIFO ba=
tch:31<br>
OMAP3630 ES1.2 (l2cache iva sgx neon isp 192mhz_clk )<br>Clocking rate (Cry=
stal/Core/MPU): 26.0/332/600 MHz<br>pcpu-alloc: s0 r0 d32768 u32768 alloc=
=3D1*32768<br>pcpu-alloc: [0] 0 <br>Built 1 zonelists in Zone order, mobili=
ty grouping on.=A0 Total pages: 125696<br>
Kernel command line: console=3Dtty0 console=3DttyO2,115200n8 mpurate=3Dauto=
 vram=3D16M omapfb.mode=3Ddvi:hd720 omapfb.vram=3D0:8M,1:4M,2:4M omapfb.deb=
ug=3Dy omapdss.def_disp=3Ddvi root=3D/dev/mmcblk0p2 rw rootfstype=3Dext3 ro=
otwait<br>PID hash table entries: 2048 (order: 1, 8192 bytes)<br>
Dentry cache hash table entries: 65536 (order: 6, 262144 bytes)<br>Inode-ca=
che hash table entries: 32768 (order: 5, 131072 bytes)<br>allocated 1048576=
 bytes of page_cgroup<br>please try &#39;cgroup_disable=3Dmemory&#39; optio=
n if you don&#39;t want memory cgroups<br>
Memory: 495MB =3D 495MB total<br>Memory: 492108k/492108k available, 32180k =
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
br>Btrfs loaded<br>msgmni has been set to 961<br>Block layer SCSI generic (=
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
ower<br>OMAPFB: omapfb_init<br>OMAPFB: omapfb_probe<br>omapfb omapfb: no dr=
iver for display: dvi<br>
omapfb omapfb: cannot parse default modes<br>OMAPFB: create 2 framebuffers<=
br>OMAPFB: fb_infos allocated<br>OMAPFB: allocating 8388608 bytes for fb 0<=
br>hub 1-2:1.0: USB hub found<br>hub 1-2:1.0: 5 ports detected<br>OMAPFB: a=
llocated VRAM paddr 9f000000, vaddr e1000000<br>
OMAPFB: allocating 4194304 bytes for fb 1<br>OMAPFB: allocated VRAM paddr 9=
f800000, vaddr e2000000<br>OMAPFB: region0 phys 9f000000 virt e1000000 size=
=3D8388608<br>OMAPFB: region1 phys 9f800000 virt e2000000 size=3D4194304<br=
>
OMAPFB: fbmems allocated<br>OMAPFB: check_fb_var 0<br>OMAPFB: max frame siz=
e 8388608, line size 2880<br>OMAPFB: xres =3D 720, yres =3D 574, vxres =3D =
720, vyres =3D 574<br>OMAPFB: set_fb_fix<br>OMAPFB: check_fb_var 1<br>OMAPF=
B: max frame size 4194304, line size 2880<br>
OMAPFB: xres =3D 720, yres =3D 574, vxres =3D 720, vyres =3D 574<br>OMAPFB:=
 set_fb_fix<br>OMAPFB: fb_infos initialized<br>OMAPFB: set_par(0)<br>OMAPFB=
: set_fb_fix<br>OMAPFB: apply_changes, fb 0, ovl 0<br>OMAPFB: setup_overlay=
 0, posx 0, posy 0, outw 720, outh 574<br>
OMAPFB: paddr 9f000000<br>OMAPFB: pan_display(0)<br>OMAPFB: setcmap<br>OMAP=
FB: setcmap<br>Console: switching to colour frame buffer device 90x35<br>OM=
APFB: pan_display(0)<br>OMAPFB: setcmap<br>OMAPFB: setcmap<br>OMAPFB: frame=
buffers registered<br>
OMAPFB: apply_changes, fb 0, ovl 0<br>OMAPFB: setup_overlay 0, posx 0, posy=
 0, outw 720, outh 574<br>OMAPFB: paddr 9f000000<br>OMAPFB: apply_changes, =
fb 1, ovl 1<br>OMAPFB: setup_overlay 1, posx 0, posy 0, outw 720, outh 574<=
br>
OMAPFB: paddr 9f800000<br>OMAPFB: create_framebuffers done<br>OMAPFB: mgr-&=
gt;apply&#39;ed<br>OMAPFB: create sysfs for fbs<br>OMAPFB: create sysfs for=
 fbs<br>VDVI: incomplete constraints, leaving on<br>console [netcon0] enabl=
ed<br>
netconsole: network logging started<br>twl_rtc twl_rtc: setting system cloc=
k to 2012-07-19 14:13:53 UTC (1342707233)<br>ALSA device list:<br>=A0 #0: o=
map3beagle<br>Waiting for root device /dev/mmcblk0p2...<br>usb 1-2.1: new h=
igh-speed USB device number 3 using ehci-omap<br>
smsc95xx v1.0.4<br>smsc95xx 1-2.1:1.0: eth0: register &#39;smsc95xx&#39; at=
 usb-ehci-omap.0-2.1, smsc95xx USB 2.0 Ethernet, a6:88:0d:14:6a:6a<br>usb 1=
-2.3: new low-speed USB device number 4 using ehci-omap<br>input: CHESEN US=
B Keyboard as /devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/1-2.3=
:1.0/input/input0<br>
generic-usb 0003:0A81:0101.0001: input: USB HID v1.10 Keyboard [CHESEN USB =
Keyboard] on usb-ehci-omap.0-2.3/input0<br>input: CHESEN USB Keyboard as /d=
evices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/1-2.3:1.1/input/input=
1<br>
generic-usb 0003:0A81:0101.0002: input: USB HID v1.10 Device [CHESEN USB Ke=
yboard] on usb-ehci-omap.0-2.3/input1<br>mmc0: host does not support readin=
g read-only switch. assuming write-enable.<br>mmc0: new high speed SDHC car=
d at address b368<br>
mmcblk0: mmc0:b368 SDU16 14.9 GiB <br>=A0mmcblk0: p1 p2<br>usb 1-2.5: new l=
ow-speed USB device number 5 using ehci-omap<br>input: PixArt USB Optical M=
ouse as /devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.5/1-2.5:1.0/i=
nput/input2<br>
generic-usb 0003:093A:2510.0003: input: USB HID v1.11 Mouse [PixArt USB Opt=
ical Mouse] on usb-ehci-omap.0-2.5/input0<br>kjournald starting.=A0 Commit =
interval 5 seconds<br>EXT3-fs (mmcblk0p2): using internal journal<br>EXT3-f=
s (mmcblk0p2): recovery complete<br>
EXT3-fs (mmcblk0p2): mounted filesystem with ordered data mode<br>VFS: Moun=
ted root (ext3 filesystem) on device 179:2.<br>devtmpfs: mounted<br>Freeing=
 init memory: 364K<br>OMAPFB: pan_display(0)<br>OMAPFB: setcmap<br>OMAPFB: =
setcmap<br>
OMAPFB: user mmap region start 9f000000, len 8388608, off 9f000000<br>udev[=
65]: starting version 164<br>ADDRCONF(NETDEV_UP): eth0: link is not ready<b=
r>ADDRCONF(NETDEV_CHANGE): eth0: link becomes ready<br>smsc95xx 1-2.1:1.0: =
eth0: link up, 100Mbps, full-duplex, lpa 0x45E1<br>
ip_tables: (C) 2000-2006 Netfilter Core Team<br>nf_conntrack version 0.5.0 =
(7694 buckets, 30776 max)<br>OMAPFB: check_var(0)<br>OMAPFB: check_fb_var 0=
<br>OMAPFB: max frame size 8388608, line size 2880<br>OMAPFB: xres =3D 720,=
 yres =3D 574, vxres =3D 720, vyres =3D 574<br>
# /etc/inittab: init(8) configuration.<br># $Id: inittab,v 1.91 2002/01/25 =
13:35:21 miquels Exp $<br><br># The default runlevel.<br>id:5:initdefault:<=
br><br># Boot-time system configuration/initialization script.<br># This is=
 run first except when booting in emergency (-b) mode.<br>
si::sysinit:/etc/init.d/rcS<br><br># What to do in single-user mode.<br>~~:=
S:wait:/sbin/sulogin<br><br># /etc/init.d executes the S and K scripts upon=
 change<br># of runlevel.<br>#<br># Runlevel 0 is halt.<br># Runlevel 1 is =
single-user.<br>
# Runlevels 2-5 are multi-user.<br># Runlevel 6 is reboot.<br><br>l0:0:wait=
:/etc/init.d/rc 0<br>l1:1:wait:/etc/init.d/rc 1<br>root@beagleboard:~# star=
tx<br>xauth:=A0 file /home/root/.serverauth.630 does not exist<br><br><br>
X.Org X Server 1.11.2<br>Release Date: 2011-11-04<br>X Protocol Version 11,=
 Revision 0<br>Build Operating System: Linux 3.3.4-5.fc17.x86_64 x86_64 <br=
>Current Operating System: Linux beagleboard 3.4.1-yocto-standard #1 Thu Ju=
l 19 07:33:44 MDT 2012 armv7l<br>
Kernel command line: console=3Dtty0 console=3DttyO2,115200n8 mpurate=3Dauto=
 vram=3D16M omapfb.mode=3Ddvi:hd720 omapfb.vram=3D0:8M,1:4M,2:4M omapfb.deb=
ug=3Dy omapdss.def_disp=3Ddvi root=3D/dev/mmcblk0p2 rw rootfstype=3Dext3 ro=
otwait<br>Build Date: 15 July 2012=A0 12:32:41PM<br>
=A0<br>Current version of pixman: 0.26.2<br>=A0=A0=A0 Before reporting prob=
lems, check <a href=3D"http://wiki.x.org">http://wiki.x.org</a><br>=A0=A0=
=A0 to make sure that you have the latest version.<br>Markers: (--) probed,=
 (**) from config file, (=3D=3D) default setting,<br>
=A0=A0=A0 (++) from command line, (!!) notice, (II) informational,<br>=A0=
=A0=A0 (WW) warning, (EE) error, (NI) not implemented, (??) unknown.<br>(=
=3D=3D) Log file: &quot;/var/log/Xorg.1.log&quot;, Time: Thu Jul 19 14:16:2=
3 2012<br>(=3D=3D) Using config file: &quot;/etc/X11/xorg.conf&quot;<br>
(=3D=3D) Using system config directory &quot;/usr/share/X11/xorg.conf.d&quo=
t;<br>(EE) Failed to load module &quot;extmod&quot; (module does not exist,=
 0)<br>(EE) Failed to load module &quot;dbe&quot; (module does not exist, 0=
)<br>
(EE) Failed to load module &quot;glx&quot; (module does not exist, 0)<br>(E=
E) Failed to load module &quot;record&quot; (module does not exist, 0)<br>(=
EE) Failed to load module &quot;dri&quot; (module does not exist, 0)<br>
(EE) Failed to load module &quot;dri2&quot; (module does not exist, 0)<br>(=
EE) omapfb(0): Failed to open /dev/fb2: No such file or directory<br>(EE) o=
mapfb(0): XVScreenInit failed<br>/usr/lib/X11/xinit/xinitrc: line 56: exec:=
 xterm: not found<br>
/usr/lib/X11/xinit/xinitrc: line 52: twm: command not found<br>/usr/lib/X11=
/xinit/xinitrc: line 54: xterm: command not found<br>/usr/lib/X11/xinit/xin=
itrc: line 55: xterm: command not found<br>xinit: connection to X server lo=
st<br>
<br>waiting for X server to shut down Server terminated successfully (0). C=
losing log file.<br><br>root@beagleboard:~# <br><br>Thanks All help is appe=
rciated <br><br><br>

--14dae9340eb500febb04c5300e9c--
