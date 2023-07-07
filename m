Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 21B32EB64D9
	for <webhook@archiver.kernel.org>; Fri,  7 Jul 2023 18:11:35 +0000 (UTC)
Received: from mail-oo1-f54.google.com (mail-oo1-f54.google.com [209.85.161.54])
 by mx.groups.io with SMTP id smtpd.web11.2128.1688753486360681657
 for <yocto@lists.yoctoproject.org>;
 Fri, 07 Jul 2023 11:11:26 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=JxAVtmjp;
 spf=pass (domain: gmail.com, ip: 209.85.161.54, mailfrom: raj.khem@gmail.com)
Received: by mail-oo1-f54.google.com with SMTP id 006d021491bc7-56661fe27cbso1550485eaf.3
        for <yocto@lists.yoctoproject.org>; Fri, 07 Jul 2023 11:11:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1688753485; x=1691345485;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=12QwdWvqej5S+Sgikl/hhjuGVx3pd2dmNqMyn29DuoE=;
        b=JxAVtmjpoyzIh+ImufV3FHcajsJDNZnAB003mMd8i07hk6ymT1AtLMdO79H8MUq8TP
         t+yhpd/WqnSLTLlPHhp/94JYbIpm/MDsf45ueCabY0+WgDatnz89E1H0T7hNAPOsQGyr
         ppExGZN97pA5547rxZpwYHj0yxrN6t2sIgKhZRknrWIUr9gR+EfQMrT+fgwxX0PwY9Qj
         dMdCdQrsnDe6EbEvD10Ldea2l9AXYTIWe0kEZvLBuSmUmVw5vy5242c3Y8eiRHQEXVB0
         OrPHWTKi/Je9twV9TmXMzdThukzdxmGk7SDLlpdipt3rzBdpnKNKF7gwnaTiihsVoxz5
         A4Gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688753485; x=1691345485;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=12QwdWvqej5S+Sgikl/hhjuGVx3pd2dmNqMyn29DuoE=;
        b=ZT3m5Y2ml7yM2ThSuNoVBmMut4m0TcUC8uHeHwRZ21zGCP6WBPRSol2XIZe8GzPq/R
         j25cz8lxNbBSMkdF3eqnIBM7KhQeG8tTrrANomqxnYuRmvdKpRuR8kCpJdBOV92gYFk+
         MR6XUKsnVVVVeHaz2UwVjUzm7hojEhxSUxO67ZHF3IDEN4vcxXc5QfYHogHbTbmR6Aay
         cL3vJsUqVStd/1oWPYMXctlQ41EpyewMmy6Djqwom688Um4QpjbOEVK3vPzlUZM1qx12
         bZPAihMIRETYKnlY8XR+r834tKXBnBrE4idzDM4aJ5SezTjOG8L3S3/Bk2GDpH6OKg2f
         5C9g==
X-Gm-Message-State: ABy/qLbmcXK27uFaU9nB4oM836+Md/5kThonsKIrUHORX4i8homai2oK
	Mqnpuf8KO9sW4E1Z6Q6/M2bT3X19n5JfR3WIvkwjFTJ0l+s=
X-Google-Smtp-Source: APBJJlEUCM5nO71vTs1QWz5ef4pVI2SRpTN8EocdfbVMqmqGY79q8jZUekR6ziahaYWQ2wMJu8E8gcEkfQtizSWDDF0=
X-Received: by 2002:a4a:55c9:0:b0:563:5e40:36a2 with SMTP id
 e192-20020a4a55c9000000b005635e4036a2mr4475064oob.9.1688753483910; Fri, 07
 Jul 2023 11:11:23 -0700 (PDT)
MIME-Version: 1.0
References: <Jf7d.1688649950643635911.MtCW@lists.yoctoproject.org>
 <CAMKF1soOm7eQ46G3Uk9PMS=J7HPdMdBOHBVoyLu_YDD_wKJoGw@mail.gmail.com>
 <1248822682.421971.1688655973025@mail.yahoo.com> <CAMKF1sqfmUT0oGSR14ooDzOM6J+37Bo9ykRkZGu8uD2=ORdWfw@mail.gmail.com>
 <876850182.455807.1688659443409@mail.yahoo.com> <CAMKF1spu_ufR02HpimrDX77KpMDHB-VGvH5Yz88SghQ3zMro0Q@mail.gmail.com>
 <998277780.881376.1688736608875@mail.yahoo.com>
In-Reply-To: <998277780.881376.1688736608875@mail.yahoo.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 7 Jul 2023 11:10:57 -0700
Message-ID: <CAMKF1sp5QZtCO3Zix0MW1iaGWh6GOC0Ogn==0EcCHgBcHjUuOg@mail.gmail.com>
Subject: Re: [yocto] [meta-raspberrypi] wifi
To: Oosman Saeed <oosman3@yahoo.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 07 Jul 2023 18:11:35 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60541

I see bluetooth in the logs but not wifi,

it should be something like

[   69.625830] brcmfmac: F1 signature read @0x18000000=3D0x15264345
[   69.638142] brcmfmac: brcmf_fw_alloc_request: using
brcm/brcmfmac43455-sdio for chip BCM4345/6

check whats in /lib/firmware/


On Fri, Jul 7, 2023 at 6:30=E2=80=AFAM Oosman Saeed <oosman3@yahoo.com> wro=
te:
>
> Here is my boot output for the raspberrypi, does anything stick out as th=
e cause of not loading the wifi driver? Or something that points to what wi=
fi driver I need?
>
> Thanks!
>
> -------------------------------------------------------------------------=
------------------------------------------------
>
> U-Boot 2022.01 (Jan 10 2022 - 18:46:34 +0000)
>
> DRAM:  948 MiB
> RPI 4 Model B (0xa03115)
> MMC:   mmcnr@7e300000: 1, mmc@7e340000: 0
> Loading Environment from FAT... OK
> In:    serial
> Out:   serial
> Err:   serial
> Net:
> Warning: ethernet@7d580000 MAC addresses don't match:
> Address in DT is        e4:5f:01:ef:cf:95
> Address in environment is    dc:a6:32:e3:eb:fe
> eth0: ethernet@7d580000
> PCIe BRCM: link up, 5.0 Gbps x1 (SSC)
> starting USB...
> Bus usb@7e980000: USB DWC2
> Bus xhci_pci: Register 5000420 NbrPorts 5
> Starting the controller
> USB XHCI 1.00
> scanning bus usb@7e980000 for devices... 1 USB Device(s) found
> scanning bus xhci_pci for devices... 2 USB Device(s) found
>        scanning usb for storage devices... 0 Storage Device(s) found
> Hit any key to stop autoboot:  0
> switch to partitions #0, OK
> mmc0 is current device
> Scanning mmc 0:1...
> Found U-Boot script /boot.scr
> 423 bytes read in 6 ms (68.4 KiB/s)
> ## Executing script at 02400000
> Saving Environment to FAT... OK
> rpipart not set, default to 2
> 24021504 bytes read in 1019 ms (22.5 MiB/s)
> Moving Image from 0x80000 to 0x200000, end=3D1a00000
> ## Flattened Device Tree blob at 2eff1f00
>    Booting using the fdt blob at 0x2eff1f00
>    Using Device Tree in place at 000000002eff1f00, end 000000002f002fe7
>
> Starting kernel ...
>
> [    0.000000] Booting Linux on physical CPU 0x0000000000 [0x410fd083]
> [    0.000000] Linux version 6.1.35-v8 (oe-user@oe-host) (aarch64-oe-linu=
x-gcc (GCC) 11.3.0, GNU ld (GNU Binutils) 2.38.20220708) #1 SMP PREEMPT Sun=
 Jun 25 13:09:39 UTC 2023
> [    0.000000] random: crng init done
> [    0.000000] Machine model: Raspberry Pi 4 Model B Rev 1.5
> [    0.000000] efi: UEFI not found.
> [    0.000000] Reserved memory: bypass linux,cma node, using cmdline CMA =
params instead
> [    0.000000] OF: reserved mem: node linux,cma compatible matching fail
> [    0.000000] Zone ranges:
> [    0.000000]   DMA      [mem 0x0000000000000000-0x000000003b3fffff]
> [    0.000000]   DMA32    empty
> [    0.000000]   Normal   empty
> [    0.000000] Movable zone start for each node
> [    0.000000] Early memory node ranges
> [    0.000000]   node   0: [mem 0x0000000000000000-0x000000003b3fffff]
> [    0.000000] Initmem setup node 0 [mem 0x0000000000000000-0x000000003b3=
fffff]
> [    0.000000] On node 0, zone DMA: 19456 pages in unavailable ranges
> [    0.000000] cma: Reserved 64 MiB at 0x0000000036000000
> [    0.000000] percpu: Embedded 29 pages/cpu s79528 r8192 d31064 u118784
> [    0.000000] Detected PIPT I-cache on CPU0
> [    0.000000] CPU features: detected: Spectre-v2
> [    0.000000] CPU features: detected: Spectre-v3a
> [    0.000000] CPU features: detected: Spectre-v4
> [    0.000000] CPU features: detected: Spectre-BHB
> [    0.000000] CPU features: kernel page table isolation forced ON by KAS=
LR
> [    0.000000] CPU features: detected: Kernel page table isolation (KPTI)
> [    0.000000] CPU features: detected: ARM erratum 1742098
> [    0.000000] CPU features: detected: ARM errata 1165522, 1319367, or 15=
30923
> [    0.000000] alternatives: applying boot alternatives
> [    0.000000] Built 1 zonelists, mobility grouping on.  Total pages: 238=
896
> [    0.000000] Kernel command line: coherent_pool=3D1M 8250.nr_uarts=3D1 =
snd_bcm2835.enable_headphones=3D0 snd_bcm2835.enable_hdmi=3D0  smsc95xx.mac=
addr=3DE4:5F:01:EF:CF:95 vc_mem.mem_base=3D0x3ec00000 vc_mem.mem_size=3D0x4=
0000000  dwc_otg.lpm_enable=3D0 console=3DttyS0,115200 root=3D/dev/mmcblk0p=
2 rootfstype=3Dext4 rootwait cma=3D64M root=3D/dev/mmcblk0p2
> [    0.000000] Dentry cache hash table entries: 131072 (order: 8, 1048576=
 bytes, linear)
> [    0.000000] Inode-cache hash table entries: 65536 (order: 7, 524288 by=
tes, linear)
> [    0.000000] mem auto-init: stack:off, heap alloc:off, heap free:off
> [    0.000000] Memory: 859980K/970752K available (12800K kernel code, 214=
6K rwdata, 4048K rodata, 4352K init, 1088K bss, 45236K reserved, 65536K cma=
-reserved)
> [    0.000000] SLUB: HWalign=3D64, Order=3D0-3, MinObjects=3D0, CPUs=3D4,=
 Nodes=3D1
> [    0.000000] ftrace: allocating 41928 entries in 164 pages
> [    0.000000] ftrace: allocated 164 pages with 3 groups
> [    0.000000] trace event string verifier disabled
> [    0.000000] rcu: Preemptible hierarchical RCU implementation.
> [    0.000000] rcu:     RCU event tracing is enabled.
> [    0.000000] rcu:     RCU restricting CPUs from NR_CPUS=3D256 to nr_cpu=
_ids=3D4.
> [    0.000000]     Trampoline variant of Tasks RCU enabled.
> [    0.000000]     Rude variant of Tasks RCU enabled.
> [    0.000000]     Tracing variant of Tasks RCU enabled.
> [    0.000000] rcu: RCU calculated value of scheduler-enlistment delay is=
 25 jiffies.
> [    0.000000] rcu: Adjusting geometry for rcu_fanout_leaf=3D16, nr_cpu_i=
ds=3D4
> [    0.000000] NR_IRQS: 64, nr_irqs: 64, preallocated irqs: 0
> [    0.000000] Root IRQ handler: gic_handle_irq
> [    0.000000] GIC: Using split EOI/Deactivate mode
> [    0.000000] rcu: srcu_init: Setting srcu_struct sizes based on content=
ion.
> [    0.000000] arch_timer: cp15 timer(s) running at 54.00MHz (phys).
> [    0.000000] clocksource: arch_sys_counter: mask: 0xffffffffffffff max_=
cycles: 0xc743ce346, max_idle_ns: 440795203123 ns
> [    0.000001] sched_clock: 56 bits at 54MHz, resolution 18ns, wraps ever=
y 4398046511102ns
> [    0.000320] Console: colour dummy device 80x25
> [    0.000385] Calibrating delay loop (skipped), value calculated using t=
imer frequency.. 108.00 BogoMIPS (lpj=3D216000)
> [    0.000414] pid_max: default: 32768 minimum: 301
> [    0.000552] LSM: Security Framework initializing
> [    0.000747] Mount-cache hash table entries: 2048 (order: 2, 16384 byte=
s, linear)
> [    0.000778] Mountpoint-cache hash table entries: 2048 (order: 2, 16384=
 bytes, linear)
> [    0.002301] cgroup: Disabling memory control group subsystem
> [    0.004899] cblist_init_generic: Setting adjustable number of callback=
 queues.
> [    0.004917] cblist_init_generic: Setting shift to 2 and lim to 1.
> [    0.005129] cblist_init_generic: Setting shift to 2 and lim to 1.
> [    0.005347] cblist_init_generic: Setting shift to 2 and lim to 1.
> [    0.005887] rcu: Hierarchical SRCU implementation.
> [    0.005899] rcu:     Max phase no-delay instances is 1000.
> [    0.007367] EFI services will not be available.
> [    0.008052] smp: Bringing up secondary CPUs ...
> [    0.009354] Detected PIPT I-cache on CPU1
> [    0.009505] CPU1: Booted secondary processor 0x0000000001 [0x410fd083]
> [    0.010925] Detected PIPT I-cache on CPU2
> [    0.011047] CPU2: Booted secondary processor 0x0000000002 [0x410fd083]
> [    0.012511] Detected PIPT I-cache on CPU3
> [    0.012631] CPU3: Booted secondary processor 0x0000000003 [0x410fd083]
> [    0.012870] smp: Brought up 1 node, 4 CPUs
> [    0.012888] SMP: Total of 4 processors activated.
> [    0.012902] CPU features: detected: 32-bit EL0 Support
> [    0.012913] CPU features: detected: 32-bit EL1 Support
> [    0.012927] CPU features: detected: CRC32 instructions
> [    0.013076] CPU: All CPU(s) started at EL2
> [    0.013100] alternatives: applying system-wide alternatives
> [    0.014823] devtmpfs: initialized
> [    0.028622] Enabled cp15_barrier support
> [    0.028660] Enabled setend support
> [    0.029069] clocksource: jiffies: mask: 0xffffffff max_cycles: 0xfffff=
fff, max_idle_ns: 7645041785100000 ns
> [    0.029105] futex hash table entries: 1024 (order: 4, 65536 bytes, lin=
ear)
> [    0.030945] pinctrl core: initialized pinctrl subsystem
> [    0.031914] DMI not present or invalid.
> [    0.032699] NET: Registered PF_NETLINK/PF_ROUTE protocol family
> [    0.037154] DMA: preallocated 1024 KiB GFP_KERNEL pool for atomic allo=
cations
> [    0.037492] DMA: preallocated 1024 KiB GFP_KERNEL|GFP_DMA pool for ato=
mic allocations
> [    0.038728] DMA: preallocated 1024 KiB GFP_KERNEL|GFP_DMA32 pool for a=
tomic allocations
> [    0.038835] audit: initializing netlink subsys (disabled)
> [    0.039153] audit: type=3D2000 audit(0.036:1): state=3Dinitialized aud=
it_enabled=3D0 res=3D1
> [    0.039837] thermal_sys: Registered thermal governor 'step_wise'
> [    0.039935] cpuidle: using governor menu
> [    0.040239] hw-breakpoint: found 6 breakpoint and 4 watchpoint registe=
rs.
> [    0.040463] ASID allocator initialised with 32768 entries
> [    0.040661] Serial: AMBA PL011 UART driver
> [    0.061184] bcm2835-mbox fe00b880.mailbox: mailbox enabled
> [    0.084968] platform fe801000.csi: Fixed dependency cycle(s) with /soc=
/i2c0mux/i2c@1/imx219@10
> [    0.092288] raspberrypi-firmware soc:firmware: Attached to firmware fr=
om 2022-08-26T14:04:10, variant start_x
> [    0.096304] raspberrypi-firmware soc:firmware: Firmware hash is 102f1e=
848393c2112206fadffaaf86db04e98326
> [    0.116405] KASLR enabled
> [    0.153273] bcm2835-dma fe007000.dma: DMA legacy API manager, dmachans=
=3D0x1
> [    0.160821] SCSI subsystem initialized
> [    0.161084] usbcore: registered new interface driver usbfs
> [    0.161144] usbcore: registered new interface driver hub
> [    0.161222] usbcore: registered new device driver usb
> [    0.161774] usb_phy_generic phy: supply vcc not found, using dummy reg=
ulator
> [    0.162065] usb_phy_generic phy: dummy supplies not allowed for exclus=
ive requests
> [    0.162516] pps_core: LinuxPPS API ver. 1 registered
> [    0.162530] pps_core: Software ver. 5.3.6 - Copyright 2005-2007 Rodolf=
o Giometti <giometti@linux.it>
> [    0.162556] PTP clock support registered
> [    0.162861] Advanced Linux Sound Architecture Driver Initialized.
> [    0.163830] vgaarb: loaded
> [    0.164450] clocksource: Switched to clocksource arch_sys_counter
> [    0.165251] VFS: Disk quotas dquot_6.6.0
> [    0.165369] VFS: Dquot-cache hash table entries: 512 (order 0, 4096 by=
tes)
> [    0.165601] FS-Cache: Loaded
> [    0.165771] CacheFiles: Loaded
> [    0.176134] NET: Registered PF_INET protocol family
> [    0.176763] IP idents hash table entries: 16384 (order: 5, 131072 byte=
s, linear)
> [    0.178769] tcp_listen_portaddr_hash hash table entries: 512 (order: 1=
, 8192 bytes, linear)
> [    0.178808] Table-perturb hash table entries: 65536 (order: 6, 262144 =
bytes, linear)
> [    0.178835] TCP established hash table entries: 8192 (order: 4, 65536 =
bytes, linear)
> [    0.178896] TCP bind hash table entries: 8192 (order: 6, 262144 bytes,=
 linear)
> [    0.179155] TCP: Hash tables configured (established 8192 bind 8192)
> [    0.179337] UDP hash table entries: 512 (order: 2, 16384 bytes, linear=
)
> [    0.179398] UDP-Lite hash table entries: 512 (order: 2, 16384 bytes, l=
inear)
> [    0.179622] NET: Registered PF_UNIX/PF_LOCAL protocol family
> [    0.180345] RPC: Registered named UNIX socket transport module.
> [    0.180361] RPC: Registered udp transport module.
> [    0.180372] RPC: Registered tcp transport module.
> [    0.180384] RPC: Registered tcp NFSv4.1 backchannel transport module.
> [    0.180413] PCI: CLS 0 bytes, default 64
> [    0.183570] hw perfevents: enabled with armv8_cortex_a72 PMU driver, 7=
 counters available
> [    0.184015] kvm [1]: IPA Size Limit: 44 bits
> [    0.185464] kvm [1]: vgic interrupt IRQ9
> [    0.185719] kvm [1]: Hyp mode initialized successfully
> [    1.397294] Initialise system trusted keyrings
> [    1.397772] workingset: timestamp_bits=3D46 max_order=3D18 bucket_orde=
r=3D0
> [    1.405940] zbud: loaded
> [    1.409065] NFS: Registering the id_resolver key type
> [    1.409105] Key type id_resolver registered
> [    1.409117] Key type id_legacy registered
> [    1.409261] nfs4filelayout_init: NFSv4 File Layout Driver Registering.=
..
> [    1.409279] nfs4flexfilelayout_init: NFSv4 Flexfile Layout Driver Regi=
stering...
> [    1.410729] Key type asymmetric registered
> [    1.410748] Asymmetric key parser 'x509' registered
> [    1.410841] Block layer SCSI generic (bsg) driver version 0.4 loaded (=
major 246)
> [    1.411139] io scheduler mq-deadline registered
> [    1.411157] io scheduler kyber registered
> [    1.413912] irq_brcmstb_l2: registered L2 intc (/soc/interrupt-control=
ler@7ef00100, parent irq: 27)
> [    1.425381] brcm-pcie fd500000.pcie: host bridge /scb/pcie@7d500000 ra=
nges:
> [    1.425425] brcm-pcie fd500000.pcie:   No bus range found for /scb/pci=
e@7d500000, using [bus 00-ff]
> [    1.425537] brcm-pcie fd500000.pcie:      MEM 0x0600000000..0x063fffff=
ff -> 0x00c0000000
> [    1.425648] brcm-pcie fd500000.pcie:   IB MEM 0x0000000000..0x003fffff=
ff -> 0x0400000000
> [    1.426763] brcm-pcie fd500000.pcie: PCI host bridge to bus 0000:00
> [    1.426783] pci_bus 0000:00: root bus resource [bus 00-ff]
> [    1.426802] pci_bus 0000:00: root bus resource [mem 0x600000000-0x63ff=
fffff] (bus address [0xc0000000-0xffffffff])
> [    1.426891] pci 0000:00:00.0: [14e4:2711] type 01 class 0x060400
> [    1.427235] pci 0000:00:00.0: PME# supported from D0 D3hot
> [    1.431746] pci_bus 0000:01: supply vpcie3v3 not found, using dummy re=
gulator
> [    1.431970] pci_bus 0000:01: supply vpcie3v3aux not found, using dummy=
 regulator
> [    1.432090] pci_bus 0000:01: supply vpcie12v not found, using dummy re=
gulator
> [    1.494550] brcm-pcie fd500000.pcie: link up, 5.0 GT/s PCIe x1 (SSC)
> [    1.494731] pci 0000:01:00.0: [1106:3483] type 00 class 0x0c0330
> [    1.494875] pci 0000:01:00.0: reg 0x10: [mem 0x00000000-0x00000fff 64b=
it]
> [    1.495450] pci 0000:01:00.0: PME# supported from D0 D3hot
> [    1.504685] pci 0000:00:00.0: BAR 8: assigned [mem 0x600000000-0x6000f=
ffff]
> [    1.504713] pci 0000:01:00.0: BAR 0: assigned [mem 0x600000000-0x60000=
0fff 64bit]
> [    1.504764] pci 0000:00:00.0: PCI bridge to [bus 01]
> [    1.504790] pci 0000:00:00.0:   bridge window [mem 0x600000000-0x6000f=
ffff]
> [    1.516628] Serial: 8250/16550 driver, 1 ports, IRQ sharing enabled
> [    1.521030] iproc-rng200 fe104000.rng: hwrng registered
> [    1.521819] vc-mem: phys_addr:0x00000000 mem_base=3D0x3ec00000 mem_siz=
e:0x40000000(1024 MiB)
> [    1.524107] gpiomem-bcm2835 fe200000.gpiomem: Initialised: Registers a=
t 0xfe200000
> [    1.539887] vc4-drm gpu: bound fe400000.hvs (ops vc4_hvs_ops)
> [    1.555001] brd: module loaded
> [    1.565029] loop: module loaded
> [    1.566047] Loading iSCSI transport class v2.0-870.
> [    1.572378] bcmgenet fd580000.ethernet: GENET 5.0 EPHY: 0x0000
> [    1.632654] unimac-mdio unimac-mdio.-19: Broadcom UniMAC MDIO bus
> [    1.633910] usbcore: registered new interface driver r8152
> [    1.633986] usbcore: registered new interface driver lan78xx
> [    1.634073] usbcore: registered new interface driver smsc95xx
> [    1.679745] pci 0000:00:00.0: enabling device (0000 -> 0002)
> [    1.679951] xhci_hcd 0000:01:00.0: xHCI Host Controller
> [    1.679982] xhci_hcd 0000:01:00.0: new USB bus registered, assigned bu=
s number 1
> [    1.680810] xhci_hcd 0000:01:00.0: hcc params 0x002841eb hci version 0=
x100 quirks 0x0001e40000000890
> [    1.682095] xhci_hcd 0000:01:00.0: xHCI Host Controller
> [    1.682117] xhci_hcd 0000:01:00.0: new USB bus registered, assigned bu=
s number 2
> [    1.682145] xhci_hcd 0000:01:00.0: Host supports USB 3.0 SuperSpeed
> [    1.682575] usb usb1: New USB device found, idVendor=3D1d6b, idProduct=
=3D0002, bcdDevice=3D 6.01
> [    1.682596] usb usb1: New USB device strings: Mfr=3D3, Product=3D2, Se=
rialNumber=3D1
> [    1.682612] usb usb1: Product: xHCI Host Controller
> [    1.682627] usb usb1: Manufacturer: Linux 6.1.35-v8 xhci-hcd
> [    1.682641] usb usb1: SerialNumber: 0000:01:00.0
> [    1.683495] hub 1-0:1.0: USB hub found
> [    1.683584] hub 1-0:1.0: 1 port detected
> [    1.684769] usb usb2: New USB device found, idVendor=3D1d6b, idProduct=
=3D0003, bcdDevice=3D 6.01
> [    1.684791] usb usb2: New USB device strings: Mfr=3D3, Product=3D2, Se=
rialNumber=3D1
> [    1.684807] usb usb2: Product: xHCI Host Controller
> [    1.684822] usb usb2: Manufacturer: Linux 6.1.35-v8 xhci-hcd
> [    1.684836] usb usb2: SerialNumber: 0000:01:00.0
> [    1.685665] hub 2-0:1.0: USB hub found
> [    1.685779] hub 2-0:1.0: 4 ports detected
> [    1.687987] dwc_otg: version 3.00a 10-AUG-2012 (platform bus)
> [    1.689218] usbcore: registered new interface driver uas
> [    1.689344] usbcore: registered new interface driver usb-storage
> [    1.689572] mousedev: PS/2 mouse device common for all mice
> [    1.698297] sdhci: Secure Digital Host Controller Interface driver
> [    1.698315] sdhci: Copyright(c) Pierre Ossman
> [    1.699377] sdhci-pltfm: SDHCI platform and OF driver helper
> [    1.704124] ledtrig-cpu: registered to indicate activity on CPUs
> [    1.704847] hid: raw HID events driver (C) Jiri Kosina
> [    1.705035] usbcore: registered new interface driver usbhid
> [    1.705049] usbhid: USB HID core driver
> [    1.718785] NET: Registered PF_PACKET protocol family
> [    1.718915] Key type dns_resolver registered
> [    1.720252] registered taskstats version 1
> [    1.720341] Loading compiled-in X.509 certificates
> [    1.721354] Key type .fscrypt registered
> [    1.721370] Key type fscrypt-provisioning registered
> [    1.741134] uart-pl011 fe201000.serial: there is not valid maps for st=
ate default
> [    1.742227] uart-pl011 fe201000.serial: cts_event_workaround enabled
> [    1.742410] fe201000.serial: ttyAMA1 at MMIO 0xfe201000 (irq =3D 37, b=
ase_baud =3D 0) is a PL011 rev2
> [    1.742714] serial serial0: tty port ttyAMA1 registered
> [    1.751794] bcm2835-aux-uart fe215040.serial: there is not valid maps =
for state default
> [    1.753004] printk: console [ttyS0] disabled
> [    1.753149] fe215040.serial: ttyS0 at MMIO 0xfe215040 (irq =3D 38, bas=
e_baud =3D 62500000) is a 16550
> [    1.944485] usb 1-1: new high-speed USB device number 2 using xhci_hcd
> [    1.945726] printk: console [ttyS0] enabled
> [    2.163023] usb 1-1: New USB device found, idVendor=3D2109, idProduct=
=3D3431, bcdDevice=3D 4.21
> [    2.181595] vc4-drm gpu: bound fe400000.hvs (ops vc4_hvs_ops)
> [    2.183990] usb 1-1: New USB device strings: Mfr=3D0, Product=3D1, Ser=
ialNumber=3D0
> [    2.191076] bcm2835-wdt bcm2835-wdt: Broadcom BCM2835 watchdog timer
> [    2.193116] usb 1-1: Product: USB2.0 Hub
> [    2.199967] bcm2835-power bcm2835-power: Broadcom BCM2835 power domain=
s driver
> [    2.225382] hub 1-1:1.0: USB hub found
> [    2.234250] wm8960 1-001a: Failed to issue reset
> [    2.240503] hub 1-1:1.0: 4 ports detected
> [    2.246043] wm8960: probe of 1-001a failed with error -5
> [    3.233219] mmc-bcm2835 fe300000.mmcnr: mmc_debug:0 mmc_debug2:0
> [    3.239366] mmc-bcm2835 fe300000.mmcnr: DMA channel allocated
> [    3.279742] vc4-drm gpu: bound fe400000.hvs (ops vc4_hvs_ops)
> [    3.293846] vc4-drm gpu: bound fe400000.hvs (ops vc4_hvs_ops)
> [    3.303839] of_cfs_init
> [    3.306498] of_cfs_init: OK
> [    3.310651] mmc0: SDHCI controller on fe340000.mmc [fe340000.mmc] usin=
g ADMA
> [    3.319128] ALSA device list:
> [    3.322174]   No soundcards found.
> [    3.325453] vc4-drm gpu: bound fe400000.hvs (ops vc4_hvs_ops)
> [    3.332870] Waiting for root device /dev/mmcblk0p2...
> [    3.373963] mmc1: new high speed SDIO card at address 0001
> [    3.428500] mmc0: new ultra high speed DDR50 SDHC card at address aaaa
> [    3.436231] mmcblk0: mmc0:aaaa SC32G 29.7 GiB
> [    3.446937]  mmcblk0: p1 p2 p3 p4
> [    3.451351] mmcblk0: mmc0:aaaa SC32G 29.7 GiB (quirks 0x00004000)
> [    3.465009] vc4-drm gpu: bound fe400000.hvs (ops vc4_hvs_ops)
> [    3.489729] EXT4-fs (mmcblk0p2): INFO: recovery required on readonly f=
ilesystem
> [    3.497251] EXT4-fs (mmcblk0p2): write access will be enabled during r=
ecovery
> [    3.518291] EXT4-fs (mmcblk0p2): recovery complete
> [    3.524965] EXT4-fs (mmcblk0p2): mounted filesystem with ordered data =
mode. Quota mode: none.
> [    3.533743] VFS: Mounted root (ext4 filesystem) readonly on device 179=
:2.
> [    3.544293] devtmpfs: mounted
> [    3.556671] Freeing unused kernel memory: 4352K
> [    3.561493] Run /sbin/init as init process
> [    3.804512] systemd[1]: System time before build time, advancing clock=
.
> [    3.979554] NET: Registered PF_INET6 protocol family
> [    3.986602] Segment Routing with IPv6
> [    3.990402] In-situ OAM (IOAM) with IPv6
> [    4.030213] systemd[1]: systemd 250.5+ running in system mode (+PAM -A=
UDIT -SELINUX -APPARMOR +IMA -SMACK -SECCOMP -GCRYPT -GNUTLS -OPENSSL -ACL =
+BLKID -CURL -ELFUTILS -FIDO2 -IDN2 -IDN -IPTC +KMOD -LIBCRYPTSETUP +LIBFDI=
SK -PCRE2 -PWQUALITY -P11KIT -QRENCODE -BZIP2 -LZ4 -XZ -ZLIB +ZSTD -BPF_FRA=
MEWORK -XKBCOMMON +UTMP +SYSVINIT default-hierarchy=3Dhybrid)
> [    4.063235] systemd[1]: Detected architecture arm64.
>
> Welcome to OpenEmbedded nodistro.0!
>
> [    4.139575] systemd[1]: Hostname set to <raspberrypi4-64>.
> [    4.262773] systemd-fstab-generator[110]: Failed to create unit file /=
run/systemd/generator/boot.mount, as it already exists. Duplicate entry in =
/etc/fstab?
> [    4.279296] systemd-sysv-generator[118]: SysV service '/etc/init.d/psp=
lash.sh' lacks a native systemd unit file. Automatically generating a unit =
file for compatibility. Please update package to include a native systemd u=
nit file, in order to make it more safe and robust.
> [    4.316704] systemd-sysv-generator[118]: SysV service '/etc/init.d/hal=
t' lacks a native systemd unit file. Automatically generating a unit file f=
or compatibility. Please update package to include a native systemd unit fi=
le, in order to make it more safe and robust.
> [    4.341773] systemd-sysv-generator[118]: SysV service '/etc/init.d/sen=
dsigs' lacks a native systemd unit file. Automatically generating a unit fi=
le for compatibility. Please update package to include a native systemd uni=
t file, in order to make it more safe and robust.
> [    4.367010] systemd-sysv-generator[118]: SysV service '/etc/init.d/sav=
e-rtc.sh' lacks a native systemd unit file. Automatically generating a unit=
 file for compatibility. Please update package to include a native systemd =
unit file, in order to make it more safe and robust.
> [    4.394486] systemd-sysv-generator[118]: SysV service '/etc/init.d/ssh=
d' lacks a native systemd unit file. Automatically generating a unit file f=
or compatibility. Please update package to include a native systemd unit fi=
le, in order to make it more safe and robust.
> [    4.421091] systemd-sysv-generator[118]: SysV service '/etc/init.d/umo=
untfs' lacks a native systemd unit file. Automatically generating a unit fi=
le for compatibility. Please update package to include a native systemd uni=
t file, in order to make it more safe and robust.
> [    4.452704] systemd-sysv-generator[118]: SysV service '/etc/init.d/reb=
oot' lacks a native systemd unit file. Automatically generating a unit file=
 for compatibility. Please update package to include a native systemd unit =
file, in order to make it more safe and robust.
> [    4.477081] systemd-sysv-generator[118]: SysV service '/etc/init.d/net=
work-manager' lacks a native systemd unit file. Automatically generating a =
unit file for compatibility. Please update package to include a native syst=
emd unit file, in order to make it more safe and robust.
> [    4.505088] systemd-sysv-generator[118]: SysV service '/etc/init.d/umo=
untnfs.sh' lacks a native systemd unit file. Automatically generating a uni=
t file for compatibility. Please update package to include a native systemd=
 unit file, in order to make it more safe and robust.
> [    4.530697] systemd-sysv-generator[118]: SysV service '/etc/init.d/sin=
gle' lacks a native systemd unit file. Automatically generating a unit file=
 for compatibility. Please update package to include a native systemd unit =
file, in order to make it more safe and robust.
> [    4.576736] systemd[108]: /lib/systemd/system-generators/systemd-fstab=
-generator failed with exit status 1.
> [    4.958275] systemd[1]: Queued start job for default target Graphical =
Interface.
> [    5.033921] systemd[1]: Created slice Slice /system/getty.
> [  OK  ] Created slice Slice /system/getty.
> [    5.059177] systemd[1]: Created slice Slice /system/modprobe.
> [  OK  ] Created slice Slice /system/modprobe.
> [    5.083019] systemd[1]: Created slice Slice /system/serial-getty.
> [  OK  ] Created slice Slice /system/serial-getty.
> [    5.106617] systemd[1]: Created slice User and Session Slice.
> [  OK  ] Created slice User and Session Slice.
> [    5.129140] systemd[1]: Started Dispatch Password Requests to Console =
Directory Watch.
> [  OK  ] Started Dispatch Password =E2=80=A6ts to Console Directory Watch=
.
> [    5.157059] systemd[1]: Started Forward Password Requests to Wall Dire=
ctory Watch.
> [  OK  ] Started Forward Password R=E2=80=A6uests to Wall Directory Watch=
.
> [    5.185040] systemd[1]: Reached target Path Units.
> [  OK  ] Reached target Path Units.
> [    5.204693] systemd[1]: Reached target Remote File Systems.
> [  OK  ] Reached target Remote File Systems.
> [    5.224647] systemd[1]: Reached target Slice Units.
> [  OK  ] Reached target Slice Units.
> [    5.244692] systemd[1]: Reached target Swaps.
> [  OK  ] Reached target Swaps.
> [    5.265209] systemd[1]: Listening on initctl Compatibility Named Pipe.
> [  OK  ] Listening on initctl Compatibility Named Pipe.
> [    5.290036] systemd[1]: Listening on Journal Audit Socket.
> [  OK  ] Listening on Journal Audit Socket.
> [    5.313629] systemd[1]: Listening on Journal Socket (/dev/log).
> [  OK  ] Listening on Journal Socket (/dev/log).
> [    5.337712] systemd[1]: Listening on Journal Socket.
> [  OK  ] Listening on Journal Socket.
> [    5.357892] systemd[1]: Listening on Network Service Netlink Socket.
> [  OK  ] Listening on Network Service Netlink Socket.
> [    5.381890] systemd[1]: Listening on udev Control Socket.
> [  OK  ] Listening on udev Control Socket.
> [    5.405457] systemd[1]: Listening on udev Kernel Socket.
> [  OK  ] Listening on udev Kernel Socket.
> [    5.429385] systemd[1]: Listening on User Database Manager Socket.
> [  OK  ] Listening on User Database Manager Socket.
> [    5.453682] systemd[1]: Huge Pages File System was skipped because of =
a failed condition check (ConditionPathExists=3D/sys/kernel/mm/hugepages).
> [    5.489226] systemd[1]: Mounting POSIX Message Queue File System...
>          Mounting POSIX Message Queue File System...
> [    5.518931] systemd[1]: Mounting Kernel Debug File System...
>          Mounting Kernel Debug File System...
> [    5.546741] systemd[1]: Mounting Kernel Trace File System...
>          Mounting Kernel Trace File System...
> [    5.593235] systemd[1]: Mounting Temporary Directory /tmp...
>          Mounting Temporary Directory /tmp...
> [    5.623544] systemd[1]: Starting Create List of Static Device Nodes...
>          Starting Create List of Static Device Nodes...
> [    5.654773] systemd[1]: Starting Load Kernel Module configfs...
>          Starting Load Kernel Module configfs...
> [    5.709616] systemd[1]: Starting Load Kernel Module drm...
>          Starting Load Kernel Module drm...
> [    5.738793] systemd[1]: Starting Load Kernel Module fuse...
>          Starting Load Kernel Module fuse...
> [    5.768721] systemd[1]: Starting Start psplash boot splash screen...
>          Starting Start psplash boot splash screen...
> [    5.786936] fuse: init (API version 7.37)
> [    5.821605] systemd[1]: Starting File System Check on Root Device...
>          Starting File System Check on Root Device...
> [    5.855599] systemd[1]: Starting Journal Service...
>          Starting Journal Service...
> [    5.870309] systemd[1]: Starting Load Kernel Modules...
>          Starting Load Kernel Modules...
> [    5.882953] systemd[1]: Starting Generate network units from Kernel co=
mmand line...
>          Starting Generate network =E2=80=A6ts from Kernel command line..=
.
> [    5.898183] systemd[1]: Starting Coldplug All udev Devices...
>          Starting Coldplug All udev Devices...
> [    5.923633] systemd[1]: Mounted POSIX Message Queue File System.
> [  OK      5.931540] systemd[1]: Mounted Kernel Debug File System.
> 0m] Mounted     5.938611] systemd[1]: Mounted Kernel Trace File System.
> 1;39mPOSIX Message Queue[    5.945565] systemd[1]: Mounted Temporary Dire=
ctory /tmp.
>  File System.
> [  OK  ] M[    5.954551] systemd[1]: Finished Create List of Static Devic=
e Nodes.
> ounted Kernel Debug File System[    5.964515] systemd[1]: modprobe@config=
fs.service: Deactivated successfully.
> .
> [  OK      5.974346] systemd[1]: Finished Load Kernel Module configfs.
> m] Mounted Kernel Trace[    5.983089] systemd[1]: modprobe@drm.service: D=
eactivated successfully.
>  File System.
> [    5.991589] systemd[1]: Finished Load Kernel Module drm.
> 32m  OK  ] Mounted Temporary Directory /tmp.
> [  OK  ] Finished Create List of Static Device Nodes.
> [  OK  ] Finished Load Kernel Module configfs.
> [  OK  ] Finished Load Kernel Module drm.
> [    6.043531] systemd[1]: modprobe@fuse.service: Deactivated successfull=
y.
> [    6.052098] systemd[1]: Finished Load Kernel Module fuse.
> [  OK  ] Finished Load Kernel Module fuse.
> [    6.077790] systemd[1]: psplash-start.service: Main process exited, co=
de=3Dexited, status=3D255/EXCEPTION
> [    6.081916] cfg80211: Loading compiled-in X.509 certificates for regul=
atory database
> [    6.088483] systemd[1]: psplash-start.service: Failed with result 'exi=
t-code'.
> [    6.104852] systemd[1]: Failed to start Start psplash boot splash scre=
en.
> [    6.112953] cfg80211: Loaded X.509 cert 'sforshee: 00b28ddf47aef9cea7'
> 1mFAILED] Failed to start Start psplash boot splash screen.
> See 'systemctl status psplash-start.service' for details.
> [    6.160679] systemd[1]: Dependency failed for Start psplash-systemd pr=
ogress communication helper.
> [DEPEND] Dependency failed for Star=E2=80=A6progress communication helper=
.
> [    6.192643] systemd[1]: psplash-systemd.service: Job psplash-systemd.s=
ervice/start failed with result 'dependency'.
> [    6.204928] systemd[1]: Started Journal Service.
> [  OK  ] Started Journal Service.
> [  OK  ] Finished File System Check on Root Device.
> [  OK  ] Finished Load Kernel Modules.
> [  OK  ] Finished Generate network units from Kernel command line.
>          Mounting FUSE Control File System...
>          Mounting Kernel Configuration File System...
>          Starting Remount Root and Kernel File Systems...
>          Starting Apply Kernel Variable[    6.438252] EXT4-fs (mmcblk0p2)=
: re-mounted. Quota mode: none.
> s...
> [  OK  ] Mounted FUSE Control File System.
> [  OK  ] Mounted Kernel Configuration File System.
> [  OK  ] Finished Remount Root and Kernel File Systems.
> [  OK  ] Finished Apply Kernel Variables.
>          Starting Flush Journal to Persistent Storage...
> [    6.610243] systemd-journald[132]: Received client request to flush ru=
ntime journal.
>          Starting Create Static Device Nodes in /dev...
> [  OK  ] Finished Flush Journal to Persistent Storage.
> [  OK  ] Finished Create Static Device Nodes in /dev.
> [  OK  ] Reached target Preparation for Local File Systems.
>          Mounting /var/volatile...
> [    6.783880] audit: type=3D1334 audit(1651167747.975:2): prog-id=3D5 op=
=3DLOAD
> [    6.790890] audit: type=3D1334 audit(1651167747.983:3): prog-id=3D6 op=
=3DLOAD
>          Starting Rule-based Manage=E2=80=A6for Device Events and Files..=
.
> [  OK  ] Finished Coldplug All udev Devices.
> [  OK  ] Mounted /var/volatile.
>          Starting Load/Save Random Seed...
> [  OK  ] Finished Load/Save Random Seed.
> [  OK  ] Started Rule-based Manager for Device Events and Files.
> [  OK  ] Listening on Load/Save RF =E2=80=A6itch Status /dev/rfkill Watch=
.
> [    7.195859] vc4-drm gpu: bound fe400000.hvs (ops vc4_hvs_ops)
> [    7.277840] snd_bcm2835: module is from the staging directory, the qua=
lity is unknown, you have been warned.
> [    7.294427] mc: Linux media interface: v0.10
> [    7.299440] vc4-drm gpu: bound fe400000.hvs (ops vc4_hvs_ops)
> [    7.333535] vc_sm_cma: module is from the staging directory, the quali=
ty is unknown, you have been warned.
> [    7.347250] bcm2835_vc_sm_cma_probe: Videocore shared memory driver
> [    7.353870] [vc_sm_connected_init]: start
> [    7.360912] [vc_sm_connected_init]: installed successfully
> [    7.374284] vc4-drm gpu: bound fe400000.hvs (ops vc4_hvs_ops)
> [    7.376370] videodev: Linux video capture interface: v2.00
> [  OK  ] Found device /dev/mmcblk0p1.
> [    7.471186] bcm2835_mmal_vchiq: module is from the staging directory, =
the quality is unknown, you have been warned.
> [    7.471447] bcm2835_mmal_vchiq: module is from the staging directory, =
the quality is unknown, you have been warned.
> [    7.489471] rpivid_hevc: module is from the staging directory, the qua=
lity is unknown, you have been warned.
> [    7.499293] bcm2835_mmal_vchiq: module is from the staging directory, =
the quality is unknown, you have been warned.
>          Mounting /boot...
> [    7.523818] rpivid feb10000.codec: Device registered as /dev/video19
> [    7.541963] bcm2835_isp: module is from the staging directory, the qua=
lity is unknown, you have been warned.
> [    7.542832] bcm2835_codec: module is from the staging directory, the q=
uality is unknown, you have been warned.
> [    7.561866] bcm2835_v4l2: module is from the staging directory, the qu=
ality is unknown, you have been warned.
> [    7.577245] bcm2835-codec bcm2835-codec: Device registered as /dev/vid=
eo10
> [    7.586154] bcm2835-codec bcm2835-codec: Loaded V4L2 decode
> [    7.593141] vc4-drm gpu: bound fe400000.hvs (ops vc4_hvs_ops)
> [    7.602178] bcm2835-codec bcm2835-codec: Device registered as /dev/vid=
eo11
> [    7.617113] bcm2835-codec bcm2835-codec: Loaded V4L2 encode
> [    7.620369] FAT-fs (mmcblk0p1): Volume was not properly unmounted. Som=
e data may be corrupt. Please run fsck.
> [  OK  ] Found device /dev/mmcblk0p4.
> [    7.643196] vc4-drm gpu: bound fe400000.hvs (ops vc4_hvs_ops)
> [    7.660411] bcm2835-codec bcm2835-codec: Device registered as /dev/vid=
eo12
> [    7.667543] bcm2835-codec bcm2835-codec: Loaded V4L2 isp
> [  OK  ] Mounted /boot.
> [    7.690130] bcm2835-isp bcm2835-isp: Device node output[0] registered =
as /dev/video13
> [    7.690209] bcm2835-codec bcm2835-codec: Device registered as /dev/vid=
eo18
> [    7.705141] vc4-drm gpu: bound fe400000.hvs (ops vc4_hvs_ops)
> [    7.711499] bcm2835-codec bcm2835-codec: Loaded V4L2 image_fx
> [    7.720276] bcm2835-codec bcm2835-codec: Device registered as /dev/vid=
eo31
> [    7.727418] bcm2835-codec bcm2835-codec: Loaded V4L2 encode_image
>          Mounting /data...
> [    7.749249] vc4-drm gpu: bound fe400000.hvs (ops vc4_hvs_ops)
> [    7.755381] bcm2835-isp bcm2835-isp: Device node capture[0] registered=
 as /dev/video14
> [    7.765460] EXT4-fs (mmcblk0p4): recovery complete
> [    7.770739] EXT4-fs (mmcblk0p4): mounted filesystem with ordered data =
mode. Quota mode: none.
> [    7.811000] bcm2835-isp bcm2835-isp: Device node capture[1] registered=
 as /dev/video15
>          Mounting /media...
> [    7.857123] brcmstb-i2c fef04500.i2c:  @97500hz registered in polling =
mode
> [  OK  ] Mounted /data.
> [    7.874813] vc4-drm gpu: bound fe400000.hvs (ops vc4_hvs_ops)
> [    7.884625] brcmstb-i2c fef09500.i2c:  @97500hz registered in polling =
mode
> [    7.885738] dwc2 fe980000.usb: supply vusb_d not found, using dummy re=
gulator
> [    7.900958] bcm2835-isp bcm2835-isp: Device node stats[2] registered a=
s /dev/video16
> [    7.911582] bcm2835-isp bcm2835-isp: Register output node 0 with media=
 controller
> [    7.920029] bcm2835-isp bcm2835-isp: Register capture node 1 with medi=
a controller
> [    7.928582] bcm2835-isp bcm2835-isp: Register capture node 2 with medi=
a controller
> [    7.938142] bcm2835-isp bcm2835-isp: Register capture node 3 with medi=
a controller
> [    7.948178] Registered IR keymap rc-cec
> [    7.949491] dwc2 fe980000.usb: supply vusb_a not found, using dummy re=
gulator
> [    7.952499] rc rc0: vc4-hdmi-0 as /devices/platform/soc/fef00700.hdmi/=
rc/rc0
> [    7.970883] input: vc4-hdmi-0 as /devices/platform/soc/fef00700.hdmi/r=
c/rc0/input0
> [    7.998764] Bluetooth: Core ver 2.22
> [    8.000774] bcm2835-isp bcm2835-isp: Device node output[0] registered =
as /dev/video20
> [    8.014548] i2c i2c-22: Added multiplexed i2c bus 0
> [    8.019825] NET: Registered PF_BLUETOOTH protocol family
> [[    8.025899] Bluetooth: HCI device and connection manager initialized
>   OK      8.033423] Bluetooth: HCI socket layer initialized
> 0m] Moun[    8.038932] Bluetooth: L2CAP socket layer initialized
> ted /me[    8.045219] i2c i2c-22: Added multiplexed i2c bus 10
> dia.[    8.051513] Bluetooth: SCO socket layer initialized
>
> [    8.051655] vc4-drm gpu: bound fef00700.hdmi (ops vc4_hdmi_ops)
> [[    8.065745] bcm2835-isp bcm2835-isp: Device node capture[0] registere=
d as /dev/video21
>   OK      8.067355] dwc2 fe980000.usb: DWC OTG Controller
> 0m] Reached target     8.081443] bcm2835-isp bcm2835-isp: Device node cap=
ture[1] registered as /dev/video22
> ;39mLoca[    8.090168] dwc2 fe980000.usb: new USB bus registered, assigne=
d bus number 3
> l File S[    8.097867] dwc2 fe980000.usb: irq 48, io mem 0xfe980000
> ystems.
> [    8.114764] usb usb3: New USB device found, idVendor=3D1d6b, idProduct=
=3D0002, bcdDevice=3D 6.01
> [    8.123245] usb usb3: New USB device strings: Mfr=3D3, Product=3D2, Se=
rialNumber=3D1
> [    8.124928] Bluetooth: HCI UART driver ver 2.3
> [    8.130823] usb usb3: Product: DWC OTG Controller
> [    8.135158] Bluetooth: HCI UART protocol H4 registered
> [    8.135402] Bluetooth: HCI UART protocol Three-wire (H5) registered
> [    8.140162] usb usb3: Manufacturer: Linux 6.1.35-v8 dwc2_hsotg
> [    8.146204] Bluetooth: HCI UART protocol Broadcom registered
> [    8.147810] hci_uart_bcm serial0-0: supply vbat not found, using dummy=
 regulator
> [    8.151990] usb usb3: SerialNumber: fe980000.usb
> [    8.156581] hci_uart_bcm serial0-0: supply vddio not found, using dumm=
y regulator
> [    8.157812] bcm2835-isp bcm2835-isp: Device node stats[2] registered a=
s /dev/video23
> [    8.164339] Registered IR keymap rc-cec
> [    8.181118] bcm2835-isp bcm2835-isp: Register output node 0 with media=
 controller
> [    8.185800] hub 3-0:1.0: USB hub found
> [    8.187494] rc rc1: vc4-hdmi-1 as /devices/platform/soc/fef05700.hdmi/=
rc/rc1
> [    8.187734] input: vc4-hdmi-1 as /devices/platform/soc/fef05700.hdmi/r=
c/rc1/input1
> [    8.191742] bcm2835-isp bcm2835-isp: Register capture node 1 with medi=
a controller
> [    8.195999] hub 3-0:1.0: 1 port detected
> [    8.204622] bcm2835-isp bcm2835-isp: Register capture node 2 with medi=
a controller
> [    8.221097] [drm] Initialized v3d 1.0.0 20180419 for fec00000.v3d on m=
inor 1
> [    8.222650] bcm2835-isp bcm2835-isp: Register capture node 3 with medi=
a controller
> [    8.231443] vc4-drm gpu: bound fef05700.hdmi (ops vc4_hdmi_ops)
>          Starting Creat[    8.264622] bcm2835-isp bcm2835-isp: Loaded V4L=
2 bcm2835-isp
> e Volatile Files and Directories...
> [    8.275166] vc4-drm gpu: bound fe004000.txp (ops vc4_txp_ops)
> [    8.277008] uart-pl011 fe201000.serial: no DMA platform data
> [    8.281896] vc4-drm gpu: bound fe206000.pixelvalve (ops vc4_crtc_ops)
> [    8.315281] vc4-drm gpu: bound fe207000.pixelvalve (ops vc4_crtc_ops)
> [[    8.322477] vc4-drm gpu: bound fe20a000.pixelvalve (ops vc4_crtc_ops)
>   OK      8.330038] vc4-drm gpu: bound fe216000.pixelvalve (ops vc4_crtc_=
ops)
> 0m] Fini[    8.337441] vc4-drm gpu: bound fec12000.pixelvalve (ops vc4_cr=
tc_ops)
> shed Create Volatile Files and Directories.
> [    8.353596] [drm] Initialized vc4 0.0.0 20140616 for gpu on minor 0
> [    8.360870] vc4-drm gpu: [drm] Cannot find any crtc or sizes
>          Starting Network Time Synchronization...
>          Starting Record System Boot/Shutdown in UTMP...
>          Starting Load/Save RF Kill Switch Status...
> [    8.537403] Bluetooth: hci0: BCM: chip id 107
> [    8.542354] Bluetooth: hci0: BCM: features 0x2f
> [    8.548557] Bluetooth: hci0: BCM4345C0
> [    8.552394] Bluetooth: hci0: BCM4345C0 (003.001.025) build 0000
> [  OK  ] Finished Record System Boot/Shutdown in UTMP.
> [    8.569173] Bluetooth: hci0: BCM4345C0 'brcm/BCM4345C0.hcd' Patch
> [    8.589631] CAN device driver interface
> [    8.643726] imx219 10-0010: failed to read chip id 219
> [    8.650867] imx219: probe of 10-0010 failed with error -5
> [  OK  ] Reached target Sound Card.
> [  OK  ] Created slice Slice /system/bthelper.
>          Starting Start psplash boot splash screen...
> [  OK  ] Started Load/Save RF Kill Switch Status.
> [FAILED] Failed to start Start psplash boot splash screen.
> See 'systemctl status psplash-start.service' for details.
> [DEPEND] Dependency failed for Star=E2=80=A6progress communication helper=
.
> [  OK  ] Started Network Time Synchronization.
> [  OK  ] Reached target System Initialization.
> [  OK  ] Started Daily Cleanup of Temporary Directories.
> [  OK  ] Reached target System Time Set.
> [  OK  ] Reached target Timer Units.
> [  OK  ] Listening on D-Bus System Message Bus Socket.
>          Starting sshd.socket...
>          Starting Weston socket...
> [  OK  ] Listening on sshd.socket.
> [  OK  ] Listening on Weston socket.
> [  OK  ] Reached target Socket Units.
> [  OK  ] Reached target Basic System.
>          Starting D-Bus System Message Bus...
> [  OK  ] Started A minimalistic net=E2=80=A6Pv4, rdisc and DHCPv6 support=
.
> [    9.301550] Bluetooth: hci0: BCM: features 0x2f
> [    9.307810] Bluetooth: hci0: BCM43455 37.4MHz Raspberry Pi 3+
> [    9.313745] Bluetooth: hci0: BCM4345C0 (003.001.025) build 0342
>          Starting Configure Bluetooth Modems connected by UART...
>          Starting IPv4 Packet Filtering Framework...
> [    9.363108] 8021q: 802.1Q VLAN Support v1.8
> [    9.389432] audit: type=3D1334 audit(1651232906.515:4): prog-id=3D7 op=
=3DLOAD
> [    9.397284] audit: type=3D1334 audit(1651232906.519:5): prog-id=3D8 op=
=3DLOAD
>          Starting User Login Management...
>          Starting OpenSSH Key Generation...
> [  OK  ] Started D-Bus System Message Bus.
> [  OK  ] Started Configure Bluetooth Modems connected by UART.
> [  OK  ] Finished IPv4 Packet Filtering Framework.
> [  OK  ] Finished OpenSSH Key Generation.
> [  OK  ] Reached target Preparation for Network.
>          Starting Network Manager...
>          Starting Raspberry Pi bluetooth helper...
>          Starting LSB: network connection manager...
>          Starting Network Configuration...
> [    9.700542] mcp251x spi0.0: MCP251x didn't enter in conf mode after re=
set
> [    9.707859] mcp251x spi0.0: Probe failed, err=3D110
> [    9.712832] mcp251x: probe of spi0.0 failed with error -110
> [  OK  ] Started LSB: network connection manager.
> [  OK  ] Finished Raspberry Pi bluetooth helper.
> [  OK  ] Started User Login Management.
>          Starting Bluetooth service...
> [  OK  ] Started Network Configuration.
> [    9.994264] bcmgenet fd580000.ethernet: configuring instance for exter=
nal RGMII (RX delay)
> [   10.005669] bcmgenet fd580000.ethernet eth0: Link is Down
>          Starting Network Name Resolution...
> [  OK  ] Started Network Manager.
> [   10.094290] audit: type=3D1334 audit(1651232907.219:6): prog-id=3D9 op=
=3DLOAD
> [   10.101120] audit: type=3D1334 audit(1651232907.227:7): prog-id=3D10 o=
p=3DLOAD
>          Starting Hostname Service...
> [  OK  ] Started Bluetooth service.
> [  OK  ] Reached target Bluetooth Support.
> [   10.205340] Bluetooth: BNEP (Ethernet Emulation) ver 1.3
> [   10.210960] Bluetooth: BNEP filters: protocol multicast
> [   10.216322] Bluetooth: BNEP socket layer initialized
> [   10.240623] Bluetooth: MGMT ver 1.22
> [   10.261915] NET: Registered PF_ALG protocol family
> [  OK  ] Started Network Name Resolution.
> [  OK  ] Reached target Network.
> [  OK  ] Reached target Host and Network Name Lookups.
>          Starting DNS forwarder and DHCP server...
>          Starting Permit User Sessions...
> [  OK  ] Started Xinetd A Powerful Replacement For Inetd.
> [  OK  ] Finished Permit User Sessions.
> [  OK  ] Started Hostname Service.
> [  OK  ] Started DNS forwarder and DHCP server.
>          Starting Network Manager Script Dispatcher Service...
> [  OK  ] Started Getty on tty1.
> [  OK  ] Started Serial Getty on ttyS0.
> [  OK  ] Reached target Login Prompts.
> [  OK  ] Reached target Multi-User System.
>          Starting Weston, a Wayland=E2=80=A6ositor, as a system service..=
.
> [  OK  ] Started Network Manager Script Dispatcher Service.
> [   10.826800] audit: type=3D1334 audit(1651232907.951:8): prog-id=3D11 o=
p=3DLOAD
> [   10.837083] audit: type=3D1334 audit(1651232907.959:9): prog-id=3D12 o=
p=3DLOAD
>          Starting User Database Manager...
> [  OK  ] Started User Database Manager.
> [  OK  ] Created slice User Slice of UID 1000.
>          Starting User Runtime Directory /run/user/1000...
> [  OK  ] Finished User Runtime Directory /run/user/1000.
>          Starting User Manager for UID 1000...
> [   11.283733] audit: type=3D1006 audit(1651232908.407:10): pid=3D354 uid=
=3D0 old-auid=3D4294967295 auid=3D1000 tty=3D(none) old-ses=3D4294967295 se=
s=3D1 res=3D1
> [   11.301961] audit: type=3D1300 audit(1651232908.407:10): arch=3Dc00000=
b7 syscall=3D64 success=3Dyes exit=3D4 a0=3D8 a1=3D7fcf5a02c8 a2=3D4 a3=3D0=
 items=3D0 ppid=3D1 pid=3D354 auid=3D1000 uid=3D0 gid=3D0 euid=3D0 suid=3D0=
 fsuid=3D0 egid=3D0 sgid=3D0 fsgid=3D0 tty=3D(none) ses=3D1 comm=3D"(system=
d)" exe=3D"/lib/systemd/systemd" key=3D(null)
> [  OK  ] Started User Manager for UID 1000.
> [  OK  ] Started Session c1 of User weston.
> [   11.952188] kauditd_printk_skb: 1 callbacks suppressed
> [   11.952207] audit: type=3D1006 audit(1651232909.075:11): pid=3D348 uid=
=3D0 old-auid=3D4294967295 auid=3D1000 tty=3Dtty7 old-ses=3D4294967295 ses=
=3D2 res=3D1
> [   11.971521] audit: type=3D1300 audit(1651232909.075:11): arch=3Dc00000=
b7 syscall=3D64 success=3Dyes exit=3D4 a0=3D8 a1=3D7fcf5a02c8 a2=3D4 a3=3D0=
 items=3D0 ppid=3D1 pid=3D348 auid=3D1000 uid=3D0 gid=3D0 euid=3D0 suid=3D0=
 fsuid=3D0 egid=3D0 sgid=3D0 fsgid=3D0 tty=3Dtty7 ses=3D2 comm=3D"(weston)"=
 exe=3D"/lib/systemd/systemd" key=3D(null)
> [   11.997917] audit: type=3D1327 audit(1651232909.075:11): proctitle=3D"=
(weston)"
> [   12.759139] vc4-drm gpu: [drm] Cannot find any crtc or sizes
> [  OK  ] Started Weston, a Wayland =E2=80=A6mpositor, as a system service=
.
> [  OK  ] Reached target Graphical Interface.
>          Starting Record Runlevel Change in UTMP...
> [  OK  ] Finished Record Runlevel Change in UTMP.
>
> OpenEmbedded nodistro.0 raspberrypi4-64 ttyS0
>
> raspberrypi4-64 login: [   19.942785] platform soc:sound: deferred probe =
pending
> [   40.664644] audit: type=3D1334 audit(1651232937.791:12): prog-id=3D10 =
op=3DUNLOAD
> [   40.671849] audit: type=3D1334 audit(1651232937.791:13): prog-id=3D9 o=
p=3DUNLOAD
>
>
> -------------------------------------------------------------------------=
-----------------------------------------------------
>
> On Thursday, July 6, 2023 at 11:52:51 AM CDT, Khem Raj <raj.khem@gmail.co=
m> wrote:
>
>
> On Thu, Jul 6, 2023 at 9:04=E2=80=AFAM Oosman Saeed <oosman3@yahoo.com> w=
rote:
> >
> > I think that is the problem, I don't know which wifi is used on the boa=
rd. How do I find out what wifi driver to load?
> >
>
> Perhaps there are clues in early kernel logs. Maybe check dmesg or serial=
 logs.
>
> >
> >
> > On Thursday, July 6, 2023 at 10:19:50 AM CDT, Khem Raj <raj.khem@gmail.=
com> wrote:
> >
> >
> > On Thu, Jul 6, 2023 at 8:06=E2=80=AFAM Oosman Saeed <oosman3@yahoo.com>=
 wrote:
> > >
> > > root@raspberrypi4-64:~# ifconfig -a
> > > eth0: flags=3D4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500
> > >        inet 192.168.7.8  netmask 255.255.255.0  broadcast 192.168.7.2=
55
> > >        ether dc:a6:32:e3:eb:fe  txqueuelen 1000  (Ethernet)
> > >        RX packets 962  bytes 117191 (114.4 KiB)
> > >        RX errors 0  dropped 0  overruns 0  frame 0
> > >        TX packets 1766  bytes 299578 (292.5 KiB)
> > >        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0
> > >
> > > lo: flags=3D73<UP,LOOPBACK,RUNNING>  mtu 65536
> > >        inet 127.0.0.1  netmask 255.0.0.0
> > >        inet6 ::1  prefixlen 128  scopeid 0x10<host>
> > >        loop  txqueuelen 1000  (Local Loopback)
> > >        RX packets 12567  bytes 780277 (761.9 KiB)
> > >        RX errors 0  dropped 0  overruns 0  frame 0
> > >        TX packets 12567  bytes 780277 (761.9 KiB)
> > >        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0
> > >
> > >
> > >
> >
> >
> >
> > OK in your kernel module list I dont see any kmods for wifi being loade=
d
> > so it might be that its not enabling them in rootfs for some reason ?
> > which wifi is used on your board ?
> >
> >
> > > On Thursday, July 6, 2023 at 10:03:16 AM CDT, Khem Raj <raj.khem@gmai=
l.com> wrote:
> > >
> > >
> > > what does ifconfig -a say
> > >
> > > On Thu, Jul 6, 2023 at 6:25=E2=80=AFAM oosman3 via lists.yoctoproject=
.org
> > > <oosman3=3Dyahoo.com@lists.yoctoproject.org> wrote:
> > > >
> > > > I am building my raspberrypi wic image using the layer meta-raspber=
rypi.
> > > >
> > > > I am using a raspiberrypi compute module 4 with wifi chip.
> > > >
> > > > I just can't seem to get the wlan0 device to appear when I type ifc=
onfig.
> > > >
> > > > =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> > > > root@raspberrypi4-64:~# ifconfig
> > > > eth0: flags=3D4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500
> > > >        inet 192.168.7.8  netmask 255.255.255.0  broadcast 192.168.7=
.255
> > > >        ether dc:a6:32:e3:eb:fe  txqueuelen 1000  (Ethernet)
> > > >        RX packets 407  bytes 62442 (60.9 KiB)
> > > >        RX errors 0  dropped 0  overruns 0  frame 0
> > > >        TX packets 567  bytes 94749 (92.5 KiB)
> > > >        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0
> > > >
> > > > lo: flags=3D73<UP,LOOPBACK,RUNNING>  mtu 65536
> > > >        inet 127.0.0.1  netmask 255.0.0.0
> > > >        inet6 ::1  prefixlen 128  scopeid 0x10<host>
> > > >        loop  txqueuelen 1000  (Local Loopback)
> > > >        RX packets 4047  bytes 252037 (246.1 KiB)
> > > >        RX errors 0  dropped 0  overruns 0  frame 0
> > > >        TX packets 4047  bytes 252037 (246.1 KiB)
> > > >        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0
> > > > =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D
> > > >
> > > >
> > > >
> > > > Here is a filtered output of my lsmod command
> > > >
> > > > =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D
> > > > root@raspberrypi4-64:~# lsmod
> > > > Module                  Size  Used by
> > > > 88XXau              2265088  0
> > > > cmac                  16384  3
> > > > algif_hash            16384  1
> > > > aes_arm64              16384  3
> > > > aes_generic            36864  1 aes_arm64
> > > > algif_skcipher        16384  1
> > > > af_alg                28672  6 algif_hash,algif_skcipher
> > > > bnep                  24576  2
> > > > 8021q                  32768  0
> > > > garp                  16384  1 8021q
> > > > stp                    16384  1 garp
> > > > llc                    16384  2 stp,garp
> > > > imx219                24576  0
> > > > mcp251x                24576  0
> > > > spidev                20480  0
> > > > can_dev                40960  1 mcp251x
> > > > hci_uart              45056  0
> > > > btbcm                  24576  1 hci_uart
> > > > v3d                    90112  1
> > > > bluetooth            585728  26 hci_uart,btbcm,bnep
> > > > i2c_mux_pinctrl        16384  0
> > > > gpu_sched              49152  1 v3d
> > > > snd_soc_simple_card    20480  0
> > > > snd_soc_simple_card_utils    28672  1 snd_soc_simple_card
> > > > drm_shmem_helper      24576  1 v3d
> > > > raspberrypi_hwmon      16384  0
> > > > i2c_mux                16384  1 i2c_mux_pinctrl
> > > > i2c_brcmstb            16384  0
> > > > bcm2835_unicam        53248  0
> > > > dwc2                  192512  0
> > > > roles                  20480  1 dwc2
> > > > v4l2_dv_timings        40960  1 bcm2835_unicam
> > > > v4l2_fwnode            24576  2 imx219,bcm2835_unicam
> > > > ecdh_generic          16384  2 bluetooth
> > > > v4l2_async            24576  3 v4l2_fwnode,imx219,bcm2835_unicam
> > > > ecc                    36864  1 ecdh_generic
> > > > libaes                16384  3 aes_arm64,bluetooth,aes_generic
> > > > spi_bcm2835            20480  0
> > > > snd_soc_bcm2835_i2s    20480  0
> > > > bcm2835_codec          49152  0
> > > > rpivid_hevc            49152  0
> > > > bcm2835_v4l2          45056  0
> > > > bcm2835_isp            28672  0
> > > > bcm2835_mmal_vchiq    36864  3 bcm2835_codec,bcm2835_v4l2,bcm2835_i=
sp
> > > > v4l2_mem2mem          40960  2 bcm2835_codec,rpivid_hevc
> > > > videobuf2_vmalloc      16384  1 bcm2835_v4l2
> > > > videobuf2_dma_contig    20480  4 bcm2835_codec,bcm2835_unicam,rpivi=
d_hevc,bcm2835_isp
> > > > videobuf2_memops      16384  2 videobuf2_vmalloc,videobuf2_dma_cont=
ig
> > > > videobuf2_v4l2        32768  6 bcm2835_codec,bcm2835_unicam,bcm2835=
_v4l2,rpivid_hevc,v4l2_mem2mem,bcm2835_isp
> > > > videobuf2_common      69632  10 bcm2835_codec,videobuf2_vmalloc,vid=
eobuf2_dma_contig,videobuf2_v4l2,bcm2835_unicam,bcm2835_v4l2,rpivid_hevc,v4=
l2_mem2mem,videobuf2_memops,bcm2835_isp
> > > > videodev              274432  10 v4l2_async,bcm2835_codec,imx219,vi=
deobuf2_v4l2,bcm2835_unicam,bcm2835_v4l2,videobuf2_common,rpivid_hevc,v4l2_=
mem2mem,bcm2835_isp
> > > > vc_sm_cma              32768  2 bcm2835_mmal_vchiq,bcm2835_isp
> > > > snd_bcm2835            28672  0
> > > > mc                    61440  10 v4l2_async,videodev,bcm2835_codec,i=
mx219,videobuf2_v4l2,bcm2835_unicam,videobuf2_common,rpivid_hevc,v4l2_mem2m=
em,bcm2835_isp
> > > > uio_pdrv_genirq        16384  0
> > > > nvmem_rmem            16384  0
> > > > uio                    24576  1 uio_pdrv_genirq
> > > > sch_fq_codel          20480  6
> > > > brcmutil              24576  0
> > > > cfg80211              929792  1 88XXau
> > > > rfkill                32768  4 bluetooth,cfg80211
> > > > fuse                  139264  1
> > > > ipv6                  552960  28
> > > >
> > > > =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D
> > > >
> > > > And here is my /boot/config.txt
> > > >
> > > > root@raspberrypi4-64:~# cat /boot/config.txt
> > > > ###################################################################=
#############
> > > > ##  Raspberry Pi Configuration Settings
> > > > ##
> > > > ##  Revision 16, 2013/06/22
> > > > ##
> > > > ##  Details taken from the eLinux wiki
> > > > ##  For up-to-date information please refer to wiki page.
> > > > ##
> > > > ##  Wiki Location : http://elinux.org/RPiconfig
> > > > ##
> > > > ##
> > > > ##  Description:
> > > > ##    Details of each setting are described with each section that =
begins with
> > > > ##    a double hashed comment ('##')
> > > > ##    It is up to the user to remove the single hashed comment ('#'=
) from each
> > > > ##    option they want to enable, and to set the specific value of =
that option.
> > > > ##
> > > > ##  Overclock settings will be disabled at runtime if the SoC reach=
es temp_limit
> > > > ##
> > > > ###################################################################=
#############
> > > >
> > > > ###################################################################=
#############
> > > > ##  Standard Definition Video Settings
> > > > ###################################################################=
#############
> > > >
> > > > ## sdtv_mode
> > > > ##    defines the TV standard for composite output
> > > > ##
> > > > ##    Value    Description
> > > > ##    -------------------------------------------------------------=
------------
> > > > ##    0        Normal NTSC (Default)
> > > > ##    1        Japanese version of NTSC - no pedestal
> > > > ##    2        Normal PAL
> > > > ##    3        Brazilian version of PAL - 525/60 rather than 625/50=
, different
> > > > ##              subcarrier
> > > > ##
> > > > #sdtv_mode=3D0
> > > >
> > > > ## sdtv_aspect
> > > > ##    defines the aspect ratio for composite output
> > > > ##
> > > > ##    Value    Description
> > > > ##    -------------------------------------------------------------=
------------
> > > > ##    1        4:3 (Default)
> > > > ##    2        14:9
> > > > ##    3        16:9
> > > > ##
> > > > #sdtv_aspect=3D1
> > > >
> > > > ## sdtv_disable_colourburst
> > > > ##    Disables colour burst on composite output. The picture will b=
e
> > > > ##    monochrome, but possibly sharper
> > > > ##
> > > > ##    Value    Description
> > > > ##    -------------------------------------------------------------=
------------
> > > > ##    0        Colour burst is enabled (Default)
> > > > ##    1        Colour burst is disabled
> > > > ##
> > > > #sdtv_disable_colourburst=3D1
> > > >
> > > > ###################################################################=
#############
> > > > ##  High Definition Video Settings
> > > > ###################################################################=
#############
> > > >
> > > > ## hdmi_safe
> > > > ##    Use "safe mode" settings to try to boot with maximum hdmi com=
patibility.
> > > > ##
> > > > ##    Value    Description
> > > > ##    -------------------------------------------------------------=
------------
> > > > ##    0        Disabled (Default)
> > > > ##    1        Enabled (this does: hdmi_force_hotplug=3D1,
> > > > ##                                  hdmi_ignore_edid=3D0xa5000080,
> > > > ##                                  config_hdmi_boost=3D4, hdmi_gro=
up=3D2,
> > > > ##                                  hdmi_mode=3D4, disable_overscan=
=3D0,
> > > > ##                                  overscan_left=3D24, overscan_ri=
ght=3D24,
> > > > ##                                  overscan_top=3D24, overscan_bot=
tom=3D24)
> > > > ##
> > > > #hdmi_safe=3D1
> > > >
> > > > ## hdmi_force_hotplug
> > > > ##    Pretends HDMI hotplug signal is asserted so it appears a HDMI=
 display
> > > > ##    is attached
> > > > ##
> > > > ##    Value    Description
> > > > ##    -------------------------------------------------------------=
------------
> > > > ##    0        Disabled (Default)
> > > > ##    1        Use HDMI mode even if no HDMI monitor is detected
> > > > ##
> > > > #hdmi_force_hotplug=3D1
> > > >
> > > > ## hdmi_ignore_hotplug
> > > > ##    Pretends HDMI hotplug signal is not asserted so it appears a =
HDMI
> > > > ##    display is not attached
> > > > ##
> > > > ##    Value    Description
> > > > ##    -------------------------------------------------------------=
------------
> > > > ##    0        Disabled (Default)
> > > > ##    1        Use composite mode even if HDMI monitor is detected
> > > > ##
> > > > #hdmi_ignore_hotplug=3D1
> > > >
> > > > ## hdmi_drive
> > > > ##    chooses between HDMI and DVI modes
> > > > ##
> > > > ##    Value    Description
> > > > ##    -------------------------------------------------------------=
------------
> > > > ##    1        Normal DVI mode (No sound)
> > > > ##    2        Normal HDMI mode (Sound will be sent if supported an=
d enabled)
> > > > ##
> > > > #hdmi_drive=3D2
> > > >
> > > > ## hdmi_ignore_edid
> > > > ##    Enables the ignoring of EDID/display data
> > > > ##
> > > > #hdmi_ignore_edid=3D0xa5000080
> > > >
> > > > ## hdmi_edid_file
> > > > ##    Read the EDID data from the edid.dat file instead of from the=
 attached
> > > > ##    device
> > > > ##
> > > > ##    Value    Description
> > > > ##    -------------------------------------------------------------=
------------
> > > > ##    0        Read EDID data from attached device (Default)
> > > > ##    1        Read EDID data from edid.txt file
> > > > ##
> > > > #hdmi_edid_file=3D1
> > > >
> > > > ## hdmi_ignore_edid_audio
> > > > ##    Pretends all audio formats are unsupported by display. This m=
eans ALSA
> > > > ##    will default to analogue.
> > > > ##
> > > > ##    Value    Description
> > > > ##    -------------------------------------------------------------=
------------
> > > > ##    0        Use EDID provided values (Default)
> > > > ##    1        Pretend all audio formats are unsupported
> > > > ##
> > > > #hdmi_ignore_edid_audio=3D1
> > > >
> > > > ## hdmi_force_edid_audio
> > > > ##    Pretends all audio formats are supported by display, allowing
> > > > ##    passthrough of DTS/AC3 even when not reported as supported.
> > > > ##
> > > > ##    Value    Description
> > > > ##    -------------------------------------------------------------=
------------
> > > > ##    0        Use EDID provided values (Default)
> > > > ##    1        Pretend all audio formats are supported
> > > > ##
> > > > #hdmi_force_edid_audio=3D1
> > > >
> > > > ## hdmi_force_edid_3d
> > > > ##    Pretends all CEA modes support 3D even when edid doesn't indi=
cate
> > > > ##    support for them.
> > > > ##
> > > > ##    Value    Description
> > > > ##    -------------------------------------------------------------=
------------
> > > > ##    0        Use EDID provided values (Default)
> > > > ##    1        Pretend 3D mode is supported
> > > > ##
> > > > #hdmi_force_edid_3d=3D1
> > > >
> > > > ## avoid_edid_fuzzy_match
> > > > ##    Avoid fuzzy matching of modes described in edid.
> > > > ##
> > > > ##    Value    Description
> > > > ##    -------------------------------------------------------------=
------------
> > > > ##    0        Use fuzzy matching (Default)
> > > > ##    1        Avoid fuzzy matching
> > > > ##
> > > > #avoid_edid_fuzzy_match=3D1
> > > >
> > > > ## hdmi_pixel_encoding
> > > > ##    Force the pixel encoding mode.
> > > > ##    By default it will use the mode requested from edid so should=
n't
> > > > ##    need changing.
> > > > ##
> > > > ##    Value    Description
> > > > ##    -------------------------------------------------------------=
------------
> > > > ##    0        Use EDID provided values (Default)
> > > > ##    1        RGB limited  (16-235)
> > > > ##    2        RGB full      ( 0-255)
> > > > ##    3        YCbCr limited (16-235)
> > > > ##    4        YCbCr limited ( 0-255)
> > > > ##
> > > > #hdmi_pixel_encoding=3D1
> > > >
> > > > ## hdmi_group
> > > > ##    Defines the HDMI type
> > > > ##
> > > > ##    Value    Description
> > > > ##    -------------------------------------------------------------=
------------
> > > > ##    0        Use the preferred group reported by the edid (Defaul=
t)
> > > > ##    1        CEA
> > > > ##    2        DMT
> > > > ##
> > > > #hdmi_group=3D1
> > > >
> > > > ## hdmi_mode
> > > > ##    defines screen resolution in CEA or DMT format
> > > > ##
> > > > ##    H means 16:9 variant (of a normally 4:3 mode).
> > > > ##    2x means pixel doubled (i.e. higher clock rate, with each pix=
el repeated
> > > > ##                                  twice)
> > > > ##    4x means pixel quadrupled (i.e. higher clock rate, with each =
pixel
> > > > ##                                    repeated four times)
> > > > ##    reduced blanking means fewer bytes are used for blanking with=
in the data
> > > > ##                      stream (i.e. lower clock rate, with fewer w=
asted bytes)
> > > > ##
> > > > ##    Value    hdmi_group=3DCEA                  hdmi_group=3DDMT
> > > > ##    -------------------------------------------------------------=
------------
> > > > ##    1        VGA                            640x350  85Hz
> > > > ##    2        480p  60Hz                      640x400  85Hz
> > > > ##    3        480p  60Hz  H                  720x400  85Hz
> > > > ##    4        720p  60Hz                      640x480  60Hz
> > > > ##    5        1080i 60Hz                      640x480  72Hz
> > > > ##    6        480i  60Hz                      640x480  75Hz
> > > > ##    7        480i  60Hz  H                  640x480  85Hz
> > > > ##    8        240p  60Hz                      800x600  56Hz
> > > > ##    9        240p  60Hz  H                  800x600  60Hz
> > > > ##    10      480i  60Hz  4x                  800x600  72Hz
> > > > ##    11      480i  60Hz  4x H                800x600  75Hz
> > > > ##    12      240p  60Hz  4x                  800x600  85Hz
> > > > ##    13      240p  60Hz  4x H                800x600  120Hz
> > > > ##    14      480p  60Hz  2x                  848x480  60Hz
> > > > ##    15      480p  60Hz  2x H                1024x768  43Hz  DO NO=
T USE
> > > > ##    16      1080p 60Hz                      1024x768  60Hz
> > > > ##    17      576p  50Hz                      1024x768  70Hz
> > > > ##    18      576p  50Hz  H                  1024x768  75Hz
> > > > ##    19      720p  50Hz                      1024x768  85Hz
> > > > ##    20      1080i 50Hz                      1024x768  120Hz
> > > > ##    21      576i  50Hz                      1152x864  75Hz
> > > > ##    22      576i  50Hz  H                  1280x768        reduce=
d blanking
> > > > ##    23      288p  50Hz                      1280x768  60Hz
> > > > ##    24      288p  50Hz  H                  1280x768  75Hz
> > > > ##    25      576i  50Hz  4x                  1280x768  85Hz
> > > > ##    26      576i  50Hz  4x H                1280x768  120Hz reduc=
ed blanking
> > > > ##    27      288p  50Hz  4x                  1280x800        reduc=
ed blanking
> > > > ##    28      288p  50Hz  4x H                1280x800  60Hz
> > > > ##    29      576p  50Hz  2x                  1280x800  75Hz
> > > > ##    30      576p  50Hz  2x H                1280x800  85Hz
> > > > ##    31      1080p 50Hz                      1280x800  120Hz reduc=
ed blanking
> > > > ##    32      1080p 24Hz                      1280x960  60Hz
> > > > ##    33      1080p 25Hz                      1280x960  85Hz
> > > > ##    34      1080p 30Hz                      1280x960  120Hz reduc=
ed blanking
> > > > ##    35      480p  60Hz  4x                  1280x1024 60Hz
> > > > ##    36      480p  60Hz  4x H                1280x1024 75Hz
> > > > ##    37      576p  50Hz  4x                  1280x1024 85Hz
> > > > ##    38      576p  50Hz  4x H                1280x1024 120Hz reduc=
ed blanking
> > > > ##    39      1080i 50Hz  reduced blanking    1360x768  60Hz
> > > > ##    40      1080i 100Hz                    1360x768  120Hz reduce=
d blanking
> > > > ##    41      720p  100Hz                    1400x1050      reduced=
 blanking
> > > > ##    42      576p  100Hz                    1400x1050 60Hz
> > > > ##    43      576p  100Hz H                  1400x1050 75Hz
> > > > ##    44      576i  100Hz                    1400x1050 85Hz
> > > > ##    45      576i  100Hz H                  1400x1050 120Hz reduce=
d blanking
> > > > ##    46      1080i 120Hz                    1440x900        reduce=
d blanking
> > > > ##    47      720p  120Hz                    1440x900  60Hz
> > > > ##    48      480p  120Hz                    1440x900  75Hz
> > > > ##    49      480p  120Hz H                  1440x900  85Hz
> > > > ##    50      480i  120Hz                    1440x900  120Hz reduce=
d blanking
> > > > ##    51      480i  120Hz H                  1600x1200 60Hz
> > > > ##    52      576p  200Hz                    1600x1200 65Hz
> > > > ##    53      576p  200Hz H                  1600x1200 70Hz
> > > > ##    54      576i  200Hz                    1600x1200 75Hz
> > > > ##    55      576i  200Hz H                  1600x1200 85Hz
> > > > ##    56      480p  240Hz                    1600x1200 120Hz reduce=
d blanking
> > > > ##    57      480p  240Hz H                  1680x1050      reduced=
 blanking
> > > > ##    58      480i  240Hz                    1680x1050 60Hz
> > > > ##    59      480i  240Hz H                  1680x1050 75Hz
> > > > ##    60                                      1680x1050 85Hz
> > > > ##    61                                      1680x1050 120Hz reduc=
ed blanking
> > > > ##    62                                      1792x1344 60Hz
> > > > ##    63                                      1792x1344 75Hz
> > > > ##    64                                      1792x1344 120Hz reduc=
ed blanking
> > > > ##    65                                      1856x1392 60Hz
> > > > ##    66                                      1856x1392 75Hz
> > > > ##    67                                      1856x1392 120Hz reduc=
ed blanking
> > > > ##    68                                      1920x1200      reduce=
d blanking
> > > > ##    69                                      1920x1200 60Hz
> > > > ##    70                                      1920x1200 75Hz
> > > > ##    71                                      1920x1200 85Hz
> > > > ##    72                                      1920x1200 120Hz reduc=
ed blanking
> > > > ##    73                                      1920x1440 60Hz
> > > > ##    74                                      1920x1440 75Hz
> > > > ##    75                                      1920x1440 120Hz reduc=
ed blanking
> > > > ##    76                                      2560x1600      reduce=
d blanking
> > > > ##    77                                      2560x1600 60Hz
> > > > ##    78                                      2560x1600 75Hz
> > > > ##    79                                      2560x1600 85Hz
> > > > ##    80                                      2560x1600 120Hz reduc=
ed blanking
> > > > ##    81                                      1366x768  60Hz
> > > > ##    82                                      1080p    60Hz
> > > > ##    83                                      1600x900        reduc=
ed blanking
> > > > ##    84                                      2048x1152      reduce=
d blanking
> > > > ##    85                                      720p      60Hz
> > > > ##    86                                      1366x768        reduc=
ed blanking
> > > > ##
> > > > #hdmi_mode=3D1
> > > >
> > > > ## config_hdmi_boost
> > > > ##    configure the signal strength of the HDMI interface.
> > > > ##
> > > > ##    Value    Description
> > > > ##    -------------------------------------------------------------=
------------
> > > > ##    0        (Default)
> > > > ##    1
> > > > ##    2
> > > > ##    3
> > > > ##    4        Try if you have interference issues with HDMI
> > > > ##    5
> > > > ##    6
> > > > ##    7        Maximum
> > > > ##
> > > > #config_hdmi_boost=3D0
> > > >
> > > > ## hdmi_ignore_cec_init
> > > > ##    Doesn't sent initial active source message.  Avoids bringing
> > > > ##    (CEC enabled) TV out of standby and channel switch when reboo=
ting.
> > > > ##
> > > > ##    Value    Description
> > > > ##    -------------------------------------------------------------=
------------
> > > > ##    0        Normal behaviour (Default)
> > > > ##    1        Doesn't sent initial active source message
> > > > ##
> > > > #hdmi_ignore_cec_init=3D1
> > > >
> > > > ## hdmi_ignore_cec
> > > > ##    Pretends CEC is not supported at all by TV.
> > > > ##    No CEC functions will be supported.
> > > > ##
> > > > ##    Value    Description
> > > > ##    -------------------------------------------------------------=
------------
> > > > ##    0        Normal behaviour (Default)
> > > > ##    1        Pretend CEC is not supported by TV
> > > > ##
> > > > #hdmi_ignore_cec=3D1
> > > >
> > > > ###################################################################=
#############
> > > > ##  Overscan Video Settings
> > > > ###################################################################=
#############
> > > >
> > > > ## overscan_left
> > > > ##    Number of pixels to skip on left
> > > > ##
> > > > #overscan_left=3D0
> > > >
> > > > ## overscan_right
> > > > ##    Number of pixels to skip on right
> > > > ##
> > > > #overscan_right=3D0
> > > >
> > > > ## overscan_top
> > > > ##    Number of pixels to skip on top
> > > > ##
> > > > #overscan_top=3D0
> > > >
> > > > ## overscan_bottom
> > > > ##    Number of pixels to skip on bottom
> > > > ##
> > > > #overscan_bottom=3D0
> > > >
> > > > ## disable_overscan
> > > > ##    Set to 1 to disable overscan
> > > > ##
> > > > ##    Value    Description
> > > > ##    -------------------------------------------------------------=
------------
> > > > ##    0        Overscan Enabled (Default)
> > > > ##    1        Overscan Disabled
> > > > ##
> > > > #disable_overscan=3D1
> > > >
> > > > ###################################################################=
#############
> > > > ##  Framebuffer Video Settings
> > > > ###################################################################=
#############
> > > >
> > > > ## framebuffer_width
> > > > ##    Console framebuffer width in pixels. Default is display width=
 minus
> > > > ##    overscan.
> > > > ##
> > > > #framebuffer_width=3D0
> > > >
> > > > ## framebuffer_height
> > > > ##    Console framebuffer height in pixels. Default is display heig=
ht minus
> > > > ##    overscan.
> > > > ##
> > > > #framebuffer_height=3D0
> > > >
> > > > ## framebuffer_depth
> > > > ##    Console framebuffer depth in bits per pixel.
> > > > ##
> > > > ##    Value    Description
> > > > ##    -------------------------------------------------------------=
------------
> > > > ##    8        Valid, but default RGB palette makes an unreadable s=
creen
> > > > ##    16      (Default)
> > > > ##    24      Looks better but has corruption issues as of 2012/06/=
15
> > > > ##    32      Has no corruption issues but needs framebuffer_ignore=
_alpha=3D1
> > > > ##              and shows the wrong colors as of 2012/06/15
> > > > ##
> > > > #framebuffer_depth=3D16
> > > >
> > > > ## framebuffer_ignore_alpha
> > > > ##    Set to 1 to disable alpha channel. Helps with 32bit.
> > > > ##
> > > > ##    Value    Description
> > > > ##    -------------------------------------------------------------=
------------
> > > > ##    0        Enable Alpha Channel (Default)
> > > > ##    1        Disable Alpha Channel
> > > > ##
> > > > #framebuffer_ignore_alpha=3D0
> > > >
> > > > ###################################################################=
#############
> > > > ##  General Video Settings
> > > > ###################################################################=
#############
> > > >
> > > > ## display_rotate
> > > > ##    Rotate the display clockwise or flip the display.
> > > > ##    The 90 and 270 degrees rotation options require additional me=
mory on GPU,
> > > > ##    so won't work with the 16M GPU split.
> > > > ##
> > > > ##    Value    Description
> > > > ##    -------------------------------------------------------------=
------------
> > > > ##    0        0 degrees (Default)
> > > > ##    1        90 degrees
> > > > ##    2        180 degrees
> > > > ##    3        270 degrees
> > > > ##    0x10000  Horizontal flip
> > > > ##    0x20000  Vertical flip
> > > > ##
> > > > #display_rotate=3D0
> > > >
> > > > ## dispmanx_offline
> > > > ##    Set to "1" to enable offline compositing
> > > > ##
> > > > ##    Default 0
> > > > ##
> > > > #dispmanx_offline=3D0
> > > >
> > > > ###################################################################=
#############
> > > > ##  Licensed Codecs
> > > > ##
> > > > ##  Hardware decoding of additional codecs can be enabled by purcha=
sing a
> > > > ##  license that is locked to the CPU serial number of your Raspber=
ry Pi.
> > > > ##
> > > > ##  Up to 8 licenses per CODEC can be specified as a comma seperate=
d list.
> > > > ##
> > > > ###################################################################=
#############
> > > >
> > > > ## decode_MPG2
> > > > ##    License key to allow hardware MPEG-2 decoding.
> > > > ##
> > > > #decode_MPG2=3D0x12345678
> > > >
> > > > ## decode_WVC1
> > > > ##    License key to allow hardware VC-1 decoding.
> > > > ##
> > > > #decode_WVC1=3D0x12345678
> > > >
> > > > ###################################################################=
#############
> > > > ##  Camera Settings
> > > > ###################################################################=
#############
> > > >
> > > > ## start_x
> > > > ##    Set to "1" to enable the camera module.
> > > > ##
> > > > ##    Enabling the camera requires gpu_mem option to be specified w=
ith a value
> > > > ##    of at least 128.
> > > > ##
> > > > ##    Default 0
> > > > ##
> > > > start_x=3D1
> > > >
> > > > ## disable_camera_led
> > > > ##    Turn off the red camera led when recording video or taking a =
still
> > > > ##    picture.
> > > > ##
> > > > ##    Value    Description
> > > > ##    -------------------------------------------------------------=
------------
> > > > ##    0        LED enabled (Default)
> > > > ##    1        LED disabled
> > > > ##
> > > > #disable_camera_led=3D1
> > > >
> > > > ###################################################################=
#############
> > > > ##  Test Settings
> > > > ###################################################################=
#############
> > > >
> > > > ## test_mode
> > > > ##    Enable test sound/image during boot for manufacturing test.
> > > > ##
> > > > ##    Value    Description
> > > > ##    -------------------------------------------------------------=
------------
> > > > ##    0        Disable Test Mod (Default)
> > > > ##    1        Enable Test Mode
> > > > ##
> > > > #test_mode=3D0
> > > >
> > > > ###################################################################=
#############
> > > > ##  Memory Settings
> > > > ###################################################################=
#############
> > > >
> > > > ## disable_l2cache
> > > > ##    Disable arm access to GPU's L2 cache. Needs corresponding L2 =
disabled
> > > > ##    kernel.
> > > > ##
> > > > ##    Value    Description
> > > > ##    -------------------------------------------------------------=
------------
> > > > ##    0        Enable L2 Cache (Default)
> > > > ##    1        Disable L2 cache
> > > > ##
> > > > #disable_l2cache=3D0
> > > >
> > > > ## gpu_mem
> > > > ##    GPU memory allocation in MB for all board revisions.
> > > > ##
> > > > ##    Default 64
> > > > ##
> > > > #gpu_mem=3D128
> > > >
> > > > ## gpu_mem_256
> > > > ##    GPU memory allocation in MB for 256MB board revision.
> > > > ##    This option overrides gpu_mem.
> > > > ##
> > > > #gpu_mem_256=3D192
> > > >
> > > > ## gpu_mem_512
> > > > ##    GPU memory allocation in MB for 512MB board revision.
> > > > ##    This option overrides gpu_mem.
> > > > ##
> > > > #gpu_mem_512=3D448
> > > >
> > > > ## gpu_mem_1024
> > > > ##    GPU memory allocation in MB for 1024MB board revision.
> > > > ##    This option overrides gpu_mem.
> > > > ##
> > > > #gpu_mem_1024=3D944
> > > >
> > > > ## disable_pvt
> > > > ##    Disable adjusting the refresh rate of RAM every 500ms
> > > > ##    (measuring RAM temparature).
> > > > ##
> > > > #disable_pvt=3D1
> > > >
> > > > ###################################################################=
#############
> > > > ##  CMA - Dynamic Memory Split
> > > > ##
> > > > ##  CMA enables dynamic management of the ARM and GPU memory split =
at runtime.
> > > > ##
> > > > ##  The following options need to be in cmdline.txt for CMA to work=
:
> > > > ##    coherent_pool=3D6M smsc95xx.turbo_mode=3DN
> > > > ##
> > > > ###################################################################=
#############
> > > >
> > > > ## cma_lwm
> > > > ##    When GPU has less than cma_lwm (low water mark) memory availa=
ble it
> > > > ##    will request some from ARM.
> > > > ##
> > > > #cma_lwm=3D16
> > > >
> > > > ## cma_hwm
> > > > ##    When GPU has more than cma_hwm (high water mark) memory avail=
able it
> > > > ##    will release some to ARM.
> > > > ##
> > > > #cma_hwm=3D32
> > > >
> > > > ###################################################################=
#############
> > > > ##  Boot Option Settings
> > > > ###################################################################=
#############
> > > >
> > > > ## disable_commandline_tags
> > > > ##    Stop start.elf from filling in ATAGS (memory from 0x100) befo=
re
> > > > ##    launching kernel
> > > > ##
> > > > #disable_commandline_tags=3D0
> > > >
> > > > ## cmdline (string)
> > > > ##    Command line parameters. Can be used instead of cmdline.txt f=
ile
> > > > ##
> > > > #cmdline=3D""
> > > >
> > > > ## kernel (string)
> > > > ##    Alternative name to use when loading kernel.
> > > > ##
> > > > #kernel=3D""
> > > >
> > > > ## kernel_address
> > > > ##    Address to load kernel.img file at
> > > > ##
> > > > #kernel_address=3D0x00000000
> > > >
> > > > ## kernel_old
> > > > ##    Support loading old kernels
> > > > ##
> > > > ##    Value    Description
> > > > ##    -------------------------------------------------------------=
------------
> > > > ##    0        Disabled (Default)
> > > > ##    1        Load kernel at address 0x00000000
> > > > ##
> > > > #kernel_old=3D1
> > > >
> > > > ## ramfsfile (string)
> > > > ##    ramfs file to load
> > > > ##
> > > > #ramfsfile=3D""
> > > >
> > > > ## ramfsaddr
> > > > ##    Address to load ramfs file at
> > > > ##
> > > > #ramfsaddr=3D0x00000000
> > > >
> > > > ## initramfs (string address)
> > > > ##    ramfs file and address to load it at (it's like ramfsfile+ram=
fsaddr in
> > > > ##    one option).
> > > > ##
> > > > ##    NOTE: this option uses different syntax than all other option=
s - you
> > > > ##          should not use "=3D" character here.
> > > > ##
> > > > #initramfs initramf.gz 0x00800000
> > > >
> > > > ## device_tree_address
> > > > ##    Address to load device_tree at
> > > > ##
> > > > #device_tree_address=3D0x00000000
> > > >
> > > > ## init_uart_baud
> > > > ##    Initial uart baud rate.
> > > > ##
> > > > ##    Default 115200
> > > > ##
> > > > #init_uart_baud=3D115200
> > > >
> > > > ## init_uart_clock
> > > > ##    Initial uart clock.
> > > > ##
> > > > ##    Default 3000000 (3MHz)
> > > > ##
> > > > #init_uart_clock=3D3000000
> > > >
> > > > ## init_emmc_clock
> > > > ##    Initial emmc clock, increasing this can speedup your SD-card.
> > > > ##
> > > > ##    Default 100000000 (100mhz)
> > > > ##
> > > > #init_emmc_clock=3D100000000
> > > >
> > > > ## boot_delay
> > > > ##    Wait for a given number of seconds in start.elf before loadin=
g
> > > > ##    kernel.img.
> > > > ##
> > > > ##    delay =3D (1000 * boot_delay) + boot_delay_ms
> > > > ##
> > > > ##    Default 1
> > > > ##
> > > > #boot_delay=3D0
> > > >
> > > > ## boot_delay_ms
> > > > ##    Wait for a given number of milliseconds in start.elf before l=
oading
> > > > ##    kernel.img.
> > > > ##
> > > > ##    delay =3D (1000 * boot_delay) + boot_delay_ms
> > > > ##
> > > > ##    Default 0
> > > > ##
> > > > #boot_delay_ms=3D0
> > > >
> > > > ## avoid_safe_mode
> > > > ##    Adding a jumper between pins 5 & 6 of P1 enables a recovery S=
afe Mode.
> > > > ##    If pins 5 & 6 are used for connecting to external devices (e.=
g. GPIO),
> > > > ##    then this setting can be used to ensure Safe Mode is not trig=
gered.
> > > > ##
> > > > ##    Value    Description
> > > > ##    -------------------------------------------------------------=
------------
> > > > ##    0        Respect Safe Mode input (Default)
> > > > ##    1        Ignore Safe Mode input
> > > > ##
> > > > #avoid_safe_mode=3D1
> > > >
> > > > ## disable_splash
> > > > ##    Avoids the rainbow splash screen on boot.
> > > > ##
> > > > ##    Value    Description
> > > > ##    -------------------------------------------------------------=
------------
> > > > ##    0        Splash screen enabled (Default)
> > > > ##    1        Splash screen disabled
> > > > ##
> > > > #disable_splash=3D1
> > > >
> > > > ###################################################################=
#############
> > > > ##  Overclocking Settings
> > > > ##
> > > > ##  ARM, SDRAM and GPU each have their own PLLs and can have unrela=
ted
> > > > ##  frequencies.
> > > > ##
> > > > ##  The GPU core, h264, v3d and isp share a PLL, so need to have re=
lated
> > > > ##  frequencies.
> > > > ##  pll_freq =3D floor(2400 / (2 * core_freq)) * (2 * core_freq)
> > > > ##  gpu_freq =3D pll_freq / [even number]
> > > > ##
> > > > ##  The effective gpu_freq is automatically rounded to nearest even=
 integer, so
> > > > ##  asking for core_freq =3D 500 and gpu_freq =3D 300 will result i=
n divisor of
> > > > ##  2000/300 =3D 6.666 =3D> 6 and so 333.33MHz.
> > > > ##
> > > > ##
> > > > ##  Standard Profiles:
> > > > ##                  arm_freq    core_freq    sdram_freq    over_vol=
tage
> > > > ##    -------------------------------------------------------------=
------------
> > > > ##    None        700        250          400          0
> > > > ##    Modest      800        300          400          0
> > > > ##    Medium      900        333          450          2
> > > > ##    High        950        450          450          6
> > > > ##    Turbo        1000        500          500          6
> > > > ##
> > > > ###################################################################=
#############
> > > >
> > > > ## force_turbo
> > > > ##    Control the kernel "ondemand" governor. It has no effect if n=
o overclock
> > > > ##    settings are specified.
> > > > ##    May set warrany bit.
> > > > ##
> > > > ##    Value    Description
> > > > ##    -------------------------------------------------------------=
------------
> > > > ##    0        Enable dynamic clocks and voltage for the ARM core, =
GPU core and
> > > > ##              SDRAM (Default).
> > > > ##              Overclocking of h264_freq, v3d_freq and isp_freq is=
 ignored.
> > > > ##    1        Disable dynamic clocks and voltage for the ARM core,=
 GPU core
> > > > ##              and SDRAM.
> > > > ##              Overclocking of h264_freq, v3d_freq and isp_freq is=
 allowed.
> > > > ##
> > > > #force_turbo=3D0
> > > >
> > > > ## initial_turbo
> > > > ##    Enables turbo mode from boot for the given value in seconds (=
up to 60)
> > > > ##    or until cpufreq sets a frequency. Can help with sdcard corru=
ption if
> > > > ##    overclocked.
> > > > ##
> > > > ##    Default 0
> > > > ##
> > > > #initial_turbo=3D0
> > > >
> > > > ## temp_limit
> > > > ##    Overheat protection. Sets clocks and voltages to default when=
 the SoC
> > > > ##    reaches this Celsius value.
> > > > ##    Setting this higher than default voids warranty.
> > > > ##
> > > > ##    Default 85
> > > > ##
> > > > #temp_limit=3D85
> > > >
> > > > ## arm_freq
> > > > ##    Frequency of ARM in MHz.
> > > > ##
> > > > ##    Default 700.
> > > > ##
> > > > #arm_freq=3D700
> > > >
> > > > ## arm_freq_min
> > > > ##    Minimum frequency of ARM in MHz (used for dynamic clocking).
> > > > ##
> > > > ##    Default 700.
> > > > ##
> > > > #arm_freq_min=3D700
> > > >
> > > > ## gpu_freq
> > > > ##    Sets core_freq, h264_freq, isp_freq, v3d_freq together.
> > > > ##
> > > > ##    Default 250.
> > > > ##
> > > > #gpu_freq=3D250
> > > >
> > > > ## core_freq
> > > > ##    Frequency of GPU processor core in MHz. It has an impact on A=
RM
> > > > ##    performance since it drives L2 cache.
> > > > ##
> > > > ##    Default 250.
> > > > ##
> > > > #core_freq=3D250
> > > >
> > > > ## core_freq_min
> > > > ##    Minimum frequency of GPU processor core in MHz (used for dyna=
mic
> > > > ##    clocking). It has an impact on ARM performance since it drive=
s L2 cache.
> > > > ##
> > > > ##    Default 250.
> > > > ##
> > > > #core_freq_min=3D250
> > > >
> > > > ## h264_freq
> > > > ##    Frequency of hardware video block in MHz.
> > > > ##
> > > > ##    Default 250.
> > > > ##
> > > > #h264_freq=3D250
> > > >
> > > > ## isp_freq
> > > > ##    Frequency of image sensor pipeline block in MHz.
> > > > ##
> > > > ##    Default 250.
> > > > ##
> > > > #isp_freq=3D250
> > > >
> > > > ## v3d_freq
> > > > ##    Frequency of 3D block in MHz.
> > > > ##
> > > > ##    Default 250.
> > > > ##
> > > > #v3d_freq=3D250
> > > >
> > > > ## sdram_freq
> > > > ##    Frequency of SDRAM in MHz.
> > > > ##
> > > > ##    Default 400.
> > > > ##
> > > > #sdram_freq=3D400
> > > >
> > > > ## sdram_freq_min
> > > > ##    Minimum frequency of SDRAM in MHz (used for dynamic clocking)=
.
> > > > ##
> > > > ##    Default 400.
> > > > ##
> > > > #sdram_freq_min=3D400
> > > >
> > > > ## avoid_pwm_pll
> > > > ##    Don't dedicate a pll to PWM audio. This will reduce analogue =
audio
> > > > ##    quality slightly. The spare PLL allows the core_freq to be se=
t
> > > > ##    independently from the rest of the gpu allowing more control =
over
> > > > ##    overclocking.
> > > > ##
> > > > ##    Value    Description
> > > > ##    -------------------------------------------------------------=
------------
> > > > ##    0        Linked core_freq (Default)
> > > > ##    1        Unlinked core_freq
> > > > ##
> > > > #avoid_pwm_pll=3D1
> > > >
> > > > ###################################################################=
#############
> > > > ##  Voltage Settings
> > > > ###################################################################=
#############
> > > >
> > > > ## current_limit_override
> > > > ##    Disables SMPS current limit protection. Can help if you are c=
urrently
> > > > ##    hitting a reboot failure when overclocking too high.
> > > > ##    May set warrany bit.
> > > > ##
> > > > #current_limit_override=3D0x5A000020
> > > >
> > > > ## over_voltage
> > > > ##    ARM/GPU core voltage adjust.
> > > > ##    May set warrany bit.
> > > > ##
> > > > ##    Value    Description
> > > > ##    -------------------------------------------------------------=
------------
> > > > ##    -16      0.8  V
> > > > ##    -15      0.825 V
> > > > ##    -14      0.85  V
> > > > ##    -13      0.875 V
> > > > ##    -12      0.9  V
> > > > ##    -11      0.925 V
> > > > ##    -10      0.95  V
> > > > ##    -9      0.975 V
> > > > ##    -8      1.0  V
> > > > ##    -7      1.025 V
> > > > ##    -6      1.05  V
> > > > ##    -5      1.075 V
> > > > ##    -4      1.1  V
> > > > ##    -3      1.125 V
> > > > ##    -2      1.15  V
> > > > ##    -1      1.175 V
> > > > ##    0        1.2  V (Default)
> > > > ##    1        1.225 V
> > > > ##    2        1.25  V
> > > > ##    3        1.275 V
> > > > ##    4        1.3  V
> > > > ##    5        1.325 V
> > > > ##    6        1.35  V
> > > > ##    7        1.375 V (requires force_turbo=3D1 or current_limit_o=
verride)
> > > > ##    8        1.4  V (requires force_turbo=3D1 or current_limit_ov=
erride)
> > > > ##
> > > > #over_voltage=3D0
> > > >
> > > > ## over_voltage_min
> > > > ##    Minimum ARM/GPU core voltage adjust (used for dynamic clockin=
g).
> > > > ##
> > > > ##    Value    Description
> > > > ##    -------------------------------------------------------------=
------------
> > > > ##    -16      0.8  V
> > > > ##    -15      0.825 V
> > > > ##    -14      0.85  V
> > > > ##    -13      0.875 V
> > > > ##    -12      0.9  V
> > > > ##    -11      0.925 V
> > > > ##    -10      0.95  V
> > > > ##    -9      0.975 V
> > > > ##    -8      1.0  V
> > > > ##    -7      1.025 V
> > > > ##    -6      1.05  V
> > > > ##    -5      1.075 V
> > > > ##    -4      1.1  V
> > > > ##    -3      1.125 V
> > > > ##    -2      1.15  V
> > > > ##    -1      1.175 V
> > > > ##    0        1.2  V (Default)
> > > > ##    1        1.225 V
> > > > ##    2        1.25  V
> > > > ##    3        1.275 V
> > > > ##    4        1.3  V
> > > > ##    5        1.325 V
> > > > ##    6        1.35  V
> > > > ##    7        1.375 V (requires force_turbo=3D1)
> > > > ##    8        1.4  V (requires force_turbo=3D1)
> > > > ##
> > > > #over_voltage_min=3D0
> > > >
> > > > ## over_voltage_sdram
> > > > ##    Sets over_voltage_sdram_c, over_voltage_sdram_i, over_voltage=
_sdram_p
> > > > ##    together
> > > > ##
> > > > ##    Value    Description
> > > > ##    -------------------------------------------------------------=
------------
> > > > ##    -16      0.8  V
> > > > ##    -15      0.825 V
> > > > ##    -14      0.85  V
> > > > ##    -13      0.875 V
> > > > ##    -12      0.9  V
> > > > ##    -11      0.925 V
> > > > ##    -10      0.95  V
> > > > ##    -9      0.975 V
> > > > ##    -8      1.0  V
> > > > ##    -7      1.025 V
> > > > ##    -6      1.05  V
> > > > ##    -5      1.075 V
> > > > ##    -4      1.1  V
> > > > ##    -3      1.125 V
> > > > ##    -2      1.15  V
> > > > ##    -1      1.175 V
> > > > ##    0        1.2  V (Default)
> > > > ##    1        1.225 V
> > > > ##    2        1.25  V
> > > > ##    3        1.275 V
> > > > ##    4        1.3  V
> > > > ##    5        1.325 V
> > > > ##    6        1.35  V
> > > > ##    7        1.375 V
> > > > ##    8        1.4  V
> > > > ##
> > > > #over_voltage_sdram=3D0
> > > >
> > > > ## over_voltage_sdram_c
> > > > ##    SDRAM controller voltage adjust.
> > > > ##
> > > > ##    Value    Description
> > > > ##    -------------------------------------------------------------=
------------
> > > > ##    -16      0.8  V
> > > > ##    -15      0.825 V
> > > > ##    -14      0.85  V
> > > > ##    -13      0.875 V
> > > > ##    -12      0.9  V
> > > > ##    -11      0.925 V
> > > > ##    -10      0.95  V
> > > > ##    -9      0.975 V
> > > > ##    -8      1.0  V
> > > > ##    -7      1.025 V
> > > > ##    -6      1.05  V
> > > > ##    -5      1.075 V
> > > > ##    -4      1.1  V
> > > > ##    -3      1.125 V
> > > > ##    -2      1.15  V
> > > > ##    -1      1.175 V
> > > > ##    0        1.2  V (Default)
> > > > ##    1        1.225 V
> > > > ##    2        1.25  V
> > > > ##    3        1.275 V
> > > > ##    4        1.3  V
> > > > ##    5        1.325 V
> > > > ##    6        1.35  V
> > > > ##    7        1.375 V
> > > > ##    8        1.4  V
> > > > ##
> > > > #over_voltage_sdram_c=3D0
> > > >
> > > > ## over_voltage_sdram_i
> > > > ##    SDRAM I/O voltage adjust.
> > > > ##
> > > > ##    Value    Description
> > > > ##    -------------------------------------------------------------=
------------
> > > > ##    -16      0.8  V
> > > > ##    -15      0.825 V
> > > > ##    -14      0.85  V
> > > > ##    -13      0.875 V
> > > > ##    -12      0.9  V
> > > > ##    -11      0.925 V
> > > > ##    -10      0.95  V
> > > > ##    -9      0.975 V
> > > > ##    -8      1.0  V
> > > > ##    -7      1.025 V
> > > > ##    -6      1.05  V
> > > > ##    -5      1.075 V
> > > > ##    -4      1.1  V
> > > > ##    -3      1.125 V
> > > > ##    -2      1.15  V
> > > > ##    -1      1.175 V
> > > > ##    0        1.2  V (Default)
> > > > ##    1        1.225 V
> > > > ##    2        1.25  V
> > > > ##    3        1.275 V
> > > > ##    4        1.3  V
> > > > ##    5        1.325 V
> > > > ##    6        1.35  V
> > > > ##    7        1.375 V
> > > > ##    8        1.4  V
> > > > ##
> > > > #over_voltage_sdram_i=3D0
> > > >
> > > > ## over_voltage_sdram_p
> > > > ##    SDRAM phy voltage adjust.
> > > > ##
> > > > ##    Value    Description
> > > > ##    -------------------------------------------------------------=
------------
> > > > ##    -16      0.8  V
> > > > ##    -15      0.825 V
> > > > ##    -14      0.85  V
> > > > ##    -13      0.875 V
> > > > ##    -12      0.9  V
> > > > ##    -11      0.925 V
> > > > ##    -10      0.95  V
> > > > ##    -9      0.975 V
> > > > ##    -8      1.0  V
> > > > ##    -7      1.025 V
> > > > ##    -6      1.05  V
> > > > ##    -5      1.075 V
> > > > ##    -4      1.1  V
> > > > ##    -3      1.125 V
> > > > ##    -2      1.15  V
> > > > ##    -1      1.175 V
> > > > ##    0        1.2  V (Default)
> > > > ##    1        1.225 V
> > > > ##    2        1.25  V
> > > > ##    3        1.275 V
> > > > ##    4        1.3  V
> > > > ##    5        1.325 V
> > > > ##    6        1.35  V
> > > > ##    7        1.375 V
> > > > ##    8        1.4  V
> > > > ##
> > > > #over_voltage_sdram_p=3D0
> > > >
> > > > ###################################################################=
#############
> > > > ##  USB Power
> > > > ###################################################################=
#############
> > > >
> > > > ## max_usb_current
> > > > ##    When set to 1, change the output current limit (for all 4 USB
> > > > ##    ports combined) from 600mA to double that, 1200mA.
> > > > ##
> > > > ##    This option is not available for Model A/B boards.
> > > > ##
> > > > ##    Default 0.
> > > > ##
> > > > #max_usb_current=3D0
> > > >
> > > > ###################################################################=
#############
> > > > ##  Base Device Tree Parameters
> > > > ###################################################################=
#############
> > > >
> > > > ## audio
> > > > ##    Enable the onboard ALSA audio
> > > > ##
> > > > ##    Default off.
> > > > ##
> > > > #dtparam=3Daudio=3Doff
> > > >
> > > > ## i2c_arm
> > > > ##    Enable the ARM's i2c interface
> > > > ##
> > > > ##    Default off.
> > > > ##
> > > > #dtparam=3Di2c_arm=3Doff
> > > >
> > > > ## i2c_vc
> > > > ##    Enable the i2c interface
> > > > ##
> > > > ##    Usually reserved for the VideoCore processor
> > > > ##
> > > > ##    Default off.
> > > > ##
> > > > #dtparam=3Di2c_vc=3Doff
> > > >
> > > > ## i2c_arm_baudrate
> > > > ##    Set the baudrate of the ARM's i2c interface
> > > > ##
> > > > ##    Default 100000.
> > > > ##
> > > > #dtparam=3Di2c_arm_baudrate=3D100000
> > > >
> > > > ## i2c_vc_baudrate
> > > > ##    Set the baudrate of the VideoCore i2c interface
> > > > ##
> > > > ##    Default 100000.
> > > > ##
> > > > #dtparam=3Di2c_vc_baudrate=3D100000
> > > >
> > > > ## i2s
> > > > ##    Set to "on" to enable the i2s interface
> > > > ##
> > > > ##    Default off.
> > > > ##
> > > > #dtparam=3Di2s=3Doff
> > > >
> > > > ## spi
> > > > ##    Set to "on" to enable the spi interfaces
> > > > ##
> > > > ##    Default off.
> > > > ##
> > > > #dtparam=3Dspi=3Doff
> > > >
> > > > ## random
> > > > ##    Set to "on" to enable the hardware random
> > > > ##
> > > > ##    Default off.
> > > > ##
> > > > #dtparam=3Drandom=3Doff
> > > >
> > > > ## uart0
> > > > ##    Set to "off" to disable uart0
> > > > ##
> > > > ##    Default on.
> > > > ##
> > > > #dtparam=3Duart0=3Don
> > > >
> > > > ## watchdog
> > > > ##    Set to "on" to enable the hardware watchdog
> > > > ##
> > > > ##    Default off.
> > > > ##
> > > > #dtparam=3Dwatchdog=3Doff
> > > >
> > > > ## act_led_trigger
> > > > ##    Choose which activity the LED tracks.
> > > > ##
> > > > ##    Use "heartbeat" for a nice load indicator.
> > > > ##
> > > > ##    Default mmc.
> > > > ##
> > > > #dtparam=3Dact_led_trigger=3Dmmc
> > > >
> > > > ## act_led_activelow
> > > > ##    Set to "on" to invert the sense of the LED
> > > > ##
> > > > ##    Default off.
> > > > ##
> > > > #dtparam=3Dact_led_activelow=3Doff
> > > >
> > > > ## act_led_gpio
> > > > ##    Set which GPIO to use for the activity LED
> > > > ##
> > > > ##    In case you want to connect it to an external device
> > > > ##
> > > > ##    Default 16 on a non-Plus board, 47 on a Plus or Pi 2.
> > > > ##
> > > > #dtparam=3Dact_led_gpio=3D47
> > > >
> > > > ## pwr_led_trigger
> > > > ##    Choose which activity the LED tracks.
> > > > ##
> > > > ##    Use "heartbeat" for a nice load indicator.
> > > > ##
> > > > ##    Not available on Model A/B boards.
> > > > ##
> > > > ##    Default mmc.
> > > > ##
> > > > #dtparam=3Dpwr_led_trigger=3Dmmc
> > > >
> > > > ## pwr_led_activelow
> > > > ##    Set to "on" to invert the sense of the LED
> > > > ##
> > > > ##    Not available on Model A/B boards.
> > > > ##
> > > > ##    Default off.
> > > > ##
> > > > #dtparam=3Dpwr_led_activelow=3Doff
> > > >
> > > > ## pwr_led_gpio
> > > > ##    Set which GPIO to use for the PWR LED
> > > > ##
> > > > ##    In case you want to connect it to an external device
> > > > ##
> > > > ##    Not available on Model A/B boards.
> > > > ##
> > > > ##    Default 35.
> > > > ##
> > > > #dtparam=3Dpwr_led_gpio=3D35
> > > > # Enable SPI bus
> > > > dtparam=3Dspi=3Don
> > > > # Enable UART
> > > > enable_uart=3D1
> > > > # Enable VC4 Graphics
> > > > dtoverlay=3Dvc4-kms-v3d
> > > > # Enable Sony RaspberryPi Camera(imx219)
> > > > dtoverlay=3Dimx219
> > > > # Enable USB host mode
> > > > dtoverlay=3Ddwc2,dr_mode=3Dhost
> > > > # Enable CAN
> > > > dtoverlay=3Dmcp2515-can0,oscillator=3D16000000,interrupt=3D25
> > > >
> > > > # Enable WM8960
> > > > dtoverlay=3Dwm8960-soundcard
> > > >
> > > >
> > > > =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> > > >
> > > > Any help will be appreciated!
> > > >
> > > >
> > >
> > >
> > >
> >
> >
> >
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#60534): https://lists.yoctoproject.org/g/yocto/messag=
e/60534
> Mute This Topic: https://lists.yoctoproject.org/mt/99985319/7732448
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [oosman3@yahoo.=
com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

