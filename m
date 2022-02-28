Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 17B55C433F5
	for <webhook@archiver.kernel.org>; Mon, 28 Feb 2022 02:41:05 +0000 (UTC)
Received: from mail-qt1-f170.google.com (mail-qt1-f170.google.com
 [209.85.160.170])
 by mx.groups.io with SMTP id smtpd.web08.16263.1646016058321603188
 for <yocto@lists.yoctoproject.org>;
 Sun, 27 Feb 2022 18:40:58 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=RUBcKPmY;
 spf=pass (domain: gmail.com, ip: 209.85.160.170,
 mailfrom: raj.khem@gmail.com)
Received: by mail-qt1-f170.google.com with SMTP id w1so7828174qtj.2
        for <yocto@lists.yoctoproject.org>;
 Sun, 27 Feb 2022 18:40:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=k5u8Ze5tb2kPCTOS6LeRRfdE5eDWBGxqGlIpNnM+Js4=;
        b=RUBcKPmYPU+CFyKS6x74s7/yJ9S2C5AIGXdPOuwoa6cClV0vX8zPucTN5zULsbeh1r
         lAEGdUx5qknNmzMZzu4otq4dRp048qiPoWjimYkTbHy48+6LvHHqlv5yXysLkl9V01mI
         h3w7X/vYaAd/lvzv+hBPuyVPWOAnDu6dnxh1gpmxfNS3Lx+2Zg7L4rZhglzBTVfn5dBk
         jQiXfkAv3uEd/ud/cQZgNnu2dyC+5gqs15LonB1I9D+CLYlvuGDVOoqz3dBV3Er8rzrY
         q8L55zY7lNumUx4aSBx3kml9PdI+WYK/Bw73ND7LL4QRe6ZJsx2lA25Zr2dJnJeC2fMh
         J8IQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=k5u8Ze5tb2kPCTOS6LeRRfdE5eDWBGxqGlIpNnM+Js4=;
        b=ZvnGWsFef0+hqgD5//zYjF65JOKiEL9Mup/1UXQQB5LwMifCCjfrFduj5HEoyz/3oM
         ub6gkeAbtwdirVyK7Ju8BjWIPZOAZHYdxxrjpN2GCgodY8Nn0Q7bDoULReenasG9Kjuk
         Wgv6xN5AkECl4DnHQRTeAwiNB7w+okAw76vnGdsDE2eBXhzxmJ43vr4EmcMr+dTVHSwr
         JzU2LLZPfcnqMNYDMO9KmsIsbZfGyr1gllF4JJZvTXXQKht6HRIUpUkii/E+f7vaMTe4
         wf2aZCdCrFgYRr6DiNmY4IxrOLyQKpVCPKvYouD09h8kM25oDtqZ2XTbgMEQ7GZAail9
         IczA==
X-Gm-Message-State: AOAM531qpBQ8D+VfIIaKSZszuF5Sy9p4jGQOONeU67nsANULflQTgv1b
	QV+kj3oVJf7GLnDcRKPf5V9r179sAyvFw4Kh798b1cEv9wM=
X-Google-Smtp-Source: 
 ABdhPJwqVe1yFyUNxbWzuZMJR34JRjcH/7pa78BN2mZyeSL9lQf5SRqSnS3T3tQ82rMRMPBAy2qM/KtULDnyBrjp0cg=
X-Received: by 2002:ac8:5a86:0:b0:2de:29af:5658 with SMTP id
 c6-20020ac85a86000000b002de29af5658mr14871001qtc.54.1646016057138; Sun, 27
 Feb 2022 18:40:57 -0800 (PST)
MIME-Version: 1.0
References: <7715.1645647504169139822@lists.yoctoproject.org>
 <14605.1645962150131738638@lists.yoctoproject.org>
In-Reply-To: <14605.1645962150131738638@lists.yoctoproject.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Sun, 27 Feb 2022 18:40:46 -0800
Message-ID: 
 <CAMKF1soVeXCR1eyC7Mgn2B6L-Ld1Hj58U8mAA+H+GOYrOLYi8g@mail.gmail.com>
Subject: Re: [yocto] Building Yocto images for RPi CM4
To: Sourabh Hegde <hrsourabh011@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000061606c05d90afaab"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 28 Feb 2022 02:41:05 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56305

--00000000000061606c05d90afaab
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sun, Feb 27, 2022 at 3:42 AM Sourabh Hegde <hrsourabh011@gmail.com>
wrote:

> Hello Khem,
>
> I got my hands on Raspberry Pi Compute Module 4 IO Board and also I could
> access serial console now. Below is the log message I got while booting:
>
> [    0.000000] Booting Linux on physical CPU 0x0000000000 [0x410fd083]
> [    0.000000] Linux version 5.10.78-v8 (oe-user@oe-host)
> (aarch64-oe-linux-gcc (GCC) 11.2.0, GNU ld (GNU Binutils) 2.37.20210721) =
#1
> SMP PREEMPT Tue Feb 22 15:19:24 UTC 2022
> [    0.000000] random: fast init done
> [    0.000000] Machine model: Raspberry Pi Compute Module 4 Rev 1.0
> [    0.000000] efi: UEFI not found.
> [    0.000000] Reserved memory: created CMA memory pool at
> 0x000000001ec00000, size 256 MiB
> [    0.000000] OF: reserved mem: initialized node linux,cma, compatible i=
d
> shared-dma-pool
> [    0.000000] Zone ranges:
> [    0.000000]   DMA      [mem 0x0000000000000000-0x000000003b3fffff]
> [    0.000000]   DMA32    empty
> [    0.000000]   Normal   empty
> [    0.000000] Movable zone start for each node
> [    0.000000] Early memory node ranges
> [    0.000000]   node   0: [mem 0x0000000000000000-0x000000003b3fffff]
> [    0.000000] Initmem setup node 0 [mem
> 0x0000000000000000-0x000000003b3fffff]
> [    0.000000] percpu: Embedded 32 pages/cpu s92312 r8192 d30568 u131072
> [    0.000000] Detected PIPT I-cache on CPU0
> [    0.000000] CPU features: detected: Spectre-v2
> [    0.000000] CPU features: detected: Spectre-v4
> [    0.000000] CPU features: detected: ARM errata 1165522, 1319367, or
> 1530923
> [    0.000000] Built 1 zonelists, mobility grouping on.  Total pages:
> 238896
> [    0.000000] Kernel command line: coherent_pool=3D1M 8250.nr_uarts=3D1
> snd_bcm2835.enable_compat_alsa=3D0 snd_bcm2835.enable_hdmi=3D1
> smsc95xx.macaddr=3DE4:5F:01:49:E3:A0 vc_mem.mem_base=3D0x3ec00000
> vc_mem.mem_size=3D0x40000000  dwc_otg.lpm_enable=3D0 console=3DttyS0,1152=
00
> root=3D/dev/mmcblk0p2 rootfstype=3Dext4 rootwait
> [    0.000000] Dentry cache hash table entries: 131072 (order: 8, 1048576
> bytes, linear)
> [    0.000000] Inode-cache hash table entries: 65536 (order: 7, 524288
> bytes, linear)
> [    0.000000] mem auto-init: stack:off, heap alloc:off, heap free:off
> [    0.000000] Memory: 663720K/970752K available (12416K kernel code,
> 1992K rwdata, 4440K rodata, 3968K init, 1267K bss, 44888K reserved, 26214=
4K
> cma-reserved)
> [    0.000000] SLUB: HWalign=3D64, Order=3D0-3, MinObjects=3D0, CPUs=3D4,=
 Nodes=3D1
> [    0.000000] ftrace: allocating 39462 entries in 155 pages
> [    0.000000] ftrace: allocated 155 pages with 5 groups
> [    0.000000] rcu: Preemptible hierarchical RCU implementation.
> [    0.000000] rcu:     RCU event tracing is enabled.
> [    0.000000] rcu:     RCU restricting CPUs from NR_CPUS=3D256 to
> nr_cpu_ids=3D4.
> [    0.000000]  Trampoline variant of Tasks RCU enabled.
> [    0.000000]  Rude variant of Tasks RCU enabled.
> [    0.000000]  Tracing variant of Tasks RCU enabled.
> [    0.000000] rcu: RCU calculated value of scheduler-enlistment delay is
> 25 jiffies.
> [    0.000000] rcu: Adjusting geometry for rcu_fanout_leaf=3D16, nr_cpu_i=
ds=3D4
> [    0.000000] NR_IRQS: 64, nr_irqs: 64, preallocated irqs: 0
> [    0.000000] GIC: Using split EOI/Deactivate mode
> [    0.000000] irq_brcmstb_l2: registered L2 intc
> (/soc/interrupt-controller@7ef00100, parent irq: 10)
> [    0.000000] random: get_random_bytes called from
> start_kernel+0x3b4/0x574 with crng_init=3D1
> [    0.000000] arch_timer: cp15 timer(s) running at 54.00MHz (phys).
> [    0.000000] clocksource: arch_sys_counter: mask: 0xffffffffffffff
> max_cycles: 0xc743ce346, max_idle_ns: 440795203123 ns
> [    0.000006] sched_clock: 56 bits at 54MHz, resolution 18ns, wraps ever=
y
> 4398046511102ns
> [    0.000246] Console: colour dummy device 80x25
> [    0.000305] Calibrating delay loop (skipped), value calculated using
> timer frequency.. 108.00 BogoMIPS (lpj=3D216000)
> [    0.000334] pid_max: default: 32768 minimum: 301
> [    0.000480] LSM: Security Framework initializing
> [    0.000658] Mount-cache hash table entries: 2048 (order: 2, 16384
> bytes, linear)
> [    0.000688] Mountpoint-cache hash table entries: 2048 (order: 2, 16384
> bytes, linear)
> [    0.001948] cgroup: Disabling memory control group subsystem
> [    0.004198] rcu: Hierarchical SRCU implementation.
> [    0.005174] EFI services will not be available.
> [    0.005670] smp: Bringing up secondary CPUs ...
> [    0.006642] Detected PIPT I-cache on CPU1
> [    0.006713] CPU1: Booted secondary processor 0x0000000001 [0x410fd083]
> [    0.007803] Detected PIPT I-cache on CPU2
> [    0.007850] CPU2: Booted secondary processor 0x0000000002 [0x410fd083]
> [    0.008988] Detected PIPT I-cache on CPU3
> [    0.009034] CPU3: Booted secondary processor 0x0000000003 [0x410fd083]
> [    0.009215] smp: Brought up 1 node, 4 CPUs
> [    0.009260] SMP: Total of 4 processors activated.
> [    0.009277] CPU features: detected: 32-bit EL0 Support
> [    0.009294] CPU features: detected: CRC32 instructions
> [    0.009311] CPU features: detected: 32-bit EL1 Support
> [    0.044411] CPU: All CPU(s) started at EL2
> [    0.044481] alternatives: patching kernel code
> [    0.045650] devtmpfs: initialized
> [    0.055650] Enabled cp15_barrier support
> [    0.055694] Enabled setend support
> [    0.056029] clocksource: jiffies: mask: 0xffffffff max_cycles:
> 0xffffffff, max_idle_ns: 7645041785100000 ns
> [    0.056097] futex hash table entries: 1024 (order: 4, 65536 bytes,
> linear)
> [    0.063289] pinctrl core: initialized pinctrl subsystem
> [    0.064024] DMI not present or invalid.
> [    0.064444] NET: Registered protocol family 16
> [    0.067843] DMA: preallocated 1024 KiB GFP_KERNEL pool for atomic
> allocations
> [    0.068456] DMA: preallocated 1024 KiB GFP_KERNEL|GFP_DMA pool for
> atomic allocations
> [    0.069414] DMA: preallocated 1024 KiB GFP_KERNEL|GFP_DMA32 pool for
> atomic allocations
> [    0.069523] audit: initializing netlink subsys (disabled)
> [    0.069799] audit: type=3D2000 audit(0.068:1): state=3Dinitialized
> audit_enabled=3D0 res=3D1
> [    0.070316] thermal_sys: Registered thermal governor 'step_wise'
> [    0.070532] cpuidle: using governor menu
> [    0.070728] hw-breakpoint: found 6 breakpoint and 4 watchpoint
> registers.
> [    0.070927] ASID allocator initialised with 65536 entries
> [    0.071060] Serial: AMBA PL011 UART driver
> [    0.110080] bcm2835-mbox fe00b880.mailbox: mailbox enabled
> [    0.116379] raspberrypi-firmware soc:firmware: Attached to firmware
> from 2021-09-30T19:21:03, variant start
> [    0.120394] raspberrypi-firmware soc:firmware: Firmware hash is
> 51215b4f6e3966401ecd99652a35cf1c25069113
> [    0.153635] bcm2835-dma fe007000.dma: DMA legacy API manager,
> dmachans=3D0x1
> [    0.157672] vgaarb: loaded
> [    0.158083] SCSI subsystem initialized
> [    0.158307] usbcore: registered new interface driver usbfs
> [    0.158363] usbcore: registered new interface driver hub
> [    0.158429] usbcore: registered new device driver usb
> [    0.158788] usb_phy_generic phy: supply vcc not found, using dummy
> regulator
> [    0.159737] Advanced Linux Sound Architecture Driver Initialized.
> [    0.160822] clocksource: Switched to clocksource arch_sys_counter
> [    1.180587] VFS: Disk quotas dquot_6.6.0
> [    1.180699] VFS: Dquot-cache hash table entries: 512 (order 0, 4096
> bytes)
> [    1.180878] FS-Cache: Loaded
> [    1.181104] CacheFiles: Loaded
> [    1.191916] NET: Registered protocol family 2
> [    1.192151] IP idents hash table entries: 16384 (order: 5, 131072
> bytes, linear)
> [    1.193473] tcp_listen_portaddr_hash hash table entries: 512 (order: 1=
,
> 8192 bytes, linear)
> [    1.193507] TCP established hash table entries: 8192 (order: 4, 65536
> bytes, linear)
> [    1.193668] TCP bind hash table entries: 8192 (order: 5, 131072 bytes,
> linear)
> [    1.193793] TCP: Hash tables configured (established 8192 bind 8192)
> [    1.193995] UDP hash table entries: 512 (order: 2, 16384 bytes, linear=
)
> [    1.194028] UDP-Lite hash table entries: 512 (order: 2, 16384 bytes,
> linear)
> [    1.194293] NET: Registered protocol family 1
> [    1.195120] RPC: Registered named UNIX socket transport module.
> [    1.195137] RPC: Registered udp transport module.
> [    1.195152] RPC: Registered tcp transport module.
> [    1.195166] RPC: Registered tcp NFSv4.1 backchannel transport module.
> [    1.195189] PCI: CLS 0 bytes, default 64
> [    1.197342] hw perfevents: enabled with armv8_cortex_a72 PMU driver, 7
> counters available
> [    1.197623] kvm [1]: IPA Size Limit: 44 bits
> [    1.198801] kvm [1]: vgic interrupt IRQ9
> [    1.199075] kvm [1]: Hyp mode initialized successfully
> [    1.201677] Initialise system trusted keyrings
> [    1.202005] workingset: timestamp_bits=3D46 max_order=3D18 bucket_orde=
r=3D0
> [    1.208121] zbud: loaded
> [    1.209754] squashfs: version 4.0 (2009/01/31) Phillip Lougher
> [    1.210008] FS-Cache: Netfs 'nfs' registered for caching
> [    1.210671] NFS: Registering the id_resolver key type
> [    1.210716] Key type id_resolver registered
> [    1.210732] Key type id_legacy registered
> [    1.210855] nfs4filelayout_init: NFSv4 File Layout Driver Registering.=
..
> [    1.210872] nfs4flexfilelayout_init: NFSv4 Flexfile Layout Driver
> Registering...
> [    1.211950] Key type asymmetric registered
> [    1.211969] Asymmetric key parser 'x509' registered
> [    1.212019] Block layer SCSI generic (bsg) driver version 0.4 loaded
> (major 247)
> [    1.212271] io scheduler mq-deadline registered
> [    1.212289] io scheduler kyber registered
> [    1.216591] gpio-507 (ant1): hogged as output/high
> [    1.217956] gpio-511 (ant2): hogged as output/low
> [    1.219110] brcm-pcie fd500000.pcie: host bridge /scb/pcie@7d500000
> ranges:
> [    1.219142] brcm-pcie fd500000.pcie:   No bus range found for
> /scb/pcie@7d500000, using [bus 00-ff]
> [    1.219215] brcm-pcie fd500000.pcie:      MEM
> 0x0600000000..0x063fffffff -> 0x00c0000000
> [    1.219295] brcm-pcie fd500000.pcie:   IB MEM
> 0x0000000000..0x003fffffff -> 0x0400000000
> [    1.536845] brcm-pcie fd500000.pcie: link down
> [    1.542588] Serial: 8250/16550 driver, 1 ports, IRQ sharing enabled
> [    1.543460] bcm2835-aux-uart fe215040.serial: there is not valid maps
> for state default
> [    1.545765] iproc-rng200 fe104000.rng: hwrng registered
> [    1.546149] vc-mem: phys_addr:0x00000000 mem_base=3D0x3ec00000
> mem_size:0x40000000(1024 MiB)
> [    1.547472] gpiomem-bcm2835 fe200000.gpiomem: Initialised: Registers a=
t
> 0xfe200000
> [    1.557763] vc4-drm gpu: bound fe400000.hvs (ops vc4_hvs_ops)
> [    1.558622] cacheinfo: Unable to detect cache hierarchy for CPU 0
> [    1.569652] brd: module loaded
> [    1.581572] loop: module loaded
> [    1.583327] Loading iSCSI transport class v2.0-870.
> [    1.586751] libphy: Fixed MDIO Bus: probed
> [    1.588364] bcmgenet fd580000.ethernet: GENET 5.0 EPHY: 0x0000
> [    1.600865] libphy: bcmgenet MII bus: probed
> [    1.648957] unimac-mdio unimac-mdio.-19: Broadcom UniMAC MDIO bus
> [    1.650027] usbcore: registered new interface driver r8152
> [    1.650094] usbcore: registered new interface driver lan78xx
> [    1.650149] usbcore: registered new interface driver smsc95xx
> [    1.650714] dwc_otg: version 3.00a 10-AUG-2012 (platform bus)
> [    1.651548] usbcore: registered new interface driver uas
> [    1.651609] usbcore: registered new interface driver usb-storage
> [    1.651837] mousedev: PS/2 mouse device common for all mice
> [    1.651886] i2c /dev entries driver
> [    1.652742] Driver for 1-wire Dallas network protocol.
> [    1.655022] bcm2835-wdt bcm2835-wdt: Broadcom BCM2835 watchdog timer
> [    1.658246] sdhci: Secure Digital Host Controller Interface driver
> [    1.658264] sdhci: Copyright(c) Pierre Ossman
> [    1.659020] mmc-bcm2835 fe300000.mmcnr: could not get clk, deferring
> probe
> [    1.661482] sdhci-pltfm: SDHCI platform and OF driver helper
> [    1.664363] ledtrig-cpu: registered to indicate activity on CPUs
> [    1.664701] hid: raw HID events driver (C) Jiri Kosina
> [    1.664947] usbcore: registered new interface driver usbhid
> [    1.664963] usbhid: USB HID core driver
> [    1.665261] ashmem: initialized
> [    1.674480] Initializing XFRM netlink socket
> [    1.674534] NET: Registered protocol family 17
> [    1.674650] Key type dns_resolver registered
> [    1.675067] registered taskstats version 1
> [    1.675096] Loading compiled-in X.509 certificates
> [    1.675717] Key type ._fscrypt registered
> [    1.675736] Key type .fscrypt registered
> [    1.675751] Key type fscrypt-provisioning registered
> [    1.686689] uart-pl011 fe201000.serial: there is not valid maps for
> state default
> [    1.686966] uart-pl011 fe201000.serial: cts_event_workaround enabled
> [    1.687068] fe201000.serial: ttyAMA0 at MMIO 0xfe201000 (irq =3D 23,
> base_baud =3D 0) is a PL011 rev2
> [    1.693178] bcm2835-aux-uart fe215040.serial: there is not valid maps
> for state default
> [    1.693806] printk: console [ttyS0] disabled
> [    1.693923] fe215040.serial: ttyS0 at MMIO 0xfe215040 (irq =3D 24,
> base_baud =3D 62500000) is a 16550
> [    2.811548] printk: console [ttyS0] enabled
> [    2.820987] vc4-drm gpu: bound fe400000.hvs (ops vc4_hvs_ops)
> [    2.827771] bcm2835-power bcm2835-power: Broadcom BCM2835 power domain=
s
> driver
> [    2.837670] mmc-bcm2835 fe300000.mmcnr: mmc_debug:0 mmc_debug2:0
> [    2.843863] mmc-bcm2835 fe300000.mmcnr: DMA channel allocated
> [    2.880304] vc4-drm gpu: bound fe400000.hvs (ops vc4_hvs_ops)
> [    2.891380] vc4-drm gpu: bound fe400000.hvs (ops vc4_hvs_ops)
> [    2.900692] of_cfs_init
> [    2.903346] of_cfs_init: OK
> [    2.906233] mmc1: queuing unknown CIS tuple 0x80 (2 bytes)
> [    2.913529] mmc1: queuing unknown CIS tuple 0x80 (3 bytes)
> [    2.914316] mmc0: SDHCI controller on fe340000.mmc [fe340000.mmc] usin=
g
> ADMA
> [    2.920774] mmc1: queuing unknown CIS tuple 0x80 (3 bytes)
> [    2.927726] ALSA device list:
> [    2.931646] vc4-drm gpu: bound fe400000.hvs (ops vc4_hvs_ops)
> [    2.934870] mmc1: queuing unknown CIS tuple 0x80 (7 bytes)
> [    2.934914]   No soundcards found.
> [    2.942397] mmc1: queuing unknown CIS tuple 0x80 (3 bytes)
> [    2.956053] Waiting for root device /dev/mmcblk0p2...
> [    3.019902] mmc1: new high speed SDIO card at address 0001
> [    3.027907] mmc0: new ultra high speed DDR50 SDHC card at address aaaa
> [    3.035470] mmcblk0: mmc0:aaaa SC16G 14.8 GiB
> [    3.046464]  mmcblk0: p1 p2
> [    3.055549] vc4-drm gpu: bound fe400000.hvs (ops vc4_hvs_ops)
> [    3.083634] EXT4-fs (mmcblk0p2): mounted filesystem with ordered data
> mode. Opts: (null)
> [    3.092049] VFS: Mounted root (ext4 filesystem) readonly on device
> 179:2.
> [    3.102781] devtmpfs: mounted
> [    3.113385] Freeing unused kernel memory: 3968K
> [    3.118193] Run /sbin/init as init process
> [    3.327246] systemd[1]: System time before build time, advancing clock=
.
> [    3.408332] NET: Registered protocol family 10
> [    3.414333] Segment Routing with IPv6
> [    3.456287] systemd[1]: systemd 249.7+ running in system mode (+PAM
> -AUDIT -SELINUX -APPARMOR +IMA -SMACK +SECCOMP -GCRYPT -GNUTLS -OPENSSL
> +ACL +BLKID -CURL -ELFUTILS -FIDO2 -IDN2 -IDN -IPTC +KMOD -LIBCRYPTSETUP
> +LIBFDISK -PCRE2 -PWQUALITY -P11KIT -QRENCODE -BZIP2 -LZ4 -XZ -ZLIB +ZSTD
> +XKBCOMMON +UTMP +SYSVINIT default-hierarchy=3Dhybrid)
> [    3.487567] systemd[1]: Detected architecture arm64.
>
> Welcome to OpenEmbedded nodistro.0!
>
> [    3.540979] systemd[1]: Hostname set to <raspberrypi4-64>.
> [    3.552504] random: systemd: uninitialized urandom read (16 bytes read=
)
> [    3.559368] systemd[1]: Initializing machine ID from random generator.
> [    3.566376] systemd[1]: Installed transient /etc/machine-id file.
> [    3.640033] systemd-fstab-generator[107]: Failed to create unit file
> /run/systemd/generator/boot.mount, as it already exists. Duplicate entry =
in
> /etc/fstab?
> [    3.699053] systemd[105]:
> /lib/systemd/system-generators/systemd-fstab-generator failed with exit
> status 1.
> [    4.074995] systemd[1]: Queued start job for default target Multi-User
> System.
> [    4.083709] random: systemd: uninitialized urandom read (16 bytes read=
)
> [    4.137482] systemd[1]: Created slice Slice /system/getty.
> [  OK  ] Created slice Slice /system/getty.
> [    4.161062] random: systemd: uninitialized urandom read (16 bytes read=
)
> [    4.169819] systemd[1]: Created slice Slice /system/modprobe.
> [  OK  ] Created slice Slice /system/modprobe.
> [    4.194908] systemd[1]: Created slice Slice /system/serial-getty.
> [  OK  ] Created slice Slice /system/serial-getty.
> [    4.218857] systemd[1]: Created slice Slice
> /system/wpa_supplicant-nl80211.
> [  OK  ] Created slice Slice /system/wpa_supplicant-nl80211.
> [    4.246570] systemd[1]: Created slice User and Session Slice.
> [  OK  ] Created slice User and Session Slice.
> [    4.269477] systemd[1]: Started Dispatch Password Requests to Console
> Directory Watch.
> [  OK  ] Started Dispatch Password =E2=80=A6ts to Console Directory Watch=
.
> [    4.297403] systemd[1]: Started Forward Password Requests to Wall
> Directory Watch.
> [  OK  ] Started Forward Password R=E2=80=A6uests to Wall Directory Watch=
.
> [    4.325329] systemd[1]: Reached target Path Units.
> [  OK  ] Reached target Path Units.
> [    4.345071] systemd[1]: Reached target Remote File Systems.
> [  OK  ] Reached target Remote File Systems.
> [    4.365050] systemd[1]: Reached target Slice Units.
> [  OK  ] Reached target Slice Units.
> [    4.385058] systemd[1]: Reached target Swaps.
> [  OK  ] Reached target Swaps.
> [    4.433090] systemd[1]: Listening on RPCbind Server Activation Socket.
> [  OK  ] Listening on RPCbind Server Activation Socket.
> [    4.457275] systemd[1]: Reached target RPC Port Mapper.
> [  OK  ] Reached target RPC Port Mapper.
> [    4.477987] systemd[1]: Listening on Syslog Socket.
> [  OK  ] Listening on Syslog Socket.
> [    4.497387] systemd[1]: Listening on initctl Compatibility Named Pipe.
> [  OK  ] Listening on initctl Compatibility Named Pipe.
> [    4.522088] systemd[1]: Listening on Journal Audit Socket.
> [  OK  ] Listening on Journal Audit Socket.
> [    4.545647] systemd[1]: Listening on Journal Socket (/dev/log).
> [  OK  ] Listening on Journal Socket (/dev/log).
> [    4.569877] systemd[1]: Listening on Journal Socket.
> [  OK  ] Listening on Journal Socket.
> [    4.589940] systemd[1]: Listening on Network Service Netlink Socket.
> [  OK  ] Listening on Network Service Netlink Socket.
> [    4.613846] systemd[1]: Listening on udev Control Socket.
> [  OK  ] Listening on udev Control Socket.
> [    4.637603] systemd[1]: Listening on udev Kernel Socket.
> [  OK  ] Listening on udev Kernel Socket.
> [    4.661623] systemd[1]: Listening on User Database Manager Socket.
> [  OK  ] Listening on User Database Manager Socket.
> [    4.685838] systemd[1]: Condition check resulted in Huge Pages File
> System being skipped.
> [    4.698792] systemd[1]: Mounting POSIX Message Queue File System...
>          Mounting POSIX Message Queue File System...
> [    4.725788] systemd[1]: Mounting Kernel Debug File System...
>          Mounting Kernel Debug File System...
> [    4.757718] systemd[1]: Mounting Kernel Trace File System...
>          Mounting Kernel Trace File System...
> [    4.789511] systemd[1]: Mounting Temporary Directory /tmp...
>          Mounting Temporary Directory /tmp...
> [    4.814515] systemd[1]: Starting Create List of Static Device Nodes...
>          Starting Create List of Static Device Nodes...
> [    4.841861] systemd[1]: Starting Load Kernel Module configfs...
>          Starting Load Kernel Module configfs...
> [    4.869773] systemd[1]: Starting Load Kernel Module drm...
>          Starting Load Kernel Module drm...
> [    4.893853] systemd[1]: Starting Load Kernel Module fuse...
>          Starting Load Kernel Module fuse...
> [    4.920607] fuse: init (API version 7.32)
> [    4.922212] systemd[1]: Starting Start psplash boot splash screen...
>          Starting Start psplash boot splash screen...
> [    4.954277] systemd[1]: Starting RPC Bind...
>          Starting RPC Bind...
> [    4.978095] systemd[1]: Starting File System Check on Root Device...
>          Starting File System Check on Root Device...
> [    5.009819] systemd[1]: Starting Journal Service...
>          Starting Journal Service..[    5.018672] systemd[1]: Condition
> check resulted in Load Kernel Modules being skipped.
> .
> [    5.033667] systemd[1]: Starting Apply Kernel Variables...
>          Starting Apply Kernel Variables...
> [    5.045884] systemd[1]: Starting Coldplug All udev Devices...
>          Starting Coldplug All udev Devices...
> [    5.065621] systemd[1]: Started RPC Bind.
> [  OK      5.070888] systemd[1]: Mounted POSIX Message Queue File System.
> 0m] Started     5.078603] systemd[1]: Mounted Kernel Debug File System.
> 1;39mRPC Bind.
> [    5.085789] systemd[1]: Mounted Kernel Trace File System.
> ;32m  OK  ] Mounted [    5.093484] systemd[1]: Mounted Temporary Director=
y
> /tmp.
> POSIX Message Queue File System.
> [[    5.103087] systemd[1]: Finished Create List of Static Device Nodes.
>   OK  ] Mounted     5.112765] systemd[1]: modprobe@configfs.service:
> Deactivated successfully.
> ;39mKernel Debug File System[    5.122750] systemd[1]: Finished Load
> Kernel Module configfs.
> .
> [  OK  ] Mounted  systemd[1]: modprobe@drm.service: Deactivated
> successfully.
> [0;1;39mKernel Trace File System[    5.141000] systemd[1]: Finished Load
> Kernel Module drm.
> .
> [  OK  ] Mount[    5.149229] systemd[1]: modprobe@fuse.service:
> Deactivated successfully.
> ed Temporary Directory [    5.158928] systemd[1]: Finished Load Kernel
> Module fuse.
> /tmp.
> [  OK [    5.166274] systemd[1]: psplash-start.service: Main process
> exited, code=3Dexited, status=3D255/EXCEPTION
>  ] Finished [    5.177531] systemd[1]: psplash-start.service: Failed with
> result 'exit-code'.
> Create List of Static Device No[    5.188088] systemd[1]: Failed to start
> Start psplash boot splash screen.
> des.
> [    5.196215] systemd[1]: Dependency failed for Start psplash-systemd
> progress communication helper.
> 2m  OK  [    5.206502] systemd[1]: psplash-systemd.service: Job
> psplash-systemd.service/start failed with result 'dependency'.
> ] Finished Load Kernel Module confi[    5.220887] systemd[1]: Finished
> Apply Kernel Variables.
> gfs.
> [  OK  ] Finished Load Kernel Module drm.
> [  O[    5.234289] systemd[1]: Mounting FUSE Control File System...
> K  ] Finished Load Kernel Module fuse.
> [FAILE[    5.246549] systemd[1]: Mounting Kernel Configuration File
> System...
> D] Failed to start Start psplash boot splash screen.
> See 'systemctl status psplash-start.service' for details.
> [DEPEND] Dependency failed for Star=E2=80=A6progress communication helper=
.
> [  OK  ] Finished Apply Kernel Variables.
>          Mounting FUSE Control File System...
>          Mounting Kernel Configuration File System...
> [    5.313974] systemd[1]: Started Journal Service.
> [  OK  ] Started Journal Service.
> [  OK  ] Finished File System Check on Root Device.
> [  OK  ] Mounted FUSE Control File System.
> [  OK  ] Mounted Kernel Configuration File System.
>          Starting Remount Root and Kernel File Systems...
> [    5.445206] EXT4-fs (mmcblk0p2): re-mounted. Opts: (null)
> [  OK  ] Finished Remount Root and Kernel File Systems.
>          Starting Flush Journal to Persistent Storage...
>          Starting Create System[    5.510241] systemd-journald[135]:
> Received client request to flush runtime journal.
>  Users...
> [  OK  ] Finished Flush Journal to Persistent Storage.
> [  OK  ] Finished Coldplug All udev Devices.
> [  OK  ] Finished Create System Users.
>          Starting Create Static Device Nodes in /dev...
> [  OK  ] Finished Create Static Device Nodes in /dev.
> [  OK  ] Reached target Preparation for Local File Systems.
>          Mounting /var/volatile...
> [    5.802376] audit: type=3D1334 audit(1636549114.475:2): prog-id=3D5 op=
=3DLOAD
> [    5.809177] audit: type=3D1334 audit(1636549114.475:3): prog-id=3D6 op=
=3DLOAD
>          Starting Rule-based Manage=E2=80=A6for Device Events and Files..=
.
> [  OK  ] Mounted /var/volatile.
>          Starting Load/Save Random Seed...
> [  OK  ] Started Rule-based Manager for Device Events and Files.
>          Starting Network Configuration...
> [    6.215697] vc4-drm gpu: bound fe400000.hvs (ops vc4_hvs_ops)
> [    6.261009] rpivid-mem feb00000.hevc-decoder: rpivid-hevcmem
> initialised: Registers at 0xfeb00000 length 0x00010000
> [    6.294000] vc4-drm gpu: bound fe400000.hvs (ops vc4_hvs_ops)
> [    6.305014] rpivid-mem feb10000.rpivid-local-intc: rpivid-intcmem
> initialised: Registers at 0xfeb10000 length 0x00001000
> [    6.330846] vc4-drm gpu: bound fe400000.hvs (ops vc4_hvs_ops)
> [    6.332704] rpivid-mem feb20000.h264-decoder: rpivid-h264mem
> initialised: Registers at 0xfeb20000 length 0x00010000
> [    6.353703] vc4-drm gpu: bound fe400000.hvs (ops vc4_hvs_ops)
> [    6.369615] rpivid-mem feb30000.vp9-decoder: rpivid-vp9mem initialised=
:
> Registers at 0xfeb30000 length 0x00010000
> [  OK  ] Found device[    6.387710] vc_sm_cma: module is from the staging
> directory, the quality is unknown, you have been warned.
>      6.393632] vc4-drm gpu: bound fe400000.hvs (ops vc4_hvs_ops)
> 9m/dev/mmcblk0p1.
> [    6.412765] mc: Linux media interface: v0.10
>          Mounting /boot...
> [  OK  ] Star[    6.431869] bcm2835_vc_sm_cma_probe: Videocore shared
> memory driver
> ted     6.433163] bcmgenet fd580000.ethernet: configuring instance for
> external RGMII (RX delay)
> 1;39mNetwork Configuration.
> [    6.451339] bcmgenet fd580000.ethernet eth0: Link is Down
> [    6.457389] [vc_sm_connected_init]: start
>          Starting Wait for Network to be Configured...
> [    6.477747] [vc_sm_connected_init]: installed successfully
> [    6.489525] videodev: Linux video capture interface: v2.00
> [    6.496669] vc4-drm gpu: bound fe400000.hvs (ops vc4_hvs_ops)
> [    6.520255] brcmstb-i2c fef04500.i2c:  @97500hz registered in polling
> mode
> [    6.533854] vc4-drm gpu: bound fe400000.hvs (ops vc4_hvs_ops)
> [    6.541493] brcmstb-i2c fef09500.i2c:  @97500hz registered in polling
> mode
> [    6.549647] Registered IR keymap rc-cec
> [    6.553818] rc rc0: vc4 as /devices/platform/soc/fef00700.hdmi/rc/rc0
> [    6.560663] input: vc4 as
> /devices/platform/soc/fef00700.hdmi/rc/rc0/input0
> [    6.572121] vc4-drm gpu: bound fef00700.hdmi (ops vc4_hdmi_ops)
> [    6.580187] Registered IR keymap rc-cec
> [    6.584380] rc rc1: vc4 as /devices/platform/soc/fef05700.hdmi/rc/rc1
> [    6.591386] input: vc4 as
> /devices/platform/soc/fef05700.hdmi/rc/rc1/input1
> [    6.601904] vc4-drm gpu: bound fef05700.hdmi (ops vc4_hdmi_ops)
> [    6.608378] vc4-drm gpu: bound fe004000.txp (ops vc4_txp_ops)
> [    6.614805] vc4-drm gpu: bound fe206000.pixelvalve (ops vc4_crtc_ops)
> [    6.618789] bcm2835_mmal_vchiq: module is from the staging directory,
> the quality is unknown, you have been warned.
> [    6.621627] bcm2835_mmal_vchiq: module is from the staging directory,
> the quality is unknown, you have been warned.
> [    6.621735] vc4-drm gpu: bound fe207000.pixelvalve (ops vc4_crtc_ops)
> [    6.621970] vc4-drm gpu: bound fe20a000.pixelvalve (ops vc4_crtc_ops)
> [    6.622135] vc4-drm gpu: bound fe216000.pixelvalve (ops vc4_crtc_ops)
> [    6.622343] vc4-drm gpu: bound fec12000.pixelvalve (ops vc4_crtc_ops)
> [    6.643063] [drm] Initialized vc4 0.0.0 20140616 for gpu on minor 0
> [    6.675594] vc4-drm gpu: [drm] Cannot find any crtc or sizes
> [    6.687116] bcm2835_isp: module is from the staging directory, the
> quality is unknown, you have been warned.
> [    6.694354] bcm2835_codec: module is from the staging directory, the
> quality is unknown, you have been warned.
> [    6.701781] bcm2835_v4l2: module is from the staging directory, the
> quality is unknown, you have been warned.
> [  OK  ] Mounted /boot.
> [    6.722939] bcm2835-codec bcm2835-codec: Device registered as
> /dev/video10
> [    6.730296] bcm2835-codec bcm2835-codec: Loaded V4L2 decode
> [    6.738697] bcm2835-codec bcm2835-codec: Device registered as
> /dev/video11
> [    6.745908] bcm2835-codec bcm2835-codec: Loaded V4L2 encode
> [    6.754675] bcm2835-isp bcm2835-isp: Device node output[0] registered
> as /dev/video13
> [    6.765508] bcm2835-isp bcm2835-isp: Device node capture[0] registered
> as /dev/video14
> [    6.776093] bcm2835-isp bcm2835-isp: Device node capture[1] registered
> as /dev/video15
> [    6.777884] bcm2835-codec bcm2835-codec: Device registered as
> /dev/video12
> [    6.792915] bcm2835-codec bcm2835-codec: Loaded V4L2 isp
> [    6.798548] bcm2835-isp bcm2835-isp: Device node stats[2] registered a=
s
> /dev/video16
> [    6.802966] [drm] Initialized v3d 1.0.0 20180419 for fec00000.v3d on
> minor 1
> [    6.810763] bcm2835-isp bcm2835-isp: Register output node 0 with media
> controller
> [  OK      6.822995] bcm2835-codec bcm2835-codec: Device registered as
> /dev/video18
> 0m] Reac[    6.823542] bcm2835-isp bcm2835-isp: Register capture node 1
> with media controller
> hed targ[    6.830924] bcm2835-codec bcm2835-codec: Loaded V4L2 image_fx
> et     6.841425] bcm2835-isp bcm2835-isp: Register capture node 2 with
> media controller
> ;39mLoca[    6.852471] cfg80211: Loading compiled-in X.509 certificates
> for regulatory database
> l File S[    6.853759] bcm2835-isp bcm2835-isp: Register capture node 3
> with media controller
> ystems.
> [    6.873712] bcm2835-isp bcm2835-isp: Loaded V4L2 bcm2835-isp
>          Starting Rebuild Dynamic Linker Cache...
> [    6.895219] cfg80211: Loaded X.509 cert 'sforshee: 00b28ddf47aef9cea7'
>          Starting Create Volatile Files and Directories...
> [  OK  ] Finished Create Volatile Files and Directories.
> [    6.995252] brcmfmac: brcmf_fw_alloc_request: using
> brcm/brcmfmac43455-sdio for chip BCM4345/6
> [    7.007862] usbcore: registered new interface driver brcmfmac
>          Starting Rebuild Journal Catalog...
>          Starting Network Name Resolution...
>          Starting Network Time Synchronization...
>          Starting Record System Boot/Shutdown in UTMP...
> [  OK  ] Finished Rebuild Journal Catalog.
> [  OK  ] Finished Record System Boot/Shutdown in UTMP.
> [    7.290634] brcmfmac: brcmf_fw_alloc_request: using
> brcm/brcmfmac43455-sdio for chip BCM4345/6
> [    7.312992] brcmfmac: brcmf_fw_alloc_request: using
> brcm/brcmfmac43455-sdio for chip BCM4345/6
> [  OK  ] Finished Rebuild Dynamic Linker Cache.
>          Starting Update is Completed...
> [    7.355203] brcmfmac: brcmf_c_preinit_dcmds: Firmware: BCM4345/6 wl0:
> Jan  4 2021 19:56:29 version 7.45.229 (617f1f5 CY) FWID 01-2dbd9d2e
> [  OK  ] Finished Update is Completed.
> [  OK  ] Listening on Load/Save RF =E2=80=A6itch Status /dev/rfkill Watch=
.
>          Starting Load/Save RF Kill Switch Status...
>          Starting Start psplash boot splash screen...
> [FAILED] Failed to start Start psplash boot splash screen.
> See 'systemctl status psplash-start.service' for details.
> [DEPEND] Dependency failed for Star=E2=80=A6progress communication helper=
.
>          Starting Start psplash boot splash screen...
> [FAILED] Failed to start Start psplash boot splash screen.
> See 'systemctl status psplash-start.service' for details.
> [DEPEND] Dependency failed for Star=E2=80=A6progress communication helper=
.
> [  OK  ] Started Load/Save RF Kill Switch Status.
> [  OK  ] Started Network Name Resolution.
> [  OK  ] Found device /sys/subsystem/net/devices/wlan0.
> [    7.821285] random: crng init done
> [    7.824757] random: 7 urandom warning(s) missed due to ratelimiting
> [    7.828150] brcmfmac: brcmf_cfg80211_set_power_mgmt: power save enable=
d
> [  OK  ] Reached target Host and Network Name Lookups.
> [  OK  ] Started Network Time Synchronization.
> [  OK  ] Finished Load/Save Random Seed.
> [  OK  ] Reached target System Initialization.
> [  OK  ] Started Daily Cleanup of Temporary Directories.
> [  OK  ] Reached target Boot Completion Check.
> [  OK  ] Reached target System Time Set.
> [  OK  ] Reached target Timer Units.
> [  OK  ] Listening on Avahi mDNS/DNS-SD Stack Activation Socket.
> [  OK  ] Listening on D-Bus System Message Bus Socket.
> [  OK  ] Listening on dropbear.socket.
> [  OK  ] Reached target Socket Units.
> [  OK  ] Reached target Basic System.
>          Starting Save/Restore Sound Card State...
>          Starting Avahi mDNS/DNS-SD Stack...
> [  OK  ] Started Kernel Logging Service.
> [  OK  ] Started System Logging Service.
> [  OK  ] Started D-Bus System Message Bus.
> [  OK  ] Started A minimalistic net=E2=80=A6Pv4, rdisc and DHCPv6 support=
.
>          Starting Configure Bluetooth Modems connected by UART...
>          Starting Telephony service...
> [    8.291553] 8021q: 802.1Q VLAN Support v1.8
> [    8.298806] audit: type=3D1334 audit(1636549116.971:4): prog-id=3D7 op=
=3DLOAD
> [    8.305628] audit: type=3D1334 audit(1636549116.971:5): prog-id=3D8 op=
=3DLOAD
>         [    8.313826] uart-pl011 fe201000.serial: no DMA platform data
>  Starting User Login Management...
>          Starting Commit a transient machine-id on disk...
> [  OK  ] Started WPA supplicant dae=E2=80=A60211 driver-specific version)=
.
>          Starting WPA supplicant...
> [  OK  ] Finished Save/Restore Sound Card State.
> [  OK  ] Started Telephony service.
> [  OK  ] Started Avahi mDNS/DNS-SD Stack.
> [  OK  ] Reached target Sound Card.
> [  OK  ] Finished Commit a transient machine-id on disk.
> [  OK  ] Started     8.691650] Bluetooth: Core ver 2.22
> 1;39mWPA[    8.696196] NET: Registered protocol family 31
>  supplic[    8.701327] Bluetooth: HCI device and connection manager
> initialized
> ant.[    8.708584] Bluetooth: HCI socket layer initialized
>
> [    8.714452] Bluetooth: L2CAP socket layer initialized
> [    8.719796] Bluetooth: SCO socket layer initialized
> [  OK  ] Reached target Network.
>          Starting Permit User Sessions...
> [  OK  ] Finished Permit User Sessions.
> [  OK  ] Started Getty on tty1.
> [  OK  ] Started Serial Getty on ttyS0.
> [  OK  ] Reached target Login Prompts.
> [  OK  ] Started User Login Management.
> [   14.115352] IPv6: ADDRCONF(NETDEV_CHANGE): wlan0: link becomes ready
>
> OpenEmbedded nodistro.0 raspberrypi4-64 ttyS0
>
> raspberrypi4-64 login: [   15.048478] Bluetooth: HCI UART driver ver 2.3
> [   15.053073] Bluetooth: HCI UART protocol H4 registered
> [   15.058615] Bluetooth: HCI UART protocol Three-wire (H5) registered
> [   15.065454] Bluetooth: HCI UART protocol Broadcom registered
> [   15.324220] Bluetooth: BNEP (Ethernet Emulation) ver 1.3
> [   15.329743] Bluetooth: BNEP filters: protocol multicast
> [   15.335314] Bluetooth: BNEP socket layer initialized
> [   15.355534] NET: Registered protocol family 38
> [   15.366165] audit: type=3D1334 audit(1645960582.023:6): prog-id=3D9 op=
=3DLOAD
> [   15.373243] audit: type=3D1334 audit(1645960582.023:7): prog-id=3D10 o=
p=3DLOAD
> [   15.447440] Bluetooth: RFCOMM TTY layer initialized
> [   15.452487] Bluetooth: RFCOMM socket layer initialized
> [   15.457947] Bluetooth: RFCOMM ver 1.11
> [   49.149033] audit: type=3D1334 audit(1645960615.807:8): prog-id=3D10
> op=3DUNLOAD
> [   49.156083] audit: type=3D1334 audit(1645960615.807:9): prog-id=3D9
> op=3DUNLOAD
>
>
> And it's stuck here.
>
> And it is also complaning about
>
> [    3.640033] systemd-fstab-generator[107]: Failed to create unit file
> /run/systemd/generator/boot.mount, as it already exists. Duplicate entry =
in
> /etc/fstab?
> [    3.699053] systemd[105]:
> /lib/systemd/system-generators/systemd-fstab-generator failed with exit
> status 1.
>
>
> My fstab looks like:
>
> # stock fstab - you probably want to override this with a machine specifi=
c
> one
>
> /dev/root            /                    auto       defaults
> 1  1
> proc                 /proc                proc       defaults
> 0  0
> devpts               /dev/pts             devpts
> mode=3D0620,ptmxmode=3D0666,gid=3D5      0  0
> tmpfs                /run                 tmpfs
> mode=3D0755,nodev,nosuid,strictatime 0  0
> tmpfs                /var/volatile        tmpfs      defaults
> 0  0
>
> # uncomment this if your device has a SD/MMC/Transflash slot
> #/dev/mmcblk0p1       /media/card          auto
> defaults,sync,noauto  0  0
>
> /dev/mmcblk0p1  /boot   vfat    defaults        0       0
>
>
>
> Can you please let me know what could be the issue here and how to resolv=
e
> it?
>

You can press bunch of carriage returns and try to login on this series
console with the username password you have that will get you further and
can check if ssh service is running and network is up or not using ifconfig
-a

>
>
> Your help will be much appreciated.
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#56298):
> https://lists.yoctoproject.org/g/yocto/message/56298
> Unfollow This Topic: https://lists.yoctoproject.org/unft/89328890/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> raj.khem@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--00000000000061606c05d90afaab
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><br></div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Sun, Feb 27, 2022 at 3:42 AM Sourabh Hegde &lt;<a href=
=3D"mailto:hrsourabh011@gmail.com">hrsourabh011@gmail.com</a>&gt; wrote:<br=
></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;=
border-left-width:1px;border-left-style:solid;padding-left:1ex;border-left-=
color:rgb(204,204,204)"><p>Hello Khem,<br><br>I got my hands on Raspberry P=
i Compute Module 4 IO Board and also I could access serial console now. Bel=
ow is the log message I got while booting:<br><br>[=C2=A0=C2=A0=C2=A0 0.000=
000] Booting Linux on physical CPU 0x0000000000 [0x410fd083]<br>[=C2=A0=C2=
=A0=C2=A0 0.000000] Linux version 5.10.78-v8 (oe-user@oe-host) (aarch64-oe-=
linux-gcc (GCC) 11.2.0, GNU ld (GNU Binutils) 2.37.20210721) #1 SMP PREEMPT=
 Tue Feb 22 15:19:24 UTC 2022<br>[=C2=A0=C2=A0=C2=A0 0.000000] random: fast=
 init done<br>[=C2=A0=C2=A0=C2=A0 0.000000] Machine model: Raspberry Pi Com=
pute Module 4 Rev 1.0<br>[=C2=A0=C2=A0=C2=A0 0.000000] efi: UEFI not found.=
<br>[=C2=A0=C2=A0=C2=A0 0.000000] Reserved memory: created CMA memory pool =
at 0x000000001ec00000, size 256 MiB<br>[=C2=A0=C2=A0=C2=A0 0.000000] OF: re=
served mem: initialized node linux,cma, compatible id shared-dma-pool<br>[=
=C2=A0=C2=A0=C2=A0 0.000000] Zone ranges:<br>[=C2=A0=C2=A0=C2=A0 0.000000]=
=C2=A0=C2=A0 DMA=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 [mem 0x0000000000000000-0x00=
0000003b3fffff]<br>[=C2=A0=C2=A0=C2=A0 0.000000]=C2=A0=C2=A0 DMA32=C2=A0=C2=
=A0=C2=A0 empty<br>[=C2=A0=C2=A0=C2=A0 0.000000]=C2=A0=C2=A0 Normal=C2=A0=
=C2=A0 empty<br>[=C2=A0=C2=A0=C2=A0 0.000000] Movable zone start for each n=
ode<br>[=C2=A0=C2=A0=C2=A0 0.000000] Early memory node ranges<br>[=C2=A0=C2=
=A0=C2=A0 0.000000]=C2=A0=C2=A0 node=C2=A0=C2=A0 0: [mem 0x0000000000000000=
-0x000000003b3fffff]<br>[=C2=A0=C2=A0=C2=A0 0.000000] Initmem setup node 0 =
[mem 0x0000000000000000-0x000000003b3fffff]<br>[=C2=A0=C2=A0=C2=A0 0.000000=
] percpu: Embedded 32 pages/cpu s92312 r8192 d30568 u131072<br>[=C2=A0=C2=
=A0=C2=A0 0.000000] Detected PIPT I-cache on CPU0<br>[=C2=A0=C2=A0=C2=A0 0.=
000000] CPU features: detected: Spectre-v2<br>[=C2=A0=C2=A0=C2=A0 0.000000]=
 CPU features: detected: Spectre-v4<br>[=C2=A0=C2=A0=C2=A0 0.000000] CPU fe=
atures: detected: ARM errata 1165522, 1319367, or 1530923<br>[=C2=A0=C2=A0=
=C2=A0 0.000000] Built 1 zonelists, mobility grouping on.=C2=A0 Total pages=
: 238896<br>[=C2=A0=C2=A0=C2=A0 0.000000] Kernel command line: coherent_poo=
l=3D1M 8250.nr_uarts=3D1 snd_bcm2835.enable_compat_alsa=3D0 snd_bcm2835.ena=
ble_hdmi=3D1=C2=A0 smsc95xx.macaddr=3DE4:5F:01:49:E3:A0 vc_mem.mem_base=3D0=
x3ec00000 vc_mem.mem_size=3D0x40000000=C2=A0 dwc_otg.lpm_enable=3D0 console=
=3DttyS0,115200 root=3D/dev/mmcblk0p2 rootfstype=3Dext4 rootwait<br>[=C2=A0=
=C2=A0=C2=A0 0.000000] Dentry cache hash table entries: 131072 (order: 8, 1=
048576 bytes, linear)<br>[=C2=A0=C2=A0=C2=A0 0.000000] Inode-cache hash tab=
le entries: 65536 (order: 7, 524288 bytes, linear)<br>[=C2=A0=C2=A0=C2=A0 0=
.000000] mem auto-init: stack:off, heap alloc:off, heap free:off<br>[=C2=A0=
=C2=A0=C2=A0 0.000000] Memory: 663720K/970752K available (12416K kernel cod=
e, 1992K rwdata, 4440K rodata, 3968K init, 1267K bss, 44888K reserved, 2621=
44K cma-reserved)<br>[=C2=A0=C2=A0=C2=A0 0.000000] SLUB: HWalign=3D64, Orde=
r=3D0-3, MinObjects=3D0, CPUs=3D4, Nodes=3D1<br>[=C2=A0=C2=A0=C2=A0 0.00000=
0] ftrace: allocating 39462 entries in 155 pages<br>[=C2=A0=C2=A0=C2=A0 0.0=
00000] ftrace: allocated 155 pages with 5 groups<br>[=C2=A0=C2=A0=C2=A0 0.0=
00000] rcu: Preemptible hierarchical RCU implementation.<br>[=C2=A0=C2=A0=
=C2=A0 0.000000] rcu:=C2=A0=C2=A0=C2=A0=C2=A0 RCU event tracing is enabled.=
<br>[=C2=A0=C2=A0=C2=A0 0.000000] rcu:=C2=A0=C2=A0=C2=A0=C2=A0 RCU restrict=
ing CPUs from NR_CPUS=3D256 to nr_cpu_ids=3D4.<br>[=C2=A0=C2=A0=C2=A0 0.000=
000]=C2=A0 Trampoline variant of Tasks RCU enabled.<br>[=C2=A0=C2=A0=C2=A0 =
0.000000]=C2=A0 Rude variant of Tasks RCU enabled.<br>[=C2=A0=C2=A0=C2=A0 0=
.000000]=C2=A0 Tracing variant of Tasks RCU enabled.<br>[=C2=A0=C2=A0=C2=A0=
 0.000000] rcu: RCU calculated value of scheduler-enlistment delay is 25 ji=
ffies.<br>[=C2=A0=C2=A0=C2=A0 0.000000] rcu: Adjusting geometry for rcu_fan=
out_leaf=3D16, nr_cpu_ids=3D4<br>[=C2=A0=C2=A0=C2=A0 0.000000] NR_IRQS: 64,=
 nr_irqs: 64, preallocated irqs: 0<br>[=C2=A0=C2=A0=C2=A0 0.000000] GIC: Us=
ing split EOI/Deactivate mode<br>[=C2=A0=C2=A0=C2=A0 0.000000] irq_brcmstb_=
l2: registered L2 intc (/soc/interrupt-controller@7ef00100, parent irq: 10)=
<br>[=C2=A0=C2=A0=C2=A0 0.000000] random: get_random_bytes called from star=
t_kernel+0x3b4/0x574 with crng_init=3D1<br>[=C2=A0=C2=A0=C2=A0 0.000000] ar=
ch_timer: cp15 timer(s) running at 54.00MHz (phys).<br>[=C2=A0=C2=A0=C2=A0 =
0.000000] clocksource: arch_sys_counter: mask: 0xffffffffffffff max_cycles:=
 0xc743ce346, max_idle_ns: 440795203123 ns<br>[=C2=A0=C2=A0=C2=A0 0.000006]=
 sched_clock: 56 bits at 54MHz, resolution 18ns, wraps every 4398046511102n=
s<br>[=C2=A0=C2=A0=C2=A0 0.000246] Console: colour dummy device 80x25<br>[=
=C2=A0=C2=A0=C2=A0 0.000305] Calibrating delay loop (skipped), value calcul=
ated using timer frequency.. 108.00 BogoMIPS (lpj=3D216000)<br>[=C2=A0=C2=
=A0=C2=A0 0.000334] pid_max: default: 32768 minimum: 301<br>[=C2=A0=C2=A0=
=C2=A0 0.000480] LSM: Security Framework initializing<br>[=C2=A0=C2=A0=C2=
=A0 0.000658] Mount-cache hash table entries: 2048 (order: 2, 16384 bytes, =
linear)<br>[=C2=A0=C2=A0=C2=A0 0.000688] Mountpoint-cache hash table entrie=
s: 2048 (order: 2, 16384 bytes, linear)<br>[=C2=A0=C2=A0=C2=A0 0.001948] cg=
roup: Disabling memory control group subsystem<br>[=C2=A0=C2=A0=C2=A0 0.004=
198] rcu: Hierarchical SRCU implementation.<br>[=C2=A0=C2=A0=C2=A0 0.005174=
] EFI services will not be available.<br>[=C2=A0=C2=A0=C2=A0 0.005670] smp:=
 Bringing up secondary CPUs ...<br>[=C2=A0=C2=A0=C2=A0 0.006642] Detected P=
IPT I-cache on CPU1<br>[=C2=A0=C2=A0=C2=A0 0.006713] CPU1: Booted secondary=
 processor 0x0000000001 [0x410fd083]<br>[=C2=A0=C2=A0=C2=A0 0.007803] Detec=
ted PIPT I-cache on CPU2<br>[=C2=A0=C2=A0=C2=A0 0.007850] CPU2: Booted seco=
ndary processor 0x0000000002 [0x410fd083]<br>[=C2=A0=C2=A0=C2=A0 0.008988] =
Detected PIPT I-cache on CPU3<br>[=C2=A0=C2=A0=C2=A0 0.009034] CPU3: Booted=
 secondary processor 0x0000000003 [0x410fd083]<br>[=C2=A0=C2=A0=C2=A0 0.009=
215] smp: Brought up 1 node, 4 CPUs<br>[=C2=A0=C2=A0=C2=A0 0.009260] SMP: T=
otal of 4 processors activated.<br>[=C2=A0=C2=A0=C2=A0 0.009277] CPU featur=
es: detected: 32-bit EL0 Support<br>[=C2=A0=C2=A0=C2=A0 0.009294] CPU featu=
res: detected: CRC32 instructions<br>[=C2=A0=C2=A0=C2=A0 0.009311] CPU feat=
ures: detected: 32-bit EL1 Support<br>[=C2=A0=C2=A0=C2=A0 0.044411] CPU: Al=
l CPU(s) started at EL2<br>[=C2=A0=C2=A0=C2=A0 0.044481] alternatives: patc=
hing kernel code<br>[=C2=A0=C2=A0=C2=A0 0.045650] devtmpfs: initialized<br>=
[=C2=A0=C2=A0=C2=A0 0.055650] Enabled cp15_barrier support<br>[=C2=A0=C2=A0=
=C2=A0 0.055694] Enabled setend support<br>[=C2=A0=C2=A0=C2=A0 0.056029] cl=
ocksource: jiffies: mask: 0xffffffff max_cycles: 0xffffffff, max_idle_ns: 7=
645041785100000 ns<br>[=C2=A0=C2=A0=C2=A0 0.056097] futex hash table entrie=
s: 1024 (order: 4, 65536 bytes, linear)<br>[=C2=A0=C2=A0=C2=A0 0.063289] pi=
nctrl core: initialized pinctrl subsystem<br>[=C2=A0=C2=A0=C2=A0 0.064024] =
DMI not present or invalid.<br>[=C2=A0=C2=A0=C2=A0 0.064444] NET: Registere=
d protocol family 16<br>[=C2=A0=C2=A0=C2=A0 0.067843] DMA: preallocated 102=
4 KiB GFP_KERNEL pool for atomic allocations<br>[=C2=A0=C2=A0=C2=A0 0.06845=
6] DMA: preallocated 1024 KiB GFP_KERNEL|GFP_DMA pool for atomic allocation=
s<br>[=C2=A0=C2=A0=C2=A0 0.069414] DMA: preallocated 1024 KiB GFP_KERNEL|GF=
P_DMA32 pool for atomic allocations<br>[=C2=A0=C2=A0=C2=A0 0.069523] audit:=
 initializing netlink subsys (disabled)<br>[=C2=A0=C2=A0=C2=A0 0.069799] au=
dit: type=3D2000 audit(0.068:1): state=3Dinitialized audit_enabled=3D0 res=
=3D1<br>[=C2=A0=C2=A0=C2=A0 0.070316] thermal_sys: Registered thermal gover=
nor &#39;step_wise&#39;<br>[=C2=A0=C2=A0=C2=A0 0.070532] cpuidle: using gov=
ernor menu<br>[=C2=A0=C2=A0=C2=A0 0.070728] hw-breakpoint: found 6 breakpoi=
nt and 4 watchpoint registers.<br>[=C2=A0=C2=A0=C2=A0 0.070927] ASID alloca=
tor initialised with 65536 entries<br>[=C2=A0=C2=A0=C2=A0 0.071060] Serial:=
 AMBA PL011 UART driver<br>[=C2=A0=C2=A0=C2=A0 0.110080] bcm2835-mbox fe00b=
880.mailbox: mailbox enabled<br>[=C2=A0=C2=A0=C2=A0 0.116379] raspberrypi-f=
irmware soc:firmware: Attached to firmware from 2021-09-30T19:21:03, varian=
t start<br>[=C2=A0=C2=A0=C2=A0 0.120394] raspberrypi-firmware soc:firmware:=
 Firmware hash is 51215b4f6e3966401ecd99652a35cf1c25069113<br>[=C2=A0=C2=A0=
=C2=A0 0.153635] bcm2835-dma fe007000.dma: DMA legacy API manager, dmachans=
=3D0x1<br>[=C2=A0=C2=A0=C2=A0 0.157672] vgaarb: loaded<br>[=C2=A0=C2=A0=C2=
=A0 0.158083] SCSI subsystem initialized<br>[=C2=A0=C2=A0=C2=A0 0.158307] u=
sbcore: registered new interface driver usbfs<br>[=C2=A0=C2=A0=C2=A0 0.1583=
63] usbcore: registered new interface driver hub<br>[=C2=A0=C2=A0=C2=A0 0.1=
58429] usbcore: registered new device driver usb<br>[=C2=A0=C2=A0=C2=A0 0.1=
58788] usb_phy_generic phy: supply vcc not found, using dummy regulator<br>=
[=C2=A0=C2=A0=C2=A0 0.159737] Advanced Linux Sound Architecture Driver Init=
ialized.<br>[=C2=A0=C2=A0=C2=A0 0.160822] clocksource: Switched to clocksou=
rce arch_sys_counter<br>[=C2=A0=C2=A0=C2=A0 1.180587] VFS: Disk quotas dquo=
t_6.6.0<br>[=C2=A0=C2=A0=C2=A0 1.180699] VFS: Dquot-cache hash table entrie=
s: 512 (order 0, 4096 bytes)<br>[=C2=A0=C2=A0=C2=A0 1.180878] FS-Cache: Loa=
ded<br>[=C2=A0=C2=A0=C2=A0 1.181104] CacheFiles: Loaded<br>[=C2=A0=C2=A0=C2=
=A0 1.191916] NET: Registered protocol family 2<br>[=C2=A0=C2=A0=C2=A0 1.19=
2151] IP idents hash table entries: 16384 (order: 5, 131072 bytes, linear)<=
br>[=C2=A0=C2=A0=C2=A0 1.193473] tcp_listen_portaddr_hash hash table entrie=
s: 512 (order: 1, 8192 bytes, linear)<br>[=C2=A0=C2=A0=C2=A0 1.193507] TCP =
established hash table entries: 8192 (order: 4, 65536 bytes, linear)<br>[=
=C2=A0=C2=A0=C2=A0 1.193668] TCP bind hash table entries: 8192 (order: 5, 1=
31072 bytes, linear)<br>[=C2=A0=C2=A0=C2=A0 1.193793] TCP: Hash tables conf=
igured (established 8192 bind 8192)<br>[=C2=A0=C2=A0=C2=A0 1.193995] UDP ha=
sh table entries: 512 (order: 2, 16384 bytes, linear)<br>[=C2=A0=C2=A0=C2=
=A0 1.194028] UDP-Lite hash table entries: 512 (order: 2, 16384 bytes, line=
ar)<br>[=C2=A0=C2=A0=C2=A0 1.194293] NET: Registered protocol family 1<br>[=
=C2=A0=C2=A0=C2=A0 1.195120] RPC: Registered named UNIX socket transport mo=
dule.<br>[=C2=A0=C2=A0=C2=A0 1.195137] RPC: Registered udp transport module=
.<br>[=C2=A0=C2=A0=C2=A0 1.195152] RPC: Registered tcp transport module.<br=
>[=C2=A0=C2=A0=C2=A0 1.195166] RPC: Registered tcp NFSv4.1 backchannel tran=
sport module.<br>[=C2=A0=C2=A0=C2=A0 1.195189] PCI: CLS 0 bytes, default 64=
<br>[=C2=A0=C2=A0=C2=A0 1.197342] hw perfevents: enabled with armv8_cortex_=
a72 PMU driver, 7 counters available<br>[=C2=A0=C2=A0=C2=A0 1.197623] kvm [=
1]: IPA Size Limit: 44 bits<br>[=C2=A0=C2=A0=C2=A0 1.198801] kvm [1]: vgic =
interrupt IRQ9<br>[=C2=A0=C2=A0=C2=A0 1.199075] kvm [1]: Hyp mode initializ=
ed successfully<br>[=C2=A0=C2=A0=C2=A0 1.201677] Initialise system trusted =
keyrings<br>[=C2=A0=C2=A0=C2=A0 1.202005] workingset: timestamp_bits=3D46 m=
ax_order=3D18 bucket_order=3D0<br>[=C2=A0=C2=A0=C2=A0 1.208121] zbud: loade=
d<br>[=C2=A0=C2=A0=C2=A0 1.209754] squashfs: version 4.0 (2009/01/31) Phill=
ip Lougher<br>[=C2=A0=C2=A0=C2=A0 1.210008] FS-Cache: Netfs &#39;nfs&#39; r=
egistered for caching<br>[=C2=A0=C2=A0=C2=A0 1.210671] NFS: Registering the=
 id_resolver key type<br>[=C2=A0=C2=A0=C2=A0 1.210716] Key type id_resolver=
 registered<br>[=C2=A0=C2=A0=C2=A0 1.210732] Key type id_legacy registered<=
br>[=C2=A0=C2=A0=C2=A0 1.210855] nfs4filelayout_init: NFSv4 File Layout Dri=
ver Registering...<br>[=C2=A0=C2=A0=C2=A0 1.210872] nfs4flexfilelayout_init=
: NFSv4 Flexfile Layout Driver Registering...<br>[=C2=A0=C2=A0=C2=A0 1.2119=
50] Key type asymmetric registered<br>[=C2=A0=C2=A0=C2=A0 1.211969] Asymmet=
ric key parser &#39;x509&#39; registered<br>[=C2=A0=C2=A0=C2=A0 1.212019] B=
lock layer SCSI generic (bsg) driver version 0.4 loaded (major 247)<br>[=C2=
=A0=C2=A0=C2=A0 1.212271] io scheduler mq-deadline registered<br>[=C2=A0=C2=
=A0=C2=A0 1.212289] io scheduler kyber registered<br>[=C2=A0=C2=A0=C2=A0 1.=
216591] gpio-507 (ant1): hogged as output/high<br>[=C2=A0=C2=A0=C2=A0 1.217=
956] gpio-511 (ant2): hogged as output/low<br>[=C2=A0=C2=A0=C2=A0 1.219110]=
 brcm-pcie fd500000.pcie: host bridge /scb/pcie@7d500000 ranges:<br>[=C2=A0=
=C2=A0=C2=A0 1.219142] brcm-pcie fd500000.pcie:=C2=A0=C2=A0 No bus range fo=
und for /scb/pcie@7d500000, using [bus 00-ff]<br>[=C2=A0=C2=A0=C2=A0 1.2192=
15] brcm-pcie fd500000.pcie:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 MEM 0x0600000000=
..0x063fffffff -&gt; 0x00c0000000<br>[=C2=A0=C2=A0=C2=A0 1.219295] brcm-pci=
e fd500000.pcie:=C2=A0=C2=A0 IB MEM 0x0000000000..0x003fffffff -&gt; 0x0400=
000000<br>[=C2=A0=C2=A0=C2=A0 1.536845] brcm-pcie fd500000.pcie: link down<=
br>[=C2=A0=C2=A0=C2=A0 1.542588] Serial: 8250/16550 driver, 1 ports, IRQ sh=
aring enabled<br>[=C2=A0=C2=A0=C2=A0 1.543460] bcm2835-aux-uart fe215040.se=
rial: there is not valid maps for state default<br>[=C2=A0=C2=A0=C2=A0 1.54=
5765] iproc-rng200 fe104000.rng: hwrng registered<br>[=C2=A0=C2=A0=C2=A0 1.=
546149] vc-mem: phys_addr:0x00000000 mem_base=3D0x3ec00000 mem_size:0x40000=
000(1024 MiB)<br>[=C2=A0=C2=A0=C2=A0 1.547472] gpiomem-bcm2835 fe200000.gpi=
omem: Initialised: Registers at 0xfe200000<br>[=C2=A0=C2=A0=C2=A0 1.557763]=
 vc4-drm gpu: bound fe400000.hvs (ops vc4_hvs_ops)<br>[=C2=A0=C2=A0=C2=A0 1=
.558622] cacheinfo: Unable to detect cache hierarchy for CPU 0<br>[=C2=A0=
=C2=A0=C2=A0 1.569652] brd: module loaded<br>[=C2=A0=C2=A0=C2=A0 1.581572] =
loop: module loaded<br>[=C2=A0=C2=A0=C2=A0 1.583327] Loading iSCSI transpor=
t class v2.0-870.<br>[=C2=A0=C2=A0=C2=A0 1.586751] libphy: Fixed MDIO Bus: =
probed<br>[=C2=A0=C2=A0=C2=A0 1.588364] bcmgenet fd580000.ethernet: GENET 5=
.0 EPHY: 0x0000<br>[=C2=A0=C2=A0=C2=A0 1.600865] libphy: bcmgenet MII bus: =
probed<br>[=C2=A0=C2=A0=C2=A0 1.648957] unimac-mdio unimac-mdio.-19: Broadc=
om UniMAC MDIO bus<br>[=C2=A0=C2=A0=C2=A0 1.650027] usbcore: registered new=
 interface driver r8152<br>[=C2=A0=C2=A0=C2=A0 1.650094] usbcore: registere=
d new interface driver lan78xx<br>[=C2=A0=C2=A0=C2=A0 1.650149] usbcore: re=
gistered new interface driver smsc95xx<br>[=C2=A0=C2=A0=C2=A0 1.650714] dwc=
_otg: version 3.00a 10-AUG-2012 (platform bus)<br>[=C2=A0=C2=A0=C2=A0 1.651=
548] usbcore: registered new interface driver uas<br>[=C2=A0=C2=A0=C2=A0 1.=
651609] usbcore: registered new interface driver usb-storage<br>[=C2=A0=C2=
=A0=C2=A0 1.651837] mousedev: PS/2 mouse device common for all mice<br>[=C2=
=A0=C2=A0=C2=A0 1.651886] i2c /dev entries driver<br>[=C2=A0=C2=A0=C2=A0 1.=
652742] Driver for 1-wire Dallas network protocol.<br>[=C2=A0=C2=A0=C2=A0 1=
.655022] bcm2835-wdt bcm2835-wdt: Broadcom BCM2835 watchdog timer<br>[=C2=
=A0=C2=A0=C2=A0 1.658246] sdhci: Secure Digital Host Controller Interface d=
river<br>[=C2=A0=C2=A0=C2=A0 1.658264] sdhci: Copyright(c) Pierre Ossman<br=
>[=C2=A0=C2=A0=C2=A0 1.659020] mmc-bcm2835 fe300000.mmcnr: could not get cl=
k, deferring probe<br>[=C2=A0=C2=A0=C2=A0 1.661482] sdhci-pltfm: SDHCI plat=
form and OF driver helper<br>[=C2=A0=C2=A0=C2=A0 1.664363] ledtrig-cpu: reg=
istered to indicate activity on CPUs<br>[=C2=A0=C2=A0=C2=A0 1.664701] hid: =
raw HID events driver (C) Jiri Kosina<br>[=C2=A0=C2=A0=C2=A0 1.664947] usbc=
ore: registered new interface driver usbhid<br>[=C2=A0=C2=A0=C2=A0 1.664963=
] usbhid: USB HID core driver<br>[=C2=A0=C2=A0=C2=A0 1.665261] ashmem: init=
ialized<br>[=C2=A0=C2=A0=C2=A0 1.674480] Initializing XFRM netlink socket<b=
r>[=C2=A0=C2=A0=C2=A0 1.674534] NET: Registered protocol family 17<br>[=C2=
=A0=C2=A0=C2=A0 1.674650] Key type dns_resolver registered<br>[=C2=A0=C2=A0=
=C2=A0 1.675067] registered taskstats version 1<br>[=C2=A0=C2=A0=C2=A0 1.67=
5096] Loading compiled-in X.509 certificates<br>[=C2=A0=C2=A0=C2=A0 1.67571=
7] Key type ._fscrypt registered<br>[=C2=A0=C2=A0=C2=A0 1.675736] Key type =
.fscrypt registered<br>[=C2=A0=C2=A0=C2=A0 1.675751] Key type fscrypt-provi=
sioning registered<br>[=C2=A0=C2=A0=C2=A0 1.686689] uart-pl011 fe201000.ser=
ial: there is not valid maps for state default<br>[=C2=A0=C2=A0=C2=A0 1.686=
966] uart-pl011 fe201000.serial: cts_event_workaround enabled<br>[=C2=A0=C2=
=A0=C2=A0 1.687068] fe201000.serial: ttyAMA0 at MMIO 0xfe201000 (irq =3D 23=
, base_baud =3D 0) is a PL011 rev2<br>[=C2=A0=C2=A0=C2=A0 1.693178] bcm2835=
-aux-uart fe215040.serial: there is not valid maps for state default<br>[=
=C2=A0=C2=A0=C2=A0 1.693806] printk: console [ttyS0] disabled<br>[=C2=A0=C2=
=A0=C2=A0 1.693923] fe215040.serial: ttyS0 at MMIO 0xfe215040 (irq =3D 24, =
base_baud =3D 62500000) is a 16550<br>[=C2=A0=C2=A0=C2=A0 2.811548] printk:=
 console [ttyS0] enabled<br>[=C2=A0=C2=A0=C2=A0 2.820987] vc4-drm gpu: boun=
d fe400000.hvs (ops vc4_hvs_ops)<br>[=C2=A0=C2=A0=C2=A0 2.827771] bcm2835-p=
ower bcm2835-power: Broadcom BCM2835 power domains driver<br>[=C2=A0=C2=A0=
=C2=A0 2.837670] mmc-bcm2835 fe300000.mmcnr: mmc_debug:0 mmc_debug2:0<br>[=
=C2=A0=C2=A0=C2=A0 2.843863] mmc-bcm2835 fe300000.mmcnr: DMA channel alloca=
ted<br>[=C2=A0=C2=A0=C2=A0 2.880304] vc4-drm gpu: bound fe400000.hvs (ops v=
c4_hvs_ops)<br>[=C2=A0=C2=A0=C2=A0 2.891380] vc4-drm gpu: bound fe400000.hv=
s (ops vc4_hvs_ops)<br>[=C2=A0=C2=A0=C2=A0 2.900692] of_cfs_init<br>[=C2=A0=
=C2=A0=C2=A0 2.903346] of_cfs_init: OK<br>[=C2=A0=C2=A0=C2=A0 2.906233] mmc=
1: queuing unknown CIS tuple 0x80 (2 bytes)<br>[=C2=A0=C2=A0=C2=A0 2.913529=
] mmc1: queuing unknown CIS tuple 0x80 (3 bytes)<br>[=C2=A0=C2=A0=C2=A0 2.9=
14316] mmc0: SDHCI controller on fe340000.mmc [fe340000.mmc] using ADMA<br>=
[=C2=A0=C2=A0=C2=A0 2.920774] mmc1: queuing unknown CIS tuple 0x80 (3 bytes=
)<br>[=C2=A0=C2=A0=C2=A0 2.927726] ALSA device list:<br>[=C2=A0=C2=A0=C2=A0=
 2.931646] vc4-drm gpu: bound fe400000.hvs (ops vc4_hvs_ops)<br>[=C2=A0=C2=
=A0=C2=A0 2.934870] mmc1: queuing unknown CIS tuple 0x80 (7 bytes)<br>[=C2=
=A0=C2=A0=C2=A0 2.934914]=C2=A0=C2=A0 No soundcards found.<br>[=C2=A0=C2=A0=
=C2=A0 2.942397] mmc1: queuing unknown CIS tuple 0x80 (3 bytes)<br>[=C2=A0=
=C2=A0=C2=A0 2.956053] Waiting for root device /dev/mmcblk0p2...<br>[=C2=A0=
=C2=A0=C2=A0 3.019902] mmc1: new high speed SDIO card at address 0001<br>[=
=C2=A0=C2=A0=C2=A0 3.027907] mmc0: new ultra high speed DDR50 SDHC card at =
address aaaa<br>[=C2=A0=C2=A0=C2=A0 3.035470] mmcblk0: mmc0:aaaa SC16G 14.8=
 GiB<br>[=C2=A0=C2=A0=C2=A0 3.046464]=C2=A0 mmcblk0: p1 p2<br>[=C2=A0=C2=A0=
=C2=A0 3.055549] vc4-drm gpu: bound fe400000.hvs (ops vc4_hvs_ops)<br>[=C2=
=A0=C2=A0=C2=A0 3.083634] EXT4-fs (mmcblk0p2): mounted filesystem with orde=
red data mode. Opts: (null)<br>[=C2=A0=C2=A0=C2=A0 3.092049] VFS: Mounted r=
oot (ext4 filesystem) readonly on device 179:2.<br>[=C2=A0=C2=A0=C2=A0 3.10=
2781] devtmpfs: mounted<br>[=C2=A0=C2=A0=C2=A0 3.113385] Freeing unused ker=
nel memory: 3968K<br>[=C2=A0=C2=A0=C2=A0 3.118193] Run /sbin/init as init p=
rocess<br>[=C2=A0=C2=A0=C2=A0 3.327246] systemd[1]: System time before buil=
d time, advancing clock.<br>[=C2=A0=C2=A0=C2=A0 3.408332] NET: Registered p=
rotocol family 10<br>[=C2=A0=C2=A0=C2=A0 3.414333] Segment Routing with IPv=
6<br>[=C2=A0=C2=A0=C2=A0 3.456287] systemd[1]: systemd 249.7+ running in sy=
stem mode (+PAM -AUDIT -SELINUX -APPARMOR +IMA -SMACK +SECCOMP -GCRYPT -GNU=
TLS -OPENSSL +ACL +BLKID -CURL -ELFUTILS -FIDO2 -IDN2 -IDN -IPTC +KMOD -LIB=
CRYPTSETUP +LIBFDISK -PCRE2 -PWQUALITY -P11KIT -QRENCODE -BZIP2 -LZ4 -XZ -Z=
LIB +ZSTD +XKBCOMMON +UTMP +SYSVINIT default-hierarchy=3Dhybrid)<br>[=C2=A0=
=C2=A0=C2=A0 3.487567] systemd[1]: Detected architecture arm64.<br><br>Welc=
ome to OpenEmbedded nodistro.0!<br><br>[=C2=A0=C2=A0=C2=A0 3.540979] system=
d[1]: Hostname set to &lt;raspberrypi4-64&gt;.<br>[=C2=A0=C2=A0=C2=A0 3.552=
504] random: systemd: uninitialized urandom read (16 bytes read)<br>[=C2=A0=
=C2=A0=C2=A0 3.559368] systemd[1]: Initializing machine ID from random gene=
rator.<br>[=C2=A0=C2=A0=C2=A0 3.566376] systemd[1]: Installed transient /et=
c/machine-id file.<br>[=C2=A0=C2=A0=C2=A0 3.640033] systemd-fstab-generator=
[107]: Failed to create unit file /run/systemd/generator/boot.mount, as it =
already exists. Duplicate entry in /etc/fstab?<br>[=C2=A0=C2=A0=C2=A0 3.699=
053] systemd[105]: /lib/systemd/system-generators/systemd-fstab-generator f=
ailed with exit status 1.<br>[=C2=A0=C2=A0=C2=A0 4.074995] systemd[1]: Queu=
ed start job for default target Multi-User System.<br>[=C2=A0=C2=A0=C2=A0 4=
.083709] random: systemd: uninitialized urandom read (16 bytes read)<br>[=
=C2=A0=C2=A0=C2=A0 4.137482] systemd[1]: Created slice Slice /system/getty.=
<br>[=C2=A0 OK=C2=A0 ] Created slice Slice /system/getty.<br>[=C2=A0=C2=A0=
=C2=A0 4.161062] random: systemd: uninitialized urandom read (16 bytes read=
)<br>[=C2=A0=C2=A0=C2=A0 4.169819] systemd[1]: Created slice Slice /system/=
modprobe.<br>[=C2=A0 OK=C2=A0 ] Created slice Slice /system/modprobe.<br>[=
=C2=A0=C2=A0=C2=A0 4.194908] systemd[1]: Created slice Slice /system/serial=
-getty.<br>[=C2=A0 OK=C2=A0 ] Created slice Slice /system/serial-getty.<br>=
[=C2=A0=C2=A0=C2=A0 4.218857] systemd[1]: Created slice Slice /system/wpa_s=
upplicant-nl80211.<br>[=C2=A0 OK=C2=A0 ] Created slice Slice /system/wpa_su=
pplicant-nl80211.<br>[=C2=A0=C2=A0=C2=A0 4.246570] systemd[1]: Created slic=
e User and Session Slice.<br>[=C2=A0 OK=C2=A0 ] Created slice User and Sess=
ion Slice.<br>[=C2=A0=C2=A0=C2=A0 4.269477] systemd[1]: Started Dispatch Pa=
ssword Requests to Console Directory Watch.<br>[=C2=A0 OK=C2=A0 ] Started D=
ispatch Password =E2=80=A6ts to Console Directory Watch.<br>[=C2=A0=C2=A0=
=C2=A0 4.297403] systemd[1]: Started Forward Password Requests to Wall Dire=
ctory Watch.<br>[=C2=A0 OK=C2=A0 ] Started Forward Password R=E2=80=A6uests=
 to Wall Directory Watch.<br>[=C2=A0=C2=A0=C2=A0 4.325329] systemd[1]: Reac=
hed target Path Units.<br>[=C2=A0 OK=C2=A0 ] Reached target Path Units.<br>=
[=C2=A0=C2=A0=C2=A0 4.345071] systemd[1]: Reached target Remote File System=
s.<br>[=C2=A0 OK=C2=A0 ] Reached target Remote File Systems.<br>[=C2=A0=C2=
=A0=C2=A0 4.365050] systemd[1]: Reached target Slice Units.<br>[=C2=A0 OK=
=C2=A0 ] Reached target Slice Units.<br>[=C2=A0=C2=A0=C2=A0 4.385058] syste=
md[1]: Reached target Swaps.<br>[=C2=A0 OK=C2=A0 ] Reached target Swaps.<br=
>[=C2=A0=C2=A0=C2=A0 4.433090] systemd[1]: Listening on RPCbind Server Acti=
vation Socket.<br>[=C2=A0 OK=C2=A0 ] Listening on RPCbind Server Activation=
 Socket.<br>[=C2=A0=C2=A0=C2=A0 4.457275] systemd[1]: Reached target RPC Po=
rt Mapper.<br>[=C2=A0 OK=C2=A0 ] Reached target RPC Port Mapper.<br>[=C2=A0=
=C2=A0=C2=A0 4.477987] systemd[1]: Listening on Syslog Socket.<br>[=C2=A0 O=
K=C2=A0 ] Listening on Syslog Socket.<br>[=C2=A0=C2=A0=C2=A0 4.497387] syst=
emd[1]: Listening on initctl Compatibility Named Pipe.<br>[=C2=A0 OK=C2=A0 =
] Listening on initctl Compatibility Named Pipe.<br>[=C2=A0=C2=A0=C2=A0 4.5=
22088] systemd[1]: Listening on Journal Audit Socket.<br>[=C2=A0 OK=C2=A0 ]=
 Listening on Journal Audit Socket.<br>[=C2=A0=C2=A0=C2=A0 4.545647] system=
d[1]: Listening on Journal Socket (/dev/log).<br>[=C2=A0 OK=C2=A0 ] Listeni=
ng on Journal Socket (/dev/log).<br>[=C2=A0=C2=A0=C2=A0 4.569877] systemd[1=
]: Listening on Journal Socket.<br>[=C2=A0 OK=C2=A0 ] Listening on Journal =
Socket.<br>[=C2=A0=C2=A0=C2=A0 4.589940] systemd[1]: Listening on Network S=
ervice Netlink Socket.<br>[=C2=A0 OK=C2=A0 ] Listening on Network Service N=
etlink Socket.<br>[=C2=A0=C2=A0=C2=A0 4.613846] systemd[1]: Listening on ud=
ev Control Socket.<br>[=C2=A0 OK=C2=A0 ] Listening on udev Control Socket.<=
br>[=C2=A0=C2=A0=C2=A0 4.637603] systemd[1]: Listening on udev Kernel Socke=
t.<br>[=C2=A0 OK=C2=A0 ] Listening on udev Kernel Socket.<br>[=C2=A0=C2=A0=
=C2=A0 4.661623] systemd[1]: Listening on User Database Manager Socket.<br>=
[=C2=A0 OK=C2=A0 ] Listening on User Database Manager Socket.<br>[=C2=A0=C2=
=A0=C2=A0 4.685838] systemd[1]: Condition check resulted in Huge Pages File=
 System being skipped.<br>[=C2=A0=C2=A0=C2=A0 4.698792] systemd[1]: Mountin=
g POSIX Message Queue File System...<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 Mounting POSIX Message Queue File System...<br>[=C2=A0=C2=
=A0=C2=A0 4.725788] systemd[1]: Mounting Kernel Debug File System...<br>=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Mounting Kernel Debug File Sy=
stem...<br>[=C2=A0=C2=A0=C2=A0 4.757718] systemd[1]: Mounting Kernel Trace =
File System...<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Mounting=
 Kernel Trace File System...<br>[=C2=A0=C2=A0=C2=A0 4.789511] systemd[1]: M=
ounting Temporary Directory /tmp...<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 Mounting Temporary Directory /tmp...<br>[=C2=A0=C2=A0=C2=A0 4.=
814515] systemd[1]: Starting Create List of Static Device Nodes...<br>=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Starting Create List of Stati=
c Device Nodes...<br>[=C2=A0=C2=A0=C2=A0 4.841861] systemd[1]: Starting Loa=
d Kernel Module configfs...<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 Starting Load Kernel Module configfs...<br>[=C2=A0=C2=A0=C2=A0 4.869=
773] systemd[1]: Starting Load Kernel Module drm...<br>=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Starting Load Kernel Module drm...<br>[=C2=
=A0=C2=A0=C2=A0 4.893853] systemd[1]: Starting Load Kernel Module fuse...<b=
r>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Starting Load Kernel Mod=
ule fuse...<br>[=C2=A0=C2=A0=C2=A0 4.920607] fuse: init (API version 7.32)<=
br>[=C2=A0=C2=A0=C2=A0 4.922212] systemd[1]: Starting Start psplash boot sp=
lash screen...<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Starting=
 Start psplash boot splash screen...<br>[=C2=A0=C2=A0=C2=A0 4.954277] syste=
md[1]: Starting RPC Bind...<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 Starting RPC Bind...<br>[=C2=A0=C2=A0=C2=A0 4.978095] systemd[1]: St=
arting File System Check on Root Device...<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 Starting File System Check on Root Device...<br>[=C2=
=A0=C2=A0=C2=A0 5.009819] systemd[1]: Starting Journal Service...<br>=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Starting Journal Service..[=C2=
=A0=C2=A0=C2=A0 5.018672] systemd[1]: Condition check resulted in Load Kern=
el Modules being skipped.<br>.<br>[=C2=A0=C2=A0=C2=A0 5.033667] systemd[1]:=
 Starting Apply Kernel Variables...<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 Starting Apply Kernel Variables...<br>[=C2=A0=C2=A0=C2=A0 5.04=
5884] systemd[1]: Starting Coldplug All udev Devices...<br>=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Starting Coldplug All udev Devices...<br>=
[=C2=A0=C2=A0=C2=A0 5.065621] systemd[1]: Started RPC Bind.<br>[=C2=A0 OK=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 5.070888] systemd[1]: Mounted POSIX Message =
Queue File System.<br>0m] Started=C2=A0=C2=A0=C2=A0=C2=A0 5.078603] systemd=
[1]: Mounted Kernel Debug File System.<br>1;39mRPC Bind.<br>[=C2=A0=C2=A0=
=C2=A0 5.085789] systemd[1]: Mounted Kernel Trace File System.<br>;32m=C2=
=A0 OK=C2=A0 ] Mounted [=C2=A0=C2=A0=C2=A0 5.093484] systemd[1]: Mounted Te=
mporary Directory /tmp.<br>POSIX Message Queue File System.<br>[[=C2=A0=C2=
=A0=C2=A0 5.103087] systemd[1]: Finished Create List of Static Device Nodes=
.<br>=C2=A0 OK=C2=A0 ] Mounted=C2=A0=C2=A0=C2=A0=C2=A0 5.112765] systemd[1]=
: modprobe@configfs.service: Deactivated successfully.<br>;39mKernel Debug =
File System[=C2=A0=C2=A0=C2=A0 5.122750] systemd[1]: Finished Load Kernel M=
odule configfs.<br>.<br>[=C2=A0 OK=C2=A0 ] Mounted=C2=A0 systemd[1]: modpro=
be@drm.service: Deactivated successfully.<br>[0;1;39mKernel Trace File Syst=
em[=C2=A0=C2=A0=C2=A0 5.141000] systemd[1]: Finished Load Kernel Module drm=
.<br>.<br>[=C2=A0 OK=C2=A0 ] Mount[=C2=A0=C2=A0=C2=A0 5.149229] systemd[1]:=
 modprobe@fuse.service: Deactivated successfully.<br>ed Temporary Directory=
 [=C2=A0=C2=A0=C2=A0 5.158928] systemd[1]: Finished Load Kernel Module fuse=
.<br>/tmp.<br>[=C2=A0 OK [=C2=A0=C2=A0=C2=A0 5.166274] systemd[1]: psplash-=
start.service: Main process exited, code=3Dexited, status=3D255/EXCEPTION<b=
r>=C2=A0] Finished [=C2=A0=C2=A0=C2=A0 5.177531] systemd[1]: psplash-start.=
service: Failed with result &#39;exit-code&#39;.<br>Create List of Static D=
evice No[=C2=A0=C2=A0=C2=A0 5.188088] systemd[1]: Failed to start Start psp=
lash boot splash screen.<br>des.<br>[=C2=A0=C2=A0=C2=A0 5.196215] systemd[1=
]: Dependency failed for Start psplash-systemd progress communication helpe=
r.<br>2m=C2=A0 OK=C2=A0 [=C2=A0=C2=A0=C2=A0 5.206502] systemd[1]: psplash-s=
ystemd.service: Job psplash-systemd.service/start failed with result &#39;d=
ependency&#39;.<br>] Finished Load Kernel Module confi[=C2=A0=C2=A0=C2=A0 5=
.220887] systemd[1]: Finished Apply Kernel Variables.<br>gfs.<br>[=C2=A0 OK=
=C2=A0 ] Finished Load Kernel Module drm.<br>[=C2=A0 O[=C2=A0=C2=A0=C2=A0 5=
.234289] systemd[1]: Mounting FUSE Control File System...<br>K=C2=A0 ] Fini=
shed Load Kernel Module fuse.<br>[FAILE[=C2=A0=C2=A0=C2=A0 5.246549] system=
d[1]: Mounting Kernel Configuration File System...<br>D] Failed to start St=
art psplash boot splash screen.<br>See &#39;systemctl status psplash-start.=
service&#39; for details.<br>[DEPEND] Dependency failed for Star=E2=80=A6pr=
ogress communication helper.<br>[=C2=A0 OK=C2=A0 ] Finished Apply Kernel Va=
riables.<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Mounting FUSE =
Control File System...<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
Mounting Kernel Configuration File System...<br>[=C2=A0=C2=A0=C2=A0 5.31397=
4] systemd[1]: Started Journal Service.<br>[=C2=A0 OK=C2=A0 ] Started Journ=
al Service.<br>[=C2=A0 OK=C2=A0 ] Finished File System Check on Root Device=
.<br>[=C2=A0 OK=C2=A0 ] Mounted FUSE Control File System.<br>[=C2=A0 OK=C2=
=A0 ] Mounted Kernel Configuration File System.<br>=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 Starting Remount Root and Kernel File Systems...<b=
r>[=C2=A0=C2=A0=C2=A0 5.445206] EXT4-fs (mmcblk0p2): re-mounted. Opts: (nul=
l)<br>[=C2=A0 OK=C2=A0 ] Finished Remount Root and Kernel File Systems.<br>=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Starting Flush Journal to =
Persistent Storage...<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 S=
tarting Create System[=C2=A0=C2=A0=C2=A0 5.510241] systemd-journald[135]: R=
eceived client request to flush runtime journal.<br>=C2=A0Users...<br>[=C2=
=A0 OK=C2=A0 ] Finished Flush Journal to Persistent Storage.<br>[=C2=A0 OK=
=C2=A0 ] Finished Coldplug All udev Devices.<br>[=C2=A0 OK=C2=A0 ] Finished=
 Create System Users.<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 S=
tarting Create Static Device Nodes in /dev...<br>[=C2=A0 OK=C2=A0 ] Finishe=
d Create Static Device Nodes in /dev.<br>[=C2=A0 OK=C2=A0 ] Reached target =
Preparation for Local File Systems.<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 Mounting /var/volatile...<br>[=C2=A0=C2=A0=C2=A0 5.802376] aud=
it: type=3D1334 audit(1636549114.475:2): prog-id=3D5 op=3DLOAD<br>[=C2=A0=
=C2=A0=C2=A0 5.809177] audit: type=3D1334 audit(1636549114.475:3): prog-id=
=3D6 op=3DLOAD<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Starting=
 Rule-based Manage=E2=80=A6for Device Events and Files...<br>[=C2=A0 OK=C2=
=A0 ] Mounted /var/volatile.<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 Starting Load/Save Random Seed...<br>[=C2=A0 OK=C2=A0 ] Started Rule=
-based Manager for Device Events and Files.<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 Starting Network Configuration...<br>[=C2=A0=C2=A0=C2=
=A0 6.215697] vc4-drm gpu: bound fe400000.hvs (ops vc4_hvs_ops)<br>[=C2=A0=
=C2=A0=C2=A0 6.261009] rpivid-mem feb00000.hevc-decoder: rpivid-hevcmem ini=
tialised: Registers at 0xfeb00000 length 0x00010000<br>[=C2=A0=C2=A0=C2=A0 =
6.294000] vc4-drm gpu: bound fe400000.hvs (ops vc4_hvs_ops)<br>[=C2=A0=C2=
=A0=C2=A0 6.305014] rpivid-mem feb10000.rpivid-local-intc: rpivid-intcmem i=
nitialised: Registers at 0xfeb10000 length 0x00001000<br>[=C2=A0=C2=A0=C2=
=A0 6.330846] vc4-drm gpu: bound fe400000.hvs (ops vc4_hvs_ops)<br>[=C2=A0=
=C2=A0=C2=A0 6.332704] rpivid-mem feb20000.h264-decoder: rpivid-h264mem ini=
tialised: Registers at 0xfeb20000 length 0x00010000<br>[=C2=A0=C2=A0=C2=A0 =
6.353703] vc4-drm gpu: bound fe400000.hvs (ops vc4_hvs_ops)<br>[=C2=A0=C2=
=A0=C2=A0 6.369615] rpivid-mem feb30000.vp9-decoder: rpivid-vp9mem initiali=
sed: Registers at 0xfeb30000 length 0x00010000<br>[=C2=A0 OK=C2=A0 ] Found =
device[=C2=A0=C2=A0=C2=A0 6.387710] vc_sm_cma: module is from the staging d=
irectory, the quality is unknown, you have been warned.<br>=C2=A0=C2=A0=C2=
=A0=C2=A0 6.393632] vc4-drm gpu: bound fe400000.hvs (ops vc4_hvs_ops)<br>9m=
/dev/mmcblk0p1.<br>[=C2=A0=C2=A0=C2=A0 6.412765] mc: Linux media interface:=
 v0.10<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Mounting /boot..=
.<br>[=C2=A0 OK=C2=A0 ] Star[=C2=A0=C2=A0=C2=A0 6.431869] bcm2835_vc_sm_cma=
_probe: Videocore shared memory driver<br>ted=C2=A0=C2=A0=C2=A0=C2=A0 6.433=
163] bcmgenet fd580000.ethernet: configuring instance for external RGMII (R=
X delay)<br>1;39mNetwork Configuration.<br>[=C2=A0=C2=A0=C2=A0 6.451339] bc=
mgenet fd580000.ethernet eth0: Link is Down<br>[=C2=A0=C2=A0=C2=A0 6.457389=
] [vc_sm_connected_init]: start<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 Starting Wait for Network to be Configured...<br>[=C2=A0=C2=A0=C2=
=A0 6.477747] [vc_sm_connected_init]: installed successfully<br>[=C2=A0=C2=
=A0=C2=A0 6.489525] videodev: Linux video capture interface: v2.00<br>[=C2=
=A0=C2=A0=C2=A0 6.496669] vc4-drm gpu: bound fe400000.hvs (ops vc4_hvs_ops)=
<br>[=C2=A0=C2=A0=C2=A0 6.520255] brcmstb-i2c fef04500.i2c:=C2=A0 @97500hz =
registered in polling mode<br>[=C2=A0=C2=A0=C2=A0 6.533854] vc4-drm gpu: bo=
und fe400000.hvs (ops vc4_hvs_ops)<br>[=C2=A0=C2=A0=C2=A0 6.541493] brcmstb=
-i2c fef09500.i2c:=C2=A0 @97500hz registered in polling mode<br>[=C2=A0=C2=
=A0=C2=A0 6.549647] Registered IR keymap rc-cec<br>[=C2=A0=C2=A0=C2=A0 6.55=
3818] rc rc0: vc4 as /devices/platform/soc/fef00700.hdmi/rc/rc0<br>[=C2=A0=
=C2=A0=C2=A0 6.560663] input: vc4 as /devices/platform/soc/fef00700.hdmi/rc=
/rc0/input0<br>[=C2=A0=C2=A0=C2=A0 6.572121] vc4-drm gpu: bound fef00700.hd=
mi (ops vc4_hdmi_ops)<br>[=C2=A0=C2=A0=C2=A0 6.580187] Registered IR keymap=
 rc-cec<br>[=C2=A0=C2=A0=C2=A0 6.584380] rc rc1: vc4 as /devices/platform/s=
oc/fef05700.hdmi/rc/rc1<br>[=C2=A0=C2=A0=C2=A0 6.591386] input: vc4 as /dev=
ices/platform/soc/fef05700.hdmi/rc/rc1/input1<br>[=C2=A0=C2=A0=C2=A0 6.6019=
04] vc4-drm gpu: bound fef05700.hdmi (ops vc4_hdmi_ops)<br>[=C2=A0=C2=A0=C2=
=A0 6.608378] vc4-drm gpu: bound fe004000.txp (ops vc4_txp_ops)<br>[=C2=A0=
=C2=A0=C2=A0 6.614805] vc4-drm gpu: bound fe206000.pixelvalve (ops vc4_crtc=
_ops)<br>[=C2=A0=C2=A0=C2=A0 6.618789] bcm2835_mmal_vchiq: module is from t=
he staging directory, the quality is unknown, you have been warned.<br>[=C2=
=A0=C2=A0=C2=A0 6.621627] bcm2835_mmal_vchiq: module is from the staging di=
rectory, the quality is unknown, you have been warned.<br>[=C2=A0=C2=A0=C2=
=A0 6.621735] vc4-drm gpu: bound fe207000.pixelvalve (ops vc4_crtc_ops)<br>=
[=C2=A0=C2=A0=C2=A0 6.621970] vc4-drm gpu: bound fe20a000.pixelvalve (ops v=
c4_crtc_ops)<br>[=C2=A0=C2=A0=C2=A0 6.622135] vc4-drm gpu: bound fe216000.p=
ixelvalve (ops vc4_crtc_ops)<br>[=C2=A0=C2=A0=C2=A0 6.622343] vc4-drm gpu: =
bound fec12000.pixelvalve (ops vc4_crtc_ops)<br>[=C2=A0=C2=A0=C2=A0 6.64306=
3] [drm] Initialized vc4 0.0.0 20140616 for gpu on minor 0<br>[=C2=A0=C2=A0=
=C2=A0 6.675594] vc4-drm gpu: [drm] Cannot find any crtc or sizes<br>[=C2=
=A0=C2=A0=C2=A0 6.687116] bcm2835_isp: module is from the staging directory=
, the quality is unknown, you have been warned.<br>[=C2=A0=C2=A0=C2=A0 6.69=
4354] bcm2835_codec: module is from the staging directory, the quality is u=
nknown, you have been warned.<br>[=C2=A0=C2=A0=C2=A0 6.701781] bcm2835_v4l2=
: module is from the staging directory, the quality is unknown, you have be=
en warned.<br>[=C2=A0 OK=C2=A0 ] Mounted /boot.<br>[=C2=A0=C2=A0=C2=A0 6.72=
2939] bcm2835-codec bcm2835-codec: Device registered as /dev/video10<br>[=
=C2=A0=C2=A0=C2=A0 6.730296] bcm2835-codec bcm2835-codec: Loaded V4L2 decod=
e<br>[=C2=A0=C2=A0=C2=A0 6.738697] bcm2835-codec bcm2835-codec: Device regi=
stered as /dev/video11<br>[=C2=A0=C2=A0=C2=A0 6.745908] bcm2835-codec bcm28=
35-codec: Loaded V4L2 encode<br>[=C2=A0=C2=A0=C2=A0 6.754675] bcm2835-isp b=
cm2835-isp: Device node output[0] registered as /dev/video13<br>[=C2=A0=C2=
=A0=C2=A0 6.765508] bcm2835-isp bcm2835-isp: Device node capture[0] registe=
red as /dev/video14<br>[=C2=A0=C2=A0=C2=A0 6.776093] bcm2835-isp bcm2835-is=
p: Device node capture[1] registered as /dev/video15<br>[=C2=A0=C2=A0=C2=A0=
 6.777884] bcm2835-codec bcm2835-codec: Device registered as /dev/video12<b=
r>[=C2=A0=C2=A0=C2=A0 6.792915] bcm2835-codec bcm2835-codec: Loaded V4L2 is=
p<br>[=C2=A0=C2=A0=C2=A0 6.798548] bcm2835-isp bcm2835-isp: Device node sta=
ts[2] registered as /dev/video16<br>[=C2=A0=C2=A0=C2=A0 6.802966] [drm] Ini=
tialized v3d 1.0.0 20180419 for fec00000.v3d on minor 1<br>[=C2=A0=C2=A0=C2=
=A0 6.810763] bcm2835-isp bcm2835-isp: Register output node 0 with media co=
ntroller<br>[=C2=A0 OK=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 6.822995] bcm2835-code=
c bcm2835-codec: Device registered as /dev/video18<br>0m] Reac[=C2=A0=C2=A0=
=C2=A0 6.823542] bcm2835-isp bcm2835-isp: Register capture node 1 with medi=
a controller<br>hed targ[=C2=A0=C2=A0=C2=A0 6.830924] bcm2835-codec bcm2835=
-codec: Loaded V4L2 image_fx<br>et=C2=A0=C2=A0=C2=A0=C2=A0 6.841425] bcm283=
5-isp bcm2835-isp: Register capture node 2 with media controller<br>;39mLoc=
a[=C2=A0=C2=A0=C2=A0 6.852471] cfg80211: Loading compiled-in X.509 certific=
ates for regulatory database<br>l File S[=C2=A0=C2=A0=C2=A0 6.853759] bcm28=
35-isp bcm2835-isp: Register capture node 3 with media controller<br>ystems=
.<br>[=C2=A0=C2=A0=C2=A0 6.873712] bcm2835-isp bcm2835-isp: Loaded V4L2 bcm=
2835-isp<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Starting Rebui=
ld Dynamic Linker Cache...<br>[=C2=A0=C2=A0=C2=A0 6.895219] cfg80211: Loade=
d X.509 cert &#39;sforshee: 00b28ddf47aef9cea7&#39;<br>=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Starting Create Volatile Files and Directori=
es...<br>[=C2=A0 OK=C2=A0 ] Finished Create Volatile Files and Directories.=
<br>[=C2=A0=C2=A0=C2=A0 6.995252] brcmfmac: brcmf_fw_alloc_request: using b=
rcm/brcmfmac43455-sdio for chip BCM4345/6<br>[=C2=A0=C2=A0=C2=A0 7.007862] =
usbcore: registered new interface driver brcmfmac<br>=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 Starting Rebuild Journal Catalog...<br>=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Starting Network Name Resolution=
...<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Starting Network Ti=
me Synchronization...<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 S=
tarting Record System Boot/Shutdown in UTMP...<br>[=C2=A0 OK=C2=A0 ] Finish=
ed Rebuild Journal Catalog.<br>[=C2=A0 OK=C2=A0 ] Finished Record System Bo=
ot/Shutdown in UTMP.<br>[=C2=A0=C2=A0=C2=A0 7.290634] brcmfmac: brcmf_fw_al=
loc_request: using brcm/brcmfmac43455-sdio for chip BCM4345/6<br>[=C2=A0=C2=
=A0=C2=A0 7.312992] brcmfmac: brcmf_fw_alloc_request: using brcm/brcmfmac43=
455-sdio for chip BCM4345/6<br>[=C2=A0 OK=C2=A0 ] Finished Rebuild Dynamic =
Linker Cache.<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Starting =
Update is Completed...<br>[=C2=A0=C2=A0=C2=A0 7.355203] brcmfmac: brcmf_c_p=
reinit_dcmds: Firmware: BCM4345/6 wl0: Jan=C2=A0 4 2021 19:56:29 version 7.=
45.229 (617f1f5 CY) FWID 01-2dbd9d2e<br>[=C2=A0 OK=C2=A0 ] Finished Update =
is Completed.<br>[=C2=A0 OK=C2=A0 ] Listening on Load/Save RF =E2=80=A6itch=
 Status /dev/rfkill Watch.<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 Starting Load/Save RF Kill Switch Status...<br>=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 Starting Start psplash boot splash screen...<br>[F=
AILED] Failed to start Start psplash boot splash screen.<br>See &#39;system=
ctl status psplash-start.service&#39; for details.<br>[DEPEND] Dependency f=
ailed for Star=E2=80=A6progress communication helper.<br>=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Starting Start psplash boot splash screen...=
<br>[FAILED] Failed to start Start psplash boot splash screen.<br>See &#39;=
systemctl status psplash-start.service&#39; for details.<br>[DEPEND] Depend=
ency failed for Star=E2=80=A6progress communication helper.<br>[=C2=A0 OK=
=C2=A0 ] Started Load/Save RF Kill Switch Status.<br>[=C2=A0 OK=C2=A0 ] Sta=
rted Network Name Resolution.<br>[=C2=A0 OK=C2=A0 ] Found device /sys/subsy=
stem/net/devices/wlan0.<br>[=C2=A0=C2=A0=C2=A0 7.821285] random: crng init =
done<br>[=C2=A0=C2=A0=C2=A0 7.824757] random: 7 urandom warning(s) missed d=
ue to ratelimiting<br>[=C2=A0=C2=A0=C2=A0 7.828150] brcmfmac: brcmf_cfg8021=
1_set_power_mgmt: power save enabled<br>[=C2=A0 OK=C2=A0 ] Reached target H=
ost and Network Name Lookups.<br>[=C2=A0 OK=C2=A0 ] Started Network Time Sy=
nchronization.<br>[=C2=A0 OK=C2=A0 ] Finished Load/Save Random Seed.<br>[=
=C2=A0 OK=C2=A0 ] Reached target System Initialization.<br>[=C2=A0 OK=C2=A0=
 ] Started Daily Cleanup of Temporary Directories.<br>[=C2=A0 OK=C2=A0 ] Re=
ached target Boot Completion Check.<br>[=C2=A0 OK=C2=A0 ] Reached target Sy=
stem Time Set.<br>[=C2=A0 OK=C2=A0 ] Reached target Timer Units.<br>[=C2=A0=
 OK=C2=A0 ] Listening on Avahi mDNS/DNS-SD Stack Activation Socket.<br>[=C2=
=A0 OK=C2=A0 ] Listening on D-Bus System Message Bus Socket.<br>[=C2=A0 OK=
=C2=A0 ] Listening on dropbear.socket.<br>[=C2=A0 OK=C2=A0 ] Reached target=
 Socket Units.<br>[=C2=A0 OK=C2=A0 ] Reached target Basic System.<br>=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Starting Save/Restore Sound Card=
 State...<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Starting Avah=
i mDNS/DNS-SD Stack...<br>[=C2=A0 OK=C2=A0 ] Started Kernel Logging Service=
.<br>[=C2=A0 OK=C2=A0 ] Started System Logging Service.<br>[=C2=A0 OK=C2=A0=
 ] Started D-Bus System Message Bus.<br>[=C2=A0 OK=C2=A0 ] Started A minima=
listic net=E2=80=A6Pv4, rdisc and DHCPv6 support.<br>=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 Starting Configure Bluetooth Modems connected b=
y UART...<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Starting Tele=
phony service...<br>[=C2=A0=C2=A0=C2=A0 8.291553] 8021q: 802.1Q VLAN Suppor=
t v1.8<br>[=C2=A0=C2=A0=C2=A0 8.298806] audit: type=3D1334 audit(1636549116=
.971:4): prog-id=3D7 op=3DLOAD<br>[=C2=A0=C2=A0=C2=A0 8.305628] audit: type=
=3D1334 audit(1636549116.971:5): prog-id=3D8 op=3DLOAD<br>=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 [=C2=A0=C2=A0=C2=A0 8.313826] uart-pl011 fe2010=
00.serial: no DMA platform data<br>=C2=A0Starting User Login Management...<=
br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Starting Commit a trans=
ient machine-id on disk...<br>[=C2=A0 OK=C2=A0 ] Started WPA supplicant dae=
=E2=80=A60211 driver-specific version).<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 Starting WPA supplicant...<br>[=C2=A0 OK=C2=A0 ] Finishe=
d Save/Restore Sound Card State.<br>[=C2=A0 OK=C2=A0 ] Started Telephony se=
rvice.<br>[=C2=A0 OK=C2=A0 ] Started Avahi mDNS/DNS-SD Stack.<br>[=C2=A0 OK=
=C2=A0 ] Reached target Sound Card.<br>[=C2=A0 OK=C2=A0 ] Finished Commit a=
 transient machine-id on disk.<br>[=C2=A0 OK=C2=A0 ] Started=C2=A0=C2=A0=C2=
=A0=C2=A0 8.691650] Bluetooth: Core ver 2.22<br>1;39mWPA[=C2=A0=C2=A0=C2=A0=
 8.696196] NET: Registered protocol family 31<br>=C2=A0supplic[=C2=A0=C2=A0=
=C2=A0 8.701327] Bluetooth: HCI device and connection manager initialized<b=
r>ant.[=C2=A0=C2=A0=C2=A0 8.708584] Bluetooth: HCI socket layer initialized=
<br><br>[=C2=A0=C2=A0=C2=A0 8.714452] Bluetooth: L2CAP socket layer initial=
ized<br>[=C2=A0=C2=A0=C2=A0 8.719796] Bluetooth: SCO socket layer initializ=
ed<br>[=C2=A0 OK=C2=A0 ] Reached target Network.<br>=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 Starting Permit User Sessions...<br>[=C2=A0 OK=
=C2=A0 ] Finished Permit User Sessions.<br>[=C2=A0 OK=C2=A0 ] Started Getty=
 on tty1.<br>[=C2=A0 OK=C2=A0 ] Started Serial Getty on ttyS0.<br>[=C2=A0 O=
K=C2=A0 ] Reached target Login Prompts.<br>[=C2=A0 OK=C2=A0 ] Started User =
Login Management.<br>[=C2=A0=C2=A0 14.115352] IPv6: ADDRCONF(NETDEV_CHANGE)=
: wlan0: link becomes ready<br><br>OpenEmbedded nodistro.0 raspberrypi4-64 =
ttyS0<br><br>raspberrypi4-64 login: [=C2=A0=C2=A0 15.048478] Bluetooth: HCI=
 UART driver ver 2.3<br>[=C2=A0=C2=A0 15.053073] Bluetooth: HCI UART protoc=
ol H4 registered<br>[=C2=A0=C2=A0 15.058615] Bluetooth: HCI UART protocol T=
hree-wire (H5) registered<br>[=C2=A0=C2=A0 15.065454] Bluetooth: HCI UART p=
rotocol Broadcom registered<br>[=C2=A0=C2=A0 15.324220] Bluetooth: BNEP (Et=
hernet Emulation) ver 1.3<br>[=C2=A0=C2=A0 15.329743] Bluetooth: BNEP filte=
rs: protocol multicast<br>[=C2=A0=C2=A0 15.335314] Bluetooth: BNEP socket l=
ayer initialized<br>[=C2=A0=C2=A0 15.355534] NET: Registered protocol famil=
y 38<br>[=C2=A0=C2=A0 15.366165] audit: type=3D1334 audit(1645960582.023:6)=
: prog-id=3D9 op=3DLOAD<br>[=C2=A0=C2=A0 15.373243] audit: type=3D1334 audi=
t(1645960582.023:7): prog-id=3D10 op=3DLOAD<br>[=C2=A0=C2=A0 15.447440] Blu=
etooth: RFCOMM TTY layer initialized<br>[=C2=A0=C2=A0 15.452487] Bluetooth:=
 RFCOMM socket layer initialized<br>[=C2=A0=C2=A0 15.457947] Bluetooth: RFC=
OMM ver 1.11<br>[=C2=A0=C2=A0 49.149033] audit: type=3D1334 audit(164596061=
5.807:8): prog-id=3D10 op=3DUNLOAD<br>[=C2=A0=C2=A0 49.156083] audit: type=
=3D1334 audit(1645960615.807:9): prog-id=3D9 op=3DUNLOAD<br><br><br>And it&=
#39;s stuck here.<br><br>And it is also complaning about <br><br>[=C2=A0=C2=
=A0=C2=A0 3.640033] systemd-fstab-generator[107]: Failed to create unit fil=
e /run/systemd/generator/boot.mount, as it already exists. Duplicate entry =
in /etc/fstab?<br>[=C2=A0=C2=A0=C2=A0 3.699053] systemd[105]: /lib/systemd/=
system-generators/systemd-fstab-generator failed with exit status 1.<br><br=
><br>My fstab looks like:<br><br># stock fstab - you probably want to overr=
ide this with a machine specific one<br><br>/dev/root=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 /=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 auto=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 defaults=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 1=C2=A0 =
1<br>proc=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 /proc=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 proc=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 defaults=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 0=C2=A0 0<br>devpts=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 /dev/pts=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 devpts=
=C2=A0=C2=A0=C2=A0=C2=A0 mode=3D0620,ptmxmode=3D0666,gid=3D5=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 0=C2=A0 0<br>tmpfs=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 /run=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 tmpfs=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 mode=3D0755,nodev,nosuid,strictatim=
e 0=C2=A0 0<br>tmpfs=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 /var/volatile=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 tmpfs=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 defaults=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 0=C2=A0 =
0<br><br># uncomment this if your device has a SD/MMC/Transflash slot<br>#/=
dev/mmcblk0p1=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 /media/card=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 auto=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 defaults,sync,noauto=C2=A0 0=C2=A0 0<br><br>/dev/mmcblk0p1=C2=A0 =
/boot=C2=A0=C2=A0 vfat=C2=A0=C2=A0=C2=A0 defaults=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 0</p>
<p>=C2=A0</p>
<p>Can you please let me know what could be the issue here and how to resol=
ve it?</p></blockquote><div dir=3D"auto"><br></div><div dir=3D"auto">You ca=
n press bunch of carriage returns and try to login on this series console w=
ith the username password you have that will get you further and can check =
if ssh service is running and network is up or not using ifconfig -a=C2=A0<=
/div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bo=
rder-left-width:1px;border-left-style:solid;padding-left:1ex;border-left-co=
lor:rgb(204,204,204)"><p dir=3D"auto"><br><br>Your help will be much apprec=
iated.</p>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
You automatically follow any topics you start or reply to.<br>
View/Reply Online (#56298): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/56298" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/56298</a><br>
Unfollow This Topic: <a href=3D"https://lists.yoctoproject.org/unft/8932889=
0/1997914" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.=
org/unft/89328890/1997914</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj.khem@g=
mail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div>

--00000000000061606c05d90afaab--

