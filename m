Return-Path: <vidal.develone@gmail.com>
Received: from mail-gg0-f176.google.com (mail-gg0-f176.google.com
	[209.85.161.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1BD96E0070B
	for <yocto@yoctoproject.org>; Wed, 18 Jul 2012 17:22:49 -0700 (PDT)
Received: by ggnk4 with SMTP id k4so2654214ggn.35
	for <yocto@yoctoproject.org>; Wed, 18 Jul 2012 17:22:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=c/gGnWKDkEiwvxYVCOmODmnWo7J8i5WxNhkKwcO4OhY=;
	b=dNIR+EkOJu3wqjG352TNOu+kiGryW0LffZXWasU8XJJ4jS2PLB4b8fRjNJE8gtBmSD
	LGEmHTuicAsapk6LJv0zlIRr9Q6a0/rRCipIfe3zkQFS4B9rybRMAjL4ZNqM/Kz9jksx
	dU3JCOaNGOm6NDjI1oqBm9wysZ43+5B+aLpftZB2YjLQgKZbUCMPXTukSYaSRztIuTwH
	eb0em/wMhFu4/jqsXScaY0du7h3CuxZ79Hma2/9K7OXm4RbchzvcCQg3T/e8Va313DSM
	ghi8buZOHwJxoK9XB97yL28UiJ10PzJjB7dcq8c+Vf+OD6MIQw2HTBh85FKECyoArha0
	KcxQ==
MIME-Version: 1.0
Received: by 10.50.193.196 with SMTP id hq4mr3648080igc.57.1342657368034; Wed,
	18 Jul 2012 17:22:48 -0700 (PDT)
Received: by 10.64.39.39 with HTTP; Wed, 18 Jul 2012 17:22:47 -0700 (PDT)
Date: Wed, 18 Jul 2012 18:22:47 -0600
Message-ID: <CANwz6nwGoQuwUduP1mcM6jN_CBiQu03qt0ZUTEFCFnCaixj0ZA@mail.gmail.com>
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
X-List-Received-Date: Thu, 19 Jul 2012 00:22:49 -0000
Content-Type: multipart/alternative; boundary=14dae9340e017a0c1204c523c7bf

--14dae9340e017a0c1204c523c7bf
Content-Type: text/plain; charset=ISO-8859-1

Hello,
Not getting any X display.

As root I was able to ssh -Y 19.168.0.104
root@beagleboard:uname -a
Linux beagleboard 3.2.18-yocto-standard #1 Wed Jul 18 15:18:53 MDT 2012
armv7l GNU/Linux
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
l2:2:wait:/etc/init.d/rc 2
l3:3:wait:/etc/init.d/rc 3
l4:4:wait:/etc/init.d/rc 4
l5:5:wait:/etc/init.d/rc 5
l6:6:wait:/etc/init.d/rc 6
# Normally not reached, but fallthrough in case of emergency.
z6:6:respawn:/sbin/sulogin
S:2345:respawn:/sbin/getty 115200 ttyO2
# /sbin/getty invocations for the runlevels.
#
# The "id" field MUST be the same as the last
# characters of the device (after "tty").
#
# Format:
#  <id>:<runlevels>:<action>:<process>
#

1:2345:respawn:/sbin/getty 38400 tty1

root@beagleboard:/etc# startx
xauth:  file /home/root/.serverauth.667 does not exist


X.Org X Server 1.11.2
Release Date: 2011-11-04
X Protocol Version 11, Revision 0
Build Operating System: Linux 3.3.4-5.fc17.x86_64 x86_64
Current Operating System: Linux beagleboard 3.2.18-yocto-standard #1 Wed
Jul 18 15:18:53 MDT 2012 armv7l
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
(==) Log file: "/var/log/Xorg.1.log", Time: Wed Jul 18 23:09:59 2012
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
/usr/lib/X11/xinit/xinitrc: line 53: xclock: command not found
/usr/lib/X11/xinit/xinitrc: line 52: twm: command not found
/usr/lib/X11/xinit/xinitrc: line 54: xterm: command not found
/usr/lib/X11/xinit/xinitrc: line 55: xterm: command not found
xinit: connection to X server lost

waiting for X server to shut down Server terminated successfully (0).
Closing log file.



root@beagleboard:/etc# dmesg
Initializing cgroup subsys cpuset
Initializing cgroup subsys cpu
Linux version 3.2.18-yocto-standard (vidal@ws009.swbell.net) (gcc version
4.7.2 20120615 (prerelease) (GCC) ) #1 Wed Jul 18 15:18:53 MDT 2012
CPU: ARMv7 Processor [413fc082] revision 2 (ARMv7), cr=10c53c7d
CPU: PIPT / VIPT nonaliasing data cache, VIPT aliasing instruction cache
Machine: OMAP3 Beagle Board
Reserving 16777216 bytes SDRAM for VRAM
Memory policy: ECC disabled, Data cache writeback
On node 0 totalpages: 126976
free_area_init_node: node 0, pgdat c070d074, node_mem_map c0753000
  Normal zone: 1024 pages used for memmap
  Normal zone: 0 pages reserved
  Normal zone: 125952 pages, LIFO batch:31
OMAP3630 ES1.2 (l2cache iva sgx neon isp 192mhz_clk )
Clocking rate (Crystal/Core/MPU): 26.0/332/600 MHz
pcpu-alloc: s0 r0 d32768 u32768 alloc=1*32768
pcpu-alloc: [0] 0
Built 1 zonelists in Zone order, mobility grouping on.  Total pages: 125952
Kernel command line: console=tty0 console=ttyO2,115200n8 mpurate=auto
vram=16M omapfb.mode=dvi:hd720 omapfb.vram=0:8M,1:4M,2:4M omapfb.debug=y
omapdss.def_disp=dvi root=/dev/mmcblk0p2 rw rootfstype=ext3 rootwait
PID hash table entries: 2048 (order: 1, 8192 bytes)
Dentry cache hash table entries: 65536 (order: 6, 262144 bytes)
Inode-cache hash table entries: 32768 (order: 5, 131072 bytes)
allocated 2097152 bytes of page_cgroup
please try 'cgroup_disable=memory' option if you don't want memory cgroups
Memory: 496MB = 496MB total
Memory: 493824k/493824k available, 30464k reserved, 0K highmem
Virtual kernel memory layout:
    vector  : 0xffff0000 - 0xffff1000   (   4 kB)
    fixmap  : 0xfff00000 - 0xfffe0000   ( 896 kB)
    vmalloc : 0xe0800000 - 0xf8000000   ( 376 MB)
    lowmem  : 0xc0000000 - 0xe0000000   ( 512 MB)
    modules : 0xbf000000 - 0xc0000000   (  16 MB)
      .text : 0xc0008000 - 0xc0652c84   (6444 kB)
      .init : 0xc0653000 - 0xc06a9000   ( 344 kB)
      .data : 0xc06aa000 - 0xc070e8e8   ( 403 kB)
       .bss : 0xc070e90c - 0xc07528ec   ( 272 kB)
SLUB: Genslabs=13, HWalign=32, Order=0-3, MinObjects=0, CPUs=1, Nodes=1
NR_IRQS:410
IRQ: Found an INTC at 0xfa200000 (revision 4.0) with 96 interrupts
Total of 96 interrupts on 1 active controller
OMAP clockevent source: GPTIMER12 at 32768 Hz
sched_clock: 32 bits at 32kHz, resolution 30517ns, wraps every 131071999ms
Console: colour dummy device 80x30
console [tty0] enabled
Calibrating delay loop... 506.27 BogoMIPS (lpj=1978368)
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
ftrace: allocating 18414 entries in 55 pages
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
musb-hdrc: ConfigData=0xde (UTMI-8, dyn FIFOs, bulk combine, bulk split,
HB-ISO Rx, HB-ISO Tx, SoftConn)
musb-hdrc: MHDRC RTL version 1.800
musb-hdrc: setup fifo_mode 4
musb-hdrc: 28/31 max ep, 16384/16384 memory
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
regulator_init_complete: VDVI: incomplete constraints, leaving on
console [netcon0] enabled
netconsole: network logging started
twl_rtc twl_rtc: setting system clock to 2012-07-18 23:04:56 UTC
(1342652696)
Waiting for root device /dev/mmcblk0p2...
mmc0: host does not support reading read-only switch. assuming write-enable.
mmc0: new high speed SDHC card at address 1234
mmcblk0: mmc0:1234 SA08G 7.41 GiB
 mmcblk0: p1 p2
usb 1-2.1: new high-speed USB device number 3 using ehci-omap
smsc95xx v1.0.4
smsc95xx 1-2.1:1.0: eth0: register 'smsc95xx' at usb-ehci-omap.0-2.1,
smsc95xx USB 2.0 Ethernet, 1e:65:31:f6:ef:8e
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
OMAPFB: pan_display(0)
OMAPFB: setcmap
OMAPFB: setcmap
OMAPFB: user mmap region start 9f000000, len 8388608, off 9f000000
udev[61]: starting version 164
NET: Registered protocol family 10
ADDRCONF(NETDEV_UP): eth0: link is not ready
ADDRCONF(NETDEV_CHANGE): eth0: link becomes ready
smsc95xx 1-2.1:1.0: eth0: link up, 100Mbps, full-duplex, lpa 0x45E1
ip_tables: (C) 2000-2006 Netfilter Core Team
nf_conntrack version 0.5.0 (7721 buckets, 30884 max)
OMAPFB: check_var(0)
OMAPFB: check_fb_var 0
OMAPFB: max frame size 8388608, line size 2880
OMAPFB: xres = 720, yres = 574, vxres = 720, vyres = 574
OMAPFB: set_par(0)
OMAPFB: set_fb_fix
OMAPFB: apply_changes, fb 0, ovl 0
OMAPFB: setup_overlay 0, posx 0, posy 0, outw 720, outh 574
OMAPFB: paddr 9f000000
OMAPFB: pan_display(0)
OMAPFB: setcmap
OMAPFB: pan_display(0)
OMAPFB: setcmap
OMAPFB: setcmap
OMAPFB: setcmap
OMAPFB: ioctl GET_CAPS
OMAPFB: ioctl QUERY_MEM
OMAPFB: user mmap region start 9f000000, len 8388608, off 9f000000
OMAPFB: ioctl QUERY_PLANE
OMAPFB: ioctl SETUP_PLANE
OMAPFB: omapfb_setup_plane
OMAPFB: setup_overlay 0, posx 0, posy 0, outw 720, outh 574
OMAPFB: paddr 9f000000
OMAPFB: pan_display(0)
OMAPFB: setcmap
OMAPFB: setcmap
OMAPFB: check_var(0)
OMAPFB: check_fb_var 0
OMAPFB: max frame size 8388608, line size 2880
OMAPFB: xres = 720, yres = 574, vxres = 720, vyres = 574
OMAPFB: set_par(0)
OMAPFB: set_fb_fix
OMAPFB: apply_changes, fb 0, ovl 0
OMAPFB: setup_overlay 0, posx 0, posy 0, outw 720, outh 574
OMAPFB: paddr 9f000000
OMAPFB: pan_display(0)
OMAPFB: setcmap
OMAPFB: pan_display(0)
OMAPFB: setcmap
OMAPFB: setcmap
OMAPFB: setcmap
OMAPFB: ioctl GET_CAPS
OMAPFB: ioctl QUERY_MEM
OMAPFB: user mmap region start 9f000000, len 8388608, off 9f000000
OMAPFB: ioctl QUERY_PLANE
OMAPFB: ioctl SETUP_PLANE
OMAPFB: omapfb_setup_plane
OMAPFB: setup_overlay 0, posx 0, posy 0, outw 720, outh 574
OMAPFB: paddr 9f000000
OMAPFB: check_var(0)
OMAPFB: check_fb_var 0
OMAPFB: max frame size 8388608, line size 2880
OMAPFB: xres = 720, yres = 574, vxres = 720, vyres = 574
OMAPFB: set_par(0)
OMAPFB: set_fb_fix
OMAPFB: apply_changes, fb 0, ovl 0
OMAPFB: setup_overlay 0, posx 0, posy 0, outw 720, outh 574
OMAPFB: paddr 9f000000
OMAPFB: pan_display(0)
OMAPFB: setcmap
OMAPFB: pan_display(0)
OMAPFB: setcmap
OMAPFB: setcmap
OMAPFB: setcmap
OMAPFB: check_var(0)
OMAPFB: check_fb_var 0
OMAPFB: max frame size 8388608, line size 2880
OMAPFB: xres = 720, yres = 574, vxres = 720, vyres = 574
OMAPFB: set_par(0)
OMAPFB: set_fb_fix
OMAPFB: apply_changes, fb 0, ovl 0
OMAPFB: setup_overlay 0, posx 0, posy 0, outw 720, outh 574
OMAPFB: paddr 9f000000
OMAPFB: pan_display(0)
OMAPFB: setcmap
OMAPFB: pan_display(0)
OMAPFB: setcmap
OMAPFB: setcmap
OMAPFB: setcmap
OMAPFB: ioctl GET_CAPS
OMAPFB: ioctl QUERY_MEM
OMAPFB: user mmap region start 9f000000, len 8388608, off 9f000000
OMAPFB: ioctl QUERY_PLANE
OMAPFB: ioctl SETUP_PLANE
OMAPFB: omapfb_setup_plane
OMAPFB: setup_overlay 0, posx 0, posy 0, outw 720, outh 574
OMAPFB: paddr 9f000000
OMAPFB: check_var(0)
OMAPFB: check_fb_var 0
OMAPFB: max frame size 8388608, line size 2880
OMAPFB: xres = 720, yres = 574, vxres = 720, vyres = 574
OMAPFB: set_par(0)
OMAPFB: set_fb_fix
OMAPFB: apply_changes, fb 0, ovl 0
OMAPFB: setup_overlay 0, posx 0, posy 0, outw 720, outh 574
OMAPFB: paddr 9f000000
OMAPFB: pan_display(0)
OMAPFB: setcmap
OMAPFB: pan_display(0)
OMAPFB: setcmap
OMAPFB: setcmap
OMAPFB: setcmap
Thanks /any help will be welcomed I am getting closer.

--14dae9340e017a0c1204c523c7bf
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hello,<br>Not getting any X display.<br><br>As root I was able to ssh -Y 19=
.168.0.104<br>root@beagleboard:uname -a<br>Linux beagleboard 3.2.18-yocto-s=
tandard #1 Wed Jul 18 15:18:53 MDT 2012 armv7l GNU/Linux<br># /etc/inittab:=
 init(8) configuration.<br>
# $Id: inittab,v 1.91 2002/01/25 13:35:21 miquels Exp $<br><br># The defaul=
t runlevel.<br>id:5:initdefault:<br><br># Boot-time system configuration/in=
itialization script.<br># This is run first except when booting in emergenc=
y (-b) mode.<br>
si::sysinit:/etc/init.d/rcS<br><br># What to do in single-user mode.<br>~~:=
S:wait:/sbin/sulogin<br><br># /etc/init.d executes the S and K scripts upon=
 change<br># of runlevel.<br>#<br># Runlevel 0 is halt.<br># Runlevel 1 is =
single-user.<br>
# Runlevels 2-5 are multi-user.<br># Runlevel 6 is reboot.<br><br>l0:0:wait=
:/etc/init.d/rc 0<br>l1:1:wait:/etc/init.d/rc 1<br>l2:2:wait:/etc/init.d/rc=
 2<br>l3:3:wait:/etc/init.d/rc 3<br>l4:4:wait:/etc/init.d/rc 4<br>l5:5:wait=
:/etc/init.d/rc 5<br>
l6:6:wait:/etc/init.d/rc 6<br># Normally not reached, but fallthrough in ca=
se of emergency.<br>z6:6:respawn:/sbin/sulogin<br>S:2345:respawn:/sbin/gett=
y 115200 ttyO2<br># /sbin/getty invocations for the runlevels.<br>#<br>
# The &quot;id&quot; field MUST be the same as the last<br># characters of =
the device (after &quot;tty&quot;).<br>#<br># Format:<br>#=A0 &lt;id&gt;:&l=
t;runlevels&gt;:&lt;action&gt;:&lt;process&gt;<br>#<br><br>1:2345:respawn:/=
sbin/getty 38400 tty1<br>
<br>root@beagleboard:/etc# startx<br>xauth:=A0 file /home/root/.serverauth.=
667 does not exist<br><br><br>X.Org X Server 1.11.2<br>Release Date: 2011-1=
1-04<br>X Protocol Version 11, Revision 0<br>Build Operating System: Linux =
3.3.4-5.fc17.x86_64 x86_64 <br>
Current Operating System: Linux beagleboard 3.2.18-yocto-standard #1 Wed Ju=
l 18 15:18:53 MDT 2012 armv7l<br>Kernel command line: console=3Dtty0 consol=
e=3DttyO2,115200n8 mpurate=3Dauto vram=3D16M omapfb.mode=3Ddvi:hd720 omapfb=
.vram=3D0:8M,1:4M,2:4M omapfb.debug=3Dy omapdss.def_disp=3Ddvi root=3D/dev/=
mmcblk0p2 rw rootfstype=3Dext3 rootwait<br>
Build Date: 15 July 2012=A0 12:32:41PM<br>=A0<br>Current version of pixman:=
 0.26.2<br>=A0=A0=A0 Before reporting problems, check <a href=3D"http://wik=
i.x.org">http://wiki.x.org</a><br>=A0=A0=A0 to make sure that you have the =
latest version.<br>
Markers: (--) probed, (**) from config file, (=3D=3D) default setting,<br>=
=A0=A0=A0 (++) from command line, (!!) notice, (II) informational,<br>=A0=
=A0=A0 (WW) warning, (EE) error, (NI) not implemented, (??) unknown.<br>(=
=3D=3D) Log file: &quot;/var/log/Xorg.1.log&quot;, Time: Wed Jul 18 23:09:5=
9 2012<br>
(=3D=3D) Using config file: &quot;/etc/X11/xorg.conf&quot;<br>(=3D=3D) Usin=
g system config directory &quot;/usr/share/X11/xorg.conf.d&quot;<br>(EE) Fa=
iled to load module &quot;extmod&quot; (module does not exist, 0)<br>(EE) F=
ailed to load module &quot;dbe&quot; (module does not exist, 0)<br>
(EE) Failed to load module &quot;glx&quot; (module does not exist, 0)<br>(E=
E) Failed to load module &quot;record&quot; (module does not exist, 0)<br>(=
EE) Failed to load module &quot;dri&quot; (module does not exist, 0)<br>
(EE) Failed to load module &quot;dri2&quot; (module does not exist, 0)<br>(=
EE) omapfb(0): Failed to open /dev/fb2: No such file or directory<br>(EE) o=
mapfb(0): XVScreenInit failed<br>/usr/lib/X11/xinit/xinitrc: line 56: exec:=
 xterm: not found<br>
/usr/lib/X11/xinit/xinitrc: line 53: xclock: command not found<br>/usr/lib/=
X11/xinit/xinitrc: line 52: twm: command not found<br>/usr/lib/X11/xinit/xi=
nitrc: line 54: xterm: command not found<br>/usr/lib/X11/xinit/xinitrc: lin=
e 55: xterm: command not found<br>
xinit: connection to X server lost<br><br>waiting for X server to shut down=
 Server terminated successfully (0). Closing log file.<br><br><br><br>root@=
beagleboard:/etc# dmesg<br>Initializing cgroup subsys cpuset<br>Initializin=
g cgroup subsys cpu<br>
Linux version 3.2.18-yocto-standard (<a href=3D"mailto:vidal@ws009.swbell.n=
et">vidal@ws009.swbell.net</a>) (gcc version 4.7.2 20120615 (prerelease) (G=
CC) ) #1 Wed Jul 18 15:18:53 MDT 2012<br>CPU: ARMv7 Processor [413fc082] re=
vision 2 (ARMv7), cr=3D10c53c7d<br>
CPU: PIPT / VIPT nonaliasing data cache, VIPT aliasing instruction cache<br=
>Machine: OMAP3 Beagle Board<br>Reserving 16777216 bytes SDRAM for VRAM<br>=
Memory policy: ECC disabled, Data cache writeback<br>On node 0 totalpages: =
126976<br>
free_area_init_node: node 0, pgdat c070d074, node_mem_map c0753000<br>=A0 N=
ormal zone: 1024 pages used for memmap<br>=A0 Normal zone: 0 pages reserved=
<br>=A0 Normal zone: 125952 pages, LIFO batch:31<br>OMAP3630 ES1.2 (l2cache=
 iva sgx neon isp 192mhz_clk )<br>
Clocking rate (Crystal/Core/MPU): 26.0/332/600 MHz<br>pcpu-alloc: s0 r0 d32=
768 u32768 alloc=3D1*32768<br>pcpu-alloc: [0] 0 <br>Built 1 zonelists in Zo=
ne order, mobility grouping on.=A0 Total pages: 125952<br>Kernel command li=
ne: console=3Dtty0 console=3DttyO2,115200n8 mpurate=3Dauto vram=3D16M omapf=
b.mode=3Ddvi:hd720 omapfb.vram=3D0:8M,1:4M,2:4M omapfb.debug=3Dy omapdss.de=
f_disp=3Ddvi root=3D/dev/mmcblk0p2 rw rootfstype=3Dext3 rootwait<br>
PID hash table entries: 2048 (order: 1, 8192 bytes)<br>Dentry cache hash ta=
ble entries: 65536 (order: 6, 262144 bytes)<br>Inode-cache hash table entri=
es: 32768 (order: 5, 131072 bytes)<br>allocated 2097152 bytes of page_cgrou=
p<br>
please try &#39;cgroup_disable=3Dmemory&#39; option if you don&#39;t want m=
emory cgroups<br>Memory: 496MB =3D 496MB total<br>Memory: 493824k/493824k a=
vailable, 30464k reserved, 0K highmem<br>Virtual kernel memory layout:<br>=
=A0=A0=A0 vector=A0 : 0xffff0000 - 0xffff1000=A0=A0 (=A0=A0 4 kB)<br>
=A0=A0=A0 fixmap=A0 : 0xfff00000 - 0xfffe0000=A0=A0 ( 896 kB)<br>=A0=A0=A0 =
vmalloc : 0xe0800000 - 0xf8000000=A0=A0 ( 376 MB)<br>=A0=A0=A0 lowmem=A0 : =
0xc0000000 - 0xe0000000=A0=A0 ( 512 MB)<br>=A0=A0=A0 modules : 0xbf000000 -=
 0xc0000000=A0=A0 (=A0 16 MB)<br>=A0=A0=A0=A0=A0 .text : 0xc0008000 - 0xc06=
52c84=A0=A0 (6444 kB)<br>
=A0=A0=A0=A0=A0 .init : 0xc0653000 - 0xc06a9000=A0=A0 ( 344 kB)<br>=A0=A0=
=A0=A0=A0 .data : 0xc06aa000 - 0xc070e8e8=A0=A0 ( 403 kB)<br>=A0=A0=A0=A0=
=A0=A0 .bss : 0xc070e90c - 0xc07528ec=A0=A0 ( 272 kB)<br>SLUB: Genslabs=3D1=
3, HWalign=3D32, Order=3D0-3, MinObjects=3D0, CPUs=3D1, Nodes=3D1<br>
NR_IRQS:410<br>IRQ: Found an INTC at 0xfa200000 (revision 4.0) with 96 inte=
rrupts<br>Total of 96 interrupts on 1 active controller<br>OMAP clockevent =
source: GPTIMER12 at 32768 Hz<br>sched_clock: 32 bits at 32kHz, resolution =
30517ns, wraps every 131071999ms<br>
Console: colour dummy device 80x30<br>console [tty0] enabled<br>Calibrating=
 delay loop... 506.27 BogoMIPS (lpj=3D1978368)<br>pid_max: default: 32768 m=
inimum: 301<br>Security Framework initialized<br>Mount-cache hash table ent=
ries: 512<br>
Initializing cgroup subsys debug<br>Initializing cgroup subsys cpuacct<br>I=
nitializing cgroup subsys memory<br>Initializing cgroup subsys devices<br>I=
nitializing cgroup subsys freezer<br>Initializing cgroup subsys blkio<br>
CPU: Testing write buffer coherency: ok<br>ftrace: allocating 18414 entries=
 in 55 pages<br>devtmpfs: initialized<br>print_constraints: dummy: <br>NET:=
 Registered protocol family 16<br>GPMC revision 5.0<br>OMAP GPIO hardware v=
ersion 2.5<br>
omap_mux_init: Add partition: #1: core, flags: 0<br>OMAP3 Beagle Rev: xM C<=
br>Reprogramming SDRC clock to 332000000 Hz<br>Found NAND on CS0<br>Registe=
ring NAND on CS0<br>Unable to get DVI reset GPIO<br>=A0omap-mcbsp.2: alias =
fck already exists<br>
=A0omap-mcbsp.3: alias fck already exists<br>OMAP DMA hardware revision 5.0=
<br>bio: create slab &lt;bio-0&gt; at 0<br>SCSI subsystem initialized<br>us=
bcore: registered new interface driver usbfs<br>usbcore: registered new int=
erface driver hub<br>
usbcore: registered new device driver usb<br>omap_i2c omap_i2c.1: bus 1 rev=
1.4.0 at 2600 kHz<br>twl4030: PIH (irq 7) chaining IRQs 368..375<br>twl4030=
: power (irq 373) chaining IRQs 376..383<br>twl4030: gpio (irq 368) chainin=
g IRQs 384..401<br>
_omap_mux_init_gpio: Could not set gpio192<br>print_constraints: VUSB1V5: 1=
500 mV normal standby<br>print_constraints: VUSB1V8: 1800 mV normal standby=
<br>print_constraints: VUSB3V1: 3100 mV normal standby<br>twl4030_usb twl40=
30_usb: Initialized TWL4030 USB module<br>
print_constraints: VMMC1: 1850 &lt;--&gt; 3150 mV at 3000 mV normal standby=
<br>print_constraints: VDAC: 1800 mV normal standby<br>print_constraints: V=
DVI: 1800 mV normal standby<br>print_constraints: VSIM: 1800 &lt;--&gt; 300=
0 mV at 1800 mV normal standby<br>
omap_i2c omap_i2c.3: bus 3 rev1.4.0 at 100 kHz<br>Advanced Linux Sound Arch=
itecture Driver Version 1.0.24.<br>cfg80211: Calling CRDA to update world r=
egulatory domain<br>Switching to clocksource 32k_counter<br>musb-hdrc: vers=
ion 6.0, ?dma?, otg (peripheral+host)<br>
musb-hdrc: ConfigData=3D0xde (UTMI-8, dyn FIFOs, bulk combine, bulk split, =
HB-ISO Rx, HB-ISO Tx, SoftConn)<br>musb-hdrc: MHDRC RTL version 1.800 <br>m=
usb-hdrc: setup fifo_mode 4<br>musb-hdrc: 28/31 max ep, 16384/16384 memory<=
br>
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
 0, 4096 bytes)<br>Registering unionfs 2.5.10 (for 3.1.0-rc4)<br>msgmni has=
 been set to 964<br>Block layer SCSI generic (bsg) driver version 0.4 loade=
d (major 253)<br>
io scheduler noop registered<br>io scheduler deadline registered<br>io sche=
duler cfq registered (default)<br>OMAP DSS rev 2.0<br>Serial: 8250/16550 dr=
iver, 4 ports, IRQ sharing enabled<br>omap_uart.0: ttyO0 at MMIO 0x4806a000=
 (irq =3D 72) is a OMAP UART0<br>
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
mousedev: PS/2 mouse device common for all mice<br>twl_rtc twl_rtc: rtc cor=
e: registered twl_rtc as rtc0<br>OMAP Watchdog Timer Rev 0x31: initial time=
out 60 sec<br>cpuidle: using governor ladder<br>cpuidle: using governor men=
u<br>
usbcore: registered new interface driver usbhid<br>usbhid: USB HID core dri=
ver<br>OMAP3 Beagle/Devkit8000 SoC init<br>usb 1-2: new high-speed USB devi=
ce number 2 using ehci-omap<br>asoc: twl4030-hifi &lt;-&gt; omap-mcbsp-dai.=
1 mapping ok<br>
ALSA device list:<br>=A0 #0: omap3beagle<br>TCP cubic registered<br>NET: Re=
gistered protocol family 17<br>Registering the dns_resolver key type<br>VFP=
 support v0.3: implementor 41 architecture 3 part 30 variant c rev 3<br>Thu=
mbEE CPU extension supported.<br>
sr_init: No PMIC hook to init smartreflex<br>smartreflex smartreflex.0: oma=
p_sr_probe: SmartReflex driver initialized<br>smartreflex smartreflex.1: om=
ap_sr_probe: SmartReflex driver initialized<br>SmartReflex Class3 initializ=
ed<br>
clock: disabling unused clocks to save power<br>registered taskstats versio=
n 1<br>OMAPFB: omapfb_init<br>OMAPFB: omapfb_probe<br>omapfb omapfb: no dri=
ver for display: dvi<br>omapfb omapfb: cannot parse default modes<br>OMAPFB=
: create 2 framebuffers<br>
OMAPFB: fb_infos allocated<br>OMAPFB: allocating 8388608 bytes for fb 0<br>=
hub 1-2:1.0: USB hub found<br>hub 1-2:1.0: 5 ports detected<br>OMAPFB: allo=
cated VRAM paddr 9f000000, vaddr e1000000<br>OMAPFB: allocating 4194304 byt=
es for fb 1<br>
OMAPFB: allocated VRAM paddr 9f800000, vaddr e2000000<br>OMAPFB: region0 ph=
ys 9f000000 virt e1000000 size=3D8388608<br>OMAPFB: region1 phys 9f800000 v=
irt e2000000 size=3D4194304<br>OMAPFB: fbmems allocated<br>OMAPFB: check_fb=
_var 0<br>
OMAPFB: max frame size 8388608, line size 2880<br>OMAPFB: xres =3D 720, yre=
s =3D 574, vxres =3D 720, vyres =3D 574<br>OMAPFB: set_fb_fix<br>OMAPFB: ch=
eck_fb_var 1<br>OMAPFB: max frame size 4194304, line size 2880<br>OMAPFB: x=
res =3D 720, yres =3D 574, vxres =3D 720, vyres =3D 574<br>
OMAPFB: set_fb_fix<br>OMAPFB: fb_infos initialized<br>OMAPFB: set_par(0)<br=
>OMAPFB: set_fb_fix<br>OMAPFB: apply_changes, fb 0, ovl 0<br>OMAPFB: setup_=
overlay 0, posx 0, posy 0, outw 720, outh 574<br>OMAPFB: paddr 9f000000<br>
OMAPFB: pan_display(0)<br>OMAPFB: setcmap<br>OMAPFB: setcmap<br>Console: sw=
itching to colour frame buffer device 90x35<br>OMAPFB: pan_display(0)<br>OM=
APFB: setcmap<br>OMAPFB: setcmap<br>OMAPFB: framebuffers registered<br>
OMAPFB: apply_changes, fb 0, ovl 0<br>OMAPFB: setup_overlay 0, posx 0, posy=
 0, outw 720, outh 574<br>OMAPFB: paddr 9f000000<br>OMAPFB: apply_changes, =
fb 1, ovl 1<br>OMAPFB: setup_overlay 1, posx 0, posy 0, outw 720, outh 574<=
br>
OMAPFB: paddr 9f800000<br>OMAPFB: create_framebuffers done<br>OMAPFB: mgr-&=
gt;apply&#39;ed<br>OMAPFB: create sysfs for fbs<br>OMAPFB: create sysfs for=
 fbs<br>regulator_init_complete: VDVI: incomplete constraints, leaving on<b=
r>
console [netcon0] enabled<br>netconsole: network logging started<br>twl_rtc=
 twl_rtc: setting system clock to 2012-07-18 23:04:56 UTC (1342652696)<br>W=
aiting for root device /dev/mmcblk0p2...<br>mmc0: host does not support rea=
ding read-only switch. assuming write-enable.<br>
mmc0: new high speed SDHC card at address 1234<br>mmcblk0: mmc0:1234 SA08G =
7.41 GiB <br>=A0mmcblk0: p1 p2<br>usb 1-2.1: new high-speed USB device numb=
er 3 using ehci-omap<br>smsc95xx v1.0.4<br>smsc95xx 1-2.1:1.0: eth0: regist=
er &#39;smsc95xx&#39; at usb-ehci-omap.0-2.1, smsc95xx USB 2.0 Ethernet, 1e=
:65:31:f6:ef:8e<br>
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
devtmpfs: mounted<br>Freeing init memory: 344K<br>OMAPFB: pan_display(0)<br=
>OMAPFB: setcmap<br>OMAPFB: setcmap<br>OMAPFB: user mmap region start 9f000=
000, len 8388608, off 9f000000<br>udev[61]: starting version 164<br>NET: Re=
gistered protocol family 10<br>
ADDRCONF(NETDEV_UP): eth0: link is not ready<br>ADDRCONF(NETDEV_CHANGE): et=
h0: link becomes ready<br>smsc95xx 1-2.1:1.0: eth0: link up, 100Mbps, full-=
duplex, lpa 0x45E1<br>ip_tables: (C) 2000-2006 Netfilter Core Team<br>nf_co=
nntrack version 0.5.0 (7721 buckets, 30884 max)<br>
OMAPFB: check_var(0)<br>OMAPFB: check_fb_var 0<br>OMAPFB: max frame size 83=
88608, line size 2880<br>OMAPFB: xres =3D 720, yres =3D 574, vxres =3D 720,=
 vyres =3D 574<br>OMAPFB: set_par(0)<br>OMAPFB: set_fb_fix<br>OMAPFB: apply=
_changes, fb 0, ovl 0<br>
OMAPFB: setup_overlay 0, posx 0, posy 0, outw 720, outh 574<br>OMAPFB: padd=
r 9f000000<br>OMAPFB: pan_display(0)<br>OMAPFB: setcmap<br>OMAPFB: pan_disp=
lay(0)<br>OMAPFB: setcmap<br>OMAPFB: setcmap<br>OMAPFB: setcmap<br>OMAPFB: =
ioctl GET_CAPS<br>
OMAPFB: ioctl QUERY_MEM<br>OMAPFB: user mmap region start 9f000000, len 838=
8608, off 9f000000<br>OMAPFB: ioctl QUERY_PLANE<br>OMAPFB: ioctl SETUP_PLAN=
E<br>OMAPFB: omapfb_setup_plane<br>OMAPFB: setup_overlay 0, posx 0, posy 0,=
 outw 720, outh 574<br>
OMAPFB: paddr 9f000000<br>OMAPFB: pan_display(0)<br>OMAPFB: setcmap<br>OMAP=
FB: setcmap<br>OMAPFB: check_var(0)<br>OMAPFB: check_fb_var 0<br>OMAPFB: ma=
x frame size 8388608, line size 2880<br>OMAPFB: xres =3D 720, yres =3D 574,=
 vxres =3D 720, vyres =3D 574<br>
OMAPFB: set_par(0)<br>OMAPFB: set_fb_fix<br>OMAPFB: apply_changes, fb 0, ov=
l 0<br>OMAPFB: setup_overlay 0, posx 0, posy 0, outw 720, outh 574<br>OMAPF=
B: paddr 9f000000<br>OMAPFB: pan_display(0)<br>OMAPFB: setcmap<br>OMAPFB: p=
an_display(0)<br>
OMAPFB: setcmap<br>OMAPFB: setcmap<br>OMAPFB: setcmap<br>OMAPFB: ioctl GET_=
CAPS<br>OMAPFB: ioctl QUERY_MEM<br>OMAPFB: user mmap region start 9f000000,=
 len 8388608, off 9f000000<br>OMAPFB: ioctl QUERY_PLANE<br>OMAPFB: ioctl SE=
TUP_PLANE<br>
OMAPFB: omapfb_setup_plane<br>OMAPFB: setup_overlay 0, posx 0, posy 0, outw=
 720, outh 574<br>OMAPFB: paddr 9f000000<br>OMAPFB: check_var(0)<br>OMAPFB:=
 check_fb_var 0<br>OMAPFB: max frame size 8388608, line size 2880<br>OMAPFB=
: xres =3D 720, yres =3D 574, vxres =3D 720, vyres =3D 574<br>
OMAPFB: set_par(0)<br>OMAPFB: set_fb_fix<br>OMAPFB: apply_changes, fb 0, ov=
l 0<br>OMAPFB: setup_overlay 0, posx 0, posy 0, outw 720, outh 574<br>OMAPF=
B: paddr 9f000000<br>OMAPFB: pan_display(0)<br>OMAPFB: setcmap<br>OMAPFB: p=
an_display(0)<br>
OMAPFB: setcmap<br>OMAPFB: setcmap<br>OMAPFB: setcmap<br>OMAPFB: check_var(=
0)<br>OMAPFB: check_fb_var 0<br>OMAPFB: max frame size 8388608, line size 2=
880<br>OMAPFB: xres =3D 720, yres =3D 574, vxres =3D 720, vyres =3D 574<br>=
OMAPFB: set_par(0)<br>
OMAPFB: set_fb_fix<br>OMAPFB: apply_changes, fb 0, ovl 0<br>OMAPFB: setup_o=
verlay 0, posx 0, posy 0, outw 720, outh 574<br>OMAPFB: paddr 9f000000<br>O=
MAPFB: pan_display(0)<br>OMAPFB: setcmap<br>OMAPFB: pan_display(0)<br>OMAPF=
B: setcmap<br>
OMAPFB: setcmap<br>OMAPFB: setcmap<br>OMAPFB: ioctl GET_CAPS<br>OMAPFB: ioc=
tl QUERY_MEM<br>OMAPFB: user mmap region start 9f000000, len 8388608, off 9=
f000000<br>OMAPFB: ioctl QUERY_PLANE<br>OMAPFB: ioctl SETUP_PLANE<br>OMAPFB=
: omapfb_setup_plane<br>
OMAPFB: setup_overlay 0, posx 0, posy 0, outw 720, outh 574<br>OMAPFB: padd=
r 9f000000<br>OMAPFB: check_var(0)<br>OMAPFB: check_fb_var 0<br>OMAPFB: max=
 frame size 8388608, line size 2880<br>OMAPFB: xres =3D 720, yres =3D 574, =
vxres =3D 720, vyres =3D 574<br>
OMAPFB: set_par(0)<br>OMAPFB: set_fb_fix<br>OMAPFB: apply_changes, fb 0, ov=
l 0<br>OMAPFB: setup_overlay 0, posx 0, posy 0, outw 720, outh 574<br>OMAPF=
B: paddr 9f000000<br>OMAPFB: pan_display(0)<br>OMAPFB: setcmap<br>OMAPFB: p=
an_display(0)<br>
OMAPFB: setcmap<br>OMAPFB: setcmap<br>OMAPFB: setcmap<br>Thanks /any help w=
ill be welcomed I am getting closer.<br>

--14dae9340e017a0c1204c523c7bf--
