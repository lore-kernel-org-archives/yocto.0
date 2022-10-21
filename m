Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E65CAFA373D
	for <webhook@archiver.kernel.org>; Fri, 21 Oct 2022 17:52:52 +0000 (UTC)
Received: from mail-oa1-f48.google.com (mail-oa1-f48.google.com [209.85.160.48])
 by mx.groups.io with SMTP id smtpd.web08.1049.1666374766783193892
 for <yocto@lists.yoctoproject.org>;
 Fri, 21 Oct 2022 10:52:47 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=HAH1fs7q;
 spf=pass (domain: gmail.com, ip: 209.85.160.48, mailfrom: raj.khem@gmail.com)
Received: by mail-oa1-f48.google.com with SMTP id 586e51a60fabf-13b23e29e36so3733302fac.8;
        Fri, 21 Oct 2022 10:52:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=AYQLtbCrgDReh7tt8t5IQRw7GSjHvzYQCm5kvOfEbkc=;
        b=HAH1fs7qDbepHt/6AkbID5LvL6g9OsBC+LJeaTT7ur8M5OmPC3X/pfVIH00L8Sv/1Y
         qWdCWZA1mt5TwvRb7yQcPbI8mVxUhOdWd0m0D10P5PCTGPoXQxKmtNng/NWdILP0C5yC
         7yVAo1XZiIjDiNTC8OGNh2skzJ7VdS0jkGLiEGF9nmD2kApAyIiFKW6akd5NvWOfh/nU
         7J534D01Ly5aEipgzHfMS048Qzh9JyaPQSNmOW9RFOunK9AU+Au1nr4ozof06WKFPsC4
         mddXCgPBfze7DdRckmIZ61EnWBYqKkhIMy1LNqQd/MqBd49DQMvWrSi7Iz/5l5rcIhFx
         cqDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AYQLtbCrgDReh7tt8t5IQRw7GSjHvzYQCm5kvOfEbkc=;
        b=ZULigiM8/b2B1GdwWGNQUu54sFGX1LTezReDKvEW8IMwPKzDN8xgLaJxFqCNqEuIbK
         5OTWFz6rGnNVjVRt8d2405bsFL2hPE+EoylbfKPtFcBjLuhP/S+JeF37zNgk9gODqEyf
         IcU58hqr7iZlHujR8Ll5VlVprJSSxxHVKH/gQ72x7HKFAjhtXjVZZLnxePMJcjipMaNp
         QxTeFLob4zA5uJYflAS9atDcndbIE0NJFtDBmjFj16/s4m0dSv2UR0QI508M3tU+h5kR
         wgDQUpFS8vZYn/JkICAijLjezbH3naXGsgRP2Iv2ubijQNc6UxwIXd/ji3RXKtBqNJNu
         FNow==
X-Gm-Message-State: ACrzQf2xoSXzSQoD0UxcnocJKoHEzj2DXkLcQc/cycSEhlrpZxPRcEAB
	mklf0fKHLh5vsjezmyYbmQIKbvVhTH39+FJiPPs=
X-Google-Smtp-Source: AMsMyM4J0sd9sm+OcbJoVYjeuKtMxHIf3b+2A4jTiTHP1f6TokfHTdcZ7AMg33QnLUMQePV+r+/oPOuLkAMcBBOaHYA=
X-Received: by 2002:a05:6870:d1c8:b0:132:1239:2550 with SMTP id
 b8-20020a056870d1c800b0013212392550mr29181160oac.55.1666374765865; Fri, 21
 Oct 2022 10:52:45 -0700 (PDT)
MIME-Version: 1.0
References: <CAF=G1t49Z0LXDGimbYsXmTXy1tjq-Hw-1wZHqZCQ1-K5a852MQ@mail.gmail.com>
 <CAMKF1soYEvpGrWZ4L631sre8zM3Z1UOCvfM7RkVYr67gnnFRvQ@mail.gmail.com> <CAGAf8LyYsnHng7y=XFAq_2E6oGNnFNAWhtbHDxKdzq2juWVvqQ@mail.gmail.com>
In-Reply-To: <CAGAf8LyYsnHng7y=XFAq_2E6oGNnFNAWhtbHDxKdzq2juWVvqQ@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 21 Oct 2022 10:52:19 -0700
Message-ID: <CAMKF1so2JWp6u2+rcG3aZwTnjWpcQW9vps5ta5k70xjM-t=yWQ@mail.gmail.com>
Subject: Re: [yocto] Error during linux booting
To: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Cc: Vaibhav Deshpande <vdeshpande@ventanamicro.com>, yocto+help@lists.yoctoproject.org, 
	yocto@lists.yoctoproject.org, openembedded-core+help@lists.openembedded.org, 
	Anup Patel <apatel@ventanamicro.com>, Mayuresh Chitale <mchitale@ventanamicro.com>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 21 Oct 2022 17:52:52 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58395

On Fri, Oct 21, 2022 at 10:38 AM Zoran Stojsavljevic
<zoran.stojsavljevic@gmail.com> wrote:
>
> > For enabling systemd its best to start with
> > DISTRO = "poky-altcfg"
>
> With all due respect, Khem, I thought that this line in local.conf
> makes systemd as default?!
> INIT_MANAGER ?= "systemd"

yes that will do it. Infact thats what poky-altconfig does largely as well. see
https://git.yoctoproject.org/poky/tree/meta-poky/conf/distro/poky-altcfg.conf#n11

>
> >> Hello Zoran
> >> Yes, i have set INIT_MANAGER ?= "systemd"
>
> Zee
> _______
>
> On Fri, Oct 21, 2022 at 6:28 PM Khem Raj <raj.khem@gmail.com> wrote:
> >
> > If you are using poky then ssytemd is not default init system, its
> > sysvinit. For enabling systemd its best to start with
> >
> > DISTRO = "poky-altcfg"
> >
> > On Sun, Oct 16, 2022 at 11:32 AM Vaibhav Deshpande
> > <vdeshpande@ventanamicro.com> wrote:
> > >
> > > Hello
> > >
> > > I am trying to build a yocto image from the kirkstone branch (https://github.com/openembedded/openembedded-core/tree/kirkstone) build gets successful but at the time of linux booting I am getting below error.
> > >
> > > [    0.000000] Linux version 5.19.0-rc4 (oe-user@oe-host) (riscv64-oe-linux-gcc (GCC) 11.3.0, GNU ld (GNU Binutils) 2.38.20220708) #1 SMP Wed Aug 24 14:46:22 UTC 2022
> > > [    0.000000] random: crng init done
> > > [    0.000000] Machine model: Ventana VT1 QEMU
> > > [    0.000000] SBI specification v1.0 detected
> > > [    0.000000] SBI implementation ID=0x1 Version=0x10001
> > > [    0.000000] SBI TIME extension detected
> > > [    0.000000] SBI IPI extension detected
> > > [    0.000000] SBI RFENCE extension detected
> > > [    0.000000] SBI SRST extension detected
> > > [    0.000000] earlycon: uart8250 at MMIO 0x0000000010000000 (options '')
> > > [    0.000000] printk: bootconsole [uart8250] enabled
> > > [    0.000000] efi: EFI v2.90 by Das U-Boot
> > > [    0.000000] efi: RTPROP=0xfe73c020 SMBIOS=0xfe738000 MEMRESERVE=0xfd3ca020
> > > [    0.000000] Zone ranges:
> > > [    0.000000]   DMA32    [mem 0x0000000080000000-0x00000000ffffffff]
> > > [    0.000000]   Normal   empty
> > > [    0.000000] Movable zone start for each node
> > > [    0.000000] Early memory node ranges
> > > [    0.000000]   node   0: [mem 0x0000000080000000-0x00000000fe737fff]
> > > [    0.000000]   node   0: [mem 0x00000000fe738000-0x00000000fe738fff]
> > > [    0.000000]   node   0: [mem 0x00000000fe739000-0x00000000fe73bfff]
> > > [    0.000000]   node   0: [mem 0x00000000fe73c000-0x00000000fe742fff]
> > > [    0.000000]   node   0: [mem 0x00000000fe743000-0x00000000fff77fff]
> > > [    0.000000]   node   0: [mem 0x00000000fff78000-0x00000000fff78fff]
> > > [    0.000000]   node   0: [mem 0x00000000fff79000-0x00000000ffffffff]
> > > [    0.000000] Initmem setup node 0 [mem 0x0000000080000000-0x00000000ffffffff]
> > > [    0.000000] SBI HSM extension detected
> > > [    0.000000] riscv: base ISA extensions acdfhim
> > > [    0.000000] riscv: ELF capabilities acdfim
> > > [    0.000000] riscv: Svinval extension supported
> > > [    0.000000] percpu: Embedded 18 pages/cpu s34488 r8192 d31048 u73728
> > > [    0.000000] Built 1 zonelists, mobility grouping on.  Total pages: 516096
> > > [    0.000000] Kernel command line: root=/dev/vda2 rootwait console=ttyS0 earlycon=uart8250,mmio,0x10000000
> > > [    0.000000] Dentry cache hash table entries: 262144 (order: 9, 2097152 bytes, linear)
> > > [    0.000000] Inode-cache hash table entries: 131072 (order: 8, 1048576 bytes, linear)
> > > [    0.000000] mem auto-init: stack:off, heap alloc:off, heap free:off
> > > [    0.000000] Virtual kernel memory layout:
> > > [    0.000000]       fixmap : 0xff1bfffffee00000 - 0xff1bffffff000000   (2048 kB)
> > > [    0.000000]       pci io : 0xff1bffffff000000 - 0xff1c000000000000   (  16 MB)
> > > [    0.000000]      vmemmap : 0xff1c000000000000 - 0xff20000000000000   (1024 TB)
> > > [    0.000000]      vmalloc : 0xff20000000000000 - 0xff60000000000000   (16384 TB)
> > > [    0.000000]       lowmem : 0xff60000000000000 - 0xff60000080000000   (2048 MB)
> > > [    0.000000]       kernel : 0xffffffff80000000 - 0xffffffffffffffff   (2047 MB)
> > > [    0.000000] Memory: 2034884K/2097152K available (7677K kernel code, 4908K rwdata, 4096K rodata, 2204K init, 463K bss, 62268K reserved, 0K cma-reserved)
> > > [    0.000000] SLUB: HWalign=64, Order=0-3, MinObjects=0, CPUs=16, Nodes=1
> > > [    0.000000] rcu: Hierarchical RCU implementation.
> > > [    0.000000] rcu: RCU restricting CPUs from NR_CPUS=64 to nr_cpu_ids=16.
> > > [    0.000000] rcu: RCU debug extended QS entry/exit.
> > > [    0.000000] Tracing variant of Tasks RCU enabled.
> > > [    0.000000] rcu: RCU calculated value of scheduler-enlistment delay is 25 jiffies.
> > > [    0.000000] rcu: Adjusting geometry for rcu_fanout_leaf=16, nr_cpu_ids=16
> > > [    0.000000] NR_IRQS: 64, nr_irqs: 64, preallocated irqs: 0
> > > [    0.000000] riscv-intc: 64 local interrupts mapped using AIA
> > > [    0.000000] riscv-imsic: imsics@28000000:  hart-index-bits: 4,  guest-index-bits: 3
> > > [    0.000000] riscv-imsic: imsics@28000000: group-index-bits: 0, group-index-shift: 24
> > > [    0.000000] riscv-imsic: imsics@28000000: mapped 255 interrupts for 16 CPUs at 0x0000000028000000
> > > [    0.000000] riscv-imsic: imsics@28000000: enable/disable sync using interrupt 2
> > > [    0.000000] riscv-imsic: imsics@28000000: providing IPIs using interrupt 1
> > > [    0.000000] rcu: srcu_init: Setting srcu_struct sizes based on contention.
> > > [    0.000000] riscv_timer_init_dt: Registering clocksource cpuid [0] hartid [15]
> > > [    0.000000] clocksource: riscv_clocksource: mask: 0xffffffffffffffff max_cycles: 0x24e6a1710, max_idle_ns: 440795202120 ns
> > > [    0.000175] sched_clock: 64 bits at 10MHz, resolution 100ns, wraps every 4398046511100ns
> > > [    0.003481] Timer interrupt in S-mode is available via sstc extension
> > > [    0.025738] Console: colour dummy device 80x25
> > > [    0.029321] Calibrating delay loop (skipped), value calculated using timer frequency.. 20.00 BogoMIPS (lpj=40000)
> > > [    0.031650] pid_max: default: 32768 minimum: 301
> > > [    0.034091] LSM: Security Framework initializing
> > > [    0.040644] Mount-cache hash table entries: 4096 (order: 3, 32768 bytes, linear)
> > > [    0.041871] Mountpoint-cache hash table entries: 4096 (order: 3, 32768 bytes, linear)
> > > [    0.113999] cblist_init_generic: Setting adjustable number of callback queues.
> > > [    0.115760] cblist_init_generic: Setting shift to 4 and lim to 1.
> > > [    0.118488] riscv: ELF compat mode supported
> > > [    0.118927] ASID allocator using 16 bits (65536 entries)
> > > [    0.122786] rcu: Hierarchical SRCU implementation.
> > > [    0.128655] Remapping and enabling EFI services.
> > > [    0.138132] smp: Bringing up secondary CPUs ...
> > > [    0.289674] smp: Brought up 1 node, 16 CPUs
> > > [    0.370978] devtmpfs: initialized
> > > [    0.384472] clocksource: jiffies: mask: 0xffffffff max_cycles: 0xffffffff, max_idle_ns: 7645041785100000 ns
> > > [    0.385374] futex hash table entries: 4096 (order: 6, 262144 bytes, linear)
> > > [    0.395700] NET: Registered PF_NETLINK/PF_ROUTE protocol family
> > > [    0.402142] audit: initializing netlink subsys (disabled)
> > > [    0.405233] audit: type=2000 audit(0.332:1): state=initialized audit_enabled=0 res=1
> > > [    0.409992] cpuidle: using governor menu
> > > [    0.991252] riscv-aplic d000000.aplic: 96 interrupts forwared to MSI base 0x0000000028000000
> > > [    1.023056] HugeTLB registered 2.00 MiB page size, pre-allocated 0 pages
> > > [    1.032106] ACPI: Interpreter disabled.
> > > [    1.032688] iommu: Default domain type: Translated
> > > [    1.033087] iommu: DMA domain TLB invalidation policy: strict mode
> > > [    1.035341] SCSI subsystem initialized
> > > [    1.040840] usbcore: registered new interface driver usbfs
> > > [    1.041953] usbcore: registered new interface driver hub
> > > [    1.042680] usbcore: registered new device driver usb
> > > [    1.044787] Registered efivars operations
> > > [    1.066789] vgaarb: loaded
> > > [    1.070677] clocksource: Switched to clocksource riscv_clocksource
> > > [    1.074619] pnp: PnP ACPI: disabled
> > > [    1.116227] NET: Registered PF_INET protocol family
> > > [    1.126621] IP idents hash table entries: 32768 (order: 6, 262144 bytes, linear)
> > > [    1.137534] tcp_listen_portaddr_hash hash table entries: 1024 (order: 3, 32768 bytes, linear)
> > > [    1.138660] Table-perturb hash table entries: 65536 (order: 6, 262144 bytes, linear)
> > > [    1.139011] TCP established hash table entries: 16384 (order: 5, 131072 bytes, linear)
> > > [    1.139754] TCP bind hash table entries: 16384 (order: 7, 524288 bytes, linear)
> > > [    1.141266] TCP: Hash tables configured (established 16384 bind 16384)
> > > [    1.144634] UDP hash table entries: 1024 (order: 4, 98304 bytes, linear)
> > > [    1.145365] UDP-Lite hash table entries: 1024 (order: 4, 98304 bytes, linear)
> > > [    1.148897] NET: Registered PF_UNIX/PF_LOCAL protocol family
> > > [    1.159051] RPC: Registered named UNIX socket transport module.
> > > [    1.159353] RPC: Registered udp transport module.
> > > [    1.159522] RPC: Registered tcp transport module.
> > > [    1.159699] RPC: Registered tcp NFSv4.1 backchannel transport module.
> > > [    1.176066] workingset: timestamp_bits=46 max_order=19 bucket_order=0
> > > [    1.213547] NFS: Registering the id_resolver key type
> > > [    1.216026] Key type id_resolver registered
> > > [    1.216360] Key type id_legacy registered
> > > [    1.217343] nfs4filelayout_init: NFSv4 File Layout Driver Registering...
> > > [    1.217841] nfs4flexfilelayout_init: NFSv4 Flexfile Layout Driver Registering...
> > > [    1.220266] 9p: Installing v9fs 9p2000 file system support
> > > [    1.224198] NET: Registered PF_ALG protocol family
> > > [    1.225340] Block layer SCSI generic (bsg) driver version 0.4 loaded (major 250)
> > > [    1.227416] io scheduler mq-deadline registered
> > > [    1.227748] io scheduler kyber registered
> > > [    1.249381] pci-host-generic 30000000.pci: host bridge /soc/pci@30000000 ranges:
> > > [    1.251169] pci-host-generic 30000000.pci:       IO 0x0003000000..0x000300ffff -> 0x0000000000
> > > [    1.252302] pci-host-generic 30000000.pci:      MEM 0x0040000000..0x007fffffff -> 0x0040000000
> > > [    1.252770] pci-host-generic 30000000.pci:      MEM 0x0400000000..0x07ffffffff -> 0x0400000000
> > > [    1.254245] pci-host-generic 30000000.pci: Memory resource size exceeds max for 32 bits
> > > [    1.260809] pci-host-generic 30000000.pci: ECAM at [mem 0x30000000-0x3fffffff] for [bus 00-ff]
> > > [    1.264633] pci-host-generic 30000000.pci: PCI host bridge to bus 0000:00
> > > [    1.265205] pci_bus 0000:00: root bus resource [bus 00-ff]
> > > [    1.265504] pci_bus 0000:00: root bus resource [io  0x0000-0xffff]
> > > [    1.265799] pci_bus 0000:00: root bus resource [mem 0x40000000-0x7fffffff]
> > > [    1.266707] pci_bus 0000:00: root bus resource [mem 0x400000000-0x7ffffffff]
> > > [    1.268627] pci 0000:00:00.0: [1b36:0008] type 00 class 0x060000
> > > [    1.628806] Serial: 8250/16550 driver, 4 ports, IRQ sharing disabled
> > > [    1.648238] printk: console [ttyS0] disabled
> > > [    1.652252] 10000000.uart: ttyS0 at MMIO 0x10000000 (irq = 166, base_baud = 230400) is a 16550A
> > > [    1.656816] printk: console [ttyS0] enabled
> > > [    1.656816] printk: console [ttyS0] enabled
> > > [    1.657728] printk: bootconsole [uart8250] disabled
> > > [    1.657728] printk: bootconsole [uart8250] disabled
> > > [    1.810913] loop: module loaded
> > > [    1.813333] virtio_blk virtio1: 1/0/0 default/read/poll queues
> > > [    1.825357] virtio_blk virtio1: [vda] 1071932 512-byte logical blocks (549 MB/523 MiB)
> > > [    1.909650]  vda: vda1 vda2 vda3
> > > [    1.942916] tun: Universal TUN/TAP device driver, 1.6
> > > [    1.964238] e1000: Intel(R) PRO/1000 Network Driver
> > > [    1.964596] e1000: Copyright (c) 1999-2006 Intel Corporation.
> > > [    1.965214] e1000e: Intel(R) PRO/1000 Network Driver
> > > [    1.965496] e1000e: Copyright(c) 1999 - 2015 Intel Corporation.
> > > [    1.967174] ehci_hcd: USB 2.0 'Enhanced' Host Controller (EHCI) Driver
> > > [    1.967691] ehci-pci: EHCI PCI platform driver
> > > [    1.968378] ehci-platform: EHCI generic platform driver
> > > [    1.969031] ohci_hcd: USB 1.1 'Open' Host Controller (OHCI) Driver
> > > [    1.969540] ohci-pci: OHCI PCI platform driver
> > > [    1.970742] ohci-platform: OHCI generic platform driver
> > > [    1.974710] usbcore: registered new interface driver uas
> > > [    1.975701] usbcore: registered new interface driver usb-storage
> > > [    1.979125] mousedev: PS/2 mouse device common for all mice
> > > [    1.985774] goldfish_rtc 101000.rtc: registered as rtc0
> > > [    1.987831] goldfish_rtc 101000.rtc: setting system clock to 2022-08-25T10:45:53 UTC (1661424353)
> > > [    1.993669] syscon-poweroff soc:poweroff: pm_power_off already claimed for sbi_srst_power_off
> > > [    1.995212] syscon-poweroff: probe of soc:poweroff failed with error -16
> > > [    1.998593] sdhci: Secure Digital Host Controller Interface driver
> > > [    1.998909] sdhci: Copyright(c) Pierre Ossman
> > > [    1.999509] sdhci-pltfm: SDHCI platform and OF driver helper
> > > [    2.001283] usbcore: registered new interface driver usbhid
> > > [    2.001588] usbhid: USB HID core driver
> > > [    2.002927] riscv-pmu-sbi: SBI PMU extension is available
> > > [    2.004257] riscv-pmu-sbi: 16 firmware and 18 hardware counters
> > > [    2.017615] NET: Registered PF_INET6 protocol family
> > > [    2.032397] Segment Routing with IPv6
> > > [    2.032878] In-situ OAM (IOAM) with IPv6
> > > [    2.033574] sit: IPv6, IPv4 and MPLS over IPv4 tunneling driver
> > > [    2.037639] NET: Registered PF_PACKET protocol family
> > > [    2.039420] bridge: filtering via arp/ip/ip6tables is no longer available by default. Update your scripts to load br_netfilter if you need this.
> > > [    2.040579] 8021q: 802.1Q VLAN Support v1.8
> > > [    2.043124] 9pnet: Installing 9P2000 support
> > > [    2.043788] Key type dns_resolver registered
> > > [    2.050694] debug_vm_pgtable: [debug_vm_pgtable         ]: Validating architecture page table helpers
> > > [    2.145175] EXT4-fs (vda2): mounted filesystem with ordered data mode. Quota mode: disabled.
> > > [    2.146407] VFS: Mounted root (ext4 filesystem) readonly on device 254:2.
> > > [    2.150622] devtmpfs: mounted
> > > [    2.201842] Freeing unused kernel image (initmem) memory: 2204K
> > > [    2.228413] Run /sbin/init as init process
> > > [    2.242343] Run /etc/init as init process
> > > [    2.243725] Run /bin/init as init process
> > > [    2.244949] Run /bin/sh as init process
> > > sh: cannot set terminal process group (-1): Inappropriate ioctl for device
> > > sh: no job control in this shell
> > > sh-5.1#
> > > sh-5.1#
> > > sh-5.1# QEMU: Terminated
> > >
> > >
> > > Thank you.
> > >
> > > Regards
> > > Vaibhav Vivek Deshpande
> > >
> > >
> > >
> > >
> >
> > -=-=-=-=-=-=-=-=-=-=-=-
> > Links: You receive all messages sent to this group.
> > View/Reply Online (#58393): https://lists.yoctoproject.org/g/yocto/message/58393
> > Mute This Topic: https://lists.yoctoproject.org/mt/94368916/3618681
> > Group Owner: yocto+owner@lists.yoctoproject.org
> > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [zoran.stojsavljevic@gmail.com]
> > -=-=-=-=-=-=-=-=-=-=-=-
> >

