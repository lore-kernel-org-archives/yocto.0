Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com [209.85.214.179])
 by mx.groups.io with SMTP id smtpd.web10.11704.1616414510612825230
 for <yocto@lists.yoctoproject.org>;
 Mon, 22 Mar 2021 05:01:50 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=dQ3vmno/;
 spf=pass (domain: gmail.com, ip: 209.85.214.179, mailfrom: zoran.stojsavljevic@gmail.com)
Received: by mail-pl1-f179.google.com with SMTP id o2so6436335plg.1
        for <yocto@lists.yoctoproject.org>; Mon, 22 Mar 2021 05:01:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=VwNZYp+ezFMXBJM3puk1XeSX1bxHzU5tEtikqMKVXik=;
        b=dQ3vmno/0xPbzX+e9D8ufF3txYCGbZX9+JYzmp/6zOSZJ3ENNUEnqcHfU91n4xJCwq
         musux8jhzs+Ulw6Qm19Ln2hRaIa5y0e6m77fcpNo9M2sQCWEnPVZHXmdTh/Va2ne6wsC
         0pHrN0xFVrz7bt2lMH+0BsOrb26sh69GC2hzU3OJzRJOG7ykk4rRopzhoOjVq7Ya2FWg
         VSjloJRXivLekB+RJ7OwFJA76c1Mlc1oidntot7MzpbRcunuspjL2lS0LboJKex5h0HG
         RAgbhUNmvZkzf9Dmve5hc+MYU+IWQ6OR94nnofRoEyRydnuUMKWwRfjEHTwi+bV8w+v7
         wd6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=VwNZYp+ezFMXBJM3puk1XeSX1bxHzU5tEtikqMKVXik=;
        b=e6v0KcvkVHwCDmsqxHAyqyl4rg6kpB0cay5Hj30SLde2AxjlX2rU8LIenZ4jSRgsgv
         KDVO2EMNkn5BNXtJGsjeFjaanJ1x/G1FQktrKLMsgHL02BMKWSwu//vWT5pdaYD4VQf0
         MJpi/2aNrf4hI8qrcADlc1yoNw7rPUPp/LBpMT7tZ/brl42fKNIExs1GzYKKkmmNJ4VI
         vg7hIgNORAjG7WFshSFFDQgYrVbp8vL+VggTmrhvkhke6itAZ/gd9dZp6hIxjHlMgY4W
         FGHARyFooHz2G2CJRAqba3ni0v8BfPAmZnkWWspA3DCtsJjlL5hcQqSlxqZwANjcOxCw
         1ScQ==
X-Gm-Message-State: AOAM531uXZHAKc0G7xb1J6pAydKgXi2xZLZGYs05uK8HaHBBv7kHrMXz
	LoE2ylKGFxGk0nuh8rQjboryzX3EAgzSKO+FNsc=
X-Google-Smtp-Source: ABdhPJwDOSREkOp5+365YEi/7TdIeqYM6PBSs9GDTawm39hCnUfD3gt0gaHanPvJKzL9Hk1Z0a2vQiWHXn7IWFPrVEw=
X-Received: by 2002:a17:902:d78a:b029:e6:e1f:f695 with SMTP id
 z10-20020a170902d78ab02900e60e1ff695mr26323504ply.82.1616414509363; Mon, 22
 Mar 2021 05:01:49 -0700 (PDT)
MIME-Version: 1.0
References: <CAGAf8Lz0zrVjMwnpXxAwvOY=Ym52nroxpDDAZ+v9EPPHATZRxg@mail.gmail.com>
 <32114.1616404785573111151@lists.yoctoproject.org>
In-Reply-To: <32114.1616404785573111151@lists.yoctoproject.org>
From: "Zoran" <zoran.stojsavljevic@gmail.com>
Date: Mon, 22 Mar 2021 13:01:37 +0100
Message-ID: <CAGAf8Lxz9Fipwx5ESTHRtU8Rve-U41xhA773XRXstdmEJTp0ew@mail.gmail.com>
Subject: Re: [yocto] Enabling Serial console via uart1(serial1) in cm3(rpi3) kernel 5.4. #cm3 #dunfell
To: prashantsingh@dialtronics.com
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Why am I (only, seems) always answering NON YOCTO issues in the YOCTO
thread??? ;-)
_______

OK. The good sign about what U R talking is shown here:
[    0.000885] printk: console [tty1] enabled

> But now another issue I'm facing when I'm enabling console
> via this ttsS0 port i.e.
> [   13.280639] ttyS ttyS0: 2 input overrun(s)

It is on the several places:
[    6.480654] ttyS ttyS0: 2 input overrun(s)
[    7.962826] smsc95xx 1-1.1:1.0 eth0: link up, 100Mbps, full-duplex,
lpa 0xCDE1
[    7.973416] ttyS ttyS0: 2 input overrun(s)
[   11.883822] Installing knfsd (copyright (C) 1996 okir@monad.swb.de).
[   11.893705] ttyS ttyS0: 2 input overrun(s)
[   13.268076] NFSD: Using /var/lib/nfs/v4recovery as the NFSv4 state
recovery directory
[   13.280639] ttyS ttyS0: 2 input overrun(s)

It seems that the solution for this problem is:
https://www.linuxquestions.org/questions/linux-kernel-70/tty-usb-input-ove=
rruns-4175512707/

Namely:
https://www.linuxquestions.org/questions/linux-kernel-70/tty-usb-input-ove=
rruns-4175512707/#post5215591

> I fixed the problem with increasing the N_TTY_BUF_SIZE from 4096 to 1310=
72
> (file /include/linux/tty.h) and recompiled the linux kernel. I'm getting=
 no more tty
> input overrun(s).

Please, let us know.

Zee
_______





On Mon, Mar 22, 2021 at 10:19 AM <prashantsingh@dialtronics.com> wrote:
>
> Hi Zoran,
> here is the cat /proc/cmdline output of my cm3-
>
> coherent_pool=3D1M snd_bcm2835.enable_compat_alsa=3D0 snd_bcm2835.enable=
_hdmi=3D1 snd_bcm2835.enable_headphones=3D1 bcm2708_fb.fbwidth=3D720 bcm270=
8_fb.fbheight=3D480 bcm2708_fb.fbswap=3D1 smsc95xx.macaddr=3DB8:27:EB:AD:85=
:CA vc_mem.mem_base=3D0x3ec00000 vc_mem.mem_size=3D0x40000000  dwc_otg.lpm_=
enable=3D0 console=3DttyS0,115200 console=3Dtty1 root=3D/dev/mmcblk0p2 root=
fstype=3Dext4 rootwait kgdboc=3DttyAMA0,115200
>
> Earlier my issue was that  I was no getting /dev/ttyS0 terminal in my yo=
cto image for cm3.
> But going through the web I got that setting 1 to CONFIG_SERIAL_8250_RUN=
TIME_UARTS  solved that issue and now I'm getting ttyS0 in my /dev director=
y.
>
> But now another issue I'm facing when I'm enabling cosole via this ttsS0=
 port i.e.
>                                                                         =
                                          [   13.280639] ttyS ttyS0: 2 inpu=
t overrun(s)
>
> here is my dmesg output:
>
> [    0.000000] Booting Linux on physical CPU 0x0
> [    0.000000] Linux version 5.4.64-v7 (oe-user@oe-host) (gcc version 9.=
3.0 (GCC)) #1 SMP Fri Sep 11 12:57:30 UTC 2020
> [    0.000000] CPU: ARMv7 Processor [410fd034] revision 4 (ARMv7), cr=3D=
10c5383d
> [    0.000000] CPU: div instructions available: patching division code
> [    0.000000] CPU: PIPT / VIPT nonaliasing data cache, VIPT aliasing in=
struction cache
> [    0.000000] OF: fdt: Machine model: Raspberry Pi Compute Module 3 Rev=
 1.0
> [    0.000000] Memory policy: Data cache writealloc
> [    0.000000] Reserved memory: created CMA memory pool at 0x37400000, s=
ize 64 MiB
> [    0.000000] OF: reserved mem: initialized node linux,cma, compatible =
id shared-dma-pool
> [    0.000000] On node 0 totalpages: 242688
> [    0.000000]   Normal zone: 2133 pages used for memmap
> [    0.000000]   Normal zone: 0 pages reserved
> [    0.000000]   Normal zone: 242688 pages, LIFO batch:63
> [    0.000000] percpu: Embedded 20 pages/cpu s50060 r8192 d23668 u81920
> [    0.000000] pcpu-alloc: s50060 r8192 d23668 u81920 alloc=3D20*4096
> [    0.000000] pcpu-alloc: [0] 0 [0] 1 [0] 2 [0] 3
> [    0.000000] Built 1 zonelists, mobility grouping on.  Total pages: 24=
0555
> [    0.000000] Kernel command line: coherent_pool=3D1M snd_bcm2835.enabl=
e_compat_alsa=3D0 snd_bcm2835.enable_hdmi=3D1 snd_bcm2835.enable_headphones=
=
=3D1 bcm2708_fb.fbwidth=3D720 bcm2708_fb.fbheight=3D480 bcm2708_fb.fbswap=
=3D1 smsc95xx.macaddr=3DB8:27:EB:AD:85:CA vc_mem.mem_base=3D0x3ec00000 vc_=
mem.mem_size=3D0x40000000  dwc_otg.lpm_enable=3D0 console=3DttyS0,115200 co=
nsole=3Dtty1 root=3D/dev/mmcblk0p2 rootfstype=3Dext4 rootwait kgdboc=3DttyA=
MA0,115200
> [    0.000000] Dentry cache hash table entries: 131072 (order: 7, 524288=
 bytes, linear)
> [    0.000000] Inode-cache hash table entries: 65536 (order: 6, 262144 b=
ytes, linear)
> [    0.000000] mem auto-init: stack:off, heap alloc:off, heap free:off
> [    0.000000] Memory: 880444K/970752K available (9216K kernel code, 716=
K rwdata, 2684K rodata, 1024K init, 849K bss, 24772K reserved, 65536K cma-r=
eserved)
> [    0.000000] SLUB: HWalign=3D64, Order=3D0-3, MinObjects=3D0, CPUs=3D4=
, Nodes=3D1
> [    0.000000] ftrace: allocating 29805 entries in 59 pages
> [    0.000000] rcu: Hierarchical RCU implementation.
> [    0.000000] rcu: RCU calculated value of scheduler-enlistment delay i=
s 10 jiffies.
> [    0.000000] NR_IRQS: 16, nr_irqs: 16, preallocated irqs: 16
> [    0.000000] random: get_random_bytes called from start_kernel+0x328/0=
x508 with crng_init=3D0
> [    0.000000] arch_timer: cp15 timer(s) running at 19.20MHz (phys).
> [    0.000000] clocksource: arch_sys_counter: mask: 0xffffffffffffff max=
_cycles: 0x46d987e47, max_idle_ns: 440795202767 ns
> [    0.000006] sched_clock: 56 bits at 19MHz, resolution 52ns, wraps eve=
ry 4398046511078ns
> [    0.000020] Switching to timer-based delay loop, resolution 52ns
> [    0.000288] Console: colour dummy device 80x30
> [    0.000885] printk: console [tty1] enabled
> [    0.000960] Calibrating delay loop (skipped), value calculated using =
timer frequency.. 38.40 BogoMIPS (lpj=3D192000)
> [    0.001009] pid_max: default: 32768 minimum: 301
> [    0.001232] LSM: Security Framework initializing
> [    0.001477] Mount-cache hash table entries: 2048 (order: 1, 8192 byte=
s, linear)
> [    0.001524] Mountpoint-cache hash table entries: 2048 (order: 1, 8192=
 bytes, linear)
> [    0.002936] Disabling memory control group subsystem
> [    0.003081] CPU: Testing write buffer coherency: ok
> [    0.003674] CPU0: thread -1, cpu 0, socket 0, mpidr 80000000
> [    0.004651] Setting up static identity map for 0x100000 - 0x100060
> [    0.004873] rcu: Hierarchical SRCU implementation.
> [    0.005586] smp: Bringing up secondary CPUs ...
> [    0.006748] CPU1: thread -1, cpu 1, socket 0, mpidr 80000001
> [    0.008417] CPU2: thread -1, cpu 2, socket 0, mpidr 80000002
> [    0.009943] CPU3: thread -1, cpu 3, socket 0, mpidr 80000003
> [    0.010479] smp: Brought up 1 node, 4 CPUs
> [    0.010528] SMP: Total of 4 processors activated (153.60 BogoMIPS).
> [    0.010557] CPU: All CPU(s) started in HYP mode.
> [    0.010582] CPU: Virtualization extensions available.
> [    0.011597] devtmpfs: initialized
> [    0.027564] VFP support v0.3: implementor 41 architecture 3 part 40 v=
ariant 3 rev 4
> [    0.028074] clocksource: jiffies: mask: 0xffffffff max_cycles: 0xffff=
ffff, max_idle_ns: 19112604462750000 ns
> [    0.028132] futex hash table entries: 1024 (order: 4, 65536 bytes, li=
near)
> [    0.031459] pinctrl core: initialized pinctrl subsystem
> [    0.032650] NET: Registered protocol family 16
> [    0.036992] DMA: preallocated 1024 KiB pool for atomic coherent alloc=
ations
> [    0.041879] audit: initializing netlink subsys (disabled)
> [    0.042183] audit: type=3D2000 audit(0.040:1): state=3Dinitialized au=
dit_enabled=3D0 res=3D1
> [    0.043730] hw-breakpoint: found 5 (+1 reserved) breakpoint and 4 wat=
chpoint registers.
> [    0.043770] hw-breakpoint: maximum watchpoint size is 8 bytes.
> [    0.044019] Serial: AMBA PL011 UART driver
> [    0.046056] bcm2835-mbox 3f00b880.mailbox: mailbox enabled
> [    0.070160] raspberrypi-firmware soc:firmware: Attached to firmware f=
rom 2020-09-11 14:25, variant start
> [    0.080196] raspberrypi-firmware soc:firmware: Firmware hash is ecd57=
1f7947fb751a266d8591b0573d4d975fbe6
> [    0.132933] bcm2835-dma 3f007000.dma: DMA legacy API manager, dmachan=
s=3D0x1
> [    0.135178] SCSI subsystem initialized
> [    0.135460] usbcore: registered new interface driver usbfs
> [    0.135556] usbcore: registered new interface driver hub
> [    0.135703] usbcore: registered new device driver usb
> [    0.137691] clocksource: Switched to clocksource arch_sys_counter
> [    1.382483] VFS: Disk quotas dquot_6.6.0
> [    1.382646] VFS: Dquot-cache hash table entries: 1024 (order 0, 4096 =
bytes)
> [    1.382869] FS-Cache: Loaded
> [    1.383168] CacheFiles: Loaded
> [    1.394807] thermal_sys: Registered thermal governor 'step_wise'
> [    1.395207] NET: Registered protocol family 2
> [    1.396283] tcp_listen_portaddr_hash hash table entries: 512 (order: =
0, 6144 bytes, linear)
> [    1.396360] TCP established hash table entries: 8192 (order: 3, 32768=
 bytes, linear)
> [    1.396501] TCP bind hash table entries: 8192 (order: 4, 65536 bytes,=
 linear)
> [    1.396713] TCP: Hash tables configured (established 8192 bind 8192)
> [    1.396898] UDP hash table entries: 512 (order: 2, 16384 bytes, linea=
r)
> [    1.396973] UDP-Lite hash table entries: 512 (order: 2, 16384 bytes, =
linear)
> [    1.397287] NET: Registered protocol family 1
> [    1.398427] RPC: Registered named UNIX socket transport module.
> [    1.398462] RPC: Registered udp transport module.
> [    1.398488] RPC: Registered tcp transport module.
> [    1.398515] RPC: Registered tcp NFSv4.1 backchannel transport module.
> [    1.400297] hw perfevents: enabled with armv7_cortex_a7 PMU driver, 7=
 counters available
> [    1.404004] Initialise system trusted keyrings
> [    1.404281] workingset: timestamp_bits=3D14 max_order=3D18 bucket_ord=
er=3D4
> [    1.416225] FS-Cache: Netfs 'nfs' registered for caching
> [    1.416897] NFS: Registering the id_resolver key type
> [    1.416978] Key type id_resolver registered
> [    1.417005] Key type id_legacy registered
> [    1.417043] nfs4filelayout_init: NFSv4 File Layout Driver Registering=
...
> [    1.418451] Key type asymmetric registered
> [    1.418482] Asymmetric key parser 'x509' registered
> [    1.418551] Block layer SCSI generic (bsg) driver version 0.4 loaded =
(major 249)
> [    1.418590] io scheduler mq-deadline registered
> [    1.418618] io scheduler kyber registered
> [    1.423548] bcm2708_fb soc:fb: FB found 1 display(s)
> [    1.437559] Console: switching to colour frame buffer device 90x30
> [    1.446253] bcm2708_fb soc:fb: Registered framebuffer for display 0, =
size 720x480
> [    1.452896] Serial: 8250/16550 driver, 1 ports, IRQ sharing enabled
> [    1.458395] bcm2835-rng 3f104000.rng: hwrng registered
> [    1.461812] vc-mem: phys_addr:0x00000000 mem_base=3D0x3ec00000 mem_si=
ze:0x40000000(1024 MiB)
> [    1.468540] vc-sm: Videocore shared memory driver
> [    1.472180] gpiomem-bcm2835 3f200000.gpiomem: Initialised: Registers =
at 0x3f200000
> [    1.489107] brd: module loaded
> [    1.505307] loop: module loaded
> [    1.509860] Loading iSCSI transport class v2.0-870.
> [    1.513862] libphy: Fixed MDIO Bus: probed
> [    1.517035] usbcore: registered new interface driver lan78xx
> [    1.520267] usbcore: registered new interface driver smsc95xx
> [    1.523303] dwc_otg: version 3.00a 10-AUG-2012 (platform bus)
> [    2.254610] Core Release: 2.80a
> [    2.257707] Setting default values for core params
> [    2.260769] Finished setting default values for core params
> [    2.464194] Using Buffer DMA mode
> [    2.467200] Periodic Transfer Interrupt Enhancement - disabled
> [    2.470261] Multiprocessor Interrupt Enhancement - disabled
> [    2.473253] OTG VER PARAM: 0, OTG VER FLAG: 0
> [    2.476233] Dedicated Tx FIFOs mode
> [    2.479874] WARN::dwc_otg_hcd_init:1072: FIQ DMA bounce buffers: virt=
 =3D b7504000 dma =3D 0xf7504000 len=3D9024
> [    2.486063] FIQ FSM acceleration enabled for :
>                Non-periodic Split Transactions
>                Periodic Split Transactions
>                High-Speed Isochronous Endpoints
>                Interrupt/Control Split Transaction hack enabled
> [    2.500574] dwc_otg: Microframe scheduler enabled
> [    2.500642] WARN::hcd_init_fiq:457: FIQ on core 1
> [    2.503411] WARN::hcd_init_fiq:458: FIQ ASM at 80728fa4 length 36
> [    2.506123] WARN::hcd_init_fiq:496: MPHI regs_base at bb810000
> [    2.508797] dwc_otg 3f980000.usb: DWC OTG Controller
> [    2.511499] dwc_otg 3f980000.usb: new USB bus registered, assigned bu=
s number 1
> [    2.514279] dwc_otg 3f980000.usb: irq 56, io mem 0x00000000
> [    2.517028] Init: Port Power? op_state=3D1
> [    2.519717] Init: Power Port (0)
> [    2.522754] usb usb1: New USB device found, idVendor=3D1d6b, idProduc=
t=3D0002, bcdDevice=3D 5.04
> [    2.528327] usb usb1: New USB device strings: Mfr=3D3, Product=3D2, S=
erialNumber=3D1
> [    2.531293] usb usb1: Product: DWC OTG Controller
> [    2.534211] usb usb1: Manufacturer: Linux 5.4.64-v7 dwc_otg_hcd
> [    2.537146] usb usb1: SerialNumber: 3f980000.usb
> [    2.540771] hub 1-0:1.0: USB hub found
> [    2.543657] hub 1-0:1.0: 1 port detected
> [    2.547238] dwc_otg: FIQ enabled
> [    2.547248] dwc_otg: NAK holdoff enabled
> [    2.547258] dwc_otg: FIQ split-transaction FSM enabled
> [    2.547274] Module dwc_common_port init
> [    2.547609] usbcore: registered new interface driver usb-storage
> [    2.550721] mousedev: PS/2 mouse device common for all mice
> [    2.554936] bcm2835-wdt bcm2835-wdt: Broadcom BCM2835 watchdog timer
> [    2.560496] sdhci: Secure Digital Host Controller Interface driver
> [    2.563302] sdhci: Copyright(c) Pierre Ossman
> [    2.566769] sdhost-bcm2835 3f202000.mmc: could not get clk, deferring=
 probe
> [    2.570026] sdhci-pltfm: SDHCI platform and OF driver helper
> [    2.573709] ledtrig-cpu: registered to indicate activity on CPUs
> [    2.576947] hidraw: raw HID events driver (C) Jiri Kosina
> [    2.580129] usbcore: registered new interface driver usbhid
> [    2.583142] usbhid: USB HID core driver
> [    2.586528] ashmem: initialized
> [    2.590509] vchiq: vchiq_init_state: slot_zero =3D (ptrval)
> [    2.595277] [vc_sm_connected_init]: start
> [    2.605012] [vc_sm_connected_init]: end - returning 0
> [    2.610026] Initializing XFRM netlink socket
> [    2.613006] NET: Registered protocol family 17
> [    2.616003] Key type dns_resolver registered
> [    2.619492] Registering SWP/SWPB emulation handler
> [    2.622506] registered taskstats version 1
> [    2.625154] Loading compiled-in X.509 certificates
> [    2.628349] Key type ._fscrypt registered
> [    2.630977] Key type .fscrypt registered
> [    2.644359] uart-pl011 3f201000.serial: cts_event_workaround enabled
> [    2.647220] 3f201000.serial: ttyAMA0 at MMIO 0x3f201000 (irq =3D 81, =
base_baud =3D 0) is a PL011 rev2
> [    2.655430] printk: console [ttyS0] disabled
> [    2.658305] 3f215040.serial: ttyS0 at MMIO 0x0 (irq =3D 53, base_baud=
 =3D 31250000) is a 16550
> [    3.678083] printk: console [ttyS0] enabled
> [    3.685731] KGDB: Registered I/O driver kgdboc
> [    3.693806] bcm2835-power bcm2835-power: Broadcom BCM2835 power domai=
ns driver
> [    3.705593] sdhost: log_buf @ (ptrval) (f7507000)
> [    3.761622] mmc0: sdhost-bcm2835 loaded - DMA enabled (>1)
> [    3.772680] of_cfs_init
> [    3.778301] of_cfs_init: OK
> [    3.785362] Waiting for root device /dev/mmcblk0p2...
> [    3.797847] Indeed it is in host mode hprt0 =3D 00021501
> [    3.891131] random: fast init done
> [    3.936402] mmc0: new high speed MMC card at address 0001
> [    3.946012] mmcblk0: mmc0:0001 4FTE4R 3.64 GiB
> [    3.953973] mmcblk0boot0: mmc0:0001 4FTE4R partition 1 4.00 MiB
> [    3.963473] mmcblk0boot1: mmc0:0001 4FTE4R partition 2 4.00 MiB
> [    3.972635] mmcblk0rpmb: mmc0:0001 4FTE4R partition 3 512 KiB, charde=
v (245:0)
> [    3.985330]  mmcblk0: p1 p2
> [    4.007759] usb 1-1: new high-speed USB device number 2 using dwc_otg
> [    4.011189] EXT4-fs (mmcblk0p2): mounted filesystem with ordered data=
 mode. Opts: (null)
> [    4.017529] Indeed it is in host mode hprt0 =3D 00001101
> [    4.031809] VFS: Mounted root (ext4 filesystem) readonly on device 17=
9:2.
> [    4.050759] devtmpfs: mounted
> [    4.102220] Freeing unused kernel memory: 1024K
> [    4.128140] Run /sbin/init as init process
> [    4.278133] usb 1-1: New USB device found, idVendor=3D0424, idProduct=
=
=3D9514, bcdDevice=3D 2.00
> [    4.292686] usb 1-1: New USB device strings: Mfr=3D0, Product=3D0, Se=
rialNumber=3D0
> [    4.303966] hub 1-1:1.0: USB hub found
> [    4.311058] hub 1-1:1.0: 5 ports detected
> [    4.647797] usb 1-1.1: new high-speed USB device number 3 using dwc_o=
tg
> [    4.730514] udevd[115]: starting version 3.2.9
> [    4.745524] random: udevd: uninitialized urandom read (16 bytes read)
> [    4.756762] random: udevd: uninitialized urandom read (16 bytes read)
> [    4.766616] random: udevd: uninitialized urandom read (16 bytes read)
> [    4.788165] usb 1-1.1: New USB device found, idVendor=3D0424, idProdu=
ct=3Dec00, bcdDevice=3D 2.00
> [    4.802823] usb 1-1.1: New USB device strings: Mfr=3D0, Product=3D0, =
SerialNumber=3D0
> [    4.814602] udevd[117]: starting eudev-3.2.9
> [    4.818138] smsc95xx v1.0.6
> [    4.923876] smsc95xx 1-1.1:1.0 eth0: register 'smsc95xx' at usb-3f980=
000.usb-1.1, smsc95xx USB 2.0 Ethernet, b8:27:eb:ad:85:ca
> [    5.161891] i2c /dev entries driver
> [    5.216319] EXT4-fs (mmcblk0p2): re-mounted. Opts: (null)
> [    5.972781] random: crng init done
> [    5.979289] random: 2 urandom warning(s) missed due to ratelimiting
> [    6.470391] smsc95xx 1-1.1:1.0 eth0: hardware isn't capable of remote=
 wakeup
> [    6.480654] ttyS ttyS0: 2 input overrun(s)
> [    7.962826] smsc95xx 1-1.1:1.0 eth0: link up, 100Mbps, full-duplex, l=
pa 0xCDE1
> [    7.973416] ttyS ttyS0: 2 input overrun(s)
> [   11.883822] Installing knfsd (copyright (C) 1996 okir@monad.swb.de).
> [   11.893705] ttyS ttyS0: 2 input overrun(s)
> [   13.268076] NFSD: Using /var/lib/nfs/v4recovery as the NFSv4 state re=
covery directory
> [   13.280639] ttyS ttyS0: 2 input overrun(s)
> [   13.294215] NFSD: Using legacy client tracking operations.
> [   13.304013] NFSD: starting 90-second grace period (net f00004c1)
> [ 1014.267771] usb 1-1.2: new high-speed USB device number 4 using dwc_o=
tg
> [ 1014.399220] usb 1-1.2: New USB device found, idVendor=3D0b95, idProdu=
ct=3D772b, bcdDevice=3D 0.02
> [ 1014.408345] usb 1-1.2: New USB device strings: Mfr=3D1, Product=3D2, =
SerialNumber=3D3
> [ 1014.416278] usb 1-1.2: Product: AX88772B
> [ 1014.420431] usb 1-1.2: Manufacturer: ASIX Elec. Corp.
> [ 1014.425889] usb 1-1.2: SerialNumber: 000001
>
>
>
> Please assist me if you have some clue regarding this issue.
>
> Thanks and Regards.
>=20
>
