Return-Path: <kaczanowski.mateusz@gmail.com>
Received: from mail-ve0-f180.google.com (mail-ve0-f180.google.com
	[209.85.128.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7E1CFE009CE
	for <yocto@yoctoproject.org>; Thu, 13 Mar 2014 11:59:57 -0700 (PDT)
Received: by mail-ve0-f180.google.com with SMTP id jz11so1545619veb.25
	for <yocto@yoctoproject.org>; Thu, 13 Mar 2014 11:59:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=+LYnaP3Gf65M9Sj03/tjOiBjPd56XdbhR+Wu2bwludo=;
	b=QPKD2SNhyQTD2G+ePqfIrVM8KEu3Vk2zkQVAwWsFq2fIWa8T1s6JPgO9URxJBcgRxk
	6Fjis7Stnbe7xWJU/9VQao3ikuLa1xrnwvQfVnisu+Dh+PaEcA9JN8CGZyOh2JBdJ7RF
	4KsoF1cXlhRM3F6R3Cgq5d582FWUSzK1kiHUBgi7IBbzNp0sYRj5ZOPsMHVGNnMvdpEW
	6WbA05+2gMyHp9P5nIZK4OjjX7prkP3J5f7SLgoue7QoWVgo+tuOgkH5rR2qByz5nocQ
	qq3TCLAwdNpeco0C1OYqaOZKzIBF/RfgjHYphPgR09Hg+1jqJzqTltSsVeu/e1Tzhij5
	EGNQ==
MIME-Version: 1.0
X-Received: by 10.58.202.106 with SMTP id kh10mr2170265vec.31.1394737196621;
	Thu, 13 Mar 2014 11:59:56 -0700 (PDT)
Received: by 10.52.148.7 with HTTP; Thu, 13 Mar 2014 11:59:56 -0700 (PDT)
Date: Thu, 13 Mar 2014 19:59:56 +0100
Message-ID: <CA+rwqNQgcrQ_Ee_3ABmLhRHh5ySk3izbOWf9Txa82=LVXnRCLg@mail.gmail.com>
From: Mateusz Kaczanowski <kaczanowski.mateusz@gmail.com>
To: yocto@yoctoproject.org
Subject: Beagleboard booting kernel in qemu, halts
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
X-List-Received-Date: Thu, 13 Mar 2014 18:59:59 -0000
Content-Type: multipart/alternative; boundary=047d7bdc945e28e6bb04f4818f51

--047d7bdc945e28e6bb04f4818f51
Content-Type: text/plain; charset=ISO-8859-1

Hello everyone,
I'm trying to run beagleboard image in qemu. So I've built the kernel and
rootfs via yocto.

But! Yocto generates zImage so I did:
MACHINE=beagleboard bitbake virtual/kernel
mkimage -A arm -O linux -T kernel -C none -a 0x80008000 -e 0x80008000 -n
"Linux kernel" -d ./zImage uImage

and then I'm  running the sdcard with
qemu-system-arm -M beaglexm -drive if=sd,cache=writeback,file=/dev/sdb
-clock unix -serial stdio

Booting halts and nothing happends, no login prompt.
I would appreciate *ANY* help, I'm really lame in that subject:/

That is my output:

U-Boot SPL 2013.07 (Mar 10 2014 - 16:10:52)
OMAP SD/MMC: 0
reading u-boot.img
reading u-boot.img


U-Boot 2013.07 (Mar 10 2014 - 16:10:52)

OMAP36XX/37XX-GP ES1.1, CPU-OPP2, L3-165MHz, Max CPU Clock 1 Ghz
OMAP3 Beagle board + LPDDR/NAND
I2C:   ready
DRAM:  512 MiB
NAND:  256 MiB
MMC:   OMAP SD/MMC: 0
*** Warning - bad CRC, using default environment

In:    serial
Out:   serial
Err:   serial
Beagle xM Rev A
No EEPROM on expansion board
Die ID #51454d5551454d555400000051454d55
musb-hdrc: ConfigData=0x06 (UTMI-8, dyn FIFOs, SoftConn)
musb-hdrc: MHDRC RTL version 1.400
musb-hdrc: setup fifo_mode 4
musb-hdrc: 28/31 max ep, 16384/16384 memory
USB Peripheral mode controller at 480ab000 using PIO, IRQ 0
Net:   usb_ether
Hit any key to stop autoboot:  0
mmc0 is current device
gpio: pin 173 (gpio 173) value is 0
gpio: pin 4 (gpio 4) value is 0
SD/MMC found on device 0
reading uEnv.txt
** Unable to read file uEnv.txt **
4650920 bytes read in 667 ms (6.6 MiB/s)
Booting from mmc ...
## Booting kernel from Legacy Image at 80200000 ...
   Image Name:   Linux kernel
   Image Type:   ARM Linux Kernel Image (uncompressed)
   Data Size:    4650856 Bytes = 4.4 MiB
   Load Address: 80008000
   Entry Point:  80008000
   Verifying Checksum ... OK
   Loading Kernel Image ... OK

Starting kernel ...

omap2_inth_read: Bad register 0x000020
Booting Linux on physical CPU 0x0
Initializing cgroup subsys cpuset
Initializing cgroup subsys cpu
Initializing cgroup subsys cpuacct
Linux version 3.10.17-yocto-standard (kaczanowsky@lapek) (gcc version 4.8.1
(GCC) ) #1 Mon Mar 10 15:48:29 CET 2014
CPU: ARMv7 Processor [410fc083] revision 3 (ARMv7), cr=10c53c7d
CPU: PIPT / VIPT nonaliasing data cache, VIPT nonaliasing instruction cache
Machine: OMAP3 Beagle Board
Memory policy: ECC disabled, Data cache writeback
CPU: All CPU(s) started in SVC mode.
OMAP3630 ES1.1 (iva sgx neon isp 192mhz_clk )
Built 1 zonelists in Zone order, mobility grouping on.  Total pages: 129792
Kernel command line: console=ttyO2,115200n8 mpurate=auto buddy=none
camera=none vram=12M omapfb.mode=dvi:640x480MR-16@60 omapdss.def_disp=dvi
root=/dev/mmcblk0p2 rw rootfstype=ext3 rootwait
PID hash table entries: 2048 (order: 1, 8192 bytes)
Dentry cache hash table entries: 65536 (order: 6, 262144 bytes)
Inode-cache hash table entries: 32768 (order: 5, 131072 bytes)
allocated 1048576 bytes of page_cgroup
please try 'cgroup_disable=memory' option if you don't want memory cgroups
Memory: 511MB = 511MB total
Memory: 506796k/506796k available, 17492k reserved, 0K highmem
Virtual kernel memory layout:
    vector  : 0xffff0000 - 0xffff1000   (   4 kB)
    fixmap  : 0xfff00000 - 0xfffe0000   ( 896 kB)
    vmalloc : 0xe0800000 - 0xff000000   ( 488 MB)
    lowmem  : 0xc0000000 - 0xe0000000   ( 512 MB)
    pkmap   : 0xbfe00000 - 0xc0000000   (   2 MB)
    modules : 0xbf000000 - 0xbfe00000   (  14 MB)
      .text : 0xc0008000 - 0xc08d2ccc   (9004 kB)
      .init : 0xc08d3000 - 0xc095559c   ( 522 kB)
      .data : 0xc0956000 - 0xc09eb0a0   ( 597 kB)
       .bss : 0xc09eb0a0 - 0xc0aa4460   ( 741 kB)
SLUB: HWalign=64, Order=0-3, MinObjects=0, CPUs=1, Nodes=1
NR_IRQS:16 nr_irqs:16 16
IRQ: Found an INTC at 0xfa200000 (revision 4.0) with 96 interrupts
Total of 96 interrupts on 1 active controller
Clocking rate (Crystal/Core/MPU): 26.0/400/600 MHz
OMAP clockevent source: timer12 at 32768 Hz
sched_clock: 32 bits at 32kHz, resolution 30517ns, wraps every 131071999ms
OMAP clocksource: 32k_counter at 32768 Hz
Console: colour dummy device 80x30
Calibrating delay loop... 417.79 BogoMIPS (lpj=2088960)
pid_max: default: 32768 minimum: 301
Security Framework initialized
Mount-cache hash table entries: 512
Initializing cgroup subsys debug
Initializing cgroup subsys memory
Initializing cgroup subsys devices
Initializing cgroup subsys freezer
Initializing cgroup subsys net_cls
Initializing cgroup subsys blkio
CPU: Testing write buffer coherency: ok
ftrace: allocating 24278 entries in 72 pages
Setting up static identity map for 0xc060eb10 - 0xc060eb68
devtmpfs: initialized
didn't get FRAMEDONE1/2/3 or TV interrupt
omap_hdq1w_reset: hdq1w: softreset failed (waited 10000 usec)
omap_hwmod: sham: cannot be enabled for reset (3)
omap_hwmod: aes: cannot be enabled for reset (3)
xor: measuring software checksum speed
   arm4regs  :   435.600 MB/sec
   8regs     :   507.600 MB/sec
   32regs    :   486.800 MB/sec
xor: using function: 8regs (507.600 MB/sec)
pinctrl core: initialized pinctrl subsystem
regulator-dummy: no parameters
NET: Registered protocol family 16
DMA: preallocated 256 KiB pool for atomic coherent allocations
omap-gpmc omap-gpmc: GPMC revision 5.0
OMAP GPIO hardware version 2.5
omap_mux_init: Add partition: #1: core, flags: 4
OMAP3 Beagle Rev: xM Ax/Bx
omap_mux_get_by_name: Could not find signal uart4_rx.uart4_rx
Reprogramming SDRC clock to 400000000 Hz
hw-breakpoint: debug architecture 0x0 unsupported.
 omap-mcbsp.2: alias fck already exists
 omap-mcbsp.3: alias fck already exists
OMAP DMA hardware revision 5.0
 arm-pmu: alias fck already exists
bio: create slab <bio-0> at 0
raid6: int32x1    103 MB/s
raid6: int32x2    108 MB/s
raid6: int32x4     94 MB/s
raid6: int32x8     83 MB/s
raid6: using algorithm int32x2 (108 MB/s)
raid6: using intx1 recovery algorithm
omap-dma-engine omap-dma-engine: OMAP DMA engine driver
hsusb2_reset: 3300 mV
SCSI subsystem initialized
usbcore: registered new interface driver usbfs
usbcore: registered new interface driver hub
usbcore: registered new device driver usb
nop_usb_xceiv.2 supply vcc not found, using dummy regulator
twl 1-0048: PIH (irq 23) chaining IRQs 338..346
twl 1-0048: power (irq 343) chaining IRQs 346..353
twl4030_gpio twl4030_gpio: gpio (irq 338) chaining IRQs 354..371
VUSB1V5: 1500 mV normal standby
VUSB1V8: 1800 mV normal standby
VUSB3V1: 3100 mV normal standby
twl4030_usb twl4030_usb: Initialized TWL4030 USB module
vdd_mpu_iva: 600 <--> 1450 mV normal
vdd_core: 600 <--> 1450 mV normal
VMMC1: 1850 <--> 3150 mV at 3150 mV normal standby
VDAC: 1800 mV normal standby
VDVI: 1800 mV normal standby
VSIM: 1800 <--> 3000 mV at 1800 mV normal standby
omap_i2c omap_i2c.1: bus 1 rev4.4 at 2600 kHz
omap_i2c omap_i2c.3: bus 3 rev4.4 at 100 kHz
Advanced Linux Sound Architecture Driver Initialized.
cfg80211: Calling CRDA to update world regulatory domain
Switching to clocksource 32k_counter
NET: Registered protocol family 2
TCP established hash table entries: 4096 (order: 3, 32768 bytes)
TCP bind hash table entries: 4096 (order: 2, 16384 bytes)
TCP: Hash tables configured (established 4096 bind 4096)
TCP: reno registered
UDP hash table entries: 256 (order: 0, 4096 bytes)
UDP-Lite hash table entries: 256 (order: 0, 4096 bytes)
NET: Registered protocol family 1
RPC: Registered named UNIX socket transport module.
RPC: Registered udp transport module.
RPC: Registered tcp transport module.
RPC: Registered tcp NFSv4.1 backchannel transport module.
CPU PMU: probing PMU on CPU 0
hw perfevents: enabled with ARMv7 Cortex-A8 PMU driver, 1 counters available
NFS: Registering the id_resolver key type
Key type id_resolver registered
Key type id_legacy registered
bio: create slab <bio-1> at 1
Btrfs loaded
aufs 3.10-20130819
msgmni has been set to 989
Block layer SCSI generic (bsg) driver version 0.4 loaded (major 252)
io scheduler noop registered
io scheduler deadline registered
io scheduler cfq registered (default)
OMAP DSS rev 2.0
omapfb omapfb: no driver for display: dvi
omapfb omapfb: failed to find default display
omapfb omapfb: failed to setup omapfb
omapfb: probe of omapfb failed with error -22
omap_uart.0: ttyO0 at MMIO 0x4806a000 (irq = 88) is a OMAP UART0
omap_uart.1: ttyO1 at MMIO 0x4806c000 (irq = 89) is a OMAP UART1
omap_uart.2: ttyO2 at MMIO 0x49020000 (irq = 90) is a OMAP UART2
console [ttyO2] enabled
omap_uart.3: ttyO3 at MMIO 0x49042000 (irq = 96) is a OMAP UART3
brd: module loaded
Trying ONFI probe in 16 bits mode, aborting !
NAND device: Manufacturer ID: 0x2c, Chip ID: 0xba (Micron NAND 256MiB 1,8V
16-bit), 256MiB, page size: 2048, OOB size: 64
Creating 5 MTD partitions on "omap2-nand.0":
0x000000000000-0x000000080000 : "X-Loader"
0x000000080000-0x000000260000 : "U-Boot"
0x000000260000-0x000000280000 : "U-Boot Env"
0x000000280000-0x000000680000 : "Kernel"
0x000000680000-0x000010000000 : "File System"
usbcore: registered new interface driver kaweth
pegasus: v0.9.3 (2013/04/25), Pegasus/Pegasus II USB Ethernet driver
usbcore: registered new interface driver pegasus
usbcore: registered new interface driver rtl8150
usbcore: registered new interface driver asix
usbcore: registered new interface driver ax88179_178a
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
ehci-omap: OMAP-EHCI Host Controller driver
unable to find transceiver
unable to find transceiver
ehci-omap ehci-omap.0: EHCI Host Controller
ehci-omap ehci-omap.0: new USB bus registered, assigned bus number 1
ehci-omap ehci-omap.0: can't setup
ehci-omap ehci-omap.0: USB bus 1 deregistered
ehci-omap ehci-omap.0: failed to add hcd with err -110
ehci-omap: probe of ehci-omap.0 failed with error -110
usbcore: registered new interface driver usb-storage
unable to find transceiver
HS USB OTG: no transceiver configured
musb-hdrc musb-hdrc.1.auto: musb_init_controller failed with status -517
platform musb-hdrc.1.auto: Driver musb-hdrc requests probe deferral
mousedev: PS/2 mouse device common for all mice
twl_rtc twl_rtc: Power up reset detected.
twl_rtc twl_rtc: Enabling TWL-RTC
twl_rtc twl_rtc: rtc core: registered twl_rtc as rtc0
omap_wdt: OMAP Watchdog Timer Rev 0x31: initial timeout 60 sec
cpuidle: using governor ladder
cpuidle: using governor menu
omap-dma-engine omap-dma-engine: allocating channel for 62
omap-dma-engine omap-dma-engine: allocating channel for 61
usbcore: registered new interface driver usbhid
usbhid: USB HID core driver
mmc0: SD Status: Invalid Allocation Unit size.
mmc0: host does not support reading read-only switch. assuming write-enable.
mmc0: new SDHC card at address 4567
mmcblk0: mmc0:4567 QEMU! 3.63 GiB
omap-twl4030 omap-twl4030:  twl4030-hifi <-> omap-mcbsp.2 mapping ok
oprofile: using arm/armv7
u32 classifier
    Actions configured
TCP: cubic registered
NET: Registered protocol family 10
sit: IPv6 over IPv4 tunneling driver
NET: Registered protocol family 17
Key type dns_resolver registered
VFP support v0.3: implementor 41 architecture 3 part 30 variant c rev 2
ThumbEE CPU extension supported.
VDVI: incomplete constraints, leaving on
VDAC: incomplete constraints, leaving on
unable to find transceiver
HS USB OTG: no transceiver configured
musb-hdrc musb-hdrc.1.auto: musb_init_controller failed with status -517
platform musb-hdrc.1.auto: Driver musb-hdrc requests probe deferral
console [netcon0] enabled
netconsole: network logging started
twl_rtc twl_rtc: setting system clock to 2014-03-13 18:38:20 UTC
(1394735900)
ALSA device list:
  #0: omap3beagle

--047d7bdc945e28e6bb04f4818f51
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><span style=3D"font-family:Arial,Helvetica,sans-serif;font=
-size:13px">Hello everyone,</span><div style=3D"margin:0px;padding:0px;bord=
er:0px;vertical-align:baseline;font-family:Arial,Helvetica,sans-serif;font-=
size:13px">
I&#39;m trying to run beagleboard image in qemu. So I&#39;ve built the kern=
el and rootfs via yocto.</div><div style=3D"margin:0px;padding:0px;border:0=
px;vertical-align:baseline;font-family:Arial,Helvetica,sans-serif;font-size=
:13px">
<br></div><div style=3D"margin:0px;padding:0px;border:0px;vertical-align:ba=
seline;font-family:Arial,Helvetica,sans-serif;font-size:13px">But! Yocto ge=
nerates zImage so I did:</div><div style=3D"margin:0px;padding:0px;border:0=
px;vertical-align:baseline;font-family:Arial,Helvetica,sans-serif;font-size=
:13px">
MACHINE=3Dbeagleboard bitbake virtual/kernel<br></div><div style=3D"margin:=
0px;padding:0px;border:0px;vertical-align:baseline;font-family:Arial,Helvet=
ica,sans-serif;font-size:13px">mkimage -A arm -O linux -T kernel -C none -a=
 0x80008000 -e 0x80008000 -n &quot;Linux kernel&quot; -d ./zImage uImage<br=
>
</div><div style=3D"margin:0px;padding:0px;border:0px;vertical-align:baseli=
ne;font-family:Arial,Helvetica,sans-serif;font-size:13px"><br></div><div st=
yle=3D"margin:0px;padding:0px;border:0px;vertical-align:baseline;font-famil=
y:Arial,Helvetica,sans-serif;font-size:13px">
and then I&#39;m =A0running the sdcard with</div><div style=3D"margin:0px;p=
adding:0px;border:0px;vertical-align:baseline;font-family:Arial,Helvetica,s=
ans-serif;font-size:13px">qemu-system-arm -M beaglexm -drive if=3Dsd,cache=
=3Dwriteback,file=3D/dev/sdb -clock unix -serial stdio<br>
</div><div style=3D"margin:0px;padding:0px;border:0px;vertical-align:baseli=
ne;font-family:Arial,Helvetica,sans-serif;font-size:13px"><br></div><div st=
yle=3D"margin:0px;padding:0px;border:0px;vertical-align:baseline;font-famil=
y:Arial,Helvetica,sans-serif;font-size:13px">
Booting halts and nothing happends, no login prompt.</div><div style=3D"mar=
gin:0px;padding:0px;border:0px;vertical-align:baseline;font-family:Arial,He=
lvetica,sans-serif;font-size:13px">I would appreciate=A0<b>ANY</b>=A0help, =
I&#39;m really lame in that subject:/</div>
<div style=3D"margin:0px;padding:0px;border:0px;vertical-align:baseline;fon=
t-family:Arial,Helvetica,sans-serif;font-size:13px"><br></div><div style=3D=
"margin:0px;padding:0px;border:0px;vertical-align:baseline;font-family:Aria=
l,Helvetica,sans-serif;font-size:13px">
That is my output:</div><div style=3D"margin:0px;padding:0px;border:0px;ver=
tical-align:baseline;font-family:Arial,Helvetica,sans-serif;font-size:13px"=
><br></div><div style=3D"margin:0px;padding:0px;border:0px;vertical-align:b=
aseline;font-family:Arial,Helvetica,sans-serif;font-size:13px">
<div style=3D"margin:0px;padding:0px;border:0px;vertical-align:baseline">U-=
Boot SPL 2013.07 (Mar 10 2014 - 16:10:52)</div><div style=3D"margin:0px;pad=
ding:0px;border:0px;vertical-align:baseline">OMAP SD/MMC: 0</div><div style=
=3D"margin:0px;padding:0px;border:0px;vertical-align:baseline">
reading u-boot.img</div><div style=3D"margin:0px;padding:0px;border:0px;ver=
tical-align:baseline">reading u-boot.img</div><div style=3D"margin:0px;padd=
ing:0px;border:0px;vertical-align:baseline"><br></div><div style=3D"margin:=
0px;padding:0px;border:0px;vertical-align:baseline">
<br></div><div style=3D"margin:0px;padding:0px;border:0px;vertical-align:ba=
seline">U-Boot 2013.07 (Mar 10 2014 - 16:10:52)</div><div style=3D"margin:0=
px;padding:0px;border:0px;vertical-align:baseline"><br></div><div style=3D"=
margin:0px;padding:0px;border:0px;vertical-align:baseline">
OMAP36XX/37XX-GP ES1.1, CPU-OPP2, L3-165MHz, Max CPU Clock 1 Ghz</div><div =
style=3D"margin:0px;padding:0px;border:0px;vertical-align:baseline">OMAP3 B=
eagle board + LPDDR/NAND</div><div style=3D"margin:0px;padding:0px;border:0=
px;vertical-align:baseline">
I2C: =A0 ready</div><div style=3D"margin:0px;padding:0px;border:0px;vertica=
l-align:baseline">DRAM: =A0512 MiB</div><div style=3D"margin:0px;padding:0p=
x;border:0px;vertical-align:baseline">NAND: =A0256 MiB</div><div style=3D"m=
argin:0px;padding:0px;border:0px;vertical-align:baseline">
MMC: =A0 OMAP SD/MMC: 0</div><div style=3D"margin:0px;padding:0px;border:0p=
x;vertical-align:baseline">*** Warning - bad CRC, using default environment=
</div><div style=3D"margin:0px;padding:0px;border:0px;vertical-align:baseli=
ne">
<br></div><div style=3D"margin:0px;padding:0px;border:0px;vertical-align:ba=
seline">In: =A0 =A0serial</div><div style=3D"margin:0px;padding:0px;border:=
0px;vertical-align:baseline">Out: =A0 serial</div><div style=3D"margin:0px;=
padding:0px;border:0px;vertical-align:baseline">
Err: =A0 serial</div><div style=3D"margin:0px;padding:0px;border:0px;vertic=
al-align:baseline">Beagle xM Rev A</div><div style=3D"margin:0px;padding:0p=
x;border:0px;vertical-align:baseline">No EEPROM on expansion board</div><di=
v style=3D"margin:0px;padding:0px;border:0px;vertical-align:baseline">
Die ID #51454d5551454d555400000051454d55</div><div style=3D"margin:0px;padd=
ing:0px;border:0px;vertical-align:baseline">musb-hdrc: ConfigData=3D0x06 (U=
TMI-8, dyn FIFOs, SoftConn)</div><div style=3D"margin:0px;padding:0px;borde=
r:0px;vertical-align:baseline">
musb-hdrc: MHDRC RTL version 1.400=A0</div><div style=3D"margin:0px;padding=
:0px;border:0px;vertical-align:baseline">musb-hdrc: setup fifo_mode 4</div>=
<div style=3D"margin:0px;padding:0px;border:0px;vertical-align:baseline">mu=
sb-hdrc: 28/31 max ep, 16384/16384 memory</div>
<div style=3D"margin:0px;padding:0px;border:0px;vertical-align:baseline">US=
B Peripheral mode controller at 480ab000 using PIO, IRQ 0</div><div style=
=3D"margin:0px;padding:0px;border:0px;vertical-align:baseline">Net: =A0 usb=
_ether</div>
<div style=3D"margin:0px;padding:0px;border:0px;vertical-align:baseline">Hi=
t any key to stop autoboot: =A00=A0</div><div style=3D"margin:0px;padding:0=
px;border:0px;vertical-align:baseline">mmc0 is current device</div><div sty=
le=3D"margin:0px;padding:0px;border:0px;vertical-align:baseline">
gpio: pin 173 (gpio 173) value is 0</div><div style=3D"margin:0px;padding:0=
px;border:0px;vertical-align:baseline">gpio: pin 4 (gpio 4) value is 0</div=
><div style=3D"margin:0px;padding:0px;border:0px;vertical-align:baseline">S=
D/MMC found on device 0</div>
<div style=3D"margin:0px;padding:0px;border:0px;vertical-align:baseline">re=
ading uEnv.txt</div><div style=3D"margin:0px;padding:0px;border:0px;vertica=
l-align:baseline">** Unable to read file uEnv.txt **</div><div style=3D"mar=
gin:0px;padding:0px;border:0px;vertical-align:baseline">
4650920 bytes read in 667 ms (6.6 MiB/s)</div><div style=3D"margin:0px;padd=
ing:0px;border:0px;vertical-align:baseline">Booting from mmc ...</div><div =
style=3D"margin:0px;padding:0px;border:0px;vertical-align:baseline">## Boot=
ing kernel from Legacy Image at 80200000 ...</div>
<div style=3D"margin:0px;padding:0px;border:0px;vertical-align:baseline">=
=A0 =A0Image Name: =A0 Linux kernel</div><div style=3D"margin:0px;padding:0=
px;border:0px;vertical-align:baseline">=A0 =A0Image Type: =A0 ARM Linux Ker=
nel Image (uncompressed)</div>
<div style=3D"margin:0px;padding:0px;border:0px;vertical-align:baseline">=
=A0 =A0Data Size: =A0 =A04650856 Bytes =3D 4.4 MiB</div><div style=3D"margi=
n:0px;padding:0px;border:0px;vertical-align:baseline">=A0 =A0Load Address: =
80008000</div><div style=3D"margin:0px;padding:0px;border:0px;vertical-alig=
n:baseline">
=A0 =A0Entry Point: =A080008000</div><div style=3D"margin:0px;padding:0px;b=
order:0px;vertical-align:baseline">=A0 =A0Verifying Checksum ... OK</div><d=
iv style=3D"margin:0px;padding:0px;border:0px;vertical-align:baseline">=A0 =
=A0Loading Kernel Image ... OK</div>
<div style=3D"margin:0px;padding:0px;border:0px;vertical-align:baseline"><b=
r></div><div style=3D"margin:0px;padding:0px;border:0px;vertical-align:base=
line">Starting kernel ...</div><div style=3D"margin:0px;padding:0px;border:=
0px;vertical-align:baseline">
<br></div><div style=3D"margin:0px;padding:0px;border:0px;vertical-align:ba=
seline">omap2_inth_read: Bad register 0x000020</div><div style=3D"margin:0p=
x;padding:0px;border:0px;vertical-align:baseline">Booting Linux on physical=
 CPU 0x0</div>
<div style=3D"margin:0px;padding:0px;border:0px;vertical-align:baseline">In=
itializing cgroup subsys cpuset</div><div style=3D"margin:0px;padding:0px;b=
order:0px;vertical-align:baseline">Initializing cgroup subsys cpu</div><div=
 style=3D"margin:0px;padding:0px;border:0px;vertical-align:baseline">
Initializing cgroup subsys cpuacct</div><div style=3D"margin:0px;padding:0p=
x;border:0px;vertical-align:baseline">Linux version 3.10.17-yocto-standard =
(kaczanowsky@lapek) (gcc version 4.8.1 (GCC) ) #1 Mon Mar 10 15:48:29 CET 2=
014</div>
<div style=3D"margin:0px;padding:0px;border:0px;vertical-align:baseline">CP=
U: ARMv7 Processor [410fc083] revision 3 (ARMv7), cr=3D10c53c7d</div><div s=
tyle=3D"margin:0px;padding:0px;border:0px;vertical-align:baseline">CPU: PIP=
T / VIPT nonaliasing data cache, VIPT nonaliasing instruction cache</div>
<div style=3D"margin:0px;padding:0px;border:0px;vertical-align:baseline">Ma=
chine: OMAP3 Beagle Board</div><div style=3D"margin:0px;padding:0px;border:=
0px;vertical-align:baseline">Memory policy: ECC disabled, Data cache writeb=
ack</div>
<div style=3D"margin:0px;padding:0px;border:0px;vertical-align:baseline">CP=
U: All CPU(s) started in SVC mode.</div><div style=3D"margin:0px;padding:0p=
x;border:0px;vertical-align:baseline">OMAP3630 ES1.1 (iva sgx neon isp 192m=
hz_clk )</div>
<div style=3D"margin:0px;padding:0px;border:0px;vertical-align:baseline">Bu=
ilt 1 zonelists in Zone order, mobility grouping on. =A0Total pages: 129792=
</div><div style=3D"margin:0px;padding:0px;border:0px;vertical-align:baseli=
ne">
Kernel command line: console=3DttyO2,115200n8 mpurate=3Dauto buddy=3Dnone c=
amera=3Dnone vram=3D12M omapfb.mode=3Ddvi:640x480MR-16@60 omapdss.def_disp=
=3Ddvi root=3D/dev/mmcblk0p2 rw rootfstype=3Dext3 rootwait</div><div style=
=3D"margin:0px;padding:0px;border:0px;vertical-align:baseline">
PID hash table entries: 2048 (order: 1, 8192 bytes)</div><div style=3D"marg=
in:0px;padding:0px;border:0px;vertical-align:baseline">Dentry cache hash ta=
ble entries: 65536 (order: 6, 262144 bytes)</div><div style=3D"margin:0px;p=
adding:0px;border:0px;vertical-align:baseline">
Inode-cache hash table entries: 32768 (order: 5, 131072 bytes)</div><div st=
yle=3D"margin:0px;padding:0px;border:0px;vertical-align:baseline">allocated=
 1048576 bytes of page_cgroup</div><div style=3D"margin:0px;padding:0px;bor=
der:0px;vertical-align:baseline">
please try &#39;cgroup_disable=3Dmemory&#39; option if you don&#39;t want m=
emory cgroups</div><div style=3D"margin:0px;padding:0px;border:0px;vertical=
-align:baseline">Memory: 511MB =3D 511MB total</div><div style=3D"margin:0p=
x;padding:0px;border:0px;vertical-align:baseline">
Memory: 506796k/506796k available, 17492k reserved, 0K highmem</div><div st=
yle=3D"margin:0px;padding:0px;border:0px;vertical-align:baseline">Virtual k=
ernel memory layout:</div><div style=3D"margin:0px;padding:0px;border:0px;v=
ertical-align:baseline">
=A0 =A0 vector =A0: 0xffff0000 - 0xffff1000 =A0 ( =A0 4 kB)</div><div style=
=3D"margin:0px;padding:0px;border:0px;vertical-align:baseline">=A0 =A0 fixm=
ap =A0: 0xfff00000 - 0xfffe0000 =A0 ( 896 kB)</div><div style=3D"margin:0px=
;padding:0px;border:0px;vertical-align:baseline">
=A0 =A0 vmalloc : 0xe0800000 - 0xff000000 =A0 ( 488 MB)</div><div style=3D"=
margin:0px;padding:0px;border:0px;vertical-align:baseline">=A0 =A0 lowmem =
=A0: 0xc0000000 - 0xe0000000 =A0 ( 512 MB)</div><div style=3D"margin:0px;pa=
dding:0px;border:0px;vertical-align:baseline">
=A0 =A0 pkmap =A0 : 0xbfe00000 - 0xc0000000 =A0 ( =A0 2 MB)</div><div style=
=3D"margin:0px;padding:0px;border:0px;vertical-align:baseline">=A0 =A0 modu=
les : 0xbf000000 - 0xbfe00000 =A0 ( =A014 MB)</div><div style=3D"margin:0px=
;padding:0px;border:0px;vertical-align:baseline">
=A0 =A0 =A0 .text : 0xc0008000 - 0xc08d2ccc =A0 (9004 kB)</div><div style=
=3D"margin:0px;padding:0px;border:0px;vertical-align:baseline">=A0 =A0 =A0 =
.init : 0xc08d3000 - 0xc095559c =A0 ( 522 kB)</div><div style=3D"margin:0px=
;padding:0px;border:0px;vertical-align:baseline">
=A0 =A0 =A0 .data : 0xc0956000 - 0xc09eb0a0 =A0 ( 597 kB)</div><div style=
=3D"margin:0px;padding:0px;border:0px;vertical-align:baseline">=A0 =A0 =A0 =
=A0.bss : 0xc09eb0a0 - 0xc0aa4460 =A0 ( 741 kB)</div><div style=3D"margin:0=
px;padding:0px;border:0px;vertical-align:baseline">
SLUB: HWalign=3D64, Order=3D0-3, MinObjects=3D0, CPUs=3D1, Nodes=3D1</div><=
div style=3D"margin:0px;padding:0px;border:0px;vertical-align:baseline">NR_=
IRQS:16 nr_irqs:16 16</div><div style=3D"margin:0px;padding:0px;border:0px;=
vertical-align:baseline">
IRQ: Found an INTC at 0xfa200000 (revision 4.0) with 96 interrupts</div><di=
v style=3D"margin:0px;padding:0px;border:0px;vertical-align:baseline">Total=
 of 96 interrupts on 1 active controller</div><div style=3D"margin:0px;padd=
ing:0px;border:0px;vertical-align:baseline">
Clocking rate (Crystal/Core/MPU): 26.0/400/600 MHz</div><div style=3D"margi=
n:0px;padding:0px;border:0px;vertical-align:baseline">OMAP clockevent sourc=
e: timer12 at 32768 Hz</div><div style=3D"margin:0px;padding:0px;border:0px=
;vertical-align:baseline">
sched_clock: 32 bits at 32kHz, resolution 30517ns, wraps every 131071999ms<=
/div><div style=3D"margin:0px;padding:0px;border:0px;vertical-align:baselin=
e">OMAP clocksource: 32k_counter at 32768 Hz</div><div style=3D"margin:0px;=
padding:0px;border:0px;vertical-align:baseline">
Console: colour dummy device 80x30</div><div style=3D"margin:0px;padding:0p=
x;border:0px;vertical-align:baseline">Calibrating delay loop... 417.79 Bogo=
MIPS (lpj=3D2088960)</div><div style=3D"margin:0px;padding:0px;border:0px;v=
ertical-align:baseline">
pid_max: default: 32768 minimum: 301</div><div style=3D"margin:0px;padding:=
0px;border:0px;vertical-align:baseline">Security Framework initialized</div=
><div style=3D"margin:0px;padding:0px;border:0px;vertical-align:baseline">M=
ount-cache hash table entries: 512</div>
<div style=3D"margin:0px;padding:0px;border:0px;vertical-align:baseline">In=
itializing cgroup subsys debug</div><div style=3D"margin:0px;padding:0px;bo=
rder:0px;vertical-align:baseline">Initializing cgroup subsys memory</div><d=
iv style=3D"margin:0px;padding:0px;border:0px;vertical-align:baseline">
Initializing cgroup subsys devices</div><div style=3D"margin:0px;padding:0p=
x;border:0px;vertical-align:baseline">Initializing cgroup subsys freezer</d=
iv><div style=3D"margin:0px;padding:0px;border:0px;vertical-align:baseline"=
>
Initializing cgroup subsys net_cls</div><div style=3D"margin:0px;padding:0p=
x;border:0px;vertical-align:baseline">Initializing cgroup subsys blkio</div=
><div style=3D"margin:0px;padding:0px;border:0px;vertical-align:baseline">C=
PU: Testing write buffer coherency: ok</div>
<div style=3D"margin:0px;padding:0px;border:0px;vertical-align:baseline">ft=
race: allocating 24278 entries in 72 pages</div><div style=3D"margin:0px;pa=
dding:0px;border:0px;vertical-align:baseline">Setting up static identity ma=
p for 0xc060eb10 - 0xc060eb68</div>
<div style=3D"margin:0px;padding:0px;border:0px;vertical-align:baseline">de=
vtmpfs: initialized</div><div style=3D"margin:0px;padding:0px;border:0px;ve=
rtical-align:baseline">didn&#39;t get FRAMEDONE1/2/3 or TV interrupt</div><=
div style=3D"margin:0px;padding:0px;border:0px;vertical-align:baseline">
omap_hdq1w_reset: hdq1w: softreset failed (waited 10000 usec)</div><div sty=
le=3D"margin:0px;padding:0px;border:0px;vertical-align:baseline">omap_hwmod=
: sham: cannot be enabled for reset (3)</div><div style=3D"margin:0px;paddi=
ng:0px;border:0px;vertical-align:baseline">
omap_hwmod: aes: cannot be enabled for reset (3)</div><div style=3D"margin:=
0px;padding:0px;border:0px;vertical-align:baseline">xor: measuring software=
 checksum speed</div><div style=3D"margin:0px;padding:0px;border:0px;vertic=
al-align:baseline">
=A0 =A0arm4regs =A0: =A0 435.600 MB/sec</div><div style=3D"margin:0px;paddi=
ng:0px;border:0px;vertical-align:baseline">=A0 =A08regs =A0 =A0 : =A0 507.6=
00 MB/sec</div><div style=3D"margin:0px;padding:0px;border:0px;vertical-ali=
gn:baseline">=A0 =A032regs =A0 =A0: =A0 486.800 MB/sec</div>
<div style=3D"margin:0px;padding:0px;border:0px;vertical-align:baseline">xo=
r: using function: 8regs (507.600 MB/sec)</div><div style=3D"margin:0px;pad=
ding:0px;border:0px;vertical-align:baseline">pinctrl core: initialized pinc=
trl subsystem</div>
<div style=3D"margin:0px;padding:0px;border:0px;vertical-align:baseline">re=
gulator-dummy: no parameters</div><div style=3D"margin:0px;padding:0px;bord=
er:0px;vertical-align:baseline">NET: Registered protocol family 16</div><di=
v style=3D"margin:0px;padding:0px;border:0px;vertical-align:baseline">
DMA: preallocated 256 KiB pool for atomic coherent allocations</div><div st=
yle=3D"margin:0px;padding:0px;border:0px;vertical-align:baseline">omap-gpmc=
 omap-gpmc: GPMC revision 5.0</div><div style=3D"margin:0px;padding:0px;bor=
der:0px;vertical-align:baseline">
OMAP GPIO hardware version 2.5</div><div style=3D"margin:0px;padding:0px;bo=
rder:0px;vertical-align:baseline">omap_mux_init: Add partition: #1: core, f=
lags: 4</div><div style=3D"margin:0px;padding:0px;border:0px;vertical-align=
:baseline">
OMAP3 Beagle Rev: xM Ax/Bx</div><div style=3D"margin:0px;padding:0px;border=
:0px;vertical-align:baseline">omap_mux_get_by_name: Could not find signal u=
art4_rx.uart4_rx</div><div style=3D"margin:0px;padding:0px;border:0px;verti=
cal-align:baseline">
Reprogramming SDRC clock to 400000000 Hz</div><div style=3D"margin:0px;padd=
ing:0px;border:0px;vertical-align:baseline">hw-breakpoint: debug architectu=
re 0x0 unsupported.</div><div style=3D"margin:0px;padding:0px;border:0px;ve=
rtical-align:baseline">
=A0omap-mcbsp.2: alias fck already exists</div><div style=3D"margin:0px;pad=
ding:0px;border:0px;vertical-align:baseline">=A0omap-mcbsp.3: alias fck alr=
eady exists</div><div style=3D"margin:0px;padding:0px;border:0px;vertical-a=
lign:baseline">
OMAP DMA hardware revision 5.0</div><div style=3D"margin:0px;padding:0px;bo=
rder:0px;vertical-align:baseline">=A0arm-pmu: alias fck already exists</div=
><div style=3D"margin:0px;padding:0px;border:0px;vertical-align:baseline">b=
io: create slab &lt;bio-0&gt; at 0</div>
<div style=3D"margin:0px;padding:0px;border:0px;vertical-align:baseline">ra=
id6: int32x1 =A0 =A0103 MB/s</div><div style=3D"margin:0px;padding:0px;bord=
er:0px;vertical-align:baseline">raid6: int32x2 =A0 =A0108 MB/s</div><div st=
yle=3D"margin:0px;padding:0px;border:0px;vertical-align:baseline">
raid6: int32x4 =A0 =A0 94 MB/s</div><div style=3D"margin:0px;padding:0px;bo=
rder:0px;vertical-align:baseline">raid6: int32x8 =A0 =A0 83 MB/s</div><div =
style=3D"margin:0px;padding:0px;border:0px;vertical-align:baseline">raid6: =
using algorithm int32x2 (108 MB/s)</div>
<div style=3D"margin:0px;padding:0px;border:0px;vertical-align:baseline">ra=
id6: using intx1 recovery algorithm</div><div style=3D"margin:0px;padding:0=
px;border:0px;vertical-align:baseline">omap-dma-engine omap-dma-engine: OMA=
P DMA engine driver</div>
<div style=3D"margin:0px;padding:0px;border:0px;vertical-align:baseline">hs=
usb2_reset: 3300 mV=A0</div><div style=3D"margin:0px;padding:0px;border:0px=
;vertical-align:baseline">SCSI subsystem initialized</div><div style=3D"mar=
gin:0px;padding:0px;border:0px;vertical-align:baseline">
usbcore: registered new interface driver usbfs</div><div style=3D"margin:0p=
x;padding:0px;border:0px;vertical-align:baseline">usbcore: registered new i=
nterface driver hub</div><div style=3D"margin:0px;padding:0px;border:0px;ve=
rtical-align:baseline">
usbcore: registered new device driver usb</div><div style=3D"margin:0px;pad=
ding:0px;border:0px;vertical-align:baseline">nop_usb_xceiv.2 supply vcc not=
 found, using dummy regulator</div><div style=3D"margin:0px;padding:0px;bor=
der:0px;vertical-align:baseline">
twl 1-0048: PIH (irq 23) chaining IRQs 338..346</div><div style=3D"margin:0=
px;padding:0px;border:0px;vertical-align:baseline">twl 1-0048: power (irq 3=
43) chaining IRQs 346..353</div><div style=3D"margin:0px;padding:0px;border=
:0px;vertical-align:baseline">
twl4030_gpio twl4030_gpio: gpio (irq 338) chaining IRQs 354..371</div><div =
style=3D"margin:0px;padding:0px;border:0px;vertical-align:baseline">VUSB1V5=
: 1500 mV normal standby</div><div style=3D"margin:0px;padding:0px;border:0=
px;vertical-align:baseline">
VUSB1V8: 1800 mV normal standby</div><div style=3D"margin:0px;padding:0px;b=
order:0px;vertical-align:baseline">VUSB3V1: 3100 mV normal standby</div><di=
v style=3D"margin:0px;padding:0px;border:0px;vertical-align:baseline">twl40=
30_usb twl4030_usb: Initialized TWL4030 USB module</div>
<div style=3D"margin:0px;padding:0px;border:0px;vertical-align:baseline">vd=
d_mpu_iva: 600 &lt;--&gt; 1450 mV normal=A0</div><div style=3D"margin:0px;p=
adding:0px;border:0px;vertical-align:baseline">vdd_core: 600 &lt;--&gt; 145=
0 mV normal=A0</div>
<div style=3D"margin:0px;padding:0px;border:0px;vertical-align:baseline">VM=
MC1: 1850 &lt;--&gt; 3150 mV at 3150 mV normal standby</div><div style=3D"m=
argin:0px;padding:0px;border:0px;vertical-align:baseline">VDAC: 1800 mV nor=
mal standby</div>
<div style=3D"margin:0px;padding:0px;border:0px;vertical-align:baseline">VD=
VI: 1800 mV normal standby</div><div style=3D"margin:0px;padding:0px;border=
:0px;vertical-align:baseline">VSIM: 1800 &lt;--&gt; 3000 mV at 1800 mV norm=
al standby</div>
<div style=3D"margin:0px;padding:0px;border:0px;vertical-align:baseline">om=
ap_i2c omap_i2c.1: bus 1 rev4.4 at 2600 kHz</div><div style=3D"margin:0px;p=
adding:0px;border:0px;vertical-align:baseline">omap_i2c omap_i2c.3: bus 3 r=
ev4.4 at 100 kHz</div>
<div style=3D"margin:0px;padding:0px;border:0px;vertical-align:baseline">Ad=
vanced Linux Sound Architecture Driver Initialized.</div><div style=3D"marg=
in:0px;padding:0px;border:0px;vertical-align:baseline">cfg80211: Calling CR=
DA to update world regulatory domain</div>
<div style=3D"margin:0px;padding:0px;border:0px;vertical-align:baseline">Sw=
itching to clocksource 32k_counter</div><div style=3D"margin:0px;padding:0p=
x;border:0px;vertical-align:baseline">NET: Registered protocol family 2</di=
v>
<div style=3D"margin:0px;padding:0px;border:0px;vertical-align:baseline">TC=
P established hash table entries: 4096 (order: 3, 32768 bytes)</div><div st=
yle=3D"margin:0px;padding:0px;border:0px;vertical-align:baseline">TCP bind =
hash table entries: 4096 (order: 2, 16384 bytes)</div>
<div style=3D"margin:0px;padding:0px;border:0px;vertical-align:baseline">TC=
P: Hash tables configured (established 4096 bind 4096)</div><div style=3D"m=
argin:0px;padding:0px;border:0px;vertical-align:baseline">TCP: reno registe=
red</div>
<div style=3D"margin:0px;padding:0px;border:0px;vertical-align:baseline">UD=
P hash table entries: 256 (order: 0, 4096 bytes)</div><div style=3D"margin:=
0px;padding:0px;border:0px;vertical-align:baseline">UDP-Lite hash table ent=
ries: 256 (order: 0, 4096 bytes)</div>
<div style=3D"margin:0px;padding:0px;border:0px;vertical-align:baseline">NE=
T: Registered protocol family 1</div><div style=3D"margin:0px;padding:0px;b=
order:0px;vertical-align:baseline">RPC: Registered named UNIX socket transp=
ort module.</div>
<div style=3D"margin:0px;padding:0px;border:0px;vertical-align:baseline">RP=
C: Registered udp transport module.</div><div style=3D"margin:0px;padding:0=
px;border:0px;vertical-align:baseline">RPC: Registered tcp transport module=
.</div>
<div style=3D"margin:0px;padding:0px;border:0px;vertical-align:baseline">RP=
C: Registered tcp NFSv4.1 backchannel transport module.</div><div style=3D"=
margin:0px;padding:0px;border:0px;vertical-align:baseline">CPU PMU: probing=
 PMU on CPU 0</div>
<div style=3D"margin:0px;padding:0px;border:0px;vertical-align:baseline">hw=
 perfevents: enabled with ARMv7 Cortex-A8 PMU driver, 1 counters available<=
/div><div style=3D"margin:0px;padding:0px;border:0px;vertical-align:baselin=
e">
NFS: Registering the id_resolver key type</div><div style=3D"margin:0px;pad=
ding:0px;border:0px;vertical-align:baseline">Key type id_resolver registere=
d</div><div style=3D"margin:0px;padding:0px;border:0px;vertical-align:basel=
ine">
Key type id_legacy registered</div><div style=3D"margin:0px;padding:0px;bor=
der:0px;vertical-align:baseline">bio: create slab &lt;bio-1&gt; at 1</div><=
div style=3D"margin:0px;padding:0px;border:0px;vertical-align:baseline">Btr=
fs loaded</div>
<div style=3D"margin:0px;padding:0px;border:0px;vertical-align:baseline">au=
fs 3.10-20130819</div><div style=3D"margin:0px;padding:0px;border:0px;verti=
cal-align:baseline">msgmni has been set to 989</div><div style=3D"margin:0p=
x;padding:0px;border:0px;vertical-align:baseline">
Block layer SCSI generic (bsg) driver version 0.4 loaded (major 252)</div><=
div style=3D"margin:0px;padding:0px;border:0px;vertical-align:baseline">io =
scheduler noop registered</div><div style=3D"margin:0px;padding:0px;border:=
0px;vertical-align:baseline">
io scheduler deadline registered</div><div style=3D"margin:0px;padding:0px;=
border:0px;vertical-align:baseline">io scheduler cfq registered (default)</=
div><div style=3D"margin:0px;padding:0px;border:0px;vertical-align:baseline=
">
OMAP DSS rev 2.0</div><div style=3D"margin:0px;padding:0px;border:0px;verti=
cal-align:baseline">omapfb omapfb: no driver for display: dvi</div><div sty=
le=3D"margin:0px;padding:0px;border:0px;vertical-align:baseline">omapfb oma=
pfb: failed to find default display</div>
<div style=3D"margin:0px;padding:0px;border:0px;vertical-align:baseline">om=
apfb omapfb: failed to setup omapfb</div><div style=3D"margin:0px;padding:0=
px;border:0px;vertical-align:baseline">omapfb: probe of omapfb failed with =
error -22</div>
<div style=3D"margin:0px;padding:0px;border:0px;vertical-align:baseline">om=
ap_uart.0: ttyO0 at MMIO 0x4806a000 (irq =3D 88) is a OMAP UART0</div><div =
style=3D"margin:0px;padding:0px;border:0px;vertical-align:baseline">omap_ua=
rt.1: ttyO1 at MMIO 0x4806c000 (irq =3D 89) is a OMAP UART1</div>
<div style=3D"margin:0px;padding:0px;border:0px;vertical-align:baseline">om=
ap_uart.2: ttyO2 at MMIO 0x49020000 (irq =3D 90) is a OMAP UART2</div><div =
style=3D"margin:0px;padding:0px;border:0px;vertical-align:baseline">console=
 [ttyO2] enabled</div>
<div style=3D"margin:0px;padding:0px;border:0px;vertical-align:baseline">om=
ap_uart.3: ttyO3 at MMIO 0x49042000 (irq =3D 96) is a OMAP UART3</div><div =
style=3D"margin:0px;padding:0px;border:0px;vertical-align:baseline">brd: mo=
dule loaded</div>
<div style=3D"margin:0px;padding:0px;border:0px;vertical-align:baseline">Tr=
ying ONFI probe in 16 bits mode, aborting !</div><div style=3D"margin:0px;p=
adding:0px;border:0px;vertical-align:baseline">NAND device: Manufacturer ID=
: 0x2c, Chip ID: 0xba (Micron NAND 256MiB 1,8V 16-bit), 256MiB, page size: =
2048, OOB size: 64</div>
<div style=3D"margin:0px;padding:0px;border:0px;vertical-align:baseline">Cr=
eating 5 MTD partitions on &quot;omap2-nand.0&quot;:</div><div style=3D"mar=
gin:0px;padding:0px;border:0px;vertical-align:baseline">0x000000000000-0x00=
0000080000 : &quot;X-Loader&quot;</div>
<div style=3D"margin:0px;padding:0px;border:0px;vertical-align:baseline">0x=
000000080000-0x000000260000 : &quot;U-Boot&quot;</div><div style=3D"margin:=
0px;padding:0px;border:0px;vertical-align:baseline">0x000000260000-0x000000=
280000 : &quot;U-Boot Env&quot;</div>
<div style=3D"margin:0px;padding:0px;border:0px;vertical-align:baseline">0x=
000000280000-0x000000680000 : &quot;Kernel&quot;</div><div style=3D"margin:=
0px;padding:0px;border:0px;vertical-align:baseline">0x000000680000-0x000010=
000000 : &quot;File System&quot;</div>
<div style=3D"margin:0px;padding:0px;border:0px;vertical-align:baseline">us=
bcore: registered new interface driver kaweth</div><div style=3D"margin:0px=
;padding:0px;border:0px;vertical-align:baseline">pegasus: v0.9.3 (2013/04/2=
5), Pegasus/Pegasus II USB Ethernet driver</div>
<div style=3D"margin:0px;padding:0px;border:0px;vertical-align:baseline">us=
bcore: registered new interface driver pegasus</div><div style=3D"margin:0p=
x;padding:0px;border:0px;vertical-align:baseline">usbcore: registered new i=
nterface driver rtl8150</div>
<div style=3D"margin:0px;padding:0px;border:0px;vertical-align:baseline">us=
bcore: registered new interface driver asix</div><div style=3D"margin:0px;p=
adding:0px;border:0px;vertical-align:baseline">usbcore: registered new inte=
rface driver ax88179_178a</div>
<div style=3D"margin:0px;padding:0px;border:0px;vertical-align:baseline">us=
bcore: registered new interface driver cdc_ether</div><div style=3D"margin:=
0px;padding:0px;border:0px;vertical-align:baseline">usbcore: registered new=
 interface driver dm9601</div>
<div style=3D"margin:0px;padding:0px;border:0px;vertical-align:baseline">us=
bcore: registered new interface driver smsc75xx</div><div style=3D"margin:0=
px;padding:0px;border:0px;vertical-align:baseline">usbcore: registered new =
interface driver smsc95xx</div>
<div style=3D"margin:0px;padding:0px;border:0px;vertical-align:baseline">us=
bcore: registered new interface driver net1080</div><div style=3D"margin:0p=
x;padding:0px;border:0px;vertical-align:baseline">usbcore: registered new i=
nterface driver cdc_subset</div>
<div style=3D"margin:0px;padding:0px;border:0px;vertical-align:baseline">us=
bcore: registered new interface driver zaurus</div><div style=3D"margin:0px=
;padding:0px;border:0px;vertical-align:baseline">usbcore: registered new in=
terface driver MOSCHIP usb-ethernet driver</div>
<div style=3D"margin:0px;padding:0px;border:0px;vertical-align:baseline">us=
bcore: registered new interface driver int51x1</div><div style=3D"margin:0p=
x;padding:0px;border:0px;vertical-align:baseline">usbcore: registered new i=
nterface driver cdc_ncm</div>
<div style=3D"margin:0px;padding:0px;border:0px;vertical-align:baseline">eh=
ci_hcd: USB 2.0 &#39;Enhanced&#39; Host Controller (EHCI) Driver</div><div =
style=3D"margin:0px;padding:0px;border:0px;vertical-align:baseline">ehci-om=
ap: OMAP-EHCI Host Controller driver</div>
<div style=3D"margin:0px;padding:0px;border:0px;vertical-align:baseline">un=
able to find transceiver</div><div style=3D"margin:0px;padding:0px;border:0=
px;vertical-align:baseline">unable to find transceiver</div><div style=3D"m=
argin:0px;padding:0px;border:0px;vertical-align:baseline">
ehci-omap ehci-omap.0: EHCI Host Controller</div><div style=3D"margin:0px;p=
adding:0px;border:0px;vertical-align:baseline">ehci-omap ehci-omap.0: new U=
SB bus registered, assigned bus number 1</div><div style=3D"margin:0px;padd=
ing:0px;border:0px;vertical-align:baseline">
ehci-omap ehci-omap.0: can&#39;t setup</div><div style=3D"margin:0px;paddin=
g:0px;border:0px;vertical-align:baseline">ehci-omap ehci-omap.0: USB bus 1 =
deregistered</div><div style=3D"margin:0px;padding:0px;border:0px;vertical-=
align:baseline">
ehci-omap ehci-omap.0: failed to add hcd with err -110</div><div style=3D"m=
argin:0px;padding:0px;border:0px;vertical-align:baseline">ehci-omap: probe =
of ehci-omap.0 failed with error -110</div><div style=3D"margin:0px;padding=
:0px;border:0px;vertical-align:baseline">
usbcore: registered new interface driver usb-storage</div><div style=3D"mar=
gin:0px;padding:0px;border:0px;vertical-align:baseline">unable to find tran=
sceiver</div><div style=3D"margin:0px;padding:0px;border:0px;vertical-align=
:baseline">
HS USB OTG: no transceiver configured</div><div style=3D"margin:0px;padding=
:0px;border:0px;vertical-align:baseline">musb-hdrc musb-hdrc.1.auto: musb_i=
nit_controller failed with status -517</div><div style=3D"margin:0px;paddin=
g:0px;border:0px;vertical-align:baseline">
platform musb-hdrc.1.auto: Driver musb-hdrc requests probe deferral</div><d=
iv style=3D"margin:0px;padding:0px;border:0px;vertical-align:baseline">mous=
edev: PS/2 mouse device common for all mice</div><div style=3D"margin:0px;p=
adding:0px;border:0px;vertical-align:baseline">
twl_rtc twl_rtc: Power up reset detected.</div><div style=3D"margin:0px;pad=
ding:0px;border:0px;vertical-align:baseline">twl_rtc twl_rtc: Enabling TWL-=
RTC</div><div style=3D"margin:0px;padding:0px;border:0px;vertical-align:bas=
eline">
twl_rtc twl_rtc: rtc core: registered twl_rtc as rtc0</div><div style=3D"ma=
rgin:0px;padding:0px;border:0px;vertical-align:baseline">omap_wdt: OMAP Wat=
chdog Timer Rev 0x31: initial timeout 60 sec</div><div style=3D"margin:0px;=
padding:0px;border:0px;vertical-align:baseline">
cpuidle: using governor ladder</div><div style=3D"margin:0px;padding:0px;bo=
rder:0px;vertical-align:baseline">cpuidle: using governor menu</div><div st=
yle=3D"margin:0px;padding:0px;border:0px;vertical-align:baseline">omap-dma-=
engine omap-dma-engine: allocating channel for 62</div>
<div style=3D"margin:0px;padding:0px;border:0px;vertical-align:baseline">om=
ap-dma-engine omap-dma-engine: allocating channel for 61</div><div style=3D=
"margin:0px;padding:0px;border:0px;vertical-align:baseline">usbcore: regist=
ered new interface driver usbhid</div>
<div style=3D"margin:0px;padding:0px;border:0px;vertical-align:baseline">us=
bhid: USB HID core driver</div><div style=3D"margin:0px;padding:0px;border:=
0px;vertical-align:baseline">mmc0: SD Status: Invalid Allocation Unit size.=
</div>
<div style=3D"margin:0px;padding:0px;border:0px;vertical-align:baseline">mm=
c0: host does not support reading read-only switch. assuming write-enable.<=
/div><div style=3D"margin:0px;padding:0px;border:0px;vertical-align:baselin=
e">
mmc0: new SDHC card at address 4567</div><div style=3D"margin:0px;padding:0=
px;border:0px;vertical-align:baseline">mmcblk0: mmc0:4567 QEMU! 3.63 GiB=A0=
</div><div style=3D"margin:0px;padding:0px;border:0px;vertical-align:baseli=
ne">
omap-twl4030 omap-twl4030: =A0twl4030-hifi &lt;-&gt; omap-mcbsp.2 mapping o=
k</div><div style=3D"margin:0px;padding:0px;border:0px;vertical-align:basel=
ine">oprofile: using arm/armv7</div><div style=3D"margin:0px;padding:0px;bo=
rder:0px;vertical-align:baseline">
u32 classifier</div><div style=3D"margin:0px;padding:0px;border:0px;vertica=
l-align:baseline">=A0 =A0 Actions configured</div><div style=3D"margin:0px;=
padding:0px;border:0px;vertical-align:baseline">TCP: cubic registered</div>=
<div style=3D"margin:0px;padding:0px;border:0px;vertical-align:baseline">
NET: Registered protocol family 10</div><div style=3D"margin:0px;padding:0p=
x;border:0px;vertical-align:baseline">sit: IPv6 over IPv4 tunneling driver<=
/div><div style=3D"margin:0px;padding:0px;border:0px;vertical-align:baselin=
e">
NET: Registered protocol family 17</div><div style=3D"margin:0px;padding:0p=
x;border:0px;vertical-align:baseline">Key type dns_resolver registered</div=
><div style=3D"margin:0px;padding:0px;border:0px;vertical-align:baseline">V=
FP support v0.3: implementor 41 architecture 3 part 30 variant c rev 2</div=
>
<div style=3D"margin:0px;padding:0px;border:0px;vertical-align:baseline">Th=
umbEE CPU extension supported.</div><div style=3D"margin:0px;padding:0px;bo=
rder:0px;vertical-align:baseline">VDVI: incomplete constraints, leaving on<=
/div>
<div style=3D"margin:0px;padding:0px;border:0px;vertical-align:baseline">VD=
AC: incomplete constraints, leaving on</div><div style=3D"margin:0px;paddin=
g:0px;border:0px;vertical-align:baseline">unable to find transceiver</div><=
div style=3D"margin:0px;padding:0px;border:0px;vertical-align:baseline">
HS USB OTG: no transceiver configured</div><div style=3D"margin:0px;padding=
:0px;border:0px;vertical-align:baseline">musb-hdrc musb-hdrc.1.auto: musb_i=
nit_controller failed with status -517</div><div style=3D"margin:0px;paddin=
g:0px;border:0px;vertical-align:baseline">
platform musb-hdrc.1.auto: Driver musb-hdrc requests probe deferral</div><d=
iv style=3D"margin:0px;padding:0px;border:0px;vertical-align:baseline">cons=
ole [netcon0] enabled</div><div style=3D"margin:0px;padding:0px;border:0px;=
vertical-align:baseline">
netconsole: network logging started</div><div style=3D"margin:0px;padding:0=
px;border:0px;vertical-align:baseline">twl_rtc twl_rtc: setting system cloc=
k to 2014-03-13 18:38:20 UTC (1394735900)</div><div style=3D"margin:0px;pad=
ding:0px;border:0px;vertical-align:baseline">
ALSA device list:</div><div style=3D"margin:0px;padding:0px;border:0px;vert=
ical-align:baseline">=A0 #0: omap3beagle</div></div></div>

--047d7bdc945e28e6bb04f4818f51--
