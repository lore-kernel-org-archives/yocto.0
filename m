Return-Path: <vdeshpande@ventanamicro.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0C0AECAAD4
	for <webhook@archiver.kernel.org>; Tue, 30 Aug 2022 09:34:23 +0000 (UTC)
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com
 [209.85.218.43])
 by mx.groups.io with SMTP id smtpd.web08.9492.1661852057898358801
 for <yocto@lists.yoctoproject.org>;
 Tue, 30 Aug 2022 02:34:18 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@ventanamicro.com header.s=google header.b=hEnXfuLe;
 spf=pass (domain: ventanamicro.com, ip: 209.85.218.43,
 mailfrom: vdeshpande@ventanamicro.com)
Received: by mail-ej1-f43.google.com with SMTP id kk26so20874357ejc.11
        for <yocto@lists.yoctoproject.org>;
 Tue, 30 Aug 2022 02:34:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc;
        bh=7MhQ77e0bpIvHvOkhuIaWF13xueXSCVne+KKdJYgX6Q=;
        b=hEnXfuLe1lYvu/bdwAvPQgJGoqMuYmQPjshzwgq3RPTrVtitUyswzZ3Pyub5Smk7LC
         eVtbwm6dTjmjXSn2ppVwYDRXvZJd0QFMlNOaTYuRo1A6m+UI4iaMiKfKrVxFqIqvx9LK
         dhh13R6Utb3XvopiEA/XK5vuuWQ0ltGvVQU0ChBmcS0jN3Ml5pfNpPCYrW4YTW3JKQLa
         XfbgoDWSXSA4crwq6lWi9FHnEshMLakD5pm7Br5FNUJeGWGTsh+RnwO5wHOoBWzk3ycD
         IA2gWzDXUGQF6MLkebgLiLXCaFr6qGRZfWWPjqGjrNQx8Zr8G+Uh/gLRpNksxVqpgpHS
         sgjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=7MhQ77e0bpIvHvOkhuIaWF13xueXSCVne+KKdJYgX6Q=;
        b=YDJ1h97uE+iNducnS4Y4plI+5SsFnswZJhnIsrsbIIJ1I49+v08AUdLF28QRXhKfAm
         Ex26eM7rWqYLZNVBoIUt8CC26VvJwvThvmkbTNbkOh1XO/+x0sl2ysTKB1eQEsAKGgdV
         jFlN0yZVRUTHEHa804dZjsXDOC8IAYU9keZQgUI2ii7KmV1jD7D6ODV+2/geMDQ1CX5z
         DVd5uIbQ/ZmaR8W66sybVxczes7X76RnfEUBI5vnsKmcex3hnrj0HazeJdBZC8tRXNTp
         A3TB6RCmQ0M545SSb/e78RT64etdgXM+Amp/dbPOYi2wtRzwJQ7tFVSQZZMsLWMnypK6
         K8rw==
X-Gm-Message-State: ACgBeo3YUk5V7BfAoQNW/hsngZSgXcuW3IYakjlbYjavr6Ta9o5j0uAr
	g/nz3K559X1bAGAt14Pckdshf930/qS0aH3Eo6tgDg==
X-Google-Smtp-Source: 
 AA6agR4auCRjWSSb1Nfuq8CufXyWI09mGzZobiIOftPEB7hflTJfLra77rMlkJUpoksK+8Iz2m9K0pWVd+bFGoRcwvk=
X-Received: by 2002:a17:907:8687:b0:730:7c7b:b9ce with SMTP id
 qa7-20020a170907868700b007307c7bb9cemr16063655ejc.656.1661852056026; Tue, 30
 Aug 2022 02:34:16 -0700 (PDT)
MIME-Version: 1.0
References: 
 <CAF=G1t5Q4sMLAxkuDATOdOqOCWcFXq=3-6BhpSc__B4Hu1tPRg@mail.gmail.com>
In-Reply-To: 
 <CAF=G1t5Q4sMLAxkuDATOdOqOCWcFXq=3-6BhpSc__B4Hu1tPRg@mail.gmail.com>
From: Vaibhav Deshpande <vdeshpande@ventanamicro.com>
Date: Tue, 30 Aug 2022 15:04:04 +0530
Message-ID: 
 <CAF=G1t7JPqGV6Mud-4hPuYjfWU_hwrdVvu4pdfEQ2J4NyOeW2g@mail.gmail.com>
Subject: Re: Error during linux booting
To: yocto+help@lists.yoctoproject.org, yocto@lists.yoctoproject.org,
	openembedded-core+owner@lists.openembedded.org,
	openembedded-core+help@lists.openembedded.org
Cc: Mayuresh Chitale <mchitale@ventanamicro.com>,
 Anup Patel <apatel@ventanamicro.com>
Content-Type: multipart/alternative; boundary="0000000000007817f105e7721539"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 30 Aug 2022 09:34:23 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57944

--0000000000007817f105e7721539
Content-Type: text/plain; charset="UTF-8"

++

Regards
Vaibhav Vivek Deshpande


On Thu, Aug 25, 2022 at 4:32 PM Vaibhav Deshpande <
vdeshpande@ventanamicro.com> wrote:

> Hello
>
> I am trying to build a yocto image from the kirkstone branch (
> https://github.com/openembedded/openembedded-core/tree/kirkstone) build
> gets successful but at the time of linux booting I am getting below error.
>
> [    0.000000] Linux version 5.19.0-rc4 (oe-user@oe-host)
> (riscv64-oe-linux-gcc (GCC) 11.3.0, GNU ld (GNU Binutils) 2.38.20220708) #1
> SMP Wed Aug 24 14:46:22 UTC 2022
> [    0.000000] random: crng init done
> [    0.000000] Machine model: Ventana VT1 QEMU
> [    0.000000] SBI specification v1.0 detected
> [    0.000000] SBI implementation ID=0x1 Version=0x10001
> [    0.000000] SBI TIME extension detected
> [    0.000000] SBI IPI extension detected
> [    0.000000] SBI RFENCE extension detected
> [    0.000000] SBI SRST extension detected
> [    0.000000] earlycon: uart8250 at MMIO 0x0000000010000000 (options '')
> [    0.000000] printk: bootconsole [uart8250] enabled
> [    0.000000] efi: EFI v2.90 by Das U-Boot
> [    0.000000] efi: RTPROP=0xfe73c020 SMBIOS=0xfe738000
> MEMRESERVE=0xfd3ca020
> [    0.000000] Zone ranges:
> [    0.000000]   DMA32    [mem 0x0000000080000000-0x00000000ffffffff]
> [    0.000000]   Normal   empty
> [    0.000000] Movable zone start for each node
> [    0.000000] Early memory node ranges
> [    0.000000]   node   0: [mem 0x0000000080000000-0x00000000fe737fff]
> [    0.000000]   node   0: [mem 0x00000000fe738000-0x00000000fe738fff]
> [    0.000000]   node   0: [mem 0x00000000fe739000-0x00000000fe73bfff]
> [    0.000000]   node   0: [mem 0x00000000fe73c000-0x00000000fe742fff]
> [    0.000000]   node   0: [mem 0x00000000fe743000-0x00000000fff77fff]
> [    0.000000]   node   0: [mem 0x00000000fff78000-0x00000000fff78fff]
> [    0.000000]   node   0: [mem 0x00000000fff79000-0x00000000ffffffff]
> [    0.000000] Initmem setup node 0 [mem
> 0x0000000080000000-0x00000000ffffffff]
> [    0.000000] SBI HSM extension detected
> [    0.000000] riscv: base ISA extensions acdfhim
> [    0.000000] riscv: ELF capabilities acdfim
> [    0.000000] riscv: Svinval extension supported
> [    0.000000] percpu: Embedded 18 pages/cpu s34488 r8192 d31048 u73728
> [    0.000000] Built 1 zonelists, mobility grouping on.  Total pages:
> 516096
> [    0.000000] Kernel command line: root=/dev/vda2 rootwait console=ttyS0
> earlycon=uart8250,mmio,0x10000000
> [    0.000000] Dentry cache hash table entries: 262144 (order: 9, 2097152
> bytes, linear)
> [    0.000000] Inode-cache hash table entries: 131072 (order: 8, 1048576
> bytes, linear)
> [    0.000000] mem auto-init: stack:off, heap alloc:off, heap free:off
> [    0.000000] Virtual kernel memory layout:
> [    0.000000]       fixmap : 0xff1bfffffee00000 - 0xff1bffffff000000
> (2048 kB)
> [    0.000000]       pci io : 0xff1bffffff000000 - 0xff1c000000000000   (
>  16 MB)
> [    0.000000]      vmemmap : 0xff1c000000000000 - 0xff20000000000000
> (1024 TB)
> [    0.000000]      vmalloc : 0xff20000000000000 - 0xff60000000000000
> (16384 TB)
> [    0.000000]       lowmem : 0xff60000000000000 - 0xff60000080000000
> (2048 MB)
> [    0.000000]       kernel : 0xffffffff80000000 - 0xffffffffffffffff
> (2047 MB)
> [    0.000000] Memory: 2034884K/2097152K available (7677K kernel code,
> 4908K rwdata, 4096K rodata, 2204K init, 463K bss, 62268K reserved, 0K
> cma-reserved)
> [    0.000000] SLUB: HWalign=64, Order=0-3, MinObjects=0, CPUs=16, Nodes=1
> [    0.000000] rcu: Hierarchical RCU implementation.
> [    0.000000] rcu: RCU restricting CPUs from NR_CPUS=64 to nr_cpu_ids=16.
> [    0.000000] rcu: RCU debug extended QS entry/exit.
> [    0.000000] Tracing variant of Tasks RCU enabled.
> [    0.000000] rcu: RCU calculated value of scheduler-enlistment delay is
> 25 jiffies.
> [    0.000000] rcu: Adjusting geometry for rcu_fanout_leaf=16,
> nr_cpu_ids=16
> [    0.000000] NR_IRQS: 64, nr_irqs: 64, preallocated irqs: 0
> [    0.000000] riscv-intc: 64 local interrupts mapped using AIA
> [    0.000000] riscv-imsic: imsics@28000000:  hart-index-bits: 4,
>  guest-index-bits: 3
> [    0.000000] riscv-imsic: imsics@28000000: group-index-bits: 0,
> group-index-shift: 24
> [    0.000000] riscv-imsic: imsics@28000000: mapped 255 interrupts for 16
> CPUs at 0x0000000028000000
> [    0.000000] riscv-imsic: imsics@28000000: enable/disable sync using
> interrupt 2
> [    0.000000] riscv-imsic: imsics@28000000: providing IPIs using
> interrupt 1
> [    0.000000] rcu: srcu_init: Setting srcu_struct sizes based on
> contention.
> [    0.000000] riscv_timer_init_dt: Registering clocksource cpuid [0]
> hartid [15]
> [    0.000000] clocksource: riscv_clocksource: mask: 0xffffffffffffffff
> max_cycles: 0x24e6a1710, max_idle_ns: 440795202120 ns
> [    0.000175] sched_clock: 64 bits at 10MHz, resolution 100ns, wraps
> every 4398046511100ns
> [    0.003481] Timer interrupt in S-mode is available via sstc extension
> [    0.025738] Console: colour dummy device 80x25
> [    0.029321] Calibrating delay loop (skipped), value calculated using
> timer frequency.. 20.00 BogoMIPS (lpj=40000)
> [    0.031650] pid_max: default: 32768 minimum: 301
> [    0.034091] LSM: Security Framework initializing
> [    0.040644] Mount-cache hash table entries: 4096 (order: 3, 32768
> bytes, linear)
> [    0.041871] Mountpoint-cache hash table entries: 4096 (order: 3, 32768
> bytes, linear)
> [    0.113999] cblist_init_generic: Setting adjustable number of callback
> queues.
> [    0.115760] cblist_init_generic: Setting shift to 4 and lim to 1.
> [    0.118488] riscv: ELF compat mode supported
> [    0.118927] ASID allocator using 16 bits (65536 entries)
> [    0.122786] rcu: Hierarchical SRCU implementation.
> [    0.128655] Remapping and enabling EFI services.
> [    0.138132] smp: Bringing up secondary CPUs ...
> [    0.289674] smp: Brought up 1 node, 16 CPUs
> [    0.370978] devtmpfs: initialized
> [    0.384472] clocksource: jiffies: mask: 0xffffffff max_cycles:
> 0xffffffff, max_idle_ns: 7645041785100000 ns
> [    0.385374] futex hash table entries: 4096 (order: 6, 262144 bytes,
> linear)
> [    0.395700] NET: Registered PF_NETLINK/PF_ROUTE protocol family
> [    0.402142] audit: initializing netlink subsys (disabled)
> [    0.405233] audit: type=2000 audit(0.332:1): state=initialized
> audit_enabled=0 res=1
> [    0.409992] cpuidle: using governor menu
> [    0.991252] riscv-aplic d000000.aplic: 96 interrupts forwared to MSI
> base 0x0000000028000000
> [    1.023056] HugeTLB registered 2.00 MiB page size, pre-allocated 0 pages
> [    1.032106] ACPI: Interpreter disabled.
> [    1.032688] iommu: Default domain type: Translated
> [    1.033087] iommu: DMA domain TLB invalidation policy: strict mode
> [    1.035341] SCSI subsystem initialized
> [    1.040840] usbcore: registered new interface driver usbfs
> [    1.041953] usbcore: registered new interface driver hub
> [    1.042680] usbcore: registered new device driver usb
> [    1.044787] Registered efivars operations
> [    1.066789] vgaarb: loaded
> [    1.070677] clocksource: Switched to clocksource riscv_clocksource
> [    1.074619] pnp: PnP ACPI: disabled
> [    1.116227] NET: Registered PF_INET protocol family
> [    1.126621] IP idents hash table entries: 32768 (order: 6, 262144
> bytes, linear)
> [    1.137534] tcp_listen_portaddr_hash hash table entries: 1024 (order:
> 3, 32768 bytes, linear)
> [    1.138660] Table-perturb hash table entries: 65536 (order: 6, 262144
> bytes, linear)
> [    1.139011] TCP established hash table entries: 16384 (order: 5, 131072
> bytes, linear)
> [    1.139754] TCP bind hash table entries: 16384 (order: 7, 524288 bytes,
> linear)
> [    1.141266] TCP: Hash tables configured (established 16384 bind 16384)
> [    1.144634] UDP hash table entries: 1024 (order: 4, 98304 bytes, linear)
> [    1.145365] UDP-Lite hash table entries: 1024 (order: 4, 98304 bytes,
> linear)
> [    1.148897] NET: Registered PF_UNIX/PF_LOCAL protocol family
> [    1.159051] RPC: Registered named UNIX socket transport module.
> [    1.159353] RPC: Registered udp transport module.
> [    1.159522] RPC: Registered tcp transport module.
> [    1.159699] RPC: Registered tcp NFSv4.1 backchannel transport module.
> [    1.176066] workingset: timestamp_bits=46 max_order=19 bucket_order=0
> [    1.213547] NFS: Registering the id_resolver key type
> [    1.216026] Key type id_resolver registered
> [    1.216360] Key type id_legacy registered
> [    1.217343] nfs4filelayout_init: NFSv4 File Layout Driver Registering...
> [    1.217841] nfs4flexfilelayout_init: NFSv4 Flexfile Layout Driver
> Registering...
> [    1.220266] 9p: Installing v9fs 9p2000 file system support
> [    1.224198] NET: Registered PF_ALG protocol family
> [    1.225340] Block layer SCSI generic (bsg) driver version 0.4 loaded
> (major 250)
> [    1.227416] io scheduler mq-deadline registered
> [    1.227748] io scheduler kyber registered
> [    1.249381] pci-host-generic 30000000.pci: host bridge /soc/pci@30000000
> ranges:
> [    1.251169] pci-host-generic 30000000.pci:       IO
> 0x0003000000..0x000300ffff -> 0x0000000000
> [    1.252302] pci-host-generic 30000000.pci:      MEM
> 0x0040000000..0x007fffffff -> 0x0040000000
> [    1.252770] pci-host-generic 30000000.pci:      MEM
> 0x0400000000..0x07ffffffff -> 0x0400000000
> [    1.254245] pci-host-generic 30000000.pci: Memory resource size exceeds
> max for 32 bits
> [    1.260809] pci-host-generic 30000000.pci: ECAM at [mem
> 0x30000000-0x3fffffff] for [bus 00-ff]
> [    1.264633] pci-host-generic 30000000.pci: PCI host bridge to bus
> 0000:00
> [    1.265205] pci_bus 0000:00: root bus resource [bus 00-ff]
> [    1.265504] pci_bus 0000:00: root bus resource [io  0x0000-0xffff]
> [    1.265799] pci_bus 0000:00: root bus resource [mem
> 0x40000000-0x7fffffff]
> [    1.266707] pci_bus 0000:00: root bus resource [mem
> 0x400000000-0x7ffffffff]
> [    1.268627] pci 0000:00:00.0: [1b36:0008] type 00 class 0x060000
> [    1.628806] Serial: 8250/16550 driver, 4 ports, IRQ sharing disabled
> [    1.648238] printk: console [ttyS0] disabled
> [    1.652252] 10000000.uart: ttyS0 at MMIO 0x10000000 (irq = 166,
> base_baud = 230400) is a 16550A
> [    1.656816] printk: console [ttyS0] enabled
> [    1.656816] printk: console [ttyS0] enabled
> [    1.657728] printk: bootconsole [uart8250] disabled
> [    1.657728] printk: bootconsole [uart8250] disabled
> [    1.810913] loop: module loaded
> [    1.813333] virtio_blk virtio1: 1/0/0 default/read/poll queues
> [    1.825357] virtio_blk virtio1: [vda] 1071932 512-byte logical blocks
> (549 MB/523 MiB)
> [    1.909650]  vda: vda1 vda2 vda3
> [    1.942916] tun: Universal TUN/TAP device driver, 1.6
> [    1.964238] e1000: Intel(R) PRO/1000 Network Driver
> [    1.964596] e1000: Copyright (c) 1999-2006 Intel Corporation.
> [    1.965214] e1000e: Intel(R) PRO/1000 Network Driver
> [    1.965496] e1000e: Copyright(c) 1999 - 2015 Intel Corporation.
> [    1.967174] ehci_hcd: USB 2.0 'Enhanced' Host Controller (EHCI) Driver
> [    1.967691] ehci-pci: EHCI PCI platform driver
> [    1.968378] ehci-platform: EHCI generic platform driver
> [    1.969031] ohci_hcd: USB 1.1 'Open' Host Controller (OHCI) Driver
> [    1.969540] ohci-pci: OHCI PCI platform driver
> [    1.970742] ohci-platform: OHCI generic platform driver
> [    1.974710] usbcore: registered new interface driver uas
> [    1.975701] usbcore: registered new interface driver usb-storage
> [    1.979125] mousedev: PS/2 mouse device common for all mice
> [    1.985774] goldfish_rtc 101000.rtc: registered as rtc0
> [    1.987831] goldfish_rtc 101000.rtc: setting system clock to
> 2022-08-25T10:45:53 UTC (1661424353)
> [    1.993669] syscon-poweroff soc:poweroff: pm_power_off already claimed
> for sbi_srst_power_off
> [    1.995212] syscon-poweroff: probe of soc:poweroff failed with error -16
> [    1.998593] sdhci: Secure Digital Host Controller Interface driver
> [    1.998909] sdhci: Copyright(c) Pierre Ossman
> [    1.999509] sdhci-pltfm: SDHCI platform and OF driver helper
> [    2.001283] usbcore: registered new interface driver usbhid
> [    2.001588] usbhid: USB HID core driver
> [    2.002927] riscv-pmu-sbi: SBI PMU extension is available
> [    2.004257] riscv-pmu-sbi: 16 firmware and 18 hardware counters
> [    2.017615] NET: Registered PF_INET6 protocol family
> [    2.032397] Segment Routing with IPv6
> [    2.032878] In-situ OAM (IOAM) with IPv6
> [    2.033574] sit: IPv6, IPv4 and MPLS over IPv4 tunneling driver
> [    2.037639] NET: Registered PF_PACKET protocol family
> [    2.039420] bridge: filtering via arp/ip/ip6tables is no longer
> available by default. Update your scripts to load br_netfilter if you need
> this.
> [    2.040579] 8021q: 802.1Q VLAN Support v1.8
> [    2.043124] 9pnet: Installing 9P2000 support
> [    2.043788] Key type dns_resolver registered
> [    2.050694] debug_vm_pgtable: [debug_vm_pgtable         ]: Validating
> architecture page table helpers
> [    2.145175] EXT4-fs (vda2): mounted filesystem with ordered data mode.
> Quota mode: disabled.
> [    2.146407] VFS: Mounted root (ext4 filesystem) readonly on device
> 254:2.
> [    2.150622] devtmpfs: mounted
> [    2.201842] Freeing unused kernel image (initmem) memory: 2204K
> [    2.228413] Run /sbin/init as init process
> [    2.242343] Run /etc/init as init process
> [    2.243725] Run /bin/init as init process
> [    2.244949] Run /bin/sh as init process
> sh: cannot set terminal process group (-1): Inappropriate ioctl for device
> sh: no job control in this shell
> sh-5.1#
> sh-5.1#
> sh-5.1# QEMU: Terminated
>
>
> Thank you.
>
> Regards
> Vaibhav Vivek Deshpande
>

--0000000000007817f105e7721539
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><a class=3D"gmail_plusreply" id=3D"plusReplyChip-0">++</a>=
<div><br clear=3D"all"><div><div dir=3D"ltr" class=3D"gmail_signature" data=
-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div>Regards<br></div><div>=
Vaibhav Vivek Deshpande</div></div></div></div><br></div></div><br><div cla=
ss=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Aug 25, 20=
22 at 4:32 PM Vaibhav Deshpande &lt;<a href=3D"mailto:vdeshpande@ventanamic=
ro.com">vdeshpande@ventanamicro.com</a>&gt; wrote:<br></div><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid =
rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hello<div><br></div><di=
v>I am trying to build a yocto image from the kirkstone branch=C2=A0(<a hre=
f=3D"https://github.com/openembedded/openembedded-core/tree/kirkstone" targ=
et=3D"_blank">https://github.com/openembedded/openembedded-core/tree/kirkst=
one</a>) build gets successful but at the time of linux booting I am gettin=
g below=C2=A0error.</div><div><br></div><div><font face=3D"monospace">[ =C2=
=A0 =C2=A00.000000] Linux version 5.19.0-rc4 (oe-user@oe-host) (riscv64-oe-=
linux-gcc (GCC) 11.3.0, GNU ld (GNU Binutils) 2.38.20220708) #1 SMP Wed Aug=
 24 14:46:22 UTC 2022<br>[ =C2=A0 =C2=A00.000000] random: crng init done<br=
>[ =C2=A0 =C2=A00.000000] Machine model: Ventana VT1 QEMU<br>[ =C2=A0 =C2=
=A00.000000] SBI specification v1.0 detected<br>[ =C2=A0 =C2=A00.000000] SB=
I implementation ID=3D0x1 Version=3D0x10001<br>[ =C2=A0 =C2=A00.000000] SBI=
 TIME extension detected<br>[ =C2=A0 =C2=A00.000000] SBI IPI extension dete=
cted<br>[ =C2=A0 =C2=A00.000000] SBI RFENCE extension detected<br>[ =C2=A0 =
=C2=A00.000000] SBI SRST extension detected<br>[ =C2=A0 =C2=A00.000000] ear=
lycon: uart8250 at MMIO 0x0000000010000000 (options &#39;&#39;)<br>[ =C2=A0=
 =C2=A00.000000] printk: bootconsole [uart8250] enabled<br>[ =C2=A0 =C2=A00=
.000000] efi: EFI v2.90 by Das U-Boot<br>[ =C2=A0 =C2=A00.000000] efi: RTPR=
OP=3D0xfe73c020 SMBIOS=3D0xfe738000 MEMRESERVE=3D0xfd3ca020 <br>[ =C2=A0 =
=C2=A00.000000] Zone ranges:<br>[ =C2=A0 =C2=A00.000000] =C2=A0 DMA32 =C2=
=A0 =C2=A0[mem 0x0000000080000000-0x00000000ffffffff]<br>[ =C2=A0 =C2=A00.0=
00000] =C2=A0 Normal =C2=A0 empty<br>[ =C2=A0 =C2=A00.000000] Movable zone =
start for each node<br>[ =C2=A0 =C2=A00.000000] Early memory node ranges<br=
>[ =C2=A0 =C2=A00.000000] =C2=A0 node =C2=A0 0: [mem 0x0000000080000000-0x0=
0000000fe737fff]<br>[ =C2=A0 =C2=A00.000000] =C2=A0 node =C2=A0 0: [mem 0x0=
0000000fe738000-0x00000000fe738fff]<br>[ =C2=A0 =C2=A00.000000] =C2=A0 node=
 =C2=A0 0: [mem 0x00000000fe739000-0x00000000fe73bfff]<br>[ =C2=A0 =C2=A00.=
000000] =C2=A0 node =C2=A0 0: [mem 0x00000000fe73c000-0x00000000fe742fff]<b=
r>[ =C2=A0 =C2=A00.000000] =C2=A0 node =C2=A0 0: [mem 0x00000000fe743000-0x=
00000000fff77fff]<br>[ =C2=A0 =C2=A00.000000] =C2=A0 node =C2=A0 0: [mem 0x=
00000000fff78000-0x00000000fff78fff]<br>[ =C2=A0 =C2=A00.000000] =C2=A0 nod=
e =C2=A0 0: [mem 0x00000000fff79000-0x00000000ffffffff]<br>[ =C2=A0 =C2=A00=
.000000] Initmem setup node 0 [mem 0x0000000080000000-0x00000000ffffffff]<b=
r>[ =C2=A0 =C2=A00.000000] SBI HSM extension detected<br>[ =C2=A0 =C2=A00.0=
00000] riscv: base ISA extensions acdfhim<br>[ =C2=A0 =C2=A00.000000] riscv=
: ELF capabilities acdfim<br>[ =C2=A0 =C2=A00.000000] riscv: Svinval extens=
ion supported<br>[ =C2=A0 =C2=A00.000000] percpu: Embedded 18 pages/cpu s34=
488 r8192 d31048 u73728<br>[ =C2=A0 =C2=A00.000000] Built 1 zonelists, mobi=
lity grouping on.=C2=A0 Total pages: 516096<br>[ =C2=A0 =C2=A00.000000] Ker=
nel command line: root=3D/dev/vda2 rootwait console=3DttyS0 earlycon=3Duart=
8250,mmio,0x10000000<br>[ =C2=A0 =C2=A00.000000] Dentry cache hash table en=
tries: 262144 (order: 9, 2097152 bytes, linear)<br>[ =C2=A0 =C2=A00.000000]=
 Inode-cache hash table entries: 131072 (order: 8, 1048576 bytes, linear)<b=
r>[ =C2=A0 =C2=A00.000000] mem auto-init: stack:off, heap alloc:off, heap f=
ree:off<br>[ =C2=A0 =C2=A00.000000] Virtual kernel memory layout:<br>[ =C2=
=A0 =C2=A00.000000] =C2=A0 =C2=A0 =C2=A0 fixmap : 0xff1bfffffee00000 - 0xff=
1bffffff000000 =C2=A0 (2048 kB)<br>[ =C2=A0 =C2=A00.000000] =C2=A0 =C2=A0 =
=C2=A0 pci io : 0xff1bffffff000000 - 0xff1c000000000000 =C2=A0 ( =C2=A016 M=
B)<br>[ =C2=A0 =C2=A00.000000] =C2=A0 =C2=A0 =C2=A0vmemmap : 0xff1c00000000=
0000 - 0xff20000000000000 =C2=A0 (1024 TB)<br>[ =C2=A0 =C2=A00.000000] =C2=
=A0 =C2=A0 =C2=A0vmalloc : 0xff20000000000000 - 0xff60000000000000 =C2=A0 (=
16384 TB)<br>[ =C2=A0 =C2=A00.000000] =C2=A0 =C2=A0 =C2=A0 lowmem : 0xff600=
00000000000 - 0xff60000080000000 =C2=A0 (2048 MB)<br>[ =C2=A0 =C2=A00.00000=
0] =C2=A0 =C2=A0 =C2=A0 kernel : 0xffffffff80000000 - 0xffffffffffffffff =
=C2=A0 (2047 MB)<br>[ =C2=A0 =C2=A00.000000] Memory: 2034884K/2097152K avai=
lable (7677K kernel code, 4908K rwdata, 4096K rodata, 2204K init, 463K bss,=
 62268K reserved, 0K cma-reserved)<br>[ =C2=A0 =C2=A00.000000] SLUB: HWalig=
n=3D64, Order=3D0-3, MinObjects=3D0, CPUs=3D16, Nodes=3D1<br>[ =C2=A0 =C2=
=A00.000000] rcu: Hierarchical RCU implementation.<br>[ =C2=A0 =C2=A00.0000=
00] rcu: 	RCU restricting CPUs from NR_CPUS=3D64 to nr_cpu_ids=3D16.<br>[ =
=C2=A0 =C2=A00.000000] rcu: 	RCU debug extended QS entry/exit.<br>[ =C2=A0 =
=C2=A00.000000] 	Tracing variant of Tasks RCU enabled.<br>[ =C2=A0 =C2=A00.=
000000] rcu: RCU calculated value of scheduler-enlistment delay is 25 jiffi=
es.<br>[ =C2=A0 =C2=A00.000000] rcu: Adjusting geometry for rcu_fanout_leaf=
=3D16, nr_cpu_ids=3D16<br>[ =C2=A0 =C2=A00.000000] NR_IRQS: 64, nr_irqs: 64=
, preallocated irqs: 0<br>[ =C2=A0 =C2=A00.000000] riscv-intc: 64 local int=
errupts mapped using AIA<br>[ =C2=A0 =C2=A00.000000] riscv-imsic: imsics@28=
000000: =C2=A0hart-index-bits: 4, =C2=A0guest-index-bits: 3<br>[ =C2=A0 =C2=
=A00.000000] riscv-imsic: imsics@28000000: group-index-bits: 0, group-index=
-shift: 24<br>[ =C2=A0 =C2=A00.000000] riscv-imsic: imsics@28000000: mapped=
 255 interrupts for 16 CPUs at 0x0000000028000000<br>[ =C2=A0 =C2=A00.00000=
0] riscv-imsic: imsics@28000000: enable/disable sync using interrupt 2<br>[=
 =C2=A0 =C2=A00.000000] riscv-imsic: imsics@28000000: providing IPIs using =
interrupt 1<br>[ =C2=A0 =C2=A00.000000] rcu: srcu_init: Setting srcu_struct=
 sizes based on contention.<br>[ =C2=A0 =C2=A00.000000] riscv_timer_init_dt=
: Registering clocksource cpuid [0] hartid [15]<br>[ =C2=A0 =C2=A00.000000]=
 clocksource: riscv_clocksource: mask: 0xffffffffffffffff max_cycles: 0x24e=
6a1710, max_idle_ns: 440795202120 ns<br>[ =C2=A0 =C2=A00.000175] sched_cloc=
k: 64 bits at 10MHz, resolution 100ns, wraps every 4398046511100ns<br>[ =C2=
=A0 =C2=A00.003481] Timer interrupt in S-mode is available via sstc extensi=
on<br>[ =C2=A0 =C2=A00.025738] Console: colour dummy device 80x25<br>[ =C2=
=A0 =C2=A00.029321] Calibrating delay loop (skipped), value calculated usin=
g timer frequency.. 20.00 BogoMIPS (lpj=3D40000)<br>[ =C2=A0 =C2=A00.031650=
] pid_max: default: 32768 minimum: 301<br>[ =C2=A0 =C2=A00.034091] LSM: Sec=
urity Framework initializing<br>[ =C2=A0 =C2=A00.040644] Mount-cache hash t=
able entries: 4096 (order: 3, 32768 bytes, linear)<br>[ =C2=A0 =C2=A00.0418=
71] Mountpoint-cache hash table entries: 4096 (order: 3, 32768 bytes, linea=
r)<br>[ =C2=A0 =C2=A00.113999] cblist_init_generic: Setting adjustable numb=
er of callback queues.<br>[ =C2=A0 =C2=A00.115760] cblist_init_generic: Set=
ting shift to 4 and lim to 1.<br>[ =C2=A0 =C2=A00.118488] riscv: ELF compat=
 mode supported<br>[ =C2=A0 =C2=A00.118927] ASID allocator using 16 bits (6=
5536 entries)<br>[ =C2=A0 =C2=A00.122786] rcu: Hierarchical SRCU implementa=
tion.<br>[ =C2=A0 =C2=A00.128655] Remapping and enabling EFI services.<br>[=
 =C2=A0 =C2=A00.138132] smp: Bringing up secondary CPUs ...<br>[ =C2=A0 =C2=
=A00.289674] smp: Brought up 1 node, 16 CPUs<br>[ =C2=A0 =C2=A00.370978] de=
vtmpfs: initialized<br>[ =C2=A0 =C2=A00.384472] clocksource: jiffies: mask:=
 0xffffffff max_cycles: 0xffffffff, max_idle_ns: 7645041785100000 ns<br>[ =
=C2=A0 =C2=A00.385374] futex hash table entries: 4096 (order: 6, 262144 byt=
es, linear)<br>[ =C2=A0 =C2=A00.395700] NET: Registered PF_NETLINK/PF_ROUTE=
 protocol family<br>[ =C2=A0 =C2=A00.402142] audit: initializing netlink su=
bsys (disabled)<br>[ =C2=A0 =C2=A00.405233] audit: type=3D2000 audit(0.332:=
1): state=3Dinitialized audit_enabled=3D0 res=3D1<br>[ =C2=A0 =C2=A00.40999=
2] cpuidle: using governor menu<br>[ =C2=A0 =C2=A00.991252] riscv-aplic d00=
0000.aplic: 96 interrupts forwared to MSI base 0x0000000028000000<br>[ =C2=
=A0 =C2=A01.023056] HugeTLB registered 2.00 MiB page size, pre-allocated 0 =
pages<br>[ =C2=A0 =C2=A01.032106] ACPI: Interpreter disabled.<br>[ =C2=A0 =
=C2=A01.032688] iommu: Default domain type: Translated <br>[ =C2=A0 =C2=A01=
.033087] iommu: DMA domain TLB invalidation policy: strict mode <br>[ =C2=
=A0 =C2=A01.035341] SCSI subsystem initialized<br>[ =C2=A0 =C2=A01.040840] =
usbcore: registered new interface driver usbfs<br>[ =C2=A0 =C2=A01.041953] =
usbcore: registered new interface driver hub<br>[ =C2=A0 =C2=A01.042680] us=
bcore: registered new device driver usb<br>[ =C2=A0 =C2=A01.044787] Registe=
red efivars operations<br>[ =C2=A0 =C2=A01.066789] vgaarb: loaded<br>[ =C2=
=A0 =C2=A01.070677] clocksource: Switched to clocksource riscv_clocksource<=
br>[ =C2=A0 =C2=A01.074619] pnp: PnP ACPI: disabled<br>[ =C2=A0 =C2=A01.116=
227] NET: Registered PF_INET protocol family<br>[ =C2=A0 =C2=A01.126621] IP=
 idents hash table entries: 32768 (order: 6, 262144 bytes, linear)<br>[ =C2=
=A0 =C2=A01.137534] tcp_listen_portaddr_hash hash table entries: 1024 (orde=
r: 3, 32768 bytes, linear)<br>[ =C2=A0 =C2=A01.138660] Table-perturb hash t=
able entries: 65536 (order: 6, 262144 bytes, linear)<br>[ =C2=A0 =C2=A01.13=
9011] TCP established hash table entries: 16384 (order: 5, 131072 bytes, li=
near)<br>[ =C2=A0 =C2=A01.139754] TCP bind hash table entries: 16384 (order=
: 7, 524288 bytes, linear)<br>[ =C2=A0 =C2=A01.141266] TCP: Hash tables con=
figured (established 16384 bind 16384)<br>[ =C2=A0 =C2=A01.144634] UDP hash=
 table entries: 1024 (order: 4, 98304 bytes, linear)<br>[ =C2=A0 =C2=A01.14=
5365] UDP-Lite hash table entries: 1024 (order: 4, 98304 bytes, linear)<br>=
[ =C2=A0 =C2=A01.148897] NET: Registered PF_UNIX/PF_LOCAL protocol family<b=
r>[ =C2=A0 =C2=A01.159051] RPC: Registered named UNIX socket transport modu=
le.<br>[ =C2=A0 =C2=A01.159353] RPC: Registered udp transport module.<br>[ =
=C2=A0 =C2=A01.159522] RPC: Registered tcp transport module.<br>[ =C2=A0 =
=C2=A01.159699] RPC: Registered tcp NFSv4.1 backchannel transport module.<b=
r>[ =C2=A0 =C2=A01.176066] workingset: timestamp_bits=3D46 max_order=3D19 b=
ucket_order=3D0<br>[ =C2=A0 =C2=A01.213547] NFS: Registering the id_resolve=
r key type<br>[ =C2=A0 =C2=A01.216026] Key type id_resolver registered<br>[=
 =C2=A0 =C2=A01.216360] Key type id_legacy registered<br>[ =C2=A0 =C2=A01.2=
17343] nfs4filelayout_init: NFSv4 File Layout Driver Registering...<br>[ =
=C2=A0 =C2=A01.217841] nfs4flexfilelayout_init: NFSv4 Flexfile Layout Drive=
r Registering...<br>[ =C2=A0 =C2=A01.220266] 9p: Installing v9fs 9p2000 fil=
e system support<br>[ =C2=A0 =C2=A01.224198] NET: Registered PF_ALG protoco=
l family<br>[ =C2=A0 =C2=A01.225340] Block layer SCSI generic (bsg) driver =
version 0.4 loaded (major 250)<br>[ =C2=A0 =C2=A01.227416] io scheduler mq-=
deadline registered<br>[ =C2=A0 =C2=A01.227748] io scheduler kyber register=
ed<br>[ =C2=A0 =C2=A01.249381] pci-host-generic 30000000.pci: host bridge /=
soc/pci@30000000 ranges:<br>[ =C2=A0 =C2=A01.251169] pci-host-generic 30000=
000.pci: =C2=A0 =C2=A0 =C2=A0 IO 0x0003000000..0x000300ffff -&gt; 0x0000000=
000<br>[ =C2=A0 =C2=A01.252302] pci-host-generic 30000000.pci: =C2=A0 =C2=
=A0 =C2=A0MEM 0x0040000000..0x007fffffff -&gt; 0x0040000000<br>[ =C2=A0 =C2=
=A01.252770] pci-host-generic 30000000.pci: =C2=A0 =C2=A0 =C2=A0MEM 0x04000=
00000..0x07ffffffff -&gt; 0x0400000000<br>[ =C2=A0 =C2=A01.254245] pci-host=
-generic 30000000.pci: Memory resource size exceeds max for 32 bits<br>[ =
=C2=A0 =C2=A01.260809] pci-host-generic 30000000.pci: ECAM at [mem 0x300000=
00-0x3fffffff] for [bus 00-ff]<br>[ =C2=A0 =C2=A01.264633] pci-host-generic=
 30000000.pci: PCI host bridge to bus 0000:00<br>[ =C2=A0 =C2=A01.265205] p=
ci_bus 0000:00: root bus resource [bus 00-ff]<br>[ =C2=A0 =C2=A01.265504] p=
ci_bus 0000:00: root bus resource [io =C2=A00x0000-0xffff]<br>[ =C2=A0 =C2=
=A01.265799] pci_bus 0000:00: root bus resource [mem 0x40000000-0x7fffffff]=
<br>[ =C2=A0 =C2=A01.266707] pci_bus 0000:00: root bus resource [mem 0x4000=
00000-0x7ffffffff]<br>[ =C2=A0 =C2=A01.268627] pci 0000:00:00.0: [1b36:0008=
] type 00 class 0x060000<br>[ =C2=A0 =C2=A01.628806] Serial: 8250/16550 dri=
ver, 4 ports, IRQ sharing disabled<br>[ =C2=A0 =C2=A01.648238] printk: cons=
ole [ttyS0] disabled<br>[ =C2=A0 =C2=A01.652252] 10000000.uart: ttyS0 at MM=
IO 0x10000000 (irq =3D 166, base_baud =3D 230400) is a 16550A<br>[ =C2=A0 =
=C2=A01.656816] printk: console [ttyS0] enabled<br>[ =C2=A0 =C2=A01.656816]=
 printk: console [ttyS0] enabled<br>[ =C2=A0 =C2=A01.657728] printk: bootco=
nsole [uart8250] disabled<br>[ =C2=A0 =C2=A01.657728] printk: bootconsole [=
uart8250] disabled<br>[ =C2=A0 =C2=A01.810913] loop: module loaded<br>[ =C2=
=A0 =C2=A01.813333] virtio_blk virtio1: 1/0/0 default/read/poll queues<br>[=
 =C2=A0 =C2=A01.825357] virtio_blk virtio1: [vda] 1071932 512-byte logical =
blocks (549 MB/523 MiB)<br>[ =C2=A0 =C2=A01.909650] =C2=A0vda: vda1 vda2 vd=
a3<br>[ =C2=A0 =C2=A01.942916] tun: Universal TUN/TAP device driver, 1.6<br=
>[ =C2=A0 =C2=A01.964238] e1000: Intel(R) PRO/1000 Network Driver<br>[ =C2=
=A0 =C2=A01.964596] e1000: Copyright (c) 1999-2006 Intel Corporation.<br>[ =
=C2=A0 =C2=A01.965214] e1000e: Intel(R) PRO/1000 Network Driver<br>[ =C2=A0=
 =C2=A01.965496] e1000e: Copyright(c) 1999 - 2015 Intel Corporation.<br>[ =
=C2=A0 =C2=A01.967174] ehci_hcd: USB 2.0 &#39;Enhanced&#39; Host Controller=
 (EHCI) Driver<br>[ =C2=A0 =C2=A01.967691] ehci-pci: EHCI PCI platform driv=
er<br>[ =C2=A0 =C2=A01.968378] ehci-platform: EHCI generic platform driver<=
br>[ =C2=A0 =C2=A01.969031] ohci_hcd: USB 1.1 &#39;Open&#39; Host Controlle=
r (OHCI) Driver<br>[ =C2=A0 =C2=A01.969540] ohci-pci: OHCI PCI platform dri=
ver<br>[ =C2=A0 =C2=A01.970742] ohci-platform: OHCI generic platform driver=
<br>[ =C2=A0 =C2=A01.974710] usbcore: registered new interface driver uas<b=
r>[ =C2=A0 =C2=A01.975701] usbcore: registered new interface driver usb-sto=
rage<br>[ =C2=A0 =C2=A01.979125] mousedev: PS/2 mouse device common for all=
 mice<br>[ =C2=A0 =C2=A01.985774] goldfish_rtc 101000.rtc: registered as rt=
c0<br>[ =C2=A0 =C2=A01.987831] goldfish_rtc 101000.rtc: setting system cloc=
k to 2022-08-25T10:45:53 UTC (1661424353)<br>[ =C2=A0 =C2=A01.993669] sysco=
n-poweroff soc:poweroff: pm_power_off already claimed for sbi_srst_power_of=
f<br>[ =C2=A0 =C2=A01.995212] syscon-poweroff: probe of soc:poweroff failed=
 with error -16<br>[ =C2=A0 =C2=A01.998593] sdhci: Secure Digital Host Cont=
roller Interface driver<br>[ =C2=A0 =C2=A01.998909] sdhci: Copyright(c) Pie=
rre Ossman<br>[ =C2=A0 =C2=A01.999509] sdhci-pltfm: SDHCI platform and OF d=
river helper<br>[ =C2=A0 =C2=A02.001283] usbcore: registered new interface =
driver usbhid<br>[ =C2=A0 =C2=A02.001588] usbhid: USB HID core driver<br>[ =
=C2=A0 =C2=A02.002927] riscv-pmu-sbi: SBI PMU extension is available<br>[ =
=C2=A0 =C2=A02.004257] riscv-pmu-sbi: 16 firmware and 18 hardware counters<=
br>[ =C2=A0 =C2=A02.017615] NET: Registered PF_INET6 protocol family<br>[ =
=C2=A0 =C2=A02.032397] Segment Routing with IPv6<br>[ =C2=A0 =C2=A02.032878=
] In-situ OAM (IOAM) with IPv6<br>[ =C2=A0 =C2=A02.033574] sit: IPv6, IPv4 =
and MPLS over IPv4 tunneling driver<br>[ =C2=A0 =C2=A02.037639] NET: Regist=
ered PF_PACKET protocol family<br>[ =C2=A0 =C2=A02.039420] bridge: filterin=
g via arp/ip/ip6tables is no longer available by default. Update your scrip=
ts to load br_netfilter if you need this.<br>[ =C2=A0 =C2=A02.040579] 8021q=
: 802.1Q VLAN Support v1.8<br>[ =C2=A0 =C2=A02.043124] 9pnet: Installing 9P=
2000 support<br>[ =C2=A0 =C2=A02.043788] Key type dns_resolver registered<b=
r>[ =C2=A0 =C2=A02.050694] debug_vm_pgtable: [debug_vm_pgtable =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 ]: Validating architecture page table helpers<br>[ =C2=A0=
 =C2=A02.145175] EXT4-fs (vda2): mounted filesystem with ordered data mode.=
 Quota mode: disabled.<br>[ =C2=A0 =C2=A02.146407] VFS: Mounted root (ext4 =
filesystem) readonly on device 254:2.<br>[ =C2=A0 =C2=A02.150622] devtmpfs:=
 mounted<br>[ =C2=A0 =C2=A02.201842] Freeing unused kernel image (initmem) =
memory: 2204K<br>[ =C2=A0 =C2=A02.228413] Run /sbin/init as init process<br=
>[ =C2=A0 =C2=A02.242343] Run /etc/init as init process<br>[ =C2=A0 =C2=A02=
.243725] Run /bin/init as init process<br>[ =C2=A0 =C2=A02.244949] Run /bin=
/sh as init process<br>sh: cannot set terminal process group (-1): Inapprop=
riate ioctl for device<br>sh: no job control in this shell<br>sh-5.1# <br>s=
h-5.1# <br>sh-5.1# QEMU: Terminated</font><br></div><div><font face=3D"mono=
space"><br></font></div><div><br></div><div><div><div dir=3D"ltr"><div dir=
=3D"ltr"><div>Thank you.</div><div><br></div><div>Regards<br></div><div>Vai=
bhav Vivek Deshpande</div></div></div></div></div></div>
</blockquote></div>

--0000000000007817f105e7721539--

