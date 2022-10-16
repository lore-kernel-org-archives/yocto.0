Return-Path: <vdeshpande@ventanamicro.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 08D43C4332F
	for <webhook@archiver.kernel.org>; Sun, 16 Oct 2022 18:32:28 +0000 (UTC)
Received: from mail-pj1-f49.google.com (mail-pj1-f49.google.com [209.85.216.49])
 by mx.groups.io with SMTP id smtpd.web12.32669.1665945145648943983
 for <yocto@lists.yoctoproject.org>;
 Sun, 16 Oct 2022 11:32:25 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@ventanamicro.com header.s=google header.b=BI3889eb;
 spf=pass (domain: ventanamicro.com, ip: 209.85.216.49, mailfrom: vdeshpande@ventanamicro.com)
Received: by mail-pj1-f49.google.com with SMTP id d7-20020a17090a2a4700b0020d268b1f02so12351363pjg.1
        for <yocto@lists.yoctoproject.org>; Sun, 16 Oct 2022 11:32:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google;
        h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=/xvknA2kPoEzApMy+/bA7bGBSPqfoxg8womCvVBJd7w=;
        b=BI3889eb0P/lufuiBqOFclWkH2VhSEwZ8V949aCXc5To5uWyUmRMTo7iJYuUNqVzdr
         DomBhBtFsQlPGX3IR0cO7CYGs2go3dVoap/JlekI3bJJ3/eyQ6s+Dr5Gs+Gh3bWKU4Q9
         h2OUrXJ9P//iRfLbXP2hmB91h75BnwlFAMmuCT2gvYl5BlLIdlt4GSIRpNOKWkL11w8B
         RjBQhCkXQplHY6lXr28tMvdAaU4UxXjv+3aw4XdfTn4ECOvqL9nks40buRL1WjhVR8MI
         uvgIQiIcetiNHU7hiqWzKbGnhY+pMG5zN90SjjJUjgSJK0frCRsfKOUFWHkpUNDIMXrW
         0TXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/xvknA2kPoEzApMy+/bA7bGBSPqfoxg8womCvVBJd7w=;
        b=OzPoML5hTQ6gPtUoryi+20GFUzOWAqvR7EZzXYa/1MdkHToN3ULjl3mHsdf4qSZqEX
         ZCffC7T5Zvx7Vt3dxzacsmhdTDcqXNHJkqF5GYFBDpCqfIWY2vibMwUP+t7ki4HDhekQ
         RAYAsLVH0g46xUTk8BnCDM2PkYRsEScI31ytMGW598juYPmxowNjgIJvI/Ewxxqli9aF
         KjVRnZcCd7Gx4kT6MpNHqrgP9zNQN+eJFtqw3DjJT5h5I9aCCj0+QWBCVPJOhM6YmPO6
         p2Jvs//HIwE6VR4h5KgwVGw1X3wvhymNHdeshPFRQNunGppQ3A7AoioElrUpoOfqY+/r
         CqyQ==
X-Gm-Message-State: ACrzQf2RRC4UZE2Zbpk/P4uV8zN74Z+bSbbCQ0WyVoedBrdSfT9VHYXi
	dr9ultVG3S9L82MPEYc3R2rS/n5zhvTpKG/7XlqQVw==
X-Google-Smtp-Source: AMsMyM5K11KbWxoZq98BoRzm+F/LpRRujc3J7t4kN1SeedsQ35EE8NPM336kidVmLuJoBhEBAhnr/3DUaDnpRBufp/g=
X-Received: by 2002:a17:902:70c7:b0:183:3e66:fe48 with SMTP id
 l7-20020a17090270c700b001833e66fe48mr8083564plt.165.1665945144732; Sun, 16
 Oct 2022 11:32:24 -0700 (PDT)
MIME-Version: 1.0
From: Vaibhav Deshpande <vdeshpande@ventanamicro.com>
Date: Mon, 17 Oct 2022 00:02:13 +0530
Message-ID: <CAF=G1t49Z0LXDGimbYsXmTXy1tjq-Hw-1wZHqZCQ1-K5a852MQ@mail.gmail.com>
Subject: Error during linux booting
To: yocto+help@lists.yoctoproject.org, yocto@lists.yoctoproject.org, 
	openembedded-core+help@lists.openembedded.org
Cc: Anup Patel <apatel@ventanamicro.com>, Mayuresh Chitale <mchitale@ventanamicro.com>
Content-Type: multipart/alternative; boundary="00000000000091463405eb2b1420"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 16 Oct 2022 18:32:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58341

--00000000000091463405eb2b1420
Content-Type: text/plain; charset="UTF-8"

Hello

I am trying to build a yocto image from the kirkstone branch (
https://github.com/openembedded/openembedded-core/tree/kirkstone) build
gets successful but at the time of linux booting I am getting below error.

[    0.000000] Linux version 5.19.0-rc4 (oe-user@oe-host)
(riscv64-oe-linux-gcc (GCC) 11.3.0, GNU ld (GNU Binutils) 2.38.20220708) #1
SMP Wed Aug 24 14:46:22 UTC 2022
[    0.000000] random: crng init done
[    0.000000] Machine model: Ventana VT1 QEMU
[    0.000000] SBI specification v1.0 detected
[    0.000000] SBI implementation ID=0x1 Version=0x10001
[    0.000000] SBI TIME extension detected
[    0.000000] SBI IPI extension detected
[    0.000000] SBI RFENCE extension detected
[    0.000000] SBI SRST extension detected
[    0.000000] earlycon: uart8250 at MMIO 0x0000000010000000 (options '')
[    0.000000] printk: bootconsole [uart8250] enabled
[    0.000000] efi: EFI v2.90 by Das U-Boot
[    0.000000] efi: RTPROP=0xfe73c020 SMBIOS=0xfe738000
MEMRESERVE=0xfd3ca020
[    0.000000] Zone ranges:
[    0.000000]   DMA32    [mem 0x0000000080000000-0x00000000ffffffff]
[    0.000000]   Normal   empty
[    0.000000] Movable zone start for each node
[    0.000000] Early memory node ranges
[    0.000000]   node   0: [mem 0x0000000080000000-0x00000000fe737fff]
[    0.000000]   node   0: [mem 0x00000000fe738000-0x00000000fe738fff]
[    0.000000]   node   0: [mem 0x00000000fe739000-0x00000000fe73bfff]
[    0.000000]   node   0: [mem 0x00000000fe73c000-0x00000000fe742fff]
[    0.000000]   node   0: [mem 0x00000000fe743000-0x00000000fff77fff]
[    0.000000]   node   0: [mem 0x00000000fff78000-0x00000000fff78fff]
[    0.000000]   node   0: [mem 0x00000000fff79000-0x00000000ffffffff]
[    0.000000] Initmem setup node 0 [mem
0x0000000080000000-0x00000000ffffffff]
[    0.000000] SBI HSM extension detected
[    0.000000] riscv: base ISA extensions acdfhim
[    0.000000] riscv: ELF capabilities acdfim
[    0.000000] riscv: Svinval extension supported
[    0.000000] percpu: Embedded 18 pages/cpu s34488 r8192 d31048 u73728
[    0.000000] Built 1 zonelists, mobility grouping on.  Total pages: 516096
[    0.000000] Kernel command line: root=/dev/vda2 rootwait console=ttyS0
earlycon=uart8250,mmio,0x10000000
[    0.000000] Dentry cache hash table entries: 262144 (order: 9, 2097152
bytes, linear)
[    0.000000] Inode-cache hash table entries: 131072 (order: 8, 1048576
bytes, linear)
[    0.000000] mem auto-init: stack:off, heap alloc:off, heap free:off
[    0.000000] Virtual kernel memory layout:
[    0.000000]       fixmap : 0xff1bfffffee00000 - 0xff1bffffff000000
(2048 kB)
[    0.000000]       pci io : 0xff1bffffff000000 - 0xff1c000000000000   (
 16 MB)
[    0.000000]      vmemmap : 0xff1c000000000000 - 0xff20000000000000
(1024 TB)
[    0.000000]      vmalloc : 0xff20000000000000 - 0xff60000000000000
(16384 TB)
[    0.000000]       lowmem : 0xff60000000000000 - 0xff60000080000000
(2048 MB)
[    0.000000]       kernel : 0xffffffff80000000 - 0xffffffffffffffff
(2047 MB)
[    0.000000] Memory: 2034884K/2097152K available (7677K kernel code,
4908K rwdata, 4096K rodata, 2204K init, 463K bss, 62268K reserved, 0K
cma-reserved)
[    0.000000] SLUB: HWalign=64, Order=0-3, MinObjects=0, CPUs=16, Nodes=1
[    0.000000] rcu: Hierarchical RCU implementation.
[    0.000000] rcu: RCU restricting CPUs from NR_CPUS=64 to nr_cpu_ids=16.
[    0.000000] rcu: RCU debug extended QS entry/exit.
[    0.000000] Tracing variant of Tasks RCU enabled.
[    0.000000] rcu: RCU calculated value of scheduler-enlistment delay is
25 jiffies.
[    0.000000] rcu: Adjusting geometry for rcu_fanout_leaf=16, nr_cpu_ids=16
[    0.000000] NR_IRQS: 64, nr_irqs: 64, preallocated irqs: 0
[    0.000000] riscv-intc: 64 local interrupts mapped using AIA
[    0.000000] riscv-imsic: imsics@28000000:  hart-index-bits: 4,
 guest-index-bits: 3
[    0.000000] riscv-imsic: imsics@28000000: group-index-bits: 0,
group-index-shift: 24
[    0.000000] riscv-imsic: imsics@28000000: mapped 255 interrupts for 16
CPUs at 0x0000000028000000
[    0.000000] riscv-imsic: imsics@28000000: enable/disable sync using
interrupt 2
[    0.000000] riscv-imsic: imsics@28000000: providing IPIs using interrupt
1
[    0.000000] rcu: srcu_init: Setting srcu_struct sizes based on
contention.
[    0.000000] riscv_timer_init_dt: Registering clocksource cpuid [0]
hartid [15]
[    0.000000] clocksource: riscv_clocksource: mask: 0xffffffffffffffff
max_cycles: 0x24e6a1710, max_idle_ns: 440795202120 ns
[    0.000175] sched_clock: 64 bits at 10MHz, resolution 100ns, wraps every
4398046511100ns
[    0.003481] Timer interrupt in S-mode is available via sstc extension
[    0.025738] Console: colour dummy device 80x25
[    0.029321] Calibrating delay loop (skipped), value calculated using
timer frequency.. 20.00 BogoMIPS (lpj=40000)
[    0.031650] pid_max: default: 32768 minimum: 301
[    0.034091] LSM: Security Framework initializing
[    0.040644] Mount-cache hash table entries: 4096 (order: 3, 32768 bytes,
linear)
[    0.041871] Mountpoint-cache hash table entries: 4096 (order: 3, 32768
bytes, linear)
[    0.113999] cblist_init_generic: Setting adjustable number of callback
queues.
[    0.115760] cblist_init_generic: Setting shift to 4 and lim to 1.
[    0.118488] riscv: ELF compat mode supported
[    0.118927] ASID allocator using 16 bits (65536 entries)
[    0.122786] rcu: Hierarchical SRCU implementation.
[    0.128655] Remapping and enabling EFI services.
[    0.138132] smp: Bringing up secondary CPUs ...
[    0.289674] smp: Brought up 1 node, 16 CPUs
[    0.370978] devtmpfs: initialized
[    0.384472] clocksource: jiffies: mask: 0xffffffff max_cycles:
0xffffffff, max_idle_ns: 7645041785100000 ns
[    0.385374] futex hash table entries: 4096 (order: 6, 262144 bytes,
linear)
[    0.395700] NET: Registered PF_NETLINK/PF_ROUTE protocol family
[    0.402142] audit: initializing netlink subsys (disabled)
[    0.405233] audit: type=2000 audit(0.332:1): state=initialized
audit_enabled=0 res=1
[    0.409992] cpuidle: using governor menu
[    0.991252] riscv-aplic d000000.aplic: 96 interrupts forwared to MSI
base 0x0000000028000000
[    1.023056] HugeTLB registered 2.00 MiB page size, pre-allocated 0 pages
[    1.032106] ACPI: Interpreter disabled.
[    1.032688] iommu: Default domain type: Translated
[    1.033087] iommu: DMA domain TLB invalidation policy: strict mode
[    1.035341] SCSI subsystem initialized
[    1.040840] usbcore: registered new interface driver usbfs
[    1.041953] usbcore: registered new interface driver hub
[    1.042680] usbcore: registered new device driver usb
[    1.044787] Registered efivars operations
[    1.066789] vgaarb: loaded
[    1.070677] clocksource: Switched to clocksource riscv_clocksource
[    1.074619] pnp: PnP ACPI: disabled
[    1.116227] NET: Registered PF_INET protocol family
[    1.126621] IP idents hash table entries: 32768 (order: 6, 262144 bytes,
linear)
[    1.137534] tcp_listen_portaddr_hash hash table entries: 1024 (order: 3,
32768 bytes, linear)
[    1.138660] Table-perturb hash table entries: 65536 (order: 6, 262144
bytes, linear)
[    1.139011] TCP established hash table entries: 16384 (order: 5, 131072
bytes, linear)
[    1.139754] TCP bind hash table entries: 16384 (order: 7, 524288 bytes,
linear)
[    1.141266] TCP: Hash tables configured (established 16384 bind 16384)
[    1.144634] UDP hash table entries: 1024 (order: 4, 98304 bytes, linear)
[    1.145365] UDP-Lite hash table entries: 1024 (order: 4, 98304 bytes,
linear)
[    1.148897] NET: Registered PF_UNIX/PF_LOCAL protocol family
[    1.159051] RPC: Registered named UNIX socket transport module.
[    1.159353] RPC: Registered udp transport module.
[    1.159522] RPC: Registered tcp transport module.
[    1.159699] RPC: Registered tcp NFSv4.1 backchannel transport module.
[    1.176066] workingset: timestamp_bits=46 max_order=19 bucket_order=0
[    1.213547] NFS: Registering the id_resolver key type
[    1.216026] Key type id_resolver registered
[    1.216360] Key type id_legacy registered
[    1.217343] nfs4filelayout_init: NFSv4 File Layout Driver Registering...
[    1.217841] nfs4flexfilelayout_init: NFSv4 Flexfile Layout Driver
Registering...
[    1.220266] 9p: Installing v9fs 9p2000 file system support
[    1.224198] NET: Registered PF_ALG protocol family
[    1.225340] Block layer SCSI generic (bsg) driver version 0.4 loaded
(major 250)
[    1.227416] io scheduler mq-deadline registered
[    1.227748] io scheduler kyber registered
[    1.249381] pci-host-generic 30000000.pci: host bridge /soc/pci@30000000
ranges:
[    1.251169] pci-host-generic 30000000.pci:       IO
0x0003000000..0x000300ffff -> 0x0000000000
[    1.252302] pci-host-generic 30000000.pci:      MEM
0x0040000000..0x007fffffff -> 0x0040000000
[    1.252770] pci-host-generic 30000000.pci:      MEM
0x0400000000..0x07ffffffff -> 0x0400000000
[    1.254245] pci-host-generic 30000000.pci: Memory resource size exceeds
max for 32 bits
[    1.260809] pci-host-generic 30000000.pci: ECAM at [mem
0x30000000-0x3fffffff] for [bus 00-ff]
[    1.264633] pci-host-generic 30000000.pci: PCI host bridge to bus 0000:00
[    1.265205] pci_bus 0000:00: root bus resource [bus 00-ff]
[    1.265504] pci_bus 0000:00: root bus resource [io  0x0000-0xffff]
[    1.265799] pci_bus 0000:00: root bus resource [mem
0x40000000-0x7fffffff]
[    1.266707] pci_bus 0000:00: root bus resource [mem
0x400000000-0x7ffffffff]
[    1.268627] pci 0000:00:00.0: [1b36:0008] type 00 class 0x060000
[    1.628806] Serial: 8250/16550 driver, 4 ports, IRQ sharing disabled
[    1.648238] printk: console [ttyS0] disabled
[    1.652252] 10000000.uart: ttyS0 at MMIO 0x10000000 (irq = 166,
base_baud = 230400) is a 16550A
[    1.656816] printk: console [ttyS0] enabled
[    1.656816] printk: console [ttyS0] enabled
[    1.657728] printk: bootconsole [uart8250] disabled
[    1.657728] printk: bootconsole [uart8250] disabled
[    1.810913] loop: module loaded
[    1.813333] virtio_blk virtio1: 1/0/0 default/read/poll queues
[    1.825357] virtio_blk virtio1: [vda] 1071932 512-byte logical blocks
(549 MB/523 MiB)
[    1.909650]  vda: vda1 vda2 vda3
[    1.942916] tun: Universal TUN/TAP device driver, 1.6
[    1.964238] e1000: Intel(R) PRO/1000 Network Driver
[    1.964596] e1000: Copyright (c) 1999-2006 Intel Corporation.
[    1.965214] e1000e: Intel(R) PRO/1000 Network Driver
[    1.965496] e1000e: Copyright(c) 1999 - 2015 Intel Corporation.
[    1.967174] ehci_hcd: USB 2.0 'Enhanced' Host Controller (EHCI) Driver
[    1.967691] ehci-pci: EHCI PCI platform driver
[    1.968378] ehci-platform: EHCI generic platform driver
[    1.969031] ohci_hcd: USB 1.1 'Open' Host Controller (OHCI) Driver
[    1.969540] ohci-pci: OHCI PCI platform driver
[    1.970742] ohci-platform: OHCI generic platform driver
[    1.974710] usbcore: registered new interface driver uas
[    1.975701] usbcore: registered new interface driver usb-storage
[    1.979125] mousedev: PS/2 mouse device common for all mice
[    1.985774] goldfish_rtc 101000.rtc: registered as rtc0
[    1.987831] goldfish_rtc 101000.rtc: setting system clock to
2022-08-25T10:45:53 UTC (1661424353)
[    1.993669] syscon-poweroff soc:poweroff: pm_power_off already claimed
for sbi_srst_power_off
[    1.995212] syscon-poweroff: probe of soc:poweroff failed with error -16
[    1.998593] sdhci: Secure Digital Host Controller Interface driver
[    1.998909] sdhci: Copyright(c) Pierre Ossman
[    1.999509] sdhci-pltfm: SDHCI platform and OF driver helper
[    2.001283] usbcore: registered new interface driver usbhid
[    2.001588] usbhid: USB HID core driver
[    2.002927] riscv-pmu-sbi: SBI PMU extension is available
[    2.004257] riscv-pmu-sbi: 16 firmware and 18 hardware counters
[    2.017615] NET: Registered PF_INET6 protocol family
[    2.032397] Segment Routing with IPv6
[    2.032878] In-situ OAM (IOAM) with IPv6
[    2.033574] sit: IPv6, IPv4 and MPLS over IPv4 tunneling driver
[    2.037639] NET: Registered PF_PACKET protocol family
[    2.039420] bridge: filtering via arp/ip/ip6tables is no longer
available by default. Update your scripts to load br_netfilter if you need
this.
[    2.040579] 8021q: 802.1Q VLAN Support v1.8
[    2.043124] 9pnet: Installing 9P2000 support
[    2.043788] Key type dns_resolver registered
[    2.050694] debug_vm_pgtable: [debug_vm_pgtable         ]: Validating
architecture page table helpers
[    2.145175] EXT4-fs (vda2): mounted filesystem with ordered data mode.
Quota mode: disabled.
[    2.146407] VFS: Mounted root (ext4 filesystem) readonly on device 254:2.
[    2.150622] devtmpfs: mounted
[    2.201842] Freeing unused kernel image (initmem) memory: 2204K
[    2.228413] Run /sbin/init as init process
[    2.242343] Run /etc/init as init process
[    2.243725] Run /bin/init as init process
[    2.244949] Run /bin/sh as init process
sh: cannot set terminal process group (-1): Inappropriate ioctl for device
sh: no job control in this shell
sh-5.1#
sh-5.1#
sh-5.1# QEMU: Terminated


Thank you.

Regards
Vaibhav Vivek Deshpande

--00000000000091463405eb2b1420
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><span style=3D"color:rgb(80,0,80)">Hello</span><div style=
=3D"color:rgb(80,0,80)"><br></div><div style=3D"color:rgb(80,0,80)">I am tr=
ying to build a yocto image from the kirkstone branch=C2=A0(<a href=3D"http=
s://github.com/openembedded/openembedded-core/tree/kirkstone" target=3D"_bl=
ank">https://github.com/openembedded/openembedded-core/tree/kirkstone</a>) =
build gets successful but at the time of linux booting I am getting below=
=C2=A0error.</div><div style=3D"color:rgb(80,0,80)"><br></div><div style=3D=
"color:rgb(80,0,80)"><font face=3D"monospace">[ =C2=A0 =C2=A00.000000] Linu=
x version 5.19.0-rc4 (oe-user@oe-host) (riscv64-oe-linux-gcc (GCC) 11.3.0, =
GNU ld (GNU Binutils) 2.38.20220708) #1 SMP Wed Aug 24 14:46:22 UTC 2022<br=
>[ =C2=A0 =C2=A00.000000] random: crng init done<br>[ =C2=A0 =C2=A00.000000=
] Machine model: Ventana VT1 QEMU<br>[ =C2=A0 =C2=A00.000000] SBI specifica=
tion v1.0 detected<br>[ =C2=A0 =C2=A00.000000] SBI implementation ID=3D0x1 =
Version=3D0x10001<br>[ =C2=A0 =C2=A00.000000] SBI TIME extension detected<b=
r>[ =C2=A0 =C2=A00.000000] SBI IPI extension detected<br>[ =C2=A0 =C2=A00.0=
00000] SBI RFENCE extension detected<br>[ =C2=A0 =C2=A00.000000] SBI SRST e=
xtension detected<br>[ =C2=A0 =C2=A00.000000] earlycon: uart8250 at MMIO 0x=
0000000010000000 (options &#39;&#39;)<br>[ =C2=A0 =C2=A00.000000] printk: b=
ootconsole [uart8250] enabled<br>[ =C2=A0 =C2=A00.000000] efi: EFI v2.90 by=
 Das U-Boot<br>[ =C2=A0 =C2=A00.000000] efi: RTPROP=3D0xfe73c020 SMBIOS=3D0=
xfe738000 MEMRESERVE=3D0xfd3ca020<br>[ =C2=A0 =C2=A00.000000] Zone ranges:<=
br>[ =C2=A0 =C2=A00.000000] =C2=A0 DMA32 =C2=A0 =C2=A0[mem 0x00000000800000=
00-0x00000000ffffffff]<br>[ =C2=A0 =C2=A00.000000] =C2=A0 Normal =C2=A0 emp=
ty<br>[ =C2=A0 =C2=A00.000000] Movable zone start for each node<br>[ =C2=A0=
 =C2=A00.000000] Early memory node ranges<br>[ =C2=A0 =C2=A00.000000] =C2=
=A0 node =C2=A0 0: [mem 0x0000000080000000-0x00000000fe737fff]<br>[ =C2=A0 =
=C2=A00.000000] =C2=A0 node =C2=A0 0: [mem 0x00000000fe738000-0x00000000fe7=
38fff]<br>[ =C2=A0 =C2=A00.000000] =C2=A0 node =C2=A0 0: [mem 0x00000000fe7=
39000-0x00000000fe73bfff]<br>[ =C2=A0 =C2=A00.000000] =C2=A0 node =C2=A0 0:=
 [mem 0x00000000fe73c000-0x00000000fe742fff]<br>[ =C2=A0 =C2=A00.000000] =
=C2=A0 node =C2=A0 0: [mem 0x00000000fe743000-0x00000000fff77fff]<br>[ =C2=
=A0 =C2=A00.000000] =C2=A0 node =C2=A0 0: [mem 0x00000000fff78000-0x0000000=
0fff78fff]<br>[ =C2=A0 =C2=A00.000000] =C2=A0 node =C2=A0 0: [mem 0x0000000=
0fff79000-0x00000000ffffffff]<br>[ =C2=A0 =C2=A00.000000] Initmem setup nod=
e 0 [mem 0x0000000080000000-0x00000000ffffffff]<br>[ =C2=A0 =C2=A00.000000]=
 SBI HSM extension detected<br>[ =C2=A0 =C2=A00.000000] riscv: base ISA ext=
ensions acdfhim<br>[ =C2=A0 =C2=A00.000000] riscv: ELF capabilities acdfim<=
br>[ =C2=A0 =C2=A00.000000] riscv: Svinval extension supported<br>[ =C2=A0 =
=C2=A00.000000] percpu: Embedded 18 pages/cpu s34488 r8192 d31048 u73728<br=
>[ =C2=A0 =C2=A00.000000] Built 1 zonelists, mobility grouping on.=C2=A0 To=
tal pages: 516096<br>[ =C2=A0 =C2=A00.000000] Kernel command line: root=3D/=
dev/vda2 rootwait console=3DttyS0 earlycon=3Duart8250,mmio,0x10000000<br>[ =
=C2=A0 =C2=A00.000000] Dentry cache hash table entries: 262144 (order: 9, 2=
097152 bytes, linear)<br>[ =C2=A0 =C2=A00.000000] Inode-cache hash table en=
tries: 131072 (order: 8, 1048576 bytes, linear)<br>[ =C2=A0 =C2=A00.000000]=
 mem auto-init: stack:off, heap alloc:off, heap free:off<br>[ =C2=A0 =C2=A0=
0.000000] Virtual kernel memory layout:<br>[ =C2=A0 =C2=A00.000000] =C2=A0 =
=C2=A0 =C2=A0 fixmap : 0xff1bfffffee00000 - 0xff1bffffff000000 =C2=A0 (2048=
 kB)<br>[ =C2=A0 =C2=A00.000000] =C2=A0 =C2=A0 =C2=A0 pci io : 0xff1bffffff=
000000 - 0xff1c000000000000 =C2=A0 ( =C2=A016 MB)<br>[ =C2=A0 =C2=A00.00000=
0] =C2=A0 =C2=A0 =C2=A0vmemmap : 0xff1c000000000000 - 0xff20000000000000 =
=C2=A0 (1024 TB)<br>[ =C2=A0 =C2=A00.000000] =C2=A0 =C2=A0 =C2=A0vmalloc : =
0xff20000000000000 - 0xff60000000000000 =C2=A0 (16384 TB)<br>[ =C2=A0 =C2=
=A00.000000] =C2=A0 =C2=A0 =C2=A0 lowmem : 0xff60000000000000 - 0xff6000008=
0000000 =C2=A0 (2048 MB)<br>[ =C2=A0 =C2=A00.000000] =C2=A0 =C2=A0 =C2=A0 k=
ernel : 0xffffffff80000000 - 0xffffffffffffffff =C2=A0 (2047 MB)<br>[ =C2=
=A0 =C2=A00.000000] Memory: 2034884K/2097152K available (7677K kernel code,=
 4908K rwdata, 4096K rodata, 2204K init, 463K bss, 62268K reserved, 0K cma-=
reserved)<br>[ =C2=A0 =C2=A00.000000] SLUB: HWalign=3D64, Order=3D0-3, MinO=
bjects=3D0, CPUs=3D16, Nodes=3D1<br>[ =C2=A0 =C2=A00.000000] rcu: Hierarchi=
cal RCU implementation.<br>[ =C2=A0 =C2=A00.000000] rcu: RCU restricting CP=
Us from NR_CPUS=3D64 to nr_cpu_ids=3D16.<br>[ =C2=A0 =C2=A00.000000] rcu: R=
CU debug extended QS entry/exit.<br>[ =C2=A0 =C2=A00.000000] Tracing varian=
t of Tasks RCU enabled.<br>[ =C2=A0 =C2=A00.000000] rcu: RCU calculated val=
ue of scheduler-enlistment delay is 25 jiffies.<br>[ =C2=A0 =C2=A00.000000]=
 rcu: Adjusting geometry for rcu_fanout_leaf=3D16, nr_cpu_ids=3D16<br>[ =C2=
=A0 =C2=A00.000000] NR_IRQS: 64, nr_irqs: 64, preallocated irqs: 0<br>[ =C2=
=A0 =C2=A00.000000] riscv-intc: 64 local interrupts mapped using AIA<br>[ =
=C2=A0 =C2=A00.000000] riscv-imsic: imsics@28000000: =C2=A0hart-index-bits:=
 4, =C2=A0guest-index-bits: 3<br>[ =C2=A0 =C2=A00.000000] riscv-imsic: imsi=
cs@28000000: group-index-bits: 0, group-index-shift: 24<br>[ =C2=A0 =C2=A00=
.000000] riscv-imsic: imsics@28000000: mapped 255 interrupts for 16 CPUs at=
 0x0000000028000000<br>[ =C2=A0 =C2=A00.000000] riscv-imsic: imsics@2800000=
0: enable/disable sync using interrupt 2<br>[ =C2=A0 =C2=A00.000000] riscv-=
imsic: imsics@28000000: providing IPIs using interrupt 1<br>[ =C2=A0 =C2=A0=
0.000000] rcu: srcu_init: Setting srcu_struct sizes based on contention.<br=
>[ =C2=A0 =C2=A00.000000] riscv_timer_init_dt: Registering clocksource cpui=
d [0] hartid [15]<br>[ =C2=A0 =C2=A00.000000] clocksource: riscv_clocksourc=
e: mask: 0xffffffffffffffff max_cycles: 0x24e6a1710, max_idle_ns: 440795202=
120 ns<br>[ =C2=A0 =C2=A00.000175] sched_clock: 64 bits at 10MHz, resolutio=
n 100ns, wraps every 4398046511100ns<br>[ =C2=A0 =C2=A00.003481] Timer inte=
rrupt in S-mode is available via sstc extension<br>[ =C2=A0 =C2=A00.025738]=
 Console: colour dummy device 80x25<br>[ =C2=A0 =C2=A00.029321] Calibrating=
 delay loop (skipped), value calculated using timer frequency.. 20.00 BogoM=
IPS (lpj=3D40000)<br>[ =C2=A0 =C2=A00.031650] pid_max: default: 32768 minim=
um: 301<br>[ =C2=A0 =C2=A00.034091] LSM: Security Framework initializing<br=
>[ =C2=A0 =C2=A00.040644] Mount-cache hash table entries: 4096 (order: 3, 3=
2768 bytes, linear)<br>[ =C2=A0 =C2=A00.041871] Mountpoint-cache hash table=
 entries: 4096 (order: 3, 32768 bytes, linear)<br>[ =C2=A0 =C2=A00.113999] =
cblist_init_generic: Setting adjustable number of callback queues.<br>[ =C2=
=A0 =C2=A00.115760] cblist_init_generic: Setting shift to 4 and lim to 1.<b=
r>[ =C2=A0 =C2=A00.118488] riscv: ELF compat mode supported<br>[ =C2=A0 =C2=
=A00.118927] ASID allocator using 16 bits (65536 entries)<br>[ =C2=A0 =C2=
=A00.122786] rcu: Hierarchical SRCU implementation.<br>[ =C2=A0 =C2=A00.128=
655] Remapping and enabling EFI services.<br>[ =C2=A0 =C2=A00.138132] smp: =
Bringing up secondary CPUs ...<br>[ =C2=A0 =C2=A00.289674] smp: Brought up =
1 node, 16 CPUs<br>[ =C2=A0 =C2=A00.370978] devtmpfs: initialized<br>[ =C2=
=A0 =C2=A00.384472] clocksource: jiffies: mask: 0xffffffff max_cycles: 0xff=
ffffff, max_idle_ns: 7645041785100000 ns<br>[ =C2=A0 =C2=A00.385374] futex =
hash table entries: 4096 (order: 6, 262144 bytes, linear)<br>[ =C2=A0 =C2=
=A00.395700] NET: Registered PF_NETLINK/PF_ROUTE protocol family<br>[ =C2=
=A0 =C2=A00.402142] audit: initializing netlink subsys (disabled)<br>[ =C2=
=A0 =C2=A00.405233] audit: type=3D2000 audit(0.332:1): state=3Dinitialized =
audit_enabled=3D0 res=3D1<br>[ =C2=A0 =C2=A00.409992] cpuidle: using govern=
or menu<br>[ =C2=A0 =C2=A00.991252] riscv-aplic d000000.aplic: 96 interrupt=
s forwared to MSI base 0x0000000028000000<br>[ =C2=A0 =C2=A01.023056] HugeT=
LB registered 2.00 MiB page size, pre-allocated 0 pages<br>[ =C2=A0 =C2=A01=
.032106] ACPI: Interpreter disabled.<br>[ =C2=A0 =C2=A01.032688] iommu: Def=
ault domain type: Translated<br>[ =C2=A0 =C2=A01.033087] iommu: DMA domain =
TLB invalidation policy: strict mode<br>[ =C2=A0 =C2=A01.035341] SCSI subsy=
stem initialized<br>[ =C2=A0 =C2=A01.040840] usbcore: registered new interf=
ace driver usbfs<br>[ =C2=A0 =C2=A01.041953] usbcore: registered new interf=
ace driver hub<br>[ =C2=A0 =C2=A01.042680] usbcore: registered new device d=
river usb<br>[ =C2=A0 =C2=A01.044787] Registered efivars operations<br>[ =
=C2=A0 =C2=A01.066789] vgaarb: loaded<br>[ =C2=A0 =C2=A01.070677] clocksour=
ce: Switched to clocksource riscv_clocksource<br>[ =C2=A0 =C2=A01.074619] p=
np: PnP ACPI: disabled<br>[ =C2=A0 =C2=A01.116227] NET: Registered PF_INET =
protocol family<br>[ =C2=A0 =C2=A01.126621] IP idents hash table entries: 3=
2768 (order: 6, 262144 bytes, linear)<br>[ =C2=A0 =C2=A01.137534] tcp_liste=
n_portaddr_hash hash table entries: 1024 (order: 3, 32768 bytes, linear)<br=
>[ =C2=A0 =C2=A01.138660] Table-perturb hash table entries: 65536 (order: 6=
, 262144 bytes, linear)<br>[ =C2=A0 =C2=A01.139011] TCP established hash ta=
ble entries: 16384 (order: 5, 131072 bytes, linear)<br>[ =C2=A0 =C2=A01.139=
754] TCP bind hash table entries: 16384 (order: 7, 524288 bytes, linear)<br=
>[ =C2=A0 =C2=A01.141266] TCP: Hash tables configured (established 16384 bi=
nd 16384)<br>[ =C2=A0 =C2=A01.144634] UDP hash table entries: 1024 (order: =
4, 98304 bytes, linear)<br>[ =C2=A0 =C2=A01.145365] UDP-Lite hash table ent=
ries: 1024 (order: 4, 98304 bytes, linear)<br>[ =C2=A0 =C2=A01.148897] NET:=
 Registered PF_UNIX/PF_LOCAL protocol family<br>[ =C2=A0 =C2=A01.159051] RP=
C: Registered named UNIX socket transport module.<br>[ =C2=A0 =C2=A01.15935=
3] RPC: Registered udp transport module.<br>[ =C2=A0 =C2=A01.159522] RPC: R=
egistered tcp transport module.<br>[ =C2=A0 =C2=A01.159699] RPC: Registered=
 tcp NFSv4.1 backchannel transport module.<br>[ =C2=A0 =C2=A01.176066] work=
ingset: timestamp_bits=3D46 max_order=3D19 bucket_order=3D0<br>[ =C2=A0 =C2=
=A01.213547] NFS: Registering the id_resolver key type<br>[ =C2=A0 =C2=A01.=
216026] Key type id_resolver registered<br>[ =C2=A0 =C2=A01.216360] Key typ=
e id_legacy registered<br>[ =C2=A0 =C2=A01.217343] nfs4filelayout_init: NFS=
v4 File Layout Driver Registering...<br>[ =C2=A0 =C2=A01.217841] nfs4flexfi=
lelayout_init: NFSv4 Flexfile Layout Driver Registering...<br>[ =C2=A0 =C2=
=A01.220266] 9p: Installing v9fs 9p2000 file system support<br>[ =C2=A0 =C2=
=A01.224198] NET: Registered PF_ALG protocol family<br>[ =C2=A0 =C2=A01.225=
340] Block layer SCSI generic (bsg) driver version 0.4 loaded (major 250)<b=
r>[ =C2=A0 =C2=A01.227416] io scheduler mq-deadline registered<br>[ =C2=A0 =
=C2=A01.227748] io scheduler kyber registered<br>[ =C2=A0 =C2=A01.249381] p=
ci-host-generic 30000000.pci: host bridge /soc/pci@30000000 ranges:<br>[ =
=C2=A0 =C2=A01.251169] pci-host-generic 30000000.pci: =C2=A0 =C2=A0 =C2=A0 =
IO 0x0003000000..0x000300ffff -&gt; 0x0000000000<br>[ =C2=A0 =C2=A01.252302=
] pci-host-generic 30000000.pci: =C2=A0 =C2=A0 =C2=A0MEM 0x0040000000..0x00=
7fffffff -&gt; 0x0040000000<br>[ =C2=A0 =C2=A01.252770] pci-host-generic 30=
000000.pci: =C2=A0 =C2=A0 =C2=A0MEM 0x0400000000..0x07ffffffff -&gt; 0x0400=
000000<br>[ =C2=A0 =C2=A01.254245] pci-host-generic 30000000.pci: Memory re=
source size exceeds max for 32 bits<br>[ =C2=A0 =C2=A01.260809] pci-host-ge=
neric 30000000.pci: ECAM at [mem 0x30000000-0x3fffffff] for [bus 00-ff]<br>=
[ =C2=A0 =C2=A01.264633] pci-host-generic 30000000.pci: PCI host bridge to =
bus 0000:00<br>[ =C2=A0 =C2=A01.265205] pci_bus 0000:00: root bus resource =
[bus 00-ff]<br>[ =C2=A0 =C2=A01.265504] pci_bus 0000:00: root bus resource =
[io =C2=A00x0000-0xffff]<br>[ =C2=A0 =C2=A01.265799] pci_bus 0000:00: root =
bus resource [mem 0x40000000-0x7fffffff]<br>[ =C2=A0 =C2=A01.266707] pci_bu=
s 0000:00: root bus resource [mem 0x400000000-0x7ffffffff]<br>[ =C2=A0 =C2=
=A01.268627] pci 0000:00:00.0: [1b36:0008] type 00 class 0x060000<br>[ =C2=
=A0 =C2=A01.628806] Serial: 8250/16550 driver, 4 ports, IRQ sharing disable=
d<br>[ =C2=A0 =C2=A01.648238] printk: console [ttyS0] disabled<br>[ =C2=A0 =
=C2=A01.652252] 10000000.uart: ttyS0 at MMIO 0x10000000 (irq =3D 166, base_=
baud =3D 230400) is a 16550A<br>[ =C2=A0 =C2=A01.656816] printk: console [t=
tyS0] enabled<br>[ =C2=A0 =C2=A01.656816] printk: console [ttyS0] enabled<b=
r>[ =C2=A0 =C2=A01.657728] printk: bootconsole [uart8250] disabled<br>[ =C2=
=A0 =C2=A01.657728] printk: bootconsole [uart8250] disabled<br>[ =C2=A0 =C2=
=A01.810913] loop: module loaded<br>[ =C2=A0 =C2=A01.813333] virtio_blk vir=
tio1: 1/0/0 default/read/poll queues<br>[ =C2=A0 =C2=A01.825357] virtio_blk=
 virtio1: [vda] 1071932 512-byte logical blocks (549 MB/523 MiB)<br>[ =C2=
=A0 =C2=A01.909650] =C2=A0vda: vda1 vda2 vda3<br>[ =C2=A0 =C2=A01.942916] t=
un: Universal TUN/TAP device driver, 1.6<br>[ =C2=A0 =C2=A01.964238] e1000:=
 Intel(R) PRO/1000 Network Driver<br>[ =C2=A0 =C2=A01.964596] e1000: Copyri=
ght (c) 1999-2006 Intel Corporation.<br>[ =C2=A0 =C2=A01.965214] e1000e: In=
tel(R) PRO/1000 Network Driver<br>[ =C2=A0 =C2=A01.965496] e1000e: Copyrigh=
t(c) 1999 - 2015 Intel Corporation.<br>[ =C2=A0 =C2=A01.967174] ehci_hcd: U=
SB 2.0 &#39;Enhanced&#39; Host Controller (EHCI) Driver<br>[ =C2=A0 =C2=A01=
.967691] ehci-pci: EHCI PCI platform driver<br>[ =C2=A0 =C2=A01.968378] ehc=
i-platform: EHCI generic platform driver<br>[ =C2=A0 =C2=A01.969031] ohci_h=
cd: USB 1.1 &#39;Open&#39; Host Controller (OHCI) Driver<br>[ =C2=A0 =C2=A0=
1.969540] ohci-pci: OHCI PCI platform driver<br>[ =C2=A0 =C2=A01.970742] oh=
ci-platform: OHCI generic platform driver<br>[ =C2=A0 =C2=A01.974710] usbco=
re: registered new interface driver uas<br>[ =C2=A0 =C2=A01.975701] usbcore=
: registered new interface driver usb-storage<br>[ =C2=A0 =C2=A01.979125] m=
ousedev: PS/2 mouse device common for all mice<br>[ =C2=A0 =C2=A01.985774] =
goldfish_rtc 101000.rtc: registered as rtc0<br>[ =C2=A0 =C2=A01.987831] gol=
dfish_rtc 101000.rtc: setting system clock to 2022-08-25T10:45:53 UTC (1661=
424353)<br>[ =C2=A0 =C2=A01.993669] syscon-poweroff soc:poweroff: pm_power_=
off already claimed for sbi_srst_power_off<br>[ =C2=A0 =C2=A01.995212] sysc=
on-poweroff: probe of soc:poweroff failed with error -16<br>[ =C2=A0 =C2=A0=
1.998593] sdhci: Secure Digital Host Controller Interface driver<br>[ =C2=
=A0 =C2=A01.998909] sdhci: Copyright(c) Pierre Ossman<br>[ =C2=A0 =C2=A01.9=
99509] sdhci-pltfm: SDHCI platform and OF driver helper<br>[ =C2=A0 =C2=A02=
.001283] usbcore: registered new interface driver usbhid<br>[ =C2=A0 =C2=A0=
2.001588] usbhid: USB HID core driver<br>[ =C2=A0 =C2=A02.002927] riscv-pmu=
-sbi: SBI PMU extension is available<br>[ =C2=A0 =C2=A02.004257] riscv-pmu-=
sbi: 16 firmware and 18 hardware counters<br>[ =C2=A0 =C2=A02.017615] NET: =
Registered PF_INET6 protocol family<br>[ =C2=A0 =C2=A02.032397] Segment Rou=
ting with IPv6<br>[ =C2=A0 =C2=A02.032878] In-situ OAM (IOAM) with IPv6<br>=
[ =C2=A0 =C2=A02.033574] sit: IPv6, IPv4 and MPLS over IPv4 tunneling drive=
r<br>[ =C2=A0 =C2=A02.037639] NET: Registered PF_PACKET protocol family<br>=
[ =C2=A0 =C2=A02.039420] bridge: filtering via arp/ip/ip6tables is no longe=
r available by default. Update your scripts to load br_netfilter if you nee=
d this.<br>[ =C2=A0 =C2=A02.040579] 8021q: 802.1Q VLAN Support v1.8<br>[ =
=C2=A0 =C2=A02.043124] 9pnet: Installing 9P2000 support<br>[ =C2=A0 =C2=A02=
.043788] Key type dns_resolver registered<br>[ =C2=A0 =C2=A02.050694] debug=
_vm_pgtable: [debug_vm_pgtable =C2=A0 =C2=A0 =C2=A0 =C2=A0 ]: Validating ar=
chitecture page table helpers<br>[ =C2=A0 =C2=A02.145175] EXT4-fs (vda2): m=
ounted filesystem with ordered data mode. Quota mode: disabled.<br>[ =C2=A0=
 =C2=A02.146407] VFS: Mounted root (ext4 filesystem) readonly on device 254=
:2.<br>[ =C2=A0 =C2=A02.150622] devtmpfs: mounted<br>[ =C2=A0 =C2=A02.20184=
2] Freeing unused kernel image (initmem) memory: 2204K<br>[ =C2=A0 =C2=A02.=
228413] Run /sbin/init as init process<br>[ =C2=A0 =C2=A02.242343] Run /etc=
/init as init process<br>[ =C2=A0 =C2=A02.243725] Run /bin/init as init pro=
cess<br>[ =C2=A0 =C2=A02.244949] Run /bin/sh as init process<br>sh: cannot =
set terminal process group (-1): Inappropriate ioctl for device<br>sh: no j=
ob control in this shell<br>sh-5.1#<br>sh-5.1#<br>sh-5.1# QEMU: Terminated<=
/font><br></div><div style=3D"color:rgb(80,0,80)"><font face=3D"monospace">=
<br></font></div><div style=3D"color:rgb(80,0,80)"><br></div><div style=3D"=
color:rgb(80,0,80)"><div><div dir=3D"ltr"><div dir=3D"ltr"><div>Thank you.<=
/div><div><br></div><div>Regards<br></div><div>Vaibhav Vivek Deshpande</div=
></div></div></div></div><div><div dir=3D"ltr" class=3D"gmail_signature" da=
ta-smartmail=3D"gmail_signature"><div dir=3D"ltr"><br></div></div></div></d=
iv>

--00000000000091463405eb2b1420--

