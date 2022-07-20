Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E1CA7C43334
	for <webhook@archiver.kernel.org>; Wed, 20 Jul 2022 13:44:36 +0000 (UTC)
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com
 [209.85.167.44])
 by mx.groups.io with SMTP id smtpd.web09.53878.1658324666793200518
 for <yocto@lists.yoctoproject.org>;
 Wed, 20 Jul 2022 06:44:27 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=NjipSEIi;
 spf=pass (domain: gmail.com, ip: 209.85.167.44,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f44.google.com with SMTP id e28so30270805lfj.4
        for <yocto@lists.yoctoproject.org>;
 Wed, 20 Jul 2022 06:44:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=AJEDKtpxOh9BTs5CnNFnibVX+wh9PzM+971DlDH7j7E=;
        b=NjipSEIicCdx2CH5TR2ahVKTpHI8Etem9w7BCvKYrmYas+2Znkz8z7ZJ5UINCILhcs
         A6z1pmWtz2GArWEjv7LsMzjTbMA4vnnQAwL73fIwZLSy3EEoCIX4fAn36AKqmEWFPc0W
         7ik5XYqgKRhvQQj5ZailtpwFPitfU/2mHfPa8Hez95tlUvkMwVNoEAShAbenlZ5KpJy0
         amWxuXB2HL6r0kKKcbNMpayHI6rLU6sXR2TyPhld+gG1gcT4hWrCxgg/2Pk1y8Dy9Mpl
         B5XmBcdo4Hu3t7DYykXnoXXphaifAo9x+ZhXW1qAfgIqymcNjyFhzqZcLTSPh4RBi9IU
         KYEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=AJEDKtpxOh9BTs5CnNFnibVX+wh9PzM+971DlDH7j7E=;
        b=BjnQB+1Ny1t4dGxZgp63VAcfd6iGvfzEHvnhEG+AV50PS3+vz+gjeuQF5OS8hZZjEy
         JMR+JcNH20luR/pzA8ngcPXkK/+pcIVAx5EAbVqM+iTTgaiSew6sVX38ExpT6wBwXAL5
         5GvDSYC+gAErlGidLGvwdDNSfQvg7552cV4CkPJfnUxPuaFObTAbwNbtxWGGReqeMBbT
         P5689Q7xJQLewUI/Tjudcu6IXHvByyuXaFL6cpmUCPbzQ/muCLKyAt7Zr5fqqDLTpFHY
         W5/NnBSpNIuZPTpL9wjkO2j0sJGVDAtchA3m66YzZ5JUI0o+5+RIqLeUGYFvoRv2KZDZ
         EqbQ==
X-Gm-Message-State: AJIora86hBRh5s+HUqQpLmlC5SQ9rV1rzKRtel2HrKqhLCy5A3Tkh0bb
	Fsb1rcHh6stQ8VpLmiNqG6JJ+Cq6lDa+TVRP1a8=
X-Google-Smtp-Source: 
 AGRyM1uye6t8Hwu8ZZKGGaE34S+JW9Xw1GhuirHMKEcRUX2LETLlsRCJhWqUMVVWsmBOrXY7YOj1a5OQnCTIrtcAo5o=
X-Received: by 2002:a05:6512:3409:b0:489:c549:4693 with SMTP id
 i9-20020a056512340900b00489c5494693mr19116266lfr.26.1658324664552; Wed, 20
 Jul 2022 06:44:24 -0700 (PDT)
MIME-Version: 1.0
References: <22536.1658312708486447759@lists.yoctoproject.org>
 <11682.1658313869370401344@lists.yoctoproject.org>
In-Reply-To: <11682.1658313869370401344@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 20 Jul 2022 15:44:13 +0200
Message-ID: 
 <CANNYZj_bq365NmL__Jcb4u8_ErCvfBPGqh9X02-AHkt2uwU-7g@mail.gmail.com>
Subject: Re: [yocto] Error while testing "core-image-minimal" through "bitbake
 core-image-minimal -c testimage -v" #linux #warning #toolchain #dunfell
To: Nikita Gupta <nikitagupta2509@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 20 Jul 2022 13:44:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57600

This works as intended.

So the problem is that when qemu runs from testimage it tries to open
a graphical window using X and that for some reason fails. You can
perhaps force a no-graphical execution by
unset DISPLAY
before running bitbake.

Alex

On Wed, 20 Jul 2022 at 12:44, Nikita Gupta <nikitagupta2509@gmail.com> wrote:
>
> Hello Alexander
>
> I am putting some of lines of qemu output of nographic here .
>
> [    0.053290] ACPI: INT_SRC_OVR (bus 0 bus_irq 10 global_irq 10 high level)
> [    0.053300] ACPI: INT_SRC_OVR (bus 0 bus_irq 11 global_irq 11 high level)
> [    0.053495] Using ACPI (MADT) for SMP configuration information
> [    0.053544] ACPI: HPET id: 0x8086a201 base: 0xfed00000
> [    0.053830] smpboot: Allowing 1 CPUs, 0 hotplug CPUs
> [    0.054483] [mem 0x10000000-0xfffbffff] available for PCI devices
> [    0.054526] Booting paravirtualized kernel on bare hardware
> [    0.054875] clocksource: refined-jiffies: mask: 0xffffffff max_cycles: 0xffffffff, max_idle_ns: 1910s
> [    0.055308] setup_percpu: NR_CPUS:64 nr_cpumask_bits:64 nr_cpu_ids:1 nr_node_ids:1
> [    0.066824] percpu: Embedded 56 pages/cpu s191384 r8192 d29800 u2097152
> [    0.068969] Built 1 zonelists, mobility grouping on.  Total pages: 64356
> [    0.069155] Kernel command line: root=/dev/vda rw  console=ttyS0 mem=256M ip=192.168.7.2::192.168.7.
> [    0.135277] Dentry cache hash table entries: 32768 (order: 6, 262144 bytes, linear)
> [    0.135665] Inode-cache hash table entries: 16384 (order: 5, 131072 bytes, linear)
> [    0.137117] mem auto-init: stack:off, heap alloc:off, heap free:off
> [    0.140409] Memory: 232140K/261604K available (14340K kernel code, 1407K rwdata, 3196K rodata, 1612K)
> [    0.152763] SLUB: HWalign=64, Order=0-3, MinObjects=0, CPUs=1, Nodes=1
> [    0.153835] Kernel/User page tables isolation: enabled
> [    0.155757] ftrace: allocating 41816 entries in 164 pages
> [    0.232233] rcu: Preemptible hierarchical RCU implementation.
> [    0.232365] rcu: RCU restricting CPUs from NR_CPUS=64 to nr_cpu_ids=1.
> [    0.232452] Tasks RCU enabled.
> [    0.232526] rcu: RCU calculated value of scheduler-enlistment delay is 100 jiffies.
> [    0.232562] rcu: Adjusting geometry for rcu_fanout_leaf=16, nr_cpu_ids=1
> [    0.253797] NR_IRQS: 4352, nr_irqs: 256, preallocated irqs: 16
> [    0.263911] random: get_random_bytes called from start_kernel+0x325/0x4db with crng_init=0
> [    0.268071] Console: colour VGA+ 80x25
> [    0.310885] printk: console [ttyS0] enabled
> [    0.314617] ACPI: Core revision 20190816
> [    0.323461] clocksource: hpet: mask: 0xffffffff max_cycles: 0xffffffff, max_idle_ns: 19112604467 ns
> [    0.331315] APIC: Switch to symmetric I/O mode setup
> [    0.375864] ..TIMER: vector=0x30 apic1=0 pin1=2 apic2=-1 pin2=-1
> [    0.381414] clocksource: tsc-early: mask: 0xffffffffffffffff max_cycles: 0x185aca918fe, max_idle_ns:s
> [    0.383024] Calibrating delay loop (skipped), value calculated using timer frequency.. 3379.20 BogoM)
> [    0.385009] pid_max: default: 32768 minimum: 301
> [    0.386726] LSM: Security Framework initializing
> [    0.388807] Mount-cache hash table entries: 512 (order: 0, 4096 bytes, linear)
> [    0.388944] Mountpoint-cache hash table entries: 512 (order: 0, 4096 bytes, linear)
> [    0.415798] process: using mwait in idle threads
> [    0.416144] Last level iTLB entries: 4KB 0, 2MB 0, 4MB 0
> [    0.416930] Last level dTLB entries: 4KB 0, 2MB 0, 4MB 0, 1GB 0
> [    0.418102] Spectre V1 : Mitigation: usercopy/swapgs barriers and __user pointer sanitization
> [    0.419029] Spectre V2 : Mitigation: Retpolines
> [    0.419928] Spectre V2 : Spectre v2 / SpectreRSB mitigation: Filling RSB on context switch
> [    0.420958] Speculative Store Bypass: Vulnerable
> [    0.421698] MDS: Vulnerable: Clear CPU buffers attempted, no microcode
> [    0.626147] random: fast init done
> [    0.772307] Freeing SMP alternatives memory: 44K
> [    0.879347] smpboot: CPU0: Intel(R) Core(TM)2 Duo CPU     T7700  @ 2.40GHz (family: 0x6, model: 0xf,)
> [    0.887084] Performance Events: unsupported p6 CPU model 15 no PMU driver, software events only.
> [    0.889602] rcu: Hierarchical SRCU implementation.
> [    0.894836] smp: Bringing up secondary CPUs ...
> [    0.894970] smp: Brought up 1 node, 1 CPU
> [    0.895954] smpboot: Max logical packages: 1
> [    0.896451] smpboot: Total of 1 processors activated (3379.20 BogoMIPS)
> [    0.909320] devtmpfs: initialized
> [    0.921047] clocksource: jiffies: mask: 0xffffffff max_cycles: 0xffffffff, max_idle_ns: 191126044627s
> [    0.922081] futex hash table entries: 256 (order: 2, 16384 bytes, linear)
> [    0.924750] xor: measuring software checksum speed
> [    0.935030]    prefetch64-sse:  2032.000 MB/sec
> [    0.945932]    generic_sse:  2136.000 MB/sec
> [    0.946519] xor: using function: generic_sse (2136.000 MB/sec)
> [    0.947198] pinctrl core: initialized pinctrl subsystem
> [    0.955770] NET: Registered protocol family 16
> [    0.966246] cpuidle: using governor menu
> [    0.967806] ACPI: bus type PCI registered
> [    0.970419] PCI: Using configuration type 1 for base access
> [    1.026186] raid6: sse2x4   gen()   492 MB/s
> [    1.044095] raid6: sse2x4   xor()   261 MB/s
> [    1.061027] raid6: sse2x2   gen()   523 MB/s
> [    1.078256] raid6: sse2x2   xor()   259 MB/s
> [    1.096030] raid6: sse2x1   gen()   425 MB/s
> [    1.113986] raid6: sse2x1   xor()   246 MB/s
> [    1.114936] raid6: using algorithm sse2x2 gen() 523 MB/s
> [    1.115975] raid6: .... xor() 259 MB/s, rmw enabled
> [    1.117147] raid6: using ssse3x2 recovery algorithm
> [    1.119767] ACPI: Added _OSI(Module Device)
> [    1.119947] ACPI: Added _OSI(Processor Device)
> [    1.120422] ACPI: Added _OSI(3.0 _SCP Extensions)
> [    1.120918] ACPI: Added _OSI(Processor Aggregator Device)
> [    1.122005] ACPI: Added _OSI(Linux-Dell-Video)
> [    1.122506] ACPI: Added _OSI(Linux-Lenovo-NV-HDMI-Audio)
> [    1.122922] ACPI: Added _OSI(Linux-HPI-Hybrid-Graphics)
> [    1.140652] ACPI: 1 ACPI AML tables successfully acquired and loaded
> [    1.161811] ACPI: Interpreter enabled
> [    1.163464] ACPI: (supports S0 S3 S5)
> [    1.163979] ACPI: Using IOAPIC for interrupt routing
> [    1.165261] PCI: Using host bridge windows from ACPI; if necessary, use "pci=nocrs" and report a bug
> [    1.167766] ACPI: Enabled 2 GPEs in block 00 to 0F
> [    1.207391] ACPI: PCI Root Bridge [PCI0] (domain 0000 [bus 00-ff])
> [    1.208367] acpi PNP0A03:00: _OSC: OS supports [ASPM ClockPM Segments MSI HPX-Type3]
> [    1.210180] acpi PNP0A03:00: fail to add MMCONFIG information, can't access extended PCI configurati.
> [    1.214285] PCI host bridge to bus 0000:00
> [    1.215024] pci_bus 0000:00: root bus resource [io  0x0000-0x0cf7 window]
> [    1.215968] pci_bus 0000:00: root bus resource [io  0x0d00-0xffff window]
> [    1.216981] pci_bus 0000:00: root bus resource [mem 0x000a0000-0x000bffff window]
> [    1.217926] pci_bus 0000:00: root bus resource [mem 0x10000000-0xfebfffff window]
> [    1.218920] pci_bus 0000:00: root bus resource [mem 0x100000000-0x17fffffff window]
> [    1.220119] pci_bus 0000:00: root bus resource [bus 00-ff]
> [    1.228162] pci 0000:00:01.1: [8086:7010] type 00 class 0x010180
> [    1.233048] pci 0000:00:01.1: reg 0x20: [io  0xc0e0-0xc0ef]
> [    1.234367] pci 0000:00:01.1: legacy IDE quirk: reg 0x10: [io  0x01f0-0x01f7]
> [    1.235947] pci 0000:00:01.1: legacy IDE quirk: reg 0x14: [io  0x03f6]
> [    1.236934] pci 0000:00:01.1: legacy IDE quirk: reg 0x18: [io  0x0170-0x0177]
> [    1.237717] pci 0000:00:01.1: legacy IDE quirk: reg 0x1c: [io  0x0376]
> [    1.239483] pci 0000:00:01.2: [8086:7020] type 00 class 0x0c0300
> [    1.241609] pci 0000:00:01.2: reg 0x20: [io  0xc080-0xc09f]
> [    1.245137] pci 0000:00:01.3: [8086:7113] type 00 class 0x068000
> [    1.246990] pci 0000:00:01.3: quirk: [io  0x0600-0x063f] claimed by PIIX4 ACPI
> [    1.248982] pci 0000:00:01.3: quirk: [io  0x0700-0x070f] claimed by PIIX4 SMB
> [    1.250849] pci 0000:00:02.0: [1234:1111] type 00 class 0x030000
> [    1.252532] pci 0000:00:02.0: reg 0x10: [mem 0xfd000000-0xfdffffff pref]
> [    1.254439] pci 0000:00:02.0: reg 0x18: [mem 0xfebd0000-0xfebd0fff]
> [    1.259319] pci 0000:00:02.0: reg 0x30: [mem 0xfebc0000-0xfebcffff pref]
> [    1.261511] pci 0000:00:03.0: [1af4:1000] type 00 class 0x020000
> [    1.262963] pci 0000:00:03.0: reg 0x10: [io  0xc0a0-0xc0bf]
> [    1.264399] pci 0000:00:03.0: reg 0x14: [mem 0xfebd1000-0xfebd1fff]
> [    1.267584] pci 0000:00:03.0: reg 0x20: [mem 0xfe000000-0xfe003fff 64bit pref]
> [    1.269382] pci 0000:00:03.0: reg 0x30: [mem 0xfeb80000-0xfebbffff pref]
> [    1.271515] pci 0000:00:04.0: [1af4:1005] type 00 class 0x00ff00
> [    1.273410] pci 0000:00:04.0: reg 0x10: [io  0xc0c0-0xc0df]
> [    1.276581] pci 0000:00:04.0: reg 0x20: [mem 0xfe004000-0xfe007fff 64bit pref]
> [    1.278443] pci 0000:00:05.0: [1af4:1001] type 00 class 0x010000
> [    1.279958] pci 0000:00:05.0: reg 0x10: [io  0xc000-0xc07f]
> [    1.281211] pci 0000:00:05.0: reg 0x14: [mem 0xfebd2000-0xfebd2fff]
> [    1.284515] pci 0000:00:05.0: reg 0x20: [mem 0xfe008000-0xfe00bfff 64bit pref]
> [    1.294292] ACPI: PCI Interrupt Link [LNKA] (IRQs 5 *10 11)
> [    1.295942] ACPI: PCI Interrupt Link [LNKB] (IRQs 5 *10 11)
> [    1.297224] ACPI: PCI Interrupt Link [LNKC] (IRQs 5 10 *11)
> [    1.298272] ACPI: PCI Interrupt Link [LNKD] (IRQs 5 10 *11)
> [    1.299118] ACPI: PCI Interrupt Link [LNKS] (IRQs *9)
> [    1.305368] pci 0000:00:02.0: vgaarb: setting as boot VGA device
> [    1.305905] pci 0000:00:02.0: vgaarb: VGA device added: decodes=io+mem,owns=io+mem,locks=none
> [    1.305970] pci 0000:00:02.0: vgaarb: bridge control possible
> [    1.306637] vgaarb: loaded
> [    1.308290] SCSI subsystem initialized
> [    1.309565] ACPI: bus type USB registered
> [    1.310261] usbcore: registered new interface driver usbfs
> [    1.311172] usbcore: registered new interface driver hub
> [    1.311974] usbcore: registered new device driver usb
> [    1.314504] pps_core: LinuxPPS API ver. 1 registered
> [    1.314975] pps_core: Software ver. 5.3.6 - Copyright 2005-2007 Rodolfo Giometti <giometti@linux.it>
> [    1.316037] PTP clock support registered
> [    1.318393] PCI: Using ACPI for IRQ routing
> [    1.332774] Bluetooth: Core ver 2.22
> [    1.333104] NET: Registered protocol family 31
> [    1.333949] Bluetooth: HCI device and connection manager initialized
> [    1.335055] Bluetooth: HCI socket layer initialized
> [    1.335724] Bluetooth: L2CAP socket layer initialized
> [    1.336097] Bluetooth: SCO socket layer initialized
> [    1.340083] hpet: 3 channels of 0 reserved for per-cpu timers
> [    1.341256] hpet0: at MMIO 0xfed00000, IRQs 2, 8, 0
> [    1.342941] hpet0: 3 comparators, 64-bit 100.000000 MHz counter
> [    1.349759] clocksource: Switched to clocksource tsc-early
> [    1.783492] pnp: PnP ACPI init
> [    1.789182] pnp: PnP ACPI: found 7 devices
> [    1.807251] thermal_sys: Registered thermal governor 'step_wise'
> [    1.807387] thermal_sys: Registered thermal governor 'user_space'
> [    1.824442] clocksource: acpi_pm: mask: 0xffffff max_cycles: 0xffffff, max_idle_ns: 2085701024 ns
> [    1.828445] pci_bus 0000:00: resource 4 [io  0x0000-0x0cf7 window]
> [    1.830071] pci_bus 0000:00: resource 5 [io  0x0d00-0xffff window]
> [    1.832002] pci_bus 0000:00: resource 6 [mem 0x000a0000-0x000bffff window]
> [    1.833410] pci_bus 0000:00: resource 7 [mem 0x10000000-0xfebfffff window]
> [    1.834741] pci_bus 0000:00: resource 8 [mem 0x100000000-0x17fffffff window]
> [    1.837537] NET: Registered protocol family 2
> [    1.839729] IP idents hash table entries: 4096 (order: 3, 32768 bytes, linear)
> [    1.865735] tcp_listen_portaddr_hash hash table entries: 256 (order: 0, 4096 bytes, linear)
> [    1.867608] TCP established hash table entries: 2048 (order: 2, 16384 bytes, linear)
> [    1.868746] TCP bind hash table entries: 2048 (order: 3, 32768 bytes, linear)
> [    1.869797] TCP: Hash tables configured (established 2048 bind 2048)
> [    1.883744] UDP hash table entries: 256 (order: 1, 8192 bytes, linear)
> [    1.884827] UDP-Lite hash table entries: 256 (order: 1, 8192 bytes, linear)
> [    1.888819] NET: Registered protocol family 1
> [    1.893298] RPC: Registered named UNIX socket transport module.
> [    1.894880] RPC: Registered udp transport module.
> [    1.895821] RPC: Registered tcp transport module.
> [    1.896792] RPC: Registered tcp NFSv4.1 backchannel transport module.
> [    1.898265] pci 0000:00:01.0: PIIX3: Enabling Passive Release
> [    1.899583] pci 0000:00:00.0: Limiting direct PCI/PCI transfers
> [    1.901234] pci 0000:00:01.0: Activating ISA DMA hang workarounds
> [    1.914435] pci 0000:00:01.0: quirk_isa_dma_hangs+0x0/0x20 took 12838 usecs
> [    2.135341] PCI Interrupt Link [LNKD] enabled at IRQ 11
> [    2.341888] pci 0000:00:01.2: quirk_usb_early_handoff+0x0/0x650 took 415769 usecs
> [    2.343275] pci 0000:00:02.0: Video device with shadowed ROM at [mem 0x000c0000-0x000dffff]
> [    2.345068] PCI: CLS 0 bytes, default 64
> [    2.359823] check: Scanning for low memory corruption every 60 seconds
> [    2.364056] Initialise system trusted keyrings
> [    2.365862] workingset: timestamp_bits=46 max_order=16 bucket_order=0
> [    2.393568] NFS: Registering the id_resolver key type
> [    2.394661] Key type id_resolver registered
> [    2.395253] Key type id_legacy registered
> [    2.398828] Key type cifs.idmap registered
> [    2.426560] Key type asymmetric registered
> [    2.427166] Asymmetric key parser 'x509' registered
> [    2.427826] Block layer SCSI generic (bsg) driver version 0.4 loaded (major 251)
> [    2.428763] io scheduler mq-deadline registered
> [    2.429376] io scheduler kyber registered
> [    2.443085] input: Power Button as /devices/LNXSYSTM:00/LNXPWRBN:00/input/input0
> [    2.452480] ACPI: Power Button [PWRF]
> [    2.636339] PCI Interrupt Link [LNKC] enabled at IRQ 10
> [    3.043706] PCI Interrupt Link [LNKA] enabled at IRQ 10
> [    3.046003] Serial: 8250/16550 driver, 4 ports, IRQ sharing disabled
> [    3.080365] 00:05: ttyS0 at I/O 0x3f8 (irq = 4, base_baud = 115200) is a 16550A
> [    3.115413] 00:06: ttyS1 at I/O 0x2f8 (irq = 3, base_baud = 115200) is a 16550A
> [    3.130219] Linux agpgart interface v0.103
> [    3.132176] bochs-drm 0000:00:02.0: remove_conflicting_pci_framebuffers: bar 0: 0xfd000000 -> 0xfdfff
> [    3.141489] crng init done
>     3.142481] bochs-drm 0000:00:02.0: remove_conflicting_pci_framebuffers: bar 2: 0xfebd0000 -> 0xfebdf
> [    3.145663] bochs-drm 0000:00:02.0: vgaarb: deactivate vga console
> [    3.147438] Console: switching to colour dummy device 80x25
> [    3.150326] [drm] Found bochs VGA, ID 0xb0c0.
> [    3.150809] [drm] Framebuffer size 16384 kB @ 0xfd000000, mmio @ 0xfebd0000.
> [    3.152273] [TTM] Zone  kernel: Available graphics memory: 116092 KiB
> [    3.153052] [TTM] Initializing pool allocator
> [    3.153658] [TTM] Initializing DMA pool allocator
> [    3.157316] [drm] Found EDID data blob.
> [    3.162182] [drm] Initialized bochs-drm 1.0.0 20130925 for 0000:00:02.0 on minor 0
> [    3.200140] fbcon: bochs-drmdrmfb (fb0) is primary device
> [    3.232092] Console: switching to colour frame buffer device 128x48
> [    3.247507] bochs-drm 0000:00:02.0: fb0: bochs-drmdrmfb frame buffer device
> [    3.287157] brd: module loaded
> [    3.338996] loop: module loaded
> [    3.346707] virtio_blk virtio2: [vda] 23994 512-byte logical blocks (12.3 MB/11.7 MiB)
> [    3.389639] Uniform Multi-Platform E-IDE driver
> [    3.390654] piix 0000:00:01.1: IDE controller (0x8086:0x7010 rev 0x00)
> [    3.392365] piix 0000:00:01.1: not 100% native mode: will probe irqs later
> [    3.393854] legacy IDE will be removed in 2021, please switch to libata
> [    3.393854] Report any missing HW support to linux-ide@vger.kernel.org
> [    3.396536]     ide0: BM-DMA at 0xc0e0-0xc0e7
> [    3.405884]     ide1: BM-DMA at 0xc0e8-0xc0ef
> [    3.410281] tsc: Refined TSC clocksource calibration: 1689.599 MHz
> [    3.411557] clocksource: tsc: mask: 0xffffffffffffffff max_cycles: 0x185ac5ca321, max_idle_ns: 44079s
> [    3.413037] clocksource: Switched to clocksource tsc
> [    4.627674] hdc: QEMU DVD-ROM, ATAPI CD/DVD-ROM drive
> [    5.254056] hdc: MWDMA2 mode selected
> [    5.255216] ide0 at 0x1f0-0x1f7,0x3f6 on irq 14
> [    5.255797] ide1 at 0x170-0x177,0x376 on irq 15
> [    5.257637] ide-gd driver 1.18
> [    5.258220] ide-cd driver 5.00
> [    5.261670] ide-cd: hdc: ATAPI 4X DVD-ROM drive, 512kB Cache
> [    5.262259] cdrom: Uniform CD-ROM driver Revision: 3.20
> [    5.325752] e100: Intel(R) PRO/100 Network Driver, 3.5.24-k2-NAPI
> [    5.326801] e100: Copyright(c) 1999-2006 Intel Corporation
> [    5.327565] e1000: Intel(R) PRO/1000 Network Driver - version 7.3.21-k8-NAPI
> [    5.328444] e1000: Copyright (c) 1999-2006 Intel Corporation.
> [    5.329179] e1000e: Intel(R) PRO/1000 Network Driver - 3.2.6-k
> [    5.329878] e1000e: Copyright(c) 1999 - 2015 Intel Corporation.
> [    5.330642] igb: Intel(R) Gigabit Ethernet Network Driver - version 5.6.0-k
> [    5.331302] igb: Copyright (c) 2007-2014 Intel Corporation.
> [    5.331892] ehci_hcd: USB 2.0 'Enhanced' Host Controller (EHCI) Driver
> [    5.332454] ehci-pci: EHCI PCI platform driver
> [    5.333094] ohci_hcd: USB 1.1 'Open' Host Controller (OHCI) Driver
> [    5.333846] ohci-pci: OHCI PCI platform driver
> [    5.334450] uhci_hcd: USB Universal Host Controller Interface driver
> [    5.485426] uhci_hcd 0000:00:01.2: UHCI Host Controller
> [    5.486339] uhci_hcd 0000:00:01.2: new USB bus registered, assigned bus number 1
> [    5.487652] uhci_hcd 0000:00:01.2: irq 11, io base 0x0000c080
> [    5.493247] hub 1-0:1.0: USB hub found
> [    5.494019] hub 1-0:1.0: 2 ports detected
> [    5.502529] usbcore: registered new interface driver usb-storage
> [    5.503369] usbcore: registered new interface driver usbserial_generic
> [    5.504629] usbserial: USB Serial support registered for generic
> [    5.505283] usbcore: registered new interface driver ftdi_sio
> [    5.505839] usbserial: USB Serial support registered for FTDI USB Serial Device
> [    5.506584] usbcore: registered new interface driver pl2303
> [    5.507128] usbserial: USB Serial support registered for pl2303
> [    5.508227] i8042: PNP: PS/2 Controller [PNP0303:KBD,PNP0f13:MOU] at 0x60,0x64 irq 1,12
> [    5.510883] serio: i8042 KBD port at 0x60,0x64 irq 1
> [    5.511896] serio: i8042 AUX port at 0x60,0x64 irq 12
> [    5.522420] mousedev: PS/2 mouse device common for all mice
> [    5.526890] input: AT Translated Set 2 keyboard as /devices/platform/i8042/serio0/input/input1
> [    5.528503] rtc_cmos 00:00: RTC can wake from S4
> [    5.534544] rtc_cmos 00:00: registered as rtc0
> [    5.556479] rtc_cmos 00:00: alarms up to one day, y3k, 114 bytes nvram, hpet irqs
> [    5.561094] device-mapper: ioctl: 4.41.0-ioctl (2019-09-16) initialised: dm-devel@redhat.com
> [    5.563200] intel_pstate: CPU model not supported
> [    5.563869] sdhci: Secure Digital Host Controller Interface driver
> [    5.564514] sdhci: Copyright(c) Pierre Ossman
> [    5.565088] sdhci-pltfm: SDHCI platform and OF driver helper
> [    5.566636] usbcore: registered new interface driver usbhid
> [    5.567241] usbhid: USB HID core driver
> [    5.567922] drop_monitor: Initializing network drop monitor service
> [    5.568892] u32 classifier
> [    5.569207]     input device check on
> [    5.569564]     Actions configured
> [    5.571099] NET: Registered protocol family 10
> [    5.586617] Segment Routing with IPv6
> [    5.587629] sit: IPv6, IPv4 and MPLS over IPv4 tunneling driver
> [    5.590474] NET: Registered protocol family 17
> [    5.591687] Key type dns_resolver registered
> [    5.593676] IPI shorthand broadcast: enabled
> [    5.594374] sched_clock: Marking stable (5485271338, 108914060)->(5981448748, -387263350)
> [    5.595828] Loading compiled-in X.509 certificates
> [    5.596642] Key type ._fscrypt registered
> [    5.597146] Key type .fscrypt registered
> [    5.601249] Btrfs loaded, crc32c=crc32c-generic
> [    5.622879] Key type encrypted registered
> [    5.626265] printk: console [netcon0] enabled
> [    5.626738] netconsole: network logging started
> [    5.627736] rtc_cmos 00:00: setting system clock to 2022-07-20T10:36:10 UTC (1658313370)
> [    5.673637] IP-Config: Complete:
> [    5.674257]      device=eth0, hwaddr=52:54:00:12:34:02, ipaddr=192.168.7.2, mask=255.255.255.0, gw=11
> [    5.675261]      host=192.168.7.2, domain=, nis-domain=(none)
> [    5.675828]      bootserver=255.255.255.255, rootserver=255.255.255.255, rootpath=
> [    5.729332] usb 1-1: new full-speed USB device number 2 using uhci_hcd
> [    5.922791] input: QEMU QEMU USB Tablet as /devices/pci0000:00/0000:00:01.2/usb1/1-1/1-1:1.0/0003:064
> [    5.924768] hid-generic 0003:0627:0001.0001: input: USB HID v0.01 Mouse [QEMU QEMU USB Tablet] on us0
> [    6.155241] input: ImExPS/2 Generic Explorer Mouse as /devices/platform/i8042/serio1/input/input3
> [    6.157869] md: Waiting for all devices to be available before autodetect
>     6.158853] md: If you don't use raid, use raid=noautodetect
> [    6.162222] md: Autodetecting RAID arrays.
> [    6.162754] md: autorun ...
> [    6.163171] md: ... autorun DONE.
> [    6.272996] EXT4-fs (vda): recovery complete
> [    6.276592] EXT4-fs (vda): mounted filesystem with ordered data mode. Opts: (null)
> [    6.278241] VFS: Mounted root (ext4 filesystem) on device 253:0.
> [    6.322833] devtmpfs: mounted
> [    6.354516] IPv6: ADDRCONF(NETDEV_CHANGE): eth0: link becomes ready
> [    6.465480] Freeing unused kernel image memory: 1612K
> [    6.467795] Write protecting the kernel read-only data: 20480k
> [    6.471841] Freeing unused kernel image memory: 2004K
> [    6.473580] Freeing unused kernel image memory: 900K
> [    6.474647] Run /sbin/init as init process
> INIT: version 2.96 booting
> Starting udev
> [    7.915621] udevd[106]: starting version 3.2.9
> [    8.067716] udevd[107]: starting eudev-3.2.9
> [   10.295030] EXT4-fs (vda): re-mounted. Opts: (null)
> INIT: Entering runlevel: 5
> Configuring network interfaces... ip: RTNETLINK answers: File exists
> Starting syslogd/klogd: done
>
> Poky (Yocto Project Reference Distro) 3.1.16 qemux86-64 /dev/ttyS0
>
> qemux86-64 login:
> Poky (Yocto Project Reference Distro) 3.1.16 qemux86-64 /dev/ttyS0
>
> qemux86-64 login: clear
> Password:
> Login incorrect
> qemux86-64 login: root
> root@qemux86-64:~# ls
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#57597): https://lists.yoctoproject.org/g/yocto/message/57597
> Mute This Topic: https://lists.yoctoproject.org/mt/92435401/1686489
> Mute #linux:https://lists.yoctoproject.org/g/yocto/mutehashtag/linux
> Mute #warning:https://lists.yoctoproject.org/g/yocto/mutehashtag/warning
> Mute #toolchain:https://lists.yoctoproject.org/g/yocto/mutehashtag/toolchain
> Mute #bitbake:https://lists.yoctoproject.org/g/yocto/mutehashtag/bitbake
> Mute #dunfell:https://lists.yoctoproject.org/g/yocto/mutehashtag/dunfell
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

