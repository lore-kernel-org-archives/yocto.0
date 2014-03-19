Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 15491E00AD5
	for <yocto@yoctoproject.org>; Wed, 19 Mar 2014 10:02:14 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 3AC2CF811E3; Wed, 19 Mar 2014 11:02:14 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 49273F811DC;
	Wed, 19 Mar 2014 11:02:08 -0600 (MDT)
Message-ID: <5329CD9F.9010006@mlbassoc.com>
Date: Wed, 19 Mar 2014 11:02:23 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.3.0
MIME-Version: 1.0
To: Rick Bianchi <bianchirickkutta@gmail.com>
References: <CAA7h+EpU6RVwbewuJ6r04+O2CvjPBpP1z86dpAthm4_cBrrO+Q@mail.gmail.com>	<53207D25.2040309@mlbassoc.com>	<CAA7h+Eomb_92298Y1NDmtTNiTmNcbivytLd9xT=1FVZ+My=PAw@mail.gmail.com>	<5320AB11.4060303@mlbassoc.com>	<CAA7h+EoYviRS34heBABgE-o1eQP0po=rVgE-Tc98vSg16F-5+g@mail.gmail.com>	<5323147A.8000400@mlbassoc.com>	<CAA7h+EpRdEuYERe+N2enPyPDuP1fN+qE_PD9NnEGHYDV2wwP+Q@mail.gmail.com>	<53237FCF.8020700@mlbassoc.com>	<CAA7h+EprV97+okAJhq=b9jZrJz0UhegC3D0cDhSNsgboS4by6A@mail.gmail.com>	<CAA7h+ErZGg61XAYC5fZ2cLyeKfo7Ge_U9ZPGfNy2a+TMqiA76A@mail.gmail.com>	<53288899.8090702@mlbassoc.com>	<CAA7h+EpfhqXRPhdzEardavHfhM=d3b7AuPq3+GA=zobvReaOpg@mail.gmail.com>	<532893E3.9010405@mlbassoc.com>
	<CAA7h+EobGi81x0HKSn57cioX07zW0uvV+my=bRvi6ERvE9b+KA@mail.gmail.com>
In-Reply-To: <CAA7h+EobGi81x0HKSn57cioX07zW0uvV+my=bRvi6ERvE9b+KA@mail.gmail.com>
X-Enigmail-Version: 1.5.2
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
X-List-Received-Date: Wed, 19 Mar 2014 17:02:19 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 8bit

On 2014-03-19 10:45, Rick Bianchi wrote:
> Gary,
> I did, " sed -i s/VERBOSE=no/VERBOSE=very/ /etc/default/rcS" I am not seeing  any "INIT:" 

That's because you are running systemd, not sysvinit.  (Which I did explicitly
ask about in your other thread 'Losing ethernet after reboot' yesterday).

You're on your own debugging these problems as I don't use systemd, sorry.

> 
> "Did you try turning on the verbose mode? If so, you should see a line like
> this during shutdown:
> INIT: [2014-03-18 17:33:20.978789236] Running /etc/rc6.d/S25save-rtc.sh stop...
> and another like these on reboot:
> INIT: [1970-01-01 00:00:05.079166199] Running /etc/rcS.d/S40networking start...
>   INIT: [1970-01-01 00:00:05.103022145] Running /etc/rcS.d/S55bootmisc.sh start..."
> 
> 
> 
> 
> Shutdown:
> reboot
> [ 107.809967] systemd-logind[159]: Failed to stop user slice: Connection is closed
> [\0x1b[32m OK \0x1b[0m] Stopped Serial Getty on ttyO2.
> [\0x1b[32m OK \0x1b[0m] Stopped LSB: Remove /etc/nologin at boot.
> [\0x1b[32m OK \0x1b[0m] Stopped stop-bootlogd.service.
> Stopping LSB: simple distributed compiler client and server...
> Stopping bind.service...
> [\0x1b[32m OK \0x1b[0m] Removed slice system-serial\x2dgetty.slice.
> [\0x1b[32m OK \0x1b[0m] Removed slice system-getty.slice.
> [\0x1b[32m OK \0x1b[0m] Stopped Automounts filesystems on demand.
> [\0x1b[32m OK \0x1b[0m] Stopped LSB: simple distributed compiler client and server.
> [\0x1b[32m OK \0x1b[0m] Removed slice user-0.slice.
> Stopping Permit User Sessions...
> [\0x1b[32m OK \0x1b[0m] Started Store Sound Card State.
> [\0x1b[32m OK \0x1b[0m] Stopped Permit User Sessions.
> [\0x1b[32m OK \0x1b[0m] Stopped target Remote File Systems.
> [\0x1b[32m OK \0x1b[0m] Stopped bind.service.
> [\0x1b[32m OK \0x1b[0m] Stopped target Basic System.
> [\0x1b[32m OK \0x1b[0m] Stopped target Slices.
> [\0x1b[32m OK \0x1b[0m] Removed slice User and Session Slice.
> [\0x1b[32m OK \0x1b[0m] Stopped target Paths.
> [\0x1b[32m OK \0x1b[0m] Stopped target Timers.
> [\0x1b[32m OK \0x1b[0m] Stopped target Sockets.
> [\0x1b[32m OK \0x1b[0m] Closed sshd.socket.
> [\0x1b[32m OK \0x1b[0m] Closed Avahi mDNS/DNS-SD Stack Activation Socket.
> [\0x1b[32m OK \0x1b[0m] Closed Syslog Socket.
> [\0x1b[32m OK \0x1b[0m] Closed D-Bus System Message Bus Socket.
> [\0x1b[32m OK \0x1b[0m] Stopped target System Initialization.
> Stopping Update UTMP about System Reboot/Shutdown...
> Stopping Load/Save Random Seed...
> Stopping Apply Kernel Variables...
> [\0x1b[32m OK \0x1b[0m] Stopped Apply Kernel Variables.
> [\0x1b[32m OK \0x1b[0m] Stopped target Swap.
> [\0x1b[32m OK \0x1b[0m] Stopped Update UTMP about System Reboot/Shutdown.
> Stopping Recreate Volatile Files and Directories...
> [\0x1b[32m OK \0x1b[0m] Stopped Recreate Volatile Files and Directories.
> [\0x1b[32m OK \0x1b[0m] Stopped target Local File Systems.
> Unmounting /var/volatile...
> Unmounting Temporary Directory...
> [\0x1b[32m OK \0x1b[0m] Unmounted /var/volatile.
> [\0x1b[32m OK \0x1b[0m] Stopped target Local File Systems (Pre).
> [\0x1b[32m OK \0x1b[0m] Failed unmounting Temporary Directory.
> [\0x1b[32m OK \0x1b[0m] Reached target Unmount All Filesystems.
> [\0x1b[32m OK \0x1b[0m] Stopped Load/Save Random Seed.
> Stopping Remount Root and Kernel File Systems...
> [\0x1b[32m OK \0x1b[0m] Stopped Remount Root and Kernel File Systems.
> [\0x1b[32m OK \0x1b[0m] Reached target Shutdown.
> [ 110.805908] twl4030_wdt twl4030_wdt: Timeout can only be in the range [0-30] seconds
> [ 110.818450] twl4030_wdt twl4030_wdt: Unexpected close, watchdog still running!
> Sending SIGTERM to remaining processes...
> [ 110.930816] systemd-journald[64]: Received SIGTERM
> Sending SIGKILL to remaining processes...
> Hardware watchdog 'TWL4030 Watchdog', version 0
> Unmounting file systems.
> Unmounting /tmp.
> Unmounting /sys/fs/fuse/connections.
> Unmounting /sys/kernel/debug.
> All filesystems unmounted.
> Deactivating swaps.
> All swaps deactivated.
> Detaching loop devices.
> All loop devices detached.
> Detaching DM devices.
> All DM devices detached.
> Storage is finalized.
> [ 113.233001] Restarting system.
> \0x04\0x01\0x05\0x05\0xb3\0x04t\0xd8\0xb0b\0x81\0x01\0x00$U\0x16\0x0c @\0x00\0x00\0x00\0x01\0x04\0x08 @\0x00\0x00\0x00\0x01\0x04\0x08
> @\0x00\0x00\0x00\0x01D\0xa8\0xb1`\0x00\0x00\0x00\0x01\0x04\0x08 @\0x00\0x00\0x00\0x01\0x04\0x08 @\0x00\0x00\0x00\0x01\0x04\0x08\0xe0
> U-Boot SPL 2014.01 (Mar 18 2014 - 17:55:47)
> reading u-boot.img
> reading u-boot.img
> 
> 
> Startup:
> Booting from mmc ...
> ## Booting kernel from Legacy Image at 82000000 ...
> Image Name: Linux-3.5.7-yocto-standard
> Image Type: ARM Linux Kernel Image (uncompressed)
> Data Size: 3460936 Bytes = 3.3 MiB
> Load Address: 80008000
> Entry Point: 80008000
> Verifying Checksum ... OK
> Loading Kernel Image ... OK
> 
> Starting kernel ...
> 
> Uncompressing Linux... done, booting the kernel.
> [ 0.000000] Booting Linux on physical CPU 0
> [ 0.000000] Initializing cgroup subsys cpuset
> [ 0.000000] Initializing cgroup subsys cpu
> [ 0.000000] Linux version 3.5.7-yocto-standard (gumstix@gumstix-build-server) (gcc version 4.8.1 (GCC) ) #1 PREEMPT Tue Mar 18 17:02:53 MST 2014
> [ 0.000000] CPU: ARMv7 Processor [413fc082] revision 2 (ARMv7), cr=10c53c7d
> [ 0.000000] CPU: PIPT / VIPT nonaliasing data cache, VIPT aliasing instruction cache
> [ 0.000000] Machine: Gumstix Overo
> [ 0.000000] Reserving 12582912 bytes SDRAM for VRAM
> [ 0.000000] Memory policy: ECC disabled, Data cache writeback
> [ 0.000000] OMAP3630 ES1.2 (l2cache iva sgx neon isp 192mhz_clk )
> [ 0.000000] Clocking rate (Crystal/Core/MPU): 26.0/400/600 MHz
> [ 0.000000] Built 1 zonelists in Zone order, mobility grouping on. Total pages: 126720
> [ 0.000000] Kernel command line: console=ttyO2,115200n8 mpurate=500 vram=12M omapfb.mode=dvi:1024x768MR-16@60 omapdss.def_disp=dvi root=/dev/mmcblk0p2 rw rootfstype=ext3 rootwait
> [ 0.000000] PID hash table entries: 2048 (order: 1, 8192 bytes)
> [ 0.000000] Dentry cache hash table entries: 65536 (order: 6, 262144 bytes)
> [ 0.000000] Inode-cache hash table entries: 32768 (order: 5, 131072 bytes)
> [ 0.000000] allocated 1048576 bytes of page_cgroup
> [ 0.000000] please try 'cgroup_disable=memory' option if you don't want memory cgroups
> [ 0.000000] Memory: 499MB = 499MB total
> [ 0.000000] Memory: 497764k/497764k available, 26524k reserved, 0K highmem
> [ 0.000000] Virtual kernel memory layout:
> [ 0.000000] vector : 0xffff0000 - 0xffff1000 ( 4 kB)
> [ 0.000000] fixmap : 0xfff00000 - 0xfffe0000 ( 896 kB)
> [ 0.000000] vmalloc : 0xe0800000 - 0xff000000 ( 488 MB)
> [ 0.000000] lowmem : 0xc0000000 - 0xe0000000 ( 512 MB)
> [ 0.000000] pkmap : 0xbfe00000 - 0xc0000000 ( 2 MB)
> [ 0.000000] modules : 0xbf000000 - 0xbfe00000 ( 14 MB)
> [ 0.000000] .text : 0xc0008000 - 0xc0648be8 (6403 kB)
> [ 0.000000] .init : 0xc0649000 - 0xc0682938 ( 231 kB)
> [ 0.000000] .data : 0xc0684000 - 0xc06ec6d0 ( 418 kB)
> [ 0.000000] .bss : 0xc06ec6f4 - 0xc07773a0 ( 556 kB)
> [ 0.000000] NR_IRQS:474
> [ 0.000000] IRQ: Found an INTC at 0xfa200000 (revision 4.0) with 96 interrupts
> [ 0.000000] Total of 96 interrupts on 1 active controller
> [ 0.000000] OMAP clockevent source: GPTIMER1 at 32768 Hz
> [ 0.000000] sched_clock: 32 bits at 32kHz, resolution 30517ns, wraps every 131071999ms
> [ 0.000000] OMAP clocksource: 32k_counter at 32768 Hz
> [ 0.000000] Console: colour dummy device 80x30
> [ 0.000213] Calibrating delay loop... 597.64 BogoMIPS (lpj=2334720)
> [ 0.039123] pid_max: default: 32768 minimum: 301
> [ 0.039306] Security Framework initialized
> [ 0.039398] Mount-cache hash table entries: 512
> [ 0.040130] Initializing cgroup subsys debug
> [ 0.040161] Initializing cgroup subsys cpuacct
> [ 0.040161] Initializing cgroup subsys memory
> [ 0.040222] Initializing cgroup subsys devices
> [ 0.040222] Initializing cgroup subsys freezer
> [ 0.040252] Initializing cgroup subsys perf_event
> [ 0.040374] CPU: Testing write buffer coherency: ok
> [ 0.040618] Setting up static identity map for 0x8045af78 - 0x8045afd0
> [ 0.046081] devtmpfs: initialized
> [ 0.050567] dummy:
> [ 0.050933] NET: Registered protocol family 16
> [ 0.051300] GPMC revision 5.0
> [ 0.051361] gpmc: irq-20 could not claim: err -22
> [ 0.053039] OMAP GPIO hardware version 2.5
> [ 0.055297] omap_mux_init: Add partition: #1: core, flags: 0
> [ 0.060180] _omap_mux_get_by_name: Could not find signal uart4_rx.uart4_rx
> [ 0.065979] Reprogramming SDRC clock to 400000000 Hz
> [ 0.066009] dpll3_m2_clk rate change failed: -22
> [ 0.066009] Found NAND on CS0
> [ 0.066040] Registering NAND on CS0
> [ 0.067291] usbhs_omap: alias fck already exists
> [ 0.074707] hw-breakpoint: debug architecture 0x4 unsupported.
> [ 0.077606] omap-mcbsp.2: alias fck already exists
> [ 0.077789] omap-mcbsp.3: alias fck already exists
> [ 0.078887] Switched to new clocking rate (Crystal/Core/MPU): 26.0/400/500 MHz
> [ 0.079101] OMAP DMA hardware revision 5.0
> [ 0.088562] bio: create slab <bio-0> at 0
> [ 0.089385] fixed-dummy:
> [ 0.089782] vads7846: 3300 mV
> [ 0.090667] SCSI subsystem initialized
> [ 0.091033] usbcore: registered new interface driver usbfs
> [ 0.091186] usbcore: registered new interface driver hub
> [ 0.091430] usbcore: registered new device driver usb
> [ 0.101684] omap_i2c omap_i2c.1: bus 1 rev1.4.0 at 2600 kHz
> [ 0.104644] twl 1-0048: PIH (irq 7) chaining IRQs 320..328
> [ 0.104797] twl 1-0048: power (irq 325) chaining IRQs 328..335
> [ 0.105468] twl4030_gpio twl4030_gpio: gpio (irq 320) chaining IRQs 336..353
> [ 0.106781] VUSB1V5: 1500 mV normal standby
> [ 0.107360] VUSB1V8: 1800 mV normal standby
> [ 0.107879] VUSB3V1: 3100 mV normal standby
> [ 0.109863] twl4030_usb twl4030_usb: Initialized TWL4030 USB module
> [ 0.110504] vdd_mpu_iva: 600 <--> 1450 mV normal
> [ 0.110992] vdd_core: 600 <--> 1450 mV normal
> [ 0.111602] VMMC1: 1850 <--> 3150 mV at 3150 mV normal standby
> [ 0.112243] VDAC: 1800 mV normal standby
> [ 0.112854] VDVI: 1800 mV normal standby
> [ 0.125122] omap_i2c omap_i2c.3: bus 3 rev1.4.0 at 400 kHz
> [ 0.126007] omap-iommu omap-iommu.0: isp registered
> [ 0.126251] Advanced Linux Sound Architecture Driver Version 1.0.25.
> [ 0.127258] Switching to clocksource 32k_counter
> [ 0.160034] usbhs_omap usbhs_omap: xclk60mhsp2_ck set parentfailed error:-22
> [ 0.160919] NET: Registered protocol family 2
> [ 0.161254] IP route cache hash table entries: 4096 (order: 2, 16384 bytes)
> [ 0.161895] TCP established hash table entries: 16384 (order: 5, 131072 bytes)
> [ 0.162322] TCP bind hash table entries: 16384 (order: 4, 65536 bytes)
> [ 0.162567] TCP: Hash tables configured (established 16384 bind 16384)
> [ 0.162597] TCP: reno registered
> [ 0.162628] UDP hash table entries: 256 (order: 0, 4096 bytes)
> [ 0.162628] UDP-Lite hash table entries: 256 (order: 0, 4096 bytes)
> [ 0.162994] NET: Registered protocol family 1
> [ 0.163604] RPC: Registered named UNIX socket transport module.
> [ 0.163635] RPC: Registered udp transport module.
> [ 0.163635] RPC: Registered tcp transport module.
> [ 0.163635] RPC: Registered tcp NFSv4.1 backchannel transport module.
> [ 0.166625] audit: initializing netlink socket (disabled)
> [ 0.166687] type=2000 audit(0.164:1): initialized
> [ 0.168365] VFS: Disk quotas dquot_6.5.2
> [ 0.168457] Dquot-cache hash table entries: 1024 (order 0, 4096 bytes)
> [ 0.168884] NFS: Registering the id_resolver key type
> [ 0.168975] Key type id_resolver registered
> [ 0.169006] Key type id_legacy registered
> [ 0.169555] jffs2: version 2.2. (NAND) (SUMMARY) \0xc2\0xa9 2001-2006 Red Hat, Inc.
> [ 0.170379] fuse init (API version 7.19)
> [ 0.170959] msgmni has been set to 972
> [ 0.173004] Block layer SCSI generic (bsg) driver version 0.4 loaded (major 253)
> [ 0.173034] io scheduler noop registered
> [ 0.173034] io scheduler deadline registered (default)
> [ 0.173950] OMAP DSS rev 2.0
> [ 0.177764] omap_uart.0: ttyO0 at MMIO 0x4806a000 (irq = 72) is a OMAP UART0
> [ 0.178314] omap_uart.1: ttyO1 at MMIO 0x4806c000 (irq = 73) is a OMAP UART1
> [ 0.178833] omap_uart.2: ttyO2 at MMIO 0x49020000 (irq = 74) is a OMAP UART2
> [ 0.871154] console [ttyO2] enabled
> [ 0.875335] omap_uart.3: ttyO3 at MMIO 0x49042000 (irq = 80) is a OMAP UART3
> [ 0.892883] brd: module loaded
> [ 0.901367] loop: module loaded
> [ 0.906829] twl4030_madc twl4030_madc: clk disabled, enabling
> [ 0.915222] NAND device: Manufacturer ID: 0x2c, Chip ID: 0xbc (Micron NAND 512MiB 1,8V 16-bit), page size: 2048, OOB size: 64
> [ 0.927795] Creating 5 MTD partitions on "omap2-nand.0":
> [ 0.933471] 0x000000000000-0x000000080000 : "xloader"
> [ 0.940734] 0x000000080000-0x000000240000 : "uboot"
> [ 0.948852] 0x000000240000-0x000000280000 : "uboot environment"
> [ 0.956634] 0x000000280000-0x000000a80000 : "linux"
> [ 0.970886] 0x000000a80000-0x000020000000 : "rootfs"
> [ 1.478271] smsc911x: Driver version 2008-10-21
> [ 1.485168] smsc911x-mdio: probed
> [ 1.488861] smsc911x smsc911x.0: eth0: attached PHY driver [Generic PHY] (mii_bus:phy_addr=smsc911x-0:01, irq=-1)
> [ 1.499908] smsc911x smsc911x.0: eth0: MAC Address: 00:15:c9:29:01:ed
> [ 1.506744] smsc911x: Driver version 2008-10-21
> [ 1.512176] usbcore: registered new interface driver kaweth
> [ 1.518188] usbcore: registered new interface driver asix
> [ 1.523956] usbcore: registered new interface driver cdc_ether
> [ 1.530242] usbcore: registered new interface driver cdc_ncm
> [ 1.536590] ehci_hcd: USB 2.0 'Enhanced' Host Controller (EHCI) Driver
> [ 1.543701] ehci-omap.0 supply hsusb1 not found, using dummy regulator
> [ 2.557220] ehci-omap ehci-omap.0: OMAP-EHCI Host Controller
> [ 2.563568] ehci-omap ehci-omap.0: new USB bus registered, assigned bus number 1
> [ 2.571533] ehci-omap ehci-omap.0: irq 77, io mem 0x48064800
> [ 2.588378] ehci-omap ehci-omap.0: USB 2.0 started, EHCI 1.00
> [ 2.594696] usb usb1: New USB device found, idVendor=1d6b, idProduct=0002
> [ 2.601867] usb usb1: New USB device strings: Mfr=3, Product=2, SerialNumber=1
> [ 2.609497] usb usb1: Product: OMAP-EHCI Host Controller
> [ 2.615142] usb usb1: Manufacturer: Linux 3.5.7-yocto-standard ehci_hcd
> [ 2.622100] usb usb1: SerialNumber: ehci-omap.0
> [ 2.627929] hub 1-0:1.0: USB hub found
> [ 2.631896] hub 1-0:1.0: 3 ports detected
> [ 2.666564] Initializing USB Mass Storage driver...
> [ 2.671844] usbcore: registered new interface driver usb-storage
> [ 2.678192] USB Mass Storage support registered.
> [ 2.683074] musb-hdrc: version 6.0, ?dma?, otg (peripheral+host)
> [ 2.696685] musb-hdrc musb-hdrc: USB OTG mode controller at fa0ab000 using DMA, IRQ 92
> [ 2.707794] mousedev: PS/2 mouse device common for all mice
> [ 2.714538] twl_rtc twl_rtc: Enabling TWL-RTC
> [ 2.722045] twl_rtc twl_rtc: rtc core: registered twl_rtc as rtc0
> [ 2.729278] i2c /dev entries driver
> [ 2.734680] voltdm_scale: No voltage scale API registered for vdd_mpu_iva
> [ 2.742095] platform mpu.0: omap_target: unable to scale voltage up.
> [ 2.748840] cpuidle: using governor ladder
> [ 2.753173] cpuidle: using governor menu
> [ 2.757873] omap_hsmmc omap_hsmmc.0: Failed to get debounce clk
> [ 2.764343] omap_hsmmc.0 supply vmmc_aux not found, using dummy regulator
> [ 2.963378] usb 1-2: new high-speed USB device number 2 using ehci-omap
> [ 3.120330] usb 1-2: New USB device found, idVendor=0409, idProduct=005a
> [ 3.127441] usb 1-2: New USB device strings: Mfr=0, Product=0, SerialNumber=0
> [ 3.135986] hub 1-2:1.0: USB hub found
> [ 3.140045] hub 1-2:1.0: 4 ports detected
> [ 3.144836] omap_hsmmc omap_hsmmc.1: Failed to get debounce clk
> [ 3.151428] omap_hsmmc.1 supply vmmc not found, using dummy regulator
> [ 3.158569] omap_hsmmc.1 supply vmmc_aux not found, using dummy regulator
> [ 3.170104] omap_hsmmc omap_hsmmc.1: could not set regulator OCR (-22)
> [ 3.177246] omap_hsmmc omap_hsmmc.1: could not set regulator OCR (-22)
> [ 3.232452] usbcore: registered new interface driver usbhid
> [ 3.238494] usbhid: USB HID core driver
> [ 3.243682] usbcore: registered new interface driver snd-usb-audio
> [ 3.251831] overo SoC init
> [ 3.254943] soc-audio soc-audio: ASoC machine overo should use snd_soc_register_card()
> [ 3.355590] twl4030-codec twl4030-codec: ASoC: Failed to create Capture debugfs file
> [ 3.367553] asoc: twl4030-hifi <-> omap-mcbsp.2 mapping ok
> [ 3.379608] oprofile: hardware counters not available
> [ 3.384918] oprofile: using timer interrupt.
> [ 3.389953] TCP: cubic registered
> [ 3.393585] NET: Registered protocol family 17
> [ 3.398376] NET: Registered protocol family 15
> [ 3.403411] Key type dns_resolver registered
> [ 3.408447] VFP support v0.3: implementor 41 architecture 3 part 30 variant c rev 3
> [ 3.422302] ThumbEE CPU extension supported.
> [ 3.427001] sr_init: No PMIC hook to init smartreflex
> [ 3.432922] smartreflex smartreflex.0: omap_sr_probe: SmartReflex driver initialized
> [ 3.441345] smartreflex smartreflex.1: omap_sr_probe: SmartReflex driver initialized
> [ 3.455993] usb 1-2.2: new low-speed USB device number 3 using ehci-omap
> [ 3.467651] clock: disabling unused clocks to save power
> [ 3.474884] registered taskstats version 1
> [ 3.480499] fbcvt: 1024x768@60: CVT Name - .786M3-R
> [ 3.487915] mmc0: host does not support reading read-only switch. assuming write-enable.
> [ 3.511932] Console: switching to colour frame buffer device 128x48
> [ 3.504974] mmc0: new high speed SDHC card at address 0007
> [ 3.510314] mmcblk0: mmc0:0007 SD32G 29.3 GiB
> [ 3.512390] mmcblk0: p1 p2
> [ 3.552551] VDAC: incomplete constraints, leaving on
> [ 3.560546] twl_rtc twl_rtc: setting system clock to 2000-01-01 00:35:10 UTC (946686910)
> [ 3.569274] ALSA device list:
> [ 3.572448] #0: overo
> [ 3.585662] mmc1: new SDIO card at address 0001
> [ 3.590576] kjournald starting. Commit interval 5 seconds
> [ 3.602508] usb 1-2.2: New USB device found, idVendor=413c, idProduct=2112
> [ 3.609802] usb 1-2.2: New USB device strings: Mfr=1, Product=2, SerialNumber=0
> [ 3.617584] usb 1-2.2: Product: Dell USB Wired Multimedia Keyboard
> [ 3.624114] usb 1-2.2: Manufacturer: DELL
> [ 3.634887] input: DELL Dell USB Wired Multimedia Keyboard as /devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.2/1-2.2:1.0/input/input0
> [ 3.648742] hid-generic 0003:413C:2112.0001: input: USB HID v1.10 Keyboard [DELL Dell USB Wired Multimedia Keyboard] on usb-ehci-omap.0-2.2/input0
> [ 3.670684] input: DELL Dell USB Wired Multimedia Keyboard as /devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.2/1-2.2:1.1/input/input1
> [ 3.684509] hid-generic 0003:413C:2112.0002: input: USB HID v1.10 Device [DELL Dell USB Wired Multimedia Keyboard] on usb-ehci-omap.0-2.2/input1
> [ 3.784179] usb 1-2.3: new low-speed USB device number 4 using ehci-omap
> [ 3.913696] usb 1-2.3: New USB device found, idVendor=04b3, idProduct=310c
> [ 3.921020] usb 1-2.3: New USB device strings: Mfr=0, Product=2, SerialNumber=0
> [ 3.928771] usb 1-2.3: Product: USB Optical Mouse
> [ 3.939056] input: USB Optical Mouse as /devices/platform/usbhs_omap/ehci-omap.0/usb1/1-2/1-2.3/1-2.3:1.0/input/input2
> [ 3.950958] hid-generic 0003:04B3:310C.0003: input: USB HID v1.11 Mouse [USB Optical Mouse] on usb-ehci-omap.0-2.3/input0
> [ 4.049835] usb 1-2.4: new high-speed USB device number 5 using ehci-omap
> [ 4.176605] usb 1-2.4: New USB device found, idVendor=0bda, idProduct=0811
> [ 4.183898] usb 1-2.4: New USB device strings: Mfr=1, Product=2, SerialNumber=3
> [ 4.191650] usb 1-2.4: Product: 802.11n WLAN Adapter
> [ 4.196899] usb 1-2.4: Manufacturer: Realtek
> [ 4.201416] usb 1-2.4: SerialNumber: 5CF3700CF299
> [ 4.421539] EXT3-fs (mmcblk0p2): using internal journal
> [ 4.427154] EXT3-fs (mmcblk0p2): mounted filesystem with writeback data mode
> [ 4.434661] VFS: Mounted root (ext3 filesystem) on device 179:2.
> [ 4.444610] devtmpfs: mounted
> [ 4.448272] Freeing init memory: 228K
> [ 4.742309] systemd[1]: systemd 206 running in system mode. (+PAM +LIBWRAP -AUDIT -SELINUX +IMA +SYSVINIT -LIBCRYPTSETUP -GCRYPT +ACL +XZ)
> 
> Welcome to \0x1b[1mLinux\0x1b[0m!
> 
> [ 4.856475] NET: Registered protocol family 10
> [ 4.862884] systemd[1]: Inserted module 'ipv6'
> [ 4.871551] systemd[1]: Set hostname to <overo>.
> [ 5.247406] systemd[1]: Cannot add dependency job for unit display-manager.service, ignoring: Unit display-manager.service failed to load: No such file or directory. See system
> logs and 'systemctl status display-manager.service' for details.
> [ 5.272369] systemd[1]: Starting Forward Password Requests to Wall Directory Watch.
> [ 5.281158] systemd[1]: Started Forward Password Requests to Wall Directory Watch.
> [ 5.289367] systemd[1]: Expecting device dev-ttyGS0.device...
> Expecting device dev-ttyGS0.device...
> [ 5.315795] systemd[1]: Expecting device dev-ttyO2.device...
> Expecting device dev-ttyO2.device...
> [ 5.339019] systemd[1]: Starting Remote File Systems.
> [\0x1b[32m OK \0x1b[0m] Reached target Remote File Systems.
> [ 5.362365] systemd[1]: Reached target Remote File Systems.
> [ 5.368347] systemd[1]: Starting Syslog Socket.
> [\0x1b[32m OK \0x1b[0m] Listening on Syslog Socket.
> [ 5.385711] systemd[1]: Listening on Syslog Socket.
> [ 5.390991] systemd[1]: Starting Delayed Shutdown Socket.
> [\0x1b[32m OK \0x1b[0m] Listening on Delayed Shutdown Socket.
> [ 5.416961] systemd[1]: Listening on Delayed Shutdown Socket.
> [ 5.423126] systemd[1]: Starting /dev/initctl Compatibility Named Pipe.
> [\0x1b[32m OK \0x1b[0m] Listening on /dev/initctl Compatibility Named Pipe.
> [ 5.448303] systemd[1]: Listening on /dev/initctl Compatibility Named Pipe.
> [ 5.455780] systemd[1]: Starting Root Slice.
> [\0x1b[32m OK \0x1b[0m] Created slice Root Slice.
> [ 5.479583] systemd[1]: Created slice Root Slice.
> [ 5.484649] systemd[1]: Starting User and Session Slice.
> [\0x1b[32m OK \0x1b[0m] Created slice User and Session Slice.
> [ 5.510711] systemd[1]: Created slice User and Session Slice.
> [ 5.516906] systemd[1]: Starting System Slice.
> [\0x1b[32m OK \0x1b[0m] Created slice System Slice.
> [ 5.542053] systemd[1]: Created slice System Slice.
> [ 5.547363] systemd[1]: Starting Slices.
> [\0x1b[32m OK \0x1b[0m] Reached target Slices.
> [ 5.565490] systemd[1]: Reached target Slices.
> [ 5.570281] systemd[1]: Starting system-getty.slice.
> [\0x1b[32m OK \0x1b[0m] Created slice system-getty.slice.
> [ 5.596954] systemd[1]: Created slice system-getty.slice.
> [ 5.602783] systemd[1]: Starting system-serial\x2dgetty.slice.
> [\0x1b[32m OK \0x1b[0m] Created slice system-serial\x2dgetty.slice.
> [ 5.627990] systemd[1]: Created slice system-serial\x2dgetty.slice.
> [ 5.634796] systemd[1]: Starting Journal Socket.
> [\0x1b[32m OK \0x1b[0m] Listening on Journal Socket.
> [ 5.659301] systemd[1]: Listening on Journal Socket.
> [ 5.671569] systemd[1]: Starting Apply Kernel Variables...
> Starting Apply Kernel Variables...
> [ 5.713836] systemd[1]: Started Load Kernel Modules.
> [ 5.719299] systemd[1]: Starting Journal Service...
> Starting Journal Service...
> [\0x1b[32m OK \0x1b[0m] Started Journal Service.
> [ 5.758605] systemd[1]: Started Journal Service.
> [ 5.768890] systemd[1]: Starting Create list of required static device nodes for the current kernel...
> Starting Create list of required static device nodes...rrent kernel...
> [ 5.806365] systemd[1]: Mounted Huge Pages File System.
> [ 5.825958] systemd[1]: Mounted Configuration File System.
> [ 5.841827] systemd[1]: Mounting Debug File System...
> Mounting Debug File System...
> [ 5.873168] systemd[1]: Mounting FUSE Control File System...
> Mounting FUSE Control File System...
> [ 5.921722] systemd[1]: Starting udev Kernel Socket.
> [\0x1b[32m OK \0x1b[0m] Listening on udev Kernel Socket.
> [ 5.971740] systemd[1]: Listening on udev Kernel Socket.
> [ 5.978027] systemd[1]: Starting udev Control Socket.
> [\0x1b[32m OK \0x1b[0m] Listening on udev Control Socket.
> [ 6.018371] systemd[1]: Listening on udev Control Socket.
> [ 6.024749] systemd[1]: Starting udev Coldplug all Devices...
> Starting udev Coldplug all Devices...
> [ 6.059204] systemd[1]: Starting Dispatch Password Requests to Console Directory Watch.
> [ 6.077972] systemd[1]: Started Dispatch Password Requests to Console Directory Watch.
> [ 6.104980] systemd[1]: Starting Paths.
> [\0x1b[32m OK \0x1b[0m] Reached target Paths.
> [ 6.143371] systemd[1]: Reached target Paths.
> [ 6.148193] systemd[1]: Mounted POSIX Message Queue File System.
> [ 6.174682] systemd[1]: Starting Arbitrary Executable File Formats File System Automount Point.
> [\0x1b[32m OK \0x1b[0m] Set up automount Arbitrary Executable File Formats F...utomount Point.
> [ 6.221496] systemd[1]: Set up automount Arbitrary Executable File Formats File System Automount Point.
> [ 6.243072] systemd[1]: Started Set Up Additional Binary Formats.
> [ 6.260467] systemd[1]: Starting Swap.
> [\0x1b[32m OK \0x1b[0m] Reached target Swap.
> [ 6.276153] systemd[1]: Reached target Swap.
> [ 6.280822] systemd[1]: Mounting Temporary Directory...
> Mounting Temporary Directory...
> [ 6.321441] systemd[1]: Started File System Check on Root Device.
> [ 6.354339] systemd[1]: Starting Remount Root and Kernel File Systems...
> Starting Remount Root and Kernel File Systems...
> [\0x1b[32m OK \0x1b[0m] Started Apply Kernel Variables.
> [ 6.487152] systemd[1]: Started Apply Kernel Variables.
> [\0x1b[32m OK \0x1b[0m] Mounted Debug File System.
> [ 6.523864] systemd[1]: Mounted Debug File System.
> [\0x1b[32m OK \0x1b[0m] Mounted FUSE Control File System.
> [ 6.565460] systemd[1]: Mounted FUSE Control File System.
> [\0x1b[32m OK \0x1b[0m] Mounted Temporary Directory.
> [ 6.581237] systemd[1]: Mounted Temporary Directory.
> [\0x1b[32m OK \0x1b[0m] Started udev Coldplug all Devices.
> [ 7.409210] systemd[1]: Started udev Coldplug all Devices.
> [\0x1b[32m OK \0x1b[0m] Started Create list of required static device nodes ...current kernel.
> [ 7.495025] systemd[1]: Started Create list of required static device nodes for the current kernel.
> [ 7.506408] systemd[1]: Starting Create static device nodes in /dev...
> Starting Create static device nodes in /dev...
> [\0x1b[32m OK \0x1b[0m] Started Remount Root and Kernel File Systems.
> [ 7.924682] systemd[1]: Started Remount Root and Kernel File Systems.
> [\0x1b[32m OK \0x1b[0m] Started Create static device nodes in /dev.
> [ 7.956085] systemd[1]: Started Create static device nodes in /dev.
> [ 7.963104] systemd[1]: Starting udev Kernel Device Manager...
> Starting udev Kernel Device Manager...
> [ 7.990661] systemd[1]: Starting Load/Save Random Seed...
> Starting Load/Save Random Seed...
> [ 8.038604] systemd[1]: Started Machine ID first boot configure.
> [ 8.048278] systemd-udevd[88]: starting version 206
> [ 8.054840] systemd[1]: Starting Local File Systems (Pre).
> [\0x1b[32m OK \0x1b[0m] Reached target Local File Systems (Pre).
> [ 8.096618] systemd[1]: Reached target Local File Systems (Pre).
> [ 8.105957] systemd[1]: Mounting /var/volatile...
> Mounting /var/volatile...
> [ 8.132202] systemd[1]: var-volatile.mount: Directory /var/volatile to mount over is not empty, mounting anyway.
> [\0x1b[32m OK \0x1b[0m] Started udev Kernel Device Manager.
> [ 8.190368] systemd[1]: Started udev Kernel Device Manager.
> [\0x1b[32m OK \0x1b[0m] Started Load/Save Random Seed.
> [ 8.237152] systemd[1]: Started Load/Save Random Seed.
> [\0x1b[32m OK \0x1b[0m] Mounted /var/volatile.
> [ 8.250518] systemd[1]: Mounted /var/volatile.
> [ 8.260711] systemd[1]: Starting Local File Systems.
> [\0x1b[32m OK \0x1b[0m] Reached target Local File Systems.
> [ 8.291900] systemd[1]: Reached target Local File Systems.
> [ 8.297912] systemd[1]: Starting Trigger Flushing of Journal to Persistent Storage...
> Starting Trigger Flushing of Journal to Persistent Storage...
> [ 8.347900] systemd[1]: Starting Recreate Volatile Files and Directories...
> Starting Recreate Volatile Files and Directories...
> [\0x1b[32m OK \0x1b[0m] Started Trigger Flushing of Journal to Persistent Storage.
> [ 8.479370] systemd[1]: Started Trigger Flushing of Journal to Persistent Storage.
> [\0x1b[32m OK \0x1b[0m] Started Recreate Volatile Files and Directories.
> [ 8.518402] systemd[1]: Started Recreate Volatile Files and Directories.
> [ 8.532501] systemd[1]: Starting Update UTMP about System Reboot/Shutdown...
> Starting Update UTMP about System Reboot/Shutdown...
> [ 8.580871] systemd[1]: Started Run pending postinsts.
> [\0x1b[32m OK \0x1b[0m] Started Update UTMP about System Reboot/Shutdown.
> [ 8.666809] systemd[1]: Started Update UTMP about System Reboot/Shutdown.
> [ 8.681243] systemd[1]: Starting System Initialization.
> [\0x1b[32m OK \0x1b[0m] Reached target System Initialization.
> [ 8.705871] systemd[1]: Reached target System Initialization.
> [ 8.712280] systemd[1]: Started Manage Sound Card State (restore and store).
> [ 8.737976] systemd[1]: Starting Restore Sound Card State...
> Starting Restore Sound Card State...
> [ 8.760375] Linux media interface: v0.10
> [ 8.779602] systemd[1]: Starting sshd.socket.
> [ 8.789398] ads7846 spi1.0: touchscreen, irq 210
> [ 8.807739] systemd[1]: Starting Daily Cleanup of Temporary Directories.
> [ 8.832977] systemd[1]: Started Daily Cleanup of Temporary Directories.
> [ 8.865570] systemd[1]: Starting Timers.
> [\0x1b[32m OK \0x1b[0m] Reached target Timers.
> [ 8.893280] ads7846 spi1.0: no device detected, test read result was 0x00000FFF
> [ 8.909118] systemd[1]: Reached target Timers.
> [ 8.914001] systemd[1]: Starting Avahi mDNS/DNS-SD Stack Activation Socket.
> [\0x1b[32m OK \0x1b[0m] Listening on Avahi mDNS/DNS-SD Stack Activation Socket.
> [ 8.963043] Linux video capture interface: v2.00
> [ 8.968902] systemd[1]: Listening on Avahi mDNS/DNS-SD Stack Activation Socket.
> [ 8.991516] systemd[1]: Starting D-Bus System Message Bus Socket.
> [\0x1b[32m OK \0x1b[0m] Listening on D-Bus System Message Bus Socket.
> [ 9.034027] systemd[1]: Listening on D-Bus System Message Bus Socket.
> [ 9.065979] lib80211: common routines for IEEE802.11 drivers
> [\0x1b[32m OK \0x1b[0m] Started Restore Sound Card State.
> [ 9.088836] systemd[1]: Started Restore Sound Card State.
> [\0x1b[32m OK \0x1b[0m] Listening on sshd.socket.
> [ 9.135528] systemd[1]: Listening on sshd.socket.
> [ 9.146118] systemd[1]: Starting Sockets.
> [\0x1b[32m OK \0x1b[0m] Reached target Sockets.
> [ 9.174652] systemd[1]: Reached target Sockets.
> [ 9.179656] systemd[1]: Starting Basic System.
> [\0x1b[32m OK \0x1b[0m] Reached target Basic System.
> [ 9.208892] omap3isp supply VDD_CSIPHY1 not found, using dummy regulator
> [ 9.216888] systemd[1]: Reached target Basic System.
> [ 9.227325] systemd[1]: Starting bind.service...
> Starting bind.service...
> [ 9.268707] systemd[1]: Starting hostapd.service...
> Starting hostapd.service...
> [ 9.315582] systemd[1]: Starting LSB: simple distributed compiler client and server...
> [ 9.340667] omap3isp supply VDD_CSIPHY2 not found, using dummy regulator
> Starting LSB: simple distributed compiler client and server...
> [ 9.367980] cfg80211: Calling CRDA to update world regulatory domain
> [ 9.383819] systemd[1]: Starting Avahi mDNS/DNS-SD Stack...
> Starting Avahi mDNS/DNS-SD Stack...
> [ 9.464447] systemd[1]: Starting System Logging Service...
> Starting System Logging Service...
> [\0x1b[32m OK \0x1b[0m] Started System [ 9.563201] omap3isp omap3isp: Revision 15.0 found
> Logging Service.
> [ 9.572021] systemd[1]: Started System Logging Service.
> [ 9.583740] systemd[1]: Starting SSH Key Generation...
> Starting SSH Key Generation...
> [ 9.644714] systemd[1]: Starting Automounts filesystems on demand...
> [ 9.673004] libertas_sdio: Libertas SDIO driver
> Starting Automounts filesystems on demand...
> [ 9.686035] omap-iommu omap-iommu.0: isp: version 1.1
> [ 9.715270] systemd[1]: Starting Kernel Logging Service...
> Starting Kernel Logging Service...
> [ 9.777648] libertas_sdio: Copyright Pierre Ossman
> [\0x1b[32m OK \0x1b[0m] Started Kernel Logging Service.
> [ 9.791961] systemd[1]: Started Kernel Logging Service.
> [ 9.813842] systemd[1]: Starting Network Time Service...
> Starting Network Time Service...
> [ 9.889404] systemd[1]: Starting D-Bus System Message Bus...
> Starting D-Bus System Message Bus...
> [\0x1b[32m OK \0x1b[0m] Started D-Bus System Message Bus.
> [ 10.026214] systemd[1]: Started D-Bus System Message Bus.
> [ 10.033386] systemd[1]: Starting Permit User Sessions...
> [ 10.049407] mt9v032 3-005c: Probing MT9V032 at address 0x5c
> Starting Permit User Sessions...
> [ 10.173492] systemd[1]: Starting Login Service...
> Starting Login Service...
> [ 10.290924] mt9v032 3-005c: MT9V032 power up failed
> [\0x1b[32m OK \0x1b[0m] Started LSB: simple distributed compiler client and server.
> [\0x1b[1;31mFAILED\0x1b[0m] Failed to start hostapd.service.
> See 'systemctl status hostapd.service' for details.
> [\0x1b[32m OK \0x1b[0m] Started SSH Key Generation.
> [\0x1b[32m OK \0x1b[0m] Started Network Time Service.
> [\0x1b[32m OK \0x1b[0m] Started Permit User Sessions.
> Starting Getty on tty1...
> [\0x1b[32m OK \0x1b[0m] Started Getty on tty1.
> [ 10.633728] isp_register_subdev_group: Unable to register subdev mt9v032
> [\0x1b[32m OK \0x1b[0m] Found device /dev/ttyO2.
> Starting Serial Getty on ttyO2...
> [\0x1b[32m OK \0x1b[0m] Started Serial Getty on ttyO2.
> [\0x1b[32m OK \0x1b[0m] Started Automounts filesystems on demand.
> [\0x1b[32m OK \0x1b[0m] Reached target Sound Card.
> [\0x1b[32m OK \0x1b[0m] Started Avahi mDNS/DNS-SD Stack.
> [\0x1b[32m OK \0x1b[0m] Started Login Service.
> [\0x1b[32m OK \0x1b[0m] Started bind.service.
> Starting stop-bootlogd.service...
> Starting LSB: Remove /etc/nologin at boot...
> [\0x1b[32m OK \0x1b[0m] Started LSB: Remove /etc/nologin at boot.
> [\0x1b[32m OK \0x1b[0m] Started stop-bootlogd.service.
> [ 13.933258] libertas_sdio mmc1:0001:1: (unregistered net_device): 00:19:88:17:37:f3, fw 9.70.20p0, cap 0x00000303
> [ 13.963836] libertas_sdio mmc1:0001:1: wlan0: Marvell WLAN 802.11 adapter
> 
> 
> Poky (Yocto Project Reference Distro) 1.5.1 overo ttyO2
> 
> overo login:
> 
> 
> 
> On Tue, Mar 18, 2014 at 11:43 AM, Gary Thomas <gary@mlbassoc.com <mailto:gary@mlbassoc.com>> wrote:
> 
>     On 2014-03-18 12:30, Rick Bianchi wrote:
>     > I rebooted the system with the "reboot" command and then checked the date and time with "date", it did not hold the system time and date correctly Sat Jan 1 02:28:44 UTC 2000.
> 
>     There seems to be something very wrong with your startup/shutdown scripts
>     as both this problem and the networking issue are handled by those scripts.
> 
>     Did you try turning on the verbose mode?  If so, you should see a line like
>     this during shutdown:
>       INIT: [2014-03-18 17:33:20.978789236] Running /etc/rc6.d/S25save-rtc.sh stop...
>     and another like these on reboot:
>       INIT: [1970-01-01 00:00:05.079166199] Running /etc/rcS.d/S40networking start...
>       INIT: [1970-01-01 00:00:05.103022145] Running /etc/rcS.d/S55bootmisc.sh start...
> 
>     > On Tue, Mar 18, 2014 at 10:55 AM, Gary Thomas <gary@mlbassoc.com <mailto:gary@mlbassoc.com> <mailto:gary@mlbassoc.com <mailto:gary@mlbassoc.com>>> wrote:
>     >
>     >     On 2014-03-18 11:49, Rick Bianchi wrote:
>     >     > Should have noted, that the date and time reset on every reboot?
>     >
>     >     Unless you have a battery backed up clock device, e.g. Dallas RTC,
>     >     this will happen.  If you shut your Yocto system down properly, e.g.
>     >     using '# reboot', it will keep track of when you shut down and then
>     >     set the clock to that time when you reboot.  Without a true RTC, there's
>     >     little else that it can do unless you run NTP and get the time from some
>     >     external server.
>     >
>     >     > On Tue, Mar 18, 2014 at 10:48 AM, Rick Bianchi <bianchirickkutta@gmail.com <mailto:bianchirickkutta@gmail.com> <mailto:bianchirickkutta@gmail.com <mailto:bianchirickkutta@gmail.com>> <mailto:bianchirickkutta@gmail.com
>     <mailto:bianchirickkutta@gmail.com> <mailto:bianchirickkutta@gmail.com <mailto:bianchirickkutta@gmail.com>>>> wrote:
>     >     >
>     >     >     Gary,
>     >     >     I noticed during the make the it was complaining about the date being in the future; I checked and sure thing the date and time were bit off, about 14 years. I set it to the
>     >     >     correct time  with "date --set="18 MARCH 2014 10:32:00" and the build completed in under 10 mins.
>     >     >
>     >     >
>     >     >     On Fri, Mar 14, 2014 at 3:16 PM, Gary Thomas <gary@mlbassoc.com <mailto:gary@mlbassoc.com> <mailto:gary@mlbassoc.com <mailto:gary@mlbassoc.com>> <mailto:gary@mlbassoc.com <mailto:gary@mlbassoc.com>
>     <mailto:gary@mlbassoc.com <mailto:gary@mlbassoc.com>>>> wrote:
>     >     >
>     >     >         On 2014-03-14 08:49, Rick Bianchi wrote:
>     >     >         > If I have time today I will try to reproduce your results. If not, I will get to it first thing next week and post my result.
>     >     >
>     >     >         One thing I forgot to point out is I used the identical kernel+modules for
>     >     >         both setups.  I would be interested to see if that makes any difference for
>     >     >         you.  I can't fully test it as my board doesn't have a Linaro kernel.
>     >     >
>     >     >         So there are four combinations - I only tried the first two:
>     >     >           Yocto kernel + Yocto rootfs
>     >     >           Yocto kernel + Linaro rootfs
>     >     >           Linaro kernel + Yocto rootfs
>     >     >           Linaro kernel + Linaro rootfs
>     >     >
>     >     >         > On Fri, Mar 14, 2014 at 7:38 AM, Gary Thomas <gary@mlbassoc.com <mailto:gary@mlbassoc.com> <mailto:gary@mlbassoc.com <mailto:gary@mlbassoc.com>> <mailto:gary@mlbassoc.com <mailto:gary@mlbassoc.com>
>     <mailto:gary@mlbassoc.com <mailto:gary@mlbassoc.com>>> <mailto:gary@mlbassoc.com <mailto:gary@mlbassoc.com> <mailto:gary@mlbassoc.com <mailto:gary@mlbassoc.com>>
>     >     <mailto:gary@mlbassoc.com <mailto:gary@mlbassoc.com> <mailto:gary@mlbassoc.com <mailto:gary@mlbassoc.com>>>>> wrote:
>     >     >         >
>     >     >         >     On 2014-03-12 13:11, Rick Bianchi wrote:
>     >     >         >     > usbip from /usr/src/kernel/drivers/staging/usbip
>     >     >         >
>     >     >         >     I finally managed to make this comparison.  I did this by taking my Poky/Yocto
>     >     >         >     built system for a i.MX6 system (ARM Cortex-A9) and replaced the rootfs with
>     >     >         >     one for the Gumstix Overo (linaro).  The results were nothing like yours, so
>     >     >         >     it's a bit confusing.
>     >     >         >
>     >     >         >     I actually built an entire Linux kernel - not just the one directory you mentioned.
>     >     >         >
>     >     >         >     Poky/Yocto - 37 minutes
>     >     >         >     Linaro     - 48 minutes
>     >     >         >
>     >     >         >     There is some flex in these numbers as they were on different [brand] SD cards, etc,
>     >     >         >     but I sure did not see the "5 minutes for Linaro vs 24 hours on Yocto" that you reported.
>     >     >         >
>     >     >         >     Perhaps the only thing I did differently was I added the SDK tools to my Yocto system
>     >     >         >     using these meta-packages instead of the list you used.
>     >     >         >       packagegroup-core-sdk packagegroup-core-standalone-sdk-target
>     >     >         >
>     >     >         >     You might try that to see if it makes any difference.
>     >     >         >
>     >     >         >     n.b. part of what took me so long to get these results is I was trying to run this test
>     >     >         >     on something closer to your Overo board.  I have an older OMAP DM3730 board here that I
>     >     >         >     tried to do these same steps, but it was unstable and I could not get the Linaro based
>     >     >         >     file system to work at all.  Very strange.  In any case, I think the comparison I did get
>     >     >         >     with the i.MX6 is valid.
>     >     >         >
>     >     >         >     > On Wed, Mar 12, 2014 at 11:44 AM, Gary Thomas <gary@mlbassoc.com <mailto:gary@mlbassoc.com> <mailto:gary@mlbassoc.com <mailto:gary@mlbassoc.com>> <mailto:gary@mlbassoc.com <mailto:gary@mlbassoc.com>
>     <mailto:gary@mlbassoc.com <mailto:gary@mlbassoc.com>>> <mailto:gary@mlbassoc.com <mailto:gary@mlbassoc.com> <mailto:gary@mlbassoc.com <mailto:gary@mlbassoc.com>>
>     >     <mailto:gary@mlbassoc.com <mailto:gary@mlbassoc.com> <mailto:gary@mlbassoc.com <mailto:gary@mlbassoc.com>>>> <mailto:gary@mlbassoc.com <mailto:gary@mlbassoc.com>
>     <mailto:gary@mlbassoc.com <mailto:gary@mlbassoc.com>> <mailto:gary@mlbassoc.com <mailto:gary@mlbassoc.com> <mailto:gary@mlbassoc.com <mailto:gary@mlbassoc.com>>>
>     >     >         <mailto:gary@mlbassoc.com <mailto:gary@mlbassoc.com> <mailto:gary@mlbassoc.com <mailto:gary@mlbassoc.com>> <mailto:gary@mlbassoc.com <mailto:gary@mlbassoc.com>
>     <mailto:gary@mlbassoc.com <mailto:gary@mlbassoc.com>>>>>> wrote:
>     >     >         >     >
>     >     >         >     >     On 2014-03-12 10:09, Rick Bianchi wrote:
>     >     >         >     >     > I completely agree with regards to the comparison, but I have compiled the same exact source on the same target (arm) and it only took 5 minutes when running the Linaro image.
>     >     >         >     >     >
>     >     >         >     >     > To clarify, the only difference is the build, one is Linaro (took 5 minutes to compile source on the target) and the other Yocto (took almost 24 hours to compile source on the target).
>     >     >         >     >
>     >     >         >     >     Sorry, I missed that this was on the same hardware.
>     >     >         >     >
>     >     >         >     >     What are you building?  I'm going to try and duplicate this here
>     >     >         >     >     on hardware I have that's quite similar to your Gumstix board.
>     >     >         >     >
>     >     >         >     >     >
>     >     >         >     >     > Is there something that I am missing?
>     >     >         >     >     >
>     >     >         >     >     >
>     >     >         >     >     > On Wed, Mar 12, 2014 at 8:28 AM, Gary Thomas <gary@mlbassoc.com <mailto:gary@mlbassoc.com> <mailto:gary@mlbassoc.com <mailto:gary@mlbassoc.com>> <mailto:gary@mlbassoc.com <mailto:gary@mlbassoc.com>
>     <mailto:gary@mlbassoc.com <mailto:gary@mlbassoc.com>>> <mailto:gary@mlbassoc.com <mailto:gary@mlbassoc.com> <mailto:gary@mlbassoc.com <mailto:gary@mlbassoc.com>>
>     >     <mailto:gary@mlbassoc.com <mailto:gary@mlbassoc.com> <mailto:gary@mlbassoc.com <mailto:gary@mlbassoc.com>>>> <mailto:gary@mlbassoc.com <mailto:gary@mlbassoc.com>
>     <mailto:gary@mlbassoc.com <mailto:gary@mlbassoc.com>> <mailto:gary@mlbassoc.com <mailto:gary@mlbassoc.com> <mailto:gary@mlbassoc.com <mailto:gary@mlbassoc.com>>>
>     >     >         <mailto:gary@mlbassoc.com <mailto:gary@mlbassoc.com> <mailto:gary@mlbassoc.com <mailto:gary@mlbassoc.com>> <mailto:gary@mlbassoc.com <mailto:gary@mlbassoc.com>
>     <mailto:gary@mlbassoc.com <mailto:gary@mlbassoc.com>>>>> <mailto:gary@mlbassoc.com <mailto:gary@mlbassoc.com> <mailto:gary@mlbassoc.com <mailto:gary@mlbassoc.com>>
>     >     <mailto:gary@mlbassoc.com <mailto:gary@mlbassoc.com> <mailto:gary@mlbassoc.com <mailto:gary@mlbassoc.com>>> <mailto:gary@mlbassoc.com <mailto:gary@mlbassoc.com>
>     <mailto:gary@mlbassoc.com <mailto:gary@mlbassoc.com>> <mailto:gary@mlbassoc.com <mailto:gary@mlbassoc.com> <mailto:gary@mlbassoc.com <mailto:gary@mlbassoc.com>>>>
>     >     >         >     <mailto:gary@mlbassoc.com <mailto:gary@mlbassoc.com> <mailto:gary@mlbassoc.com <mailto:gary@mlbassoc.com>> <mailto:gary@mlbassoc.com <mailto:gary@mlbassoc.com>
>     <mailto:gary@mlbassoc.com <mailto:gary@mlbassoc.com>>> <mailto:gary@mlbassoc.com <mailto:gary@mlbassoc.com> <mailto:gary@mlbassoc.com <mailto:gary@mlbassoc.com>>
>     >     <mailto:gary@mlbassoc.com <mailto:gary@mlbassoc.com> <mailto:gary@mlbassoc.com <mailto:gary@mlbassoc.com>>>>>>> wrote:
>     >     >         >     >     >
>     >     >         >     >     >     On 2014-03-12 09:15, Rick Bianchi wrote:
>     >     >         >     >     >     >
>     >     >         >     >     >     > I have the gumstix-console-image with the added packages below. When I compile on the target is take a very long time for it to complete, over 24 hours. I have compiled the same
>     >     >         >     >     >     > code on the same target, but running Linaro image, and it only takes a few minutes. Is there another recipe that I need to add to the build to speed up compiling?
>     >     >         >     >     >
>     >     >         >     >     >     Doubtful.  The reason your build on the target takes so long is merely
>     >     >         >     >     >     one of horsepower - that little ARM processor just doesn't have it, especially
>     >     >         >     >     >     if you are comparing it to a typical desktop environment.
>     >     >         >     >     >
>     >     >         >     >     >     > EXTRA_IMAGE_FEATURES += "dev-pkgs"
>     >     >         >     >     >     > IMAGE_INSTALL_append =" autoconf"
>     >     >         >     >     >     > IMAGE_INSTALL_append =" autofs"
>     >     >         >     >     >     > IMAGE_INSTALL_append =" automake"
>     >     >         >     >     >     > IMAGE_INSTALL_append =" ccache”
>     >     >         >     >     >     > IMAGE_INSTALL_append =" chkconfig"
>     >     >         >     >     >     > IMAGE_INSTALL_append =" dbus-glib"
>     >     >         >     >     >     > IMAGE_INSTALL_append =" gcc"
>     >     >         >     >     >     > IMAGE_INSTALL_append =" glib-2.0"
>     >     >         >     >     >     > IMAGE_INSTALL_append =" glib-networking"
>     >     >         >     >     >     > IMAGE_INSTALL_append =" glibmm"
>     >     >         >     >     >     > IMAGE_INSTALL_append =" packagegroup-core-buildessential"
>     >     >         >     >     >     > IMAGE_INSTALL_append =" pciutils"
>     >     >         >     >     >     > IMAGE_INSTALL_append =" pkgconfig”
>     >     >         >     >     >     > IMAGE_INSTALL_append =" python-scons"
>     >     >         >     >     >     > IMAGE_INSTALL_append =" systemd-compat-units”
>     >     >         >     >     >     > IMAGE_INSTALL_append =" sysfsutils"
>     >     >         >     >     >     > IMAGE_INSTALL_append =" tcp-wrappers"
>     >     >         >     >     >     > IMAGE_INSTALL_append =" usbutils"
>     >     >         >     >     >     > IMAGE_INSTALL_append =" util-macros"
>     >     >         >
>     >     >         >     --
>     >     >         >     ------------------------------------------------------------
>     >     >         >     Gary Thomas                 |  Consulting for the
>     >     >         >     MLB Associates              |    Embedded world
>     >     >         >     ------------------------------------------------------------
>     >     >         >     --
>     >     >         >     _______________________________________________
>     >     >         >     yocto mailing list
>     >     >         >     yocto@yoctoproject.org <mailto:yocto@yoctoproject.org> <mailto:yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>> <mailto:yocto@yoctoproject.org
>     <mailto:yocto@yoctoproject.org> <mailto:yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>>> <mailto:yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>     >     <mailto:yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>> <mailto:yocto@yoctoproject.org <mailto:yocto@yoctoproject.org> <mailto:yocto@yoctoproject.org
>     <mailto:yocto@yoctoproject.org>>>>
>     >     >         >     https://lists.yoctoproject.org/listinfo/yocto
>     >     >         >
>     >     >         >
>     >     >         >
>     >     >         >
>     >     >
>     >     >         --
>     >     >         ------------------------------------------------------------
>     >     >         Gary Thomas                 |  Consulting for the
>     >     >         MLB Associates              |    Embedded world
>     >     >         ------------------------------------------------------------
>     >     >         --
>     >     >         _______________________________________________
>     >     >         yocto mailing list
>     >     >         yocto@yoctoproject.org <mailto:yocto@yoctoproject.org> <mailto:yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>> <mailto:yocto@yoctoproject.org
>     <mailto:yocto@yoctoproject.org> <mailto:yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>>>
>     >     >         https://lists.yoctoproject.org/listinfo/yocto
>     >     >
>     >     >
>     >     >
>     >
>     >     --
>     >     ------------------------------------------------------------
>     >     Gary Thomas                 |  Consulting for the
>     >     MLB Associates              |    Embedded world
>     >     ------------------------------------------------------------
>     >
>     >
>     >
>     >
> 
>     --
>     ------------------------------------------------------------
>     Gary Thomas                 |  Consulting for the
>     MLB Associates              |    Embedded world
>     ------------------------------------------------------------
>     --
>     _______________________________________________
>     yocto mailing list
>     yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>     https://lists.yoctoproject.org/listinfo/yocto
> 
> 

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

