Return-Path: <bianchirickkutta@gmail.com>
Received: from mail-vc0-f179.google.com (mail-vc0-f179.google.com
	[209.85.220.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B05E5E00B1E
	for <yocto@yoctoproject.org>; Wed, 19 Mar 2014 09:45:57 -0700 (PDT)
Received: by mail-vc0-f179.google.com with SMTP id ij19so9623463vcb.10
	for <yocto@yoctoproject.org>; Wed, 19 Mar 2014 09:45:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=JejkLo+so/rh33BiTmJN/pVgVa47wy3BuGDRHPmRX2E=;
	b=WPzcs1Pb9Z1Gz3YsXtv03wwSg/CqO/mmgoqCZBU1MgjOfodqvSjwkM70o+PU4QcrF0
	ywrZseLMhIBWWpo+vDm43j4k+XrF6XaQJnwNX/MLymm9rG2R3Nztwae9tK0um9xQ8r77
	qfi18IAodhn5rbBBxKVvTend7z+4PSd0aLNdH0udV0oIuorXwyLlYBEuSX7oUKaHZf82
	it1UyHT76jlV3KDbip/bG8DJW190EzdCd4xEAWHGXuy+E5o//o+2Fs6QfPBMBq0la89G
	UvPeIZTx+lOSF6jqOqxKqMrOODzXbyC+knCW1IML5PDJreZr5Kc4S4aFzzhXUIZFrOLb
	Bfig==
MIME-Version: 1.0
X-Received: by 10.53.1.69 with SMTP id be5mr11603314vdd.27.1395247557217; Wed,
	19 Mar 2014 09:45:57 -0700 (PDT)
Received: by 10.220.96.66 with HTTP; Wed, 19 Mar 2014 09:45:57 -0700 (PDT)
In-Reply-To: <532893E3.9010405@mlbassoc.com>
References: <CAA7h+EpU6RVwbewuJ6r04+O2CvjPBpP1z86dpAthm4_cBrrO+Q@mail.gmail.com>
	<53207D25.2040309@mlbassoc.com>
	<CAA7h+Eomb_92298Y1NDmtTNiTmNcbivytLd9xT=1FVZ+My=PAw@mail.gmail.com>
	<5320AB11.4060303@mlbassoc.com>
	<CAA7h+EoYviRS34heBABgE-o1eQP0po=rVgE-Tc98vSg16F-5+g@mail.gmail.com>
	<5323147A.8000400@mlbassoc.com>
	<CAA7h+EpRdEuYERe+N2enPyPDuP1fN+qE_PD9NnEGHYDV2wwP+Q@mail.gmail.com>
	<53237FCF.8020700@mlbassoc.com>
	<CAA7h+EprV97+okAJhq=b9jZrJz0UhegC3D0cDhSNsgboS4by6A@mail.gmail.com>
	<CAA7h+ErZGg61XAYC5fZ2cLyeKfo7Ge_U9ZPGfNy2a+TMqiA76A@mail.gmail.com>
	<53288899.8090702@mlbassoc.com>
	<CAA7h+EpfhqXRPhdzEardavHfhM=d3b7AuPq3+GA=zobvReaOpg@mail.gmail.com>
	<532893E3.9010405@mlbassoc.com>
Date: Wed, 19 Mar 2014 09:45:57 -0700
Message-ID: <CAA7h+EobGi81x0HKSn57cioX07zW0uvV+my=bRvi6ERvE9b+KA@mail.gmail.com>
From: Rick Bianchi <bianchirickkutta@gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Building on target
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
X-List-Received-Date: Wed, 19 Mar 2014 16:46:01 -0000
Content-Type: multipart/alternative; boundary=001a113601540593a704f4f86308

--001a113601540593a704f4f86308
Content-Type: text/plain; charset=ISO-8859-1

Gary,
I did, " sed -i s/VERBOSE=no/VERBOSE=very/ /etc/default/rcS" I am not
seeing  any "INIT:"

"Did you try turning on the verbose mode? If so, you should see a line like
this during shutdown:
INIT: [2014-03-18 17:33:20.978789236] Running /etc/rc6.d/S25save-rtc.sh
stop...
and another like these on reboot:
INIT: [1970-01-01 00:00:05.079166199] Running /etc/rcS.d/S40networking
start...
  INIT: [1970-01-01 00:00:05.103022145] Running /etc/rcS.d/S55bootmisc.sh
start..."




Shutdown:
reboot
[ 107.809967] systemd-logind[159]: Failed to stop user slice: Connection is
closed
[\0x1b[32m OK \0x1b[0m] Stopped Serial Getty on ttyO2.
[\0x1b[32m OK \0x1b[0m] Stopped LSB: Remove /etc/nologin at boot.
[\0x1b[32m OK \0x1b[0m] Stopped stop-bootlogd.service.
Stopping LSB: simple distributed compiler client and server...
Stopping bind.service...
[\0x1b[32m OK \0x1b[0m] Removed slice system-serial\x2dgetty.slice.
[\0x1b[32m OK \0x1b[0m] Removed slice system-getty.slice.
[\0x1b[32m OK \0x1b[0m] Stopped Automounts filesystems on demand.
[\0x1b[32m OK \0x1b[0m] Stopped LSB: simple distributed compiler client and
server.
[\0x1b[32m OK \0x1b[0m] Removed slice user-0.slice.
Stopping Permit User Sessions...
[\0x1b[32m OK \0x1b[0m] Started Store Sound Card State.
[\0x1b[32m OK \0x1b[0m] Stopped Permit User Sessions.
[\0x1b[32m OK \0x1b[0m] Stopped target Remote File Systems.
[\0x1b[32m OK \0x1b[0m] Stopped bind.service.
[\0x1b[32m OK \0x1b[0m] Stopped target Basic System.
[\0x1b[32m OK \0x1b[0m] Stopped target Slices.
[\0x1b[32m OK \0x1b[0m] Removed slice User and Session Slice.
[\0x1b[32m OK \0x1b[0m] Stopped target Paths.
[\0x1b[32m OK \0x1b[0m] Stopped target Timers.
[\0x1b[32m OK \0x1b[0m] Stopped target Sockets.
[\0x1b[32m OK \0x1b[0m] Closed sshd.socket.
[\0x1b[32m OK \0x1b[0m] Closed Avahi mDNS/DNS-SD Stack Activation Socket.
[\0x1b[32m OK \0x1b[0m] Closed Syslog Socket.
[\0x1b[32m OK \0x1b[0m] Closed D-Bus System Message Bus Socket.
[\0x1b[32m OK \0x1b[0m] Stopped target System Initialization.
Stopping Update UTMP about System Reboot/Shutdown...
Stopping Load/Save Random Seed...
Stopping Apply Kernel Variables...
[\0x1b[32m OK \0x1b[0m] Stopped Apply Kernel Variables.
[\0x1b[32m OK \0x1b[0m] Stopped target Swap.
[\0x1b[32m OK \0x1b[0m] Stopped Update UTMP about System Reboot/Shutdown.
Stopping Recreate Volatile Files and Directories...
[\0x1b[32m OK \0x1b[0m] Stopped Recreate Volatile Files and Directories.
[\0x1b[32m OK \0x1b[0m] Stopped target Local File Systems.
Unmounting /var/volatile...
Unmounting Temporary Directory...
[\0x1b[32m OK \0x1b[0m] Unmounted /var/volatile.
[\0x1b[32m OK \0x1b[0m] Stopped target Local File Systems (Pre).
[\0x1b[32m OK \0x1b[0m] Failed unmounting Temporary Directory.
[\0x1b[32m OK \0x1b[0m] Reached target Unmount All Filesystems.
[\0x1b[32m OK \0x1b[0m] Stopped Load/Save Random Seed.
Stopping Remount Root and Kernel File Systems...
[\0x1b[32m OK \0x1b[0m] Stopped Remount Root and Kernel File Systems.
[\0x1b[32m OK \0x1b[0m] Reached target Shutdown.
[ 110.805908] twl4030_wdt twl4030_wdt: Timeout can only be in the range
[0-30] seconds
[ 110.818450] twl4030_wdt twl4030_wdt: Unexpected close, watchdog still
running!
Sending SIGTERM to remaining processes...
[ 110.930816] systemd-journald[64]: Received SIGTERM
Sending SIGKILL to remaining processes...
Hardware watchdog 'TWL4030 Watchdog', version 0
Unmounting file systems.
Unmounting /tmp.
Unmounting /sys/fs/fuse/connections.
Unmounting /sys/kernel/debug.
All filesystems unmounted.
Deactivating swaps.
All swaps deactivated.
Detaching loop devices.
All loop devices detached.
Detaching DM devices.
All DM devices detached.
Storage is finalized.
[ 113.233001] Restarting system.
\0x04\0x01\0x05\0x05\0xb3\0x04t\0xd8\0xb0b\0x81\0x01\0x00$U\0x16\0x0c
@\0x00\0x00\0x00\0x01\0x04\0x08 @\0x00\0x00\0x00\0x01\0x04\0x08
@\0x00\0x00\0x00\0x01D\0xa8\0xb1`\0x00\0x00\0x00\0x01\0x04\0x08
@\0x00\0x00\0x00\0x01\0x04\0x08 @\0x00\0x00\0x00\0x01\0x04\0x08\0xe0
U-Boot SPL 2014.01 (Mar 18 2014 - 17:55:47)
reading u-boot.img
reading u-boot.img


Startup:
Booting from mmc ...
## Booting kernel from Legacy Image at 82000000 ...
Image Name: Linux-3.5.7-yocto-standard
Image Type: ARM Linux Kernel Image (uncompressed)
Data Size: 3460936 Bytes = 3.3 MiB
Load Address: 80008000
Entry Point: 80008000
Verifying Checksum ... OK
Loading Kernel Image ... OK

Starting kernel ...

Uncompressing Linux... done, booting the kernel.
[ 0.000000] Booting Linux on physical CPU 0
[ 0.000000] Initializing cgroup subsys cpuset
[ 0.000000] Initializing cgroup subsys cpu
[ 0.000000] Linux version 3.5.7-yocto-standard (gumstix@gumstix-build-server)
(gcc version 4.8.1 (GCC) ) #1 PREEMPT Tue Mar 18 17:02:53 MST 2014
[ 0.000000] CPU: ARMv7 Processor [413fc082] revision 2 (ARMv7), cr=10c53c7d
[ 0.000000] CPU: PIPT / VIPT nonaliasing data cache, VIPT aliasing
instruction cache
[ 0.000000] Machine: Gumstix Overo
[ 0.000000] Reserving 12582912 bytes SDRAM for VRAM
[ 0.000000] Memory policy: ECC disabled, Data cache writeback
[ 0.000000] OMAP3630 ES1.2 (l2cache iva sgx neon isp 192mhz_clk )
[ 0.000000] Clocking rate (Crystal/Core/MPU): 26.0/400/600 MHz
[ 0.000000] Built 1 zonelists in Zone order, mobility grouping on. Total
pages: 126720
[ 0.000000] Kernel command line: console=ttyO2,115200n8 mpurate=500
vram=12M omapfb.mode=dvi:1024x768MR-16@60 omapdss.def_disp=dvi
root=/dev/mmcblk0p2 rw rootfstype=ext3 rootwait
[ 0.000000] PID hash table entries: 2048 (order: 1, 8192 bytes)
[ 0.000000] Dentry cache hash table entries: 65536 (order: 6, 262144 bytes)
[ 0.000000] Inode-cache hash table entries: 32768 (order: 5, 131072 bytes)
[ 0.000000] allocated 1048576 bytes of page_cgroup
[ 0.000000] please try 'cgroup_disable=memory' option if you don't want
memory cgroups
[ 0.000000] Memory: 499MB = 499MB total
[ 0.000000] Memory: 497764k/497764k available, 26524k reserved, 0K highmem
[ 0.000000] Virtual kernel memory layout:
[ 0.000000] vector : 0xffff0000 - 0xffff1000 ( 4 kB)
[ 0.000000] fixmap : 0xfff00000 - 0xfffe0000 ( 896 kB)
[ 0.000000] vmalloc : 0xe0800000 - 0xff000000 ( 488 MB)
[ 0.000000] lowmem : 0xc0000000 - 0xe0000000 ( 512 MB)
[ 0.000000] pkmap : 0xbfe00000 - 0xc0000000 ( 2 MB)
[ 0.000000] modules : 0xbf000000 - 0xbfe00000 ( 14 MB)
[ 0.000000] .text : 0xc0008000 - 0xc0648be8 (6403 kB)
[ 0.000000] .init : 0xc0649000 - 0xc0682938 ( 231 kB)
[ 0.000000] .data : 0xc0684000 - 0xc06ec6d0 ( 418 kB)
[ 0.000000] .bss : 0xc06ec6f4 - 0xc07773a0 ( 556 kB)
[ 0.000000] NR_IRQS:474
[ 0.000000] IRQ: Found an INTC at 0xfa200000 (revision 4.0) with 96
interrupts
[ 0.000000] Total of 96 interrupts on 1 active controller
[ 0.000000] OMAP clockevent source: GPTIMER1 at 32768 Hz
[ 0.000000] sched_clock: 32 bits at 32kHz, resolution 30517ns, wraps every
131071999ms
[ 0.000000] OMAP clocksource: 32k_counter at 32768 Hz
[ 0.000000] Console: colour dummy device 80x30
[ 0.000213] Calibrating delay loop... 597.64 BogoMIPS (lpj=2334720)
[ 0.039123] pid_max: default: 32768 minimum: 301
[ 0.039306] Security Framework initialized
[ 0.039398] Mount-cache hash table entries: 512
[ 0.040130] Initializing cgroup subsys debug
[ 0.040161] Initializing cgroup subsys cpuacct
[ 0.040161] Initializing cgroup subsys memory
[ 0.040222] Initializing cgroup subsys devices
[ 0.040222] Initializing cgroup subsys freezer
[ 0.040252] Initializing cgroup subsys perf_event
[ 0.040374] CPU: Testing write buffer coherency: ok
[ 0.040618] Setting up static identity map for 0x8045af78 - 0x8045afd0
[ 0.046081] devtmpfs: initialized
[ 0.050567] dummy:
[ 0.050933] NET: Registered protocol family 16
[ 0.051300] GPMC revision 5.0
[ 0.051361] gpmc: irq-20 could not claim: err -22
[ 0.053039] OMAP GPIO hardware version 2.5
[ 0.055297] omap_mux_init: Add partition: #1: core, flags: 0
[ 0.060180] _omap_mux_get_by_name: Could not find signal uart4_rx.uart4_rx
[ 0.065979] Reprogramming SDRC clock to 400000000 Hz
[ 0.066009] dpll3_m2_clk rate change failed: -22
[ 0.066009] Found NAND on CS0
[ 0.066040] Registering NAND on CS0
[ 0.067291] usbhs_omap: alias fck already exists
[ 0.074707] hw-breakpoint: debug architecture 0x4 unsupported.
[ 0.077606] omap-mcbsp.2: alias fck already exists
[ 0.077789] omap-mcbsp.3: alias fck already exists
[ 0.078887] Switched to new clocking rate (Crystal/Core/MPU): 26.0/400/500
MHz
[ 0.079101] OMAP DMA hardware revision 5.0
[ 0.088562] bio: create slab <bio-0> at 0
[ 0.089385] fixed-dummy:
[ 0.089782] vads7846: 3300 mV
[ 0.090667] SCSI subsystem initialized
[ 0.091033] usbcore: registered new interface driver usbfs
[ 0.091186] usbcore: registered new interface driver hub
[ 0.091430] usbcore: registered new device driver usb
[ 0.101684] omap_i2c omap_i2c.1: bus 1 rev1.4.0 at 2600 kHz
[ 0.104644] twl 1-0048: PIH (irq 7) chaining IRQs 320..328
[ 0.104797] twl 1-0048: power (irq 325) chaining IRQs 328..335
[ 0.105468] twl4030_gpio twl4030_gpio: gpio (irq 320) chaining IRQs 336..353
[ 0.106781] VUSB1V5: 1500 mV normal standby
[ 0.107360] VUSB1V8: 1800 mV normal standby
[ 0.107879] VUSB3V1: 3100 mV normal standby
[ 0.109863] twl4030_usb twl4030_usb: Initialized TWL4030 USB module
[ 0.110504] vdd_mpu_iva: 600 <--> 1450 mV normal
[ 0.110992] vdd_core: 600 <--> 1450 mV normal
[ 0.111602] VMMC1: 1850 <--> 3150 mV at 3150 mV normal standby
[ 0.112243] VDAC: 1800 mV normal standby
[ 0.112854] VDVI: 1800 mV normal standby
[ 0.125122] omap_i2c omap_i2c.3: bus 3 rev1.4.0 at 400 kHz
[ 0.126007] omap-iommu omap-iommu.0: isp registered
[ 0.126251] Advanced Linux Sound Architecture Driver Version 1.0.25.
[ 0.127258] Switching to clocksource 32k_counter
[ 0.160034] usbhs_omap usbhs_omap: xclk60mhsp2_ck set parentfailed error:-22
[ 0.160919] NET: Registered protocol family 2
[ 0.161254] IP route cache hash table entries: 4096 (order: 2, 16384 bytes)
[ 0.161895] TCP established hash table entries: 16384 (order: 5, 131072
bytes)
[ 0.162322] TCP bind hash table entries: 16384 (order: 4, 65536 bytes)
[ 0.162567] TCP: Hash tables configured (established 16384 bind 16384)
[ 0.162597] TCP: reno registered
[ 0.162628] UDP hash table entries: 256 (order: 0, 4096 bytes)
[ 0.162628] UDP-Lite hash table entries: 256 (order: 0, 4096 bytes)
[ 0.162994] NET: Registered protocol family 1
[ 0.163604] RPC: Registered named UNIX socket transport module.
[ 0.163635] RPC: Registered udp transport module.
[ 0.163635] RPC: Registered tcp transport module.
[ 0.163635] RPC: Registered tcp NFSv4.1 backchannel transport module.
[ 0.166625] audit: initializing netlink socket (disabled)
[ 0.166687] type=2000 audit(0.164:1): initialized
[ 0.168365] VFS: Disk quotas dquot_6.5.2
[ 0.168457] Dquot-cache hash table entries: 1024 (order 0, 4096 bytes)
[ 0.168884] NFS: Registering the id_resolver key type
[ 0.168975] Key type id_resolver registered
[ 0.169006] Key type id_legacy registered
[ 0.169555] jffs2: version 2.2. (NAND) (SUMMARY) \0xc2\0xa9 2001-2006 Red
Hat, Inc.
[ 0.170379] fuse init (API version 7.19)
[ 0.170959] msgmni has been set to 972
[ 0.173004] Block layer SCSI generic (bsg) driver version 0.4 loaded (major
253)
[ 0.173034] io scheduler noop registered
[ 0.173034] io scheduler deadline registered (default)
[ 0.173950] OMAP DSS rev 2.0
[ 0.177764] omap_uart.0: ttyO0 at MMIO 0x4806a000 (irq = 72) is a OMAP UART0
[ 0.178314] omap_uart.1: ttyO1 at MMIO 0x4806c000 (irq = 73) is a OMAP UART1
[ 0.178833] omap_uart.2: ttyO2 at MMIO 0x49020000 (irq = 74) is a OMAP UART2
[ 0.871154] console [ttyO2] enabled
[ 0.875335] omap_uart.3: ttyO3 at MMIO 0x49042000 (irq = 80) is a OMAP UART3
[ 0.892883] brd: module loaded
[ 0.901367] loop: module loaded
[ 0.906829] twl4030_madc twl4030_madc: clk disabled, enabling
[ 0.915222] NAND device: Manufacturer ID: 0x2c, Chip ID: 0xbc (Micron NAND
512MiB 1,8V 16-bit), page size: 2048, OOB size: 64
[ 0.927795] Creating 5 MTD partitions on "omap2-nand.0":
[ 0.933471] 0x000000000000-0x000000080000 : "xloader"
[ 0.940734] 0x000000080000-0x000000240000 : "uboot"
[ 0.948852] 0x000000240000-0x000000280000 : "uboot environment"
[ 0.956634] 0x000000280000-0x000000a80000 : "linux"
[ 0.970886] 0x000000a80000-0x000020000000 : "rootfs"
[ 1.478271] smsc911x: Driver version 2008-10-21
[ 1.485168] smsc911x-mdio: probed
[ 1.488861] smsc911x smsc911x.0: eth0: attached PHY driver [Generic PHY]
(mii_bus:phy_addr=smsc911x-0:01, irq=-1)
[ 1.499908] smsc911x smsc911x.0: eth0: MAC Address: 00:15:c9:29:01:ed
[ 1.506744] smsc911x: Driver version 2008-10-21
[ 1.512176] usbcore: registered new interface driver kaweth
[ 1.518188] usbcore: registered new interface driver asix
[ 1.523956] usbcore: registered new interface driver cdc_ether
[ 1.530242] usbcore: registered new interface driver cdc_ncm
[ 1.536590] ehci_hcd: USB 2.0 'Enhanced' Host Controller (EHCI) Driver
[ 1.543701] ehci-omap.0 supply hsusb1 not found, using dummy regulator
[ 2.557220] ehci-omap ehci-omap.0: OMAP-EHCI Host Controller
[ 2.563568] ehci-omap ehci-omap.0: new USB bus registered, assigned bus
number 1
[ 2.571533] ehci-omap ehci-omap.0: irq 77, io mem 0x48064800
[ 2.588378] ehci-omap ehci-omap.0: USB 2.0 started, EHCI 1.00
[ 2.594696] usb usb1: New USB device found, idVendor=1d6b, idProduct=0002
[ 2.601867] usb usb1: New USB device strings: Mfr=3, Product=2,
SerialNumber=1
[ 2.609497] usb usb1: Product: OMAP-EHCI Host Controller
[ 2.615142] usb usb1: Manufacturer: Linux 3.5.7-yocto-standard ehci_hcd
[ 2.622100] usb usb1: SerialNumber: ehci-omap.0
[ 2.627929] hub 1-0:1.0: USB hub found
[ 2.631896] hub 1-0:1.0: 3 ports detected
[ 2.666564] Initializing USB Mass Storage driver...
[ 2.671844] usbcore: registered new interface driver usb-storage
[ 2.678192] USB Mass Storage support registered.
[ 2.683074] musb-hdrc: version 6.0, ?dma?, otg (peripheral+host)
[ 2.696685] musb-hdrc musb-hdrc: USB OTG mode controller at fa0ab000 using
DMA, IRQ 92
[ 2.707794] mousedev: PS/2 mouse device common for all mice
[ 2.714538] twl_rtc twl_rtc: Enabling TWL-RTC
[ 2.722045] twl_rtc twl_rtc: rtc core: registered twl_rtc as rtc0
[ 2.729278] i2c /dev entries driver
[ 2.734680] voltdm_scale: No voltage scale API registered for vdd_mpu_iva
[ 2.742095] platform mpu.0: omap_target: unable to scale voltage up.
[ 2.748840] cpuidle: using governor ladder
[ 2.753173] cpuidle: using governor menu
[ 2.757873] omap_hsmmc omap_hsmmc.0: Failed to get debounce clk
[ 2.764343] omap_hsmmc.0 supply vmmc_aux not found, using dummy regulator
[ 2.963378] usb 1-2: new high-speed USB device number 2 using ehci-omap
[ 3.120330] usb 1-2: New USB device found, idVendor=0409, idProduct=005a
[ 3.127441] usb 1-2: New USB device strings: Mfr=0, Product=0,
SerialNumber=0
[ 3.135986] hub 1-2:1.0: USB hub found
[ 3.140045] hub 1-2:1.0: 4 ports detected
[ 3.144836] omap_hsmmc omap_hsmmc.1: Failed to get debounce clk
[ 3.151428] omap_hsmmc.1 supply vmmc not found, using dummy regulator
[ 3.158569] omap_hsmmc.1 supply vmmc_aux not found, using dummy regulator
[ 3.170104] omap_hsmmc omap_hsmmc.1: could not set regulator OCR (-22)
[ 3.177246] omap_hsmmc omap_hsmmc.1: could not set regulator OCR (-22)
[ 3.232452] usbcore: registered new interface driver usbhid
[ 3.238494] usbhid: USB HID core driver
[ 3.243682] usbcore: registered new interface driver snd-usb-audio
[ 3.251831] overo SoC init
[ 3.254943] soc-audio soc-audio: ASoC machine overo should use
snd_soc_register_card()
[ 3.355590] twl4030-codec twl4030-codec: ASoC: Failed to create Capture
debugfs file
[ 3.367553] asoc: twl4030-hifi <-> omap-mcbsp.2 mapping ok
[ 3.379608] oprofile: hardware counters not available
[ 3.384918] oprofile: using timer interrupt.
[ 3.389953] TCP: cubic registered
[ 3.393585] NET: Registered protocol family 17
[ 3.398376] NET: Registered protocol family 15
[ 3.403411] Key type dns_resolver registered
[ 3.408447] VFP support v0.3: implementor 41 architecture 3 part 30 variant
c rev 3
[ 3.422302] ThumbEE CPU extension supported.
[ 3.427001] sr_init: No PMIC hook to init smartreflex
[ 3.432922] smartreflex smartreflex.0: omap_sr_probe: SmartReflex driver
initialized
[ 3.441345] smartreflex smartreflex.1: omap_sr_probe: SmartReflex driver
initialized
[ 3.455993] usb 1-2.2: new low-speed USB device number 3 using ehci-omap
[ 3.467651] clock: disabling unused clocks to save power
[ 3.474884] registered taskstats version 1
[ 3.480499] fbcvt: 1024x768@60: CVT Name - .786M3-R
[ 3.487915] mmc0: host does not support reading read-only switch. assuming
write-enable.
[ 3.511932] Console: switching to colour frame buffer device 128x48
[ 3.504974] mmc0: new high speed SDHC card at address 0007
[ 3.510314] mmcblk0: mmc0:0007 SD32G 29.3 GiB
[ 3.512390] mmcblk0: p1 p2
[ 3.552551] VDAC: incomplete constraints, leaving on
[ 3.560546] twl_rtc twl_rtc: setting system clock to 2000-01-01 00:35:10
UTC (946686910)
[ 3.569274] ALSA device list:
[ 3.572448] #0: overo
[ 3.585662] mmc1: new SDIO card at address 0001
[ 3.590576] kjournald starting. Commit interval 5 seconds
[ 3.602508] usb 1-2.2: New USB device found, idVendor=413c, idProduct=2112
[ 3.609802] usb 1-2.2: New USB device strings: Mfr=1, Product=2,
SerialNumber=0
[ 3.617584] usb 1-2.2: Product: Dell USB Wired Multimedia Keyboard
[ 3.624114] usb 1-2.2: Manufacturer: DELL
[ 3.634887] input: DELL Dell USB Wired Multimedia Keyboard as
/devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.2/1-2.2:1.0/input/input0
[ 3.648742] hid-generic 0003:413C:2112.0001: input: USB HID v1.10 Keyboard
[DELL Dell USB Wired Multimedia Keyboard] on usb-ehci-omap.0-2.2/input0
[ 3.670684] input: DELL Dell USB Wired Multimedia Keyboard as
/devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.2/1-2.2:1.1/input/input1
[ 3.684509] hid-generic 0003:413C:2112.0002: input: USB HID v1.10 Device
[DELL Dell USB Wired Multimedia Keyboard] on usb-ehci-omap.0-2.2/input1
[ 3.784179] usb 1-2.3: new low-speed USB device number 4 using ehci-omap
[ 3.913696] usb 1-2.3: New USB device found, idVendor=04b3, idProduct=310c
[ 3.921020] usb 1-2.3: New USB device strings: Mfr=0, Product=2,
SerialNumber=0
[ 3.928771] usb 1-2.3: Product: USB Optical Mouse
[ 3.939056] input: USB Optical Mouse as
/devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/1-2.3:1.0/input/input2
[ 3.950958] hid-generic 0003:04B3:310C.0003: input: USB HID v1.11 Mouse
[USB Optical Mouse] on usb-ehci-omap.0-2.3/input0
[ 4.049835] usb 1-2.4: new high-speed USB device number 5 using ehci-omap
[ 4.176605] usb 1-2.4: New USB device found, idVendor=0bda, idProduct=0811
[ 4.183898] usb 1-2.4: New USB device strings: Mfr=1, Product=2,
SerialNumber=3
[ 4.191650] usb 1-2.4: Product: 802.11n WLAN Adapter
[ 4.196899] usb 1-2.4: Manufacturer: Realtek
[ 4.201416] usb 1-2.4: SerialNumber: 5CF3700CF299
[ 4.421539] EXT3-fs (mmcblk0p2): using internal journal
[ 4.427154] EXT3-fs (mmcblk0p2): mounted filesystem with writeback data mode
[ 4.434661] VFS: Mounted root (ext3 filesystem) on device 179:2.
[ 4.444610] devtmpfs: mounted
[ 4.448272] Freeing init memory: 228K
[ 4.742309] systemd[1]: systemd 206 running in system mode. (+PAM +LIBWRAP
-AUDIT -SELINUX +IMA +SYSVINIT -LIBCRYPTSETUP -GCRYPT +ACL +XZ)

Welcome to \0x1b[1mLinux\0x1b[0m!

[ 4.856475] NET: Registered protocol family 10
[ 4.862884] systemd[1]: Inserted module 'ipv6'
[ 4.871551] systemd[1]: Set hostname to <overo>.
[ 5.247406] systemd[1]: Cannot add dependency job for unit
display-manager.service, ignoring: Unit display-manager.service failed to
load: No such file or directory. See system logs and 'systemctl status
display-manager.service' for details.
[ 5.272369] systemd[1]: Starting Forward Password Requests to Wall
Directory Watch.
[ 5.281158] systemd[1]: Started Forward Password Requests to Wall Directory
Watch.
[ 5.289367] systemd[1]: Expecting device dev-ttyGS0.device...
Expecting device dev-ttyGS0.device...
[ 5.315795] systemd[1]: Expecting device dev-ttyO2.device...
Expecting device dev-ttyO2.device...
[ 5.339019] systemd[1]: Starting Remote File Systems.
[\0x1b[32m OK \0x1b[0m] Reached target Remote File Systems.
[ 5.362365] systemd[1]: Reached target Remote File Systems.
[ 5.368347] systemd[1]: Starting Syslog Socket.
[\0x1b[32m OK \0x1b[0m] Listening on Syslog Socket.
[ 5.385711] systemd[1]: Listening on Syslog Socket.
[ 5.390991] systemd[1]: Starting Delayed Shutdown Socket.
[\0x1b[32m OK \0x1b[0m] Listening on Delayed Shutdown Socket.
[ 5.416961] systemd[1]: Listening on Delayed Shutdown Socket.
[ 5.423126] systemd[1]: Starting /dev/initctl Compatibility Named Pipe.
[\0x1b[32m OK \0x1b[0m] Listening on /dev/initctl Compatibility Named Pipe.
[ 5.448303] systemd[1]: Listening on /dev/initctl Compatibility Named Pipe.
[ 5.455780] systemd[1]: Starting Root Slice.
[\0x1b[32m OK \0x1b[0m] Created slice Root Slice.
[ 5.479583] systemd[1]: Created slice Root Slice.
[ 5.484649] systemd[1]: Starting User and Session Slice.
[\0x1b[32m OK \0x1b[0m] Created slice User and Session Slice.
[ 5.510711] systemd[1]: Created slice User and Session Slice.
[ 5.516906] systemd[1]: Starting System Slice.
[\0x1b[32m OK \0x1b[0m] Created slice System Slice.
[ 5.542053] systemd[1]: Created slice System Slice.
[ 5.547363] systemd[1]: Starting Slices.
[\0x1b[32m OK \0x1b[0m] Reached target Slices.
[ 5.565490] systemd[1]: Reached target Slices.
[ 5.570281] systemd[1]: Starting system-getty.slice.
[\0x1b[32m OK \0x1b[0m] Created slice system-getty.slice.
[ 5.596954] systemd[1]: Created slice system-getty.slice.
[ 5.602783] systemd[1]: Starting system-serial\x2dgetty.slice.
[\0x1b[32m OK \0x1b[0m] Created slice system-serial\x2dgetty.slice.
[ 5.627990] systemd[1]: Created slice system-serial\x2dgetty.slice.
[ 5.634796] systemd[1]: Starting Journal Socket.
[\0x1b[32m OK \0x1b[0m] Listening on Journal Socket.
[ 5.659301] systemd[1]: Listening on Journal Socket.
[ 5.671569] systemd[1]: Starting Apply Kernel Variables...
Starting Apply Kernel Variables...
[ 5.713836] systemd[1]: Started Load Kernel Modules.
[ 5.719299] systemd[1]: Starting Journal Service...
Starting Journal Service...
[\0x1b[32m OK \0x1b[0m] Started Journal Service.
[ 5.758605] systemd[1]: Started Journal Service.
[ 5.768890] systemd[1]: Starting Create list of required static device
nodes for the current kernel...
Starting Create list of required static device nodes...rrent kernel...
[ 5.806365] systemd[1]: Mounted Huge Pages File System.
[ 5.825958] systemd[1]: Mounted Configuration File System.
[ 5.841827] systemd[1]: Mounting Debug File System...
Mounting Debug File System...
[ 5.873168] systemd[1]: Mounting FUSE Control File System...
Mounting FUSE Control File System...
[ 5.921722] systemd[1]: Starting udev Kernel Socket.
[\0x1b[32m OK \0x1b[0m] Listening on udev Kernel Socket.
[ 5.971740] systemd[1]: Listening on udev Kernel Socket.
[ 5.978027] systemd[1]: Starting udev Control Socket.
[\0x1b[32m OK \0x1b[0m] Listening on udev Control Socket.
[ 6.018371] systemd[1]: Listening on udev Control Socket.
[ 6.024749] systemd[1]: Starting udev Coldplug all Devices...
Starting udev Coldplug all Devices...
[ 6.059204] systemd[1]: Starting Dispatch Password Requests to Console
Directory Watch.
[ 6.077972] systemd[1]: Started Dispatch Password Requests to Console
Directory Watch.
[ 6.104980] systemd[1]: Starting Paths.
[\0x1b[32m OK \0x1b[0m] Reached target Paths.
[ 6.143371] systemd[1]: Reached target Paths.
[ 6.148193] systemd[1]: Mounted POSIX Message Queue File System.
[ 6.174682] systemd[1]: Starting Arbitrary Executable File Formats File
System Automount Point.
[\0x1b[32m OK \0x1b[0m] Set up automount Arbitrary Executable File Formats
F...utomount Point.
[ 6.221496] systemd[1]: Set up automount Arbitrary Executable File Formats
File System Automount Point.
[ 6.243072] systemd[1]: Started Set Up Additional Binary Formats.
[ 6.260467] systemd[1]: Starting Swap.
[\0x1b[32m OK \0x1b[0m] Reached target Swap.
[ 6.276153] systemd[1]: Reached target Swap.
[ 6.280822] systemd[1]: Mounting Temporary Directory...
Mounting Temporary Directory...
[ 6.321441] systemd[1]: Started File System Check on Root Device.
[ 6.354339] systemd[1]: Starting Remount Root and Kernel File Systems...
Starting Remount Root and Kernel File Systems...
[\0x1b[32m OK \0x1b[0m] Started Apply Kernel Variables.
[ 6.487152] systemd[1]: Started Apply Kernel Variables.
[\0x1b[32m OK \0x1b[0m] Mounted Debug File System.
[ 6.523864] systemd[1]: Mounted Debug File System.
[\0x1b[32m OK \0x1b[0m] Mounted FUSE Control File System.
[ 6.565460] systemd[1]: Mounted FUSE Control File System.
[\0x1b[32m OK \0x1b[0m] Mounted Temporary Directory.
[ 6.581237] systemd[1]: Mounted Temporary Directory.
[\0x1b[32m OK \0x1b[0m] Started udev Coldplug all Devices.
[ 7.409210] systemd[1]: Started udev Coldplug all Devices.
[\0x1b[32m OK \0x1b[0m] Started Create list of required static device nodes
...current kernel.
[ 7.495025] systemd[1]: Started Create list of required static device nodes
for the current kernel.
[ 7.506408] systemd[1]: Starting Create static device nodes in /dev...
Starting Create static device nodes in /dev...
[\0x1b[32m OK \0x1b[0m] Started Remount Root and Kernel File Systems.
[ 7.924682] systemd[1]: Started Remount Root and Kernel File Systems.
[\0x1b[32m OK \0x1b[0m] Started Create static device nodes in /dev.
[ 7.956085] systemd[1]: Started Create static device nodes in /dev.
[ 7.963104] systemd[1]: Starting udev Kernel Device Manager...
Starting udev Kernel Device Manager...
[ 7.990661] systemd[1]: Starting Load/Save Random Seed...
Starting Load/Save Random Seed...
[ 8.038604] systemd[1]: Started Machine ID first boot configure.
[ 8.048278] systemd-udevd[88]: starting version 206
[ 8.054840] systemd[1]: Starting Local File Systems (Pre).
[\0x1b[32m OK \0x1b[0m] Reached target Local File Systems (Pre).
[ 8.096618] systemd[1]: Reached target Local File Systems (Pre).
[ 8.105957] systemd[1]: Mounting /var/volatile...
Mounting /var/volatile...
[ 8.132202] systemd[1]: var-volatile.mount: Directory /var/volatile to
mount over is not empty, mounting anyway.
[\0x1b[32m OK \0x1b[0m] Started udev Kernel Device Manager.
[ 8.190368] systemd[1]: Started udev Kernel Device Manager.
[\0x1b[32m OK \0x1b[0m] Started Load/Save Random Seed.
[ 8.237152] systemd[1]: Started Load/Save Random Seed.
[\0x1b[32m OK \0x1b[0m] Mounted /var/volatile.
[ 8.250518] systemd[1]: Mounted /var/volatile.
[ 8.260711] systemd[1]: Starting Local File Systems.
[\0x1b[32m OK \0x1b[0m] Reached target Local File Systems.
[ 8.291900] systemd[1]: Reached target Local File Systems.
[ 8.297912] systemd[1]: Starting Trigger Flushing of Journal to Persistent
Storage...
Starting Trigger Flushing of Journal to Persistent Storage...
[ 8.347900] systemd[1]: Starting Recreate Volatile Files and Directories...
Starting Recreate Volatile Files and Directories...
[\0x1b[32m OK \0x1b[0m] Started Trigger Flushing of Journal to Persistent
Storage.
[ 8.479370] systemd[1]: Started Trigger Flushing of Journal to Persistent
Storage.
[\0x1b[32m OK \0x1b[0m] Started Recreate Volatile Files and Directories.
[ 8.518402] systemd[1]: Started Recreate Volatile Files and Directories.
[ 8.532501] systemd[1]: Starting Update UTMP about System Reboot/Shutdown...
Starting Update UTMP about System Reboot/Shutdown...
[ 8.580871] systemd[1]: Started Run pending postinsts.
[\0x1b[32m OK \0x1b[0m] Started Update UTMP about System Reboot/Shutdown.
[ 8.666809] systemd[1]: Started Update UTMP about System Reboot/Shutdown.
[ 8.681243] systemd[1]: Starting System Initialization.
[\0x1b[32m OK \0x1b[0m] Reached target System Initialization.
[ 8.705871] systemd[1]: Reached target System Initialization.
[ 8.712280] systemd[1]: Started Manage Sound Card State (restore and store).
[ 8.737976] systemd[1]: Starting Restore Sound Card State...
Starting Restore Sound Card State...
[ 8.760375] Linux media interface: v0.10
[ 8.779602] systemd[1]: Starting sshd.socket.
[ 8.789398] ads7846 spi1.0: touchscreen, irq 210
[ 8.807739] systemd[1]: Starting Daily Cleanup of Temporary Directories.
[ 8.832977] systemd[1]: Started Daily Cleanup of Temporary Directories.
[ 8.865570] systemd[1]: Starting Timers.
[\0x1b[32m OK \0x1b[0m] Reached target Timers.
[ 8.893280] ads7846 spi1.0: no device detected, test read result was
0x00000FFF
[ 8.909118] systemd[1]: Reached target Timers.
[ 8.914001] systemd[1]: Starting Avahi mDNS/DNS-SD Stack Activation Socket.
[\0x1b[32m OK \0x1b[0m] Listening on Avahi mDNS/DNS-SD Stack Activation
Socket.
[ 8.963043] Linux video capture interface: v2.00
[ 8.968902] systemd[1]: Listening on Avahi mDNS/DNS-SD Stack Activation
Socket.
[ 8.991516] systemd[1]: Starting D-Bus System Message Bus Socket.
[\0x1b[32m OK \0x1b[0m] Listening on D-Bus System Message Bus Socket.
[ 9.034027] systemd[1]: Listening on D-Bus System Message Bus Socket.
[ 9.065979] lib80211: common routines for IEEE802.11 drivers
[\0x1b[32m OK \0x1b[0m] Started Restore Sound Card State.
[ 9.088836] systemd[1]: Started Restore Sound Card State.
[\0x1b[32m OK \0x1b[0m] Listening on sshd.socket.
[ 9.135528] systemd[1]: Listening on sshd.socket.
[ 9.146118] systemd[1]: Starting Sockets.
[\0x1b[32m OK \0x1b[0m] Reached target Sockets.
[ 9.174652] systemd[1]: Reached target Sockets.
[ 9.179656] systemd[1]: Starting Basic System.
[\0x1b[32m OK \0x1b[0m] Reached target Basic System.
[ 9.208892] omap3isp supply VDD_CSIPHY1 not found, using dummy regulator
[ 9.216888] systemd[1]: Reached target Basic System.
[ 9.227325] systemd[1]: Starting bind.service...
Starting bind.service...
[ 9.268707] systemd[1]: Starting hostapd.service...
Starting hostapd.service...
[ 9.315582] systemd[1]: Starting LSB: simple distributed compiler client
and server...
[ 9.340667] omap3isp supply VDD_CSIPHY2 not found, using dummy regulator
Starting LSB: simple distributed compiler client and server...
[ 9.367980] cfg80211: Calling CRDA to update world regulatory domain
[ 9.383819] systemd[1]: Starting Avahi mDNS/DNS-SD Stack...
Starting Avahi mDNS/DNS-SD Stack...
[ 9.464447] systemd[1]: Starting System Logging Service...
Starting System Logging Service...
[\0x1b[32m OK \0x1b[0m] Started System [ 9.563201] omap3isp omap3isp:
Revision 15.0 found
Logging Service.
[ 9.572021] systemd[1]: Started System Logging Service.
[ 9.583740] systemd[1]: Starting SSH Key Generation...
Starting SSH Key Generation...
[ 9.644714] systemd[1]: Starting Automounts filesystems on demand...
[ 9.673004] libertas_sdio: Libertas SDIO driver
Starting Automounts filesystems on demand...
[ 9.686035] omap-iommu omap-iommu.0: isp: version 1.1
[ 9.715270] systemd[1]: Starting Kernel Logging Service...
Starting Kernel Logging Service...
[ 9.777648] libertas_sdio: Copyright Pierre Ossman
[\0x1b[32m OK \0x1b[0m] Started Kernel Logging Service.
[ 9.791961] systemd[1]: Started Kernel Logging Service.
[ 9.813842] systemd[1]: Starting Network Time Service...
Starting Network Time Service...
[ 9.889404] systemd[1]: Starting D-Bus System Message Bus...
Starting D-Bus System Message Bus...
[\0x1b[32m OK \0x1b[0m] Started D-Bus System Message Bus.
[ 10.026214] systemd[1]: Started D-Bus System Message Bus.
[ 10.033386] systemd[1]: Starting Permit User Sessions...
[ 10.049407] mt9v032 3-005c: Probing MT9V032 at address 0x5c
Starting Permit User Sessions...
[ 10.173492] systemd[1]: Starting Login Service...
Starting Login Service...
[ 10.290924] mt9v032 3-005c: MT9V032 power up failed
[\0x1b[32m OK \0x1b[0m] Started LSB: simple distributed compiler client and
server.
[\0x1b[1;31mFAILED\0x1b[0m] Failed to start hostapd.service.
See 'systemctl status hostapd.service' for details.
[\0x1b[32m OK \0x1b[0m] Started SSH Key Generation.
[\0x1b[32m OK \0x1b[0m] Started Network Time Service.
[\0x1b[32m OK \0x1b[0m] Started Permit User Sessions.
Starting Getty on tty1...
[\0x1b[32m OK \0x1b[0m] Started Getty on tty1.
[ 10.633728] isp_register_subdev_group: Unable to register subdev mt9v032
[\0x1b[32m OK \0x1b[0m] Found device /dev/ttyO2.
Starting Serial Getty on ttyO2...
[\0x1b[32m OK \0x1b[0m] Started Serial Getty on ttyO2.
[\0x1b[32m OK \0x1b[0m] Started Automounts filesystems on demand.
[\0x1b[32m OK \0x1b[0m] Reached target Sound Card.
[\0x1b[32m OK \0x1b[0m] Started Avahi mDNS/DNS-SD Stack.
[\0x1b[32m OK \0x1b[0m] Started Login Service.
[\0x1b[32m OK \0x1b[0m] Started bind.service.
Starting stop-bootlogd.service...
Starting LSB: Remove /etc/nologin at boot...
[\0x1b[32m OK \0x1b[0m] Started LSB: Remove /etc/nologin at boot.
[\0x1b[32m OK \0x1b[0m] Started stop-bootlogd.service.
[ 13.933258] libertas_sdio mmc1:0001:1: (unregistered net_device):
00:19:88:17:37:f3, fw 9.70.20p0, cap 0x00000303
[ 13.963836] libertas_sdio mmc1:0001:1: wlan0: Marvell WLAN 802.11 adapter


Poky (Yocto Project Reference Distro) 1.5.1 overo ttyO2

overo login:



On Tue, Mar 18, 2014 at 11:43 AM, Gary Thomas <gary@mlbassoc.com> wrote:

> On 2014-03-18 12:30, Rick Bianchi wrote:
> > I rebooted the system with the "reboot" command and then checked the
> date and time with "date", it did not hold the system time and date
> correctly Sat Jan 1 02:28:44 UTC 2000.
>
> There seems to be something very wrong with your startup/shutdown scripts
> as both this problem and the networking issue are handled by those scripts.
>
> Did you try turning on the verbose mode?  If so, you should see a line like
> this during shutdown:
>   INIT: [2014-03-18 17:33:20.978789236] Running /etc/rc6.d/S25save-rtc.sh
> stop...
> and another like these on reboot:
>   INIT: [1970-01-01 00:00:05.079166199] Running /etc/rcS.d/S40networking
> start...
>   INIT: [1970-01-01 00:00:05.103022145] Running /etc/rcS.d/S55bootmisc.sh
> start...
>
> > On Tue, Mar 18, 2014 at 10:55 AM, Gary Thomas <gary@mlbassoc.com<mailto:
> gary@mlbassoc.com>> wrote:
> >
> >     On 2014-03-18 11:49, Rick Bianchi wrote:
> >     > Should have noted, that the date and time reset on every reboot?
> >
> >     Unless you have a battery backed up clock device, e.g. Dallas RTC,
> >     this will happen.  If you shut your Yocto system down properly, e.g.
> >     using '# reboot', it will keep track of when you shut down and then
> >     set the clock to that time when you reboot.  Without a true RTC,
> there's
> >     little else that it can do unless you run NTP and get the time from
> some
> >     external server.
> >
> >     > On Tue, Mar 18, 2014 at 10:48 AM, Rick Bianchi <
> bianchirickkutta@gmail.com <mailto:bianchirickkutta@gmail.com> <mailto:
> bianchirickkutta@gmail.com <mailto:bianchirickkutta@gmail.com>>> wrote:
> >     >
> >     >     Gary,
> >     >     I noticed during the make the it was complaining about the
> date being in the future; I checked and sure thing the date and time were
> bit off, about 14 years. I set it to the
> >     >     correct time  with "date --set="18 MARCH 2014 10:32:00" and
> the build completed in under 10 mins.
> >     >
> >     >
> >     >     On Fri, Mar 14, 2014 at 3:16 PM, Gary Thomas <
> gary@mlbassoc.com <mailto:gary@mlbassoc.com> <mailto:gary@mlbassoc.com<mailto:
> gary@mlbassoc.com>>> wrote:
> >     >
> >     >         On 2014-03-14 08:49, Rick Bianchi wrote:
> >     >         > If I have time today I will try to reproduce your
> results. If not, I will get to it first thing next week and post my result.
> >     >
> >     >         One thing I forgot to point out is I used the identical
> kernel+modules for
> >     >         both setups.  I would be interested to see if that makes
> any difference for
> >     >         you.  I can't fully test it as my board doesn't have a
> Linaro kernel.
> >     >
> >     >         So there are four combinations - I only tried the first
> two:
> >     >           Yocto kernel + Yocto rootfs
> >     >           Yocto kernel + Linaro rootfs
> >     >           Linaro kernel + Yocto rootfs
> >     >           Linaro kernel + Linaro rootfs
> >     >
> >     >         > On Fri, Mar 14, 2014 at 7:38 AM, Gary Thomas <
> gary@mlbassoc.com <mailto:gary@mlbassoc.com> <mailto:gary@mlbassoc.com<mailto:
> gary@mlbassoc.com>> <mailto:gary@mlbassoc.com <mailto:gary@mlbassoc.com>
> >     <mailto:gary@mlbassoc.com <mailto:gary@mlbassoc.com>>>> wrote:
> >     >         >
> >     >         >     On 2014-03-12 13:11, Rick Bianchi wrote:
> >     >         >     > usbip from /usr/src/kernel/drivers/staging/usbip
> >     >         >
> >     >         >     I finally managed to make this comparison.  I did
> this by taking my Poky/Yocto
> >     >         >     built system for a i.MX6 system (ARM Cortex-A9) and
> replaced the rootfs with
> >     >         >     one for the Gumstix Overo (linaro).  The results
> were nothing like yours, so
> >     >         >     it's a bit confusing.
> >     >         >
> >     >         >     I actually built an entire Linux kernel - not just
> the one directory you mentioned.
> >     >         >
> >     >         >     Poky/Yocto - 37 minutes
> >     >         >     Linaro     - 48 minutes
> >     >         >
> >     >         >     There is some flex in these numbers as they were on
> different [brand] SD cards, etc,
> >     >         >     but I sure did not see the "5 minutes for Linaro vs
> 24 hours on Yocto" that you reported.
> >     >         >
> >     >         >     Perhaps the only thing I did differently was I added
> the SDK tools to my Yocto system
> >     >         >     using these meta-packages instead of the list you
> used.
> >     >         >       packagegroup-core-sdk
> packagegroup-core-standalone-sdk-target
> >     >         >
> >     >         >     You might try that to see if it makes any difference.
> >     >         >
> >     >         >     n.b. part of what took me so long to get these
> results is I was trying to run this test
> >     >         >     on something closer to your Overo board.  I have an
> older OMAP DM3730 board here that I
> >     >         >     tried to do these same steps, but it was unstable
> and I could not get the Linaro based
> >     >         >     file system to work at all.  Very strange.  In any
> case, I think the comparison I did get
> >     >         >     with the i.MX6 is valid.
> >     >         >
> >     >         >     > On Wed, Mar 12, 2014 at 11:44 AM, Gary Thomas <
> gary@mlbassoc.com <mailto:gary@mlbassoc.com> <mailto:gary@mlbassoc.com<mailto:
> gary@mlbassoc.com>> <mailto:gary@mlbassoc.com <mailto:gary@mlbassoc.com>
> >     <mailto:gary@mlbassoc.com <mailto:gary@mlbassoc.com>>> <mailto:
> gary@mlbassoc.com <mailto:gary@mlbassoc.com> <mailto:gary@mlbassoc.com<mailto:
> gary@mlbassoc.com>>
> >     >         <mailto:gary@mlbassoc.com <mailto:gary@mlbassoc.com>
> <mailto:gary@mlbassoc.com <mailto:gary@mlbassoc.com>>>>> wrote:
> >     >         >     >
> >     >         >     >     On 2014-03-12 10:09, Rick Bianchi wrote:
> >     >         >     >     > I completely agree with regards to the
> comparison, but I have compiled the same exact source on the same target
> (arm) and it only took 5 minutes when running the Linaro image.
> >     >         >     >     >
> >     >         >     >     > To clarify, the only difference is the
> build, one is Linaro (took 5 minutes to compile source on the target) and
> the other Yocto (took almost 24 hours to compile source on the target).
> >     >         >     >
> >     >         >     >     Sorry, I missed that this was on the same
> hardware.
> >     >         >     >
> >     >         >     >     What are you building?  I'm going to try and
> duplicate this here
> >     >         >     >     on hardware I have that's quite similar to
> your Gumstix board.
> >     >         >     >
> >     >         >     >     >
> >     >         >     >     > Is there something that I am missing?
> >     >         >     >     >
> >     >         >     >     >
> >     >         >     >     > On Wed, Mar 12, 2014 at 8:28 AM, Gary Thomas
> <gary@mlbassoc.com <mailto:gary@mlbassoc.com> <mailto:gary@mlbassoc.com<mailto:
> gary@mlbassoc.com>> <mailto:gary@mlbassoc.com <mailto:gary@mlbassoc.com>
> >     <mailto:gary@mlbassoc.com <mailto:gary@mlbassoc.com>>> <mailto:
> gary@mlbassoc.com <mailto:gary@mlbassoc.com> <mailto:gary@mlbassoc.com<mailto:
> gary@mlbassoc.com>>
> >     >         <mailto:gary@mlbassoc.com <mailto:gary@mlbassoc.com>
> <mailto:gary@mlbassoc.com <mailto:gary@mlbassoc.com>>>> <mailto:
> gary@mlbassoc.com <mailto:gary@mlbassoc.com>
> >     <mailto:gary@mlbassoc.com <mailto:gary@mlbassoc.com>> <mailto:
> gary@mlbassoc.com <mailto:gary@mlbassoc.com> <mailto:gary@mlbassoc.com<mailto:
> gary@mlbassoc.com>>>
> >     >         >     <mailto:gary@mlbassoc.com <mailto:gary@mlbassoc.com>
> <mailto:gary@mlbassoc.com <mailto:gary@mlbassoc.com>> <mailto:
> gary@mlbassoc.com <mailto:gary@mlbassoc.com>
> >     <mailto:gary@mlbassoc.com <mailto:gary@mlbassoc.com>>>>>> wrote:
> >     >         >     >     >
> >     >         >     >     >     On 2014-03-12 09:15, Rick Bianchi wrote:
> >     >         >     >     >     >
> >     >         >     >     >     > I have the gumstix-console-image with
> the added packages below. When I compile on the target is take a very long
> time for it to complete, over 24 hours. I have compiled the same
> >     >         >     >     >     > code on the same target, but running
> Linaro image, and it only takes a few minutes. Is there another recipe that
> I need to add to the build to speed up compiling?
> >     >         >     >     >
> >     >         >     >     >     Doubtful.  The reason your build on the
> target takes so long is merely
> >     >         >     >     >     one of horsepower - that little ARM
> processor just doesn't have it, especially
> >     >         >     >     >     if you are comparing it to a typical
> desktop environment.
> >     >         >     >     >
> >     >         >     >     >     > EXTRA_IMAGE_FEATURES += "dev-pkgs"
> >     >         >     >     >     > IMAGE_INSTALL_append =" autoconf"
> >     >         >     >     >     > IMAGE_INSTALL_append =" autofs"
> >     >         >     >     >     > IMAGE_INSTALL_append =" automake"
> >     >         >     >     >     > IMAGE_INSTALL_append =" ccache"
> >     >         >     >     >     > IMAGE_INSTALL_append =" chkconfig"
> >     >         >     >     >     > IMAGE_INSTALL_append =" dbus-glib"
> >     >         >     >     >     > IMAGE_INSTALL_append =" gcc"
> >     >         >     >     >     > IMAGE_INSTALL_append =" glib-2.0"
> >     >         >     >     >     > IMAGE_INSTALL_append ="
> glib-networking"
> >     >         >     >     >     > IMAGE_INSTALL_append =" glibmm"
> >     >         >     >     >     > IMAGE_INSTALL_append ="
> packagegroup-core-buildessential"
> >     >         >     >     >     > IMAGE_INSTALL_append =" pciutils"
> >     >         >     >     >     > IMAGE_INSTALL_append =" pkgconfig"
> >     >         >     >     >     > IMAGE_INSTALL_append =" python-scons"
> >     >         >     >     >     > IMAGE_INSTALL_append ="
> systemd-compat-units"
> >     >         >     >     >     > IMAGE_INSTALL_append =" sysfsutils"
> >     >         >     >     >     > IMAGE_INSTALL_append =" tcp-wrappers"
> >     >         >     >     >     > IMAGE_INSTALL_append =" usbutils"
> >     >         >     >     >     > IMAGE_INSTALL_append =" util-macros"
> >     >         >
> >     >         >     --
> >     >         >
> ------------------------------------------------------------
> >     >         >     Gary Thomas                 |  Consulting for the
> >     >         >     MLB Associates              |    Embedded world
> >     >         >
> ------------------------------------------------------------
> >     >         >     --
> >     >         >     _______________________________________________
> >     >         >     yocto mailing list
> >     >         >     yocto@yoctoproject.org <mailto:
> yocto@yoctoproject.org> <mailto:yocto@yoctoproject.org <mailto:
> yocto@yoctoproject.org>> <mailto:yocto@yoctoproject.org
> >     <mailto:yocto@yoctoproject.org> <mailto:yocto@yoctoproject.org<mailto:
> yocto@yoctoproject.org>>>
> >     >         >     https://lists.yoctoproject.org/listinfo/yocto
> >     >         >
> >     >         >
> >     >         >
> >     >         >
> >     >
> >     >         --
> >     >
> ------------------------------------------------------------
> >     >         Gary Thomas                 |  Consulting for the
> >     >         MLB Associates              |    Embedded world
> >     >
> ------------------------------------------------------------
> >     >         --
> >     >         _______________________________________________
> >     >         yocto mailing list
> >     >         yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
> <mailto:yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>>
> >     >         https://lists.yoctoproject.org/listinfo/yocto
> >     >
> >     >
> >     >
> >
> >     --
> >     ------------------------------------------------------------
> >     Gary Thomas                 |  Consulting for the
> >     MLB Associates              |    Embedded world
> >     ------------------------------------------------------------
> >
> >
> >
> >
>
> --
> ------------------------------------------------------------
> Gary Thomas                 |  Consulting for the
> MLB Associates              |    Embedded world
> ------------------------------------------------------------
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--001a113601540593a704f4f86308
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Gary,</div><div>I did, &quot; sed -i s/VERBOSE=3Dno/V=
ERBOSE=3Dvery/ /etc/default/rcS&quot; I am not seeing &nbsp;any &quot;INIT:=
&quot;&nbsp;</div><div><br></div><div>&quot;Did you try turning on the verb=
ose mode?  If so, you should see a line like<br>
this during shutdown:<br>  INIT: [2014-03-18 17:33:20.978789236] Running /e=
tc/rc6.d/S25save-rtc.sh stop...<br>and another like these on reboot:<br>  I=
NIT: [1970-01-01 00:00:05.079166199] Running /etc/rcS.d/S40networking start=
...<br>
&nbsp; INIT: [1970-01-01 00:00:05.103022145] Running /etc/rcS.d/S55bootmisc=
.sh start...&quot;</div><div><br></div><div><br></div><div><br></div><div><=
br></div><div>Shutdown:<br></div><div>reboot<br>[  107.809967] systemd-logi=
nd[159]: Failed to stop user slice: Connection is closed<br>
[\0x1b[32m  OK  \0x1b[0m] Stopped Serial Getty on ttyO2.<br>[\0x1b[32m  OK =
 \0x1b[0m] Stopped LSB: Remove /etc/nologin at boot.<br>[\0x1b[32m  OK  \0x=
1b[0m] Stopped stop-bootlogd.service.<br>         Stopping LSB: simple dist=
ributed compiler client and server...<br>
         Stopping bind.service...<br>[\0x1b[32m  OK  \0x1b[0m] Removed slic=
e system-serial\x2dgetty.slice.<br>[\0x1b[32m  OK  \0x1b[0m] Removed slice =
system-getty.slice.<br>[\0x1b[32m  OK  \0x1b[0m] Stopped Automounts filesys=
tems on demand.<br>
[\0x1b[32m  OK  \0x1b[0m] Stopped LSB: simple distributed compiler client a=
nd server.<br>[\0x1b[32m  OK  \0x1b[0m] Removed slice user-0.slice.<br>    =
     Stopping Permit User Sessions...<br>[\0x1b[32m  OK  \0x1b[0m] Started =
Store Sound Card State.<br>
[\0x1b[32m  OK  \0x1b[0m] Stopped Permit User Sessions.<br>[\0x1b[32m  OK  =
\0x1b[0m] Stopped target Remote File Systems.<br>[\0x1b[32m  OK  \0x1b[0m] =
Stopped bind.service.<br>[\0x1b[32m  OK  \0x1b[0m] Stopped target Basic Sys=
tem.<br>
[\0x1b[32m  OK  \0x1b[0m] Stopped target Slices.<br>[\0x1b[32m  OK  \0x1b[0=
m] Removed slice User and Session Slice.<br>[\0x1b[32m  OK  \0x1b[0m] Stopp=
ed target Paths.<br>[\0x1b[32m  OK  \0x1b[0m] Stopped target Timers.<br>
[\0x1b[32m  OK  \0x1b[0m] Stopped target Sockets.<br>[\0x1b[32m  OK  \0x1b[=
0m] Closed sshd.socket.<br>[\0x1b[32m  OK  \0x1b[0m] Closed Avahi mDNS/DNS-=
SD Stack Activation Socket.<br>[\0x1b[32m  OK  \0x1b[0m] Closed Syslog Sock=
et.<br>
[\0x1b[32m  OK  \0x1b[0m] Closed D-Bus System Message Bus Socket.<br>[\0x1b=
[32m  OK  \0x1b[0m] Stopped target System Initialization.<br>         Stopp=
ing Update UTMP about System Reboot/Shutdown...<br>         Stopping Load/S=
ave Random Seed...<br>
         Stopping Apply Kernel Variables...<br>[\0x1b[32m  OK  \0x1b[0m] St=
opped Apply Kernel Variables.<br>[\0x1b[32m  OK  \0x1b[0m] Stopped target S=
wap.<br>[\0x1b[32m  OK  \0x1b[0m] Stopped Update UTMP about System Reboot/S=
hutdown.<br>
         Stopping Recreate Volatile Files and Directories...<br>[\0x1b[32m =
 OK  \0x1b[0m] Stopped Recreate Volatile Files and Directories.<br>[\0x1b[3=
2m  OK  \0x1b[0m] Stopped target Local File Systems.<br>         Unmounting=
 /var/volatile...<br>
         Unmounting Temporary Directory...<br>[\0x1b[32m  OK  \0x1b[0m] Unm=
ounted /var/volatile.<br>[\0x1b[32m  OK  \0x1b[0m] Stopped target Local Fil=
e Systems (Pre).<br>[\0x1b[32m  OK  \0x1b[0m] Failed unmounting Temporary D=
irectory.<br>
[\0x1b[32m  OK  \0x1b[0m] Reached target Unmount All Filesystems.<br>[\0x1b=
[32m  OK  \0x1b[0m] Stopped Load/Save Random Seed.<br>         Stopping Rem=
ount Root and Kernel File Systems...<br>[\0x1b[32m  OK  \0x1b[0m] Stopped R=
emount Root and Kernel File Systems.<br>
[\0x1b[32m  OK  \0x1b[0m] Reached target Shutdown.<br>[  110.805908] twl403=
0_wdt twl4030_wdt: Timeout can only be in the range [0-30] seconds<br>[  11=
0.818450] twl4030_wdt twl4030_wdt: Unexpected close, watchdog still running=
!<br>
Sending SIGTERM to remaining processes...<br>[  110.930816] systemd-journal=
d[64]: Received SIGTERM<br>Sending SIGKILL to remaining processes...<br>Har=
dware watchdog &#39;TWL4030 Watchdog&#39;, version 0<br>Unmounting file sys=
tems.<br>
Unmounting /tmp.<br>Unmounting /sys/fs/fuse/connections.<br>Unmounting /sys=
/kernel/debug.<br>All filesystems unmounted.<br>Deactivating swaps.<br>All =
swaps deactivated.<br>Detaching loop devices.<br>All loop devices detached.=
<br>
Detaching DM devices.<br>All DM devices detached.<br>Storage is finalized.<=
br>[  113.233001] Restarting system.<br>\0x04\0x01\0x05\0x05\0xb3\0x04t\0xd=
8\0xb0b\0x81\0x01\0x00$U\0x16\0x0c @\0x00\0x00\0x00\0x01\0x04\0x08 @\0x00\0=
x00\0x00\0x01\0x04\0x08 @\0x00\0x00\0x00\0x01D\0xa8\0xb1`\0x00\0x00\0x00\0x=
01\0x04\0x08 @\0x00\0x00\0x00\0x01\0x04\0x08 @\0x00\0x00\0x00\0x01\0x04\0x0=
8\0xe0<br>
U-Boot SPL 2014.01 (Mar 18 2014 - 17:55:47)<br>reading u-boot.img<br>readin=
g u-boot.img<br></div><div><br></div><div><br></div><div>Startup:</div><div=
>Booting from mmc ...<br>## Booting kernel from Legacy Image at 82000000 ..=
.<br>
   Image Name:   Linux-3.5.7-yocto-standard<br>   Image Type:   ARM Linux K=
ernel Image (uncompressed)<br>   Data Size:    3460936 Bytes =3D 3.3 MiB<br=
>   Load Address: 80008000<br>   Entry Point:  80008000<br>   Verifying Che=
cksum ... OK<br>
   Loading Kernel Image ... OK<br><br>Starting kernel ...<br><br>Uncompress=
ing Linux... done, booting the kernel.<br>[    0.000000] Booting Linux on p=
hysical CPU 0<br>[    0.000000] Initializing cgroup subsys cpuset<br>[    0=
.000000] Initializing cgroup subsys cpu<br>
[    0.000000] Linux version 3.5.7-yocto-standard (gumstix@gumstix-build-se=
rver) (gcc version 4.8.1 (GCC) ) #1 PREEMPT Tue Mar 18 17:02:53 MST 2014<br=
>[    0.000000] CPU: ARMv7 Processor [413fc082] revision 2 (ARMv7), cr=3D10=
c53c7d<br>
[    0.000000] CPU: PIPT / VIPT nonaliasing data cache, VIPT aliasing instr=
uction cache<br>[    0.000000] Machine: Gumstix Overo<br>[    0.000000] Res=
erving 12582912 bytes SDRAM for VRAM<br>[    0.000000] Memory policy: ECC d=
isabled, Data cache writeback<br>
[    0.000000] OMAP3630 ES1.2 (l2cache iva sgx neon isp 192mhz_clk )<br>[  =
  0.000000] Clocking rate (Crystal/Core/MPU): 26.0/400/600 MHz<br>[    0.00=
0000] Built 1 zonelists in Zone order, mobility grouping on.  Total pages: =
126720<br>
[    0.000000] Kernel command line: console=3DttyO2,115200n8 mpurate=3D500 =
vram=3D12M omapfb.mode=3Ddvi:1024x768MR-16@60 omapdss.def_disp=3Ddvi root=
=3D/dev/mmcblk0p2 rw rootfstype=3Dext3 rootwait<br>[    0.000000] PID hash =
table entries: 2048 (order: 1, 8192 bytes)<br>
[    0.000000] Dentry cache hash table entries: 65536 (order: 6, 262144 byt=
es)<br>[    0.000000] Inode-cache hash table entries: 32768 (order: 5, 1310=
72 bytes)<br>[    0.000000] allocated 1048576 bytes of page_cgroup<br>[    =
0.000000] please try &#39;cgroup_disable=3Dmemory&#39; option if you don&#3=
9;t want memory cgroups<br>
[    0.000000] Memory: 499MB =3D 499MB total<br>[    0.000000] Memory: 4977=
64k/497764k available, 26524k reserved, 0K highmem<br>[    0.000000] Virtua=
l kernel memory layout:<br>[    0.000000]     vector  : 0xffff0000 - 0xffff=
1000   (   4 kB)<br>
[    0.000000]     fixmap  : 0xfff00000 - 0xfffe0000   ( 896 kB)<br>[    0.=
000000]     vmalloc : 0xe0800000 - 0xff000000   ( 488 MB)<br>[    0.000000]=
     lowmem  : 0xc0000000 - 0xe0000000   ( 512 MB)<br>[    0.000000]     pk=
map   : 0xbfe00000 - 0xc0000000   (   2 MB)<br>
[    0.000000]     modules : 0xbf000000 - 0xbfe00000   (  14 MB)<br>[    0.=
000000]       .text : 0xc0008000 - 0xc0648be8   (6403 kB)<br>[    0.000000]=
       .init : 0xc0649000 - 0xc0682938   ( 231 kB)<br>[    0.000000]       =
.data : 0xc0684000 - 0xc06ec6d0   ( 418 kB)<br>
[    0.000000]        .bss : 0xc06ec6f4 - 0xc07773a0   ( 556 kB)<br>[    0.=
000000] NR_IRQS:474<br>[    0.000000] IRQ: Found an INTC at 0xfa200000 (rev=
ision 4.0) with 96 interrupts<br>[    0.000000] Total of 96 interrupts on 1=
 active controller<br>
[    0.000000] OMAP clockevent source: GPTIMER1 at 32768 Hz<br>[    0.00000=
0] sched_clock: 32 bits at 32kHz, resolution 30517ns, wraps every 131071999=
ms<br>[    0.000000] OMAP clocksource: 32k_counter at 32768 Hz<br>[    0.00=
0000] Console: colour dummy device 80x30<br>
[    0.000213] Calibrating delay loop... 597.64 BogoMIPS (lpj=3D2334720)<br=
>[    0.039123] pid_max: default: 32768 minimum: 301<br>[    0.039306] Secu=
rity Framework initialized<br>[    0.039398] Mount-cache hash table entries=
: 512<br>
[    0.040130] Initializing cgroup subsys debug<br>[    0.040161] Initializ=
ing cgroup subsys cpuacct<br>[    0.040161] Initializing cgroup subsys memo=
ry<br>[    0.040222] Initializing cgroup subsys devices<br>[    0.040222] I=
nitializing cgroup subsys freezer<br>
[    0.040252] Initializing cgroup subsys perf_event<br>[    0.040374] CPU:=
 Testing write buffer coherency: ok<br>[    0.040618] Setting up static ide=
ntity map for 0x8045af78 - 0x8045afd0<br>[    0.046081] devtmpfs: initializ=
ed<br>
[    0.050567] dummy: <br>[    0.050933] NET: Registered protocol family 16=
<br>[    0.051300] GPMC revision 5.0<br>[    0.051361] gpmc: irq-20 could n=
ot claim: err -22<br>[    0.053039] OMAP GPIO hardware version 2.5<br>[    =
0.055297] omap_mux_init: Add partition: #1: core, flags: 0<br>
[    0.060180] _omap_mux_get_by_name: Could not find signal uart4_rx.uart4_=
rx<br>[    0.065979] Reprogramming SDRC clock to 400000000 Hz<br>[    0.066=
009] dpll3_m2_clk rate change failed: -22<br>[    0.066009] Found NAND on C=
S0<br>
[    0.066040] Registering NAND on CS0<br>[    0.067291]  usbhs_omap: alias=
 fck already exists<br>[    0.074707] hw-breakpoint: debug architecture 0x4=
 unsupported.<br>[    0.077606]  omap-mcbsp.2: alias fck already exists<br>
[    0.077789]  omap-mcbsp.3: alias fck already exists<br>[    0.078887] Sw=
itched to new clocking rate (Crystal/Core/MPU): 26.0/400/500 MHz<br>[    0.=
079101] OMAP DMA hardware revision 5.0<br>[    0.088562] bio: create slab &=
lt;bio-0&gt; at 0<br>
[    0.089385] fixed-dummy: <br>[    0.089782] vads7846: 3300 mV <br>[    0=
.090667] SCSI subsystem initialized<br>[    0.091033] usbcore: registered n=
ew interface driver usbfs<br>[    0.091186] usbcore: registered new interfa=
ce driver hub<br>
[    0.091430] usbcore: registered new device driver usb<br>[    0.101684] =
omap_i2c omap_i2c.1: bus 1 rev1.4.0 at 2600 kHz<br>[    0.104644] twl 1-004=
8: PIH (irq 7) chaining IRQs 320..328<br>[    0.104797] twl 1-0048: power (=
irq 325) chaining IRQs 328..335<br>
[    0.105468] twl4030_gpio twl4030_gpio: gpio (irq 320) chaining IRQs 336.=
.353<br>[    0.106781] VUSB1V5: 1500 mV normal standby<br>[    0.107360] VU=
SB1V8: 1800 mV normal standby<br>[    0.107879] VUSB3V1: 3100 mV normal sta=
ndby<br>
[    0.109863] twl4030_usb twl4030_usb: Initialized TWL4030 USB module<br>[=
    0.110504] vdd_mpu_iva: 600 &lt;--&gt; 1450 mV normal <br>[    0.110992]=
 vdd_core: 600 &lt;--&gt; 1450 mV normal <br>[    0.111602] VMMC1: 1850 &lt=
;--&gt; 3150 mV at 3150 mV normal standby<br>
[    0.112243] VDAC: 1800 mV normal standby<br>[    0.112854] VDVI: 1800 mV=
 normal standby<br>[    0.125122] omap_i2c omap_i2c.3: bus 3 rev1.4.0 at 40=
0 kHz<br>[    0.126007] omap-iommu omap-iommu.0: isp registered<br>[    0.1=
26251] Advanced Linux Sound Architecture Driver Version 1.0.25.<br>
[    0.127258] Switching to clocksource 32k_counter<br>[    0.160034] usbhs=
_omap usbhs_omap: xclk60mhsp2_ck set parentfailed error:-22<br>[    0.16091=
9] NET: Registered protocol family 2<br>[    0.161254] IP route cache hash =
table entries: 4096 (order: 2, 16384 bytes)<br>
[    0.161895] TCP established hash table entries: 16384 (order: 5, 131072 =
bytes)<br>[    0.162322] TCP bind hash table entries: 16384 (order: 4, 6553=
6 bytes)<br>[    0.162567] TCP: Hash tables configured (established 16384 b=
ind 16384)<br>
[    0.162597] TCP: reno registered<br>[    0.162628] UDP hash table entrie=
s: 256 (order: 0, 4096 bytes)<br>[    0.162628] UDP-Lite hash table entries=
: 256 (order: 0, 4096 bytes)<br>[    0.162994] NET: Registered protocol fam=
ily 1<br>
[    0.163604] RPC: Registered named UNIX socket transport module.<br>[    =
0.163635] RPC: Registered udp transport module.<br>[    0.163635] RPC: Regi=
stered tcp transport module.<br>[    0.163635] RPC: Registered tcp NFSv4.1 =
backchannel transport module.<br>
[    0.166625] audit: initializing netlink socket (disabled)<br>[    0.1666=
87] type=3D2000 audit(0.164:1): initialized<br>[    0.168365] VFS: Disk quo=
tas dquot_6.5.2<br>[    0.168457] Dquot-cache hash table entries: 1024 (ord=
er 0, 4096 bytes)<br>
[    0.168884] NFS: Registering the id_resolver key type<br>[    0.168975] =
Key type id_resolver registered<br>[    0.169006] Key type id_legacy regist=
ered<br>[    0.169555] jffs2: version 2.2. (NAND) (SUMMARY)  \0xc2\0xa9 200=
1-2006 Red Hat, Inc.<br>
[    0.170379] fuse init (API version 7.19)<br>[    0.170959] msgmni has be=
en set to 972<br>[    0.173004] Block layer SCSI generic (bsg) driver versi=
on 0.4 loaded (major 253)<br>[    0.173034] io scheduler noop registered<br=
>
[    0.173034] io scheduler deadline registered (default)<br>[    0.173950]=
 OMAP DSS rev 2.0<br>[    0.177764] omap_uart.0: ttyO0 at MMIO 0x4806a000 (=
irq =3D 72) is a OMAP UART0<br>[    0.178314] omap_uart.1: ttyO1 at MMIO 0x=
4806c000 (irq =3D 73) is a OMAP UART1<br>
[    0.178833] omap_uart.2: ttyO2 at MMIO 0x49020000 (irq =3D 74) is a OMAP=
 UART2<br>[    0.871154] console [ttyO2] enabled<br>[    0.875335] omap_uar=
t.3: ttyO3 at MMIO 0x49042000 (irq =3D 80) is a OMAP UART3<br>[    0.892883=
] brd: module loaded<br>
[    0.901367] loop: module loaded<br>[    0.906829] twl4030_madc twl4030_m=
adc: clk disabled, enabling<br>[    0.915222] NAND device: Manufacturer ID:=
 0x2c, Chip ID: 0xbc (Micron NAND 512MiB 1,8V 16-bit), page size: 2048, OOB=
 size: 64<br>
[    0.927795] Creating 5 MTD partitions on &quot;omap2-nand.0&quot;:<br>[ =
   0.933471] 0x000000000000-0x000000080000 : &quot;xloader&quot;<br>[    0.=
940734] 0x000000080000-0x000000240000 : &quot;uboot&quot;<br>[    0.948852]=
 0x000000240000-0x000000280000 : &quot;uboot environment&quot;<br>
[    0.956634] 0x000000280000-0x000000a80000 : &quot;linux&quot;<br>[    0.=
970886] 0x000000a80000-0x000020000000 : &quot;rootfs&quot;<br>[    1.478271=
] smsc911x: Driver version 2008-10-21<br>[    1.485168] smsc911x-mdio: prob=
ed<br>
[    1.488861] smsc911x smsc911x.0: eth0: attached PHY driver [Generic PHY]=
 (mii_bus:phy_addr=3Dsmsc911x-0:01, irq=3D-1)<br>[    1.499908] smsc911x sm=
sc911x.0: eth0: MAC Address: 00:15:c9:29:01:ed<br>[    1.506744] smsc911x: =
Driver version 2008-10-21<br>
[    1.512176] usbcore: registered new interface driver kaweth<br>[    1.51=
8188] usbcore: registered new interface driver asix<br>[    1.523956] usbco=
re: registered new interface driver cdc_ether<br>[    1.530242] usbcore: re=
gistered new interface driver cdc_ncm<br>
[    1.536590] ehci_hcd: USB 2.0 &#39;Enhanced&#39; Host Controller (EHCI) =
Driver<br>[    1.543701] ehci-omap.0 supply hsusb1 not found, using dummy r=
egulator<br>[    2.557220] ehci-omap ehci-omap.0: OMAP-EHCI Host Controller=
<br>
[    2.563568] ehci-omap ehci-omap.0: new USB bus registered, assigned bus =
number 1<br>[    2.571533] ehci-omap ehci-omap.0: irq 77, io mem 0x48064800=
<br>[    2.588378] ehci-omap ehci-omap.0: USB 2.0 started, EHCI 1.00<br>
[    2.594696] usb usb1: New USB device found, idVendor=3D1d6b, idProduct=
=3D0002<br>[    2.601867] usb usb1: New USB device strings: Mfr=3D3, Produc=
t=3D2, SerialNumber=3D1<br>[    2.609497] usb usb1: Product: OMAP-EHCI Host=
 Controller<br>
[    2.615142] usb usb1: Manufacturer: Linux 3.5.7-yocto-standard ehci_hcd<=
br>[    2.622100] usb usb1: SerialNumber: ehci-omap.0<br>[    2.627929] hub=
 1-0:1.0: USB hub found<br>[    2.631896] hub 1-0:1.0: 3 ports detected<br>
[    2.666564] Initializing USB Mass Storage driver...<br>[    2.671844] us=
bcore: registered new interface driver usb-storage<br>[    2.678192] USB Ma=
ss Storage support registered.<br>[    2.683074] musb-hdrc: version 6.0, ?d=
ma?, otg (peripheral+host)<br>
[    2.696685] musb-hdrc musb-hdrc: USB OTG mode controller at fa0ab000 usi=
ng DMA, IRQ 92<br>[    2.707794] mousedev: PS/2 mouse device common for all=
 mice<br>[    2.714538] twl_rtc twl_rtc: Enabling TWL-RTC<br>[    2.722045]=
 twl_rtc twl_rtc: rtc core: registered twl_rtc as rtc0<br>
[    2.729278] i2c /dev entries driver<br>[    2.734680] voltdm_scale: No v=
oltage scale API registered for vdd_mpu_iva<br>[    2.742095] platform mpu.=
0: omap_target: unable to scale voltage up.<br>[    2.748840] cpuidle: usin=
g governor ladder<br>
[    2.753173] cpuidle: using governor menu<br>[    2.757873] omap_hsmmc om=
ap_hsmmc.0: Failed to get debounce clk<br>[    2.764343] omap_hsmmc.0 suppl=
y vmmc_aux not found, using dummy regulator<br>[    2.963378] usb 1-2: new =
high-speed USB device number 2 using ehci-omap<br>
[    3.120330] usb 1-2: New USB device found, idVendor=3D0409, idProduct=3D=
005a<br>[    3.127441] usb 1-2: New USB device strings: Mfr=3D0, Product=3D=
0, SerialNumber=3D0<br>[    3.135986] hub 1-2:1.0: USB hub found<br>[    3.=
140045] hub 1-2:1.0: 4 ports detected<br>
[    3.144836] omap_hsmmc omap_hsmmc.1: Failed to get debounce clk<br>[    =
3.151428] omap_hsmmc.1 supply vmmc not found, using dummy regulator<br>[   =
 3.158569] omap_hsmmc.1 supply vmmc_aux not found, using dummy regulator<br=
>
[    3.170104] omap_hsmmc omap_hsmmc.1: could not set regulator OCR (-22)<b=
r>[    3.177246] omap_hsmmc omap_hsmmc.1: could not set regulator OCR (-22)=
<br>[    3.232452] usbcore: registered new interface driver usbhid<br>[    =
3.238494] usbhid: USB HID core driver<br>
[    3.243682] usbcore: registered new interface driver snd-usb-audio<br>[ =
   3.251831] overo SoC init<br>[    3.254943] soc-audio soc-audio: ASoC mac=
hine overo should use snd_soc_register_card()<br>[    3.355590] twl4030-cod=
ec twl4030-codec: ASoC: Failed to create Capture debugfs file<br>
[    3.367553] asoc: twl4030-hifi &lt;-&gt; omap-mcbsp.2 mapping ok<br>[   =
 3.379608] oprofile: hardware counters not available<br>[    3.384918] opro=
file: using timer interrupt.<br>[    3.389953] TCP: cubic registered<br>
[    3.393585] NET: Registered protocol family 17<br>[    3.398376] NET: Re=
gistered protocol family 15<br>[    3.403411] Key type dns_resolver registe=
red<br>[    3.408447] VFP support v0.3: implementor 41 architecture 3 part =
30 variant c rev 3<br>
[    3.422302] ThumbEE CPU extension supported.<br>[    3.427001] sr_init: =
No PMIC hook to init smartreflex<br>[    3.432922] smartreflex smartreflex.=
0: omap_sr_probe: SmartReflex driver initialized<br>[    3.441345] smartref=
lex smartreflex.1: omap_sr_probe: SmartReflex driver initialized<br>
[    3.455993] usb 1-2.2: new low-speed USB device number 3 using ehci-omap=
<br>[    3.467651] clock: disabling unused clocks to save power<br>[    3.4=
74884] registered taskstats version 1<br>[    3.480499] fbcvt: 1024x768@60:=
 CVT Name - .786M3-R<br>
[    3.487915] mmc0: host does not support reading read-only switch. assumi=
ng write-enable.<br>[    3.511932] Console: switching to colour frame buffe=
r device 128x48<br>[    3.504974] mmc0: new high speed SDHC card at address=
 0007<br>
[    3.510314] mmcblk0: mmc0:0007 SD32G 29.3 GiB <br>[    3.512390]  mmcblk=
0: p1 p2<br>[    3.552551] VDAC: incomplete constraints, leaving on<br>[   =
 3.560546] twl_rtc twl_rtc: setting system clock to 2000-01-01 00:35:10 UTC=
 (946686910)<br>
[    3.569274] ALSA device list:<br>[    3.572448]   #0: overo<br>[    3.58=
5662] mmc1: new SDIO card at address 0001<br>[    3.590576] kjournald start=
ing.  Commit interval 5 seconds<br>[    3.602508] usb 1-2.2: New USB device=
 found, idVendor=3D413c, idProduct=3D2112<br>
[    3.609802] usb 1-2.2: New USB device strings: Mfr=3D1, Product=3D2, Ser=
ialNumber=3D0<br>[    3.617584] usb 1-2.2: Product: Dell USB Wired Multimed=
ia Keyboard<br>[    3.624114] usb 1-2.2: Manufacturer: DELL<br>[    3.63488=
7] input: DELL Dell USB Wired Multimedia Keyboard as /devices/platform/usbh=
s_omap/ehci-omap.0/usb1/1-2/1-2.2/1-2.2:1.0/input/input0<br>
[    3.648742] hid-generic 0003:413C:2112.0001: input: USB HID v1.10 Keyboa=
rd [DELL Dell USB Wired Multimedia Keyboard] on usb-ehci-omap.0-2.2/input0<=
br>[    3.670684] input: DELL Dell USB Wired Multimedia Keyboard as /device=
s/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.2/1-2.2:1.1/input/input1<br>
[    3.684509] hid-generic 0003:413C:2112.0002: input: USB HID v1.10 Device=
 [DELL Dell USB Wired Multimedia Keyboard] on usb-ehci-omap.0-2.2/input1<br=
>[    3.784179] usb 1-2.3: new low-speed USB device number 4 using ehci-oma=
p<br>
[    3.913696] usb 1-2.3: New USB device found, idVendor=3D04b3, idProduct=
=3D310c<br>[    3.921020] usb 1-2.3: New USB device strings: Mfr=3D0, Produ=
ct=3D2, SerialNumber=3D0<br>[    3.928771] usb 1-2.3: Product: USB Optical =
Mouse<br>
[    3.939056] input: USB Optical Mouse as /devices/platform/usbhs_omap/ehc=
i-omap.0/usb1/1-2/1-2.3/1-2.3:1.0/input/input2<br>[    3.950958] hid-generi=
c 0003:04B3:310C.0003: input: USB HID v1.11 Mouse [USB Optical Mouse] on us=
b-ehci-omap.0-2.3/input0<br>
[    4.049835] usb 1-2.4: new high-speed USB device number 5 using ehci-oma=
p<br>[    4.176605] usb 1-2.4: New USB device found, idVendor=3D0bda, idPro=
duct=3D0811<br>[    4.183898] usb 1-2.4: New USB device strings: Mfr=3D1, P=
roduct=3D2, SerialNumber=3D3<br>
[    4.191650] usb 1-2.4: Product: 802.11n WLAN Adapter<br>[    4.196899] u=
sb 1-2.4: Manufacturer: Realtek<br>[    4.201416] usb 1-2.4: SerialNumber: =
5CF3700CF299<br>[    4.421539] EXT3-fs (mmcblk0p2): using internal journal<=
br>
[    4.427154] EXT3-fs (mmcblk0p2): mounted filesystem with writeback data =
mode<br>[    4.434661] VFS: Mounted root (ext3 filesystem) on device 179:2.=
<br>[    4.444610] devtmpfs: mounted<br>[    4.448272] Freeing init memory:=
 228K<br>
[    4.742309] systemd[1]: systemd 206 running in system mode. (+PAM +LIBWR=
AP -AUDIT -SELINUX +IMA +SYSVINIT -LIBCRYPTSETUP -GCRYPT +ACL +XZ)<br><br>W=
elcome to \0x1b[1mLinux\0x1b[0m!<br><br>[    4.856475] NET: Registered prot=
ocol family 10<br>
[    4.862884] systemd[1]: Inserted module &#39;ipv6&#39;<br>[    4.871551]=
 systemd[1]: Set hostname to &lt;overo&gt;.<br>[    5.247406] systemd[1]: C=
annot add dependency job for unit display-manager.service, ignoring: Unit d=
isplay-manager.service failed to load: No such file or directory. See syste=
m logs and &#39;systemctl status display-manager.service&#39; for details.<=
br>
[    5.272369] systemd[1]: Starting Forward Password Requests to Wall Direc=
tory Watch.<br>[    5.281158] systemd[1]: Started Forward Password Requests=
 to Wall Directory Watch.<br>[    5.289367] systemd[1]: Expecting device de=
v-ttyGS0.device...<br>
         Expecting device dev-ttyGS0.device...<br>[    5.315795] systemd[1]=
: Expecting device dev-ttyO2.device...<br>         Expecting device dev-tty=
O2.device...<br>[    5.339019] systemd[1]: Starting Remote File Systems.<br=
>
[\0x1b[32m  OK  \0x1b[0m] Reached target Remote File Systems.<br>[    5.362=
365] systemd[1]: Reached target Remote File Systems.<br>[    5.368347] syst=
emd[1]: Starting Syslog Socket.<br>[\0x1b[32m  OK  \0x1b[0m] Listening on S=
yslog Socket.<br>
[    5.385711] systemd[1]: Listening on Syslog Socket.<br>[    5.390991] sy=
stemd[1]: Starting Delayed Shutdown Socket.<br>[\0x1b[32m  OK  \0x1b[0m] Li=
stening on Delayed Shutdown Socket.<br>[    5.416961] systemd[1]: Listening=
 on Delayed Shutdown Socket.<br>
[    5.423126] systemd[1]: Starting /dev/initctl Compatibility Named Pipe.<=
br>[\0x1b[32m  OK  \0x1b[0m] Listening on /dev/initctl Compatibility Named =
Pipe.<br>[    5.448303] systemd[1]: Listening on /dev/initctl Compatibility=
 Named Pipe.<br>
[    5.455780] systemd[1]: Starting Root Slice.<br>[\0x1b[32m  OK  \0x1b[0m=
] Created slice Root Slice.<br>[    5.479583] systemd[1]: Created slice Roo=
t Slice.<br>[    5.484649] systemd[1]: Starting User and Session Slice.<br>
[\0x1b[32m  OK  \0x1b[0m] Created slice User and Session Slice.<br>[    5.5=
10711] systemd[1]: Created slice User and Session Slice.<br>[    5.516906] =
systemd[1]: Starting System Slice.<br>[\0x1b[32m  OK  \0x1b[0m] Created sli=
ce System Slice.<br>
[    5.542053] systemd[1]: Created slice System Slice.<br>[    5.547363] sy=
stemd[1]: Starting Slices.<br>[\0x1b[32m  OK  \0x1b[0m] Reached target Slic=
es.<br>[    5.565490] systemd[1]: Reached target Slices.<br>[    5.570281] =
systemd[1]: Starting system-getty.slice.<br>
[\0x1b[32m  OK  \0x1b[0m] Created slice system-getty.slice.<br>[    5.59695=
4] systemd[1]: Created slice system-getty.slice.<br>[    5.602783] systemd[=
1]: Starting system-serial\x2dgetty.slice.<br>[\0x1b[32m  OK  \0x1b[0m] Cre=
ated slice system-serial\x2dgetty.slice.<br>
[    5.627990] systemd[1]: Created slice system-serial\x2dgetty.slice.<br>[=
    5.634796] systemd[1]: Starting Journal Socket.<br>[\0x1b[32m  OK  \0x1b=
[0m] Listening on Journal Socket.<br>[    5.659301] systemd[1]: Listening o=
n Journal Socket.<br>
[    5.671569] systemd[1]: Starting Apply Kernel Variables...<br>         S=
tarting Apply Kernel Variables...<br>[    5.713836] systemd[1]: Started Loa=
d Kernel Modules.<br>[    5.719299] systemd[1]: Starting Journal Service...=
<br>
         Starting Journal Service...<br>[\0x1b[32m  OK  \0x1b[0m] Started J=
ournal Service.<br>[    5.758605] systemd[1]: Started Journal Service.<br>[=
    5.768890] systemd[1]: Starting Create list of required static device no=
des for the current kernel...<br>
         Starting Create list of required static device nodes...rrent kerne=
l...<br>[    5.806365] systemd[1]: Mounted Huge Pages File System.<br>[    =
5.825958] systemd[1]: Mounted Configuration File System.<br>[    5.841827] =
systemd[1]: Mounting Debug File System...<br>
         Mounting Debug File System...<br>[    5.873168] systemd[1]: Mounti=
ng FUSE Control File System...<br>         Mounting FUSE Control File Syste=
m...<br>[    5.921722] systemd[1]: Starting udev Kernel Socket.<br>[\0x1b[3=
2m  OK  \0x1b[0m] Listening on udev Kernel Socket.<br>
[    5.971740] systemd[1]: Listening on udev Kernel Socket.<br>[    5.97802=
7] systemd[1]: Starting udev Control Socket.<br>[\0x1b[32m  OK  \0x1b[0m] L=
istening on udev Control Socket.<br>[    6.018371] systemd[1]: Listening on=
 udev Control Socket.<br>
[    6.024749] systemd[1]: Starting udev Coldplug all Devices...<br>       =
  Starting udev Coldplug all Devices...<br>[    6.059204] systemd[1]: Start=
ing Dispatch Password Requests to Console Directory Watch.<br>[    6.077972=
] systemd[1]: Started Dispatch Password Requests to Console Directory Watch=
.<br>
[    6.104980] systemd[1]: Starting Paths.<br>[\0x1b[32m  OK  \0x1b[0m] Rea=
ched target Paths.<br>[    6.143371] systemd[1]: Reached target Paths.<br>[=
    6.148193] systemd[1]: Mounted POSIX Message Queue File System.<br>[    =
6.174682] systemd[1]: Starting Arbitrary Executable File Formats File Syste=
m Automount Point.<br>
[\0x1b[32m  OK  \0x1b[0m] Set up automount Arbitrary Executable File Format=
s F...utomount Point.<br>[    6.221496] systemd[1]: Set up automount Arbitr=
ary Executable File Formats File System Automount Point.<br>[    6.243072] =
systemd[1]: Started Set Up Additional Binary Formats.<br>
[    6.260467] systemd[1]: Starting Swap.<br>[\0x1b[32m  OK  \0x1b[0m] Reac=
hed target Swap.<br>[    6.276153] systemd[1]: Reached target Swap.<br>[   =
 6.280822] systemd[1]: Mounting Temporary Directory...<br>         Mounting=
 Temporary Directory...<br>
[    6.321441] systemd[1]: Started File System Check on Root Device.<br>[  =
  6.354339] systemd[1]: Starting Remount Root and Kernel File Systems...<br=
>         Starting Remount Root and Kernel File Systems...<br>[\0x1b[32m  O=
K  \0x1b[0m] Started Apply Kernel Variables.<br>
[    6.487152] systemd[1]: Started Apply Kernel Variables.<br>[\0x1b[32m  O=
K  \0x1b[0m] Mounted Debug File System.<br>[    6.523864] systemd[1]: Mount=
ed Debug File System.<br>[\0x1b[32m  OK  \0x1b[0m] Mounted FUSE Control Fil=
e System.<br>
[    6.565460] systemd[1]: Mounted FUSE Control File System.<br>[\0x1b[32m =
 OK  \0x1b[0m] Mounted Temporary Directory.<br>[    6.581237] systemd[1]: M=
ounted Temporary Directory.<br>[\0x1b[32m  OK  \0x1b[0m] Started udev Coldp=
lug all Devices.<br>
[    7.409210] systemd[1]: Started udev Coldplug all Devices.<br>[\0x1b[32m=
  OK  \0x1b[0m] Started Create list of required static device nodes ...curr=
ent kernel.<br>[    7.495025] systemd[1]: Started Create list of required s=
tatic device nodes for the current kernel.<br>
[    7.506408] systemd[1]: Starting Create static device nodes in /dev...<b=
r>         Starting Create static device nodes in /dev...<br>[\0x1b[32m  OK=
  \0x1b[0m] Started Remount Root and Kernel File Systems.<br>[    7.924682]=
 systemd[1]: Started Remount Root and Kernel File Systems.<br>
[\0x1b[32m  OK  \0x1b[0m] Started Create static device nodes in /dev.<br>[ =
   7.956085] systemd[1]: Started Create static device nodes in /dev.<br>[  =
  7.963104] systemd[1]: Starting udev Kernel Device Manager...<br>         =
Starting udev Kernel Device Manager...<br>
[    7.990661] systemd[1]: Starting Load/Save Random Seed...<br>         St=
arting Load/Save Random Seed...<br>[    8.038604] systemd[1]: Started Machi=
ne ID first boot configure.<br>[    8.048278] systemd-udevd[88]: starting v=
ersion 206<br>
[    8.054840] systemd[1]: Starting Local File Systems (Pre).<br>[\0x1b[32m=
  OK  \0x1b[0m] Reached target Local File Systems (Pre).<br>[    8.096618] =
systemd[1]: Reached target Local File Systems (Pre).<br>[    8.105957] syst=
emd[1]: Mounting /var/volatile...<br>
         Mounting /var/volatile...<br>[    8.132202] systemd[1]: var-volati=
le.mount: Directory /var/volatile to mount over is not empty, mounting anyw=
ay.<br>[\0x1b[32m  OK  \0x1b[0m] Started udev Kernel Device Manager.<br>
[    8.190368] systemd[1]: Started udev Kernel Device Manager.<br>[\0x1b[32=
m  OK  \0x1b[0m] Started Load/Save Random Seed.<br>[    8.237152] systemd[1=
]: Started Load/Save Random Seed.<br>[\0x1b[32m  OK  \0x1b[0m] Mounted /var=
/volatile.<br>
[    8.250518] systemd[1]: Mounted /var/volatile.<br>[    8.260711] systemd=
[1]: Starting Local File Systems.<br>[\0x1b[32m  OK  \0x1b[0m] Reached targ=
et Local File Systems.<br>[    8.291900] systemd[1]: Reached target Local F=
ile Systems.<br>
[    8.297912] systemd[1]: Starting Trigger Flushing of Journal to Persiste=
nt Storage...<br>         Starting Trigger Flushing of Journal to Persisten=
t Storage...<br>[    8.347900] systemd[1]: Starting Recreate Volatile Files=
 and Directories...<br>
         Starting Recreate Volatile Files and Directories...<br>[\0x1b[32m =
 OK  \0x1b[0m] Started Trigger Flushing of Journal to Persistent Storage.<b=
r>[    8.479370] systemd[1]: Started Trigger Flushing of Journal to Persist=
ent Storage.<br>
[\0x1b[32m  OK  \0x1b[0m] Started Recreate Volatile Files and Directories.<=
br>[    8.518402] systemd[1]: Started Recreate Volatile Files and Directori=
es.<br>[    8.532501] systemd[1]: Starting Update UTMP about System Reboot/=
Shutdown...<br>
         Starting Update UTMP about System Reboot/Shutdown...<br>[    8.580=
871] systemd[1]: Started Run pending postinsts.<br>[\0x1b[32m  OK  \0x1b[0m=
] Started Update UTMP about System Reboot/Shutdown.<br>[    8.666809] syste=
md[1]: Started Update UTMP about System Reboot/Shutdown.<br>
[    8.681243] systemd[1]: Starting System Initialization.<br>[\0x1b[32m  O=
K  \0x1b[0m] Reached target System Initialization.<br>[    8.705871] system=
d[1]: Reached target System Initialization.<br>[    8.712280] systemd[1]: S=
tarted Manage Sound Card State (restore and store).<br>
[    8.737976] systemd[1]: Starting Restore Sound Card State...<br>        =
 Starting Restore Sound Card State...<br>[    8.760375] Linux media interfa=
ce: v0.10<br>[    8.779602] systemd[1]: Starting sshd.socket.<br>[    8.789=
398] ads7846 spi1.0: touchscreen, irq 210<br>
[    8.807739] systemd[1]: Starting Daily Cleanup of Temporary Directories.=
<br>[    8.832977] systemd[1]: Started Daily Cleanup of Temporary Directori=
es.<br>[    8.865570] systemd[1]: Starting Timers.<br>[\0x1b[32m  OK  \0x1b=
[0m] Reached target Timers.<br>
[    8.893280] ads7846 spi1.0: no device detected, test read result was 0x0=
0000FFF<br>[    8.909118] systemd[1]: Reached target Timers.<br>[    8.9140=
01] systemd[1]: Starting Avahi mDNS/DNS-SD Stack Activation Socket.<br>
[\0x1b[32m  OK  \0x1b[0m] Listening on Avahi mDNS/DNS-SD Stack Activation S=
ocket.<br>[    8.963043] Linux video capture interface: v2.00<br>[    8.968=
902] systemd[1]: Listening on Avahi mDNS/DNS-SD Stack Activation Socket.<br=
>
[    8.991516] systemd[1]: Starting D-Bus System Message Bus Socket.<br>[\0=
x1b[32m  OK  \0x1b[0m] Listening on D-Bus System Message Bus Socket.<br>[  =
  9.034027] systemd[1]: Listening on D-Bus System Message Bus Socket.<br>
[    9.065979] lib80211: common routines for IEEE802.11 drivers<br>[\0x1b[3=
2m  OK  \0x1b[0m] Started Restore Sound Card State.<br>[    9.088836] syste=
md[1]: Started Restore Sound Card State.<br>[\0x1b[32m  OK  \0x1b[0m] Liste=
ning on sshd.socket.<br>
[    9.135528] systemd[1]: Listening on sshd.socket.<br>[    9.146118] syst=
emd[1]: Starting Sockets.<br>[\0x1b[32m  OK  \0x1b[0m] Reached target Socke=
ts.<br>[    9.174652] systemd[1]: Reached target Sockets.<br>[    9.179656]=
 systemd[1]: Starting Basic System.<br>
[\0x1b[32m  OK  \0x1b[0m] Reached target Basic System.<br>[    9.208892] om=
ap3isp supply VDD_CSIPHY1 not found, using dummy regulator<br>[    9.216888=
] systemd[1]: Reached target Basic System.<br>[    9.227325] systemd[1]: St=
arting bind.service...<br>
         Starting bind.service...<br>[    9.268707] systemd[1]: Starting ho=
stapd.service...<br>         Starting hostapd.service...<br>[    9.315582] =
systemd[1]: Starting LSB: simple distributed compiler client and server...<=
br>
[    9.340667] omap3isp supply VDD_CSIPHY2 not found, using dummy regulator=
<br>         Starting LSB: simple distributed compiler client and server...=
<br>[    9.367980] cfg80211: Calling CRDA to update world regulatory domain=
<br>
[    9.383819] systemd[1]: Starting Avahi mDNS/DNS-SD Stack...<br>         =
Starting Avahi mDNS/DNS-SD Stack...<br>[    9.464447] systemd[1]: Starting =
System Logging Service...<br>         Starting System Logging Service...<br=
>
[\0x1b[32m  OK  \0x1b[0m] Started System [    9.563201] omap3isp omap3isp: =
Revision 15.0 found<br>Logging Service.<br>[    9.572021] systemd[1]: Start=
ed System Logging Service.<br>[    9.583740] systemd[1]: Starting SSH Key G=
eneration...<br>
         Starting SSH Key Generation...<br>[    9.644714] systemd[1]: Start=
ing Automounts filesystems on demand...<br>[    9.673004] libertas_sdio: Li=
bertas SDIO driver<br>         Starting Automounts filesystems on demand...=
<br>
[    9.686035] omap-iommu omap-iommu.0: isp: version 1.1<br>[    9.715270] =
systemd[1]: Starting Kernel Logging Service...<br>         Starting Kernel =
Logging Service...<br>[    9.777648] libertas_sdio: Copyright Pierre Ossman=
<br>
[\0x1b[32m  OK  \0x1b[0m] Started Kernel Logging Service.<br>[    9.791961]=
 systemd[1]: Started Kernel Logging Service.<br>[    9.813842] systemd[1]: =
Starting Network Time Service...<br>         Starting Network Time Service.=
..<br>
[    9.889404] systemd[1]: Starting D-Bus System Message Bus...<br>        =
 Starting D-Bus System Message Bus...<br>[\0x1b[32m  OK  \0x1b[0m] Started =
D-Bus System Message Bus.<br>[   10.026214] systemd[1]: Started D-Bus Syste=
m Message Bus.<br>
[   10.033386] systemd[1]: Starting Permit User Sessions...<br>[   10.04940=
7] mt9v032 3-005c: Probing MT9V032 at address 0x5c<br>         Starting Per=
mit User Sessions...<br>[   10.173492] systemd[1]: Starting Login Service..=
.<br>
         Starting Login Service...<br>[   10.290924] mt9v032 3-005c: MT9V03=
2 power up failed<br>[\0x1b[32m  OK  \0x1b[0m] Started LSB: simple distribu=
ted compiler client and server.<br>[\0x1b[1;31mFAILED\0x1b[0m] Failed to st=
art hostapd.service.<br>
See &#39;systemctl status hostapd.service&#39; for details.<br>[\0x1b[32m  =
OK  \0x1b[0m] Started SSH Key Generation.<br>[\0x1b[32m  OK  \0x1b[0m] Star=
ted Network Time Service.<br>[\0x1b[32m  OK  \0x1b[0m] Started Permit User =
Sessions.<br>
         Starting Getty on tty1...<br>[\0x1b[32m  OK  \0x1b[0m] Started Get=
ty on tty1.<br>[   10.633728] isp_register_subdev_group: Unable to register=
 subdev mt9v032<br>[\0x1b[32m  OK  \0x1b[0m] Found device /dev/ttyO2.<br>
         Starting Serial Getty on ttyO2...<br>[\0x1b[32m  OK  \0x1b[0m] Sta=
rted Serial Getty on ttyO2.<br>[\0x1b[32m  OK  \0x1b[0m] Started Automounts=
 filesystems on demand.<br>[\0x1b[32m  OK  \0x1b[0m] Reached target Sound C=
ard.<br>
[\0x1b[32m  OK  \0x1b[0m] Started Avahi mDNS/DNS-SD Stack.<br>[\0x1b[32m  O=
K  \0x1b[0m] Started Login Service.<br>[\0x1b[32m  OK  \0x1b[0m] Started bi=
nd.service.<br>         Starting stop-bootlogd.service...<br>         Start=
ing LSB: Remove /etc/nologin at boot...<br>
[\0x1b[32m  OK  \0x1b[0m] Started LSB: Remove /etc/nologin at boot.<br>[\0x=
1b[32m  OK  \0x1b[0m] Started stop-bootlogd.service.<br>[   13.933258] libe=
rtas_sdio mmc1:0001:1: (unregistered net_device): 00:19:88:17:37:f3, fw 9.7=
0.20p0, cap 0x00000303<br>
[   13.963836] libertas_sdio mmc1:0001:1: wlan0: Marvell WLAN 802.11 adapte=
r<br><br><br>Poky (Yocto Project Reference Distro) 1.5.1 overo ttyO2<br><br=
>overo login: </div><div><br></div></div><div class=3D"gmail_extra"><br><br=
>
<div class=3D"gmail_quote">On Tue, Mar 18, 2014 at 11:43 AM, Gary Thomas <s=
pan dir=3D"ltr">&lt;<a href=3D"mailto:gary@mlbassoc.com" target=3D"_blank">=
gary@mlbassoc.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote=
" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
<div class=3D"">On 2014-03-18 12:30, Rick Bianchi wrote:<br>
&gt; I rebooted the system with the &quot;reboot&quot; command and then che=
cked the date and time with &quot;date&quot;, it did not hold the system ti=
me and date correctly Sat Jan 1 02:28:44 UTC 2000.<br>
<br>
</div>There seems to be something very wrong with your startup/shutdown scr=
ipts<br>
as both this problem and the networking issue are handled by those scripts.=
<br>
<br>
Did you try turning on the verbose mode? &nbsp;If so, you should see a line=
 like<br>
this during shutdown:<br>
&nbsp; INIT: [2014-03-18 17:33:20.978789236] Running /etc/rc6.d/S25save-rtc=
.sh stop...<br>
and another like these on reboot:<br>
&nbsp; INIT: [1970-01-01 00:00:05.079166199] Running /etc/rcS.d/S40networki=
ng start...<br>
&nbsp; INIT: [1970-01-01 00:00:05.103022145] Running /etc/rcS.d/S55bootmisc=
.sh start...<br>
<div class=3D""><br>
&gt; On Tue, Mar 18, 2014 at 10:55 AM, Gary Thomas &lt;<a href=3D"mailto:ga=
ry@mlbassoc.com">gary@mlbassoc.com</a> &lt;mailto:<a href=3D"mailto:gary@ml=
bassoc.com">gary@mlbassoc.com</a>&gt;&gt; wrote:<br>
&gt;<br>
&gt; &nbsp; &nbsp; On 2014-03-18 11:49, Rick Bianchi wrote:<br>
&gt; &nbsp; &nbsp; &gt; Should have noted, that the date and time reset on =
every reboot?<br>
&gt;<br>
&gt; &nbsp; &nbsp; Unless you have a battery backed up clock device, e.g. D=
allas RTC,<br>
&gt; &nbsp; &nbsp; this will happen. &nbsp;If you shut your Yocto system do=
wn properly, e.g.<br>
&gt; &nbsp; &nbsp; using &#39;# reboot&#39;, it will keep track of when you=
 shut down and then<br>
&gt; &nbsp; &nbsp; set the clock to that time when you reboot. &nbsp;Withou=
t a true RTC, there&#39;s<br>
&gt; &nbsp; &nbsp; little else that it can do unless you run NTP and get th=
e time from some<br>
&gt; &nbsp; &nbsp; external server.<br>
&gt;<br>
</div><div class=3D"">&gt; &nbsp; &nbsp; &gt; On Tue, Mar 18, 2014 at 10:48=
 AM, Rick Bianchi &lt;<a href=3D"mailto:bianchirickkutta@gmail.com">bianchi=
rickkutta@gmail.com</a> &lt;mailto:<a href=3D"mailto:bianchirickkutta@gmail=
.com">bianchirickkutta@gmail.com</a>&gt; &lt;mailto:<a href=3D"mailto:bianc=
hirickkutta@gmail.com">bianchirickkutta@gmail.com</a> &lt;mailto:<a href=3D=
"mailto:bianchirickkutta@gmail.com">bianchirickkutta@gmail.com</a>&gt;&gt;&=
gt; wrote:<br>

&gt; &nbsp; &nbsp; &gt;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; Gary,<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; I noticed during the make the it was =
complaining about the date being in the future; I checked and sure thing th=
e date and time were bit off, about 14 years. I set it to the<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; correct time &nbsp;with &quot;date --=
set=3D&quot;18 MARCH 2014 10:32:00&quot; and the build completed in under 1=
0 mins.<br>
&gt; &nbsp; &nbsp; &gt;<br>
&gt; &nbsp; &nbsp; &gt;<br>
</div><div class=3D"">&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; On Fri, Mar 14,=
 2014 at 3:16 PM, Gary Thomas &lt;<a href=3D"mailto:gary@mlbassoc.com">gary=
@mlbassoc.com</a> &lt;mailto:<a href=3D"mailto:gary@mlbassoc.com">gary@mlba=
ssoc.com</a>&gt; &lt;mailto:<a href=3D"mailto:gary@mlbassoc.com">gary@mlbas=
soc.com</a> &lt;mailto:<a href=3D"mailto:gary@mlbassoc.com">gary@mlbassoc.c=
om</a>&gt;&gt;&gt; wrote:<br>

&gt; &nbsp; &nbsp; &gt;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; On 2014-03-14 08:49, Ri=
ck Bianchi wrote:<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; If I have time tod=
ay I will try to reproduce your results. If not, I will get to it first thi=
ng next week and post my result.<br>
&gt; &nbsp; &nbsp; &gt;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; One thing I forgot to p=
oint out is I used the identical kernel+modules for<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; both setups. &nbsp;I wo=
uld be interested to see if that makes any difference for<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; you. &nbsp;I can&#39;t =
fully test it as my board doesn&#39;t have a Linaro kernel.<br>
&gt; &nbsp; &nbsp; &gt;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; So there are four combi=
nations - I only tried the first two:<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Yocto kernel + Y=
octo rootfs<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Yocto kernel + L=
inaro rootfs<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Linaro kernel + =
Yocto rootfs<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Linaro kernel + =
Linaro rootfs<br>
&gt; &nbsp; &nbsp; &gt;<br>
</div>&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; On Fri, Mar =
14, 2014 at 7:38 AM, Gary Thomas &lt;<a href=3D"mailto:gary@mlbassoc.com">g=
ary@mlbassoc.com</a> &lt;mailto:<a href=3D"mailto:gary@mlbassoc.com">gary@m=
lbassoc.com</a>&gt; &lt;mailto:<a href=3D"mailto:gary@mlbassoc.com">gary@ml=
bassoc.com</a> &lt;mailto:<a href=3D"mailto:gary@mlbassoc.com">gary@mlbasso=
c.com</a>&gt;&gt; &lt;mailto:<a href=3D"mailto:gary@mlbassoc.com">gary@mlba=
ssoc.com</a> &lt;mailto:<a href=3D"mailto:gary@mlbassoc.com">gary@mlbassoc.=
com</a>&gt;<br>

<div class=3D"">&gt; &nbsp; &nbsp; &lt;mailto:<a href=3D"mailto:gary@mlbass=
oc.com">gary@mlbassoc.com</a> &lt;mailto:<a href=3D"mailto:gary@mlbassoc.co=
m">gary@mlbassoc.com</a>&gt;&gt;&gt;&gt; wrote:<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; On 2=
014-03-12 13:11, Rick Bianchi wrote:<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt;=
 usbip from /usr/src/kernel/drivers/staging/usbip<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; I fi=
nally managed to make this comparison. &nbsp;I did this by taking my Poky/Y=
octo<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; buil=
t system for a i.MX6 system (ARM Cortex-A9) and replaced the rootfs with<br=
>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; one =
for the Gumstix Overo (linaro). &nbsp;The results were nothing like yours, =
so<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; it&#=
39;s a bit confusing.<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; I ac=
tually built an entire Linux kernel - not just the one directory you mentio=
ned.<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; Poky=
/Yocto - 37 minutes<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; Lina=
ro &nbsp; &nbsp; - 48 minutes<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; Ther=
e is some flex in these numbers as they were on different [brand] SD cards,=
 etc,<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; but =
I sure did not see the &quot;5 minutes for Linaro vs 24 hours on Yocto&quot=
; that you reported.<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; Perh=
aps the only thing I did differently was I added the SDK tools to my Yocto =
system<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; usin=
g these meta-packages instead of the list you used.<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbs=
p; packagegroup-core-sdk packagegroup-core-standalone-sdk-target<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; You =
might try that to see if it makes any difference.<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; n.b.=
 part of what took me so long to get these results is I was trying to run t=
his test<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; on s=
omething closer to your Overo board. &nbsp;I have an older OMAP DM3730 boar=
d here that I<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; trie=
d to do these same steps, but it was unstable and I could not get the Linar=
o based<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; file=
 system to work at all. &nbsp;Very strange. &nbsp;In any case, I think the =
comparison I did get<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; with=
 the i.MX6 is valid.<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt;=
 On Wed, Mar 12, 2014 at 11:44 AM, Gary Thomas &lt;<a href=3D"mailto:gary@m=
lbassoc.com">gary@mlbassoc.com</a> &lt;mailto:<a href=3D"mailto:gary@mlbass=
oc.com">gary@mlbassoc.com</a>&gt; &lt;mailto:<a href=3D"mailto:gary@mlbasso=
c.com">gary@mlbassoc.com</a> &lt;mailto:<a href=3D"mailto:gary@mlbassoc.com=
">gary@mlbassoc.com</a>&gt;&gt; &lt;mailto:<a href=3D"mailto:gary@mlbassoc.=
com">gary@mlbassoc.com</a> &lt;mailto:<a href=3D"mailto:gary@mlbassoc.com">=
gary@mlbassoc.com</a>&gt;<br>

</div><div class=3D"">&gt; &nbsp; &nbsp; &lt;mailto:<a href=3D"mailto:gary@=
mlbassoc.com">gary@mlbassoc.com</a> &lt;mailto:<a href=3D"mailto:gary@mlbas=
soc.com">gary@mlbassoc.com</a>&gt;&gt;&gt; &lt;mailto:<a href=3D"mailto:gar=
y@mlbassoc.com">gary@mlbassoc.com</a> &lt;mailto:<a href=3D"mailto:gary@mlb=
assoc.com">gary@mlbassoc.com</a>&gt; &lt;mailto:<a href=3D"mailto:gary@mlba=
ssoc.com">gary@mlbassoc.com</a> &lt;mailto:<a href=3D"mailto:gary@mlbassoc.=
com">gary@mlbassoc.com</a>&gt;&gt;<br>

&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &lt;mailto:<a href=3D"m=
ailto:gary@mlbassoc.com">gary@mlbassoc.com</a> &lt;mailto:<a href=3D"mailto=
:gary@mlbassoc.com">gary@mlbassoc.com</a>&gt; &lt;mailto:<a href=3D"mailto:=
gary@mlbassoc.com">gary@mlbassoc.com</a> &lt;mailto:<a href=3D"mailto:gary@=
mlbassoc.com">gary@mlbassoc.com</a>&gt;&gt;&gt;&gt;&gt; wrote:<br>

&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt;=
<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt;=
 &nbsp; &nbsp; On 2014-03-12 10:09, Rick Bianchi wrote:<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt;=
 &nbsp; &nbsp; &gt; I completely agree with regards to the comparison, but =
I have compiled the same exact source on the same target (arm) and it only =
took 5 minutes when running the Linaro image.<br>

&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt;=
 &nbsp; &nbsp; &gt;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt;=
 &nbsp; &nbsp; &gt; To clarify, the only difference is the build, one is Li=
naro (took 5 minutes to compile source on the target) and the other Yocto (=
took almost 24 hours to compile source on the target).<br>

&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt;=
<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt;=
 &nbsp; &nbsp; Sorry, I missed that this was on the same hardware.<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt;=
<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt;=
 &nbsp; &nbsp; What are you building? &nbsp;I&#39;m going to try and duplic=
ate this here<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt;=
 &nbsp; &nbsp; on hardware I have that&#39;s quite similar to your Gumstix =
board.<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt;=
<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt;=
 &nbsp; &nbsp; &gt;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt;=
 &nbsp; &nbsp; &gt; Is there something that I am missing?<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt;=
 &nbsp; &nbsp; &gt;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt;=
 &nbsp; &nbsp; &gt;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt;=
 &nbsp; &nbsp; &gt; On Wed, Mar 12, 2014 at 8:28 AM, Gary Thomas &lt;<a hre=
f=3D"mailto:gary@mlbassoc.com">gary@mlbassoc.com</a> &lt;mailto:<a href=3D"=
mailto:gary@mlbassoc.com">gary@mlbassoc.com</a>&gt; &lt;mailto:<a href=3D"m=
ailto:gary@mlbassoc.com">gary@mlbassoc.com</a> &lt;mailto:<a href=3D"mailto=
:gary@mlbassoc.com">gary@mlbassoc.com</a>&gt;&gt; &lt;mailto:<a href=3D"mai=
lto:gary@mlbassoc.com">gary@mlbassoc.com</a> &lt;mailto:<a href=3D"mailto:g=
ary@mlbassoc.com">gary@mlbassoc.com</a>&gt;<br>

&gt; &nbsp; &nbsp; &lt;mailto:<a href=3D"mailto:gary@mlbassoc.com">gary@mlb=
assoc.com</a> &lt;mailto:<a href=3D"mailto:gary@mlbassoc.com">gary@mlbassoc=
.com</a>&gt;&gt;&gt; &lt;mailto:<a href=3D"mailto:gary@mlbassoc.com">gary@m=
lbassoc.com</a> &lt;mailto:<a href=3D"mailto:gary@mlbassoc.com">gary@mlbass=
oc.com</a>&gt; &lt;mailto:<a href=3D"mailto:gary@mlbassoc.com">gary@mlbasso=
c.com</a> &lt;mailto:<a href=3D"mailto:gary@mlbassoc.com">gary@mlbassoc.com=
</a>&gt;&gt;<br>

</div>&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &lt;mailto:<a hre=
f=3D"mailto:gary@mlbassoc.com">gary@mlbassoc.com</a> &lt;mailto:<a href=3D"=
mailto:gary@mlbassoc.com">gary@mlbassoc.com</a>&gt; &lt;mailto:<a href=3D"m=
ailto:gary@mlbassoc.com">gary@mlbassoc.com</a> &lt;mailto:<a href=3D"mailto=
:gary@mlbassoc.com">gary@mlbassoc.com</a>&gt;&gt;&gt;&gt; &lt;mailto:<a hre=
f=3D"mailto:gary@mlbassoc.com">gary@mlbassoc.com</a> &lt;mailto:<a href=3D"=
mailto:gary@mlbassoc.com">gary@mlbassoc.com</a>&gt;<br>

<div><div class=3D"h5">&gt; &nbsp; &nbsp; &lt;mailto:<a href=3D"mailto:gary=
@mlbassoc.com">gary@mlbassoc.com</a> &lt;mailto:<a href=3D"mailto:gary@mlba=
ssoc.com">gary@mlbassoc.com</a>&gt;&gt; &lt;mailto:<a href=3D"mailto:gary@m=
lbassoc.com">gary@mlbassoc.com</a> &lt;mailto:<a href=3D"mailto:gary@mlbass=
oc.com">gary@mlbassoc.com</a>&gt; &lt;mailto:<a href=3D"mailto:gary@mlbasso=
c.com">gary@mlbassoc.com</a> &lt;mailto:<a href=3D"mailto:gary@mlbassoc.com=
">gary@mlbassoc.com</a>&gt;&gt;&gt;<br>

&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &lt;=
mailto:<a href=3D"mailto:gary@mlbassoc.com">gary@mlbassoc.com</a> &lt;mailt=
o:<a href=3D"mailto:gary@mlbassoc.com">gary@mlbassoc.com</a>&gt; &lt;mailto=
:<a href=3D"mailto:gary@mlbassoc.com">gary@mlbassoc.com</a> &lt;mailto:<a h=
ref=3D"mailto:gary@mlbassoc.com">gary@mlbassoc.com</a>&gt;&gt; &lt;mailto:<=
a href=3D"mailto:gary@mlbassoc.com">gary@mlbassoc.com</a> &lt;mailto:<a hre=
f=3D"mailto:gary@mlbassoc.com">gary@mlbassoc.com</a>&gt;<br>

&gt; &nbsp; &nbsp; &lt;mailto:<a href=3D"mailto:gary@mlbassoc.com">gary@mlb=
assoc.com</a> &lt;mailto:<a href=3D"mailto:gary@mlbassoc.com">gary@mlbassoc=
.com</a>&gt;&gt;&gt;&gt;&gt;&gt; wrote:<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt;=
 &nbsp; &nbsp; &gt;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt;=
 &nbsp; &nbsp; &gt; &nbsp; &nbsp; On 2014-03-12 09:15, Rick Bianchi wrote:<=
br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt;=
 &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt;=
 &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; I have the gumstix-console-image wit=
h the added packages below. When I compile on the target is take a very lon=
g time for it to complete, over 24 hours. I have compiled the same<br>

&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt;=
 &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; code on the same target, but running=
 Linaro image, and it only takes a few minutes. Is there another recipe tha=
t I need to add to the build to speed up compiling?<br>

&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt;=
 &nbsp; &nbsp; &gt;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt;=
 &nbsp; &nbsp; &gt; &nbsp; &nbsp; Doubtful. &nbsp;The reason your build on =
the target takes so long is merely<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt;=
 &nbsp; &nbsp; &gt; &nbsp; &nbsp; one of horsepower - that little ARM proce=
ssor just doesn&#39;t have it, especially<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt;=
 &nbsp; &nbsp; &gt; &nbsp; &nbsp; if you are comparing it to a typical desk=
top environment.<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt;=
 &nbsp; &nbsp; &gt;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt;=
 &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; EXTRA_IMAGE_FEATURES +=3D &quot;dev-=
pkgs&quot;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt;=
 &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; IMAGE_INSTALL_append =3D&quot; autoc=
onf&quot;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt;=
 &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; IMAGE_INSTALL_append =3D&quot; autof=
s&quot;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt;=
 &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; IMAGE_INSTALL_append =3D&quot; autom=
ake&quot;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt;=
 &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; IMAGE_INSTALL_append =3D&quot; ccach=
e&rdquo;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt;=
 &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; IMAGE_INSTALL_append =3D&quot; chkco=
nfig&quot;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt;=
 &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; IMAGE_INSTALL_append =3D&quot; dbus-=
glib&quot;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt;=
 &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; IMAGE_INSTALL_append =3D&quot; gcc&q=
uot;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt;=
 &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; IMAGE_INSTALL_append =3D&quot; glib-=
2.0&quot;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt;=
 &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; IMAGE_INSTALL_append =3D&quot; glib-=
networking&quot;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt;=
 &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; IMAGE_INSTALL_append =3D&quot; glibm=
m&quot;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt;=
 &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; IMAGE_INSTALL_append =3D&quot; packa=
gegroup-core-buildessential&quot;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt;=
 &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; IMAGE_INSTALL_append =3D&quot; pciut=
ils&quot;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt;=
 &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; IMAGE_INSTALL_append =3D&quot; pkgco=
nfig&rdquo;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt;=
 &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; IMAGE_INSTALL_append =3D&quot; pytho=
n-scons&quot;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt;=
 &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; IMAGE_INSTALL_append =3D&quot; syste=
md-compat-units&rdquo;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt;=
 &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; IMAGE_INSTALL_append =3D&quot; sysfs=
utils&quot;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt;=
 &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; IMAGE_INSTALL_append =3D&quot; tcp-w=
rappers&quot;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt;=
 &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; IMAGE_INSTALL_append =3D&quot; usbut=
ils&quot;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt;=
 &nbsp; &nbsp; &gt; &nbsp; &nbsp; &gt; IMAGE_INSTALL_append =3D&quot; util-=
macros&quot;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; --<b=
r>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; ----=
--------------------------------------------------------<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; Gary=
 Thomas &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; | &nbsp;Con=
sulting for the<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; MLB =
Associates &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;| &nbsp; &nbsp;E=
mbedded world<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; ----=
--------------------------------------------------------<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; --<b=
r>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; ____=
___________________________________________<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; yoct=
o mailing list<br>
</div></div>&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp;=
 &nbsp; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a=
> &lt;mailto:<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.o=
rg</a>&gt; &lt;mailto:<a href=3D"mailto:yocto@yoctoproject.org">yocto@yocto=
project.org</a> &lt;mailto:<a href=3D"mailto:yocto@yoctoproject.org">yocto@=
yoctoproject.org</a>&gt;&gt; &lt;mailto:<a href=3D"mailto:yocto@yoctoprojec=
t.org">yocto@yoctoproject.org</a><br>

<div><div class=3D"h5">&gt; &nbsp; &nbsp; &lt;mailto:<a href=3D"mailto:yoct=
o@yoctoproject.org">yocto@yoctoproject.org</a>&gt; &lt;mailto:<a href=3D"ma=
ilto:yocto@yoctoproject.org">yocto@yoctoproject.org</a> &lt;mailto:<a href=
=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a>&gt;&gt;&gt;<b=
r>

&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt; &nbsp; &nbsp; <a h=
ref=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank">htt=
ps://lists.yoctoproject.org/listinfo/yocto</a><br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &gt;<br>
&gt; &nbsp; &nbsp; &gt;<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; --<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; -----------------------=
-------------------------------------<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; Gary Thomas &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; | &nbsp;Consulting for the<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; MLB Associates &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;| &nbsp; &nbsp;Embedded world<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; -----------------------=
-------------------------------------<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; --<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; _______________________=
________________________<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; yocto mailing list<br>
&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; <a href=3D"mailto:yocto=
@yoctoproject.org">yocto@yoctoproject.org</a> &lt;mailto:<a href=3D"mailto:=
yocto@yoctoproject.org">yocto@yoctoproject.org</a>&gt; &lt;mailto:<a href=
=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a> &lt;mailto:<a=
 href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a>&gt;&gt;<=
br>

&gt; &nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; <a href=3D"https://list=
s.yoctoproject.org/listinfo/yocto" target=3D"_blank">https://lists.yoctopro=
ject.org/listinfo/yocto</a><br>
&gt; &nbsp; &nbsp; &gt;<br>
&gt; &nbsp; &nbsp; &gt;<br>
&gt; &nbsp; &nbsp; &gt;<br>
&gt;<br>
&gt; &nbsp; &nbsp; --<br>
&gt; &nbsp; &nbsp; --------------------------------------------------------=
----<br>
&gt; &nbsp; &nbsp; Gary Thomas &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; | &nbsp;Consulting for the<br>
&gt; &nbsp; &nbsp; MLB Associates &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp;| &nbsp; &nbsp;Embedded world<br>
&gt; &nbsp; &nbsp; --------------------------------------------------------=
----<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
<br>
--<br>
------------------------------------------------------------<br>
Gary Thomas &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; | &nbsp=
;Consulting for the<br>
MLB Associates &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;| &nbsp; &nb=
sp;Embedded world<br>
------------------------------------------------------------<br>
--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
</div></div><a href=3D"https://lists.yoctoproject.org/listinfo/yocto" targe=
t=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div><br></div>

--001a113601540593a704f4f86308--
